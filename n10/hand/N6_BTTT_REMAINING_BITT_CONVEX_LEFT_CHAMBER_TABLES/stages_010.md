# BITT convex: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 50

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR+ |
| Packet | forest:root/AFQ+/BPS-/HQR+ |
| Index | 3 |
| Context | 15 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 49 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 220537/1000000 | 158493/200000 | 220537/1000000 | 158493/200000 |
| q | 22907/200000 | 418/625 | 22907/200000 | 133759/200000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 493737/1000000 | 841007/1000000 | 493737/1000000 | 841007/1000000 |
| r | 710039/1000000 | 1/1 | 710039/1000000 | 1/1 |
| w | 482991/1000000 | 104293/125000 | 482997/1000000 | 104293/125000 |
| j | 13857/20000 | 13636/15625 | 13857/20000 | 13636/15625 |
| k | 274587/500000 | 1/1 | 68649/125000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 951 | AREA_lo_EHR | bitt ["earlier-area",{"direction":"lo","ref":"49:393","triangle":"EHR","value":"37923/100000"}] | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -37923/100000` |
| 981 | AREA_lo_HPS | bitt ["earlier-area",{"direction":"lo","ref":"49:375","triangle":"HPS","value":"72261/250000"}] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -72261/250000` |
| 993 | AREA_lo_QRS | bitt ["earlier-area",{"direction":"lo","ref":"49:312","triangle":"QRS","value":"1537/15625"}] | `1/1 * r * k + -1/1 * v * r + -1/1 * u * k + -1/1 * w * j + 1/1 * u * w + 1/1 * v * j + -1537/15625` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 951 | w | 482991/1000000 | 104293/125000 | 482997/1000000 | 104293/125000 | 482997/1000000 | 104293/125000 | `(1/1, -31065129889/50000000000); (1/1, -825249229867/1000000000000); (1/1, -742869616913/1000000000000); (1/1, -946816249/1000000000); (1/1, -482997/1000000); (1/1, -77023/100000)` |
| 1 | 981 | q | 22907/200000 | 418/625 | 22907/200000 | 20845/31168 | 22907/200000 | 133759/200000 | `(-13857/20000, 106363544249/1000000000000); (-13857/20000, 152191093219/500000000000); (-13857/20000, 17661212301/200000000000); (-13857/20000, 4654217391/100000000000); (-13636/15625, 210813215187/1000000000000); (-13636/15625, 242118093219/500000000000); (-13636/15625, 192755732443/1000000000000); (-13636/15625, 22639617391/100000000000); (-13857/20000, 205787357811/1000000000000); (-13857/20000, 201903/500000); (-13857/20000, 89113977519/200000000000); (-13636/15625, 310237028749/1000000000000); (-13636/15625, 29183/50000); (-13636/15625, 550019558533/1000000000000)` |
| 2 | 993 | k | 274587/500000 | 1/1 | 166479930267/303136000000 | 1/1 | 68649/125000 | 1/1 | `(9473/15625, -97845041761/250000000000); (83161/250000, -32402332991/125000000000); (9473/15625, -198674695537/500000000000); (83161/250000, -132593943979/500000000000); (896233/1000000, -534544641301/1000000000000); (124521/200000, -80476627637/200000000000); (896233/1000000, -641208621801/1000000000000); (124521/200000, -101809423737/200000000000); (9473/15625, -119670542369/200000000000); (83161/250000, -370052831813/1000000000000); (9473/15625, -4834575487/8000000000); (83161/250000, -376022055843/1000000000000); (896233/1000000, -370758593051/500000000000); (124521/200000, -51321730607/100000000000); (896233/1000000, -424090583301/500000000000); (124521/200000, -61988128657/100000000000); (9473/15625, -97362133771/250000000000); (83161/250000, -8040219749/31250000000); (9473/15625, -166479930267/500000000000); (83161/250000, -100399178709/500000000000); (896233/1000000, -532613009341/1000000000000); (124521/200000, -16018060249/40000000000); (896233/1000000, -576819091261/1000000000000); (124521/200000, -88931517629/200000000000); (9473/15625, -659612243223/1000000000000); (83161/250000, -431312363191/1000000000000); (9473/15625, -603123568673/1000000000000); (83161/250000, -374823688641/1000000000000); (896233/1000000, -20069417937/25000000000); (124521/200000, -71809604681/125000000000); (896233/1000000, -4234913997/5000000000); (124521/200000, -77335364921/125000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 50:5 | ABF | hi | 554789/1000000 | earlier 49:5; ABF; hi; 554789/1000000 |
| 50:6 | ABH | lo | 93/1000 | occupants none |
| 50:8 | ABP | lo | 93/1000 | occupants none |
| 50:22 | ACP | lo | 93/1000 | occupants none |
| 50:24 | ACQ | lo | 61137/200000 | earlier 49:24; ACQ; lo; 61137/200000 |
| 50:40 | AFH | lo | 279/1000 | occupants Q |
| 50:41 | AFH | hi | 52423356869/100000000000 | vertex maximum 52423356869/100000000000 |
| 50:44 | AFQ | lo | 93/1000 | occupants none |
| 50:52 | AHQ | lo | 93/1000 | occupants none |
| 50:56 | AHS | lo | 172631/500000 | earlier 49:56; AHS; lo; 172631/500000 |
| 50:58 | APQ | lo | 115069/1000000 | earlier 49:58; APQ; lo; 115069/1000000 |
| 50:61 | AQR | hi | 32811/50000 | earlier 49:61; AQR; hi; 32811/50000 |
| 50:66 | BCE | lo | 93/1000 | occupants none |
| 50:71 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 50:72 | BCP | lo | 93/1000 | occupants none |
| 50:76 | BCR | lo | 109731/1000000 | earlier 49:339; BCR; lo; 109731/1000000 |
| 50:80 | BEF | lo | 323347/1000000 | earlier 49:364; BEF; lo; 323347/1000000 |
| 50:84 | BEP | lo | 93/1000 | occupants none |
| 50:88 | BER | lo | 116509/1000000 | earlier 49:378; BER; lo; 116509/1000000 |
| 50:89 | BER | hi | 85606949941/125000000000 | vertex maximum 85606949941/125000000000 |
| 50:90 | BES | lo | 121943/1000000 | earlier 49:346; BES; lo; 121943/1000000 |
| 50:92 | BFH | lo | 316111/1000000 | earlier 49:322; BFH; lo; 316111/1000000 |
| 50:93 | BFH | hi | 58493/100000 | vertex maximum 58493/100000 |
| 50:94 | BFP | lo | 93/1000 | occupants none |
| 50:100 | BFS | lo | 89123/250000 | earlier 49:367; BFS; lo; 89123/250000 |
| 50:101 | BFS | hi | 16374010957/25000000000 | vertex maximum 16374010957/25000000000 |
| 50:104 | BHQ | lo | 130111/1000000 | earlier 49:294; BHQ; lo; 130111/1000000 |
| 50:105 | BHQ | hi | 360897/1000000 | earlier 49:105; BHQ; hi; 360897/1000000 |
| 50:107 | BHR | hi | 122851296731/125000000000 | vertex maximum 122851296731/125000000000 |
| 50:108 | BHS | lo | 13857/20000 | occupants P, Q |
| 50:109 | BHS | hi | 13636/15625 | vertex maximum 13636/15625 |
| 50:112 | BPR | lo | 93/1000 | occupants none |
| 50:114 | BPS | lo | 93/1000 | occupants none |
| 50:128 | CEQ | lo | 18819/200000 | earlier 49:316; CEQ; lo; 18819/200000 |
| 50:129 | CEQ | hi | 265521/500000 | earlier 49:129; CEQ; hi; 265521/500000 |
| 50:130 | CER | lo | 93/1000 | occupants none |
| 50:144 | CHP | lo | 93/1000 | occupants none |
| 50:146 | CHQ | lo | 93/1000 | occupants none |
| 50:148 | CHR | lo | 378133/1000000 | earlier 49:390; CHR; lo; 378133/1000000 |
| 50:152 | CPQ | lo | 6101/62500 | earlier 49:152; CPQ; lo; 6101/62500 |
| 50:159 | CQR | hi | 666641/1000000 | earlier 49:159; CQR; hi; 666641/1000000 |
| 50:161 | CQS | hi | 5333/8000 | earlier 49:161; CQS; hi; 5333/8000 |
| 50:162 | CRS | lo | 93/1000 | occupants none |
| 50:164 | EFH | lo | 36253/125000 | earlier 49:328; EFH; lo; 36253/125000 |
| 50:165 | EFH | hi | 3491264557/5000000000 | vertex maximum 3491264557/5000000000 |
| 50:174 | EHP | lo | 93/1000 | occupants none |
| 50:176 | EHQ | lo | 93/1000 | occupants none |
| 50:178 | EHR | lo | 37923/100000 | earlier 49:393; EHR; lo; 37923/100000 |
| 50:182 | EPQ | lo | 57881/500000 | earlier 49:306; EPQ; lo; 57881/500000 |
| 50:189 | EQR | hi | 544577/1000000 | earlier 49:189; EQR; hi; 544577/1000000 |
| 50:191 | EQS | hi | 610961/1000000 | earlier 49:191; EQS; hi; 610961/1000000 |
| 50:192 | ERS | lo | 93/1000 | occupants none |
| 50:196 | FHQ | lo | 93/1000 | occupants none |
| 50:200 | FHS | lo | 93/1000 | occupants none |
| 50:201 | FHS | hi | 248858189/1000000000 | octagon ["octagon-ear-cap","ABCERSFH","SFH",["FHA","Q"],"248858189/1000000000"] |
| 50:206 | FPS | lo | 42623/250000 | earlier 49:351; FPS; lo; 42623/250000 |
| 50:212 | FRS | lo | 93/1000 | occupants none |
| 50:214 | HPQ | lo | 93/1000 | occupants none |
| 50:220 | HQR | lo | 93/1000 | occupants none |
| 50:222 | HQS | lo | 93/1000 | occupants none |
| 50:224 | HRS | lo | 1773/15625 | earlier 49:299; HRS; lo; 1773/15625 |
| 50:226 | PQR | lo | 25761/250000 | earlier 49:343; PQR; lo; 25761/250000 |
| 50:228 | PQS | lo | 25761/250000 | earlier 49:344; PQS; lo; 25761/250000 |
| 50:232 | QRS | lo | 1537/15625 | earlier 49:312; QRS; lo; 1537/15625 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 542 | plu | BER * CEH = BCE * EHR + BEH * CER | circuit EBCHR |
| 753 | plu | BHQ * EQS = BEQ * HQS + BQS * EHQ | circuit QBEHS |
| 790 | plu | BFS * BHP = BFH * BPS + BFP * BHS | circuit BFHPS |
| 833 | plu | BHQ * PQR = BPQ * HQR + BQR * HPQ | circuit QBHPR |
| 838 | plu | BHQ * PQS = BPQ * HQS + BQS * HPQ | circuit QBHPS |
| 2362 | support | EHR * EFH >= 1023/1000 * (EHR - EFR) | pentagon ERSFH |
| 2399 | support | HPR * FHP >= 1023/1000 * (HPR - FPR) | pentagon PRSFH |
| 2542 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BPQ; sign 1; vertices ABP 1; BFP 1; BHP 1 | container AFH; inner Q; line BP |
| 2719 | bary | outer BCH; fans CHP, BHP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EHQ 1 | container BCH; inner P; line EQ |
| 2991 | bary | outer BFS; fans FPS, BPS, BFP; target AHP; sign -1; vertices ABH -1; AFH -1; AHS -1 | container BFS; inner P; line AH |
| 3014 | bary | outer BFS; fans FPS, BPS, BFP; target FHP; sign 1; vertices BFH 1; none 0; FHS 1 | container BFS; inner P; line FH |
| 3022 | bary | outer BFS; fans FPS, BPS, BFP; target HPS; sign -1; vertices BHS -1; FHS 1; none 0 | container BFS; inner P; line HS |
| 3059 | bary | outer BHR; fans HPR, BPR, BHP; target FPS; sign -1; vertices BFS -1; FHS -1; FRS -1 | container BHR; inner P; line FS |
| 3176 | bary | outer BHS; fans HQS, BQS, BHQ; target CQR; sign 1; vertices BCR 1; CHR 1; CRS 1 | container BHS; inner Q; line CR |
| 3182 | bary | outer BHS; fans HQS, BQS, BHQ; target EQR; sign 1; vertices BER 1; EHR 1; ERS 1 | container BHS; inner Q; line ER |
| 3705 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 3747 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3751 | four | 1 * BCP + 1 * BPQ + -1 * BCQ + 1 * CPQ = 0 | vertices BCPQ |
| 3762 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 3766 | four | 1 * BEP + 1 * BPQ + -1 * BEQ + 1 * EPQ = 0 | vertices BEPQ |
| 3778 | four | -1 * BFP + -1 * BPS + 1 * BFS + -1 * FPS = 0 | vertices BFPS |
| 3788 | four | 1 * BPQ + -1 * BQR + 1 * BPR + 1 * PQR = 0 | vertices BPQR |
| 3789 | four | 1 * BPQ + -1 * BQS + 1 * BPS + 1 * PQS = 0 | vertices BPQS |
| 3820 | four | -1 * CHQ + -1 * CQR + 1 * CHR + -1 * HQR = 0 | vertices CHQR |
| 3840 | four | -1 * EHQ + -1 * EQR + 1 * EHR + -1 * HQR = 0 | vertices EHQR |
| 3841 | four | -1 * EHQ + -1 * EQS + 1 * EHS + -1 * HQS = 0 | vertices EHQS |
| 3857 | four | 1 * HPQ + 1 * HQR + -1 * HPR + 1 * PQR = 0 | vertices HPQR |
| 3858 | four | 1 * HPQ + 1 * HQS + -1 * HPS + 1 * PQS = 0 | vertices HPQS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 50:236 | BHP | lo | 28653/200000 | 2345834325/16374010957 | 790 | 50:92, 50:114, 50:94, 50:108, 50:101 |
| 50:237 | BPQ | lo | 101917/1000000 | 5342836688817/52423356869000 | 2542 | 50:41, 50:196, 50:52, 50:44, 50:8, 50:94, 50:236 |
| 50:243 | AHP | lo | 15523/100000 | 2541742169001/16374010957000 | 2991 | 50:101, 50:206, 50:114, 50:94, 50:6, 50:40, 50:56 |
| 50:246 | FHP | hi | 227077/500000 | 743632101850301/1637401095700000 | 3014 | 50:101, 50:206, 50:114, 50:94, 50:93, 50:201 |
| 50:250 | HPS | hi | 611663/1000000 | 156490097784652/255843921203125 | 3022 | 50:101, 50:206, 50:114, 50:94, 50:109, 50:200 |
| 50:272 | ACH | lo | 34123/100000 | 34123/100000 | 3705 | 50:243, 50:22, 50:144 |
| 50:273 | BCH | lo | 65853/200000 | 65853/200000 | 3747 | 50:236, 50:72, 50:144 |
| 50:274 | BCQ | lo | 292533/1000000 | 292533/1000000 | 3751 | 50:72, 50:237, 50:152 |
| 50:275 | BEH | lo | 65853/200000 | 65853/200000 | 3762 | 50:236, 50:84, 50:174 |
| 50:276 | BEQ | lo | 310679/1000000 | 310679/1000000 | 3766 | 50:84, 50:237, 50:182 |
| 50:277 | BQR | lo | 297961/1000000 | 297961/1000000 | 3788 | 50:237, 50:112, 50:226 |
| 50:278 | BQS | lo | 297961/1000000 | 297961/1000000 | 3789 | 50:237, 50:114, 50:228 |
| 50:280 | CEH | lo | 9621/100000 | 8236254375/85606949941 | 542 | 50:66, 50:178, 50:275, 50:130, 50:89 |
| 50:283 | EQS | lo | 156841/1000000 | 471696/3007475 | 753 | 50:276, 50:222, 50:278, 50:176, 50:105 |
| 50:284 | PQR | lo | 20609/200000 | 6198109/60149500 | 833 | 50:237, 50:220, 50:277, 50:214, 50:105 |
| 50:285 | PQS | lo | 20609/200000 | 6198109/60149500 | 838 | 50:237, 50:222, 50:278, 50:214, 50:105 |
| 50:287 | EPQ | lo | 115763/1000000 | 4150027647/35849320000 | 2719 | 50:71, 50:144, 50:236, 50:72, 50:276, 50:128, 50:176 |
| 50:292 | BEQ | lo | 7767/25000 | 7767/25000 | 3766 | 50:84, 50:237, 50:287 |
| 50:294 | BQS | lo | 148981/500000 | 148981/500000 | 3789 | 50:237, 50:114, 50:285 |
| 50:296 | EHS | lo | 342841/1000000 | 342841/1000000 | 3841 | 50:176, 50:283, 50:222 |
| 50:297 | HPR | lo | 57809/200000 | 57809/200000 | 3857 | 50:214, 50:220, 50:284 |
| 50:298 | HPS | lo | 57809/200000 | 57809/200000 | 3858 | 50:214, 50:222, 50:285 |
| 50:302 | FPR | lo | 6429/40000 | 16442209207/102300000000 | 2399 | 50:297, 50:246 |
| 50:303 | FPS | lo | 170493/1000000 | 20945301238483/122851296731000 | 3059 | 50:107, 50:297, 50:112, 50:236, 50:100, 50:200, 50:212 |
| 50:305 | CQR | lo | 96067/500000 | 83838126973/436352000000 | 3176 | 50:109, 50:222, 50:294, 50:104, 50:76, 50:148, 50:162 |
| 50:306 | EQR | lo | 193231/1000000 | 8431673613/43635200000 | 3182 | 50:109, 50:222, 50:294, 50:104, 50:88, 50:178, 50:192 |
| 50:310 | BFS | lo | 356493/1000000 | 356493/1000000 | 3778 | 50:94, 50:114, 50:303 |
| 50:311 | CHR | lo | 189067/500000 | 189067/500000 | 3820 | 50:146, 50:305, 50:220 |
| 50:312 | EHR | lo | 379231/1000000 | 379231/1000000 | 3840 | 50:176, 50:306, 50:220 |
| 50:314 | EFR | lo | 24077/200000 | 55979165071303/465000000000000 | 2362 | 50:312, 50:165 |

## Stage 51

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR+ |
| Packet | forest:root/AFQ+/BPS-/HQR+ |
| Index | 4 |
| Context | 15 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 50 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 220537/1000000 | 158493/200000 | 220537/1000000 | 158493/200000 |
| q | 22907/200000 | 133759/200000 | 22907/200000 | 334397/500000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 493737/1000000 | 841007/1000000 | 493737/1000000 | 841007/1000000 |
| r | 710039/1000000 | 1/1 | 710039/1000000 | 1/1 |
| w | 482997/1000000 | 104293/125000 | 241499/500000 | 104293/125000 |
| j | 13857/20000 | 13636/15625 | 13857/20000 | 13636/15625 |
| k | 68649/125000 | 1/1 | 549193/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 951 | AREA_lo_EHR | bitt ["earlier-area",{"direction":"lo","ref":"50:312","triangle":"EHR","value":"379231/1000000"}] | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -379231/1000000` |
| 981 | AREA_lo_HPS | bitt ["earlier-area",{"direction":"lo","ref":"50:298","triangle":"HPS","value":"57809/200000"}] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -57809/200000` |
| 993 | AREA_lo_QRS | bitt ["earlier-area",{"direction":"lo","ref":"50:232","triangle":"QRS","value":"1537/15625"}] | `1/1 * r * k + -1/1 * v * r + -1/1 * u * k + -1/1 * w * j + 1/1 * u * w + 1/1 * v * j + -1537/15625` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 951 | w | 482997/1000000 | 104293/125000 | 241499/500000 | 104293/125000 | 241499/500000 | 104293/125000 | `(1/1, -31065179889/50000000000); (1/1, -825250229867/1000000000000); (1/1, -742870616913/1000000000000); (1/1, -946817249/1000000000); (1/1, -241499/500000); (1/1, -770231/1000000)` |
| 1 | 981 | q | 22907/200000 | 133759/200000 | 22907/200000 | 583659/872704 | 22907/200000 | 334397/500000 | `(-13857/20000, 21273302783/200000000000); (-13857/20000, 38048144513/125000000000); (-13857/20000, 706554607/8000000000); (-13857/20000, 1163885957/25000000000); (-13636/15625, 210816184853/1000000000000); (-13636/15625, 60529894513/125000000000); (-13636/15625, 192768996813/1000000000000); (-13636/15625, 5660235957/25000000000); (-13857/20000, 205786357811/1000000000000); (-13857/20000, 80761/200000); (-13857/20000, 89113777519/200000000000); (-13636/15625, 310236028749/1000000000000); (-13636/15625, 583659/1000000); (-13636/15625, 550018558533/1000000000000)` |
| 2 | 993 | k | 68649/125000 | 1/1 | 332960629471/606272000000 | 1/1 | 549193/1000000 | 1/1 | `(9473/15625, -391380756127/1000000000000); (83161/250000, -259218979383/1000000000000); (9473/15625, -397349980157/1000000000000); (83161/250000, -265188203413/1000000000000); (896233/1000000, -33409076899/62500000000); (124521/200000, -10059586341/25000000000); (896233/1000000, -160302302721/250000000000); (124521/200000, -25452371707/50000000000); (9473/15625, -119670542369/200000000000); (83161/250000, -370052831813/1000000000000); (9473/15625, -4834575487/8000000000); (83161/250000, -376022055843/1000000000000); (896233/1000000, -370758593051/500000000000); (124521/200000, -51321730607/100000000000); (896233/1000000, -424090583301/500000000000); (124521/200000, -61988128657/100000000000); (9473/15625, -389449304021/1000000000000); (83161/250000, -257287527277/1000000000000); (9473/15625, -332960629471/1000000000000); (83161/250000, -200798852727/1000000000000); (896233/1000000, -266306889139/500000000000); (124521/200000, -200226000767/500000000000); (896233/1000000, -288409930099/500000000000); (124521/200000, -222329041727/500000000000); (9473/15625, -659612243223/1000000000000); (83161/250000, -431312363191/1000000000000); (9473/15625, -603123568673/1000000000000); (83161/250000, -374823688641/1000000000000); (896233/1000000, -20069417937/25000000000); (124521/200000, -71809604681/125000000000); (896233/1000000, -4234913997/5000000000); (124521/200000, -77335364921/125000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 51:5 | ABF | hi | 554789/1000000 | earlier 50:5; ABF; hi; 554789/1000000 |
| 51:20 | ACH | lo | 34123/100000 | earlier 50:272; ACH; lo; 34123/100000 |
| 51:24 | ACQ | lo | 61137/200000 | earlier 50:24; ACQ; lo; 61137/200000 |
| 51:50 | AHP | lo | 15523/100000 | earlier 50:243; AHP; lo; 15523/100000 |
| 51:56 | AHS | lo | 172631/500000 | earlier 50:56; AHS; lo; 172631/500000 |
| 51:58 | APQ | lo | 115069/1000000 | earlier 50:58; APQ; lo; 115069/1000000 |
| 51:61 | AQR | hi | 32811/50000 | earlier 50:61; AQR; hi; 32811/50000 |
| 51:70 | BCH | lo | 65853/200000 | earlier 50:273; BCH; lo; 65853/200000 |
| 51:74 | BCQ | lo | 292533/1000000 | earlier 50:274; BCQ; lo; 292533/1000000 |
| 51:76 | BCR | lo | 109731/1000000 | earlier 50:76; BCR; lo; 109731/1000000 |
| 51:80 | BEF | lo | 323347/1000000 | earlier 50:80; BEF; lo; 323347/1000000 |
| 51:82 | BEH | lo | 65853/200000 | earlier 50:275; BEH; lo; 65853/200000 |
| 51:86 | BEQ | lo | 7767/25000 | earlier 50:292; BEQ; lo; 7767/25000 |
| 51:88 | BER | lo | 116509/1000000 | earlier 50:88; BER; lo; 116509/1000000 |
| 51:90 | BES | lo | 121943/1000000 | earlier 50:90; BES; lo; 121943/1000000 |
| 51:92 | BFH | lo | 316111/1000000 | earlier 50:92; BFH; lo; 316111/1000000 |
| 51:100 | BFS | lo | 356493/1000000 | earlier 50:310; BFS; lo; 356493/1000000 |
| 51:102 | BHP | lo | 28653/200000 | earlier 50:236; BHP; lo; 28653/200000 |
| 51:104 | BHQ | lo | 130111/1000000 | earlier 50:104; BHQ; lo; 130111/1000000 |
| 51:105 | BHQ | hi | 360897/1000000 | earlier 50:105; BHQ; hi; 360897/1000000 |
| 51:110 | BPQ | lo | 101917/1000000 | earlier 50:237; BPQ; lo; 101917/1000000 |
| 51:118 | BQS | lo | 148981/500000 | earlier 50:294; BQS; lo; 148981/500000 |
| 51:124 | CEH | lo | 9621/100000 | earlier 50:280; CEH; lo; 9621/100000 |
| 51:128 | CEQ | lo | 18819/200000 | earlier 50:128; CEQ; lo; 18819/200000 |
| 51:129 | CEQ | hi | 265521/500000 | earlier 50:129; CEQ; hi; 265521/500000 |
| 51:148 | CHR | lo | 189067/500000 | earlier 50:311; CHR; lo; 189067/500000 |
| 51:159 | CQR | hi | 666641/1000000 | earlier 50:159; CQR; hi; 666641/1000000 |
| 51:161 | CQS | hi | 5333/8000 | earlier 50:161; CQS; hi; 5333/8000 |
| 51:164 | EFH | lo | 36253/125000 | earlier 50:164; EFH; lo; 36253/125000 |
| 51:170 | EFR | lo | 24077/200000 | earlier 50:314; EFR; lo; 24077/200000 |
| 51:178 | EHR | lo | 379231/1000000 | earlier 50:312; EHR; lo; 379231/1000000 |
| 51:180 | EHS | lo | 342841/1000000 | earlier 50:296; EHS; lo; 342841/1000000 |
| 51:182 | EPQ | lo | 115763/1000000 | earlier 50:287; EPQ; lo; 115763/1000000 |
| 51:189 | EQR | hi | 544577/1000000 | earlier 50:189; EQR; hi; 544577/1000000 |
| 51:191 | EQS | hi | 610961/1000000 | earlier 50:191; EQS; hi; 610961/1000000 |
| 51:195 | FHP | hi | 227077/500000 | earlier 50:246; FHP; hi; 227077/500000 |
| 51:204 | FPR | lo | 6429/40000 | earlier 50:302; FPR; lo; 6429/40000 |
| 51:206 | FPS | lo | 170493/1000000 | earlier 50:303; FPS; lo; 170493/1000000 |
| 51:216 | HPR | lo | 57809/200000 | earlier 50:297; HPR; lo; 57809/200000 |
| 51:218 | HPS | lo | 57809/200000 | earlier 50:298; HPS; lo; 57809/200000 |
| 51:219 | HPS | hi | 611663/1000000 | earlier 50:250; HPS; hi; 611663/1000000 |
| 51:224 | HRS | lo | 1773/15625 | earlier 50:224; HRS; lo; 1773/15625 |
| 51:226 | PQR | lo | 20609/200000 | earlier 50:284; PQR; lo; 20609/200000 |
| 51:232 | QRS | lo | 1537/15625 | earlier 50:232; QRS; lo; 1537/15625 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 52

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR+ |
| Packet | forest:root/AFQ+/BPS-/HQR+ |
| Index | 5 |
| Context | 15 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 51 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 220537/1000000 | 158493/200000 | 220537/1000000 | 158493/200000 |
| q | 22907/200000 | 334397/500000 | 22907/200000 | 334397/500000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 493737/1000000 | 841007/1000000 | 493737/1000000 | 841007/1000000 |
| r | 710039/1000000 | 1/1 | 710039/1000000 | 1/1 |
| w | 241499/500000 | 104293/125000 | 241499/500000 | 104293/125000 |
| j | 13857/20000 | 13636/15625 | 13857/20000 | 13636/15625 |
| k | 549193/1000000 | 1/1 | 549193/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 52:5 | ABF | hi | 554789/1000000 | earlier 51:5; ABF; hi; 554789/1000000 |
| 52:20 | ACH | lo | 34123/100000 | earlier 51:20; ACH; lo; 34123/100000 |
| 52:24 | ACQ | lo | 61137/200000 | earlier 51:24; ACQ; lo; 61137/200000 |
| 52:50 | AHP | lo | 15523/100000 | earlier 51:50; AHP; lo; 15523/100000 |
| 52:56 | AHS | lo | 172631/500000 | earlier 51:56; AHS; lo; 172631/500000 |
| 52:58 | APQ | lo | 115069/1000000 | earlier 51:58; APQ; lo; 115069/1000000 |
| 52:61 | AQR | hi | 32811/50000 | earlier 51:61; AQR; hi; 32811/50000 |
| 52:70 | BCH | lo | 65853/200000 | earlier 51:70; BCH; lo; 65853/200000 |
| 52:74 | BCQ | lo | 292533/1000000 | earlier 51:74; BCQ; lo; 292533/1000000 |
| 52:76 | BCR | lo | 109731/1000000 | earlier 51:76; BCR; lo; 109731/1000000 |
| 52:80 | BEF | lo | 323347/1000000 | earlier 51:80; BEF; lo; 323347/1000000 |
| 52:82 | BEH | lo | 65853/200000 | earlier 51:82; BEH; lo; 65853/200000 |
| 52:86 | BEQ | lo | 7767/25000 | earlier 51:86; BEQ; lo; 7767/25000 |
| 52:88 | BER | lo | 116509/1000000 | earlier 51:88; BER; lo; 116509/1000000 |
| 52:90 | BES | lo | 121943/1000000 | earlier 51:90; BES; lo; 121943/1000000 |
| 52:92 | BFH | lo | 316111/1000000 | earlier 51:92; BFH; lo; 316111/1000000 |
| 52:100 | BFS | lo | 356493/1000000 | earlier 51:100; BFS; lo; 356493/1000000 |
| 52:102 | BHP | lo | 28653/200000 | earlier 51:102; BHP; lo; 28653/200000 |
| 52:104 | BHQ | lo | 130111/1000000 | earlier 51:104; BHQ; lo; 130111/1000000 |
| 52:105 | BHQ | hi | 360897/1000000 | earlier 51:105; BHQ; hi; 360897/1000000 |
| 52:110 | BPQ | lo | 101917/1000000 | earlier 51:110; BPQ; lo; 101917/1000000 |
| 52:118 | BQS | lo | 148981/500000 | earlier 51:118; BQS; lo; 148981/500000 |
| 52:124 | CEH | lo | 9621/100000 | earlier 51:124; CEH; lo; 9621/100000 |
| 52:128 | CEQ | lo | 18819/200000 | earlier 51:128; CEQ; lo; 18819/200000 |
| 52:129 | CEQ | hi | 265521/500000 | earlier 51:129; CEQ; hi; 265521/500000 |
| 52:148 | CHR | lo | 189067/500000 | earlier 51:148; CHR; lo; 189067/500000 |
| 52:159 | CQR | hi | 666641/1000000 | earlier 51:159; CQR; hi; 666641/1000000 |
| 52:161 | CQS | hi | 5333/8000 | earlier 51:161; CQS; hi; 5333/8000 |
| 52:164 | EFH | lo | 36253/125000 | earlier 51:164; EFH; lo; 36253/125000 |
| 52:170 | EFR | lo | 24077/200000 | earlier 51:170; EFR; lo; 24077/200000 |
| 52:178 | EHR | lo | 379231/1000000 | earlier 51:178; EHR; lo; 379231/1000000 |
| 52:180 | EHS | lo | 342841/1000000 | earlier 51:180; EHS; lo; 342841/1000000 |
| 52:182 | EPQ | lo | 115763/1000000 | earlier 51:182; EPQ; lo; 115763/1000000 |
| 52:189 | EQR | hi | 544577/1000000 | earlier 51:189; EQR; hi; 544577/1000000 |
| 52:191 | EQS | hi | 610961/1000000 | earlier 51:191; EQS; hi; 610961/1000000 |
| 52:195 | FHP | hi | 227077/500000 | earlier 51:195; FHP; hi; 227077/500000 |
| 52:204 | FPR | lo | 6429/40000 | earlier 51:204; FPR; lo; 6429/40000 |
| 52:206 | FPS | lo | 170493/1000000 | earlier 51:206; FPS; lo; 170493/1000000 |
| 52:216 | HPR | lo | 57809/200000 | earlier 51:216; HPR; lo; 57809/200000 |
| 52:218 | HPS | lo | 57809/200000 | earlier 51:218; HPS; lo; 57809/200000 |
| 52:219 | HPS | hi | 611663/1000000 | earlier 51:219; HPS; hi; 611663/1000000 |
| 52:224 | HRS | lo | 1773/15625 | earlier 51:224; HRS; lo; 1773/15625 |
| 52:226 | PQR | lo | 20609/200000 | earlier 51:226; PQR; lo; 20609/200000 |
| 52:232 | QRS | lo | 1537/15625 | earlier 51:232; QRS; lo; 1537/15625 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 53

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR+/APR+ |
| Packet | forest:root/AFQ+/BPS-/HQR+/APR+ |
| Index | 0 |
| Context | 16 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 52 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 220537/1000000 | 158493/200000 | 220537/1000000 | 158493/200000 |
| q | 22907/200000 | 334397/500000 | 22907/200000 | 334397/500000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 493737/1000000 | 841007/1000000 | 493737/1000000 | 841007/1000000 |
| r | 710039/1000000 | 1/1 | 710039/1000000 | 1/1 |
| w | 241499/500000 | 104293/125000 | 241499/500000 | 104293/125000 |
| j | 13857/20000 | 13636/15625 | 13857/20000 | 13636/15625 |
| k | 549193/1000000 | 1/1 | 549193/1000000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 53:5 | ABF | hi | 554789/1000000 | earlier 52:5; ABF; hi; 554789/1000000 |
| 53:6 | ABH | lo | 93/1000 | occupants none |
| 53:8 | ABP | lo | 93/1000 | occupants none |
| 53:14 | ABS | lo | 279/1000 | occupants P |
| 53:22 | ACP | lo | 93/1000 | occupants none |
| 53:24 | ACQ | lo | 61137/200000 | earlier 52:24; ACQ; lo; 61137/200000 |
| 53:41 | AFH | hi | 52423356869/100000000000 | vertex maximum 52423356869/100000000000 |
| 53:44 | AFQ | lo | 93/1000 | occupants none |
| 53:52 | AHQ | lo | 93/1000 | occupants none |
| 53:56 | AHS | lo | 172631/500000 | earlier 52:56; AHS; lo; 172631/500000 |
| 53:60 | APR | lo | 93/1000 | occupants none |
| 53:62 | APS | lo | 93/1000 | occupants none |
| 53:70 | BCE | lo | 93/1000 | occupants none |
| 53:73 | BCF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 53:74 | BCH | lo | 65853/200000 | earlier 52:70; BCH; lo; 65853/200000 |
| 53:75 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 53:76 | BCP | lo | 93/1000 | occupants none |
| 53:80 | BCR | lo | 109731/1000000 | earlier 52:76; BCR; lo; 109731/1000000 |
| 53:84 | BEF | lo | 323347/1000000 | earlier 52:80; BEF; lo; 323347/1000000 |
| 53:86 | BEH | lo | 65853/200000 | earlier 52:82; BEH; lo; 65853/200000 |
| 53:87 | BEH | hi | 936805897/1000000000 | vertex maximum 936805897/1000000000 |
| 53:88 | BEP | lo | 93/1000 | occupants none |
| 53:90 | BEQ | lo | 7767/25000 | earlier 52:86; BEQ; lo; 7767/25000 |
| 53:92 | BER | lo | 116509/1000000 | earlier 52:88; BER; lo; 116509/1000000 |
| 53:93 | BER | hi | 85606949941/125000000000 | vertex maximum 85606949941/125000000000 |
| 53:97 | BFH | hi | 58493/100000 | vertex maximum 58493/100000 |
| 53:98 | BFP | lo | 93/1000 | occupants none |
| 53:100 | BFQ | lo | 93/1000 | occupants none |
| 53:104 | BFS | lo | 356493/1000000 | earlier 52:100; BFS; lo; 356493/1000000 |
| 53:105 | BFS | hi | 130992046149/200000000000 | vertex maximum 130992046149/200000000000 |
| 53:106 | BHP | lo | 28653/200000 | earlier 52:102; BHP; lo; 28653/200000 |
| 53:108 | BHQ | lo | 130111/1000000 | earlier 52:104; BHQ; lo; 130111/1000000 |
| 53:109 | BHQ | hi | 360897/1000000 | earlier 52:105; BHQ; hi; 360897/1000000 |
| 53:110 | BHR | lo | 13857/20000 | occupants P, Q |
| 53:111 | BHR | hi | 122851296731/125000000000 | vertex maximum 122851296731/125000000000 |
| 53:112 | BHS | lo | 13857/20000 | occupants P, Q |
| 53:113 | BHS | hi | 13636/15625 | vertex maximum 13636/15625 |
| 53:114 | BPQ | lo | 101917/1000000 | earlier 52:110; BPQ; lo; 101917/1000000 |
| 53:116 | BPR | lo | 93/1000 | occupants none |
| 53:118 | BPS | lo | 93/1000 | occupants none |
| 53:126 | CEF | lo | 93/1000 | occupants none |
| 53:128 | CEH | lo | 9621/100000 | earlier 52:124; CEH; lo; 9621/100000 |
| 53:133 | CEQ | hi | 265521/500000 | earlier 52:129; CEQ; hi; 265521/500000 |
| 53:134 | CER | lo | 93/1000 | occupants none |
| 53:136 | CES | lo | 93/1000 | occupants none |
| 53:139 | CFH | hi | 75894934271/100000000000 | vertex maximum 75894934271/100000000000 |
| 53:140 | CFP | lo | 93/1000 | occupants none |
| 53:148 | CHP | lo | 93/1000 | occupants none |
| 53:150 | CHQ | lo | 93/1000 | occupants none |
| 53:152 | CHR | lo | 189067/500000 | earlier 52:148; CHR; lo; 189067/500000 |
| 53:153 | CHR | hi | 28444180793/31250000000 | vertex maximum 28444180793/31250000000 |
| 53:163 | CQR | hi | 666641/1000000 | earlier 52:159; CQR; hi; 666641/1000000 |
| 53:165 | CQS | hi | 5333/8000 | earlier 52:161; CQS; hi; 5333/8000 |
| 53:166 | CRS | lo | 93/1000 | occupants none |
| 53:180 | EHQ | lo | 93/1000 | occupants none |
| 53:182 | EHR | lo | 379231/1000000 | earlier 52:178; EHR; lo; 379231/1000000 |
| 53:183 | EHR | hi | 730577/1000000 | vertex maximum 730577/1000000 |
| 53:193 | EQR | hi | 544577/1000000 | earlier 52:189; EQR; hi; 544577/1000000 |
| 53:195 | EQS | hi | 610961/1000000 | earlier 52:191; EQS; hi; 610961/1000000 |
| 53:196 | ERS | lo | 93/1000 | occupants none |
| 53:199 | FHP | hi | 227077/500000 | earlier 52:195; FHP; hi; 227077/500000 |
| 53:200 | FHQ | lo | 93/1000 | occupants none |
| 53:204 | FHS | lo | 93/1000 | occupants none |
| 53:208 | FPR | lo | 6429/40000 | earlier 52:204; FPR; lo; 6429/40000 |
| 53:210 | FPS | lo | 170493/1000000 | earlier 52:206; FPS; lo; 170493/1000000 |
| 53:216 | FRS | lo | 93/1000 | occupants none |
| 53:218 | HPQ | lo | 93/1000 | occupants none |
| 53:220 | HPR | lo | 57809/200000 | earlier 52:216; HPR; lo; 57809/200000 |
| 53:222 | HPS | lo | 57809/200000 | earlier 52:218; HPS; lo; 57809/200000 |
| 53:223 | HPS | hi | 611663/1000000 | earlier 52:219; HPS; hi; 611663/1000000 |
| 53:224 | HQR | lo | 93/1000 | occupants none |
| 53:226 | HQS | lo | 93/1000 | occupants none |
| 53:228 | HRS | lo | 1773/15625 | earlier 52:224; HRS; lo; 1773/15625 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 636 | plu | BCR * BEH = BCE * BHR + BCH * BER | circuit BCEHR |
| 638 | plu | BER * CEH = BCE * EHR + BEH * CER | circuit EBCHR |
| 640 | plu | BER * CHR = BCR * EHR + BHR * CER | circuit RBCEH |
| 785 | plu | BHQ * EFQ = BEQ * FHQ + BFQ * EHQ | circuit QBEFH |
| 843 | plu | BHQ * EHR = BEH * HQR + BHR * EHQ | circuit HBEQR |
| 854 | plu | BRS * EHR = BER * HRS + BHR * ERS | circuit RBEHS |
| 886 | plu | BFS * BHP = BFH * BPS + BFP * BHS | circuit BFHPS |
| 905 | plu | BFS * HRS = BHS * FRS + BRS * FHS | circuit SBFHR |
| 2486 | support | HPR * EHR >= 1023/1000 * (HPR - EHP) | pentagon HPCER |
| 2528 | support | CHR * CFH >= 1023/1000 * (CHR - CFR) | pentagon CRSFH |
| 2548 | support | CQR * CFQ >= 1023/1000 * (CQR - CFR) | pentagon CRSFQ |
| 2610 | support | HPR * FHP >= 1023/1000 * (HPR - FPR) | pentagon PRSFH |
| 2937 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BPQ; sign 1; vertices ABP 1; BFP 1; BHP 1 | container AFH; inner Q; line BP |
| 2940 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BQS; sign 1; vertices ABS 1; BFS 1; BHS 1 | container AFH; inner Q; line BS |
| 2963 | bary | outer AFH; fans FHQ, AHQ, AFQ; target PQR; sign 1; vertices APR 1; FPR 1; HPR 1 | container AFH; inner Q; line PR |
| 2964 | bary | outer AFH; fans FHQ, AHQ, AFQ; target PQS; sign 1; vertices APS 1; FPS 1; HPS 1 | container AFH; inner Q; line PS |
| 3061 | bary | outer BCF; fans CFP, BFP, BCP; target APQ; sign -1; vertices ABQ -1; ACQ -1; AFQ -1 | container BCF; inner P; line AQ |
| 3123 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 3126 | bary | outer BCH; fans CHP, BHP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EHQ 1 | container BCH; inner P; line EQ |
| 3361 | bary | outer BFH; fans FHQ, BHQ, BFQ; target QRS; sign 1; vertices BRS 1; FRS 1; HRS 1 | container BFH; inner Q; line RS |
| 3483 | bary | outer BHR; fans HPR, BPR, BHP; target FPS; sign -1; vertices BFS -1; FHS -1; FRS -1 | container BHR; inner P; line FS |
| 3555 | bary | outer BHS; fans HPS, BPS, BHP; target CEP; sign 1; vertices BCE 1; CEH 1; CES 1 | container BHS; inner P; line CE |
| 3560 | bary | outer BHS; fans HPS, BPS, BHP; target CPR; sign 1; vertices BCR 1; CHR 1; CRS 1 | container BHS; inner P; line CR |
| 3600 | bary | outer BHS; fans HQS, BQS, BHQ; target CEQ; sign 1; vertices BCE 1; CEH 1; CES 1 | container BHS; inner Q; line CE |
| 3605 | bary | outer BHS; fans HQS, BQS, BHQ; target CQR; sign 1; vertices BCR 1; CHR 1; CRS 1 | container BHS; inner Q; line CR |
| 3611 | bary | outer BHS; fans HQS, BQS, BHQ; target EQR; sign 1; vertices BER 1; EHR 1; ERS 1 | container BHS; inner Q; line ER |
| 3912 | bary | outer EHR; fans HQR, EQR, EHQ; target CFQ; sign 1; vertices CEF -1; CFH 1; CFR -1 | container EHR; inner Q; line CF |
| 3914 | bary | outer EHR; fans HQR, EQR, EHQ; target CPQ; sign -1; vertices CEP -1; CHP -1; CPR -1 | container EHR; inner Q; line CP |
| 4071 | bary | outer HPS; fans PQS, HQS, HPQ; target ABQ; sign 1; vertices ABH 1; ABP 1; ABS 1 | container HPS; inner Q; line AB |
| 4156 | four | 1 * ACP + 1 * APQ + -1 * ACQ + 1 * CPQ = 0 | vertices ACPQ |
| 4203 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 4214 | four | 1 * BEF + -1 * BFP + -1 * BEP + -1 * EFP = 0 | vertices BEFP |
| 4218 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4222 | four | 1 * BEP + 1 * BPQ + -1 * BEQ + 1 * EPQ = 0 | vertices BEPQ |
| 4229 | four | 1 * BFH + -1 * BHQ + -1 * BFQ + -1 * FHQ = 0 | vertices BFHQ |
| 4234 | four | -1 * BFP + -1 * BPS + 1 * BFS + -1 * FPS = 0 | vertices BFPS |
| 4276 | four | -1 * CHQ + -1 * CQR + 1 * CHR + -1 * HQR = 0 | vertices CHQR |
| 4284 | four | 1 * EFH + -1 * EHQ + -1 * EFQ + -1 * FHQ = 0 | vertices EFHQ |
| 4296 | four | -1 * EHQ + -1 * EQR + 1 * EHR + -1 * HQR = 0 | vertices EHQR |
| 4313 | four | 1 * HPQ + 1 * HQR + -1 * HPR + 1 * PQR = 0 | vertices HPQR |
| 4314 | four | 1 * HPQ + 1 * HQS + -1 * HPS + 1 * PQS = 0 | vertices HPQS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 53:257 | BQS | lo | 73233/200000 | 19195606466451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:104, 53:112 |
| 53:259 | PQR | lo | 139793/1000000 | 563725629909/4032565913000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:208, 53:220 |
| 53:260 | PQS | lo | 70763/500000 | 7419275588817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:210, 53:222 |
| 53:267 | CEQ | lo | 47173/500000 | 1646737233/17454080000 | 3600 | 53:113, 53:226, 53:257, 53:108, 53:70, 53:128, 53:136 |
| 53:269 | CQR | lo | 107209/500000 | 18712354611/87270400000 | 3605 | 53:113, 53:226, 53:257, 53:108, 53:80, 53:152, 53:166 |
| 53:270 | EQR | lo | 539/2500 | 37631116623/174540800000 | 3611 | 53:113, 53:226, 53:257, 53:108, 53:92, 53:182, 53:196 |
| 53:292 | ABQ | lo | 379/3125 | 74182659/611663000 | 4071 | 53:223, 53:260, 53:226, 53:218, 53:6, 53:8, 53:14 |
| 53:294 | CHR | lo | 200209/500000 | 200209/500000 | 4276 | 53:150, 53:269, 53:224 |
| 53:296 | EHR | lo | 251/625 | 251/625 | 4296 | 53:180, 53:270, 53:224 |
| 53:299 | HPR | lo | 325793/1000000 | 325793/1000000 | 4313 | 53:218, 53:224, 53:259 |
| 53:300 | HPS | lo | 163763/500000 | 163763/500000 | 4314 | 53:218, 53:226, 53:260 |
| 53:308 | CEH | lo | 99247/1000000 | 8496305625/85606949941 | 638 | 53:70, 53:296, 53:86, 53:134, 53:93 |
| 53:309 | BER | lo | 59603/500000 | 6781438725/56888361586 | 640 | 53:80, 53:296, 53:110, 53:134, 53:153 |
| 53:312 | BRS | lo | 13339/125000 | 4872599577/45661062500 | 854 | 53:309, 53:228, 53:110, 53:196, 53:183 |
| 53:313 | HRS | lo | 28383/250000 | 4957284400/43664015383 | 905 | 53:112, 53:216, 53:312, 53:204, 53:105 |
| 53:314 | EHP | lo | 93127/1000000 | 3073205369/33000000000 | 2486 | 53:299, 53:183 |
| 53:317 | FPR | lo | 181159/1000000 | 92663022439/511500000000 | 2610 | 53:299, 53:199 |
| 53:321 | PQR | lo | 149937/1000000 | 7860225788817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:317, 53:299 |
| 53:322 | PQS | lo | 2318/15625 | 7777148888817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:210, 53:300 |
| 53:323 | APQ | lo | 29501/250000 | 52879707/448116500 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:24, 53:44 |
| 53:324 | EPQ | lo | 115803/1000000 | 10378674369/89623300000 | 3126 | 53:75, 53:148, 53:106, 53:76, 53:90, 53:267, 53:180 |
| 53:330 | FPS | lo | 36069/200000 | 2769461558076/15356412091375 | 3483 | 53:111, 53:299, 53:116, 53:106, 53:104, 53:204, 53:216 |
| 53:336 | CEP | lo | 18733/200000 | 81742443/872704000 | 3555 | 53:113, 53:300, 53:118, 53:106, 53:70, 53:308, 53:136 |
| 53:337 | CPR | lo | 132039/1000000 | 57615591753/436352000000 | 3560 | 53:113, 53:300, 53:118, 53:106, 53:80, 53:294, 53:166 |
| 53:339 | CEQ | lo | 95621/1000000 | 16689780951/174540800000 | 3600 | 53:113, 53:226, 53:257, 53:108, 53:70, 53:308, 53:136 |
| 53:340 | CQR | lo | 223767/1000000 | 19528316697/87270400000 | 3605 | 53:113, 53:226, 53:257, 53:108, 53:80, 53:294, 53:166 |
| 53:341 | EQR | lo | 225273/1000000 | 28085307/124672000 | 3611 | 53:113, 53:226, 53:257, 53:108, 53:309, 53:296, 53:196 |
| 53:350 | CPQ | lo | 49027/500000 | 2310843/23567000 | 3914 | 53:183, 53:224, 53:341, 53:180, 53:336, 53:148, 53:337 |
| 53:359 | ACQ | lo | 154529/500000 | 154529/500000 | 4156 | 53:22, 53:323, 53:350 |
| 53:363 | BEH | lo | 20587/62500 | 20587/62500 | 4218 | 53:106, 53:88, 53:314 |
| 53:364 | BEQ | lo | 971/3125 | 971/3125 | 4222 | 53:88, 53:114, 53:324 |
| 53:366 | BFS | lo | 73269/200000 | 73269/200000 | 4234 | 53:98, 53:118, 53:330 |
| 53:368 | CHR | lo | 409767/1000000 | 409767/1000000 | 4276 | 53:150, 53:340, 53:224 |
| 53:370 | EHR | lo | 411273/1000000 | 411273/1000000 | 4296 | 53:180, 53:341, 53:224 |
| 53:372 | HPR | lo | 335937/1000000 | 335937/1000000 | 4313 | 53:218, 53:224, 53:321 |
| 53:373 | HPS | lo | 20897/62500 | 20897/62500 | 4314 | 53:218, 53:226, 53:322 |
| 53:382 | BCR | lo | 110679/1000000 | 10368541359/93680589700 | 636 | 53:70, 53:110, 53:74, 53:309, 53:87 |
| 53:383 | CEH | lo | 50289/500000 | 8610230625/85606949941 | 638 | 53:70, 53:370, 53:363, 53:134, 53:93 |
| 53:384 | BER | lo | 151/1250 | 109954334367/910213785376 | 640 | 53:382, 53:370, 53:110, 53:134, 53:153 |
| 53:385 | EFQ | lo | 20807/200000 | 312883/3007475 | 785 | 53:364, 53:200, 53:100, 53:180, 53:109 |
| 53:387 | BHQ | lo | 130127/1000000 | 1533363/11783500 | 843 | 53:363, 53:224, 53:110, 53:180, 53:183 |
| 53:390 | BRS | lo | 106969/1000000 | 195374289/1826442500 | 854 | 53:384, 53:313, 53:110, 53:196, 53:183 |
| 53:392 | HRS | lo | 3549/31250 | 4958877800/43664015383 | 905 | 53:112, 53:216, 53:390, 53:204, 53:105 |
| 53:396 | EHP | lo | 96027/1000000 | 1056297907/11000000000 | 2486 | 53:372, 53:183 |
| 53:397 | CFR | lo | 52883/500000 | 3606641522858381/34100000000000000 | 2528 | 53:368, 53:139 |
| 53:399 | FPR | lo | 467/2500 | 31849403117/170500000000 | 2610 | 53:372, 53:199 |
| 53:403 | BQS | lo | 45989/125000 | 19287230066451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:366, 53:112 |
| 53:405 | PQR | lo | 152737/1000000 | 8007026288817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:399, 53:372 |
| 53:406 | PQS | lo | 151311/1000000 | 7932254288817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:330, 53:373 |
| 53:407 | APQ | lo | 59177/500000 | 106073103/896233000 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:359, 53:44 |
| 53:408 | EPQ | lo | 116011/1000000 | 20794625313/179246600000 | 3126 | 53:75, 53:148, 53:106, 53:76, 53:364, 53:339, 53:180 |
| 53:417 | FPS | lo | 2913/15625 | 5725877001027/30712824182750 | 3483 | 53:111, 53:372, 53:116, 53:106, 53:366, 53:204, 53:216 |
| 53:424 | CEP | lo | 93807/1000000 | 40933113/436352000 | 3555 | 53:113, 53:373, 53:118, 53:106, 53:70, 53:383, 53:136 |
| 53:425 | CPR | lo | 133529/1000000 | 14566476501/109088000000 | 3560 | 53:113, 53:373, 53:118, 53:106, 53:382, 53:368, 53:166 |
| 53:427 | CEQ | lo | 48097/500000 | 5246844321/54544000000 | 3600 | 53:113, 53:226, 53:403, 53:387, 53:70, 53:383, 53:136 |
| 53:429 | CQR | lo | 9137/40000 | 12459249969/54544000000 | 3605 | 53:113, 53:226, 53:403, 53:387, 53:382, 53:368, 53:166 |
| 53:430 | EQR | lo | 230139/1000000 | 25105415997/109088000000 | 3611 | 53:113, 53:226, 53:403, 53:387, 53:384, 53:370, 53:196 |
| 53:443 | CFQ | hi | 67553/125000 | 1273616510338657/2356700000000000 | 3912 | 53:183, 53:224, 53:430, 53:180, 53:126, 53:139, 53:397 |
| 53:444 | CPQ | lo | 98261/1000000 | 2315739/23567000 | 3914 | 53:183, 53:224, 53:430, 53:180, 53:424, 53:148, 53:425 |
| 53:456 | ACQ | lo | 61923/200000 | 61923/200000 | 4156 | 53:22, 53:407, 53:444 |
| 53:459 | BEH | lo | 83073/250000 | 83073/250000 | 4218 | 53:106, 53:88, 53:396 |
| 53:460 | BEQ | lo | 19433/62500 | 19433/62500 | 4222 | 53:88, 53:114, 53:408 |
| 53:461 | BFH | lo | 316127/1000000 | 316127/1000000 | 4229 | 53:387, 53:100, 53:200 |
| 53:463 | BFS | lo | 23277/62500 | 23277/62500 | 4234 | 53:98, 53:118, 53:417 |
| 53:467 | CHR | lo | 16577/40000 | 16577/40000 | 4276 | 53:150, 53:429, 53:224 |
| 53:469 | EFH | lo | 58007/200000 | 58007/200000 | 4284 | 53:180, 53:385, 53:200 |
| 53:470 | EHR | lo | 416139/1000000 | 416139/1000000 | 4296 | 53:180, 53:430, 53:224 |
| 53:473 | HPR | lo | 338737/1000000 | 338737/1000000 | 4313 | 53:218, 53:224, 53:405 |
| 53:474 | HPS | lo | 337311/1000000 | 337311/1000000 | 4314 | 53:218, 53:226, 53:406 |
| 53:488 | BCR | lo | 111239/1000000 | 104210262/936805897 | 636 | 53:70, 53:110, 53:74, 53:384, 53:87 |
| 53:489 | CEH | lo | 101633/1000000 | 8700510375/85606949941 | 638 | 53:70, 53:470, 53:459, 53:134, 53:93 |
| 53:490 | BER | lo | 7603/62500 | 110725936221/910213785376 | 640 | 53:488, 53:470, 53:110, 53:134, 53:153 |
| 53:491 | EFQ | lo | 13011/125000 | 1565221/15037375 | 785 | 53:460, 53:200, 53:100, 53:180, 53:109 |
| 53:493 | BHQ | lo | 130497/1000000 | 1537713/11783500 | 843 | 53:459, 53:224, 53:110, 53:180, 53:183 |
| 53:496 | BRS | lo | 107107/1000000 | 4890648129/45661062500 | 854 | 53:490, 53:392, 53:110, 53:196, 53:183 |
| 53:497 | BHP | lo | 35817/250000 | 6255657400/43664015383 | 886 | 53:461, 53:118, 53:98, 53:112, 53:105 |
| 53:499 | HRS | lo | 28397/250000 | 4959733400/43664015383 | 905 | 53:112, 53:216, 53:496, 53:204, 53:105 |
| 53:503 | EHP | lo | 96827/1000000 | 3195306121/33000000000 | 2486 | 53:473, 53:183 |
| 53:505 | CFR | lo | 53877/500000 | 275581057/2557500000 | 2548 | 53:429, 53:443 |
| 53:507 | FPR | lo | 47089/250000 | 3107890121/16500000000 | 2610 | 53:473, 53:199 |
| 53:511 | BQS | lo | 11531/31250 | 19343839166451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:463, 53:112 |
| 53:513 | PQR | lo | 15351/100000 | 8047537088817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:507, 53:473 |
| 53:514 | PQS | lo | 38229/250000 | 8016382088817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:417, 53:474 |
| 53:515 | APQ | lo | 29603/250000 | 13265613/112029125 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:456, 53:44 |
| 53:516 | EFP | lo | 34337/250000 | 24619239/179246600 | 3123 | 53:75, 53:148, 53:497, 53:76, 53:84, 53:126, 53:469 |
| 53:517 | EPQ | lo | 29031/250000 | 6504660687/56014562500 | 3126 | 53:75, 53:148, 53:497, 53:76, 53:460, 53:427, 53:180 |
| 53:525 | FPS | lo | 189309/1000000 | 23256915268983/122851296731000 | 3483 | 53:111, 53:473, 53:116, 53:497, 53:463, 53:204, 53:216 |
| 53:532 | CEP | lo | 93919/1000000 | 81964341/872704000 | 3555 | 53:113, 53:474, 53:118, 53:497, 53:70, 53:489, 53:136 |
| 53:533 | CPR | lo | 67151/500000 | 117206212329/872704000000 | 3560 | 53:113, 53:474, 53:118, 53:497, 53:488, 53:467, 53:166 |
| 53:535 | CEQ | lo | 1933/20000 | 2635843123/27272000000 | 3600 | 53:113, 53:226, 53:511, 53:493, 53:70, 53:489, 53:136 |
| 53:537 | CQR | lo | 115423/500000 | 1007304763/4363520000 | 3605 | 53:113, 53:226, 53:511, 53:493, 53:488, 53:467, 53:166 |
| 53:538 | EQR | lo | 5817/25000 | 6345670059/27272000000 | 3611 | 53:113, 53:226, 53:511, 53:493, 53:490, 53:470, 53:196 |
| 53:551 | CFQ | hi | 540171/1000000 | 1273020110338657/2356700000000000 | 3912 | 53:183, 53:224, 53:538, 53:180, 53:126, 53:139, 53:505 |
| 53:552 | CPQ | lo | 49187/500000 | 1159197/11783500 | 3914 | 53:183, 53:224, 53:538, 53:180, 53:532, 53:148, 53:533 |
| 53:566 | ACQ | lo | 154893/500000 | 154893/500000 | 4156 | 53:22, 53:515, 53:552 |
| 53:568 | BCH | lo | 82317/250000 | 82317/250000 | 4203 | 53:497, 53:76, 53:148 |
| 53:570 | BEF | lo | 80837/250000 | 80837/250000 | 4214 | 53:98, 53:88, 53:516 |
| 53:571 | BEH | lo | 66619/200000 | 66619/200000 | 4218 | 53:497, 53:88, 53:503 |
| 53:572 | BEQ | lo | 311041/1000000 | 311041/1000000 | 4222 | 53:88, 53:114, 53:517 |
| 53:573 | BFH | lo | 316497/1000000 | 316497/1000000 | 4229 | 53:493, 53:100, 53:200 |
| 53:575 | BFS | lo | 375309/1000000 | 375309/1000000 | 4234 | 53:98, 53:118, 53:525 |
| 53:579 | CHR | lo | 208423/500000 | 208423/500000 | 4276 | 53:150, 53:537, 53:224 |
| 53:581 | EFH | lo | 36261/125000 | 36261/125000 | 4284 | 53:180, 53:491, 53:200 |
| 53:582 | EHR | lo | 10467/25000 | 10467/25000 | 4296 | 53:180, 53:538, 53:224 |
| 53:585 | HPR | lo | 33951/100000 | 33951/100000 | 4313 | 53:218, 53:224, 53:513 |
| 53:586 | HPS | lo | 84729/250000 | 84729/250000 | 4314 | 53:218, 53:226, 53:514 |
| 53:600 | BCR | lo | 55769/500000 | 13061230458/117100737125 | 636 | 53:70, 53:110, 53:568, 53:490, 53:87 |
| 53:601 | CEH | lo | 102087/1000000 | 8739384375/85606949941 | 638 | 53:70, 53:582, 53:571, 53:134, 53:93 |
| 53:602 | BER | lo | 7631/62500 | 3472930620/28444180793 | 640 | 53:600, 53:582, 53:110, 53:134, 53:153 |
| 53:603 | EFQ | lo | 104117/1000000 | 12525271/120299000 | 785 | 53:572, 53:200, 53:100, 53:180, 53:109 |
| 53:605 | BHQ | lo | 130599/1000000 | 615567/4713400 | 843 | 53:571, 53:224, 53:110, 53:180, 53:183 |
| 53:609 | BRS | lo | 5359/50000 | 4893980653/45661062500 | 854 | 53:602, 53:499, 53:110, 53:196, 53:183 |
| 53:610 | BHP | lo | 3583/25000 | 6257951400/43664015383 | 886 | 53:573, 53:118, 53:98, 53:112, 53:105 |
| 53:612 | HRS | lo | 56799/500000 | 4960186000/43664015383 | 905 | 53:112, 53:216, 53:609, 53:204, 53:105 |
| 53:615 | EHP | lo | 12131/125000 | 106753261/1100000000 | 2486 | 53:585, 53:183 |
| 53:616 | CFR | lo | 108953/1000000 | 1688774899/15500000000 | 2548 | 53:537, 53:551 |
| 53:618 | FPR | lo | 94393/500000 | 3218815091/17050000000 | 2610 | 53:585, 53:199 |
| 53:621 | BPQ | lo | 50963/500000 | 5343348188817/52423356869000 | 2937 | 53:41, 53:200, 53:52, 53:44, 53:8, 53:98, 53:610 |
| 53:623 | BQS | lo | 369503/1000000 | 1490045789727/4032565913000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:575, 53:112 |
| 53:625 | PQR | lo | 153723/1000000 | 8058724988817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:618, 53:585 |
| 53:626 | PQS | lo | 153711/1000000 | 619851129909/4032565913000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:525, 53:586 |
| 53:627 | APQ | lo | 118429/1000000 | 106140807/896233000 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:566, 53:44 |
| 53:628 | EFP | lo | 68677/500000 | 123101217/896233000 | 3123 | 53:75, 53:148, 53:610, 53:76, 53:570, 53:126, 53:581 |
| 53:629 | EPQ | lo | 116209/1000000 | 520753/4481165 | 3126 | 53:75, 53:148, 53:610, 53:76, 53:572, 53:535, 53:180 |
| 53:637 | FPS | lo | 190523/1000000 | 23406011669733/122851296731000 | 3483 | 53:111, 53:585, 53:116, 53:610, 53:575, 53:204, 53:216 |
| 53:643 | CEP | lo | 5873/62500 | 82006563/872704000 | 3555 | 53:113, 53:586, 53:118, 53:610, 53:70, 53:601, 53:136 |
| 53:644 | CPR | lo | 13471/100000 | 14695246851/109088000000 | 3560 | 53:113, 53:586, 53:118, 53:610, 53:600, 53:579, 53:166 |
| 53:646 | CEQ | lo | 96847/1000000 | 84519145761/872704000000 | 3600 | 53:113, 53:226, 53:623, 53:605, 53:70, 53:601, 53:136 |
| 53:648 | CQR | lo | 232091/1000000 | 101273787269/436352000000 | 3605 | 53:113, 53:226, 53:623, 53:605, 53:600, 53:579, 53:166 |
| 53:649 | EQR | lo | 233993/1000000 | 2552589213/10908800000 | 3611 | 53:113, 53:226, 53:623, 53:605, 53:602, 53:582, 53:196 |
| 53:662 | CFQ | hi | 270009/500000 | 1272660410338657/2356700000000000 | 3912 | 53:183, 53:224, 53:649, 53:180, 53:126, 53:139, 53:616 |
| 53:663 | CPQ | lo | 1538/15625 | 463953/4713400 | 3914 | 53:183, 53:224, 53:649, 53:180, 53:643, 53:148, 53:644 |
| 53:677 | ACQ | lo | 309861/1000000 | 309861/1000000 | 4156 | 53:22, 53:627, 53:663 |
| 53:679 | BCH | lo | 8233/25000 | 8233/25000 | 4203 | 53:610, 53:76, 53:148 |
| 53:681 | BEF | lo | 161677/500000 | 161677/500000 | 4214 | 53:98, 53:88, 53:628 |
| 53:682 | BEH | lo | 41671/125000 | 41671/125000 | 4218 | 53:610, 53:88, 53:615 |
| 53:683 | BEQ | lo | 62227/200000 | 62227/200000 | 4222 | 53:88, 53:621, 53:629 |
| 53:684 | BFH | lo | 316599/1000000 | 316599/1000000 | 4229 | 53:605, 53:100, 53:200 |
| 53:686 | BFS | lo | 376523/1000000 | 376523/1000000 | 4234 | 53:98, 53:118, 53:637 |
| 53:690 | CHR | lo | 418091/1000000 | 418091/1000000 | 4276 | 53:150, 53:648, 53:224 |
| 53:692 | EFH | lo | 290117/1000000 | 290117/1000000 | 4284 | 53:180, 53:603, 53:200 |
| 53:693 | EHR | lo | 419993/1000000 | 419993/1000000 | 4296 | 53:180, 53:649, 53:224 |
| 53:696 | HPR | lo | 339723/1000000 | 339723/1000000 | 4313 | 53:218, 53:224, 53:625 |
| 53:697 | HPS | lo | 339711/1000000 | 339711/1000000 | 4314 | 53:218, 53:226, 53:626 |
| 53:711 | BCR | lo | 55851/500000 | 2616092618/23420147425 | 636 | 53:70, 53:110, 53:679, 53:602, 53:87 |
| 53:712 | CEH | lo | 51151/500000 | 8757821625/85606949941 | 638 | 53:70, 53:693, 53:682, 53:134, 53:93 |
| 53:713 | BER | lo | 30583/250000 | 625556787/5113560592 | 640 | 53:711, 53:693, 53:110, 53:134, 53:153 |
| 53:714 | EFQ | lo | 52071/500000 | 2505637/24059800 | 785 | 53:683, 53:200, 53:100, 53:180, 53:109 |
| 53:716 | BHQ | lo | 65317/500000 | 1539327/11783500 | 843 | 53:682, 53:224, 53:110, 53:180, 53:183 |
| 53:720 | BRS | lo | 53609/500000 | 9791465067/91322125000 | 854 | 53:713, 53:612, 53:110, 53:196, 53:183 |
| 53:721 | BHP | lo | 28667/200000 | 6258583800/43664015383 | 886 | 53:684, 53:118, 53:98, 53:112, 53:105 |
| 53:723 | HRS | lo | 28401/250000 | 4960421600/43664015383 | 905 | 53:112, 53:216, 53:720, 53:204, 53:105 |
| 53:726 | EHP | lo | 97109/1000000 | 1068202353/11000000000 | 2486 | 53:696, 53:183 |
| 53:727 | CFR | lo | 4383/40000 | 18682629227/170500000000 | 2548 | 53:648, 53:662 |
| 53:729 | FPR | lo | 37781/200000 | 32208344943/170500000000 | 2610 | 53:696, 53:199 |
| 53:732 | BPQ | lo | 101929/1000000 | 5343487688817/52423356869000 | 2937 | 53:41, 53:200, 53:52, 53:44, 53:8, 53:98, 53:721 |
| 53:734 | BQS | lo | 184859/500000 | 19381885466451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:686, 53:112 |
| 53:736 | PQR | lo | 76891/500000 | 620139429909/4032565913000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:729, 53:696 |
| 53:737 | PQS | lo | 154067/1000000 | 8076748388817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:637, 53:697 |
| 53:738 | APQ | lo | 118437/1000000 | 4082607/34470500 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:677, 53:44 |
| 53:739 | EFP | lo | 137357/1000000 | 15388059/112029125 | 3123 | 53:75, 53:148, 53:721, 53:76, 53:681, 53:126, 53:692 |
| 53:740 | EPQ | lo | 93/800 | 1602886673/13788200000 | 3126 | 53:75, 53:148, 53:721, 53:76, 53:683, 53:646, 53:180 |
| 53:748 | FPS | lo | 191003/1000000 | 5866270278027/30712824182750 | 3483 | 53:111, 53:696, 53:116, 53:721, 53:686, 53:204, 53:216 |
| 53:754 | CEP | lo | 93991/1000000 | 41013279/436352000 | 3555 | 53:113, 53:697, 53:118, 53:721, 53:70, 53:712, 53:136 |
| 53:755 | CPR | lo | 134923/1000000 | 58874105061/436352000000 | 3560 | 53:113, 53:697, 53:118, 53:721, 53:711, 53:690, 53:166 |
| 53:757 | CEQ | lo | 4847/50000 | 21150147209/218176000000 | 3600 | 53:113, 53:226, 53:734, 53:716, 53:70, 53:712, 53:136 |
| 53:759 | CQR | lo | 58179/250000 | 14506625167/62336000000 | 3605 | 53:113, 53:226, 53:734, 53:716, 53:711, 53:690, 53:166 |
| 53:760 | EQR | lo | 46931/200000 | 102392272987/436352000000 | 3611 | 53:113, 53:226, 53:734, 53:716, 53:713, 53:693, 53:196 |
| 53:773 | CFQ | hi | 539939/1000000 | 1272473810338657/2356700000000000 | 3912 | 53:183, 53:224, 53:760, 53:180, 53:126, 53:139, 53:727 |
| 53:774 | CPQ | lo | 49231/500000 | 2320473/23567000 | 3914 | 53:183, 53:224, 53:760, 53:180, 53:754, 53:148, 53:755 |
| 53:788 | ACQ | lo | 309899/1000000 | 309899/1000000 | 4156 | 53:22, 53:738, 53:774 |
| 53:790 | BCH | lo | 65867/200000 | 65867/200000 | 4203 | 53:721, 53:76, 53:148 |
| 53:792 | BEF | lo | 323357/1000000 | 323357/1000000 | 4214 | 53:98, 53:88, 53:739 |
| 53:793 | BEH | lo | 83361/250000 | 83361/250000 | 4218 | 53:721, 53:88, 53:726 |
| 53:794 | BEQ | lo | 311179/1000000 | 311179/1000000 | 4222 | 53:88, 53:732, 53:740 |
| 53:795 | BFH | lo | 158317/500000 | 158317/500000 | 4229 | 53:716, 53:100, 53:200 |
| 53:797 | BFS | lo | 377003/1000000 | 377003/1000000 | 4234 | 53:98, 53:118, 53:748 |
| 53:801 | CHR | lo | 104679/250000 | 104679/250000 | 4276 | 53:150, 53:759, 53:224 |
| 53:803 | EFH | lo | 145071/500000 | 145071/500000 | 4284 | 53:180, 53:714, 53:200 |
| 53:804 | EHR | lo | 84131/200000 | 84131/200000 | 4296 | 53:180, 53:760, 53:224 |
| 53:807 | HPR | lo | 169891/500000 | 169891/500000 | 4313 | 53:218, 53:224, 53:736 |
| 53:808 | HPS | lo | 340067/1000000 | 340067/1000000 | 4314 | 53:218, 53:226, 53:737 |
| 53:822 | BCR | lo | 111787/1000000 | 5236162961/46840294850 | 636 | 53:70, 53:110, 53:790, 53:713, 53:87 |
| 53:823 | CEH | lo | 51201/500000 | 8766400875/85606949941 | 638 | 53:70, 53:804, 53:793, 53:134, 53:93 |
| 53:824 | BER | lo | 122453/1000000 | 111458810485/910213785376 | 640 | 53:822, 53:804, 53:110, 53:134, 53:153 |
| 53:825 | EFQ | lo | 104153/1000000 | 12529549/120299000 | 785 | 53:794, 53:200, 53:100, 53:180, 53:109 |
| 53:827 | BHQ | lo | 130643/1000000 | 1539441/11783500 | 843 | 53:793, 53:224, 53:110, 53:180, 53:183 |
| 53:831 | BRS | lo | 53619/500000 | 19586550153/182644250000 | 854 | 53:824, 53:723, 53:110, 53:196, 53:183 |
| 53:832 | BHP | lo | 7167/50000 | 6258800800/43664015383 | 886 | 53:795, 53:118, 53:98, 53:112, 53:105 |
| 53:834 | HRS | lo | 113607/1000000 | 4960545600/43664015383 | 905 | 53:112, 53:216, 53:831, 53:204, 53:105 |
| 53:837 | EHP | lo | 48563/500000 | 1602581803/16500000000 | 2486 | 53:807, 53:183 |
| 53:838 | CFR | lo | 1717/15625 | 851636543/7750000000 | 2548 | 53:759, 53:773 |
| 53:840 | FPR | lo | 94469/500000 | 48320907893/255750000000 | 2610 | 53:807, 53:199 |
| 53:843 | BPQ | lo | 10193/100000 | 5343534188817/52423356869000 | 2937 | 53:41, 53:200, 53:52, 53:44, 53:8, 53:98, 53:832 |
| 53:845 | BQS | lo | 369803/1000000 | 19386349466451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:797, 53:112 |
| 53:847 | PQR | lo | 153799/1000000 | 8062668188817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:840, 53:807 |
| 53:848 | PQS | lo | 19277/125000 | 8084523188817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:748, 53:808 |
| 53:849 | APQ | lo | 118441/1000000 | 26537829/224058250 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:788, 53:44 |
| 53:850 | EFP | lo | 1717/12500 | 30776769/224058250 | 3123 | 53:75, 53:148, 53:832, 53:76, 53:792, 53:126, 53:803 |
| 53:851 | EPQ | lo | 11627/100000 | 260512689/2240582500 | 3126 | 53:75, 53:148, 53:832, 53:76, 53:794, 53:757, 53:180 |
| 53:859 | FPS | lo | 95593/500000 | 23487559014233/122851296731000 | 3483 | 53:111, 53:807, 53:116, 53:832, 53:797, 53:204, 53:216 |
| 53:865 | CEP | lo | 94001/1000000 | 41017929/436352000 | 3555 | 53:113, 53:808, 53:118, 53:832, 53:70, 53:823, 53:136 |
| 53:866 | CPR | lo | 13503/100000 | 117841898729/872704000000 | 3560 | 53:113, 53:808, 53:118, 53:832, 53:822, 53:801, 53:166 |
| 53:868 | CEQ | lo | 12123/125000 | 6045597129/62336000000 | 3600 | 53:113, 53:226, 53:845, 53:827, 53:70, 53:823, 53:136 |
| 53:870 | CQR | lo | 116511/500000 | 50839854237/218176000000 | 3605 | 53:113, 53:226, 53:845, 53:827, 53:822, 53:801, 53:166 |
| 53:871 | EQR | lo | 11749/50000 | 41013680593/174540800000 | 3611 | 53:113, 53:226, 53:845, 53:827, 53:824, 53:804, 53:196 |
| 53:884 | CFQ | hi | 539899/1000000 | 1272379910338657/2356700000000000 | 3912 | 53:183, 53:224, 53:871, 53:180, 53:126, 53:139, 53:838 |
| 53:885 | CPQ | lo | 98477/1000000 | 290103/2945875 | 3914 | 53:183, 53:224, 53:871, 53:180, 53:865, 53:148, 53:866 |
| 53:899 | ACQ | lo | 154959/500000 | 154959/500000 | 4156 | 53:22, 53:849, 53:885 |
| 53:901 | BCH | lo | 16467/50000 | 16467/50000 | 4203 | 53:832, 53:76, 53:148 |
| 53:903 | BEF | lo | 2021/6250 | 2021/6250 | 4214 | 53:98, 53:88, 53:850 |
| 53:904 | BEH | lo | 166733/500000 | 166733/500000 | 4218 | 53:832, 53:88, 53:837 |
| 53:905 | BEQ | lo | 389/1250 | 389/1250 | 4222 | 53:88, 53:843, 53:851 |
| 53:906 | BFH | lo | 316643/1000000 | 316643/1000000 | 4229 | 53:827, 53:100, 53:200 |
| 53:908 | BFS | lo | 188593/500000 | 188593/500000 | 4234 | 53:98, 53:118, 53:859 |
| 53:912 | CHR | lo | 209511/500000 | 209511/500000 | 4276 | 53:150, 53:870, 53:224 |
| 53:914 | EFH | lo | 290153/1000000 | 290153/1000000 | 4284 | 53:180, 53:825, 53:200 |
| 53:915 | EHR | lo | 21049/50000 | 21049/50000 | 4296 | 53:180, 53:871, 53:224 |
| 53:918 | HPR | lo | 339799/1000000 | 339799/1000000 | 4313 | 53:218, 53:224, 53:847 |
| 53:919 | HPS | lo | 42527/125000 | 42527/125000 | 4314 | 53:218, 53:226, 53:848 |
| 53:933 | BCR | lo | 11183/100000 | 5238186051/46840294850 | 636 | 53:70, 53:110, 53:901, 53:824, 53:87 |
| 53:934 | CEH | lo | 2049/20000 | 8770434750/85606949941 | 638 | 53:70, 53:915, 53:904, 53:134, 53:93 |
| 53:935 | BER | lo | 122513/1000000 | 13939155425/113776723172 | 640 | 53:933, 53:915, 53:110, 53:134, 53:153 |
| 53:938 | BHQ | lo | 65323/500000 | 769737/5891750 | 843 | 53:904, 53:224, 53:110, 53:180, 53:183 |
| 53:942 | BRS | lo | 6703/62500 | 78353384391/730577000000 | 854 | 53:935, 53:834, 53:110, 53:196, 53:183 |
| 53:943 | BHP | lo | 143341/1000000 | 6258856600/43664015383 | 886 | 53:906, 53:118, 53:98, 53:112, 53:105 |
| 53:945 | HRS | lo | 14201/125000 | 4960607600/43664015383 | 905 | 53:112, 53:216, 53:942, 53:204, 53:105 |
| 53:948 | EHP | lo | 97131/1000000 | 3205323967/33000000000 | 2486 | 53:918, 53:183 |
| 53:949 | CFR | lo | 55021/500000 | 18762193537/170500000000 | 2548 | 53:870, 53:884 |
| 53:951 | FPR | lo | 188947/1000000 | 96646650977/511500000000 | 2610 | 53:918, 53:199 |
| 53:955 | BQS | lo | 92459/250000 | 19388051366451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:908, 53:112 |
| 53:956 | PQR | lo | 153803/1000000 | 8062909988817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:951, 53:918 |
| 53:957 | PQS | lo | 77137/500000 | 8087610788817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:859, 53:919 |
| 53:958 | APQ | lo | 118443/1000000 | 106153083/896233000 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:899, 53:44 |
| 53:959 | EFP | lo | 68681/500000 | 61554189/448116500 | 3123 | 53:75, 53:148, 53:943, 53:76, 53:903, 53:126, 53:914 |
| 53:960 | EPQ | lo | 116279/1000000 | 13026667443/112029125000 | 3126 | 53:75, 53:148, 53:943, 53:76, 53:905, 53:868, 53:180 |
| 53:967 | FPS | lo | 38251/200000 | 23495935422733/122851296731000 | 3483 | 53:111, 53:918, 53:116, 53:943, 53:908, 53:204, 53:216 |
| 53:973 | CEP | lo | 94007/1000000 | 5860023/62336000 | 3555 | 53:113, 53:919, 53:118, 53:943, 53:70, 53:934, 53:136 |
| 53:974 | CPR | lo | 135083/1000000 | 368399329/2727200000 | 3560 | 53:113, 53:919, 53:118, 53:943, 53:933, 53:912, 53:166 |
| 53:976 | CEQ | lo | 24251/250000 | 60468873/623360000 | 3600 | 53:113, 53:226, 53:955, 53:938, 53:70, 53:934, 53:136 |
| 53:978 | CQR | lo | 14573/62500 | 25435916799/109088000000 | 3605 | 53:113, 53:226, 53:955, 53:938, 53:933, 53:912, 53:166 |
| 53:979 | EQR | lo | 3674/15625 | 5130124807/21817600000 | 3611 | 53:113, 53:226, 53:955, 53:938, 53:935, 53:915, 53:196 |
| 53:992 | CFQ | hi | 13497/25000 | 1272333710338657/2356700000000000 | 3912 | 53:183, 53:224, 53:979, 53:180, 53:126, 53:139, 53:949 |
| 53:993 | CPQ | lo | 19697/200000 | 2321001/23567000 | 3914 | 53:183, 53:224, 53:979, 53:180, 53:973, 53:148, 53:974 |
| 53:1005 | ACQ | lo | 38741/125000 | 38741/125000 | 4156 | 53:22, 53:958, 53:993 |
| 53:1007 | BCH | lo | 329341/1000000 | 329341/1000000 | 4203 | 53:943, 53:76, 53:148 |
| 53:1009 | BEF | lo | 161681/500000 | 161681/500000 | 4214 | 53:98, 53:88, 53:959 |
| 53:1010 | BEH | lo | 10421/31250 | 10421/31250 | 4218 | 53:943, 53:88, 53:948 |
| 53:1011 | BEQ | lo | 311209/1000000 | 311209/1000000 | 4222 | 53:88, 53:843, 53:960 |
| 53:1014 | BFS | lo | 75451/200000 | 75451/200000 | 4234 | 53:98, 53:118, 53:967 |
| 53:1018 | CHR | lo | 13099/31250 | 13099/31250 | 4276 | 53:150, 53:978, 53:224 |
| 53:1020 | EHR | lo | 26321/62500 | 26321/62500 | 4296 | 53:180, 53:979, 53:224 |
| 53:1023 | HPR | lo | 339803/1000000 | 339803/1000000 | 4313 | 53:218, 53:224, 53:956 |
| 53:1024 | HPS | lo | 170137/500000 | 170137/500000 | 4314 | 53:218, 53:226, 53:957 |
| 53:1037 | BCR | lo | 111851/1000000 | 104783603933/936805897000 | 636 | 53:70, 53:110, 53:1007, 53:935, 53:87 |
| 53:1038 | CEH | lo | 12809/125000 | 8772318000/85606949941 | 638 | 53:70, 53:1020, 53:1010, 53:134, 53:93 |
| 53:1039 | BER | lo | 61271/500000 | 3485610398/28444180793 | 640 | 53:1037, 53:1020, 53:110, 53:134, 53:153 |
| 53:1040 | EFQ | lo | 104161/1000000 | 12530479/120299000 | 785 | 53:1011, 53:200, 53:100, 53:180, 53:109 |
| 53:1042 | BHQ | lo | 130647/1000000 | 1539483/11783500 | 843 | 53:1010, 53:224, 53:110, 53:180, 53:183 |
| 53:1045 | BRS | lo | 107253/1000000 | 1224325024/11415265625 | 854 | 53:1039, 53:945, 53:110, 53:196, 53:183 |
| 53:1047 | HRS | lo | 113609/1000000 | 4960638600/43664015383 | 905 | 53:112, 53:216, 53:1045, 53:204, 53:105 |
| 53:1050 | EHP | lo | 24283/250000 | 3205361699/33000000000 | 2486 | 53:1023, 53:183 |
| 53:1051 | CFR | lo | 22023/200000 | 2666859/24218750 | 2548 | 53:978, 53:992 |
| 53:1053 | FPR | lo | 188949/1000000 | 96647788669/511500000000 | 2610 | 53:1023, 53:199 |
| 53:1057 | BQS | lo | 46231/125000 | 19388693066451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:1014, 53:112 |
| 53:1058 | PQR | lo | 38451/250000 | 8062965788817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:1053, 53:1023 |
| 53:1059 | PQS | lo | 154297/1000000 | 8088791888817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:967, 53:1024 |
| 53:1060 | APQ | lo | 29611/250000 | 106154013/896233000 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:1005, 53:44 |
| 53:1061 | EPQ | lo | 116283/1000000 | 26054260841/224058250000 | 3126 | 53:75, 53:148, 53:943, 53:76, 53:1011, 53:976, 53:180 |
| 53:1067 | FPS | lo | 2391/12500 | 2937376039576/15356412091375 | 3483 | 53:111, 53:1023, 53:116, 53:943, 53:1014, 53:204, 53:216 |
| 53:1073 | CEP | lo | 94009/1000000 | 160239/1704500 | 3555 | 53:113, 53:1024, 53:118, 53:943, 53:70, 53:1038, 53:136 |
| 53:1074 | CPR | lo | 33777/250000 | 58954800587/436352000000 | 3560 | 53:113, 53:1024, 53:118, 53:943, 53:1037, 53:1018, 53:166 |
| 53:1076 | CEQ | lo | 48507/500000 | 10335043/106531250 | 3600 | 53:113, 53:226, 53:1057, 53:1042, 53:70, 53:1038, 53:136 |
| 53:1078 | CQR | lo | 233237/1000000 | 25443399683/109088000000 | 3605 | 53:113, 53:226, 53:1057, 53:1042, 53:1037, 53:1018, 53:166 |
| 53:1079 | EQR | lo | 23521/100000 | 12829332583/54544000000 | 3611 | 53:113, 53:226, 53:1057, 53:1042, 53:1039, 53:1020, 53:196 |
| 53:1092 | CFQ | hi | 539871/1000000 | 1272311810338657/2356700000000000 | 3912 | 53:183, 53:224, 53:1079, 53:180, 53:126, 53:139, 53:1051 |
| 53:1093 | CPQ | lo | 12311/125000 | 1160541/11783500 | 3914 | 53:183, 53:224, 53:1079, 53:180, 53:1073, 53:148, 53:1074 |
| 53:1106 | ACQ | lo | 77483/250000 | 77483/250000 | 4156 | 53:22, 53:1060, 53:1093 |
| 53:1109 | BEH | lo | 333473/1000000 | 333473/1000000 | 4218 | 53:943, 53:88, 53:1050 |
| 53:1110 | BEQ | lo | 311213/1000000 | 311213/1000000 | 4222 | 53:88, 53:843, 53:1061 |
| 53:1111 | BFH | lo | 316647/1000000 | 316647/1000000 | 4229 | 53:1042, 53:100, 53:200 |
| 53:1113 | BFS | lo | 1179/3125 | 1179/3125 | 4234 | 53:98, 53:118, 53:1067 |
| 53:1117 | CHR | lo | 419237/1000000 | 419237/1000000 | 4276 | 53:150, 53:1078, 53:224 |
| 53:1118 | EFH | lo | 290161/1000000 | 290161/1000000 | 4284 | 53:180, 53:1040, 53:200 |
| 53:1119 | EHR | lo | 42121/100000 | 42121/100000 | 4296 | 53:180, 53:1079, 53:224 |
| 53:1122 | HPR | lo | 84951/250000 | 84951/250000 | 4313 | 53:218, 53:224, 53:1058 |
| 53:1123 | HPS | lo | 340297/1000000 | 340297/1000000 | 4314 | 53:218, 53:226, 53:1059 |
| 53:1135 | BCR | lo | 55931/500000 | 52396577411/468402948500 | 636 | 53:70, 53:110, 53:1007, 53:1039, 53:87 |
| 53:1136 | CEH | lo | 51241/500000 | 8773189875/85606949941 | 638 | 53:70, 53:1119, 53:1109, 53:134, 53:93 |
| 53:1137 | BER | lo | 30639/250000 | 27888110755/227553446344 | 640 | 53:1135, 53:1119, 53:110, 53:134, 53:153 |
| 53:1142 | BRS | lo | 21451/200000 | 19589628651/182644250000 | 854 | 53:1137, 53:1047, 53:110, 53:196, 53:183 |
| 53:1146 | CFR | lo | 2203/20000 | 37561186191/341000000000 | 2548 | 53:1078, 53:1092 |
| 53:1148 | FPR | lo | 3779/20000 | 8054006091/42625000000 | 2610 | 53:1122, 53:199 |
| 53:1152 | BQS | lo | 92463/250000 | 19388925566451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:1113, 53:112 |
| 53:1153 | PQR | lo | 30761/200000 | 8062984388817/52423356869000 | 2963 | 53:41, 53:200, 53:52, 53:44, 53:60, 53:1148, 53:1122 |
| 53:1154 | PQS | lo | 30861/200000 | 8089238288817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:1067, 53:1123 |
| 53:1155 | APQ | lo | 23689/200000 | 21230877/179246600 | 3061 | 53:73, 53:140, 53:98, 53:76, 53:292, 53:1106, 53:44 |
| 53:1156 | EFP | lo | 137363/1000000 | 30777327/224058250 | 3123 | 53:75, 53:148, 53:943, 53:76, 53:1009, 53:126, 53:1118 |
| 53:1157 | EPQ | lo | 23257/200000 | 52109424387/448116500000 | 3126 | 53:75, 53:148, 53:943, 53:76, 53:1110, 53:1076, 53:180 |
| 53:1159 | QRS | lo | 98543/1000000 | 28820421/292465000 | 3361 | 53:97, 53:200, 53:1042, 53:100, 53:1142, 53:216, 53:1047 |
| 53:1162 | FPS | lo | 191289/1000000 | 23500105735983/122851296731000 | 3483 | 53:111, 53:1122, 53:116, 53:943, 53:1113, 53:204, 53:216 |
| 53:1171 | CEQ | lo | 48509/500000 | 1511935869/15584000000 | 3600 | 53:113, 53:226, 53:1152, 53:1042, 53:70, 53:1136, 53:136 |
| 53:1173 | CQR | lo | 233269/1000000 | 50893761231/218176000000 | 3605 | 53:113, 53:226, 53:1152, 53:1042, 53:1135, 53:1117, 53:166 |
| 53:1174 | EQR | lo | 47049/200000 | 5132482623/21817600000 | 3611 | 53:113, 53:226, 53:1152, 53:1042, 53:1137, 53:1119, 53:196 |
| 53:1186 | CFQ | hi | 269933/500000 | 1272301310338657/2356700000000000 | 3912 | 53:183, 53:224, 53:1174, 53:180, 53:126, 53:139, 53:1146 |
| 53:1201 | BEF | lo | 323363/1000000 | 323363/1000000 | 4214 | 53:98, 53:88, 53:1156 |
| 53:1202 | BEQ | lo | 62243/200000 | 62243/200000 | 4222 | 53:88, 53:843, 53:1157 |
| 53:1204 | BFS | lo | 377289/1000000 | 377289/1000000 | 4234 | 53:98, 53:118, 53:1162 |
| 53:1208 | CHR | lo | 419269/1000000 | 419269/1000000 | 4276 | 53:150, 53:1173, 53:224 |
| 53:1210 | EHR | lo | 84249/200000 | 84249/200000 | 4296 | 53:180, 53:1174, 53:224 |
| 53:1213 | HPR | lo | 67961/200000 | 67961/200000 | 4313 | 53:218, 53:224, 53:1153 |
| 53:1214 | HPS | lo | 68061/200000 | 68061/200000 | 4314 | 53:218, 53:226, 53:1154 |
| 53:1226 | BCR | lo | 111867/1000000 | 26199441399/234201474250 | 636 | 53:70, 53:110, 53:1007, 53:1137, 53:87 |
| 53:1228 | BER | lo | 61281/500000 | 111558464415/910213785376 | 640 | 53:1226, 53:1210, 53:110, 53:134, 53:153 |
| 53:1235 | CFR | lo | 55083/500000 | 56350092523/511500000000 | 2548 | 53:1173, 53:1186 |
| 53:1238 | BQS | lo | 184927/500000 | 19389009266451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:1204, 53:112 |
| 53:1239 | PQS | lo | 154309/1000000 | 8089396388817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:1162, 53:1214 |
| 53:1240 | EPQ | lo | 58143/500000 | 52109804069/448116500000 | 3126 | 53:75, 53:148, 53:943, 53:76, 53:1202, 53:1171, 53:180 |
| 53:1244 | FPS | lo | 47823/250000 | 2937565443951/15356412091375 | 3483 | 53:111, 53:1213, 53:116, 53:943, 53:1204, 53:204, 53:216 |
| 53:1254 | CQR | lo | 58321/250000 | 101793998863/436352000000 | 3605 | 53:113, 53:226, 53:1238, 53:1042, 53:1226, 53:1208, 53:166 |
| 53:1255 | EQR | lo | 235261/1000000 | 2933049489/12467200000 | 3611 | 53:113, 53:226, 53:1238, 53:1042, 53:1228, 53:1210, 53:196 |
| 53:1266 | CFQ | hi | 67483/125000 | 1272296510338657/2356700000000000 | 3912 | 53:183, 53:224, 53:1255, 53:180, 53:126, 53:139, 53:1235 |
| 53:1276 | BEQ | lo | 19451/62500 | 19451/62500 | 4222 | 53:88, 53:843, 53:1240 |
| 53:1277 | BFS | lo | 94323/250000 | 94323/250000 | 4234 | 53:98, 53:118, 53:1244 |
| 53:1281 | CHR | lo | 104821/250000 | 104821/250000 | 4276 | 53:150, 53:1254, 53:224 |
| 53:1282 | EHR | lo | 421261/1000000 | 421261/1000000 | 4296 | 53:180, 53:1255, 53:224 |
| 53:1284 | HPS | lo | 340309/1000000 | 340309/1000000 | 4314 | 53:218, 53:226, 53:1239 |
| 53:1291 | BCR | lo | 111869/1000000 | 52399870821/468402948500 | 636 | 53:70, 53:110, 53:1007, 53:1228, 53:87 |
| 53:1292 | CEH | lo | 102489/1000000 | 8773782750/85606949941 | 638 | 53:70, 53:1282, 53:1109, 53:134, 53:93 |
| 53:1293 | BER | lo | 24513/200000 | 111561096809/910213785376 | 640 | 53:1291, 53:1282, 53:110, 53:134, 53:153 |
| 53:1296 | BRS | lo | 107257/1000000 | 15671907417/146115400000 | 854 | 53:1293, 53:1047, 53:110, 53:196, 53:183 |
| 53:1298 | CFR | lo | 110173/1000000 | 440265229/3996093750 | 2548 | 53:1254, 53:1266 |
| 53:1301 | PQS | lo | 15431/100000 | 8089461488817/52423356869000 | 2964 | 53:41, 53:200, 53:52, 53:44, 53:62, 53:1244, 53:1284 |
| 53:1303 | FPS | lo | 191293/1000000 | 23500650978483/122851296731000 | 3483 | 53:111, 53:1213, 53:116, 53:943, 53:1277, 53:204, 53:216 |
| 53:1311 | CEQ | lo | 97021/1000000 | 42335508303/436352000000 | 3600 | 53:113, 53:226, 53:1238, 53:1042, 53:70, 53:1292, 53:136 |
| 53:1312 | CQR | lo | 23329/100000 | 12724608221/54544000000 | 3605 | 53:113, 53:226, 53:1238, 53:1042, 53:1291, 53:1281, 53:166 |
| 53:1313 | EQR | lo | 58817/250000 | 102659830447/436352000000 | 3611 | 53:113, 53:226, 53:1238, 53:1042, 53:1293, 53:1282, 53:196 |
| 53:1319 | CFQ | hi | 539863/1000000 | 1272294410338657/2356700000000000 | 3912 | 53:183, 53:224, 53:1313, 53:180, 53:126, 53:139, 53:1298 |
| 53:1325 | BFS | lo | 377293/1000000 | 377293/1000000 | 4234 | 53:98, 53:118, 53:1303 |
| 53:1326 | CHR | lo | 41929/100000 | 41929/100000 | 4276 | 53:150, 53:1312, 53:224 |
| 53:1327 | EHR | lo | 105317/250000 | 105317/250000 | 4296 | 53:180, 53:1313, 53:224 |
| 53:1328 | HPS | lo | 34031/100000 | 34031/100000 | 4314 | 53:218, 53:226, 53:1301 |
| 53:1335 | BCR | lo | 11187/100000 | 20960145933/187361179400 | 636 | 53:70, 53:110, 53:1007, 53:1293, 53:87 |
| 53:1337 | BER | lo | 122567/1000000 | 13945287645/113776723172 | 640 | 53:1335, 53:1327, 53:110, 53:134, 53:153 |
| 53:1342 | BQS | lo | 73971/200000 | 19389046466451/52423356869000 | 2940 | 53:41, 53:200, 53:52, 53:44, 53:14, 53:1325, 53:112 |
| 53:1349 | CQR | lo | 233293/1000000 | 4071927399/17454080000 | 3605 | 53:113, 53:226, 53:1342, 53:1042, 53:1335, 53:1326, 53:166 |
| 53:1350 | EQR | lo | 235271/1000000 | 10266138207/43635200000 | 3611 | 53:113, 53:226, 53:1342, 53:1042, 53:1337, 53:1327, 53:196 |
| 53:1355 | CHR | lo | 419293/1000000 | 419293/1000000 | 4276 | 53:150, 53:1349, 53:224 |
| 53:1356 | EHR | lo | 421271/1000000 | 421271/1000000 | 4296 | 53:180, 53:1350, 53:224 |
| 53:1363 | CQR | lo | 116647/500000 | 40719495903/174540800000 | 3605 | 53:113, 53:226, 53:1342, 53:1042, 53:1335, 53:1355, 53:166 |
| 53:1364 | EQR | lo | 235273/1000000 | 41064774741/174540800000 | 3611 | 53:113, 53:226, 53:1342, 53:1042, 53:1337, 53:1356, 53:196 |
| 53:1365 | CHR | lo | 209647/500000 | 209647/500000 | 4276 | 53:150, 53:1363, 53:224 |
| 53:1366 | EHR | lo | 421273/1000000 | 421273/1000000 | 4296 | 53:180, 53:1364, 53:224 |
| 53:1371 | CQR | lo | 46659/200000 | 20359784937/87270400000 | 3605 | 53:113, 53:226, 53:1342, 53:1042, 53:1335, 53:1365, 53:166 |
| 53:1372 | EQR | lo | 117637/500000 | 41064922683/174540800000 | 3611 | 53:113, 53:226, 53:1342, 53:1042, 53:1337, 53:1366, 53:196 |
| 53:1374 | CHR | lo | 83859/200000 | 83859/200000 | 4276 | 53:150, 53:1371, 53:224 |
| 53:1375 | EHR | lo | 210637/500000 | 210637/500000 | 4296 | 53:180, 53:1372, 53:224 |
| 53:1377 | CFR | lo | 110179/1000000 | 7514229761/68200000000 | 2548 | 53:1371, 53:1319 |
| 53:1378 | CPR | lo | 13513/100000 | 1179285567/8727040000 | 3560 | 53:113, 53:1328, 53:118, 53:943, 53:1335, 53:1374, 53:166 |
| 53:1379 | CFQ | hi | 269931/500000 | 1272292610338657/2356700000000000 | 3912 | 53:183, 53:224, 53:1372, 53:180, 53:126, 53:139, 53:1377 |

## Stage 54

| Property | Value |
| --- | --- |
| Scope | root/AFQ+/BPS-/HQR+/APR+ |
| Packet | forest:root/AFQ+/BPS-/HQR+/APR+ |
| Index | 1 |
| Context | 16 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 53 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| b | 103767/1000000 | 58493/100000 | 103767/1000000 | 58493/100000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 391/1000 | 103767/1000000 | 391/1000 |
| f | 155651/500000 | 58493/100000 | 155651/500000 | 58493/100000 |
| h | 580747/1000000 | 1/1 | 580747/1000000 | 1/1 |
| p | 220537/1000000 | 158493/200000 | 220537/1000000 | 719151/1000000 |
| q | 22907/200000 | 334397/500000 | 22907/200000 | 152513/250000 |
| u | 103767/1000000 | 75479/200000 | 103767/1000000 | 75479/200000 |
| v | 493737/1000000 | 841007/1000000 | 493737/1000000 | 841007/1000000 |
| r | 710039/1000000 | 1/1 | 743023/1000000 | 1/1 |
| w | 241499/500000 | 104293/125000 | 525041/1000000 | 104293/125000 |
| j | 13857/20000 | 13636/15625 | 13857/20000 | 13636/15625 |
| k | 549193/1000000 | 1/1 | 76887/125000 | 1/1 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 73 | A_BPS | bitt ["actual-area","BPS",[]] | `-1/1 * p * k + 1/1 * b * k + 1/1 * q * j + -1/1 * b * q + -93/1000` |
| 98 | A_CRS | bitt ["actual-area","CRS",[]] | `1/1 * r * k + -1/1 * c * k + -1/1 * w * j + 1/1 * c * w + -93/1000` |
| 115 | A_ERS | bitt ["actual-area","ERS",[]] | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 135 | A_QRS | bitt ["actual-area","QRS",[]] | `1/1 * r * k + -1/1 * v * r + -1/1 * u * k + -1/1 * w * j + 1/1 * u * w + 1/1 * v * j + -93/1000` |
| 1021 | AREA_lo_EHR | bitt ["earlier-area",{"direction":"lo","ref":"53:1375","triangle":"EHR","value":"210637/500000"}] | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -210637/500000` |
| 1051 | AREA_lo_HPR | bitt ["earlier-area",{"direction":"lo","ref":"53:1213","triangle":"HPR","value":"67961/200000"}] | `1/1 * p * w + -1/1 * h * p + -1/1 * q * r + 1/1 * h * r + -67961/200000` |
| 1053 | AREA_lo_HPS | bitt ["earlier-area",{"direction":"lo","ref":"53:1328","triangle":"HPS","value":"34031/100000"}] | `1/1 * p * k + -1/1 * h * p + -1/1 * q * j + 1/1 * h * j + -34031/100000` |
| 1057 | AREA_lo_HRS | bitt ["earlier-area",{"direction":"lo","ref":"53:1047","triangle":"HRS","value":"113609/1000000"}] | `1/1 * r * k + -1/1 * h * r + -1/1 * w * j + 1/1 * h * j + -113609/1000000` |
| 1065 | AREA_lo_QRS | bitt ["earlier-area",{"direction":"lo","ref":"53:1159","triangle":"QRS","value":"98543/1000000"}] | `1/1 * r * k + -1/1 * v * r + -1/1 * u * k + -1/1 * w * j + 1/1 * u * w + 1/1 * v * j + -98543/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 1021 | w | 241499/500000 | 104293/125000 | 525041/1000000 | 104293/125000 | 525041/1000000 | 104293/125000 | `(1/1, -33167329889/50000000000); (1/1, -867293229867/1000000000000); (1/1, -784913616913/1000000000000); (1/1, -988860249/1000000000); (1/1, -525041/1000000); (1/1, -406137/500000)` |
| 1 | 1051 | q | 22907/200000 | 334397/500000 | 22907/200000 | 77957715341/125000000000 | 22907/200000 | 311831/500000 | `(-710039/1000000, 60262785011/1000000000000); (-710039/1000000, 265487967017/1000000000000); (-710039/1000000, 28402963843/1000000000000); (-710039/1000000, -1230876787/200000000000); (-1/1, 114328382939/500000000000); (-1/1, 555448967017/1000000000000); (-1/1, 19679694471/100000000000); (-1/1, 56761323213/200000000000); (-710039/1000000, 64237770361/500000000000); (-710039/1000000, 41712590341/125000000000); (-710039/1000000, 136757382869/500000000000); (-710039/1000000, 5973935449/25000000000); (-1/1, 296869521589/1000000000000); (-1/1, 77957715341/125000000000); (-1/1, 88381749321/200000000000); (-1/1, 13222960449/25000000000)` |
| 2 | 1053 | q | 22907/200000 | 311831/500000 | 22907/200000 | 266197/436352 | 22907/200000 | 152513/250000 | `(-13857/20000, 13775433613/250000000000); (-13857/20000, 253120376641/1000000000000); (-13857/20000, 1852755917/50000000000); (-13857/20000, -941753851/200000000000); (-13636/15625, 15955140539/100000000000); (-13636/15625, 432974376641/1000000000000); (-13636/15625, 70752394639/500000000000); (-13636/15625, 35029046149/200000000000); (-13857/20000, 154521357811/1000000000000); (-13857/20000, 17627/50000); (-13857/20000, 78860777519/200000000000); (-13636/15625, 258971028749/1000000000000); (-13636/15625, 266197/500000); (-13636/15625, 498753558533/1000000000000)` |
| 3 | 1057 | k | 549193/1000000 | 1/1 | 6392959076/11094359375 | 1/1 | 115247/200000 | 1/1 | `(710039/1000000, -487366117033/1000000000000); (710039/1000000, -9891453137/20000000000); (1/1, -6557600979/10000000000); (1/1, -15690673137/20000000000); (710039/1000000, -701666700583/1000000000000); (710039/1000000, -1772183101/2500000000); (1/1, -17401213629/20000000000); (1/1, -2497085601/2500000000); (710039/1000000, -477347170109/1000000000000); (710039/1000000, -1598239769/3906250000); (1/1, -2522426371/3906250000); (1/1, -10923599701/15625000000); (710039/1000000, -747277135421/1000000000000); (710039/1000000, -165790856/244140625); (1/1, -1788420149/1953125000); (1/1, -15141255409/15625000000)` |
| 4 | 1065 | k | 115247/200000 | 1/1 | 182732023881/303136000000 | 1/1 | 120561/200000 | 1/1 | `(9473/15625, -52040321587/125000000000); (83161/250000, -68164163487/250000000000); (9473/15625, -211145898363/500000000000); (83161/250000, -139312938989/500000000000); (896233/1000000, -559487046953/1000000000000); (124521/200000, -83164225641/200000000000); (896233/1000000, -666151027453/1000000000000); (124521/200000, -104497021741/200000000000); (9473/15625, -119705542369/200000000000); (83161/250000, -370227831813/1000000000000); (9473/15625, -4835975487/8000000000); (83161/250000, -376197055843/1000000000000); (896233/1000000, -370846093051/500000000000); (124521/200000, -51339230607/100000000000); (896233/1000000, -424178083301/500000000000); (124521/200000, -62005628657/100000000000); (9473/15625, -52744090289/125000000000); (83161/250000, -69571700891/250000000000); (9473/15625, -182732023881/500000000000); (83161/250000, -110899064507/500000000000); (896233/1000000, -565117196569/1000000000000); (124521/200000, -421451277821/1000000000000); (896233/1000000, -609323278489/1000000000000); (124521/200000, -465657359741/1000000000000); (9473/15625, -659787243223/1000000000000); (83161/250000, -431487363191/1000000000000); (9473/15625, -603298568673/1000000000000); (83161/250000, -374998688641/1000000000000); (896233/1000000, -20073792937/25000000000); (124521/200000, -71831479681/125000000000); (896233/1000000, -4235788997/5000000000); (124521/200000, -77357239921/125000000000)` |
| 5 | 73 | p | 220537/1000000 | 158493/200000 | 220537/1000000 | 438642821159/602805000000 | 220537/1000000 | 72767/100000 | `(-120561/200000, 231386799/6250000000); (-120561/200000, 5439186917/20000000000); (-120561/200000, 328922528751/1000000000000); (-120561/200000, 32543554049/100000000000); (-120561/200000, 5762146573/100000000000); (-120561/200000, 14627946187/50000000000); (-120561/200000, 438642821159/1000000000000); (-120561/200000, 217577916449/500000000000); (-1/1, 15647524281/200000000000); (-1/1, 1260726543/2500000000); (-1/1, 92534565579/250000000000); (-1/1, 1743021287/3125000000); (-1/1, 19767439859/200000000000); (-1/1, 52489019509/100000000000); (-1/1, 119964638681/250000000000); (-1/1, 83435888031/125000000000)` |
| 6 | 98 | r | 710039/1000000 | 1/1 | 357102167343/500000000000 | 1/1 | 178551/250000 | 1/1 | `(120561/200000, -249461527953/500000000000); (120561/200000, -10690773137/20000000000); (120561/200000, -136395044061/250000000000); (120561/200000, -1098840601/2500000000); (120561/200000, -7416922249/12500000000); (120561/200000, -614227911/976562500); (120561/200000, -34782014101/50000000000); (120561/200000, -9212442909/15625000000); (1/1, -357102167343/500000000000); (1/1, -18634673137/20000000000); (1/1, -47553840939/62500000000); (1/1, -2091828101/2500000000); (1/1, -8086350587/10000000000); (1/1, -16033818451/15625000000); (1/1, -1138651951/1250000000); (1/1, -240915856/244140625)` |
| 7 | 115 | r | 178551/250000 | 1/1 | 237187919/321960000 | 1/1 | 736699/1000000 | 1/1 | `(249519/500000, -4626436909/10000000000); (42361/200000, -5272686137/20000000000); (249519/500000, -7352825489/20000000000); (42361/200000, -210789863/1250000000); (249519/500000, -2103169941/3906250000); (42361/200000, -280998161/976562500); (249519/500000, -7797476097/15625000000); (42361/200000, -3880766909/15625000000); (896233/1000000, -8598386909/10000000000); (609/1000, -13216586137/20000000000); (896233/1000000, -15296725489/20000000000); (609/1000, -707283613/1250000000); (896233/1000000, -14618851639/15625000000); (609/1000, -10702142451/15625000000); (896233/1000000, -3500911993/3906250000); (609/1000, -315216837/488281250)` |
| 8 | 135 | k | 120561/200000 | 1/1 | 191171147191/316466000000 | 1/1 | 604081/1000000 | 1/1 | `(158233/250000, -105985650279/250000000000); (44913/125000, -2189661581/7812500000); (158233/250000, -219585021673/500000000000); (44913/125000, -147752062299/500000000000); (896233/1000000, -553944046953/1000000000000); (124521/200000, -82055625641/200000000000); (896233/1000000, -660608027453/1000000000000); (124521/200000, -103388421741/200000000000); (158233/250000, -121229548053/200000000000); (44913/125000, -377847860233/1000000000000); (158233/250000, -124275036499/200000000000); (44913/125000, -393075302463/1000000000000); (896233/1000000, -368074593051/500000000000); (124521/200000, -50784930607/100000000000); (896233/1000000, -421406583301/500000000000); (124521/200000, -61451328657/100000000000); (158233/250000, -107393187683/250000000000); (44913/125000, -17869176999/62500000000); (158233/250000, -191171147191/500000000000); (44913/125000, -119338187817/500000000000); (896233/1000000, -559574196569/1000000000000); (124521/200000, -415908277821/1000000000000); (896233/1000000, -603780278489/1000000000000); (124521/200000, -460114359741/1000000000000); (158233/250000, -667407271643/1000000000000); (44913/125000, -439107391611/1000000000000); (158233/250000, -620176815293/1000000000000); (44913/125000, -391876935261/1000000000000); (896233/1000000, -19935217937/25000000000); (124521/200000, -71138604681/125000000000); (896233/1000000, -4208073997/5000000000); (124521/200000, -76664364921/125000000000)` |
| 9 | 1065 | k | 604081/1000000 | 1/1 | 193942647191/316466000000 | 1/1 | 306419/500000 | 1/1 | `(158233/250000, -107371400279/250000000000); (44913/125000, -4465932537/15625000000); (158233/250000, -222356521673/500000000000); (44913/125000, -150523562299/500000000000); (896233/1000000, -559487046953/1000000000000); (124521/200000, -83164225641/200000000000); (896233/1000000, -666151027453/1000000000000); (124521/200000, -104497021741/200000000000); (158233/250000, -122338148053/200000000000); (44913/125000, -383390860233/1000000000000); (158233/250000, -125383636499/200000000000); (44913/125000, -398618302463/1000000000000); (896233/1000000, -370846093051/500000000000); (124521/200000, -51339230607/100000000000); (896233/1000000, -424178083301/500000000000); (124521/200000, -62005628657/100000000000); (158233/250000, -108778937683/250000000000); (44913/125000, -18215614499/62500000000); (158233/250000, -193942647191/500000000000); (44913/125000, -122109687817/500000000000); (896233/1000000, -565117196569/1000000000000); (124521/200000, -421451277821/1000000000000); (896233/1000000, -609323278489/1000000000000); (124521/200000, -465657359741/1000000000000); (158233/250000, -672950271643/1000000000000); (44913/125000, -444650391611/1000000000000); (158233/250000, -625719815293/1000000000000); (44913/125000, -397419935261/1000000000000); (896233/1000000, -20073792937/25000000000); (124521/200000, -71831479681/125000000000); (896233/1000000, -4235788997/5000000000); (124521/200000, -77357239921/125000000000)` |
| 10 | 73 | p | 220537/1000000 | 72767/100000 | 220537/1000000 | 110256108897/153209500000 | 220537/1000000 | 719643/1000000 | `(-306419/500000, 38062982151/1000000000000); (-306419/500000, 13891397427/50000000000); (-306419/500000, 164981811531/500000000000); (-306419/500000, 16565207159/50000000000); (-306419/500000, 58662560041/1000000000000); (-306419/500000, 29842752643/100000000000); (-306419/500000, 43968391547/100000000000); (-306419/500000, 110256108897/250000000000); (-1/1, 15647524281/200000000000); (-1/1, 1260726543/2500000000); (-1/1, 92534565579/250000000000); (-1/1, 1743021287/3125000000); (-1/1, 19767439859/200000000000); (-1/1, 52489019509/100000000000); (-1/1, 119964638681/250000000000); (-1/1, 83435888031/125000000000)` |
| 11 | 115 | r | 736699/1000000 | 1/1 | 7553485489/10181420000 | 1/1 | 741889/1000000 | 1/1 | `(509071/1000000, -4726766909/10000000000); (110919/500000, -5473346137/20000000000); (509071/1000000, -7553485489/20000000000); (110919/500000, -223331113/1250000000); (509071/1000000, -8569445389/15625000000); (110919/500000, -4652736201/15625000000); (509071/1000000, -3977120861/7812500000); (110919/500000, -2018766267/7812500000); (896233/1000000, -8598386909/10000000000); (609/1000, -13216586137/20000000000); (896233/1000000, -15296725489/20000000000); (609/1000, -707283613/1250000000); (896233/1000000, -14618851639/15625000000); (609/1000, -10702142451/15625000000); (896233/1000000, -3500911993/3906250000); (609/1000, -315216837/488281250)` |
| 12 | 1065 | k | 306419/500000 | 1/1 | 49031265089/79765250000 | 1/1 | 307347/500000 | 1/1 | `(319061/500000, -216024048073/500000000000); (182247/500000, -144191088699/500000000000); (319061/500000, -112269467419/250000000000); (182247/500000, -19088246933/62500000000); (896233/1000000, -559487046953/1000000000000); (124521/200000, -83164225641/200000000000); (896233/1000000, -666151027453/1000000000000); (124521/200000, -104497021741/200000000000); (319061/500000, -122850647059/200000000000); (182247/500000, -385953355263/1000000000000); (319061/500000, -25251320353/40000000000); (182247/500000, -402983128793/1000000000000); (896233/1000000, -370846093051/500000000000); (124521/200000, -51339230607/100000000000); (896233/1000000, -424178083301/500000000000); (124521/200000, -62005628657/100000000000); (319061/500000, -218839122881/500000000000); (182247/500000, -147006163507/500000000000); (319061/500000, -49031265089/125000000000); (182247/500000, -62146050491/250000000000); (896233/1000000, -565117196569/1000000000000); (124521/200000, -421451277821/1000000000000); (896233/1000000, -609323278489/1000000000000); (124521/200000, -465657359741/1000000000000); (319061/500000, -675512766673/1000000000000); (182247/500000, -447212886641/1000000000000); (319061/500000, -630084641623/1000000000000); (182247/500000, -401784761591/1000000000000); (896233/1000000, -20073792937/25000000000); (124521/200000, -71831479681/125000000000); (896233/1000000, -4235788997/5000000000); (124521/200000, -77357239921/125000000000)` |
| 13 | 73 | p | 220537/1000000 | 719643/1000000 | 220537/1000000 | 110527516417/153673500000 | 220537/1000000 | 719237/1000000 | `(-307347/500000, 38255573703/1000000000000); (-307347/500000, 13945678931/50000000000); (-307347/500000, 165078107307/500000000000); (-307347/500000, 16619488663/50000000000); (-307347/500000, 58855151593/1000000000000); (-307347/500000, 29951315651/100000000000); (-307347/500000, 219938253511/500000000000); (-307347/500000, 110527516417/250000000000); (-1/1, 15647524281/200000000000); (-1/1, 1260726543/2500000000); (-1/1, 92534565579/250000000000); (-1/1, 1743021287/3125000000); (-1/1, 19767439859/200000000000); (-1/1, 52489019509/100000000000); (-1/1, 119964638681/250000000000); (-1/1, 83435888031/125000000000)` |
| 14 | 115 | r | 741889/1000000 | 1/1 | 7590605489/10218540000 | 1/1 | 371413/500000 | 1/1 | `(510927/1000000, -4745326909/10000000000); (111847/500000, -5510466137/20000000000); (510927/1000000, -7590605489/20000000000); (111847/500000, -225651113/1250000000); (510927/1000000, -8598445389/15625000000); (111847/500000, -4681736201/15625000000); (510927/1000000, -3991620861/7812500000); (111847/500000, -2033266267/7812500000); (896233/1000000, -8598386909/10000000000); (609/1000, -13216586137/20000000000); (896233/1000000, -15296725489/20000000000); (609/1000, -707283613/1250000000); (896233/1000000, -14618851639/15625000000); (609/1000, -10702142451/15625000000); (896233/1000000, -3500911993/3906250000); (609/1000, -315216837/488281250)` |
| 15 | 1065 | k | 307347/500000 | 1/1 | 393038144271/639059000000 | 1/1 | 307513/500000 | 1/1 | `(639059/1000000, -86502145543/200000000000); (365431/1000000, -288844808967/1000000000000); (639059/1000000, -89973178647/200000000000); (365431/1000000, -306199974487/1000000000000); (896233/1000000, -559487046953/1000000000000); (124521/200000, -83164225641/200000000000); (896233/1000000, -666151027453/1000000000000); (124521/200000, -104497021741/200000000000); (639059/1000000, -38419741679/62500000000); (365431/1000000, -24150999177/62500000000); (639059/1000000, -9876109881/15625000000); (365431/1000000, -12617848511/31250000000); (896233/1000000, -370846093051/500000000000); (124521/200000, -51339230607/100000000000); (896233/1000000, -424178083301/500000000000); (124521/200000, -62005628657/100000000000); (639059/1000000, -438140877331/1000000000000); (365431/1000000, -294474958583/1000000000000); (639059/1000000, -393038144271/1000000000000); (365431/1000000, -249372225523/1000000000000); (896233/1000000, -565117196569/1000000000000); (124521/200000, -421451277821/1000000000000); (896233/1000000, -609323278489/1000000000000); (124521/200000, -465657359741/1000000000000); (639059/1000000, -337987699121/500000000000); (365431/1000000, -44767551821/100000000000); (639059/1000000, -315436332591/500000000000); (365431/1000000, -8051455703/20000000000); (896233/1000000, -20073792937/25000000000); (124521/200000, -71831479681/125000000000); (896233/1000000, -4235788997/5000000000); (124521/200000, -77357239921/125000000000)` |
| 16 | 73 | p | 220537/1000000 | 719237/1000000 | 220537/1000000 | 110576065607/153756500000 | 220537/1000000 | 179791/250000 | `(-307513/500000, 38290024347/1000000000000); (-307513/500000, 13955388769/50000000000); (-307513/500000, 165095332629/500000000000); (-307513/500000, 16629198501/50000000000); (-307513/500000, 58889602237/1000000000000); (-307513/500000, 29970735327/100000000000); (-307513/500000, 219955478833/500000000000); (-307513/500000, 110576065607/250000000000); (-1/1, 15647524281/200000000000); (-1/1, 1260726543/2500000000); (-1/1, 92534565579/250000000000); (-1/1, 1743021287/3125000000); (-1/1, 19767439859/200000000000); (-1/1, 52489019509/100000000000); (-1/1, 119964638681/250000000000); (-1/1, 83435888031/125000000000)` |
| 17 | 115 | r | 371413/500000 | 1/1 | 7597245489/10225180000 | 1/1 | 742993/1000000 | 1/1 | `(511259/1000000, -4748646909/10000000000); (112013/500000, -5517106137/20000000000); (511259/1000000, -7597245489/20000000000); (112013/500000, -226066113/1250000000); (511259/1000000, -8603632889/15625000000); (112013/500000, -4686923701/15625000000); (511259/1000000, -3994214611/7812500000); (112013/500000, -2035860017/7812500000); (896233/1000000, -8598386909/10000000000); (609/1000, -13216586137/20000000000); (896233/1000000, -15296725489/20000000000); (609/1000, -707283613/1250000000); (896233/1000000, -14618851639/15625000000); (609/1000, -10702142451/15625000000); (896233/1000000, -3500911993/3906250000); (609/1000, -315216837/488281250)` |
| 18 | 1065 | k | 307513/500000 | 1/1 | 9829464811/15980650000 | 1/1 | 123017/200000 | 1/1 | `(319613/500000, -216296590897/500000000000); (182799/500000, -144463631523/500000000000); (319613/500000, -112501585351/250000000000); (182799/500000, -299160569/976562500); (896233/1000000, -559487046953/1000000000000); (124521/200000, -83164225641/200000000000); (896233/1000000, -666151027453/1000000000000); (124521/200000, -104497021741/200000000000); (319613/500000, -614798320943/1000000000000); (182799/500000, -386498440911/1000000000000); (319613/500000, -632211480553/1000000000000); (182799/500000, -403911600521/1000000000000); (896233/1000000, -370846093051/500000000000); (124521/200000, -51339230607/100000000000); (896233/1000000, -424178083301/500000000000); (124521/200000, -62005628657/100000000000); (319613/500000, -43822333141/100000000000); (182799/500000, -147278706331/500000000000); (319613/500000, -9829464811/25000000000); (182799/500000, -62378168423/250000000000); (896233/1000000, -565117196569/1000000000000); (124521/200000, -421451277821/1000000000000); (896233/1000000, -609323278489/1000000000000); (124521/200000, -465657359741/1000000000000); (319613/500000, -676057852321/1000000000000); (182799/500000, -447757972289/1000000000000); (319613/500000, -631013113351/1000000000000); (182799/500000, -402713233319/1000000000000); (896233/1000000, -20073792937/25000000000); (124521/200000, -71831479681/125000000000); (896233/1000000, -4235788997/5000000000); (124521/200000, -77357239921/125000000000)` |
| 19 | 73 | p | 220537/1000000 | 179791/250000 | 220537/1000000 | 221169386649/307542500000 | 220537/1000000 | 719151/1000000 | `(-123017/200000, 191480733/5000000000); (-123017/200000, 223313829/800000000); (-123017/200000, 330196787511/1000000000000); (-123017/200000, 33261848089/100000000000); (-123017/200000, 5889572449/100000000000); (-123017/200000, 14987093207/50000000000); (-123017/200000, 439917079919/1000000000000); (-123017/200000, 221169386649/500000000000); (-1/1, 15647524281/200000000000); (-1/1, 1260726543/2500000000); (-1/1, 92534565579/250000000000); (-1/1, 1743021287/3125000000); (-1/1, 19767439859/200000000000); (-1/1, 52489019509/100000000000); (-1/1, 119964638681/250000000000); (-1/1, 83435888031/125000000000)` |
| 20 | 115 | r | 742993/1000000 | 1/1 | 7598425489/10226360000 | 1/1 | 743023/1000000 | 1/1 | `(255659/500000, -4749236909/10000000000); (44817/200000, -5518286137/20000000000); (255659/500000, -7598425489/20000000000); (44817/200000, -226139863/1250000000); (255659/500000, -2151138691/3906250000); (44817/200000, -585980697/1953125000); (255659/500000, -7989351097/15625000000); (44817/200000, -4072641909/15625000000); (896233/1000000, -8598386909/10000000000); (609/1000, -13216586137/20000000000); (896233/1000000, -15296725489/20000000000); (609/1000, -707283613/1250000000); (896233/1000000, -14618851639/15625000000); (609/1000, -10702142451/15625000000); (896233/1000000, -3500911993/3906250000); (609/1000, -315216837/488281250)` |
| 21 | 1065 | k | 123017/200000 | 1/1 | 7864076453/12785120000 | 1/1 | 76887/125000 | 1/1 | `(79907/125000, -27037999619/62500000000); (91407/250000, -72235518789/250000000000); (79907/125000, -225015785807/500000000000); (91407/250000, -153182826433/500000000000); (896233/1000000, -559487046953/1000000000000); (124521/200000, -83164225641/200000000000); (896233/1000000, -666151027453/1000000000000); (124521/200000, -104497021741/200000000000); (79907/125000, -614813133053/1000000000000); (91407/250000, -386513253021/1000000000000); (79907/125000, -632236710763/1000000000000); (91407/250000, -403936830731/1000000000000); (896233/1000000, -370846093051/500000000000); (124521/200000, -51339230607/100000000000); (896233/1000000, -424178083301/500000000000); (124521/200000, -62005628657/100000000000); (79907/125000, -2738988397/6250000000); (91407/250000, -73643056193/250000000000); (79907/125000, -7864076453/20000000000); (91407/250000, -124768951951/500000000000); (896233/1000000, -565117196569/1000000000000); (124521/200000, -421451277821/1000000000000); (896233/1000000, -609323278489/1000000000000); (124521/200000, -465657359741/1000000000000); (79907/125000, -676072664431/1000000000000); (91407/250000, -447772784399/1000000000000); (79907/125000, -631038343561/1000000000000); (91407/250000, -402738463529/1000000000000); (896233/1000000, -20073792937/25000000000); (124521/200000, -71831479681/125000000000); (896233/1000000, -4235788997/5000000000); (124521/200000, -77357239921/125000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 54:5 | ABF | hi | 554789/1000000 | earlier 53:5; ABF; hi; 554789/1000000 |
| 54:6 | ABH | lo | 93/1000 | occupants none |
| 54:8 | ABP | lo | 93/1000 | occupants none |
| 54:12 | ABR | lo | 279/1000 | occupants P |
| 54:14 | ABS | lo | 279/1000 | occupants P |
| 54:22 | ACP | lo | 93/1000 | occupants none |
| 54:41 | AFH | hi | 52423356869/100000000000 | vertex maximum 52423356869/100000000000 |
| 54:44 | AFQ | lo | 93/1000 | occupants none |
| 54:52 | AHQ | lo | 93/1000 | occupants none |
| 54:56 | AHS | lo | 172631/500000 | earlier 53:56; AHS; lo; 172631/500000 |
| 54:58 | APQ | lo | 23689/200000 | earlier 53:1155; APQ; lo; 23689/200000 |
| 54:60 | APR | lo | 93/1000 | occupants none |
| 54:62 | APS | lo | 93/1000 | occupants none |
| 54:70 | BCE | lo | 93/1000 | occupants none |
| 54:73 | BCF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 54:75 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 54:76 | BCP | lo | 93/1000 | occupants none |
| 54:84 | BEF | lo | 323363/1000000 | earlier 53:1201; BEF; lo; 323363/1000000 |
| 54:86 | BEH | lo | 333473/1000000 | earlier 53:1109; BEH; lo; 333473/1000000 |
| 54:87 | BEH | hi | 936805897/1000000000 | vertex maximum 936805897/1000000000 |
| 54:88 | BEP | lo | 93/1000 | occupants none |
| 54:90 | BEQ | lo | 19451/62500 | earlier 53:1276; BEQ; lo; 19451/62500 |
| 54:92 | BER | lo | 122567/1000000 | earlier 53:1337; BER; lo; 122567/1000000 |
| 54:93 | BER | hi | 425895593/625000000 | vertex maximum 425895593/625000000 |
| 54:96 | BFH | lo | 316647/1000000 | earlier 53:1111; BFH; lo; 316647/1000000 |
| 54:97 | BFH | hi | 58493/100000 | vertex maximum 58493/100000 |
| 54:98 | BFP | lo | 93/1000 | occupants none |
| 54:100 | BFQ | lo | 93/1000 | occupants none |
| 54:104 | BFS | lo | 377293/1000000 | earlier 53:1325; BFS; lo; 377293/1000000 |
| 54:105 | BFS | hi | 16032076291/25000000000 | vertex maximum 16032076291/25000000000 |
| 54:108 | BHQ | lo | 130647/1000000 | earlier 53:1042; BHQ; lo; 130647/1000000 |
| 54:109 | BHQ | hi | 360897/1000000 | earlier 53:109; BHQ; hi; 360897/1000000 |
| 54:110 | BHR | lo | 13857/20000 | occupants P, Q |
| 54:111 | BHR | hi | 122851296731/125000000000 | vertex maximum 122851296731/125000000000 |
| 54:112 | BHS | lo | 13857/20000 | occupants P, Q |
| 54:113 | BHS | hi | 13636/15625 | vertex maximum 13636/15625 |
| 54:116 | BPR | lo | 93/1000 | occupants none |
| 54:118 | BPS | lo | 93/1000 | occupants none |
| 54:122 | BQS | lo | 73971/200000 | earlier 53:1342; BQS; lo; 73971/200000 |
| 54:124 | BRS | lo | 107257/1000000 | earlier 53:1296; BRS; lo; 107257/1000000 |
| 54:126 | CEF | lo | 93/1000 | occupants none |
| 54:132 | CEQ | lo | 97021/1000000 | earlier 53:1311; CEQ; lo; 97021/1000000 |
| 54:133 | CEQ | hi | 265521/500000 | earlier 53:133; CEQ; hi; 265521/500000 |
| 54:134 | CER | lo | 93/1000 | occupants none |
| 54:136 | CES | lo | 93/1000 | occupants none |
| 54:139 | CFH | hi | 75894934271/100000000000 | vertex maximum 75894934271/100000000000 |
| 54:140 | CFP | lo | 93/1000 | occupants none |
| 54:143 | CFQ | hi | 269931/500000 | earlier 53:1379; CFQ; hi; 269931/500000 |
| 54:148 | CHP | lo | 93/1000 | occupants none |
| 54:150 | CHQ | lo | 93/1000 | occupants none |
| 54:152 | CHR | lo | 83859/200000 | earlier 53:1374; CHR; lo; 83859/200000 |
| 54:153 | CHR | hi | 28444180793/31250000000 | vertex maximum 28444180793/31250000000 |
| 54:158 | CPR | lo | 13513/100000 | earlier 53:1378; CPR; lo; 13513/100000 |
| 54:163 | CQR | hi | 666641/1000000 | earlier 53:163; CQR; hi; 666641/1000000 |
| 54:165 | CQS | hi | 5333/8000 | earlier 53:165; CQS; hi; 5333/8000 |
| 54:166 | CRS | lo | 93/1000 | occupants none |
| 54:169 | EFH | hi | 3491264557/5000000000 | vertex maximum 3491264557/5000000000 |
| 54:178 | EHP | lo | 24283/250000 | earlier 53:1050; EHP; lo; 24283/250000 |
| 54:180 | EHQ | lo | 93/1000 | occupants none |
| 54:182 | EHR | lo | 210637/500000 | earlier 53:1375; EHR; lo; 210637/500000 |
| 54:183 | EHR | hi | 730577/1000000 | vertex maximum 730577/1000000 |
| 54:192 | EQR | lo | 117637/500000 | earlier 53:1372; EQR; lo; 117637/500000 |
| 54:193 | EQR | hi | 544577/1000000 | earlier 53:193; EQR; hi; 544577/1000000 |
| 54:195 | EQS | hi | 610961/1000000 | earlier 53:195; EQS; hi; 610961/1000000 |
| 54:196 | ERS | lo | 93/1000 | occupants none |
| 54:200 | FHQ | lo | 93/1000 | occupants none |
| 54:204 | FHS | lo | 93/1000 | occupants none |
| 54:205 | FHS | hi | 248858189/1000000000 | octagon ["octagon-ear-cap","ABCERSFH","SFH",["FHA","Q"],"248858189/1000000000"] |
| 54:210 | FPS | lo | 191293/1000000 | earlier 53:1303; FPS; lo; 191293/1000000 |
| 54:216 | FRS | lo | 93/1000 | occupants none |
| 54:218 | HPQ | lo | 93/1000 | occupants none |
| 54:220 | HPR | lo | 67961/200000 | earlier 53:1213; HPR; lo; 67961/200000 |
| 54:222 | HPS | lo | 34031/100000 | earlier 53:1328; HPS; lo; 34031/100000 |
| 54:224 | HQR | lo | 93/1000 | occupants none |
| 54:226 | HQS | lo | 93/1000 | occupants none |
| 54:232 | PQS | lo | 15431/100000 | earlier 53:1301; PQS; lo; 15431/100000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 21 | fan | BHS = BHP + HPS + BPS | point P |
| 636 | plu | BCR * BEH = BCE * BHR + BCH * BER | circuit BCEHR |
| 638 | plu | BER * CEH = BCE * EHR + BEH * CER | circuit EBCHR |
| 640 | plu | BER * CHR = BCR * EHR + BHR * CER | circuit RBCEH |
| 785 | plu | BHQ * EFQ = BEQ * FHQ + BFQ * EHQ | circuit QBEFH |
| 843 | plu | BHQ * EHR = BEH * HQR + BHR * EHQ | circuit HBEQR |
| 854 | plu | BRS * EHR = BER * HRS + BHR * ERS | circuit RBEHS |
| 886 | plu | BFS * BHP = BFH * BPS + BFP * BHS | circuit BFHPS |
| 905 | plu | BFS * HRS = BHS * FRS + BRS * FHS | circuit SBFHR |
| 2486 | support | HPR * EHR >= 1023/1000 * (HPR - EHP) | pentagon HPCER |
| 2548 | support | CQR * CFQ >= 1023/1000 * (CQR - CFR) | pentagon CRSFQ |
| 2573 | support | EHR * EFH >= 1023/1000 * (EHR - EFR) | pentagon ERSFH |
| 2610 | support | HPR * FHP >= 1023/1000 * (HPR - FPR) | pentagon PRSFH |
| 2937 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BPQ; sign 1; vertices ABP 1; BFP 1; BHP 1 | container AFH; inner Q; line BP |
| 2939 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BQR; sign 1; vertices ABR 1; BFR 1; BHR 1 | container AFH; inner Q; line BR |
| 2940 | bary | outer AFH; fans FHQ, AHQ, AFQ; target BQS; sign 1; vertices ABS 1; BFS 1; BHS 1 | container AFH; inner Q; line BS |
| 2963 | bary | outer AFH; fans FHQ, AHQ, AFQ; target PQR; sign 1; vertices APR 1; FPR 1; HPR 1 | container AFH; inner Q; line PR |
| 2964 | bary | outer AFH; fans FHQ, AHQ, AFQ; target PQS; sign 1; vertices APS 1; FPS 1; HPS 1 | container AFH; inner Q; line PS |
| 3061 | bary | outer BCF; fans CFP, BFP, BCP; target APQ; sign -1; vertices ABQ -1; ACQ -1; AFQ -1 | container BCF; inner P; line AQ |
| 3123 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 3126 | bary | outer BCH; fans CHP, BHP, BCP; target EPQ; sign 1; vertices BEQ 1; CEQ 1; EHQ 1 | container BCH; inner P; line EQ |
| 3361 | bary | outer BFH; fans FHQ, BHQ, BFQ; target QRS; sign 1; vertices BRS 1; FRS 1; HRS 1 | container BFH; inner Q; line RS |
| 3435 | bary | outer BFS; fans FPS, BPS, BFP; target FHP; sign 1; vertices BFH 1; none 0; FHS 1 | container BFS; inner P; line FH |
| 3443 | bary | outer BFS; fans FPS, BPS, BFP; target HPS; sign -1; vertices BHS -1; FHS 1; none 0 | container BFS; inner P; line HS |
| 3483 | bary | outer BHR; fans HPR, BPR, BHP; target FPS; sign -1; vertices BFS -1; FHS -1; FRS -1 | container BHR; inner P; line FS |
| 3528 | bary | outer BHR; fans HQR, BQR, BHQ; target FQS; sign -1; vertices BFS -1; FHS -1; FRS -1 | container BHR; inner Q; line FS |
| 3555 | bary | outer BHS; fans HPS, BPS, BHP; target CEP; sign 1; vertices BCE 1; CEH 1; CES 1 | container BHS; inner P; line CE |
| 3560 | bary | outer BHS; fans HPS, BPS, BHP; target CPR; sign 1; vertices BCR 1; CHR 1; CRS 1 | container BHS; inner P; line CR |
| 3600 | bary | outer BHS; fans HQS, BQS, BHQ; target CEQ; sign 1; vertices BCE 1; CEH 1; CES 1 | container BHS; inner Q; line CE |
| 3605 | bary | outer BHS; fans HQS, BQS, BHQ; target CQR; sign 1; vertices BCR 1; CHR 1; CRS 1 | container BHS; inner Q; line CR |
| 3611 | bary | outer BHS; fans HQS, BQS, BHQ; target EQR; sign 1; vertices BER 1; EHR 1; ERS 1 | container BHS; inner Q; line ER |
| 3912 | bary | outer EHR; fans HQR, EQR, EHQ; target CFQ; sign 1; vertices CEF -1; CFH 1; CFR -1 | container EHR; inner Q; line CF |
| 3914 | bary | outer EHR; fans HQR, EQR, EHQ; target CPQ; sign -1; vertices CEP -1; CHP -1; CPR -1 | container EHR; inner Q; line CP |
| 4071 | bary | outer HPS; fans PQS, HQS, HPQ; target ABQ; sign 1; vertices ABH 1; ABP 1; ABS 1 | container HPS; inner Q; line AB |
| 4156 | four | 1 * ACP + 1 * APQ + -1 * ACQ + 1 * CPQ = 0 | vertices ACPQ |
| 4203 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 4214 | four | 1 * BEF + -1 * BFP + -1 * BEP + -1 * EFP = 0 | vertices BEFP |
| 4218 | four | 1 * BEH + -1 * BHP + -1 * BEP + -1 * EHP = 0 | vertices BEHP |
| 4222 | four | 1 * BEP + 1 * BPQ + -1 * BEQ + 1 * EPQ = 0 | vertices BEPQ |
| 4229 | four | 1 * BFH + -1 * BHQ + -1 * BFQ + -1 * FHQ = 0 | vertices BFHQ |
| 4233 | four | -1 * BFP + -1 * BPR + 1 * BFR + -1 * FPR = 0 | vertices BFPR |
| 4234 | four | -1 * BFP + -1 * BPS + 1 * BFS + -1 * FPS = 0 | vertices BFPS |
| 4276 | four | -1 * CHQ + -1 * CQR + 1 * CHR + -1 * HQR = 0 | vertices CHQR |
| 4284 | four | 1 * EFH + -1 * EHQ + -1 * EFQ + -1 * FHQ = 0 | vertices EFHQ |
| 4296 | four | -1 * EHQ + -1 * EQR + 1 * EHR + -1 * HQR = 0 | vertices EHQR |
| 4313 | four | 1 * HPQ + 1 * HQR + -1 * HPR + 1 * PQR = 0 | vertices HPQR |
| 4314 | four | 1 * HPQ + 1 * HQS + -1 * HPS + 1 * PQS = 0 | vertices HPQS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 54:240 | CEH | lo | 20601/200000 | 350957355/3407164744 | 638 | 54:70, 54:182, 54:86, 54:134, 54:93 |
| 54:242 | BHP | lo | 146399/1000000 | 2347080525/16032076291 | 886 | 54:96, 54:118, 54:98, 54:112, 54:105 |
| 54:243 | HRS | lo | 1813/15625 | 24159075/208208783 | 905 | 54:112, 54:216, 54:124, 54:204, 54:105 |
| 54:244 | BPQ | lo | 102473/1000000 | 5371982888817/52423356869000 | 2937 | 54:41, 54:200, 54:52, 54:44, 54:8, 54:98, 54:242 |
| 54:245 | EPQ | lo | 1163/10000 | 104232427379/896233000000 | 3126 | 54:75, 54:148, 54:242, 54:76, 54:90, 54:132, 54:180 |
| 54:253 | FHP | hi | 90273/200000 | 723631317431963/1603207629100000 | 3435 | 54:105, 54:210, 54:118, 54:98, 54:97, 54:205 |
| 54:257 | HPS | hi | 121219/200000 | 13802497879916/22772835640625 | 3443 | 54:105, 54:210, 54:118, 54:98, 54:113, 54:204 |
| 54:263 | CEP | lo | 47033/500000 | 82091937/872704000 | 3555 | 54:113, 54:222, 54:118, 54:242, 54:70, 54:240, 54:136 |
| 54:264 | CEQ | lo | 2431/25000 | 3394474851/34908160000 | 3600 | 54:113, 54:226, 54:122, 54:108, 54:70, 54:240, 54:136 |
| 54:275 | CPQ | lo | 49249/500000 | 2321319/23567000 | 3914 | 54:183, 54:224, 54:192, 54:180, 54:263, 54:148, 54:158 |
| 54:292 | ABQ | lo | 6077/50000 | 14732967/121219000 | 4071 | 54:257, 54:232, 54:226, 54:218, 54:6, 54:8, 54:14 |
| 54:297 | ACQ | lo | 309943/1000000 | 309943/1000000 | 4156 | 54:22, 54:58, 54:275 |
| 54:298 | BCH | lo | 332399/1000000 | 332399/1000000 | 4203 | 54:242, 54:76, 54:148 |
| 54:300 | BEH | lo | 336531/1000000 | 336531/1000000 | 4218 | 54:242, 54:88, 54:178 |
| 54:301 | BEQ | lo | 311773/1000000 | 311773/1000000 | 4222 | 54:88, 54:244, 54:245 |
| 54:306 | BCR | lo | 112271/1000000 | 105176198233/936805897000 | 636 | 54:70, 54:110, 54:298, 54:92, 54:87 |
| 54:307 | CEH | lo | 103423/1000000 | 352379325/3407164744 | 638 | 54:70, 54:182, 54:300, 54:134, 54:93 |
| 54:308 | BER | lo | 122753/1000000 | 55865951627/455106892688 | 640 | 54:306, 54:182, 54:110, 54:134, 54:153 |
| 54:310 | EFQ | lo | 52153/500000 | 12547963/120299000 | 785 | 54:301, 54:200, 54:100, 54:180, 54:109 |
| 54:311 | BHQ | lo | 32759/250000 | 3088143/23567000 | 843 | 54:300, 54:224, 54:110, 54:180, 54:183 |
| 54:315 | BRS | lo | 107693/1000000 | 4917395381/45661062500 | 854 | 54:308, 54:243, 54:110, 54:196, 54:183 |
| 54:317 | HRS | lo | 1814/15625 | 1861262475/16032076291 | 905 | 54:112, 54:216, 54:315, 54:204, 54:105 |
| 54:320 | FPR | lo | 189877/1000000 | 2589925749/13640000000 | 2610 | 54:220, 54:253 |
| 54:322 | PQR | lo | 153969/1000000 | 8071614788817/52423356869000 | 2963 | 54:41, 54:200, 54:52, 54:44, 54:60, 54:320, 54:220 |
| 54:323 | APQ | lo | 118473/1000000 | 26544897/224058250 | 3061 | 54:73, 54:140, 54:98, 54:76, 54:292, 54:297, 54:44 |
| 54:324 | EPQ | lo | 58197/500000 | 651976811/5601456250 | 3126 | 54:75, 54:148, 54:242, 54:76, 54:301, 54:264, 54:180 |
| 54:328 | CEP | lo | 9411/100000 | 11732973/124672000 | 3555 | 54:113, 54:222, 54:118, 54:242, 54:70, 54:307, 54:136 |
| 54:329 | CPR | lo | 67643/500000 | 11806502101/87270400000 | 3560 | 54:113, 54:222, 54:118, 54:242, 54:306, 54:152, 54:166 |
| 54:331 | CEQ | lo | 97417/1000000 | 2429042019/24934400000 | 3600 | 54:113, 54:226, 54:122, 54:311, 54:70, 54:307, 54:136 |
| 54:333 | CQR | lo | 116669/500000 | 8145420489/34908160000 | 3605 | 54:113, 54:226, 54:122, 54:311, 54:306, 54:152, 54:166 |
| 54:334 | EQR | lo | 117647/500000 | 2933461161/12467200000 | 3611 | 54:113, 54:226, 54:122, 54:311, 54:308, 54:182, 54:196 |
| 54:341 | CPQ | lo | 24631/250000 | 2321919/23567000 | 3914 | 54:183, 54:224, 54:334, 54:180, 54:328, 54:148, 54:329 |
| 54:347 | ACQ | lo | 309997/1000000 | 309997/1000000 | 4156 | 54:22, 54:323, 54:341 |
| 54:350 | BEQ | lo | 311867/1000000 | 311867/1000000 | 4222 | 54:88, 54:244, 54:324 |
| 54:351 | BFH | lo | 79259/250000 | 79259/250000 | 4229 | 54:311, 54:100, 54:200 |
| 54:355 | CHR | lo | 209669/500000 | 209669/500000 | 4276 | 54:150, 54:333, 54:224 |
| 54:356 | EFH | lo | 145153/500000 | 145153/500000 | 4284 | 54:180, 54:310, 54:200 |
| 54:357 | EHR | lo | 210647/500000 | 210647/500000 | 4296 | 54:180, 54:334, 54:224 |
| 54:360 | HPR | lo | 339969/1000000 | 339969/1000000 | 4313 | 54:218, 54:224, 54:322 |
| 54:370 | BCR | lo | 112337/1000000 | 105238024447/936805897000 | 636 | 54:70, 54:110, 54:298, 54:308, 54:87 |
| 54:371 | CEH | lo | 4137/40000 | 352388625/3407164744 | 638 | 54:70, 54:357, 54:300, 54:134, 54:93 |
| 54:372 | BER | lo | 61393/500000 | 55880977039/455106892688 | 640 | 54:370, 54:357, 54:110, 54:134, 54:153 |
| 54:374 | EFQ | lo | 10433/100000 | 12550877/120299000 | 785 | 54:350, 54:200, 54:100, 54:180, 54:109 |
| 54:377 | BRS | lo | 107709/1000000 | 4918125841/45661062500 | 854 | 54:372, 54:317, 54:110, 54:196, 54:183 |
| 54:378 | BHP | lo | 29291/200000 | 2347984950/16032076291 | 886 | 54:351, 54:118, 54:98, 54:112, 54:105 |
| 54:380 | HRS | lo | 58049/500000 | 1861299675/16032076291 | 905 | 54:112, 54:216, 54:377, 54:204, 54:105 |
| 54:382 | EHP | lo | 97179/1000000 | 1068975859/11000000000 | 2486 | 54:360, 54:183 |
| 54:383 | CFR | lo | 110199/1000000 | 9394537887/85250000000 | 2548 | 54:333, 54:143 |
| 54:385 | FPR | lo | 11873/62500 | 12955878621/68200000000 | 2610 | 54:360, 54:253 |
| 54:388 | BPQ | lo | 102483/1000000 | 5372503688817/52423356869000 | 2937 | 54:41, 54:200, 54:52, 54:44, 54:8, 54:98, 54:378 |
| 54:390 | PQR | lo | 30803/200000 | 8073986288817/52423356869000 | 2963 | 54:41, 54:200, 54:52, 54:44, 54:60, 54:385, 54:360 |
| 54:391 | APQ | lo | 59239/500000 | 10618461/89623300 | 3061 | 54:73, 54:140, 54:98, 54:76, 54:292, 54:347, 54:44 |
| 54:392 | EFP | lo | 68689/500000 | 61561443/448116500 | 3123 | 54:75, 54:148, 54:378, 54:76, 54:84, 54:126, 54:356 |
| 54:393 | EPQ | lo | 116433/1000000 | 20870238347/179246600000 | 3126 | 54:75, 54:148, 54:378, 54:76, 54:350, 54:331, 54:180 |
| 54:396 | QRS | lo | 99011/1000000 | 57914541/584930000 | 3361 | 54:97, 54:200, 54:311, 54:100, 54:377, 54:216, 54:380 |
| 54:399 | FPS | lo | 191341/1000000 | 2938315182576/15356412091375 | 3483 | 54:111, 54:360, 54:116, 54:378, 54:104, 54:204, 54:216 |
| 54:401 | CPR | lo | 33829/250000 | 11809148047/87270400000 | 3560 | 54:113, 54:222, 54:118, 54:378, 54:370, 54:355, 54:166 |
| 54:403 | CEQ | lo | 48709/500000 | 680137683/6981632000 | 3600 | 54:113, 54:226, 54:122, 54:311, 54:70, 54:371, 54:136 |
| 54:404 | CQR | lo | 233363/1000000 | 20365755399/87270400000 | 3605 | 54:113, 54:226, 54:122, 54:311, 54:370, 54:355, 54:166 |
| 54:405 | EQR | lo | 117653/500000 | 20535274737/87270400000 | 3611 | 54:113, 54:226, 54:122, 54:311, 54:372, 54:357, 54:196 |
| 54:418 | CFQ | hi | 26993/50000 | 1272286610338657/2356700000000000 | 3912 | 54:183, 54:224, 54:405, 54:180, 54:126, 54:139, 54:383 |
| 54:419 | CPQ | lo | 98527/1000000 | 2322009/23567000 | 3914 | 54:183, 54:224, 54:405, 54:180, 54:328, 54:148, 54:401 |
| 54:428 | ACQ | lo | 62001/200000 | 62001/200000 | 4156 | 54:22, 54:391, 54:419 |
| 54:430 | BCH | lo | 66491/200000 | 66491/200000 | 4203 | 54:378, 54:76, 54:148 |
| 54:432 | BEF | lo | 161689/500000 | 161689/500000 | 4214 | 54:98, 54:88, 54:392 |
| 54:433 | BEH | lo | 168317/500000 | 168317/500000 | 4218 | 54:378, 54:88, 54:382 |
| 54:434 | BEQ | lo | 77979/250000 | 77979/250000 | 4222 | 54:88, 54:388, 54:393 |
| 54:437 | BFS | lo | 377341/1000000 | 377341/1000000 | 4234 | 54:98, 54:118, 54:399 |
| 54:440 | CHR | lo | 419363/1000000 | 419363/1000000 | 4276 | 54:150, 54:404, 54:224 |
| 54:441 | EFH | lo | 29033/100000 | 29033/100000 | 4284 | 54:180, 54:374, 54:200 |
| 54:442 | EHR | lo | 210653/500000 | 210653/500000 | 4296 | 54:180, 54:405, 54:224 |
| 54:445 | HPR | lo | 68003/200000 | 68003/200000 | 4313 | 54:218, 54:224, 54:390 |
| 54:457 | BCR | lo | 28089/250000 | 10525586963/93680589700 | 636 | 54:70, 54:110, 54:430, 54:372, 54:87 |
| 54:458 | CEH | lo | 103441/1000000 | 88110525/851791186 | 638 | 54:70, 54:442, 54:433, 54:134, 54:93 |
| 54:459 | BER | lo | 30699/250000 | 13971413367/113776723172 | 640 | 54:457, 54:442, 54:110, 54:134, 54:153 |
| 54:461 | EFQ | lo | 104343/1000000 | 3138099/30074750 | 785 | 54:434, 54:200, 54:100, 54:180, 54:109 |
| 54:463 | BHQ | lo | 131049/1000000 | 772113/5891750 | 843 | 54:433, 54:224, 54:110, 54:180, 54:183 |
| 54:469 | EHP | lo | 12149/125000 | 641472299/6600000000 | 2486 | 54:445, 54:183 |
| 54:470 | CFR | lo | 27553/250000 | 5637349991/51150000000 | 2548 | 54:404, 54:418 |
| 54:472 | FPR | lo | 94997/500000 | 2591526327/13640000000 | 2610 | 54:445, 54:253 |
| 54:475 | BQS | lo | 369863/1000000 | 19389492866451/52423356869000 | 2940 | 54:41, 54:200, 54:52, 54:44, 54:14, 54:437, 54:112 |
| 54:476 | PQR | lo | 154027/1000000 | 8074655888817/52423356869000 | 2963 | 54:41, 54:200, 54:52, 54:44, 54:60, 54:472, 54:445 |
| 54:477 | PQS | lo | 154319/1000000 | 278962982373/1807701961000 | 2964 | 54:41, 54:200, 54:52, 54:44, 54:62, 54:399, 54:222 |
| 54:478 | APQ | lo | 118479/1000000 | 53092677/448116500 | 3061 | 54:73, 54:140, 54:98, 54:76, 54:292, 54:428, 54:44 |
| 54:479 | EFP | lo | 68691/500000 | 123126513/896233000 | 3123 | 54:75, 54:148, 54:378, 54:76, 54:432, 54:126, 54:441 |
| 54:480 | EPQ | lo | 58219/500000 | 10435589519/89623300000 | 3126 | 54:75, 54:148, 54:378, 54:76, 54:434, 54:403, 54:180 |
| 54:483 | FPS | lo | 191371/1000000 | 11755098117679/61425648365500 | 3483 | 54:111, 54:445, 54:116, 54:378, 54:437, 54:204, 54:216 |
| 54:488 | CEQ | lo | 3897/40000 | 85023211583/872704000000 | 3600 | 54:113, 54:226, 54:475, 54:463, 54:70, 54:458, 54:136 |
| 54:490 | CQR | lo | 233379/1000000 | 203671178269/872704000000 | 3605 | 54:113, 54:226, 54:475, 54:463, 54:457, 54:440, 54:166 |
| 54:491 | EQR | lo | 47063/200000 | 102680371039/436352000000 | 3611 | 54:113, 54:226, 54:475, 54:463, 54:459, 54:442, 54:196 |
| 54:504 | CFQ | hi | 269929/500000 | 1272282710338657/2356700000000000 | 3912 | 54:183, 54:224, 54:491, 54:180, 54:126, 54:139, 54:470 |
| 54:515 | BEF | lo | 161691/500000 | 161691/500000 | 4214 | 54:98, 54:88, 54:479 |
| 54:516 | BEH | lo | 336647/1000000 | 336647/1000000 | 4218 | 54:378, 54:88, 54:469 |
| 54:517 | BEQ | lo | 311921/1000000 | 311921/1000000 | 4222 | 54:88, 54:388, 54:480 |
| 54:518 | BFH | lo | 317049/1000000 | 317049/1000000 | 4229 | 54:463, 54:100, 54:200 |
| 54:521 | BFS | lo | 377371/1000000 | 377371/1000000 | 4234 | 54:98, 54:118, 54:483 |
| 54:524 | CHR | lo | 419379/1000000 | 419379/1000000 | 4276 | 54:150, 54:490, 54:224 |
| 54:525 | EFH | lo | 290343/1000000 | 290343/1000000 | 4284 | 54:180, 54:461, 54:200 |
| 54:526 | EHR | lo | 84263/200000 | 84263/200000 | 4296 | 54:180, 54:491, 54:224 |
| 54:528 | HPR | lo | 340027/1000000 | 340027/1000000 | 4313 | 54:218, 54:224, 54:476 |
| 54:529 | HPS | lo | 340319/1000000 | 340319/1000000 | 4314 | 54:218, 54:226, 54:477 |
| 54:542 | BCR | lo | 112359/1000000 | 5262959709/46840294850 | 636 | 54:70, 54:110, 54:430, 54:459, 54:87 |
| 54:544 | BER | lo | 122799/1000000 | 111773582085/910213785376 | 640 | 54:542, 54:526, 54:110, 54:134, 54:153 |
| 54:548 | BHQ | lo | 131051/1000000 | 3088491/23567000 | 843 | 54:516, 54:224, 54:110, 54:180, 54:183 |
| 54:552 | BHP | lo | 146457/1000000 | 213455925/1457461481 | 886 | 54:518, 54:118, 54:98, 54:112, 54:105 |
| 54:555 | EHP | lo | 24299/250000 | 3207474691/33000000000 | 2486 | 54:528, 54:183 |
| 54:556 | CFR | lo | 5511/50000 | 1708412073/15500000000 | 2548 | 54:490, 54:504 |
| 54:558 | FPR | lo | 190001/1000000 | 12958088943/68200000000 | 2610 | 54:528, 54:253 |
| 54:562 | BQS | lo | 92467/250000 | 19389771866451/52423356869000 | 2940 | 54:41, 54:200, 54:52, 54:44, 54:14, 54:521, 54:112 |
| 54:563 | PQR | lo | 154031/1000000 | 8074832588817/52423356869000 | 2963 | 54:41, 54:200, 54:52, 54:44, 54:60, 54:558, 54:528 |
| 54:564 | PQS | lo | 77163/500000 | 8090289188817/52423356869000 | 2964 | 54:41, 54:200, 54:52, 54:44, 54:62, 54:483, 54:529 |
| 54:565 | EFP | lo | 17173/125000 | 61564047/448116500 | 3123 | 54:75, 54:148, 54:552, 54:76, 54:515, 54:126, 54:525 |
| 54:566 | EPQ | lo | 2911/25000 | 4174295769/35849320000 | 3126 | 54:75, 54:148, 54:552, 54:76, 54:517, 54:488, 54:180 |
| 54:570 | FPS | lo | 38277/200000 | 5877974462027/30712824182750 | 3483 | 54:111, 54:528, 54:116, 54:552, 54:521, 54:204, 54:216 |
| 54:579 | CQR | lo | 58347/250000 | 7274250249/31168000000 | 3605 | 54:113, 54:226, 54:562, 54:548, 54:542, 54:524, 54:166 |
| 54:580 | EQR | lo | 235321/1000000 | 10268299571/43635200000 | 3611 | 54:113, 54:226, 54:562, 54:548, 54:544, 54:526, 54:196 |
| 54:590 | CFQ | hi | 539857/1000000 | 1272280310338657/2356700000000000 | 3912 | 54:183, 54:224, 54:580, 54:180, 54:126, 54:139, 54:556 |
| 54:601 | BCH | lo | 332457/1000000 | 332457/1000000 | 4203 | 54:552, 54:76, 54:148 |
| 54:602 | BEF | lo | 40423/125000 | 40423/125000 | 4214 | 54:98, 54:88, 54:565 |
| 54:603 | BEH | lo | 336653/1000000 | 336653/1000000 | 4218 | 54:552, 54:88, 54:555 |
| 54:608 | BFS | lo | 75477/200000 | 75477/200000 | 4234 | 54:98, 54:118, 54:570 |
| 54:610 | CHR | lo | 104847/250000 | 104847/250000 | 4276 | 54:150, 54:579, 54:224 |
| 54:612 | EHR | lo | 421321/1000000 | 421321/1000000 | 4296 | 54:180, 54:580, 54:224 |
| 54:615 | HPR | lo | 340031/1000000 | 340031/1000000 | 4313 | 54:218, 54:224, 54:563 |
| 54:616 | HPS | lo | 170163/500000 | 170163/500000 | 4314 | 54:218, 54:226, 54:564 |
| 54:628 | BCR | lo | 2809/25000 | 105260437143/936805897000 | 636 | 54:70, 54:110, 54:601, 54:544, 54:87 |
| 54:629 | CEH | lo | 51723/500000 | 176228955/1703582372 | 638 | 54:70, 54:612, 54:603, 54:134, 54:93 |
| 54:630 | BER | lo | 307/2500 | 1995976385/16253817596 | 640 | 54:628, 54:612, 54:110, 54:134, 54:153 |
| 54:634 | BHQ | lo | 32763/250000 | 3088509/23567000 | 843 | 54:603, 54:224, 54:110, 54:180, 54:183 |
| 54:639 | EHP | lo | 97197/1000000 | 3207512423/33000000000 | 2486 | 54:615, 54:183 |
| 54:642 | FPR | lo | 190003/1000000 | 12958241379/68200000000 | 2610 | 54:615, 54:253 |
| 54:645 | BQS | lo | 369871/1000000 | 19389902066451/52423356869000 | 2940 | 54:41, 54:200, 54:52, 54:44, 54:14, 54:608, 54:112 |
| 54:646 | PQR | lo | 9627/62500 | 8074888388817/52423356869000 | 2963 | 54:41, 54:200, 54:52, 54:44, 54:60, 54:642, 54:615 |
| 54:647 | PQS | lo | 154329/1000000 | 8090484488817/52423356869000 | 2964 | 54:41, 54:200, 54:52, 54:44, 54:62, 54:570, 54:616 |
| 54:650 | FPS | lo | 191391/1000000 | 11756317543929/61425648365500 | 3483 | 54:111, 54:615, 54:116, 54:552, 54:608, 54:204, 54:216 |
| 54:655 | CEP | lo | 94113/1000000 | 1642659/17454080 | 3555 | 54:113, 54:616, 54:118, 54:552, 54:70, 54:629, 54:136 |
| 54:656 | CPR | lo | 135331/1000000 | 738151671/5454400000 | 3560 | 54:113, 54:616, 54:118, 54:552, 54:628, 54:610, 54:166 |
| 54:660 | CQR | lo | 233393/1000000 | 50920851987/218176000000 | 3605 | 54:113, 54:226, 54:645, 54:634, 54:628, 54:610, 54:166 |
| 54:661 | EQR | lo | 9413/40000 | 205369288591/872704000000 | 3611 | 54:113, 54:226, 54:645, 54:634, 54:630, 54:612, 54:196 |
| 54:669 | CPQ | lo | 9853/100000 | 2322063/23567000 | 3914 | 54:183, 54:224, 54:661, 54:180, 54:655, 54:148, 54:656 |
| 54:676 | ACQ | lo | 310009/1000000 | 310009/1000000 | 4156 | 54:22, 54:478, 54:669 |
| 54:679 | BEH | lo | 168327/500000 | 168327/500000 | 4218 | 54:552, 54:88, 54:639 |
| 54:680 | BFH | lo | 79263/250000 | 79263/250000 | 4229 | 54:634, 54:100, 54:200 |
| 54:681 | BFR | lo | 376003/1000000 | 376003/1000000 | 4233 | 54:98, 54:116, 54:642 |
| 54:683 | BFS | lo | 377391/1000000 | 377391/1000000 | 4234 | 54:98, 54:118, 54:650 |
| 54:684 | CHR | lo | 419393/1000000 | 419393/1000000 | 4276 | 54:150, 54:660, 54:224 |
| 54:686 | EHR | lo | 16853/40000 | 16853/40000 | 4296 | 54:180, 54:661, 54:224 |
| 54:688 | HPR | lo | 5313/15625 | 5313/15625 | 4313 | 54:218, 54:224, 54:646 |
| 54:689 | HPS | lo | 340329/1000000 | 340329/1000000 | 4314 | 54:218, 54:226, 54:647 |
| 54:701 | BCR | lo | 112361/1000000 | 526303848/4684029485 | 636 | 54:70, 54:110, 54:601, 54:630, 54:87 |
| 54:702 | BER | lo | 122801/1000000 | 15967935475/130030540768 | 640 | 54:701, 54:686, 54:110, 54:134, 54:153 |
| 54:707 | BRS | lo | 1683/15625 | 39346000249/365288500000 | 854 | 54:702, 54:380, 54:110, 54:196, 54:183 |
| 54:709 | CFR | lo | 55113/500000 | 112762194199/1023000000000 | 2548 | 54:660, 54:590 |
| 54:712 | BQR | lo | 184813/500000 | 19377049466451/52423356869000 | 2939 | 54:41, 54:200, 54:52, 54:44, 54:12, 54:681, 54:110 |
| 54:713 | BQS | lo | 23117/62500 | 19389957866451/52423356869000 | 2940 | 54:41, 54:200, 54:52, 54:44, 54:14, 54:683, 54:112 |
| 54:714 | PQS | lo | 154331/1000000 | 8090568188817/52423356869000 | 2964 | 54:41, 54:200, 54:52, 54:44, 54:62, 54:650, 54:689 |
| 54:715 | APQ | lo | 1481/12500 | 53092863/448116500 | 3061 | 54:73, 54:140, 54:98, 54:76, 54:292, 54:676, 54:44 |
| 54:717 | FPS | lo | 191393/1000000 | 23512925659983/122851296731000 | 3483 | 54:111, 54:688, 54:116, 54:552, 54:683, 54:204, 54:216 |
| 54:724 | CQR | lo | 58349/250000 | 25460709587/109088000000 | 3605 | 54:113, 54:226, 54:713, 54:634, 54:701, 54:684, 54:166 |
| 54:725 | EQR | lo | 235327/1000000 | 1026855947/4363520000 | 3611 | 54:113, 54:226, 54:713, 54:634, 54:702, 54:686, 54:196 |
| 54:727 | CFQ | hi | 33741/62500 | 1272278510338657/2356700000000000 | 3912 | 54:183, 54:224, 54:725, 54:180, 54:126, 54:139, 54:709 |
| 54:735 | BFS | lo | 377393/1000000 | 377393/1000000 | 4234 | 54:98, 54:118, 54:717 |
| 54:736 | CHR | lo | 104849/250000 | 104849/250000 | 4276 | 54:150, 54:724, 54:224 |
| 54:737 | EHR | lo | 421327/1000000 | 421327/1000000 | 4296 | 54:180, 54:725, 54:224 |
| 54:739 | HPS | lo | 340331/1000000 | 340331/1000000 | 4314 | 54:218, 54:226, 54:714 |
| 54:750 | PQS | lo | 38583/250000 | 8090605388817/52423356869000 | 2964 | 54:41, 54:200, 54:52, 54:44, 54:62, 54:717, 54:739 |
| 54:751 | FPS | lo | 95697/500000 | 23513010667983/122851296731000 | 3483 | 54:111, 54:688, 54:116, 54:552, 54:735, 54:204, 54:216 |
| 54:752 | FQS | lo | 119911/1000000 | 14731239220983/122851296731000 | 3528 | 54:111, 54:224, 54:712, 54:634, 54:735, 54:204, 54:216 |
| 54:756 | CQR | lo | 233397/1000000 | 25460848289/109088000000 | 3605 | 54:113, 54:226, 54:713, 54:634, 54:701, 54:736, 54:166 |
| 54:757 | EQR | lo | 3677/15625 | 25671491143/109088000000 | 3611 | 54:113, 54:226, 54:713, 54:634, 54:702, 54:737, 54:196 |
| 54:761 | BFS | lo | 188697/500000 | 188697/500000 | 4234 | 54:98, 54:118, 54:751 |
| 54:762 | CHR | lo | 419397/1000000 | 419397/1000000 | 4276 | 54:150, 54:756, 54:224 |
| 54:763 | EHR | lo | 26333/62500 | 26333/62500 | 4296 | 54:180, 54:757, 54:224 |
| 54:764 | HPS | lo | 85083/250000 | 85083/250000 | 4314 | 54:218, 54:226, 54:750 |
| 54:765 | BHP | hi | 109843/250000 | 109843/250000 | 21 | 54:113, 54:764, 54:118 |
| 54:770 | BQS | lo | 369873/1000000 | 19389985766451/52423356869000 | 2940 | 54:41, 54:200, 54:52, 54:44, 54:14, 54:761, 54:112 |
| 54:776 | CQR | lo | 116699/500000 | 203687482581/872704000000 | 3605 | 54:113, 54:226, 54:770, 54:634, 54:701, 54:762, 54:166 |
| 54:777 | EQR | lo | 235329/1000000 | 12835789209/54544000000 | 3611 | 54:113, 54:226, 54:770, 54:634, 54:702, 54:763, 54:196 |
| 54:779 | CHR | lo | 209699/500000 | 209699/500000 | 4276 | 54:150, 54:776, 54:224 |
| 54:780 | EHR | lo | 421329/1000000 | 421329/1000000 | 4296 | 54:180, 54:777, 54:224 |
| 54:781 | EFR | lo | 133749/1000000 | 20731116074659/155000000000000 | 2573 | 54:780, 54:169 |
