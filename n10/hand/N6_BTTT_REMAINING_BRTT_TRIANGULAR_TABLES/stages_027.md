# BRTT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 135

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+ |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+ |
| Index | 1 |
| Context | 50 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 134 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 157051/250000 | 3197/25000 | 62151/100000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 349/1000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 556689/1000000 |
| q | 2761/12500 | 261217/500000 | 2761/12500 | 261217/500000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 236/625 | 3197/25000 | 377533/1000000 |
| r | 116941/200000 | 1/1 | 116941/200000 | 1/1 |
| w | 145741/200000 | 1/1 | 145741/200000 | 1/1 |
| j | 425347/1000000 | 210161/250000 | 425347/1000000 | 210161/250000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 8959/10000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 868 | AREA_lo_ACH | brtt ["earlier-area",{"direction":"lo","ref":"134:519","triangle":"ACH","value":"157807/500000"}] | `1/1 * c * h + -1/1 * a * c + -157807/500000` |
| 881 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"134:458","triangle":"AEQ","value":"62033/200000"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -62033/200000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 868 | a | 3197/25000 | 157051/250000 | 3197/25000 | 518261/833875 | 3197/25000 | 62151/100000 | `(-135501/250000, 4584855491/125000000000); (-6671/8000, 905558961/4000000000); (-135501/250000, 22639/100000); (-6671/8000, 518261/1000000)` |
| 1 | 881 | v | 3197/25000 | 236/625 | 3197/25000 | 377533/1000000 | 3197/25000 | 377533/1000000 | `(-1/1, 37685800769/1000000000000); (-1/1, 154970807879/1000000000000); (-1/1, 122260961327/500000000000); (-1/1, 90451732441/250000000000); (-1/1, 53119/500000); (-1/1, 377533/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 135:3 | ABE | hi | 161152403/250000000 | vertex maximum 161152403/250000000 |
| 135:4 | ABF | lo | 93/1000 | occupants none |
| 135:8 | ABP | lo | 93/1000 | occupants none |
| 135:10 | ABQ | lo | 63161/500000 | earlier 134:10; ABQ; lo; 63161/500000 |
| 135:14 | ABS | lo | 132517/1000000 | earlier 134:491; ABS; lo; 132517/1000000 |
| 135:18 | ACF | lo | 30997/100000 | earlier 134:18; ACF; lo; 30997/100000 |
| 135:19 | ACF | hi | 1240599377/1562500000 | vertex maximum 1240599377/1562500000 |
| 135:20 | ACH | lo | 157807/500000 | earlier 134:519; ACH; lo; 157807/500000 |
| 135:21 | ACH | hi | 145447813/200000000 | vertex maximum 145447813/200000000 |
| 135:22 | ACP | lo | 93/1000 | occupants none |
| 135:34 | AEP | lo | 93/1000 | occupants none |
| 135:36 | AEQ | lo | 62033/200000 | earlier 134:458; AEQ; lo; 62033/200000 |
| 135:39 | AER | hi | 140683831857/200000000000 | vertex maximum 140683831857/200000000000 |
| 135:50 | AFS | lo | 93/1000 | occupants none |
| 135:52 | AHP | lo | 64807/500000 | earlier 134:518; AHP; lo; 64807/500000 |
| 135:54 | AHQ | lo | 157807/500000 | earlier 134:520; AHQ; lo; 157807/500000 |
| 135:58 | AHS | lo | 29893/250000 | earlier 134:515; AHS; lo; 29893/250000 |
| 135:60 | APQ | lo | 93/1000 | occupants none |
| 135:62 | APR | lo | 93/1000 | occupants none |
| 135:63 | APR | hi | 61133121961/100000000000 | vertex maximum 61133121961/100000000000 |
| 135:74 | BCH | lo | 152319/500000 | earlier 134:463; BCH; lo; 152319/500000 |
| 135:76 | BCP | lo | 59319/500000 | earlier 134:439; BCP; lo; 59319/500000 |
| 135:81 | BCR | hi | 727239/1000000 | vertex maximum 727239/1000000 |
| 135:83 | BCS | hi | 651533/1000000 | earlier 134:253; BCS; hi; 651533/1000000 |
| 135:88 | BEP | lo | 93/1000 | occupants none |
| 135:92 | BER | lo | 68213/200000 | earlier 134:410; BER; lo; 68213/200000 |
| 135:94 | BES | lo | 310501/1000000 | earlier 134:505; BES; lo; 310501/1000000 |
| 135:98 | BFP | lo | 93/1000 | occupants none |
| 135:99 | BFP | hi | 450053/1000000 | vertex maximum 450053/1000000 |
| 135:101 | BFQ | hi | 223341/250000 | vertex maximum 223341/250000 |
| 135:104 | BFS | lo | 55947/500000 | earlier 134:482; BFS; lo; 55947/500000 |
| 135:112 | BHS | lo | 17351/125000 | earlier 134:494; BHS; lo; 17351/125000 |
| 135:114 | BPQ | lo | 93/1000 | occupants none |
| 135:116 | BPR | lo | 93/1000 | occupants none |
| 135:118 | BPS | lo | 93/1000 | occupants none |
| 135:120 | BQR | lo | 68213/200000 | earlier 134:469; BQR; lo; 68213/200000 |
| 135:124 | BRS | lo | 93/1000 | occupants none |
| 135:130 | CEP | lo | 18609/200000 | earlier 134:484; CEP; lo; 18609/200000 |
| 135:132 | CEQ | lo | 93/1000 | occupants none |
| 135:133 | CEQ | hi | 32049300591/125000000000 | vertex maximum 32049300591/125000000000 |
| 135:140 | CFP | lo | 93/1000 | occupants none |
| 135:142 | CFQ | lo | 93/1000 | occupants none |
| 135:148 | CHP | lo | 93/1000 | occupants none |
| 135:154 | CHS | lo | 52109/500000 | earlier 134:448; CHS; lo; 52109/500000 |
| 135:158 | CPR | lo | 46739/500000 | earlier 134:481; CPR; lo; 46739/500000 |
| 135:172 | EFQ | lo | 141913/1000000 | earlier 134:474; EFQ; lo; 141913/1000000 |
| 135:173 | EFQ | hi | 287161633023/500000000000 | vertex maximum 287161633023/500000000000 |
| 135:174 | EFR | lo | 279/1000 | occupants S |
| 135:175 | EFR | hi | 130341137577/250000000000 | vertex maximum 130341137577/250000000000 |
| 135:176 | EFS | lo | 93/1000 | occupants none |
| 135:184 | EHS | lo | 93/1000 | occupants none |
| 135:192 | EQR | lo | 93/1000 | occupants none |
| 135:194 | EQS | lo | 103699/1000000 | earlier 134:453; EQS; lo; 103699/1000000 |
| 135:196 | ERS | lo | 93/1000 | occupants none |
| 135:197 | ERS | hi | 67073/200000 | earlier 134:197; ERS; hi; 67073/200000 |
| 135:200 | FHQ | lo | 93/1000 | occupants none |
| 135:206 | FPQ | lo | 62407/500000 | earlier 134:206; FPQ; lo; 62407/500000 |
| 135:208 | FPR | lo | 281707/1000000 | earlier 134:471; FPR; lo; 281707/1000000 |
| 135:209 | FPR | hi | 2175117999/3125000000 | vertex maximum 2175117999/3125000000 |
| 135:211 | FPS | hi | 255019/500000 | earlier 134:237; FPS; hi; 255019/500000 |
| 135:213 | FQR | hi | 4869503823/6250000000 | vertex maximum 4869503823/6250000000 |
| 135:216 | FRS | lo | 93/1000 | occupants none |
| 135:217 | FRS | hi | 67073/200000 | earlier 134:217; FRS; hi; 67073/200000 |
| 135:221 | HPR | hi | 769203/1000000 | earlier 134:221; HPR; hi; 769203/1000000 |
| 135:228 | PQR | lo | 31013/200000 | earlier 134:440; PQR; lo; 31013/200000 |
| 135:229 | PQR | hi | 141727/250000 | earlier 134:229; PQR; hi; 141727/250000 |
| 135:232 | PRS | lo | 93/1000 | occupants none |
| 135:235 | QRS | hi | 15143/31250 | earlier 134:265; QRS; hi; 15143/31250 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 484 | plu | AER * EFQ = AEF * EQR + AEQ * EFR | circuit EAFQR |
| 485 | plu | AEF * FQR = AFQ * EFR + AFR * EFQ | circuit FAEQR |
| 692 | plu | BFP * CPR = BCP * FPR + BPR * CFP | circuit PBCFR |
| 810 | plu | BFS * ERS = BES * FRS + BRS * EFS | circuit SBEFR |
| 1922 | support | BES * ABE >= 1023/1000 * (BES - AES) | pentagon ESFAB |
| 2152 | support | FPR * APR >= 1023/1000 * (FPR - AFR) | pentagon RFHAP |
| 2208 | support | EPQ * CEQ >= 1023/1000 * (EPQ - CEP) | pentagon EPBCQ |
| 2559 | bary | outer ABE; fans BEP, AEP, ABP; target FPS; sign -1; vertices AFS -1; BFS -1; EFS -1 | container ABE; inner P; line FS |
| 2563 | bary | outer ABE; fans BEP, AEP, ABP; target HPS; sign -1; vertices AHS -1; BHS -1; EHS -1 | container ABE; inner P; line HS |
| 2640 | bary | outer ACF; fans CFP, AFP, ACP; target EPQ; sign -1; vertices AEQ -1; CEQ -1; EFQ -1 | container ACF; inner P; line EQ |
| 2689 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 3093 | bary | outer BCR; fans CPR, BPR, BCP; target AFP; sign -1; vertices ABF -1; ACF -1; AFR -1 | container BCR; inner P; line AF |
| 3380 | bary | outer BFQ; fans FPQ, BPQ, BFP; target EPS; sign 1; vertices BES 1; EFS 1; EQS 1 | container BFQ; inner P; line ES |
| 3613 | bary | outer EFR; fans FRS, ERS, EFS; target APS; sign 1; vertices AEP 1; AFP 1; APR 1 | container EFR; inner S; line AP |
| 3626 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 3643 | bary | outer EFR; fans FRS, ERS, EFS; target PQS; sign 1; vertices EPQ 1; FPQ 1; PQR 1 | container EFR; inner S; line PQ |
| 3674 | bary | outer FPR; fans PRS, FRS, FPS; target EQS; sign -1; vertices EFQ -1; EPQ -1; EQR -1 | container FPR; inner S; line EQ |
| 3760 | four | 1 * ACE + -1 * AEP + -1 * ACP + -1 * CEP = 0 | vertices ACEP |
| 3765 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 3774 | four | 1 * ACP + 1 * APR + -1 * ACR + 1 * CPR = 0 | vertices ACPR |
| 3787 | four | -1 * AEP + -1 * APQ + 1 * AEQ + -1 * EPQ = 0 | vertices AEPQ |
| 3796 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 3807 | four | -1 * APQ + 1 * AQS + -1 * APS + -1 * PQS = 0 | vertices APQS |
| 3825 | four | 1 * BCP + 1 * BPS + -1 * BCS + 1 * CPS = 0 | vertices BCPS |
| 3840 | four | 1 * BEP + 1 * BPS + -1 * BES + 1 * EPS = 0 | vertices BEPS |
| 3923 | four | 1 * FPR + -1 * FRS + -1 * FPS + -1 * PRS = 0 | vertices FPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 135:237 | AFR | lo | 56681/500000 | 11596997711732573/102300000000000000 | 2152 | 135:208, 135:63 |
| 135:238 | FPS | lo | 3829/40000 | 15426458979/161152403000 | 2559 | 135:3, 135:88, 135:34, 135:8, 135:50, 135:104, 135:176 |
| 135:240 | HPS | lo | 51721/500000 | 16670008479/161152403000 | 2563 | 135:3, 135:88, 135:34, 135:8, 135:58, 135:112, 135:184 |
| 135:241 | AFP | lo | 31017/250000 | 7518928663/60603250000 | 3093 | 135:81, 135:158, 135:116, 135:76, 135:4, 135:18, 135:237 |
| 135:243 | ACF | lo | 77517/250000 | 77517/250000 | 3765 | 135:241, 135:22, 135:140 |
| 135:244 | AFQ | lo | 170941/500000 | 170941/500000 | 3796 | 135:241, 135:60, 135:206 |
| 135:246 | FPR | lo | 11269/40000 | 11269/40000 | 3923 | 135:216, 135:238, 135:232 |
| 135:247 | AEF | lo | 71537/500000 | 55736309753/389560305840 | 485 | 135:244, 135:174, 135:237, 135:172, 135:213 |
| 135:248 | CPR | lo | 46741/500000 | 841445811/9001060000 | 692 | 135:76, 135:246, 135:116, 135:140, 135:99 |
| 135:249 | AFR | lo | 113369/1000000 | 463909548621491/4092000000000000 | 2152 | 135:246, 135:63 |
| 135:251 | FPQ | lo | 124827/1000000 | 18155851809/145447813000 | 2689 | 135:21, 135:148, 135:52, 135:22, 135:244, 135:142, 135:200 |
| 135:252 | AFP | lo | 124081/1000000 | 15039514737/121206500000 | 3093 | 135:81, 135:248, 135:116, 135:76, 135:4, 135:243, 135:249 |
| 135:253 | EPS | lo | 15563/125000 | 37075952109/297788000000 | 3380 | 135:101, 135:251, 135:114, 135:98, 135:94, 135:176, 135:194 |
| 135:255 | APS | lo | 6159/62500 | 4281453014887/43447045859000 | 3613 | 135:175, 135:216, 135:196, 135:176, 135:34, 135:252, 135:62 |
| 135:257 | CPS | lo | 46547/500000 | 4044659514887/43447045859000 | 3626 | 135:175, 135:216, 135:196, 135:176, 135:130, 135:140, 135:248 |
| 135:260 | ACF | lo | 310081/1000000 | 310081/1000000 | 3765 | 135:252, 135:22, 135:140 |
| 135:262 | AFQ | lo | 85477/250000 | 85477/250000 | 3796 | 135:252, 135:60, 135:251 |
| 135:265 | BCS | lo | 76183/250000 | 76183/250000 | 3825 | 135:76, 135:118, 135:257 |
| 135:267 | BES | lo | 38813/125000 | 38813/125000 | 3840 | 135:88, 135:118, 135:253 |
| 135:271 | EFQ | lo | 70969/500000 | 6656127800/46894610619 | 484 | 135:247, 135:192, 135:36, 135:174, 135:39 |
| 135:272 | AEF | lo | 143089/1000000 | 55741850561/389560305840 | 485 | 135:262, 135:174, 135:249, 135:271, 135:213 |
| 135:275 | BFS | lo | 22379/200000 | 4690734/41920625 | 810 | 135:267, 135:216, 135:124, 135:176, 135:197 |
| 135:276 | AES | lo | 2297/20000 | 3671616532361/31968750000000 | 1922 | 135:267, 135:3 |
| 135:278 | FPS | lo | 47863/500000 | 15426482229/161152403000 | 2559 | 135:3, 135:88, 135:34, 135:8, 135:50, 135:275, 135:176 |
| 135:279 | EPQ | lo | 15521/125000 | 308087668497/2481198754000 | 2640 | 135:19, 135:140, 135:252, 135:22, 135:36, 135:132, 135:271 |
| 135:280 | FPQ | lo | 12483/100000 | 18156335409/145447813000 | 2689 | 135:21, 135:148, 135:52, 135:22, 135:262, 135:142, 135:200 |
| 135:284 | AFP | lo | 124083/1000000 | 15039716237/121206500000 | 3093 | 135:81, 135:248, 135:116, 135:76, 135:4, 135:260, 135:249 |
| 135:285 | EPS | lo | 24901/200000 | 926907361/7444700000 | 3380 | 135:101, 135:280, 135:114, 135:98, 135:267, 135:176, 135:194 |
| 135:289 | EQS | lo | 103703/1000000 | 75188926719/725039333000 | 3674 | 135:209, 135:232, 135:216, 135:278, 135:271, 135:279, 135:192 |
| 135:291 | ACF | lo | 310083/1000000 | 310083/1000000 | 3765 | 135:284, 135:22, 135:140 |
| 135:292 | AEQ | lo | 38771/125000 | 38771/125000 | 3787 | 135:34, 135:60, 135:279 |
| 135:293 | AFQ | lo | 341913/1000000 | 341913/1000000 | 3796 | 135:284, 135:60, 135:280 |
| 135:295 | BES | lo | 62101/200000 | 62101/200000 | 3840 | 135:88, 135:118, 135:285 |
| 135:299 | FPR | lo | 140863/500000 | 140863/500000 | 3923 | 135:216, 135:278, 135:232 |
| 135:301 | EFQ | lo | 141941/1000000 | 6656276600/46894610619 | 484 | 135:272, 135:192, 135:292, 135:174, 135:39 |
| 135:302 | AEF | lo | 143091/1000000 | 111485436229/779120611680 | 485 | 135:293, 135:174, 135:249, 135:301, 135:213 |
| 135:305 | CPR | lo | 93483/1000000 | 10518102297/112513250000 | 692 | 135:76, 135:299, 135:116, 135:140, 135:99 |
| 135:306 | AFR | lo | 11337/100000 | 5798889941207657/51150000000000000 | 2152 | 135:299, 135:63 |
| 135:309 | EPQ | lo | 124169/1000000 | 308089412247/2481198754000 | 2640 | 135:19, 135:140, 135:284, 135:22, 135:292, 135:132, 135:301 |
| 135:310 | FPQ | lo | 124831/1000000 | 2593775487/20778259000 | 2689 | 135:21, 135:148, 135:52, 135:22, 135:293, 135:142, 135:200 |
| 135:313 | EPS | lo | 62253/500000 | 22245919531/178672800000 | 3380 | 135:101, 135:310, 135:114, 135:98, 135:295, 135:176, 135:289 |
| 135:314 | PQS | lo | 64899/500000 | 5639350737266171/43447045859000000 | 3643 | 135:175, 135:216, 135:196, 135:176, 135:309, 135:310, 135:228 |
| 135:316 | ACR | lo | 279483/1000000 | 279483/1000000 | 3774 | 135:22, 135:62, 135:305 |
| 135:317 | AEQ | lo | 310169/1000000 | 310169/1000000 | 3787 | 135:34, 135:60, 135:309 |
| 135:318 | AFQ | lo | 170957/500000 | 170957/500000 | 3796 | 135:284, 135:60, 135:310 |
| 135:319 | AQS | lo | 160671/500000 | 160671/500000 | 3807 | 135:60, 135:255, 135:314 |
| 135:322 | BES | lo | 155253/500000 | 155253/500000 | 3840 | 135:88, 135:118, 135:313 |
| 135:325 | AER | lo | 173847/1000000 | 16640769000/95720544341 | 484 | 135:302, 135:192, 135:317, 135:174, 135:173 |
| 135:328 | CEP | lo | 11631/125000 | 360563068785337/3875000000000000 | 2208 | 135:309, 135:133 |
| 135:330 | ACE | lo | 34881/125000 | 34881/125000 | 3760 | 135:34, 135:22, 135:328 |

## Stage 136

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+ |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+ |
| Index | 2 |
| Context | 50 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 135 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 62151/100000 | 3197/25000 | 62151/100000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 349/1000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 556689/1000000 |
| q | 2761/12500 | 261217/500000 | 2761/12500 | 261217/500000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 377533/1000000 | 3197/25000 | 377529/1000000 |
| r | 116941/200000 | 1/1 | 116941/200000 | 1/1 |
| w | 145741/200000 | 1/1 | 145741/200000 | 1/1 |
| j | 425347/1000000 | 210161/250000 | 425347/1000000 | 210161/250000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 8959/10000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 881 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"135:317","triangle":"AEQ","value":"310169/1000000"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -310169/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 881 | v | 3197/25000 | 377533/1000000 | 3197/25000 | 377529/1000000 | 3197/25000 | 377529/1000000 | `(-1/1, 37681800769/1000000000000); (-1/1, 154966807879/1000000000000); (-1/1, 122258961327/500000000000); (-1/1, 90450732441/250000000000); (-1/1, 53117/500000); (-1/1, 377529/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 136:10 | ABQ | lo | 63161/500000 | earlier 135:10; ABQ; lo; 63161/500000 |
| 136:14 | ABS | lo | 132517/1000000 | earlier 135:14; ABS; lo; 132517/1000000 |
| 136:16 | ACE | lo | 34881/125000 | earlier 135:330; ACE; lo; 34881/125000 |
| 136:18 | ACF | lo | 310083/1000000 | earlier 135:291; ACF; lo; 310083/1000000 |
| 136:20 | ACH | lo | 157807/500000 | earlier 135:20; ACH; lo; 157807/500000 |
| 136:26 | ACR | lo | 279483/1000000 | earlier 135:316; ACR; lo; 279483/1000000 |
| 136:36 | AEQ | lo | 310169/1000000 | earlier 135:317; AEQ; lo; 310169/1000000 |
| 136:38 | AER | lo | 173847/1000000 | earlier 135:325; AER; lo; 173847/1000000 |
| 136:40 | AES | lo | 2297/20000 | earlier 135:276; AES; lo; 2297/20000 |
| 136:44 | AFP | lo | 124083/1000000 | earlier 135:284; AFP; lo; 124083/1000000 |
| 136:46 | AFQ | lo | 170957/500000 | earlier 135:318; AFQ; lo; 170957/500000 |
| 136:48 | AFR | lo | 11337/100000 | earlier 135:306; AFR; lo; 11337/100000 |
| 136:52 | AHP | lo | 64807/500000 | earlier 135:52; AHP; lo; 64807/500000 |
| 136:54 | AHQ | lo | 157807/500000 | earlier 135:54; AHQ; lo; 157807/500000 |
| 136:58 | AHS | lo | 29893/250000 | earlier 135:58; AHS; lo; 29893/250000 |
| 136:64 | APS | lo | 6159/62500 | earlier 135:255; APS; lo; 6159/62500 |
| 136:68 | AQS | lo | 160671/500000 | earlier 135:319; AQS; lo; 160671/500000 |
| 136:74 | BCH | lo | 152319/500000 | earlier 135:74; BCH; lo; 152319/500000 |
| 136:76 | BCP | lo | 59319/500000 | earlier 135:76; BCP; lo; 59319/500000 |
| 136:82 | BCS | lo | 76183/250000 | earlier 135:265; BCS; lo; 76183/250000 |
| 136:83 | BCS | hi | 651533/1000000 | earlier 135:83; BCS; hi; 651533/1000000 |
| 136:92 | BER | lo | 68213/200000 | earlier 135:92; BER; lo; 68213/200000 |
| 136:94 | BES | lo | 155253/500000 | earlier 135:322; BES; lo; 155253/500000 |
| 136:112 | BHS | lo | 17351/125000 | earlier 135:112; BHS; lo; 17351/125000 |
| 136:120 | BQR | lo | 68213/200000 | earlier 135:120; BQR; lo; 68213/200000 |
| 136:130 | CEP | lo | 11631/125000 | earlier 135:328; CEP; lo; 11631/125000 |
| 136:154 | CHS | lo | 52109/500000 | earlier 135:154; CHS; lo; 52109/500000 |
| 136:158 | CPR | lo | 93483/1000000 | earlier 135:305; CPR; lo; 93483/1000000 |
| 136:160 | CPS | lo | 46547/500000 | earlier 135:257; CPS; lo; 46547/500000 |
| 136:197 | ERS | hi | 67073/200000 | earlier 135:197; ERS; hi; 67073/200000 |
| 136:206 | FPQ | lo | 124831/1000000 | earlier 135:310; FPQ; lo; 124831/1000000 |
| 136:208 | FPR | lo | 140863/500000 | earlier 135:299; FPR; lo; 140863/500000 |
| 136:211 | FPS | hi | 255019/500000 | earlier 135:211; FPS; hi; 255019/500000 |
| 136:217 | FRS | hi | 67073/200000 | earlier 135:217; FRS; hi; 67073/200000 |
| 136:221 | HPR | hi | 769203/1000000 | earlier 135:221; HPR; hi; 769203/1000000 |
| 136:222 | HPS | lo | 51721/500000 | earlier 135:240; HPS; lo; 51721/500000 |
| 136:228 | PQR | lo | 31013/200000 | earlier 135:228; PQR; lo; 31013/200000 |
| 136:229 | PQR | hi | 141727/250000 | earlier 135:229; PQR; hi; 141727/250000 |
| 136:230 | PQS | lo | 64899/500000 | earlier 135:314; PQS; lo; 64899/500000 |
| 136:235 | QRS | hi | 15143/31250 | earlier 135:235; QRS; hi; 15143/31250 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 137

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+ |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+ |
| Index | 3 |
| Context | 50 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 136 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 62151/100000 | 3197/25000 | 62151/100000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 349/1000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 556689/1000000 |
| q | 2761/12500 | 261217/500000 | 2761/12500 | 261217/500000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 377529/1000000 | 3197/25000 | 377529/1000000 |
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
| 137:10 | ABQ | lo | 63161/500000 | earlier 136:10; ABQ; lo; 63161/500000 |
| 137:14 | ABS | lo | 132517/1000000 | earlier 136:14; ABS; lo; 132517/1000000 |
| 137:16 | ACE | lo | 34881/125000 | earlier 136:16; ACE; lo; 34881/125000 |
| 137:18 | ACF | lo | 310083/1000000 | earlier 136:18; ACF; lo; 310083/1000000 |
| 137:20 | ACH | lo | 157807/500000 | earlier 136:20; ACH; lo; 157807/500000 |
| 137:26 | ACR | lo | 279483/1000000 | earlier 136:26; ACR; lo; 279483/1000000 |
| 137:36 | AEQ | lo | 310169/1000000 | earlier 136:36; AEQ; lo; 310169/1000000 |
| 137:38 | AER | lo | 173847/1000000 | earlier 136:38; AER; lo; 173847/1000000 |
| 137:40 | AES | lo | 2297/20000 | earlier 136:40; AES; lo; 2297/20000 |
| 137:44 | AFP | lo | 124083/1000000 | earlier 136:44; AFP; lo; 124083/1000000 |
| 137:46 | AFQ | lo | 170957/500000 | earlier 136:46; AFQ; lo; 170957/500000 |
| 137:48 | AFR | lo | 11337/100000 | earlier 136:48; AFR; lo; 11337/100000 |
| 137:52 | AHP | lo | 64807/500000 | earlier 136:52; AHP; lo; 64807/500000 |
| 137:54 | AHQ | lo | 157807/500000 | earlier 136:54; AHQ; lo; 157807/500000 |
| 137:58 | AHS | lo | 29893/250000 | earlier 136:58; AHS; lo; 29893/250000 |
| 137:64 | APS | lo | 6159/62500 | earlier 136:64; APS; lo; 6159/62500 |
| 137:68 | AQS | lo | 160671/500000 | earlier 136:68; AQS; lo; 160671/500000 |
| 137:74 | BCH | lo | 152319/500000 | earlier 136:74; BCH; lo; 152319/500000 |
| 137:76 | BCP | lo | 59319/500000 | earlier 136:76; BCP; lo; 59319/500000 |
| 137:82 | BCS | lo | 76183/250000 | earlier 136:82; BCS; lo; 76183/250000 |
| 137:83 | BCS | hi | 651533/1000000 | earlier 136:83; BCS; hi; 651533/1000000 |
| 137:92 | BER | lo | 68213/200000 | earlier 136:92; BER; lo; 68213/200000 |
| 137:94 | BES | lo | 155253/500000 | earlier 136:94; BES; lo; 155253/500000 |
| 137:112 | BHS | lo | 17351/125000 | earlier 136:112; BHS; lo; 17351/125000 |
| 137:120 | BQR | lo | 68213/200000 | earlier 136:120; BQR; lo; 68213/200000 |
| 137:130 | CEP | lo | 11631/125000 | earlier 136:130; CEP; lo; 11631/125000 |
| 137:154 | CHS | lo | 52109/500000 | earlier 136:154; CHS; lo; 52109/500000 |
| 137:158 | CPR | lo | 93483/1000000 | earlier 136:158; CPR; lo; 93483/1000000 |
| 137:160 | CPS | lo | 46547/500000 | earlier 136:160; CPS; lo; 46547/500000 |
| 137:197 | ERS | hi | 67073/200000 | earlier 136:197; ERS; hi; 67073/200000 |
| 137:206 | FPQ | lo | 124831/1000000 | earlier 136:206; FPQ; lo; 124831/1000000 |
| 137:208 | FPR | lo | 140863/500000 | earlier 136:208; FPR; lo; 140863/500000 |
| 137:211 | FPS | hi | 255019/500000 | earlier 136:211; FPS; hi; 255019/500000 |
| 137:217 | FRS | hi | 67073/200000 | earlier 136:217; FRS; hi; 67073/200000 |
| 137:221 | HPR | hi | 769203/1000000 | earlier 136:221; HPR; hi; 769203/1000000 |
| 137:222 | HPS | lo | 51721/500000 | earlier 136:222; HPS; lo; 51721/500000 |
| 137:228 | PQR | lo | 31013/200000 | earlier 136:228; PQR; lo; 31013/200000 |
| 137:229 | PQR | hi | 141727/250000 | earlier 136:229; PQR; hi; 141727/250000 |
| 137:230 | PQS | lo | 64899/500000 | earlier 136:230; PQS; lo; 64899/500000 |
| 137:235 | QRS | hi | 15143/31250 | earlier 136:235; QRS; hi; 15143/31250 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 138

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+/ARS+ |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+/ARS+ |
| Index | 0 |
| Context | 51 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 137 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 62151/100000 | 3197/25000 | 62151/100000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 349/1000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 556689/1000000 |
| q | 2761/12500 | 261217/500000 | 2761/12500 | 261217/500000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 377529/1000000 | 3197/25000 | 377529/1000000 |
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
| 138:0 | ABC | lo | 93/1000 | occupants none |
| 138:2 | ABE | lo | 279/1000 | occupants P |
| 138:3 | ABE | hi | 161152403/250000000 | vertex maximum 161152403/250000000 |
| 138:4 | ABF | lo | 93/1000 | occupants none |
| 138:6 | ABH | lo | 93/1000 | occupants none |
| 138:8 | ABP | lo | 93/1000 | occupants none |
| 138:10 | ABQ | lo | 63161/500000 | earlier 137:10; ABQ; lo; 63161/500000 |
| 138:14 | ABS | lo | 132517/1000000 | earlier 137:14; ABS; lo; 132517/1000000 |
| 138:18 | ACF | lo | 310083/1000000 | earlier 137:18; ACF; lo; 310083/1000000 |
| 138:19 | ACF | hi | 1240599377/1562500000 | vertex maximum 1240599377/1562500000 |
| 138:20 | ACH | lo | 157807/500000 | earlier 137:20; ACH; lo; 157807/500000 |
| 138:21 | ACH | hi | 145447813/200000000 | vertex maximum 145447813/200000000 |
| 138:22 | ACP | lo | 93/1000 | occupants none |
| 138:26 | ACR | lo | 279483/1000000 | earlier 137:26; ACR; lo; 279483/1000000 |
| 138:34 | AEP | lo | 93/1000 | occupants none |
| 138:36 | AEQ | lo | 310169/1000000 | earlier 137:36; AEQ; lo; 310169/1000000 |
| 138:38 | AER | lo | 173847/1000000 | earlier 137:38; AER; lo; 173847/1000000 |
| 138:39 | AER | hi | 140683831857/200000000000 | vertex maximum 140683831857/200000000000 |
| 138:42 | AFH | lo | 93/1000 | occupants none |
| 138:44 | AFP | lo | 124083/1000000 | earlier 137:44; AFP; lo; 124083/1000000 |
| 138:46 | AFQ | lo | 170957/500000 | earlier 137:46; AFQ; lo; 170957/500000 |
| 138:47 | AFQ | hi | 21803/25000 | vertex maximum 21803/25000 |
| 138:48 | AFR | lo | 279/1000 | occupants S |
| 138:49 | AFR | hi | 8080504253/10000000000 | vertex maximum 8080504253/10000000000 |
| 138:50 | AFS | lo | 93/1000 | occupants none |
| 138:54 | AHQ | lo | 157807/500000 | earlier 137:54; AHQ; lo; 157807/500000 |
| 138:60 | APQ | lo | 93/1000 | occupants none |
| 138:62 | APR | lo | 93/1000 | occupants none |
| 138:67 | AQR | hi | 21803/25000 | vertex maximum 21803/25000 |
| 138:68 | AQS | lo | 160671/500000 | earlier 137:68; AQS; lo; 160671/500000 |
| 138:69 | AQS | hi | 38401/50000 | vertex maximum 38401/50000 |
| 138:70 | ARS | lo | 93/1000 | occupants none |
| 138:75 | BCF | hi | 727239/1000000 | vertex maximum 727239/1000000 |
| 138:78 | BCP | lo | 59319/500000 | earlier 137:76; BCP; lo; 59319/500000 |
| 138:80 | BCQ | lo | 93/1000 | occupants none |
| 138:83 | BCR | hi | 727239/1000000 | vertex maximum 727239/1000000 |
| 138:85 | BCS | hi | 651533/1000000 | earlier 137:83; BCS; hi; 651533/1000000 |
| 138:87 | BEF | hi | 223341/250000 | vertex maximum 223341/250000 |
| 138:88 | BEH | lo | 279/1000 | occupants P |
| 138:90 | BEP | lo | 93/1000 | occupants none |
| 138:94 | BER | lo | 68213/200000 | earlier 137:92; BER; lo; 68213/200000 |
| 138:96 | BES | lo | 155253/500000 | earlier 137:94; BES; lo; 155253/500000 |
| 138:98 | BFH | lo | 93/1000 | occupants none |
| 138:100 | BFP | lo | 93/1000 | occupants none |
| 138:101 | BFP | hi | 450053/1000000 | vertex maximum 450053/1000000 |
| 138:103 | BFQ | hi | 223341/250000 | vertex maximum 223341/250000 |
| 138:108 | BHP | lo | 93/1000 | occupants none |
| 138:116 | BPQ | lo | 93/1000 | occupants none |
| 138:118 | BPR | lo | 93/1000 | occupants none |
| 138:120 | BPS | lo | 93/1000 | occupants none |
| 138:122 | BQR | lo | 68213/200000 | earlier 137:120; BQR; lo; 68213/200000 |
| 138:123 | BQR | hi | 20805713407/25000000000 | vertex maximum 20805713407/25000000000 |
| 138:126 | BRS | lo | 93/1000 | occupants none |
| 138:130 | CEH | lo | 93/1000 | occupants none |
| 138:134 | CEQ | lo | 93/1000 | occupants none |
| 138:135 | CEQ | hi | 32049300591/125000000000 | vertex maximum 32049300591/125000000000 |
| 138:136 | CER | lo | 93/1000 | occupants none |
| 138:140 | CFH | lo | 93/1000 | occupants none |
| 138:142 | CFP | lo | 93/1000 | occupants none |
| 138:144 | CFQ | lo | 93/1000 | occupants none |
| 138:146 | CFR | lo | 279/1000 | occupants S |
| 138:150 | CHP | lo | 93/1000 | occupants none |
| 138:160 | CPR | lo | 93483/1000000 | earlier 137:158; CPR; lo; 93483/1000000 |
| 138:162 | CPS | lo | 46547/500000 | earlier 137:160; CPS; lo; 46547/500000 |
| 138:164 | CQR | lo | 93/1000 | occupants none |
| 138:175 | EFQ | hi | 287161633023/500000000000 | vertex maximum 287161633023/500000000000 |
| 138:176 | EFR | lo | 279/1000 | occupants S |
| 138:177 | EFR | hi | 130341137577/250000000000 | vertex maximum 130341137577/250000000000 |
| 138:178 | EFS | lo | 93/1000 | occupants none |
| 138:182 | EHQ | lo | 93/1000 | occupants none |
| 138:194 | EQR | lo | 93/1000 | occupants none |
| 138:198 | ERS | lo | 93/1000 | occupants none |
| 138:199 | ERS | hi | 67073/200000 | earlier 137:197; ERS; hi; 67073/200000 |
| 138:202 | FHQ | lo | 93/1000 | occupants none |
| 138:208 | FPQ | lo | 124831/1000000 | earlier 137:206; FPQ; lo; 124831/1000000 |
| 138:213 | FPS | hi | 255019/500000 | earlier 137:211; FPS; hi; 255019/500000 |
| 138:214 | FQR | lo | 279/1000 | occupants S |
| 138:215 | FQR | hi | 4869503823/6250000000 | vertex maximum 4869503823/6250000000 |
| 138:216 | FQS | lo | 93/1000 | occupants none |
| 138:218 | FRS | lo | 93/1000 | occupants none |
| 138:219 | FRS | hi | 67073/200000 | earlier 137:217; FRS; hi; 67073/200000 |
| 138:220 | HPQ | lo | 93/1000 | occupants none |
| 138:223 | HPR | hi | 769203/1000000 | earlier 137:221; HPR; hi; 769203/1000000 |
| 138:230 | PQR | lo | 31013/200000 | earlier 137:228; PQR; lo; 31013/200000 |
| 138:231 | PQR | hi | 141727/250000 | earlier 137:229; PQR; hi; 141727/250000 |
| 138:234 | PRS | lo | 93/1000 | occupants none |
| 138:236 | QRS | lo | 93/1000 | occupants none |
| 138:237 | QRS | hi | 15143/31250 | earlier 137:235; QRS; hi; 15143/31250 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 8 | fan | AFR = AFS + FRS + ARS | point S |
| 150 | plu | ABR * BEF = ABE * BFR + ABF * BER | circuit BAEFR |
| 391 | plu | ACF * AHR = ACH * AFR + ACR * AFH | circuit ACFHR |
| 513 | plu | AEF * AQR = AEQ * AFR + AER * AFQ | circuit AEFQR |
| 514 | plu | AER * EFQ = AEF * EQR + AEQ * EFR | circuit EAFQR |
| 515 | plu | AEF * FQR = AFQ * EFR + AFR * EFQ | circuit FAEQR |
| 593 | plu | AFQ * HQR = AHQ * FQR + AQR * FHQ | circuit QAFHR |
| 726 | plu | BCF * BHR = BCH * BFR + BCR * BFH | circuit BCFHR |
| 727 | plu | BCF * CHR = BCH * CFR + BCR * CFH | circuit CBFHR |
| 744 | plu | BFP * CPR = BCP * FPR + BPR * CFP | circuit PBCFR |
| 862 | plu | BFS * ERS = BES * FRS + BRS * EFS | circuit SBEFR |
| 2324 | support | EPQ * CEQ >= 1023/1000 * (EPQ - CEP) | pentagon EPBCQ |
| 2675 | bary | outer ABE; fans BEP, AEP, ABP; target FPS; sign -1; vertices AFS -1; BFS -1; EFS -1 | container ABE; inner P; line FS |
| 2758 | bary | outer ACF; fans CFP, AFP, ACP; target EPQ; sign -1; vertices AEQ -1; CEQ -1; EFQ -1 | container ACF; inner P; line EQ |
| 2808 | bary | outer ACH; fans CHP, AHP, ACP; target FPQ; sign -1; vertices AFQ -1; CFQ -1; FHQ -1 | container ACH; inner P; line FQ |
| 3025 | bary | outer AFR; fans FRS, ARS, AFS; target EQS; sign -1; vertices AEQ -1; EFQ -1; EQR -1 | container AFR; inner S; line EQ |
| 3138 | bary | outer AQS; fans PQS, APS, APQ; target BCP; sign 1; vertices ABC 1; BCQ 1; BCS 1 | container AQS; inner P; line BC |
| 3201 | bary | outer BCF; fans CFP, BFP, BCP; target EPR; sign 1; vertices BER 1; CER 1; EFR 1 | container BCF; inner P; line ER |
| 3215 | bary | outer BCF; fans CFP, BFP, BCP; target PQR; sign 1; vertices BQR 1; CQR 1; FQR 1 | container BCF; inner P; line QR |
| 3265 | bary | outer BCR; fans CPR, BPR, BCP; target AFP; sign -1; vertices ABF -1; ACF -1; AFR -1 | container BCR; inner P; line AF |
| 3266 | bary | outer BCR; fans CPR, BPR, BCP; target AHP; sign -1; vertices ABH -1; ACH -1; AHR -1 | container BCR; inner P; line AH |
| 3310 | bary | outer BCS; fans CPS, BPS, BCP; target AHP; sign -1; vertices ABH -1; ACH -1; AHS -1 | container BCS; inner P; line AH |
| 3556 | bary | outer BFQ; fans FPQ, BPQ, BFP; target EPS; sign 1; vertices BES 1; EFS 1; EQS 1 | container BFQ; inner P; line ES |
| 3667 | bary | outer BQR; fans PQR, BPR, BPQ; target APS; sign -1; vertices ABS -1; AQS -1; ARS -1 | container BQR; inner P; line AS |
| 3790 | bary | outer EFR; fans FRS, ERS, EFS; target ABS; sign 1; vertices ABE 1; ABF 1; ABR 1 | container EFR; inner S; line AB |
| 3802 | bary | outer EFR; fans FRS, ERS, EFS; target BHS; sign -1; vertices BEH -1; BFH -1; BHR -1 | container EFR; inner S; line BH |
| 3809 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 3810 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 3826 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3827 | bary | outer EFR; fans FRS, ERS, EFS; target PQS; sign 1; vertices EPQ 1; FPQ 1; PQR 1 | container EFR; inner S; line PQ |
| 3880 | bary | outer FQR; fans QRS, FRS, FQS; target AHS; sign -1; vertices AFH -1; AHQ -1; AHR -1 | container FQR; inner S; line AH |
| 3949 | four | 1 * ACE + -1 * AEP + -1 * ACP + -1 * CEP = 0 | vertices ACEP |
| 3954 | four | 1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP = 0 | vertices ACFP |
| 3958 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 3963 | four | 1 * ACP + 1 * APR + -1 * ACR + 1 * CPR = 0 | vertices ACPR |
| 3977 | four | -1 * AEP + -1 * APQ + 1 * AEQ + -1 * EPQ = 0 | vertices AEPQ |
| 3987 | four | -1 * AFP + -1 * APQ + 1 * AFQ + -1 * FPQ = 0 | vertices AFPQ |
| 3993 | four | -1 * AHP + -1 * APQ + 1 * AHQ + -1 * HPQ = 0 | vertices AHPQ |
| 3998 | four | -1 * APQ + 1 * AQR + -1 * APR + -1 * PQR = 0 | vertices APQR |
| 3999 | four | -1 * APQ + 1 * AQS + -1 * APS + -1 * PQS = 0 | vertices APQS |
| 4013 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 4018 | four | 1 * BCP + 1 * BPR + -1 * BCR + 1 * CPR = 0 | vertices BCPR |
| 4019 | four | 1 * BCP + 1 * BPS + -1 * BCS + 1 * CPS = 0 | vertices BCPS |
| 4033 | four | 1 * BEP + 1 * BPR + -1 * BER + 1 * EPR = 0 | vertices BEPR |
| 4034 | four | 1 * BEP + 1 * BPS + -1 * BES + 1 * EPS = 0 | vertices BEPS |
| 4047 | four | -1 * BFR + 1 * BRS + 1 * BFS + 1 * FRS = 0 | vertices BFRS |
| 4053 | four | -1 * BPQ + 1 * BQR + -1 * BPR + -1 * PQR = 0 | vertices BPQR |
| 4117 | four | 1 * FPR + -1 * FRS + -1 * FPS + -1 * PRS = 0 | vertices FPRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 138:238 | AFS | hi | 622051/1000000 | 6220504253/10000000000 | 8 | 138:49, 138:218, 138:70 |
| 138:239 | AHR | lo | 3591/25000 | 2851205625/19849590032 | 391 | 138:20, 138:48, 138:26, 138:42, 138:19 |
| 138:240 | AEF | lo | 83691/500000 | 72988937079/436060000000 | 513 | 138:36, 138:48, 138:38, 138:46, 138:67 |
| 138:241 | AER | lo | 8889/50000 | 17017279500/95720544341 | 514 | 138:240, 138:194, 138:36, 138:176, 138:175 |
| 138:242 | EFQ | lo | 145153/1000000 | 2268970600/15631536873 | 514 | 138:240, 138:194, 138:36, 138:176, 138:39 |
| 138:246 | EPQ | lo | 24909/200000 | 77255797593/620299688500 | 2758 | 138:19, 138:142, 138:44, 138:22, 138:36, 138:134, 138:242 |
| 138:255 | EQS | lo | 30999/250000 | 1001956355529/8080504253000 | 3025 | 138:49, 138:218, 138:70, 138:50, 138:36, 138:242, 138:194 |
| 138:258 | AFP | lo | 151103/1000000 | 18314769/121206500 | 3265 | 138:83, 138:160, 138:118, 138:78, 138:4, 138:18, 138:48 |
| 138:259 | AHP | lo | 129729/1000000 | 786201311/6060325000 | 3266 | 138:83, 138:160, 138:118, 138:78, 138:6, 138:20, 138:239 |
| 138:261 | EPS | lo | 126619/1000000 | 18852828581/148894000000 | 3556 | 138:103, 138:208, 138:116, 138:100, 138:96, 138:178, 138:255 |
| 138:262 | APS | lo | 125879/1000000 | 327377385872/2600714175875 | 3667 | 138:123, 138:230, 138:118, 138:116, 138:14, 138:68, 138:70 |
| 138:265 | PQS | lo | 3251/25000 | 1129971765301831/8689409171800000 | 3827 | 138:177, 138:218, 138:198, 138:178, 138:246, 138:208, 138:230 |
| 138:266 | AHS | lo | 125617/1000000 | 203897581013/1623167941000 | 3880 | 138:215, 138:236, 138:218, 138:216, 138:42, 138:54, 138:239 |
| 138:267 | ACF | lo | 337103/1000000 | 337103/1000000 | 3954 | 138:258, 138:22, 138:142 |
| 138:268 | ACH | lo | 315729/1000000 | 315729/1000000 | 3958 | 138:259, 138:22, 138:150 |
| 138:270 | AEQ | lo | 62109/200000 | 62109/200000 | 3977 | 138:34, 138:60, 138:246 |
| 138:271 | AFQ | lo | 184467/500000 | 184467/500000 | 3987 | 138:258, 138:60, 138:208 |
| 138:272 | AHQ | lo | 315729/1000000 | 315729/1000000 | 3993 | 138:259, 138:60, 138:220 |
| 138:273 | AQS | lo | 348919/1000000 | 348919/1000000 | 3999 | 138:60, 138:262, 138:265 |
| 138:274 | BES | lo | 312619/1000000 | 312619/1000000 | 4034 | 138:90, 138:120, 138:261 |
| 138:276 | AHR | lo | 449/3125 | 1426003875/9924795016 | 391 | 138:268, 138:48, 138:26, 138:42, 138:19 |
| 138:277 | AEF | lo | 21819/125000 | 1902889269/10901500000 | 513 | 138:270, 138:48, 138:241, 138:271, 138:67 |
| 138:279 | EFQ | lo | 117/800 | 2286119800/15631536873 | 514 | 138:277, 138:194, 138:270, 138:176, 138:39 |
| 138:280 | AEF | lo | 36897/200000 | 299450700/1623167941 | 515 | 138:271, 138:176, 138:48, 138:279, 138:215 |
| 138:283 | BFS | lo | 56241/500000 | 37722567/335365000 | 862 | 138:274, 138:218, 138:126, 138:178, 138:199 |
| 138:285 | CEP | lo | 9333/100000 | 72330980199357/775000000000000 | 2324 | 138:246, 138:135 |
| 138:286 | FPS | lo | 9581/100000 | 15440129979/161152403000 | 2675 | 138:3, 138:90, 138:34, 138:8, 138:50, 138:283, 138:178 |
| 138:289 | EPQ | lo | 62359/500000 | 309451280997/2481198754000 | 2758 | 138:19, 138:142, 138:258, 138:22, 138:270, 138:134, 138:279 |
| 138:290 | FPQ | lo | 64143/500000 | 18659019009/145447813000 | 2808 | 138:21, 138:150, 138:259, 138:22, 138:271, 138:144, 138:202 |
| 138:294 | EQS | lo | 62083/500000 | 1003326245529/8080504253000 | 3025 | 138:49, 138:218, 138:70, 138:50, 138:270, 138:279, 138:194 |
| 138:297 | AFP | lo | 154559/1000000 | 18733579/121206500 | 3265 | 138:83, 138:160, 138:118, 138:78, 138:4, 138:267, 138:48 |
| 138:300 | AHP | lo | 130731/1000000 | 1151026779/8804500000 | 3310 | 138:85, 138:162, 138:120, 138:78, 138:6, 138:268, 138:266 |
| 138:301 | EPS | lo | 127781/1000000 | 19025888839/148894000000 | 3556 | 138:103, 138:290, 138:116, 138:100, 138:274, 138:178, 138:294 |
| 138:302 | APS | lo | 128961/1000000 | 335391951497/2600714175875 | 3667 | 138:123, 138:230, 138:118, 138:116, 138:14, 138:273, 138:70 |
| 138:304 | CPS | lo | 18629/200000 | 4046876014887/43447045859000 | 3810 | 138:177, 138:218, 138:198, 138:178, 138:285, 138:142, 138:160 |
| 138:306 | PQS | lo | 130767/1000000 | 405819279674483/3103360418500000 | 3827 | 138:177, 138:218, 138:198, 138:178, 138:289, 138:290, 138:230 |
| 138:308 | AHS | lo | 25127/200000 | 203927612263/1623167941000 | 3880 | 138:215, 138:236, 138:218, 138:216, 138:42, 138:272, 138:276 |
| 138:310 | ACF | lo | 340559/1000000 | 340559/1000000 | 3954 | 138:297, 138:22, 138:142 |
| 138:311 | ACH | lo | 316731/1000000 | 316731/1000000 | 3958 | 138:300, 138:22, 138:150 |
| 138:313 | AEQ | lo | 155359/500000 | 155359/500000 | 3977 | 138:34, 138:60, 138:289 |
| 138:314 | AFQ | lo | 75169/200000 | 75169/200000 | 3987 | 138:297, 138:60, 138:290 |
| 138:315 | AHQ | lo | 316731/1000000 | 316731/1000000 | 3993 | 138:300, 138:60, 138:220 |
| 138:316 | AQS | lo | 44091/125000 | 44091/125000 | 3999 | 138:60, 138:302, 138:306 |
| 138:317 | BCS | lo | 304783/1000000 | 304783/1000000 | 4019 | 138:78, 138:120, 138:304 |
| 138:318 | BES | lo | 313781/1000000 | 313781/1000000 | 4034 | 138:90, 138:120, 138:301 |
| 138:320 | BFR | lo | 149241/500000 | 149241/500000 | 4047 | 138:126, 138:283, 138:218 |
| 138:322 | FPR | lo | 28181/100000 | 28181/100000 | 4117 | 138:218, 138:286, 138:234 |
| 138:323 | ABR | lo | 128721/1000000 | 38331841/297788000 | 150 | 138:2, 138:320, 138:4, 138:94, 138:87 |
| 138:324 | AHR | lo | 144033/1000000 | 714749175/4962397508 | 391 | 138:311, 138:48, 138:26, 138:42, 138:19 |
| 138:326 | EFQ | lo | 9227/62500 | 769240200/5210512291 | 514 | 138:280, 138:194, 138:313, 138:176, 138:39 |
| 138:327 | AEF | lo | 37491/200000 | 1217084025/6492671764 | 515 | 138:314, 138:176, 138:48, 138:326, 138:215 |
| 138:331 | CPR | lo | 18701/200000 | 2104118739/22502650000 | 744 | 138:78, 138:322, 138:118, 138:142, 138:101 |
| 138:332 | BFS | lo | 28201/250000 | 37830633/335365000 | 862 | 138:318, 138:218, 138:126, 138:178, 138:199 |
| 138:334 | CEP | lo | 93459/1000000 | 181078629983207/1937500000000000 | 2324 | 138:289, 138:135 |
| 138:337 | FPS | lo | 95857/1000000 | 15447616479/161152403000 | 2675 | 138:3, 138:90, 138:34, 138:8, 138:50, 138:332, 138:178 |
| 138:340 | EPQ | lo | 1249/10000 | 38737900359/310149844250 | 2758 | 138:19, 138:142, 138:297, 138:22, 138:313, 138:134, 138:326 |
| 138:341 | FPQ | lo | 12917/100000 | 18787563609/145447813000 | 2808 | 138:21, 138:150, 138:300, 138:22, 138:314, 138:144, 138:202 |
| 138:346 | EQS | lo | 24869/200000 | 1004772395529/8080504253000 | 3025 | 138:49, 138:218, 138:70, 138:50, 138:313, 138:326, 138:194 |
| 138:349 | BCP | lo | 29661/250000 | 8283789/69820000 | 3138 | 138:69, 138:306, 138:302, 138:60, 138:0, 138:80, 138:317 |
| 138:350 | EPR | lo | 155067/1000000 | 4698794/30301625 | 3201 | 138:75, 138:142, 138:100, 138:349, 138:94, 138:136, 138:176 |
| 138:351 | PQR | lo | 155067/1000000 | 4698794/30301625 | 3215 | 138:75, 138:142, 138:100, 138:349, 138:122, 138:164, 138:214 |
| 138:352 | AFP | lo | 77501/500000 | 18787333/121206500 | 3265 | 138:83, 138:331, 138:118, 138:349, 138:4, 138:310, 138:48 |
| 138:354 | AHP | lo | 65439/500000 | 4263574947/32576650000 | 3310 | 138:85, 138:304, 138:120, 138:349, 138:6, 138:311, 138:308 |
| 138:355 | EPS | lo | 25637/200000 | 11451621877/89336400000 | 3556 | 138:103, 138:341, 138:116, 138:100, 138:318, 138:178, 138:346 |
| 138:356 | APS | lo | 129387/1000000 | 1345996756413/10402856703500 | 3667 | 138:123, 138:351, 138:118, 138:116, 138:14, 138:316, 138:70 |
| 138:357 | ABS | lo | 2651/20000 | 5758913014887/43447045859000 | 3790 | 138:177, 138:218, 138:198, 138:178, 138:2, 138:4, 138:323 |
| 138:360 | CPS | lo | 93171/1000000 | 4048046264887/43447045859000 | 3810 | 138:177, 138:218, 138:198, 138:178, 138:334, 138:142, 138:331 |
| 138:362 | PQS | lo | 65521/500000 | 56934227777891/434470458590000 | 3827 | 138:177, 138:218, 138:198, 138:178, 138:340, 138:341, 138:351 |
| 138:364 | AHS | lo | 125797/1000000 | 204190143513/1623167941000 | 3880 | 138:215, 138:236, 138:218, 138:216, 138:42, 138:315, 138:324 |
| 138:366 | ACF | lo | 170501/500000 | 170501/500000 | 3954 | 138:352, 138:22, 138:142 |
| 138:367 | ACH | lo | 158439/500000 | 158439/500000 | 3958 | 138:354, 138:22, 138:150 |
| 138:368 | ACR | lo | 55901/200000 | 55901/200000 | 3963 | 138:22, 138:62, 138:331 |
| 138:370 | AEQ | lo | 3109/10000 | 3109/10000 | 3977 | 138:34, 138:60, 138:340 |
| 138:371 | AFQ | lo | 94293/250000 | 94293/250000 | 3987 | 138:352, 138:60, 138:341 |
| 138:372 | AHQ | lo | 158439/500000 | 158439/500000 | 3993 | 138:354, 138:60, 138:220 |
| 138:374 | AQS | lo | 353429/1000000 | 353429/1000000 | 3999 | 138:60, 138:356, 138:362 |
| 138:378 | BCS | lo | 60963/200000 | 60963/200000 | 4019 | 138:349, 138:120, 138:360 |
| 138:380 | BER | lo | 341067/1000000 | 341067/1000000 | 4033 | 138:90, 138:118, 138:350 |
| 138:381 | BES | lo | 62837/200000 | 62837/200000 | 4034 | 138:90, 138:120, 138:355 |
| 138:383 | BFR | lo | 74701/250000 | 74701/250000 | 4047 | 138:126, 138:332, 138:218 |
| 138:384 | BQR | lo | 341067/1000000 | 341067/1000000 | 4053 | 138:116, 138:118, 138:351 |
| 138:386 | FPR | lo | 281857/1000000 | 281857/1000000 | 4117 | 138:218, 138:337, 138:234 |
| 138:387 | ABR | lo | 64411/500000 | 38361849/297788000 | 150 | 138:2, 138:383, 138:4, 138:380, 138:87 |
| 138:388 | AHR | lo | 144087/1000000 | 2860073175/19849590032 | 391 | 138:367, 138:48, 138:368, 138:42, 138:19 |
| 138:390 | EFQ | lo | 148097/1000000 | 2314987000/15631536873 | 514 | 138:327, 138:194, 138:370, 138:176, 138:39 |
| 138:391 | AEF | lo | 2939/15625 | 1221250425/6492671764 | 515 | 138:371, 138:176, 138:48, 138:390, 138:215 |
| 138:397 | CPR | lo | 93521/1000000 | 10522410477/112513250000 | 744 | 138:349, 138:386, 138:118, 138:142, 138:101 |
| 138:398 | BFS | lo | 28229/250000 | 7573641/67073000 | 862 | 138:381, 138:218, 138:126, 138:178, 138:199 |
| 138:400 | CEP | lo | 23399/250000 | 3626857532177/38750000000000 | 2324 | 138:340, 138:135 |
| 138:403 | FPS | lo | 95873/1000000 | 15450220479/161152403000 | 2675 | 138:3, 138:90, 138:34, 138:8, 138:50, 138:398, 138:178 |
| 138:406 | EPQ | lo | 7811/62500 | 310091237247/2481198754000 | 2758 | 138:19, 138:142, 138:352, 138:22, 138:370, 138:134, 138:390 |
| 138:407 | FPQ | lo | 6467/50000 | 2687463687/20778259000 | 2808 | 138:21, 138:150, 138:354, 138:22, 138:371, 138:144, 138:202 |
| 138:413 | EQS | lo | 124419/1000000 | 1005374105529/8080504253000 | 3025 | 138:49, 138:218, 138:70, 138:50, 138:370, 138:390, 138:194 |
| 138:416 | BCP | lo | 14831/125000 | 18224931/153604000 | 3138 | 138:69, 138:362, 138:356, 138:60, 138:0, 138:80, 138:378 |
| 138:417 | EPR | lo | 38767/250000 | 18795331/121206500 | 3201 | 138:75, 138:142, 138:100, 138:416, 138:380, 138:136, 138:176 |
| 138:418 | PQR | lo | 38767/250000 | 18795331/121206500 | 3215 | 138:75, 138:142, 138:100, 138:416, 138:384, 138:164, 138:214 |
| 138:419 | AFP | lo | 7753/50000 | 37588647/242413000 | 3265 | 138:83, 138:397, 138:118, 138:416, 138:4, 138:366, 138:48 |
| 138:421 | AHP | lo | 8183/62500 | 5331532591/40720812500 | 3310 | 138:85, 138:360, 138:120, 138:416, 138:6, 138:367, 138:364 |
| 138:422 | EPS | lo | 128293/1000000 | 1146128869/8933640000 | 3556 | 138:103, 138:407, 138:116, 138:100, 138:381, 138:178, 138:413 |
| 138:423 | APS | lo | 129471/1000000 | 2693752256851/20805713407000 | 3667 | 138:123, 138:418, 138:118, 138:116, 138:357, 138:374, 138:70 |
| 138:424 | ABS | lo | 16571/125000 | 5759695764887/43447045859000 | 3790 | 138:177, 138:218, 138:198, 138:178, 138:2, 138:4, 138:387 |
| 138:428 | CPS | lo | 93199/1000000 | 4049232014887/43447045859000 | 3810 | 138:177, 138:218, 138:198, 138:178, 138:400, 138:142, 138:397 |
| 138:430 | PQS | lo | 65561/500000 | 356054500204649/2715440366187500 | 3827 | 138:177, 138:218, 138:198, 138:178, 138:406, 138:407, 138:418 |
| 138:432 | AHS | lo | 125821/1000000 | 204229087263/1623167941000 | 3880 | 138:215, 138:236, 138:218, 138:216, 138:42, 138:372, 138:388 |
| 138:434 | ACF | lo | 17053/50000 | 17053/50000 | 3954 | 138:419, 138:22, 138:142 |
| 138:435 | ACH | lo | 4952/15625 | 4952/15625 | 3958 | 138:421, 138:22, 138:150 |
| 138:436 | ACR | lo | 279521/1000000 | 279521/1000000 | 3963 | 138:22, 138:62, 138:397 |
| 138:438 | AEQ | lo | 4859/15625 | 4859/15625 | 3977 | 138:34, 138:60, 138:406 |
| 138:439 | AFQ | lo | 1887/5000 | 1887/5000 | 3987 | 138:419, 138:60, 138:407 |
| 138:440 | AHQ | lo | 4952/15625 | 4952/15625 | 3993 | 138:421, 138:60, 138:220 |
| 138:442 | AQS | lo | 353593/1000000 | 353593/1000000 | 3999 | 138:60, 138:423, 138:430 |
| 138:446 | BCS | lo | 304847/1000000 | 304847/1000000 | 4019 | 138:416, 138:120, 138:428 |
| 138:448 | BER | lo | 85267/250000 | 85267/250000 | 4033 | 138:90, 138:118, 138:417 |
| 138:449 | BES | lo | 314293/1000000 | 314293/1000000 | 4034 | 138:90, 138:120, 138:422 |
| 138:451 | BFR | lo | 74729/250000 | 74729/250000 | 4047 | 138:126, 138:398, 138:218 |
| 138:452 | BQR | lo | 85267/250000 | 85267/250000 | 4053 | 138:116, 138:118, 138:418 |
| 138:454 | FPR | lo | 281873/1000000 | 281873/1000000 | 4117 | 138:218, 138:403, 138:234 |
| 138:455 | ABR | lo | 128857/1000000 | 4796537/37223500 | 150 | 138:2, 138:451, 138:4, 138:448, 138:87 |
| 138:456 | AHR | lo | 72053/500000 | 2860459125/19849590032 | 391 | 138:435, 138:48, 138:436, 138:42, 138:19 |
| 138:458 | EFQ | lo | 37053/250000 | 6950348800/46894610619 | 514 | 138:391, 138:194, 138:438, 138:176, 138:39 |
| 138:459 | AEF | lo | 188219/1000000 | 305511975/1623167941 | 515 | 138:439, 138:176, 138:48, 138:458, 138:215 |
| 138:465 | CPR | lo | 11691/125000 | 5261583463/56256625000 | 744 | 138:416, 138:454, 138:118, 138:142, 138:101 |
| 138:466 | BFS | lo | 56473/500000 | 37878249/335365000 | 862 | 138:449, 138:218, 138:126, 138:178, 138:199 |
| 138:468 | CEP | lo | 93653/1000000 | 22681652669203/242187500000000 | 2324 | 138:406, 138:135 |
| 138:471 | FPS | lo | 95877/1000000 | 15450917979/161152403000 | 2675 | 138:3, 138:90, 138:34, 138:8, 138:50, 138:466, 138:178 |
| 138:474 | EPQ | lo | 62499/500000 | 155073373311/1240599377000 | 2758 | 138:19, 138:142, 138:419, 138:22, 138:438, 138:134, 138:458 |
| 138:475 | FPQ | lo | 129369/1000000 | 18816486609/145447813000 | 2808 | 138:21, 138:150, 138:421, 138:22, 138:439, 138:144, 138:202 |
| 138:481 | EQS | lo | 124441/1000000 | 1005551735529/8080504253000 | 3025 | 138:49, 138:218, 138:70, 138:50, 138:438, 138:458, 138:194 |
| 138:484 | BCP | lo | 29663/250000 | 91127631/768020000 | 3138 | 138:69, 138:430, 138:423, 138:60, 138:0, 138:80, 138:446 |
| 138:485 | EPR | lo | 155069/1000000 | 37590941/242413000 | 3201 | 138:75, 138:142, 138:100, 138:484, 138:448, 138:136, 138:176 |
| 138:486 | PQR | lo | 155069/1000000 | 37590941/242413000 | 3215 | 138:75, 138:142, 138:100, 138:484, 138:452, 138:164, 138:214 |
| 138:487 | AFP | lo | 38767/250000 | 37590693/242413000 | 3265 | 138:83, 138:465, 138:118, 138:484, 138:4, 138:434, 138:48 |
| 138:489 | AHP | lo | 6547/50000 | 21328037573/162883250000 | 3310 | 138:85, 138:428, 138:120, 138:484, 138:6, 138:435, 138:432 |
| 138:490 | EPS | lo | 64159/500000 | 38211773039/297788000000 | 3556 | 138:103, 138:475, 138:116, 138:100, 138:449, 138:178, 138:481 |
| 138:491 | APS | lo | 129493/1000000 | 2694204326651/20805713407000 | 3667 | 138:123, 138:486, 138:118, 138:116, 138:424, 138:442, 138:70 |
| 138:492 | ABS | lo | 66287/500000 | 5759967014887/43447045859000 | 3790 | 138:177, 138:218, 138:198, 138:178, 138:2, 138:4, 138:455 |
| 138:497 | CPS | lo | 9321/100000 | 4049728014887/43447045859000 | 3810 | 138:177, 138:218, 138:198, 138:178, 138:468, 138:142, 138:465 |
| 138:499 | PQS | lo | 131141/1000000 | 2848859669141641/21723522929500000 | 3827 | 138:177, 138:218, 138:198, 138:178, 138:474, 138:475, 138:486 |
| 138:501 | AHS | lo | 125829/1000000 | 204242456013/1623167941000 | 3880 | 138:215, 138:236, 138:218, 138:216, 138:42, 138:440, 138:456 |
| 138:503 | ACF | lo | 85267/250000 | 85267/250000 | 3954 | 138:487, 138:22, 138:142 |
| 138:504 | ACH | lo | 15847/50000 | 15847/50000 | 3958 | 138:489, 138:22, 138:150 |
| 138:505 | ACR | lo | 34941/125000 | 34941/125000 | 3963 | 138:22, 138:62, 138:465 |
| 138:507 | AEQ | lo | 155499/500000 | 155499/500000 | 3977 | 138:34, 138:60, 138:474 |
| 138:508 | AFQ | lo | 377437/1000000 | 377437/1000000 | 3987 | 138:487, 138:60, 138:475 |
| 138:509 | AHQ | lo | 15847/50000 | 15847/50000 | 3993 | 138:489, 138:60, 138:220 |
| 138:510 | AQR | lo | 341069/1000000 | 341069/1000000 | 3998 | 138:60, 138:62, 138:486 |
| 138:511 | AQS | lo | 176817/500000 | 176817/500000 | 3999 | 138:60, 138:491, 138:499 |
| 138:515 | BCS | lo | 152431/500000 | 152431/500000 | 4019 | 138:484, 138:120, 138:497 |
| 138:517 | BER | lo | 341069/1000000 | 341069/1000000 | 4033 | 138:90, 138:118, 138:485 |
| 138:518 | BES | lo | 157159/500000 | 157159/500000 | 4034 | 138:90, 138:120, 138:490 |
| 138:520 | BFR | lo | 149473/500000 | 149473/500000 | 4047 | 138:126, 138:466, 138:218 |
| 138:521 | BQR | lo | 341069/1000000 | 341069/1000000 | 4053 | 138:116, 138:118, 138:486 |
| 138:523 | FPR | lo | 281877/1000000 | 281877/1000000 | 4117 | 138:218, 138:471, 138:234 |
| 138:524 | ABR | lo | 128867/1000000 | 38375117/297788000 | 150 | 138:2, 138:520, 138:4, 138:517, 138:87 |
| 138:525 | AHR | lo | 144111/1000000 | 715139775/4962397508 | 391 | 138:504, 138:48, 138:505, 138:42, 138:19 |
| 138:527 | EFQ | lo | 148237/1000000 | 6951520600/46894610619 | 514 | 138:459, 138:194, 138:507, 138:176, 138:39 |
| 138:528 | AEF | lo | 188241/1000000 | 611096025/3246335882 | 515 | 138:508, 138:176, 138:48, 138:527, 138:215 |
| 138:530 | HQR | lo | 68881/500000 | 120145677/872120000 | 593 | 138:509, 138:214, 138:510, 138:202, 138:47 |
| 138:534 | CPR | lo | 93531/1000000 | 10523567451/112513250000 | 744 | 138:484, 138:523, 138:118, 138:142, 138:101 |
| 138:536 | BFS | lo | 112953/1000000 | 18940287/167682500 | 862 | 138:518, 138:218, 138:126, 138:178, 138:199 |
| 138:538 | CEP | lo | 93669/1000000 | 181485163253427/1937500000000000 | 2324 | 138:474, 138:135 |
| 138:541 | FPS | lo | 47939/500000 | 15451080729/161152403000 | 2675 | 138:3, 138:90, 138:34, 138:8, 138:50, 138:536, 138:178 |
| 138:544 | EPQ | lo | 31251/250000 | 310160405997/2481198754000 | 2758 | 138:19, 138:142, 138:487, 138:22, 138:507, 138:134, 138:527 |
| 138:545 | FPQ | lo | 64687/500000 | 18817174809/145447813000 | 2808 | 138:21, 138:150, 138:489, 138:22, 138:508, 138:144, 138:202 |
| 138:551 | EQS | lo | 124447/1000000 | 1005595445529/8080504253000 | 3025 | 138:49, 138:218, 138:70, 138:50, 138:507, 138:527, 138:194 |
| 138:554 | BCP | lo | 59327/500000 | 45564513/384010000 | 3138 | 138:69, 138:499, 138:491, 138:60, 138:0, 138:80, 138:515 |
| 138:555 | EPR | lo | 15507/100000 | 4698887/30301625 | 3201 | 138:75, 138:142, 138:100, 138:554, 138:517, 138:136, 138:176 |
| 138:556 | PQR | lo | 15507/100000 | 4698887/30301625 | 3215 | 138:75, 138:142, 138:100, 138:554, 138:521, 138:164, 138:214 |
| 138:557 | AFP | lo | 15507/100000 | 7518213/48482600 | 3265 | 138:83, 138:534, 138:118, 138:554, 138:4, 138:503, 138:48 |
| 138:559 | AHP | lo | 130943/1000000 | 42657140583/325766500000 | 3310 | 138:85, 138:497, 138:120, 138:554, 138:6, 138:504, 138:501 |
| 138:560 | EPS | lo | 32081/250000 | 28660054483/223341000000 | 3556 | 138:103, 138:545, 138:116, 138:100, 138:518, 138:178, 138:551 |
| 138:561 | APS | lo | 129499/1000000 | 2694323901351/20805713407000 | 3667 | 138:123, 138:556, 138:118, 138:116, 138:492, 138:511, 138:70 |
| 138:562 | ABS | lo | 4143/31250 | 5760044514887/43447045859000 | 3790 | 138:177, 138:218, 138:198, 138:178, 138:2, 138:4, 138:524 |
| 138:565 | CPS | lo | 46607/500000 | 4049875264887/43447045859000 | 3810 | 138:177, 138:218, 138:198, 138:178, 138:538, 138:142, 138:534 |
| 138:566 | HQS | lo | 12623/125000 | 4387480764887/43447045859000 | 3826 | 138:177, 138:218, 138:198, 138:178, 138:182, 138:202, 138:530 |
| 138:567 | PQS | lo | 65573/500000 | 1424483380139609/10861761464750000 | 3827 | 138:177, 138:218, 138:198, 138:178, 138:544, 138:545, 138:556 |
| 138:569 | AHS | lo | 125831/1000000 | 204245749763/1623167941000 | 3880 | 138:215, 138:236, 138:218, 138:216, 138:42, 138:509, 138:525 |
| 138:571 | ACF | lo | 34107/100000 | 34107/100000 | 3954 | 138:557, 138:22, 138:142 |
| 138:572 | ACH | lo | 316943/1000000 | 316943/1000000 | 3958 | 138:559, 138:22, 138:150 |
| 138:573 | ACR | lo | 279531/1000000 | 279531/1000000 | 3963 | 138:22, 138:62, 138:534 |
| 138:575 | AEQ | lo | 77751/250000 | 77751/250000 | 3977 | 138:34, 138:60, 138:544 |
| 138:576 | AFQ | lo | 94361/250000 | 94361/250000 | 3987 | 138:557, 138:60, 138:545 |
| 138:577 | AHQ | lo | 316943/1000000 | 316943/1000000 | 3993 | 138:559, 138:60, 138:220 |
| 138:579 | AQS | lo | 70729/200000 | 70729/200000 | 3999 | 138:60, 138:561, 138:567 |
| 138:581 | BCH | lo | 152327/500000 | 152327/500000 | 4013 | 138:108, 138:554, 138:150 |
| 138:582 | BCR | lo | 61037/200000 | 61037/200000 | 4018 | 138:554, 138:118, 138:534 |
| 138:583 | BCS | lo | 76217/250000 | 76217/250000 | 4019 | 138:554, 138:120, 138:565 |
| 138:585 | BER | lo | 34107/100000 | 34107/100000 | 4033 | 138:90, 138:118, 138:555 |
| 138:586 | BES | lo | 78581/250000 | 78581/250000 | 4034 | 138:90, 138:120, 138:560 |
| 138:588 | BFR | lo | 298953/1000000 | 298953/1000000 | 4047 | 138:126, 138:536, 138:218 |
| 138:589 | BQR | lo | 34107/100000 | 34107/100000 | 4053 | 138:116, 138:118, 138:556 |
| 138:591 | FPR | lo | 140939/500000 | 140939/500000 | 4117 | 138:218, 138:541, 138:234 |
| 138:593 | AHR | lo | 144113/1000000 | 357573375/2481198754 | 391 | 138:572, 138:48, 138:573, 138:42, 138:19 |
| 138:595 | EFQ | lo | 74121/500000 | 2317256200/15631536873 | 514 | 138:528, 138:194, 138:575, 138:176, 138:39 |
| 138:596 | AEF | lo | 94123/500000 | 611109975/3246335882 | 515 | 138:576, 138:176, 138:48, 138:595, 138:215 |
| 138:600 | BHR | lo | 20533/125000 | 19909905377/121206500000 | 726 | 138:581, 138:588, 138:582, 138:98, 138:75 |
| 138:602 | CPR | lo | 93533/1000000 | 10523738053/112513250000 | 744 | 138:554, 138:591, 138:118, 138:142, 138:101 |
| 138:605 | CEP | lo | 46837/500000 | 90746937340323/968750000000000 | 2324 | 138:544, 138:135 |
| 138:609 | EPQ | lo | 25001/200000 | 38770450359/310149844250 | 2758 | 138:19, 138:142, 138:557, 138:22, 138:575, 138:134, 138:595 |
| 138:615 | EQS | lo | 3889/31250 | 1005605675529/8080504253000 | 3025 | 138:49, 138:218, 138:70, 138:50, 138:575, 138:595, 138:194 |
| 138:617 | BCP | lo | 23731/200000 | 5695599/48001250 | 3138 | 138:69, 138:567, 138:561, 138:60, 138:0, 138:80, 138:583 |
| 138:619 | AHP | lo | 2046/15625 | 17062966061/130306600000 | 3310 | 138:85, 138:565, 138:120, 138:617, 138:6, 138:572, 138:569 |
| 138:620 | EPS | lo | 5133/40000 | 14330135897/111670500000 | 3556 | 138:103, 138:545, 138:116, 138:100, 138:586, 138:178, 138:615 |
| 138:621 | APS | lo | 259/2000 | 2694357229851/20805713407000 | 3667 | 138:123, 138:556, 138:118, 138:116, 138:562, 138:579, 138:70 |
| 138:623 | BHS | lo | 13889/100000 | 862053037841/6206720837000 | 3802 | 138:177, 138:218, 138:198, 138:178, 138:88, 138:98, 138:600 |
| 138:624 | CPS | lo | 18643/200000 | 4049929514887/43447045859000 | 3810 | 138:177, 138:218, 138:198, 138:178, 138:605, 138:142, 138:602 |
| 138:625 | PQS | lo | 131147/1000000 | 1139592293520859/8689409171800000 | 3827 | 138:177, 138:218, 138:198, 138:178, 138:609, 138:545, 138:556 |
| 138:626 | AHS | lo | 15729/125000 | 204246718513/1623167941000 | 3880 | 138:215, 138:236, 138:218, 138:216, 138:42, 138:577, 138:593 |
| 138:628 | ACH | lo | 19809/62500 | 19809/62500 | 3958 | 138:619, 138:22, 138:150 |
| 138:631 | AEQ | lo | 62201/200000 | 62201/200000 | 3977 | 138:34, 138:60, 138:609 |
| 138:633 | AQS | lo | 353647/1000000 | 353647/1000000 | 3999 | 138:60, 138:621, 138:625 |
| 138:635 | BCH | lo | 60931/200000 | 60931/200000 | 4013 | 138:108, 138:617, 138:150 |
| 138:636 | BCR | lo | 76297/250000 | 76297/250000 | 4018 | 138:617, 138:118, 138:602 |
| 138:638 | BES | lo | 12573/40000 | 12573/40000 | 4034 | 138:90, 138:120, 138:620 |
| 138:641 | AER | lo | 36313/200000 | 17379545500/95720544341 | 514 | 138:596, 138:194, 138:631, 138:176, 138:175 |
| 138:645 | CHR | lo | 77953/500000 | 37793743/242413000 | 727 | 138:635, 138:146, 138:636, 138:140, 138:75 |
| 138:646 | BFS | lo | 22591/200000 | 1515249/13414600 | 862 | 138:638, 138:218, 138:126, 138:178, 138:199 |
| 138:647 | CEP | lo | 3747/40000 | 72598130634073/775000000000000 | 2324 | 138:609, 138:135 |
| 138:651 | AHP | lo | 26189/200000 | 2132876049/16288325000 | 3310 | 138:85, 138:624, 138:120, 138:617, 138:6, 138:628, 138:626 |
| 138:652 | APS | lo | 129501/1000000 | 2694361879851/20805713407000 | 3667 | 138:123, 138:556, 138:118, 138:116, 138:562, 138:633, 138:70 |
| 138:653 | CHS | lo | 104221/1000000 | 4528096764887/43447045859000 | 3809 | 138:177, 138:218, 138:198, 138:178, 138:130, 138:140, 138:645 |
| 138:654 | ACE | lo | 11187/40000 | 11187/40000 | 3949 | 138:34, 138:22, 138:647 |
| 138:655 | ACH | lo | 63389/200000 | 63389/200000 | 3958 | 138:651, 138:22, 138:150 |
| 138:657 | AHQ | lo | 63389/200000 | 63389/200000 | 3993 | 138:651, 138:60, 138:220 |
| 138:658 | AQS | lo | 22103/62500 | 22103/62500 | 3999 | 138:60, 138:652, 138:625 |
| 138:659 | BFR | lo | 59791/200000 | 59791/200000 | 4047 | 138:126, 138:646, 138:218 |

## Stage 139

| Property | Value |
| --- | --- |
| Scope | root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+/ARS+ |
| Packet | forest:root/ACP+/HBP+/AEP-/APQ-/BEP+/BFP-/BPR+/BPS+/BRS+/ARS+ |
| Index | 1 |
| Context | 51 |
| Box present | yes |
| Coarse version | 2 |
| Parent box | 138 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 3197/25000 | 62151/100000 | 3197/25000 | 309957/500000 |
| b | 26659/250000 | 349/1000 | 26659/250000 | 349/1000 |
| c | 135501/250000 | 6671/8000 | 135501/250000 | 6671/8000 |
| e | 416403/1000000 | 343849/500000 | 416403/1000000 | 343849/500000 |
| f | 26659/250000 | 521931/1000000 | 26659/250000 | 521931/1000000 |
| h | 324991/500000 | 1/1 | 324991/500000 | 1/1 |
| p | 305231/1000000 | 556689/1000000 | 305231/1000000 | 556689/1000000 |
| q | 2761/12500 | 261217/500000 | 2761/12500 | 261217/500000 |
| u | 762403/1000000 | 1/1 | 762403/1000000 | 1/1 |
| v | 3197/25000 | 377529/1000000 | 3197/25000 | 376693/1000000 |
| r | 116941/200000 | 1/1 | 116941/200000 | 1/1 |
| w | 145741/200000 | 1/1 | 145741/200000 | 1/1 |
| j | 425347/1000000 | 210161/250000 | 425347/1000000 | 210161/250000 |
| k | 156151/250000 | 8959/10000 | 156151/250000 | 8959/10000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 899 | AREA_lo_ACH | brtt ["earlier-area",{"direction":"lo","ref":"138:655","triangle":"ACH","value":"63389/200000"}] | `1/1 * c * h + -1/1 * a * c + -63389/200000` |
| 912 | AREA_lo_AEQ | brtt ["earlier-area",{"direction":"lo","ref":"138:631","triangle":"AEQ","value":"62201/200000"}] | `-1/1 * v + 1/1 * a + 1/1 * e * u + -1/1 * a * u + -62201/200000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 899 | a | 3197/25000 | 62151/100000 | 3197/25000 | 103386/166775 | 3197/25000 | 309957/500000 | `(-135501/250000, 4418480491/125000000000); (-6671/8000, 900234961/4000000000); (-135501/250000, 225059/1000000); (-6671/8000, 51693/100000)` |
| 1 | 912 | v | 3197/25000 | 377529/1000000 | 3197/25000 | 376693/1000000 | 3197/25000 | 376693/1000000 | `(-1/1, 36845800769/1000000000000); (-1/1, 153751603067/1000000000000); (-1/1, 121840961327/500000000000); (-1/1, 45073465619/125000000000); (-1/1, 52699/500000); (-1/1, 376693/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 139:3 | ABE | hi | 80446327/125000000 | vertex maximum 80446327/125000000 |
| 139:8 | ABP | lo | 93/1000 | occupants none |
| 139:10 | ABQ | lo | 63161/500000 | earlier 138:10; ABQ; lo; 63161/500000 |
| 139:14 | ABS | lo | 4143/31250 | earlier 138:562; ABS; lo; 4143/31250 |
| 139:16 | ACE | lo | 11187/40000 | earlier 138:654; ACE; lo; 11187/40000 |
| 139:18 | ACF | lo | 34107/100000 | earlier 138:571; ACF; lo; 34107/100000 |
| 139:20 | ACH | lo | 63389/200000 | earlier 138:655; ACH; lo; 63389/200000 |
| 139:30 | AEF | lo | 94123/500000 | earlier 138:596; AEF; lo; 94123/500000 |
| 139:34 | AEP | lo | 93/1000 | occupants none |
| 139:36 | AEQ | lo | 62201/200000 | earlier 138:631; AEQ; lo; 62201/200000 |
| 139:38 | AER | lo | 36313/200000 | earlier 138:641; AER; lo; 36313/200000 |
| 139:46 | AFQ | lo | 94361/250000 | earlier 138:576; AFQ; lo; 94361/250000 |
| 139:48 | AFR | lo | 279/1000 | occupants S |
| 139:51 | AFS | hi | 622051/1000000 | earlier 138:238; AFS; hi; 622051/1000000 |
| 139:52 | AHP | lo | 26189/200000 | earlier 138:651; AHP; lo; 26189/200000 |
| 139:54 | AHQ | lo | 63389/200000 | earlier 138:657; AHQ; lo; 63389/200000 |
| 139:58 | AHS | lo | 15729/125000 | earlier 138:626; AHS; lo; 15729/125000 |
| 139:68 | AQS | lo | 22103/62500 | earlier 138:658; AQS; lo; 22103/62500 |
| 139:76 | BCH | lo | 60931/200000 | earlier 138:635; BCH; lo; 60931/200000 |
| 139:78 | BCP | lo | 23731/200000 | earlier 138:617; BCP; lo; 23731/200000 |
| 139:85 | BCS | hi | 651533/1000000 | earlier 138:85; BCS; hi; 651533/1000000 |
| 139:90 | BEP | lo | 93/1000 | occupants none |
| 139:94 | BER | lo | 34107/100000 | earlier 138:585; BER; lo; 34107/100000 |
| 139:96 | BES | lo | 12573/40000 | earlier 138:638; BES; lo; 12573/40000 |
| 139:101 | BFP | hi | 450053/1000000 | vertex maximum 450053/1000000 |
| 139:104 | BFR | lo | 59791/200000 | earlier 138:659; BFR; lo; 59791/200000 |
| 139:114 | BHS | lo | 13889/100000 | earlier 138:623; BHS; lo; 13889/100000 |
| 139:118 | BPR | lo | 93/1000 | occupants none |
| 139:122 | BQR | lo | 34107/100000 | earlier 138:589; BQR; lo; 34107/100000 |
| 139:142 | CFP | lo | 93/1000 | occupants none |
| 139:156 | CHS | lo | 104221/1000000 | earlier 138:653; CHS; lo; 104221/1000000 |
| 139:176 | EFR | lo | 279/1000 | occupants S |
| 139:186 | EHS | lo | 93/1000 | occupants none |
| 139:190 | EPR | lo | 15507/100000 | earlier 138:555; EPR; lo; 15507/100000 |
| 139:196 | EQS | lo | 3889/31250 | earlier 138:615; EQS; lo; 3889/31250 |
| 139:199 | ERS | hi | 67073/200000 | earlier 138:199; ERS; hi; 67073/200000 |
| 139:208 | FPQ | lo | 64687/500000 | earlier 138:545; FPQ; lo; 64687/500000 |
| 139:213 | FPS | hi | 255019/500000 | earlier 138:213; FPS; hi; 255019/500000 |
| 139:219 | FRS | hi | 67073/200000 | earlier 138:219; FRS; hi; 67073/200000 |
| 139:223 | HPR | hi | 769203/1000000 | earlier 138:223; HPR; hi; 769203/1000000 |
| 139:228 | HQS | lo | 12623/125000 | earlier 138:566; HQS; lo; 12623/125000 |
| 139:231 | PQR | hi | 141727/250000 | earlier 138:231; PQR; hi; 141727/250000 |
| 139:237 | QRS | hi | 15143/31250 | earlier 138:237; QRS; hi; 15143/31250 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 744 | plu | BFP * CPR = BCP * FPR + BPR * CFP | circuit PBCFR |
| 2674 | bary | outer ABE; fans BEP, AEP, ABP; target FPR; sign -1; vertices AFR -1; BFR -1; EFR -1 | container ABE; inner P; line FR |
| 2679 | bary | outer ABE; fans BEP, AEP, ABP; target HPS; sign -1; vertices AHS -1; BHS -1; EHS -1 | container ABE; inner P; line HS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 139:239 | FPR | lo | 281883/1000000 | 436086579/1547044750 | 2674 | 139:3, 139:90, 139:34, 139:8, 139:48, 139:104, 139:176 |
| 139:242 | HPS | lo | 167/1600 | 8396651661/80446327000 | 2679 | 139:3, 139:90, 139:34, 139:8, 139:58, 139:114, 139:186 |
| 139:243 | CPR | lo | 18707/200000 | 8419165473/90010600000 | 744 | 139:78, 139:239, 139:118, 139:142, 139:101 |
