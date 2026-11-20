# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 275

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR- |
| Packet | forest:root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR- |
| Index | 1 |
| Context | 120 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 274 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| b | 17183/125000 | 408899/1000000 | 17183/125000 | 408899/1000000 |
| c | 145713/200000 | 1/1 | 145713/200000 | 1/1 |
| e | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| f | 40433/125000 | 293803/500000 | 40433/125000 | 293803/500000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 64959/250000 | 143633/250000 | 64959/250000 | 143633/250000 |
| q | 107821/1000000 | 128179/500000 | 107821/1000000 | 128179/500000 |
| u | 17183/125000 | 146803/250000 | 17183/125000 | 587087/1000000 |
| v | 475101/1000000 | 41721/50000 | 239969/500000 | 41721/50000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 603839/1000000 | 107817/125000 | 603839/1000000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 430773/500000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 723 | AREA_lo_AQS | bitt ["earlier-area",{"direction":"lo","ref":"274:988","triangle":"AQS","value":"24293/250000"}] | `-1/1 * u * k + 1/1 * a * u + 1/1 * v * j + -1/1 * a * j + -24293/250000` |
| 817 | AREA_lo_EQR | bitt ["earlier-area",{"direction":"lo","ref":"274:861","triangle":"EQR","value":"279351/1000000"}] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279351/1000000` |
| 847 | AREA_lo_HRS | bitt ["earlier-area",{"direction":"lo","ref":"274:919","triangle":"HRS","value":"17599/125000"}] | `-1/1 * r * k + 1/1 * h * r + 1/1 * w * j + -1/1 * h * j + -17599/125000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 723 | v | 475101/1000000 | 41721/50000 | 6468188239/13477125000 | 41721/50000 | 239969/500000 | 41721/50000 | `(603839/1000000, -41285610111/125000000000); (603839/1000000, -3121549671/7812500000); (603839/1000000, -56741649879/125000000000); (603839/1000000, -14262590847/31250000000); (107817/125000, -6468188239/15625000000); (107817/125000, -8150989717/15625000000); (107817/125000, -840019321/1562500000); (107817/125000, -18078371597/31250000000); (603839/1000000, -45824396463/125000000000); (603839/1000000, -1702611909/3906250000); (603839/1000000, -15226043139/25000000000); (603839/1000000, -19109732301/31250000000); (107817/125000, -7035536533/15625000000); (107817/125000, -8718338011/15625000000); (107817/125000, -10823763937/15625000000); (107817/125000, -22925513051/31250000000)` |
| 1 | 817 | u | 17183/125000 | 146803/250000 | 17183/125000 | 132395/225512 | 17183/125000 | 587087/1000000 | `(-206197/500000, 22927911173/250000000000); (-131929/500000, -4397439799/250000000000); (-206197/500000, -240242469/125000000000); (-131929/500000, -2780583591/25000000000); (-206197/500000, 133043/1000000); (-131929/500000, -15493/1000000); (-84567/125000, 88963411173/250000000000); (-66/125, 61638060201/250000000000); (-84567/125000, 32777507531/125000000000); (-66/125, 3822966409/25000000000); (-84567/125000, 79437/200000); (-66/125, 248649/1000000)` |
| 2 | 847 | k | 74799/125000 | 107817/125000 | 74799/125000 | 6339751477/7358580000 | 74799/125000 | 430773/500000 | `(-367929/500000, 98754280753/250000000000); (-367929/500000, 217783379431/500000000000); (-1/1, 4515843029/7812500000); (-1/1, 349854379431/500000000000); (-367929/500000, 11090327283/20000000000); (-367929/500000, 297533/500000); (-1/1, 14750542977/20000000000); (-1/1, 107401/125000); (-367929/500000, 101535790897/250000000000); (-367929/500000, 22952125993/62500000000); (-1/1, 4602765221/7812500000); (-1/1, 39461000993/62500000000); (-367929/500000, 6339751477/10000000000); (-1/1, 2042464831/2500000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 275:2 | ABE | lo | 132233/1000000 | earlier 274:948; ABE; lo; 132233/1000000 |
| 275:10 | ABQ | lo | 65423/500000 | earlier 274:985; ABQ; lo; 65423/500000 |
| 275:12 | ABR | lo | 190913/1000000 | earlier 274:1012; ABR; lo; 190913/1000000 |
| 275:14 | ABS | lo | 6573/40000 | earlier 274:989; ABS; lo; 6573/40000 |
| 275:15 | ABS | hi | 563659/1000000 | earlier 274:15; ABS; hi; 563659/1000000 |
| 275:18 | ACF | lo | 159811/1000000 | earlier 274:1051; ACF; lo; 159811/1000000 |
| 275:24 | ACQ | lo | 122999/1000000 | earlier 274:1026; ACQ; lo; 122999/1000000 |
| 275:26 | ACR | lo | 73453/200000 | earlier 274:1063; ACR; lo; 73453/200000 |
| 275:29 | ACS | hi | 182423/250000 | earlier 274:29; ACS; hi; 182423/250000 |
| 275:30 | AEF | lo | 85771/500000 | earlier 274:955; AEF; lo; 85771/500000 |
| 275:37 | AEQ | hi | 453147/1000000 | earlier 274:906; AEQ; hi; 453147/1000000 |
| 275:38 | AER | lo | 17569/62500 | earlier 274:997; AER; lo; 17569/62500 |
| 275:41 | AES | hi | 217699/500000 | earlier 274:41; AES; hi; 217699/500000 |
| 275:53 | AHQ | hi | 76173/200000 | earlier 274:999; AHQ; hi; 76173/200000 |
| 275:54 | AHR | lo | 170259/500000 | earlier 274:998; AHR; lo; 170259/500000 |
| 275:62 | APS | lo | 52919/500000 | earlier 274:1039; APS; lo; 52919/500000 |
| 275:69 | ARS | hi | 182611/500000 | earlier 274:834; ARS; hi; 182611/500000 |
| 275:74 | BCH | lo | 19871/62500 | earlier 274:1043; BCH; lo; 19871/62500 |
| 275:80 | BCR | lo | 152771/1000000 | earlier 274:958; BCR; lo; 152771/1000000 |
| 275:84 | BEF | lo | 79583/500000 | earlier 274:877; BEF; lo; 79583/500000 |
| 275:86 | BEH | lo | 336883/1000000 | earlier 274:86; BEH; lo; 336883/1000000 |
| 275:88 | BEQ | lo | 28141/200000 | earlier 274:1031; BEQ; lo; 28141/200000 |
| 275:90 | BER | lo | 25179/250000 | earlier 274:876; BER; lo; 25179/250000 |
| 275:103 | BHQ | hi | 265647/500000 | earlier 274:1032; BHQ; hi; 265647/500000 |
| 275:104 | BHR | lo | 46221/125000 | earlier 274:1044; BHR; lo; 46221/125000 |
| 275:107 | BHS | hi | 419887/500000 | earlier 274:107; BHS; hi; 419887/500000 |
| 275:108 | BQR | lo | 2907/25000 | earlier 274:1014; BQR; lo; 2907/25000 |
| 275:112 | CEF | lo | 151927/1000000 | earlier 274:1020; CEF; lo; 151927/1000000 |
| 275:114 | CEH | lo | 32309/100000 | earlier 274:1046; CEH; lo; 32309/100000 |
| 275:117 | CEP | hi | 349357/1000000 | earlier 274:117; CEP; hi; 349357/1000000 |
| 275:118 | CEQ | lo | 13709/100000 | earlier 274:1033; CEQ; lo; 13709/100000 |
| 275:119 | CEQ | hi | 214659/500000 | earlier 274:119; CEQ; hi; 214659/500000 |
| 275:123 | CES | hi | 69069/250000 | earlier 274:926; CES; hi; 69069/250000 |
| 275:126 | CFP | lo | 139281/1000000 | earlier 274:1053; CFP; lo; 139281/1000000 |
| 275:130 | CFR | lo | 75639/250000 | earlier 274:1047; CFR; lo; 75639/250000 |
| 275:133 | CFS | hi | 29989/62500 | earlier 274:133; CFS; hi; 29989/62500 |
| 275:144 | CPR | lo | 356141/1000000 | earlier 274:1048; CPR; lo; 356141/1000000 |
| 275:154 | EFH | lo | 67971/500000 | earlier 274:881; EFH; lo; 67971/500000 |
| 275:156 | EFP | lo | 49721/250000 | earlier 274:1024; EFP; lo; 49721/250000 |
| 275:158 | EFQ | lo | 18897/200000 | earlier 274:889; EFQ; lo; 18897/200000 |
| 275:159 | EFQ | hi | 435671/1000000 | earlier 274:159; EFQ; hi; 435671/1000000 |
| 275:168 | EHR | lo | 82373/250000 | earlier 274:1008; EHR; lo; 82373/250000 |
| 275:170 | EHS | lo | 957/10000 | earlier 274:963; EHS; lo; 957/10000 |
| 275:174 | EPR | lo | 72247/250000 | earlier 274:1064; EPR; lo; 72247/250000 |
| 275:176 | EPS | lo | 25747/250000 | earlier 274:1055; EPS; lo; 25747/250000 |
| 275:178 | EQR | lo | 279351/1000000 | earlier 274:861; EQR; lo; 279351/1000000 |
| 275:179 | EQR | hi | 5127/10000 | earlier 274:179; EQR; hi; 5127/10000 |
| 275:190 | FHS | lo | 121709/1000000 | earlier 274:190; FHS; lo; 121709/1000000 |
| 275:196 | FQR | lo | 9549/62500 | earlier 274:983; FQR; lo; 9549/62500 |
| 275:201 | FRS | hi | 271701/1000000 | earlier 274:201; FRS; hi; 271701/1000000 |
| 275:208 | HQR | lo | 77259/500000 | earlier 274:964; HQR; lo; 77259/500000 |
| 275:212 | HRS | lo | 17599/125000 | earlier 274:919; HRS; lo; 17599/125000 |
| 275:213 | HRS | hi | 38271/100000 | earlier 274:213; HRS; hi; 38271/100000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 276

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR- |
| Packet | forest:root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR- |
| Index | 2 |
| Context | 120 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 275 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| b | 17183/125000 | 408899/1000000 | 17183/125000 | 408899/1000000 |
| c | 145713/200000 | 1/1 | 145713/200000 | 1/1 |
| e | 40433/125000 | 59/125 | 40433/125000 | 59/125 |
| f | 40433/125000 | 293803/500000 | 40433/125000 | 293803/500000 |
| h | 13857/20000 | 1/1 | 13857/20000 | 1/1 |
| p | 64959/250000 | 143633/250000 | 64959/250000 | 143633/250000 |
| q | 107821/1000000 | 128179/500000 | 107821/1000000 | 128179/500000 |
| u | 17183/125000 | 587087/1000000 | 17183/125000 | 587087/1000000 |
| v | 239969/500000 | 41721/50000 | 239969/500000 | 41721/50000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 603839/1000000 | 107817/125000 | 603839/1000000 | 107817/125000 |
| k | 74799/125000 | 430773/500000 | 74799/125000 | 430773/500000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 2 | AC_ABC_ABC_1 | bitt ["anchor-cap","ABC","ABC",1,["P"]] | `-279/1000 + 1/1 * c + -1/1 * b` |
| 4 | AC_ABE_ABE_0 | bitt ["anchor-cap","ABE","ABE",0,[]] | `-93/1000 + 1/1 * e` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 8 | AC_ABH_ABH_0 | bitt ["anchor-cap","ABH","ABH",0,[]] | `-93/1000 + 1/1 * b` |
| 11 | AC_ABP_ABC_0 | bitt ["anchor-cap","ABP","ABC",0,[]] | `-93/1000 + 1/1 * a` |
| 18 | AC_ACF_ACF_0 | bitt ["anchor-cap","ACF","ACF",0,[]] | `-93/1000 + 1/1 * c` |
| 25 | AC_AEF_AEF_0 | bitt ["anchor-cap","AEF","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 49 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 54 | AC_BEF_BEF_0 | bitt ["anchor-cap","BEF","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 69 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 92 | AC_EFH_EFH_0 | bitt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 126 | ha | bitt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 127 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 130 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 131 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 132 | lower-area | bitt ["endpoint-lower","13857/20000"] | `1/1 * c * h + -13857/20000` |
| 134 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 135 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 138 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 141 | WBARY_RS_2 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"2383859163/484375000",2] | `2383859163/484375000 * k + -1/1 + -1415109163/484375000 * e + -1/1 * w` |
| 152 | SUP_ABC_BCH_ABH | bitt ["support-envelope",["quad","BCHA",["P"],"1457/250"],"ABC","BCH","ABH","6361203/15625000"] | `6361203/15625000 * c * h + 4215219/31250000 * b * h + -135501/250000 * a * c` |
| 264 | SUP_BCE_CEH_BCH | bitt ["support-envelope",["quad","CEHB",["P","Q"],"12/1"],"BCE","CEH","BCH","6361203/15625000"] | `6361203/15625000 * h + 11076297/15625000 * c * h + -11076297/15625000 * c * e + 279/250 * b * e + -279/250 * b * h` |
| 348 | SUP_CFR_FHR_CHR | bitt ["support-envelope",["quad","RFHC",["Q","S"],"199/10"],"CFR","FHR","CHR","84567/125000"] | `293541/250000 * f * w + 293541/250000 * h * r + 84567/125000 * f * h + -293541/250000 * r + 18507/10000 * c + -18507/10000 * c * h` |
| 424 | SUP_ABH_AEH_ABE | bitt ["support-envelope",["pentagon","ABCEH"],"ABH","AEH","ABE","34579361733/125000000000"] | `34579361733/125000000000 * h + 93295638267/125000000000 * a + -1023/1000 * b * h + 1023/1000 * b * e` |
| 438 | SUP_CES_BCE_BES | bitt ["support-envelope",["pentagon","ESABC"],"CES","BCE","BES","29272441051/100000000000"] | `-73027558949/100000000000 * c * e + 73027558949/100000000000 * b * e + 1023/1000 * c * k + -1023/1000 * b * k` |
| 452 | SUP_ABH_AHQ_ABQ | bitt ["support-envelope",["pentagon","ABCQH"],"ABH","AHQ","ABQ","34579361733/125000000000"] | `34579361733/125000000000 * h * u + 93295638267/125000000000 * a * u + -1023/1000 * b * h + 1023/1000 * b * v` |
| 474 | SUP_EFR_BER_BFR | bitt ["support-envelope",["pentagon","RFABE"],"EFR","BER","BFR","7151577489/15625000000"] | `-8832797511/15625000000 * w + 8832797511/15625000000 * b * w + 8832797511/15625000000 * e * r + 7151577489/15625000000 * b * e + -1023/1000 * e * f + 1023/1000 + -1023/1000 * b` |
| 493 | SUP_BFS_ABS_AFS | bitt ["support-envelope",["pentagon","SFHAB"],"BFS","ABS","AFS","38360693/62500000"] | `-25576807/62500000 * b * k + -38360693/62500000 * a * b + -25576807/62500000 * a * j + 1023/1000 * b + 1023/1000 * a * f` |
| 509 | SUP_CES_ACE_AES | bitt ["support-envelope",["pentagon","ESFAC"],"CES","ACE","AES","29272441051/100000000000"] | `-73027558949/100000000000 * c * e + -29272441051/100000000000 * a * c + -73027558949/100000000000 * a + 1023/1000 * c * k + 1023/1000 * a * j` |
| 526 | SUP_CES_CEP_EPS | bitt ["support-envelope",["pentagon","ESAPC"],"CES","CEP","EPS","29272441051/100000000000"] | `-73027558949/100000000000 * q + -29272441051/100000000000 * c * q + 73027558949/100000000000 * e * p + -73027558949/100000000000 * c * e + 1023/1000 * c * k + -1023/1000 * p * k + 1023/1000 * q * j` |
| 626 | SUP_CFH_FHR_CHR | bitt ["support-envelope",["pentagon","HCERF"],"CFH","FHR","CHR","7142728171/10000000000"] | `-7142728171/10000000000 * f * w + 3087271829/10000000000 * h * r + -3087271829/10000000000 * f * h + 7142728171/10000000000 * r + -1023/1000 * c + 1023/1000 * c * w` |
| 636 | SUP_FQR_EFR_EFQ | bitt ["support-envelope",["pentagon","FQCER"],"FQR","EFR","EFQ","25060692327/62500000000"] | `38876807673/62500000000 * f * w + -38876807673/62500000000 * e * f + 25060692327/62500000000 * w + -38876807673/62500000000 * r + 38876807673/62500000000 + -25060692327/62500000000 * e * r + -1023/1000 * u * w + 1023/1000 * v * r + -1023/1000 * v + 1023/1000 * e * u` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 276:0 | ABC | lo | 279/1000 | occupants P |
| 276:2 | ABE | lo | 132233/1000000 | earlier 275:2; ABE; lo; 132233/1000000 |
| 276:3 | ABE | hi | 59/125 | vertex maximum 59/125 |
| 276:6 | ABH | lo | 93/1000 | occupants none |
| 276:8 | ABP | lo | 93/1000 | occupants none |
| 276:10 | ABQ | lo | 65423/500000 | earlier 275:10; ABQ; lo; 65423/500000 |
| 276:12 | ABR | lo | 190913/1000000 | earlier 275:12; ABR; lo; 190913/1000000 |
| 276:13 | ABR | hi | 42993667/62500000 | vertex maximum 42993667/62500000 |
| 276:14 | ABS | lo | 6573/40000 | earlier 275:14; ABS; lo; 6573/40000 |
| 276:15 | ABS | hi | 563659/1000000 | earlier 275:15; ABS; hi; 563659/1000000 |
| 276:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 276:18 | ACF | lo | 159811/1000000 | earlier 275:18; ACF; lo; 159811/1000000 |
| 276:21 | ACH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 276:22 | ACP | lo | 93/1000 | occupants none |
| 276:24 | ACQ | lo | 122999/1000000 | earlier 275:24; ACQ; lo; 122999/1000000 |
| 276:26 | ACR | lo | 73453/200000 | earlier 275:26; ACR; lo; 73453/200000 |
| 276:29 | ACS | hi | 182423/250000 | earlier 275:29; ACS; hi; 182423/250000 |
| 276:30 | AEF | lo | 85771/500000 | earlier 275:30; AEF; lo; 85771/500000 |
| 276:31 | AEF | hi | 84567/125000 | vertex maximum 84567/125000 |
| 276:33 | AEH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 276:34 | AEP | lo | 93/1000 | occupants none |
| 276:35 | AEP | hi | 364179/1000000 | vertex maximum 364179/1000000 |
| 276:36 | AEQ | lo | 93/1000 | occupants none |
| 276:37 | AEQ | hi | 453147/1000000 | earlier 275:37; AEQ; hi; 453147/1000000 |
| 276:38 | AER | lo | 17569/62500 | earlier 275:38; AER; lo; 17569/62500 |
| 276:39 | AER | hi | 84567/125000 | vertex maximum 84567/125000 |
| 276:41 | AES | hi | 217699/500000 | earlier 275:41; AES; hi; 217699/500000 |
| 276:42 | AFH | lo | 93/1000 | occupants none |
| 276:43 | AFH | hi | 24846038301/62500000000 | vertex maximum 24846038301/62500000000 |
| 276:49 | AFS | hi | 7728239761/15625000000 | vertex maximum 7728239761/15625000000 |
| 276:52 | AHQ | lo | 93/1000 | occupants none |
| 276:53 | AHQ | hi | 76173/200000 | earlier 275:53; AHQ; hi; 76173/200000 |
| 276:54 | AHR | lo | 170259/500000 | earlier 275:54; AHR; lo; 170259/500000 |
| 276:55 | AHR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 276:61 | APR | hi | 83441487/125000000 | vertex maximum 83441487/125000000 |
| 276:62 | APS | lo | 52919/500000 | earlier 275:62; APS; lo; 52919/500000 |
| 276:64 | AQR | lo | 93/1000 | occupants none |
| 276:68 | ARS | lo | 93/1000 | occupants none |
| 276:69 | ARS | hi | 182611/500000 | earlier 275:69; ARS; hi; 182611/500000 |
| 276:70 | BCE | lo | 93/1000 | occupants none |
| 276:73 | BCF | hi | 107817/125000 | vertex maximum 107817/125000 |
| 276:74 | BCH | lo | 19871/62500 | earlier 275:74; BCH; lo; 19871/62500 |
| 276:75 | BCH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 276:76 | BCP | lo | 93/1000 | occupants none |
| 276:80 | BCR | lo | 152771/1000000 | earlier 275:80; BCR; lo; 152771/1000000 |
| 276:81 | BCR | hi | 107817/125000 | vertex maximum 107817/125000 |
| 276:84 | BEF | lo | 79583/500000 | earlier 275:84; BEF; lo; 79583/500000 |
| 276:85 | BEF | hi | 50148231/62500000 | vertex maximum 50148231/62500000 |
| 276:86 | BEH | lo | 336883/1000000 | earlier 275:86; BEH; lo; 336883/1000000 |
| 276:87 | BEH | hi | 7245461/7812500 | vertex maximum 7245461/7812500 |
| 276:88 | BEQ | lo | 28141/200000 | earlier 275:88; BEQ; lo; 28141/200000 |
| 276:90 | BER | lo | 25179/250000 | earlier 275:90; BER; lo; 25179/250000 |
| 276:91 | BER | hi | 41811067699/62500000000 | vertex maximum 41811067699/62500000000 |
| 276:92 | BES | lo | 93/1000 | occupants none |
| 276:94 | BFH | lo | 93/1000 | occupants none |
| 276:95 | BFH | hi | 293803/500000 | vertex maximum 293803/500000 |
| 276:99 | BFS | hi | 38360693/62500000 | vertex maximum 38360693/62500000 |
| 276:103 | BHQ | hi | 265647/500000 | earlier 275:103; BHQ; hi; 265647/500000 |
| 276:104 | BHR | lo | 46221/125000 | earlier 275:104; BHR; lo; 46221/125000 |
| 276:105 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 276:107 | BHS | hi | 419887/500000 | earlier 275:107; BHS; hi; 419887/500000 |
| 276:108 | BQR | lo | 2907/25000 | earlier 275:108; BQR; lo; 2907/25000 |
| 276:112 | CEF | lo | 151927/1000000 | earlier 275:112; CEF; lo; 151927/1000000 |
| 276:114 | CEH | lo | 32309/100000 | earlier 275:114; CEH; lo; 32309/100000 |
| 276:115 | CEH | hi | 7691471/12500000 | vertex maximum 7691471/12500000 |
| 276:117 | CEP | hi | 349357/1000000 | earlier 275:117; CEP; hi; 349357/1000000 |
| 276:118 | CEQ | lo | 13709/100000 | earlier 275:118; CEQ; lo; 13709/100000 |
| 276:119 | CEQ | hi | 214659/500000 | earlier 275:119; CEQ; hi; 214659/500000 |
| 276:120 | CER | lo | 93/1000 | occupants none |
| 276:121 | CER | hi | 33634497131/125000000000 | vertex maximum 33634497131/125000000000 |
| 276:122 | CES | lo | 93/1000 | occupants none |
| 276:123 | CES | hi | 69069/250000 | earlier 275:123; CES; hi; 69069/250000 |
| 276:125 | CFH | hi | 7142728171/10000000000 | vertex maximum 7142728171/10000000000 |
| 276:126 | CFP | lo | 139281/1000000 | earlier 275:126; CFP; lo; 139281/1000000 |
| 276:128 | CFQ | lo | 93/1000 | occupants none |
| 276:130 | CFR | lo | 75639/250000 | earlier 275:130; CFR; lo; 75639/250000 |
| 276:131 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 276:133 | CFS | hi | 29989/62500 | earlier 275:133; CFS; hi; 29989/62500 |
| 276:136 | CHQ | lo | 93/1000 | occupants none |
| 276:138 | CHR | lo | 13857/20000 | occupants Q, S |
| 276:139 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 276:144 | CPR | lo | 356141/1000000 | earlier 275:144; CPR; lo; 356141/1000000 |
| 276:152 | CRS | lo | 93/1000 | occupants none |
| 276:154 | EFH | lo | 67971/500000 | earlier 275:154; EFH; lo; 67971/500000 |
| 276:155 | EFH | hi | 131050857479/250000000000 | vertex maximum 131050857479/250000000000 |
| 276:156 | EFP | lo | 49721/250000 | earlier 275:156; EFP; lo; 49721/250000 |
| 276:158 | EFQ | lo | 18897/200000 | earlier 275:158; EFQ; lo; 18897/200000 |
| 276:159 | EFQ | hi | 435671/1000000 | earlier 275:159; EFQ; hi; 435671/1000000 |
| 276:160 | EFR | lo | 279/1000 | occupants S |
| 276:162 | EFS | lo | 93/1000 | occupants none |
| 276:166 | EHQ | lo | 93/1000 | occupants none |
| 276:168 | EHR | lo | 82373/250000 | earlier 275:168; EHR; lo; 82373/250000 |
| 276:169 | EHR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 276:170 | EHS | lo | 957/10000 | earlier 275:170; EHS; lo; 957/10000 |
| 276:174 | EPR | lo | 72247/250000 | earlier 275:174; EPR; lo; 72247/250000 |
| 276:176 | EPS | lo | 25747/250000 | earlier 275:176; EPS; lo; 25747/250000 |
| 276:178 | EQR | lo | 279351/1000000 | earlier 275:178; EQR; lo; 279351/1000000 |
| 276:179 | EQR | hi | 5127/10000 | earlier 275:179; EQR; hi; 5127/10000 |
| 276:182 | ERS | lo | 93/1000 | occupants none |
| 276:186 | FHQ | lo | 93/1000 | occupants none |
| 276:188 | FHR | lo | 93/1000 | occupants none |
| 276:189 | FHR | hi | 2290925471/7812500000 | vertex maximum 2290925471/7812500000 |
| 276:190 | FHS | lo | 121709/1000000 | earlier 275:190; FHS; lo; 121709/1000000 |
| 276:196 | FQR | lo | 9549/62500 | earlier 275:196; FQR; lo; 9549/62500 |
| 276:197 | FQR | hi | 25060692327/62500000000 | vertex maximum 25060692327/62500000000 |
| 276:200 | FRS | lo | 93/1000 | occupants none |
| 276:201 | FRS | hi | 271701/1000000 | earlier 275:201; FRS; hi; 271701/1000000 |
| 276:208 | HQR | lo | 77259/500000 | earlier 275:208; HQR; lo; 77259/500000 |
| 276:212 | HRS | lo | 17599/125000 | earlier 275:212; HRS; lo; 17599/125000 |
| 276:213 | HRS | hi | 38271/100000 | earlier 275:213; HRS; hi; 38271/100000 |
| 276:218 | PRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"276:0","triangle":"ABC","value":"279/1000"}` | `-1 * a * b + 1 * a * c + -279/1000` |
| 2 | bound | `{"direction":"lo","ref":"276:2","triangle":"ABE","value":"132233/1000000"}` | `1 * b * e + -1 * a * b + 1 * a + -132233/1000000` |
| 3 | bound | `{"direction":"hi","ref":"276:3","triangle":"ABE","value":"59/125"}` | `59/125 + -1 * b * e + 1 * a * b + -1 * a` |
| 6 | bound | `{"direction":"lo","ref":"276:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"276:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"276:10","triangle":"ABQ","value":"65423/500000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -65423/500000` |
| 12 | bound | `{"direction":"lo","ref":"276:12","triangle":"ABR","value":"190913/1000000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -190913/1000000` |
| 13 | bound | `{"direction":"hi","ref":"276:13","triangle":"ABR","value":"42993667/62500000"}` | `42993667/62500000 + -1 * b * w + 1 * a * b + -1 * a * r` |
| 14 | bound | `{"direction":"lo","ref":"276:14","triangle":"ABS","value":"6573/40000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -6573/40000` |
| 15 | bound | `{"direction":"hi","ref":"276:15","triangle":"ABS","value":"563659/1000000"}` | `563659/1000000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 17 | bound | `{"direction":"hi","ref":"276:17","triangle":"ACE","value":"59/125"}` | `59/125 + -1 * c * e + 1 * a * c + -1 * a` |
| 18 | bound | `{"direction":"lo","ref":"276:18","triangle":"ACF","value":"159811/1000000"}` | `1 * c + -1 * a * c + 1 * a * f + -159811/1000000` |
| 21 | bound | `{"direction":"hi","ref":"276:21","triangle":"ACH","value":"84567/125000"}` | `84567/125000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"276:22","triangle":"ACP","value":"93/1000"}` | `-1 * c * q + 1 * a * c + -1 * a * p + -93/1000` |
| 24 | bound | `{"direction":"lo","ref":"276:24","triangle":"ACQ","value":"122999/1000000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -122999/1000000` |
| 26 | bound | `{"direction":"lo","ref":"276:26","triangle":"ACR","value":"73453/200000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -73453/200000` |
| 29 | bound | `{"direction":"hi","ref":"276:29","triangle":"ACS","value":"182423/250000"}` | `182423/250000 + -1 * c * k + 1 * a * c + -1 * a * j` |
| 30 | bound | `{"direction":"lo","ref":"276:30","triangle":"AEF","value":"85771/500000"}` | `414229/500000 + -1 * a + -1 * e * f + 1 * a * f` |
| 31 | bound | `{"direction":"hi","ref":"276:31","triangle":"AEF","value":"84567/125000"}` | `-40433/125000 + 1 * a + 1 * e * f + -1 * a * f` |
| 33 | bound | `{"direction":"hi","ref":"276:33","triangle":"AEH","value":"84567/125000"}` | `84567/125000 + -1 * h + 1 * a` |
| 34 | bound | `{"direction":"lo","ref":"276:34","triangle":"AEP","value":"93/1000"}` | `-1 * q + 1 * a + 1 * e * p + -1 * a * p + -93/1000` |
| 35 | bound | `{"direction":"hi","ref":"276:35","triangle":"AEP","value":"364179/1000000"}` | `364179/1000000 + 1 * q + -1 * a + -1 * e * p + 1 * a * p` |
| 36 | bound | `{"direction":"lo","ref":"276:36","triangle":"AEQ","value":"93/1000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -93/1000` |
| 37 | bound | `{"direction":"hi","ref":"276:37","triangle":"AEQ","value":"453147/1000000"}` | `453147/1000000 + -1 * v + 1 * a + 1 * e * u + -1 * a * u` |
| 38 | bound | `{"direction":"lo","ref":"276:38","triangle":"AER","value":"17569/62500"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -17569/62500` |
| 39 | bound | `{"direction":"hi","ref":"276:39","triangle":"AER","value":"84567/125000"}` | `84567/125000 + -1 * w + 1 * a + 1 * e * r + -1 * a * r` |
| 41 | bound | `{"direction":"hi","ref":"276:41","triangle":"AES","value":"217699/500000"}` | `217699/500000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"276:42","triangle":"AFH","value":"93/1000"}` | `1 * f * h + -1 * a * f + -93/1000` |
| 43 | bound | `{"direction":"hi","ref":"276:43","triangle":"AFH","value":"24846038301/62500000000"}` | `24846038301/62500000000 + -1 * f * h + 1 * a * f` |
| 49 | bound | `{"direction":"hi","ref":"276:49","triangle":"AFS","value":"7728239761/15625000000"}` | `7728239761/15625000000 + 1 * f * k + -1 * a * f + -1 * j + 1 * a * j` |
| 52 | bound | `{"direction":"lo","ref":"276:52","triangle":"AHQ","value":"93/1000"}` | `1 * h * u + -1 * a * u + -93/1000` |
| 53 | bound | `{"direction":"hi","ref":"276:53","triangle":"AHQ","value":"76173/200000"}` | `76173/200000 + -1 * h * u + 1 * a * u` |
| 54 | bound | `{"direction":"lo","ref":"276:54","triangle":"AHR","value":"170259/500000"}` | `1 * h * r + -1 * a * r + -170259/500000` |
| 55 | bound | `{"direction":"hi","ref":"276:55","triangle":"AHR","value":"84567/125000"}` | `84567/125000 + -1 * h * r + 1 * a * r` |
| 61 | bound | `{"direction":"hi","ref":"276:61","triangle":"APR","value":"83441487/125000000"}` | `83441487/125000000 + -1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r` |
| 62 | bound | `{"direction":"lo","ref":"276:62","triangle":"APS","value":"52919/500000"}` | `1 * p * k + -1 * a * p + -1 * q * j + 1 * a * j + -52919/500000` |
| 64 | bound | `{"direction":"lo","ref":"276:64","triangle":"AQR","value":"93/1000"}` | `-1 * u * w + 1 * a * u + 1 * v * r + -1 * a * r + -93/1000` |
| 68 | bound | `{"direction":"lo","ref":"276:68","triangle":"ARS","value":"93/1000"}` | `-1 * r * k + 1 * a * r + 1 * w * j + -1 * a * j + -93/1000` |
| 69 | bound | `{"direction":"hi","ref":"276:69","triangle":"ARS","value":"182611/500000"}` | `182611/500000 + 1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j` |
| 70 | bound | `{"direction":"lo","ref":"276:70","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 73 | bound | `{"direction":"hi","ref":"276:73","triangle":"BCF","value":"107817/125000"}` | `107817/125000 + -1 * c + 1 * b` |
| 74 | bound | `{"direction":"lo","ref":"276:74","triangle":"BCH","value":"19871/62500"}` | `1 * c * h + -1 * b * h + -19871/62500` |
| 75 | bound | `{"direction":"hi","ref":"276:75","triangle":"BCH","value":"107817/125000"}` | `107817/125000 + -1 * c * h + 1 * b * h` |
| 76 | bound | `{"direction":"lo","ref":"276:76","triangle":"BCP","value":"93/1000"}` | `1 * c * q + -1 * b * q + -93/1000` |
| 80 | bound | `{"direction":"lo","ref":"276:80","triangle":"BCR","value":"152771/1000000"}` | `1 * c * w + -1 * b * w + -152771/1000000` |
| 81 | bound | `{"direction":"hi","ref":"276:81","triangle":"BCR","value":"107817/125000"}` | `107817/125000 + -1 * c * w + 1 * b * w` |
| 84 | bound | `{"direction":"lo","ref":"276:84","triangle":"BEF","value":"79583/500000"}` | `420417/500000 + -1 * b + -1 * e * f + 1 * b * e` |
| 85 | bound | `{"direction":"hi","ref":"276:85","triangle":"BEF","value":"50148231/62500000"}` | `-12351769/62500000 + 1 * b + 1 * e * f + -1 * b * e` |
| 86 | bound | `{"direction":"lo","ref":"276:86","triangle":"BEH","value":"336883/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -336883/1000000` |
| 87 | bound | `{"direction":"hi","ref":"276:87","triangle":"BEH","value":"7245461/7812500"}` | `7245461/7812500 + -1 * h + 1 * b * h + -1 * b * e` |
| 88 | bound | `{"direction":"lo","ref":"276:88","triangle":"BEQ","value":"28141/200000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -28141/200000` |
| 90 | bound | `{"direction":"lo","ref":"276:90","triangle":"BER","value":"25179/250000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -25179/250000` |
| 91 | bound | `{"direction":"hi","ref":"276:91","triangle":"BER","value":"41811067699/62500000000"}` | `41811067699/62500000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 92 | bound | `{"direction":"lo","ref":"276:92","triangle":"BES","value":"93/1000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -93/1000` |
| 94 | bound | `{"direction":"lo","ref":"276:94","triangle":"BFH","value":"93/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -93/1000` |
| 95 | bound | `{"direction":"hi","ref":"276:95","triangle":"BFH","value":"293803/500000"}` | `293803/500000 + -1 * f * h + 1 * b * h + -1 * b` |
| 99 | bound | `{"direction":"hi","ref":"276:99","triangle":"BFS","value":"38360693/62500000"}` | `38360693/62500000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 103 | bound | `{"direction":"hi","ref":"276:103","triangle":"BHQ","value":"265647/500000"}` | `265647/500000 + -1 * b * v + -1 * h * u + 1 * b * h` |
| 104 | bound | `{"direction":"lo","ref":"276:104","triangle":"BHR","value":"46221/125000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -46221/125000` |
| 105 | bound | `{"direction":"hi","ref":"276:105","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 107 | bound | `{"direction":"hi","ref":"276:107","triangle":"BHS","value":"419887/500000"}` | `419887/500000 + -1 * b * k + -1 * h * j + 1 * b * h` |
| 108 | bound | `{"direction":"lo","ref":"276:108","triangle":"BQR","value":"2907/25000"}` | `-1 * u * w + 1 * b * w + 1 * v * r + -1 * b * v + -2907/25000` |
| 112 | bound | `{"direction":"lo","ref":"276:112","triangle":"CEF","value":"151927/1000000"}` | `848073/1000000 + -1 * c + -1 * e * f + 1 * c * e` |
| 114 | bound | `{"direction":"lo","ref":"276:114","triangle":"CEH","value":"32309/100000"}` | `1 * h + -1 * c * h + 1 * c * e + -32309/100000` |
| 115 | bound | `{"direction":"hi","ref":"276:115","triangle":"CEH","value":"7691471/12500000"}` | `7691471/12500000 + -1 * h + 1 * c * h + -1 * c * e` |
| 117 | bound | `{"direction":"hi","ref":"276:117","triangle":"CEP","value":"349357/1000000"}` | `349357/1000000 + -1 * q + 1 * c * q + 1 * e * p + -1 * c * e` |
| 118 | bound | `{"direction":"lo","ref":"276:118","triangle":"CEQ","value":"13709/100000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -13709/100000` |
| 119 | bound | `{"direction":"hi","ref":"276:119","triangle":"CEQ","value":"214659/500000"}` | `214659/500000 + -1 * v + 1 * c * v + 1 * e * u + -1 * c * e` |
| 120 | bound | `{"direction":"lo","ref":"276:120","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 121 | bound | `{"direction":"hi","ref":"276:121","triangle":"CER","value":"33634497131/125000000000"}` | `33634497131/125000000000 + -1 * w + 1 * c * w + 1 * e * r + -1 * c * e` |
| 122 | bound | `{"direction":"lo","ref":"276:122","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 123 | bound | `{"direction":"hi","ref":"276:123","triangle":"CES","value":"69069/250000"}` | `69069/250000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 125 | bound | `{"direction":"hi","ref":"276:125","triangle":"CFH","value":"7142728171/10000000000"}` | `7142728171/10000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 126 | bound | `{"direction":"lo","ref":"276:126","triangle":"CFP","value":"139281/1000000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -139281/1000000` |
| 128 | bound | `{"direction":"lo","ref":"276:128","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 130 | bound | `{"direction":"lo","ref":"276:130","triangle":"CFR","value":"75639/250000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -75639/250000` |
| 131 | bound | `{"direction":"hi","ref":"276:131","triangle":"CFR","value":"84567/125000"}` | `84567/125000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 133 | bound | `{"direction":"hi","ref":"276:133","triangle":"CFS","value":"29989/62500"}` | `29989/62500 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 136 | bound | `{"direction":"lo","ref":"276:136","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 138 | bound | `{"direction":"lo","ref":"276:138","triangle":"CHR","value":"13857/20000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -13857/20000` |
| 139 | bound | `{"direction":"hi","ref":"276:139","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 144 | bound | `{"direction":"lo","ref":"276:144","triangle":"CPR","value":"356141/1000000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -356141/1000000` |
| 152 | bound | `{"direction":"lo","ref":"276:152","triangle":"CRS","value":"93/1000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -93/1000` |
| 154 | bound | `{"direction":"lo","ref":"276:154","triangle":"EFH","value":"67971/500000"}` | `1 * f * h + -1 * e * f + -1 * h + 432029/500000` |
| 155 | bound | `{"direction":"hi","ref":"276:155","triangle":"EFH","value":"131050857479/250000000000"}` | `-118949142521/250000000000 + -1 * f * h + 1 * e * f + 1 * h` |
| 156 | bound | `{"direction":"lo","ref":"276:156","triangle":"EFP","value":"49721/250000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 200279/250000 + 1 * e * p` |
| 158 | bound | `{"direction":"lo","ref":"276:158","triangle":"EFQ","value":"18897/200000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 181103/200000 + 1 * e * u` |
| 159 | bound | `{"direction":"hi","ref":"276:159","triangle":"EFQ","value":"435671/1000000"}` | `-564329/1000000 + -1 * f * v + 1 * e * f + 1 * v + 1 * u + -1 * e * u` |
| 160 | bound | `{"direction":"lo","ref":"276:160","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 162 | bound | `{"direction":"lo","ref":"276:162","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 166 | bound | `{"direction":"lo","ref":"276:166","triangle":"EHQ","value":"93/1000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -93/1000` |
| 168 | bound | `{"direction":"lo","ref":"276:168","triangle":"EHR","value":"82373/250000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -82373/250000` |
| 169 | bound | `{"direction":"hi","ref":"276:169","triangle":"EHR","value":"84567/125000"}` | `84567/125000 + -1 * w + -1 * h * r + 1 * h + 1 * e * r` |
| 170 | bound | `{"direction":"lo","ref":"276:170","triangle":"EHS","value":"957/10000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -957/10000` |
| 174 | bound | `{"direction":"lo","ref":"276:174","triangle":"EPR","value":"72247/250000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -72247/250000` |
| 176 | bound | `{"direction":"lo","ref":"276:176","triangle":"EPS","value":"25747/250000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -25747/250000` |
| 178 | bound | `{"direction":"lo","ref":"276:178","triangle":"EQR","value":"279351/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -279351/1000000` |
| 179 | bound | `{"direction":"hi","ref":"276:179","triangle":"EQR","value":"5127/10000"}` | `5127/10000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 182 | bound | `{"direction":"lo","ref":"276:182","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 186 | bound | `{"direction":"lo","ref":"276:186","triangle":"FHQ","value":"93/1000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93/1000` |
| 188 | bound | `{"direction":"lo","ref":"276:188","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 189 | bound | `{"direction":"hi","ref":"276:189","triangle":"FHR","value":"2290925471/7812500000"}` | `2290925471/7812500000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 190 | bound | `{"direction":"lo","ref":"276:190","triangle":"FHS","value":"121709/1000000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -121709/1000000` |
| 196 | bound | `{"direction":"lo","ref":"276:196","triangle":"FQR","value":"9549/62500"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -9549/62500` |
| 197 | bound | `{"direction":"hi","ref":"276:197","triangle":"FQR","value":"25060692327/62500000000"}` | `25060692327/62500000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 200 | bound | `{"direction":"lo","ref":"276:200","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 201 | bound | `{"direction":"hi","ref":"276:201","triangle":"FRS","value":"271701/1000000"}` | `271701/1000000 + 1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j` |
| 208 | bound | `{"direction":"lo","ref":"276:208","triangle":"HQR","value":"77259/500000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -77259/500000` |
| 212 | bound | `{"direction":"lo","ref":"276:212","triangle":"HRS","value":"17599/125000"}` | `-1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j + -17599/125000` |
| 213 | bound | `{"direction":"hi","ref":"276:213","triangle":"HRS","value":"38271/100000"}` | `38271/100000 + 1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j` |
| 218 | bound | `{"direction":"lo","ref":"276:218","triangle":"PRS","value":"93/1000"}` | `-1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j + -93/1000` |
| 222 | coordinate | `{"box":276,"direction":"lo","value":"40433/125000","variable":"a"}` | `1 * a + -40433/125000` |
| 223 | coordinate | `{"box":276,"direction":"hi","value":"59/125","variable":"a"}` | `59/125 + -1 * a` |
| 224 | coordinate | `{"box":276,"direction":"lo","value":"17183/125000","variable":"b"}` | `1 * b + -17183/125000` |
| 226 | coordinate | `{"box":276,"direction":"lo","value":"145713/200000","variable":"c"}` | `1 * c + -145713/200000` |
| 227 | coordinate | `{"box":276,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 228 | coordinate | `{"box":276,"direction":"lo","value":"40433/125000","variable":"e"}` | `1 * e + -40433/125000` |
| 229 | coordinate | `{"box":276,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 230 | coordinate | `{"box":276,"direction":"lo","value":"40433/125000","variable":"f"}` | `1 * f + -40433/125000` |
| 231 | coordinate | `{"box":276,"direction":"hi","value":"293803/500000","variable":"f"}` | `293803/500000 + -1 * f` |
| 232 | coordinate | `{"box":276,"direction":"lo","value":"13857/20000","variable":"h"}` | `1 * h + -13857/20000` |
| 233 | coordinate | `{"box":276,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 234 | coordinate | `{"box":276,"direction":"lo","value":"64959/250000","variable":"p"}` | `1 * p + -64959/250000` |
| 235 | coordinate | `{"box":276,"direction":"hi","value":"143633/250000","variable":"p"}` | `143633/250000 + -1 * p` |
| 236 | coordinate | `{"box":276,"direction":"lo","value":"107821/1000000","variable":"q"}` | `1 * q + -107821/1000000` |
| 237 | coordinate | `{"box":276,"direction":"hi","value":"128179/500000","variable":"q"}` | `128179/500000 + -1 * q` |
| 238 | coordinate | `{"box":276,"direction":"lo","value":"17183/125000","variable":"u"}` | `1 * u + -17183/125000` |
| 239 | coordinate | `{"box":276,"direction":"hi","value":"587087/1000000","variable":"u"}` | `587087/1000000 + -1 * u` |
| 240 | coordinate | `{"box":276,"direction":"lo","value":"239969/500000","variable":"v"}` | `1 * v + -239969/500000` |
| 241 | coordinate | `{"box":276,"direction":"hi","value":"41721/50000","variable":"v"}` | `41721/50000 + -1 * v` |
| 242 | coordinate | `{"box":276,"direction":"lo","value":"367929/500000","variable":"r"}` | `1 * r + -367929/500000` |
| 243 | coordinate | `{"box":276,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 244 | coordinate | `{"box":276,"direction":"lo","value":"367929/500000","variable":"w"}` | `1 * w + -367929/500000` |
| 245 | coordinate | `{"box":276,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 246 | coordinate | `{"box":276,"direction":"lo","value":"603839/1000000","variable":"j"}` | `1 * j + -603839/1000000` |
| 247 | coordinate | `{"box":276,"direction":"hi","value":"107817/125000","variable":"j"}` | `107817/125000 + -1 * j` |
| 248 | coordinate | `{"box":276,"direction":"lo","value":"74799/125000","variable":"k"}` | `1 * k + -74799/125000` |
| 249 | coordinate | `{"box":276,"direction":"hi","value":"430773/500000","variable":"k"}` | `430773/500000 + -1 * k` |
| 251 | physical | `{"factor":2}` | `-279/1000 + 1 * c + -1 * b` |
| 252 | physical | `{"factor":4}` | `-93/1000 + 1 * e` |
| 253 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 254 | physical | `{"factor":8}` | `-93/1000 + 1 * b` |
| 256 | physical | `{"factor":11}` | `-93/1000 + 1 * a` |
| 258 | physical | `{"factor":18}` | `-93/1000 + 1 * c` |
| 259 | physical | `{"factor":25}` | `907/1000 + -1 * a` |
| 261 | physical | `{"factor":49}` | `-93/1000 + 1 * h` |
| 262 | physical | `{"factor":54}` | `907/1000 + -1 * b` |
| 263 | physical | `{"factor":69}` | `907/1000 + -1 * f` |
| 265 | physical | `{"factor":92}` | `907/1000 + -1 * e` |
| 266 | physical | `{"factor":126}` | `1 * h + -1 * a` |
| 267 | physical | `{"factor":127}` | `1 * e + -1 * a` |
| 270 | physical | `{"factor":130}` | `1 * c + -1 * f` |
| 271 | physical | `{"factor":131}` | `1 * f + -1 * e` |
| 272 | physical | `{"factor":132}` | `1 * c * h + -13857/20000` |
| 274 | physical | `{"factor":134}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 275 | physical | `{"factor":135}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 278 | physical | `{"factor":138}` | `907/1000 + -1 * p + -1 * q` |
| 281 | physical | `{"factor":141}` | `2383859163/484375000 * k + -1 + -1415109163/484375000 * e + -1 * w` |
| 292 | physical | `{"factor":152}` | `6361203/15625000 * c * h + 4215219/31250000 * b * h + -135501/250000 * a * c` |
| 404 | physical | `{"factor":264}` | `6361203/15625000 * h + 11076297/15625000 * c * h + -11076297/15625000 * c * e + 279/250 * b * e + -279/250 * b * h` |
| 488 | physical | `{"factor":348}` | `293541/250000 * f * w + 293541/250000 * h * r + 84567/125000 * f * h + -293541/250000 * r + 18507/10000 * c + -18507/10000 * c * h` |
| 564 | physical | `{"factor":424}` | `34579361733/125000000000 * h + 93295638267/125000000000 * a + -1023/1000 * b * h + 1023/1000 * b * e` |
| 578 | physical | `{"factor":438}` | `-73027558949/100000000000 * c * e + 73027558949/100000000000 * b * e + 1023/1000 * c * k + -1023/1000 * b * k` |
| 592 | physical | `{"factor":452}` | `34579361733/125000000000 * h * u + 93295638267/125000000000 * a * u + -1023/1000 * b * h + 1023/1000 * b * v` |
| 614 | physical | `{"factor":474}` | `-8832797511/15625000000 * w + 8832797511/15625000000 * b * w + 8832797511/15625000000 * e * r + 7151577489/15625000000 * b * e + -1023/1000 * e * f + 1023/1000 + -1023/1000 * b` |
| 633 | physical | `{"factor":493}` | `-25576807/62500000 * b * k + -38360693/62500000 * a * b + -25576807/62500000 * a * j + 1023/1000 * b + 1023/1000 * a * f` |
| 649 | physical | `{"factor":509}` | `-73027558949/100000000000 * c * e + -29272441051/100000000000 * a * c + -73027558949/100000000000 * a + 1023/1000 * c * k + 1023/1000 * a * j` |
| 666 | physical | `{"factor":526}` | `-73027558949/100000000000 * q + -29272441051/100000000000 * c * q + 73027558949/100000000000 * e * p + -73027558949/100000000000 * c * e + 1023/1000 * c * k + -1023/1000 * p * k + 1023/1000 * q * j` |
| 766 | physical | `{"factor":626}` | `-7142728171/10000000000 * f * w + 3087271829/10000000000 * h * r + -3087271829/10000000000 * f * h + 7142728171/10000000000 * r + -1023/1000 * c + 1023/1000 * c * w` |
| 776 | physical | `{"factor":636}` | `38876807673/62500000000 * f * w + -38876807673/62500000000 * e * f + 25060692327/62500000000 * w + -38876807673/62500000000 * r + 38876807673/62500000000 + -25060692327/62500000000 * e * r + -1023/1000 * u * w + 1023/1000 * v * r + -1023/1000 * v + 1023/1000 * e * u` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 15008000 | 0, 3 |
| 1 | 95727000 | 0, 15 |
| 2 | 8999000 | 0, 17 |
| 3 | 41817000 | 0, 36 |
| 4 | 61810000 | 0, 52 |
| 5 | 20781000 | 0, 54 |
| 6 | 148314000 | 0, 61 |
| 7 | 24880000 | 0, 62 |
| 8 | 70851000 | 0, 69 |
| 9 | 3180000 | 0, 76 |
| 10 | 9121000 | 0, 91 |
| 11 | 24129000 | 0, 92 |
| 12 | 5822000 | 0, 112 |
| 13 | 21760000 | 0, 123 |
| 14 | 3177000 | 0, 144 |
| 15 | 21757000 | 0, 152 |
| 16 | 7442000 | 0, 156 |
| 17 | 1910000 | 0, 159 |
| 18 | 16924000 | 0, 174 |
| 19 | 16695000 | 0, 179 |
| 20 | 2372000 | 0, 182 |
| 21 | 298000 | 0, 189 |
| 22 | 7442000 | 0, 201 |
| 23 | 102423000 | 0, 218 |
| 24 | 29670000 | 0, 224 |
| 25 | 1068000 | 0, 230 |
| 26 | 149755000 | 0, 232 |
| 27 | 31936000 | 0, 235 |
| 28 | 1067000 | 0, 239 |
| 29 | 11936000 | 0, 241 |
| 30 | 16357000 | 0, 243 |
| 31 | 60106000 | 0, 244 |
| 32 | 30901000 | 0, 246 |
| 33 | 42361000 | 0, 248 |
| 34 | 23093000 | 0, 267 |
| 35 | 7329000 | 0, 278 |
| 36 | 16694900 | 2, 64 |
| 37 | 5986500 | 2, 166 |
| 38 | 13522300 | 3, 243 |
| 39 | 23131500 | 3, 272 |
| 40 | 13346900 | 6, 26 |
| 41 | 63695500 | 6, 33 |
| 42 | 49587800 | 6, 37 |
| 43 | 56423000 | 6, 53 |
| 44 | 1722000 | 6, 70 |
| 45 | 331600 | 6, 84 |
| 46 | 339500 | 6, 119 |
| 47 | 7900 | 6, 130 |
| 48 | 5422500 | 6, 158 |
| 49 | 5126700 | 6, 242 |
| 50 | 36202500 | 6, 244 |
| 51 | 2675500 | 6, 246 |
| 52 | 2313300 | 6, 249 |
| 53 | 29855600 | 6, 258 |
| 54 | 76881800 | 6, 261 |
| 55 | 27811300 | 6, 262 |
| 56 | 20846100 | 6, 265 |
| 57 | 119857000 | 8, 14 |
| 58 | 243294300 | 8, 26 |
| 59 | 119856600 | 8, 29 |
| 60 | 3177400 | 8, 80 |
| 61 | 7442200 | 8, 133 |
| 62 | 40047300 | 8, 249 |
| 63 | 39265400 | 8, 258 |
| 64 | 14995700 | 8, 259 |
| 65 | 814200 | 10, 17 |
| 66 | 7434300 | 10, 160 |
| 67 | 7215600 | 10, 223 |
| 68 | 243294300 | 12, 22 |
| 69 | 3177000 | 13, 76 |
| 70 | 119860000 | 14, 76 |
| 71 | 298000 | 14, 188 |
| 72 | 333000 | 14, 267 |
| 73 | 54818900 | 17, 186 |
| 74 | 74828500 | 17, 243 |
| 75 | 1237100 | 17, 271 |
| 76 | 126171900 | 18, 166 |
| 77 | 513100 | 18, 188 |
| 78 | 16694900 | 21, 64 |
| 79 | 568400 | 21, 120 |
| 80 | 2720500 | 21, 188 |
| 81 | 24366000 | 22, 70 |
| 82 | 24365900 | 22, 81 |
| 83 | 7442200 | 22, 99 |
| 84 | 70948300 | 22, 242 |
| 85 | 30901000 | 22, 247 |
| 86 | 39265400 | 22, 254 |
| 87 | 2594400 | 22, 256 |
| 88 | 3429000 | 24, 267 |
| 89 | 138350000 | 26, 166 |
| 90 | 56728600 | 30, 136 |
| 91 | 375400 | 31, 73 |
| 92 | 30000 | 31, 130 |
| 93 | 20313300 | 31, 227 |
| 94 | 77984800 | 33, 120 |
| 95 | 121203500 | 34, 247 |
| 96 | 81156200 | 35, 243 |
| 97 | 79593100 | 38, 136 |
| 98 | 323600 | 38, 243 |
| 99 | 64238500 | 38, 267 |
| 100 | 24366000 | 39, 76 |
| 101 | 297700 | 41, 188 |
| 102 | 69148000 | 42, 166 |
| 103 | 31188000 | 42, 233 |
| 104 | 56742100 | 43, 120 |
| 105 | 7442000 | 49, 76 |
| 106 | 63797500 | 52, 115 |
| 107 | 7484300 | 52, 160 |
| 108 | 8429600 | 52, 272 |
| 109 | 50000 | 53, 188 |
| 110 | 59052200 | 54, 166 |
| 111 | 79593100 | 55, 118 |
| 112 | 758400 | 55, 188 |
| 113 | 151343000 | 64, 70 |
| 114 | 54436500 | 64, 73 |
| 115 | 71399700 | 64, 75 |
| 116 | 56728600 | 64, 84 |
| 117 | 78834000 | 64, 86 |
| 118 | 110414100 | 64, 114 |
| 119 | 245300 | 64, 169 |
| 120 | 1916100 | 64, 252 |
| 121 | 16990200 | 64, 261 |
| 122 | 245300 | 64, 274 |
| 123 | 152104500 | 68, 234 |
| 124 | 8000 | 70, 166 |
| 125 | 25399000 | 70, 188 |
| 126 | 98078800 | 73, 162 |
| 127 | 86087900 | 73, 166 |
| 128 | 224661900 | 73, 182 |
| 129 | 112237600 | 73, 188 |
| 130 | 97414000 | 73, 218 |
| 131 | 56265100 | 73, 222 |
| 132 | 37253500 | 74, 267 |
| 133 | 452800 | 75, 182 |
| 134 | 39219900 | 75, 188 |
| 135 | 27499700 | 75, 224 |
| 136 | 24366000 | 76, 120 |
| 137 | 7667000 | 76, 267 |
| 138 | 7667000 | 76, 271 |
| 139 | 57268400 | 80, 166 |
| 140 | 7900 | 81, 188 |
| 141 | 2292100 | 84, 166 |
| 142 | 2292100 | 85, 178 |
| 143 | 15501100 | 85, 188 |
| 144 | 95352700 | 85, 233 |
| 145 | 39219900 | 86, 188 |
| 146 | 4197000 | 87, 114 |
| 147 | 339500 | 87, 128 |
| 148 | 7500 | 88, 120 |
| 149 | 7434300 | 88, 188 |
| 150 | 8811900 | 90, 136 |
| 151 | 452800 | 94, 182 |
| 152 | 32152100 | 94, 267 |
| 153 | 13369900 | 95, 120 |
| 154 | 56985800 | 95, 245 |
| 155 | 297700 | 99, 188 |
| 156 | 1565000 | 99, 233 |
| 157 | 8796900 | 103, 120 |
| 158 | 55890800 | 104, 166 |
| 159 | 643200 | 105, 224 |
| 160 | 4151300 | 105, 271 |
| 161 | 1478500 | 107, 243 |
| 162 | 7500 | 108, 120 |
| 163 | 2687500 | 114, 224 |
| 164 | 67594300 | 115, 267 |
| 165 | 64588600 | 115, 271 |
| 166 | 2050800 | 117, 271 |
| 167 | 4505700 | 118, 188 |
| 168 | 82600 | 120, 170 |
| 169 | 54444100 | 120, 186 |
| 170 | 237800 | 120, 197 |
| 171 | 30997200 | 120, 213 |
| 172 | 13960100 | 120, 224 |
| 173 | 95987200 | 120, 240 |
| 174 | 105100 | 120, 242 |
| 175 | 568400 | 120, 272 |
| 176 | 215000 | 121, 182 |
| 177 | 750500 | 122, 169 |
| 178 | 2313300 | 122, 222 |
| 179 | 69198000 | 125, 166 |
| 180 | 40047300 | 126, 247 |
| 181 | 8316600 | 128, 233 |
| 182 | 66621900 | 130, 166 |
| 183 | 452800 | 130, 182 |
| 184 | 13798000 | 131, 267 |
| 185 | 17873180 | 131, 281 |
| 186 | 58942200 | 136, 160 |
| 187 | 114900500 | 136, 168 |
| 188 | 95987200 | 136, 244 |
| 189 | 165637700 | 136, 259 |
| 190 | 160601600 | 136, 261 |
| 191 | 100111300 | 136, 265 |
| 192 | 19248100 | 136, 266 |
| 193 | 30329300 | 138, 182 |
| 194 | 339200 | 138, 243 |
| 195 | 245300 | 139, 196 |
| 196 | 69636700 | 139, 245 |
| 197 | 27673000 | 139, 267 |
| 198 | 30329300 | 152, 169 |
| 199 | 70948300 | 152, 234 |
| 200 | 87963100 | 152, 245 |
| 201 | 297700 | 154, 162 |
| 202 | 76322600 | 154, 243 |
| 203 | 239400 | 155, 188 |
| 204 | 18048400 | 155, 245 |
| 205 | 298000 | 160, 190 |
| 206 | 452800 | 160, 212 |
| 207 | 11883800 | 160, 238 |
| 208 | 57000 | 160, 245 |
| 209 | 15189300 | 160, 271 |
| 210 | 118186000 | 160, 272 |
| 211 | 452800 | 162, 168 |
| 212 | 40047300 | 162, 235 |
| 213 | 2675500 | 162, 253 |
| 214 | 169027100 | 162, 258 |
| 215 | 748300 | 162, 261 |
| 216 | 100754300 | 162, 262 |
| 217 | 7500 | 166, 168 |
| 218 | 11883800 | 166, 242 |
| 219 | 95987200 | 166, 244 |
| 220 | 95859300 | 166, 258 |
| 221 | 1085900 | 166, 261 |
| 222 | 90295400 | 166, 262 |
| 223 | 87279400 | 166, 263 |
| 224 | 16809500 | 166, 265 |
| 225 | 3029200 | 166, 272 |
| 226 | 215000 | 169, 188 |
| 227 | 119819800 | 169, 247 |
| 228 | 121298300 | 170, 243 |
| 229 | 748300 | 170, 267 |
| 230 | 782500 | 176, 267 |
| 231 | 1685300 | 178, 228 |
| 232 | 75395600 | 178, 230 |
| 233 | 11462700 | 178, 267 |
| 234 | 81156200 | 182, 234 |
| 235 | 296063000 | 182, 258 |
| 236 | 226593200 | 182, 262 |
| 237 | 297700 | 182, 274 |
| 238 | 11883800 | 188, 239 |
| 239 | 69472200 | 188, 244 |
| 240 | 84054900 | 188, 258 |
| 241 | 23003600 | 188, 261 |
| 242 | 134060500 | 188, 262 |
| 243 | 5450000 | 188, 263 |
| 244 | 2676000 | 190, 224 |
| 245 | 2687900 | 197, 267 |
| 246 | 87963100 | 200, 245 |
| 247 | 75395600 | 208, 271 |
| 248 | 168362300 | 218, 258 |
| 249 | 97414000 | 218, 262 |
| 250 | 76061600 | 223, 247 |
| 251 | 92283600 | 223, 272 |
| 252 | 2532100 | 224, 249 |
| 253 | 7678000 | 226, 243 |
| 254 | 22715700 | 226, 247 |
| 255 | 941600 | 227, 227 |
| 256 | 15214900 | 227, 236 |
| 257 | 146187900 | 229, 243 |
| 258 | 777900 | 229, 267 |
| 259 | 72164100 | 229, 271 |
| 260 | 196015500 | 229, 272 |
| 261 | 58924500 | 230, 233 |
| 262 | 16649100 | 231, 245 |
| 263 | 56062700 | 233, 271 |
| 264 | 3043300 | 234, 271 |
| 265 | 495900 | 236, 271 |
| 266 | 12953900 | 237, 247 |
| 267 | 4701000 | 238, 267 |
| 268 | 134500 | 243, 243 |
| 269 | 10409100 | 243, 271 |
| 270 | 542330 | 243, 281 |
| 271 | 73927700 | 244, 271 |
| 272 | 84300 | 245, 245 |
| 273 | 2669100 | 245, 247 |
| 274 | 29871500 | 245, 272 |
| 275 | 34085300 | 245, 275 |
| 276 | 8185300 | 247, 251 |
| 277 | 27646500 | 247, 267 |
| 278 | 2675500 | 247, 271 |
| 279 | 782500 | 248, 267 |
| 280 | 2313300 | 248, 271 |
| 281 | 13167900 | 267, 270 |
| 282 | 36294900 | 267, 275 |
| 283 | 1169200 | 271, 271 |
| 284 | 12849000 | 275, 275 |
| 285 | 147260000 | 267, 292 |
| 286 | 10309000 | 6, 292 |
| 287 | 279000 | 267, 404 |
| 288 | 655400 | 188, 488 |
| 289 | 1359300 | 6, 564 |
| 290 | 325900 | 267, 578 |
| 291 | 3939300 | 267, 592 |
| 292 | 2615400 | 247, 614 |
| 293 | 1828400 | 233, 633 |
| 294 | 439000 | 267, 649 |
| 295 | 38382000 | 267, 666 |
| 296 | 39146900 | 271, 666 |
| 297 | 660600 | 188, 766 |
| 298 | 2775800 | 267, 776 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b` | -7100524822608143/62500000 |
| `a * a * b * b` | 9122000 |
| `a * a * b` | -2527917610963331/1250000000 |
| `a * c` | -923053055862957/62500000 |
| `a * b * c * e` | 2700 |
| `a * a * b * c` | -95191/250 |
| `a * a * c` | -294958494378611/100000000 |
| `1` | -18115954678642460503/1250000000000 |
| `a` | -44405009852363723783/1250000000000 |
| `a * b * b * k` | -1000 |
| `a * a * b * j` | -4400 |
| `a * b * c * k` | -2400 |
| `a * a * c * j` | 4000 |
| `b * k` | 337297309164/78125 |
| `a * j` | 2949476131031/312500 |
| `a * c * c * e` | -2600 |
| `a * a * c * c` | 8999000 |
| `c * e` | -193989015891955963/19375000000 |
| `a * b * v` | 7905961/10 |
| `a * b * e * u` | 200 |
| `a * a * b * u` | -3537100 |
| `a * c * v` | -11628600 |
| `a * c * e * u` | 41800 |
| `a * a * c * u` | -2483900 |
| `v` | -13624765092437/5000000 |
| `e * u` | 22585937092437/5000000 |
| `a * u` | 7303715503/10000 |
| `a * b * h * u` | 400 |
| `a * c * h * u` | 531900 |
| `h * u` | 14639060844571/5000000 |
| `a * b * h * r` | 200 |
| `a * a * b * r` | -300 |
| `a * c * h * r` | 138032500 |
| `a * a * c * r` | -13346600 |
| `h * r` | -1676165516360454911/50000000000 |
| `a * r` | 18395036769599817/312500000 |
| `a * b * p * w` | 400 |
| `a * a * b * p` | 3300 |
| `a * b * q * r` | -700 |
| `a * c * p * w` | -400 |
| `a * a * c * p` | -3700 |
| `a * c * q * r` | 700 |
| `p * w` | 28999/250 |
| `a * p` | 3234392513701/156250 |
| `q * r` | -28999/250 |
| `a * b * p * k` | -3800 |
| `a * b * q * j` | 1400 |
| `a * c * p * k` | 4200 |
| `a * c * q * j` | -1000 |
| `p * k` | -287749/250 |
| `q * j` | 3238762749/250 |
| `a * b * r * k` | 1000 |
| `a * b * w * j` | -1000 |
| `a * c * r * k` | -1000 |
| `a * c * w * j` | 1000 |
| `r * k` | 35269314323/155000000 |
| `w * j` | 21336119951/625000000 |
| `a * b * c * q` | -9400 |
| `a * b * b * q` | 6000 |
| `a * c * c * q` | 3000 |
| `c * q` | 100256589100549/31250000 |
| `b * q` | 826419198739651/31250000 |
| `a * b * w` | -97222800 |
| `a * b * b * w` | -5943600 |
| `a * b * e * r` | -200 |
| `a * c * w` | 17670600 |
| `a * b * c * w` | -7979300 |
| `a * c * e * r` | -176457700 |
| `w` | -46832964720973438187/4882812500000 |
| `b * w` | 330598189975379579499/9765625000000 |
| `e * r` | 10677203674806842495719/302734375000000 |
| `a * b * k` | 29957/10 |
| `a * b * e * j` | -3000 |
| `a * c * k` | -25787/10 |
| `a * c * e * j` | 3000 |
| `k` | 347390363665712894381/12109375000000 |
| `e * j` | 24737067576633/25000000 |
| `a * b * c` | 5644300 |
| `a * b * e * f` | 9673800 |
| `a * c * c` | -5822000 |
| `a * c * e * f` | 45388100 |
| `c` | -273326853439/62500 |
| `e * f` | 143539152473311/1250000 |
| `a * c * c * k` | 3000 |
| `c * k` | 484112246015459/48437500 |
| `a * c * c * w` | -300 |
| `c * w` | -5533843833957827/625000000 |
| `a * b * q` | 300 |
| `a * b * p` | -600 |
| `a * c * q` | -317752583790259/50000000 |
| `a * c * p` | 600 |
| `f * q` | 2322994478593919/1000000000 |
| `q` | -6563488854/625 |
| `p` | -3769201908/625 |
| `e * p` | 3386192019/250 |
| `a * b * f * v` | -3512500 |
| `a * b * u` | 2287400 |
| `a * c * f * v` | -300 |
| `a * c * u` | 1225400 |
| `f * v` | 814894/15625 |
| `u` | -29886655519/15625 |
| `a * b * u * w` | -100 |
| `a * b * v * r` | 100 |
| `a * c * u * w` | 100 |
| `a * c * v * r` | -100 |
| `u * w` | 92616373/1250000 |
| `v * r` | -92616373/1250000 |
| `a * b * f * w` | 200 |
| `a * b * r` | -100 |
| `a * c * f * w` | -51239500 |
| `a * c * f * h` | -300 |
| `a * c * r` | 28666700 |
| `f * w` | 927694749529545089/50000000000 |
| `f * h` | -1138176097356545089/50000000000 |
| `r` | 171091776710454911/50000000000 |
| `a * b * f * k` | -200 |
| `a * b * j` | -33576300 |
| `a * c * f * k` | 200 |
| `a * c * j` | -200 |
| `f * k` | -439105156627/5000 |
| `j` | -15661167609/5000 |
| `a * b * b` | -1527100 |
| `b` | 41504465311811/1250000 |
| `a * b * f` | -1443400 |
| `a * c * f` | 23023800 |
| `f` | 8404449180187/250000 |
| `a * b * h` | -230977024669/625000000 |
| `a * c * h` | -1588205103143/15625 |
| `h` | -38831286202102160217/1250000000000 |
| `a * b * e` | -3129260814614791/1000000000 |
| `a * c * e` | 115161088777224191/1000000000 |
| `e` | -733382483674720080631/12109375000000 |
| `b * e` | -562298512713160829499/9765625000000 |
| `a * u * w` | 217/5 |
| `a * a * u` | 2869929921748069/1250000000 |
| `a * v * r` | -217/5 |
| `a * a * r` | -80933400 |
| `b * e * v` | -19485961/10 |
| `b * e * h * u` | 300 |
| `b * e * h` | 128409330613/6250 |
| `b * e * e * u` | 5978500 |
| `a * v` | 41579217/5 |
| `a * h * u` | -3979684796748069/1250000000 |
| `a * h` | 1159617411863/15625 |
| `a * e * u` | -38234171748069/1250000000 |
| `b * e * r` | 17872600 |
| `c * h` | 1009352610925153/31250000 |
| `b * c * e * h` | -100 |
| `a * b * c * h` | 3490421/31250 |
| `b * c * h * w` | -100 |
| `b * h` | 1435281486781597/31250000 |
| `b * h * h` | -47664337735963331/1250000000 |
| `b * h * v` | 541000 |
| `b * h * h * u` | -532200 |
| `b * b * e * h` | 1639/10 |
| `a * b * b * e` | -1639/10 |
| `a * b * c * v` | 474700 |
| `c * v` | 233775036099/62500 |
| `b * h * r` | 9037000 |
| `b * f * h * v` | -1672300 |
| `b * h * u` | 737600 |
| `b * h * w` | 5900 |
| `b * h * j` | -500 |
| `b * h * k` | -10290203/156250 |
| `b * b * q * k` | -3000 |
| `a * a * p * j` | 400 |
| `b * c * q * w` | 500 |
| `b * c * q * k` | 3400 |
| `b * b * q * w` | -400 |
| `b * f * q * k` | 200 |
| `b * q * j` | -200 |
| `b * q * k` | -40047300 |
| `a * p * k` | -14 |
| `a * a * p` | -17590100 |
| `b * v` | -15/2 |
| `b * c * e * v` | -474700 |
| `b * e * f * v` | 7094800 |
| `b * f * w * k` | -300 |
| `b * h * r * k` | -300 |
| `b * f * h * k` | 300 |
| `b * r * k` | 300 |
| `a * f * w * j` | -300 |
| `a * h * r * j` | -300 |
| `a * f * h * j` | 300 |
| `a * r * j` | 300 |
| `b * e * k` | -3957/10 |
| `a * e * j` | -403 |
| `a * a * j` | -782097 |
| `c * e * f * v` | 2350600 |
| `c * e * h * u` | -400 |
| `c * e * f * h` | 75390300 |
| `c * e * u` | -13600 |
| `a * f * v` | 482900 |
| `a * f * h` | -1659266/5 |
| `c * e * r` | 33652200 |
| `c * e * f` | -46234925474206081/1000000000 |
| `c * e * e` | 1319088137/15625 |
| `a * f` | -21164345293/1250 |
| `a * e` | -2624919098378611/100000000 |
| `c * h * u` | -368700 |
| `c * f * w` | 1356622251/50 |
| `c * h * r` | 1095184906/25 |
| `c * f * h` | 1872807749/50 |
| `c * r` | -1740522251/50 |
| `a * f * f * w` | -483100 |
| `a * f * f * h` | 513100 |
| `a * f * r` | 483100 |
| `c * h * w` | 100 |
| `c * e * h * r` | 33896000 |
| `c * f * h * w` | 2129/50 |
| `c * h * h * r` | -3587357561/50 |
| `c * f * h * h` | -2157667439/50 |
| `c * c * q * w` | -100 |
| `c * f * q * k` | -200 |
| `c * q * j` | 200 |
| `c * e * v` | -695600 |
| `c * v * w` | -100 |
| `c * e * u * w` | 100 |
| `a * h * r` | -99810500 |
| `b * e * f` | -2300100 |
| `a * f * w` | 11938085036306433/312500000 |
| `e * f * f * w` | -15770500 |
| `c * e * f * w` | -29636900 |
| `e * f * r` | 1508200 |
| `h * w` | -121100 |
| `e * h * r` | -20857400 |
| `c * e * h` | -770751146857/15625 |
| `a * w` | 365807651193567/312500000 |
| `a * e * r` | 19109942348806433/312500000 |
| `h * u * w` | -100 |
| `e * h * u * r` | 100 |
| `r * w` | -350890 |
| `e * r * r` | 218500 |
| `a * r * r` | 434800 |
| `e * w` | 7333692348806433/312500000 |
| `a * a` | 6455909098378611/100000000 |
| `e * e * r` | -19784442348806433/312500000 |
| `f * w * k` | -6398002583/24218750 |
| `f * h * k` | -2313300 |
| `e * h * r * j` | 300 |
| `e * f * h * j` | -300 |
| `e * r * j` | -22118051347/78125000 |
| `f * h * v` | 3333900 |
| `f * h * h` | 31439900 |
| `f * h * w` | 372200 |
| `e * f * h * r` | -500 |
| `a * e * f * r` | 231800 |
| `h * h * u` | 73300 |
| `c * h * h * u` | -100 |
| `f * h * u * w` | 100 |
| `h * u * r` | -100 |
| `h * h * r` | 52272600 |
| `f * h * r * w` | -12632268131187/25000000 |
| `h * h * r * r` | -4613131187/50000000 |
| `f * h * h * r` | 893631187/25000000 |
| `h * r * r` | 4152268131187/25000000 |
| `a * f * r * w` | -758400 |
| `a * h * r * r` | -513100 |
| `c * u * w` | -100 |
| `e * f * u * w` | -100 |
| `e * f * v * r` | 100 |
| `a * r * w` | 245300 |
| `a * e * r * r` | -245300 |
| `e * u * w` | -217/5 |
| `e * v * r` | 217/5 |
| `c * e * e * u` | 500 |
| `b * e * f * w` | -5754100 |
| `b * e * h * r` | -27920900 |
| `c * f * k` | -309010213/10 |
| `b * f * k` | -500 |
| `b * j` | 54306771/5 |
| `b * e * j` | -5553823653/78125000 |
| `b * e * u` | -3868000 |
| `b * w * j` | 1319448653/78125000 |
| `b * f * w` | 1872800 |
| `b * f * h` | 803200 |
| `b * r` | -6024100 |
| `c * f * q` | -1741453225793919/1000000000 |
| `b * f * q` | -7667000 |
| `c * f * w * w` | -3301969/5 |
| `c * h * r * w` | 31/5 |
| `c * r * w` | 1080469/5 |
| `b * f * w * w` | -7900 |
| `b * h * r * w` | -7900 |
| `b * r * w` | 7900 |
| `e * f * h` | -65494900 |
| `e * f * w` | -664159964424466223/9687500000 |
| `e * e * f * r` | -2447200 |
| `b * e * w` | 1866700 |
| `b * e * e * r` | 2284600 |
| `e * f * f * h` | 16336200 |
| `h * h` | -3118600 |
| `c * h * h` | 11475000 |
| `b * c * h * h` | -483273/15625 |
| `b * c * e * e` | -4189500 |
| `c * h * v` | 1378100 |
| `b * c * e` | 2938200 |
| `f * h * w * j` | 300 |
| `b * c * w` | -590200 |
| `f * f * w * k` | 300 |
| `f * r * k` | -300 |
| `f * w * j` | -300 |
| `h * r * j` | -300 |
| `r * j` | 300 |
| `h * j` | 63183/125 |
| `b * b * w` | -643200 |
| `f * h * r` | 9301451368813/25000000 |
| `b * w * w` | 7500 |
| `b * c * w * w` | -7500 |
| `b * e * r * w` | -7500 |
| `e * h` | 556449775637/15625 |
| `e * q` | 1330987798400901/1000000000 |
| `c * e * q` | -1826895098400901/1000000000 |
| `e * f * p` | -9408474525793919/1000000000 |
| `e * e * p` | -1826887798400901/1000000000 |
| `c * f * v * w` | 100 |
| `c * f * h * v` | -4260400 |
| `w * k` | -100 |
| `h * w * j` | -300 |
| `e * w * j` | 100 |
| `c * w * k` | 1554252583/24218750 |
| `c * e * w * j` | -200 |
| `e * r * k` | 100 |
| `e * e * r * j` | -100 |
| `c * e * k` | -100 |
| `c * e * e * j` | 100 |
| `f * w * w` | 674720 |
| `r * w * k` | 100 |
| `h * r * w` | 164400 |
| `w * w * j` | -100 |
| `c * r * w * k` | -100 |
| `c * w * w * j` | 100 |
| `e * r * r * k` | -100 |
| `e * h * r * r` | 100 |
| `e * r * w * j` | 100 |
| `c * e * r * k` | 100 |
| `e * r * w` | 487000 |
| `w * w` | -187700 |
| `c * e * r * w` | -667800 |
| `c * w * w` | 214580 |
| `e * e * r * r` | -215000 |
| `c * e * e * r` | 667800 |
| `c * e * w` | 244075976997417/24218750 |
| `f * q * j` | -213/10 |
| `e * h * u` | -7172565203251931/1250000000 |
| `e * f * f * k` | -300 |
| `e * e * f * f` | 12551300 |
| `e * f * j` | 1771/5 |
| `f * f * h * w` | -8951368813/25000000 |
| `f * f * h * h` | 2825868813/50000000 |
| `e * f * r * k` | 300 |
| `f * f * w` | -9739300 |
| `e * f * f` | -7833200 |
| `e * e * f` | -1974696213693567/312500000 |
| `f * r` | -669800 |
| `f * p * k` | 213/10 |
| `f * f * k` | -2675500 |
| `h * k` | 748300 |
| `h * v` | -1078400 |
| `e * v` | 4109283/5 |
| `e * e * u` | -4109283/5 |
| `a * h * j` | -10290203/156250 |
| `e * e * j` | -1530800 |
| `e * p * k` | -73/10 |
| `a * e * p` | -1440596883790259/50000000 |
| `e * q * j` | 73/10 |
| `a * q * j` | -40047286 |
| `a * q` | 1440596883790259/50000000 |
| `f * f * h` | -5450000 |
| `e * f * v` | -2687900 |
| `c * c` | 941600 |
| `e * e` | 49109500 |
| `f * p` | 3043300 |
| `r * r` | -8159923131187/50000000 |
| `a * e * f` | -10802585036306433/312500000 |
| `f * f` | 14018200 |
| `b * b * h * h` | -214602/15625 |
| `a * b * b * h` | 214602/15625 |
| `b * e * e` | 549360814614791/1000000000 |
| `f * f * w * w` | -14884923131187/50000000 |
| `f * r * w` | 14884923131187/25000000 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b` | -6480253797751089510743/31250000000000 | 1007946729/25000000000 | 0 |
| `a` | -258524294071363051623461/1250000000000000000000 | 18567/125000 | 0 |
| `b` | 7119292986077341119963/312500000000000000000 | 54287/200000 | 386485058335180617379431381/62500000000000000000000000 |
| `1` | -1840197424198733775380571909729771136173/96875000000000000000000000000000 | 1 | -1840197424198733775380571909729771136173/96875000000000000000000000000000 |
| `a * a * b * b` | 9122000 | 1015956608501799441/625000000000000000000 | 4633778091376707250401/312500000000000000 |
| `a * a * b` | -1851492933953/625000000 | 18714546917343/3125000000000000 | 0 |
| `a * a` | -11679079635480880127111/2500000000000000 | 344733489/15625000000 | 0 |
| `a * b * b` | 41925110791/78125000 | 54718404077223/5000000000000000 | 2294075153244280394613393/390625000000000000000000 |
| `b * b` | -55771515755634009663/39062500000000 | 2947078369/40000000000 | 0 |
| `a * c` | 1665714357146409711/1250000000000000 | 1007946729/25000000000 | 1678951337734061442296285319/31250000000000000000000000 |
| `c` | -295430112589523209767997/4843750000000000000000 | 54287/200000 | 0 |
| `a * b * c * e` | 2700 | 1015956608501799441/625000000000000000000 | 27430828429548584907/6250000000000000000 |
| `a * b * c` | -781510169323/625000000 | 54718404077223/5000000000000000 | 0 |
| `a * b * e` | -143902413991/1000000000 | 18714546917343/3125000000000000 | 0 |
| `a * c * e` | -1164923975809/1000000000 | 18714546917343/3125000000000000 | 0 |
| `a * e` | 174248102505466623/5000000000000000 | 344733489/15625000000 | 60069156328339150519837647/78125000000000000000000000 |
| `b * c * e` | 545402/625 | 54718404077223/5000000000000000 | 14921763510262789323/1562500000000000000 |
| `b * c` | -30182788209415933/156250000000000 | 2947078369/40000000000 | 0 |
| `b * e` | -27226920196610859614357/625000000000000 | 1007946729/25000000000 | 0 |
| `c * e` | 11958176638389845969/31000000000000000 | 1007946729/25000000000 | 12053205027469261071267385401/775000000000000000000000000 |
| `e` | 1401207082721633083475769/155000000000000000000000 | 18567/125000 | 26016211904892561460894603023/19375000000000000000000000000 |
| `a * a * b * c` | -95191/250 | 1015956608501799441/625000000000000000000 | 0 |
| `a * a * c` | 940167635697/500000000 | 18714546917343/3125000000000000 | 17594811328418947995193071/1562500000000000000000000 |
| `a * b * b * k` | -1000 | 7199683453268770671/2500000000000000000000 | 0 |
| `a * b * k` | 1640011/2500 | 132622606761633/12500000000000000 | 217502533937752497963/31250000000000000000 |
| `a * k` | 626048094013/5000000000 | 2442990159/62500000000 | 1529429332734465818067/312500000000000000000 |
| `b * b * k` | -646927/1000 | 387767730557913/20000000000000000 | 0 |
| `b * k` | -10219352113673/25000000000 | 7142920599/100000000000 | 0 |
| `k` | -464324223439056048647/48437500000000000000 | 131577/500000 | 0 |
| `a * a * b * j` | -4400 | 4841397143875882071/3125000000000000000000 | 0 |
| `a * a * j` | -974604559/1250 | 89181519403833/15625000000000000 | 0 |
| `a * b * j` | -167903508919/5000 | 260752794952113/25000000000000000 | 0 |
| `a * j` | 28655132796267/25000000000 | 4803227199/125000000000 | 137637113237986580066133/3125000000000000000000 |
| `b * j` | -27816813450034859/39062500000000 | 14043884039/200000000000 | 0 |
| `j` | -11594177622511498884383/39062500000000000000 | 258697/1000000 | 0 |
| `a * b * c * k` | -2400 | 7199683453268770671/2500000000000000000000 | 0 |
| `a * c * k` | 2353653/1250 | 132622606761633/12500000000000000 | 312147596272337795349/15625000000000000000 |
| `b * c * k` | -2048611/5000 | 387767730557913/20000000000000000 | 0 |
| `c * k` | -7534225731424447/48437500000000 | 7142920599/100000000000 | 0 |
| `a * a * c * j` | 4000 | 4841397143875882071/3125000000000000000000 | 4841397143875882071/781250000000000000 |
| `a * c * j` | 3986141/1000 | 260752794952113/25000000000000000 | 1039397406823210665933/25000000000000000000 |
| `c * j` | 2273570890909/2500000000 | 14043884039/200000000000 | 31929765946371915301451/500000000000000000000 |
| `a * c * c * e` | -2600 | 1015956608501799441/625000000000000000000 | 0 |
| `a * c * c` | 476217/625 | 54718404077223/5000000000000000 | 26057834234442905391/3125000000000000000 |
| `c * c * e` | -525629/625 | 54718404077223/5000000000000000 | 0 |
| `c * c` | 56504737971/200000000 | 2947078369/40000000000 | 166523891020347049299/8000000000000000000 |
| `a * a * c * c` | 8999000 | 1015956608501799441/625000000000000000000 | 9142593519907693169559/625000000000000000 |
| `a * b * v` | 3521913/10000 | 178649486194689/12500000000000000 | 629187947872395720057/125000000000000000000 |
| `a * v` | -1273137077309/5000000000 | 3290833647/62500000000 | 0 |
| `b * v` | 19163091297/62500000 | 9621882167/100000000000 | 184385006415197200599/6250000000000000000 |
| `v` | -2759999972746797/39062500000000 | 177241/500000 | 0 |
| `a * b * e * u` | 200 | 8414490728616511689/3125000000000000000000 | 8414490728616511689/15625000000000000000 |
| `a * b * u` | -2903909/5000 | 453196032133167/25000000000000000 | 0 |
| `a * e * u` | -132284498069/1250000000 | 155000105524647/15625000000000000 | 0 |
| `a * u` | 206177211606892183/625000000000000 | 8348150241/125000000000 | 1721198338764784974772466103/78125000000000000000000000 |
| `b * e * u` | -342021/5000 | 453196032133167/25000000000000000 | 0 |
| `b * u` | -129725889897/1250000000 | 24408683801/200000000000 | 0 |
| `e * u` | 10954406475482817/625000000000000 | 8348150241/125000000000 | 91449031058313839329908897/78125000000000000000000000 |
| `u` | -106799356470475753/2500000000000000 | 449623/1000000 | 0 |
| `a * a * b * u` | -3537100 | 8414490728616511689/3125000000000000000000 | 0 |
| `a * a * u` | 46774373069/1250000000 | 155000105524647/15625000000000000 | 7250032761544206752531643/19531250000000000000000000 |
| `a * c * v` | -57817582321/5000 | 178649486194689/12500000000000000 | 0 |
| `c * v` | -1844841988/9765625 | 9621882167/100000000000 | 0 |
| `a * c * e * u` | 41800 | 8414490728616511689/3125000000000000000000 | 1758628562280850943001/15625000000000000000 |
| `a * c * u` | 385523/625 | 453196032133167/25000000000000000 | 174717493896074941341/15625000000000000000 |
| `c * e * u` | 8141/200 | 453196032133167/25000000000000000 | 3689468897596112547/5000000000000000000 |
| `c * u` | 248433014147/2500000000 | 24408683801/200000000000 | 6063922888043482732747/500000000000000000000 |
| `a * a * c * u` | -2483900 | 8414490728616511689/3125000000000000000000 | 0 |
| `a * b * h * u` | 400 | 2783983225394044881/500000000000000000000 | 2783983225394044881/1250000000000000000 |
| `a * b * h` | -2570439960273/31250000000 | 6191816756247/500000000000000 | 0 |
| `a * h * u` | -3495211410373069/1250000000 | 51282686930463/2500000000000000 | 0 |
| `a * h` | 84664159680284909/1953125000000000 | 114057081/2500000000 | 9656546918451189968890629/4882812500000000000000000 |
| `b * h * u` | 223053/625 | 149942544589543/4000000000000000 | 33445134398331334779/2500000000000000000 |
| `b * h` | -4159866286082223643/7812500000000000 | 333485041/4000000000 | 0 |
| `h * u` | -37023081851/2500000000 | 2762034089/20000000000 | 0 |
| `h` | 69354844223712047107912833/3125000000000000000000000 | 6143/20000 | 426046808066263105383908533119/62500000000000000000000000000 |
| `a * c * h * u` | 531900 | 2783983225394044881/500000000000000000000 | 14808006775870924722039/5000000000000000000 |
| `a * c * h` | 891406560293/3906250000 | 6191816756247/500000000000000 | 5519426076650699089900371/1953125000000000000000000 |
| `c * h * u` | -98458727/500 | 149942544589543/4000000000000000 | 0 |
| `c * h` | 81455992777040919/488281250000000 | 333485041/4000000000 | 27164355090947194731392679/1953125000000000000000000 |
| `a * b * h * r` | 200 | 817759430814297537/250000000000000000000 | 817759430814297537/1250000000000000000 |
| `a * b * r` | 3507099/10000 | 133120532445759/12500000000000000 | 466866886219988943141/125000000000000000000 |
| `a * h * r` | -17847/125 | 15063632744751/1250000000000000 | 0 |
| `a * r` | -24272377066524919/156250000000000 | 2452162257/62500000000 | 0 |
| `b * h * r` | -1670503/5000 | 44043702849911/2000000000000000 | 0 |
| `b * r` | 77076262247/500000000 | 7169738377/100000000000 | 552616635388032153119/50000000000000000000 |
| `h * r` | -107184626032191607693/3125000000000000000 | 811312153/10000000000 | 0 |
| `r` | 187748477349438805800947763/3875000000000000000000000 | 132071/500000 | 24796129152017732520936972007173/1937500000000000000000000000000 |
| `a * a * b * r` | -300 | 2471648925920407353/1562500000000000000000 | 0 |
| `a * a * r` | -453286534341/5000 | 45529296625719/7812500000000000 | 0 |
| `a * c * h * r` | 138032500 | 817759430814297537/250000000000000000000 | 45150951453549809910381/100000000000000000 |
| `a * c * r` | 585899439963/10000 | 133120532445759/12500000000000000 | 77995245407546568774466917/125000000000000000000 |
| `c * h * r` | 67100957/1250000 | 44043702849911/2000000000000000 | 2955374611052655464827/2500000000000000000000 |
| `c * r` | -20644623450239/100000000000 | 7169738377/100000000000 | 0 |
| `a * a * c * r` | -13346600 | 2471648925920407353/1562500000000000000000 | 0 |
| `a * b * p * w` | 400 | 5236562384818821783/1562500000000000000000 | 5236562384818821783/3906250000000000000 |
| `a * b * p` | -111171/250 | 39649600478673/3125000000000000 | 0 |
| `a * b * w` | -209341499447/2000 | 133120532445759/12500000000000000 | 0 |
| `a * p * w` | -591101/2500 | 96460706703609/7812500000000000 | 0 |
| `a * p` | 8474085494612853/6250000000000 | 730370079/15625000000 | 6189218492153143520025387/97656250000000000000000 |
| `a * w` | -28237827022931169/156250000000000 | 2452162257/62500000000 | 0 |
| `b * p * w` | 80866/625 | 282035998536049/12500000000000000 | 11403561528808069217/3906250000000000000 |
| `b * p` | -4776512022/9765625 | 2135487719/25000000000 | 0 |
| `b * w` | 499412174051593/156250000000000 | 7169738377/100000000000 | 3580654630238709910084561/15625000000000000000000000 |
| `p * w` | 12348763267/312500000 | 5195276927/62500000000 | 64155244878030240509/19531250000000000000 |
| `p` | -5601909257697271/39062500000000 | 39337/125000 | 0 |
| `w` | 1075655263924489439328836947/24218750000000000000000000 | 132071/500000 | 142062866361771244741598824427237/12109375000000000000000000000000 |
| `a * a * b * p` | 3300 | 736174132087521591/390625000000000000000 | 24293746358888212503/3906250000000000000 |
| `a * a * p` | -175921005237/10000 | 13560781256793/1953125000000000 | 0 |
| `a * b * q * r` | -700 | 19773324527895704583/12500000000000000000000 | 0 |
| `a * b * q` | -4568669/1000 | 149717383285473/25000000000000000 | 0 |
| `a * q * r` | 4137707/10000 | 364236825168009/62500000000000000 | 1507105261155447015363/625000000000000000000 |
| `a * q` | 5426842302660333/10000000000000 | 2757886479/125000000000 | 14966615010172158110337507/1250000000000000000000000 |
| `b * q * r` | -283031/1250 | 1064971429304449/100000000000000000 | 0 |
| `b * q` | 1047956220093/1000000000 | 8063628119/200000000000 | 8450329243822867595067/200000000000000000000 |
| `q * r` | 22304907131/1250000000 | 19617430127/500000000000 | 437564957131616535637/625000000000000000000 |
| `q` | 331954653098660991/5000000000000000 | 148537/1000000 | 49307548307315807620167/5000000000000000000000 |
| `a * c * p * w` | -400 | 5236562384818821783/1562500000000000000000 | 0 |
| `a * c * p` | 531587/1250 | 39649600478673/3125000000000000 | 21077212169656344051/3906250000000000000 |
| `a * c * w` | -202257/625 | 133120532445759/12500000000000000 | 0 |
| `c * p * w` | -80866/625 | 282035998536049/12500000000000000 | 0 |
| `c * p` | 10247784283/19531250 | 2135487719/25000000000 | 21884017483307720477/488281250000000000 |
| `c * w` | 233531863285097/193750000000000 | 7169738377/100000000000 | 1674362362447477253067569/19375000000000000000000000 |
| `a * a * c * p` | -3700 | 736174132087521591/390625000000000000000 | 0 |
| `a * c * q * r` | 700 | 19773324527895704583/12500000000000000000000 | 138413271695269932081/125000000000000000000 |
| `a * c * q` | -317603059290259/50000000 | 149717383285473/25000000000000000 | 0 |
| `c * q * r` | 283031/1250 | 1064971429304449/100000000000000000 | 301419928607467504919/125000000000000000000 |
| `c * q` | -948516117321/2500000000 | 8063628119/200000000000 | 0 |
| `a * b * p * k` | -3800 | 5216975482182357321/1562500000000000000000 | 0 |
| `a * p * k` | 12618049/5000 | 96099903884583/7812500000000000 | 1212593296110958638567/39062500000000000000 |
| `b * p * k` | -768227/625 | 280981067602863/12500000000000000 | 0 |
| `p * k` | -206356614783/625000000 | 5175844449/62500000000 | 0 |
| `a * b * q * j` | 1400 | 38731437903802008681/25000000000000000000000 | 271120065326614060767/125000000000000000000 |
| `a * q * j` | -200239110577/5000 | 713456958457863/125000000000000000 | 0 |
| `b * q * j` | 158031/625 | 2086036403500943/200000000000000000 | 329658418881657523233/125000000000000000000 |
| `q * j` | 709971855159/625000000 | 38426076289/1000000000000 | 27281432669382592224951/625000000000000000000 |
| `a * c * p * k` | 4200 | 5216975482182357321/1562500000000000000000 | 109556485125829503741/7812500000000000000 |
| `c * p * k` | 849093/625 | 280981067602863/12500000000000000 | 238579057634117753259/7812500000000000000 |
| `a * c * q * j` | -1000 | 38731437903802008681/25000000000000000000000 | 0 |
| `c * q * j` | -15433/125 | 2086036403500943/200000000000000000 | 0 |
| `a * b * r * k` | 1000 | 17515600297615631943/6250000000000000000000 | 17515600297615631943/6250000000000000000 |
| `a * r * k` | -591101/1000 | 322648153289289/31250000000000000 | 0 |
| `b * r * k` | 415609/1000 | 943372666430529/50000000000000000 | 392074170522525727161/50000000000000000000 |
| `r * k` | 1804522352817/155000000000 | 17377505967/250000000000 | 31358097953662296759039/38750000000000000000000 |
| `a * b * w * j` | -1000 | 34437882382120516023/12500000000000000000000 | 0 |
| `a * w * j` | 2470309/5000 | 634367019399129/62500000000000000 | 1567082557324842960861/312500000000000000000 |
| `b * w * j` | -23951176347/78125000 | 1854789808914769/100000000000000000 | 0 |
| `w * j` | -2825064317291379/39062500000000 | 34166371487/500000000000 | 0 |
| `a * c * r * k` | -1000 | 17515600297615631943/6250000000000000000000 | 0 |
| `c * r * k` | -1823517/5000 | 943372666430529/50000000000000000 | 0 |
| `a * c * w * j` | 1000 | 34437882382120516023/12500000000000000000000 | 34437882382120516023/12500000000000000000 |
| `c * w * j` | 1014857/2500 | 1854789808914769/100000000000000000 | 1882346421105815723033/250000000000000000000 |
| `a * b * c * q` | -9400 | 8127707586418472751/5000000000000000000000 | 0 |
| `b * c * q` | -3190499/5000 | 437750179696153/40000000000000000 | 0 |
| `a * b * b * q` | 6000 | 8127707586418472751/5000000000000000000000 | 24383122759255418253/2500000000000000000 |
| `b * b * q` | -185919/1250 | 437750179696153/40000000000000000 | 0 |
| `a * c * c * q` | 3000 | 8127707586418472751/5000000000000000000000 | 24383122759255418253/5000000000000000000 |
| `c * c * q` | 4484031/5000 | 437750179696153/40000000000000000 | 1962885376013120632743/200000000000000000000 |
| `a * b * b * w` | -5943600 | 7226714344882918833/2500000000000000000000 | 0 |
| `b * b * w` | -6414459397/2500 | 389223587272199/20000000000000000 | 0 |
| `a * b * e * r` | -200 | 2471648925920407353/1562500000000000000000 | 0 |
| `a * e * r` | -21154734111474817/312500000 | 45529296625719/7812500000000000 | 0 |
| `b * e * r` | -1871/250 | 133120532445759/12500000000000000 | 0 |
| `e * r` | -206310422931485939/2421875000000000 | 2452162257/62500000000 | 0 |
| `a * b * c * w` | -7979300 | 7226714344882918833/2500000000000000000000 | 0 |
| `b * c * w` | -31822695397/10000 | 389223587272199/20000000000000000 | 0 |
| `a * c * e * r` | -176457700 | 2471648925920407353/1562500000000000000000 | 0 |
| `c * e * r` | 6281/2500 | 133120532445759/12500000000000000 | 836130064291812279/31250000000000000000 |
| `a * b * e * j` | -3000 | 4841397143875882071/3125000000000000000000 | 0 |
| `a * e * j` | 1370303/1000 | 89181519403833/15625000000000000 | 122205703583630571399/15625000000000000000 |
| `b * e * j` | -81365698653/78125000 | 260752794952113/25000000000000000 | 0 |
| `e * j` | -7586377668613867/19531250000000 | 4803227199/125000000000 | 0 |
| `a * c * e * j` | 3000 | 4841397143875882071/3125000000000000000000 | 14524191431627646213/3125000000000000000 |
| `c * e * j` | 2219783/2500 | 260752794952113/25000000000000000 | 578814621437186251479/62500000000000000000 |
| `a * b * e * f` | 9673800 | 2471648925920407353/1562500000000000000000 | 119551186897844183257257/7812500000000000000 |
| `a * b * f` | -143443/5000 | 133120532445759/12500000000000000 | 0 |
| `a * e * f` | 87527474817/312500000 | 45529296625719/7812500000000000 | 3985064363843342847018423/2441406250000000000000000 |
| `a * f` | -13877501560465949/156250000000000 | 2452162257/62500000000 | 0 |
| `b * e * f` | -551761/5000 | 133120532445759/12500000000000000 | 0 |
| `b * f` | -116227403939859/250000000 | 7169738377/100000000000 | 0 |
| `e * f` | -15743695924263871587/155000000000000000 | 2452162257/62500000000 | 0 |
| `f` | -5922710797801110436443196189/96875000000000000000000000 | 132071/500000 | 0 |
| `a * c * e * f` | 45388100 | 2471648925920407353/1562500000000000000000 | 1121834486145680409786993/15625000000000000000 |
| `a * c * f` | -58853/5000 | 133120532445759/12500000000000000 | 0 |
| `c * e * f` | 252561793919/1000000000 | 133120532445759/12500000000000000 | 33621160481953337603539521/12500000000000000000000000 |
| `c * f` | -19456504947384283/1000000000000000 | 7169738377/100000000000 | 0 |
| `a * c * c * k` | 3000 | 7199683453268770671/2500000000000000000000 | 21599050359806312013/2500000000000000000 |
| `c * c * k` | 121299/125 | 387767730557913/20000000000000000 | 47035837948944288987/2500000000000000000 |
| `a * c * c * w` | -300 | 7226714344882918833/2500000000000000000000 | 0 |
| `c * c * w` | -1078213/10000 | 389223587272199/20000000000000000 | 0 |
| `f * q` | 42503470150800753/200000000000000 | 19617430127/500000000000 | 833808855838363925076485631/100000000000000000000000000 |
| `e * p` | -3571785443630133/125000000000000 | 730370079/15625000000 | 0 |
| `a * b * f * v` | -3512500 | 23594416291218770919/6250000000000000000000 | 0 |
| `a * f * v` | -321739/2000 | 434623690592937/31250000000000000 | 0 |
| `b * f * v` | 460161/5000 | 1270771599677857/50000000000000000 | 584759530079362354977/250000000000000000000 |
| `f * v` | 87720447577/1000000000 | 23408396111/250000000000 | 2053394983916626173047/250000000000000000000 |
| `a * c * f * v` | -300 | 23594416291218770919/6250000000000000000000 | 0 |
| `c * f * v` | -438301423/200 | 1270771599677857/50000000000000000 | 0 |
| `a * b * u * w` | -100 | 59854053159859498857/12500000000000000000000 | 0 |
| `a * u * w` | 1025101/10000 | 1102548550479111/62500000000000000 | 1130223621644687165211/625000000000000000000 |
| `b * u * w` | -40433/1250 | 3223679278281871/100000000000000000 | 0 |
| `u * w` | -4191765621/312500000 | 59382159233/500000000000 | 0 |
| `a * b * v * r` | 100 | 23594416291218770919/6250000000000000000000 | 23594416291218770919/62500000000000000000 |
| `a * v * r` | -1025101/10000 | 434623690592937/31250000000000000 | 0 |
| `b * v * r` | 40433/1250 | 1270771599677857/50000000000000000 | 51381108089774792081/62500000000000000000 |
| `v * r` | -103437739821/1250000000 | 23408396111/250000000000 | 0 |
| `a * c * u * w` | 100 | 59854053159859498857/12500000000000000000000 | 59854053159859498857/125000000000000000000 |
| `c * u * w` | -22067/625 | 3223679278281871/100000000000000000 | 0 |
| `a * c * v * r` | -100 | 23594416291218770919/6250000000000000000000 | 0 |
| `c * v * r` | -40433/1250 | 1270771599677857/50000000000000000 | 0 |
| `a * b * f * w` | 200 | 17581361840643836889/6250000000000000000000 | 17581361840643836889/31250000000000000000 |
| `a * f * w` | -60463818567/312500000 | 323859521444247/31250000000000000 | 0 |
| `b * f * w` | -463959/2500 | 946914517188767/50000000000000000 | 0 |
| `f * w` | -16603294170908243919757/193750000000000000000 | 17442749041/250000000000 | 0 |
| `a * c * f * w` | -51239500 | 17581361840643836889/6250000000000000000000 | 0 |
| `c * f * w` | 32719961/5000000 | 946914517188767/50000000000000000 | 30983006072750285878087/250000000000000000000000 |
| `a * c * f * h` | -300 | 817759430814297537/250000000000000000000 | 0 |
| `a * f * h` | 48139/1000 | 15063632744751/1250000000000000 | 725148216699568389/1250000000000000000 |
| `c * f * h` | -4649670309/25000000 | 44043702849911/2000000000000000 | 0 |
| `f * h` | 40101766016565537591/1250000000000000000 | 811312153/10000000000 | 32535050126002019968556643423/12500000000000000000000000000 |
| `a * b * f * k` | -200 | 17515600297615631943/6250000000000000000000 | 0 |
| `a * f * k` | 591101/5000 | 322648153289289/31250000000000000 | 190717646057452017189/156250000000000000000 |
| `b * f * k` | -556031/1000 | 943372666430529/50000000000000000 | 0 |
| `f * k` | -11011622652533989996731/96875000000000 | 17377505967/250000000000 | 0 |
| `a * c * f * k` | 200 | 17515600297615631943/6250000000000000000000 | 17515600297615631943/31250000000000000000 |
| `c * f * k` | -154504890857/5000 | 943372666430529/50000000000000000 | 0 |
| `b * e * v` | 4664817/10000 | 178649486194689/12500000000000000 | 833367160242250556913/125000000000000000000 |
| `e * v` | -74786827421/250000000 | 3290833647/62500000000 | 0 |
| `b * e * h * u` | 300 | 2783983225394044881/500000000000000000000 | 8351949676182134643/5000000000000000000 |
| `b * e * h` | -389113401/1250000 | 6191816756247/500000000000000 | 0 |
| `e * h * u` | -7172785954501931/1250000000 | 51282686930463/2500000000000000 | 0 |
| `e * h` | 47884771201134377/156250000000000 | 114057081/2500000000 | 5461597227554250929373537/390625000000000000000000 |
| `b * e * e * u` | 5978500 | 8414490728616511689/3125000000000000000000 | 100612065642067630265373/6250000000000000000 |
| `b * e * e` | 7457914791/1000000000 | 18714546917343/3125000000000000 | 139571496261715814120313/3125000000000000000000000 |
| `e * e * u` | 672413/2000 | 155000105524647/15625000000000000 | 104224085956144463211/31250000000000000000 |
| `e * e` | 83391164256899827/1250000000000000 | 344733489/15625000000 | 28747727006053169685206403/19531250000000000000000000 |
| `b * c * e * h` | -100 | 336135156246380889/100000000000000000000 | 0 |
| `b * c * h` | -220043656491/1953125000 | 18103902420767/800000000000000 | 0 |
| `c * e * h` | 8572443/15625 | 6191816756247/500000000000000 | 53078996209372301421/7812500000000000000 |
| `a * b * c * h` | 3490421/31250 | 336135156246380889/100000000000000000000 | 1173253208200649028964269/3125000000000000000000000 |
| `b * c * h * w` | -100 | 2391000496613118457/400000000000000000000 | 0 |
| `b * h * w` | 138653/10000 | 44043702849911/2000000000000000 | 6106791531248709883/20000000000000000000 |
| `c * h * w` | 1307362709/12500000 | 44043702849911/2000000000000000 | 57581094672250665368899/25000000000000000000000 |
| `h * w` | -131163801711378843287/1562500000000000000 | 811312153/10000000000 | 0 |
| `b * h * h` | -1193895463740867077/31250000000 | 2048598606863/80000000000000 | 0 |
| `h * h` | 143665027110599858117/12500000000000000000 | 37736449/400000000 | 5421407968642768905239406533/5000000000000000000000000000 |
| `b * h * v` | 88941/1250 | 59107222151881/2000000000000000 | 5257055445410448021/2500000000000000000 |
| `h * v` | 5184939761/312500000 | 1088791463/10000000000 | 5645318147946060343/3125000000000000000 |
| `b * h * h * u` | -532200 | 921097051413562649/80000000000000000000 | 0 |
| `h * h * u` | 688027/10000 | 16967175408727/400000000000000 | 11673874794940211629/4000000000000000000 |
| `b * b * e * h` | 1639/10 | 336135156246380889/100000000000000000000 | 550925521087818277071/1000000000000000000000 |
| `b * b * e` | 302711827/5000000 | 54718404077223/5000000000000000 | 16563908068740423416421/25000000000000000000000 |
| `b * b * h` | 150103279357/3906250000 | 18103902420767/800000000000000 | 2717455122516257559206819/3125000000000000000000000 |
| `a * b * b * e` | -1639/10 | 1015956608501799441/625000000000000000000 | 0 |
| `a * b * c * v` | 474700 | 9698344657051081743/2500000000000000000000 | 46038042087021485034021/25000000000000000000 |
| `b * f * h * v` | -1672300 | 7806349936821075551/1000000000000000000000 | 0 |
| `b * f * h` | 3896001/5000 | 44043702849911/2000000000000000 | 171594310346956105911/10000000000000000000 |
| `f * h * v` | 101567/2500 | 143797777309873/5000000000000000 | 14605108848031870991/12500000000000000000 |
| `b * h * j` | -500 | 86271579651577/4000000000000000 | 0 |
| `h * j` | 3540766109779/78125000000 | 1589175671/20000000000 | 5626899358362101986709/1562500000000000000000 |
| `b * h * k` | -118484687/625000 | 43878961239657/2000000000000000 | 0 |
| `h * k` | 364765123279/78125000000 | 808277511/10000000000 | 294831445943558278569/781250000000000000000 |
| `b * b * q * k` | -3000 | 57597855393880723281/20000000000000000000000 | 0 |
| `b * q * k` | -200227914851/5000 | 1060987997013663/100000000000000000 | 0 |
| `q * k` | -1720255144147349/312500000 | 19544052849/500000000000 | 0 |
| `a * a * p * j` | 400 | 3508133428788578721/1953125000000000000000 | 3508133428788578721/4882812500000000000 |
| `a * p * j` | 161732/625 | 188944548327063/15625000000000000 | 7639594922508138279/2441406250000000000 |
| `p * j` | 1634827489/39062500 | 10176363889/125000000000 | 16636599423804144721/4882812500000000000 |
| `b * c * q * w` | 500 | 57814103982650622863/20000000000000000000000 | 57814103982650622863/40000000000000000000 |
| `b * q * w` | 2543113/10000 | 1064971429304449/100000000000000000 | 2708342686492725209737/1000000000000000000000 |
| `c * q * w` | -76981/1000 | 1064971429304449/100000000000000000 | 0 |
| `q * w` | -105635068609/10000000000 | 19617430127/500000000000 | 0 |
| `b * c * q * k` | 3400 | 57597855393880723281/20000000000000000000000 | 979163541695972295777/100000000000000000000 |
| `c * q * k` | 251678/625 | 1060987997013663/100000000000000000 | 133513668556202338257/31250000000000000000 |
| `b * b * q * w` | -400 | 57814103982650622863/20000000000000000000000 | 0 |
| `b * f * q * k` | 200 | 140125745753591486073/50000000000000000000000 | 140125745753591486073/250000000000000000000 |
| `b * f * q` | -4791800201/625 | 1064971429304449/100000000000000000 | 0 |
| `f * q * k` | -591101/5000 | 2581202603820279/250000000000000000 | 0 |
| `b * c * e * v` | -474700 | 9698344657051081743/2500000000000000000000 | 0 |
| `c * e * v` | -649603/1250 | 178649486194689/12500000000000000 | 0 |
| `b * e * f * v` | 7094800 | 23594416291218770919/6250000000000000000000 | 418494161757347339790303/15625000000000000000 |
| `e * f * v` | 9031/500 | 434623690592937/31250000000000000 | 3925086549744814047/15625000000000000000 |
| `b * f * w * k` | -300 | 124592171428146395559/25000000000000000000000 | 0 |
| `b * w * k` | -121299/1250 | 943372666430529/50000000000000000 | 0 |
| `f * w * k` | -1348214104/12109375 | 2295064590567657/125000000000000000 | 0 |
| `w * k` | -9752614655268343/96875000000000 | 17377505967/250000000000 | 0 |
| `b * h * r * k` | -300 | 5795138289882739647/1000000000000000000000 | 0 |
| `h * r * k` | -51549/1250 | 106750019155281/5000000000000000 | 0 |
| `b * f * h * k` | 300 | 5795138289882739647/1000000000000000000000 | 17385414869648218941/10000000000000000000 |
| `f * h * k` | -2891573451/1250 | 106750019155281/5000000000000000 | 0 |
| `a * f * w * j` | -300 | 83781486619062366159/31250000000000000000000 | 0 |
| `a * f * j` | -8064/625 | 634367019399129/62500000000000000 | 0 |
| `f * w * j` | -945921/5000 | 4512386848659577/250000000000000000 | 0 |
| `f * j` | -67345863859/2500000000 | 34166371487/500000000000 | 0 |
| `a * h * r * j` | -300 | 3896916600168849447/1250000000000000000000 | 0 |
| `a * h * j` | -118484687/625000 | 29506224683457/2500000000000000 | 0 |
| `a * r * j` | 18429/200 | 634367019399129/62500000000000000 | 11690749800506548341/12500000000000000000 |
| `h * r * j` | -300 | 209884020044641/10000000000000000 | 0 |
| `r * j` | 541735479794937/4882812500000 | 34166371487/500000000000 | 18509135650362000123761319/2441406250000000000000000 |
| `a * f * h * j` | 300 | 3896916600168849447/1250000000000000000000 | 11690749800506548341/12500000000000000000 |
| `f * h * j` | 1103787/5000 | 209884020044641/10000000000000000 | 231667252833014155467/50000000000000000000 |
| `b * e * k` | -3957/10 | 132622606761633/12500000000000000 | 0 |
| `e * k` | -80401424973/5000000000 | 2442990159/62500000000 | 0 |
| `c * e * f * v` | 2350600 | 23594416291218770919/6250000000000000000000 | 277305174670694214611007/31250000000000000000 |
| `c * e * h * u` | -400 | 2783983225394044881/500000000000000000000 | 0 |
| `c * e * f * h` | 75390300 | 817759430814297537/250000000000000000000 | 616511288169191356036911/2500000000000000000 |
| `e * f * h` | -924919/2500 | 15063632744751/1250000000000000 | 0 |
| `c * e * e` | 12825267/250000 | 18714546917343/3125000000000000 | 240019060998950905581/781250000000000000000 |
| `a * f * f * w` | -483100 | 42772450856663145537/15625000000000000000000 | 0 |
| `a * f * f` | 10419/1250 | 323859521444247/31250000000000000 | 3374292353927609493/39062500000000000000 |
| `f * f * w` | -6029277586583610789/390625000000 | 2303681308593911/125000000000000000 | 0 |
| `f * f` | 53945633835290521/6103515625000000 | 17442749041/250000000000 | 940960152846650887129140361/1525878906250000000000000000 |
| `a * f * f * h` | 513100 | 1989469040232009321/625000000000000000000 | 10207965645430439826051/6250000000000000000 |
| `f * f * h` | -16869580389211/390625000000 | 107150807358863/5000000000000000 | 0 |
| `a * f * r` | 531/125 | 323859521444247/31250000000000000 | 171969405886895157/3906250000000000000 |
| `f * r` | 718390636056701827/7812500000000000 | 17442749041/250000000000 | 12530707578141415814527197907/1953125000000000000000000000 |
| `c * e * h * r` | 33896000 | 817759430814297537/250000000000000000000 | 3464846708360178664269/31250000000000000 |
| `e * h * r` | 1009801/10000 | 15063632744751/1250000000000000 | 15211271409282304551/12500000000000000000 |
| `c * f * h * w` | 2129/50 | 5816895879090595681/1000000000000000000000 | 12384171326583878204849/50000000000000000000000 |
| `f * h * w` | 930155634004009/2500000000000 | 107150807358863/5000000000000000 | 99666927152924646870843681767/12500000000000000000000000000 |
| `c * h * h * r` | -3587357561/50 | 270560466607003273/40000000000000000000 | 0 |
| `c * h * h` | -863738875161087797/15625000000 | 2048598606863/80000000000000 | 0 |
| `h * h * r` | 156866523384161/12500000000000 | 4983890555879/200000000000000 | 781805584427892318554032519/2500000000000000000000000000 |
| `c * f * h * h` | -2157667439/50 | 270560466607003273/40000000000000000000 | 0 |
| `f * h * h` | -708597514884161/12500000000000 | 4983890555879/200000000000000 | 0 |
| `c * c * q * w` | -100 | 57814103982650622863/20000000000000000000000 | 0 |
| `c * f * q * k` | -200 | 140125745753591486073/50000000000000000000000 | 0 |
| `c * f * q` | -1741572904193919/1000000000 | 1064971429304449/100000000000000000 | 0 |
| `c * v * w` | -84567/1250 | 1270771599677857/50000000000000000 | 0 |
| `v * w` | -12322511271/250000000 | 23408396111/250000000000 | 0 |
| `c * e * u * w` | 100 | 59854053159859498857/12500000000000000000000 | 59854053159859498857/125000000000000000000 |
| `c * e * w` | -716002207/96875000 | 133120532445759/12500000000000000 | 0 |
| `e * u * w` | -28899/10000 | 1102548550479111/62500000000000000 | 0 |
| `e * w` | 5417880954700329/302734375000000 | 2452162257/62500000000 | 13285523190035273519282553/18920898437500000000000000 |
| `e * f * f * w` | -15770500 | 42772450856663145537/15625000000000000000000 | 0 |
| `e * f * f` | 477349/5000 | 323859521444247/31250000000000000 | 154594018701889861203/156250000000000000000 |
| `e * f * w` | -979834721943309973/9687500000 | 323859521444247/31250000000000000 | 0 |
| `c * e * f * w` | -29636900 | 17581361840643836889/6250000000000000000000 | 0 |
| `e * f * r` | -2554/25 | 323859521444247/31250000000000000 | 0 |
| `h * u * w` | -84567/1250 | 364784604168319/10000000000000000 | 0 |
| `e * h * u * r` | 100 | 6772955745593178873/1250000000000000000000 | 6772955745593178873/12500000000000000000 |
| `e * u * r` | 13857/200 | 1102548550479111/62500000000000000 | 15278015263989041127/12500000000000000000 |
| `h * u * r` | -84567/1250 | 364784604168319/10000000000000000 | 0 |
| `u * r` | -1171844919/25000000 | 59382159233/500000000000 | 0 |
| `r * w` | -941803546944691147/62500000000000000 | 17442749041/250000000000 | 0 |
| `e * r * r` | 371033/5000 | 323859521444247/31250000000000000 | 120162569820023297151/156250000000000000000 |
| `r * r` | 53985967479465037/20000000000000000 | 17442749041/250000000000 | 941663682479895961324779517/5000000000000000000000000000 |
| `a * r * r` | -235271/5000 | 323859521444247/31250000000000000 | 0 |
| `e * e * r` | -19880528118587683/312500000 | 45529296625719/7812500000000000 | 0 |
| `e * h * r * j` | 300 | 3896916600168849447/1250000000000000000000 | 11690749800506548341/12500000000000000000 |
| `e * h * j` | 618591/5000 | 29506224683457/2500000000000000 | 18252285033164349087/12500000000000000000 |
| `e * r * j` | -5184613847/78125000 | 634367019399129/62500000000000000 | 0 |
| `e * f * h * j` | -300 | 3896916600168849447/1250000000000000000000 | 0 |
| `e * f * j` | 29269/200 | 634367019399129/62500000000000000 | 18567288290793106701/12500000000000000000 |
| `e * f * h * r` | -500 | 1989469040232009321/625000000000000000000 | 0 |
| `f * h * r` | 1545405534911227/12500000000000 | 107150807358863/5000000000000000 | 165591450762593512885036654901/62500000000000000000000000000 |
| `a * e * f * r` | 231800 | 6013099734655334049/3906250000000000000000 | 6969182592465532162791/19531250000000000000 |
| `c * h * h * u` | -100 | 921097051413562649/80000000000000000000 | 0 |
| `f * h * u * w` | 100 | 48177467457114058649/5000000000000000000000 | 48177467457114058649/50000000000000000000 |
| `f * h * u` | 367929/5000 | 364784604168319/10000000000000000 | 134214834627045441351/50000000000000000000 |
| `f * u * w` | 184693/5000 | 7842661152061543/250000000000000000 | 1448484616157702561299/1250000000000000000000 |
| `f * u` | 67953910797/2500000000 | 59382159233/500000000000 | 4035249951452531938701/1250000000000000000000 |
| `f * h * r * w` | -12632268131187/25000000 | 14151514278692395273/2500000000000000000000 | 0 |
| `f * r * w` | -4425670118259/500000000000 | 2303681308593911/125000000000000000 | 0 |
| `h * r * w` | -390023901408971/3125000000000 | 107150807358863/5000000000000000 | 0 |
| `h * h * r * r` | -4613131187/50000000 | 658227409605495409/100000000000000000000 | 0 |
| `h * r * r` | 12922464881741/500000000000 | 107150807358863/5000000000000000 | 1384652545145102229843220483/2500000000000000000000000000 |
| `f * h * h * r` | 893631187/25000000 | 658227409605495409/100000000000000000000 | 588212541361694064067720483/2500000000000000000000000000 |
| `a * f * r * w` | -758400 | 42772450856663145537/15625000000000000000000 | 0 |
| `a * r * w` | -9436/625 | 323859521444247/31250000000000000 | 0 |
| `a * h * r * r` | -513100 | 1989469040232009321/625000000000000000000 | 0 |
| `e * f * u * w` | -100 | 145614689610326668881/31250000000000000000000 | 0 |
| `e * f * u` | -367929/5000 | 1102548550479111/62500000000000000 | 0 |
| `e * f * v * r` | 100 | 57401185440299782527/15625000000000000000000 | 57401185440299782527/156250000000000000000 |
| `e * v * r` | 94683/1250 | 434623690592937/31250000000000000 | 41151474896411053971/39062500000000000000 |
| `f * v * r` | 40433/1250 | 3091570282775881/125000000000000000 | 125001461243477196473/156250000000000000000 |
| `a * e * r * r` | -245300 | 6013099734655334049/3906250000000000000000 | 0 |
| `c * e * e * u` | 500 | 8414490728616511689/3125000000000000000000 | 8414490728616511689/6250000000000000000 |
| `b * e * f * w` | -5754100 | 17581361840643836889/6250000000000000000000 | 0 |
| `b * e * w` | -315687/5000 | 133120532445759/12500000000000000 | 0 |
| `b * e * h * r` | -27920900 | 817759430814297537/250000000000000000000 | 0 |
| `c * f * w * w` | -3301969/5 | 125059947199637646457/25000000000000000000000 | 0 |
| `c * w * w` | -5270279/1250000 | 946914517188767/50000000000000000 | 0 |
| `f * w * w` | -297642266408971/3125000000000 | 2303681308593911/125000000000000000 | 0 |
| `w * w` | 12502564191267325557/781250000000000000 | 17442749041/250000000000 | 218079089557269083433996540837/195312500000000000000000000000 |
| `c * h * r * w` | 31/5 | 5816895879090595681/1000000000000000000000 | 180323772251808466111/5000000000000000000000 |
| `c * r * w` | 2899727/100000 | 946914517188767/50000000000000000 | 2745793592184231766609/5000000000000000000000 |
| `b * f * w * w` | -7900 | 125059947199637646457/25000000000000000000000 | 0 |
| `b * w * w` | -5196031/10000 | 946914517188767/50000000000000000 | 0 |
| `b * h * r * w` | -7900 | 5816895879090595681/1000000000000000000000 | 0 |
| `b * r * w` | 101/200 | 946914517188767/50000000000000000 | 95638366236065467/10000000000000000000 |
| `e * e * f * r` | -2447200 | 6013099734655334049/3906250000000000000000 | 0 |
| `e * e * f` | -10054693567/312500000 | 45529296625719/7812500000000000 | 0 |
| `b * e * e * r` | 2284600 | 2471648925920407353/1562500000000000000000 | 28233645680788813193319/7812500000000000000 |
| `e * f * f * h` | 16336200 | 1989469040232009321/625000000000000000000 | 162501820675190753348601/3125000000000000000 |
| `b * c * h * h` | -483273/15625 | 111212272570771681/16000000000000000000 | 0 |
| `b * c * e * e` | -4189500 | 1015956608501799441/625000000000000000000 | 0 |
| `c * h * v` | 8734/625 | 59107222151881/2000000000000000 | 258121239137264327/625000000000000000 |
| `f * h * w * j` | 300 | 27719592411315781511/5000000000000000000000 | 83158777233947344533/50000000000000000000 |
| `h * w * j` | -253701/1250 | 209884020044641/10000000000000000 | 0 |
| `f * f * w * k` | 300 | 303111475540861027647/62500000000000000000000 | 909334426622583082941/625000000000000000000 |
| `f * f * k` | -13376881409/5000 | 2295064590567657/125000000000000000 | 0 |
| `f * r * k` | -253701/1250 | 2295064590567657/125000000000000000 | 0 |
| `b * c * w * w` | -7500 | 51405148394626594129/10000000000000000000000 | 0 |
| `b * e * r * w` | -7500 | 17581361840643836889/6250000000000000000000 | 0 |
| `e * r * w` | -5063031/10000 | 323859521444247/31250000000000000 | 0 |
| `e * q` | -3924188170287413/200000000000000 | 2757886479/125000000000 | 0 |
| `c * e * q` | -1826895098400901/1000000000 | 149717383285473/25000000000000000 | 0 |
| `e * f * p` | -9408474525793919/1000000000 | 96460706703609/7812500000000000 | 0 |
| `f * p` | 1242717274473073/125000000000000 | 5195276927/62500000000 | 6456260382854282239686671/7812500000000000000000000 |
| `e * e * p` | -1826887798400901/1000000000 | 13560781256793/1953125000000000 | 0 |
| `c * f * v * w` | 100 | 167832075941054251847/25000000000000000000000 | 167832075941054251847/250000000000000000000 |
| `f * v * w` | 145713/2000 | 3091570282775881/125000000000000000 | 450481980614121948153/250000000000000000000 |
| `c * f * h * v` | -4260400 | 7806349936821075551/1000000000000000000000 | 0 |
| `e * w * j` | 34841/1250 | 634367019399129/62500000000000000 | 22101981322885053489/78125000000000000000 |
| `c * w * k` | -911614043/96875000 | 943372666430529/50000000000000000 | 0 |
| `c * e * w * j` | -200 | 34437882382120516023/12500000000000000000000 | 0 |
| `e * r * k` | 1227241/10000 | 322648153289289/31250000000000000 | 395967042290900321649/312500000000000000000 |
| `e * e * r * j` | -100 | 11778292449183628143/7812500000000000000000 | 0 |
| `e * e * j` | -15308007293/10000 | 89181519403833/15625000000000000 | 0 |
| `c * e * k` | -132071/5000 | 132622606761633/12500000000000000 | 0 |
| `c * e * e * j` | 100 | 4841397143875882071/3125000000000000000000 | 4841397143875882071/31250000000000000000 |
| `r * w * k` | 54287/2000 | 2295064590567657/125000000000000000 | 124592171428146395559/250000000000000000000 |
| `w * w * j` | -54287/2000 | 4512386848659577/250000000000000000 | 0 |
| `c * r * w * k` | -100 | 124592171428146395559/25000000000000000000000 | 0 |
| `c * w * w * j` | 100 | 244963944853182456599/50000000000000000000000 | 244963944853182456599/500000000000000000000 |
| `e * r * r * k` | -100 | 42612464253069687519/15625000000000000000000 | 0 |
| `r * r * k` | -40433/1250 | 2295064590567657/125000000000000000 | 0 |
| `e * h * r * r` | 100 | 1989469040232009321/625000000000000000000 | 1989469040232009321/6250000000000000000 |
| `e * r * w * j` | 100 | 83781486619062366159/31250000000000000000000 | 83781486619062366159/312500000000000000000 |
| `r * w * j` | 40433/1250 | 4512386848659577/250000000000000000 | 182449337451852676841/312500000000000000000 |
| `c * e * r * k` | 100 | 17515600297615631943/6250000000000000000000 | 17515600297615631943/62500000000000000000 |
| `c * e * r * w` | -667800 | 17581361840643836889/6250000000000000000000 | 0 |
| `e * e * r * r` | -215000 | 6013099734655334049/3906250000000000000000 | 0 |
| `c * e * e * r` | 667800 | 2471648925920407353/1562500000000000000000 | 8252835763648240151667/7812500000000000000 |
| `f * q * j` | -213/10 | 5074970321564519/500000000000000000 | 0 |
| `e * f * f * k` | -300 | 42612464253069687519/15625000000000000000000 | 0 |
| `e * f * k` | 26679/1000 | 322648153289289/31250000000000000 | 8607930081604941231/31250000000000000000 |
| `e * e * f * f` | 12551300 | 6013099734655334049/3906250000000000000000 | 754722186995794942492137/39062500000000000000 |
| `f * f * h * w` | -8951368813/25000000 | 14151514278692395273/2500000000000000000000 | 0 |
| `f * f * h * h` | 2825868813/50000000 | 658227409605495409/100000000000000000000 | 1860064308665946109707779517/5000000000000000000000000000 |
| `e * f * r * k` | 300 | 42612464253069687519/15625000000000000000000 | 127837392759209062557/156250000000000000000 |
| `f * p * k` | 213/10 | 683578952223879/31250000000000000 | 145602316823686227/312500000000000000 |
| `e * p * k` | -73/10 | 96099903884583/7812500000000000 | 0 |
| `a * e * p` | -1440596883790259/50000000 | 13560781256793/1953125000000000 | 0 |
| `e * q * j` | 73/10 | 713456958457863/125000000000000000 | 52082357967423999/1250000000000000000 |
| `b * b * h * h` | -214602/15625 | 111212272570771681/16000000000000000000 | 0 |
| `a * b * b * h` | 214602/15625 | 336135156246380889/100000000000000000000 | 36067638400392915770589/781250000000000000000000 |
| `f * f * w * w` | -14884923131187/50000000 | 304249494107306419681/62500000000000000000000 | 0 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 276 | -838468315011508837603038348233787164491/48437500000000000000000000000000 |
