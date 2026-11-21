# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 85

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS-/EPQ+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS-/EPQ+ |
| Index | 1 |
| Context | 31 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 84 |
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
| q | 387853/1000000 | 158493/200000 | 80979/200000 | 158493/200000 |
| u | 34029/100000 | 171903/250000 | 68457/200000 | 171903/250000 |
| v | 196767/1000000 | 727327/1000000 | 196767/1000000 | 708097/1000000 |
| r | 155651/250000 | 1/1 | 155651/250000 | 1/1 |
| w | 264077/500000 | 1/1 | 264721/500000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 247401/500000 | 896233/1000000 |
| k | 4673/12500 | 8033/8963 | 4673/12500 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 729 | AREA_lo_AEP | bitt ["earlier-area",{"direction":"lo","ref":"84:522","triangle":"AEP","value":"37641/125000"}] | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -37641/125000` |
| 784 | AREA_lo_BHQ | bitt ["earlier-area",{"direction":"lo","ref":"84:104","triangle":"BHQ","value":"77999/250000"}] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -77999/250000` |
| 833 | AREA_lo_EHQ | bitt ["earlier-area",{"direction":"lo","ref":"84:400","triangle":"EHQ","value":"111177/1000000"}] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -111177/1000000` |
| 842 | AREA_lo_EQR | bitt ["earlier-area",{"direction":"lo","ref":"84:180","triangle":"EQR","value":"279973/1000000"}] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279973/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 729 | q | 387853/1000000 | 158493/200000 | 80979/200000 | 158493/200000 | 80979/200000 | 158493/200000 | `(1/1, -80979/200000); (1/1, -116996705619/200000000000); (1/1, -89414113331/200000000000); (1/1, -2508636379/4000000000); (1/1, -521748092501/1000000000000); (1/1, -561560834549/1000000000000); (1/1, -13568278541/20000000000)` |
| 1 | 833 | v | 196767/1000000 | 727327/1000000 | 196767/1000000 | 17728747/25000000 | 196767/1000000 | 14183/20000 | `(-1/1, 899340147/2000000000); (-1/1, 57497608107/100000000000); (-1/1, 58384387243/100000000000); (-1/1, 17728747/25000000); (-1/1, 1045140129/5000000000); (-1/1, 115557363849/250000000000); (-1/1, 68140608601/250000000000); (-1/1, 65720483/125000000)` |
| 2 | 784 | u | 34029/100000 | 171903/250000 | 6843532639/20000000000 | 171903/250000 | 10693/31250 | 171903/250000 | `(796617/1000000, -7484812699/20000000000); (796617/1000000, -3304715707/5000000000); (1/1, -395345078711/1000000000000); (1/1, -194813978423/250000000000); (796617/1000000, -321072188189/1000000000000); (796617/1000000, -90719413277/250000000000); (1/1, -6843532639/20000000000); (1/1, -2405952127/5000000000)` |
| 3 | 833 | v | 196767/1000000 | 14183/20000 | 196767/1000000 | 88519259/125000000 | 196767/1000000 | 141631/200000 | `(-1/1, 280227099/625000000); (-1/1, 17948870419/31250000000); (-1/1, 18192299281/31250000000); (-1/1, 88519259/125000000); (-1/1, 1045140129/5000000000); (-1/1, 115557363849/250000000000); (-1/1, 68140608601/250000000000); (-1/1, 65720483/125000000)` |
| 4 | 842 | w | 264077/500000 | 1/1 | 10882294469/20557000000 | 1/1 | 529371/1000000 | 1/1 | `(20557/31250, -5989550797/15625000000); (20557/31250, -121648523683/250000000000); (78097/250000, -86871598399/250000000000); (78097/250000, -80887075683/250000000000); (20557/31250, -36020439791/62500000000); (20557/31250, -33979494019/50000000000); (78097/250000, -135120544811/250000000000); (78097/250000, -25827204419/50000000000); (20557/31250, -10882294469/31250000000); (20557/31250, -73808241/125000000); (78097/250000, -78097141399/250000000000); (78097/250000, -53427517/125000000)` |
| 5 | 784 | u | 10693/31250 | 171903/250000 | 68455976023/200000000000 | 171903/250000 | 342279/1000000 | 171903/250000 | `(796617/1000000, -7484812699/20000000000); (796617/1000000, -3304715707/5000000000); (1/1, -395345078711/1000000000000); (1/1, -194813978423/250000000000); (796617/1000000, -160587718177/500000000000); (796617/1000000, -45432058561/125000000000); (1/1, -68455976023/200000000000); (1/1, -24088462039/50000000000)` |
| 6 | 833 | v | 196767/1000000 | 141631/200000 | 196767/1000000 | 88512461/125000000 | 196767/1000000 | 7081/10000 | `(-1/1, 8965839897/20000000000); (-1/1, 574330417857/1000000000000); (-1/1, 582061264993/1000000000000); (-1/1, 88512461/125000000); (-1/1, 1045140129/5000000000); (-1/1, 115557363849/250000000000); (-1/1, 68140608601/250000000000); (-1/1, 65720483/125000000)` |
| 7 | 842 | w | 529371/1000000 | 1/1 | 348222735007/657721000000 | 1/1 | 264719/500000 | 1/1 | `(657721/1000000, -383320563007/1000000000000); (657721/1000000, -121636369683/250000000000); (78097/250000, -86871598399/250000000000); (78097/250000, -80887075683/250000000000); (657721/1000000, -922072947/1600000000); (657721/1000000, -1698801269/2500000000); (78097/250000, -4222354863/7812500000); (78097/250000, -1291308329/2500000000); (657721/1000000, -348222735007/1000000000000); (657721/1000000, -18450541/31250000); (78097/250000, -78097141399/250000000000); (78097/250000, -53427517/125000000)` |
| 8 | 784 | u | 342279/1000000 | 171903/250000 | 3422855873/10000000000 | 171903/250000 | 68457/200000 | 171903/250000 | `(796617/1000000, -7484812699/20000000000); (796617/1000000, -3304715707/5000000000); (1/1, -395345078711/1000000000000); (1/1, -194813978423/250000000000); (796617/1000000, -321181143539/1000000000000); (796617/1000000, -90872115827/250000000000); (1/1, -3422855873/10000000000); (1/1, -1204503089/2500000000)` |
| 9 | 833 | v | 196767/1000000 | 7081/10000 | 196767/1000000 | 17702413/25000000 | 196767/1000000 | 708097/1000000 | `(-1/1, 1793151351/4000000000); (-1/1, 114865694031/200000000000); (-1/1, 116411177519/200000000000); (-1/1, 17702413/25000000); (-1/1, 1045140129/5000000000); (-1/1, 115557363849/250000000000); (-1/1, 68140608601/250000000000); (-1/1, 65720483/125000000)` |
| 10 | 842 | w | 264719/500000 | 1/1 | 69644422481/131543000000 | 1/1 | 264721/500000 | 1/1 | `(131543/200000, -76663988081/200000000000); (131543/200000, -121635661683/250000000000); (78097/250000, -86871598399/250000000000); (78097/250000, -80887075683/250000000000); (131543/200000, -115258767417/200000000000); (131543/200000, -169879135853/250000000000); (78097/250000, -135115072569/250000000000); (78097/250000, -129130549853/250000000000); (131543/200000, -69644422481/200000000000); (131543/200000, -7380181/12500000); (78097/250000, -78097141399/250000000000); (78097/250000, -53427517/125000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 85:16 | ACE | lo | 97409/1000000 | earlier 84:448; ACE; lo; 97409/1000000 |
| 85:22 | ACP | lo | 1349/10000 | earlier 84:533; ACP; lo; 1349/10000 |
| 85:30 | AEF | lo | 279/1000 | occupants Q |
| 85:34 | AEP | lo | 37641/125000 | earlier 84:522; AEP; lo; 37641/125000 |
| 85:35 | AEP | hi | 340533/500000 | earlier 84:359; AEP; hi; 340533/500000 |
| 85:36 | AEQ | lo | 93/1000 | occupants none |
| 85:40 | AES | lo | 51479/500000 | earlier 84:399; AES; lo; 51479/500000 |
| 85:46 | AFQ | lo | 93/1000 | occupants none |
| 85:48 | AFR | lo | 76253/500000 | earlier 84:48; AFR; lo; 76253/500000 |
| 85:52 | AHP | lo | 93/1000 | occupants none |
| 85:55 | AHQ | hi | 154065141399/250000000000 | vertex maximum 154065141399/250000000000 |
| 85:60 | APQ | lo | 14391/125000 | earlier 84:508; APQ; lo; 14391/125000 |
| 85:62 | APR | lo | 93/1000 | occupants none |
| 85:70 | BCH | lo | 373117/1000000 | earlier 84:588; BCH; lo; 373117/1000000 |
| 85:72 | BCP | lo | 187117/1000000 | earlier 84:587; BCP; lo; 187117/1000000 |
| 85:74 | BCQ | lo | 122067/1000000 | earlier 84:590; BCQ; lo; 122067/1000000 |
| 85:76 | BCR | lo | 23629/250000 | earlier 84:589; BCR; lo; 23629/250000 |
| 85:82 | BEH | lo | 13857/20000 | occupants P, Q |
| 85:84 | BEP | lo | 77999/250000 | earlier 84:229; BEP; lo; 77999/250000 |
| 85:90 | BES | lo | 6399/62500 | earlier 84:90; BES; lo; 6399/62500 |
| 85:104 | BHQ | lo | 77999/250000 | earlier 84:104; BHQ; lo; 77999/250000 |
| 85:106 | BHR | lo | 322553/1000000 | earlier 84:106; BHR; lo; 322553/1000000 |
| 85:110 | BPQ | lo | 31499/250000 | earlier 84:110; BPQ; lo; 31499/250000 |
| 85:112 | BPR | lo | 136553/1000000 | earlier 84:112; BPR; lo; 136553/1000000 |
| 85:116 | CEF | lo | 28649/250000 | earlier 84:558; CEF; lo; 28649/250000 |
| 85:118 | CEH | lo | 297177/1000000 | earlier 84:442; CEH; lo; 297177/1000000 |
| 85:121 | CEP | hi | 28235558407/50000000000 | vertex maximum 28235558407/50000000000 |
| 85:122 | CEQ | lo | 93/1000 | occupants none |
| 85:128 | CFH | lo | 328633/1000000 | earlier 84:569; CFH; lo; 328633/1000000 |
| 85:140 | CHQ | lo | 93/1000 | occupants none |
| 85:142 | CHR | lo | 352341/1000000 | earlier 84:570; CHR; lo; 352341/1000000 |
| 85:144 | CHS | lo | 316549/1000000 | earlier 84:528; CHS; lo; 316549/1000000 |
| 85:146 | CPQ | lo | 93/1000 | occupants none |
| 85:148 | CPR | lo | 294367/1000000 | earlier 84:148; CPR; lo; 294367/1000000 |
| 85:150 | CPS | lo | 56263/200000 | earlier 84:301; CPS; lo; 56263/200000 |
| 85:154 | CQS | lo | 93/1000 | occupants none |
| 85:156 | EFH | lo | 39687/250000 | earlier 84:156; EFH; lo; 39687/250000 |
| 85:158 | EFP | lo | 140873/1000000 | earlier 84:574; EFP; lo; 140873/1000000 |
| 85:164 | EFS | lo | 93/1000 | occupants none |
| 85:166 | EHP | lo | 24267/200000 | earlier 84:353; EHP; lo; 24267/200000 |
| 85:168 | EHQ | lo | 111177/1000000 | earlier 84:400; EHQ; lo; 111177/1000000 |
| 85:172 | EHS | lo | 93/1000 | occupants none |
| 85:174 | EPQ | lo | 93/1000 | occupants none |
| 85:178 | EPS | lo | 94649/1000000 | earlier 84:355; EPS; lo; 94649/1000000 |
| 85:180 | EQR | lo | 279973/1000000 | earlier 84:180; EQR; lo; 279973/1000000 |
| 85:181 | EQR | hi | 117893177519/200000000000 | vertex maximum 117893177519/200000000000 |
| 85:182 | EQS | lo | 93973/1000000 | earlier 84:182; EQS; lo; 93973/1000000 |
| 85:184 | ERS | lo | 93/1000 | occupants none |
| 85:188 | FHQ | lo | 142633/1000000 | earlier 84:564; FHQ; lo; 142633/1000000 |
| 85:190 | FHR | lo | 93/1000 | occupants none |
| 85:196 | FPR | lo | 30089/250000 | earlier 84:342; FPR; lo; 30089/250000 |
| 85:198 | FPS | lo | 106999/1000000 | earlier 84:545; FPS; lo; 106999/1000000 |
| 85:206 | HPQ | lo | 93/1000 | occupants none |
| 85:208 | HPR | lo | 93/1000 | occupants none |
| 85:212 | HQR | lo | 166341/1000000 | earlier 84:565; HQR; lo; 166341/1000000 |
| 85:218 | PQR | lo | 94697/1000000 | earlier 84:403; PQR; lo; 94697/1000000 |
| 85:220 | PQS | lo | 18651/200000 | earlier 84:428; PQS; lo; 18651/200000 |
| 85:224 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 2242 | bary | outer AEP; fans EPQ, APQ, AEQ; target FQS; sign -1; vertices AFS -1; EFS -1; FPS -1 | container AEP; inner Q; line FS |
| 2322 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPS; sign -1; vertices AFS -1; FHS -1; FQS -1 | container AHQ; inner P; line FS |
| 2868 | bary | outer CEP; fans EPQ, CPQ, CEQ; target HQS; sign -1; vertices CHS -1; EHS -1; HPS -1 | container CEP; inner Q; line HS |
| 3216 | bary | outer EQR; fans QRS, ERS, EQS; target AFS; sign -1; vertices AEF -1; AFQ -1; AFR -1 | container EQR; inner S; line AF |
| 3218 | bary | outer EQR; fans QRS, ERS, EQS; target APS; sign -1; vertices AEP -1; APQ -1; APR -1 | container EQR; inner S; line AP |
| 3222 | bary | outer EQR; fans QRS, ERS, EQS; target BHS; sign -1; vertices BEH -1; BHQ -1; BHR -1 | container EQR; inner S; line BH |
| 3223 | bary | outer EQR; fans QRS, ERS, EQS; target BPS; sign -1; vertices BEP -1; BPQ -1; BPR -1 | container EQR; inner S; line BP |
| 3235 | bary | outer EQR; fans QRS, ERS, EQS; target FHS; sign 1; vertices EFH 1; FHQ 1; FHR 1 | container EQR; inner S; line FH |
| 3240 | bary | outer EQR; fans QRS, ERS, EQS; target HPS; sign 1; vertices EHP 1; HPQ 1; HPR 1 | container EQR; inner S; line HP |
| 3382 | four | -1 * CHQ + -1 * CQS + 1 * CHS + -1 * HQS = 0 | vertices CHQS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 85:234 | AFS | lo | 131831/1000000 | 15542056976867/117893177519000 | 3216 | 85:181, 85:224, 85:184, 85:182, 85:30, 85:46, 85:48 |
| 85:236 | APS | lo | 129327/1000000 | 1172832854559/9068705963000 | 3218 | 85:181, 85:224, 85:184, 85:182, 85:34, 85:60, 85:62 |
| 85:240 | BHS | lo | 186883/500000 | 11016124701354481/29473294379750000 | 3222 | 85:181, 85:224, 85:184, 85:182, 85:82, 85:104, 85:106 |
| 85:241 | BPS | lo | 4907/31250 | 4628020846720981/29473294379750000 | 3223 | 85:181, 85:224, 85:184, 85:182, 85:84, 85:110, 85:112 |
| 85:248 | FHS | lo | 111203/1000000 | 13110152109267/117893177519000 | 3235 | 85:181, 85:224, 85:184, 85:182, 85:156, 85:188, 85:190 |
| 85:249 | HPS | lo | 9747/100000 | 11491096509267/117893177519000 | 3240 | 85:181, 85:224, 85:184, 85:182, 85:166, 85:206, 85:208 |
| 85:253 | FQS | lo | 100213/1000000 | 947949/9459250 | 2242 | 85:35, 85:174, 85:60, 85:36, 85:234, 85:164, 85:198 |
| 85:254 | FPS | lo | 107037/1000000 | 5496920898339329/51355047133000000 | 2322 | 85:55, 85:206, 85:60, 85:52, 85:234, 85:248, 85:253 |
| 85:256 | HQS | lo | 130551/1000000 | 3686195281851/28235558407000 | 2868 | 85:121, 85:174, 85:146, 85:122, 85:144, 85:172, 85:249 |
| 85:257 | CHS | lo | 316551/1000000 | 316551/1000000 | 3382 | 85:140, 85:154, 85:256 |
| 85:258 | FQS | lo | 100219/1000000 | 11375977/113511000 | 2242 | 85:35, 85:174, 85:60, 85:36, 85:234, 85:164, 85:254 |
| 85:259 | FPS | lo | 107041/1000000 | 5497124964622127/51355047133000000 | 2322 | 85:55, 85:206, 85:60, 85:52, 85:234, 85:248, 85:258 |

## Stage 86

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS-/EPQ+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS-/EPQ+ |
| Index | 2 |
| Context | 31 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 85 |
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
| q | 80979/200000 | 158493/200000 | 80979/200000 | 158493/200000 |
| u | 68457/200000 | 171903/250000 | 68457/200000 | 171903/250000 |
| v | 196767/1000000 | 708097/1000000 | 196767/1000000 | 708097/1000000 |
| r | 155651/250000 | 1/1 | 155651/250000 | 1/1 |
| w | 264721/500000 | 1/1 | 264721/500000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 247401/500000 | 896233/1000000 |
| k | 4673/12500 | 8033/8963 | 4673/12500 | 8033/8963 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 132 | ha | bitt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 133 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 134 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 135 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 136 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 138 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 140 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 141 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 143 | upper-Q-y | bitt ["upper-point-y","6805474093/10000000000","Q"] | `4945474093/10000000000 + -6805474093/10000000000 * v + 93/1000 * e + 93/1000 * h` |
| 144 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 146 | central-p-floor | bitt ["central-floor",0,"102650331/896233000"] | `1/1 * p + -102650331/896233000` |
| 148 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 152 | WBARY_RS_2 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"102872312439/15500000000",2] | `102872312439/15500000000 * k + -1/1 + -71872312439/15500000000 * e + -1/1 * w` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 86:0 | ABC | lo | 93/1000 | occupants none |
| 86:2 | ABE | lo | 93/1000 | occupants none |
| 86:4 | ABF | lo | 93/1000 | occupants none |
| 86:8 | ABP | lo | 93/1000 | occupants none |
| 86:10 | ABQ | lo | 93/1000 | occupants none |
| 86:12 | ABR | lo | 93/1000 | occupants none |
| 86:14 | ABS | lo | 93/1000 | occupants none |
| 86:16 | ACE | lo | 97409/1000000 | earlier 85:16; ACE; lo; 97409/1000000 |
| 86:18 | ACF | lo | 279/1000 | occupants Q |
| 86:22 | ACP | lo | 1349/10000 | earlier 85:22; ACP; lo; 1349/10000 |
| 86:24 | ACQ | lo | 93/1000 | occupants none |
| 86:26 | ACR | lo | 93/1000 | occupants none |
| 86:30 | AEF | lo | 279/1000 | occupants Q |
| 86:36 | AEQ | lo | 93/1000 | occupants none |
| 86:40 | AES | lo | 51479/500000 | earlier 85:40; AES; lo; 51479/500000 |
| 86:44 | AFP | lo | 93/1000 | occupants none |
| 86:46 | AFQ | lo | 93/1000 | occupants none |
| 86:50 | AFS | lo | 131831/1000000 | earlier 85:234; AFS; lo; 131831/1000000 |
| 86:52 | AHP | lo | 93/1000 | occupants none |
| 86:60 | APQ | lo | 14391/125000 | earlier 85:60; APQ; lo; 14391/125000 |
| 86:62 | APR | lo | 93/1000 | occupants none |
| 86:64 | APS | lo | 129327/1000000 | earlier 85:236; APS; lo; 129327/1000000 |
| 86:66 | BCE | lo | 93/1000 | occupants none |
| 86:70 | BCH | lo | 373117/1000000 | earlier 85:70; BCH; lo; 373117/1000000 |
| 86:72 | BCP | lo | 187117/1000000 | earlier 85:72; BCP; lo; 187117/1000000 |
| 86:74 | BCQ | lo | 122067/1000000 | earlier 85:74; BCQ; lo; 122067/1000000 |
| 86:76 | BCR | lo | 23629/250000 | earlier 85:76; BCR; lo; 23629/250000 |
| 86:80 | BEF | lo | 279/1000 | occupants Q |
| 86:86 | BEQ | lo | 93/1000 | occupants none |
| 86:90 | BES | lo | 6399/62500 | earlier 85:90; BES; lo; 6399/62500 |
| 86:92 | BFH | lo | 279/1000 | occupants P |
| 86:94 | BFP | lo | 93/1000 | occupants none |
| 86:96 | BFQ | lo | 93/1000 | occupants none |
| 86:102 | BHP | lo | 93/1000 | occupants none |
| 86:104 | BHQ | lo | 77999/250000 | earlier 85:104; BHQ; lo; 77999/250000 |
| 86:106 | BHR | lo | 322553/1000000 | earlier 85:106; BHR; lo; 322553/1000000 |
| 86:108 | BHS | lo | 186883/500000 | earlier 85:240; BHS; lo; 186883/500000 |
| 86:110 | BPQ | lo | 31499/250000 | earlier 85:110; BPQ; lo; 31499/250000 |
| 86:112 | BPR | lo | 136553/1000000 | earlier 85:112; BPR; lo; 136553/1000000 |
| 86:114 | BPS | lo | 4907/31250 | earlier 85:241; BPS; lo; 4907/31250 |
| 86:116 | CEF | lo | 28649/250000 | earlier 85:116; CEF; lo; 28649/250000 |
| 86:118 | CEH | lo | 297177/1000000 | earlier 85:118; CEH; lo; 297177/1000000 |
| 86:120 | CEP | lo | 279/1000 | occupants Q |
| 86:122 | CEQ | lo | 93/1000 | occupants none |
| 86:124 | CER | lo | 93/1000 | occupants none |
| 86:126 | CES | lo | 93/1000 | occupants none |
| 86:128 | CFH | lo | 328633/1000000 | earlier 85:128; CFH; lo; 328633/1000000 |
| 86:130 | CFP | lo | 279/1000 | occupants Q |
| 86:132 | CFQ | lo | 93/1000 | occupants none |
| 86:138 | CHP | lo | 93/1000 | occupants none |
| 86:140 | CHQ | lo | 93/1000 | occupants none |
| 86:142 | CHR | lo | 352341/1000000 | earlier 85:142; CHR; lo; 352341/1000000 |
| 86:144 | CHS | lo | 316551/1000000 | earlier 85:257; CHS; lo; 316551/1000000 |
| 86:146 | CPQ | lo | 93/1000 | occupants none |
| 86:148 | CPR | lo | 294367/1000000 | earlier 85:148; CPR; lo; 294367/1000000 |
| 86:150 | CPS | lo | 56263/200000 | earlier 85:150; CPS; lo; 56263/200000 |
| 86:152 | CQR | lo | 93/1000 | occupants none |
| 86:154 | CQS | lo | 93/1000 | occupants none |
| 86:156 | EFH | lo | 39687/250000 | earlier 85:156; EFH; lo; 39687/250000 |
| 86:158 | EFP | lo | 140873/1000000 | earlier 85:158; EFP; lo; 140873/1000000 |
| 86:162 | EFR | lo | 279/1000 | occupants S |
| 86:164 | EFS | lo | 93/1000 | occupants none |
| 86:166 | EHP | lo | 24267/200000 | earlier 85:166; EHP; lo; 24267/200000 |
| 86:168 | EHQ | lo | 111177/1000000 | earlier 85:168; EHQ; lo; 111177/1000000 |
| 86:172 | EHS | lo | 93/1000 | occupants none |
| 86:174 | EPQ | lo | 93/1000 | occupants none |
| 86:178 | EPS | lo | 94649/1000000 | earlier 85:178; EPS; lo; 94649/1000000 |
| 86:180 | EQR | lo | 279973/1000000 | earlier 85:180; EQR; lo; 279973/1000000 |
| 86:182 | EQS | lo | 93973/1000000 | earlier 85:182; EQS; lo; 93973/1000000 |
| 86:184 | ERS | lo | 93/1000 | occupants none |
| 86:186 | FHP | lo | 93/1000 | occupants none |
| 86:188 | FHQ | lo | 142633/1000000 | earlier 85:188; FHQ; lo; 142633/1000000 |
| 86:190 | FHR | lo | 93/1000 | occupants none |
| 86:192 | FHS | lo | 111203/1000000 | earlier 85:248; FHS; lo; 111203/1000000 |
| 86:194 | FPQ | lo | 93/1000 | occupants none |
| 86:196 | FPR | lo | 30089/250000 | earlier 85:196; FPR; lo; 30089/250000 |
| 86:198 | FPS | lo | 107041/1000000 | earlier 85:259; FPS; lo; 107041/1000000 |
| 86:204 | FRS | lo | 93/1000 | occupants none |
| 86:206 | HPQ | lo | 93/1000 | occupants none |
| 86:208 | HPR | lo | 93/1000 | occupants none |
| 86:210 | HPS | lo | 9747/100000 | earlier 85:249; HPS; lo; 9747/100000 |
| 86:212 | HQR | lo | 166341/1000000 | earlier 85:212; HQR; lo; 166341/1000000 |
| 86:214 | HQS | lo | 130551/1000000 | earlier 85:256; HQS; lo; 130551/1000000 |
| 86:218 | PQR | lo | 94697/1000000 | earlier 85:218; PQR; lo; 94697/1000000 |
| 86:220 | PQS | lo | 18651/200000 | earlier 85:220; PQS; lo; 18651/200000 |
| 86:222 | PRS | lo | 93/1000 | occupants none |
| 86:224 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"86:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"86:2","triangle":"ABE","value":"93/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -93/1000` |
| 4 | bound | `{"direction":"lo","ref":"86:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"86:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"86:10","triangle":"ABQ","value":"93/1000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -93/1000` |
| 12 | bound | `{"direction":"lo","ref":"86:12","triangle":"ABR","value":"93/1000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -93/1000` |
| 14 | bound | `{"direction":"lo","ref":"86:14","triangle":"ABS","value":"93/1000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -93/1000` |
| 16 | bound | `{"direction":"lo","ref":"86:16","triangle":"ACE","value":"97409/1000000"}` | `1 * c * e + -1 * a * c + 1 * a + -97409/1000000` |
| 18 | bound | `{"direction":"lo","ref":"86:18","triangle":"ACF","value":"279/1000"}` | `1 * c + -1 * a * c + 1 * a * f + -279/1000` |
| 22 | bound | `{"direction":"lo","ref":"86:22","triangle":"ACP","value":"1349/10000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -1349/10000` |
| 24 | bound | `{"direction":"lo","ref":"86:24","triangle":"ACQ","value":"93/1000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -93/1000` |
| 26 | bound | `{"direction":"lo","ref":"86:26","triangle":"ACR","value":"93/1000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -93/1000` |
| 30 | bound | `{"direction":"lo","ref":"86:30","triangle":"AEF","value":"279/1000"}` | `721/1000 + -1 * a + -1 * e * f + 1 * a * f` |
| 36 | bound | `{"direction":"lo","ref":"86:36","triangle":"AEQ","value":"93/1000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -93/1000` |
| 40 | bound | `{"direction":"lo","ref":"86:40","triangle":"AES","value":"51479/500000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -51479/500000` |
| 44 | bound | `{"direction":"lo","ref":"86:44","triangle":"AFP","value":"93/1000"}` | `1 * f * q + -1 * a * f + -1 * p + 1 * a * p + -93/1000` |
| 46 | bound | `{"direction":"lo","ref":"86:46","triangle":"AFQ","value":"93/1000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -93/1000` |
| 50 | bound | `{"direction":"lo","ref":"86:50","triangle":"AFS","value":"131831/1000000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -131831/1000000` |
| 52 | bound | `{"direction":"lo","ref":"86:52","triangle":"AHP","value":"93/1000"}` | `1 * h * p + -1 * a * p + -93/1000` |
| 60 | bound | `{"direction":"lo","ref":"86:60","triangle":"APQ","value":"14391/125000"}` | `-1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u + -14391/125000` |
| 62 | bound | `{"direction":"lo","ref":"86:62","triangle":"APR","value":"93/1000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -93/1000` |
| 64 | bound | `{"direction":"lo","ref":"86:64","triangle":"APS","value":"129327/1000000"}` | `-1 * p * k + 1 * a * p + 1 * q * j + -1 * a * j + -129327/1000000` |
| 66 | bound | `{"direction":"lo","ref":"86:66","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 70 | bound | `{"direction":"lo","ref":"86:70","triangle":"BCH","value":"373117/1000000"}` | `1 * c * h + -1 * b * h + -373117/1000000` |
| 72 | bound | `{"direction":"lo","ref":"86:72","triangle":"BCP","value":"187117/1000000"}` | `1 * c * q + -1 * b * q + -187117/1000000` |
| 74 | bound | `{"direction":"lo","ref":"86:74","triangle":"BCQ","value":"122067/1000000"}` | `1 * c * v + -1 * b * v + -122067/1000000` |
| 76 | bound | `{"direction":"lo","ref":"86:76","triangle":"BCR","value":"23629/250000"}` | `1 * c * w + -1 * b * w + -23629/250000` |
| 80 | bound | `{"direction":"lo","ref":"86:80","triangle":"BEF","value":"279/1000"}` | `721/1000 + -1 * b + -1 * e * f + 1 * b * e` |
| 86 | bound | `{"direction":"lo","ref":"86:86","triangle":"BEQ","value":"93/1000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -93/1000` |
| 90 | bound | `{"direction":"lo","ref":"86:90","triangle":"BES","value":"6399/62500"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -6399/62500` |
| 92 | bound | `{"direction":"lo","ref":"86:92","triangle":"BFH","value":"279/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -279/1000` |
| 94 | bound | `{"direction":"lo","ref":"86:94","triangle":"BFP","value":"93/1000"}` | `1 * f * q + -1 * b * q + -1 * p + 1 * b + -93/1000` |
| 96 | bound | `{"direction":"lo","ref":"86:96","triangle":"BFQ","value":"93/1000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -93/1000` |
| 102 | bound | `{"direction":"lo","ref":"86:102","triangle":"BHP","value":"93/1000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -93/1000` |
| 104 | bound | `{"direction":"lo","ref":"86:104","triangle":"BHQ","value":"77999/250000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -77999/250000` |
| 106 | bound | `{"direction":"lo","ref":"86:106","triangle":"BHR","value":"322553/1000000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -322553/1000000` |
| 108 | bound | `{"direction":"lo","ref":"86:108","triangle":"BHS","value":"186883/500000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -186883/500000` |
| 110 | bound | `{"direction":"lo","ref":"86:110","triangle":"BPQ","value":"31499/250000"}` | `-1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q + -31499/250000` |
| 112 | bound | `{"direction":"lo","ref":"86:112","triangle":"BPR","value":"136553/1000000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -136553/1000000` |
| 114 | bound | `{"direction":"lo","ref":"86:114","triangle":"BPS","value":"4907/31250"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -4907/31250` |
| 116 | bound | `{"direction":"lo","ref":"86:116","triangle":"CEF","value":"28649/250000"}` | `221351/250000 + -1 * c + -1 * e * f + 1 * c * e` |
| 118 | bound | `{"direction":"lo","ref":"86:118","triangle":"CEH","value":"297177/1000000"}` | `1 * h + -1 * c * h + 1 * c * e + -297177/1000000` |
| 120 | bound | `{"direction":"lo","ref":"86:120","triangle":"CEP","value":"279/1000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -279/1000` |
| 122 | bound | `{"direction":"lo","ref":"86:122","triangle":"CEQ","value":"93/1000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -93/1000` |
| 124 | bound | `{"direction":"lo","ref":"86:124","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 126 | bound | `{"direction":"lo","ref":"86:126","triangle":"CES","value":"93/1000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -93/1000` |
| 128 | bound | `{"direction":"lo","ref":"86:128","triangle":"CFH","value":"328633/1000000"}` | `1 * f * h + -1 * c * h + 1 * c + -328633/1000000` |
| 130 | bound | `{"direction":"lo","ref":"86:130","triangle":"CFP","value":"279/1000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -279/1000` |
| 132 | bound | `{"direction":"lo","ref":"86:132","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 138 | bound | `{"direction":"lo","ref":"86:138","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 140 | bound | `{"direction":"lo","ref":"86:140","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 142 | bound | `{"direction":"lo","ref":"86:142","triangle":"CHR","value":"352341/1000000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -352341/1000000` |
| 144 | bound | `{"direction":"lo","ref":"86:144","triangle":"CHS","value":"316551/1000000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -316551/1000000` |
| 146 | bound | `{"direction":"lo","ref":"86:146","triangle":"CPQ","value":"93/1000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -93/1000` |
| 148 | bound | `{"direction":"lo","ref":"86:148","triangle":"CPR","value":"294367/1000000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -294367/1000000` |
| 150 | bound | `{"direction":"lo","ref":"86:150","triangle":"CPS","value":"56263/200000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -56263/200000` |
| 152 | bound | `{"direction":"lo","ref":"86:152","triangle":"CQR","value":"93/1000"}` | `-1 * u * w + 1 * c * w + 1 * v * r + -1 * c * v + -93/1000` |
| 154 | bound | `{"direction":"lo","ref":"86:154","triangle":"CQS","value":"93/1000"}` | `-1 * u * k + 1 * c * k + 1 * v * j + -1 * c * v + -93/1000` |
| 156 | bound | `{"direction":"lo","ref":"86:156","triangle":"EFH","value":"39687/250000"}` | `1 * f * h + -1 * e * f + -1 * h + 210313/250000` |
| 158 | bound | `{"direction":"lo","ref":"86:158","triangle":"EFP","value":"140873/1000000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 859127/1000000 + 1 * e * p` |
| 162 | bound | `{"direction":"lo","ref":"86:162","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 164 | bound | `{"direction":"lo","ref":"86:164","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 166 | bound | `{"direction":"lo","ref":"86:166","triangle":"EHP","value":"24267/200000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -24267/200000` |
| 168 | bound | `{"direction":"lo","ref":"86:168","triangle":"EHQ","value":"111177/1000000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -111177/1000000` |
| 172 | bound | `{"direction":"lo","ref":"86:172","triangle":"EHS","value":"93/1000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -93/1000` |
| 174 | bound | `{"direction":"lo","ref":"86:174","triangle":"EPQ","value":"93/1000"}` | `1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u + -93/1000` |
| 178 | bound | `{"direction":"lo","ref":"86:178","triangle":"EPS","value":"94649/1000000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -94649/1000000` |
| 180 | bound | `{"direction":"lo","ref":"86:180","triangle":"EQR","value":"279973/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -279973/1000000` |
| 182 | bound | `{"direction":"lo","ref":"86:182","triangle":"EQS","value":"93973/1000000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -93973/1000000` |
| 184 | bound | `{"direction":"lo","ref":"86:184","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 186 | bound | `{"direction":"lo","ref":"86:186","triangle":"FHP","value":"93/1000"}` | `-1 * f * q + -1 * h * p + 1 * f * h + 1 * p + -93/1000` |
| 188 | bound | `{"direction":"lo","ref":"86:188","triangle":"FHQ","value":"142633/1000000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -142633/1000000` |
| 190 | bound | `{"direction":"lo","ref":"86:190","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 192 | bound | `{"direction":"lo","ref":"86:192","triangle":"FHS","value":"111203/1000000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -111203/1000000` |
| 194 | bound | `{"direction":"lo","ref":"86:194","triangle":"FPQ","value":"93/1000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -93/1000` |
| 196 | bound | `{"direction":"lo","ref":"86:196","triangle":"FPR","value":"30089/250000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -30089/250000` |
| 198 | bound | `{"direction":"lo","ref":"86:198","triangle":"FPS","value":"107041/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -107041/1000000` |
| 204 | bound | `{"direction":"lo","ref":"86:204","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 206 | bound | `{"direction":"lo","ref":"86:206","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 208 | bound | `{"direction":"lo","ref":"86:208","triangle":"HPR","value":"93/1000"}` | `1 * p * w + -1 * h * p + -1 * q * r + 1 * h * r + -93/1000` |
| 210 | bound | `{"direction":"lo","ref":"86:210","triangle":"HPS","value":"9747/100000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -9747/100000` |
| 212 | bound | `{"direction":"lo","ref":"86:212","triangle":"HQR","value":"166341/1000000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -166341/1000000` |
| 214 | bound | `{"direction":"lo","ref":"86:214","triangle":"HQS","value":"130551/1000000"}` | `1 * u * k + -1 * h * u + -1 * v * j + 1 * h * j + -130551/1000000` |
| 218 | bound | `{"direction":"lo","ref":"86:218","triangle":"PQR","value":"94697/1000000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -94697/1000000` |
| 220 | bound | `{"direction":"lo","ref":"86:220","triangle":"PQS","value":"18651/200000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -18651/200000` |
| 222 | bound | `{"direction":"lo","ref":"86:222","triangle":"PRS","value":"93/1000"}` | `-1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j + -93/1000` |
| 224 | bound | `{"direction":"lo","ref":"86:224","triangle":"QRS","value":"93/1000"}` | `-1 * r * k + 1 * v * r + 1 * u * k + 1 * w * j + -1 * u * w + -1 * v * j + -93/1000` |
| 226 | coordinate | `{"box":86,"direction":"lo","value":"103767/1000000","variable":"a"}` | `1 * a + -103767/1000000` |
| 227 | coordinate | `{"box":86,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 228 | coordinate | `{"box":86,"direction":"lo","value":"103767/1000000","variable":"b"}` | `1 * b + -103767/1000000` |
| 229 | coordinate | `{"box":86,"direction":"hi","value":"145431/250000","variable":"b"}` | `145431/250000 + -1 * b` |
| 230 | coordinate | `{"box":86,"direction":"lo","value":"135501/250000","variable":"c"}` | `1 * c + -135501/250000` |
| 231 | coordinate | `{"box":86,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 232 | coordinate | `{"box":86,"direction":"lo","value":"103767/1000000","variable":"e"}` | `1 * e + -103767/1000000` |
| 233 | coordinate | `{"box":86,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 234 | coordinate | `{"box":86,"direction":"lo","value":"155651/500000","variable":"f"}` | `1 * f + -155651/500000` |
| 235 | coordinate | `{"box":86,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 236 | coordinate | `{"box":86,"direction":"lo","value":"796617/1000000","variable":"h"}` | `1 * h + -796617/1000000` |
| 237 | coordinate | `{"box":86,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 238 | coordinate | `{"box":86,"direction":"lo","value":"22907/200000","variable":"p"}` | `1 * p + -22907/200000` |
| 239 | coordinate | `{"box":86,"direction":"hi","value":"425453/1000000","variable":"p"}` | `425453/1000000 + -1 * p` |
| 240 | coordinate | `{"box":86,"direction":"lo","value":"80979/200000","variable":"q"}` | `1 * q + -80979/200000` |
| 241 | coordinate | `{"box":86,"direction":"hi","value":"158493/200000","variable":"q"}` | `158493/200000 + -1 * q` |
| 242 | coordinate | `{"box":86,"direction":"lo","value":"68457/200000","variable":"u"}` | `1 * u + -68457/200000` |
| 243 | coordinate | `{"box":86,"direction":"hi","value":"171903/250000","variable":"u"}` | `171903/250000 + -1 * u` |
| 244 | coordinate | `{"box":86,"direction":"lo","value":"196767/1000000","variable":"v"}` | `1 * v + -196767/1000000` |
| 245 | coordinate | `{"box":86,"direction":"hi","value":"708097/1000000","variable":"v"}` | `708097/1000000 + -1 * v` |
| 246 | coordinate | `{"box":86,"direction":"lo","value":"155651/250000","variable":"r"}` | `1 * r + -155651/250000` |
| 247 | coordinate | `{"box":86,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 248 | coordinate | `{"box":86,"direction":"lo","value":"264721/500000","variable":"w"}` | `1 * w + -264721/500000` |
| 249 | coordinate | `{"box":86,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 250 | coordinate | `{"box":86,"direction":"lo","value":"247401/500000","variable":"j"}` | `1 * j + -247401/500000` |
| 251 | coordinate | `{"box":86,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 252 | coordinate | `{"box":86,"direction":"lo","value":"4673/12500","variable":"k"}` | `1 * k + -4673/12500` |
| 253 | coordinate | `{"box":86,"direction":"hi","value":"8033/8963","variable":"k"}` | `8033/8963 + -1 * k` |
| 254 | physical | `{"factor":132}` | `1 * h + -1 * a` |
| 255 | physical | `{"factor":133}` | `1 * e + -1 * a` |
| 256 | physical | `{"factor":134}` | `1 * h + -1 * e` |
| 257 | physical | `{"factor":135}` | `1 * f + -1 * b` |
| 258 | physical | `{"factor":136}` | `1 * c + -1 * f` |
| 260 | physical | `{"factor":138}` | `1 * c * h + -135501/250000` |
| 262 | physical | `{"factor":140}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 263 | physical | `{"factor":141}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 265 | physical | `{"factor":143}` | `4945474093/10000000000 + -6805474093/10000000000 * v + 93/1000 * e + 93/1000 * h` |
| 266 | physical | `{"factor":144}` | `907/1000 + -1 * p + -1 * q` |
| 268 | physical | `{"factor":146}` | `1 * p + -102650331/896233000` |
| 269 | physical | `{"factor":148}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 273 | physical | `{"factor":152}` | `102872312439/15500000000 * k + -1 + -71872312439/15500000000 * e + -1 * w` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 32940000 | 0, 0 |
| 1 | 16606000 | 0, 10 |
| 2 | 80044000 | 0, 36 |
| 3 | 49826000 | 0, 44 |
| 4 | 2182000 | 0, 52 |
| 5 | 19684000 | 0, 62 |
| 6 | 361000 | 0, 64 |
| 7 | 6861000 | 0, 94 |
| 8 | 94649000 | 0, 102 |
| 9 | 8876000 | 0, 104 |
| 10 | 8165000 | 0, 112 |
| 11 | 3261000 | 0, 114 |
| 12 | 15213000 | 0, 120 |
| 13 | 1542000 | 0, 122 |
| 14 | 455000 | 0, 132 |
| 15 | 2085000 | 0, 174 |
| 16 | 95097000 | 0, 184 |
| 17 | 12934000 | 0, 190 |
| 18 | 17300000 | 0, 192 |
| 19 | 20947000 | 0, 206 |
| 20 | 26437000 | 0, 218 |
| 21 | 3622000 | 0, 222 |
| 22 | 69332000 | 0, 228 |
| 23 | 74910000 | 0, 237 |
| 24 | 56710000 | 0, 240 |
| 25 | 70428000 | 0, 247 |
| 26 | 48179000 | 0, 249 |
| 27 | 4439000 | 0, 260 |
| 28 | 28700 | 2, 8 |
| 29 | 2885900 | 2, 146 |
| 30 | 12800200 | 2, 164 |
| 31 | 10896200 | 2, 184 |
| 32 | 4469800 | 2, 190 |
| 33 | 21460900 | 4, 8 |
| 34 | 26143600 | 4, 164 |
| 35 | 5270300 | 4, 190 |
| 36 | 491400 | 8, 14 |
| 37 | 28298400 | 8, 16 |
| 38 | 14389200 | 8, 18 |
| 39 | 21611600 | 8, 24 |
| 40 | 18195300 | 8, 26 |
| 41 | 111500 | 8, 46 |
| 42 | 94951500 | 8, 92 |
| 43 | 12104500 | 8, 106 |
| 44 | 57738900 | 8, 158 |
| 45 | 47854600 | 8, 168 |
| 46 | 1776200 | 8, 198 |
| 47 | 113919700 | 8, 208 |
| 48 | 13697100 | 8, 210 |
| 49 | 26770600 | 8, 226 |
| 50 | 56590700 | 8, 231 |
| 51 | 34441700 | 8, 232 |
| 52 | 13336600 | 8, 245 |
| 53 | 14869200 | 8, 246 |
| 54 | 2498800 | 8, 248 |
| 55 | 31583000 | 8, 257 |
| 56 | 57300400 | 12, 138 |
| 57 | 4474000 | 12, 184 |
| 58 | 2029400 | 12, 190 |
| 59 | 4474000 | 12, 224 |
| 60 | 271800 | 14, 164 |
| 61 | 1363400 | 14, 224 |
| 62 | 12870500 | 16, 164 |
| 63 | 120747400 | 16, 184 |
| 64 | 3360100 | 16, 190 |
| 65 | 37733600 | 18, 184 |
| 66 | 44820400 | 18, 190 |
| 67 | 46582700 | 18, 224 |
| 68 | 5643600 | 22, 164 |
| 69 | 10982700 | 22, 184 |
| 70 | 46582700 | 24, 164 |
| 71 | 24427000 | 24, 190 |
| 72 | 55519300 | 26, 102 |
| 73 | 4393100 | 26, 174 |
| 74 | 12606900 | 26, 190 |
| 75 | 93231200 | 26, 206 |
| 76 | 2945500 | 30, 174 |
| 77 | 41909400 | 30, 206 |
| 78 | 38494500 | 36, 44 |
| 79 | 31990300 | 36, 66 |
| 80 | 18032100 | 36, 102 |
| 81 | 48156400 | 36, 138 |
| 82 | 1745000 | 36, 206 |
| 83 | 101076500 | 36, 247 |
| 84 | 30783000 | 36, 255 |
| 85 | 14341200 | 40, 174 |
| 86 | 44277900 | 44, 70 |
| 87 | 133124700 | 44, 72 |
| 88 | 1167200 | 44, 74 |
| 89 | 52884600 | 44, 102 |
| 90 | 10277700 | 44, 140 |
| 91 | 12077200 | 44, 162 |
| 92 | 25800100 | 44, 172 |
| 93 | 35445500 | 44, 204 |
| 94 | 8804500 | 44, 218 |
| 95 | 6202400 | 44, 222 |
| 96 | 46391000 | 44, 230 |
| 97 | 176981400 | 44, 237 |
| 98 | 27381800 | 44, 247 |
| 99 | 2343300 | 46, 190 |
| 100 | 10990300 | 50, 140 |
| 101 | 2444100 | 50, 206 |
| 102 | 43495500 | 52, 132 |
| 103 | 42754300 | 52, 190 |
| 104 | 10238600 | 60, 162 |
| 105 | 25395300 | 60, 184 |
| 106 | 1745000 | 60, 206 |
| 107 | 69672100 | 62, 102 |
| 108 | 2709600 | 62, 146 |
| 109 | 20924700 | 64, 140 |
| 110 | 33241000 | 66, 162 |
| 111 | 4901500 | 66, 204 |
| 112 | 47830600 | 72, 174 |
| 113 | 2944800 | 74, 190 |
| 114 | 2966300 | 76, 174 |
| 115 | 26769700 | 80, 140 |
| 116 | 4768200 | 86, 102 |
| 117 | 38200 | 86, 132 |
| 118 | 65756800 | 86, 138 |
| 119 | 39100 | 86, 146 |
| 120 | 8695300 | 86, 164 |
| 121 | 1872600 | 86, 190 |
| 122 | 25886900 | 86, 224 |
| 123 | 421300 | 90, 132 |
| 124 | 3337400 | 90, 190 |
| 125 | 3337400 | 92, 164 |
| 126 | 2621500 | 92, 184 |
| 127 | 24481700 | 94, 184 |
| 128 | 14006900 | 94, 206 |
| 129 | 14011500 | 94, 224 |
| 130 | 26102000 | 96, 224 |
| 131 | 3951700 | 102, 102 |
| 132 | 3057300 | 102, 120 |
| 133 | 20149700 | 102, 122 |
| 134 | 6032900 | 102, 130 |
| 135 | 13548300 | 102, 142 |
| 136 | 4618200 | 102, 194 |
| 137 | 31789800 | 102, 218 |
| 138 | 1156900 | 102, 229 |
| 139 | 103666100 | 102, 237 |
| 140 | 12927000 | 102, 242 |
| 141 | 17700600 | 102, 244 |
| 142 | 10557500 | 102, 250 |
| 143 | 103866100 | 102, 254 |
| 144 | 17039900 | 102, 255 |
| 145 | 17854200 | 102, 262 |
| 146 | 23844300 | 106, 174 |
| 147 | 22213700 | 106, 206 |
| 148 | 715800 | 108, 184 |
| 149 | 53461800 | 110, 138 |
| 150 | 8274000 | 110, 164 |
| 151 | 31603200 | 112, 138 |
| 152 | 21780700 | 112, 140 |
| 153 | 2709600 | 112, 206 |
| 154 | 76715400 | 116, 206 |
| 155 | 30696600 | 118, 184 |
| 156 | 20509000 | 118, 190 |
| 157 | 1761400 | 120, 122 |
| 158 | 19090000 | 120, 132 |
| 159 | 23461200 | 120, 243 |
| 160 | 28861000 | 122, 122 |
| 161 | 14609400 | 122, 140 |
| 162 | 43036100 | 122, 154 |
| 163 | 14382000 | 124, 164 |
| 164 | 5285500 | 124, 184 |
| 165 | 1073300 | 124, 224 |
| 166 | 7584300 | 126, 126 |
| 167 | 35312200 | 126, 166 |
| 168 | 11397700 | 126, 168 |
| 169 | 37777900 | 126, 174 |
| 170 | 5643600 | 126, 186 |
| 171 | 18381600 | 126, 190 |
| 172 | 1959600 | 126, 224 |
| 173 | 4824900 | 126, 255 |
| 174 | 116676500 | 128, 174 |
| 175 | 47912500 | 128, 184 |
| 176 | 15623800 | 128, 224 |
| 177 | 120338200 | 130, 140 |
| 178 | 9989300 | 130, 224 |
| 179 | 19428800 | 132, 132 |
| 180 | 48204500 | 132, 138 |
| 181 | 33595100 | 132, 144 |
| 182 | 30686000 | 132, 146 |
| 183 | 27895700 | 132, 150 |
| 184 | 207563700 | 132, 166 |
| 185 | 25268900 | 132, 180 |
| 186 | 8659400 | 132, 184 |
| 187 | 19600600 | 132, 196 |
| 188 | 29996900 | 132, 214 |
| 189 | 28301800 | 132, 226 |
| 190 | 57770100 | 132, 231 |
| 191 | 6980000 | 132, 249 |
| 192 | 14527500 | 132, 263 |
| 193 | 38357900 | 132, 268 |
| 194 | 11341900 | 132, 273 |
| 195 | 16810600 | 138, 182 |
| 196 | 42871000 | 138, 228 |
| 197 | 26333800 | 138, 232 |
| 198 | 29777000 | 138, 243 |
| 199 | 62274400 | 138, 244 |
| 200 | 64035700 | 138, 249 |
| 201 | 12059100 | 138, 251 |
| 202 | 7299400 | 140, 148 |
| 203 | 24375600 | 140, 158 |
| 204 | 2265700 | 140, 172 |
| 205 | 120900 | 140, 194 |
| 206 | 9770200 | 140, 214 |
| 207 | 3147900 | 140, 220 |
| 208 | 70900600 | 140, 231 |
| 209 | 44253300 | 140, 235 |
| 210 | 4891800 | 140, 237 |
| 211 | 42945300 | 140, 239 |
| 212 | 26471900 | 140, 247 |
| 213 | 79795600 | 140, 250 |
| 214 | 19448700 | 140, 252 |
| 215 | 2644100 | 142, 174 |
| 216 | 6374000 | 142, 190 |
| 217 | 8535700 | 142, 206 |
| 218 | 43434300 | 146, 240 |
| 219 | 62393200 | 146, 243 |
| 220 | 46837000 | 146, 244 |
| 221 | 81232900 | 152, 184 |
| 222 | 25957300 | 152, 224 |
| 223 | 33954800 | 154, 206 |
| 224 | 2795400 | 156, 174 |
| 225 | 41959400 | 158, 206 |
| 226 | 54163000 | 162, 247 |
| 227 | 3283000 | 164, 166 |
| 228 | 1245300 | 164, 184 |
| 229 | 12077200 | 164, 186 |
| 230 | 47765800 | 164, 188 |
| 231 | 20500 | 164, 204 |
| 232 | 40587600 | 164, 212 |
| 233 | 2120900 | 164, 218 |
| 234 | 34553900 | 164, 226 |
| 235 | 3942500 | 164, 231 |
| 236 | 87238500 | 164, 234 |
| 237 | 3304900 | 164, 236 |
| 238 | 14220400 | 164, 239 |
| 239 | 96268100 | 164, 244 |
| 240 | 118781000 | 164, 247 |
| 241 | 3449100 | 164, 249 |
| 242 | 1106200 | 164, 250 |
| 243 | 68950900 | 164, 254 |
| 244 | 448500 | 164, 256 |
| 245 | 17859600 | 164, 257 |
| 246 | 24511000 | 164, 260 |
| 247 | 24097100 | 166, 184 |
| 248 | 35839100 | 166, 255 |
| 249 | 962800 | 168, 184 |
| 250 | 18569000 | 168, 190 |
| 251 | 103983900 | 174, 186 |
| 252 | 25230800 | 174, 188 |
| 253 | 29329700 | 174, 204 |
| 254 | 3894900 | 174, 212 |
| 255 | 4180100 | 174, 226 |
| 256 | 15658400 | 174, 229 |
| 257 | 67431900 | 174, 230 |
| 258 | 75685800 | 174, 232 |
| 259 | 23785200 | 174, 237 |
| 260 | 12289900 | 174, 238 |
| 261 | 163100 | 174, 241 |
| 262 | 42695700 | 174, 243 |
| 263 | 57095900 | 174, 244 |
| 264 | 34848900 | 174, 246 |
| 265 | 35656000 | 174, 249 |
| 266 | 43825400 | 174, 251 |
| 267 | 8119100 | 174, 252 |
| 268 | 39133000 | 174, 254 |
| 269 | 49140600 | 174, 258 |
| 270 | 4692100 | 178, 190 |
| 271 | 13636000 | 180, 224 |
| 272 | 11883400 | 180, 247 |
| 273 | 21220600 | 182, 190 |
| 274 | 20372500 | 184, 196 |
| 275 | 6019300 | 184, 214 |
| 276 | 7915400 | 184, 224 |
| 277 | 33587500 | 184, 232 |
| 278 | 157058600 | 184, 234 |
| 279 | 215018600 | 184, 242 |
| 280 | 45208400 | 184, 247 |
| 281 | 75491700 | 184, 249 |
| 282 | 134857300 | 184, 254 |
| 283 | 30565600 | 184, 256 |
| 284 | 1647300 | 184, 257 |
| 285 | 20870400 | 184, 266 |
| 286 | 47522700 | 186, 190 |
| 287 | 3069500 | 190, 208 |
| 288 | 16317600 | 190, 231 |
| 289 | 3362700 | 190, 232 |
| 290 | 106371500 | 190, 235 |
| 291 | 23945100 | 190, 236 |
| 292 | 51566700 | 190, 240 |
| 293 | 11824700 | 190, 243 |
| 294 | 32000000 | 190, 244 |
| 295 | 49804600 | 190, 249 |
| 296 | 91908700 | 190, 251 |
| 297 | 63686600 | 190, 252 |
| 298 | 37460300 | 190, 254 |
| 299 | 14801500 | 190, 256 |
| 300 | 48245200 | 190, 263 |
| 301 | 3894900 | 194, 224 |
| 302 | 5143100 | 198, 206 |
| 303 | 65158100 | 206, 228 |
| 304 | 76827800 | 206, 231 |
| 305 | 4054200 | 206, 232 |
| 306 | 66251600 | 206, 234 |
| 307 | 64836800 | 206, 237 |
| 308 | 34587500 | 206, 239 |
| 309 | 44977200 | 206, 243 |
| 310 | 6944200 | 206, 249 |
| 311 | 1369100 | 206, 253 |
| 312 | 4178700 | 206, 254 |
| 313 | 7790200 | 224, 224 |
| 314 | 16520000 | 224, 228 |
| 315 | 59773000 | 224, 230 |
| 316 | 105471700 | 224, 232 |
| 317 | 1128800 | 224, 234 |
| 318 | 7527200 | 224, 237 |
| 319 | 25574000 | 224, 241 |
| 320 | 71088200 | 224, 242 |
| 321 | 53303900 | 224, 246 |
| 322 | 84663800 | 224, 249 |
| 323 | 241400 | 224, 251 |
| 324 | 6518300 | 224, 252 |
| 325 | 26424900 | 224, 254 |
| 326 | 43635100 | 224, 256 |
| 327 | 10292100 | 224, 265 |
| 328 | 144306500 | 237, 269 |
| 329 | 9830200 | 243, 255 |
| 330 | 2214800 | 246, 269 |
| 331 | 27695300 | 249, 255 |
| 332 | 10707400 | 252, 269 |
| 333 | 363800 | 254, 269 |
| 334 | 76193300 | 255, 269 |
| 335 | 50115000 | 102, 230, 254 |
| 336 | 13860000 | 226, 226, 228, 235 |
| 337 | 32940000 | 226, 226, 230, 231 |
| 338 | 96650000 | 226, 226, 230, 243 |
| 339 | 11210000 | 226, 226, 235, 243 |
| 340 | 71530000 | 226, 227, 228, 228 |
| 341 | 130000 | 226, 227, 228, 251 |
| 342 | 89670000 | 226, 227, 229, 238 |
| 343 | 1490000 | 226, 227, 229, 247 |
| 344 | 19680000 | 226, 227, 230, 247 |
| 345 | 360000 | 226, 227, 230, 251 |
| 346 | 14810000 | 226, 227, 231, 238 |
| 347 | 35960000 | 226, 227, 234, 238 |
| 348 | 59990000 | 226, 227, 238, 242 |
| 349 | 18200000 | 226, 227, 239, 247 |
| 350 | 490000 | 226, 227, 239, 251 |
| 351 | 3950000 | 226, 227, 247, 252 |
| 352 | 3950000 | 226, 227, 247, 253 |
| 353 | 134330000 | 226, 228, 228, 237 |
| 354 | 45050000 | 226, 228, 231, 233 |
| 355 | 59630000 | 226, 228, 231, 237 |
| 356 | 36370000 | 226, 228, 231, 241 |
| 357 | 2980000 | 226, 228, 231, 244 |
| 358 | 10030000 | 226, 228, 231, 249 |
| 359 | 3260000 | 226, 228, 231, 252 |
| 360 | 18520000 | 226, 228, 233, 234 |
| 361 | 820000 | 226, 228, 234, 245 |
| 362 | 24700000 | 226, 228, 234, 249 |
| 363 | 24270000 | 226, 228, 234, 253 |
| 364 | 39790000 | 226, 228, 235, 237 |
| 365 | 34030000 | 226, 228, 235, 252 |
| 366 | 3600000 | 226, 228, 237, 250 |
| 367 | 54820000 | 226, 228, 240, 243 |
| 368 | 26640000 | 226, 228, 240, 247 |
| 369 | 15960000 | 226, 228, 240, 251 |
| 370 | 7650000 | 226, 228, 241, 242 |
| 371 | 20600000 | 226, 228, 243, 249 |
| 372 | 20600000 | 226, 228, 244, 247 |
| 373 | 3790000 | 226, 228, 244, 251 |
| 374 | 101010000 | 226, 228, 248, 251 |
| 375 | 340000 | 226, 229, 232, 243 |
| 376 | 43910000 | 226, 229, 238, 249 |
| 377 | 33420000 | 226, 229, 241, 247 |
| 378 | 16750000 | 226, 230, 231, 232 |
| 379 | 15210000 | 226, 230, 231, 241 |
| 380 | 18530000 | 226, 230, 232, 243 |
| 381 | 141130000 | 226, 230, 234, 241 |
| 382 | 52030000 | 226, 230, 238, 245 |
| 383 | 19770000 | 226, 231, 231, 237 |
| 384 | 65100000 | 226, 231, 232, 235 |
| 385 | 15390000 | 226, 231, 232, 238 |
| 386 | 99970000 | 226, 231, 234, 237 |
| 387 | 63440000 | 226, 231, 235, 241 |
| 388 | 14610000 | 226, 231, 237, 251 |
| 389 | 39710000 | 226, 231, 238, 249 |
| 390 | 22320000 | 226, 231, 245, 247 |
| 391 | 14070000 | 226, 232, 234, 235 |
| 392 | 77780000 | 226, 232, 234, 243 |
| 393 | 19840000 | 226, 232, 234, 251 |
| 394 | 9360000 | 226, 232, 238, 243 |
| 395 | 101280000 | 226, 232, 243, 247 |
| 396 | 25950000 | 226, 232, 247, 252 |
| 397 | 25660000 | 226, 233, 234, 247 |
| 398 | 63090000 | 226, 233, 238, 247 |
| 399 | 9410000 | 226, 233, 238, 251 |
| 400 | 3720000 | 226, 233, 247, 251 |
| 401 | 650000 | 226, 233, 251, 253 |
| 402 | 52430000 | 226, 234, 234, 237 |
| 403 | 188480000 | 226, 234, 237, 239 |
| 404 | 67150000 | 226, 234, 237, 242 |
| 405 | 25800000 | 226, 234, 237, 251 |
| 406 | 6200000 | 226, 234, 240, 251 |
| 407 | 15010000 | 226, 234, 241, 247 |
| 408 | 14350000 | 226, 234, 244, 247 |
| 409 | 14640000 | 226, 234, 247, 249 |
| 410 | 32800000 | 226, 234, 247, 252 |
| 411 | 18610000 | 226, 234, 249, 251 |
| 412 | 270000 | 226, 234, 251, 253 |
| 413 | 143440000 | 226, 235, 236, 238 |
| 414 | 59520000 | 226, 235, 238, 240 |
| 415 | 46580000 | 226, 235, 244, 251 |
| 416 | 41040000 | 226, 235, 245, 247 |
| 417 | 89760000 | 226, 236, 238, 249 |
| 418 | 41940000 | 226, 236, 238, 251 |
| 419 | 6050000 | 226, 236, 247, 247 |
| 420 | 34360000 | 226, 237, 242, 251 |
| 421 | 3580000 | 226, 238, 239, 249 |
| 422 | 17970000 | 226, 238, 240, 249 |
| 423 | 8800000 | 226, 238, 242, 249 |
| 424 | 91530000 | 226, 238, 244, 247 |
| 425 | 11860000 | 226, 238, 244, 251 |
| 426 | 102490000 | 226, 239, 241, 247 |
| 427 | 21040000 | 226, 240, 242, 251 |
| 428 | 71820000 | 226, 240, 243, 247 |
| 429 | 28510000 | 226, 241, 242, 247 |
| 430 | 26140000 | 226, 241, 245, 247 |
| 431 | 25820000 | 226, 242, 245, 251 |
| 432 | 4470000 | 226, 242, 247, 249 |
| 433 | 49510000 | 226, 243, 247, 253 |
| 434 | 3110000 | 226, 244, 247, 251 |
| 435 | 3090000 | 226, 247, 249, 252 |
| 436 | 3090000 | 226, 247, 249, 253 |
| 437 | 76250000 | 227, 228, 228, 236 |
| 438 | 13760000 | 227, 228, 228, 249 |
| 439 | 71250000 | 227, 228, 232, 251 |
| 440 | 110470000 | 227, 228, 233, 247 |
| 441 | 88300000 | 227, 228, 237, 238 |
| 442 | 16640000 | 227, 228, 238, 245 |
| 443 | 23640000 | 227, 228, 241, 243 |
| 444 | 2040000 | 227, 228, 245, 251 |
| 445 | 101010000 | 227, 228, 247, 252 |
| 446 | 87170000 | 227, 229, 237, 247 |
| 447 | 15330000 | 227, 230, 230, 237 |
| 448 | 2000000 | 227, 230, 230, 245 |
| 449 | 9270000 | 227, 230, 232, 251 |
| 450 | 82110000 | 227, 230, 233, 242 |
| 451 | 74370000 | 227, 230, 233, 247 |
| 452 | 281020000 | 227, 230, 235, 240 |
| 453 | 72280000 | 227, 230, 235, 249 |
| 454 | 47800000 | 227, 230, 235, 253 |
| 455 | 15250000 | 227, 230, 237, 242 |
| 456 | 129580000 | 227, 230, 237, 247 |
| 457 | 46580000 | 227, 230, 242, 253 |
| 458 | 73020000 | 227, 230, 243, 249 |
| 459 | 98050000 | 227, 230, 244, 247 |
| 460 | 31410000 | 227, 230, 247, 252 |
| 461 | 31410000 | 227, 230, 249, 251 |
| 462 | 11680000 | 227, 231, 232, 243 |
| 463 | 130420000 | 227, 231, 238, 241 |
| 464 | 3320000 | 227, 231, 240, 247 |
| 465 | 14670000 | 227, 231, 244, 251 |
| 466 | 17820000 | 227, 232, 235, 251 |
| 467 | 57740000 | 227, 232, 238, 238 |
| 468 | 57640000 | 227, 232, 242, 251 |
| 469 | 750000 | 227, 232, 247, 251 |
| 470 | 270000 | 227, 232, 250, 251 |
| 471 | 650000 | 227, 232, 251, 252 |
| 472 | 141310000 | 227, 233, 242, 247 |
| 473 | 4470000 | 227, 233, 247, 247 |
| 474 | 25950000 | 227, 233, 247, 253 |
| 475 | 66980000 | 227, 234, 234, 241 |
| 476 | 21820000 | 227, 234, 238, 252 |
| 477 | 66980000 | 227, 235, 235, 240 |
| 478 | 4910000 | 227, 235, 235, 249 |
| 479 | 37800000 | 227, 235, 237, 247 |
| 480 | 67230000 | 227, 235, 243, 249 |
| 481 | 14190000 | 227, 235, 249, 251 |
| 482 | 90820000 | 227, 237, 237, 238 |
| 483 | 6810000 | 227, 237, 238, 238 |
| 484 | 2430000 | 227, 237, 238, 242 |
| 485 | 70000 | 227, 237, 238, 245 |
| 486 | 4090000 | 227, 237, 238, 247 |
| 487 | 89760000 | 227, 237, 238, 248 |
| 488 | 71150000 | 227, 237, 242, 247 |
| 489 | 8580000 | 227, 237, 247, 247 |
| 490 | 35750000 | 227, 237, 247, 252 |
| 491 | 35750000 | 227, 237, 247, 253 |
| 492 | 7840000 | 227, 238, 238, 244 |
| 493 | 102490000 | 227, 238, 238, 248 |
| 494 | 21680000 | 227, 238, 238, 252 |
| 495 | 201400000 | 227, 238, 240, 247 |
| 496 | 21680000 | 227, 238, 240, 251 |
| 497 | 17970000 | 227, 238, 241, 248 |
| 498 | 40000 | 227, 238, 245, 251 |
| 499 | 5270000 | 227, 238, 247, 252 |
| 500 | 5270000 | 227, 238, 249, 251 |
| 501 | 26140000 | 227, 240, 244, 247 |
| 502 | 32940000 | 227, 241, 243, 251 |
| 503 | 70440000 | 227, 242, 247, 252 |
| 504 | 24030000 | 227, 242, 249, 251 |
| 505 | 25820000 | 227, 243, 244, 251 |
| 506 | 1360000 | 227, 243, 251, 252 |
| 507 | 4470000 | 227, 244, 247, 247 |
| 508 | 1360000 | 227, 245, 251, 251 |
| 509 | 1360000 | 227, 247, 251, 253 |
| 510 | 1360000 | 227, 248, 251, 251 |
| 511 | 4800000 | 228, 228, 232, 241 |
| 512 | 3950000 | 228, 228, 236, 237 |
| 513 | 950000 | 228, 228, 236, 245 |
| 514 | 3820000 | 228, 228, 237, 244 |
| 515 | 12100000 | 228, 228, 240, 249 |
| 516 | 490000 | 228, 228, 241, 252 |
| 517 | 3950000 | 228, 229, 241, 241 |
| 518 | 35480000 | 228, 230, 237, 241 |
| 519 | 21780000 | 228, 230, 244, 249 |
| 520 | 2070000 | 228, 231, 232, 237 |
| 521 | 29240000 | 228, 231, 232, 244 |
| 522 | 680000 | 228, 231, 233, 241 |
| 523 | 18710000 | 228, 231, 236, 237 |
| 524 | 7850000 | 228, 231, 237, 245 |
| 525 | 1940000 | 228, 231, 237, 248 |
| 526 | 75970000 | 228, 231, 241, 241 |
| 527 | 7980000 | 228, 231, 241, 244 |
| 528 | 1640000 | 228, 231, 241, 248 |
| 529 | 420000 | 228, 231, 244, 252 |
| 530 | 31990000 | 228, 232, 232, 243 |
| 531 | 70890000 | 228, 232, 233, 234 |
| 532 | 24200000 | 228, 232, 234, 237 |
| 533 | 56280000 | 228, 232, 235, 241 |
| 534 | 40000 | 228, 232, 235, 244 |
| 535 | 26130000 | 228, 232, 235, 253 |
| 536 | 45880000 | 228, 232, 236, 243 |
| 537 | 6340000 | 228, 232, 237, 247 |
| 538 | 102510000 | 228, 232, 238, 241 |
| 539 | 24480000 | 228, 232, 240, 247 |
| 540 | 40000000 | 228, 232, 241, 243 |
| 541 | 16210000 | 228, 232, 241, 251 |
| 542 | 5010000 | 228, 232, 243, 249 |
| 543 | 25890000 | 228, 232, 243, 252 |
| 544 | 25890000 | 228, 232, 244, 247 |
| 545 | 25470000 | 228, 232, 245, 251 |
| 546 | 3340000 | 228, 232, 247, 249 |
| 547 | 440000 | 228, 232, 251, 252 |
| 548 | 27590000 | 228, 233, 234, 241 |
| 549 | 13350000 | 228, 233, 247, 253 |
| 550 | 2030000 | 228, 234, 236, 249 |
| 551 | 16570000 | 228, 234, 237, 237 |
| 552 | 200000 | 228, 234, 237, 245 |
| 553 | 10070000 | 228, 234, 241, 241 |
| 554 | 5900000 | 228, 234, 241, 245 |
| 555 | 6500000 | 228, 234, 241, 252 |
| 556 | 3340000 | 228, 234, 249, 252 |
| 557 | 34380000 | 228, 235, 235, 237 |
| 558 | 1290000 | 228, 235, 236, 237 |
| 559 | 4990000 | 228, 235, 237, 241 |
| 560 | 40000 | 228, 235, 244, 245 |
| 561 | 158250000 | 228, 236, 237, 238 |
| 562 | 13550000 | 228, 236, 237, 247 |
| 563 | 1730000 | 228, 236, 240, 251 |
| 564 | 3890000 | 228, 236, 241, 243 |
| 565 | 22210000 | 228, 237, 237, 242 |
| 566 | 17930000 | 228, 237, 238, 241 |
| 567 | 74940000 | 228, 237, 238, 245 |
| 568 | 2210000 | 228, 237, 238, 247 |
| 569 | 12370000 | 228, 237, 238, 249 |
| 570 | 10710000 | 228, 237, 238, 253 |
| 571 | 38110000 | 228, 237, 241, 247 |
| 572 | 11970000 | 228, 237, 241, 251 |
| 573 | 14910000 | 228, 237, 242, 248 |
| 574 | 36610000 | 228, 237, 245, 247 |
| 575 | 6130000 | 228, 237, 247, 252 |
| 576 | 6130000 | 228, 237, 247, 253 |
| 577 | 1170000 | 228, 237, 253, 253 |
| 578 | 12460000 | 228, 238, 240, 249 |
| 579 | 28140000 | 228, 238, 241, 245 |
| 580 | 15470000 | 228, 238, 241, 252 |
| 581 | 40000 | 228, 238, 244, 245 |
| 582 | 35960000 | 228, 238, 244, 249 |
| 583 | 9840000 | 228, 238, 245, 248 |
| 584 | 11940000 | 228, 240, 240, 247 |
| 585 | 13650000 | 228, 240, 240, 249 |
| 586 | 9260000 | 228, 240, 240, 251 |
| 587 | 3100000 | 228, 240, 244, 251 |
| 588 | 11230000 | 228, 240, 245, 247 |
| 589 | 10470000 | 228, 240, 247, 253 |
| 590 | 28140000 | 228, 241, 241, 243 |
| 591 | 46620000 | 228, 241, 241, 246 |
| 592 | 13650000 | 228, 241, 241, 248 |
| 593 | 24730000 | 228, 241, 241, 250 |
| 594 | 14010000 | 228, 241, 243, 252 |
| 595 | 34570000 | 228, 241, 244, 247 |
| 596 | 2130000 | 228, 241, 245, 251 |
| 597 | 10470000 | 228, 241, 249, 251 |
| 598 | 220000 | 228, 242, 244, 253 |
| 599 | 220000 | 228, 243, 244, 249 |
| 600 | 1360000 | 228, 243, 252, 252 |
| 601 | 220000 | 228, 244, 244, 247 |
| 602 | 220000 | 228, 244, 245, 251 |
| 603 | 26970000 | 228, 244, 247, 253 |
| 604 | 1000000 | 228, 244, 249, 251 |
| 605 | 3250000 | 228, 245, 248, 251 |
| 606 | 1360000 | 228, 245, 251, 252 |
| 607 | 650000 | 228, 247, 252, 253 |
| 608 | 650000 | 228, 249, 251, 253 |
| 609 | 82630000 | 229, 232, 232, 235 |
| 610 | 10600000 | 229, 232, 232, 251 |
| 611 | 22340000 | 229, 232, 233, 247 |
| 612 | 28460000 | 229, 232, 235, 249 |
| 613 | 7990000 | 229, 232, 238, 249 |
| 614 | 24150000 | 229, 232, 247, 252 |
| 615 | 14560000 | 229, 232, 249, 251 |
| 616 | 6010000 | 229, 233, 238, 247 |
| 617 | 1130000 | 229, 233, 247, 249 |
| 618 | 34380000 | 229, 234, 234, 237 |
| 619 | 4820000 | 229, 235, 244, 249 |
| 620 | 2030000 | 229, 235, 249, 249 |
| 621 | 3340000 | 229, 236, 249, 251 |
| 622 | 2030000 | 229, 237, 247, 249 |
| 623 | 22220000 | 229, 240, 241, 247 |
| 624 | 8780000 | 229, 241, 244, 251 |
| 625 | 4470000 | 229, 243, 249, 249 |
| 626 | 3110000 | 229, 243, 249, 252 |
| 627 | 4470000 | 229, 244, 247, 249 |
| 628 | 28120000 | 229, 245, 247, 252 |
| 629 | 24710000 | 230, 230, 232, 233 |
| 630 | 27870000 | 230, 230, 232, 253 |
| 631 | 14610000 | 230, 230, 233, 237 |
| 632 | 51740000 | 230, 230, 233, 245 |
| 633 | 127640000 | 230, 230, 237, 240 |
| 634 | 7300000 | 230, 230, 237, 249 |
| 635 | 23140000 | 230, 230, 242, 243 |
| 636 | 7300000 | 230, 230, 244, 249 |
| 637 | 104530000 | 230, 230, 245, 253 |
| 638 | 7580000 | 230, 230, 252, 253 |
| 639 | 13500000 | 230, 231, 232, 232 |
| 640 | 16980000 | 230, 231, 243, 249 |
| 641 | 46030000 | 230, 231, 244, 244 |
| 642 | 60490000 | 230, 232, 232, 235 |
| 643 | 24330000 | 230, 232, 232, 243 |
| 644 | 114310000 | 230, 232, 232, 251 |
| 645 | 189970000 | 230, 232, 233, 247 |
| 646 | 123550000 | 230, 232, 235, 236 |
| 647 | 94780000 | 230, 232, 235, 249 |
| 648 | 22350000 | 230, 232, 235, 253 |
| 649 | 94530000 | 230, 232, 237, 238 |
| 650 | 118190000 | 230, 232, 244, 247 |
| 651 | 11940000 | 230, 232, 247, 252 |
| 652 | 58470000 | 230, 232, 249, 251 |
| 653 | 1260000 | 230, 232, 251, 252 |
| 654 | 66630000 | 230, 233, 233, 242 |
| 655 | 25170000 | 230, 233, 241, 247 |
| 656 | 35640000 | 230, 233, 242, 244 |
| 657 | 94280000 | 230, 233, 242, 253 |
| 658 | 20450000 | 230, 233, 247, 248 |
| 659 | 136860000 | 230, 233, 247, 253 |
| 660 | 26880000 | 230, 234, 237, 237 |
| 661 | 98560000 | 230, 234, 237, 241 |
| 662 | 16290000 | 230, 235, 235, 252 |
| 663 | 12270000 | 230, 235, 237, 240 |
| 664 | 45860000 | 230, 235, 237, 249 |
| 665 | 133120000 | 230, 235, 240, 240 |
| 666 | 7770000 | 230, 235, 244, 249 |
| 667 | 32760000 | 230, 235, 249, 253 |
| 668 | 8210000 | 230, 236, 237, 251 |
| 669 | 116690000 | 230, 237, 237, 238 |
| 670 | 35220000 | 230, 237, 238, 249 |
| 671 | 56950000 | 230, 237, 240, 242 |
| 672 | 9270000 | 230, 237, 240, 251 |
| 673 | 2520000 | 230, 237, 241, 247 |
| 674 | 128680000 | 230, 237, 242, 243 |
| 675 | 124690000 | 230, 237, 243, 249 |
| 676 | 7550000 | 230, 237, 244, 247 |
| 677 | 6200000 | 230, 237, 244, 251 |
| 678 | 38920000 | 230, 237, 247, 252 |
| 679 | 47200000 | 230, 238, 240, 249 |
| 680 | 4330000 | 230, 238, 244, 247 |
| 681 | 60380000 | 230, 238, 244, 249 |
| 682 | 31990000 | 230, 240, 241, 247 |
| 683 | 10640000 | 230, 240, 242, 253 |
| 684 | 101780000 | 230, 240, 243, 249 |
| 685 | 1480000 | 230, 240, 245, 251 |
| 686 | 69860000 | 230, 242, 242, 253 |
| 687 | 18340000 | 230, 242, 253, 253 |
| 688 | 104950000 | 230, 243, 243, 249 |
| 689 | 16390000 | 230, 243, 252, 252 |
| 690 | 51230000 | 230, 244, 245, 247 |
| 691 | 1690000 | 230, 244, 247, 248 |
| 692 | 6100000 | 230, 244, 247, 252 |
| 693 | 72000000 | 230, 244, 247, 253 |
| 694 | 39050000 | 230, 245, 249, 251 |
| 695 | 9810000 | 230, 247, 248, 252 |
| 696 | 31430000 | 230, 248, 249, 251 |
| 697 | 1960000 | 230, 249, 251, 252 |
| 698 | 1760000 | 231, 231, 232, 240 |
| 699 | 55260000 | 231, 231, 232, 244 |
| 700 | 23140000 | 231, 231, 243, 243 |
| 701 | 121890000 | 231, 232, 236, 243 |
| 702 | 117660000 | 231, 232, 236, 251 |
| 703 | 36360000 | 231, 232, 237, 247 |
| 704 | 47100000 | 231, 232, 238, 241 |
| 705 | 10000000 | 231, 232, 238, 249 |
| 706 | 2470000 | 231, 232, 238, 252 |
| 707 | 36160000 | 231, 232, 240, 247 |
| 708 | 32240000 | 231, 232, 241, 243 |
| 709 | 22150000 | 231, 232, 241, 251 |
| 710 | 25240000 | 231, 232, 243, 245 |
| 711 | 6970000 | 231, 232, 243, 249 |
| 712 | 37930000 | 231, 232, 243, 252 |
| 713 | 98320000 | 231, 232, 244, 251 |
| 714 | 13910000 | 231, 232, 251, 253 |
| 715 | 55500000 | 231, 233, 247, 249 |
| 716 | 16290000 | 231, 234, 234, 252 |
| 717 | 42100000 | 231, 234, 237, 245 |
| 718 | 37550000 | 231, 234, 237, 252 |
| 719 | 10800000 | 231, 235, 241, 244 |
| 720 | 15920000 | 231, 235, 243, 244 |
| 721 | 8290000 | 231, 235, 244, 244 |
| 722 | 3920000 | 231, 235, 244, 253 |
| 723 | 18980000 | 231, 235, 249, 249 |
| 724 | 3830000 | 231, 236, 236, 251 |
| 725 | 26880000 | 231, 236, 237, 247 |
| 726 | 9090000 | 231, 236, 238, 241 |
| 727 | 41490000 | 231, 236, 238, 244 |
| 728 | 41780000 | 231, 236, 238, 252 |
| 729 | 138620000 | 231, 236, 243, 243 |
| 730 | 28340000 | 231, 236, 243, 244 |
| 731 | 62990000 | 231, 236, 249, 251 |
| 732 | 1230000 | 231, 237, 237, 242 |
| 733 | 2210000 | 231, 237, 238, 247 |
| 734 | 14800000 | 231, 237, 241, 251 |
| 735 | 9940000 | 231, 237, 242, 242 |
| 736 | 35450000 | 231, 237, 245, 247 |
| 737 | 18980000 | 231, 237, 247, 249 |
| 738 | 5690000 | 231, 237, 247, 253 |
| 739 | 13350000 | 231, 238, 240, 244 |
| 740 | 87940000 | 231, 238, 241, 245 |
| 741 | 12880000 | 231, 238, 241, 248 |
| 742 | 4330000 | 231, 239, 245, 247 |
| 743 | 2330000 | 231, 240, 240, 247 |
| 744 | 9160000 | 231, 240, 244, 251 |
| 745 | 41400000 | 231, 240, 245, 247 |
| 746 | 20970000 | 231, 240, 247, 253 |
| 747 | 101290000 | 231, 241, 241, 243 |
| 748 | 20970000 | 231, 241, 249, 251 |
| 749 | 69860000 | 231, 243, 243, 253 |
| 750 | 51230000 | 231, 243, 244, 249 |
| 751 | 24880000 | 231, 243, 249, 249 |
| 752 | 26840000 | 231, 243, 249, 252 |
| 753 | 1960000 | 231, 244, 251, 253 |
| 754 | 23200000 | 231, 245, 247, 248 |
| 755 | 41250000 | 231, 247, 249, 252 |
| 756 | 1960000 | 231, 247, 252, 253 |
| 757 | 19630000 | 231, 249, 249, 251 |
| 758 | 125960000 | 232, 232, 234, 235 |
| 759 | 1250000 | 232, 232, 234, 251 |
| 760 | 9020000 | 232, 232, 235, 238 |
| 761 | 14440000 | 232, 232, 235, 243 |
| 762 | 41760000 | 232, 232, 235, 246 |
| 763 | 1760000 | 232, 232, 238, 243 |
| 764 | 37620000 | 232, 232, 238, 251 |
| 765 | 15930000 | 232, 232, 243, 246 |
| 766 | 53860000 | 232, 232, 243, 251 |
| 767 | 73710000 | 232, 232, 246, 251 |
| 768 | 6340000 | 232, 232, 250, 251 |
| 769 | 25730000 | 232, 232, 251, 252 |
| 770 | 25730000 | 232, 232, 251, 253 |
| 771 | 57380000 | 232, 233, 234, 247 |
| 772 | 42390000 | 232, 233, 239, 247 |
| 773 | 16900000 | 232, 233, 242, 247 |
| 774 | 28860000 | 232, 233, 243, 243 |
| 775 | 5290000 | 232, 233, 247, 247 |
| 776 | 63370000 | 232, 233, 247, 250 |
| 777 | 40630000 | 232, 233, 247, 252 |
| 778 | 40630000 | 232, 233, 247, 253 |
| 779 | 2030000 | 232, 234, 234, 237 |
| 780 | 109400000 | 232, 234, 235, 236 |
| 781 | 59670000 | 232, 234, 235, 253 |
| 782 | 69570000 | 232, 234, 237, 237 |
| 783 | 65920000 | 232, 234, 237, 251 |
| 784 | 16070000 | 232, 234, 238, 241 |
| 785 | 22520000 | 232, 234, 238, 249 |
| 786 | 36770000 | 232, 234, 240, 251 |
| 787 | 24540000 | 232, 234, 243, 249 |
| 788 | 38030000 | 232, 234, 243, 252 |
| 789 | 87050000 | 232, 234, 245, 251 |
| 790 | 6130000 | 232, 234, 248, 251 |
| 791 | 1270000 | 232, 234, 251, 253 |
| 792 | 69570000 | 232, 235, 236, 236 |
| 793 | 90830000 | 232, 235, 236, 239 |
| 794 | 13480000 | 232, 235, 236, 243 |
| 795 | 87910000 | 232, 235, 238, 240 |
| 796 | 30990000 | 232, 235, 238, 244 |
| 797 | 40240000 | 232, 235, 241, 243 |
| 798 | 20370000 | 232, 235, 247, 249 |
| 799 | 19930000 | 232, 235, 249, 251 |
| 800 | 76030000 | 232, 236, 237, 243 |
| 801 | 86430000 | 232, 236, 238, 243 |
| 802 | 36430000 | 232, 236, 238, 251 |
| 803 | 90500000 | 232, 236, 242, 251 |
| 804 | 18130000 | 232, 236, 245, 251 |
| 805 | 58970000 | 232, 237, 238, 238 |
| 806 | 10980000 | 232, 237, 238, 247 |
| 807 | 57170000 | 232, 237, 243, 243 |
| 808 | 22690000 | 232, 237, 246, 247 |
| 809 | 310000 | 232, 237, 247, 251 |
| 810 | 261690000 | 232, 237, 247, 252 |
| 811 | 261690000 | 232, 237, 247, 253 |
| 812 | 41960000 | 232, 238, 238, 245 |
| 813 | 41960000 | 232, 238, 241, 243 |
| 814 | 1710000 | 232, 238, 243, 245 |
| 815 | 3890000 | 232, 238, 243, 249 |
| 816 | 81870000 | 232, 238, 244, 247 |
| 817 | 71360000 | 232, 238, 245, 251 |
| 818 | 53430000 | 232, 238, 247, 252 |
| 819 | 30930000 | 232, 238, 249, 251 |
| 820 | 35630000 | 232, 240, 243, 247 |
| 821 | 4110000 | 232, 240, 244, 247 |
| 822 | 3670000 | 232, 240, 247, 252 |
| 823 | 1710000 | 232, 241, 243, 243 |
| 824 | 71360000 | 232, 241, 243, 251 |
| 825 | 44610000 | 232, 242, 242, 251 |
| 826 | 60160000 | 232, 242, 245, 251 |
| 827 | 22690000 | 232, 243, 243, 246 |
| 828 | 16150000 | 232, 243, 243, 249 |
| 829 | 44610000 | 232, 243, 243, 250 |
| 830 | 30790000 | 232, 243, 243, 253 |
| 831 | 16150000 | 232, 243, 244, 247 |
| 832 | 65750000 | 232, 243, 246, 249 |
| 833 | 142460000 | 232, 243, 246, 252 |
| 834 | 113780000 | 232, 243, 249, 250 |
| 835 | 8700000 | 232, 243, 249, 252 |
| 836 | 8700000 | 232, 243, 249, 253 |
| 837 | 11980000 | 232, 243, 250, 252 |
| 838 | 19250000 | 232, 244, 244, 247 |
| 839 | 4630000 | 232, 244, 251, 251 |
| 840 | 4870000 | 232, 245, 251, 252 |
| 841 | 17340000 | 232, 246, 249, 251 |
| 842 | 9450000 | 232, 249, 250, 251 |
| 843 | 203120000 | 232, 249, 251, 252 |
| 844 | 203120000 | 232, 249, 251, 253 |
| 845 | 125960000 | 233, 233, 234, 234 |
| 846 | 33240000 | 233, 234, 234, 245 |
| 847 | 59690000 | 233, 234, 234, 252 |
| 848 | 58190000 | 233, 234, 236, 247 |
| 849 | 25800000 | 233, 234, 237, 238 |
| 850 | 54810000 | 233, 234, 240, 247 |
| 851 | 76640000 | 233, 234, 244, 247 |
| 852 | 686400000 | 233, 234, 247, 252 |
| 853 | 703250000 | 233, 234, 247, 253 |
| 854 | 48270000 | 233, 235, 235, 249 |
| 855 | 143050000 | 233, 235, 244, 251 |
| 856 | 22690000 | 233, 236, 247, 247 |
| 857 | 6740000 | 233, 236, 251, 251 |
| 858 | 76030000 | 233, 237, 237, 242 |
| 859 | 39050000 | 233, 237, 238, 242 |
| 860 | 12600000 | 233, 237, 238, 251 |
| 861 | 102650000 | 233, 237, 242, 242 |
| 862 | 550000 | 233, 237, 243, 247 |
| 863 | 18130000 | 233, 237, 244, 251 |
| 864 | 42340000 | 233, 239, 245, 247 |
| 865 | 20370000 | 233, 239, 247, 249 |
| 866 | 20370000 | 233, 240, 247, 247 |
| 867 | 4110000 | 233, 241, 245, 247 |
| 868 | 22490000 | 233, 241, 247, 251 |
| 869 | 3670000 | 233, 241, 247, 253 |
| 870 | 22690000 | 233, 242, 243, 247 |
| 871 | 169610000 | 233, 242, 247, 249 |
| 872 | 29370000 | 233, 243, 244, 251 |
| 873 | 187220000 | 233, 243, 247, 253 |
| 874 | 158540000 | 233, 244, 247, 251 |
| 875 | 4870000 | 233, 244, 251, 253 |
| 876 | 19250000 | 233, 245, 245, 247 |
| 877 | 103860000 | 233, 245, 247, 247 |
| 878 | 7340000 | 233, 245, 251, 251 |
| 879 | 73090000 | 233, 247, 247, 252 |
| 880 | 55760000 | 233, 247, 247, 253 |
| 881 | 7180000 | 233, 247, 251, 253 |
| 882 | 16630000 | 233, 248, 251, 251 |
| 883 | 38040000 | 234, 234, 237, 240 |
| 884 | 72500000 | 234, 234, 237, 244 |
| 885 | 74860000 | 234, 234, 237, 246 |
| 886 | 254910000 | 234, 234, 237, 249 |
| 887 | 118220000 | 234, 234, 237, 252 |
| 888 | 181400000 | 234, 234, 237, 253 |
| 889 | 4870000 | 234, 234, 238, 249 |
| 890 | 47520000 | 234, 234, 241, 252 |
| 891 | 47770000 | 234, 234, 245, 252 |
| 892 | 68650000 | 234, 234, 249, 251 |
| 893 | 718320000 | 234, 235, 237, 237 |
| 894 | 19430000 | 234, 235, 244, 244 |
| 895 | 1290000 | 234, 235, 244, 249 |
| 896 | 34910000 | 234, 236, 249, 251 |
| 897 | 10020000 | 234, 237, 237, 239 |
| 898 | 18570000 | 234, 237, 237, 242 |
| 899 | 261040000 | 234, 237, 237, 246 |
| 900 | 92710000 | 234, 237, 237, 252 |
| 901 | 92710000 | 234, 237, 237, 253 |
| 902 | 2430000 | 234, 237, 238, 240 |
| 903 | 18260000 | 234, 237, 238, 252 |
| 904 | 32460000 | 234, 237, 241, 242 |
| 905 | 20500000 | 234, 237, 241, 247 |
| 906 | 30490000 | 234, 237, 241, 251 |
| 907 | 50050000 | 234, 237, 242, 252 |
| 908 | 32040000 | 234, 237, 243, 245 |
| 909 | 14130000 | 234, 237, 243, 253 |
| 910 | 6200000 | 234, 238, 241, 252 |
| 911 | 6810000 | 234, 238, 249, 252 |
| 912 | 6200000 | 234, 240, 241, 251 |
| 913 | 34070000 | 234, 241, 241, 243 |
| 914 | 26240000 | 234, 241, 247, 252 |
| 915 | 20000000 | 234, 241, 249, 251 |
| 916 | 21490000 | 234, 243, 249, 252 |
| 917 | 28600000 | 234, 244, 244, 247 |
| 918 | 81360000 | 234, 244, 247, 252 |
| 919 | 54170000 | 234, 247, 248, 252 |
| 920 | 435450000 | 234, 247, 252, 252 |
| 921 | 433080000 | 234, 247, 252, 253 |
| 922 | 670800000 | 235, 235, 236, 236 |
| 923 | 85570000 | 235, 235, 236, 240 |
| 924 | 74840000 | 235, 235, 236, 244 |
| 925 | 207380000 | 235, 235, 236, 249 |
| 926 | 74860000 | 235, 235, 237, 247 |
| 927 | 4870000 | 235, 235, 239, 249 |
| 928 | 16620000 | 235, 235, 240, 245 |
| 929 | 2980000 | 235, 235, 241, 244 |
| 930 | 15970000 | 235, 235, 245, 249 |
| 931 | 68650000 | 235, 235, 249, 250 |
| 932 | 156730000 | 235, 235, 249, 252 |
| 933 | 222960000 | 235, 236, 237, 247 |
| 934 | 31800000 | 235, 236, 238, 244 |
| 935 | 62160000 | 235, 236, 243, 244 |
| 936 | 2950000 | 235, 236, 243, 249 |
| 937 | 69190000 | 235, 236, 245, 251 |
| 938 | 10910000 | 235, 237, 238, 249 |
| 939 | 23960000 | 235, 237, 240, 247 |
| 940 | 17970000 | 235, 237, 244, 247 |
| 941 | 9440000 | 235, 237, 247, 249 |
| 942 | 5680000 | 235, 237, 247, 253 |
| 943 | 15010000 | 235, 238, 240, 249 |
| 944 | 55920000 | 235, 238, 244, 245 |
| 945 | 510000 | 235, 239, 244, 249 |
| 946 | 3070000 | 235, 239, 249, 249 |
| 947 | 15010000 | 235, 240, 241, 247 |
| 948 | 3070000 | 235, 240, 247, 249 |
| 949 | 55920000 | 235, 241, 243, 244 |
| 950 | 510000 | 235, 241, 245, 247 |
| 951 | 570000 | 235, 241, 247, 253 |
| 952 | 4730000 | 235, 243, 244, 249 |
| 953 | 59880000 | 235, 244, 249, 250 |
| 954 | 33330000 | 235, 245, 245, 247 |
| 955 | 74540000 | 235, 247, 249, 253 |
| 956 | 3600000 | 235, 247, 253, 253 |
| 957 | 20370000 | 235, 249, 249, 250 |
| 958 | 34540000 | 235, 249, 249, 252 |
| 959 | 34540000 | 235, 249, 249, 253 |
| 960 | 1220000 | 235, 249, 251, 252 |
| 961 | 9770000 | 236, 236, 243, 243 |
| 962 | 3950000 | 236, 237, 238, 238 |
| 963 | 9360000 | 236, 237, 238, 247 |
| 964 | 49320000 | 236, 237, 243, 247 |
| 965 | 12040000 | 236, 237, 243, 251 |
| 966 | 9440000 | 236, 237, 246, 247 |
| 967 | 5140000 | 236, 238, 240, 251 |
| 968 | 19780000 | 236, 238, 241, 243 |
| 969 | 31840000 | 236, 238, 243, 252 |
| 970 | 36980000 | 236, 238, 244, 249 |
| 971 | 8090000 | 236, 238, 245, 251 |
| 972 | 24100000 | 236, 239, 249, 251 |
| 973 | 27600000 | 236, 241, 243, 243 |
| 974 | 18930000 | 236, 241, 243, 251 |
| 975 | 47750000 | 236, 242, 247, 252 |
| 976 | 21040000 | 236, 243, 243, 252 |
| 977 | 6980000 | 236, 243, 249, 251 |
| 978 | 47970000 | 236, 245, 249, 251 |
| 979 | 6290000 | 236, 245, 251, 251 |
| 980 | 177460000 | 236, 246, 249, 251 |
| 981 | 720000 | 236, 248, 251, 251 |
| 982 | 6010000 | 236, 249, 250, 251 |
| 983 | 6610000 | 237, 238, 238, 245 |
| 984 | 32150000 | 237, 238, 240, 242 |
| 985 | 67150000 | 237, 238, 241, 247 |
| 986 | 42670000 | 237, 238, 244, 251 |
| 987 | 29340000 | 237, 238, 245, 247 |
| 988 | 36980000 | 237, 238, 245, 248 |
| 989 | 3070000 | 237, 238, 247, 248 |
| 990 | 28910000 | 237, 238, 247, 252 |
| 991 | 9510000 | 237, 238, 247, 253 |
| 992 | 29340000 | 237, 241, 243, 247 |
| 993 | 3070000 | 237, 241, 246, 247 |
| 994 | 4690000 | 237, 241, 247, 251 |
| 995 | 21040000 | 237, 243, 244, 251 |
| 996 | 75050000 | 237, 243, 247, 252 |
| 997 | 108550000 | 237, 243, 247, 253 |
| 998 | 47970000 | 237, 244, 248, 251 |
| 999 | 6290000 | 237, 244, 250, 251 |
| 1000 | 21220000 | 237, 245, 247, 251 |
| 1001 | 177460000 | 237, 247, 248, 251 |
| 1002 | 43620000 | 237, 247, 249, 252 |
| 1003 | 43620000 | 237, 247, 249, 253 |
| 1004 | 69510000 | 237, 247, 251, 252 |
| 1005 | 62780000 | 237, 247, 251, 253 |
| 1006 | 102190000 | 237, 247, 252, 253 |
| 1007 | 102190000 | 237, 247, 253, 253 |
| 1008 | 1750000 | 238, 238, 245, 245 |
| 1009 | 14420000 | 238, 238, 245, 248 |
| 1010 | 5140000 | 238, 238, 245, 252 |
| 1011 | 14420000 | 238, 239, 244, 249 |
| 1012 | 5140000 | 238, 240, 245, 251 |
| 1013 | 1750000 | 238, 240, 247, 252 |
| 1014 | 1750000 | 238, 240, 247, 253 |
| 1015 | 3490000 | 238, 241, 243, 245 |
| 1016 | 5140000 | 238, 241, 243, 252 |
| 1017 | 30060000 | 238, 243, 245, 252 |
| 1018 | 73320000 | 238, 244, 247, 253 |
| 1019 | 310000 | 238, 244, 249, 250 |
| 1020 | 30060000 | 238, 245, 245, 251 |
| 1021 | 34310000 | 238, 245, 249, 251 |
| 1022 | 3830000 | 238, 247, 249, 253 |
| 1023 | 23990000 | 239, 244, 249, 251 |
| 1024 | 14700000 | 239, 245, 247, 252 |
| 1025 | 16540000 | 239, 247, 249, 252 |
| 1026 | 20370000 | 239, 249, 249, 251 |
| 1027 | 5140000 | 240, 241, 243, 251 |
| 1028 | 30060000 | 240, 243, 244, 251 |
| 1029 | 106960000 | 240, 243, 247, 253 |
| 1030 | 16540000 | 240, 247, 247, 252 |
| 1031 | 1750000 | 241, 241, 243, 243 |
| 1032 | 48340000 | 241, 242, 247, 252 |
| 1033 | 30060000 | 241, 243, 243, 252 |
| 1034 | 58620000 | 241, 243, 249, 251 |
| 1035 | 3830000 | 241, 247, 247, 253 |
| 1036 | 20370000 | 241, 247, 248, 251 |
| 1037 | 4380000 | 241, 247, 251, 252 |
| 1038 | 4380000 | 241, 247, 251, 253 |
| 1039 | 28960000 | 241, 249, 251, 252 |
| 1040 | 28960000 | 241, 249, 251, 253 |
| 1041 | 15990000 | 242, 242, 247, 252 |
| 1042 | 47380000 | 242, 243, 249, 249 |
| 1043 | 55170000 | 242, 243, 249, 252 |
| 1044 | 7790000 | 242, 243, 252, 252 |
| 1045 | 94770000 | 242, 244, 247, 249 |
| 1046 | 55170000 | 242, 244, 247, 252 |
| 1047 | 53510000 | 242, 245, 249, 251 |
| 1048 | 33970000 | 242, 247, 249, 252 |
| 1049 | 39330000 | 242, 247, 252, 252 |
| 1050 | 40980000 | 242, 247, 252, 253 |
| 1051 | 1650000 | 242, 249, 251, 253 |
| 1052 | 15990000 | 243, 243, 247, 253 |
| 1053 | 1660000 | 243, 244, 249, 251 |
| 1054 | 15580000 | 243, 244, 251, 252 |
| 1055 | 33970000 | 243, 249, 249, 250 |
| 1056 | 36240000 | 243, 249, 249, 252 |
| 1057 | 36240000 | 243, 249, 249, 253 |
| 1058 | 55170000 | 244, 244, 247, 251 |
| 1059 | 10680000 | 244, 244, 247, 253 |
| 1060 | 47380000 | 244, 245, 247, 247 |
| 1061 | 7790000 | 244, 245, 251, 251 |
| 1062 | 32500000 | 244, 247, 249, 252 |
| 1063 | 32500000 | 244, 247, 249, 253 |
| 1064 | 145400000 | 244, 247, 251, 252 |
| 1065 | 147050000 | 244, 247, 251, 253 |
| 1066 | 1650000 | 244, 249, 250, 251 |
| 1067 | 10680000 | 245, 245, 247, 252 |
| 1068 | 128440000 | 245, 247, 247, 252 |
| 1069 | 94470000 | 245, 247, 247, 253 |
| 1070 | 33970000 | 245, 247, 249, 251 |
| 1071 | 131450000 | 247, 247, 252, 252 |
| 1072 | 155990000 | 247, 247, 252, 253 |
| 1073 | 24660000 | 247, 247, 253, 253 |
| 1074 | 200510000 | 247, 249, 251, 252 |
| 1075 | 200260000 | 247, 249, 251, 253 |
| 1076 | 9510000 | 247, 251, 252, 253 |
| 1077 | 9510000 | 247, 251, 253, 253 |
| 1078 | 130000 | 248, 248, 251, 251 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * a * b * b` | -3000 |
| `a * a * b * c` | 8500 |
| `a * b` | -19502642314698780637/896300000000 |
| `a * c` | -722497809507387503/224075000000 |
| `1` | -47684144774550991555282657352139952419579/3599960438248850000000000000000000 |
| `a * b * b * v` | -25482000 |
| `a * a * b * u` | -118150100 |
| `a * b * c * v` | 1500 |
| `b * v` | -1215501783956667401/896300000000 |
| `a * u` | -1968596602046215931/224075000000 |
| `a * b * v` | 884464363/100 |
| `a * a * b` | 1010992439/25 |
| `a * b * e * u` | -3900 |
| `a * c * v` | -179809/50 |
| `a * a * c` | 1550840433/100 |
| `a * c * e * u` | -3800 |
| `v` | 615446197159225150897337/224075000000000000 |
| `a` | 6509689800514731292307621/448150000000000000 |
| `e * u` | -39759931134404257/5557060000000 |
| `a * b * f * q` | -400 |
| `a * a * b * f` | 4400 |
| `a * b * p` | 2019183853/100 |
| `a * c * f * q` | 12300 |
| `a * a * c * f` | -49826000 |
| `a * c * p` | 386557/100 |
| `a * a * c * p` | 4500 |
| `f * q` | -696395279725856767/896300000000 |
| `a * f` | -10025763466214767687/448150000000 |
| `p` | 17207713656381535789988653/896300000000000000 |
| `a * p` | -3690688390348451/50000000 |
| `a * b * h * p` | -300 |
| `a * c * h * p` | -700 |
| `h * p` | -6371390557615572031/224075000000 |
| `a * b * p * w` | 2800 |
| `a * b * q * r` | -5800 |
| `a * a * b * r` | -1300 |
| `a * c * p * w` | -2700 |
| `a * c * q * r` | -2800 |
| `a * a * c * r` | -4000 |
| `p * w` | -5558407940084083711/448150000000 |
| `q * r` | 161625517225499/179260000000 |
| `a * r` | -14547969635126637/896300000000 |
| `a * a * b * j` | -400 |
| `a * a * c * j` | -1000 |
| `a * j` | 1974466337318809/896300000000 |
| `a * b * b * q` | -98343000 |
| `a * b * b` | 2484126963/50 |
| `a * b * c * q` | 2500 |
| `a * b * c` | -96799/100 |
| `b * q` | -19216350723538860579/896300000000 |
| `b` | 21884906665875770467969073523/2008384225000000000000 |
| `a * b * b * h` | 1000 |
| `a * b * c * h` | -100 |
| `b * h` | -22558370404300468657909/2008384225000000 |
| `a * b * h * u` | -500 |
| `a * c * h * u` | -1800 |
| `h * u` | -1018602525583703959/896300000000 |
| `a * b * b * w` | -6509500 |
| `a * b * c * w` | -300 |
| `b * w` | -272948673497013659/896300000000 |
| `a * b * b * k` | -3752400 |
| `a * b * c * k` | 1000 |
| `b * k` | -1097277112644844861/896300000000 |
| `a * b * q` | 2161542691/100 |
| `a * b * e * p` | -40412200 |
| `a * b * c * e` | -3400 |
| `a * c * q` | 230849/100 |
| `a * c * c * q` | -3000 |
| `a * c * e * p` | 3500 |
| `a * c * c * e` | 5000 |
| `q` | 1249049156300485059888391/896300000000000000 |
| `c * q` | -1744944403314771/448150000000 |
| `e * p` | -535716477080397/20000000 |
| `c * e` | -33613232761769811173/27785300000000 |
| `a * c * c * v` | 3000 |
| `c * v` | -1813051757765508175307607/803293637900000000 |
| `a * b * f * v` | 3700 |
| `a * b * u` | 2670079297/100 |
| `a * c * f * v` | 400 |
| `a * c * u` | 4641396971/896300 |
| `a * c * c` | -7986/25 |
| `f * v` | -3685081007249890505119999/803293637900000000 |
| `u` | 179869985630990459434578911707288307/7199920876497700000000000000 |
| `c` | 37642104732355086113020282315290889/3599960438248850000000000000 |
| `a * b * p * v` | -31110300 |
| `a * b * q * u` | 5300 |
| `a * c * p * v` | 1000 |
| `a * c * q * u` | -1100 |
| `p * v` | -14426513809312395913/896300000000 |
| `q * u` | -19081417887253681/224075000000 |
| `a * b * r * k` | 2200 |
| `a * b * e * r` | -2800 |
| `a * b * k` | 112332312/25 |
| `a * b * w * j` | -2200 |
| `a * b * w` | 33773696/25 |
| `a * b * e * j` | -1600 |
| `a * c * r * k` | 4000 |
| `a * c * e * r` | -3300 |
| `a * c * k` | -19762/25 |
| `a * c * w * j` | -4000 |
| `a * c * w` | 90607/20 |
| `a * c * e * j` | 100 |
| `r * k` | 321541679909109/44815000000 |
| `e * r` | -1475432110645348697/896300000000 |
| `k` | 1604406228232148946148749/179260000000000000 |
| `w * j` | 1193298873722891/179260000000 |
| `w` | 13253890265535042614883297/896300000000000000 |
| `e * j` | -4690805628576719/448150000000 |
| `a * b * f * w` | 3500 |
| `a * b * h * r` | 2100 |
| `a * b * f * h` | -2500 |
| `a * b * r` | 181123/100 |
| `a * c * f * w` | 400 |
| `a * c * h * r` | 800 |
| `a * c * f * h` | -900 |
| `a * c * r` | 105113/100 |
| `f * w` | -32689986153410585883/896300000000 |
| `h * r` | -18803325094067879771/1606707380000000 |
| `f * h` | 2282245281713989/448150000000 |
| `r` | 367416911282224777368096107/4016768450000000000000 |
| `a * b * f * k` | -8200 |
| `a * b * h * j` | 2900 |
| `a * b * j` | -729253/100 |
| `a * c * f * k` | -3200 |
| `a * c * h * j` | 5000 |
| `a * c * j` | -1958/25 |
| `f * k` | -50228917012834152543/896300000000 |
| `h * j` | -17620101984271277/896300000000 |
| `j` | 15694115378869073956572639/1004192112500000000000 |
| `a * b * u * w` | 400 |
| `a * b * v * r` | -400 |
| `a * c * u * w` | -300 |
| `a * c * v * r` | 700 |
| `u * w` | -9844576707325245807/224075000000 |
| `v * r` | 8044777065269503/448150000000 |
| `a * b * h` | -98373/50 |
| `a * c * h` | 138809/100 |
| `h` | 3295093363242027756488557663/1004192112500000000000 |
| `a * c * c * h` | -1000 |
| `c * h` | 13986074245059107/896300000000 |
| `b * b * e * q` | -3100 |
| `a * b * b * e` | -28700 |
| `b * e` | -10456048251141226129/896300000000 |
| `a * a * p` | -68496/25 |
| `b * e * p * v` | -2925000 |
| `b * c * e * v` | -4800 |
| `b * e * q * u` | -1000 |
| `b * c * e * q` | -2200 |
| `a * p * v` | 243978337/50 |
| `a * q * u` | 89880367/100 |
| `b * e * f * k` | 4800 |
| `b * e * e * f` | -5500 |
| `b * e * k` | 11923/50 |
| `b * e * j` | -469827/50 |
| `b * e * e * j` | 700 |
| `a * b * e * f` | 3300 |
| `a * f * k` | 3835077809/100 |
| `a * e * f` | 187003049/50 |
| `a * k` | -127847348212271/20000000 |
| `a * e * j` | -4075409937/896300 |
| `e * f` | -159445076554890111/89630000000 |
| `b * e * r * k` | -5000 |
| `b * e * e * r` | 4800 |
| `b * e * w * j` | 3200 |
| `b * e * w` | 147462679/100 |
| `a * r * k` | -295267/100 |
| `a * e * r` | 76046145/8963 |
| `a * w * j` | -484277/100 |
| `a * w` | -7939202975662441/112037500000 |
| `b * e * f * w` | 2700 |
| `b * e * h * r` | -2500 |
| `b * e * f * h` | -3400 |
| `b * e * r` | 311888724559/448150 |
| `a * f * w` | -3435/2 |
| `a * h * r` | 3511358331/448150 |
| `a * f * h` | -35159/10 |
| `b * b * q` | 1027142367/10 |
| `a * a * f * p` | 1600 |
| `b * f * k` | 20780689/100 |
| `b * e * f` | -1868599733/448150 |
| `b * j` | -2101170628652681/448150000000 |
| `a * f * f * k` | -61589100 |
| `a * e * f * f` | -3600 |
| `a * f * j` | -17358308/224075 |
| `a * e * f * j` | 1900 |
| `b * f * w` | 12877/100 |
| `b * h * r` | -1409905959/448150 |
| `b * f * h` | -250671/20 |
| `b * r` | -62794723942399007/896300000000 |
| `a * f * f * w` | -1300 |
| `a * f * h * r` | 2300 |
| `a * f * f * h` | 4000 |
| `a * f * r` | -186508/25 |
| `b * b * q * k` | 1400 |
| `a * b * q * j` | 4700 |
| `a * b * p * k` | -14981900 |
| `a * a * p * j` | 1400 |
| `b * c * q` | -399923/100 |
| `b * c * q * v` | -4700 |
| `a * a * p * u` | 4600 |
| `b * c * q * w` | -700 |
| `a * a * p * r` | -4700 |
| `c * w` | -8340162735923170057/448150000000 |
| `b * f * q * v` | 3100 |
| `b * q * u` | 159054/25 |
| `a * f * p * v` | -5112500 |
| `a * p * u` | 742093399/20 |
| `b * f * h * q` | 2100 |
| `b * b * h * q` | -114959400 |
| `a * f * h * p` | -900 |
| `b * b * q * w` | 4500 |
| `b * h * q * r` | 600 |
| `a * h * p * r` | 4100 |
| `b * f * q * q` | -3900 |
| `b * e * f * q` | 2900 |
| `b * q * q` | 6233/100 |
| `b * p * q` | 109851039/100 |
| `b * e * p * q` | 2200 |
| `a * f * p * q` | -4900 |
| `a * e * f * p` | -32725000 |
| `a * p * q` | 189400039/50 |
| `a * p * p` | -89459/25 |
| `a * e * p * p` | -1100 |
| `b * q * v` | 100652763/100 |
| `b * h * q * u` | 4200 |
| `b * h * q` | 2385673951/100 |
| `a * h * p * u` | -42601500 |
| `a * h * p` | 3982232254/25 |
| `a * e * p * u` | 100 |
| `b * p * q * k` | 3300 |
| `b * f * q * k` | -2200 |
| `b * q * q * j` | -3300 |
| `b * q * j` | 108073/100 |
| `a * p * p * k` | -4300 |
| `a * f * p * k` | 3300 |
| `a * p * q * j` | 4300 |
| `a * p * j` | -189679/100 |
| `p * k` | -216041105290377/100000000 |
| `q * j` | -5807813810209037/896300000000 |
| `b * p * q * w` | -2200 |
| `b * h * p * q` | -1900 |
| `b * q * q * r` | 2200 |
| `a * p * p * w` | 2800 |
| `a * h * p * p` | 4900 |
| `a * p * q * r` | -2800 |
| `b * h * q * j` | -2900 |
| `a * h * p * j` | 1300 |
| `b * e * q` | -4833/2 |
| `a * b * e` | 464352371/100 |
| `a * e * p` | 1437119759/100 |
| `e` | 145123238786695237576391/44815000000000000 |
| `b * q * r` | -300472914/224075 |
| `a * p * r` | -38976/25 |
| `b * q * w` | -373399/100 |
| `a * p * w` | -34173/20 |
| `b * f * q` | 61396/25 |
| `a * b * f` | -437769563/448150 |
| `a * f * p` | 4402857 |
| `f` | 44743108687590035530113930463/2008384225000000000000 |
| `b * h * p * w` | 5000 |
| `b * c * h * w` | -4700 |
| `b * e * r * w` | -4000 |
| `b * w * k` | 51469/20 |
| `b * w * w` | 115871/50 |
| `a * e * r * r` | -4000 |
| `a * r * w` | 664224071/896300 |
| `a * e * r * j` | 4000 |
| `b * f * w * w` | 600 |
| `b * h * r * w` | 600 |
| `b * f * h * w` | -600 |
| `b * r * w` | -99329/100 |
| `a * f * r * w` | 3700 |
| `a * h * r * r` | -6300 |
| `a * r * r` | 161891/25 |
| `b * v * r * w` | 4000 |
| `b * u * w * k` | 600 |
| `b * u * w * w` | -4000 |
| `b * v * w * j` | -8900 |
| `a * b * u * k` | -5837400 |
| `a * b * v * j` | 7400 |
| `a * v * r * r` | 4000 |
| `a * u * r * k` | 8700 |
| `a * u * r * w` | -4000 |
| `a * v * r * j` | -600 |
| `u * k` | -476765986392954299/5557060000000 |
| `v * j` | -982342270721467/112037500000 |
| `b * f * k * k` | -271800 |
| `b * k * k` | 25278808/25 |
| `b * j * k` | 111139/25 |
| `b * e * j * k` | 4000 |
| `a * f * j * k` | -1800 |
| `a * j * k` | 225223/100 |
| `a * j * j` | 81211/100 |
| `a * e * j * j` | -1800 |
| `b * r * k * k` | 2400 |
| `b * v * r * k` | -1700 |
| `b * u * k * k` | 3400 |
| `b * w * j * k` | -2400 |
| `b * v * j * k` | -3400 |
| `a * r * j * k` | -3400 |
| `a * u * j * k` | 3400 |
| `a * w * j * j` | 3400 |
| `a * u * w * j` | 1900 |
| `a * v * j * j` | -3400 |
| `c * e * f * k` | -1000 |
| `c * e * e * f` | 3500 |
| `c * e * k` | 315144/25 |
| `c * e * j` | -1450844661/896300 |
| `c * e * e * j` | -1600 |
| `a * c * e * f` | 3200 |
| `c * e * r * k` | -4900 |
| `c * e * e * r` | -500 |
| `c * e * w * j` | 4300 |
| `c * e * w` | -973431/100 |
| `c * e * f * w` | 4800 |
| `c * e * h * r` | -1600 |
| `c * e * f * h` | 600 |
| `c * e * r` | 270348377/896300 |
| `c * r * k` | -311828419/35852 |
| `c * k` | 11698510665655583/694632500000 |
| `c * w * j` | 531909/50 |
| `a * f * r * k` | -1200 |
| `a * e * f * r` | 3600 |
| `a * f * w * j` | 1200 |
| `c * f * w` | -1019672751/179260 |
| `c * h * r` | -12838806141/896300 |
| `c * f * h` | 270551/100 |
| `c * r` | 159103245718323/11203750000 |
| `c * v * r` | -8615844243/896300 |
| `c * u * k` | 401307523/35852 |
| `c * u * w` | 4513033081/50 |
| `a * c * u * k` | -2700 |
| `a * c * v * j` | -2300 |
| `a * f * v * r` | -2800 |
| `a * f * u * w` | -2300 |
| `a * f * v * j` | -2700 |
| `c * q * k` | -17438/5 |
| `c * q * j` | 646977/100 |
| `c * e * q * j` | -300 |
| `a * p * k` | 38863681/25 |
| `a * e * p * j` | 3100 |
| `c * q * r * k` | 2000 |
| `c * e * q * r` | 7300 |
| `c * q * w * j` | -2000 |
| `c * q * w` | 68159/20 |
| `a * p * r * k` | 100 |
| `a * e * p * r` | 3100 |
| `a * p * w * j` | -100 |
| `c * f * v * k` | -2200 |
| `c * e * f * v` | -100 |
| `c * v * k` | -1082299818941/155000000 |
| `c * e * v * j` | 3800 |
| `a * e * f * u` | 4100 |
| `a * u * k` | 14885764/25 |
| `a * u * j` | -367719/50 |
| `a * e * u * j` | 3200 |
| `c * f * v * w` | -1200 |
| `c * h * v * r` | 4400 |
| `c * f * h * v` | 2100 |
| `a * h * u * r` | -2500 |
| `a * f * h * u` | -200 |
| `a * u * r` | 3782252417/896300 |
| `c * h * p * w` | -2400 |
| `c * p * v * w` | 100 |
| `c * e * p * w` | -3500 |
| `c * v * w` | 920491/100 |
| `c * q * u * w` | -1100 |
| `c * e * u * w` | 600 |
| `a * p * v * r` | -600 |
| `a * v * r` | -267933/50 |
| `a * q * u * r` | -3900 |
| `a * q * r` | 167048/25 |
| `a * e * u * r` | -3000 |
| `c * f * w * w` | -900 |
| `c * h * r * w` | -900 |
| `c * f * h * w` | 3900 |
| `c * r * w` | 115703/100 |
| `c * h * u * w` | 100 |
| `a * v` | -83668795679177/100000000 |
| `a * q` | -149369755995981/100000000 |
| `a * e * u` | 106164/25 |
| `e * f * p * v` | -2300 |
| `e * e * f * p` | 3900 |
| `e * f * v` | -1153192168941/155000000 |
| `e * f * q * u` | -1600 |
| `e * f * q` | -34947/10 |
| `e * e * f * u` | 3800 |
| `a * f * v` | 2951779/5 |
| `a * f * q` | -51018/5 |
| `a * h * u` | 488238237/100 |
| `e * f * h * p` | 5300 |
| `e * f * h * u` | 700 |
| `f * q * v` | 194994967/50 |
| `a * a * f` | 363432587/10 |
| `e * p * u` | 6149 |
| `a * a * f * u` | -27284500 |
| `c * e * v` | 848071680918941/155000000 |
| `b * e * v` | 34019341/100 |
| `a * c * e` | -80631/25 |
| `c * e * e * u` | 1900 |
| `b * e * e * u` | 300 |
| `h * p * v` | 538844649/50 |
| `b * h * v` | -46903/25 |
| `e * h * p * u` | -5600 |
| `b * e * h * u` | -4600 |
| `c * q * v` | 110877/100 |
| `c * h * v` | -206319/50 |
| `c * e * q * u` | 400 |
| `c * e * h * u` | 3300 |
| `p * v * v` | -3150 |
| `q * u * v` | 615533/100 |
| `h * u * v` | 79037268/25 |
| `e * p * u * v` | 4100 |
| `e * q * u * u` | -4100 |
| `e * h * u * u` | -100 |
| `e * u * r` | 1173031259/896300 |
| `e * v` | -2683417879528985609/896300000000 |
| `a * e` | -147771116088162549/89630000000 |
| `a * a` | -1738038719861993193/112037500000 |
| `e * e * u` | -1174341/100 |
| `a * a * u` | 2075233667/100 |
| `p * v * k` | -22423/25 |
| `e * p * k` | 10159900 |
| `v * k` | 137137778041/100000000 |
| `q * u * k` | -162957/100 |
| `q * k` | 27671284969/25000000 |
| `e * u * k` | 1381163/100 |
| `e * p * v * j` | -1300 |
| `e * e * p * j` | 1000 |
| `e * v * j` | -455097157/448150 |
| `e * q * u * j` | 1300 |
| `e * q * j` | 110379/100 |
| `e * e * u * j` | 1300 |
| `a * p * v * j` | -2900 |
| `a * v * j` | 213293/20 |
| `a * q * u * j` | 2900 |
| `a * q * j` | -99699/25 |
| `c * f * h * q` | -4500 |
| `c * h * p` | 15969837/2500 |
| `b * h * p` | 128135887426147/11203750 |
| `c * f * q * q` | 4700 |
| `c * p * q` | 2070136/25 |
| `a * c * p * q` | -4900 |
| `a * b * p * q` | -10568000 |
| `c * f * q * v` | 2800 |
| `c * p * v` | 496295669/100 |
| `b * p * v` | 176438137/50 |
| `f * h * p * q` | -3700 |
| `h * p * p` | 3860476447/100 |
| `f * h * q * u` | -4800 |
| `h * p * u` | 492679473/50 |
| `f * q * w` | 51793/20 |
| `f * q * r` | 5002700259/448150 |
| `e * f * q * r` | -500 |
| `p * r` | -700805830937616757/896300000000 |
| `e * p * r` | 288486457/20 |
| `a * f * p * w` | -100 |
| `f * q * k` | -72771/50 |
| `f * h * q * j` | 2200 |
| `f * h * q` | 116757/100 |
| `e * f * q * j` | 4900 |
| `a * f * h * j` | -100 |
| `h * p * j` | 512747/100 |
| `e * p * j` | 5137 |
| `f * q * r * k` | -300 |
| `f * f * q * k` | 2700 |
| `f * q * w * j` | -2700 |
| `f * q * j` | 253599/100 |
| `p * r * k` | 455977/100 |
| `f * p * k` | 3382996 |
| `p * w * j` | 199153/50 |
| `p * j` | -253256391807/50000000 |
| `f * q * u * w` | -100 |
| `f * p * q * w` | 3100 |
| `f * q * v * r` | 600 |
| `f * p * q * v` | -34070000 |
| `f * q * q * r` | -3100 |
| `a * f * q * r` | 3100 |
| `p * u * w` | 9597/100 |
| `p * q * u` | 16323467/20 |
| `p * p * w` | 1337214906/25 |
| `p * v * r` | -555902886/224075 |
| `p * p * v` | 229113553/50 |
| `p * q * r` | 3558004629/896300 |
| `a * p * u * w` | 4500 |
| `a * p * q * u` | -7839900 |
| `a * p * p * v` | -100 |
| `f * p * q * k` | 2400 |
| `f * q * q * j` | -2400 |
| `a * f * q * j` | 2400 |
| `p * p * k` | 204811529/50 |
| `p * q * j` | -8096/5 |
| `c * f * q` | -174941/100 |
| `a * c * f` | 1852655173067/179260 |
| `c * p` | -106054685943639/100000000 |
| `f * f * v * w` | 2700 |
| `f * h * v * r` | -2900 |
| `f * f * h * v` | -3300 |
| `f * v * r` | -138356/25 |
| `f * u * w` | 198489/50 |
| `h * u * r` | 3033792298/224075 |
| `f * h * u` | 648336329/179260 |
| `u * r` | -3378796336783951/224075000000 |
| `f * h * u * k` | -900 |
| `c * f * h * k` | 4100 |
| `c * v * j` | 2225894919/448150 |
| `h * u * j` | 578819/100 |
| `c * h * j` | 68481/100 |
| `a * h * u * j` | 900 |
| `f * p * v * k` | -100 |
| `f * h * p * k` | -4700 |
| `f * q * u * k` | 100 |
| `p * v * j` | -215069/100 |
| `q * u * j` | -457601/100 |
| `f * h * p * v` | -4300 |
| `c * h * p * v` | 900 |
| `f * h * p * w` | -2600 |
| `h * h * p * r` | -3200 |
| `f * h * h * p` | -3700 |
| `h * p * r` | 79406288/224075 |
| `f * p * v * w` | -500 |
| `p * v * w` | -122557/25 |
| `e * p * v * r` | -1200 |
| `q * u * w` | 32721/50 |
| `q * u * r` | 639505901/224075 |
| `e * q * u * r` | -3900 |
| `a * u * w` | 375233/100 |
| `p * v * r * k` | 100 |
| `p * v * w * j` | 9900 |
| `q * u * r * k` | -100 |
| `q * u * w * j` | 100 |
| `p * p * v * v` | 5000 |
| `h * p * p * v` | -5759100 |
| `h * p * u * v` | -27601900 |
| `h * p * q * u` | -900 |
| `q * q * u * u` | 5000 |
| `h * q * u * u` | 1900 |
| `h * p * p * w` | -67149100 |
| `h * p * q * r` | -900 |
| `c * p * q * w` | -7200 |
| `c * q * v * r` | 1000 |
| `c * q * q * r` | 7200 |
| `h * p * u * k` | -4100 |
| `c * h * p * k` | 1000 |
| `c * q * v * j` | -4400 |
| `h * q * u * j` | -500 |
| `c * h * q * j` | -2600 |
| `c * p * q * v` | 2400 |
| `c * e * p * q` | -730600 |
| `c * q * q * u` | -2400 |
| `c * q * q` | -926273/100 |
| `b * p * q * v` | 900 |
| `b * q * q * u` | -900 |
| `b * f * v * w` | -2600 |
| `b * h * v * r` | -2800 |
| `b * f * h * v` | 800 |
| `b * v * r` | 990198223/896300 |
| `b * p * v * w` | 1300 |
| `b * e * p * w` | -12888000 |
| `b * v * w` | 180959/100 |
| `b * e * u * w` | 1100 |
| `b * c * v` | -34629/25 |
| `b * h * u` | 222133/100 |
| `b * c * h` | 27289/5 |
| `b * c * e * h` | -4100 |
| `b * b * q * v` | -4768200 |
| `b * h * p * v` | 800 |
| `b * b * h * v` | -1800 |
| `b * e * h * p` | -110280300 |
| `b * b * e * h` | -4768200 |
| `f * v * v` | 28803/25 |
| `c * v * v` | -27623/10 |
| `u * v` | -582897628429717451/112037500000 |
| `b * f * v * v` | 1800 |
| `b * c * v * v` | -900 |
| `b * u * v` | 137786600/8963 |
| `e * f * u * v` | -100 |
| `c * e * u * v` | -1100 |
| `e * u * u` | 2764086799/224075 |
| `c * e * u` | -1518241021/448150 |
| `b * e * f * v` | -1800 |
| `b * e * u` | 118436/25 |
| `b * c * e` | 713993/100 |
| `b * c * h * v` | 4700 |
| `b * p * v * v` | -900 |
| `b * q * u * v` | -39100 |
| `f * v * k` | 17731918941/155000000 |
| `b * v * k` | 256291/50 |
| `b * v * j` | -109389/100 |
| `b * e * v * j` | 4400 |
| `e * f * u * k` | -5000 |
| `e * u * j` | -500681/100 |
| `f * v * w` | -73349/100 |
| `h * v * r` | -125933/100 |
| `f * h * v` | 552079/100 |
| `e * f * u * w` | 1800 |
| `e * h * u * r` | -1600 |
| `v * r * k` | -857839874347/100000000 |
| `v * v * r` | -5788502437227839/896300000000 |
| `u * v * k` | -286549125653/100000000 |
| `v * w * j` | -801660125653/100000000 |
| `u * v * w` | -165059874347/100000000 |
| `v * v * j` | 286549125653/100000000 |
| `b * v * v * r` | -4900 |
| `b * u * v * k` | -4900 |
| `b * u * v * w` | 4900 |
| `b * v * v * j` | 4900 |
| `e * u * v * r` | 4200 |
| `e * u * u * k` | -4800 |
| `e * u * w * j` | -1200 |
| `e * u * u * w` | -4200 |
| `e * u * v * j` | 4800 |
| `b * e * v * r` | -3100 |
| `b * e * u * k` | -3100 |
| `b * c * v * k` | 1300 |
| `b * u * k` | 15125663/25 |
| `b * c * k` | -9436/25 |
| `e * f * v * j` | 3900 |
| `f * w * k` | 9756401363/100 |
| `h * r * k` | -1414277667/448150 |
| `f * h * k` | -638981/100 |
| `b * f * w * k` | -2600 |
| `b * h * r * k` | 100 |
| `b * r * k` | -164132933/179260 |
| `e * f * w * j` | -5100 |
| `e * h * r * j` | -1000 |
| `e * f * h * j` | -1700 |
| `e * r * j` | 381158323/448150 |
| `f * f * h * k` | -400 |
| `e * f * f * h` | -4400 |
| `f * h * j` | -7999/25 |
| `b * h * k` | 156033636689/179260 |
| `b * h * j` | 24678/5 |
| `b * e * h * j` | 100 |
| `f * h * r * k` | 2600 |
| `e * f * h * r` | -1600 |
| `f * h * w * j` | -200 |
| `f * h * w` | -161449/100 |
| `b * h * w * j` | -2700 |
| `b * h * w` | 118317/25 |
| `b * w * j` | 7381329701/896300 |
| `b * q * r * k` | -200 |
| `b * e * q * r` | 1700 |
| `b * q * k` | 126699/100 |
| `b * q * w * j` | 200 |
| `b * e * q * j` | 2300 |
| `b * q * v * r` | -1300 |
| `b * q * u * k` | -1500 |
| `b * q * v * j` | 1500 |
| `b * u * w` | 238079/100 |
| `f * v * r * k` | 4800 |
| `f * v * v * r` | 2000 |
| `f * v * w * j` | 3100 |
| `f * u * v * w` | -2000 |
| `u * r * k` | 11461657211/896300 |
| `u * v * r` | -19537/4 |
| `u * w * j` | -7355528973/896300 |
| `u * u * w` | 1137564081/20 |
| `b * b * q * q` | 1700 |
| `h * h * p * p` | 1700 |
| `b * h * h * p` | 3000 |
| `b * b * h * h` | 1700 |
| `b * c * q * q` | 4800 |
| `h * p * q` | -28586/25 |
| `c * h * p * q` | -200 |
| `e * h * p * p` | -2800 |
| `c * e * h * p` | -1700 |
| `b * c * h * q` | -1600 |
| `c * h * h * p` | -4500 |
| `b * h * h * r` | 1700 |
| `b * c * h * h` | -2500 |
| `h * p * u * w` | 100 |
| `h * p * v * r` | 2900 |
| `b * h * u * w` | 4200 |
| `b * b * h` | 940741757/20 |
| `h * h * p` | 942968607/100 |
| `b * h * h` | -13909/10 |
| `e * h * p` | 572232249/50 |
| `b * e * h` | 340781174/25 |
| `b * f * h * h` | 5800 |
| `e * h * p * r` | 1700 |
| `h * q * u * r` | -3000 |
| `h * q * r` | 655621/100 |
| `h * h * u * r` | -1600 |
| `b * h * h * u` | -3700 |
| `h * r * j * k` | 5100 |
| `h * j * k` | -5100 |
| `h * w * j * j` | -5100 |
| `h * w * j` | 1451809/100 |
| `e * h * j * j` | -4900 |
| `c * h * q * u` | -700 |
| `c * h * q * r` | 3100 |
| `b * c * v * w` | 700 |
| `c * q * u` | 754247497/448150 |
| `c * h * u` | -391227/50 |
| `c * e * p * v` | -47843400 |
| `e * h * r` | 3676715003/896300 |
| `h * k` | -136375746169341697/896300000000 |
| `h * w` | -200065276622888151/224075000000 |
| `e * h * j` | 288473/20 |
| `c * h * r * k` | 6300 |
| `c * h * k` | -38589/5 |
| `c * h * w * j` | -4700 |
| `c * h * w` | 49163/20 |
| `c * e * h * j` | -5000 |
| `h * h * r` | 248363/100 |
| `f * h * h` | -637616707/896300 |
| `c * h * h * r` | 3000 |
| `c * f * h * h` | -3000 |
| `q * v` | -126770056007969/100000000 |
| `e * q * u` | 223971/25 |
| `c * e * q` | 7943489/100 |
| `c * c * e * q` | -1400 |
| `e * p * v` | 1311811241/50 |
| `e * e * p * u` | 1400 |
| `c * e * e * p` | -4227100 |
| `c * c * e * v` | -100 |
| `c * c * e * e` | -3300 |
| `c * c * q` | 287401/100 |
| `c * e * p` | 1059355743/100 |
| `c * c * e` | 1040584723/448150 |
| `v * v` | 497947026905009/224075000000 |
| `e * u * v` | -248659/25 |
| `c * c * v * v` | 500 |
| `e * e * u * u` | 1000 |
| `c * h * u * v` | 2500 |
| `c * c * e * h` | 600 |
| `c * c * v * k` | 3100 |
| `c * e * u * k` | -4900 |
| `c * c * e * k` | -2500 |
| `e * f * w` | -88173/10 |
| `w * k` | -759097565989489/50000000 |
| `e * w * j` | -561190187/448150 |
| `c * f * w * k` | 3600 |
| `c * w * k` | -219103/25 |
| `e * f * r * k` | 2100 |
| `e * e * f * r` | -7300 |
| `e * r * k` | -1440831/100 |
| `e * e * r * j` | 1800 |
| `r * w * k` | -6187/100 |
| `e * r * w` | -56071/50 |
| `w * w * j` | -1062601/100 |
| `w * w` | -8126937417843/224075000000 |
| `c * r * w * k` | 3400 |
| `c * e * r * w` | 2600 |
| `c * w * w * j` | -3400 |
| `c * w * w` | 323421/50 |
| `e * r * r * k` | 9200 |
| `e * e * r * r` | -4500 |
| `e * r * w * j` | 800 |
| `v * r * w` | 2111580127/448150 |
| `u * w * k` | 387431/50 |
| `u * w * w` | -211087186/224075 |
| `c * v * r * w` | -6000 |
| `c * u * w * k` | 3600 |
| `c * u * w * w` | -4000 |
| `c * v * w * j` | 1000 |
| `e * v * r * r` | 2400 |
| `e * u * r * w` | -2400 |
| `e * v * r * j` | 1200 |
| `c * e * v * r` | 4100 |
| `k * k` | -2796053157691/25000000 |
| `c * k * k` | 31721/50 |
| `e * j * k` | 44469/100 |
| `c * c * k * k` | 4300 |
| `c * e * j * k` | -1400 |
| `e * e * j * j` | -1000 |
| `h * p * k` | 118619603/100 |
| `c * e * p * k` | -4300 |
| `e * h * p * j` | -500 |
| `c * e * h` | 168771/50 |
| `h * u * k` | 77091/10 |
| `e * h * u * j` | 3300 |
| `c * q * u * k` | 4400 |
| `c * p * k` | -1349/4 |
| `r * k * k` | 427707/50 |
| `u * k * k` | 6259/20 |
| `w * j * k` | -54937/25 |
| `v * j * k` | 597663/100 |
| `c * r * k * k` | -400 |
| `c * v * r * k` | 5400 |
| `c * u * k * k` | -9600 |
| `c * w * j * k` | 400 |
| `c * v * j * k` | -400 |
| `e * r * j * k` | -600 |
| `e * u * j * k` | -4900 |
| `e * w * j * j` | 600 |
| `e * v * j * j` | -5100 |
| `e * k` | -116254755768571/100000000 |
| `e * e * j` | -536465221/448150 |
| `c * e * e` | 24433917/50 |
| `c * h * q` | 355767/100 |
| `f * h * u * w` | -4800 |
| `f * h * v * j` | -1200 |
| `c * h * v * j` | -3600 |
| `c * c * h * q` | -2400 |
| `c * c * v` | -145732236/44815 |
| `c * c * h` | -45811/100 |
| `f * f * v * v` | -1200 |
| `c * f * v * v` | -2500 |
| `f * u * v` | 215733252/25 |
| `c * f * v` | 2441507470867/448150 |
| `c * u * v` | 247920273/50 |
| `u * u` | -13494021691903562909/448150000000 |
| `c * u` | -78345113486464980180749/1606707380000000 |
| `c * c` | -2754268894020922719/896300000000 |
| `c * c * k` | -1655012524/224075 |
| `f * p * v * v` | 3200 |
| `f * q * u * v` | -3200 |
| `p * u * v` | 549693272/25 |
| `q * u * u` | -902633/100 |
| `e * f * v * r` | 3200 |
| `c * u * v * w` | -3800 |
| `c * v * v * r` | 3800 |
| `f * p * v` | 286529301/20 |
| `f * f * q * v` | 600 |
| `p * u` | -817991960455181/100000000 |
| `f * q * u` | 287991/50 |
| `c * p * w` | 722869/100 |
| `c * q * r` | -6194849663/448150 |
| `f * h * u * v` | 2200 |
| `h * u * u` | -237111/100 |
| `f * f * v` | 337/50 |
| `e * f * f * v` | 1700 |
| `f * u` | -223607126275395591/112037500000 |
| `e * f * u` | -28203/50 |
| `c * f` | -718624925858213317/448150000000 |
| `c * e * f` | -4872183147/896300 |
| `h * p * v * j` | -5400 |
| `h * p * w` | 1538809033/100 |
| `c * c * v * w` | -600 |
| `c * c * h * w` | 600 |
| `h * q * u` | 228229/100 |
| `h * h * u * j` | -4100 |
| `h * h * u` | 15931/50 |
| `c * h * h * j` | 4100 |
| `c * h * h` | -26009/4 |
| `h * u * u * k` | 3300 |
| `h * h * u * u` | -200 |
| `h * u * v * j` | -3300 |
| `c * h * h * u` | 4500 |
| `f * h * r * w` | -3500 |
| `h * h * r * r` | -3500 |
| `f * h * h * r` | 800 |
| `h * r * r` | 837249/100 |
| `p * q * v` | 265158122/25 |
| `q * q * u` | -357093/50 |
| `u * r * w * k` | -4600 |
| `u * w * w * j` | 4600 |
| `v * r * r * k` | 4600 |
| `v * r * w * j` | -4600 |
| `u * v * r * w` | 3000 |
| `u * u * w * k` | -3700 |
| `u * u * w * w` | 3500 |
| `u * v * w * j` | 3700 |
| `v * v * r * r` | 3500 |
| `u * v * r * k` | 3700 |
| `v * v * r * j` | -3700 |
| `p * u * v * k` | 100 |
| `q * u * u * k` | -100 |
| `p * v * v * j` | -100 |
| `q * u * v * j` | 100 |
| `h * v` | -29057962475411/25000000 |
| `h * q` | -62204275064871/50000000 |
| `e * h * u` | -680921/100 |
| `e * p * p * v` | -600 |
| `e * p * q * u` | 600 |
| `f * r * w` | 1297045042/224075 |
| `e * f * r` | 148798893/89630 |
| `r * w` | -2599427438025309/448150000000 |
| `r * r` | 13038357722811728447/8033536900000000 |
| `e * r * r` | -4695612263/896300 |
| `e * f * p * k` | -32612700 |
| `e * f * h` | 664299/100 |
| `f * r * k * k` | 5200 |
| `f * k * k` | 35800 |
| `f * w * j * k` | 4800 |
| `e * f * j * k` | 4200 |
| `e * f * k` | 37328801/10 |
| `e * e * f * j` | -4700 |
| `r * j * k` | -688964963/179260 |
| `j * k` | 5118580811177697/896300000000 |
| `w * j * j` | -326703/100 |
| `e * j * j` | 779091/100 |
| `f * f * v * k` | -4200 |
| `f * u * k` | -74099/100 |
| `f * v * j` | -172699/50 |
| `u * j` | 2426158786557657/896300000000 |
| `f * r * k` | -4261384237/896300 |
| `f * f * k * k` | -20500 |
| `f * f * w * k` | -156709500 |
| `f * j * k` | -250059/50 |
| `e * f * f * k` | 500 |
| `e * f * f * w` | 4300 |
| `e * f * j` | -1804282993/896300 |
| `r * j` | -34351464920698673303/8033536900000000 |
| `f * w * j` | -237309/50 |
| `j * j` | -440497419771/100000000 |
| `f * u * w * k` | 2100 |
| `v * r * j` | 1696568191/179260 |
| `h * r * j` | 38624809/89630 |
| `f * p * w * k` | 3000 |
| `e * f * p * w` | -3300 |
| `p * w * k` | -171669/50 |
| `q * r * k` | 53617/25 |
| `q * r * j` | 1945468431/448150 |
| `e * p * w * j` | -3400 |
| `e * q * r * j` | -3400 |
| `c * f * k` | -915749/100 |
| `c * j` | -1392991246871377/179260000000 |
| `f * f * k` | 2234457211/25 |
| `e * f * f` | 262220007/179260 |
| `f * j` | 1548964501532397/448150000000 |
| `e * f * p` | 155824759/10 |
| `e * e * f` | 326667/50 |
| `e * q * r` | -6432001463/896300 |
| `q * w * j` | -150899873/179260 |
| `q * w` | -22862496460759/448150000000 |
| `h * p * r * k` | -5000 |
| `h * p * w * j` | -2900 |
| `e * p * r * k` | -3200 |
| `e * e * p * r` | -66487100 |
| `e * p * w` | 135034891/100 |
| `e * q` | -592087794952597/14004687500 |
| `e * h` | -615050565132993073/448150000000 |
| `a * h` | -16353376701681267647/896300000000 |
| `e * e * p` | 2184091927/50 |
| `e * v * r` | -190271/25 |
| `v * w` | -2098214806072711/896300000000 |
| `h * u * r * k` | -11500 |
| `h * u * w * j` | 2100 |
| `h * u * w` | 74487/100 |
| `e * e * u * r` | 7200 |
| `e * u * w` | 1844965023/224075 |
| `f * h * h * u` | 1000 |
| `e * f * p * q` | 3900 |
| `e * p * p` | -246430222/25 |
| `f * q * q` | 303503/100 |
| `p * q` | -2265409763144709587/896300000000 |
| `e * p * u * w` | -4900 |
| `q * v * r` | -253383/100 |
| `b * e * p` | 1898279743/20 |
| `e * p * q` | 39411997/100 |
| `q * q` | 188600119937/25000000 |
| `h * q * r * j` | -2100 |
| `u * r * w` | 194787/100 |
| `v * r * r` | -3493622877/448150 |
| `h * v * r * j` | -600 |
| `p * r * w * k` | 2500 |
| `f * r * w * k` | -2500 |
| `q * r * r * k` | -2500 |
| `r * r * k` | -760126707/224075 |
| `e * p * r * w` | -2500 |
| `e * f * r * w` | 2500 |
| `e * q * r * r` | 2500 |
| `p * w * w * j` | -2500 |
| `f * w * w * j` | 2500 |
| `q * r * w * j` | 2500 |
| `r * w * j` | -246326053/224075 |
| `p * w * w` | 193093/100 |
| `f * w * w` | 427462333/896300 |
| `q * r * w` | -193093/100 |
| `u * r * k * k` | 4300 |
| `v * r * j * k` | -4300 |
| `u * w * j * k` | -4300 |
| `v * w * j * j` | 4300 |
| `r * r * k * k` | -5200 |
| `r * w * j * k` | 400 |
| `w * w * j * j` | 4800 |
| `e * e * r` | 3415654551633/448150 |
| `e * w` | -66811272533131277/448150000000 |
| `f * h * q * r` | -6800 |
| `f * f * h * q` | 7300 |
| `f * f * h * w` | 7300 |
| `f * f * h * h` | 2700 |
| `f * h * r` | 4950383507/896300 |
| `f * h * p` | 302039/25 |
| `f * p * w * w` | 500 |
| `f * q * r * w` | -500 |
| `h * p * r * w` | 500 |
| `h * q * r * r` | -500 |
| `p * r * w` | 34649884/44815 |
| `q * r * r` | -34649884/44815 |
| `f * f * w` | 5857498283/100 |
| `f * f * h` | -14803237119/896300 |
| `f * r` | -63517888663887185087/8033536900000000 |
| `h * r * w` | 3295181813/896300 |
| `p * p * v * k` | 3100 |
| `h * p * p * k` | -5143100 |
| `p * q * u * k` | -3100 |
| `p * q * v * j` | -3100 |
| `h * p * q * j` | 3100 |
| `q * q * u * j` | 3100 |
| `u * u * k * k` | 200 |
| `u * v * j * k` | -400 |
| `v * v * j * j` | 200 |
| `h * v * j` | 395847/50 |
| `q * v * j` | 374559/100 |
| `u * u * k` | 268879/100 |
| `u * v * j` | -60114/25 |
| `u * j * k` | 19114/5 |
| `v * j * j` | -40843/25 |
| `c * h * p * r` | 4800 |
| `b * h * p * r` | -4800 |
| `b * h * p * k` | 2600 |
| `b * f` | -143137365439607/4481500000 |
| `a * f * u` | 141613528/25 |
| `b * b` | -430032381116173/10000000 |
| `a * a * j` | -6959/50 |
| `b * p` | -10309641419610038711/896300000000 |
| `a * a * r` | 1536040358/224075 |
| `f * p` | -1387626846723/312500 |
| `b * c` | -80488847339/50000000 |
| `b * c * w` | 103193/20 |
| `b * f * v` | -62461/25 |
| `a * h * j` | -53451/10 |
| `b * u` | -1349161725063032461/896300000000 |
| `b * p * w` | 6664501/5 |
| `a * f * f` | 2302056309/100 |
| `f * f` | -29931498568551331109/896300000000 |
| `a * r * j` | 634882111/224075 |
| `f * p * q` | 13407425/2 |
| `p * p` | -2972723717273257/100000000 |
| `p * q * w` | 337613/100 |
| `b * b * w` | 1345691/2 |
| `h * h` | -482426342201647423/448150000000 |
| `a * h * h * p` | -90820000 |
| `a * h * h` | 104020687/10 |
| `a * h * p * v` | -70000 |
| `a * h * v` | 160349/20 |
| `b * b * e` | 3803832 |
| `b * b * v` | 91535723/20 |
| `b * b * k` | 7766157/20 |
| `b * e * e` | -56972/25 |
| `e * e` | -2242916976190805441/448150000000 |
| `b * v * v` | -6889/50 |
| `h * q * j` | 201693/50 |
| `b * p * r` | 626720 |
| `b * p * k` | 30988671/20 |
| `b * h * k * k` | -1170000 |
| `h * k * k` | 12140739/100 |
| `p * q * k` | 102221/100 |
| `q * q * r` | -204163/50 |
| `q * q * j` | -102221/100 |
| `b * e * p * r` | -6010000 |
| `c * c * w` | 290602543/50 |
| `c * c * u` | 449456661/50 |
| `c * u * u` | 2778049683/50 |
| `c * c * u * w` | -16980000 |
| `c * j * k` | -19129/100 |
| `h * h * j` | -25109/25 |
| `c * p * r` | -40589/10 |
| `c * u * u * w` | -104950000 |
| `c * f * u * v` | -15920000 |
| `c * f * u` | 78313266/25 |
| `e * h * h` | 22791/100 |
| `f * p * w` | -13829/50 |
| `u * u * r` | 1818772031/896300 |
| `h * j * j` | 317373/50 |
| `f * f * q` | -670209/100 |
| `p * u * k` | 140484/25 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * a * b * b` | -3000 | 9449459135790828617961/1000000000000000000000000 | 0 |
| `a * a * b` | 30374363/10000 | 19770521481620373/1000000000000000000 | 600516996182035037697399/10000000000000000000000 |
| `a * a` | -164375424761754307/89630000000000 | 41364644689/1000000000000 | 0 |
| `a * b * b` | -20704319/10000 | 46461401079691167/1000000000000000000 | 0 |
| `a * b` | 1343335272509/10000000000 | 97208328531/1000000000000 | 130583376497335284654279/10000000000000000000000 |
| `a` | 48996529453276660240749/44815000000000000000 | 203383/1000000 | 9965061149795766989744253867/44815000000000000000000000 |
| `b * b` | 639892057033/1000000000 | 228442893849/1000000000000 | 146178793259607872890017/1000000000000000000000 |
| `b` | -22502261884426557120506101/40167684500000000000000 | 477957/1000000 | 0 |
| `1` | -81635446933239143774041939604615254544086488317/27899693396428587500000000000000000000000 | 1 | -81635446933239143774041939604615254544086488317/27899693396428587500000000000000000000000 |
| `a * a * b * c` | 8500 | 2263704939124051088127/250000000000000000000000 | 38482983965108868498159/500000000000000000000 |
| `a * a * c` | -4116913/1000 | 4736210452245811/250000000000000000 | 0 |
| `a * b * c` | 18859749/10000 | 11130256408470969/250000000000000000 | 209913842169403949126781/2500000000000000000000 |
| `a * c` | -44831884669597339/17926000000000 | 23287150117/250000000000 | 0 |
| `b * c` | 8004935498979/10000000000 | 54725598543/250000000000 | 438074886479734140387597/2500000000000000000000 |
| `c` | 214950171347651029696212278446751/1245105138745000000000000000000 | 114499/250000 | 24611579669134695249186609669874542749/311276284686250000000000000000000000 |
| `a * b * b * v` | -25482000 | 2375710821407848442211/100000000000000000000000 | 0 |
| `a * b * v` | -15786519/10000 | 4970553462775623/100000000000000000 | 0 |
| `a * v` | -10550116694287/5000000000 | 10399582939/100000000000 | 0 |
| `b * b * v` | 338254/625 | 11680970491180917/100000000000000000 | 1975567496261954949459/31250000000000000000 |
| `b * v` | 239033133306142069/89630000000000 | 24439375281/100000000000 | 5841820449462106286592796389/8963000000000000000000000 |
| `v` | 6287089939955276504988412438103/401646818950000000000000000000 | 51133/100000 | 321477769899733153529572493197520699/40164681895000000000000000000000000 |
| `a * a * b * u` | -118150100 | 6827294871683518546971/1000000000000000000000000 | 0 |
| `a * a * u` | -9373147/10000 | 14284328656518303/1000000000000000000 | 0 |
| `a * b * u` | -687789/10000 | 33568660466624637/1000000000000000000 | 0 |
| `a * u` | 5060805094180351/44815000000000 | 70233641241/1000000000000 | 355438769375287989085455591/44815000000000000000000000 |
| `b * u` | -6671312712853/5000000000 | 165051456939/1000000000000 | 0 |
| `u` | 9788460378395405588934916434973599/12451051387450000000000000000000 | 345327/1000000 | 3380219657090150225810127887740128021873/12451051387450000000000000000000000000 |
| `a * b * c * v` | 1500 | 569123400934346057877/25000000000000000000000 | 1707370202803038173631/50000000000000000000 |
| `a * c * v` | -1303343/2000 | 1190741846932561/25000000000000000 | 0 |
| `b * c * v` | 6159231/10000 | 2798284030299219/25000000000000000 | 17235277746223888940589/250000000000000000000 |
| `c * v` | 1238092925900594844528507353/1245105138745000000000000 | 5854677367/25000000000 | 7248634631513020728097935785902179551/31127628468625000000000000000000000 |
| `a * b * e * u` | -3900 | 12361088549606589956421/1000000000000000000000000 | 0 |
| `a * b * e` | 42707543/10000 | 35795314439955723/1000000000000000000 | 1528729930642929958118589/10000000000000000000000 |
| `a * e * u` | 6963999/2500 | 25862344415097153/1000000000000000000 | 180105340644392158394847/2500000000000000000000 |
| `a * e` | -14829339783037789/22407500000000 | 74892332239/1000000000000 | 0 |
| `b * e * u` | -2508421/10000 | 60777393143018787/1000000000000000000 | 0 |
| `b * e` | 20436289249377207/11203750000000 | 175999539981/1000000000000 | 3596777506809044222746613067/11203750000000000000000000 |
| `e * u` | -5460830802556775359/2778530000000000 | 127160797191/1000000000000 | 0 |
| `e` | -39702822283234592757204039/694632500000000000000000 | 368233/1000000 | 0 |
| `a * c * e * u` | -3800 | 2961212573184208921347/250000000000000000000000 | 0 |
| `a * c * e` | -667649/10000 | 8575097149033261/250000000000000000 | 0 |
| `a * c * u` | 155650239911/89630000 | 8041681688453259/250000000000000000 | 1251689684095645321859819949/22407500000000000000000000 |
| `c * e * u` | -52155628513/22407500 | 14559784117572309/250000000000000000 | 0 |
| `c * e` | 2825500368429971305861/1389265000000000000 | 42162310267/250000000000 | 119129623193267261859618637574887/347316250000000000000000000000 |
| `c * u` | -1493831659140121036979/803353690000000000 | 39539596173/250000000000 | 0 |
| `a * b * f * q` | -400 | 355460158367258610483/25000000000000000000000 | 0 |
| `a * b * f` | -211451514127/89630000 | 9171508588571319/250000000000000000 | 0 |
| `a * b * q` | -27360661/10000 | 3767503188875967/100000000000000000 | 0 |
| `a * f * q` | -10220819/10000 | 743707401224919/25000000000000000 | 0 |
| `a * f` | 73162803764063697/89630000000000 | 19188982667/250000000000 | 1403919773297740639216939899/22407500000000000000000000 |
| `a * q` | -1021353297703/2500000000 | 7882514931/100000000000 | 0 |
| `b * f * q` | 10175019/10000 | 1747737806833701/25000000000000000 | 17783265391551237515319/250000000000000000000 |
| `b * f` | 1648768883727/2500000000 | 45094764993/250000000000 | 74350845339440006968911/625000000000000000000 |
| `b * q` | 78931680621228811/44815000000000 | 18524179449/100000000000 | 1462144616038798293852905139/4481500000000000000000000 |
| `f * q` | -144518677327653207/44815000000000 | 3656684193/25000000000 | 0 |
| `f` | 1516135656078832977315149045762503787/11159877358571435000000000000000000 | 94349/250000 | 143045883015381812576706997318646469799663/2789969339642858750000000000000000000000 |
| `q` | -15639761627682229148121/89630000000000000000 | 38757/100000 | 0 |
| `a * a * b * f` | 4400 | 1865328931269400572177/250000000000000000000000 | 20518618243963406293947/625000000000000000000 |
| `a * a * f` | -10678557/10000 | 3902712861762461/250000000000000000 | 0 |
| `a * b * p` | -1615031/1000 | 15111909545100729/500000000000000000 | 0 |
| `a * p` | -3750485768749/2000000000 | 31617717797/500000000000 | 0 |
| `b * p` | 16824396383137291/11203750000000 | 74302717263/500000000000 | 1250098367576889954084754533/5601875000000000000000000 |
| `p` | 36321977042739671660381/44815000000000000000 | 155459/500000 | 5646578229087266616651169879/22407500000000000000000000 |
| `a * c * f * q` | 12300 | 85153753732852000581/6250000000000000000000 | 10473911709140796071463/62500000000000000000 |
| `a * c * f` | -42180723401/22407500 | 2197119326388833/62500000000000000 | 0 |
| `a * c * q` | 4638719/10000 | 902540077084569/25000000000000000 | 4186629803833654827111/250000000000000000000 |
| `c * f * q` | 1495541/5000 | 418686683414307/6250000000000000 | 626163101200116105087/31250000000000000000 |
| `c * f` | 18939631296335133/44815000000000 | 10802866151/62500000000 | 204602301843599058637783083/2800937500000000000000000 |
| `c * q` | 5020476855731487/89630000000000 | 4437637743/25000000000 | 22279057582852012584713841/2240750000000000000000000 |
| `a * a * c * f` | -49826000 | 446856719958940022039/62500000000000000000000 | 0 |
| `a * c * p` | 13883137/10000 | 3620197070038703/125000000000000000 | 50259691890345909051311/1250000000000000000000 |
| `c * p` | -22048997371/25000000 | 17799900041/125000000000 | 0 |
| `a * a * c * p` | 4500 | 736286540695681532249/125000000000000000000000 | 6626578866261133790241/250000000000000000000 |
| `a * a * p` | -2308719/5000 | 6430506298707251/500000000000000000 | 0 |
| `a * b * h * p` | -300 | 3073505499011221566207/500000000000000000000000 | 0 |
| `a * b * h` | -277451/5000 | 19770521481620373/1000000000000000000 | 0 |
| `a * h * p` | -1110901/5000 | 6430506298707251/500000000000000000 | 0 |
| `a * h` | 37645656347702891/44815000000000 | 41364644689/1000000000000 | 1557199198906927527553095899/44815000000000000000000000 |
| `b * h * p` | -162551769013/89630000 | 15111909545100729/500000000000000000 | 0 |
| `b * h` | 440824571563813542433/200838422500000000 | 97208328531/1000000000000 | 42851819777112507264053973055923/200838422500000000000000000000 |
| `h * p` | -20765395847739989/44815000000000 | 31617717797/500000000000 | 0 |
| `h` | 1212254791582633785859324541/803353690000000000000000 | 203383/1000000 | 246552016276450807269427003122203/803353690000000000000000000000 |
| `a * c * h * p` | -700 | 736286540695681532249/125000000000000000000000 | 0 |
| `a * c * h` | 1430837/625 | 4736210452245811/250000000000000000 | 6776745154860039473807/156250000000000000000 |
| `c * h * p` | 11571307/10000 | 3620197070038703/125000000000000000 | 41890411697918334294821/1250000000000000000000 |
| `c * h` | 130224028536465337/89630000000000 | 23287150117/250000000000 | 3032546501369160111285994429/22407500000000000000000000 |
| `a * b * p * w` | 2800 | 3555514965861754418391/250000000000000000000000 | 24888604761032280928737/625000000000000000000 |
| `a * b * w` | 188294/625 | 22871078328445149/500000000000000000 | 2153243411388125442903/156250000000000000000 |
| `a * p * w` | -7804451/10000 | 7438985025560363/250000000000000000 | 0 |
| `a * w` | 6436220359405667/44815000000000 | 47851748857/500000000000 | 307984400226590255066572619/22407500000000000000000000 |
| `b * p * w` | -8102353/10000 | 17481869014921377/250000000000000000 | 0 |
| `b * w` | -213724654564693871/89630000000000 | 112453245003/500000000000 | 0 |
| `p * w` | -81311790706212649/44815000000000 | 36576238061/250000000000 | 0 |
| `w` | 1571377799490534506206036779/896300000000000000000000 | 235279/500000 | 369712197286333468085650127326341/448150000000000000000000000000 |
| `a * b * q * r` | -5800 | 355460158367258610483/25000000000000000000000 | 0 |
| `a * b * r` | 13191341/10000 | 9171508588571319/250000000000000000 | 120984497276272971748779/2500000000000000000000 |
| `a * q * r` | 38718869/10000 | 743707401224919/25000000000000000 | 28795509442358078296611/250000000000000000000 |
| `a * r` | -297841057658395841/89630000000000 | 19188982667/250000000000 | 0 |
| `b * q * r` | 1821174499/11203750 | 1747737806833701/25000000000000000 | 3182935524743724194990799/280093750000000000000000 |
| `b * r` | -11557554793539401/44815000000000 | 45094764993/250000000000 | 0 |
| `q * r` | 49815400357437941/89630000000000 | 3656684193/25000000000 | 182159187055009868833166613/2240750000000000000000000 |
| `r` | -922394008143173280175314117613/8033536900000000000000000000 | 94349/250000 | 0 |
| `a * a * b * r` | -1300 | 1865328931269400572177/250000000000000000000000 | 0 |
| `a * a * r` | 89939228353/22407500 | 3902712861762461/250000000000000000 | 351006983270244101922256733/5601875000000000000000000 |
| `a * c * p * w` | -2700 | 851756346441636003137/62500000000000000000000 | 0 |
| `a * c * w` | 22326027/10000 | 5478977392377643/125000000000000000 | 122323797194612851814361/1250000000000000000000 |
| `c * p * w` | 3555773/2000 | 4187942681746439/62500000000000000 | 14891373513301580642347/125000000000000000000 |
| `c * w` | -2514249016361149/1120375000000 | 26939210221/125000000000 | 0 |
| `a * c * q * r` | -2800 | 85153753732852000581/6250000000000000000000 | 0 |
| `a * c * r` | 5076237/5000 | 2197119326388833/62500000000000000 | 11153098418030070461421/312500000000000000000 |
| `c * q * r` | -23033576394/5601875 | 418686683414307/6250000000000000 | 0 |
| `c * r` | 4706358976607843/22407500000000 | 10802866151/62500000000 | 50842166082851867945822293/1400468750000000000000000 |
| `a * a * c * r` | -4000 | 446856719958940022039/62500000000000000000000 | 0 |
| `a * a * b * j` | -400 | 7936500208888347953763/1000000000000000000000000 | 0 |
| `a * a * j` | -2811709/5000 | 16605050682149959/1000000000000000000 | 0 |
| `a * b * j` | -7592679/2500 | 39022436530527861/1000000000000000000 | 0 |
| `a * j` | -59899442169070047/44815000000000 | 81644241073/1000000000000 | 0 |
| `b * j` | 73465006660799711/89630000000000 | 191866756467/1000000000000 | 14095492541834191025900981037/89630000000000000000000000 |
| `j` | 416409693032510613085383138767/321341476000000000000000000 | 401431/1000000 | 167159759483733767921478438778375577/321341476000000000000000000000000 |
| `a * a * c * j` | -1000 | 1901261698055488155541/250000000000000000000000 | 0 |
| `a * c * j` | 2843189/2500 | 9348183958617427/250000000000000000 | 26578653801117523654703/625000000000000000000 |
| `c * j` | -3260751877481/5000000000 | 45963448069/250000000000 | 0 |
| `a * b * b * q` | -98343000 | 1800704521645590559419/100000000000000000000000 | 0 |
| `b * b * q` | -33973099/10000 | 8853761236905693/100000000000000000 | 0 |
| `a * b * c * q` | 2500 | 431375347623109345533/25000000000000000000000 | 431375347623109345533/10000000000000000000 |
| `b * c * q` | -13255547/5000 | 2121000022731051/25000000000000000 | 0 |
| `a * b * b * h` | 1000 | 9449459135790828617961/1000000000000000000000000 | 9449459135790828617961/1000000000000000000000 |
| `b * b * h` | -8610691/5000 | 46461401079691167/1000000000000000000 | 0 |
| `a * b * c * h` | -100 | 2263704939124051088127/250000000000000000000000 | 0 |
| `b * c * h` | -11725109/10000 | 11130256408470969/250000000000000000 | 0 |
| `a * b * h * u` | -500 | 6827294871683518546971/1000000000000000000000000 | 0 |
| `a * h * u` | 4093141/5000 | 14284328656518303/1000000000000000000 | 58467771281469983259723/5000000000000000000000 |
| `b * h * u` | -2786321/10000 | 33568660466624637/1000000000000000000 | 0 |
| `h * u` | -9466152578591291/8963000000000 | 70233641241/1000000000000 | 0 |
| `a * c * h * u` | -1800 | 1635541346842689175197/250000000000000000000000 | 0 |
| `c * h * u` | -2379013/10000 | 8041681688453259/250000000000000000 | 0 |
| `a * b * b * w` | -6509500 | 10931391984628658080593/500000000000000000000000 | 0 |
| `b * b * w` | -803759/1000 | 53747815621898871/500000000000000000 | 0 |
| `a * b * c * w` | -300 | 2618715597528641115351/125000000000000000000000 | 0 |
| `b * c * w` | 1548413/1250 | 12875784099598497/125000000000000000 | 19937031485011607535261/156250000000000000000 |
| `a * b * b * k` | -3752400 | 2719311513413997578333967/112037500000000000000000000 | 0 |
| `a * b * k` | -1054207/10000 | 5689448032802108931/112037500000000000000 | 0 |
| `a * k` | 601970493701/5000000000 | 11903681780583/112037500000000 | 7165665198317147265607683/560187500000000000000000 |
| `b * b * k` | -2502939/5000 | 13370397296794705449/112037500000000000000 | 0 |
| `b * k` | -47343446570506521/89630000000000 | 27974058956757/112037500000000 | 0 |
| `k` | -10304084712311906414864401383/27785300000000000000000000 | 58528401/112037500 | 0 |
| `a * b * c * k` | 1000 | 651436110307808670490569/28009375000000000000000000 | 651436110307808670490569/28009375000000000000000 |
| `a * c * k` | -1166329/10000 | 1362959660194972917/28009375000000000000 | 0 |
| `b * c * k` | -178759/10000 | 3203001776489719743/28009375000000000000 | 0 |
| `c * k` | 1850911156935348245639/1389265000000000000 | 6701443386099/28009375000000 | 12403776330901237734880779369972261/38912444359375000000000000000000 |
| `a * b * e * p` | -40412200 | 5564703787521076741857/500000000000000000000000 | 0 |
| `a * e * p` | -44698933/10000 | 11642687077542701/500000000000000000 | 0 |
| `b * e * p` | -16541157189/2000 | 27360712485906279/500000000000000000 | 0 |
| `e * p` | -21096969308711/10000000000 | 57245133947/500000000000 | 0 |
| `a * b * c * e` | -3400 | 4098527708060490327777/250000000000000000000000 | 0 |
| `b * c * e` | 16857419/10000 | 20151771328284519/250000000000000000 | 339706852873078687996461/2500000000000000000000 |
| `a * c * c * q` | -3000 | 103339936286106065931/6250000000000000000000 | 0 |
| `a * c * c` | -610803/500 | 2666355401246383/62500000000000000 | 0 |
| `c * c * q` | 631943/1250 | 508105083935757/6250000000000000 | 321093451057614085851/7812500000000000000 |
| `c * c` | 141052074430793709/89630000000000 | 13110021001/62500000000 | 1849195658022320646088682709/5601875000000000000000000 |
| `a * c * e * p` | 3500 | 1333076027691561721799/125000000000000000000000 | 9331532193840932052593/250000000000000000000 |
| `c * e * p` | 5050651/2500 | 6554510591797553/125000000000000000 | 33104545474972902857003/312500000000000000000 |
| `a * c * c * e` | 5000 | 981840048467159351239/62500000000000000000000 | 981840048467159351239/12500000000000000000 |
| `c * c * e` | 99737540679/89630000 | 4827542363261233/62500000000000000 | 481487202835363021441197207/5601875000000000000000000 |
| `a * c * c * v` | 3000 | 136338750731931301939/6250000000000000000000 | 409016252195793905817/6250000000000000000 |
| `c * c * v` | -171456167137/89630000 | 670354703844133/6250000000000000 | 0 |
| `a * b * f * v` | 3700 | 468966748659417254427/25000000000000000000000 | 17351769700398438413799/250000000000000000000 |
| `a * f * v` | 11585477/5000 | 981190250711711/25000000000000000 | 11367557082244761421147/125000000000000000000 |
| `b * f * v` | -5385013/5000 | 2305830618387069/25000000000000000 | 0 |
| `f * v` | 3949465277907955914642851647/1245105138745000000000000 | 4824347417/25000000000 | 19053592612006434280557113820718645799/31127628468625000000000000000000000 |
| `a * c * f * v` | 400 | 112345302516240197789/6250000000000000000000 | 112345302516240197789/15625000000000000000 |
| `c * f * v` | -9094271301/11203750 | 552382954899083/6250000000000000 | 0 |
| `a * b * p * v` | -31110300 | 772717270769635575957/50000000000000000000000 | 0 |
| `a * p * v` | 27601837/10000 | 1616708764114001/50000000000000000 | 44624131783546105019837/500000000000000000000 |
| `b * p * v` | -821221/500 | 3799320841808979/50000000000000000 | 0 |
| `p * v` | -1973459905457/175058593750 | 7949085047/50000000000 | 0 |
| `a * b * q * u` | 5300 | 1301020573704971056209/100000000000000000000000 | 68954090406363465979077/1000000000000000000000 |
| `a * q * u` | -111716/625 | 2722045233577437/100000000000000000 | 0 |
| `b * q * u` | 731868/625 | 6396899316584823/100000000000000000 | 1170421477257575309841/15625000000000000000 |
| `q * u` | 12500163187377309/4481500000000 | 13383838539/100000000000 | 167300165811009506528311551/448150000000000000000000 |
| `a * c * p * v` | 1000 | 185111536782289000499/12500000000000000000000 | 185111536782289000499/12500000000000000000 |
| `c * p * v` | 2360167/10000 | 910162288796453/12500000000000000 | 2148134998661858087651/125000000000000000000 |
| `a * c * q * u` | -1100 | 311671457199382959063/25000000000000000000000 | 0 |
| `c * q * u` | 12316571/71704 | 1532436128876961/25000000000000000 | 18874358384278240420731/1792600000000000000000 |
| `a * b * r * k` | 2200 | 536793732446846175530919/28009375000000000000000000 | 5904731056915307930840109/140046875000000000000000 |
| `a * r * k` | 942693/2500 | 1123100472316225467/28009375000000000000 | 1058738953549199534162631/70023437500000000000000 |
| `b * r * k` | 5656759529/22407500 | 2639324488511066193/28009375000000000000 | 14930023950508024709202503097/627620070312500000000000000 |
| `r * k` | 2039894666658339636513/896300000000000000 | 5522096105949/28009375000000 | 11264494395300150711214317396915837/25104802812500000000000000000000 |
| `a * b * e * r` | -2800 | 3377252122095382509327/250000000000000000000000 | 0 |
| `a * e * r` | 345304781817/89630000 | 7066016654417411/250000000000000000 | 2439929339168892394601015787/22407500000000000000000000 |
| `b * e * r` | 214867276207/89630000 | 16605380597667369/250000000000000000 | 3567952899401353314833989383/22407500000000000000000000 |
| `e * r` | 17425263076226381/44815000000000 | 34742415317/250000000000 | 605395726802241957813877777/11203750000000000000000000 |
| `a * b * w * j` | -2200 | 9181159844466064608219/500000000000000000000000 | 0 |
| `a * w * j` | -14309847/5000 | 19209175395414367/500000000000000000 | 0 |
| `b * w * j` | 162264880057/44815000 | 45142218594799293/500000000000000000 | 7324996685791982362633399701/22407500000000000000000000 |
| `w * j` | 2593792409204557553487/896300000000000000 | 94448284249/500000000000 | 244979242747450575798020197126263/448150000000000000000000000000 |
| `a * b * e * j` | -1600 | 14369348870945865839613/1000000000000000000000000 | 0 |
| `a * e * j` | -170994310831/89630000 | 30064103823034009/1000000000000000000 | 0 |
| `b * e * j` | -543878/125 | 70651671334112811/1000000000000000000 | 0 |
| `e * j` | -86884009622599957/89630000000000 | 147820141423/1000000000000 | 0 |
| `a * c * r * k` | 4000 | 128593880979735499746033/7002343750000000000000000 | 128593880979735499746033/1750585937500000000000 |
| `c * r * k` | -17881102739/44815000 | 632274482035054551/7002343750000000000 | 0 |
| `a * c * e * r` | -3300 | 809051840914139142089/62500000000000000000000 | 0 |
| `c * e * r` | 169226209043/89630000 | 3977971811381183/62500000000000000 | 673177089319953440914637869/5601875000000000000000000 |
| `a * c * w * j` | -4000 | 2199431373599549607133/125000000000000000000000 | 0 |
| `c * w * j` | 3576897/1250 | 10814234098226251/125000000000000000 | 38681401503243182523147/156250000000000000000 |
| `a * c * e * j` | 100 | 3442309823633570996491/250000000000000000000000 | 3442309823633570996491/2500000000000000000000 |
| `c * e * j` | -15882419403/4481500 | 16925258372792077/250000000000000000 | 0 |
| `a * b * f * w` | 3500 | 2157863369210471363001/125000000000000000000000 | 15105043584473299541007/250000000000000000000 |
| `a * f * w` | 1517891/10000 | 4514764652909093/125000000000000000 | 6852920633768836082863/1250000000000000000000 |
| `b * f * w` | -2770463/5000 | 10609851212788047/125000000000000000 | 0 |
| `f * w` | -32555394845453081/22407500000000 | 22198338371/125000000000 | 0 |
| `a * b * h * r` | 2100 | 1865328931269400572177/250000000000000000000000 | 39171907556657412015717/2500000000000000000000 |
| `a * h * r` | 87103250933/89630000 | 3902712861762461/250000000000000000 | 339938977717542181122626113/22407500000000000000000000 |
| `b * h * r` | -5499901537/5601875 | 9171508588571319/250000000000000000 | 0 |
| `h * r` | -981948157696288751427/803353690000000000 | 19188982667/250000000000 | 0 |
| `a * b * f * h` | -2500 | 1865328931269400572177/250000000000000000000000 | 0 |
| `a * f * h` | -2808673/5000 | 3902712861762461/250000000000000000 | 0 |
| `b * f * h` | -16074951/5000 | 9171508588571319/250000000000000000 | 0 |
| `f * h` | 48601418917454083/89630000000000 | 19188982667/250000000000 | 932611785198632302455379361/22407500000000000000000000 |
| `a * c * f * w` | 400 | 516936037993438239407/31250000000000000000000 | 516936037993438239407/78125000000000000000 |
| `c * f * w` | -168964280499/89630000 | 2541687545141129/31250000000000000 | 0 |
| `a * c * h * r` | 800 | 446856719958940022039/62500000000000000000000 | 446856719958940022039/78125000000000000000 |
| `c * h * r` | -455152680063/89630000 | 2197119326388833/62500000000000000 | 0 |
| `a * c * f * h` | -900 | 446856719958940022039/62500000000000000000000 | 0 |
| `c * f * h` | 834289/10000 | 2197119326388833/62500000000000000 | 1833032485693613094737/625000000000000000000 |
| `a * b * f * k` | -8200 | 536793732446846175530919/28009375000000000000000000 | 0 |
| `a * f * k` | 2625937/2000 | 1123100472316225467/28009375000000000000 | 2949191084972652154137579/56018750000000000000000 |
| `b * f * k` | 98367/50 | 2639324488511066193/28009375000000000000 | 259622431961368048206831/1400468750000000000000 |
| `f * k` | 1128202139872480839361/1389265000000000000 | 5522096105949/28009375000000 | 6230040643313155470461493105458589/38912444359375000000000000000000 |
| `a * b * h * j` | 2900 | 7936500208888347953763/1000000000000000000000000 | 230158506057762090659127/10000000000000000000000 |
| `a * h * j` | -19083339/10000 | 16605050682149959/1000000000000000000 | 0 |
| `b * h * j` | 26432121/10000 | 39022436530527861/1000000000000000000 | 1031445764089732615823181/10000000000000000000000 |
| `h * j` | -229877598582923243/44815000000000 | 81644241073/1000000000000 | 0 |
| `a * c * f * k` | -3200 | 128593880979735499746033/7002343750000000000000000 | 0 |
| `c * f * k` | -48540779/10000 | 632274482035054551/7002343750000000000 | 0 |
| `a * c * h * j` | 5000 | 1901261698055488155541/250000000000000000000000 | 1901261698055488155541/50000000000000000000 |
| `c * h * j` | 14838019/5000 | 9348183958617427/250000000000000000 | 138708531193460595557113/1250000000000000000000 |
| `a * b * u * w` | 400 | 7898000865926977968723/500000000000000000000000 | 7898000865926977968723/1250000000000000000000 |
| `a * u * w` | 18803563/10000 | 16524500877541239/500000000000000000 | 310719493294401972634557/5000000000000000000000 |
| `b * u * w` | 14175791/5000 | 38833141737150981/500000000000000000 | 550490501139229242100971/2500000000000000000000 |
| `u * w` | -1957472389776543773487/896300000000000000 | 81248191233/500000000000 | 0 |
| `a * b * v * r` | -400 | 468966748659417254427/25000000000000000000000 | 0 |
| `a * v * r` | -6385899/5000 | 981190250711711/25000000000000000 | 0 |
| `b * v * r` | -110307199693/44815000 | 2305830618387069/25000000000000000 | 0 |
| `v * r` | 1375556150089636054367/448150000000000000 | 4824347417/25000000000 | 6636160759623400017355508020039/11203750000000000000000000000 |
| `a * c * u * w` | -300 | 1892038825977594324261/125000000000000000000000 | 0 |
| `c * u * w` | 46122607/10000 | 9302836647987267/125000000000000000 | 429071078700314056845069/1250000000000000000000 |
| `a * c * v * r` | 700 | 112345302516240197789/6250000000000000000000 | 786417117613681384523/62500000000000000000 |
| `c * v * r` | -218117942001/44815000 | 552382954899083/6250000000000000 | 0 |
| `a * c * c * h` | -1000 | 542291360571693113689/62500000000000000000000 | 0 |
| `c * c * h` | -2884249/2500 | 2666355401246383/62500000000000000 | 0 |
| `b * b * e * q` | -3100 | 3260247061549494050469/100000000000000000000000 | 0 |
| `b * b * e` | 2923833/2500 | 84120212130698817/1000000000000000000 | 245953452194737514205561/2500000000000000000000 |
| `b * e * q` | -49733/40 | 6821214171043617/100000000000000000 | 0 |
| `e * q` | 2223036246586917/44815000000000 | 14271606381/100000000000 | 31726298281984134128317377/4481500000000000000000000 |
| `a * b * b * e` | -28700 | 17108621103777917497911/1000000000000000000000000 | 0 |
| `b * e * p * v` | -2925000 | 1399035311541845764107/50000000000000000000000 | 0 |
| `b * e * v` | 11318143/5000 | 8999384477848473/100000000000000000 | 101856320432269349745639/500000000000000000000 |
| `e * p * v` | 5517359/10000 | 2927115434111951/50000000000000000 | 16149946684436479857409/500000000000000000000 |
| `e * v` | 23484496893975705693/22407500000000000 | 18828857989/100000000000 | 442186256959780152109555831377/2240750000000000000000000000 |
| `b * c * e * v` | -4800 | 1030420523329172310027/25000000000000000000000 | 0 |
| `c * e * v` | -758697351559/155000000 | 2155885410882511/25000000000000000 | 0 |
| `b * e * q * u` | -1000 | 2355549426043979127759/100000000000000000000000 | 0 |
| `e * q * u` | 2531789/625 | 4928371016731587/100000000000000000 | 12477595528079847919143/62500000000000000000 |
| `b * c * e * q` | -2200 | 781022201370323102883/25000000000000000000000 | 0 |
| `c * e * q` | -1456797/1000 | 1634084659018119/25000000000000000 | 0 |
| `b * e * f * k` | 4800 | 971886374377895437446969/28009375000000000000000000 | 2915659123133686312340907/17505859375000000000000 |
| `b * e * f` | -162819567071/44815000 | 16605380597667369/250000000000000000 | 0 |
| `b * e * k` | -4621859/10000 | 10300971651823500381/112037500000000000000 | 0 |
| `e * f * k` | -4739031/10000 | 2033418015381918117/28009375000000000000 | 0 |
| `e * f` | 3220631369590099596639/1389265000000000000 | 34742415317/250000000000 | 111892512625257764237826315319563/347316250000000000000000000000 |
| `e * k` | 13484284446371/10000000000 | 21552088685433/112037500000000 | 290614494247792613577413643/1120375000000000000000000 |
| `b * e * e * f` | -5500 | 6114649113620848288977/250000000000000000000000 | 0 |
| `b * e * e` | -5534949/10000 | 64808838605823573/1000000000000000000 | 0 |
| `e * e * f` | 3420533/1250 | 12793303819424861/250000000000000000 | 43759917893368778070913/312500000000000000000 |
| `e * e` | 45421538089426479/89630000000000 | 135595542289/1000000000000 | 6158958088836252397000870431/89630000000000000000000000 |
| `b * e * e * j` | 700 | 26016276890374362732963/1000000000000000000000000 | 182113938232620539130741/10000000000000000000000 |
| `e * e * j` | -123876117563/44815000 | 54432254136615559/1000000000000000000 | 0 |
| `a * b * e * f` | 3300 | 3377252122095382509327/250000000000000000000000 | 111449320029147622807791/2500000000000000000000 |
| `a * e * f` | -9191397/2500 | 7066016654417411/250000000000000000 | 0 |
| `b * e * r * k` | -5000 | 971886374377895437446969/28009375000000000000000000 | 0 |
| `e * r * k` | -613671/100 | 2033418015381918117/28009375000000000000 | 0 |
| `b * e * e * r` | 4800 | 6114649113620848288977/250000000000000000000000 | 18343947340862544866931/156250000000000000000 |
| `e * e * r` | 204647268243/89630000 | 12793303819424861/250000000000000000 | 2618114678448035963049989223/22407500000000000000000000 |
| `b * e * w * j` | 3200 | 16622854579818728059269/500000000000000000000000 | 16622854579818728059269/156250000000000000000 |
| `b * e * w` | -11903107/10000 | 41408995767189699/500000000000000000 | 0 |
| `e * w * j` | 128258971/1120375 | 34778975053862017/500000000000000000 | 4460715552843011876404507/560187500000000000000000 |
| `e * w` | 2709859736985313/5601875000000 | 86637492007/500000000000 | 234775451303156177313893191/2800937500000000000000000 |
| `b * e * f * w` | 2700 | 3906897341638580910951/125000000000000000000000 | 105486228224241684595677/1250000000000000000000 |
| `e * f * w` | -19935727/5000 | 8174160733368443/125000000000000000 | 0 |
| `b * e * h * r` | -2500 | 3377252122095382509327/250000000000000000000000 | 0 |
| `b * e * h` | 43669967/10000 | 35795314439955723/1000000000000000000 | 1563180200347489904871141/10000000000000000000000 |
| `e * h * r` | 18258163109/11203750 | 7066016654417411/250000000000000000 | 129012484607263575407490799/2800937500000000000000000 |
| `e * h` | -66741563521896127/44815000000000 | 74892332239/1000000000000 | 0 |
| `b * e * f * h` | -3400 | 3377252122095382509327/250000000000000000000000 | 0 |
| `e * f * h` | 14426161/5000 | 7066016654417411/250000000000000000 | 101935493885306932289171/1250000000000000000000 |
| `a * a * f * p` | 1600 | 606711838776730424599/125000000000000000000000 | 606711838776730424599/78125000000000000000 |
| `a * f * p` | -775211/10000 | 2983100056429153/125000000000000000 | 0 |
| `f * p` | 109752308351/5000000000 | 14667401191/125000000000 | 1609781138222456646041/625000000000000000000 |
| `a * f * f * k` | -61589100 | 105963406462563556585983/7002343750000000000000000 | 0 |
| `a * f * f` | -8907109/5000 | 1810461325648783/62500000000000000 | 0 |
| `f * f * k` | 34537931/10000 | 521004245500182201/7002343750000000000 | 17994408681792353345566131/70023437500000000000000 |
| `f * f` | 80682412330918899/44815000000000 | 8901733801/62500000000 | 718213356992359960618005099/2800937500000000000000000 |
| `a * e * f * f` | -3600 | 666671605327628310439/62500000000000000000000 | 0 |
| `e * f * f` | 6850241911/17926000 | 3277912142743633/62500000000000000 | 22454491140798249305002663/1120375000000000000000000 |
| `a * f * j` | 39699331093/89630000 | 7703052500996477/250000000000000000 | 305806031663820852849559361/22407500000000000000000000 |
| `f * j` | 4190311168471/10000000000 | 37874613419/250000000000 | 158706415611157306312349/2500000000000000000000 |
| `a * e * f * j` | 1900 | 2836518131599435715141/250000000000000000000000 | 53893844500389278587679/2500000000000000000000 |
| `e * f * j` | -14140171594/5601875 | 13946682523118627/250000000000000000 | 0 |
| `a * f * f * w` | -1300 | 425963530237320015457/31250000000000000000000 | 0 |
| `f * f * w` | -1319387/500 | 2094391026965479/31250000000000000 | 0 |
| `a * f * h * r` | 2300 | 368217055794426432889/62500000000000000000000 | 8468992283271807956447/625000000000000000000 |
| `a * f * r` | -15199927/5000 | 1810461325648783/62500000000000000 | 0 |
| `f * h * r` | 14931143119/5601875 | 1810461325648783/62500000000000000 | 27032257164676444501174177/350117187500000000000000 |
| `f * r` | -26866998699354267689/16067073800000000 | 8901733801/62500000000 | 0 |
| `a * f * f * h` | 4000 | 368217055794426432889/62500000000000000000000 | 368217055794426432889/15625000000000000000 |
| `f * f * h` | -6984330482/1120375 | 1810461325648783/62500000000000000 | 0 |
| `b * b * q * k` | 1400 | 518196488031872399086893/11203750000000000000000000 | 3627375416223106793608251/56018750000000000000000 |
| `b * q * k` | 765863/1250 | 1084190602987031049/11203750000000000000 | 830341467775456560280287/14004687500000000000000 |
| `q * k` | 1869285850373/5000000000 | 2268385237557/11203750000000 | 4240260427760296362058761/56018750000000000000000 |
| `a * b * q * j` | 4700 | 1512392572613668308777/100000000000000000000000 | 71082450912842410512519/1000000000000000000000 |
| `a * q * j` | -12680033/10000 | 3164285851266261/100000000000000000 | 0 |
| `b * q * j` | -1733974/625 | 7436179880391519/100000000000000000 | 0 |
| `q * j` | -15598700107953011/17926000000000 | 15558261267/100000000000 | 0 |
| `a * b * p * k` | -14981900 | 884475901731383052304329/56018750000000000000000000 | 0 |
| `a * p * k` | 249787/10000 | 1850534465927652597/56018750000000000000 | 462239452640670559246839/560187500000000000000000 |
| `b * p * k` | -2232387/1250 | 4348819231358486463/56018750000000000000 | 0 |
| `p * k` | -10508705874609/10000000000 | 9098766691059/56018750000000 | 0 |
| `a * a * p * j` | 1400 | 2581404573996350476181/500000000000000000000000 | 18069832017974453333267/2500000000000000000000 |
| `a * p * j` | 4342587/5000 | 12692332072967507/500000000000000000 | 55117556259751747320609/2500000000000000000000 |
| `p * j` | -5762159885091/10000000000 | 62406061829/500000000000 | 0 |
| `b * c * q * v` | -4700 | 108453094162306830783/2500000000000000000000 | 0 |
| `b * q * v` | 5085461/2500 | 947196867765717/10000000000000000 | 4816932730344710940537/25000000000000000000 |
| `c * q * v` | 2130699/10000 | 226909730712819/2500000000000000 | 483476336320072730481/25000000000000000000 |
| `q * v` | 366614565627/1000000000 | 1981761681/10000000000 | 726542697856048338987/10000000000000000000 |
| `a * a * p * u` | 4600 | 2220627448613678866077/500000000000000000000000 | 51074431318114613919771/2500000000000000000000 |
| `a * p * u` | -33979639/10000 | 10918451633684619/500000000000000000 | 0 |
| `p * u` | -754481789977/5000000000 | 53684190093/500000000000 | 0 |
| `b * c * q * w` | -700 | 499026764348138948229/12500000000000000000000 | 0 |
| `b * q * w` | -4165633/1250 | 4358350416581271/50000000000000000 | 0 |
| `c * q * w` | 2861359/2500 | 1044082970535297/12500000000000000 | 2987496204487906888623/31250000000000000000 |
| `q * w` | 34663659212528987/89630000000000 | 9118708203/50000000000 | 316087793607284594132180361/4481500000000000000000000 |
| `a * a * p * r` | -4700 | 606711838776730424599/125000000000000000000000 | 0 |
| `a * p * r` | -805123/5000 | 2983100056429153/125000000000000000 | 0 |
| `p * r` | -41935023251934309/89630000000000 | 14667401191/125000000000 | 0 |
| `b * f * q * v` | 3100 | 89367077276827633233/2500000000000000000000 | 2770379395581656630223/25000000000000000000 |
| `f * q * v` | -8170083/10000 | 186977232840669/2500000000000000 | 0 |
| `a * f * p * v` | -5112500 | 152534855185391880349/12500000000000000000000 | 0 |
| `f * p * v` | -15233009/10000 | 749988225099403/12500000000000000 | 0 |
| `b * f * h * q` | 2100 | 355460158367258610483/25000000000000000000000 | 7464663325712430820143/250000000000000000000 |
| `b * h * q` | -12994647/10000 | 3767503188875967/100000000000000000 | 0 |
| `f * h * q` | -2150523/1250 | 743707401224919/25000000000000000 | 0 |
| `h * q` | -8035137479601/10000000000 | 7882514931/100000000000 | 0 |
| `b * b * h * q` | -114959400 | 1800704521645590559419/100000000000000000000000 | 0 |
| `a * f * h * p` | -900 | 606711838776730424599/125000000000000000000000 | 0 |
| `f * h * p` | 5826811/5000 | 2983100056429153/125000000000000000 | 17381960222902009421083/625000000000000000000 |
| `b * b * q * w` | 4500 | 2083104090057934543347/50000000000000000000000 | 18747936810521410890123/100000000000000000000 |
| `b * h * q * r` | 600 | 355460158367258610483/25000000000000000000000 | 1066380475101775831449/125000000000000000000 |
| `h * q * r` | 33902043/10000 | 743707401224919/25000000000000000 | 25213200295745456609517/250000000000000000000 |
| `a * h * p * r` | 4100 | 606711838776730424599/125000000000000000000000 | 24875185389845947408559/1250000000000000000000 |
| `h * p * r` | -77011196091/22407500 | 2983100056429153/125000000000000000 | 0 |
| `b * f * q * q` | -3900 | 67737074179453749657/2500000000000000000000 | 0 |
| `b * q * q` | 12315049/10000 | 717941622904893/10000000000000000 | 8841486265213279634757/100000000000000000000 |
| `f * q * q` | 20601603/10000 | 141722109268101/2500000000000000 | 2919702631464037365903/25000000000000000000 |
| `q * q` | 5015051920007/5000000000 | 1502105049/10000000000 | 7533134810039658815343/50000000000000000000 |
| `b * e * f * q` | 2900 | 643574735823794220333/25000000000000000000000 | 18663667338890032389657/250000000000000000000 |
| `e * f * q` | -5907587/5000 | 1346511790440969/25000000000000000 | 0 |
| `b * p * q` | 861439/1000 | 2879750412962091/50000000000000000 | 2480729315991650708949/50000000000000000000 |
| `p * q` | -59969655825825007/44815000000000 | 6025124463/50000000000 | 0 |
| `b * e * p * q` | 2200 | 1060419133816269655203/50000000000000000000000 | 11664610471978966207233/250000000000000000000 |
| `e * p * q` | -1102081/5000 | 2218649656383879/50000000000000000 | 0 |
| `a * f * p * q` | -4900 | 115616008887024682821/12500000000000000000000 | 0 |
| `a * p * q` | 8228221/2000 | 1225407888658329/50000000000000000 | 10082926923024124502709/100000000000000000000 |
| `f * p * q` | -6519537/10000 | 568464467959587/12500000000000000 | 0 |
| `a * e * f * p` | -32725000 | 1098475883079076296649/125000000000000000000000 | 0 |
| `e * f * p` | -328049/400 | 5401021142765503/125000000000000000 | 0 |
| `a * p * p` | 132337/2000 | 4915258791003823/250000000000000000 | 650470602625072924351/500000000000000000000 |
| `p * p` | 11171280927909/10000000000 | 24167500681/250000000000 | 269981939432883069406029/2500000000000000000000 |
| `a * e * p * p` | -1100 | 1809960490387710754759/250000000000000000000000 | 0 |
| `e * p * p` | -19719343223/2000 | 8899271278266673/250000000000000000 | 0 |
| `b * h * q * u` | 4200 | 1301020573704971056209/100000000000000000000000 | 27321432047804392180389/500000000000000000000 |
| `h * q * u` | -29261/400 | 2722045233577437/100000000000000000 | 0 |
| `a * h * p * u` | -42601500 | 2220627448613678866077/500000000000000000000000 | 0 |
| `h * p * u` | -6087483/10000 | 10918451633684619/500000000000000000 | 0 |
| `a * e * p * u` | 100 | 4020534200426588308227/500000000000000000000000 | 4020534200426588308227/5000000000000000000000 |
| `e * p * u` | 88857/200 | 19768290370515669/500000000000000000 | 1756550977452910800333/100000000000000000000 |
| `b * p * q * k` | 3300 | 168547186949760859846491/5601875000000000000000000 | 5562057169342108374934203/56018750000000000000000 |
| `p * q * k` | 1313353/1250 | 352640900645373663/5601875000000000000 | 463141984785303436422039/7002343750000000000000 |
| `b * f * q * k` | -2200 | 102292299201223392442101/2800937500000000000000000 | 0 |
| `f * q * k` | 1196547/10000 | 214019878778265393/2800937500000000000 | 256084843892497121197971/28009375000000000000000 |
| `b * q * q * j` | -3300 | 288204023624334101883/10000000000000000000000 | 0 |
| `q * q * j` | -1313353/1250 | 602991531925119/10000000000000000 | 0 |
| `a * p * p * k` | -4300 | 287682237538646945077023/28009375000000000000000000 | 0 |
| `p * p * k` | -6865331/10000 | 1414485171025341081/28009375000000000000 | 0 |
| `a * f * p * k` | 3300 | 174596076325808094874353/14004687500000000000000000 | 5761670518751667130853649/140046875000000000000000 |
| `f * p * k` | -4968281/2500 | 858459538534725591/14004687500000000000 | 0 |
| `a * p * q * j` | 4300 | 491916714152001668799/50000000000000000000000 | 21152418708536071758357/500000000000000000000 |
| `p * q * j` | 6865331/10000 | 2418671738306553/50000000000000000 | 16604982063819865814043/500000000000000000000 |
| `b * p * q * w` | -2200 | 677544797411307808389/25000000000000000000000 | 0 |
| `p * q * w` | 4209/20 | 1417585258530177/25000000000000000 | 5966616353153514993/500000000000000000 |
| `b * h * p * q` | -1900 | 585692278239468953853/50000000000000000000000 | 0 |
| `h * p * q` | -9676647/5000 | 1225407888658329/50000000000000000 | 0 |
| `b * q * q * r` | 2200 | 67737074179453749657/2500000000000000000000 | 745107815973991246227/12500000000000000000 |
| `q * q * r` | -45879/50 | 141722109268101/2500000000000000 | 0 |
| `a * p * p * w` | 2800 | 1156457173088588471617/125000000000000000000000 | 8095200211620119301319/312500000000000000000 |
| `p * p * w` | -32278071/10000 | 5686105392724999/125000000000000000 | 0 |
| `a * h * p * p` | 4900 | 999680078690730533209/250000000000000000000000 | 48984323855845796127241/2500000000000000000000 |
| `h * p * p` | 1198713/5000 | 4915258791003823/250000000000000000 | 5891984611140565679799/1250000000000000000000 |
| `a * p * q * r` | -2800 | 115616008887024682821/12500000000000000000000 | 0 |
| `p * q * r` | 265497977973/89630000 | 568464467959587/12500000000000000 | 150926166792767593580177151/1120375000000000000000000 |
| `b * h * q * j` | -2900 | 1512392572613668308777/100000000000000000000000 | 0 |
| `h * q * j` | 18850373/10000 | 3164285851266261/100000000000000000 | 59647968574991542165353/1000000000000000000000 |
| `a * h * p * j` | 1300 | 2581404573996350476181/500000000000000000000000 | 33558259461952556190353/5000000000000000000000 |
| `h * p * j` | 7735469/2000 | 12692332072967507/500000000000000000 | 98181141288145888405783/1000000000000000000000 |
| `b * h * p * w` | 5000 | 3555514965861754418391/250000000000000000000000 | 3555514965861754418391/50000000000000000000 |
| `b * h * w` | 3046349/1000 | 22871078328445149/500000000000000000 | 69673286594780551211001/500000000000000000000 |
| `h * p * w` | 35652379/10000 | 7438985025560363/250000000000000000 | 265217513506602749053577/2500000000000000000000 |
| `h * w` | -128398003720701423/44815000000000 | 47851748857/500000000000 | 0 |
| `b * c * h * w` | -4700 | 2618715597528641115351/125000000000000000000000 | 0 |
| `c * h * w` | 885449/1250 | 5478977392377643/125000000000000000 | 4851355053103391616707/156250000000000000000 |
| `b * e * r * w` | -4000 | 3906897341638580910951/125000000000000000000000 | 0 |
| `b * r * w` | -716599/5000 | 10609851212788047/125000000000000000 | 0 |
| `e * r * w` | -24401/400 | 8174160733368443/125000000000000000 | 0 |
| `r * w` | -9530192115857837/5601875000000 | 22198338371/125000000000 | 0 |
| `b * w * k` | 781911/1000 | 6581708617286830203/56018750000000000000 | 5146310366651362690857933/56018750000000000000000 |
| `w * k` | 11094750047113/10000000000 | 13770503658879/56018750000000 | 152780296118117524130766327/560187500000000000000000 |
| `b * w * w` | 2837653/2500 | 26457887031060837/250000000000000000 | 75078302507350877295561/625000000000000000000 |
| `w * w` | -72008223770801339/89630000000000 | 55356207841/250000000000 | 0 |
| `a * e * r * r` | -4000 | 666671605327628310439/62500000000000000000000 | 0 |
| `a * r * r` | 18289529/10000 | 1810461325648783/62500000000000000 | 33112484918831860493207/625000000000000000000 |
| `e * r * r` | -149148738361/89630000 | 3277912142743633/62500000000000000 | 0 |
| `r * r` | 456406679751657988429/200838422500000000 | 8901733801/62500000000 | 4062810768147516201390096188629/12552401406250000000000000000 |
| `a * r * w` | 23471891231/44815000 | 4514764652909093/125000000000000000 | 105970064866645698626863483/5601875000000000000000000 |
| `a * e * r * j` | 4000 | 2836518131599435715141/250000000000000000000000 | 2836518131599435715141/62500000000000000000 |
| `a * r * j` | 83324452117/44815000 | 7703052500996477/250000000000000000 | 641852629274018042572191809/11203750000000000000000000 |
| `e * r * j` | -1106322613/11203750 | 13946682523118627/250000000000000000 | 0 |
| `r * j` | -179510808628157997399/100419211250000000 | 37874613419/250000000000 | 0 |
| `b * f * w * w` | 600 | 2496275183493558910113/62500000000000000000000 | 7488825550480676730339/312500000000000000000 |
| `f * w * w` | 120610422533/89630000 | 5222802853590509/62500000000000000 | 629924458978109426648539297/5601875000000000000000000 |
| `b * h * r * w` | 600 | 2157863369210471363001/125000000000000000000000 | 6473590107631414089003/625000000000000000000 |
| `h * r * w` | 198852618473/89630000 | 4514764652909093/125000000000000000 | 897772773020318139881474989/11203750000000000000000000 |
| `b * f * h * w` | -600 | 2157863369210471363001/125000000000000000000000 | 0 |
| `f * h * w` | 1908103/2500 | 4514764652909093/125000000000000000 | 8614635978509799080579/312500000000000000000 |
| `a * f * r * w` | 3700 | 425963530237320015457/31250000000000000000000 | 15760650618780840571909/312500000000000000000 |
| `f * r * w` | 56166414473/22407500 | 2094391026965479/31250000000000000 | 117634434489075212976977567/700234375000000000000000 |
| `a * h * r * r` | -6300 | 368217055794426432889/62500000000000000000000 | 0 |
| `h * r * r` | 9699957/5000 | 1810461325648783/62500000000000000 | 17561397008956192202331/312500000000000000000 |
| `b * v * r * w` | 4000 | 542513522063491207251/12500000000000000000000 | 542513522063491207251/3125000000000000000 |
| `b * v * w` | 6461889/5000 | 5750071776738399/50000000000000000 | 37156325563316316375711/250000000000000000000 |
| `v * r * w` | 28035398887/44815000 | 1135067635924343/12500000000000000 | 31822073936863046958406241/560187500000000000000000 |
| `v * w` | -420150552414583920763/896300000000000000 | 12030521107/50000000000 | 0 |
| `b * u * w * k` | 600 | 2272841691681809213511381/56018750000000000000000000 | 6818525075045427640534143/280093750000000000000000 |
| `b * u * k` | 2636329/10000 | 9660197857360024539/112037500000000000000 | 25467459757096096132877331/1120375000000000000000000 |
| `u * w * k` | 1807058/625 | 4755326717009708433/56018750000000000000 | 4296575593293064850760057/17505859375000000000000 |
| `u * k` | -90564043794517644931903/27785300000000000000 | 20211437132127/112037500000000 | 0 |
| `b * u * w * w` | -4000 | 9136622754775145658699/250000000000000000000000 | 0 |
| `u * w * w` | 51401106763/44815000 | 19115993185109007/250000000000000000 | 982583206588568490599914341/11203750000000000000000000 |
| `b * v * w * j` | -8900 | 2308257063407872248969/50000000000000000000000 | 0 |
| `b * v * j` | -33168701/10000 | 9810722858427111/100000000000000000 | 0 |
| `v * w * j` | -364141755653/100000000 | 4829424118504117/50000000000000000 | 0 |
| `v * j` | -164814980671597610703/224075000000000000 | 20526371323/100000000000 | 0 |
| `a * b * u * k` | -5837400 | 1964720020823453870815437/112037500000000000000000000 | 0 |
| `a * u * k` | -932671/200 | 4110662718243385641/112037500000000000000 | 0 |
| `a * b * v * j` | 7400 | 1995334247115481116513/100000000000000000000000 | 73827367143272801310981/500000000000000000000 |
| `a * v * j` | 52750337/10000 | 4174714978785709/100000000000000000 | 220217622009894000533933/1000000000000000000000 |
| `a * v * r * r` | 4000 | 92574318964399221139/6250000000000000000000 | 92574318964399221139/1562500000000000000 |
| `v * r * r` | -180806717933/44815000 | 455172354446533/6250000000000000 | 0 |
| `a * u * r * k` | 8700 | 387836916803545191842709/28009375000000000000000000 | 33741811761908431690315683/280093750000000000000000 |
| `a * u * r` | 1649816006/1120375 | 6626473817447109/250000000000000000 | 5466231283682081243313327/140046875000000000000000 |
| `u * r * k` | 268735976479/44815000 | 1906928881979050323/28009375000000000000 | 512460395174647834572485352717/1255240140625000000000000000 |
| `u * r` | -181199599444296289/89630000000000 | 32581257123/250000000000 | 0 |
| `a * u * r * w` | -4000 | 1559070133295138358411/125000000000000000000000 | 0 |
| `u * r * w` | 771991/5000 | 7665685594642317/125000000000000000 | 5917840287893516943147/625000000000000000000 |
| `a * v * r * j` | -600 | 393880183533452858441/25000000000000000000000 | 0 |
| `v * r * j` | 31814675597/8963000 | 1936642607953727/25000000000000000 | 61613656319375876492100019/224075000000000000000000 |
| `b * f * k * k` | -271800 | 154475442032695575081447393/3138100351562500000000000000 | 0 |
| `b * k * k` | -568687/200 | 1637276940218715355557/12552401406250000000000 | 0 |
| `f * k * k` | -9648559/5000 | 323199455249521557549/3138100351562500000000 | 0 |
| `k * k` | -1510023228579/1250000000 | 3425573723616801/12552401406250000 | 0 |
| `b * j * k` | 14604797/5000 | 11229654461069919267/112037500000000000000 | 164006823784070573700923799/560187500000000000000000 |
| `j * k` | 4937819328276941/3585200000000 | 23495114541831/112037500000000 | 116014630704733736825897218971/401676845000000000000000000 |
| `b * e * j * k` | 4000 | 4135129351163159581445211/112037500000000000000000000 | 4135129351163159581445211/28009375000000000000000 |
| `e * j * k` | -6423381/10000 | 8651676513082054623/112037500000000000000 | 0 |
| `a * f * j * k` | -1800 | 450847345702374705443277/28009375000000000000000000 | 0 |
| `a * j * k` | 3694009/5000 | 4778506880861214273/112037500000000000000 | 17651847424463253275390457/560187500000000000000000 |
| `f * j * k` | -1381761/625 | 2216740561907213019/28009375000000000000 | 0 |
| `a * j * j` | 4391061/2500 | 32774529338175463/1000000000000000000 | 143914957570218086736243/2500000000000000000000 |
| `j * j` | -1245731863407/1000000000 | 161146847761/1000000000000 | 0 |
| `a * e * j * j` | -1800 | 12068663261784365266879/1000000000000000000000000 | 0 |
| `e * j * j` | 3509157/1250 | 59339587191576313/1000000000000000000 | 208231927770430359798141/1250000000000000000000 |
| `b * r * k * k` | 2400 | 154475442032695575081447393/3138100351562500000000000000 | 463426326098086725244342179/3922625439453125000000000 |
| `r * k * k` | 10403787/2000 | 323199455249521557549/3138100351562500000000 | 3362498290932054136648038063/6276200703125000000000000 |
| `b * v * r * k` | -1700 | 134956579071036347646669/2800937500000000000000000 | 0 |
| `b * v * k` | 14124751/10000 | 1430397556635855681/11203750000000000000 | 20204009318489859166060431/112037500000000000000000 |
| `v * r * k` | 54448475653/100000000 | 282361340185490217/2800937500000000000 | 15374144556438114584194186701/280093750000000000000000000 |
| `v * k` | -169315094077285133/100000000000000 | 2992732728333/11203750000000 | 0 |
| `b * u * k * k` | 3400 | 565395933934908317588432139/12552401406250000000000000000 | 9611730876893441399003346363/62762007031250000000000000 |
| `u * k * k` | -8616847/5000 | 1182943097255419038927/12552401406250000000000 | 0 |
| `b * w * j * k` | -2400 | 2642101871946069535220493/56018750000000000000000000 | 0 |
| `w * j * k` | -3916507/2000 | 5527907054287455849/56018750000000000000 | 0 |
| `b * v * j * k` | -3400 | 574205921557888181879511/11203750000000000000000000 | 0 |
| `v * j * k` | 12964547/5000 | 1201375691867444523/11203750000000000000 | 15575291621873002288326081/56018750000000000000000 |
| `a * r * j * k` | -3400 | 450847345702374705443277/28009375000000000000000000 | 0 |
| `r * j * k` | -37197628869/44815000 | 2216740561907213019/28009375000000000000 | 0 |
| `a * u * j * k` | 3400 | 1650147445647160541252271/112037500000000000000000000 | 28052506576001729201288607/560187500000000000000000 |
| `a * u * j` | -2854179/1000 | 28193960837015871/1000000000000000000 | 0 |
| `u * j * k` | 13118421/10000 | 8113497419386873737/112037500000000000000 | 106436274929930571555809277/1120375000000000000000000 |
| `u * j` | 17078678126388427/44815000000000 | 138624962937/1000000000000 | 2367531122283548294540730099/44815000000000000000000000 |
| `a * w * j * j` | 3400 | 7711158488156584759177/500000000000000000000000 | 131089694298661940906009/2500000000000000000000 |
| `w * j * j` | -4929837/5000 | 37914469194360319/500000000000000000 | 0 |
| `a * u * w * j` | 1900 | 6633446911772257113009/500000000000000000000000 | 126035491323672885147171/5000000000000000000000 |
| `u * w * j` | -54430811157/22407500 | 32615542654854423/500000000000000000 | 0 |
| `a * v * j * j` | -3400 | 1675860008648925949579/100000000000000000000000 | 0 |
| `v * j * j` | -1604321/10000 | 8239921766563213/100000000000000000 | 0 |
| `c * e * f * k` | -1000 | 232824329343214242478383/7002343750000000000000000 | 0 |
| `c * e * f` | -31400720629/17926000 | 3977971811381183/62500000000000000 | 0 |
| `c * e * k` | 18356293/5000 | 2467692602393393067/28009375000000000000 | 45297688443465624402020631/140046875000000000000000 |
| `c * e * e * f` | 3500 | 1464820494020327159639/62500000000000000000000 | 10253743458142290117473/125000000000000000000 |
| `c * e * e` | 3967821/2500 | 15525553996548211/250000000000000000 | 61602619184137919118231/625000000000000000000 |
| `c * e * e * j` | -1600 | 6232438666388344889941/250000000000000000000000 | 0 |
| `a * c * e * f` | 3200 | 809051840914139142089/62500000000000000000000 | 809051840914139142089/19531250000000000000 |
| `c * e * r * k` | -4900 | 232824329343214242478383/7002343750000000000000000 | 0 |
| `c * e * e * r` | -500 | 1464820494020327159639/62500000000000000000000 | 0 |
| `c * e * w * j` | 4300 | 3982157864692147084483/125000000000000000000000 | 171232788181762324632769/1250000000000000000000 |
| `c * e * w` | -46891429/10000 | 9919906197309493/125000000000000000 | 0 |
| `c * e * f * w` | 4800 | 935933229809953355057/31250000000000000000000 | 2807799689429860065171/19531250000000000000 |
| `c * e * h * r` | -1600 | 809051840914139142089/62500000000000000000000 | 0 |
| `c * e * h` | 12518159/10000 | 8575097149033261/250000000000000000 | 107344429552045057486499/2500000000000000000000 |
| `c * e * f * h` | 600 | 809051840914139142089/62500000000000000000000 | 2427155522742417426267/312500000000000000000 |
| `a * f * r * k` | -1200 | 105963406462563556585983/7002343750000000000000000 | 0 |
| `f * r * k` | 35740916509/44815000 | 521004245500182201/7002343750000000000 | 18621169239256550990228856309/313810035156250000000000000 |
| `a * e * f * r` | 3600 | 666671605327628310439/62500000000000000000000 | 6000044447948654793951/156250000000000000000 |
| `e * f * r` | 159541200871/89630000 | 3277912142743633/62500000000000000 | 522962039602951977509304343/5601875000000000000000000 |
| `a * f * w * j` | 1200 | 1812366489381950112083/125000000000000000000000 | 5437099468145850336249/312500000000000000000 |
| `f * w * j` | -2703583/2000 | 8911101170608901/125000000000000000 | 0 |
| `c * u * k` | 30987872693/4481500 | 2314189340191409373/28009375000000000000 | 71711804661349061902770951489/125524014062500000000000000 |
| `a * c * u * k` | -2700 | 470666770576149412508859/28009375000000000000000000 | 0 |
| `a * c * v * j` | -2300 | 478000690355984894791/25000000000000000000000 | 0 |
| `c * v * j` | 76458847799/89630000 | 2350248990112177/25000000000000000 | 179697329824740397179548423/2240750000000000000000000 |
| `a * f * v * r` | -2800 | 92574318964399221139/6250000000000000000000 | 0 |
| `f * v * r` | -9956971/2000 | 455172354446533/6250000000000000 | 0 |
| `a * f * u * w` | -2300 | 1559070133295138358411/125000000000000000000000 | 0 |
| `a * f * u` | 11281017/10000 | 6626473817447109/250000000000000000 | 74753363784675733229853/2500000000000000000000 |
| `f * u * w` | 2225877/5000 | 7665685594642317/125000000000000000 | 17062873254345656637009/625000000000000000000 |
| `f * u` | 532675329609793/11203750000000 | 32581257123/250000000000 | 17355231877095440991805539/2800937500000000000000000 |
| `a * f * v * j` | -2700 | 393880183533452858441/25000000000000000000000 | 0 |
| `f * v * j` | -13220649/5000 | 1936642607953727/25000000000000000 | 0 |
| `c * q * k` | -368169/500 | 259727841315038943/2800937500000000000 | 0 |
| `c * q * j` | 24427769/10000 | 1781405356810233/25000000000000000 | 43515758551522948560177/250000000000000000000 |
| `c * e * q * j` | -300 | 655972238754302528289/25000000000000000000000 | 0 |
| `e * q * j` | 1291687/1250 | 5729065221131211/100000000000000000 | 7400159068287310542957/125000000000000000000 |
| `a * e * p * j` | 3100 | 4673735516225044005131/500000000000000000000000 | 144885801002976364159061/5000000000000000000000 |
| `e * p * j` | 32120033/10000 | 22979971365478157/500000000000000000 | 738117438598213463619181/5000000000000000000000 |
| `c * q * r * k` | 2000 | 24505062100232609233107/700234375000000000000000 | 24505062100232609233107/350117187500000000000 |
| `q * r * k` | -65409/2000 | 214019878778265393/2800937500000000000 | 0 |
| `c * e * q * r` | 7300 | 154174253493700509531/6250000000000000000000 | 11254720505040137195763/62500000000000000000 |
| `e * q * r` | -139061237453/44815000 | 1346511790440969/25000000000000000 | 0 |
| `c * q * w * j` | -2000 | 419127270944954810007/12500000000000000000000 | 0 |
| `q * w * j` | -20701389969/17926000 | 3660532152638493/50000000000000000 | 0 |
| `a * p * r * k` | 100 | 174596076325808094874353/14004687500000000000000000 | 174596076325808094874353/140046875000000000000000 |
| `p * r * k` | 1598289/1000 | 858459538534725591/14004687500000000000 | 1372066437385128030113799/14004687500000000000000 |
| `a * e * p * r` | 3100 | 1098475883079076296649/125000000000000000000000 | 34052752375451365196119/1250000000000000000000 |
| `e * p * r` | 6346409/5000 | 5401021142765503/125000000000000000 | 34277089189637273128727/625000000000000000000 |
| `a * p * w * j` | -100 | 2986239197795722079453/250000000000000000000000 | 0 |
| `p * w * j` | 1220939/2000 | 14682835821065291/250000000000000000 | 17926846884535635328249/500000000000000000000 |
| `c * f * v * k` | -2200 | 32330091089898444356283/700234375000000000000000 | 0 |
| `c * v * k` | -156237082441/155000000 | 342664904661400167/2800937500000000000 | 0 |
| `f * v * k` | -110964565559/155000000 | 282361340185490217/2800937500000000000 | 0 |
| `c * e * f * v` | -100 | 203405632631354030339/6250000000000000000000 | 0 |
| `e * f * v` | -464705821941/155000000 | 1776483922404161/25000000000000000 | 0 |
| `c * e * v * j` | 3800 | 865439236375977273241/25000000000000000000000 | 16443345491143568191579/125000000000000000000 |
| `e * v * j` | -8157867739/89630000 | 7558487291382259/100000000000000000 | 0 |
| `a * e * f * u` | 4100 | 2440086333220001288397/250000000000000000000000 | 100043539662020052824277/2500000000000000000000 |
| `e * f * u` | -3760673/10000 | 11997494054173659/250000000000000000 | 0 |
| `a * e * u * j` | 3200 | 10381946780896865225943/1000000000000000000000000 | 10381946780896865225943/312500000000000000000 |
| `e * u * j` | -13862133/5000 | 51046285977180321/1000000000000000000 | 0 |
| `c * f * v * w` | -1200 | 129964109245701349157/3125000000000000000000 | 0 |
| `c * v * w` | 18617641/5000 | 1377482636230393/12500000000000000 | 25645477205071050162913/62500000000000000000 |
| `f * v * w` | 1638781/2000 | 1135067635924343/12500000000000000 | 1860127275467730745883/25000000000000000000 |
| `c * h * v * r` | 4400 | 112345302516240197789/6250000000000000000000 | 1235798327678642175679/15625000000000000000 |
| `c * h * v` | -2135953/2000 | 1190741846932561/25000000000000000 | 0 |
| `h * v * r` | -65131/2000 | 981190250711711/25000000000000000 | 0 |
| `h * v` | -7074767901147/5000000000 | 10399582939/100000000000 | 0 |
| `c * f * h * v` | 2100 | 112345302516240197789/6250000000000000000000 | 2359251352841044153569/62500000000000000000 |
| `f * h * v` | 25486313/10000 | 981190250711711/25000000000000000 | 25006921842187139311543/250000000000000000000 |
| `a * h * u * r` | -2500 | 1347712124413845369747/250000000000000000000000 | 0 |
| `h * u * r` | 452695881917/89630000 | 6626473817447109/250000000000000000 | 2999777408789128670257027953/22407500000000000000000000 |
| `a * f * h * u` | -200 | 1347712124413845369747/250000000000000000000000 | 0 |
| `f * h * u` | 78288990919/89630000 | 6626473817447109/250000000000000000 | 518779948519107980263803171/22407500000000000000000000 |
| `c * h * p * w` | -2400 | 851756346441636003137/62500000000000000000000 | 0 |
| `c * p * v * w` | 100 | 214142073145740665387/6250000000000000000000 | 214142073145740665387/62500000000000000000 |
| `p * v * w` | 297063/10000 | 1870252780773113/25000000000000000 | 555582901814803267119/250000000000000000000 |
| `c * e * p * w` | -3500 | 1542138697527536472287/62500000000000000000000 | 0 |
| `e * p * w` | 51594701/10000 | 13468577869916213/250000000000000000 | 694907248093543904787313/2500000000000000000000 |
| `c * q * u * w` | -1100 | 360550039966042507119/12500000000000000000000 | 0 |
| `q * u * w` | 95707/1250 | 3148936147617381/50000000000000000 | 301375231880016683367/62500000000000000000 |
| `c * e * u * w` | 600 | 3425611447398295289211/125000000000000000000000 | 10276834342194885867633/625000000000000000000 |
| `e * u * w` | 166216880093/44815000 | 29918265202301289/500000000000000000 | 4972920699721487741372339877/22407500000000000000000000 |
| `a * p * v * r` | -600 | 152534855185391880349/12500000000000000000000 | 0 |
| `p * v * r` | -28689304699/89630000 | 749988225099403/12500000000000000 | 0 |
| `a * q * u * r` | -3900 | 256822245742797603513/25000000000000000000000 | 0 |
| `q * u * r` | -2143479693/5601875 | 1262751782316111/25000000000000000 | 0 |
| `a * e * u * r` | -3000 | 2440086333220001288397/250000000000000000000000 | 0 |
| `e * u * r` | -72261930979/89630000 | 11997494054173659/250000000000000000 | 0 |
| `c * f * w * w` | -900 | 598005703933259689991/15625000000000000000000 | 0 |
| `c * w * w` | 15683907/5000 | 6338230441586659/62500000000000000 | 99408216790414092196713/312500000000000000000 |
| `c * h * r * w` | -900 | 516936037993438239407/31250000000000000000000 | 0 |
| `c * r * w` | 8003229/10000 | 2541687545141129/31250000000000000 | 20341707470212292705541/312500000000000000000 |
| `c * f * h * w` | 3900 | 516936037993438239407/31250000000000000000000 | 20160505481744091336873/312500000000000000000 |
| `c * h * u * w` | 100 | 1892038825977594324261/125000000000000000000000 | 1892038825977594324261/1250000000000000000000 |
| `h * u * w` | 7911799/10000 | 16524500877541239/500000000000000000 | 130738529518429897178961/5000000000000000000000 |
| `e * f * p * v` | -2300 | 276170414093028464899/12500000000000000000000 | 0 |
| `e * e * f * p` | 3900 | 1988834218463969466199/125000000000000000000000 | 77564534520094809181761/1250000000000000000000 |
| `e * e * p` | -1106449/500 | 21079547408705651/500000000000000000 | 0 |
| `e * f * q * u` | -1600 | 464986877057608501863/25000000000000000000000 | 0 |
| `f * q * u` | 5624083/5000 | 1262751782316111/25000000000000000 | 7101820832143740501213/125000000000000000000 |
| `e * e * f * u` | 3800 | 4417873228050528974547/250000000000000000000000 | 83939591332960050516393/1250000000000000000000 |
| `e * e * u` | -35286143/10000 | 46824801832033503/1000000000000000000 | 0 |
| `e * f * h * p` | 5300 | 1098475883079076296649/125000000000000000000000 | 58219221803191043722397/1250000000000000000000 |
| `e * h * p` | 68167/400 | 11642687077542701/500000000000000000 | 793647050014853299067/200000000000000000000 |
| `e * f * h * u` | 700 | 2440086333220001288397/250000000000000000000000 | 17080604332540009018779/2500000000000000000000 |
| `e * h * u` | -6691483/1250 | 25862344415097153/1000000000000000000 | 0 |
| `a * a * f * u` | -27284500 | 1347712124413845369747/250000000000000000000000 | 0 |
| `c * e * e * u` | 1900 | 5361392984966004059997/250000000000000000000000 | 101866466714354077139943/2500000000000000000000 |
| `b * e * e * u` | 300 | 22380241809233236993371/1000000000000000000000000 | 67140725427699710980113/10000000000000000000000 |
| `h * p * v` | 10417509/10000 | 1616708764114001/50000000000000000 | 16842078100536482443509/500000000000000000000 |
| `b * h * v` | -276221/250 | 4970553462775623/100000000000000000 | 0 |
| `e * h * p * u` | -5600 | 4020534200426588308227/500000000000000000000000 | 0 |
| `b * e * h * u` | -4600 | 12361088549606589956421/1000000000000000000000000 | 0 |
| `c * e * q * u` | 400 | 564293553044749979913/25000000000000000000000 | 564293553044749979913/62500000000000000000 |
| `c * e * h * u` | 3300 | 2961212573184208921347/250000000000000000000000 | 97720014915078894404451/2500000000000000000000 |
| `p * v * v` | -11513541/10000 | 406460565708251/5000000000000000 | 0 |
| `v * v` | -109338938941992024939/448150000000000000 | 2614583689/10000000000 | 0 |
| `q * u * v` | 11513541/10000 | 684355816014687/10000000000000000 | 7879358746273555376667/100000000000000000000 |
| `u * v` | 25365438077014053/50000000000000 | 17657605491/100000000000 | 447892898670303823136965023/5000000000000000000000000 |
| `h * u * v` | 5141313/10000 | 3591256777576053/100000000000000000 | 18463775156889869777589/1000000000000000000000 |
| `e * p * u * v` | 4100 | 1010811991515577702977/50000000000000000000000 | 41443291652138685822057/500000000000000000000 |
| `e * u * v` | -51141147/10000 | 6502113042767403/100000000000000000 | 0 |
| `p * u * v` | 127341/2500 | 2745033692025369/50000000000000000 | 349555335376202513829/125000000000000000000 |
| `e * q * u * u` | -4100 | 1701899578094868743949/100000000000000000000000 | 0 |
| `e * u * u` | 76020327659/11203750 | 43912056611576457/1000000000000000000 | 3338208931792599553670324163/11203750000000000000000000 |
| `q * u * u` | -9816591/2500 | 4621800811157253/100000000000000000 | 0 |
| `u * u` | 18608494056347121/17926000000000 | 119250736929/1000000000000 | 2219076629358310629077531409/17926000000000000000000000 |
| `e * h * u * u` | -100 | 8930965809832254554031/1000000000000000000000000 | 0 |
| `h * u * u` | -697161/1000 | 24253572628830807/1000000000000000000 | 0 |
| `p * v * k` | -1214443/10000 | 465247237213919847/5601875000000000000 | 0 |
| `e * p * k` | 15891573/5000 | 3350466154948728747/56018750000000000000 | 53244177485397034140149031/280093750000000000000000 |
| `q * u * k` | 724757/5000 | 783334668929846139/11203750000000000000 | 567727284649588498163223/56018750000000000000000 |
| `e * u * k` | 35671569/10000 | 7442518129474521591/112037500000000000000 | 265486298989301330675346279/1120375000000000000000000 |
| `e * p * v * j` | -1300 | 1175034875830994601881/50000000000000000000000 | 0 |
| `p * v * j` | -29412953/10000 | 3191009159502257/50000000000000000 | 0 |
| `e * e * p * j` | 1000 | 8461983795824118186581/500000000000000000000000 | 8461983795824118186581/500000000000000000000 |
| `e * q * u * j` | 1300 | 1978400905617577700997/100000000000000000000000 | 25719211773028510112961/1000000000000000000000 |
| `q * u * j` | -2444409/1250 | 5372687688549309/100000000000000000 | 0 |
| `e * e * u * j` | 1300 | 18796927024235041142793/1000000000000000000000000 | 244360051315055534856309/10000000000000000000000 |
| `a * p * v * j` | -2900 | 648997015887047535431/50000000000000000000000 | 0 |
| `a * q * u * j` | 2900 | 1092713340160224112347/100000000000000000000000 | 31688686864646499258063/1000000000000000000000 |
| `c * f * h * q` | -4500 | 85153753732852000581/6250000000000000000000 | 0 |
| `c * h * q` | -2297547/10000 | 902540077084569/25000000000000000 | 0 |
| `c * f * q * q` | 4700 | 16227039789088296399/625000000000000000000 | 762670870087149930753/6250000000000000000 |
| `c * q * q` | -18201321/5000 | 171989526005451/2500000000000000 | 0 |
| `c * p * q` | 5971493/2000 | 689870725889037/12500000000000000 | 4119558210551303222241/25000000000000000000 |
| `a * c * p * q` | -4900 | 140307977843490012171/12500000000000000000000 | 0 |
| `a * b * p * q` | -10568000 | 585692278239468953853/50000000000000000000000 | 0 |
| `c * f * q * v` | 2800 | 21408706183023759831/625000000000000000000 | 149860943281166318817/1562500000000000000 |
| `f * h * p * q` | -3700 | 115616008887024682821/12500000000000000000000 | 0 |
| `f * h * q * u` | -4800 | 256822245742797603513/25000000000000000000000 | 0 |
| `f * q * w` | 6316063/5000 | 860341000244847/12500000000000000 | 5433967959029469077361/62500000000000000000 |
| `f * q * r` | 36374552273/11203750 | 345004496925357/6250000000000000 | 12549384107831465975686461/70023437500000000000000 |
| `e * f * q * r` | -500 | 127042040916314984181/6250000000000000000000 | 0 |
| `a * f * p * w` | -100 | 701860798176594688687/62500000000000000000000 | 0 |
| `f * p * w` | 107161/1000 | 3450931484817289/62500000000000000 | 369805268844505506529/62500000000000000000 |
| `f * h * q * j` | 2200 | 298547205781120459089/25000000000000000000000 | 3284019263592325049979/125000000000000000000 |
| `f * h * j` | 105049/2500 | 7703052500996477/250000000000000000 | 809197962177178912373/625000000000000000000 |
| `f * q * j` | 16730571/10000 | 1467906392280183/25000000000000000 | 24558912117397453574493/250000000000000000000 |
| `e * f * q * j` | 4900 | 540531574548508626639/25000000000000000000000 | 26486047152876922705311/250000000000000000000 |
| `a * f * h * j` | -100 | 1566669926810166481691/250000000000000000000000 | 0 |
| `f * q * r * k` | -300 | 20192561542850561564157/700234375000000000000000 | 0 |
| `f * f * q * k` | 2700 | 20192561542850561564157/700234375000000000000000 | 545199161656965162232239/7002343750000000000000 |
| `f * f * q` | 2406423/10000 | 345004496925357/6250000000000000 | 830226756504608368011/62500000000000000000 |
| `f * q * w * j` | -2700 | 345367548069289176057/12500000000000000000000 | 0 |
| `f * q * u * w` | -100 | 297098976591552279969/12500000000000000000000 | 0 |
| `f * p * q * w` | 3100 | 133747751557063669773/6250000000000000000000 | 4146180298268973762963/62500000000000000000 |
| `f * q * v * r` | 600 | 17641114941284279481/625000000000000000000 | 52923344823852838443/3125000000000000000 |
| `q * v * r` | -19399419/10000 | 186977232840669/2500000000000000 | 0 |
| `f * p * q * v` | -34070000 | 29067293640177562071/1250000000000000000000 | 0 |
| `p * q * v` | 1260537/10000 | 308082689166579/5000000000000000 | 388349628753971992923/50000000000000000000 |
| `f * q * q * r` | -3100 | 13371339287336061249/625000000000000000000 | 0 |
| `a * f * q * r` | 3100 | 70168049598169882731/6250000000000000000000 | 2175209537543266364661/62500000000000000000 |
| `p * u * w` | 1341249/10000 | 12630762560890947/250000000000000000 | 16940997654032421772803/2500000000000000000000 |
| `p * q * u` | 2092119/2500 | 2080638155434401/50000000000000000 | 4352942617109263585719/125000000000000000000 |
| `p * p * v` | -6179919/2500 | 1235756812321573/25000000000000000 | 0 |
| `a * p * u * w` | 4500 | 2568882381921683473701/250000000000000000000000 | 23119941437295151263309/500000000000000000000 |
| `a * p * q * u` | -7839900 | 423166429966714778583/50000000000000000000000 | 0 |
| `a * p * p * v` | -100 | 251331927760398481459/25000000000000000000000 | 0 |
| `f * p * q * k` | 2400 | 33271316334990359730387/1400468750000000000000000 | 99813949004971079191161/1750585937500000000000 |
| `f * q * q * j` | -2400 | 56891648045603052531/2500000000000000000000 | 0 |
| `a * f * q * j` | 2400 | 298547205781120459089/25000000000000000000000 | 895641617343361377267/31250000000000000000 |
| `f * f * v * w` | 2700 | 107092496381825837707/3125000000000000000000 | 2891497402309297618089/31250000000000000000 |
| `f * f * v` | -14078153/5000 | 455172354446533/6250000000000000 | 0 |
| `f * h * v * r` | -2900 | 92574318964399221139/6250000000000000000000 | 0 |
| `f * f * h * v` | -3300 | 92574318964399221139/6250000000000000000000 | 0 |
| `f * h * u * k` | -900 | 387836916803545191842709/28009375000000000000000000 | 0 |
| `f * h * k` | -18221179/5000 | 1123100472316225467/28009375000000000000 | 0 |
| `f * u * k` | -4122313/5000 | 1906928881979050323/28009375000000000000 | 0 |
| `h * u * k` | 20584697/10000 | 4110662718243385641/112037500000000000000 | 84616746524236465674135777/1120375000000000000000000 |
| `h * k` | 58004046981254227/89630000000000 | 11903681780583/112037500000000 | 690461717250836302877955274341/10041921125000000000000000000 |
| `c * f * h * k` | 4100 | 128593880979735499746033/7002343750000000000000000 | 5272349120169155489587353/70023437500000000000000 |
| `c * h * k` | -1502826/625 | 1362959660194972917/28009375000000000000 | 0 |
| `h * u * j` | -30124/625 | 28193960837015871/1000000000000000000 | 0 |
| `a * h * u * j` | 900 | 5734172336914798891593/1000000000000000000000000 | 51607551032233190024337/10000000000000000000000 |
| `f * p * v * k` | -100 | 43895611583896123644603/1400468750000000000000000 | 0 |
| `f * h * p * k` | -4700 | 174596076325808094874353/14004687500000000000000000 | 0 |
| `h * p * k` | 28984033/10000 | 1850534465927652597/56018750000000000000 | 53635952028084458483983701/560187500000000000000000 |
| `f * q * u * k` | 100 | 73906842678862053368511/2800937500000000000000000 | 73906842678862053368511/28009375000000000000000 |
| `f * h * p * v` | -4300 | 152534855185391880349/12500000000000000000000 | 0 |
| `c * h * p * v` | 900 | 185111536782289000499/12500000000000000000000 | 1666003831040601004491/125000000000000000000 |
| `f * h * p * w` | -2600 | 701860798176594688687/62500000000000000000000 | 0 |
| `h * h * p * r` | -3200 | 606711838776730424599/125000000000000000000000 | 0 |
| `h * h * p` | 3423409/5000 | 6430506298707251/500000000000000000 | 22014253137551091438659/2500000000000000000000 |
| `h * h * r` | -1474617/2000 | 3902712861762461/250000000000000000 | 0 |
| `h * h` | 8473236720951/10000000000 | 41364644689/1000000000000 | 350492426327925557179239/10000000000000000000000 |
| `f * h * h * p` | -3700 | 606711838776730424599/125000000000000000000000 | 0 |
| `f * h * h` | 32452199543/89630000 | 3902712861762461/250000000000000000 | 126651616548947959038755323/22407500000000000000000000 |
| `f * p * v * w` | -500 | 176456479613162438437/6250000000000000000000 | 0 |
| `e * p * v * r` | -1200 | 276170414093028464899/12500000000000000000000 | 0 |
| `e * v * r` | 1682817/10000 | 1776483922404161/25000000000000000 | 2989497344848403001537/250000000000000000000 |
| `e * q * u * r` | -3900 | 464986877057608501863/25000000000000000000000 | 0 |
| `p * v * r * k` | 100 | 43895611583896123644603/1400468750000000000000000 | 43895611583896123644603/14004687500000000000000 |
| `p * v * w * j` | 9900 | 750777444038531524703/25000000000000000000000 | 74326966959814620945597/250000000000000000000 |
| `q * u * r * k` | -100 | 73906842678862053368511/2800937500000000000000000 | 0 |
| `q * u * w * j` | 100 | 1264080586674192872211/50000000000000000000000 | 1264080586674192872211/500000000000000000000 |
| `p * p * v * v` | 5000 | 63187953084438992209/2500000000000000000000 | 63187953084438992209/500000000000000000 |
| `h * p * p * v` | -5759100 | 251331927760398481459/25000000000000000000000 | 0 |
| `h * p * u * v` | -27601900 | 558293187385195623327/50000000000000000000000 | 0 |
| `h * p * q * u` | -900 | 423166429966714778583/50000000000000000000000 | 0 |
| `q * q * u * u` | 5000 | 179127134038021654521/10000000000000000000000 | 179127134038021654521/2000000000000000000 |
| `q * q * u` | -35793237/10000 | 518717430256023/10000000000000000 | 0 |
| `h * q * u * u` | 1900 | 939995714375595586899/100000000000000000000000 | 17859918573136316151081/1000000000000000000000 |
| `h * p * p * w` | -67149100 | 1156457173088588471617/125000000000000000000000 | 0 |
| `h * p * q * r` | -900 | 115616008887024682821/12500000000000000000000 | 0 |
| `c * p * q * w` | -7200 | 162312094516446736323/6250000000000000000000 | 0 |
| `c * q * v * r` | 1000 | 21408706183023759831/625000000000000000000 | 21408706183023759831/625000000000000000 |
| `c * q * q * r` | 7200 | 16227039789088296399/625000000000000000000 | 146043358101794667591/781250000000000000 |
| `h * p * u * k` | -4100 | 639039515515398488364219/56018750000000000000000000 | 0 |
| `p * u * k` | 447093/400 | 3142049805123331293/56018750000000000000 | 1404788473522005557781249/22407500000000000000000 |
| `c * h * p * k` | 1000 | 211884345814250294703903/14004687500000000000000000 | 211884345814250294703903/14004687500000000000000 |
| `c * p * k` | 131689/10000 | 1041799687359564441/14004687500000000000 | 137193559028693681670849/140046875000000000000000 |
| `c * q * v * j` | -4400 | 91088600109777643989/2500000000000000000000 | 0 |
| `q * v * j` | 11955929/10000 | 795540573365511/10000000000000000 | 9511426611777340564719/100000000000000000000 |
| `h * q * u * j` | -500 | 1092713340160224112347/100000000000000000000000 | 0 |
| `c * h * q * j` | -2600 | 362307565684135618239/25000000000000000000000 | 0 |
| `c * p * q * v` | 2400 | 35275159826884128921/1250000000000000000000 | 105825479480652386763/1562500000000000000 |
| `c * e * p * q` | -730600 | 254033167006297761621/12500000000000000000000 | 0 |
| `c * q * q * u` | -2400 | 59392627046884377477/2500000000000000000000 | 0 |
| `b * p * q * v` | 900 | 147250277865990599103/5000000000000000000000 | 1325252500793915391927/50000000000000000000 |
| `b * q * q * u` | -900 | 247924626812877985011/10000000000000000000000 | 0 |
| `b * f * v * w` | -2600 | 542513522063491207251/12500000000000000000000 | 0 |
| `b * h * v * r` | -2800 | 468966748659417254427/25000000000000000000000 | 0 |
| `b * f * h * v` | 800 | 468966748659417254427/25000000000000000000000 | 468966748659417254427/31250000000000000000 |
| `b * p * v * w` | 1300 | 893900408339974770141/25000000000000000000000 | 11620705308419672011833/250000000000000000000 |
| `b * e * p * w` | -12888000 | 6437401072971543416841/250000000000000000000000 | 0 |
| `b * e * u * w` | 1100 | 14299644281296317186573/500000000000000000000000 | 157296087094259489052303/5000000000000000000000 |
| `b * c * e * h` | -4100 | 4098527708060490327777/250000000000000000000000 | 0 |
| `b * b * q * v` | -4768200 | 452719373326698800169/10000000000000000000000 | 0 |
| `b * h * p * v` | 800 | 772717270769635575957/50000000000000000000000 | 772717270769635575957/62500000000000000000 |
| `b * b * h * v` | -1800 | 2375710821407848442211/100000000000000000000000 | 0 |
| `b * e * h * p` | -110280300 | 5564703787521076741857/500000000000000000000000 | 0 |
| `b * b * e * h` | -4768200 | 17108621103777917497911/1000000000000000000000000 | 0 |
| `f * v * v` | 4242429/5000 | 246683356473461/2500000000000000 | 1046536625320348676769/12500000000000000000 |
| `c * v * v` | -7260461/10000 | 299367217806811/2500000000000000 | 0 |
| `b * f * v * v` | 1800 | 117904037009985999177/2500000000000000000000 | 1061136333089873992593/12500000000000000000 |
| `b * v * v` | -7945513/10000 | 1249658576243373/10000000000000000 | 0 |
| `b * c * v * v` | -900 | 143084657321289965127/2500000000000000000000 | 0 |
| `b * u * v` | 27236486539/89630000 | 8439576147661887/100000000000000000 | 229864402140658461598839093/8963000000000000000000000 |
| `e * f * u * v` | -100 | 613467863472061705647/25000000000000000000000 | 0 |
| `f * u * v` | 140327/10000 | 1665977420470359/25000000000000000 | 233781613482344067393/250000000000000000000 |
| `c * e * u * v` | -1100 | 744485441283824876097/25000000000000000000000 | 0 |
| `c * u * v` | 1464462/625 | 2021778171114009/25000000000000000 | 1480408652012981924079/7812500000000000000 |
| `b * e * f * v` | -1800 | 849082926100525579077/25000000000000000000000 | 0 |
| `b * c * h * v` | 4700 | 569123400934346057877/25000000000000000000000 | 26748799843914264720219/250000000000000000000 |
| `b * p * v * v` | -900 | 194270672604218523207/5000000000000000000000 | 0 |
| `b * q * u * v` | -39100 | 327092652754931754459/10000000000000000000000 | 0 |
| `b * e * v * j` | 4400 | 3612631910327190364863/100000000000000000000000 | 39738951013599094013493/250000000000000000000 |
| `e * f * u * k` | -5000 | 702194142997791637589259/28009375000000000000000000 | 0 |
| `e * f * u * w` | 1800 | 2822758403571924315861/125000000000000000000000 | 25404825632147318842749/625000000000000000000 |
| `e * h * u * r` | -1600 | 2440086333220001288397/250000000000000000000000 | 0 |
| `v * v * r` | -1574797606777839/896300000000 | 246683356473461/2500000000000000 | 0 |
| `u * v * k` | -125678205653/100000000 | 1033471414877049891/11203750000000000000 | 0 |
| `u * v * w` | -12578024347/100000000 | 4154463762316989/50000000000000000 | 0 |
| `v * v * j` | 125678205653/100000000 | 1049574944858959/10000000000000000 | 131908695768220384281495227/1000000000000000000000000 |
| `b * v * v * r` | -4900 | 117904037009985999177/2500000000000000000000 | 0 |
| `b * u * v * k` | -4900 | 493954897040390134752687/11203750000000000000000000 | 0 |
| `b * u * v * w` | 4900 | 1985655036445741111473/50000000000000000000000 | 97297096785841314462177/500000000000000000000 |
| `b * v * v * j` | 4900 | 501651691919953466763/10000000000000000000000 | 24580932904077719871387/100000000000000000000 |
| `e * u * v * r` | 4200 | 613467863472061705647/25000000000000000000000 | 12882825132913295818587/125000000000000000000 |
| `u * v * r` | -7384473/5000 | 1665977420470359/25000000000000000 | 0 |
| `e * u * u * k` | -4800 | 2570102458097048117455257/112037500000000000000000000 | 0 |
| `u * u * k` | 7424139/2500 | 6979554950526020529/112037500000000000000 | 51817186110843299524149531/280093750000000000000000 |
| `e * u * w * j` | -1200 | 12010119118425008744559/500000000000000000000000 | 0 |
| `e * u * u * w` | -4200 | 10331584767515097226503/500000000000000000000000 | 0 |
| `u * u * w` | -16143427/5000 | 28057194133918191/500000000000000000 | 0 |
| `e * u * v * j` | 4800 | 2610149740871161353693/100000000000000000000000 | 7830449222613484061079/62500000000000000000 |
| `u * v * j` | -1678391/625 | 7088310229857621/100000000000000000 | 0 |
| `b * e * v * r` | -3100 | 849082926100525579077/25000000000000000000000 | 0 |
| `b * e * u * k` | -3100 | 3557203637609253916069587/112037500000000000000000000 | 0 |
| `b * c * v * k` | 1300 | 163779089837248839618819/2800937500000000000000000 | 2129128167884234915044647/28009375000000000000000 |
| `e * f * v * j` | 3900 | 713135717454624754391/25000000000000000000000 | 27812292980730365421249/250000000000000000000 |
| `f * w * k` | -3855447/10000 | 1299233249711574771/14004687500000000000 | 0 |
| `h * r * k` | -10160550447/11203750 | 1123100472316225467/28009375000000000000 | 0 |
| `b * f * w * k` | -2600 | 620977626332395142822847/14004687500000000000000000 | 0 |
| `b * h * r * k` | 100 | 536793732446846175530919/28009375000000000000000000 | 536793732446846175530919/280093750000000000000000 |
| `b * h * k` | -178971788259/44815000 | 5689448032802108931/112037500000000000000 | 0 |
| `e * f * w * j` | -5100 | 3281361517356827441933/125000000000000000000000 | 0 |
| `e * h * r * j` | -1000 | 2836518131599435715141/250000000000000000000000 | 0 |
| `e * h * j` | 67954027/10000 | 30064103823034009/1000000000000000000 | 2042976922921256269504243/10000000000000000000000 |
| `h * r * j` | 113419009399/89630000 | 7703052500996477/250000000000000000 | 873672584011509881728887323/22407500000000000000000000 |
| `e * f * h * j` | -1700 | 2836518131599435715141/250000000000000000000000 | 0 |
| `f * f * h * k` | -400 | 105963406462563556585983/7002343750000000000000000 | 0 |
| `e * f * f * h` | -4400 | 666671605327628310439/62500000000000000000000 | 0 |
| `b * e * h * j` | 100 | 14369348870945865839613/1000000000000000000000000 | 14369348870945865839613/10000000000000000000000 |
| `f * h * r * k` | 2600 | 105963406462563556585983/7002343750000000000000000 | 1377524284013326235617779/35011718750000000000000 |
| `e * f * h * r` | -1600 | 666671605327628310439/62500000000000000000000 | 0 |
| `f * h * w * j` | -200 | 1812366489381950112083/125000000000000000000000 | 0 |
| `h * w * j` | 13935813/2000 | 19209175395414367/500000000000000000 | 267695476194695676025371/1000000000000000000000 |
| `b * h * w * j` | -2700 | 9181159844466064608219/500000000000000000000000 | 0 |
| `b * q * r * k` | -200 | 102292299201223392442101/2800937500000000000000000 | 0 |
| `b * e * q * r` | 1700 | 643574735823794220333/25000000000000000000000 | 10940770509004501745661/250000000000000000000 |
| `b * q * w * j` | 200 | 1749576966078636198801/50000000000000000000000 | 1749576966078636198801/250000000000000000000 |
| `b * e * q * j` | 2300 | 2738246825896210215927/100000000000000000000000 | 62979676995612834966321/1000000000000000000000 |
| `b * q * v * r` | -1300 | 89367077276827633233/2500000000000000000000 | 0 |
| `b * q * u * k` | -1500 | 374400288357702471058023/11203750000000000000000000 | 0 |
| `b * q * v * j` | 1500 | 380234185824059541027/10000000000000000000000 | 1140702557472178623081/20000000000000000000 |
| `f * v * r * k` | 4800 | 26640510085160816483733/700234375000000000000000 | 79921530255482449451199/437646484375000000000 |
| `f * v * v * r` | 2000 | 23274327999914571889/625000000000000000000 | 23274327999914571889/312500000000000000 |
| `f * v * w * j` | 3100 | 455651336156744934833/12500000000000000000000 | 14125191420859092979823/125000000000000000000 |
| `f * u * v * w` | -2000 | 391969501510845595161/12500000000000000000000 | 0 |
| `b * b * q * q` | 1700 | 343145224258753943601/10000000000000000000000 | 5833468812398817041217/100000000000000000000 |
| `h * h * p * p` | 1700 | 999680078690730533209/250000000000000000000000 | 16994561337742419064553/2500000000000000000000 |
| `b * h * h * p` | 3000 | 3073505499011221566207/500000000000000000000000 | 9220516497033664698621/500000000000000000000 |
| `b * h * h` | -4519733/10000 | 19770521481620373/1000000000000000000 | 0 |
| `b * b * h * h` | 1700 | 9449459135790828617961/1000000000000000000000000 | 160640805308444086505337/10000000000000000000000 |
| `b * c * q * q` | 4800 | 82203597880987343607/2500000000000000000000 | 246610793642962030821/1562500000000000000 |
| `c * h * p * q` | -200 | 140307977843490012171/12500000000000000000000 | 0 |
| `e * h * p * p` | -2800 | 1809960490387710754759/250000000000000000000000 | 0 |
| `c * e * h * p` | -1700 | 1333076027691561721799/125000000000000000000000 | 0 |
| `b * c * h * q` | -1600 | 431375347623109345533/25000000000000000000000 | 0 |
| `c * h * h * p` | -4500 | 736286540695681532249/125000000000000000000000 | 0 |
| `c * h * h` | -27741983/10000 | 4736210452245811/250000000000000000 | 0 |
| `b * h * h * r` | 1700 | 1865328931269400572177/250000000000000000000000 | 31710591831579809727009/2500000000000000000000 |
| `b * c * h * h` | -2500 | 2263704939124051088127/250000000000000000000000 | 0 |
| `h * p * u * w` | 100 | 2568882381921683473701/250000000000000000000000 | 2568882381921683473701/2500000000000000000000 |
| `h * p * v * r` | 2900 | 152534855185391880349/12500000000000000000000 | 4423510800376364530121/125000000000000000000 |
| `b * h * u * w` | 4200 | 7898000865926977968723/500000000000000000000000 | 165858018184466537343183/2500000000000000000000 |
| `b * f * h * h` | 5800 | 1865328931269400572177/250000000000000000000000 | 54094539006812616593133/1250000000000000000000 |
| `e * h * p * r` | 1700 | 1098475883079076296649/125000000000000000000000 | 18674090012344297043033/1250000000000000000000 |
| `h * q * u * r` | -3000 | 256822245742797603513/25000000000000000000000 | 0 |
| `h * h * u * r` | -1600 | 1347712124413845369747/250000000000000000000000 | 0 |
| `h * h * u` | -953533/2000 | 14284328656518303/1000000000000000000 | 0 |
| `b * h * h * u` | -3700 | 6827294871683518546971/1000000000000000000000000 | 0 |
| `h * r * j * k` | 5100 | 450847345702374705443277/28009375000000000000000000 | 22993214630821109977607127/280093750000000000000000 |
| `h * j * k` | -4811799/2500 | 4778506880861214273/112037500000000000000 | 0 |
| `h * w * j * j` | -5100 | 7711158488156584759177/500000000000000000000000 | 0 |
| `h * j * j` | 1255539/400 | 32774529338175463/1000000000000000000 | 41149699790723482639557/400000000000000000000 |
| `e * h * j * j` | -4900 | 12068663261784365266879/1000000000000000000000000 | 0 |
| `c * h * q * u` | -700 | 311671457199382959063/25000000000000000000000 | 0 |
| `c * h * q * r` | 3100 | 85153753732852000581/6250000000000000000000 | 2639766365718412018011/62500000000000000000 |
| `b * c * v * w` | 700 | 658377468364769947101/12500000000000000000000 | 4608642278553389629707/125000000000000000000 |
| `c * e * p * v` | -47843400 | 335151790090384277549/12500000000000000000000 | 0 |
| `c * h * r * k` | 6300 | 128593880979735499746033/7002343750000000000000000 | 8101414501723336484000079/70023437500000000000000 |
| `c * h * w * j` | -4700 | 2199431373599549607133/125000000000000000000000 | 0 |
| `c * e * h * j` | -5000 | 3442309823633570996491/250000000000000000000000 | 0 |
| `c * h * h * r` | 3000 | 446856719958940022039/62500000000000000000000 | 1340570159876820066117/62500000000000000000 |
| `c * f * h * h` | -3000 | 446856719958940022039/62500000000000000000000 | 0 |
| `c * c * e * q` | -1400 | 187101059372915607381/6250000000000000000000 | 0 |
| `e * e * p * u` | 1400 | 7279336868006096342877/500000000000000000000000 | 50955358076042674400139/2500000000000000000000 |
| `c * e * e * p` | -4227100 | 2413587098749388333849/125000000000000000000000 | 0 |
| `c * c * e * v` | -100 | 246846723660636626989/6250000000000000000000 | 0 |
| `c * c * e * e` | -3300 | 1777660407050773611289/62500000000000000000000 | 0 |
| `c * c * v * v` | 500 | 34277247071662052689/625000000000000000000 | 34277247071662052689/1250000000000000000 |
| `e * e * u * u` | 1000 | 16169868342250633490481/1000000000000000000000000 | 16169868342250633490481/1000000000000000000000 |
| `c * h * u * v` | 2500 | 411195309775680492447/25000000000000000000000 | 411195309775680492447/10000000000000000000 |
| `c * c * e * h` | 600 | 981840048467159351239/62500000000000000000000 | 2945520145401478053717/312500000000000000000 |
| `c * c * v * k` | 3100 | 39234788918825657721333/700234375000000000000000 | 1216278456483595389361323/7002343750000000000000 |
| `c * c * k` | -171210848877/44815000 | 767308566264949401/7002343750000000000 | 0 |
| `c * e * u * k` | -4900 | 852160883306703247647909/28009375000000000000000000 | 0 |
| `c * c * e * k` | -2500 | 282548335281441112778433/7002343750000000000000000 | 0 |
| `c * f * w * k` | 3600 | 148760907858725599704729/3501171875000000000000000 | 1338848170728530397342561/8752929687500000000000 |
| `c * w * k` | -10241081/2500 | 1576708898437986621/14004687500000000000 | 0 |
| `e * f * r * k` | 2100 | 191850956333268592420833/7002343750000000000000000 | 4028870082998640440837493/70023437500000000000000 |
| `e * e * f * r` | -7300 | 1207035422058916210489/62500000000000000000000 | 0 |
| `e * e * r * j` | 1800 | 5135628745535541376091/250000000000000000000000 | 46220658709819872384819/1250000000000000000000 |
| `r * w * k` | -875641/10000 | 1299233249711574771/14004687500000000000 | 0 |
| `w * w * j` | -56522959/10000 | 22221697869820471/250000000000000000 | 0 |
| `c * r * w * k` | 3400 | 148760907858725599704729/3501171875000000000000000 | 2528935433598335194980393/17505859375000000000000 |
| `c * e * r * w` | 2600 | 935933229809953355057/31250000000000000000000 | 12167131987529393615741/156250000000000000000 |
| `c * w * w * j` | -3400 | 2544362184396574109029/62500000000000000000000 | 0 |
| `e * r * r * k` | 9200 | 191850956333268592420833/7002343750000000000000000 | 4412571995665177625679159/17505859375000000000000 |
| `r * r * k` | -576560739907/89630000 | 521004245500182201/7002343750000000000 | 0 |
| `e * e * r * r` | -4500 | 1207035422058916210489/62500000000000000000000 | 0 |
| `e * r * w * j` | 800 | 3281361517356827441933/125000000000000000000000 | 3281361517356827441933/156250000000000000000 |
| `r * w * j` | -68086793993/89630000 | 8911101170608901/125000000000000000 | 0 |
| `c * v * r * w` | -6000 | 129964109245701349157/3125000000000000000000 | 0 |
| `c * u * w * k` | 3600 | 544480153770894605870067/14004687500000000000000000 | 4900321383938051452830603/35011718750000000000000 |
| `c * u * w * w` | -4000 | 2188762103701796192493/62500000000000000000000 | 0 |
| `c * v * w * j` | 1000 | 552964232144602892383/12500000000000000000000 | 552964232144602892383/12500000000000000000 |
| `e * v * r * r` | 2400 | 167609481594910186189/6250000000000000000000 | 502828444784730558567/7812500000000000000 |
| `e * u * r * w` | -2400 | 2822758403571924315861/125000000000000000000000 | 0 |
| `e * v * r * j` | 1200 | 713135717454624754391/25000000000000000000000 | 2139407152363874263173/62500000000000000000 |
| `c * e * v * r` | 4100 | 203405632631354030339/6250000000000000000000 | 8339630937885515243899/62500000000000000000 |
| `c * k * k` | 1100423/625 | 392224765780400097699/3138100351562500000000 | 431613153434365216710226677/1961312719726562500000000 |
| `c * c * k * k` | 4300 | 44909343457090030786437801/784525087890625000000000000 | 1931101768654871323816825443/7845250878906250000000000 |
| `c * e * j * k` | -1400 | 990608309071382172278877/28009375000000000000000000 | 0 |
| `c * j * k` | -1017469/5000 | 2690167119925107669/28009375000000000000 | 0 |
| `e * e * j * j` | -1000 | 21850794210315720464929/1000000000000000000000000 | 0 |
| `c * e * p * k` | -4300 | 383625024275474492802753/14004687500000000000000000 | 0 |
| `e * h * p * j` | -500 | 4673735516225044005131/500000000000000000000000 | 0 |
| `e * h * u * j` | 3300 | 10381946780896865225943/1000000000000000000000000 | 342604243769596552456119/10000000000000000000000 |
| `c * q * u * k` | 4400 | 89691036257798453069361/2800937500000000000000000 | 986601398835782983762971/7002343750000000000000 |
| `c * r * k * k` | -400 | 37006014426614968817802951/784525087890625000000000000 | 0 |
| `c * v * r * k` | 5400 | 32330091089898444356283/700234375000000000000000 | 872912459427257997619641/3501171875000000000000 |
| `c * u * k * k` | -9600 | 135445801692648224538102573/3138100351562500000000000000 | 0 |
| `c * w * j * k` | 400 | 632939829808859407254651/14004687500000000000000000 | 632939829808859407254651/35011718750000000000000 |
| `c * v * j * k` | -400 | 137556315343130530438977/2800937500000000000000000 | 0 |
| `e * r * j * k` | -600 | 816277027332778771625427/28009375000000000000000000 | 0 |
| `e * u * j * k` | -4900 | 2987657495233086676796721/112037500000000000000000000 | 0 |
| `e * w * j * j` | 600 | 13961358734846883346327/500000000000000000000000 | 41884076204540650038981/2500000000000000000000 |
| `e * v * j * j` | -5100 | 3034211111866871612629/100000000000000000000000 | 0 |
| `f * h * u * w` | -4800 | 1559070133295138358411/125000000000000000000000 | 0 |
| `f * h * v * j` | -1200 | 393880183533452858441/25000000000000000000000 | 0 |
| `h * v * j` | 34705713/10000 | 4174714978785709/100000000000000000 | 144886459910537905055517/1000000000000000000000 |
| `c * h * v * j` | -3600 | 478000690355984894791/25000000000000000000000 | 0 |
| `c * c * h * q` | -2400 | 103339936286106065931/6250000000000000000000 | 0 |
| `f * f * v * v` | -1200 | 23274327999914571889/625000000000000000000 | 0 |
| `c * f * v * v` | -2500 | 28244997632854811039/625000000000000000000 | 0 |
| `f * p * v * v` | 3200 | 38349147914007773599/1250000000000000000000 | 38349147914007773599/390625000000000000 |
| `f * q * u * v` | -3200 | 64568286885169703763/2500000000000000000000 | 0 |
| `e * f * v * r` | 3200 | 167609481594910186189/6250000000000000000000 | 167609481594910186189/1953125000000000000 |
| `c * u * v * w` | -3800 | 475681946321532923511/12500000000000000000000 | 0 |
| `c * v * v * r` | 3800 | 28244997632854811039/625000000000000000000 | 536654955024241409741/3125000000000000000 |
| `f * f * q * v` | 600 | 17641114941284279481/625000000000000000000 | 52923344823852838443/3125000000000000000 |
| `f * h * u * v` | 2200 | 338831485707523024497/25000000000000000000000 | 3727146342782753269467/125000000000000000000 |
| `e * f * f * v` | 1700 | 167609481594910186189/6250000000000000000000 | 2849361187113473165213/62500000000000000000 |
| `h * p * v * j` | -5400 | 648997015887047535431/50000000000000000000000 | 0 |
| `c * c * v * w` | -600 | 157720384365743768107/3125000000000000000000 | 0 |
| `c * c * w` | 41147/100 | 3084512631094279/31250000000000000 | 126918441231636298013/3125000000000000000 |
| `c * c * h * w` | 600 | 627337432449847745857/31250000000000000000000 | 1882012297349543237571/156250000000000000000 |
| `h * h * u * j` | -4100 | 5734172336914798891593/1000000000000000000000000 | 0 |
| `h * h * j` | -1855121/10000 | 16605050682149959/1000000000000000000 | 0 |
| `c * h * h * j` | 4100 | 1901261698055488155541/250000000000000000000000 | 77951729620275014377181/2500000000000000000000 |
| `h * u * u * k` | 3300 | 1419522824502833633249607/112037500000000000000000000 | 46844253208593509897237031/1120375000000000000000000 |
| `h * h * u * u` | -200 | 4932764361969496020081/1000000000000000000000000 | 0 |
| `h * u * v * j` | -3300 | 1441641799479132531843/100000000000000000000000 | 0 |
| `c * h * h * u` | 4500 | 1635541346842689175197/250000000000000000000000 | 14719872121584202576773/500000000000000000000 |
| `f * h * r * w` | -3500 | 425963530237320015457/31250000000000000000000 | 0 |
| `h * h * r * r` | -3500 | 368217055794426432889/62500000000000000000000 | 0 |
| `f * h * h * r` | 800 | 368217055794426432889/62500000000000000000000 | 368217055794426432889/78125000000000000000 |
| `u * r * w * k` | -4600 | 448660320423148980945117/14004687500000000000000000 | 0 |
| `u * w * w * j` | 4600 | 7673752260291493789017/250000000000000000000000 | 176496301986704357147391/1250000000000000000000 |
| `v * r * r * k` | 4600 | 26640510085160816483733/700234375000000000000000 | 612731731958698779125859/3501171875000000000000 |
| `v * r * w * j` | -4600 | 455651336156744934833/12500000000000000000000 | 0 |
| `u * v * r * w` | 3000 | 391969501510845595161/12500000000000000000000 | 1175908504532536785483/12500000000000000000 |
| `u * u * w * k` | -3700 | 1642142709204811584042591/56018750000000000000000000 | 0 |
| `u * u * w * w` | 3500 | 6601268578634138060289/250000000000000000000000 | 46208880050438966422023/500000000000000000000 |
| `u * v * w * j` | 3700 | 1667730542570671211259/50000000000000000000000 | 61706030075114834816583/500000000000000000000 |
| `v * v * r * r` | 3500 | 23274327999914571889/625000000000000000000 | 162920295999402003223/1250000000000000000 |
| `u * v * r * k` | 3700 | 97506994522234780165959/2800937500000000000000000 | 3607758797322686866140483/28009375000000000000000 |
| `v * v * r * j` | -3700 | 99026346472497922691/2500000000000000000000 | 0 |
| `p * u * v * k` | 100 | 160662432685371299004969/5601875000000000000000000 | 160662432685371299004969/56018750000000000000000 |
| `q * u * u * k` | -100 | 270506611217536977642453/11203750000000000000000000 | 0 |
| `p * v * v * j` | -100 | 163165871352828907181/5000000000000000000000 | 0 |
| `q * u * v * j` | 100 | 274721639578591817097/10000000000000000000000 | 274721639578591817097/100000000000000000000 |
| `e * p * p * v` | -600 | 455046438271609790509/25000000000000000000000 | 0 |
| `e * p * q * u` | 600 | 766159629890075783433/50000000000000000000000 | 2298478889670227350299/250000000000000000000 |
| `e * f * p * k` | -32612700 | 316113131253257608550703/14004687500000000000000000 | 0 |
| `f * r * k * k` | 5200 | 30493545403337109433190601/784525087890625000000000000 | 396416090243382422631477813/1961312719726562500000000 |
| `f * w * j * k` | 4800 | 521552502664967171897301/14004687500000000000000000 | 1564657507994901515691903/8752929687500000000000 |
| `e * f * j * k` | 4200 | 816277027332778771625427/28009375000000000000000000 | 17141817573988354204133967/140046875000000000000000 |
| `e * e * f * j` | -4700 | 5135628745535541376091/250000000000000000000000 | 0 |
| `f * f * v * k` | -4200 | 26640510085160816483733/700234375000000000000000 | 0 |
| `f * f * k * k` | -20500 | 30493545403337109433190601/784525087890625000000000000 | 0 |
| `f * f * w * k` | -156709500 | 122581357877037368069079/3501171875000000000000000 | 0 |
| `e * f * f * k` | 500 | 191850956333268592420833/7002343750000000000000000 | 191850956333268592420833/14004687500000000000000 |
| `e * f * f * w` | 4300 | 771223891032579228607/31250000000000000000000 | 33162627314400906830101/312500000000000000000 |
| `f * u * w * k` | 2100 | 448660320423148980945117/14004687500000000000000000 | 9421866728886128599847457/140046875000000000000000 |
| `f * p * w * k` | 3000 | 201977501766911702324889/7002343750000000000000000 | 605932505300735106974667/7002343750000000000000 |
| `p * w * k` | -235741/250 | 2140748728305670461/28009375000000000000 | 0 |
| `e * f * p * w` | -3300 | 1270746853448724780337/62500000000000000000000 | 0 |
| `q * r * j` | 65232919529/17926000 | 1467906392280183/25000000000000000 | 95755819563717884460393807/448150000000000000000000 |
| `e * p * w * j` | -3400 | 5406704682898335300803/250000000000000000000000 | 0 |
| `e * q * r * j` | -3400 | 540531574548508626639/25000000000000000000000 | 0 |
| `h * p * r * k` | -5000 | 174596076325808094874353/14004687500000000000000000 | 0 |
| `h * p * w * j` | -2900 | 2986239197795722079453/250000000000000000000000 | 0 |
| `e * p * r * k` | -3200 | 316113131253257608550703/14004687500000000000000000 | 0 |
| `e * e * p * r` | -66487100 | 1988834218463969466199/125000000000000000000000 | 0 |
| `h * u * r * k` | -11500 | 387836916803545191842709/28009375000000000000000000 | 0 |
| `h * u * w * j` | 2100 | 6633446911772257113009/500000000000000000000000 | 139302385147217399373189/5000000000000000000000 |
| `e * e * u * r` | 7200 | 4417873228050528974547/250000000000000000000000 | 39760859052454760770923/312500000000000000000 |
| `f * h * h * u` | 1000 | 1347712124413845369747/250000000000000000000000 | 1347712124413845369747/250000000000000000000 |
| `e * f * p * q` | 3900 | 209327376430162599771/12500000000000000000000 | 8163767680776341391069/125000000000000000000 |
| `e * p * u * w` | -4900 | 4651063590084556086651/250000000000000000000000 | 0 |
| `h * q * r * j` | -2100 | 298547205781120459089/25000000000000000000000 | 0 |
| `h * v * r * j` | -600 | 393880183533452858441/25000000000000000000000 | 0 |
| `p * r * w * k` | 2500 | 201977501766911702324889/7002343750000000000000000 | 201977501766911702324889/2800937500000000000000 |
| `p * r * w` | 16551676633/8963000 | 3450931484817289/62500000000000000 | 57118702019334316615707937/560187500000000000000000 |
| `f * r * w * k` | -2500 | 122581357877037368069079/3501171875000000000000000 | 0 |
| `q * r * r * k` | -2500 | 20192561542850561564157/700234375000000000000000 | 0 |
| `q * r * r` | -16551676633/8963000 | 345004496925357/6250000000000000 | 0 |
| `e * p * r * w` | -2500 | 1270746853448724780337/62500000000000000000000 | 0 |
| `e * f * r * w` | 2500 | 771223891032579228607/31250000000000000000000 | 771223891032579228607/12500000000000000000 |
| `e * q * r * r` | 2500 | 127042040916314984181/6250000000000000000000 | 127042040916314984181/2500000000000000000 |
| `p * w * w * j` | -2500 | 3454562929144420601189/125000000000000000000000 | 0 |
| `p * w * w` | 106197/125 | 8605620714754019/125000000000000000 | 913891103044732555743/15625000000000000000 |
| `f * w * w * j` | 2500 | 2096594972319691618379/62500000000000000000000 | 2096594972319691618379/25000000000000000000 |
| `q * r * w * j` | 2500 | 345367548069289176057/12500000000000000000000 | 345367548069289176057/5000000000000000000 |
| `q * r * w` | -106197/125 | 860341000244847/12500000000000000 | 0 |
| `u * r * k * k` | 4300 | 111609498282951530903723523/3138100351562500000000000000 | 4799208426166915828860111489/31381003515625000000000000 |
| `v * r * j * k` | -4300 | 113348595152001523300527/2800937500000000000000000 | 0 |
| `u * w * j * k` | -4300 | 1908935559335924265967623/56018750000000000000000000 | 0 |
| `v * w * j * j` | 4300 | 1938680553315226191427/50000000000000000000000 | 83363263792554726231361/500000000000000000000 |
| `r * r * k * k` | -5200 | 30493545403337109433190601/784525087890625000000000000 | 0 |
| `r * w * j * k` | 400 | 521552502664967171897301/14004687500000000000000000 | 521552502664967171897301/35011718750000000000000 |
| `w * w * j * j` | 4800 | 8920478397579901494001/250000000000000000000000 | 26761435192739704482003/156250000000000000000 |
| `f * h * q * r` | -6800 | 70168049598169882731/6250000000000000000000 | 0 |
| `f * f * h * q` | 7300 | 70168049598169882731/6250000000000000000000 | 5122267620666401439363/62500000000000000000 |
| `f * f * h * w` | 7300 | 425963530237320015457/31250000000000000000000 | 31095337707324361128361/312500000000000000000 |
| `f * f * h * h` | 2700 | 368217055794426432889/62500000000000000000000 | 9941860506449513688003/625000000000000000000 |
| `f * p * w * w` | 500 | 811931708816326938631/31250000000000000000000 | 811931708816326938631/62500000000000000000 |
| `f * q * r * w` | -500 | 81172313032101069603/3125000000000000000000 | 0 |
| `h * p * r * w` | 500 | 701860798176594688687/62500000000000000000000 | 701860798176594688687/125000000000000000000 |
| `h * q * r * r` | -500 | 70168049598169882731/6250000000000000000000 | 0 |
| `p * p * v * k` | 3100 | 72326870250038765494773/2800937500000000000000000 | 2242132977751201730337963/28009375000000000000000 |
| `h * p * p * k` | -5143100 | 287682237538646945077023/28009375000000000000000000 | 0 |
| `p * q * u * k` | -3100 | 121776424297164950922801/5601875000000000000000000 | 0 |
| `p * q * v * j` | -3100 | 123673941994828974549/5000000000000000000000 | 0 |
| `h * p * q * j` | 3100 | 491916714152001668799/50000000000000000000000 | 15249418138712051732769/500000000000000000000 |
| `q * q * u * j` | 3100 | 208229256745105568913/10000000000000000000000 | 6455106959098272636303/100000000000000000000 |
| `u * u * k * k` | 200 | 408502190945922090455544129/12552401406250000000000000000 | 408502190945922090455544129/62762007031250000000000000 |
| `u * v * j * k` | -400 | 414867463545509014794021/11203750000000000000000000 | 0 |
| `v * v * j * j` | 200 | 421331919689676770329/10000000000000000000000 | 421331919689676770329/50000000000000000000 |
| `c * h * p * r` | 4800 | 341561973361081589347/31250000000000000000000 | 1024685920083244768041/19531250000000000000 |
| `c * p * r` | -293923/1250 | 1679402768968309/31250000000000000 | 0 |
| `b * h * p * r` | -4800 | 1425793553670708680421/125000000000000000000000 | 0 |
| `b * p * r` | -1858579/2500 | 7010387071046787/125000000000000000 | 0 |
| `b * h * p * k` | 2600 | 884475901731383052304329/56018750000000000000000000 | 11498186722507979679956277/280093750000000000000000 |
| `a * h * h * p` | -90820000 | 1307855662549976830133/500000000000000000000000 | 0 |
| `a * h * p * v` | -70000 | 328811078571797865383/50000000000000000000000 | 0 |
| `b * h * k * k` | -1170000 | 332994295932502985159249331/12552401406250000000000000000 | 0 |
| `b * e * p * r` | -6010000 | 2581455862332771517371/125000000000000000000000 | 0 |
| `c * c * u` | -39597/50 | 4527244222212327/62500000000000000 | 0 |
| `c * u * u` | -98606/25 | 13654090127633571/250000000000000000 | 0 |
| `c * c * u * w` | -16980000 | 1065165493357894084233/31250000000000000000000 | 0 |
| `c * u * u * w` | -104950000 | 3212520671139498951309/125000000000000000000000 | 0 |
| `c * f * u * v` | -15920000 | 190752748666435635141/6250000000000000000000 | 0 |
| `e * h * h` | 22791/100 | 15231827207764537/1000000000000000000 | 347148573892161562767/100000000000000000000 |
| `u * u * r` | 1818772031/896300 | 11251187778514221/250000000000000000 | 20463345647090687890552851/224075000000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 86 | -49427552049157678381422491819095204098053990347/17169042090109900000000000000000000000000 |

## Stage 87

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS-/EPQ- |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS-/EPQ- |
| Index | 0 |
| Context | 32 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 83 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 25983/200000 | 156351/1000000 |
| b | 103767/1000000 | 145431/250000 | 179069/1000000 | 268701/1000000 |
| c | 135501/250000 | 1/1 | 350517/500000 | 86843/100000 |
| e | 103767/1000000 | 59/125 | 125579/1000000 | 169567/1000000 |
| f | 155651/500000 | 344349/500000 | 541137/1000000 | 599991/1000000 |
| h | 796617/1000000 | 1/1 | 166697/200000 | 849201/1000000 |
| p | 22907/200000 | 425453/1000000 | 165677/1000000 | 6489/31250 |
| q | 387853/1000000 | 158493/200000 | 8947/20000 | 492289/1000000 |
| u | 34029/100000 | 171903/250000 | 427439/1000000 | 326201/500000 |
| v | 196767/1000000 | 727327/1000000 | 371103/1000000 | 515037/1000000 |
| r | 155651/250000 | 1/1 | 956693/1000000 | 1/1 |
| w | 264077/500000 | 1/1 | 239003/250000 | 484669/500000 |
| j | 247401/500000 | 896233/1000000 | 368303/500000 | 223411/250000 |
| k | 4673/12500 | 8033/8963 | 529101/1000000 | 23479/31250 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 26 | A_AEH | bitt ["actual-area","AEH",["P","Q"]] | `1/1 * h + -1/1 * a + -13857/20000` |
| 32 | A_AFH | bitt ["actual-area","AFH",["P"]] | `1/1 * f * h + -1/1 * a * f + -279/1000` |
| 34 | A_AFP | bitt ["actual-area","AFP",[]] | `1/1 * f * q + -1/1 * a * f + -1/1 * p + 1/1 * a * p + -93/1000` |
| 45 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 56 | A_BEH | bitt ["actual-area","BEH",["P","Q"]] | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 68 | A_BHP | bitt ["actual-area","BHP",[]] | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 77 | A_CEH | bitt ["actual-area","CEH",["Q"]] | `1/1 * h + -1/1 * c * h + 1/1 * c * e + -279/1000` |
| 86 | A_CFS | bitt ["actual-area","CFS",[]] | `-1/1 * f * k + 1/1 * c * k + 1/1 * j + -1/1 * c + -93/1000` |
| 100 | A_EFR | bitt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 101 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 102 | A_EHP | bitt ["actual-area","EHP",["Q"]] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 103 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 106 | A_EPQ | bitt ["actual-area","EPQ",[]] | `-1/1 * p * v + 1/1 * e * p + 1/1 * v + 1/1 * q * u + -1/1 * q + -1/1 * e * u + -93/1000` |
| 107 | A_EPR | bitt ["actual-area","EPR",["Q","S"]] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -13857/20000` |
| 108 | A_EPS | bitt ["actual-area","EPS",["Q"]] | `-1/1 * p * k + 1/1 * e * p + 1/1 * k + 1/1 * q * j + -1/1 * q + -1/1 * e * j + -279/1000` |
| 109 | A_EQR | bitt ["actual-area","EQR",["S"]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 111 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 114 | A_FHR | bitt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 121 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 131 | A_QRS | bitt ["actual-area","QRS",[]] | `-1/1 * r * k + 1/1 * v * r + 1/1 * u * k + 1/1 * w * j + -1/1 * u * w + -1/1 * v * j + -93/1000` |
| 133 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 138 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 148 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 723 | AREA_hi_AEQ | bitt ["earlier-area",{"direction":"hi","ref":"83:37","triangle":"AEQ","value":"503073/1000000"}] | `503073/1000000 + -1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u` |
| 776 | AREA_lo_BHQ | bitt ["earlier-area",{"direction":"lo","ref":"83:104","triangle":"BHQ","value":"77999/250000"}] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -77999/250000` |
| 831 | AREA_lo_EQR | bitt ["earlier-area",{"direction":"lo","ref":"83:178","triangle":"EQR","value":"279973/1000000"}] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279973/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 102 | q | 387853/1000000 | 158493/200000 | 387853/1000000 | 8256569/12500000 | 387853/1000000 | 330263/500000 | `(-1/1, 1753045701/4000000000); (-1/1, 96087398381/200000000000); (-1/1, 123669990669/200000000000); (-1/1, 8256569/12500000); (-1/1, 4456837779/20000000000); (-1/1, 379507723499/1000000000000); (-1/1, 339694981451/1000000000000); (-1/1, 31022551/62500000)` |
| 1 | 106 | v | 196767/1000000 | 727327/1000000 | 39089586289/126495000000 | 727327/1000000 | 15451/50000 | 727327/1000000 | `(177093/200000, -74459284343/200000000000); (177093/200000, -45542686263/100000000000); (574547/1000000, -340033393609/1000000000000); (574547/1000000, -30867356663/100000000000); (177093/200000, -110436305309/200000000000); (177093/200000, -31765598373/50000000000); (574547/1000000, -519918498439/1000000000000); (574547/1000000, -24427933573/50000000000); (177093/200000, -273627104023/1000000000000); (177093/200000, -121163241741/250000000000); (574547/1000000, -241364075917/1000000000000); (574547/1000000, -84474917741/250000000000); (177093/200000, -358806877147/1000000000000); (177093/200000, -71229092511/125000000000); (574547/1000000, -326543849041/1000000000000); (574547/1000000, -52884930511/125000000000)` |
| 2 | 107 | e | 103767/1000000 | 59/125 | 103767/1000000 | 12841/59031 | 103767/1000000 | 21753/100000 | `(-508069/1000000, -185781144589/500000000000); (-197151/1000000, -10715497491/20000000000); (-508069/1000000, -237233994343/500000000000); (-197151/1000000, -319340287029/500000000000); (-177093/200000, -22518811839/100000000000); (-574547/1000000, -194700351881/500000000000); (-508069/1000000, 11560207303/250000000000); (-197151/1000000, -66169292697/250000000000); (-508069/1000000, -7083108787/125000000000); (-197151/1000000, -45947858787/125000000000); (-177093/200000, 38523/200000); (-574547/1000000, -118303/1000000)` |
| 3 | 107 | p | 22907/200000 | 425453/1000000 | 22907/200000 | 203383/896233 | 22907/200000 | 226931/1000000 | `(-424387/1000000, -46959490007/125000000000); (-9707/31250, -111626304727/250000000000); (-424387/1000000, -119645404891/250000000000); (-9707/31250, -34338182401/62500000000); (-424387/1000000, -268463/1000000); (-9707/31250, -191113/500000); (-896233/1000000, 12021259993/125000000000); (-78247/100000, 6335195273/250000000000); (-896233/1000000, -1683904891/250000000000); (-78247/100000, -4847807401/62500000000); (-896233/1000000, 203383/1000000); (-78247/100000, 4481/50000)` |
| 4 | 107 | r | 155651/250000 | 1/1 | 36670609331/56817200000 | 1/1 | 645413/1000000 | 1/1 | `(142043/500000, -120231233009/200000000000); (170323/1000000, -3675789499/6250000000); (142043/500000, -648855566297/1000000000000); (170323/1000000, -19469975467/31250000000); (556759/1000000, -174765833009/200000000000); (110749/250000, -5379995749/6250000000); (556759/1000000, -921528566297/1000000000000); (110749/250000, -27991006717/31250000000); (142043/500000, -36670609331/200000000000); (170323/1000000, -3406464029/20000000000); (142043/500000, -284086050923/1000000000000); (170323/1000000, -25826969957/100000000000); (556759/1000000, -91205209331/200000000000); (110749/250000, -8859924029/20000000000); (556759/1000000, -556759050923/1000000000000); (110749/250000, -53094269957/100000000000)` |
| 5 | 107 | w | 264077/500000 | 1/1 | 52315469777/59031000000 | 1/1 | 886237/1000000 | 1/1 | `(177093/200000, -885465249137/1000000000000); (177093/200000, -945859523051/1000000000000); (773069/1000000, -174760450681/200000000000); (773069/1000000, -921410021171/1000000000000); (177093/200000, -245537887547/250000000000); (177093/200000, -521272912051/500000000000); (773069/1000000, -121311069307/125000000000); (773069/1000000, -509048161111/500000000000); (177093/200000, -156946409331/200000000000); (177093/200000, -17709304029/20000000000); (773069/1000000, -773069050923/1000000000000); (773069/1000000, -86101569957/100000000000)` |
| 6 | 108 | k | 4673/12500 | 8033/8963 | 133453599539/295155000000 | 8033/8963 | 452147/1000000 | 8033/8963 | `(177093/200000, -514401725683/1000000000000); (177093/200000, -139415510101/250000000000); (773069/1000000, -502738729951/1000000000000); (773069/1000000, -133303134631/250000000000); (177093/200000, -652155579937/1000000000000); (177093/200000, -347707947329/500000000000); (773069/1000000, -128098516841/200000000000); (773069/1000000, -335483196389/500000000000); (177093/200000, -400360798617/1000000000000); (177093/200000, -489289108191/1000000000000); (773069/1000000, -77739560577/200000000000); (773069/1000000, -464839606311/1000000000000); (177093/200000, -26790953613/62500000000); (177093/200000, -258791783691/500000000000); (773069/1000000, -104248065519/250000000000); (773069/1000000, -246567032751/500000000000)` |
| 7 | 114 | h | 796617/1000000 | 1/1 | 796617/1000000 | 148325175287/155651000000 | 796617/1000000 | 190587/200000 | `(-334111/1000000, 138262824713/500000000000); (8657/200000, -28968324713/500000000000); (-344349/500000, 315556324713/500000000000); (-155651/500000, 148325175287/500000000000); (-334111/1000000, 241111/1000000); (8657/200000, -27257/200000); (-344349/500000, 297849/500000); (-155651/500000, 109151/500000)` |
| 8 | 121 | k | 452147/1000000 | 8033/8963 | 452147/1000000 | 99283/114783 | 452147/1000000 | 864963/1000000 | `(-334111/1000000, 440470979/2000000000); (8657/200000, -14278351169/125000000000); (-344349/500000, 1149644979/2000000000); (-155651/500000, 30045023831/125000000000); (-334111/1000000, 241111/1000000); (8657/200000, -27257/200000); (-344349/500000, 297849/500000); (-155651/500000, 109151/500000); (-334111/1000000, 174567494647/1000000000000); (8657/200000, -31978960841/200000000000); (-344349/500000, 529154494647/1000000000000); (-155651/500000, 38938439159/200000000000)` |
| 9 | 133 | a | 103767/1000000 | 6143/20000 | 103767/1000000 | 21753/100000 | 103767/1000000 | 21753/100000 | `(-1/1, 103767/1000000); (-1/1, 21753/100000)` |
| 10 | 138 | c | 135501/250000 | 1/1 | 180668/317645 | 1/1 | 568773/1000000 | 1/1 | `(796617/1000000, -135501/250000); (190587/200000, -135501/250000)` |
| 11 | 148 | b | 103767/1000000 | 145431/250000 | 103767/1000000 | 8216699499/20616699499 | 103767/1000000 | 199273/500000 | `(-36848105619/200000000000, -200148022764513/200000000000000000); (-36848105619/200000000000, -351894381/200000000000); (-8085776409/40000000000, 367300185476157/40000000000000000); (-8085776409/40000000000, 645776409/40000000000); (-273777092427/1000000000000, 49925240190982071/1000000000000000000); (-273777092427/1000000000000, 87777092427/1000000000000); (-61850098497/200000000000, 14020310472434181/200000000000000000); (-61850098497/200000000000, 24650098497/200000000000)` |
| 12 | 148 | p | 22907/200000 | 226931/1000000 | 6843355400/56936786257 | 226931/1000000 | 1878/15625 | 226931/1000000 | `(185215842351/500000000000, -3127311/50000000); (135605722059/1000000000000, -89960667/1000000000); (713954443761/1000000000000, -102650331/1000000000); (239564240559/500000000000, -65032389/500000000); (44312049261/100000000000, -3127311/50000000); (32443053249/200000000000, -89960667/1000000000); (170810358771/200000000000, -102650331/1000000000); (57314656749/100000000000, -65032389/500000000)` |
| 13 | 723 | v | 15451/50000 | 727327/1000000 | 15451/50000 | 720603/1000000 | 15451/50000 | 720603/1000000 | `(-1/1, 15171/25000); (-1/1, 68189058873/100000000000); (-1/1, 64555241127/100000000000); (-1/1, 720603/1000000); (-1/1, 160594549011/250000000000); (-1/1, 171266200989/250000000000)` |
| 14 | 776 | u | 34029/100000 | 171903/250000 | 84026098661/238233750000 | 171903/250000 | 5511/15625 | 171903/250000 | `(796617/1000000, -362592477899/1000000000000); (796617/1000000, -253162916981/500000000000); (190587/200000, -75762625561/200000000000); (190587/200000, -56862574759/100000000000); (796617/1000000, -159941872369/500000000000); (796617/1000000, -85572768911/250000000000); (190587/200000, -84026098661/250000000000); (190587/200000, -50573873659/125000000000)` |
| 15 | 7 | b | 103767/1000000 | 199273/500000 | 3875/35382 | 199273/500000 | 54759/500000 | 199273/500000 | `(13857/20000, -93/1000); (579087/1000000, -93/1000); (53073/62500, -93/1000); (147081/200000, -93/1000)` |
| 16 | 32 | f | 155651/500000 | 344349/500000 | 3875/11794 | 344349/500000 | 82139/250000 | 344349/500000 | `(13857/20000, -279/1000); (579087/1000000, -279/1000); (53073/62500, -279/1000); (147081/200000, -279/1000)` |
| 17 | 34 | f | 82139/250000 | 344349/500000 | 3136250574/8699359375 | 344349/500000 | 72103/200000 | 344349/500000 | `(142043/500000, -1568125287/7812500000); (170323/1000000, -146130183/781250000); (142043/500000, -296383050923/1000000000000); (170323/1000000, -27056669957/100000000000); (556759/1000000, -1568125287/7812500000); (110749/250000, -146130183/781250000); (556759/1000000, -296383050923/1000000000000); (110749/250000, -27056669957/100000000000)` |
| 18 | 34 | q | 387853/1000000 | 330263/500000 | 15121342339/38261000000 | 330263/500000 | 79043/200000 | 330263/500000 | `(72103/200000, -238129596741/1000000000000); (72103/200000, -26546946219/100000000000); (344349/500000, -136092081051/500000000000); (344349/500000, -16842955509/50000000000); (72103/200000, -20862038183/62500000000); (72103/200000, -2181184547/6250000000); (344349/500000, -367847176289/1000000000000); (344349/500000, -42037917551/100000000000)` |
| 19 | 45 | e | 103767/1000000 | 21753/100000 | 46500/445241 | 21753/100000 | 104437/1000000 | 21753/100000 | `(91851/200000, -93/1000); (170227/1000000, -93/1000); (445241/500000, -93/1000); (300727/500000, -93/1000)` |
| 20 | 56 | b | 54759/500000 | 199273/500000 | 54759/500000 | 17339/49027 | 54759/500000 | 353663/1000000 | `(-34609/50000, 103767/1000000); (-579087/1000000, 103767/1000000); (-424249/500000, 52017/200000); (-147081/200000, 52017/200000)` |
| 21 | 68 | p | 1878/15625 | 226931/1000000 | 20837341477/158822500000 | 226931/1000000 | 65599/500000 | 226931/1000000 | `(796617/1000000, -34240186059/250000000000); (796617/1000000, -117480517763/500000000000); (190587/200000, -1926004737/12500000000); (190587/200000, -7256123209/25000000000); (796617/1000000, -53952207069/500000000000); (796617/1000000, -141130351333/1000000000000); (190587/200000, -62512024431/500000000000); (190587/200000, -196414244167/1000000000000)` |
| 22 | 77 | c | 568773/1000000 | 1/1 | 568773/1000000 | 44929/49027 | 568773/1000000 | 458207/500000 | `(-34609/50000, 517617/1000000); (-579087/1000000, 517617/1000000); (-424249/500000, 134787/200000); (-147081/200000, 134787/200000)` |
| 23 | 100 | f | 72103/200000 | 344349/500000 | 72103/200000 | 68507/99507 | 72103/200000 | 137693/200000 | `(-3909/5000, 185245002519/1000000000000); (-668707/1000000, 11225331011/100000000000); (-3909/5000, 1257/2500); (-668707/1000000, 389707/1000000); (-895563/1000000, 299008002519/1000000000000); (-78247/100000, 22601631011/100000000000); (-895563/1000000, 616563/1000000); (-78247/100000, 50347/100000)` |
| 24 | 100 | r | 645413/1000000 | 1/1 | 13374753221/19901400000 | 1/1 | 13441/20000 | 1/1 | `(895563/1000000, -674613627/1000000000); (78247/100000, -126768380821/200000000000); (895563/1000000, -931004937/1000000000); (78247/100000, -170628872951/200000000000); (895563/1000000, -120372778989/200000000000); (78247/100000, -11221843441/20000000000); (895563/1000000, -179112756159/200000000000); (78247/100000, -16354064171/20000000000)` |
| 25 | 101 | j | 247401/500000 | 896233/1000000 | 50221803089/89556300000 | 896233/1000000 | 35049/62500 | 896233/1000000 | `(895563/1000000, -15324153413/20000000000); (78247/100000, -145087189551/200000000000); (895563/1000000, -17604783303/20000000000); (78247/100000, -160475718581/200000000000); (895563/1000000, -50221803089/100000000000); (78247/100000, -92289261599/200000000000); (895563/1000000, -75163253259/100000000000); (78247/100000, -134754392069/200000000000)` |
| 26 | 102 | q | 79043/200000 | 330263/500000 | 79043/200000 | 57745133481/100000000000 | 79043/200000 | 144363/250000 | `(-1/1, 10670109209/25000000000); (-1/1, 220820971887/500000000000); (-1/1, 140653439849/250000000000); (-1/1, 57745133481/100000000000); (-1/1, 18026995021/50000000000); (-1/1, 386204208003/1000000000000); (-1/1, 240692250181/500000000000); (-1/1, 101409761589/200000000000)` |
| 27 | 103 | v | 15451/50000 | 720603/1000000 | 15451/50000 | 469183371/781250000 | 15451/50000 | 120111/200000 | `(-1/1, 1435882329/3125000000); (-1/1, 243833349/488281250); (-1/1, 8760411897/15625000000); (-1/1, 469183371/781250000); (-1/1, 2845821573/12500000000); (-1/1, 76357457439/250000000000); (-1/1, 34562199153/125000000000); (-1/1, 17713084857/50000000000)` |
| 28 | 106 | v | 15451/50000 | 120111/200000 | 137285316169/434401000000 | 120111/200000 | 316033/1000000 | 120111/200000 | `(434401/500000, -185977255381/500000000000); (434401/500000, -19850264441/50000000000); (773069/1000000, -361956443441/1000000000000); (773069/1000000, -37618048933/100000000000); (434401/500000, -244957895957/500000000000); (434401/500000, -128741642493/250000000000); (773069/1000000, -479917724593/1000000000000); (773069/1000000, -247070885241/500000000000); (434401/500000, -137285316169/500000000000); (434401/500000, -8437429021/25000000000); (773069/1000000, -264572565017/1000000000000); (773069/1000000, -6333447227/20000000000); (434401/500000, -165749642147/500000000000); (434401/500000, -98606453199/250000000000); (773069/1000000, -321501216973/1000000000000); (773069/1000000, -186800506653/500000000000)` |
| 29 | 107 | e | 104437/1000000 | 21753/100000 | 104437/1000000 | 87976/434401 | 104437/1000000 | 202523/1000000 | `(-135213/250000, -6562035147/125000000000); (-445119/1000000, -137338407897/1000000000000); (-135213/250000, -56130452663/500000000000); (-445119/1000000, -197103032047/1000000000000); (-434401/500000, 38557239037/500000000000); (-773069/1000000, -7727648647/1000000000000); (-135213/250000, 185364963/4000000000); (-445119/1000000, -197567037/4000000000); (-135213/250000, -67116917/5000000000); (-445119/1000000, -545781917/5000000000); (-434401/500000, 10997/62500); (-773069/1000000, 80219/1000000)` |
| 30 | 107 | p | 65599/500000 | 226931/1000000 | 65599/500000 | 67571/298521 | 65599/500000 | 226353/1000000 | `(-3909/5000, -64106451/10000000000); (-341857/500000, -361646707/5000000000); (-3909/5000, -264701077/4000000000); (-341857/500000, -2641879311/20000000000); (-3909/5000, 1779/20000); (-341857/500000, -571/62500); (-895563/1000000, 1073523549/10000000000); (-797477/1000000, 207168293/5000000000); (-895563/1000000, 190350923/4000000000); (-797477/1000000, -366619311/20000000000); (-895563/1000000, 202713/1000000); (-797477/1000000, 104627/1000000)` |
| 31 | 107 | r | 13441/20000 | 1/1 | 34260179079/48463000000 | 1/1 | 353467/500000 | 1/1 | `(145389/500000, -760996491/2500000000); (48173/250000, -72882477343/250000000000); (145389/500000, -1893953877/5000000000); (48173/250000, -178294357521/500000000000); (94603/200000, -1216588991/2500000000); (374929/1000000, -118441727343/250000000000); (94603/200000, -2805138877/5000000000); (374929/1000000, -269412857521/500000000000); (145389/500000, -102780537237/500000000000); (48173/250000, -96346193723/500000000000); (145389/500000, -290778371739/1000000000000); (48173/250000, -268576311381/1000000000000); (94603/200000, -193899037237/500000000000); (374929/1000000, -187464693723/500000000000); (94603/200000, -473015371739/1000000000000); (374929/1000000, -450813311381/1000000000000)` |
| 32 | 107 | w | 886237/1000000 | 1/1 | 391792537237/434401000000 | 1/1 | 450957/500000 | 1/1 | `(434401/500000, -434401109911/500000000000); (434401/500000, -462636930559/500000000000); (773647/1000000, -858864517087/1000000000000); (773647/1000000, -906002785053/1000000000000); (434401/500000, -57638105529/62500000000); (434401/500000, -6116758311/6250000000); (773647/1000000, -912271985729/1000000000000); (773647/1000000, -191882050739/200000000000); (434401/500000, -391792537237/500000000000); (434401/500000, -434401193723/500000000000); (773647/1000000, -773647371739/1000000000000); (773647/1000000, -849531311381/1000000000000)` |
| 33 | 108 | k | 452147/1000000 | 864963/1000000 | 249942647/543001250 | 864963/1000000 | 230149/500000 | 864963/1000000 | `(434401/500000, -248724712261/500000000000); (434401/500000, -269792898459/500000000000); (773647/1000000, -487511721787/1000000000000); (773647/1000000, -520314720853/1000000000000); (434401/500000, -288745415357/500000000000); (434401/500000, -61962720311/100000000000); (773647/1000000, -567553127979/1000000000000); (773647/1000000, -120071225409/200000000000); (434401/500000, -249942647/625000000); (434401/500000, -47494745821/100000000000); (773647/1000000, -77994106493/200000000000); (773647/1000000, -91135276429/200000000000); (434401/500000, -418818421979/1000000000000); (434401/500000, -493857644989/1000000000000); (773647/1000000, -102220179811/250000000000); (773647/1000000, -118646642231/250000000000)` |
| 34 | 111 | j | 35049/62500 | 896233/1000000 | 35049/62500 | 267521/298521 | 35049/62500 | 179231/200000 | `(-797477/1000000, 300093120087/500000000000); (-699391/1000000, 10616918237/20000000000); (-797477/1000000, 704477/1000000); (-699391/1000000, 606391/1000000); (-895563/1000000, 349136120087/500000000000); (-797477/1000000, 12578638237/20000000000); (-895563/1000000, 802563/1000000); (-797477/1000000, 120398171821/250000000000); (-699391/1000000, 5153154487/12500000000); (-895563/1000000, 144919671821/250000000000); (-797477/1000000, 6379229487/12500000000)` |
| 35 | 114 | h | 796617/1000000 | 190587/200000 | 796617/1000000 | 28606377799/31153500000 | 796617/1000000 | 5739/6250 | `(-346419/1000000, 28878047429/100000000000); (-18469/1000000, -700222201/100000000000); (-127897/200000, 58184647429/100000000000); (-62307/200000, 28606377799/100000000000); (-346419/1000000, 253419/1000000); (-18469/1000000, -74531/1000000); (-127897/200000, 109297/200000); (-62307/200000, 43707/200000)` |
| 36 | 121 | k | 230149/500000 | 864963/1000000 | 230149/500000 | 109297/127897 | 230149/500000 | 854571/1000000 | `(-346419/1000000, 116887707433/500000000000); (-18469/1000000, -31003640717/500000000000); (-127897/200000, 263420707433/500000000000); (-62307/200000, 115529359283/500000000000); (-346419/1000000, 253419/1000000); (-18469/1000000, -74531/1000000); (-127897/200000, 109297/200000); (-62307/200000, 43707/200000); (-346419/1000000, 2511002687/12500000000); (-18469/1000000, -4745124067/50000000000); (-127897/200000, 6174327687/12500000000); (-62307/200000, 9908175933/50000000000)` |
| 37 | 133 | a | 103767/1000000 | 21753/100000 | 103767/1000000 | 202523/1000000 | 103767/1000000 | 202523/1000000 | `(-1/1, 104437/1000000); (-1/1, 202523/1000000)` |
| 38 | 138 | c | 568773/1000000 | 458207/500000 | 45167/76520 | 458207/500000 | 590263/1000000 | 458207/500000 | `(796617/1000000, -135501/250000); (5739/6250, -135501/250000)` |
| 39 | 148 | b | 54759/500000 | 353663/1000000 | 54759/500000 | 109632113862823/313381644500000 | 54759/500000 | 87459/250000 | `(-98757278583/500000000000, 3398308528237329/500000000000000000); (-98757278583/500000000000, 2638025347680681/250000000000000000); (-667097661/3125000000, 50672697924843/3125000000000000); (-667097661/3125000000, 39335999203827/1562500000000000); (-273316647801/1000000000000, 51539786480961663/1000000000000000000); (-273316647801/1000000000000, 40009099238952807/500000000000000000); (-1880289867/6250000000, 423684800265021/6250000000000000); (-1880289867/6250000000, 328896341588469/3125000000000000)` |
| 40 | 776 | u | 5511/15625 | 171903/250000 | 34678822583/91824000000 | 171903/250000 | 188833/500000 | 171903/250000 | `(796617/1000000, -22789287407/62500000000); (796617/1000000, -15003799507/31250000000); (5739/6250, -188974253113/500000000000); (5739/6250, -130667422013/250000000000); (796617/1000000, -83367079529/250000000000); (796617/1000000, -47573193229/125000000000); (5739/6250, -34678822583/100000000000); (5739/6250, -21156682483/50000000000)` |
| 41 | 831 | u | 188833/500000 | 171903/250000 | 188833/500000 | 615590/895563 | 188833/500000 | 343689/500000 | `(-797477/1000000, 56936550833/125000000000); (-699391/1000000, 19307603917/50000000000); (-797477/1000000, 93027170553/250000000000); (-699391/1000000, 9461511059/31250000000); (-797477/1000000, 8086/15625); (-699391/1000000, 209709/500000); (-895563/1000000, 69197300833/125000000000); (-797477/1000000, 24211903917/50000000000); (-895563/1000000, 117548670553/250000000000); (-797477/1000000, 12526698559/31250000000); (-895563/1000000, 61559/100000)` |
| 42 | 0 | a | 103767/1000000 | 202523/1000000 | 11625/100862 | 202523/1000000 | 14407/125000 | 202523/1000000 | `(96149/200000, -93/1000); (240427/1000000, -93/1000); (50431/62500, -93/1000); (283289/500000, -93/1000)` |
| 43 | 7 | b | 54759/500000 | 87459/250000 | 11625/100373 | 87459/250000 | 115817/1000000 | 87459/250000 | `(681361/1000000, -93/1000); (297047/500000, -93/1000); (100373/125000, -93/1000); (715717/1000000, -93/1000)` |
| 44 | 10 | b | 115817/1000000 | 87459/250000 | 47158311381/374929000000 | 87459/250000 | 125779/1000000 | 87459/250000 | `(279959/1000000, -4867415207/62500000000); (48173/250000, -33214693723/500000000000); (279959/1000000, -8363932329/125000000000); (48173/250000, -47158311381/1000000000000); (115549/250000, -4867415207/62500000000); (374929/1000000, -33214693723/500000000000); (115549/250000, -8363932329/125000000000); (374929/1000000, -47158311381/1000000000000)` |
| 45 | 26 | h | 796617/1000000 | 5739/6250 | 404053/500000 | 5739/6250 | 404053/500000 | 5739/6250 | `(1/1, -404053/500000); (1/1, -895373/1000000)` |
| 46 | 34 | f | 72103/200000 | 137693/200000 | 13067290207/28887250000 | 137693/200000 | 226177/500000 | 137693/200000 | `(279959/1000000, -13067290207/62500000000); (48173/250000, -98813693723/500000000000); (279959/1000000, -36658057329/125000000000); (48173/250000, -273511311381/1000000000000); (115549/250000, -13067290207/62500000000); (374929/1000000, -98813693723/500000000000); (115549/250000, -36658057329/125000000000); (374929/1000000, -273511311381/1000000000000)` |
| 47 | 34 | q | 79043/200000 | 144363/250000 | 36053295669/86058125000 | 144363/250000 | 418941/1000000 | 144363/250000 | `(226177/500000, -8162911123/31250000000); (226177/500000, -72309869147/250000000000); (137693/200000, -36053295669/125000000000); (137693/200000, -337057384641/1000000000000); (226177/500000, -43175121407/125000000000); (226177/500000, -365123400523/1000000000000); (137693/200000, -5822096573/15625000000); (137693/200000, -12904415893/31250000000)` |
| 48 | 45 | e | 104437/1000000 | 202523/1000000 | 6200/52709 | 202523/1000000 | 58813/500000 | 202523/1000000 | `(116121/250000, -93/1000); (240427/1000000, -93/1000); (158127/200000, -93/1000); (283289/500000, -93/1000)` |
| 49 | 56 | b | 125779/1000000 | 87459/250000 | 125779/1000000 | 225390/715717 | 125779/1000000 | 62983/200000 | `(-8631/12500, 14407/125000); (-605583/1000000, 14407/125000); (-400307/500000, 22539/100000); (-715717/1000000, 22539/100000)` |
| 50 | 68 | p | 65599/500000 | 226353/1000000 | 11321997821/76520000000 | 226353/1000000 | 147961/1000000 | 226353/1000000 | `(404053/500000, -28389756907/200000000000); (404053/500000, -8622155839/40000000000); (5739/6250, -155801328921/1000000000000); (5739/6250, -50047348917/200000000000); (404053/500000, -61005714733/500000000000); (404053/500000, -16563640441/100000000000); (5739/6250, -33965993463/250000000000); (5739/6250, -10015962651/50000000000)` |
| 51 | 77 | c | 590263/1000000 | 458207/500000 | 590263/1000000 | 639240/715717 | 590263/1000000 | 893147/1000000 | `(-8631/12500, 264553/500000); (-605583/1000000, 264553/500000); (-400307/500000, 15981/25000); (-715717/1000000, 15981/25000)` |
| 52 | 86 | j | 35049/62500 | 179231/200000 | 565409967961/1000000000000 | 179231/200000 | 565409/1000000 | 179231/200000 | `(1/1, -309891881559/500000000000); (1/1, -391625431843/500000000000); (1/1, -182116296049/250000000000); (1/1, -222983071191/250000000000); (1/1, -565409967961/1000000000000); (1/1, -609458085197/1000000000000); (1/1, -383591790671/500000000000); (1/1, -405615849289/500000000000)` |
| 53 | 100 | f | 226177/500000 | 137693/200000 | 226177/500000 | 301687/441187 | 226177/500000 | 21369/31250 | `(-24509/31250, 61673545329/250000000000); (-699391/1000000, 93338802759/500000000000); (-24509/31250, 63161/125000); (-699391/1000000, 420391/1000000); (-441187/500000, 86195045329/250000000000); (-797477/1000000, 142381802759/500000000000); (-441187/500000, 301687/500000); (-797477/1000000, 518477/1000000)` |
| 54 | 100 | r | 353467/500000 | 1/1 | 169536352099/220593500000 | 1/1 | 384273/500000 | 1/1 | `(441187/500000, -11435340843/15625000000); (797477/1000000, -346729158207/500000000000); (441187/500000, -7135846943/7812500000); (797477/1000000, -26729223779/31250000000); (441187/500000, -169536352099/250000000000); (797477/1000000, -319870955429/500000000000); (441187/500000, -13787100003/15625000000); (797477/1000000, -25760036013/31250000000)` |
| 55 | 101 | j | 565409/1000000 | 179231/200000 | 57178901853/88237400000 | 179231/200000 | 162003/250000 | 179231/200000 | `(441187/500000, -24615970309/31250000000); (797477/1000000, -14986151047/20000000000); (441187/500000, -6773623867/7812500000); (797477/1000000, -1011213259/1250000000); (441187/500000, -57178901853/100000000000); (797477/1000000, -16668297531/31250000000); (441187/500000, -4639736791/6250000000); (797477/1000000, -10692259981/15625000000)` |
| 56 | 102 | q | 418941/1000000 | 144363/250000 | 418941/1000000 | 533341796963/1000000000000 | 418941/1000000 | 266671/500000 | `(-1/1, 5336773609/12500000000); (-1/1, 439503333737/1000000000000); (-1/1, 260390175973/500000000000); (-1/1, 533341796963/1000000000000); (-1/1, 4660172257/12500000000); (-1/1, 392030471201/1000000000000); (-1/1, 229009309629/500000000000); (-1/1, 477235309899/1000000000000)` |
| 57 | 103 | v | 316033/1000000 | 120111/200000 | 316033/1000000 | 277469011739/500000000000 | 316033/1000000 | 554939/1000000 | `(-1/1, 2839594877/6250000000); (-1/1, 243198945361/500000000000); (-1/1, 130718828269/250000000000); (-1/1, 277469011739/500000000000); (-1/1, 1503032741/6250000000); (-1/1, 149420784313/500000000000); (-1/1, 68728887477/250000000000); (-1/1, 166635939987/500000000000)` |
| 58 | 106 | v | 316033/1000000 | 554939/1000000 | 8981863667/26626218750 | 554939/1000000 | 337331/1000000 | 554939/1000000 | `(852039/1000000, -23796281789/62500000000); (852039/1000000, -400241774009/1000000000000); (773647/1000000, -11609986601/31250000000); (773647/1000000, -384365590993/1000000000000); (852039/1000000, -225968070279/500000000000); (852039/1000000, -471437405943/1000000000000); (773647/1000000, -221357601583/500000000000); (773647/1000000, -455561222927/1000000000000); (852039/1000000, -8981863667/31250000000); (852039/1000000, -333214522393/1000000000000); (773647/1000000, -17387418747/62500000000); (773647/1000000, -317338339377/1000000000000); (852039/1000000, -161591953383/500000000000); (852039/1000000, -73795758363/200000000000); (773647/1000000, -156981484687/500000000000); (773647/1000000, -353102608799/1000000000000)` |
| 59 | 107 | e | 58813/500000 | 202523/1000000 | 58813/500000 | 53063/284013 | 58813/500000 | 186833/1000000 | `(-124117/200000, -1334354223/62500000000); (-542193/1000000, -2876640933/31250000000); (-124117/200000, -23914118311/500000000000); (-542193/1000000, -11853107891/100000000000); (-852039/1000000, 37807951323/500000000000); (-773647/1000000, 2456530179/500000000000); (-124117/200000, 31111714893/500000000000); (-542193/1000000, -8084285107/500000000000); (-124117/200000, 8936215183/250000000000); (-542193/1000000, -10661784817/250000000000); (-852039/1000000, 159189/1000000); (-773647/1000000, 80797/1000000)` |
| 60 | 107 | p | 147961/1000000 | 226353/1000000 | 147961/1000000 | 94762/441187 | 147961/1000000 | 214789/1000000 | `(-24509/31250, 2169743799/100000000000); (-715081/1000000, -3936415629/125000000000); (-24509/31250, -597641383/125000000000); (-715081/1000000, -28984947043/500000000000); (-24509/31250, 45719/500000); (-715081/1000000, 22231/1000000); (-441187/500000, 11978343799/100000000000); (-813167/1000000, 8324334371/125000000000); (-441187/500000, 11663108617/125000000000); (-813167/1000000, 20058052957/500000000000); (-441187/500000, 47381/250000); (-813167/1000000, 120317/1000000)` |
| 61 | 107 | r | 384273/500000 | 1/1 | 17310567101/21522500000 | 1/1 | 8043/10000 | 1/1 | `(60263/200000, -10185032399/31250000000); (58027/250000, -315681099841/1000000000000); (60263/200000, -11822919851/31250000000); (58027/250000, -363468532909/1000000000000); (103929/250000, -13760063649/31250000000); (346509/1000000, -430082099841/1000000000000); (103929/250000, -15397951101/31250000000); (346509/1000000, -477869532909/1000000000000); (60263/200000, -121173969707/500000000000); (58027/250000, -232108002487/1000000000000); (60263/200000, -150657614543/500000000000); (58027/250000, -286450326763/1000000000000); (103929/250000, -178374469707/500000000000); (346509/1000000, -346509002487/1000000000000); (103929/250000, -207858114543/500000000000); (346509/1000000, -400851326763/1000000000000)` |
| 62 | 107 | w | 450957/500000 | 1/1 | 132178656569/142006500000 | 1/1 | 930793/1000000 | 1/1 | `(852039/1000000, -426019642457/500000000000); (852039/1000000, -897462538087/1000000000000); (785211/1000000, -422089287293/500000000000); (785211/1000000, -884976862363/1000000000000); (852039/1000000, -437213780307/500000000000); (852039/1000000, -919850813787/1000000000000); (785211/1000000, -433283425143/500000000000); (785211/1000000, -907365138063/1000000000000); (852039/1000000, -396535969707/500000000000); (852039/1000000, -852039002487/1000000000000); (785211/1000000, -392605614543/500000000000); (785211/1000000, -839553326763/1000000000000)` |
| 63 | 108 | k | 230149/500000 | 854571/1000000 | 136837331863/284013000000 | 854571/1000000 | 481799/1000000 | 854571/1000000 | `(852039/1000000, -242640601817/500000000000); (852039/1000000, -519888233191/1000000000000); (785211/1000000, -238710246653/500000000000); (785211/1000000, -507402557467/1000000000000); (852039/1000000, -262774491411/500000000000); (852039/1000000, -560156012379/1000000000000); (785211/1000000, -258844136247/500000000000); (785211/1000000, -109534067331/200000000000); (852039/1000000, -410511995589/1000000000000); (852039/1000000, -462292257747/1000000000000); (785211/1000000, -402651285261/1000000000000); (785211/1000000, -449806582023/1000000000000); (852039/1000000, -211195983717/500000000000); (852039/1000000, -59271528699/125000000000); (785211/1000000, -207265628553/500000000000); (785211/1000000, -115421638467/250000000000)` |
| 64 | 109 | u | 188833/500000 | 343689/500000 | 188833/500000 | 301687/441187 | 188833/500000 | 21369/31250 | `(-813167/1000000, 982341463/2000000000); (-18599/25000, 2177537707/5000000000); (-813167/1000000, 4485848459/10000000000); (-18599/25000, 1964608279/5000000000); (-813167/1000000, 534167/1000000); (-18599/25000, 1453/3125); (-441187/500000, 1120755463/2000000000); (-813167/1000000, 2523572707/5000000000); (-441187/500000, 5177918459/10000000000); (-813167/1000000, 2310643279/5000000000); (-441187/500000, 301687/500000)` |
| 65 | 111 | j | 162003/250000 | 179231/200000 | 162003/250000 | 394687/441187 | 162003/250000 | 894603/1000000 | `(-813167/1000000, 6488983439/10000000000); (-18599/25000, 2966175769/5000000000); (-813167/1000000, 720167/1000000); (-18599/25000, 8137/12500); (-441187/500000, 7181053439/10000000000); (-813167/1000000, 3312210769/5000000000); (-441187/500000, 394687/500000); (-813167/1000000, 1151893727/2000000000); (-18599/25000, 2601418367/5000000000); (-441187/500000, 1290307727/2000000000); (-813167/1000000, 2947453367/5000000000)` |
| 66 | 114 | h | 404053/500000 | 5739/6250 | 404053/500000 | 22088730149/24893000000 | 404053/500000 | 221837/250000 | `(-175973/500000, 145126031639/500000000000); (-30123/250000, 2338009383/31250000000); (-273823/500000, 242976031639/500000000000); (-9881/31250, 8453634383/31250000000); (-175973/500000, 129473/500000); (-30123/250000, 6873/250000); (-273823/500000, 227323/500000); (-9881/31250, 27899/125000)` |
| 67 | 121 | k | 481799/1000000 | 854571/1000000 | 481799/1000000 | 7333/8833 | 481799/1000000 | 830183/1000000 | `(-175973/500000, 122702548397/500000000000); (-30123/250000, 7492333443/250000000000); (-273823/500000, 220552548397/500000000000); (-9881/31250, 56417333443/250000000000); (-175973/500000, 129473/500000); (-30123/250000, 6873/250000); (-273823/500000, 227323/500000); (-9881/31250, 27899/125000); (-175973/500000, 228339273457/1000000000000); (-30123/250000, 2580702087/200000000000); (-273823/500000, 424039273457/1000000000000); (-9881/31250, 41720702087/200000000000)` |
| 68 | 133 | a | 14407/125000 | 202523/1000000 | 14407/125000 | 186833/1000000 | 14407/125000 | 186833/1000000 | `(-1/1, 58813/500000); (-1/1, 186833/1000000)` |
| 69 | 138 | c | 590263/1000000 | 893147/1000000 | 135501/221837 | 893147/1000000 | 610813/1000000 | 893147/1000000 | `(404053/500000, -135501/250000); (221837/250000, -135501/250000)` |
| 70 | 148 | b | 125779/1000000 | 62983/200000 | 125779/1000000 | 21791132149615771/70898147393000000 | 125779/1000000 | 307359/1000000 | `(-106284085933/500000000000, 8114092380993529/500000000000000000); (-106284085933/500000000000, 11864641498801151/500000000000000000); (-56073224357/250000000000, 5847449889172241/250000000000000000); (-56073224357/250000000000, 8550296614781479/250000000000000000); (-133286139817/500000000000, 24607297920041221/500000000000000000); (-133286139817/500000000000, 35981444919134099/500000000000000000); (-70898147393/250000000000, 14902705603560509/250000000000000000); (-70898147393/250000000000, 21791132149615771/250000000000000000)` |
| 71 | 776 | u | 188833/500000 | 21369/31250 | 8228048177/20636000000 | 21369/31250 | 398723/1000000 | 21369/31250 | `(404053/500000, -14848384349/40000000000); (404053/500000, -18267717329/40000000000); (221837/250000, -381176588243/1000000000000); (221837/250000, -481048675103/1000000000000); (404053/500000, -343839092093/1000000000000); (404053/500000, -389809155953/1000000000000); (221837/250000, -353806071611/1000000000000); (221837/250000, -414164897831/1000000000000)` |
| 72 | 831 | u | 398723/1000000 | 21369/31250 | 398723/1000000 | 602401/882374 | 398723/1000000 | 136541/200000 | `(-813167/1000000, 980395463/2000000000); (-18599/25000, 2172672707/5000000000); (-813167/1000000, 4476118459/10000000000); (-18599/25000, 1959743279/5000000000); (-813167/1000000, 266597/500000); (-18599/25000, 463987/1000000); (-441187/500000, 1118809463/2000000000); (-813167/1000000, 2518707707/5000000000); (-441187/500000, 5168188459/10000000000); (-813167/1000000, 2305778279/5000000000); (-441187/500000, 602401/1000000)` |
| 73 | 0 | a | 14407/125000 | 186833/1000000 | 11625/95921 | 186833/1000000 | 121193/1000000 | 186833/1000000 | `(242517/500000, -93/1000); (151727/500000, -93/1000); (95921/125000, -93/1000); (146447/250000, -93/1000)` |
| 74 | 0 | c | 610813/1000000 | 893147/1000000 | 116499667907/186833000000 | 893147/1000000 | 623549/1000000 | 893147/1000000 | `(121193/1000000, -108243534347/1000000000000); (186833/1000000, -116499667907/1000000000000); (121193/1000000, -130249759287/1000000000000); (186833/1000000, -150424804047/1000000000000)` |
| 75 | 10 | b | 125779/1000000 | 307359/1000000 | 52870326763/346509000000 | 307359/1000000 | 152579/1000000 | 307359/1000000 | `(74437/250000, -75068162527/1000000000000); (58027/250000, -65356002487/1000000000000); (74437/250000, -66969076723/1000000000000); (58027/250000, -52870326763/1000000000000); (412149/1000000, -75068162527/1000000000000); (346509/1000000, -65356002487/1000000000000); (412149/1000000, -66969076723/1000000000000); (346509/1000000, -52870326763/1000000000000)` |
| 76 | 26 | h | 404053/500000 | 221837/250000 | 814043/1000000 | 221837/250000 | 814043/1000000 | 221837/250000 | `(1/1, -814043/1000000); (1/1, -879683/1000000)` |
| 77 | 34 | f | 226177/500000 | 21369/31250 | 223029162527/412149000000 | 21369/31250 | 541137/1000000 | 21369/31250 | `(74437/250000, -223029162527/1000000000000); (58027/250000, -213317002487/1000000000000); (74437/250000, -281758076723/1000000000000); (58027/250000, -267659326763/1000000000000); (412149/1000000, -223029162527/1000000000000); (346509/1000000, -213317002487/1000000000000); (412149/1000000, -281758076723/1000000000000); (346509/1000000, -267659326763/1000000000000)` |
| 78 | 34 | q | 418941/1000000 | 266671/500000 | 305901905471/683808000000 | 266671/500000 | 8947/20000 | 266671/500000 | `(541137/1000000, -36076397371/125000000000); (541137/1000000, -39302406451/125000000000); (21369/31250, -305901905471/1000000000000); (21369/31250, -341074902551/1000000000000); (541137/1000000, -86835023291/250000000000); (541137/1000000, -92190393971/250000000000); (21369/31250, -364630819667/1000000000000); (21369/31250, -395417226827/1000000000000)` |
| 79 | 45 | c | 623549/1000000 | 893147/1000000 | 121506792307/186833000000 | 893147/1000000 | 650349/1000000 | 893147/1000000 | `(58813/500000, -55473628727/500000000000); (58813/500000, -64576704867/500000000000); (186833/1000000, -121506792307/1000000000000); (186833/1000000, -150424804047/1000000000000)` |
| 80 | 45 | e | 58813/500000 | 186833/1000000 | 3875/30857 | 186833/1000000 | 125579/1000000 | 186833/1000000 | `(49777/100000, -93/1000); (34299/100000, -93/1000); (92571/125000, -93/1000); (146447/250000, -93/1000)` |
| 81 | 56 | b | 152579/1000000 | 307359/1000000 | 152579/1000000 | 194498/700515 | 152579/1000000 | 277651/1000000 | `(-43029/62500, 121193/1000000); (-62721/100000, 121193/1000000); (-761769/1000000, 97249/500000); (-140103/200000, 97249/500000)` |
| 82 | 68 | p | 147961/1000000 | 214789/1000000 | 73506940737/443674000000 | 214789/1000000 | 165677/1000000 | 214789/1000000 | `(814043/1000000, -148949651247/1000000000000); (814043/1000000, -194812678143/1000000000000); (221837/250000, -80067227421/500000000000); (221837/250000, -107582942349/500000000000); (814043/1000000, -135829077879/1000000000000); (814043/1000000, -170936913351/1000000000000); (221837/250000, -73506940737/500000000000); (221837/250000, -95645059953/500000000000)` |
| 83 | 77 | c | 650349/1000000 | 893147/1000000 | 650349/1000000 | 608348/700515 | 650349/1000000 | 86843/100000 | `(-43029/62500, 535043/1000000); (-62721/100000, 535043/1000000); (-761769/1000000, 152087/250000); (-140103/200000, 152087/250000)` |
| 84 | 86 | j | 162003/250000 | 894603/1000000 | 163170763551/250000000000 | 894603/1000000 | 652683/1000000 | 894603/1000000 | `(1/1, -172682691903/250000000000); (1/1, -803740559893/1000000000000); (1/1, -759469512741/1000000000000); (1/1, -436239652511/500000000000); (1/1, -163170763551/250000000000); (1/1, -689716915381/1000000000000); (1/1, -771126092997/1000000000000); (1/1, -404079977087/500000000000)` |
| 85 | 100 | f | 541137/1000000 | 21369/31250 | 541137/1000000 | 595421/874421 | 541137/1000000 | 170233/250000 | `(-402607/500000, 3550898103/10000000000); (-18599/25000, 3058232181/10000000000); (-402607/500000, 263107/500000); (-18599/25000, 1453/3125); (-874421/1000000, 4242968103/10000000000); (-813167/1000000, 3750302181/10000000000); (-874421/1000000, 595421/1000000); (-813167/1000000, 534167/1000000)` |
| 86 | 100 | r | 8043/10000 | 1/1 | 752181556677/874421000000 | 1/1 | 172041/200000 | 1/1 | `(874421/1000000, -391969044159/500000000000); (813167/1000000, -18769782063/25000000000); (874421/1000000, -112062872431/125000000000); (813167/1000000, -5342457317/6250000000); (874421/1000000, -752181556677/1000000000000); (813167/1000000, -719034750879/1000000000000); (874421/1000000, -218605310093/250000000000); (813167/1000000, -208177857911/250000000000)` |
| 87 | 101 | j | 652683/1000000 | 894603/1000000 | 161026073687/218605250000 | 894603/1000000 | 368303/500000 | 894603/1000000 | `(874421/1000000, -40198241107/50000000000); (813167/1000000, -385409008171/500000000000); (874421/1000000, -10672032463/12500000000); (813167/1000000, -101506598539/125000000000); (874421/1000000, -161026073687/250000000000); (813167/1000000, -12219149779/20000000000); (874421/1000000, -46412775683/62500000000); (813167/1000000, -3504473011/5000000000)` |
| 88 | 101 | k | 481799/1000000 | 830183/1000000 | 121392453407/229431500000 | 830183/1000000 | 529101/1000000 | 830183/1000000 | `(458863/1000000, -380940801551/1000000000000); (458863/1000000, -392914059677/1000000000000); (79767/250000, -181692742623/500000000000); (79767/250000, -183397870221/500000000000); (458863/1000000, -121392453407/500000000000); (458863/1000000, -132218056589/500000000000); (79767/250000, -225229590509/1000000000000); (79767/250000, -238317793943/1000000000000)` |
| 89 | 102 | h | 814043/1000000 | 221837/250000 | 695396069059/834323000000 | 221837/250000 | 166697/200000 | 221837/250000 | `(834323/1000000, -705544448017/1000000000000); (834323/1000000, -695396069059/1000000000000); (785211/1000000, -699377012169/1000000000000); (785211/1000000, -686220326763/1000000000000); (834323/1000000, -791536448017/1000000000000); (834323/1000000, -781388069059/1000000000000); (785211/1000000, -785369012169/1000000000000); (785211/1000000, -772212326763/1000000000000)` |
| 90 | 102 | q | 8947/20000 | 266671/500000 | 8947/20000 | 98457755269/200000000000 | 8947/20000 | 492289/1000000 | `(-1/1, 218600628819/500000000000); (-1/1, 111837409149/250000000000); (-1/1, 482140397387/1000000000000); (-1/1, 98457755269/200000000000); (-1/1, 201217289083/500000000000); (-1/1, 103897815893/250000000000); (-1/1, 444728398259/1000000000000); (-1/1, 91577016733/200000000000)` |
| 91 | 103 | u | 398723/1000000 | 136541/200000 | 398723/1000000 | 152339/233505 | 398723/1000000 | 326201/500000 | `(-353953/500000, 201577/500000); (-161663/250000, 201577/500000); (-761769/1000000, 457017/1000000); (-140103/200000, 457017/1000000); (-353953/500000, 92773/500000); (-161663/250000, 92773/500000); (-761769/1000000, 239409/1000000); (-140103/200000, 239409/1000000)` |
| 92 | 103 | v | 337331/1000000 | 554939/1000000 | 337331/1000000 | 103007311531/200000000000 | 337331/1000000 | 515037/1000000 | `(-1/1, 229113297981/500000000000); (-1/1, 120662493651/250000000000); (-1/1, 490613179013/1000000000000); (-1/1, 103007311531/200000000000); (-1/1, 69661427447/250000000000); (-1/1, 39825992737/125000000000); (-1/1, 148684190431/500000000000); (-1/1, 33733061297/100000000000)` |
| 93 | 106 | v | 337331/1000000 | 515037/1000000 | 12384816163/33372920000 | 515037/1000000 | 371103/1000000 | 515037/1000000 | `(834323/1000000, -24452934349/62500000000); (834323/1000000, -101380487317/250000000000); (785211/1000000, -48134939217/125000000000); (785211/1000000, -99086551743/250000000000); (834323/1000000, -418267736687/1000000000000); (834323/1000000, -432542736371/1000000000000); (785211/1000000, -412100300839/1000000000000); (785211/1000000, -16934679763/40000000000); (834323/1000000, -12384816163/40000000000); (834323/1000000, -13577370289/40000000000); (785211/1000000, -303452968227/1000000000000); (785211/1000000, -330258514929/1000000000000); (834323/1000000, -325241110597/1000000000000); (834323/1000000, -355054963747/1000000000000); (785211/1000000, -319073674749/1000000000000); (785211/1000000, -345879221451/1000000000000)` |
| 94 | 107 | e | 125579/1000000 | 186833/1000000 | 125579/1000000 | 141473/834323 | 125579/1000000 | 169567/1000000 | `(-10852/15625, 21194714889/1000000000000); (-80677/125000, -24518390927/1000000000000); (-10852/15625, 1864058423/125000000000); (-80677/125000, -962519951/31250000000); (-834323/1000000, 83732008139/1000000000000); (-785211/1000000, 38018902323/1000000000000); (-10852/15625, 315742827/4000000000); (-80677/125000, 119294827/4000000000); (-10852/15625, 14530691849/200000000000); (-80677/125000, 4708291849/200000000000); (-834323/1000000, 141473/1000000); (-785211/1000000, 92361/1000000)` |
| 95 | 107 | p | 165677/1000000 | 214789/1000000 | 165677/1000000 | 181571/874421 | 165677/1000000 | 6489/31250 | `(-402607/500000, 13476404611/200000000000); (-380613/500000, 5908665103/200000000000); (-402607/500000, 1221995511/20000000000); (-380613/500000, 2326107801/100000000000); (-402607/500000, 28091/250000); (-380613/500000, 8547/125000); (-874421/1000000, 27317804611/200000000000); (-830433/1000000, 19750065103/200000000000); (-874421/1000000, 2606135511/20000000000); (-830433/1000000, 9246807801/100000000000); (-874421/1000000, 181571/1000000); (-830433/1000000, 137583/1000000)` |
| 96 | 107 | r | 172041/200000 | 1/1 | 285071448017/321771000000 | 1/1 | 177189/200000 | 1/1 | `(321771/1000000, -171406219939/500000000000); (277783/1000000, -167762320001/500000000000); (321771/1000000, -2942250599/7812500000); (277783/1000000, -1435445533/3906250000); (36671/100000, -193875719939/500000000000); (161361/500000, -190231820001/500000000000); (36671/100000, -6586673073/15625000000); (161361/500000, -6443954007/15625000000); (321771/1000000, -285071448017/1000000000000); (277783/1000000, -277783648141/1000000000000); (321771/1000000, -10055367869/31250000000); (277783/1000000, -9769929737/31250000000); (36671/100000, -330010448017/1000000000000); (161361/500000, -322722648141/1000000000000); (36671/100000, -11459711619/31250000000); (161361/500000, -11174273487/31250000000)` |
| 97 | 107 | w | 930793/1000000 | 1/1 | 797623448017/834323000000 | 1/1 | 239003/250000 | 1/1 | `(834323/1000000, -417161519711/500000000000); (834323/1000000, -433003094103/500000000000); (24761/31250, -829052363213/1000000000000); (24761/31250, -858889291649/1000000000000); (834323/1000000, -839448557067/1000000000000); (834323/1000000, -871131705851/1000000000000); (24761/31250, -417088940429/500000000000); (24761/31250, -432007404647/500000000000); (834323/1000000, -797623448017/1000000000000); (834323/1000000, -834323648141/1000000000000); (24761/31250, -24761024119/31250000000); (24761/31250, -25850210987/31250000000)` |
| 98 | 111 | j | 368303/500000 | 894603/1000000 | 368303/500000 | 781421/874421 | 368303/500000 | 223411/250000 | `(-830433/1000000, 69140929829/100000000000); (-157289/200000, 65243834963/100000000000); (-830433/1000000, 737433/1000000); (-157289/200000, 138689/200000); (-874421/1000000, 73539729829/100000000000); (-830433/1000000, 69642634963/100000000000); (-874421/1000000, 781421/1000000); (-830433/1000000, 32853469539/50000000000); (-157289/200000, 15452461053/25000000000); (-874421/1000000, 35052869539/50000000000); (-830433/1000000, 16552161053/25000000000)` |
| 99 | 114 | f | 541137/1000000 | 170233/250000 | 541137/1000000 | 73515/122527 | 541137/1000000 | 599991/1000000 | `(-122527/1000000, 2180925267/40000000000); (-8583/125000, 340173807/50000000000); (-122527/1000000, 14703/200000); (-8583/125000, 4913/250000); (-33303/200000, 2180925267/40000000000); (-28163/250000, 340173807/50000000000); (-33303/200000, 14703/200000); (-28163/250000, 4913/250000)` |
| 100 | 114 | h | 166697/200000 | 221837/250000 | 166697/200000 | 97416633589/114715750000 | 166697/200000 | 849201/1000000 | `(-43101/125000, 68902883589/250000000000); (-142977/500000, 54836601027/250000000000); (-458863/1000000, 97416633589/250000000000); (-400009/1000000, 83350351027/250000000000); (-43101/125000, 7869/31250); (-142977/500000, 96477/500000); (-458863/1000000, 365863/1000000); (-400009/1000000, 307009/1000000)` |
| 101 | 114 | r | 177189/200000 | 1/1 | 3123605749/3265000000 | 1/1 | 956693/1000000 | 1/1 | `(33303/200000, -159303893199/1000000000000); (33303/200000, -166515097257/1000000000000); (150799/1000000, -150799384107/1000000000000); (150799/1000000, -157085638701/1000000000000); (33303/200000, -36621485511/200000000000); (33303/200000, -38581500273/200000000000); (150799/1000000, -174602918463/1000000000000); (150799/1000000, -183478042809/1000000000000)` |
| 102 | 114 | w | 239003/250000 | 1/1 | 239003/250000 | 34969638163/36075800000 | 239003/250000 | 484669/500000 | `(-541137/1000000, 25866665367/50000000000); (-599991/1000000, 56638723353/100000000000); (-541137/1000000, 127700607311/250000000000); (-599991/1000000, 280390652449/500000000000); (-541137/1000000, 104908914489/200000000000); (-599991/1000000, 114719699727/200000000000); (-541137/1000000, 517333081537/1000000000000); (-599991/1000000, 567311957191/1000000000000)` |
| 103 | 121 | k | 529101/1000000 | 830183/1000000 | 529101/1000000 | 179934764761/229431500000 | 529101/1000000 | 98033/125000 | `(-103889/250000, 78489427407/250000000000); (-178351/500000, 12884628969/50000000000); (-458863/1000000, 89316177407/250000000000); (-400009/1000000, 15049978969/50000000000); (-103889/250000, 158281264761/500000000000); (-178351/500000, 25951311087/100000000000); (-458863/1000000, 179934764761/500000000000); (-400009/1000000, 30282011087/100000000000); (-103889/250000, 76762480521/250000000000); (-178351/500000, 62696197959/250000000000); (-458863/1000000, 87589230521/250000000000); (-400009/1000000, 73522947959/250000000000); (-103889/250000, 155873715183/500000000000); (-178351/500000, 127349005857/500000000000); (-458863/1000000, 177527215183/500000000000); (-400009/1000000, 149002505857/500000000000)` |
| 104 | 131 | k | 529101/1000000 | 98033/125000 | 529101/1000000 | 419218300111/557970000000 | 529101/1000000 | 23479/31250 | `(-55797/100000, 311695148557/1000000000000); (-304291/1000000, 69174980409/1000000000000); (-55797/100000, 68674630163/200000000000); (-304291/1000000, 100852982667/1000000000000); (-601277/1000000, 163883253089/500000000000); (-173799/500000, 8524633803/100000000000); (-601277/1000000, 182838929087/500000000000); (-173799/500000, 61578845013/500000000000); (-55797/100000, 63239555483/200000000000); (-304291/1000000, 70297082913/1000000000000); (-55797/100000, 347875779673/1000000000000); (-304291/1000000, 101975085171/1000000000000); (-601277/1000000, 83067283759/250000000000); (-173799/500000, 43184220267/500000000000); (-601277/1000000, 46272560879/125000000000); (-173799/500000, 12427979253/100000000000); (-55797/100000, 403548088099/1000000000000); (-304291/1000000, 161027919951/1000000000000); (-55797/100000, 82524596573/200000000000); (-304291/1000000, 170102814717/1000000000000); (-601277/1000000, 10490486143/25000000000); (-173799/500000, 44274819393/250000000000); (-601277/1000000, 27182980639/62500000000); (-173799/500000, 48101880519/250000000000); (-55797/100000, 82028681069/200000000000); (-304291/1000000, 164242710843/1000000000000); (-55797/100000, 419218300111/1000000000000); (-304291/1000000, 173317605609/1000000000000); (-601277/1000000, 213107381483/500000000000); (-173799/500000, 11269629279/62500000000); (-601277/1000000, 44152300747/100000000000); (-173799/500000, 24452789121/125000000000)` |
| 105 | 133 | a | 121193/1000000 | 186833/1000000 | 121193/1000000 | 169567/1000000 | 121193/1000000 | 169567/1000000 | `(-1/1, 125579/1000000); (-1/1, 169567/1000000)` |
| 106 | 148 | b | 152579/1000000 | 277651/1000000 | 152579/1000000 | 75385956114209/280557176300000 | 152579/1000000 | 268701/1000000 | `(-46217858869/200000000000, 5864755497595281/200000000000000000); (-46217858869/200000000000, 783137917760567/20000000000000000); (-233693074077/1000000000000, 31017143032902873/1000000000000000000); (-233693074077/1000000000000, 4141809632068911/100000000000000000); (-1662946833/6250000000, 325465097394717/6250000000000000); (-1662946833/6250000000, 43460304318219/625000000000000); (-8416715289/31250000000, 1693648808985861/31250000000000000); (-8416715289/31250000000, 226157868342627/3125000000000000)` |
| 107 | 776 | u | 398723/1000000 | 326201/500000 | 90745602239/212300250000 | 326201/500000 | 427439/1000000 | 326201/500000 | `(166697/200000, -191272891589/500000000000); (166697/200000, -218119252891/500000000000); (849201/1000000, -192471857371/500000000000); (849201/1000000, -220230705349/500000000000); (166697/200000, -22536529837/62500000000); (166697/200000, -24847706003/62500000000); (849201/1000000, -90745602239/250000000000); (849201/1000000, -100446550241/250000000000)` |
| 108 | 0 | a | 121193/1000000 | 169567/1000000 | 31000/238617 | 169567/1000000 | 25983/200000 | 169567/1000000 | `(49777/100000, -93/1000); (23853/62500, -93/1000); (715851/1000000, -93/1000); (599729/1000000, -93/1000)` |
| 109 | 0 | c | 650349/1000000 | 86843/100000 | 118872363293/169567000000 | 86843/100000 | 350517/500000 | 86843/100000 | `(25983/200000, -22564460157/200000000000); (169567/1000000, -118872363293/1000000000000); (25983/200000, -25581658083/200000000000); (169567/1000000, -138562822467/1000000000000)` |
| 110 | 10 | b | 152579/1000000 | 268701/1000000 | 601976579/3361687500 | 268701/1000000 | 179069/1000000 | 268701/1000000 | `(63487/200000, -14295214509/200000000000); (277783/1000000, -64906648141/1000000000000); (63487/200000, -412646313/6250000000); (277783/1000000, -1805929737/31250000000); (181187/500000, -14295214509/200000000000); (161361/500000, -64906648141/1000000000000); (181187/500000, -412646313/6250000000); (161361/500000, -1805929737/31250000000)` |
| 111 | 26 | a | 25983/200000 | 169567/1000000 | 25983/200000 | 156351/1000000 | 25983/200000 | 156351/1000000 | `(-1/1, 28127/200000); (-1/1, 156351/1000000)` |

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
| 34 | a | 25983/200000 | 156351/1000000 | `(-18773/50000, -331987261/20000000000); (-217157/500000, 194579477/20000000000); (-333489/1000000, -1171407261/20000000000); (-392343/1000000, -644840523/20000000000); (-18773/50000, 7718792593/1000000000000); (-217157/500000, 36691969399/1000000000000); (-333489/1000000, -34252207407/1000000000000); (-392343/1000000, -5279030601/1000000000000)` |

## Stage 88

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS- |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS- |
| Index | 0 |
| Context | 33 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 66 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 120803/1000000 | 133643/1000000 |
| b | 103767/1000000 | 145431/250000 | 156811/1000000 | 62627/250000 |
| c | 135501/250000 | 1/1 | 347487/500000 | 33429/40000 |
| e | 103767/1000000 | 59/125 | 128701/1000000 | 17281/100000 |
| f | 155651/500000 | 344349/500000 | 250901/500000 | 120893/200000 |
| h | 796617/1000000 | 1/1 | 896693/1000000 | 909533/1000000 |
| p | 22907/200000 | 425453/1000000 | 2069/12500 | 4053/20000 |
| q | 387853/1000000 | 158493/200000 | 87951/200000 | 508591/1000000 |
| u | 34029/100000 | 845747/1000000 | 214813/500000 | 247077/500000 |
| v | 196767/1000000 | 727327/1000000 | 260609/500000 | 120111/200000 |
| r | 155651/250000 | 1/1 | 423859/500000 | 1/1 |
| w | 508879/1000000 | 1/1 | 226429/250000 | 191009/200000 |
| j | 247401/500000 | 896233/1000000 | 878437/1000000 | 446487/500000 |
| k | 4673/12500 | 8033/8963 | 502551/1000000 | 299793/500000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 32 | A_AFH | bitt ["actual-area","AFH",["P"]] | `1/1 * f * h + -1/1 * a * f + -279/1000` |
| 34 | A_AFP | bitt ["actual-area","AFP",[]] | `1/1 * f * q + -1/1 * a * f + -1/1 * p + 1/1 * a * p + -93/1000` |
| 41 | A_AHS | bitt ["actual-area","AHS",["P","Q"]] | `1/1 * h * j + -1/1 * a * j + -13857/20000` |
| 45 | A_AQS | bitt ["actual-area","AQS",[]] | `-1/1 * u * k + 1/1 * a * u + 1/1 * v * j + -1/1 * a * j + -93/1000` |
| 46 | A_BCE | bitt ["actual-area","BCE",[]] | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 57 | A_BEH | bitt ["actual-area","BEH",["P","Q"]] | `1/1 * h + -1/1 * b * h + 1/1 * b * e + -13857/20000` |
| 66 | A_BFQ | bitt ["actual-area","BFQ",[]] | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 69 | A_BHP | bitt ["actual-area","BHP",[]] | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 79 | A_CEH | bitt ["actual-area","CEH",["Q"]] | `1/1 * h + -1/1 * c * h + 1/1 * c * e + -279/1000` |
| 83 | A_CES | bitt ["actual-area","CES",[]] | `1/1 * k + -1/1 * c * k + -1/1 * e * j + 1/1 * c * e + -93/1000` |
| 86 | A_CFQ | bitt ["actual-area","CFQ",[]] | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 102 | A_EFR | bitt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 103 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 104 | A_EHP | bitt ["actual-area","EHP",["Q"]] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 105 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 109 | A_EPR | bitt ["actual-area","EPR",["Q","S"]] | `-1/1 * p * w + 1/1 * e * p + 1/1 * w + 1/1 * q * r + -1/1 * q + -1/1 * e * r + -13857/20000` |
| 111 | A_EQR | bitt ["actual-area","EQR",["S"]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -279/1000` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 116 | A_FHR | bitt ["actual-area","FHR",[]] | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 123 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 126 | A_HPS | bitt ["actual-area","HPS",["Q"]] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -279/1000` |
| 131 | A_PQS | bitt ["actual-area","PQS",[]] | `-1/1 * u * k + 1/1 * q * u + 1/1 * p * k + 1/1 * v * j + -1/1 * p * v + -1/1 * q * j + -93/1000` |
| 132 | A_PRS | bitt ["actual-area","PRS",["Q"]] | `-1/1 * r * k + 1/1 * q * r + 1/1 * p * k + 1/1 * w * j + -1/1 * p * w + -1/1 * q * j + -279/1000` |
| 135 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 140 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 150 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 379 | SUP_CPR_CEP_EPR | bitt ["support-envelope",["quad","PCER",["Q","S"],"139/10"],"CPR","CEP","EPR","177093/200000"] | `-81447/200000 * q + 81447/200000 * c * q + 81447/200000 * e * p + 177093/200000 * c * e + -12927/10000 * c * w + 12927/10000 * w + -12927/10000 * e * r` |
| 743 | AREA_hi_AEQ | bitt ["earlier-area",{"direction":"hi","ref":"66:37","triangle":"AEQ","value":"503073/1000000"}] | `503073/1000000 + -1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u` |
| 757 | AREA_lo_AHQ | bitt ["earlier-area",{"direction":"lo","ref":"66:54","triangle":"AHQ","value":"7117/25000"}] | `1/1 * h * u + -1/1 * a * u + -7117/25000` |
| 762 | AREA_lo_APQ | bitt ["earlier-area",{"direction":"lo","ref":"66:60","triangle":"APQ","value":"2467/25000"}] | `-1/1 * p * v + 1/1 * a * p + 1/1 * q * u + -1/1 * a * u + -2467/25000` |
| 796 | AREA_lo_BHQ | bitt ["earlier-area",{"direction":"lo","ref":"66:104","triangle":"BHQ","value":"77999/250000"}] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -77999/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 41 | a | 103767/1000000 | 6143/20000 | 103767/1000000 | 203383/896233 | 103767/1000000 | 226931/1000000 | `(-247401/500000, -149341157583/500000000000); (-247401/500000, -6189/31250); (-896233/1000000, 21104443761/1000000000000); (-896233/1000000, 203383/1000000)` |
| 1 | 41 | h | 796617/1000000 | 1/1 | 785849409711/896233000000 | 1/1 | 219209/250000 | 1/1 | `(247401/500000, -372097059567/500000000000); (247401/500000, -402567956331/500000000000); (896233/1000000, -785849409711/1000000000000); (896233/1000000, -896233050923/1000000000000)` |
| 2 | 41 | j | 247401/500000 | 896233/1000000 | 692850/896233 | 896233/1000000 | 773069/1000000 | 896233/1000000 | `(773069/1000000, -13857/20000); (129981/200000, -13857/20000); (896233/1000000, -13857/20000)` |
| 3 | 45 | v | 196767/1000000 | 727327/1000000 | 277902550881/896233000000 | 727327/1000000 | 155039/500000 | 727327/1000000 | `(773069/1000000, -265122192093/1000000000000); (773069/1000000, -318424984849/1000000000000); (773069/1000000, -200816240227/500000000000); (773069/1000000, -196340583631/500000000000); (896233/1000000, -277902550881/1000000000000); (896233/1000000, -346374714533/1000000000000); (896233/1000000, -207206419621/500000000000); (896233/1000000, -210315448473/500000000000); (773069/1000000, -3969620573832759/8963000000000000); (773069/1000000, -4447373505304787/8963000000000000); (773069/1000000, -3779924743576481/4481500000000000); (773069/1000000, -3739809433506533/4481500000000000); (896233/1000000, -4084170929649603/8963000000000000); (896233/1000000, -4697886932462479/8963000000000000); (896233/1000000, -3837199921484903/4481500000000000); (896233/1000000, -3865066147085379/4481500000000000)` |
| 4 | 86 | u | 34029/100000 | 845747/1000000 | 34029/100000 | 202618024611/250000000000 | 34029/100000 | 810473/1000000 | `(-1/1, 94367096311/250000000000); (-1/1, 173362475389/250000000000); (-1/1, 123622645533/250000000000); (-1/1, 202618024611/250000000000); (-1/1, 140604103223/500000000000); (-1/1, 203045674877/500000000000); (-1/1, 277849253469/500000000000); (-1/1, 340290825123/500000000000)` |
| 5 | 104 | q | 387853/1000000 | 158493/200000 | 387853/1000000 | 8256569/12500000 | 387853/1000000 | 330263/500000 | `(-1/1, 101858508417/200000000000); (-1/1, 27573405437/50000000000); (-1/1, 123669990669/200000000000); (-1/1, 8256569/12500000); (-1/1, 268931474743/1000000000000); (-1/1, 106399327323/250000000000); (-1/1, 339694981451/1000000000000); (-1/1, 31022551/62500000)` |
| 6 | 109 | e | 103767/1000000 | 59/125 | 103767/1000000 | 12841/59031 | 103767/1000000 | 21753/100000 | `(-508069/1000000, -388629627053/1000000000000); (-197151/1000000, -21873970719/40000000000); (-508069/1000000, -491535326561/1000000000000); (-197151/1000000, -649754967483/1000000000000); (-177093/200000, -48451091253/200000000000); (-574547/1000000, -400475097187/1000000000000); (-508069/1000000, 11560207303/250000000000); (-197151/1000000, -66169292697/250000000000); (-508069/1000000, -7083108787/125000000000); (-197151/1000000, -45947858787/125000000000); (-177093/200000, 38523/200000); (-574547/1000000, -118303/1000000)` |
| 7 | 109 | p | 22907/200000 | 425453/1000000 | 22907/200000 | 203383/896233 | 22907/200000 | 226931/1000000 | `(-50639/125000, -49368865007/125000000000); (-291349/1000000, -116445054727/250000000000); (-50639/125000, -124464154891/250000000000); (-291349/1000000, -35542869901/62500000000); (-50639/125000, -143869/500000); (-291349/1000000, -401501/1000000); (-896233/1000000, 12021259993/125000000000); (-78247/100000, 6335195273/250000000000); (-896233/1000000, -1683904891/250000000000); (-78247/100000, -4847807401/62500000000); (-896233/1000000, 203383/1000000); (-78247/100000, 4481/50000)` |
| 8 | 109 | r | 155651/250000 | 1/1 | 36670609331/56817200000 | 1/1 | 645413/1000000 | 1/1 | `(142043/500000, -15455587573/25000000000); (170323/1000000, -121038731543/200000000000); (142043/500000, -82969558909/125000000000); (170323/1000000, -637940119919/1000000000000); (556759/1000000, -22272412573/25000000000); (110749/250000, -175573331543/200000000000); (556759/1000000, -117053683909/125000000000); (110749/250000, -910613119919/1000000000000); (142043/500000, -36670609331/200000000000); (170323/1000000, -3406464029/20000000000); (142043/500000, -284086050923/1000000000000); (170323/1000000, -25826969957/100000000000); (556759/1000000, -91205209331/200000000000); (110749/250000, -8859924029/20000000000); (556759/1000000, -556759050923/1000000000000); (110749/250000, -53094269957/100000000000)` |
| 9 | 109 | w | 508879/1000000 | 1/1 | 52315469777/59031000000 | 1/1 | 886237/1000000 | 1/1 | `(177093/200000, -885465249137/1000000000000); (177093/200000, -945859523051/1000000000000); (773069/1000000, -174760450681/200000000000); (773069/1000000, -921410021171/1000000000000); (177093/200000, -245537887547/250000000000); (177093/200000, -521272912051/500000000000); (773069/1000000, -121311069307/125000000000); (773069/1000000, -509048161111/500000000000); (177093/200000, -156946409331/200000000000); (177093/200000, -17709304029/20000000000); (773069/1000000, -773069050923/1000000000000); (773069/1000000, -86101569957/100000000000)` |
| 10 | 111 | u | 34029/100000 | 810473/1000000 | 34029/100000 | 617233/896233 | 34029/100000 | 344349/500000 | `(-78247/100000, 430314801443/1000000000000); (-668707/1000000, 89222670581/250000000000); (-78247/100000, 7059093257/25000000000); (-668707/1000000, 208939611161/1000000000000); (-78247/100000, 50347/100000); (-668707/1000000, 389707/1000000); (-896233/1000000, 544077801443/1000000000000); (-78247/100000, 117663420581/250000000000); (-896233/1000000, 9903168257/25000000000); (-78247/100000, 322702611161/1000000000000); (-896233/1000000, 617233/1000000)` |
| 11 | 116 | h | 219209/250000 | 1/1 | 219209/250000 | 148325175287/155651000000 | 219209/250000 | 190587/200000 | `(-334111/1000000, 138262824713/500000000000); (8657/200000, -28968324713/500000000000); (-344349/500000, 315556324713/500000000000); (-155651/500000, 148325175287/500000000000); (-334111/1000000, 241111/1000000); (8657/200000, -27257/200000); (-344349/500000, 297849/500000); (-155651/500000, 109151/500000)` |
| 12 | 116 | r | 645413/1000000 | 1/1 | 47963275051/61582000000 | 1/1 | 194713/250000 | 1/1 | `(30791/250000, -47963275051/500000000000); (30791/250000, -49737224949/500000000000); (9413/200000, -18059194801/250000000000); (9413/200000, -11766305199/250000000000); (30791/250000, -16417649941/125000000000); (30791/250000, -22227850059/125000000000); (9413/200000, -10765142863/100000000000); (9413/200000, -12541357137/100000000000)` |
| 13 | 116 | w | 886237/1000000 | 1/1 | 886237/1000000 | 37890600059/38912750000 | 886237/1000000 | 973733/1000000 | `(-155651/500000, 1379436641/5000000000); (-344349/500000, 75850215907/125000000000); (-155651/500000, 961228963/4000000000); (-344349/500000, 59994109801/100000000000); (-155651/500000, 37890600059/125000000000); (-344349/500000, 79254899941/125000000000); (-155651/500000, 25071557137/100000000000); (-344349/500000, 61034942863/100000000000)` |
| 14 | 123 | k | 4673/12500 | 8033/8963 | 4673/12500 | 583568766211/688698000000 | 4673/12500 | 847351/1000000 | `(-9351/20000, 322018000779/1000000000000); (-45077/500000, -12444298073/1000000000000); (-344349/500000, 543166000779/1000000000000); (-155651/500000, 208703701927/1000000000000); (-9351/20000, 362420766211/1000000000000); (-45077/500000, -5062173057/1000000000000); (-344349/500000, 583568766211/1000000000000); (-155651/500000, 216085826943/1000000000000); (-9351/20000, 308006494647/1000000000000); (-45077/500000, -5291160841/200000000000); (-344349/500000, 529154494647/1000000000000); (-155651/500000, 38938439159/200000000000); (-9351/20000, 359185617423/1000000000000); (-45077/500000, -1659464369/200000000000); (-344349/500000, 580333617423/1000000000000); (-155651/500000, 42570135631/200000000000)` |
| 15 | 126 | q | 387853/1000000 | 330263/500000 | 387853/1000000 | 112591746083/179246600000 | 387853/1000000 | 628139/1000000 | `(-773069/1000000, 42655510353/125000000000); (-773069/1000000, 39135786169/100000000000); (-773069/1000000, 35588668051/125000000000); (-773069/1000000, 32626990007/100000000000); (-896233/1000000, 56154838991/125000000000); (-896233/1000000, 50872514803/100000000000); (-896233/1000000, 49087996689/125000000000); (-896233/1000000, 44363718641/100000000000); (-773069/1000000, 395477665209/1000000000000); (-773069/1000000, 17823657763/40000000000); (-773069/1000000, 392163669149/1000000000000); (-773069/1000000, 433724224811/1000000000000); (-896233/1000000, 503472294313/1000000000000); (-896233/1000000, 112591746083/200000000000); (-896233/1000000, 500158298253/1000000000000); (-896233/1000000, 551091511151/1000000000000)` |
| 16 | 131 | v | 155039/500000 | 727327/1000000 | 5175175577/10422640000 | 727327/1000000 | 124133/250000 | 727327/1000000 | `(329267/500000, -345250882687/1000000000000); (273069/500000, -303232762047/1000000000000); (329267/500000, -449241617481/1000000000000); (273069/500000, -407223496841/1000000000000); (329267/500000, -340368641383/1000000000000); (273069/500000, -298350520743/1000000000000); (329267/500000, -360641811489/1000000000000); (273069/500000, -318623690849/1000000000000); (390849/500000, -393020409579/1000000000000); (334651/500000, -351002288939/1000000000000); (390849/500000, -526605729277/1000000000000); (334651/500000, -484587608637/1000000000000); (390849/500000, -15525526731/40000000000); (334651/500000, -69224009527/200000000000); (390849/500000, -87601184657/200000000000); (334651/500000, -79197560529/200000000000); (329267/500000, -113037089623/250000000000); (273069/500000, -44613686937/125000000000); (329267/500000, -278069546643/500000000000); (273069/500000, -46090023029/100000000000); (329267/500000, -153060284419/250000000000); (273069/500000, -12925056867/25000000000); (329267/500000, -316257153891/500000000000); (273069/500000, -268637722393/500000000000); (390849/500000, -62489735673/125000000000); (334651/500000, -101169755597/250000000000); (390849/500000, -316751602541/500000000000); (334651/500000, -269132171043/500000000000); (390849/500000, -82501333071/125000000000); (334651/500000, -141192950393/250000000000); (390849/500000, -354939209789/500000000000); (334651/500000, -307319778291/500000000000)` |
| 17 | 132 | k | 4673/12500 | 847351/1000000 | 4673/12500 | 145546188547/221439000000 | 4673/12500 | 26291/40000 | `(-664317/1000000, 306860150457/1000000000000); (-551921/1000000, 41450131321/200000000000); (-664317/1000000, 61649944879/200000000000); (-551921/1000000, 208640230543/1000000000000); (-177093/200000, 392633065701/1000000000000); (-773069/1000000, 293023571849/1000000000000); (-177093/200000, 447161407967/1000000000000); (-773069/1000000, 69510382823/200000000000); (-664317/1000000, 364479241321/1000000000000); (-551921/1000000, 255035547053/1000000000000); (-664317/1000000, 365868815259/1000000000000); (-551921/1000000, 256425120991/1000000000000); (-177093/200000, 90050431313/200000000000); (-773069/1000000, 340808462297/1000000000000); (-177093/200000, 504780498831/1000000000000); (-773069/1000000, 395336804563/1000000000000); (-664317/1000000, 368243117433/1000000000000); (-551921/1000000, 268633623581/1000000000000); (-664317/1000000, 340038106467/1000000000000); (-551921/1000000, 48085722523/200000000000); (-177093/200000, 454016032677/1000000000000); (-773069/1000000, 14176261553/40000000000); (-177093/200000, 478949790039/1000000000000); (-773069/1000000, 379340296187/1000000000000); (-664317/1000000, 436638565641/1000000000000); (-551921/1000000, 327194871373/1000000000000); (-664317/1000000, 16337342187/40000000000); (-551921/1000000, 298989860407/1000000000000); (-177093/200000, 104482296177/200000000000); (-773069/1000000, 412967786617/1000000000000); (-177093/200000, 547345238247/1000000000000); (-773069/1000000, 437901543979/1000000000000)` |
| 18 | 135 | a | 103767/1000000 | 226931/1000000 | 103767/1000000 | 21753/100000 | 103767/1000000 | 21753/100000 | `(-1/1, 103767/1000000); (-1/1, 21753/100000)` |
| 19 | 140 | c | 135501/250000 | 1/1 | 180668/317645 | 1/1 | 568773/1000000 | 1/1 | `(219209/250000, -135501/250000); (190587/200000, -135501/250000)` |
| 20 | 150 | b | 103767/1000000 | 145431/250000 | 103767/1000000 | 8216699499/20616699499 | 103767/1000000 | 199273/500000 | `(-9671420563/50000000000, 211253987879199/50000000000000000); (-9671420563/50000000000, 371420563/50000000000); (-8085776409/40000000000, 367300185476157/40000000000000000); (-8085776409/40000000000, 645776409/40000000000); (-72995317579/250000000000, 15069821265360567/250000000000000000); (-72995317579/250000000000, 26495317579/250000000000); (-61850098497/200000000000, 14020310472434181/200000000000000000); (-61850098497/200000000000, 24650098497/200000000000)` |
| 21 | 150 | p | 22907/200000 | 226931/1000000 | 6843355400/56936786257 | 226931/1000000 | 1878/15625 | 226931/1000000 | `(50966750127/125000000000, -3127311/50000000); (37315290443/250000000000, -89960667/1000000000); (196462339697/250000000000, -102650331/1000000000); (65922064943/125000000000, -65032389/500000000); (44312049261/100000000000, -3127311/50000000); (32443053249/200000000000, -89960667/1000000000); (170810358771/200000000000, -102650331/1000000000); (57314656749/100000000000, -65032389/500000000)` |
| 22 | 379 | c | 568773/1000000 | 1/1 | 568773/1000000 | 67060799016480353/67261019066000000 | 568773/1000000 | 31157/31250 | `(-89580920679/100000000000, 11103692212058103/12500000000000000); (-159015210399/200000000000, 974155720092327/1250000000000000); (-89580920679/100000000000, 178561181209441059/200000000000000000); (-159015210399/200000000000, 15775602778683981/20000000000000000); (-39897816879/50000000000, 9880531346933103/12500000000000000); (-139444636557/200000000000, 851839633579827/1250000000000000); (-39897816879/50000000000, 158990607367441059/200000000000000000); (-139444636557/200000000000, 13818545394483981/20000000000000000); (-89580920679/100000000000, 2683220851577547/3125000000000000); (-159015210399/200000000000, 448210956543921/625000000000000); (-89580920679/100000000000, 172628240317474419/200000000000000000); (-159015210399/200000000000, 14531861866612221/20000000000000000); (-39897816879/50000000000, 2377430635296297/3125000000000000); (-139444636557/200000000000, 387052913287671/625000000000000); (-39897816879/50000000000, 153057666475474419/200000000000000000); (-139444636557/200000000000, 12574804482412221/20000000000000000); (-100891528599/100000000000, 12517518202058103/12500000000000000); (-181636426239/200000000000, 1115538319092327/1250000000000000); (-100891528599/100000000000, 201182397049441059/200000000000000000); (-181636426239/200000000000, 18037724362683981/20000000000000000); (-45553120839/50000000000, 11294357336933103/12500000000000000); (-162065852397/200000000000, 993222232579827/1250000000000000); (-45553120839/50000000000, 181611823207441059/200000000000000000); (-162065852397/200000000000, 16080666978483981/20000000000000000); (-100891528599/100000000000, 3036677349077547/3125000000000000); (-181636426239/200000000000, 518902256043921/625000000000000); (-100891528599/100000000000, 195249456157474419/200000000000000000); (-181636426239/200000000000, 16793983450612221/20000000000000000); (-45553120839/50000000000, 2730887132796297/3125000000000000); (-162065852397/200000000000, 457744212787671/625000000000000); (-45553120839/50000000000, 175678882315474419/200000000000000000); (-162065852397/200000000000, 14836926066412221/20000000000000000)` |
| 23 | 743 | v | 124133/250000 | 727327/1000000 | 124133/250000 | 720603/1000000 | 124133/250000 | 720603/1000000 | `(-1/1, 15171/25000); (-1/1, 68189058873/100000000000); (-1/1, 64555241127/100000000000); (-1/1, 720603/1000000); (-1/1, 321127324713/500000000000); (-1/1, 342594175287/500000000000)` |
| 24 | 796 | u | 34029/100000 | 344349/500000 | 84026098661/238233750000 | 344349/500000 | 5511/15625 | 344349/500000 | `(219209/250000, -21966187823/62500000000); (219209/250000, -14486394937/31250000000); (190587/200000, -359355570101/1000000000000); (190587/200000, -246946795019/500000000000); (219209/250000, -328207829711/1000000000000); (219209/250000, -187131018609/500000000000); (190587/200000, -84026098661/250000000000); (190587/200000, -50573873659/125000000000)` |
| 25 | 0 | a | 103767/1000000 | 21753/100000 | 93000/893257 | 21753/100000 | 104113/1000000 | 21753/100000 | `(232503/500000, -93/1000); (170227/1000000, -93/1000); (893257/1000000, -93/1000); (299239/500000, -93/1000)` |
| 26 | 7 | b | 103767/1000000 | 199273/500000 | 46500/424411 | 199273/500000 | 109563/1000000 | 199273/500000 | `(772723/1000000, -93/1000); (329653/500000, -93/1000); (424411/500000, -93/1000); (147081/200000, -93/1000)` |
| 27 | 32 | f | 155651/500000 | 344349/500000 | 139500/424411 | 344349/500000 | 32869/100000 | 344349/500000 | `(772723/1000000, -279/1000); (329653/500000, -279/1000); (424411/500000, -279/1000); (147081/200000, -279/1000)` |
| 28 | 34 | f | 32869/100000 | 344349/500000 | 1567800393/4093953125 | 344349/500000 | 76591/200000 | 344349/500000 | `(14187/50000, -1567800393/7812500000); (170323/1000000, -146130183/781250000); (14187/50000, -296304532797/1000000000000); (170323/1000000, -27056669957/100000000000); (262013/500000, -1567800393/7812500000); (410609/1000000, -146130183/781250000); (262013/500000, -296304532797/1000000000000); (410609/1000000, -27056669957/100000000000)` |
| 29 | 34 | q | 387853/1000000 | 628139/1000000 | 45396810863/114783000000 | 628139/1000000 | 395501/1000000 | 628139/1000000 | `(76591/200000, -240549044219/1000000000000); (76591/200000, -27035083539/100000000000); (344349/500000, -136190432589/500000000000); (344349/500000, -16842955509/50000000000); (76591/200000, -42021890839/125000000000); (76591/200000, -4423386259/12500000000); (344349/500000, -368006947671/1000000000000); (344349/500000, -42037917551/100000000000)` |
| 30 | 41 | a | 104113/1000000 | 21753/100000 | 104113/1000000 | 32240358771/179246600000 | 104113/1000000 | 89933/500000 | `(-773069/1000000, -3748817579/250000000000); (-773069/1000000, 8766901503/200000000000); (-896233/1000000, 23249839697/250000000000); (-896233/1000000, 32240358771/200000000000)` |
| 31 | 41 | h | 219209/250000 | 190587/200000 | 786159506329/896233000000 | 190587/200000 | 438591/500000 | 190587/200000 | `(773069/1000000, -773336532797/1000000000000); (773069/1000000, -415949414377/500000000000); (896233/1000000, -786159506329/1000000000000); (896233/1000000, -427025922389/500000000000)` |
| 32 | 41 | j | 773069/1000000 | 896233/1000000 | 346425/424411 | 896233/1000000 | 102031/125000 | 896233/1000000 | `(773069/1000000, -13857/20000); (174329/250000, -13857/20000); (424411/500000, -13857/20000)` |
| 33 | 46 | e | 103767/1000000 | 21753/100000 | 93000/887461 | 21753/100000 | 104793/1000000 | 21753/100000 | `(45921/100000, -93/1000); (170227/1000000, -93/1000); (887461/1000000, -93/1000); (299239/500000, -93/1000)` |
| 34 | 57 | b | 109563/1000000 | 199273/500000 | 109563/1000000 | 17339/49027 | 109563/1000000 | 353663/1000000 | `(-772389/1000000, 46083/250000); (-164913/250000, 46083/250000); (-424071/500000, 52017/200000); (-147081/200000, 52017/200000)` |
| 35 | 69 | p | 1878/15625 | 226931/1000000 | 630321687/4671250000 | 226931/1000000 | 16867/125000 | 226931/1000000 | `(438591/500000, -145774415403/1000000000000); (438591/500000, -263352747503/1000000000000); (190587/200000, -77037070671/500000000000); (190587/200000, -145071890371/500000000000); (438591/500000, -120285898209/1000000000000); (438591/500000, -181077294509/1000000000000); (190587/200000, -32146406037/250000000000); (190587/200000, -51967081937/250000000000)` |
| 36 | 79 | c | 568773/1000000 | 31157/31250 | 568773/1000000 | 44929/49027 | 568773/1000000 | 458207/500000 | `(-772389/1000000, 299091/500000); (-164913/250000, 299091/500000); (-424071/500000, 134787/200000); (-147081/200000, 134787/200000)` |
| 37 | 83 | c | 568773/1000000 | 458207/500000 | 568773/1000000 | 4833957157/5496812500 | 568773/1000000 | 879411/1000000 | `(-269047/1000000, 24412865417/125000000000); (-15631/100000, 1291019657/12500000000); (-269047/1000000, 186921055231/1000000000000); (-15631/100000, 8588243551/100000000000); (-276241/500000, 59842240417/125000000000); (-87949/200000, 4833957157/12500000000); (-276241/500000, 470356055231/1000000000000); (-87949/200000, 36931743551/100000000000)` |
| 38 | 102 | f | 76591/200000 | 344349/500000 | 76591/200000 | 29497/43447 | 76591/200000 | 16973/25000 | `(-195361/250000, 76117690591/250000000000); (-668707/1000000, 5416633111/25000000000); (-195361/250000, 125611/250000); (-668707/1000000, 389707/1000000); (-43447/50000, 97991690591/250000000000); (-756203/1000000, 7604033111/25000000000); (-43447/50000, 29497/50000); (-756203/1000000, 477203/1000000)` |
| 39 | 103 | f | 76591/200000 | 16973/25000 | 76591/200000 | 52369865033/78926000000 | 76591/200000 | 165883/250000 | `(-269047/1000000, 1443865417/125000000000); (-15631/100000, -1005880343/12500000000); (-269047/1000000, 83154055231/1000000000000); (-15631/100000, -1788456449/100000000000); (-276241/500000, 36873240417/125000000000); (-87949/200000, 2537057157/12500000000); (-276241/500000, 366589055231/1000000000000); (-87949/200000, 26555043551/100000000000)` |
| 40 | 103 | k | 4673/12500 | 26291/40000 | 125277470727/308522500000 | 26291/40000 | 50757/125000 | 26291/40000 | `(123409/200000, -322158073349/1000000000000); (123409/200000, -37100622629/100000000000); (84117/250000, -73188891947/250000000000); (84117/250000, -7749307787/25000000000); (123409/200000, -125277470727/500000000000); (123409/200000, -15421018167/50000000000); (84117/250000, -221152435893/1000000000000); (84117/250000, -24738644853/100000000000)` |
| 41 | 104 | q | 395501/1000000 | 628139/1000000 | 395501/1000000 | 14367559773/25000000000 | 395501/1000000 | 574703/1000000 | `(-1/1, 61744864737/125000000000); (-1/1, 15911599929/31250000000); (-1/1, 34968131943/62500000000); (-1/1, 14367559773/25000000000); (-1/1, 422902991841/1000000000000); (-1/1, 112121627997/250000000000); (-1/1, 240732643899/500000000000); (-1/1, 101409761589/200000000000)` |
| 42 | 105 | u | 5511/15625 | 344349/500000 | 5511/15625 | 363403/735405 | 5511/15625 | 247077/500000 | `(-772389/1000000, 5753/20000); (-164913/250000, 5753/20000); (-424071/500000, 363403/1000000); (-147081/200000, 363403/1000000); (-772389/1000000, 63579/1000000); (-164913/250000, 63579/1000000); (-424071/500000, 34833/250000); (-147081/200000, 34833/250000)` |
| 43 | 105 | v | 124133/250000 | 720603/1000000 | 124133/250000 | 469183371/781250000 | 124133/250000 | 120111/200000 | `(-1/1, 7996207971/15625000000); (-1/1, 4308750789/7812500000); (-1/1, 8762373813/15625000000); (-1/1, 469183371/781250000); (-1/1, 201251443047/500000000000); (-1/1, 57276540699/125000000000); (-1/1, 110205559533/250000000000); (-1/1, 49653167763/100000000000)` |
| 44 | 109 | e | 104793/1000000 | 21753/100000 | 104793/1000000 | 18686420489/108133000000 | 104793/1000000 | 17281/100000 | `(-160979/250000, -683126549/50000000000); (-551921/1000000, -19038380759/200000000000); (-160979/250000, -13323173719/250000000000); (-551921/1000000, -134822067691/1000000000000); (-108133/125000, 9225215521/125000000000); (-773069/1000000, -7727648647/1000000000000); (-160979/250000, 15506777191/250000000000); (-551921/1000000, -27551458571/1000000000000); (-160979/250000, 5599236217/250000000000); (-551921/1000000, -67181622467/1000000000000); (-108133/125000, 18686420489/125000000000); (-773069/1000000, 59912796577/1000000000000)` |
| 45 | 109 | p | 16867/125000 | 226931/1000000 | 16867/125000 | 17609/86894 | 16867/125000 | 4053/20000 | `(-195361/250000, 1519031701/62500000000); (-713427/1000000, -7167667317/250000000000); (-195361/250000, -383141417/25000000000); (-713427/1000000, -17075208291/250000000000); (-195361/250000, 44297/500000); (-713427/1000000, 20577/1000000); (-43447/50000, 6987531701/62500000000); (-800923/1000000, 14706332683/250000000000); (-43447/50000, 1804258583/25000000000); (-800923/1000000, 4798791709/250000000000); (-43447/50000, 17609/100000); (-800923/1000000, 108073/1000000)` |
| 46 | 109 | r | 194713/250000 | 1/1 | 1449183049/1816925000 | 1/1 | 398801/500000 | 1/1 | `(72677/250000, -9611216487/31250000000); (222691/1000000, -37297623209/125000000000); (72677/250000, -1802368133/5000000000); (222691/1000000, -6933799631/20000000000); (46991/100000, -15211278987/31250000000); (401893/1000000, -59697873209/125000000000); (46991/100000, -2698378133/5000000000); (401893/1000000, -10517839631/20000000000); (72677/250000, -1449183049/6250000000); (222691/1000000, -27836418241/125000000000); (72677/250000, -290708691/1000000000); (222691/1000000, -5538500919/20000000000); (46991/100000, -2569195549/6250000000); (401893/1000000, -50236668241/125000000000); (46991/100000, -469910691/1000000000); (401893/1000000, -9122540919/20000000000)` |
| 47 | 109 | w | 886237/1000000 | 973733/1000000 | 97937831469/108133000000 | 973733/1000000 | 226429/250000 | 973733/1000000 | `(108133/125000, -13161583899/15625000000); (108133/125000, -443706961429/500000000000); (15947/20000, -417622708167/500000000000); (15947/20000, -437856133259/500000000000); (108133/125000, -219652873983/250000000000); (108133/125000, -461842024627/500000000000); (15947/20000, -87151554273/100000000000); (15947/20000, -455991196457/500000000000); (108133/125000, -97937831469/125000000000); (108133/125000, -10529271373/12500000000); (15947/20000, -15528133971/20000000000); (15947/20000, -1661280107/2000000000)` |
| 48 | 113 | j | 102031/125000 | 896233/1000000 | 102031/125000 | 38797/43447 | 102031/125000 | 446487/500000 | `(-800923/1000000, 323473985663/500000000000); (-366453/500000, 148174369023/250000000000); (-800923/1000000, 707923/1000000); (-366453/500000, 319953/500000); (-43447/50000, 357482485663/500000000000); (-800923/1000000, 165178619023/250000000000); (-43447/50000, 38797/50000); (-800923/1000000, 149025437041/250000000000); (-366453/500000, 54185125293/100000000000); (-43447/50000, 166029687041/250000000000); (-800923/1000000, 60986825293/100000000000)` |
| 49 | 116 | h | 438591/500000 | 190587/200000 | 438591/500000 | 6375592731/7009750000 | 438591/500000 | 909533/1000000 | `(-414647/1000000, 17887676461/50000000000); (-13407/100000, 6476903193/62500000000); (-123409/200000, 28007576461/50000000000); (-84117/250000, 19126778193/62500000000); (-414647/1000000, 66341215797/200000000000); (-13407/100000, 14624748761/250000000000); (-123409/200000, 106820815797/200000000000); (-84117/250000, 65224248761/250000000000)` |
| 50 | 116 | r | 398801/500000 | 1/1 | 10392723797/12281800000 | 1/1 | 211547/250000 | 1/1 | `(61409/500000, -10392723797/100000000000); (61409/500000, -13991652761/125000000000); (90467/1000000, -18307652153/200000000000); (90467/1000000, -22616824589/250000000000); (61409/500000, -25994937641/200000000000); (61409/500000, -39266169533/250000000000); (90467/1000000, -117585711/1000000000); (90467/1000000, -169498443/1250000000)` |
| 51 | 116 | w | 226429/250000 | 973733/1000000 | 226429/250000 | 36573923281/38295500000 | 226429/250000 | 191009/200000 | `(-76591/200000, 173424175297/500000000000); (-165883/250000, 579067817/976562500); (-76591/200000, 331862299811/1000000000000); (-165883/250000, 4586377659/7812500000); (-76591/200000, 36573923281/100000000000); (-165883/250000, 76482040853/125000000000); (-76591/200000, 69155442003/200000000000); (-165883/250000, 150242812639/250000000000)` |
| 52 | 126 | q | 395501/1000000 | 574703/1000000 | 395501/1000000 | 83191772609/148829000000 | 395501/1000000 | 8734/15625 | `(-102031/125000, 58347843/156250000); (-102031/125000, 12358353741/31250000000); (-102031/125000, 85381092309/250000000000); (-102031/125000, 180687439067/500000000000); (-446487/500000, 110182215333/250000000000); (-446487/500000, 46525214867/100000000000); (-446487/500000, 51103379421/125000000000); (-446487/500000, 107789926773/250000000000); (-102031/125000, 50915585273/125000000000); (-102031/125000, 53670725837/125000000000); (-102031/125000, 196216949793/500000000000); (-102031/125000, 103071102121/250000000000); (-446487/500000, 118656837079/250000000000); (-446487/500000, 249575317827/500000000000); (-446487/500000, 229868282859/500000000000); (-446487/500000, 241034618721/500000000000)` |
| 53 | 131 | q | 395501/1000000 | 8734/15625 | 395501/1000000 | 36063481147/66470000000 | 395501/1000000 | 542553/1000000 | `(-57943/125000, 2451050109/15625000000); (-57943/125000, 18842589389/125000000000); (-161047/500000, 6214411611/62500000000); (-161047/500000, 11663011739/125000000000); (-57943/125000, 7116853911/31250000000); (-57943/125000, 107284509933/500000000000); (-161047/500000, 10643918997/62500000000); (-161047/500000, 78566199333/500000000000); (-54027/100000, 24370515151/125000000000); (-54027/100000, 5901175917/31250000000); (-19941/50000, 17190937501/125000000000); (-19941/50000, 8212563009/62500000000); (-54027/100000, 136908754041/500000000000); (-54027/100000, 65161800699/250000000000); (-19941/50000, 108190443441/500000000000); (-19941/50000, 50802645399/250000000000); (-57943/125000, 12769968473/125000000000); (-57943/125000, 56522149643/500000000000); (-161047/500000, 4594099517/500000000000); (-161047/500000, 2509093817/125000000000); (-57943/125000, 4325796649/25000000000); (-57943/125000, 4421815101/25000000000); (-161047/500000, 8006031721/100000000000); (-161047/500000, 8390105529/100000000000); (-54027/100000, 273938793/1953125000); (-54027/100000, 75570606759/500000000000); (-19941/50000, 23642556633/500000000000); (-19941/50000, 227225253/3906250000); (-54027/100000, 21911004889/100000000000); (-54027/100000, 22295078697/100000000000); (-19941/50000, 6306925007/50000000000); (-19941/50000, 6498961911/50000000000)` |
| 54 | 131 | v | 124133/250000 | 120111/200000 | 197551664139/379019000000 | 120111/200000 | 260609/500000 | 120111/200000 | `(21291/31250, -45594764819/125000000000); (306799/500000, -42157805321/125000000000); (21291/31250, -10823079771/25000000000); (306799/500000, -50678439357/125000000000); (21291/31250, -183125561651/500000000000); (306799/500000, -169377723659/500000000000); (21291/31250, -41361569019/100000000000); (306799/500000, -193060007103/500000000000); (379019/500000, -197551664139/500000000000); (172581/250000, -183803826147/500000000000); (379019/500000, -237275556159/500000000000); (172581/250000, -223527718167/500000000000); (379019/500000, -99149083257/250000000000); (172581/250000, -92275164261/250000000000); (379019/500000, -113810902917/250000000000); (172581/250000, -106936983921/250000000000); (21291/31250, -26216598609/62500000000); (306799/500000, -187479429197/500000000000); (21291/31250, -30476915627/62500000000); (306799/500000, -221561965341/500000000000); (21291/31250, -114123377511/250000000000); (306799/500000, -205993395347/500000000000); (21291/31250, -125964519233/250000000000); (306799/500000, -229675678791/500000000000); (379019/500000, -44981078747/100000000000); (172581/250000, -10132601703/25000000000); (379019/500000, -52925857151/100000000000); (172581/250000, -757424769/1562500000); (379019/500000, -48683871977/100000000000); (172581/250000, -22116600021/50000000000); (379019/500000, -54548599841/100000000000); (172581/250000, -25048963953/50000000000)` |
| 55 | 132 | k | 50757/125000 | 26291/40000 | 50757/125000 | 106614122981/177813000000 | 50757/125000 | 299793/500000 | `(-177813/250000, 87479119833/250000000000); (-321769/500000, 72146706527/250000000000); (-177813/250000, 88579804053/250000000000); (-321769/500000, 73247390747/250000000000); (-108133/125000, 51343659893/125000000000); (-15947/20000, 1091936331/3125000000); (-108133/125000, 54721297281/125000000000); (-15947/20000, 11763772657/31250000000); (-177813/250000, 19176245949/50000000000); (-321769/500000, 6377100037/20000000000); (-177813/250000, 19396382793/50000000000); (-321769/500000, 32325773873/100000000000); (-108133/125000, 55544714849/125000000000); (-15947/20000, 189843900831/500000000000); (-108133/125000, 58922352237/125000000000); (-15947/20000, 203354450383/500000000000); (-177813/250000, 194531617711/500000000000); (-321769/500000, 163866791099/500000000000); (-177813/250000, 7643665211/20000000000); (-321769/500000, 160426803663/500000000000); (-108133/125000, 224948017617/500000000000); (-15947/20000, 38856638201/100000000000); (-108133/125000, 232817211293/500000000000); (-15947/20000, 202152384681/500000000000); (-177813/250000, 106614122981/250000000000); (-321769/500000, 180893287397/500000000000); (-177813/250000, 104894129263/250000000000); (-321769/500000, 177453299961/500000000000); (-108133/125000, 60911161467/125000000000); (-15947/20000, 211309687303/500000000000); (-108133/125000, 31439229943/62500000000); (-15947/20000, 219178880979/500000000000)` |
| 56 | 135 | a | 104113/1000000 | 89933/500000 | 104113/1000000 | 17281/100000 | 104113/1000000 | 17281/100000 | `(-1/1, 104793/1000000); (-1/1, 17281/100000)` |
| 57 | 140 | c | 568773/1000000 | 879411/1000000 | 542004/909533 | 879411/1000000 | 297957/500000 | 879411/1000000 | `(438591/500000, -135501/250000); (909533/1000000, -135501/250000)` |
| 58 | 150 | b | 109563/1000000 | 353663/1000000 | 109563/1000000 | 535367022160113/1848779083000000 | 109563/1000000 | 289579/1000000 | `(-13210214397/62500000000, 472325726086929/31250000000000000); (-13210214397/62500000000, 1394054978080167/62500000000000000); (-26966093111/125000000000, 1107235955074227/62500000000000000); (-26966093111/125000000000, 3267973158837621/125000000000000000); (-2707609323/10000000000, 252551131053111/5000000000000000); (-2707609323/10000000000, 745396962348753/10000000000000000); (-5546337249/20000000000, 544169967700293/10000000000000000); (-5546337249/20000000000, 1606101066480339/20000000000000000)` |
| 59 | 757 | u | 5511/15625 | 247077/500000 | 1294/3661 | 247077/500000 | 70691/200000 | 247077/500000 | `(773069/1000000, -7117/25000); (176093/250000, -7117/25000); (40271/50000, -7117/25000); (736723/1000000, -7117/25000)` |
| 60 | 762 | q | 395501/1000000 | 542553/1000000 | 103205167841/247077000000 | 542553/1000000 | 52213/125000 | 542553/1000000 | `(70691/200000, -38352348139/200000000000); (70691/200000, -103386670219/500000000000); (70691/200000, -44001117733/200000000000); (70691/200000, -921461759/4000000000); (247077/500000, -103205167841/500000000000); (247077/500000, -57771883657/250000000000); (247077/500000, -58663545913/250000000000); (247077/500000, -12733981697/50000000000); (70691/200000, -202467158127/1000000000000); (70691/200000, -21747875787/100000000000); (70691/200000, -47216646343/200000000000); (70691/200000, -616107707/2500000000); (247077/500000, -108557876557/500000000000); (247077/500000, -12089647603/50000000000); (247077/500000, -125365913351/500000000000); (247077/500000, -27075727699/100000000000)` |
| 61 | 796 | u | 70691/200000 | 247077/500000 | 172924278307/454766500000 | 247077/500000 | 47531/125000 | 247077/500000 | `(438591/500000, -87749120933/250000000000); (438591/500000, -103768924789/250000000000); (909533/1000000, -70908191269/200000000000); (909533/1000000, -84888773877/200000000000); (438591/500000, -342304084001/1000000000000); (438591/500000, -392101370033/1000000000000); (909533/1000000, -172924278307/500000000000); (909533/1000000, -200734770131/500000000000)` |
| 62 | 0 | a | 104113/1000000 | 17281/100000 | 3875/32077 | 17281/100000 | 120803/1000000 | 17281/100000 | `(486351/1000000, -93/1000); (61267/200000, -93/1000); (96231/125000, -93/1000); (73729/125000, -93/1000)` |
| 63 | 0 | c | 297957/500000 | 879411/1000000 | 11193358203/17281000000 | 879411/1000000 | 323863/500000 | 879411/1000000 | `(120803/1000000, -106235539089/1000000000000); (17281/100000, -11193358203/100000000000); (120803/1000000, -127982011937/1000000000000); (17281/100000, -14304214699/100000000000)` |
| 64 | 7 | b | 109563/1000000 | 289579/1000000 | 3100/26291 | 289579/1000000 | 117911/1000000 | 289579/1000000 | `(756379/1000000, -93/1000); (176093/250000, -93/1000); (78873/100000, -93/1000); (736723/1000000, -93/1000)` |
| 65 | 10 | b | 117911/1000000 | 289579/1000000 | 115960107/739486000 | 289579/1000000 | 156811/1000000 | 289579/1000000 | `(296901/1000000, -9587415799/125000000000); (122447/500000, -871021373/12500000000); (296901/1000000, -1370385441/20000000000); (122447/500000, -115960107/2000000000); (1687/4000, -9587415799/125000000000); (369743/1000000, -871021373/12500000000); (1687/4000, -1370385441/20000000000); (369743/1000000, -115960107/2000000000)` |
| 66 | 34 | f | 76591/200000 | 165883/250000 | 3779202257/7531250000 | 165883/250000 | 250901/500000 | 165883/250000 | `(296901/1000000, -26454415799/125000000000); (122447/500000, -2557721373/12500000000); (296901/1000000, -5423385441/20000000000); (122447/500000, -521260107/2000000000); (1687/4000, -26454415799/125000000000); (369743/1000000, -2557721373/12500000000); (1687/4000, -5423385441/20000000000); (369743/1000000, -521260107/2000000000)` |
| 67 | 34 | q | 52213/125000 | 542553/1000000 | 72947995647/165883000000 | 542553/1000000 | 87951/200000 | 542553/1000000 | `(250901/500000, -136127256699/500000000000); (250901/500000, -14566705673/50000000000); (165883/250000, -72947995647/250000000000); (165883/250000, -7982066869/25000000000); (250901/500000, -20736778691/62500000000); (250901/500000, -2170915357/6250000000); (165883/250000, -175662964123/500000000000); (165883/250000, -18764750921/50000000000)` |
| 68 | 41 | a | 120803/1000000 | 17281/100000 | 120803/1000000 | 19889886857/148829000000 | 120803/1000000 | 133643/1000000 | `(-102031/125000, 1446753321/62500000000); (-102031/125000, 6194311523/125000000000); (-446487/500000, 22612679817/250000000000); (-446487/500000, 59669660571/500000000000)` |
| 69 | 41 | h | 438591/500000 | 909533/1000000 | 133453989687/148829000000 | 909533/1000000 | 896693/1000000 | 909533/1000000 | `(102031/125000, -98931900893/125000000000); (102031/125000, -100241978933/125000000000); (446487/500000, -400361969061/500000000000); (446487/500000, -406094862141/500000000000)` |
| 70 | 41 | j | 102031/125000 | 446487/500000 | 23095/26291 | 446487/500000 | 878437/1000000 | 446487/500000 | `(77589/100000, -13857/20000); (15261/20000, -13857/20000); (78873/100000, -13857/20000)` |
| 71 | 46 | c | 323863/500000 | 879411/1000000 | 12009850891/17281000000 | 879411/1000000 | 347487/500000 | 879411/1000000 | `(104793/1000000, -109432695123/1000000000000); (104793/1000000, -123345852147/1000000000000); (17281/100000, -12009850891/100000000000); (17281/100000, -14304214699/100000000000)` |
| 72 | 46 | e | 104793/1000000 | 17281/100000 | 465/3613 | 17281/100000 | 128701/1000000 | 17281/100000 | `(538163/1000000, -93/1000); (81079/200000, -93/1000); (3613/5000, -93/1000); (73729/125000, -93/1000)` |
| 73 | 66 | f | 250901/500000 | 165883/250000 | 250901/500000 | 163037857899/260609000000 | 250901/500000 | 156401/250000 | `(-260609/500000, 106084857899/500000000000); (-260609/500000, 74301393611/500000000000); (-260609/500000, 163037857899/500000000000); (-260609/500000, 131254393611/500000000000); (-120111/200000, 44922126021/200000000000); (-120111/200000, 34315423269/200000000000); (-120111/200000, 67703326021/200000000000); (-120111/200000, 57096623269/200000000000)` |
| 74 | 66 | u | 47531/125000 | 247077/500000 | 214813259519/500000000000 | 247077/500000 | 214813/500000 | 247077/500000 | `(1/1, -214813259519/500000000000); (1/1, -246596723807/500000000000); (1/1, -247077174937/500000000000); (1/1, -11154425569/20000000000); (1/1, -91399414001/200000000000); (1/1, -102006116753/200000000000); (1/1, -106269396023/200000000000); (1/1, -4675043951/8000000000)` |
| 75 | 69 | b | 156811/1000000 | 289579/1000000 | 156811/1000000 | 1774296729/7082800000 | 156811/1000000 | 62627/250000 | `(-228469/500000, 3499520831/125000000000); (-234889/500000, 3716093111/125000000000); (-228469/500000, 1774296729/20000000000); (-234889/500000, 1826337249/20000000000); (-17707/50000, 3499520831/125000000000); (-18349/50000, 3716093111/125000000000); (-17707/50000, 1774296729/20000000000); (-18349/50000, 1826337249/20000000000)` |
| 76 | 69 | p | 16867/125000 | 4053/20000 | 7527325039/45476650000 | 4053/20000 | 2069/12500 | 4053/20000 | `(896693/1000000, -82326452359/500000000000); (896693/1000000, -25933328063/125000000000); (909533/1000000, -83333178979/500000000000); (909533/1000000, -26335393403/125000000000); (896693/1000000, -7426652377/50000000000); (896693/1000000, -2271436289/12500000000); (909533/1000000, -7527325039/50000000000); (909533/1000000, -2311642823/12500000000)` |
| 77 | 79 | c | 347487/500000 | 879411/1000000 | 347487/500000 | 630533/736723 | 347487/500000 | 427931/500000 | `(-95999/125000, 617693/1000000); (-723883/1000000, 617693/1000000); (-24401/31250, 630533/1000000); (-736723/1000000, 630533/1000000)` |
| 78 | 83 | c | 347487/500000 | 427931/500000 | 347487/500000 | 393530279663/470885000000 | 347487/500000 | 33429/40000 | `(-55471/200000, 200000279663/1000000000000); (-116623/500000, 16125330203/100000000000); (-55471/200000, 99064676613/500000000000); (-116623/500000, 7937058153/50000000000); (-94177/200000, 393530279663/1000000000000); (-53347/125000, 35478330203/100000000000); (-94177/200000, 195829676613/500000000000); (-53347/125000, 17613558153/50000000000)` |
| 79 | 102 | r | 211547/250000 | 1/1 | 5129278277/6050687500 | 1/1 | 423859/500000 | 1/1 | `(871299/1000000, -76319168103/100000000000); (82719/100000, -185264424153/250000000000); (871299/1000000, -42969384603/50000000000); (82719/100000, -103974115653/125000000000); (871299/1000000, -46163504493/62500000000); (82719/100000, -71648208747/100000000000); (871299/1000000, -26278722243/31250000000); (82719/100000, -40666217247/50000000000)` |
| 80 | 103 | f | 250901/500000 | 156401/250000 | 250901/500000 | 142316676613/235442500000 | 250901/500000 | 120893/200000 | `(-55471/200000, 78437279663/1000000000000); (-116623/500000, 3969030203/100000000000); (-55471/200000, 45551676613/500000000000); (-116623/500000, 2585758153/50000000000); (-94177/200000, 271967279663/1000000000000); (-53347/125000, 23322030203/100000000000); (-94177/200000, 142316676613/500000000000); (-53347/125000, 12262258153/50000000000)` |
| 81 | 103 | k | 50757/125000 | 299793/500000 | 20864185631/41516500000 | 299793/500000 | 502551/1000000 | 299793/500000 | `(249099/500000, -52607260227/200000000000); (249099/500000, -5592985887/20000000000); (79107/200000, -62455867593/250000000000); (79107/200000, -6547702533/25000000000); (249099/500000, -62592556893/250000000000); (249099/500000, -6690610833/25000000000); (79107/200000, -237157396809/1000000000000); (79107/200000, -24988324029/100000000000)` |
| 82 | 104 | q | 87951/200000 | 542553/1000000 | 87951/200000 | 6357382613/12500000000 | 87951/200000 | 508591/1000000 | `(-1/1, 1533046763/3125000000); (-1/1, 6223448573/12500000000); (-1/1, 1566530273/3125000000); (-1/1, 6357382613/12500000000); (-1/1, 1155148553/2500000000); (-1/1, 9419962201/20000000000); (-1/1, 18449117/39062500); (-1/1, 9624721681/20000000000)` |

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
| 105 | e | 128701/1000000 | 17281/100000 | `(214813/500000, -51383813409/500000000000); (214813/500000, -47722012329/500000000000); (247077/500000, -80314716361/500000000000); (247077/500000, -77067185041/500000000000); (214813/500000, -91052313409/500000000000); (214813/500000, -87390512329/500000000000); (247077/500000, -119983216361/500000000000); (247077/500000, -116735685041/500000000000)` |

## Stage 89

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR- |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR- |
| Index | 0 |
| Context | 34 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 64 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 145431/250000 | 103767/1000000 | 109531/200000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 379943/1000000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 425453/1000000 | 129019/1000000 | 31819/100000 |
| q | 387853/1000000 | 158493/200000 | 203351/500000 | 326439/500000 |
| u | 34029/100000 | 845747/1000000 | 348563/1000000 | 84603/125000 |
| v | 196767/1000000 | 727327/1000000 | 549653/1000000 | 722959/1000000 |
| r | 155651/250000 | 1/1 | 773069/1000000 | 1/1 |
| w | 508879/1000000 | 1/1 | 22149/40000 | 1/1 |
| j | 247401/500000 | 896233/1000000 | 561993/1000000 | 896233/1000000 |
| k | 4673/12500 | 8033/8963 | 201869/500000 | 55181/62500 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 34 | A_AFP | bitt ["actual-area","AFP",[]] | `1/1 * f * q + -1/1 * a * f + -1/1 * p + 1/1 * a * p + -93/1000` |
| 40 | A_AHR | bitt ["actual-area","AHR",["P","Q"]] | `1/1 * h * r + -1/1 * a * r + -13857/20000` |
| 45 | A_AQR | bitt ["actual-area","AQR",[]] | `-1/1 * u * w + 1/1 * a * u + 1/1 * v * r + -1/1 * a * r + -93/1000` |
| 66 | A_BFQ | bitt ["actual-area","BFQ",[]] | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -93/1000` |
| 69 | A_BHP | bitt ["actual-area","BHP",[]] | `1/1 * b * q + 1/1 * h * p + -1/1 * b * h + -93/1000` |
| 86 | A_CFQ | bitt ["actual-area","CFQ",[]] | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 102 | A_EFR | bitt ["actual-area","EFR",["S"]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1279/1000 + -1/1 * e * r` |
| 103 | A_EFS | bitt ["actual-area","EFS",[]] | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 104 | A_EHP | bitt ["actual-area","EHP",["Q"]] | `-1/1 * q + -1/1 * h * p + 1/1 * h + 1/1 * e * p + -279/1000` |
| 105 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |
| 123 | A_FRS | bitt ["actual-area","FRS",[]] | `-1/1 * r * k + 1/1 * r + 1/1 * f * k + 1/1 * w * j + -1/1 * f * w + -1/1 * j + -93/1000` |
| 129 | A_PQR | bitt ["actual-area","PQR",[]] | `-1/1 * u * w + 1/1 * q * u + 1/1 * p * w + 1/1 * v * r + -1/1 * p * v + -1/1 * q * r + -93/1000` |
| 146 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 40 | r | 155651/250000 | 1/1 | 692850/896233 | 1/1 | 773069/1000000 | 1/1 | `(13857/20000, -13857/20000); (489467/1000000, -13857/20000); (896233/1000000, -13857/20000)` |
| 1 | 45 | v | 196767/1000000 | 727327/1000000 | 4182782031/12500000000 | 727327/1000000 | 167311/500000 | 727327/1000000 | `(773069/1000000, -311074613403/1000000000000); (773069/1000000, -9977362619/25000000000); (773069/1000000, -515841309587/1000000000000); (773069/1000000, -501059839913/1000000000000); (1/1, -4182782031/12500000000); (1/1, -46879636141/100000000000); (1/1, -67423657333/125000000000); (1/1, -570761696563/1000000000000); (773069/1000000, -478198178493/1000000000000); (773069/1000000, -11324361397/20000000000); (773069/1000000, -465602710987/500000000000); (773069/1000000, -9164239523/10000000000); (1/1, -50174612757/100000000000); (1/1, -1271839853/2000000000); (1/1, -954753371051/1000000000000); (1/1, -19722516179/20000000000)` |
| 2 | 86 | u | 34029/100000 | 845747/1000000 | 34029/100000 | 200707875539/250000000000 | 34029/100000 | 50177/62500 | `(-1/1, 92951508839/250000000000); (-1/1, 169136624461/250000000000); (-1/1, 124522759917/250000000000); (-1/1, 200707875539/250000000000); (-1/1, 140604103223/500000000000); (-1/1, 203045674877/500000000000); (-1/1, 277849253469/500000000000); (-1/1, 340290825123/500000000000)` |
| 3 | 104 | q | 387853/1000000 | 158493/200000 | 387853/1000000 | 8256569/12500000 | 387853/1000000 | 330263/500000 | `(-1/1, 1753045701/4000000000); (-1/1, 96087398381/200000000000); (-1/1, 123669990669/200000000000); (-1/1, 8256569/12500000); (-1/1, 4456837779/20000000000); (-1/1, 379507723499/1000000000000); (-1/1, 339694981451/1000000000000); (-1/1, 31022551/62500000)` |
| 4 | 129 | v | 167311/500000 | 727327/1000000 | 26370750263/57454700000 | 727327/1000000 | 458983/1000000 | 727327/1000000 | `(329267/500000, -93934153033/250000000000); (10863/31250, -21751697121/100000000000); (329267/500000, -493743760399/1000000000000); (10863/31250, -335524119477/1000000000000); (329267/500000, -6745565941/15625000000); (10863/31250, -136748289651/500000000000); (329267/500000, -16944026149/40000000000); (10863/31250, -265381012803/1000000000000); (177093/200000, -18550099251/40000000000); (574547/1000000, -305532840353/1000000000000); (177093/200000, -128727517221/200000000000); (574547/1000000, -485417945183/1000000000000); (177093/200000, -519732089367/1000000000000); (574547/1000000, -72302489689/200000000000); (177093/200000, -573494479431/1000000000000); (574547/1000000, -415274838509/1000000000000); (329267/500000, -486609633487/1000000000000); (10863/31250, -175691633487/1000000000000); (329267/500000, -302308390877/500000000000); (10863/31250, -146849390877/500000000000); (329267/500000, -769753331161/1000000000000); (10863/31250, -458835331161/1000000000000); (329267/500000, -380818882331/500000000000); (10863/31250, -225359882331/500000000000); (177093/200000, -57462550263/100000000000); (574547/1000000, -26370750263/100000000000); (177093/200000, -37725530373/50000000000); (574547/1000000, -22179630373/50000000000); (177093/200000, -53610575019/62500000000); (574547/1000000, -34178200019/62500000000); (177093/200000, -28485362199/31250000000); (574547/1000000, -18769174699/31250000000)` |
| 5 | 34 | f | 155651/500000 | 344349/500000 | 5590001333/15907400000 | 344349/500000 | 21963/62500 | 344349/500000 | `(142043/500000, -39130009331/200000000000); (80703/1000000, -689422299/4000000000); (142043/500000, -474305018549/1000000000000); (80703/1000000, -7755502221/20000000000); (556759/1000000, -39130009331/200000000000); (11043/31250, -689422299/4000000000); (556759/1000000, -474305018549/1000000000000); (11043/31250, -7755502221/20000000000)` |
| 6 | 34 | p | 22907/200000 | 425453/1000000 | 22907/200000 | 145219404891/448116500000 | 22907/200000 | 324067/1000000 | `(-896233/1000000, 213440409/31250000000); (-13857/20000, -4040020011/62500000000); (-896233/1000000, 25662365007/250000000000); (-13857/20000, -18710002653/500000000000); (-896233/1000000, 6415597917/62500000000); (-13857/20000, 7612098/244140625); (-896233/1000000, 145219404891/500000000000); (-13857/20000, 2349521007/15625000000)` |
| 7 | 69 | p | 22907/200000 | 324067/1000000 | 64113099279/500000000000 | 324067/1000000 | 64113/500000 | 324067/1000000 | `(796617/1000000, -33854053497/250000000000); (796617/1000000, -20674239321/62500000000); (1/1, -156520657749/1000000000000); (1/1, -112275150357/250000000000); (796617/1000000, -107121754797/1000000000000); (796617/1000000, -43041850221/250000000000); (1/1, -64113099279/500000000000); (1/1, -36310021647/125000000000)` |
| 8 | 86 | u | 34029/100000 | 50177/62500 | 34029/100000 | 382058837067/500000000000 | 34029/100000 | 382059/500000 | `(-1/1, 90380919033/250000000000); (-1/1, 38081706129/62500000000); (-1/1, 258167026101/500000000000); (-1/1, 382058837067/500000000000); (-1/1, 77594595777/250000000000); (-1/1, 27203845401/62500000000); (-1/1, 277849253469/500000000000); (-1/1, 340290825123/500000000000)` |
| 9 | 102 | w | 508879/1000000 | 1/1 | 21643902879/40537000000 | 1/1 | 533929/1000000 | 1/1 | `(40537/62500, -549685496987/1000000000000); (40537/62500, -44059687/62500000); (155651/500000, -514685925557/1000000000000); (155651/500000, -1065926/1953125); (40537/62500, -21643902879/62500000000); (40537/62500, -9142741/15625000); (155651/500000, -155651437317/500000000000); (155651/500000, -26620909/62500000)` |
| 10 | 103 | j | 247401/500000 | 896233/1000000 | 266224229191977/502058523687500 | 896233/1000000 | 106053/200000 | 896233/1000000 | `(896233/1000000, -50879113299/62500000000); (66/125, -534895149/781250000); (896233/1000000, -452579367477/500000000000); (66/125, -4072233777/6250000000); (896233/1000000, -266224229191977/560187500000000); (66/125, -48433988583/140046875000); (896233/1000000, -3327668539172271/4481500000000000); (66/125, -34236783999/70023437500)` |
| 11 | 103 | k | 4673/12500 | 8033/8963 | 10132074231/25943680000 | 8033/8963 | 390541/1000000 | 8033/8963 | `(40537/62500, -581294454319/1000000000000); (40537/62500, -40447219/62500000); (155651/500000, -546294882889/1000000000000); (155651/500000, -7624291/15625000); (40537/62500, -10132074231/40000000000); (40537/62500, -1134811/2500000); (155651/500000, -43660456869/200000000000); (155651/500000, -921011/3125000)` |
| 12 | 104 | q | 387853/1000000 | 330263/500000 | 387853/1000000 | 20415521/31250000 | 387853/1000000 | 653297/1000000 | `(-1/1, 4287756159/10000000000); (-1/1, 237996330279/500000000000); (-1/1, 303039813671/500000000000); (-1/1, 20415521/31250000); (-1/1, 5861743581/20000000000); (-1/1, 412419342661/1000000000000); (-1/1, 430560460389/1000000000000); (-1/1, 34368289/62500000)` |
| 13 | 129 | v | 458983/1000000 | 727327/1000000 | 119177477599/225311000000 | 727327/1000000 | 264473/500000 | 727327/1000000 | `(644843/1000000, -374081752943/1000000000000); (224501/500000, -134758281827/500000000000); (644843/1000000, -488960341819/1000000000000); (224501/500000, -38439515253/100000000000); (644843/1000000, -435992851871/1000000000000); (224501/500000, -165713831291/500000000000); (644843/1000000, -87673768223/200000000000); (224501/500000, -166901825913/500000000000); (435887/500000, -231048811043/500000000000); (675933/1000000, -357532432797/1000000000000); (435887/500000, -318606841663/500000000000); (675933/1000000, -532648494037/1000000000000); (435887/500000, -262004360507/500000000000); (675933/1000000, -16777741269/40000000000); (435887/500000, -293311091311/500000000000); (675933/1000000, -482056993333/1000000000000); (644843/1000000, -472918633487/1000000000000); (224501/500000, -277077633487/1000000000000); (644843/1000000, -587797222363/1000000000000); (224501/500000, -391956222363/1000000000000); (644843/1000000, -732363672203/1000000000000); (224501/500000, -536522672203/1000000000000); (644843/1000000, -734739661447/1000000000000); (224501/500000, -538898661447/1000000000000); (435887/500000, -56093450263/100000000000); (675933/1000000, -36509350263/100000000000); (435887/500000, -73605056387/100000000000); (675933/1000000, -54020956387/100000000000); (435887/500000, -410189770673/500000000000); (675933/1000000, -312269270673/500000000000); (435887/500000, -441496501477/500000000000); (675933/1000000, -343576001477/500000000000)` |
| 14 | 146 | b | 103767/1000000 | 145431/250000 | 103767/1000000 | 231067/417067 | 103767/1000000 | 554029/1000000 | `(-97573505721/500000000000, 619714598701221/125000000000000000); (-97573505721/500000000000, 4573505721/500000000000); (-110613/500000, 2386579113/125000000000); (-110613/500000, 17613/500000); (-351157281339/1000000000000, 22378976778715839/250000000000000000); (-351157281339/1000000000000, 165157281339/1000000000000); (-417067/1000000, 31309809567/250000000000); (-417067/1000000, 231067/1000000)` |
| 15 | 34 | f | 21963/62500 | 344349/500000 | 103960186329/274765000000 | 344349/500000 | 9459/25000 | 344349/500000 | `(142043/500000, -103960186329/500000000000); (80703/1000000, -1818413841/10000000000); (142043/500000, -383439539611/1000000000000); (80703/1000000, -6350596419/20000000000); (54953/100000, -103960186329/500000000000); (346147/1000000, -1818413841/10000000000); (54953/100000, -383439539611/1000000000000); (346147/1000000, -6350596419/20000000000)` |
| 16 | 34 | p | 64113/500000 | 324067/1000000 | 64113/500000 | 14273010597/44811650000 | 64113/500000 | 19907/62500 | `(-896233/1000000, 181084737/12500000000); (-13857/20000, -1561630323/25000000000); (-896233/1000000, 25662365007/250000000000); (-13857/20000, -18710002653/500000000000); (-896233/1000000, 287300427/2500000000); (-13857/20000, 949204473/25000000000); (-896233/1000000, 14273010597/50000000000); (-13857/20000, 72695373303/500000000000)` |
| 17 | 34 | q | 387853/1000000 | 653297/1000000 | 11641020751/28695750000 | 653297/1000000 | 40567/100000 | 653297/1000000 | `(9459/25000, -123590827389/500000000000); (9459/25000, -2980546581/10000000000); (344349/500000, -34923062253/125000000000); (344349/500000, -983437437/2500000000); (9459/25000, -52215280927/125000000000); (9459/25000, -1074735783/2500000000); (344349/500000, -224962545331/500000000000); (344349/500000, -5252146299/10000000000)` |
| 18 | 66 | u | 34029/100000 | 382059/500000 | 171005934489/500000000000 | 382059/500000 | 342011/1000000 | 382059/500000 | `(1/1, -171005934489/500000000000); (1/1, -277054792563/500000000000); (1/1, -253081956363/500000000000); (1/1, -359130814437/500000000000); (1/1, -396485902911/1000000000000); (1/1, -519260193237/1000000000000); (1/1, -622203109437/1000000000000); (1/1, -744977399763/1000000000000)` |
| 19 | 69 | p | 64113/500000 | 19907/62500 | 128976330201/1000000000000 | 19907/62500 | 8061/62500 | 19907/62500 | `(796617/1000000, -133567397349/1000000000000); (796617/1000000, -309595975463/1000000000000); (1/1, -15467184111/100000000000); (1/1, -42227605557/100000000000); (796617/1000000, -2696797161/25000000000); (796617/1000000, -4310085907/25000000000); (1/1, -128976330201/1000000000000); (1/1, -285083516387/1000000000000)` |
| 20 | 86 | u | 342011/1000000 | 382059/500000 | 342011/1000000 | 185584513077/250000000000 | 342011/1000000 | 742339/1000000 | `(-1/1, 45305645097/125000000000); (-1/1, 7227325107/12500000000); (-1/1, 131649301131/250000000000); (-1/1, 185584513077/250000000000); (-1/1, 82495325103/250000000000); (-1/1, 11371611093/25000000000); (-1/1, 277849253469/500000000000); (-1/1, 340290825123/500000000000)` |
| 21 | 102 | w | 533929/1000000 | 1/1 | 8587642947/15541000000 | 1/1 | 552579/1000000 | 1/1 | `(15541/25000, -546888768803/1000000000000); (15541/25000, -43264603/62500000); (155651/500000, -514685925557/1000000000000); (155651/500000, -1065926/1953125); (15541/25000, -8587642947/25000000000); (15541/25000, -894397/1562500); (155651/500000, -155651437317/500000000000); (155651/500000, -26620909/62500000)` |
| 22 | 103 | j | 106053/200000 | 896233/1000000 | 111275650208961/200823409475000 | 896233/1000000 | 554097/1000000 | 896233/1000000 | `(896233/1000000, -10137035133/12500000000); (66/125, -16790954319/25000000000); (896233/1000000, -224989920063/250000000000); (66/125, -323179174809/500000000000); (896233/1000000, -111275650208961/224075000000000); (66/125, -10007060247/28009375000); (896233/1000000, -3327668539172271/4481500000000000); (66/125, -34236783999/70023437500)` |
| 23 | 103 | k | 390541/1000000 | 8033/8963 | 250505127591/621640000000 | 8033/8963 | 201487/500000 | 8033/8963 | `(15541/25000, -557138701279/1000000000000); (15541/25000, -38865679/62500000); (155651/500000, -524935858033/1000000000000); (155651/500000, -7427677/15625000); (15541/25000, -250505127591/1000000000000); (15541/25000, -27575191/62500000); (155651/500000, -43660456869/200000000000); (155651/500000, -921011/3125000)` |
| 24 | 104 | q | 40567/100000 | 653297/1000000 | 40567/100000 | 10201573/15625000 | 40567/100000 | 652901/1000000 | `(-1/1, 535319973/1250000000); (-1/1, 29734324863/62500000000); (-1/1, 37837965787/62500000000); (-1/1, 10201573/15625000); (-1/1, 371169951/1250000000); (-1/1, 25888911881/62500000000); (-1/1, 27221189669/62500000000); (-1/1, 8637901/15625000)` |
| 25 | 105 | u | 342011/1000000 | 742339/1000000 | 342011/1000000 | 63009/88000 | 342011/1000000 | 179003/250000 | `(-13857/20000, 174671/1000000); (-324617/1000000, 174671/1000000); (-896233/1000000, 189027/500000); (-66/125, 189027/500000); (-13857/20000, -2371/100000); (-324617/1000000, -2371/100000); (-896233/1000000, 179673/1000000); (-66/125, 179673/1000000)` |
| 26 | 105 | v | 264473/500000 | 727327/1000000 | 264473/500000 | 45401137/62500000 | 264473/500000 | 726419/1000000 | `(-1/1, 9333093573/20000000000); (-1/1, 592594415213/1000000000000); (-1/1, 600478455437/1000000000000); (-1/1, 45401137/62500000); (-1/1, 1037640429/5000000000); (-1/1, 117796833149/250000000000); (-1/1, 66321604301/250000000000); (-1/1, 1033097/1953125)` |
| 27 | 123 | k | 201487/500000 | 8033/8963 | 201487/500000 | 278525314021/311302000000 | 201487/500000 | 894711/1000000 | `(-394709/1000000, 223080575723/1000000000000); (-84371/1000000, 51594314021/1000000000000); (-15541/25000, 450011575723/1000000000000); (-155651/500000, 278525314021/1000000000000); (-394709/1000000, 301709/1000000); (-84371/1000000, -8629/1000000); (-15541/25000, 1652/3125); (-155651/500000, 109151/500000); (-394709/1000000, 70001744467/1000000000000); (-84371/1000000, -20296903447/200000000000); (-15541/25000, 296932744467/1000000000000); (-155651/500000, 25089296553/200000000000)` |
| 28 | 129 | v | 264473/500000 | 726419/1000000 | 372911451551/681488000000 | 726419/1000000 | 547201/1000000 | 726419/1000000 | `(644093/1000000, -3084687729/8000000000); (454557/1000000, -280852352781/1000000000000); (644093/1000000, -492156866523/1000000000000); (454557/1000000, -387423253179/1000000000000); (644093/1000000, -220265039517/500000000000); (454557/1000000, -33579646569/100000000000); (644093/1000000, -454636338201/1000000000000); (454557/1000000, -349902724857/1000000000000); (54439/62500, -95529012979/200000000000); (42593/62500, -372911451551/1000000000000); (54439/62500, -320160171677/500000000000); (42593/62500, -53558673001/100000000000); (54439/62500, -133147294451/250000000000); (42593/62500, -21392778223/50000000000); (54439/62500, -75349976879/125000000000); (42593/62500, -62258275211/125000000000); (644093/1000000, -24045114943/50000000000); (454557/1000000, -14568314943/50000000000); (644093/1000000, -293736599629/500000000000); (454557/1000000, -198968599629/500000000000); (644093/1000000, -70318231319/100000000000); (454557/1000000, -51364631319/100000000000); (644093/1000000, -717288572357/1000000000000); (454557/1000000, -527752572357/1000000000000); (54439/62500, -57296139763/100000000000); (42593/62500, -38342539763/100000000000); (54439/62500, -735636676089/1000000000000); (42593/62500, -546100676089/1000000000000); (54439/62500, -19881035299/25000000000); (42593/62500, -15142635299/25000000000); (54439/62500, -216363012297/250000000000); (42593/62500, -168979012297/250000000000)` |
| 29 | 146 | b | 103767/1000000 | 554029/1000000 | 103767/1000000 | 28189/51439 | 103767/1000000 | 548009/1000000 | `(-12234029637/62500000000, 82524124843137/15625000000000000); (-12234029637/62500000000, 609029637/62500000000); (-27747/125000, 609347997/31250000000); (-27747/125000, 4497/125000); (-21670754619/62500000000, 1361209796629119/15625000000000000); (-21670754619/62500000000, 10045754619/62500000000); (-51439/125000, 3819637689/31250000000); (-51439/125000, 28189/125000)` |
| 30 | 34 | f | 9459/25000 | 344349/500000 | 13037034213/34320875000 | 344349/500000 | 379857/1000000 | 344349/500000 | `(301903/1000000, -13037034213/62500000000); (2463/25000, -227951277/1250000000); (301903/1000000, -23653810331/62500000000); (2463/25000, -392101299/1250000000); (274567/500000, -13037034213/62500000000); (345751/1000000, -227951277/1250000000); (274567/500000, -23653810331/62500000000); (345751/1000000, -392101299/1250000000)` |
| 31 | 34 | p | 8061/62500 | 19907/62500 | 8061/62500 | 71296871883/224058250000 | 8061/62500 | 318207/1000000 | `(-896233/1000000, 21679967871/1000000000000); (-13857/20000, -1389412209/25000000000); (-896233/1000000, 57459996147/500000000000); (-13857/20000, -314368413/12500000000); (-896233/1000000, 57796196919/500000000000); (-13857/20000, 38335937607/1000000000000); (-896233/1000000, 71296871883/250000000000); (-13857/20000, 72559011099/500000000000)` |
| 32 | 34 | q | 40567/100000 | 652901/1000000 | 15558704043/38261000000 | 652901/1000000 | 203323/500000 | 652901/1000000 | `(379857/1000000, -248009168727/1000000000000); (379857/1000000, -5980681983/20000000000); (344349/500000, -140028336387/500000000000); (344349/500000, -3938946123/10000000000); (379857/1000000, -8352084711/20000000000); (379857/1000000, -172057119/400000000); (344349/500000, -449651739597/1000000000000); (344349/500000, -10500066213/20000000000)` |
| 33 | 66 | u | 342011/1000000 | 179003/250000 | 34784372409/100000000000 | 179003/250000 | 347843/1000000 | 179003/250000 | `(1/1, -34784372409/100000000000); (1/1, -68624507181/125000000000); (1/1, -516841828131/1000000000000); (1/1, -717994161489/1000000000000); (1/1, -39732402171/100000000000); (1/1, -64857524039/125000000000); (1/1, -621671992089/1000000000000); (1/1, -743208162691/1000000000000)` |
| 34 | 69 | p | 8061/62500 | 318207/1000000 | 129017421933/1000000000000 | 318207/1000000 | 129017/1000000 | 318207/1000000 | `(796617/1000000, -133466120757/1000000000000); (796617/1000000, -306707617739/1000000000000); (1/1, -77285282259/500000000000); (1/1, -209081666093/500000000000); (796617/1000000, -26978244543/250000000000); (796617/1000000, -42939415361/250000000000); (1/1, -129017421933/1000000000000); (1/1, -283213375891/1000000000000)` |
| 35 | 102 | w | 552579/1000000 | 1/1 | 343350378681/620143000000 | 1/1 | 553663/1000000 | 1/1 | `(620143/1000000, -136683357401/250000000000); (620143/1000000, -86440883/125000000); (155651/500000, -514685925557/1000000000000); (155651/500000, -1065926/1953125); (620143/1000000, -343350378681/1000000000000); (620143/1000000, -71463437/125000000); (155651/500000, -155651437317/500000000000); (155651/500000, -26620909/62500000)` |
| 36 | 103 | j | 554097/1000000 | 896233/1000000 | 15585456719/28007281250 | 896233/1000000 | 278239/500000 | 896233/1000000 | `(896233/1000000, -803681873399/1000000000000); (66/125, -331902995359/500000000000); (896233/1000000, -448044631243/500000000000); (66/125, -160621982963/250000000000); (896233/1000000, -15585456719/31250000000); (66/125, -358858732327/1000000000000); (896233/1000000, -5804769929/7812500000); (66/125, -244704610139/500000000000)` |
| 37 | 103 | k | 201487/500000 | 894711/1000000 | 31293723549/77517875000 | 894711/1000000 | 25231/62500 | 894711/1000000 | `(620143/1000000, -554849431307/1000000000000); (620143/1000000, -77485889/125000000); (155651/500000, -26140096363/50000000000); (155651/500000, -5926427/12500000); (620143/1000000, -31293723549/125000000000); (620143/1000000, -55062059/125000000); (155651/500000, -43660456869/200000000000); (155651/500000, -921011/3125000)` |
| 38 | 104 | q | 203323/500000 | 652901/1000000 | 203323/500000 | 40804939/62500000 | 203323/500000 | 8161/12500 | `(-1/1, 8564551431/20000000000); (-1/1, 475735888511/1000000000000); (-1/1, 605370707039/1000000000000); (-1/1, 40804939/62500000); (-1/1, 5942945601/20000000000); (-1/1, 414321598281/1000000000000); (-1/1, 435812385769/1000000000000); (-1/1, 34561669/62500000)` |
| 39 | 105 | u | 347843/1000000 | 179003/250000 | 347843/1000000 | 10903/16000 | 347843/1000000 | 340719/500000 | `(-13857/20000, 2444/15625); (-324617/1000000, 2444/15625); (-896233/1000000, 359799/1000000); (-66/125, 359799/1000000); (-13857/20000, -11401/500000); (-324617/1000000, -11401/500000); (-896233/1000000, 180581/1000000); (-66/125, 180581/1000000)` |
| 40 | 105 | v | 547201/1000000 | 726419/1000000 | 547201/1000000 | 45208681/62500000 | 547201/1000000 | 723339/1000000 | `(-1/1, 9252279549/20000000000); (-1/1, 590701248869/1000000000000); (-1/1, 595251624581/1000000000000); (-1/1, 45208681/62500000); (-1/1, 2314826817/10000000000); (-1/1, 241205320377/500000000000); (-1/1, 148136388473/500000000000); (-1/1, 17100023/31250000)` |
| 41 | 123 | k | 25231/62500 | 894711/1000000 | 25231/62500 | 13865833907/15565100000 | 25231/62500 | 890829/1000000 | `(-98303/250000, 221379512723/1000000000000); (-84371/1000000, 2519283907/50000000000); (-620143/1000000, 448310512723/1000000000000); (-155651/500000, 13865833907/50000000000); (-98303/250000, 75053/250000); (-84371/1000000, -8629/1000000); (-620143/1000000, 527143/1000000); (-155651/500000, 109151/500000); (-98303/250000, 8716785661/125000000000); (-84371/1000000, -20251909859/200000000000); (-620143/1000000, 37083160661/125000000000); (-155651/500000, 25134290141/200000000000)` |
| 42 | 129 | v | 547201/1000000 | 723339/1000000 | 37460539209/68179300000 | 723339/1000000 | 549441/1000000 | 723339/1000000 | `(161013/250000, -193536155817/500000000000); (227431/500000, -35290601083/125000000000); (161013/250000, -245888705259/500000000000); (227431/500000, -96757476887/250000000000); (161013/250000, -436116447749/1000000000000); (227431/500000, -331368944779/1000000000000); (161013/250000, -458679115403/1000000000000); (227431/500000, -353931612433/1000000000000); (870983/1000000, -23967644753/50000000000); (681793/1000000, -37460539209/100000000000); (870983/1000000, -319968060899/500000000000); (681793/1000000, -133797154707/250000000000); (870983/1000000, -21135881247/40000000000); (681793/1000000, -84729905641/200000000000); (870983/1000000, -606837826683/1000000000000); (681793/1000000, -502090323713/1000000000000); (161013/250000, -121185612999/250000000000); (227431/500000, -73888112999/250000000000); (161013/250000, -3684047193/6250000000); (227431/500000, -2501609693/6250000000); (161013/250000, -341341189813/500000000000); (227431/500000, -246746189813/500000000000); (161013/250000, -8815563091/12500000000); (227431/500000, -6450688091/12500000000); (870983/1000000, -288511517711/500000000000); (681793/1000000, -193916517711/500000000000); (870983/1000000, -9220078277/12500000000); (681793/1000000, -6855203277/12500000000); (870983/1000000, -193740740763/250000000000); (681793/1000000, -146443240763/250000000000); (870983/1000000, -5333773491/6250000000); (681793/1000000, -4151335991/6250000000)` |
| 43 | 146 | b | 103767/1000000 | 548009/1000000 | 103767/1000000 | 75069/137069 | 103767/1000000 | 273837/500000 | `(-195777135489/1000000000000, 1324811635894989/250000000000000000); (-195777135489/1000000000000, 9777135489/1000000000000); (-222017/1000000, 4880339517/250000000000); (-222017/1000000, 36017/1000000); (-346489105719/1000000000000, 21746434314030219/250000000000000000); (-346489105719/1000000000000, 160489105719/1000000000000); (-411207/1000000, 30515773707/250000000000); (-411207/1000000, 225207/1000000)` |
| 44 | 34 | f | 379857/1000000 | 344349/500000 | 208629292961/549113000000 | 344349/500000 | 189969/500000 | 344349/500000 | `(302879/1000000, -208629292961/1000000000000); (12437/125000, -3647788569/20000000000); (302879/1000000, -378187614231/1000000000000); (12437/125000, -6269394399/20000000000); (549113/1000000, -208629292961/1000000000000); (34573/100000, -3647788569/20000000000); (549113/1000000, -378187614231/1000000000000); (34573/100000, -6269394399/20000000000)` |
| 45 | 34 | p | 129017/1000000 | 318207/1000000 | 129017/1000000 | 142586512437/448116500000 | 129017/1000000 | 318191/1000000 | `(-896233/1000000, 11037620751/500000000000); (-13857/20000, -3449855547/62500000000); (-896233/1000000, 57796080771/500000000000); (-13857/20000, -1529831487/62500000000); (-896233/1000000, 57814447497/500000000000); (-13857/20000, 1917798237/50000000000); (-896233/1000000, 142586512437/500000000000); (-13857/20000, 7255177977/50000000000)` |
| 46 | 34 | q | 203323/500000 | 8161/12500 | 280093418327/688698000000 | 8161/12500 | 406699/1000000 | 8161/12500 | `(189969/500000, -248054319407/1000000000000); (189969/500000, -5981747703/20000000000); (344349/500000, -280093418327/1000000000000); (344349/500000, -7878460383/20000000000); (189969/500000, -417598300949/1000000000000); (189969/500000, -8603131821/20000000000); (344349/500000, -449637399869/1000000000000); (344349/500000, -10499844501/20000000000)` |
| 47 | 66 | u | 347843/1000000 | 340719/500000 | 348506670411/1000000000000 | 340719/500000 | 174253/500000 | 340719/500000 | `(1/1, -348506670411/1000000000000); (1/1, -68564120553/125000000000); (1/1, -518152073571/1000000000000); (1/1, -22442448987/31250000000); (1/1, -396532254969/1000000000000); (1/1, -64918001187/125000000000); (1/1, -619870404609/1000000000000); (1/1, -23208817473/31250000000)` |
| 48 | 69 | p | 129017/1000000 | 318191/1000000 | 1612745013/12500000000 | 318191/1000000 | 129019/1000000 | 318191/1000000 | `(796617/1000000, -66730310553/500000000000); (796617/1000000, -76636987683/250000000000); (1/1, -154565064867/1000000000000); (1/1, -208967765937/500000000000); (796617/1000000, -107915157279/1000000000000); (796617/1000000, -85860508869/500000000000); (1/1, -1612745013/12500000000); (1/1, -1769428743/6250000000)` |
| 49 | 102 | w | 553663/1000000 | 1/1 | 5537773767/10001000000 | 1/1 | 276861/500000 | 1/1 | `(310031/500000, -546725024477/1000000000000); (310031/500000, -10804513/15625000); (155651/500000, -514685925557/1000000000000); (155651/500000, -1065926/1953125); (310031/500000, -171670986777/500000000000); (310031/500000, -35729329/62500000); (155651/500000, -155651437317/500000000000); (155651/500000, -26620909/62500000)` |
| 50 | 103 | j | 278239/500000 | 896233/1000000 | 125301440539/224058250000 | 896233/1000000 | 139809/250000 | 896233/1000000 | `(896233/1000000, -401629212201/500000000000); (66/125, -20729772339/31250000000); (896233/1000000, -447932251221/500000000000); (66/125, -20070724119/31250000000); (896233/1000000, -125301440539/250000000000); (66/125, -180650026301/500000000000); (896233/1000000, -186054756319/250000000000); (66/125, -245308847321/500000000000)` |
| 51 | 103 | k | 25231/62500 | 890829/1000000 | 50068276653/124012400000 | 890829/1000000 | 50467/125000 | 890829/1000000 | `(310031/500000, -276184607783/500000000000); (310031/500000, -38649541/62500000); (155651/500000, -260165058323/500000000000); (155651/500000, -29541121/62500000); (310031/500000, -50068276653/200000000000); (310031/500000, -172054/390625); (155651/500000, -43660456869/200000000000); (155651/500000, -921011/3125000)` |
| 52 | 104 | q | 406699/1000000 | 8161/12500 | 406699/1000000 | 40804873/62500000 | 406699/1000000 | 326439/500000 | `(-1/1, 8564523717/20000000000); (-1/1, 475735239277/1000000000000); (-1/1, 605368914573/1000000000000); (-1/1, 40804873/62500000); (-1/1, 5943167313/20000000000); (-1/1, 414326792153/1000000000000); (-1/1, 435826725497/1000000000000); (-1/1, 34562197/62500000)` |
| 53 | 105 | u | 174253/500000 | 340719/500000 | 174253/500000 | 357559/528000 | 174253/500000 | 169299/250000 | `(-13857/20000, 2409/15625); (-324617/1000000, 2409/15625); (-896233/1000000, 357559/1000000); (-66/125, 357559/1000000); (-13857/20000, -9861/500000); (-324617/1000000, -9861/500000); (-896233/1000000, 183661/1000000); (-66/125, 183661/1000000)` |
| 54 | 105 | v | 549441/1000000 | 723339/1000000 | 549441/1000000 | 22593401/31250000 | 549441/1000000 | 722989/1000000 | `(-1/1, 4621546179/10000000000); (-1/1, 295243013899/500000000000); (-1/1, 297328711051/500000000000); (-1/1, 22593401/31250000); (-1/1, 1172108757/5000000000); (-1/1, 120946916517/250000000000); (-1/1, 75018649333/250000000000); (-1/1, 1073126/1953125)` |
| 55 | 123 | k | 50467/125000 | 890829/1000000 | 50467/125000 | 69019510609/77825500000 | 50467/125000 | 17737/20000 | `(-393131/1000000, 55028561789/250000000000); (-84371/1000000, 12286760609/250000000000); (-310031/500000, 111761311789/250000000000); (-155651/500000, 69019510609/250000000000); (-393131/1000000, 300131/1000000); (-84371/1000000, -8629/1000000); (-310031/500000, 263531/500000); (-155651/500000, 109151/500000); (-393131/1000000, 6971989999/100000000000); (-84371/1000000, -10124730473/100000000000); (-310031/500000, 29665089999/100000000000); (-155651/500000, 12568369527/100000000000)` |
| 56 | 129 | v | 549441/1000000 | 722989/1000000 | 11710876273/21306531250 | 722989/1000000 | 549637/1000000 | 722989/1000000 | `(12881/20000, -387204128151/1000000000000); (227439/500000, -282455429967/1000000000000); (12881/20000, -30732663933/62500000000); (227439/500000, -48371740593/125000000000); (12881/20000, -435529118021/1000000000000); (227439/500000, -330780419837/1000000000000); (12881/20000, -57391379661/125000000000); (227439/500000, -11074448097/31250000000); (870981/1000000, -11987418473/25000000000); (681809/1000000, -11710876273/31250000000); (870981/1000000, -319940440173/500000000000); (681809/1000000, -267566091081/500000000000); (870981/1000000, -52782172879/100000000000); (681809/1000000, -211536515303/500000000000); (870981/1000000, -303644647353/500000000000); (681809/1000000, -251270298261/500000000000); (12881/20000, -485156347537/1000000000000); (227439/500000, -295984347537/1000000000000); (12881/20000, -294837421157/500000000000); (227439/500000, -200251421157/500000000000); (12881/20000, -680168453227/1000000000000); (227439/500000, -490996453227/1000000000000); (12881/20000, -351885186247/500000000000); (227439/500000, -257299186247/500000000000); (870981/1000000, -288724479153/500000000000); (681809/1000000, -194138479153/500000000000); (870981/1000000, -184458274933/250000000000); (681809/1000000, -137165274933/250000000000); (870981/1000000, -193115265999/250000000000); (681809/1000000, -145822265999/250000000000); (870981/1000000, -106491078739/125000000000); (681809/1000000, -82844578739/125000000000)` |
| 57 | 146 | b | 103767/1000000 | 273837/500000 | 103767/1000000 | 225191/411191 | 103767/1000000 | 68457/125000 | `(-195778728723/1000000000000, 1325027520695223/250000000000000000); (-195778728723/1000000000000, 9778728723/1000000000000); (-222019/1000000, 4880610519/250000000000); (-222019/1000000, 36019/1000000); (-346476359847/1000000000000, 21744707235628347/250000000000000000); (-346476359847/1000000000000, 160476359847/1000000000000); (-411191/1000000, 30513605691/250000000000); (-411191/1000000, 225191/1000000)` |
| 58 | 34 | f | 189969/500000 | 344349/500000 | 208631085427/549111000000 | 344349/500000 | 379943/1000000 | 344349/500000 | `(75733/250000, -208631085427/1000000000000); (99549/1000000, -3647816283/20000000000); (75733/250000, -378173274503/1000000000000); (99549/1000000, -6269172687/20000000000); (549111/1000000, -208631085427/1000000000000); (5402/15625, -3647816283/20000000000); (549111/1000000, -378173274503/1000000000000); (5402/15625, -6269172687/20000000000)` |
| 59 | 34 | p | 129019/1000000 | 318191/1000000 | 129019/1000000 | 142585823739/448116500000 | 129019/1000000 | 31819/100000 | `(-896233/1000000, 5524223219/250000000000); (-13857/20000, -55177054293/1000000000000); (-896233/1000000, 14453582817/125000000000); (-13857/20000, -12220401399/500000000000); (-896233/1000000, 115630880673/1000000000000); (-13857/20000, 299663543/7812500000); (-896233/1000000, 142585823739/500000000000); (-13857/20000, 566805399/3906250000)` |
| 60 | 34 | q | 406699/1000000 | 326439/500000 | 280095210793/688698000000 | 326439/500000 | 203351/500000 | 326439/500000 | `(379943/1000000, -62014157677/250000000000); (379943/1000000, -1495451533/5000000000); (344349/500000, -280095210793/1000000000000); (344349/500000, -7878488097/20000000000); (379943/1000000, -417597923551/1000000000000); (379943/1000000, -8603148679/20000000000); (344349/500000, -112409125909/250000000000); (344349/500000, -2624957661/5000000000)` |
| 61 | 66 | u | 174253/500000 | 169299/250000 | 21785221757/62500000000 | 169299/250000 | 348563/1000000 | 169299/250000 | `(1/1, -21785221757/62500000000); (1/1, -548474729819/1000000000000); (1/1, -518266720047/1000000000000); (1/1, -359088950877/500000000000); (1/1, -24777450629/62500000000); (1/1, -519401345843/1000000000000); (1/1, -619665678759/1000000000000); (1/1, -371313907269/500000000000)` |
| 62 | 102 | w | 276861/500000 | 1/1 | 343341454719/620057000000 | 1/1 | 22149/40000 | 1/1 | `(620057/1000000, -273362252821/500000000000); (620057/1000000, -86435809/125000000); (155651/500000, -514685925557/1000000000000); (155651/500000, -1065926/1953125); (620057/1000000, -343341454719/1000000000000); (620057/1000000, -71458363/125000000); (155651/500000, -155651437317/500000000000); (155651/500000, -26620909/62500000)` |
| 63 | 103 | j | 139809/250000 | 896233/1000000 | 503676904269/896233000000 | 896233/1000000 | 561993/1000000 | 896233/1000000 | `(896233/1000000, -803235121767/1000000000000); (66/125, -82915946381/125000000000); (896233/1000000, -447926025181/500000000000); (66/125, -40140669983/62500000000); (896233/1000000, -503676904269/1000000000000); (66/125, -7275387071/20000000000); (896233/1000000, -372728847967/500000000000); (66/125, -4918563653/10000000000)` |
| 64 | 103 | k | 50467/125000 | 17737/20000 | 1088438541/2695900000 | 17737/20000 | 201869/500000 | 17737/20000 | `(620057/1000000, -10997955647/20000000000); (620057/1000000, -3084673/5000000); (155651/500000, -103571840453/200000000000); (155651/500000, -1472507/3125000); (620057/1000000, -25034086443/100000000000); (620057/1000000, -11011397/25000000); (155651/500000, -43660456869/200000000000); (155651/500000, -921011/3125000)` |
| 65 | 105 | u | 348563/1000000 | 169299/250000 | 348563/1000000 | 119121/176000 | 348563/1000000 | 84603/125000 | `(-13857/20000, 7699/50000); (-324617/1000000, 7699/50000); (-896233/1000000, 357363/1000000); (-66/125, 357363/1000000); (-13857/20000, -4843/250000); (-324617/1000000, -4843/250000); (-896233/1000000, 184011/1000000); (-66/125, 184011/1000000)` |
| 66 | 105 | v | 549637/1000000 | 722989/1000000 | 549637/1000000 | 45184921/62500000 | 549637/1000000 | 722959/1000000 | `(-1/1, 9242302509/20000000000); (-1/1, 590467524629/1000000000000); (-1/1, 594606336821/1000000000000); (-1/1, 45184921/62500000); (-1/1, 586698729/2500000000); (-1/1, 60488552949/125000000000); (-1/1, 37550999501/125000000000); (-1/1, 8588077/15625000)` |
| 67 | 123 | k | 201869/500000 | 17737/20000 | 201869/500000 | 2198778191/2490416000 | 201869/500000 | 55181/62500 | `(-196563/500000, 175105309/800000000); (-84371/1000000, 383330191/8000000000); (-620057/1000000, 356650109/800000000); (-155651/500000, 2198778191/8000000000); (-196563/500000, 150063/500000); (-84371/1000000, -8629/1000000); (-620057/1000000, 527057/1000000); (-155651/500000, 109151/500000); (-196563/500000, 278874721/4000000000); (-84371/1000000, -809973457/8000000000); (-620057/1000000, 1186598721/4000000000); (-155651/500000, 1005474543/8000000000)` |
| 68 | 129 | v | 549637/1000000 | 722959/1000000 | 374759020199/681810000000 | 722959/1000000 | 549653/1000000 | 722959/1000000 | `(12881/20000, -96803610153/250000000000); (454879/1000000, -282465728637/1000000000000); (12881/20000, -122929407417/250000000000); (454879/1000000, -386968917693/1000000000000); (12881/20000, -87095271523/200000000000); (454879/1000000, -8268191141/25000000000); (12881/20000, -91833913347/200000000000); (454879/1000000, -8860521369/25000000000); (870981/1000000, -239753866087/500000000000); (68181/100000, -374759020199/1000000000000); (870981/1000000, -319937943543/500000000000); (68181/100000, -535127175111/1000000000000); (870981/1000000, -527769649177/1000000000000); (68181/100000, -211510468601/500000000000); (870981/1000000, -607327824153/1000000000000); (68181/100000, -251289556089/500000000000); (12881/20000, -121297859803/250000000000); (454879/1000000, -74005109803/250000000000); (12881/20000, -147423657067/250000000000); (454879/1000000, -100130907067/250000000000); (12881/20000, -67994803399/100000000000); (454879/1000000, -49077703399/100000000000); (12881/20000, -70364124311/100000000000); (454879/1000000, -51447024311/100000000000); (870981/1000000, -288742365387/500000000000); (68181/100000, -194156865387/500000000000); (870981/1000000, -368926442843/500000000000); (68181/100000, -274340942843/500000000000); (870981/1000000, -48265082847/62500000000); (68181/100000, -36441895347/62500000000); (870981/1000000, -53237468783/62500000000); (68181/100000, -41414281283/62500000000)` |
| 69 | 146 | b | 103767/1000000 | 68457/125000 | 103767/1000000 | 22519/41119 | 103767/1000000 | 109531/200000 | `(-195778728723/1000000000000, 1325027520695223/250000000000000000); (-195778728723/1000000000000, 9778728723/1000000000000); (-222019/1000000, 4880610519/250000000000); (-222019/1000000, 36019/1000000); (-34647556323/100000000000, 2174459929322823/25000000000000000); (-34647556323/100000000000, 16047556323/100000000000); (-41119/100000, 3051347019/25000000000); (-41119/100000, 22519/100000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 89:0 | ABC | lo | 93/1000 | occupants none |
| 89:2 | ABE | lo | 93/1000 | occupants none |
| 89:6 | ABH | lo | 93/1000 | occupants none |
| 89:8 | ABP | lo | 93/1000 | occupants none |
| 89:10 | ABQ | lo | 93/1000 | occupants none |
| 89:12 | ABR | lo | 93/1000 | occupants none |
| 89:16 | ACE | lo | 95621/1000000 | earlier 64:16; ACE; lo; 95621/1000000 |
| 89:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 89:32 | AEH | lo | 13857/20000 | occupants P, Q |
| 89:33 | AEH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 89:38 | AER | lo | 122613/1000000 | earlier 64:38; AER; lo; 122613/1000000 |
| 89:42 | AFH | lo | 279/1000 | occupants P |
| 89:43 | AFH | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 89:44 | AFP | lo | 93/1000 | occupants none |
| 89:46 | AFQ | lo | 93/1000 | occupants none |
| 89:49 | AFR | hi | 362637303803/500000000000 | vertex maximum 362637303803/500000000000 |
| 89:54 | AHQ | lo | 7117/25000 | earlier 64:54; AHQ; lo; 7117/25000 |
| 89:56 | AHR | lo | 13857/20000 | occupants P, Q |
| 89:57 | AHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 89:63 | APR | hi | 245528934399/500000000000 | vertex maximum 245528934399/500000000000 |
| 89:66 | AQR | lo | 93/1000 | occupants none |
| 89:68 | BCE | lo | 93/1000 | occupants none |
| 89:70 | BCF | lo | 305639/1000000 | earlier 64:68; BCF; lo; 305639/1000000 |
| 89:72 | BCH | lo | 349719/1000000 | earlier 64:70; BCH; lo; 349719/1000000 |
| 89:73 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 89:82 | BEF | lo | 279/1000 | occupants Q |
| 89:83 | BEF | hi | 54223440313/62500000000 | vertex maximum 54223440313/62500000000 |
| 89:84 | BEH | lo | 13857/20000 | occupants P, Q |
| 89:85 | BEH | hi | 59075689/62500000 | vertex maximum 59075689/62500000 |
| 89:90 | BER | lo | 60863/500000 | earlier 64:88; BER; lo; 60863/500000 |
| 89:95 | BFH | hi | 344349/500000 | vertex maximum 344349/500000 |
| 89:98 | BFQ | lo | 93/1000 | occupants none |
| 89:101 | BFR | hi | 1858268611/2500000000 | vertex maximum 1858268611/2500000000 |
| 89:104 | BHP | lo | 93/1000 | occupants none |
| 89:106 | BHQ | lo | 77999/250000 | earlier 64:104; BHQ; lo; 77999/250000 |
| 89:107 | BHQ | hi | 648076286553/1000000000000 | vertex maximum 648076286553/1000000000000 |
| 89:108 | BHR | lo | 13857/20000 | occupants P, Q |
| 89:109 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 89:112 | BPQ | lo | 31499/250000 | earlier 64:110; BPQ; lo; 31499/250000 |
| 89:118 | BQR | lo | 93/1000 | occupants none |
| 89:122 | CEH | lo | 279/1000 | occupants Q |
| 89:123 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 89:128 | CER | lo | 93/1000 | occupants none |
| 89:134 | CFP | lo | 279/1000 | occupants Q |
| 89:136 | CFQ | lo | 93/1000 | occupants none |
| 89:139 | CFR | hi | 620057/1000000 | vertex maximum 620057/1000000 |
| 89:142 | CHP | lo | 93/1000 | occupants none |
| 89:144 | CHQ | lo | 93/1000 | occupants none |
| 89:162 | EFP | lo | 279/1000 | occupants Q |
| 89:163 | EFP | hi | 686297643203/1000000000000 | vertex maximum 686297643203/1000000000000 |
| 89:164 | EFQ | lo | 93/1000 | occupants none |
| 89:166 | EFR | lo | 279/1000 | occupants S |
| 89:170 | EHP | lo | 279/1000 | occupants Q |
| 89:172 | EHQ | lo | 93/1000 | occupants none |
| 89:191 | FHP | hi | 102150786501/250000000000 | vertex maximum 102150786501/250000000000 |
| 89:193 | FHQ | hi | 155076539103/500000000000 | vertex maximum 155076539103/500000000000 |
| 89:194 | FHR | lo | 93/1000 | occupants none |
| 89:198 | FPQ | lo | 93/1000 | occupants none |
| 89:201 | FPR | hi | 239929843043/500000000000 | vertex maximum 239929843043/500000000000 |
| 89:204 | FQR | lo | 160249/1000000 | earlier 64:198; FQR; lo; 160249/1000000 |
| 89:210 | HPQ | lo | 93/1000 | occupants none |
| 89:213 | HPR | hi | 296649/500000 | vertex maximum 296649/500000 |
| 89:216 | HQR | lo | 55719/500000 | earlier 64:210; HQR; lo; 55719/500000 |
| 89:220 | PQR | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 4 | fan | AEH = AEQ + EHQ + AHQ | point Q |
| 6 | fan | AFR = AFQ + FQR + AQR | point Q |
| 7 | fan | AHQ = AHP + HPQ + APQ | point P |
| 8 | fan | AHR = AHP + HPR + APR | point P |
| 15 | fan | BEH = BEQ + EHQ + BHQ | point Q |
| 17 | fan | BFR = BFQ + FQR + BQR | point Q |
| 19 | fan | BHR = BHP + HPR + BPR | point P |
| 30 | fan | FPR = FPQ + PQR + FQR | point Q |
| 31 | fan | HPR = HPQ + PQR + HQR | point Q |
| 40 | plu | ACE * BEH = ABE * CEH + AEH * BCE | circuit EABCH |
| 98 | plu | ABR * BCH = ABC * BHR + ABH * BCR | circuit BACHR |
| 101 | plu | ACR * BHR = ABR * CHR + AHR * BCR | circuit RABCH |
| 156 | plu | AHP * BEH = ABH * EHP + AEH * BHP | circuit HABEP |
| 220 | plu | ABF * APR = ABP * AFR + ABR * AFP | circuit ABFPR |
| 223 | plu | APR * BFP = ABP * FPR + AFP * BPR | circuit PABFR |
| 244 | plu | AHP * BHR = ABH * HPR + AHR * BHP | circuit HABPR |
| 245 | plu | AHP * BPR = ABP * HPR + APR * BHP | circuit PABHR |
| 282 | plu | AER * CFR = ACR * EFR + AFR * CER | circuit RACEF |
| 300 | plu | AER * CEH = ACE * EHR + AEH * CER | circuit EACHR |
| 402 | plu | AEP * AFH = AEF * AHP + AEH * AFP | circuit AEFHP |
| 412 | plu | AEF * AHR = AEH * AFR + AER * AFH | circuit AEFHR |
| 416 | plu | AFR * EHR = AER * FHR + AHR * EFR | circuit RAEFH |
| 446 | plu | AEP * AHQ = AEH * APQ + AEQ * AHP | circuit AEHPQ |
| 450 | plu | AEQ * HPQ = AHQ * EPQ + APQ * EHQ | circuit QAEHP |
| 463 | plu | AEH * HQR = AHQ * EHR + AHR * EHQ | circuit HAEQR |
| 464 | plu | AEQ * HQR = AHQ * EQR + AQR * EHQ | circuit QAEHR |
| 471 | plu | APR * EPQ = AEP * PQR + APQ * EPR | circuit PAEQR |
| 472 | plu | AQR * EPQ = AEQ * PQR + APQ * EQR | circuit QAEPR |
| 482 | plu | AFH * APR = AFP * AHR + AFR * AHP | circuit AFHPR |
| 485 | plu | APR * FHP = AFP * HPR + AHP * FPR | circuit PAFHR |
| 504 | plu | AQR * FPR = AFR * PQR + APR * FQR | circuit RAFPQ |
| 508 | plu | AHQ * APR = AHP * AQR + AHR * APQ | circuit AHPQR |
| 510 | plu | APR * HPQ = AHP * PQR + APQ * HPR | circuit PAHQR |
| 511 | plu | AQR * HPQ = AHQ * PQR + APQ * HQR | circuit QAHPR |
| 512 | plu | AQR * HPR = AHR * PQR + APR * HQR | circuit RAHPQ |
| 532 | plu | BEF * CFR = BCF * EFR + BFR * CEF | circuit FBCER |
| 533 | plu | BER * CFR = BCR * EFR + BFR * CER | circuit RBCEF |
| 549 | plu | BCR * BEH = BCE * BHR + BCH * BER | circuit BCEHR |
| 551 | plu | BER * CEH = BCE * EHR + BEH * CER | circuit EBCHR |
| 577 | plu | BEQ * CQR = BCQ * EQR + BQR * CEQ | circuit QBCER |
| 665 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 667 | plu | BFR * EHR = BER * FHR + BHR * EFR | circuit RBEFH |
| 714 | plu | BEH * HQR = BHQ * EHR + BHR * EHQ | circuit HBEQR |
| 715 | plu | BEQ * HQR = BHQ * EQR + BQR * EHQ | circuit QBEHR |
| 736 | plu | BPR * FHP = BFP * HPR + BHP * FPR | circuit PBFHR |
| 744 | plu | BFR * FHQ = BFH * FQR + BFQ * FHR | circuit FBHQR |
| 754 | plu | BQR * FPQ = BFQ * PQR + BPQ * FQR | circuit QBFPR |
| 755 | plu | BQR * FPR = BFR * PQR + BPR * FQR | circuit RBFPQ |
| 759 | plu | BHQ * BPR = BHP * BQR + BHR * BPQ | circuit BHPQR |
| 762 | plu | BQR * HPQ = BHQ * PQR + BPQ * HQR | circuit QBHPR |
| 763 | plu | BQR * HPR = BHR * PQR + BPR * HQR | circuit RBHPQ |
| 776 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 792 | plu | CFR * EFP = CEF * FPR + CFP * EFR | circuit FCEPR |
| 907 | plu | EFQ * HQR = EHQ * FQR + EQR * FHQ | circuit QEFHR |
| 1445 | quad | FPR + EPR >= 93/125 | quadrilateral RFPE; occupants Q, S |
| 2118 | bary | outer AEH; fans EHQ, AHQ, AEQ; target BHQ; sign -1; vertices ABH 1; BEH -1; none 0 | container AEH; inner Q; line BH |
| 2138 | bary | outer AEH; fans EHQ, AHQ, AEQ; target FQR; sign -1; vertices AFR -1; EFR -1; FHR -1 | container AEH; inner Q; line FR |
| 2142 | bary | outer AEH; fans EHQ, AHQ, AEQ; target HQR; sign -1; vertices AHR -1; EHR -1; none 0 | container AEH; inner Q; line HR |
| 2149 | bary | outer AFH; fans FHP, AHP, AFP; target AEP; sign 1; vertices none 0; AEF 1; AEH 1 | container AFH; inner P; line AE |
| 2156 | bary | outer AFH; fans FHP, AHP, AFP; target BCP; sign 1; vertices ABC 1; BCF 1; BCH 1 | container AFH; inner P; line BC |
| 2157 | bary | outer AFH; fans FHP, AHP, AFP; target BEP; sign 1; vertices ABE 1; BEF 1; BEH 1 | container AFH; inner P; line BE |
| 2161 | bary | outer AFH; fans FHP, AHP, AFP; target BPQ; sign 1; vertices ABQ 1; BFQ 1; BHQ 1 | container AFH; inner P; line BQ |
| 2162 | bary | outer AFH; fans FHP, AHP, AFP; target BPR; sign 1; vertices ABR 1; BFR 1; BHR 1 | container AFH; inner P; line BR |
| 2177 | bary | outer AFH; fans FHP, AHP, AFP; target FHP; sign 1; vertices AFH 1; none 0; none 0 | container AFH; inner P; line FH |
| 2184 | bary | outer AFH; fans FHP, AHP, AFP; target HPR; sign -1; vertices AHR -1; FHR 1; none 0 | container AFH; inner P; line HR |
| 2275 | bary | outer AHR; fans HPR, APR, AHP; target APR; sign 1; vertices none 0; AHR 1; none 0 | container AHR; inner P; line AR |
| 2289 | bary | outer AHR; fans HPR, APR, AHP; target EFP; sign 1; vertices AEF 1; EFH 1; EFR -1 | container AHR; inner P; line EF |
| 2290 | bary | outer AHR; fans HPR, APR, AHP; target EHP; sign 1; vertices AEH 1; none 0; EHR -1 | container AHR; inner P; line EH |
| 2302 | bary | outer AHR; fans HPR, APR, AHP; target HPR; sign -1; vertices AHR -1; none 0; none 0 | container AHR; inner P; line HR |
| 2315 | bary | outer AHR; fans HQR, AQR, AHQ; target BEQ; sign 1; vertices ABE 1; BEH 1; BER 1 | container AHR; inner Q; line BE |
| 2317 | bary | outer AHR; fans HQR, AQR, AHQ; target BHQ; sign -1; vertices ABH 1; none 0; BHR -1 | container AHR; inner Q; line BH |
| 2321 | bary | outer AHR; fans HQR, AQR, AHQ; target CEQ; sign 1; vertices ACE 1; CEH 1; CER 1 | container AHR; inner Q; line CE |
| 2575 | bary | outer BEH; fans EHQ, BHQ, BEQ; target FQR; sign -1; vertices BFR -1; EFR -1; FHR -1 | container BEH; inner Q; line FR |
| 2606 | bary | outer BFH; fans FHP, BHP, BFP; target CPR; sign 1; vertices BCR 1; CFR 1; CHR 1 | container BFH; inner P; line CR |
| 2630 | bary | outer BFR; fans FQR, BQR, BFQ; target AFQ; sign -1; vertices ABF -1; none 0; AFR -1 | container BFR; inner Q; line AF |
| 2632 | bary | outer BFR; fans FQR, BQR, BFQ; target APQ; sign -1; vertices ABP -1; AFP -1; APR -1 | container BFR; inner Q; line AP |
| 2641 | bary | outer BFR; fans FQR, BQR, BFQ; target BQR; sign 1; vertices none 0; BFR 1; none 0 | container BFR; inner Q; line BR |
| 2655 | bary | outer BFR; fans FQR, BQR, BFQ; target FPQ; sign 1; vertices BFP 1; none 0; FPR 1 | container BFR; inner Q; line FP |
| 2680 | bary | outer BHQ; fans HPQ, BPQ, BHP; target CEP; sign 1; vertices BCE 1; CEH 1; CEQ 1 | container BHQ; inner P; line CE |
| 2715 | bary | outer BHR; fans HPR, BPR, BHP; target BFP; sign 1; vertices none 0; BFH 1; BFR -1 | container BHR; inner P; line BF |
| 2720 | bary | outer BHR; fans HPR, BPR, BHP; target CEP; sign 1; vertices BCE 1; CEH 1; CER 1 | container BHR; inner P; line CE |
| 3108 | bary | outer EHP; fans HPQ, EPQ, EHQ; target FQR; sign -1; vertices EFR -1; FHR -1; FPR -1 | container EHP; inner Q; line FR |
| 3117 | bary | outer FPR; fans PQR, FQR, FPQ; target ABQ; sign 1; vertices ABF 1; ABP 1; ABR 1 | container FPR; inner Q; line AB |
| 3124 | bary | outer FPR; fans PQR, FQR, FPQ; target AQR; sign 1; vertices AFR 1; APR 1; none 0 | container FPR; inner Q; line AR |
| 3125 | bary | outer FPR; fans PQR, FQR, FPQ; target BCQ; sign 1; vertices BCF 1; BCP 1; BCR 1 | container FPR; inner Q; line BC |
| 3131 | bary | outer FPR; fans PQR, FQR, FPQ; target BQR; sign 1; vertices BFR 1; BPR 1; none 0 | container FPR; inner Q; line BR |
| 3135 | bary | outer FPR; fans PQR, FQR, FPQ; target CPQ; sign -1; vertices CFP -1; none 0; CPR -1 | container FPR; inner Q; line CP |
| 3138 | bary | outer FPR; fans PQR, FQR, FPQ; target EFQ; sign 1; vertices none 0; EFP 1; EFR -1 | container FPR; inner Q; line EF |
| 3140 | bary | outer FPR; fans PQR, FQR, FPQ; target EPQ; sign -1; vertices EFP -1; none 0; EPR -1 | container FPR; inner Q; line EP |
| 3142 | bary | outer FPR; fans PQR, FQR, FPQ; target EQR; sign 1; vertices EFR 1; EPR 1; none 0 | container FPR; inner Q; line ER |
| 3151 | bary | outer FPR; fans PQR, FQR, FPQ; target HQR; sign -1; vertices FHR 1; HPR -1; none 0 | container FPR; inner Q; line HR |
| 3157 | bary | outer HPR; fans PQR, HQR, HPQ; target AEQ; sign 1; vertices AEH 1; AEP 1; AER 1 | container HPR; inner Q; line AE |
| 3162 | bary | outer HPR; fans PQR, HQR, HPQ; target AQR; sign 1; vertices AHR 1; APR 1; none 0 | container HPR; inner Q; line AR |
| 3164 | bary | outer HPR; fans PQR, HQR, HPQ; target BEQ; sign 1; vertices BEH 1; BEP 1; BER 1 | container HPR; inner Q; line BE |
| 3167 | bary | outer HPR; fans PQR, HQR, HPQ; target BPQ; sign -1; vertices BHP 1; none 0; BPR -1 | container HPR; inner Q; line BP |
| 3169 | bary | outer HPR; fans PQR, HQR, HPQ; target BQR; sign 1; vertices BHR 1; BPR 1; none 0 | container HPR; inner Q; line BR |
| 3170 | bary | outer HPR; fans PQR, HQR, HPQ; target CEQ; sign 1; vertices CEH 1; CEP 1; CER 1 | container HPR; inner Q; line CE |
| 3175 | bary | outer HPR; fans PQR, HQR, HPQ; target CQR; sign 1; vertices CHR 1; CPR 1; none 0 | container HPR; inner Q; line CR |
| 3183 | bary | outer HPR; fans PQR, HQR, HPQ; target FPQ; sign 1; vertices FHP -1; none 0; FPR 1 | container HPR; inner Q; line FP |
| 3240 | four | 1 * AEF + -1 * AFQ + -1 * AEQ + -1 * EFQ = 0 | vertices AEFQ |
| 3256 | four | 1 * AFP + -1 * APR + 1 * AFR + -1 * FPR = 0 | vertices AFPR |
| 3258 | four | -1 * AFQ + -1 * AQR + 1 * AFR + -1 * FQR = 0 | vertices AFQR |
| 3259 | four | -1 * AHP + -1 * APQ + 1 * AHQ + -1 * HPQ = 0 | vertices AHPQ |
| 3262 | four | -1 * AHQ + -1 * AQR + 1 * AHR + -1 * HQR = 0 | vertices AHQR |
| 3272 | four | 1 * BCF + -1 * BFQ + -1 * BCQ + -1 * CFQ = 0 | vertices BCFQ |
| 3275 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3285 | four | 1 * BEF + -1 * BFQ + -1 * BEQ + -1 * EFQ = 0 | vertices BEFQ |
| 3296 | four | 1 * BFH + -1 * BHP + -1 * BFP + -1 * FHP = 0 | vertices BFHP |
| 3300 | four | 1 * BFP + -1 * BPQ + 1 * BFQ + -1 * FPQ = 0 | vertices BFPQ |
| 3303 | four | -1 * BFQ + -1 * BQR + 1 * BFR + -1 * FQR = 0 | vertices BFQR |
| 3304 | four | -1 * BHP + -1 * BPQ + 1 * BHQ + -1 * HPQ = 0 | vertices BHPQ |
| 3307 | four | -1 * BHQ + -1 * BQR + 1 * BHR + -1 * HQR = 0 | vertices BHQR |
| 3315 | four | 1 * CEH + -1 * CHQ + -1 * CEQ + -1 * EHQ = 0 | vertices CEHQ |
| 3327 | four | 1 * CFP + -1 * CPQ + -1 * CFQ + -1 * FPQ = 0 | vertices CFPQ |
| 3335 | four | -1 * CHQ + -1 * CQR + 1 * CHR + -1 * HQR = 0 | vertices CHQR |
| 3339 | four | 1 * EFH + 1 * EHQ + -1 * EFQ + -1 * FHQ = 0 | vertices EFHQ |
| 3348 | four | 1 * EHP + -1 * EPQ + -1 * EHQ + -1 * HPQ = 0 | vertices EHPQ |
| 3351 | four | 1 * EHQ + -1 * EQR + 1 * EHR + -1 * HQR = 0 | vertices EHQR |
| 3355 | four | 1 * FHP + 1 * FPR + -1 * FHR + -1 * HPR = 0 | vertices FHPR |
| 3359 | four | 1 * FPQ + 1 * FQR + -1 * FPR + 1 * PQR = 0 | vertices FPQR |
| 3360 | four | 1 * HPQ + 1 * HQR + -1 * HPR + 1 * PQR = 0 | vertices HPQR |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 89:223 | AFR | lo | 346249/1000000 | 346249/1000000 | 6 | 89:46, 89:204, 89:66 |
| 89:225 | BFR | lo | 346249/1000000 | 346249/1000000 | 17 | 89:98, 89:204, 89:118 |
| 89:226 | BQR | hi | 490059/1000000 | 1225146111/2500000000 | 17 | 89:101, 89:98, 89:204 |
| 89:233 | FPR | lo | 346249/1000000 | 346249/1000000 | 30 | 89:198, 89:220, 89:204 |
| 89:234 | FPQ | hi | 226611/1000000 | 113305343043/500000000000 | 30 | 89:201, 89:220, 89:204 |
| 89:236 | HPR | lo | 148719/500000 | 148719/500000 | 31 | 89:210, 89:220, 89:216 |
| 89:238 | AHP | lo | 95621/1000000 | 45191025/472605512 | 156 | 89:6, 89:170, 89:32, 89:104, 89:85 |
| 89:244 | AEF | lo | 76461/250000 | 5482152933/17924660000 | 412 | 89:32, 89:223, 89:38, 89:42, 89:57 |
| 89:245 | EHR | lo | 282249/1000000 | 102354079500/362637303803 | 416 | 89:38, 89:194, 89:56, 89:166, 89:49 |
| 89:250 | HQR | lo | 161549/1000000 | 3619642383/22405825000 | 463 | 89:54, 89:245, 89:56, 89:172, 89:33 |
| 89:251 | APR | lo | 158033/1000000 | 97543725629/617233874634 | 482 | 89:44, 89:56, 89:223, 89:238, 89:43 |
| 89:252 | FHP | lo | 61877/500000 | 60770409629/491057868798 | 485 | 89:44, 89:236, 89:238, 89:233, 89:63 |
| 89:259 | AQR | lo | 30327/200000 | 89965123117/593298000000 | 512 | 89:56, 89:220, 89:251, 89:250, 89:213 |
| 89:260 | BCR | lo | 113207/1000000 | 53502472497/472605512000 | 549 | 89:68, 89:108, 89:72, 89:90, 89:85 |
| 89:261 | BER | lo | 397/3125 | 90684207/713821888 | 551 | 89:68, 89:245, 89:84, 89:128, 89:123 |
| 89:271 | BQR | lo | 25453/200000 | 7209933251/56652750000 | 754 | 89:98, 89:220, 89:112, 89:204, 89:234 |
| 89:273 | BPR | lo | 152963/1000000 | 1065935200/6968562221 | 759 | 89:104, 89:271, 89:108, 89:112, 89:107 |
| 89:275 | HPQ | lo | 100743/1000000 | 726031703/7206750000 | 762 | 89:106, 89:220, 89:112, 89:250, 89:226 |
| 89:276 | BQR | lo | 30051/200000 | 89146069687/593298000000 | 763 | 89:108, 89:220, 89:273, 89:250, 89:213 |
| 89:282 | EPR | lo | 13207/50000 | 132070156957/500000000000 | 1445 | 89:201 |
| 89:298 | AEP | lo | 75887/500000 | 15613359854/102872312439 | 2149 | 89:43, 89:252, 89:238, 89:44, 89:244, 89:32 |
| 89:299 | BCP | lo | 82311/500000 | 50805185579981/308616937317000 | 2156 | 89:43, 89:252, 89:238, 89:44, 89:0, 89:70, 89:72 |
| 89:300 | BEP | lo | 42439/200000 | 21829051056827/102872312439000 | 2157 | 89:43, 89:252, 89:238, 89:44, 89:2, 89:82, 89:84 |
| 89:301 | BPR | lo | 222613/1000000 | 68702361484981/308616937317000 | 2162 | 89:43, 89:252, 89:238, 89:44, 89:12, 89:225, 89:108 |
| 89:316 | BEQ | lo | 102651/500000 | 3679968619/17924660000 | 2315 | 89:57, 89:250, 89:259, 89:54, 89:2, 89:84, 89:261 |
| 89:317 | BHQ | hi | 9903/15625 | 568024943/896233000 | 2317 | 89:57, 89:250, 89:259, 89:54, 89:6, 89:109 |
| 89:319 | CEQ | lo | 62471/500000 | 111977198929/896233000000 | 2321 | 89:57, 89:250, 89:259, 89:54, 89:16, 89:122, 89:128 |
| 89:332 | FQR | lo | 11207/62500 | 21186004779/118151378000 | 2575 | 89:85, 89:172, 89:106, 89:316, 89:225, 89:166, 89:194 |
| 89:333 | APQ | lo | 6321/62500 | 187939153323/1858268611000 | 2632 | 89:101, 89:332, 89:276, 89:98, 89:8, 89:44, 89:251 |
| 89:335 | BQR | hi | 117749/250000 | 1177488611/2500000000 | 2641 | 89:101, 89:332, 89:276, 89:98, 89:101 |
| 89:336 | CEP | lo | 134663/1000000 | 14224753/105632000 | 2680 | 89:317, 89:275, 89:112, 89:104, 89:68, 89:122, 89:319 |
| 89:362 | BCQ | lo | 84857/500000 | 3701771725578991/21811803913000000 | 3125 | 89:201, 89:220, 89:332, 89:198, 89:70, 89:299, 89:260 |
| 89:367 | EFQ | hi | 5722/15625 | 87864104996597605786729/239929843043000000000000 | 3138 | 89:201, 89:220, 89:332, 89:198, 89:163, 89:166 |
| 89:369 | EPQ | lo | 6579/62500 | 25256010000/239929843043 | 3140 | 89:201, 89:220, 89:332, 89:198, 89:162, 89:282 |
| 89:374 | HQR | hi | 43163/125000 | 41424341008862907/119964921521500000 | 3151 | 89:201, 89:220, 89:332, 89:198, 89:194, 89:213 |
| 89:376 | AEQ | lo | 109969/500000 | 130489019063/593298000000 | 3157 | 89:213, 89:220, 89:250, 89:275, 89:32, 89:298, 89:38 |
| 89:377 | BEQ | lo | 119459/500000 | 9449974201/39553200000 | 3164 | 89:213, 89:220, 89:250, 89:275, 89:84, 89:300, 89:261 |
| 89:379 | BQR | lo | 8461/50000 | 100397957537/593298000000 | 3169 | 89:213, 89:220, 89:250, 89:275, 89:108, 89:301 |
| 89:380 | CEQ | lo | 267/2000 | 79205329987/593298000000 | 3170 | 89:213, 89:220, 89:250, 89:275, 89:122, 89:336, 89:128 |
| 89:382 | AEF | lo | 202969/500000 | 202969/500000 | 3240 | 89:46, 89:376, 89:164 |
| 89:384 | AFR | lo | 423947/1000000 | 423947/1000000 | 3258 | 89:46, 89:259, 89:332 |
| 89:385 | AHQ | lo | 119/400 | 119/400 | 3259 | 89:238, 89:333, 89:275 |
| 89:386 | BCF | lo | 177857/500000 | 177857/500000 | 3272 | 89:98, 89:362, 89:136 |
| 89:387 | BCH | lo | 175311/500000 | 175311/500000 | 3275 | 89:104, 89:299, 89:142 |
| 89:388 | BEF | lo | 212459/500000 | 212459/500000 | 3285 | 89:98, 89:377, 89:164 |
| 89:391 | BFR | lo | 110383/250000 | 110383/250000 | 3303 | 89:98, 89:379, 89:332 |
| 89:392 | BHQ | lo | 319739/1000000 | 319739/1000000 | 3304 | 89:104, 89:112, 89:275 |
| 89:393 | CEH | lo | 639/2000 | 639/2000 | 3315 | 89:144, 89:380, 89:172 |
| 89:396 | EFH | hi | 291681/500000 | 291680539103/500000000000 | 3339 | 89:172, 89:367, 89:193 |
| 89:398 | EHP | lo | 299007/1000000 | 299007/1000000 | 3348 | 89:369, 89:172, 89:275 |
| 89:402 | FPR | lo | 5708/15625 | 5708/15625 | 3359 | 89:198, 89:332, 89:220 |
| 89:403 | HPR | lo | 88823/250000 | 88823/250000 | 3360 | 89:275, 89:250, 89:220 |
| 89:405 | APR | hi | 11133/25000 | 11133/25000 | 8 | 89:57, 89:238, 89:403 |
| 89:409 | ACE | lo | 19921/200000 | 47074275/472605512 | 40 | 89:2, 89:393, 89:32, 89:68, 89:85 |
| 89:412 | AHP | lo | 97589/1000000 | 92242701/945211024 | 156 | 89:6, 89:398, 89:32, 89:104, 89:85 |
| 89:413 | ABF | lo | 53979/500000 | 16025357/148440000 | 220 | 89:8, 89:384, 89:12, 89:44, 89:405 |
| 89:415 | BFP | lo | 122781/1000000 | 243009/1979200 | 223 | 89:8, 89:402, 89:44, 89:301, 89:405 |
| 89:418 | AER | lo | 32413/250000 | 18509692329/142764377600 | 300 | 89:409, 89:245, 89:32, 89:128, 89:123 |
| 89:420 | AEP | lo | 84287/500000 | 52025066741/308616937317 | 402 | 89:382, 89:412, 89:32, 89:44, 89:43 |
| 89:422 | EHR | lo | 283151/1000000 | 102681393000/362637303803 | 416 | 89:418, 89:194, 89:56, 89:166, 89:49 |
| 89:423 | HQR | lo | 33177/200000 | 59468989/358493200 | 463 | 89:385, 89:422, 89:56, 89:172, 89:33 |
| 89:426 | APR | lo | 85711/500000 | 105807613783/617233874634 | 482 | 89:44, 89:56, 89:384, 89:412, 89:43 |
| 89:428 | FHP | lo | 77127/500000 | 2146643399/13916250000 | 485 | 89:44, 89:403, 89:412, 89:402, 89:405 |
| 89:432 | AQR | lo | 78267/500000 | 3095712949/19776600000 | 512 | 89:56, 89:220, 89:426, 89:423, 89:213 |
| 89:434 | BCR | lo | 57647/500000 | 1362225861/11815137800 | 549 | 89:68, 89:108, 89:387, 89:261, 89:85 |
| 89:435 | BER | lo | 127157/1000000 | 6982161/54909376 | 551 | 89:68, 89:422, 89:84, 89:128, 89:123 |
| 89:441 | HPQ | lo | 107509/1000000 | 2531828673/23549800000 | 762 | 89:392, 89:220, 89:112, 89:423, 89:335 |
| 89:442 | BQR | lo | 170847/1000000 | 6757547167/39553200000 | 763 | 89:108, 89:220, 89:301, 89:423, 89:213 |
| 89:461 | BCP | lo | 173353/1000000 | 53499796443481/308616937317000 | 2156 | 89:43, 89:428, 89:412, 89:44, 89:0, 89:386, 89:387 |
| 89:462 | BEP | lo | 235859/1000000 | 72790173021481/308616937317000 | 2157 | 89:43, 89:428, 89:412, 89:44, 89:2, 89:388, 89:84 |
| 89:463 | BPQ | lo | 127163/1000000 | 13081579556827/102872312439000 | 2161 | 89:43, 89:428, 89:412, 89:44, 89:10, 89:98, 89:392 |
| 89:464 | BPR | lo | 119243/500000 | 73600844844481/308616937317000 | 2162 | 89:43, 89:428, 89:412, 89:44, 89:12, 89:391, 89:108 |
| 89:490 | FQR | lo | 190211/1000000 | 5618423601/29537844500 | 2575 | 89:85, 89:172, 89:392, 89:377, 89:391, 89:166, 89:194 |
| 89:492 | APQ | lo | 102811/1000000 | 191052095823/1858268611000 | 2632 | 89:101, 89:490, 89:442, 89:98, 89:8, 89:44, 89:426 |
| 89:494 | BQR | hi | 460097/1000000 | 1150241111/2500000000 | 2641 | 89:101, 89:490, 89:442, 89:98, 89:101 |
| 89:498 | CEP | lo | 147017/1000000 | 147017079/1000000000 | 2720 | 89:109, 89:403, 89:464, 89:104, 89:68, 89:393, 89:128 |
| 89:525 | ABQ | lo | 47949/500000 | 23009022402999/239929843043000 | 3117 | 89:201, 89:220, 89:490, 89:198, 89:413, 89:8, 89:12 |
| 89:529 | BCQ | lo | 92451/500000 | 22181865774149821/119964921521500000 | 3125 | 89:201, 89:220, 89:490, 89:198, 89:386, 89:461, 89:434 |
| 89:532 | BQR | lo | 36021/200000 | 43212568273/239929843043 | 3131 | 89:201, 89:220, 89:490, 89:198, 89:391, 89:464 |
| 89:536 | EQR | lo | 79387/500000 | 38094666770/239929843043 | 3142 | 89:201, 89:220, 89:490, 89:198, 89:166, 89:282 |
| 89:540 | AEQ | lo | 14301/62500 | 22626043711/98883000000 | 3157 | 89:213, 89:220, 89:423, 89:441, 89:32, 89:420, 89:418 |
| 89:541 | BEQ | lo | 123111/500000 | 6086811419/24720750000 | 3164 | 89:213, 89:220, 89:423, 89:441, 89:84, 89:462, 89:435 |
| 89:542 | CEQ | lo | 143607/1000000 | 5680121603/39553200000 | 3170 | 89:213, 89:220, 89:423, 89:441, 89:393, 89:498, 89:128 |
| 89:546 | AEF | lo | 12963/31250 | 12963/31250 | 3240 | 89:46, 89:540, 89:164 |
| 89:549 | AFR | lo | 87949/200000 | 87949/200000 | 3258 | 89:46, 89:432, 89:490 |
| 89:550 | AHQ | lo | 307909/1000000 | 307909/1000000 | 3259 | 89:412, 89:492, 89:441 |
| 89:552 | BCF | lo | 185451/500000 | 185451/500000 | 3272 | 89:98, 89:529, 89:136 |
| 89:553 | BCH | lo | 359353/1000000 | 359353/1000000 | 3275 | 89:104, 89:461, 89:142 |
| 89:554 | BEF | lo | 216111/500000 | 216111/500000 | 3285 | 89:98, 89:541, 89:164 |
| 89:555 | BFH | lo | 74007/200000 | 74007/200000 | 3296 | 89:104, 89:415, 89:428 |
| 89:556 | BFR | lo | 115829/250000 | 115829/250000 | 3303 | 89:98, 89:532, 89:490 |
| 89:557 | BHQ | lo | 40959/125000 | 40959/125000 | 3304 | 89:104, 89:463, 89:441 |
| 89:559 | CEH | lo | 329607/1000000 | 329607/1000000 | 3315 | 89:144, 89:542, 89:172 |
| 89:568 | FPR | lo | 376211/1000000 | 376211/1000000 | 3359 | 89:198, 89:490, 89:220 |
| 89:569 | HPR | lo | 183197/500000 | 183197/500000 | 3360 | 89:441, 89:423, 89:220 |
| 89:572 | APR | hi | 1729/4000 | 1729/4000 | 8 | 89:57, 89:412, 89:569 |
| 89:575 | BHR | lo | 17447/25000 | 17447/25000 | 19 | 89:104, 89:569, 89:464 |
| 89:577 | ACE | lo | 503/5000 | 95088501/945211024 | 40 | 89:2, 89:559, 89:32, 89:68, 89:85 |
| 89:580 | ABF | lo | 114621/1000000 | 9909057/86450000 | 220 | 89:8, 89:549, 89:12, 89:44, 89:572 |
| 89:582 | BFP | lo | 66127/500000 | 57166821/432250000 | 223 | 89:8, 89:568, 89:44, 89:464, 89:572 |
| 89:583 | AHP | lo | 98509/1000000 | 24627423/250000000 | 244 | 89:6, 89:569, 89:56, 89:104, 89:109 |
| 89:585 | AER | lo | 32543/250000 | 464600203/3569109440 | 300 | 89:577, 89:422, 89:32, 89:128, 89:123 |
| 89:587 | AEP | lo | 42649/250000 | 17549693224/102872312439 | 402 | 89:546, 89:583, 89:32, 89:44, 89:43 |
| 89:590 | EHR | lo | 141609/500000 | 102705573000/362637303803 | 416 | 89:585, 89:194, 89:56, 89:166, 89:49 |
| 89:591 | HQR | lo | 169197/1000000 | 75820210581/448116500000 | 463 | 89:550, 89:590, 89:56, 89:172, 89:33 |
| 89:593 | APR | lo | 6983/40000 | 8288760785/47479528818 | 482 | 89:44, 89:56, 89:549, 89:583, 89:43 |
| 89:594 | FHP | lo | 20571/125000 | 71134811399/432250000000 | 485 | 89:44, 89:569, 89:583, 89:568, 89:572 |
| 89:599 | AQR | lo | 15839/100000 | 1252968217/7910640000 | 512 | 89:56, 89:220, 89:593, 89:591, 89:213 |
| 89:601 | BCR | lo | 117007/1000000 | 110597089421/945211024000 | 549 | 89:68, 89:575, 89:553, 89:435, 89:85 |
| 89:602 | BER | lo | 63583/500000 | 22693581/178455472 | 551 | 89:68, 89:590, 89:84, 89:128, 89:123 |
| 89:607 | FHQ | lo | 106327/1000000 | 15806745477/148661488880 | 744 | 89:555, 89:490, 89:98, 89:194, 89:101 |
| 89:608 | BQR | lo | 92163/500000 | 44225524273/239929843043 | 755 | 89:556, 89:220, 89:464, 89:490, 89:201 |
| 89:610 | HPQ | lo | 22599/200000 | 51989094111/460097000000 | 762 | 89:557, 89:220, 89:463, 89:591, 89:494 |
| 89:615 | EFQ | lo | 100119/1000000 | 17285793049/172652000000 | 907 | 89:172, 89:490, 89:536, 89:607, 89:374 |
| 89:624 | BHQ | hi | 298079/500000 | 2568732119101/4308812500000 | 2118 | 89:33, 89:172, 89:550, 89:540, 89:6, 89:85 |
| 89:627 | BCP | lo | 44371/250000 | 18258237909827/102872312439000 | 2156 | 89:43, 89:594, 89:583, 89:44, 89:0, 89:552, 89:553 |
| 89:628 | BEP | lo | 237519/1000000 | 24434203389827/102872312439000 | 2157 | 89:43, 89:594, 89:583, 89:44, 89:2, 89:554, 89:84 |
| 89:629 | BPQ | lo | 129131/1000000 | 4428009133609/34290770813000 | 2161 | 89:43, 89:594, 89:583, 89:44, 89:525, 89:98, 89:557 |
| 89:630 | BPR | lo | 6081/25000 | 75068024592481/308616937317000 | 2162 | 89:43, 89:594, 89:583, 89:44, 89:12, 89:556, 89:575 |
| 89:652 | FQR | lo | 38783/200000 | 11455687827/59075689000 | 2575 | 89:85, 89:172, 89:557, 89:541, 89:556, 89:166, 89:194 |
| 89:653 | APQ | lo | 51603/500000 | 191785168323/1858268611000 | 2632 | 89:101, 89:652, 89:608, 89:98, 89:8, 89:44, 89:593 |
| 89:654 | BQR | hi | 456393/1000000 | 1140981111/2500000000 | 2641 | 89:101, 89:652, 89:608, 89:98, 89:101 |
| 89:656 | CEP | lo | 9509/62500 | 90702443517/596158000000 | 2680 | 89:624, 89:610, 89:629, 89:104, 89:68, 89:559, 89:542 |
| 89:678 | ABQ | lo | 9719/100000 | 23318851902999/239929843043000 | 3117 | 89:201, 89:220, 89:652, 89:198, 89:580, 89:8, 89:12 |
| 89:682 | BCQ | lo | 47663/250000 | 45743287372432301/239929843043000000 | 3125 | 89:201, 89:220, 89:652, 89:198, 89:552, 89:627, 89:601 |
| 89:685 | BQR | lo | 23511/125000 | 45128136300/239929843043 | 3131 | 89:201, 89:220, 89:652, 89:198, 89:556, 89:630 |
| 89:688 | EQR | lo | 160813/1000000 | 38583854050/239929843043 | 3142 | 89:201, 89:220, 89:652, 89:198, 89:166, 89:282 |
| 89:692 | AEQ | lo | 2299/10000 | 2841655433/12360375000 | 3157 | 89:213, 89:220, 89:591, 89:610, 89:32, 89:587, 89:585 |
| 89:693 | BEQ | lo | 61827/250000 | 16303038001/65922000000 | 3164 | 89:213, 89:220, 89:591, 89:610, 89:84, 89:628, 89:602 |
| 89:694 | CEQ | lo | 29391/200000 | 1816419841/12360375000 | 3170 | 89:213, 89:220, 89:591, 89:610, 89:559, 89:656, 89:128 |
| 89:698 | AEF | lo | 423019/1000000 | 423019/1000000 | 3240 | 89:46, 89:692, 89:615 |
| 89:701 | AFR | lo | 89061/200000 | 89061/200000 | 3258 | 89:46, 89:599, 89:652 |
| 89:702 | AHQ | lo | 31471/100000 | 31471/100000 | 3259 | 89:583, 89:653, 89:610 |
| 89:704 | BCF | lo | 94163/250000 | 94163/250000 | 3272 | 89:98, 89:682, 89:136 |
| 89:705 | BCH | lo | 90871/250000 | 90871/250000 | 3275 | 89:104, 89:627, 89:142 |
| 89:706 | BEF | lo | 440427/1000000 | 440427/1000000 | 3285 | 89:98, 89:693, 89:615 |
| 89:707 | BFH | lo | 194911/500000 | 194911/500000 | 3296 | 89:104, 89:582, 89:594 |
| 89:708 | BFR | lo | 475003/1000000 | 475003/1000000 | 3303 | 89:98, 89:685, 89:652 |
| 89:709 | BHQ | lo | 167563/500000 | 167563/500000 | 3304 | 89:104, 89:629, 89:610 |
| 89:712 | CEH | lo | 66591/200000 | 66591/200000 | 3315 | 89:144, 89:694, 89:172 |
| 89:720 | FPR | lo | 75983/200000 | 75983/200000 | 3359 | 89:198, 89:652, 89:220 |
| 89:721 | HPR | lo | 46899/125000 | 46899/125000 | 3360 | 89:610, 89:591, 89:220 |
| 89:723 | APR | hi | 105633/250000 | 105633/250000 | 8 | 89:57, 89:583, 89:721 |
| 89:726 | BHR | lo | 88929/125000 | 88929/125000 | 19 | 89:104, 89:721, 89:630 |
| 89:728 | ACE | lo | 100929/1000000 | 95399865/945211024 | 40 | 89:2, 89:712, 89:32, 89:68, 89:85 |
| 89:731 | ABF | lo | 118481/1000000 | 1112497/9389600 | 220 | 89:8, 89:701, 89:12, 89:44, 89:723 |
| 89:734 | BFP | lo | 137157/1000000 | 3863561/28168800 | 223 | 89:8, 89:720, 89:44, 89:630, 89:723 |
| 89:736 | AHP | lo | 99327/1000000 | 49663953/500000000 | 244 | 89:6, 89:721, 89:56, 89:104, 89:109 |
| 89:738 | AER | lo | 16289/125000 | 46509979761/356910944000 | 300 | 89:728, 89:590, 89:32, 89:128, 89:123 |
| 89:740 | AEP | lo | 86233/500000 | 35484086071/205744624878 | 402 | 89:698, 89:736, 89:32, 89:44, 89:43 |
| 89:741 | EHR | lo | 70809/250000 | 102712083000/362637303803 | 416 | 89:738, 89:194, 89:56, 89:166, 89:49 |
| 89:742 | HQR | lo | 171353/1000000 | 295331253/1723525000 | 463 | 89:702, 89:741, 89:56, 89:172, 89:33 |
| 89:745 | APR | lo | 44437/250000 | 24209557735/136201048668 | 485 | 89:44, 89:721, 89:736, 89:720, 89:191 |
| 89:746 | FHP | lo | 171889/1000000 | 440173777/2560800000 | 485 | 89:44, 89:721, 89:736, 89:720, 89:723 |
| 89:750 | AQR | lo | 159941/1000000 | 23723175761/148324500000 | 512 | 89:56, 89:220, 89:745, 89:742, 89:213 |
| 89:752 | BCR | lo | 1189/10000 | 14048247793/118151378000 | 549 | 89:68, 89:726, 89:705, 89:602, 89:85 |
| 89:753 | BER | lo | 1987/15625 | 45387999/356910944 | 551 | 89:68, 89:741, 89:84, 89:128, 89:123 |
| 89:758 | FHQ | lo | 113333/1000000 | 8424133313/74330744440 | 744 | 89:707, 89:652, 89:98, 89:194, 89:101 |
| 89:759 | BQR | lo | 190353/1000000 | 45671581800/239929843043 | 755 | 89:708, 89:220, 89:630, 89:652, 89:201 |
| 89:761 | HPQ | lo | 116771/1000000 | 53293702243/456393000000 | 762 | 89:709, 89:220, 89:629, 89:742, 89:654 |
| 89:765 | EFQ | lo | 105007/1000000 | 36259514729/345304000000 | 907 | 89:172, 89:652, 89:688, 89:758, 89:374 |
| 89:772 | BHQ | hi | 119003/200000 | 33329479501437/56014562500000 | 2118 | 89:33, 89:172, 89:702, 89:692, 89:6, 89:85 |
| 89:774 | BCP | lo | 897/5000 | 6151781363609/34290770813000 | 2156 | 89:43, 89:746, 89:736, 89:44, 89:0, 89:704, 89:705 |
| 89:775 | BEP | lo | 239289/1000000 | 8205426776109/34290770813000 | 2157 | 89:43, 89:746, 89:736, 89:44, 89:2, 89:706, 89:84 |
| 89:776 | BPQ | lo | 16331/125000 | 40320341625481/308616937317000 | 2161 | 89:43, 89:746, 89:736, 89:44, 89:678, 89:98, 89:709 |
| 89:777 | BPR | lo | 247653/1000000 | 25476689720327/102872312439000 | 2162 | 89:43, 89:746, 89:736, 89:44, 89:12, 89:708, 89:726 |
| 89:798 | FQR | lo | 49133/250000 | 23220542529/118151378000 | 2575 | 89:85, 89:172, 89:709, 89:693, 89:708, 89:166, 89:194 |
| 89:799 | APQ | lo | 103603/1000000 | 192522890823/1858268611000 | 2632 | 89:101, 89:798, 89:759, 89:98, 89:8, 89:44, 89:745 |
| 89:800 | BQR | hi | 28361/62500 | 1134438611/2500000000 | 2641 | 89:101, 89:798, 89:759, 89:98, 89:101 |
| 89:802 | CEP | lo | 3853/25000 | 2292596271/14875375000 | 2680 | 89:772, 89:761, 89:776, 89:104, 89:68, 89:712, 89:694 |
| 89:803 | BFP | hi | 2013/6250 | 40259978373/125000000000 | 2715 | 89:109, 89:721, 89:777, 89:104, 89:95, 89:708 |
| 89:828 | ABQ | lo | 48969/500000 | 23498341902999/239929843043000 | 3117 | 89:201, 89:220, 89:798, 89:198, 89:731, 89:8, 89:12 |
| 89:832 | BCQ | lo | 6051/31250 | 42234744852557/218118039130000 | 3125 | 89:201, 89:220, 89:798, 89:198, 89:704, 89:774, 89:752 |
| 89:835 | BQR | lo | 193487/1000000 | 4220319018/21811803913 | 3131 | 89:201, 89:220, 89:798, 89:198, 89:708, 89:777 |
| 89:838 | EQR | lo | 162253/1000000 | 38929481240/239929843043 | 3142 | 89:201, 89:220, 89:798, 89:198, 89:166, 89:282 |
| 89:842 | AEQ | lo | 46133/200000 | 68426548669/296649000000 | 3157 | 89:213, 89:220, 89:742, 89:761, 89:32, 89:740, 89:738 |
| 89:843 | BEQ | lo | 248221/1000000 | 147269215777/593298000000 | 3164 | 89:213, 89:220, 89:742, 89:761, 89:84, 89:775, 89:753 |
| 89:844 | CEQ | lo | 29653/200000 | 2199140609/14832450000 | 3170 | 89:213, 89:220, 89:742, 89:761, 89:712, 89:802, 89:128 |
| 89:848 | AEF | lo | 6698/15625 | 6698/15625 | 3240 | 89:46, 89:842, 89:765 |
| 89:851 | AFR | lo | 449473/1000000 | 449473/1000000 | 3258 | 89:46, 89:750, 89:798 |
| 89:852 | AHQ | lo | 319701/1000000 | 319701/1000000 | 3259 | 89:736, 89:799, 89:761 |
| 89:854 | BCF | lo | 23727/62500 | 23727/62500 | 3272 | 89:98, 89:832, 89:136 |
| 89:855 | BCH | lo | 1827/5000 | 1827/5000 | 3275 | 89:104, 89:774, 89:142 |
| 89:856 | BEF | lo | 111557/250000 | 111557/250000 | 3285 | 89:98, 89:843, 89:765 |
| 89:858 | BFH | lo | 201023/500000 | 201023/500000 | 3296 | 89:104, 89:734, 89:746 |
| 89:859 | BFR | lo | 483019/1000000 | 483019/1000000 | 3303 | 89:98, 89:835, 89:798 |
| 89:860 | BHQ | lo | 340419/1000000 | 340419/1000000 | 3304 | 89:104, 89:776, 89:761 |
| 89:863 | CEH | lo | 66853/200000 | 66853/200000 | 3315 | 89:144, 89:844, 89:172 |
| 89:870 | FPR | lo | 95633/250000 | 95633/250000 | 3359 | 89:198, 89:798, 89:220 |
| 89:871 | HPR | lo | 95281/250000 | 95281/250000 | 3360 | 89:761, 89:742, 89:220 |
| 89:873 | APR | hi | 207891/500000 | 207891/500000 | 8 | 89:57, 89:736, 89:871 |
| 89:876 | BHR | lo | 721777/1000000 | 721777/1000000 | 19 | 89:104, 89:871, 89:777 |
| 89:878 | ACE | lo | 50529/500000 | 95521695/945211024 | 40 | 89:2, 89:863, 89:32, 89:68, 89:85 |
| 89:881 | ABF | lo | 121337/1000000 | 16816663/138594000 | 220 | 89:8, 89:851, 89:12, 89:44, 89:873 |
| 89:883 | APR | lo | 45491/250000 | 3907147/21472000 | 223 | 89:8, 89:870, 89:44, 89:777, 89:803 |
| 89:884 | BFP | lo | 35239/250000 | 3907147/27718800 | 223 | 89:8, 89:870, 89:44, 89:777, 89:873 |
| 89:886 | AHP | lo | 99879/1000000 | 49939791/500000000 | 244 | 89:6, 89:871, 89:56, 89:104, 89:109 |
| 89:888 | AER | lo | 65183/500000 | 11632289211/89227736000 | 300 | 89:878, 89:741, 89:32, 89:128, 89:123 |
| 89:890 | AEP | lo | 173759/1000000 | 17875063448/102872312439 | 402 | 89:848, 89:886, 89:32, 89:44, 89:43 |
| 89:891 | EHR | lo | 283243/1000000 | 102714594000/362637303803 | 416 | 89:888, 89:194, 89:56, 89:166, 89:49 |
| 89:895 | FHP | lo | 177139/1000000 | 6137620469/34648500000 | 485 | 89:44, 89:871, 89:886, 89:870, 89:873 |
| 89:902 | BCR | lo | 7511/62500 | 567962241/4726055120 | 549 | 89:68, 89:876, 89:855, 89:753, 89:85 |
| 89:903 | BER | lo | 127169/1000000 | 90776649/713821888 | 551 | 89:68, 89:891, 89:84, 89:128, 89:123 |
| 89:906 | EHR | lo | 286829/1000000 | 533006250/1858268611 | 667 | 89:903, 89:194, 89:876, 89:166, 89:101 |
| 89:908 | HQR | lo | 87159/500000 | 164767302351/945211024000 | 714 | 89:860, 89:906, 89:876, 89:172, 89:85 |
| 89:911 | FHQ | lo | 117937/1000000 | 10957988059/92913430550 | 744 | 89:858, 89:798, 89:98, 89:194, 89:101 |
| 89:912 | BQR | lo | 195041/1000000 | 46796253198/239929843043 | 755 | 89:859, 89:220, 89:777, 89:798, 89:201 |
| 89:914 | HPQ | lo | 29989/250000 | 6804158133/56722000000 | 762 | 89:860, 89:220, 89:776, 89:908, 89:800 |
| 89:918 | EFQ | lo | 27087/250000 | 37413108061/345304000000 | 907 | 89:172, 89:798, 89:838, 89:911, 89:374 |
| 89:925 | BHQ | hi | 18569/31250 | 4160535824919/7001820312500 | 2118 | 89:33, 89:172, 89:852, 89:842, 89:6, 89:85 |
| 89:926 | BCP | lo | 7217/40000 | 6186914881609/34290770813000 | 2156 | 89:43, 89:895, 89:886, 89:44, 89:0, 89:854, 89:855 |
| 89:927 | BEP | lo | 240539/1000000 | 24744809958827/102872312439000 | 2157 | 89:43, 89:895, 89:886, 89:44, 89:2, 89:856, 89:84 |
| 89:928 | BPQ | lo | 8231/62500 | 13547904953827/102872312439000 | 2161 | 89:43, 89:895, 89:886, 89:44, 89:828, 89:98, 89:860 |
| 89:929 | BPR | lo | 5017/20000 | 8601873280109/34290770813000 | 2162 | 89:43, 89:895, 89:886, 89:44, 89:12, 89:859, 89:876 |
| 89:950 | FQR | lo | 99181/500000 | 23436790779/118151378000 | 2575 | 89:85, 89:172, 89:860, 89:843, 89:859, 89:166, 89:194 |
| 89:951 | APQ | lo | 10413/100000 | 193503110823/1858268611000 | 2632 | 89:101, 89:950, 89:912, 89:98, 89:8, 89:44, 89:883 |
| 89:952 | BQR | hi | 225973/500000 | 1129863611/2500000000 | 2641 | 89:101, 89:950, 89:912, 89:98, 89:101 |
| 89:954 | CEP | lo | 155121/1000000 | 2304365611/14855200000 | 2680 | 89:925, 89:914, 89:928, 89:104, 89:68, 89:863, 89:844 |
| 89:956 | BFP | hi | 317249/1000000 | 19828061403/62500000000 | 2715 | 89:109, 89:871, 89:929, 89:104, 89:95, 89:859 |
| 89:983 | ABQ | lo | 98491/1000000 | 23631145902999/239929843043000 | 3117 | 89:201, 89:220, 89:950, 89:198, 89:881, 89:8, 89:12 |
| 89:987 | AQR | lo | 16233/100000 | 38947865984/239929843043 | 3124 | 89:201, 89:220, 89:950, 89:198, 89:851, 89:883 |
| 89:988 | BCQ | lo | 39073/200000 | 2929629305408473/14995615190187500 | 3125 | 89:201, 89:220, 89:950, 89:198, 89:854, 89:926, 89:902 |
| 89:991 | BQR | lo | 197307/1000000 | 47339937350/239929843043 | 3131 | 89:201, 89:220, 89:950, 89:198, 89:859, 89:929 |
| 89:994 | EQR | lo | 8163/50000 | 39171169340/239929843043 | 3142 | 89:201, 89:220, 89:950, 89:198, 89:166, 89:282 |
| 89:998 | AEQ | lo | 46257/200000 | 22870180007/98883000000 | 3157 | 89:213, 89:220, 89:908, 89:914, 89:32, 89:890, 89:888 |
| 89:999 | BEQ | lo | 249149/1000000 | 24636646337/98883000000 | 3164 | 89:213, 89:220, 89:908, 89:914, 89:84, 89:927, 89:903 |
| 89:1000 | CEQ | lo | 14907/100000 | 14740527913/98883000000 | 3170 | 89:213, 89:220, 89:908, 89:914, 89:863, 89:954, 89:128 |
| 89:1005 | AEF | lo | 432633/1000000 | 432633/1000000 | 3240 | 89:46, 89:998, 89:918 |
| 89:1008 | AFR | lo | 113423/250000 | 113423/250000 | 3258 | 89:46, 89:987, 89:950 |
| 89:1009 | AHQ | lo | 64793/200000 | 64793/200000 | 3259 | 89:886, 89:951, 89:914 |
| 89:1012 | BCF | lo | 76273/200000 | 76273/200000 | 3272 | 89:98, 89:988, 89:136 |
| 89:1013 | BCH | lo | 14657/40000 | 14657/40000 | 3275 | 89:104, 89:926, 89:142 |
| 89:1014 | BEF | lo | 450497/1000000 | 450497/1000000 | 3285 | 89:98, 89:999, 89:918 |
| 89:1016 | BFH | lo | 82219/200000 | 82219/200000 | 3296 | 89:104, 89:884, 89:895 |
| 89:1017 | BFR | lo | 488669/1000000 | 488669/1000000 | 3303 | 89:98, 89:991, 89:950 |
| 89:1018 | BHQ | lo | 86163/250000 | 86163/250000 | 3304 | 89:104, 89:928, 89:914 |
| 89:1020 | CEH | lo | 33507/100000 | 33507/100000 | 3315 | 89:144, 89:1000, 89:172 |
| 89:1027 | FPR | lo | 192181/500000 | 192181/500000 | 3359 | 89:198, 89:950, 89:220 |
| 89:1028 | HPR | lo | 193637/500000 | 193637/500000 | 3360 | 89:914, 89:908, 89:220 |
| 89:1030 | APR | hi | 10227/25000 | 10227/25000 | 8 | 89:57, 89:886, 89:1028 |
| 89:1033 | BHR | lo | 182781/250000 | 182781/250000 | 19 | 89:104, 89:1028, 89:929 |
| 89:1034 | BPR | hi | 259863/500000 | 259863/500000 | 19 | 89:109, 89:104, 89:1028 |
| 89:1035 | ACE | lo | 101137/1000000 | 5974785/59075689 | 40 | 89:2, 89:1020, 89:32, 89:68, 89:85 |
| 89:1038 | ABF | lo | 31071/250000 | 4236863/34090000 | 220 | 89:8, 89:1008, 89:12, 89:44, 89:1030 |
| 89:1040 | APR | lo | 186209/1000000 | 14768679/79312250 | 223 | 89:8, 89:1027, 89:44, 89:929, 89:956 |
| 89:1041 | BFP | lo | 18051/125000 | 4922893/34090000 | 223 | 89:8, 89:1027, 89:44, 89:929, 89:1030 |
| 89:1044 | AHP | lo | 102619/1000000 | 17777973/173242000 | 245 | 89:8, 89:1028, 89:1040, 89:104, 89:1034 |
| 89:1046 | AER | lo | 65453/500000 | 93444074573/713821888000 | 300 | 89:1035, 89:906, 89:32, 89:128, 89:123 |
| 89:1047 | AEP | lo | 176321/1000000 | 36277138609/205744624878 | 402 | 89:1005, 89:1044, 89:32, 89:44, 89:43 |
| 89:1051 | FHP | lo | 184461/1000000 | 37729663039/204540000000 | 485 | 89:44, 89:1028, 89:1044, 89:1027, 89:1030 |
| 89:1056 | BER | lo | 127367/1000000 | 78975321/620057000 | 533 | 89:902, 89:166, 89:1017, 89:128, 89:139 |
| 89:1057 | BCR | lo | 121311/1000000 | 4586599399/37808440960 | 549 | 89:68, 89:1033, 89:1013, 89:1056, 89:85 |
| 89:1058 | BER | lo | 127637/1000000 | 91110147/713821888 | 551 | 89:68, 89:906, 89:84, 89:128, 89:123 |
| 89:1061 | EHR | lo | 72599/250000 | 1079269185/3716537222 | 667 | 89:1058, 89:194, 89:1033, 89:166, 89:101 |
| 89:1063 | HQR | lo | 88911/500000 | 10505005887/59075689000 | 714 | 89:1018, 89:1061, 89:1033, 89:172, 89:85 |
| 89:1066 | FHQ | lo | 60671/500000 | 9019462639/74330744440 | 744 | 89:1016, 89:950, 89:98, 89:194, 89:101 |
| 89:1067 | BQR | lo | 99201/500000 | 47602662350/239929843043 | 755 | 89:1017, 89:220, 89:929, 89:950, 89:201 |
| 89:1069 | HPQ | lo | 61369/500000 | 433367829/3530828125 | 762 | 89:1018, 89:220, 89:928, 89:1063, 89:952 |
| 89:1073 | EFQ | lo | 22159/200000 | 956449023/8632600000 | 907 | 89:172, 89:950, 89:994, 89:1066, 89:374 |
| 89:1082 | BHQ | hi | 296777/500000 | 8311914918043/14003640625000 | 2118 | 89:33, 89:172, 89:1009, 89:998, 89:6, 89:85 |
| 89:1083 | BCP | lo | 9107/50000 | 56211501637981/308616937317000 | 2156 | 89:43, 89:1051, 89:1044, 89:44, 89:0, 89:1012, 89:1013 |
| 89:1084 | BEP | lo | 3794/15625 | 74937392491981/308616937317000 | 2157 | 89:43, 89:1051, 89:1044, 89:44, 89:2, 89:1014, 89:84 |
| 89:1085 | BPQ | lo | 132557/1000000 | 13636543615327/102872312439000 | 2161 | 89:43, 89:1051, 89:1044, 89:44, 89:983, 89:98, 89:1018 |
| 89:1086 | BPR | lo | 25493/100000 | 78675719725981/308616937317000 | 2162 | 89:43, 89:1051, 89:1044, 89:44, 89:12, 89:1017, 89:1033 |
| 89:1106 | FQR | lo | 199751/1000000 | 23600889279/118151378000 | 2575 | 89:85, 89:172, 89:1018, 89:999, 89:1017, 89:166, 89:194 |
| 89:1107 | APQ | lo | 104661/1000000 | 194490073323/1858268611000 | 2632 | 89:101, 89:1106, 89:1067, 89:98, 89:8, 89:44, 89:1040 |
| 89:1110 | CEP | lo | 77923/500000 | 9250310499/59355400000 | 2680 | 89:1082, 89:1069, 89:1085, 89:104, 89:68, 89:1020, 89:1000 |
| 89:1111 | BFP | hi | 312489/1000000 | 78122009937/250000000000 | 2715 | 89:109, 89:1028, 89:1086, 89:104, 89:95, 89:1017 |
| 89:1140 | ABQ | lo | 99063/1000000 | 2160743763909/21811803913000 | 3117 | 89:201, 89:220, 89:1106, 89:198, 89:1038, 89:8, 89:12 |
| 89:1144 | AQR | lo | 165441/1000000 | 79388789959/479859686086 | 3124 | 89:201, 89:220, 89:1106, 89:198, 89:1008, 89:1040 |
| 89:1145 | BCQ | lo | 24629/125000 | 47273966978889373/239929843043000000 | 3125 | 89:201, 89:220, 89:1106, 89:198, 89:1012, 89:1083, 89:1057 |
| 89:1148 | BQR | lo | 100413/500000 | 48184369715/239929843043 | 3131 | 89:201, 89:220, 89:1106, 89:198, 89:1017, 89:1086 |
| 89:1151 | EQR | lo | 6561/40000 | 39354614570/239929843043 | 3142 | 89:201, 89:220, 89:1106, 89:198, 89:166, 89:282 |
| 89:1155 | AEQ | lo | 116301/500000 | 23000474353/98883000000 | 3157 | 89:213, 89:220, 89:1063, 89:1069, 89:32, 89:1047, 89:1046 |
| 89:1156 | BEQ | lo | 50151/200000 | 12397745497/49441500000 | 3164 | 89:213, 89:220, 89:1063, 89:1069, 89:84, 89:1084, 89:1058 |
| 89:1157 | CEQ | lo | 7489/50000 | 2468461817/16480500000 | 3170 | 89:213, 89:220, 89:1063, 89:1069, 89:1020, 89:1110, 89:128 |
| 89:1162 | AEF | lo | 436397/1000000 | 436397/1000000 | 3240 | 89:46, 89:1155, 89:1073 |
| 89:1165 | AFR | lo | 28637/62500 | 28637/62500 | 3258 | 89:46, 89:1144, 89:1106 |
| 89:1166 | AHQ | lo | 165009/500000 | 165009/500000 | 3259 | 89:1044, 89:1107, 89:1069 |
| 89:1169 | BCF | lo | 47879/125000 | 47879/125000 | 3272 | 89:98, 89:1145, 89:136 |
| 89:1170 | BCH | lo | 18407/50000 | 18407/50000 | 3275 | 89:104, 89:1083, 89:142 |
| 89:1171 | BEF | lo | 9091/20000 | 9091/20000 | 3285 | 89:98, 89:1156, 89:1073 |
| 89:1173 | BFH | lo | 421869/1000000 | 421869/1000000 | 3296 | 89:104, 89:1041, 89:1051 |
| 89:1174 | BFR | lo | 493577/1000000 | 493577/1000000 | 3303 | 89:98, 89:1148, 89:1106 |
| 89:1175 | BHQ | lo | 69659/200000 | 69659/200000 | 3304 | 89:104, 89:1085, 89:1069 |
| 89:1178 | CEH | lo | 16789/50000 | 16789/50000 | 3315 | 89:144, 89:1157, 89:172 |
| 89:1185 | FPR | lo | 385751/1000000 | 385751/1000000 | 3359 | 89:198, 89:1106, 89:220 |
| 89:1186 | HPR | lo | 9839/25000 | 9839/25000 | 3360 | 89:1069, 89:1063, 89:220 |
| 89:1188 | APR | hi | 200027/500000 | 200027/500000 | 8 | 89:57, 89:1044, 89:1186 |
| 89:1190 | BEQ | hi | 503917/1000000 | 62989503/125000000 | 15 | 89:85, 89:172, 89:1175 |
| 89:1191 | BHR | lo | 74149/100000 | 74149/100000 | 19 | 89:104, 89:1186, 89:1086 |
| 89:1192 | BPR | hi | 3209/6250 | 3209/6250 | 19 | 89:109, 89:104, 89:1186 |
| 89:1193 | ACE | lo | 101207/1000000 | 47831295/472605512 | 40 | 89:2, 89:1178, 89:32, 89:68, 89:85 |
| 89:1195 | ABF | lo | 64067/500000 | 6407607/50006750 | 220 | 89:8, 89:1165, 89:12, 89:44, 89:1188 |
| 89:1197 | APR | lo | 190673/1000000 | 19861111/104163000 | 223 | 89:8, 89:1185, 89:44, 89:1086, 89:1111 |
| 89:1198 | BFP | lo | 74469/500000 | 59583333/400054000 | 223 | 89:8, 89:1185, 89:44, 89:1086, 89:1188 |
| 89:1200 | AHP | lo | 52911/500000 | 54333669/513440000 | 245 | 89:8, 89:1186, 89:1197, 89:104, 89:1192 |
| 89:1202 | AER | lo | 1643/12500 | 1804329961/13727344000 | 300 | 89:1193, 89:1061, 89:32, 89:128, 89:123 |
| 89:1203 | AEP | lo | 179211/1000000 | 6145302963/34290770813 | 402 | 89:1162, 89:1200, 89:32, 89:44, 89:43 |
| 89:1207 | FHP | lo | 24191/125000 | 38711011161/200027000000 | 485 | 89:44, 89:1186, 89:1200, 89:1185, 89:1188 |
| 89:1208 | AQR | lo | 42043/250000 | 80698978423/479859686086 | 504 | 89:1165, 89:220, 89:1197, 89:1106, 89:201 |
| 89:1210 | HPQ | lo | 63781/500000 | 1275795729/10001350000 | 510 | 89:1200, 89:220, 89:1107, 89:1186, 89:1188 |
| 89:1212 | BER | lo | 64307/500000 | 7974843/62005700 | 533 | 89:1057, 89:166, 89:1174, 89:128, 89:139 |
| 89:1213 | BCR | lo | 15381/125000 | 2907663199/23630275600 | 549 | 89:68, 89:1191, 89:1170, 89:1212, 89:85 |
| 89:1216 | EHR | lo | 294409/1000000 | 547092030/1858268611 | 667 | 89:1212, 89:194, 89:1191, 89:166, 89:101 |
| 89:1218 | HQR | lo | 567/3125 | 34299950531/189042204800 | 714 | 89:1175, 89:1216, 89:1191, 89:172, 89:85 |
| 89:1219 | EQR | hi | 445967/1000000 | 19415967221/43536875000 | 715 | 89:1190, 89:374, 89:1148, 89:172, 89:1175 |
| 89:1222 | FHQ | lo | 25001/200000 | 92917754619/743307444400 | 744 | 89:1173, 89:1106, 89:98, 89:194, 89:101 |
| 89:1223 | BQR | lo | 100889/500000 | 48412591715/239929843043 | 755 | 89:1174, 89:220, 89:1086, 89:1106, 89:201 |
| 89:1227 | EFQ | lo | 113177/1000000 | 62529261/552486400 | 907 | 89:172, 89:1106, 89:1151, 89:1222, 89:374 |
| 89:1237 | BCP | lo | 9209/50000 | 18947089440827/102872312439000 | 2156 | 89:43, 89:1207, 89:1200, 89:44, 89:0, 89:1169, 89:1170 |
| 89:1238 | BEP | lo | 122683/500000 | 8413819135609/34290770813000 | 2157 | 89:43, 89:1207, 89:1200, 89:44, 89:2, 89:1171, 89:84 |
| 89:1239 | BPQ | lo | 66683/500000 | 4573252533609/34290770813000 | 2161 | 89:43, 89:1207, 89:1200, 89:44, 89:1140, 89:98, 89:1175 |
| 89:1240 | BPR | lo | 129693/500000 | 26683696605827/102872312439000 | 2162 | 89:43, 89:1207, 89:1200, 89:44, 89:12, 89:1174, 89:1191 |
| 89:1241 | HPR | hi | 147899/250000 | 60858847273142287/102872312439000000 | 2184 | 89:43, 89:1207, 89:1200, 89:44, 89:57, 89:194 |
| 89:1246 | BHQ | hi | 295541/500000 | 13243677/22405825 | 2317 | 89:57, 89:1218, 89:1208, 89:1166, 89:6, 89:109 |
| 89:1261 | FQR | lo | 200951/1000000 | 23742644529/118151378000 | 2575 | 89:85, 89:172, 89:1175, 89:1156, 89:1174, 89:166, 89:194 |
| 89:1263 | APQ | lo | 5261/50000 | 195527953323/1858268611000 | 2632 | 89:101, 89:1261, 89:1223, 89:98, 89:8, 89:44, 89:1197 |
| 89:1266 | CEP | lo | 19589/125000 | 2315744087/14777050000 | 2680 | 89:1246, 89:1210, 89:1239, 89:104, 89:68, 89:1178, 89:1157 |
| 89:1267 | BFP | hi | 307703/1000000 | 7692561003/25000000000 | 2715 | 89:109, 89:1186, 89:1240, 89:104, 89:95, 89:1174 |
| 89:1295 | ABQ | lo | 99809/1000000 | 2177018763909/21811803913000 | 3117 | 89:201, 89:220, 89:1261, 89:198, 89:1195, 89:8, 89:12 |
| 89:1299 | AQR | lo | 21081/125000 | 80927786023/479859686086 | 3124 | 89:201, 89:220, 89:1261, 89:198, 89:1165, 89:1197 |
| 89:1300 | BCQ | lo | 99517/500000 | 5969301449094383/29991230380375000 | 3125 | 89:201, 89:220, 89:1261, 89:198, 89:1169, 89:1237, 89:1213 |
| 89:1303 | BQR | lo | 204281/1000000 | 49013268543/239929843043 | 3131 | 89:201, 89:220, 89:1261, 89:198, 89:1174, 89:1240 |
| 89:1306 | EQR | lo | 82343/500000 | 3592099870/21811803913 | 3142 | 89:201, 89:220, 89:1261, 89:198, 89:166, 89:282 |
| 89:1309 | HQR | hi | 172131/500000 | 20649651856216657/59982460760750000 | 3151 | 89:201, 89:220, 89:1261, 89:198, 89:194, 89:1241 |
| 89:1311 | AEQ | lo | 46869/200000 | 1732975981/7394950000 | 3157 | 89:1241, 89:220, 89:1218, 89:1210, 89:32, 89:1203, 89:1202 |
| 89:1313 | BEQ | lo | 791/3125 | 18718119853/73949500000 | 3164 | 89:1241, 89:220, 89:1218, 89:1210, 89:84, 89:1238, 89:1212 |
| 89:1314 | CEQ | lo | 30141/200000 | 278615229/1848737500 | 3170 | 89:1241, 89:220, 89:1218, 89:1210, 89:1178, 89:1266, 89:128 |
| 89:1319 | AEF | lo | 220261/500000 | 220261/500000 | 3240 | 89:46, 89:1311, 89:1227 |
| 89:1322 | AFR | lo | 462599/1000000 | 462599/1000000 | 3258 | 89:46, 89:1299, 89:1261 |
| 89:1323 | AHQ | lo | 84651/250000 | 84651/250000 | 3259 | 89:1200, 89:1263, 89:1210 |
| 89:1326 | BCF | lo | 192517/500000 | 192517/500000 | 3272 | 89:98, 89:1300, 89:136 |
| 89:1327 | BCH | lo | 18509/50000 | 18509/50000 | 3275 | 89:104, 89:1237, 89:142 |
| 89:1328 | BEF | lo | 459297/1000000 | 459297/1000000 | 3285 | 89:98, 89:1313, 89:1227 |
| 89:1331 | BFH | lo | 217733/500000 | 217733/500000 | 3296 | 89:104, 89:1198, 89:1207 |
| 89:1332 | BFR | lo | 62279/125000 | 62279/125000 | 3303 | 89:98, 89:1303, 89:1261 |
| 89:1333 | BHQ | lo | 44241/125000 | 44241/125000 | 3304 | 89:104, 89:1239, 89:1210 |
| 89:1336 | CEH | lo | 67341/200000 | 67341/200000 | 3315 | 89:144, 89:1314, 89:172 |
| 89:1341 | EHR | hi | 697229/1000000 | 697229/1000000 | 3351 | 89:172, 89:1219, 89:1309 |
| 89:1343 | FPR | lo | 386951/1000000 | 386951/1000000 | 3359 | 89:198, 89:1261, 89:220 |
| 89:1344 | HPR | lo | 201001/500000 | 201001/500000 | 3360 | 89:1210, 89:1218, 89:220 |
| 89:1347 | AHR | lo | 698497/1000000 | 698497/1000000 | 8 | 89:1200, 89:1344, 89:1197 |
| 89:1348 | APR | hi | 388409/1000000 | 388409/1000000 | 8 | 89:57, 89:1200, 89:1344 |
| 89:1350 | BEH | lo | 43753/62500 | 43753/62500 | 15 | 89:1313, 89:172, 89:1333 |
| 89:1351 | BEQ | hi | 124571/250000 | 31142689/62500000 | 15 | 89:85, 89:172, 89:1333 |
| 89:1352 | BHR | lo | 188597/250000 | 188597/250000 | 19 | 89:104, 89:1344, 89:1240 |
| 89:1353 | BPR | hi | 252499/500000 | 252499/500000 | 19 | 89:109, 89:104, 89:1344 |
| 89:1354 | ACE | lo | 50649/500000 | 95748615/945211024 | 40 | 89:2, 89:1336, 89:32, 89:68, 89:85 |
| 89:1356 | ABF | lo | 133031/1000000 | 51670707/388409000 | 220 | 89:8, 89:1322, 89:12, 89:44, 89:1348 |
| 89:1358 | APR | lo | 48837/250000 | 60109341/307703000 | 223 | 89:8, 89:1343, 89:44, 89:1240, 89:1267 |
| 89:1359 | BFP | lo | 154757/1000000 | 60109341/388409000 | 223 | 89:8, 89:1343, 89:44, 89:1240, 89:1348 |
| 89:1362 | AHP | lo | 110007/1000000 | 85467/776920 | 245 | 89:8, 89:1344, 89:1358, 89:104, 89:1353 |
| 89:1364 | AER | lo | 132047/1000000 | 47129046441/356910944000 | 300 | 89:1354, 89:1216, 89:32, 89:128, 89:123 |
| 89:1365 | AEP | lo | 36581/200000 | 482459631/2637751601 | 402 | 89:1319, 89:1362, 89:32, 89:44, 89:43 |
| 89:1370 | APR | lo | 7827/40000 | 26651168219/136201048668 | 485 | 89:44, 89:1344, 89:1362, 89:1343, 89:191 |
| 89:1371 | FHP | lo | 25731/125000 | 79953504657/388409000000 | 485 | 89:44, 89:1344, 89:1362, 89:1343, 89:1348 |
| 89:1372 | AQR | lo | 171597/1000000 | 82342793925/479859686086 | 504 | 89:1322, 89:220, 89:1370, 89:1261, 89:201 |
| 89:1374 | HPQ | lo | 67621/500000 | 23450581/173396875 | 510 | 89:1362, 89:220, 89:1263, 89:1344, 89:1348 |
| 89:1376 | BER | lo | 65047/500000 | 438402/3369875 | 533 | 89:1213, 89:166, 89:1332, 89:128, 89:139 |
| 89:1377 | BCR | lo | 62587/500000 | 2957907023/23630275600 | 549 | 89:68, 89:1352, 89:1327, 89:1376, 89:85 |
| 89:1378 | CQR | lo | 63783/500000 | 1478239103/11588000000 | 577 | 89:1300, 89:1306, 89:1303, 89:1314, 89:1351 |
| 89:1379 | EFH | lo | 220917/1000000 | 821048175/3716537222 | 665 | 89:1328, 89:194, 89:1331, 89:166, 89:101 |
| 89:1380 | EHR | lo | 59887/200000 | 556432485/1858268611 | 667 | 89:1376, 89:194, 89:1352, 89:166, 89:101 |
| 89:1382 | HQR | lo | 93173/500000 | 4403412867/23630275600 | 714 | 89:1333, 89:1380, 89:1352, 89:172, 89:85 |
| 89:1384 | FHQ | lo | 64681/500000 | 48078164083/371653722200 | 744 | 89:1331, 89:1261, 89:98, 89:194, 89:101 |
| 89:1385 | BQR | lo | 205183/1000000 | 49229726043/239929843043 | 755 | 89:1332, 89:220, 89:1240, 89:1261, 89:201 |
| 89:1387 | CEF | lo | 164201/1000000 | 14310747/87153625 | 776 | 89:1336, 89:166, 89:128, 89:1379, 89:1341 |
| 89:1389 | EFQ | lo | 14521/125000 | 9998138333/86065500000 | 907 | 89:172, 89:1261, 89:1306, 89:1384, 89:1309 |
| 89:1402 | BCP | lo | 186811/1000000 | 19217712429827/102872312439000 | 2156 | 89:43, 89:1371, 89:1362, 89:44, 89:0, 89:1326, 89:1327 |
| 89:1403 | BEP | lo | 62437/250000 | 25692241403327/102872312439000 | 2157 | 89:43, 89:1371, 89:1362, 89:44, 89:2, 89:1328, 89:1350 |
| 89:1404 | BPQ | lo | 26917/200000 | 4615037409609/34290770813000 | 2161 | 89:43, 89:1371, 89:1362, 89:44, 89:1295, 89:98, 89:1333 |
| 89:1405 | BPR | lo | 2119/8000 | 27248365160827/102872312439000 | 2162 | 89:43, 89:1371, 89:1362, 89:44, 89:12, 89:1332, 89:1352 |
| 89:1406 | HPR | hi | 584889/1000000 | 60168857255642287/102872312439000000 | 2184 | 89:43, 89:1371, 89:1362, 89:44, 89:57, 89:194 |
| 89:1409 | EFP | hi | 85459/125000 | 612728700733/896233000000 | 2289 | 89:57, 89:1344, 89:1370, 89:1362, 89:31, 89:396, 89:166 |
| 89:1412 | BHQ | hi | 290639/500000 | 260479911/448116500 | 2317 | 89:57, 89:1382, 89:1372, 89:1323, 89:6, 89:109 |
| 89:1426 | FQR | lo | 202517/1000000 | 11963863077/59075689000 | 2575 | 89:85, 89:172, 89:1333, 89:1313, 89:1332, 89:166, 89:194 |
| 89:1431 | AFQ | lo | 94123/1000000 | 69962746027/743307444400 | 2630 | 89:101, 89:1426, 89:1385, 89:98, 89:1356, 89:1322 |
| 89:1432 | APQ | lo | 52923/500000 | 196690918323/1858268611000 | 2632 | 89:101, 89:1426, 89:1385, 89:98, 89:8, 89:44, 89:1370 |
| 89:1435 | CEP | lo | 79329/500000 | 3688978257/23251120000 | 2680 | 89:1412, 89:1374, 89:1404, 89:104, 89:68, 89:1336, 89:1314 |
| 89:1436 | BFP | hi | 18841/62500 | 75363884151/250000000000 | 2715 | 89:109, 89:1344, 89:1405, 89:104, 89:95, 89:1332 |
| 89:1465 | ABQ | lo | 50379/500000 | 24174916902999/239929843043000 | 3117 | 89:201, 89:220, 89:1426, 89:198, 89:1356, 89:8, 89:12 |
| 89:1470 | BCQ | lo | 201549/1000000 | 1422286421693073/7056760089500000 | 3125 | 89:201, 89:220, 89:1426, 89:198, 89:1326, 89:1402, 89:1377 |
| 89:1473 | BQR | lo | 104173/500000 | 99977266375/479859686086 | 3131 | 89:201, 89:220, 89:1426, 89:198, 89:1332, 89:1405 |
| 89:1475 | EFQ | hi | 1823/5000 | 10934789956611737/29991230380375000 | 3138 | 89:201, 89:220, 89:1426, 89:198, 89:1409, 89:166 |
| 89:1477 | EQR | lo | 41387/250000 | 39719920190/239929843043 | 3142 | 89:201, 89:220, 89:1426, 89:198, 89:166, 89:282 |
| 89:1480 | HQR | hi | 68031/200000 | 7419377178870657/21811803913000000 | 3151 | 89:201, 89:220, 89:1426, 89:198, 89:194, 89:1406 |
| 89:1481 | AEQ | lo | 11871/50000 | 138864701651/584889000000 | 3157 | 89:1406, 89:220, 89:1382, 89:1374, 89:32, 89:1365, 89:1364 |
| 89:1483 | AQR | lo | 86703/500000 | 676156497/3899260000 | 3162 | 89:1406, 89:220, 89:1382, 89:1374, 89:1347, 89:1370 |
| 89:1484 | BEQ | lo | 258841/1000000 | 3027866317/11697780000 | 3164 | 89:1406, 89:220, 89:1382, 89:1374, 89:1350, 89:1403, 89:1376 |
| 89:1486 | CEQ | lo | 38167/250000 | 7441195639/48740750000 | 3170 | 89:1406, 89:220, 89:1382, 89:1374, 89:1336, 89:1435, 89:128 |
| 89:1492 | AEF | lo | 447711/1000000 | 447711/1000000 | 3240 | 89:1431, 89:1481, 89:1389 |
| 89:1495 | AFR | lo | 235023/500000 | 235023/500000 | 3258 | 89:1431, 89:1483, 89:1426 |
| 89:1496 | AHQ | lo | 70219/200000 | 70219/200000 | 3259 | 89:1362, 89:1432, 89:1374 |
| 89:1499 | AQR | hi | 44849/125000 | 44849/125000 | 3262 | 89:1496, 89:57, 89:1382 |
| 89:1501 | BCF | lo | 387549/1000000 | 387549/1000000 | 3272 | 89:98, 89:1470, 89:136 |
| 89:1502 | BCH | lo | 372811/1000000 | 372811/1000000 | 3275 | 89:104, 89:1402, 89:142 |
| 89:1503 | BEF | lo | 468009/1000000 | 468009/1000000 | 3285 | 89:98, 89:1484, 89:1389 |
| 89:1506 | BFH | lo | 90721/200000 | 90721/200000 | 3296 | 89:104, 89:1359, 89:1371 |
| 89:1507 | BFR | lo | 503863/1000000 | 503863/1000000 | 3303 | 89:98, 89:1473, 89:1426 |
| 89:1508 | BHQ | lo | 362827/1000000 | 362827/1000000 | 3304 | 89:104, 89:1404, 89:1374 |
| 89:1511 | CEH | lo | 84667/250000 | 84667/250000 | 3315 | 89:144, 89:1486, 89:172 |
| 89:1513 | CHR | lo | 6358/15625 | 6358/15625 | 3335 | 89:144, 89:1378, 89:1382 |
| 89:1514 | EFH | hi | 290877/500000 | 290876539103/500000000000 | 3339 | 89:172, 89:1475, 89:193 |
| 89:1519 | FPR | lo | 388517/1000000 | 388517/1000000 | 3359 | 89:198, 89:1426, 89:220 |
| 89:1520 | HPR | lo | 103647/250000 | 103647/250000 | 3360 | 89:1374, 89:1382, 89:220 |
| 89:1523 | AHR | lo | 72027/100000 | 72027/100000 | 8 | 89:1362, 89:1520, 89:1370 |
| 89:1524 | APR | hi | 185819/500000 | 185819/500000 | 8 | 89:57, 89:1362, 89:1520 |
| 89:1526 | BEH | lo | 178667/250000 | 178667/250000 | 15 | 89:1484, 89:172, 89:1508 |
| 89:1528 | BHR | lo | 772463/1000000 | 772463/1000000 | 19 | 89:104, 89:1520, 89:1405 |
| 89:1529 | BPR | hi | 123103/250000 | 123103/250000 | 19 | 89:109, 89:104, 89:1520 |
| 89:1530 | ACE | lo | 101491/1000000 | 47965587/472605512 | 40 | 89:2, 89:1511, 89:32, 89:68, 89:85 |
| 89:1532 | ABR | lo | 18629/200000 | 6421557/68941000 | 98 | 89:0, 89:1528, 89:6, 89:1377, 89:73 |
| 89:1533 | ABF | lo | 70467/500000 | 52376763/371638000 | 220 | 89:8, 89:1495, 89:1532, 89:44, 89:1524 |
| 89:1535 | APR | lo | 201573/1000000 | 3797841/18841000 | 223 | 89:8, 89:1519, 89:44, 89:1405, 89:1436 |
| 89:1536 | BFP | lo | 163507/1000000 | 3797841/23227375 | 223 | 89:8, 89:1519, 89:44, 89:1405, 89:1524 |
| 89:1539 | AHP | lo | 29093/250000 | 57302973/492412000 | 245 | 89:8, 89:1520, 89:1535, 89:104, 89:1529 |
| 89:1541 | AER | lo | 132841/1000000 | 18965001517/142764377600 | 300 | 89:1530, 89:1380, 89:32, 89:128, 89:123 |
| 89:1542 | AEP | lo | 188803/1000000 | 19422679082/102872312439 | 402 | 89:1492, 89:1539, 89:32, 89:44, 89:43 |
| 89:1543 | HQR | lo | 96021/500000 | 6884609653/35849320000 | 463 | 89:1496, 89:1380, 89:1523, 89:172, 89:33 |
| 89:1547 | APR | lo | 205013/1000000 | 20942296081/102150786501 | 485 | 89:44, 89:1520, 89:1539, 89:1519, 89:191 |
| 89:1548 | FHP | lo | 45081/200000 | 20942296081/92909500000 | 485 | 89:44, 89:1520, 89:1539, 89:1519, 89:1524 |
| 89:1552 | HPQ | lo | 73829/500000 | 13244678133/89698000000 | 511 | 89:1496, 89:220, 89:1432, 89:1543, 89:1499 |
| 89:1553 | AQR | lo | 2273/12500 | 17726036091/97481500000 | 512 | 89:1523, 89:220, 89:1547, 89:1543, 89:1406 |
| 89:1554 | CFR | lo | 219993/1000000 | 27265854209/123939292144 | 532 | 89:1501, 89:166, 89:1507, 89:1387, 89:83 |
| 89:1555 | BER | lo | 26379/200000 | 16356561/124011400 | 533 | 89:1377, 89:166, 89:1507, 89:128, 89:139 |
| 89:1556 | BCR | lo | 5121/40000 | 24202193169/189042204800 | 549 | 89:68, 89:1528, 89:1502, 89:1555, 89:85 |
| 89:1557 | BER | lo | 66061/500000 | 94311579/713821888 | 551 | 89:68, 89:1380, 89:1526, 89:128, 89:123 |
| 89:1560 | EHR | lo | 153237/500000 | 1139022615/3716537222 | 667 | 89:1557, 89:194, 89:1528, 89:166, 89:101 |
| 89:1562 | HQR | lo | 38729/200000 | 91518050499/472605512000 | 714 | 89:1508, 89:1560, 89:1528, 89:172, 89:85 |
| 89:1564 | FHQ | lo | 67611/500000 | 20102344757/148661488880 | 744 | 89:1506, 89:1426, 89:98, 89:194, 89:101 |
| 89:1568 | BQR | lo | 210519/1000000 | 985046227/4679112000 | 763 | 89:1528, 89:220, 89:1405, 89:1562, 89:1406 |
| 89:1571 | EFQ | lo | 121179/1000000 | 286248699/2362187500 | 907 | 89:172, 89:1426, 89:1477, 89:1564, 89:1480 |
| 89:1584 | FQR | lo | 204989/1000000 | 183718617/896233000 | 2138 | 89:33, 89:172, 89:1496, 89:1481, 89:1495, 89:166, 89:194 |
| 89:1585 | HQR | lo | 487/2500 | 17458659903/89623300000 | 2142 | 89:33, 89:172, 89:1496, 89:1481, 89:1523, 89:1560 |
| 89:1587 | BCP | lo | 190693/1000000 | 19617071594827/102872312439000 | 2156 | 89:43, 89:1548, 89:1539, 89:44, 89:0, 89:1501, 89:1502 |
| 89:1588 | BEP | lo | 257371/1000000 | 8825467871609/34290770813000 | 2157 | 89:43, 89:1548, 89:1539, 89:44, 89:2, 89:1503, 89:1526 |
| 89:1589 | BPQ | lo | 17061/125000 | 14040892221827/102872312439000 | 2161 | 89:43, 89:1548, 89:1539, 89:44, 89:1465, 89:98, 89:1508 |
| 89:1590 | BPR | lo | 54587/200000 | 1871832203875377/6858154162600000 | 2162 | 89:43, 89:1548, 89:1539, 89:44, 89:1532, 89:1507, 89:1528 |
| 89:1592 | FHP | hi | 203931/500000 | 203930937317/500000000000 | 2177 | 89:43, 89:1548, 89:1539, 89:44, 89:43 |
| 89:1593 | HPR | hi | 17959/31250 | 177358337744426861/308616937317000000 | 2184 | 89:43, 89:1548, 89:1539, 89:44, 89:57, 89:194 |
| 89:1603 | EFP | hi | 335849/500000 | 300998546193/448116500000 | 2289 | 89:57, 89:1520, 89:1547, 89:1539, 89:31, 89:1514, 89:166 |
| 89:1606 | BHQ | hi | 559539/1000000 | 2507383/4481165 | 2317 | 89:57, 89:1585, 89:1553, 89:1496, 89:6, 89:109 |
| 89:1621 | CPR | lo | 41331/200000 | 142323562159/688698000000 | 2606 | 89:95, 89:1548, 89:104, 89:1536, 89:1556, 89:1554, 89:1513 |
| 89:1622 | AFQ | lo | 97677/1000000 | 36302098863/371653722200 | 2630 | 89:101, 89:1584, 89:1568, 89:98, 89:1533, 89:1495 |
| 89:1623 | APQ | lo | 53507/500000 | 198862003323/1858268611000 | 2632 | 89:101, 89:1584, 89:1568, 89:98, 89:8, 89:44, 89:1547 |
| 89:1626 | FPQ | lo | 93701/1000000 | 69649217423/743307444400 | 2655 | 89:101, 89:1584, 89:1568, 89:98, 89:1536, 89:1519 |
| 89:1627 | CEP | lo | 81421/500000 | 3796541041/23314125000 | 2680 | 89:1606, 89:1552, 89:1589, 89:104, 89:68, 89:1511, 89:1486 |
| 89:1628 | BFP | hi | 36533/125000 | 9133246893/31250000000 | 2715 | 89:109, 89:1520, 89:1590, 89:104, 89:95, 89:1507 |
| 89:1663 | ABQ | lo | 51159/500000 | 24549199725499/239929843043000 | 3117 | 89:201, 89:220, 89:1584, 89:1626, 89:1533, 89:8, 89:1532 |
| 89:1672 | CPQ | lo | 3777/40000 | 45310780155/479859686086 | 3135 | 89:201, 89:220, 89:1584, 89:1626, 89:134, 89:1621 |
| 89:1680 | HQR | hi | 83267/250000 | 2497277796709237/7497807595093750 | 3151 | 89:201, 89:220, 89:1584, 89:1626, 89:194, 89:1593 |
| 89:1681 | AEQ | lo | 121217/500000 | 17415545401/71836000000 | 3157 | 89:1593, 89:220, 89:1585, 89:1552, 89:32, 89:1542, 89:1541 |
| 89:1683 | AQR | lo | 186051/1000000 | 133652053/718360000 | 3162 | 89:1593, 89:220, 89:1585, 89:1552, 89:1523, 89:1547 |
| 89:1684 | BEQ | lo | 16803/62500 | 2414128299/8979500000 | 3164 | 89:1593, 89:220, 89:1585, 89:1552, 89:1526, 89:1588, 89:1557 |
| 89:1686 | BQR | lo | 217521/1000000 | 125006797/574688000 | 3169 | 89:1593, 89:220, 89:1585, 89:1552, 89:1528, 89:1590 |
| 89:1687 | CEQ | lo | 156429/1000000 | 7023307/44897500 | 3170 | 89:1593, 89:220, 89:1585, 89:1552, 89:1511, 89:1627, 89:128 |
| 89:1688 | CQR | lo | 67949/500000 | 7809921/57468800 | 3175 | 89:1593, 89:220, 89:1585, 89:1552, 89:1513, 89:1621 |
| 89:1699 | AFR | lo | 488717/1000000 | 488717/1000000 | 3258 | 89:1622, 89:1683, 89:1584 |
| 89:1701 | AHQ | lo | 92761/250000 | 92761/250000 | 3259 | 89:1539, 89:1623, 89:1552 |
| 89:1704 | AHQ | hi | 257691/500000 | 257691/500000 | 3262 | 89:1683, 89:57, 89:1585 |
| 89:1705 | AQR | hi | 330389/1000000 | 330389/1000000 | 3262 | 89:1701, 89:57, 89:1585 |
| 89:1708 | BCH | lo | 376693/1000000 | 376693/1000000 | 3275 | 89:104, 89:1587, 89:142 |
| 89:1709 | BEF | lo | 483027/1000000 | 483027/1000000 | 3285 | 89:98, 89:1684, 89:1571 |
| 89:1712 | BFH | lo | 60239/125000 | 60239/125000 | 3296 | 89:104, 89:1536, 89:1548 |
| 89:1713 | BFR | lo | 51551/100000 | 51551/100000 | 3303 | 89:98, 89:1686, 89:1584 |
| 89:1714 | BHQ | lo | 188573/500000 | 188573/500000 | 3304 | 89:104, 89:1589, 89:1552 |
| 89:1719 | CEH | lo | 342429/1000000 | 342429/1000000 | 3315 | 89:144, 89:1687, 89:172 |
| 89:1721 | CFP | lo | 140563/500000 | 140563/500000 | 3327 | 89:1672, 89:136, 89:1626 |
| 89:1722 | CHR | lo | 211849/500000 | 211849/500000 | 3335 | 89:144, 89:1688, 89:1585 |
| 89:1728 | FPR | lo | 39169/100000 | 39169/100000 | 3359 | 89:1626, 89:1584, 89:220 |
| 89:1729 | HPR | lo | 217729/500000 | 217729/500000 | 3360 | 89:1552, 89:1585, 89:220 |
| 89:1731 | AEH | lo | 353239/500000 | 353239/500000 | 4 | 89:1681, 89:172, 89:1701 |
| 89:1734 | AHR | lo | 756843/1000000 | 756843/1000000 | 8 | 89:1539, 89:1729, 89:1547 |
| 89:1736 | APR | hi | 344403/1000000 | 344403/1000000 | 8 | 89:57, 89:1539, 89:1729 |
| 89:1738 | BEH | lo | 369497/500000 | 369497/500000 | 15 | 89:1684, 89:172, 89:1714 |
| 89:1740 | BHR | lo | 801393/1000000 | 801393/1000000 | 19 | 89:104, 89:1729, 89:1590 |
| 89:1741 | BPR | hi | 235771/500000 | 235771/500000 | 19 | 89:109, 89:104, 89:1729 |
| 89:1742 | ACE | lo | 51601/500000 | 97548351/945211024 | 40 | 89:2, 89:1719, 89:1731, 89:68, 89:85 |
| 89:1744 | ABR | lo | 96443/1000000 | 43217937/448116500 | 98 | 89:0, 89:1740, 89:6, 89:1556, 89:73 |
| 89:1747 | ABF | lo | 39503/250000 | 453499/2870025 | 220 | 89:8, 89:1699, 89:1744, 89:44, 89:1736 |
| 89:1749 | APR | lo | 211487/1000000 | 494481/2338112 | 223 | 89:8, 89:1728, 89:44, 89:1590, 89:1628 |
| 89:1750 | BFP | lo | 17947/100000 | 164827/918408 | 223 | 89:8, 89:1728, 89:44, 89:1590, 89:1736 |
| 89:1753 | AHP | lo | 127593/1000000 | 12033177/94308400 | 245 | 89:8, 89:1729, 89:1749, 89:104, 89:1741 |
| 89:1757 | AER | lo | 4261/31250 | 24332795937/178455472000 | 300 | 89:1742, 89:1560, 89:1731, 89:128, 89:123 |
| 89:1762 | EHR | lo | 308627/1000000 | 111919966500/362637303803 | 416 | 89:1757, 89:194, 89:1734, 89:166, 89:49 |
| 89:1764 | AEP | lo | 25839/125000 | 53267959027/257691000000 | 446 | 89:1731, 89:1623, 89:1681, 89:1753, 89:1704 |
| 89:1765 | HQR | lo | 51577/250000 | 46225148897/224058250000 | 463 | 89:1701, 89:1762, 89:1734, 89:172, 89:33 |
| 89:1766 | EHR | hi | 614807/1000000 | 57030033461/92761000000 | 463 | 89:33, 89:1680, 89:1734, 89:172, 89:1701 |
| 89:1769 | EPQ | lo | 137893/1000000 | 1187272349/8610075000 | 471 | 89:1764, 89:220, 89:1623, 89:282, 89:1736 |
| 89:1771 | APR | lo | 110913/500000 | 3015816539/13595400000 | 485 | 89:44, 89:1729, 89:1753, 89:1728, 89:1592 |
| 89:1772 | FHP | lo | 262699/1000000 | 3015816539/11480100000 | 485 | 89:44, 89:1729, 89:1753, 89:1728, 89:1736 |
| 89:1779 | HPQ | lo | 171267/1000000 | 7073117039/41298625000 | 511 | 89:1701, 89:220, 89:1623, 89:1765, 89:1705 |
| 89:1783 | BER | lo | 5397/40000 | 16732281/124011400 | 533 | 89:1556, 89:166, 89:1713, 89:128, 89:139 |
| 89:1784 | BCR | lo | 132621/1000000 | 5014194081/37808440960 | 549 | 89:68, 89:1740, 89:1708, 89:1783, 89:85 |
| 89:1785 | BER | lo | 17061/125000 | 97428753/713821888 | 551 | 89:68, 89:1762, 89:1738, 89:128, 89:123 |
| 89:1788 | EFH | lo | 6033/25000 | 896874795/3716537222 | 665 | 89:1709, 89:194, 89:1712, 89:166, 89:101 |
| 89:1789 | EHR | lo | 317879/1000000 | 1181410155/3716537222 | 667 | 89:1785, 89:194, 89:1740, 89:166, 89:101 |
| 89:1794 | BPR | lo | 11237/40000 | 5728940863/20393100000 | 736 | 89:1750, 89:1729, 89:104, 89:1728, 89:1592 |
| 89:1800 | BQR | lo | 28817/125000 | 1324866239/5746880000 | 763 | 89:1740, 89:220, 89:1794, 89:1765, 89:1593 |
| 89:1801 | CEF | lo | 95949/500000 | 117980451/614807000 | 776 | 89:1719, 89:166, 89:128, 89:1788, 89:1766 |
| 89:1802 | CFR | lo | 3573/15625 | 7679934081/33584900000 | 792 | 89:1801, 89:1728, 89:1721, 89:166, 89:1603 |
| 89:1822 | FQR | lo | 211067/1000000 | 94582767/448116500 | 2138 | 89:33, 89:172, 89:1701, 89:1681, 89:1699, 89:166, 89:194 |
| 89:1823 | HQR | lo | 105069/500000 | 47083373669/224058250000 | 2142 | 89:33, 89:172, 89:1701, 89:1681, 89:1734, 89:1789 |
| 89:1828 | BPQ | lo | 69889/500000 | 14379359603827/102872312439000 | 2161 | 89:43, 89:1772, 89:1753, 89:44, 89:1663, 89:98, 89:1714 |
| 89:1829 | BPR | lo | 289287/1000000 | 29759708717054477/102872312439000000 | 2162 | 89:43, 89:1772, 89:1753, 89:44, 89:1744, 89:1713, 89:1740 |
| 89:1844 | APR | hi | 166591/500000 | 166591/500000 | 2275 | 89:57, 89:1729, 89:1771, 89:1753, 89:57 |
| 89:1847 | EHP | hi | 501559/1000000 | 89902723283/179246600000 | 2290 | 89:57, 89:1729, 89:1771, 89:1753, 89:33, 89:1789 |
| 89:1848 | HPR | hi | 273407/500000 | 273407/500000 | 2302 | 89:57, 89:1729, 89:1771, 89:1753, 89:57 |
| 89:1865 | CPR | lo | 55361/250000 | 9531759353/43043625000 | 2606 | 89:95, 89:1772, 89:104, 89:1750, 89:1784, 89:1802, 89:1722 |
| 89:1866 | AFQ | lo | 21203/200000 | 19700449951/185826861100 | 2630 | 89:101, 89:1822, 89:1800, 89:98, 89:1747, 89:1699 |
| 89:1867 | APQ | lo | 54559/500000 | 202771025823/1858268611000 | 2632 | 89:101, 89:1822, 89:1800, 89:98, 89:8, 89:44, 89:1771 |
| 89:1869 | FPQ | lo | 1562/15625 | 7430736449/74330744440 | 2655 | 89:101, 89:1822, 89:1800, 89:98, 89:1750, 89:1728 |
| 89:1910 | FQR | lo | 26487/125000 | 106278819/501559000 | 3108 | 89:1847, 89:1779, 89:1769, 89:172, 89:166, 89:194, 89:1728 |
| 89:1919 | EQR | lo | 17071/100000 | 3723509520/21811803913 | 3142 | 89:201, 89:220, 89:1910, 89:1869, 89:166, 89:282 |
| 89:1927 | AQR | lo | 213967/1000000 | 29250117747/136703500000 | 3162 | 89:1848, 89:220, 89:1823, 89:1779, 89:1734, 89:1771 |
| 89:1930 | BPQ | hi | 48579/250000 | 13281808549/68351750000 | 3167 | 89:1848, 89:220, 89:1823, 89:1779, 89:104, 89:1741 |
| 89:1931 | BQR | lo | 247469/1000000 | 67659870303/273407000000 | 3169 | 89:1848, 89:220, 89:1823, 89:1779, 89:1740, 89:1829 |
| 89:1933 | CQR | lo | 3929/25000 | 10742214159/68351750000 | 3175 | 89:1848, 89:220, 89:1823, 89:1779, 89:1722, 89:1865 |
| 89:1936 | FPQ | hi | 169161/1000000 | 11562410233336517/68351750000000000 | 3183 | 89:1848, 89:220, 89:1823, 89:1779, 89:1772, 89:201 |
| 89:1952 | AFR | hi | 360021/500000 | 360020843043/500000000000 | 3256 | 89:44, 89:1844, 89:201 |
| 89:1953 | AFR | lo | 265939/500000 | 265939/500000 | 3258 | 89:1866, 89:1927, 89:1910 |
| 89:1955 | AHQ | lo | 203989/500000 | 203989/500000 | 3259 | 89:1753, 89:1867, 89:1779 |
| 89:1958 | AHQ | hi | 7377/15625 | 7377/15625 | 3262 | 89:1927, 89:57, 89:1823 |
| 89:1959 | AQR | hi | 278117/1000000 | 278117/1000000 | 3262 | 89:1955, 89:57, 89:1823 |
| 89:1960 | AHR | lo | 832083/1000000 | 832083/1000000 | 3262 | 89:1955, 89:1927, 89:1823 |
| 89:1961 | HQR | hi | 17143/62500 | 17143/62500 | 3262 | 89:1955, 89:1927, 89:57 |
| 89:1969 | BFP | hi | 270477/1000000 | 270477/1000000 | 3300 | 89:1930, 89:98, 89:1936 |
| 89:1971 | BHQ | lo | 80809/200000 | 80809/200000 | 3304 | 89:104, 89:1828, 89:1779 |
| 89:1975 | BHR | lo | 215413/250000 | 215413/250000 | 3307 | 89:1971, 89:1931, 89:1823 |
| 89:1979 | CHR | lo | 230149/500000 | 230149/500000 | 3335 | 89:144, 89:1933, 89:1823 |
| 89:1986 | FHR | lo | 4303/40000 | 4303/40000 | 3355 | 89:1772, 89:1728, 89:1848 |
| 89:1987 | FPR | lo | 6326/15625 | 6326/15625 | 3359 | 89:1869, 89:1910, 89:220 |
| 89:1988 | HPR | lo | 94881/200000 | 94881/200000 | 3360 | 89:1779, 89:1823, 89:220 |
| 89:1992 | AEQ | hi | 79051/200000 | 79051/200000 | 4 | 89:33, 89:172, 89:1955 |
| 89:1994 | HPQ | hi | 235417/1000000 | 235417/1000000 | 7 | 89:1958, 89:1753, 89:1867 |
| 89:1995 | APR | hi | 58847/200000 | 58847/200000 | 8 | 89:57, 89:1753, 89:1988 |
| 89:2000 | BPR | hi | 86519/200000 | 86519/200000 | 19 | 89:109, 89:104, 89:1988 |
| 89:2004 | ABR | lo | 103173/1000000 | 92467389/896233000 | 98 | 89:0, 89:1975, 89:6, 89:1784, 89:73 |
| 89:2005 | ACR | lo | 78921/500000 | 157842005097/1000000000000 | 101 | 89:2004, 89:1979, 89:1960, 89:1784, 89:109 |
| 89:2019 | APR | lo | 119337/500000 | 29357/123000 | 223 | 89:8, 89:1987, 89:44, 89:1829, 89:1969 |
| 89:2028 | AHP | lo | 76649/500000 | 66316347/432595000 | 245 | 89:8, 89:1988, 89:2019, 89:104, 89:2000 |
| 89:2037 | AER | lo | 37699/250000 | 23375643/155014250 | 282 | 89:2005, 89:166, 89:1953, 89:128, 89:139 |
| 89:2049 | EHR | lo | 172471/500000 | 2483730367/7200420000 | 416 | 89:2037, 89:1986, 89:1960, 89:166, 89:1952 |
| 89:2059 | EPQ | hi | 101601/500000 | 16580354467/81595600000 | 450 | 89:1992, 89:1994, 89:1867, 89:172, 89:1955 |
| 89:2062 | HQR | lo | 48673/200000 | 54528116569/224058250000 | 463 | 89:1955, 89:2049, 89:1960, 89:172, 89:33 |
| 89:2065 | AEQ | lo | 163231/500000 | 4477242769/13714400000 | 464 | 89:1955, 89:1919, 89:1927, 89:172, 89:1961 |
| 89:2074 | AQR | lo | 120541/500000 | 2449424989/10160100000 | 472 | 89:2065, 89:220, 89:1867, 89:1919, 89:2059 |
| 89:2095 | AHQ | lo | 86837/200000 | 12775262123/29423500000 | 508 | 89:2028, 89:2074, 89:1960, 89:1867, 89:1995 |
| 89:2101 | AQR | lo | 71081/250000 | 956210101/3363100000 | 511 | 89:2095, 89:220, 89:1867, 89:2062, 89:1994 |

### Area contradiction

| Triangle | Lower reference | Upper reference | Lower value | Upper value |
| --- | --- | --- | --- | --- |
| AQR | 89:2101 | 89:1959 | 71081/250000 | 278117/1000000 |
