# BTTT +--+, AFP negative: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 125

| Property | Value |
| --- | --- |
| Scope | root/APQ+/AQS+/ARS-/CRS+/BRS+ |
| Packet | forest:root/APQ+/AQS+/ARS-/CRS+/BRS+ |
| Index | 5 |
| Context | 23 |
| Box present | yes |
| Parent box | 124 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 26337/250000 | 33/125 | 26337/250000 | 33/125 |
| b | 29303/250000 | 197087/500000 | 117213/1000000 | 197087/500000 |
| c | 625849/1000000 | 1/1 | 625849/1000000 | 1/1 |
| e | 26337/250000 | 33/125 | 26337/250000 | 33/125 |
| f | 29303/250000 | 197087/500000 | 117213/1000000 | 197087/500000 |
| h | 135501/250000 | 194457/200000 | 135501/250000 | 194457/200000 |
| p | 300611/1000000 | 175087/250000 | 300611/1000000 | 175087/250000 |
| q | 49587/250000 | 293503/500000 | 49587/250000 | 293503/500000 |
| u | 9728/15625 | 1/1 | 311297/500000 | 1/1 |
| v | 30667/62500 | 439011/500000 | 122669/250000 | 878021/1000000 |
| r | 541221/1000000 | 879639/1000000 | 270611/500000 | 879639/1000000 |
| w | 399099/500000 | 1/1 | 399099/500000 | 1/1 |
| j | 395701/1000000 | 733367/1000000 | 79141/200000 | 733367/1000000 |
| k | 30057/62500 | 205779/250000 | 30057/62500 | 823113/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 104 | A_EFS | actual EFS; occupants none | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 112 | A_EQR | actual EQR; occupants none | `1/1 * u * w + -1/1 * e * u + -1/1 * w + -1/1 * v * r + 1/1 * v + 1/1 * e * r + -93/1000` |
| 122 | A_FQR | actual FQR; occupants none | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -93/1000` |
| 137 | fb | contact order fb | `1/1 * f + -1/1 * b` |
| 168 | AREA_lo_ABR | earlier 124:305; ABR; lo; 159247/500000 | `1/1 * b * w + -1/1 * a * b + 1/1 * a * r + -159247/500000` |
| 191 | AREA_hi_AES | earlier 124:250; AES; hi; 559113/1000000 | `559113/1000000 + -1/1 * k + 1/1 * a + 1/1 * e * j + -1/1 * a * j` |
| 296 | AREA_lo_EFQ | earlier 124:351; EFQ; lo; 340163/1000000 | `-1/1 * f * v + 1/1 * e * f + 1/1 * v + 1/1 * u + -1340163/1000000 + -1/1 * e * u` |
| 298 | AREA_lo_EFR | earlier 124:174; EFR; lo; 379341/1000000 | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1379341/1000000 + -1/1 * e * r` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 168 | b | 29303/250000 | 197087/500000 | 10783663/92000000 | 197087/500000 | 117213/1000000 | 197087/500000 | `(13857/20000, -65369362523/250000000000); (267099/500000, -21951457/125000000); (13857/20000, -56456447657/250000000000); (267099/500000, -10783663/125000000); (223663/250000, -65369362523/250000000000); (92/125, -21951457/125000000); (223663/250000, -56456447657/250000000000); (92/125, -10783663/125000000)` |
| 1 | 191 | k | 30057/62500 | 205779/250000 | 30057/62500 | 823113/1000000 | 30057/62500 | 823113/1000000 | `(-1/1, 664461/1000000); (-1/1, 190083561237/250000000000); (-1/1, 181809938763/250000000000); (-1/1, 823113/1000000); (-1/1, 176690714679/250000000000); (-1/1, 195202785321/250000000000)` |
| 2 | 296 | v | 30667/62500 | 439011/500000 | 27072684389/55174250000 | 439011/500000 | 122669/250000 | 439011/500000 | `(220697/250000, -9635147153/12500000000); (220697/250000, -21274783/25000000); (302913/500000, -92704297433/125000000000); (302913/500000, -97234169/125000000); (220697/250000, -27072684389/62500000000); (220697/250000, -71652379/125000000); (302913/500000, -50498194681/125000000000); (302913/500000, -62512633/125000000)` |
| 3 | 104 | j | 395701/1000000 | 733367/1000000 | 17700883559/44732600000 | 733367/1000000 | 49463/125000 | 733367/1000000 | `(223663/250000, -41006787973/62500000000); (92/125, -9961135771/15625000000); (223663/250000, -95015695517/125000000000); (92/125, -21799658459/31250000000); (223663/250000, -17700883559/50000000000); (92/125, -83855438239/250000000000); (223663/250000, -55281130111/100000000000); (92/125, -245137403831/500000000000)` |
| 4 | 137 | f | 29303/250000 | 197087/500000 | 117213/1000000 | 197087/500000 | 117213/1000000 | 197087/500000 | `(1/1, -117213/1000000); (1/1, -197087/500000)` |
| 5 | 298 | r | 541221/1000000 | 879639/1000000 | 121051461219/223663000000 | 879639/1000000 | 270611/500000 | 879639/1000000 | `(223663/250000, -13247080541/20000000000); (92/125, -321878975087/500000000000); (223663/250000, -8542464559/10000000000); (92/125, -197927490613/250000000000); (223663/250000, -121051461219/250000000000); (92/125, -58201221/125000000); (223663/250000, -91498694681/125000000000); (92/125, -83681633/125000000)` |
| 6 | 104 | j | 49463/125000 | 733367/1000000 | 70803677789/178930400000 | 733367/1000000 | 79141/200000 | 733367/1000000 | `(223663/250000, -164027245783/250000000000); (92/125, -39844556641/62500000000); (223663/250000, -95015695517/125000000000); (92/125, -21799658459/31250000000); (223663/250000, -70803677789/200000000000); (92/125, -335422312069/1000000000000); (223663/250000, -55281130111/100000000000); (92/125, -245137403831/500000000000)` |
| 7 | 112 | u | 9728/15625 | 1/1 | 35947013969/57737500000 | 1/1 | 622593/1000000 | 1/1 | `(13857/20000, -19033437213/31250000000); (267099/500000, -65400504759/125000000000); (13857/20000, -107841041907/250000000000); (267099/500000, -86374553721/250000000000); (13857/20000, -46216971037/62500000000); (267099/500000, -149978762491/250000000000); (13857/20000, -346425092343/500000000000); (267099/500000, -276646849029/500000000000); (223663/250000, -25339749713/31250000000); (92/125, -90625754759/125000000000); (223663/250000, -158291541907/250000000000); (92/125, -136825053721/250000000000); (223663/250000, -58829596037/62500000000); (92/125, -200429262491/250000000000); (223663/250000, -447326092343/500000000000); (92/125, -377547849029/500000000000)` |
| 8 | 122 | v | 122669/250000 | 439011/500000 | 122669/250000 | 111571/127071 | 122669/250000 | 878021/1000000 | `(-424009/1000000, 5725557631/25000000000); (-18381/125000, 3976294481/500000000000); (-424009/1000000, 76430408913/500000000000); (-18381/125000, -17052224613/250000000000); (-381213/500000, 14185982631/25000000000); (-97093/200000, 173184794481/500000000000); (-381213/500000, 245638908913/500000000000); (-97093/200000, 67552025387/250000000000); (-424009/1000000, 331009/1000000); (-18381/125000, 1689/31250); (-381213/500000, 334713/500000); (-97093/200000, 78493/200000)` |
| 9 | 112 | u | 622593/1000000 | 1/1 | 71894104401/115475000000 | 1/1 | 311297/500000 | 1/1 | `(13857/20000, -19033437213/31250000000); (267099/500000, -65400504759/125000000000); (13857/20000, -215682313203/500000000000); (267099/500000, -172749336831/500000000000); (13857/20000, -46216971037/62500000000); (267099/500000, -149978762491/250000000000); (13857/20000, -692850305047/1000000000000); (267099/500000, -553293818419/1000000000000); (223663/250000, -25339749713/31250000000); (92/125, -90625754759/125000000000); (223663/250000, -316583313203/500000000000); (92/125, -273650336831/500000000000); (223663/250000, -58829596037/62500000000); (92/125, -200429262491/250000000000); (223663/250000, -894652305047/1000000000000); (92/125, -755095818419/1000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 125:12 | ABR | lo | 159247/500000 | earlier 124:305; ABR; lo; 159247/500000 |
| 125:14 | ABS | lo | 66247/500000 | earlier 124:304; ABS; lo; 66247/500000 |
| 125:16 | ACE | lo | 93/1000 | occupants none |
| 125:18 | ACF | lo | 327249/1000000 | earlier 124:307; ACF; lo; 327249/1000000 |
| 125:20 | ACH | lo | 82941/250000 | earlier 124:344; ACH; lo; 82941/250000 |
| 125:22 | ACP | lo | 3157/31250 | earlier 124:22; ACP; lo; 3157/31250 |
| 125:29 | ACS | hi | 123837/200000 | earlier 124:249; ACS; hi; 123837/200000 |
| 125:30 | AEF | lo | 173379/500000 | earlier 124:309; AEF; lo; 173379/500000 |
| 125:32 | AEH | lo | 16187/50000 | earlier 124:345; AEH; lo; 16187/50000 |
| 125:34 | AEP | lo | 93/1000 | occupants none |
| 125:36 | AEQ | lo | 41141/125000 | earlier 124:36; AEQ; lo; 41141/125000 |
| 125:37 | AEQ | hi | 772673/1000000 | vertex maximum 772673/1000000 |
| 125:38 | AER | lo | 13857/20000 | occupants P, S |
| 125:41 | AES | hi | 559113/1000000 | earlier 124:250; AES; hi; 559113/1000000 |
| 125:44 | AFP | lo | 5329/40000 | earlier 124:293; AFP; lo; 5329/40000 |
| 125:48 | AFR | lo | 13857/100000 | earlier 124:354; AFR; lo; 13857/100000 |
| 125:52 | AHP | lo | 6887/50000 | earlier 124:339; AHP; lo; 6887/50000 |
| 125:56 | AHR | lo | 24433/200000 | earlier 124:322; AHR; lo; 24433/200000 |
| 125:58 | AHS | lo | 16459/125000 | earlier 124:341; AHS; lo; 16459/125000 |
| 125:64 | APS | lo | 93/1000 | occupants none |
| 125:68 | AQS | lo | 93/1000 | occupants none |
| 125:77 | BCH | hi | 171664111659/200000000000 | vertex maximum 171664111659/200000000000 |
| 125:78 | BCP | lo | 65727/500000 | earlier 124:284; BCP; lo; 65727/500000 |
| 125:82 | BCR | lo | 183417/500000 | earlier 124:313; BCR; lo; 183417/500000 |
| 125:84 | BCS | lo | 162093/500000 | earlier 124:314; BCS; lo; 162093/500000 |
| 125:85 | BCS | hi | 609929/1000000 | earlier 124:254; BCS; hi; 609929/1000000 |
| 125:86 | BEF | lo | 306533/1000000 | earlier 124:86; BEF; lo; 306533/1000000 |
| 125:90 | BEP | lo | 93/1000 | occupants none |
| 125:94 | BER | lo | 19653/50000 | earlier 124:315; BER; lo; 19653/50000 |
| 125:95 | BER | hi | 209529624967/250000000000 | vertex maximum 209529624967/250000000000 |
| 125:96 | BES | lo | 6033/20000 | earlier 124:96; BES; lo; 6033/20000 |
| 125:108 | BHP | lo | 93/1000 | occupants none |
| 125:112 | BHR | lo | 168863/500000 | earlier 124:348; BHR; lo; 168863/500000 |
| 125:114 | BHS | lo | 75863/500000 | earlier 124:342; BHS; lo; 75863/500000 |
| 125:118 | BPS | lo | 93/1000 | occupants none |
| 125:124 | BRS | lo | 93/1000 | occupants none |
| 125:132 | CEQ | lo | 93/1000 | occupants none |
| 125:136 | CES | lo | 46701/500000 | earlier 124:136; CES; lo; 46701/500000 |
| 125:144 | CFR | lo | 23417/62500 | earlier 124:318; CFR; lo; 23417/62500 |
| 125:148 | CHP | lo | 93/1000 | occupants none |
| 125:152 | CHR | lo | 209569/500000 | earlier 124:350; CHR; lo; 209569/500000 |
| 125:160 | CPS | lo | 24933/250000 | earlier 124:160; CPS; lo; 24933/250000 |
| 125:166 | CRS | lo | 2948/15625 | earlier 124:240; CRS; lo; 2948/15625 |
| 125:170 | EFP | lo | 120533/1000000 | earlier 124:170; EFP; lo; 120533/1000000 |
| 125:172 | EFQ | lo | 340163/1000000 | earlier 124:351; EFQ; lo; 340163/1000000 |
| 125:174 | EFR | lo | 379341/1000000 | earlier 124:174; EFR; lo; 379341/1000000 |
| 125:175 | EFR | hi | 85263243219/125000000000 | vertex maximum 85263243219/125000000000 |
| 125:176 | EFS | lo | 93/1000 | occupants none |
| 125:178 | EHP | lo | 93/1000 | occupants none |
| 125:182 | EHR | lo | 379341/1000000 | earlier 124:182; EHR; lo; 379341/1000000 |
| 125:184 | EHS | lo | 93/1000 | occupants none |
| 125:185 | EHS | hi | 434917/1000000 | earlier 124:264; EHS; hi; 434917/1000000 |
| 125:186 | EPQ | lo | 17891/125000 | earlier 124:186; EPQ; lo; 17891/125000 |
| 125:192 | EQR | lo | 93/1000 | occupants none |
| 125:196 | ERS | lo | 193341/1000000 | earlier 124:196; ERS; lo; 193341/1000000 |
| 125:198 | FHP | lo | 18767/200000 | earlier 124:277; FHP; lo; 18767/200000 |
| 125:204 | FHS | lo | 46639/500000 | earlier 124:204; FHS; lo; 46639/500000 |
| 125:206 | FPQ | lo | 279491/1000000 | earlier 124:352; FPQ; lo; 279491/1000000 |
| 125:210 | FPS | lo | 93491/1000000 | earlier 124:338; FPS; lo; 93491/1000000 |
| 125:216 | FRS | lo | 93/1000 | occupants none |
| 125:220 | HPR | lo | 77159/250000 | earlier 124:321; HPR; lo; 77159/250000 |
| 125:225 | HQR | hi | 3930828989/7812500000 | vertex maximum 3930828989/7812500000 |
| 125:226 | HRS | lo | 93/1000 | occupants none |
| 125:228 | PQR | lo | 131473/1000000 | earlier 124:228; PQR; lo; 131473/1000000 |
| 125:232 | PRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 357 | plu | AEQ * CER = ACE * EQR + AER * CEQ | circuit EACQR |
| 806 | plu | BFS * EHS = BES * FHS + BHS * EFS | circuit SBEFH |
| 2472 | support | HPR * HQR >= 1023/1000 * (HPR - HPQ) | pentagon HPCQR |
| 3045 | bary | outer AES; fans EPS, APS, AEP; target APQ; sign -1; vertices none 0; AEQ -1; AQS 1 | container AES; inner P; line AQ |
| 3053 | bary | outer AES; fans EPS, APS, AEP; target BPR; sign -1; vertices ABR 1; BER -1; BRS 1 | container AES; inner P; line BR |
| 3280 | bary | outer BCH; fans CHP, BHP, BCP; target EPS; sign 1; vertices BES 1; CES 1; EHS 1 | container BCH; inner P; line ES |
| 3881 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 4118 | four | 1 * AEP + 1 * APS + -1 * AES + 1 * EPS = 0 | vertices AEPS |
| 4171 | four | 1 * BEP + 1 * BPS + -1 * BES + 1 * EPS = 0 | vertices BEPS |
| 4253 | four | 1 * HPR + -1 * HRS + -1 * HPS + -1 * PRS = 0 | vertices HPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 125:237 | CER | lo | 47293/500000 | 1461681/15453460 | 357 | 125:16, 125:192, 125:38, 125:132, 125:37 |
| 125:240 | HPQ | lo | 78419/500000 | 10108721333879/64453125000000 | 2472 | 125:220, 125:225 |
| 125:250 | EPS | lo | 115651/1000000 | 213474511659/1845850663000 | 3280 | 125:77, 125:148, 125:108, 125:78, 125:96, 125:136, 125:184 |
| 125:256 | HPS | lo | 122637/1000000 | 82987540367/676692406500 | 3881 | 125:175, 125:216, 125:196, 125:176, 125:178, 125:198, 125:220 |
| 125:258 | AES | lo | 301651/1000000 | 301651/1000000 | 4118 | 125:34, 125:64, 125:250 |
| 125:259 | BES | lo | 301651/1000000 | 301651/1000000 | 4171 | 125:90, 125:118, 125:250 |
| 125:260 | HPR | lo | 308637/1000000 | 308637/1000000 | 4253 | 125:226, 125:256, 125:232 |
| 125:261 | BFS | lo | 4857/50000 | 21123959989/217458500000 | 806 | 125:259, 125:204, 125:114, 125:176, 125:185 |
| 125:264 | APQ | hi | 468857/1000000 | 131071762463/279556500000 | 3045 | 125:41, 125:250, 125:64, 125:34, 125:37, 125:68 |
| 125:266 | BPR | hi | 443999/1000000 | 10343564004447459/23296375000000000 | 3053 | 125:41, 125:250, 125:64, 125:34, 125:12, 125:95, 125:124 |

## Stage 126

| Property | Value |
| --- | --- |
| Scope | root/APQ+/AQS+/ARS-/CRS+/BRS+ |
| Packet | forest:root/APQ+/AQS+/ARS-/CRS+/BRS+ |
| Index | 6 |
| Context | 23 |
| Box present | yes |
| Parent box | 125 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 26337/250000 | 33/125 | 26337/250000 | 33/125 |
| b | 117213/1000000 | 197087/500000 | 117213/1000000 | 197087/500000 |
| c | 625849/1000000 | 1/1 | 625849/1000000 | 1/1 |
| e | 26337/250000 | 33/125 | 26337/250000 | 33/125 |
| f | 117213/1000000 | 197087/500000 | 117213/1000000 | 197087/500000 |
| h | 135501/250000 | 194457/200000 | 135501/250000 | 194457/200000 |
| p | 300611/1000000 | 175087/250000 | 300611/1000000 | 175087/250000 |
| q | 49587/250000 | 293503/500000 | 49587/250000 | 293503/500000 |
| u | 311297/500000 | 1/1 | 311297/500000 | 1/1 |
| v | 122669/250000 | 878021/1000000 | 122669/250000 | 878021/1000000 |
| r | 270611/500000 | 879639/1000000 | 270611/500000 | 879639/1000000 |
| w | 399099/500000 | 1/1 | 399099/500000 | 1/1 |
| j | 79141/200000 | 733367/1000000 | 79141/200000 | 733367/1000000 |
| k | 30057/62500 | 823113/1000000 | 30057/62500 | 823113/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 126:12 | ABR | lo | 159247/500000 | earlier 125:12; ABR; lo; 159247/500000 |
| 126:14 | ABS | lo | 66247/500000 | earlier 125:14; ABS; lo; 66247/500000 |
| 126:18 | ACF | lo | 327249/1000000 | earlier 125:18; ACF; lo; 327249/1000000 |
| 126:20 | ACH | lo | 82941/250000 | earlier 125:20; ACH; lo; 82941/250000 |
| 126:22 | ACP | lo | 3157/31250 | earlier 125:22; ACP; lo; 3157/31250 |
| 126:29 | ACS | hi | 123837/200000 | earlier 125:29; ACS; hi; 123837/200000 |
| 126:30 | AEF | lo | 173379/500000 | earlier 125:30; AEF; lo; 173379/500000 |
| 126:32 | AEH | lo | 16187/50000 | earlier 125:32; AEH; lo; 16187/50000 |
| 126:36 | AEQ | lo | 41141/125000 | earlier 125:36; AEQ; lo; 41141/125000 |
| 126:40 | AES | lo | 301651/1000000 | earlier 125:258; AES; lo; 301651/1000000 |
| 126:41 | AES | hi | 559113/1000000 | earlier 125:41; AES; hi; 559113/1000000 |
| 126:44 | AFP | lo | 5329/40000 | earlier 125:44; AFP; lo; 5329/40000 |
| 126:48 | AFR | lo | 13857/100000 | earlier 125:48; AFR; lo; 13857/100000 |
| 126:52 | AHP | lo | 6887/50000 | earlier 125:52; AHP; lo; 6887/50000 |
| 126:56 | AHR | lo | 24433/200000 | earlier 125:56; AHR; lo; 24433/200000 |
| 126:58 | AHS | lo | 16459/125000 | earlier 125:58; AHS; lo; 16459/125000 |
| 126:61 | APQ | hi | 468857/1000000 | earlier 125:264; APQ; hi; 468857/1000000 |
| 126:78 | BCP | lo | 65727/500000 | earlier 125:78; BCP; lo; 65727/500000 |
| 126:82 | BCR | lo | 183417/500000 | earlier 125:82; BCR; lo; 183417/500000 |
| 126:84 | BCS | lo | 162093/500000 | earlier 125:84; BCS; lo; 162093/500000 |
| 126:85 | BCS | hi | 609929/1000000 | earlier 125:85; BCS; hi; 609929/1000000 |
| 126:86 | BEF | lo | 306533/1000000 | earlier 125:86; BEF; lo; 306533/1000000 |
| 126:94 | BER | lo | 19653/50000 | earlier 125:94; BER; lo; 19653/50000 |
| 126:96 | BES | lo | 301651/1000000 | earlier 125:259; BES; lo; 301651/1000000 |
| 126:106 | BFS | lo | 4857/50000 | earlier 125:261; BFS; lo; 4857/50000 |
| 126:112 | BHR | lo | 168863/500000 | earlier 125:112; BHR; lo; 168863/500000 |
| 126:114 | BHS | lo | 75863/500000 | earlier 125:114; BHS; lo; 75863/500000 |
| 126:117 | BPR | hi | 443999/1000000 | earlier 125:266; BPR; hi; 443999/1000000 |
| 126:134 | CER | lo | 47293/500000 | earlier 125:237; CER; lo; 47293/500000 |
| 126:136 | CES | lo | 46701/500000 | earlier 125:136; CES; lo; 46701/500000 |
| 126:144 | CFR | lo | 23417/62500 | earlier 125:144; CFR; lo; 23417/62500 |
| 126:152 | CHR | lo | 209569/500000 | earlier 125:152; CHR; lo; 209569/500000 |
| 126:160 | CPS | lo | 24933/250000 | earlier 125:160; CPS; lo; 24933/250000 |
| 126:166 | CRS | lo | 2948/15625 | earlier 125:166; CRS; lo; 2948/15625 |
| 126:170 | EFP | lo | 120533/1000000 | earlier 125:170; EFP; lo; 120533/1000000 |
| 126:172 | EFQ | lo | 340163/1000000 | earlier 125:172; EFQ; lo; 340163/1000000 |
| 126:174 | EFR | lo | 379341/1000000 | earlier 125:174; EFR; lo; 379341/1000000 |
| 126:182 | EHR | lo | 379341/1000000 | earlier 125:182; EHR; lo; 379341/1000000 |
| 126:185 | EHS | hi | 434917/1000000 | earlier 125:185; EHS; hi; 434917/1000000 |
| 126:186 | EPQ | lo | 17891/125000 | earlier 125:186; EPQ; lo; 17891/125000 |
| 126:190 | EPS | lo | 115651/1000000 | earlier 125:250; EPS; lo; 115651/1000000 |
| 126:196 | ERS | lo | 193341/1000000 | earlier 125:196; ERS; lo; 193341/1000000 |
| 126:204 | FHS | lo | 46639/500000 | earlier 125:204; FHS; lo; 46639/500000 |
| 126:206 | FPQ | lo | 279491/1000000 | earlier 125:206; FPQ; lo; 279491/1000000 |
| 126:210 | FPS | lo | 93491/1000000 | earlier 125:210; FPS; lo; 93491/1000000 |
| 126:218 | HPQ | lo | 78419/500000 | earlier 125:240; HPQ; lo; 78419/500000 |
| 126:220 | HPR | lo | 308637/1000000 | earlier 125:260; HPR; lo; 308637/1000000 |
| 126:222 | HPS | lo | 122637/1000000 | earlier 125:256; HPS; lo; 122637/1000000 |
| 126:228 | PQR | lo | 131473/1000000 | earlier 125:228; PQR; lo; 131473/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 127

| Property | Value |
| --- | --- |
| Scope | root/APQ+/AQS+/ARS-/CRS+/BRS+/BPQ+ |
| Packet | forest:root/APQ+/AQS+/ARS-/CRS+/BRS+/BPQ+ |
| Index | 0 |
| Context | 24 |
| Box present | yes |
| Parent box | 126 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 26337/250000 | 33/125 | 26337/250000 | 33/125 |
| b | 117213/1000000 | 197087/500000 | 117213/1000000 | 197087/500000 |
| c | 625849/1000000 | 1/1 | 625849/1000000 | 1/1 |
| e | 26337/250000 | 33/125 | 26337/250000 | 33/125 |
| f | 117213/1000000 | 197087/500000 | 117213/1000000 | 197087/500000 |
| h | 135501/250000 | 194457/200000 | 135501/250000 | 194457/200000 |
| p | 300611/1000000 | 175087/250000 | 3373/10000 | 175087/250000 |
| q | 49587/250000 | 293503/500000 | 49587/250000 | 275667/500000 |
| u | 311297/500000 | 1/1 | 311297/500000 | 1/1 |
| v | 122669/250000 | 878021/1000000 | 122669/250000 | 878021/1000000 |
| r | 270611/500000 | 879639/1000000 | 270611/500000 | 879639/1000000 |
| w | 399099/500000 | 1/1 | 399099/500000 | 1/1 |
| j | 79141/200000 | 733367/1000000 | 79141/200000 | 733367/1000000 |
| k | 30057/62500 | 823113/1000000 | 30057/62500 | 823113/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 72 | A_BPQ | actual BPQ; occupants none | `1/1 * p * v + -1/1 * b * v + -1/1 * q * u + 1/1 * b * q + -93/1000` |
| 90 | A_CHP | actual CHP; occupants none | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 72 | p | 300611/1000000 | 175087/250000 | 296156786061/878021000000 | 175087/250000 | 3373/10000 | 175087/250000 | `(122669/250000, -7836091143/31250000000); (122669/250000, -41464796473/125000000000); (122669/250000, -223587642637/500000000000); (122669/250000, -26280977009/62500000000); (122669/250000, -40701580233/125000000000); (122669/250000, -25411006067/62500000000); (122669/250000, -66871487171/100000000000); (122669/250000, -32101760929/50000000000); (878021/1000000, -296156786061/1000000000000); (878021/1000000, -242199849907/500000000000); (878021/1000000, -492577154759/1000000000000); (878021/1000000, -286588480087/500000000000); (878021/1000000, -371014511349/1000000000000); (878021/1000000, -279628712551/500000000000); (878021/1000000, -142823348239/200000000000); (878021/1000000, -79471654661/100000000000)` |
| 1 | 90 | q | 49587/250000 | 293503/500000 | 49587/250000 | 1102666539/2000000000 | 49587/250000 | 275667/500000 | `(-625849/1000000, 15848678049/250000000000); (-1/1, 665465127/2500000000); (-625849/1000000, 37510372893/200000000000); (-1/1, 1102666539/2000000000); (-625849/1000000, -33344688999/250000000000); (-1/1, 4338286413/62500000000); (-625849/1000000, -33086852043/200000000000); (-1/1, 9917357241/50000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 127:0 | ABC | lo | 93/1000 | occupants none |
| 127:3 | ABE | hi | 33/125 | vertex maximum 33/125 |
| 127:4 | ABF | lo | 93/1000 | occupants none |
| 127:6 | ABH | lo | 93/1000 | occupants none |
| 127:8 | ABP | lo | 93/1000 | occupants none |
| 127:12 | ABR | lo | 159247/500000 | earlier 126:12; ABR; lo; 159247/500000 |
| 127:13 | ABR | hi | 13058419/25000000 | vertex maximum 13058419/25000000 |
| 127:14 | ABS | lo | 66247/500000 | earlier 126:14; ABS; lo; 66247/500000 |
| 127:16 | ACE | lo | 93/1000 | occupants none |
| 127:18 | ACF | lo | 327249/1000000 | earlier 126:18; ACF; lo; 327249/1000000 |
| 127:20 | ACH | lo | 82941/250000 | earlier 126:20; ACH; lo; 82941/250000 |
| 127:21 | ACH | hi | 866937/1000000 | vertex maximum 866937/1000000 |
| 127:22 | ACP | lo | 3157/31250 | earlier 126:22; ACP; lo; 3157/31250 |
| 127:25 | ACQ | hi | 878021/1000000 | vertex maximum 878021/1000000 |
| 127:26 | ACR | lo | 13857/20000 | occupants P, S |
| 127:27 | ACR | hi | 246830052343/250000000000 | vertex maximum 246830052343/250000000000 |
| 127:29 | ACS | hi | 123837/200000 | earlier 126:29; ACS; hi; 123837/200000 |
| 127:31 | AEF | hi | 223663/250000 | vertex maximum 223663/250000 |
| 127:32 | AEH | lo | 16187/50000 | earlier 126:32; AEH; lo; 16187/50000 |
| 127:33 | AEH | hi | 866937/1000000 | vertex maximum 866937/1000000 |
| 127:34 | AEP | lo | 93/1000 | occupants none |
| 127:36 | AEQ | lo | 41141/125000 | earlier 126:36; AEQ; lo; 41141/125000 |
| 127:37 | AEQ | hi | 772673/1000000 | vertex maximum 772673/1000000 |
| 127:38 | AER | lo | 13857/20000 | occupants P, S |
| 127:39 | AER | hi | 223663/250000 | vertex maximum 223663/250000 |
| 127:40 | AES | lo | 301651/1000000 | earlier 126:40; AES; lo; 301651/1000000 |
| 127:41 | AES | hi | 559113/1000000 | earlier 126:41; AES; hi; 559113/1000000 |
| 127:42 | AFH | lo | 93/1000 | occupants none |
| 127:46 | AFQ | lo | 279/1000 | occupants S |
| 127:47 | AFQ | hi | 53092909321/62500000000 | vertex maximum 53092909321/62500000000 |
| 127:48 | AFR | lo | 13857/100000 | earlier 126:48; AFR; lo; 13857/100000 |
| 127:49 | AFR | hi | 352879881789/500000000000 | vertex maximum 352879881789/500000000000 |
| 127:52 | AHP | lo | 6887/50000 | earlier 126:52; AHP; lo; 6887/50000 |
| 127:56 | AHR | lo | 24433/200000 | earlier 126:56; AHR; lo; 24433/200000 |
| 127:58 | AHS | lo | 16459/125000 | earlier 126:58; AHS; lo; 16459/125000 |
| 127:60 | APQ | lo | 93/1000 | occupants none |
| 127:61 | APQ | hi | 468857/1000000 | earlier 126:61; APQ; hi; 468857/1000000 |
| 127:66 | AQR | lo | 279/1000 | occupants S |
| 127:67 | AQR | hi | 21440750287/31250000000 | vertex maximum 21440750287/31250000000 |
| 127:68 | AQS | lo | 93/1000 | occupants none |
| 127:70 | ARS | lo | 93/1000 | occupants none |
| 127:72 | BCE | lo | 93/1000 | occupants none |
| 127:75 | BCF | hi | 882787/1000000 | vertex maximum 882787/1000000 |
| 127:78 | BCP | lo | 65727/500000 | earlier 126:78; BCP; lo; 65727/500000 |
| 127:81 | BCQ | hi | 775105524527/1000000000000 | vertex maximum 775105524527/1000000000000 |
| 127:85 | BCS | hi | 609929/1000000 | earlier 126:85; BCS; hi; 609929/1000000 |
| 127:90 | BEP | lo | 93/1000 | occupants none |
| 127:93 | BEQ | hi | 721864646939/1000000000000 | vertex maximum 721864646939/1000000000000 |
| 127:95 | BER | hi | 209529624967/250000000000 | vertex maximum 209529624967/250000000000 |
| 127:98 | BFH | lo | 93/1000 | occupants none |
| 127:100 | BFP | lo | 93/1000 | occupants none |
| 127:105 | BFR | hi | 381213/500000 | vertex maximum 381213/500000 |
| 127:106 | BFS | lo | 4857/50000 | earlier 126:106; BFS; lo; 4857/50000 |
| 127:112 | BHR | lo | 168863/500000 | earlier 126:112; BHR; lo; 168863/500000 |
| 127:114 | BHS | lo | 75863/500000 | earlier 126:114; BHS; lo; 75863/500000 |
| 127:116 | BPQ | lo | 93/1000 | occupants none |
| 127:119 | BPR | hi | 443999/1000000 | earlier 126:117; BPR; hi; 443999/1000000 |
| 127:126 | BRS | lo | 93/1000 | occupants none |
| 127:132 | CEP | lo | 93/1000 | occupants none |
| 127:134 | CEQ | lo | 93/1000 | occupants none |
| 127:136 | CER | lo | 47293/500000 | earlier 126:134; CER; lo; 47293/500000 |
| 127:138 | CES | lo | 46701/500000 | earlier 126:136; CES; lo; 46701/500000 |
| 127:142 | CFP | lo | 93/1000 | occupants none |
| 127:146 | CFR | lo | 23417/62500 | earlier 126:144; CFR; lo; 23417/62500 |
| 127:148 | CFS | lo | 93/1000 | occupants none |
| 127:150 | CHP | lo | 93/1000 | occupants none |
| 127:154 | CHR | lo | 209569/500000 | earlier 126:152; CHR; lo; 209569/500000 |
| 127:158 | CPQ | lo | 93/1000 | occupants none |
| 127:162 | CPS | lo | 24933/250000 | earlier 126:160; CPS; lo; 24933/250000 |
| 127:165 | CQR | hi | 448455283167/1000000000000 | vertex maximum 448455283167/1000000000000 |
| 127:168 | CRS | lo | 2948/15625 | earlier 126:166; CRS; lo; 2948/15625 |
| 127:172 | EFP | lo | 120533/1000000 | earlier 126:170; EFP; lo; 120533/1000000 |
| 127:174 | EFQ | lo | 340163/1000000 | earlier 126:172; EFQ; lo; 340163/1000000 |
| 127:175 | EFQ | hi | 682105679651/1000000000000 | vertex maximum 682105679651/1000000000000 |
| 127:176 | EFR | lo | 379341/1000000 | earlier 126:174; EFR; lo; 379341/1000000 |
| 127:177 | EFR | hi | 85263243219/125000000000 | vertex maximum 85263243219/125000000000 |
| 127:178 | EFS | lo | 93/1000 | occupants none |
| 127:180 | EHP | lo | 93/1000 | occupants none |
| 127:184 | EHR | lo | 379341/1000000 | earlier 126:182; EHR; lo; 379341/1000000 |
| 127:185 | EHR | hi | 52630977949/62500000000 | vertex maximum 52630977949/62500000000 |
| 127:186 | EHS | lo | 93/1000 | occupants none |
| 127:187 | EHS | hi | 434917/1000000 | earlier 126:185; EHS; hi; 434917/1000000 |
| 127:188 | EPQ | lo | 17891/125000 | earlier 126:186; EPQ; lo; 17891/125000 |
| 127:192 | EPS | lo | 115651/1000000 | earlier 126:190; EPS; lo; 115651/1000000 |
| 127:194 | EQR | lo | 93/1000 | occupants none |
| 127:195 | EQR | hi | 177242686797/500000000000 | vertex maximum 177242686797/500000000000 |
| 127:198 | ERS | lo | 193341/1000000 | earlier 126:196; ERS; lo; 193341/1000000 |
| 127:204 | FHR | lo | 93/1000 | occupants none |
| 127:206 | FHS | lo | 46639/500000 | earlier 126:204; FHS; lo; 46639/500000 |
| 127:208 | FPQ | lo | 279491/1000000 | earlier 126:206; FPQ; lo; 279491/1000000 |
| 127:211 | FPR | hi | 76400040969/125000000000 | vertex maximum 76400040969/125000000000 |
| 127:212 | FPS | lo | 93491/1000000 | earlier 126:210; FPS; lo; 93491/1000000 |
| 127:216 | FQS | lo | 93/1000 | occupants none |
| 127:218 | FRS | lo | 93/1000 | occupants none |
| 127:223 | HPR | hi | 700195313563/1000000000000 | vertex maximum 700195313563/1000000000000 |
| 127:224 | HPS | lo | 122637/1000000 | earlier 126:222; HPS; lo; 122637/1000000 |
| 127:228 | HRS | lo | 93/1000 | occupants none |
| 127:230 | PQR | lo | 131473/1000000 | earlier 126:228; PQR; lo; 131473/1000000 |
| 127:236 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 23 | fan | BEQ = BEP + EPQ + BPQ | point P |
| 58 | plu | ABE * ACR = ABC * AER + ABR * ACE | circuit ABCER |
| 141 | plu | ABR * CRS = ACR * BRS + ARS * BCR | circuit RABCS |
| 213 | plu | ABS * AER = ABE * ARS + ABR * AES | circuit ABERS |
| 216 | plu | ABR * ERS = AER * BRS + ARS * BER | circuit RABES |
| 297 | plu | APQ * BPR = ABP * PQR + APR * BPQ | circuit PABQR |
| 365 | plu | ACP * AER = ACE * APR + ACR * AEP | circuit ACEPR |
| 402 | plu | AFR * CFH = ACF * FHR + AFH * CFR | circuit FACHR |
| 448 | plu | AHP * CPR = ACP * HPR + APR * CHP | circuit PACHR |
| 478 | plu | ACS * CPR = ACP * CRS + ACR * CPS | circuit CAPRS |
| 497 | plu | AEF * AHR = AEH * AFR + AER * AFH | circuit AEFHR |
| 499 | plu | AFR * EFH = AEF * FHR + AFH * EFR | circuit FAEHR |
| 506 | plu | AFS * EHS = AES * FHS + AHS * EFS | circuit SAEFH |
| 512 | plu | AER * AFP = AEF * APR + AEP * AFR | circuit AEFPR |
| 545 | plu | AHP * EPR = AEP * HPR + APR * EHP | circuit PAEHR |
| 552 | plu | AER * AHQ = AEH * AQR + AEQ * AHR | circuit AEHQR |
| 748 | plu | BFP * CPQ = BCP * FPQ + BPQ * CFP | circuit PBCFQ |
| 783 | plu | BHP * CPR = BCP * HPR + BPR * CHP | circuit PBCHR |
| 841 | plu | BFS * EHS = BES * FHS + BHS * EFS | circuit SBEFH |
| 1006 | plu | CEF * EPQ = CEP * EFQ + CEQ * EFP | circuit ECFPQ |
| 1011 | plu | CEF * EPR = CEP * EFR + CER * EFP | circuit ECFPR |
| 1040 | plu | CEH * CPR = CEP * CHR + CER * CHP | circuit CEHPR |
| 1041 | plu | CEH * EPR = CEP * EHR + CER * EHP | circuit ECHPR |
| 1043 | plu | CPR * EHP = CEP * HPR + CHP * EPR | circuit PCEHR |
| 2151 | support | BFR * ABR >= 1023/1000 * (BFR - AFR) | pentagon RFHAB |
| 2641 | bary | outer ABR; fans BRS, ARS, ABS; target AES; sign 1; vertices none 0; ABE -1; AER 1 | container ABR; inner S; line AE |
| 2664 | bary | outer ABR; fans BRS, ARS, ABS; target EHS; sign -1; vertices AEH 1; BEH 1; EHR -1 | container ABR; inner S; line EH |
| 2666 | bary | outer ABR; fans BRS, ARS, ABS; target EQS; sign 1; vertices AEQ 1; BEQ 1; EQR 1 | container ABR; inner S; line EQ |
| 2752 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2757 | bary | outer ACH; fans CHP, AHP, ACP; target EPS; sign 1; vertices AES 1; CES 1; EHS 1 | container ACH; inner P; line ES |
| 2762 | bary | outer ACH; fans CHP, AHP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; FHS -1 | container ACH; inner P; line FS |
| 2933 | bary | outer ACS; fans CPS, APS, ACP; target EPR; sign 1; vertices AER 1; CER 1; ERS 1 | container ACS; inner P; line ER |
| 3028 | bary | outer AEH; fans EHP, AHP, AEP; target FPS; sign -1; vertices AFS -1; EFS -1; FHS -1 | container AEH; inner P; line FS |
| 3085 | bary | outer AER; fans EPR, APR, AEP; target AFP; sign -1; vertices none 0; AEF -1; AFR -1 | container AER; inner P; line AF |
| 3103 | bary | outer AER; fans EPR, APR, AEP; target CPQ; sign 1; vertices ACQ 1; CEQ -1; CQR 1 | container AER; inner P; line CQ |
| 3104 | bary | outer AER; fans EPR, APR, AEP; target CPR; sign 1; vertices ACR 1; CER -1; none 0 | container AER; inner P; line CR |
| 3109 | bary | outer AER; fans EPR, APR, AEP; target EPQ; sign 1; vertices AEQ 1; none 0; EQR 1 | container AER; inner P; line EQ |
| 3112 | bary | outer AER; fans EPR, APR, AEP; target FHP; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner P; line FH |
| 3157 | bary | outer AER; fans ERS, ARS, AES; target FHS; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner S; line FH |
| 3177 | bary | outer AES; fans EPS, APS, AEP; target APQ; sign -1; vertices none 0; AEQ -1; AQS 1 | container AES; inner P; line AQ |
| 3180 | bary | outer AES; fans EPS, APS, AEP; target BCP; sign 1; vertices ABC 1; BCE 1; BCS 1 | container AES; inner P; line BC |
| 3186 | bary | outer AES; fans EPS, APS, AEP; target BPR; sign -1; vertices ABR 1; BER -1; BRS 1 | container AES; inner P; line BR |
| 3212 | bary | outer AES; fans EPS, APS, AEP; target PQR; sign 1; vertices AQR 1; EQR 1; QRS 1 | container AES; inner P; line QR |
| 3228 | bary | outer AFQ; fans FQS, AQS, AFS; target BPS; sign 1; vertices ABP 1; BFP 1; BPQ 1 | container AFQ; inner S; line BP |
| 3315 | bary | outer AQR; fans QRS, ARS, AQS; target BPS; sign 1; vertices ABP 1; BPQ 1; BPR 1 | container AQR; inner S; line BP |
| 3372 | bary | outer BCF; fans CFP, BFP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EFQ 1 | container BCF; inner P; line EQ |
| 3437 | bary | outer BCQ; fans CPQ, BPQ, BCP; target AFP; sign -1; vertices ABF -1; ACF -1; AFQ -1 | container BCQ; inner P; line AF |
| 3527 | bary | outer BCS; fans CPS, BPS, BCP; target AHP; sign -1; vertices ABH -1; ACH -1; AHS -1 | container BCS; inner P; line AH |
| 3663 | bary | outer BEQ; fans EPQ, BPQ, BEP; target APR; sign -1; vertices ABR -1; AER -1; AQR -1 | container BEQ; inner P; line AR |
| 3664 | bary | outer BEQ; fans EPQ, BPQ, BEP; target APS; sign -1; vertices ABS -1; AES -1; AQS -1 | container BEQ; inner P; line AS |
| 3699 | bary | outer BEQ; fans EPQ, BPQ, BEP; target PRS; sign 1; vertices BRS 1; ERS 1; QRS 1 | container BEQ; inner P; line RS |
| 3870 | bary | outer BFR; fans FRS, BRS, BFS; target PQS; sign 1; vertices BPQ 1; FPQ 1; PQR 1 | container BFR; inner S; line PQ |
| 4053 | bary | outer EFQ; fans FQS, EQS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHQ -1 | container EFQ; inner S; line AH |
| 4104 | bary | outer EFR; fans FRS, ERS, EFS; target BHS; sign -1; vertices BEH -1; BFH -1; BHR -1 | container EFR; inner S; line BH |
| 4111 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 4112 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 4127 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 4239 | bary | outer FPR; fans PRS, FRS, FPS; target CES; sign 1; vertices CEF 1; CEP 1; CER 1 | container FPR; inner S; line CE |
| 4266 | bary | outer HPR; fans PRS, HRS, HPS; target ABS; sign 1; vertices ABH 1; ABP 1; ABR 1 | container HPR; inner S; line AB |
| 4320 | four | 1 * ABE + 1 * AER + -1 * ABR + -1 * BER = 0 | vertices ABER |
| 4336 | four | 1 * ABR + -1 * ARS + -1 * ABS + -1 * BRS = 0 | vertices ABRS |
| 4344 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 4353 | four | 1 * ACP + 1 * APR + -1 * ACR + 1 * CPR = 0 | vertices ACPR |
| 4359 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 4363 | four | 1 * AEH + -1 * AHP + -1 * AEP + -1 * EHP = 0 | vertices AEHP |
| 4367 | four | 1 * AEP + 1 * APQ + -1 * AEQ + 1 * EPQ = 0 | vertices AEPQ |
| 4368 | four | 1 * AEP + 1 * APR + -1 * AER + 1 * EPR = 0 | vertices AEPR |
| 4369 | four | 1 * AEP + 1 * APS + -1 * AES + 1 * EPS = 0 | vertices AEPS |
| 4408 | four | 1 * BCP + 1 * BPR + -1 * BCR + 1 * CPR = 0 | vertices BCPR |
| 4409 | four | 1 * BCP + 1 * BPS + -1 * BCS + 1 * CPS = 0 | vertices BCPS |
| 4418 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4422 | four | 1 * BEP + 1 * BPQ + -1 * BEQ + 1 * EPQ = 0 | vertices BEPQ |
| 4423 | four | 1 * BEP + 1 * BPR + -1 * BER + 1 * EPR = 0 | vertices BEPR |
| 4424 | four | 1 * BEP + 1 * BPS + -1 * BES + 1 * EPS = 0 | vertices BEPS |
| 4437 | four | -1 * BFR + 1 * BRS + 1 * BFS + 1 * FRS = 0 | vertices BFRS |
| 4442 | four | -1 * BHR + 1 * BRS + 1 * BHS + 1 * HRS = 0 | vertices BHRS |
| 4471 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 4476 | four | -1 * CHR + 1 * CRS + 1 * CHS + 1 * HRS = 0 | vertices CHRS |
| 4489 | four | -1 * EFQ + 1 * EQS + 1 * EFS + 1 * FQS = 0 | vertices EFQS |
| 4490 | four | -1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS = 0 | vertices EFRS |
| 4506 | four | 1 * FPQ + -1 * FQS + -1 * FPS + -1 * PQS = 0 | vertices FPQS |
| 4510 | four | 1 * HPR + -1 * HRS + -1 * HPS + -1 * PRS = 0 | vertices HPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 127:239 | BEQ | lo | 41141/125000 | 41141/125000 | 23 | 127:90, 127:188, 127:116 |
| 127:244 | EQS | lo | 177083/1000000 | 2312428167/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:14, 127:36, 127:239, 127:194 |
| 127:249 | EPQ | lo | 3867/25000 | 2202413871/14238500000 | 3372 | 127:75, 127:142, 127:100, 127:78, 127:239, 127:134, 127:174 |
| 127:250 | AFP | lo | 3053/20000 | 3816787573581/25003404017000 | 3437 | 127:81, 127:158, 127:116, 127:78, 127:4, 127:18, 127:46 |
| 127:254 | APR | lo | 17039/50000 | 245997218415981/721864646939000 | 3663 | 127:93, 127:249, 127:116, 127:90, 127:12, 127:38, 127:66 |
| 127:255 | APS | lo | 128343/1000000 | 92646887085327/721864646939000 | 3664 | 127:93, 127:249, 127:116, 127:90, 127:14, 127:40, 127:68 |
| 127:256 | PRS | lo | 105927/1000000 | 76465125165327/721864646939000 | 3699 | 127:93, 127:249, 127:116, 127:90, 127:126, 127:198, 127:236 |
| 127:257 | PQS | lo | 120649/1000000 | 73005197/605100000 | 3870 | 127:105, 127:218, 127:126, 127:106, 127:116, 127:208, 127:230 |
| 127:258 | ACF | lo | 173337/500000 | 173337/500000 | 4344 | 127:250, 127:22, 127:142 |
| 127:259 | CPR | hi | 545517/1000000 | 136379052343/250000000000 | 4353 | 127:22, 127:254, 127:27 |
| 127:262 | AEF | lo | 366183/1000000 | 366183/1000000 | 4359 | 127:250, 127:34, 127:172 |
| 127:263 | AEQ | lo | 8517/25000 | 8517/25000 | 4367 | 127:34, 127:60, 127:249 |
| 127:264 | EPR | hi | 57609/125000 | 57609/125000 | 4368 | 127:34, 127:254, 127:39 |
| 127:266 | AES | lo | 168497/500000 | 168497/500000 | 4369 | 127:34, 127:255, 127:192 |
| 127:268 | BEQ | lo | 8517/25000 | 8517/25000 | 4422 | 127:90, 127:116, 127:249 |
| 127:270 | EFQ | lo | 363083/1000000 | 363083/1000000 | 4489 | 127:244, 127:178, 127:216 |
| 127:271 | FPQ | lo | 15357/50000 | 15357/50000 | 4506 | 127:216, 127:212, 127:257 |
| 127:273 | HPR | lo | 80391/250000 | 80391/250000 | 4510 | 127:228, 127:224, 127:256 |
| 127:275 | APQ | lo | 49459/500000 | 43919529/443999000 | 297 | 127:8, 127:230, 127:254, 127:116, 127:119 |
| 127:276 | BPR | lo | 93673/1000000 | 43919529/468857000 | 297 | 127:8, 127:230, 127:254, 127:116, 127:61 |
| 127:277 | ACP | lo | 53723/500000 | 9612759/89465200 | 365 | 127:16, 127:254, 127:26, 127:34, 127:39 |
| 127:279 | CFH | lo | 95053/1000000 | 11180863000/117626627263 | 402 | 127:258, 127:204, 127:42, 127:146, 127:49 |
| 127:280 | CPR | lo | 144337/1000000 | 11171420989/77398125000 | 478 | 127:277, 127:168, 127:26, 127:162, 127:29 |
| 127:281 | EFH | lo | 98239/1000000 | 11555622000/117626627263 | 499 | 127:262, 127:204, 127:42, 127:176, 127:49 |
| 127:282 | AFS | lo | 6277/62500 | 10919905583/108729250000 | 506 | 127:266, 127:206, 127:58, 127:178, 127:187 |
| 127:284 | AHQ | lo | 147479/1000000 | 659713161/4473260000 | 552 | 127:32, 127:66, 127:263, 127:56, 127:39 |
| 127:285 | BHP | lo | 93457/1000000 | 151733521/1623562500 | 783 | 127:78, 127:273, 127:276, 127:150, 127:259 |
| 127:290 | CEF | lo | 20257/200000 | 23339723669/230436000000 | 1011 | 127:132, 127:176, 127:136, 127:172, 127:264 |
| 127:291 | CEH | lo | 47817/500000 | 14691737/153624000 | 1041 | 127:132, 127:184, 127:136, 127:180, 127:264 |
| 127:299 | EQS | lo | 45299/250000 | 2366144967/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:14, 127:263, 127:268, 127:194 |
| 127:303 | EFP | lo | 63733/500000 | 110505371983/866937000000 | 2752 | 127:21, 127:150, 127:52, 127:277, 127:262, 127:290, 127:281 |
| 127:304 | EPS | lo | 59619/500000 | 430716477/3612237500 | 2757 | 127:21, 127:150, 127:52, 127:277, 127:266, 127:138, 127:186 |
| 127:305 | FPS | lo | 93831/1000000 | 20336546747/216734250000 | 2762 | 127:21, 127:150, 127:52, 127:277, 127:282, 127:148, 127:206 |
| 127:311 | EPR | lo | 41617/200000 | 32210781847/154796250000 | 2933 | 127:29, 127:162, 127:255, 127:277, 127:38, 127:136, 127:198 |
| 127:315 | CPQ | hi | 231749/500000 | 37697190513321/81332000000000 | 3103 | 127:39, 127:311, 127:254, 127:34, 127:25, 127:134, 127:165 |
| 127:316 | CPR | hi | 472581/1000000 | 13212350701677887/27957875000000000 | 3104 | 127:39, 127:311, 127:254, 127:34, 127:27, 127:136 |
| 127:320 | EPQ | hi | 86977/200000 | 17685022300011/40666000000000 | 3109 | 127:39, 127:311, 127:254, 127:34, 127:37, 127:195 |
| 127:321 | FHP | lo | 18999/200000 | 386309011/4066600000 | 3112 | 127:39, 127:311, 127:254, 127:34, 127:42, 127:281, 127:204 |
| 127:325 | FHS | lo | 11693/125000 | 83689863/894652000 | 3157 | 127:39, 127:198, 127:70, 127:266, 127:42, 127:281, 127:204 |
| 127:329 | APQ | hi | 463899/1000000 | 27666341/59638720 | 3177 | 127:41, 127:304, 127:255, 127:34, 127:37, 127:68 |
| 127:333 | BPR | hi | 436579/1000000 | 6509247121859/14909680000000 | 3186 | 127:41, 127:304, 127:255, 127:34, 127:12, 127:95, 127:126 |
| 127:334 | PQR | lo | 66333/500000 | 1454427/10963000 | 3212 | 127:41, 127:304, 127:255, 127:34, 127:66, 127:194, 127:236 |
| 127:339 | BPS | lo | 93091/1000000 | 1995945682941/21440750287000 | 3315 | 127:67, 127:236, 127:70, 127:68, 127:8, 127:116, 127:276 |
| 127:340 | EPQ | lo | 15931/100000 | 70318460841/441393500000 | 3372 | 127:75, 127:142, 127:100, 127:78, 127:268, 127:134, 127:270 |
| 127:341 | AFP | lo | 154981/1000000 | 3875062573581/25003404017000 | 3437 | 127:81, 127:158, 127:116, 127:78, 127:4, 127:258, 127:46 |
| 127:342 | AHP | lo | 8611/62500 | 21008441403/152482250000 | 3527 | 127:85, 127:162, 127:339, 127:78, 127:6, 127:20, 127:58 |
| 127:344 | APR | lo | 341033/1000000 | 246180075635981/721864646939000 | 3663 | 127:93, 127:340, 127:116, 127:90, 127:12, 127:38, 127:66 |
| 127:345 | APS | lo | 2663/20000 | 96116643305327/721864646939000 | 3664 | 127:93, 127:340, 127:116, 127:90, 127:14, 127:266, 127:68 |
| 127:348 | PQS | lo | 62087/500000 | 262982759/2117850000 | 3870 | 127:105, 127:218, 127:126, 127:106, 127:116, 127:271, 127:334 |
| 127:349 | AHS | lo | 131887/1000000 | 263815821723/2000309911000 | 4053 | 127:175, 127:216, 127:299, 127:178, 127:32, 127:42, 127:284 |
| 127:350 | CHS | lo | 69659/500000 | 439954418803541/3157897897000000 | 4111 | 127:177, 127:218, 127:198, 127:178, 127:291, 127:279, 127:154 |
| 127:351 | CPS | lo | 99999/1000000 | 258371946799/2583734643000 | 4112 | 127:177, 127:218, 127:198, 127:178, 127:132, 127:142, 127:280 |
| 127:352 | HPS | lo | 15591/125000 | 84402797867/676692406500 | 4127 | 127:177, 127:218, 127:198, 127:178, 127:180, 127:321, 127:273 |
| 127:354 | CES | lo | 94679/1000000 | 1205584409207/12733340161500 | 4239 | 127:211, 127:256, 127:218, 127:305, 127:290, 127:132, 127:136 |
| 127:355 | ABS | lo | 133167/1000000 | 93243579793359/700195313563000 | 4266 | 127:223, 127:256, 127:228, 127:352, 127:6, 127:8, 127:12 |
| 127:356 | ABR | lo | 319167/1000000 | 319167/1000000 | 4336 | 127:70, 127:355, 127:126 |
| 127:358 | ACF | lo | 355427/1000000 | 355427/1000000 | 4344 | 127:341, 127:277, 127:142 |
| 127:363 | AEF | lo | 375447/1000000 | 375447/1000000 | 4359 | 127:341, 127:34, 127:303 |
| 127:364 | AEH | lo | 5059/15625 | 5059/15625 | 4363 | 127:342, 127:34, 127:180 |
| 127:365 | AEQ | lo | 87807/250000 | 87807/250000 | 4367 | 127:34, 127:275, 127:340 |
| 127:368 | AES | lo | 86347/250000 | 86347/250000 | 4369 | 127:34, 127:345, 127:304 |
| 127:372 | BCR | lo | 46183/125000 | 46183/125000 | 4408 | 127:78, 127:276, 127:280 |
| 127:374 | BCS | lo | 5071/15625 | 5071/15625 | 4409 | 127:78, 127:339, 127:351 |
| 127:376 | BEH | lo | 279457/1000000 | 279457/1000000 | 4418 | 127:285, 127:90, 127:180 |
| 127:377 | BEQ | lo | 34531/100000 | 34531/100000 | 4422 | 127:90, 127:116, 127:340 |
| 127:378 | BER | lo | 197379/500000 | 197379/500000 | 4423 | 127:90, 127:276, 127:311 |
| 127:379 | BES | lo | 305329/1000000 | 305329/1000000 | 4424 | 127:90, 127:339, 127:304 |
| 127:383 | CHR | lo | 42099/100000 | 42099/100000 | 4476 | 127:168, 127:350, 127:228 |
| 127:384 | EFQ | lo | 91799/250000 | 91799/250000 | 4489 | 127:299, 127:178, 127:216 |
| 127:385 | FPQ | lo | 62201/200000 | 62201/200000 | 4506 | 127:216, 127:305, 127:348 |
| 127:387 | HPR | lo | 64731/200000 | 64731/200000 | 4510 | 127:228, 127:352, 127:256 |
| 127:388 | ABE | lo | 47663/500000 | 759012750/7962259753 | 58 | 127:0, 127:38, 127:356, 127:16, 127:27 |
| 127:389 | CRS | lo | 9457/50000 | 4490691/23742580 | 141 | 127:26, 127:126, 127:70, 127:372, 127:13 |
| 127:392 | ERS | lo | 48411/250000 | 12643443/65292095 | 216 | 127:38, 127:126, 127:70, 127:378, 127:13 |
| 127:394 | APQ | lo | 100907/1000000 | 44054007/436579000 | 297 | 127:8, 127:334, 127:344, 127:116, 127:333 |
| 127:395 | BPR | lo | 23741/250000 | 14684669/154633000 | 297 | 127:8, 127:334, 127:344, 127:116, 127:329 |
| 127:396 | ACP | lo | 107473/1000000 | 96151119/894652000 | 365 | 127:16, 127:344, 127:26, 127:34, 127:39 |
| 127:398 | CFH | lo | 96207/1000000 | 11316534500/117626627263 | 402 | 127:358, 127:204, 127:42, 127:146, 127:49 |
| 127:399 | AHP | lo | 140717/1000000 | 192754327/1369800000 | 448 | 127:396, 127:387, 127:344, 127:150, 127:316 |
| 127:400 | CPR | lo | 5789/40000 | 8961175037/61918500000 | 478 | 127:396, 127:389, 127:26, 127:351, 127:29 |
| 127:401 | AHR | lo | 122171/1000000 | 1366258629/11183150000 | 497 | 127:364, 127:48, 127:38, 127:42, 127:31 |
| 127:402 | EFH | lo | 4973/50000 | 11699214000/117626627263 | 499 | 127:363, 127:204, 127:42, 127:176, 127:49 |
| 127:403 | AFS | lo | 102489/1000000 | 5571808259/54364625000 | 506 | 127:368, 127:325, 127:349, 127:178, 127:187 |
| 127:404 | AFP | lo | 157521/1000000 | 140926826751/894652000000 | 512 | 127:363, 127:344, 127:34, 127:48, 127:39 |
| 127:405 | AHQ | lo | 148933/1000000 | 33310844997/223663000000 | 552 | 127:364, 127:66, 127:365, 127:401, 127:39 |
| 127:406 | BFP | lo | 21373/200000 | 4953185127/46349800000 | 748 | 127:78, 127:385, 127:116, 127:142, 127:315 |
| 127:407 | BHP | lo | 27179/250000 | 1712579879/15752700000 | 783 | 127:78, 127:387, 127:395, 127:150, 127:316 |
| 127:408 | BFS | lo | 19623/200000 | 762003821/7766375000 | 841 | 127:379, 127:325, 127:114, 127:178, 127:187 |
| 127:412 | CEF | lo | 105783/1000000 | 23001783/217442500 | 1006 | 127:132, 127:384, 127:134, 127:303, 127:320 |
| 127:414 | CEH | lo | 101461/1000000 | 1997857/19690875 | 1040 | 127:132, 127:383, 127:136, 127:150, 127:316 |
| 127:415 | EHP | lo | 104641/1000000 | 824197/7876350 | 1043 | 127:132, 127:387, 127:150, 127:311, 127:316 |
| 127:420 | AES | hi | 279551/500000 | 165931271027/296782250000 | 2641 | 127:13, 127:126, 127:70, 127:355, 127:388, 127:39 |
| 127:428 | EHS | hi | 434829/1000000 | 354886019662452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:355, 127:364, 127:376, 127:185 |
| 127:430 | EQS | lo | 183899/1000000 | 2401433817/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:355, 127:365, 127:377, 127:194 |
| 127:433 | EFP | lo | 32523/250000 | 112782098611/866937000000 | 2752 | 127:21, 127:150, 127:399, 127:396, 127:363, 127:412, 127:402 |
| 127:434 | EPS | lo | 120347/1000000 | 104333488843/866937000000 | 2757 | 127:21, 127:150, 127:399, 127:396, 127:368, 127:354, 127:186 |
| 127:436 | EPR | lo | 208399/1000000 | 6451904729/30959250000 | 2933 | 127:29, 127:351, 127:345, 127:396, 127:38, 127:136, 127:392 |
| 127:437 | FPS | lo | 94203/1000000 | 27222890483/288979000000 | 3028 | 127:33, 127:415, 127:399, 127:34, 127:403, 127:178, 127:325 |
| 127:440 | CPQ | hi | 57903/125000 | 37674857030321/81332000000000 | 3103 | 127:39, 127:436, 127:344, 127:34, 127:25, 127:134, 127:165 |
| 127:441 | CPR | hi | 18891/40000 | 105630375045680317/223663000000000000 | 3104 | 127:39, 127:436, 127:344, 127:34, 127:27, 127:136 |
| 127:444 | EPQ | hi | 434667/1000000 | 17676136560511/40666000000000 | 3109 | 127:39, 127:436, 127:344, 127:34, 127:37, 127:195 |
| 127:445 | FHP | lo | 47731/500000 | 388207769/4066600000 | 3112 | 127:39, 127:436, 127:344, 127:34, 127:42, 127:402, 127:204 |
| 127:450 | FHS | lo | 93671/1000000 | 10475427/111831500 | 3157 | 127:39, 127:392, 127:70, 127:368, 127:42, 127:402, 127:204 |
| 127:453 | APQ | hi | 462361/1000000 | 51701310623/111820400000 | 3177 | 127:420, 127:434, 127:345, 127:34, 127:37, 127:68 |
| 127:455 | BCP | lo | 65757/500000 | 36765039/279551000 | 3180 | 127:420, 127:434, 127:345, 127:34, 127:0, 127:72, 127:374 |
| 127:458 | BPR | hi | 108533/250000 | 12136193548643017/27955100000000000 | 3186 | 127:420, 127:434, 127:345, 127:34, 127:356, 127:95, 127:126 |
| 127:459 | PQR | lo | 33259/250000 | 18595257/139775500 | 3212 | 127:420, 127:434, 127:345, 127:34, 127:66, 127:194, 127:236 |
| 127:462 | BPS | lo | 94517/1000000 | 85054760667/899879819000 | 3228 | 127:47, 127:216, 127:68, 127:403, 127:8, 127:406, 127:116 |
| 127:463 | EPQ | lo | 40107/250000 | 8851539609/55174187500 | 3372 | 127:75, 127:142, 127:406, 127:455, 127:377, 127:134, 127:384 |
| 127:465 | APR | lo | 85311/250000 | 246332197971981/721864646939000 | 3663 | 127:93, 127:463, 127:116, 127:90, 127:356, 127:38, 127:66 |
| 127:466 | APS | lo | 67221/500000 | 97049407641327/721864646939000 | 3664 | 127:93, 127:463, 127:116, 127:90, 127:355, 127:368, 127:68 |
| 127:467 | PRS | lo | 52983/500000 | 76493304165327/721864646939000 | 3699 | 127:93, 127:463, 127:116, 127:90, 127:126, 127:392, 127:236 |
| 127:471 | PQS | lo | 15593/125000 | 528378973/4235700000 | 3870 | 127:105, 127:218, 127:126, 127:408, 127:116, 127:385, 127:459 |
| 127:472 | AHS | lo | 13209/100000 | 2906444038953/22003409021000 | 4053 | 127:175, 127:216, 127:430, 127:178, 127:364, 127:42, 127:405 |
| 127:473 | BHS | lo | 37947/250000 | 4313994664789/28421081073000 | 4104 | 127:177, 127:218, 127:392, 127:178, 127:376, 127:98, 127:112 |
| 127:474 | CHS | lo | 28241/200000 | 4013200321790111/28421081073000000 | 4111 | 127:177, 127:218, 127:392, 127:178, 127:414, 127:398, 127:383 |
| 127:475 | CPS | lo | 25013/250000 | 2843594914789/28421081073000 | 4112 | 127:177, 127:218, 127:392, 127:178, 127:132, 127:142, 127:400 |
| 127:478 | HPS | lo | 5113/40000 | 605491623565121/4736846845500000 | 4127 | 127:177, 127:218, 127:392, 127:178, 127:415, 127:445, 127:387 |
| 127:480 | CES | lo | 4773/50000 | 270118517671/2829631147000 | 4239 | 127:211, 127:467, 127:218, 127:437, 127:412, 127:132, 127:136 |
| 127:481 | ABS | lo | 8393/62500 | 94027960936359/700195313563000 | 4266 | 127:223, 127:467, 127:228, 127:478, 127:6, 127:8, 127:356 |
| 127:482 | ABR | lo | 10009/31250 | 10009/31250 | 4336 | 127:70, 127:481, 127:126 |
| 127:484 | ACF | lo | 178997/500000 | 178997/500000 | 4344 | 127:404, 127:396, 127:142 |
| 127:489 | AEF | lo | 380613/1000000 | 380613/1000000 | 4359 | 127:404, 127:34, 127:433 |
| 127:490 | AEH | lo | 169179/500000 | 169179/500000 | 4363 | 127:399, 127:34, 127:415 |
| 127:491 | AEQ | lo | 70867/200000 | 70867/200000 | 4367 | 127:34, 127:394, 127:463 |
| 127:492 | EPR | hi | 57551/125000 | 57551/125000 | 4368 | 127:34, 127:465, 127:39 |
| 127:494 | AES | lo | 347789/1000000 | 347789/1000000 | 4369 | 127:34, 127:466, 127:434 |
| 127:500 | BCR | lo | 371203/1000000 | 371203/1000000 | 4408 | 127:455, 127:395, 127:400 |
| 127:502 | BCS | lo | 326083/1000000 | 326083/1000000 | 4409 | 127:455, 127:462, 127:475 |
| 127:504 | BEH | lo | 306357/1000000 | 306357/1000000 | 4418 | 127:407, 127:90, 127:415 |
| 127:505 | BEQ | lo | 86607/250000 | 86607/250000 | 4422 | 127:90, 127:116, 127:463 |
| 127:506 | BER | lo | 396363/1000000 | 396363/1000000 | 4423 | 127:90, 127:395, 127:436 |
| 127:507 | BES | lo | 38483/125000 | 38483/125000 | 4424 | 127:90, 127:462, 127:434 |
| 127:509 | BFR | lo | 56823/200000 | 56823/200000 | 4437 | 127:126, 127:408, 127:218 |
| 127:510 | BHR | lo | 84447/250000 | 84447/250000 | 4442 | 127:126, 127:473, 127:228 |
| 127:513 | CFR | lo | 18757/50000 | 18757/50000 | 4471 | 127:389, 127:148, 127:218 |
| 127:514 | CHR | lo | 84669/200000 | 84669/200000 | 4476 | 127:389, 127:474, 127:228 |
| 127:515 | EFQ | lo | 369899/1000000 | 369899/1000000 | 4489 | 127:430, 127:178, 127:216 |
| 127:516 | EFR | lo | 94911/250000 | 94911/250000 | 4490 | 127:392, 127:178, 127:218 |
| 127:518 | FPQ | lo | 311947/1000000 | 311947/1000000 | 4506 | 127:216, 127:437, 127:471 |
| 127:520 | HPR | lo | 326791/1000000 | 326791/1000000 | 4510 | 127:228, 127:478, 127:467 |
| 127:521 | ABE | lo | 95431/1000000 | 108550500/1137465679 | 58 | 127:0, 127:38, 127:482, 127:16, 127:27 |
| 127:522 | CRS | lo | 3789/20000 | 98956929/522336760 | 141 | 127:26, 127:126, 127:70, 127:500, 127:13 |
| 127:525 | ABS | lo | 134429/1000000 | 15033465779/111831500000 | 213 | 127:521, 127:70, 127:482, 127:494, 127:39 |
| 127:526 | ERS | lo | 19393/100000 | 101296809/522336760 | 216 | 127:38, 127:126, 127:70, 127:506, 127:13 |
| 127:527 | APQ | lo | 127/1250 | 1102701/10853300 | 297 | 127:8, 127:459, 127:465, 127:116, 127:458 |
| 127:528 | BPR | lo | 95397/1000000 | 1102701/11559025 | 297 | 127:8, 127:459, 127:465, 127:116, 127:453 |
| 127:529 | ACP | lo | 21499/200000 | 48085371/447326000 | 365 | 127:16, 127:465, 127:26, 127:34, 127:39 |
| 127:530 | CFH | lo | 96607/1000000 | 11363577000/117626627263 | 402 | 127:484, 127:204, 127:42, 127:513, 127:49 |
| 127:532 | CPR | lo | 28969/200000 | 597906373/4127900000 | 478 | 127:529, 127:522, 127:26, 127:475, 127:29 |
| 127:533 | AHR | lo | 124429/1000000 | 5566065903/44732600000 | 497 | 127:490, 127:48, 127:38, 127:42, 127:31 |
| 127:534 | EFH | lo | 100181/1000000 | 11783983500/117626627263 | 499 | 127:489, 127:204, 127:42, 127:516, 127:49 |
| 127:535 | AFS | lo | 103171/1000000 | 44862113419/434829000000 | 506 | 127:494, 127:450, 127:472, 127:178, 127:428 |
| 127:538 | AHP | lo | 143567/1000000 | 16524919101/115102000000 | 545 | 127:34, 127:520, 127:465, 127:415, 127:492 |
| 127:539 | AHQ | lo | 154799/1000000 | 27698286343/178930400000 | 552 | 127:490, 127:66, 127:491, 127:533, 127:39 |
| 127:540 | BFP | lo | 26809/250000 | 8279066293/77204000000 | 748 | 127:455, 127:518, 127:116, 127:142, 127:440 |
| 127:541 | BHP | lo | 54893/500000 | 8641585429/78712500000 | 783 | 127:455, 127:520, 127:528, 127:150, 127:441 |
| 127:542 | BFS | lo | 3087/31250 | 5369276593/54353625000 | 841 | 127:507, 127:450, 127:473, 127:178, 127:428 |
| 127:546 | CEF | lo | 3343/31250 | 15499721/144889000 | 1006 | 127:132, 127:515, 127:134, 127:433, 127:444 |
| 127:548 | CEH | lo | 10199/100000 | 16055861/157425000 | 1040 | 127:132, 127:514, 127:136, 127:150, 127:441 |
| 127:549 | EHP | lo | 105389/1000000 | 1659089/15742500 | 1043 | 127:132, 127:520, 127:150, 127:436, 127:441 |
| 127:551 | AFR | lo | 139047/1000000 | 695239181/5000000000 | 2151 | 127:509, 127:13 |
| 127:555 | AES | hi | 559083/1000000 | 1825182950047/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:525, 127:521, 127:39 |
| 127:564 | EHS | hi | 106861/250000 | 348858166537452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:525, 127:490, 127:504, 127:185 |
| 127:566 | EQS | lo | 184651/1000000 | 1205628471/6529209500 | 2666 | 127:13, 127:126, 127:70, 127:525, 127:491, 127:505, 127:194 |
| 127:569 | EFP | lo | 131389/1000000 | 18984388227/144489500000 | 2752 | 127:21, 127:150, 127:538, 127:529, 127:489, 127:546, 127:534 |
| 127:570 | EPS | lo | 120739/1000000 | 1744561547/14448950000 | 2757 | 127:21, 127:150, 127:538, 127:529, 127:494, 127:480, 127:186 |
| 127:571 | EPR | lo | 26063/125000 | 21517120903/103197500000 | 2933 | 127:29, 127:475, 127:466, 127:529, 127:38, 127:136, 127:526 |
| 127:572 | FPS | lo | 23577/250000 | 81759455519/866937000000 | 3028 | 127:33, 127:549, 127:538, 127:34, 127:535, 127:178, 127:450 |
| 127:573 | AFP | lo | 159629/1000000 | 35703318393/223663000000 | 3085 | 127:39, 127:571, 127:465, 127:34, 127:489, 127:551 |
| 127:576 | CPQ | hi | 92599/200000 | 414218541902531/894652000000000 | 3103 | 127:39, 127:571, 127:465, 127:34, 127:25, 127:134, 127:165 |
| 127:577 | CPR | hi | 23601/50000 | 13196663061641993/27957875000000000 | 3104 | 127:39, 127:571, 127:465, 127:34, 127:27, 127:136 |
| 127:580 | EPQ | hi | 108621/250000 | 17668725924011/40666000000000 | 3109 | 127:39, 127:571, 127:465, 127:34, 127:37, 127:195 |
| 127:581 | FHP | lo | 95739/1000000 | 21413277291/223663000000 | 3112 | 127:39, 127:571, 127:465, 127:34, 127:42, 127:534, 127:204 |
| 127:586 | FHS | lo | 46873/500000 | 83870469/894652000 | 3157 | 127:39, 127:526, 127:70, 127:494, 127:42, 127:534, 127:204 |
| 127:589 | APQ | hi | 28863/62500 | 4034202883/8735671875 | 3177 | 127:555, 127:570, 127:466, 127:34, 127:37, 127:68 |
| 127:591 | BCP | lo | 131771/1000000 | 12278573/93180500 | 3180 | 127:555, 127:570, 127:466, 127:34, 127:0, 127:72, 127:502 |
| 127:594 | BPR | hi | 86613/200000 | 78814759891411/181993164062500 | 3186 | 127:555, 127:570, 127:466, 127:34, 127:482, 127:95, 127:126 |
| 127:595 | PQR | lo | 8323/62500 | 24817391/186361000 | 3212 | 127:555, 127:570, 127:466, 127:34, 127:66, 127:194, 127:236 |
| 127:598 | BPS | lo | 47279/500000 | 5020387316853/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:535, 127:8, 127:540, 127:116 |
| 127:600 | EPQ | lo | 16103/100000 | 142155253129/882787000000 | 3372 | 127:75, 127:142, 127:540, 127:591, 127:505, 127:134, 127:515 |
| 127:602 | APR | lo | 341527/1000000 | 246536893135981/721864646939000 | 3663 | 127:93, 127:600, 127:116, 127:90, 127:482, 127:38, 127:66 |
| 127:603 | APS | lo | 135067/1000000 | 97500101035327/721864646939000 | 3664 | 127:93, 127:600, 127:116, 127:90, 127:525, 127:494, 127:68 |
| 127:604 | PRS | lo | 106003/1000000 | 76519902165327/721864646939000 | 3699 | 127:93, 127:600, 127:116, 127:90, 127:126, 127:526, 127:236 |
| 127:607 | PQS | lo | 124911/1000000 | 3968151863/31767750000 | 3870 | 127:105, 127:218, 127:126, 127:542, 127:116, 127:518, 127:595 |
| 127:609 | AHS | lo | 67439/500000 | 2967788038953/22003409021000 | 4053 | 127:175, 127:216, 127:566, 127:178, 127:490, 127:42, 127:539 |
| 127:610 | BHS | lo | 19433/125000 | 490941379421/3157897897000 | 4104 | 127:177, 127:218, 127:526, 127:178, 127:504, 127:98, 127:510 |
| 127:611 | CHS | lo | 141889/1000000 | 1344214751406437/9473693691000000 | 4111 | 127:177, 127:218, 127:526, 127:178, 127:548, 127:530, 127:514 |
| 127:612 | CPS | lo | 25017/250000 | 2844059914789/28421081073000 | 4112 | 127:177, 127:218, 127:526, 127:178, 127:132, 127:142, 127:532 |
| 127:615 | HPS | lo | 32139/250000 | 15816996237437/123034983000000 | 4127 | 127:177, 127:218, 127:526, 127:178, 127:549, 127:581, 127:520 |
| 127:617 | CES | lo | 23917/250000 | 7309087612117/76400040969000 | 4239 | 127:211, 127:604, 127:218, 127:572, 127:546, 127:132, 127:136 |
| 127:618 | ABS | lo | 13473/100000 | 94337400289359/700195313563000 | 4266 | 127:223, 127:604, 127:228, 127:615, 127:6, 127:8, 127:482 |
| 127:619 | ABR | lo | 32073/100000 | 32073/100000 | 4336 | 127:70, 127:618, 127:126 |
| 127:621 | ACF | lo | 90031/250000 | 90031/250000 | 4344 | 127:573, 127:529, 127:142 |
| 127:626 | AEF | lo | 192009/500000 | 192009/500000 | 4359 | 127:573, 127:34, 127:569 |
| 127:627 | AEH | lo | 85489/250000 | 85489/250000 | 4363 | 127:538, 127:34, 127:549 |
| 127:628 | AEQ | lo | 35563/100000 | 35563/100000 | 4367 | 127:34, 127:527, 127:600 |
| 127:629 | EPR | hi | 3681/8000 | 3681/8000 | 4368 | 127:34, 127:602, 127:39 |
| 127:631 | AES | lo | 174403/500000 | 174403/500000 | 4369 | 127:34, 127:603, 127:570 |
| 127:637 | BCR | lo | 372013/1000000 | 372013/1000000 | 4408 | 127:591, 127:528, 127:532 |
| 127:639 | BCS | lo | 326397/1000000 | 326397/1000000 | 4409 | 127:591, 127:598, 127:612 |
| 127:641 | BEH | lo | 12327/40000 | 12327/40000 | 4418 | 127:541, 127:90, 127:549 |
| 127:642 | BEQ | lo | 34703/100000 | 34703/100000 | 4422 | 127:90, 127:116, 127:600 |
| 127:643 | BER | lo | 396901/1000000 | 396901/1000000 | 4423 | 127:90, 127:528, 127:571 |
| 127:644 | BES | lo | 308297/1000000 | 308297/1000000 | 4424 | 127:90, 127:598, 127:570 |
| 127:646 | BFR | lo | 17799/62500 | 17799/62500 | 4437 | 127:126, 127:542, 127:218 |
| 127:647 | BHR | lo | 42683/125000 | 42683/125000 | 4442 | 127:126, 127:610, 127:228 |
| 127:650 | CFR | lo | 7509/20000 | 7509/20000 | 4471 | 127:522, 127:148, 127:218 |
| 127:651 | CHR | lo | 424339/1000000 | 424339/1000000 | 4476 | 127:522, 127:611, 127:228 |
| 127:652 | EFQ | lo | 370651/1000000 | 370651/1000000 | 4489 | 127:566, 127:178, 127:216 |
| 127:653 | EFR | lo | 37993/100000 | 37993/100000 | 4490 | 127:526, 127:178, 127:218 |
| 127:655 | FPQ | lo | 312219/1000000 | 312219/1000000 | 4506 | 127:216, 127:572, 127:607 |
| 127:657 | HPR | lo | 327559/1000000 | 327559/1000000 | 4510 | 127:228, 127:615, 127:604 |
| 127:658 | ABE | lo | 95473/1000000 | 760185000/7962259753 | 58 | 127:0, 127:38, 127:619, 127:16, 127:27 |
| 127:659 | CRS | lo | 94797/500000 | 99032259/522336760 | 141 | 127:26, 127:126, 127:70, 127:637, 127:13 |
| 127:662 | ABS | lo | 13497/100000 | 6037576869/44732600000 | 213 | 127:658, 127:70, 127:619, 127:631, 127:39 |
| 127:663 | ERS | lo | 7761/40000 | 101346843/522336760 | 216 | 127:38, 127:126, 127:70, 127:643, 127:13 |
| 127:664 | APQ | lo | 101939/1000000 | 2943109/28871000 | 297 | 127:8, 127:595, 127:602, 127:116, 127:594 |
| 127:665 | BPR | lo | 19119/200000 | 2943109/30787200 | 297 | 127:8, 127:595, 127:602, 127:116, 127:589 |
| 127:666 | ACP | lo | 26881/250000 | 96197061/894652000 | 365 | 127:16, 127:602, 127:26, 127:34, 127:39 |
| 127:667 | CFH | lo | 3029/31250 | 11401397000/117626627263 | 402 | 127:621, 127:204, 127:42, 127:650, 127:49 |
| 127:668 | CPR | lo | 2264/15625 | 1869125397/12899687500 | 478 | 127:666, 127:659, 127:26, 127:612, 127:29 |
| 127:669 | AHR | lo | 125169/1000000 | 27995751483/223663000000 | 497 | 127:627, 127:551, 127:38, 127:42, 127:31 |
| 127:670 | EFH | lo | 100667/1000000 | 11841194000/117626627263 | 499 | 127:626, 127:204, 127:42, 127:653, 127:49 |
| 127:671 | AFS | lo | 21169/200000 | 11310705319/106861000000 | 506 | 127:631, 127:586, 127:609, 127:178, 127:564 |
| 127:673 | AHP | lo | 14443/100000 | 66456176003/460125000000 | 545 | 127:34, 127:657, 127:602, 127:549, 127:629 |
| 127:674 | AHQ | lo | 31279/200000 | 13991957547/89465200000 | 552 | 127:627, 127:66, 127:628, 127:669, 127:39 |
| 127:675 | BFP | lo | 107539/1000000 | 49790409849/462995000000 | 748 | 127:591, 127:655, 127:116, 127:142, 127:576 |
| 127:676 | BHP | lo | 110277/1000000 | 52053111989/472020000000 | 783 | 127:591, 127:657, 127:665, 127:150, 127:577 |
| 127:677 | BFS | lo | 101439/1000000 | 21679881281/213722000000 | 841 | 127:644, 127:586, 127:610, 127:178, 127:564 |
| 127:681 | CEF | lo | 5373/50000 | 389081/3620700 | 1006 | 127:132, 127:652, 127:134, 127:569, 127:580 |
| 127:682 | CEH | lo | 102241/1000000 | 643467/6293600 | 1040 | 127:132, 127:651, 127:136, 127:150, 127:577 |
| 127:683 | EHP | lo | 52809/500000 | 16617953/157340000 | 1043 | 127:132, 127:657, 127:150, 127:571, 127:577 |
| 127:685 | AFR | lo | 223/1600 | 6750988643/48437500000 | 2151 | 127:646, 127:13 |
| 127:689 | AES | hi | 22363/40000 | 1825158537547/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:662, 127:658, 127:39 |
| 127:698 | EHS | hi | 426479/1000000 | 348071154037452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:662, 127:627, 127:641, 127:185 |
| 127:700 | EQS | lo | 184989/1000000 | 2415667467/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:662, 127:628, 127:642, 127:194 |
| 127:703 | EFP | lo | 66097/500000 | 114604702969/866937000000 | 2752 | 127:21, 127:150, 127:673, 127:666, 127:626, 127:681, 127:670 |
| 127:704 | EPS | lo | 24177/200000 | 655002739/5418356250 | 2757 | 127:21, 127:150, 127:673, 127:666, 127:631, 127:617, 127:186 |
| 127:706 | EPR | lo | 10427/50000 | 64562696699/309592500000 | 2933 | 127:29, 127:612, 127:603, 127:666, 127:38, 127:136, 127:663 |
| 127:707 | FPS | lo | 23661/250000 | 2735039407/28897900000 | 3028 | 127:33, 127:683, 127:673, 127:34, 127:671, 127:178, 127:586 |
| 127:708 | AFP | lo | 40271/250000 | 6550654113/40666000000 | 3085 | 127:39, 127:706, 127:602, 127:34, 127:626, 127:685 |
| 127:711 | CPQ | hi | 462687/1000000 | 413943742959531/894652000000000 | 3103 | 127:39, 127:706, 127:602, 127:34, 127:25, 127:134, 127:165 |
| 127:712 | CPR | hi | 235839/500000 | 843974077030583/1789304000000000 | 3104 | 127:39, 127:706, 127:602, 127:34, 127:27, 127:136 |
| 127:715 | EPQ | hi | 1357/3125 | 17658786539511/40666000000000 | 3109 | 127:39, 127:706, 127:602, 127:34, 127:37, 127:195 |
| 127:716 | FHP | lo | 47963/500000 | 7801920319/81332000000 | 3112 | 127:39, 127:706, 127:602, 127:34, 127:42, 127:670, 127:204 |
| 127:721 | FHS | lo | 23449/250000 | 7628697/81332000 | 3157 | 127:39, 127:663, 127:70, 127:631, 127:42, 127:670, 127:204 |
| 127:724 | APQ | hi | 230801/500000 | 25806999287/55907500000 | 3177 | 127:689, 127:704, 127:603, 127:34, 127:37, 127:68 |
| 127:726 | BCP | lo | 8239/62500 | 9212487/69884375 | 3180 | 127:689, 127:704, 127:603, 127:34, 127:0, 127:72, 127:639 |
| 127:729 | BPR | hi | 432661/1000000 | 549749270271443/1270625000000000 | 3186 | 127:689, 127:704, 127:603, 127:34, 127:619, 127:95, 127:126 |
| 127:730 | PQR | lo | 133217/1000000 | 14895717/111815000 | 3212 | 127:689, 127:704, 127:603, 127:34, 127:66, 127:194, 127:236 |
| 127:733 | BPS | lo | 94591/1000000 | 5022148504353/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:671, 127:8, 127:675, 127:116 |
| 127:735 | EPQ | lo | 80611/500000 | 17790630803/110348375000 | 3372 | 127:75, 127:142, 127:675, 127:726, 127:642, 127:134, 127:652 |
| 127:737 | APR | lo | 341637/1000000 | 246616080555981/721864646939000 | 3663 | 127:93, 127:735, 127:116, 127:90, 127:619, 127:38, 127:66 |
| 127:738 | APS | lo | 135329/1000000 | 97689857505327/721864646939000 | 3664 | 127:93, 127:735, 127:116, 127:90, 127:662, 127:631, 127:68 |
| 127:739 | PRS | lo | 21203/200000 | 76528737165327/721864646939000 | 3699 | 127:93, 127:735, 127:116, 127:90, 127:126, 127:663, 127:236 |
| 127:742 | PQS | lo | 12509/100000 | 10596950807/84714000000 | 3870 | 127:105, 127:218, 127:126, 127:677, 127:116, 127:655, 127:730 |
| 127:743 | AHS | lo | 67793/500000 | 2983370038953/22003409021000 | 4053 | 127:175, 127:216, 127:700, 127:178, 127:627, 127:42, 127:674 |
| 127:744 | BHS | lo | 156213/1000000 | 403614696799/2583734643000 | 4104 | 127:177, 127:218, 127:663, 127:178, 127:641, 127:98, 127:647 |
| 127:745 | CHS | lo | 35573/250000 | 6018011973577/42293275406250 | 4111 | 127:177, 127:218, 127:663, 127:178, 127:682, 127:667, 127:651 |
| 127:746 | CPS | lo | 4003/40000 | 2844257539789/28421081073000 | 4112 | 127:177, 127:218, 127:663, 127:178, 127:132, 127:142, 127:668 |
| 127:749 | HPS | lo | 32207/250000 | 261532499857757/2030077219500000 | 4127 | 127:177, 127:218, 127:663, 127:178, 127:683, 127:716, 127:657 |
| 127:750 | CES | lo | 95753/1000000 | 2438529698539/25466680323000 | 4239 | 127:211, 127:739, 127:218, 127:707, 127:681, 127:132, 127:136 |
| 127:751 | BER | hi | 418961/500000 | 418961/500000 | 4320 | 127:3, 127:39, 127:619 |
| 127:752 | ABR | lo | 32097/100000 | 32097/100000 | 4336 | 127:70, 127:662, 127:126 |
| 127:753 | ACF | lo | 45201/125000 | 45201/125000 | 4344 | 127:708, 127:666, 127:142 |
| 127:758 | AEF | lo | 193139/500000 | 193139/500000 | 4359 | 127:708, 127:34, 127:703 |
| 127:759 | AEH | lo | 42881/125000 | 42881/125000 | 4363 | 127:673, 127:34, 127:683 |
| 127:760 | AEQ | lo | 356161/1000000 | 356161/1000000 | 4367 | 127:34, 127:664, 127:735 |
| 127:761 | EPR | hi | 92003/200000 | 92003/200000 | 4368 | 127:34, 127:737, 127:39 |
| 127:763 | AES | lo | 174607/500000 | 174607/500000 | 4369 | 127:34, 127:738, 127:704 |
| 127:769 | BCR | lo | 74463/200000 | 74463/200000 | 4408 | 127:726, 127:665, 127:668 |
| 127:771 | BCS | lo | 32649/100000 | 32649/100000 | 4409 | 127:726, 127:733, 127:746 |
| 127:773 | BEH | lo | 61779/200000 | 61779/200000 | 4418 | 127:676, 127:90, 127:683 |
| 127:774 | BEQ | lo | 173611/500000 | 173611/500000 | 4422 | 127:90, 127:116, 127:735 |
| 127:775 | BER | lo | 79427/200000 | 79427/200000 | 4423 | 127:90, 127:665, 127:706 |
| 127:776 | BES | lo | 77119/250000 | 77119/250000 | 4424 | 127:90, 127:733, 127:704 |
| 127:778 | BFR | lo | 287439/1000000 | 287439/1000000 | 4437 | 127:126, 127:677, 127:218 |
| 127:779 | BHR | lo | 342213/1000000 | 342213/1000000 | 4442 | 127:126, 127:744, 127:228 |
| 127:782 | CFR | lo | 187797/500000 | 187797/500000 | 4471 | 127:659, 127:148, 127:218 |
| 127:783 | CHR | lo | 212443/500000 | 212443/500000 | 4476 | 127:659, 127:745, 127:228 |
| 127:784 | EFQ | lo | 370989/1000000 | 370989/1000000 | 4489 | 127:700, 127:178, 127:216 |
| 127:785 | EFR | lo | 15201/40000 | 15201/40000 | 4490 | 127:663, 127:178, 127:218 |
| 127:787 | FPQ | lo | 156367/500000 | 156367/500000 | 4506 | 127:216, 127:707, 127:742 |
| 127:789 | HPR | lo | 327843/1000000 | 327843/1000000 | 4510 | 127:228, 127:749, 127:739 |
| 127:790 | ABE | lo | 11937/125000 | 760365000/7962259753 | 58 | 127:0, 127:38, 127:752, 127:16, 127:27 |
| 127:791 | CRS | lo | 11853/62500 | 19812069/104467352 | 141 | 127:26, 127:126, 127:70, 127:769, 127:13 |
| 127:794 | ABS | lo | 33803/250000 | 6048417279/44732600000 | 213 | 127:790, 127:70, 127:752, 127:763, 127:39 |
| 127:795 | ERS | lo | 194067/1000000 | 20273721/104467352 | 216 | 127:38, 127:126, 127:70, 127:775, 127:13 |
| 127:796 | APQ | lo | 102069/1000000 | 22080711/216330500 | 297 | 127:8, 127:730, 127:737, 127:116, 127:729 |
| 127:797 | BPR | lo | 95669/1000000 | 22080711/230801000 | 297 | 127:8, 127:730, 127:737, 127:116, 127:724 |
| 127:798 | ACP | lo | 21507/200000 | 96207291/894652000 | 365 | 127:16, 127:737, 127:26, 127:34, 127:39 |
| 127:799 | CFH | lo | 97143/1000000 | 11426631000/117626627263 | 402 | 127:753, 127:204, 127:42, 127:782, 127:49 |
| 127:800 | CPR | lo | 144917/1000000 | 2991025381/20639500000 | 478 | 127:798, 127:791, 127:26, 127:746, 127:29 |
| 127:801 | AHR | lo | 15683/125000 | 22449473/178930400 | 497 | 127:759, 127:685, 127:38, 127:42, 127:31 |
| 127:802 | EFH | lo | 100977/1000000 | 11877696500/117626627263 | 499 | 127:758, 127:204, 127:42, 127:785, 127:49 |
| 127:803 | AFS | lo | 106369/1000000 | 5670546793/53309875000 | 506 | 127:763, 127:721, 127:743, 127:178, 127:698 |
| 127:805 | AHP | lo | 144717/1000000 | 33286207833/230007500000 | 545 | 127:34, 127:789, 127:737, 127:683, 127:761 |
| 127:806 | AHQ | lo | 156927/1000000 | 17549471963/111831500000 | 552 | 127:759, 127:66, 127:760, 127:801, 127:39 |
| 127:807 | BFP | lo | 107793/1000000 | 1558588963/14458968750 | 748 | 127:726, 127:787, 127:116, 127:142, 127:711 |
| 127:808 | BHP | lo | 13811/125000 | 2171449693/19653250000 | 783 | 127:726, 127:789, 127:797, 127:150, 127:712 |
| 127:809 | BFS | lo | 25477/250000 | 5432702987/53309875000 | 841 | 127:776, 127:721, 127:744, 127:178, 127:698 |
| 127:813 | CEF | lo | 21553/200000 | 46796019/434240000 | 1006 | 127:132, 127:784, 127:134, 127:703, 127:715 |
| 127:814 | CEH | lo | 102423/1000000 | 1006477/9826625 | 1040 | 127:132, 127:783, 127:136, 127:150, 127:712 |
| 127:815 | EHP | lo | 105757/1000000 | 16627873/157226000 | 1043 | 127:132, 127:789, 127:150, 127:706, 127:712 |
| 127:817 | AFR | lo | 70337/500000 | 109022834123/775000000000 | 2151 | 127:778, 127:13 |
| 127:821 | AES | hi | 559071/1000000 | 1825145168797/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:794, 127:790, 127:39 |
| 127:831 | EHS | hi | 426157/1000000 | 347807847787452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:794, 127:759, 127:773, 127:185 |
| 127:833 | EQS | lo | 92559/500000 | 1208674221/6529209500 | 2666 | 127:13, 127:126, 127:70, 127:794, 127:760, 127:774, 127:194 |
| 127:836 | EFP | lo | 26543/200000 | 7670401963/57795800000 | 2752 | 127:21, 127:150, 127:805, 127:798, 127:758, 127:813, 127:802 |
| 127:837 | EPS | lo | 7559/62500 | 34950482967/288979000000 | 2757 | 127:21, 127:150, 127:805, 127:798, 127:763, 127:750, 127:186 |
| 127:838 | EPR | lo | 52139/250000 | 25827038309/123837000000 | 2933 | 127:29, 127:746, 127:738, 127:798, 127:38, 127:136, 127:795 |
| 127:839 | FPS | lo | 23679/250000 | 82113034333/866937000000 | 3028 | 127:33, 127:815, 127:805, 127:34, 127:803, 127:178, 127:721 |
| 127:840 | AFP | lo | 162129/1000000 | 72524769543/447326000000 | 3085 | 127:39, 127:838, 127:737, 127:34, 127:758, 127:817 |
| 127:843 | CPQ | hi | 57821/125000 | 413836930649531/894652000000000 | 3103 | 127:39, 127:838, 127:737, 127:34, 127:25, 127:134, 127:165 |
| 127:844 | CPR | hi | 94309/200000 | 21093401441613029/44732600000000000 | 3104 | 127:39, 127:838, 127:737, 127:34, 127:27, 127:136 |
| 127:847 | EPQ | hi | 86829/200000 | 17654923174511/40666000000000 | 3109 | 127:39, 127:838, 127:737, 127:34, 127:37, 127:195 |
| 127:848 | FHP | lo | 48023/500000 | 85927874349/894652000000 | 3112 | 127:39, 127:838, 127:737, 127:34, 127:42, 127:802, 127:204 |
| 127:853 | FHS | lo | 93829/1000000 | 83944497/894652000 | 3157 | 127:39, 127:795, 127:70, 127:763, 127:42, 127:802, 127:204 |
| 127:856 | APQ | hi | 230759/500000 | 258021314471/559071000000 | 3177 | 127:821, 127:837, 127:738, 127:34, 127:37, 127:68 |
| 127:858 | BCP | lo | 412/3125 | 8189797/62119000 | 3180 | 127:821, 127:837, 127:738, 127:34, 127:0, 127:72, 127:771 |
| 127:861 | BPR | hi | 432363/1000000 | 120860555207/279535500000 | 3186 | 127:821, 127:837, 127:738, 127:34, 127:752, 127:751, 127:126 |
| 127:862 | PQR | lo | 133237/1000000 | 24829729/186357000 | 3212 | 127:821, 127:837, 127:738, 127:34, 127:66, 127:194, 127:236 |
| 127:865 | BPS | lo | 94619/1000000 | 5023624879353/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:803, 127:8, 127:807, 127:116 |
| 127:867 | EPQ | lo | 80649/500000 | 3559797669/22069675000 | 3372 | 127:75, 127:142, 127:807, 127:858, 127:774, 127:134, 127:784 |
| 127:869 | APR | lo | 68339/200000 | 246657963555981/721864646939000 | 3663 | 127:93, 127:867, 127:116, 127:90, 127:752, 127:38, 127:66 |
| 127:870 | APS | lo | 1693/12500 | 97770025341327/721864646939000 | 3664 | 127:93, 127:867, 127:116, 127:90, 127:794, 127:763, 127:68 |
| 127:871 | PRS | lo | 5301/50000 | 76532643165327/721864646939000 | 3699 | 127:93, 127:867, 127:116, 127:90, 127:126, 127:795, 127:236 |
| 127:874 | PQS | lo | 125181/1000000 | 23860338049/190606500000 | 3870 | 127:105, 127:218, 127:126, 127:809, 127:116, 127:787, 127:862 |
| 127:875 | AHS | lo | 2122/15625 | 157275896787/1158074159000 | 4053 | 127:175, 127:216, 127:833, 127:178, 127:759, 127:42, 127:806 |
| 127:876 | BHS | lo | 156413/1000000 | 211688287609/1353384813000 | 4104 | 127:177, 127:218, 127:795, 127:178, 127:773, 127:98, 127:779 |
| 127:877 | CHS | lo | 35637/250000 | 4051373203674439/28421081073000000 | 4111 | 127:177, 127:218, 127:795, 127:178, 127:814, 127:799, 127:783 |
| 127:878 | CPS | lo | 50039/500000 | 2844338914789/28421081073000 | 4112 | 127:177, 127:218, 127:795, 127:178, 127:132, 127:142, 127:800 |
| 127:881 | HPS | lo | 128973/1000000 | 1832787326368679/14210540536500000 | 4127 | 127:177, 127:218, 127:795, 127:178, 127:815, 127:848, 127:789 |
| 127:882 | CES | lo | 47903/500000 | 813294935513/8488893441000 | 4239 | 127:211, 127:871, 127:218, 127:839, 127:813, 127:132, 127:136 |
| 127:883 | BER | hi | 418841/500000 | 418841/500000 | 4320 | 127:3, 127:39, 127:752 |
| 127:884 | ABR | lo | 80303/250000 | 80303/250000 | 4336 | 127:70, 127:794, 127:126 |
| 127:885 | ACF | lo | 45333/125000 | 45333/125000 | 4344 | 127:840, 127:798, 127:142 |
| 127:890 | AEF | lo | 96961/250000 | 96961/250000 | 4359 | 127:840, 127:34, 127:836 |
| 127:891 | AEH | lo | 171737/500000 | 171737/500000 | 4363 | 127:805, 127:34, 127:815 |
| 127:892 | AEQ | lo | 356367/1000000 | 356367/1000000 | 4367 | 127:34, 127:796, 127:867 |
| 127:893 | EPR | hi | 459957/1000000 | 459957/1000000 | 4368 | 127:34, 127:869, 127:39 |
| 127:895 | AES | lo | 43673/125000 | 43673/125000 | 4369 | 127:34, 127:870, 127:837 |
| 127:901 | BCR | lo | 186213/500000 | 186213/500000 | 4408 | 127:858, 127:797, 127:800 |
| 127:903 | BCS | lo | 326537/1000000 | 326537/1000000 | 4409 | 127:858, 127:865, 127:878 |
| 127:905 | BEH | lo | 61849/200000 | 61849/200000 | 4418 | 127:808, 127:90, 127:815 |
| 127:906 | BEQ | lo | 173649/500000 | 173649/500000 | 4422 | 127:90, 127:116, 127:867 |
| 127:907 | BER | lo | 15889/40000 | 15889/40000 | 4423 | 127:90, 127:797, 127:838 |
| 127:908 | BES | lo | 308563/1000000 | 308563/1000000 | 4424 | 127:90, 127:865, 127:837 |
| 127:910 | BFR | lo | 71977/250000 | 71977/250000 | 4437 | 127:126, 127:809, 127:218 |
| 127:911 | BHR | lo | 342413/1000000 | 342413/1000000 | 4442 | 127:126, 127:876, 127:228 |
| 127:914 | CFR | lo | 11739/31250 | 11739/31250 | 4471 | 127:791, 127:148, 127:218 |
| 127:915 | CHR | lo | 106299/250000 | 106299/250000 | 4476 | 127:791, 127:877, 127:228 |
| 127:916 | EFQ | lo | 185559/500000 | 185559/500000 | 4489 | 127:833, 127:178, 127:216 |
| 127:917 | EFR | lo | 380067/1000000 | 380067/1000000 | 4490 | 127:795, 127:178, 127:218 |
| 127:919 | FPQ | lo | 312897/1000000 | 312897/1000000 | 4506 | 127:216, 127:839, 127:874 |
| 127:921 | HPR | lo | 327993/1000000 | 327993/1000000 | 4510 | 127:228, 127:881, 127:871 |
| 127:922 | ABE | lo | 47759/500000 | 108649500/1137465679 | 58 | 127:0, 127:38, 127:884, 127:16, 127:27 |
| 127:923 | CRS | lo | 47417/250000 | 24767667/130584190 | 141 | 127:26, 127:126, 127:70, 127:901, 127:13 |
| 127:926 | ABS | lo | 13537/100000 | 7569344213/55915750000 | 213 | 127:922, 127:70, 127:884, 127:895, 127:39 |
| 127:927 | ERS | lo | 194083/1000000 | 20275395/104467352 | 216 | 127:38, 127:126, 127:70, 127:907, 127:13 |
| 127:928 | APQ | lo | 25539/250000 | 3680723/36030250 | 297 | 127:8, 127:862, 127:869, 127:116, 127:861 |
| 127:929 | BPR | lo | 95703/1000000 | 11042169/115379500 | 297 | 127:8, 127:862, 127:869, 127:116, 127:856 |
| 127:930 | ACP | lo | 53771/500000 | 19242537/178930400 | 365 | 127:16, 127:869, 127:26, 127:34, 127:39 |
| 127:931 | CFH | lo | 97289/1000000 | 11443836000/117626627263 | 402 | 127:885, 127:204, 127:42, 127:914, 127:49 |
| 127:932 | CPR | lo | 72463/500000 | 22434079589/154796250000 | 478 | 127:930, 127:923, 127:26, 127:878, 127:29 |
| 127:933 | AHR | lo | 126029/1000000 | 28188227869/223663000000 | 497 | 127:891, 127:817, 127:38, 127:42, 127:31 |
| 127:934 | EFH | lo | 101189/1000000 | 11902620500/117626627263 | 499 | 127:890, 127:204, 127:42, 127:917, 127:49 |
| 127:935 | AFS | lo | 53281/500000 | 5676561917/53269625000 | 506 | 127:895, 127:853, 127:875, 127:178, 127:831 |
| 127:937 | AHP | lo | 144883/1000000 | 13327997423/91991400000 | 545 | 127:34, 127:921, 127:869, 127:815, 127:893 |
| 127:938 | AHQ | lo | 78657/500000 | 140741822643/894652000000 | 552 | 127:891, 127:66, 127:892, 127:933, 127:39 |
| 127:939 | BFP | lo | 53939/500000 | 155941689/1445525000 | 748 | 127:858, 127:919, 127:116, 127:142, 127:843 |
| 127:940 | BHP | lo | 110579/1000000 | 1303574403/11788625000 | 783 | 127:858, 127:921, 127:929, 127:150, 127:844 |
| 127:941 | BFS | lo | 102071/1000000 | 43498566727/426157000000 | 841 | 127:908, 127:853, 127:876, 127:178, 127:831 |
| 127:945 | CEF | lo | 13491/125000 | 55583/515000 | 1006 | 127:132, 127:916, 127:134, 127:836, 127:847 |
| 127:946 | CEH | lo | 102513/1000000 | 24169863/235772500 | 1040 | 127:132, 127:915, 127:136, 127:150, 127:844 |
| 127:947 | EHP | lo | 5291/50000 | 49899057/471545000 | 1043 | 127:132, 127:921, 127:150, 127:838, 127:844 |
| 127:949 | AFR | lo | 17613/125000 | 81900540967/581250000000 | 2151 | 127:910, 127:13 |
| 127:953 | AES | hi | 559067/1000000 | 1825132381297/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:926, 127:922, 127:39 |
| 127:963 | EHS | hi | 213009/500000 | 347695085287452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:926, 127:891, 127:905, 127:185 |
| 127:965 | EQS | lo | 11573/62500 | 604501023/3264604750 | 2666 | 127:13, 127:126, 127:70, 127:926, 127:892, 127:906, 127:194 |
| 127:968 | EFP | lo | 26613/200000 | 11535976963/86693700000 | 2752 | 127:21, 127:150, 127:937, 127:930, 127:890, 127:945, 127:934 |
| 127:969 | EPS | lo | 30243/250000 | 52437697349/433468500000 | 2757 | 127:21, 127:150, 127:937, 127:930, 127:895, 127:882, 127:186 |
| 127:970 | EPR | lo | 208563/1000000 | 2690404237/12899687500 | 2933 | 127:29, 127:878, 127:870, 127:930, 127:38, 127:136, 127:927 |
| 127:971 | FPS | lo | 11843/125000 | 2053434221/21673425000 | 3028 | 127:33, 127:947, 127:937, 127:34, 127:935, 127:178, 127:853 |
| 127:972 | AFP | lo | 20347/125000 | 7281421379/44732600000 | 3085 | 127:39, 127:970, 127:869, 127:34, 127:890, 127:949 |
| 127:975 | CPQ | hi | 92501/200000 | 413780611431531/894652000000000 | 3103 | 127:39, 127:970, 127:869, 127:34, 127:25, 127:134, 127:165 |
| 127:976 | CPR | hi | 18859/40000 | 105451319568029251/223663000000000000 | 3104 | 127:39, 127:970, 127:869, 127:34, 127:27, 127:136 |
| 127:979 | EPQ | hi | 86819/200000 | 17652886127511/40666000000000 | 3109 | 127:39, 127:970, 127:869, 127:34, 127:37, 127:195 |
| 127:980 | FHP | lo | 96127/1000000 | 17200155271/178930400000 | 3112 | 127:39, 127:970, 127:869, 127:34, 127:42, 127:934, 127:204 |
| 127:985 | FHS | lo | 93851/1000000 | 83964213/894652000 | 3157 | 127:39, 127:927, 127:70, 127:895, 127:42, 127:934, 127:204 |
| 127:988 | APQ | hi | 230739/500000 | 51599317787/111813400000 | 3177 | 127:953, 127:969, 127:870, 127:34, 127:37, 127:68 |
| 127:990 | BCP | lo | 16481/125000 | 18428043/139766750 | 3180 | 127:953, 127:969, 127:870, 127:34, 127:0, 127:72, 127:903 |
| 127:993 | BPR | hi | 432101/1000000 | 120786605863/279533500000 | 3186 | 127:953, 127:969, 127:870, 127:34, 127:884, 127:883, 127:126 |
| 127:994 | PQR | lo | 133247/1000000 | 74494023/559067000 | 3212 | 127:953, 127:969, 127:870, 127:34, 127:66, 127:194, 127:236 |
| 127:997 | BPS | lo | 23657/250000 | 5024118941853/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:935, 127:8, 127:939, 127:116 |
| 127:999 | EPQ | lo | 161327/1000000 | 17802275883/110348375000 | 3372 | 127:75, 127:142, 127:939, 127:990, 127:906, 127:134, 127:916 |
| 127:1001 | APR | lo | 341751/1000000 | 246698221819981/721864646939000 | 3663 | 127:93, 127:999, 127:116, 127:90, 127:884, 127:38, 127:66 |
| 127:1002 | APS | lo | 135499/1000000 | 97812549155327/721864646939000 | 3664 | 127:93, 127:999, 127:116, 127:90, 127:926, 127:895, 127:68 |
| 127:1003 | PRS | lo | 53011/500000 | 76534131165327/721864646939000 | 3699 | 127:93, 127:999, 127:116, 127:90, 127:126, 127:927, 127:236 |
| 127:1006 | PQS | lo | 12521/100000 | 95464090537/762426000000 | 3870 | 127:105, 127:218, 127:126, 127:941, 127:116, 127:919, 127:994 |
| 127:1007 | AHS | lo | 67959/500000 | 2990681038953/22003409021000 | 4053 | 127:175, 127:216, 127:965, 127:178, 127:891, 127:42, 127:938 |
| 127:1008 | BHS | lo | 19561/125000 | 4447585289789/28421081073000 | 4104 | 127:177, 127:218, 127:927, 127:178, 127:905, 127:98, 127:911 |
| 127:1009 | CHS | lo | 35677/250000 | 4055941181511097/28421081073000000 | 4111 | 127:177, 127:218, 127:927, 127:178, 127:946, 127:931, 127:915 |
| 127:1010 | CPS | lo | 100079/1000000 | 406339112827/4060154439000 | 4112 | 127:177, 127:218, 127:927, 127:178, 127:132, 127:142, 127:932 |
| 127:1013 | HPS | lo | 129061/1000000 | 3668074385304271/28421081073000000 | 4127 | 127:177, 127:218, 127:927, 127:178, 127:947, 127:980, 127:921 |
| 127:1014 | CES | lo | 19167/200000 | 7321823860117/76400040969000 | 4239 | 127:211, 127:1003, 127:218, 127:971, 127:945, 127:132, 127:136 |
| 127:1015 | BER | hi | 2617/3125 | 2617/3125 | 4320 | 127:3, 127:39, 127:884 |
| 127:1016 | ABR | lo | 32137/100000 | 32137/100000 | 4336 | 127:70, 127:926, 127:126 |
| 127:1017 | ACF | lo | 181659/500000 | 181659/500000 | 4344 | 127:972, 127:930, 127:142 |
| 127:1022 | AEF | lo | 388841/1000000 | 388841/1000000 | 4359 | 127:972, 127:34, 127:968 |
| 127:1023 | AEH | lo | 343703/1000000 | 343703/1000000 | 4363 | 127:937, 127:34, 127:947 |
| 127:1024 | AEQ | lo | 356483/1000000 | 356483/1000000 | 4367 | 127:34, 127:928, 127:999 |
| 127:1025 | EPR | hi | 459901/1000000 | 459901/1000000 | 4368 | 127:34, 127:1001, 127:39 |
| 127:1027 | AES | lo | 349471/1000000 | 349471/1000000 | 4369 | 127:34, 127:1002, 127:969 |
| 127:1033 | BCR | lo | 372477/1000000 | 372477/1000000 | 4408 | 127:990, 127:929, 127:932 |
| 127:1035 | BCS | lo | 65311/200000 | 65311/200000 | 4409 | 127:990, 127:997, 127:1010 |
| 127:1037 | BEH | lo | 309399/1000000 | 309399/1000000 | 4418 | 127:940, 127:90, 127:947 |
| 127:1038 | BEQ | lo | 347327/1000000 | 347327/1000000 | 4422 | 127:90, 127:116, 127:999 |
| 127:1039 | BER | lo | 198633/500000 | 198633/500000 | 4423 | 127:90, 127:929, 127:970 |
| 127:1040 | BES | lo | 1543/5000 | 1543/5000 | 4424 | 127:90, 127:997, 127:969 |
| 127:1042 | BFR | lo | 288071/1000000 | 288071/1000000 | 4437 | 127:126, 127:941, 127:218 |
| 127:1043 | BHR | lo | 42811/125000 | 42811/125000 | 4442 | 127:126, 127:1008, 127:228 |
| 127:1046 | CFR | lo | 93917/250000 | 93917/250000 | 4471 | 127:923, 127:148, 127:218 |
| 127:1047 | CHR | lo | 13293/31250 | 13293/31250 | 4476 | 127:923, 127:1009, 127:228 |
| 127:1048 | EFQ | lo | 11599/31250 | 11599/31250 | 4489 | 127:965, 127:178, 127:216 |
| 127:1049 | EFR | lo | 380083/1000000 | 380083/1000000 | 4490 | 127:927, 127:178, 127:218 |
| 127:1051 | FPQ | lo | 156477/500000 | 156477/500000 | 4506 | 127:216, 127:971, 127:1006 |
| 127:1053 | HPR | lo | 328083/1000000 | 328083/1000000 | 4510 | 127:228, 127:1013, 127:1003 |
| 127:1054 | ABE | lo | 95533/1000000 | 760665000/7962259753 | 58 | 127:0, 127:38, 127:1016, 127:16, 127:27 |
| 127:1055 | CRS | lo | 189677/1000000 | 99075411/522336760 | 141 | 127:26, 127:126, 127:70, 127:1033, 127:13 |
| 127:1058 | ABS | lo | 27093/200000 | 12119406427/89465200000 | 213 | 127:1054, 127:70, 127:1016, 127:1027, 127:39 |
| 127:1059 | ERS | lo | 19409/100000 | 25345197/130584190 | 216 | 127:38, 127:126, 127:70, 127:1039, 127:13 |
| 127:1060 | APQ | lo | 12779/125000 | 22087407/216050500 | 297 | 127:8, 127:994, 127:1001, 127:116, 127:993 |
| 127:1061 | BPR | lo | 23931/250000 | 7362469/76913000 | 297 | 127:8, 127:994, 127:1001, 127:116, 127:988 |
| 127:1062 | ACP | lo | 107547/1000000 | 96217893/894652000 | 365 | 127:16, 127:1001, 127:26, 127:34, 127:39 |
| 127:1063 | CFH | lo | 48689/500000 | 11454283000/117626627263 | 402 | 127:1017, 127:204, 127:42, 127:1046, 127:49 |
| 127:1064 | CPR | lo | 14493/100000 | 29912975823/206395000000 | 478 | 127:1062, 127:1055, 127:26, 127:1010, 127:29 |
| 127:1065 | AHR | lo | 63077/500000 | 14108022189/111831500000 | 497 | 127:1023, 127:949, 127:38, 127:42, 127:31 |
| 127:1066 | EFH | lo | 101323/1000000 | 11918322000/117626627263 | 499 | 127:1022, 127:204, 127:42, 127:1049, 127:49 |
| 127:1067 | AFS | lo | 53329/500000 | 45438576821/426018000000 | 506 | 127:1027, 127:985, 127:1007, 127:178, 127:963 |
| 127:1069 | AHP | lo | 72489/500000 | 196105323/1352650000 | 545 | 127:34, 127:1053, 127:1001, 127:947, 127:1025 |
| 127:1070 | AHQ | lo | 39363/250000 | 70432446691/447326000000 | 552 | 127:1023, 127:66, 127:1024, 127:1065, 127:39 |
| 127:1071 | BFP | lo | 21583/200000 | 3119459937/28906562500 | 748 | 127:990, 127:1051, 127:116, 127:142, 127:975 |
| 127:1072 | BHP | lo | 11063/100000 | 6519927423/58934375000 | 783 | 127:990, 127:1053, 127:1061, 127:150, 127:976 |
| 127:1073 | BFS | lo | 20429/200000 | 11451527/112110000 | 841 | 127:1040, 127:985, 127:1008, 127:178, 127:963 |
| 127:1077 | CEF | lo | 54013/500000 | 46893669/434095000 | 1006 | 127:132, 127:1048, 127:134, 127:968, 127:979 |
| 127:1078 | CEH | lo | 25641/250000 | 24178233/235737500 | 1040 | 127:132, 127:1047, 127:136, 127:150, 127:976 |
| 127:1079 | EHP | lo | 21171/200000 | 24954039/235737500 | 1043 | 127:132, 127:1053, 127:150, 127:970, 127:976 |
| 127:1081 | AFR | lo | 140983/1000000 | 327787636841/2325000000000 | 2151 | 127:1042, 127:13 |
| 127:1085 | AES | hi | 111813/200000 | 1825123662547/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:1058, 127:1054, 127:39 |
| 127:1095 | EHS | hi | 8519/20000 | 347639430599952631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1058, 127:1023, 127:1037, 127:185 |
| 127:1097 | EQS | lo | 92597/500000 | 2418341217/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:1058, 127:1024, 127:1038, 127:194 |
| 127:1100 | EFP | lo | 133287/1000000 | 7703441279/57795800000 | 2752 | 127:21, 127:150, 127:1069, 127:1062, 127:1022, 127:1077, 127:1066 |
| 127:1101 | EPS | lo | 60493/500000 | 3496265221/28897900000 | 2757 | 127:21, 127:150, 127:1069, 127:1062, 127:1027, 127:1014, 127:186 |
| 127:1102 | EPR | lo | 104283/500000 | 64570625977/309592500000 | 2933 | 127:29, 127:1010, 127:1002, 127:1062, 127:38, 127:136, 127:1059 |
| 127:1103 | FPS | lo | 47379/500000 | 2738335053/28897900000 | 3028 | 127:33, 127:1079, 127:1069, 127:34, 127:1067, 127:178, 127:985 |
| 127:1104 | AFP | lo | 163189/1000000 | 145998219591/894652000000 | 3085 | 127:39, 127:1102, 127:1001, 127:34, 127:1022, 127:1081 |
| 127:1107 | CPQ | hi | 115611/250000 | 413726234255531/894652000000000 | 3103 | 127:39, 127:1102, 127:1001, 127:34, 127:25, 127:134, 127:165 |
| 127:1108 | CPR | hi | 471407/1000000 | 105436172881098043/223663000000000000 | 3104 | 127:39, 127:1102, 127:1001, 127:34, 127:27, 127:136 |
| 127:1111 | EPQ | hi | 434047/1000000 | 17650919323511/40666000000000 | 3109 | 127:39, 127:1102, 127:1001, 127:34, 127:37, 127:195 |
| 127:1112 | FHP | lo | 96179/1000000 | 86047029573/894652000000 | 3112 | 127:39, 127:1102, 127:1001, 127:34, 127:42, 127:1066, 127:204 |
| 127:1117 | FHS | lo | 18773/200000 | 3359067/35786080 | 3157 | 127:39, 127:1059, 127:70, 127:1027, 127:42, 127:1066, 127:204 |
| 127:1120 | APQ | hi | 461457/1000000 | 257984226167/559065000000 | 3177 | 127:1085, 127:1101, 127:1002, 127:34, 127:37, 127:68 |
| 127:1122 | BCP | lo | 131851/1000000 | 1228561/9317750 | 3180 | 127:1085, 127:1101, 127:1002, 127:34, 127:0, 127:72, 127:1035 |
| 127:1125 | BPR | hi | 431887/1000000 | 4024211449/9317750000 | 3186 | 127:1085, 127:1101, 127:1002, 127:34, 127:1016, 127:1015, 127:126 |
| 127:1126 | PQR | lo | 133251/1000000 | 24832147/186355000 | 3212 | 127:1085, 127:1101, 127:1002, 127:34, 127:66, 127:194, 127:236 |
| 127:1129 | BPS | lo | 11829/125000 | 5024334004353/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:1067, 127:8, 127:1071, 127:116 |
| 127:1131 | EPQ | lo | 161339/1000000 | 17803541371/110348375000 | 3372 | 127:75, 127:142, 127:1071, 127:1122, 127:1038, 127:134, 127:1048 |
| 127:1133 | APR | lo | 341787/1000000 | 246724219925981/721864646939000 | 3663 | 127:93, 127:1131, 127:116, 127:90, 127:1016, 127:38, 127:66 |
| 127:1134 | APS | lo | 33883/250000 | 97836475800327/721864646939000 | 3664 | 127:93, 127:1131, 127:116, 127:90, 127:1058, 127:1027, 127:68 |
| 127:1135 | PRS | lo | 106023/1000000 | 76534782165327/721864646939000 | 3699 | 127:93, 127:1131, 127:116, 127:90, 127:126, 127:1059, 127:236 |
| 127:1138 | PQS | lo | 62611/500000 | 6364851893/50828400000 | 3870 | 127:105, 127:218, 127:126, 127:1073, 127:116, 127:1051, 127:1126 |
| 127:1139 | AHS | lo | 135969/1000000 | 2991782038953/22003409021000 | 4053 | 127:175, 127:216, 127:1097, 127:178, 127:1023, 127:42, 127:1070 |
| 127:1140 | BHS | lo | 3913/25000 | 4448472664789/28421081073000 | 4104 | 127:177, 127:218, 127:1059, 127:178, 127:1037, 127:98, 127:1043 |
| 127:1141 | CHS | lo | 28561/200000 | 2029338016363297/14210540536500000 | 4111 | 127:177, 127:218, 127:1059, 127:178, 127:1078, 127:1063, 127:1047 |
| 127:1142 | CPS | lo | 1251/12500 | 316043254421/3157897897000 | 4112 | 127:177, 127:218, 127:1059, 127:178, 127:132, 127:142, 127:1064 |
| 127:1145 | HPS | lo | 32279/250000 | 3669633656520067/28421081073000000 | 4127 | 127:177, 127:218, 127:1059, 127:178, 127:1079, 127:1112, 127:1053 |
| 127:1146 | CES | lo | 23963/250000 | 38746705203/404233021000 | 4239 | 127:211, 127:1135, 127:218, 127:1103, 127:1077, 127:132, 127:136 |
| 127:1147 | BER | hi | 418641/500000 | 418641/500000 | 4320 | 127:3, 127:39, 127:1016 |
| 127:1148 | ABR | lo | 64293/200000 | 64293/200000 | 4336 | 127:70, 127:1058, 127:126 |
| 127:1149 | ACF | lo | 45467/125000 | 45467/125000 | 4344 | 127:1104, 127:1062, 127:142 |
| 127:1154 | AEF | lo | 97369/250000 | 97369/250000 | 4359 | 127:1104, 127:34, 127:1100 |
| 127:1155 | AEH | lo | 343833/1000000 | 343833/1000000 | 4363 | 127:1069, 127:34, 127:1079 |
| 127:1156 | AEQ | lo | 356571/1000000 | 356571/1000000 | 4367 | 127:34, 127:1060, 127:1131 |
| 127:1157 | EPR | hi | 91973/200000 | 91973/200000 | 4368 | 127:34, 127:1133, 127:39 |
| 127:1159 | AES | lo | 174759/500000 | 174759/500000 | 4369 | 127:34, 127:1134, 127:1101 |
| 127:1165 | BCR | lo | 74501/200000 | 74501/200000 | 4408 | 127:1122, 127:1061, 127:1064 |
| 127:1167 | BCS | lo | 326563/1000000 | 326563/1000000 | 4409 | 127:1122, 127:1129, 127:1142 |
| 127:1169 | BEH | lo | 61897/200000 | 61897/200000 | 4418 | 127:1072, 127:90, 127:1079 |
| 127:1170 | BEQ | lo | 347339/1000000 | 347339/1000000 | 4422 | 127:90, 127:116, 127:1131 |
| 127:1171 | BER | lo | 39729/100000 | 39729/100000 | 4423 | 127:90, 127:1061, 127:1102 |
| 127:1172 | BES | lo | 154309/500000 | 154309/500000 | 4424 | 127:90, 127:1129, 127:1101 |
| 127:1174 | BFR | lo | 57629/200000 | 57629/200000 | 4437 | 127:126, 127:1073, 127:218 |
| 127:1175 | BHR | lo | 8563/25000 | 8563/25000 | 4442 | 127:126, 127:1140, 127:228 |
| 127:1178 | CFR | lo | 375677/1000000 | 375677/1000000 | 4471 | 127:1055, 127:148, 127:218 |
| 127:1179 | CHR | lo | 212741/500000 | 212741/500000 | 4476 | 127:1055, 127:1141, 127:228 |
| 127:1180 | EFQ | lo | 185597/500000 | 185597/500000 | 4489 | 127:1097, 127:178, 127:216 |
| 127:1181 | EFR | lo | 38009/100000 | 38009/100000 | 4490 | 127:1059, 127:178, 127:218 |
| 127:1183 | FPQ | lo | 15649/50000 | 15649/50000 | 4506 | 127:216, 127:1103, 127:1138 |
| 127:1185 | HPR | lo | 328139/1000000 | 328139/1000000 | 4510 | 127:228, 127:1145, 127:1135 |
| 127:1186 | ABE | lo | 47771/500000 | 760736250/7962259753 | 58 | 127:0, 127:38, 127:1148, 127:16, 127:27 |
| 127:1187 | CRS | lo | 94841/500000 | 19815603/104467352 | 141 | 127:26, 127:126, 127:70, 127:1165, 127:13 |
| 127:1190 | ABS | lo | 135519/1000000 | 12124320987/89465200000 | 213 | 127:1186, 127:70, 127:1148, 127:1159, 127:39 |
| 127:1191 | ERS | lo | 38819/200000 | 5069151/26116838 | 216 | 127:38, 127:126, 127:70, 127:1171, 127:13 |
| 127:1192 | APQ | lo | 102291/1000000 | 22089267/215943500 | 297 | 127:8, 127:1126, 127:1133, 127:116, 127:1125 |
| 127:1193 | BPR | lo | 95737/1000000 | 272707/2848500 | 297 | 127:8, 127:1126, 127:1133, 127:116, 127:1120 |
| 127:1194 | ACP | lo | 107551/1000000 | 96221241/894652000 | 365 | 127:16, 127:1133, 127:26, 127:34, 127:39 |
| 127:1195 | CFH | lo | 48717/500000 | 11460901500/117626627263 | 402 | 127:1149, 127:204, 127:42, 127:1178, 127:49 |
| 127:1196 | CPR | lo | 144933/1000000 | 44870458391/309592500000 | 478 | 127:1194, 127:1187, 127:26, 127:1142, 127:29 |
| 127:1197 | AHR | lo | 25241/200000 | 10264514349/81332000000 | 497 | 127:1155, 127:1081, 127:38, 127:42, 127:31 |
| 127:1198 | EFH | lo | 101407/1000000 | 11928273000/117626627263 | 499 | 127:1154, 127:204, 127:42, 127:1181, 127:49 |
| 127:1199 | AFS | lo | 26677/250000 | 649323201/6085000000 | 506 | 127:1159, 127:1117, 127:1139, 127:178, 127:1095 |
| 127:1201 | AHP | lo | 29007/200000 | 13339357977/91973000000 | 545 | 127:34, 127:1185, 127:1133, 127:1079, 127:1157 |
| 127:1202 | AHQ | lo | 6301/40000 | 28186090011/178930400000 | 552 | 127:1155, 127:66, 127:1156, 127:1197, 127:39 |
| 127:1203 | BFP | lo | 53969/500000 | 2495786299/23122200000 | 748 | 127:1122, 127:1183, 127:116, 127:142, 127:1107 |
| 127:1204 | BHP | lo | 55333/500000 | 52168996289/471407000000 | 783 | 127:1122, 127:1185, 127:1193, 127:150, 127:1108 |
| 127:1205 | BFS | lo | 51091/500000 | 4352478857/42595000000 | 841 | 127:1172, 127:1117, 127:1140, 127:178, 127:1095 |
| 127:1209 | CEF | lo | 108091/1000000 | 46916733/434047000 | 1006 | 127:132, 127:1180, 127:134, 127:1100, 127:1111 |
| 127:1210 | CEH | lo | 102599/1000000 | 12091581/117851750 | 1040 | 127:132, 127:1179, 127:136, 127:150, 127:1108 |
| 127:1211 | EHP | lo | 52941/500000 | 9982713/94281400 | 1043 | 127:132, 127:1185, 127:150, 127:1102, 127:1108 |
| 127:1213 | AFR | lo | 7051/50000 | 2115302189/15000000000 | 2151 | 127:1174, 127:13 |
| 127:1217 | AES | hi | 559063/1000000 | 1825118431297/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:1190, 127:1186, 127:39 |
| 127:1227 | EHS | hi | 53239/125000 | 347608043099952631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1190, 127:1155, 127:1169, 127:185 |
| 127:1229 | EQS | lo | 185211/1000000 | 2418573717/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:1190, 127:1156, 127:1170, 127:194 |
| 127:1232 | EFP | lo | 133427/1000000 | 38557770433/288979000000 | 2752 | 127:21, 127:150, 127:1201, 127:1194, 127:1154, 127:1209, 127:1198 |
| 127:1233 | EPS | lo | 60497/500000 | 1748249247/14448950000 | 2757 | 127:21, 127:150, 127:1201, 127:1194, 127:1159, 127:1146, 127:186 |
| 127:1234 | EPR | lo | 26071/125000 | 18448969427/88455000000 | 2933 | 127:29, 127:1142, 127:1134, 127:1194, 127:38, 127:136, 127:1191 |
| 127:1235 | FPS | lo | 47383/500000 | 3423209019/36122375000 | 3028 | 127:33, 127:1211, 127:1201, 127:34, 127:1199, 127:178, 127:1117 |
| 127:1236 | AFP | lo | 40863/250000 | 36558173403/223663000000 | 3085 | 127:39, 127:1234, 127:1133, 127:34, 127:1154, 127:1213 |
| 127:1239 | CPQ | hi | 92481/200000 | 413691277499531/894652000000000 | 3103 | 127:39, 127:1234, 127:1133, 127:34, 127:25, 127:134, 127:165 |
| 127:1240 | CPR | hi | 471363/1000000 | 21085287145042739/44732600000000000 | 3104 | 127:39, 127:1234, 127:1133, 127:34, 127:27, 127:136 |
| 127:1243 | EPQ | hi | 13563/31250 | 17649654949511/40666000000000 | 3109 | 127:39, 127:1234, 127:1133, 127:34, 127:37, 127:195 |
| 127:1244 | FHP | lo | 96211/1000000 | 86076039309/894652000000 | 3112 | 127:39, 127:1234, 127:1133, 127:34, 127:42, 127:1198, 127:204 |
| 127:1249 | FHS | lo | 93873/1000000 | 83984487/894652000 | 3157 | 127:39, 127:1191, 127:70, 127:1159, 127:42, 127:1198, 127:204 |
| 127:1252 | APQ | hi | 92289/200000 | 257976499437/559063000000 | 3177 | 127:1217, 127:1233, 127:1134, 127:34, 127:37, 127:68 |
| 127:1254 | BCP | lo | 131853/1000000 | 36857109/279531500 | 3180 | 127:1217, 127:1233, 127:1134, 127:34, 127:0, 127:72, 127:1167 |
| 127:1257 | BPR | hi | 431751/1000000 | 30171965781/69882875000 | 3186 | 127:1217, 127:1233, 127:1134, 127:34, 127:1148, 127:1147, 127:126 |
| 127:1258 | PQR | lo | 66627/500000 | 74497743/559063000 | 3212 | 127:1217, 127:1233, 127:1134, 127:34, 127:66, 127:194, 127:236 |
| 127:1261 | BPS | lo | 18927/200000 | 5024467691853/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:1199, 127:8, 127:1203, 127:116 |
| 127:1262 | EPQ | lo | 32269/200000 | 2297313411/14238500000 | 3372 | 127:75, 127:142, 127:1203, 127:1254, 127:1170, 127:134, 127:1180 |
| 127:1264 | APR | lo | 21363/62500 | 246739801920981/721864646939000 | 3663 | 127:93, 127:1262, 127:116, 127:90, 127:1148, 127:38, 127:66 |
| 127:1265 | APS | lo | 135551/1000000 | 97849814220327/721864646939000 | 3664 | 127:93, 127:1262, 127:116, 127:90, 127:1190, 127:1159, 127:68 |
| 127:1266 | PRS | lo | 13253/125000 | 76535247165327/721864646939000 | 3699 | 127:93, 127:1262, 127:116, 127:90, 127:126, 127:1191, 127:236 |
| 127:1269 | PQS | lo | 125227/1000000 | 2652138673/21178500000 | 3870 | 127:105, 127:218, 127:126, 127:1205, 127:116, 127:1183, 127:1258 |
| 127:1270 | AHS | lo | 33999/250000 | 2992391038953/22003409021000 | 4053 | 127:175, 127:216, 127:1229, 127:178, 127:1155, 127:42, 127:1202 |
| 127:1271 | BHS | lo | 19567/125000 | 1482976638263/9473693691000 | 4104 | 127:177, 127:218, 127:1191, 127:178, 127:1169, 127:98, 127:1175 |
| 127:1272 | CHS | lo | 28573/200000 | 676729998044447/4736846845500000 | 4111 | 127:177, 127:218, 127:1191, 127:178, 127:1210, 127:1195, 127:1179 |
| 127:1275 | HPS | lo | 129151/1000000 | 1223538918704801/9473693691000000 | 4127 | 127:177, 127:218, 127:1191, 127:178, 127:1211, 127:1244, 127:1185 |
| 127:1276 | CES | lo | 95863/1000000 | 7323992192617/76400040969000 | 4239 | 127:211, 127:1266, 127:218, 127:1235, 127:1209, 127:132, 127:136 |
| 127:1277 | BER | hi | 837187/1000000 | 837187/1000000 | 4320 | 127:3, 127:39, 127:1148 |
| 127:1278 | ABR | lo | 321519/1000000 | 321519/1000000 | 4336 | 127:70, 127:1190, 127:126 |
| 127:1279 | ACF | lo | 364003/1000000 | 364003/1000000 | 4344 | 127:1236, 127:1194, 127:142 |
| 127:1284 | AEF | lo | 389879/1000000 | 389879/1000000 | 4359 | 127:1236, 127:34, 127:1232 |
| 127:1285 | AEH | lo | 343917/1000000 | 343917/1000000 | 4363 | 127:1201, 127:34, 127:1211 |
| 127:1286 | AEQ | lo | 89159/250000 | 89159/250000 | 4367 | 127:34, 127:1192, 127:1262 |
| 127:1287 | EPR | hi | 114961/250000 | 114961/250000 | 4368 | 127:34, 127:1264, 127:39 |
| 127:1289 | AES | lo | 69909/200000 | 69909/200000 | 4369 | 127:34, 127:1265, 127:1233 |
| 127:1295 | BCR | lo | 372523/1000000 | 372523/1000000 | 4408 | 127:1254, 127:1193, 127:1196 |
| 127:1296 | BCS | lo | 40821/125000 | 40821/125000 | 4409 | 127:1254, 127:1261, 127:1142 |
| 127:1298 | BEH | lo | 77387/250000 | 77387/250000 | 4418 | 127:1204, 127:90, 127:1211 |
| 127:1299 | BEQ | lo | 69469/200000 | 69469/200000 | 4422 | 127:90, 127:116, 127:1262 |
| 127:1300 | BER | lo | 79461/200000 | 79461/200000 | 4423 | 127:90, 127:1193, 127:1234 |
| 127:1301 | BES | lo | 308629/1000000 | 308629/1000000 | 4424 | 127:90, 127:1261, 127:1233 |
| 127:1303 | BFR | lo | 144091/500000 | 144091/500000 | 4437 | 127:126, 127:1205, 127:218 |
| 127:1304 | BHR | lo | 42817/125000 | 42817/125000 | 4442 | 127:126, 127:1271, 127:228 |
| 127:1307 | CFR | lo | 187841/500000 | 187841/500000 | 4471 | 127:1187, 127:148, 127:218 |
| 127:1308 | CHR | lo | 425547/1000000 | 425547/1000000 | 4476 | 127:1187, 127:1272, 127:228 |
| 127:1309 | EFQ | lo | 371211/1000000 | 371211/1000000 | 4489 | 127:1229, 127:178, 127:216 |
| 127:1310 | EFR | lo | 76019/200000 | 76019/200000 | 4490 | 127:1191, 127:178, 127:218 |
| 127:1312 | FPQ | lo | 312993/1000000 | 312993/1000000 | 4506 | 127:216, 127:1235, 127:1269 |
| 127:1314 | HPR | lo | 13127/40000 | 13127/40000 | 4510 | 127:228, 127:1275, 127:1266 |
| 127:1315 | ABE | lo | 95547/1000000 | 760776750/7962259753 | 58 | 127:0, 127:38, 127:1278, 127:16, 127:27 |
| 127:1316 | CRS | lo | 37937/200000 | 99079689/522336760 | 141 | 127:26, 127:126, 127:70, 127:1295, 127:13 |
| 127:1319 | ABS | lo | 135551/1000000 | 24254245971/178930400000 | 213 | 127:1315, 127:70, 127:1278, 127:1289, 127:39 |
| 127:1320 | ERS | lo | 194097/1000000 | 1843353/9497032 | 216 | 127:38, 127:126, 127:70, 127:1300, 127:13 |
| 127:1321 | APQ | lo | 102329/1000000 | 7363461/71958500 | 297 | 127:8, 127:1258, 127:1264, 127:116, 127:1257 |
| 127:1322 | BPR | lo | 1496/15625 | 7363461/76907500 | 297 | 127:8, 127:1258, 127:1264, 127:116, 127:1252 |
| 127:1323 | ACP | lo | 107553/1000000 | 48111597/447326000 | 365 | 127:16, 127:1264, 127:26, 127:34, 127:39 |
| 127:1324 | CFH | lo | 9747/100000 | 11465117500/117626627263 | 402 | 127:1279, 127:204, 127:42, 127:1307, 127:49 |
| 127:1325 | CPR | lo | 28987/200000 | 5982774587/41279000000 | 478 | 127:1323, 127:1316, 127:26, 127:1142, 127:29 |
| 127:1326 | AHR | lo | 15779/125000 | 5646711267/44732600000 | 497 | 127:1285, 127:1213, 127:38, 127:42, 127:31 |
| 127:1327 | EFH | lo | 101461/1000000 | 11934597000/117626627263 | 499 | 127:1284, 127:204, 127:42, 127:1310, 127:49 |
| 127:1328 | AFS | lo | 6671/62500 | 9092093157/85182400000 | 506 | 127:1289, 127:1249, 127:1270, 127:178, 127:1227 |
| 127:1330 | AHP | lo | 72537/500000 | 8338948707/57480500000 | 545 | 127:34, 127:1314, 127:1264, 127:1211, 127:1287 |
| 127:1331 | AHQ | lo | 157571/1000000 | 17621464819/111831500000 | 552 | 127:1285, 127:66, 127:1286, 127:1326, 127:39 |
| 127:1332 | BFP | lo | 107953/1000000 | 16639355343/154135000000 | 748 | 127:1254, 127:1312, 127:116, 127:142, 127:1239 |
| 127:1333 | BHP | lo | 110689/1000000 | 695667337/6284840000 | 783 | 127:1254, 127:1314, 127:1322, 127:150, 127:1240 |
| 127:1334 | BFS | lo | 102203/1000000 | 43529778117/425912000000 | 841 | 127:1301, 127:1249, 127:1271, 127:178, 127:1227 |
| 127:1338 | CEF | lo | 27033/250000 | 7821889/72336000 | 1006 | 127:132, 127:1309, 127:134, 127:1232, 127:1243 |
| 127:1339 | CEH | lo | 51311/500000 | 16124123/157121000 | 1040 | 127:132, 127:1308, 127:136, 127:150, 127:1240 |
| 127:1340 | EHP | lo | 105899/1000000 | 16639033/157121000 | 1043 | 127:132, 127:1314, 127:150, 127:1234, 127:1240 |
| 127:1342 | AFR | lo | 70519/500000 | 163956970261/1162500000000 | 2151 | 127:1303, 127:13 |
| 127:1346 | AES | hi | 279531/500000 | 1825115525047/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:1319, 127:1315, 127:39 |
| 127:1356 | EHS | hi | 212943/500000 | 347586682162452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1319, 127:1285, 127:1298, 127:185 |
| 127:1358 | EQS | lo | 23153/125000 | 302342349/1632302375 | 2666 | 127:13, 127:126, 127:70, 127:1319, 127:1286, 127:1299, 127:194 |
| 127:1361 | EFP | lo | 133517/1000000 | 38583652537/288979000000 | 2752 | 127:21, 127:150, 127:1330, 127:1323, 127:1284, 127:1338, 127:1327 |
| 127:1362 | EPS | lo | 120999/1000000 | 17483195477/144489500000 | 2757 | 127:21, 127:150, 127:1330, 127:1323, 127:1289, 127:1276, 127:186 |
| 127:1363 | EPR | lo | 208569/1000000 | 43047733371/206395000000 | 2933 | 127:29, 127:1142, 127:1265, 127:1323, 127:38, 127:136, 127:1320 |
| 127:1364 | FPS | lo | 94771/1000000 | 10270119833/108367125000 | 3028 | 127:33, 127:1340, 127:1330, 127:34, 127:1328, 127:178, 127:1249 |
| 127:1365 | AFP | lo | 163617/1000000 | 2287192113/13978937500 | 3085 | 127:39, 127:1363, 127:1264, 127:34, 127:1284, 127:1342 |
| 127:1368 | CPQ | hi | 231191/500000 | 413670886058531/894652000000000 | 3103 | 127:39, 127:1363, 127:1264, 127:34, 127:25, 127:134, 127:165 |
| 127:1369 | CPR | hi | 235669/500000 | 26355188929403623/55915750000000000 | 3104 | 127:39, 127:1363, 127:1264, 127:34, 127:27, 127:136 |
| 127:1372 | EPQ | hi | 433997/1000000 | 17648917398011/40666000000000 | 3109 | 127:39, 127:1363, 127:1264, 127:34, 127:37, 127:195 |
| 127:1373 | FHP | lo | 12029/125000 | 5380917093/55915750000 | 3112 | 127:39, 127:1363, 127:1264, 127:34, 127:42, 127:1327, 127:204 |
| 127:1377 | FHS | lo | 93879/1000000 | 83989509/894652000 | 3157 | 127:39, 127:1320, 127:70, 127:1289, 127:42, 127:1327, 127:204 |
| 127:1380 | APQ | hi | 461437/1000000 | 85990621133/186354000000 | 3177 | 127:1346, 127:1362, 127:1265, 127:34, 127:37, 127:68 |
| 127:1382 | BCP | lo | 65927/500000 | 273017/2070600 | 3180 | 127:1346, 127:1362, 127:1265, 127:34, 127:0, 127:72, 127:1296 |
| 127:1385 | BPR | hi | 43167/100000 | 114918943/266220000 | 3186 | 127:1346, 127:1362, 127:1265, 127:34, 127:1278, 127:1277, 127:126 |
| 127:1386 | PQR | lo | 16657/125000 | 413881/3105900 | 3212 | 127:1346, 127:1362, 127:1265, 127:34, 127:66, 127:194, 127:236 |
| 127:1389 | BPS | lo | 94637/1000000 | 5024554879353/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:1328, 127:8, 127:1332, 127:116 |
| 127:1390 | EPQ | lo | 40337/250000 | 71218254597/441393500000 | 3372 | 127:75, 127:142, 127:1332, 127:1382, 127:1299, 127:134, 127:1309 |
| 127:1392 | APR | lo | 341821/1000000 | 246748642107981/721864646939000 | 3663 | 127:93, 127:1390, 127:116, 127:90, 127:1278, 127:38, 127:66 |
| 127:1393 | APS | lo | 67781/500000 | 97857615913327/721864646939000 | 3664 | 127:93, 127:1390, 127:116, 127:90, 127:1319, 127:1289, 127:68 |
| 127:1396 | PQS | lo | 12523/100000 | 11934906371/95303250000 | 3870 | 127:105, 127:218, 127:126, 127:1334, 127:116, 127:1312, 127:1386 |
| 127:1397 | AHS | lo | 68007/500000 | 2992781038953/22003409021000 | 4053 | 127:175, 127:216, 127:1358, 127:178, 127:1285, 127:42, 127:1331 |
| 127:1398 | BHS | lo | 156547/1000000 | 4449236039789/28421081073000 | 4104 | 127:177, 127:218, 127:1320, 127:178, 127:1298, 127:98, 127:1304 |
| 127:1399 | CHS | lo | 142903/1000000 | 406146514718531/2842108107300000 | 4111 | 127:177, 127:218, 127:1320, 127:178, 127:1339, 127:1324, 127:1308 |
| 127:1402 | HPS | lo | 129173/1000000 | 458907027977117/3552635134125000 | 4127 | 127:177, 127:218, 127:1320, 127:178, 127:1340, 127:1373, 127:1314 |
| 127:1403 | CES | lo | 9587/100000 | 7324536556867/76400040969000 | 4239 | 127:211, 127:1266, 127:218, 127:1364, 127:1338, 127:132, 127:136 |
| 127:1404 | BER | hi | 837133/1000000 | 837133/1000000 | 4320 | 127:3, 127:39, 127:1278 |
| 127:1405 | ABR | lo | 321551/1000000 | 321551/1000000 | 4336 | 127:70, 127:1319, 127:126 |
| 127:1406 | ACF | lo | 36417/100000 | 36417/100000 | 4344 | 127:1365, 127:1323, 127:142 |
| 127:1411 | AEF | lo | 195067/500000 | 195067/500000 | 4359 | 127:1365, 127:34, 127:1361 |
| 127:1412 | AEH | lo | 343973/1000000 | 343973/1000000 | 4363 | 127:1330, 127:34, 127:1340 |
| 127:1413 | AEQ | lo | 356677/1000000 | 356677/1000000 | 4367 | 127:34, 127:1321, 127:1390 |
| 127:1414 | EPR | hi | 459831/1000000 | 459831/1000000 | 4368 | 127:34, 127:1392, 127:39 |
| 127:1416 | AES | lo | 349561/1000000 | 349561/1000000 | 4369 | 127:34, 127:1393, 127:1362 |
| 127:1422 | BCR | lo | 372533/1000000 | 372533/1000000 | 4408 | 127:1382, 127:1322, 127:1325 |
| 127:1425 | BEH | lo | 77397/250000 | 77397/250000 | 4418 | 127:1333, 127:90, 127:1340 |
| 127:1426 | BEQ | lo | 86837/250000 | 86837/250000 | 4422 | 127:90, 127:116, 127:1390 |
| 127:1427 | BER | lo | 397313/1000000 | 397313/1000000 | 4423 | 127:90, 127:1322, 127:1363 |
| 127:1428 | BES | lo | 77159/250000 | 77159/250000 | 4424 | 127:90, 127:1389, 127:1362 |
| 127:1430 | BFR | lo | 288203/1000000 | 288203/1000000 | 4437 | 127:126, 127:1334, 127:218 |
| 127:1431 | BHR | lo | 342547/1000000 | 342547/1000000 | 4442 | 127:126, 127:1398, 127:228 |
| 127:1434 | CFR | lo | 75137/200000 | 75137/200000 | 4471 | 127:1316, 127:148, 127:218 |
| 127:1435 | CHR | lo | 106397/250000 | 106397/250000 | 4476 | 127:1316, 127:1399, 127:228 |
| 127:1436 | EFQ | lo | 46403/125000 | 46403/125000 | 4489 | 127:1358, 127:178, 127:216 |
| 127:1437 | EFR | lo | 380097/1000000 | 380097/1000000 | 4490 | 127:1320, 127:178, 127:218 |
| 127:1439 | FPQ | lo | 313001/1000000 | 313001/1000000 | 4506 | 127:216, 127:1364, 127:1396 |
| 127:1441 | HPR | lo | 328197/1000000 | 328197/1000000 | 4510 | 127:228, 127:1402, 127:1266 |
| 127:1442 | ABE | lo | 1911/20000 | 760800750/7962259753 | 58 | 127:0, 127:38, 127:1405, 127:16, 127:27 |
| 127:1443 | CRS | lo | 189687/1000000 | 9007329/47485160 | 141 | 127:26, 127:126, 127:70, 127:1422, 127:13 |
| 127:1446 | ABS | lo | 135569/1000000 | 121287839111/894652000000 | 213 | 127:1442, 127:70, 127:1405, 127:1416, 127:39 |
| 127:1447 | ERS | lo | 194099/1000000 | 101385159/522336760 | 216 | 127:38, 127:126, 127:70, 127:1427, 127:13 |
| 127:1448 | APQ | lo | 102351/1000000 | 14727387/143890000 | 297 | 127:8, 127:1386, 127:1392, 127:116, 127:1385 |
| 127:1449 | BPR | lo | 95749/1000000 | 44182161/461437000 | 297 | 127:8, 127:1386, 127:1392, 127:116, 127:1380 |
| 127:1450 | ACP | lo | 21511/200000 | 8747673/81332000 | 365 | 127:16, 127:1392, 127:26, 127:34, 127:39 |
| 127:1451 | CFH | lo | 24373/250000 | 11467752500/117626627263 | 402 | 127:1406, 127:204, 127:42, 127:1434, 127:49 |
| 127:1452 | CPR | lo | 18117/125000 | 5982814219/41279000000 | 478 | 127:1450, 127:1443, 127:26, 127:1142, 127:29 |
| 127:1453 | AHR | lo | 15781/125000 | 56474156987/447326000000 | 497 | 127:1412, 127:1342, 127:38, 127:42, 127:31 |
| 127:1454 | EFH | lo | 20299/200000 | 11938580500/117626627263 | 499 | 127:1411, 127:204, 127:42, 127:1437, 127:49 |
| 127:1455 | AFS | lo | 21351/200000 | 15155246373/141962000000 | 506 | 127:1416, 127:1377, 127:1397, 127:178, 127:1356 |
| 127:1457 | AHP | lo | 72549/500000 | 66720823079/459831000000 | 545 | 127:34, 127:1441, 127:1392, 127:1340, 127:1414 |
| 127:1458 | AHQ | lo | 157601/1000000 | 550774316/3494734375 | 552 | 127:1412, 127:66, 127:1413, 127:1453, 127:39 |
| 127:1459 | BFP | lo | 107961/1000000 | 24959716927/231191000000 | 748 | 127:1382, 127:1439, 127:116, 127:142, 127:1368 |
| 127:1460 | BHP | lo | 110703/1000000 | 26089372119/235669000000 | 783 | 127:1382, 127:1441, 127:1449, 127:150, 127:1369 |
| 127:1461 | BFS | lo | 51109/500000 | 3627775837/35490500000 | 841 | 127:1428, 127:1377, 127:1398, 127:178, 127:1356 |
| 127:1465 | CEF | lo | 108159/1000000 | 46940913/433997000 | 1006 | 127:132, 127:1436, 127:134, 127:1361, 127:1372 |
| 127:1466 | CEH | lo | 20527/200000 | 24188091/235669000 | 1040 | 127:132, 127:1435, 127:136, 127:150, 127:1369 |
| 127:1467 | EHP | lo | 105909/1000000 | 24959619/235669000 | 1043 | 127:132, 127:1441, 127:150, 127:1363, 127:1369 |
| 127:1469 | AFR | lo | 17631/125000 | 327937835813/2325000000000 | 2151 | 127:1430, 127:13 |
| 127:1482 | EHS | hi | 425869/1000000 | 347572732162452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1446, 127:1412, 127:1425, 127:185 |
| 127:1484 | EQS | lo | 11577/62500 | 604710273/3264604750 | 2666 | 127:13, 127:126, 127:70, 127:1446, 127:1413, 127:1426, 127:194 |
| 127:1487 | EFP | lo | 133573/1000000 | 38600043629/288979000000 | 2752 | 127:21, 127:150, 127:1457, 127:1450, 127:1411, 127:1465, 127:1454 |
| 127:1488 | EPS | lo | 60501/500000 | 1748362421/14448950000 | 2757 | 127:21, 127:150, 127:1457, 127:1450, 127:1416, 127:1403, 127:186 |
| 127:1489 | EPR | lo | 20857/100000 | 8609574283/41279000000 | 2933 | 127:29, 127:1142, 127:1393, 127:1450, 127:38, 127:136, 127:1447 |
| 127:1490 | FPS | lo | 47387/500000 | 5477577753/57795800000 | 3028 | 127:33, 127:1467, 127:1457, 127:34, 127:1455, 127:178, 127:1377 |
| 127:1491 | AFP | lo | 163721/1000000 | 73236729007/447326000000 | 3085 | 127:39, 127:1489, 127:1392, 127:34, 127:1411, 127:1469 |
| 127:1494 | CPQ | hi | 14449/31250 | 413658262785531/894652000000000 | 3103 | 127:39, 127:1489, 127:1392, 127:34, 127:25, 127:134, 127:165 |
| 127:1495 | CPR | hi | 235661/500000 | 105417239522434033/223663000000000000 | 3104 | 127:39, 127:1489, 127:1392, 127:34, 127:27, 127:136 |
| 127:1498 | EPQ | hi | 216993/500000 | 17648460818511/40666000000000 | 3109 | 127:39, 127:1489, 127:1392, 127:34, 127:37, 127:195 |
| 127:1499 | FHP | lo | 19249/200000 | 17221281079/178930400000 | 3112 | 127:39, 127:1489, 127:1392, 127:34, 127:42, 127:1454, 127:204 |
| 127:1504 | FHS | lo | 93883/1000000 | 83992671/894652000 | 3157 | 127:39, 127:1447, 127:70, 127:1416, 127:42, 127:1454, 127:204 |
| 127:1507 | APQ | hi | 461433/1000000 | 84303773/182700000 | 3177 | 127:1346, 127:1488, 127:1393, 127:34, 127:37, 127:68 |
| 127:1511 | BPR | hi | 431623/1000000 | 40217299813/93177000000 | 3186 | 127:1346, 127:1488, 127:1393, 127:34, 127:1405, 127:1404, 127:126 |
| 127:1512 | PQR | lo | 133257/1000000 | 591263/4437000 | 3212 | 127:1346, 127:1488, 127:1393, 127:34, 127:66, 127:194, 127:236 |
| 127:1515 | EPQ | lo | 3227/20000 | 17804812787/110348375000 | 3372 | 127:75, 127:142, 127:1459, 127:1382, 127:1426, 127:134, 127:1436 |
| 127:1516 | APR | lo | 85457/250000 | 246753890345981/721864646939000 | 3663 | 127:93, 127:1515, 127:116, 127:90, 127:1405, 127:38, 127:66 |
| 127:1517 | APS | lo | 8473/62500 | 97862093315327/721864646939000 | 3664 | 127:93, 127:1515, 127:116, 127:90, 127:1446, 127:1416, 127:68 |
| 127:1519 | PQS | lo | 7827/62500 | 15913450171/127071000000 | 3870 | 127:105, 127:218, 127:126, 127:1461, 127:116, 127:1439, 127:1512 |
| 127:1520 | AHS | lo | 68013/500000 | 2993039038953/22003409021000 | 4053 | 127:175, 127:216, 127:1484, 127:178, 127:1412, 127:42, 127:1458 |
| 127:1521 | BHS | lo | 156553/1000000 | 4449433664789/28421081073000 | 4104 | 127:177, 127:218, 127:1447, 127:178, 127:1425, 127:98, 127:1431 |
| 127:1522 | CHS | lo | 71463/500000 | 1015532290242229/7105270268250000 | 4111 | 127:177, 127:218, 127:1447, 127:178, 127:1466, 127:1451, 127:1435 |
| 127:1523 | CPS | lo | 100081/1000000 | 948137513263/9473693691000 | 4112 | 127:177, 127:218, 127:1447, 127:178, 127:132, 127:142, 127:1452 |
| 127:1526 | HPS | lo | 129187/1000000 | 734329789574177/5684216214600000 | 4127 | 127:177, 127:218, 127:1447, 127:178, 127:1467, 127:1499, 127:1441 |
| 127:1527 | CES | lo | 767/8000 | 7324894982617/76400040969000 | 4239 | 127:211, 127:1266, 127:218, 127:1490, 127:1465, 127:132, 127:136 |
| 127:1528 | BER | hi | 837101/1000000 | 837101/1000000 | 4320 | 127:3, 127:39, 127:1405 |
| 127:1529 | ABR | lo | 321569/1000000 | 321569/1000000 | 4336 | 127:70, 127:1446, 127:126 |
| 127:1530 | ACF | lo | 91069/250000 | 91069/250000 | 4344 | 127:1491, 127:1450, 127:142 |
| 127:1535 | AEF | lo | 195147/500000 | 195147/500000 | 4359 | 127:1491, 127:34, 127:1487 |
| 127:1536 | AEH | lo | 344007/1000000 | 344007/1000000 | 4363 | 127:1457, 127:34, 127:1467 |
| 127:1537 | AEQ | lo | 356701/1000000 | 356701/1000000 | 4367 | 127:34, 127:1448, 127:1515 |
| 127:1538 | EPR | hi | 28739/62500 | 28739/62500 | 4368 | 127:34, 127:1516, 127:39 |
| 127:1540 | AES | lo | 34957/100000 | 34957/100000 | 4369 | 127:34, 127:1517, 127:1488 |
| 127:1546 | BCR | lo | 372539/1000000 | 372539/1000000 | 4408 | 127:1382, 127:1449, 127:1452 |
| 127:1550 | BEH | lo | 77403/250000 | 77403/250000 | 4418 | 127:1460, 127:90, 127:1467 |
| 127:1551 | BEQ | lo | 6947/20000 | 6947/20000 | 4422 | 127:90, 127:116, 127:1515 |
| 127:1552 | BER | lo | 397319/1000000 | 397319/1000000 | 4423 | 127:90, 127:1449, 127:1489 |
| 127:1553 | BES | lo | 308639/1000000 | 308639/1000000 | 4424 | 127:90, 127:1389, 127:1488 |
| 127:1555 | BFR | lo | 144109/500000 | 144109/500000 | 4437 | 127:126, 127:1461, 127:218 |
| 127:1556 | BHR | lo | 342553/1000000 | 342553/1000000 | 4442 | 127:126, 127:1521, 127:228 |
| 127:1559 | CFR | lo | 375687/1000000 | 375687/1000000 | 4471 | 127:1443, 127:148, 127:218 |
| 127:1560 | CHR | lo | 425613/1000000 | 425613/1000000 | 4476 | 127:1443, 127:1522, 127:228 |
| 127:1561 | EFQ | lo | 11601/31250 | 11601/31250 | 4489 | 127:1484, 127:178, 127:216 |
| 127:1562 | EFR | lo | 380099/1000000 | 380099/1000000 | 4490 | 127:1447, 127:178, 127:218 |
| 127:1564 | FPQ | lo | 156503/500000 | 156503/500000 | 4506 | 127:216, 127:1490, 127:1519 |
| 127:1566 | HPR | lo | 328211/1000000 | 328211/1000000 | 4510 | 127:228, 127:1526, 127:1266 |
| 127:1567 | ABE | lo | 1493/15625 | 108687750/1137465679 | 58 | 127:0, 127:38, 127:1529, 127:16, 127:27 |
| 127:1568 | CRS | lo | 23711/125000 | 99081177/522336760 | 141 | 127:26, 127:126, 127:70, 127:1546, 127:13 |
| 127:1571 | ABS | lo | 6779/50000 | 12129721133/89465200000 | 213 | 127:1567, 127:70, 127:1529, 127:1540, 127:39 |
| 127:1572 | ERS | lo | 1941/10000 | 101385717/522336760 | 216 | 127:38, 127:126, 127:70, 127:1552, 127:13 |
| 127:1573 | APQ | lo | 25591/250000 | 8836581/86324600 | 297 | 127:8, 127:1512, 127:1516, 127:116, 127:1511 |
| 127:1574 | BPR | lo | 95751/1000000 | 2945527/30762200 | 297 | 127:8, 127:1512, 127:1516, 127:116, 127:1507 |
| 127:1575 | CFH | lo | 97507/1000000 | 11469426500/117626627263 | 402 | 127:1530, 127:204, 127:42, 127:1559, 127:49 |
| 127:1576 | CPR | lo | 144937/1000000 | 8974301369/61918500000 | 478 | 127:1450, 127:1568, 127:26, 127:1523, 127:29 |
| 127:1577 | AHR | lo | 126257/1000000 | 14119568667/111831500000 | 497 | 127:1536, 127:1469, 127:38, 127:42, 127:31 |
| 127:1578 | EFH | lo | 25379/250000 | 11941091500/117626627263 | 499 | 127:1535, 127:204, 127:42, 127:1562, 127:49 |
| 127:1579 | AFS | lo | 106767/1000000 | 4546909831/42586900000 | 506 | 127:1540, 127:1504, 127:1520, 127:178, 127:1482 |
| 127:1581 | AHP | lo | 18139/125000 | 16681571163/114956000000 | 545 | 127:34, 127:1566, 127:1516, 127:1467, 127:1538 |
| 127:1582 | AHQ | lo | 78809/500000 | 141013951157/894652000000 | 552 | 127:1536, 127:66, 127:1537, 127:1577, 127:39 |
| 127:1583 | BFP | lo | 53983/500000 | 12480023281/115592000000 | 748 | 127:1382, 127:1564, 127:116, 127:142, 127:1494 |
| 127:1584 | BHP | lo | 110711/1000000 | 26090388097/235661000000 | 783 | 127:1382, 127:1566, 127:1574, 127:150, 127:1495 |
| 127:1585 | BFS | lo | 102227/1000000 | 43535384237/425869000000 | 841 | 127:1553, 127:1504, 127:1521, 127:178, 127:1482 |
| 127:1589 | CEF | lo | 4327/40000 | 447113/4133200 | 1006 | 127:132, 127:1561, 127:134, 127:1487, 127:1498 |
| 127:1590 | CEH | lo | 25661/250000 | 48378507/471322000 | 1040 | 127:132, 127:1560, 127:136, 127:150, 127:1495 |
| 127:1591 | EHP | lo | 26479/250000 | 49920633/471322000 | 1043 | 127:132, 127:1566, 127:150, 127:1489, 127:1495 |
| 127:1593 | AFR | lo | 28211/200000 | 163977451939/1162500000000 | 2151 | 127:1555, 127:13 |
| 127:1597 | AES | hi | 559061/1000000 | 1825112618797/3264604750000 | 2641 | 127:13, 127:126, 127:70, 127:1571, 127:1567, 127:39 |
| 127:1607 | EHS | hi | 212929/500000 | 347564304037452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1571, 127:1536, 127:1550, 127:185 |
| 127:1609 | EQS | lo | 46309/250000 | 1209450771/6529209500 | 2666 | 127:13, 127:126, 127:70, 127:1571, 127:1537, 127:1551, 127:194 |
| 127:1612 | EFP | lo | 133609/1000000 | 1158306313/8669370000 | 2752 | 127:21, 127:150, 127:1581, 127:1450, 127:1535, 127:1589, 127:1578 |
| 127:1613 | EPS | lo | 30251/250000 | 26225837/216734250 | 2757 | 127:21, 127:150, 127:1581, 127:1450, 127:1540, 127:1527, 127:186 |
| 127:1614 | EPR | lo | 208571/1000000 | 672626667/3224921875 | 2933 | 127:29, 127:1523, 127:1517, 127:1450, 127:38, 127:136, 127:1572 |
| 127:1615 | FPS | lo | 11847/125000 | 6847117131/72244750000 | 3028 | 127:33, 127:1591, 127:1581, 127:34, 127:1579, 127:178, 127:1504 |
| 127:1616 | AFP | lo | 81893/500000 | 9158220777/55915750000 | 3085 | 127:39, 127:1614, 127:1516, 127:34, 127:1535, 127:1593 |
| 127:1619 | CPQ | hi | 462361/1000000 | 413651465638531/894652000000000 | 3103 | 127:39, 127:1614, 127:1516, 127:34, 127:25, 127:134, 127:165 |
| 127:1620 | CPR | hi | 235657/500000 | 6588459136660477/13978937500000000 | 3104 | 127:39, 127:1614, 127:1516, 127:34, 127:27, 127:136 |
| 127:1623 | EPQ | hi | 21699/50000 | 17648214968011/40666000000000 | 3109 | 127:39, 127:1614, 127:1516, 127:34, 127:37, 127:195 |
| 127:1624 | FHP | lo | 96253/1000000 | 5382102703/55915750000 | 3112 | 127:39, 127:1614, 127:1516, 127:34, 127:42, 127:1578, 127:204 |
| 127:1627 | FHS | lo | 18777/200000 | 2624832/27957875 | 3157 | 127:39, 127:1572, 127:70, 127:1540, 127:42, 127:1578, 127:204 |
| 127:1630 | APQ | hi | 46143/100000 | 11215966407/24307000000 | 3177 | 127:1597, 127:1613, 127:1517, 127:34, 127:37, 127:68 |
| 127:1634 | BPR | hi | 86319/200000 | 241287424481/559061000000 | 3186 | 127:1597, 127:1613, 127:1517, 127:34, 127:1529, 127:1528, 127:126 |
| 127:1635 | PQR | lo | 66629/500000 | 74499417/559061000 | 3212 | 127:1597, 127:1613, 127:1517, 127:34, 127:66, 127:194, 127:236 |
| 127:1638 | BPS | lo | 47319/500000 | 5024630441853/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:1579, 127:8, 127:1583, 127:116 |
| 127:1639 | EPQ | lo | 20169/125000 | 17804967891/110348375000 | 3372 | 127:75, 127:142, 127:1583, 127:1382, 127:1551, 127:134, 127:1561 |
| 127:1641 | APR | lo | 42729/125000 | 246756879783981/721864646939000 | 3663 | 127:93, 127:1639, 127:116, 127:90, 127:1529, 127:38, 127:66 |
| 127:1642 | APS | lo | 33893/250000 | 97864790325327/721864646939000 | 3664 | 127:93, 127:1639, 127:116, 127:90, 127:1571, 127:1540, 127:68 |
| 127:1643 | PRS | lo | 4241/40000 | 76535712165327/721864646939000 | 3699 | 127:93, 127:1639, 127:116, 127:90, 127:126, 127:1572, 127:236 |
| 127:1646 | PQS | lo | 125233/1000000 | 6820116469/54459000000 | 3870 | 127:105, 127:218, 127:126, 127:1585, 127:116, 127:1564, 127:1635 |
| 127:1647 | AHS | lo | 136033/1000000 | 2993192038953/22003409021000 | 4053 | 127:175, 127:216, 127:1609, 127:178, 127:1536, 127:42, 127:1582 |
| 127:1648 | BHS | lo | 78279/500000 | 635649987827/4060154439000 | 4104 | 127:177, 127:218, 127:1572, 127:178, 127:1550, 127:98, 127:1556 |
| 127:1649 | CHS | lo | 71471/500000 | 451396775242779/3157897897000000 | 4111 | 127:177, 127:218, 127:1572, 127:178, 127:1590, 127:1575, 127:1560 |
| 127:1652 | HPS | lo | 32299/250000 | 3671895691519469/28421081073000000 | 4127 | 127:177, 127:218, 127:1572, 127:178, 127:1591, 127:1624, 127:1566 |
| 127:1653 | CES | lo | 47939/500000 | 915638665499/9550005121125 | 4239 | 127:211, 127:1643, 127:218, 127:1615, 127:1589, 127:132, 127:136 |
| 127:1654 | BER | hi | 837083/1000000 | 837083/1000000 | 4320 | 127:3, 127:39, 127:1529 |
| 127:1655 | ABR | lo | 16079/50000 | 16079/50000 | 4336 | 127:70, 127:1571, 127:126 |
| 127:1656 | ACF | lo | 364341/1000000 | 364341/1000000 | 4344 | 127:1616, 127:1450, 127:142 |
| 127:1661 | AEF | lo | 78079/200000 | 78079/200000 | 4359 | 127:1616, 127:34, 127:1612 |
| 127:1662 | AEH | lo | 86007/250000 | 86007/250000 | 4363 | 127:1581, 127:34, 127:1591 |
| 127:1663 | AEQ | lo | 89179/250000 | 89179/250000 | 4367 | 127:34, 127:1573, 127:1639 |
| 127:1664 | EPR | hi | 22991/50000 | 22991/50000 | 4368 | 127:34, 127:1641, 127:39 |
| 127:1666 | AES | lo | 43697/125000 | 43697/125000 | 4369 | 127:34, 127:1642, 127:1613 |
| 127:1675 | BEH | lo | 309627/1000000 | 309627/1000000 | 4418 | 127:1584, 127:90, 127:1591 |
| 127:1676 | BEQ | lo | 43419/125000 | 43419/125000 | 4422 | 127:90, 127:116, 127:1639 |
| 127:1678 | BES | lo | 154321/500000 | 154321/500000 | 4424 | 127:90, 127:1638, 127:1613 |
| 127:1681 | BHR | lo | 171279/500000 | 171279/500000 | 4442 | 127:126, 127:1648, 127:228 |
| 127:1684 | CFR | lo | 46961/125000 | 46961/125000 | 4471 | 127:1568, 127:148, 127:218 |
| 127:1685 | CHR | lo | 42563/100000 | 42563/100000 | 4476 | 127:1568, 127:1649, 127:228 |
| 127:1686 | EFQ | lo | 92809/250000 | 92809/250000 | 4489 | 127:1609, 127:178, 127:216 |
| 127:1687 | EFR | lo | 3801/10000 | 3801/10000 | 4490 | 127:1572, 127:178, 127:218 |
| 127:1689 | FPQ | lo | 313009/1000000 | 313009/1000000 | 4506 | 127:216, 127:1615, 127:1646 |
| 127:1691 | HPR | lo | 328221/1000000 | 328221/1000000 | 4510 | 127:228, 127:1652, 127:1643 |
| 127:1692 | ABE | lo | 95553/1000000 | 760822500/7962259753 | 58 | 127:0, 127:38, 127:1655, 127:16, 127:27 |
| 127:1695 | ABS | lo | 67793/500000 | 3032576977/22366300000 | 213 | 127:1692, 127:70, 127:1655, 127:1666, 127:39 |
| 127:1696 | APQ | lo | 25593/250000 | 1472779/14386500 | 297 | 127:8, 127:1635, 127:1641, 127:116, 127:1634 |
| 127:1697 | BPR | lo | 95753/1000000 | 1472779/15381000 | 297 | 127:8, 127:1635, 127:1641, 127:116, 127:1630 |
| 127:1698 | ACP | lo | 26889/250000 | 4373883/40666000 | 365 | 127:16, 127:1641, 127:26, 127:34, 127:39 |
| 127:1699 | CFH | lo | 19503/200000 | 11470449500/117626627263 | 402 | 127:1656, 127:204, 127:42, 127:1684, 127:49 |
| 127:1700 | AHR | lo | 126263/1000000 | 5648095977/44732600000 | 497 | 127:1662, 127:1593, 127:38, 127:42, 127:31 |
| 127:1701 | EFH | lo | 10153/100000 | 11942672500/117626627263 | 499 | 127:1661, 127:204, 127:42, 127:1687, 127:49 |
| 127:1702 | AFS | lo | 4271/40000 | 568387647/5323225000 | 506 | 127:1666, 127:1627, 127:1647, 127:178, 127:1607 |
| 127:1703 | AFP | lo | 81913/500000 | 1832095233/11183150000 | 512 | 127:1661, 127:1641, 127:34, 127:1593, 127:39 |
| 127:1704 | AHP | lo | 72561/500000 | 8341253889/57477500000 | 545 | 127:34, 127:1691, 127:1641, 127:1591, 127:1664 |
| 127:1705 | AHQ | lo | 157629/1000000 | 35255961077/223663000000 | 552 | 127:1662, 127:66, 127:1663, 127:1700, 127:39 |
| 127:1706 | BFP | lo | 1687/15625 | 24960244343/231180500000 | 748 | 127:1382, 127:1689, 127:116, 127:142, 127:1619 |
| 127:1707 | BHP | lo | 27679/250000 | 26091140367/235657000000 | 783 | 127:1382, 127:1691, 127:1697, 127:150, 127:1620 |
| 127:1708 | BFS | lo | 102233/1000000 | 4353674817/42585800000 | 841 | 127:1678, 127:1627, 127:1648, 127:178, 127:1607 |
| 127:1712 | CEF | lo | 54093/500000 | 3130039/28932000 | 1006 | 127:132, 127:1686, 127:134, 127:1612, 127:1623 |
| 127:1713 | CEH | lo | 102649/1000000 | 6047511/58914250 | 1040 | 127:132, 127:1685, 127:136, 127:150, 127:1620 |
| 127:1714 | EHP | lo | 331/3125 | 6240207/58914250 | 1043 | 127:132, 127:1691, 127:150, 127:1614, 127:1620 |
| 127:1729 | EHS | hi | 106463/250000 | 347559072787452631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1695, 127:1662, 127:1675, 127:185 |
| 127:1731 | EQS | lo | 185239/1000000 | 2418941067/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:1695, 127:1663, 127:1676, 127:194 |
| 127:1734 | EFP | lo | 133631/1000000 | 19308415107/144489500000 | 2752 | 127:21, 127:150, 127:1704, 127:1698, 127:1661, 127:1712, 127:1701 |
| 127:1735 | EPS | lo | 24201/200000 | 8742030843/72244750000 | 2757 | 127:21, 127:150, 127:1704, 127:1698, 127:1666, 127:1653, 127:186 |
| 127:1736 | FPS | lo | 94777/1000000 | 41083247/433468500 | 3028 | 127:33, 127:1714, 127:1704, 127:34, 127:1702, 127:178, 127:1627 |
| 127:1740 | CPR | hi | 471309/1000000 | 5270713214017913/11183150000000000 | 3104 | 127:39, 127:1614, 127:1641, 127:34, 127:27, 127:136 |
| 127:1743 | EPQ | hi | 433977/1000000 | 17648074482011/40666000000000 | 3109 | 127:39, 127:1614, 127:1641, 127:34, 127:37, 127:195 |
| 127:1744 | FHP | lo | 96259/1000000 | 1076480787/11183150000 | 3112 | 127:39, 127:1614, 127:1641, 127:34, 127:42, 127:1701, 127:204 |
| 127:1748 | FHS | lo | 46943/500000 | 41997963/447326000 | 3157 | 127:39, 127:1572, 127:70, 127:1666, 127:42, 127:1701, 127:204 |
| 127:1755 | BPR | hi | 431579/1000000 | 60319680937/139765250000 | 3186 | 127:1597, 127:1735, 127:1642, 127:34, 127:1655, 127:1654, 127:126 |
| 127:1758 | EPQ | lo | 161353/1000000 | 4451264267/27587093750 | 3372 | 127:75, 127:142, 127:1706, 127:1382, 127:1676, 127:134, 127:1686 |
| 127:1759 | APR | lo | 68367/200000 | 246758697235981/721864646939000 | 3663 | 127:93, 127:1758, 127:116, 127:90, 127:1655, 127:38, 127:66 |
| 127:1760 | APS | lo | 67787/500000 | 97866359023327/721864646939000 | 3664 | 127:93, 127:1758, 127:116, 127:90, 127:1695, 127:1666, 127:68 |
| 127:1762 | PQS | lo | 62617/500000 | 6820153651/54459000000 | 3870 | 127:105, 127:218, 127:126, 127:1708, 127:116, 127:1689, 127:1635 |
| 127:1763 | AHS | lo | 136037/1000000 | 2993288038953/22003409021000 | 4053 | 127:175, 127:216, 127:1731, 127:178, 127:1662, 127:42, 127:1705 |
| 127:1764 | BHS | lo | 1957/12500 | 1483209138263/9473693691000 | 4104 | 127:177, 127:218, 127:1572, 127:178, 127:1675, 127:98, 127:1681 |
| 127:1765 | CHS | lo | 2859/20000 | 38693539007939/270676962600000 | 4111 | 127:177, 127:218, 127:1572, 127:178, 127:1713, 127:1699, 127:1685 |
| 127:1766 | HPS | lo | 64601/500000 | 408008218667323/3157897897000000 | 4127 | 127:177, 127:218, 127:1572, 127:178, 127:1714, 127:1744, 127:1691 |
| 127:1767 | CES | lo | 2397/25000 | 7325255306617/76400040969000 | 4239 | 127:211, 127:1643, 127:218, 127:1736, 127:1712, 127:132, 127:136 |
| 127:1768 | BER | hi | 52317/62500 | 52317/62500 | 4320 | 127:3, 127:39, 127:1655 |
| 127:1769 | ABR | lo | 160793/500000 | 160793/500000 | 4336 | 127:70, 127:1695, 127:126 |
| 127:1770 | ACF | lo | 182191/500000 | 182191/500000 | 4344 | 127:1703, 127:1698, 127:142 |
| 127:1775 | AEF | lo | 390457/1000000 | 390457/1000000 | 4359 | 127:1703, 127:34, 127:1734 |
| 127:1776 | AEH | lo | 172021/500000 | 172021/500000 | 4363 | 127:1704, 127:34, 127:1714 |
| 127:1777 | AEQ | lo | 14269/40000 | 14269/40000 | 4367 | 127:34, 127:1696, 127:1758 |
| 127:1778 | EPR | hi | 459817/1000000 | 459817/1000000 | 4368 | 127:34, 127:1759, 127:39 |
| 127:1780 | AES | lo | 349579/1000000 | 349579/1000000 | 4369 | 127:34, 127:1760, 127:1735 |
| 127:1786 | BCR | lo | 5821/15625 | 5821/15625 | 4408 | 127:1382, 127:1697, 127:1576 |
| 127:1788 | BEH | lo | 77409/250000 | 77409/250000 | 4418 | 127:1707, 127:90, 127:1714 |
| 127:1789 | BEQ | lo | 347353/1000000 | 347353/1000000 | 4422 | 127:90, 127:116, 127:1758 |
| 127:1790 | BER | lo | 99331/250000 | 99331/250000 | 4423 | 127:90, 127:1697, 127:1614 |
| 127:1791 | BES | lo | 308643/1000000 | 308643/1000000 | 4424 | 127:90, 127:1638, 127:1735 |
| 127:1793 | BFR | lo | 288233/1000000 | 288233/1000000 | 4437 | 127:126, 127:1708, 127:218 |
| 127:1794 | BHR | lo | 2141/6250 | 2141/6250 | 4442 | 127:126, 127:1764, 127:228 |
| 127:1797 | CHR | lo | 212819/500000 | 212819/500000 | 4476 | 127:1568, 127:1765, 127:228 |
| 127:1798 | EFQ | lo | 371239/1000000 | 371239/1000000 | 4489 | 127:1731, 127:178, 127:216 |
| 127:1801 | HPR | lo | 328227/1000000 | 328227/1000000 | 4510 | 127:228, 127:1766, 127:1643 |
| 127:1802 | ABE | lo | 47777/500000 | 760827000/7962259753 | 58 | 127:0, 127:38, 127:1769, 127:16, 127:27 |
| 127:1803 | CRS | lo | 189689/1000000 | 4503711/23742580 | 141 | 127:26, 127:126, 127:70, 127:1786, 127:13 |
| 127:1806 | ABS | lo | 13559/100000 | 60653117147/447326000000 | 213 | 127:1802, 127:70, 127:1769, 127:1780, 127:39 |
| 127:1807 | ERS | lo | 194101/1000000 | 50693091/261168380 | 216 | 127:38, 127:126, 127:70, 127:1790, 127:13 |
| 127:1808 | APQ | lo | 12797/125000 | 44183649/431579000 | 297 | 127:8, 127:1635, 127:1759, 127:116, 127:1755 |
| 127:1809 | CFH | lo | 97521/1000000 | 11471085000/117626627263 | 402 | 127:1770, 127:204, 127:42, 127:1684, 127:49 |
| 127:1811 | EFH | lo | 50769/500000 | 11943633500/117626627263 | 499 | 127:1775, 127:204, 127:42, 127:1687, 127:49 |
| 127:1812 | AFS | lo | 53389/500000 | 3248001071/30418000000 | 506 | 127:1780, 127:1748, 127:1763, 127:178, 127:1729 |
| 127:1814 | AHP | lo | 145127/1000000 | 333661371/2299085000 | 545 | 127:34, 127:1801, 127:1759, 127:1714, 127:1778 |
| 127:1817 | BHP | lo | 110719/1000000 | 8697178643/78551500000 | 783 | 127:1382, 127:1801, 127:1697, 127:150, 127:1740 |
| 127:1818 | BFS | lo | 20447/200000 | 21768668349/212926000000 | 841 | 127:1791, 127:1748, 127:1764, 127:178, 127:1729 |
| 127:1822 | CEF | lo | 3381/31250 | 1565097/14465900 | 1006 | 127:132, 127:1798, 127:134, 127:1734, 127:1743 |
| 127:1823 | CEH | lo | 25663/250000 | 2015868/19637875 | 1040 | 127:132, 127:1797, 127:136, 127:150, 127:1740 |
| 127:1824 | EHP | lo | 52961/500000 | 8320369/78551500 | 1043 | 127:132, 127:1801, 127:150, 127:1614, 127:1740 |
| 127:1826 | AFR | lo | 141063/1000000 | 327971971943/2325000000000 | 2151 | 127:1793, 127:13 |
| 127:1839 | EHS | hi | 53231/125000 | 347555730599952631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1806, 127:1776, 127:1788, 127:185 |
| 127:1841 | EQS | lo | 185241/1000000 | 219905847/1187129000 | 2666 | 127:13, 127:126, 127:70, 127:1806, 127:1777, 127:1789, 127:194 |
| 127:1844 | EFP | lo | 26729/200000 | 9655182597/72244750000 | 2752 | 127:21, 127:150, 127:1814, 127:1698, 127:1775, 127:1822, 127:1811 |
| 127:1845 | EPS | lo | 60503/500000 | 218551987/1806118750 | 2757 | 127:21, 127:150, 127:1814, 127:1698, 127:1780, 127:1767, 127:186 |
| 127:1846 | FPS | lo | 47389/500000 | 20541733079/216734250000 | 3028 | 127:33, 127:1824, 127:1814, 127:34, 127:1812, 127:178, 127:1748 |
| 127:1847 | AFP | lo | 40963/250000 | 29318145519/178930400000 | 3085 | 127:39, 127:1614, 127:1759, 127:34, 127:1775, 127:1826 |
| 127:1850 | CPQ | hi | 462353/1000000 | 413644668491531/894652000000000 | 3103 | 127:39, 127:1614, 127:1759, 127:34, 127:25, 127:134, 127:165 |
| 127:1851 | CPR | hi | 94261/200000 | 105413452850701231/223663000000000000 | 3104 | 127:39, 127:1614, 127:1759, 127:34, 127:27, 127:136 |
| 127:1854 | EPQ | hi | 216987/500000 | 17647969117511/40666000000000 | 3109 | 127:39, 127:1614, 127:1759, 127:34, 127:37, 127:195 |
| 127:1855 | FHP | lo | 48131/500000 | 8612122323/89465200000 | 3112 | 127:39, 127:1614, 127:1759, 127:34, 127:42, 127:1811, 127:204 |
| 127:1858 | FHS | lo | 93887/1000000 | 8399667/89465200 | 3157 | 127:39, 127:1807, 127:70, 127:1780, 127:42, 127:1811, 127:204 |
| 127:1861 | APQ | hi | 461427/1000000 | 51593136403/111812200000 | 3177 | 127:1597, 127:1845, 127:1760, 127:34, 127:37, 127:68 |
| 127:1865 | BPR | hi | 431569/1000000 | 60318260861/139765250000 | 3186 | 127:1597, 127:1845, 127:1760, 127:34, 127:1769, 127:1768, 127:126 |
| 127:1868 | APR | lo | 85459/250000 | 246759665353981/721864646939000 | 3663 | 127:93, 127:1758, 127:116, 127:90, 127:1769, 127:38, 127:66 |
| 127:1869 | APS | lo | 5423/40000 | 97867283435327/721864646939000 | 3664 | 127:93, 127:1758, 127:116, 127:90, 127:1806, 127:1780, 127:68 |
| 127:1872 | BHS | lo | 78281/500000 | 4449670039789/28421081073000 | 4104 | 127:177, 127:218, 127:1807, 127:178, 127:1788, 127:98, 127:1794 |
| 127:1873 | CHS | lo | 35739/250000 | 4062988247320033/28421081073000000 | 4111 | 127:177, 127:218, 127:1807, 127:178, 127:1823, 127:1809, 127:1797 |
| 127:1876 | HPS | lo | 25841/200000 | 1836083490624563/14210540536500000 | 4127 | 127:177, 127:218, 127:1807, 127:178, 127:1824, 127:1855, 127:1801 |
| 127:1878 | BER | hi | 418533/500000 | 418533/500000 | 4320 | 127:3, 127:39, 127:1769 |
| 127:1879 | ABR | lo | 32159/100000 | 32159/100000 | 4336 | 127:70, 127:1806, 127:126 |
| 127:1880 | ACF | lo | 45551/125000 | 45551/125000 | 4344 | 127:1847, 127:1698, 127:142 |
| 127:1885 | AEF | lo | 390497/1000000 | 390497/1000000 | 4359 | 127:1847, 127:34, 127:1844 |
| 127:1886 | AEH | lo | 344049/1000000 | 344049/1000000 | 4363 | 127:1814, 127:34, 127:1824 |
| 127:1887 | AEQ | lo | 356729/1000000 | 356729/1000000 | 4367 | 127:34, 127:1808, 127:1758 |
| 127:1888 | EPR | hi | 57477/125000 | 57477/125000 | 4368 | 127:34, 127:1868, 127:39 |
| 127:1890 | AES | lo | 349581/1000000 | 349581/1000000 | 4369 | 127:34, 127:1869, 127:1845 |
| 127:1897 | BEH | lo | 309641/1000000 | 309641/1000000 | 4418 | 127:1817, 127:90, 127:1824 |
| 127:1898 | BES | lo | 77161/250000 | 77161/250000 | 4424 | 127:90, 127:1638, 127:1845 |
| 127:1900 | BFR | lo | 57647/200000 | 57647/200000 | 4437 | 127:126, 127:1818, 127:218 |
| 127:1901 | BHR | lo | 171281/500000 | 171281/500000 | 4442 | 127:126, 127:1872, 127:228 |
| 127:1904 | CFR | lo | 375689/1000000 | 375689/1000000 | 4471 | 127:1803, 127:148, 127:218 |
| 127:1905 | CHR | lo | 85129/200000 | 85129/200000 | 4476 | 127:1803, 127:1873, 127:228 |
| 127:1906 | EFQ | lo | 371241/1000000 | 371241/1000000 | 4489 | 127:1841, 127:178, 127:216 |
| 127:1907 | EFR | lo | 380101/1000000 | 380101/1000000 | 4490 | 127:1807, 127:178, 127:218 |
| 127:1909 | FPQ | lo | 78253/250000 | 78253/250000 | 4506 | 127:216, 127:1846, 127:1762 |
| 127:1911 | HPR | lo | 32823/100000 | 32823/100000 | 4510 | 127:228, 127:1876, 127:1643 |
| 127:1914 | ABS | lo | 16949/125000 | 12130827579/89465200000 | 213 | 127:1802, 127:70, 127:1879, 127:1890, 127:39 |
| 127:1915 | APQ | lo | 102379/1000000 | 22091871/215784500 | 297 | 127:8, 127:1635, 127:1868, 127:116, 127:1865 |
| 127:1916 | BPR | lo | 47877/500000 | 7363957/76904500 | 297 | 127:8, 127:1635, 127:1868, 127:116, 127:1861 |
| 127:1917 | CFH | lo | 24381/250000 | 11471503500/117626627263 | 402 | 127:1880, 127:204, 127:42, 127:1904, 127:49 |
| 127:1918 | AHR | lo | 126269/1000000 | 10269784917/81332000000 | 497 | 127:1886, 127:1826, 127:38, 127:42, 127:31 |
| 127:1919 | EFH | lo | 101543/1000000 | 11944269000/117626627263 | 499 | 127:1885, 127:204, 127:42, 127:1907, 127:49 |
| 127:1922 | AHP | lo | 14513/100000 | 8341667849/57477000000 | 545 | 127:34, 127:1911, 127:1868, 127:1824, 127:1888 |
| 127:1923 | AHQ | lo | 3941/25000 | 141033485101/894652000000 | 552 | 127:1886, 127:66, 127:1887, 127:1918, 127:39 |
| 127:1924 | BFP | lo | 107971/1000000 | 6240110531/57794125000 | 748 | 127:1382, 127:1909, 127:116, 127:142, 127:1850 |
| 127:1925 | BHP | lo | 110721/1000000 | 2609178021/23565250000 | 783 | 127:1382, 127:1911, 127:1916, 127:150, 127:1851 |
| 127:1926 | BFS | lo | 51119/500000 | 10884481307/106462000000 | 841 | 127:1898, 127:1858, 127:1872, 127:178, 127:1839 |
| 127:1930 | CEF | lo | 27049/250000 | 7825733/72329000 | 1006 | 127:132, 127:1906, 127:134, 127:1844, 127:1854 |
| 127:1931 | CEH | lo | 51327/500000 | 48381483/471305000 | 1040 | 127:132, 127:1905, 127:136, 127:150, 127:1851 |
| 127:1932 | EHP | lo | 105923/1000000 | 49922493/471305000 | 1043 | 127:132, 127:1911, 127:150, 127:1614, 127:1851 |
| 127:1934 | AFR | lo | 17633/125000 | 65594849537/465000000000 | 2151 | 127:1900, 127:13 |
| 127:1947 | EHS | hi | 212923/500000 | 347553986849952631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:1914, 127:1886, 127:1897, 127:185 |
| 127:1949 | EQS | lo | 92621/500000 | 2418973617/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:1914, 127:1887, 127:1789, 127:194 |
| 127:1951 | EFP | lo | 66827/500000 | 115869655681/866937000000 | 2752 | 127:21, 127:150, 127:1922, 127:1698, 127:1885, 127:1930, 127:1919 |
| 127:1952 | AFP | lo | 40967/250000 | 3331929193/20333000000 | 3085 | 127:39, 127:1614, 127:1868, 127:34, 127:1885, 127:1934 |
| 127:1955 | CPR | hi | 58913/125000 | 13176647796768611/27957875000000000 | 3104 | 127:39, 127:1614, 127:1868, 127:34, 127:27, 127:136 |
| 127:1958 | EPQ | hi | 433973/1000000 | 17647933996011/40666000000000 | 3109 | 127:39, 127:1614, 127:1868, 127:34, 127:37, 127:195 |
| 127:1959 | FHP | lo | 12033/125000 | 1957339567/20333000000 | 3112 | 127:39, 127:1614, 127:1868, 127:34, 127:42, 127:1919, 127:204 |
| 127:1962 | FHS | lo | 1467/15625 | 16799427/178930400 | 3157 | 127:39, 127:1807, 127:70, 127:1890, 127:42, 127:1919, 127:204 |
| 127:1964 | BPR | hi | 107891/250000 | 24127048909/55906100000 | 3186 | 127:1597, 127:1845, 127:1869, 127:34, 127:1879, 127:1878, 127:126 |
| 127:1966 | APR | lo | 341837/1000000 | 246760310765981/721864646939000 | 3663 | 127:93, 127:1758, 127:116, 127:90, 127:1879, 127:38, 127:66 |
| 127:1967 | APS | lo | 16947/125000 | 97867792141327/721864646939000 | 3664 | 127:93, 127:1758, 127:116, 127:90, 127:1914, 127:1890, 127:68 |
| 127:1969 | PQS | lo | 25047/200000 | 23870657851/190606500000 | 3870 | 127:105, 127:218, 127:126, 127:1926, 127:116, 127:1909, 127:1635 |
| 127:1970 | AHS | lo | 136041/1000000 | 272125821723/2000309911000 | 4053 | 127:175, 127:216, 127:1949, 127:178, 127:1886, 127:42, 127:1923 |
| 127:1971 | BHS | lo | 156563/1000000 | 1483232388263/9473693691000 | 4104 | 127:177, 127:218, 127:1807, 127:178, 127:1897, 127:98, 127:1901 |
| 127:1972 | CHS | lo | 1787/12500 | 1015771283890813/7105270268250000 | 4111 | 127:177, 127:218, 127:1807, 127:178, 127:1931, 127:1917, 127:1905 |
| 127:1973 | HPS | lo | 129207/1000000 | 459027977926409/3552635134125000 | 4127 | 127:177, 127:218, 127:1807, 127:178, 127:1932, 127:1959, 127:1911 |
| 127:1975 | ABR | lo | 40199/125000 | 40199/125000 | 4336 | 127:70, 127:1914, 127:126 |
| 127:1976 | ACF | lo | 45553/125000 | 45553/125000 | 4344 | 127:1952, 127:1698, 127:142 |
| 127:1981 | AEF | lo | 195261/500000 | 195261/500000 | 4359 | 127:1952, 127:34, 127:1951 |
| 127:1982 | AEH | lo | 344053/1000000 | 344053/1000000 | 4363 | 127:1922, 127:34, 127:1932 |
| 127:1983 | AEQ | lo | 89183/250000 | 89183/250000 | 4367 | 127:34, 127:1915, 127:1758 |
| 127:1984 | EPR | hi | 91963/200000 | 91963/200000 | 4368 | 127:34, 127:1966, 127:39 |
| 127:1986 | AES | lo | 174791/500000 | 174791/500000 | 4369 | 127:34, 127:1967, 127:1845 |
| 127:1994 | BEH | lo | 77411/250000 | 77411/250000 | 4418 | 127:1925, 127:90, 127:1932 |
| 127:1997 | BFR | lo | 144119/500000 | 144119/500000 | 4437 | 127:126, 127:1926, 127:218 |
| 127:1998 | BHR | lo | 342563/1000000 | 342563/1000000 | 4442 | 127:126, 127:1971, 127:228 |
| 127:2001 | CHR | lo | 425649/1000000 | 425649/1000000 | 4476 | 127:1803, 127:1972, 127:228 |
| 127:2002 | EFQ | lo | 185621/500000 | 185621/500000 | 4489 | 127:1949, 127:178, 127:216 |
| 127:2004 | HPR | lo | 41029/125000 | 41029/125000 | 4510 | 127:228, 127:1973, 127:1643 |
| 127:2006 | ABS | lo | 135593/1000000 | 3790915517/27957875000 | 213 | 127:1802, 127:70, 127:1975, 127:1986, 127:39 |
| 127:2007 | APQ | lo | 5119/50000 | 8836767/86312800 | 297 | 127:8, 127:1635, 127:1966, 127:116, 127:1964 |
| 127:2008 | CFH | lo | 48763/500000 | 11471751500/117626627263 | 402 | 127:1976, 127:204, 127:42, 127:1904, 127:49 |
| 127:2009 | AHR | lo | 12627/100000 | 14121067799/111831500000 | 497 | 127:1982, 127:1934, 127:38, 127:42, 127:31 |
| 127:2010 | EFH | lo | 101547/1000000 | 11944656500/117626627263 | 499 | 127:1981, 127:204, 127:42, 127:1907, 127:49 |
| 127:2011 | AFS | lo | 106783/1000000 | 5684170977/53230750000 | 506 | 127:1986, 127:1962, 127:1970, 127:178, 127:1947 |
| 127:2012 | AFP | lo | 81939/500000 | 6664264587/40666000000 | 512 | 127:1981, 127:1966, 127:34, 127:1934, 127:39 |
| 127:2013 | AHP | lo | 36283/250000 | 66733976551/459815000000 | 545 | 127:34, 127:2004, 127:1966, 127:1932, 127:1984 |
| 127:2014 | AHQ | lo | 78821/500000 | 40066857/254162500 | 552 | 127:1982, 127:66, 127:1983, 127:2009, 127:39 |
| 127:2015 | BHP | lo | 55361/500000 | 203843063/1841031250 | 783 | 127:1382, 127:2004, 127:1916, 127:150, 127:1955 |
| 127:2016 | BFS | lo | 102239/1000000 | 5442290859/53230750000 | 841 | 127:1898, 127:1962, 127:1971, 127:178, 127:1947 |
| 127:2020 | CEF | lo | 54099/500000 | 5869416/54246625 | 1006 | 127:132, 127:2002, 127:134, 127:1951, 127:1958 |
| 127:2021 | CEH | lo | 20531/200000 | 9676371/94260800 | 1040 | 127:132, 127:2001, 127:136, 127:150, 127:1955 |
| 127:2022 | EHP | lo | 26481/250000 | 49922679/471304000 | 1043 | 127:132, 127:2004, 127:150, 127:1614, 127:1955 |
| 127:2024 | AFR | lo | 28213/200000 | 5289962279/37500000000 | 2151 | 127:1997, 127:13 |
| 127:2035 | EHS | hi | 106461/250000 | 31595724514768421/74195562500000000 | 2664 | 127:13, 127:126, 127:70, 127:2006, 127:1982, 127:1994, 127:185 |
| 127:2039 | EFP | lo | 6683/50000 | 38624933157/288979000000 | 2752 | 127:21, 127:150, 127:2013, 127:1698, 127:1981, 127:2020, 127:2010 |
| 127:2040 | FPS | lo | 94779/1000000 | 6847306291/72244750000 | 3028 | 127:33, 127:2022, 127:2013, 127:34, 127:2011, 127:178, 127:1962 |
| 127:2043 | CPQ | hi | 462351/1000000 | 413642726449531/894652000000000 | 3103 | 127:39, 127:1614, 127:1966, 127:34, 127:25, 127:134, 127:165 |
| 127:2044 | CPR | hi | 471303/1000000 | 1916598398138119/4066600000000000 | 3104 | 127:39, 127:1614, 127:1966, 127:34, 127:27, 127:136 |
| 127:2047 | EPQ | hi | 108493/250000 | 17647898874511/40666000000000 | 3109 | 127:39, 127:1614, 127:1966, 127:34, 127:37, 127:195 |
| 127:2048 | FHP | lo | 19253/200000 | 7829483349/81332000000 | 3112 | 127:39, 127:1614, 127:1966, 127:34, 127:42, 127:2010, 127:204 |
| 127:2052 | EPQ | lo | 80677/500000 | 35610335167/220696750000 | 3372 | 127:75, 127:142, 127:1924, 127:1382, 127:1789, 127:134, 127:2002 |
| 127:2054 | AHS | lo | 68021/500000 | 2993402038953/22003409021000 | 4053 | 127:175, 127:216, 127:1949, 127:178, 127:1982, 127:42, 127:2014 |
| 127:2055 | CHS | lo | 71481/500000 | 225730325151411/1578948948500000 | 4111 | 127:177, 127:218, 127:1807, 127:178, 127:2021, 127:2008, 127:2001 |
| 127:2056 | HPS | lo | 16151/125000 | 3179442527699/24606996600000 | 4127 | 127:177, 127:218, 127:1807, 127:178, 127:2022, 127:2048, 127:2004 |
| 127:2057 | CES | lo | 47941/500000 | 2441804913539/25466680323000 | 4239 | 127:211, 127:1643, 127:218, 127:2040, 127:2020, 127:132, 127:136 |
| 127:2059 | ABR | lo | 321593/1000000 | 321593/1000000 | 4336 | 127:70, 127:2006, 127:126 |
| 127:2060 | ACF | lo | 182217/500000 | 182217/500000 | 4344 | 127:2012, 127:1698, 127:142 |
| 127:2063 | AEF | lo | 195269/500000 | 195269/500000 | 4359 | 127:2012, 127:34, 127:2039 |
| 127:2064 | AEH | lo | 43007/125000 | 43007/125000 | 4363 | 127:2013, 127:34, 127:2022 |
| 127:2065 | AEQ | lo | 178367/500000 | 178367/500000 | 4367 | 127:34, 127:2007, 127:2052 |
| 127:2070 | BEH | lo | 154823/500000 | 154823/500000 | 4418 | 127:2015, 127:90, 127:2022 |
| 127:2071 | BEQ | lo | 173677/500000 | 173677/500000 | 4422 | 127:90, 127:116, 127:2052 |
| 127:2073 | BFR | lo | 288239/1000000 | 288239/1000000 | 4437 | 127:126, 127:2016, 127:218 |
| 127:2075 | CHR | lo | 425651/1000000 | 425651/1000000 | 4476 | 127:1803, 127:2055, 127:228 |
| 127:2076 | FPQ | lo | 156507/500000 | 156507/500000 | 4506 | 127:216, 127:2040, 127:1969 |
| 127:2078 | HPR | lo | 328233/1000000 | 328233/1000000 | 4510 | 127:228, 127:2056, 127:1643 |
| 127:2080 | ABS | lo | 67797/500000 | 60654823063/447326000000 | 213 | 127:1802, 127:70, 127:2059, 127:1986, 127:39 |
| 127:2082 | CFH | lo | 12191/125000 | 11471906500/117626627263 | 402 | 127:2060, 127:204, 127:42, 127:1904, 127:49 |
| 127:2083 | AHR | lo | 126271/1000000 | 256748431/2033300000 | 497 | 127:2064, 127:2024, 127:38, 127:42, 127:31 |
| 127:2084 | EFH | lo | 101549/1000000 | 11944904500/117626627263 | 499 | 127:2063, 127:204, 127:42, 127:1907, 127:49 |
| 127:2085 | AFS | lo | 3337/31250 | 947363767/8871750000 | 506 | 127:1986, 127:1962, 127:2054, 127:178, 127:2035 |
| 127:2086 | AFP | lo | 40971/250000 | 6664517423/40666000000 | 512 | 127:2063, 127:1966, 127:34, 127:2024, 127:39 |
| 127:2087 | AHP | lo | 145133/1000000 | 16683602847/114953750000 | 545 | 127:34, 127:2078, 127:1966, 127:2022, 127:1984 |
| 127:2088 | AHQ | lo | 39411/250000 | 70518391457/447326000000 | 552 | 127:2064, 127:66, 127:2065, 127:2083, 127:39 |
| 127:2089 | BFP | lo | 26993/250000 | 4160095663/38529250000 | 748 | 127:1382, 127:2076, 127:116, 127:142, 127:2043 |
| 127:2093 | CEF | lo | 541/5000 | 23477943/216986000 | 1006 | 127:132, 127:2002, 127:134, 127:2039, 127:2047 |
| 127:2094 | EHP | lo | 4237/40000 | 4160231/39275250 | 1043 | 127:132, 127:2078, 127:150, 127:1614, 127:2044 |
| 127:2095 | AFR | lo | 70533/500000 | 327978799169/2325000000000 | 2151 | 127:2073, 127:13 |
| 127:2105 | EHS | hi | 425843/1000000 | 347552243099952631/816151187500000000 | 2664 | 127:13, 127:126, 127:70, 127:2080, 127:2064, 127:2070, 127:185 |
| 127:2106 | EQS | lo | 185243/1000000 | 2418987567/13058419000 | 2666 | 127:13, 127:126, 127:70, 127:2080, 127:2065, 127:2071, 127:194 |
| 127:2108 | EFP | lo | 133663/1000000 | 9656486833/72244750000 | 2752 | 127:21, 127:150, 127:2087, 127:1698, 127:2063, 127:2093, 127:2084 |
| 127:2109 | EPS | lo | 121007/1000000 | 52452770153/433468500000 | 2757 | 127:21, 127:150, 127:2087, 127:1698, 127:1986, 127:2057, 127:186 |
| 127:2110 | FHP | lo | 48133/500000 | 86125000513/894652000000 | 3112 | 127:39, 127:1614, 127:1966, 127:34, 127:42, 127:2084, 127:204 |
| 127:2113 | APQ | hi | 230713/500000 | 128982454671/279530500000 | 3177 | 127:1597, 127:2109, 127:1967, 127:34, 127:37, 127:68 |
| 127:2118 | PQR | lo | 133259/1000000 | 2979999/22362440 | 3212 | 127:1597, 127:2109, 127:1967, 127:34, 127:66, 127:194, 127:236 |
| 127:2120 | BPS | lo | 94639/1000000 | 5024665316853/53092909321000 | 3228 | 127:47, 127:216, 127:68, 127:2085, 127:8, 127:2089, 127:116 |
| 127:2122 | APR | lo | 170919/500000 | 246760837417981/721864646939000 | 3663 | 127:93, 127:2052, 127:116, 127:90, 127:2059, 127:38, 127:66 |
| 127:2123 | APS | lo | 135577/1000000 | 97868250441327/721864646939000 | 3664 | 127:93, 127:2052, 127:116, 127:90, 127:2080, 127:1986, 127:68 |
| 127:2125 | AHS | lo | 136043/1000000 | 272128821723/2000309911000 | 4053 | 127:175, 127:216, 127:2106, 127:178, 127:2064, 127:42, 127:2088 |
| 127:2126 | BHS | lo | 39141/250000 | 494413379421/3157897897000 | 4104 | 127:177, 127:218, 127:1807, 127:178, 127:2070, 127:98, 127:1998 |
| 127:2127 | CHS | lo | 35741/250000 | 507899368110943/3552635134125000 | 4111 | 127:177, 127:218, 127:1807, 127:178, 127:2021, 127:2082, 127:2075 |
| 127:2128 | HPS | lo | 129209/1000000 | 7948667836739/61517491500000 | 4127 | 127:177, 127:218, 127:1807, 127:178, 127:2094, 127:2110, 127:2078 |
| 127:2130 | ABR | lo | 160797/500000 | 160797/500000 | 4336 | 127:70, 127:2080, 127:126 |
| 127:2136 | AEF | lo | 390547/1000000 | 390547/1000000 | 4359 | 127:2086, 127:34, 127:2108 |
| 127:2139 | EPR | hi | 229907/500000 | 229907/500000 | 4368 | 127:34, 127:2122, 127:39 |
| 127:2141 | AES | lo | 21849/62500 | 21849/62500 | 4369 | 127:34, 127:2123, 127:2109 |
| 127:2145 | BCS | lo | 163287/500000 | 163287/500000 | 4409 | 127:1382, 127:2120, 127:1523 |
| 127:2148 | BES | lo | 154323/500000 | 154323/500000 | 4424 | 127:90, 127:2120, 127:2109 |
| 127:2151 | BHR | lo | 85641/250000 | 85641/250000 | 4442 | 127:126, 127:2126, 127:228 |
| 127:2153 | CHR | lo | 425653/1000000 | 425653/1000000 | 4476 | 127:1803, 127:2127, 127:228 |
| 127:2154 | EFQ | lo | 371243/1000000 | 371243/1000000 | 4489 | 127:2106, 127:178, 127:216 |
| 127:2155 | HPR | lo | 164117/500000 | 164117/500000 | 4510 | 127:228, 127:2128, 127:1643 |
| 127:2158 | ABS | lo | 27119/200000 | 7581914931/55915750000 | 213 | 127:1802, 127:70, 127:2130, 127:2141, 127:39 |
| 127:2160 | BPR | lo | 19151/200000 | 6312003/65918000 | 297 | 127:8, 127:2118, 127:2122, 127:116, 127:2113 |
| 127:2162 | EFH | lo | 2031/20000 | 11945044000/117626627263 | 499 | 127:2136, 127:204, 127:42, 127:1907, 127:49 |
| 127:2163 | AFS | lo | 21357/200000 | 5684217699/53230375000 | 506 | 127:2141, 127:1962, 127:2125, 127:178, 127:2105 |
| 127:2164 | AFP | lo | 10243/62500 | 73311471693/447326000000 | 512 | 127:2136, 127:2122, 127:34, 127:2095, 127:39 |
| 127:2165 | AHP | lo | 72567/500000 | 1334699043/9196280000 | 545 | 127:34, 127:2155, 127:2122, 127:2094, 127:2139 |
| 127:2171 | CEF | lo | 108201/1000000 | 23478129/216986000 | 1006 | 127:132, 127:2154, 127:134, 127:2108, 127:2047 |
| 127:2172 | CEH | lo | 1604/15625 | 5375803/52367000 | 1040 | 127:132, 127:2153, 127:136, 127:150, 127:2044 |
| 127:2182 | EFP | lo | 26733/200000 | 603538852/4515296875 | 2752 | 127:21, 127:150, 127:2165, 127:1698, 127:2136, 127:2171, 127:2162 |
| 127:2184 | CPQ | hi | 9247/20000 | 413641755428531/894652000000000 | 3103 | 127:39, 127:1614, 127:2122, 127:34, 127:25, 127:134, 127:165 |
| 127:2185 | CPR | hi | 235651/500000 | 52706320710522101/111831500000000000 | 3104 | 127:39, 127:1614, 127:2122, 127:34, 127:27, 127:136 |
| 127:2188 | EPQ | hi | 433971/1000000 | 17647863753011/40666000000000 | 3109 | 127:39, 127:1614, 127:2122, 127:34, 127:37, 127:195 |
| 127:2191 | BCP | lo | 26371/200000 | 14743011/111812200 | 3180 | 127:1597, 127:2109, 127:2123, 127:34, 127:0, 127:72, 127:2145 |
| 127:2195 | HPS | lo | 12921/100000 | 1836144207786709/14210540536500000 | 4127 | 127:177, 127:218, 127:1807, 127:178, 127:2094, 127:2110, 127:2155 |
| 127:2196 | BER | hi | 418529/500000 | 418529/500000 | 4320 | 127:3, 127:39, 127:2130 |
| 127:2197 | ABR | lo | 64319/200000 | 64319/200000 | 4336 | 127:70, 127:2158, 127:126 |
| 127:2198 | ACF | lo | 91111/250000 | 91111/250000 | 4344 | 127:2164, 127:1698, 127:142 |
| 127:2201 | AEF | lo | 390553/1000000 | 390553/1000000 | 4359 | 127:2164, 127:34, 127:2182 |
| 127:2202 | AEH | lo | 344059/1000000 | 344059/1000000 | 4363 | 127:2165, 127:34, 127:2094 |
| 127:2208 | BCR | lo | 372547/1000000 | 372547/1000000 | 4408 | 127:2191, 127:2160, 127:1576 |
| 127:2209 | BCS | lo | 13063/40000 | 13063/40000 | 4409 | 127:2191, 127:2120, 127:1523 |
| 127:2212 | BER | lo | 198663/500000 | 198663/500000 | 4423 | 127:90, 127:2160, 127:1614 |
| 127:2215 | HPR | lo | 65647/200000 | 65647/200000 | 4510 | 127:228, 127:2195, 127:1643 |
| 127:2218 | CFH | lo | 97529/1000000 | 11472061500/117626627263 | 402 | 127:2198, 127:204, 127:42, 127:1904, 127:49 |
| 127:2219 | EFH | lo | 101551/1000000 | 11945137000/117626627263 | 499 | 127:2201, 127:204, 127:42, 127:1907, 127:49 |
| 127:2220 | AFP | lo | 16389/100000 | 73312497207/447326000000 | 512 | 127:2201, 127:2122, 127:34, 127:2095, 127:39 |
| 127:2221 | BFP | lo | 107973/1000000 | 4992146097/46235000000 | 748 | 127:2191, 127:2076, 127:116, 127:142, 127:2184 |
| 127:2222 | BHP | lo | 27681/250000 | 2087385637/18852080000 | 783 | 127:2191, 127:2215, 127:2160, 127:150, 127:2185 |
| 127:2230 | EFP | lo | 66833/500000 | 38626882129/288979000000 | 2752 | 127:21, 127:150, 127:2165, 127:1698, 127:2201, 127:2171, 127:2219 |
| 127:2232 | BPR | hi | 107889/250000 | 241265964967/559061000000 | 3186 | 127:1597, 127:2109, 127:2123, 127:34, 127:2197, 127:2196, 127:126 |
| 127:2234 | CHS | lo | 28593/200000 | 4063227240968617/28421081073000000 | 4111 | 127:177, 127:218, 127:1807, 127:178, 127:2172, 127:2218, 127:2153 |
| 127:2237 | AEF | lo | 97639/250000 | 97639/250000 | 4359 | 127:2220, 127:34, 127:2230 |
| 127:2241 | BEH | lo | 309649/1000000 | 309649/1000000 | 4418 | 127:2222, 127:90, 127:2094 |
| 127:2242 | CHR | lo | 212827/500000 | 212827/500000 | 4476 | 127:1803, 127:2234, 127:228 |
| 127:2243 | APQ | lo | 102383/1000000 | 14728007/143852000 | 297 | 127:8, 127:2118, 127:2122, 127:116, 127:2232 |
| 127:2244 | AFP | lo | 163891/1000000 | 18328252491/111831500000 | 512 | 127:2237, 127:2122, 127:34, 127:2095, 127:39 |
| 127:2245 | CEF | lo | 54101/500000 | 1739131/16073000 | 1006 | 127:132, 127:2154, 127:134, 127:2230, 127:2188 |
| 127:2250 | EHS | hi | 212921/500000 | 31595579202268421/74195562500000000 | 2664 | 127:13, 127:126, 127:70, 127:2158, 127:2202, 127:2241, 127:185 |
| 127:2251 | EFP | lo | 133667/1000000 | 38627023507/288979000000 | 2752 | 127:21, 127:150, 127:2165, 127:1698, 127:2237, 127:2245, 127:2219 |
| 127:2253 | CES | lo | 95883/1000000 | 7325467753117/76400040969000 | 4239 | 127:211, 127:1643, 127:218, 127:2040, 127:2245, 127:132, 127:136 |
| 127:2256 | AEF | lo | 195279/500000 | 195279/500000 | 4359 | 127:2244, 127:34, 127:2251 |
| 127:2257 | AEQ | lo | 356737/1000000 | 356737/1000000 | 4367 | 127:34, 127:2243, 127:2052 |
| 127:2260 | AFP | lo | 40973/250000 | 36656675901/223663000000 | 512 | 127:2256, 127:2122, 127:34, 127:2095, 127:39 |
| 127:2262 | BFS | lo | 102241/1000000 | 1360581489/13307562500 | 841 | 127:2148, 127:1962, 127:2126, 127:178, 127:2250 |
| 127:2265 | EQS | lo | 46311/250000 | 1209497271/6529209500 | 2666 | 127:13, 127:126, 127:70, 127:2158, 127:2257, 127:2071, 127:194 |
| 127:2268 | AEF | lo | 390559/1000000 | 390559/1000000 | 4359 | 127:2260, 127:34, 127:2251 |
| 127:2270 | BFR | lo | 288241/1000000 | 288241/1000000 | 4437 | 127:126, 127:2262, 127:218 |
| 127:2272 | EFQ | lo | 92811/250000 | 92811/250000 | 4489 | 127:2265, 127:178, 127:216 |
| 127:2273 | EFH | lo | 6347/62500 | 11945230000/117626627263 | 499 | 127:2268, 127:204, 127:42, 127:1907, 127:49 |
| 127:2274 | AFR | lo | 141067/1000000 | 327981074911/2325000000000 | 2151 | 127:2270, 127:13 |
| 127:2276 | EFP | lo | 33417/250000 | 9656831527/72244750000 | 2752 | 127:21, 127:150, 127:2165, 127:1698, 127:2268, 127:2245, 127:2273 |
| 127:2277 | AEF | lo | 2441/6250 | 2441/6250 | 4359 | 127:2260, 127:34, 127:2276 |
| 127:2280 | AFP | lo | 163893/1000000 | 3665687007/22366300000 | 512 | 127:2277, 127:2122, 127:34, 127:2274, 127:39 |
| 127:2281 | ACF | lo | 364449/1000000 | 364449/1000000 | 4344 | 127:2280, 127:1698, 127:142 |
| 127:2282 | AEF | lo | 390561/1000000 | 390561/1000000 | 4359 | 127:2280, 127:34, 127:2276 |
| 127:2283 | CFH | lo | 9753/100000 | 11472139000/117626627263 | 402 | 127:2281, 127:204, 127:42, 127:1904, 127:49 |
| 127:2284 | CHS | lo | 71483/500000 | 406325178704969/2842108107300000 | 4111 | 127:177, 127:218, 127:1807, 127:178, 127:2172, 127:2283, 127:2242 |
| 127:2285 | CHR | lo | 85131/200000 | 85131/200000 | 4476 | 127:1803, 127:2284, 127:228 |

## Stage 128

| Property | Value |
| --- | --- |
| Scope | root/APQ+/AQS+/ARS-/CRS+/BRS+/BPQ+ |
| Packet | forest:root/APQ+/AQS+/ARS-/CRS+/BRS+/BPQ+ |
| Index | 1 |
| Context | 24 |
| Box present | yes |
| Parent box | 127 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 26337/250000 | 33/125 | 53187/500000 | 33/125 |
| b | 117213/1000000 | 197087/500000 | 4861/40000 | 98371/250000 |
| c | 625849/1000000 | 1/1 | 625947/1000000 | 995761/1000000 |
| e | 26337/250000 | 33/125 | 53187/500000 | 33/125 |
| f | 117213/1000000 | 197087/500000 | 30381/250000 | 196739/500000 |
| h | 135501/250000 | 194457/200000 | 544311/1000000 | 485599/500000 |
| p | 3373/10000 | 175087/250000 | 38723/100000 | 69561/100000 |
| q | 49587/250000 | 275667/500000 | 199367/1000000 | 500199/1000000 |
| u | 311297/500000 | 1/1 | 131519/200000 | 1/1 |
| v | 122669/250000 | 878021/1000000 | 264487/500000 | 219321/250000 |
| r | 270611/500000 | 879639/1000000 | 54687/100000 | 175873/200000 |
| w | 399099/500000 | 1/1 | 49951/62500 | 1/1 |
| j | 79141/200000 | 733367/1000000 | 39953/100000 | 11284/15625 |
| k | 30057/62500 | 823113/1000000 | 494813/1000000 | 823061/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | actual ABC; occupants none | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 22 | A_ACR | actual ACR; occupants P, S | `1/1 * c * w + -1/1 * a * c + 1/1 * a * r + -13857/20000` |
| 26 | A_AEP | actual AEP; occupants none | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 29 | A_AER | actual AER; occupants P, S | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 46 | A_BCE | actual BCE; occupants none | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 82 | A_CEQ | actual CEQ; occupants none | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 90 | A_CHP | actual CHP; occupants none | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 105 | A_EFS | actual EFS; occupants none | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 113 | A_EQR | actual EQR; occupants none | `1/1 * u * w + -1/1 * e * u + -1/1 * w + -1/1 * v * r + 1/1 * v + 1/1 * e * r + -93/1000` |
| 118 | A_FHR | actual FHR; occupants none | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 123 | A_FQR | actual FQR; occupants none | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -93/1000` |
| 138 | fb | contact order fb | `1/1 * f + -1/1 * b` |
| 141 | lower-area | endpoint floor 135501/250000 | `1/1 * c * h + -135501/250000` |
| 144 | top-area | top hull +--+ | `114499/250000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 169 | AREA_lo_ABR | earlier 127:2197; ABR; lo; 64319/200000 | `1/1 * b * w + -1/1 * a * b + 1/1 * a * r + -64319/200000` |
| 192 | AREA_hi_AES | earlier 127:1597; AES; hi; 559061/1000000 | `559061/1000000 + -1/1 * k + 1/1 * a + 1/1 * e * j + -1/1 * a * j` |
| 214 | AREA_lo_APR | earlier 127:2122; APR; lo; 170919/500000 | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -170919/500000` |
| 313 | AREA_lo_EFQ | earlier 127:2272; EFQ; lo; 92811/250000 | `-1/1 * f * v + 1/1 * e * f + 1/1 * v + 1/1 * u + -342811/250000 + -1/1 * e * u` |
| 315 | AREA_lo_EFR | earlier 127:1907; EFR; lo; 380101/1000000 | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1380101/1000000 + -1/1 * e * r` |
| 334 | AREA_lo_ERS | earlier 127:1807; ERS; lo; 194101/1000000 | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -194101/1000000` |
| 363 | AREA_lo_PRS | earlier 127:1643; PRS; lo; 4241/40000 | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -4241/40000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 169 | b | 117213/1000000 | 197087/500000 | 1396411/11500000 | 197087/500000 | 121427/1000000 | 197087/500000 | `(13857/20000, -33072293093/125000000000); (267099/500000, -22339049/125000000); (13857/20000, -57231697657/250000000000); (267099/500000, -1396411/15625000); (223663/250000, -33072293093/125000000000); (92/125, -22339049/125000000); (223663/250000, -57231697657/250000000000); (92/125, -1396411/15625000)` |
| 1 | 192 | k | 30057/62500 | 823113/1000000 | 30057/62500 | 823061/1000000 | 30057/62500 | 823061/1000000 | `(-1/1, 664409/1000000); (-1/1, 38014080517/50000000000); (-1/1, 36359419483/50000000000); (-1/1, 823061/1000000); (-1/1, 176677714679/250000000000); (-1/1, 195189785321/250000000000)` |
| 2 | 214 | p | 3373/10000 | 175087/250000 | 71021985093/184000000000 | 175087/250000 | 385989/1000000 | 175087/250000 | `(13857/20000, -196085823/500000000); (267099/500000, -38288211657/125000000000); (13857/20000, -145803858723/250000000000); (267099/500000, -124337370537/250000000000); (13857/20000, -423644427/1000000000); (267099/500000, -71021985093/250000000000); (13857/20000, -367072339527/500000000000); (267099/500000, -297294096213/500000000000); (223663/250000, -196085823/500000000); (92/125, -38288211657/125000000000); (223663/250000, -145803858723/250000000000); (92/125, -124337370537/250000000000); (223663/250000, -423644427/1000000000); (92/125, -71021985093/250000000000); (223663/250000, -367072339527/500000000000); (92/125, -297294096213/500000000000)` |
| 3 | 313 | u | 311297/500000 | 1/1 | 583790320349/894652000000 | 1/1 | 652533/1000000 | 1/1 | `(223663/250000, -57858340679/62500000000); (92/125, -226784343497/250000000000); (223663/250000, -32264196221/31250000000); (92/125, -121239723203/125000000000); (223663/250000, -583790320349/1000000000000); (92/125, -565194243473/1000000000000); (223663/250000, -398895303551/500000000000); (92/125, -367627056827/500000000000)` |
| 4 | 313 | v | 122669/250000 | 878021/1000000 | 116060961219/220696750000 | 878021/1000000 | 131471/250000 | 878021/1000000 | `(882787/1000000, -4844411821/6250000000); (882787/1000000, -21500887/25000000); (302913/500000, -186482150983/250000000000); (302913/500000, -49182361/62500000); (882787/1000000, -116060961219/250000000000); (882787/1000000, -75537471/125000000); (302913/500000, -54383319681/125000000000); (302913/500000, -33198879/62500000)` |
| 5 | 315 | r | 270611/500000 | 879639/1000000 | 121241461219/223663000000 | 879639/1000000 | 67759/125000 | 879639/1000000 | `(223663/250000, -13262280541/20000000000); (92/125, -322258975087/500000000000); (223663/250000, -8550064559/10000000000); (92/125, -198117490613/250000000000); (223663/250000, -121241461219/250000000000); (92/125, -58296221/125000000); (223663/250000, -91593694681/125000000000); (92/125, -83776633/125000000)` |
| 6 | 334 | j | 79141/200000 | 733367/1000000 | 79141/200000 | 163836935349/223663000000 | 79141/200000 | 732517/1000000 | `(-13857/20000, 10211491519/31250000000); (-267099/500000, 3761983151/15625000000); (-13857/20000, 113386435349/250000000000); (-267099/500000, 19624328423/62500000000); (-223663/250000, 16517804019/31250000000); (-92/125, 6915139401/15625000000); (-223663/250000, 163836935349/250000000000); (-92/125, 32236953423/62500000000); (-13857/20000, 21261015167/125000000000); (-267099/500000, 10510914299/125000000000); (-13857/20000, 412364345607/1000000000000); (-267099/500000, 272807858979/1000000000000); (-223663/250000, 46486265167/125000000000); (-92/125, 35736164299/125000000000); (-223663/250000, 614166345607/1000000000000); (-92/125, 474609858979/1000000000000)` |
| 7 | 363 | j | 79141/200000 | 732517/1000000 | 79141/200000 | 4339000741/5998500000 | 79141/200000 | 180837/250000 | `(-11997/20000, 84806969231/500000000000); (-11997/20000, 33669456017/125000000000); (-15429/62500, -2172988853/100000000000); (-15429/62500, 9751477643/125000000000); (-11997/20000, 1059992881/4000000000); (-11997/20000, 91184982481/250000000000); (-15429/62500, -11375507951/250000000000); (-15429/62500, 5423967787/100000000000); (-200413/250000, 3093841133/12500000000); (-200413/250000, 12833977351/31250000000); (-224333/500000, 1755108239/31250000000); (-224333/500000, 2741793103/12500000000); (-200413/250000, 85722893107/250000000000); (-200413/250000, 25303577851/50000000000); (-224333/500000, 16195660187/500000000000); (-224333/500000, 97785652483/500000000000); (-11997/20000, 223017580829/1000000000000); (-11997/20000, 53800418253/250000000000); (-15429/62500, 31673753837/1000000000000); (-15429/62500, 1192892301/50000000000); (-11997/20000, 4339000741/10000000000); (-11997/20000, 426084166283/1000000000000); (-15429/62500, 61699911023/500000000000); (-15429/62500, 115583914229/1000000000000); (-200413/250000, 300910933007/1000000000000); (-200413/250000, 89133325027/250000000000); (-224333/500000, 21913421203/200000000000); (-224333/500000, 41297368279/250000000000); (-200413/250000, 255896713139/500000000000); (-200413/250000, 567415793379/1000000000000); (-224333/500000, 12580823389/62500000000); (-224333/500000, 10276621653/40000000000)` |
| 8 | 0 | a | 26337/250000 | 33/125 | 93000/878573 | 33/125 | 105853/1000000 | 33/125 | `(252211/500000, -93/1000); (9267/40000, -93/1000); (878573/1000000, -93/1000); (302913/500000, -93/1000)` |
| 9 | 26 | q | 49587/250000 | 275667/500000 | 9924966213/50000000000 | 275667/500000 | 198499/1000000 | 275667/500000 | `(1/1, -39731615111/200000000000); (1/1, -73940518293/250000000000); (1/1, -259896002383/1000000000000); (1/1, -357/1000); (1/1, -9924966213/50000000000); (1/1, -15368024319/62500000000); (1/1, -77402733789/250000000000)` |
| 10 | 29 | w | 399099/500000 | 1/1 | 159651756461/200000000000 | 1/1 | 399129/500000 | 1/1 | `(1/1, -19960731341/25000000000); (1/1, -27214037283/31250000000); (1/1, -110553757573/125000000000); (1/1, -19137/20000); (1/1, -159651756461/200000000000); (1/1, -204323378343/250000000000); (1/1, -937815268933/1000000000000)` |
| 11 | 46 | e | 26337/250000 | 33/125 | 93000/878573 | 33/125 | 105853/1000000 | 33/125 | `(252211/500000, -93/1000); (9267/40000, -93/1000); (878573/1000000, -93/1000); (302913/500000, -93/1000)` |
| 12 | 82 | c | 625849/1000000 | 1/1 | 625849/1000000 | 76594036/76752625 | 625849/1000000 | 498967/500000 | `(-420031/1000000, 363811424351/1000000000000); (-65471/250000, 32576911/125000000); (-420031/1000000, 327031/1000000); (-65471/250000, 42221/250000); (-96521/125000, 715948424351/1000000000000); (-614021/1000000, 19148509/31250000); (-96521/125000, 10612/15625); (-614021/1000000, 521021/1000000)` |
| 13 | 90 | p | 385989/1000000 | 175087/250000 | 385989/1000000 | 169796839531/243071250000 | 385989/1000000 | 174637/250000 | `(-135501/250000, 24396452149/200000000000); (-135501/250000, 24979531867/100000000000); (-194457/200000, 195636597157/500000000000); (-194457/200000, 169796839531/250000000000); (-135501/250000, -9883917117/100000000000); (-135501/250000, -5115536211/50000000000); (-194457/200000, 170451762399/1000000000000); (-194457/200000, 163540657617/500000000000)` |
| 14 | 90 | q | 198499/1000000 | 275667/500000 | 198499/1000000 | 20079397773/39917360000 | 198499/1000000 | 20121/40000 | `(-625849/1000000, 462563493/12500000000); (-498967/500000, 11933831889/50000000000); (-625849/1000000, 1402122801/10000000000); (-498967/500000, 20079397773/40000000000); (-625849/1000000, -33100787199/250000000000); (-498967/500000, 8658551193/125000000000); (-625849/1000000, -32736829443/200000000000); (-498967/500000, 19808851701/100000000000)` |
| 15 | 105 | j | 79141/200000 | 180837/250000 | 44250637663/111768375000 | 180837/250000 | 395913/1000000 | 180837/250000 | `(894147/1000000, -656049790567/1000000000000); (92/125, -39844556641/62500000000); (894147/1000000, -379963253133/500000000000); (92/125, -21799658459/31250000000); (894147/1000000, -44250637663/125000000000); (92/125, -335468216993/1000000000000); (894147/1000000, -34540234137/62500000000); (92/125, -245153155307/500000000000)` |
| 16 | 105 | k | 30057/62500 | 823061/1000000 | 86762641631/176557400000 | 823061/1000000 | 491413/1000000 | 823061/1000000 | `(882787/1000000, -7265882311/10000000000); (882787/1000000, -3853319/5000000); (302913/500000, -697271078367/1000000000000); (302913/500000, -43596631/62500000); (882787/1000000, -86762641631/200000000000); (882787/1000000, -13241791/25000000); (302913/500000, -202248027711/500000000000); (302913/500000, -28534621/62500000)` |
| 17 | 113 | r | 67759/125000 | 879639/1000000 | 67759/125000 | 84896/96521 | 67759/125000 | 21989/25000 | `(-420031/1000000, 17288622373/200000000000); (-65471/250000, -8376512243/500000000000); (-420031/1000000, 327031/1000000); (-65471/250000, 42221/250000); (-96521/125000, 87716022373/200000000000); (-614021/1000000, 167691987757/500000000000); (-96521/125000, 10612/15625); (-614021/1000000, 521021/1000000); (-420031/1000000, 16344424351/1000000000000); (-65471/250000, -678529/7812500); (-96521/125000, 368481424351/1000000000000); (-614021/1000000, 33160661/125000000)` |
| 18 | 118 | h | 135501/250000 | 194457/200000 | 135501/250000 | 117976862777/121346500000 | 135501/250000 | 121529/125000 | `(-424859/1000000, 177752892523/500000000000); (-73949/500000, 33604862777/250000000000); (-762347/1000000, 346496892523/500000000000); (-242693/500000, 117976862777/250000000000); (-424859/1000000, 331859/1000000); (-73949/500000, 27449/500000); (-762347/1000000, 669347/1000000); (-242693/500000, 196193/500000)` |
| 19 | 123 | v | 131471/250000 | 878021/1000000 | 131471/250000 | 669347/762347 | 131471/250000 | 878009/1000000 | `(-424859/1000000, 2798280907/12500000000); (-73949/500000, 1388069311/500000000000); (-424859/1000000, 76881892523/500000000000); (-73949/500000, -16830637223/250000000000); (-762347/1000000, 7016880907/12500000000); (-242693/500000, 170132069311/500000000000); (-762347/1000000, 245625892523/500000000000); (-242693/500000, 67541362777/250000000000); (-424859/1000000, 331859/1000000); (-73949/500000, 27449/500000); (-762347/1000000, 669347/1000000); (-242693/500000, 196193/500000)` |
| 20 | 138 | f | 117213/1000000 | 197087/500000 | 121427/1000000 | 197087/500000 | 121427/1000000 | 197087/500000 | `(1/1, -121427/1000000); (1/1, -197087/500000)` |
| 21 | 141 | h | 135501/250000 | 121529/125000 | 271002/498967 | 121529/125000 | 271563/500000 | 121529/125000 | `(625849/1000000, -135501/250000); (498967/500000, -135501/250000)` |
| 22 | 144 | f | 121427/1000000 | 197087/500000 | 121427/1000000 | 117381/298049 | 121427/1000000 | 49229/125000 | `(-894147/1000000, 352143/1000000); (-92/125, 48499/250000)` |
| 23 | 169 | b | 121427/1000000 | 197087/500000 | 2234779/18400000 | 197087/500000 | 24291/200000 | 197087/500000 | `(138481/200000, -33026881573/125000000000); (267129/500000, -22310999/125000000); (138481/200000, -5712273383/25000000000); (267129/500000, -2234779/25000000); (894147/1000000, -33026881573/125000000000); (92/125, -22310999/125000000); (894147/1000000, -5712273383/25000000000); (92/125, -2234779/25000000)` |
| 24 | 214 | p | 385989/1000000 | 174637/250000 | 7105648511/18400000000 | 174637/250000 | 6034/15625 | 174637/250000 | `(138481/200000, -24503675157/62500000000); (267129/500000, -38291467741/125000000000); (138481/200000, -17410431887/31250000000); (267129/500000, -2357033799/5000000000); (138481/200000, -5291571447/12500000000); (267129/500000, -7105648511/25000000000); (138481/200000, -4319841277/6250000000); (267129/500000, -552074829/1000000000); (894147/1000000, -24503675157/62500000000); (92/125, -38291467741/125000000000); (894147/1000000, -17410431887/31250000000); (92/125, -2357033799/5000000000); (894147/1000000, -5291571447/12500000000); (92/125, -7105648511/25000000000); (894147/1000000, -4319841277/6250000000); (92/125, -552074829/1000000000)` |
| 25 | 313 | u | 652533/1000000 | 1/1 | 146748896653/223536750000 | 1/1 | 328243/500000 | 1/1 | `(894147/1000000, -896363104237/1000000000000); (92/125, -219289947117/250000000000); (894147/1000000, -126347706099/125000000000); (92/125, -29640571859/31250000000); (894147/1000000, -146748896653/250000000000); (92/125, -567792270843/1000000000000); (894147/1000000, -24916710681/31250000000); (92/125, -91881424061/125000000000)` |
| 26 | 313 | v | 131471/250000 | 878009/1000000 | 464243587769/878573000000 | 878009/1000000 | 264203/500000 | 878009/1000000 | `(878573/1000000, -771395600327/1000000000000); (878573/1000000, -107001697/125000000); (75771/125000, -371280356931/500000000000); (75771/125000, -24503083/31250000); (878573/1000000, -464243587769/1000000000000); (878573/1000000, -75398409/125000000); (75771/125000, -54426087663/125000000000); (75771/125000, -16602261/31250000)` |
| 27 | 315 | r | 67759/125000 | 21989/25000 | 488674587769/894147000000 | 21989/25000 | 273263/500000 | 21989/25000 | `(894147/1000000, -133183932387/200000000000); (92/125, -323358173083/500000000000); (894147/1000000, -21363356149/25000000000); (92/125, -49515681041/62500000000); (894147/1000000, -488674587769/1000000000000); (92/125, -58683909/125000000); (894147/1000000, -91530587663/125000000000); (92/125, -83745169/125000000)` |
| 28 | 363 | j | 395913/1000000 | 180837/250000 | 395913/1000000 | 27108526837/37484937500 | 395913/1000000 | 144637/200000 | `(-599759/1000000, 43139072871/250000000000); (-599759/1000000, 2096922483/7812500000); (-295233/1000000, 765614351/125000000000); (-295233/1000000, 25493675287/250000000000); (-599759/1000000, 3376332657/12500000000); (-599759/1000000, 3659563989/10000000000); (-295233/1000000, 564431/250000000); (-295233/1000000, 4905375517/50000000000); (-801501/1000000, 62616052519/250000000000); (-801501/1000000, 10233313711/25000000000); (-19879/40000, 420164167/5000000000); (-19879/40000, 60725292941/250000000000); (-801501/1000000, 21750908197/62500000000); (-801501/1000000, 126720717379/250000000000); (-19879/40000, 2505176331/31250000000); (-19879/40000, 59758495239/250000000000); (-599759/1000000, 56434012071/250000000000); (-599759/1000000, 1703033481/7812500000); (-295233/1000000, 7413083951/125000000000); (-295233/1000000, 12889227223/250000000000); (-599759/1000000, 27108526837/62500000000); (-599759/1000000, 106497166669/250000000000); (-295233/1000000, 5183985651/31250000000); (-295233/1000000, 39534944529/250000000000); (-801501/1000000, 75910991719/250000000000); (-801501/1000000, 44864344523/125000000000); (-19879/40000, 686062951/5000000000); (-19879/40000, 48120844877/250000000000); (-801501/1000000, 31977771749/62500000000); (-801501/1000000, 141728784323/250000000000); (-19879/40000, 7618608107/31250000000); (-19879/40000, 74766562183/250000000000)` |
| 29 | 0 | a | 105853/1000000 | 33/125 | 93000/876479 | 33/125 | 53053/500000 | 33/125 | `(252197/500000, -93/1000); (9267/40000, -93/1000); (876479/1000000, -93/1000); (7547/12500, -93/1000)` |
| 30 | 22 | c | 625849/1000000 | 498967/500000 | 5758077/9200000 | 498967/500000 | 625877/1000000 | 498967/500000 | `(86519/125000, -158715078061/250000000000); (267129/500000, -17142723/31250000); (86519/125000, -7494042583/12500000000); (267129/500000, -5758077/12500000); (446947/500000, -158715078061/250000000000); (92/125, -17142723/31250000); (446947/500000, -7494042583/12500000000); (92/125, -5758077/12500000)` |
| 31 | 26 | q | 198499/1000000 | 20121/40000 | 49732316839/250000000000 | 20121/40000 | 198929/1000000 | 20121/40000 | `(1/1, -388688081/1953125000); (1/1, -2311933001/7812500000); (1/1, -2031881823/7812500000); (1/1, -357/1000); (1/1, -49732316839/250000000000); (1/1, -61631682361/250000000000); (1/1, -38675317239/125000000000)` |
| 32 | 29 | w | 399129/500000 | 1/1 | 19968336783/25000000000 | 1/1 | 798733/1000000 | 1/1 | `(1/1, -399408864461/500000000000); (1/1, -435209276339/500000000000); (1/1, -221312294061/250000000000); (1/1, -19137/20000); (1/1, -19968336783/25000000000); (1/1, -20443755617/25000000000); (1/1, -11722915583/12500000000)` |
| 33 | 46 | e | 105853/1000000 | 33/125 | 93000/876479 | 33/125 | 53053/500000 | 33/125 | `(252211/500000, -93/1000); (231703/1000000, -93/1000); (876479/1000000, -93/1000); (7547/12500, -93/1000)` |
| 34 | 82 | c | 625877/1000000 | 498967/500000 | 625877/1000000 | 76462087/76751125 | 625877/1000000 | 199247/200000 | `(-4223/10000, 91437224121/250000000000); (-132203/500000, 2047607/7812500); (-4223/10000, 3293/10000); (-132203/500000, 85703/500000); (-771903/1000000, 178837974121/250000000000); (-614009/1000000, 76462087/125000000); (-771903/1000000, 678903/1000000); (-614009/1000000, 521009/1000000)` |
| 35 | 90 | p | 6034/15625 | 174637/250000 | 6034/15625 | 135478302841/194446400000 | 6034/15625 | 696739/1000000 | `(-271563/500000, 122424985769/1000000000000); (-271563/500000, 49980219659/200000000000); (-121529/125000, 390992561731/1000000000000); (-121529/125000, 135478302841/200000000000); (-271563/500000, -67901706423/1000000000000); (-271563/500000, -10609996053/200000000000); (-121529/125000, 200665869539/1000000000000); (-121529/125000, 74888087129/200000000000)` |
| 36 | 90 | q | 198929/1000000 | 20121/40000 | 198929/1000000 | 62514860211/124529375000 | 198929/1000000 | 502009/1000000 | `(-625877/1000000, 18593922663/500000000000); (-199247/200000, 119169452217/500000000000); (-625877/1000000, 17505622829/125000000000); (-199247/200000, 62514860211/125000000000); (-625877/1000000, -32871748653/250000000000); (-199247/200000, 4354004031/62500000000); (-625877/1000000, -10118393999/62500000000); (-199247/200000, 3096556173/15625000000)` |
| 37 | 105 | j | 395913/1000000 | 144637/200000 | 71399338957/178778800000 | 144637/200000 | 99843/250000 | 144637/200000 | `(446947/500000, -648373673089/1000000000000); (92/125, -629201078351/1000000000000); (446947/500000, -94166653303/125000000000); (92/125, -86393689577/125000000000); (446947/500000, -71399338957/200000000000); (92/125, -337824100047/1000000000000); (446947/500000, -13807470539/25000000000); (92/125, -61264388969/125000000000)` |
| 38 | 105 | k | 491413/1000000 | 823061/1000000 | 108416283587/219643250000 | 823061/1000000 | 493601/1000000 | 823061/1000000 | `(878573/1000000, -72311963217/100000000000); (878573/1000000, -19175137/25000000); (75771/125000, -17355395681/25000000000); (75771/125000, -1086079/1562500); (878573/1000000, -108416283587/250000000000); (878573/1000000, -66084889/125000000); (75771/125000, -202380664709/500000000000); (75771/125000, -14273881/31250000)` |
| 39 | 113 | r | 273263/500000 | 21989/25000 | 273263/500000 | 226301/257301 | 273263/500000 | 879519/1000000 | `(-4223/10000, 45686464361/500000000000); (-132203/500000, -6141135881/500000000000); (-4223/10000, 3293/10000); (-132203/500000, 85703/500000); (-771903/1000000, 220487964361/500000000000); (-614009/1000000, 168660364119/500000000000); (-771903/1000000, 678903/1000000); (-614009/1000000, 521009/1000000); (-4223/10000, 5558724121/250000000000); (-132203/500000, -5088769/62500000); (-771903/1000000, 92959474121/250000000000); (-614009/1000000, 33522837/125000000)` |
| 40 | 118 | h | 271563/500000 | 121529/125000 | 271563/500000 | 58994048143/60710875000 | 271563/500000 | 485861/500000 | `(-425099/1000000, 356538248009/1000000000000); (-76347/500000, 17369923143/125000000000); (-189523/250000, 689531248009/1000000000000); (-485687/1000000, 58994048143/125000000000); (-425099/1000000, 332099/1000000); (-76347/500000, 29847/500000); (-189523/250000, 166273/250000); (-485687/1000000, 392687/1000000)` |
| 41 | 123 | v | 264203/500000 | 878009/1000000 | 264203/500000 | 166273/189523 | 264203/500000 | 219331/250000 | `(-425099/1000000, 224409280247/1000000000000); (-76347/500000, 3415208691/500000000000); (-425099/1000000, 155271248009/1000000000000); (-76347/500000, -7788451857/125000000000); (-189523/250000, 557402280247/1000000000000); (-485687/1000000, 169911708691/500000000000); (-189523/250000, 488264248009/1000000000000); (-485687/1000000, 33835673143/125000000000); (-425099/1000000, 332099/1000000); (-76347/500000, 29847/500000); (-189523/250000, 166273/250000); (-485687/1000000, 392687/1000000)` |
| 42 | 138 | b | 24291/200000 | 197087/500000 | 24291/200000 | 49229/125000 | 24291/200000 | 49229/125000 | `(-1/1, 121427/1000000); (-1/1, 49229/125000)` |
| 43 | 138 | f | 121427/1000000 | 49229/125000 | 24291/200000 | 49229/125000 | 24291/200000 | 49229/125000 | `(1/1, -24291/200000); (1/1, -49229/125000)` |
| 44 | 141 | h | 271563/500000 | 485861/500000 | 542004/996235 | 485861/500000 | 136013/250000 | 485861/500000 | `(625877/1000000, -135501/250000); (199247/200000, -135501/250000)` |
| 45 | 144 | f | 24291/200000 | 49229/125000 | 24291/200000 | 175945/446947 | 24291/200000 | 19683/50000 | `(-446947/500000, 35189/100000); (-92/125, 48499/250000)` |
| 46 | 169 | b | 24291/200000 | 49229/125000 | 698453/5750000 | 49229/125000 | 12147/100000 | 49229/125000 | `(692627/1000000, -65901328061/250000000000); (534733/1000000, -22164017/125000000); (692627/1000000, -114136378493/500000000000); (534733/1000000, -698453/7812500); (446947/500000, -65901328061/250000000000); (92/125, -22164017/125000000); (446947/500000, -114136378493/500000000000); (92/125, -698453/7812500)` |
| 47 | 214 | p | 6034/15625 | 696739/1000000 | 284606819151/736000000000 | 696739/1000000 | 193347/500000 | 696739/1000000 | `(692627/1000000, -196284091449/500000000000); (534733/1000000, -153137503327/500000000000); (692627/1000000, -279104641489/500000000000); (534733/1000000, -235958053367/500000000000); (692627/1000000, -423477592137/1000000000000); (534733/1000000, -284606819151/1000000000000); (692627/1000000, -690042210657/1000000000000); (534733/1000000, -551171437671/1000000000000); (446947/500000, -196284091449/500000000000); (92/125, -153137503327/500000000000); (446947/500000, -279104641489/500000000000); (92/125, -235958053367/500000000000); (446947/500000, -423477592137/1000000000000); (92/125, -284606819151/1000000000000); (446947/500000, -690042210657/1000000000000); (92/125, -551171437671/1000000000000)` |
| 48 | 313 | u | 328243/500000 | 1/1 | 963259479/1465400000 | 1/1 | 131467/200000 | 1/1 | `(446947/500000, -1788256893/2000000000); (92/125, -87495143073/100000000000); (446947/500000, -504540309/500000000); (92/125, -23673101649/25000000000); (446947/500000, -58758828219/100000000000); (92/125, -28420563321/50000000000); (446947/500000, -19937941947/25000000000); (92/125, -9192014073/12500000000)` |
| 49 | 313 | v | 264203/500000 | 219331/250000 | 46446289577/87854500000 | 219331/250000 | 16521/31250 | 219331/250000 | `(175709/200000, -9634613541/12500000000); (175709/200000, -21384533/25000000); (30317/50000, -14837729991/20000000000); (30317/50000, -979399/1250000); (175709/200000, -46446289577/100000000000); (175709/200000, -15079497/25000000); (30317/50000, -10889507801/25000000000); (30317/50000, -207546/390625)` |
| 50 | 315 | r | 273263/500000 | 879519/1000000 | 48866889577/89389400000 | 879519/1000000 | 273337/500000 | 879519/1000000 | `(446947/500000, -133098202457/200000000000); (92/125, -129262799303/200000000000); (446947/500000, -42701377241/50000000000); (92/125, -39593549639/50000000000); (446947/500000, -48866889577/100000000000); (92/125, -11737297/25000000); (446947/500000, -18299782801/25000000000); (92/125, -16745869/25000000)` |
| 51 | 363 | j | 99843/250000 | 144637/200000 | 99843/250000 | 108375865219/149951000000 | 99843/250000 | 361371/500000 | `(-149951/250000, 21632154317/125000000000); (-149951/250000, 66915471369/250000000000); (-74181/250000, 921409827/125000000000); (-74181/250000, 25493982389/250000000000); (-149951/250000, 33892167047/125000000000); (-149951/250000, 91435496829/250000000000); (-74181/250000, 142897433/31250000000); (-74181/250000, 24794342199/250000000000); (-801071/1000000, 125442987917/500000000000); (-801071/1000000, 407892453789/1000000000000); (-497991/1000000, 42600009957/500000000000); (-497991/1000000, 242206497869/1000000000000); (-801071/1000000, 174483038837/500000000000); (-801071/1000000, 505972555629/1000000000000); (-497991/1000000, 41200729577/500000000000); (-497991/1000000, 239407937109/1000000000000); (-149951/250000, 28220530667/125000000000); (-149951/250000, 13638841911/62500000000); (-74181/250000, 7509786177/125000000000); (-74181/250000, 1641734833/31250000000); (-149951/250000, 108375865219/250000000000); (-149951/250000, 106490171529/250000000000); (-74181/250000, 41734710589/250000000000); (-74181/250000, 39849016899/250000000000); (-801071/1000000, 151796493317/500000000000); (-801071/1000000, 358452038889/1000000000000); (-497991/1000000, 68953515357/500000000000); (-497991/1000000, 192766082969/1000000000000); (-801071/1000000, 255666101087/500000000000); (-801071/1000000, 566191254429/1000000000000); (-497991/1000000, 122383791827/500000000000); (-497991/1000000, 299626635909/1000000000000)` |
| 52 | 0 | a | 53053/500000 | 33/125 | 18600/174953 | 33/125 | 53157/500000 | 33/125 | `(504407/1000000, -93/1000); (46409/200000, -93/1000); (174953/200000, -93/1000); (602403/1000000, -93/1000)` |
| 53 | 22 | c | 625877/1000000 | 199247/200000 | 57582123/92000000 | 199247/200000 | 156473/250000 | 199247/200000 | `(692419/1000000, -158682725091/250000000000); (534733/1000000, -8570751/15625000); (692419/1000000, -299672408517/500000000000); (534733/1000000, -57582123/125000000); (446843/500000, -158682725091/250000000000); (92/125, -8570751/15625000); (446843/500000, -299672408517/500000000000); (92/125, -57582123/125000000)` |
| 54 | 26 | q | 198929/1000000 | 502009/1000000 | 12448067393/62500000000 | 502009/1000000 | 199169/1000000 | 502009/1000000 | `(1/1, -6226048989/31250000000); (1/1, -73985834391/250000000000); (1/1, -65072557521/250000000000); (1/1, -357/1000); (1/1, -12448067393/62500000000); (1/1, -123494546167/500000000000); (1/1, -154589992977/500000000000)` |
| 55 | 29 | w | 798733/1000000 | 1/1 | 49936316253/62500000000 | 1/1 | 798981/1000000 | 1/1 | `(1/1, -24970321619/31250000000); (1/1, -217633363861/250000000000); (1/1, -221341709091/250000000000); (1/1, -19137/20000); (1/1, -49936316253/62500000000); (1/1, -408989613507/500000000000); (1/1, -468925916517/500000000000)` |
| 56 | 46 | e | 53053/500000 | 33/125 | 18600/174953 | 33/125 | 53157/500000 | 33/125 | `(252211/500000, -93/1000); (11603/50000, -93/1000); (174953/200000, -93/1000); (602403/1000000, -93/1000)` |
| 57 | 82 | c | 156473/250000 | 199247/200000 | 156473/250000 | 15269689/15333100 | 156473/250000 | 199173/200000 | `(-211179/500000, 36578808681/100000000000); (-8271/31250, 6553389/25000000); (-211179/500000, 164679/500000); (-8271/31250, 21459/125000); (-77101/100000, 71444008681/100000000000); (-153331/250000, 15269689/25000000); (-77101/100000, 67801/100000); (-153331/250000, 130081/250000)` |
| 58 | 90 | p | 193347/500000 | 696739/1000000 | 193347/500000 | 135271698669/194344400000 | 193347/500000 | 348021/500000 | `(-136013/250000, 30714877659/250000000000); (-136013/250000, 50091381759/200000000000); (-485861/500000, 97633685569/250000000000); (-485861/500000, 135271698669/200000000000); (-136013/250000, -16671405661/250000000000); (-136013/250000, -10226169561/200000000000); (-485861/500000, 50247402249/250000000000); (-485861/500000, 74954147349/200000000000)` |
| 59 | 90 | q | 199169/1000000 | 502009/1000000 | 199169/1000000 | 83157477077/165977500000 | 199169/1000000 | 501017/1000000 | `(-156473/250000, 4642018787/125000000000); (-199173/200000, 59605175223/250000000000); (-156473/250000, 34858489739/250000000000); (-199173/200000, 249472431231/500000000000); (-156473/250000, -655826239/5000000000); (-199173/200000, 17529825699/250000000000); (-156473/250000, -1611662983/10000000000); (-199173/200000, 99172302603/500000000000)` |
| 60 | 105 | j | 99843/250000 | 361371/500000 | 71398301377/178737200000 | 361371/500000 | 399459/1000000 | 361371/500000 | `(446843/500000, -129287388517/200000000000); (92/125, -125457037891/200000000000); (446843/500000, -37592920021/50000000000); (92/125, -34489186483/50000000000); (446843/500000, -71398301377/200000000000); (92/125, -67567950751/200000000000); (446843/500000, -27604681201/50000000000); (92/125, -24500947663/50000000000)` |
| 61 | 105 | k | 493601/1000000 | 823061/1000000 | 217091613059/439272500000 | 823061/1000000 | 494207/1000000 | 823061/1000000 | `(175709/200000, -90387089657/125000000000); (175709/200000, -95866757/125000000); (30317/50000, -347078757443/500000000000); (30317/50000, -10860499/15625000); (175709/200000, -217091613059/500000000000); (175709/200000, -66124721/125000000); (30317/50000, -101311005937/250000000000); (30317/50000, -14285489/31250000)` |
| 62 | 113 | r | 273337/500000 | 879519/1000000 | 273337/500000 | 67801/77101 | 273337/500000 | 879379/1000000 | `(-211179/500000, 18401052489/200000000000); (-8271/31250, -2329452873/200000000000); (-211179/500000, 164679/500000); (-8271/31250, 21459/125000); (-77101/100000, 88131452489/200000000000); (-153331/250000, 67400947127/200000000000); (-77101/100000, 67801/100000); (-153331/250000, 130081/250000); (-211179/500000, 2312308681/100000000000); (-8271/31250, -503309/6250000); (-77101/100000, 37177508681/100000000000); (-153331/250000, 837883/3125000)` |
| 63 | 118 | h | 136013/250000 | 485861/500000 | 136013/250000 | 23592606977/24285950000 | 136013/250000 | 971451/1000000 | `(-425219/1000000, 71326752529/200000000000); (-76507/500000, 6957356977/50000000000); (-189481/250000, 137867752529/200000000000); (-485719/1000000, 23592606977/50000000000); (-425219/1000000, 332219/1000000); (-76507/500000, 30007/500000); (-189481/250000, 166231/250000); (-485719/1000000, 392719/1000000)` |
| 64 | 123 | v | 16521/31250 | 219331/250000 | 16521/31250 | 166231/189481 | 16521/31250 | 877297/1000000 | `(-425219/1000000, 5612423457/25000000000); (-76507/500000, 280412607/40000000000); (-425219/1000000, 31122952529/200000000000); (-76507/500000, -3093593023/50000000000); (-189481/250000, 13930048457/25000000000); (-485719/1000000, 13588612607/40000000000); (-189481/250000, 97663952529/200000000000); (-485719/1000000, 13541656977/50000000000); (-425219/1000000, 332219/1000000); (-76507/500000, 30007/500000); (-189481/250000, 166231/250000); (-485719/1000000, 392719/1000000)` |
| 65 | 138 | b | 12147/100000 | 49229/125000 | 12147/100000 | 19683/50000 | 12147/100000 | 19683/50000 | `(-1/1, 24291/200000); (-1/1, 19683/50000)` |
| 66 | 138 | f | 24291/200000 | 19683/50000 | 12147/100000 | 19683/50000 | 12147/100000 | 19683/50000 | `(1/1, -12147/100000); (1/1, -19683/50000)` |
| 67 | 141 | h | 136013/250000 | 971451/1000000 | 180668/331955 | 971451/1000000 | 272127/500000 | 971451/1000000 | `(156473/250000, -135501/250000); (199173/200000, -135501/250000)` |
| 68 | 144 | f | 12147/100000 | 19683/50000 | 12147/100000 | 175841/446843 | 12147/100000 | 393519/1000000 | `(-446843/500000, 175841/500000); (-92/125, 48499/250000)` |
| 69 | 169 | b | 12147/100000 | 19683/50000 | 2794967/23000000 | 19683/50000 | 1519/12500 | 19683/50000 | `(692667/1000000, -65868975091/250000000000); (534981/1000000, -22159133/125000000); (692667/1000000, -114052350497/500000000000); (534981/1000000, -2794967/31250000); (446843/500000, -65868975091/250000000000); (92/125, -22159133/125000000); (446843/500000, -114052350497/500000000000); (92/125, -2794967/31250000)` |
| 70 | 214 | p | 193347/500000 | 348021/500000 | 284826980051/736000000000 | 348021/500000 | 386993/1000000 | 348021/500000 | `(692667/1000000, -39259941427/100000000000); (534981/1000000, -153198288953/500000000000); (692667/1000000, -278805933911/500000000000); (534981/1000000, -235704515729/500000000000); (692667/1000000, -84698547409/200000000000); (534981/1000000, -284826980051/1000000000000); (692667/1000000, -688931529437/1000000000000); (534981/1000000, -550265772443/1000000000000); (446843/500000, -39259941427/100000000000); (92/125, -153198288953/500000000000); (446843/500000, -278805933911/500000000000); (92/125, -235704515729/500000000000); (446843/500000, -84698547409/200000000000); (92/125, -284826980051/1000000000000); (446843/500000, -688931529437/1000000000000); (92/125, -550265772443/1000000000000)` |
| 71 | 313 | u | 131467/200000 | 1/1 | 58759830501/89368600000 | 1/1 | 657499/1000000 | 1/1 | `(446843/500000, -44693791313/50000000000); (92/125, -2733505337/3125000000); (446843/500000, -504388948901/500000000000); (92/125, -29585170649/31250000000); (446843/500000, -58759830501/100000000000); (92/125, -56844418659/100000000000); (446843/500000, -797343459177/1000000000000); (92/125, -735291022143/1000000000000)` |
| 72 | 313 | v | 16521/31250 | 877297/1000000 | 23232201921/43926500000 | 877297/1000000 | 66111/125000 | 877297/1000000 | `(87853/100000, -385366193553/500000000000); (87853/100000, -53453541/62500000); (606481/1000000, -18545244243/25000000000); (606481/1000000, -19585893/25000000); (87853/100000, -23232201921/50000000000); (87853/100000, -7539699/12500000); (606481/1000000, -217860710517/500000000000); (606481/1000000, -66419373/125000000)` |
| 73 | 315 | r | 273337/500000 | 879379/1000000 | 24432851921/44684300000 | 879379/1000000 | 136697/250000 | 879379/1000000 | `(446843/500000, -66525826049/100000000000); (92/125, -64610414207/100000000000); (446843/500000, -853697625173/1000000000000); (92/125, -791645188139/1000000000000); (446843/500000, -24432851921/50000000000); (92/125, -11737573/25000000); (446843/500000, -365891710517/500000000000); (92/125, -83716373/125000000)` |
| 74 | 363 | j | 399459/1000000 | 361371/500000 | 399459/1000000 | 108323432907/149953000000 | 399459/1000000 | 722383/1000000 | `(-149953/250000, 86621821263/500000000000); (-149953/250000, 66858435613/250000000000); (-74491/250000, 4098389151/500000000000); (-74491/250000, 25596719557/250000000000); (-149953/250000, 4240166031/15625000000); (-149953/250000, 36556072591/100000000000); (-74491/250000, 741479199/125000000000); (-74491/250000, 50060966759/500000000000); (-800831/1000000, 251036588393/1000000000000); (-800831/1000000, 1629405637/4000000000); (-498983/1000000, 85989724169/1000000000000); (-498983/1000000, 121152272513/500000000000); (-800831/1000000, 349163571851/1000000000000); (-800831/1000000, 126369598177/250000000000); (-498983/1000000, 83724779459/1000000000000); (-498983/1000000, 60009900079/250000000000); (-149953/250000, 1764006777/7812500000); (-149953/250000, 13646935471/62500000000); (-74491/250000, 1898312601/31250000000); (-74491/250000, 3331506457/62500000000); (-149953/250000, 108323432907/250000000000); (-149953/250000, 106462957927/250000000000); (-74491/250000, 41963734809/250000000000); (-74491/250000, 40103259829/250000000000); (-800831/1000000, 303585813323/1000000000000); (-800831/1000000, 179134317167/500000000000); (-498983/1000000, 138538949099/1000000000000); (-498983/1000000, 19322177011/100000000000); (-800831/1000000, 102217335499/200000000000); (-800831/1000000, 282884749253/500000000000); (-498983/1000000, 245647885103/1000000000000); (-498983/1000000, 150165353057/500000000000)` |
| 75 | 0 | a | 53157/500000 | 33/125 | 18600/174869 | 33/125 | 21273/200000 | 33/125 | `(126093/250000, -93/1000); (29029/125000, -93/1000); (174869/200000, -93/1000); (120441/200000, -93/1000)` |
| 76 | 22 | c | 156473/250000 | 199173/200000 | 57586743/92000000 | 199173/200000 | 312971/500000 | 199173/200000 | `(86577/125000, -31734544719/50000000000); (534981/1000000, -34281123/62500000); (86577/125000, -119862970533/200000000000); (534981/1000000, -57586743/125000000); (178727/200000, -31734544719/50000000000); (92/125, -34281123/62500000); (178727/200000, -119862970533/200000000000); (92/125, -57586743/125000000)` |
| 77 | 26 | q | 199169/1000000 | 501017/1000000 | 99664750929/500000000000 | 501017/1000000 | 199329/1000000 | 501017/1000000 | `(1/1, -199345263357/1000000000000); (1/1, -147988310901/500000000000); (1/1, -52073728311/200000000000); (1/1, -357/1000); (1/1, -99664750929/500000000000); (1/1, -61810980297/250000000000); (1/1, -30908558067/100000000000)` |
| 78 | 29 | w | 798981/1000000 | 1/1 | 799170151671/1000000000000 | 1/1 | 79917/100000 | 1/1 | `(1/1, -199796778453/250000000000); (1/1, -108828648429/125000000000); (1/1, -44270396319/50000000000); (1/1, -19137/20000); (1/1, -799170151671/1000000000000); (1/1, -409092121503/500000000000); (1/1, -187567181733/200000000000)` |
| 79 | 46 | e | 53157/500000 | 33/125 | 18600/174869 | 33/125 | 21273/200000 | 33/125 | `(252211/500000, -93/1000); (116141/500000, -93/1000); (174869/200000, -93/1000); (120441/200000, -93/1000)` |
| 80 | 82 | c | 312971/500000 | 199173/200000 | 312971/500000 | 76339658/76662125 | 312971/500000 | 497897/500000 | `(-422523/1000000, 73190623773/200000000000); (-33111/125000, 32788533/125000000); (-422523/1000000, 329523/1000000); (-33111/125000, 10743/62500); (-192733/250000, 142872423773/200000000000); (-613297/1000000, 38169829/62500000); (-192733/250000, 169483/250000); (-613297/1000000, 520297/1000000)` |
| 81 | 90 | p | 386993/1000000 | 348021/500000 | 386993/1000000 | 18774290413/26984750000 | 386993/1000000 | 347869/500000 | `(-272127/500000, 2458060887/20000000000); (-272127/500000, 5009484909/20000000000); (-971451/1000000, 97575897231/250000000000); (-971451/1000000, 168968613717/250000000000); (-272127/500000, -32968072873/500000000000); (-272127/500000, -24972427411/500000000000); (-971451/1000000, 50366099707/250000000000); (-971451/1000000, 93863838649/250000000000)` |
| 82 | 90 | q | 199329/1000000 | 501017/1000000 | 199329/1000000 | 498420340251/995794000000 | 199329/1000000 | 250263/500000 | `(-312971/500000, 18524474523/500000000000); (-497897/500000, 119171189727/500000000000); (-312971/500000, 139127244999/1000000000000); (-497897/500000, 498420340251/1000000000000); (-312971/500000, -16373344023/125000000000); (-497897/500000, 4394167389/62500000000); (-312971/500000, -40200848499/250000000000); (-497897/500000, 24811212657/125000000000)` |
| 83 | 105 | j | 399459/1000000 | 722383/1000000 | 4462450789/11170437500 | 722383/1000000 | 399487/1000000 | 722383/1000000 | `(178727/200000, -32295208387/50000000000); (92/125, -62675624429/100000000000); (178727/200000, -375708097999/500000000000); (92/125, -689383828433/1000000000000); (178727/200000, -4462450789/12500000000); (92/125, -33784813967/100000000000); (178727/200000, -68996561653/125000000000); (92/125, -489940125659/1000000000000)` |
| 84 | 105 | k | 494207/1000000 | 823061/1000000 | 86906622249/175706000000 | 823061/1000000 | 494613/1000000 | 823061/1000000 | `(87853/100000, -144616855641/200000000000); (87853/100000, -47931843/62500000); (606481/1000000, -8676847329/12500000000); (606481/1000000, -86886069/125000000); (87853/100000, -86906622249/200000000000); (87853/100000, -33078627/62500000); (606481/1000000, -2534978871/6250000000); (606481/1000000, -57179637/125000000)` |
| 85 | 113 | r | 136697/250000 | 879379/1000000 | 136697/250000 | 169483/192733 | 136697/250000 | 879367/1000000 | `(-422523/1000000, 18447318939/200000000000); (-33111/125000, -1140826017/100000000000); (-422523/1000000, 329523/1000000); (-33111/125000, 10743/62500); (-192733/250000, 88129118939/200000000000); (-613297/1000000, 33700073983/100000000000); (-192733/250000, 169483/250000); (-613297/1000000, 520297/1000000); (-422523/1000000, 4690423773/200000000000); (-33111/125000, -2506023/31250000); (-192733/250000, 74372223773/200000000000); (-613297/1000000, 33527033/125000000)` |
| 86 | 118 | h | 272127/500000 | 971451/1000000 | 272127/500000 | 47187842077/48584800000 | 272127/500000 | 60703/62500 | `(-212659/500000, 3567128201/10000000000); (-153269/1000000, 13929942077/100000000000); (-757897/1000000, 6892918201/10000000000); (-60731/125000, 47187842077/100000000000); (-212659/500000, 166159/500000); (-153269/1000000, 60269/1000000); (-757897/1000000, 664897/1000000); (-60731/125000, 24553/62500)` |
| 87 | 123 | v | 66111/125000 | 877297/1000000 | 66111/125000 | 664897/757897 | 66111/125000 | 877293/1000000 | `(-212659/500000, 22466729593/100000000000); (-153269/1000000, 36269483/5000000000); (-212659/500000, 1558828201/10000000000); (-153269/1000000, -6153057923/100000000000); (-757897/1000000, 55724629593/100000000000); (-60731/125000, 1699164483/5000000000); (-757897/1000000, 4884618201/10000000000); (-60731/125000, 27104842077/100000000000); (-212659/500000, 166159/500000); (-153269/1000000, 60269/1000000); (-757897/1000000, 664897/1000000); (-60731/125000, 24553/62500)` |
| 88 | 138 | b | 1519/12500 | 19683/50000 | 1519/12500 | 393519/1000000 | 1519/12500 | 393519/1000000 | `(-1/1, 12147/100000); (-1/1, 393519/1000000)` |
| 89 | 138 | f | 12147/100000 | 393519/1000000 | 1519/12500 | 393519/1000000 | 1519/12500 | 393519/1000000 | `(1/1, -1519/12500); (1/1, -393519/1000000)` |
| 90 | 141 | h | 272127/500000 | 60703/62500 | 271002/497897 | 60703/62500 | 544293/1000000 | 60703/62500 | `(312971/500000, -135501/250000); (497897/500000, -135501/250000)` |
| 91 | 144 | f | 1519/12500 | 393519/1000000 | 1519/12500 | 351631/893635 | 1519/12500 | 98371/250000 | `(-178727/200000, 351631/1000000); (-92/125, 48499/250000)` |
| 92 | 169 | b | 1519/12500 | 393519/1000000 | 1397533/11500000 | 393519/1000000 | 30381/250000 | 393519/1000000 | `(138561/200000, -13171794719/50000000000); (53517/100000, -22155371/125000000); (138561/200000, -45612225809/200000000000); (53517/100000, -1397533/15625000); (178727/200000, -13171794719/50000000000); (92/125, -22155371/125000000); (178727/200000, -45612225809/200000000000); (92/125, -1397533/15625000)` |
| 93 | 214 | p | 386993/1000000 | 347869/500000 | 284968456743/736000000000 | 347869/500000 | 77437/200000 | 347869/500000 | `(138561/200000, -24541849977/62500000000); (53517/100000, -76619168313/250000000000); (138561/200000, -139340126217/250000000000); (53517/100000, -58895947311/125000000000); (138561/200000, -105896868447/250000000000); (53517/100000, -284968456743/1000000000000); (138561/200000, -688450176087/1000000000000); (53517/100000, -274915579521/500000000000); (178727/200000, -24541849977/62500000000); (92/125, -76619168313/250000000000); (178727/200000, -139340126217/250000000000); (92/125, -58895947311/125000000000); (178727/200000, -105896868447/250000000000); (92/125, -284968456743/1000000000000); (178727/200000, -688450176087/1000000000000); (92/125, -274915579521/500000000000)` |
| 94 | 313 | u | 657499/1000000 | 1/1 | 1836356783/2792609375 | 1/1 | 657577/1000000 | 1/1 | `(178727/200000, -11171262437/12500000000); (92/125, -1366476859/1562500000); (178727/200000, -252153010033/250000000000); (92/125, -29580787181/31250000000); (178727/200000, -1836356783/3125000000); (92/125, -7105979567/12500000000); (178727/200000, -3114448567/3906250000); (92/125, -183817995703/250000000000)` |
| 95 | 313 | v | 66111/125000 | 877293/1000000 | 1161708813/2196200000 | 877293/1000000 | 528963/1000000 | 877293/1000000 | `(10981/12500, -154136940561/200000000000); (10981/12500, -6681141/7812500); (151629/250000, -148351450389/200000000000); (151629/250000, -24480861/31250000); (10981/12500, -1161708813/2500000000); (10981/12500, -3769767/6250000); (151629/250000, -21787803717/50000000000); (151629/250000, -4151283/7812500)` |
| 96 | 315 | r | 136697/250000 | 879367/1000000 | 1221738813/2234087500 | 879367/1000000 | 273431/500000 | 879367/1000000 | `(178727/200000, -1662801659/2500000000); (92/125, -807456073/1250000000); (178727/200000, -42676934131/50000000000); (92/125, -19787795807/25000000000); (178727/200000, -1221738813/2500000000); (92/125, -11738493/25000000); (178727/200000, -36586603717/50000000000); (92/125, -83713153/125000000)` |
| 97 | 363 | j | 399487/1000000 | 722383/1000000 | 399487/1000000 | 433214100809/599841000000 | 399487/1000000 | 144443/200000 | `(-599841/1000000, 173374500853/1000000000000); (-599841/1000000, 133673238437/500000000000); (-74661/250000, 8661307039/1000000000000); (-74661/250000, 5131664153/50000000000); (-599841/1000000, 271557907273/1000000000000); (-599841/1000000, 182764941647/500000000000); (-74661/250000, 3347602487/500000000000); (-74661/250000, 20133436199/200000000000); (-800671/1000000, 251132864403/1000000000000); (-800671/1000000, 203535769707/500000000000); (-249737/500000, 86419670589/1000000000000); (-249737/500000, 75736983/312500000); (-800671/1000000, 349316270823/1000000000000); (-800671/1000000, 252627472917/500000000000); (-249737/500000, 21113392131/250000000000); (-249737/500000, 48078448707/200000000000); (-599841/1000000, 225820092149/1000000000000); (-599841/1000000, 109224226213/500000000000); (-74661/250000, 12221379667/200000000000); (-74661/250000, 13433814653/250000000000); (-599841/1000000, 433214100809/1000000000000); (-599841/1000000, 212921230543/500000000000); (-74661/250000, 16835139851/100000000000); (-74661/250000, 160979758787/1000000000000); (-800671/1000000, 303578455699/1000000000000); (-800671/1000000, 179086757483/500000000000); (-249737/500000, 27773052377/200000000000); (-249737/500000, 1511408759/7812500000); (-800671/1000000, 510972464359/1000000000000); (-800671/1000000, 282783761813/500000000000); (-249737/500000, 12305488103/50000000000); (-249737/500000, 300704821327/1000000000000)` |
| 98 | 0 | a | 21273/200000 | 33/125 | 9300/87427 | 33/125 | 53187/500000 | 33/125 | `(252209/500000, -93/1000); (232423/1000000, -93/1000); (87427/100000, -93/1000); (24091/40000, -93/1000)` |
| 99 | 22 | c | 312971/500000 | 497897/500000 | 57587139/92000000 | 497897/500000 | 625947/1000000 | 497897/500000 | `(173199/250000, -158669525403/250000000000); (53517/100000, -17139951/31250000); (173199/250000, -299654107371/500000000000); (53517/100000, -57587139/125000000); (446813/500000, -158669525403/250000000000); (92/125, -17139951/31250000); (446813/500000, -299654107371/500000000000); (92/125, -57587139/125000000)` |
| 100 | 26 | q | 199329/1000000 | 250263/500000 | 99683869179/500000000000 | 250263/500000 | 199367/1000000 | 250263/500000 | `(1/1, -39874103067/200000000000); (1/1, -11838643701/40000000000); (1/1, -26040442281/100000000000); (1/1, -357/1000); (1/1, -99683869179/500000000000); (1/1, -24732734037/100000000000); (1/1, -77260099497/250000000000)` |
| 101 | 29 | w | 79917/100000 | 1/1 | 799216085697/1000000000000 | 1/1 | 49951/62500 | 1/1 | `(1/1, -399609539121/500000000000); (1/1, -87064540863/100000000000); (1/1, -221355917403/250000000000); (1/1, -19137/20000); (1/1, -799216085697/1000000000000); (1/1, -163646196591/200000000000); (1/1, -468917551371/500000000000)` |
| 102 | 46 | e | 21273/200000 | 33/125 | 9300/87427 | 33/125 | 53187/500000 | 33/125 | `(504423/1000000, -93/1000); (58107/250000, -93/1000); (87427/100000, -93/1000); (24091/40000, -93/1000)` |
| 103 | 82 | c | 625947/1000000 | 497897/500000 | 625947/1000000 | 25445528/25553875 | 625947/1000000 | 995761/1000000 | `(-422589/1000000, 183006952101/500000000000); (-264963/1000000, 16397667/62500000); (-422589/1000000, 329589/1000000); (-264963/1000000, 171963/1000000); (-770919/1000000, 357171952101/500000000000); (-613293/1000000, 9542073/15625000); (-770919/1000000, 677919/1000000); (-613293/1000000, 520293/1000000)` |
| 104 | 90 | p | 77437/200000 | 347869/500000 | 77437/200000 | 675608996441/971248000000 | 77437/200000 | 69561/100000 | `(-544293/1000000, 61452697461/500000000000); (-544293/1000000, 125231929343/500000000000); (-60703/62500, 390156596307/1000000000000); (-60703/62500, 675608996441/1000000000000); (-544293/1000000, -65604177651/1000000000000); (-544293/1000000, -49418528313/1000000000000); (-60703/62500, 100823511867/500000000000); (-60703/62500, 187863304721/500000000000)` |
| 105 | 90 | q | 199367/1000000 | 250263/500000 | 199367/1000000 | 7782472232/15558765625 | 199367/1000000 | 500199/1000000 | `(-625947/1000000, 18478242633/500000000000); (-995761/1000000, 3722557137/15625000000); (-625947/1000000, 4340534843/31250000000); (-995761/1000000, 972809029/1953125000); (-625947/1000000, -130917083259/1000000000000); (-995761/1000000, 70370088243/1000000000000); (-625947/1000000, -10041253089/62500000000); (-995761/1000000, 12407566153/62500000000)` |
| 106 | 105 | j | 399487/1000000 | 144443/200000 | 4462885053/11170325000 | 144443/200000 | 39953/100000 | 144443/200000 | `(446813/500000, -8069572541/12500000000); (92/125, -7830138647/12500000000); (446813/500000, -187788208669/250000000000); (92/125, -172282381423/250000000000); (446813/500000, -4462885053/12500000000); (92/125, -4223451159/12500000000); (446813/500000, -137985966877/250000000000); (92/125, -122480139631/250000000000)` |
| 107 | 105 | k | 494613/1000000 | 823061/1000000 | 43468332993/87848000000 | 823061/1000000 | 494813/1000000 | 823061/1000000 | `(10981/12500, -36152151787/50000000000); (10981/12500, -599113/781250); (151629/250000, -173528284301/250000000000); (151629/250000, -21720817/31250000); (10981/12500, -43468332993/100000000000); (10981/12500, -3308553/6250000); (151629/250000, -202876715697/500000000000); (151629/250000, -7149531/15625000)` |
| 108 | 113 | r | 273431/500000 | 879367/1000000 | 273431/500000 | 225973/256973 | 273431/500000 | 175873/200000 | `(-422589/1000000, 46171981917/500000000000); (-264963/1000000, -706704273/62500000000); (-422589/1000000, 329589/1000000); (-264963/1000000, 171963/1000000); (-770919/1000000, 220336981917/500000000000); (-613293/1000000, 21063920727/62500000000); (-770919/1000000, 677919/1000000); (-613293/1000000, 520293/1000000); (-422589/1000000, 11795452101/500000000000); (-264963/1000000, -10007541/125000000); (-770919/1000000, 185960452101/500000000000); (-613293/1000000, 33533709/125000000)` |
| 109 | 118 | h | 544293/1000000 | 60703/62500 | 544293/1000000 | 7373223304/7591890625 | 544293/1000000 | 485599/500000 | `(-212671/500000, 557408237/1562500000); (-76689/500000, 2177863929/15625000000); (-151569/200000, 2153888349/3125000000); (-485881/1000000, 921652913/1953125000); (-212671/500000, 166171/500000); (-76689/500000, 30189/500000); (-151569/200000, 132969/200000); (-485881/1000000, 392881/1000000)` |
| 110 | 123 | v | 528963/1000000 | 877293/1000000 | 528963/1000000 | 44323/50523 | 528963/1000000 | 219321/250000 | `(-212671/500000, 14044395707/62500000000); (-76689/500000, 459521943/62500000000); (-212671/500000, 243683237/1562500000); (-76689/500000, -959386071/15625000000); (-151569/200000, 34825833207/62500000000); (-485881/1000000, 21240959443/62500000000); (-151569/200000, 1526438349/3125000000); (-485881/1000000, 529496663/1953125000); (-212671/500000, 166171/500000); (-76689/500000, 30189/500000); (-151569/200000, 132969/200000); (-485881/1000000, 392881/1000000)` |
| 111 | 138 | b | 30381/250000 | 393519/1000000 | 30381/250000 | 98371/250000 | 30381/250000 | 98371/250000 | `(-1/1, 1519/12500); (-1/1, 98371/250000)` |
| 112 | 138 | f | 1519/12500 | 98371/250000 | 30381/250000 | 98371/250000 | 30381/250000 | 98371/250000 | `(1/1, -30381/250000); (1/1, -98371/250000)` |
| 113 | 141 | h | 544293/1000000 | 485599/500000 | 542004/995761 | 485599/500000 | 544311/1000000 | 485599/500000 | `(625947/1000000, -135501/250000); (995761/1000000, -135501/250000)` |
| 114 | 144 | f | 30381/250000 | 98371/250000 | 30381/250000 | 175811/446813 | 30381/250000 | 196739/500000 | `(-446813/500000, 175811/500000); (-92/125, 48499/250000)` |
| 115 | 169 | b | 30381/250000 | 98371/250000 | 1118033/9200000 | 98371/250000 | 4861/40000 | 98371/250000 | `(346421/500000, -65855775403/250000000000); (33451/62500, -22152929/125000000); (346421/500000, -22805342749/100000000000); (33451/62500, -1118033/12500000); (446813/500000, -65855775403/250000000000); (92/125, -22152929/125000000); (446813/500000, -22805342749/100000000000); (92/125, -1118033/12500000)` |
| 116 | 214 | p | 77437/200000 | 69561/100000 | 57000400391/147200000000 | 69561/100000 | 38723/100000 | 69561/100000 | `(346421/500000, -196346168983/500000000000); (33451/62500, -153246334177/500000000000); (346421/500000, -11144118543/20000000000); (33451/62500, -235503128769/500000000000); (346421/500000, -84722557889/200000000000); (33451/62500, -57000400391/200000000000); (346421/500000, -5505231369/8000000000); (33451/62500, -109908626727/200000000000); (446813/500000, -196346168983/500000000000); (92/125, -153246334177/500000000000); (446813/500000, -11144118543/20000000000); (92/125, -235503128769/500000000000); (446813/500000, -84722557889/200000000000); (92/125, -57000400391/200000000000); (446813/500000, -5505231369/8000000000); (92/125, -109908626727/200000000000)` |
| 117 | 313 | u | 657577/1000000 | 1/1 | 14691101671/22340650000 | 1/1 | 131519/200000 | 1/1 | `(446813/500000, -223408926409/250000000000); (92/125, -218620090903/250000000000); (446813/500000, -504280237271/500000000000); (92/125, -473269055657/500000000000); (446813/500000, -14691101671/25000000000); (92/125, -35530545301/62500000000); (446813/500000, -39864806249/50000000000); (92/125, -91909220219/125000000000)` |
| 118 | 313 | v | 528963/1000000 | 219321/250000 | 58086375753/109809500000 | 219321/250000 | 264487/500000 | 219321/250000 | `(219619/250000, -385336508277/500000000000); (219619/250000, -26724117/31250000); (303261/500000, -370872090879/500000000000); (303261/500000, -48960993/62500000); (219619/250000, -58086375753/125000000000); (219619/250000, -9424401/15625000); (303261/500000, -108940542807/250000000000); (303261/500000, -33210363/62500000)` |
| 119 | 315 | r | 273431/500000 | 175873/200000 | 61087250753/111703250000 | 175873/200000 | 54687/100000 | 175873/200000 | `(446813/500000, -83135241401/125000000000); (92/125, -2523150739/3906250000); (446813/500000, -213375771119/250000000000); (92/125, -24733772539/31250000000); (446813/500000, -61087250753/125000000000); (92/125, -58692833/125000000); (446813/500000, -182930792807/250000000000); (92/125, -83712601/125000000)` |
| 120 | 363 | j | 39953/100000 | 144443/200000 | 39953/100000 | 5414952187/7498112500 | 39953/100000 | 11284/15625 | `(-599849/1000000, 17341952771/100000000000); (-599849/1000000, 5345826497/20000000000); (-299017/1000000, 890353187/100000000000); (-299017/1000000, 10277532901/100000000000); (-599849/1000000, 6791346137/25000000000); (-599849/1000000, 18276282131/50000000000); (-299017/1000000, 35563569/5000000000); (-299017/1000000, 5049225547/50000000000); (-800633/1000000, 25116911603/100000000000); (-800633/1000000, 40695868309/100000000000); (-499801/1000000, 8665312019/100000000000); (-499801/1000000, 969770749/4000000000); (-800633/1000000, 1747017169/5000000000); (-800633/1000000, 25259650043/50000000000); (-499801/1000000, 2121557553/25000000000); (-499801/1000000, 12032593459/50000000000); (-599849/1000000, 22582103843/100000000000); (-599849/1000000, 21846771733/100000000000); (-299017/1000000, 6130504259/100000000000); (-299017/1000000, 5395172149/100000000000); (-599849/1000000, 5414952187/12500000000); (-599849/1000000, 21292142693/50000000000); (-299017/1000000, 2108188041/12500000000); (-299017/1000000, 8065086109/50000000000); (-800633/1000000, 1214282507/4000000000); (-800633/1000000, 35813507557/100000000000); (-499801/1000000, 13905463091/100000000000); (-499801/1000000, 19361907973/100000000000); (-800633/1000000, 6386822041/12500000000); (-800633/1000000, 5655102121/10000000000); (-499801/1000000, 616011579/2500000000); (-499801/1000000, 15048454021/50000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 128:0 | ABC | lo | 93/1000 | occupants none |
| 128:8 | ABP | lo | 93/1000 | occupants none |
| 128:12 | ABR | lo | 64319/200000 | earlier 127:2197; ABR; lo; 64319/200000 |
| 128:13 | ABR | hi | 65219573/125000000 | vertex maximum 65219573/125000000 |
| 128:16 | ACE | lo | 93/1000 | occupants none |
| 128:18 | ACF | lo | 364449/1000000 | earlier 127:2281; ACF; lo; 364449/1000000 |
| 128:21 | ACH | hi | 107644751383/125000000000 | vertex maximum 107644751383/125000000000 |
| 128:25 | ACQ | hi | 218671072281/250000000000 | vertex maximum 218671072281/250000000000 |
| 128:26 | ACR | lo | 13857/20000 | occupants P, S |
| 128:27 | ACR | hi | 122922436487/125000000000 | vertex maximum 122922436487/125000000000 |
| 128:30 | AEF | lo | 390561/1000000 | earlier 127:2282; AEF; lo; 390561/1000000 |
| 128:31 | AEF | hi | 446813/500000 | vertex maximum 446813/500000 |
| 128:32 | AEH | lo | 344059/1000000 | earlier 127:2202; AEH; lo; 344059/1000000 |
| 128:33 | AEH | hi | 108103/125000 | vertex maximum 108103/125000 |
| 128:34 | AEP | lo | 93/1000 | occupants none |
| 128:36 | AEQ | lo | 356737/1000000 | earlier 127:2257; AEQ; lo; 356737/1000000 |
| 128:37 | AEQ | hi | 77091/100000 | vertex maximum 77091/100000 |
| 128:38 | AER | lo | 13857/20000 | occupants P, S |
| 128:39 | AER | hi | 446813/500000 | vertex maximum 446813/500000 |
| 128:40 | AES | lo | 21849/62500 | earlier 127:2141; AES; lo; 21849/62500 |
| 128:42 | AFH | lo | 93/1000 | occupants none |
| 128:47 | AFQ | hi | 1052837447/1250000000 | vertex maximum 1052837447/1250000000 |
| 128:48 | AFR | lo | 141067/1000000 | earlier 127:2274; AFR; lo; 141067/1000000 |
| 128:49 | AFR | hi | 350813248141/500000000000 | vertex maximum 350813248141/500000000000 |
| 128:50 | AFS | lo | 21357/200000 | earlier 127:2163; AFS; lo; 21357/200000 |
| 128:60 | APQ | lo | 102383/1000000 | earlier 127:2243; APQ; lo; 102383/1000000 |
| 128:62 | APR | lo | 170919/500000 | earlier 127:2122; APR; lo; 170919/500000 |
| 128:64 | APS | lo | 135577/1000000 | earlier 127:2123; APS; lo; 135577/1000000 |
| 128:66 | AQR | lo | 279/1000 | occupants S |
| 128:68 | AQS | lo | 93/1000 | occupants none |
| 128:70 | ARS | lo | 93/1000 | occupants none |
| 128:72 | BCE | lo | 93/1000 | occupants none |
| 128:75 | BCF | hi | 218559/250000 | vertex maximum 218559/250000 |
| 128:82 | BCR | lo | 372547/1000000 | earlier 127:2208; BCR; lo; 372547/1000000 |
| 128:84 | BCS | lo | 13063/40000 | earlier 127:2209; BCS; lo; 13063/40000 |
| 128:88 | BEH | lo | 309649/1000000 | earlier 127:2241; BEH; lo; 309649/1000000 |
| 128:90 | BEP | lo | 93/1000 | occupants none |
| 128:92 | BEQ | lo | 173677/500000 | earlier 127:2071; BEQ; lo; 173677/500000 |
| 128:93 | BEQ | hi | 17841203793/25000000000 | vertex maximum 17841203793/25000000000 |
| 128:94 | BER | lo | 198663/500000 | earlier 127:2212; BER; lo; 198663/500000 |
| 128:95 | BER | hi | 83322935097/100000000000 | vertex maximum 83322935097/100000000000 |
| 128:98 | BFH | lo | 93/1000 | occupants none |
| 128:100 | BFP | lo | 107973/1000000 | earlier 127:2221; BFP; lo; 107973/1000000 |
| 128:104 | BFR | lo | 288241/1000000 | earlier 127:2270; BFR; lo; 288241/1000000 |
| 128:105 | BFR | hi | 757841/1000000 | vertex maximum 757841/1000000 |
| 128:106 | BFS | lo | 102241/1000000 | earlier 127:2262; BFS; lo; 102241/1000000 |
| 128:112 | BHR | lo | 85641/250000 | earlier 127:2151; BHR; lo; 85641/250000 |
| 128:116 | BPQ | lo | 93/1000 | occupants none |
| 128:118 | BPR | lo | 19151/200000 | earlier 127:2160; BPR; lo; 19151/200000 |
| 128:126 | BRS | lo | 93/1000 | occupants none |
| 128:128 | CEF | lo | 54101/500000 | earlier 127:2245; CEF; lo; 54101/500000 |
| 128:132 | CEP | lo | 93/1000 | occupants none |
| 128:134 | CEQ | lo | 93/1000 | occupants none |
| 128:138 | CES | lo | 95883/1000000 | earlier 127:2253; CES; lo; 95883/1000000 |
| 128:142 | CFP | lo | 93/1000 | occupants none |
| 128:146 | CFR | lo | 375689/1000000 | earlier 127:1904; CFR; lo; 375689/1000000 |
| 128:148 | CFS | lo | 93/1000 | occupants none |
| 128:150 | CHP | lo | 93/1000 | occupants none |
| 128:154 | CHR | lo | 85131/200000 | earlier 127:2285; CHR; lo; 85131/200000 |
| 128:161 | CPR | hi | 235651/500000 | earlier 127:2185; CPR; hi; 235651/500000 |
| 128:162 | CPS | lo | 100081/1000000 | earlier 127:1523; CPS; lo; 100081/1000000 |
| 128:165 | CQR | hi | 110856496717/250000000000 | vertex maximum 110856496717/250000000000 |
| 128:174 | EFQ | lo | 92811/250000 | earlier 127:2272; EFQ; lo; 92811/250000 |
| 128:175 | EFQ | hi | 16930648329/25000000000 | vertex maximum 16930648329/25000000000 |
| 128:176 | EFR | lo | 380101/1000000 | earlier 127:1907; EFR; lo; 380101/1000000 |
| 128:177 | EFR | hi | 338613210733/500000000000 | vertex maximum 338613210733/500000000000 |
| 128:178 | EFS | lo | 93/1000 | occupants none |
| 128:180 | EHP | lo | 4237/40000 | earlier 127:2094; EHP; lo; 4237/40000 |
| 128:185 | EHR | hi | 168159094001/200000000000 | vertex maximum 168159094001/200000000000 |
| 128:186 | EHS | lo | 93/1000 | occupants none |
| 128:194 | EQR | lo | 93/1000 | occupants none |
| 128:195 | EQR | hi | 3493224483/10000000000 | vertex maximum 3493224483/10000000000 |
| 128:204 | FHR | lo | 93/1000 | occupants none |
| 128:206 | FHS | lo | 1467/15625 | earlier 127:1962; FHS; lo; 1467/15625 |
| 128:208 | FPQ | lo | 156507/500000 | earlier 127:2076; FPQ; lo; 156507/500000 |
| 128:211 | FPR | hi | 606752513353/1000000000000 | vertex maximum 606752513353/1000000000000 |
| 128:216 | FQS | lo | 93/1000 | occupants none |
| 128:218 | FRS | lo | 93/1000 | occupants none |
| 128:222 | HPR | lo | 65647/200000 | earlier 127:2215; HPR; lo; 65647/200000 |
| 128:228 | HRS | lo | 93/1000 | occupants none |
| 128:236 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 10 | fan | AER = AEP + EPR + APR | point P |
| 58 | plu | ABE * ACR = ABC * AER + ABR * ACE | circuit ABCER |
| 141 | plu | ABR * CRS = ACR * BRS + ARS * BCR | circuit RABCS |
| 213 | plu | ABS * AER = ABE * ARS + ABR * AES | circuit ABERS |
| 216 | plu | ABR * ERS = AER * BRS + ARS * BER | circuit RABES |
| 217 | plu | ABS * ERS = AES * BRS + ARS * BES | circuit SABER |
| 297 | plu | APQ * BPR = ABP * PQR + APR * BPQ | circuit PABQR |
| 365 | plu | ACP * AER = ACE * APR + ACR * AEP | circuit ACEPR |
| 377 | plu | AEQ * CER = ACE * EQR + AER * CEQ | circuit EACQR |
| 402 | plu | AFR * CFH = ACF * FHR + AFH * CFR | circuit FACHR |
| 478 | plu | ACS * CPR = ACP * CRS + ACR * CPS | circuit CAPRS |
| 497 | plu | AEF * AHR = AEH * AFR + AER * AFH | circuit AEFHR |
| 499 | plu | AFR * EFH = AEF * FHR + AFH * EFR | circuit FAEHR |
| 506 | plu | AFS * EHS = AES * FHS + AHS * EFS | circuit SAEFH |
| 512 | plu | AER * AFP = AEF * APR + AEP * AFR | circuit AEFPR |
| 545 | plu | AHP * EPR = AEP * HPR + APR * EHP | circuit PAEHR |
| 552 | plu | AER * AHQ = AEH * AQR + AEQ * AHR | circuit AEHQR |
| 748 | plu | BFP * CPQ = BCP * FPQ + BPQ * CFP | circuit PBCFQ |
| 783 | plu | BHP * CPR = BCP * HPR + BPR * CHP | circuit PBCHR |
| 841 | plu | BFS * EHS = BES * FHS + BHS * EFS | circuit SBEFH |
| 1006 | plu | CEF * EPQ = CEP * EFQ + CEQ * EFP | circuit ECFPQ |
| 1040 | plu | CEH * CPR = CEP * CHR + CER * CHP | circuit CEHPR |
| 1043 | plu | CPR * EHP = CEP * HPR + CHP * EPR | circuit PCEHR |
| 2151 | support | BFR * ABR >= 1023/1000 * (BFR - AFR) | pentagon RFHAB |
| 2640 | bary | outer ABR; fans BRS, ARS, ABS; target ACS; sign 1; vertices none 0; ABC -1; ACR 1 | container ABR; inner S; line AC |
| 2641 | bary | outer ABR; fans BRS, ARS, ABS; target AES; sign 1; vertices none 0; ABE -1; AER 1 | container ABR; inner S; line AE |
| 2664 | bary | outer ABR; fans BRS, ARS, ABS; target EHS; sign -1; vertices AEH 1; BEH 1; EHR -1 | container ABR; inner S; line EH |
| 2666 | bary | outer ABR; fans BRS, ARS, ABS; target EQS; sign 1; vertices AEQ 1; BEQ 1; EQR 1 | container ABR; inner S; line EQ |
| 2752 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2757 | bary | outer ACH; fans CHP, AHP, ACP; target EPS; sign 1; vertices AES 1; CES 1; EHS 1 | container ACH; inner P; line ES |
| 2927 | bary | outer ACS; fans CPS, APS, ACP; target CPR; sign 1; vertices ACR 1; none 0; CRS 1 | container ACS; inner P; line CR |
| 2933 | bary | outer ACS; fans CPS, APS, ACP; target EPR; sign 1; vertices AER 1; CER 1; ERS 1 | container ACS; inner P; line ER |
| 3028 | bary | outer AEH; fans EHP, AHP, AEP; target FPS; sign -1; vertices AFS -1; EFS -1; FHS -1 | container AEH; inner P; line FS |
| 3085 | bary | outer AER; fans EPR, APR, AEP; target AFP; sign -1; vertices none 0; AEF -1; AFR -1 | container AER; inner P; line AF |
| 3103 | bary | outer AER; fans EPR, APR, AEP; target CPQ; sign 1; vertices ACQ 1; CEQ -1; CQR 1 | container AER; inner P; line CQ |
| 3104 | bary | outer AER; fans EPR, APR, AEP; target CPR; sign 1; vertices ACR 1; CER -1; none 0 | container AER; inner P; line CR |
| 3109 | bary | outer AER; fans EPR, APR, AEP; target EPQ; sign 1; vertices AEQ 1; none 0; EQR 1 | container AER; inner P; line EQ |
| 3112 | bary | outer AER; fans EPR, APR, AEP; target FHP; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner P; line FH |
| 3157 | bary | outer AER; fans ERS, ARS, AES; target FHS; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner S; line FH |
| 3177 | bary | outer AES; fans EPS, APS, AEP; target APQ; sign -1; vertices none 0; AEQ -1; AQS 1 | container AES; inner P; line AQ |
| 3180 | bary | outer AES; fans EPS, APS, AEP; target BCP; sign 1; vertices ABC 1; BCE 1; BCS 1 | container AES; inner P; line BC |
| 3186 | bary | outer AES; fans EPS, APS, AEP; target BPR; sign -1; vertices ABR 1; BER -1; BRS 1 | container AES; inner P; line BR |
| 3212 | bary | outer AES; fans EPS, APS, AEP; target PQR; sign 1; vertices AQR 1; EQR 1; QRS 1 | container AES; inner P; line QR |
| 3228 | bary | outer AFQ; fans FQS, AQS, AFS; target BPS; sign 1; vertices ABP 1; BFP 1; BPQ 1 | container AFQ; inner S; line BP |
| 3372 | bary | outer BCF; fans CFP, BFP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EFQ 1 | container BCF; inner P; line EQ |
| 3663 | bary | outer BEQ; fans EPQ, BPQ, BEP; target APR; sign -1; vertices ABR -1; AER -1; AQR -1 | container BEQ; inner P; line AR |
| 3664 | bary | outer BEQ; fans EPQ, BPQ, BEP; target APS; sign -1; vertices ABS -1; AES -1; AQS -1 | container BEQ; inner P; line AS |
| 3699 | bary | outer BEQ; fans EPQ, BPQ, BEP; target PRS; sign 1; vertices BRS 1; ERS 1; QRS 1 | container BEQ; inner P; line RS |
| 3870 | bary | outer BFR; fans FRS, BRS, BFS; target PQS; sign 1; vertices BPQ 1; FPQ 1; PQR 1 | container BFR; inner S; line PQ |
| 4053 | bary | outer EFQ; fans FQS, EQS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHQ -1 | container EFQ; inner S; line AH |
| 4104 | bary | outer EFR; fans FRS, ERS, EFS; target BHS; sign -1; vertices BEH -1; BFH -1; BHR -1 | container EFR; inner S; line BH |
| 4111 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 4112 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 4127 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 4239 | bary | outer FPR; fans PRS, FRS, FPS; target CES; sign 1; vertices CEF 1; CEP 1; CER 1 | container FPR; inner S; line CE |
| 4336 | four | 1 * ABR + -1 * ARS + -1 * ABS + -1 * BRS = 0 | vertices ABRS |
| 4344 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 4359 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 4363 | four | 1 * AEH + -1 * AHP + -1 * AEP + -1 * EHP = 0 | vertices AEHP |
| 4367 | four | 1 * AEP + 1 * APQ + -1 * AEQ + 1 * EPQ = 0 | vertices AEPQ |
| 4368 | four | 1 * AEP + 1 * APR + -1 * AER + 1 * EPR = 0 | vertices AEPR |
| 4369 | four | 1 * AEP + 1 * APS + -1 * AES + 1 * EPS = 0 | vertices AEPS |
| 4372 | four | 1 * AER + -1 * ARS + -1 * AES + -1 * ERS = 0 | vertices AERS |
| 4408 | four | 1 * BCP + 1 * BPR + -1 * BCR + 1 * CPR = 0 | vertices BCPR |
| 4409 | four | 1 * BCP + 1 * BPS + -1 * BCS + 1 * CPS = 0 | vertices BCPS |
| 4418 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4422 | four | 1 * BEP + 1 * BPQ + -1 * BEQ + 1 * EPQ = 0 | vertices BEPQ |
| 4423 | four | 1 * BEP + 1 * BPR + -1 * BER + 1 * EPR = 0 | vertices BEPR |
| 4424 | four | 1 * BEP + 1 * BPS + -1 * BES + 1 * EPS = 0 | vertices BEPS |
| 4437 | four | -1 * BFR + 1 * BRS + 1 * BFS + 1 * FRS = 0 | vertices BFRS |
| 4442 | four | -1 * BHR + 1 * BRS + 1 * BHS + 1 * HRS = 0 | vertices BHRS |
| 4471 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 4476 | four | -1 * CHR + 1 * CRS + 1 * CHS + 1 * HRS = 0 | vertices CHRS |
| 4489 | four | -1 * EFQ + 1 * EQS + 1 * EFS + 1 * FQS = 0 | vertices EFQS |
| 4490 | four | -1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS = 0 | vertices EFRS |
| 4506 | four | 1 * FPQ + -1 * FQS + -1 * FPS + -1 * PQS = 0 | vertices FPQS |
| 4510 | four | 1 * HPR + -1 * HRS + -1 * HPS + -1 * PRS = 0 | vertices HPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 128:240 | EPR | hi | 114697/250000 | 114697/250000 | 10 | 128:39, 128:34, 128:62 |
| 128:242 | ABE | lo | 95937/1000000 | 11792923125/122922436487 | 58 | 128:0, 128:38, 128:12, 128:16, 128:27 |
| 128:243 | CRS | lo | 1899/10000 | 99081921/521756584 | 141 | 128:26, 128:126, 128:70, 128:82, 128:13 |
| 128:246 | ABS | lo | 135791/1000000 | 3033665187/22340650000 | 213 | 128:242, 128:70, 128:12, 128:40, 128:39 |
| 128:247 | ERS | lo | 194317/1000000 | 12673296/65219573 | 216 | 128:38, 128:126, 128:70, 128:94, 128:13 |
| 128:248 | ACP | lo | 673/6250 | 6014124/55851625 | 365 | 128:16, 128:62, 128:26, 128:34, 128:39 |
| 128:249 | CER | lo | 47401/500000 | 487227/5139400 | 377 | 128:16, 128:194, 128:38, 128:134, 128:37 |
| 128:251 | CFH | lo | 12263/125000 | 34416417000/350813248141 | 402 | 128:18, 128:204, 128:42, 128:146, 128:49 |
| 128:253 | AHR | lo | 63209/500000 | 112970420953/893626000000 | 497 | 128:32, 128:48, 128:38, 128:42, 128:31 |
| 128:254 | EFH | lo | 2043/20000 | 35835783000/350813248141 | 499 | 128:30, 128:204, 128:42, 128:176, 128:49 |
| 128:256 | AHP | lo | 145459/1000000 | 1334700903/9175760000 | 545 | 128:34, 128:222, 128:62, 128:180, 128:240 |
| 128:257 | AHQ | lo | 31577/200000 | 70545219533/446813000000 | 552 | 128:32, 128:66, 128:36, 128:253, 128:39 |
| 128:261 | CEH | lo | 102699/1000000 | 48402501/471302000 | 1040 | 128:132, 128:154, 128:249, 128:150, 128:161 |
| 128:262 | AFR | lo | 14123/100000 | 18059862933907/127875000000000 | 2151 | 128:104, 128:13 |
| 128:265 | ACS | hi | 7703/12500 | 5023861546479010051/8152446625000000000 | 2640 | 128:13, 128:126, 128:70, 128:246, 128:0, 128:27 |
| 128:266 | AES | hi | 557959/1000000 | 18194917008349/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:246, 128:242, 128:39 |
| 128:282 | EHS | hi | 424543/1000000 | 5537694271288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:246, 128:32, 128:88, 128:185 |
| 128:284 | EQS | lo | 92673/500000 | 3022057041/16304893250 | 2666 | 128:13, 128:126, 128:70, 128:246, 128:36, 128:92, 128:194 |
| 128:287 | EFP | lo | 67159/500000 | 289174579245469/2152895027660000 | 2752 | 128:21, 128:150, 128:256, 128:248, 128:30, 128:128, 128:254 |
| 128:288 | EPS | lo | 30299/250000 | 1630771333218/13455593922875 | 2757 | 128:21, 128:150, 128:256, 128:248, 128:40, 128:138, 128:186 |
| 128:291 | CPR | lo | 29141/200000 | 1795791057/12324800000 | 2927 | 128:265, 128:162, 128:64, 128:248, 128:26, 128:243 |
| 128:292 | EPR | lo | 209317/1000000 | 4030931299/19257500000 | 2933 | 128:265, 128:162, 128:64, 128:248, 128:38, 128:249, 128:247 |
| 128:293 | FPS | lo | 94783/1000000 | 655771137/6918592000 | 3028 | 128:33, 128:180, 128:256, 128:34, 128:50, 128:178, 128:206 |
| 128:294 | AFP | lo | 82049/500000 | 73321490559/446813000000 | 3085 | 128:39, 128:292, 128:62, 128:34, 128:30, 128:262 |
| 128:297 | CPQ | hi | 114909/250000 | 25671396151084107/55851625000000000 | 3103 | 128:39, 128:292, 128:62, 128:34, 128:25, 128:134, 128:165 |
| 128:298 | CPR | hi | 468603/1000000 | 13086118257874439/27925812500000000 | 3104 | 128:39, 128:292, 128:62, 128:34, 128:27, 128:249 |
| 128:302 | EPQ | hi | 21607/50000 | 3861712447719/8936260000000 | 3109 | 128:39, 128:292, 128:62, 128:34, 128:37, 128:195 |
| 128:303 | FHP | lo | 193/2000 | 862350357/8936260000 | 3112 | 128:39, 128:292, 128:62, 128:34, 128:42, 128:254, 128:204 |
| 128:308 | FHS | lo | 1468/15625 | 10494771/111703250 | 3157 | 128:39, 128:247, 128:70, 128:40, 128:42, 128:254, 128:204 |
| 128:311 | APQ | hi | 459463/1000000 | 25636133433/55795900000 | 3177 | 128:266, 128:288, 128:64, 128:34, 128:37, 128:68 |
| 128:313 | BCP | lo | 32983/250000 | 36806331/278979500 | 3180 | 128:266, 128:288, 128:64, 128:34, 128:0, 128:72, 128:84 |
| 128:316 | BPR | hi | 107001/250000 | 23880839375750011/55795900000000000 | 3186 | 128:266, 128:288, 128:64, 128:34, 128:12, 128:95, 128:126 |
| 128:317 | PQR | lo | 133401/1000000 | 74432643/557959000 | 3212 | 128:266, 128:288, 128:64, 128:34, 128:66, 128:194, 128:236 |
| 128:320 | BPS | lo | 94653/1000000 | 99654493821/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:50, 128:8, 128:100, 128:116 |
| 128:322 | EPQ | lo | 162047/1000000 | 1475709973/9106625000 | 3372 | 128:75, 128:142, 128:100, 128:313, 128:92, 128:134, 128:174 |
| 128:324 | APR | lo | 342603/1000000 | 1528114226843/4460300948250 | 3663 | 128:93, 128:322, 128:116, 128:90, 128:12, 128:38, 128:66 |
| 128:325 | APS | lo | 136153/1000000 | 1214571791087/8920601896500 | 3664 | 128:93, 128:322, 128:116, 128:90, 128:246, 128:40, 128:68 |
| 128:326 | PRS | lo | 106203/1000000 | 20374128793/191840901000 | 3699 | 128:93, 128:322, 128:116, 128:90, 128:126, 128:247, 128:236 |
| 128:329 | PQS | lo | 2509/20000 | 95071153641/757841000000 | 3870 | 128:105, 128:218, 128:126, 128:106, 128:116, 128:208, 128:317 |
| 128:330 | AHS | lo | 68193/500000 | 769706698199/5643549443000 | 4053 | 128:175, 128:216, 128:284, 128:178, 128:32, 128:42, 128:257 |
| 128:331 | BHS | lo | 78511/500000 | 53169933098169/338613210733000 | 4104 | 128:177, 128:218, 128:247, 128:178, 128:88, 128:98, 128:112 |
| 128:332 | CHS | lo | 28743/200000 | 6083012428218779/42326651341625000 | 4111 | 128:177, 128:218, 128:247, 128:178, 128:261, 128:251, 128:154 |
| 128:333 | CPS | lo | 100237/1000000 | 33941811098169/338613210733000 | 4112 | 128:177, 128:218, 128:247, 128:178, 128:132, 128:142, 128:291 |
| 128:335 | HPS | lo | 129617/1000000 | 87780229671469/677226421466000 | 4127 | 128:177, 128:218, 128:247, 128:178, 128:180, 128:303, 128:222 |
| 128:336 | CES | lo | 47971/500000 | 58213280713829/606752513353000 | 4239 | 128:211, 128:326, 128:218, 128:293, 128:128, 128:132, 128:249 |
| 128:337 | ABR | lo | 321791/1000000 | 321791/1000000 | 4336 | 128:70, 128:246, 128:126 |
| 128:338 | ACF | lo | 182389/500000 | 182389/500000 | 4344 | 128:294, 128:248, 128:142 |
| 128:343 | AEF | lo | 48927/125000 | 48927/125000 | 4359 | 128:294, 128:34, 128:287 |
| 128:344 | AEH | lo | 5381/15625 | 5381/15625 | 4363 | 128:256, 128:34, 128:180 |
| 128:345 | AEQ | lo | 35743/100000 | 35743/100000 | 4367 | 128:34, 128:60, 128:322 |
| 128:346 | EPR | hi | 458023/1000000 | 458023/1000000 | 4368 | 128:34, 128:324, 128:39 |
| 128:348 | AES | lo | 350349/1000000 | 350349/1000000 | 4369 | 128:34, 128:325, 128:288 |
| 128:349 | ERS | hi | 450277/1000000 | 450277/1000000 | 4372 | 128:39, 128:70, 128:348 |
| 128:353 | BCR | lo | 23337/62500 | 23337/62500 | 4408 | 128:313, 128:118, 128:291 |
| 128:355 | BCS | lo | 163411/500000 | 163411/500000 | 4409 | 128:313, 128:320, 128:333 |
| 128:357 | BEQ | lo | 348047/1000000 | 348047/1000000 | 4422 | 128:90, 128:116, 128:322 |
| 128:358 | BER | lo | 49759/125000 | 49759/125000 | 4423 | 128:90, 128:118, 128:292 |
| 128:359 | BES | lo | 308849/1000000 | 308849/1000000 | 4424 | 128:90, 128:320, 128:288 |
| 128:361 | BHR | lo | 171511/500000 | 171511/500000 | 4442 | 128:126, 128:331, 128:228 |
| 128:364 | CFR | lo | 3759/10000 | 3759/10000 | 4471 | 128:243, 128:148, 128:218 |
| 128:365 | CHR | lo | 85323/200000 | 85323/200000 | 4476 | 128:243, 128:332, 128:228 |
| 128:366 | EFQ | lo | 185673/500000 | 185673/500000 | 4489 | 128:284, 128:178, 128:216 |
| 128:367 | EFR | lo | 380317/1000000 | 380317/1000000 | 4490 | 128:247, 128:178, 128:218 |
| 128:369 | FPQ | lo | 313233/1000000 | 313233/1000000 | 4506 | 128:216, 128:293, 128:329 |
| 128:371 | HPR | lo | 16441/50000 | 16441/50000 | 4510 | 128:228, 128:335, 128:326 |
| 128:372 | ABE | lo | 23989/250000 | 11795201625/122922436487 | 58 | 128:0, 128:38, 128:337, 128:16, 128:27 |
| 128:373 | CRS | lo | 190051/1000000 | 49580253/260878292 | 141 | 128:26, 128:126, 128:70, 128:353, 128:13 |
| 128:377 | ERS | lo | 3889/20000 | 50727873/260878292 | 216 | 128:38, 128:126, 128:70, 128:358, 128:13 |
| 128:378 | ABS | lo | 2723/20000 | 30652707/225138500 | 217 | 128:348, 128:126, 128:70, 128:359, 128:349 |
| 128:379 | APQ | lo | 103429/1000000 | 1229677/11889000 | 297 | 128:8, 128:317, 128:324, 128:116, 128:316 |
| 128:380 | BPR | lo | 24087/250000 | 11067093/114865750 | 297 | 128:8, 128:317, 128:324, 128:116, 128:311 |
| 128:381 | ACP | lo | 107759/1000000 | 96297129/893626000 | 365 | 128:16, 128:324, 128:26, 128:34, 128:39 |
| 128:382 | CFH | lo | 1534/15625 | 34441527000/350813248141 | 402 | 128:338, 128:204, 128:42, 128:364, 128:49 |
| 128:383 | CPR | lo | 145931/1000000 | 89928911159/616240000000 | 478 | 128:381, 128:373, 128:26, 128:333, 128:265 |
| 128:384 | AHR | lo | 31633/250000 | 1413405029/11170325000 | 497 | 128:344, 128:262, 128:38, 128:42, 128:31 |
| 128:385 | EFH | lo | 25573/250000 | 35885584500/350813248141 | 499 | 128:343, 128:204, 128:42, 128:367, 128:49 |
| 128:386 | AFS | lo | 107409/1000000 | 2849992953/26533937500 | 506 | 128:348, 128:308, 128:330, 128:178, 128:282 |
| 128:387 | AFP | lo | 4119/25000 | 18404335731/111703250000 | 512 | 128:343, 128:324, 128:34, 128:262, 128:39 |
| 128:388 | AHP | lo | 72999/500000 | 2674819311/18320920000 | 545 | 128:34, 128:371, 128:324, 128:180, 128:346 |
| 128:389 | AHQ | lo | 15813/100000 | 3532736719/22340650000 | 552 | 128:344, 128:66, 128:345, 128:384, 128:39 |
| 128:390 | BFP | lo | 54363/500000 | 4164538013/38303000000 | 748 | 128:313, 128:369, 128:116, 128:142, 128:297 |
| 128:391 | BHP | lo | 55849/500000 | 654278053/5857537500 | 783 | 128:313, 128:371, 128:380, 128:150, 128:298 |
| 128:392 | BFS | lo | 20549/200000 | 389464529/3790562500 | 841 | 128:359, 128:308, 128:331, 128:178, 128:282 |
| 128:396 | CEF | lo | 54411/500000 | 47406/435625 | 1006 | 128:132, 128:366, 128:134, 128:287, 128:302 |
| 128:397 | CEH | lo | 103481/1000000 | 16163927/156201000 | 1040 | 128:132, 128:365, 128:249, 128:150, 128:298 |
| 128:398 | EHP | lo | 106799/1000000 | 5560749/52067000 | 1043 | 128:132, 128:371, 128:150, 128:292, 128:298 |
| 128:403 | AES | hi | 139489/250000 | 18194806570849/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:378, 128:372, 128:39 |
| 128:412 | EHS | hi | 84897/200000 | 5536938646288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:378, 128:344, 128:88, 128:185 |
| 128:414 | EQS | lo | 185593/1000000 | 6052170207/32609786500 | 2666 | 128:13, 128:126, 128:70, 128:378, 128:345, 128:357, 128:194 |
| 128:417 | EFP | lo | 67311/500000 | 3622858568992459/26911187845750000 | 2752 | 128:21, 128:150, 128:388, 128:381, 128:343, 128:396, 128:385 |
| 128:418 | EPS | lo | 12129/100000 | 13056334768119/107644751383000 | 2757 | 128:21, 128:150, 128:388, 128:381, 128:348, 128:336, 128:186 |
| 128:419 | EPR | lo | 6547/31250 | 2017270167/9628750000 | 2933 | 128:265, 128:333, 128:325, 128:381, 128:38, 128:249, 128:377 |
| 128:420 | FPS | lo | 94881/1000000 | 82056034791/864824000000 | 3028 | 128:33, 128:398, 128:388, 128:34, 128:386, 128:178, 128:308 |
| 128:423 | CPQ | hi | 57351/125000 | 102500514984041463/223406500000000000 | 3103 | 128:39, 128:419, 128:324, 128:34, 128:25, 128:134, 128:165 |
| 128:424 | CPR | hi | 2923/6250 | 52241371926335201/111703250000000000 | 3104 | 128:39, 128:419, 128:324, 128:34, 128:27, 128:249 |
| 128:427 | EPQ | hi | 10787/25000 | 3855814986219/8936260000000 | 3109 | 128:39, 128:419, 128:324, 128:34, 128:37, 128:195 |
| 128:428 | FHP | lo | 48281/500000 | 21572671269/223406500000 | 3112 | 128:39, 128:419, 128:324, 128:34, 128:42, 128:385, 128:204 |
| 128:433 | FHS | lo | 93967/1000000 | 41985687/446813000 | 3157 | 128:39, 128:377, 128:70, 128:348, 128:42, 128:385, 128:204 |
| 128:436 | APQ | hi | 114833/250000 | 12814327803/27897800000 | 3177 | 128:403, 128:418, 128:325, 128:34, 128:37, 128:68 |
| 128:438 | BCP | lo | 131973/1000000 | 36817677/278978000 | 3180 | 128:403, 128:418, 128:325, 128:34, 128:0, 128:72, 128:355 |
| 128:441 | BPR | hi | 85553/200000 | 11933678387022801/27897800000000000 | 3186 | 128:403, 128:418, 128:325, 128:34, 128:337, 128:95, 128:126 |
| 128:442 | PQR | lo | 133433/1000000 | 9306231/69744500 | 3212 | 128:403, 128:418, 128:325, 128:34, 128:66, 128:194, 128:236 |
| 128:445 | BPS | lo | 5921/62500 | 99742030071/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:386, 128:8, 128:390, 128:116 |
| 128:447 | EPQ | lo | 3243/20000 | 23626245943/145706000000 | 3372 | 128:75, 128:142, 128:390, 128:438, 128:357, 128:134, 128:366 |
| 128:449 | APR | lo | 171327/500000 | 2037787041499/5947067931000 | 3663 | 128:93, 128:447, 128:116, 128:90, 128:337, 128:38, 128:66 |
| 128:450 | APS | lo | 136341/1000000 | 810829230083/5947067931000 | 3664 | 128:93, 128:447, 128:116, 128:90, 128:378, 128:348, 128:68 |
| 128:451 | PRS | lo | 5311/50000 | 20377453793/191840901000 | 3699 | 128:93, 128:447, 128:116, 128:90, 128:126, 128:377, 128:236 |
| 128:454 | PQS | lo | 31377/250000 | 19023034117/151568200000 | 3870 | 128:105, 128:218, 128:126, 128:392, 128:116, 128:369, 128:442 |
| 128:455 | AHS | lo | 27293/200000 | 770148448199/5643549443000 | 4053 | 128:175, 128:216, 128:414, 128:178, 128:344, 128:42, 128:389 |
| 128:456 | BHS | lo | 31417/200000 | 53191230098169/338613210733000 | 4104 | 128:177, 128:218, 128:377, 128:178, 128:88, 128:98, 128:361 |
| 128:457 | CHS | lo | 144007/1000000 | 761918540264422/5290831417703125 | 4111 | 128:177, 128:218, 128:377, 128:178, 128:397, 128:382, 128:365 |
| 128:458 | CPS | lo | 25067/250000 | 33952320098169/338613210733000 | 4112 | 128:177, 128:218, 128:377, 128:178, 128:132, 128:142, 128:383 |
| 128:460 | HPS | lo | 64931/500000 | 21986593177399973/169306605366500000 | 4127 | 128:177, 128:218, 128:377, 128:178, 128:398, 128:428, 128:371 |
| 128:462 | CES | lo | 96051/1000000 | 58279572143829/606752513353000 | 4239 | 128:211, 128:451, 128:218, 128:420, 128:396, 128:132, 128:249 |
| 128:463 | ABR | lo | 6443/20000 | 6443/20000 | 4336 | 128:70, 128:378, 128:126 |
| 128:464 | ACF | lo | 365519/1000000 | 365519/1000000 | 4344 | 128:387, 128:381, 128:142 |
| 128:469 | AEF | lo | 196191/500000 | 196191/500000 | 4359 | 128:387, 128:34, 128:417 |
| 128:470 | AEH | lo | 345797/1000000 | 345797/1000000 | 4363 | 128:388, 128:34, 128:398 |
| 128:471 | AEQ | lo | 358579/1000000 | 358579/1000000 | 4367 | 128:34, 128:379, 128:447 |
| 128:472 | EPR | hi | 114493/250000 | 114493/250000 | 4368 | 128:34, 128:449, 128:39 |
| 128:474 | AES | lo | 350631/1000000 | 350631/1000000 | 4369 | 128:34, 128:450, 128:418 |
| 128:480 | BCR | lo | 93563/250000 | 93563/250000 | 4408 | 128:438, 128:380, 128:383 |
| 128:482 | BCS | lo | 326977/1000000 | 326977/1000000 | 4409 | 128:438, 128:445, 128:458 |
| 128:484 | BEH | lo | 311497/1000000 | 311497/1000000 | 4418 | 128:391, 128:90, 128:398 |
| 128:485 | BEQ | lo | 6963/20000 | 6963/20000 | 4422 | 128:90, 128:116, 128:447 |
| 128:486 | BER | lo | 99713/250000 | 99713/250000 | 4423 | 128:90, 128:380, 128:419 |
| 128:487 | BES | lo | 154513/500000 | 154513/500000 | 4424 | 128:90, 128:445, 128:418 |
| 128:489 | BFR | lo | 57749/200000 | 57749/200000 | 4437 | 128:126, 128:392, 128:218 |
| 128:490 | BHR | lo | 68617/200000 | 68617/200000 | 4442 | 128:126, 128:456, 128:228 |
| 128:493 | CFR | lo | 376051/1000000 | 376051/1000000 | 4471 | 128:373, 128:148, 128:218 |
| 128:494 | CHR | lo | 213529/500000 | 213529/500000 | 4476 | 128:373, 128:457, 128:228 |
| 128:495 | EFQ | lo | 371593/1000000 | 371593/1000000 | 4489 | 128:414, 128:178, 128:216 |
| 128:496 | EFR | lo | 7609/20000 | 7609/20000 | 4490 | 128:377, 128:178, 128:218 |
| 128:498 | FPQ | lo | 313389/1000000 | 313389/1000000 | 4506 | 128:216, 128:420, 128:454 |
| 128:500 | HPR | lo | 164541/500000 | 164541/500000 | 4510 | 128:228, 128:460, 128:451 |
| 128:501 | ABE | lo | 9599/100000 | 11799375000/122922436487 | 58 | 128:0, 128:38, 128:463, 128:16, 128:27 |
| 128:502 | CRS | lo | 47551/250000 | 49620243/260878292 | 141 | 128:26, 128:126, 128:70, 128:480, 128:13 |
| 128:505 | ABS | lo | 136391/1000000 | 2437656933/17872520000 | 213 | 128:501, 128:70, 128:463, 128:474, 128:39 |
| 128:506 | ERS | lo | 194589/1000000 | 50764143/260878292 | 216 | 128:38, 128:126, 128:70, 128:486, 128:13 |
| 128:507 | APQ | lo | 20701/200000 | 44276091/427765000 | 297 | 128:8, 128:442, 128:449, 128:116, 128:441 |
| 128:508 | BPR | lo | 12049/125000 | 44276091/459332000 | 297 | 128:8, 128:442, 128:449, 128:116, 128:436 |
| 128:509 | ACP | lo | 21553/200000 | 6018867/55851625 | 365 | 128:16, 128:449, 128:26, 128:34, 128:39 |
| 128:510 | CFH | lo | 49147/500000 | 34483005000/350813248141 | 402 | 128:464, 128:204, 128:42, 128:493, 128:49 |
| 128:511 | CPR | lo | 29199/200000 | 4498400893/30812000000 | 478 | 128:509, 128:502, 128:26, 128:458, 128:265 |
| 128:512 | AHR | lo | 25351/200000 | 11327196031/89362600000 | 497 | 128:470, 128:262, 128:38, 128:42, 128:31 |
| 128:513 | EFH | lo | 51219/500000 | 35936688000/350813248141 | 499 | 128:469, 128:204, 128:42, 128:496, 128:49 |
| 128:514 | AFS | lo | 26879/250000 | 15212996059/141495000000 | 506 | 128:474, 128:433, 128:455, 128:178, 128:412 |
| 128:516 | AHP | lo | 146733/1000000 | 33599865273/228986000000 | 545 | 128:34, 128:500, 128:449, 128:398, 128:472 |
| 128:517 | AHQ | lo | 158823/1000000 | 28385808829/178725200000 | 552 | 128:470, 128:66, 128:471, 128:512, 128:39 |
| 128:518 | BFP | lo | 21799/200000 | 16669295499/152936000000 | 748 | 128:438, 128:498, 128:116, 128:142, 128:423 |
| 128:519 | BHP | lo | 11203/100000 | 26197197393/233840000000 | 783 | 128:438, 128:500, 128:508, 128:150, 128:424 |
| 128:520 | BFS | lo | 102823/1000000 | 21823575571/212242500000 | 841 | 128:487, 128:433, 128:456, 128:178, 128:412 |
| 128:524 | CEF | lo | 27277/250000 | 9415599/86296000 | 1006 | 128:132, 128:495, 128:134, 128:417, 128:427 |
| 128:525 | CEH | lo | 103773/1000000 | 2426649/23384000 | 1040 | 128:132, 128:494, 128:249, 128:150, 128:424 |
| 128:526 | EHP | lo | 107099/1000000 | 25044249/233840000 | 1043 | 128:132, 128:500, 128:150, 128:419, 128:424 |
| 128:528 | AFR | lo | 141477/1000000 | 3618288253823/25575000000000 | 2151 | 128:489, 128:13 |
| 128:532 | AES | hi | 11159/20000 | 18194608945849/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:505, 128:501, 128:39 |
| 128:541 | EHS | hi | 13247/31250 | 5529356821288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:505, 128:470, 128:484, 128:185 |
| 128:543 | EQS | lo | 23227/125000 | 6059447457/32609786500 | 2666 | 128:13, 128:126, 128:70, 128:505, 128:471, 128:485, 128:194 |
| 128:546 | EFP | lo | 67443/500000 | 7259925340460877/53822375691500000 | 2752 | 128:21, 128:150, 128:516, 128:509, 128:469, 128:524, 128:513 |
| 128:547 | EPS | lo | 60671/500000 | 6530941275747/53822375691500 | 2757 | 128:21, 128:150, 128:516, 128:509, 128:474, 128:462, 128:186 |
| 128:548 | EPR | lo | 5239/25000 | 129139407399/616240000000 | 2933 | 128:265, 128:458, 128:450, 128:509, 128:38, 128:249, 128:506 |
| 128:549 | FPS | lo | 94901/1000000 | 20518303021/216206000000 | 3028 | 128:33, 128:526, 128:516, 128:34, 128:514, 128:178, 128:433 |
| 128:550 | AFP | lo | 165179/1000000 | 36902155707/223406500000 | 3085 | 128:39, 128:548, 128:449, 128:34, 128:469, 128:528 |
| 128:553 | CPQ | hi | 7168/15625 | 25622044252338783/55851625000000000 | 3103 | 128:39, 128:548, 128:449, 128:34, 128:25, 128:134, 128:165 |
| 128:554 | CPR | hi | 467619/1000000 | 13058624629831091/27925812500000000 | 3104 | 128:39, 128:548, 128:449, 128:34, 128:27, 128:249 |
| 128:557 | EPQ | hi | 107859/250000 | 3855421822119/8936260000000 | 3109 | 128:39, 128:548, 128:449, 128:34, 128:37, 128:195 |
| 128:558 | FHP | lo | 48309/500000 | 21585296613/223406500000 | 3112 | 128:39, 128:548, 128:449, 128:34, 128:42, 128:513, 128:204 |
| 128:563 | FHS | lo | 46991/500000 | 10498119/111703250 | 3157 | 128:39, 128:506, 128:70, 128:474, 128:42, 128:513, 128:204 |
| 128:566 | APQ | hi | 57407/125000 | 3203023041/6974375000 | 3177 | 128:532, 128:547, 128:450, 128:34, 128:37, 128:68 |
| 128:568 | BCP | lo | 131999/1000000 | 73649211/557950000 | 3180 | 128:532, 128:547, 128:450, 128:34, 128:0, 128:72, 128:482 |
| 128:571 | BPR | hi | 17103/40000 | 2982061819101247/6974375000000000 | 3186 | 128:532, 128:547, 128:450, 128:34, 128:463, 128:95, 128:126 |
| 128:572 | PQR | lo | 2669/20000 | 37229481/278975000 | 3212 | 128:532, 128:547, 128:450, 128:34, 128:66, 128:194, 128:236 |
| 128:575 | BPS | lo | 47383/500000 | 99773301321/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:514, 128:8, 128:518, 128:116 |
| 128:577 | EPQ | lo | 81103/500000 | 141806895407/874236000000 | 3372 | 128:75, 128:142, 128:518, 128:568, 128:485, 128:134, 128:495 |
| 128:579 | APR | lo | 342739/1000000 | 6114876830747/17841203793000 | 3663 | 128:93, 128:577, 128:116, 128:90, 128:463, 128:38, 128:66 |
| 128:580 | APS | lo | 27287/200000 | 2434181041399/17841203793000 | 3664 | 128:93, 128:577, 128:116, 128:90, 128:505, 128:474, 128:68 |
| 128:581 | PRS | lo | 53119/500000 | 6793642931/63946967000 | 3699 | 128:93, 128:577, 128:116, 128:90, 128:126, 128:506, 128:236 |
| 128:584 | PQS | lo | 125533/1000000 | 1902691607/15156820000 | 3870 | 128:105, 128:218, 128:126, 128:520, 128:116, 128:498, 128:572 |
| 128:585 | AHS | lo | 68377/500000 | 771780598199/5643549443000 | 4053 | 128:175, 128:216, 128:543, 128:178, 128:470, 128:42, 128:517 |
| 128:586 | BHS | lo | 157347/1000000 | 53280091598169/338613210733000 | 4104 | 128:177, 128:218, 128:506, 128:178, 128:484, 128:98, 128:490 |
| 128:587 | CHS | lo | 144193/1000000 | 3487567602556393/24186657909500000 | 4111 | 128:177, 128:218, 128:506, 128:178, 128:525, 128:510, 128:494 |
| 128:588 | CPS | lo | 100277/1000000 | 33955296098169/338613210733000 | 4112 | 128:177, 128:218, 128:506, 128:178, 128:132, 128:142, 128:511 |
| 128:590 | HPS | lo | 6499/50000 | 22006536847300497/169306605366500000 | 4127 | 128:177, 128:218, 128:506, 128:178, 128:526, 128:558, 128:500 |
| 128:591 | CES | lo | 48051/500000 | 58310277047829/606752513353000 | 4239 | 128:211, 128:581, 128:218, 128:549, 128:524, 128:132, 128:249 |
| 128:592 | ABR | lo | 322391/1000000 | 322391/1000000 | 4336 | 128:70, 128:505, 128:126 |
| 128:593 | ACF | lo | 45743/125000 | 45743/125000 | 4344 | 128:550, 128:509, 128:142 |
| 128:598 | AEF | lo | 78613/200000 | 78613/200000 | 4359 | 128:550, 128:34, 128:546 |
| 128:599 | AEH | lo | 21677/62500 | 21677/62500 | 4363 | 128:516, 128:34, 128:526 |
| 128:600 | AEQ | lo | 358711/1000000 | 358711/1000000 | 4367 | 128:34, 128:507, 128:577 |
| 128:601 | EPR | hi | 457887/1000000 | 457887/1000000 | 4368 | 128:34, 128:579, 128:39 |
| 128:603 | AES | lo | 350777/1000000 | 350777/1000000 | 4369 | 128:34, 128:580, 128:547 |
| 128:609 | BCR | lo | 187193/500000 | 187193/500000 | 4408 | 128:568, 128:508, 128:511 |
| 128:611 | BCS | lo | 163521/500000 | 163521/500000 | 4409 | 128:568, 128:575, 128:588 |
| 128:613 | BEH | lo | 312129/1000000 | 312129/1000000 | 4418 | 128:519, 128:90, 128:526 |
| 128:614 | BEQ | lo | 174103/500000 | 174103/500000 | 4422 | 128:90, 128:116, 128:577 |
| 128:615 | BER | lo | 49869/125000 | 49869/125000 | 4423 | 128:90, 128:508, 128:548 |
| 128:616 | BES | lo | 77277/250000 | 77277/250000 | 4424 | 128:90, 128:575, 128:547 |
| 128:618 | BFR | lo | 288823/1000000 | 288823/1000000 | 4437 | 128:126, 128:520, 128:218 |
| 128:619 | BHR | lo | 343347/1000000 | 343347/1000000 | 4442 | 128:126, 128:586, 128:228 |
| 128:622 | CFR | lo | 94051/250000 | 94051/250000 | 4471 | 128:502, 128:148, 128:218 |
| 128:623 | CHR | lo | 427397/1000000 | 427397/1000000 | 4476 | 128:502, 128:587, 128:228 |
| 128:624 | EFQ | lo | 46477/125000 | 46477/125000 | 4489 | 128:543, 128:178, 128:216 |
| 128:625 | EFR | lo | 380589/1000000 | 380589/1000000 | 4490 | 128:506, 128:178, 128:218 |
| 128:627 | FPQ | lo | 156717/500000 | 156717/500000 | 4506 | 128:216, 128:549, 128:584 |
| 128:629 | HPR | lo | 164609/500000 | 164609/500000 | 4510 | 128:228, 128:590, 128:581 |
| 128:630 | ABE | lo | 96013/1000000 | 11802176625/122922436487 | 58 | 128:0, 128:38, 128:592, 128:16, 128:27 |
| 128:631 | CRS | lo | 47557/250000 | 24813237/130439146 | 141 | 128:26, 128:126, 128:70, 128:609, 128:13 |
| 128:634 | ABS | lo | 6827/50000 | 122016556807/893626000000 | 213 | 128:630, 128:70, 128:592, 128:603, 128:39 |
| 128:635 | ERS | lo | 194607/1000000 | 50768793/260878292 | 216 | 128:38, 128:126, 128:70, 128:615, 128:13 |
| 128:636 | APQ | lo | 103573/1000000 | 14761859/142525000 | 297 | 128:8, 128:572, 128:579, 128:116, 128:571 |
| 128:637 | BPR | lo | 24107/250000 | 107229/1112000 | 297 | 128:8, 128:572, 128:579, 128:116, 128:566 |
| 128:638 | ACP | lo | 53887/500000 | 96309777/893626000 | 365 | 128:16, 128:579, 128:26, 128:34, 128:39 |
| 128:639 | CFH | lo | 98371/1000000 | 34509882000/350813248141 | 402 | 128:593, 128:204, 128:42, 128:622, 128:49 |
| 128:640 | CPR | lo | 36503/250000 | 44989275961/308120000000 | 478 | 128:638, 128:631, 128:26, 128:588, 128:265 |
| 128:641 | AHR | lo | 63507/500000 | 3546993777/27925812500 | 497 | 128:599, 128:528, 128:38, 128:42, 128:31 |
| 128:642 | EFH | lo | 102547/1000000 | 35974911000/350813248141 | 499 | 128:598, 128:204, 128:42, 128:625, 128:49 |
| 128:643 | AFS | lo | 107771/1000000 | 22842423007/211952000000 | 506 | 128:603, 128:563, 128:585, 128:178, 128:541 |
| 128:645 | AHP | lo | 18379/125000 | 67324278161/457887000000 | 545 | 128:34, 128:629, 128:579, 128:526, 128:601 |
| 128:646 | AHQ | lo | 159269/1000000 | 71163723477/446813000000 | 552 | 128:599, 128:66, 128:600, 128:641, 128:39 |
| 128:647 | BFP | lo | 109039/1000000 | 25010987283/229376000000 | 748 | 128:568, 128:627, 128:116, 128:142, 128:553 |
| 128:648 | BHP | lo | 28027/250000 | 26212125391/233809500000 | 783 | 128:568, 128:629, 128:637, 128:150, 128:554 |
| 128:649 | BFS | lo | 103051/1000000 | 2730241191/26494000000 | 841 | 128:616, 128:563, 128:586, 128:178, 128:541 |
| 128:653 | CEF | lo | 13653/125000 | 7853881/71906000 | 1006 | 128:132, 128:624, 128:134, 128:546, 128:557 |
| 128:654 | CEH | lo | 51927/500000 | 16188169/155873000 | 1040 | 128:132, 128:623, 128:249, 128:150, 128:554 |
| 128:655 | EHP | lo | 6697/62500 | 8351059/77936500 | 1043 | 128:132, 128:629, 128:150, 128:548, 128:554 |
| 128:657 | AFR | lo | 28303/200000 | 18096328392421/127875000000000 | 2151 | 128:618, 128:13 |
| 128:661 | AES | hi | 278973/500000 | 18194475258349/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:634, 128:630, 128:39 |
| 128:670 | EHS | hi | 423607/1000000 | 5525481046288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:634, 128:599, 128:613, 128:185 |
| 128:672 | EQS | lo | 3717/20000 | 6060540207/32609786500 | 2666 | 128:13, 128:126, 128:70, 128:634, 128:600, 128:614, 128:194 |
| 128:675 | EFP | lo | 135061/1000000 | 14538634653072501/107644751383000000 | 2752 | 128:21, 128:150, 128:645, 128:638, 128:598, 128:653, 128:642 |
| 128:676 | EPS | lo | 15171/125000 | 13064631161619/107644751383000 | 2757 | 128:21, 128:150, 128:645, 128:638, 128:603, 128:591, 128:186 |
| 128:677 | EPR | lo | 209573/1000000 | 64573813923/308120000000 | 2933 | 128:265, 128:588, 128:580, 128:638, 128:38, 128:249, 128:635 |
| 128:678 | FPS | lo | 18987/200000 | 2565709381/27025750000 | 3028 | 128:33, 128:655, 128:645, 128:34, 128:643, 128:178, 128:563 |
| 128:679 | AFP | lo | 82741/500000 | 29575920007/178725200000 | 3085 | 128:39, 128:677, 128:579, 128:34, 128:598, 128:657 |
| 128:682 | CPQ | hi | 22933/50000 | 102467613718211247/223406500000000000 | 3103 | 128:39, 128:677, 128:579, 128:34, 128:25, 128:134, 128:165 |
| 128:683 | CPR | hi | 116879/250000 | 52223042840972969/111703250000000000 | 3104 | 128:39, 128:677, 128:579, 128:34, 128:27, 128:249 |
| 128:686 | EPQ | hi | 431363/1000000 | 3854766548619/8936260000000 | 3109 | 128:39, 128:677, 128:579, 128:34, 128:37, 128:195 |
| 128:687 | FHP | lo | 96661/1000000 | 86379347233/893626000000 | 3112 | 128:39, 128:677, 128:579, 128:34, 128:42, 128:642, 128:204 |
| 128:692 | FHS | lo | 93993/1000000 | 83995089/893626000 | 3157 | 128:39, 128:635, 128:70, 128:603, 128:42, 128:642, 128:204 |
| 128:695 | APQ | hi | 229609/500000 | 1423437311/3099700000 | 3177 | 128:661, 128:676, 128:580, 128:34, 128:37, 128:68 |
| 128:697 | BCP | lo | 13201/100000 | 2045969/15498500 | 3180 | 128:661, 128:676, 128:580, 128:34, 128:0, 128:72, 128:611 |
| 128:700 | BPR | hi | 85493/200000 | 3975038717659511/9299100000000000 | 3186 | 128:661, 128:676, 128:580, 128:34, 128:592, 128:95, 128:126 |
| 128:701 | PQR | lo | 133459/1000000 | 4136857/30997000 | 3212 | 128:661, 128:676, 128:580, 128:34, 128:66, 128:194, 128:236 |
| 128:704 | BPS | lo | 9477/100000 | 99778416321/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:643, 128:8, 128:647, 128:116 |
| 128:706 | EPQ | lo | 162249/1000000 | 1773057577/10927950000 | 3372 | 128:75, 128:142, 128:647, 128:697, 128:614, 128:134, 128:624 |
| 128:708 | APR | lo | 85699/250000 | 1019316794537/2973533965500 | 3663 | 128:93, 128:706, 128:116, 128:90, 128:592, 128:38, 128:66 |
| 128:709 | APS | lo | 136491/1000000 | 811723838083/5947067931000 | 3664 | 128:93, 128:706, 128:116, 128:90, 128:634, 128:603, 128:68 |
| 128:710 | PRS | lo | 106241/1000000 | 6793792931/63946967000 | 3699 | 128:93, 128:706, 128:116, 128:90, 128:126, 128:635, 128:236 |
| 128:713 | PQS | lo | 7847/62500 | 95148915409/757841000000 | 3870 | 128:105, 128:218, 128:126, 128:649, 128:116, 128:627, 128:701 |
| 128:714 | AHS | lo | 136957/1000000 | 772928373199/5643549443000 | 4053 | 128:175, 128:216, 128:672, 128:178, 128:599, 128:42, 128:646 |
| 128:715 | BHS | lo | 15747/100000 | 7617380371167/48373315819000 | 4104 | 128:177, 128:218, 128:635, 128:178, 128:613, 128:98, 128:619 |
| 128:716 | CHS | lo | 144307/1000000 | 6980626950430849/48373315819000000 | 4111 | 128:177, 128:218, 128:635, 128:178, 128:654, 128:639, 128:623 |
| 128:717 | CPS | lo | 100279/1000000 | 33956086598169/338613210733000 | 4112 | 128:177, 128:218, 128:635, 128:178, 128:132, 128:142, 128:640 |
| 128:719 | HPS | lo | 130037/1000000 | 44032423562662513/338613210733000000 | 4127 | 128:177, 128:218, 128:635, 128:178, 128:655, 128:687, 128:629 |
| 128:720 | CES | lo | 48061/500000 | 58322710595829/606752513353000 | 4239 | 128:211, 128:710, 128:218, 128:678, 128:653, 128:132, 128:249 |
| 128:721 | ABR | lo | 16127/50000 | 16127/50000 | 4336 | 128:70, 128:634, 128:126 |
| 128:722 | ACF | lo | 22891/62500 | 22891/62500 | 4344 | 128:679, 128:638, 128:142 |
| 128:727 | AEF | lo | 393543/1000000 | 393543/1000000 | 4359 | 128:679, 128:34, 128:675 |
| 128:728 | AEH | lo | 21699/62500 | 21699/62500 | 4363 | 128:645, 128:34, 128:655 |
| 128:729 | AEQ | lo | 179411/500000 | 179411/500000 | 4367 | 128:34, 128:636, 128:706 |
| 128:730 | EPR | hi | 45783/100000 | 45783/100000 | 4368 | 128:34, 128:708, 128:39 |
| 128:732 | AES | lo | 350859/1000000 | 350859/1000000 | 4369 | 128:34, 128:709, 128:676 |
| 128:738 | BCR | lo | 7489/20000 | 7489/20000 | 4408 | 128:697, 128:637, 128:640 |
| 128:740 | BCS | lo | 327059/1000000 | 327059/1000000 | 4409 | 128:697, 128:704, 128:717 |
| 128:742 | BEH | lo | 15613/50000 | 15613/50000 | 4418 | 128:648, 128:90, 128:655 |
| 128:743 | BEQ | lo | 348249/1000000 | 348249/1000000 | 4422 | 128:90, 128:116, 128:706 |
| 128:744 | BER | lo | 399001/1000000 | 399001/1000000 | 4423 | 128:90, 128:637, 128:677 |
| 128:745 | BES | lo | 154569/500000 | 154569/500000 | 4424 | 128:90, 128:704, 128:676 |
| 128:747 | BFR | lo | 289051/1000000 | 289051/1000000 | 4437 | 128:126, 128:649, 128:218 |
| 128:748 | BHR | lo | 34347/100000 | 34347/100000 | 4442 | 128:126, 128:715, 128:228 |
| 128:751 | CFR | lo | 94057/250000 | 94057/250000 | 4471 | 128:631, 128:148, 128:218 |
| 128:752 | CHR | lo | 85507/200000 | 85507/200000 | 4476 | 128:631, 128:716, 128:228 |
| 128:753 | EFQ | lo | 7437/20000 | 7437/20000 | 4489 | 128:672, 128:178, 128:216 |
| 128:754 | EFR | lo | 380607/1000000 | 380607/1000000 | 4490 | 128:635, 128:178, 128:218 |
| 128:756 | FPQ | lo | 313487/1000000 | 313487/1000000 | 4506 | 128:216, 128:678, 128:713 |
| 128:758 | HPR | lo | 164639/500000 | 164639/500000 | 4510 | 128:228, 128:719, 128:710 |
| 128:759 | ABE | lo | 96027/1000000 | 11803908750/122922436487 | 58 | 128:0, 128:38, 128:721, 128:16, 128:27 |
| 128:760 | CRS | lo | 190239/1000000 | 24814725/130439146 | 141 | 128:26, 128:126, 128:70, 128:738, 128:13 |
| 128:763 | ABS | lo | 13663/100000 | 6104828643/44681300000 | 213 | 128:759, 128:70, 128:721, 128:732, 128:39 |
| 128:764 | ERS | lo | 38923/200000 | 101542143/521756584 | 216 | 128:38, 128:126, 128:70, 128:744, 128:13 |
| 128:765 | APQ | lo | 51807/500000 | 521079/5029000 | 297 | 128:8, 128:701, 128:708, 128:116, 128:700 |
| 128:766 | BPR | lo | 1929/20000 | 8858343/91843600 | 297 | 128:8, 128:701, 128:708, 128:116, 128:695 |
| 128:767 | ACP | lo | 5389/50000 | 48157539/446813000 | 365 | 128:16, 128:708, 128:26, 128:34, 128:39 |
| 128:768 | CFH | lo | 19683/200000 | 34525506000/350813248141 | 402 | 128:722, 128:204, 128:42, 128:751, 128:49 |
| 128:769 | CPR | lo | 73009/500000 | 8998226457/61624000000 | 478 | 128:767, 128:760, 128:26, 128:717, 128:265 |
| 128:770 | AHR | lo | 25417/200000 | 709792461/5585162500 | 497 | 128:728, 128:657, 128:38, 128:42, 128:31 |
| 128:771 | EFH | lo | 25653/250000 | 35997975000/350813248141 | 499 | 128:727, 128:204, 128:42, 128:754, 128:49 |
| 128:772 | AFS | lo | 107919/1000000 | 45715290987/423607000000 | 506 | 128:732, 128:692, 128:714, 128:178, 128:670 |
| 128:774 | AHP | lo | 36779/250000 | 4209633187/28614375000 | 545 | 128:34, 128:758, 128:708, 128:655, 128:730 |
| 128:775 | AHQ | lo | 159423/1000000 | 14246522987/89362600000 | 552 | 128:728, 128:66, 128:729, 128:770, 128:39 |
| 128:776 | BFP | lo | 109083/1000000 | 5003241887/45866000000 | 748 | 128:697, 128:756, 128:116, 128:142, 128:682 |
| 128:777 | BHP | lo | 56081/500000 | 2621891939/23375800000 | 783 | 128:697, 128:758, 128:766, 128:150, 128:683 |
| 128:778 | BFS | lo | 20633/200000 | 21850759017/211803500000 | 841 | 128:745, 128:692, 128:715, 128:178, 128:670 |
| 128:782 | CEF | lo | 109287/1000000 | 47142723/431363000 | 1006 | 128:132, 128:753, 128:134, 128:675, 128:686 |
| 128:783 | CEH | lo | 20781/200000 | 48577341/467516000 | 1040 | 128:132, 128:752, 128:249, 128:150, 128:683 |
| 128:784 | EHP | lo | 10719/100000 | 50113143/467516000 | 1043 | 128:132, 128:758, 128:150, 128:677, 128:683 |
| 128:786 | AFR | lo | 141627/1000000 | 18110613829777/127875000000000 | 2151 | 128:747, 128:13 |
| 128:790 | AES | hi | 557943/1000000 | 18194393883349/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:763, 128:759, 128:39 |
| 128:799 | EHS | hi | 2647/6250 | 5524358071288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:763, 128:728, 128:742, 128:185 |
| 128:801 | EQS | lo | 185877/1000000 | 1515358833/8152446625 | 2666 | 128:13, 128:126, 128:70, 128:763, 128:729, 128:743, 128:194 |
| 128:804 | EFP | lo | 135171/1000000 | 3637616504103099/26911187845750000 | 2752 | 128:21, 128:150, 128:774, 128:767, 128:727, 128:782, 128:771 |
| 128:805 | EPS | lo | 6069/50000 | 13065984772619/107644751383000 | 2757 | 128:21, 128:150, 128:774, 128:767, 128:732, 128:720, 128:186 |
| 128:806 | EPR | lo | 209577/1000000 | 32287571253/154060000000 | 2933 | 128:265, 128:717, 128:709, 128:767, 128:38, 128:249, 128:764 |
| 128:807 | FPS | lo | 18991/200000 | 8212014861/86482400000 | 3028 | 128:33, 128:784, 128:774, 128:34, 128:772, 128:178, 128:692 |
| 128:808 | AFP | lo | 82851/500000 | 37019069307/223406500000 | 3085 | 128:39, 128:806, 128:708, 128:34, 128:727, 128:786 |
| 128:811 | CPQ | hi | 458599/1000000 | 10245382421709123/22340650000000000 | 3103 | 128:39, 128:806, 128:708, 128:34, 128:25, 128:134, 128:165 |
| 128:812 | CPR | hi | 58431/125000 | 5221536079784321/11170325000000000 | 3104 | 128:39, 128:806, 128:708, 128:34, 128:27, 128:249 |
| 128:815 | EPQ | hi | 215657/500000 | 3854327129919/8936260000000 | 3109 | 128:39, 128:806, 128:708, 128:34, 128:37, 128:195 |
| 128:816 | FHP | lo | 96687/1000000 | 62792277/649437500 | 3112 | 128:39, 128:806, 128:708, 128:34, 128:42, 128:771, 128:204 |
| 128:821 | FHS | lo | 47/500 | 42000567/446813000 | 3157 | 128:39, 128:764, 128:70, 128:732, 128:42, 128:771, 128:204 |
| 128:824 | APQ | hi | 287/625 | 8540238411/18598100000 | 3177 | 128:790, 128:805, 128:709, 128:34, 128:37, 128:68 |
| 128:826 | BCP | lo | 132013/1000000 | 12276031/92990500 | 3180 | 128:790, 128:805, 128:709, 128:34, 128:0, 128:72, 128:740 |
| 128:829 | BPR | hi | 213703/500000 | 7948929010243537/18598100000000000 | 3186 | 128:790, 128:805, 128:709, 128:34, 128:721, 128:95, 128:126 |
| 128:830 | PQR | lo | 16683/125000 | 24821793/185981000 | 3212 | 128:790, 128:805, 128:709, 128:34, 128:66, 128:194, 128:236 |
| 128:833 | BPS | lo | 3791/40000 | 99783531321/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:772, 128:8, 128:776, 128:116 |
| 128:835 | EPQ | lo | 8113/50000 | 945692867/5828240000 | 3372 | 128:75, 128:142, 128:776, 128:826, 128:743, 128:134, 128:753 |
| 128:837 | APR | lo | 34283/100000 | 6116517118247/17841203793000 | 3663 | 128:93, 128:835, 128:116, 128:90, 128:721, 128:38, 128:66 |
| 128:838 | APS | lo | 136523/1000000 | 347962746107/2548743399000 | 3664 | 128:93, 128:835, 128:116, 128:90, 128:763, 128:732, 128:68 |
| 128:839 | PRS | lo | 53121/500000 | 20381578793/191840901000 | 3699 | 128:93, 128:835, 128:116, 128:90, 128:126, 128:764, 128:236 |
| 128:842 | PQS | lo | 25113/200000 | 1189487157/9473012500 | 3870 | 128:105, 128:218, 128:126, 128:778, 128:116, 128:756, 128:830 |
| 128:843 | AHS | lo | 137027/1000000 | 110474360457/806221349000 | 4053 | 128:175, 128:216, 128:801, 128:178, 128:728, 128:42, 128:775 |
| 128:844 | BHS | lo | 31501/200000 | 53333473598169/338613210733000 | 4104 | 128:177, 128:218, 128:764, 128:178, 128:742, 128:98, 128:748 |
| 128:845 | CHS | lo | 28873/200000 | 9776796826857639/67722642146600000 | 4111 | 128:177, 128:218, 128:764, 128:178, 128:783, 128:768, 128:752 |
| 128:846 | CPS | lo | 2507/25000 | 4850909371167/48373315819000 | 4112 | 128:177, 128:218, 128:764, 128:178, 128:132, 128:142, 128:769 |
| 128:848 | HPS | lo | 130069/1000000 | 44043366506141571/338613210733000000 | 4127 | 128:177, 128:218, 128:764, 128:178, 128:784, 128:816, 128:758 |
| 128:849 | CES | lo | 96133/1000000 | 58329456105829/606752513353000 | 4239 | 128:211, 128:839, 128:218, 128:807, 128:782, 128:132, 128:249 |
| 128:850 | ABR | lo | 32263/100000 | 32263/100000 | 4336 | 128:70, 128:763, 128:126 |
| 128:851 | ACF | lo | 183241/500000 | 183241/500000 | 4344 | 128:808, 128:767, 128:142 |
| 128:856 | AEF | lo | 393873/1000000 | 393873/1000000 | 4359 | 128:808, 128:34, 128:804 |
| 128:857 | AEH | lo | 173653/500000 | 173653/500000 | 4363 | 128:774, 128:34, 128:784 |
| 128:858 | AEQ | lo | 179437/500000 | 179437/500000 | 4367 | 128:34, 128:765, 128:835 |
| 128:859 | EPR | hi | 114449/250000 | 114449/250000 | 4368 | 128:34, 128:837, 128:39 |
| 128:861 | AES | lo | 350903/1000000 | 350903/1000000 | 4369 | 128:34, 128:838, 128:805 |
| 128:867 | BCR | lo | 374481/1000000 | 374481/1000000 | 4408 | 128:826, 128:766, 128:769 |
| 128:869 | BCS | lo | 81767/250000 | 81767/250000 | 4409 | 128:826, 128:833, 128:846 |
| 128:871 | BEH | lo | 9761/31250 | 9761/31250 | 4418 | 128:777, 128:90, 128:784 |
| 128:872 | BEQ | lo | 17413/50000 | 17413/50000 | 4422 | 128:90, 128:116, 128:835 |
| 128:873 | BER | lo | 399027/1000000 | 399027/1000000 | 4423 | 128:90, 128:766, 128:806 |
| 128:874 | BES | lo | 61831/200000 | 61831/200000 | 4424 | 128:90, 128:833, 128:805 |
| 128:876 | BFR | lo | 57833/200000 | 57833/200000 | 4437 | 128:126, 128:778, 128:218 |
| 128:877 | BHR | lo | 68701/200000 | 68701/200000 | 4442 | 128:126, 128:844, 128:228 |
| 128:880 | CFR | lo | 376239/1000000 | 376239/1000000 | 4471 | 128:760, 128:148, 128:218 |
| 128:881 | CHR | lo | 106901/250000 | 106901/250000 | 4476 | 128:760, 128:845, 128:228 |
| 128:882 | EFQ | lo | 371877/1000000 | 371877/1000000 | 4489 | 128:801, 128:178, 128:216 |
| 128:883 | EFR | lo | 76123/200000 | 76123/200000 | 4490 | 128:764, 128:178, 128:218 |
| 128:885 | FPQ | lo | 3919/12500 | 3919/12500 | 4506 | 128:216, 128:807, 128:842 |
| 128:887 | HPR | lo | 329311/1000000 | 329311/1000000 | 4510 | 128:228, 128:848, 128:839 |
| 128:888 | ABE | lo | 19207/200000 | 11804955000/122922436487 | 58 | 128:0, 128:38, 128:850, 128:16, 128:27 |
| 128:889 | CRS | lo | 38049/200000 | 99261783/521756584 | 141 | 128:26, 128:126, 128:70, 128:867, 128:13 |
| 128:892 | ABS | lo | 68341/500000 | 12214308989/89362600000 | 213 | 128:888, 128:70, 128:850, 128:861, 128:39 |
| 128:893 | ERS | lo | 9731/50000 | 101544561/521756584 | 216 | 128:38, 128:126, 128:70, 128:873, 128:13 |
| 128:894 | APQ | lo | 103637/1000000 | 3163953/30529000 | 297 | 128:8, 128:830, 128:837, 128:116, 128:829 |
| 128:895 | BPR | lo | 96461/1000000 | 3163953/32800000 | 297 | 128:8, 128:830, 128:837, 128:116, 128:824 |
| 128:896 | ACP | lo | 107783/1000000 | 1203978/11170325 | 365 | 128:16, 128:837, 128:26, 128:34, 128:39 |
| 128:897 | CFH | lo | 98447/1000000 | 34536526500/350813248141 | 402 | 128:851, 128:204, 128:42, 128:880, 128:49 |
| 128:898 | CPR | lo | 146021/1000000 | 17996834967/123248000000 | 478 | 128:896, 128:889, 128:26, 128:846, 128:265 |
| 128:899 | AHR | lo | 31787/250000 | 56811478431/446813000000 | 497 | 128:857, 128:786, 128:38, 128:42, 128:31 |
| 128:900 | EFH | lo | 102657/1000000 | 36013692000/350813248141 | 499 | 128:856, 128:204, 128:42, 128:883, 128:49 |
| 128:901 | AFS | lo | 26993/250000 | 45728393/423520000 | 506 | 128:861, 128:821, 128:843, 128:178, 128:799 |
| 128:903 | AHP | lo | 14717/100000 | 673738707/4577960000 | 545 | 128:34, 128:887, 128:837, 128:784, 128:859 |
| 128:904 | AHQ | lo | 79747/500000 | 17816060669/111703250000 | 552 | 128:857, 128:66, 128:858, 128:899, 128:39 |
| 128:905 | BFP | lo | 109109/1000000 | 625471447/5732487500 | 748 | 128:826, 128:885, 128:116, 128:142, 128:811 |
| 128:906 | BHP | lo | 1753/15625 | 52444206043/467448000000 | 783 | 128:826, 128:887, 128:895, 128:150, 128:812 |
| 128:907 | BFS | lo | 103203/1000000 | 8741707/84704000 | 841 | 128:874, 128:821, 128:844, 128:178, 128:799 |
| 128:911 | CEF | lo | 109329/1000000 | 5894433/53914250 | 1006 | 128:132, 128:882, 128:134, 128:804, 128:815 |
| 128:912 | CEH | lo | 51967/500000 | 8097293/77908000 | 1040 | 128:132, 128:881, 128:249, 128:150, 128:812 |
| 128:913 | EHP | lo | 107213/1000000 | 2088191/19477000 | 1043 | 128:132, 128:887, 128:150, 128:806, 128:812 |
| 128:915 | AFR | lo | 141683/1000000 | 3623551309691/25575000000000 | 2151 | 128:876, 128:13 |
| 128:919 | AES | hi | 278971/500000 | 18194347383349/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:892, 128:888, 128:39 |
| 128:928 | EHS | hi | 211741/500000 | 5523860521288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:892, 128:857, 128:871, 128:185 |
| 128:930 | EQS | lo | 185889/1000000 | 12123603039/65219573000 | 2666 | 128:13, 128:126, 128:70, 128:892, 128:858, 128:872, 128:194 |
| 128:933 | EFP | lo | 67623/500000 | 856389001336743/6332044199000000 | 2752 | 128:21, 128:150, 128:903, 128:896, 128:856, 128:911, 128:900 |
| 128:934 | EPS | lo | 121387/1000000 | 13066719704869/107644751383000 | 2757 | 128:21, 128:150, 128:903, 128:896, 128:861, 128:849, 128:186 |
| 128:935 | EPR | lo | 10479/50000 | 64575860707/308120000000 | 2933 | 128:265, 128:846, 128:838, 128:896, 128:38, 128:249, 128:893 |
| 128:936 | FPS | lo | 94963/1000000 | 1207747427/12718000000 | 3028 | 128:33, 128:913, 128:903, 128:34, 128:901, 128:178, 128:821 |
| 128:937 | AFP | lo | 3317/20000 | 14820799959/89362600000 | 3085 | 128:39, 128:935, 128:837, 128:34, 128:856, 128:915 |
| 128:940 | CPQ | hi | 229281/500000 | 25611399725158419/55851625000000000 | 3103 | 128:39, 128:935, 128:837, 128:34, 128:25, 128:134, 128:165 |
| 128:941 | CPR | hi | 467407/1000000 | 13052694631625663/27925812500000000 | 3104 | 128:39, 128:935, 128:837, 128:34, 128:27, 128:249 |
| 128:944 | EPQ | hi | 107821/250000 | 3854065020519/8936260000000 | 3109 | 128:39, 128:935, 128:837, 128:34, 128:37, 128:195 |
| 128:945 | FHP | lo | 1511/15625 | 8641792731/89362600000 | 3112 | 128:39, 128:935, 128:837, 128:34, 128:42, 128:900, 128:204 |
| 128:949 | FHS | lo | 18801/200000 | 84005319/893626000 | 3157 | 128:39, 128:893, 128:70, 128:861, 128:42, 128:900, 128:204 |
| 128:952 | APQ | hi | 45919/100000 | 5124019701/11158840000 | 3177 | 128:919, 128:934, 128:838, 128:34, 128:37, 128:68 |
| 128:954 | BCP | lo | 26403/200000 | 7365693/55794200 | 3180 | 128:919, 128:934, 128:838, 128:34, 128:0, 128:72, 128:869 |
| 128:957 | BPR | hi | 427371/1000000 | 681280062464281/1594120000000000 | 3186 | 128:919, 128:934, 128:838, 128:34, 128:850, 128:95, 128:126 |
| 128:958 | PQR | lo | 66733/500000 | 2659521/19926500 | 3212 | 128:919, 128:934, 128:838, 128:34, 128:66, 128:194, 128:236 |
| 128:961 | BPS | lo | 47389/500000 | 99786553821/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:901, 128:8, 128:905, 128:116 |
| 128:963 | EPQ | lo | 81133/500000 | 9457271677/58282400000 | 3372 | 128:75, 128:142, 128:905, 128:954, 128:872, 128:134, 128:882 |
| 128:965 | APR | lo | 342851/1000000 | 6116888747747/17841203793000 | 3663 | 128:93, 128:963, 128:116, 128:90, 128:850, 128:38, 128:66 |
| 128:966 | APS | lo | 136541/1000000 | 2436059013049/17841203793000 | 3664 | 128:93, 128:963, 128:116, 128:90, 128:892, 128:861, 128:68 |
| 128:969 | PQS | lo | 31393/250000 | 6797413257/54131500000 | 3870 | 128:105, 128:218, 128:126, 128:907, 128:116, 128:885, 128:958 |
| 128:970 | AHS | lo | 137053/1000000 | 773470098199/5643549443000 | 4053 | 128:175, 128:216, 128:930, 128:178, 128:857, 128:42, 128:904 |
| 128:971 | BHS | lo | 157523/1000000 | 53339379098169/338613210733000 | 4104 | 128:177, 128:218, 128:893, 128:178, 128:871, 128:98, 128:877 |
| 128:972 | CHS | lo | 144401/1000000 | 48896400757031651/338613210733000000 | 4111 | 128:177, 128:218, 128:893, 128:178, 128:912, 128:897, 128:881 |
| 128:973 | CPS | lo | 100281/1000000 | 33956505098169/338613210733000 | 4112 | 128:177, 128:218, 128:893, 128:178, 128:132, 128:142, 128:898 |
| 128:975 | HPS | lo | 130089/1000000 | 688283530167563/5290831417703125 | 4127 | 128:177, 128:218, 128:893, 128:178, 128:913, 128:945, 128:887 |
| 128:976 | CES | lo | 96141/1000000 | 58333932685829/606752513353000 | 4239 | 128:211, 128:839, 128:218, 128:936, 128:911, 128:132, 128:249 |
| 128:977 | ABR | lo | 161341/500000 | 161341/500000 | 4336 | 128:70, 128:892, 128:126 |
| 128:978 | ACF | lo | 366633/1000000 | 366633/1000000 | 4344 | 128:937, 128:896, 128:142 |
| 128:983 | AEF | lo | 24631/62500 | 24631/62500 | 4359 | 128:937, 128:34, 128:933 |
| 128:984 | AEH | lo | 347383/1000000 | 347383/1000000 | 4363 | 128:903, 128:34, 128:913 |
| 128:985 | AEQ | lo | 358903/1000000 | 358903/1000000 | 4367 | 128:34, 128:894, 128:963 |
| 128:986 | EPR | hi | 18311/40000 | 18311/40000 | 4368 | 128:34, 128:965, 128:39 |
| 128:988 | AES | lo | 21933/62500 | 21933/62500 | 4369 | 128:34, 128:966, 128:934 |
| 128:994 | BCR | lo | 374497/1000000 | 374497/1000000 | 4408 | 128:954, 128:895, 128:898 |
| 128:996 | BCS | lo | 163537/500000 | 163537/500000 | 4409 | 128:954, 128:961, 128:973 |
| 128:998 | BEH | lo | 62481/200000 | 62481/200000 | 4418 | 128:906, 128:90, 128:913 |
| 128:999 | BEQ | lo | 174133/500000 | 174133/500000 | 4422 | 128:90, 128:116, 128:963 |
| 128:1000 | BER | lo | 399041/1000000 | 399041/1000000 | 4423 | 128:90, 128:895, 128:935 |
| 128:1001 | BES | lo | 61833/200000 | 61833/200000 | 4424 | 128:90, 128:961, 128:934 |
| 128:1003 | BFR | lo | 289203/1000000 | 289203/1000000 | 4437 | 128:126, 128:907, 128:218 |
| 128:1004 | BHR | lo | 343523/1000000 | 343523/1000000 | 4442 | 128:126, 128:971, 128:228 |
| 128:1007 | CFR | lo | 75249/200000 | 75249/200000 | 4471 | 128:889, 128:148, 128:218 |
| 128:1008 | CHR | lo | 213823/500000 | 213823/500000 | 4476 | 128:889, 128:972, 128:228 |
| 128:1009 | EFQ | lo | 371889/1000000 | 371889/1000000 | 4489 | 128:930, 128:178, 128:216 |
| 128:1010 | EFR | lo | 19031/50000 | 19031/50000 | 4490 | 128:893, 128:178, 128:218 |
| 128:1012 | FPQ | lo | 62707/200000 | 62707/200000 | 4506 | 128:216, 128:936, 128:969 |
| 128:1014 | HPR | lo | 329331/1000000 | 329331/1000000 | 4510 | 128:228, 128:975, 128:839 |
| 128:1015 | ABE | lo | 2401/25000 | 11805559500/122922436487 | 58 | 128:0, 128:38, 128:977, 128:16, 128:27 |
| 128:1016 | CRS | lo | 23781/125000 | 99263271/521756584 | 141 | 128:26, 128:126, 128:70, 128:994, 128:13 |
| 128:1019 | ABS | lo | 17089/125000 | 3817808403/27925812500 | 213 | 128:1015, 128:70, 128:977, 128:988, 128:39 |
| 128:1020 | ERS | lo | 194623/1000000 | 101545863/521756584 | 216 | 128:38, 128:126, 128:70, 128:1000, 128:13 |
| 128:1021 | APQ | lo | 103651/1000000 | 14765827/142457000 | 297 | 128:8, 128:958, 128:965, 128:116, 128:957 |
| 128:1022 | BPR | lo | 24117/250000 | 44297481/459190000 | 297 | 128:8, 128:958, 128:965, 128:116, 128:952 |
| 128:1023 | ACP | lo | 21557/200000 | 96320193/893626000 | 365 | 128:16, 128:965, 128:26, 128:34, 128:39 |
| 128:1024 | CFH | lo | 98467/1000000 | 34543827000/350813248141 | 402 | 128:978, 128:204, 128:42, 128:1007, 128:49 |
| 128:1025 | CPR | lo | 146023/1000000 | 8998557153/61624000000 | 478 | 128:1023, 128:1016, 128:26, 128:973, 128:265 |
| 128:1026 | AHR | lo | 63591/500000 | 113653315589/893626000000 | 497 | 128:984, 128:915, 128:38, 128:42, 128:31 |
| 128:1027 | EFH | lo | 102687/1000000 | 36024294000/350813248141 | 499 | 128:983, 128:204, 128:42, 128:1010, 128:49 |
| 128:1028 | AFS | lo | 107997/1000000 | 1143372891/10587050000 | 506 | 128:988, 128:949, 128:970, 128:178, 128:928 |
| 128:1030 | AHP | lo | 147203/1000000 | 67385867263/457775000000 | 545 | 128:34, 128:1014, 128:965, 128:913, 128:986 |
| 128:1031 | AHQ | lo | 9971/62500 | 71282929173/446813000000 | 552 | 128:984, 128:66, 128:985, 128:1026, 128:39 |
| 128:1032 | BFP | lo | 27281/250000 | 667204307/6114160000 | 748 | 128:954, 128:1012, 128:116, 128:142, 128:940 |
| 128:1033 | BHP | lo | 11221/100000 | 10489631193/93481400000 | 783 | 128:954, 128:1014, 128:1022, 128:150, 128:941 |
| 128:1034 | BFS | lo | 51611/500000 | 1748507793/16939280000 | 841 | 128:1001, 128:949, 128:971, 128:178, 128:928 |
| 128:1038 | CEF | lo | 27339/250000 | 9432711/86256800 | 1006 | 128:132, 128:1009, 128:134, 128:933, 128:944 |
| 128:1039 | CEH | lo | 103951/1000000 | 6073458/58425875 | 1040 | 128:132, 128:1008, 128:249, 128:150, 128:941 |
| 128:1040 | EHP | lo | 107227/1000000 | 50118723/467407000 | 1043 | 128:132, 128:1014, 128:150, 128:935, 128:941 |
| 128:1042 | AFR | lo | 141701/1000000 | 6040045818227/42625000000000 | 2151 | 128:1003, 128:13 |
| 128:1046 | AES | hi | 557941/1000000 | 18194318320849/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:1019, 128:1015, 128:39 |
| 128:1055 | EHS | hi | 423459/1000000 | 5523558271288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1019, 128:984, 128:998, 128:185 |
| 128:1057 | EQS | lo | 37179/200000 | 6062004957/32609786500 | 2666 | 128:13, 128:126, 128:70, 128:1019, 128:985, 128:999, 128:194 |
| 128:1060 | EFP | lo | 135297/1000000 | 14564058311141121/107644751383000000 | 2752 | 128:21, 128:150, 128:1030, 128:1023, 128:983, 128:1038, 128:1027 |
| 128:1061 | EPS | lo | 121391/1000000 | 6533585228247/53822375691500 | 2757 | 128:21, 128:150, 128:1030, 128:1023, 128:988, 128:976, 128:186 |
| 128:1062 | EPR | lo | 104791/500000 | 129152842453/616240000000 | 2933 | 128:265, 128:973, 128:966, 128:1023, 128:38, 128:249, 128:1020 |
| 128:1063 | FPS | lo | 94967/1000000 | 82130180319/864824000000 | 3028 | 128:33, 128:1040, 128:1030, 128:34, 128:1028, 128:178, 128:949 |
| 128:1064 | AFP | lo | 82973/500000 | 18536800087/111703250000 | 3085 | 128:39, 128:1062, 128:965, 128:34, 128:983, 128:1042 |
| 128:1067 | CPQ | hi | 458539/1000000 | 4097620742324631/8936260000000000 | 3103 | 128:39, 128:1062, 128:965, 128:34, 128:25, 128:134, 128:165 |
| 128:1068 | CPR | hi | 467381/1000000 | 2088317932003457/4468130000000000 | 3104 | 128:39, 128:1062, 128:965, 128:34, 128:27, 128:249 |
| 128:1071 | EPQ | hi | 215633/500000 | 3853903129419/8936260000000 | 3109 | 128:39, 128:1062, 128:965, 128:34, 128:37, 128:195 |
| 128:1072 | FHP | lo | 24179/250000 | 86428415637/893626000000 | 3112 | 128:39, 128:1062, 128:965, 128:34, 128:42, 128:1027, 128:204 |
| 128:1077 | FHS | lo | 11751/125000 | 84008109/893626000 | 3157 | 128:39, 128:1020, 128:70, 128:988, 128:42, 128:1027, 128:204 |
| 128:1080 | APQ | hi | 28699/62500 | 512394261/1115882000 | 3177 | 128:1046, 128:1061, 128:966, 128:34, 128:37, 128:68 |
| 128:1082 | BCP | lo | 8251/62500 | 14731479/111588200 | 3180 | 128:1046, 128:1061, 128:966, 128:34, 128:0, 128:72, 128:996 |
| 128:1085 | BPR | hi | 427351/1000000 | 476872505727487/1115882000000000 | 3186 | 128:1046, 128:1061, 128:966, 128:34, 128:977, 128:95, 128:126 |
| 128:1086 | PQR | lo | 133467/1000000 | 74467239/557941000 | 3212 | 128:1046, 128:1061, 128:966, 128:34, 128:66, 128:194, 128:236 |
| 128:1089 | BPS | lo | 4739/50000 | 99788297571/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:1028, 128:8, 128:1032, 128:116 |
| 128:1090 | EPQ | lo | 162269/1000000 | 1477723919/9106625000 | 3372 | 128:75, 128:142, 128:1032, 128:1082, 128:999, 128:134, 128:1009 |
| 128:1092 | APR | lo | 342863/1000000 | 6117102969697/17841203793000 | 3663 | 128:93, 128:1090, 128:116, 128:90, 128:977, 128:38, 128:66 |
| 128:1093 | APS | lo | 136551/1000000 | 2436242115949/17841203793000 | 3664 | 128:93, 128:1090, 128:116, 128:90, 128:1019, 128:988, 128:68 |
| 128:1094 | PRS | lo | 106243/1000000 | 20381778793/191840901000 | 3699 | 128:93, 128:1090, 128:116, 128:90, 128:126, 128:1020, 128:236 |
| 128:1096 | PQS | lo | 5023/40000 | 6797575191/54131500000 | 3870 | 128:105, 128:218, 128:126, 128:1034, 128:116, 128:1012, 128:1086 |
| 128:1097 | AHS | lo | 13707/100000 | 773562323199/5643549443000 | 4053 | 128:175, 128:216, 128:1057, 128:178, 128:984, 128:42, 128:1031 |
| 128:1098 | BHS | lo | 39383/250000 | 53342680598169/338613210733000 | 4104 | 128:177, 128:218, 128:1020, 128:178, 128:998, 128:98, 128:1004 |
| 128:1099 | CHS | lo | 18053/125000 | 6986293788749473/48373315819000000 | 4111 | 128:177, 128:218, 128:1020, 128:178, 128:1039, 128:1024, 128:1008 |
| 128:1101 | HPS | lo | 130103/1000000 | 11013668572313207/84653302683250000 | 4127 | 128:177, 128:218, 128:1020, 128:178, 128:1040, 128:1072, 128:1014 |
| 128:1102 | CES | lo | 19229/200000 | 58336824783829/606752513353000 | 4239 | 128:211, 128:1094, 128:218, 128:1063, 128:1038, 128:132, 128:249 |
| 128:1103 | ABR | lo | 40339/125000 | 40339/125000 | 4336 | 128:70, 128:1019, 128:126 |
| 128:1104 | ACF | lo | 366731/1000000 | 366731/1000000 | 4344 | 128:1064, 128:1023, 128:142 |
| 128:1109 | AEF | lo | 394243/1000000 | 394243/1000000 | 4359 | 128:1064, 128:34, 128:1060 |
| 128:1110 | AEH | lo | 34743/100000 | 34743/100000 | 4363 | 128:1030, 128:34, 128:1040 |
| 128:1111 | AEQ | lo | 8973/25000 | 8973/25000 | 4367 | 128:34, 128:1021, 128:1090 |
| 128:1112 | EPR | hi | 457763/1000000 | 457763/1000000 | 4368 | 128:34, 128:1092, 128:39 |
| 128:1114 | AES | lo | 175471/500000 | 175471/500000 | 4369 | 128:34, 128:1093, 128:1061 |
| 128:1120 | BCR | lo | 374507/1000000 | 374507/1000000 | 4408 | 128:1082, 128:1022, 128:1025 |
| 128:1121 | BCS | lo | 327077/1000000 | 327077/1000000 | 4409 | 128:1082, 128:1089, 128:973 |
| 128:1123 | BEH | lo | 312437/1000000 | 312437/1000000 | 4418 | 128:1033, 128:90, 128:1040 |
| 128:1124 | BEQ | lo | 348269/1000000 | 348269/1000000 | 4422 | 128:90, 128:116, 128:1090 |
| 128:1125 | BER | lo | 7981/20000 | 7981/20000 | 4423 | 128:90, 128:1022, 128:1062 |
| 128:1126 | BES | lo | 309171/1000000 | 309171/1000000 | 4424 | 128:90, 128:1089, 128:1061 |
| 128:1128 | BFR | lo | 144611/500000 | 144611/500000 | 4437 | 128:126, 128:1034, 128:218 |
| 128:1129 | BHR | lo | 85883/250000 | 85883/250000 | 4442 | 128:126, 128:1098, 128:228 |
| 128:1132 | CFR | lo | 47031/125000 | 47031/125000 | 4471 | 128:1016, 128:148, 128:218 |
| 128:1133 | CHR | lo | 53459/125000 | 53459/125000 | 4476 | 128:1016, 128:1099, 128:228 |
| 128:1134 | EFQ | lo | 74379/200000 | 74379/200000 | 4489 | 128:1057, 128:178, 128:216 |
| 128:1135 | EFR | lo | 380623/1000000 | 380623/1000000 | 4490 | 128:1020, 128:178, 128:218 |
| 128:1137 | FPQ | lo | 156771/500000 | 156771/500000 | 4506 | 128:216, 128:1063, 128:1096 |
| 128:1139 | HPR | lo | 164673/500000 | 164673/500000 | 4510 | 128:228, 128:1101, 128:1094 |
| 128:1140 | ABE | lo | 96043/1000000 | 11805908250/122922436487 | 58 | 128:0, 128:38, 128:1103, 128:16, 128:27 |
| 128:1141 | CRS | lo | 761/4000 | 99264201/521756584 | 141 | 128:26, 128:126, 128:70, 128:1120, 128:13 |
| 128:1144 | ABS | lo | 136729/1000000 | 15273149213/111703250000 | 213 | 128:1140, 128:70, 128:1103, 128:1114, 128:39 |
| 128:1145 | ERS | lo | 3041/15625 | 25386675/130439146 | 216 | 128:38, 128:126, 128:70, 128:1125, 128:13 |
| 128:1146 | APQ | lo | 51829/500000 | 4429869/42735100 | 297 | 128:8, 128:1086, 128:1092, 128:116, 128:1085 |
| 128:1147 | BPR | lo | 12059/125000 | 4429869/45918400 | 297 | 128:8, 128:1086, 128:1092, 128:116, 128:1080 |
| 128:1148 | ACP | lo | 107787/1000000 | 96321309/893626000 | 365 | 128:16, 128:1092, 128:26, 128:34, 128:39 |
| 128:1149 | CFH | lo | 98481/1000000 | 34548523500/350813248141 | 402 | 128:1104, 128:204, 128:42, 128:1132, 128:49 |
| 128:1150 | CPR | lo | 18253/125000 | 224965419/1540600000 | 478 | 128:1148, 128:1141, 128:26, 128:973, 128:265 |
| 128:1151 | AHR | lo | 31799/250000 | 11366622843/89362600000 | 497 | 128:1110, 128:1042, 128:38, 128:42, 128:31 |
| 128:1152 | EFH | lo | 102707/1000000 | 36031269000/350813248141 | 499 | 128:1109, 128:204, 128:42, 128:1135, 128:49 |
| 128:1153 | AFS | lo | 27003/250000 | 238223258/2205515625 | 506 | 128:1114, 128:1077, 128:1097, 128:178, 128:1055 |
| 128:1155 | AHP | lo | 147223/1000000 | 67393348901/457763000000 | 545 | 128:34, 128:1139, 128:1092, 128:1040, 128:1112 |
| 128:1156 | AHQ | lo | 159559/1000000 | 1782326979/11170325000 | 552 | 128:1110, 128:66, 128:1111, 128:1151, 128:39 |
| 128:1157 | BFP | lo | 27283/250000 | 1563798771/14329343750 | 748 | 128:1082, 128:1137, 128:116, 128:142, 128:1067 |
| 128:1158 | BHP | lo | 56111/500000 | 1639088673/14605656250 | 783 | 128:1082, 128:1139, 128:1147, 128:150, 128:1068 |
| 128:1159 | BFS | lo | 103233/1000000 | 1821459307/17644125000 | 841 | 128:1126, 128:1077, 128:1098, 128:178, 128:1055 |
| 128:1163 | CEF | lo | 27343/250000 | 5896107/53908250 | 1006 | 128:132, 128:1134, 128:134, 128:1060, 128:1071 |
| 128:1164 | CEH | lo | 51981/500000 | 24295041/233690500 | 1040 | 128:132, 128:1133, 128:249, 128:150, 128:1068 |
| 128:1165 | EHP | lo | 26809/250000 | 6265038/58422625 | 1043 | 128:132, 128:1139, 128:150, 128:1062, 128:1068 |
| 128:1167 | AFR | lo | 141711/1000000 | 9060663953897/63937500000000 | 2151 | 128:1128, 128:13 |
| 128:1171 | AES | hi | 27897/50000 | 18194300883349/32609786500000 | 2641 | 128:13, 128:126, 128:70, 128:1144, 128:1140, 128:39 |
| 128:1180 | EHS | hi | 84689/200000 | 5523374596288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1144, 128:1110, 128:1123, 128:185 |
| 128:1182 | EQS | lo | 92949/500000 | 6062121207/32609786500 | 2666 | 128:13, 128:126, 128:70, 128:1144, 128:1111, 128:1124, 128:194 |
| 128:1185 | EFP | lo | 13533/100000 | 14567630642168781/107644751383000000 | 2752 | 128:21, 128:150, 128:1155, 128:1148, 128:1109, 128:1163, 128:1152 |
| 128:1186 | EPS | lo | 121393/1000000 | 6533707335247/53822375691500 | 2757 | 128:21, 128:150, 128:1155, 128:1148, 128:1114, 128:1102, 128:186 |
| 128:1187 | FPS | lo | 94969/1000000 | 5133262677/54051500000 | 3028 | 128:33, 128:1165, 128:1155, 128:34, 128:1153, 128:178, 128:1077 |
| 128:1188 | AFP | lo | 166009/1000000 | 148350460709/893626000000 | 3085 | 128:39, 128:1062, 128:1092, 128:34, 128:1109, 128:1167 |
| 128:1191 | CPQ | hi | 229263/500000 | 102437615505248403/223406500000000000 | 3103 | 128:39, 128:1062, 128:1092, 128:34, 128:25, 128:134, 128:165 |
| 128:1192 | CPR | hi | 467367/1000000 | 52206331027848581/111703250000000000 | 3104 | 128:39, 128:1062, 128:1092, 128:34, 128:27, 128:249 |
| 128:1195 | EPQ | hi | 53907/125000 | 3853810620219/8936260000000 | 3109 | 128:39, 128:1062, 128:1092, 128:34, 128:37, 128:195 |
| 128:1196 | FHP | lo | 24181/250000 | 86435389141/893626000000 | 3112 | 128:39, 128:1062, 128:1092, 128:34, 128:42, 128:1152, 128:204 |
| 128:1200 | FHS | lo | 9401/100000 | 84009969/893626000 | 3157 | 128:39, 128:1145, 128:70, 128:1114, 128:42, 128:1152, 128:204 |
| 128:1203 | APQ | hi | 22959/50000 | 8539827259/18598000000 | 3177 | 128:1171, 128:1186, 128:1093, 128:34, 128:37, 128:68 |
| 128:1205 | BCP | lo | 132017/1000000 | 24552527/185980000 | 3180 | 128:1171, 128:1186, 128:1093, 128:34, 128:0, 128:72, 128:1121 |
| 128:1208 | BPR | hi | 427339/1000000 | 1402526270715827/3282000000000000 | 3186 | 128:1171, 128:1186, 128:1093, 128:34, 128:1103, 128:95, 128:126 |
| 128:1209 | PQR | lo | 33367/250000 | 12411253/92990000 | 3212 | 128:1171, 128:1186, 128:1093, 128:34, 128:66, 128:194, 128:236 |
| 128:1212 | BPS | lo | 94781/1000000 | 99789227571/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:1153, 128:8, 128:1157, 128:116 |
| 128:1213 | EPQ | lo | 16227/100000 | 9457523081/58282400000 | 3372 | 128:75, 128:142, 128:1157, 128:1205, 128:1124, 128:134, 128:1134 |
| 128:1215 | APR | lo | 34287/100000 | 679691751583/1982355977000 | 3663 | 128:93, 128:1213, 128:116, 128:90, 128:1103, 128:38, 128:66 |
| 128:1216 | APS | lo | 136557/1000000 | 812114907833/5947067931000 | 3664 | 128:93, 128:1213, 128:116, 128:90, 128:1144, 128:1114, 128:68 |
| 128:1219 | PQS | lo | 15697/125000 | 23791813011/189460250000 | 3870 | 128:105, 128:218, 128:126, 128:1159, 128:116, 128:1137, 128:1209 |
| 128:1220 | AHS | lo | 137079/1000000 | 773616573199/5643549443000 | 4053 | 128:175, 128:216, 128:1182, 128:178, 128:1110, 128:42, 128:1156 |
| 128:1221 | BHS | lo | 78769/500000 | 53344587098169/338613210733000 | 4104 | 128:177, 128:218, 128:1145, 128:178, 128:1123, 128:98, 128:1129 |
| 128:1222 | CHS | lo | 144439/1000000 | 48909215606196573/338613210733000000 | 4111 | 128:177, 128:218, 128:1145, 128:178, 128:1164, 128:1149, 128:1133 |
| 128:1224 | HPS | lo | 2033/15625 | 11014438798734673/84653302683250000 | 4127 | 128:177, 128:218, 128:1145, 128:178, 128:1165, 128:1196, 128:1139 |
| 128:1225 | CES | lo | 24037/250000 | 58338528275829/606752513353000 | 4239 | 128:211, 128:1094, 128:218, 128:1187, 128:1163, 128:132, 128:249 |
| 128:1226 | ABR | lo | 322729/1000000 | 322729/1000000 | 4336 | 128:70, 128:1144, 128:126 |
| 128:1227 | ACF | lo | 91699/250000 | 91699/250000 | 4344 | 128:1188, 128:1148, 128:142 |
| 128:1232 | AEF | lo | 394339/1000000 | 394339/1000000 | 4359 | 128:1188, 128:34, 128:1185 |
| 128:1233 | AEH | lo | 347459/1000000 | 347459/1000000 | 4363 | 128:1155, 128:34, 128:1165 |
| 128:1234 | AEQ | lo | 22433/62500 | 22433/62500 | 4367 | 128:34, 128:1146, 128:1213 |
| 128:1235 | EPR | hi | 114439/250000 | 114439/250000 | 4368 | 128:34, 128:1215, 128:39 |
| 128:1237 | AES | lo | 7019/20000 | 7019/20000 | 4369 | 128:34, 128:1216, 128:1186 |
| 128:1243 | BCR | lo | 374513/1000000 | 374513/1000000 | 4408 | 128:1205, 128:1147, 128:1150 |
| 128:1246 | BEH | lo | 156229/500000 | 156229/500000 | 4418 | 128:1158, 128:90, 128:1165 |
| 128:1247 | BEQ | lo | 34827/100000 | 34827/100000 | 4422 | 128:90, 128:116, 128:1213 |
| 128:1248 | BER | lo | 199527/500000 | 199527/500000 | 4423 | 128:90, 128:1147, 128:1062 |
| 128:1249 | BES | lo | 154587/500000 | 154587/500000 | 4424 | 128:90, 128:1212, 128:1186 |
| 128:1251 | BFR | lo | 289233/1000000 | 289233/1000000 | 4437 | 128:126, 128:1159, 128:218 |
| 128:1252 | BHR | lo | 171769/500000 | 171769/500000 | 4442 | 128:126, 128:1221, 128:228 |
| 128:1255 | CFR | lo | 301/800 | 301/800 | 4471 | 128:1141, 128:148, 128:218 |
| 128:1256 | CHR | lo | 427689/1000000 | 427689/1000000 | 4476 | 128:1141, 128:1222, 128:228 |
| 128:1257 | EFQ | lo | 185949/500000 | 185949/500000 | 4489 | 128:1182, 128:178, 128:216 |
| 128:1258 | EFR | lo | 23789/62500 | 23789/62500 | 4490 | 128:1145, 128:178, 128:218 |
| 128:1260 | FPQ | lo | 62709/200000 | 62709/200000 | 4506 | 128:216, 128:1187, 128:1219 |
| 128:1262 | HPR | lo | 65871/200000 | 65871/200000 | 4510 | 128:228, 128:1224, 128:1094 |
| 128:1263 | ABE | lo | 19209/200000 | 11806105875/122922436487 | 58 | 128:0, 128:38, 128:1226, 128:16, 128:27 |
| 128:1264 | CRS | lo | 190251/1000000 | 99264759/521756584 | 141 | 128:26, 128:126, 128:70, 128:1243, 128:13 |
| 128:1267 | ABS | lo | 136739/1000000 | 2443878551/17872520000 | 213 | 128:1263, 128:70, 128:1226, 128:1237, 128:39 |
| 128:1268 | ERS | lo | 1557/8000 | 12693384/65219573 | 216 | 128:38, 128:126, 128:70, 128:1248, 128:13 |
| 128:1269 | APQ | lo | 103663/1000000 | 22149717/213669500 | 297 | 128:8, 128:1209, 128:1215, 128:116, 128:1208 |
| 128:1270 | BPR | lo | 3859/40000 | 7383239/76530000 | 297 | 128:8, 128:1209, 128:1215, 128:116, 128:1203 |
| 128:1271 | CFH | lo | 9849/100000 | 34551639000/350813248141 | 402 | 128:1227, 128:204, 128:42, 128:1255, 128:49 |
| 128:1272 | AHR | lo | 25441/200000 | 113673812349/893626000000 | 497 | 128:1233, 128:1167, 128:38, 128:42, 128:31 |
| 128:1273 | EFH | lo | 321/3125 | 36035779500/350813248141 | 499 | 128:1232, 128:204, 128:42, 128:1258, 128:49 |
| 128:1274 | AFS | lo | 108021/1000000 | 91482313/846890000 | 506 | 128:1237, 128:1200, 128:1220, 128:178, 128:1180 |
| 128:1276 | AHP | lo | 29447/200000 | 842475279/5721950000 | 545 | 128:34, 128:1262, 128:1215, 128:1165, 128:1235 |
| 128:1277 | AHQ | lo | 39893/250000 | 3564962431/22340650000 | 552 | 128:1233, 128:66, 128:1234, 128:1272, 128:39 |
| 128:1278 | BFP | lo | 109137/1000000 | 3336151351/30568400000 | 748 | 128:1205, 128:1260, 128:116, 128:142, 128:1191 |
| 128:1279 | BHP | lo | 11223/100000 | 3496842269/31157800000 | 783 | 128:1205, 128:1262, 128:1270, 128:150, 128:1192 |
| 128:1280 | BFS | lo | 2581/25000 | 2185824087/21172250000 | 841 | 128:1249, 128:1200, 128:1221, 128:178, 128:1180 |
| 128:1284 | CEF | lo | 109383/1000000 | 3931017/35938000 | 1006 | 128:132, 128:1257, 128:134, 128:1185, 128:1195 |
| 128:1285 | CEH | lo | 3249/31250 | 16197221/155789000 | 1040 | 128:132, 128:1256, 128:249, 128:150, 128:1192 |
| 128:1286 | EHP | lo | 107241/1000000 | 16707047/155789000 | 1043 | 128:132, 128:1262, 128:150, 128:1062, 128:1192 |
| 128:1288 | AFR | lo | 35429/250000 | 6040672372497/42625000000000 | 2151 | 128:1251, 128:13 |
| 128:1300 | EHS | hi | 105859/250000 | 5523258346288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1267, 128:1233, 128:1246, 128:185 |
| 128:1302 | EQS | lo | 1859/10000 | 12124347039/65219573000 | 2666 | 128:13, 128:126, 128:70, 128:1267, 128:1234, 128:1247, 128:194 |
| 128:1305 | EFP | lo | 16919/125000 | 364249202192169/2691118784575000 | 2752 | 128:21, 128:150, 128:1276, 128:1148, 128:1232, 128:1284, 128:1273 |
| 128:1306 | EPS | lo | 24279/200000 | 13067567601119/107644751383000 | 2757 | 128:21, 128:150, 128:1276, 128:1148, 128:1237, 128:1225, 128:186 |
| 128:1307 | FPS | lo | 94971/1000000 | 82133429061/864824000000 | 3028 | 128:33, 128:1286, 128:1276, 128:34, 128:1274, 128:178, 128:1200 |
| 128:1308 | AFP | lo | 3321/20000 | 14838660093/89362600000 | 3085 | 128:39, 128:1062, 128:1215, 128:34, 128:1232, 128:1288 |
| 128:1311 | CPQ | hi | 458519/1000000 | 25608980514435609/55851625000000000 | 3103 | 128:39, 128:1062, 128:1215, 128:34, 128:25, 128:134, 128:165 |
| 128:1312 | CPR | hi | 233679/500000 | 13051346904760793/27925812500000000 | 3104 | 128:39, 128:1062, 128:1215, 128:34, 128:27, 128:249 |
| 128:1315 | EPQ | hi | 69/160 | 3853756656519/8936260000000 | 3109 | 128:39, 128:1062, 128:1215, 128:34, 128:37, 128:195 |
| 128:1316 | FHP | lo | 96729/1000000 | 108049893/1117032500 | 3112 | 128:39, 128:1062, 128:1215, 128:34, 128:42, 128:1273, 128:204 |
| 128:1320 | FHS | lo | 94011/1000000 | 42005589/446813000 | 3157 | 128:39, 128:1268, 128:70, 128:1237, 128:42, 128:1273, 128:204 |
| 128:1323 | APQ | hi | 229589/500000 | 1707955173/3719600000 | 3177 | 128:1171, 128:1306, 128:1216, 128:34, 128:37, 128:68 |
| 128:1327 | BPR | hi | 106833/250000 | 1589500602826591/3719600000000000 | 3186 | 128:1171, 128:1306, 128:1216, 128:34, 128:1226, 128:95, 128:126 |
| 128:1328 | PQR | lo | 133469/1000000 | 2482263/18598000 | 3212 | 128:1171, 128:1306, 128:1216, 128:34, 128:66, 128:194, 128:236 |
| 128:1331 | EPQ | lo | 162271/1000000 | 23643889211/145706000000 | 3372 | 128:75, 128:142, 128:1278, 128:1205, 128:1247, 128:134, 128:1257 |
| 128:1332 | APR | lo | 171437/500000 | 3058647911111/8920601896500 | 3663 | 128:93, 128:1331, 128:116, 128:90, 128:1226, 128:38, 128:66 |
| 128:1333 | APS | lo | 1707/12500 | 1218202492237/8920601896500 | 3664 | 128:93, 128:1331, 128:116, 128:90, 128:1267, 128:1237, 128:68 |
| 128:1335 | PQS | lo | 125577/1000000 | 2379197939/18946025000 | 3870 | 128:105, 128:218, 128:126, 128:1280, 128:116, 128:1260, 128:1328 |
| 128:1336 | AHS | lo | 27417/200000 | 773649123199/5643549443000 | 4053 | 128:175, 128:216, 128:1302, 128:178, 128:1233, 128:42, 128:1277 |
| 128:1337 | BHS | lo | 78771/500000 | 53345842598169/338613210733000 | 4104 | 128:177, 128:218, 128:1268, 128:178, 128:1246, 128:98, 128:1252 |
| 128:1338 | CHS | lo | 144449/1000000 | 698749937501331/4837331581900000 | 4111 | 128:177, 128:218, 128:1268, 128:178, 128:1285, 128:1271, 128:1256 |
| 128:1340 | HPS | lo | 130117/1000000 | 6294233465856051/48373315819000000 | 4127 | 128:177, 128:218, 128:1268, 128:178, 128:1286, 128:1316, 128:1262 |
| 128:1341 | CES | lo | 1923/20000 | 58339700552829/606752513353000 | 4239 | 128:211, 128:1094, 128:218, 128:1307, 128:1284, 128:132, 128:249 |
| 128:1342 | ABR | lo | 322739/1000000 | 322739/1000000 | 4336 | 128:70, 128:1267, 128:126 |
| 128:1343 | ACF | lo | 366837/1000000 | 366837/1000000 | 4344 | 128:1308, 128:1148, 128:142 |
| 128:1348 | AEF | lo | 197201/500000 | 197201/500000 | 4359 | 128:1308, 128:34, 128:1305 |
| 128:1349 | AEH | lo | 86869/250000 | 86869/250000 | 4363 | 128:1276, 128:34, 128:1286 |
| 128:1350 | AEQ | lo | 179467/500000 | 179467/500000 | 4367 | 128:34, 128:1269, 128:1331 |
| 128:1351 | EPR | hi | 57219/125000 | 57219/125000 | 4368 | 128:34, 128:1332, 128:39 |
| 128:1353 | AES | lo | 70191/200000 | 70191/200000 | 4369 | 128:34, 128:1333, 128:1306 |
| 128:1361 | BEH | lo | 312471/1000000 | 312471/1000000 | 4418 | 128:1279, 128:90, 128:1286 |
| 128:1362 | BEQ | lo | 348271/1000000 | 348271/1000000 | 4422 | 128:90, 128:116, 128:1331 |
| 128:1364 | BES | lo | 38647/125000 | 38647/125000 | 4424 | 128:90, 128:1212, 128:1306 |
| 128:1366 | BFR | lo | 7231/25000 | 7231/25000 | 4437 | 128:126, 128:1280, 128:218 |
| 128:1367 | BHR | lo | 171771/500000 | 171771/500000 | 4442 | 128:126, 128:1337, 128:228 |
| 128:1370 | CFR | lo | 376251/1000000 | 376251/1000000 | 4471 | 128:1264, 128:148, 128:218 |
| 128:1371 | CHR | lo | 4277/10000 | 4277/10000 | 4476 | 128:1264, 128:1338, 128:228 |
| 128:1372 | EFQ | lo | 3719/10000 | 3719/10000 | 4489 | 128:1302, 128:178, 128:216 |
| 128:1373 | EFR | lo | 609/1600 | 609/1600 | 4490 | 128:1268, 128:178, 128:218 |
| 128:1375 | FPQ | lo | 78387/250000 | 78387/250000 | 4506 | 128:216, 128:1307, 128:1335 |
| 128:1377 | HPR | lo | 4117/12500 | 4117/12500 | 4510 | 128:228, 128:1340, 128:1094 |
| 128:1378 | ABE | lo | 48023/500000 | 11806222125/122922436487 | 58 | 128:0, 128:38, 128:1342, 128:16, 128:27 |
| 128:1381 | ABS | lo | 27349/200000 | 24439828749/178725200000 | 213 | 128:1378, 128:70, 128:1342, 128:1353, 128:39 |
| 128:1382 | APQ | lo | 51833/500000 | 14766633/142444000 | 297 | 128:8, 128:1328, 128:1332, 128:116, 128:1327 |
| 128:1383 | BPR | lo | 24119/250000 | 44299899/459178000 | 297 | 128:8, 128:1328, 128:1332, 128:116, 128:1323 |
| 128:1384 | ACP | lo | 26947/250000 | 24080583/223406500 | 365 | 128:16, 128:1332, 128:26, 128:34, 128:39 |
| 128:1385 | CFH | lo | 19699/200000 | 34553592000/350813248141 | 402 | 128:1343, 128:204, 128:42, 128:1370, 128:49 |
| 128:1386 | CPR | lo | 5841/40000 | 44993232819/308120000000 | 478 | 128:1384, 128:1264, 128:26, 128:973, 128:265 |
| 128:1388 | EFH | lo | 102729/1000000 | 36038755500/350813248141 | 499 | 128:1348, 128:204, 128:42, 128:1373, 128:49 |
| 128:1389 | AFS | lo | 108027/1000000 | 9148507101/84687200000 | 506 | 128:1353, 128:1320, 128:1336, 128:178, 128:1300 |
| 128:1391 | AHP | lo | 73621/500000 | 11233438439/76292000000 | 545 | 128:34, 128:1377, 128:1332, 128:1286, 128:1351 |
| 128:1393 | BFP | lo | 109139/1000000 | 12510666579/114629750000 | 748 | 128:1205, 128:1375, 128:116, 128:142, 128:1311 |
| 128:1394 | BHP | lo | 112233/1000000 | 655667339/5841975000 | 783 | 128:1205, 128:1377, 128:1383, 128:150, 128:1312 |
| 128:1395 | BFS | lo | 25811/250000 | 5464668867/52929500000 | 841 | 128:1364, 128:1320, 128:1337, 128:178, 128:1300 |
| 128:1399 | CEF | lo | 109389/1000000 | 3931203/35937500 | 1006 | 128:132, 128:1372, 128:134, 128:1305, 128:1315 |
| 128:1400 | CEH | lo | 103973/1000000 | 8098781/77893000 | 1040 | 128:132, 128:1371, 128:249, 128:150, 128:1312 |
| 128:1401 | EHP | lo | 26811/250000 | 8353601/77893000 | 1043 | 128:132, 128:1377, 128:150, 128:1062, 128:1312 |
| 128:1403 | AFR | lo | 3543/25000 | 453061392637/3196875000000 | 2151 | 128:1366, 128:13 |
| 128:1415 | EHS | hi | 423431/1000000 | 5523188596288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1381, 128:1349, 128:1361, 128:185 |
| 128:1417 | EQS | lo | 185901/1000000 | 6062214207/32609786500 | 2666 | 128:13, 128:126, 128:70, 128:1381, 128:1350, 128:1362, 128:194 |
| 128:1420 | EFP | lo | 67683/500000 | 14571515254824207/107644751383000000 | 2752 | 128:21, 128:150, 128:1391, 128:1384, 128:1348, 128:1399, 128:1388 |
| 128:1421 | EPS | lo | 30349/250000 | 13067665291119/107644751383000 | 2757 | 128:21, 128:150, 128:1391, 128:1384, 128:1353, 128:1341, 128:186 |
| 128:1422 | FPS | lo | 23743/250000 | 20533552647/216206000000 | 3028 | 128:33, 128:1401, 128:1391, 128:34, 128:1389, 128:178, 128:1320 |
| 128:1423 | AFP | lo | 41519/250000 | 37102537837/223406500000 | 3085 | 128:39, 128:1062, 128:1332, 128:34, 128:1348, 128:1403 |
| 128:1427 | CPR | hi | 467353/1000000 | 6525606066037153/13962906250000000 | 3104 | 128:39, 128:1062, 128:1332, 128:34, 128:27, 128:249 |
| 128:1430 | EPQ | hi | 215623/500000 | 3853725820119/8936260000000 | 3109 | 128:39, 128:1062, 128:1332, 128:34, 128:37, 128:195 |
| 128:1431 | FHP | lo | 24183/250000 | 43221519573/446813000000 | 3112 | 128:39, 128:1062, 128:1332, 128:34, 128:42, 128:1388, 128:204 |
| 128:1434 | FHS | lo | 23503/250000 | 16802403/178725200 | 3157 | 128:39, 128:1268, 128:70, 128:1353, 128:42, 128:1388, 128:204 |
| 128:1437 | APQ | hi | 57397/125000 | 1067468771/2324750000 | 3177 | 128:1171, 128:1421, 128:1333, 128:34, 128:37, 128:68 |
| 128:1443 | BPS | lo | 47391/500000 | 99790041321/1052837447000 | 3228 | 128:47, 128:216, 128:68, 128:1389, 128:8, 128:1393, 128:116 |
| 128:1445 | APR | lo | 85719/250000 | 1529334097493/4460300948250 | 3663 | 128:93, 128:1331, 128:116, 128:90, 128:1342, 128:38, 128:66 |
| 128:1446 | APS | lo | 68281/500000 | 609110237531/4460300948250 | 3664 | 128:93, 128:1331, 128:116, 128:90, 128:1381, 128:1353, 128:68 |
| 128:1448 | PQS | lo | 62789/500000 | 23792089609/189460250000 | 3870 | 128:105, 128:218, 128:126, 128:1395, 128:116, 128:1375, 128:1328 |
| 128:1450 | BHS | lo | 19693/125000 | 53346633098169/338613210733000 | 4104 | 128:177, 128:218, 128:1268, 128:178, 128:1361, 128:98, 128:1367 |
| 128:1451 | CHS | lo | 28891/200000 | 9782893538229367/67722642146600000 | 4111 | 128:177, 128:218, 128:1268, 128:178, 128:1400, 128:1385, 128:1371 |
| 128:1452 | HPS | lo | 130121/1000000 | 11015185775156139/84653302683250000 | 4127 | 128:177, 128:218, 128:1268, 128:178, 128:1401, 128:1431, 128:1377 |
| 128:1454 | ABR | lo | 64549/200000 | 64549/200000 | 4336 | 128:70, 128:1381, 128:126 |
| 128:1455 | ACF | lo | 22929/62500 | 22929/62500 | 4344 | 128:1423, 128:1384, 128:142 |
| 128:1460 | AEF | lo | 197221/500000 | 197221/500000 | 4359 | 128:1423, 128:34, 128:1420 |
| 128:1461 | AEH | lo | 173743/500000 | 173743/500000 | 4363 | 128:1391, 128:34, 128:1401 |
| 128:1462 | AEQ | lo | 358937/1000000 | 358937/1000000 | 4367 | 128:34, 128:1382, 128:1331 |
| 128:1463 | EPR | hi | 1831/4000 | 1831/4000 | 4368 | 128:34, 128:1445, 128:39 |
| 128:1465 | AES | lo | 175479/500000 | 175479/500000 | 4369 | 128:34, 128:1446, 128:1421 |
| 128:1472 | BCS | lo | 8177/25000 | 8177/25000 | 4409 | 128:1205, 128:1443, 128:973 |
| 128:1474 | BEH | lo | 312477/1000000 | 312477/1000000 | 4418 | 128:1394, 128:90, 128:1401 |
| 128:1475 | BER | lo | 199529/500000 | 199529/500000 | 4423 | 128:90, 128:1383, 128:1062 |
| 128:1476 | BES | lo | 154589/500000 | 154589/500000 | 4424 | 128:90, 128:1443, 128:1421 |
| 128:1478 | BFR | lo | 72311/250000 | 72311/250000 | 4437 | 128:126, 128:1395, 128:218 |
| 128:1479 | BHR | lo | 42943/125000 | 42943/125000 | 4442 | 128:126, 128:1450, 128:228 |
| 128:1482 | CHR | lo | 213853/500000 | 213853/500000 | 4476 | 128:1264, 128:1451, 128:228 |
| 128:1483 | EFQ | lo | 371901/1000000 | 371901/1000000 | 4489 | 128:1417, 128:178, 128:216 |
| 128:1486 | HPR | lo | 82341/250000 | 82341/250000 | 4510 | 128:228, 128:1452, 128:1094 |
| 128:1489 | ABS | lo | 34187/250000 | 12220221771/89362600000 | 213 | 128:1378, 128:70, 128:1454, 128:1465, 128:39 |
| 128:1490 | ERS | lo | 97313/500000 | 25386861/130439146 | 216 | 128:38, 128:126, 128:70, 128:1475, 128:13 |
| 128:1492 | BPR | lo | 96477/1000000 | 8860017/91835200 | 297 | 128:8, 128:1328, 128:1445, 128:116, 128:1437 |
| 128:1493 | CFH | lo | 98499/1000000 | 34554847500/350813248141 | 402 | 128:1455, 128:204, 128:42, 128:1370, 128:49 |
| 128:1494 | AHR | lo | 31803/250000 | 710504787/5585162500 | 497 | 128:1461, 128:1403, 128:38, 128:42, 128:31 |
| 128:1495 | EFH | lo | 51367/500000 | 36040615500/350813248141 | 499 | 128:1460, 128:204, 128:42, 128:1373, 128:49 |
| 128:1497 | AFP | lo | 41523/250000 | 18553081899/111703250000 | 512 | 128:1460, 128:1445, 128:34, 128:1403, 128:39 |
| 128:1498 | AHP | lo | 73623/500000 | 4212640359/28609375000 | 545 | 128:34, 128:1486, 128:1445, 128:1401, 128:1463 |
| 128:1499 | AHQ | lo | 31917/200000 | 35652421911/223406500000 | 552 | 128:1461, 128:66, 128:1462, 128:1494, 128:39 |
| 128:1501 | BHP | lo | 28059/250000 | 13113502047/116838250000 | 783 | 128:1205, 128:1486, 128:1492, 128:150, 128:1427 |
| 128:1502 | BFS | lo | 103247/1000000 | 5464754267/52928875000 | 841 | 128:1476, 128:1434, 128:1450, 128:178, 128:1415 |
| 128:1506 | CEF | lo | 54697/500000 | 47175831/431246000 | 1006 | 128:132, 128:1483, 128:134, 128:1420, 128:1430 |
| 128:1507 | CEH | lo | 4159/40000 | 12148311/116838250 | 1040 | 128:132, 128:1482, 128:249, 128:150, 128:1427 |
| 128:1508 | EHP | lo | 53623/500000 | 25060989/233676500 | 1043 | 128:132, 128:1486, 128:150, 128:1062, 128:1427 |
| 128:1510 | AFR | lo | 70861/500000 | 4530676581797/31968750000000 | 2151 | 128:1478, 128:13 |
| 128:1521 | EHS | hi | 105857/250000 | 5523151396288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1489, 128:1461, 128:1474, 128:185 |
| 128:1523 | EQS | lo | 92951/500000 | 12124463289/65219573000 | 2666 | 128:13, 128:126, 128:70, 128:1489, 128:1462, 128:1362, 128:194 |
| 128:1526 | EFP | lo | 1083/8000 | 7286231841790561/53822375691500000 | 2752 | 128:21, 128:150, 128:1498, 128:1384, 128:1460, 128:1506, 128:1495 |
| 128:1527 | EPR | lo | 209583/1000000 | 403604579/1925750000 | 2933 | 128:265, 128:973, 128:1446, 128:1384, 128:38, 128:249, 128:1490 |
| 128:1531 | CPR | hi | 467351/1000000 | 208818315931697/446813000000000 | 3104 | 128:39, 128:1527, 128:1445, 128:34, 128:27, 128:249 |
| 128:1534 | EPQ | hi | 86249/200000 | 3853710401919/8936260000000 | 3109 | 128:39, 128:1527, 128:1445, 128:34, 128:37, 128:195 |
| 128:1535 | FHP | lo | 48367/500000 | 10805596623/111703250000 | 3112 | 128:39, 128:1527, 128:1445, 128:34, 128:42, 128:1495, 128:204 |
| 128:1539 | FHS | lo | 94013/1000000 | 1050156/11170325 | 3157 | 128:39, 128:1490, 128:70, 128:1465, 128:42, 128:1495, 128:204 |
| 128:1542 | APR | lo | 171439/500000 | 3058680365311/8920601896500 | 3663 | 128:93, 128:1331, 128:116, 128:90, 128:1454, 128:38, 128:66 |
| 128:1543 | APS | lo | 136563/1000000 | 2436460095449/17841203793000 | 3664 | 128:93, 128:1331, 128:116, 128:90, 128:1489, 128:1465, 128:68 |
| 128:1544 | AHS | lo | 137091/1000000 | 773680123199/5643549443000 | 4053 | 128:175, 128:216, 128:1523, 128:178, 128:1461, 128:42, 128:1499 |
| 128:1545 | BHS | lo | 31509/200000 | 53347005098169/338613210733000 | 4104 | 128:177, 128:218, 128:1490, 128:178, 128:1474, 128:98, 128:1479 |
| 128:1546 | CHS | lo | 144459/1000000 | 48915822143989767/338613210733000000 | 4111 | 128:177, 128:218, 128:1490, 128:178, 128:1507, 128:1493, 128:1482 |
| 128:1548 | HPS | lo | 130123/1000000 | 22030756663523011/169306605366500000 | 4127 | 128:177, 128:218, 128:1490, 128:178, 128:1508, 128:1535, 128:1486 |
| 128:1549 | CES | lo | 12019/125000 | 58340871027829/606752513353000 | 4239 | 128:211, 128:1094, 128:218, 128:1422, 128:1506, 128:132, 128:249 |
| 128:1550 | ABR | lo | 80687/250000 | 80687/250000 | 4336 | 128:70, 128:1489, 128:126 |
| 128:1551 | ACF | lo | 2293/6250 | 2293/6250 | 4344 | 128:1497, 128:1384, 128:142 |
| 128:1556 | AEF | lo | 394467/1000000 | 394467/1000000 | 4359 | 128:1497, 128:34, 128:1526 |
| 128:1557 | AEH | lo | 86873/250000 | 86873/250000 | 4363 | 128:1498, 128:34, 128:1508 |
| 128:1559 | EPR | hi | 114437/250000 | 114437/250000 | 4368 | 128:34, 128:1542, 128:39 |
| 128:1561 | AES | lo | 350959/1000000 | 350959/1000000 | 4369 | 128:34, 128:1543, 128:1421 |
| 128:1567 | BCR | lo | 374519/1000000 | 374519/1000000 | 4408 | 128:1205, 128:1492, 128:1386 |
| 128:1569 | BEH | lo | 156241/500000 | 156241/500000 | 4418 | 128:1501, 128:90, 128:1508 |
| 128:1572 | BFR | lo | 289247/1000000 | 289247/1000000 | 4437 | 128:126, 128:1502, 128:218 |
| 128:1573 | BHR | lo | 68709/200000 | 68709/200000 | 4442 | 128:126, 128:1545, 128:228 |
| 128:1576 | CHR | lo | 42771/100000 | 42771/100000 | 4476 | 128:1264, 128:1546, 128:228 |
| 128:1577 | EFQ | lo | 185951/500000 | 185951/500000 | 4489 | 128:1523, 128:178, 128:216 |
| 128:1578 | EFR | lo | 190313/500000 | 190313/500000 | 4490 | 128:1490, 128:178, 128:218 |
| 128:1580 | HPR | lo | 164683/500000 | 164683/500000 | 4510 | 128:228, 128:1548, 128:1094 |
| 128:1581 | CRS | lo | 47563/250000 | 99265317/521756584 | 141 | 128:26, 128:126, 128:70, 128:1567, 128:13 |
| 128:1584 | ABS | lo | 547/4000 | 30550898333/223406500000 | 213 | 128:1378, 128:70, 128:1550, 128:1561, 128:39 |
| 128:1586 | CFH | lo | 98501/1000000 | 34555591500/350813248141 | 402 | 128:1551, 128:204, 128:42, 128:1370, 128:49 |
| 128:1588 | EFH | lo | 102737/1000000 | 36041824500/350813248141 | 499 | 128:1556, 128:204, 128:42, 128:1578, 128:49 |
| 128:1589 | AFS | lo | 1688/15625 | 45744171467/423428000000 | 506 | 128:1561, 128:1539, 128:1544, 128:178, 128:1521 |
| 128:1590 | AFP | lo | 166103/1000000 | 74217101013/446813000000 | 512 | 128:1556, 128:1542, 128:34, 128:1510, 128:39 |
| 128:1591 | AHP | lo | 147249/1000000 | 16850832997/114437000000 | 545 | 128:34, 128:1580, 128:1542, 128:1508, 128:1559 |
| 128:1595 | BFS | lo | 6453/62500 | 21859218157/211714000000 | 841 | 128:1476, 128:1539, 128:1545, 128:178, 128:1521 |
| 128:1599 | CEF | lo | 27349/250000 | 47176761/431245000 | 1006 | 128:132, 128:1577, 128:134, 128:1526, 128:1534 |
| 128:1600 | CEH | lo | 12997/125000 | 6074202/58418875 | 1040 | 128:132, 128:1576, 128:249, 128:150, 128:1531 |
| 128:1601 | EHP | lo | 107247/1000000 | 50122257/467351000 | 1043 | 128:132, 128:1580, 128:150, 128:1527, 128:1531 |
| 128:1602 | AFR | lo | 141723/1000000 | 18122894293469/127875000000000 | 2151 | 128:1572, 128:13 |
| 128:1613 | EHS | hi | 211713/500000 | 5523125821288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1584, 128:1557, 128:1569, 128:185 |
| 128:1616 | EFP | lo | 6769/50000 | 1121002035323867/8280365491000000 | 2752 | 128:21, 128:150, 128:1591, 128:1384, 128:1556, 128:1599, 128:1588 |
| 128:1617 | EPS | lo | 121397/1000000 | 13067751359619/107644751383000 | 2757 | 128:21, 128:150, 128:1591, 128:1384, 128:1561, 128:1549, 128:186 |
| 128:1618 | FPS | lo | 94973/1000000 | 5133436119/54051500000 | 3028 | 128:33, 128:1601, 128:1591, 128:34, 128:1589, 128:178, 128:1539 |
| 128:1621 | CPQ | hi | 45851/100000 | 25608496672291047/55851625000000000 | 3103 | 128:39, 128:1527, 128:1542, 128:34, 128:25, 128:134, 128:165 |
| 128:1622 | CPR | hi | 467349/1000000 | 13051077359387819/27925812500000000 | 3104 | 128:39, 128:1527, 128:1542, 128:34, 128:27, 128:249 |
| 128:1625 | EPQ | hi | 431243/1000000 | 3853694983719/8936260000000 | 3109 | 128:39, 128:1527, 128:1542, 128:34, 128:37, 128:195 |
| 128:1626 | FHP | lo | 3023/31250 | 43222910543/446813000000 | 3112 | 128:39, 128:1527, 128:1542, 128:34, 128:42, 128:1588, 128:204 |
| 128:1631 | APQ | hi | 18367/40000 | 8539724471/18598000000 | 3177 | 128:1171, 128:1617, 128:1543, 128:34, 128:37, 128:68 |
| 128:1635 | BPR | hi | 427323/1000000 | 23842047196428671/55794000000000000 | 3186 | 128:1171, 128:1617, 128:1543, 128:34, 128:1550, 128:95, 128:126 |
| 128:1636 | PQR | lo | 13347/100000 | 730081/5470000 | 3212 | 128:1171, 128:1617, 128:1543, 128:34, 128:66, 128:194, 128:236 |
| 128:1638 | APS | lo | 34141/250000 | 2436470533999/17841203793000 | 3664 | 128:93, 128:1331, 128:116, 128:90, 128:1584, 128:1561, 128:68 |
| 128:1641 | BHS | lo | 78773/500000 | 53347284098169/338613210733000 | 4104 | 128:177, 128:218, 128:1490, 128:178, 128:1569, 128:98, 128:1573 |
| 128:1642 | CHS | lo | 144461/1000000 | 6988077981487319/48373315819000000 | 4111 | 128:177, 128:218, 128:1490, 128:178, 128:1600, 128:1586, 128:1576 |
| 128:1643 | HPS | lo | 1041/8000 | 1376942001670859/10581662835406250 | 4127 | 128:177, 128:218, 128:1490, 128:178, 128:1601, 128:1626, 128:1580 |
| 128:1644 | CES | lo | 96153/1000000 | 58341085315829/606752513353000 | 4239 | 128:211, 128:1094, 128:218, 128:1618, 128:1599, 128:132, 128:249 |
| 128:1645 | ABR | lo | 1291/4000 | 1291/4000 | 4336 | 128:70, 128:1584, 128:126 |
| 128:1646 | ACF | lo | 366891/1000000 | 366891/1000000 | 4344 | 128:1590, 128:1384, 128:142 |
| 128:1651 | AEF | lo | 394483/1000000 | 394483/1000000 | 4359 | 128:1590, 128:34, 128:1616 |
| 128:1655 | AES | lo | 350961/1000000 | 350961/1000000 | 4369 | 128:34, 128:1638, 128:1617 |
| 128:1662 | BES | lo | 309179/1000000 | 309179/1000000 | 4424 | 128:90, 128:1443, 128:1617 |
| 128:1664 | BFR | lo | 9039/31250 | 9039/31250 | 4437 | 128:126, 128:1595, 128:218 |
| 128:1665 | BHR | lo | 171773/500000 | 171773/500000 | 4442 | 128:126, 128:1641, 128:228 |
| 128:1668 | CFR | lo | 94063/250000 | 94063/250000 | 4471 | 128:1581, 128:148, 128:218 |
| 128:1669 | CHR | lo | 427713/1000000 | 427713/1000000 | 4476 | 128:1581, 128:1642, 128:228 |
| 128:1670 | FPQ | lo | 313551/1000000 | 313551/1000000 | 4506 | 128:216, 128:1618, 128:1448 |
| 128:1672 | HPR | lo | 41171/125000 | 41171/125000 | 4510 | 128:228, 128:1643, 128:1094 |
| 128:1673 | ABE | lo | 96047/1000000 | 11806350000/122922436487 | 58 | 128:0, 128:38, 128:1645, 128:16, 128:27 |
| 128:1675 | ABS | lo | 136751/1000000 | 97764027/714900800 | 213 | 128:1673, 128:70, 128:1645, 128:1655, 128:39 |
| 128:1676 | APQ | lo | 103669/1000000 | 3691697/35610250 | 297 | 128:8, 128:1636, 128:1542, 128:116, 128:1635 |
| 128:1677 | BPR | lo | 48239/500000 | 11075091/114793750 | 297 | 128:8, 128:1636, 128:1542, 128:116, 128:1631 |
| 128:1678 | CFH | lo | 49251/500000 | 34556149500/350813248141 | 402 | 128:1646, 128:204, 128:42, 128:1668, 128:49 |
| 128:1680 | EFH | lo | 5137/50000 | 36042568500/350813248141 | 499 | 128:1651, 128:204, 128:42, 128:1578, 128:49 |
| 128:1682 | AFP | lo | 166109/1000000 | 74219890537/446813000000 | 512 | 128:1651, 128:1542, 128:34, 128:1602, 128:39 |
| 128:1683 | AHP | lo | 147251/1000000 | 33701930433/228874000000 | 545 | 128:34, 128:1672, 128:1542, 128:1601, 128:1559 |
| 128:1685 | BHP | lo | 56119/500000 | 6556828657/58418625000 | 783 | 128:1205, 128:1672, 128:1677, 128:150, 128:1622 |
| 128:1686 | BFS | lo | 103249/1000000 | 43718623327/423426000000 | 841 | 128:1662, 128:1539, 128:1641, 128:178, 128:1613 |
| 128:1687 | CEF | lo | 54699/500000 | 23588613/215621500 | 1006 | 128:132, 128:1577, 128:134, 128:1616, 128:1625 |
| 128:1688 | CEH | lo | 103977/1000000 | 3239593/31156600 | 1040 | 128:132, 128:1669, 128:249, 128:150, 128:1622 |
| 128:1689 | EHP | lo | 6703/62500 | 16707481/155783000 | 1043 | 128:132, 128:1672, 128:150, 128:1527, 128:1622 |
| 128:1691 | AFR | lo | 35431/250000 | 188780801551/1332031250000 | 2151 | 128:1664, 128:13 |
| 128:1704 | EFP | lo | 16923/125000 | 728674188841971/5382237569150000 | 2752 | 128:21, 128:150, 128:1683, 128:1384, 128:1651, 128:1687, 128:1680 |
| 128:1705 | FHP | lo | 96737/1000000 | 2161171243/22340650000 | 3112 | 128:39, 128:1527, 128:1542, 128:34, 128:42, 128:1680, 128:204 |
| 128:1709 | APR | lo | 342879/1000000 | 6117381014497/17841203793000 | 3663 | 128:93, 128:1331, 128:116, 128:90, 128:1645, 128:38, 128:66 |
| 128:1710 | PQS | lo | 125579/1000000 | 1359556329/10826300000 | 3870 | 128:105, 128:218, 128:126, 128:1686, 128:116, 128:1670, 128:1636 |
| 128:1712 | CHS | lo | 72231/500000 | 24458488741810983/169306605366500000 | 4111 | 128:177, 128:218, 128:1490, 128:178, 128:1688, 128:1678, 128:1669 |
| 128:1713 | HPS | lo | 65063/500000 | 44062529166678221/338613210733000000 | 4127 | 128:177, 128:218, 128:1490, 128:178, 128:1689, 128:1705, 128:1672 |
| 128:1714 | ABR | lo | 322751/1000000 | 322751/1000000 | 4336 | 128:70, 128:1675, 128:126 |
| 128:1715 | ACF | lo | 366897/1000000 | 366897/1000000 | 4344 | 128:1682, 128:1384, 128:142 |
| 128:1718 | AEF | lo | 394493/1000000 | 394493/1000000 | 4359 | 128:1682, 128:34, 128:1704 |
| 128:1719 | AEH | lo | 347499/1000000 | 347499/1000000 | 4363 | 128:1683, 128:34, 128:1689 |
| 128:1720 | AEQ | lo | 17947/50000 | 17947/50000 | 4367 | 128:34, 128:1676, 128:1331 |
| 128:1721 | EPR | hi | 457747/1000000 | 457747/1000000 | 4368 | 128:34, 128:1709, 128:39 |
| 128:1725 | BCR | lo | 9363/25000 | 9363/25000 | 4408 | 128:1205, 128:1677, 128:1386 |
| 128:1727 | BEH | lo | 156243/500000 | 156243/500000 | 4418 | 128:1685, 128:90, 128:1689 |
| 128:1728 | BER | lo | 399061/1000000 | 399061/1000000 | 4423 | 128:90, 128:1677, 128:1527 |
| 128:1731 | CHR | lo | 213857/500000 | 213857/500000 | 4476 | 128:1581, 128:1712, 128:228 |
| 128:1732 | FPQ | lo | 19597/62500 | 19597/62500 | 4506 | 128:216, 128:1618, 128:1710 |
| 128:1733 | HPR | lo | 329369/1000000 | 329369/1000000 | 4510 | 128:228, 128:1713, 128:1094 |
| 128:1736 | ABS | lo | 8547/62500 | 122205384711/893626000000 | 213 | 128:1673, 128:70, 128:1714, 128:1655, 128:39 |
| 128:1737 | CFH | lo | 98503/1000000 | 34556428500/350813248141 | 402 | 128:1715, 128:204, 128:42, 128:1668, 128:49 |
| 128:1738 | AHR | lo | 7951/62500 | 28420999569/223406500000 | 497 | 128:1719, 128:1691, 128:38, 128:42, 128:31 |
| 128:1739 | EFH | lo | 102741/1000000 | 36043033500/350813248141 | 499 | 128:1718, 128:204, 128:42, 128:1578, 128:49 |
| 128:1740 | AFP | lo | 166113/1000000 | 148443697347/893626000000 | 512 | 128:1718, 128:1709, 128:34, 128:1691, 128:39 |
| 128:1741 | AHP | lo | 36813/250000 | 8425550499/57218375000 | 545 | 128:34, 128:1733, 128:1709, 128:1689, 128:1721 |
| 128:1743 | BFP | lo | 109143/1000000 | 3127699649/28656875000 | 748 | 128:1205, 128:1732, 128:116, 128:142, 128:1621 |
| 128:1745 | CEF | lo | 109399/1000000 | 23588799/215621500 | 1006 | 128:132, 128:1577, 128:134, 128:1704, 128:1625 |
| 128:1752 | EHS | hi | 6616/15625 | 5523100246288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1736, 128:1719, 128:1727, 128:185 |
| 128:1754 | EFP | lo | 67693/500000 | 14573696878840803/107644751383000000 | 2752 | 128:21, 128:150, 128:1741, 128:1384, 128:1718, 128:1745, 128:1739 |
| 128:1757 | CPR | hi | 467347/1000000 | 52204174664864789/111703250000000000 | 3104 | 128:39, 128:1527, 128:1709, 128:34, 128:27, 128:249 |
| 128:1760 | EPQ | hi | 215621/500000 | 3853687274619/8936260000000 | 3109 | 128:39, 128:1527, 128:1709, 128:34, 128:37, 128:195 |
| 128:1761 | BHS | lo | 157547/1000000 | 53347516598169/338613210733000 | 4104 | 128:177, 128:218, 128:1490, 128:178, 128:1727, 128:98, 128:1665 |
| 128:1762 | CHS | lo | 144463/1000000 | 48917269596832699/338613210733000000 | 4111 | 128:177, 128:218, 128:1490, 128:178, 128:1688, 128:1737, 128:1731 |
| 128:1763 | ABR | lo | 5043/15625 | 5043/15625 | 4336 | 128:70, 128:1736, 128:126 |
| 128:1764 | ACF | lo | 366901/1000000 | 366901/1000000 | 4344 | 128:1740, 128:1384, 128:142 |
| 128:1766 | AEF | lo | 394499/1000000 | 394499/1000000 | 4359 | 128:1740, 128:34, 128:1754 |
| 128:1770 | BHR | lo | 343547/1000000 | 343547/1000000 | 4442 | 128:126, 128:1761, 128:228 |
| 128:1773 | CHR | lo | 85543/200000 | 85543/200000 | 4476 | 128:1581, 128:1762, 128:228 |
| 128:1774 | CFH | lo | 12313/125000 | 34556614500/350813248141 | 402 | 128:1764, 128:204, 128:42, 128:1668, 128:49 |
| 128:1775 | EFH | lo | 51371/500000 | 36043312500/350813248141 | 499 | 128:1766, 128:204, 128:42, 128:1578, 128:49 |
| 128:1776 | AFP | lo | 41529/250000 | 148445754621/893626000000 | 512 | 128:1766, 128:1709, 128:34, 128:1691, 128:39 |
| 128:1777 | BHP | lo | 112239/1000000 | 52454761273/467347000000 | 783 | 128:1205, 128:1733, 128:1677, 128:150, 128:1757 |
| 128:1778 | BFS | lo | 413/4000 | 43718716327/423424000000 | 841 | 128:1662, 128:1539, 128:1761, 128:178, 128:1752 |
| 128:1780 | CEH | lo | 51989/500000 | 48594081/467347000 | 1040 | 128:132, 128:1773, 128:249, 128:150, 128:1757 |
| 128:1781 | EHP | lo | 107249/1000000 | 6265317/58418375 | 1043 | 128:132, 128:1733, 128:150, 128:1527, 128:1757 |
| 128:1787 | EFP | lo | 33847/250000 | 7286922121046093/53822375691500000 | 2752 | 128:21, 128:150, 128:1741, 128:1384, 128:1766, 128:1745, 128:1775 |
| 128:1790 | CHS | lo | 9029/62500 | 6114701026255429/42326651341625000 | 4111 | 128:177, 128:218, 128:1490, 128:178, 128:1780, 128:1774, 128:1773 |
| 128:1792 | AEF | lo | 49313/125000 | 49313/125000 | 4359 | 128:1776, 128:34, 128:1787 |
| 128:1793 | AEH | lo | 347501/1000000 | 347501/1000000 | 4363 | 128:1741, 128:34, 128:1781 |
| 128:1796 | BEH | lo | 39061/125000 | 39061/125000 | 4418 | 128:1777, 128:90, 128:1781 |
| 128:1798 | BFR | lo | 1157/4000 | 1157/4000 | 4437 | 128:126, 128:1778, 128:218 |
| 128:1799 | CHR | lo | 106929/250000 | 106929/250000 | 4476 | 128:1581, 128:1790, 128:228 |
| 128:1800 | AFP | lo | 83059/500000 | 18555933627/111703250000 | 512 | 128:1792, 128:1709, 128:34, 128:1691, 128:39 |
| 128:1801 | AHP | lo | 147253/1000000 | 67404746871/457747000000 | 545 | 128:34, 128:1733, 128:1709, 128:1781, 128:1721 |
| 128:1802 | AHQ | lo | 19949/125000 | 3565392251/22340650000 | 552 | 128:1793, 128:66, 128:1720, 128:1738, 128:39 |
| 128:1804 | CEF | lo | 547/5000 | 673971/6160600 | 1006 | 128:132, 128:1577, 128:134, 128:1787, 128:1760 |
| 128:1808 | EHS | hi | 423423/1000000 | 5523090946288831573/13043914600000000000 | 2664 | 128:13, 128:126, 128:70, 128:1736, 128:1793, 128:1796, 128:185 |
| 128:1811 | EFP | lo | 135389/1000000 | 7286960802921093/53822375691500000 | 2752 | 128:21, 128:150, 128:1801, 128:1384, 128:1792, 128:1804, 128:1775 |
| 128:1812 | AHS | lo | 68547/500000 | 773697173199/5643549443000 | 4053 | 128:175, 128:216, 128:1523, 128:178, 128:1793, 128:42, 128:1802 |
| 128:1815 | AEF | lo | 394507/1000000 | 394507/1000000 | 4359 | 128:1800, 128:34, 128:1811 |
| 128:1816 | AEH | lo | 173751/500000 | 173751/500000 | 4363 | 128:1801, 128:34, 128:1781 |
| 128:1819 | EFH | lo | 102743/1000000 | 36043684500/350813248141 | 499 | 128:1815, 128:204, 128:42, 128:1578, 128:49 |
| 128:1820 | AFS | lo | 21607/200000 | 15248212831/141141000000 | 506 | 128:1655, 128:1539, 128:1812, 128:178, 128:1808 |
| 128:1821 | AFP | lo | 166119/1000000 | 148448497653/893626000000 | 512 | 128:1815, 128:1709, 128:34, 128:1691, 128:39 |
| 128:1826 | EFP | lo | 13539/100000 | 14574034093968569/107644751383000000 | 2752 | 128:21, 128:150, 128:1801, 128:1384, 128:1815, 128:1804, 128:1819 |
| 128:1827 | FHP | lo | 48369/500000 | 86447888097/893626000000 | 3112 | 128:39, 128:1527, 128:1709, 128:34, 128:42, 128:1819, 128:204 |
| 128:1828 | HPS | lo | 130127/1000000 | 22031433889944477/169306605366500000 | 4127 | 128:177, 128:218, 128:1490, 128:178, 128:1781, 128:1827, 128:1733 |
| 128:1829 | ACF | lo | 366907/1000000 | 366907/1000000 | 4344 | 128:1821, 128:1384, 128:142 |
| 128:1830 | AEF | lo | 394509/1000000 | 394509/1000000 | 4359 | 128:1821, 128:34, 128:1826 |
| 128:1833 | HPR | lo | 32937/100000 | 32937/100000 | 4510 | 128:228, 128:1828, 128:1094 |
| 128:1834 | CFH | lo | 19701/200000 | 34556893500/350813248141 | 402 | 128:1829, 128:204, 128:42, 128:1668, 128:49 |
| 128:1835 | AFP | lo | 4153/25000 | 148449183411/893626000000 | 512 | 128:1830, 128:1709, 128:34, 128:1691, 128:39 |
| 128:1836 | CHS | lo | 28893/200000 | 1397654294950119/9674663163800000 | 4111 | 128:177, 128:218, 128:1490, 128:178, 128:1780, 128:1834, 128:1799 |
| 128:1837 | ACF | lo | 91727/250000 | 91727/250000 | 4344 | 128:1835, 128:1384, 128:142 |
| 128:1838 | AEF | lo | 39451/100000 | 39451/100000 | 4359 | 128:1835, 128:34, 128:1826 |
| 128:1839 | CHR | lo | 427717/1000000 | 427717/1000000 | 4476 | 128:1581, 128:1836, 128:228 |

## Stage 129

| Property | Value |
| --- | --- |
| Scope | root/APQ+/AQS+/ARS-/CRS+/BRS+/BPQ+ |
| Packet | forest:root/APQ+/AQS+/ARS-/CRS+/BRS+/BPQ+ |
| Index | 2 |
| Context | 24 |
| Box present | yes |
| Parent box | 128 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 53187/500000 | 33/125 | 10671/100000 | 33/125 |
| b | 4861/40000 | 98371/250000 | 30783/250000 | 98313/250000 |
| c | 625947/1000000 | 995761/1000000 | 312991/500000 | 198927/200000 |
| e | 53187/500000 | 33/125 | 10671/100000 | 33/125 |
| f | 30381/250000 | 196739/500000 | 123131/1000000 | 1573/4000 |
| h | 544311/1000000 | 485599/500000 | 544927/1000000 | 485417/500000 |
| p | 38723/100000 | 69561/100000 | 19453/50000 | 173561/250000 |
| q | 199367/1000000 | 500199/1000000 | 199707/1000000 | 497609/1000000 |
| u | 131519/200000 | 1/1 | 660191/1000000 | 1/1 |
| v | 264487/500000 | 219321/250000 | 265417/500000 | 877007/1000000 |
| r | 54687/100000 | 175873/200000 | 21969/40000 | 219817/250000 |
| w | 49951/62500 | 1/1 | 799557/1000000 | 1/1 |
| j | 39953/100000 | 11284/15625 | 201013/500000 | 180111/250000 |
| k | 494813/1000000 | 823061/1000000 | 99509/200000 | 41097/50000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | actual ABC; occupants none | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 22 | A_ACR | actual ACR; occupants P, S | `1/1 * c * w + -1/1 * a * c + 1/1 * a * r + -13857/20000` |
| 26 | A_AEP | actual AEP; occupants none | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 29 | A_AER | actual AER; occupants P, S | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 46 | A_BCE | actual BCE; occupants none | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 82 | A_CEQ | actual CEQ; occupants none | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 90 | A_CHP | actual CHP; occupants none | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 105 | A_EFS | actual EFS; occupants none | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 113 | A_EQR | actual EQR; occupants none | `1/1 * u * w + -1/1 * e * u + -1/1 * w + -1/1 * v * r + 1/1 * v + 1/1 * e * r + -93/1000` |
| 118 | A_FHR | actual FHR; occupants none | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 123 | A_FQR | actual FQR; occupants none | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -93/1000` |
| 138 | fb | contact order fb | `1/1 * f + -1/1 * b` |
| 141 | lower-area | endpoint floor 135501/250000 | `1/1 * c * h + -135501/250000` |
| 144 | top-area | top hull +--+ | `114499/250000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 169 | AREA_lo_ABR | earlier 128:1763; ABR; lo; 5043/15625 | `1/1 * b * w + -1/1 * a * b + 1/1 * a * r + -5043/15625` |
| 192 | AREA_hi_AES | earlier 128:1171; AES; hi; 27897/50000 | `27897/50000 + -1/1 * k + 1/1 * a + 1/1 * e * j + -1/1 * a * j` |
| 214 | AREA_lo_APR | earlier 128:1709; APR; lo; 342879/1000000 | `1/1 * p * w + -1/1 * a * p + -1/1 * q * r + 1/1 * a * r + -342879/1000000` |
| 313 | AREA_lo_EFQ | earlier 128:1577; EFQ; lo; 185951/500000 | `-1/1 * f * v + 1/1 * e * f + 1/1 * v + 1/1 * u + -685951/500000 + -1/1 * e * u` |
| 315 | AREA_lo_EFR | earlier 128:1578; EFR; lo; 190313/500000 | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -690313/500000 + -1/1 * e * r` |
| 363 | AREA_lo_PRS | earlier 128:1094; PRS; lo; 106243/1000000 | `1/1 * r * k + -1/1 * q * r + -1/1 * p * k + -1/1 * w * j + 1/1 * p * w + 1/1 * q * j + -106243/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 0 | a | 53187/500000 | 33/125 | 7750/72853 | 33/125 | 53189/500000 | 33/125 | `(252211/500000, -93/1000); (232463/1000000, -93/1000); (218559/250000, -93/1000); (602277/1000000, -93/1000)` |
| 1 | 26 | q | 199367/1000000 | 500199/1000000 | 4984380439/25000000000 | 500199/1000000 | 319/1600 | 500199/1000000 | `(1/1, -4984411277/25000000000); (1/1, -14798124201/50000000000); (1/1, -13020698353/50000000000); (1/1, -357/1000); (1/1, -4984380439/25000000000); (1/1, -12367688907/50000000000); (1/1, -15451071971/50000000000)` |
| 2 | 29 | w | 49951/62500 | 1/1 | 39961224127/50000000000 | 1/1 | 99903/125000 | 1/1 | `(1/1, -19980645313/25000000000); (1/1, -43532453469/50000000000); (1/1, -44271337157/50000000000); (1/1, -19137/20000); (1/1, -39961224127/50000000000); (1/1, -81823921251/100000000000); (1/1, -93783527003/100000000000)` |
| 3 | 46 | e | 53187/500000 | 33/125 | 7750/72853 | 33/125 | 53189/500000 | 33/125 | `(252211/500000, -93/1000); (232463/1000000, -93/1000); (218559/250000, -93/1000); (602277/1000000, -93/1000)` |
| 4 | 82 | c | 625947/1000000 | 995761/1000000 | 625947/1000000 | 5088991/5110700 | 625947/1000000 | 995753/1000000 | `(-105649/250000, 36602035909/100000000000); (-132487/500000, 6559223/25000000); (-105649/250000, 82399/250000); (-132487/500000, 85987/500000); (-385453/500000, 71433035909/100000000000); (-153321/250000, 15266973/25000000); (-385453/500000, 338953/500000); (-153321/250000, 130071/250000)` |
| 5 | 90 | p | 38723/100000 | 69561/100000 | 38723/100000 | 675545067719/971198000000 | 38723/100000 | 34779/50000 | `(-544311/1000000, 15363956799/125000000000); (-544311/1000000, 31308882101/125000000000); (-485599/500000, 390120291381/1000000000000); (-485599/500000, 675545067719/1000000000000); (-544311/1000000, -4086764121/62500000000); (-544311/1000000, -3067208979/62500000000); (-485599/500000, 201820411053/1000000000000); (-485599/500000, 375998667247/1000000000000)` |
| 6 | 90 | q | 319/1600 | 500199/1000000 | 319/1600 | 248998160277/497876500000 | 319/1600 | 500121/1000000 | `(-625947/1000000, 36936288987/1000000000000); (-995753/1000000, 238225762653/1000000000000); (-625947/1000000, 69420736483/500000000000); (-995753/1000000, 248998160277/500000000000); (-625947/1000000, -130902007863/1000000000000); (-995753/1000000, 70387465803/1000000000000); (-625947/1000000, -80313715167/500000000000); (-995753/1000000, 99263708627/500000000000)` |
| 7 | 105 | j | 39953/100000 | 11284/15625 | 89258296223/223405500000 | 11284/15625 | 199767/500000 | 11284/15625 | `(446811/500000, -32269558747/50000000000); (92/125, -156559079753/250000000000); (446811/500000, -75102762693/100000000000); (92/125, -344503418807/500000000000); (446811/500000, -89258296223/250000000000); (92/125, -84469582241/250000000000); (446811/500000, -275968996737/500000000000); (92/125, -244958602079/500000000000)` |
| 8 | 105 | k | 494813/1000000 | 823061/1000000 | 54340019807/109809500000 | 823061/1000000 | 494857/1000000 | 823061/1000000 | `(219619/250000, -36152007389/50000000000); (219619/250000, -4792879/6250000); (303261/500000, -43381889073/62500000000); (303261/500000, -43441549/62500000); (219619/250000, -54340019807/125000000000); (219619/250000, -16543629/31250000); (303261/500000, -101447558961/250000000000); (303261/500000, -28600017/62500000)` |
| 9 | 113 | r | 54687/100000 | 175873/200000 | 54687/100000 | 338953/385453 | 54687/100000 | 879363/1000000 | `(-105649/250000, 9236206537/100000000000); (-132487/500000, -282234343/25000000000); (-105649/250000, 82399/250000); (-132487/500000, 85987/500000); (-385453/500000, 44067206537/100000000000); (-153321/250000, 8425515657/25000000000); (-385453/500000, 338953/500000); (-153321/250000, 130071/250000); (-105649/250000, 2361535909/100000000000); (-132487/500000, -1000451/12500000); (-385453/500000, 37192535909/100000000000); (-153321/250000, 209589/781250)` |
| 10 | 118 | h | 544311/1000000 | 485599/500000 | 544311/1000000 | 29492871183/30367812500 | 544311/1000000 | 971189/1000000 | `(-212673/500000, 11148284457/31250000000); (-9587/62500, 8712058683/62500000000); (-757839/1000000, 21538690707/31250000000); (-97177/200000, 29492871183/62500000000); (-212673/500000, 166173/500000); (-9587/62500, 7549/125000); (-757839/1000000, 664839/1000000); (-97177/200000, 78577/200000)` |
| 11 | 123 | v | 264487/500000 | 219321/250000 | 264487/500000 | 221613/252613 | 264487/500000 | 877283/1000000 | `(-212673/500000, 28089476113/125000000000); (-9587/62500, 920455651/125000000000); (-212673/500000, 4874034457/31250000000); (-9587/62500, -3836441317/62500000000); (-757839/1000000, 69651101113/125000000000); (-97177/200000, 42482080651/125000000000); (-757839/1000000, 15264440707/31250000000); (-97177/200000, 16944371183/62500000000); (-212673/500000, 166173/500000); (-9587/62500, 7549/125000); (-757839/1000000, 664839/1000000); (-97177/200000, 78577/200000)` |
| 12 | 138 | b | 4861/40000 | 98371/250000 | 4861/40000 | 196739/500000 | 4861/40000 | 196739/500000 | `(-1/1, 30381/250000); (-1/1, 196739/500000)` |
| 13 | 138 | f | 30381/250000 | 196739/500000 | 4861/40000 | 196739/500000 | 4861/40000 | 196739/500000 | `(1/1, -4861/40000); (1/1, -196739/500000)` |
| 14 | 141 | h | 544311/1000000 | 971189/1000000 | 542004/995753 | 971189/1000000 | 108863/200000 | 971189/1000000 | `(625947/1000000, -135501/250000); (995753/1000000, -135501/250000)` |
| 15 | 144 | f | 4861/40000 | 196739/500000 | 4861/40000 | 58603/148937 | 4861/40000 | 98369/250000 | `(-446811/500000, 175809/500000); (-92/125, 48499/250000)` |
| 16 | 169 | b | 4861/40000 | 196739/500000 | 11325021/92000000 | 196739/500000 | 61549/500000 | 196739/500000 | `(346423/500000, -13228853157/50000000000); (66903/125000, -2229729/12500000); (346423/500000, -114603561393/500000000000); (66903/125000, -11325021/125000000); (446811/500000, -13228853157/50000000000); (92/125, -2229729/12500000); (446811/500000, -114603561393/500000000000); (92/125, -11325021/125000000)` |
| 17 | 192 | k | 494857/1000000 | 823061/1000000 | 494857/1000000 | 41097/50000 | 494857/1000000 | 41097/50000 | `(-1/1, 332159/500000); (-1/1, 189741162963/250000000000); (-1/1, 181823337037/250000000000); (-1/1, 41097/50000); (-1/1, 2766051463/3906250000); (-1/1, 6079287699/7812500000)` |
| 18 | 214 | p | 38723/100000 | 34779/50000 | 2288401329/5888000000 | 34779/50000 | 77731/200000 | 34779/50000 | `(346423/500000, -39373626939/100000000000); (66903/125000, -246030021/800000000); (346423/500000, -55820523441/100000000000); (66903/125000, -47200649127/100000000000); (346423/500000, -424657120911/1000000000000); (66903/125000, -2288401329/8000000000); (346423/500000, -689122025709/1000000000000); (66903/125000, -550515070923/1000000000000); (446811/500000, -39373626939/100000000000); (92/125, -246030021/800000000); (446811/500000, -55820523441/100000000000); (92/125, -47200649127/100000000000); (446811/500000, -424657120911/1000000000000); (92/125, -2288401329/8000000000); (446811/500000, -689122025709/1000000000000); (92/125, -550515070923/1000000000000)` |
| 19 | 313 | u | 131519/200000 | 1/1 | 4706425841/7148976000 | 1/1 | 131667/200000 | 1/1 | `(446811/500000, -8942839789/10000000000); (92/125, -17502579307/20000000000); (446811/500000, -63075586481/62500000000); (92/125, -118398613703/125000000000); (446811/500000, -4706425841/8000000000); (92/125, -22765928663/40000000000); (446811/500000, -39897580789/50000000000); (92/125, -183982785427/250000000000)` |
| 20 | 313 | v | 264487/500000 | 877283/1000000 | 9307048271/17569500000 | 877283/1000000 | 529727/1000000 | 877283/1000000 | `(35139/40000, -38533588709/50000000000); (35139/40000, -21382121/25000000); (151631/250000, -370871085351/500000000000); (151631/250000, -48968111/62500000); (35139/40000, -9307048271/20000000000); (35139/40000, -3019097/5000000); (151631/250000, -54552851259/125000000000); (151631/250000, -33251521/62500000)` |
| 21 | 315 | r | 54687/100000 | 879363/1000000 | 9784468271/17872440000 | 879363/1000000 | 547461/1000000 | 879363/1000000 | `(446811/500000, -13312002203/20000000000); (92/125, -3232225483/5000000000); (446811/500000, -106752534087/125000000000); (92/125, -24749993707/31250000000); (446811/500000, -9784468271/20000000000); (92/125, -1175171/2500000); (446811/500000, -91530601259/125000000000); (92/125, -41889021/62500000)` |
| 22 | 363 | j | 199767/500000 | 11284/15625 | 199767/500000 | 4551462517/6314200000 | 199767/500000 | 72083/100000 | `(-599849/1000000, 173815627587/1000000000000); (-599849/1000000, 133616734531/500000000000); (-299103/1000000, 9168921681/1000000000000); (-299103/1000000, 25646690789/250000000000); (-599849/1000000, 271886694351/1000000000000); (-599849/1000000, 182652267913/500000000000); (-299103/1000000, 7421789553/1000000000000); (-299103/1000000, 25209907757/250000000000); (-1281/1600, 251848223867/1000000000000); (-1281/1600, 203444619571/500000000000); (-499879/1000000, 87201517961/1000000000000); (-499879/1000000, 60560633309/250000000000); (-1281/1600, 349919290631/1000000000000); (-1281/1600, 252480152953/500000000000); (-499879/1000000, 85454385833/1000000000000); (-499879/1000000, 60123850277/250000000000); (-599849/1000000, 45151674097/200000000000); (-599849/1000000, 43757252437/200000000000); (-299103/1000000, 61111664579/1000000000000); (-299103/1000000, 54139556279/1000000000000); (-599849/1000000, 86477787823/200000000000); (-599849/1000000, 85083366163/200000000000); (-299103/1000000, 167924034317/1000000000000); (-299103/1000000, 160951926017/1000000000000); (-1281/1600, 60758193353/200000000000); (-1281/1600, 71688406453/200000000000); (-499879/1000000, 139144260859/1000000000000); (-499879/1000000, 193795326359/1000000000000); (-1281/1600, 102084307079/200000000000); (-1281/1600, 113014520179/200000000000); (-499879/1000000, 245956630597/1000000000000); (-499879/1000000, 300607696097/1000000000000)` |
| 23 | 0 | a | 53189/500000 | 33/125 | 6200/58177 | 33/125 | 106571/1000000 | 33/125 | `(502849/1000000, -93/1000); (232469/1000000, -93/1000); (174531/200000, -93/1000); (24091/40000, -93/1000)` |
| 24 | 22 | c | 625947/1000000 | 995753/1000000 | 57587271/92000000 | 995753/1000000 | 156487/250000 | 995753/1000000 | `(692653/1000000, -634506533769/1000000000000); (66903/125000, -68540037/125000000); (692653/1000000, -599135405727/1000000000000); (66903/125000, -57587271/125000000); (893429/1000000, -634506533769/1000000000000); (92/125, -68540037/125000000); (893429/1000000, -599135405727/1000000000000); (92/125, -57587271/125000000)` |
| 25 | 26 | q | 319/1600 | 500121/1000000 | 9971837653/50000000000 | 500121/1000000 | 49859/250000 | 500121/1000000 | `(1/1, -39899197917/200000000000); (1/1, -29573942159/100000000000); (1/1, -52151313599/200000000000); (1/1, -357/1000); (1/1, -9971837653/50000000000); (1/1, -6184032231/25000000000); (1/1, -15453773191/50000000000)` |
| 26 | 29 | w | 99903/125000 | 1/1 | 799251282941/1000000000000 | 1/1 | 799251/1000000 | 1/1 | `(1/1, -799315340027/1000000000000); (1/1, -435279051129/500000000000); (1/1, -885607237769/1000000000000); (1/1, -19137/20000); (1/1, -799251282941/1000000000000); (1/1, -409121522607/500000000000); (1/1, -937858237727/1000000000000)` |
| 27 | 46 | e | 53189/500000 | 33/125 | 6200/58177 | 33/125 | 106571/1000000 | 33/125 | `(10057/20000, -93/1000); (23247/100000, -93/1000); (174531/200000, -93/1000); (24091/40000, -93/1000)` |
| 28 | 82 | c | 156487/250000 | 995753/1000000 | 156487/250000 | 15262064/15332075 | 156487/250000 | 497717/500000 | `(-105789/250000, 73313516143/200000000000); (-265727/1000000, 1643291/6250000); (-105789/250000, 82539/250000); (-265727/1000000, 172727/1000000); (-96339/125000, 142824716143/200000000000); (-613283/1000000, 953879/1562500); (-96339/125000, 42357/62500); (-613283/1000000, 520283/1000000)` |
| 29 | 90 | p | 77731/200000 | 34779/50000 | 77731/200000 | 337614587901/485594500000 | 77731/200000 | 695261/1000000 | `(-108863/200000, 30719080073/250000000000); (-108863/200000, 125152141243/500000000000); (-971189/1000000, 97519311711/250000000000); (-971189/1000000, 337614587901/500000000000); (-108863/200000, -8167106761/125000000000); (-108863/200000, -12251947451/250000000000); (-971189/1000000, 12616504529/62500000000); (-971189/1000000, 46989637939/125000000000)` |
| 30 | 90 | q | 49859/250000 | 500121/1000000 | 49859/250000 | 496297090231/995434000000 | 49859/250000 | 249287/500000 | `(-156487/250000, 7232427859/200000000000); (-497717/500000, 47455782277/200000000000); (-156487/250000, 137456351377/1000000000000); (-497717/500000, 496297090231/1000000000000); (-156487/250000, -26145621119/200000000000); (-497717/500000, 14077733299/200000000000); (-156487/250000, -160316023157/1000000000000); (-497717/500000, 198524715697/1000000000000)` |
| 31 | 105 | j | 199767/500000 | 72083/100000 | 14319808709/35737160000 | 72083/100000 | 200349/500000 | 72083/100000 | `(893429/1000000, -12906589123/20000000000); (92/125, -25047915877/40000000000); (893429/1000000, -93865527767/125000000000); (92/125, -172244922233/250000000000); (893429/1000000, -14319808709/40000000000); (92/125, -677727317/2000000000); (893429/1000000, -138135133161/250000000000); (92/125, -6132449993/12500000000)` |
| 32 | 105 | k | 494857/1000000 | 41097/50000 | 1645428427/3315000000 | 41097/50000 | 248179/500000 | 41097/50000 | `(35139/40000, -722053745783/1000000000000); (35139/40000, -95750459/125000000); (151631/250000, -346535827881/500000000000); (151631/250000, -21694019/31250000); (35139/40000, -87207706631/200000000000); (35139/40000, -13259663/25000000); (151631/250000, -203528221567/500000000000); (151631/250000, -14330983/31250000)` |
| 33 | 113 | r | 547461/1000000 | 879363/1000000 | 547461/1000000 | 28238/32113 | 547461/1000000 | 879333/1000000 | `(-105789/250000, 467457439/5000000000); (-265727/1000000, -2029906583/200000000000); (-105789/250000, 82539/250000); (-265727/1000000, 172727/1000000); (-96339/125000, 2205237439/5000000000); (-613283/1000000, 67481293417/200000000000); (-96339/125000, 42357/62500); (-613283/1000000, 520283/1000000); (-105789/250000, 4980516143/200000000000); (-265727/1000000, -1968461/25000000); (-96339/125000, 74491716143/200000000000); (-613283/1000000, 6720439/25000000)` |
| 34 | 118 | h | 108863/200000 | 971189/1000000 | 108863/200000 | 117961728381/121464250000 | 108863/200000 | 194233/200000 | `(-26621/62500, 14293280889/40000000000); (-30797/200000, 34993728381/250000000000); (-47363/62500, 27568160889/40000000000); (-485857/1000000, 117961728381/250000000000); (-26621/62500, 41617/125000); (-30797/200000, 12197/200000); (-47363/62500, 83101/125000); (-485857/1000000, 392857/1000000)` |
| 35 | 123 | v | 529727/1000000 | 877283/1000000 | 529727/1000000 | 83101/94726 | 529727/1000000 | 438639/500000 | `(-26621/62500, 22517192931/100000000000); (-30797/200000, 7814820609/1000000000000); (-26621/62500, 6263320889/40000000000); (-30797/200000, -15193521619/250000000000); (-47363/62500, 55704392931/100000000000); (-485857/1000000, 339686820609/1000000000000); (-47363/62500, 19538200889/40000000000); (-485857/1000000, 67774478381/250000000000); (-26621/62500, 41617/125000); (-30797/200000, 12197/200000); (-47363/62500, 83101/125000); (-485857/1000000, 392857/1000000)` |
| 36 | 138 | b | 61549/500000 | 196739/500000 | 61549/500000 | 98369/250000 | 61549/500000 | 98369/250000 | `(-1/1, 4861/40000); (-1/1, 98369/250000)` |
| 37 | 138 | f | 4861/40000 | 98369/250000 | 61549/500000 | 98369/250000 | 61549/500000 | 98369/250000 | `(1/1, -61549/500000); (1/1, -98369/250000)` |
| 38 | 141 | h | 108863/200000 | 194233/200000 | 271002/497717 | 194233/200000 | 54449/100000 | 194233/200000 | `(156487/250000, -135501/250000); (497717/500000, -135501/250000)` |
| 39 | 144 | f | 61549/500000 | 98369/250000 | 61549/500000 | 351425/893429 | 61549/500000 | 78669/200000 | `(-893429/1000000, 14057/40000); (-92/125, 48499/250000)` |
| 40 | 169 | b | 61549/500000 | 98369/250000 | 11326011/92000000 | 98369/250000 | 30777/250000 | 98369/250000 | `(17317/25000, -264408533769/1000000000000); (535251/1000000, -22277787/125000000); (17317/25000, -229040602857/1000000000000); (535251/1000000, -11326011/125000000); (893429/1000000, -264408533769/1000000000000); (92/125, -22277787/125000000); (893429/1000000, -229040602857/1000000000000); (92/125, -11326011/125000000)` |
| 41 | 214 | p | 77731/200000 | 695261/1000000 | 71526436047/184000000000 | 695261/1000000 | 38873/100000 | 695261/1000000 | `(17317/25000, -78743793153/200000000000); (535251/1000000, -76883181999/250000000000); (17317/25000, -557485354383/1000000000000); (535251/1000000, -235649558307/500000000000); (17317/25000, -84907651809/200000000000); (535251/1000000, -71526436047/250000000000); (17317/25000, -687580173999/1000000000000); (535251/1000000, -274573829571/500000000000); (893429/1000000, -78743793153/200000000000); (92/125, -76883181999/250000000000); (893429/1000000, -557485354383/1000000000000); (92/125, -235649558307/500000000000); (893429/1000000, -84907651809/200000000000); (92/125, -71526436047/250000000000); (893429/1000000, -687580173999/1000000000000); (92/125, -274573829571/500000000000)` |
| 42 | 313 | u | 131667/200000 | 1/1 | 294748245143/446714500000 | 1/1 | 659813/1000000 | 1/1 | `(893429/1000000, -111783082161/125000000000); (92/125, -437442731123/500000000000); (893429/1000000, -50431064841/50000000000); (92/125, -189339477363/200000000000); (893429/1000000, -294748245143/500000000000); (92/125, -142529323811/250000000000); (893429/1000000, -159555548983/200000000000); (92/125, -73585383491/100000000000)` |
| 43 | 313 | v | 529727/1000000 | 438639/500000 | 232677161521/438451000000 | 438639/500000 | 530679/1000000 | 438639/500000 | `(438451/500000, -153857450853/200000000000); (438451/500000, -667017/781250); (121331/200000, -185121690307/250000000000); (121331/200000, -97804569/125000000); (438451/500000, -232677161521/500000000000); (438451/500000, -18856379/31250000); (121331/200000, -87310766001/200000000000); (121331/200000, -13301473/25000000)` |
| 44 | 315 | r | 547461/1000000 | 879333/1000000 | 245302661521/446714500000 | 879333/1000000 | 274563/500000 | 879333/1000000 | `(893429/1000000, -8333031533/12500000000); (92/125, -323631663799/500000000000); (893429/1000000, -4269186073/5000000000); (92/125, -158382660919/200000000000); (893429/1000000, -245302661521/500000000000); (92/125, -29451633/62500000); (893429/1000000, -146410366001/200000000000); (92/125, -8376599/12500000)` |
| 45 | 363 | j | 200349/500000 | 72083/100000 | 200349/500000 | 216162707431/299907500000 | 200349/500000 | 144153/200000 | `(-119963/200000, 87274093031/500000000000); (-119963/200000, 53478856049/200000000000); (-300677/1000000, 5141866337/500000000000); (-300677/1000000, 103129826857/1000000000000); (-119963/200000, 68148477229/250000000000); (-119963/200000, 365440003099/1000000000000); (-300677/1000000, 4775996981/500000000000); (-300677/1000000, 20479617629/200000000000); (-200141/250000, 3946646013/15625000000); (-200141/250000, 203483615367/500000000000); (-250713/500000, 22080222861/250000000000); (-250713/500000, 121351388673/500000000000); (-200141/250000, 175315533843/500000000000); (-200141/250000, 126253238397/250000000000); (-250713/500000, 21897288183/250000000000); (-250713/500000, 120985519317/500000000000); (-119963/200000, 113385118267/500000000000); (-119963/200000, 8792614187/40000000000); (-300677/1000000, 31252891573/500000000000); (-300677/1000000, 55550901287/1000000000000); (-119963/200000, 216162707431/500000000000); (-119963/200000, 425370533003/1000000000000); (-300677/1000000, 42320874977/250000000000); (-300677/1000000, 162328618049/1000000000000); (-200141/250000, 38100924413/125000000000); (-200141/250000, 89847076291/250000000000); (-250713/500000, 35135735479/250000000000); (-250713/500000, 381101273/1953125000); (-200141/250000, 7974415213/15625000000); (-200141/250000, 141235870873/250000000000); (-250713/500000, 123660329339/500000000000); (-250713/500000, 150950784269/500000000000)` |
| 46 | 0 | a | 106571/1000000 | 33/125 | 46500/436163 | 33/125 | 106611/1000000 | 33/125 | `(12571/25000, -93/1000); (29059/125000, -93/1000); (436163/500000, -93/1000); (300979/500000, -93/1000)` |
| 47 | 22 | c | 156487/250000 | 497717/500000 | 57588261/92000000 | 497717/500000 | 625959/1000000 | 497717/500000 | `(4329/6250, -317153564007/500000000000); (535251/1000000, -17121273/31250000); (4329/6250, -599103429537/1000000000000); (535251/1000000, -57588261/125000000); (893389/1000000, -317153564007/500000000000); (92/125, -17121273/31250000); (893389/1000000, -599103429537/1000000000000); (92/125, -57588261/125000000)` |
| 48 | 26 | q | 49859/250000 | 249287/500000 | 4989579739/25000000000 | 249287/500000 | 199583/1000000 | 249287/500000 | `(1/1, -498988627/2500000000); (1/1, -29580262483/100000000000); (1/1, -26079282597/100000000000); (1/1, -357/1000); (1/1, -4989579739/25000000000); (1/1, -247545756031/1000000000000); (1/1, -309037433529/1000000000000)` |
| 49 | 29 | w | 799251/1000000 | 1/1 | 19985645667/25000000000 | 1/1 | 31977/40000 | 1/1 | `(1/1, -9992987937/12500000000); (1/1, -435200821473/500000000000); (1/1, -442943696007/500000000000); (1/1, -19137/20000); (1/1, -19985645667/25000000000); (1/1, -818417485143/1000000000000); (1/1, -937858341537/1000000000000)` |
| 50 | 46 | e | 106571/1000000 | 33/125 | 46500/436163 | 33/125 | 106611/1000000 | 33/125 | `(502851/1000000, -93/1000); (232483/1000000, -93/1000); (436163/500000, -93/1000); (300979/500000, -93/1000)` |
| 51 | 82 | c | 625959/1000000 | 497717/500000 | 625959/1000000 | 25420307/25553250 | 625959/1000000 | 497399/500000 | `(-106017/250000, 367335676257/1000000000000); (-266679/1000000, 16468023/62500000); (-106017/250000, 82767/250000); (-266679/1000000, 173679/1000000); (-770667/1000000, 713934676257/1000000000000); (-306639/500000, 76260921/125000000); (-770667/1000000, 677667/1000000); (-306639/500000, 260139/500000)` |
| 52 | 90 | p | 38873/100000 | 695261/1000000 | 38873/100000 | 168642057609/242791250000 | 38873/100000 | 694597/1000000 | `(-54449/100000, 122897640813/1000000000000); (-54449/100000, 125056396893/500000000000); (-194233/200000, 194989348569/500000000000); (-194233/200000, 168642057609/250000000000); (-54449/100000, -16064616639/250000000000); (-54449/100000, -5915356879/125000000000); (-194233/200000, 202822589769/1000000000000); (-194233/200000, 188566290809/500000000000)` |
| 53 | 90 | q | 199583/1000000 | 249287/500000 | 199583/1000000 | 24779601461/49739900000 | 199583/1000000 | 62273/125000 | `(-625959/1000000, 3616881821/100000000000); (-497399/500000, 5924949133/25000000000); (-625959/1000000, 27477700357/200000000000); (-497399/500000, 24779601461/50000000000); (-625959/1000000, -6518635231/50000000000); (-497399/500000, 7045644249/100000000000); (-625959/1000000, -15965882327/100000000000); (-497399/500000, 39708940833/200000000000)` |
| 54 | 105 | j | 200349/500000 | 144153/200000 | 179557784621/446694500000 | 144153/200000 | 401969/1000000 | 144153/200000 | `(893389/1000000, -322309538103/500000000000); (92/125, -156311201271/250000000000); (893389/1000000, -149989406743/200000000000); (92/125, -68803885751/100000000000); (893389/1000000, -179557784621/500000000000); (92/125, -8493532453/25000000000); (893389/1000000, -110486217101/200000000000); (92/125, -4905229093/10000000000)` |
| 55 | 105 | k | 248179/500000 | 41097/50000 | 435952876537/876902000000 | 41097/50000 | 497151/1000000 | 41097/50000 | `(438451/500000, -720761716181/1000000000000); (438451/500000, -47790809/62500000); (121331/200000, -43246900829/62500000000); (121331/200000, -86663467/125000000); (438451/500000, -435952876537/1000000000000); (438451/500000, -33126193/62500000); (121331/200000, -20357078681/50000000000); (121331/200000, -11466847/25000000)` |
| 56 | 113 | r | 274563/500000 | 879333/1000000 | 274563/500000 | 225889/256889 | 274563/500000 | 439663/500000 | `(-106017/250000, 47690841891/500000000000); (-266679/1000000, -338624979/40000000000); (-106017/250000, 82767/250000); (-266679/1000000, 173679/1000000); (-770667/1000000, 220990341891/500000000000); (-306639/500000, 13525335021/40000000000); (-770667/1000000, 677667/1000000); (-306639/500000, 260139/500000); (-106017/250000, 27148676257/1000000000000); (-266679/1000000, -9587329/125000000); (-770667/1000000, 373747676257/1000000000000); (-306639/500000, 16868773/62500000)` |
| 57 | 118 | h | 54449/100000 | 194233/200000 | 54449/100000 | 3775009387/3887848000 | 54449/100000 | 970977/1000000 | `(-106507/250000, 7154367627/20000000000); (-155781/1000000, 1133409387/8000000000); (-189057/250000, 13758367627/20000000000); (-485981/1000000, 3775009387/8000000000); (-106507/250000, 83257/250000); (-155781/1000000, 62781/1000000); (-189057/250000, 165807/250000); (-485981/1000000, 392981/1000000)` |
| 58 | 123 | v | 530679/1000000 | 438639/500000 | 530679/1000000 | 55269/63019 | 530679/1000000 | 438511/500000 | `(-106507/250000, 1803011111/8000000000); (-155781/1000000, 93341809/10000000000); (-106507/250000, 3142867627/20000000000); (-155781/1000000, -471190613/8000000000); (-189057/250000, 4444611111/8000000000); (-485981/1000000, 3395341809/10000000000); (-189057/250000, 9746867627/20000000000); (-485981/1000000, 2170409387/8000000000); (-106507/250000, 83257/250000); (-155781/1000000, 62781/1000000); (-189057/250000, 165807/250000); (-485981/1000000, 392981/1000000)` |
| 59 | 138 | b | 30777/250000 | 98369/250000 | 30777/250000 | 78669/200000 | 30777/250000 | 78669/200000 | `(-1/1, 61549/500000); (-1/1, 78669/200000)` |
| 60 | 138 | f | 61549/500000 | 78669/200000 | 30777/250000 | 78669/200000 | 30777/250000 | 78669/200000 | `(1/1, -30777/250000); (1/1, -78669/200000)` |
| 61 | 141 | h | 54449/100000 | 970977/1000000 | 271002/497399 | 970977/1000000 | 272419/500000 | 970977/1000000 | `(625959/1000000, -135501/250000); (497399/500000, -135501/250000)` |
| 62 | 144 | f | 30777/250000 | 78669/200000 | 30777/250000 | 11335/28819 | 30777/250000 | 393317/1000000 | `(-893389/1000000, 70277/200000); (-92/125, 48499/250000)` |
| 63 | 169 | b | 30777/250000 | 78669/200000 | 5663121/46000000 | 78669/200000 | 123111/1000000 | 78669/200000 | `(346407/500000, -132104564007/500000000000); (21417/40000, -11111421/62500000); (346407/500000, -114503087907/500000000000); (21417/40000, -5663121/62500000); (893389/1000000, -132104564007/500000000000); (92/125, -11111421/62500000); (893389/1000000, -114503087907/500000000000); (92/125, -5663121/62500000)` |
| 64 | 214 | p | 38873/100000 | 694597/1000000 | 143117728529/368000000000 | 694597/1000000 | 194453/500000 | 694597/1000000 | `(346407/500000, -49241542809/125000000000); (21417/40000, -153752975229/500000000000); (346407/500000, -278950957599/500000000000); (21417/40000, -29467220199/62500000000); (346407/500000, -53078962109/125000000000); (21417/40000, -143117728529/500000000000); (346407/500000, -343599659899/500000000000); (21417/40000, -34300192499/62500000000); (893389/1000000, -49241542809/125000000000); (92/125, -153752975229/500000000000); (893389/1000000, -278950957599/500000000000); (92/125, -29467220199/62500000000); (893389/1000000, -53078962109/125000000000); (92/125, -143117728529/500000000000); (893389/1000000, -343599659899/500000000000); (92/125, -34300192499/62500000000)` |
| 65 | 313 | u | 659813/1000000 | 1/1 | 147430939347/223347250000 | 1/1 | 660097/1000000 | 1/1 | `(893389/1000000, -55839322709/62500000000); (92/125, -218513329583/250000000000); (893389/1000000, -252004038389/250000000000); (92/125, -946112384243/1000000000000); (893389/1000000, -147430939347/250000000000); (92/125, -71293489047/125000000000); (893389/1000000, -797895743287/1000000000000); (92/125, -367995986987/500000000000)` |
| 66 | 313 | v | 530679/1000000 | 438511/500000 | 116347083253/219223000000 | 438511/500000 | 132681/250000 | 438511/500000 | `(219223/250000, -769053934279/1000000000000); (219223/250000, -53348131/62500000); (606683/1000000, -37012334129/50000000000); (606683/1000000, -19555873/25000000); (219223/250000, -116347083253/250000000000); (219223/250000, -37712593/62500000); (606683/1000000, -436581081313/1000000000000); (606683/1000000, -66508289/125000000)` |
| 67 | 315 | r | 274563/500000 | 439663/500000 | 122652333253/223347250000 | 439663/500000 | 109831/200000 | 439663/500000 | `(893389/1000000, -83311493239/125000000000); (92/125, -6471161009/10000000000); (893389/1000000, -426848262019/500000000000); (92/125, -31671710189/40000000000); (893389/1000000, -122652333253/250000000000); (92/125, -29452093/62500000); (893389/1000000, -732011081313/1000000000000); (92/125, -41881707/62500000)` |
| 68 | 363 | j | 401969/1000000 | 144153/200000 | 401969/1000000 | 54031934099/74980250000 | 401969/1000000 | 90077/125000 | `(-299921/500000, 43681031821/250000000000); (-299921/500000, 133563284309/500000000000); (-301241/1000000, 10745895129/1000000000000); (-301241/1000000, 103148336463/1000000000000); (-299921/500000, 68243112853/250000000000); (-299921/500000, 182687446373/500000000000); (-301241/1000000, 5202414243/500000000000); (-301241/1000000, 5140363491/50000000000); (-800417/1000000, 126364474117/500000000000); (-800417/1000000, 406445361893/1000000000000); (-62727/125000, 88750716079/1000000000000); (-62727/125000, 121233564869/500000000000); (-800417/1000000, 175488636181/500000000000); (-800417/1000000, 504693686021/1000000000000); (-62727/125000, 22102412359/250000000000); (-62727/125000, 48425212619/200000000000); (-299921/500000, 45354247949/200000000000); (-299921/500000, 1374303793/6250000000); (-301241/1000000, 6279300759/100000000000); (-301241/1000000, 2236414989/40000000000); (-299921/500000, 54031934099/125000000000); (-299921/500000, 425372839927/1000000000000); (-301241/1000000, 84843924933/500000000000); (-301241/1000000, 162805217001/1000000000000); (-800417/1000000, 60955212139/200000000000); (-800417/1000000, 71841480031/200000000000); (-62727/125000, 7039891427/50000000000); (-62727/125000, 12201823/62500000); (-800417/1000000, 255130146871/500000000000); (-800417/1000000, 282345816601/500000000000); (-62727/125000, 7740395963/31250000000); (-62727/125000, 75531002569/250000000000)` |
| 69 | 0 | a | 106611/1000000 | 33/125 | 93000/871687 | 33/125 | 106689/1000000 | 33/125 | `(7857/15625, -93/1000); (116307/500000, -93/1000); (871687/1000000, -93/1000); (601453/1000000, -93/1000)` |
| 70 | 22 | c | 625959/1000000 | 497399/500000 | 14397123/23000000 | 497399/500000 | 625961/1000000 | 497399/500000 | `(10824/15625, -126852240441/200000000000); (21417/40000, -13696827/25000000); (10824/15625, -299517794193/500000000000); (21417/40000, -14397123/31250000); (893311/1000000, -126852240441/200000000000); (92/125, -13696827/25000000); (893311/1000000, -299517794193/500000000000); (92/125, -14397123/31250000)` |
| 71 | 26 | q | 199583/1000000 | 62273/125000 | 99817410717/500000000000 | 62273/125000 | 99817/500000 | 62273/125000 | `(1/1, -49914666333/250000000000); (1/1, -147895236783/500000000000); (1/1, -130434095883/500000000000); (1/1, -357/1000); (1/1, -99817410717/500000000000); (1/1, -247678072767/1000000000000); (1/1, -308956748667/1000000000000)` |
| 72 | 29 | w | 31977/40000 | 1/1 | 199867603143/250000000000 | 1/1 | 79947/100000 | 1/1 | `(1/1, -79949616591/100000000000); (1/1, -174083808741/200000000000); (1/1, -177185424441/200000000000); (1/1, -19137/20000); (1/1, -199867603143/250000000000); (1/1, -409226880093/500000000000); (1/1, -468933326193/500000000000)` |
| 73 | 46 | e | 106611/1000000 | 33/125 | 93000/871687 | 33/125 | 106689/1000000 | 33/125 | `(10057/20000, -93/1000); (29077/125000, -93/1000); (871687/1000000, -93/1000); (601453/1000000, -93/1000)` |
| 74 | 82 | c | 625961/1000000 | 497399/500000 | 625961/1000000 | 76219549/76627750 | 625961/1000000 | 994673/1000000 | `(-84807/200000, 367298911167/1000000000000); (-66681/250000, 32932299/125000000); (-84807/200000, 66207/200000); (-66681/250000, 43431/250000); (-770333/1000000, 713596911167/1000000000000); (-306511/500000, 76219549/125000000); (-770333/1000000, 677333/1000000); (-306511/500000, 260011/500000)` |
| 75 | 90 | p | 194453/500000 | 694597/1000000 | 194453/500000 | 674234055839/970977000000 | 194453/500000 | 173597/250000 | `(-272419/500000, 30771060261/250000000000); (-272419/500000, 62591274573/250000000000); (-970977/1000000, 389830635623/1000000000000); (-970977/1000000, 674234055839/1000000000000); (-272419/500000, -31898207753/500000000000); (-272419/500000, -23297262929/500000000000); (-970977/1000000, 202949979073/1000000000000); (-970977/1000000, 377274431689/1000000000000)` |
| 76 | 90 | q | 99817/500000 | 62273/125000 | 99817/500000 | 495185824359/994673000000 | 99817/500000 | 248919/500000 | `(-625961/1000000, 3615657209/100000000000); (-994673/1000000, 118522440373/500000000000); (-625961/1000000, 27434990547/200000000000); (-994673/1000000, 495185824359/1000000000000); (-625961/1000000, -65140814913/500000000000); (-994673/1000000, 7060667883/100000000000); (-625961/1000000, -159441043179/1000000000000); (-994673/1000000, 39713965689/200000000000)` |
| 77 | 105 | j | 401969/1000000 | 90077/125000 | 89778280027/223327750000 | 90077/125000 | 201001/500000 | 90077/125000 | `(893311/1000000, -80489749487/125000000000); (92/125, -156137938327/250000000000); (893311/1000000, -374712171227/500000000000); (92/125, -687551251867/1000000000000); (893311/1000000, -89778280027/250000000000); (92/125, -4246835969/12500000000); (893311/1000000, -552380377567/1000000000000); (92/125, -24525364349/50000000000)` |
| 78 | 105 | k | 497151/1000000 | 41097/50000 | 109032882753/219223000000 | 41097/50000 | 6217/12500 | 41097/50000 | `(219223/250000, -360376460983/500000000000); (219223/250000, -23894563/31250000); (606683/1000000, -138384918793/200000000000); (606683/1000000, -17332271/25000000); (219223/250000, -109032882753/250000000000); (219223/250000, -16566441/31250000); (606683/1000000, -407303203011/1000000000000); (606683/1000000, -57348867/125000000)` |
| 79 | 113 | r | 109831/200000 | 439663/500000 | 109831/200000 | 677333/770333 | 109831/200000 | 879273/1000000 | `(-84807/200000, 95556659757/1000000000000); (-66681/250000, -828385941/100000000000); (-84807/200000, 66207/200000); (-66681/250000, 43431/250000); (-770333/1000000, 441854659757/1000000000000); (-306511/500000, 33801414059/100000000000); (-770333/1000000, 677333/1000000); (-306511/500000, 260011/500000); (-84807/200000, 27395911167/1000000000000); (-66681/250000, -1194447/15625000); (-770333/1000000, 373693911167/1000000000000); (-306511/500000, 16865837/62500000)` |
| 80 | 118 | h | 272419/500000 | 970977/1000000 | 272419/500000 | 47182785801/48595600000 | 272419/500000 | 60683/62500 | `(-426047/1000000, 8943346181/25000000000); (-77919/500000, 14170985801/100000000000); (-151233/200000, 17196296181/25000000000); (-121489/250000, 47182785801/100000000000); (-426047/1000000, 333047/1000000); (-77919/500000, 31419/500000); (-151233/200000, 132633/200000); (-121489/250000, 98239/250000)` |
| 81 | 123 | v | 132681/250000 | 438511/500000 | 132681/250000 | 44211/50411 | 132681/250000 | 877011/1000000 | `(-426047/1000000, 22536459583/100000000000); (-77919/500000, 46703033/5000000000); (-426047/1000000, 3930096181/25000000000); (-77919/500000, -5882014199/100000000000); (-151233/200000, 55548259583/100000000000); (-121489/250000, 1697293033/5000000000); (-151233/200000, 12183046181/25000000000); (-121489/250000, 27129785801/100000000000); (-426047/1000000, 333047/1000000); (-77919/500000, 31419/500000); (-151233/200000, 132633/200000); (-121489/250000, 98239/250000)` |
| 82 | 138 | b | 123111/1000000 | 78669/200000 | 123111/1000000 | 393317/1000000 | 123111/1000000 | 393317/1000000 | `(-1/1, 30777/250000); (-1/1, 393317/1000000)` |
| 83 | 138 | f | 30777/250000 | 393317/1000000 | 123111/1000000 | 393317/1000000 | 123111/1000000 | 393317/1000000 | `(1/1, -123111/1000000); (1/1, -393317/1000000)` |
| 84 | 141 | h | 272419/500000 | 60683/62500 | 542004/994673 | 60683/62500 | 272453/500000 | 60683/62500 | `(625961/1000000, -135501/250000); (994673/1000000, -135501/250000)` |
| 85 | 144 | f | 123111/1000000 | 393317/1000000 | 123111/1000000 | 351307/893311 | 123111/1000000 | 24579/62500 | `(-893311/1000000, 351307/1000000); (-92/125, 48499/250000)` |
| 86 | 169 | b | 123111/1000000 | 393317/1000000 | 11327991/92000000 | 393317/1000000 | 12313/100000 | 393317/1000000 | `(692781/1000000, -52832640441/200000000000); (53547/100000, -4444377/25000000); (692781/1000000, -228943242903/1000000000000); (53547/100000, -11327991/125000000); (893311/1000000, -52832640441/200000000000); (92/125, -4444377/25000000); (893311/1000000, -228943242903/1000000000000); (92/125, -11327991/125000000)` |
| 87 | 214 | p | 194453/500000 | 173597/250000 | 143141857041/368000000000 | 173597/250000 | 97243/250000 | 173597/250000 | `(692781/1000000, -15756808459/40000000000); (53547/100000, -30753208927/100000000000); (692781/1000000, -111536085819/200000000000); (53547/100000, -47129230689/100000000000); (692781/1000000, -84920605797/200000000000); (53547/100000, -143141857041/500000000000); (692781/1000000, -686805754677/1000000000000); (53547/100000, -274243219887/500000000000); (893311/1000000, -15756808459/40000000000); (92/125, -30753208927/100000000000); (893311/1000000, -111536085819/200000000000); (92/125, -47129230689/100000000000); (893311/1000000, -84920605797/200000000000); (92/125, -143141857041/500000000000); (893311/1000000, -686805754677/1000000000000); (92/125, -274243219887/500000000000)` |
| 88 | 313 | u | 660097/1000000 | 1/1 | 294863055871/446655500000 | 1/1 | 660157/1000000 | 1/1 | `(893311/1000000, -178676274577/200000000000); (92/125, -218503664591/250000000000); (893311/1000000, -12599196253/12500000000); (92/125, -14782358549/15625000000); (893311/1000000, -294863055871/500000000000); (92/125, -570359397221/1000000000000); (893311/1000000, -24932215969/31250000000); (92/125, -45997884869/62500000000)` |
| 89 | 313 | v | 132681/250000 | 877011/1000000 | 465456410521/876889000000 | 877011/1000000 | 132701/250000 | 877011/1000000 | `(876889/1000000, -384520950347/500000000000); (876889/1000000, -106690643/125000000); (37921/62500, -740219547277/1000000000000); (37921/62500, -48887797/62500000); (876889/1000000, -465456410521/1000000000000); (876889/1000000, -75425087/125000000); (37921/62500, -27289628569/62500000000); (37921/62500, -33255019/62500000)` |
| 90 | 315 | r | 109831/200000 | 879273/1000000 | 490602410521/893311000000 | 879273/1000000 | 109839/200000 | 879273/1000000 | `(893311/1000000, -666444961691/1000000000000); (92/125, -64707824717/100000000000); (893311/1000000, -53350114199/62500000000); (92/125, -4948356713/6250000000); (893311/1000000, -490602410521/1000000000000); (92/125, -29452231/62500000); (893311/1000000, -45745816069/62500000000); (92/125, -41879269/62500000)` |
| 91 | 363 | j | 201001/500000 | 90077/125000 | 201001/500000 | 216096831349/299918000000 | 201001/500000 | 18013/25000 | `(-149959/250000, 17477896149/100000000000); (-149959/250000, 1068192757/4000000000); (-4713/15625, 1100681571/100000000000); (-4713/15625, 10327604347/100000000000); (-149959/250000, 136525882059/500000000000); (-149959/250000, 182660495939/500000000000); (-4713/15625, 5424519213/500000000000); (-4713/15625, 51559133093/500000000000); (-400183/500000, 5055590333/20000000000); (-400183/500000, 40629381489/100000000000); (-251081/500000, 8900737087/100000000000); (-251081/500000, 24252166911/100000000000); (-400183/500000, 175526159639/500000000000); (-400183/500000, 252283308759/500000000000); (-251081/500000, 44424796793/500000000000); (-251081/500000, 121181945913/500000000000); (-149959/250000, 22678414283/100000000000); (-149959/250000, 21992144531/100000000000); (-4713/15625, 1260239941/20000000000); (-4713/15625, 5614929953/100000000000); (-149959/250000, 216096831349/500000000000); (-149959/250000, 212665482589/500000000000); (-4713/15625, 84995468503/500000000000); (-4713/15625, 81564119743/500000000000); (-400183/500000, 30478469799/100000000000); (-400183/500000, 7183341419/20000000000); (-251081/500000, 14101255221/100000000000); (-251081/500000, 19539492517/100000000000); (-400183/500000, 255097108929/500000000000); (-400183/500000, 282288295409/500000000000); (-251081/500000, 123995746083/500000000000); (-251081/500000, 151186932563/500000000000)` |
| 92 | 0 | a | 106689/1000000 | 33/125 | 93000/871543 | 33/125 | 106707/1000000 | 33/125 | `(502831/1000000, -93/1000); (58161/250000, -93/1000); (871543/1000000, -93/1000); (150339/250000, -93/1000)` |
| 93 | 22 | c | 625961/1000000 | 994673/1000000 | 57590241/92000000 | 994673/1000000 | 31299/50000 | 994673/1000000 | `(692763/1000000, -126849409827/200000000000); (53547/100000, -13696563/25000000); (692763/1000000, -599025415989/1000000000000); (53547/100000, -57590241/125000000); (893293/1000000, -126849409827/200000000000); (92/125, -13696563/25000000); (893293/1000000, -599025415989/1000000000000); (92/125, -57590241/125000000)` |
| 94 | 26 | q | 99817/500000 | 248919/500000 | 24961812627/125000000000 | 248919/500000 | 99847/500000 | 248919/500000 | `(1/1, -24962499813/125000000000); (1/1, -73952606427/250000000000); (1/1, -65222393199/250000000000); (1/1, -357/1000); (1/1, -24961812627/125000000000); (1/1, -61941282333/250000000000); (1/1, -77232342921/250000000000)` |
| 95 | 29 | w | 79947/100000 | 1/1 | 399770586543/500000000000 | 1/1 | 799541/1000000 | 1/1 | `(1/1, -79954711449/100000000000); (1/1, -174091117071/200000000000); (1/1, -177188305827/200000000000); (1/1, -19137/20000); (1/1, -399770586543/500000000000); (1/1, -818530685097/1000000000000); (1/1, -937860487989/1000000000000)` |
| 96 | 46 | e | 106689/1000000 | 33/125 | 93000/871543 | 33/125 | 106707/1000000 | 33/125 | `(10057/20000, -93/1000); (232663/1000000, -93/1000); (871543/1000000, -93/1000); (150339/250000, -93/1000)` |
| 97 | 82 | c | 31299/50000 | 994673/1000000 | 31299/50000 | 25405398/25542125 | 31299/50000 | 994647/1000000 | `(-424097/1000000, 367360627001/1000000000000); (-66701/250000, 32940319/125000000); (-424097/1000000, 331097/1000000); (-66701/250000, 43451/250000); (-12036/15625, 713567627001/1000000000000); (-613011/1000000, 38108097/62500000); (-12036/15625, 84663/125000); (-613011/1000000, 520011/1000000)` |
| 98 | 90 | p | 97243/250000 | 173597/250000 | 97243/250000 | 337052792199/485464000000 | 97243/250000 | 69429/100000 | `(-272453/500000, 1538697597/12500000000); (-272453/500000, 62591020041/250000000000); (-60683/62500, 9744426483/25000000000); (-60683/62500, 337052792199/500000000000); (-272453/500000, -794204667/12500000000); (-272453/500000, -11545988751/250000000000); (-60683/62500, 1015724391/5000000000); (-60683/62500, 37755754923/100000000000)` |
| 99 | 90 | q | 99847/500000 | 248919/500000 | 99847/500000 | 1237667041/2486617500 | 99847/500000 | 124433/250000 | `(-31299/50000, 1129596289/31250000000); (-994647/1000000, 4740718831/20000000000); (-31299/50000, 535616029/3906250000); (-994647/1000000, 1237667041/2500000000); (-31299/50000, -6511126443/50000000000); (-994647/1000000, 35333165721/500000000000); (-31299/50000, -995775573/6250000000); (-994647/1000000, 12414063831/62500000000)` |
| 100 | 105 | j | 201001/500000 | 18013/25000 | 359113049863/893293000000 | 18013/25000 | 40201/100000 | 18013/25000 | `(893293/1000000, -643733681483/1000000000000); (92/125, -7804614787/12500000000); (893293/1000000, -46829360087/62500000000); (92/125, -537040693/781250000); (893293/1000000, -359113049863/1000000000000); (92/125, -16987427567/50000000000); (893293/1000000, -34520961907/62500000000); (92/125, -1532742863/3125000000)` |
| 101 | 105 | k | 6217/12500 | 41097/50000 | 436227722163/876889000000 | 41097/50000 | 497471/1000000 | 41097/50000 | `(876889/1000000, -720750475593/1000000000000); (876889/1000000, -95577417/125000000); (37921/62500, -345961629711/500000000000); (37921/62500, -2708199/3906250); (876889/1000000, -436227722163/1000000000000); (876889/1000000, -66274497/125000000); (37921/62500, -50925063249/125000000000); (37921/62500, -7169931/15625000)` |
| 102 | 113 | r | 109839/200000 | 879273/1000000 | 109839/200000 | 28221/32096 | 109839/200000 | 879269/1000000 | `(-424097/1000000, 47821107469/500000000000); (-66701/250000, -8195860063/1000000000000); (-424097/1000000, 331097/1000000); (-66701/250000, 43451/250000); (-12036/15625, 220924607469/500000000000); (-613011/1000000, 338011139937/1000000000000); (-12036/15625, 84663/125000); (-613011/1000000, 520011/1000000); (-424097/1000000, 27517627001/1000000000000); (-66701/250000, -1192507/15625000); (-12036/15625, 373724627001/1000000000000); (-613011/1000000, 33735819/125000000)` |
| 103 | 118 | h | 272453/500000 | 60683/62500 | 272453/500000 | 29489894261/30375312500 | 272453/500000 | 970851/1000000 | `(-106521/250000, 357762707949/1000000000000); (-155931/1000000, 8860269261/62500000000); (-378079/500000, 687836707949/1000000000000); (-97201/200000, 29489894261/62500000000); (-106521/250000, 83271/250000); (-155931/1000000, 62931/1000000); (-378079/500000, 331579/500000); (-97201/200000, 78601/200000)` |
| 104 | 123 | v | 132701/250000 | 877011/1000000 | 132701/250000 | 331579/378079 | 132701/250000 | 87701/100000 | `(-106521/250000, 112714147943/500000000000); (-155931/1000000, 9429896113/1000000000000); (-106521/250000, 157303707949/1000000000000); (-155931/1000000, -3668418239/62500000000); (-378079/500000, 277751147943/500000000000); (-97201/200000, 339503896113/1000000000000); (-378079/500000, 487377707949/1000000000000); (-97201/200000, 16961206761/62500000000); (-106521/250000, 83271/250000); (-155931/1000000, 62931/1000000); (-378079/500000, 331579/500000); (-97201/200000, 78601/200000)` |
| 105 | 138 | b | 12313/100000 | 393317/1000000 | 12313/100000 | 24579/62500 | 12313/100000 | 24579/62500 | `(-1/1, 123111/1000000); (-1/1, 24579/62500)` |
| 106 | 138 | f | 123111/1000000 | 24579/62500 | 12313/100000 | 24579/62500 | 12313/100000 | 24579/62500 | `(1/1, -12313/100000); (1/1, -24579/62500)` |
| 107 | 141 | h | 272453/500000 | 970851/1000000 | 180668/331549 | 970851/1000000 | 13623/25000 | 970851/1000000 | `(31299/50000, -135501/250000); (994647/1000000, -135501/250000)` |
| 108 | 144 | f | 12313/100000 | 24579/62500 | 12313/100000 | 351289/893293 | 12313/100000 | 98313/250000 | `(-893293/1000000, 351289/1000000); (-92/125, 48499/250000)` |
| 109 | 169 | b | 12313/100000 | 24579/62500 | 11328123/92000000 | 24579/62500 | 123131/1000000 | 24579/62500 | `(346417/500000, -52829809827/200000000000); (535541/1000000, -4444113/25000000); (346417/500000, -228927842817/1000000000000); (535541/1000000, -11328123/125000000); (893293/1000000, -52829809827/200000000000); (92/125, -4444113/25000000); (893293/1000000, -228927842817/1000000000000); (92/125, -11328123/125000000)` |
| 110 | 214 | p | 97243/250000 | 69429/100000 | 143168363843/368000000000 | 69429/100000 | 97261/250000 | 69429/100000 | `(346417/500000, -78789399093/200000000000); (535541/1000000, -30756246633/100000000000); (346417/500000, -4461023799/8000000000); (535541/1000000, -23562172287/50000000000); (346417/500000, -424639586503/1000000000000); (535541/1000000, -143168363843/500000000000); (346417/500000, -27467806429/40000000000); (535541/1000000, -137098075477/250000000000); (893293/1000000, -78789399093/200000000000); (92/125, -30756246633/100000000000); (893293/1000000, -4461023799/8000000000); (92/125, -23562172287/50000000000); (893293/1000000, -424639586503/1000000000000); (92/125, -143168363843/500000000000); (893293/1000000, -27467806429/40000000000); (92/125, -137098075477/250000000000)` |
| 111 | 313 | u | 660157/1000000 | 1/1 | 58973940839/89329300000 | 1/1 | 132037/200000 | 1/1 | `(893293/1000000, -89331706361/100000000000); (92/125, -21848739413/25000000000); (893293/1000000, -251968748361/250000000000); (92/125, -59126200413/62500000000); (893293/1000000, -58973940839/100000000000); (92/125, -5703719213/10000000000); (893293/1000000, -199453798839/250000000000); (92/125, -18398985213/25000000000)` |
| 112 | 313 | v | 132701/250000 | 87701/100000 | 46547016709/87687000000 | 87701/100000 | 530831/1000000 | 87701/100000 | `(87687/100000, -153804905577/200000000000); (87687/100000, -1333593/1562500); (151687/250000, -740200619631/1000000000000); (151687/250000, -48886707/62500000); (87687/100000, -46547016709/100000000000); (87687/100000, -3771223/6250000); (151687/250000, -109161564709/250000000000); (151687/250000, -33255217/62500000)` |
| 113 | 315 | r | 109839/200000 | 879269/1000000 | 49061716709/89329300000 | 879269/1000000 | 549223/1000000 | 879269/1000000 | `(893293/1000000, -33319682521/50000000000); (92/125, -64702616333/100000000000); (893293/1000000, -106692919521/125000000000); (92/125, -197921892333/250000000000); (893293/1000000, -49061716709/100000000000); (92/125, -5890621/12500000); (893293/1000000, -182978814709/250000000000); (92/125, -41878717/62500000)` |
| 114 | 363 | j | 40201/100000 | 18013/25000 | 40201/100000 | 72027403603/99974500000 | 40201/100000 | 360229/500000 | `(-599847/1000000, 174821498351/1000000000000); (-599847/1000000, 267027157571/1000000000000); (-301809/1000000, 11132173877/1000000000000); (-301809/1000000, 103337833097/1000000000000); (-599847/1000000, 273101606093/1000000000000); (-599847/1000000, 365307265313/1000000000000); (-301809/1000000, 11046031871/1000000000000); (-301809/1000000, 103251691091/1000000000000); (-400153/500000, 252808869547/1000000000000); (-400153/500000, 406203836681/1000000000000); (-125567/250000, 89119545073/1000000000000); (-125567/250000, 242514512207/1000000000000); (-400153/500000, 351088977289/1000000000000); (-400153/500000, 504483944423/1000000000000); (-125567/250000, 89033403067/1000000000000); (-125567/250000, 242428370201/1000000000000); (-599847/1000000, 113397309151/500000000000); (-599847/1000000, 54989353287/250000000000); (-301809/1000000, 15776323457/250000000000); (-301809/1000000, 28134044337/500000000000); (-599847/1000000, 216082210809/500000000000); (-599847/1000000, 26582951029/62500000000); (-301809/1000000, 42527211849/250000000000); (-301809/1000000, 81635821121/500000000000); (-400153/500000, 152390994749/500000000000); (-400153/500000, 179567046129/500000000000); (-125567/250000, 2204572891/15625000000); (-125567/250000, 24430595973/125000000000); (-400153/500000, 255075896407/500000000000); (-400153/500000, 282251947787/500000000000); (-125567/250000, 7753006831/31250000000); (-125567/250000, 37806040169/125000000000)` |
| 115 | 0 | a | 106707/1000000 | 33/125 | 23250/217879 | 33/125 | 10671/100000 | 33/125 | `(502849/1000000, -93/1000); (58179/250000, -93/1000); (217879/250000, -93/1000); (601383/1000000, -93/1000)` |
| 116 | 22 | c | 31299/50000 | 994647/1000000 | 57590373/92000000 | 994647/1000000 | 312991/500000 | 994647/1000000 | `(692831/1000000, -63424241367/100000000000); (535541/1000000, -68481891/125000000); (692831/1000000, -59902320501/100000000000); (535541/1000000, -57590373/125000000); (89329/100000, -63424241367/100000000000); (92/125, -68481891/125000000); (89329/100000, -59902320501/100000000000); (92/125, -57590373/125000000)` |
| 117 | 26 | q | 99847/500000 | 124433/250000 | 19970791713/100000000000 | 124433/250000 | 199707/1000000 | 124433/250000 | `(1/1, -49927208217/250000000000); (1/1, -73951525527/250000000000); (1/1, -6522568269/25000000000); (1/1, -357/1000); (1/1, -19970791713/100000000000); (1/1, -24779304303/100000000000); (1/1, -3089148741/10000000000)` |
| 118 | 29 | w | 799541/1000000 | 1/1 | 799557362193/1000000000000 | 1/1 | 799557/1000000 | 1/1 | `(1/1, -799558352331/1000000000000); (1/1, -870461066661/1000000000000); (1/1, -88594728567/100000000000); (1/1, -19137/20000); (1/1, -799557362193/1000000000000); (1/1, -818547141183/1000000000000); (1/1, -93786022101/100000000000)` |
| 119 | 46 | e | 106707/1000000 | 33/125 | 23250/217879 | 33/125 | 10671/100000 | 33/125 | `(502851/1000000, -93/1000); (116359/500000, -93/1000); (217879/250000, -93/1000); (601383/1000000, -93/1000)` |
| 120 | 82 | c | 312991/500000 | 994647/1000000 | 312991/500000 | 15243029/15325250 | 312991/500000 | 198927/200000 | `(-424121/1000000, 7347653173/20000000000); (-266831/1000000, 3294277/12500000); (-424121/1000000, 331121/1000000); (-266831/1000000, 173831/1000000); (-7703/10000, 14271233173/20000000000); (-61301/100000, 15243029/25000000); (-7703/10000, 6773/10000); (-61301/100000, 52001/100000)` |
| 121 | 90 | p | 97261/250000 | 69429/100000 | 97261/250000 | 5616723437/8090425000 | 97261/250000 | 173561/250000 | `(-13623/25000, 61548562083/500000000000); (-13623/25000, 50072186451/200000000000); (-970851/1000000, 24357641463/62500000000); (-970851/1000000, 16850170311/25000000000); (-13623/25000, -7932645173/125000000000); (-13623/25000, -2303258181/50000000000); (-970851/1000000, 101581988929/500000000000); (-970851/1000000, 75516143313/200000000000)` |
| 122 | 90 | q | 199707/1000000 | 124433/250000 | 199707/1000000 | 164979542647/331545000000 | 199707/1000000 | 497609/1000000 | `(-312991/500000, 451403187/12500000000); (-198927/200000, 5924966193/25000000000); (-312991/500000, 68515747119/500000000000); (-198927/200000, 494938627941/1000000000000); (-312991/500000, -1627466613/12500000000); (-198927/200000, 1767226593/25000000000); (-312991/500000, -79636115481/500000000000); (-198927/200000, 198634902741/1000000000000)` |
| 123 | 105 | j | 40201/100000 | 360229/500000 | 3591262699/8932900000 | 360229/500000 | 201013/500000 | 360229/500000 | `(89329/100000, -64364340193/100000000000); (92/125, -62427628423/100000000000); (89329/100000, -187299136193/250000000000); (92/125, -171835484423/250000000000); (89329/100000, -3591262699/10000000000); (92/125, -1698795761/5000000000); (89329/100000, -13808140699/25000000000); (92/125, -6130887761/12500000000)` |
| 124 | 105 | k | 497471/1000000 | 41097/50000 | 2726767943/5480437500 | 41097/50000 | 99509/200000 | 41097/50000 | `(87687/100000, -4504593701/6250000000); (87687/100000, -47787659/62500000); (151687/250000, -34595513677/50000000000); (151687/250000, -21665323/31250000); (87687/100000, -2726767943/6250000000); (87687/100000, -33139787/62500000); (151687/250000, -20372907613/50000000000); (151687/250000, -14341387/31250000)` |
| 125 | 113 | r | 549223/1000000 | 879269/1000000 | 549223/1000000 | 6773/7703 | 549223/1000000 | 219817/250000 | `(-424121/1000000, 19136239339/200000000000); (-266831/1000000, -1631860391/200000000000); (-424121/1000000, 331121/1000000); (-266831/1000000, 173831/1000000); (-7703/10000, 88372039339/200000000000); (-61301/100000, 67603939609/200000000000); (-7703/10000, 6773/10000); (-61301/100000, 52001/100000); (-424121/1000000, 551353173/20000000000); (-266831/1000000, -1906821/25000000); (-7703/10000, 7474933173/20000000000); (-61301/100000, 3373827/12500000)` |
| 126 | 118 | h | 13623/25000 | 970851/1000000 | 13623/25000 | 117960152659/121504000000 | 13623/25000 | 485417/500000 | `(-426093/1000000, 35777354659/100000000000); (-155971/1000000, 35448902659/250000000000); (-378069/500000, 68781854659/100000000000); (-7594/15625, 117960152659/250000000000); (-426093/1000000, 333093/1000000); (-155971/1000000, 62971/1000000); (-378069/500000, 331569/500000); (-7594/15625, 49127/125000)` |
| 127 | 123 | v | 530831/1000000 | 87701/100000 | 530831/1000000 | 110523/126023 | 530831/1000000 | 877007/1000000 | `(-426093/1000000, 45088816927/200000000000); (-155971/1000000, 9466148681/1000000000000); (-426093/1000000, 15733054659/100000000000); (-155971/1000000, -14661847341/250000000000); (-378069/500000, 111097816927/200000000000); (-7594/15625, 339511148681/1000000000000); (-378069/500000, 48737554659/100000000000); (-7594/15625, 67849402659/250000000000); (-426093/1000000, 333093/1000000); (-155971/1000000, 62971/1000000); (-378069/500000, 331569/500000); (-7594/15625, 49127/125000)` |
| 128 | 138 | b | 123131/1000000 | 24579/62500 | 123131/1000000 | 98313/250000 | 123131/1000000 | 98313/250000 | `(-1/1, 12313/100000); (-1/1, 98313/250000)` |
| 129 | 138 | f | 12313/100000 | 98313/250000 | 123131/1000000 | 98313/250000 | 123131/1000000 | 98313/250000 | `(1/1, -123131/1000000); (1/1, -98313/250000)` |
| 130 | 141 | h | 13623/25000 | 485417/500000 | 188/345 | 485417/500000 | 544927/1000000 | 485417/500000 | `(312991/500000, -135501/250000); (198927/200000, -135501/250000)` |
| 131 | 144 | f | 123131/1000000 | 98313/250000 | 123131/1000000 | 175643/446645 | 123131/1000000 | 1573/4000 | `(-89329/100000, 175643/500000); (-92/125, 48499/250000)` |
| 132 | 169 | b | 123131/1000000 | 98313/250000 | 2832039/23000000 | 98313/250000 | 30783/250000 | 98313/250000 | `(692847/1000000, -26414441367/100000000000); (535557/1000000, -22219641/125000000); (692847/1000000, -5723132793/25000000000); (535557/1000000, -2832039/31250000); (89329/100000, -26414441367/100000000000); (92/125, -22219641/125000000); (89329/100000, -5723132793/25000000000); (92/125, -2832039/31250000)` |
| 133 | 214 | p | 97261/250000 | 173561/250000 | 71587055619/184000000000 | 173561/250000 | 19453/50000 | 173561/250000 | `(692847/1000000, -393955091331/1000000000000); (535557/1000000, -307567805661/1000000000000); (692847/1000000, -557569721477/1000000000000); (535557/1000000, -471182435807/1000000000000); (692847/1000000, -106162071549/250000000000); (535557/1000000, -71587055619/250000000000); (692847/1000000, -171645995483/250000000000); (535557/1000000, -137070979553/250000000000); (89329/100000, -393955091331/1000000000000); (92/125, -307567805661/1000000000000); (89329/100000, -557569721477/1000000000000); (92/125, -471182435807/1000000000000); (89329/100000, -106162071549/250000000000); (92/125, -71587055619/250000000000); (89329/100000, -171645995483/250000000000); (92/125, -137070979553/250000000000)` |
| 134 | 313 | u | 132037/200000 | 1/1 | 589742439907/893290000000 | 1/1 | 660191/1000000 | 1/1 | `(89329/100000, -893293442851/1000000000000); (92/125, -873926167861/1000000000000); (89329/100000, -4031426333/4000000000); (92/125, -3784009163/4000000000); (89329/100000, -589742439907/1000000000000); (92/125, -570375164917/1000000000000); (89329/100000, -3191257181/4000000000); (92/125, -2943840011/4000000000)` |
| 135 | 313 | v | 530831/1000000 | 877007/1000000 | 46547269099/87686900000 | 877007/1000000 | 265417/500000 | 877007/1000000 | `(876869/1000000, -3845103363/5000000000); (876869/1000000, -21337371/25000000); (2427/4000, -74019627411/100000000000); (2427/4000, -1527702/1953125); (876869/1000000, -46547269099/100000000000); (876869/1000000, -75424427/125000000); (2427/4000, -174659317/400000000); (2427/4000, -133021/250000)` |
| 136 | 315 | r | 549223/1000000 | 219817/250000 | 49061769099/89329000000 | 219817/250000 | 21969/40000 | 219817/250000 | `(89329/100000, -666379943957/1000000000000); (92/125, -647012668967/1000000000000); (89329/100000, -3414124331/4000000000); (92/125, -3166707161/4000000000); (89329/100000, -49061769099/100000000000); (92/125, -29453151/62500000); (89329/100000, -292764917/400000000); (92/125, -335029/500000)` |
| 137 | 363 | j | 201013/500000 | 360229/500000 | 201013/500000 | 54019779433/74981250000 | 201013/500000 | 180111/250000 | `(-11997/20000, 17483786427/100000000000); (-11997/20000, 133503547239/500000000000); (-75487/250000, 140282979/12500000000); (-75487/250000, 6461991783/62500000000); (-11997/20000, 34142151413/125000000000); (-11997/20000, 45663305189/125000000000); (-75487/250000, 700094723/62500000000); (-75487/250000, 6460671611/62500000000); (-800293/1000000, 5056444357/20000000000); (-800293/1000000, 40616344457/100000000000); (-502391/1000000, 892069919/10000000000); (-502391/1000000, 12127410931/50000000000); (-800293/1000000, 87780391221/250000000000); (-800293/1000000, 126115697901/250000000000); (-502391/1000000, 22296467287/250000000000); (-502391/1000000, 60631773967/250000000000); (-11997/20000, 45358917889/200000000000); (-11997/20000, 219963655973/1000000000000); (-75487/250000, 12635872699/200000000000); (-75487/250000, 56348430023/1000000000000); (-11997/20000, 54019779433/125000000000); (-11997/20000, 53165912749/125000000000); (-75487/250000, 10638908733/62500000000); (-75487/250000, 10211975391/62500000000); (-800293/1000000, 12191157721/40000000000); (-800293/1000000, 71824001213/200000000000); (-502391/1000000, 5646548683/40000000000); (-502391/1000000, 39100956023/200000000000); (-800293/1000000, 127535647261/250000000000); (-800293/1000000, 141120913021/250000000000); (-502391/1000000, 62051723327/250000000000); (-502391/1000000, 75636989087/250000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 129:0 | ABC | lo | 93/1000 | occupants none |
| 129:4 | ABF | lo | 93/1000 | occupants none |
| 129:8 | ABP | lo | 93/1000 | occupants none |
| 129:12 | ABR | lo | 5043/15625 | earlier 128:1763; ABR; lo; 5043/15625 |
| 129:13 | ABR | hi | 16298757/31250000 | vertex maximum 16298757/31250000 |
| 129:16 | ACE | lo | 93/1000 | occupants none |
| 129:18 | ACF | lo | 91727/250000 | earlier 128:1837; ACF; lo; 91727/250000 |
| 129:21 | ACH | hi | 42974398737/50000000000 | vertex maximum 42974398737/50000000000 |
| 129:25 | ACQ | hi | 174743643489/200000000000 | vertex maximum 174743643489/200000000000 |
| 129:26 | ACR | lo | 13857/20000 | occupants P, S |
| 129:27 | ACR | hi | 98232418743/100000000000 | vertex maximum 98232418743/100000000000 |
| 129:30 | AEF | lo | 39451/100000 | earlier 128:1838; AEF; lo; 39451/100000 |
| 129:31 | AEF | hi | 89329/100000 | vertex maximum 89329/100000 |
| 129:32 | AEH | lo | 173751/500000 | earlier 128:1816; AEH; lo; 173751/500000 |
| 129:33 | AEH | hi | 216031/250000 | vertex maximum 216031/250000 |
| 129:34 | AEP | lo | 93/1000 | occupants none |
| 129:36 | AEQ | lo | 17947/50000 | earlier 128:1720; AEQ; lo; 17947/50000 |
| 129:37 | AEQ | hi | 770297/1000000 | vertex maximum 770297/1000000 |
| 129:38 | AER | lo | 13857/20000 | occupants P, S |
| 129:39 | AER | hi | 89329/100000 | vertex maximum 89329/100000 |
| 129:40 | AES | lo | 350961/1000000 | earlier 128:1655; AES; lo; 350961/1000000 |
| 129:42 | AFH | lo | 93/1000 | occupants none |
| 129:47 | AFQ | hi | 210266796939/250000000000 | vertex maximum 210266796939/250000000000 |
| 129:48 | AFR | lo | 35431/250000 | earlier 128:1691; AFR; lo; 35431/250000 |
| 129:49 | AFR | hi | 700130367763/1000000000000 | vertex maximum 700130367763/1000000000000 |
| 129:50 | AFS | lo | 21607/200000 | earlier 128:1820; AFS; lo; 21607/200000 |
| 129:60 | APQ | lo | 103669/1000000 | earlier 128:1676; APQ; lo; 103669/1000000 |
| 129:62 | APR | lo | 342879/1000000 | earlier 128:1709; APR; lo; 342879/1000000 |
| 129:64 | APS | lo | 34141/250000 | earlier 128:1638; APS; lo; 34141/250000 |
| 129:66 | AQR | lo | 279/1000 | occupants S |
| 129:68 | AQS | lo | 93/1000 | occupants none |
| 129:70 | ARS | lo | 93/1000 | occupants none |
| 129:72 | BCE | lo | 93/1000 | occupants none |
| 129:75 | BCF | hi | 871503/1000000 | vertex maximum 871503/1000000 |
| 129:82 | BCR | lo | 9363/25000 | earlier 128:1725; BCR; lo; 9363/25000 |
| 129:84 | BCS | lo | 8177/25000 | earlier 128:1472; BCS; lo; 8177/25000 |
| 129:88 | BEH | lo | 39061/125000 | earlier 128:1796; BEH; lo; 39061/125000 |
| 129:90 | BEP | lo | 93/1000 | occupants none |
| 129:92 | BEQ | lo | 348271/1000000 | earlier 128:1362; BEQ; lo; 348271/1000000 |
| 129:93 | BEQ | hi | 355854904093/500000000000 | vertex maximum 355854904093/500000000000 |
| 129:94 | BER | lo | 399061/1000000 | earlier 128:1728; BER; lo; 399061/1000000 |
| 129:95 | BER | hi | 83139961597/100000000000 | vertex maximum 83139961597/100000000000 |
| 129:98 | BFH | lo | 93/1000 | occupants none |
| 129:100 | BFP | lo | 109143/1000000 | earlier 128:1743; BFP; lo; 109143/1000000 |
| 129:104 | BFR | lo | 1157/4000 | earlier 128:1798; BFR; lo; 1157/4000 |
| 129:105 | BFR | hi | 756137/1000000 | vertex maximum 756137/1000000 |
| 129:106 | BFS | lo | 413/4000 | earlier 128:1778; BFS; lo; 413/4000 |
| 129:112 | BHR | lo | 343547/1000000 | earlier 128:1770; BHR; lo; 343547/1000000 |
| 129:116 | BPQ | lo | 93/1000 | occupants none |
| 129:118 | BPR | lo | 48239/500000 | earlier 128:1677; BPR; lo; 48239/500000 |
| 129:126 | BRS | lo | 93/1000 | occupants none |
| 129:128 | CEF | lo | 547/5000 | earlier 128:1804; CEF; lo; 547/5000 |
| 129:132 | CEP | lo | 93/1000 | occupants none |
| 129:134 | CEQ | lo | 93/1000 | occupants none |
| 129:138 | CES | lo | 96153/1000000 | earlier 128:1644; CES; lo; 96153/1000000 |
| 129:142 | CFP | lo | 93/1000 | occupants none |
| 129:146 | CFR | lo | 94063/250000 | earlier 128:1668; CFR; lo; 94063/250000 |
| 129:148 | CFS | lo | 93/1000 | occupants none |
| 129:150 | CHP | lo | 93/1000 | occupants none |
| 129:154 | CHR | lo | 427717/1000000 | earlier 128:1839; CHR; lo; 427717/1000000 |
| 129:161 | CPR | hi | 467347/1000000 | earlier 128:1757; CPR; hi; 467347/1000000 |
| 129:162 | CPS | lo | 100281/1000000 | earlier 128:973; CPS; lo; 100281/1000000 |
| 129:165 | CQR | hi | 441334426299/1000000000000 | vertex maximum 441334426299/1000000000000 |
| 129:174 | EFQ | lo | 185951/500000 | earlier 128:1577; EFQ; lo; 185951/500000 |
| 129:175 | EFQ | hi | 675449560093/1000000000000 | vertex maximum 675449560093/1000000000000 |
| 129:176 | EFR | lo | 190313/500000 | earlier 128:1578; EFR; lo; 190313/500000 |
| 129:177 | EFR | hi | 67544962073/100000000000 | vertex maximum 67544962073/100000000000 |
| 129:178 | EFS | lo | 93/1000 | occupants none |
| 129:180 | EHP | lo | 107249/1000000 | earlier 128:1781; EHP; lo; 107249/1000000 |
| 129:185 | EHR | hi | 210095796289/250000000000 | vertex maximum 210095796289/250000000000 |
| 129:186 | EHS | lo | 93/1000 | occupants none |
| 129:194 | EQR | lo | 93/1000 | occupants none |
| 129:195 | EQR | hi | 13889225207/40000000000 | vertex maximum 13889225207/40000000000 |
| 129:204 | FHR | lo | 93/1000 | occupants none |
| 129:206 | FHS | lo | 94013/1000000 | earlier 128:1539; FHS; lo; 94013/1000000 |
| 129:208 | FPQ | lo | 19597/62500 | earlier 128:1732; FPQ; lo; 19597/62500 |
| 129:211 | FPR | hi | 605131148141/1000000000000 | vertex maximum 605131148141/1000000000000 |
| 129:216 | FQS | lo | 93/1000 | occupants none |
| 129:218 | FRS | lo | 93/1000 | occupants none |
| 129:222 | HPR | lo | 32937/100000 | earlier 128:1833; HPR; lo; 32937/100000 |
| 129:228 | HRS | lo | 93/1000 | occupants none |
| 129:236 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 10 | fan | AER = AEP + EPR + APR | point P |
| 58 | plu | ABE * ACR = ABC * AER + ABR * ACE | circuit ABCER |
| 141 | plu | ABR * CRS = ACR * BRS + ARS * BCR | circuit RABCS |
| 213 | plu | ABS * AER = ABE * ARS + ABR * AES | circuit ABERS |
| 216 | plu | ABR * ERS = AER * BRS + ARS * BER | circuit RABES |
| 297 | plu | APQ * BPR = ABP * PQR + APR * BPQ | circuit PABQR |
| 365 | plu | ACP * AER = ACE * APR + ACR * AEP | circuit ACEPR |
| 377 | plu | AEQ * CER = ACE * EQR + AER * CEQ | circuit EACQR |
| 402 | plu | AFR * CFH = ACF * FHR + AFH * CFR | circuit FACHR |
| 478 | plu | ACS * CPR = ACP * CRS + ACR * CPS | circuit CAPRS |
| 497 | plu | AEF * AHR = AEH * AFR + AER * AFH | circuit AEFHR |
| 499 | plu | AFR * EFH = AEF * FHR + AFH * EFR | circuit FAEHR |
| 506 | plu | AFS * EHS = AES * FHS + AHS * EFS | circuit SAEFH |
| 512 | plu | AER * AFP = AEF * APR + AEP * AFR | circuit AEFPR |
| 545 | plu | AHP * EPR = AEP * HPR + APR * EHP | circuit PAEHR |
| 552 | plu | AER * AHQ = AEH * AQR + AEQ * AHR | circuit AEHQR |
| 748 | plu | BFP * CPQ = BCP * FPQ + BPQ * CFP | circuit PBCFQ |
| 783 | plu | BHP * CPR = BCP * HPR + BPR * CHP | circuit PBCHR |
| 841 | plu | BFS * EHS = BES * FHS + BHS * EFS | circuit SBEFH |
| 1006 | plu | CEF * EPQ = CEP * EFQ + CEQ * EFP | circuit ECFPQ |
| 1040 | plu | CEH * CPR = CEP * CHR + CER * CHP | circuit CEHPR |
| 1043 | plu | CPR * EHP = CEP * HPR + CHP * EPR | circuit PCEHR |
| 2151 | support | BFR * ABR >= 1023/1000 * (BFR - AFR) | pentagon RFHAB |
| 2640 | bary | outer ABR; fans BRS, ARS, ABS; target ACS; sign 1; vertices none 0; ABC -1; ACR 1 | container ABR; inner S; line AC |
| 2641 | bary | outer ABR; fans BRS, ARS, ABS; target AES; sign 1; vertices none 0; ABE -1; AER 1 | container ABR; inner S; line AE |
| 2650 | bary | outer ABR; fans BRS, ARS, ABS; target BFS; sign -1; vertices ABF 1; none 0; BFR -1 | container ABR; inner S; line BF |
| 2664 | bary | outer ABR; fans BRS, ARS, ABS; target EHS; sign -1; vertices AEH 1; BEH 1; EHR -1 | container ABR; inner S; line EH |
| 2666 | bary | outer ABR; fans BRS, ARS, ABS; target EQS; sign 1; vertices AEQ 1; BEQ 1; EQR 1 | container ABR; inner S; line EQ |
| 2752 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 2757 | bary | outer ACH; fans CHP, AHP, ACP; target EPS; sign 1; vertices AES 1; CES 1; EHS 1 | container ACH; inner P; line ES |
| 2927 | bary | outer ACS; fans CPS, APS, ACP; target CPR; sign 1; vertices ACR 1; none 0; CRS 1 | container ACS; inner P; line CR |
| 2933 | bary | outer ACS; fans CPS, APS, ACP; target EPR; sign 1; vertices AER 1; CER 1; ERS 1 | container ACS; inner P; line ER |
| 3028 | bary | outer AEH; fans EHP, AHP, AEP; target FPS; sign -1; vertices AFS -1; EFS -1; FHS -1 | container AEH; inner P; line FS |
| 3085 | bary | outer AER; fans EPR, APR, AEP; target AFP; sign -1; vertices none 0; AEF -1; AFR -1 | container AER; inner P; line AF |
| 3103 | bary | outer AER; fans EPR, APR, AEP; target CPQ; sign 1; vertices ACQ 1; CEQ -1; CQR 1 | container AER; inner P; line CQ |
| 3104 | bary | outer AER; fans EPR, APR, AEP; target CPR; sign 1; vertices ACR 1; CER -1; none 0 | container AER; inner P; line CR |
| 3109 | bary | outer AER; fans EPR, APR, AEP; target EPQ; sign 1; vertices AEQ 1; none 0; EQR 1 | container AER; inner P; line EQ |
| 3112 | bary | outer AER; fans EPR, APR, AEP; target FHP; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner P; line FH |
| 3157 | bary | outer AER; fans ERS, ARS, AES; target FHS; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner S; line FH |
| 3177 | bary | outer AES; fans EPS, APS, AEP; target APQ; sign -1; vertices none 0; AEQ -1; AQS 1 | container AES; inner P; line AQ |
| 3180 | bary | outer AES; fans EPS, APS, AEP; target BCP; sign 1; vertices ABC 1; BCE 1; BCS 1 | container AES; inner P; line BC |
| 3186 | bary | outer AES; fans EPS, APS, AEP; target BPR; sign -1; vertices ABR 1; BER -1; BRS 1 | container AES; inner P; line BR |
| 3212 | bary | outer AES; fans EPS, APS, AEP; target PQR; sign 1; vertices AQR 1; EQR 1; QRS 1 | container AES; inner P; line QR |
| 3228 | bary | outer AFQ; fans FQS, AQS, AFS; target BPS; sign 1; vertices ABP 1; BFP 1; BPQ 1 | container AFQ; inner S; line BP |
| 3372 | bary | outer BCF; fans CFP, BFP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EFQ 1 | container BCF; inner P; line EQ |
| 3663 | bary | outer BEQ; fans EPQ, BPQ, BEP; target APR; sign -1; vertices ABR -1; AER -1; AQR -1 | container BEQ; inner P; line AR |
| 3664 | bary | outer BEQ; fans EPQ, BPQ, BEP; target APS; sign -1; vertices ABS -1; AES -1; AQS -1 | container BEQ; inner P; line AS |
| 3699 | bary | outer BEQ; fans EPQ, BPQ, BEP; target PRS; sign 1; vertices BRS 1; ERS 1; QRS 1 | container BEQ; inner P; line RS |
| 3870 | bary | outer BFR; fans FRS, BRS, BFS; target PQS; sign 1; vertices BPQ 1; FPQ 1; PQR 1 | container BFR; inner S; line PQ |
| 4053 | bary | outer EFQ; fans FQS, EQS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHQ -1 | container EFQ; inner S; line AH |
| 4104 | bary | outer EFR; fans FRS, ERS, EFS; target BHS; sign -1; vertices BEH -1; BFH -1; BHR -1 | container EFR; inner S; line BH |
| 4111 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 4112 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 4127 | bary | outer EFR; fans FRS, ERS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPR 1 | container EFR; inner S; line HP |
| 4239 | bary | outer FPR; fans PRS, FRS, FPS; target CES; sign 1; vertices CEF 1; CEP 1; CER 1 | container FPR; inner S; line CE |
| 4336 | four | 1 * ABR + -1 * ARS + -1 * ABS + -1 * BRS = 0 | vertices ABRS |
| 4344 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 4359 | four | 1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP = 0 | vertices AEFP |
| 4363 | four | 1 * AEH + -1 * AHP + -1 * AEP + -1 * EHP = 0 | vertices AEHP |
| 4367 | four | 1 * AEP + 1 * APQ + -1 * AEQ + 1 * EPQ = 0 | vertices AEPQ |
| 4368 | four | 1 * AEP + 1 * APR + -1 * AER + 1 * EPR = 0 | vertices AEPR |
| 4369 | four | 1 * AEP + 1 * APS + -1 * AES + 1 * EPS = 0 | vertices AEPS |
| 4408 | four | 1 * BCP + 1 * BPR + -1 * BCR + 1 * CPR = 0 | vertices BCPR |
| 4409 | four | 1 * BCP + 1 * BPS + -1 * BCS + 1 * CPS = 0 | vertices BCPS |
| 4418 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4422 | four | 1 * BEP + 1 * BPQ + -1 * BEQ + 1 * EPQ = 0 | vertices BEPQ |
| 4423 | four | 1 * BEP + 1 * BPR + -1 * BER + 1 * EPR = 0 | vertices BEPR |
| 4424 | four | 1 * BEP + 1 * BPS + -1 * BES + 1 * EPS = 0 | vertices BEPS |
| 4437 | four | -1 * BFR + 1 * BRS + 1 * BFS + 1 * FRS = 0 | vertices BFRS |
| 4442 | four | -1 * BHR + 1 * BRS + 1 * BHS + 1 * HRS = 0 | vertices BHRS |
| 4471 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 4476 | four | -1 * CHR + 1 * CRS + 1 * CHS + 1 * HRS = 0 | vertices CHRS |
| 4489 | four | -1 * EFQ + 1 * EQS + 1 * EFS + 1 * FQS = 0 | vertices EFQS |
| 4490 | four | -1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS = 0 | vertices EFRS |
| 4506 | four | 1 * FPQ + -1 * FQS + -1 * FPS + -1 * PQS = 0 | vertices FPQS |
| 4510 | four | 1 * HPR + -1 * HRS + -1 * HPS + -1 * PRS = 0 | vertices HPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 129:240 | EPR | hi | 457411/1000000 | 457411/1000000 | 10 | 129:39, 129:34, 129:62 |
| 129:242 | ABE | lo | 1923/20000 | 3148366200/32744139581 | 58 | 129:0, 129:38, 129:12, 129:16, 129:27 |
| 129:243 | CRS | lo | 190323/1000000 | 5514745/28975568 | 141 | 129:26, 129:126, 129:70, 129:82, 129:13 |
| 129:246 | ABS | lo | 68407/500000 | 7638457167/55830625000 | 213 | 129:242, 129:70, 129:12, 129:40, 129:39 |
| 129:247 | ERS | lo | 194699/1000000 | 33849241/173853408 | 216 | 129:38, 129:126, 129:70, 129:94, 129:13 |
| 129:248 | ACP | lo | 107829/1000000 | 96322797/893290000 | 365 | 129:16, 129:62, 129:26, 129:34, 129:39 |
| 129:249 | CER | lo | 94877/1000000 | 1461681/15405940 | 377 | 129:16, 129:194, 129:38, 129:134, 129:37 |
| 129:251 | CFH | lo | 19743/200000 | 2229480000/22584850573 | 402 | 129:18, 129:204, 129:42, 129:146, 129:49 |
| 129:253 | AHR | lo | 3977/31250 | 14210552931/111661250000 | 497 | 129:32, 129:48, 129:38, 129:42, 129:31 |
| 129:254 | EFH | lo | 102963/1000000 | 2325408000/22584850573 | 499 | 129:30, 129:204, 129:42, 129:176, 129:49 |
| 129:256 | AHP | lo | 147361/1000000 | 67404839871/457411000000 | 545 | 129:34, 129:222, 129:62, 129:180, 129:240 |
| 129:257 | AHQ | lo | 159671/1000000 | 1782914977/11166125000 | 552 | 129:32, 129:66, 129:36, 129:253, 129:39 |
| 129:261 | CEH | lo | 103993/1000000 | 24300621/233673500 | 1040 | 129:132, 129:154, 129:249, 129:150, 129:161 |
| 129:262 | AFR | lo | 7089/50000 | 6043393967/42625000000 | 2151 | 129:104, 129:13 |
| 129:265 | ACS | hi | 615423/1000000 | 111451362630079439/181097300000000000 | 2640 | 129:13, 129:126, 129:70, 129:246, 129:0, 129:27 |
| 129:266 | AES | hi | 557579/1000000 | 302927752601/543291900000 | 2641 | 129:13, 129:126, 129:70, 129:246, 129:242, 129:39 |
| 129:273 | BFS | hi | 469899/1000000 | 2552921886403/5432919000000 | 2650 | 129:13, 129:126, 129:70, 129:246, 129:4, 129:105 |
| 129:281 | EHS | hi | 423001/1000000 | 574531510043700091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:246, 129:32, 129:88, 129:185 |
| 129:283 | EQS | lo | 185937/1000000 | 1346912831/7243892000 | 2666 | 129:13, 129:126, 129:70, 129:246, 129:36, 129:92, 129:194 |
| 129:286 | EFP | lo | 135613/1000000 | 5827894705007731/42974398737000000 | 2752 | 129:21, 129:150, 129:256, 129:248, 129:30, 129:128, 129:254 |
| 129:287 | EPS | lo | 30363/250000 | 1739789731397/14324799579000 | 2757 | 129:21, 129:150, 129:256, 129:248, 129:40, 129:138, 129:186 |
| 129:290 | CPR | lo | 36561/250000 | 30000676539/205141000000 | 2927 | 129:265, 129:162, 129:64, 129:248, 129:26, 129:243 |
| 129:291 | EPR | lo | 52451/250000 | 21519754137/102570500000 | 2933 | 129:265, 129:162, 129:64, 129:248, 129:38, 129:249, 129:247 |
| 129:292 | FPS | lo | 3799/40000 | 16414045943/172824800000 | 3028 | 129:33, 129:180, 129:256, 129:34, 129:50, 129:178, 129:206 |
| 129:293 | AFP | lo | 41547/250000 | 14845473429/89329000000 | 3085 | 129:39, 129:291, 129:62, 129:34, 129:30, 129:262 |
| 129:296 | CPQ | hi | 11441/25000 | 81760935641108379/178658000000000000 | 3103 | 129:39, 129:291, 129:62, 129:34, 129:25, 129:134, 129:165 |
| 129:297 | CPR | hi | 58323/125000 | 41679455801354373/89329000000000000 | 3104 | 129:39, 129:291, 129:62, 129:34, 129:27, 129:249 |
| 129:300 | EPQ | hi | 430583/1000000 | 15385390786931/35731600000000 | 3109 | 129:39, 129:291, 129:62, 129:34, 129:37, 129:195 |
| 129:301 | FHP | lo | 12103/125000 | 86492073477/893290000000 | 3112 | 129:39, 129:291, 129:62, 129:34, 129:42, 129:254, 129:204 |
| 129:306 | FHS | lo | 94037/1000000 | 84002529/893290000 | 3157 | 129:39, 129:247, 129:70, 129:40, 129:42, 129:254, 129:204 |
| 129:309 | APQ | hi | 11463/25000 | 255660698719/557579000000 | 3177 | 129:266, 129:287, 129:64, 129:34, 129:37, 129:68 |
| 129:311 | BCP | lo | 66021/500000 | 6693117/50689000 | 3180 | 129:266, 129:287, 129:64, 129:34, 129:0, 129:72, 129:84 |
| 129:314 | BPR | hi | 21291/50000 | 23742778012493819/55757900000000000 | 3186 | 129:266, 129:287, 129:64, 129:34, 129:12, 129:95, 129:126 |
| 129:315 | PQR | lo | 66757/500000 | 74444919/557579000 | 3212 | 129:266, 129:287, 129:64, 129:34, 129:66, 129:194, 129:236 |
| 129:318 | BPS | lo | 1481/15625 | 6643378955109/70088932313000 | 3228 | 129:47, 129:216, 129:68, 129:50, 129:8, 129:100, 129:116 |
| 129:320 | EPQ | lo | 162497/1000000 | 11801396657/72625250000 | 3372 | 129:75, 129:142, 129:100, 129:311, 129:92, 129:134, 129:174 |
| 129:322 | APR | lo | 343067/1000000 | 122082327613947/355854904093000 | 3663 | 129:93, 129:320, 129:116, 129:90, 129:12, 129:38, 129:66 |
| 129:323 | APS | lo | 136711/1000000 | 48649514359649/355854904093000 | 3664 | 129:93, 129:320, 129:116, 129:90, 129:246, 129:40, 129:68 |
| 129:324 | PRS | lo | 106289/1000000 | 2909500736973/27373454161000 | 3699 | 129:93, 129:320, 129:116, 129:90, 129:126, 129:247, 129:236 |
| 129:327 | PQS | lo | 62829/500000 | 38006059/302454800 | 3870 | 129:105, 129:218, 129:126, 129:106, 129:116, 129:208, 129:315 |
| 129:328 | AHS | lo | 137221/1000000 | 92685898088649/675449560093000 | 4053 | 129:175, 129:216, 129:283, 129:178, 129:32, 129:42, 129:257 |
| 129:329 | BHS | lo | 157717/1000000 | 10653006972789/67544962073000 | 4104 | 129:177, 129:218, 129:247, 129:178, 129:88, 129:98, 129:112 |
| 129:330 | CHS | lo | 7237/50000 | 1955300986207239/13508992414600000 | 4111 | 129:177, 129:218, 129:247, 129:178, 129:261, 129:251, 129:154 |
| 129:331 | CPS | lo | 10033/100000 | 6776850672789/67544962073000 | 4112 | 129:177, 129:218, 129:247, 129:178, 129:132, 129:142, 129:290 |
| 129:333 | HPS | lo | 130277/1000000 | 1099950463469519/8443120259125000 | 4127 | 129:177, 129:218, 129:247, 129:178, 129:180, 129:301, 129:222 |
| 129:334 | CES | lo | 3847/40000 | 58198604452113/605131148141000 | 4239 | 129:211, 129:324, 129:218, 129:292, 129:128, 129:132, 129:249 |
| 129:335 | ABR | lo | 161407/500000 | 161407/500000 | 4336 | 129:70, 129:246, 129:126 |
| 129:336 | ACF | lo | 367017/1000000 | 367017/1000000 | 4344 | 129:293, 129:248, 129:142 |
| 129:341 | AEF | lo | 394801/1000000 | 394801/1000000 | 4359 | 129:293, 129:34, 129:286 |
| 129:342 | AEH | lo | 34761/100000 | 34761/100000 | 4363 | 129:256, 129:34, 129:180 |
| 129:343 | AEQ | lo | 179583/500000 | 179583/500000 | 4367 | 129:34, 129:60, 129:320 |
| 129:344 | EPR | hi | 457223/1000000 | 457223/1000000 | 4368 | 129:34, 129:322, 129:39 |
| 129:346 | AES | lo | 351163/1000000 | 351163/1000000 | 4369 | 129:34, 129:323, 129:287 |
| 129:351 | BCR | lo | 93691/250000 | 93691/250000 | 4408 | 129:311, 129:118, 129:290 |
| 129:353 | BCS | lo | 81789/250000 | 81789/250000 | 4409 | 129:311, 129:318, 129:331 |
| 129:355 | BEQ | lo | 348497/1000000 | 348497/1000000 | 4422 | 129:90, 129:116, 129:320 |
| 129:356 | BER | lo | 199641/500000 | 199641/500000 | 4423 | 129:90, 129:118, 129:291 |
| 129:357 | BES | lo | 77309/250000 | 77309/250000 | 4424 | 129:90, 129:318, 129:287 |
| 129:359 | BHR | lo | 343717/1000000 | 343717/1000000 | 4442 | 129:126, 129:329, 129:228 |
| 129:362 | CFR | lo | 376323/1000000 | 376323/1000000 | 4471 | 129:243, 129:148, 129:218 |
| 129:363 | CHR | lo | 428063/1000000 | 428063/1000000 | 4476 | 129:243, 129:330, 129:228 |
| 129:364 | EFQ | lo | 371937/1000000 | 371937/1000000 | 4489 | 129:283, 129:178, 129:216 |
| 129:365 | EFR | lo | 380699/1000000 | 380699/1000000 | 4490 | 129:247, 129:178, 129:218 |
| 129:367 | FPQ | lo | 313633/1000000 | 313633/1000000 | 4506 | 129:216, 129:292, 129:327 |
| 129:369 | HPR | lo | 164783/500000 | 164783/500000 | 4510 | 129:228, 129:333, 129:324 |
| 129:370 | ABE | lo | 24039/250000 | 3148558400/32744139581 | 58 | 129:0, 129:38, 129:335, 129:16, 129:27 |
| 129:371 | CRS | lo | 190367/1000000 | 16548017/86926704 | 141 | 129:26, 129:126, 129:70, 129:351, 129:13 |
| 129:374 | ABS | lo | 8557/62500 | 61151420341/446645000000 | 213 | 129:370, 129:70, 129:335, 129:346, 129:39 |
| 129:375 | ERS | lo | 194739/1000000 | 2821341/14487784 | 216 | 129:38, 129:126, 129:70, 129:356, 129:13 |
| 129:376 | APQ | lo | 52043/500000 | 14774011/141940000 | 297 | 129:8, 129:315, 129:322, 129:116, 129:314 |
| 129:377 | BPR | lo | 96663/1000000 | 14774011/152840000 | 297 | 129:8, 129:315, 129:322, 129:116, 129:309 |
| 129:378 | ACP | lo | 13481/125000 | 96340281/893290000 | 365 | 129:16, 129:322, 129:26, 129:34, 129:39 |
| 129:379 | CFH | lo | 98739/1000000 | 2230020000/22584850573 | 402 | 129:336, 129:204, 129:42, 129:362, 129:49 |
| 129:380 | CPR | lo | 18289/125000 | 22511085179/153855750000 | 478 | 129:378, 129:371, 129:26, 129:331, 129:265 |
| 129:381 | AHR | lo | 127303/1000000 | 568595979/4466450000 | 497 | 129:342, 129:262, 129:38, 129:42, 129:31 |
| 129:382 | EFH | lo | 103011/1000000 | 2326500000/22584850573 | 499 | 129:341, 129:204, 129:42, 129:365, 129:49 |
| 129:383 | AFS | lo | 21647/200000 | 45783868031/423001000000 | 506 | 129:346, 129:306, 129:328, 129:178, 129:281 |
| 129:384 | AFP | lo | 166383/1000000 | 148628734667/893290000000 | 512 | 129:341, 129:322, 129:34, 129:262, 129:39 |
| 129:385 | AHP | lo | 73753/500000 | 67443230683/457223000000 | 545 | 129:34, 129:369, 129:322, 129:180, 129:344 |
| 129:386 | AHQ | lo | 159753/1000000 | 71353049649/446645000000 | 552 | 129:342, 129:66, 129:343, 129:381, 129:39 |
| 129:387 | BFP | lo | 109391/1000000 | 25030864293/228820000000 | 748 | 129:311, 129:367, 129:116, 129:142, 129:296 |
| 129:388 | BHP | lo | 112533/1000000 | 4375517731/38882000000 | 783 | 129:311, 129:369, 129:377, 129:150, 129:297 |
| 129:389 | BFS | lo | 103421/1000000 | 10936826683/105750250000 | 841 | 129:357, 129:306, 129:329, 129:178, 129:281 |
| 129:390 | EHS | lo | 93099/1000000 | 10936826683/117474750000 | 841 | 129:357, 129:306, 129:329, 129:178, 129:273 |
| 129:394 | CEF | lo | 109623/1000000 | 944043/8611660 | 1006 | 129:132, 129:364, 129:134, 129:286, 129:300 |
| 129:395 | CEH | lo | 13029/125000 | 810557/7776400 | 1040 | 129:132, 129:363, 129:249, 129:150, 129:297 |
| 129:396 | EHP | lo | 107507/1000000 | 1672047/15552800 | 1043 | 129:132, 129:369, 129:150, 129:291, 129:297 |
| 129:401 | AES | hi | 278789/500000 | 302927171351/543291900000 | 2641 | 129:13, 129:126, 129:70, 129:374, 129:370, 129:39 |
| 129:410 | EHS | hi | 422981/1000000 | 574505353793700091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:374, 129:342, 129:88, 129:185 |
| 129:412 | EQS | lo | 93009/500000 | 4042489993/21731676000 | 2666 | 129:13, 129:126, 129:70, 129:374, 129:343, 129:355, 129:194 |
| 129:415 | EFP | lo | 67859/500000 | 1944141590632369/14324799579000000 | 2752 | 129:21, 129:150, 129:385, 129:378, 129:341, 129:394, 129:382 |
| 129:416 | EPS | lo | 2431/20000 | 5223557570815963/42974398737000000 | 2757 | 129:21, 129:150, 129:385, 129:378, 129:346, 129:334, 129:390 |
| 129:417 | EPR | lo | 104931/500000 | 129154036037/615423000000 | 2933 | 129:265, 129:331, 129:323, 129:378, 129:38, 129:249, 129:375 |
| 129:418 | FPS | lo | 95007/1000000 | 16419568429/172824800000 | 3028 | 129:33, 129:396, 129:385, 129:34, 129:383, 129:178, 129:306 |
| 129:421 | CPQ | hi | 114359/250000 | 81724587036132447/178658000000000000 | 3103 | 129:39, 129:417, 129:322, 129:34, 129:25, 129:134, 129:165 |
| 129:422 | CPR | hi | 466357/1000000 | 41659204419030689/89329000000000000 | 3104 | 129:39, 129:417, 129:322, 129:34, 129:27, 129:249 |
| 129:425 | EPQ | hi | 430421/1000000 | 15379598153491/35731600000000 | 3109 | 129:39, 129:417, 129:322, 129:34, 129:37, 129:195 |
| 129:426 | FHP | lo | 24211/250000 | 86510413737/893290000000 | 3112 | 129:39, 129:417, 129:322, 129:34, 129:42, 129:382, 129:204 |
| 129:431 | FHS | lo | 47021/500000 | 84006993/893290000 | 3157 | 129:39, 129:375, 129:70, 129:346, 129:42, 129:382, 129:204 |
| 129:434 | APQ | hi | 28649/62500 | 63896109829/139394500000 | 3177 | 129:401, 129:416, 129:323, 129:34, 129:37, 129:68 |
| 129:436 | BCP | lo | 26411/200000 | 36815631/278789000 | 3180 | 129:401, 129:416, 129:323, 129:34, 129:0, 129:72, 129:353 |
| 129:439 | BPR | hi | 212801/500000 | 5932657644173929/13939450000000000 | 3186 | 129:401, 129:416, 129:323, 129:34, 129:335, 129:95, 129:126 |
| 129:440 | PQR | lo | 133547/1000000 | 37231527/278789000 | 3212 | 129:401, 129:416, 129:323, 129:34, 129:66, 129:194, 129:236 |
| 129:443 | BPS | lo | 23703/250000 | 6645300955109/70088932313000 | 3228 | 129:47, 129:216, 129:68, 129:383, 129:8, 129:387, 129:116 |
| 129:445 | EPQ | lo | 16253/100000 | 9443068369/58100200000 | 3372 | 129:75, 129:142, 129:387, 129:436, 129:355, 129:134, 129:364 |
| 129:447 | APR | lo | 343083/1000000 | 9391391380919/27373454161000 | 3663 | 129:93, 129:445, 129:116, 129:90, 129:335, 129:38, 129:66 |
| 129:448 | APS | lo | 68381/500000 | 3743661096973/27373454161000 | 3664 | 129:93, 129:445, 129:116, 129:90, 129:374, 129:346, 129:68 |
| 129:449 | PRS | lo | 53147/500000 | 37825369580649/355854904093000 | 3699 | 129:93, 129:445, 129:116, 129:90, 129:126, 129:375, 129:236 |
| 129:452 | PQS | lo | 62841/500000 | 95033021287/756137000000 | 3870 | 129:105, 129:218, 129:126, 129:389, 129:116, 129:367, 129:440 |
| 129:453 | AHS | lo | 137247/1000000 | 13243366869807/96492794299000 | 4053 | 129:175, 129:216, 129:412, 129:178, 129:342, 129:42, 129:386 |
| 129:454 | BHS | lo | 7887/50000 | 10654587972789/67544962073000 | 4104 | 129:177, 129:218, 129:375, 129:178, 129:88, 129:98, 129:359 |
| 129:455 | CHS | lo | 72419/500000 | 9783120110125947/67544962073000000 | 4111 | 129:177, 129:218, 129:375, 129:178, 129:395, 129:379, 129:363 |
| 129:456 | CPS | lo | 5017/50000 | 6777483072789/67544962073000 | 4112 | 129:177, 129:218, 129:375, 129:178, 129:132, 129:142, 129:380 |
| 129:458 | HPS | lo | 65177/500000 | 2201201201749403/16886240518250000 | 4127 | 129:177, 129:218, 129:375, 129:178, 129:396, 129:426, 129:369 |
| 129:459 | CES | lo | 48107/500000 | 58222450078113/605131148141000 | 4239 | 129:211, 129:449, 129:218, 129:418, 129:394, 129:132, 129:249 |
| 129:460 | ABR | lo | 10091/31250 | 10091/31250 | 4336 | 129:70, 129:374, 129:126 |
| 129:461 | ACF | lo | 367231/1000000 | 367231/1000000 | 4344 | 129:384, 129:378, 129:142 |
| 129:466 | AEF | lo | 395101/1000000 | 395101/1000000 | 4359 | 129:384, 129:34, 129:415 |
| 129:467 | AEH | lo | 348013/1000000 | 348013/1000000 | 4363 | 129:385, 129:34, 129:396 |
| 129:468 | AEQ | lo | 5619/15625 | 5619/15625 | 4367 | 129:34, 129:376, 129:445 |
| 129:469 | EPR | hi | 457207/1000000 | 457207/1000000 | 4368 | 129:34, 129:447, 129:39 |
| 129:471 | AES | lo | 21957/62500 | 21957/62500 | 4369 | 129:34, 129:448, 129:416 |
| 129:477 | BCR | lo | 37503/100000 | 37503/100000 | 4408 | 129:436, 129:377, 129:380 |
| 129:479 | BCS | lo | 327207/1000000 | 327207/1000000 | 4409 | 129:436, 129:443, 129:456 |
| 129:481 | BEH | lo | 3913/12500 | 3913/12500 | 4418 | 129:388, 129:90, 129:396 |
| 129:482 | BEQ | lo | 34853/100000 | 34853/100000 | 4422 | 129:90, 129:116, 129:445 |
| 129:483 | BER | lo | 15981/40000 | 15981/40000 | 4423 | 129:90, 129:377, 129:417 |
| 129:484 | BES | lo | 154681/500000 | 154681/500000 | 4424 | 129:90, 129:443, 129:416 |
| 129:486 | BFR | lo | 289421/1000000 | 289421/1000000 | 4437 | 129:126, 129:389, 129:218 |
| 129:487 | BHR | lo | 17187/50000 | 17187/50000 | 4442 | 129:126, 129:454, 129:228 |
| 129:490 | CFR | lo | 376367/1000000 | 376367/1000000 | 4471 | 129:371, 129:148, 129:218 |
| 129:491 | CHR | lo | 85641/200000 | 85641/200000 | 4476 | 129:371, 129:455, 129:228 |
| 129:492 | EFQ | lo | 186009/500000 | 186009/500000 | 4489 | 129:412, 129:178, 129:216 |
| 129:493 | EFR | lo | 380739/1000000 | 380739/1000000 | 4490 | 129:375, 129:178, 129:218 |
| 129:495 | FPQ | lo | 313689/1000000 | 313689/1000000 | 4506 | 129:216, 129:418, 129:452 |
| 129:497 | HPR | lo | 20603/62500 | 20603/62500 | 4510 | 129:228, 129:458, 129:449 |
| 129:498 | ABE | lo | 19233/200000 | 3148862200/32744139581 | 58 | 129:0, 129:38, 129:460, 129:16, 129:27 |
| 129:499 | CRS | lo | 95207/500000 | 1379345/7243892 | 141 | 129:26, 129:126, 129:70, 129:477, 129:13 |
| 129:502 | ABS | lo | 68503/500000 | 15298275693/111661250000 | 213 | 129:498, 129:70, 129:460, 129:471, 129:39 |
| 129:503 | ERS | lo | 97391/500000 | 11287875/57951136 | 216 | 129:38, 129:126, 129:70, 129:483, 129:13 |
| 129:504 | APQ | lo | 2083/20000 | 4432659/42560200 | 297 | 129:8, 129:440, 129:447, 129:116, 129:439 |
| 129:505 | BPR | lo | 96701/1000000 | 4432659/45838400 | 297 | 129:8, 129:440, 129:447, 129:116, 129:434 |
| 129:506 | ACP | lo | 2157/20000 | 96341769/893290000 | 365 | 129:16, 129:447, 129:26, 129:34, 129:39 |
| 129:507 | CFH | lo | 98773/1000000 | 2230794000/22584850573 | 402 | 129:461, 129:204, 129:42, 129:490, 129:49 |
| 129:508 | CPR | lo | 146333/1000000 | 300189063/2051410000 | 478 | 129:506, 129:499, 129:26, 129:456, 129:265 |
| 129:509 | AHR | lo | 127367/1000000 | 5688816657/44664500000 | 497 | 129:467, 129:262, 129:38, 129:42, 129:31 |
| 129:510 | EFH | lo | 6441/62500 | 2327520000/22584850573 | 499 | 129:466, 129:204, 129:42, 129:493, 129:49 |
| 129:511 | AFS | lo | 108283/1000000 | 5725256763/52872625000 | 506 | 129:471, 129:431, 129:453, 129:178, 129:410 |
| 129:513 | AHP | lo | 5909/40000 | 67541088081/457207000000 | 545 | 129:34, 129:497, 129:447, 129:396, 129:469 |
| 129:514 | AHQ | lo | 159969/1000000 | 17862354759/111661250000 | 552 | 129:467, 129:66, 129:468, 129:509, 129:39 |
| 129:515 | BFP | lo | 13683/125000 | 323052909/2951200000 | 748 | 129:436, 129:495, 129:116, 129:142, 129:421 |
| 129:516 | BHP | lo | 28157/250000 | 1313121491/11658925000 | 783 | 129:436, 129:497, 129:505, 129:150, 129:422 |
| 129:517 | BFS | lo | 51731/500000 | 10940710301/105745250000 | 841 | 129:484, 129:431, 129:454, 129:178, 129:410 |
| 129:518 | EHS | lo | 23283/250000 | 100373489/1077750000 | 841 | 129:484, 129:431, 129:454, 129:178, 129:273 |
| 129:522 | CEF | lo | 21941/200000 | 5902431/53802625 | 1006 | 129:132, 129:492, 129:134, 129:415, 129:425 |
| 129:523 | CEH | lo | 104311/1000000 | 24323313/233178500 | 1040 | 129:132, 129:491, 129:249, 129:150, 129:422 |
| 129:524 | EHP | lo | 26897/250000 | 5017443/46635700 | 1043 | 129:132, 129:497, 129:150, 129:417, 129:422 |
| 129:526 | AFR | lo | 17733/125000 | 137431061941/968750000000 | 2151 | 129:486, 129:13 |
| 129:530 | AES | hi | 69697/125000 | 75731574869/135822975000 | 2641 | 129:13, 129:126, 129:70, 129:502, 129:498, 129:39 |
| 129:539 | EHS | hi | 422811/1000000 | 574274064731200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:502, 129:467, 129:481, 129:185 |
| 129:541 | EQS | lo | 23263/125000 | 2022180809/10865838000 | 2666 | 129:13, 129:126, 129:70, 129:502, 129:468, 129:482, 129:194 |
| 129:544 | EFP | lo | 135799/1000000 | 182371564452821/1342949960531250 | 2752 | 129:21, 129:150, 129:513, 129:506, 129:466, 129:522, 129:510 |
| 129:545 | EPS | lo | 121597/1000000 | 1306398281418571/10743599684250000 | 2757 | 129:21, 129:150, 129:513, 129:506, 129:471, 129:459, 129:518 |
| 129:546 | EPR | lo | 209879/1000000 | 129164853041/615423000000 | 2933 | 129:265, 129:456, 129:448, 129:506, 129:38, 129:249, 129:503 |
| 129:547 | FPS | lo | 47507/500000 | 20526176351/216031000000 | 3028 | 129:33, 129:524, 129:513, 129:34, 129:511, 129:178, 129:431 |
| 129:548 | AFP | lo | 83257/500000 | 148745788383/893290000000 | 3085 | 129:39, 129:546, 129:447, 129:34, 129:466, 129:526 |
| 129:551 | CPQ | hi | 457419/1000000 | 81721493537836623/178658000000000000 | 3103 | 129:39, 129:546, 129:447, 129:34, 129:25, 129:134, 129:165 |
| 129:552 | CPR | hi | 233169/500000 | 41657480897130801/89329000000000000 | 3104 | 129:39, 129:546, 129:447, 129:34, 129:27, 129:249 |
| 129:555 | EPQ | hi | 430407/1000000 | 15379105163411/35731600000000 | 3109 | 129:39, 129:546, 129:447, 129:34, 129:37, 129:195 |
| 129:556 | FHP | lo | 48431/500000 | 10815751581/111661250000 | 3112 | 129:39, 129:546, 129:447, 129:34, 129:42, 129:510, 129:204 |
| 129:561 | FHS | lo | 47023/500000 | 42005589/446645000 | 3157 | 129:39, 129:503, 129:70, 129:471, 129:42, 129:510, 129:204 |
| 129:564 | APQ | hi | 229159/500000 | 255546694763/557576000000 | 3177 | 129:530, 129:545, 129:448, 129:34, 129:37, 129:68 |
| 129:566 | BCP | lo | 4127/31250 | 73635819/557576000 | 3180 | 129:530, 129:545, 129:448, 129:34, 129:0, 129:72, 129:479 |
| 129:569 | BPR | hi | 212741/500000 | 23723847842177463/55757600000000000 | 3186 | 129:530, 129:545, 129:448, 129:34, 129:460, 129:95, 129:126 |
| 129:570 | PQR | lo | 133563/1000000 | 7447161/55757600 | 3212 | 129:530, 129:545, 129:448, 129:34, 129:66, 129:194, 129:236 |
| 129:573 | BPS | lo | 4741/50000 | 6645866705109/70088932313000 | 3228 | 129:47, 129:216, 129:68, 129:511, 129:8, 129:515, 129:116 |
| 129:575 | EPQ | lo | 162549/1000000 | 5902595923/36312625000 | 3372 | 129:75, 129:142, 129:515, 129:566, 129:482, 129:134, 129:492 |
| 129:577 | APR | lo | 343107/1000000 | 122096469085947/355854904093000 | 3663 | 129:93, 129:575, 129:116, 129:90, 129:460, 129:38, 129:66 |
| 129:578 | APS | lo | 34201/250000 | 48682579727649/355854904093000 | 3664 | 129:93, 129:575, 129:116, 129:90, 129:502, 129:471, 129:68 |
| 129:579 | PRS | lo | 106299/1000000 | 37827369080649/355854904093000 | 3699 | 129:93, 129:575, 129:116, 129:90, 129:126, 129:503, 129:236 |
| 129:582 | PQS | lo | 125693/1000000 | 47520773553/378068500000 | 3870 | 129:105, 129:218, 129:126, 129:517, 129:116, 129:495, 129:570 |
| 129:583 | AHS | lo | 34333/250000 | 92761135088649/675449560093000 | 4053 | 129:175, 129:216, 129:541, 129:178, 129:467, 129:42, 129:514 |
| 129:584 | BHS | lo | 157819/1000000 | 10659935472789/67544962073000 | 4104 | 129:177, 129:218, 129:503, 129:178, 129:481, 129:98, 129:487 |
| 129:585 | CHS | lo | 144893/1000000 | 9786839538836429/67544962073000000 | 4111 | 129:177, 129:218, 129:503, 129:178, 129:523, 129:507, 129:491 |
| 129:586 | CPS | lo | 100343/1000000 | 6777678372789/67544962073000 | 4112 | 129:177, 129:218, 129:503, 129:178, 129:132, 129:142, 129:508 |
| 129:588 | HPS | lo | 13039/100000 | 4403600858157463/33772481036500000 | 4127 | 129:177, 129:218, 129:503, 129:178, 129:524, 129:556, 129:497 |
| 129:589 | CES | lo | 96229/1000000 | 58231262850113/605131148141000 | 4239 | 129:211, 129:579, 129:218, 129:547, 129:522, 129:132, 129:249 |
| 129:590 | ABR | lo | 161503/500000 | 161503/500000 | 4336 | 129:70, 129:502, 129:126 |
| 129:591 | ACF | lo | 91841/250000 | 91841/250000 | 4344 | 129:548, 129:506, 129:142 |
| 129:596 | AEF | lo | 395313/1000000 | 395313/1000000 | 4359 | 129:548, 129:34, 129:544 |
| 129:597 | AEH | lo | 348313/1000000 | 348313/1000000 | 4363 | 129:513, 129:34, 129:524 |
| 129:598 | AEQ | lo | 359699/1000000 | 359699/1000000 | 4367 | 129:34, 129:504, 129:575 |
| 129:599 | EPR | hi | 457183/1000000 | 457183/1000000 | 4368 | 129:34, 129:577, 129:39 |
| 129:601 | AES | lo | 351401/1000000 | 351401/1000000 | 4369 | 129:34, 129:578, 129:545 |
| 129:607 | BCR | lo | 187549/500000 | 187549/500000 | 4408 | 129:566, 129:505, 129:508 |
| 129:609 | BCS | lo | 327227/1000000 | 327227/1000000 | 4409 | 129:566, 129:573, 129:586 |
| 129:611 | BEH | lo | 4894/15625 | 4894/15625 | 4418 | 129:516, 129:90, 129:524 |
| 129:612 | BEQ | lo | 348549/1000000 | 348549/1000000 | 4422 | 129:90, 129:116, 129:575 |
| 129:613 | BER | lo | 19979/50000 | 19979/50000 | 4423 | 129:90, 129:505, 129:546 |
| 129:614 | BES | lo | 309417/1000000 | 309417/1000000 | 4424 | 129:90, 129:573, 129:545 |
| 129:616 | BFR | lo | 144731/500000 | 144731/500000 | 4437 | 129:126, 129:517, 129:218 |
| 129:617 | BHR | lo | 343819/1000000 | 343819/1000000 | 4442 | 129:126, 129:584, 129:228 |
| 129:620 | CFR | lo | 188207/500000 | 188207/500000 | 4471 | 129:499, 129:148, 129:218 |
| 129:621 | CHR | lo | 428307/1000000 | 428307/1000000 | 4476 | 129:499, 129:585, 129:228 |
| 129:622 | EFQ | lo | 46513/125000 | 46513/125000 | 4489 | 129:541, 129:178, 129:216 |
| 129:623 | EFR | lo | 190391/500000 | 190391/500000 | 4490 | 129:503, 129:178, 129:218 |
| 129:625 | FPQ | lo | 313707/1000000 | 313707/1000000 | 4506 | 129:216, 129:547, 129:582 |
| 129:627 | HPR | lo | 329689/1000000 | 329689/1000000 | 4510 | 129:228, 129:588, 129:579 |
| 129:628 | ABE | lo | 48087/500000 | 3149153600/32744139581 | 58 | 129:0, 129:38, 129:590, 129:16, 129:27 |
| 129:629 | CRS | lo | 190427/1000000 | 8276597/43463352 | 141 | 129:26, 129:126, 129:70, 129:607, 129:13 |
| 129:632 | ABS | lo | 34269/250000 | 61224406703/446645000000 | 213 | 129:628, 129:70, 129:590, 129:601, 129:39 |
| 129:633 | ERS | lo | 24349/125000 | 16932665/86926704 | 216 | 129:38, 129:126, 129:70, 129:613, 129:13 |
| 129:634 | APQ | lo | 26047/250000 | 4433031/42548200 | 297 | 129:8, 129:570, 129:577, 129:116, 129:569 |
| 129:635 | BPR | lo | 96723/1000000 | 4433031/45831800 | 297 | 129:8, 129:570, 129:577, 129:116, 129:564 |
| 129:636 | ACP | lo | 26963/250000 | 96344001/893290000 | 365 | 129:16, 129:577, 129:26, 129:34, 129:39 |
| 129:637 | CFH | lo | 98797/1000000 | 2231334000/22584850573 | 402 | 129:591, 129:204, 129:42, 129:620, 129:49 |
| 129:638 | CPR | lo | 146339/1000000 | 45030290177/307711500000 | 478 | 129:636, 129:629, 129:26, 129:586, 129:265 |
| 129:639 | AHR | lo | 15931/125000 | 14231015679/111661250000 | 497 | 129:597, 129:526, 129:38, 129:42, 129:31 |
| 129:640 | EFH | lo | 10309/100000 | 2328285000/22584850573 | 499 | 129:596, 129:204, 129:42, 129:623, 129:49 |
| 129:641 | AFS | lo | 108369/1000000 | 22909867223/211405500000 | 506 | 129:601, 129:561, 129:583, 129:178, 129:539 |
| 129:643 | AHP | lo | 147807/1000000 | 16893818229/114295750000 | 545 | 129:34, 129:627, 129:577, 129:524, 129:599 |
| 129:644 | AHQ | lo | 160107/1000000 | 4469445161/27915312500 | 552 | 129:597, 129:66, 129:598, 129:639, 129:39 |
| 129:645 | BFP | lo | 2737/25000 | 521650013/4764781250 | 748 | 129:566, 129:625, 129:116, 129:142, 129:551 |
| 129:646 | BHP | lo | 56327/500000 | 6566910887/58292250000 | 783 | 129:566, 129:627, 129:635, 129:150, 129:552 |
| 129:647 | BFS | lo | 103537/1000000 | 7296099697/70468500000 | 841 | 129:614, 129:561, 129:584, 129:178, 129:539 |
| 129:648 | EHS | lo | 93161/1000000 | 7296099697/78316500000 | 841 | 129:614, 129:561, 129:584, 129:178, 129:273 |
| 129:652 | CEF | lo | 6859/62500 | 5248331/47823000 | 1006 | 129:132, 129:622, 129:134, 129:544, 129:555 |
| 129:653 | CEH | lo | 6521/62500 | 1013669/9715375 | 1040 | 129:132, 129:621, 129:249, 129:150, 129:552 |
| 129:654 | EHP | lo | 107603/1000000 | 1045413/9715375 | 1043 | 129:132, 129:627, 129:150, 129:546, 129:552 |
| 129:656 | AFR | lo | 35471/250000 | 755977918961/5328125000000 | 2151 | 129:616, 129:13 |
| 129:660 | AES | hi | 278787/500000 | 302925427601/543291900000 | 2641 | 129:13, 129:126, 129:70, 129:632, 129:628, 129:39 |
| 129:669 | EHS | hi | 211363/500000 | 574158783481200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:632, 129:597, 129:611, 129:185 |
| 129:671 | EQS | lo | 93061/500000 | 1011189217/5432919000 | 2666 | 129:13, 129:126, 129:70, 129:632, 129:598, 129:612, 129:194 |
| 129:674 | EFP | lo | 135853/1000000 | 194608103489911/1432479957900000 | 2752 | 129:21, 129:150, 129:643, 129:636, 129:596, 129:652, 129:640 |
| 129:675 | EPS | lo | 121631/1000000 | 580780839393073/4774933193000000 | 2757 | 129:21, 129:150, 129:643, 129:636, 129:601, 129:589, 129:648 |
| 129:676 | EPR | lo | 52471/250000 | 12916792529/61542300000 | 2933 | 129:265, 129:586, 129:578, 129:636, 129:38, 129:249, 129:633 |
| 129:677 | FPS | lo | 47513/500000 | 82114560507/864124000000 | 3028 | 129:33, 129:654, 129:643, 129:34, 129:641, 129:178, 129:561 |
| 129:678 | AFP | lo | 10413/62500 | 148829869491/893290000000 | 3085 | 129:39, 129:676, 129:577, 129:34, 129:596, 129:656 |
| 129:681 | CPQ | hi | 457393/1000000 | 81716853290392887/178658000000000000 | 3103 | 129:39, 129:676, 129:577, 129:34, 129:25, 129:134, 129:165 |
| 129:682 | CPR | hi | 466309/1000000 | 41654895614280969/89329000000000000 | 3104 | 129:39, 129:676, 129:577, 129:34, 129:27, 129:249 |
| 129:685 | EPQ | hi | 215193/500000 | 15378365678291/35731600000000 | 3109 | 129:39, 129:676, 129:577, 129:34, 129:37, 129:195 |
| 129:686 | FHP | lo | 31/320 | 8653791963/89329000000 | 3112 | 129:39, 129:676, 129:577, 129:34, 129:42, 129:640, 129:204 |
| 129:691 | FHS | lo | 1881/20000 | 4200717/44664500 | 3157 | 129:39, 129:633, 129:70, 129:601, 129:42, 129:640, 129:204 |
| 129:694 | APQ | hi | 45827/100000 | 255518964071/557574000000 | 3177 | 129:660, 129:675, 129:578, 129:34, 129:37, 129:68 |
| 129:696 | BCP | lo | 132067/1000000 | 24545831/185858000 | 3180 | 129:660, 129:675, 129:578, 129:34, 129:0, 129:72, 129:609 |
| 129:699 | BPR | hi | 42539/100000 | 7906204523786657/18585800000000000 | 3186 | 129:660, 129:675, 129:578, 129:34, 129:590, 129:95, 129:126 |
| 129:700 | PQR | lo | 66787/500000 | 6206479/46464500 | 3212 | 129:660, 129:675, 129:578, 129:34, 129:66, 129:194, 129:236 |
| 129:703 | BPS | lo | 47411/500000 | 64524181603/680475071000 | 3228 | 129:47, 129:216, 129:68, 129:641, 129:8, 129:645, 129:116 |
| 129:705 | EPQ | lo | 32513/200000 | 4427383249/27234468750 | 3372 | 129:75, 129:142, 129:645, 129:696, 129:612, 129:134, 129:622 |
| 129:707 | APR | lo | 343129/1000000 | 122104460936947/355854904093000 | 3663 | 129:93, 129:705, 129:116, 129:90, 129:590, 129:38, 129:66 |
| 129:708 | APS | lo | 136833/1000000 | 3745596926973/27373454161000 | 3664 | 129:93, 129:705, 129:116, 129:90, 129:632, 129:601, 129:68 |
| 129:709 | PRS | lo | 106301/1000000 | 37827834080649/355854904093000 | 3699 | 129:93, 129:705, 129:116, 129:90, 129:126, 129:633, 129:236 |
| 129:712 | PQS | lo | 125701/1000000 | 47523701119/378068500000 | 3870 | 129:105, 129:218, 129:126, 129:647, 129:116, 129:625, 129:700 |
| 129:713 | AHS | lo | 8587/62500 | 13257409869807/96492794299000 | 4053 | 129:175, 129:216, 129:671, 129:178, 129:597, 129:42, 129:644 |
| 129:714 | BHS | lo | 78927/500000 | 10662306972789/67544962073000 | 4104 | 129:177, 129:218, 129:633, 129:178, 129:611, 129:98, 129:617 |
| 129:715 | CHS | lo | 4529/31250 | 9789195317926181/67544962073000000 | 4111 | 129:177, 129:218, 129:633, 129:178, 129:653, 129:637, 129:621 |
| 129:716 | CPS | lo | 12543/125000 | 6777734172789/67544962073000 | 4112 | 129:177, 129:218, 129:633, 129:178, 129:132, 129:142, 129:638 |
| 129:718 | HPS | lo | 130407/1000000 | 2818674816263/21614387863360 | 4127 | 129:177, 129:218, 129:633, 129:178, 129:654, 129:686, 129:627 |
| 129:719 | CES | lo | 24059/250000 | 58235464523113/605131148141000 | 4239 | 129:211, 129:709, 129:218, 129:677, 129:652, 129:132, 129:249 |
| 129:720 | ABR | lo | 80769/250000 | 80769/250000 | 4336 | 129:70, 129:632, 129:126 |
| 129:721 | ACF | lo | 18373/50000 | 18373/50000 | 4344 | 129:678, 129:636, 129:142 |
| 129:726 | AEF | lo | 395461/1000000 | 395461/1000000 | 4359 | 129:678, 129:34, 129:674 |
| 129:727 | AEH | lo | 34841/100000 | 34841/100000 | 4363 | 129:643, 129:34, 129:654 |
| 129:728 | AEQ | lo | 359753/1000000 | 359753/1000000 | 4367 | 129:34, 129:634, 129:705 |
| 129:729 | EPR | hi | 457161/1000000 | 457161/1000000 | 4368 | 129:34, 129:707, 129:39 |
| 129:731 | AES | lo | 43933/125000 | 43933/125000 | 4369 | 129:34, 129:708, 129:675 |
| 129:737 | BCR | lo | 375129/1000000 | 375129/1000000 | 4408 | 129:696, 129:635, 129:638 |
| 129:739 | BCS | lo | 327233/1000000 | 327233/1000000 | 4409 | 129:696, 129:703, 129:716 |
| 129:741 | BEH | lo | 313257/1000000 | 313257/1000000 | 4418 | 129:646, 129:90, 129:654 |
| 129:742 | BEQ | lo | 69713/200000 | 69713/200000 | 4422 | 129:90, 129:116, 129:705 |
| 129:743 | BER | lo | 399607/1000000 | 399607/1000000 | 4423 | 129:90, 129:635, 129:676 |
| 129:744 | BES | lo | 309453/1000000 | 309453/1000000 | 4424 | 129:90, 129:703, 129:675 |
| 129:746 | BFR | lo | 289537/1000000 | 289537/1000000 | 4437 | 129:126, 129:647, 129:218 |
| 129:747 | BHR | lo | 171927/500000 | 171927/500000 | 4442 | 129:126, 129:714, 129:228 |
| 129:750 | CFR | lo | 376427/1000000 | 376427/1000000 | 4471 | 129:629, 129:148, 129:218 |
| 129:751 | CHR | lo | 85671/200000 | 85671/200000 | 4476 | 129:629, 129:715, 129:228 |
| 129:752 | EFQ | lo | 186061/500000 | 186061/500000 | 4489 | 129:671, 129:178, 129:216 |
| 129:753 | EFR | lo | 47599/125000 | 47599/125000 | 4490 | 129:633, 129:178, 129:218 |
| 129:755 | FPQ | lo | 313727/1000000 | 313727/1000000 | 4506 | 129:216, 129:677, 129:712 |
| 129:757 | HPR | lo | 82427/250000 | 82427/250000 | 4510 | 129:228, 129:718, 129:709 |
| 129:758 | ABE | lo | 96181/1000000 | 3149370600/32744139581 | 58 | 129:0, 129:38, 129:720, 129:16, 129:27 |
| 129:759 | CRS | lo | 5951/31250 | 11035783/57951136 | 141 | 129:26, 129:126, 129:70, 129:737, 129:13 |
| 129:762 | ABS | lo | 137127/1000000 | 15311802033/111661250000 | 213 | 129:758, 129:70, 129:720, 129:731, 129:39 |
| 129:763 | ERS | lo | 194797/1000000 | 33866167/173853408 | 216 | 129:38, 129:126, 129:70, 129:743, 129:13 |
| 129:764 | APQ | lo | 52109/500000 | 44333379/425390000 | 297 | 129:8, 129:700, 129:707, 129:116, 129:699 |
| 129:765 | BPR | lo | 4837/50000 | 44333379/458270000 | 297 | 129:8, 129:700, 129:707, 129:116, 129:694 |
| 129:766 | ACP | lo | 21571/200000 | 96346047/893290000 | 365 | 129:16, 129:707, 129:26, 129:34, 129:39 |
| 129:767 | CFH | lo | 24703/250000 | 2231661000/22584850573 | 402 | 129:721, 129:204, 129:42, 129:750, 129:49 |
| 129:768 | CPR | lo | 73171/500000 | 1125779797/7692787500 | 478 | 129:766, 129:759, 129:26, 129:716, 129:265 |
| 129:769 | AHR | lo | 127471/1000000 | 2846721361/22332250000 | 497 | 129:727, 129:656, 129:38, 129:42, 129:31 |
| 129:770 | EFH | lo | 103111/1000000 | 2328759000/22584850573 | 499 | 129:726, 129:204, 129:42, 129:753, 129:49 |
| 129:771 | AFS | lo | 108421/1000000 | 114581613/1056815000 | 506 | 129:731, 129:691, 129:713, 129:178, 129:669 |
| 129:773 | AHP | lo | 29567/200000 | 67584553787/457161000000 | 545 | 129:34, 129:757, 129:707, 129:654, 129:729 |
| 129:774 | AHQ | lo | 80077/500000 | 143064464663/893290000000 | 552 | 129:727, 129:66, 129:728, 129:769, 129:39 |
| 129:775 | BFP | lo | 54747/500000 | 50081983709/457393000000 | 748 | 129:696, 129:755, 129:116, 129:142, 129:681 |
| 129:776 | BHP | lo | 3521/31250 | 13135091609/116577250000 | 783 | 129:696, 129:757, 129:765, 129:150, 129:682 |
| 129:777 | BFS | lo | 12947/125000 | 875689533/8454520000 | 841 | 129:744, 129:691, 129:714, 129:178, 129:669 |
| 129:778 | EHS | lo | 46589/500000 | 97298837/1044220000 | 841 | 129:744, 129:691, 129:714, 129:178, 129:273 |
| 129:782 | CEF | lo | 21953/200000 | 629889/5738480 | 1006 | 129:132, 129:752, 129:134, 129:674, 129:685 |
| 129:783 | CEH | lo | 3261/31250 | 6082572/58288625 | 1040 | 129:132, 129:751, 129:249, 129:150, 129:682 |
| 129:784 | EHP | lo | 21523/200000 | 6272757/58288625 | 1043 | 129:132, 129:757, 129:150, 129:676, 129:682 |
| 129:786 | AFR | lo | 141921/1000000 | 1512347587747/10656250000000 | 2151 | 129:746, 129:13 |
| 129:790 | AES | hi | 557573/1000000 | 25243729123/45274325000 | 2641 | 129:13, 129:126, 129:70, 129:762, 129:758, 129:39 |
| 129:799 | EHS | hi | 211351/500000 | 574125361606200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:762, 129:727, 129:741, 129:185 |
| 129:801 | EQS | lo | 37227/200000 | 674171353/3621946000 | 2666 | 129:13, 129:126, 129:70, 129:762, 129:728, 129:742, 129:194 |
| 129:804 | EFP | lo | 8493/62500 | 1946581810890269/14324799579000000 | 2752 | 129:21, 129:150, 129:773, 129:766, 129:726, 129:782, 129:770 |
| 129:805 | EPS | lo | 121651/1000000 | 2613951198508093/21487199368500000 | 2757 | 129:21, 129:150, 129:773, 129:766, 129:731, 129:719, 129:778 |
| 129:806 | EPR | lo | 209887/1000000 | 129169362283/615423000000 | 2933 | 129:265, 129:716, 129:708, 129:766, 129:38, 129:249, 129:763 |
| 129:807 | FPS | lo | 95033/1000000 | 16424142583/172824800000 | 3028 | 129:33, 129:784, 129:773, 129:34, 129:771, 129:178, 129:691 |
| 129:808 | AFP | lo | 166679/1000000 | 148892790469/893290000000 | 3085 | 129:39, 129:806, 129:707, 129:34, 129:726, 129:786 |
| 129:811 | CPQ | hi | 457369/1000000 | 81712599730236129/178658000000000000 | 3103 | 129:39, 129:806, 129:707, 129:34, 129:25, 129:134, 129:165 |
| 129:812 | CPR | hi | 466283/1000000 | 41652525771668623/89329000000000000 | 3104 | 129:39, 129:806, 129:707, 129:34, 129:27, 129:249 |
| 129:815 | EPQ | hi | 430367/1000000 | 15377687816931/35731600000000 | 3109 | 129:39, 129:806, 129:707, 129:34, 129:37, 129:195 |
| 129:816 | FHP | lo | 96883/1000000 | 86545347319/893290000000 | 3112 | 129:39, 129:806, 129:707, 129:34, 129:42, 129:770, 129:204 |
| 129:820 | FHS | lo | 23513/250000 | 84016293/893290000 | 3157 | 129:39, 129:763, 129:70, 129:731, 129:42, 129:770, 129:204 |
| 129:823 | APQ | hi | 458241/1000000 | 127751393917/278786500000 | 3177 | 129:790, 129:805, 129:708, 129:34, 129:37, 129:68 |
| 129:825 | BCP | lo | 33017/250000 | 36818979/278786500 | 3180 | 129:790, 129:805, 129:708, 129:34, 129:0, 129:72, 129:739 |
| 129:828 | BPR | hi | 425333/1000000 | 11857685031583217/27878650000000000 | 3186 | 129:790, 129:805, 129:708, 129:34, 129:720, 129:95, 129:126 |
| 129:829 | PQR | lo | 133581/1000000 | 595851/4460584 | 3212 | 129:790, 129:805, 129:708, 129:34, 129:66, 129:194, 129:236 |
| 129:832 | BPS | lo | 94823/1000000 | 6646099205109/70088932313000 | 3228 | 129:47, 129:216, 129:68, 129:771, 129:8, 129:775, 129:116 |
| 129:833 | EPQ | lo | 16257/100000 | 17710051037/108937875000 | 3372 | 129:75, 129:142, 129:775, 129:825, 129:742, 129:134, 129:752 |
| 129:835 | APR | lo | 171573/500000 | 122110260901947/355854904093000 | 3663 | 129:93, 129:833, 129:116, 129:90, 129:720, 129:38, 129:66 |
| 129:836 | APS | lo | 136853/1000000 | 48699945275649/355854904093000 | 3664 | 129:93, 129:833, 129:116, 129:90, 129:762, 129:731, 129:68 |
| 129:839 | PQS | lo | 62853/500000 | 11881446207/94517125000 | 3870 | 129:105, 129:218, 129:126, 129:777, 129:116, 129:755, 129:829 |
| 129:840 | AHS | lo | 34353/250000 | 8437751008059/61404505463000 | 4053 | 129:175, 129:216, 129:801, 129:178, 129:727, 129:42, 129:774 |
| 129:841 | BHS | lo | 31573/200000 | 10663013772789/67544962073000 | 4104 | 129:177, 129:218, 129:763, 129:178, 129:741, 129:98, 129:747 |
| 129:842 | CHS | lo | 36237/250000 | 2447631173089319/16886240518250000 | 4111 | 129:177, 129:218, 129:763, 129:178, 129:783, 129:767, 129:751 |
| 129:844 | HPS | lo | 130417/1000000 | 8809038660518459/67544962073000000 | 4127 | 129:177, 129:218, 129:763, 129:178, 129:784, 129:816, 129:757 |
| 129:845 | CES | lo | 96239/1000000 | 58237709983113/605131148141000 | 4239 | 129:211, 129:709, 129:218, 129:807, 129:782, 129:132, 129:249 |
| 129:846 | ABR | lo | 323127/1000000 | 323127/1000000 | 4336 | 129:70, 129:762, 129:126 |
| 129:847 | ACF | lo | 183767/500000 | 183767/500000 | 4344 | 129:808, 129:766, 129:142 |
| 129:852 | AEF | lo | 395567/1000000 | 395567/1000000 | 4359 | 129:808, 129:34, 129:804 |
| 129:853 | AEH | lo | 6969/20000 | 6969/20000 | 4363 | 129:773, 129:34, 129:784 |
| 129:854 | AEQ | lo | 89947/250000 | 89947/250000 | 4367 | 129:34, 129:764, 129:833 |
| 129:855 | EPR | hi | 57143/125000 | 57143/125000 | 4368 | 129:34, 129:835, 129:39 |
| 129:857 | AES | lo | 21969/62500 | 21969/62500 | 4369 | 129:34, 129:836, 129:805 |
| 129:863 | BCR | lo | 7503/20000 | 7503/20000 | 4408 | 129:825, 129:765, 129:768 |
| 129:864 | BCS | lo | 65447/200000 | 65447/200000 | 4409 | 129:825, 129:832, 129:716 |
| 129:866 | BEH | lo | 313287/1000000 | 313287/1000000 | 4418 | 129:776, 129:90, 129:784 |
| 129:867 | BEQ | lo | 34857/100000 | 34857/100000 | 4422 | 129:90, 129:116, 129:833 |
| 129:868 | BER | lo | 399627/1000000 | 399627/1000000 | 4423 | 129:90, 129:765, 129:806 |
| 129:869 | BES | lo | 154737/500000 | 154737/500000 | 4424 | 129:90, 129:832, 129:805 |
| 129:871 | BFR | lo | 36197/125000 | 36197/125000 | 4437 | 129:126, 129:777, 129:218 |
| 129:872 | BHR | lo | 68773/200000 | 68773/200000 | 4442 | 129:126, 129:841, 129:228 |
| 129:875 | CFR | lo | 23527/62500 | 23527/62500 | 4471 | 129:759, 129:148, 129:218 |
| 129:876 | CHR | lo | 21419/50000 | 21419/50000 | 4476 | 129:759, 129:842, 129:228 |
| 129:877 | EFQ | lo | 74427/200000 | 74427/200000 | 4489 | 129:801, 129:178, 129:216 |
| 129:878 | EFR | lo | 380797/1000000 | 380797/1000000 | 4490 | 129:763, 129:178, 129:218 |
| 129:880 | FPQ | lo | 313739/1000000 | 313739/1000000 | 4506 | 129:216, 129:807, 129:839 |
| 129:882 | HPR | lo | 164859/500000 | 164859/500000 | 4510 | 129:228, 129:844, 129:709 |
| 129:883 | ABE | lo | 48093/500000 | 3149528700/32744139581 | 58 | 129:0, 129:38, 129:846, 129:16, 129:27 |
| 129:884 | CRS | lo | 47609/250000 | 344875/1810973 | 141 | 129:26, 129:126, 129:70, 129:863, 129:13 |
| 129:887 | ABS | lo | 68581/500000 | 1914464547/13957656250 | 213 | 129:883, 129:70, 129:846, 129:857, 129:39 |
| 129:888 | ERS | lo | 487/2500 | 11288929/57951136 | 216 | 129:38, 129:126, 129:70, 129:868, 129:13 |
| 129:889 | APQ | lo | 104237/1000000 | 44335611/425333000 | 297 | 129:8, 129:829, 129:835, 129:116, 129:828 |
| 129:890 | BPR | lo | 96751/1000000 | 14778537/152747000 | 297 | 129:8, 129:829, 129:835, 129:116, 129:823 |
| 129:891 | ACP | lo | 107857/1000000 | 24086907/223322500 | 365 | 129:16, 129:835, 129:26, 129:34, 129:39 |
| 129:892 | CFH | lo | 49411/500000 | 2231898000/22584850573 | 402 | 129:847, 129:204, 129:42, 129:875, 129:49 |
| 129:893 | CPR | lo | 146343/1000000 | 22515799013/153855750000 | 478 | 129:891, 129:884, 129:26, 129:716, 129:265 |
| 129:894 | AHR | lo | 31873/250000 | 2277748449/17865800000 | 497 | 129:853, 129:786, 129:38, 129:42, 129:31 |
| 129:895 | EFH | lo | 51563/500000 | 2329092000/22584850573 | 499 | 129:852, 129:204, 129:42, 129:878, 129:49 |
| 129:896 | AFS | lo | 54221/500000 | 1432467819/13209437500 | 506 | 129:857, 129:820, 129:840, 129:178, 129:799 |
| 129:898 | AHP | lo | 29571/200000 | 6759143079/45714400000 | 545 | 129:34, 129:882, 129:835, 129:784, 129:855 |
| 129:899 | AHQ | lo | 8009/50000 | 4471488803/27915312500 | 552 | 129:853, 129:66, 129:854, 129:894, 129:39 |
| 129:900 | BFP | lo | 1711/15625 | 12520970563/114342250000 | 748 | 129:825, 129:880, 129:116, 129:142, 129:811 |
| 129:901 | BHP | lo | 28171/250000 | 3283939989/29142687500 | 783 | 129:825, 129:882, 129:890, 129:150, 129:812 |
| 129:902 | BFS | lo | 10359/100000 | 2736755853/26418875000 | 841 | 129:869, 129:820, 129:841, 129:178, 129:799 |
| 129:903 | EHS | lo | 46593/500000 | 912251951/9789562500 | 841 | 129:869, 129:820, 129:841, 129:178, 129:273 |
| 129:907 | CEF | lo | 109781/1000000 | 47246139/430367000 | 1006 | 129:132, 129:877, 129:134, 129:804, 129:815 |
| 129:908 | CEH | lo | 104363/1000000 | 48662901/466283000 | 1040 | 129:132, 129:876, 129:249, 129:150, 129:812 |
| 129:909 | EHP | lo | 13453/125000 | 10036653/93256600 | 1043 | 129:132, 129:882, 129:150, 129:806, 129:812 |
| 129:911 | AFR | lo | 7097/50000 | 189068912207/1332031250000 | 2151 | 129:871, 129:13 |
| 129:915 | AES | hi | 139393/250000 | 302924265101/543291900000 | 2641 | 129:13, 129:126, 129:70, 129:887, 129:883, 129:39 |
| 129:924 | EHS | hi | 422689/1000000 | 574108408481200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:887, 129:853, 129:866, 129:185 |
| 129:926 | EQS | lo | 93071/500000 | 2022591559/10865838000 | 2666 | 129:13, 129:126, 129:70, 129:887, 129:854, 129:867, 129:194 |
| 129:929 | EFP | lo | 67957/500000 | 973471207566977/7162399789500000 | 2752 | 129:21, 129:150, 129:898, 129:891, 129:852, 129:907, 129:895 |
| 129:930 | EPS | lo | 60831/500000 | 871393514409347/7162399789500000 | 2757 | 129:21, 129:150, 129:898, 129:891, 129:857, 129:845, 129:903 |
| 129:931 | FPS | lo | 23759/250000 | 5132706113/54007750000 | 3028 | 129:33, 129:909, 129:898, 129:34, 129:896, 129:178, 129:820 |
| 129:932 | AFP | lo | 166729/1000000 | 74468826891/446645000000 | 3085 | 129:39, 129:806, 129:835, 129:34, 129:852, 129:911 |
| 129:935 | CPQ | hi | 457351/1000000 | 5106832055518551/11166125000000000 | 3103 | 129:39, 129:806, 129:835, 129:34, 129:25, 129:134, 129:165 |
| 129:936 | CPR | hi | 233131/500000 | 5206336816206249/11166125000000000 | 3104 | 129:39, 129:806, 129:835, 129:34, 129:27, 129:249 |
| 129:939 | EPQ | hi | 26897/62500 | 15377164014971/35731600000000 | 3109 | 129:39, 129:806, 129:835, 129:34, 129:37, 129:195 |
| 129:940 | FHP | lo | 96889/1000000 | 21637666599/223322500000 | 3112 | 129:39, 129:806, 129:835, 129:34, 129:42, 129:895, 129:204 |
| 129:945 | FHS | lo | 47027/500000 | 10502211/111661250 | 3157 | 129:39, 129:888, 129:70, 129:857, 129:42, 129:895, 129:204 |
| 129:948 | APQ | hi | 229113/500000 | 25549354427/55757200000 | 3177 | 129:915, 129:930, 129:836, 129:34, 129:37, 129:68 |
| 129:950 | BCP | lo | 132069/1000000 | 73638051/557572000 | 3180 | 129:915, 129:930, 129:836, 129:34, 129:0, 129:72, 129:864 |
| 129:953 | BPR | hi | 212649/500000 | 2371339652382727/5575720000000000 | 3186 | 129:915, 129:930, 129:836, 129:34, 129:846, 129:95, 129:126 |
| 129:954 | PQR | lo | 26717/200000 | 2327604/17424125 | 3212 | 129:915, 129:930, 129:836, 129:34, 129:66, 129:194, 129:236 |
| 129:957 | BPS | lo | 11853/125000 | 6646176705109/70088932313000 | 3228 | 129:47, 129:216, 129:68, 129:896, 129:8, 129:900, 129:116 |
| 129:958 | EPQ | lo | 162573/1000000 | 9445524621/58100200000 | 3372 | 129:75, 129:142, 129:900, 129:950, 129:867, 129:134, 129:877 |
| 129:960 | APR | lo | 171579/500000 | 122114472627447/355854904093000 | 3663 | 129:93, 129:958, 129:116, 129:90, 129:846, 129:38, 129:66 |
| 129:961 | APS | lo | 68433/500000 | 48704716493649/355854904093000 | 3664 | 129:93, 129:958, 129:116, 129:90, 129:887, 129:857, 129:68 |
| 129:962 | PRS | lo | 53151/500000 | 37828206080649/355854904093000 | 3699 | 129:93, 129:958, 129:116, 129:90, 129:126, 129:888, 129:236 |
| 129:964 | PQS | lo | 125709/1000000 | 1901073363/15122740000 | 3870 | 129:105, 129:218, 129:126, 129:902, 129:116, 129:880, 129:954 |
| 129:965 | AHS | lo | 137421/1000000 | 1205472715437/8772072209000 | 4053 | 129:175, 129:216, 129:926, 129:178, 129:853, 129:42, 129:899 |
| 129:966 | BHS | lo | 157871/1000000 | 10663395072789/67544962073000 | 4104 | 129:177, 129:218, 129:888, 129:178, 129:866, 129:98, 129:872 |
| 129:967 | CHS | lo | 453/3125 | 4895674470989003/33772481036500000 | 4111 | 129:177, 129:218, 129:888, 129:178, 129:908, 129:892, 129:876 |
| 129:969 | HPS | lo | 16303/125000 | 8809509030290897/67544962073000000 | 4127 | 129:177, 129:218, 129:888, 129:178, 129:909, 129:940, 129:882 |
| 129:970 | CES | lo | 48121/500000 | 58239433211113/605131148141000 | 4239 | 129:211, 129:962, 129:218, 129:931, 129:907, 129:132, 129:249 |
| 129:971 | ABR | lo | 161581/500000 | 161581/500000 | 4336 | 129:70, 129:887, 129:126 |
| 129:972 | ACF | lo | 183793/500000 | 183793/500000 | 4344 | 129:932, 129:891, 129:142 |
| 129:977 | AEF | lo | 395643/1000000 | 395643/1000000 | 4359 | 129:932, 129:34, 129:929 |
| 129:978 | AEH | lo | 348479/1000000 | 348479/1000000 | 4363 | 129:898, 129:34, 129:909 |
| 129:979 | AEQ | lo | 35981/100000 | 35981/100000 | 4367 | 129:34, 129:889, 129:958 |
| 129:980 | EPR | hi | 114283/250000 | 114283/250000 | 4368 | 129:34, 129:960, 129:39 |
| 129:982 | AES | lo | 43941/125000 | 43941/125000 | 4369 | 129:34, 129:961, 129:930 |
| 129:988 | BCR | lo | 375163/1000000 | 375163/1000000 | 4408 | 129:950, 129:890, 129:893 |
| 129:991 | BEH | lo | 78327/250000 | 78327/250000 | 4418 | 129:901, 129:90, 129:909 |
| 129:992 | BEQ | lo | 348573/1000000 | 348573/1000000 | 4422 | 129:90, 129:116, 129:958 |
| 129:993 | BER | lo | 199819/500000 | 199819/500000 | 4423 | 129:90, 129:890, 129:806 |
| 129:994 | BES | lo | 154743/500000 | 154743/500000 | 4424 | 129:90, 129:957, 129:930 |
| 129:996 | BFR | lo | 28959/100000 | 28959/100000 | 4437 | 129:126, 129:902, 129:218 |
| 129:997 | BHR | lo | 343871/1000000 | 343871/1000000 | 4442 | 129:126, 129:966, 129:228 |
| 129:1000 | CFR | lo | 94109/250000 | 94109/250000 | 4471 | 129:884, 129:148, 129:218 |
| 129:1001 | CHR | lo | 107099/250000 | 107099/250000 | 4476 | 129:884, 129:967, 129:228 |
| 129:1002 | EFQ | lo | 186071/500000 | 186071/500000 | 4489 | 129:926, 129:178, 129:216 |
| 129:1003 | EFR | lo | 238/625 | 238/625 | 4490 | 129:888, 129:178, 129:218 |
| 129:1005 | FPQ | lo | 62749/200000 | 62749/200000 | 4506 | 129:216, 129:931, 129:964 |
| 129:1007 | HPR | lo | 164863/500000 | 164863/500000 | 4510 | 129:228, 129:969, 129:962 |
| 129:1008 | ABE | lo | 96189/1000000 | 3149637200/32744139581 | 58 | 129:0, 129:38, 129:971, 129:16, 129:27 |
| 129:1009 | CRS | lo | 95219/500000 | 33108403/173853408 | 141 | 129:26, 129:126, 129:70, 129:988, 129:13 |
| 129:1012 | ABS | lo | 27437/200000 | 15318258567/111661250000 | 213 | 129:1008, 129:70, 129:971, 129:982, 129:39 |
| 129:1013 | ERS | lo | 97401/500000 | 4233391/21731676 | 216 | 129:38, 129:126, 129:70, 129:993, 129:13 |
| 129:1014 | APQ | lo | 104249/1000000 | 14779033/141766000 | 297 | 129:8, 129:954, 129:960, 129:116, 129:953 |
| 129:1015 | BPR | lo | 48379/500000 | 14779033/152742000 | 297 | 129:8, 129:954, 129:960, 129:116, 129:948 |
| 129:1016 | ACP | lo | 53929/500000 | 12043593/111661250 | 365 | 129:16, 129:960, 129:26, 129:34, 129:39 |
| 129:1017 | CFH | lo | 9883/100000 | 2232066000/22584850573 | 402 | 129:972, 129:204, 129:42, 129:1000, 129:49 |
| 129:1018 | CPR | lo | 18293/125000 | 22515900551/153855750000 | 478 | 129:1016, 129:1009, 129:26, 129:716, 129:265 |
| 129:1019 | AHR | lo | 7969/62500 | 5694907963/44664500000 | 497 | 129:978, 129:911, 129:38, 129:42, 129:31 |
| 129:1020 | EFH | lo | 3223/31250 | 2329329000/22584850573 | 499 | 129:977, 129:204, 129:42, 129:1003, 129:49 |
| 129:1021 | AFS | lo | 21691/200000 | 5730345939/52836125000 | 506 | 129:982, 129:945, 129:965, 129:178, 129:924 |
| 129:1023 | AHP | lo | 14787/100000 | 2112392331/14285375000 | 545 | 129:34, 129:1007, 129:960, 129:909, 129:980 |
| 129:1024 | AHQ | lo | 160197/1000000 | 3577571381/22332250000 | 552 | 129:978, 129:66, 129:979, 129:1019, 129:39 |
| 129:1025 | BFP | lo | 109511/1000000 | 10016997681/91470200000 | 748 | 129:950, 129:1005, 129:116, 129:142, 129:935 |
| 129:1026 | BHP | lo | 56347/500000 | 26272538547/233131000000 | 783 | 129:950, 129:1007, 129:1015, 129:150, 129:936 |
| 129:1027 | BFS | lo | 103599/1000000 | 10947599811/105672250000 | 841 | 129:994, 129:945, 129:966, 129:178, 129:924 |
| 129:1028 | EHS | lo | 93191/1000000 | 1216399979/13052750000 | 841 | 129:994, 129:945, 129:966, 129:178, 129:273 |
| 129:1032 | CEF | lo | 3431/31250 | 5906151/53794000 | 1006 | 129:132, 129:1002, 129:134, 129:929, 129:939 |
| 129:1033 | CEH | lo | 104371/1000000 | 48664389/466262000 | 1040 | 129:132, 129:1001, 129:249, 129:150, 129:936 |
| 129:1034 | EHP | lo | 10763/100000 | 50184009/466262000 | 1043 | 129:132, 129:1007, 129:150, 129:806, 129:936 |
| 129:1036 | AFR | lo | 141947/1000000 | 151262442429/1065625000000 | 2151 | 129:996, 129:13 |
| 129:1048 | EHS | hi | 10567/25000 | 574096299106200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:1012, 129:978, 129:991, 129:185 |
| 129:1050 | EQS | lo | 93073/500000 | 4045279993/21731676000 | 2666 | 129:13, 129:126, 129:70, 129:1012, 129:979, 129:992, 129:194 |
| 129:1053 | EFP | lo | 135931/1000000 | 1962895253407/14440322156250 | 2752 | 129:21, 129:150, 129:1023, 129:1016, 129:977, 129:1032, 129:1020 |
| 129:1054 | EPS | lo | 30417/250000 | 56222062486019/462090309000000 | 2757 | 129:21, 129:150, 129:1023, 129:1016, 129:982, 129:970, 129:1028 |
| 129:1055 | EPR | lo | 6559/31250 | 129170201333/615423000000 | 2933 | 129:265, 129:716, 129:961, 129:1016, 129:38, 129:249, 129:1013 |
| 129:1056 | FPS | lo | 47519/500000 | 1642499513/17282480000 | 3028 | 129:33, 129:1034, 129:1023, 129:34, 129:1021, 129:178, 129:945 |
| 129:1057 | AFP | lo | 41691/250000 | 74484565797/446645000000 | 3085 | 129:39, 129:1055, 129:960, 129:34, 129:977, 129:1036 |
| 129:1060 | CPQ | hi | 228669/500000 | 20426748191143737/44664500000000000 | 3103 | 129:39, 129:1055, 129:960, 129:34, 129:25, 129:134, 129:165 |
| 129:1061 | CPR | hi | 58281/125000 | 10412350472056269/22332250000000000 | 3104 | 129:39, 129:1055, 129:960, 129:34, 129:27, 129:249 |
| 129:1064 | EPQ | hi | 215171/500000 | 15376794272411/35731600000000 | 3109 | 129:39, 129:1055, 129:960, 129:34, 129:37, 129:195 |
| 129:1065 | FHP | lo | 96893/1000000 | 2704819359/27915312500 | 3112 | 129:39, 129:1055, 129:960, 129:34, 129:42, 129:1020, 129:204 |
| 129:1069 | FHS | lo | 18811/200000 | 42009309/446645000 | 3157 | 129:39, 129:1013, 129:70, 129:982, 129:42, 129:1020, 129:204 |
| 129:1072 | APQ | hi | 458217/1000000 | 31936115311/69696500000 | 3177 | 129:915, 129:1054, 129:961, 129:34, 129:37, 129:68 |
| 129:1076 | BPR | hi | 212639/500000 | 2964034746232211/6969650000000000 | 3186 | 129:915, 129:1054, 129:961, 129:34, 129:971, 129:95, 129:126 |
| 129:1077 | PQR | lo | 133587/1000000 | 18621111/139393000 | 3212 | 129:915, 129:1054, 129:961, 129:34, 129:66, 129:194, 129:236 |
| 129:1080 | BPS | lo | 3793/40000 | 6646230955109/70088932313000 | 3228 | 129:47, 129:216, 129:68, 129:1021, 129:8, 129:1025, 129:116 |
| 129:1082 | EPQ | lo | 81287/500000 | 23614012133/145250500000 | 3372 | 129:75, 129:142, 129:1025, 129:950, 129:992, 129:134, 129:1002 |
| 129:1084 | APR | lo | 171583/500000 | 122117339735947/355854904093000 | 3663 | 129:93, 129:1082, 129:116, 129:90, 129:971, 129:38, 129:66 |
| 129:1085 | APS | lo | 219/1600 | 48707724175649/355854904093000 | 3664 | 129:93, 129:1082, 129:116, 129:90, 129:1012, 129:982, 129:68 |
| 129:1088 | PQS | lo | 125711/1000000 | 95054798613/756137000000 | 3870 | 129:105, 129:218, 129:126, 129:1027, 129:116, 129:1005, 129:1077 |
| 129:1089 | AHS | lo | 137427/1000000 | 92825677088649/675449560093000 | 4053 | 129:175, 129:216, 129:1050, 129:178, 129:978, 129:42, 129:1024 |
| 129:1090 | BHS | lo | 78937/500000 | 10663646172789/67544962073000 | 4104 | 129:177, 129:218, 129:1013, 129:178, 129:991, 129:98, 129:997 |
| 129:1091 | CHS | lo | 144969/1000000 | 979196370167459/6754496207300000 | 4111 | 129:177, 129:218, 129:1013, 129:178, 129:1033, 129:1017, 129:1001 |
| 129:1093 | HPS | lo | 130429/1000000 | 8809835010139189/67544962073000000 | 4127 | 129:177, 129:218, 129:1013, 129:178, 129:1034, 129:1065, 129:1007 |
| 129:1094 | CES | lo | 24061/250000 | 58240606287113/605131148141000 | 4239 | 129:211, 129:962, 129:218, 129:1056, 129:1032, 129:132, 129:249 |
| 129:1095 | ABR | lo | 64637/200000 | 64637/200000 | 4336 | 129:70, 129:1012, 129:126 |
| 129:1096 | ACF | lo | 183811/500000 | 183811/500000 | 4344 | 129:1057, 129:1016, 129:142 |
| 129:1101 | AEF | lo | 79139/200000 | 79139/200000 | 4359 | 129:1057, 129:34, 129:1053 |
| 129:1102 | AEH | lo | 697/2000 | 697/2000 | 4363 | 129:1023, 129:34, 129:1034 |
| 129:1103 | AEQ | lo | 359823/1000000 | 359823/1000000 | 4367 | 129:34, 129:1014, 129:1082 |
| 129:1104 | EPR | hi | 114281/250000 | 114281/250000 | 4368 | 129:34, 129:1084, 129:39 |
| 129:1106 | AES | lo | 351543/1000000 | 351543/1000000 | 4369 | 129:34, 129:1085, 129:1054 |
| 129:1112 | BCR | lo | 375171/1000000 | 375171/1000000 | 4408 | 129:950, 129:1015, 129:1018 |
| 129:1115 | BEH | lo | 78331/250000 | 78331/250000 | 4418 | 129:1026, 129:90, 129:1034 |
| 129:1116 | BEQ | lo | 174287/500000 | 174287/500000 | 4422 | 129:90, 129:116, 129:1082 |
| 129:1117 | BER | lo | 199823/500000 | 199823/500000 | 4423 | 129:90, 129:1015, 129:1055 |
| 129:1118 | BES | lo | 309493/1000000 | 309493/1000000 | 4424 | 129:90, 129:1080, 129:1054 |
| 129:1120 | BFR | lo | 289599/1000000 | 289599/1000000 | 4437 | 129:126, 129:1027, 129:218 |
| 129:1121 | BHR | lo | 171937/500000 | 171937/500000 | 4442 | 129:126, 129:1090, 129:228 |
| 129:1124 | CFR | lo | 188219/500000 | 188219/500000 | 4471 | 129:1009, 129:148, 129:218 |
| 129:1125 | CHR | lo | 428407/1000000 | 428407/1000000 | 4476 | 129:1009, 129:1091, 129:228 |
| 129:1126 | EFQ | lo | 186073/500000 | 186073/500000 | 4489 | 129:1050, 129:178, 129:216 |
| 129:1127 | EFR | lo | 190401/500000 | 190401/500000 | 4490 | 129:1013, 129:178, 129:218 |
| 129:1129 | FPQ | lo | 313749/1000000 | 313749/1000000 | 4506 | 129:216, 129:1056, 129:1088 |
| 129:1131 | HPR | lo | 329731/1000000 | 329731/1000000 | 4510 | 129:228, 129:1093, 129:962 |
| 129:1132 | ABE | lo | 96191/1000000 | 3149708500/32744139581 | 58 | 129:0, 129:38, 129:1095, 129:16, 129:27 |
| 129:1133 | CRS | lo | 4761/25000 | 11036217/57951136 | 141 | 129:26, 129:126, 129:70, 129:1112, 129:13 |
| 129:1136 | ABS | lo | 137199/1000000 | 24511837491/178658000000 | 213 | 129:1132, 129:70, 129:1095, 129:1106, 129:39 |
| 129:1137 | ERS | lo | 48701/250000 | 2116711/10865838 | 216 | 129:38, 129:126, 129:70, 129:1117, 129:13 |
| 129:1138 | APQ | lo | 1629/15625 | 44338029/425278000 | 297 | 129:8, 129:1077, 129:1084, 129:116, 129:1076 |
| 129:1139 | BPR | lo | 48381/500000 | 14779343/152739000 | 297 | 129:8, 129:1077, 129:1084, 129:116, 129:1072 |
| 129:1140 | ACP | lo | 107859/1000000 | 6021843/55830625 | 365 | 129:16, 129:1084, 129:26, 129:34, 129:39 |
| 129:1141 | CFH | lo | 19767/200000 | 2232180000/22584850573 | 402 | 129:1096, 129:204, 129:42, 129:1124, 129:49 |
| 129:1142 | AHR | lo | 12751/100000 | 227807159/1786580000 | 497 | 129:1102, 129:1036, 129:38, 129:42, 129:31 |
| 129:1143 | EFH | lo | 103143/1000000 | 2329491000/22584850573 | 499 | 129:1101, 129:204, 129:42, 129:1127, 129:49 |
| 129:1144 | AFS | lo | 54231/500000 | 9169017573/84536000000 | 506 | 129:1106, 129:1069, 129:1089, 129:178, 129:1048 |
| 129:1145 | AFP | lo | 41697/250000 | 14899014137/89329000000 | 512 | 129:1101, 129:1084, 129:34, 129:1036, 129:39 |
| 129:1146 | AHP | lo | 3697/25000 | 3379996979/22856200000 | 545 | 129:34, 129:1131, 129:1084, 129:1034, 129:1104 |
| 129:1147 | AHQ | lo | 10013/62500 | 14311253073/89329000000 | 552 | 129:1102, 129:66, 129:1103, 129:1142, 129:39 |
| 129:1148 | BFP | lo | 21903/200000 | 16695172227/152446000000 | 748 | 129:950, 129:1129, 129:116, 129:142, 129:1060 |
| 129:1149 | BHP | lo | 112699/1000000 | 17515369813/155416000000 | 783 | 129:950, 129:1131, 129:1139, 129:150, 129:1061 |
| 129:1150 | BFS | lo | 25901/250000 | 8758329223/84536000000 | 841 | 129:1118, 129:1069, 129:1090, 129:178, 129:1048 |
| 129:1151 | EHS | lo | 93193/1000000 | 8758329223/93979800000 | 841 | 129:1118, 129:1069, 129:1090, 129:178, 129:273 |
| 129:1155 | CEF | lo | 109799/1000000 | 1524231/13882000 | 1006 | 129:132, 129:1126, 129:134, 129:1053, 129:1064 |
| 129:1156 | CEH | lo | 13047/125000 | 4055451/38854000 | 1040 | 129:132, 129:1125, 129:249, 129:150, 129:1061 |
| 129:1157 | EHP | lo | 53817/500000 | 16728189/155416000 | 1043 | 129:132, 129:1131, 129:150, 129:1055, 129:1061 |
| 129:1159 | AFR | lo | 141951/1000000 | 1512671434269/10656250000000 | 2151 | 129:1120, 129:13 |
| 129:1163 | AES | hi | 557571/1000000 | 151461890363/271645950000 | 2641 | 129:13, 129:126, 129:70, 129:1136, 129:1132, 129:39 |
| 129:1172 | EHS | hi | 211337/500000 | 574087338168700091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:1136, 129:1102, 129:1115, 129:185 |
| 129:1174 | EQS | lo | 186149/1000000 | 4045334243/21731676000 | 2666 | 129:13, 129:126, 129:70, 129:1136, 129:1103, 129:1116, 129:194 |
| 129:1177 | EFP | lo | 135943/1000000 | 5842089672930391/42974398737000000 | 2752 | 129:21, 129:150, 129:1146, 129:1140, 129:1101, 129:1155, 129:1143 |
| 129:1178 | EPS | lo | 15209/125000 | 1742933245165747/14324799579000000 | 2757 | 129:21, 129:150, 129:1146, 129:1140, 129:1106, 129:1094, 129:1151 |
| 129:1179 | FPS | lo | 95039/1000000 | 20531470977/216031000000 | 3028 | 129:33, 129:1157, 129:1146, 129:34, 129:1144, 129:178, 129:1069 |
| 129:1183 | CPR | hi | 233119/500000 | 10412135031818783/22332250000000000 | 3104 | 129:39, 129:1055, 129:1084, 129:34, 129:27, 129:249 |
| 129:1186 | EPQ | hi | 86067/200000 | 15376547777371/35731600000000 | 3109 | 129:39, 129:1055, 129:1084, 129:34, 129:37, 129:195 |
| 129:1187 | FHP | lo | 1514/15625 | 43278351369/446645000000 | 3112 | 129:39, 129:1055, 129:1084, 129:34, 129:42, 129:1143, 129:204 |
| 129:1193 | APQ | hi | 458211/1000000 | 255485071003/557571000000 | 3177 | 129:1163, 129:1178, 129:1085, 129:34, 129:37, 129:68 |
| 129:1197 | BPR | hi | 26579/62500 | 3387350451378529/7965300000000000 | 3186 | 129:1163, 129:1178, 129:1085, 129:34, 129:1095, 129:95, 129:126 |
| 129:1198 | PQR | lo | 33397/250000 | 4965673/37171400 | 3212 | 129:1163, 129:1178, 129:1085, 129:34, 129:66, 129:194, 129:236 |
| 129:1201 | BPS | lo | 47413/500000 | 6646261955109/70088932313000 | 3228 | 129:47, 129:216, 129:68, 129:1144, 129:8, 129:1148, 129:116 |
| 129:1202 | EPQ | lo | 6503/40000 | 23614115679/145250500000 | 3372 | 129:75, 129:142, 129:1148, 129:950, 129:1116, 129:134, 129:1126 |
| 129:1204 | APR | lo | 343171/1000000 | 122119231429447/355854904093000 | 3663 | 129:93, 129:1202, 129:116, 129:90, 129:1095, 129:38, 129:66 |
| 129:1205 | APS | lo | 1711/12500 | 48709581793149/355854904093000 | 3664 | 129:93, 129:1202, 129:116, 129:90, 129:1136, 129:1106, 129:68 |
| 129:1207 | AHS | lo | 17179/125000 | 92828653088649/675449560093000 | 4053 | 129:175, 129:216, 129:1174, 129:178, 129:1102, 129:42, 129:1147 |
| 129:1208 | BHS | lo | 157877/1000000 | 10663822872789/67544962073000 | 4104 | 129:177, 129:218, 129:1137, 129:178, 129:1115, 129:98, 129:1121 |
| 129:1209 | CHS | lo | 5799/40000 | 1958471445296991/13508992414600000 | 4111 | 129:177, 129:218, 129:1137, 129:178, 129:1156, 129:1141, 129:1125 |
| 129:1211 | HPS | lo | 2038/15625 | 137657274141022/1055390032390625 | 4127 | 129:177, 129:218, 129:1137, 129:178, 129:1157, 129:1187, 129:1131 |
| 129:1212 | CES | lo | 19249/200000 | 58241352278113/605131148141000 | 4239 | 129:211, 129:962, 129:218, 129:1179, 129:1155, 129:132, 129:249 |
| 129:1213 | ABR | lo | 323199/1000000 | 323199/1000000 | 4336 | 129:70, 129:1136, 129:126 |
| 129:1214 | ACF | lo | 367647/1000000 | 367647/1000000 | 4344 | 129:1145, 129:1140, 129:142 |
| 129:1219 | AEF | lo | 395731/1000000 | 395731/1000000 | 4359 | 129:1145, 129:34, 129:1177 |
| 129:1220 | AEH | lo | 174257/500000 | 174257/500000 | 4363 | 129:1146, 129:34, 129:1157 |
| 129:1221 | AEQ | lo | 359831/1000000 | 359831/1000000 | 4367 | 129:34, 129:1138, 129:1202 |
| 129:1222 | EPR | hi | 457119/1000000 | 457119/1000000 | 4368 | 129:34, 129:1204, 129:39 |
| 129:1224 | AES | lo | 5493/15625 | 5493/15625 | 4369 | 129:34, 129:1205, 129:1178 |
| 129:1231 | BCS | lo | 327239/1000000 | 327239/1000000 | 4409 | 129:950, 129:1201, 129:716 |
| 129:1233 | BEH | lo | 313333/1000000 | 313333/1000000 | 4418 | 129:1149, 129:90, 129:1157 |
| 129:1234 | BEQ | lo | 13943/40000 | 13943/40000 | 4422 | 129:90, 129:116, 129:1202 |
| 129:1236 | BES | lo | 154749/500000 | 154749/500000 | 4424 | 129:90, 129:1201, 129:1178 |
| 129:1238 | BFR | lo | 72401/250000 | 72401/250000 | 4437 | 129:126, 129:1150, 129:218 |
| 129:1239 | BHR | lo | 343877/1000000 | 343877/1000000 | 4442 | 129:126, 129:1208, 129:228 |
| 129:1242 | CFR | lo | 9411/25000 | 9411/25000 | 4471 | 129:1133, 129:148, 129:218 |
| 129:1243 | CHR | lo | 85683/200000 | 85683/200000 | 4476 | 129:1133, 129:1209, 129:228 |
| 129:1244 | EFQ | lo | 372149/1000000 | 372149/1000000 | 4489 | 129:1174, 129:178, 129:216 |
| 129:1245 | EFR | lo | 95201/250000 | 95201/250000 | 4490 | 129:1137, 129:178, 129:218 |
| 129:1247 | FPQ | lo | 251/800 | 251/800 | 4506 | 129:216, 129:1179, 129:1088 |
| 129:1249 | HPR | lo | 164867/500000 | 164867/500000 | 4510 | 129:228, 129:1211, 129:962 |
| 129:1250 | ABE | lo | 1503/15625 | 3149751900/32744139581 | 58 | 129:0, 129:38, 129:1213, 129:16, 129:27 |
| 129:1253 | ABS | lo | 17151/125000 | 1915111107/13957656250 | 213 | 129:1250, 129:70, 129:1213, 129:1224, 129:39 |
| 129:1254 | APQ | lo | 104261/1000000 | 44338587/425264000 | 297 | 129:8, 129:1198, 129:1204, 129:116, 129:1197 |
| 129:1255 | BPR | lo | 24191/250000 | 476759/4927000 | 297 | 129:8, 129:1198, 129:1204, 129:116, 129:1193 |
| 129:1256 | CFH | lo | 49419/500000 | 2232261000/22584850573 | 402 | 129:1214, 129:204, 129:42, 129:1242, 129:49 |
| 129:1258 | EFH | lo | 103149/1000000 | 2329605000/22584850573 | 499 | 129:1219, 129:204, 129:42, 129:1245, 129:49 |
| 129:1259 | AFS | lo | 108467/1000000 | 71634999/660428125 | 506 | 129:1224, 129:1069, 129:1207, 129:178, 129:1172 |
| 129:1260 | AFP | lo | 41701/250000 | 149004846001/893290000000 | 512 | 129:1219, 129:1204, 129:34, 129:1159, 129:39 |
| 129:1261 | AHP | lo | 147887/1000000 | 11267021569/76186500000 | 545 | 129:34, 129:1249, 129:1204, 129:1157, 129:1222 |
| 129:1264 | BHP | lo | 112703/1000000 | 26273345823/233119000000 | 783 | 129:950, 129:1249, 129:1255, 129:150, 129:1183 |
| 129:1265 | BFS | lo | 103607/1000000 | 4379239539/42267400000 | 841 | 129:1236, 129:1069, 129:1208, 129:178, 129:1172 |
| 129:1266 | EHS | lo | 18639/200000 | 486582171/5221100000 | 841 | 129:1236, 129:1069, 129:1208, 129:178, 129:273 |
| 129:1270 | CEF | lo | 27451/250000 | 1312571/11953750 | 1006 | 129:132, 129:1244, 129:134, 129:1177, 129:1186 |
| 129:1271 | CEH | lo | 5219/50000 | 12166539/116559500 | 1040 | 129:132, 129:1243, 129:249, 129:150, 129:1183 |
| 129:1272 | EHP | lo | 107637/1000000 | 25092423/233119000 | 1043 | 129:132, 129:1249, 129:150, 129:1055, 129:1183 |
| 129:1274 | AFR | lo | 70977/500000 | 378174387731/2664062500000 | 2151 | 129:1238, 129:13 |
| 129:1286 | EHS | hi | 42267/100000 | 574081767856200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:1253, 129:1220, 129:1233, 129:185 |
| 129:1288 | EQS | lo | 3723/20000 | 2022684559/10865838000 | 2666 | 129:13, 129:126, 129:70, 129:1253, 129:1221, 129:1234, 129:194 |
| 129:1291 | EFP | lo | 8497/62500 | 5842481954572813/42974398737000000 | 2752 | 129:21, 129:150, 129:1261, 129:1140, 129:1219, 129:1270, 129:1258 |
| 129:1292 | EPS | lo | 4867/40000 | 1045782381558943/8594879747400000 | 2757 | 129:21, 129:150, 129:1261, 129:1140, 129:1224, 129:1212, 129:1266 |
| 129:1293 | FPS | lo | 297/3125 | 82126468479/864124000000 | 3028 | 129:33, 129:1272, 129:1261, 129:34, 129:1259, 129:178, 129:1069 |
| 129:1297 | CPR | hi | 58279/125000 | 41648001526681417/89329000000000000 | 3104 | 129:39, 129:1055, 129:1204, 129:34, 129:27, 129:249 |
| 129:1300 | EPQ | hi | 430331/1000000 | 15376393717971/35731600000000 | 3109 | 129:39, 129:1055, 129:1204, 129:34, 129:37, 129:195 |
| 129:1301 | FHP | lo | 48449/500000 | 86558812479/893290000000 | 3112 | 129:39, 129:1055, 129:1204, 129:34, 129:42, 129:1258, 129:204 |
| 129:1304 | FHS | lo | 11757/125000 | 84019827/893290000 | 3157 | 129:39, 129:1137, 129:70, 129:1224, 129:42, 129:1258, 129:204 |
| 129:1307 | APQ | hi | 458207/1000000 | 15967672507/34848187500 | 3177 | 129:1163, 129:1292, 129:1205, 129:34, 129:37, 129:68 |
| 129:1311 | BPR | hi | 85051/200000 | 1481933527454057/3484818750000000 | 3186 | 129:1163, 129:1292, 129:1205, 129:34, 129:1213, 129:95, 129:126 |
| 129:1312 | PQR | lo | 133589/1000000 | 24828551/185857000 | 3212 | 129:1163, 129:1292, 129:1205, 129:34, 129:66, 129:194, 129:236 |
| 129:1315 | APR | lo | 171587/500000 | 9393874573419/27373454161000 | 3663 | 129:93, 129:1202, 129:116, 129:90, 129:1213, 129:38, 129:66 |
| 129:1316 | APS | lo | 136883/1000000 | 48710731880649/355854904093000 | 3664 | 129:93, 129:1202, 129:116, 129:90, 129:1253, 129:1224, 129:68 |
| 129:1318 | PQS | lo | 7857/62500 | 95055795523/756137000000 | 3870 | 129:105, 129:218, 129:126, 129:1265, 129:116, 129:1247, 129:1312 |
| 129:1320 | BHS | lo | 157879/1000000 | 10663934472789/67544962073000 | 4104 | 129:177, 129:218, 129:1137, 129:178, 129:1233, 129:98, 129:1239 |
| 129:1321 | CHS | lo | 144979/1000000 | 4896307830685587/33772481036500000 | 4111 | 129:177, 129:218, 129:1137, 129:178, 129:1271, 129:1256, 129:1243 |
| 129:1322 | HPS | lo | 65217/500000 | 4405109617474777/33772481036500000 | 4127 | 129:177, 129:218, 129:1137, 129:178, 129:1272, 129:1301, 129:1249 |
| 129:1323 | CES | lo | 48123/500000 | 58241885665113/605131148141000 | 4239 | 129:211, 129:962, 129:218, 129:1293, 129:1270, 129:132, 129:249 |
| 129:1324 | ABR | lo | 40401/125000 | 40401/125000 | 4336 | 129:70, 129:1253, 129:126 |
| 129:1325 | ACF | lo | 367663/1000000 | 367663/1000000 | 4344 | 129:1260, 129:1140, 129:142 |
| 129:1330 | AEF | lo | 98939/250000 | 98939/250000 | 4359 | 129:1260, 129:34, 129:1291 |
| 129:1331 | AEH | lo | 87131/250000 | 87131/250000 | 4363 | 129:1261, 129:34, 129:1272 |
| 129:1332 | AEQ | lo | 89959/250000 | 89959/250000 | 4367 | 129:34, 129:1254, 129:1202 |
| 129:1333 | EPR | hi | 114279/250000 | 114279/250000 | 4368 | 129:34, 129:1315, 129:39 |
| 129:1335 | AES | lo | 175779/500000 | 175779/500000 | 4369 | 129:34, 129:1316, 129:1292 |
| 129:1341 | BCR | lo | 375177/1000000 | 375177/1000000 | 4408 | 129:950, 129:1255, 129:1018 |
| 129:1343 | BEH | lo | 15667/50000 | 15667/50000 | 4418 | 129:1264, 129:90, 129:1272 |
| 129:1344 | BER | lo | 99913/250000 | 99913/250000 | 4423 | 129:90, 129:1255, 129:1055 |
| 129:1345 | BES | lo | 309501/1000000 | 309501/1000000 | 4424 | 129:90, 129:1201, 129:1292 |
| 129:1347 | BFR | lo | 289607/1000000 | 289607/1000000 | 4437 | 129:126, 129:1265, 129:218 |
| 129:1348 | BHR | lo | 343879/1000000 | 343879/1000000 | 4442 | 129:126, 129:1320, 129:228 |
| 129:1351 | CHR | lo | 428419/1000000 | 428419/1000000 | 4476 | 129:1133, 129:1321, 129:228 |
| 129:1352 | EFQ | lo | 7443/20000 | 7443/20000 | 4489 | 129:1288, 129:178, 129:216 |
| 129:1356 | HPR | lo | 41217/125000 | 41217/125000 | 4510 | 129:228, 129:1322, 129:962 |
| 129:1357 | ABE | lo | 96193/1000000 | 3149779800/32744139581 | 58 | 129:0, 129:38, 129:1324, 129:16, 129:27 |
| 129:1358 | CRS | lo | 190441/1000000 | 11036279/57951136 | 141 | 129:26, 129:126, 129:70, 129:1341, 129:13 |
| 129:1361 | ABS | lo | 68607/500000 | 15321538383/111661250000 | 213 | 129:1357, 129:70, 129:1324, 129:1335, 129:39 |
| 129:1362 | ERS | lo | 38961/200000 | 16933781/86926704 | 216 | 129:38, 129:126, 129:70, 129:1344, 129:13 |
| 129:1363 | APQ | lo | 13033/125000 | 44338959/425255000 | 297 | 129:8, 129:1312, 129:1315, 129:116, 129:1311 |
| 129:1364 | BPR | lo | 48383/500000 | 44338959/458207000 | 297 | 129:8, 129:1312, 129:1315, 129:116, 129:1307 |
| 129:1365 | CFH | lo | 2471/25000 | 2232309000/22584850573 | 402 | 129:1325, 129:204, 129:42, 129:1242, 129:49 |
| 129:1366 | CPR | lo | 29269/200000 | 30021372073/205141000000 | 478 | 129:1140, 129:1358, 129:26, 129:716, 129:265 |
| 129:1367 | AHR | lo | 31879/250000 | 14238678237/111661250000 | 497 | 129:1331, 129:1274, 129:38, 129:42, 129:31 |
| 129:1368 | EFH | lo | 6447/62500 | 2329680000/22584850573 | 499 | 129:1330, 129:204, 129:42, 129:1245, 129:49 |
| 129:1370 | AFP | lo | 33363/200000 | 18626861443/111661250000 | 512 | 129:1330, 129:1315, 129:34, 129:1274, 129:39 |
| 129:1371 | AHP | lo | 147891/1000000 | 11267277973/76186000000 | 545 | 129:34, 129:1356, 129:1315, 129:1272, 129:1333 |
| 129:1372 | AHQ | lo | 8011/50000 | 8945190211/55830625000 | 552 | 129:1331, 129:66, 129:1332, 129:1367, 129:39 |
| 129:1374 | BHP | lo | 22541/200000 | 6568392723/58279000000 | 783 | 129:950, 129:1356, 129:1364, 129:150, 129:1297 |
| 129:1375 | BFS | lo | 10361/100000 | 228089443/2201406250 | 841 | 129:1345, 129:1304, 129:1320, 129:178, 129:1286 |
| 129:1376 | EHS | lo | 23299/250000 | 228089443/2447390625 | 841 | 129:1345, 129:1304, 129:1320, 129:178, 129:273 |
| 129:1380 | CEF | lo | 109807/1000000 | 23626743/215165500 | 1006 | 129:132, 129:1352, 129:134, 129:1291, 129:1300 |
| 129:1381 | CEH | lo | 52191/500000 | 1520829/14569750 | 1040 | 129:132, 129:1351, 129:249, 129:150, 129:1297 |
| 129:1382 | EHP | lo | 107639/1000000 | 6273129/58279000 | 1043 | 129:132, 129:1356, 129:150, 129:1055, 129:1297 |
| 129:1384 | AFR | lo | 28391/200000 | 1512713220917/10656250000000 | 2151 | 129:1347, 129:13 |
| 129:1396 | EHS | hi | 422667/1000000 | 191359216889566697/452743250000000000 | 2664 | 129:13, 129:126, 129:70, 129:1361, 129:1331, 129:1343, 129:185 |
| 129:1398 | EQS | lo | 186151/1000000 | 1348462831/7243892000 | 2666 | 129:13, 129:126, 129:70, 129:1361, 129:1332, 129:1234, 129:194 |
| 129:1401 | EFP | lo | 67979/500000 | 10143601577724/74608331140625 | 2752 | 129:21, 129:150, 129:1371, 129:1140, 129:1330, 129:1380, 129:1368 |
| 129:1402 | EPS | lo | 30419/250000 | 435748228516121/3581199894750000 | 2757 | 129:21, 129:150, 129:1371, 129:1140, 129:1335, 129:1323, 129:1376 |
| 129:1403 | EPR | lo | 209889/1000000 | 8611374989/41028200000 | 2933 | 129:265, 129:716, 129:1316, 129:1140, 129:38, 129:249, 129:1362 |
| 129:1407 | CPR | hi | 116557/250000 | 10411919591581297/22332250000000000 | 3104 | 129:39, 129:1403, 129:1315, 129:34, 129:27, 129:249 |
| 129:1410 | EPQ | hi | 53791/125000 | 15376301282331/35731600000000 | 3109 | 129:39, 129:1403, 129:1315, 129:34, 129:37, 129:195 |
| 129:1411 | FHP | lo | 969/10000 | 1352498007/13957656250 | 3112 | 129:39, 129:1403, 129:1315, 129:34, 129:42, 129:1368, 129:204 |
| 129:1423 | APR | lo | 42897/125000 | 122121101041947/355854904093000 | 3663 | 129:93, 129:1202, 129:116, 129:90, 129:1324, 129:38, 129:66 |
| 129:1424 | APS | lo | 27377/200000 | 48711498605649/355854904093000 | 3664 | 129:93, 129:1202, 129:116, 129:90, 129:1361, 129:1335, 129:68 |
| 129:1426 | AHS | lo | 137437/1000000 | 92832001088649/675449560093000 | 4053 | 129:175, 129:216, 129:1398, 129:178, 129:1331, 129:42, 129:1372 |
| 129:1427 | BHS | lo | 3947/25000 | 10664018172789/67544962073000 | 4104 | 129:177, 129:218, 129:1362, 129:178, 129:1343, 129:98, 129:1348 |
| 129:1428 | CHS | lo | 144981/1000000 | 244819233782383/1688624051825000 | 4111 | 129:177, 129:218, 129:1362, 129:178, 129:1381, 129:1365, 129:1351 |
| 129:1430 | HPS | lo | 32609/250000 | 88103543248737/675449620730000 | 4127 | 129:177, 129:218, 129:1362, 129:178, 129:1382, 129:1411, 129:1356 |
| 129:1431 | CES | lo | 96247/1000000 | 256573588419/2665775983000 | 4239 | 129:211, 129:962, 129:218, 129:1293, 129:1380, 129:132, 129:249 |
| 129:1432 | ABR | lo | 161607/500000 | 161607/500000 | 4336 | 129:70, 129:1361, 129:126 |
| 129:1433 | ACF | lo | 183837/500000 | 183837/500000 | 4344 | 129:1370, 129:1140, 129:142 |
| 129:1438 | AEF | lo | 395773/1000000 | 395773/1000000 | 4359 | 129:1370, 129:34, 129:1401 |
| 129:1439 | AEH | lo | 34853/100000 | 34853/100000 | 4363 | 129:1371, 129:34, 129:1382 |
| 129:1440 | AEQ | lo | 359839/1000000 | 359839/1000000 | 4367 | 129:34, 129:1363, 129:1202 |
| 129:1441 | EPR | hi | 228557/500000 | 228557/500000 | 4368 | 129:34, 129:1423, 129:39 |
| 129:1443 | AES | lo | 351561/1000000 | 351561/1000000 | 4369 | 129:34, 129:1424, 129:1402 |
| 129:1451 | BEH | lo | 4896/15625 | 4896/15625 | 4418 | 129:1374, 129:90, 129:1382 |
| 129:1453 | BES | lo | 154751/500000 | 154751/500000 | 4424 | 129:90, 129:1201, 129:1402 |
| 129:1455 | BFR | lo | 28961/100000 | 28961/100000 | 4437 | 129:126, 129:1375, 129:218 |
| 129:1456 | BHR | lo | 8597/25000 | 8597/25000 | 4442 | 129:126, 129:1427, 129:228 |
| 129:1459 | CFR | lo | 376441/1000000 | 376441/1000000 | 4471 | 129:1358, 129:148, 129:218 |
| 129:1460 | CHR | lo | 214211/500000 | 214211/500000 | 4476 | 129:1358, 129:1428, 129:228 |
| 129:1461 | EFQ | lo | 372151/1000000 | 372151/1000000 | 4489 | 129:1398, 129:178, 129:216 |
| 129:1462 | EFR | lo | 76161/200000 | 76161/200000 | 4490 | 129:1362, 129:178, 129:218 |
| 129:1464 | HPR | lo | 164869/500000 | 164869/500000 | 4510 | 129:228, 129:1430, 129:962 |
| 129:1465 | ABE | lo | 48097/500000 | 3149798400/32744139581 | 58 | 129:0, 129:38, 129:1432, 129:16, 129:27 |
| 129:1468 | ABS | lo | 68609/500000 | 61287739527/446645000000 | 213 | 129:1465, 129:70, 129:1432, 129:1443, 129:39 |
| 129:1470 | ACP | lo | 5393/50000 | 48175209/446645000 | 365 | 129:16, 129:1423, 129:26, 129:34, 129:39 |
| 129:1471 | CFH | lo | 49421/500000 | 2232345000/22584850573 | 402 | 129:1433, 129:204, 129:42, 129:1459, 129:49 |
| 129:1473 | EFH | lo | 51577/500000 | 2329734000/22584850573 | 499 | 129:1438, 129:204, 129:42, 129:1462, 129:49 |
| 129:1474 | AFS | lo | 108473/1000000 | 955167967/8805562500 | 506 | 129:1443, 129:1304, 129:1426, 129:178, 129:1396 |
| 129:1475 | AFP | lo | 166823/1000000 | 2328462657/13957656250 | 512 | 129:1438, 129:1423, 129:34, 129:1384, 129:39 |
| 129:1476 | AHP | lo | 73947/500000 | 8450594433/57139250000 | 545 | 129:34, 129:1464, 129:1423, 129:1382, 129:1441 |
| 129:1479 | BHP | lo | 112707/1000000 | 26273702961/233114000000 | 783 | 129:950, 129:1464, 129:1364, 129:150, 129:1407 |
| 129:1480 | BFS | lo | 103611/1000000 | 912361669/8805562500 | 841 | 129:1453, 129:1304, 129:1427, 129:178, 129:1396 |
| 129:1481 | EHS | lo | 93197/1000000 | 912361669/9789562500 | 841 | 129:1453, 129:1304, 129:1427, 129:178, 129:273 |
| 129:1485 | CEF | lo | 109809/1000000 | 47254137/430328000 | 1006 | 129:132, 129:1461, 129:134, 129:1401, 129:1410 |
| 129:1486 | CEH | lo | 1631/15625 | 6952401/66604000 | 1040 | 129:132, 129:1460, 129:249, 129:150, 129:1407 |
| 129:1487 | EHP | lo | 107641/1000000 | 50185311/466228000 | 1043 | 129:132, 129:1464, 129:150, 129:1403, 129:1407 |
| 129:1489 | AFR | lo | 35489/250000 | 151272889091/1065625000000 | 2151 | 129:1455, 129:13 |
| 129:1501 | EHS | hi | 84533/200000 | 574075228793700091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:1468, 129:1439, 129:1451, 129:185 |
| 129:1503 | EQS | lo | 23269/125000 | 674233353/3621946000 | 2666 | 129:13, 129:126, 129:70, 129:1468, 129:1440, 129:1234, 129:194 |
| 129:1506 | EFP | lo | 135961/1000000 | 973811867636083/7162399789500000 | 2752 | 129:21, 129:150, 129:1476, 129:1470, 129:1438, 129:1485, 129:1473 |
| 129:1507 | EPS | lo | 121677/1000000 | 1743010491364063/14324799579000000 | 2757 | 129:21, 129:150, 129:1476, 129:1470, 129:1443, 129:1431, 129:1481 |
| 129:1508 | FPS | lo | 95041/1000000 | 82127269193/864124000000 | 3028 | 129:33, 129:1487, 129:1476, 129:34, 129:1474, 129:178, 129:1304 |
| 129:1511 | CPQ | hi | 228659/500000 | 40851756289496073/89329000000000000 | 3103 | 129:39, 129:1403, 129:1423, 129:34, 129:25, 129:134, 129:165 |
| 129:1512 | CPR | hi | 233113/500000 | 20823731463043851/44664500000000000 | 3104 | 129:39, 129:1403, 129:1423, 129:34, 129:27, 129:249 |
| 129:1515 | EPQ | hi | 430327/1000000 | 15376239658571/35731600000000 | 3109 | 129:39, 129:1403, 129:1423, 129:34, 129:37, 129:195 |
| 129:1518 | FHS | lo | 94057/1000000 | 21005073/223322500 | 3157 | 129:39, 129:1362, 129:70, 129:1443, 129:42, 129:1473, 129:204 |
| 129:1521 | APQ | hi | 114551/250000 | 6082886179/13275500000 | 3177 | 129:1163, 129:1507, 129:1424, 129:34, 129:37, 129:68 |
| 129:1525 | BPR | hi | 425247/1000000 | 3951753834006953/9292850000000000 | 3186 | 129:1163, 129:1507, 129:1424, 129:34, 129:1432, 129:95, 129:126 |
| 129:1526 | PQR | lo | 13359/100000 | 993147/7434280 | 3212 | 129:1163, 129:1507, 129:1424, 129:34, 129:66, 129:194, 129:236 |
| 129:1528 | APR | lo | 171589/500000 | 122121588766947/355854904093000 | 3663 | 129:93, 129:1202, 129:116, 129:90, 129:1432, 129:38, 129:66 |
| 129:1529 | APS | lo | 136887/1000000 | 48711963255649/355854904093000 | 3664 | 129:93, 129:1202, 129:116, 129:90, 129:1468, 129:1443, 129:68 |
| 129:1532 | CHS | lo | 144983/1000000 | 4896456870609733/33772481036500000 | 4111 | 129:177, 129:218, 129:1362, 129:178, 129:1486, 129:1471, 129:1460 |
| 129:1533 | HPS | lo | 130437/1000000 | 88103915248737/675449620730000 | 4127 | 129:177, 129:218, 129:1362, 129:178, 129:1487, 129:1411, 129:1464 |
| 129:1534 | ABR | lo | 161609/500000 | 161609/500000 | 4336 | 129:70, 129:1468, 129:126 |
| 129:1535 | ACF | lo | 367683/1000000 | 367683/1000000 | 4344 | 129:1475, 129:1470, 129:142 |
| 129:1540 | AEF | lo | 49473/125000 | 49473/125000 | 4359 | 129:1475, 129:34, 129:1506 |
| 129:1543 | EPR | hi | 57139/125000 | 57139/125000 | 4368 | 129:34, 129:1528, 129:39 |
| 129:1545 | AES | lo | 87891/250000 | 87891/250000 | 4369 | 129:34, 129:1529, 129:1507 |
| 129:1552 | BEH | lo | 78337/250000 | 78337/250000 | 4418 | 129:1479, 129:90, 129:1487 |
| 129:1553 | BES | lo | 309503/1000000 | 309503/1000000 | 4424 | 129:90, 129:1201, 129:1507 |
| 129:1555 | BFR | lo | 289611/1000000 | 289611/1000000 | 4437 | 129:126, 129:1480, 129:218 |
| 129:1558 | CHR | lo | 53553/125000 | 53553/125000 | 4476 | 129:1358, 129:1532, 129:228 |
| 129:1559 | EFQ | lo | 46519/125000 | 46519/125000 | 4489 | 129:1503, 129:178, 129:216 |
| 129:1561 | FPQ | lo | 313753/1000000 | 313753/1000000 | 4506 | 129:216, 129:1508, 129:1318 |
| 129:1563 | HPR | lo | 329739/1000000 | 329739/1000000 | 4510 | 129:228, 129:1533, 129:962 |
| 129:1565 | ABS | lo | 6861/50000 | 15322231869/111661250000 | 213 | 129:1465, 129:70, 129:1534, 129:1545, 129:39 |
| 129:1566 | APQ | lo | 104267/1000000 | 1847476/17718625 | 297 | 129:8, 129:1526, 129:1528, 129:116, 129:1525 |
| 129:1567 | BPR | lo | 96767/1000000 | 1385607/14318875 | 297 | 129:8, 129:1526, 129:1528, 129:116, 129:1521 |
| 129:1568 | CFH | lo | 98843/1000000 | 2232372000/22584850573 | 402 | 129:1535, 129:204, 129:42, 129:1459, 129:49 |
| 129:1570 | EFH | lo | 25789/250000 | 2329767000/22584850573 | 499 | 129:1540, 129:204, 129:42, 129:1462, 129:49 |
| 129:1572 | AFP | lo | 41707/250000 | 9314141847/55830625000 | 512 | 129:1540, 129:1528, 129:34, 129:1489, 129:39 |
| 129:1573 | AHP | lo | 147897/1000000 | 33802875049/228556000000 | 545 | 129:34, 129:1563, 129:1528, 129:1487, 129:1543 |
| 129:1575 | BFP | lo | 109521/1000000 | 50086044957/457318000000 | 748 | 129:950, 129:1561, 129:116, 129:142, 129:1511 |
| 129:1576 | BHP | lo | 28177/250000 | 52547630991/466226000000 | 783 | 129:950, 129:1563, 129:1567, 129:150, 129:1512 |
| 129:1577 | BFS | lo | 103613/1000000 | 43793763671/422665000000 | 841 | 129:1553, 129:1518, 129:1427, 129:178, 129:1501 |
| 129:1578 | EHS | lo | 46599/500000 | 43793763671/469899000000 | 841 | 129:1553, 129:1518, 129:1427, 129:178, 129:273 |
| 129:1581 | CEF | lo | 10981/100000 | 47254509/430327000 | 1006 | 129:132, 129:1559, 129:134, 129:1506, 129:1515 |
| 129:1582 | AFR | lo | 141957/1000000 | 1512734114241/10656250000000 | 2151 | 129:1555, 129:13 |
| 129:1596 | EFP | lo | 33991/250000 | 486916050667831/3581199894750000 | 2752 | 129:21, 129:150, 129:1573, 129:1470, 129:1540, 129:1581, 129:1570 |
| 129:1597 | EPS | lo | 60839/500000 | 290504267285607/2387466596500000 | 2757 | 129:21, 129:150, 129:1573, 129:1470, 129:1545, 129:1431, 129:1578 |
| 129:1599 | CPQ | hi | 114329/250000 | 5106445368231573/11166125000000000 | 3103 | 129:39, 129:1403, 129:1528, 129:34, 129:25, 129:134, 129:165 |
| 129:1600 | CPR | hi | 29139/62500 | 5205905935731277/11166125000000000 | 3104 | 129:39, 129:1403, 129:1528, 129:34, 129:27, 129:249 |
| 129:1603 | EPQ | hi | 17213/40000 | 15376178034811/35731600000000 | 3109 | 129:39, 129:1403, 129:1528, 129:34, 129:37, 129:195 |
| 129:1604 | FHP | lo | 96901/1000000 | 10820160721/111661250000 | 3112 | 129:39, 129:1403, 129:1528, 129:34, 129:42, 129:1570, 129:204 |
| 129:1609 | APQ | hi | 458203/1000000 | 255480449221/557571000000 | 3177 | 129:1163, 129:1597, 129:1529, 129:34, 129:37, 129:68 |
| 129:1615 | EPQ | lo | 10161/62500 | 1475891453/9078156250 | 3372 | 129:75, 129:142, 129:1575, 129:950, 129:1234, 129:134, 129:1559 |
| 129:1616 | APR | lo | 343179/1000000 | 9393995078919/27373454161000 | 3663 | 129:93, 129:1615, 129:116, 129:90, 129:1534, 129:38, 129:66 |
| 129:1617 | APS | lo | 17111/125000 | 48712287440649/355854904093000 | 3664 | 129:93, 129:1615, 129:116, 129:90, 129:1565, 129:1545, 129:68 |
| 129:1619 | PQS | lo | 125713/1000000 | 9505642167/75613700000 | 3870 | 129:105, 129:218, 129:126, 129:1577, 129:116, 129:1561, 129:1526 |
| 129:1621 | BHS | lo | 157881/1000000 | 10664101872789/67544962073000 | 4104 | 129:177, 129:218, 129:1362, 129:178, 129:1552, 129:98, 129:1456 |
| 129:1622 | CHS | lo | 18123/125000 | 9792981286181539/67544962073000000 | 4111 | 129:177, 129:218, 129:1362, 129:178, 129:1486, 129:1568, 129:1558 |
| 129:1623 | HPS | lo | 65219/500000 | 8810449769835773/67544962073000000 | 4127 | 129:177, 129:218, 129:1362, 129:178, 129:1487, 129:1604, 129:1563 |
| 129:1624 | ABR | lo | 16161/50000 | 16161/50000 | 4336 | 129:70, 129:1565, 129:126 |
| 129:1625 | ACF | lo | 45961/125000 | 45961/125000 | 4344 | 129:1572, 129:1470, 129:142 |
| 129:1630 | AEF | lo | 24737/62500 | 24737/62500 | 4359 | 129:1572, 129:34, 129:1596 |
| 129:1631 | AEH | lo | 174269/500000 | 174269/500000 | 4363 | 129:1573, 129:34, 129:1487 |
| 129:1632 | AEQ | lo | 359843/1000000 | 359843/1000000 | 4367 | 129:34, 129:1566, 129:1615 |
| 129:1633 | EPR | hi | 457111/1000000 | 457111/1000000 | 4368 | 129:34, 129:1616, 129:39 |
| 129:1635 | AES | lo | 175783/500000 | 175783/500000 | 4369 | 129:34, 129:1617, 129:1597 |
| 129:1642 | BEH | lo | 313349/1000000 | 313349/1000000 | 4418 | 129:1576, 129:90, 129:1487 |
| 129:1643 | BEQ | lo | 10893/31250 | 10893/31250 | 4422 | 129:90, 129:116, 129:1615 |
| 129:1647 | BFR | lo | 289613/1000000 | 289613/1000000 | 4437 | 129:126, 129:1577, 129:218 |
| 129:1648 | BHR | lo | 343881/1000000 | 343881/1000000 | 4442 | 129:126, 129:1621, 129:228 |
| 129:1651 | CHR | lo | 17137/40000 | 17137/40000 | 4476 | 129:1358, 129:1622, 129:228 |
| 129:1653 | FPQ | lo | 156877/500000 | 156877/500000 | 4506 | 129:216, 129:1508, 129:1619 |
| 129:1654 | HPR | lo | 16487/50000 | 16487/50000 | 4510 | 129:228, 129:1623, 129:962 |
| 129:1657 | ABS | lo | 68611/500000 | 3064480113/22332250000 | 213 | 129:1465, 129:70, 129:1624, 129:1635, 129:39 |
| 129:1659 | BPR | lo | 1512/15625 | 44339517/458203000 | 297 | 129:8, 129:1526, 129:1616, 129:116, 129:1609 |
| 129:1660 | CFH | lo | 24711/250000 | 2232387000/22584850573 | 402 | 129:1625, 129:204, 129:42, 129:1459, 129:49 |
| 129:1661 | AHR | lo | 797/6250 | 56956229433/446645000000 | 497 | 129:1631, 129:1582, 129:38, 129:42, 129:31 |
| 129:1662 | EFH | lo | 103157/1000000 | 2329791000/22584850573 | 499 | 129:1630, 129:204, 129:42, 129:1462, 129:49 |
| 129:1664 | AFP | lo | 10427/62500 | 18628687971/111661250000 | 512 | 129:1630, 129:1616, 129:34, 129:1582, 129:39 |
| 129:1665 | AHP | lo | 73949/500000 | 67605950739/457111000000 | 545 | 129:34, 129:1654, 129:1616, 129:1487, 129:1633 |
| 129:1666 | AHQ | lo | 160227/1000000 | 1789116017/11166125000 | 552 | 129:1631, 129:66, 129:1632, 129:1661, 129:39 |
| 129:1667 | BFP | lo | 54761/500000 | 25043088513/228658000000 | 748 | 129:950, 129:1653, 129:116, 129:142, 129:1599 |
| 129:1668 | BHP | lo | 112709/1000000 | 875797601/7770400000 | 783 | 129:950, 129:1654, 129:1659, 129:150, 129:1600 |
| 129:1672 | CEF | lo | 109811/1000000 | 1687671/15368750 | 1006 | 129:132, 129:1559, 129:134, 129:1596, 129:1603 |
| 129:1673 | CEH | lo | 20877/200000 | 8111181/77704000 | 1040 | 129:132, 129:1651, 129:249, 129:150, 129:1600 |
| 129:1674 | EHP | lo | 53821/500000 | 16728499/155408000 | 1043 | 129:132, 129:1654, 129:150, 129:1403, 129:1600 |
| 129:1676 | AFR | lo | 70979/500000 | 1512744560903/10656250000000 | 2151 | 129:1647, 129:13 |
| 129:1685 | EHS | hi | 211331/500000 | 574072080356200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:1657, 129:1631, 129:1642, 129:185 |
| 129:1686 | EQS | lo | 186153/1000000 | 4045419493/21731676000 | 2666 | 129:13, 129:126, 129:70, 129:1657, 129:1632, 129:1643, 129:194 |
| 129:1689 | EFP | lo | 67983/500000 | 1947689488370903/14324799579000000 | 2752 | 129:21, 129:150, 129:1665, 129:1470, 129:1630, 129:1672, 129:1662 |
| 129:1690 | EPS | lo | 121679/1000000 | 2614543131795463/21487199368500000 | 2757 | 129:21, 129:150, 129:1665, 129:1470, 129:1635, 129:1431, 129:1578 |
| 129:1694 | CPR | hi | 233111/500000 | 41647139765731473/89329000000000000 | 3104 | 129:39, 129:1403, 129:1616, 129:34, 129:27, 129:249 |
| 129:1697 | EPQ | hi | 107581/250000 | 15376147222931/35731600000000 | 3109 | 129:39, 129:1403, 129:1616, 129:34, 129:37, 129:195 |
| 129:1698 | FHP | lo | 48451/500000 | 86561639103/893290000000 | 3112 | 129:39, 129:1403, 129:1616, 129:34, 129:42, 129:1662, 129:204 |
| 129:1711 | AHS | lo | 859/6250 | 92833954088649/675449560093000 | 4053 | 129:175, 129:216, 129:1686, 129:178, 129:1631, 129:42, 129:1666 |
| 129:1712 | CHS | lo | 28997/200000 | 2448262207785903/16886240518250000 | 4111 | 129:177, 129:218, 129:1362, 129:178, 129:1673, 129:1660, 129:1651 |
| 129:1713 | HPS | lo | 130439/1000000 | 4405258657398923/33772481036500000 | 4127 | 129:177, 129:218, 129:1362, 129:178, 129:1674, 129:1698, 129:1654 |
| 129:1714 | ABR | lo | 161611/500000 | 161611/500000 | 4336 | 129:70, 129:1657, 129:126 |
| 129:1718 | AEF | lo | 197899/500000 | 197899/500000 | 4359 | 129:1664, 129:34, 129:1689 |
| 129:1721 | AES | lo | 351567/1000000 | 351567/1000000 | 4369 | 129:34, 129:1617, 129:1690 |
| 129:1727 | BCR | lo | 187591/500000 | 187591/500000 | 4408 | 129:950, 129:1659, 129:1366 |
| 129:1729 | BEH | lo | 313351/1000000 | 313351/1000000 | 4418 | 129:1668, 129:90, 129:1674 |
| 129:1730 | BER | lo | 399657/1000000 | 399657/1000000 | 4423 | 129:90, 129:1659, 129:1403 |
| 129:1731 | BES | lo | 61901/200000 | 61901/200000 | 4424 | 129:90, 129:1201, 129:1690 |
| 129:1735 | CHR | lo | 214213/500000 | 214213/500000 | 4476 | 129:1358, 129:1712, 129:228 |
| 129:1736 | EFQ | lo | 372153/1000000 | 372153/1000000 | 4489 | 129:1686, 129:178, 129:216 |
| 129:1737 | HPR | lo | 329741/1000000 | 329741/1000000 | 4510 | 129:228, 129:1713, 129:962 |
| 129:1738 | ABE | lo | 19239/200000 | 3149823200/32744139581 | 58 | 129:0, 129:38, 129:1714, 129:16, 129:27 |
| 129:1739 | CRS | lo | 95221/500000 | 1034656/5432919 | 141 | 129:26, 129:126, 129:70, 129:1727, 129:13 |
| 129:1741 | ABS | lo | 137223/1000000 | 61290161937/446645000000 | 213 | 129:1738, 129:70, 129:1714, 129:1721, 129:39 |
| 129:1742 | ERS | lo | 97403/500000 | 11289239/57951136 | 216 | 129:38, 129:126, 129:70, 129:1730, 129:13 |
| 129:1743 | EFH | lo | 51579/500000 | 2329809000/22584850573 | 499 | 129:1718, 129:204, 129:42, 129:1462, 129:49 |
| 129:1745 | AFP | lo | 83417/500000 | 74515827921/446645000000 | 512 | 129:1718, 129:1616, 129:34, 129:1676, 129:39 |
| 129:1746 | AHP | lo | 147899/1000000 | 33803193459/228555500000 | 545 | 129:34, 129:1737, 129:1616, 129:1674, 129:1633 |
| 129:1747 | BHP | lo | 11271/100000 | 52547988129/466222000000 | 783 | 129:950, 129:1737, 129:1659, 129:150, 129:1694 |
| 129:1751 | CEF | lo | 27453/250000 | 47255067/430324000 | 1006 | 129:132, 129:1736, 129:134, 129:1689, 129:1697 |
| 129:1752 | CEH | lo | 52193/500000 | 48667179/466222000 | 1040 | 129:132, 129:1735, 129:249, 129:150, 129:1694 |
| 129:1753 | EHP | lo | 107643/1000000 | 5018559/46622200 | 1043 | 129:132, 129:1737, 129:150, 129:1403, 129:1694 |
| 129:1763 | EFP | lo | 135967/1000000 | 42341558131967/311408686500000 | 2752 | 129:21, 129:150, 129:1746, 129:1470, 129:1718, 129:1751, 129:1743 |
| 129:1768 | APS | lo | 136889/1000000 | 48712670804649/355854904093000 | 3664 | 129:93, 129:1615, 129:116, 129:90, 129:1741, 129:1721, 129:68 |
| 129:1769 | PRS | lo | 106303/1000000 | 37828485080649/355854904093000 | 3699 | 129:93, 129:1615, 129:116, 129:90, 129:126, 129:1742, 129:236 |
| 129:1770 | BHS | lo | 78941/500000 | 10664139072789/67544962073000 | 4104 | 129:177, 129:218, 129:1742, 129:178, 129:1729, 129:98, 129:1648 |
| 129:1772 | CES | lo | 12031/125000 | 58242754770113/605131148141000 | 4239 | 129:211, 129:1769, 129:218, 129:1508, 129:1751, 129:132, 129:249 |
| 129:1773 | ABR | lo | 323223/1000000 | 323223/1000000 | 4336 | 129:70, 129:1741, 129:126 |
| 129:1774 | ACF | lo | 183847/500000 | 183847/500000 | 4344 | 129:1745, 129:1470, 129:142 |
| 129:1778 | AEF | lo | 395801/1000000 | 395801/1000000 | 4359 | 129:1745, 129:34, 129:1763 |
| 129:1779 | AEH | lo | 174271/500000 | 174271/500000 | 4363 | 129:1746, 129:34, 129:1753 |
| 129:1781 | AES | lo | 21973/62500 | 21973/62500 | 4369 | 129:34, 129:1768, 129:1690 |
| 129:1786 | BEH | lo | 313353/1000000 | 313353/1000000 | 4418 | 129:1747, 129:90, 129:1753 |
| 129:1788 | BHR | lo | 171941/500000 | 171941/500000 | 4442 | 129:126, 129:1770, 129:228 |
| 129:1790 | CFR | lo | 188221/500000 | 188221/500000 | 4471 | 129:1739, 129:148, 129:218 |
| 129:1791 | CHR | lo | 428427/1000000 | 428427/1000000 | 4476 | 129:1739, 129:1712, 129:228 |
| 129:1792 | EFR | lo | 190403/500000 | 190403/500000 | 4490 | 129:1742, 129:178, 129:218 |
| 129:1795 | HPR | lo | 164871/500000 | 164871/500000 | 4510 | 129:228, 129:1713, 129:1769 |
| 129:1797 | ABS | lo | 17153/125000 | 15322624833/111661250000 | 213 | 129:1738, 129:70, 129:1773, 129:1781, 129:39 |
| 129:1799 | CFH | lo | 19769/200000 | 2232408000/22584850573 | 402 | 129:1774, 129:204, 129:42, 129:1790, 129:49 |
| 129:1801 | AFP | lo | 33367/200000 | 149032685379/893290000000 | 512 | 129:1778, 129:1616, 129:34, 129:1676, 129:39 |
| 129:1802 | AHP | lo | 1479/10000 | 67606823097/457111000000 | 545 | 129:34, 129:1795, 129:1616, 129:1753, 129:1633 |
| 129:1804 | BFS | lo | 20723/200000 | 8758827557/84532400000 | 841 | 129:1731, 129:1518, 129:1770, 129:178, 129:1685 |
| 129:1805 | EHS | lo | 93199/1000000 | 8758827557/93979800000 | 841 | 129:1731, 129:1518, 129:1770, 129:178, 129:273 |
| 129:1811 | EHS | hi | 422661/1000000 | 574070142856200091/1358229750000000000 | 2664 | 129:13, 129:126, 129:70, 129:1797, 129:1779, 129:1786, 129:185 |
| 129:1812 | EFP | lo | 4249/31250 | 973858217485241/7162399789500000 | 2752 | 129:21, 129:150, 129:1802, 129:1470, 129:1778, 129:1751, 129:1743 |
| 129:1813 | EPS | lo | 1521/12500 | 1743044730963221/14324799579000000 | 2757 | 129:21, 129:150, 129:1802, 129:1470, 129:1781, 129:1772, 129:1805 |
| 129:1818 | APQ | hi | 2291/5000 | 85159636209/185857000000 | 3177 | 129:1163, 129:1813, 129:1768, 129:34, 129:37, 129:68 |
| 129:1822 | BPR | hi | 425239/1000000 | 7903355702652309/18585700000000000 | 3186 | 129:1163, 129:1813, 129:1768, 129:34, 129:1773, 129:95, 129:126 |
| 129:1823 | PQR | lo | 133591/1000000 | 24828861/185857000 | 3212 | 129:1163, 129:1813, 129:1768, 129:34, 129:66, 129:194, 129:236 |
| 129:1825 | APR | lo | 17159/50000 | 122122342465947/355854904093000 | 3663 | 129:93, 129:1615, 129:116, 129:90, 129:1773, 129:38, 129:66 |
| 129:1827 | CHS | lo | 72493/500000 | 1958625135221137/13508992414600000 | 4111 | 129:177, 129:218, 129:1742, 129:178, 129:1752, 129:1799, 129:1791 |
| 129:1828 | ABR | lo | 40403/125000 | 40403/125000 | 4336 | 129:70, 129:1797, 129:126 |
| 129:1832 | AEF | lo | 395803/1000000 | 395803/1000000 | 4359 | 129:1801, 129:34, 129:1812 |
| 129:1833 | AEH | lo | 348543/1000000 | 348543/1000000 | 4363 | 129:1802, 129:34, 129:1753 |
| 129:1836 | AES | lo | 351569/1000000 | 351569/1000000 | 4369 | 129:34, 129:1768, 129:1813 |
| 129:1841 | BFR | lo | 57923/200000 | 57923/200000 | 4437 | 129:126, 129:1804, 129:218 |
| 129:1842 | CHR | lo | 107107/250000 | 107107/250000 | 4476 | 129:1739, 129:1827, 129:228 |
| 129:1846 | APQ | lo | 10427/100000 | 44339703/425239000 | 297 | 129:8, 129:1823, 129:1825, 129:116, 129:1822 |
| 129:1847 | BPR | lo | 96769/1000000 | 44339703/458200000 | 297 | 129:8, 129:1823, 129:1825, 129:116, 129:1818 |
| 129:1848 | AFS | lo | 54239/500000 | 45849445433/422661000000 | 506 | 129:1836, 129:1518, 129:1711, 129:178, 129:1811 |
| 129:1854 | CEF | lo | 109813/1000000 | 47255253/430324000 | 1006 | 129:132, 129:1736, 129:134, 129:1812, 129:1697 |
| 129:1855 | AFR | lo | 141959/1000000 | 302551001513/2131250000000 | 2151 | 129:1841, 129:13 |
| 129:1859 | AFP | lo | 166837/1000000 | 7451693027/44664500000 | 3085 | 129:39, 129:1403, 129:1825, 129:34, 129:1832, 129:1855 |
| 129:1862 | CPR | hi | 466221/1000000 | 4164703204561273/8932900000000000 | 3104 | 129:39, 129:1403, 129:1825, 129:34, 129:27, 129:249 |
| 129:1871 | AEF | lo | 79161/200000 | 79161/200000 | 4359 | 129:1859, 129:34, 129:1812 |
| 129:1872 | AEQ | lo | 179923/500000 | 179923/500000 | 4367 | 129:34, 129:1846, 129:1615 |
| 129:1874 | BCR | lo | 375183/1000000 | 375183/1000000 | 4408 | 129:950, 129:1847, 129:1366 |
| 129:1875 | BER | lo | 199829/500000 | 199829/500000 | 4423 | 129:90, 129:1847, 129:1403 |
| 129:1878 | EFH | lo | 103159/1000000 | 2329833000/22584850573 | 499 | 129:1871, 129:204, 129:42, 129:1792, 129:49 |
| 129:1880 | EFP | lo | 135969/1000000 | 1947735409770061/14324799579000000 | 2752 | 129:21, 129:150, 129:1802, 129:1470, 129:1871, 129:1854, 129:1878 |
| 129:1881 | AEF | lo | 197903/500000 | 197903/500000 | 4359 | 129:1859, 129:34, 129:1880 |
| 129:1883 | AFP | lo | 83419/500000 | 931468063/5583062500 | 512 | 129:1881, 129:1825, 129:34, 129:1855, 129:39 |
| 129:1886 | ACF | lo | 183849/500000 | 183849/500000 | 4344 | 129:1883, 129:1470, 129:142 |
| 129:1887 | AEF | lo | 395807/1000000 | 395807/1000000 | 4359 | 129:1883, 129:34, 129:1880 |
