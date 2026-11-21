# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 155

| Property | Value |
| --- | --- |
| Scope | root/AEP-/BEP+ |
| Packet | forest:root/AEP-/BEP+ |
| Index | 0 |
| Context | 80 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 154 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 43481/250000 | 391/1000 |
| b | 103767/1000000 | 9681/20000 | 5629/50000 | 9681/20000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 391/1000 | 279/1000 | 391/1000 |
| f | 279/1000 | 9681/20000 | 279/1000 | 9681/20000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 41461/250000 | 762149/1000000 | 94699/500000 | 727101/1000000 |
| q | 22907/200000 | 149/500 | 413/3125 | 149/500 |
| u | 333/800 | 412111/500000 | 333/800 | 412111/500000 |
| v | 41823/100000 | 831751/1000000 | 41823/100000 | 831751/1000000 |
| r | 144059/250000 | 1/1 | 144059/250000 | 1/1 |
| w | 447249/1000000 | 831751/1000000 | 447249/1000000 | 831751/1000000 |
| j | 447249/1000000 | 831751/1000000 | 447249/1000000 | 831751/1000000 |
| k | 311757/500000 | 1/1 | 311757/500000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 3 | A_ABE | bitt ["actual-area","ABE",["P"]] | `1/1 * b * e + -1/1 * a * b + 1/1 * a + -279/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 57 | A_BEP | bitt ["actual-area","BEP",[]] | `1/1 * q + -1/1 * b * q + -1/1 * e * p + 1/1 * b * e + -93/1000` |
| 151 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 3 | a | 103767/1000000 | 391/1000 | 1794729/10319000 | 391/1000 | 43481/250000 | 391/1000 | `(896233/1000000, -250049007/1000000000); (10319/20000, -2879001/20000000); (896233/1000000, -238427103/1000000000); (10319/20000, -1794729/20000000)` |
| 1 | 7 | b | 103767/1000000 | 9681/20000 | 23250/206519 | 9681/20000 | 5629/50000 | 9681/20000 | `(4601/12500, -93/1000); (37751/250000, -93/1000); (206519/250000, -93/1000); (609/1000, -93/1000)` |
| 2 | 10 | p | 41461/250000 | 762149/1000000 | 164705061/869620000 | 762149/1000000 | 94699/500000 | 762149/1000000 | `(43481/250000, -4984300681/50000000000); (391/1000, -1241244297/10000000000); (43481/250000, -2434944909/20000000000); (391/1000, -907291533/4000000000); (43481/250000, -987894049/12500000000); (391/1000, -5173497/50000000); (43481/250000, -164705061/5000000000); (391/1000, -2760333/20000000)` |
| 3 | 57 | p | 94699/500000 | 762149/1000000 | 94699/500000 | 10143049/13950000 | 94699/500000 | 727101/1000000 | `(-279/1000, 400504697/10000000000); (-279/1000, 404577133/4000000000); (-391/1000, 526594297/10000000000); (-391/1000, 621431533/4000000000); (-279/1000, 10143049/50000000); (-279/1000, 3916061/20000000); (-391/1000, 10773497/50000000); (-391/1000, 5000333/20000000)` |
| 4 | 151 | q | 22907/200000 | 149/500 | 27293733/206519000 | 149/500 | 413/3125 | 149/500 | `(623440101/3125000000, -8322663/125000000); (5115298251/62500000000, -21692343/250000000); (4601/12500, -8322663/125000000); (37751/250000, -21692343/250000000); (27983531019/62500000000, -27293733/250000000); (82520109/250000000, -129363/1000000); (206519/250000, -27293733/250000000); (609/1000, -129363/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 155:0 | ABC | lo | 93/1000 | occupants none |
| 155:2 | ABE | lo | 279/1000 | occupants P |
| 155:3 | ABE | hi | 391/1000 | vertex maximum 391/1000 |
| 155:4 | ABF | lo | 93/1000 | occupants none |
| 155:8 | ABP | lo | 93/1000 | occupants none |
| 155:16 | ACE | lo | 279/1000 | occupants P |
| 155:17 | ACE | hi | 391/1000 | vertex maximum 391/1000 |
| 155:19 | ACF | hi | 4551319561/5000000000 | vertex maximum 4551319561/5000000000 |
| 155:20 | ACH | lo | 285877/1000000 | earlier 154:20; ACH; lo; 285877/1000000 |
| 155:21 | ACH | hi | 206519/250000 | vertex maximum 206519/250000 |
| 155:22 | ACP | lo | 93/1000 | occupants none |
| 155:30 | AEF | lo | 353/1000 | earlier 154:30; AEF; lo; 353/1000 |
| 155:31 | AEF | hi | 199189949/250000000 | vertex maximum 199189949/250000000 |
| 155:34 | AEP | lo | 93/1000 | occupants none |
| 155:38 | AER | lo | 104801/1000000 | earlier 154:38; AER; lo; 104801/1000000 |
| 155:42 | AFH | lo | 93/1000 | occupants none |
| 155:48 | AFR | lo | 26019/250000 | earlier 154:48; AFR; lo; 26019/250000 |
| 155:51 | AFS | hi | 140413482269/250000000000 | vertex maximum 140413482269/250000000000 |
| 155:58 | AHS | lo | 93/1000 | occupants none |
| 155:68 | BCE | lo | 93/1000 | occupants none |
| 155:76 | BCQ | lo | 134591/1000000 | earlier 154:76; BCQ; lo; 134591/1000000 |
| 155:86 | BEP | lo | 93/1000 | occupants none |
| 155:102 | BHP | lo | 93/1000 | occupants none |
| 155:112 | CEF | lo | 279/1000 | occupants Q |
| 155:113 | CEF | hi | 140207641/250000000 | vertex maximum 140207641/250000000 |
| 155:116 | CEP | lo | 93/1000 | occupants none |
| 155:117 | CEP | hi | 41/200 | earlier 154:115; CEP; hi; 41/200 |
| 155:118 | CEQ | lo | 93/1000 | occupants none |
| 155:120 | CER | lo | 93/1000 | occupants none |
| 155:122 | CES | lo | 128249/1000000 | earlier 154:120; CES; lo; 128249/1000000 |
| 155:126 | CFP | lo | 93/1000 | occupants none |
| 155:128 | CFQ | lo | 93/1000 | occupants none |
| 155:133 | CFS | hi | 552751/1000000 | vertex maximum 552751/1000000 |
| 155:134 | CHP | lo | 93/1000 | occupants none |
| 155:142 | CPQ | lo | 93/1000 | occupants none |
| 155:146 | CPS | lo | 93/1000 | occupants none |
| 155:150 | EFH | lo | 279/1000 | occupants Q |
| 155:151 | EFH | hi | 2926515431/5000000000 | vertex maximum 2926515431/5000000000 |
| 155:154 | EFQ | lo | 93/1000 | occupants none |
| 155:160 | EHP | lo | 94573/1000000 | earlier 154:158; EHP; lo; 94573/1000000 |
| 155:162 | EHQ | lo | 93/1000 | occupants none |
| 155:166 | EHS | lo | 181309/1000000 | earlier 154:164; EHS; lo; 181309/1000000 |
| 155:168 | EPQ | lo | 93/1000 | occupants none |
| 155:174 | EQR | lo | 93/1000 | occupants none |
| 155:182 | FHQ | lo | 93/1000 | occupants none |
| 155:187 | FHS | hi | 89549335249/250000000000 | vertex maximum 89549335249/250000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 10 | fan | BEH = BEP + EHP + BHP | point P |
| 17 | plu | ACE * BEF = ABE * CEF + AEF * BCE | circuit EABCF |
| 41 | plu | ACE * BCS = ABC * CES + ACS * BCE | circuit CABES |
| 42 | plu | ACE * BES = ABE * CES + AES * BCE | circuit EABCS |
| 121 | plu | ABE * EHP = AEH * BEP + AEP * BEH | circuit EABHP |
| 191 | plu | ACF * AEH = ACE * AFH + ACH * AEF | circuit ACEFH |
| 193 | plu | AEF * CEH = ACE * EFH + AEH * CEF | circuit EACFH |
| 194 | plu | AEF * CFH = ACF * EFH + AFH * CEF | circuit FACEH |
| 200 | plu | AFP * CEP = ACP * EFP + AEP * CFP | circuit PACEF |
| 204 | plu | AFQ * CEF = ACF * EFQ + AEF * CFQ | circuit FACEQ |
| 216 | plu | ACE * AHP = ACH * AEP + ACP * AEH | circuit ACEHP |
| 249 | plu | APS * CEP = ACP * EPS + AEP * CPS | circuit PACES |
| 1353 | support | AEF * AFS >= 1023/1000 * (AEF - AES) | pentagon AERSF |
| 1512 | support | CFH * FHS >= 1023/1000 * (CFH - CHS) | pentagon HCESF |
| 1602 | support | EFP * FPS >= 1023/1000 * (EFP - EPS) | pentagon PERSF |
| 1639 | bary | outer ABE; fans BEP, AEP, ABP; target EHP; sign 1; vertices AEH 1; BEH 1; none 0 | container ABE; inner P; line EH |
| 1673 | bary | outer ACE; fans CEP, AEP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; none 0 | container ACE; inner P; line EF |
| 1687 | bary | outer ACE; fans CEP, AEP, ACP; target HPS; sign -1; vertices AHS -1; CHS -1; EHS -1 | container ACE; inner P; line HS |
| 1721 | bary | outer ACF; fans CFP, AFP, ACP; target FPS; sign -1; vertices AFS -1; CFS -1; none 0 | container ACF; inner P; line FS |
| 1750 | bary | outer ACH; fans CHP, AHP, ACP; target EFP; sign 1; vertices AEF 1; CEF 1; EFH 1 | container ACH; inner P; line EF |
| 1758 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 1788 | bary | outer ACQ; fans CPQ, APQ, ACP; target EPR; sign 1; vertices AER 1; CER 1; EQR 1 | container ACQ; inner P; line ER |
| 2000 | bary | outer CEF; fans EFQ, CFQ, CEQ; target ACQ; sign 1; vertices none 0; ACE 1; ACF 1 | container CEF; inner Q; line AC |
| 2036 | bary | outer EFH; fans FHQ, EHQ, EFQ; target APQ; sign 1; vertices AEP 1; AFP 1; AHP 1 | container EFH; inner Q; line AP |
| 2063 | bary | outer EFP; fans FPQ, EPQ, EFQ; target ABQ; sign 1; vertices ABE 1; ABF 1; ABP 1 | container EFP; inner Q; line AB |
| 2115 | four | 1 * ACE + 1 * AEF + -1 * ACF + -1 * CEF = 0 | vertices ACEF |
| 2122 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 2126 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 2130 | four | 1 * ACP + 1 * APQ + -1 * ACQ + 1 * CPQ = 0 | vertices ACPQ |
| 2132 | four | 1 * ACP + 1 * APS + -1 * ACS + 1 * CPS = 0 | vertices ACPS |
| 2179 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 155:214 | BEH | lo | 280573/1000000 | 280573/1000000 | 10 | 155:86, 155:160, 155:102 |
| 155:215 | BEF | lo | 283043/1000000 | 651/2300 | 17 | 155:2, 155:112, 155:30, 155:68, 155:17 |
| 155:218 | AEH | lo | 139367/1000000 | 634307905/4551319561 | 191 | 155:16, 155:42, 155:20, 155:30, 155:19 |
| 155:221 | AHP | lo | 12643/125000 | 9886923/97750000 | 216 | 155:20, 155:34, 155:22, 155:218, 155:17 |
| 155:222 | AES | lo | 159193/1000000 | 40713790759043/255750000000000 | 1353 | 155:30, 155:51 |
| 155:232 | EHP | lo | 99883/1000000 | 1952721/19550000 | 1639 | 155:3, 155:86, 155:34, 155:8, 155:218, 155:214 |
| 155:240 | EFP | hi | 551133/1000000 | 26936625079/48875000000 | 1673 | 155:17, 155:116, 155:34, 155:22, 155:31, 155:113 |
| 155:251 | EFP | lo | 28733/100000 | 59339301/206519000 | 1750 | 155:21, 155:134, 155:221, 155:22, 155:30, 155:112, 155:150 |
| 155:281 | ACF | hi | 22719/25000 | 227189949/250000000 | 2115 | 155:17, 155:31, 155:112 |
| 155:282 | ACH | lo | 35893/125000 | 35893/125000 | 2126 | 155:221, 155:22, 155:134 |
| 155:285 | BEH | lo | 285883/1000000 | 285883/1000000 | 2179 | 155:102, 155:86, 155:232 |
| 155:286 | BES | lo | 129377/1000000 | 2529321/19550000 | 42 | 155:2, 155:122, 155:222, 155:68, 155:17 |
| 155:288 | AEH | lo | 14009/100000 | 3978401/28398750 | 191 | 155:16, 155:42, 155:282, 155:30, 155:281 |
| 155:290 | AFP | lo | 172539/1000000 | 3537069/20500000 | 200 | 155:22, 155:251, 155:34, 155:126, 155:117 |
| 155:291 | AHP | lo | 50809/500000 | 19866381/195500000 | 216 | 155:282, 155:34, 155:22, 155:288, 155:17 |
| 155:295 | EHP | lo | 50659/500000 | 39615489/391000000 | 1639 | 155:3, 155:86, 155:34, 155:8, 155:288, 155:285 |
| 155:301 | FPS | hi | 251243/500000 | 38053225558599483/75730000000000000 | 1721 | 155:281, 155:126, 155:290, 155:22, 155:51, 155:133 |
| 155:304 | ACQ | hi | 672207/1000000 | 2356212645879/3505191025000 | 2000 | 155:113, 155:154, 155:128, 155:118, 155:17, 155:281 |
| 155:308 | APQ | lo | 107007/1000000 | 313158940083/2926515431000 | 2036 | 155:151, 155:182, 155:162, 155:154, 155:34, 155:290, 155:291 |
| 155:311 | ACF | lo | 358539/1000000 | 358539/1000000 | 2122 | 155:290, 155:22, 155:126 |
| 155:312 | ACH | lo | 143809/500000 | 143809/500000 | 2126 | 155:291, 155:22, 155:134 |
| 155:315 | BEH | lo | 143659/500000 | 143659/500000 | 2179 | 155:102, 155:86, 155:295 |
| 155:317 | AEH | lo | 70137/500000 | 63738077/454380000 | 191 | 155:16, 155:42, 155:312, 155:30, 155:281 |
| 155:319 | CFH | lo | 79057/500000 | 125979381/796759796 | 194 | 155:311, 155:150, 155:42, 155:112, 155:31 |
| 155:320 | AFQ | lo | 117991/1000000 | 66173127/560830564 | 204 | 155:311, 155:154, 155:30, 155:128, 155:113 |
| 155:321 | AHP | lo | 50887/500000 | 432543/4250000 | 216 | 155:312, 155:34, 155:22, 155:317, 155:17 |
| 155:324 | CHS | lo | 102751/1000000 | 1194484177565437/11625000000000000 | 1512 | 155:319, 155:187 |
| 155:325 | EPS | lo | 36549/250000 | 7477964381/51150000000 | 1602 | 155:251, 155:301 |
| 155:326 | EHP | lo | 101703/1000000 | 4970757/48875000 | 1639 | 155:3, 155:86, 155:34, 155:8, 155:317, 155:315 |
| 155:330 | HPS | lo | 116323/1000000 | 2274129/19550000 | 1687 | 155:17, 155:116, 155:34, 155:22, 155:58, 155:324, 155:166 |
| 155:331 | FPQ | lo | 95813/1000000 | 79149231/826076000 | 1758 | 155:21, 155:134, 155:321, 155:22, 155:320, 155:128, 155:182 |
| 155:332 | EPR | lo | 11829/125000 | 2650531/28008625 | 1788 | 155:304, 155:142, 155:308, 155:22, 155:38, 155:120, 155:174 |
| 155:339 | ABQ | lo | 25067/200000 | 23025529/183711000 | 2063 | 155:240, 155:331, 155:168, 155:154, 155:2, 155:4, 155:8 |
| 155:342 | ACH | lo | 143887/500000 | 143887/500000 | 2126 | 155:321, 155:22, 155:134 |
| 155:345 | BEH | lo | 287703/1000000 | 287703/1000000 | 2179 | 155:102, 155:86, 155:326 |
| 155:348 | AEH | lo | 28067/200000 | 63765611/454380000 | 191 | 155:16, 155:42, 155:342, 155:30, 155:281 |
| 155:350 | AHP | lo | 50913/500000 | 39814137/391000000 | 216 | 155:342, 155:34, 155:22, 155:348, 155:17 |
| 155:351 | APS | lo | 108513/1000000 | 5561307/51250000 | 249 | 155:22, 155:325, 155:34, 155:146, 155:117 |
| 155:353 | EHP | lo | 101809/1000000 | 19903767/195500000 | 1639 | 155:3, 155:86, 155:34, 155:8, 155:348, 155:345 |
| 155:362 | ACH | lo | 143913/500000 | 143913/500000 | 2126 | 155:350, 155:22, 155:134 |
| 155:364 | ACS | lo | 294513/1000000 | 294513/1000000 | 2132 | 155:22, 155:351, 155:146 |
| 155:365 | BEH | lo | 287809/1000000 | 287809/1000000 | 2179 | 155:102, 155:86, 155:353 |
| 155:366 | BCS | lo | 50277/500000 | 19658433/195500000 | 41 | 155:0, 155:122, 155:364, 155:68, 155:17 |
| 155:368 | AEH | lo | 28071/200000 | 21258263/151460000 | 191 | 155:16, 155:42, 155:362, 155:30, 155:281 |
| 155:370 | AHP | lo | 101843/1000000 | 39820833/391000000 | 216 | 155:362, 155:34, 155:22, 155:368, 155:17 |
| 155:371 | EHP | lo | 101839/1000000 | 9954813/97750000 | 1639 | 155:3, 155:86, 155:34, 155:8, 155:368, 155:365 |
| 155:379 | ACH | lo | 287843/1000000 | 287843/1000000 | 2126 | 155:370, 155:22, 155:134 |
| 155:381 | BEH | lo | 287839/1000000 | 287839/1000000 | 2179 | 155:102, 155:86, 155:371 |
| 155:383 | AEH | lo | 70181/500000 | 127555579/908760000 | 191 | 155:16, 155:42, 155:379, 155:30, 155:281 |
| 155:385 | AHP | lo | 101849/1000000 | 7964613/78200000 | 216 | 155:379, 155:34, 155:22, 155:383, 155:17 |
| 155:386 | EHP | lo | 12731/125000 | 39822693/391000000 | 1639 | 155:3, 155:86, 155:34, 155:8, 155:383, 155:381 |
| 155:392 | APQ | lo | 26761/250000 | 313266355083/2926515431000 | 2036 | 155:151, 155:182, 155:162, 155:154, 155:34, 155:290, 155:385 |
| 155:393 | ACH | lo | 287849/1000000 | 287849/1000000 | 2126 | 155:385, 155:22, 155:134 |
| 155:394 | ACQ | lo | 73261/250000 | 73261/250000 | 2130 | 155:22, 155:392, 155:142 |
| 155:395 | BEH | lo | 35981/125000 | 35981/125000 | 2179 | 155:102, 155:86, 155:386 |
| 155:396 | EHP | lo | 2037/20000 | 3982353/39100000 | 121 | 155:383, 155:86, 155:34, 155:395, 155:3 |
| 155:397 | AEH | lo | 35091/250000 | 127557697/908760000 | 191 | 155:16, 155:42, 155:393, 155:30, 155:281 |
| 155:398 | AHP | lo | 101851/1000000 | 2342577/23000000 | 216 | 155:393, 155:34, 155:22, 155:397, 155:17 |
| 155:402 | ACH | lo | 287851/1000000 | 287851/1000000 | 2126 | 155:398, 155:22, 155:134 |
| 155:403 | BEH | lo | 5757/20000 | 5757/20000 | 2179 | 155:102, 155:86, 155:396 |
| 155:404 | EHP | lo | 101851/1000000 | 865737/8500000 | 121 | 155:397, 155:86, 155:34, 155:403, 155:3 |
| 155:405 | AEH | lo | 28073/200000 | 127558403/908760000 | 191 | 155:16, 155:42, 155:402, 155:30, 155:281 |
| 155:406 | CEH | lo | 4589/31250 | 117002835/796759796 | 193 | 155:16, 155:150, 155:405, 155:112, 155:31 |
| 155:409 | BEH | lo | 287851/1000000 | 287851/1000000 | 2179 | 155:102, 155:86, 155:404 |

## Stage 156

| Property | Value |
| --- | --- |
| Scope | root/AEP-/BEP+ |
| Packet | forest:root/AEP-/BEP+ |
| Index | 1 |
| Context | 80 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 155 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 43481/250000 | 391/1000 | 43481/250000 | 391/1000 |
| b | 5629/50000 | 9681/20000 | 5629/50000 | 9681/20000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 279/1000 | 391/1000 | 279/1000 | 391/1000 |
| f | 279/1000 | 9681/20000 | 279/1000 | 9681/20000 |
| h | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| p | 94699/500000 | 727101/1000000 | 94699/500000 | 727101/1000000 |
| q | 413/3125 | 149/500 | 413/3125 | 149/500 |
| u | 333/800 | 412111/500000 | 333/800 | 412111/500000 |
| v | 41823/100000 | 831751/1000000 | 41823/100000 | 831751/1000000 |
| r | 144059/250000 | 1/1 | 144059/250000 | 1/1 |
| w | 447249/1000000 | 831751/1000000 | 447249/1000000 | 831751/1000000 |
| j | 447249/1000000 | 831751/1000000 | 447249/1000000 | 831751/1000000 |
| k | 311757/500000 | 1/1 | 311757/500000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 19 | AC_ACH_ACH_0 | bitt ["anchor-cap","ACH","ACH",0,["P"]] | `-279/1000 + 1/1 * h + -1/1 * a` |
| 125 | ha | bitt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 126 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 127 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 128 | fb | bitt ["contact-order","fb"] | `1/1 * f + -1/1 * b` |
| 129 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 130 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 131 | octagon-ear-sum | bitt ["octagon-ear-sum","ABCERSFH"] | `76277533/62500000 + 2/1 * a * b + -1/1 * b * h + -1/1 * a * c + -2/1 * c * e + 1/1 * b * e + -2/1 * w + 1/1 * c * w + 2/1 * e * r + -2/1 * r * k + 1/1 * k + 2/1 * w * j + -1/1 * e * j + -2/1 * j + 1/1 * r + 2/1 * f * k + -1/1 * f * w + -2/1 * f * h + 1/1 * h * j + 1/1 * a * f` |
| 140 | lower-area | bitt ["endpoint-lower","135501/250000"] | `1/1 * c * h + -135501/250000` |
| 142 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 143 | top-area | bitt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 146 | lower-sum | bitt ["lower-sum"] | `907/1000 + -1/1 * p + -1/1 * q` |
| 149 | central-q-floor | bitt ["central-floor",1,"27293733/206519000"] | `1/1 * q + -27293733/206519000` |
| 151 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 156:0 | ABC | lo | 93/1000 | occupants none |
| 156:2 | ABE | lo | 279/1000 | occupants P |
| 156:4 | ABF | lo | 93/1000 | occupants none |
| 156:6 | ABH | lo | 93/1000 | occupants none |
| 156:8 | ABP | lo | 93/1000 | occupants none |
| 156:10 | ABQ | lo | 25067/200000 | earlier 155:339; ABQ; lo; 25067/200000 |
| 156:12 | ABR | lo | 93/1000 | occupants none |
| 156:14 | ABS | lo | 93/1000 | occupants none |
| 156:16 | ACE | lo | 279/1000 | occupants P |
| 156:18 | ACF | lo | 358539/1000000 | earlier 155:311; ACF; lo; 358539/1000000 |
| 156:22 | ACP | lo | 93/1000 | occupants none |
| 156:24 | ACQ | lo | 73261/250000 | earlier 155:394; ACQ; lo; 73261/250000 |
| 156:26 | ACR | lo | 279/1000 | occupants P |
| 156:28 | ACS | lo | 294513/1000000 | earlier 155:364; ACS; lo; 294513/1000000 |
| 156:30 | AEF | lo | 353/1000 | earlier 155:30; AEF; lo; 353/1000 |
| 156:34 | AEP | lo | 93/1000 | occupants none |
| 156:36 | AEQ | lo | 93/1000 | occupants none |
| 156:38 | AER | lo | 104801/1000000 | earlier 155:38; AER; lo; 104801/1000000 |
| 156:46 | AFQ | lo | 117991/1000000 | earlier 155:320; AFQ; lo; 117991/1000000 |
| 156:48 | AFR | lo | 26019/250000 | earlier 155:48; AFR; lo; 26019/250000 |
| 156:50 | AFS | lo | 93/1000 | occupants none |
| 156:52 | AHP | lo | 101851/1000000 | earlier 155:398; AHP; lo; 101851/1000000 |
| 156:56 | AHR | lo | 93/1000 | occupants none |
| 156:58 | AHS | lo | 93/1000 | occupants none |
| 156:66 | ARS | lo | 93/1000 | occupants none |
| 156:68 | BCE | lo | 93/1000 | occupants none |
| 156:74 | BCP | lo | 93/1000 | occupants none |
| 156:76 | BCQ | lo | 134591/1000000 | earlier 155:76; BCQ; lo; 134591/1000000 |
| 156:80 | BCS | lo | 50277/500000 | earlier 155:366; BCS; lo; 50277/500000 |
| 156:82 | BEF | lo | 283043/1000000 | earlier 155:215; BEF; lo; 283043/1000000 |
| 156:84 | BEH | lo | 287851/1000000 | earlier 155:409; BEH; lo; 287851/1000000 |
| 156:86 | BEP | lo | 93/1000 | occupants none |
| 156:88 | BEQ | lo | 93/1000 | occupants none |
| 156:92 | BES | lo | 129377/1000000 | earlier 155:286; BES; lo; 129377/1000000 |
| 156:94 | BFH | lo | 93/1000 | occupants none |
| 156:96 | BFQ | lo | 93/1000 | occupants none |
| 156:98 | BFR | lo | 93/1000 | occupants none |
| 156:100 | BFS | lo | 93/1000 | occupants none |
| 156:102 | BHP | lo | 93/1000 | occupants none |
| 156:106 | BHR | lo | 93/1000 | occupants none |
| 156:108 | BHS | lo | 93/1000 | occupants none |
| 156:110 | BRS | lo | 93/1000 | occupants none |
| 156:112 | CEF | lo | 279/1000 | occupants Q |
| 156:114 | CEH | lo | 4589/31250 | earlier 155:406; CEH; lo; 4589/31250 |
| 156:116 | CEP | lo | 93/1000 | occupants none |
| 156:118 | CEQ | lo | 93/1000 | occupants none |
| 156:120 | CER | lo | 93/1000 | occupants none |
| 156:122 | CES | lo | 128249/1000000 | earlier 155:122; CES; lo; 128249/1000000 |
| 156:124 | CFH | lo | 79057/500000 | earlier 155:319; CFH; lo; 79057/500000 |
| 156:126 | CFP | lo | 93/1000 | occupants none |
| 156:128 | CFQ | lo | 93/1000 | occupants none |
| 156:130 | CFR | lo | 93/1000 | occupants none |
| 156:132 | CFS | lo | 93/1000 | occupants none |
| 156:134 | CHP | lo | 93/1000 | occupants none |
| 156:136 | CHQ | lo | 93/1000 | occupants none |
| 156:138 | CHR | lo | 93/1000 | occupants none |
| 156:140 | CHS | lo | 102751/1000000 | earlier 155:324; CHS; lo; 102751/1000000 |
| 156:142 | CPQ | lo | 93/1000 | occupants none |
| 156:146 | CPS | lo | 93/1000 | occupants none |
| 156:150 | EFH | lo | 279/1000 | occupants Q |
| 156:152 | EFP | lo | 28733/100000 | earlier 155:251; EFP; lo; 28733/100000 |
| 156:154 | EFQ | lo | 93/1000 | occupants none |
| 156:158 | EFS | lo | 93/1000 | occupants none |
| 156:160 | EHP | lo | 101851/1000000 | earlier 155:404; EHP; lo; 101851/1000000 |
| 156:162 | EHQ | lo | 93/1000 | occupants none |
| 156:164 | EHR | lo | 93/1000 | occupants none |
| 156:166 | EHS | lo | 181309/1000000 | earlier 155:166; EHS; lo; 181309/1000000 |
| 156:168 | EPQ | lo | 93/1000 | occupants none |
| 156:170 | EPR | lo | 11829/125000 | earlier 155:332; EPR; lo; 11829/125000 |
| 156:172 | EPS | lo | 36549/250000 | earlier 155:325; EPS; lo; 36549/250000 |
| 156:174 | EQR | lo | 93/1000 | occupants none |
| 156:176 | EQS | lo | 93/1000 | occupants none |
| 156:178 | ERS | lo | 93/1000 | occupants none |
| 156:182 | FHQ | lo | 93/1000 | occupants none |
| 156:184 | FHR | lo | 93/1000 | occupants none |
| 156:186 | FHS | lo | 93/1000 | occupants none |
| 156:188 | FPQ | lo | 95813/1000000 | earlier 155:331; FPQ; lo; 95813/1000000 |
| 156:194 | FQR | lo | 93/1000 | occupants none |
| 156:196 | FQS | lo | 93/1000 | occupants none |
| 156:198 | FRS | lo | 93/1000 | occupants none |
| 156:204 | HPS | lo | 116323/1000000 | earlier 155:330; HPS; lo; 116323/1000000 |
| 156:206 | HRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"156:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 2 | bound | `{"direction":"lo","ref":"156:2","triangle":"ABE","value":"279/1000"}` | `1 * b * e + -1 * a * b + 1 * a + -279/1000` |
| 4 | bound | `{"direction":"lo","ref":"156:4","triangle":"ABF","value":"93/1000"}` | `1 * b + -1 * a * b + 1 * a * f + -93/1000` |
| 6 | bound | `{"direction":"lo","ref":"156:6","triangle":"ABH","value":"93/1000"}` | `1 * b * h + -1 * a * b + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"156:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 10 | bound | `{"direction":"lo","ref":"156:10","triangle":"ABQ","value":"25067/200000"}` | `1 * b * v + -1 * a * b + 1 * a * u + -25067/200000` |
| 12 | bound | `{"direction":"lo","ref":"156:12","triangle":"ABR","value":"93/1000"}` | `1 * b * w + -1 * a * b + 1 * a * r + -93/1000` |
| 14 | bound | `{"direction":"lo","ref":"156:14","triangle":"ABS","value":"93/1000"}` | `1 * b * k + -1 * a * b + 1 * a * j + -93/1000` |
| 16 | bound | `{"direction":"lo","ref":"156:16","triangle":"ACE","value":"279/1000"}` | `1 * c * e + -1 * a * c + 1 * a + -279/1000` |
| 18 | bound | `{"direction":"lo","ref":"156:18","triangle":"ACF","value":"358539/1000000"}` | `1 * c + -1 * a * c + 1 * a * f + -358539/1000000` |
| 22 | bound | `{"direction":"lo","ref":"156:22","triangle":"ACP","value":"93/1000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -93/1000` |
| 24 | bound | `{"direction":"lo","ref":"156:24","triangle":"ACQ","value":"73261/250000"}` | `1 * c * v + -1 * a * c + 1 * a * u + -73261/250000` |
| 26 | bound | `{"direction":"lo","ref":"156:26","triangle":"ACR","value":"279/1000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -279/1000` |
| 28 | bound | `{"direction":"lo","ref":"156:28","triangle":"ACS","value":"294513/1000000"}` | `1 * c * k + -1 * a * c + 1 * a * j + -294513/1000000` |
| 30 | bound | `{"direction":"lo","ref":"156:30","triangle":"AEF","value":"353/1000"}` | `647/1000 + -1 * a + -1 * e * f + 1 * a * f` |
| 33 | bound | `{"direction":"lo","ref":"156:34","triangle":"AEP","value":"93/1000"}` | `-1 * q + 1 * a + 1 * e * p + -1 * a * p + -93/1000` |
| 35 | bound | `{"direction":"lo","ref":"156:36","triangle":"AEQ","value":"93/1000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -93/1000` |
| 37 | bound | `{"direction":"lo","ref":"156:38","triangle":"AER","value":"104801/1000000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -104801/1000000` |
| 45 | bound | `{"direction":"lo","ref":"156:46","triangle":"AFQ","value":"117991/1000000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -117991/1000000` |
| 47 | bound | `{"direction":"lo","ref":"156:48","triangle":"AFR","value":"26019/250000"}` | `-1 * f * w + 1 * a * f + 1 * r + -1 * a * r + -26019/250000` |
| 49 | bound | `{"direction":"lo","ref":"156:50","triangle":"AFS","value":"93/1000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -93/1000` |
| 51 | bound | `{"direction":"lo","ref":"156:52","triangle":"AHP","value":"101851/1000000"}` | `1 * h * p + -1 * a * p + -101851/1000000` |
| 55 | bound | `{"direction":"lo","ref":"156:56","triangle":"AHR","value":"93/1000"}` | `1 * h * r + -1 * a * r + -93/1000` |
| 57 | bound | `{"direction":"lo","ref":"156:58","triangle":"AHS","value":"93/1000"}` | `1 * h * j + -1 * a * j + -93/1000` |
| 65 | bound | `{"direction":"lo","ref":"156:66","triangle":"ARS","value":"93/1000"}` | `1 * r * k + -1 * a * r + -1 * w * j + 1 * a * j + -93/1000` |
| 67 | bound | `{"direction":"lo","ref":"156:68","triangle":"BCE","value":"93/1000"}` | `1 * c * e + -1 * b * e + -93/1000` |
| 72 | bound | `{"direction":"lo","ref":"156:74","triangle":"BCP","value":"93/1000"}` | `1 * c * q + -1 * b * q + -93/1000` |
| 74 | bound | `{"direction":"lo","ref":"156:76","triangle":"BCQ","value":"134591/1000000"}` | `1 * c * v + -1 * b * v + -134591/1000000` |
| 78 | bound | `{"direction":"lo","ref":"156:80","triangle":"BCS","value":"50277/500000"}` | `1 * c * k + -1 * b * k + -50277/500000` |
| 80 | bound | `{"direction":"lo","ref":"156:82","triangle":"BEF","value":"283043/1000000"}` | `716957/1000000 + -1 * b + -1 * e * f + 1 * b * e` |
| 82 | bound | `{"direction":"lo","ref":"156:84","triangle":"BEH","value":"287851/1000000"}` | `1 * h + -1 * b * h + 1 * b * e + -287851/1000000` |
| 84 | bound | `{"direction":"lo","ref":"156:86","triangle":"BEP","value":"93/1000"}` | `1 * q + -1 * b * q + -1 * e * p + 1 * b * e + -93/1000` |
| 86 | bound | `{"direction":"lo","ref":"156:88","triangle":"BEQ","value":"93/1000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -93/1000` |
| 90 | bound | `{"direction":"lo","ref":"156:92","triangle":"BES","value":"129377/1000000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -129377/1000000` |
| 92 | bound | `{"direction":"lo","ref":"156:94","triangle":"BFH","value":"93/1000"}` | `1 * f * h + -1 * b * h + 1 * b + -93/1000` |
| 94 | bound | `{"direction":"lo","ref":"156:96","triangle":"BFQ","value":"93/1000"}` | `-1 * f * v + 1 * b * v + 1 * u + -1 * b + -93/1000` |
| 96 | bound | `{"direction":"lo","ref":"156:98","triangle":"BFR","value":"93/1000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -93/1000` |
| 98 | bound | `{"direction":"lo","ref":"156:100","triangle":"BFS","value":"93/1000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -93/1000` |
| 100 | bound | `{"direction":"lo","ref":"156:102","triangle":"BHP","value":"93/1000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -93/1000` |
| 104 | bound | `{"direction":"lo","ref":"156:106","triangle":"BHR","value":"93/1000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -93/1000` |
| 106 | bound | `{"direction":"lo","ref":"156:108","triangle":"BHS","value":"93/1000"}` | `1 * b * k + 1 * h * j + -1 * b * h + -93/1000` |
| 108 | bound | `{"direction":"lo","ref":"156:110","triangle":"BRS","value":"93/1000"}` | `1 * r * k + -1 * b * k + -1 * w * j + 1 * b * w + -93/1000` |
| 110 | bound | `{"direction":"lo","ref":"156:112","triangle":"CEF","value":"279/1000"}` | `721/1000 + -1 * c + -1 * e * f + 1 * c * e` |
| 112 | bound | `{"direction":"lo","ref":"156:114","triangle":"CEH","value":"4589/31250"}` | `1 * h + -1 * c * h + 1 * c * e + -4589/31250` |
| 114 | bound | `{"direction":"lo","ref":"156:116","triangle":"CEP","value":"93/1000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -93/1000` |
| 116 | bound | `{"direction":"lo","ref":"156:118","triangle":"CEQ","value":"93/1000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -93/1000` |
| 118 | bound | `{"direction":"lo","ref":"156:120","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 120 | bound | `{"direction":"lo","ref":"156:122","triangle":"CES","value":"128249/1000000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -128249/1000000` |
| 122 | bound | `{"direction":"lo","ref":"156:124","triangle":"CFH","value":"79057/500000"}` | `1 * f * h + -1 * c * h + 1 * c + -79057/500000` |
| 124 | bound | `{"direction":"lo","ref":"156:126","triangle":"CFP","value":"93/1000"}` | `1 * f * q + -1 * c * q + -1 * p + 1 * c + -93/1000` |
| 126 | bound | `{"direction":"lo","ref":"156:128","triangle":"CFQ","value":"93/1000"}` | `-1 * f * v + 1 * c * v + 1 * u + -1 * c + -93/1000` |
| 128 | bound | `{"direction":"lo","ref":"156:130","triangle":"CFR","value":"93/1000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -93/1000` |
| 130 | bound | `{"direction":"lo","ref":"156:132","triangle":"CFS","value":"93/1000"}` | `-1 * f * k + 1 * c * k + 1 * j + -1 * c + -93/1000` |
| 132 | bound | `{"direction":"lo","ref":"156:134","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 134 | bound | `{"direction":"lo","ref":"156:136","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 136 | bound | `{"direction":"lo","ref":"156:138","triangle":"CHR","value":"93/1000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -93/1000` |
| 138 | bound | `{"direction":"lo","ref":"156:140","triangle":"CHS","value":"102751/1000000"}` | `1 * c * k + 1 * h * j + -1 * c * h + -102751/1000000` |
| 140 | bound | `{"direction":"lo","ref":"156:142","triangle":"CPQ","value":"93/1000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -93/1000` |
| 144 | bound | `{"direction":"lo","ref":"156:146","triangle":"CPS","value":"93/1000"}` | `-1 * p * k + 1 * c * k + 1 * q * j + -1 * c * q + -93/1000` |
| 148 | bound | `{"direction":"lo","ref":"156:150","triangle":"EFH","value":"279/1000"}` | `1 * f * h + -1 * e * f + -1 * h + 721/1000` |
| 150 | bound | `{"direction":"lo","ref":"156:152","triangle":"EFP","value":"28733/100000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 71267/100000 + 1 * e * p` |
| 152 | bound | `{"direction":"lo","ref":"156:154","triangle":"EFQ","value":"93/1000"}` | `1 * f * v + -1 * e * f + -1 * v + -1 * u + 907/1000 + 1 * e * u` |
| 156 | bound | `{"direction":"lo","ref":"156:158","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 158 | bound | `{"direction":"lo","ref":"156:160","triangle":"EHP","value":"101851/1000000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -101851/1000000` |
| 160 | bound | `{"direction":"lo","ref":"156:162","triangle":"EHQ","value":"93/1000"}` | `1 * v + 1 * h * u + -1 * h + -1 * e * u + -93/1000` |
| 162 | bound | `{"direction":"lo","ref":"156:164","triangle":"EHR","value":"93/1000"}` | `1 * w + 1 * h * r + -1 * h + -1 * e * r + -93/1000` |
| 164 | bound | `{"direction":"lo","ref":"156:166","triangle":"EHS","value":"181309/1000000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -181309/1000000` |
| 166 | bound | `{"direction":"lo","ref":"156:168","triangle":"EPQ","value":"93/1000"}` | `-1 * p * v + 1 * e * p + 1 * v + 1 * q * u + -1 * q + -1 * e * u + -93/1000` |
| 168 | bound | `{"direction":"lo","ref":"156:170","triangle":"EPR","value":"11829/125000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -11829/125000` |
| 170 | bound | `{"direction":"lo","ref":"156:172","triangle":"EPS","value":"36549/250000"}` | `-1 * p * k + 1 * e * p + 1 * k + 1 * q * j + -1 * q + -1 * e * j + -36549/250000` |
| 172 | bound | `{"direction":"lo","ref":"156:174","triangle":"EQR","value":"93/1000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -93/1000` |
| 174 | bound | `{"direction":"lo","ref":"156:176","triangle":"EQS","value":"93/1000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -93/1000` |
| 176 | bound | `{"direction":"lo","ref":"156:178","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 180 | bound | `{"direction":"lo","ref":"156:182","triangle":"FHQ","value":"93/1000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -93/1000` |
| 182 | bound | `{"direction":"lo","ref":"156:184","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 184 | bound | `{"direction":"lo","ref":"156:186","triangle":"FHS","value":"93/1000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -93/1000` |
| 186 | bound | `{"direction":"lo","ref":"156:188","triangle":"FPQ","value":"95813/1000000"}` | `1 * p * v + -1 * p + -1 * f * v + -1 * q * u + 1 * f * q + 1 * u + -95813/1000000` |
| 192 | bound | `{"direction":"lo","ref":"156:194","triangle":"FQR","value":"93/1000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -93/1000` |
| 194 | bound | `{"direction":"lo","ref":"156:196","triangle":"FQS","value":"93/1000"}` | `1 * u * k + -1 * u + -1 * f * k + -1 * v * j + 1 * f * v + 1 * j + -93/1000` |
| 196 | bound | `{"direction":"lo","ref":"156:198","triangle":"FRS","value":"93/1000"}` | `1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j + -93/1000` |
| 202 | bound | `{"direction":"lo","ref":"156:204","triangle":"HPS","value":"116323/1000000"}` | `1 * p * k + -1 * h * p + -1 * q * j + 1 * h * j + -116323/1000000` |
| 204 | bound | `{"direction":"lo","ref":"156:206","triangle":"HRS","value":"93/1000"}` | `1 * r * k + -1 * h * r + -1 * w * j + 1 * h * j + -93/1000` |
| 210 | coordinate | `{"box":156,"direction":"lo","value":"43481/250000","variable":"a"}` | `1 * a + -43481/250000` |
| 211 | coordinate | `{"box":156,"direction":"hi","value":"391/1000","variable":"a"}` | `391/1000 + -1 * a` |
| 212 | coordinate | `{"box":156,"direction":"lo","value":"5629/50000","variable":"b"}` | `1 * b + -5629/50000` |
| 213 | coordinate | `{"box":156,"direction":"hi","value":"9681/20000","variable":"b"}` | `9681/20000 + -1 * b` |
| 214 | coordinate | `{"box":156,"direction":"lo","value":"135501/250000","variable":"c"}` | `1 * c + -135501/250000` |
| 215 | coordinate | `{"box":156,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 216 | coordinate | `{"box":156,"direction":"lo","value":"279/1000","variable":"e"}` | `1 * e + -279/1000` |
| 217 | coordinate | `{"box":156,"direction":"hi","value":"391/1000","variable":"e"}` | `391/1000 + -1 * e` |
| 218 | coordinate | `{"box":156,"direction":"lo","value":"279/1000","variable":"f"}` | `1 * f + -279/1000` |
| 219 | coordinate | `{"box":156,"direction":"hi","value":"9681/20000","variable":"f"}` | `9681/20000 + -1 * f` |
| 220 | coordinate | `{"box":156,"direction":"lo","value":"135501/250000","variable":"h"}` | `1 * h + -135501/250000` |
| 221 | coordinate | `{"box":156,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 222 | coordinate | `{"box":156,"direction":"lo","value":"94699/500000","variable":"p"}` | `1 * p + -94699/500000` |
| 223 | coordinate | `{"box":156,"direction":"hi","value":"727101/1000000","variable":"p"}` | `727101/1000000 + -1 * p` |
| 224 | coordinate | `{"box":156,"direction":"lo","value":"413/3125","variable":"q"}` | `1 * q + -413/3125` |
| 225 | coordinate | `{"box":156,"direction":"hi","value":"149/500","variable":"q"}` | `149/500 + -1 * q` |
| 226 | coordinate | `{"box":156,"direction":"lo","value":"333/800","variable":"u"}` | `1 * u + -333/800` |
| 227 | coordinate | `{"box":156,"direction":"hi","value":"412111/500000","variable":"u"}` | `412111/500000 + -1 * u` |
| 228 | coordinate | `{"box":156,"direction":"lo","value":"41823/100000","variable":"v"}` | `1 * v + -41823/100000` |
| 229 | coordinate | `{"box":156,"direction":"hi","value":"831751/1000000","variable":"v"}` | `831751/1000000 + -1 * v` |
| 230 | coordinate | `{"box":156,"direction":"lo","value":"144059/250000","variable":"r"}` | `1 * r + -144059/250000` |
| 231 | coordinate | `{"box":156,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 232 | coordinate | `{"box":156,"direction":"lo","value":"447249/1000000","variable":"w"}` | `1 * w + -447249/1000000` |
| 233 | coordinate | `{"box":156,"direction":"hi","value":"831751/1000000","variable":"w"}` | `831751/1000000 + -1 * w` |
| 234 | coordinate | `{"box":156,"direction":"lo","value":"447249/1000000","variable":"j"}` | `1 * j + -447249/1000000` |
| 235 | coordinate | `{"box":156,"direction":"hi","value":"831751/1000000","variable":"j"}` | `831751/1000000 + -1 * j` |
| 236 | coordinate | `{"box":156,"direction":"lo","value":"311757/500000","variable":"k"}` | `1 * k + -311757/500000` |
| 237 | coordinate | `{"box":156,"direction":"hi","value":"1","variable":"k"}` | `1 + -1 * k` |
| 238 | physical | `{"factor":19}` | `-279/1000 + 1 * h + -1 * a` |
| 240 | physical | `{"factor":125}` | `1 * h + -1 * a` |
| 241 | physical | `{"factor":126}` | `1 * e + -1 * a` |
| 242 | physical | `{"factor":127}` | `1 * h + -1 * e` |
| 243 | physical | `{"factor":128}` | `1 * f + -1 * b` |
| 244 | physical | `{"factor":129}` | `1 * c + -1 * f` |
| 245 | physical | `{"factor":130}` | `1 * f + -1 * e` |
| 246 | physical | `{"factor":131}` | `76277533/62500000 + 2 * a * b + -1 * b * h + -1 * a * c + -2 * c * e + 1 * b * e + -2 * w + 1 * c * w + 2 * e * r + -2 * r * k + 1 * k + 2 * w * j + -1 * e * j + -2 * j + 1 * r + 2 * f * k + -1 * f * w + -2 * f * h + 1 * h * j + 1 * a * f` |
| 247 | physical | `{"factor":140}` | `1 * c * h + -135501/250000` |
| 249 | physical | `{"factor":142}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 250 | physical | `{"factor":143}` | `157/250 + -1 * f + -1 * e + 1 * e * f` |
| 253 | physical | `{"factor":146}` | `907/1000 + -1 * p + -1 * q` |
| 255 | physical | `{"factor":149}` | `1 * q + -27293733/206519000` |
| 257 | physical | `{"factor":151}` | `1 * c * h * q + -1 * a * c * q + -93/1000 * h + -93/1000 * a` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 376963000 | 0, 22 |
| 1 | 364555000 | 0, 33 |
| 2 | 596000 | 0, 84 |
| 3 | 25149000 | 0, 126 |
| 4 | 201952000 | 0, 132 |
| 5 | 21441000 | 0, 152 |
| 6 | 45557000 | 0, 160 |
| 7 | 13215000 | 0, 176 |
| 8 | 1041000 | 0, 194 |
| 9 | 6723000 | 0, 196 |
| 10 | 1448000 | 0, 250 |
| 11 | 28316000 | 2, 72 |
| 12 | 17285800 | 2, 231 |
| 13 | 12976700 | 4, 126 |
| 14 | 17737800 | 4, 152 |
| 15 | 91834800 | 6, 33 |
| 16 | 48944300 | 6, 132 |
| 17 | 2442200 | 6, 196 |
| 18 | 23503100 | 8, 22 |
| 19 | 808000 | 8, 126 |
| 20 | 55800 | 10, 22 |
| 21 | 113000 | 12, 22 |
| 22 | 113000 | 12, 84 |
| 23 | 3611400 | 12, 126 |
| 24 | 407100 | 12, 160 |
| 25 | 20341400 | 14, 22 |
| 26 | 519700 | 14, 84 |
| 27 | 375438000 | 16, 84 |
| 28 | 47015000 | 16, 152 |
| 29 | 16429000 | 16, 184 |
| 30 | 56236000 | 16, 245 |
| 31 | 13413300 | 18, 152 |
| 32 | 37041000 | 22, 72 |
| 33 | 35600900 | 22, 90 |
| 34 | 15779200 | 22, 106 |
| 35 | 1267900 | 22, 116 |
| 36 | 48383700 | 22, 128 |
| 37 | 17914300 | 22, 136 |
| 38 | 4984100 | 22, 138 |
| 39 | 10392900 | 22, 158 |
| 40 | 459900 | 22, 166 |
| 41 | 24507600 | 22, 180 |
| 42 | 661600 | 22, 211 |
| 43 | 28954800 | 22, 212 |
| 44 | 11534900 | 22, 215 |
| 45 | 184192000 | 22, 221 |
| 46 | 2174300 | 22, 226 |
| 47 | 33440200 | 22, 231 |
| 48 | 130709400 | 22, 237 |
| 49 | 54831300 | 22, 240 |
| 50 | 95162400 | 22, 242 |
| 51 | 41546200 | 22, 246 |
| 52 | 81474000 | 22, 249 |
| 53 | 6142800 | 22, 250 |
| 54 | 22109300 | 22, 253 |
| 55 | 1181100 | 24, 152 |
| 56 | 8589000 | 26, 160 |
| 57 | 8916300 | 26, 176 |
| 58 | 1362200 | 28, 84 |
| 59 | 2595300 | 28, 176 |
| 60 | 12678800 | 30, 33 |
| 61 | 51984400 | 30, 126 |
| 62 | 32165100 | 30, 132 |
| 63 | 34008700 | 30, 160 |
| 64 | 808000 | 33, 35 |
| 65 | 37289100 | 33, 37 |
| 66 | 37176100 | 33, 47 |
| 67 | 688300 | 33, 49 |
| 68 | 58996000 | 33, 72 |
| 69 | 6739600 | 33, 80 |
| 70 | 726100 | 33, 90 |
| 71 | 55800 | 33, 94 |
| 72 | 113000 | 33, 96 |
| 73 | 26356800 | 33, 122 |
| 74 | 2463400 | 33, 138 |
| 75 | 6503600 | 33, 162 |
| 76 | 12533900 | 33, 164 |
| 77 | 459900 | 33, 166 |
| 78 | 10392900 | 33, 170 |
| 79 | 25259800 | 33, 180 |
| 80 | 10392900 | 33, 202 |
| 81 | 118884200 | 33, 210 |
| 82 | 82337700 | 33, 214 |
| 83 | 177593100 | 33, 221 |
| 84 | 8831800 | 33, 223 |
| 85 | 61364400 | 33, 224 |
| 86 | 250700 | 33, 227 |
| 87 | 10178800 | 33, 231 |
| 88 | 15144100 | 33, 232 |
| 89 | 9312900 | 33, 234 |
| 90 | 115413300 | 33, 237 |
| 91 | 133953000 | 33, 240 |
| 92 | 160347900 | 33, 242 |
| 93 | 69193200 | 33, 243 |
| 94 | 99383400 | 33, 244 |
| 95 | 52640800 | 33, 246 |
| 96 | 46337700 | 35, 118 |
| 97 | 27638400 | 35, 126 |
| 98 | 4994800 | 35, 132 |
| 99 | 22435700 | 35, 152 |
| 100 | 7959000 | 35, 160 |
| 101 | 852500 | 35, 176 |
| 102 | 6372100 | 35, 196 |
| 103 | 9427800 | 37, 84 |
| 104 | 39526500 | 37, 184 |
| 105 | 6857900 | 45, 126 |
| 106 | 6495700 | 45, 160 |
| 107 | 63195000 | 45, 245 |
| 108 | 221700 | 47, 196 |
| 109 | 75147800 | 49, 118 |
| 110 | 8498800 | 49, 126 |
| 111 | 9959100 | 49, 132 |
| 112 | 8498800 | 49, 152 |
| 113 | 5959500 | 49, 172 |
| 114 | 1423600 | 51, 118 |
| 115 | 2252100 | 55, 196 |
| 116 | 5762400 | 57, 132 |
| 117 | 8526500 | 65, 196 |
| 118 | 40428400 | 67, 132 |
| 119 | 6614000 | 72, 84 |
| 120 | 16380000 | 72, 118 |
| 121 | 6614000 | 72, 132 |
| 122 | 266169000 | 72, 148 |
| 123 | 7205000 | 72, 152 |
| 124 | 13723000 | 72, 160 |
| 125 | 460000 | 72, 186 |
| 126 | 25909000 | 72, 196 |
| 127 | 36966000 | 72, 210 |
| 128 | 6568000 | 72, 221 |
| 129 | 2375000 | 72, 231 |
| 130 | 12955000 | 72, 246 |
| 131 | 63359000 | 72, 250 |
| 132 | 404000 | 74, 84 |
| 133 | 367000 | 78, 176 |
| 134 | 56318600 | 80, 126 |
| 135 | 40156600 | 80, 160 |
| 136 | 86138200 | 82, 152 |
| 137 | 6614400 | 84, 100 |
| 138 | 22189700 | 84, 114 |
| 139 | 5185900 | 84, 118 |
| 140 | 459900 | 84, 140 |
| 141 | 8162900 | 84, 148 |
| 142 | 15570400 | 84, 180 |
| 143 | 41934400 | 84, 210 |
| 144 | 3639100 | 84, 212 |
| 145 | 134534600 | 84, 221 |
| 146 | 4383900 | 84, 229 |
| 147 | 10076100 | 84, 235 |
| 148 | 1182500 | 84, 245 |
| 149 | 45790400 | 84, 255 |
| 150 | 2419600 | 86, 196 |
| 151 | 45747300 | 92, 126 |
| 152 | 984000 | 94, 245 |
| 153 | 4924800 | 96, 118 |
| 154 | 3295000 | 96, 176 |
| 155 | 14100 | 98, 160 |
| 156 | 14683900 | 100, 118 |
| 157 | 611700 | 104, 118 |
| 158 | 6031000 | 104, 152 |
| 159 | 405000 | 106, 126 |
| 160 | 259600 | 108, 176 |
| 161 | 2880100 | 108, 196 |
| 162 | 59592400 | 110, 160 |
| 163 | 161490700 | 112, 152 |
| 164 | 101209800 | 112, 160 |
| 165 | 30198200 | 112, 176 |
| 166 | 4716500 | 116, 126 |
| 167 | 48011000 | 116, 160 |
| 168 | 1051700 | 118, 120 |
| 169 | 42546800 | 118, 152 |
| 170 | 37045500 | 118, 156 |
| 171 | 5339200 | 118, 174 |
| 172 | 10672400 | 118, 184 |
| 173 | 14512300 | 118, 192 |
| 174 | 13504300 | 118, 215 |
| 175 | 43218600 | 118, 220 |
| 176 | 15241000 | 118, 227 |
| 177 | 27894400 | 118, 228 |
| 178 | 66562900 | 118, 230 |
| 179 | 3858000 | 118, 233 |
| 180 | 83944300 | 118, 238 |
| 181 | 350600 | 118, 246 |
| 182 | 43240800 | 120, 196 |
| 183 | 111968300 | 122, 126 |
| 184 | 21766900 | 122, 132 |
| 185 | 158529600 | 122, 152 |
| 186 | 34112800 | 122, 176 |
| 187 | 43603900 | 122, 196 |
| 188 | 31984900 | 124, 184 |
| 189 | 1578600 | 126, 150 |
| 190 | 6495700 | 126, 180 |
| 191 | 4038800 | 126, 192 |
| 192 | 11275600 | 126, 194 |
| 193 | 35861900 | 126, 211 |
| 194 | 55657000 | 126, 219 |
| 195 | 5997500 | 126, 221 |
| 196 | 1299100 | 126, 222 |
| 197 | 8113400 | 126, 226 |
| 198 | 37495100 | 126, 228 |
| 199 | 82793700 | 126, 231 |
| 200 | 16883500 | 126, 233 |
| 201 | 11162600 | 126, 235 |
| 202 | 109406800 | 126, 237 |
| 203 | 542500 | 126, 241 |
| 204 | 21599000 | 126, 246 |
| 205 | 39078300 | 126, 249 |
| 206 | 26871500 | 128, 132 |
| 207 | 1453200 | 128, 160 |
| 208 | 27518200 | 128, 176 |
| 209 | 9737800 | 130, 160 |
| 210 | 4903100 | 132, 136 |
| 211 | 15190500 | 132, 148 |
| 212 | 16183600 | 132, 180 |
| 213 | 22043200 | 132, 213 |
| 214 | 34598600 | 132, 215 |
| 215 | 35608600 | 132, 219 |
| 216 | 53272100 | 132, 225 |
| 217 | 3350700 | 132, 226 |
| 218 | 31598800 | 132, 231 |
| 219 | 4973900 | 132, 235 |
| 220 | 26721500 | 132, 237 |
| 221 | 4052700 | 132, 238 |
| 222 | 153704100 | 132, 241 |
| 223 | 33671900 | 132, 246 |
| 224 | 14202900 | 132, 249 |
| 225 | 6649900 | 132, 253 |
| 226 | 16259700 | 134, 176 |
| 227 | 4675100 | 136, 176 |
| 228 | 16278200 | 138, 176 |
| 229 | 2790500 | 144, 176 |
| 230 | 5442900 | 144, 184 |
| 231 | 28714700 | 144, 245 |
| 232 | 4209500 | 148, 184 |
| 233 | 41337600 | 148, 245 |
| 234 | 1135300 | 150, 160 |
| 235 | 11323800 | 152, 158 |
| 236 | 5462800 | 152, 172 |
| 237 | 1442600 | 152, 184 |
| 238 | 110314400 | 152, 221 |
| 239 | 6612200 | 152, 223 |
| 240 | 19270500 | 152, 226 |
| 241 | 35896100 | 152, 228 |
| 242 | 163839000 | 152, 231 |
| 243 | 41154800 | 152, 233 |
| 244 | 53463700 | 152, 235 |
| 245 | 102788100 | 152, 237 |
| 246 | 119754600 | 152, 240 |
| 247 | 18913300 | 152, 242 |
| 248 | 5017300 | 152, 244 |
| 249 | 20125300 | 152, 246 |
| 250 | 21900300 | 152, 247 |
| 251 | 67795900 | 152, 249 |
| 252 | 833300 | 152, 253 |
| 253 | 7966300 | 156, 172 |
| 254 | 8681400 | 158, 160 |
| 255 | 47930200 | 158, 196 |
| 256 | 13827700 | 160, 172 |
| 257 | 5962000 | 160, 174 |
| 258 | 3051600 | 160, 184 |
| 259 | 33643800 | 160, 212 |
| 260 | 10311900 | 160, 221 |
| 261 | 4969300 | 160, 223 |
| 262 | 2166500 | 160, 224 |
| 263 | 8078000 | 160, 226 |
| 264 | 515800 | 160, 229 |
| 265 | 77811400 | 160, 231 |
| 266 | 5468400 | 160, 232 |
| 267 | 42223500 | 160, 235 |
| 268 | 65148600 | 160, 237 |
| 269 | 40363700 | 160, 240 |
| 270 | 22982100 | 160, 246 |
| 271 | 13290300 | 160, 249 |
| 272 | 4209500 | 164, 184 |
| 273 | 4516100 | 168, 184 |
| 274 | 4182500 | 172, 172 |
| 275 | 7289000 | 172, 184 |
| 276 | 12622400 | 172, 194 |
| 277 | 93756800 | 172, 237 |
| 278 | 67546500 | 172, 247 |
| 279 | 3321100 | 174, 184 |
| 280 | 14338500 | 176, 192 |
| 281 | 17351300 | 176, 194 |
| 282 | 38267900 | 176, 221 |
| 283 | 8694000 | 176, 226 |
| 284 | 148048400 | 176, 231 |
| 285 | 159531200 | 176, 233 |
| 286 | 16722200 | 176, 235 |
| 287 | 101309700 | 176, 237 |
| 288 | 9711200 | 176, 241 |
| 289 | 6054400 | 176, 246 |
| 290 | 9992100 | 176, 253 |
| 291 | 14936600 | 182, 245 |
| 292 | 28213600 | 184, 210 |
| 293 | 119744200 | 184, 214 |
| 294 | 46547000 | 184, 229 |
| 295 | 30024700 | 184, 255 |
| 296 | 4532000 | 186, 245 |
| 297 | 1960900 | 194, 194 |
| 298 | 57375200 | 194, 196 |
| 299 | 878000 | 194, 237 |
| 300 | 37476200 | 194, 247 |
| 301 | 45328100 | 194, 250 |
| 302 | 14897500 | 196, 202 |
| 303 | 4997900 | 196, 212 |
| 304 | 91329800 | 196, 215 |
| 305 | 694100 | 196, 222 |
| 306 | 10046000 | 196, 225 |
| 307 | 101575800 | 196, 228 |
| 308 | 146800000 | 196, 231 |
| 309 | 14524600 | 196, 233 |
| 310 | 57462900 | 196, 235 |
| 311 | 162731400 | 196, 237 |
| 312 | 29953400 | 196, 245 |
| 313 | 4414600 | 196, 246 |
| 314 | 19208000 | 204, 245 |
| 315 | 110719000 | 210, 257 |
| 316 | 61741000 | 212, 257 |
| 317 | 67697500 | 214, 245 |
| 318 | 335628000 | 215, 257 |
| 319 | 20893400 | 216, 245 |
| 320 | 157089000 | 217, 257 |
| 321 | 192910000 | 219, 257 |
| 322 | 390895000 | 221, 257 |
| 323 | 59922000 | 223, 257 |
| 324 | 7644300 | 226, 245 |
| 325 | 6041000 | 227, 257 |
| 326 | 3594000 | 230, 257 |
| 327 | 47285700 | 231, 245 |
| 328 | 54115000 | 234, 257 |
| 329 | 67886500 | 237, 250 |
| 330 | 32070000 | 237, 257 |
| 331 | 37300000 | 241, 243 |
| 332 | 377982000 | 242, 257 |
| 333 | 94743200 | 247, 250 |
| 334 | 171194000 | 22, 220, 243 |
| 335 | 171953000 | 22, 220, 244 |
| 336 | 13220000 | 210, 210, 212, 223 |
| 337 | 460000 | 210, 210, 216, 231 |
| 338 | 61640000 | 210, 210, 219, 223 |
| 339 | 216170000 | 210, 210, 219, 224 |
| 340 | 16600000 | 210, 210, 221, 224 |
| 341 | 19690000 | 210, 210, 223, 234 |
| 342 | 1490000 | 210, 210, 226, 227 |
| 343 | 7430000 | 210, 210, 232, 235 |
| 344 | 294860000 | 210, 211, 213, 215 |
| 345 | 21760000 | 210, 211, 213, 225 |
| 346 | 110000 | 210, 211, 214, 231 |
| 347 | 216170000 | 210, 211, 218, 225 |
| 348 | 23500000 | 210, 211, 222, 222 |
| 349 | 1340000 | 210, 211, 222, 234 |
| 350 | 1230000 | 210, 212, 213, 217 |
| 351 | 3640000 | 210, 212, 213, 224 |
| 352 | 44970000 | 210, 212, 214, 221 |
| 353 | 600000 | 210, 212, 214, 229 |
| 354 | 9950000 | 210, 212, 216, 231 |
| 355 | 316950000 | 210, 212, 217, 223 |
| 356 | 1070000 | 210, 212, 217, 226 |
| 357 | 780000 | 210, 212, 217, 234 |
| 358 | 84160000 | 210, 212, 221, 223 |
| 359 | 14310000 | 210, 212, 221, 224 |
| 360 | 27110000 | 210, 212, 222, 231 |
| 361 | 27110000 | 210, 212, 223, 231 |
| 362 | 7870000 | 210, 212, 224, 231 |
| 363 | 610000 | 210, 212, 231, 236 |
| 364 | 101430000 | 210, 213, 214, 217 |
| 365 | 15890000 | 210, 213, 217, 222 |
| 366 | 12950000 | 210, 213, 219, 224 |
| 367 | 17700000 | 210, 213, 222, 224 |
| 368 | 212570000 | 210, 214, 217, 218 |
| 369 | 229290000 | 210, 214, 217, 220 |
| 370 | 780770000 | 210, 214, 217, 222 |
| 371 | 535070000 | 210, 214, 217, 224 |
| 372 | 26210000 | 210, 214, 217, 227 |
| 373 | 2330000 | 210, 214, 217, 233 |
| 374 | 2350000 | 210, 214, 217, 235 |
| 375 | 20820000 | 210, 214, 217, 236 |
| 376 | 37240000 | 210, 214, 218, 221 |
| 377 | 63620000 | 210, 214, 218, 229 |
| 378 | 123630000 | 210, 214, 221, 224 |
| 379 | 17910000 | 210, 214, 221, 231 |
| 380 | 61600000 | 210, 214, 221, 235 |
| 381 | 640000 | 210, 214, 225, 226 |
| 382 | 3480000 | 210, 214, 225, 231 |
| 383 | 3610000 | 210, 214, 228, 231 |
| 384 | 1170000 | 210, 214, 229, 235 |
| 385 | 42390000 | 210, 214, 231, 233 |
| 386 | 95910000 | 210, 214, 231, 237 |
| 387 | 1040000 | 210, 215, 227, 237 |
| 388 | 78400000 | 210, 215, 231, 236 |
| 389 | 24600000 | 210, 216, 221, 231 |
| 390 | 34400000 | 210, 216, 222, 231 |
| 391 | 69920000 | 210, 216, 227, 231 |
| 392 | 55490000 | 210, 216, 230, 231 |
| 393 | 22500000 | 210, 216, 231, 236 |
| 394 | 59780000 | 210, 217, 218, 219 |
| 395 | 47270000 | 210, 217, 218, 222 |
| 396 | 14550000 | 210, 217, 218, 234 |
| 397 | 21370000 | 210, 217, 219, 226 |
| 398 | 633220000 | 210, 217, 221, 224 |
| 399 | 350000 | 210, 217, 222, 226 |
| 400 | 3420000 | 210, 217, 222, 235 |
| 401 | 5480000 | 210, 217, 226, 235 |
| 402 | 8130000 | 210, 217, 227, 234 |
| 403 | 1380000 | 210, 217, 232, 232 |
| 404 | 4860000 | 210, 217, 232, 235 |
| 405 | 42140000 | 210, 218, 219, 229 |
| 406 | 10380000 | 210, 218, 219, 232 |
| 407 | 4640000 | 210, 218, 219, 237 |
| 408 | 2160000 | 210, 218, 233, 235 |
| 409 | 39530000 | 210, 219, 221, 231 |
| 410 | 9960000 | 210, 219, 222, 237 |
| 411 | 39630000 | 210, 219, 224, 234 |
| 412 | 84770000 | 210, 219, 224, 237 |
| 413 | 410000 | 210, 219, 226, 232 |
| 414 | 32440000 | 210, 219, 228, 231 |
| 415 | 11000000 | 210, 219, 231, 232 |
| 416 | 17840000 | 210, 219, 231, 236 |
| 417 | 7530000 | 210, 220, 222, 231 |
| 418 | 59490000 | 210, 221, 221, 224 |
| 419 | 22510000 | 210, 221, 221, 227 |
| 420 | 3880000 | 210, 221, 223, 231 |
| 421 | 4490000 | 210, 221, 226, 227 |
| 422 | 39530000 | 210, 221, 231, 234 |
| 423 | 22190000 | 210, 222, 231, 236 |
| 424 | 1800000 | 210, 227, 231, 236 |
| 425 | 5960000 | 210, 228, 231, 235 |
| 426 | 2080000 | 210, 231, 231, 236 |
| 427 | 64350000 | 210, 231, 232, 234 |
| 428 | 740000 | 210, 231, 234, 236 |
| 429 | 43020000 | 211, 211, 212, 215 |
| 430 | 126530000 | 211, 211, 215, 215 |
| 431 | 60000 | 211, 211, 215, 227 |
| 432 | 460000 | 211, 211, 217, 231 |
| 433 | 16600000 | 211, 211, 220, 224 |
| 434 | 1490000 | 211, 211, 227, 227 |
| 435 | 7430000 | 211, 211, 233, 235 |
| 436 | 351220000 | 211, 212, 214, 217 |
| 437 | 184220000 | 211, 212, 215, 225 |
| 438 | 1380000 | 211, 212, 219, 237 |
| 439 | 1250000 | 211, 212, 223, 237 |
| 440 | 2050000 | 211, 212, 230, 237 |
| 441 | 1440000 | 211, 212, 233, 235 |
| 442 | 810000 | 211, 213, 215, 233 |
| 443 | 520000 | 211, 213, 215, 237 |
| 444 | 2520000 | 211, 213, 216, 218 |
| 445 | 620000 | 211, 213, 218, 228 |
| 446 | 14310000 | 211, 213, 221, 225 |
| 447 | 27760000 | 211, 213, 222, 225 |
| 448 | 17410000 | 211, 213, 225, 231 |
| 449 | 1880000 | 211, 213, 225, 235 |
| 450 | 1040000 | 211, 213, 227, 237 |
| 451 | 1040000 | 211, 213, 228, 235 |
| 452 | 32070000 | 211, 214, 225, 237 |
| 453 | 100700000 | 211, 215, 215, 220 |
| 454 | 452770000 | 211, 215, 215, 224 |
| 455 | 4820000 | 211, 215, 215, 228 |
| 456 | 107490000 | 211, 215, 215, 233 |
| 457 | 3120000 | 211, 215, 215, 234 |
| 458 | 4980000 | 211, 215, 215, 237 |
| 459 | 229290000 | 211, 215, 216, 220 |
| 460 | 2330000 | 211, 215, 216, 233 |
| 461 | 78390000 | 211, 215, 217, 231 |
| 462 | 20820000 | 211, 215, 217, 237 |
| 463 | 171620000 | 211, 215, 218, 225 |
| 464 | 16740000 | 211, 215, 218, 233 |
| 465 | 70010000 | 211, 215, 219, 237 |
| 466 | 61490000 | 211, 215, 220, 222 |
| 467 | 43490000 | 211, 215, 220, 227 |
| 468 | 61470000 | 211, 215, 222, 225 |
| 469 | 56630000 | 211, 215, 222, 233 |
| 470 | 2520000 | 211, 215, 222, 237 |
| 471 | 20780000 | 211, 215, 227, 228 |
| 472 | 46340000 | 211, 215, 227, 233 |
| 473 | 8370000 | 211, 215, 228, 234 |
| 474 | 42390000 | 211, 215, 230, 233 |
| 475 | 255350000 | 211, 215, 230, 237 |
| 476 | 5900000 | 211, 215, 233, 235 |
| 477 | 26000000 | 211, 216, 227, 227 |
| 478 | 22500000 | 211, 216, 230, 237 |
| 479 | 4860000 | 211, 216, 233, 235 |
| 480 | 2600000 | 211, 216, 235, 235 |
| 481 | 87510000 | 211, 217, 219, 231 |
| 482 | 633220000 | 211, 217, 220, 225 |
| 483 | 24600000 | 211, 217, 220, 231 |
| 484 | 20800000 | 211, 217, 223, 231 |
| 485 | 3850000 | 211, 217, 226, 226 |
| 486 | 13730000 | 211, 217, 226, 231 |
| 487 | 64400000 | 211, 217, 231, 231 |
| 488 | 87430000 | 211, 217, 231, 234 |
| 489 | 1380000 | 211, 217, 233, 233 |
| 490 | 5750000 | 211, 218, 218, 233 |
| 491 | 39630000 | 211, 218, 224, 235 |
| 492 | 84770000 | 211, 218, 225, 237 |
| 493 | 34790000 | 211, 218, 229, 231 |
| 494 | 63490000 | 211, 219, 220, 227 |
| 495 | 11540000 | 211, 219, 223, 237 |
| 496 | 2840000 | 211, 219, 227, 228 |
| 497 | 6370000 | 211, 219, 227, 237 |
| 498 | 8530000 | 211, 219, 235, 237 |
| 499 | 59490000 | 211, 220, 220, 224 |
| 500 | 22510000 | 211, 220, 220, 227 |
| 501 | 4240000 | 211, 220, 222, 227 |
| 502 | 8140000 | 211, 220, 227, 227 |
| 503 | 2190000 | 211, 221, 226, 226 |
| 504 | 9000000 | 211, 221, 226, 231 |
| 505 | 22190000 | 211, 223, 233, 235 |
| 506 | 9030000 | 211, 227, 230, 237 |
| 507 | 1260000 | 211, 227, 233, 235 |
| 508 | 10380000 | 211, 230, 235, 237 |
| 509 | 62260000 | 211, 231, 233, 235 |
| 510 | 11120000 | 211, 233, 235, 235 |
| 511 | 37110000 | 212, 212, 216, 217 |
| 512 | 6610000 | 212, 212, 217, 221 |
| 513 | 41270000 | 212, 212, 217, 225 |
| 514 | 20000 | 212, 212, 217, 232 |
| 515 | 19570000 | 212, 212, 221, 224 |
| 516 | 50000 | 212, 212, 224, 229 |
| 517 | 110000 | 212, 212, 225, 233 |
| 518 | 810000 | 212, 212, 225, 237 |
| 519 | 48630000 | 212, 213, 217, 217 |
| 520 | 520000 | 212, 213, 217, 237 |
| 521 | 32840000 | 212, 214, 217, 221 |
| 522 | 269460000 | 212, 214, 217, 225 |
| 523 | 78780000 | 212, 214, 217, 228 |
| 524 | 11400000 | 212, 214, 217, 236 |
| 525 | 840000 | 212, 214, 225, 237 |
| 526 | 1400000 | 212, 215, 216, 237 |
| 527 | 201620000 | 212, 215, 220, 225 |
| 528 | 9110000 | 212, 215, 225, 225 |
| 529 | 183500000 | 212, 216, 217, 223 |
| 530 | 63200000 | 212, 216, 217, 226 |
| 531 | 21020000 | 212, 216, 217, 231 |
| 532 | 800000 | 212, 216, 218, 233 |
| 533 | 8870000 | 212, 216, 233, 233 |
| 534 | 9330000 | 212, 216, 233, 235 |
| 535 | 220000 | 212, 216, 235, 237 |
| 536 | 12780000 | 212, 217, 219, 229 |
| 537 | 134200000 | 212, 217, 221, 223 |
| 538 | 385060000 | 212, 217, 221, 224 |
| 539 | 41740000 | 212, 217, 221, 226 |
| 540 | 1250000 | 212, 217, 222, 237 |
| 541 | 36810000 | 212, 217, 223, 224 |
| 542 | 6980000 | 212, 217, 224, 226 |
| 543 | 20860000 | 212, 217, 224, 231 |
| 544 | 5620000 | 212, 217, 226, 232 |
| 545 | 10000 | 212, 217, 226, 237 |
| 546 | 13520000 | 212, 217, 231, 237 |
| 547 | 8870000 | 212, 217, 232, 232 |
| 548 | 410000 | 212, 217, 234, 237 |
| 549 | 8020000 | 212, 218, 224, 229 |
| 550 | 8450000 | 212, 218, 225, 233 |
| 551 | 1870000 | 212, 219, 221, 237 |
| 552 | 2010000 | 212, 219, 229, 237 |
| 553 | 5760000 | 212, 219, 232, 237 |
| 554 | 900000 | 212, 219, 235, 237 |
| 555 | 2880000 | 212, 219, 237, 237 |
| 556 | 14360000 | 212, 220, 225, 237 |
| 557 | 7020000 | 212, 221, 224, 226 |
| 558 | 9190000 | 212, 221, 224, 235 |
| 559 | 5890000 | 212, 221, 233, 235 |
| 560 | 12950000 | 212, 224, 231, 236 |
| 561 | 12950000 | 212, 225, 230, 237 |
| 562 | 3510000 | 212, 230, 237, 237 |
| 563 | 810000 | 212, 231, 233, 237 |
| 564 | 3510000 | 212, 233, 235, 237 |
| 565 | 85750000 | 213, 213, 216, 216 |
| 566 | 400000 | 213, 213, 216, 228 |
| 567 | 90000 | 213, 213, 216, 233 |
| 568 | 290000 | 213, 213, 224, 237 |
| 569 | 360000 | 213, 213, 225, 228 |
| 570 | 403160000 | 213, 214, 217, 217 |
| 571 | 15370000 | 213, 214, 221, 221 |
| 572 | 10440000 | 213, 215, 217, 220 |
| 573 | 8630000 | 213, 215, 217, 237 |
| 574 | 100000 | 213, 215, 220, 220 |
| 575 | 67750000 | 213, 215, 220, 228 |
| 576 | 15650000 | 213, 215, 220, 233 |
| 577 | 5960000 | 213, 215, 225, 233 |
| 578 | 3610000 | 213, 215, 228, 233 |
| 579 | 400000 | 213, 215, 228, 237 |
| 580 | 5540000 | 213, 215, 233, 233 |
| 581 | 42310000 | 213, 216, 216, 235 |
| 582 | 385060000 | 213, 216, 221, 225 |
| 583 | 21700000 | 213, 216, 221, 231 |
| 584 | 11260000 | 213, 216, 225, 231 |
| 585 | 12950000 | 213, 216, 225, 235 |
| 586 | 114430000 | 213, 217, 217, 219 |
| 587 | 221420000 | 213, 217, 217, 222 |
| 588 | 20080000 | 213, 217, 217, 227 |
| 589 | 48370000 | 213, 217, 217, 234 |
| 590 | 136030000 | 213, 217, 219, 220 |
| 591 | 218180000 | 213, 217, 219, 224 |
| 592 | 6830000 | 213, 217, 219, 237 |
| 593 | 75020000 | 213, 217, 220, 222 |
| 594 | 6050000 | 213, 217, 220, 234 |
| 595 | 9090000 | 213, 217, 231, 233 |
| 596 | 1970000 | 213, 218, 220, 233 |
| 597 | 460000 | 213, 218, 224, 225 |
| 598 | 4430000 | 213, 218, 224, 233 |
| 599 | 70000 | 213, 218, 225, 232 |
| 600 | 2880000 | 213, 218, 233, 233 |
| 601 | 900000 | 213, 218, 234, 237 |
| 602 | 263990000 | 213, 219, 220, 224 |
| 603 | 44540000 | 213, 219, 220, 228 |
| 604 | 100000 | 213, 219, 220, 237 |
| 605 | 5230000 | 213, 219, 224, 227 |
| 606 | 25840000 | 213, 220, 220, 227 |
| 607 | 5170000 | 213, 220, 224, 227 |
| 608 | 410000 | 213, 220, 227, 233 |
| 609 | 10000 | 213, 220, 227, 237 |
| 610 | 8030000 | 213, 220, 230, 237 |
| 611 | 2140000 | 213, 220, 233, 235 |
| 612 | 15270000 | 213, 221, 221, 223 |
| 613 | 2860000 | 213, 221, 221, 226 |
| 614 | 14360000 | 213, 221, 224, 237 |
| 615 | 3770000 | 213, 221, 225, 235 |
| 616 | 2420000 | 213, 228, 230, 237 |
| 617 | 2420000 | 213, 228, 233, 235 |
| 618 | 5620000 | 213, 230, 233, 237 |
| 619 | 6430000 | 213, 233, 233, 235 |
| 620 | 3210000 | 214, 214, 217, 225 |
| 621 | 40080000 | 214, 214, 217, 228 |
| 622 | 640000 | 214, 214, 217, 234 |
| 623 | 16520000 | 214, 214, 221, 221 |
| 624 | 120540000 | 214, 214, 221, 229 |
| 625 | 1630000 | 214, 214, 221, 235 |
| 626 | 92650000 | 214, 215, 217, 217 |
| 627 | 30430000 | 214, 215, 225, 225 |
| 628 | 4980000 | 214, 215, 225, 237 |
| 629 | 1050000 | 214, 215, 233, 237 |
| 630 | 109360000 | 214, 216, 233, 235 |
| 631 | 331810000 | 214, 217, 217, 218 |
| 632 | 508100000 | 214, 217, 217, 222 |
| 633 | 61460000 | 214, 217, 217, 227 |
| 634 | 17740000 | 214, 217, 217, 230 |
| 635 | 96050000 | 214, 217, 217, 233 |
| 636 | 25700000 | 214, 217, 217, 234 |
| 637 | 99600000 | 214, 217, 217, 236 |
| 638 | 163130000 | 214, 217, 218, 225 |
| 639 | 204000000 | 214, 217, 219, 221 |
| 640 | 535070000 | 214, 217, 220, 225 |
| 641 | 101930000 | 214, 217, 221, 231 |
| 642 | 157600000 | 214, 217, 221, 234 |
| 643 | 52930000 | 214, 217, 222, 232 |
| 644 | 85880000 | 214, 217, 223, 225 |
| 645 | 710000 | 214, 217, 223, 229 |
| 646 | 3250000 | 214, 217, 225, 226 |
| 647 | 59220000 | 214, 217, 225, 234 |
| 648 | 16840000 | 214, 217, 226, 228 |
| 649 | 6560000 | 214, 217, 231, 233 |
| 650 | 24500000 | 214, 217, 231, 237 |
| 651 | 148510000 | 214, 217, 232, 234 |
| 652 | 22410000 | 214, 218, 221, 224 |
| 653 | 115620000 | 214, 219, 237, 237 |
| 654 | 32070000 | 214, 220, 225, 237 |
| 655 | 40870000 | 214, 221, 221, 223 |
| 656 | 4900000 | 214, 221, 221, 231 |
| 657 | 39430000 | 214, 221, 221, 235 |
| 658 | 16600000 | 214, 221, 225, 231 |
| 659 | 120000 | 214, 221, 226, 229 |
| 660 | 34520000 | 214, 221, 226, 233 |
| 661 | 67550000 | 214, 221, 229, 231 |
| 662 | 58160000 | 214, 221, 229, 235 |
| 663 | 610000 | 214, 221, 231, 232 |
| 664 | 86380000 | 214, 221, 231, 236 |
| 665 | 61330000 | 214, 221, 233, 235 |
| 666 | 3340000 | 214, 222, 231, 237 |
| 667 | 54850000 | 214, 224, 231, 236 |
| 668 | 5340000 | 214, 227, 233, 237 |
| 669 | 4040000 | 214, 228, 229, 231 |
| 670 | 14510000 | 214, 229, 231, 233 |
| 671 | 21210000 | 214, 230, 237, 237 |
| 672 | 81120000 | 214, 231, 233, 236 |
| 673 | 58900000 | 214, 233, 235, 237 |
| 674 | 92300000 | 215, 215, 216, 216 |
| 675 | 12710000 | 215, 215, 216, 220 |
| 676 | 6040000 | 215, 215, 216, 225 |
| 677 | 39490000 | 215, 215, 216, 228 |
| 678 | 640000 | 215, 215, 216, 234 |
| 679 | 1050000 | 215, 215, 217, 237 |
| 680 | 24360000 | 215, 215, 220, 220 |
| 681 | 220560000 | 215, 215, 220, 224 |
| 682 | 30500000 | 215, 215, 220, 228 |
| 683 | 65450000 | 215, 215, 220, 233 |
| 684 | 1630000 | 215, 215, 220, 235 |
| 685 | 1210000 | 215, 215, 224, 227 |
| 686 | 1270000 | 215, 215, 224, 228 |
| 687 | 38970000 | 215, 215, 224, 233 |
| 688 | 4720000 | 215, 215, 228, 228 |
| 689 | 21600000 | 215, 215, 228, 233 |
| 690 | 350000 | 215, 215, 233, 233 |
| 691 | 90260000 | 215, 216, 216, 218 |
| 692 | 96050000 | 215, 216, 216, 233 |
| 693 | 99600000 | 215, 216, 217, 237 |
| 694 | 60660000 | 215, 216, 218, 225 |
| 695 | 142370000 | 215, 216, 218, 228 |
| 696 | 12720000 | 215, 216, 220, 227 |
| 697 | 4340000 | 215, 216, 220, 235 |
| 698 | 4900000 | 215, 216, 223, 233 |
| 699 | 60000 | 215, 216, 227, 233 |
| 700 | 54780000 | 215, 216, 230, 233 |
| 701 | 186740000 | 215, 216, 230, 237 |
| 702 | 221500000 | 215, 217, 219, 220 |
| 703 | 173010000 | 215, 217, 219, 237 |
| 704 | 1100000 | 215, 217, 222, 237 |
| 705 | 28070000 | 215, 217, 224, 231 |
| 706 | 15080000 | 215, 217, 227, 237 |
| 707 | 12430000 | 215, 217, 228, 231 |
| 708 | 193060000 | 215, 217, 231, 236 |
| 709 | 22030000 | 215, 217, 234, 237 |
| 710 | 114120000 | 215, 218, 220, 233 |
| 711 | 16430000 | 215, 218, 224, 233 |
| 712 | 460000 | 215, 218, 225, 225 |
| 713 | 7860000 | 215, 218, 228, 228 |
| 714 | 84170000 | 215, 218, 228, 233 |
| 715 | 24200000 | 215, 218, 233, 233 |
| 716 | 77820000 | 215, 218, 236, 237 |
| 717 | 9640000 | 215, 219, 220, 225 |
| 718 | 33490000 | 215, 219, 220, 228 |
| 719 | 68960000 | 215, 219, 220, 237 |
| 720 | 63140000 | 215, 219, 224, 237 |
| 721 | 23420000 | 215, 219, 228, 237 |
| 722 | 74510000 | 215, 219, 232, 237 |
| 723 | 12910000 | 215, 220, 220, 225 |
| 724 | 130680000 | 215, 220, 220, 227 |
| 725 | 76930000 | 215, 220, 222, 225 |
| 726 | 81550000 | 215, 220, 222, 233 |
| 727 | 640000 | 215, 220, 224, 227 |
| 728 | 127370000 | 215, 220, 225, 235 |
| 729 | 54390000 | 215, 220, 227, 228 |
| 730 | 47210000 | 215, 220, 227, 237 |
| 731 | 73640000 | 215, 220, 228, 235 |
| 732 | 126090000 | 215, 220, 230, 237 |
| 733 | 161470000 | 215, 220, 233, 235 |
| 734 | 5440000 | 215, 220, 234, 237 |
| 735 | 33020000 | 215, 222, 227, 237 |
| 736 | 165560000 | 215, 222, 228, 237 |
| 737 | 33060000 | 215, 222, 230, 237 |
| 738 | 33020000 | 215, 223, 227, 237 |
| 739 | 165560000 | 215, 223, 228, 237 |
| 740 | 36400000 | 215, 223, 230, 237 |
| 741 | 73390000 | 215, 224, 230, 237 |
| 742 | 18540000 | 215, 224, 233, 235 |
| 743 | 4040000 | 215, 227, 228, 233 |
| 744 | 11280000 | 215, 227, 228, 237 |
| 745 | 14510000 | 215, 227, 233, 233 |
| 746 | 11280000 | 215, 228, 228, 235 |
| 747 | 26940000 | 215, 228, 230, 237 |
| 748 | 21600000 | 215, 228, 233, 235 |
| 749 | 133400000 | 215, 230, 233, 237 |
| 750 | 37690000 | 215, 232, 234, 237 |
| 751 | 52280000 | 215, 233, 233, 235 |
| 752 | 34160000 | 216, 216, 218, 227 |
| 753 | 20130000 | 216, 216, 218, 235 |
| 754 | 179150000 | 216, 216, 227, 233 |
| 755 | 141430000 | 216, 216, 233, 235 |
| 756 | 118640000 | 216, 216, 235, 237 |
| 757 | 25970000 | 216, 217, 223, 231 |
| 758 | 23390000 | 216, 217, 226, 226 |
| 759 | 6410000 | 216, 217, 226, 231 |
| 760 | 57210000 | 216, 217, 233, 233 |
| 761 | 142610000 | 216, 218, 218, 233 |
| 762 | 251350000 | 216, 218, 221, 231 |
| 763 | 66380000 | 216, 218, 224, 235 |
| 764 | 1140000 | 216, 218, 225, 227 |
| 765 | 6990000 | 216, 218, 227, 233 |
| 766 | 12160000 | 216, 218, 229, 235 |
| 767 | 302370000 | 216, 218, 233, 235 |
| 768 | 77470000 | 216, 218, 233, 237 |
| 769 | 196290000 | 216, 220, 227, 227 |
| 770 | 24540000 | 216, 221, 226, 235 |
| 771 | 41430000 | 216, 221, 229, 231 |
| 772 | 44000000 | 216, 221, 231, 235 |
| 773 | 13310000 | 216, 221, 235, 235 |
| 774 | 60690000 | 216, 223, 230, 237 |
| 775 | 57350000 | 216, 223, 233, 235 |
| 776 | 11100000 | 216, 223, 235, 237 |
| 777 | 15170000 | 216, 225, 231, 235 |
| 778 | 2790000 | 216, 225, 235, 235 |
| 779 | 36370000 | 216, 227, 227, 237 |
| 780 | 18580000 | 216, 227, 228, 235 |
| 781 | 356640000 | 216, 227, 230, 237 |
| 782 | 26240000 | 216, 227, 233, 235 |
| 783 | 24700000 | 216, 227, 235, 237 |
| 784 | 17460000 | 216, 228, 235, 235 |
| 785 | 25170000 | 216, 230, 233, 235 |
| 786 | 139950000 | 216, 230, 235, 237 |
| 787 | 34300000 | 216, 233, 233, 236 |
| 788 | 65560000 | 216, 233, 235, 235 |
| 789 | 67800000 | 217, 217, 218, 219 |
| 790 | 22580000 | 217, 217, 218, 222 |
| 791 | 71170000 | 217, 217, 219, 226 |
| 792 | 37250000 | 217, 217, 219, 231 |
| 793 | 524220000 | 217, 217, 222, 222 |
| 794 | 557260000 | 217, 217, 222, 223 |
| 795 | 240000 | 217, 217, 222, 227 |
| 796 | 50130000 | 217, 217, 222, 231 |
| 797 | 76290000 | 217, 217, 222, 234 |
| 798 | 179150000 | 217, 217, 227, 232 |
| 799 | 8630000 | 217, 217, 231, 231 |
| 800 | 69920000 | 217, 217, 231, 234 |
| 801 | 57210000 | 217, 217, 232, 232 |
| 802 | 141430000 | 217, 217, 232, 235 |
| 803 | 6050000 | 217, 217, 234, 234 |
| 804 | 118640000 | 217, 217, 234, 237 |
| 805 | 191730000 | 217, 218, 219, 220 |
| 806 | 126490000 | 217, 218, 219, 229 |
| 807 | 122490000 | 217, 218, 219, 232 |
| 808 | 79570000 | 217, 218, 220, 226 |
| 809 | 71430000 | 217, 219, 219, 237 |
| 810 | 162010000 | 217, 219, 220, 231 |
| 811 | 168300000 | 217, 219, 222, 231 |
| 812 | 42000000 | 217, 219, 222, 232 |
| 813 | 52150000 | 217, 219, 222, 237 |
| 814 | 168300000 | 217, 219, 223, 231 |
| 815 | 66380000 | 217, 219, 224, 234 |
| 816 | 34500000 | 217, 219, 226, 229 |
| 817 | 14110000 | 217, 219, 226, 237 |
| 818 | 107280000 | 217, 219, 229, 231 |
| 819 | 211440000 | 217, 219, 230, 237 |
| 820 | 79820000 | 217, 219, 231, 232 |
| 821 | 25260000 | 217, 219, 231, 236 |
| 822 | 163250000 | 217, 219, 232, 235 |
| 823 | 77470000 | 217, 219, 232, 237 |
| 824 | 49940000 | 217, 219, 234, 237 |
| 825 | 17700000 | 217, 220, 222, 225 |
| 826 | 2480000 | 217, 220, 222, 226 |
| 827 | 76950000 | 217, 220, 222, 231 |
| 828 | 107190000 | 217, 220, 222, 234 |
| 829 | 160110000 | 217, 220, 226, 226 |
| 830 | 41430000 | 217, 220, 228, 231 |
| 831 | 16550000 | 217, 220, 234, 234 |
| 832 | 17010000 | 217, 221, 223, 223 |
| 833 | 17700000 | 217, 221, 223, 224 |
| 834 | 21910000 | 217, 221, 226, 231 |
| 835 | 5290000 | 217, 221, 231, 231 |
| 836 | 18640000 | 217, 222, 222, 237 |
| 837 | 18640000 | 217, 222, 223, 237 |
| 838 | 56450000 | 217, 222, 224, 231 |
| 839 | 6590000 | 217, 222, 231, 231 |
| 840 | 227120000 | 217, 222, 231, 233 |
| 841 | 338840000 | 217, 222, 231, 234 |
| 842 | 6130000 | 217, 222, 231, 237 |
| 843 | 13890000 | 217, 222, 234, 237 |
| 844 | 56450000 | 217, 223, 224, 231 |
| 845 | 6590000 | 217, 223, 231, 231 |
| 846 | 227120000 | 217, 223, 231, 233 |
| 847 | 338840000 | 217, 223, 231, 234 |
| 848 | 17960000 | 217, 224, 231, 234 |
| 849 | 17790000 | 217, 226, 226, 237 |
| 850 | 328080000 | 217, 226, 231, 237 |
| 851 | 7350000 | 217, 226, 234, 237 |
| 852 | 20490000 | 217, 227, 231, 233 |
| 853 | 20490000 | 217, 228, 231, 231 |
| 854 | 110000 | 217, 228, 234, 234 |
| 855 | 2330000 | 217, 229, 231, 234 |
| 856 | 33490000 | 217, 231, 231, 236 |
| 857 | 8320000 | 217, 231, 232, 234 |
| 858 | 74400000 | 217, 231, 234, 237 |
| 859 | 9270000 | 217, 232, 232, 234 |
| 860 | 7020000 | 217, 232, 232, 236 |
| 861 | 27280000 | 217, 232, 233, 237 |
| 862 | 9270000 | 217, 233, 233, 235 |
| 863 | 7820000 | 218, 218, 220, 229 |
| 864 | 34770000 | 218, 218, 220, 233 |
| 865 | 23530000 | 218, 218, 221, 224 |
| 866 | 19610000 | 218, 218, 221, 228 |
| 867 | 62890000 | 218, 218, 228, 233 |
| 868 | 4640000 | 218, 218, 233, 233 |
| 869 | 51760000 | 218, 218, 233, 237 |
| 870 | 38980000 | 218, 219, 220, 237 |
| 871 | 4210000 | 218, 219, 221, 221 |
| 872 | 31980000 | 218, 219, 224, 237 |
| 873 | 1580000 | 218, 219, 225, 228 |
| 874 | 54410000 | 218, 219, 228, 237 |
| 875 | 50510000 | 218, 219, 237, 237 |
| 876 | 6800000 | 218, 220, 223, 233 |
| 877 | 31720000 | 218, 220, 227, 233 |
| 878 | 28030000 | 218, 220, 230, 237 |
| 879 | 37470000 | 218, 220, 233, 235 |
| 880 | 1140000 | 218, 221, 224, 226 |
| 881 | 26540000 | 218, 221, 224, 235 |
| 882 | 4520000 | 218, 221, 225, 231 |
| 883 | 13320000 | 218, 221, 229, 231 |
| 884 | 2250000 | 218, 221, 231, 233 |
| 885 | 50280000 | 218, 222, 233, 233 |
| 886 | 43520000 | 218, 222, 233, 235 |
| 887 | 16890000 | 218, 222, 233, 237 |
| 888 | 50280000 | 218, 223, 233, 233 |
| 889 | 43520000 | 218, 223, 233, 235 |
| 890 | 14900000 | 218, 224, 233, 235 |
| 891 | 19750000 | 218, 224, 235, 235 |
| 892 | 4520000 | 218, 225, 230, 237 |
| 893 | 25310000 | 218, 225, 234, 237 |
| 894 | 22120000 | 218, 227, 228, 233 |
| 895 | 137820000 | 218, 227, 233, 237 |
| 896 | 73710000 | 218, 228, 230, 237 |
| 897 | 149390000 | 218, 228, 233, 235 |
| 898 | 22120000 | 218, 229, 229, 231 |
| 899 | 7350000 | 218, 229, 229, 235 |
| 900 | 184920000 | 218, 229, 231, 236 |
| 901 | 71330000 | 218, 230, 233, 237 |
| 902 | 422970000 | 218, 231, 233, 236 |
| 903 | 56370000 | 218, 231, 236, 237 |
| 904 | 53260000 | 218, 233, 233, 235 |
| 905 | 22770000 | 218, 233, 233, 237 |
| 906 | 12230000 | 218, 233, 235, 237 |
| 907 | 68530000 | 218, 233, 236, 237 |
| 908 | 8450000 | 219, 219, 220, 225 |
| 909 | 7850000 | 219, 219, 232, 237 |
| 910 | 29620000 | 219, 220, 220, 227 |
| 911 | 4860000 | 219, 220, 222, 228 |
| 912 | 29840000 | 219, 220, 227, 237 |
| 913 | 26490000 | 219, 220, 231, 237 |
| 914 | 23520000 | 219, 221, 235, 237 |
| 915 | 36300000 | 219, 223, 232, 237 |
| 916 | 9450000 | 219, 223, 237, 237 |
| 917 | 580000 | 219, 224, 224, 227 |
| 918 | 19750000 | 219, 224, 234, 234 |
| 919 | 34770000 | 219, 224, 235, 237 |
| 920 | 580000 | 219, 225, 225, 226 |
| 921 | 46610000 | 219, 226, 232, 237 |
| 922 | 7350000 | 219, 227, 229, 237 |
| 923 | 57980000 | 219, 227, 237, 237 |
| 924 | 169390000 | 219, 228, 231, 237 |
| 925 | 57980000 | 219, 228, 235, 237 |
| 926 | 441030000 | 219, 231, 232, 237 |
| 927 | 22770000 | 219, 232, 232, 237 |
| 928 | 44130000 | 219, 232, 235, 237 |
| 929 | 68530000 | 219, 232, 237, 237 |
| 930 | 2220000 | 220, 220, 227, 230 |
| 931 | 2220000 | 220, 221, 226, 231 |
| 932 | 18570000 | 220, 221, 235, 235 |
| 933 | 35660000 | 220, 222, 227, 237 |
| 934 | 5440000 | 220, 222, 234, 237 |
| 935 | 35660000 | 220, 223, 227, 237 |
| 936 | 28430000 | 220, 225, 230, 237 |
| 937 | 5960000 | 220, 226, 227, 237 |
| 938 | 5750000 | 220, 227, 227, 233 |
| 939 | 61680000 | 220, 227, 231, 237 |
| 940 | 3320000 | 220, 227, 235, 237 |
| 941 | 430000 | 220, 228, 231, 233 |
| 942 | 40790000 | 220, 228, 231, 237 |
| 943 | 3320000 | 220, 228, 235, 235 |
| 944 | 3020000 | 220, 230, 235, 237 |
| 945 | 7500000 | 221, 221, 223, 226 |
| 946 | 4900000 | 221, 221, 223, 231 |
| 947 | 39430000 | 221, 221, 223, 235 |
| 948 | 19930000 | 221, 221, 226, 235 |
| 949 | 59770000 | 221, 222, 226, 231 |
| 950 | 3210000 | 221, 222, 231, 237 |
| 951 | 59770000 | 221, 223, 226, 231 |
| 952 | 1300000 | 221, 223, 231, 236 |
| 953 | 28430000 | 221, 224, 231, 237 |
| 954 | 4520000 | 221, 225, 231, 235 |
| 955 | 5440000 | 221, 225, 235, 235 |
| 956 | 19570000 | 221, 226, 226, 233 |
| 957 | 13830000 | 221, 226, 229, 231 |
| 958 | 5960000 | 221, 226, 229, 235 |
| 959 | 91390000 | 221, 226, 231, 236 |
| 960 | 36990000 | 221, 226, 233, 235 |
| 961 | 430000 | 221, 229, 231, 232 |
| 962 | 7290000 | 221, 229, 231, 235 |
| 963 | 40790000 | 221, 229, 231, 236 |
| 964 | 6930000 | 221, 231, 231, 236 |
| 965 | 6930000 | 221, 231, 233, 235 |
| 966 | 44660000 | 221, 231, 235, 236 |
| 967 | 41640000 | 221, 233, 235, 235 |
| 968 | 73260000 | 222, 227, 233, 237 |
| 969 | 253040000 | 222, 230, 237, 237 |
| 970 | 467450000 | 222, 231, 231, 236 |
| 971 | 438470000 | 222, 231, 233, 235 |
| 972 | 12250000 | 222, 231, 236, 237 |
| 973 | 293440000 | 222, 233, 233, 235 |
| 974 | 67780000 | 222, 233, 235, 235 |
| 975 | 294170000 | 222, 233, 235, 237 |
| 976 | 73260000 | 223, 227, 233, 237 |
| 977 | 277400000 | 223, 230, 237, 237 |
| 978 | 467450000 | 223, 231, 231, 236 |
| 979 | 438470000 | 223, 231, 233, 235 |
| 980 | 293440000 | 223, 233, 233, 235 |
| 981 | 67780000 | 223, 233, 235, 235 |
| 982 | 306280000 | 223, 233, 235, 237 |
| 983 | 12110000 | 224, 233, 235, 235 |
| 984 | 12110000 | 225, 230, 234, 237 |
| 985 | 4180000 | 226, 227, 233, 233 |
| 986 | 1520000 | 226, 228, 231, 233 |
| 987 | 6840000 | 226, 229, 231, 232 |
| 988 | 2030000 | 226, 233, 233, 236 |
| 989 | 12620000 | 227, 227, 233, 237 |
| 990 | 1960000 | 227, 227, 236, 237 |
| 991 | 12620000 | 227, 228, 231, 237 |
| 992 | 12620000 | 227, 228, 233, 235 |
| 993 | 3920000 | 227, 228, 234, 237 |
| 994 | 14340000 | 227, 230, 233, 237 |
| 995 | 74730000 | 227, 230, 237, 237 |
| 996 | 2030000 | 227, 232, 233, 237 |
| 997 | 14340000 | 227, 233, 233, 235 |
| 998 | 74730000 | 227, 233, 235, 237 |
| 999 | 4810000 | 228, 228, 231, 233 |
| 1000 | 4180000 | 228, 229, 231, 231 |
| 1001 | 1960000 | 228, 229, 235, 235 |
| 1002 | 11420000 | 228, 230, 231, 237 |
| 1003 | 74730000 | 228, 230, 235, 237 |
| 1004 | 2920000 | 228, 231, 231, 236 |
| 1005 | 14340000 | 228, 231, 233, 235 |
| 1006 | 74730000 | 228, 233, 235, 235 |
| 1007 | 4810000 | 229, 229, 231, 232 |
| 1008 | 12620000 | 229, 229, 231, 235 |
| 1009 | 22240000 | 230, 230, 237, 237 |
| 1010 | 18540000 | 230, 233, 235, 237 |
| 1011 | 33160000 | 230, 233, 237, 237 |
| 1012 | 12970000 | 231, 231, 236, 237 |
| 1013 | 33160000 | 231, 232, 236, 237 |
| 1014 | 28310000 | 233, 233, 234, 235 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * b * c * q` | -1300 |
| `a * a * b * c` | 3900 |
| `a * a * b * p` | 4300 |
| `a * b` | -2636247595119/2500000 |
| `a * c * c * q` | -1300 |
| `a * a * c * c` | -208886800 |
| `a * a * c * p` | -500 |
| `c * q` | -264670085965089/50000000 |
| `a * p` | -11074118170901/100000000 |
| `1` | -30601080709546807562008545766557/4130380000000000000000000 |
| `a * b * q` | 378963657/50 |
| `a * a * b` | 143427761/50 |
| `a * b * e * p` | 1100 |
| `a * c * q` | 46588041891/1000 |
| `a * a * c` | 6543945532/25 |
| `a * c * e * p` | 3100 |
| `a * c` | -9365586469350527/100000000 |
| `q` | 59200325006360260474175709/20651900000000000000 |
| `a` | 2915986417926533873701/100000000000000 |
| `e * p` | 50980425225696623/4130380000000 |
| `a * b * b * q` | -5300 |
| `a * b * b * e` | 1300 |
| `a * b * c * e` | -100 |
| `b * q` | -6544879426507494779/5162975000000 |
| `b * e` | -58562382755902109/4130380000000 |
| `a * b * f * v` | -2100 |
| `a * b * c * v` | -2900 |
| `a * b * u` | 470 |
| `a * b * c` | 3170077/500 |
| `a * c * f * v` | 1700 |
| `a * c * c * v` | -2100 |
| `a * c * u` | -238899/50 |
| `a * c * c` | 37032805151/500 |
| `f * v` | 54578521509/100000000 |
| `c * v` | 628363551339/50000000 |
| `u` | 103308723427182831/1250000000000 |
| `c` | 421720515344237478477/50000000000000 |
| `a * b * h * p` | -900 |
| `a * b * c * h` | -3100 |
| `a * c * h * p` | 3600 |
| `a * c * c * h` | -500 |
| `h * p` | -1368629089/250000 |
| `c * h` | 320315877297/25000000 |
| `a * b * e * f` | 200 |
| `a * b * v` | 33586/25 |
| `a * b * e * u` | 1700 |
| `a * c * e * f` | 1300 |
| `a * c * v` | 70959/25 |
| `a * c * e * u` | -4100 |
| `e * f` | 87269665763/5000000 |
| `v` | -833327789203673597/100000000000000 |
| `e * u` | 14363236487/5000000 |
| `a * b * h * u` | 100 |
| `a * b * h` | 45733/25 |
| `a * c * h * u` | -1700 |
| `a * c * h` | 204339/25 |
| `h * u` | -904955874773/100000000 |
| `h` | 395447881684800179/80000000000 |
| `a * b * r * k` | -2200 |
| `a * b * e * r` | -4200 |
| `a * b * k` | 849057/100 |
| `a * b * w * j` | 2200 |
| `a * b * w` | 2393036/25 |
| `a * b * e * j` | -4300 |
| `a * c * r * k` | 9800 |
| `a * c * e * r` | -800 |
| `a * c * k` | -7503/50 |
| `a * c * w * j` | -2000 |
| `a * c * w` | 114939/10 |
| `a * c * e * j` | -1700 |
| `r * k` | -250102712151/50000000 |
| `e * r` | -395334924711/50000000 |
| `k` | -2328540511733179/390625000000 |
| `w * j` | -150405537042793/5000000 |
| `w` | 336450300364707686241/50000000000000 |
| `e * j` | -1953262147503/100000000 |
| `a * b * u * k` | -1000 |
| `a * b * f * k` | -3000 |
| `a * b * v * j` | 1000 |
| `a * b * j` | 10516/25 |
| `a * c * u * k` | 1000 |
| `a * c * f * k` | -2800 |
| `a * c * v * j` | 200 |
| `a * c * j` | 1285168533/100 |
| `u * k` | 183461364857/100000000 |
| `f * k` | 27137252798905791/5162975000000 |
| `v * j` | 74911843163/50000000 |
| `j` | 138745196274049203155888937/10325950000000000000 |
| `a * b * r` | 298441/100 |
| `a * b * f * w` | -336000 |
| `a * c * r` | -142947/50 |
| `a * c * f * w` | -100 |
| `r` | -39201679233910417/10000000000000 |
| `f * w` | 1494785098511/50000000 |
| `a * b * f` | 770727/5 |
| `a * b * e` | 82001/20 |
| `a * c * f` | 3614439831/250 |
| `a * c * e` | 430657/100 |
| `f` | 70147121303947055257/100000000000000 |
| `e` | -502567218866798431/100000000000000 |
| `b * c * e * q` | -700 |
| `b * b * e * q` | -600 |
| `b * e * r` | 494961/100 |
| `a * r` | -216064052037/20000000 |
| `b * f * v` | 626/25 |
| `b * c * v` | -541549/100 |
| `b * u` | -968069972347/5000000 |
| `b * c` | -11398306879/25000000 |
| `b` | 3596173183228392867/20000000000000 |
| `a * f * f * v` | -1600 |
| `a * f * u` | 15637/4 |
| `a * f` | -392793815944981/50000000 |
| `b * e * f` | 7543/2 |
| `b * v` | 206001878399/50000000 |
| `b * e * u` | 137743/50 |
| `a * e * f * f` | 4800 |
| `a * f * v` | 153674/25 |
| `a * e * f * u` | 1400 |
| `b * h * q` | -15039/25 |
| `b * e * h * p` | -700 |
| `b * h` | -847314511709/100000000 |
| `b * c * h * q` | 200 |
| `b * h * h * p` | -2400 |
| `b * c * h * h` | 2400 |
| `b * h * r * k` | 3200 |
| `b * h * r` | -3300 |
| `b * f * h * k` | 2400 |
| `b * h * w * j` | -3200 |
| `b * f * h * w` | -2400 |
| `b * h * j` | 300013/100 |
| `b * c * q * q` | 1700 |
| `a * b * p * q` | -1900 |
| `a * c * p * q` | 100 |
| `a * a * p * p` | 3100 |
| `b * f * q * v` | -2600 |
| `b * c * q * v` | -100 |
| `b * q * u` | 73060041/50 |
| `b * c * q` | 308792/125 |
| `a * p * u` | 6593826/25 |
| `a * c * p` | -525321/500 |
| `a * c * q * u` | 2100 |
| `a * a * c * u` | 4200 |
| `a * a * p * u` | -752200 |
| `a * u` | -1452533360477/25000000 |
| `a * b * c * w` | -4200 |
| `b * w` | -1045476470819/50000000 |
| `a * c * q * r` | -1000 |
| `a * a * c * r` | -3000 |
| `b * b * q * w` | -3000 |
| `b * b * e * w` | 3000 |
| `a * b * q * r` | -800 |
| `a * e * p * r` | -700 |
| `b * c * v * w` | 1400 |
| `b * u * w` | 1041/25 |
| `b * c * w` | -150909/50 |
| `a * f * v * r` | -1900 |
| `a * c * v * r` | 1400 |
| `a * u * r` | 38624/5 |
| `b * v * w` | -53129/50 |
| `b * h * u * w` | -2900 |
| `b * h * w` | 191231/20 |
| `b * e * u * w` | 3900 |
| `a * v * r` | -16838/25 |
| `a * h * u * r` | -3900 |
| `a * h * r` | 372071/100 |
| `a * e * u * r` | 3700 |
| `b * c * q * k` | -2500 |
| `a * b * c * k` | 300 |
| `a * b * p * k` | -4200 |
| `b * k` | 568022050071/100000000 |
| `a * c * q * j` | -18052100 |
| `a * a * c * j` | -20341400 |
| `a * a * p * j` | -300 |
| `a * j` | -605528191533103/100000000 |
| `b * q * k` | -7738/5 |
| `b * b * q * k` | 300 |
| `b * e * p * k` | 4200 |
| `b * b * e * k` | -300 |
| `a * q * j` | 19572635/2 |
| `a * b * q * j` | -1900 |
| `a * e * p * j` | -3600 |
| `c * e * q` | -132812/25 |
| `c * e * e * p` | 4800 |
| `b * c * e * e` | 4200 |
| `c * e` | 117363133413/6250000 |
| `a * q` | -1305025452860017/50000000 |
| `a * e * p` | 115333/50 |
| `c * e * f * v` | 2300 |
| `c * e * e * f` | -2300 |
| `c * e * v` | -39541/4 |
| `c * e * u` | -126033/50 |
| `a * e * f` | -419081/100 |
| `a * v` | -51092215833/25000000 |
| `a * e * u` | -983429/100 |
| `c * e * f * k` | 4900 |
| `c * e * h * j` | -6700 |
| `c * e * f * h` | 800 |
| `c * e * j` | -285401/100 |
| `a * c * h * j` | -2000 |
| `a * c * f * h` | -3100 |
| `a * f * k` | -431459/100 |
| `a * h * j` | -12732/5 |
| `a * f * h` | 434187/50 |
| `h * j` | -228128044131446783057/10325950000000 |
| `f * h` | -115438567336542449/20651900000000 |
| `c * e * f` | -287211/50 |
| `c * e * e` | -367071/50 |
| `a * e` | -643442902561/50000000 |
| `c * f * v` | -104903/20 |
| `c * u` | -17921490913541/100000000 |
| `c * c * q * q` | -3000 |
| `c * q * k` | -17643/5 |
| `c * e * q * j` | -700 |
| `a * p * k` | 950 |
| `c * h * q * j` | 3000 |
| `c * q * v` | -3700 |
| `c * c * q * v` | 2100 |
| `c * e * q * u` | -1000 |
| `c * c * e * q` | 2000 |
| `a * c * c * e` | -100 |
| `a * e * p * u` | -1900 |
| `c * f * q * w` | -2500 |
| `c * c * q * w` | 2700 |
| `c * q * r` | -202131/50 |
| `c * c * q` | 249938469/500 |
| `a * c * c * w` | -3600 |
| `a * c * p * w` | -3000 |
| `a * p * r` | 23289/50 |
| `c * w` | -281461045647/25000000 |
| `c * h * q * r` | 5200 |
| `c * c * h * q` | -500 |
| `a * c * h * r` | -4300 |
| `a * h * p * r` | 700 |
| `h * r` | 1028993847493/100000000 |
| `c * c * q * k` | 4100 |
| `a * c * c * k` | -4100 |
| `a * c * p * k` | 700 |
| `c * k` | 87749532181/100000000 |
| `c * q * q` | 135638/25 |
| `c * h * p * q` | 1100 |
| `c * h * q` | -1611341/1000 |
| `c * e * p * q` | 4400 |
| `a * p * q` | 1213 |
| `a * h * p` | -33352/25 |
| `c * p * q * v` | 100 |
| `c * q * q * u` | -100 |
| `p * v` | 227793407/250000 |
| `q * u` | -13131452000161/25000000 |
| `c * f * q * v` | -400 |
| `c * h * q * u` | -2000 |
| `c * f * h * q` | 1300 |
| `c * q * u` | 6581394/5 |
| `a * h * p * u` | -2600 |
| `a * f * h * p` | -900 |
| `a * a * p` | 31061807/100 |
| `a * b * p` | 506917/125 |
| `c * q * w` | -202223/50 |
| `c * e * q * r` | -900 |
| `c * q * r * k` | -100 |
| `c * q * w * j` | 100 |
| `c * q * j` | 156904651/50 |
| `c * f * q * k` | -3500 |
| `a * c * f * q` | -4900 |
| `a * a * c * f` | -41546200 |
| `a * p * w` | 224531/100 |
| `a * p * r * k` | -800 |
| `a * p * w * j` | 800 |
| `a * p * j` | 35059/100 |
| `a * f * p * k` | -900 |
| `a * a * f * p` | 2200 |
| `c * e * f * q` | 2300 |
| `a * e * f * p` | 1200 |
| `c * f * q` | 1870333/500 |
| `a * f * p` | 79/250 |
| `c * p * q` | -47943/25 |
| `a * p * p` | -1786 |
| `p` | 57648846777849851/6250000000000 |
| `c * f * v * v` | -1600 |
| `c * v * v` | -282782/25 |
| `c * u * v` | 127412/25 |
| `c * e * u * v` | -2800 |
| `a * f * u * v` | -3700 |
| `a * u * v` | 1202 |
| `a * u * u` | -65598/25 |
| `a * e * u * u` | 3500 |
| `c * v * w` | 38449/50 |
| `c * h * u * w` | -2200 |
| `c * h * w` | 85842/5 |
| `c * e * u * w` | 5000 |
| `c * r * w * k` | -200 |
| `c * e * r * w` | 4200 |
| `c * w * k` | -148333/100 |
| `c * w * w * j` | 200 |
| `c * w * w` | 1119/2 |
| `c * e * w * j` | 1200 |
| `a * r * r * k` | -4000 |
| `a * e * r * r` | -6300 |
| `a * r * k` | 38387/25 |
| `a * r * w * j` | -6000 |
| `a * r * w` | 185633/100 |
| `a * e * r * j` | -1700 |
| `c * e * p * k` | 1200 |
| `b * c * e * k` | -7800 |
| `c * r * k * k` | 200 |
| `c * e * r * k` | 500 |
| `c * k * k` | 27886/25 |
| `c * w * j * k` | -200 |
| `c * e * j * k` | 1000 |
| `a * r * j * k` | 1800 |
| `a * j * k` | -145841/50 |
| `a * w * j * j` | -1800 |
| `a * w * j` | 1377269/100 |
| `a * e * j * j` | -4700 |
| `a * a` | -8089089189991307/100000000 |
| `e * f * q` | -71346/25 |
| `e * e * f * p` | 700 |
| `a * f * q` | 110483/25 |
| `a * a * f` | 562896539/25 |
| `e * f * f * v` | 2100 |
| `e * f * u` | -142759/100 |
| `e * f * h * p` | 100 |
| `a * h * u` | 460339/50 |
| `a * h` | -239620888779/25000000 |
| `e * f * v` | -105013/50 |
| `e * f * h * u` | -3400 |
| `e * f * h` | -3053/2 |
| `e * e * f * u` | -3400 |
| `a * f * h * u` | -3500 |
| `q * v` | 4965209/3125 |
| `e * q * u` | -3823/5 |
| `a * q * u` | -30436/25 |
| `a * a * u` | 3503043/25 |
| `e * p * v` | -61929/25 |
| `e * e * p * u` | -800 |
| `q * w` | -96731756811/100000000 |
| `e * q * r` | -5541/50 |
| `a * w` | -2444181809631/100000000 |
| `a * e * r` | 272507/20 |
| `a * a * r` | 46489/25 |
| `e * p * w` | 59157/100 |
| `e * e * p * r` | 2600 |
| `f * q * w` | 10841/10 |
| `q * r` | 54303749663/6250000 |
| `a * f * w` | 1816967/50 |
| `e * f * p * w` | 300 |
| `e * p * r` | -12311/5 |
| `f * q * k` | 225422/25 |
| `q * j` | -85213774832261/50000000 |
| `a * a * j` | 220505243/20 |
| `e * f * p * k` | -3000 |
| `e * p * j` | 462853/100 |
| `b * q * q` | -2040 |
| `b * e * p * q` | 3300 |
| `b * e * q` | -18047/5 |
| `b * e * p` | -1846/25 |
| `b * e * e * p` | -3200 |
| `q * k` | 50079388629/50000000 |
| `e * q * j` | -10889/5 |
| `a * k` | -125625731847/50000000 |
| `a * e * j` | 102219/10 |
| `e * p * k` | -124893/100 |
| `e * e * p * j` | -3700 |
| `f * q * v` | -3637/5 |
| `b * q * v` | 3454 |
| `b * e * p * v` | -100 |
| `e * p * u` | 28083/25 |
| `f * h * q` | 17943/5 |
| `c * e * h * p` | -200 |
| `c * e * p` | -225146/25 |
| `h * q * j` | -159479/50 |
| `e * h * p * j` | -3200 |
| `h * q * r` | -119203/25 |
| `h * q` | -63585368757/50000000 |
| `e * h * p * r` | 2300 |
| `e * h * p` | -661871/100 |
| `e * p * q` | -30927/25 |
| `q * q` | -491202993/250000 |
| `e * e * p * p` | 2500 |
| `h * q * u` | 50331/10 |
| `e * h * p * u` | -300 |
| `h * p * q` | -700 |
| `e * h * p * p` | 2700 |
| `p * q` | -88783/50000 |
| `e * p * p` | -4520 |
| `e * q` | 416957016047/100000000 |
| `e * e * p` | -455071/100 |
| `f * q` | -2580758598693/10000000 |
| `e * f * p` | 54237/25 |
| `q * r * k` | -421971/100 |
| `q * w * j` | 255461/50 |
| `c * e * p * w` | -3300 |
| `e * p * r * k` | -900 |
| `e * p * w * j` | 1400 |
| `v * w` | -490779708737/100000000 |
| `e * v * r` | 261609/20 |
| `e * u * w` | -161604/25 |
| `e * e * u * r` | 500 |
| `a * u * w` | 16356/25 |
| `a * c * u * w` | 2300 |
| `f * v * v` | -114603/20 |
| `u * v` | -428704329631/50000000 |
| `e * f * u * v` | 100 |
| `e * u * u` | -133868/25 |
| `a * c * u * v` | 500 |
| `h * p * v` | 83 |
| `c * h * v` | 58181/50 |
| `c * e * h * u` | -4800 |
| `v * v` | 250060722201/25000000 |
| `e * u * v` | 261939/50 |
| `e * e * u * u` | -100 |
| `h * u * v` | -82613/25 |
| `h * v` | 118518899633/25000000 |
| `e * h * u * u` | -300 |
| `e * h * u` | 574027/50 |
| `a * h * u * u` | 3300 |
| `v * r * k` | -539037/100 |
| `v * k` | 43183030451/25000000 |
| `v * w * j` | 58771/10 |
| `e * u * r * k` | -5100 |
| `e * u * k` | -368451/100 |
| `e * u * w * j` | -4600 |
| `a * u * r * k` | -5400 |
| `a * u * k` | 205029/50 |
| `a * u * w * j` | -5100 |
| `a * e * u * j` | 4200 |
| `v * r` | 81557542153/12500000 |
| `f * v * k` | 324107/50 |
| `f * v * w` | 324747/100 |
| `e * u * r` | 298593/100 |
| `e * f * u * w` | 4800 |
| `e * u * j` | 28636/5 |
| `a * f * u * k` | -2100 |
| `a * f * u * w` | 2600 |
| `a * u * j` | 129187/50 |
| `b * q * w` | 11912/5 |
| `b * e * w` | 155489/100 |
| `b * e * q * r` | -200 |
| `b * e * e * r` | 1300 |
| `a * q * r` | 16009/50 |
| `f * w * k` | -353476/25 |
| `h * w * j` | 465137/50 |
| `f * h * w` | -393711/100 |
| `e * f * r * k` | 8200 |
| `e * h * r * j` | -4100 |
| `e * f * h * r` | 2200 |
| `e * r * j` | 71582/5 |
| `a * f * r * k` | 4500 |
| `a * h * r * j` | 3500 |
| `a * f * h * r` | -3500 |
| `a * r * j` | -15291/20 |
| `f * f * v * v` | 100 |
| `f * u * v` | 212697/25 |
| `u * u` | -133915045171/50000000 |
| `f * h * v` | -16818/25 |
| `f * f * v` | 548431/100 |
| `a * f * f` | -909077/100 |
| `f * u` | -2061918224369/25000000 |
| `f * r * w * k` | 5000 |
| `f * r * w` | -433029/50 |
| `f * f * w * k` | 300 |
| `f * w * w * j` | 5000 |
| `f * f * w * w` | 3700 |
| `f * w * j` | -962917/50 |
| `a * f * r` | 329733/100 |
| `a * f * f * k` | 3700 |
| `a * f * w * j` | -4200 |
| `a * f * f * w` | 6300 |
| `a * f * j` | -30804/25 |
| `r * r * k` | 825381/100 |
| `r * r` | -204187771001/50000000 |
| `f * r * k` | -1636501/100 |
| `r * w * j` | -301681/100 |
| `r * j` | 479906062229/100000000 |
| `a * r * r` | 117522/25 |
| `a * f * r * w` | -300 |
| `c * f * w * k` | -900 |
| `a * e * f * r` | -2300 |
| `c * w * j` | 149643/25 |
| `c * f * v * k` | 3600 |
| `c * f * k` | 117367/20 |
| `c * v * j` | -234571/25 |
| `c * j` | -40438084302653/25000000 |
| `f * h * p * k` | 100 |
| `c * f * h * k` | -4700 |
| `h * p * j` | 7090 |
| `c * h * j` | -148692/25 |
| `e * f * f * k` | 2200 |
| `e * f * j` | -130429/50 |
| `a * e * f * j` | 3200 |
| `a * v * j` | -60817/25 |
| `f * u * w * k` | 2400 |
| `f * v * r * k` | -4800 |
| `u * w * j` | -176402/25 |
| `v * r * j` | 37853/50 |
| `a * v * r * j` | 500 |
| `u * w` | -6624827609/1000000 |
| `h * p * w` | 4100 |
| `c * h * p * w` | -4000 |
| `h * r * r * k` | -2800 |
| `h * r * r` | 23101/50 |
| `f * h * r * k` | 6600 |
| `h * r * w * j` | 2800 |
| `f * h * r * w` | 2100 |
| `h * r * j` | -75397/10 |
| `h * h * p * j` | -4300 |
| `c * h * h * j` | 4300 |
| `r * r * k * k` | -1800 |
| `f * r * k * k` | 4100 |
| `r * w * j * k` | 3600 |
| `r * j * k` | -171567/25 |
| `f * w * j * k` | 5900 |
| `w * w * j * j` | -37581800 |
| `w * j * j` | 1681276889/50 |
| `a * f * j * k` | 3500 |
| `a * j * j` | 70722/25 |
| `c * c * e * h` | -2500 |
| `b * c * e * h` | -2700 |
| `b * b * q * q` | -400 |
| `b * h * p * q` | -400 |
| `b * f * h * q` | -2300 |
| `b * e * f * q` | -2100 |
| `b * e * q * u` | -2100 |
| `b * h * q * u` | -2600 |
| `b * p * q * v` | -100 |
| `b * p * q` | -476/5 |
| `b * q * q * u` | 100 |
| `b * q * r * k` | 1000 |
| `b * q * r` | 12909/50 |
| `b * f * q * k` | -1000 |
| `b * q * w * j` | -1000 |
| `b * f * q * w` | -4000 |
| `b * q * j` | -4930 |
| `b * b * h * q` | -600 |
| `b * e * q * j` | 5000 |
| `b * h * q * j` | 5000 |
| `a * b * f * q` | -5000 |
| `b * f * q` | 218811841/100 |
| `c * e * p * v` | 4700 |
| `b * c * e * v` | 1500 |
| `b * b * q * v` | -6000 |
| `b * b * e * v` | -4000 |
| `b * r * k * k` | 3300 |
| `b * e * r * k` | -4800 |
| `b * k * k` | -48109/25 |
| `b * w * j * k` | -3300 |
| `b * w * k` | -143567/100 |
| `b * e * j * k` | 3400 |
| `b * e * f * v` | -4500 |
| `b * c * e` | 156236/25 |
| `b * h * u` | 70719/100 |
| `b * e * v` | 132353/25 |
| `b * e * h * u` | -4100 |
| `b * e * h` | 793773/100 |
| `b * e * e * u` | 4800 |
| `b * f * h * v` | -3200 |
| `b * e * f * h` | -2200 |
| `b * h * v` | 2813 |
| `b * e * e * f` | 3600 |
| `b * b * e * h` | -4400 |
| `b * b * q` | 80711/10 |
| `b * b * e` | -58319/20 |
| `b * e * j` | 485969/100 |
| `b * e * e` | -531807/50 |
| `b * v * r * k` | 400 |
| `b * v * r` | -400 |
| `b * f * v * k` | 4600 |
| `b * v * w * j` | -400 |
| `b * v * j` | -6129/50 |
| `b * e * f * k` | -4200 |
| `b * e * w * j` | -4000 |
| `b * e * f * w` | 3200 |
| `f * f * h * v` | -4100 |
| `c * f * h * v` | 4900 |
| `f * h * u` | 244093/25 |
| `c * f * h` | 80427/50 |
| `b * c * h * v` | -1300 |
| `b * c * h` | 172213/100 |
| `b * f` | -1577206359453/5000000 |
| `f * w * w` | -78909/10 |
| `c * f * w * w` | 2300 |
| `e * f * r * w` | 3000 |
| `c * e * f * w` | -100 |
| `b * w * w` | -9893/100 |
| `b * c * w * w` | 3500 |
| `b * e * r * w` | -1100 |
| `r * w` | 485173721551/50000000 |
| `c * r * w` | -275703/100 |
| `e * r * r` | 40731/20 |
| `c * e * r` | -139007/25 |
| `e * f * w * j` | 7900 |
| `b * r * w * k` | 4700 |
| `b * w * w * j` | -4700 |
| `b * r * k` | -200283/20 |
| `b * w * j` | 128573/10 |
| `f * h * u * k` | -400 |
| `f * h * k` | 95916/25 |
| `b * v * k` | -372531/50 |
| `b * h * u * k` | 4100 |
| `b * h * k` | -162919/25 |
| `b * e * u * k` | -4100 |
| `h * u * j` | -117091/20 |
| `b * c * h * w` | -3800 |
| `b * e * h * r` | 600 |
| `h * r * w` | -57321/25 |
| `c * h * r * w` | -1700 |
| `e * h * r * r` | 3200 |
| `c * e * h * r` | 3000 |
| `h * v * r` | 86311/100 |
| `h * u * r` | 31953/50 |
| `e * h * u * r` | -2200 |
| `b * c * v * k` | 5000 |
| `b * u * k` | -3249/25 |
| `b * c * k` | 1122 |
| `f * h * v * j` | -200 |
| `c * h * v * j` | 7800 |
| `e * r * r * k` | -1600 |
| `r * k * k` | 131261/25 |
| `r * w * k` | -24297/5 |
| `e * r * j * k` | -9000 |
| `e * r * w * j` | 1600 |
| `w * j * k` | -369567/50 |
| `w * w * j` | 336168767/10 |
| `e * w * j * j` | -1000 |
| `b * f * k * k` | 100 |
| `b * f * w * k` | -200 |
| `b * j * k` | 220101/100 |
| `b * r * w` | -4290 |
| `b * f * w * w` | 100 |
| `c * h * u` | 163891/50 |
| `c * e * h` | 478409/50 |
| `h * h * u` | 488809/100 |
| `h * h` | -28475178369159/6250000 |
| `c * h * h * u` | -3700 |
| `c * h * h` | -900991/50 |
| `h * r * k` | -116923/20 |
| `e * h * r` | -21227/4 |
| `h * k` | 29578441507/3125000 |
| `h * w` | -823662955419/50000000 |
| `e * h * j` | 250431/25 |
| `c * h * r * k` | -1700 |
| `c * h * k` | 35841/50 |
| `c * h * w * j` | -6500 |
| `c * e * e * r` | 1300 |
| `c * e * k` | -64189/20 |
| `c * e * w` | -677701/100 |
| `c * e * e * j` | 2400 |
| `c * c * v * v` | 3500 |
| `c * c * v` | 8776/5 |
| `c * c * e * v` | 6800 |
| `c * c * e` | -48757/50 |
| `c * h * u * v` | 3300 |
| `w * k` | 456498395969/50000000 |
| `e * w * j` | 31861/100 |
| `c * c * w * k` | 1700 |
| `c * c * e * w` | 100 |
| `e * r * k` | 229843/25 |
| `e * e * r * j` | -3500 |
| `c * c * e * k` | -1700 |
| `c * c * e * e` | 500 |
| `e * f * w` | -89887/5 |
| `c * f * v * w` | -600 |
| `c * u * w` | 251759/50 |
| `e * f * v * r` | 2000 |
| `e * e * f * r` | -2800 |
| `u * w * k` | 5835/4 |
| `c * u * w * k` | -800 |
| `c * v * w * j` | -900 |
| `e * v * r * j` | -300 |
| `c * e * u * k` | 3000 |
| `c * e * v * j` | -100 |
| `c * f * h * w` | 1500 |
| `u * w * w` | -10349/5 |
| `v * r * w` | 28692/25 |
| `c * u * w * w` | -2300 |
| `c * v * r * w` | 2300 |
| `e * u * r * w` | 4200 |
| `e * v * r * r` | -4200 |
| `c * e * v * r` | -4000 |
| `c * c * w` | 26893/10 |
| `w * w` | -751696091110839/100000000 |
| `e * r * w` | -44383/4 |
| `c * c * w * w` | -600 |
| `e * e * r * r` | 2500 |
| `f * k * k` | -112969/100 |
| `j * k` | 412035573559/50000000 |
| `c * r * k` | -103948/25 |
| `c * f * k * k` | -2100 |
| `c * j * k` | 64733/100 |
| `e * f * j * k` | 3500 |
| `e * j * j` | 234563/50 |
| `c * c * h * v` | -6600 |
| `c * c * h` | -181207/100 |
| `c * c` | -663222619192821/100000000 |
| `f * h * h * p` | -100 |
| `c * f * h * h` | 100 |
| `c * h * h * p` | 2900 |
| `c * c * h * h` | 7100 |
| `c * h * p` | -74481/20 |
| `e * f * f * h` | 3000 |
| `f * h * w * j` | 3400 |
| `e * f * h * j` | 200 |
| `f * h * r` | -750121/100 |
| `f * f * h * k` | -4200 |
| `f * f * h * w` | 4700 |
| `f * h * j` | -103637/100 |
| `c * h * r` | -2230 |
| `c * r` | 802982396993/100000000 |
| `c * f * w` | -165799/50 |
| `f * f * q * k` | -4900 |
| `f * h * q * j` | -2000 |
| `f * f * h * q` | 4900 |
| `f * q * j` | 69961/50 |
| `f * p * k` | 919127/100 |
| `f * h * p` | 391 |
| `p * j` | -10694508809/6250000 |
| `f * f * q * v` | 1400 |
| `f * p * v` | 3486/25 |
| `c * p * v` | -1890 |
| `f * q * u` | 5924959/10 |
| `p * u` | -537686669/25000 |
| `c * p` | 15539178031/5000000 |
| `f * u * v * w` | -4000 |
| `f * f * v * w` | -2300 |
| `f * v * v * r` | 4000 |
| `f * v * r` | -11146/5 |
| `c * u * v * w` | -1200 |
| `c * v * v * r` | 1200 |
| `c * v * r` | -32059/100 |
| `u * u * w` | 99034/25 |
| `f * u * w` | -5391/25 |
| `u * v * r` | 63883/25 |
| `u * r` | -222488485949/25000000 |
| `f * u * v * k` | -3800 |
| `f * f * v * k` | -1400 |
| `f * v * v * j` | 3800 |
| `f * v * j` | -278219/100 |
| `c * u * v * k` | -4400 |
| `c * v * v * j` | 4400 |
| `u * u * k` | 9299/50 |
| `f * u * k` | -117089/25 |
| `u * v * j` | -46119/50 |
| `u * j` | 330235789087/50000000 |
| `c * u * k` | 31037/25 |
| `c * f` | -12577495349429/10000000 |
| `c * v * k` | -4094 |
| `f * v * w * j` | 2400 |
| `e * f * v * j` | -4600 |
| `c * c * v * w` | -1000 |
| `c * v * r * k` | 1700 |
| `u * r * k` | 348273/50 |
| `f * h * p * w` | -400 |
| `c * c * h * w` | -3500 |
| `h * p * r` | 17276/25 |
| `f * h * u * w` | -4300 |
| `c * h * u * k` | 4000 |
| `h * h * p * r` | -3100 |
| `c * h * h * r` | 3100 |
| `h * h * p` | 107861/20 |
| `f * h * p * v` | -200 |
| `h * h * p * u` | 2200 |
| `h * p * u` | -3260 |
| `b * h * p` | 128404/25 |
| `h * p * k` | -184136/25 |
| `h * p * r * k` | 6100 |
| `h * p * p` | -1010 |
| `h * u * r * k` | 5500 |
| `h * u * k` | -265458/25 |
| `h * u * w * j` | 3500 |
| `h * u * w` | 1089991/100 |
| `e * h * u * j` | -2300 |
| `h * r * j * k` | 4700 |
| `h * j * k` | -38664/25 |
| `h * w * j * j` | -4700 |
| `e * h * j * j` | 3200 |
| `p * r * k * k` | -3000 |
| `p * k * k` | 166823/50 |
| `p * w * j * k` | 3000 |
| `p * w * k` | -429961/100 |
| `e * p * j * k` | -500 |
| `p * k` | 259215955087/100000000 |
| `q * r * j * k` | 3000 |
| `e * q * r * j` | -500 |
| `q * j * k` | 10527/50 |
| `q * w * j * j` | -3000 |
| `e * q * j * j` | 500 |
| `f * p * k * k` | -4600 |
| `h * p * j * k` | 2900 |
| `p * j * k` | -69857/20 |
| `c * h * j * k` | -2900 |
| `f * q * j * k` | -5400 |
| `h * q * j * j` | -2900 |
| `q * j * j` | 605211/100 |
| `f * f * h * h` | -500 |
| `h * h * j` | 2037721993/100 |
| `f * h * h` | 114243/50 |
| `f * f * h` | 136019/100 |
| `e * f * f` | -112791/20 |
| `e * e * f` | 997807/100 |
| `e * h` | -866824520101/100000000 |
| `f * h * q * u` | -4700 |
| `e * f * q * u` | 4700 |
| `u * v * w` | 265881/50 |
| `v * v * r` | -22342/5 |
| `e * u * u * w` | -100 |
| `e * u * v * r` | 100 |
| `h * v * j` | -6124 |
| `e * f * r` | -210633/25 |
| `e * f * k` | -583317/50 |
| `e * v` | -641728257561/100000000 |
| `e * e * u` | -45661/25 |
| `e * e * f * j` | -4700 |
| `e * f * f * w` | 5300 |
| `e * e * f * f` | -4100 |
| `h * u * u * w` | -7700 |
| `h * u * v * r` | -2300 |
| `u * v * k` | 230821/50 |
| `v * v * j` | -112152/25 |
| `h * u * u * k` | -2000 |
| `h * u * v * j` | 2000 |
| `e * u * u * k` | 4400 |
| `e * u * v * j` | -4400 |
| `h * h * u * j` | 500 |
| `f * h * h * u` | -2300 |
| `h * u * u` | 341621/50 |
| `b * h * h * u` | -2100 |
| `b * h * h` | 244773/100 |
| `f * h * j * k` | -1600 |
| `h * h * j * j` | -22779500 |
| `h * j * j` | 617434976/25 |
| `f * p * w * k` | 3600 |
| `p * w * j` | -3740 |
| `p * w` | 2794381/3125 |
| `f * q * r * k` | 3900 |
| `h * q * r * j` | 3900 |
| `f * h * q * r` | -3900 |
| `q * r * j` | -6330 |
| `u * u * w * w` | 2500 |
| `u * v * r * w` | -5000 |
| `v * v * r * r` | 2500 |
| `h * v * r * j` | 1000 |
| `u * u * w * k` | -2400 |
| `u * v * w * j` | 2400 |
| `u * v * r * k` | 2400 |
| `v * v * r * j` | -2400 |
| `c * h * v * r` | -3500 |
| `f * u * k * k` | 4100 |
| `h * u * j * k` | 1100 |
| `u * j * k` | -68211/20 |
| `f * v * j * k` | -4100 |
| `h * v * j * j` | -1100 |
| `v * j * j` | 303171/100 |
| `u * r * w * k` | -1500 |
| `v * r * r * k` | 1500 |
| `u * w * w * j` | 1500 |
| `v * r * w * j` | -1500 |
| `u * r * k * k` | -3500 |
| `v * r * j * k` | 3500 |
| `u * k * k` | -36312/25 |
| `v * j * k` | 36312/25 |
| `u * w * j * k` | 3500 |
| `v * w * j * j` | -3500 |
| `e * u * j * k` | 1300 |
| `e * v * j * j` | -1300 |
| `k * k` | -23241134547/12500000 |
| `e * j * k` | 84609/50 |
| `e * e * r` | -282277/100 |
| `e * k` | 10661426369/2500000 |
| `e * w` | 1229516075017/100000000 |
| `e * e * j` | 515301/50 |
| `b * e * k` | 1136439/100 |
| `b * e * h * j` | -4400 |
| `b * e * e * j` | -5600 |
| `e * e * j * j` | -4400 |
| `p * r * k` | -1463/10 |
| `f * f * w` | -610219/50 |
| `f * r` | 767183827569/50000000 |
| `f * p` | -27793775821/6250000 |
| `f * f * q` | 5652/5 |
| `u * u * k * k` | 900 |
| `u * v * j * k` | -1800 |
| `f * f * k * k` | -3100 |
| `f * j * k` | -27013/10 |
| `v * v * j * j` | 900 |
| `j * j` | -1421827812540087/100000000 |
| `f * f * k` | 834851/100 |
| `e * v * j` | 50651/10 |
| `f * j` | 227544010001/20000000 |
| `f * q * w * j` | 2500 |
| `b * r` | 156933750929/25000000 |
| `b * f * k` | -293253/100 |
| `b * f * w` | 1495227/25 |
| `b * j` | -684907963873/100000000 |
| `p * r` | -5712516509/12500000 |
| `f * p * w` | -17636/5 |
| `a * c * h * q` | 2000 |
| `a * a * c * q` | -110719000 |
| `e * e` | 125923360893/100000000 |
| `c * e * h * q` | -1000 |
| `a * c * e * q` | 1000 |
| `c * h * h * q` | -3000 |
| `b * p` | -12284027271/3125000 |
| `a * a * q` | 624613201/10 |
| `a * h * q` | -353423/50 |
| `a * a * b * q` | -21760000 |
| `p * p` | 810543/500 |
| `a * b * b` | 662/5 |
| `b * b` | -5725628889/2500000 |
| `a * e * h` | -17451/25 |
| `a * e * q` | -53671/25 |
| `a * e * w` | 147629/25 |
| `a * e * k` | -19668/25 |
| `f * f` | 38210961153/50000000 |
| `e * h * q` | 118287/50 |
| `e * w * w` | -44017/50 |
| `a * q * k` | -1011/50 |
| `h * h * q` | 96281/25 |
| `c * c * j` | 13626663/25 |
| `a * c * c * j` | -3120000 |
| `c * c * k` | -7029/20 |
| `c * p * w` | 23169/5 |
| `c * p * k` | 1206/25 |
| `b * b * e * e` | 10000 |
| `b * b * h` | 9306/5 |
| `b * b * w` | 150 |
| `b * b * v` | 2288 |
| `b * b * k` | 1332/5 |
| `b * f * h` | 229793/100 |
| `h * q * k` | -3714/25 |
| `f * q * q` | 17831/25 |
| `b * f * q * u` | -5230000 |
| `b * f * u` | 3455984/5 |
| `e * e * w` | 105076/25 |
| `e * e * k` | -22892/25 |
| `h * h * r` | -63873/50 |
| `c * c * q * u` | -1210000 |
| `c * c * u` | 799568/5 |
| `e * w * k` | -119957/50 |
| `w * w * k` | 39733/50 |
| `u * r * w` | 88089/25 |
| `v * r * r` | -41503/10 |
| `w * k * k` | 3113/50 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * b * c * q` | -1300 | 478494070766649861/78125000000000000000 | 0 |
| `a * b * c` | 14562911/5000 | 230822031242957/6250000000000000 | 3361440697830402167827/31250000000000000000 |
| `a * b * q` | 51370887/10000 | 4179024015639/312500000000000 | 214680170477677301793/3125000000000000000 |
| `a * b` | -9374326568419/5000000000 | 2015930543/25000000000 | 0 |
| `a * c * q` | -734643/2000 | 12881095936863/781250000000000 | 0 |
| `a * c` | -26959775136659/5000000000 | 6213746231/62500000000 | 0 |
| `a * q` | 41497404853/39062500 | 112499637/3125000000 | 4668442982404538361/122070312500000000 |
| `a` | 2625354705105838659/1250000000000000 | 54269/250000 | 142475374491388758185271/312500000000000000000 |
| `b * c * q` | 2515179/2500 | 8817079193769/312500000000000 | 22176532429504719651/781250000000000000 |
| `b * c` | 638828453867/2000000000 | 4253294353/25000000000 | 2717125455368232113051/50000000000000000000 |
| `b * q` | 1758426870310300069/1032595000000000 | 77005731/1250000000 | 135408946558286853642695439/1290743750000000000000000 |
| `b` | 839451128871185941927201/2065190000000000000000 | 37147/100000 | 31183091084177944184769735547/206519000000000000000000000 |
| `c * q` | -2089394978487/10000000000 | 237356427/3125000000 | 0 |
| `c` | -3036909739614981763/5000000000000000 | 114499/250000 | 0 |
| `q` | 1971435189093595826313/206519000000000000000 | 2073/12500 | 4086785146991024147946849/2581487500000000000000000 |
| `1` | -1978663448315769061081969764485557/1032595000000000000000000000 | 1 | -1978663448315769061081969764485557/1032595000000000000000000000 |
| `a * a * b * c` | 3900 | 12526480813524033433/1562500000000000000000 | 488532751727437303887/15625000000000000000 |
| `a * a * b` | -4318153/1000 | 109402534638067/6250000000000000 | 0 |
| `a * a * c` | 769621/500 | 337213794210139/15625000000000000 | 259526817513801387319/7812500000000000000 |
| `a * a` | 2626961778953/5000000000 | 2945124361/62500000000 | 7736729130610377374033/312500000000000000000 |
| `a * a * b * p` | 4300 | 58826071082492540101/6250000000000000000000 | 2529521056547179224343/62500000000000000000 |
| `a * a * p` | -6181951/10000 | 1583602204282783/62500000000000000 | 0 |
| `a * b * p` | 625079/250 | 1083971900762729/25000000000000000 | 677568071756865880591/6250000000000000000 |
| `a * p` | -1583655820759/2500000000 | 29180604107/250000000000 | 0 |
| `b * p` | -352807564721/312500000 | 19974053341/100000000000 | 0 |
| `p` | 257207012670299193108317/516297500000000000000 | 537703/1000000 | 138300982333857887031921375851/516297500000000000000000000 |
| `a * c * c * q` | -1300 | 1474872603674876637/195312500000000000000 | 0 |
| `a * c * c` | 9555797/2500 | 711467729703269/15625000000000000 | 6798641197095308800393/39062500000000000000 |
| `c * c * q` | 9971/80 | 27177073535073/781250000000000 | 270982600218212883/62500000000000000 |
| `c * c` | -3074516651197/2500000000 | 13110021001/62500000000 | 0 |
| `a * a * c * c` | -208886800 | 38610642223266705361/3906250000000000000000 | 0 |
| `a * a * c * p` | -500 | 181320868788174370717/15625000000000000000000 | 0 |
| `a * c * p` | 1748693/2500 | 3341149989647393/62500000000000000 | 5842645598846468607349/156250000000000000000 |
| `c * p` | 737264837659/1250000000 | 61566455797/250000000000 | 45390783038415204459223/312500000000000000000 |
| `a * b * e * p` | 1100 | 7587803305339103/1562500000000000000 | 83465836358730133/15625000000000000 |
| `a * b * e` | 1933917/2000 | 14111513801/1562500000000 | 27290496435488517/3125000000000000 |
| `a * e * p` | 8205869/5000 | 204264228749/15625000000000 | 1676165502500327881/78125000000000000 |
| `a * e` | -34827749338799/10000000000 | 379883/15625000 | 0 |
| `b * e * p` | 4827687/5000 | 139818373387/6250000000000 | 674999343561565869/31250000000000000 |
| `b * e` | -1770998622532279879/1032595000000000 | 260029/6250000 | 0 |
| `e * p` | 260873672139039373/103259500000000 | 3763921/62500000 | 981907892911245215861533/6453718750000000000000 |
| `e` | -274259474347153105993317/258148750000000000000 | 14/125 | 0 |
| `a * c * e * p` | 3100 | 23388049927531751/3906250000000000000 | 725029547753484281/39062500000000000 |
| `a * c * e` | 23409679/10000 | 43496223617/3906250000000 | 1018232632586188943/39062500000000000 |
| `c * e * p` | -40771963/10000 | 430965190579/15625000000000 | 0 |
| `c * e` | 11867084947099/2500000000 | 801493/15625000 | 9511385515505218807/39062500000000000 |
| `a * b * b * q` | -5300 | 155238205108941933/31250000000000000000 | 0 |
| `a * b * b` | -51337/250 | 74885771880821/2500000000000000 | 0 |
| `b * b * q` | 7217249/2500 | 2860531889457/125000000000000 | 20645170918651643793/312500000000000000 |
| `b * b` | -7216134541/15625000 | 1379899609/10000000000 | 0 |
| `a * b * b * e` | 1300 | 524200403165747/156250000000000000 | 6814605241154711/1562500000000000 |
| `b * b * e` | -115237/1250 | 9659297263/625000000000 | 0 |
| `a * b * c * e` | -100 | 1615754218700699/390625000000000000 | 0 |
| `b * c * e` | 13918303/5000 | 29773060471/1562500000000 | 414390476872700713/7812500000000000 |
| `a * b * f * v` | -2100 | 3418715047308874203/500000000000000000000 | 0 |
| `a * b * f` | 515911/1000 | 8267331156843/500000000000000 | 4265207084458028973/500000000000000000 |
| `a * b * v` | -1835113/5000 | 833629614071903/25000000000000000 | 0 |
| `a * f * v` | 16520877/5000 | 92032063082049/5000000000000000 | 1520450394234772436973/25000000000000000000 |
| `a * f` | -4743815562559/2500000000 | 222557169/5000000000 | 0 |
| `a * v` | -748843140647/2500000000 | 22441371149/250000000000 | 0 |
| `b * f * v` | -503478/625 | 62995725871287/2000000000000000 | 0 |
| `b * f` | 304862433333/2000000000 | 152339847/2000000000 | 46442696449996920051/4000000000000000000 |
| `b * v` | 2645873982401/2500000000 | 15361064587/100000000000 | 40643441132724662333387/250000000000000000000 |
| `f * v` | 236532008037/200000000 | 1695849621/20000000000 | 401122716183915403977/4000000000000000000 |
| `f` | -63185560362003421618899/103259500000000000000 | 4101/20000 | 0 |
| `v` | 1276804666733228241/10000000000000000 | 413521/1000000 | 527985542592191275446561/10000000000000000000000 |
| `a * b * c * v` | -2900 | 95449757181618821597/6250000000000000000000 | 0 |
| `a * c * v` | 2267583/1250 | 2569514555189351/62500000000000000 | 5826587523599934108633/78125000000000000000 |
| `b * c * v` | -12377361/5000 | 1758826534146913/25000000000000000 | 0 |
| `c * v` | 11425196660443/10000000000 | 47347740979/250000000000 | 540957252112790979393697/2500000000000000000000 |
| `a * b * u` | 468733/1250 | 205610803872199/6250000000000000 | 96376568931427453867/7812500000000000000 |
| `a * u` | -27449933369543/10000000000 | 5535058117/62500000000 | 0 |
| `b * u` | -40435121457/2500000000 | 3788733971/25000000000 | 0 |
| `u` | 822548256626861741/10000000000000000 | 101993/250000 | 83894164338143509549813/2500000000000000000000 |
| `a * c * f * v` | 1700 | 10537579190831528451/1250000000000000000000 | 179138846244135983667/12500000000000000000 |
| `a * c * f` | 29520769/10000 | 25482573293331/1250000000000000 | 752265159717993691539/12500000000000000000 |
| `c * f * v` | -5334293/5000 | 194173085754879/5000000000000000 | 0 |
| `c * f` | -8918396703/80000000 | 469560399/5000000000 | 0 |
| `a * c * c * v` | -2100 | 294206847054625500149/15625000000000000000000 | 0 |
| `c * c * v` | 12339151/5000 | 5421268994354521/62500000000000000 | 66893856732958582151671/312500000000000000000 |
| `a * c * u` | -259479/80 | 633758619338383/15625000000000000 | 0 |
| `c * u` | -13798785821127/10000000000 | 11678096507/62500000000 | 0 |
| `a * b * h * p` | -900 | 124113698665431707771/6250000000000000000000 | 0 |
| `a * b * h` | 25343/1250 | 230822031242957/6250000000000000 | 5849722737790259251/7812500000000000000 |
| `a * h * p` | -1035431/2500 | 3341149989647393/62500000000000000 | 0 |
| `a * h` | -2743706881153/1250000000 | 6213746231/62500000000 | 0 |
| `b * h * p` | 5324613/2500 | 2287009133491159/25000000000000000 | 12177438563305760596467/62500000000000000000 |
| `b * h` | -9128345156397/5000000000 | 4253294353/25000000000 | 0 |
| `h * p` | -16442775356327/5000000000 | 61566455797/250000000000 | 0 |
| `h` | 4264371572859759926459091/2065190000000000000000 | 114499/250000 | 488266280720869651819639460409/516297500000000000000000000 |
| `a * b * c * h` | -3100 | 26428891755287333543/1562500000000000000000 | 0 |
| `a * c * h` | 3283873/1000 | 711467729703269/15625000000000000 | 2336369667943863080837/15625000000000000000 |
| `b * c * h` | 2036179/2500 | 486997950124147/6250000000000000 | 991614999085835514313/15625000000000000000 |
| `c * h` | 35490798279589/10000000000 | 13110021001/62500000000 | 465285110787666459648589/625000000000000000000 |
| `a * c * h * p` | 3600 | 382558332664636851107/15625000000000000000000 | 3443024993981731659963/39062500000000000000 |
| `c * h * p` | -4134301/2500 | 7049297622300703/62500000000000000 | 0 |
| `a * c * c * h` | -500 | 81462343583294597231/3906250000000000000000 | 0 |
| `c * c * h` | 7081553/10000 | 1501084294593499/15625000000000000 | 10630007989631476623947/156250000000000000000 |
| `a * b * e * f` | 200 | 57871318097901/31250000000000000 | 57871318097901/156250000000000 |
| `a * e * f` | 163241/1250 | 1557900183/312500000000 | 254313183773103/390625000000000 |
| `b * e * f` | 1275543/1000 | 1066378929/125000000000 | 1360212178233447/125000000000000 |
| `e * f` | 13152427411003/10000000000 | 28707/1250000 | 377566733687663121/12500000000000000 |
| `a * b * e * u` | 1700 | 1439275627105393/390625000000000000 | 24467685660791681/3906250000000000 |
| `a * e * u` | -12275269/2500 | 38745406819/3906250000000 | 0 |
| `b * e * u` | 24170421/10000 | 26521137797/1562500000000 | 641027065952502537/15625000000000000 |
| `e * u` | 777476475217/625000000 | 713951/15625000 | 555080106957652367/9765625000000000 |
| `a * c * e * f` | 1300 | 178378013053317/78125000000000000 | 2318914169693121/781250000000000 |
| `c * e * f` | -20915249/10000 | 3286922793/312500000000 | 0 |
| `a * c * e * u` | -4100 | 4436310335368681/976562500000000000 | 0 |
| `c * e * u` | -15158923/5000 | 81746675549/3906250000000 | 0 |
| `a * b * h * u` | 100 | 23542231432562913301/1562500000000000000000 | 23542231432562913301/15625000000000000000 |
| `a * h * u` | 3663813/500 | 633758619338383/15625000000000000 | 2321973068394019034379/7812500000000000000 |
| `b * h * u` | -17799651/10000 | 433806250945529/6250000000000000 | 0 |
| `h * u` | 10321285422413/10000000000 | 11678096507/62500000000 | 120532967239231274811391/625000000000000000000 |
| `a * c * h * u` | -1700 | 72564728155625515117/3906250000000000000000 | 0 |
| `c * h * u` | 645167/2500 | 1337130371954993/15625000000000000 | 862672390683086968831/39062500000000000000 |
| `a * b * r * k` | -2200 | 40203000595851443009/3125000000000000000000 | 0 |
| `a * b * r` | 418939/1250 | 213569697655963/6250000000000000 | 89472675566291483257/7812500000000000000 |
| `a * b * k` | 6670913/1250 | 379484813205949/12500000000000000 | 2531510173718136861437/15625000000000000000 |
| `a * r * k` | 330167/200 | 1082267763099347/31250000000000000 | 357329100539222100949/6250000000000000000 |
| `a * r` | -1795059414937/5000000000 | 5749312129/62500000000 | 0 |
| `a * k` | -1639536739999/1250000000 | 10215759367/125000000000 | 0 |
| `b * r * k` | -34848553/10000 | 740809681325461/12500000000000000 | 0 |
| `b * r` | 706170049857/1000000000 | 3935390327/25000000000 | 2779054783424345533239/25000000000000000000 |
| `b * k` | -3772885695937/10000000000 | 6992662721/50000000000 | 0 |
| `r * k` | -2521969845969/1250000000 | 19942651663/125000000000 | 0 |
| `r` | 2031045611344185987/5000000000000000 | 105941/250000 | 215171003111414407648767/1250000000000000000000 |
| `k` | 517493921206641709975429/1032595000000000000000 | 188243/500000 | 97414608209701855410904681247/516297500000000000000000000 |
| `a * b * e * r` | -4200 | 1494987883591741/390625000000000000 | 0 |
| `a * e * r` | 54638603/10000 | 40245184903/3906250000000 | 2198940680576610509/39062500000000000 |
| `b * e * r` | 3516917/2000 | 27547732289/1562500000000 | 96883087998633013/3125000000000000 |
| `e * r` | -1528412018339/1000000000 | 741587/15625000 | 0 |
| `a * b * w * j` | 2200 | 74509693992248651543/6250000000000000000000 | 819606633914735166973/31250000000000000000 |
| `a * b * w` | 684971/1000 | 387564662822293/12500000000000000 | 265470554658048858503/12500000000000000000 |
| `a * b * j` | 1860069/5000 | 387564662822293/12500000000000000 | 720897014811199718217/62500000000000000000 |
| `a * w * j` | 4725689/1000 | 2005806498297269/62500000000000000 | 9478817705131922843341/62500000000000000000 |
| `a * w` | -1460169572103/625000000 | 10433269519/125000000000 | 0 |
| `a * j` | -7703953294449/5000000000 | 10433269519/125000000000 | 0 |
| `b * w * j` | 2392707/625 | 1372969724746147/25000000000000000 | 3285114271188179149929/15625000000000000000 |
| `b * w` | -24987589777/312500000 | 7141547897/50000000000 | 0 |
| `b * j` | -396128837/640000 | 7141547897/50000000000 | 0 |
| `w * j` | -8575184967997/2500000000 | 36960447001/250000000000 | 0 |
| `w` | 2928944202425033047/5000000000000000 | 192251/500000 | 563092451860415028318797/2500000000000000000000 |
| `j` | 1858081403429154569631681/1032595000000000000000 | 192251/500000 | 357218007890658395166260303931/516297500000000000000000000 |
| `a * b * e * j` | -4300 | 2712952639756051/781250000000000000 | 0 |
| `a * e * j` | 27959373/5000 | 73032886633/7812500000000 | 2041953718638761109/39062500000000000 |
| `b * e * j` | -1015123/2500 | 49990835279/3125000000000 | 0 |
| `e * j` | -606001598251/1250000000 | 1345757/31250000 | 0 |
| `a * c * r * k` | 9800 | 123918576607112132153/7812500000000000000000 | 6072010253748494475497/39062500000000000000 |
| `a * c * r` | 53749/500 | 658290489458371/15625000000000000 | 35382455517897982879/7812500000000000000 |
| `a * c * k` | 4270113/5000 | 1169694231762133/31250000000000000 | 4994726545072497031029/156250000000000000000 |
| `c * r * k` | -2972051/1250 | 2283413672761837/31250000000000000 | 0 |
| `c * r` | 10758292327611/5000000000 | 12130138559/62500000000 | 130499576592148051452549/312500000000000000000 |
| `c * k` | -6677885570989/5000000000 | 21553635257/125000000000 | 0 |
| `a * c * e * r` | -800 | 4608033426208597/976562500000000000 | 0 |
| `c * e * r` | -7374171/2500 | 84910969913/3906250000000 | 0 |
| `a * c * w * j` | -2000 | 229662838248539003231/15625000000000000000000 | 0 |
| `a * c * w` | 32927091/5000 | 1194598926655981/31250000000000000 | 39334667566503812081271/156250000000000000000 |
| `a * c * j` | 14325917/2500 | 1194598926655981/31250000000000000 | 17113725071562671359577/78125000000000000000 |
| `c * w * j` | 10703259/5000 | 4231934221167499/62500000000000000 | 45295488040119024179241/312500000000000000000 |
| `c * w` | -5996323410323/5000000000 | 22012547249/125000000000 | 0 |
| `c * j` | 128440292301/500000000 | 22012547249/125000000000 | 2827298002951133429949/62500000000000000000 |
| `a * c * e * j` | -1700 | 8362192486591867/1953125000000000000 | 0 |
| `c * e * j` | -22080149/5000 | 154087830743/7812500000000 | 0 |
| `a * b * u * k` | -1000 | 38704794553314356357/3125000000000000000000 | 0 |
| `a * u * k` | 1040537/1250 | 1041935945118431/31250000000000000 | 1084172902525696837447/39062500000000000000 |
| `b * u * k` | 1936081/2500 | 713202648902953/12500000000000000 | 1380818097690678147193/31250000000000000000 |
| `u * k` | -7290993538853/10000000000 | 19199468299/125000000000 | 0 |
| `a * b * f * k` | -3000 | 1556267218957596849/250000000000000000000 | 0 |
| `a * f * k` | -9914909/10000 | 41894829164067/2500000000000000 | 0 |
| `b * f * k` | -7491707/5000 | 28676909818821/1000000000000000 | 0 |
| `f * k` | -1359274304223158461/2065190000000000 | 771984543/10000000000 | 0 |
| `a * b * v * j` | 1000 | 160266126934937423653/12500000000000000000000 | 160266126934937423653/12500000000000000000 |
| `a * v * j` | -4808953/2500 | 4314376044766399/125000000000000000 | 0 |
| `b * v * j` | -318889/2500 | 2953180027915337/50000000000000000 | 0 |
| `v * j` | -8205082405603/5000000000 | 79499825771/500000000000 | 0 |
| `a * c * u * k` | 1000 | 119300623780115231069/7812500000000000000000 | 119300623780115231069/7812500000000000000 |
| `c * u * k` | 2778011/1250 | 2198319920767201/31250000000000000 | 6106956921410412817211/39062500000000000000 |
| `a * c * f * k` | -2800 | 4796916044456507433/625000000000000000000 | 0 |
| `c * f * k` | 22228291/10000 | 88391458188957/2500000000000000 | 1964791054538469182487/25000000000000000000 |
| `a * c * v * j` | 200 | 493991742749707919101/31250000000000000000000 | 493991742749707919101/156250000000000000000 |
| `c * v * j` | -18704241/10000 | 9102650550953729/125000000000000000 | 0 |
| `a * b * f * w` | -336000 | 1589402682234223593/250000000000000000000 | 0 |
| `a * f * w` | 1004593/1000 | 42786838297419/2500000000000000 | 42983358245719045467/2500000000000000000 |
| `b * f * w` | 1993567/5000 | 29287487925597/1000000000000000 | 58386569441368634499/5000000000000000000 |
| `f * w` | 28430094221369/5000000000 | 788421351/10000000000 | 22414893295069040049519/50000000000000000000 |
| `a * c * f * w` | -100 | 4899050198216178081/625000000000000000000 | 0 |
| `c * f * w` | -2041777/1250 | 90273456268149/2500000000000000 | 0 |
| `b * c * e * q` | -700 | 61719554356383/19531250000000000 | 0 |
| `b * e * q` | -14189563/5000 | 539040117/78125000000 | 0 |
| `c * e * q` | -6728471/2000 | 1661494989/195312500000 | 0 |
| `e * q` | 1057206983821/2000000000 | 14511/781250 | 15341130542226531/1562500000000000 |
| `b * b * e * q` | -600 | 20023723226199/7812500000000000 | 0 |
| `a * f * f * v` | -1600 | 377423490699482949/100000000000000000000 | 0 |
| `a * f * f` | -1318427/400 | 912706950069/100000000000000 | 0 |
| `f * f * v` | 19367929/10000 | 6954679295721/400000000000000 | 134697734817294331809/4000000000000000000 |
| `f * f` | 4775195079689/10000000000 | 16818201/400000000 | 80310190664420619489/4000000000000000000 |
| `a * f * u` | 708853/1000 | 22699273337817/1250000000000000 | 16090448003331593901/1250000000000000000 |
| `f * u` | -68658923651/250000000 | 418273293/5000000000 | 0 |
| `a * e * f * f` | 4800 | 6388948650483/6250000000000000 | 19166845951449/3906250000000 |
| `e * f * f` | -8460693/10000 | 117727407/25000000000 | 0 |
| `a * e * f * u` | 1400 | 158894913364719/78125000000000000 | 1112264393553033/390625000000000 |
| `e * f * u` | -10571699/5000 | 2927913051/312500000000 | 0 |
| `b * h * q` | -958597/5000 | 8817079193769/312500000000000 | 0 |
| `h * q` | -1351968685033/10000000000 | 237356427/3125000000 | 0 |
| `b * e * h * p` | -700 | 16009063934438113/1562500000000000000 | 0 |
| `b * e * h` | 880286/625 | 29773060471/1562500000000 | 13104404154887353/488281250000000 |
| `e * h * p` | -29929983/5000 | 430965190579/15625000000000 | 0 |
| `e * h` | -5584577647099/5000000000 | 801493/15625000 | 0 |
| `b * c * h * q` | 200 | 1009546750607356731/78125000000000000000 | 1009546750607356731/390625000000000000 |
| `c * h * q` | -1237293/1000 | 27177073535073/781250000000000 | 0 |
| `b * h * h * p` | -2400 | 261860258775604214341/6250000000000000000000 | 0 |
| `b * h * h` | 12099297/5000 | 486997950124147/6250000000000000 | 5892332836943241424659/31250000000000000000 |
| `h * h * p` | 38730173/10000 | 7049297622300703/62500000000000000 | 273020516440194885211619/625000000000000000000 |
| `h * h` | -23745000757083/10000000000 | 13110021001/62500000000 | 0 |
| `b * c * h * h` | 2400 | 55760778291264707353/1562500000000000000000 | 167282334873794122059/1953125000000000000 |
| `c * h * h` | -77031197/10000 | 1501084294593499/15625000000000000 | 0 |
| `b * h * r * k` | 3200 | 84821967702083959039/3125000000000000000000 | 84821967702083959039/976562500000000000 |
| `b * h * r` | -710847/625 | 450598257051173/6250000000000000 | 0 |
| `b * h * k` | -11482899/5000 | 800652888891779/12500000000000000 | 0 |
| `h * r * k` | -22460493/10000 | 2283413672761837/31250000000000000 | 0 |
| `h * r` | 3865612444459/5000000000 | 12130138559/62500000000 | 46890414566682361794581/312500000000000000000 |
| `h * k` | 6480116614641/2500000000 | 21553635257/125000000000 | 139670069934797739997737/312500000000000000000 |
| `b * f * h * k` | 2400 | 3283477497345185679/250000000000000000000 | 9850432492035557037/312500000000000000 |
| `b * f * h` | 232431/500 | 17442760141653/500000000000000 | 4054238182484548443/250000000000000000 |
| `f * h * k` | 10779061/5000 | 88391458188957/2500000000000000 | 952776919697717029377/12500000000000000000 |
| `f * h` | -158951916652703697/129074375000000 | 469560399/5000000000 | 0 |
| `b * h * w * j` | -3200 | 157203660513709085353/6250000000000000000000 | 0 |
| `b * h * w` | 4194013/1000 | 817700092658603/12500000000000000 | 3429444818711385543839/12500000000000000000 |
| `b * h * j` | 2505333/2500 | 817700092658603/12500000000000000 | 2048611026240655829799/31250000000000000000 |
| `h * w * j` | 13085633/2500 | 4231934221167499/62500000000000000 | 55377538098338723441867/156250000000000000000 |
| `h * w` | -37499616480633/10000000000 | 22012547249/125000000000 | 0 |
| `h * j` | -1019878687914722323/258148750000000 | 22012547249/125000000000 | 0 |
| `b * f * h * w` | -2400 | 3353388079992930903/250000000000000000000 | 0 |
| `f * h * w` | 23353/250 | 90273456268149/2500000000000000 | 2108156024230083597/625000000000000000 |
| `b * c * q * q` | 1700 | 18277805168683137/3906250000000000000 | 310722687867613329/39062500000000000 |
| `b * q * q` | -5835161/5000 | 159632880363/15625000000000 | 0 |
| `c * q * q` | 2323257/1000 | 492039873171/39062500000000 | 1143135079623637947/39062500000000000 |
| `q * q` | 18081852877/125000000 | 4297329/156250000 | 77703670742065533/19531250000000000 |
| `a * b * p * q` | -1900 | 2247073750281137217/312500000000000000000 | 0 |
| `a * p * q` | 1316623/1250 | 60491392313811/3125000000000000 | 79644358422386780253/3906250000000000000 |
| `b * p * q` | 1182099/5000 | 41406212575893/1250000000000000 | 48946242479750539407/6250000000000000000 |
| `p * q` | -317215921323/625000000 | 1114658319/12500000000 | 0 |
| `a * c * p * q` | 100 | 6926203928539045689/781250000000000000000 | 6926203928539045689/7812500000000000000 |
| `c * p * q` | -173501/5000 | 127627262867181/3125000000000000 | 0 |
| `a * a * p * p` | 3100 | 851507656049465267449/62500000000000000000000 | 26396737337533423290919/625000000000000000000 |
| `a * p * p` | -884589/1250 | 15690498370146221/250000000000000000 | 0 |
| `p * p` | 124138398941/625000000 | 289124516209/1000000000000 | 35891454536776462934669/625000000000000000000 |
| `b * f * q * v` | -2600 | 130590139731177951/25000000000000000000 | 0 |
| `b * f * q` | 6161091/1250 | 315800502831/25000000000000 | 1945675635787548621/31250000000000000 |
| `b * q * v` | 6522499/5000 | 31843486888851/1250000000000000 | 207699111389043758649/6250000000000000000 |
| `f * q * v` | -569637/1250 | 3515496264333/250000000000000 | 0 |
| `f * q` | -6063227066171/2000000000 | 8501373/250000000 | 0 |
| `q * v` | 87213222649/312500000 | 857229033/12500000000 | 74761706516215968417/3906250000000000000 |
| `b * c * q * v` | -100 | 3646047405286550649/312500000000000000000 | 0 |
| `c * q * v` | -7637507/5000 | 98151867049467/3125000000000000 | 0 |
| `b * q * u` | 77677/1250 | 7854045521883/312500000000000 | 610078694003305791/390625000000000000 |
| `q * u` | -179106998947/312500000 | 211431489/3125000000 | 0 |
| `a * p * u` | 20308/125 | 2976217354685251/62500000000000000 | 15110255509737019327/1953125000000000000 |
| `p * u` | 112385010087/312500000 | 54841942079/250000000000 | 6163412213739084750873/78125000000000000000 |
| `a * c * q * u` | 2100 | 1313781617888467959/195312500000000000000 | 27589413975657827139/1953125000000000000 |
| `a * q * u` | -198079/2500 | 11474175476541/781250000000000 | 0 |
| `c * q * u` | 9012301/2500 | 24208694059011/781250000000000 | 218176037676718894311/1953125000000000000 |
| `a * a * c * u` | 4200 | 34393446512874707027/3906250000000000000000 | 722262376770368847567/19531250000000000000 |
| `a * a * u` | -167597/2500 | 300382068951473/15625000000000000 | 0 |
| `a * a * p * u` | -752200 | 161516339621413886519/15625000000000000000000 | 0 |
| `a * b * c * w` | -4200 | 44375766328489726207/3125000000000000000000 | 0 |
| `b * c * w` | -2092011/1000 | 817700092658603/12500000000000000 | 0 |
| `a * c * q * r` | -1000 | 1364636184647203083/195312500000000000000 | 0 |
| `a * q * r` | -38986/125 | 11918324043417/781250000000000 | 0 |
| `c * q * r` | -8557873/5000 | 25145777232807/781250000000000 | 0 |
| `q * r` | 25387936447/15625000 | 219615693/3125000000 | 5575589256647862771/48828125000000000 |
| `a * a * c * r` | -3000 | 35724766572416335799/3906250000000000000000 | 0 |
| `a * a * r` | 58387/250 | 312009419928701/15625000000000000 | 18217294001377065287/3906250000000000000 |
| `b * b * q * w` | -3000 | 549940116279997707/62500000000000000000 | 0 |
| `b * b * w` | 14763/25 | 265287079729859/5000000000000000 | 3916433158051908417/125000000000000000 |
| `b * q * w` | 143671/1000 | 14804428790481/625000000000000 | 2126967088757195751/625000000000000000 |
| `q * w` | -1832237071751/5000000000 | 398536323/6250000000 | 0 |
| `b * b * e * w` | 3000 | 1857009558109013/312500000000000000 | 5571028674327039/312500000000000 |
| `b * e * w` | 11618447/5000 | 49990835279/3125000000000 | 580815870174791713/15625000000000000 |
| `e * w` | 7068389536321/5000000000 | 1345757/31250000 | 9512334697230739997/156250000000000000 |
| `a * b * q * r` | -800 | 442729983240811299/78125000000000000000 | 0 |
| `b * q * r` | 1716887/2500 | 8158064147871/312500000000000 | 14006474280645797577/781250000000000000 |
| `a * e * p * r` | -700 | 21639956657897809/3906250000000000000 | 0 |
| `a * p * r` | 377679/2500 | 3091422379699687/62500000000000000 | 1167565312942598086473/156250000000000000000 |
| `e * p * r` | -2238501/5000 | 398753554661/15625000000000 | 0 |
| `p * r` | -285150851311/625000000 | 56964793523/250000000000 | 0 |
| `b * c * v * w` | 1400 | 338136160016278171163/12500000000000000000000 | 2366953120113947198141/62500000000000000000 |
| `b * v * w` | -241337/500 | 2953180027915337/50000000000000000 | 0 |
| `c * v * w` | 985027/10000 | 9102650550953729/125000000000000000 | 8966356564254298815683/1250000000000000000000 |
| `v * w` | -4743136756807/10000000000 | 79499825771/500000000000 | 0 |
| `b * u * w` | -1105179/2500 | 728387894658721/12500000000000000 | 0 |
| `u * w` | 221907167779/2500000000 | 19608256243/125000000000 | 4351212607969025194297/312500000000000000000 |
| `a * f * v * r` | -1900 | 9749968794975353109/1250000000000000000000 | 0 |
| `a * f * r` | 26356173/10000 | 23577929041029/1250000000000000 | 621423976787084422017/12500000000000000000 |
| `a * v * r` | -2211899/10000 | 2377461300896209/62500000000000000 | 0 |
| `f * v * r` | -4121707/2500 | 179660004698361/5000000000000000 | 0 |
| `f * r` | 435712213311/250000000 | 434464041/5000000000 | 189301288908151049751/1250000000000000000 |
| `v * r` | 14270155208299/10000000000 | 43808828261/250000000000 | 625158778778185572938039/2500000000000000000000 |
| `a * c * v * r` | 1400 | 272216941491315034291/15625000000000000000000 | 1905518590439205240037/78125000000000000000 |
| `c * v * r` | 22881/10000 | 5016067027056239/62500000000000000 | 114772629646073804559/625000000000000000000 |
| `a * u * r` | 2047693/625 | 586389591973097/15625000000000000 | 1200745862756166915221/9765625000000000000 |
| `u * r` | -7794252642519/5000000000 | 10805240413/62500000000 | 0 |
| `b * h * u * w` | -2900 | 83399685550528895779/3125000000000000000000 | 0 |
| `h * u * w` | 33364407/10000 | 2245125731567257/31250000000000000 | 74907288674182710421599/312500000000000000000 |
| `b * e * u * w` | 3900 | 5098715262611047/781250000000000000 | 198849895241830833/7812500000000000 |
| `e * u * w` | -8481411/5000 | 137257793701/7812500000000 | 0 |
| `a * h * u * r` | -3900 | 67141021891327633403/3906250000000000000000 | 0 |
| `a * h * r` | 4881679/10000 | 658290489458371/15625000000000000 | 3213562858288651084909/156250000000000000000 |
| `h * u * r` | 2267943/1250 | 1237189222048087/15625000000000000 | 2805874635819404575041/19531250000000000000 |
| `a * e * u * r` | 3700 | 4104727143811679/976562500000000000 | 151874904321032123/9765625000000000 |
| `e * u * r` | 7281937/5000 | 75636682891/3906250000000 | 550781559701239867/19531250000000000 |
| `b * c * q * k` | -2500 | 1659753438672657867/156250000000000000000 | 0 |
| `b * c * k` | 948409/1250 | 800652888891779/12500000000000000 | 759346405700963229611/15625000000000000000 |
| `b * q * k` | -1268913/500 | 14495789820633/625000000000000 | 0 |
| `c * q * k` | -249838/625 | 44680685887761/1562500000000000 | 0 |
| `q * k` | -146600614971/1250000000 | 390227739/6250000000 | 0 |
| `a * b * c * k` | 300 | 43450631627267954551/3125000000000000000000 | 130351894881803863653/31250000000000000000 |
| `a * b * p * k` | -4200 | 204050122515278395147/12500000000000000000000 | 0 |
| `a * p * k` | 72239/500 | 5493044458914001/125000000000000000 | 396812038667488518239/62500000000000000000 |
| `b * p * k` | 551649/1250 | 3759975723069863/50000000000000000 | 2074186847655766854087/62500000000000000000 |
| `p * k` | 6238096396039/5000000000 | 101218825829/500000000000 | 631412792615184146491331/2500000000000000000000 |
| `a * c * q * j` | -18052100 | 2476403574957848613/390625000000000000000 | 0 |
| `a * q * j` | 2241487/1250 | 21628167712887/1562500000000000 | 48479256762255942969/1953125000000000000 |
| `c * q * j` | -249967/2000 | 45632010447177/1562500000000000 | 0 |
| `q * j` | -1759363338889/1250000000 | 398536323/6250000000 | 0 |
| `a * a * c * j` | -20341400 | 64829689150693432889/7812500000000000000000 | 0 |
| `a * a * j` | 17033/200 | 566203103526611/31250000000000000 | 9644137462368765163/6250000000000000000 |
| `a * a * p * j` | -300 | 304449107375569314533/31250000000000000000000 | 0 |
| `a * p * j` | -1000913/2500 | 5610000320174857/125000000000000000 | 0 |
| `p * j` | -1547051117001/2500000000 | 103373939453/500000000000 | 0 |
| `b * b * q * k` | 300 | 538475104467054051/62500000000000000000 | 1615425313401162153/625000000000000000 |
| `b * b * k` | 55587/250 | 259756442096987/5000000000000000 | 14439081346845216369/1250000000000000000 |
| `b * e * p * k` | 4200 | 26319830061489041/3125000000000000000 | 552716431291269861/15625000000000000 |
| `b * e * k` | 2338107/625 | 48948639047/3125000000000 | 114447155596264029/1953125000000000 |
| `e * p * k` | -17049261/10000 | 708531780803/31250000000000 | 0 |
| `e * k` | 5640846244191/2500000000 | 1317701/31250000 | 7432948736816724891/78125000000000000 |
| `b * b * e * k` | -300 | 1818295094678909/312500000000000000 | 0 |
| `a * b * q * j` | -1900 | 803421546030613389/156250000000000000000 | 0 |
| `b * q * j` | -8013423/5000 | 14804428790481/625000000000000 | 0 |
| `a * e * p * j` | -3600 | 39270002241223999/7812500000000000000 | 0 |
| `e * p * j` | 323614/625 | 723617576171/31250000000000 | 117086389147500997/9765625000000000 |
| `c * e * e * p` | 4800 | 3016756334053/976562500000000 | 9050269002159/610351562500 |
| `c * e * e` | -10591663/2500 | 5610451/976562500 | 0 |
| `e * e * p` | -3313329/2000 | 26347447/3906250000 | 0 |
| `e * e` | 3523825349211/5000000000 | 196/15625 | 172667442111339/19531250000000 |
| `b * c * e * e` | 4200 | 208411423297/97656250000000 | 4376639889237/488281250000 |
| `b * e * e` | -13668211/2500 | 1820203/390625000 | 0 |
| `c * e * f * v` | 2300 | 1359211600284153/312500000000000000 | 31261866806535519/3125000000000000 |
| `c * e * v` | -43284239/10000 | 331434186853/15625000000000 | 0 |
| `e * f * v` | -2629273/2500 | 11870947347/1250000000000 | 0 |
| `e * v` | -20352938560321/10000000000 | 2894647/62500000 | 0 |
| `c * e * e * f` | -2300 | 23008459551/19531250000000 | 0 |
| `e * e * f` | 18507463/10000 | 200949/78125000 | 3719056182387/781250000000 |
| `c * e * f * k` | 4900 | 618740207322699/156250000000000000 | 30318270158812251/1562500000000000 |
| `c * e * k` | -2351893/1000 | 150875446799/7812500000000 | 0 |
| `e * f * k` | -25334437/10000 | 5403891801/625000000000 | 0 |
| `c * e * h * j` | -6700 | 17642902532242757/1953125000000000000 | 0 |
| `c * e * h` | 33414941/10000 | 91770147007/3906250000000 | 3066494047800231587/39062500000000000 |
| `c * h * j` | -45602287/10000 | 2520414647463251/31250000000000000 | 0 |
| `e * h * j` | 24413193/5000 | 154087830743/7812500000000 | 3761775950880192399/39062500000000000 |
| `c * e * f * h` | 800 | 376349372875707/78125000000000000 | 376349372875707/97656250000000 |
| `c * f * h` | 13624691/10000 | 53764196125101/1250000000000000 | 732520559067898468791/12500000000000000000 |
| `e * f * h` | 147143/500 | 3286922793/312500000000 | 483647680530399/156250000000000 |
| `a * c * h * j` | -2000 | 136780382503183168519/7812500000000000000000 | 0 |
| `a * h * j` | -806791/500 | 1194598926655981/31250000000000000 | 0 |
| `a * c * f * h` | -3100 | 2917729159513106169/312500000000000000000 | 0 |
| `a * f * h` | 8398421/2500 | 25482573293331/1250000000000000 | 214013378680750230351/3125000000000000000 |
| `c * c * q * q` | -3000 | 56338073438206329/9765625000000000000 | 0 |
| `c * e * q * j` | -700 | 319424073130239/97656250000000000 | 0 |
| `e * q * j` | -9175859/5000 | 2789754261/390625000000 | 0 |
| `c * h * q * j` | 3000 | 5224819564191319323/390625000000000000000 | 15674458692573957969/390625000000000000 |
| `h * q * j` | -9526959/5000 | 45632010447177/1562500000000000 | 0 |
| `c * c * q * v` | 2100 | 11238290625296922033/781250000000000000000 | 236004103131235362693/7812500000000000000 |
| `c * e * q * u` | -1000 | 169460858413077/48828125000000000 | 0 |
| `e * q * u` | -115861/500 | 1480020423/195312500000 | 0 |
| `c * c * e * q` | 2000 | 190239514745511/48828125000000000 | 190239514745511/24414062500000 |
| `c * c * e` | 244927/10000 | 91770147007/3906250000000 | 22476986795983489/39062500000000000 |
| `a * c * c * e` | -100 | 4980274107922883/976562500000000000 | 0 |
| `a * e * p * u` | -1900 | 20833521482796757/3906250000000000000 | 0 |
| `e * p * u` | 229829/1250 | 383893594553/15625000000000 | 88229880942521437/19531250000000000 |
| `c * f * q * w` | -2500 | 187136874843872877/31250000000000000000 | 0 |
| `c * f * q` | 7670301/10000 | 973398707127/62500000000000 | 7466261076674935227/625000000000000000 |
| `c * q * w` | -3540827/2000 | 45632010447177/1562500000000000 | 0 |
| `f * q * w` | 158757/400 | 1634397460623/125000000000000 | 259472037656125611/50000000000000000 |
| `c * c * q * w` | 2700 | 5224819564191319323/390625000000000000000 | 141070128233165621721/3906250000000000000 |
| `c * c * w` | 3279683/5000 | 2520414647463251/31250000000000000 | 8266161072236217429433/156250000000000000000 |
| `a * c * c * w` | -3600 | 136780382503183168519/7812500000000000000000 | 0 |
| `a * c * p * w` | -3000 | 642339426659700951643/31250000000000000000000 | 0 |
| `a * p * w` | 2442743/2500 | 5610000320174857/125000000000000000 | 13703789012104890712751/312500000000000000000 |
| `c * p * w` | 127914/125 | 11836212693429047/125000000000000000 | 757008655233641558979/7812500000000000000 |
| `p * w` | 1378993089417/2500000000 | 103373939453/500000000000 | 142551948131498373068901/1250000000000000000000 |
| `c * h * q * r` | 5200 | 2879166347379168693/195312500000000000000 | 37429162515929193009/488281250000000000 |
| `c * h * r` | -2754637/2000 | 1388888734866941/15625000000000000 | 0 |
| `h * q * r` | -12935281/10000 | 25145777232807/781250000000000 | 0 |
| `c * c * h * q` | -500 | 3111747742692323427/195312500000000000000 | 0 |
| `a * c * h * r` | -4300 | 75373602752494021129/3906250000000000000000 | 0 |
| `a * h * p * r` | 700 | 353964771053234461813/15625000000000000000000 | 2477753397372641232691/156250000000000000000 |
| `h * p * r` | 9487487/5000 | 6522411893589977/62500000000000000 | 61881298049080290117799/312500000000000000000 |
| `c * c * q * k` | 4100 | 5115893853462746739/390625000000000000000 | 209751647991972616299/3906250000000000000 |
| `c * c * k` | -2366591/10000 | 2467869683291243/31250000000000000 | 0 |
| `a * c * c * k` | -4100 | 133928819842532466367/7812500000000000000000 | 0 |
| `a * c * p * k` | 700 | 628948097501194200499/31250000000000000000000 | 4402636682508359403493/312500000000000000000 |
| `c * p * k` | 1261967/2500 | 11589454338594671/125000000000000000 | 14625508923313301177857/312500000000000000000 |
| `c * h * p * q` | 1100 | 14613193971029357319/781250000000000000000 | 160745133681322930509/7812500000000000000 |
| `h * p * q` | -372069/2500 | 127627262867181/3125000000000000 | 0 |
| `c * e * p * q` | 4400 | 893390840070267/195312500000000000 | 9827299240772937/488281250000000 |
| `e * p * q` | 3798129/2500 | 7802608233/781250000000 | 29635312605396057/1953125000000000 |
| `c * p * q * v` | 100 | 52776553368099554301/3125000000000000000000 | 52776553368099554301/31250000000000000000 |
| `c * p * v` | -141371/250 | 25459022367631237/250000000000000000 | 0 |
| `p * q * v` | 26839/625 | 460934622731199/12500000000000000 | 12371024339482649961/7812500000000000000 |
| `p * v` | -584862069/15625000 | 222351482263/1000000000000 | 0 |
| `c * q * q * u` | -100 | 50184622784329803/9765625000000000000 | 0 |
| `q * q * u` | -26839/625 | 438297476697/39062500000000 | 0 |
| `c * f * q * v` | -400 | 402520806769864167/62500000000000000000 | 0 |
| `c * h * q * u` | -2000 | 2771871261062700489/195312500000000000000 | 0 |
| `h * q * u` | 586271/250 | 24208694059011/781250000000000 | 14192855274670437981/195312500000000000 |
| `c * f * h * q` | 1300 | 111453178567334373/15625000000000000000 | 1448891321375346849/156250000000000000 |
| `f * h * q` | 8351389/5000 | 973398707127/62500000000000 | 8129231255314649403/312500000000000000 |
| `a * h * p * u` | -2600 | 340773910894106554249/15625000000000000000000 | 0 |
| `h * p * u` | -881928/625 | 6279347526103421/62500000000000000 | 0 |
| `a * f * h * p` | -900 | 13702056107543958693/1250000000000000000000 | 0 |
| `a * f * p` | 257077/5000 | 119669657442807/5000000000000000 | 30764316526424495139/25000000000000000000 |
| `f * h * p` | -231133/5000 | 252484035223497/5000000000000000 | 0 |
| `f * p` | -101609653511/125000000 | 2205120003/20000000000 | 0 |
| `c * e * q * r` | -900 | 176020440629649/48828125000000000 | 0 |
| `e * q * r` | -8447641/10000 | 1537309851/195312500000 | 0 |
| `c * q * r * k` | -100 | 4733516543635288101/390625000000000000000 | 0 |
| `q * r * k` | -8657417/5000 | 41341116897399/1562500000000000 | 0 |
| `c * q * w * j` | 100 | 8772799640480225427/781250000000000000000 | 8772799640480225427/7812500000000000000 |
| `q * w * j` | 1915529/625 | 76619006633073/3125000000000000 | 146765929156843690617/1953125000000000000 |
| `c * f * q * k` | -3500 | 183235492825707861/31250000000000000000 | 0 |
| `f * q * k` | 20526309/5000 | 1600323957639/125000000000000 | 32848744054601024451/625000000000000000 |
| `a * c * f * q` | -4900 | 52825374437075163/15625000000000000000 | 0 |
| `a * f * q` | 3001501/2500 | 461361011337/62500000000000 | 1384775536889016837/156250000000000000 |
| `a * a * c * f` | -41546200 | 1382913770055780039/312500000000000000000 | 0 |
| `a * a * f` | -4820873/2500 | 12077955004461/1250000000000000 | 0 |
| `a * p * r * k` | -800 | 581938623021808179941/31250000000000000000000 | 0 |
| `p * r * k` | -2428497/2500 | 10723223627150089/125000000000000000 | 0 |
| `a * p * w * j` | 800 | 1078528171553936433107/62500000000000000000000 | 1078528171553936433107/78125000000000000000 |
| `p * w * j` | -3349297/2500 | 19873743233778703/250000000000000000 | 0 |
| `a * f * p * k` | -900 | 22526975326006318101/2500000000000000000000 | 0 |
| `f * p * k` | 5157133/1250 | 415098404724729/10000000000000000 | 2140717681253255841957/12500000000000000000 |
| `a * a * f * p` | 2200 | 6494352639763693083/1250000000000000000000 | 71437879037400623913/6250000000000000000 |
| `c * e * f * q` | 2300 | 6813790949889/3906250000000000 | 156717191847447/39062500000000 |
| `e * f * q` | 563631/5000 | 59509611/15625000000 | 33541461557541/78125000000000 |
| `a * e * f * p` | 1200 | 837687602099649/312500000000000000 | 2513062806298947/781250000000000 |
| `e * f * p` | 10866219/10000 | 15435840021/1250000000000 | 167729218117150599/12500000000000000 |
| `c * f * v * v` | -1600 | 80294648594443318959/5000000000000000000000 | 0 |
| `c * v * v` | -13260683/2500 | 19579285197377059/250000000000000000 | 0 |
| `f * v * v` | -12685331/5000 | 701269431125541/20000000000000000 | 0 |
| `v * v` | 2871995361957/2000000000 | 170999617441/1000000000000 | 491110108186973325092037/2000000000000000000000 |
| `c * u * v` | 7276737/2500 | 4829138145671147/62500000000000000 | 35140368222716625207339/156250000000000000000 |
| `u * v` | -2432853538007/2500000000 | 42176247353/250000000000 | 0 |
| `c * e * u * v` | -2800 | 33803967019698029/3906250000000000000 | 0 |
| `e * u * v` | 1149248/625 | 295233731471/15625000000000 | 5301512116024747/152587890625000 |
| `a * f * u * v` | -3700 | 9386626209927423657/1250000000000000000000 | 0 |
| `a * u * v` | 220351/500 | 2288862767599957/62500000000000000 | 504353199703418124907/31250000000000000000 |
| `f * u * v` | 466739/125 | 172964790394653/5000000000000000 | 80729413304009946567/625000000000000000 |
| `a * u * u` | 352983/2500 | 564537182527181/15625000000000000 | 199272028299991930923/39062500000000000000 |
| `u * u` | -2188022305319/10000000000 | 10402572049/62500000000 | 0 |
| `a * e * u * u` | 3500 | 3951760277690267/976562500000000000 | 27662321943831869/1953125000000000 |
| `e * u * u` | -4531301/2000 | 72818004343/3906250000000 | 0 |
| `c * h * u * w` | -2200 | 257064651138719359243/7812500000000000000000 | 0 |
| `c * h * w` | 78050063/10000 | 2520414647463251/31250000000000000 | 196718522020629530734813/312500000000000000000 |
| `c * u * w` | 12898819/5000 | 2245125731567257/31250000000000000 | 28959470443728634369483/156250000000000000000 |
| `c * e * u * w` | 5000 | 15715880120970799/1953125000000000000 | 15715880120970799/390625000000000 |
| `c * e * w` | -11416913/5000 | 154087830743/7812500000000 | 0 |
| `c * r * w * k` | -200 | 438988562002135925087/15625000000000000000000 | 0 |
| `c * r * w` | -8347053/5000 | 2332031268106309/31250000000000000 | 0 |
| `c * w * k` | -2146567/5000 | 4143707931793507/62500000000000000 | 0 |
| `r * w * k` | -10289767/5000 | 3833994724863413/62500000000000000 | 0 |
| `r * w` | 1516026362739/1000000000 | 20367263191/125000000000 | 30877307934399648640149/125000000000000000000 |
| `w * k` | 6601028184003/5000000000 | 36189904993/250000000000 | 238890582835183892426979/1250000000000000000000 |
| `c * e * r * w` | 4200 | 16324218876744163/1953125000000000000 | 342808596411627423/9765625000000000 |
| `e * r * w` | -14105807/2500 | 142570842337/7812500000000 | 0 |
| `c * w * w * j` | 200 | 813593585953672850249/31250000000000000000000 | 813593585953672850249/156250000000000000000 |
| `c * w * w` | 769/10 | 4231934221167499/62500000000000000 | 3254357416077806731/625000000000000000 |
| `w * w * j` | 8152067/5000 | 7105682896389251/125000000000000000 | 57926003052119232231817/625000000000000000000 |
| `w * w` | -382615113607/625000000 | 36960447001/250000000000 | 0 |
| `c * e * w * j` | 1200 | 29623539548172493/3906250000000000000 | 88870618644517479/9765625000000000 |
| `e * w * j` | 687926/625 | 258723129007/15625000000000 | 88991183622634741/4882812500000000 |
| `a * r * r * k` | -4000 | 114656529090507920527/7812500000000000000000 | 0 |
| `a * r * r` | 112281/250 | 609087876258389/15625000000000000 | 68388995834168175309/3906250000000000000 |
| `r * r * k` | 19883987/5000 | 2112744459829883/31250000000000000 | 42009783373579415783521/156250000000000000000 |
| `r * r` | -427465433971/625000000 | 11223495481/62500000000 | 0 |
| `a * e * r * r` | -6300 | 4263615133808723/976562500000000000 | 0 |
| `e * r * r` | 3290133/2500 | 78564468367/3906250000000 | 258487550001722811/9765625000000000 |
| `a * r * w * j` | -6000 | 212497146236110975129/15625000000000000000000 | 0 |
| `a * r * w` | -113858/125 | 1105311006112379/31250000000000000 | 0 |
| `a * r * j` | -3469449/5000 | 1105311006112379/31250000000000000 | 0 |
| `r * w * j` | -2395187/5000 | 3915626715732941/62500000000000000 | 0 |
| `r * j` | 1813186313737/5000000000 | 20367263191/125000000000 | 36929642866200577754767/625000000000000000000 |
| `a * e * r * j` | -1700 | 7737177042786653/1953125000000000000 | 0 |
| `e * r * j` | 23789681/5000 | 142570842337/7812500000000 | 3391714859098524497/39062500000000000 |
| `c * e * p * k` | 1200 | 81126180370162697/7812500000000000000 | 243378541110488091/19531250000000000 |
| `b * c * e * k` | -7800 | 5604570222242453/781250000000000000 | 0 |
| `c * r * k * k` | 200 | 429836640001706482391/15625000000000000000000 | 429836640001706482391/78125000000000000000 |
| `c * k * k` | 402992/625 | 4057320961683451/62500000000000000 | 102191743061921080337/2441406250000000000 |
| `r * k * k` | 13873681/5000 | 3754064576998109/62500000000000000 | 52082694394671701869229/312500000000000000000 |
| `k * k` | 149249764133/500000000 | 35435427049/250000000000 | 5288729129015378233517/125000000000000000000 |
| `c * e * r * k` | 500 | 15983895709332859/1953125000000000000 | 15983895709332859/3906250000000000 |
| `e * r * k` | 15248043/5000 | 139598561641/7812500000000 | 2128604870640118563/39062500000000000 |
| `c * w * j * k` | -200 | 796631993595233514257/31250000000000000000000 | 0 |
| `c * j * k` | -3674657/5000 | 4143707931793507/62500000000000000 | 0 |
| `w * j * k` | -10628181/5000 | 6957545424809243/125000000000000000 | 0 |
| `j * k` | 7102333957343/5000000000 | 36189904993/250000000000 | 257032791144800884713599/1250000000000000000000 |
| `c * e * j * k` | 1000 | 29005955522554549/3906250000000000000 | 29005955522554549/3906250000000000 |
| `e * j * k` | -573121/500 | 253329334951/15625000000000 | 0 |
| `a * r * j * k` | 1800 | 208067059723612560097/15625000000000000000000 | 1872603537512513040873/78125000000000000000 |
| `a * j * k` | -1128869/1250 | 1963989954065117/62500000000000000 | 0 |
| `r * j * k` | -15214083/5000 | 3833994724863413/62500000000000000 | 0 |
| `a * w * j * j` | -1800 | 385618305104148262519/31250000000000000000000 | 0 |
| `a * j * j` | 3562659/5000 | 2005806498297269/62500000000000000 | 7146004573417250078271/312500000000000000000 |
| `w * j * j` | 18465383/5000 | 7105682896389251/125000000000000000 | 131209156158376836798133/625000000000000000000 |
| `j * j` | -239673198057/156250000 | 36960447001/250000000000 | 0 |
| `a * e * j * j` | -4700 | 14040645488080883/3906250000000000000 | 0 |
| `e * j * j` | 1114081/500 | 258723129007/15625000000000 | 288238522287247567/7812500000000000 |
| `e * e * f * p` | 700 | 108050880147/78125000000000 | 756356161029/781250000000 |
| `e * f * f * v` | 2100 | 48682755070047/25000000000000000 | 1022337856470987/250000000000000 |
| `e * f * h * p` | 100 | 1767388246564479/312500000000000000 | 1767388246564479/3125000000000000 |
| `e * f * h * u` | -3400 | 335243116426449/78125000000000000 | 0 |
| `e * h * u` | 9731563/2000 | 81746675549/3906250000000 | 795522923145653087/7812500000000000 |
| `f * h * u` | 29194393/10000 | 47891873775207/1250000000000000 | 1398174184499786814351/12500000000000000000 |
| `e * e * f * u` | -3400 | 20495391357/19531250000000 | 0 |
| `e * e * u` | -2726633/1250 | 4997657/976562500 | 0 |
| `a * f * h * u` | -3500 | 2599044097906708683/312500000000000000000 | 0 |
| `e * p * v` | 73751/1250 | 1556460375841/62500000000000 | 114790509178649591/78125000000000000 |
| `e * e * p * u` | -800 | 2687255161871/976562500000000 | 0 |
| `e * p * w` | -2435973/5000 | 723617576171/31250000000000 | 0 |
| `e * e * p * r` | 2600 | 2791274882627/976562500000000 | 36286573474151/4882812500000 |
| `e * e * r` | -294657/400 | 5191109/976562500 | 0 |
| `e * f * p * w` | 300 | 2967555679877271/625000000000000000 | 8902667039631813/6250000000000000 |
| `e * f * w` | -73971499/10000 | 5518949457/625000000000 | 0 |
| `f * p * w` | -884782/625 | 423936525696753/10000000000000000 | 0 |
| `e * f * p * k` | -3000 | 2905688833073103/625000000000000000 | 0 |
| `b * e * p * q` | 3300 | 289843488031251/78125000000000000 | 9564835105031283/781250000000000 |
| `b * e * e * p` | -3200 | 978728613709/390625000000000 | 0 |
| `e * e * p * j` | -3700 | 5065323033197/1953125000000000 | 0 |
| `e * e * j` | 15058459/5000 | 9420299/1953125000 | 141855186259241/9765625000000 |
| `b * e * p * v` | -100 | 57817833581365627/6250000000000000000 | 0 |
| `b * e * v` | 19660231/5000 | 107527452109/6250000000000 | 2114014547304377179/31250000000000000 |
| `b * p * v` | -10279/250 | 8259690511623661/100000000000000000 | 0 |
| `c * e * h * p` | -200 | 49345083356104921/3906250000000000000 | 0 |
| `e * h * p * j` | -3200 | 82853488854003329/7812500000000000000 | 0 |
| `h * p * j` | 16720781/5000 | 11836212693429047/125000000000000000 | 197910720316247233925707/625000000000000000000 |
| `e * h * p * r` | 2300 | 45656883255129839/3906250000000000000 | 1050108314867986297/39062500000000000 |
| `e * h * r` | -16253351/10000 | 84910969913/3906250000000 | 0 |
| `e * e * p * p` | 2500 | 14167101294241/3906250000000000 | 14167101294241/1562500000000 |
| `e * p * p` | -4153973/2500 | 2023871613463/62500000000000 | 0 |
| `e * h * p * u` | -300 | 43955432682723947/3906250000000000000 | 0 |
| `e * h * p * p` | 2700 | 231731275869900037/15625000000000000000 | 6256744448487300999/156250000000000000 |
| `h * p * p` | -2567/10 | 33104467981414291/250000000000000000 | 0 |
| `c * e * p * w` | -3300 | 82853488854003329/7812500000000000000 | 0 |
| `e * p * r * k` | -900 | 75062565390050623/7812500000000000000 | 0 |
| `e * p * w * j` | 1400 | 139116202636450921/15625000000000000000 | 973813418455156447/78125000000000000 |
| `e * v * r` | 65375019/10000 | 306661797827/15625000000000 | 20048020859514283713/156250000000000000 |
| `e * e * u * r` | 500 | 529456780237/244140625000000 | 529456780237/488281250000 |
| `a * u * w` | 3452793/10000 | 1064120458051367/31250000000000000 | 3674187668716553618031/312500000000000000000 |
| `a * c * u * w` | 2300 | 121840728326423470133/7812500000000000000000 | 2802336751507739813059/78125000000000000000 |
| `e * f * u * v` | 100 | 1210753532762571/312500000000000000 | 1210753532762571/3125000000000000 |
| `a * c * u * v` | 500 | 262072498027427476543/15625000000000000000000 | 262072498027427476543/31250000000000000000 |
| `h * p * v` | 136/5 | 25459022367631237/250000000000000000 | 432803380249731029/156250000000000000 |
| `h * v` | 15671841761661/10000000000 | 47347740979/250000000000 | 742026304395000080806119/2500000000000000000000 |
| `c * h * v` | -1202966/625 | 5421268994354521/62500000000000000 | 0 |
| `c * e * h * u` | -4800 | 9359912603684951/976562500000000000 | 0 |
| `e * e * u * u` | -100 | 509726030401/244140625000000 | 0 |
| `h * u * v` | -4866879/2500 | 4829138145671147/62500000000000000 | 0 |
| `e * h * u * u` | -300 | 8337588679269157/976562500000000000 | 0 |
| `h * u * u` | 26318239/10000 | 1191084097038451/15625000000000000 | 31347235934957145607789/156250000000000000000 |
| `a * h * u * u` | 3300 | 64638942862179697319/3906250000000000000000 | 2133085114451930011527/39062500000000000000 |
| `v * r * k` | -14700517/10000 | 8246705258335423/125000000000000000 | 0 |
| `v * k` | 385515216081/1250000000 | 77842433603/500000000000 | 30009442610731440369843/625000000000000000000 |
| `v * w * j` | 15088837/5000 | 15283921004300521/250000000000000000 | 230616592754766860384077/1250000000000000000000 |
| `e * u * r * k` | -5100 | 14238076097450513/1953125000000000000 | 0 |
| `e * u * k` | -12144559/10000 | 134396278093/7812500000000 | 0 |
| `u * r * k` | 35526729/10000 | 2034010871064359/31250000000000000 | 72261752999357423751711/312500000000000000000 |
| `e * u * w * j` | -4600 | 26387948096810951/3906250000000000000 | 0 |
| `e * u * j` | 2655103/1250 | 137257793701/7812500000000 | 364433579828906203/9765625000000000 |
| `u * w * j` | -7004201/2500 | 3769706870972993/62500000000000000 | 0 |
| `u * j` | 593892260757/400000000 | 19608256243/125000000000 | 11645191629657829155951/50000000000000000000 |
| `a * u * r * k` | -5400 | 110383735961791698571/7812500000000000000000 | 0 |
| `a * u * w * j` | -5100 | 204578222180833357117/15625000000000000000000 | 0 |
| `a * u * j` | 14745701/10000 | 1064120458051367/31250000000000000 | 15691202102408500423267/312500000000000000000 |
| `a * e * u * j` | 4200 | 7448843206359569/1953125000000000000 | 156425707333550949/9765625000000000 |
| `f * v * k` | 19886187/10000 | 319231820205903/10000000000000000 | 6348303672964965561861/100000000000000000000 |
| `f * v * w` | 2618163/2500 | 326028785486871/10000000000000000 | 853596503096662637973/25000000000000000000 |
| `e * f * u * w` | 4800 | 562894211967801/156250000000000000 | 1688682635903403/97656250000000 |
| `f * u * w` | -2328353/2500 | 80413458852543/2500000000000000 | 0 |
| `a * f * u * k` | -2100 | 4272979310930685531/625000000000000000000 | 0 |
| `f * u * k` | -1671659/2500 | 78737019494199/2500000000000000 | 0 |
| `a * f * u * w` | 2600 | 4363957998468656067/625000000000000000000 | 56731453980092528871/3125000000000000000 |
| `b * e * q * r` | -200 | 57106449035097/19531250000000000 | 0 |
| `b * e * e * r` | 1300 | 192834126023/97656250000000 | 2506843638299/976562500000 |
| `f * w * k` | -72811777/10000 | 148414800376293/5000000000000000 | 0 |
| `e * f * r * k` | 8200 | 572493701289741/156250000000000000 | 23472241752879381/781250000000000 |
| `e * f * r` | -9521573/5000 | 3041248287/312500000000 | 0 |
| `f * r * k` | -19301729/5000 | 81784814469963/2500000000000000 | 0 |
| `e * h * r * j` | -4100 | 16324218876744163/1953125000000000000 | 0 |
| `h * r * j` | -2958399/1000 | 2332031268106309/31250000000000000 | 0 |
| `e * f * h * r` | 2200 | 348219887613213/78125000000000000 | 3830418763745343/390625000000000 |
| `f * h * r` | -29571527/10000 | 49745698230459/1250000000000000 | 0 |
| `a * f * r * k` | 4500 | 4438380096470422047/625000000000000000000 | 39945420868233798423/1250000000000000000 |
| `a * h * r * j` | 3500 | 126557004888861283121/7812500000000000000000 | 885899034222028981847/15625000000000000000 |
| `a * f * h * r` | -3500 | 2699649297268779471/312500000000000000000 | 0 |
| `f * f * v * v` | 100 | 2875905937045843641/400000000000000000000 | 2875905937045843641/4000000000000000000 |
| `f * h * v` | -3961429/5000 | 194173085754879/5000000000000000 | 0 |
| `f * r * w * k` | 5000 | 15723212366664856713/1250000000000000000000 | 15723212366664856713/250000000000000000 |
| `f * r * w` | -9049947/2500 | 83526146346291/2500000000000000 | 0 |
| `f * f * w * k` | 300 | 608649096343177593/100000000000000000000 | 1825947289029532779/1000000000000000000 |
| `f * f * w` | -22738861/5000 | 3233315960451/200000000000000 | 0 |
| `f * f * k` | 23646939/10000 | 3165908610843/200000000000000 | 74864047800179159577/2000000000000000000 |
| `f * w * w * j` | 5000 | 29140405558092318351/2500000000000000000000 | 29140405558092318351/500000000000000000 |
| `f * w * w` | -11660939/5000 | 151574793151101/5000000000000000 | 0 |
| `f * w * j` | -32282663/5000 | 151574793151101/5000000000000000 | 0 |
| `f * j` | 125945663847/62500000 | 788421351/10000000000 | 99298250442843597297/625000000000000000 |
| `f * f * w * w` | 3700 | 621608226712665201/100000000000000000000 | 22999504388368612437/1000000000000000000 |
| `a * f * f * k` | 3700 | 171810694401838767/50000000000000000000 | 6356995692868034379/500000000000000000 |
| `a * f * w * j` | -4200 | 8225812449517100169/1250000000000000000000 | 0 |
| `a * f * j` | -88767/2500 | 42786838297419/2500000000000000 | 0 |
| `a * f * f * w` | 6300 | 175468823857715319/50000000000000000000 | 11054535903036065097/500000000000000000 |
| `a * f * r * w` | -300 | 4532880436066866279/625000000000000000000 | 0 |
| `c * f * w * k` | -900 | 16993346228285172207/1250000000000000000000 | 0 |
| `a * e * f * r` | -2300 | 165045503287203/78125000000000000 | 0 |
| `c * f * v * k` | 3600 | 36551724181755687597/2500000000000000000000 | 328965517635801188373/6250000000000000000 |
| `c * v * k` | -8446497/2500 | 8912880805109897/125000000000000000 | 0 |
| `f * h * p * k` | 100 | 47528352242576745771/2500000000000000000000 | 47528352242576745771/25000000000000000000 |
| `h * p * k` | -25254783/10000 | 11589454338594671/125000000000000000 | 0 |
| `c * f * h * k` | -4700 | 10120733571177387543/625000000000000000000 | 0 |
| `c * h * k` | -12061033/10000 | 2467869683291243/31250000000000000 | 0 |
| `e * f * f * k` | 2200 | 22161360275901/12500000000000000 | 243774963034911/62500000000000 |
| `e * f * j` | -7745143/10000 | 5518949457/625000000000 | 0 |
| `a * e * f * j` | 3200 | 299507868081933/156250000000000000 | 299507868081933/48828125000000 |
| `f * u * w * k` | 2400 | 15137270734779251949/1250000000000000000000 | 45411812204337755847/1562500000000000000 |
| `u * w * k` | 3977643/10000 | 3691116979951049/62500000000000000 | 14681945617483430397507/625000000000000000000 |
| `f * v * r * k` | -4800 | 33819738264433569723/2500000000000000000000 | 0 |
| `v * r * j` | 322499/400 | 8422291042005511/125000000000000000 | 2716180438755735291989/50000000000000000000 |
| `a * v * r * j` | 500 | 457069312558597076459/31250000000000000000000 | 457069312558597076459/62500000000000000000 |
| `h * p * w` | 227548/125 | 11836212693429047/125000000000000000 | 673326631491098196689/3906250000000000000 |
| `c * h * p * w` | -4000 | 1355234517184932452453/31250000000000000000000 | 0 |
| `h * r * r * k` | -2800 | 241907127906061773617/7812500000000000000000 | 0 |
| `h * r * r` | -244387/625 | 1285079009079019/15625000000000000 | 0 |
| `f * h * r * k` | 6600 | 9364279471996293537/625000000000000000000 | 309021222575877686721/3125000000000000000 |
| `h * r * w * j` | 2800 | 448335343324706011559/15625000000000000000000 | 3138347403272942080913/39062500000000000000 |
| `h * r * w` | -860031/625 | 2332031268106309/31250000000000000 | 0 |
| `f * h * r * w` | 2100 | 9563660230503973209/625000000000000000000 | 200836864840583437389/6250000000000000000 |
| `h * h * p * j` | -4300 | 1355234517184932452453/31250000000000000000000 | 0 |
| `h * h * j` | 13635349/5000 | 2520414647463251/31250000000000000 | 34366733342873392059599/156250000000000000000 |
| `c * h * h * j` | 4300 | 288584956719894776249/7812500000000000000000 | 12409153138955475378707/78125000000000000000 |
| `r * r * k * k` | -1800 | 397709355351756665569/15625000000000000000000 | 0 |
| `f * r * k * k` | 4100 | 15395418830269245009/1250000000000000000000 | 631212172041039045369/12500000000000000000 |
| `f * k * k` | -3942393/5000 | 145320686327949/5000000000000000 | 0 |
| `r * w * j * k` | 3600 | 737089319849716012663/31250000000000000000000 | 6633803878647444113967/78125000000000000000 |
| `f * w * j * k` | 5900 | 28532893787142705543/2500000000000000000000 | 1683440733441419627037/25000000000000000000 |
| `f * j * k` | -17729103/10000 | 148414800376293/5000000000000000 | 0 |
| `w * w * j * j` | -37581800 | 1366074642513729894001/62500000000000000000000 | 0 |
| `a * f * j * k` | 3500 | 8054322801621044817/1250000000000000000000 | 56380259611347313719/2500000000000000000 |
| `c * c * e * h` | -2500 | 10507590062154493/976562500000000000 | 0 |
| `b * c * e * h` | -2700 | 3408985650869029/390625000000000000 | 0 |
| `b * b * q * q` | -400 | 5929882606844361/1562500000000000000 | 0 |
| `b * h * p * q` | -400 | 4740969933727172607/312500000000000000000 | 0 |
| `b * f * h * q` | -2300 | 36158841773646669/6250000000000000000 | 0 |
| `b * e * f * q` | -2100 | 2210603519817/1562500000000000 | 0 |
| `b * e * q * u` | -2100 | 54978318653181/19531250000000000 | 0 |
| `b * h * q * u` | -2600 | 899280358210081617/78125000000000000000 | 0 |
| `b * p * q * v` | -100 | 17122338430595849253/1250000000000000000000 | 0 |
| `b * q * q * u` | 100 | 16281436366863459/3906250000000000000 | 16281436366863459/39062500000000000 |
| `b * q * r * k` | 1000 | 1535698469387680653/156250000000000000000 | 1535698469387680653/156250000000000000 |
| `b * f * q * k` | -1000 | 59447234054415933/12500000000000000000 | 0 |
| `b * q * w * j` | -1000 | 2846166239398762731/312500000000000000000 | 0 |
| `b * f * q * w` | -4000 | 60712962469762581/12500000000000000000 | 0 |
| `b * b * h * q` | -600 | 327528040810937043/31250000000000000000 | 0 |
| `b * b * h` | 69288/125 | 157997125330891/2500000000000000 | 1368413102490846951/39062500000000000 |
| `b * e * q * j` | 5000 | 103631001533367/39062500000000000 | 103631001533367/7812500000000 |
| `b * h * q * j` | 5000 | 1695092292081284019/156250000000000000000 | 1695092292081284019/31250000000000000 |
| `a * b * f * q` | -5000 | 17138177488135539/6250000000000000000 | 0 |
| `c * e * p * v` | 4700 | 178213156573418659/15625000000000000000 | 8376018358950676973/156250000000000000 |
| `b * c * e * v` | 1500 | 12311785739028391/1562500000000000000 | 36935357217085173/3125000000000000 |
| `b * b * q * v` | -6000 | 1182890007460148097/125000000000000000000 | 0 |
| `b * b * v` | 9476/25 | 570617466213289/10000000000000000 | 1351792777459281641/62500000000000000 |
| `b * b * e * v` | -4000 | 3994322263493023/625000000000000000 | 0 |
| `b * r * k * k` | 3300 | 139452236841748755023/6250000000000000000000 | 4601923815777708915759/62500000000000000000 |
| `b * k * k` | 12797/2500 | 1316319808589203/25000000000000000 | 16844944590516030791/62500000000000000000 |
| `b * e * r * k` | -4800 | 5185667769278227/781250000000000000 | 0 |
| `b * w * j * k` | -3300 | 258451939895388949721/12500000000000000000000 | 0 |
| `b * w * k` | -103633/400 | 1344346400774971/25000000000000000 | 0 |
| `b * j * k` | 16736883/10000 | 1344346400774971/25000000000000000 | 22500168421241798955393/250000000000000000000 |
| `b * e * j * k` | 3400 | 9410424805424797/1562500000000000000 | 159977221692221549/7812500000000000 |
| `b * e * f * v` | -4500 | 440970081099009/125000000000000000 | 0 |
| `b * e * h * u` | -4100 | 3036643756618703/390625000000000000 | 0 |
| `b * e * e * u` | 4800 | 185647964579/97656250000000 | 556943893737/61035156250 |
| `b * f * h * v` | -3200 | 7212947616536490213/500000000000000000000 | 0 |
| `b * h * v` | 3038987/2500 | 1758826534146913/25000000000000000 | 5345050972527524697131/62500000000000000000 |
| `b * e * f * h` | -2200 | 122099320991571/31250000000000000 | 0 |
| `b * e * e * f` | 3600 | 7464652503/7812500000000 | 67181872527/19531250000 |
| `b * b * e * h` | -4400 | 1105979877316237/156250000000000000 | 0 |
| `b * v * r * k` | 400 | 306340360231385958181/12500000000000000000000 | 306340360231385958181/31250000000000000000 |
| `b * v * r` | -188243/1250 | 1627366543411367/25000000000000000 | 0 |
| `b * v * k` | -2016691/625 | 2891612881050641/50000000000000000 | 0 |
| `b * f * v * k` | 4600 | 11858504425188678741/1000000000000000000000 | 272745601779339611043/5000000000000000000 |
| `b * v * w * j` | -400 | 567751813546751453587/25000000000000000000000 | 0 |
| `b * e * f * k` | -4200 | 200738368731747/62500000000000000 | 0 |
| `b * e * w * j` | -4000 | 9610788073223029/1562500000000000000 | 0 |
| `b * e * f * w` | 3200 | 205012415479179/62500000000000000 | 205012415479179/19531250000000 |
| `f * f * h * v` | -4100 | 796303824680758779/100000000000000000000 | 0 |
| `f * f * h` | 142677/2000 | 1925667196299/100000000000000 | 274748418566352423/200000000000000000 |
| `c * f * h * v` | 4900 | 22232624145847890621/1250000000000000000000 | 1089398583146546640429/12500000000000000000 |
| `b * c * h * v` | -1300 | 201383879333287391587/6250000000000000000000 | 0 |
| `c * f * w * w` | 2300 | 17355162241007913399/1250000000000000000000 | 399168731543182008177/12500000000000000000 |
| `e * f * r * w` | 3000 | 584683024424037/156250000000000000 | 1754049073272111/156250000000000 |
| `c * e * f * w` | -100 | 631914193877043/156250000000000000 | 0 |
| `b * w * w` | -2760863/10000 | 1372969724746147/25000000000000000 | 0 |
| `b * c * w * w` | 3500 | 157203660513709085353/6250000000000000000000 | 1100425623595963597471/12500000000000000000 |
| `b * e * r * w` | -1100 | 5296079080292539/781250000000000000 | 0 |
| `b * r * w` | -8331921/5000 | 756582725756077/12500000000000000 | 0 |
| `e * f * w * j` | 7900 | 1061023552057707/312500000000000000 | 83820860612558853/3125000000000000 |
| `b * r * w * k` | 4700 | 142421402044501202711/6250000000000000000000 | 6693805896091556527417/62500000000000000000 |
| `b * w * w * j` | -4700 | 263954802552171506897/12500000000000000000000 | 0 |
| `f * h * u * k` | -400 | 9015309995066291301/625000000000000000000 | 0 |
| `h * u * k` | -61040541/10000 | 2198319920767201/31250000000000000 | 0 |
| `b * h * u * k` | 4100 | 81660990096739215547/3125000000000000000000 | 3348100593966307837427/31250000000000000000 |
| `b * e * u * k` | -4100 | 4992418542320671/781250000000000000 | 0 |
| `h * u * j` | -28665491/10000 | 2245125731567257/31250000000000000 | 0 |
| `b * c * h * w` | -3800 | 93625842909317384897/3125000000000000000000 | 0 |
| `b * e * h * r` | 600 | 3154187799358211/390625000000000000 | 9462563398074633/1953125000000000 |
| `c * h * r * w` | -1700 | 267015248166904274191/7812500000000000000000 | 0 |
| `e * h * r * r` | 3200 | 8995553063553133/976562500000000000 | 8995553063553133/305175781250000 |
| `c * e * h * r` | 3000 | 9722221144068587/976562500000000000 | 29166663432205761/976562500000000 |
| `h * v * r` | -154403/100 | 5016067027056239/62500000000000000 | 0 |
| `e * h * u * r` | -2200 | 8660324554336609/976562500000000000 | 0 |
| `b * c * v * k` | 5000 | 331086783267417343859/12500000000000000000000 | 331086783267417343859/2500000000000000000 |
| `f * h * v * j` | -200 | 37329969909461242629/2500000000000000000000 | 0 |
| `f * h * j` | -4027559/5000 | 90273456268149/2500000000000000 | 0 |
| `f * v * j` | -12392263/5000 | 326028785486871/10000000000000000 | 0 |
| `h * v * j` | -7636903/5000 | 9102650550953729/125000000000000000 | 0 |
| `c * h * v * j` | 7800 | 1042244385433651016771/31250000000000000000000 | 40647531031912389654069/156250000000000000000 |
| `e * r * r * k` | -1600 | 14789211218809181/1953125000000000000 | 0 |
| `e * r * j * k` | -9000 | 26837963074043891/3906250000000000000 | 0 |
| `e * r * w * j` | 1600 | 27409387010130587/3906250000000000000 | 27409387010130587/2441406250000000 |
| `e * w * j * j` | -1000 | 49739780274724757/7812500000000000000 | 0 |
| `b * f * k * k` | 100 | 5398227535024321503/500000000000000000000 | 5398227535024321503/5000000000000000000 |
| `b * f * w * k` | -200 | 5513164589578156071/500000000000000000000 | 0 |
| `b * f * w * w` | 100 | 5630548841183948847/500000000000000000000 | 5630548841183948847/5000000000000000000 |
| `h * h * u` | 26448573/10000 | 1337130371954993/15625000000000000 | 35365190253168785074989/156250000000000000000 |
| `c * h * h * u` | -3700 | 153100090458474743507/3906250000000000000000 | 0 |
| `c * h * r * k` | -1700 | 261448582117557574663/7812500000000000000000 | 0 |
| `c * h * w * j` | -6500 | 484552236389457468001/15625000000000000000000 | 0 |
| `c * e * e * r` | 1300 | 594376789391/244140625000000 | 7726898262083/2441406250000 |
| `c * e * e * j` | 2400 | 1078614815201/488281250000000 | 3235844445603/610351562500 |
| `c * c * v * v` | 3500 | 2241808575814475878441/62500000000000000000000 | 15692660030701331149087/125000000000000000000 |
| `c * c * e * v` | 6800 | 37948882960481647/3906250000000000000 | 645131010328187999/9765625000000000 |
| `c * h * u * v` | 3300 | 552931488541200660353/15625000000000000000000 | 18246739121859621791649/156250000000000000000 |
| `c * c * w * k` | 1700 | 474450414482424757993/15625000000000000000000 | 8065657046201220885881/156250000000000000000 |
| `c * c * e * w` | 100 | 17642902532242757/1953125000000000000 | 17642902532242757/19531250000000000 |
| `e * e * r * j` | -3500 | 997995896359/488281250000000 | 0 |
| `c * c * e * k` | -1700 | 17275087783038701/1953125000000000000 | 0 |
| `c * c * e * e` | 500 | 642391029049/244140625000000 | 642391029049/488281250000 |
| `c * f * v * w` | -600 | 37329969909461242629/2500000000000000000000 | 0 |
| `e * f * v * r` | 2000 | 1257620032888527/312500000000000000 | 1257620032888527/156250000000000 |
| `e * e * f * r` | -2800 | 21288738009/19531250000000 | 0 |
| `c * u * w * k` | -800 | 422629203087415159451/15625000000000000000000 | 0 |
| `c * v * w * j` | -900 | 1749993671071405353979/62500000000000000000000 | 0 |
| `e * v * r * j` | -300 | 58956037294038577/7812500000000000000 | 0 |
| `e * v * j` | 2801407/5000 | 556498780397/31250000000000 | 1558979578895618579/156250000000000000 |
| `c * e * u * k` | 3000 | 15388239445370407/1953125000000000000 | 46164718336111221/1953125000000000 |
| `c * e * v * j` | -100 | 63718553856676103/7812500000000000000 | 0 |
| `c * f * h * w` | 1500 | 10336220469246792351/625000000000000000000 | 31008661407740377053/1250000000000000000 |
| `u * w * w` | -5642857/10000 | 3769706870972993/62500000000000000 | 0 |
| `v * r * w` | -3578343/10000 | 8422291042005511/125000000000000000 | 0 |
| `c * u * w * w` | -2300 | 431627667019536725507/15625000000000000000000 | 0 |
| `c * v * r * w` | 2300 | 964343902018589003989/31250000000000000000000 | 22179909746427547091747/312500000000000000000 |
| `e * u * r * w` | 4200 | 14541227922477641/1953125000000000000 | 305365786372030461/9765625000000000 |
| `u * r * w` | 1668939/1000 | 2077318274639663/31250000000000000 | 3466917483958844527557/31250000000000000000 |
| `e * v * r * r` | -4200 | 32488057523590207/3906250000000000000 | 0 |
| `v * r * r` | -2295679/1000 | 4641151074798601/62500000000000000 | 0 |
| `c * e * v * r` | -4000 | 35112469189393673/3906250000000000000 | 0 |
| `c * c * w * w` | -600 | 484552236389457468001/15625000000000000000000 | 0 |
| `e * e * r * r` | 2500 | 549951278569/244140625000000 | 549951278569/97656250000 |
| `c * f * k * k` | -2100 | 16639073263863832551/1250000000000000000000 | 0 |
| `e * f * j * k` | 3500 | 1038903602634051/312500000000000000 | 7272325218438357/625000000000000 |
| `c * c * h * v` | -6600 | 620729878584598299979/15625000000000000000000 | 0 |
| `f * h * h * p` | -100 | 28909169549055183003/1250000000000000000000 | 0 |
| `f * h * h` | 677341/625 | 53764196125101/1250000000000000 | 36416694367572036441/781250000000000000 |
| `c * f * h * h` | 100 | 6155946692127939399/312500000000000000000 | 6155946692127939399/3125000000000000000 |
| `c * h * h * p` | 2900 | 807137528455808192797/15625000000000000000000 | 23406988325218437591113/156250000000000000000 |
| `c * c * h * h` | 7100 | 171872650646661042001/3906250000000000000000 | 12202958195912933982071/39062500000000000000 |
| `e * f * f * h` | 3000 | 13479670374093/6250000000000000 | 40439011122279/6250000000000 |
| `f * h * w * j` | 3400 | 17355162241007913399/1250000000000000000000 | 295037758097134527783/6250000000000000000 |
| `e * f * h * j` | 200 | 631914193877043/156250000000000000 | 631914193877043/781250000000000 |
| `f * f * h * k` | -4200 | 362493370032912657/50000000000000000000 | 0 |
| `f * f * h * w` | 4700 | 370211444155679049/50000000000000000000 | 17399937875316915303/500000000000000000 |
| `f * f * q * k` | -4900 | 6562928550277539/2500000000000000000 | 0 |
| `f * f * q` | 1316523/1000 | 34864130673/5000000000000 | 45899429906009979/5000000000000000 |
| `f * h * q * j` | -2000 | 187136874843872877/31250000000000000000 | 0 |
| `f * q * j` | -19336411/10000 | 1634397460623/125000000000000 | 0 |
| `f * f * h * q` | 4900 | 3991908097927827/1250000000000000000 | 195603496798463523/12500000000000000 |
| `f * f * q * v` | 1400 | 14417050180029633/5000000000000000000 | 100919351260207431/25000000000000000 |
| `f * p * v` | 38799/1250 | 911863428760563/20000000000000000 | 35379389172481083837/25000000000000000000 |
| `f * q * u` | 6165953/2500 | 867080536389/62500000000000 | 5346377834589363717/156250000000000000 |
| `f * u * v * w` | -4000 | 33252653918162433903/2500000000000000000000 | 0 |
| `u * v * w` | 2179291/1250 | 8108425729861603/125000000000000000 | 17670619217255822663473/156250000000000000000 |
| `f * f * v * w` | -2300 | 1337044049281657971/200000000000000000000 | 0 |
| `f * v * v * r` | 4000 | 74293184802870939081/5000000000000000000000 | 74293184802870939081/1250000000000000000 |
| `v * v * r` | -558883/625 | 18115870471316981/250000000000000000 | 0 |
| `c * u * v * w` | -1200 | 928406637643423681897/31250000000000000000000 | 0 |
| `c * v * v * r` | 1200 | 2074249053095323007519/62500000000000000000000 | 6222747159285969022557/156250000000000000000 |
| `u * u * w` | 2499203/5000 | 1999904878992299/31250000000000000 | 4998168273292190637697/156250000000000000000 |
| `u * v * r` | 2983997/5000 | 4468193820824173/62500000000000000 | 13333076956757869759481/312500000000000000000 |
| `f * u * v * k` | -3800 | 32559411038260664679/2500000000000000000000 | 0 |
| `u * v * k` | 8746603/5000 | 7939383330470779/125000000000000000 | 69442634056445707013737/625000000000000000000 |
| `f * f * v * k` | -1400 | 1309169694664408203/200000000000000000000 | 0 |
| `f * v * v * j` | 3800 | 134819749403316382791/10000000000000000000000 | 2561575238663011273029/50000000000000000000 |
| `v * v * j` | -8094903/5000 | 32874847452649691/500000000000000000 | 0 |
| `c * u * v * k` | -4400 | 909051451955573724721/31250000000000000000000 | 0 |
| `c * v * v * j` | 4400 | 3764137158480936969809/125000000000000000000000 | 41405508743290306667899/312500000000000000000 |
| `u * u * k` | 946249/2500 | 1958211370219907/31250000000000000 | 1852955550859216778843/78125000000000000000 |
| `u * v * j` | -2787249/2500 | 8108425729861603/125000000000000000 | 0 |
| `f * v * w * j` | 2400 | 62679360038636436621/5000000000000000000000 | 188038080115909309863/6250000000000000000 |
| `e * f * v * j` | -4600 | 2282201498408097/625000000000000000 | 0 |
| `c * c * v * w` | -1000 | 1042244385433651016771/31250000000000000000000 | 0 |
| `c * v * r * k` | 1700 | 944239505374147598077/31250000000000000000000 | 16052071591360509167309/312500000000000000000 |
| `f * h * p * w` | -400 | 48540308255752521747/2500000000000000000000 | 0 |
| `c * c * h * w` | -3500 | 288584956719894776249/7812500000000000000000 | 0 |
| `f * h * u * w` | -4300 | 9207260625157320957/625000000000000000000 | 0 |
| `c * h * u * k` | 4000 | 251705432607923747299/7812500000000000000000 | 251705432607923747299/1953125000000000000 |
| `h * h * p * r` | -3100 | 746809639404158776523/15625000000000000000000 | 0 |
| `h * h * r` | -921907/5000 | 1388888734866941/15625000000000000 | 0 |
| `c * h * h * r` | 3100 | 159026371253529877559/3906250000000000000000 | 4929817508859426204329/39062500000000000000 |
| `f * h * p * v` | -200 | 104407450729655702937/5000000000000000000000 | 0 |
| `h * h * p * u` | 2200 | 718979012391315601079/15625000000000000000000 | 7908769136304471611869/78125000000000000000 |
| `h * p * r * k` | 6100 | 1227798382085058040411/31250000000000000000000 | 74895701307188540465071/312500000000000000000 |
| `h * u * r * k` | 5500 | 232892210725998041141/7812500000000000000000 | 2561814317985978452551/15625000000000000000 |
| `h * u * w * j` | 3500 | 431627667019536725507/15625000000000000000000 | 3021393669136757078549/31250000000000000000 |
| `e * h * u * j` | -2300 | 15715880120970799/1953125000000000000 | 0 |
| `h * r * j * k` | 4700 | 438988562002135925087/15625000000000000000000 | 20632462414100388479089/156250000000000000000 |
| `h * j * k` | 376667/2500 | 4143707931793507/62500000000000000 | 1560798035544864901169/156250000000000000000 |
| `h * w * j * j` | -4700 | 813593585953672850249/31250000000000000000000 | 0 |
| `h * j * j` | 21862167/10000 | 4231934221167499/62500000000000000 | 92519252676178798110333/625000000000000000000 |
| `e * h * j * j` | 3200 | 29623539548172493/3906250000000000000 | 29623539548172493/1220703125000000 |
| `p * r * k * k` | -3000 | 2018571785245614203627/62500000000000000000000 | 0 |
| `p * k * k` | 40544/125 | 19053735430528447/250000000000000000 | 24141082790479542349/976562500000000000 |
| `p * w * j * k` | 3000 | 3741093047556204388829/125000000000000000000000 | 11223279142668613166487/125000000000000000000 |
| `p * w * k` | -1953463/1000 | 19459420484451079/250000000000000000 | 0 |
| `p * j * k` | -3593957/5000 | 19459420484451079/250000000000000000 | 0 |
| `e * p * j * k` | -500 | 136215943391157553/15625000000000000000 | 0 |
| `q * r * j * k` | 3000 | 7947871064641855149/781250000000000000000 | 23843613193925565447/781250000000000000 |
| `q * r * j` | -1553214/625 | 42221336594943/1562500000000000 | 0 |
| `q * j * k` | 54081/125 | 75021673050489/3125000000000000 | 4057247100243495609/390625000000000000 |
| `e * q * r * j` | -500 | 295549356164601/97656250000000000 | 0 |
| `q * w * j * j` | -3000 | 14730080644214917323/1562500000000000000000 | 0 |
| `q * j * j` | 16390257/5000 | 76619006633073/3125000000000000 | 1255805209800771169761/15625000000000000000 |
| `e * q * j * j` | 500 | 536333046431511/195312500000000000 | 536333046431511/390625000000000 |
| `f * p * k * k` | -4600 | 78139369000597161147/5000000000000000000000 | 0 |
| `h * p * j * k` | 2900 | 2228084186049164094421/62500000000000000000000 | 64614441395425758738209/625000000000000000000 |
| `c * h * j * k` | -2900 | 474450414482424757993/15625000000000000000000 | 0 |
| `f * q * j * k` | -5400 | 307663881180055389/62500000000000000000 | 0 |
| `h * q * j * j` | -2900 | 8772799640480225427/781250000000000000000 | 0 |
| `f * f * h * h` | -500 | 220486968309039201/25000000000000000000 | 0 |
| `f * h * q * u` | -4700 | 99279854336004111/15625000000000000000 | 0 |
| `e * f * q * u` | 4700 | 6069563754723/3906250000000000 | 285269496471981/39062500000000 |
| `e * u * u * w` | -100 | 13999334152946093/1953125000000000000 | 0 |
| `e * u * v * r` | 100 | 31277356745769211/3906250000000000000 | 31277356745769211/39062500000000000 |
| `e * e * f * j` | -4700 | 38632646199/39062500000000 | 0 |
| `e * f * f * w` | 5300 | 22633211723157/12500000000000000 | 1199560221327321/125000000000000 |
| `e * e * f * f` | -4100 | 824091849/1562500000000 | 0 |
| `h * u * u * w` | -7700 | 228987108739739243201/7812500000000000000000 | 0 |
| `h * u * v * r` | -2300 | 511603724290546984327/15625000000000000000000 | 0 |
| `h * u * u * k` | -2000 | 224213243678809131593/7812500000000000000000 | 0 |
| `h * u * v * j` | 2000 | 928406637643423681897/31250000000000000000000 | 928406637643423681897/15625000000000000000 |
| `e * u * u * k` | 4400 | 13707479591539349/1953125000000000000 | 150782275506932839/4882812500000000 |
| `e * u * v * j` | -4400 | 56758980109031221/7812500000000000000 | 0 |
| `h * h * u * j` | 500 | 257064651138719359243/7812500000000000000000 | 257064651138719359243/15625000000000000000 |
| `f * h * h * u` | -2300 | 5483571655387426293/312500000000000000000 | 0 |
| `b * h * h * u` | -2100 | 49670381927012124971/1562500000000000000000 | 0 |
| `f * h * j * k` | -1600 | 16993346228285172207/1250000000000000000000 | 0 |
| `h * h * j * j` | -22779500 | 484552236389457468001/15625000000000000000000 | 0 |
| `f * p * w * k` | 3600 | 79803083406733874979/5000000000000000000000 | 718227750660604874811/12500000000000000000 |
| `f * q * r * k` | 3900 | 169539920396233299/31250000000000000000 | 6612056895453098661/312500000000000000 |
| `f * q * r` | 317889/1000 | 900643956993/62500000000000 | 286304806844547777/62500000000000000 |
| `h * q * r * j` | 3900 | 4834300818784378557/390625000000000000000 | 188537731932590763723/3906250000000000000 |
| `f * h * q * r` | -3900 | 103122832431741507/15625000000000000000 | 0 |
| `u * u * w * w` | 2500 | 384483712891148475049/15625000000000000000000 | 384483712891148475049/6250000000000000000 |
| `u * v * r * w` | -5000 | 859014730247268083423/31250000000000000000000 | 0 |
| `v * v * r * r` | 2500 | 1919213433601792284121/62500000000000000000000 | 1919213433601792284121/25000000000000000000 |
| `h * v * r * j` | 1000 | 964343902018589003989/31250000000000000000000 | 964343902018589003989/31250000000000000000 |
| `u * u * w * k` | -2400 | 376468094136147340657/15625000000000000000000 | 0 |
| `u * v * w * j` | 2400 | 1558852954991623038353/62500000000000000000000 | 4676558864974869115059/78125000000000000000 |
| `u * v * r * k` | 2400 | 841106209413404798039/31250000000000000000000 | 2523318628240214394117/39062500000000000000 |
| `v * v * r * j` | -2400 | 3482794213981160914231/125000000000000000000000 | 0 |
| `c * h * v * r` | -3500 | 574334658530912309261/15625000000000000000000 | 0 |
| `f * u * k * k` | 4100 | 14821692760646502357/1250000000000000000000 | 607689403186506596637/12500000000000000000 |
| `u * k * k` | -394039/250 | 3614165511008657/62500000000000000 | 0 |
| `h * u * j * k` | 1100 | 422629203087415159451/15625000000000000000000 | 4648921233961566753961/156250000000000000000 |
| `u * j * k` | -16390881/10000 | 3691116979951049/62500000000000000 | 0 |
| `f * v * j * k` | -4100 | 61372636666405057653/5000000000000000000000 | 0 |
| `v * j * k` | 394039/250 | 14965285702610353/250000000000000000 | 5896906212970880885767/62500000000000000000 |
| `h * v * j * j` | -1100 | 1749993671071405353979/62500000000000000000000 | 0 |
| `v * j * j` | 12602481/10000 | 15283921004300521/250000000000000000 | 192615324062198234192601/2500000000000000000000 |
| `u * r * w * k` | -1500 | 391040623972994082109/15625000000000000000000 | 0 |
| `v * r * r * k` | 1500 | 873664201773313048043/31250000000000000000000 | 2620992605319939144129/62500000000000000000 |
| `u * w * w * j` | 1500 | 724729915651428877243/31250000000000000000000 | 2174189746954286631729/62500000000000000000 |
| `v * r * w * j` | -1500 | 1619193875116601495261/62500000000000000000000 | 0 |
| `u * r * k * k` | -3500 | 382888308401768131237/15625000000000000000000 | 0 |
| `v * r * j * k` | 3500 | 1585437332620243407173/62500000000000000000000 | 11098061328341703850211/125000000000000000000 |
| `u * w * j * k` | 3500 | 709620930512569121299/31250000000000000000000 | 4967346513587983849093/62500000000000000000 |
| `v * w * j * j` | -3500 | 2938349096997779462771/125000000000000000000000 | 0 |
| `e * u * j * k` | 1300 | 25837818859657343/3906250000000000000 | 335891645175545459/39062500000000000 |
| `e * v * j * j` | -1300 | 106987447030103647/15625000000000000000 | 0 |
| `b * e * h * j` | -4400 | 5723900648610221/781250000000000000 | 0 |
| `b * e * e * j` | -5600 | 349935846953/195312500000000 | 0 |
| `e * e * j * j` | -4400 | 1811061903049/976562500000000 | 0 |
| `u * u * k * k` | 900 | 368619582964305953401/15625000000000000000000 | 3317576246678753580609/156250000000000000000 |
| `u * v * j * k` | -1800 | 1526354384666337733529/62500000000000000000000 | 0 |
| `f * f * k * k` | -3100 | 595960134630918849/100000000000000000000 | 0 |
| `v * v * j * j` | 900 | 6320222297619355744441/250000000000000000000000 | 56882000678574201699969/2500000000000000000000 |
| `f * q * w * j` | 2500 | 314214546202232373/62500000000000000000 | 314214546202232373/25000000000000000 |
| `a * c * h * q` | 2000 | 1474872603674876637/195312500000000000000 | 1474872603674876637/97656250000000000 |
| `a * h * q` | -1496113/250 | 12881095936863/781250000000000 | 0 |
| `a * a * c * q` | -110719000 | 699044195397618147/195312500000000000000 | 0 |
| `a * a * q` | 179803/125 | 6105242800353/781250000000000 | 1097740971231870459/97656250000000000 |
| `c * e * h * q` | -1000 | 190239514745511/48828125000000000 | 0 |
| `e * h * q` | 227967/125 | 1661494989/195312500000 | 378766028157363/24414062500000 |
| `a * c * e * q` | 1000 | 90167671558041/48828125000000000 | 90167671558041/48828125000000 |
| `a * e * q` | -401209/250 | 787497459/195312500000 | 0 |
| `c * h * h * q` | -3000 | 3111747742692323427/195312500000000000000 | 0 |
| `h * h * q` | 556307/250 | 27177073535073/781250000000000 | 15118796247075855411/195312500000000000 |
| `a * a * b * q` | -21760000 | 226791454304712891/78125000000000000000 | 0 |
| `a * e * h` | -17451/25 | 43496223617/3906250000000 | 0 |
| `a * e * w` | 147629/25 | 73032886633/7812500000000 | 10781772020743157/195312500000000 |
| `a * e * k` | -19668/25 | 71510315569/7812500000000 | 0 |
| `e * w * w` | -44017/50 | 258723129007/15625000000000 | 0 |
| `a * q * k` | -1011/50 | 21177269167791/1562500000000000 | 0 |
| `c * c * j` | 60591/25 | 2520414647463251/31250000000000000 | 152714443904445841341/781250000000000000 |
| `a * c * c * j` | -3120000 | 136780382503183168519/7812500000000000000000 | 0 |
| `b * b * e * e` | 10000 | 67615080841/39062500000000 | 67615080841/3906250000 |
| `h * q * k` | -3714/25 | 44680685887761/1562500000000000 | 0 |
| `f * q * q` | 17831/25 | 17623346229/3125000000000 | 314241886609299/78125000000000 |
| `b * f * q * u` | -5230000 | 32209440685242183/6250000000000000000 | 0 |
| `e * e * w` | 105076/25 | 9420299/1953125000 | 247461834431/12207031250 |
| `e * e * k` | -22892/25 | 9223907/1953125000 | 0 |
| `c * c * q * u` | -1210000 | 2771871261062700489/195312500000000000000 | 0 |
| `e * w * k` | -119957/50 | 253329334951/15625000000000 | 0 |
| `w * w * k` | 39733/50 | 6957545424809243/125000000000000000 | 276444152363945652119/6250000000000000000 |
| `w * k * k` | 3113/50 | 6812496285597299/125000000000000000 | 21207300937064391787/6250000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 156 | -1945985622905513181852525723146067/1032595000000000000000000000 |

## Stage 157

| Property | Value |
| --- | --- |
| Scope | root/AEP-/BEP- |
| Packet | forest:root/AEP-/BEP- |
| Index | 0 |
| Context | 81 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 154 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 26531/250000 | 61239/200000 |
| b | 103767/1000000 | 9681/20000 | 104041/1000000 | 66703/250000 |
| c | 135501/250000 | 1/1 | 163519/200000 | 979501/1000000 |
| e | 279/1000 | 391/1000 | 2547/8000 | 391/1000 |
| f | 279/1000 | 9681/20000 | 2547/8000 | 227123/500000 |
| h | 135501/250000 | 1/1 | 289139/500000 | 1/1 |
| p | 41461/250000 | 762149/1000000 | 123207/200000 | 751021/1000000 |
| q | 22907/200000 | 149/500 | 119637/1000000 | 178751/1000000 |
| u | 333/800 | 412111/500000 | 540519/1000000 | 31123/40000 |
| v | 41823/100000 | 831751/1000000 | 469053/1000000 | 183331/250000 |
| r | 144059/250000 | 1/1 | 692961/1000000 | 123589/125000 |
| w | 447249/1000000 | 831751/1000000 | 262239/500000 | 201853/250000 |
| j | 447249/1000000 | 831751/1000000 | 128487/250000 | 200317/250000 |
| k | 311757/500000 | 1/1 | 355081/500000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 20 | A_ACP | bitt ["actual-area","ACP",[]] | `1/1 * c * q + -1/1 * a * c + 1/1 * a * p + -93/1000` |
| 45 | A_BCE | bitt ["actual-area","BCE",["P"]] | `1/1 * c * e + -1/1 * b * e + -279/1000` |
| 57 | A_BEP | bitt ["actual-area","BEP",[]] | `-1/1 * q + 1/1 * b * q + 1/1 * e * p + -1/1 * b * e + -93/1000` |
| 75 | A_CEF | bitt ["actual-area","CEF",["Q"]] | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 78 | A_CEP | bitt ["actual-area","CEP",[]] | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 81 | A_CER | bitt ["actual-area","CER",[]] | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 85 | A_CFQ | bitt ["actual-area","CFQ",[]] | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 86 | A_CFR | bitt ["actual-area","CFR",["Q"]] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -279/1000` |
| 88 | A_CHP | bitt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 100 | A_EFQ | bitt ["actual-area","EFQ",[]] | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 105 | A_EHQ | bitt ["actual-area","EHQ",[]] | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 107 | A_EHS | bitt ["actual-area","EHS",["Q"]] | `1/1 * k + 1/1 * h * j + -1/1 * h + -1/1 * e * j + -279/1000` |
| 111 | A_EQR | bitt ["actual-area","EQR",[]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 122 | A_FQS | bitt ["actual-area","FQS",[]] | `1/1 * u * k + -1/1 * u + -1/1 * f * k + -1/1 * v * j + 1/1 * f * v + 1/1 * j + -93/1000` |
| 123 | A_FRS | bitt ["actual-area","FRS",[]] | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 136 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 149 | top-area | bitt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 157 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 667 | SUP_CEF_CFS_CES | bitt ["support-envelope",["pentagon","CERSF"],"CEF","CFS","CES","140207641/250000000"] | `-140207641/250000000 * f * k + -115542359/250000000 * c * k + 140207641/250000000 * j + 115542359/250000000 * c + -1023/1000 + 1023/1000 * e * f + 1023/1000 * k + -1023/1000 * e * j` |
| 842 | AREA_lo_FPQ | bitt ["earlier-area",{"direction":"lo","ref":"154:186","triangle":"FPQ","value":"23897/250000"}] | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -23897/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 45 | b | 103767/1000000 | 9681/20000 | 103767/1000000 | 112/391 | 103767/1000000 | 143223/500000 | `(-279/1000, -31945221/250000000); (-279/1000, 0/1); (-391/1000, -16769109/250000000); (-391/1000, 14/125)` |
| 1 | 45 | c | 135501/250000 | 1/1 | 319572897/391000000 | 1/1 | 817321/1000000 | 1/1 | `(279/1000, -307950993/1000000000); (279/1000, -179459217/500000000); (391/1000, -319572897/1000000000); (391/1000, -195500193/500000000)` |
| 2 | 45 | e | 279/1000 | 391/1000 | 279000/896233 | 391/1000 | 155651/500000 | 391/1000 | `(356777/500000, -279/1000); (4247/8000, -279/1000); (896233/1000000, -279/1000)` |
| 3 | 57 | p | 41461/250000 | 762149/1000000 | 47244588731/78200000000 | 762149/1000000 | 12083/20000 | 762149/1000000 | `(155651/500000, -227952921289/1000000000000); (155651/500000, -131949060041/500000000000); (391/1000, -47244588731/200000000000); (391/1000, -28672729339/100000000000); (155651/500000, -196190154317/500000000000); (155651/500000, -98702576173/250000000000); (391/1000, -400650331/1000000000); (391/1000, -208819739/500000000)` |
| 4 | 57 | q | 22907/200000 | 149/500 | 22907/200000 | 82213681/448116500 | 22907/200000 | 36693/200000 | `(-896233/1000000, 31385114333/500000000000); (-356777/500000, 368868163/62500000000); (-896233/1000000, 102649753/1000000000); (-356777/500000, 3902783/125000000); (-896233/1000000, 27988908341/250000000000); (-356777/500000, 27543647653/500000000000); (-896233/1000000, 82213681/500000000); (-356777/500000, 92999873/1000000000)` |
| 5 | 85 | u | 333/800 | 412111/500000 | 462571969929/1000000000000 | 412111/500000 | 462571/1000000 | 412111/500000 | `(1/1, -68517900817/100000000000); (1/1, -79145617/100000000); (1/1, -77093706967/100000000000); (1/1, -1754428463/2000000000); (1/1, -462571969929/1000000000000); (1/1, -493307529/1000000000); (1/1, -633122512479/1000000000000); (1/1, -13277161431/20000000000)` |
| 6 | 86 | r | 144059/250000 | 1/1 | 648571969929/1000000000000 | 1/1 | 648571/1000000 | 1/1 | `(1/1, -855557471071/1000000000000); (1/1, -956533471/1000000000); (1/1, -947265878521/1000000000000); (1/1, -20964837569/20000000000); (1/1, -648571969929/1000000000000); (1/1, -679307529/1000000000); (1/1, -819122512479/1000000000000); (1/1, -16997161431/20000000000)` |
| 7 | 105 | v | 41823/100000 | 831751/1000000 | 111213584039/250000000000 | 831751/1000000 | 222427/500000 | 831751/1000000 | `(1/1, -264143972579/500000000000); (1/1, -141288482179/250000000000); (1/1, -387214138721/500000000000); (1/1, -811294261/1000000000); (1/1, -111213584039/250000000000); (1/1, -63817897639/125000000000); (1/1, -131339989261/250000000000); (1/1, -295524401/500000000)` |
| 8 | 107 | k | 311757/500000 | 1/1 | 314558690399/500000000000 | 1/1 | 629117/1000000 | 1/1 | `(1/1, -358911380601/500000000000); (1/1, -188366903001/250000000000); (1/1, -485490254099/500000000000); (1/1, -1006625359/1000000000); (1/1, -314558690399/500000000000); (1/1, -173851567999/250000000000); (1/1, -353087374901/500000000000); (1/1, -772463641/1000000000)` |
| 9 | 111 | u | 462571/1000000 | 412111/500000 | 462571/1000000 | 142483/173483 | 462571/1000000 | 821309/1000000 | `(-135947/1000000, -249190363/62500000000); (-56249/1000000, -27838428683/500000000000); (-135947/1000000, -139953871621/1000000000000); (-56249/1000000, -191643683179/1000000000000); (-135947/1000000, 42947/1000000); (-56249/1000000, -36751/1000000); (-520449/1000000, 23782184637/62500000000); (-440751/1000000, 164412571317/500000000000); (-520449/1000000, 244548128379/1000000000000); (-440751/1000000, 192858316821/1000000000000); (-520449/1000000, 427449/1000000); (-440751/1000000, 347751/1000000)` |
| 10 | 111 | w | 447249/1000000 | 831751/1000000 | 43383787093/89571500000 | 831751/1000000 | 121087/250000 | 831751/1000000 | `(537429/1000000, -153618384183/500000000000); (537429/1000000, -161030298183/500000000000); (178691/1000000, -19556091149/100000000000); (178691/1000000, -90897019183/500000000000); (537429/1000000, -443203594179/1000000000000); (537429/1000000, -458027422179/1000000000000); (178691/1000000, -331527737303/1000000000000); (178691/1000000, -317760864179/1000000000000); (537429/1000000, -130151361279/500000000000); (537429/1000000, -303134739/1000000000); (178691/1000000, -74313432841/500000000000); (178691/1000000, -162868181/1000000000)` |
| 11 | 113 | j | 447249/1000000 | 831751/1000000 | 447249/1000000 | 142483/173483 | 447249/1000000 | 821309/1000000 | `(-86523/500000, -6328681527/200000000000); (-23337/250000, -83333219193/1000000000000); (-86523/500000, 40023/500000); (-23337/250000, 87/250000); (-520449/1000000, 63151918473/200000000000); (-440751/1000000, 264069780807/1000000000000); (-520449/1000000, 427449/1000000); (-440751/1000000, 347751/1000000); (-86523/500000, -80991224721/500000000000); (-23337/250000, -213672261/1000000000); (-520449/1000000, 92710275279/500000000000); (-440751/1000000, 133730739/1000000000)` |
| 12 | 122 | v | 222427/500000 | 831751/1000000 | 222427/500000 | 449309/542309 | 222427/500000 | 25891/31250 | `(-168249/1000000, 7165636807/1000000000000); (36801/1000000, -121834804043/1000000000000); (-168249/1000000, -125884188847/1000000000000); (36801/1000000, -254884629697/1000000000000); (-542309/1000000, 381225636807/1000000000000); (-337259/1000000, 252225195957/1000000000000); (-542309/1000000, 248175811153/1000000000000); (-337259/1000000, 119175370303/1000000000000); (-168249/1000000, 75249/1000000); (36801/1000000, -129801/1000000); (-542309/1000000, 449309/1000000); (-337259/1000000, 244259/1000000)` |
| 13 | 123 | w | 121087/250000 | 831751/1000000 | 121087/250000 | 449309/542309 | 121087/250000 | 25891/31250 | `(-168249/1000000, -61818601193/1000000000000); (36801/1000000, -190819042043/1000000000000); (-168249/1000000, -192157643/1000000000); (36801/1000000, -6423161677/20000000000); (-542309/1000000, 312241398807/1000000000000); (-337259/1000000, 183240957957/1000000000000); (-542309/1000000, 181902357/1000000000); (-337259/1000000, 1058038323/20000000000); (-168249/1000000, 75249/1000000); (36801/1000000, -129801/1000000); (-542309/1000000, 449309/1000000); (-337259/1000000, 244259/1000000)` |
| 14 | 123 | j | 447249/1000000 | 821309/1000000 | 19738909/42971000 | 821309/1000000 | 229677/500000 | 821309/1000000 | `(128913/250000, -373934509193/1000000000000); (128913/250000, -403619392643/1000000000000); (128913/250000, -504273551/1000000000); (128913/250000, -10679168689/20000000000); (5359/31250, -277912753193/1000000000000); (5359/31250, -237026808443/1000000000000); (5359/31250, -81650359/200000000); (5359/31250, -1469463401/4000000000); (128913/250000, -59216727/250000000); (128913/250000, -1713006753/5000000000); (5359/31250, -4401411/31250000); (5359/31250, -110005479/625000000)` |
| 15 | 136 | f | 279/1000 | 9681/20000 | 155651/500000 | 9681/20000 | 155651/500000 | 9681/20000 | `(1/1, -155651/500000); (1/1, -391/1000)` |
| 16 | 149 | f | 155651/500000 | 9681/20000 | 155651/500000 | 52783/114783 | 155651/500000 | 459851/1000000 | `(-344349/500000, 158349/500000); (-609/1000, 237/1000)` |
| 17 | 157 | a | 103767/1000000 | 391/1000 | 103767/1000000 | 6031/18431 | 103767/1000000 | 327221/1000000 | `(-37322372147/200000000000, 16581548290647/50000000000000000); (-41507/200000, 583602807/50000000000); (-37322372147/200000000000, 122372147/200000000000); (-41507/200000, 4307/200000); (-48589959453/200000000000, 1543350895840953/50000000000000000); (-55293/200000, 2451619593/50000000000); (-48589959453/200000000000, 11389959453/200000000000); (-55293/200000, 18093/200000)` |
| 18 | 667 | k | 629117/1000000 | 1/1 | 131316598002673/193121443882836 | 1/1 | 679969/1000000 | 1/1 | `(117667884541179/250000000000000, -21739418976629/50000000000000); (48280360970709/125000000000000, -10948741535423/31250000000000); (117667884541179/250000000000000, -111714803784847/250000000000000); (48280360970709/125000000000000, -45303820592543/125000000000000); (9684017967827/25000000000000, -193740587958113/500000000000000); (75733017078509/250000000000000, -151526262758591/500000000000000); (9684017967827/25000000000000, -96860163745597/250000000000000); (75733017078509/250000000000000, -18938250286459/62500000000000); (117667884541179/250000000000000, -34706184640439/100000000000000); (48280360970709/125000000000000, -131316598002673/500000000000000); (117667884541179/250000000000000, -48580406832721/125000000000000); (48280360970709/125000000000000, -76053651065681/250000000000000); (9684017967827/25000000000000, -74938660697009/250000000000000); (75733017078509/250000000000000, -1682234315539/7812500000000); (9684017967827/25000000000000, -5144135851637/15625000000000); (75733017078509/250000000000000, -61199011026431/250000000000000)` |
| 19 | 842 | u | 462571/1000000 | 821309/1000000 | 210727471627/442732500000 | 821309/1000000 | 47597/100000 | 821309/1000000 | `(177093/200000, -266904210619/500000000000); (177093/200000, -582876978369/1000000000000); (177093/200000, -155380233523/250000000000); (177093/200000, -670589491223/1000000000000); (163307/200000, -256175187189/500000000000); (163307/200000, -551179448939/1000000000000); (163307/200000, -9375982613/15625000000); (163307/200000, -638891961793/1000000000000); (177093/200000, -210727471627/500000000000); (177093/200000, -527515512627/1000000000000); (177093/200000, -224274937883/500000000000); (177093/200000, -554610445139/1000000000000); (163307/200000, -199998448197/500000000000); (163307/200000, -495817983197/1000000000000); (163307/200000, -213545914453/500000000000); (163307/200000, -522912915709/1000000000000)` |
| 20 | 20 | q | 22907/200000 | 36693/200000 | 117681084717/1000000000000 | 36693/200000 | 117681/1000000 | 36693/200000 | `(817321/1000000, -115120115157/1000000000000); (817321/1000000, -162754027791/1000000000000); (1/1, -2681523339/20000000000); (1/1, -4450608657/20000000000); (817321/1000000, -24681258231/250000000000); (817321/1000000, -27763359253/250000000000); (1/1, -117681084717/1000000000000); (1/1, -170829842071/1000000000000)` |
| 21 | 57 | p | 12083/20000 | 762149/1000000 | 239042492673/391000000000 | 762149/1000000 | 611361/1000000 | 762149/1000000 | `(155651/500000, -230772470307/1000000000000); (155651/500000, -133071480483/500000000000); (391/1000, -239042492673/1000000000000); (391/1000, -144486067137/500000000000); (155651/500000, -289730261979/1000000000000); (155651/500000, -156541698651/500000000000); (391/1000, -59600056869/200000000000); (391/1000, -33591257061/100000000000)` |
| 22 | 75 | c | 817321/1000000 | 1/1 | 817321/1000000 | 99880153/101500000 | 817321/1000000 | 984041/1000000 | `(-344349/500000, 156022766199/250000000000); (-609/1000, 299640459/500000000); (-344349/500000, 288923731999/500000000000); (-609/1000, 541198259/1000000000)` |
| 23 | 78 | p | 611361/1000000 | 762149/1000000 | 611361/1000000 | 58937589787/78200000000 | 611361/1000000 | 376839/500000 | `(-155651/500000, 182931509341/1000000000000); (-155651/500000, 215212002461/1000000000000); (-391/1000, 248070358399/1000000000000); (-391/1000, 293638102079/1000000000000); (-155651/500000, 194948864677/1000000000000); (-155651/500000, 216261849317/1000000000000); (-391/1000, 52017542747/200000000000); (-391/1000, 58937589787/200000000000)` |
| 24 | 85 | u | 47597/100000 | 821309/1000000 | 15346193321/31250000000 | 821309/1000000 | 245539/500000 | 821309/1000000 | `(1/1, -342608211887/500000000000); (1/1, -388885182447/500000000000); (1/1, -37564952031/50000000000); (1/1, -42192649087/50000000000); (1/1, -15346193321/31250000000); (1/1, -16239645801/31250000000); (1/1, -479806887/781250000); (1/1, -502143199/781250000)` |
| 25 | 86 | r | 648571/1000000 | 1/1 | 21158693321/31250000000 | 1/1 | 338539/500000 | 1/1 | `(1/1, -212807927347/250000000000); (1/1, -234300302707/250000000000); (1/1, -23079528011/25000000000); (1/1, -25228765547/25000000000); (1/1, -21158693321/31250000000); (1/1, -22052145801/31250000000); (1/1, -625119387/781250000); (1/1, -647455699/781250000)` |
| 26 | 88 | h | 135501/250000 | 1/1 | 208802928921/372680000000 | 1/1 | 280137/500000 | 1/1 | `(5149/25000, -189183152601/1000000000000); (9317/25000, -208802928921/1000000000000); (63643/1000000, -189183152601/1000000000000); (230363/1000000, -208802928921/1000000000000); (5149/25000, -48589959453/200000000000); (9317/25000, -54707416413/200000000000); (63643/1000000, -48589959453/200000000000); (230363/1000000, -54707416413/200000000000)` |
| 27 | 100 | u | 245539/500000 | 821309/1000000 | 245539/500000 | 243455407877/304500000000 | 245539/500000 | 399763/500000 | `(-344349/500000, 15741281397/31250000000); (-609/1000, 119727714477/250000000000); (-344349/500000, 32722501297/62500000000); (-609/1000, 243455407877/500000000000); (-344349/500000, 11974825371/50000000000); (-609/1000, 13417897539/62500000000); (-344349/500000, 31632753571/100000000000); (-609/1000, 34959791339/125000000000)` |
| 28 | 100 | v | 222427/500000 | 25891/31250 | 222427/500000 | 428131757/540149000 | 222427/500000 | 396309/500000 | `(-344349/500000, 921653571/1953125000); (-344349/500000, 30388401/62500000); (-540149/1000000, 212821513777/500000000000); (-540149/1000000, 428131757/1000000000); (-344349/500000, 4054048557/15625000000); (-344349/500000, 18648099/62500000); (-540149/1000000, 4264310137/20000000000); (-540149/1000000, 9611477/40000000)` |
| 29 | 105 | v | 222427/500000 | 396309/500000 | 56776801591/125000000000 | 396309/500000 | 227107/500000 | 396309/500000 | `(1/1, -66376166023/125000000000); (1/1, -142536815657/250000000000); (1/1, -188698890889/250000000000); (1/1, -396966749/500000000); (1/1, -56776801591/125000000000); (1/1, -129483758969/250000000000); (1/1, -135592010713/250000000000); (1/1, -303044333/500000000)` |
| 30 | 111 | w | 121087/250000 | 25891/31250 | 62857109111/127230500000 | 25891/31250 | 494041/1000000 | 25891/31250 | `(254461/500000, -74394466327/250000000000); (254461/500000, -78100423327/250000000000); (100237/500000, -50389346503/250000000000); (100237/500000, -47949631327/250000000000); (254461/500000, -101713990449/250000000000); (254461/500000, -105419947449/250000000000); (100237/500000, -124334193/400000000); (100237/500000, -75269155449/250000000000); (254461/500000, -62857109111/250000000000); (254461/500000, -145994251/500000000); (100237/500000, -38851989287/250000000000); (100237/500000, -85692667/500000000)` |
| 31 | 113 | j | 229677/500000 | 821309/1000000 | 229677/500000 | 42421/51721 | 229677/500000 | 82019/100000 | `(-182739/1000000, -14655842487/500000000000); (-103041/1000000, -41636723709/500000000000); (-182739/1000000, 89739/1000000); (-103041/1000000, 10041/1000000); (-51721/100000, 152579657513/500000000000); (-54689/125000, 125598776291/500000000000); (-51721/100000, 42421/100000); (-54689/125000, 5383/15625); (-182739/1000000, -33164183889/250000000000); (-103041/1000000, -93309249/500000000); (-51721/100000, 50453566111/250000000000); (-54689/125000, 73926251/500000000)` |
| 32 | 122 | j | 229677/500000 | 82019/100000 | 2120195753/4401500000 | 82019/100000 | 240849/500000 | 82019/100000 | `(272893/500000, -80109541607/250000000000); (272893/500000, -353973845923/1000000000000); (272893/500000, -104787772079/250000000000); (272893/500000, -452686767811/1000000000000); (103691/500000, -10754616221/50000000000); (103691/500000, -198358428119/1000000000000); (103691/500000, -78451311577/250000000000); (103691/500000, -297071350007/1000000000000); (272893/500000, -65726068343/250000000000); (272893/500000, -171990118943/500000000000); (103691/500000, -39389607841/250000000000); (103691/500000, -94182410041/500000000000)` |
| 33 | 123 | w | 494041/1000000 | 25891/31250 | 494041/1000000 | 51986/63611 | 494041/1000000 | 817249/1000000 | `(-42599/250000, -2478978691/62500000000); (-21847/1000000, -140672374037/1000000000000); (-42599/250000, -71504354819/500000000000); (-21847/1000000, -244017424619/1000000000000); (-63611/125000, 18676771309/62500000000); (-360339/1000000, 197819625963/1000000000000); (-63611/125000, 97741645181/500000000000); (-360339/1000000, 94474575381/1000000000000); (-42599/250000, 19349/250000); (-21847/1000000, -71153/1000000); (-63611/125000, 25993/62500); (-360339/1000000, 267339/1000000)` |
| 34 | 123 | j | 240849/500000 | 82019/100000 | 41751008103/84326500000 | 82019/100000 | 495111/1000000 | 82019/100000 | `(505959/1000000, -183782853837/500000000000); (505959/1000000, -197592563073/500000000000); (505959/1000000, -29431922391/62500000000); (505959/1000000, -62316272091/125000000000); (182751/1000000, -133475205429/500000000000); (182751/1000000, -123278802069/500000000000); (182751/1000000, -1157173317/3125000000); (182751/1000000, -273361449/781250000); (505959/1000000, -125253024309/500000000000); (505959/1000000, -325665752109/1000000000000); (182751/1000000, -74945375901/500000000000); (182751/1000000, -177038230101/1000000000000)` |
| 35 | 157 | a | 103767/1000000 | 327221/1000000 | 103767/1000000 | 5835805471/18235805471 | 103767/1000000 | 16001/50000 | `(-189183152601/1000000000000, 891718820186337/500000000000000000); (-208802928921/1000000000000, 6387944099142177/500000000000000000); (-189183152601/1000000000000, 3183152601/1000000000000); (-208802928921/1000000000000, 22802928921/1000000000000); (-48589959453/200000000000, 3190749071285061/100000000000000000); (-54707416413/200000000000, 4904475111688581/100000000000000000); (-48589959453/200000000000, 11389959453/200000000000); (-54707416413/200000000000, 17507416413/200000000000)` |
| 36 | 667 | k | 679969/1000000 | 1/1 | 67570042129503/98404662448699 | 1/1 | 343327/500000 | 1/1 | `(117667884541179/250000000000000, -213061002429377/500000000000000); (98404662448699/250000000000000, -174534558244417/500000000000000); (117667884541179/250000000000000, -5513851829543/12500000000000); (98404662448699/250000000000000, -4550690724919/12500000000000); (9684017967827/25000000000000, -473518501553/1250000000000); (7757695758579/25000000000000, -1886011955453/6250000000000); (9684017967827/25000000000000, -9542239655161/25000000000000); (7757695758579/25000000000000, -7615917445913/25000000000000); (117667884541179/250000000000000, -86833264221983/250000000000000); (98404662448699/250000000000000, -67570042129503/250000000000000); (117667884541179/250000000000000, -97205807973971/250000000000000); (98404662448699/250000000000000, -77942585881491/250000000000000); (9684017967827/25000000000000, -150012926635789/500000000000000); (7757695758579/25000000000000, -111486482450829/500000000000000); (9684017967827/25000000000000, -82351167934721/250000000000000); (7757695758579/25000000000000, -63087945842241/250000000000000)` |
| 37 | 0 | a | 103767/1000000 | 16001/50000 | 46500/440137 | 16001/50000 | 6603/62500 | 16001/50000 | `(356777/500000, -93/1000); (4247/8000, -93/1000); (440137/500000, -93/1000); (139519/200000, -93/1000)` |
| 38 | 7 | b | 103767/1000000 | 143223/500000 | 11625/111794 | 143223/500000 | 20797/200000 | 143223/500000 | `(227313/500000, -93/1000); (120127/500000, -93/1000); (55897/62500, -93/1000); (33999/50000, -93/1000)` |
| 39 | 20 | q | 117681/1000000 | 36693/200000 | 7333586889/61502562500 | 36693/200000 | 2981/25000 | 36693/200000 | `(817321/1000000, -179311347/1562500000); (817321/1000000, -198639149/1250000000); (984041/1000000, -206832651/1562500000); (984041/1000000, -265331317/1250000000); (817321/1000000, -6232734729/62500000000); (817321/1000000, -5668351643/50000000000); (984041/1000000, -7333586889/62500000000); (984041/1000000, -8336038363/50000000000)` |
| 40 | 45 | b | 20797/200000 | 143223/500000 | 20797/200000 | 105760031/391000000 | 20797/200000 | 270487/1000000 | `(-155651/500000, -12283169029/500000000000); (-155651/500000, 13666965691/500000000000); (-391/1000, 40572511/1000000000); (-391/1000, 105760031/1000000000)` |
| 41 | 45 | c | 817321/1000000 | 984041/1000000 | 63931627/78200000 | 984041/1000000 | 817539/1000000 | 984041/1000000 | `(155651/500000, -31137073847/100000000000); (155651/500000, -181601572037/500000000000); (391/1000, -63931627/200000000); (391/1000, -384760417/1000000000)` |
| 42 | 45 | e | 155651/500000 | 391/1000 | 3875/12223 | 391/1000 | 12681/40000 | 391/1000 | `(356777/500000, -279/1000); (136763/250000, -279/1000); (110007/125000, -279/1000)` |
| 43 | 57 | p | 611361/1000000 | 376839/500000 | 601247409/977500000 | 376839/500000 | 307543/500000 | 376839/500000 | `(12681/40000, -9312266929/40000000000); (12681/40000, -53147654259/200000000000); (391/1000, -601247409/2500000000); (391/1000, -3571844339/12500000000); (12681/40000, -1451766183/5000000000); (12681/40000, -7814781093/25000000000); (391/1000, -11921821079/40000000000); (391/1000, -66520103909/200000000000)` |
| 44 | 57 | q | 2981/25000 | 36693/200000 | 2981/25000 | 161029963/896015000 | 2981/25000 | 89859/500000 | `(-179203/200000, 2761271781/40000000000); (-729513/1000000, 649859919/40000000000); (-179203/200000, 106840491/1000000000); (-729513/1000000, 41738209/1000000000); (-179203/200000, 4518756933/40000000000); (-729513/1000000, 2407345071/40000000000); (-179203/200000, 161029963/1000000000); (-729513/1000000, 95927681/1000000000)` |
| 45 | 78 | p | 307543/500000 | 376839/500000 | 307543/500000 | 147314075281/195500000000 | 307543/500000 | 30141/40000 | `(-12681/40000, 37587390223/200000000000); (-12681/40000, 44173709837/200000000000); (-391/1000, 3105179983/12500000000); (-391/1000, 3670787277/12500000000); (-12681/40000, 198971827473/1000000000000); (-12681/40000, 221833717587/1000000000000); (-391/1000, 129724637499/500000000000); (-391/1000, 147314075281/500000000000)` |
| 46 | 81 | r | 338539/500000 | 1/1 | 338539/500000 | 4926505801/4953515625 | 338539/500000 | 248637/250000 | `(-12681/40000, 32040439547/125000000000); (-12681/40000, 28356249793/125000000000); (-391/1000, 316800963901/1000000000000); (-391/1000, 299644431319/1000000000000); (-12681/40000, 4926505801/15625000000); (-12681/40000, 3625126169/15625000000); (-391/1000, 375773818789/1000000000000); (-391/1000, 304802507791/1000000000000)` |
| 47 | 85 | u | 245539/500000 | 399763/500000 | 254643220767/500000000000 | 399763/500000 | 254643/500000 | 399763/500000 | `(1/1, -340299533641/500000000000); (1/1, -385736763927/500000000000); (1/1, -46754506423/62500000000); (1/1, -41947328167/50000000000); (1/1, -254643220767/500000000000); (1/1, -271907979649/500000000000); (1/1, -39189315801/62500000000); (1/1, -33077928529/50000000000)` |
| 48 | 86 | r | 338539/500000 | 248637/250000 | 682817317987/1000000000000 | 248637/250000 | 682817/1000000 | 248637/250000 | `(1/1, -846437166283/1000000000000); (1/1, -930680351701/1000000000000); (1/1, -114978307849/125000000000); (1/1, -100406964821/100000000000); (1/1, -682817317987/1000000000000); (1/1, -713245724989/1000000000000); (1/1, -100527354961/125000000000); (1/1, -83464724669/100000000000)` |
| 49 | 88 | h | 280137/500000 | 1/1 | 5258426221/9223875000 | 1/1 | 71261/125000 | 1/1 | `(202453/1000000, -4762083759/25000000000); (73791/200000, -5258426221/25000000000); (32007/500000, -4762083759/25000000000); (57629/250000, -5258426221/25000000000); (202453/1000000, -119963237001/500000000000); (73791/200000, -134924940219/500000000000); (32007/500000, -119963237001/500000000000); (57629/250000, -134924940219/500000000000)` |
| 50 | 100 | u | 254643/500000 | 399763/500000 | 254643/500000 | 240927510557/304500000000 | 254643/500000 | 98903/125000 | `(-27319/40000, 247746605039/500000000000); (-609/1000, 118116161157/250000000000); (-27319/40000, 515872498839/1000000000000); (-609/1000, 240927510557/500000000000); (-27319/40000, 131217526043/500000000000); (-609/1000, 59851621659/250000000000); (-27319/40000, 333083916643/1000000000000); (-609/1000, 149533219459/500000000000)` |
| 51 | 100 | v | 227107/500000 | 396309/500000 | 227107/500000 | 83408617/108029800 | 227107/500000 | 772089/1000000 | `(-344349/500000, 575599847/1250000000); (-344349/500000, 29695359/62500000); (-540149/1000000, 3307089047/8000000000); (-540149/1000000, 83408617/200000000); (-344349/500000, 5358465441/20000000000); (-344349/500000, 151712751/500000000); (-540149/1000000, 8833181013/40000000000); (-540149/1000000, 245342843/1000000000)` |
| 52 | 105 | v | 227107/500000 | 772089/1000000 | 57857310111/125000000000 | 772089/1000000 | 231429/500000 | 772089/1000000 | `(1/1, -267103278491/500000000000); (1/1, -17871280901/31250000000); (1/1, -14903407883/20000000000); (1/1, -391422413/500000000); (1/1, -57857310111/125000000000); (1/1, -4073353721/7812500000); (1/1, -2763068943/5000000000); (1/1, -76393073/125000000)` |
| 53 | 111 | w | 494041/1000000 | 817249/1000000 | 124681843683/245357000000 | 817249/1000000 | 101633/200000 | 817249/1000000 | `(245357/500000, -294824354289/1000000000000); (245357/500000, -153830655007/500000000000); (26097/125000, -205442959839/1000000000000); (26097/125000, -98711776007/500000000000); (245357/500000, -196453585281/500000000000); (245357/500000, -405744126287/1000000000000); (26097/125000, -18970361007/62500000000); (26097/125000, -295506368287/1000000000000); (245357/500000, -124681843683/500000000000); (245357/500000, -35657617977/125000000000); (26097/125000, -39995573229/250000000000); (26097/125000, -21877898227/125000000000); (245357/500000, -125524807389/500000000000); (245357/500000, -71736717807/250000000000); (26097/125000, -20208527541/125000000000); (26097/125000, -44177278307/250000000000)` |
| 54 | 113 | j | 495111/1000000 | 82019/100000 | 495111/1000000 | 101302195673/125056000000 | 495111/1000000 | 162011/200000 | `(-9557/50000, -19100035107/1000000000000); (-23433/200000, -34805711341/500000000000); (-9557/50000, 24031195673/250000000000); (-23433/200000, 2819136799/125000000000); (-7816/15625, 289983964893/1000000000000); (-426249/1000000, 119736288659/500000000000); (-7816/15625, 101302195673/250000000000); (-426249/1000000, 41454636799/125000000000); (-9557/50000, -4739522377/40000000000); (-23433/200000, -168999447/1000000000); (-9557/50000, 944164203/10000000000); (-23433/200000, 5211183/250000000); (-7816/15625, 7623837623/40000000000); (-426249/1000000, 140084553/1000000000); (-7816/15625, 4035004203/10000000000); (-426249/1000000, 82482183/250000000)` |
| 55 | 123 | w | 101633/200000 | 817249/1000000 | 101633/200000 | 135251/166251 | 101633/200000 | 162707/200000 | `(-183809/1000000, -2560373919/100000000000); (-1763/50000, -31901376059/250000000000); (-183809/1000000, -30820850279/250000000000); (-1763/50000, -112642583081/500000000000); (-498753/1000000, 28934026081/100000000000); (-87551/250000, 46834623941/250000000000); (-498753/1000000, 47915149721/250000000000); (-87551/250000, 44829416919/500000000000); (-183809/1000000, 90809/1000000); (-1763/50000, -2887/50000); (-498753/1000000, 405753/1000000); (-87551/250000, 64301/250000)` |
| 56 | 123 | j | 495111/1000000 | 162011/200000 | 8203640639/16394500000 | 162011/200000 | 500389/1000000 | 162011/200000 | `(98367/200000, -9063048959/25000000000); (98367/200000, -389036320821/1000000000000); (98367/200000, -230100810143/500000000000); (98367/200000, -486715982747/1000000000000); (37293/200000, -13372983331/50000000000); (37293/200000, -248611620951/1000000000000); (37293/200000, -182569664273/500000000000); (37293/200000, -346291282877/1000000000000); (98367/200000, -24610921917/100000000000); (98367/200000, -63834163317/200000000000); (37293/200000, -15104692743/100000000000); (37293/200000, -35749223343/200000000000)` |
| 57 | 136 | f | 155651/500000 | 459851/1000000 | 12681/40000 | 459851/1000000 | 12681/40000 | 459851/1000000 | `(1/1, -12681/40000); (1/1, -391/1000)` |
| 58 | 149 | f | 12681/40000 | 459851/1000000 | 12681/40000 | 12439/27319 | 12681/40000 | 18213/40000 | `(-27319/40000, 12439/40000); (-609/1000, 237/1000)` |
| 59 | 157 | a | 6603/62500 | 16001/50000 | 6603/62500 | 13974980073/44974980073 | 6603/62500 | 38841/125000 | `(-4762083759/25000000000, 7987200750099/3125000000000000); (-5258426221/25000000000, 43357060934681/3125000000000000); (-4762083759/25000000000, 112083759/25000000000); (-5258426221/25000000000, 608426221/25000000000); (-119963237001/500000000000, 1921427231928261/62500000000000000); (-134924940219/500000000000, 2987613164946159/62500000000000000); (-119963237001/500000000000, 26963237001/500000000000); (-134924940219/500000000000, 41924940219/500000000000)` |
| 60 | 667 | k | 343327/500000 | 1/1 | 136900262240177/195204508238512 | 1/1 | 701317/1000000 | 1/1 | `(58420143988737/125000000000000, -4239930008309/10000000000000); (12200281764907/31250000000000, -86760216349507/250000000000000); (58420143988737/125000000000000, -2189346664123/5000000000000); (12200281764907/31250000000000, -22557324836983/62500000000000); (48724785613587/125000000000000, -947850046271/2500000000000); (19552884342239/62500000000000, -37773485384441/125000000000000); (48724785613587/125000000000000, -1912751504623/5000000000000); (19552884342239/62500000000000, -19099885343233/62500000000000); (58420143988737/125000000000000, -175376329956613/500000000000000); (12200281764907/31250000000000, -136900262240177/500000000000000); (58420143988737/125000000000000, -12126981491593/31250000000000); (12200281764907/31250000000000, -38888909037263/125000000000000); (48724785613587/125000000000000, -152949838795363/500000000000000); (19552884342239/62500000000000, -114473771078927/500000000000000); (48724785613587/125000000000000, -5199130872359/15625000000000); (19552884342239/62500000000000, -31974030049763/125000000000000)` |
| 61 | 0 | a | 6603/62500 | 38841/125000 | 3875/36669 | 38841/125000 | 4227/40000 | 38841/125000 | `(356777/500000, -93/1000); (136763/250000, -93/1000); (110007/125000, -93/1000)` |
| 62 | 7 | b | 20797/200000 | 270487/1000000 | 3720/35773 | 270487/1000000 | 103989/1000000 | 270487/1000000 | `(464413/1000000, -93/1000); (1621/6250, -93/1000); (35773/40000, -93/1000); (86159/125000, -93/1000)` |
| 63 | 20 | q | 2981/25000 | 89859/500000 | 1173597783/9840410000 | 89859/500000 | 119263/1000000 | 89859/500000 | `(817539/1000000, -4575768831/40000000000); (817539/1000000, -19488476973/125000000000); (984041/1000000, -1055914557/8000000000); (984041/1000000, -5191116231/25000000000); (817539/1000000, -1995293589/20000000000); (817539/1000000, -7055683887/62500000000); (984041/1000000, -1173597783/10000000000); (984041/1000000, -5144617989/31250000000)` |
| 64 | 45 | c | 817539/1000000 | 984041/1000000 | 319659699/391000000 | 984041/1000000 | 817543/1000000 | 984041/1000000 | `(12681/40000, -12478684509/40000000000); (12681/40000, -14590045647/40000000000); (391/1000, -319659699/1000000000); (391/1000, -384760417/1000000000)` |
| 65 | 45 | e | 12681/40000 | 391/1000 | 69750/220013 | 391/1000 | 158513/500000 | 391/1000 | `(356777/500000, -279/1000); (34191/62500, -279/1000); (220013/250000, -279/1000)` |
| 66 | 57 | p | 307543/500000 | 30141/40000 | 240520658893/391000000000 | 30141/40000 | 307571/500000 | 30141/40000 | `(158513/500000, -232828176607/1000000000000); (158513/500000, -265755320581/1000000000000); (391/1000, -240520658893/1000000000000); (391/1000, -285764325919/1000000000000); (158513/500000, -71749130403/250000000000); (158513/500000, -77464507249/250000000000); (391/1000, -147344501949/500000000000); (391/1000, -164933517167/500000000000)` |
| 67 | 57 | q | 119263/1000000 | 89859/500000 | 119263/1000000 | 20121072/112001375 | 119263/1000000 | 179651/1000000 | `(-896011/1000000, 34524395489/500000000000); (-729513/1000000, 1626459603/100000000000); (-896011/1000000, 106860823/1000000000); (-729513/1000000, 8352021/200000000); (-896011/1000000, 882185937/7812500000); (-729513/1000000, 15033901247/250000000000); (-896011/1000000, 1257567/7812500); (-729513/1000000, 47933929/500000000)` |
| 68 | 75 | c | 817543/1000000 | 984041/1000000 | 817543/1000000 | 23881729/24360000 | 817543/1000000 | 980367/1000000 | `(-341487/500000, 12409896647/20000000000); (-609/1000, 23881729/40000000); (-341487/500000, 11533002731/20000000000); (-609/1000, 21718717/40000000)` |
| 69 | 78 | p | 307571/500000 | 30141/40000 | 307571/500000 | 293850585083/391000000000 | 307571/500000 | 751537/1000000 | `(-158513/500000, 187942756309/1000000000000); (-158513/500000, 220143319021/1000000000000); (-391/1000, 248419682191/1000000000000); (-391/1000, 292664987479/1000000000000); (-158513/500000, 1591687757/8000000000); (-158513/500000, 1770631333/8000000000); (-391/1000, 259437895507/1000000000000); (-391/1000, 293850585083/1000000000000)` |
| 70 | 81 | r | 682817/1000000 | 248637/250000 | 682817/1000000 | 314617542613/317026000000 | 682817/1000000 | 992403/1000000 | `(-158513/500000, 258900648523/1000000000000); (-158513/500000, 227778631987/1000000000000); (-391/1000, 63875514881/200000000000); (-391/1000, 60060060089/200000000000); (-158513/500000, 314617542613/1000000000000); (-158513/500000, 233773961197/1000000000000); (-391/1000, 75018893699/200000000000); (-391/1000, 61259125931/200000000000)` |
| 71 | 85 | u | 254643/500000 | 98903/125000 | 262049278949/500000000000 | 98903/125000 | 262049/500000 | 98903/125000 | `(1/1, -169718559889/250000000000); (1/1, -191583462141/250000000000); (1/1, -185721875239/250000000000); (1/1, -207586777491/250000000000); (1/1, -262049278949/500000000000); (1/1, -280603969281/500000000000); (1/1, -315439233299/500000000000); (1/1, -333993923631/500000000000)` |
| 72 | 86 | r | 682817/1000000 | 992403/1000000 | 68935408887/100000000000 | 992403/1000000 | 344677/500000 | 992403/1000000 | `(1/1, -84219727053/100000000000); (1/1, -92227981257/100000000000); (1/1, -91247649003/100000000000); (1/1, -99255903207/100000000000); (1/1, -68935408887/100000000000); (1/1, -71971506603/100000000000); (1/1, -80186597937/100000000000); (1/1, -83222695653/100000000000)` |
| 73 | 88 | h | 71261/125000 | 1/1 | 209921509521/365225000000 | 1/1 | 574773/1000000 | 1/1 | `(202401/1000000, -190502630809/1000000000000); (14609/40000, -209921509521/1000000000000); (33003/500000, -190502630809/1000000000000); (22883/100000, -209921509521/1000000000000); (202401/1000000, -239872417493/1000000000000); (14609/40000, -269123911917/1000000000000); (33003/500000, -239872417493/1000000000000); (22883/100000, -269123911917/1000000000000)` |
| 74 | 100 | u | 262049/500000 | 98903/125000 | 262049/500000 | 9537214877/12180000000 | 262049/500000 | 783023/1000000 | `(-341487/500000, 2451871949/5000000000); (-609/1000, 9338455649/20000000000); (-341487/500000, 2552714777/5000000000); (-609/1000, 9537214877/20000000000); (-341487/500000, 11167093903/40000000000); (-609/1000, 10229029609/40000000000); (-341487/500000, 13684502419/40000000000); (-609/1000, 12337213957/40000000000)` |
| 75 | 100 | v | 231429/500000 | 772089/1000000 | 231429/500000 | 409792243/544675000 | 231429/500000 | 376181/500000 | `(-27319/40000, 224274762449/500000000000); (-27319/40000, 463867543/1000000000); (-21787/40000, 202352414549/500000000000); (-21787/40000, 409792243/1000000000); (-27319/40000, 67927620487/250000000000); (-27319/40000, 153091109/500000000); (-21787/40000, 56966446537/250000000000); (-21787/40000, 126053459/500000000)` |
| 76 | 105 | v | 231429/500000 | 376181/500000 | 465951170819/1000000000000 | 376181/500000 | 465951/1000000 | 376181/500000 | `(1/1, -266344156397/500000000000); (1/1, -285728969123/500000000000); (1/1, -183763673137/250000000000); (1/1, -386912159/500000000); (1/1, -465951170819/1000000000000); (1/1, -523874514221/1000000000000); (1/1, -279107824799/500000000000); (1/1, -616138993/1000000000)` |
| 77 | 111 | w | 101633/200000 | 162707/200000 | 245004690677/475902000000 | 162707/200000 | 514821/1000000 | 162707/200000 | `(237951/500000, -145068131501/500000000000); (237951/500000, -151180455173/500000000000); (216977/1000000, -6501572061/31250000000); (216977/1000000, -100560617673/500000000000); (237951/500000, -94777173627/250000000000); (237951/500000, -97833335463/250000000000); (216977/1000000, -148511368729/500000000000); (216977/1000000, -72523416713/250000000000); (237951/500000, -245004690677/1000000000000); (237951/500000, -279647084747/1000000000000); (216977/1000000, -162918733627/1000000000000); (216977/1000000, -178407409747/1000000000000); (237951/500000, -61795138761/250000000000); (237951/500000, -140911474557/500000000000); (216977/1000000, -82547298997/500000000000); (216977/1000000, -90291637057/500000000000)` |
| 78 | 113 | j | 500389/1000000 | 162011/200000 | 500389/1000000 | 133529847091/165503000000 | 500389/1000000 | 806813/1000000 | `(-39559/200000, -7291730993/500000000000); (-123821/1000000, -32788867391/500000000000); (-39559/200000, 101875541273/1000000000000); (-123821/1000000, 28463521751/1000000000000); (-496509/1000000, 142065269007/500000000000); (-84507/200000, 116568132609/500000000000); (-496509/1000000, 400589541273/1000000000000); (-84507/200000, 327177521751/1000000000000); (-39559/200000, -26842035301/250000000000); (-123821/1000000, -79181207/500000000); (-39559/200000, 49803223261/500000000000); (-123821/1000000, 26194427/1000000000); (-496509/1000000, 47836464699/250000000000); (-84507/200000, 70175793/500000000); (-496509/1000000, 199160223261/500000000000); (-84507/200000, 324908427/1000000000)` |
| 79 | 123 | w | 514821/1000000 | 162707/200000 | 514821/1000000 | 99197/122447 | 514821/1000000 | 405061/500000 | `(-45841/250000, -20844342707/1000000000000); (-5633/125000, -117836483807/1000000000000); (-45841/250000, -55679963587/500000000000); (-5633/125000, -104176034137/500000000000); (-122447/250000, 285579657293/1000000000000); (-5492/15625, 188587516193/1000000000000); (-122447/250000, 97532036413/500000000000); (-5492/15625, 49035965863/500000000000); (-45841/250000, 22591/250000); (-5633/125000, -749/15625); (-122447/250000, 99197/250000); (-5492/15625, 32311/125000)` |
| 80 | 123 | j | 500389/1000000 | 806813/1000000 | 9872554899/19407160000 | 806813/1000000 | 254353/500000 | 806813/1000000 | `(485179/1000000, -179011107591/500000000000); (485179/1000000, -191907305991/500000000000); (485179/1000000, -448537799649/1000000000000); (485179/1000000, -474330196449/1000000000000); (94939/500000, -264404415657/1000000000000); (94939/500000, -249356684157/1000000000000); (94939/500000, -88730000031/250000000000); (94939/500000, -21242016789/62500000000); (485179/1000000, -9872554899/40000000000); (485179/1000000, -12556565127/40000000000); (94939/500000, -3063921459/20000000000); (94939/500000, -3589124007/20000000000)` |
| 81 | 136 | f | 12681/40000 | 18213/40000 | 158513/500000 | 18213/40000 | 158513/500000 | 18213/40000 | `(1/1, -158513/500000); (1/1, -391/1000)` |
| 82 | 149 | f | 158513/500000 | 18213/40000 | 158513/500000 | 51829/113829 | 158513/500000 | 113831/250000 | `(-341487/500000, 155487/500000); (-609/1000, 237/1000)` |
| 83 | 157 | a | 4227/40000 | 38841/125000 | 4227/40000 | 27707970639/89707970639 | 4227/40000 | 308869/1000000 | `(-190502630809/1000000000000, 2587990617981357/1000000000000000000); (-209921509521/1000000000000, 13749437791913733/1000000000000000000); (-190502630809/1000000000000, 4502630809/1000000000000); (-209921509521/1000000000000, 23921509521/1000000000000); (-239872417493/1000000000000, 30964411019704089/1000000000000000000); (-269123911917/1000000000000, 47777380224269841/1000000000000000000); (-239872417493/1000000000000, 53872417493/1000000000000); (-269123911917/1000000000000, 83123911917/1000000000000)` |
| 84 | 667 | k | 701317/1000000 | 1/1 | 8125455590473/11532543122186 | 1/1 | 704567/1000000 | 1/1 | `(116839685600397/250000000000000, -105505984269677/250000000000000); (98026616538581/250000000000000, -86692915207861/250000000000000); (116839685600397/250000000000000, -109132349533517/250000000000000); (98026616538581/250000000000000, -90319280471701/250000000000000); (97449249265379/250000000000000, -47146432738813/125000000000000); (78636180203563/250000000000000, -7547979641581/25000000000000); (97449249265379/250000000000000, -95302791555017/250000000000000); (78636180203563/250000000000000, -76489722493201/250000000000000); (116839685600397/250000000000000, -175758883161673/500000000000000); (98026616538581/250000000000000, -138132745038041/500000000000000); (116839685600397/250000000000000, -2428641215267/6250000000000); (98026616538581/250000000000000, -1223946555451/3906250000000); (97449249265379/250000000000000, -153332645577571/500000000000000); (78636180203563/250000000000000, -115706507453939/500000000000000); (97449249265379/250000000000000, -4165804531609/12500000000000); (78636180203563/250000000000000, -16125755392591/62500000000000)` |
| 85 | 0 | a | 4227/40000 | 308869/1000000 | 15500/146063 | 308869/1000000 | 53059/500000 | 308869/1000000 | `(356777/500000, -93/1000); (34191/62500, -93/1000); (438189/500000, -93/1000); (17747/25000, -93/1000)` |
| 86 | 7 | b | 103989/1000000 | 270487/1000000 | 46500/446941 | 270487/1000000 | 2601/25000 | 270487/1000000 | `(93731/200000, -93/1000); (16619/62500, -93/1000); (446941/500000, -93/1000); (691131/1000000, -93/1000)` |
| 87 | 20 | q | 119263/1000000 | 179651/1000000 | 42188123/352650000 | 179651/1000000 | 119631/1000000 | 179651/1000000 | `(817543/1000000, -57239194659/500000000000); (817543/1000000, -155515394469/1000000000000); (980367/1000000, -2635138931/20000000000); (980367/1000000, -8232267221/40000000000); (817543/1000000, -25001106177/250000000000); (817543/1000000, -56693603607/500000000000); (980367/1000000, -5864149097/50000000000); (980367/1000000, -16367849327/100000000000)` |
| 88 | 45 | b | 2601/25000 | 270487/1000000 | 2601/25000 | 104323497/391000000 | 2601/25000 | 266813/1000000 | `(-158513/500000, -9908806441/500000000000); (-158513/500000, 15900914271/500000000000); (-391/1000, 40659313/1000000000); (-391/1000, 104323497/1000000000)` |
| 89 | 45 | c | 817543/1000000 | 980367/1000000 | 7991991/9775000 | 980367/1000000 | 408797/500000 | 980367/1000000 | `(158513/500000, -3899792313/12500000000); (158513/500000, -181793329069/500000000000); (391/1000, -7991991/25000000); (391/1000, -383323883/1000000000)` |
| 90 | 45 | e | 158513/500000 | 391/1000 | 93000/292109 | 391/1000 | 159187/500000 | 391/1000 | `(356777/500000, -279/1000); (550781/1000000, -279/1000); (876327/1000000, -279/1000)` |
| 91 | 57 | p | 307571/500000 | 751537/1000000 | 6021605769/9775000000 | 751537/1000000 | 616021/1000000 | 751537/1000000 | `(159187/500000, -5832705543/25000000000); (159187/500000, -265658216059/1000000000000); (391/1000, -6021605769/25000000000); (391/1000, -285035776997/1000000000000); (159187/500000, -7177093523/25000000000); (159187/500000, -309664099799/1000000000000); (391/1000, -7365993749/25000000000); (391/1000, -329041660737/1000000000000)` |
| 92 | 57 | q | 119631/1000000 | 179651/1000000 | 119631/1000000 | 160171327/895960000 | 119631/1000000 | 178771/1000000 | `(-22399/25000, 35000719447/500000000000); (-733187/1000000, 1136171737/62500000000); (-22399/25000, 107184571/1000000000); (-733187/1000000, 5442541/125000000); (-22399/25000, 56573104939/500000000000); (-733187/1000000, 7665439847/125000000000); (-22399/25000, 160171327/1000000000); (-733187/1000000, 24131771/250000000)` |
| 93 | 75 | c | 408797/500000 | 980367/1000000 | 408797/500000 | 99507139/101500000 | 408797/500000 | 490183/500000 | `(-340813/500000, 155016791069/250000000000); (-609/1000, 298521417/500000000); (-340813/500000, 72004584603/125000000000); (-609/1000, 135742079/250000000)` |
| 94 | 78 | p | 616021/1000000 | 751537/1000000 | 616021/1000000 | 146916547907/195500000000 | 616021/1000000 | 187873/250000 | `(-159187/500000, 94561042171/500000000000); (-159187/500000, 110735939969/500000000000); (-391/1000, 124250333093/500000000000); (-391/1000, 146335970527/500000000000); (-159187/500000, 99954787591/500000000000); (-159187/500000, 111316517349/500000000000); (-391/1000, 129644078513/500000000000); (-391/1000, 146916547907/500000000000)` |
| 95 | 81 | r | 344677/500000 | 992403/1000000 | 344677/500000 | 39383973211/39796750000 | 344677/500000 | 247407/250000 | `(-159187/500000, 130603555741/500000000000); (-159187/500000, 114615520199/500000000000); (-391/1000, 160292846663/500000000000); (-391/1000, 150215550757/500000000000); (-159187/500000, 39383973211/125000000000); (-159187/500000, 29378622529/125000000000); (-391/1000, 93612591883/250000000000); (-391/1000, 76557260337/250000000000)` |
| 96 | 85 | u | 262049/500000 | 783023/1000000 | 33374103649/62500000000 | 783023/1000000 | 106797/200000 | 783023/1000000 | `(1/1, -84669229979/125000000000); (1/1, -38214103183/50000000000); (1/1, -74179393123/100000000000); (1/1, -414361077529/500000000000); (1/1, -33374103649/62500000000); (1/1, -14357354773/25000000000); (1/1, -31901790913/50000000000); (1/1, -169586087699/250000000000)` |
| 97 | 86 | r | 344677/500000 | 247407/250000 | 43192053169/62500000000 | 247407/250000 | 10798/15625 | 247407/250000 | `(1/1, -104861385209/125000000000); (1/1, -45893231893/50000000000); (1/1, -91008979633/100000000000); (1/1, -494531676259/500000000000); (1/1, -43192053169/62500000000); (1/1, -18049491813/25000000000); (1/1, -40155555153/50000000000); (1/1, -208504481219/250000000000)` |
| 98 | 88 | h | 574773/1000000 | 1/1 | 105141082473/182172500000 | 1/1 | 577151/1000000 | 1/1 | `(201573/1000000, -95404793907/500000000000); (72869/200000, -105141082473/500000000000); (33051/500000, -95404793907/500000000000); (114437/500000, -105141082473/500000000000); (201573/1000000, -119581048487/500000000000); (72869/200000, -134130505093/500000000000); (33051/500000, -119581048487/500000000000); (114437/500000, -134130505093/500000000000)` |
| 99 | 100 | u | 106797/200000 | 783023/1000000 | 106797/200000 | 118793997281/152250000000 | 106797/200000 | 780257/1000000 | `(-340813/500000, 243917373001/500000000000); (-609/1000, 232405207863/500000000000); (-340813/500000, 127061087487/250000000000); (-609/1000, 118793997281/250000000000); (-340813/500000, 36527934961/125000000000); (-609/1000, 67299787353/250000000000); (-340813/500000, 22015197007/62500000000); (-609/1000, 39896848911/125000000000)` |
| 100 | 100 | v | 465951/1000000 | 376181/500000 | 465951/1000000 | 403771451/544676000 | 465951/1000000 | 370653/500000 | `(-341487/500000, 221044552333/500000000000); (-341487/500000, 457845969/1000000000); (-136169/250000, 199029308607/500000000000); (-136169/250000, 403771451/1000000000); (-341487/500000, 137111853197/500000000000); (-341487/500000, 307866321/1000000000); (-136169/250000, 115096609471/500000000000); (-136169/250000, 253791803/1000000000)` |
| 101 | 105 | v | 465951/1000000 | 370653/500000 | 468238434311/1000000000000 | 370653/500000 | 234119/500000 | 370653/500000 | `(1/1, -106393592731/200000000000); (1/1, -114149831653/200000000000); (1/1, -72902194039/100000000000); (1/1, -153560627/200000000); (1/1, -468238434311/1000000000000); (1/1, -524905379193/1000000000000); (1/1, -280578271059/500000000000); (1/1, -617823487/1000000000)` |
| 102 | 111 | w | 514821/1000000 | 405061/500000 | 121460724509/233007500000 | 405061/500000 | 521273/1000000 | 405061/500000 | `(93203/200000, -143832122701/500000000000); (93203/200000, -37384105733/125000000000); (219743/1000000, -104628821837/500000000000); (219743/1000000, -25347561733/125000000000); (93203/200000, -186011298253/500000000000); (93203/200000, -47928899621/125000000000); (219743/1000000, -146807997389/500000000000); (219743/1000000, -35892355621/125000000000); (93203/200000, -121460724509/500000000000); (93203/200000, -2156351387/7812500000); (219743/1000000, -16451484729/100000000000); (219743/1000000, -1404067387/7812500000); (93203/200000, -122876855157/500000000000); (93203/200000, -17427827427/62500000000); (219743/1000000, -83673554293/500000000000); (219743/1000000, -11409555427/62500000000)` |
| 103 | 113 | j | 254353/500000 | 806813/1000000 | 254353/500000 | 32895200517/40979000000 | 254353/500000 | 401367/500000 | `(-202899/1000000, -18372717/1953125000); (-130273/1000000, -232799321/3906250000); (-202899/1000000, 26473351551/250000000000); (-130273/1000000, 8505170769/250000000000); (-122937/250000, 4366283889/15625000000); (-209561/500000, 3582068341/15625000000); (-122937/250000, 98685601551/250000000000); (-209561/500000, 80717420769/250000000000); (-202899/1000000, -1573036827/15625000000); (-130273/1000000, -18858019/125000000); (-202899/1000000, 12853646891/125000000000); (-130273/1000000, 7739113/250000000); (-122937/250000, 1470114399/7812500000); (-209561/500000, 8624053/62500000); (-122937/250000, 48959771891/125000000000); (-209561/500000, 79951363/250000000)` |
| 104 | 123 | w | 521273/1000000 | 405061/500000 | 521273/1000000 | 3167/3917 | 521273/1000000 | 808527/1000000 | `(-599/3125, -5912765959/500000000000); (-26691/500000, -27316434721/250000000000); (-599/3125, -50014413333/500000000000); (-26691/500000, -6170907301/31250000000); (-121427/250000, 141101234041/500000000000); (-34741/100000, 46190565279/250000000000); (-121427/250000, 96999586667/500000000000); (-34741/100000, 3017467699/31250000000); (-599/3125, 2467/25000); (-26691/500000, -19809/500000); (-121427/250000, 98177/250000); (-34741/100000, 25441/100000)` |
| 105 | 123 | j | 254353/500000 | 401367/500000 | 122384452951/239363500000 | 401367/500000 | 511291/1000000 | 401367/500000 | `(478727/1000000, -17763721891/50000000000); (478727/1000000, -47577953929/125000000000); (478727/1000000, -55434716571/125000000000); (478727/1000000, -23441346309/50000000000); (191473/1000000, -16512965701/62500000000); (191473/1000000, -7807187223/31250000000); (191473/1000000, -88102686491/250000000000); (191473/1000000, -84508321471/250000000000); (478727/1000000, -122384452951/500000000000); (478727/1000000, -77743973137/250000000000); (191473/1000000, -76850959649/500000000000); (191473/1000000, -45045563063/250000000000)` |
| 106 | 136 | f | 158513/500000 | 113831/250000 | 159187/500000 | 113831/250000 | 159187/500000 | 113831/250000 | `(1/1, -159187/500000); (1/1, -391/1000)` |
| 107 | 149 | f | 159187/500000 | 113831/250000 | 159187/500000 | 154813/340813 | 159187/500000 | 454247/1000000 | `(-340813/500000, 154813/500000); (-609/1000, 237/1000)` |
| 108 | 157 | a | 53059/500000 | 308869/1000000 | 53059/500000 | 41130505093/134130505093 | 53059/500000 | 153323/500000 | `(-95404793907/500000000000, 1387929208218957/500000000000000000); (-105141082473/500000000000, 7007237890374423/500000000000000000); (-95404793907/500000000000, 2404793907/500000000000); (-105141082473/500000000000, 12141082473/500000000000); (-119581048487/500000000000, 15341278715320537/500000000000000000); (-134130505093/500000000000, 23738512144930043/500000000000000000); (-119581048487/500000000000, 26581048487/500000000000); (-134130505093/500000000000, 41130505093/500000000000)` |
| 109 | 667 | k | 704567/1000000 | 1/1 | 17341340180573/24459433045218 | 1/1 | 708983/1000000 | 1/1 | `(5832239652001/12500000000000, -210608916806463/500000000000000); (12229716522609/31250000000000, -172994795088167/500000000000000); (5832239652001/12500000000000, -108887717956473/250000000000000); (12229716522609/31250000000000, -3603226283893/10000000000000); (97594360234427/250000000000000, -18848222960469/50000000000000); (78787299375279/250000000000000, -75434053943197/250000000000000); (97594360234427/250000000000000, -95300655734223/250000000000000); (78787299375279/250000000000000, -3059743795003/10000000000000); (5832239652001/12500000000000, -137769408721/390625000000); (12229716522609/31250000000000, -17341340180573/62500000000000); (5832239652001/12500000000000, -4858448620763/12500000000000); (12229716522609/31250000000000, -4897619472257/15625000000000); (97594360234427/250000000000000, -154218155961107/500000000000000); (78787299375279/250000000000000, -116604034242811/500000000000000); (97594360234427/250000000000000, -8358191019301/25000000000000); (78787299375279/250000000000000, -32387424666931/125000000000000)` |
| 110 | 0 | a | 53059/500000 | 153323/500000 | 46500/438163 | 153323/500000 | 26531/250000 | 153323/500000 | `(356777/500000, -93/1000); (550781/1000000, -93/1000); (438163/500000, -93/1000); (713553/1000000, -93/1000)` |
| 111 | 7 | b | 2601/25000 | 266813/1000000 | 23250/223469 | 266813/1000000 | 104041/1000000 | 266813/1000000 | `(471027/1000000, -93/1000); (54101/200000, -93/1000); (223469/250000, -93/1000); (346677/500000, -93/1000)` |
| 112 | 20 | q | 119631/1000000 | 178771/1000000 | 14661128047/122545750000 | 178771/1000000 | 119637/1000000 | 178771/1000000 | `(408797/500000, -28597933263/250000000000); (408797/500000, -77405777079/500000000000); (490183/500000, -6583287439/50000000000); (490183/500000, -20472493687/100000000000); (408797/500000, -12501876081/125000000000); (408797/500000, -28317478473/250000000000); (490183/500000, -14661128047/125000000000); (490183/500000, -40795824151/250000000000)` |
| 113 | 45 | b | 104041/1000000 | 266813/1000000 | 104041/1000000 | 52161553/195500000 | 104041/1000000 | 66703/250000 | `(-159187/500000, -4674831961/250000000000); (-159187/500000, 8280761221/250000000000); (-391/1000, 20339627/500000000); (-391/1000, 52161553/500000000)` |
| 114 | 45 | c | 408797/500000 | 490183/500000 | 319680031/391000000 | 490183/500000 | 163519/200000 | 490183/500000 | `(159187/500000, -156061974667/500000000000); (159187/500000, -45493250461/125000000000); (391/1000, -319680031/1000000000); (391/1000, -95830873/250000000)` |
| 115 | 45 | e | 159187/500000 | 391/1000 | 11160/35053 | 391/1000 | 2547/8000 | 391/1000 | `(356777/500000, -279/1000); (550783/1000000, -279/1000); (35053/40000, -279/1000)` |
| 116 | 57 | p | 616021/1000000 | 187873/250000 | 240869877883/391000000000 | 187873/250000 | 123207/200000 | 187873/250000 | `(2547/8000, -116656950129/500000000000); (2547/8000, -33207835407/125000000000); (391/1000, -240869877883/1000000000000); (391/1000, -71259976189/250000000000); (2547/8000, -71573884941/250000000000); (2547/8000, -19313688903/62500000000); (391/1000, -293851517389/1000000000000); (391/1000, -82099060987/250000000000)` |
| 117 | 57 | q | 119637/1000000 | 178771/1000000 | 119637/1000000 | 53384447/298653000 | 119637/1000000 | 178751/1000000 | `(-895959/1000000, 280024359/4000000000); (-183297/250000, 145470981/8000000000); (-895959/1000000, 53594827/500000000); (-183297/250000, 43546193/1000000000); (-895959/1000000, 905057697/8000000000); (-183297/250000, 12261999/200000000); (-895959/1000000, 160153341/1000000000); (-183297/250000, 2412747/25000000)` |
| 118 | 75 | c | 163519/200000 | 490183/500000 | 163519/200000 | 42608269/43500000 | 163519/200000 | 979501/1000000 | `(-5453/8000, 2478550711/4000000000); (-609/1000, 298257883/500000000); (-5453/8000, 4611032891/8000000000); (-609/1000, 543389423/1000000000)` |
| 119 | 78 | p | 123207/200000 | 187873/250000 | 123207/200000 | 293649107749/391000000000 | 123207/200000 | 751021/1000000 | `(-2547/8000, 18912419511/100000000000); (-2547/8000, 110650534869/500000000000); (-391/1000, 49700406397/200000000000); (-391/1000, 292437329863/1000000000000); (-2547/8000, 4997672107/25000000000); (-2547/8000, 27814105953/125000000000); (-391/1000, 51856944231/200000000000); (-391/1000, 293649107749/1000000000000)` |
| 120 | 81 | r | 10798/15625 | 247407/250000 | 10798/15625 | 2623176463/2653125000 | 10798/15625 | 123589/125000 | `(-2547/8000, 26238460969/100000000000); (-2547/8000, 114767103051/500000000000); (-391/1000, 64352489313/200000000000); (-391/1000, 300670466227/1000000000000); (-2547/8000, 7869529389/25000000000); (-2547/8000, 29427828231/125000000000); (-391/1000, 74831802487/200000000000); (-391/1000, 306558885973/1000000000000)` |
| 121 | 85 | u | 106797/200000 | 780257/1000000 | 270259738687/500000000000 | 780257/1000000 | 540519/1000000 | 780257/1000000 | `(1/1, -338420378701/500000000000); (1/1, -381468107887/500000000000); (1/1, -92557707397/125000000000); (1/1, -206639279387/250000000000); (1/1, -270259738687/500000000000); (1/1, -291201794069/500000000000); (1/1, -80155368439/125000000000); (1/1, -170781764569/250000000000)` |
| 122 | 86 | r | 10798/15625 | 123589/125000 | 692961342533/1000000000000 | 123589/125000 | 692961/1000000 | 123589/125000 | `(1/1, -836364571667/1000000000000); (1/1, -913873345329/1000000000000); (1/1, -226797874499/250000000000); (1/1, -492350135829/500000000000); (1/1, -692961342533/1000000000000); (1/1, -723961970071/1000000000000); (1/1, -200704582901/250000000000); (1/1, -416909479571/500000000000)` |
| 123 | 88 | h | 577151/1000000 | 1/1 | 210184561137/363466000000 | 1/1 | 289139/500000 | 1/1 | `(5039/25000, -38162922603/200000000000); (181733/500000, -210184561137/1000000000000); (33287/500000, -38162922603/200000000000); (714/3125, -210184561137/1000000000000); (5039/25000, -47829184769/200000000000); (181733/500000, -268086783251/1000000000000); (33287/500000, -47829184769/200000000000); (714/3125, -268086783251/1000000000000)` |
| 124 | 100 | u | 540519/1000000 | 780257/1000000 | 540519/1000000 | 78974521631/101500000000 | 540519/1000000 | 31123/40000 | `(-5453/8000, 243237241381/500000000000); (-609/1000, 115838142753/250000000000); (-5453/8000, 506836818161/1000000000000); (-609/1000, 236923564893/500000000000); (-5453/8000, 150172117097/500000000000); (-609/1000, 69305580611/250000000000); (-5453/8000, 357809137957/1000000000000); (-609/1000, 162409724791/500000000000)` |
| 125 | 100 | v | 234119/500000 | 370653/500000 | 234119/500000 | 50026669/68219125 | 234119/500000 | 183331/250000 | `(-340813/500000, 699530263/1600000000); (-340813/500000, 90667939/200000000); (-545753/1000000, 49243481/125000000); (-545753/1000000, 50026669/125000000); (-340813/500000, 2202258447/8000000000); (-340813/500000, 308668091/1000000000); (-545753/1000000, 464047479/2000000000); (-545753/1000000, 63885437/250000000)` |
| 126 | 105 | v | 234119/500000 | 183331/250000 | 18762158931/40000000000 | 183331/250000 | 469053/1000000 | 183331/250000 | `(1/1, -530795490343/1000000000000); (1/1, -285025341359/500000000000); (1/1, -5796549893/8000000000); (1/1, -763823929/1000000000); (1/1, -18762158931/40000000000); (1/1, -10511233403/20000000000); (1/1, -180046281/320000000); (1/1, -24766093/40000000)` |
| 127 | 111 | w | 521273/1000000 | 808527/1000000 | 240988116639/459481000000 | 808527/1000000 | 262239/500000 | 808527/1000000 | `(459481/1000000, -285551285817/1000000000000); (459481/1000000, -296622386067/1000000000000); (8877/40000, -209919394317/1000000000000); (8877/40000, -203737990067/1000000000000); (459481/1000000, -183346394693/500000000000); (459481/1000000, -94440972409/250000000000); (8877/40000, -145530448943/500000000000); (8877/40000, -71219873409/250000000000); (459481/1000000, -240988116639/1000000000000); (459481/1000000, -17096133329/62500000000); (8877/40000, -165356225139/1000000000000); (8877/40000, -11290858579/62500000000); (459481/1000000, -243971207687/1000000000000); (459481/1000000, -34565153039/125000000000); (8877/40000, -168339316187/1000000000000); (8877/40000, -22954603539/125000000000)` |
| 128 | 113 | j | 511291/1000000 | 401367/500000 | 511291/1000000 | 3068303257/3829312500 | 511291/1000000 | 200317/250000 | `(-206103/1000000, -426805607/62500000000); (-66739/500000, -57155182337/1000000000000); (-206103/1000000, 1698340889/15625000000); (-66739/500000, 4611075987/125000000000); (-61269/125000, 17326256893/62500000000); (-417527/1000000, 226893817663/1000000000000); (-61269/125000, 3068303257/7812500000); (-417527/1000000, 40117200987/125000000000); (-206103/1000000, -769459667/8000000000); (-66739/500000, -146508751/1000000000); (-206103/1000000, 105408817/1000000000); (-66739/500000, 4200451/125000000); (-61269/125000, 1502932333/8000000000); (-417527/1000000, 137540249/1000000000); (-61269/125000, 389457817/1000000000); (-417527/1000000, 2481661/7812500)` |
| 129 | 123 | w | 262239/500000 | 808527/1000000 | 262239/500000 | 194947/241447 | 262239/500000 | 201853/250000 | `(-192917/1000000, -9094184979/1000000000000); (-14261/250000, -52712916069/500000000000); (-192917/1000000, -47581376873/500000000000); (-14261/250000, -38298880181/200000000000); (-241447/500000, 280882815021/1000000000000); (-347021/1000000, 92275583931/500000000000); (-241447/500000, 97407123127/500000000000); (-347021/1000000, 19696519819/200000000000); (-192917/1000000, 99917/1000000); (-14261/250000, -8989/250000); (-241447/500000, 194947/500000); (-347021/1000000, 254021/1000000)` |
| 130 | 123 | j | 511291/1000000 | 200317/250000 | 61098460307/118880500000 | 200317/250000 | 128487/250000 | 200317/250000 | `(237761/500000, -353405026207/1000000000000); (237761/500000, -47309284259/125000000000); (237761/500000, -219736797487/500000000000); (237761/500000, -464542842839/1000000000000); (48147/250000, -263326196891/1000000000000); (48147/250000, -124976176687/500000000000); (48147/250000, -174697382829/500000000000); (48147/250000, -336020922141/1000000000000); (237761/500000, -61098460307/250000000000); (237761/500000, -154502220967/500000000000); (48147/250000, -19289376489/125000000000); (48147/250000, -45120630309/250000000000)` |
| 131 | 136 | f | 159187/500000 | 454247/1000000 | 2547/8000 | 454247/1000000 | 2547/8000 | 454247/1000000 | `(1/1, -2547/8000); (1/1, -391/1000)` |
| 132 | 149 | f | 2547/8000 | 454247/1000000 | 2547/8000 | 2477/5453 | 2547/8000 | 227123/500000 | `(-5453/8000, 2477/8000); (-609/1000, 237/1000)` |
| 133 | 157 | a | 26531/250000 | 153323/500000 | 26531/250000 | 82086783251/268086783251 | 26531/250000 | 61239/200000 | `(-38162922603/200000000000, 278418478508817/100000000000000000); (-210184561137/1000000000000, 6992699822591043/500000000000000000); (-38162922603/200000000000, 962922603/200000000000); (-210184561137/1000000000000, 24184561137/1000000000000); (-47829184769/200000000000, 3073311854923891/100000000000000000); (-268086783251/1000000000000, 23734490422410889/500000000000000000); (-47829184769/200000000000, 10629184769/200000000000); (-268086783251/1000000000000, 82086783251/1000000000000)` |
| 134 | 667 | k | 708983/1000000 | 1/1 | 278206094142537/391750144455064 | 1/1 | 355081/500000 | 1/1 | `(5832226864501/12500000000000, -420592494881033/1000000000000000); (48968768056883/125000000000000, -345764490176017/1000000000000000); (5832226864501/12500000000000, -108780666063977/250000000000000); (48968768056883/125000000000000, -90073664887723/250000000000000); (97594384899709/250000000000000, -188169816437329/500000000000000); (15777476744691/50000000000000, -150755814084821/500000000000000); (97594384899709/250000000000000, -95193803838227/250000000000000); (15777476744691/50000000000000, -76486802661973/250000000000000); (5832226864501/12500000000000, -353034098847553/1000000000000000); (48968768056883/125000000000000, -278206094142537/1000000000000000); (5832226864501/12500000000000, -97227703841857/250000000000000); (48968768056883/125000000000000, -78520702665603/250000000000000); (97594384899709/250000000000000, -154390618420589/500000000000000); (15777476744691/50000000000000, -116976616068081/500000000000000); (97594384899709/250000000000000, -83640841616107/250000000000000); (15777476744691/50000000000000, -64933840439853/250000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 157:4 | ABF | lo | 93/1000 | occupants none |
| 157:6 | ABH | lo | 93/1000 | occupants none |
| 157:8 | ABP | lo | 93/1000 | occupants none |
| 157:10 | ABQ | lo | 23373/250000 | earlier 154:10; ABQ; lo; 23373/250000 |
| 157:16 | ACE | lo | 279/1000 | occupants P |
| 157:17 | ACE | hi | 77852316461/200000000000 | vertex maximum 77852316461/200000000000 |
| 157:19 | ACF | hi | 46187941919/50000000000 | vertex maximum 46187941919/50000000000 |
| 157:20 | ACH | lo | 285877/1000000 | earlier 154:20; ACH; lo; 285877/1000000 |
| 157:21 | ACH | hi | 218888108969/250000000000 | vertex maximum 218888108969/250000000000 |
| 157:22 | ACP | lo | 93/1000 | occupants none |
| 157:24 | ACQ | lo | 292683/1000000 | earlier 154:24; ACQ; lo; 292683/1000000 |
| 157:30 | AEF | lo | 353/1000 | earlier 154:30; AEF; lo; 353/1000 |
| 157:31 | AEF | hi | 6610404703/8000000000 | vertex maximum 6610404703/8000000000 |
| 157:36 | AEQ | lo | 93/1000 | occupants none |
| 157:42 | AFH | lo | 93/1000 | occupants none |
| 157:69 | BCE | hi | 17115243/50000000 | vertex maximum 17115243/50000000 |
| 157:73 | BCH | hi | 43773/50000 | vertex maximum 43773/50000 |
| 157:74 | BCP | lo | 93/1000 | occupants none |
| 157:86 | BEP | lo | 93/1000 | occupants none |
| 157:94 | BFH | lo | 93/1000 | occupants none |
| 157:120 | CEF | lo | 279/1000 | occupants Q |
| 157:121 | CEF | hi | 18880001/50000000 | vertex maximum 18880001/50000000 |
| 157:123 | CEH | hi | 100416929/200000000 | vertex maximum 100416929/200000000 |
| 157:124 | CEP | lo | 93/1000 | occupants none |
| 157:125 | CEP | hi | 145779422749/1000000000000 | vertex maximum 145779422749/1000000000000 |
| 157:126 | CEQ | lo | 93/1000 | occupants none |
| 157:128 | CER | lo | 93/1000 | occupants none |
| 157:131 | CES | hi | 301130977/1000000000 | vertex maximum 301130977/1000000000 |
| 157:133 | CFH | hi | 67575758911/100000000000 | vertex maximum 67575758911/100000000000 |
| 157:134 | CFP | lo | 93/1000 | occupants none |
| 157:135 | CFP | hi | 60125213513/200000000000 | vertex maximum 60125213513/200000000000 |
| 157:136 | CFQ | lo | 93/1000 | occupants none |
| 157:138 | CFR | lo | 279/1000 | occupants Q |
| 157:142 | CHP | lo | 93/1000 | occupants none |
| 157:150 | CPQ | lo | 93/1000 | occupants none |
| 157:156 | CQR | lo | 93/1000 | occupants none |
| 157:160 | EFH | lo | 279/1000 | occupants Q |
| 157:161 | EFH | hi | 269890949069/500000000000 | vertex maximum 269890949069/500000000000 |
| 157:162 | EFP | lo | 143339/500000 | earlier 154:150; EFP; lo; 143339/500000 |
| 157:163 | EFP | hi | 3350419919/8000000000 | vertex maximum 3350419919/8000000000 |
| 157:164 | EFQ | lo | 93/1000 | occupants none |
| 157:167 | EFR | hi | 2605165297/8000000000 | vertex maximum 2605165297/8000000000 |
| 157:168 | EFS | lo | 93/1000 | occupants none |
| 157:170 | EHP | lo | 94573/1000000 | earlier 154:158; EHP; lo; 94573/1000000 |
| 157:172 | EHQ | lo | 93/1000 | occupants none |
| 157:181 | EPR | hi | 248793408487/1000000000000 | vertex maximum 248793408487/1000000000000 |
| 157:188 | ERS | lo | 93/1000 | occupants none |
| 157:190 | FHP | lo | 150459/1000000 | earlier 154:178; FHP; lo; 150459/1000000 |
| 157:208 | FRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 0 | fan | ACE = ACP + CEP + AEP | point P |
| 7 | fan | BCE = BCP + CEP + BEP | point P |
| 14 | fan | CEF = CEQ + EFQ + CFQ | point Q |
| 33 | plu | AEP * BCP = ABP * CEP + ACP * BEP | circuit PABCE |
| 124 | plu | AEP * BFP = ABP * EFP + AFP * BEP | circuit PABEF |
| 144 | plu | AEP * BHP = ABP * EHP + AHP * BEP | circuit PABEH |
| 250 | plu | ACF * AEH = ACE * AFH + ACH * AEF | circuit ACEFH |
| 252 | plu | AEF * CEH = ACE * EFH + AEH * CEF | circuit EACFH |
| 253 | plu | AEF * CFH = ACF * EFH + AFH * CEF | circuit FACEH |
| 254 | plu | AEH * CFH = ACH * EFH + AFH * CEH | circuit HACEF |
| 259 | plu | AFP * CEP = ACP * EFP + AEP * CFP | circuit PACEF |
| 264 | plu | AFQ * CEQ = ACQ * EFQ + AEQ * CFQ | circuit QACEF |
| 279 | plu | AHP * CEP = ACP * EHP + AEP * CHP | circuit PACEH |
| 284 | plu | AEQ * CHQ = ACQ * EHQ + AHQ * CEQ | circuit QACEH |
| 510 | plu | BFP * CEP = BCP * EFP + BEP * CFP | circuit PBCEF |
| 530 | plu | BHP * CEP = BCP * EHP + BEP * CHP | circuit PBCEH |
| 573 | plu | BHP * CFP = BCP * FHP + BFP * CHP | circuit PBCFH |
| 754 | plu | CFH * EFP = CEF * FHP + CFP * EFH | circuit FCEHP |
| 756 | plu | CFP * EHP = CEP * FHP + CHP * EFP | circuit PCEFH |
| 759 | plu | CEF * FHQ = CFH * EFQ + CFQ * EFH | circuit FCEHQ |
| 789 | plu | CEF * FQR = CFQ * EFR + CFR * EFQ | circuit FCEQR |
| 795 | plu | CES * EFR = CEF * ERS + CER * EFS | circuit ECFRS |
| 797 | plu | CRS * EFR = CER * FRS + CFR * ERS | circuit RCEFS |
| 939 | quad | BCE + ABE >= 279/625 | quadrilateral BCEA; occupants P |
| 1153 | quad | BCE + BEQ >= 279/625 | quadrilateral BCEQ; occupants P |
| 1154 | support | BCQ * BCE >= 135501/250000 * (BCQ - BEQ) | quadrilateral BCEQ; occupants P; rate 1457/250 |
| 1291 | quad | EFP + CEP >= 279/625 | quadrilateral EFPC; occupants Q |
| 1602 | support | EFH * CEF >= 1023/1000 * (EFH - CFH) | pentagon FHACE |
| 1662 | support | EFH * EFP >= 1023/1000 * (EFH - FHP) | pentagon FHAPE |
| 2127 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 2289 | bary | outer BCE; fans CEP, BEP, BCP; target AFP; sign -1; vertices ABF -1; ACF -1; AEF -1 | container BCE; inner P; line AF |
| 2290 | bary | outer BCE; fans CEP, BEP, BCP; target AHP; sign -1; vertices ABH -1; ACH -1; AEH -1 | container BCE; inner P; line AH |
| 2292 | bary | outer BCE; fans CEP, BEP, BCP; target APQ; sign -1; vertices ABQ -1; ACQ -1; AEQ -1 | container BCE; inner P; line AQ |
| 2316 | bary | outer BCE; fans CEP, BEP, BCP; target FHP; sign 1; vertices BFH 1; CFH 1; EFH 1 | container BCE; inner P; line FH |
| 2399 | bary | outer BCH; fans CHP, BHP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EHQ 1 | container BCH; inner P; line EQ |
| 2565 | bary | outer CEF; fans EFQ, CFQ, CEQ; target AEQ; sign 1; vertices ACE -1; none 0; AEF 1 | container CEF; inner Q; line AE |
| 2567 | bary | outer CEF; fans EFQ, CFQ, CEQ; target AHQ; sign -1; vertices ACH -1; AEH -1; AFH -1 | container CEF; inner Q; line AH |
| 2588 | bary | outer CEF; fans EFQ, CFQ, CEQ; target FHQ; sign 1; vertices CFH 1; EFH 1; none 0 | container CEF; inner Q; line FH |
| 2591 | bary | outer CEF; fans EFQ, CFQ, CEQ; target FQR; sign -1; vertices CFR -1; EFR -1; none 0 | container CEF; inner Q; line FR |
| 2598 | bary | outer CEF; fans EFQ, CFQ, CEQ; target QRS; sign 1; vertices CRS 1; ERS 1; FRS 1 | container CEF; inner Q; line RS |
| 2642 | bary | outer EFH; fans FHQ, EHQ, EFQ; target BPQ; sign 1; vertices BEP 1; BFP 1; BHP 1 | container EFH; inner Q; line BP |
| 2667 | bary | outer EFP; fans FPQ, EPQ, EFQ; target ABQ; sign 1; vertices ABE 1; ABF 1; ABP 1 | container EFP; inner Q; line AB |
| 2682 | bary | outer EFP; fans FPQ, EPQ, EFQ; target CHQ; sign -1; vertices CEH -1; CFH -1; CHP 1 | container EFP; inner Q; line CH |
| 2762 | four | 1 * ACE + -1 * AEP + -1 * ACP + -1 * CEP = 0 | vertices ACEP |
| 2767 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 2771 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 2775 | four | 1 * ACP + 1 * APQ + -1 * ACQ + 1 * CPQ = 0 | vertices ACPQ |
| 2781 | four | 1 * AEF + -1 * AFQ + -1 * AEQ + -1 * EFQ = 0 | vertices AEFQ |
| 2820 | four | 1 * BCP + 1 * BPQ + -1 * BCQ + 1 * CPQ = 0 | vertices BCPQ |
| 2851 | four | 1 * CEF + 1 * CFP + -1 * CEP + -1 * EFP = 0 | vertices CEFP |
| 2871 | four | -1 * CFQ + -1 * CQR + 1 * CFR + -1 * FQR = 0 | vertices CFQR |
| 2879 | four | 1 * EFH + -1 * EHQ + -1 * EFQ + -1 * FHQ = 0 | vertices EFHQ |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 157:224 | AEP | hi | 101631/500000 | 40652316461/200000000000 | 0 | 157:17, 157:22, 157:124 |
| 157:225 | BCP | hi | 31261/200000 | 7815243/50000000 | 7 | 157:69, 157:124, 157:86 |
| 157:226 | CEQ | hi | 191601/1000000 | 9580001/50000000 | 14 | 157:121, 157:164, 157:136 |
| 157:237 | AEP | lo | 27667/250000 | 17298/156305 | 33 | 157:8, 157:124, 157:22, 157:86, 157:225 |
| 157:250 | AEH | lo | 137331/1000000 | 906154150/6598277417 | 250 | 157:16, 157:42, 157:20, 157:30, 157:19 |
| 157:251 | CEH | lo | 140573/1000000 | 929250792/6610404703 | 252 | 157:16, 157:160, 157:250, 157:120, 157:31 |
| 157:253 | AEH | lo | 4293/31250 | 9283297200/67575758911 | 254 | 157:20, 157:160, 157:42, 157:251, 157:133 |
| 157:255 | AFP | lo | 126743/500000 | 36953178000/145779422749 | 259 | 157:22, 157:162, 157:237, 157:134, 157:125 |
| 157:258 | AFQ | lo | 46801/250000 | 3985391/21289000 | 264 | 157:24, 157:164, 157:36, 157:136, 157:226 |
| 157:263 | AHP | lo | 130933/1000000 | 19087413000/145779422749 | 279 | 157:22, 157:170, 157:237, 157:142, 157:125 |
| 157:280 | BFP | lo | 48443/200000 | 35310054000/145779422749 | 510 | 157:74, 157:162, 157:86, 157:134, 157:125 |
| 157:297 | BHP | lo | 4859/40000 | 7303736400/60125213513 | 573 | 157:74, 157:190, 157:280, 157:142, 157:135 |
| 157:300 | CFH | lo | 40547/250000 | 543400488/3350419919 | 754 | 157:120, 157:190, 157:134, 157:160, 157:163 |
| 157:301 | EHP | lo | 13523/100000 | 8130748200/60125213513 | 756 | 157:124, 157:190, 157:142, 157:162, 157:135 |
| 157:303 | FHQ | lo | 108661/1000000 | 10257621/94400005 | 759 | 157:300, 157:164, 157:136, 157:160, 157:121 |
| 157:306 | EFR | lo | 57443/500000 | 34596000/301130977 | 795 | 157:120, 157:188, 157:128, 157:168, 157:131 |
| 157:313 | ABE | lo | 20819/200000 | 5204757/50000000 | 939 | 157:69 |
| 157:318 | BEQ | lo | 20819/200000 | 5204757/50000000 | 1153 | 157:69 |
| 157:319 | EFP | lo | 15031/50000 | 300620577251/1000000000000 | 1291 | 157:125 |
| 157:326 | CFH | lo | 88009/500000 | 96809997/550000000 | 1602 | 157:160, 157:121 |
| 157:342 | FPQ | lo | 104669/1000000 | 22910955384117/218888108969000 | 2127 | 157:21, 157:142, 157:263, 157:22, 157:258, 157:136, 157:303 |
| 157:347 | AHP | lo | 78729/500000 | 898314683/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:20, 157:253 |
| 157:348 | APQ | lo | 29477/200000 | 49461399/335593000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:10, 157:24, 157:36 |
| 157:353 | FHP | lo | 20761/125000 | 947550433/5705081000 | 2316 | 157:69, 157:124, 157:86, 157:74, 157:94, 157:326, 157:160 |
| 157:355 | EPQ | lo | 47089/500000 | 5496641/58364000 | 2399 | 157:73, 157:142, 157:297, 157:74, 157:318, 157:126, 157:172 |
| 157:361 | AHQ | lo | 151433/1000000 | 2859066543/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:20, 157:253, 157:42 |
| 157:375 | FHQ | lo | 112067/1000000 | 21158337/188800010 | 2588 | 157:121, 157:164, 157:136, 157:126, 157:326, 157:160 |
| 157:376 | FQR | lo | 97011/1000000 | 18315699/188800010 | 2591 | 157:121, 157:164, 157:136, 157:126, 157:138, 157:306 |
| 157:385 | BPQ | lo | 61807/500000 | 33362443263417/269890949069000 | 2642 | 157:161, 157:375, 157:172, 157:164, 157:86, 157:280, 157:297 |
| 157:388 | ABQ | lo | 23943/250000 | 45839924701/478631417000 | 2667 | 157:163, 157:342, 157:355, 157:164, 157:313, 157:4, 157:8 |
| 157:390 | CHQ | hi | 461641/1000000 | 154669065357532476209/335041991900000000000 | 2682 | 157:163, 157:342, 157:355, 157:164, 157:123, 157:133, 157:142 |
| 157:394 | ACE | lo | 74167/250000 | 74167/250000 | 2762 | 157:237, 157:22, 157:124 |
| 157:395 | ACF | lo | 219743/500000 | 219743/500000 | 2767 | 157:255, 157:22, 157:134 |
| 157:396 | ACH | lo | 171729/500000 | 171729/500000 | 2771 | 157:347, 157:22, 157:142 |
| 157:397 | ACQ | lo | 66677/200000 | 66677/200000 | 2775 | 157:22, 157:348, 157:150 |
| 157:401 | AEF | lo | 93301/250000 | 93301/250000 | 2781 | 157:258, 157:36, 157:164 |
| 157:405 | BCQ | lo | 154807/500000 | 154807/500000 | 2820 | 157:74, 157:385, 157:150 |
| 157:408 | CFP | hi | 142791/500000 | 17848869539/62500000000 | 2851 | 157:120, 157:125, 157:163 |
| 157:409 | CFR | lo | 283011/1000000 | 283011/1000000 | 2871 | 157:136, 157:156, 157:376 |
| 157:410 | EFH | lo | 298067/1000000 | 298067/1000000 | 2879 | 157:172, 157:164, 157:375 |
| 157:414 | BFP | lo | 63381/250000 | 8588643/33877000 | 124 | 157:8, 157:319, 157:255, 157:86, 157:224 |
| 157:417 | AEH | lo | 84313/500000 | 38942505858/230939709595 | 250 | 157:394, 157:42, 157:396, 157:401, 157:19 |
| 157:419 | CEH | lo | 163951/1000000 | 135473594756/826300587875 | 252 | 157:394, 157:410, 157:417, 157:120, 157:31 |
| 157:420 | CFH | lo | 94967/500000 | 156943273562/826300587875 | 253 | 157:395, 157:410, 157:42, 157:120, 157:31 |
| 157:421 | AEH | lo | 174057/1000000 | 58810469343/337878794555 | 254 | 157:396, 157:410, 157:42, 157:419, 157:133 |
| 157:424 | AFQ | lo | 2587/12500 | 2643587/12773400 | 264 | 157:397, 157:164, 157:36, 157:136, 157:226 |
| 157:427 | AEQ | lo | 97669/1000000 | 22544037/230820500 | 284 | 157:397, 157:172, 157:361, 157:126, 157:390 |
| 157:439 | BHP | lo | 145599/1000000 | 21225390000/145779422749 | 530 | 157:74, 157:301, 157:86, 157:142, 157:125 |
| 157:446 | EHP | lo | 151983/1000000 | 328817/2163500 | 756 | 157:124, 157:353, 157:142, 157:319, 157:408 |
| 157:447 | FHQ | lo | 12019/100000 | 45384093/377600020 | 759 | 157:420, 157:164, 157:136, 157:410, 157:121 |
| 157:448 | FQR | lo | 48999/500000 | 37004421/377600020 | 789 | 157:136, 157:306, 157:409, 157:164, 157:121 |
| 157:453 | BEQ | lo | 28519/250000 | 515247079433/4516700000000 | 1154 | 157:405, 157:69 |
| 157:454 | FHP | lo | 88021/500000 | 130975519454857/744000000000000 | 1662 | 157:410, 157:163 |
| 157:460 | FPQ | lo | 13499/125000 | 23638331634117/218888108969000 | 2127 | 157:21, 157:142, 157:347, 157:22, 157:424, 157:136, 157:447 |
| 157:465 | AFP | lo | 263263/1000000 | 1501942033/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:395, 157:401 |
| 157:466 | AHP | lo | 45767/250000 | 1044420783/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:396, 157:421 |
| 157:467 | APQ | lo | 160843/1000000 | 229406879383/1426270250000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:388, 157:397, 157:427 |
| 157:472 | EPQ | lo | 47619/500000 | 3474077/36477500 | 2399 | 157:73, 157:142, 157:439, 157:74, 157:453, 157:126, 157:172 |
| 157:474 | AEQ | hi | 346211/1000000 | 52291634065144703/151040008000000000 | 2565 | 157:121, 157:164, 157:136, 157:126, 157:394, 157:31 |
| 157:475 | AHQ | lo | 174649/1000000 | 3297384843/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:396, 157:421, 157:42 |
| 157:482 | BPQ | lo | 129719/1000000 | 35010077763417/269890949069000 | 2642 | 157:161, 157:447, 157:172, 157:164, 157:86, 157:414, 157:439 |
| 157:483 | ABQ | lo | 4793/50000 | 45882060341/478631417000 | 2667 | 157:163, 157:460, 157:472, 157:164, 157:313, 157:4, 157:8 |
| 157:485 | CHQ | hi | 460263/1000000 | 154207373202910452209/335041991900000000000 | 2682 | 157:163, 157:460, 157:472, 157:164, 157:123, 157:133, 157:142 |
| 157:488 | ACF | lo | 449263/1000000 | 449263/1000000 | 2767 | 157:465, 157:22, 157:134 |
| 157:489 | ACH | lo | 92267/250000 | 92267/250000 | 2771 | 157:466, 157:22, 157:142 |
| 157:490 | ACQ | lo | 346843/1000000 | 346843/1000000 | 2775 | 157:22, 157:467, 157:150 |
| 157:494 | AEF | lo | 397629/1000000 | 397629/1000000 | 2781 | 157:424, 157:427, 157:164 |
| 157:498 | BCQ | lo | 315719/1000000 | 315719/1000000 | 2820 | 157:74, 157:482, 157:150 |
| 157:503 | CFR | lo | 141999/500000 | 141999/500000 | 2871 | 157:136, 157:156, 157:448 |
| 157:504 | EFH | lo | 30619/100000 | 30619/100000 | 2879 | 157:172, 157:164, 157:447 |
| 157:506 | BFP | lo | 257997/1000000 | 17480373/67754000 | 124 | 157:8, 157:319, 157:465, 157:86, 157:224 |
| 157:510 | AEH | lo | 188731/1000000 | 43585565943/230939709595 | 250 | 157:394, 157:42, 157:489, 157:494, 157:19 |
| 157:512 | CEH | lo | 21707/125000 | 4099792112/23608588225 | 252 | 157:394, 157:504, 157:510, 157:120, 157:31 |
| 157:513 | CFH | lo | 98939/500000 | 4671623942/23608588225 | 253 | 157:488, 157:504, 157:42, 157:120, 157:31 |
| 157:514 | AEH | lo | 95563/500000 | 12915493892/67575758911 | 254 | 157:489, 157:504, 157:42, 157:512, 157:133 |
| 157:516 | AFQ | lo | 107879/500000 | 1722484/7983375 | 264 | 157:490, 157:164, 157:427, 157:136, 157:226 |
| 157:518 | AEQ | lo | 105371/1000000 | 4041563/38355250 | 284 | 157:490, 157:172, 157:475, 157:126, 157:485 |
| 157:531 | BHP | lo | 78143/500000 | 22783419000/145779422749 | 530 | 157:74, 157:446, 157:86, 157:142, 157:125 |
| 157:536 | EHP | lo | 6209/40000 | 7388261/47597000 | 756 | 157:124, 157:454, 157:142, 157:319, 157:408 |
| 157:537 | FHQ | lo | 31037/250000 | 11719581/94400005 | 759 | 157:513, 157:164, 157:136, 157:504, 157:121 |
| 157:538 | FQR | lo | 49121/500000 | 9274053/94400005 | 789 | 157:136, 157:306, 157:503, 157:164, 157:121 |
| 157:542 | BEQ | lo | 4653/40000 | 1050813546361/9033400000000 | 1154 | 157:498, 157:69 |
| 157:543 | FHP | lo | 180839/1000000 | 13454489863649/74400000000000 | 1662 | 157:504, 157:163 |
| 157:548 | FPQ | lo | 109347/1000000 | 23934908634117/218888108969000 | 2127 | 157:21, 157:142, 157:466, 157:22, 157:516, 157:136, 157:537 |
| 157:553 | AFP | lo | 68139/250000 | 91467949/335593000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:488, 157:494 |
| 157:554 | AHP | lo | 194663/1000000 | 1110573233/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:489, 157:514 |
| 157:555 | APQ | lo | 166633/1000000 | 47532738233/285254050000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:483, 157:490, 157:518 |
| 157:559 | EPQ | lo | 95477/1000000 | 5572467/58364000 | 2399 | 157:73, 157:142, 157:531, 157:74, 157:542, 157:126, 157:172 |
| 157:561 | AHQ | lo | 185161/1000000 | 3495842193/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:489, 157:514, 157:42 |
| 157:567 | BPQ | lo | 132331/1000000 | 35715017763417/269890949069000 | 2642 | 157:161, 157:537, 157:172, 157:164, 157:86, 157:506, 157:531 |
| 157:568 | ABQ | lo | 11987/125000 | 1119493701/11673937000 | 2667 | 157:163, 157:548, 157:559, 157:164, 157:313, 157:4, 157:8 |
| 157:570 | CHQ | hi | 459701/1000000 | 22002730247356458887/47863141700000000000 | 2682 | 157:163, 157:548, 157:559, 157:164, 157:123, 157:133, 157:142 |
| 157:573 | ACF | lo | 114639/250000 | 114639/250000 | 2767 | 157:553, 157:22, 157:134 |
| 157:574 | ACH | lo | 380663/1000000 | 380663/1000000 | 2771 | 157:554, 157:22, 157:142 |
| 157:575 | ACQ | lo | 352633/1000000 | 352633/1000000 | 2775 | 157:22, 157:555, 157:150 |
| 157:579 | AEF | lo | 414129/1000000 | 414129/1000000 | 2781 | 157:516, 157:518, 157:164 |
| 157:583 | BCQ | lo | 318331/1000000 | 318331/1000000 | 2820 | 157:74, 157:567, 157:150 |
| 157:588 | CFR | lo | 142121/500000 | 142121/500000 | 2871 | 157:136, 157:156, 157:538 |
| 157:589 | EFH | lo | 77537/250000 | 77537/250000 | 2879 | 157:172, 157:164, 157:537 |
| 157:591 | BFP | lo | 262249/1000000 | 2221057/8469250 | 124 | 157:8, 157:319, 157:553, 157:86, 157:224 |
| 157:592 | BHP | lo | 80043/500000 | 677908/4234625 | 144 | 157:8, 157:536, 157:554, 157:86, 157:224 |
| 157:595 | AEH | lo | 200521/1000000 | 185233711527/923758838380 | 250 | 157:394, 157:42, 157:574, 157:579, 157:19 |
| 157:598 | CFH | lo | 101759/500000 | 168167226288/826300587875 | 253 | 157:573, 157:589, 157:42, 157:120, 157:31 |
| 157:599 | AFQ | lo | 222307/1000000 | 1183177/5322250 | 264 | 157:575, 157:164, 157:518, 157:136, 157:226 |
| 157:601 | AEQ | lo | 54399/500000 | 25007421/229850500 | 284 | 157:575, 157:172, 157:561, 157:126, 157:570 |
| 157:614 | EHP | lo | 156787/1000000 | 1356839/8654000 | 756 | 157:124, 157:543, 157:142, 157:319, 157:408 |
| 157:615 | FHQ | lo | 7907/62500 | 23885469/188800010 | 759 | 157:598, 157:164, 157:136, 157:589, 157:121 |
| 157:616 | FQR | lo | 49151/500000 | 9279726/94400005 | 789 | 157:136, 157:306, 157:588, 157:164, 157:121 |
| 157:620 | BEQ | lo | 117287/1000000 | 22542704587/192200000000 | 1154 | 157:583, 157:69 |
| 157:621 | FHP | lo | 183177/1000000 | 34071027158227/186000000000000 | 1662 | 157:589, 157:163 |
| 157:625 | FPQ | lo | 55147/500000 | 24142135884117/218888108969000 | 2127 | 157:21, 157:142, 157:554, 157:22, 157:599, 157:136, 157:615 |
| 157:629 | AFP | lo | 279563/1000000 | 1594934283/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:573, 157:579 |
| 157:630 | AHP | lo | 100183/500000 | 1143107733/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:574, 157:595 |
| 157:631 | APQ | lo | 169153/1000000 | 120629362197/713135125000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:568, 157:575, 157:601 |
| 157:634 | EPQ | lo | 4779/50000 | 27892157/291820000 | 2399 | 157:73, 157:142, 157:592, 157:74, 157:620, 157:126, 157:172 |
| 157:636 | AHQ | lo | 19033/100000 | 3593445693/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:574, 157:595, 157:42 |
| 157:642 | BPQ | lo | 66859/500000 | 36089435763417/269890949069000 | 2642 | 157:161, 157:615, 157:172, 157:164, 157:86, 157:591, 157:592 |
| 157:643 | ABQ | lo | 95921/1000000 | 45911249701/478631417000 | 2667 | 157:163, 157:625, 157:634, 157:164, 157:313, 157:4, 157:8 |
| 157:645 | CHQ | hi | 459309/1000000 | 153887537109037476209/335041991900000000000 | 2682 | 157:163, 157:625, 157:634, 157:164, 157:123, 157:133, 157:142 |
| 157:648 | ACF | lo | 465563/1000000 | 465563/1000000 | 2767 | 157:629, 157:22, 157:134 |
| 157:649 | ACH | lo | 193183/500000 | 193183/500000 | 2771 | 157:630, 157:22, 157:142 |
| 157:650 | ACQ | lo | 355153/1000000 | 355153/1000000 | 2775 | 157:22, 157:631, 157:150 |
| 157:654 | AEF | lo | 84821/200000 | 84821/200000 | 2781 | 157:599, 157:601, 157:164 |
| 157:658 | BCQ | lo | 159859/500000 | 159859/500000 | 2820 | 157:74, 157:642, 157:150 |
| 157:662 | CFR | lo | 142151/500000 | 142151/500000 | 2871 | 157:136, 157:156, 157:616 |
| 157:663 | EFH | lo | 4883/15625 | 4883/15625 | 2879 | 157:172, 157:164, 157:615 |
| 157:665 | BFP | lo | 53091/200000 | 17985673/67754000 | 124 | 157:8, 157:319, 157:629, 157:86, 157:224 |
| 157:666 | BHP | lo | 16341/100000 | 11071743/67754000 | 144 | 157:8, 157:614, 157:630, 157:86, 157:224 |
| 157:669 | AEH | lo | 829/4000 | 19144987643/92375883838 | 250 | 157:394, 157:42, 157:649, 157:654, 157:19 |
| 157:672 | CFH | lo | 5187/25000 | 171441024256/826300587875 | 253 | 157:648, 157:663, 157:42, 157:120, 157:31 |
| 157:673 | AFQ | lo | 112597/500000 | 14382481/63867000 | 264 | 157:650, 157:164, 157:601, 157:136, 157:226 |
| 157:675 | AEQ | lo | 6903/62500 | 16909973/153103000 | 284 | 157:650, 157:172, 157:636, 157:126, 157:645 |
| 157:689 | EHP | lo | 39387/250000 | 14997707/95194000 | 756 | 157:124, 157:621, 157:142, 157:319, 157:408 |
| 157:690 | FHQ | lo | 12807/100000 | 12089814/94400005 | 759 | 157:672, 157:164, 157:136, 157:663, 157:121 |
| 157:691 | FQR | lo | 24579/250000 | 9281121/94400005 | 789 | 157:136, 157:306, 157:662, 157:164, 157:121 |
| 157:695 | BEQ | lo | 58899/500000 | 532061747021/4516700000000 | 1154 | 157:658, 157:69 |
| 157:696 | FHP | lo | 184573/1000000 | 2145670139593/11625000000000 | 1662 | 157:663, 157:163 |
| 157:701 | FPQ | lo | 55383/500000 | 24245482134117/218888108969000 | 2127 | 157:21, 157:142, 157:630, 157:22, 157:673, 157:136, 157:690 |
| 157:705 | AFP | lo | 284177/1000000 | 1621257933/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:648, 157:654 |
| 157:706 | AHP | lo | 6367/31250 | 1162377333/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:649, 157:669 |
| 157:707 | APQ | lo | 170297/1000000 | 971563524601/5705081000000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:643, 157:650, 157:675 |
| 157:710 | EPQ | lo | 47817/500000 | 13953999/145910000 | 2399 | 157:73, 157:142, 157:666, 157:74, 157:695, 157:126, 157:172 |
| 157:712 | AHQ | lo | 12087/62500 | 3651254493/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:649, 157:669, 157:42 |
| 157:717 | BPQ | lo | 134843/1000000 | 5199011537631/38555849867000 | 2642 | 157:161, 157:690, 157:172, 157:164, 157:86, 157:665, 157:666 |
| 157:718 | ABQ | lo | 47967/500000 | 45917234661/478631417000 | 2667 | 157:163, 157:701, 157:710, 157:164, 157:313, 157:4, 157:8 |
| 157:720 | CHQ | hi | 459113/1000000 | 153821958205341540209/335041991900000000000 | 2682 | 157:163, 157:701, 157:710, 157:164, 157:123, 157:133, 157:142 |
| 157:723 | ACF | lo | 470177/1000000 | 470177/1000000 | 2767 | 157:705, 157:22, 157:134 |
| 157:724 | ACH | lo | 24359/62500 | 24359/62500 | 2771 | 157:706, 157:22, 157:142 |
| 157:725 | ACQ | lo | 356297/1000000 | 356297/1000000 | 2775 | 157:22, 157:707, 157:150 |
| 157:729 | AEF | lo | 214321/500000 | 214321/500000 | 2781 | 157:673, 157:675, 157:164 |
| 157:733 | BCQ | lo | 320843/1000000 | 320843/1000000 | 2820 | 157:74, 157:717, 157:150 |
| 157:737 | CFR | lo | 71079/250000 | 71079/250000 | 2871 | 157:136, 157:156, 157:691 |
| 157:738 | EFH | lo | 31407/100000 | 31407/100000 | 2879 | 157:172, 157:164, 157:690 |
| 157:741 | BFP | lo | 133783/500000 | 18128707/67754000 | 124 | 157:8, 157:319, 157:705, 157:86, 157:224 |
| 157:742 | BHP | lo | 20663/125000 | 2800013/16938500 | 144 | 157:8, 157:689, 157:706, 157:86, 157:224 |
| 157:745 | AEH | lo | 52679/250000 | 48662692912/230939709595 | 250 | 157:394, 157:42, 157:724, 157:729, 157:19 |
| 157:747 | CFH | lo | 210111/1000000 | 34723098078/165260117575 | 253 | 157:723, 157:738, 157:42, 157:120, 157:31 |
| 157:748 | AFQ | lo | 4531/20000 | 2893819/12773400 | 264 | 157:725, 157:164, 157:675, 157:136, 157:226 |
| 157:750 | AEQ | lo | 111347/1000000 | 51121077/459113000 | 284 | 157:725, 157:172, 157:712, 157:126, 157:720 |
| 157:764 | EHP | lo | 158003/1000000 | 15040983/95194000 | 756 | 157:124, 157:696, 157:142, 157:319, 157:408 |
| 157:765 | FHQ | lo | 129101/1000000 | 6964119/53942860 | 759 | 157:747, 157:164, 157:136, 157:738, 157:121 |
| 157:767 | CRS | lo | 26939/250000 | 280723104/2605165297 | 797 | 157:128, 157:208, 157:737, 157:188, 157:167 |
| 157:770 | BEQ | lo | 118213/1000000 | 1067867852917/9033400000000 | 1154 | 157:733, 157:69 |
| 157:771 | FHP | lo | 185493/1000000 | 4600249987999/24800000000000 | 1662 | 157:738, 157:163 |
| 157:776 | FPQ | lo | 5551/50000 | 24300979884117/218888108969000 | 2127 | 157:21, 157:142, 157:706, 157:22, 157:748, 157:136, 157:765 |
| 157:780 | AFP | lo | 35833/125000 | 1635441983/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:723, 157:729 |
| 157:781 | AHP | lo | 205603/1000000 | 2999963/14591000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:724, 157:745 |
| 157:782 | APQ | lo | 85429/500000 | 487382020327/2852540500000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:718, 157:725, 157:750 |
| 157:785 | EPQ | lo | 47839/500000 | 27920863/291820000 | 2399 | 157:73, 157:142, 157:742, 157:74, 157:770, 157:126, 157:172 |
| 157:787 | AHQ | lo | 97539/500000 | 3683079093/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:724, 157:745, 157:42 |
| 157:790 | QRS | lo | 48317/500000 | 260636499/2697143000 | 2598 | 157:121, 157:164, 157:136, 157:126, 157:767, 157:188, 157:208 |
| 157:792 | BPQ | lo | 135533/1000000 | 36579313263417/269890949069000 | 2642 | 157:161, 157:765, 157:172, 157:164, 157:86, 157:741, 157:742 |
| 157:793 | ABQ | lo | 95941/1000000 | 45920455381/478631417000 | 2667 | 157:163, 157:776, 157:785, 157:164, 157:313, 157:4, 157:8 |
| 157:795 | CHQ | hi | 7172/15625 | 21969523980442626887/47863141700000000000 | 2682 | 157:163, 157:776, 157:785, 157:164, 157:123, 157:133, 157:142 |
| 157:798 | ACF | lo | 59083/125000 | 59083/125000 | 2767 | 157:780, 157:22, 157:134 |
| 157:799 | ACH | lo | 391603/1000000 | 391603/1000000 | 2771 | 157:781, 157:22, 157:142 |
| 157:800 | ACQ | lo | 178429/500000 | 178429/500000 | 2775 | 157:22, 157:782, 157:150 |
| 157:804 | AEF | lo | 430897/1000000 | 430897/1000000 | 2781 | 157:748, 157:750, 157:164 |
| 157:808 | BCQ | lo | 321533/1000000 | 321533/1000000 | 2820 | 157:74, 157:792, 157:150 |
| 157:813 | EFH | lo | 315101/1000000 | 315101/1000000 | 2879 | 157:172, 157:164, 157:765 |
| 157:816 | BFP | lo | 8397/31250 | 4551451/16938500 | 124 | 157:8, 157:319, 157:780, 157:86, 157:224 |
| 157:817 | BHP | lo | 166363/1000000 | 5635893/33877000 | 144 | 157:8, 157:764, 157:781, 157:86, 157:224 |
| 157:820 | AEH | lo | 106267/500000 | 196330681891/923758838380 | 250 | 157:394, 157:42, 157:799, 157:804, 157:19 |
| 157:822 | CFH | lo | 105823/500000 | 24983414152/118042941125 | 253 | 157:798, 157:813, 157:42, 157:120, 157:31 |
| 157:823 | AFQ | lo | 227259/1000000 | 2902871/12773400 | 264 | 157:800, 157:164, 157:750, 157:136, 157:226 |
| 157:825 | AEQ | lo | 27957/250000 | 4557/40750 | 284 | 157:800, 157:172, 157:787, 157:126, 157:795 |
| 157:839 | EHP | lo | 158303/1000000 | 15069503/95194000 | 756 | 157:124, 157:771, 157:142, 157:319, 157:408 |
| 157:840 | FHQ | lo | 129733/1000000 | 48987471/377600020 | 759 | 157:822, 157:164, 157:136, 157:813, 157:121 |
| 157:845 | BEQ | lo | 118467/1000000 | 1070164393027/9033400000000 | 1154 | 157:808, 157:69 |
| 157:846 | FHP | lo | 93051/500000 | 138460537918471/744000000000000 | 1662 | 157:813, 157:163 |
| 157:851 | FPQ | lo | 55581/500000 | 24332158134117/218888108969000 | 2127 | 157:21, 157:142, 157:781, 157:22, 157:823, 157:136, 157:840 |
| 157:855 | AFP | lo | 17997/62500 | 1642792083/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:798, 157:804 |
| 157:856 | AHP | lo | 103301/500000 | 1178684883/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:799, 157:820 |
| 157:857 | APQ | lo | 34229/200000 | 976397376221/5705081000000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:793, 157:800, 157:825 |
| 157:860 | EPQ | lo | 19141/200000 | 27928737/291820000 | 2399 | 157:73, 157:142, 157:817, 157:74, 157:845, 157:126, 157:172 |
| 157:862 | AHQ | lo | 195983/1000000 | 3700177143/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:799, 157:820, 157:42 |
| 157:866 | BPQ | lo | 16989/125000 | 5240210537631/38555849867000 | 2642 | 157:161, 157:840, 157:172, 157:164, 157:86, 157:816, 157:817 |
| 157:867 | ABQ | lo | 11993/125000 | 45922255941/478631417000 | 2667 | 157:163, 157:851, 157:860, 157:164, 157:313, 157:4, 157:8 |
| 157:869 | CHQ | hi | 458949/1000000 | 3750413136991402249/8171755900000000000 | 2682 | 157:163, 157:851, 157:860, 157:164, 157:123, 157:133, 157:142 |
| 157:872 | ACF | lo | 14811/31250 | 14811/31250 | 2767 | 157:855, 157:22, 157:134 |
| 157:873 | ACH | lo | 196301/500000 | 196301/500000 | 2771 | 157:856, 157:22, 157:142 |
| 157:874 | ACQ | lo | 71429/200000 | 71429/200000 | 2775 | 157:22, 157:857, 157:150 |
| 157:878 | AEF | lo | 432087/1000000 | 432087/1000000 | 2781 | 157:823, 157:825, 157:164 |
| 157:882 | BCQ | lo | 40239/125000 | 40239/125000 | 2820 | 157:74, 157:866, 157:150 |
| 157:887 | EFH | lo | 315733/1000000 | 315733/1000000 | 2879 | 157:172, 157:164, 157:840 |
| 157:890 | BFP | lo | 269293/1000000 | 4561433/16938500 | 124 | 157:8, 157:319, 157:855, 157:86, 157:224 |
| 157:891 | BHP | lo | 166957/1000000 | 2262411/13550800 | 144 | 157:8, 157:839, 157:856, 157:86, 157:224 |
| 157:894 | AEH | lo | 106753/500000 | 98614172187/461879419190 | 250 | 157:394, 157:42, 157:873, 157:878, 157:19 |
| 157:896 | CFH | lo | 17/80 | 175589286816/826300587875 | 253 | 157:872, 157:887, 157:42, 157:120, 157:31 |
| 157:897 | AFQ | lo | 227631/1000000 | 14538163/63867000 | 264 | 157:874, 157:164, 157:825, 157:136, 157:226 |
| 157:899 | AEQ | lo | 28021/250000 | 2143371/19122875 | 284 | 157:874, 157:172, 157:862, 157:126, 157:869 |
| 157:913 | EHP | lo | 158501/1000000 | 7544191/47597000 | 756 | 157:124, 157:846, 157:142, 157:319, 157:408 |
| 157:914 | FHQ | lo | 130099/1000000 | 49125669/377600020 | 759 | 157:896, 157:164, 157:136, 157:887, 157:121 |
| 157:917 | BEQ | lo | 118607/1000000 | 133928228241/1129175000000 | 1154 | 157:882, 157:69 |
| 157:918 | FHP | lo | 46619/250000 | 138738249064943/744000000000000 | 1662 | 157:887, 157:163 |
| 157:923 | FPQ | lo | 2781/25000 | 24349316634117/218888108969000 | 2127 | 157:21, 157:142, 157:856, 157:22, 157:897, 157:136, 157:914 |
| 157:927 | AFP | lo | 2309/8000 | 1646632983/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:872, 157:878 |
| 157:928 | AHP | lo | 103569/500000 | 1181739933/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:873, 157:894 |
| 157:929 | APQ | lo | 85647/500000 | 122155855183/713135125000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:867, 157:874, 157:899 |
| 157:932 | EPQ | lo | 2393/25000 | 27933077/291820000 | 2399 | 157:73, 157:142, 157:891, 157:74, 157:917, 157:126, 157:172 |
| 157:934 | AHQ | lo | 196469/1000000 | 3709342293/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:873, 157:894, 157:42 |
| 157:938 | BPQ | lo | 34029/250000 | 5248069037631/38555849867000 | 2642 | 157:161, 157:914, 157:172, 157:164, 157:86, 157:890, 157:891 |
| 157:939 | ABQ | lo | 47973/500000 | 45923244981/478631417000 | 2667 | 157:163, 157:923, 157:932, 157:164, 157:313, 157:4, 157:8 |
| 157:941 | CHQ | hi | 114729/250000 | 153756101424935028209/335041991900000000000 | 2682 | 157:163, 157:923, 157:932, 157:164, 157:123, 157:133, 157:142 |
| 157:944 | ACF | lo | 3797/8000 | 3797/8000 | 2767 | 157:927, 157:22, 157:134 |
| 157:945 | ACH | lo | 196569/500000 | 196569/500000 | 2771 | 157:928, 157:22, 157:142 |
| 157:946 | ACQ | lo | 178647/500000 | 178647/500000 | 2775 | 157:22, 157:929, 157:150 |
| 157:950 | AEF | lo | 86543/200000 | 86543/200000 | 2781 | 157:897, 157:899, 157:164 |
| 157:954 | BCQ | lo | 80529/250000 | 80529/250000 | 2820 | 157:74, 157:938, 157:150 |
| 157:958 | EFH | lo | 316099/1000000 | 316099/1000000 | 2879 | 157:172, 157:164, 157:914 |
| 157:961 | BFP | lo | 269601/1000000 | 3653319/13550800 | 124 | 157:8, 157:319, 157:927, 157:86, 157:224 |
| 157:962 | BHP | lo | 167293/1000000 | 11334809/67754000 | 144 | 157:8, 157:913, 157:928, 157:86, 157:224 |
| 157:965 | AEH | lo | 26753/125000 | 19770683367/92375883838 | 250 | 157:394, 157:42, 157:945, 157:950, 157:19 |
| 157:967 | CFH | lo | 212967/1000000 | 1407803903/6610404703 | 253 | 157:944, 157:958, 157:42, 157:120, 157:31 |
| 157:968 | AFQ | lo | 56957/250000 | 7275359/31933500 | 264 | 157:946, 157:164, 157:899, 157:136, 157:226 |
| 157:970 | AEQ | lo | 5611/50000 | 17166653/152972000 | 284 | 157:946, 157:172, 157:934, 157:126, 157:941 |
| 157:983 | EHP | lo | 158623/1000000 | 1887497/11899250 | 756 | 157:124, 157:918, 157:142, 157:319, 157:408 |
| 157:984 | FHQ | lo | 2036/15625 | 24601569/188800010 | 759 | 157:967, 157:164, 157:136, 157:958, 157:121 |
| 157:987 | BEQ | lo | 59341/500000 | 268026200751/2258350000000 | 1154 | 157:954, 157:69 |
| 157:988 | FHP | lo | 46673/250000 | 138899075456729/744000000000000 | 1662 | 157:958, 157:163 |
| 157:992 | FPQ | lo | 111283/1000000 | 1059072310179/9516874303000 | 2127 | 157:21, 157:142, 157:928, 157:22, 157:968, 157:136, 157:984 |
| 157:996 | AFP | lo | 288979/1000000 | 1648649533/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:944, 157:950 |
| 157:997 | AHP | lo | 3241/15625 | 1183373633/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:945, 157:965 |
| 157:998 | APQ | lo | 42843/250000 | 488846900813/2852540500000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:939, 157:946, 157:970 |
| 157:1001 | EPQ | lo | 5983/62500 | 13967701/145910000 | 2399 | 157:73, 157:142, 157:962, 157:74, 157:987, 157:126, 157:172 |
| 157:1003 | AHQ | lo | 24591/125000 | 1181751/6007000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:945, 157:965, 157:42 |
| 157:1007 | BPQ | lo | 68113/500000 | 5252347037631/38555849867000 | 2642 | 157:161, 157:984, 157:172, 157:164, 157:86, 157:961, 157:962 |
| 157:1008 | ABQ | lo | 23987/250000 | 45923790221/478631417000 | 2667 | 157:163, 157:992, 157:1001, 157:164, 157:313, 157:4, 157:8 |
| 157:1010 | CHQ | hi | 458899/1000000 | 153750127075657644209/335041991900000000000 | 2682 | 157:163, 157:992, 157:1001, 157:164, 157:123, 157:133, 157:142 |
| 157:1013 | ACF | lo | 474979/1000000 | 474979/1000000 | 2767 | 157:996, 157:22, 157:134 |
| 157:1014 | ACH | lo | 24589/62500 | 24589/62500 | 2771 | 157:997, 157:22, 157:142 |
| 157:1015 | ACQ | lo | 89343/250000 | 89343/250000 | 2775 | 157:22, 157:998, 157:150 |
| 157:1019 | AEF | lo | 54131/125000 | 54131/125000 | 2781 | 157:968, 157:970, 157:164 |
| 157:1023 | BCQ | lo | 161113/500000 | 161113/500000 | 2820 | 157:74, 157:1007, 157:150 |
| 157:1027 | EFH | lo | 19769/62500 | 19769/62500 | 2879 | 157:172, 157:164, 157:984 |
| 157:1030 | BFP | lo | 269763/1000000 | 18277569/67754000 | 124 | 157:8, 157:319, 157:996, 157:86, 157:224 |
| 157:1031 | BHP | lo | 4187/25000 | 11347457/67754000 | 144 | 157:8, 157:983, 157:997, 157:86, 157:224 |
| 157:1034 | AEH | lo | 2143/10000 | 49490400088/230939709595 | 250 | 157:394, 157:42, 157:1014, 157:1019, 157:19 |
| 157:1036 | CFH | lo | 213221/1000000 | 25169251088/118042941125 | 253 | 157:1013, 157:1027, 157:42, 157:120, 157:31 |
| 157:1037 | AFQ | lo | 56983/250000 | 1819669/7983375 | 264 | 157:1015, 157:164, 157:970, 157:136, 157:226 |
| 157:1039 | AEQ | lo | 112293/1000000 | 515313/4588990 | 284 | 157:1015, 157:172, 157:1003, 157:126, 157:1010 |
| 157:1052 | EHP | lo | 158693/1000000 | 944167/5949625 | 756 | 157:124, 157:988, 157:142, 157:319, 157:408 |
| 157:1053 | FHQ | lo | 130417/1000000 | 9849165/75520004 | 759 | 157:1036, 157:164, 157:136, 157:1027, 157:121 |
| 157:1056 | BEQ | lo | 59361/500000 | 536235459047/4516700000000 | 1154 | 157:1023, 157:69 |
| 157:1057 | FHP | lo | 186813/1000000 | 8686822238299/46500000000000 | 1662 | 157:1027, 157:163 |
| 157:1061 | FPQ | lo | 55653/500000 | 24363708384117/218888108969000 | 2127 | 157:21, 157:142, 157:997, 157:22, 157:1037, 157:136, 157:1053 |
| 157:1064 | AFP | lo | 57833/200000 | 1649714383/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1013, 157:1019 |
| 157:1065 | AHP | lo | 207577/1000000 | 1184244733/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:1014, 157:1034 |
| 157:1066 | APQ | lo | 85707/500000 | 244483265447/1426270250000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:1008, 157:1015, 157:1039 |
| 157:1069 | EPQ | lo | 23933/250000 | 13968321/145910000 | 2399 | 157:73, 157:142, 157:1031, 157:74, 157:1056, 157:126, 157:172 |
| 157:1071 | AHQ | lo | 196867/1000000 | 3716856693/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:1014, 157:1034, 157:42 |
| 157:1075 | BPQ | lo | 136287/1000000 | 36782657763417/269890949069000 | 2642 | 157:161, 157:1053, 157:172, 157:164, 157:86, 157:1030, 157:1031 |
| 157:1077 | CHQ | hi | 458889/1000000 | 153746931493486020209/335041991900000000000 | 2682 | 157:163, 157:1061, 157:1069, 157:164, 157:123, 157:133, 157:142 |
| 157:1080 | ACF | lo | 95033/200000 | 95033/200000 | 2767 | 157:1064, 157:22, 157:134 |
| 157:1081 | ACH | lo | 393577/1000000 | 393577/1000000 | 2771 | 157:1065, 157:22, 157:142 |
| 157:1082 | ACQ | lo | 178707/500000 | 178707/500000 | 2775 | 157:22, 157:1066, 157:150 |
| 157:1086 | AEF | lo | 17329/40000 | 17329/40000 | 2781 | 157:1037, 157:1039, 157:164 |
| 157:1090 | BCQ | lo | 322287/1000000 | 322287/1000000 | 2820 | 157:74, 157:1075, 157:150 |
| 157:1094 | EFH | lo | 316417/1000000 | 316417/1000000 | 2879 | 157:172, 157:164, 157:1053 |
| 157:1097 | BFP | lo | 33731/125000 | 3656667/13550800 | 124 | 157:8, 157:319, 157:1064, 157:86, 157:224 |
| 157:1098 | BHP | lo | 83791/500000 | 1135437/6775400 | 144 | 157:8, 157:1052, 157:1065, 157:86, 157:224 |
| 157:1101 | AEH | lo | 214447/1000000 | 39619503965/184751767676 | 250 | 157:394, 157:42, 157:1081, 157:1086, 157:19 |
| 157:1103 | CFH | lo | 213357/1000000 | 35259456761/165260117575 | 253 | 157:1080, 157:1094, 157:42, 157:120, 157:31 |
| 157:1104 | AFQ | lo | 56997/250000 | 4853639/21289000 | 264 | 157:1082, 157:164, 157:1039, 157:136, 157:226 |
| 157:1106 | AEQ | lo | 28083/250000 | 17182711/152963000 | 284 | 157:1082, 157:172, 157:1071, 157:126, 157:1077 |
| 157:1119 | EHP | lo | 39683/250000 | 15110423/95194000 | 756 | 157:124, 157:1057, 157:142, 157:319, 157:408 |
| 157:1120 | FHQ | lo | 130479/1000000 | 3519213/26971430 | 759 | 157:1103, 157:164, 157:136, 157:1094, 157:121 |
| 157:1123 | BEQ | lo | 23749/200000 | 1072673945553/9033400000000 | 1154 | 157:1090, 157:69 |
| 157:1124 | FHP | lo | 584/3125 | 4485122898797/24000000000000 | 1662 | 157:1094, 157:163 |
| 157:1128 | FPQ | lo | 111319/1000000 | 24366451884117/218888108969000 | 2127 | 157:21, 157:142, 157:1065, 157:22, 157:1104, 157:136, 157:1120 |
| 157:1131 | AFP | lo | 18079/62500 | 1650277033/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1080, 157:1086 |
| 157:1132 | AHP | lo | 103829/500000 | 1184709733/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:1081, 157:1101 |
| 157:1133 | APQ | lo | 42859/250000 | 244514652947/1426270250000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:1008, 157:1082, 157:1106 |
| 157:1136 | EPQ | lo | 47867/500000 | 5587471/58364000 | 2399 | 157:73, 157:142, 157:1098, 157:74, 157:1123, 157:126, 157:172 |
| 157:1138 | AHQ | lo | 196941/1000000 | 3718251693/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:1081, 157:1101, 157:42 |
| 157:1142 | BPQ | lo | 136319/1000000 | 36791353263417/269890949069000 | 2642 | 157:161, 157:1120, 157:172, 157:164, 157:86, 157:1097, 157:1098 |
| 157:1143 | ABQ | lo | 95949/1000000 | 45924246701/478631417000 | 2667 | 157:163, 157:1128, 157:1136, 157:164, 157:313, 157:4, 157:8 |
| 157:1145 | CHQ | hi | 114721/250000 | 153745125294867276209/335041991900000000000 | 2682 | 157:163, 157:1128, 157:1136, 157:164, 157:123, 157:133, 157:142 |
| 157:1148 | ACF | lo | 7426/15625 | 7426/15625 | 2767 | 157:1131, 157:22, 157:134 |
| 157:1149 | ACH | lo | 196829/500000 | 196829/500000 | 2771 | 157:1132, 157:22, 157:142 |
| 157:1150 | ACQ | lo | 89359/250000 | 89359/250000 | 2775 | 157:22, 157:1133, 157:150 |
| 157:1154 | AEF | lo | 10833/25000 | 10833/25000 | 2781 | 157:1104, 157:1106, 157:164 |
| 157:1158 | BCQ | lo | 322319/1000000 | 322319/1000000 | 2820 | 157:74, 157:1142, 157:150 |
| 157:1162 | EFH | lo | 316479/1000000 | 316479/1000000 | 2879 | 157:172, 157:164, 157:1120 |
| 157:1166 | BHP | lo | 167637/1000000 | 1135809/6775400 | 144 | 157:8, 157:1119, 157:1132, 157:86, 157:224 |
| 157:1169 | AEH | lo | 8581/40000 | 9908500428/46187941919 | 250 | 157:394, 157:42, 157:1149, 157:1154, 157:19 |
| 157:1171 | CFH | lo | 21343/100000 | 176358075456/826300587875 | 253 | 157:1148, 157:1162, 157:42, 157:120, 157:31 |
| 157:1172 | AFQ | lo | 228017/1000000 | 1820351/7983375 | 264 | 157:1150, 157:164, 157:1106, 157:136, 157:226 |
| 157:1174 | AEQ | lo | 112353/1000000 | 51557061/458884000 | 284 | 157:1150, 157:172, 157:1138, 157:126, 157:1145 |
| 157:1187 | EHP | lo | 79377/500000 | 30225/190388 | 756 | 157:124, 157:1124, 157:142, 157:319, 157:408 |
| 157:1188 | FHQ | lo | 8157/62500 | 49281537/377600020 | 759 | 157:1171, 157:164, 157:136, 157:1162, 157:121 |
| 157:1191 | BEQ | lo | 118757/1000000 | 1072780451761/9033400000000 | 1154 | 157:1158, 157:69 |
| 157:1192 | FHP | lo | 46729/250000 | 1495333910513/8000000000000 | 1662 | 157:1162, 157:163 |
| 157:1196 | FPQ | lo | 4453/40000 | 24367893384117/218888108969000 | 2127 | 157:21, 157:142, 157:1132, 157:22, 157:1172, 157:136, 157:1188 |
| 157:1199 | AFP | lo | 289317/1000000 | 1650577733/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1148, 157:1154 |
| 157:1200 | AHP | lo | 207701/1000000 | 1184956183/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:1149, 157:1169 |
| 157:1201 | APQ | lo | 21431/125000 | 978127866869/5705081000000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:1143, 157:1150, 157:1174 |
| 157:1204 | EPQ | lo | 11967/125000 | 27937727/291820000 | 2399 | 157:73, 157:142, 157:1166, 157:74, 157:1191, 157:126, 157:172 |
| 157:1206 | AHQ | lo | 9849/50000 | 3718991043/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:1149, 157:1169, 157:42 |
| 157:1212 | CHQ | hi | 458881/1000000 | 153744291664735548209/335041991900000000000 | 2682 | 157:163, 157:1196, 157:1204, 157:164, 157:123, 157:133, 157:142 |
| 157:1215 | ACF | lo | 475317/1000000 | 475317/1000000 | 2767 | 157:1199, 157:22, 157:134 |
| 157:1216 | ACH | lo | 393701/1000000 | 393701/1000000 | 2771 | 157:1200, 157:22, 157:142 |
| 157:1217 | ACQ | lo | 44681/125000 | 44681/125000 | 2775 | 157:22, 157:1201, 157:150 |
| 157:1221 | AEF | lo | 43337/100000 | 43337/100000 | 2781 | 157:1172, 157:1174, 157:164 |
| 157:1229 | EFH | lo | 9891/31250 | 9891/31250 | 2879 | 157:172, 157:164, 157:1188 |
| 157:1232 | BFP | lo | 134959/500000 | 18288047/67754000 | 124 | 157:8, 157:319, 157:1199, 157:86, 157:224 |
| 157:1233 | BHP | lo | 83833/500000 | 2272021/13550800 | 144 | 157:8, 157:1187, 157:1200, 157:86, 157:224 |
| 157:1236 | AEH | lo | 214567/1000000 | 19820832637/92375883838 | 250 | 157:394, 157:42, 157:1216, 157:1221, 157:19 |
| 157:1238 | CFH | lo | 21347/100000 | 176390534304/826300587875 | 253 | 157:1215, 157:1229, 157:42, 157:120, 157:31 |
| 157:1239 | AFQ | lo | 228033/1000000 | 14563831/63867000 | 264 | 157:1217, 157:164, 157:1174, 157:136, 157:226 |
| 157:1241 | AEQ | lo | 28091/250000 | 12890451/114720250 | 284 | 157:1217, 157:172, 157:1206, 157:126, 157:1212 |
| 157:1254 | EHP | lo | 79383/500000 | 944601/5949625 | 756 | 157:124, 157:1192, 157:142, 157:319, 157:408 |
| 157:1255 | FHQ | lo | 13053/100000 | 24644163/188800010 | 759 | 157:1238, 157:164, 157:136, 157:1229, 157:121 |
| 157:1263 | FPQ | lo | 111329/1000000 | 24368683884117/218888108969000 | 2127 | 157:21, 157:142, 157:1200, 157:22, 157:1239, 157:136, 157:1255 |
| 157:1266 | AFP | lo | 57869/200000 | 97102199/335593000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1215, 157:1221 |
| 157:1267 | AHP | lo | 51931/250000 | 1185087933/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:1216, 157:1236 |
| 157:1268 | APQ | lo | 85727/500000 | 978163516869/5705081000000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:1143, 157:1217, 157:1241 |
| 157:1272 | AHQ | lo | 197001/1000000 | 531340899/2697143000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:1216, 157:1236, 157:42 |
| 157:1276 | BPQ | lo | 27269/200000 | 36798514263417/269890949069000 | 2642 | 157:161, 157:1255, 157:172, 157:164, 157:86, 157:1232, 157:1233 |
| 157:1277 | CHQ | hi | 1434/3125 | 153743735911314396209/335041991900000000000 | 2682 | 157:163, 157:1263, 157:1204, 157:164, 157:123, 157:133, 157:142 |
| 157:1279 | ACF | lo | 95069/200000 | 95069/200000 | 2767 | 157:1266, 157:22, 157:134 |
| 157:1280 | ACH | lo | 98431/250000 | 98431/250000 | 2771 | 157:1267, 157:22, 157:142 |
| 157:1281 | ACQ | lo | 178727/500000 | 178727/500000 | 2775 | 157:22, 157:1268, 157:150 |
| 157:1285 | AEF | lo | 433397/1000000 | 433397/1000000 | 2781 | 157:1239, 157:1241, 157:164 |
| 157:1289 | BCQ | lo | 64469/200000 | 64469/200000 | 2820 | 157:74, 157:1276, 157:150 |
| 157:1293 | EFH | lo | 31653/100000 | 31653/100000 | 2879 | 157:172, 157:164, 157:1255 |
| 157:1297 | BHP | lo | 83841/500000 | 1136119/6775400 | 144 | 157:8, 157:1254, 157:1267, 157:86, 157:224 |
| 157:1300 | AEH | lo | 214589/1000000 | 49557231107/230939709595 | 250 | 157:394, 157:42, 157:1280, 157:1285, 157:19 |
| 157:1302 | CFH | lo | 213491/1000000 | 7056318114/33052023515 | 253 | 157:1279, 157:1293, 157:42, 157:120, 157:31 |
| 157:1303 | AFQ | lo | 228041/1000000 | 2427393/10644500 | 264 | 157:1281, 157:164, 157:1241, 157:136, 157:226 |
| 157:1305 | AEQ | lo | 112369/1000000 | 3437621/30592000 | 284 | 157:1281, 157:172, 157:1272, 157:126, 157:1277 |
| 157:1319 | FHQ | lo | 6527/50000 | 49291953/377600020 | 759 | 157:1302, 157:164, 157:136, 157:1293, 157:121 |
| 157:1322 | BEQ | lo | 59383/500000 | 214573397611/1806680000000 | 1154 | 157:1289, 157:69 |
| 157:1327 | FPQ | lo | 111331/1000000 | 24369102384117/218888108969000 | 2127 | 157:21, 157:142, 157:1267, 157:22, 157:1303, 157:136, 157:1319 |
| 157:1329 | AFP | lo | 3617/12500 | 1650822633/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1279, 157:1285 |
| 157:1330 | AHP | lo | 207737/1000000 | 1185157683/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:1280, 157:1300 |
| 157:1331 | APQ | lo | 171457/1000000 | 978180566869/5705081000000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:1143, 157:1281, 157:1305 |
| 157:1334 | EPQ | lo | 95737/1000000 | 13969003/145910000 | 2399 | 157:73, 157:142, 157:1297, 157:74, 157:1322, 157:126, 157:172 |
| 157:1335 | AHQ | lo | 49253/250000 | 3719595543/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:1280, 157:1300, 157:42 |
| 157:1341 | CHQ | hi | 458879/1000000 | 153743458034603820209/335041991900000000000 | 2682 | 157:163, 157:1327, 157:1334, 157:164, 157:123, 157:133, 157:142 |
| 157:1343 | ACF | lo | 2971/6250 | 2971/6250 | 2767 | 157:1329, 157:22, 157:134 |
| 157:1344 | ACH | lo | 393737/1000000 | 393737/1000000 | 2771 | 157:1330, 157:22, 157:142 |
| 157:1345 | ACQ | lo | 357457/1000000 | 357457/1000000 | 2775 | 157:22, 157:1331, 157:150 |
| 157:1349 | AEF | lo | 43341/100000 | 43341/100000 | 2781 | 157:1303, 157:1305, 157:164 |
| 157:1357 | EFH | lo | 15827/50000 | 15827/50000 | 2879 | 157:172, 157:164, 157:1319 |
| 157:1362 | AEH | lo | 214601/1000000 | 19823967717/92375883838 | 250 | 157:394, 157:42, 157:1344, 157:1349, 157:19 |
| 157:1364 | CFH | lo | 106751/500000 | 7056698176/33052023515 | 253 | 157:1343, 157:1357, 157:42, 157:120, 157:31 |
| 157:1365 | AFQ | lo | 45609/200000 | 7282303/31933500 | 264 | 157:1345, 157:164, 157:1305, 157:136, 157:226 |
| 157:1367 | AEQ | lo | 112373/1000000 | 51565617/458879000 | 284 | 157:1345, 157:172, 157:1335, 157:126, 157:1341 |
| 157:1381 | FHQ | lo | 26109/200000 | 24646953/188800010 | 759 | 157:1364, 157:164, 157:136, 157:1357, 157:121 |
| 157:1389 | FPQ | lo | 27833/250000 | 24369311634117/218888108969000 | 2127 | 157:21, 157:142, 157:1330, 157:22, 157:1365, 157:136, 157:1381 |
| 157:1391 | AFP | lo | 289367/1000000 | 1650866033/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1343, 157:1349 |
| 157:1392 | AHP | lo | 3246/15625 | 1185196433/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:1344, 157:1362 |
| 157:1393 | APQ | lo | 171459/1000000 | 42530061603/248047000000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:1143, 157:1345, 157:1367 |
| 157:1397 | AHQ | lo | 98509/500000 | 531387399/2697143000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:1344, 157:1362, 157:42 |
| 157:1402 | CHQ | hi | 229439/500000 | 153743319096248532209/335041991900000000000 | 2682 | 157:163, 157:1389, 157:1334, 157:164, 157:123, 157:133, 157:142 |
| 157:1403 | ACF | lo | 475367/1000000 | 475367/1000000 | 2767 | 157:1391, 157:22, 157:134 |
| 157:1404 | ACH | lo | 24609/62500 | 24609/62500 | 2771 | 157:1392, 157:22, 157:142 |
| 157:1405 | ACQ | lo | 357459/1000000 | 357459/1000000 | 2775 | 157:22, 157:1393, 157:150 |
| 157:1409 | AEF | lo | 216709/500000 | 216709/500000 | 2781 | 157:1365, 157:1367, 157:164 |
| 157:1416 | EFH | lo | 63309/200000 | 63309/200000 | 2879 | 157:172, 157:164, 157:1381 |
| 157:1422 | AEH | lo | 214607/1000000 | 49561465248/230939709595 | 250 | 157:394, 157:42, 157:1404, 157:1409, 157:19 |
| 157:1424 | CFH | lo | 53377/250000 | 35284409403/165260117575 | 253 | 157:1403, 157:1416, 157:42, 157:120, 157:31 |
| 157:1425 | AFQ | lo | 14253/62500 | 1820599/7983375 | 264 | 157:1405, 157:164, 157:1367, 157:136, 157:226 |
| 157:1427 | AEQ | lo | 56187/500000 | 7366623/65554000 | 284 | 157:1405, 157:172, 157:1397, 157:126, 157:1402 |
| 157:1441 | FHQ | lo | 32637/250000 | 49294929/377600020 | 759 | 157:1424, 157:164, 157:136, 157:1416, 157:121 |
| 157:1450 | AFP | lo | 289371/1000000 | 1650889283/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1403, 157:1409 |
| 157:1451 | AHP | lo | 207747/1000000 | 1185216583/5705081000 | 2290 | 157:69, 157:124, 157:86, 157:74, 157:6, 157:1404, 157:1422 |
| 157:1452 | APQ | lo | 8573/50000 | 978196066869/5705081000000 | 2292 | 157:69, 157:124, 157:86, 157:74, 157:1143, 157:1405, 157:1427 |
| 157:1454 | AHQ | lo | 197021/1000000 | 3719772243/18880001000 | 2567 | 157:121, 157:164, 157:136, 157:126, 157:1404, 157:1422, 157:42 |
| 157:1459 | ACF | lo | 475371/1000000 | 475371/1000000 | 2767 | 157:1450, 157:22, 157:134 |
| 157:1461 | ACQ | lo | 17873/50000 | 17873/50000 | 2775 | 157:22, 157:1452, 157:150 |
| 157:1464 | AEF | lo | 216711/500000 | 216711/500000 | 2781 | 157:1425, 157:1427, 157:164 |
| 157:1472 | EFH | lo | 79137/250000 | 79137/250000 | 2879 | 157:172, 157:164, 157:1441 |
| 157:1479 | CFH | lo | 213511/1000000 | 176424739308/826300587875 | 253 | 157:1459, 157:1472, 157:42, 157:120, 157:31 |
| 157:1480 | AFQ | lo | 228049/1000000 | 7282427/31933500 | 264 | 157:1461, 157:164, 157:1427, 157:136, 157:226 |
| 157:1482 | AEQ | lo | 899/8000 | 51566733/458878000 | 284 | 157:1461, 157:172, 157:1454, 157:126, 157:1402 |
| 157:1493 | FHQ | lo | 130549/1000000 | 49295487/377600020 | 759 | 157:1479, 157:164, 157:136, 157:1472, 157:121 |
| 157:1500 | FPQ | lo | 111333/1000000 | 24369497634117/218888108969000 | 2127 | 157:21, 157:142, 157:1451, 157:22, 157:1480, 157:136, 157:1493 |
| 157:1502 | AFP | lo | 289373/1000000 | 1650901683/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1459, 157:1464 |
| 157:1510 | ACF | lo | 475373/1000000 | 475373/1000000 | 2767 | 157:1502, 157:22, 157:134 |
| 157:1515 | AEF | lo | 27089/62500 | 27089/62500 | 2781 | 157:1480, 157:1482, 157:164 |
| 157:1522 | EFH | lo | 316549/1000000 | 316549/1000000 | 2879 | 157:172, 157:164, 157:1493 |
| 157:1545 | AFP | lo | 463/1600 | 1650907883/5705081000 | 2289 | 157:69, 157:124, 157:86, 157:74, 157:4, 157:1510, 157:1515 |
| 157:1553 | ACF | lo | 3803/8000 | 3803/8000 | 2767 | 157:1545, 157:22, 157:134 |
| 157:1566 | CFH | lo | 213513/1000000 | 1411411847/6610404703 | 253 | 157:1553, 157:1522, 157:42, 157:120, 157:31 |
| 157:1576 | FHQ | lo | 2611/20000 | 24647883/188800010 | 759 | 157:1566, 157:164, 157:136, 157:1522, 157:121 |
| 157:1590 | EFH | lo | 6331/20000 | 6331/20000 | 2879 | 157:172, 157:164, 157:1576 |

## Stage 158

| Property | Value |
| --- | --- |
| Scope | root/AEP-/BEP- |
| Packet | forest:root/AEP-/BEP- |
| Index | 1 |
| Context | 82 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 157 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 26531/250000 | 61239/200000 | 56691/500000 | 42061/200000 |
| b | 104041/1000000 | 66703/250000 | 31893/250000 | 199589/1000000 |
| c | 163519/200000 | 979501/1000000 | 231381/250000 | 956041/1000000 |
| e | 2547/8000 | 391/1000 | 42459/125000 | 369111/1000000 |
| f | 2547/8000 | 227123/500000 | 159633/500000 | 443353/1000000 |
| h | 289139/500000 | 1/1 | 760611/1000000 | 838313/1000000 |
| p | 123207/200000 | 751021/1000000 | 84509/125000 | 351011/500000 |
| q | 119637/1000000 | 178751/1000000 | 125463/1000000 | 18197/125000 |
| u | 540519/1000000 | 31123/40000 | 296937/500000 | 22513/31250 |
| v | 469053/1000000 | 183331/250000 | 21659/40000 | 165583/250000 |
| r | 692961/1000000 | 123589/125000 | 419029/500000 | 54549/62500 |
| w | 262239/500000 | 201853/250000 | 718011/1000000 | 191033/250000 |
| j | 128487/250000 | 200317/250000 | 34739/62500 | 75511/125000 |
| k | 355081/500000 | 1/1 | 929607/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | bitt ["actual-area","ABC",[]] | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 7 | A_ABH | bitt ["actual-area","ABH",[]] | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 10 | A_ABP | bitt ["actual-area","ABP",[]] | `1/1 * b * q + -1/1 * a * b + 1/1 * a * p + -93/1000` |
| 20 | A_ACP | bitt ["actual-area","ACP",[]] | `1/1 * c * q + -1/1 * a * c + 1/1 * a * p + -93/1000` |
| 45 | A_BCE | bitt ["actual-area","BCE",["P"]] | `1/1 * c * e + -1/1 * b * e + -279/1000` |
| 57 | A_BEP | bitt ["actual-area","BEP",[]] | `-1/1 * q + 1/1 * b * q + 1/1 * e * p + -1/1 * b * e + -93/1000` |
| 75 | A_CEF | bitt ["actual-area","CEF",["Q"]] | `721/1000 + -1/1 * c + -1/1 * e * f + 1/1 * c * e` |
| 78 | A_CEP | bitt ["actual-area","CEP",[]] | `1/1 * q + -1/1 * c * q + -1/1 * e * p + 1/1 * c * e + -93/1000` |
| 81 | A_CER | bitt ["actual-area","CER",[]] | `1/1 * w + -1/1 * c * w + -1/1 * e * r + 1/1 * c * e + -93/1000` |
| 85 | A_CFQ | bitt ["actual-area","CFQ",[]] | `-1/1 * f * v + 1/1 * c * v + 1/1 * u + -1/1 * c + -93/1000` |
| 86 | A_CFR | bitt ["actual-area","CFR",["Q"]] | `-1/1 * f * w + 1/1 * c * w + 1/1 * r + -1/1 * c + -279/1000` |
| 88 | A_CHP | bitt ["actual-area","CHP",[]] | `-1/1 * c * q + -1/1 * h * p + 1/1 * c * h + -93/1000` |
| 100 | A_EFQ | bitt ["actual-area","EFQ",[]] | `1/1 * f * v + -1/1 * e * f + -1/1 * v + -1/1 * u + 907/1000 + 1/1 * e * u` |
| 102 | A_EFR | bitt ["actual-area","EFR",[]] | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -1093/1000 + -1/1 * e * r` |
| 105 | A_EHQ | bitt ["actual-area","EHQ",[]] | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 111 | A_EQR | bitt ["actual-area","EQR",[]] | `-1/1 * u * w + 1/1 * e * u + 1/1 * w + 1/1 * v * r + -1/1 * v + -1/1 * e * r + -93/1000` |
| 113 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 117 | A_FHS | bitt ["actual-area","FHS",[]] | `-1/1 * f * k + -1/1 * h * j + 1/1 * f * h + 1/1 * j + -93/1000` |
| 119 | A_FPR | bitt ["actual-area","FPR",["Q"]] | `1/1 * p * w + -1/1 * p + -1/1 * f * w + -1/1 * q * r + 1/1 * f * q + 1/1 * r + -279/1000` |
| 123 | A_FRS | bitt ["actual-area","FRS",[]] | `1/1 * r * k + -1/1 * r + -1/1 * f * k + -1/1 * w * j + 1/1 * f * w + 1/1 * j + -93/1000` |
| 137 | sym | bitt ["contact-order","sym"] | `1/1 * f + -1/1 * e` |
| 150 | top-area | bitt ["top-hull","+"] | `157/250 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 159 | central-y | bitt ["central-lower-y"] | `1/1 * c * h * q + -1/1 * a * c * q + -93/1000 * h + -93/1000 * a` |
| 689 | SUP_CEF_CFS_CES | bitt ["support-envelope",["pentagon","CERSF"],"CEF","CFS","CES","18880001/50000000"] | `-18880001/50000000 * f * k + -32269999/50000000 * c * k + 18880001/50000000 * j + 32269999/50000000 * c + -1023/1000 + 1023/1000 * e * f + 1023/1000 * k + -1023/1000 * e * j` |
| 766 | AREA_hi_AEQ | bitt ["earlier-area",{"direction":"hi","ref":"157:474","triangle":"AEQ","value":"346211/1000000"}] | `346211/1000000 + -1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u` |
| 870 | AREA_lo_EFH | bitt ["earlier-area",{"direction":"lo","ref":"157:1590","triangle":"EFH","value":"6331/20000"}] | `1/1 * f * h + -1/1 * e * f + -1/1 * h + 13669/20000` |
| 899 | AREA_lo_FPQ | bitt ["earlier-area",{"direction":"lo","ref":"157:1500","triangle":"FPQ","value":"111333/1000000"}] | `1/1 * p * v + -1/1 * p + -1/1 * f * v + -1/1 * q * u + 1/1 * f * q + 1/1 * u + -111333/1000000` |
| 920 | AREA_lo_QRS | bitt ["earlier-area",{"direction":"lo","ref":"157:790","triangle":"QRS","value":"48317/500000"}] | `1/1 * r * k + -1/1 * v * r + -1/1 * u * k + -1/1 * w * j + 1/1 * u * w + 1/1 * v * j + -48317/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 0 | a | 26531/250000 | 61239/200000 | 1550/14591 | 61239/200000 | 106229/1000000 | 61239/200000 | `(356777/500000, -93/1000); (550783/1000000, -93/1000); (43773/50000, -93/1000); (712689/1000000, -93/1000)` |
| 1 | 7 | b | 104041/1000000 | 66703/250000 | 93000/893771 | 66703/250000 | 104053/1000000 | 66703/250000 | `(472049/1000000, -93/1000); (272083/1000000, -93/1000); (893771/1000000, -93/1000); (138761/200000, -93/1000)` |
| 2 | 20 | q | 119637/1000000 | 178751/1000000 | 366472506/3060940625 | 178751/1000000 | 4789/40000 | 178751/1000000 | `(163519/200000, -2860287931/25000000000); (163519/200000, -773583321/5000000000); (979501/1000000, -65805314857/500000000000); (979501/1000000, -20429147187/100000000000); (163519/200000, -50036044723/500000000000); (163519/200000, -11338462593/100000000000); (979501/1000000, -183236253/1562500000); (979501/1000000, -50924823/312500000)` |
| 3 | 45 | b | 104053/1000000 | 66703/250000 | 104053/1000000 | 103984891/391000000 | 104053/1000000 | 265947/1000000 | `(-2547/8000, -29917107/1600000000); (-2547/8000, 262789047/8000000000); (-391/1000, 8135929/200000000); (-391/1000, 103984891/1000000000)` |
| 4 | 45 | c | 163519/200000 | 979501/1000000 | 319684723/391000000 | 979501/1000000 | 817607/1000000 | 979501/1000000 | `(2547/8000, -2497022991/8000000000); (2547/8000, -2909367009/8000000000); (391/1000, -319684723/1000000000); (391/1000, -382985277/1000000000)` |
| 5 | 45 | e | 2547/8000 | 391/1000 | 3875/12159 | 391/1000 | 318693/1000000 | 391/1000 | `(356777/500000, -279/1000); (27583/50000, -279/1000); (109431/125000, -279/1000)` |
| 6 | 57 | p | 123207/200000 | 751021/1000000 | 9638079103/15640000000 | 751021/1000000 | 123249/200000 | 751021/1000000 | `(318693/1000000, -29178527163/125000000000); (318693/1000000, -33204992837/125000000000); (391/1000, -9638079103/40000000000); (391/1000, -11394790897/40000000000); (318693/1000000, -143156192463/500000000000); (318693/1000000, -154484077537/500000000000); (391/1000, -293836145197/1000000000000); (391/1000, -328197984803/1000000000000)` |
| 7 | 57 | q | 4789/40000 | 178751/1000000 | 4789/40000 | 6665187/37331125 | 4789/40000 | 178543/1000000 | `(-895947/1000000, 1097375079/15625000000); (-734053/1000000, 9318760257/500000000000); (-895947/1000000, 209506/1953125); (-734053/1000000, 21983259/500000000); (-895947/1000000, 14148021603/125000000000); (-734053/1000000, 30794844141/500000000000); (-895947/1000000, 19995561/125000000); (-734053/1000000, 48331967/500000000)` |
| 8 | 75 | c | 817607/1000000 | 979501/1000000 | 817607/1000000 | 4772123/4872000 | 817607/1000000 | 1959/2000 | `(-681307/1000000, 4956288929/8000000000); (-609/1000, 4772123/8000000); (-681307/1000000, 288117489761/500000000000); (-609/1000, 271694907/500000000)` |
| 9 | 78 | p | 123249/200000 | 751021/1000000 | 123249/200000 | 587289263/782000000 | 123249/200000 | 75101/100000 | `(-318693/1000000, 23675328697/125000000000); (-318693/1000000, 55403539/250000000); (-391/1000, 9940853557/40000000000); (-391/1000, 23395109/80000000); (-318693/1000000, 4002612421/20000000000); (-318693/1000000, 8912797/40000000); (-391/1000, 259249330399/1000000000000); (-391/1000, 587289263/2000000000)` |
| 10 | 81 | r | 692961/1000000 | 123589/125000 | 692961/1000000 | 314831924567/318693000000 | 692961/1000000 | 197577/200000 | `(-318693/1000000, 52645348701/200000000000); (-318693/1000000, 91964637/400000000); (-391/1000, 161172726427/500000000000); (-391/1000, 300736299/1000000000); (-318693/1000000, 314831924567/1000000000000); (-318693/1000000, 471423479/2000000000); (-391/1000, 93487658479/250000000000); (-391/1000, 153268223/500000000)` |
| 11 | 85 | u | 540519/1000000 | 31123/40000 | 8507940513/15625000000 | 31123/40000 | 136127/250000 | 31123/40000 | `(1/1, -21138772897/31250000000); (1/1, -6099178683/8000000000); (1/1, -740171432867/1000000000000); (1/1, -413064017769/500000000000); (1/1, -8507940513/15625000000); (1/1, -1175362341/2000000000); (1/1, -161036414509/250000000000); (1/1, -85914829463/125000000000)` |
| 12 | 86 | r | 692961/1000000 | 197577/200000 | 10836267069/15625000000 | 197577/200000 | 693521/1000000 | 197577/200000 | `(1/1, -1630411717/1953125000); (1/1, -3647017929/4000000000); (1/1, -453016074721/500000000000); (1/1, -245753958147/250000000000); (1/1, -10836267069/15625000000); (1/1, -1449399483/2000000000); (1/1, -200806242067/250000000000); (1/1, -104300452169/125000000000)` |
| 13 | 88 | h | 289139/500000 | 1/1 | 5607217/9686800 | 1/1 | 578851/1000000 | 1/1 | `(100681/500000, -7635519923/40000000000); (72651/200000, -16821651/80000000); (66597/1000000, -7635519923/40000000000); (22849/100000, -16821651/80000000); (100681/500000, -238978006601/1000000000000); (72651/200000, -535765737/2000000000); (66597/1000000, -238978006601/1000000000000); (22849/100000, -535765737/2000000000)` |
| 14 | 100 | u | 136127/250000 | 31123/40000 | 136127/250000 | 78900377173/101500000000 | 136127/250000 | 12146/15625 | `(-681307/1000000, 97163573/200000000); (-609/1000, 3702376991/8000000000); (-681307/1000000, 6328092857/12500000000); (-609/1000, 236701131519/500000000000); (-681307/1000000, 2445473157/8000000000); (-609/1000, 565326807/2000000000); (-681307/1000000, 181010236613/500000000000); (-609/1000, 41146913463/125000000000)` |
| 15 | 100 | v | 469053/1000000 | 183331/250000 | 469053/1000000 | 6027037/8269000 | 469053/1000000 | 91109/125000 | `(-5453/8000, 434559004169/1000000000000); (-5453/8000, 450910003/1000000000); (-272877/500000, 195628933783/500000000000); (-272877/500000, 198892221/500000000); (-5453/8000, 275926207517/1000000000000); (-5453/8000, 309112879/1000000000); (-272877/500000, 116312535457/500000000000); (-272877/500000, 127993659/500000000)` |
| 16 | 105 | v | 469053/1000000 | 91109/125000 | 7337792807/15625000000 | 91109/125000 | 234809/500000 | 91109/125000 | `(1/1, -66274110967/125000000000); (1/1, -142391156923/250000000000); (1/1, -180505722011/250000000000); (1/1, -190348657/250000000); (1/1, -7337792807/15625000000); (1/1, -8216033629/15625000000); (1/1, -4401485089/7812500000); (1/1, -9681211/15625000)` |
| 17 | 111 | w | 262239/500000 | 201853/250000 | 239990568331/455492000000 | 201853/250000 | 263441/500000 | 201853/250000 | `(113873/250000, -284417455031/1000000000000); (113873/250000, -147596069011/500000000000); (3479/15625, -210214251683/1000000000000); (3479/15625, -102076631011/500000000000); (113873/250000, -363873361697/1000000000000); (113873/250000, -23415502793/62500000000); (3479/15625, -289670158349/1000000000000); (3479/15625, -17725573043/62500000000); (113873/250000, -239990568331/1000000000000); (113873/250000, -27204982907/100000000000); (3479/15625, -165787364983/1000000000000); (3479/15625, -18101095307/100000000000); (113873/250000, -243131430541/1000000000000); (113873/250000, -3439883641/12500000000); (3479/15625, -168928227193/1000000000000); (3479/15625, -2301897691/12500000000)` |
| 18 | 113 | j | 128487/250000 | 200317/250000 | 128487/250000 | 78195270613/97743800000 | 128487/250000 | 800003/1000000 | `(-208189/1000000, -4788027651/1000000000000); (-67941/500000, -27467225299/500000000000); (-208189/1000000, 22089270613/200000000000); (-67941/500000, 3901535237/100000000000); (-488719/1000000, 275741972349/1000000000000); (-104103/250000, 112797774701/500000000000); (-488719/1000000, 78195270613/200000000000); (-104103/250000, 31954535237/100000000000); (-208189/1000000, -93617288053/1000000000000); (-67941/500000, -143763711/1000000000); (-208189/1000000, 21386993139/200000000000); (-67941/500000, 7100793/200000000); (-488719/1000000, 186912711947/1000000000000); (-104103/250000, 136766289/1000000000); (-488719/1000000, 77492993139/200000000000); (-104103/250000, 63206793/200000000)` |
| 19 | 119 | r | 693521/1000000 | 197577/200000 | 41108249379/58685000000 | 197577/200000 | 700489/1000000 | 197577/200000 | `(35211/40000, -140037042357/200000000000); (35211/40000, -188876510133/250000000000); (35211/40000, -152788991811/200000000000); (35211/40000, -409632893901/500000000000); (821457/1000000, -136291806207/200000000000); (821457/1000000, -91098524913/125000000000); (821457/1000000, -149043755661/200000000000); (821457/1000000, -396273973287/500000000000); (35211/40000, -123324748137/200000000000); (35211/40000, -355030230531/500000000000); (35211/40000, -128515572501/200000000000); (35211/40000, -368007291441/500000000000); (821457/1000000, -119579511987/200000000000); (821457/1000000, -341671309917/500000000000); (821457/1000000, -124770336351/200000000000); (821457/1000000, -354648370827/500000000000)` |
| 20 | 123 | w | 263441/500000 | 201853/250000 | 263441/500000 | 97157/120407 | 263441/500000 | 161381/200000 | `(-195573/1000000, -2044539383/250000000000); (-29851/500000, -52334289317/500000000000); (-195573/1000000, -4573821969/50000000000); (-29851/500000, -93983430241/500000000000); (-120407/250000, 69469210617/250000000000); (-345757/1000000, 90693210683/500000000000); (-120407/250000, 9728928031/50000000000); (-345757/1000000, 49044069759/500000000000); (-195573/1000000, 102573/1000000); (-29851/500000, -16649/500000); (-120407/250000, 97157/250000); (-345757/1000000, 252757/1000000)` |
| 21 | 123 | j | 128487/250000 | 800003/1000000 | 324838591/630824000 | 800003/1000000 | 514943/1000000 | 800003/1000000 | `(236559/500000, -177190050391/500000000000); (236559/500000, -189641268831/500000000000); (236559/500000, -43767838263/100000000000); (236559/500000, -46258081951/100000000000); (38619/200000, -265227778157/1000000000000); (38619/200000, -63020802501/250000000000); (38619/200000, -69705212001/200000000000); (38619/200000, -83845372963/250000000000); (236559/500000, -974515773/4000000000); (236559/500000, -76977989757/250000000000); (38619/200000, -247162593/1600000000); (38619/200000, -18071263137/100000000000)` |
| 22 | 137 | f | 2547/8000 | 227123/500000 | 318693/1000000 | 227123/500000 | 318693/1000000 | 227123/500000 | `(1/1, -318693/1000000); (1/1, -391/1000)` |
| 23 | 150 | f | 318693/1000000 | 227123/500000 | 318693/1000000 | 309307/681307 | 318693/1000000 | 453991/1000000 | `(-681307/1000000, 309307/1000000); (-609/1000, 237/1000)` |
| 24 | 159 | a | 106229/1000000 | 61239/200000 | 106229/1000000 | 54588579/178588579 | 106229/1000000 | 305667/1000000 | `(-7635519923/40000000000, 113176902948473/40000000000000000); (-16821651/80000000, 1123926623001/80000000000000); (-7635519923/40000000000, 195519923/40000000000); (-16821651/80000000, 1941651/80000000); (-238978006601/1000000000000, 30666372098995451/1000000000000000000); (-535765737/2000000000, 94795960628187/2000000000000000); (-238978006601/1000000000000, 52978006601/1000000000000); (-535765737/2000000000, 163765737/2000000000)` |
| 25 | 689 | e | 318693/1000000 | 391/1000 | 318693/1000000 | 18880001/51150000 | 318693/1000000 | 369111/1000000 | `(-160611/800000, -432235781283623983/12500000000000000000); (-160611/800000, -107373122334529633/25000000000000000000); (-7794237/125000000, -110718739645902319/1562500000000000000); (-7794237/125000000, -1014401394101718771/25000000000000000000); (-49238013/100000000, 913247489981376017/12500000000000000000); (-49238013/100000000, 2583593420195470367/25000000000000000000); (-88492569/250000000, 57466669262222681/1562500000000000000); (-88492569/250000000, 1676565148428281229/25000000000000000000); (-160611/800000, 2964160157/40000000000); (-7794237/125000000, 143846727619/6250000000000); (-49238013/100000000, 908713328131/5000000000000); (-88492569/250000000, 1633176726503/12500000000000)` |
| 26 | 689 | k | 355081/500000 | 1/1 | 24566767156003/27049223641614 | 1/1 | 14191/15625 | 1/1 | `(9374449384457/25000000000000, -36485597323203/100000000000000); (13524611820807/50000000000000, -26037023426989/100000000000000); (9374449384457/25000000000000, -37497807997953/100000000000000); (13524611820807/50000000000000, -27049234101739/100000000000000); (1012154524601/3125000000000, -40093215203901/125000000000000); (10970185445509/50000000000000, -54064995667267/250000000000000); (1012154524601/3125000000000, -40486185044967/125000000000000); (10970185445509/50000000000000, -54850935349399/250000000000000); (9374449384457/25000000000000, -35015341052217/100000000000000); (13524611820807/50000000000000, -24566767156003/100000000000000); (9374449384457/25000000000000, -37497823191651/100000000000000); (13524611820807/50000000000000, -27049249295437/100000000000000); (1012154524601/3125000000000, -76510789730337/250000000000000); (10970185445509/50000000000000, -25194677494901/125000000000000); (1012154524601/3125000000000, -80972408074179/250000000000000); (10970185445509/50000000000000, -13712743333411/62500000000000)` |
| 27 | 766 | v | 234809/500000 | 91109/125000 | 234809/500000 | 5478092287/7812500000 | 234809/500000 | 175299/250000 | `(-1/1, 8877005433/15625000000); (-1/1, 82371345151/125000000000); (-1/1, 74447669007/125000000000); (-1/1, 42901485347/62500000000); (-1/1, 1206245343/1953125000); (-1/1, 5171903773/7812500000); (-1/1, 2565584943/3906250000); (-1/1, 5478092287/7812500000)` |
| 28 | 870 | h | 578851/1000000 | 1/1 | 578851/1000000 | 538766246237/546009000000 | 578851/1000000 | 61671/62500 | `(-681307/1000000, 581884771751/1000000000000); (-681307/1000000, 565816908077/1000000000000); (-546009/1000000, 538766246237/1000000000000); (-546009/1000000, 515876927999/1000000000000)` |
| 29 | 899 | u | 136127/250000 | 12146/15625 | 160260069461/293425000000 | 12146/15625 | 54617/100000 | 12146/15625 | `(35211/40000, -549686705439/1000000000000); (35211/40000, -597026528553/1000000000000); (35211/40000, -621163635669/1000000000000); (35211/40000, -668503458783/1000000000000); (821457/1000000, -106188364113/200000000000); (821457/1000000, -114064737183/200000000000); (821457/1000000, -120483750159/200000000000); (821457/1000000, -128360123229/200000000000); (35211/40000, -480780208383/1000000000000); (35211/40000, -559452071741/1000000000000); (35211/40000, -521048529443/1000000000000); (35211/40000, -599720392801/1000000000000); (821457/1000000, -462035323509/1000000000000); (821457/1000000, -532749229103/1000000000000); (821457/1000000, -502303644569/1000000000000); (821457/1000000, -573017550163/1000000000000)` |
| 30 | 920 | r | 700489/1000000 | 197577/200000 | 375780275791/530382000000 | 197577/200000 | 177127/250000 | 197577/200000 | `(219303/500000, -83599814023/250000000000); (219303/500000, -1056389029/2500000000); (51757/250000, -107574893019/500000000000); (51757/250000, -151653070773/500000000000); (219303/500000, -325654977871/1000000000000); (219303/500000, -349077296377/1000000000000); (51757/250000, -206405507817/1000000000000); (51757/250000, -229827826323/1000000000000); (219303/500000, -87680732983/250000000000); (219303/500000, -5485991093/12500000000); (51757/250000, -82729918599/500000000000); (51757/250000, -126808096353/500000000000); (219303/500000, -421802010091/1000000000000); (219303/500000, -445224328597/1000000000000); (51757/250000, -236538915357/1000000000000); (51757/250000, -259961233863/1000000000000); (265191/500000, -96131138503/250000000000); (265191/500000, -30868570909/62500000000); (74701/250000, -132637541979/500000000000); (74701/250000, -37464766449/100000000000); (265191/500000, -375780275791/1000000000000); (265191/500000, -420418819321/1000000000000); (74701/250000, -256530805737/1000000000000); (74701/250000, -301169349267/1000000000000); (265191/500000, -100212057463/250000000000); (265191/500000, -31888800649/62500000000); (74701/250000, -107792567559/500000000000); (74701/250000, -6499154313/20000000000); (265191/500000, -471927308011/1000000000000); (265191/500000, -516565851541/1000000000000); (74701/250000, -286664213277/1000000000000); (74701/250000, -331302756807/1000000000000)` |
| 31 | 0 | a | 106229/1000000 | 305667/1000000 | 93000/875447 | 305667/1000000 | 106231/1000000 | 305667/1000000 | `(356777/500000, -93/1000); (27583/50000, -93/1000); (875447/1000000, -93/1000); (713553/1000000, -93/1000)` |
| 32 | 7 | b | 104053/1000000 | 265947/1000000 | 18600/176101 | 265947/1000000 | 105621/1000000 | 265947/1000000 | `(23631/50000, -93/1000); (8537/31250, -93/1000); (176101/200000, -93/1000); (681069/1000000, -93/1000)` |
| 33 | 20 | q | 4789/40000 | 178543/1000000 | 11727272119/97950000000 | 178543/1000000 | 119727/1000000 | 178543/1000000 | `(817607/1000000, -57195443311/500000000000); (817607/1000000, -77274859227/500000000000); (1959/2000, -26317788381/200000000000); (1959/2000, -40807013217/200000000000); (817607/1000000, -100074665907/1000000000000); (817607/1000000, -113356505199/1000000000000); (1959/2000, -11727272119/100000000000); (1959/2000, -16284185283/100000000000)` |
| 34 | 45 | b | 105621/1000000 | 265947/1000000 | 105621/1000000 | 55029483/246074000 | 105621/1000000 | 22363/100000 | `(-318693/1000000, -18434372349/1000000000000); (-318693/1000000, 66319587/2000000000); (-369111/1000000, 22787737377/1000000000000); (-369111/1000000, 165088449/2000000000)` |
| 35 | 45 | c | 817607/1000000 | 1959/2000 | 105995290977/123037000000 | 1959/2000 | 861491/1000000 | 1959/2000 | `(318693/1000000, -312660673353/1000000000000); (318693/1000000, -35026931559/100000000000); (369111/1000000, -317985872931/1000000000000); (369111/1000000, -36154429293/100000000000)` |
| 36 | 45 | e | 318693/1000000 | 369111/1000000 | 93000/291293 | 369111/1000000 | 159633/500000 | 369111/1000000 | `(75587/100000, -279/1000); (637861/1000000, -279/1000); (873879/1000000, -279/1000)` |
| 37 | 57 | p | 123249/200000 | 75101/100000 | 9961132811/15379625000 | 75101/100000 | 647683/1000000 | 75101/100000 | `(159633/500000, -233802508719/1000000000000); (159633/500000, -25734990657/100000000000); (369111/1000000, -29883398433/125000000000); (369111/1000000, -3356209299/12500000000); (159633/500000, -286406303983/1000000000000); (159633/500000, -30301288449/100000000000); (369111/1000000, -36458872841/125000000000); (369111/1000000, -3926996523/12500000000)` |
| 38 | 57 | q | 119727/1000000 | 178543/1000000 | 119727/1000000 | 145220179179/894379000000 | 119727/1000000 | 16237/100000 | `(-894379/1000000, 20015491623/250000000000); (-77637/100000, 21192852549/500000000000); (-894379/1000000, 53540523441/500000000000); (-77637/100000, 63522626883/1000000000000); (-894379/1000000, 56525382237/500000000000); (-77637/100000, 1884362577/25000000000); (-894379/1000000, 145220179179/1000000000000); (-77637/100000, 5083087959/50000000000)` |
| 39 | 75 | c | 861491/1000000 | 1959/2000 | 861491/1000000 | 603366908077/630889000000 | 861491/1000000 | 119547/125000 | `(-340367/500000, 309626080331/500000000000); (-630889/1000000, 603366908077/1000000000000); (-340367/500000, 288028054697/500000000000); (-630889/1000000, 553426927999/1000000000000)` |
| 40 | 78 | p | 647683/1000000 | 75101/100000 | 647683/1000000 | 33386516327/46138875000 | 647683/1000000 | 72361/100000 | `(-159633/500000, 198628052649/1000000000000); (-159633/500000, 27195163833/125000000000); (-369111/1000000, 30196133943/125000000000); (-369111/1000000, 2072124003/7812500000); (-159633/500000, 6391702873/31250000000); (-159633/500000, 1714231007/7812500000); (-369111/1000000, 247475510831/1000000000000); (-369111/1000000, 33386516327/125000000000)` |
| 41 | 81 | r | 177127/250000 | 197577/200000 | 177127/250000 | 293808390251/319266000000 | 177127/250000 | 920263/1000000 | `(-159633/500000, 1992364723/7812500000); (-159633/500000, 1838461253/7812500000); (-369111/1000000, 297963703439/1000000000000); (-369111/1000000, 35374200263/125000000000); (-159633/500000, 293808390251/1000000000000); (-159633/500000, 30942345467/125000000000); (-369111/1000000, 168374704573/500000000000); (-369111/1000000, 18450582841/62500000000)` |
| 42 | 85 | u | 54617/100000 | 12146/15625 | 71735401699/125000000000 | 12146/15625 | 573883/1000000 | 12146/15625 | `(1/1, -174895822209/250000000000); (1/1, -374954292453/500000000000); (1/1, -152624333/200000000); (1/1, -81344696107/100000000000); (1/1, -71735401699/125000000000); (1/1, -150558807783/250000000000); (1/1, -66875363/100000000); (1/1, -34855282377/50000000000)` |
| 43 | 88 | h | 578851/1000000 | 61671/62500 | 25938003669/38586625000 | 61671/62500 | 672201/1000000 | 61671/62500 | `(13363/62500, -196143732957/1000000000000); (308693/1000000, -25938003669/125000000000); (137881/1000000, -196143732957/1000000000000); (116383/500000, -25938003669/125000000000); (13363/62500, -23288029367/100000000000); (308693/1000000, -3103584639/12500000000); (137881/1000000, -23288029367/100000000000); (116383/500000, -3103584639/12500000000)` |
| 44 | 100 | u | 573883/1000000 | 12146/15625 | 573883/1000000 | 69001610491/90127000000 | 573883/1000000 | 153121/200000 | `(-340367/500000, 30331133121/62500000000); (-630889/1000000, 469412877351/1000000000000); (-340367/500000, 31602528427/62500000000); (-630889/1000000, 483011273437/1000000000000); (-340367/500000, 32752241749/100000000000); (-630889/1000000, 62327432981/200000000000); (-340367/500000, 37919678263/100000000000); (-630889/1000000, 71313520247/200000000000)` |
| 45 | 100 | v | 234809/500000 | 175299/250000 | 234809/500000 | 31447538001/45500750000 | 234809/500000 | 86393/125000 | `(-681307/1000000, 20729524527/50000000000); (-681307/1000000, 42731043609/100000000000); (-546009/1000000, 46424304909/125000000000); (-546009/1000000, 94342614003/250000000000); (-681307/1000000, 4438731353/15625000000); (-681307/1000000, 1196699747/3906250000); (-546009/1000000, 60220688831/250000000000); (-546009/1000000, 128207577577/500000000000)` |
| 46 | 102 | w | 263441/500000 | 161381/200000 | 18239892381/34065350000 | 161381/200000 | 267719/500000 | 161381/200000 | `(681307/1000000, -50894667579/100000000000); (681307/1000000, -105675400893/200000000000); (546009/1000000, -232875312261/500000000000); (546009/1000000, -478437024387/1000000000000); (681307/1000000, -18239892381/50000000000); (681307/1000000, -39478310427/100000000000); (546009/1000000, -1256257017/3906250000); (546009/1000000, -10776347631/31250000000)` |
| 47 | 105 | v | 234809/500000 | 86393/125000 | 19799687973/40000000000 | 86393/125000 | 30937/62500 | 86393/125000 | `(1/1, -112531520679/200000000000); (1/1, -59126280153/100000000000); (1/1, -69668631399/100000000000); (1/1, -5802332097/8000000000); (1/1, -19799687973/40000000000); (1/1, -10663075611/20000000000); (1/1, -11374352613/20000000000); (1/1, -971006739/1600000000)` |
| 48 | 111 | w | 267719/500000 | 161381/200000 | 10127355591/17754875000 | 161381/200000 | 285199/500000 | 161381/200000 | `(426117/1000000, -140133696657/500000000000); (426117/1000000, -286977776439/1000000000000); (46879/200000, -109528538631/500000000000); (46879/200000, -216211077297/1000000000000); (426117/1000000, -168722066049/500000000000); (426117/1000000, -344154515223/1000000000000); (46879/200000, -138116908023/500000000000); (46879/200000, -273387816081/1000000000000); (426117/1000000, -30382066773/125000000000); (426117/1000000, -65080461321/250000000000); (46879/200000, -45461554533/250000000000); (46879/200000, -94777573071/500000000000); (426117/1000000, -8084284569/31250000000); (426117/1000000, -68990604327/250000000000); (46879/200000, -49371697539/250000000000); (46879/200000, -102597859083/500000000000)` |
| 49 | 113 | r | 177127/250000 | 920263/1000000 | 445425289577/588958000000 | 920263/1000000 | 756293/1000000 | 920263/1000000 | `(294479/500000, -140036166369/250000000000); (539113/1000000, -534477331641/1000000000000); (294479/500000, -445425289577/1000000000000); (539113/1000000, -209878977871/500000000000); (294479/500000, -157933088349/250000000000); (539113/1000000, -591856203861/1000000000000); (294479/500000, -584431662917/1000000000000); (539113/1000000, -272277756691/500000000000); (340367/500000, -162980166369/250000000000); (630889/1000000, -626253331641/1000000000000); (340367/500000, -537201289577/1000000000000); (630889/1000000, -255766977871/500000000000); (340367/500000, -180877088349/250000000000); (630889/1000000, -683632203861/1000000000000); (340367/500000, -676207662917/1000000000000); (630889/1000000, -318165756691/500000000000)` |
| 50 | 113 | w | 285199/500000 | 161381/200000 | 18426497013/30316062500 | 161381/200000 | 607813/1000000 | 161381/200000 | `(485057/1000000, -97848848867/250000000000); (485057/1000000, -201712743109/500000000000); (485057/1000000, -18426497013/62500000000); (485057/1000000, -39378390951/125000000000); (199997/1000000, -75096357377/250000000000); (199997/1000000, -149103352279/500000000000); (199997/1000000, -25476748281/125000000000); (199997/1000000, -52452086487/250000000000); (485057/1000000, -4137618491/10000000000); (485057/1000000, -8515838797/20000000000); (485057/1000000, -3776773689/12500000000); (485057/1000000, -8058626763/25000000000); (199997/1000000, -16137594157/50000000000); (199997/1000000, -32057315819/100000000000); (199997/1000000, -5278298229/25000000000); (199997/1000000, -10856314443/50000000000)` |
| 51 | 113 | j | 514943/1000000 | 800003/1000000 | 514943/1000000 | 173838627977/243819500000 | 514943/1000000 | 712981/1000000 | `(-288547/1000000, 26006906347/500000000000); (-119351/500000, 14316388109/1000000000000); (-288547/1000000, 74292627977/500000000000); (-119351/500000, 102714746719/1000000000000); (-487639/1000000, 125552906347/500000000000); (-218897/500000, 213408388109/1000000000000); (-487639/1000000, 173838627977/500000000000); (-218897/500000, 301806746719/1000000000000); (-288547/1000000, 14823679531/500000000000); (-119351/500000, -8050065523/1000000000000); (-288547/1000000, 70633656521/500000000000); (-119351/500000, 95396803807/1000000000000); (-487639/1000000, 114369679531/500000000000); (-218897/500000, 191041934477/1000000000000); (-487639/1000000, 170179656521/500000000000); (-218897/500000, 294488803807/1000000000000)` |
| 52 | 117 | h | 672201/1000000 | 61671/62500 | 672201/1000000 | 2582315381/3080375000 | 672201/1000000 | 838313/1000000 | `(-157/800, 517571753/3906250000); (-7619/125000, 75136547/7812500000); (-24643/62500, 2582315381/7812500000); (-25899/100000, 811154211/3906250000); (-157/800, 413/4000); (-7619/125000, -2003/62500); (-24643/62500, 37661/125000); (-25899/100000, 16599/100000)` |
| 53 | 123 | w | 607813/1000000 | 161381/200000 | 607813/1000000 | 37661/49286 | 607813/1000000 | 191033/250000 | `(-157/800, 19715257/312500000); (-7619/125000, -233562767/3906250000); (-157/800, 75062987/1562500000); (-7619/125000, -73086503/976562500); (-24643/62500, 20400533/78125000); (-25899/100000, 1080046341/7812500000); (-24643/62500, 192248681/781250000); (-25899/100000, 962479851/7812500000); (-157/800, 413/4000); (-7619/125000, -2003/62500); (-24643/62500, 37661/125000); (-25899/100000, 16599/100000)` |
| 54 | 123 | j | 514943/1000000 | 712981/1000000 | 72662417197/130729000000 | 712981/1000000 | 34739/62500 | 712981/1000000 | `(392187/1000000, -258148429191/1000000000000); (392187/1000000, -298793436669/1000000000000); (392187/1000000, -273196939911/1000000000000); (392187/1000000, -313841947389/1000000000000); (58967/250000, -52082664531/250000000000); (58967/250000, -11391300877/50000000000); (58967/250000, -55844792211/250000000000); (58967/250000, -12143726413/50000000000); (392187/1000000, -217987251591/1000000000000); (392187/1000000, -271049368317/1000000000000); (58967/250000, -42042370131/250000000000); (58967/250000, -50020487297/250000000000)` |
| 55 | 137 | f | 318693/1000000 | 453991/1000000 | 159633/500000 | 453991/1000000 | 159633/500000 | 453991/1000000 | `(1/1, -159633/500000); (1/1, -369111/1000000)` |
| 56 | 150 | f | 159633/500000 | 453991/1000000 | 159633/500000 | 154367/340367 | 159633/500000 | 113383/250000 | `(-340367/500000, 154367/500000); (-630889/1000000, 258889/1000000)` |
| 57 | 159 | a | 106231/1000000 | 305667/1000000 | 106231/1000000 | 217565874824669/1034528213000000 | 106231/1000000 | 42061/200000 | `(-196143732957/1000000000000, 6818627437428357/1000000000000000000); (-25938003669/125000000000, 1806878754305469/125000000000000000); (-196143732957/1000000000000, 8503623206381541/1000000000000000000); (-25938003669/125000000000, 2253388419770397/125000000000000000); (-23288029367/100000000000, 3151298028526767/100000000000000000); (-3103584639/12500000000, 523365372920439/12500000000000000); (-23288029367/100000000000, 3930035962737871/100000000000000000); (-3103584639/12500000000, 652697624474007/12500000000000000)` |
| 58 | 159 | q | 119727/1000000 | 16237/100000 | 610018000/4862122603 | 16237/100000 | 125463/1000000 | 16237/100000 | `(48757806127/100000000000, -1131159/15625000); (49739905867/125000000000, -41036529/500000000); (6766001559/12500000000, -1131159/15625000); (6902285139/15625000000, -41036529/500000000); (315341027131/500000000000, -2745081/31250000); (67627904991/125000000000, -48760737/500000000); (43759103427/62500000000, -2745081/31250000); (9384559047/15625000000, -48760737/500000000)` |
| 59 | 689 | k | 14191/15625 | 1/1 | 3787488825161/4074287153460 | 1/1 | 929607/1000000 | 1/1 | `(692877755689/2000000000000, -10449267876537/31250000000000); (1426000503711/5000000000000, -68284448736721/250000000000000); (692877755689/2000000000000, -173219501964957/500000000000000); (1426000503711/5000000000000, -142600113413807/500000000000000); (14787001677959/50000000000000, -72631018052949/250000000000000); (2931265705711/12500000000000, -28660661888687/125000000000000); (14787001677959/50000000000000, -18483755505051/62500000000000); (2931265705711/12500000000000, -58625327744629/250000000000000); (692877755689/2000000000000, -32636299486357/100000000000000); (1426000503711/5000000000000, -26512421776127/100000000000000); (692877755689/2000000000000, -69287817538919/200000000000000); (1426000503711/5000000000000, -57040062118459/200000000000000); (14787001677959/50000000000000, -141255247513091/500000000000000); (2931265705711/12500000000000, -110635858961941/500000000000000); (14787001677959/50000000000000, -295740171845497/1000000000000000); (2931265705711/12500000000000, -234501394743197/1000000000000000)` |
| 60 | 766 | v | 30937/62500 | 86393/125000 | 30937/62500 | 67809866763/100000000000 | 30937/62500 | 678099/1000000 | `(-1/1, 114939832981/200000000000); (-1/1, 619046865563/1000000000000); (-1/1, 3770652269/6250000000); (-1/1, 323826031849/500000000000); (-1/1, 24621706447/40000000000); (-1/1, 127987417281/200000000000); (-1/1, 817130303/1250000000); (-1/1, 67809866763/100000000000)` |
| 61 | 0 | a | 106231/1000000 | 42061/200000 | 6200/56717 | 42061/200000 | 54657/500000 | 42061/200000 | `(75587/100000, -93/1000); (637861/1000000, -93/1000); (170151/200000, -93/1000); (366373/500000, -93/1000)` |
| 62 | 7 | b | 105621/1000000 | 22363/100000 | 93000/728999 | 22363/100000 | 31893/250000 | 22363/100000 | `(562887/1000000, -93/1000); (57737/125000, -93/1000); (728999/1000000, -93/1000); (78501/125000, -93/1000)` |
| 63 | 10 | a | 54657/500000 | 42061/200000 | 566891969/4999800000 | 42061/200000 | 56691/500000 | 42061/200000 | `(520111/1000000, -19248608541/250000000000); (424053/1000000, -6494270931/100000000000); (298019/500000, -19248608541/250000000000); (24999/50000, -6494270931/100000000000); (520111/1000000, -1807153359/25000000000); (424053/1000000, -566891969/10000000000); (298019/500000, -1807153359/25000000000); (24999/50000, -566891969/10000000000)` |
| 64 | 45 | b | 31893/250000 | 22363/100000 | 31893/250000 | 3083704239/15379625000 | 31893/250000 | 100253/500000 | `(-159633/500000, -1977607197/500000000000); (-159633/500000, 1646146251/62500000000); (-369111/1000000, 38985804501/1000000000000); (-369111/1000000, 9251112717/125000000000)` |
| 65 | 45 | c | 861491/1000000 | 119547/125000 | 27174019041/30759250000 | 119547/125000 | 441721/500000 | 119547/125000 | `(159633/500000, -39966175269/125000000000); (159633/500000, -85753687149/250000000000); (369111/1000000, -81522057123/250000000000); (369111/1000000, -176504485083/500000000000)` |
| 66 | 45 | e | 159633/500000 | 369111/1000000 | 23250/69067 | 369111/1000000 | 336629/1000000 | 369111/1000000 | `(75587/100000, -279/1000); (85367/125000, -279/1000); (207201/250000, -279/1000)` |
| 67 | 57 | b | 31893/250000 | 100253/500000 | 31893/250000 | 1620980357/8121600000 | 31893/250000 | 199589/1000000 | `(-105583/500000, -434119393/1000000000000); (-3807/15625, 20603919813/1000000000000); (-105583/500000, 2512511069/100000000000); (-3807/15625, 4862941071/100000000000); (-174259/1000000, -37341119393/1000000000000); (-206741/1000000, -16303080187/1000000000000); (-174259/1000000, -1178188931/100000000000); (-206741/1000000, 1172241071/100000000000)` |
| 68 | 57 | e | 336629/1000000 | 369111/1000000 | 954987897/2811500000 | 369111/1000000 | 42459/125000 | 369111/1000000 | `(520111/1000000, -50614358541/250000000000); (224047/500000, -193421965293/1000000000000); (298019/500000, -50614358541/250000000000); (524021/1000000, -193421965293/1000000000000); (520111/1000000, -5866403359/25000000000); (224047/500000, -22296273407/100000000000); (298019/500000, -5866403359/25000000000); (524021/1000000, -22296273407/100000000000)` |
| 69 | 57 | p | 647683/1000000 | 72361/100000 | 1299716993/1922453125 | 72361/100000 | 84509/125000 | 72361/100000 | `(42459/125000, -61447517637/250000000000); (42459/125000, -261216760101/1000000000000); (369111/1000000, -3899150979/15625000000); (369111/1000000, -2086659849/7812500000); (42459/125000, -34748596343/125000000000); (42459/125000, -145378764439/500000000000); (369111/1000000, -70436090713/250000000000); (369111/1000000, -296633229449/1000000000000)` |
| 70 | 57 | q | 125463/1000000 | 16237/100000 | 125463/1000000 | 63502091109/436214000000 | 125463/1000000 | 18197/125000 | `(-218107/250000, 23327523/250000000); (-800411/1000000, 8605991697/125000000000); (-218107/250000, 218914767/2000000000); (-800411/1000000, 82875116613/1000000000000); (-218107/250000, 6841088721/62500000000); (-800411/1000000, 10624407639/125000000000); (-218107/250000, 63502091109/500000000000); (-800411/1000000, 100421915331/1000000000000)` |
| 71 | 75 | c | 441721/500000 | 119547/125000 | 441721/500000 | 301577703737/315444500000 | 441721/500000 | 956041/1000000 | `(-82541/125000, 38284642453/62500000000); (-630889/1000000, 301577703737/500000000000); (-82541/125000, 17717121203/31250000000); (-630889/1000000, 138399087487/250000000000)` |
| 72 | 75 | f | 159633/500000 | 113383/250000 | 159633/500000 | 81823080031/184555500000 | 159633/500000 | 443353/1000000 | `(-42459/125000, 8602406939/62500000000); (-42459/125000, 11212419819/125000000000); (-369111/1000000, 81823080031/500000000000); (-369111/1000000, 117844249551/1000000000000)` |
| 73 | 78 | p | 84509/125000 | 72361/100000 | 84509/125000 | 17752308329/24607400000 | 84509/125000 | 360711/500000 | `(-42459/125000, 110852113689/500000000000); (-42459/125000, 237255586569/1000000000000); (-369111/1000000, 3870498069/15625000000); (-369111/1000000, 2073441231/7812500000); (-42459/125000, 7001517451/31250000000); (-42459/125000, 14883733371/62500000000); (-369111/1000000, 25005620747/100000000000); (-369111/1000000, 53256924987/200000000000)` |
| 74 | 81 | r | 756293/1000000 | 920263/1000000 | 756293/1000000 | 161076928859/184555500000 | 756293/1000000 | 54549/62500 | `(-42459/125000, 138962989339/500000000000); (-42459/125000, 258459210219/1000000000000); (-369111/1000000, 75983406929/250000000000); (-369111/1000000, 143302050609/500000000000); (-42459/125000, 7403655217/25000000000); (-42459/125000, 13266541857/50000000000); (-369111/1000000, 161076928859/500000000000); (-369111/1000000, 293475728139/1000000000000)` |
| 75 | 85 | u | 573883/1000000 | 153121/200000 | 37117176161/62500000000 | 153121/200000 | 296937/500000 | 153121/200000 | `(1/1, -5446714011/7812500000); (1/1, -1834606173/2500000000); (1/1, -47412591607/62500000000); (1/1, -12426008461/15625000000); (1/1, -37117176161/62500000000); (1/1, -24689780371/40000000000); (1/1, -678018089189/1000000000000); (1/1, -43836736243/62500000000)` |
| 76 | 88 | c | 441721/500000 | 956041/1000000 | 82469993317/89106250000 | 956041/1000000 | 231381/250000 | 956041/1000000 | `(273369/500000, -68432034309/125000000000); (14257/20000, -82469993317/125000000000); (273369/500000, -288970294911/500000000000); (14257/20000, -348888720543/500000000000); (4213/8000, -68432034309/125000000000); (692737/1000000, -82469993317/125000000000); (4213/8000, -288970294911/500000000000); (692737/1000000, -348888720543/500000000000)` |
| 77 | 88 | h | 672201/1000000 | 838313/1000000 | 70982590661/93323000000 | 838313/1000000 | 760611/1000000 | 838313/1000000 | `(62363/250000, -52279754403/250000000000); (279969/1000000, -212947771983/1000000000000); (102051/500000, -52279754403/250000000000); (234619/1000000, -212947771983/1000000000000); (62363/250000, -7116690057/31250000000); (279969/1000000, -29022078077/125000000000); (102051/500000, -7116690057/31250000000); (234619/1000000, -29022078077/125000000000)` |
| 78 | 88 | p | 84509/125000 | 360711/500000 | 84509/125000 | 11770276537/16766260000 | 84509/125000 | 351011/500000 | `(-760611/1000000, 30927794847/62500000000); (-760611/1000000, 128556882267/250000000000); (-838313/1000000, 2833798917/5000000000); (-838313/1000000, 11770276537/20000000000); (-760611/1000000, 23811482667/50000000000); (-760611/1000000, 98999735287/200000000000); (-838313/1000000, 137036179797/250000000000); (-838313/1000000, 569284974217/1000000000000)` |
| 79 | 100 | u | 296937/500000 | 153121/200000 | 296937/500000 | 467817718993/630889000000 | 296937/500000 | 370761/500000 | `(-82541/125000, 5769954939/12500000000); (-630889/1000000, 226098761673/500000000000); (-82541/125000, 12021739699/25000000000); (-630889/1000000, 467817718993/1000000000000); (-82541/125000, 168474617291/500000000000); (-630889/1000000, 40943795351/125000000000); (-82541/125000, 378943625731/1000000000000); (-630889/1000000, 91472939191/250000000000)` |
| 80 | 100 | v | 30937/62500 | 678099/1000000 | 30937/62500 | 368684956831/556647000000 | 30937/62500 | 165583/250000 | `(-340367/500000, 793755173/1953125000); (-340367/500000, 25905427093/62500000000); (-556647/1000000, 45531721139/125000000000); (-556647/1000000, 368684956831/1000000000000); (-340367/500000, 301666543/976562500); (-340367/500000, 20083583401/62500000000); (-556647/1000000, 33344707571/125000000000); (-556647/1000000, 275535457759/1000000000000)` |
| 81 | 105 | v | 30937/62500 | 165583/250000 | 270737735421/500000000000 | 165583/250000 | 21659/40000 | 165583/250000 | `(1/1, -301813136157/500000000000); (1/1, -621109329/1000000000); (1/1, -317591537383/500000000000); (1/1, -163166532863/250000000000); (1/1, -270737735421/500000000000); (1/1, -563305137/1000000000); (1/1, -280779864199/500000000000); (1/1, -145847348639/250000000000)` |
| 82 | 111 | u | 296937/500000 | 370761/500000 | 296937/500000 | 19111714347/26528750000 | 296937/500000 | 22513/31250 | `(-268141/1000000, 125960196279/1000000000000); (-119351/500000, 25923921663/250000000000); (-268141/1000000, 4825324969/50000000000); (-119351/500000, 74241989753/1000000000000); (-268141/1000000, 9341776847/62500000000); (-119351/500000, 1933977209/15625000000); (-268141/1000000, 209521071/1562500000); (-119351/500000, 6774974829/62500000000); (-21223/50000, 282279196279/1000000000000); (-395021/1000000, 65003671663/250000000000); (-21223/50000, 12641274969/50000000000); (-395021/1000000, 230560989753/1000000000000); (-21223/50000, 19111714347/62500000000); (-395021/1000000, 273528849/976562500); (-21223/50000, 907539017/3125000000); (-395021/1000000, 16544912329/62500000000)` |
| 83 | 111 | w | 607813/1000000 | 191033/250000 | 1603888757/2538287500 | 191033/250000 | 315939/500000 | 191033/250000 | `(203063/500000, -280130434393/1000000000000); (203063/500000, -142455943667/500000000000); (8737/31250, -237147660169/1000000000000); (8737/31250, -59550960793/250000000000); (203063/500000, -77396032823/250000000000); (203063/500000, -314365584233/1000000000000); (8737/31250, -66650339267/250000000000); (8737/31250, -267657540071/1000000000000); (203063/500000, -1603888757/6250000000); (203063/500000, -26483303261/100000000000); (8737/31250, -13352464181/62500000000); (8737/31250, -6816405889/31250000000); (203063/500000, -16999821577/62500000000); (203063/500000, -140103988361/500000000000); (8737/31250, -3578349547/15625000000); (8737/31250, -2918749157/12500000000)` |
| 84 | 113 | r | 756293/1000000 | 54549/62500 | 1545000172/1843546875 | 54549/62500 | 419029/500000 | 54549/62500 | `(117987/200000, -17285753367/31250000000); (35031/62500, -33548825313/62500000000); (117987/200000, -386250043/781250000); (35031/62500, -29877322019/62500000000); (117987/200000, -299533163043/500000000000); (35031/62500, -578076878427/1000000000000); (117987/200000, -28055345763/50000000000); (35031/62500, -540117467601/1000000000000); (82541/125000, -19485534617/31250000000); (630889/1000000, -37948387813/62500000000); (82541/125000, -1764978297/3125000000); (630889/1000000, -34276884519/62500000000); (82541/125000, -334729663043/500000000000); (630889/1000000, -648469878427/1000000000000); (82541/125000, -31574995763/50000000000); (630889/1000000, -610510467601/1000000000000)` |
| 85 | 113 | w | 315939/500000 | 191033/250000 | 19932707577/27761000000 | 191033/250000 | 718011/1000000 | 191033/250000 | `(27761/62500, -169704702021/500000000000); (27761/62500, -21732380673/62500000000); (27761/62500, -19932707577/62500000000); (27761/62500, -20515894167/62500000000); (287019/1000000, -143013785769/500000000000); (287019/1000000, -289709713341/1000000000000); (287019/1000000, -33192686091/125000000000); (287019/1000000, -54049185849/200000000000); (27761/62500, -21925561703/62500000000); (27761/62500, -179558836987/500000000000); (27761/62500, -256155029/781250000); (27761/62500, -2107558891/6250000000); (287019/1000000, -37178394343/125000000000); (287019/1000000, -301109296547/1000000000000); (287019/1000000, -34312075577/125000000000); (287019/1000000, -279201045133/1000000000000)` |
| 86 | 113 | j | 34739/62500 | 712981/1000000 | 34739/62500 | 3205135363/5305750000 | 34739/62500 | 75511/125000 | `(-378339/1000000, 18980374623/100000000000); (-3489/10000, 5160379899/31250000000); (-378339/1000000, 2628622863/12500000000); (-3489/10000, 360538947/1953125000); (-21223/50000, 23592474623/100000000000); (-395021/1000000, 6601661149/31250000000); (-21223/50000, 3205135363/12500000000); (-395021/1000000, 3604952201/15625000000); (-378339/1000000, 11150260189/62500000000); (-3489/10000, 76866286781/500000000000); (-378339/1000000, 3145854893/15625000000); (-3489/10000, 10977551561/62500000000); (-21223/50000, 14032822689/62500000000); (-395021/1000000, 99926786781/500000000000); (-21223/50000, 1933247759/7812500000); (-395021/1000000, 13860114061/62500000000)` |

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
| 117 | f | 159633/500000 | 443353/1000000 | `(-42249/250000, 2503634471/62500000000); (-45647/500000, -195655307/62500000000); (-42249/250000, 6451502779/125000000000); (-45647/500000, 584147057/125000000000); (-239389/1000000, 2503634471/62500000000); (-161687/1000000, -195655307/62500000000); (-239389/1000000, 6451502779/125000000000); (-161687/1000000, 584147057/125000000000)` |

## Stage 159

| Property | Value |
| --- | --- |
| Scope | root/AEP+/AFP-/PQR+/BFP-/APQ-/BPS+ |
| Packet | coordinate:root/HEQ+/CFQ-/AEP+/AFP-/PQR+/BFP-/APQ-/BPS+:root |
| Index | 0 |
| Context | 23 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 77 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| c | 135501/250000 | 1 | 135501/250000 | 1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| h | 135501/250000 | 1 | 135501/250000 | 1 |
| p | 240507/1000000 | 9897/15625 | 240507/1000000 | 9897/15625 |
| q | 245309/1000000 | 666493/1000000 | 245309/1000000 | 666493/1000000 |
| u | 222791/500000 | 907/1000 | 222791/500000 | 907/1000 |
| v | 12549/50000 | 401181/500000 | 12549/50000 | 401181/500000 |
| r | 14383/40000 | 1 | 14383/40000 | 1 |
| w | 119637/250000 | 440113/500000 | 119637/250000 | 440113/500000 |
| j | 70523/250000 | 440113/500000 | 70523/250000 | 440113/500000 |
| k | 796617/1000000 | 1 | 796617/1000000 | 1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |


### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
