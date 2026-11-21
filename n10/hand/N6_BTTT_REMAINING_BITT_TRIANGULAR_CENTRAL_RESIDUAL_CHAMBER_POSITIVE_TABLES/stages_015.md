# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 75

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+ |
| Index | 1 |
| Context | 27 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 74 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 354033/1000000 | 845747/1000000 | 354597/1000000 | 845747/1000000 |
| v | 196767/1000000 | 74361/125000 | 196767/1000000 | 117891/200000 |
| r | 82331/125000 | 1/1 | 331653/500000 | 1/1 |
| w | 771761/1000000 | 1/1 | 771761/1000000 | 1/1 |
| j | 129709/250000 | 896233/1000000 | 129709/250000 | 896233/1000000 |
| k | 4673/12500 | 864963/1000000 | 4673/12500 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 759 | AREA_lo_BHQ | bitt ["earlier-area",{"direction":"lo","ref":"74:104","triangle":"BHQ","value":"77999/250000"}] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -77999/250000` |
| 839 | AREA_lo_FQR | bitt ["earlier-area",{"direction":"lo","ref":"74:899","triangle":"FQR","value":"141371/500000"}] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -141371/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 839 | v | 196767/1000000 | 74361/125000 | 196767/1000000 | 202978/344349 | 196767/1000000 | 117891/200000 | `(-173673/500000, 54851119291/1000000000000); (601/20000, -47281679013/200000000000); (-173673/500000, -11475438471/200000000000); (601/20000, -348636706711/1000000000000); (-344349/500000, 396203119291/1000000000000); (-155651/500000, 20988720987/200000000000); (-344349/500000, 56794961529/200000000000); (-155651/500000, -7284706711/1000000000000); (-173673/500000, 16151/250000); (601/20000, -39099/125000); (-344349/500000, 101489/250000); (-155651/500000, 357/12500)` |
| 1 | 839 | r | 82331/125000 | 1/1 | 266395019683/401616500000 | 1/1 | 331653/500000 | 1/1 | `(803233/1000000, -21701716803/40000000000); (803233/1000000, -759543355699/1000000000000); (803233/1000000, -654771231721/1000000000000); (803233/1000000, -174354333469/200000000000); (82109/200000, -420298360299/1000000000000); (82109/200000, -19563996619/40000000000); (82109/200000, -106505334389/200000000000); (82109/200000, -601328227121/1000000000000); (803233/1000000, -266395019683/500000000000); (803233/1000000, -417963480317/500000000000); (82109/200000, -41054547959/100000000000); (82109/200000, -56548352041/100000000000)` |
| 2 | 759 | u | 354033/1000000 | 845747/1000000 | 70919404603/200000000000 | 845747/1000000 | 354597/1000000 | 845747/1000000 | `(796617/1000000, -7484812699/20000000000); (796617/1000000, -506416579/800000000); (1/1, -395345078711/1000000000000); (1/1, -29674648831/40000000000); (796617/1000000, -166746289627/500000000000); (796617/1000000, -8457278467/20000000000); (1/1, -70919404603/200000000000); (1/1, -4253675363/8000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 75:23 | ACP | hi | 700583/1000000 | earlier 74:23; ACP; hi; 700583/1000000 |
| 75:38 | AER | lo | 13181/100000 | earlier 74:270; AER; lo; 13181/100000 |
| 75:48 | AFR | lo | 155123/1000000 | earlier 74:869; AFR; lo; 155123/1000000 |
| 75:55 | AHQ | hi | 710233/1000000 | earlier 74:55; AHQ; hi; 710233/1000000 |
| 75:60 | APQ | lo | 98987/1000000 | earlier 74:721; APQ; lo; 98987/1000000 |
| 75:70 | BCH | lo | 349719/1000000 | earlier 74:70; BCH; lo; 349719/1000000 |
| 75:73 | BCP | hi | 710233/1000000 | earlier 74:73; BCP; hi; 710233/1000000 |
| 75:104 | BHQ | lo | 77999/250000 | earlier 74:104; BHQ; lo; 77999/250000 |
| 75:106 | BHR | lo | 341899/1000000 | earlier 74:861; BHR; lo; 341899/1000000 |
| 75:110 | BPQ | lo | 31499/250000 | earlier 74:110; BPQ; lo; 31499/250000 |
| 75:112 | BPR | lo | 69931/500000 | earlier 74:836; BPR; lo; 69931/500000 |
| 75:126 | CES | lo | 58169/500000 | earlier 74:348; CES; lo; 58169/500000 |
| 75:128 | CFH | lo | 182589/500000 | earlier 74:910; CFH; lo; 182589/500000 |
| 75:130 | CFP | lo | 58327/200000 | earlier 74:896; CFP; lo; 58327/200000 |
| 75:134 | CFR | lo | 305717/1000000 | earlier 74:693; CFR; lo; 305717/1000000 |
| 75:149 | CPR | hi | 881163/1000000 | earlier 74:149; CPR; hi; 881163/1000000 |
| 75:150 | CPS | lo | 141797/500000 | earlier 74:767; CPS; lo; 141797/500000 |
| 75:154 | CQS | lo | 48797/500000 | earlier 74:740; CQS; lo; 48797/500000 |
| 75:156 | CRS | lo | 119717/1000000 | earlier 74:678; CRS; lo; 119717/1000000 |
| 75:162 | EFQ | lo | 112147/1000000 | earlier 74:876; EFQ; lo; 112147/1000000 |
| 75:168 | EHP | lo | 102901/1000000 | earlier 74:168; EHP; lo; 102901/1000000 |
| 75:188 | FHQ | lo | 89589/500000 | earlier 74:907; FHQ; lo; 89589/500000 |
| 75:189 | FHQ | hi | 141503/250000 | earlier 74:189; FHQ; hi; 141503/250000 |
| 75:194 | FPQ | lo | 21127/200000 | earlier 74:875; FPQ; lo; 21127/200000 |
| 75:200 | FQR | lo | 141371/500000 | earlier 74:899; FQR; lo; 141371/500000 |
| 75:201 | FQR | hi | 545627/1000000 | earlier 74:283; FQR; hi; 545627/1000000 |
| 75:202 | FQS | lo | 48371/500000 | earlier 74:882; FQS; lo; 48371/500000 |
| 75:208 | HPR | lo | 109037/1000000 | earlier 74:776; HPR; lo; 109037/1000000 |
| 75:212 | HQR | lo | 81821/250000 | earlier 74:900; HQR; lo; 81821/250000 |
| 75:213 | HQR | hi | 741163/1000000 | earlier 74:213; HQR; hi; 741163/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 76

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+ |
| Index | 2 |
| Context | 27 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 75 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 354597/1000000 | 845747/1000000 | 354597/1000000 | 845747/1000000 |
| v | 196767/1000000 | 117891/200000 | 196767/1000000 | 117891/200000 |
| r | 331653/500000 | 1/1 | 331653/500000 | 1/1 |
| w | 771761/1000000 | 1/1 | 771761/1000000 | 1/1 |
| j | 129709/250000 | 896233/1000000 | 129709/250000 | 896233/1000000 |
| k | 4673/12500 | 864963/1000000 | 4673/12500 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 76:23 | ACP | hi | 700583/1000000 | earlier 75:23; ACP; hi; 700583/1000000 |
| 76:38 | AER | lo | 13181/100000 | earlier 75:38; AER; lo; 13181/100000 |
| 76:48 | AFR | lo | 155123/1000000 | earlier 75:48; AFR; lo; 155123/1000000 |
| 76:55 | AHQ | hi | 710233/1000000 | earlier 75:55; AHQ; hi; 710233/1000000 |
| 76:60 | APQ | lo | 98987/1000000 | earlier 75:60; APQ; lo; 98987/1000000 |
| 76:70 | BCH | lo | 349719/1000000 | earlier 75:70; BCH; lo; 349719/1000000 |
| 76:73 | BCP | hi | 710233/1000000 | earlier 75:73; BCP; hi; 710233/1000000 |
| 76:104 | BHQ | lo | 77999/250000 | earlier 75:104; BHQ; lo; 77999/250000 |
| 76:106 | BHR | lo | 341899/1000000 | earlier 75:106; BHR; lo; 341899/1000000 |
| 76:110 | BPQ | lo | 31499/250000 | earlier 75:110; BPQ; lo; 31499/250000 |
| 76:112 | BPR | lo | 69931/500000 | earlier 75:112; BPR; lo; 69931/500000 |
| 76:126 | CES | lo | 58169/500000 | earlier 75:126; CES; lo; 58169/500000 |
| 76:128 | CFH | lo | 182589/500000 | earlier 75:128; CFH; lo; 182589/500000 |
| 76:130 | CFP | lo | 58327/200000 | earlier 75:130; CFP; lo; 58327/200000 |
| 76:134 | CFR | lo | 305717/1000000 | earlier 75:134; CFR; lo; 305717/1000000 |
| 76:149 | CPR | hi | 881163/1000000 | earlier 75:149; CPR; hi; 881163/1000000 |
| 76:150 | CPS | lo | 141797/500000 | earlier 75:150; CPS; lo; 141797/500000 |
| 76:154 | CQS | lo | 48797/500000 | earlier 75:154; CQS; lo; 48797/500000 |
| 76:156 | CRS | lo | 119717/1000000 | earlier 75:156; CRS; lo; 119717/1000000 |
| 76:162 | EFQ | lo | 112147/1000000 | earlier 75:162; EFQ; lo; 112147/1000000 |
| 76:168 | EHP | lo | 102901/1000000 | earlier 75:168; EHP; lo; 102901/1000000 |
| 76:188 | FHQ | lo | 89589/500000 | earlier 75:188; FHQ; lo; 89589/500000 |
| 76:189 | FHQ | hi | 141503/250000 | earlier 75:189; FHQ; hi; 141503/250000 |
| 76:194 | FPQ | lo | 21127/200000 | earlier 75:194; FPQ; lo; 21127/200000 |
| 76:200 | FQR | lo | 141371/500000 | earlier 75:200; FQR; lo; 141371/500000 |
| 76:201 | FQR | hi | 545627/1000000 | earlier 75:201; FQR; hi; 545627/1000000 |
| 76:202 | FQS | lo | 48371/500000 | earlier 75:202; FQS; lo; 48371/500000 |
| 76:208 | HPR | lo | 109037/1000000 | earlier 75:208; HPR; lo; 109037/1000000 |
| 76:212 | HQR | lo | 81821/250000 | earlier 75:212; HQR; lo; 81821/250000 |
| 76:213 | HQR | hi | 741163/1000000 | earlier 75:213; HQR; hi; 741163/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 77

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ |
| Index | 0 |
| Context | 28 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 76 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 387853/1000000 | 158493/200000 | 387853/1000000 | 158493/200000 |
| u | 354597/1000000 | 845747/1000000 | 354597/1000000 | 845747/1000000 |
| v | 196767/1000000 | 117891/200000 | 196767/1000000 | 117891/200000 |
| r | 331653/500000 | 1/1 | 331653/500000 | 1/1 |
| w | 771761/1000000 | 1/1 | 771761/1000000 | 1/1 |
| j | 129709/250000 | 896233/1000000 | 129709/250000 | 896233/1000000 |
| k | 4673/12500 | 864963/1000000 | 4673/12500 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 77:0 | ABC | lo | 93/1000 | occupants none |
| 77:4 | ABF | lo | 93/1000 | occupants none |
| 77:6 | ABH | lo | 93/1000 | occupants none |
| 77:8 | ABP | lo | 93/1000 | occupants none |
| 77:10 | ABQ | lo | 93/1000 | occupants none |
| 77:12 | ABR | lo | 93/1000 | occupants none |
| 77:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:23 | ACP | hi | 700583/1000000 | earlier 76:23; ACP; hi; 700583/1000000 |
| 77:24 | ACQ | lo | 93/1000 | occupants none |
| 77:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 77:31 | AEF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:32 | AEH | lo | 13857/20000 | occupants P, Q |
| 77:33 | AEH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:35 | AEP | hi | 344349/500000 | vertex maximum 344349/500000 |
| 77:36 | AEQ | lo | 93/1000 | occupants none |
| 77:38 | AER | lo | 13181/100000 | earlier 76:38; AER; lo; 13181/100000 |
| 77:42 | AFH | lo | 279/1000 | occupants P |
| 77:43 | AFH | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 77:44 | AFP | lo | 93/1000 | occupants none |
| 77:46 | AFQ | lo | 93/1000 | occupants none |
| 77:48 | AFR | lo | 155123/1000000 | earlier 76:48; AFR; lo; 155123/1000000 |
| 77:49 | AFR | hi | 172071282953/250000000000 | vertex maximum 172071282953/250000000000 |
| 77:50 | AFS | lo | 93/1000 | occupants none |
| 77:52 | AHP | lo | 93/1000 | occupants none |
| 77:53 | AHP | hi | 5505559319/20000000000 | vertex maximum 5505559319/20000000000 |
| 77:55 | AHQ | hi | 710233/1000000 | earlier 76:55; AHQ; hi; 710233/1000000 |
| 77:57 | AHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:60 | APQ | lo | 98987/1000000 | earlier 76:60; APQ; lo; 98987/1000000 |
| 77:63 | APR | hi | 61218930721/100000000000 | vertex maximum 61218930721/100000000000 |
| 77:66 | BCE | lo | 93/1000 | occupants none |
| 77:69 | BCF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:70 | BCH | lo | 349719/1000000 | earlier 76:70; BCH; lo; 349719/1000000 |
| 77:71 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:73 | BCP | hi | 710233/1000000 | earlier 76:73; BCP; hi; 710233/1000000 |
| 77:77 | BCR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:81 | BEF | hi | 174939543131/200000000000 | vertex maximum 174939543131/200000000000 |
| 77:82 | BEH | lo | 13857/20000 | occupants P, Q |
| 77:83 | BEH | hi | 59075689/62500000 | vertex maximum 59075689/62500000 |
| 77:85 | BEP | hi | 709115921289/1000000000000 | vertex maximum 709115921289/1000000000000 |
| 77:86 | BEQ | lo | 93/1000 | occupants none |
| 77:92 | BFH | lo | 279/1000 | occupants P |
| 77:94 | BFP | lo | 93/1000 | occupants none |
| 77:96 | BFQ | lo | 93/1000 | occupants none |
| 77:99 | BFR | hi | 147213116173/200000000000 | vertex maximum 147213116173/200000000000 |
| 77:102 | BHP | lo | 93/1000 | occupants none |
| 77:103 | BHP | hi | 57122943131/200000000000 | vertex maximum 57122943131/200000000000 |
| 77:104 | BHQ | lo | 77999/250000 | earlier 76:104; BHQ; lo; 77999/250000 |
| 77:106 | BHR | lo | 341899/1000000 | earlier 76:106; BHR; lo; 341899/1000000 |
| 77:107 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 77:110 | BPQ | lo | 31499/250000 | earlier 76:110; BPQ; lo; 31499/250000 |
| 77:112 | BPR | lo | 69931/500000 | earlier 76:112; BPR; lo; 69931/500000 |
| 77:119 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 77:120 | CEP | lo | 279/1000 | occupants Q |
| 77:121 | CEP | hi | 28235558407/50000000000 | vertex maximum 28235558407/50000000000 |
| 77:122 | CEQ | lo | 93/1000 | occupants none |
| 77:124 | CER | lo | 93/1000 | occupants none |
| 77:127 | CES | hi | 101771222537/250000000000 | vertex maximum 101771222537/250000000000 |
| 77:128 | CFH | lo | 182589/500000 | earlier 76:128; CFH; lo; 182589/500000 |
| 77:129 | CFH | hi | 376005767333/500000000000 | vertex maximum 376005767333/500000000000 |
| 77:130 | CFP | lo | 58327/200000 | earlier 76:130; CFP; lo; 58327/200000 |
| 77:132 | CFQ | lo | 93/1000 | occupants none |
| 77:134 | CFR | lo | 305717/1000000 | earlier 76:134; CFR; lo; 305717/1000000 |
| 77:135 | CFR | hi | 344349/500000 | vertex maximum 344349/500000 |
| 77:136 | CFS | lo | 93/1000 | occupants none |
| 77:138 | CHP | lo | 93/1000 | occupants none |
| 77:140 | CHQ | lo | 93/1000 | occupants none |
| 77:142 | CHR | lo | 13857/20000 | occupants Q, S |
| 77:143 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 77:146 | CPQ | lo | 93/1000 | occupants none |
| 77:148 | CPR | lo | 13857/20000 | occupants Q, S |
| 77:149 | CPR | hi | 881163/1000000 | earlier 76:149; CPR; hi; 881163/1000000 |
| 77:150 | CPS | lo | 141797/500000 | earlier 76:150; CPS; lo; 141797/500000 |
| 77:156 | CRS | lo | 119717/1000000 | earlier 76:156; CRS; lo; 119717/1000000 |
| 77:159 | EFH | hi | 6805474093/10000000000 | vertex maximum 6805474093/10000000000 |
| 77:162 | EFQ | lo | 112147/1000000 | earlier 76:162; EFQ; lo; 112147/1000000 |
| 77:164 | EFR | lo | 279/1000 | occupants S |
| 77:165 | EFR | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 77:166 | EFS | lo | 93/1000 | occupants none |
| 77:168 | EHP | lo | 102901/1000000 | earlier 76:168; EHP; lo; 102901/1000000 |
| 77:173 | EHR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 77:176 | EPQ | lo | 93/1000 | occupants none |
| 77:179 | EPR | hi | 158716590669/200000000000 | vertex maximum 158716590669/200000000000 |
| 77:186 | ERS | lo | 93/1000 | occupants none |
| 77:188 | FHP | lo | 93/1000 | occupants none |
| 77:190 | FHQ | lo | 89589/500000 | earlier 76:188; FHQ; lo; 89589/500000 |
| 77:191 | FHQ | hi | 141503/250000 | earlier 76:189; FHQ; hi; 141503/250000 |
| 77:192 | FHR | lo | 93/1000 | occupants none |
| 77:193 | FHR | hi | 13781329843/62500000000 | vertex maximum 13781329843/62500000000 |
| 77:196 | FPQ | lo | 21127/200000 | earlier 76:194; FPQ; lo; 21127/200000 |
| 77:202 | FQR | lo | 141371/500000 | earlier 76:200; FQR; lo; 141371/500000 |
| 77:203 | FQR | hi | 545627/1000000 | earlier 76:201; FQR; hi; 545627/1000000 |
| 77:204 | FQS | lo | 48371/500000 | earlier 76:202; FQS; lo; 48371/500000 |
| 77:206 | FRS | lo | 93/1000 | occupants none |
| 77:208 | HPQ | lo | 93/1000 | occupants none |
| 77:210 | HPR | lo | 109037/1000000 | earlier 76:208; HPR; lo; 109037/1000000 |
| 77:214 | HQR | lo | 81821/250000 | earlier 76:212; HQR; lo; 81821/250000 |
| 77:215 | HQR | hi | 741163/1000000 | earlier 76:213; HQR; hi; 741163/1000000 |
| 77:218 | HRS | lo | 93/1000 | occupants none |
| 77:220 | PQR | lo | 279/1000 | occupants S |
| 77:224 | PRS | lo | 93/1000 | occupants none |
| 77:226 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 3 | fan | AEH = AEP + EHP + AHP | point P |
| 5 | fan | AEP = AEQ + EPQ + APQ | point Q |
| 15 | fan | BEP = BEQ + EPQ + BPQ | point Q |
| 28 | fan | CPR = CPQ + PQR + CQR | point Q |
| 346 | plu | APR * CFP = ACP * FPR + AFP * CPR | circuit PACFR |
| 399 | plu | AFR * EFH = AEF * FHR + AFH * EFR | circuit FAEHR |
| 429 | plu | AEP * EHQ = AEH * EPQ + AEQ * EHP | circuit EAHPQ |
| 430 | plu | AHQ * EHP = AEH * HPQ + AHP * EHQ | circuit HAEPQ |
| 529 | plu | BER * CEH = BCE * EHR + BEH * CER | circuit EBCHR |
| 543 | plu | BCR * CEP = BCE * CPR + BCP * CER | circuit CBEPR |
| 607 | plu | BCP * HPR = BHP * CPR + BPR * CHP | circuit PBCHR |
| 639 | plu | BFR * EFH = BEF * FHR + BFH * EFR | circuit FBEHR |
| 744 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 751 | plu | CFS * EHS = CES * FHS + CHS * EFS | circuit SCEFH |
| 757 | plu | CEF * CPR = CEP * CFR + CER * CFP | circuit CEFPR |
| 864 | plu | CPR * FPQ = CFP * PQR + CPQ * FPR | circuit PCFQR |
| 1650 | support | AEP * CEP >= 1023/1000 * (AEP - ACP) | pentagon PABCE |
| 1974 | support | FQR * EFR >= 1023/1000 * (FQR - EFQ) | pentagon FQCER |
| 2133 | bary | outer ACH; fans CHP, AHP, ACP; target EPS; sign 1; vertices AES 1; CES 1; EHS 1 | container ACH; inner P; line ES |
| 2193 | bary | outer AEH; fans EHP, AHP, AEP; target BCP; sign 1; vertices ABC 1; BCE 1; BCH 1 | container AEH; inner P; line BC |
| 2203 | bary | outer AEH; fans EHP, AHP, AEP; target CHP; sign 1; vertices ACH 1; CEH -1; none 0 | container AEH; inner P; line CH |
| 2218 | bary | outer AEH; fans EHP, AHP, AEP; target FPS; sign -1; vertices AFS -1; EFS -1; FHS -1 | container AEH; inner P; line FS |
| 2221 | bary | outer AEH; fans EHP, AHP, AEP; target HPR; sign -1; vertices AHR -1; EHR -1; none 0 | container AEH; inner P; line HR |
| 2233 | bary | outer AEH; fans EHQ, AHQ, AEQ; target BCQ; sign 1; vertices ABC 1; BCE 1; BCH 1 | container AEH; inner Q; line BC |
| 2267 | bary | outer AEP; fans EPQ, APQ, AEQ; target AFQ; sign -1; vertices none 0; AEF -1; AFP 1 | container AEP; inner Q; line AF |
| 2268 | bary | outer AEP; fans EPQ, APQ, AEQ; target AHQ; sign -1; vertices none 0; AEH -1; AHP -1 | container AEP; inner Q; line AH |
| 2273 | bary | outer AEP; fans EPQ, APQ, AEQ; target BFQ; sign -1; vertices ABF 1; BEF -1; BFP 1 | container AEP; inner Q; line BF |
| 2274 | bary | outer AEP; fans EPQ, APQ, AEQ; target BHQ; sign -1; vertices ABH 1; BEH -1; BHP -1 | container AEP; inner Q; line BH |
| 2275 | bary | outer AEP; fans EPQ, APQ, AEQ; target BPQ; sign -1; vertices ABP 1; BEP -1; none 0 | container AEP; inner Q; line BP |
| 2285 | bary | outer AEP; fans EPQ, APQ, AEQ; target EHQ; sign 1; vertices AEH 1; none 0; EHP 1 | container AEP; inner Q; line EH |
| 2295 | bary | outer AEP; fans EPQ, APQ, AEQ; target HPQ; sign 1; vertices AHP -1; EHP 1; none 0 | container AEP; inner Q; line HP |
| 2317 | bary | outer AFH; fans FHP, AHP, AFP; target BPR; sign 1; vertices ABR 1; BFR 1; BHR 1 | container AFH; inner P; line BR |
| 2365 | bary | outer AHQ; fans HPQ, APQ, AHP; target EHP; sign 1; vertices AEH 1; none 0; EHQ 1 | container AHQ; inner P; line EH |
| 2373 | bary | outer AHQ; fans HPQ, APQ, AHP; target FPR; sign -1; vertices AFR -1; FHR -1; FQR -1 | container AHQ; inner P; line FR |
| 2483 | bary | outer BCF; fans CFQ, BFQ, BCQ; target EQS; sign 1; vertices BES 1; CES 1; EFS 1 | container BCF; inner Q; line ES |
| 2520 | bary | outer BCH; fans CHP, BHP, BCP; target EFP; sign 1; vertices BEF 1; CEF 1; EFH 1 | container BCH; inner P; line EF |
| 2543 | bary | outer BEF; fans EFQ, BFQ, BEQ; target APQ; sign -1; vertices ABP -1; AEP -1; AFP -1 | container BEF; inner Q; line AP |
| 2591 | bary | outer BEH; fans EHP, BHP, BEP; target BPR; sign 1; vertices none 0; BER -1; BHR 1 | container BEH; inner P; line BR |
| 2594 | bary | outer BEH; fans EHP, BHP, BEP; target CFP; sign 1; vertices BCF 1; CEF -1; CFH 1 | container BEH; inner P; line CF |
| 2598 | bary | outer BEH; fans EHP, BHP, BEP; target CPR; sign 1; vertices BCR 1; CER -1; CHR 1 | container BEH; inner P; line CR |
| 2742 | bary | outer BHQ; fans HPQ, BPQ, BHP; target APQ; sign 1; vertices ABQ -1; AHQ 1; none 0 | container BHQ; inner P; line AQ |
| 2802 | bary | outer BHR; fans HPR, BPR, BHP; target FPQ; sign -1; vertices BFQ -1; FHQ -1; FQR 1 | container BHR; inner P; line FQ |
| 2880 | bary | outer CEH; fans EHQ, CHQ, CEQ; target FQS; sign -1; vertices CFS -1; EFS -1; FHS -1 | container CEH; inner Q; line FS |
| 2968 | bary | outer CFH; fans FHQ, CHQ, CFQ; target PQR; sign -1; vertices CPR -1; FPR 1; HPR 1 | container CFH; inner Q; line PR |
| 2991 | bary | outer CFP; fans FPQ, CPQ, CFQ; target CQR; sign 1; vertices none 0; CFR 1; CPR 1 | container CFP; inner Q; line CR |
| 2997 | bary | outer CFP; fans FPQ, CPQ, CFQ; target EQR; sign 1; vertices CER 1; EFR 1; EPR 1 | container CFP; inner Q; line ER |
| 3193 | bary | outer CPR; fans PQR, CQR, CPQ; target EQS; sign 1; vertices CES 1; EPS 1; ERS -1 | container CPR; inner Q; line ES |
| 3194 | bary | outer CPR; fans PQR, CQR, CPQ; target FHQ; sign 1; vertices CFH 1; FHP 1; FHR 1 | container CPR; inner Q; line FH |
| 3195 | bary | outer CPR; fans PQR, CQR, CPQ; target FPQ; sign 1; vertices CFP 1; none 0; FPR 1 | container CPR; inner Q; line FP |
| 3210 | bary | outer CPR; fans PRS, CRS, CPS; target ACS; sign 1; vertices none 0; ACP 1; ACR 1 | container CPR; inner S; line AC |
| 3233 | bary | outer CPR; fans PRS, CRS, CPS; target FHS; sign 1; vertices CFH 1; FHP 1; FHR 1 | container CPR; inner S; line FH |
| 3292 | bary | outer EFR; fans FRS, ERS, EFS; target APS; sign -1; vertices AEP -1; AFP -1; APR -1 | container EFR; inner S; line AP |
| 3297 | bary | outer EFR; fans FRS, ERS, EFS; target BPS; sign -1; vertices BEP -1; BFP -1; BPR -1 | container EFR; inner S; line BP |
| 3300 | bary | outer EFR; fans FRS, ERS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHR -1 | container EFR; inner S; line CH |
| 3301 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |
| 3302 | bary | outer EFR; fans FRS, ERS, EFS; target CQS; sign -1; vertices CEQ -1; CFQ -1; CQR -1 | container EFR; inner S; line CQ |
| 3317 | bary | outer EFR; fans FRS, ERS, EFS; target HQS; sign 1; vertices EHQ 1; FHQ 1; HQR 1 | container EFR; inner S; line HQ |
| 3320 | bary | outer EFR; fans FRS, ERS, EFS; target PQS; sign 1; vertices EPQ 1; FPQ 1; PQR 1 | container EFR; inner S; line PQ |
| 3412 | bary | outer FQR; fans QRS, FRS, FQS; target BFS; sign -1; vertices none 0; BFQ -1; BFR -1 | container FQR; inner S; line BF |
| 3428 | bary | outer FQR; fans QRS, FRS, FQS; target FHS; sign 1; vertices none 0; FHQ 1; FHR 1 | container FQR; inner S; line FH |
| 3431 | bary | outer FQR; fans QRS, FRS, FQS; target FRS; sign -1; vertices none 0; FQR -1; none 0 | container FQR; inner S; line FR |
| 3444 | bary | outer HQR; fans QRS, HRS, HQS; target ACS; sign 1; vertices ACH 1; ACQ 1; ACR 1 | container HQR; inner S; line AC |
| 3445 | bary | outer HQR; fans QRS, HRS, HQS; target AES; sign 1; vertices AEH 1; AEQ 1; AER 1 | container HQR; inner S; line AE |
| 3446 | bary | outer HQR; fans QRS, HRS, HQS; target AFS; sign -1; vertices AFH 1; AFQ -1; AFR -1 | container HQR; inner S; line AF |
| 3447 | bary | outer HQR; fans QRS, HRS, HQS; target AHS; sign -1; vertices none 0; AHQ -1; AHR -1 | container HQR; inner S; line AH |
| 3449 | bary | outer HQR; fans QRS, HRS, HQS; target BCS; sign 1; vertices BCH 1; BCQ 1; BCR 1 | container HQR; inner S; line BC |
| 3450 | bary | outer HQR; fans QRS, HRS, HQS; target BES; sign 1; vertices BEH 1; BEQ 1; BER 1 | container HQR; inner S; line BE |
| 3487 | bary | outer PQR; fans QRS, PRS, PQS; target APS; sign -1; vertices none 0; APQ -1; APR -1 | container PQR; inner S; line AP |
| 3492 | bary | outer PQR; fans QRS, PRS, PQS; target BPS; sign -1; vertices none 0; BPQ -1; BPR -1 | container PQR; inner S; line BP |
| 3493 | bary | outer PQR; fans QRS, PRS, PQS; target CES; sign 1; vertices CEP 1; CEQ 1; CER 1 | container PQR; inner S; line CE |
| 3494 | bary | outer PQR; fans QRS, PRS, PQS; target CFS; sign -1; vertices CFP 1; CFQ 1; CFR -1 | container PQR; inner S; line CF |
| 3497 | bary | outer PQR; fans QRS, PRS, PQS; target CQS; sign -1; vertices CPQ 1; none 0; CQR -1 | container PQR; inner S; line CQ |
| 3498 | bary | outer PQR; fans QRS, PRS, PQS; target CRS; sign 1; vertices CPR 1; CQR 1; none 0 | container PQR; inner S; line CR |
| 3501 | bary | outer PQR; fans QRS, PRS, PQS; target EHS; sign -1; vertices EHP 1; EHQ 1; EHR -1 | container PQR; inner S; line EH |
| 3502 | bary | outer PQR; fans QRS, PRS, PQS; target EPS; sign -1; vertices none 0; EPQ 1; EPR -1 | container PQR; inner S; line EP |
| 3511 | bary | outer PQR; fans QRS, PRS, PQS; target HPS; sign 1; vertices none 0; HPQ 1; HPR 1 | container PQR; inner S; line HP |
| 3512 | bary | outer PQR; fans QRS, PRS, PQS; target HQS; sign 1; vertices HPQ -1; none 0; HQR 1 | container PQR; inner S; line HQ |
| 3557 | four | 1 * ACH + -1 * AHP + -1 * ACP + -1 * CHP = 0 | vertices ACHP |
| 3562 | four | 1 * ACP + -1 * APR + -1 * ACR + 1 * CPR = 0 | vertices ACPR |
| 3566 | four | 1 * AEF + -1 * AFQ + -1 * AEQ + -1 * EFQ = 0 | vertices AEFQ |
| 3573 | four | 1 * AEP + -1 * APQ + -1 * AEQ + -1 * EPQ = 0 | vertices AEPQ |
| 3583 | four | -1 * AHP + -1 * APQ + 1 * AHQ + -1 * HPQ = 0 | vertices AHPQ |
| 3597 | four | 1 * BCH + -1 * BHP + -1 * BCP + -1 * CHP = 0 | vertices BCHP |
| 3606 | four | 1 * BEF + -1 * BFQ + -1 * BEQ + -1 * EFQ = 0 | vertices BEFQ |
| 3624 | four | -1 * BHP + -1 * BPR + 1 * BHR + -1 * HPR = 0 | vertices BHPR |
| 3632 | four | 1 * CEH + -1 * CHQ + -1 * CEQ + -1 * EHQ = 0 | vertices CEHQ |
| 3642 | four | 1 * CFH + -1 * CHQ + -1 * CFQ + -1 * FHQ = 0 | vertices CFHQ |
| 3645 | four | 1 * CFP + -1 * CPQ + -1 * CFQ + -1 * FPQ = 0 | vertices CFPQ |
| 3650 | four | -1 * CFR + 1 * CRS + 1 * CFS + 1 * FRS = 0 | vertices CFRS |
| 3659 | four | -1 * CPR + 1 * CRS + 1 * CPS + 1 * PRS = 0 | vertices CPRS |
| 3676 | four | -1 * EHR + 1 * ERS + 1 * EHS + 1 * HRS = 0 | vertices EHRS |
| 3679 | four | -1 * EPR + 1 * ERS + 1 * EPS + 1 * PRS = 0 | vertices EPRS |
| 3690 | four | 1 * FQR + -1 * FRS + -1 * FQS + -1 * QRS = 0 | vertices FQRS |
| 3694 | four | 1 * HQR + -1 * HRS + -1 * HQS + -1 * QRS = 0 | vertices HQRS |
| 3695 | four | 1 * PQR + -1 * PRS + -1 * PQS + -1 * QRS = 0 | vertices PQRS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 77:229 | AEP | lo | 284987/1000000 | 284987/1000000 | 5 | 77:36, 77:176, 77:60 |
| 77:231 | BEP | lo | 77999/250000 | 77999/250000 | 15 | 77:86, 77:176, 77:110 |
| 77:236 | EHQ | lo | 1679/15625 | 24668281/229566000 | 429 | 77:32, 77:176, 77:36, 77:168, 77:35 |
| 77:237 | EHP | lo | 52397/500000 | 37214229/355116500 | 430 | 77:32, 77:208, 77:52, 77:236, 77:55 |
| 77:238 | CEF | lo | 63789/500000 | 18736183/146860500 | 757 | 77:120, 77:134, 77:124, 77:130, 77:149 |
| 77:241 | BCP | lo | 21829/125000 | 156511246653/896233000000 | 2193 | 77:33, 77:237, 77:52, 77:229, 77:0, 77:66, 77:70 |
| 77:255 | AFQ | hi | 5133/8000 | 73647589439/114783000000 | 2267 | 77:35, 77:176, 77:60, 77:36, 77:31, 77:44 |
| 77:256 | AHQ | hi | 172839/250000 | 3174235916449/4591320000000 | 2268 | 77:35, 77:176, 77:60, 77:36, 77:33, 77:53 |
| 77:257 | BFQ | hi | 613347/1000000 | 14080359742144573/22956600000000000 | 2273 | 77:35, 77:176, 77:60, 77:36, 77:4, 77:81, 77:94 |
| 77:258 | BHQ | hi | 89493/125000 | 164356286632889/229566000000000 | 2274 | 77:35, 77:176, 77:60, 77:36, 77:6, 77:83, 77:103 |
| 77:259 | BPQ | hi | 126261/250000 | 19323453077785429/38261000000000000 | 2275 | 77:35, 77:176, 77:60, 77:36, 77:8, 77:85 |
| 77:261 | EHQ | lo | 107711/1000000 | 6181741/57391500 | 2285 | 77:35, 77:176, 77:60, 77:36, 77:32, 77:237 |
| 77:265 | EHP | lo | 10769/100000 | 24817391/230452000 | 2365 | 77:256, 77:208, 77:60, 77:52, 77:32, 77:261 |
| 77:267 | FPR | lo | 793/6250 | 29239851/230452000 | 2373 | 77:256, 77:208, 77:60, 77:52, 77:48, 77:192, 77:202 |
| 77:270 | APQ | lo | 28353/250000 | 19840335711183/174939543131000 | 2543 | 77:81, 77:162, 77:96, 77:86, 77:8, 77:229, 77:44 |
| 77:272 | CFP | hi | 149579/200000 | 88364796046780667/118151378000000000 | 2594 | 77:83, 77:265, 77:102, 77:231, 77:69, 77:238, 77:129 |
| 77:274 | CPR | hi | 880637/1000000 | 83238735577/94521102400 | 2598 | 77:83, 77:265, 77:102, 77:231, 77:77, 77:124, 77:143 |
| 77:281 | APQ | hi | 31229/62500 | 3726364209/7457750000 | 2742 | 77:258, 77:208, 77:110, 77:102, 77:10, 77:256 |
| 77:289 | PQR | hi | 39603/62500 | 34036458489547303/53715109619000000 | 2968 | 77:129, 77:190, 77:140, 77:132, 77:274, 77:267, 77:210 |
| 77:290 | CQR | lo | 12417/100000 | 92866731/747895000 | 2991 | 77:272, 77:196, 77:146, 77:132, 77:134, 77:148 |
| 77:295 | FHQ | lo | 17923/100000 | 157836903/880637000 | 3194 | 77:274, 77:220, 77:290, 77:146, 77:128, 77:188, 77:192 |
| 77:296 | FPQ | lo | 105793/1000000 | 18633201/176127400 | 3195 | 77:274, 77:220, 77:290, 77:146, 77:130, 77:267 |
| 77:302 | FHS | lo | 121743/1000000 | 21442359/176127400 | 3233 | 77:274, 77:224, 77:156, 77:150, 77:128, 77:188, 77:192 |
| 77:305 | BPS | lo | 133057/1000000 | 13687924056827/102872312439000 | 3297 | 77:165, 77:206, 77:186, 77:166, 77:231, 77:94, 77:112 |
| 77:309 | HQS | lo | 15157/100000 | 15592405645117129/102872312439000000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:261, 77:295, 77:214 |
| 77:310 | PQS | lo | 15369/125000 | 12648416556827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:296, 77:220 |
| 77:312 | BFS | hi | 58969/100000 | 64350065529947471/109125400000000000 | 3412 | 77:203, 77:226, 77:206, 77:204, 77:257, 77:99 |
| 77:316 | AFS | hi | 561057/1000000 | 103958640908036339/185290750000000000 | 3446 | 77:215, 77:226, 77:218, 77:309, 77:42, 77:255, 77:49 |
| 77:317 | AHS | hi | 189517/250000 | 561851508979/741163000000 | 3447 | 77:215, 77:226, 77:218, 77:309, 77:256, 77:57 |
| 77:322 | CES | lo | 120299/1000000 | 397017/3300250 | 3493 | 77:289, 77:226, 77:224, 77:310, 77:120, 77:122, 77:124 |
| 77:325 | CRS | lo | 119913/1000000 | 1266381/10560800 | 3498 | 77:289, 77:226, 77:224, 77:310, 77:148, 77:290 |
| 77:333 | AEP | lo | 74853/250000 | 74853/250000 | 3573 | 77:270, 77:36, 77:176 |
| 77:335 | BCH | lo | 45079/125000 | 45079/125000 | 3597 | 77:102, 77:241, 77:138 |
| 77:337 | CFH | lo | 36523/100000 | 36523/100000 | 3642 | 77:140, 77:132, 77:295 |
| 77:338 | CFP | lo | 291793/1000000 | 291793/1000000 | 3645 | 77:146, 77:132, 77:296 |
| 77:339 | CFR | lo | 305913/1000000 | 305913/1000000 | 3650 | 77:325, 77:136, 77:206 |
| 77:342 | HQR | lo | 33757/100000 | 33757/100000 | 3694 | 77:218, 77:309, 77:226 |
| 77:343 | PQR | lo | 38619/125000 | 38619/125000 | 3695 | 77:224, 77:310, 77:226 |
| 77:349 | EHQ | lo | 54051/500000 | 1240837/11478300 | 429 | 77:32, 77:176, 77:36, 77:265, 77:35 |
| 77:350 | EHP | lo | 53871/500000 | 3103689/28806500 | 430 | 77:32, 77:208, 77:52, 77:349, 77:256 |
| 77:354 | CEF | lo | 127733/1000000 | 28121619/220159250 | 757 | 77:120, 77:339, 77:124, 77:338, 77:274 |
| 77:356 | FPQ | lo | 14471/125000 | 12743733867/110079625000 | 864 | 77:338, 77:343, 77:146, 77:267, 77:274 |
| 77:360 | BCP | lo | 18241/100000 | 20435237673/112029125000 | 2193 | 77:33, 77:350, 77:52, 77:333, 77:0, 77:66, 77:335 |
| 77:366 | EHQ | lo | 108109/1000000 | 517049/4782625 | 2285 | 77:35, 77:176, 77:270, 77:36, 77:32, 77:350 |
| 77:369 | EHP | lo | 107743/1000000 | 24829729/230452000 | 2365 | 77:256, 77:208, 77:270, 77:52, 77:32, 77:366 |
| 77:373 | APQ | lo | 57473/500000 | 20108640711183/174939543131000 | 2543 | 77:81, 77:162, 77:96, 77:86, 77:8, 77:333, 77:44 |
| 77:375 | CFP | hi | 18697/25000 | 88362994171780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:354, 77:129 |
| 77:376 | CPR | hi | 880631/1000000 | 832381856119/945211024000 | 2598 | 77:83, 77:369, 77:102, 77:231, 77:77, 77:124, 77:143 |
| 77:377 | FQS | lo | 12093/125000 | 664024371/6863672000 | 2880 | 77:119, 77:366, 77:140, 77:122, 77:136, 77:166, 77:302 |
| 77:380 | PQR | hi | 158411/250000 | 238253511392227123/376005767333000000 | 2968 | 77:129, 77:295, 77:140, 77:132, 77:376, 77:267, 77:210 |
| 77:382 | CQR | lo | 124197/1000000 | 92884959/747880000 | 2991 | 77:375, 77:356, 77:146, 77:132, 77:339, 77:148 |
| 77:389 | FHQ | lo | 94253/500000 | 4150117149/22015775000 | 3194 | 77:376, 77:343, 77:382, 77:146, 77:337, 77:188, 77:192 |
| 77:390 | FPQ | lo | 115769/1000000 | 12743733867/110078875000 | 3195 | 77:376, 77:343, 77:382, 77:146, 77:338, 77:267 |
| 77:401 | CPS | lo | 343283/1000000 | 35314341670481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:338, 77:148 |
| 77:404 | HQS | lo | 30959/200000 | 5308073941822617/34290770813000000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:366, 77:389, 77:342 |
| 77:405 | PQS | lo | 16121/125000 | 13267300556827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:390, 77:343 |
| 77:415 | APS | hi | 505823/1000000 | 8012790555917831/15841100000000000 | 3487 | 77:380, 77:226, 77:224, 77:405, 77:281, 77:63 |
| 77:419 | CRS | lo | 59959/500000 | 6907761/57604000 | 3498 | 77:380, 77:226, 77:224, 77:405, 77:148, 77:382 |
| 77:427 | AEP | lo | 150473/500000 | 150473/500000 | 3573 | 77:373, 77:36, 77:176 |
| 77:431 | BCH | lo | 36841/100000 | 36841/100000 | 3597 | 77:102, 77:360, 77:138 |
| 77:433 | CFH | lo | 187253/500000 | 187253/500000 | 3642 | 77:140, 77:132, 77:389 |
| 77:434 | CFP | lo | 301769/1000000 | 301769/1000000 | 3645 | 77:146, 77:132, 77:390 |
| 77:435 | CFR | lo | 152959/500000 | 152959/500000 | 3650 | 77:419, 77:136, 77:206 |
| 77:440 | FQR | lo | 35343/125000 | 35343/125000 | 3690 | 77:206, 77:377, 77:226 |
| 77:441 | HQR | lo | 68159/200000 | 68159/200000 | 3694 | 77:218, 77:404, 77:226 |
| 77:442 | PQR | lo | 39371/125000 | 39371/125000 | 3695 | 77:224, 77:405, 77:226 |
| 77:448 | EHQ | lo | 10811/100000 | 24818383/229566000 | 429 | 77:32, 77:176, 77:36, 77:369, 77:35 |
| 77:453 | CEF | lo | 128789/1000000 | 113415639/880631000 | 757 | 77:120, 77:435, 77:124, 77:434, 77:376 |
| 77:455 | FPQ | lo | 12133/100000 | 13355927299/110078875000 | 864 | 77:434, 77:442, 77:146, 77:267, 77:376 |
| 77:457 | EFQ | lo | 28037/250000 | 217287760133493/1937500000000000 | 1974 | 77:440, 77:165 |
| 77:459 | BCP | lo | 185479/1000000 | 8311660343/44811650000 | 2193 | 77:33, 77:369, 77:52, 77:427, 77:0, 77:66, 77:431 |
| 77:470 | APQ | lo | 115109/1000000 | 20137173111183/174939543131000 | 2543 | 77:81, 77:457, 77:96, 77:86, 77:8, 77:427, 77:44 |
| 77:472 | CFP | hi | 11684/15625 | 88350718171780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:453, 77:129 |
| 77:475 | CQR | lo | 24843/200000 | 5805339/46736000 | 2991 | 77:472, 77:455, 77:146, 77:132, 77:435, 77:148 |
| 77:480 | FHQ | lo | 193683/1000000 | 21320508101/110078875000 | 3194 | 77:376, 77:442, 77:475, 77:146, 77:433, 77:188, 77:192 |
| 77:482 | FHS | lo | 15341/125000 | 108078741/880631000 | 3233 | 77:376, 77:224, 77:419, 77:401, 77:433, 77:188, 77:192 |
| 77:487 | CPS | lo | 172393/500000 | 35468969670481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:434, 77:148 |
| 77:489 | HQS | lo | 78031/500000 | 535150823259343/3429077081300000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:480, 77:441 |
| 77:490 | PQS | lo | 16339/125000 | 13446744056827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:455, 77:442 |
| 77:503 | CRS | lo | 1499/12500 | 15197409/126728800 | 3498 | 77:380, 77:226, 77:224, 77:490, 77:148, 77:475 |
| 77:508 | AEP | lo | 301109/1000000 | 301109/1000000 | 3573 | 77:470, 77:36, 77:176 |
| 77:512 | BCH | lo | 371479/1000000 | 371479/1000000 | 3597 | 77:102, 77:459, 77:138 |
| 77:514 | CEH | lo | 29411/100000 | 29411/100000 | 3632 | 77:140, 77:122, 77:448 |
| 77:515 | CFH | lo | 379683/1000000 | 379683/1000000 | 3642 | 77:140, 77:132, 77:480 |
| 77:516 | CFP | lo | 30733/100000 | 30733/100000 | 3645 | 77:146, 77:132, 77:455 |
| 77:517 | CFR | lo | 956/3125 | 956/3125 | 3650 | 77:503, 77:136, 77:206 |
| 77:523 | HQR | lo | 171031/500000 | 171031/500000 | 3694 | 77:218, 77:489, 77:226 |
| 77:524 | PQR | lo | 39589/125000 | 39589/125000 | 3695 | 77:224, 77:490, 77:226 |
| 77:533 | CEF | lo | 4043/31250 | 11393337/88063100 | 757 | 77:120, 77:517, 77:124, 77:516, 77:376 |
| 77:534 | FPQ | lo | 15491/125000 | 1364186737/11007887500 | 864 | 77:516, 77:524, 77:146, 77:267, 77:376 |
| 77:537 | BCP | lo | 186561/1000000 | 167202202211/896233000000 | 2193 | 77:33, 77:369, 77:52, 77:508, 77:0, 77:66, 77:512 |
| 77:548 | APQ | lo | 57563/500000 | 20140204911183/174939543131000 | 2543 | 77:81, 77:457, 77:96, 77:86, 77:8, 77:508, 77:44 |
| 77:550 | CFP | hi | 373859/500000 | 88343894296780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:533, 77:129 |
| 77:551 | FQS | lo | 96873/1000000 | 1080470931/11153467000 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:482 |
| 77:552 | CQR | lo | 4969/40000 | 9288561/74771800 | 2991 | 77:550, 77:534, 77:146, 77:132, 77:517, 77:148 |
| 77:557 | FHQ | lo | 196103/1000000 | 10793414331/55039437500 | 3194 | 77:376, 77:524, 77:552, 77:146, 77:515, 77:188, 77:192 |
| 77:561 | FHS | lo | 4931/40000 | 54280101/440315500 | 3233 | 77:376, 77:224, 77:503, 77:487, 77:515, 77:188, 77:192 |
| 77:566 | CPS | lo | 43203/125000 | 35555165170481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:516, 77:148 |
| 77:568 | HQS | lo | 78309/500000 | 41311982558411/263775160100000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:557, 77:523 |
| 77:569 | PQS | lo | 131367/1000000 | 4504681685609/34290770813000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:534, 77:524 |
| 77:583 | CRS | lo | 59961/500000 | 3039519/25345760 | 3498 | 77:380, 77:226, 77:224, 77:569, 77:148, 77:552 |
| 77:587 | AEP | lo | 150563/500000 | 150563/500000 | 3573 | 77:548, 77:36, 77:176 |
| 77:591 | BCH | lo | 372561/1000000 | 372561/1000000 | 3597 | 77:102, 77:537, 77:138 |
| 77:592 | CFH | lo | 382103/1000000 | 382103/1000000 | 3642 | 77:140, 77:132, 77:557 |
| 77:594 | CFP | lo | 38741/125000 | 38741/125000 | 3645 | 77:146, 77:132, 77:534 |
| 77:595 | CFR | lo | 152961/500000 | 152961/500000 | 3650 | 77:583, 77:136, 77:206 |
| 77:600 | FQR | lo | 282873/1000000 | 282873/1000000 | 3690 | 77:206, 77:551, 77:226 |
| 77:601 | HQR | lo | 171309/500000 | 171309/500000 | 3694 | 77:218, 77:568, 77:226 |
| 77:602 | PQR | lo | 317367/1000000 | 317367/1000000 | 3695 | 77:224, 77:569, 77:226 |
| 77:611 | CEF | lo | 129651/1000000 | 57087771/440315500 | 757 | 77:120, 77:595, 77:124, 77:594, 77:376 |
| 77:612 | FPQ | lo | 31273/250000 | 13770094947/110078875000 | 864 | 77:594, 77:602, 77:146, 77:267, 77:376 |
| 77:614 | EFQ | lo | 112199/1000000 | 19130046863442753/170500000000000000 | 1974 | 77:600, 77:165 |
| 77:616 | BCP | lo | 186929/1000000 | 83766377343/448116500000 | 2193 | 77:33, 77:369, 77:52, 77:587, 77:0, 77:66, 77:591 |
| 77:624 | FPR | lo | 63449/500000 | 3655489/28806500 | 2373 | 77:256, 77:208, 77:548, 77:52, 77:48, 77:192, 77:600 |
| 77:627 | APQ | lo | 14391/125000 | 20140521111183/174939543131000 | 2543 | 77:81, 77:614, 77:96, 77:86, 77:8, 77:587, 77:44 |
| 77:629 | CFP | hi | 747691/1000000 | 88340697421780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:611, 77:129 |
| 77:631 | FQS | lo | 6059/62500 | 8650126323/89227736000 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:561 |
| 77:632 | PQR | hi | 316821/500000 | 238252674392227123/376005767333000000 | 2968 | 77:129, 77:557, 77:140, 77:132, 77:376, 77:624, 77:210 |
| 77:633 | CQR | lo | 12423/100000 | 23221449/186922750 | 2991 | 77:629, 77:612, 77:146, 77:132, 77:595, 77:148 |
| 77:638 | FHQ | lo | 49297/250000 | 173650434801/880631000000 | 3194 | 77:376, 77:602, 77:633, 77:146, 77:592, 77:188, 77:192 |
| 77:639 | FPQ | lo | 62547/500000 | 13770304197/110078875000 | 3195 | 77:376, 77:602, 77:633, 77:146, 77:594, 77:624 |
| 77:641 | FHS | lo | 123531/1000000 | 54392631/440315500 | 3233 | 77:376, 77:224, 77:583, 77:566, 77:592, 77:188, 77:192 |
| 77:646 | CPS | lo | 69203/200000 | 35595434170481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:594, 77:148 |
| 77:648 | HQS | lo | 31373/200000 | 537903623259343/3429077081300000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:638, 77:601 |
| 77:649 | PQS | lo | 131641/1000000 | 4514090185609/34290770813000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:639, 77:602 |
| 77:663 | CRS | lo | 119923/1000000 | 633237/5280350 | 3498 | 77:632, 77:226, 77:224, 77:649, 77:148, 77:633 |
| 77:670 | AEF | lo | 298199/1000000 | 298199/1000000 | 3566 | 77:46, 77:36, 77:614 |
| 77:671 | AEP | lo | 37641/125000 | 37641/125000 | 3573 | 77:627, 77:36, 77:176 |
| 77:672 | AHQ | lo | 37641/125000 | 37641/125000 | 3583 | 77:52, 77:627, 77:208 |
| 77:675 | BCH | lo | 372929/1000000 | 372929/1000000 | 3597 | 77:102, 77:616, 77:138 |
| 77:676 | BEF | lo | 298199/1000000 | 298199/1000000 | 3606 | 77:96, 77:86, 77:614 |
| 77:677 | CFH | lo | 95797/250000 | 95797/250000 | 3642 | 77:140, 77:132, 77:638 |
| 77:679 | CFP | lo | 155547/500000 | 155547/500000 | 3645 | 77:146, 77:132, 77:639 |
| 77:680 | CFR | lo | 305923/1000000 | 305923/1000000 | 3650 | 77:663, 77:136, 77:206 |
| 77:685 | FQR | lo | 4421/15625 | 4421/15625 | 3690 | 77:206, 77:631, 77:226 |
| 77:686 | HQR | lo | 68573/200000 | 68573/200000 | 3694 | 77:218, 77:648, 77:226 |
| 77:687 | PQR | lo | 317641/1000000 | 317641/1000000 | 3695 | 77:224, 77:649, 77:226 |
| 77:688 | EHP | hi | 100421/200000 | 100421/200000 | 3 | 77:33, 77:671, 77:52 |
| 77:692 | AFR | lo | 15513/100000 | 1055735070/6805474093 | 399 | 77:670, 77:192, 77:42, 77:164, 77:159 |
| 77:695 | BFR | lo | 15513/100000 | 1055735070/6805474093 | 639 | 77:676, 77:192, 77:92, 77:164, 77:159 |
| 77:698 | CEF | lo | 5191/40000 | 6014961/46349000 | 757 | 77:120, 77:680, 77:124, 77:679, 77:376 |
| 77:699 | FPQ | lo | 125611/1000000 | 55308861627/440315500000 | 864 | 77:679, 77:687, 77:146, 77:624, 77:376 |
| 77:700 | ACP | lo | 1349/10000 | 287507498667371/2131250000000000 | 1650 | 77:671, 77:121 |
| 77:701 | EFQ | lo | 112227/1000000 | 298982006707181/2664062500000000 | 1974 | 77:685, 77:165 |
| 77:703 | BCP | lo | 93527/500000 | 805981389/4308812500 | 2193 | 77:33, 77:369, 77:52, 77:671, 77:0, 77:66, 77:675 |
| 77:704 | CHP | hi | 235793/500000 | 84530168093/179246600000 | 2203 | 77:33, 77:369, 77:52, 77:671, 77:21, 77:514 |
| 77:706 | HPR | hi | 119021/200000 | 119021/200000 | 2221 | 77:33, 77:369, 77:52, 77:671, 77:57, 77:173 |
| 77:708 | HPQ | hi | 353941/1000000 | 8125272643/22956600000 | 2295 | 77:35, 77:176, 77:627, 77:36, 77:52, 77:688 |
| 77:709 | BPR | lo | 139863/1000000 | 14388074556827/102872312439000 | 2317 | 77:43, 77:188, 77:52, 77:44, 77:12, 77:695, 77:106 |
| 77:711 | FPR | lo | 31727/250000 | 2924633/23045200 | 2373 | 77:256, 77:208, 77:627, 77:52, 77:692, 77:192, 77:685 |
| 77:715 | CFP | hi | 747679/1000000 | 88339255921780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:698, 77:129 |
| 77:717 | FQS | lo | 96977/1000000 | 8653102323/89227736000 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:641 |
| 77:718 | PQR | hi | 15841/25000 | 238252209392227123/376005767333000000 | 2968 | 77:129, 77:638, 77:140, 77:132, 77:376, 77:711, 77:210 |
| 77:719 | CQR | lo | 15529/125000 | 92885889/747679000 | 2991 | 77:715, 77:699, 77:146, 77:132, 77:680, 77:148 |
| 77:724 | FHQ | lo | 197669/1000000 | 43518572377/220157750000 | 3194 | 77:376, 77:687, 77:719, 77:146, 77:677, 77:188, 77:192 |
| 77:725 | FPQ | lo | 31403/250000 | 55309326627/440315500000 | 3195 | 77:376, 77:687, 77:719, 77:146, 77:679, 77:711 |
| 77:726 | ACS | hi | 42681/50000 | 751724015109/880631000000 | 3210 | 77:376, 77:224, 77:663, 77:646, 77:23, 77:27 |
| 77:728 | FHS | lo | 24729/200000 | 108886167/880631000 | 3233 | 77:376, 77:224, 77:663, 77:646, 77:677, 77:188, 77:192 |
| 77:733 | CPS | lo | 346191/1000000 | 11871169056827/34290770813000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:679, 77:148 |
| 77:734 | HQS | lo | 6279/40000 | 1663068248999/10594470900000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:724, 77:686 |
| 77:735 | PQS | lo | 1647/12500 | 4518182185609/34290770813000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:725, 77:687 |
| 77:749 | EHS | hi | 60147/100000 | 153675569/255500000 | 3501 | 77:718, 77:226, 77:224, 77:735, 77:369, 77:448, 77:173 |
| 77:751 | HPS | hi | 94473/200000 | 431033/912500 | 3511 | 77:718, 77:226, 77:224, 77:735, 77:708, 77:706 |
| 77:752 | HQS | hi | 509951/1000000 | 260584843/511000000 | 3512 | 77:718, 77:226, 77:224, 77:735, 77:208, 77:215 |
| 77:754 | ACH | lo | 3209/10000 | 3209/10000 | 3557 | 77:52, 77:700, 77:138 |
| 77:755 | ACR | lo | 5389/25000 | 21556069279/100000000000 | 3562 | 77:700, 77:63, 77:148 |
| 77:756 | AEF | lo | 298227/1000000 | 298227/1000000 | 3566 | 77:46, 77:36, 77:701 |
| 77:759 | BCH | lo | 186527/500000 | 186527/500000 | 3597 | 77:102, 77:703, 77:138 |
| 77:760 | BEF | lo | 298227/1000000 | 298227/1000000 | 3606 | 77:96, 77:86, 77:701 |
| 77:761 | BHR | lo | 3419/10000 | 3419/10000 | 3624 | 77:102, 77:709, 77:210 |
| 77:762 | CFH | lo | 383669/1000000 | 383669/1000000 | 3642 | 77:140, 77:132, 77:724 |
| 77:764 | CFP | lo | 77903/250000 | 77903/250000 | 3645 | 77:146, 77:132, 77:725 |
| 77:768 | FQR | lo | 282977/1000000 | 282977/1000000 | 3690 | 77:206, 77:717, 77:226 |
| 77:769 | HQR | lo | 13719/40000 | 13719/40000 | 3694 | 77:218, 77:734, 77:226 |
| 77:770 | PQR | lo | 993/3125 | 993/3125 | 3695 | 77:224, 77:735, 77:226 |
| 77:772 | APR | lo | 109077/1000000 | 50971837/467299375 | 346 | 77:700, 77:711, 77:44, 77:148, 77:715 |
| 77:773 | AFR | lo | 77567/500000 | 1055761110/6805474093 | 399 | 77:756, 77:192, 77:42, 77:164, 77:159 |
| 77:776 | BFR | lo | 77567/500000 | 1055761110/6805474093 | 639 | 77:760, 77:192, 77:92, 77:164, 77:159 |
| 77:779 | CEF | lo | 12983/100000 | 114332433/880631000 | 757 | 77:120, 77:680, 77:124, 77:764, 77:376 |
| 77:780 | FPQ | lo | 125841/1000000 | 692626707/5503943750 | 864 | 77:764, 77:770, 77:146, 77:711, 77:376 |
| 77:781 | EFQ | lo | 1403/12500 | 19137080142949097/170500000000000000 | 1974 | 77:768, 77:165 |
| 77:783 | BCP | lo | 23387/125000 | 20960221239/112029125000 | 2193 | 77:33, 77:369, 77:52, 77:671, 77:0, 77:66, 77:759 |
| 77:786 | BPR | lo | 17483/125000 | 4796050685609/34290770813000 | 2317 | 77:43, 77:188, 77:52, 77:44, 77:12, 77:776, 77:761 |
| 77:787 | FPR | lo | 126913/1000000 | 29247477/230452000 | 2373 | 77:256, 77:208, 77:627, 77:52, 77:773, 77:192, 77:768 |
| 77:791 | CFP | hi | 373837/500000 | 88338616546780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:779, 77:129 |
| 77:793 | FQS | lo | 3031/31250 | 8654427573/89227736000 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:728 |
| 77:794 | CQR | lo | 124233/1000000 | 92885889/747674000 | 2991 | 77:791, 77:780, 77:146, 77:132, 77:680, 77:148 |
| 77:799 | FHQ | lo | 98941/500000 | 4356541611/22015775000 | 3194 | 77:376, 77:770, 77:794, 77:146, 77:762, 77:188, 77:192 |
| 77:800 | FPQ | lo | 62921/500000 | 2770518453/22015775000 | 3195 | 77:376, 77:770, 77:794, 77:146, 77:764, 77:787 |
| 77:801 | FHS | lo | 7731/62500 | 1089309/8806310 | 3233 | 77:376, 77:224, 77:663, 77:733, 77:762, 77:188, 77:192 |
| 77:804 | APS | lo | 126781/1000000 | 4347434185609/34290770813000 | 3292 | 77:165, 77:206, 77:186, 77:166, 77:671, 77:44, 77:772 |
| 77:805 | CHS | lo | 367683/1000000 | 3782441031143429/10287231243900000 | 3300 | 77:165, 77:206, 77:186, 77:166, 77:514, 77:762, 77:142 |
| 77:806 | CPS | lo | 346269/1000000 | 35621536170481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:764, 77:148 |
| 77:807 | HQS | lo | 157023/1000000 | 1615339919778029/10287231243900000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:799, 77:769 |
| 77:808 | PQS | lo | 131813/1000000 | 13559956056827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:800, 77:770 |
| 77:820 | CFS | hi | 427151/1000000 | 109137039/255500000 | 3494 | 77:718, 77:226, 77:224, 77:808, 77:764, 77:132, 77:135 |
| 77:822 | CRS | lo | 29981/250000 | 2451249/20440000 | 3498 | 77:718, 77:226, 77:224, 77:808, 77:148, 77:794 |
| 77:823 | AEF | lo | 932/3125 | 932/3125 | 3566 | 77:46, 77:36, 77:781 |
| 77:826 | BCH | lo | 46637/125000 | 46637/125000 | 3597 | 77:102, 77:783, 77:138 |
| 77:829 | CFH | lo | 191941/500000 | 191941/500000 | 3642 | 77:140, 77:132, 77:799 |
| 77:831 | CFP | lo | 155921/500000 | 155921/500000 | 3645 | 77:146, 77:132, 77:800 |
| 77:832 | CFR | lo | 76481/250000 | 76481/250000 | 3650 | 77:822, 77:136, 77:206 |
| 77:834 | CPS | hi | 667707/1000000 | 667707/1000000 | 3659 | 77:376, 77:822, 77:224 |
| 77:837 | FQR | lo | 17687/62500 | 17687/62500 | 3690 | 77:206, 77:793, 77:226 |
| 77:838 | HQR | lo | 343023/1000000 | 343023/1000000 | 3694 | 77:218, 77:807, 77:226 |
| 77:839 | PQR | lo | 317813/1000000 | 317813/1000000 | 3695 | 77:224, 77:808, 77:226 |
| 77:842 | AFR | lo | 31027/200000 | 1055773200/6805474093 | 399 | 77:823, 77:192, 77:42, 77:164, 77:159 |
| 77:845 | HPR | lo | 54519/500000 | 38721201/355116500 | 607 | 77:102, 77:148, 77:786, 77:138, 77:73 |
| 77:848 | EHS | lo | 114889/1000000 | 6134378013/53393875000 | 751 | 77:322, 77:801, 77:805, 77:166, 77:820 |
| 77:850 | FPQ | lo | 15743/125000 | 55455175273/440315500000 | 864 | 77:831, 77:839, 77:146, 77:787, 77:376 |
| 77:851 | EFQ | lo | 56123/500000 | 1196130909891407/10656250000000000 | 1974 | 77:837, 77:165 |
| 77:853 | BCP | lo | 18711/100000 | 20961802161/112029125000 | 2193 | 77:33, 77:369, 77:52, 77:671, 77:0, 77:66, 77:826 |
| 77:856 | FPR | lo | 25383/200000 | 1720469/13556000 | 2373 | 77:256, 77:208, 77:627, 77:52, 77:842, 77:192, 77:837 |
| 77:862 | FQS | lo | 96999/1000000 | 270469389/2788366750 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:801 |
| 77:863 | PQR | hi | 633639/1000000 | 238251837392227123/376005767333000000 | 2968 | 77:129, 77:799, 77:140, 77:132, 77:376, 77:856, 77:845 |
| 77:868 | FHQ | lo | 197977/1000000 | 4588020107/23174500000 | 3194 | 77:376, 77:839, 77:794, 77:146, 77:829, 77:188, 77:192 |
| 77:870 | FHS | lo | 61859/500000 | 108950709/880631000 | 3233 | 77:376, 77:224, 77:822, 77:806, 77:829, 77:188, 77:192 |
| 77:874 | CHS | lo | 73543/200000 | 3782771181143429/10287231243900000 | 3300 | 77:165, 77:206, 77:186, 77:166, 77:514, 77:829, 77:142 |
| 77:875 | CPS | lo | 5411/15625 | 35625101170481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:831, 77:148 |
| 77:876 | HQS | lo | 31409/200000 | 538520523259343/3429077081300000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:868, 77:838 |
| 77:877 | PQS | lo | 32959/250000 | 4520786185609/34290770813000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:850, 77:839 |
| 77:889 | CFS | hi | 427117/1000000 | 45106296337/105606500000 | 3494 | 77:863, 77:226, 77:224, 77:877, 77:831, 77:132, 77:135 |
| 77:891 | EPS | hi | 546983/1000000 | 23105978643493497/42242600000000000 | 3502 | 77:863, 77:226, 77:224, 77:877, 77:176, 77:179 |
| 77:893 | AEF | lo | 149123/500000 | 149123/500000 | 3566 | 77:46, 77:36, 77:851 |
| 77:896 | BCH | lo | 37311/100000 | 37311/100000 | 3597 | 77:102, 77:853, 77:138 |
| 77:898 | BHR | lo | 170951/500000 | 170951/500000 | 3624 | 77:102, 77:786, 77:845 |
| 77:899 | CFH | lo | 383977/1000000 | 383977/1000000 | 3642 | 77:140, 77:132, 77:868 |
| 77:901 | CFP | lo | 38993/125000 | 38993/125000 | 3645 | 77:146, 77:132, 77:850 |
| 77:903 | EHR | lo | 300889/1000000 | 300889/1000000 | 3676 | 77:186, 77:848, 77:218 |
| 77:905 | FQR | lo | 282999/1000000 | 282999/1000000 | 3690 | 77:206, 77:862, 77:226 |
| 77:906 | HQR | lo | 68609/200000 | 68609/200000 | 3694 | 77:218, 77:876, 77:226 |
| 77:907 | PQR | lo | 79459/250000 | 79459/250000 | 3695 | 77:224, 77:877, 77:226 |
| 77:909 | AFR | lo | 2424/15625 | 1055778780/6805474093 | 399 | 77:893, 77:192, 77:42, 77:164, 77:159 |
| 77:910 | BER | lo | 32367/250000 | 92417727/713821888 | 529 | 77:66, 77:903, 77:82, 77:124, 77:119 |
| 77:914 | EHS | lo | 114911/1000000 | 24540323341/213558500000 | 751 | 77:322, 77:870, 77:874, 77:166, 77:889 |
| 77:915 | CEF | lo | 25973/200000 | 28590897/220157750 | 757 | 77:120, 77:832, 77:124, 77:901, 77:376 |
| 77:916 | FPQ | lo | 125989/1000000 | 13868766023/110078875000 | 864 | 77:901, 77:907, 77:146, 77:856, 77:376 |
| 77:917 | EFQ | lo | 112249/1000000 | 617373159744369/5500000000000000 | 1974 | 77:905, 77:165 |
| 77:919 | BCP | lo | 93557/500000 | 4192465827/22405825000 | 2193 | 77:33, 77:369, 77:52, 77:671, 77:0, 77:66, 77:896 |
| 77:921 | BCQ | lo | 61033/500000 | 109399899/896233000 | 2233 | 77:33, 77:448, 77:672, 77:36, 77:0, 77:66, 77:896 |
| 77:922 | FPR | lo | 31729/250000 | 29248221/230452000 | 2373 | 77:256, 77:208, 77:627, 77:52, 77:909, 77:192, 77:905 |
| 77:924 | BPR | hi | 774883/1000000 | 183106875/236302756 | 2591 | 77:83, 77:369, 77:102, 77:231, 77:910, 77:107 |
| 77:925 | CFP | hi | 74767/100000 | 88338209671780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:915, 77:129 |
| 77:927 | FQS | lo | 48501/500000 | 4327638099/44613868000 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:870 |
| 77:932 | FHQ | lo | 99009/500000 | 43595412193/220157750000 | 3194 | 77:376, 77:907, 77:794, 77:146, 77:899, 77:188, 77:192 |
| 77:933 | FHS | lo | 7733/62500 | 13619943/110078875 | 3233 | 77:376, 77:224, 77:822, 77:875, 77:899, 77:188, 77:192 |
| 77:935 | CHS | lo | 367729/1000000 | 1260972810381143/3429077081300000 | 3300 | 77:165, 77:206, 77:186, 77:166, 77:514, 77:899, 77:142 |
| 77:936 | CPS | lo | 346319/1000000 | 35626682170481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:901, 77:148 |
| 77:937 | HQS | lo | 78527/500000 | 538553073259343/3429077081300000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:932, 77:906 |
| 77:938 | PQS | lo | 131847/1000000 | 13563412556827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:916, 77:907 |
| 77:945 | AES | lo | 44123/250000 | 6540473737/37058150000 | 3445 | 77:215, 77:226, 77:218, 77:937, 77:32, 77:36, 77:38 |
| 77:948 | BPS | hi | 155387/250000 | 131278981079/211213000000 | 3492 | 77:863, 77:226, 77:224, 77:938, 77:259, 77:924 |
| 77:949 | CFS | hi | 213551/500000 | 45104715337/105606500000 | 3494 | 77:863, 77:226, 77:224, 77:938, 77:901, 77:132, 77:135 |
| 77:951 | AEF | lo | 298249/1000000 | 298249/1000000 | 3566 | 77:46, 77:36, 77:917 |
| 77:953 | BCH | lo | 186557/500000 | 186557/500000 | 3597 | 77:102, 77:919, 77:138 |
| 77:954 | BEF | lo | 298249/1000000 | 298249/1000000 | 3606 | 77:96, 77:86, 77:917 |
| 77:955 | CFH | lo | 192009/500000 | 192009/500000 | 3642 | 77:140, 77:132, 77:932 |
| 77:957 | CFP | lo | 311989/1000000 | 311989/1000000 | 3645 | 77:146, 77:132, 77:916 |
| 77:959 | EHR | lo | 300911/1000000 | 300911/1000000 | 3676 | 77:186, 77:914, 77:218 |
| 77:961 | FQR | lo | 141501/500000 | 141501/500000 | 3690 | 77:206, 77:927, 77:226 |
| 77:962 | HQR | lo | 171527/500000 | 171527/500000 | 3694 | 77:218, 77:937, 77:226 |
| 77:963 | PQR | lo | 317847/1000000 | 317847/1000000 | 3695 | 77:224, 77:938, 77:226 |
| 77:965 | APR | lo | 2727/25000 | 101945023/934587500 | 346 | 77:700, 77:922, 77:44, 77:148, 77:925 |
| 77:966 | AFR | lo | 155137/1000000 | 25750770/165987173 | 399 | 77:951, 77:192, 77:42, 77:164, 77:159 |
| 77:967 | BER | lo | 129471/1000000 | 92419773/713821888 | 529 | 77:66, 77:959, 77:82, 77:124, 77:119 |
| 77:968 | BFR | lo | 155137/1000000 | 25750770/165987173 | 639 | 77:954, 77:192, 77:92, 77:164, 77:159 |
| 77:970 | EHS | lo | 114921/1000000 | 6135393959/53387750000 | 751 | 77:322, 77:933, 77:935, 77:166, 77:949 |
| 77:972 | FPQ | lo | 126009/1000000 | 110967955683/880631000000 | 864 | 77:957, 77:963, 77:146, 77:922, 77:376 |
| 77:975 | BCP | lo | 46779/250000 | 20962479699/112029125000 | 2193 | 77:33, 77:369, 77:52, 77:671, 77:0, 77:66, 77:953 |
| 77:977 | FPR | lo | 126917/1000000 | 5849669/46090400 | 2373 | 77:256, 77:208, 77:627, 77:52, 77:966, 77:192, 77:961 |
| 77:979 | FQS | lo | 97003/1000000 | 135240507/1394183375 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:933 |
| 77:984 | FHQ | lo | 198037/1000000 | 87198940623/440315500000 | 3194 | 77:376, 77:963, 77:794, 77:146, 77:955, 77:188, 77:192 |
| 77:985 | FHS | lo | 123733/1000000 | 108963357/880631000 | 3233 | 77:376, 77:224, 77:822, 77:936, 77:955, 77:188, 77:192 |
| 77:988 | CPS | lo | 173163/500000 | 35627379670481/102872312439000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:957, 77:148 |
| 77:989 | HQS | lo | 157059/1000000 | 1615702619778029/10287231243900000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:984, 77:962 |
| 77:990 | PQS | lo | 131851/1000000 | 4521297685609/34290770813000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:972, 77:963 |
| 77:991 | FHS | hi | 25507/62500 | 13917296056760529/34101687500000000 | 3428 | 77:203, 77:226, 77:206, 77:979, 77:191, 77:193 |
| 77:995 | ACS | lo | 9223/62500 | 2734300251/18529075000 | 3444 | 77:215, 77:226, 77:218, 77:989, 77:754, 77:24, 77:755 |
| 77:997 | BES | lo | 43999/250000 | 130442307789/741163000000 | 3450 | 77:215, 77:226, 77:218, 77:989, 77:82, 77:86, 77:967 |
| 77:1002 | BCH | lo | 93279/250000 | 93279/250000 | 3597 | 77:102, 77:975, 77:138 |
| 77:1004 | CFH | lo | 384037/1000000 | 384037/1000000 | 3642 | 77:140, 77:132, 77:984 |
| 77:1006 | CFP | lo | 312009/1000000 | 312009/1000000 | 3645 | 77:146, 77:132, 77:972 |
| 77:1008 | EHR | lo | 300921/1000000 | 300921/1000000 | 3676 | 77:186, 77:970, 77:218 |
| 77:1010 | FQR | lo | 283003/1000000 | 283003/1000000 | 3690 | 77:206, 77:979, 77:226 |
| 77:1011 | HQR | lo | 343059/1000000 | 343059/1000000 | 3694 | 77:218, 77:989, 77:226 |
| 77:1012 | PQR | lo | 317851/1000000 | 317851/1000000 | 3695 | 77:224, 77:990, 77:226 |
| 77:1014 | BER | lo | 129473/1000000 | 92420703/713821888 | 529 | 77:66, 77:1008, 77:82, 77:124, 77:119 |
| 77:1015 | BCR | lo | 72459/500000 | 4091841900/28235558407 | 543 | 77:66, 77:148, 77:975, 77:124, 77:121 |
| 77:1019 | FPQ | lo | 63009/500000 | 110975653659/880631000000 | 864 | 77:1006, 77:1012, 77:146, 77:977, 77:376 |
| 77:1020 | EFQ | lo | 112251/1000000 | 19138838462825683/170500000000000000 | 1974 | 77:1010, 77:165 |
| 77:1022 | BCP | lo | 187117/1000000 | 20962554981/112029125000 | 2193 | 77:33, 77:369, 77:52, 77:671, 77:0, 77:66, 77:1002 |
| 77:1024 | EQS | lo | 20889/200000 | 11700888/112029125 | 2483 | 77:69, 77:132, 77:96, 77:921, 77:997, 77:322, 77:166 |
| 77:1026 | FPQ | hi | 261683/500000 | 13084149689/25000000000 | 2802 | 77:107, 77:845, 77:786, 77:102, 77:257, 77:191, 77:1010 |
| 77:1027 | FQS | lo | 24251/250000 | 8655450573/89227736000 | 2880 | 77:119, 77:448, 77:140, 77:122, 77:136, 77:166, 77:985 |
| 77:1031 | EQS | hi | 428903/1000000 | 94426253289607987/220157750000000000 | 3193 | 77:376, 77:1012, 77:794, 77:146, 77:127, 77:891, 77:186 |
| 77:1032 | FHQ | lo | 39609/200000 | 9179214973/46349000000 | 3194 | 77:376, 77:1012, 77:794, 77:146, 77:1004, 77:188, 77:192 |
| 77:1033 | FHS | lo | 24747/200000 | 27241281/220157750 | 3233 | 77:376, 77:224, 77:822, 77:988, 77:1004, 77:188, 77:192 |
| 77:1035 | CHS | lo | 183869/500000 | 1261003810381143/3429077081300000 | 3300 | 77:165, 77:206, 77:186, 77:166, 77:514, 77:1004, 77:142 |
| 77:1036 | CPS | lo | 346329/1000000 | 11875896556827/34290770813000 | 3301 | 77:165, 77:206, 77:186, 77:166, 77:120, 77:1006, 77:148 |
| 77:1037 | HQS | lo | 7853/50000 | 1615722769778029/10287231243900000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:1032, 77:1011 |
| 77:1038 | PQS | lo | 131853/1000000 | 13564094556827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:1019, 77:1012 |
| 77:1041 | FRS | hi | 355623/1000000 | 355623/1000000 | 3431 | 77:203, 77:226, 77:206, 77:1027, 77:203 |
| 77:1044 | BES | lo | 175997/1000000 | 6522132919/37058150000 | 3450 | 77:215, 77:226, 77:218, 77:1037, 77:82, 77:86, 77:1014 |
| 77:1045 | CFS | hi | 427093/1000000 | 45103707837/105606500000 | 3494 | 77:863, 77:226, 77:224, 77:1038, 77:1006, 77:132, 77:135 |
| 77:1047 | AEF | lo | 298251/1000000 | 298251/1000000 | 3566 | 77:46, 77:36, 77:1020 |
| 77:1048 | BCH | lo | 373117/1000000 | 373117/1000000 | 3597 | 77:102, 77:1022, 77:138 |
| 77:1049 | BEF | lo | 298251/1000000 | 298251/1000000 | 3606 | 77:96, 77:86, 77:1020 |
| 77:1050 | CFH | lo | 76809/200000 | 76809/200000 | 3642 | 77:140, 77:132, 77:1032 |
| 77:1052 | CFP | lo | 156009/500000 | 156009/500000 | 3645 | 77:146, 77:132, 77:1019 |
| 77:1056 | FQR | lo | 70751/250000 | 70751/250000 | 3690 | 77:206, 77:1027, 77:226 |
| 77:1057 | HQR | lo | 17153/50000 | 17153/50000 | 3694 | 77:218, 77:1037, 77:226 |
| 77:1058 | PQR | lo | 317853/1000000 | 317853/1000000 | 3695 | 77:224, 77:1038, 77:226 |
| 77:1061 | EHS | lo | 114927/1000000 | 9816966153/85418600000 | 751 | 77:322, 77:1033, 77:1035, 77:166, 77:1045 |
| 77:1062 | CEF | lo | 129873/1000000 | 11437047/88063100 | 757 | 77:120, 77:832, 77:124, 77:1052, 77:376 |
| 77:1063 | FPQ | lo | 63011/500000 | 55489569177/440315500000 | 864 | 77:1052, 77:1058, 77:146, 77:977, 77:376 |
| 77:1064 | EPS | lo | 7617/62500 | 8402039307/68941000000 | 2133 | 77:21, 77:138, 77:52, 77:700, 77:945, 77:322, 77:1061 |
| 77:1065 | BCQ | lo | 122067/1000000 | 2188011/17924660 | 2233 | 77:33, 77:448, 77:672, 77:36, 77:0, 77:66, 77:1048 |
| 77:1067 | CFP | hi | 747669/1000000 | 88338116671780667/118151378000000000 | 2594 | 77:83, 77:369, 77:102, 77:231, 77:69, 77:1062, 77:129 |
| 77:1068 | CQR | lo | 62117/500000 | 15480997/124611500 | 2991 | 77:1067, 77:1063, 77:146, 77:132, 77:832, 77:148 |
| 77:1071 | FHQ | lo | 198049/1000000 | 34881641877/176126200000 | 3194 | 77:376, 77:1058, 77:1068, 77:146, 77:1050, 77:188, 77:192 |
| 77:1072 | FHS | lo | 15467/125000 | 27241467/220157750 | 3233 | 77:376, 77:224, 77:822, 77:1036, 77:1050, 77:188, 77:192 |
| 77:1076 | CQS | lo | 48853/500000 | 10051252056827/102872312439000 | 3302 | 77:165, 77:206, 77:186, 77:166, 77:122, 77:132, 77:1068 |
| 77:1077 | HQS | lo | 157061/1000000 | 1615730519778029/10287231243900000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:1071, 77:1057 |
| 77:1078 | PQS | lo | 65927/500000 | 13564187556827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:1063, 77:1058 |
| 77:1079 | BCS | lo | 15841/100000 | 7338012177/46322687500 | 3449 | 77:215, 77:226, 77:218, 77:1077, 77:1048, 77:1065, 77:1015 |
| 77:1083 | CFH | lo | 384049/1000000 | 384049/1000000 | 3642 | 77:140, 77:132, 77:1071 |
| 77:1085 | CFP | lo | 156011/500000 | 156011/500000 | 3645 | 77:146, 77:132, 77:1063 |
| 77:1088 | EPR | lo | 9621/31250 | 9621/31250 | 3679 | 77:186, 77:1064, 77:224 |
| 77:1089 | HQR | lo | 343061/1000000 | 343061/1000000 | 3694 | 77:218, 77:1077, 77:226 |
| 77:1090 | PQR | lo | 158927/500000 | 158927/500000 | 3695 | 77:224, 77:1078, 77:226 |
| 77:1091 | CQR | hi | 469777/1000000 | 469777/1000000 | 28 | 77:376, 77:146, 77:1090 |
| 77:1094 | FPQ | lo | 15753/125000 | 27745180447/220157750000 | 864 | 77:1085, 77:1090, 77:146, 77:977, 77:376 |
| 77:1096 | FPS | lo | 103327/1000000 | 11575642401/112029125000 | 2218 | 77:33, 77:369, 77:52, 77:671, 77:50, 77:166, 77:1072 |
| 77:1098 | EQR | lo | 142863/1000000 | 35604771/249223000 | 2997 | 77:1067, 77:1094, 77:146, 77:132, 77:124, 77:164, 77:1088 |
| 77:1101 | FHQ | lo | 3961/20000 | 87204885923/440315500000 | 3194 | 77:376, 77:1090, 77:1068, 77:146, 77:1083, 77:188, 77:192 |
| 77:1103 | CHS | lo | 18387/50000 | 1261010010381143/3429077081300000 | 3300 | 77:165, 77:206, 77:186, 77:166, 77:514, 77:1083, 77:142 |
| 77:1105 | HQS | lo | 78531/500000 | 538577873259343/3429077081300000 | 3317 | 77:165, 77:206, 77:186, 77:166, 77:448, 77:1101, 77:1089 |
| 77:1106 | PQS | lo | 26371/200000 | 13564234056827/102872312439000 | 3320 | 77:165, 77:206, 77:186, 77:166, 77:176, 77:1094, 77:1090 |
| 77:1107 | CQS | hi | 79557/250000 | 67213835501/211213000000 | 3497 | 77:863, 77:226, 77:224, 77:1106, 77:146, 77:1091 |
| 77:1108 | CFH | lo | 7681/20000 | 7681/20000 | 3642 | 77:140, 77:132, 77:1101 |
| 77:1110 | CFP | lo | 39003/125000 | 39003/125000 | 3645 | 77:146, 77:132, 77:1094 |
| 77:1114 | HQR | lo | 171531/500000 | 171531/500000 | 3694 | 77:218, 77:1105, 77:226 |
| 77:1115 | PQR | lo | 63571/200000 | 63571/200000 | 3695 | 77:224, 77:1106, 77:226 |
| 77:1117 | EFH | lo | 173121/1000000 | 13247571/76522000 | 744 | 77:1062, 77:192, 77:1108, 77:164, 77:135 |
| 77:1118 | FPQ | lo | 5041/40000 | 1387270869/11007887500 | 864 | 77:1110, 77:1115, 77:146, 77:977, 77:376 |
| 77:1120 | FHQ | lo | 198051/1000000 | 697641523/3522524000 | 3194 | 77:376, 77:1115, 77:1068, 77:146, 77:1108, 77:188, 77:192 |
| 77:1121 | CFS | hi | 42709/100000 | 45103475337/105606500000 | 3494 | 77:863, 77:226, 77:224, 77:1106, 77:1110, 77:132, 77:135 |
| 77:1124 | CFP | lo | 12481/40000 | 12481/40000 | 3645 | 77:146, 77:132, 77:1118 |
| 77:1125 | EHS | lo | 114929/1000000 | 6135642133/53386250000 | 751 | 77:322, 77:1072, 77:1103, 77:166, 77:1121 |
| 77:1126 | CEF | lo | 64937/500000 | 114371121/880631000 | 757 | 77:120, 77:832, 77:124, 77:1124, 77:376 |
| 77:1127 | EPS | lo | 60937/500000 | 109227931457/896233000000 | 2133 | 77:21, 77:138, 77:52, 77:700, 77:945, 77:322, 77:1125 |
| 77:1128 | EFP | lo | 1251/8000 | 140148674541/896233000000 | 2520 | 77:71, 77:138, 77:102, 77:1022, 77:1049, 77:1126, 77:1117 |
| 77:1129 | EHR | lo | 300929/1000000 | 300929/1000000 | 3676 | 77:186, 77:1125, 77:218 |
| 77:1130 | EPR | lo | 153937/500000 | 153937/500000 | 3679 | 77:186, 77:1127, 77:224 |
| 77:1131 | BER | lo | 64737/500000 | 92421447/713821888 | 529 | 77:66, 77:1129, 77:82, 77:124, 77:119 |

## Stage 78

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ |
| Index | 1 |
| Context | 28 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 77 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 387853/1000000 | 158493/200000 | 80979/200000 | 158493/200000 |
| u | 354597/1000000 | 845747/1000000 | 88659/250000 | 845747/1000000 |
| v | 196767/1000000 | 117891/200000 | 196767/1000000 | 294537/500000 |
| r | 331653/500000 | 1/1 | 663633/1000000 | 1/1 |
| w | 771761/1000000 | 1/1 | 771761/1000000 | 1/1 |
| j | 129709/250000 | 896233/1000000 | 129709/250000 | 896233/1000000 |
| k | 4673/12500 | 864963/1000000 | 4673/12500 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 732 | AREA_lo_AEP | bitt ["earlier-area",{"direction":"lo","ref":"77:671","triangle":"AEP","value":"37641/125000"}] | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -37641/125000` |
| 788 | AREA_lo_BHQ | bitt ["earlier-area",{"direction":"lo","ref":"77:104","triangle":"BHQ","value":"77999/250000"}] | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -77999/250000` |
| 870 | AREA_lo_FQR | bitt ["earlier-area",{"direction":"lo","ref":"77:1056","triangle":"FQR","value":"70751/250000"}] | `1/1 * u * w + -1/1 * u + -1/1 * f * w + -1/1 * v * r + 1/1 * f * v + 1/1 * r + -70751/250000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 732 | q | 387853/1000000 | 158493/200000 | 80979/200000 | 158493/200000 | 80979/200000 | 158493/200000 | `(1/1, -80979/200000); (1/1, -116996705619/200000000000); (1/1, -89414113331/200000000000); (1/1, -2508636379/4000000000); (1/1, -10916178231/20000000000); (1/1, -10359955319/20000000000); (1/1, -263564671/400000000)` |
| 1 | 870 | v | 196767/1000000 | 117891/200000 | 196767/1000000 | 202847/344349 | 196767/1000000 | 294537/500000 | `(-88001/250000, 11823678499/200000000000); (1587/62500, -232141121861/1000000000000); (-88001/250000, -10596238471/200000000000); (1587/62500, -344240706711/1000000000000); (-344349/500000, 79162478499/200000000000); (-155651/500000, 104552878139/1000000000000); (-344349/500000, 56742561529/200000000000); (-155651/500000, -7546706711/1000000000000); (-88001/250000, 69/1000); (1587/62500, -77099/250000); (-344349/500000, 202847/500000); (-155651/500000, 14149/500000)` |
| 2 | 870 | r | 331653/500000 | 1/1 | 266526019683/401616500000 | 1/1 | 663633/1000000 | 1/1 | `(803233/1000000, -542933646871/1000000000000); (803233/1000000, -151986816499/200000000000); (803233/1000000, -655033231721/1000000000000); (803233/1000000, -174406733469/200000000000); (205463/500000, -420807693157/1000000000000); (205463/500000, -489753036209/1000000000000); (205463/500000, -532907278007/1000000000000); (205463/500000, -601852621059/1000000000000); (803233/1000000, -266526019683/500000000000); (803233/1000000, -418094480317/500000000000); (205463/500000, -102731521413/250000000000); (205463/500000, -141501978587/250000000000)` |
| 3 | 788 | u | 354597/1000000 | 845747/1000000 | 177318279121/500000000000 | 845747/1000000 | 88659/250000 | 845747/1000000 | `(796617/1000000, -7484812699/20000000000); (796617/1000000, -506416579/800000000); (1/1, -395345078711/1000000000000); (1/1, -29674648831/40000000000); (796617/1000000, -333532114481/1000000000000); (796617/1000000, -16922713001/40000000000); (1/1, -177318279121/500000000000); (1/1, -10638266441/20000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 78:20 | ACH | lo | 3209/10000 | earlier 77:754; ACH; lo; 3209/10000 |
| 78:22 | ACP | lo | 1349/10000 | earlier 77:700; ACP; lo; 1349/10000 |
| 78:26 | ACR | lo | 5389/25000 | earlier 77:755; ACR; lo; 5389/25000 |
| 78:28 | ACS | lo | 9223/62500 | earlier 77:995; ACS; lo; 9223/62500 |
| 78:29 | ACS | hi | 42681/50000 | earlier 77:726; ACS; hi; 42681/50000 |
| 78:30 | AEF | lo | 298251/1000000 | earlier 77:1047; AEF; lo; 298251/1000000 |
| 78:34 | AEP | lo | 37641/125000 | earlier 77:671; AEP; lo; 37641/125000 |
| 78:38 | AER | lo | 13181/100000 | earlier 77:38; AER; lo; 13181/100000 |
| 78:40 | AES | lo | 44123/250000 | earlier 77:945; AES; lo; 44123/250000 |
| 78:47 | AFQ | hi | 5133/8000 | earlier 77:255; AFQ; hi; 5133/8000 |
| 78:51 | AFS | hi | 561057/1000000 | earlier 77:316; AFS; hi; 561057/1000000 |
| 78:54 | AHQ | lo | 37641/125000 | earlier 77:672; AHQ; lo; 37641/125000 |
| 78:59 | AHS | hi | 189517/250000 | earlier 77:317; AHS; hi; 189517/250000 |
| 78:60 | APQ | lo | 14391/125000 | earlier 77:627; APQ; lo; 14391/125000 |
| 78:61 | APQ | hi | 31229/62500 | earlier 77:281; APQ; hi; 31229/62500 |
| 78:62 | APR | lo | 2727/25000 | earlier 77:965; APR; lo; 2727/25000 |
| 78:64 | APS | lo | 126781/1000000 | earlier 77:804; APS; lo; 126781/1000000 |
| 78:65 | APS | hi | 505823/1000000 | earlier 77:415; APS; hi; 505823/1000000 |
| 78:70 | BCH | lo | 373117/1000000 | earlier 77:1048; BCH; lo; 373117/1000000 |
| 78:73 | BCP | hi | 710233/1000000 | earlier 77:73; BCP; hi; 710233/1000000 |
| 78:76 | BCR | lo | 72459/500000 | earlier 77:1015; BCR; lo; 72459/500000 |
| 78:78 | BCS | lo | 15841/100000 | earlier 77:1079; BCS; lo; 15841/100000 |
| 78:80 | BEF | lo | 298251/1000000 | earlier 77:1049; BEF; lo; 298251/1000000 |
| 78:88 | BER | lo | 64737/500000 | earlier 77:1131; BER; lo; 64737/500000 |
| 78:90 | BES | lo | 175997/1000000 | earlier 77:1044; BES; lo; 175997/1000000 |
| 78:97 | BFQ | hi | 613347/1000000 | earlier 77:257; BFQ; hi; 613347/1000000 |
| 78:98 | BFR | lo | 155137/1000000 | earlier 77:968; BFR; lo; 155137/1000000 |
| 78:101 | BFS | hi | 58969/100000 | earlier 77:312; BFS; hi; 58969/100000 |
| 78:104 | BHQ | lo | 77999/250000 | earlier 77:104; BHQ; lo; 77999/250000 |
| 78:106 | BHR | lo | 170951/500000 | earlier 77:898; BHR; lo; 170951/500000 |
| 78:110 | BPQ | lo | 31499/250000 | earlier 77:110; BPQ; lo; 31499/250000 |
| 78:111 | BPQ | hi | 126261/250000 | earlier 77:259; BPQ; hi; 126261/250000 |
| 78:112 | BPR | lo | 17483/125000 | earlier 77:786; BPR; lo; 17483/125000 |
| 78:114 | BPS | lo | 133057/1000000 | earlier 77:305; BPS; lo; 133057/1000000 |
| 78:115 | BPS | hi | 155387/250000 | earlier 77:948; BPS; hi; 155387/250000 |
| 78:118 | CEH | lo | 29411/100000 | earlier 77:514; CEH; lo; 29411/100000 |
| 78:126 | CES | lo | 120299/1000000 | earlier 77:322; CES; lo; 120299/1000000 |
| 78:131 | CFP | hi | 747669/1000000 | earlier 77:1067; CFP; hi; 747669/1000000 |
| 78:134 | CFR | lo | 76481/250000 | earlier 77:832; CFR; lo; 76481/250000 |
| 78:137 | CFS | hi | 42709/100000 | earlier 77:1121; CFS; hi; 42709/100000 |
| 78:139 | CHP | hi | 235793/500000 | earlier 77:704; CHP; hi; 235793/500000 |
| 78:149 | CPR | hi | 880631/1000000 | earlier 77:376; CPR; hi; 880631/1000000 |
| 78:151 | CPS | hi | 667707/1000000 | earlier 77:834; CPS; hi; 667707/1000000 |
| 78:152 | CQR | lo | 62117/500000 | earlier 77:1068; CQR; lo; 62117/500000 |
| 78:154 | CQS | lo | 48853/500000 | earlier 77:1076; CQS; lo; 48853/500000 |
| 78:155 | CQS | hi | 79557/250000 | earlier 77:1107; CQS; hi; 79557/250000 |
| 78:156 | CRS | lo | 29981/250000 | earlier 77:822; CRS; lo; 29981/250000 |
| 78:160 | EFP | lo | 1251/8000 | earlier 77:1128; EFP; lo; 1251/8000 |
| 78:168 | EHP | lo | 107743/1000000 | earlier 77:369; EHP; lo; 107743/1000000 |
| 78:169 | EHP | hi | 100421/200000 | earlier 77:688; EHP; hi; 100421/200000 |
| 78:170 | EHQ | lo | 10811/100000 | earlier 77:448; EHQ; lo; 10811/100000 |
| 78:174 | EHS | lo | 114929/1000000 | earlier 77:1125; EHS; lo; 114929/1000000 |
| 78:175 | EHS | hi | 60147/100000 | earlier 77:749; EHS; hi; 60147/100000 |
| 78:178 | EPR | lo | 153937/500000 | earlier 77:1130; EPR; lo; 153937/500000 |
| 78:181 | EPS | hi | 546983/1000000 | earlier 77:891; EPS; hi; 546983/1000000 |
| 78:182 | EQR | lo | 142863/1000000 | earlier 77:1098; EQR; lo; 142863/1000000 |
| 78:184 | EQS | lo | 20889/200000 | earlier 77:1024; EQS; lo; 20889/200000 |
| 78:185 | EQS | hi | 428903/1000000 | earlier 77:1031; EQS; hi; 428903/1000000 |
| 78:190 | FHQ | lo | 198051/1000000 | earlier 77:1120; FHQ; lo; 198051/1000000 |
| 78:191 | FHQ | hi | 141503/250000 | earlier 77:191; FHQ; hi; 141503/250000 |
| 78:194 | FHS | lo | 15467/125000 | earlier 77:1072; FHS; lo; 15467/125000 |
| 78:195 | FHS | hi | 25507/62500 | earlier 77:991; FHS; hi; 25507/62500 |
| 78:197 | FPQ | hi | 261683/500000 | earlier 77:1026; FPQ; hi; 261683/500000 |
| 78:198 | FPR | lo | 126917/1000000 | earlier 77:977; FPR; lo; 126917/1000000 |
| 78:199 | FPR | hi | 454757526603/1000000000000 | vertex maximum 454757526603/1000000000000 |
| 78:200 | FPS | lo | 103327/1000000 | earlier 77:1096; FPS; lo; 103327/1000000 |
| 78:202 | FQR | lo | 70751/250000 | earlier 77:1056; FQR; lo; 70751/250000 |
| 78:203 | FQR | hi | 545627/1000000 | earlier 77:203; FQR; hi; 545627/1000000 |
| 78:204 | FQS | lo | 24251/250000 | earlier 77:1027; FQS; lo; 24251/250000 |
| 78:206 | FRS | lo | 93/1000 | occupants none |
| 78:207 | FRS | hi | 355623/1000000 | earlier 77:1041; FRS; hi; 355623/1000000 |
| 78:213 | HPS | hi | 94473/200000 | earlier 77:751; HPS; hi; 94473/200000 |
| 78:214 | HQR | lo | 171531/500000 | earlier 77:1114; HQR; lo; 171531/500000 |
| 78:215 | HQR | hi | 741163/1000000 | earlier 77:215; HQR; hi; 741163/1000000 |
| 78:217 | HQS | hi | 509951/1000000 | earlier 77:752; HQS; hi; 509951/1000000 |
| 78:220 | PQR | lo | 63571/200000 | earlier 77:1115; PQR; lo; 63571/200000 |
| 78:222 | PQS | lo | 26371/200000 | earlier 77:1106; PQS; lo; 26371/200000 |
| 78:226 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 3429 | bary | outer FQR; fans QRS, FRS, FQS; target FPS; sign 1; vertices none 0; FPQ 1; FPR 1 | container FQR; inner S; line FP |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 78:231 | FPS | hi | 421963/1000000 | 57558571532149353/136406750000000000 | 3429 | 78:203, 78:226, 78:206, 78:204, 78:197, 78:199 |

## Stage 79

| Property | Value |
| --- | --- |
| Scope | root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ |
| Packet | forest:root/AFP+/CFQ+/AEQ+/HEQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ |
| Index | 2 |
| Context | 28 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 78 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 103767/1000000 | 6143/20000 | 103767/1000000 | 6143/20000 |
| b | 103767/1000000 | 21407/40000 | 103767/1000000 | 21407/40000 |
| c | 135501/250000 | 1/1 | 135501/250000 | 1/1 |
| e | 103767/1000000 | 59/125 | 103767/1000000 | 59/125 |
| f | 155651/500000 | 344349/500000 | 155651/500000 | 344349/500000 |
| h | 796617/1000000 | 1/1 | 796617/1000000 | 1/1 |
| p | 22907/200000 | 6143/20000 | 22907/200000 | 6143/20000 |
| q | 80979/200000 | 158493/200000 | 80979/200000 | 158493/200000 |
| u | 88659/250000 | 845747/1000000 | 88659/250000 | 845747/1000000 |
| v | 196767/1000000 | 294537/500000 | 196767/1000000 | 294537/500000 |
| r | 663633/1000000 | 1/1 | 663633/1000000 | 1/1 |
| w | 771761/1000000 | 1/1 | 771761/1000000 | 1/1 |
| j | 129709/250000 | 896233/1000000 | 129709/250000 | 896233/1000000 |
| k | 4673/12500 | 864963/1000000 | 4673/12500 | 864963/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 2 | AC_ABC_ABC_1 | bitt ["anchor-cap","ABC","ABC",1,[]] | `-93/1000 + 1/1 * c + -1/1 * b` |
| 6 | AC_ABF_ABF_0 | bitt ["anchor-cap","ABF","ABF",0,[]] | `-93/1000 + 1/1 * f` |
| 20 | AC_ACP_ACH_1 | bitt ["anchor-cap","ACP","ACH",1,[]] | `-93/1000 + 1/1 * c` |
| 29 | AC_AEQ_AEF_0 | bitt ["anchor-cap","AEQ","AEF",0,[]] | `907/1000 + -1/1 * a` |
| 50 | AC_BCP_BCH_0 | bitt ["anchor-cap","BCP","BCH",0,[]] | `-93/1000 + 1/1 * h` |
| 60 | AC_BEQ_BEF_0 | bitt ["anchor-cap","BEQ","BEF",0,[]] | `907/1000 + -1/1 * b` |
| 76 | AC_CEF_CEF_0 | bitt ["anchor-cap","CEF","CEF",0,[]] | `907/1000 + -1/1 * f` |
| 98 | AC_EFH_EFH_0 | bitt ["anchor-cap","EFH","EFH",0,[]] | `907/1000 + -1/1 * e` |
| 133 | ha | bitt ["contact-order","ha"] | `1/1 * h + -1/1 * a` |
| 134 | ea | bitt ["contact-order","ea"] | `1/1 * e + -1/1 * a` |
| 135 | he | bitt ["contact-order","he"] | `1/1 * h + -1/1 * e` |
| 137 | cf | bitt ["contact-order","cf"] | `1/1 * c + -1/1 * f` |
| 141 | upper-quad | bitt ["upper-quad","BITT"] | `346/625 + -1/1 * c * h + 1/1 * f * h + 1/1 * c * e + -1/1 * e * f` |
| 142 | top-area | bitt ["top-hull","-"] | `721/1000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 146 | central-budget | bitt ["central-budget","1/1"] | `721/1000 * c * h + -907/1000 * b * h + -907/1000 * a * c + 1093/1000 * a * b` |
| 147 | central-p-floor | bitt ["central-floor",0,"102650331/896233000"] | `1/1 * p + -102650331/896233000` |
| 148 | central-q-floor | bitt ["central-floor",1,"102650331/896233000"] | `1/1 * q + -102650331/896233000` |
| 149 | central-x | bitt ["central-lower-x"] | `1/1 * c * h * p + -1/1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 153 | WBARY_RS_2 | bitt ["weighted-barycentric","R","S",["1/1","1/1","1/1"],"102872312439/15500000000",2] | `102872312439/15500000000 * k + -1/1 + -71872312439/15500000000 * e + -1/1 * w` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 79:0 | ABC | lo | 93/1000 | occupants none |
| 79:8 | ABP | lo | 93/1000 | occupants none |
| 79:15 | ABS | hi | 22952221529/40000000000 | vertex maximum 22952221529/40000000000 |
| 79:18 | ACF | lo | 279/1000 | occupants Q |
| 79:20 | ACH | lo | 3209/10000 | earlier 78:20; ACH; lo; 3209/10000 |
| 79:21 | ACH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 79:22 | ACP | lo | 1349/10000 | earlier 78:22; ACP; lo; 1349/10000 |
| 79:26 | ACR | lo | 5389/25000 | earlier 78:26; ACR; lo; 5389/25000 |
| 79:27 | ACR | hi | 1/1 | vertex maximum 1/1 |
| 79:28 | ACS | lo | 9223/62500 | earlier 78:28; ACS; lo; 9223/62500 |
| 79:29 | ACS | hi | 42681/50000 | earlier 78:29; ACS; hi; 42681/50000 |
| 79:30 | AEF | lo | 298251/1000000 | earlier 78:30; AEF; lo; 298251/1000000 |
| 79:32 | AEH | lo | 13857/20000 | occupants P, Q |
| 79:34 | AEP | lo | 37641/125000 | earlier 78:34; AEP; lo; 37641/125000 |
| 79:36 | AEQ | lo | 93/1000 | occupants none |
| 79:38 | AER | lo | 13181/100000 | earlier 78:38; AER; lo; 13181/100000 |
| 79:40 | AES | lo | 44123/250000 | earlier 78:40; AES; lo; 44123/250000 |
| 79:41 | AES | hi | 190299/250000 | vertex maximum 190299/250000 |
| 79:42 | AFH | lo | 279/1000 | occupants P |
| 79:43 | AFH | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 79:44 | AFP | lo | 93/1000 | occupants none |
| 79:46 | AFQ | lo | 93/1000 | occupants none |
| 79:47 | AFQ | hi | 5133/8000 | earlier 78:47; AFQ; hi; 5133/8000 |
| 79:49 | AFR | hi | 172071282953/250000000000 | vertex maximum 172071282953/250000000000 |
| 79:50 | AFS | lo | 93/1000 | occupants none |
| 79:51 | AFS | hi | 561057/1000000 | earlier 78:51; AFS; hi; 561057/1000000 |
| 79:54 | AHQ | lo | 37641/125000 | earlier 78:54; AHQ; lo; 37641/125000 |
| 79:59 | AHS | hi | 189517/250000 | earlier 78:59; AHS; hi; 189517/250000 |
| 79:60 | APQ | lo | 14391/125000 | earlier 78:60; APQ; lo; 14391/125000 |
| 79:61 | APQ | hi | 31229/62500 | earlier 78:61; APQ; hi; 31229/62500 |
| 79:62 | APR | lo | 2727/25000 | earlier 78:62; APR; lo; 2727/25000 |
| 79:63 | APR | hi | 61218930721/100000000000 | vertex maximum 61218930721/100000000000 |
| 79:64 | APS | lo | 126781/1000000 | earlier 78:64; APS; lo; 126781/1000000 |
| 79:65 | APS | hi | 505823/1000000 | earlier 78:65; APS; hi; 505823/1000000 |
| 79:69 | BCF | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 79:70 | BCH | lo | 373117/1000000 | earlier 78:70; BCH; lo; 373117/1000000 |
| 79:71 | BCH | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 79:73 | BCP | hi | 710233/1000000 | earlier 78:73; BCP; hi; 710233/1000000 |
| 79:76 | BCR | lo | 72459/500000 | earlier 78:76; BCR; lo; 72459/500000 |
| 79:77 | BCR | hi | 896233/1000000 | vertex maximum 896233/1000000 |
| 79:78 | BCS | lo | 15841/100000 | earlier 78:78; BCS; lo; 15841/100000 |
| 79:79 | BCS | hi | 775208384379/1000000000000 | vertex maximum 775208384379/1000000000000 |
| 79:80 | BEF | lo | 298251/1000000 | earlier 78:80; BEF; lo; 298251/1000000 |
| 79:85 | BEP | hi | 709115921289/1000000000000 | vertex maximum 709115921289/1000000000000 |
| 79:86 | BEQ | lo | 93/1000 | occupants none |
| 79:88 | BER | lo | 64737/500000 | earlier 78:88; BER; lo; 64737/500000 |
| 79:89 | BER | hi | 419068692389/500000000000 | vertex maximum 419068692389/500000000000 |
| 79:90 | BES | lo | 175997/1000000 | earlier 78:90; BES; lo; 175997/1000000 |
| 79:94 | BFP | lo | 93/1000 | occupants none |
| 79:97 | BFQ | hi | 613347/1000000 | earlier 78:97; BFQ; hi; 613347/1000000 |
| 79:98 | BFR | lo | 155137/1000000 | earlier 78:98; BFR; lo; 155137/1000000 |
| 79:99 | BFR | hi | 147213116173/200000000000 | vertex maximum 147213116173/200000000000 |
| 79:100 | BFS | lo | 93/1000 | occupants none |
| 79:101 | BFS | hi | 58969/100000 | earlier 78:101; BFS; hi; 58969/100000 |
| 79:102 | BHP | lo | 93/1000 | occupants none |
| 79:104 | BHQ | lo | 77999/250000 | earlier 78:104; BHQ; lo; 77999/250000 |
| 79:106 | BHR | lo | 170951/500000 | earlier 78:106; BHR; lo; 170951/500000 |
| 79:107 | BHR | hi | 1/1 | vertex maximum 1/1 |
| 79:110 | BPQ | lo | 31499/250000 | earlier 78:110; BPQ; lo; 31499/250000 |
| 79:111 | BPQ | hi | 126261/250000 | earlier 78:111; BPQ; hi; 126261/250000 |
| 79:112 | BPR | lo | 17483/125000 | earlier 78:112; BPR; lo; 17483/125000 |
| 79:114 | BPS | lo | 133057/1000000 | earlier 78:114; BPS; lo; 133057/1000000 |
| 79:115 | BPS | hi | 155387/250000 | earlier 78:115; BPS; hi; 155387/250000 |
| 79:118 | CEH | lo | 29411/100000 | earlier 78:118; CEH; lo; 29411/100000 |
| 79:119 | CEH | hi | 11153467/15625000 | vertex maximum 11153467/15625000 |
| 79:120 | CEP | lo | 279/1000 | occupants Q |
| 79:121 | CEP | hi | 28235558407/50000000000 | vertex maximum 28235558407/50000000000 |
| 79:122 | CEQ | lo | 93/1000 | occupants none |
| 79:124 | CER | lo | 93/1000 | occupants none |
| 79:125 | CER | hi | 445374923557/1000000000000 | vertex maximum 445374923557/1000000000000 |
| 79:126 | CES | lo | 120299/1000000 | earlier 78:126; CES; lo; 120299/1000000 |
| 79:127 | CES | hi | 101771222537/250000000000 | vertex maximum 101771222537/250000000000 |
| 79:129 | CFH | hi | 376005767333/500000000000 | vertex maximum 376005767333/500000000000 |
| 79:131 | CFP | hi | 747669/1000000 | earlier 78:131; CFP; hi; 747669/1000000 |
| 79:132 | CFQ | lo | 93/1000 | occupants none |
| 79:134 | CFR | lo | 76481/250000 | earlier 78:134; CFR; lo; 76481/250000 |
| 79:135 | CFR | hi | 344349/500000 | vertex maximum 344349/500000 |
| 79:137 | CFS | hi | 42709/100000 | earlier 78:137; CFS; hi; 42709/100000 |
| 79:138 | CHP | lo | 93/1000 | occupants none |
| 79:139 | CHP | hi | 235793/500000 | earlier 78:139; CHP; hi; 235793/500000 |
| 79:140 | CHQ | lo | 93/1000 | occupants none |
| 79:142 | CHR | lo | 13857/20000 | occupants Q, S |
| 79:143 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 79:146 | CPQ | lo | 93/1000 | occupants none |
| 79:148 | CPR | lo | 13857/20000 | occupants Q, S |
| 79:149 | CPR | hi | 880631/1000000 | earlier 78:149; CPR; hi; 880631/1000000 |
| 79:151 | CPS | hi | 667707/1000000 | earlier 78:151; CPS; hi; 667707/1000000 |
| 79:152 | CQR | lo | 62117/500000 | earlier 78:152; CQR; lo; 62117/500000 |
| 79:154 | CQS | lo | 48853/500000 | earlier 78:154; CQS; lo; 48853/500000 |
| 79:155 | CQS | hi | 79557/250000 | earlier 78:155; CQS; hi; 79557/250000 |
| 79:156 | CRS | lo | 29981/250000 | earlier 78:156; CRS; lo; 29981/250000 |
| 79:160 | EFP | lo | 1251/8000 | earlier 78:160; EFP; lo; 1251/8000 |
| 79:161 | EFP | hi | 699841204689/1000000000000 | vertex maximum 699841204689/1000000000000 |
| 79:164 | EFR | lo | 279/1000 | occupants S |
| 79:165 | EFR | hi | 308616937317/500000000000 | vertex maximum 308616937317/500000000000 |
| 79:166 | EFS | lo | 93/1000 | occupants none |
| 79:168 | EHP | lo | 107743/1000000 | earlier 78:168; EHP; lo; 107743/1000000 |
| 79:169 | EHP | hi | 100421/200000 | earlier 78:169; EHP; hi; 100421/200000 |
| 79:170 | EHQ | lo | 10811/100000 | earlier 78:170; EHQ; lo; 10811/100000 |
| 79:174 | EHS | lo | 114929/1000000 | earlier 78:174; EHS; lo; 114929/1000000 |
| 79:175 | EHS | hi | 60147/100000 | earlier 78:175; EHS; hi; 60147/100000 |
| 79:176 | EPQ | lo | 93/1000 | occupants none |
| 79:178 | EPR | lo | 153937/500000 | earlier 78:178; EPR; lo; 153937/500000 |
| 79:179 | EPR | hi | 158716590669/200000000000 | vertex maximum 158716590669/200000000000 |
| 79:181 | EPS | hi | 546983/1000000 | earlier 78:181; EPS; hi; 546983/1000000 |
| 79:182 | EQR | lo | 142863/1000000 | earlier 78:182; EQR; lo; 142863/1000000 |
| 79:183 | EQR | hi | 144599128453/250000000000 | vertex maximum 144599128453/250000000000 |
| 79:184 | EQS | lo | 20889/200000 | earlier 78:184; EQS; lo; 20889/200000 |
| 79:185 | EQS | hi | 428903/1000000 | earlier 78:185; EQS; hi; 428903/1000000 |
| 79:186 | ERS | lo | 93/1000 | occupants none |
| 79:189 | FHP | hi | 40984762329/100000000000 | vertex maximum 40984762329/100000000000 |
| 79:190 | FHQ | lo | 198051/1000000 | earlier 78:190; FHQ; lo; 198051/1000000 |
| 79:191 | FHQ | hi | 141503/250000 | earlier 78:191; FHQ; hi; 141503/250000 |
| 79:192 | FHR | lo | 93/1000 | occupants none |
| 79:193 | FHR | hi | 13781329843/62500000000 | vertex maximum 13781329843/62500000000 |
| 79:194 | FHS | lo | 15467/125000 | earlier 78:194; FHS; lo; 15467/125000 |
| 79:195 | FHS | hi | 25507/62500 | earlier 78:195; FHS; hi; 25507/62500 |
| 79:197 | FPQ | hi | 261683/500000 | earlier 78:197; FPQ; hi; 261683/500000 |
| 79:198 | FPR | lo | 126917/1000000 | earlier 78:198; FPR; lo; 126917/1000000 |
| 79:200 | FPS | lo | 103327/1000000 | earlier 78:200; FPS; lo; 103327/1000000 |
| 79:201 | FPS | hi | 421963/1000000 | earlier 78:231; FPS; hi; 421963/1000000 |
| 79:202 | FQR | lo | 70751/250000 | earlier 78:202; FQR; lo; 70751/250000 |
| 79:203 | FQR | hi | 545627/1000000 | earlier 78:203; FQR; hi; 545627/1000000 |
| 79:206 | FRS | lo | 93/1000 | occupants none |
| 79:207 | FRS | hi | 355623/1000000 | earlier 78:207; FRS; hi; 355623/1000000 |
| 79:208 | HPQ | lo | 93/1000 | occupants none |
| 79:211 | HPR | hi | 119021/200000 | vertex maximum 119021/200000 |
| 79:213 | HPS | hi | 94473/200000 | earlier 78:213; HPS; hi; 94473/200000 |
| 79:214 | HQR | lo | 171531/500000 | earlier 78:214; HQR; lo; 171531/500000 |
| 79:215 | HQR | hi | 741163/1000000 | earlier 78:215; HQR; hi; 741163/1000000 |
| 79:217 | HQS | hi | 509951/1000000 | earlier 78:217; HQS; hi; 509951/1000000 |
| 79:218 | HRS | lo | 93/1000 | occupants none |
| 79:220 | PQR | lo | 63571/200000 | earlier 78:220; PQR; lo; 63571/200000 |
| 79:222 | PQS | lo | 26371/200000 | earlier 78:222; PQS; lo; 26371/200000 |
| 79:224 | PRS | lo | 93/1000 | occupants none |
| 79:226 | QRS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Coordinate certificate sources

| Source | Kind | Source witness | Polynomial |
| --- | --- | --- | --- |
| 0 | bound | `{"direction":"lo","ref":"79:0","triangle":"ABC","value":"93/1000"}` | `-1 * a * b + 1 * a * c + -93/1000` |
| 8 | bound | `{"direction":"lo","ref":"79:8","triangle":"ABP","value":"93/1000"}` | `1 * b * q + -1 * a * b + 1 * a * p + -93/1000` |
| 15 | bound | `{"direction":"hi","ref":"79:15","triangle":"ABS","value":"22952221529/40000000000"}` | `22952221529/40000000000 + -1 * b * k + 1 * a * b + -1 * a * j` |
| 18 | bound | `{"direction":"lo","ref":"79:18","triangle":"ACF","value":"279/1000"}` | `1 * c + -1 * a * c + 1 * a * f + -279/1000` |
| 20 | bound | `{"direction":"lo","ref":"79:20","triangle":"ACH","value":"3209/10000"}` | `1 * c * h + -1 * a * c + -3209/10000` |
| 21 | bound | `{"direction":"hi","ref":"79:21","triangle":"ACH","value":"896233/1000000"}` | `896233/1000000 + -1 * c * h + 1 * a * c` |
| 22 | bound | `{"direction":"lo","ref":"79:22","triangle":"ACP","value":"1349/10000"}` | `1 * c * q + -1 * a * c + 1 * a * p + -1349/10000` |
| 26 | bound | `{"direction":"lo","ref":"79:26","triangle":"ACR","value":"5389/25000"}` | `1 * c * w + -1 * a * c + 1 * a * r + -5389/25000` |
| 27 | bound | `{"direction":"hi","ref":"79:27","triangle":"ACR","value":"1/1"}` | `1 + -1 * c * w + 1 * a * c + -1 * a * r` |
| 28 | bound | `{"direction":"lo","ref":"79:28","triangle":"ACS","value":"9223/62500"}` | `1 * c * k + -1 * a * c + 1 * a * j + -9223/62500` |
| 29 | bound | `{"direction":"hi","ref":"79:29","triangle":"ACS","value":"42681/50000"}` | `42681/50000 + -1 * c * k + 1 * a * c + -1 * a * j` |
| 30 | bound | `{"direction":"lo","ref":"79:30","triangle":"AEF","value":"298251/1000000"}` | `701749/1000000 + -1 * a + -1 * e * f + 1 * a * f` |
| 32 | bound | `{"direction":"lo","ref":"79:32","triangle":"AEH","value":"13857/20000"}` | `1 * h + -1 * a + -13857/20000` |
| 34 | bound | `{"direction":"lo","ref":"79:34","triangle":"AEP","value":"37641/125000"}` | `1 * q + -1 * a + -1 * e * p + 1 * a * p + -37641/125000` |
| 36 | bound | `{"direction":"lo","ref":"79:36","triangle":"AEQ","value":"93/1000"}` | `1 * v + -1 * a + -1 * e * u + 1 * a * u + -93/1000` |
| 38 | bound | `{"direction":"lo","ref":"79:38","triangle":"AER","value":"13181/100000"}` | `1 * w + -1 * a + -1 * e * r + 1 * a * r + -13181/100000` |
| 40 | bound | `{"direction":"lo","ref":"79:40","triangle":"AES","value":"44123/250000"}` | `1 * k + -1 * a + -1 * e * j + 1 * a * j + -44123/250000` |
| 41 | bound | `{"direction":"hi","ref":"79:41","triangle":"AES","value":"190299/250000"}` | `190299/250000 + -1 * k + 1 * a + 1 * e * j + -1 * a * j` |
| 42 | bound | `{"direction":"lo","ref":"79:42","triangle":"AFH","value":"279/1000"}` | `1 * f * h + -1 * a * f + -279/1000` |
| 43 | bound | `{"direction":"hi","ref":"79:43","triangle":"AFH","value":"308616937317/500000000000"}` | `308616937317/500000000000 + -1 * f * h + 1 * a * f` |
| 44 | bound | `{"direction":"lo","ref":"79:44","triangle":"AFP","value":"93/1000"}` | `1 * f * q + -1 * a * f + -1 * p + 1 * a * p + -93/1000` |
| 46 | bound | `{"direction":"lo","ref":"79:46","triangle":"AFQ","value":"93/1000"}` | `-1 * f * v + 1 * a * f + 1 * u + -1 * a * u + -93/1000` |
| 47 | bound | `{"direction":"hi","ref":"79:47","triangle":"AFQ","value":"5133/8000"}` | `5133/8000 + 1 * f * v + -1 * a * f + -1 * u + 1 * a * u` |
| 49 | bound | `{"direction":"hi","ref":"79:49","triangle":"AFR","value":"172071282953/250000000000"}` | `172071282953/250000000000 + 1 * f * w + -1 * a * f + -1 * r + 1 * a * r` |
| 50 | bound | `{"direction":"lo","ref":"79:50","triangle":"AFS","value":"93/1000"}` | `-1 * f * k + 1 * a * f + 1 * j + -1 * a * j + -93/1000` |
| 51 | bound | `{"direction":"hi","ref":"79:51","triangle":"AFS","value":"561057/1000000"}` | `561057/1000000 + 1 * f * k + -1 * a * f + -1 * j + 1 * a * j` |
| 54 | bound | `{"direction":"lo","ref":"79:54","triangle":"AHQ","value":"37641/125000"}` | `1 * h * u + -1 * a * u + -37641/125000` |
| 59 | bound | `{"direction":"hi","ref":"79:59","triangle":"AHS","value":"189517/250000"}` | `189517/250000 + -1 * h * j + 1 * a * j` |
| 60 | bound | `{"direction":"lo","ref":"79:60","triangle":"APQ","value":"14391/125000"}` | `-1 * p * v + 1 * a * p + 1 * q * u + -1 * a * u + -14391/125000` |
| 61 | bound | `{"direction":"hi","ref":"79:61","triangle":"APQ","value":"31229/62500"}` | `31229/62500 + 1 * p * v + -1 * a * p + -1 * q * u + 1 * a * u` |
| 62 | bound | `{"direction":"lo","ref":"79:62","triangle":"APR","value":"2727/25000"}` | `-1 * p * w + 1 * a * p + 1 * q * r + -1 * a * r + -2727/25000` |
| 63 | bound | `{"direction":"hi","ref":"79:63","triangle":"APR","value":"61218930721/100000000000"}` | `61218930721/100000000000 + 1 * p * w + -1 * a * p + -1 * q * r + 1 * a * r` |
| 64 | bound | `{"direction":"lo","ref":"79:64","triangle":"APS","value":"126781/1000000"}` | `-1 * p * k + 1 * a * p + 1 * q * j + -1 * a * j + -126781/1000000` |
| 65 | bound | `{"direction":"hi","ref":"79:65","triangle":"APS","value":"505823/1000000"}` | `505823/1000000 + 1 * p * k + -1 * a * p + -1 * q * j + 1 * a * j` |
| 69 | bound | `{"direction":"hi","ref":"79:69","triangle":"BCF","value":"896233/1000000"}` | `896233/1000000 + -1 * c + 1 * b` |
| 70 | bound | `{"direction":"lo","ref":"79:70","triangle":"BCH","value":"373117/1000000"}` | `1 * c * h + -1 * b * h + -373117/1000000` |
| 71 | bound | `{"direction":"hi","ref":"79:71","triangle":"BCH","value":"896233/1000000"}` | `896233/1000000 + -1 * c * h + 1 * b * h` |
| 73 | bound | `{"direction":"hi","ref":"79:73","triangle":"BCP","value":"710233/1000000"}` | `710233/1000000 + -1 * c * q + 1 * b * q` |
| 76 | bound | `{"direction":"lo","ref":"79:76","triangle":"BCR","value":"72459/500000"}` | `1 * c * w + -1 * b * w + -72459/500000` |
| 77 | bound | `{"direction":"hi","ref":"79:77","triangle":"BCR","value":"896233/1000000"}` | `896233/1000000 + -1 * c * w + 1 * b * w` |
| 78 | bound | `{"direction":"lo","ref":"79:78","triangle":"BCS","value":"15841/100000"}` | `1 * c * k + -1 * b * k + -15841/100000` |
| 79 | bound | `{"direction":"hi","ref":"79:79","triangle":"BCS","value":"775208384379/1000000000000"}` | `775208384379/1000000000000 + -1 * c * k + 1 * b * k` |
| 80 | bound | `{"direction":"lo","ref":"79:80","triangle":"BEF","value":"298251/1000000"}` | `701749/1000000 + -1 * b + -1 * e * f + 1 * b * e` |
| 85 | bound | `{"direction":"hi","ref":"79:85","triangle":"BEP","value":"709115921289/1000000000000"}` | `709115921289/1000000000000 + -1 * q + 1 * b * q + 1 * e * p + -1 * b * e` |
| 86 | bound | `{"direction":"lo","ref":"79:86","triangle":"BEQ","value":"93/1000"}` | `1 * v + -1 * b * v + -1 * e * u + 1 * b * e + -93/1000` |
| 88 | bound | `{"direction":"lo","ref":"79:88","triangle":"BER","value":"64737/500000"}` | `1 * w + -1 * b * w + -1 * e * r + 1 * b * e + -64737/500000` |
| 89 | bound | `{"direction":"hi","ref":"79:89","triangle":"BER","value":"419068692389/500000000000"}` | `419068692389/500000000000 + -1 * w + 1 * b * w + 1 * e * r + -1 * b * e` |
| 90 | bound | `{"direction":"lo","ref":"79:90","triangle":"BES","value":"175997/1000000"}` | `1 * k + -1 * b * k + -1 * e * j + 1 * b * e + -175997/1000000` |
| 94 | bound | `{"direction":"lo","ref":"79:94","triangle":"BFP","value":"93/1000"}` | `1 * f * q + -1 * b * q + -1 * p + 1 * b + -93/1000` |
| 97 | bound | `{"direction":"hi","ref":"79:97","triangle":"BFQ","value":"613347/1000000"}` | `613347/1000000 + 1 * f * v + -1 * b * v + -1 * u + 1 * b` |
| 98 | bound | `{"direction":"lo","ref":"79:98","triangle":"BFR","value":"155137/1000000"}` | `-1 * f * w + 1 * b * w + 1 * r + -1 * b + -155137/1000000` |
| 99 | bound | `{"direction":"hi","ref":"79:99","triangle":"BFR","value":"147213116173/200000000000"}` | `147213116173/200000000000 + 1 * f * w + -1 * b * w + -1 * r + 1 * b` |
| 100 | bound | `{"direction":"lo","ref":"79:100","triangle":"BFS","value":"93/1000"}` | `-1 * f * k + 1 * b * k + 1 * j + -1 * b + -93/1000` |
| 101 | bound | `{"direction":"hi","ref":"79:101","triangle":"BFS","value":"58969/100000"}` | `58969/100000 + 1 * f * k + -1 * b * k + -1 * j + 1 * b` |
| 102 | bound | `{"direction":"lo","ref":"79:102","triangle":"BHP","value":"93/1000"}` | `1 * b * q + 1 * h * p + -1 * b * h + -93/1000` |
| 104 | bound | `{"direction":"lo","ref":"79:104","triangle":"BHQ","value":"77999/250000"}` | `1 * b * v + 1 * h * u + -1 * b * h + -77999/250000` |
| 106 | bound | `{"direction":"lo","ref":"79:106","triangle":"BHR","value":"170951/500000"}` | `1 * b * w + 1 * h * r + -1 * b * h + -170951/500000` |
| 107 | bound | `{"direction":"hi","ref":"79:107","triangle":"BHR","value":"1/1"}` | `1 + -1 * b * w + -1 * h * r + 1 * b * h` |
| 110 | bound | `{"direction":"lo","ref":"79:110","triangle":"BPQ","value":"31499/250000"}` | `-1 * p * v + 1 * b * v + 1 * q * u + -1 * b * q + -31499/250000` |
| 111 | bound | `{"direction":"hi","ref":"79:111","triangle":"BPQ","value":"126261/250000"}` | `126261/250000 + 1 * p * v + -1 * b * v + -1 * q * u + 1 * b * q` |
| 112 | bound | `{"direction":"lo","ref":"79:112","triangle":"BPR","value":"17483/125000"}` | `-1 * p * w + 1 * b * w + 1 * q * r + -1 * b * q + -17483/125000` |
| 114 | bound | `{"direction":"lo","ref":"79:114","triangle":"BPS","value":"133057/1000000"}` | `-1 * p * k + 1 * b * k + 1 * q * j + -1 * b * q + -133057/1000000` |
| 115 | bound | `{"direction":"hi","ref":"79:115","triangle":"BPS","value":"155387/250000"}` | `155387/250000 + 1 * p * k + -1 * b * k + -1 * q * j + 1 * b * q` |
| 118 | bound | `{"direction":"lo","ref":"79:118","triangle":"CEH","value":"29411/100000"}` | `1 * h + -1 * c * h + 1 * c * e + -29411/100000` |
| 119 | bound | `{"direction":"hi","ref":"79:119","triangle":"CEH","value":"11153467/15625000"}` | `11153467/15625000 + -1 * h + 1 * c * h + -1 * c * e` |
| 120 | bound | `{"direction":"lo","ref":"79:120","triangle":"CEP","value":"279/1000"}` | `1 * q + -1 * c * q + -1 * e * p + 1 * c * e + -279/1000` |
| 121 | bound | `{"direction":"hi","ref":"79:121","triangle":"CEP","value":"28235558407/50000000000"}` | `28235558407/50000000000 + -1 * q + 1 * c * q + 1 * e * p + -1 * c * e` |
| 122 | bound | `{"direction":"lo","ref":"79:122","triangle":"CEQ","value":"93/1000"}` | `1 * v + -1 * c * v + -1 * e * u + 1 * c * e + -93/1000` |
| 124 | bound | `{"direction":"lo","ref":"79:124","triangle":"CER","value":"93/1000"}` | `1 * w + -1 * c * w + -1 * e * r + 1 * c * e + -93/1000` |
| 125 | bound | `{"direction":"hi","ref":"79:125","triangle":"CER","value":"445374923557/1000000000000"}` | `445374923557/1000000000000 + -1 * w + 1 * c * w + 1 * e * r + -1 * c * e` |
| 126 | bound | `{"direction":"lo","ref":"79:126","triangle":"CES","value":"120299/1000000"}` | `1 * k + -1 * c * k + -1 * e * j + 1 * c * e + -120299/1000000` |
| 127 | bound | `{"direction":"hi","ref":"79:127","triangle":"CES","value":"101771222537/250000000000"}` | `101771222537/250000000000 + -1 * k + 1 * c * k + 1 * e * j + -1 * c * e` |
| 129 | bound | `{"direction":"hi","ref":"79:129","triangle":"CFH","value":"376005767333/500000000000"}` | `376005767333/500000000000 + -1 * f * h + 1 * c * h + -1 * c` |
| 131 | bound | `{"direction":"hi","ref":"79:131","triangle":"CFP","value":"747669/1000000"}` | `747669/1000000 + -1 * f * q + 1 * c * q + 1 * p + -1 * c` |
| 132 | bound | `{"direction":"lo","ref":"79:132","triangle":"CFQ","value":"93/1000"}` | `1 * f * v + -1 * c * v + -1 * u + 1 * c + -93/1000` |
| 134 | bound | `{"direction":"lo","ref":"79:134","triangle":"CFR","value":"76481/250000"}` | `-1 * f * w + 1 * c * w + 1 * r + -1 * c + -76481/250000` |
| 135 | bound | `{"direction":"hi","ref":"79:135","triangle":"CFR","value":"344349/500000"}` | `344349/500000 + 1 * f * w + -1 * c * w + -1 * r + 1 * c` |
| 137 | bound | `{"direction":"hi","ref":"79:137","triangle":"CFS","value":"42709/100000"}` | `42709/100000 + 1 * f * k + -1 * c * k + -1 * j + 1 * c` |
| 138 | bound | `{"direction":"lo","ref":"79:138","triangle":"CHP","value":"93/1000"}` | `-1 * c * q + -1 * h * p + 1 * c * h + -93/1000` |
| 139 | bound | `{"direction":"hi","ref":"79:139","triangle":"CHP","value":"235793/500000"}` | `235793/500000 + 1 * c * q + 1 * h * p + -1 * c * h` |
| 140 | bound | `{"direction":"lo","ref":"79:140","triangle":"CHQ","value":"93/1000"}` | `1 * c * v + 1 * h * u + -1 * c * h + -93/1000` |
| 142 | bound | `{"direction":"lo","ref":"79:142","triangle":"CHR","value":"13857/20000"}` | `1 * c * w + 1 * h * r + -1 * c * h + -13857/20000` |
| 143 | bound | `{"direction":"hi","ref":"79:143","triangle":"CHR","value":"1/1"}` | `1 + -1 * c * w + -1 * h * r + 1 * c * h` |
| 146 | bound | `{"direction":"lo","ref":"79:146","triangle":"CPQ","value":"93/1000"}` | `-1 * p * v + 1 * c * v + 1 * q * u + -1 * c * q + -93/1000` |
| 148 | bound | `{"direction":"lo","ref":"79:148","triangle":"CPR","value":"13857/20000"}` | `-1 * p * w + 1 * c * w + 1 * q * r + -1 * c * q + -13857/20000` |
| 149 | bound | `{"direction":"hi","ref":"79:149","triangle":"CPR","value":"880631/1000000"}` | `880631/1000000 + 1 * p * w + -1 * c * w + -1 * q * r + 1 * c * q` |
| 151 | bound | `{"direction":"hi","ref":"79:151","triangle":"CPS","value":"667707/1000000"}` | `667707/1000000 + 1 * p * k + -1 * c * k + -1 * q * j + 1 * c * q` |
| 152 | bound | `{"direction":"lo","ref":"79:152","triangle":"CQR","value":"62117/500000"}` | `-1 * u * w + 1 * c * w + 1 * v * r + -1 * c * v + -62117/500000` |
| 154 | bound | `{"direction":"lo","ref":"79:154","triangle":"CQS","value":"48853/500000"}` | `-1 * u * k + 1 * c * k + 1 * v * j + -1 * c * v + -48853/500000` |
| 155 | bound | `{"direction":"hi","ref":"79:155","triangle":"CQS","value":"79557/250000"}` | `79557/250000 + 1 * u * k + -1 * c * k + -1 * v * j + 1 * c * v` |
| 156 | bound | `{"direction":"lo","ref":"79:156","triangle":"CRS","value":"29981/250000"}` | `1 * r * k + -1 * c * k + -1 * w * j + 1 * c * w + -29981/250000` |
| 160 | bound | `{"direction":"lo","ref":"79:160","triangle":"EFP","value":"1251/8000"}` | `1 * f * q + -1 * e * f + -1 * q + -1 * p + 6749/8000 + 1 * e * p` |
| 161 | bound | `{"direction":"hi","ref":"79:161","triangle":"EFP","value":"699841204689/1000000000000"}` | `-300158795311/1000000000000 + -1 * f * q + 1 * e * f + 1 * q + 1 * p + -1 * e * p` |
| 164 | bound | `{"direction":"lo","ref":"79:164","triangle":"EFR","value":"279/1000"}` | `-1 * f * w + 1 * e * f + 1 * w + 1 * r + -1279/1000 + -1 * e * r` |
| 165 | bound | `{"direction":"hi","ref":"79:165","triangle":"EFR","value":"308616937317/500000000000"}` | `808616937317/500000000000 + 1 * f * w + -1 * e * f + -1 * w + -1 * r + 1 * e * r` |
| 166 | bound | `{"direction":"lo","ref":"79:166","triangle":"EFS","value":"93/1000"}` | `-1 * f * k + 1 * e * f + 1 * k + 1 * j + -1093/1000 + -1 * e * j` |
| 168 | bound | `{"direction":"lo","ref":"79:168","triangle":"EHP","value":"107743/1000000"}` | `-1 * q + -1 * h * p + 1 * h + 1 * e * p + -107743/1000000` |
| 169 | bound | `{"direction":"hi","ref":"79:169","triangle":"EHP","value":"100421/200000"}` | `100421/200000 + 1 * q + 1 * h * p + -1 * h + -1 * e * p` |
| 170 | bound | `{"direction":"lo","ref":"79:170","triangle":"EHQ","value":"10811/100000"}` | `-1 * v + -1 * h * u + 1 * h + 1 * e * u + -10811/100000` |
| 174 | bound | `{"direction":"lo","ref":"79:174","triangle":"EHS","value":"114929/1000000"}` | `1 * k + 1 * h * j + -1 * h + -1 * e * j + -114929/1000000` |
| 175 | bound | `{"direction":"hi","ref":"79:175","triangle":"EHS","value":"60147/100000"}` | `60147/100000 + -1 * k + -1 * h * j + 1 * h + 1 * e * j` |
| 176 | bound | `{"direction":"lo","ref":"79:176","triangle":"EPQ","value":"93/1000"}` | `1 * p * v + -1 * e * p + -1 * v + -1 * q * u + 1 * q + 1 * e * u + -93/1000` |
| 178 | bound | `{"direction":"lo","ref":"79:178","triangle":"EPR","value":"153937/500000"}` | `-1 * p * w + 1 * e * p + 1 * w + 1 * q * r + -1 * q + -1 * e * r + -153937/500000` |
| 179 | bound | `{"direction":"hi","ref":"79:179","triangle":"EPR","value":"158716590669/200000000000"}` | `158716590669/200000000000 + 1 * p * w + -1 * e * p + -1 * w + -1 * q * r + 1 * q + 1 * e * r` |
| 181 | bound | `{"direction":"hi","ref":"79:181","triangle":"EPS","value":"546983/1000000"}` | `546983/1000000 + 1 * p * k + -1 * e * p + -1 * k + -1 * q * j + 1 * q + 1 * e * j` |
| 182 | bound | `{"direction":"lo","ref":"79:182","triangle":"EQR","value":"142863/1000000"}` | `-1 * u * w + 1 * e * u + 1 * w + 1 * v * r + -1 * v + -1 * e * r + -142863/1000000` |
| 183 | bound | `{"direction":"hi","ref":"79:183","triangle":"EQR","value":"144599128453/250000000000"}` | `144599128453/250000000000 + 1 * u * w + -1 * e * u + -1 * w + -1 * v * r + 1 * v + 1 * e * r` |
| 184 | bound | `{"direction":"lo","ref":"79:184","triangle":"EQS","value":"20889/200000"}` | `-1 * u * k + 1 * e * u + 1 * k + 1 * v * j + -1 * v + -1 * e * j + -20889/200000` |
| 185 | bound | `{"direction":"hi","ref":"79:185","triangle":"EQS","value":"428903/1000000"}` | `428903/1000000 + 1 * u * k + -1 * e * u + -1 * k + -1 * v * j + 1 * v + 1 * e * j` |
| 186 | bound | `{"direction":"lo","ref":"79:186","triangle":"ERS","value":"93/1000"}` | `1 * r * k + -1 * e * r + -1 * k + -1 * w * j + 1 * w + 1 * e * j + -93/1000` |
| 189 | bound | `{"direction":"hi","ref":"79:189","triangle":"FHP","value":"40984762329/100000000000"}` | `40984762329/100000000000 + 1 * f * q + 1 * h * p + -1 * f * h + -1 * p` |
| 190 | bound | `{"direction":"lo","ref":"79:190","triangle":"FHQ","value":"198051/1000000"}` | `-1 * f * v + -1 * h * u + 1 * f * h + 1 * u + -198051/1000000` |
| 191 | bound | `{"direction":"hi","ref":"79:191","triangle":"FHQ","value":"141503/250000"}` | `141503/250000 + 1 * f * v + 1 * h * u + -1 * f * h + -1 * u` |
| 192 | bound | `{"direction":"lo","ref":"79:192","triangle":"FHR","value":"93/1000"}` | `-1 * f * w + -1 * h * r + 1 * f * h + 1 * r + -93/1000` |
| 193 | bound | `{"direction":"hi","ref":"79:193","triangle":"FHR","value":"13781329843/62500000000"}` | `13781329843/62500000000 + 1 * f * w + 1 * h * r + -1 * f * h + -1 * r` |
| 194 | bound | `{"direction":"lo","ref":"79:194","triangle":"FHS","value":"15467/125000"}` | `-1 * f * k + -1 * h * j + 1 * f * h + 1 * j + -15467/125000` |
| 195 | bound | `{"direction":"hi","ref":"79:195","triangle":"FHS","value":"25507/62500"}` | `25507/62500 + 1 * f * k + 1 * h * j + -1 * f * h + -1 * j` |
| 197 | bound | `{"direction":"hi","ref":"79:197","triangle":"FPQ","value":"261683/500000"}` | `261683/500000 + -1 * p * v + 1 * p + 1 * f * v + 1 * q * u + -1 * f * q + -1 * u` |
| 198 | bound | `{"direction":"lo","ref":"79:198","triangle":"FPR","value":"126917/1000000"}` | `1 * p * w + -1 * p + -1 * f * w + -1 * q * r + 1 * f * q + 1 * r + -126917/1000000` |
| 200 | bound | `{"direction":"lo","ref":"79:200","triangle":"FPS","value":"103327/1000000"}` | `1 * p * k + -1 * p + -1 * f * k + -1 * q * j + 1 * f * q + 1 * j + -103327/1000000` |
| 201 | bound | `{"direction":"hi","ref":"79:201","triangle":"FPS","value":"421963/1000000"}` | `421963/1000000 + -1 * p * k + 1 * p + 1 * f * k + 1 * q * j + -1 * f * q + -1 * j` |
| 202 | bound | `{"direction":"lo","ref":"79:202","triangle":"FQR","value":"70751/250000"}` | `1 * u * w + -1 * u + -1 * f * w + -1 * v * r + 1 * f * v + 1 * r + -70751/250000` |
| 203 | bound | `{"direction":"hi","ref":"79:203","triangle":"FQR","value":"545627/1000000"}` | `545627/1000000 + -1 * u * w + 1 * u + 1 * f * w + 1 * v * r + -1 * f * v + -1 * r` |
| 206 | bound | `{"direction":"lo","ref":"79:206","triangle":"FRS","value":"93/1000"}` | `-1 * r * k + 1 * r + 1 * f * k + 1 * w * j + -1 * f * w + -1 * j + -93/1000` |
| 207 | bound | `{"direction":"hi","ref":"79:207","triangle":"FRS","value":"355623/1000000"}` | `355623/1000000 + 1 * r * k + -1 * r + -1 * f * k + -1 * w * j + 1 * f * w + 1 * j` |
| 208 | bound | `{"direction":"lo","ref":"79:208","triangle":"HPQ","value":"93/1000"}` | `1 * p * v + -1 * h * p + -1 * q * u + 1 * h * u + -93/1000` |
| 211 | bound | `{"direction":"hi","ref":"79:211","triangle":"HPR","value":"119021/200000"}` | `119021/200000 + -1 * p * w + 1 * h * p + 1 * q * r + -1 * h * r` |
| 213 | bound | `{"direction":"hi","ref":"79:213","triangle":"HPS","value":"94473/200000"}` | `94473/200000 + -1 * p * k + 1 * h * p + 1 * q * j + -1 * h * j` |
| 214 | bound | `{"direction":"lo","ref":"79:214","triangle":"HQR","value":"171531/500000"}` | `1 * u * w + -1 * h * u + -1 * v * r + 1 * h * r + -171531/500000` |
| 215 | bound | `{"direction":"hi","ref":"79:215","triangle":"HQR","value":"741163/1000000"}` | `741163/1000000 + -1 * u * w + 1 * h * u + 1 * v * r + -1 * h * r` |
| 217 | bound | `{"direction":"hi","ref":"79:217","triangle":"HQS","value":"509951/1000000"}` | `509951/1000000 + -1 * u * k + 1 * h * u + 1 * v * j + -1 * h * j` |
| 218 | bound | `{"direction":"lo","ref":"79:218","triangle":"HRS","value":"93/1000"}` | `-1 * r * k + 1 * h * r + 1 * w * j + -1 * h * j + -93/1000` |
| 220 | bound | `{"direction":"lo","ref":"79:220","triangle":"PQR","value":"63571/200000"}` | `1 * u * w + -1 * q * u + -1 * p * w + -1 * v * r + 1 * p * v + 1 * q * r + -63571/200000` |
| 222 | bound | `{"direction":"lo","ref":"79:222","triangle":"PQS","value":"26371/200000"}` | `1 * u * k + -1 * q * u + -1 * p * k + -1 * v * j + 1 * p * v + 1 * q * j + -26371/200000` |
| 224 | bound | `{"direction":"lo","ref":"79:224","triangle":"PRS","value":"93/1000"}` | `-1 * r * k + 1 * q * r + 1 * p * k + 1 * w * j + -1 * p * w + -1 * q * j + -93/1000` |
| 226 | bound | `{"direction":"lo","ref":"79:226","triangle":"QRS","value":"93/1000"}` | `1 * r * k + -1 * v * r + -1 * u * k + -1 * w * j + 1 * u * w + 1 * v * j + -93/1000` |
| 228 | coordinate | `{"box":79,"direction":"lo","value":"103767/1000000","variable":"a"}` | `1 * a + -103767/1000000` |
| 229 | coordinate | `{"box":79,"direction":"hi","value":"6143/20000","variable":"a"}` | `6143/20000 + -1 * a` |
| 230 | coordinate | `{"box":79,"direction":"lo","value":"103767/1000000","variable":"b"}` | `1 * b + -103767/1000000` |
| 231 | coordinate | `{"box":79,"direction":"hi","value":"21407/40000","variable":"b"}` | `21407/40000 + -1 * b` |
| 232 | coordinate | `{"box":79,"direction":"lo","value":"135501/250000","variable":"c"}` | `1 * c + -135501/250000` |
| 233 | coordinate | `{"box":79,"direction":"hi","value":"1","variable":"c"}` | `1 + -1 * c` |
| 234 | coordinate | `{"box":79,"direction":"lo","value":"103767/1000000","variable":"e"}` | `1 * e + -103767/1000000` |
| 235 | coordinate | `{"box":79,"direction":"hi","value":"59/125","variable":"e"}` | `59/125 + -1 * e` |
| 236 | coordinate | `{"box":79,"direction":"lo","value":"155651/500000","variable":"f"}` | `1 * f + -155651/500000` |
| 237 | coordinate | `{"box":79,"direction":"hi","value":"344349/500000","variable":"f"}` | `344349/500000 + -1 * f` |
| 238 | coordinate | `{"box":79,"direction":"lo","value":"796617/1000000","variable":"h"}` | `1 * h + -796617/1000000` |
| 239 | coordinate | `{"box":79,"direction":"hi","value":"1","variable":"h"}` | `1 + -1 * h` |
| 240 | coordinate | `{"box":79,"direction":"lo","value":"22907/200000","variable":"p"}` | `1 * p + -22907/200000` |
| 241 | coordinate | `{"box":79,"direction":"hi","value":"6143/20000","variable":"p"}` | `6143/20000 + -1 * p` |
| 242 | coordinate | `{"box":79,"direction":"lo","value":"80979/200000","variable":"q"}` | `1 * q + -80979/200000` |
| 243 | coordinate | `{"box":79,"direction":"hi","value":"158493/200000","variable":"q"}` | `158493/200000 + -1 * q` |
| 244 | coordinate | `{"box":79,"direction":"lo","value":"88659/250000","variable":"u"}` | `1 * u + -88659/250000` |
| 245 | coordinate | `{"box":79,"direction":"hi","value":"845747/1000000","variable":"u"}` | `845747/1000000 + -1 * u` |
| 246 | coordinate | `{"box":79,"direction":"lo","value":"196767/1000000","variable":"v"}` | `1 * v + -196767/1000000` |
| 247 | coordinate | `{"box":79,"direction":"hi","value":"294537/500000","variable":"v"}` | `294537/500000 + -1 * v` |
| 248 | coordinate | `{"box":79,"direction":"lo","value":"663633/1000000","variable":"r"}` | `1 * r + -663633/1000000` |
| 249 | coordinate | `{"box":79,"direction":"hi","value":"1","variable":"r"}` | `1 + -1 * r` |
| 250 | coordinate | `{"box":79,"direction":"lo","value":"771761/1000000","variable":"w"}` | `1 * w + -771761/1000000` |
| 251 | coordinate | `{"box":79,"direction":"hi","value":"1","variable":"w"}` | `1 + -1 * w` |
| 252 | coordinate | `{"box":79,"direction":"lo","value":"129709/250000","variable":"j"}` | `1 * j + -129709/250000` |
| 253 | coordinate | `{"box":79,"direction":"hi","value":"896233/1000000","variable":"j"}` | `896233/1000000 + -1 * j` |
| 254 | coordinate | `{"box":79,"direction":"lo","value":"4673/12500","variable":"k"}` | `1 * k + -4673/12500` |
| 255 | coordinate | `{"box":79,"direction":"hi","value":"864963/1000000","variable":"k"}` | `864963/1000000 + -1 * k` |
| 257 | physical | `{"factor":2}` | `-93/1000 + 1 * c + -1 * b` |
| 259 | physical | `{"factor":6}` | `-93/1000 + 1 * f` |
| 264 | physical | `{"factor":20}` | `-93/1000 + 1 * c` |
| 266 | physical | `{"factor":29}` | `907/1000 + -1 * a` |
| 269 | physical | `{"factor":50}` | `-93/1000 + 1 * h` |
| 272 | physical | `{"factor":60}` | `907/1000 + -1 * b` |
| 273 | physical | `{"factor":76}` | `907/1000 + -1 * f` |
| 274 | physical | `{"factor":98}` | `907/1000 + -1 * e` |
| 275 | physical | `{"factor":133}` | `1 * h + -1 * a` |
| 276 | physical | `{"factor":134}` | `1 * e + -1 * a` |
| 277 | physical | `{"factor":135}` | `1 * h + -1 * e` |
| 279 | physical | `{"factor":137}` | `1 * c + -1 * f` |
| 283 | physical | `{"factor":141}` | `346/625 + -1 * c * h + 1 * f * h + 1 * c * e + -1 * e * f` |
| 284 | physical | `{"factor":142}` | `721/1000 + -1 * f + -1 * e + 1 * e * f` |
| 288 | physical | `{"factor":146}` | `721/1000 * c * h + -907/1000 * b * h + -907/1000 * a * c + 1093/1000 * a * b` |
| 289 | physical | `{"factor":147}` | `1 * p + -102650331/896233000` |
| 290 | physical | `{"factor":148}` | `1 * q + -102650331/896233000` |
| 291 | physical | `{"factor":149}` | `1 * c * h * p + -1 * b * h * p + -93/1000 * c + -93/1000 * b` |
| 295 | physical | `{"factor":153}` | `102872312439/15500000000 * k + -1 + -71872312439/15500000000 * e + -1 * w` |

### Positive coordinate products

| Product | Weight | Source factors |
| --- | --- | --- |
| 0 | 38960000 | 0, 0 |
| 1 | 61691000 | 0, 36 |
| 2 | 22623000 | 0, 60 |
| 3 | 37000000 | 0, 62 |
| 4 | 38936000 | 0, 124 |
| 5 | 191379000 | 0, 148 |
| 6 | 7186000 | 0, 155 |
| 7 | 3356000 | 0, 178 |
| 8 | 43939000 | 0, 186 |
| 9 | 129850000 | 0, 192 |
| 10 | 36582000 | 0, 206 |
| 11 | 2464000 | 0, 220 |
| 12 | 42201000 | 0, 222 |
| 13 | 7357000 | 0, 224 |
| 14 | 3821000 | 0, 284 |
| 15 | 22895400 | 8, 26 |
| 16 | 6119800 | 8, 38 |
| 17 | 152263200 | 8, 63 |
| 18 | 14050000 | 8, 71 |
| 19 | 13627300 | 8, 73 |
| 20 | 55454300 | 8, 142 |
| 21 | 20043300 | 8, 164 |
| 22 | 3885900 | 8, 175 |
| 23 | 9694000 | 8, 193 |
| 24 | 22120900 | 8, 214 |
| 25 | 47393500 | 8, 250 |
| 26 | 56350600 | 8, 266 |
| 27 | 1430200 | 8, 269 |
| 28 | 21915200 | 8, 275 |
| 29 | 2998500 | 15, 36 |
| 30 | 27896300 | 18, 166 |
| 31 | 34433900 | 20, 226 |
| 32 | 41813200 | 21, 132 |
| 33 | 40037300 | 22, 176 |
| 34 | 15237800 | 22, 224 |
| 35 | 24808000 | 22, 226 |
| 36 | 4397600 | 26, 176 |
| 37 | 955000 | 27, 132 |
| 38 | 37966300 | 28, 208 |
| 39 | 168000 | 29, 122 |
| 40 | 10520100 | 29, 132 |
| 41 | 29989400 | 30, 140 |
| 42 | 147127600 | 30, 224 |
| 43 | 60923600 | 30, 226 |
| 44 | 8786900 | 32, 36 |
| 45 | 15153500 | 32, 154 |
| 46 | 44924700 | 34, 166 |
| 47 | 25941000 | 34, 192 |
| 48 | 16936800 | 36, 50 |
| 49 | 5964600 | 36, 80 |
| 50 | 5589400 | 36, 88 |
| 51 | 8601400 | 36, 134 |
| 52 | 73550700 | 36, 138 |
| 53 | 28721000 | 36, 148 |
| 54 | 155149900 | 36, 156 |
| 55 | 92718900 | 36, 164 |
| 56 | 194883500 | 36, 175 |
| 57 | 4381500 | 36, 181 |
| 58 | 905200 | 36, 198 |
| 59 | 47905600 | 36, 200 |
| 60 | 10428300 | 36, 218 |
| 61 | 26722200 | 36, 279 |
| 62 | 83977300 | 38, 132 |
| 63 | 35595200 | 38, 140 |
| 64 | 12955700 | 38, 176 |
| 65 | 5874000 | 40, 140 |
| 66 | 29671000 | 40, 192 |
| 67 | 122183200 | 40, 208 |
| 68 | 71667800 | 41, 122 |
| 69 | 191131400 | 41, 176 |
| 70 | 79260700 | 42, 176 |
| 71 | 14750900 | 43, 140 |
| 72 | 12825400 | 44, 70 |
| 73 | 18791500 | 44, 78 |
| 74 | 27479900 | 44, 107 |
| 75 | 15750400 | 44, 146 |
| 76 | 203211200 | 44, 174 |
| 77 | 25161800 | 44, 220 |
| 78 | 90096600 | 44, 226 |
| 79 | 46422600 | 46, 166 |
| 80 | 121572300 | 47, 224 |
| 81 | 89167000 | 49, 176 |
| 82 | 178978100 | 50, 176 |
| 83 | 5559300 | 51, 208 |
| 84 | 65672000 | 54, 192 |
| 85 | 58419000 | 59, 192 |
| 86 | 22569500 | 59, 208 |
| 87 | 20825300 | 60, 166 |
| 88 | 107138000 | 60, 192 |
| 89 | 36269500 | 61, 124 |
| 90 | 41236400 | 62, 102 |
| 91 | 141088000 | 62, 140 |
| 92 | 10592800 | 62, 166 |
| 93 | 8915600 | 62, 224 |
| 94 | 73930300 | 63, 124 |
| 95 | 14853700 | 64, 176 |
| 96 | 56156000 | 65, 192 |
| 97 | 30242400 | 65, 208 |
| 98 | 33046600 | 69, 146 |
| 99 | 84482000 | 69, 291 |
| 100 | 15334800 | 71, 140 |
| 101 | 9341300 | 71, 208 |
| 102 | 372400 | 76, 176 |
| 103 | 14806700 | 76, 224 |
| 104 | 23623200 | 77, 132 |
| 105 | 2661900 | 77, 138 |
| 106 | 4435000 | 78, 192 |
| 107 | 21785400 | 79, 140 |
| 108 | 38942600 | 80, 224 |
| 109 | 19759600 | 80, 226 |
| 110 | 7089700 | 85, 124 |
| 111 | 16624500 | 85, 132 |
| 112 | 515700 | 86, 120 |
| 113 | 43469400 | 86, 138 |
| 114 | 6073000 | 88, 140 |
| 115 | 12739200 | 88, 176 |
| 116 | 48998300 | 89, 208 |
| 117 | 411900 | 90, 208 |
| 118 | 14995800 | 94, 226 |
| 119 | 26296500 | 97, 224 |
| 120 | 6128300 | 98, 132 |
| 121 | 10578000 | 98, 208 |
| 122 | 31293700 | 99, 176 |
| 123 | 11345300 | 100, 132 |
| 124 | 37507300 | 100, 176 |
| 125 | 8511500 | 101, 140 |
| 126 | 27945700 | 101, 208 |
| 127 | 3762600 | 102, 155 |
| 128 | 3057200 | 102, 156 |
| 129 | 3531400 | 102, 185 |
| 130 | 4960000 | 102, 193 |
| 131 | 15446600 | 102, 220 |
| 132 | 58147800 | 102, 266 |
| 133 | 5082800 | 102, 275 |
| 134 | 12145000 | 104, 192 |
| 135 | 25000900 | 106, 208 |
| 136 | 14806700 | 106, 224 |
| 137 | 16624500 | 110, 166 |
| 138 | 22378600 | 111, 124 |
| 139 | 2893800 | 112, 140 |
| 140 | 14900800 | 112, 166 |
| 141 | 13432700 | 112, 208 |
| 142 | 2013900 | 114, 176 |
| 143 | 9762600 | 115, 132 |
| 144 | 60718600 | 118, 206 |
| 145 | 105205000 | 119, 192 |
| 146 | 21110700 | 120, 149 |
| 147 | 58401000 | 120, 154 |
| 148 | 5444500 | 120, 164 |
| 149 | 30023000 | 120, 182 |
| 150 | 16591500 | 120, 184 |
| 151 | 44729200 | 120, 198 |
| 152 | 44243500 | 120, 217 |
| 153 | 73951400 | 120, 237 |
| 154 | 105654000 | 121, 192 |
| 155 | 33976300 | 122, 134 |
| 156 | 9398100 | 122, 149 |
| 157 | 16145700 | 122, 151 |
| 158 | 101682200 | 122, 206 |
| 159 | 38889300 | 122, 237 |
| 160 | 10184900 | 122, 276 |
| 161 | 3467500 | 124, 126 |
| 162 | 1024400 | 124, 170 |
| 163 | 93566300 | 124, 194 |
| 164 | 68834500 | 124, 200 |
| 165 | 45729900 | 124, 230 |
| 166 | 128427100 | 124, 243 |
| 167 | 17003500 | 124, 250 |
| 168 | 13299400 | 124, 276 |
| 169 | 43956800 | 124, 289 |
| 170 | 16083000 | 125, 192 |
| 171 | 102411700 | 125, 208 |
| 172 | 8322500 | 125, 224 |
| 173 | 49489900 | 126, 140 |
| 174 | 45974500 | 126, 202 |
| 175 | 79801400 | 127, 176 |
| 176 | 15032000 | 127, 192 |
| 177 | 79373500 | 129, 140 |
| 178 | 9411400 | 131, 208 |
| 179 | 6184900 | 131, 224 |
| 180 | 149722000 | 132, 164 |
| 181 | 118282900 | 132, 175 |
| 182 | 18527800 | 132, 178 |
| 183 | 47876200 | 132, 186 |
| 184 | 222833000 | 132, 193 |
| 185 | 59404400 | 132, 266 |
| 186 | 52707800 | 132, 269 |
| 187 | 20178200 | 132, 272 |
| 188 | 46559600 | 132, 275 |
| 189 | 32320900 | 132, 277 |
| 190 | 71226400 | 134, 208 |
| 191 | 12693700 | 134, 224 |
| 192 | 22745300 | 135, 166 |
| 193 | 7679400 | 137, 140 |
| 194 | 49712400 | 138, 152 |
| 195 | 30301500 | 138, 182 |
| 196 | 231336200 | 138, 215 |
| 197 | 84685900 | 138, 233 |
| 198 | 2668700 | 138, 246 |
| 199 | 35465500 | 138, 253 |
| 200 | 2485500 | 139, 208 |
| 201 | 23748400 | 140, 169 |
| 202 | 50778000 | 140, 193 |
| 203 | 49735100 | 140, 195 |
| 204 | 15750400 | 140, 201 |
| 205 | 65155200 | 140, 206 |
| 206 | 169932200 | 140, 211 |
| 207 | 27165600 | 140, 213 |
| 208 | 7535800 | 140, 241 |
| 209 | 28153500 | 140, 266 |
| 210 | 67228600 | 140, 272 |
| 211 | 43404200 | 140, 273 |
| 212 | 214716900 | 142, 208 |
| 213 | 53820000 | 143, 226 |
| 214 | 11361000 | 146, 284 |
| 215 | 25603600 | 149, 226 |
| 216 | 5724000 | 154, 192 |
| 217 | 11040400 | 160, 226 |
| 218 | 17141000 | 161, 166 |
| 219 | 17141000 | 165, 166 |
| 220 | 165955000 | 165, 192 |
| 221 | 66209800 | 165, 226 |
| 222 | 17971300 | 166, 179 |
| 223 | 27336200 | 166, 190 |
| 224 | 41975000 | 166, 193 |
| 225 | 96019000 | 166, 203 |
| 226 | 3884500 | 166, 247 |
| 227 | 4166800 | 166, 257 |
| 228 | 48795600 | 166, 264 |
| 229 | 5298100 | 166, 269 |
| 230 | 69988100 | 166, 275 |
| 231 | 82129300 | 166, 290 |
| 232 | 25635300 | 168, 176 |
| 233 | 9973700 | 169, 226 |
| 234 | 67382000 | 176, 193 |
| 235 | 15943200 | 176, 194 |
| 236 | 11909400 | 176, 207 |
| 237 | 26356900 | 176, 243 |
| 238 | 36736000 | 176, 250 |
| 239 | 3149000 | 176, 257 |
| 240 | 8093900 | 176, 288 |
| 241 | 20129400 | 179, 226 |
| 242 | 100487100 | 183, 224 |
| 243 | 57250400 | 189, 226 |
| 244 | 83793000 | 191, 192 |
| 245 | 2376800 | 191, 224 |
| 246 | 244720000 | 192, 193 |
| 247 | 33119000 | 192, 200 |
| 248 | 16720000 | 192, 224 |
| 249 | 34566000 | 192, 229 |
| 250 | 12964000 | 192, 236 |
| 251 | 22102000 | 192, 239 |
| 252 | 70926000 | 192, 244 |
| 253 | 2241000 | 192, 247 |
| 254 | 15575000 | 192, 251 |
| 255 | 52915000 | 193, 208 |
| 256 | 13374700 | 197, 224 |
| 257 | 59779200 | 206, 251 |
| 258 | 39197000 | 208, 233 |
| 259 | 37090200 | 208, 253 |
| 260 | 36216800 | 220, 249 |
| 261 | 27829900 | 224, 246 |
| 262 | 14672100 | 224, 264 |
| 263 | 12375300 | 224, 266 |
| 264 | 131571500 | 224, 275 |
| 265 | 17320500 | 224, 277 |
| 266 | 16417700 | 226, 259 |
| 267 | 44658100 | 226, 264 |
| 268 | 115189600 | 226, 266 |
| 269 | 122796600 | 226, 269 |
| 270 | 17324900 | 226, 274 |
| 271 | 46668300 | 226, 275 |
| 272 | 132029000 | 226, 283 |
| 273 | 20148900 | 226, 290 |
| 274 | 38612000 | 229, 291 |
| 275 | 116985000 | 233, 291 |
| 276 | 3747000 | 235, 291 |
| 277 | 96324000 | 237, 291 |
| 278 | 144084000 | 239, 291 |
| 279 | 2653000 | 242, 291 |
| 280 | 13129000 | 245, 291 |
| 281 | 21249000 | 247, 291 |
| 282 | 106014000 | 248, 291 |
| 283 | 376192000 | 250, 291 |
| 284 | 20583000 | 253, 291 |
| 285 | 140137000 | 266, 291 |
| 286 | 5818500 | 291, 295 |
| 287 | 92640000 | 228, 228, 230, 241 |
| 288 | 38960000 | 228, 228, 232, 233 |
| 289 | 36730000 | 228, 228, 232, 241 |
| 290 | 39070000 | 228, 228, 232, 245 |
| 291 | 13560000 | 228, 228, 236, 241 |
| 292 | 16940000 | 228, 228, 236, 245 |
| 293 | 31310000 | 228, 228, 241, 241 |
| 294 | 20500000 | 228, 228, 241, 244 |
| 295 | 173200000 | 228, 228, 241, 248 |
| 296 | 15960000 | 228, 228, 241, 253 |
| 297 | 19940000 | 228, 228, 245, 253 |
| 298 | 38960000 | 228, 229, 230, 230 |
| 299 | 55030000 | 228, 229, 230, 233 |
| 300 | 39130000 | 228, 229, 230, 249 |
| 301 | 13560000 | 228, 229, 237, 240 |
| 302 | 20500000 | 228, 229, 240, 245 |
| 303 | 15960000 | 228, 229, 240, 252 |
| 304 | 8070000 | 228, 229, 241, 249 |
| 305 | 14050000 | 228, 230, 231, 239 |
| 306 | 36880000 | 228, 230, 232, 235 |
| 307 | 69500000 | 228, 230, 232, 239 |
| 308 | 97010000 | 228, 230, 232, 243 |
| 309 | 7190000 | 228, 230, 232, 255 |
| 310 | 63510000 | 228, 230, 233, 242 |
| 311 | 7190000 | 228, 230, 233, 247 |
| 312 | 23860000 | 228, 230, 235, 237 |
| 313 | 112060000 | 228, 230, 235, 244 |
| 314 | 47830000 | 228, 230, 235, 253 |
| 315 | 134810000 | 228, 230, 237, 239 |
| 316 | 204260000 | 228, 230, 237, 250 |
| 317 | 17790000 | 228, 230, 237, 255 |
| 318 | 22120000 | 228, 230, 239, 244 |
| 319 | 83810000 | 228, 230, 239, 248 |
| 320 | 3890000 | 228, 230, 239, 252 |
| 321 | 114780000 | 228, 230, 239, 254 |
| 322 | 114780000 | 228, 230, 239, 255 |
| 323 | 16050000 | 228, 230, 240, 255 |
| 324 | 38370000 | 228, 230, 241, 246 |
| 325 | 350310000 | 228, 230, 241, 250 |
| 326 | 13200000 | 228, 230, 243, 244 |
| 327 | 37120000 | 228, 230, 243, 248 |
| 328 | 34840000 | 228, 230, 243, 253 |
| 329 | 52390000 | 228, 230, 245, 255 |
| 330 | 49390000 | 228, 230, 246, 253 |
| 331 | 33060000 | 228, 231, 234, 240 |
| 332 | 32970000 | 228, 231, 234, 245 |
| 333 | 42540000 | 228, 231, 235, 249 |
| 334 | 80410000 | 228, 231, 236, 249 |
| 335 | 166220000 | 228, 231, 238, 240 |
| 336 | 75950000 | 228, 231, 240, 242 |
| 337 | 288500000 | 228, 231, 240, 251 |
| 338 | 3150000 | 228, 231, 249, 255 |
| 339 | 132270000 | 228, 232, 232, 249 |
| 340 | 39100000 | 228, 232, 233, 234 |
| 341 | 146890000 | 228, 232, 233, 243 |
| 342 | 41040000 | 228, 232, 233, 247 |
| 343 | 152440000 | 228, 232, 233, 250 |
| 344 | 7190000 | 228, 232, 233, 255 |
| 345 | 72280000 | 228, 232, 236, 239 |
| 346 | 113280000 | 228, 232, 237, 251 |
| 347 | 24350000 | 228, 232, 239, 249 |
| 348 | 4600000 | 228, 232, 242, 249 |
| 349 | 34570000 | 228, 232, 243, 245 |
| 350 | 51320000 | 228, 232, 245, 255 |
| 351 | 5230000 | 228, 233, 233, 246 |
| 352 | 24080000 | 228, 233, 234, 237 |
| 353 | 77370000 | 228, 233, 234, 245 |
| 354 | 15750000 | 228, 233, 237, 243 |
| 355 | 82280000 | 228, 233, 237, 247 |
| 356 | 45690000 | 228, 233, 237, 255 |
| 357 | 35580000 | 228, 233, 238, 244 |
| 358 | 5870000 | 228, 233, 238, 253 |
| 359 | 89140000 | 228, 233, 240, 246 |
| 360 | 37770000 | 228, 233, 240, 251 |
| 361 | 31290000 | 228, 233, 240, 255 |
| 362 | 50080000 | 228, 233, 243, 253 |
| 363 | 99420000 | 228, 233, 244, 250 |
| 364 | 4800000 | 228, 233, 244, 254 |
| 365 | 20400000 | 228, 233, 246, 253 |
| 366 | 13120000 | 228, 234, 236, 245 |
| 367 | 85840000 | 228, 234, 237, 240 |
| 368 | 95280000 | 228, 234, 240, 241 |
| 369 | 50510000 | 228, 234, 240, 245 |
| 370 | 109290000 | 228, 234, 240, 253 |
| 371 | 26680000 | 228, 234, 245, 253 |
| 372 | 10590000 | 228, 235, 236, 249 |
| 373 | 74320000 | 228, 235, 237, 237 |
| 374 | 128890000 | 228, 235, 237, 253 |
| 375 | 10590000 | 228, 235, 249, 253 |
| 376 | 66740000 | 228, 236, 237, 255 |
| 377 | 16640000 | 228, 236, 239, 244 |
| 378 | 2420000 | 228, 236, 243, 253 |
| 379 | 23490000 | 228, 236, 249, 253 |
| 380 | 51890000 | 228, 237, 237, 245 |
| 381 | 72790000 | 228, 237, 238, 240 |
| 382 | 150270000 | 228, 237, 238, 245 |
| 383 | 58970000 | 228, 237, 238, 253 |
| 384 | 12160000 | 228, 237, 240, 251 |
| 385 | 50790000 | 228, 237, 240, 255 |
| 386 | 23130000 | 228, 237, 242, 253 |
| 387 | 53230000 | 228, 237, 243, 245 |
| 388 | 31580000 | 228, 237, 245, 255 |
| 389 | 39690000 | 228, 237, 246, 253 |
| 390 | 89520000 | 228, 237, 250, 253 |
| 391 | 15170000 | 228, 238, 240, 245 |
| 392 | 28690000 | 228, 238, 245, 253 |
| 393 | 23940000 | 228, 238, 250, 253 |
| 394 | 47770000 | 228, 239, 244, 252 |
| 395 | 28950000 | 228, 239, 245, 249 |
| 396 | 34060000 | 228, 240, 241, 246 |
| 397 | 21040000 | 228, 240, 241, 255 |
| 398 | 56140000 | 228, 240, 242, 251 |
| 399 | 12800000 | 228, 240, 244, 251 |
| 400 | 1800000 | 228, 240, 244, 255 |
| 401 | 29220000 | 228, 240, 245, 254 |
| 402 | 71540000 | 228, 240, 249, 255 |
| 403 | 90750000 | 228, 240, 251, 253 |
| 404 | 88580000 | 228, 241, 242, 249 |
| 405 | 43100000 | 228, 241, 243, 253 |
| 406 | 27940000 | 228, 241, 245, 255 |
| 407 | 35010000 | 228, 241, 246, 253 |
| 408 | 7420000 | 228, 243, 244, 253 |
| 409 | 10440000 | 228, 244, 251, 253 |
| 410 | 73600000 | 228, 245, 249, 255 |
| 411 | 12710000 | 228, 245, 250, 253 |
| 412 | 8600000 | 229, 229, 231, 249 |
| 413 | 37000000 | 229, 229, 233, 249 |
| 414 | 120950000 | 229, 229, 240, 240 |
| 415 | 75810000 | 229, 230, 233, 234 |
| 416 | 21600000 | 229, 230, 233, 243 |
| 417 | 45270000 | 229, 230, 235, 240 |
| 418 | 69850000 | 229, 230, 235, 249 |
| 419 | 80410000 | 229, 230, 237, 249 |
| 420 | 173350000 | 229, 230, 240, 243 |
| 421 | 51560000 | 229, 230, 240, 247 |
| 422 | 24580000 | 229, 230, 247, 249 |
| 423 | 3150000 | 229, 230, 249, 254 |
| 424 | 13630000 | 229, 231, 242, 249 |
| 425 | 4120000 | 229, 232, 249, 250 |
| 426 | 44000000 | 229, 232, 249, 254 |
| 427 | 44000000 | 229, 232, 251, 253 |
| 428 | 267990000 | 229, 233, 233, 240 |
| 429 | 44490000 | 229, 233, 233, 243 |
| 430 | 132270000 | 229, 233, 233, 249 |
| 431 | 12300000 | 229, 233, 235, 249 |
| 432 | 141250000 | 229, 233, 237, 240 |
| 433 | 53150000 | 229, 233, 237, 251 |
| 434 | 72730000 | 229, 233, 240, 243 |
| 435 | 221720000 | 229, 233, 242, 249 |
| 436 | 131740000 | 229, 233, 247, 249 |
| 437 | 69810000 | 229, 233, 249, 251 |
| 438 | 28060000 | 229, 234, 244, 249 |
| 439 | 73930000 | 229, 234, 248, 249 |
| 440 | 150170000 | 229, 235, 240, 240 |
| 441 | 95970000 | 229, 236, 247, 249 |
| 442 | 27480000 | 229, 237, 238, 249 |
| 443 | 9390000 | 229, 237, 240, 243 |
| 444 | 75510000 | 229, 237, 241, 251 |
| 445 | 390000 | 229, 237, 242, 249 |
| 446 | 16250000 | 229, 237, 244, 251 |
| 447 | 41380000 | 229, 237, 246, 249 |
| 448 | 23490000 | 229, 237, 249, 252 |
| 449 | 44140000 | 229, 237, 249, 255 |
| 450 | 71480000 | 229, 238, 240, 240 |
| 451 | 180370000 | 229, 239, 239, 240 |
| 452 | 90110000 | 229, 239, 240, 253 |
| 453 | 48790000 | 229, 239, 244, 249 |
| 454 | 144250000 | 229, 239, 249, 253 |
| 455 | 23940000 | 229, 239, 251, 253 |
| 456 | 102950000 | 229, 240, 240, 250 |
| 457 | 45190000 | 229, 240, 240, 254 |
| 458 | 56140000 | 229, 240, 243, 250 |
| 459 | 16530000 | 229, 240, 246, 253 |
| 460 | 14370000 | 229, 241, 243, 249 |
| 461 | 55670000 | 229, 241, 247, 249 |
| 462 | 8920000 | 229, 241, 249, 250 |
| 463 | 153380000 | 229, 241, 249, 254 |
| 464 | 8920000 | 229, 242, 248, 249 |
| 465 | 8920000 | 229, 242, 249, 253 |
| 466 | 42870000 | 229, 243, 244, 249 |
| 467 | 50450000 | 229, 244, 249, 254 |
| 468 | 57730000 | 229, 247, 249, 254 |
| 469 | 57730000 | 229, 247, 249, 255 |
| 470 | 7270000 | 229, 248, 249, 254 |
| 471 | 16180000 | 229, 248, 249, 255 |
| 472 | 8920000 | 229, 249, 250, 252 |
| 473 | 85120000 | 229, 249, 254, 254 |
| 474 | 85120000 | 229, 249, 254, 255 |
| 475 | 25780000 | 230, 230, 233, 249 |
| 476 | 14050000 | 230, 230, 238, 243 |
| 477 | 13630000 | 230, 230, 242, 243 |
| 478 | 64930000 | 230, 230, 243, 248 |
| 479 | 8670000 | 230, 230, 243, 254 |
| 480 | 8670000 | 230, 230, 243, 255 |
| 481 | 1340000 | 230, 230, 245, 249 |
| 482 | 22070000 | 230, 230, 246, 249 |
| 483 | 8220000 | 230, 230, 249, 254 |
| 484 | 64930000 | 230, 231, 242, 249 |
| 485 | 84310000 | 230, 232, 235, 249 |
| 486 | 6450000 | 230, 232, 239, 255 |
| 487 | 3530000 | 230, 233, 233, 249 |
| 488 | 6570000 | 230, 233, 234, 235 |
| 489 | 37400000 | 230, 233, 234, 238 |
| 490 | 14520000 | 230, 233, 234, 243 |
| 491 | 200000 | 230, 233, 234, 247 |
| 492 | 87710000 | 230, 233, 234, 248 |
| 493 | 7090000 | 230, 233, 234, 250 |
| 494 | 15330000 | 230, 233, 238, 239 |
| 495 | 285950000 | 230, 233, 238, 240 |
| 496 | 66610000 | 230, 233, 238, 243 |
| 497 | 31900000 | 230, 233, 238, 247 |
| 498 | 2780000 | 230, 233, 238, 250 |
| 499 | 463820000 | 230, 233, 240, 254 |
| 500 | 463820000 | 230, 233, 240, 255 |
| 501 | 13630000 | 230, 233, 242, 243 |
| 502 | 6820000 | 230, 233, 242, 255 |
| 503 | 18470000 | 230, 233, 243, 247 |
| 504 | 49280000 | 230, 233, 243, 251 |
| 505 | 13880000 | 230, 233, 245, 249 |
| 506 | 10550000 | 230, 233, 246, 251 |
| 507 | 11690000 | 230, 233, 247, 255 |
| 508 | 1190000 | 230, 234, 234, 245 |
| 509 | 11480000 | 230, 234, 237, 243 |
| 510 | 43180000 | 230, 234, 239, 240 |
| 511 | 46320000 | 230, 234, 239, 245 |
| 512 | 1540000 | 230, 234, 239, 253 |
| 513 | 19060000 | 230, 234, 245, 251 |
| 514 | 3140000 | 230, 234, 246, 253 |
| 515 | 4280000 | 230, 234, 250, 253 |
| 516 | 13250000 | 230, 235, 235, 240 |
| 517 | 1990000 | 230, 235, 238, 253 |
| 518 | 2010000 | 230, 235, 240, 242 |
| 519 | 35330000 | 230, 235, 240, 247 |
| 520 | 5460000 | 230, 235, 240, 250 |
| 521 | 27040000 | 230, 235, 240, 254 |
| 522 | 30300000 | 230, 235, 243, 245 |
| 523 | 22760000 | 230, 235, 245, 255 |
| 524 | 68550000 | 230, 236, 241, 249 |
| 525 | 9520000 | 230, 236, 246, 251 |
| 526 | 6420000 | 230, 236, 249, 254 |
| 527 | 96320000 | 230, 237, 238, 240 |
| 528 | 4440000 | 230, 237, 238, 255 |
| 529 | 9590000 | 230, 237, 239, 239 |
| 530 | 12140000 | 230, 237, 239, 247 |
| 531 | 104090000 | 230, 237, 240, 248 |
| 532 | 84950000 | 230, 237, 240, 254 |
| 533 | 84950000 | 230, 237, 240, 255 |
| 534 | 26390000 | 230, 237, 243, 247 |
| 535 | 32870000 | 230, 237, 243, 250 |
| 536 | 12730000 | 230, 237, 243, 255 |
| 537 | 15040000 | 230, 237, 246, 255 |
| 538 | 8080000 | 230, 237, 247, 251 |
| 539 | 6420000 | 230, 237, 248, 255 |
| 540 | 10470000 | 230, 237, 250, 255 |
| 541 | 159740000 | 230, 238, 239, 240 |
| 542 | 26270000 | 230, 238, 240, 247 |
| 543 | 20580000 | 230, 238, 240, 253 |
| 544 | 20740000 | 230, 238, 242, 249 |
| 545 | 74580000 | 230, 238, 245, 250 |
| 546 | 22380000 | 230, 238, 245, 255 |
| 547 | 7290000 | 230, 238, 246, 253 |
| 548 | 37830000 | 230, 238, 251, 254 |
| 549 | 320000 | 230, 239, 239, 244 |
| 550 | 10780000 | 230, 239, 240, 242 |
| 551 | 13130000 | 230, 239, 240, 244 |
| 552 | 37810000 | 230, 239, 240, 249 |
| 553 | 25070000 | 230, 239, 240, 255 |
| 554 | 17740000 | 230, 239, 243, 247 |
| 555 | 10920000 | 230, 239, 243, 253 |
| 556 | 4810000 | 230, 239, 245, 251 |
| 557 | 37830000 | 230, 239, 250, 255 |
| 558 | 119310000 | 230, 240, 243, 248 |
| 559 | 95580000 | 230, 240, 243, 250 |
| 560 | 39030000 | 230, 240, 245, 248 |
| 561 | 79900000 | 230, 240, 247, 250 |
| 562 | 32430000 | 230, 240, 247, 254 |
| 563 | 47570000 | 230, 240, 247, 255 |
| 564 | 33390000 | 230, 240, 253, 254 |
| 565 | 33390000 | 230, 240, 253, 255 |
| 566 | 5490000 | 230, 241, 242, 249 |
| 567 | 39030000 | 230, 241, 244, 249 |
| 568 | 113820000 | 230, 242, 242, 249 |
| 569 | 98250000 | 230, 242, 242, 251 |
| 570 | 3000000 | 230, 242, 247, 249 |
| 571 | 255580000 | 230, 243, 243, 248 |
| 572 | 98250000 | 230, 243, 243, 250 |
| 573 | 31030000 | 230, 243, 245, 250 |
| 574 | 11130000 | 230, 243, 245, 255 |
| 575 | 4010000 | 230, 243, 247, 253 |
| 576 | 11940000 | 230, 243, 250, 252 |
| 577 | 1550000 | 230, 245, 248, 255 |
| 578 | 26300000 | 230, 246, 249, 254 |
| 579 | 26300000 | 230, 246, 251, 253 |
| 580 | 25780000 | 231, 231, 232, 249 |
| 581 | 1340000 | 231, 231, 244, 249 |
| 582 | 22070000 | 231, 231, 247, 249 |
| 583 | 8220000 | 231, 231, 249, 255 |
| 584 | 3530000 | 231, 232, 232, 249 |
| 585 | 13880000 | 231, 232, 244, 249 |
| 586 | 3400000 | 231, 233, 235, 249 |
| 587 | 7090000 | 231, 234, 235, 249 |
| 588 | 18590000 | 231, 234, 237, 251 |
| 589 | 27620000 | 231, 234, 240, 255 |
| 590 | 16690000 | 231, 234, 242, 249 |
| 591 | 2620000 | 231, 235, 246, 249 |
| 592 | 19180000 | 231, 235, 249, 255 |
| 593 | 35550000 | 231, 236, 240, 249 |
| 594 | 16770000 | 231, 237, 238, 238 |
| 595 | 7180000 | 231, 237, 238, 251 |
| 596 | 7180000 | 231, 238, 239, 249 |
| 597 | 68200000 | 231, 239, 241, 249 |
| 598 | 3300000 | 231, 239, 246, 249 |
| 599 | 24820000 | 231, 239, 249, 254 |
| 600 | 8630000 | 231, 239, 249, 255 |
| 601 | 11750000 | 231, 239, 251, 253 |
| 602 | 113820000 | 231, 240, 242, 249 |
| 603 | 5780000 | 231, 240, 249, 251 |
| 604 | 71290000 | 231, 240, 251, 255 |
| 605 | 46180000 | 231, 242, 243, 249 |
| 606 | 45870000 | 231, 242, 246, 249 |
| 607 | 595020000 | 231, 242, 249, 254 |
| 608 | 583080000 | 231, 242, 249, 255 |
| 609 | 1550000 | 231, 244, 249, 255 |
| 610 | 47050000 | 232, 232, 238, 251 |
| 611 | 28810000 | 232, 232, 242, 251 |
| 612 | 19830000 | 232, 232, 249, 254 |
| 613 | 3470000 | 232, 233, 234, 234 |
| 614 | 198130000 | 232, 233, 241, 249 |
| 615 | 45570000 | 232, 233, 246, 255 |
| 616 | 3470000 | 232, 233, 251, 255 |
| 617 | 38930000 | 232, 234, 235, 249 |
| 618 | 73300000 | 232, 234, 237, 251 |
| 619 | 82450000 | 232, 235, 238, 253 |
| 620 | 253340000 | 232, 235, 239, 249 |
| 621 | 91720000 | 232, 235, 242, 249 |
| 622 | 29050000 | 232, 235, 246, 253 |
| 623 | 112700000 | 232, 235, 249, 254 |
| 624 | 94120000 | 232, 235, 249, 255 |
| 625 | 48260000 | 232, 235, 251, 253 |
| 626 | 166410000 | 232, 236, 239, 239 |
| 627 | 55970000 | 232, 236, 249, 254 |
| 628 | 466250000 | 232, 237, 238, 238 |
| 629 | 134230000 | 232, 237, 238, 242 |
| 630 | 107590000 | 232, 237, 238, 251 |
| 631 | 327860000 | 232, 237, 238, 255 |
| 632 | 142710000 | 232, 237, 241, 249 |
| 633 | 10310000 | 232, 237, 244, 255 |
| 634 | 195420000 | 232, 237, 251, 255 |
| 635 | 217390000 | 232, 238, 239, 249 |
| 636 | 125100000 | 232, 238, 240, 251 |
| 637 | 34250000 | 232, 238, 244, 251 |
| 638 | 16080000 | 232, 239, 249, 250 |
| 639 | 89830000 | 232, 239, 249, 254 |
| 640 | 146740000 | 232, 239, 249, 255 |
| 641 | 11470000 | 232, 239, 251, 253 |
| 642 | 87260000 | 232, 241, 242, 251 |
| 643 | 71840000 | 232, 241, 251, 253 |
| 644 | 33010000 | 232, 241, 251, 254 |
| 645 | 87260000 | 232, 242, 242, 249 |
| 646 | 57310000 | 232, 242, 244, 251 |
| 647 | 87000000 | 232, 242, 247, 249 |
| 648 | 16740000 | 232, 242, 249, 250 |
| 649 | 194580000 | 232, 242, 249, 254 |
| 650 | 165590000 | 232, 242, 249, 255 |
| 651 | 50290000 | 232, 244, 251, 251 |
| 652 | 29130000 | 232, 245, 250, 251 |
| 653 | 68070000 | 232, 246, 251, 253 |
| 654 | 79420000 | 232, 247, 249, 251 |
| 655 | 34630000 | 232, 247, 249, 255 |
| 656 | 51790000 | 232, 249, 250, 255 |
| 657 | 63460000 | 232, 249, 251, 254 |
| 658 | 61820000 | 232, 251, 251, 253 |
| 659 | 49490000 | 233, 233, 234, 238 |
| 660 | 46650000 | 233, 233, 234, 243 |
| 661 | 8910000 | 233, 233, 234, 246 |
| 662 | 38620000 | 233, 233, 234, 255 |
| 663 | 6040000 | 233, 233, 238, 239 |
| 664 | 201470000 | 233, 233, 238, 240 |
| 665 | 148170000 | 233, 233, 238, 243 |
| 666 | 78950000 | 233, 233, 238, 255 |
| 667 | 56140000 | 233, 233, 239, 246 |
| 668 | 198130000 | 233, 233, 240, 248 |
| 669 | 80100000 | 233, 233, 240, 254 |
| 670 | 80100000 | 233, 233, 240, 255 |
| 671 | 21110000 | 233, 233, 243, 243 |
| 672 | 82570000 | 233, 233, 243, 246 |
| 673 | 54750000 | 233, 233, 243, 251 |
| 674 | 58400000 | 233, 233, 243, 255 |
| 675 | 6550000 | 233, 233, 247, 255 |
| 676 | 19830000 | 233, 233, 249, 255 |
| 677 | 5440000 | 233, 234, 234, 236 |
| 678 | 86890000 | 233, 234, 234, 240 |
| 679 | 32680000 | 233, 234, 234, 245 |
| 680 | 51610000 | 233, 234, 234, 252 |
| 681 | 118420000 | 233, 234, 236, 239 |
| 682 | 96760000 | 233, 234, 237, 243 |
| 683 | 122380000 | 233, 234, 237, 246 |
| 684 | 89600000 | 233, 234, 238, 240 |
| 685 | 54260000 | 233, 234, 238, 245 |
| 686 | 61150000 | 233, 234, 240, 243 |
| 687 | 124060000 | 233, 234, 240, 247 |
| 688 | 166740000 | 233, 234, 240, 250 |
| 689 | 61540000 | 233, 234, 240, 255 |
| 690 | 207400000 | 233, 234, 243, 245 |
| 691 | 60070000 | 233, 234, 243, 252 |
| 692 | 65320000 | 233, 234, 245, 250 |
| 693 | 12870000 | 233, 234, 246, 253 |
| 694 | 110450000 | 233, 235, 246, 249 |
| 695 | 145500000 | 233, 236, 239, 255 |
| 696 | 18790000 | 233, 236, 243, 255 |
| 697 | 10310000 | 233, 236, 245, 255 |
| 698 | 10510000 | 233, 236, 251, 255 |
| 699 | 96320000 | 233, 237, 238, 240 |
| 700 | 19340000 | 233, 237, 238, 246 |
| 701 | 142710000 | 233, 237, 240, 248 |
| 702 | 60480000 | 233, 237, 243, 243 |
| 703 | 124320000 | 233, 237, 243, 251 |
| 704 | 35450000 | 233, 237, 246, 251 |
| 705 | 55970000 | 233, 237, 249, 255 |
| 706 | 16080000 | 233, 237, 251, 251 |
| 707 | 138390000 | 233, 238, 239, 240 |
| 708 | 9240000 | 233, 238, 240, 243 |
| 709 | 13130000 | 233, 238, 240, 245 |
| 710 | 32360000 | 233, 238, 240, 246 |
| 711 | 126840000 | 233, 238, 240, 250 |
| 712 | 20580000 | 233, 238, 240, 253 |
| 713 | 36750000 | 233, 238, 240, 254 |
| 714 | 188230000 | 233, 238, 242, 249 |
| 715 | 1330000 | 233, 238, 243, 253 |
| 716 | 2790000 | 233, 238, 245, 255 |
| 717 | 68830000 | 233, 239, 239, 244 |
| 718 | 18640000 | 233, 239, 239, 253 |
| 719 | 106010000 | 233, 239, 240, 249 |
| 720 | 18860000 | 233, 239, 246, 249 |
| 721 | 97080000 | 233, 239, 246, 253 |
| 722 | 51930000 | 233, 240, 242, 246 |
| 723 | 21420000 | 233, 240, 243, 255 |
| 724 | 31090000 | 233, 240, 245, 248 |
| 725 | 48940000 | 233, 240, 246, 254 |
| 726 | 29690000 | 233, 240, 247, 251 |
| 727 | 109750000 | 233, 240, 250, 251 |
| 728 | 71840000 | 233, 240, 250, 253 |
| 729 | 31090000 | 233, 241, 244, 249 |
| 730 | 93020000 | 233, 242, 249, 251 |
| 731 | 51930000 | 233, 243, 243, 245 |
| 732 | 21420000 | 233, 243, 243, 253 |
| 733 | 48940000 | 233, 243, 245, 255 |
| 734 | 4020000 | 233, 243, 251, 252 |
| 735 | 33450000 | 233, 244, 251, 255 |
| 736 | 53430000 | 233, 251, 251, 252 |
| 737 | 43600000 | 234, 234, 240, 245 |
| 738 | 68010000 | 234, 234, 240, 255 |
| 739 | 174300000 | 234, 235, 240, 253 |
| 740 | 54070000 | 234, 235, 241, 249 |
| 741 | 12300000 | 234, 235, 245, 249 |
| 742 | 123650000 | 234, 236, 237, 255 |
| 743 | 180590000 | 234, 237, 237, 238 |
| 744 | 51890000 | 234, 237, 238, 240 |
| 745 | 171510000 | 234, 237, 238, 244 |
| 746 | 84280000 | 234, 237, 240, 243 |
| 747 | 50740000 | 234, 237, 240, 251 |
| 748 | 16580000 | 234, 237, 240, 255 |
| 749 | 179520000 | 234, 237, 242, 249 |
| 750 | 51660000 | 234, 237, 245, 251 |
| 751 | 253230000 | 234, 237, 248, 251 |
| 752 | 171260000 | 234, 237, 251, 252 |
| 753 | 10440000 | 234, 239, 240, 245 |
| 754 | 268200000 | 234, 239, 240, 249 |
| 755 | 66230000 | 234, 239, 249, 253 |
| 756 | 25640000 | 234, 240, 240, 247 |
| 757 | 16870000 | 234, 240, 240, 255 |
| 758 | 25640000 | 234, 240, 243, 245 |
| 759 | 129860000 | 234, 240, 245, 250 |
| 760 | 47490000 | 234, 240, 245, 255 |
| 761 | 47490000 | 234, 240, 246, 253 |
| 762 | 127480000 | 234, 240, 248, 255 |
| 763 | 14270000 | 234, 240, 251, 252 |
| 764 | 79660000 | 234, 242, 248, 249 |
| 765 | 59060000 | 234, 247, 249, 252 |
| 766 | 208330000 | 234, 249, 251, 253 |
| 767 | 85480000 | 235, 235, 236, 240 |
| 768 | 86750000 | 235, 235, 236, 244 |
| 769 | 35110000 | 235, 235, 236, 249 |
| 770 | 59680000 | 235, 235, 240, 244 |
| 771 | 68010000 | 235, 235, 240, 254 |
| 772 | 59290000 | 235, 235, 244, 249 |
| 773 | 31640000 | 235, 235, 249, 253 |
| 774 | 17140000 | 235, 236, 236, 243 |
| 775 | 20060000 | 235, 236, 236, 247 |
| 776 | 532580000 | 235, 236, 236, 250 |
| 777 | 123650000 | 235, 236, 236, 254 |
| 778 | 201010000 | 235, 236, 239, 244 |
| 779 | 296400000 | 235, 236, 239, 249 |
| 780 | 39550000 | 235, 236, 240, 242 |
| 781 | 154880000 | 235, 236, 240, 254 |
| 782 | 67860000 | 235, 236, 242, 249 |
| 783 | 8780000 | 235, 236, 245, 255 |
| 784 | 85880000 | 235, 236, 247, 249 |
| 785 | 494810000 | 235, 236, 249, 254 |
| 786 | 518210000 | 235, 236, 249, 255 |
| 787 | 157890000 | 235, 236, 251, 253 |
| 788 | 188750000 | 235, 237, 237, 251 |
| 789 | 71200000 | 235, 237, 249, 250 |
| 790 | 25640000 | 235, 238, 240, 240 |
| 791 | 96510000 | 235, 238, 245, 249 |
| 792 | 38750000 | 235, 238, 245, 253 |
| 793 | 186310000 | 235, 239, 240, 253 |
| 794 | 71210000 | 235, 239, 244, 249 |
| 795 | 182040000 | 235, 239, 249, 249 |
| 796 | 10830000 | 235, 240, 240, 251 |
| 797 | 16870000 | 235, 240, 242, 253 |
| 798 | 65840000 | 235, 240, 243, 249 |
| 799 | 182740000 | 235, 240, 249, 250 |
| 800 | 112520000 | 235, 240, 249, 254 |
| 801 | 24230000 | 235, 240, 251, 253 |
| 802 | 56110000 | 235, 241, 246, 249 |
| 803 | 5950000 | 235, 241, 249, 255 |
| 804 | 103080000 | 235, 242, 249, 249 |
| 805 | 185970000 | 235, 243, 245, 249 |
| 806 | 47500000 | 235, 243, 249, 253 |
| 807 | 61990000 | 235, 244, 249, 254 |
| 808 | 45000000 | 235, 244, 249, 255 |
| 809 | 86340000 | 235, 245, 249, 250 |
| 810 | 19310000 | 235, 245, 251, 253 |
| 811 | 48470000 | 235, 246, 248, 249 |
| 812 | 95350000 | 235, 246, 249, 253 |
| 813 | 37870000 | 235, 247, 249, 249 |
| 814 | 22470000 | 235, 249, 249, 255 |
| 815 | 185860000 | 235, 249, 250, 252 |
| 816 | 78710000 | 235, 249, 253, 254 |
| 817 | 78710000 | 235, 249, 253, 255 |
| 818 | 311810000 | 235, 249, 254, 254 |
| 819 | 557460000 | 235, 249, 254, 255 |
| 820 | 245650000 | 235, 249, 255, 255 |
| 821 | 43140000 | 236, 236, 238, 239 |
| 822 | 305210000 | 236, 236, 239, 250 |
| 823 | 14890000 | 236, 236, 239, 253 |
| 824 | 268830000 | 236, 236, 239, 254 |
| 825 | 89700000 | 236, 236, 249, 254 |
| 826 | 287310000 | 236, 237, 238, 255 |
| 827 | 17140000 | 236, 237, 243, 255 |
| 828 | 193010000 | 236, 237, 249, 250 |
| 829 | 8450000 | 236, 239, 239, 244 |
| 830 | 9410000 | 236, 239, 240, 242 |
| 831 | 19510000 | 236, 239, 240, 250 |
| 832 | 47610000 | 236, 239, 240, 254 |
| 833 | 5550000 | 236, 239, 243, 252 |
| 834 | 127170000 | 236, 239, 245, 255 |
| 835 | 64260000 | 236, 239, 247, 249 |
| 836 | 655390000 | 236, 239, 249, 250 |
| 837 | 32580000 | 236, 239, 249, 254 |
| 838 | 84160000 | 236, 239, 249, 255 |
| 839 | 11900000 | 236, 239, 251, 253 |
| 840 | 32530000 | 236, 240, 251, 255 |
| 841 | 164310000 | 236, 241, 249, 254 |
| 842 | 5600000 | 236, 242, 242, 249 |
| 843 | 16400000 | 236, 242, 247, 249 |
| 844 | 159410000 | 236, 242, 249, 254 |
| 845 | 74260000 | 236, 242, 251, 253 |
| 846 | 29410000 | 236, 243, 249, 250 |
| 847 | 161180000 | 236, 244, 249, 254 |
| 848 | 346830000 | 236, 245, 249, 250 |
| 849 | 221200000 | 236, 247, 249, 254 |
| 850 | 9440000 | 236, 247, 249, 255 |
| 851 | 24580000 | 236, 249, 250, 252 |
| 852 | 176980000 | 236, 249, 250, 254 |
| 853 | 1700000 | 236, 249, 253, 254 |
| 854 | 1700000 | 236, 249, 253, 255 |
| 855 | 23750000 | 236, 249, 254, 254 |
| 856 | 23750000 | 236, 249, 254, 255 |
| 857 | 371650000 | 237, 237, 238, 238 |
| 858 | 33120000 | 237, 237, 238, 243 |
| 859 | 139040000 | 237, 237, 238, 246 |
| 860 | 433970000 | 237, 237, 238, 251 |
| 861 | 14890000 | 237, 237, 238, 253 |
| 862 | 33120000 | 237, 237, 243, 251 |
| 863 | 158430000 | 237, 237, 246, 255 |
| 864 | 16810000 | 237, 237, 247, 251 |
| 865 | 193010000 | 237, 237, 248, 251 |
| 866 | 89700000 | 237, 237, 249, 255 |
| 867 | 97020000 | 237, 237, 250, 251 |
| 868 | 13270000 | 237, 237, 251, 252 |
| 869 | 20470000 | 237, 237, 251, 254 |
| 870 | 67840000 | 237, 237, 251, 255 |
| 871 | 47950000 | 237, 238, 238, 240 |
| 872 | 77500000 | 237, 238, 238, 245 |
| 873 | 58420000 | 237, 238, 238, 253 |
| 874 | 573220000 | 237, 238, 239, 249 |
| 875 | 132230000 | 237, 238, 241, 246 |
| 876 | 46260000 | 237, 238, 242, 249 |
| 877 | 107070000 | 237, 238, 243, 245 |
| 878 | 105150000 | 237, 238, 243, 253 |
| 879 | 130100000 | 237, 238, 244, 251 |
| 880 | 37780000 | 237, 238, 246, 253 |
| 881 | 13920000 | 237, 238, 251, 252 |
| 882 | 22500000 | 237, 239, 240, 255 |
| 883 | 19560000 | 237, 240, 242, 255 |
| 884 | 5600000 | 237, 240, 243, 250 |
| 885 | 164310000 | 237, 240, 249, 255 |
| 886 | 29410000 | 237, 240, 251, 251 |
| 887 | 95850000 | 237, 241, 246, 251 |
| 888 | 78630000 | 237, 241, 251, 255 |
| 889 | 19560000 | 237, 242, 242, 252 |
| 890 | 79460000 | 237, 242, 244, 251 |
| 891 | 26010000 | 237, 242, 249, 255 |
| 892 | 346830000 | 237, 244, 249, 251 |
| 893 | 66210000 | 237, 244, 251, 251 |
| 894 | 35530000 | 237, 244, 251, 255 |
| 895 | 161180000 | 237, 245, 249, 255 |
| 896 | 176230000 | 237, 246, 251, 253 |
| 897 | 66210000 | 237, 247, 249, 251 |
| 898 | 24580000 | 237, 249, 251, 253 |
| 899 | 81350000 | 237, 249, 251, 255 |
| 900 | 95620000 | 237, 251, 251, 253 |
| 901 | 71510000 | 238, 238, 240, 243 |
| 902 | 204760000 | 238, 238, 240, 251 |
| 903 | 56340000 | 238, 239, 240, 249 |
| 904 | 11870000 | 238, 239, 245, 249 |
| 905 | 75460000 | 238, 239, 248, 249 |
| 906 | 58420000 | 238, 239, 249, 253 |
| 907 | 7700000 | 238, 240, 243, 244 |
| 908 | 34890000 | 238, 240, 243, 252 |
| 909 | 64300000 | 238, 240, 244, 251 |
| 910 | 70230000 | 238, 240, 245, 255 |
| 911 | 4890000 | 238, 240, 246, 253 |
| 912 | 118330000 | 238, 242, 245, 249 |
| 913 | 91190000 | 238, 242, 249, 252 |
| 914 | 20890000 | 238, 242, 249, 255 |
| 915 | 48810000 | 238, 243, 245, 253 |
| 916 | 207640000 | 238, 247, 249, 252 |
| 917 | 37610000 | 238, 247, 249, 255 |
| 918 | 72980000 | 238, 248, 249, 255 |
| 919 | 62730000 | 239, 239, 240, 241 |
| 920 | 71510000 | 239, 239, 240, 242 |
| 921 | 8000000 | 239, 239, 240, 244 |
| 922 | 204760000 | 239, 239, 240, 250 |
| 923 | 22570000 | 239, 239, 240, 253 |
| 924 | 169260000 | 239, 239, 249, 249 |
| 925 | 4650000 | 239, 240, 242, 253 |
| 926 | 43250000 | 239, 240, 243, 249 |
| 927 | 16530000 | 239, 240, 247, 253 |
| 928 | 1910000 | 239, 240, 249, 251 |
| 929 | 20910000 | 239, 240, 249, 254 |
| 930 | 73130000 | 239, 241, 246, 249 |
| 931 | 70280000 | 239, 241, 251, 253 |
| 932 | 19100000 | 239, 243, 245, 249 |
| 933 | 1910000 | 239, 243, 249, 249 |
| 934 | 20890000 | 239, 243, 249, 254 |
| 935 | 28310000 | 239, 244, 249, 250 |
| 936 | 7990000 | 239, 244, 249, 254 |
| 937 | 67530000 | 239, 244, 251, 253 |
| 938 | 25510000 | 239, 245, 249, 251 |
| 939 | 53820000 | 239, 246, 249, 249 |
| 940 | 148100000 | 239, 246, 249, 253 |
| 941 | 37610000 | 239, 246, 249, 254 |
| 942 | 121270000 | 239, 249, 249, 254 |
| 943 | 100190000 | 239, 249, 249, 255 |
| 944 | 51910000 | 239, 249, 250, 253 |
| 945 | 3600000 | 239, 249, 253, 254 |
| 946 | 3600000 | 239, 249, 253, 255 |
| 947 | 58770000 | 239, 249, 254, 254 |
| 948 | 58770000 | 239, 249, 254, 255 |
| 949 | 60000 | 240, 240, 247, 251 |
| 950 | 8920000 | 240, 240, 250, 251 |
| 951 | 8920000 | 240, 240, 251, 255 |
| 952 | 60000 | 240, 242, 244, 251 |
| 953 | 60000 | 240, 243, 247, 249 |
| 954 | 8920000 | 240, 243, 250, 252 |
| 955 | 54750000 | 240, 245, 250, 251 |
| 956 | 54750000 | 240, 245, 251, 255 |
| 957 | 54750000 | 240, 247, 249, 251 |
| 958 | 13170000 | 240, 247, 249, 255 |
| 959 | 54650000 | 240, 250, 251, 253 |
| 960 | 17830000 | 241, 242, 249, 250 |
| 961 | 8920000 | 241, 242, 249, 255 |
| 962 | 88380000 | 241, 246, 249, 254 |
| 963 | 20450000 | 241, 246, 251, 253 |
| 964 | 54650000 | 241, 249, 250, 255 |
| 965 | 60000 | 242, 242, 245, 249 |
| 966 | 8920000 | 242, 242, 248, 249 |
| 967 | 8920000 | 242, 242, 249, 253 |
| 968 | 33570000 | 242, 244, 249, 254 |
| 969 | 13130000 | 242, 244, 249, 255 |
| 970 | 75200000 | 242, 244, 251, 253 |
| 971 | 54750000 | 242, 245, 249, 251 |
| 972 | 54650000 | 242, 249, 249, 254 |
| 973 | 54650000 | 242, 249, 251, 253 |
| 974 | 247760000 | 242, 249, 254, 254 |
| 975 | 413170000 | 242, 249, 254, 255 |
| 976 | 165410000 | 242, 249, 255, 255 |
| 977 | 54750000 | 243, 246, 249, 253 |
| 978 | 54750000 | 243, 247, 249, 249 |
| 979 | 100490000 | 244, 249, 251, 254 |
| 980 | 69510000 | 244, 249, 254, 255 |
| 981 | 35750000 | 244, 251, 251, 253 |
| 982 | 69510000 | 245, 249, 254, 255 |
| 983 | 64740000 | 245, 250, 251, 253 |
| 984 | 3290000 | 246, 251, 253, 254 |
| 985 | 3290000 | 246, 251, 253, 255 |
| 986 | 323790000 | 247, 249, 249, 254 |
| 987 | 223300000 | 247, 249, 249, 255 |
| 988 | 100490000 | 247, 249, 251, 253 |
| 989 | 154990000 | 247, 249, 254, 255 |
| 990 | 154990000 | 247, 249, 255, 255 |
| 991 | 101480000 | 248, 249, 255, 255 |
| 992 | 109230000 | 249, 249, 254, 254 |
| 993 | 7750000 | 249, 249, 254, 255 |
| 994 | 65850000 | 249, 251, 253, 254 |
| 995 | 65850000 | 249, 251, 253, 255 |

### Expanded coordinate sum

| Monomial | Coefficient |
| --- | --- |
| `a * a * b * c` | 5400 |
| `a * b` | -15863017539129011/250000000 |
| `a * c` | -4652870530324761/50000000 |
| `1` | -7289045456172647544487235146100567/89623300000000000000000000 |
| `a * b * v` | -426393/100 |
| `a * a * b` | 1921450016/25 |
| `a * b * e * u` | 31327/10 |
| `a * a * b * u` | -36069500 |
| `a * c * v` | -49869/20 |
| `a * a * c` | 6631/50 |
| `a * c * e * u` | 44327/10 |
| `a * a * c * u` | -2000 |
| `v` | 14961857370234706943/20000000000000 |
| `a` | 6434590973957387469511/100000000000000 |
| `e * u` | -9810812417621403/625000000 |
| `a * u` | -3915474178979423/400000000 |
| `a * b * p * v` | -53673/10 |
| `a * a * b * p` | 200 |
| `a * b * q * u` | -46327/10 |
| `a * c * p * v` | -19673/10 |
| `a * a * c * p` | -2400 |
| `a * c * q * u` | -13327/10 |
| `p * v` | -246640506661861/125000000 |
| `a * p` | -121688312464563569/250000000 |
| `q * u` | -9480952736964971/500000000 |
| `a * b * p * w` | 2900 |
| `a * b * q * r` | -800 |
| `a * a * b * r` | -96548400 |
| `a * c * p * w` | 1300 |
| `a * c * q * r` | -1800 |
| `p * w` | -340462715835154477/10000000000 |
| `q * r` | -81816818491523/10000000000 |
| `a * r` | -76452975986407/10000000 |
| `a * b * w` | 1525740562/25 |
| `a * b * c * w` | -230792700 |
| `a * b * e * r` | 4100 |
| `a * b * c * e` | -6000 |
| `a * c * w` | 2393735779/100 |
| `a * c * c * w` | 3000 |
| `a * c * e * r` | -700 |
| `a * c * c * e` | 4000 |
| `w` | 3772818878648589922369556229/44811650000000000000 |
| `c * w` | -22376720170512708985279/8962330000000000 |
| `e * r` | -2486340378063575897379/8962330000000000 |
| `c * e` | -97768672170055515687751/8962330000000000 |
| `a * b * c * q` | -9100 |
| `a * c * c * q` | 1000 |
| `c * q` | -14132026992471161/100000000 |
| `a * b * u * k` | 4500 |
| `a * b * c * k` | -4000 |
| `a * b * v * j` | -3000 |
| `a * b * c * v` | 4000 |
| `a * c * u * k` | -1000 |
| `a * c * c * k` | 4000 |
| `a * c * v * j` | 1000 |
| `a * c * c * v` | -300 |
| `u * k` | 40867254655223213837/4481165000000000 |
| `c * k` | -6854608880949/1000000000 |
| `v * j` | -27644091871106303537/4481165000000000 |
| `c * v` | -95295262003423/10000000000 |
| `a * b * e * p` | 73673/10 |
| `a * b * q` | 142051309/50 |
| `a * c * e * p` | -550677327/10 |
| `a * c * q` | 292392752/25 |
| `e * p` | -164336609543560577/10000000000 |
| `q` | 4281894410264301463337/100000000000000 |
| `a * b * k` | -48181/25 |
| `a * b * e * j` | 5100 |
| `a * c * k` | 7521/5 |
| `a * c * e * j` | -500 |
| `k` | 373975320676046131997473627/44811650000000000000 |
| `e * j` | -9066344609438595899/1792466000000000 |
| `a * b * f * w` | 1200 |
| `a * b * h * r` | 7200 |
| `a * b * f * h` | -500 |
| `a * b * r` | 2002252617/100 |
| `a * c * f * w` | -2000 |
| `a * c * h * r` | -7200 |
| `a * c * f * h` | 4300 |
| `a * c * r` | 98762/25 |
| `f * w` | -514898508739664477/1000000000 |
| `h * r` | -674905605980397/1000000000 |
| `f * h` | 23641586277057/1000000000 |
| `r` | 74058556316253125627/100000000000000 |
| `a * b * f * k` | -500 |
| `a * b * j` | 508153/100 |
| `a * c * f * k` | -3200 |
| `a * c * j` | -194139/100 |
| `f * k` | -84763054227200711388459/1792466000000000 |
| `j` | 6659639315483297353158139/1792466000000000000 |
| `a * b * u * w` | -30174300 |
| `a * b * v * r` | 4900 |
| `a * c * u * w` | 4900 |
| `a * c * v * r` | 2800 |
| `u * w` | -1475229446809976323787/4481165000000000 |
| `v * r` | -17166950153733315563/4481165000000000 |
| `a * b * p * k` | 2500 |
| `a * b * q * j` | -4000 |
| `a * c * p * k` | -300 |
| `a * c * q * j` | 1800 |
| `p * k` | -112203030079851823/10000000000 |
| `q * j` | -8022512295586977/10000000000 |
| `a * b * f` | 129009/100 |
| `a * b * e` | -529193/100 |
| `a * b * e * f` | -4300 |
| `a * c * f` | 1617885133/100 |
| `a * c * e` | 314795693/50 |
| `a * c * e * f` | 4700 |
| `f` | 132162757118061764969/625000000000 |
| `e` | 692273017637974344917/100000000000000 |
| `e * f` | -1098796335906122259961/1792466000000000 |
| `b * c * q * w` | -3300 |
| `b * q` | -769113267639549/250000000 |
| `a * a * p * r` | 8400 |
| `b * q * w` | 321947/100 |
| `b * e * q * r` | 1200 |
| `a * p * w` | 56234/25 |
| `a * a * p` | -46337/25 |
| `a * e * p * r` | -22483600 |
| `b * p * q * w` | 200 |
| `a * b * p * q` | 500 |
| `b * q * q * r` | -200 |
| `a * p * p * w` | -2000 |
| `a * a * p * p` | -3200 |
| `a * p * q * r` | 2000 |
| `b * c * h * q` | -500 |
| `a * b * c * h` | 4300 |
| `a * c * h * p` | -338549600 |
| `a * b * h * p` | -2900 |
| `c * h` | -1004206283891281111/5000000000 |
| `b * h` | -968549821933649/25000000 |
| `b * c * q * q` | 2700 |
| `b * b * q * q` | -2700 |
| `a * b * b * q` | -13627300 |
| `a * c * p * q` | -102107700 |
| `b * h * q * r` | -500 |
| `a * h * p * r` | -58370100 |
| `b * f * q * w` | 800 |
| `b * e * f * q` | -2000 |
| `b * q * r` | -7715/4 |
| `a * f * p * w` | 4200 |
| `a * e * f * p` | -4300 |
| `a * p * r` | 1220761314/25 |
| `b * q * k` | -22207/20 |
| `b * h * q * j` | 800 |
| `b * h * q` | 174525491/50 |
| `a * b * h * j` | -4100 |
| `a * b * h` | -312263/100 |
| `a * p * k` | 75063/20 |
| `a * h * p * j` | -109305400 |
| `a * h * p` | 28315698857/50 |
| `a * e * p * j` | 5100 |
| `h * j` | -470292368901923/100000000 |
| `h` | 172134209715059101657/2500000000000 |
| `b * f * h * q` | 500 |
| `a * f * h * p` | -1700 |
| `b * q * u * w` | -2900 |
| `b * h * q * u` | -327/10 |
| `b * q * v * r` | 1800 |
| `a * b * h * u` | 900 |
| `a * p * u * w` | -800 |
| `a * h * p * u` | 4000 |
| `a * p * v * r` | 3000 |
| `h * u` | -22928543681833167/2000000000 |
| `b * v * k` | 136109/50 |
| `b * e * u * k` | 100 |
| `b * k` | -6304593425682309/1000000000 |
| `a * v * j` | 57173/50 |
| `a * a * j` | -151529/50 |
| `a * e * u * j` | 800 |
| `a * a * u * j` | 4700 |
| `a * j` | -261594430708881/20000000 |
| `c * f * k` | -326363/100 |
| `c * e * f` | -292823/50 |
| `c * j` | -249951872064453/100000000 |
| `c` | 233900940038226426039/2000000000000 |
| `c * e * j` | -69871/10 |
| `a * f * f * k` | -7578900 |
| `a * e * f * f` | -1100 |
| `a * f * k` | 117958567/25 |
| `a * f * j` | -223809/100 |
| `a * f` | -2252213519335899/100000000 |
| `a * e * f * j` | 2300 |
| `c * h * r * k` | -2300 |
| `c * h * v * r` | 2000 |
| `c * h * u * k` | -3300 |
| `c * h * w * j` | -2400 |
| `c * h * u * w` | 4200 |
| `c * h * v * j` | -2700 |
| `a * c * r * k` | -4100 |
| `a * c * w * j` | 4100 |
| `r * k` | -31629341556335347943/1792466000000000 |
| `w * j` | -2325987449201278078137/1792466000000000 |
| `f * v` | -426266067357631/2000000000 |
| `u` | 505769212829162063201/50000000000000 |
| `c * f * h * v` | -1700 |
| `c * c * h * v` | -500 |
| `c * h * u` | 1058266733/50 |
| `c * c * h` | 4291015967/25 |
| `a * c * f * v` | -1800 |
| `a * c * u` | -323607/50 |
| `a * c * c` | 3068687179/100 |
| `c * p * q * v` | 4200 |
| `c * e * p * q` | 2000 |
| `c * q * v` | 26976/25 |
| `c * q * q * u` | -4200 |
| `c * q * q` | 212409/50 |
| `c * e * q * u` | -700 |
| `a * e * p * p` | -1000 |
| `a * p * v` | 27471111/20 |
| `a * p * q * u` | -34060000 |
| `a * p * q` | 5261869289/50 |
| `a * e * p * u` | -500 |
| `c * q * r * k` | -1100 |
| `c * q * q * r` | 2600 |
| `c * p * q * k` | 2700 |
| `c * q * w * j` | 2700 |
| `c * p * q * w` | -2600 |
| `c * q * q * j` | -2700 |
| `a * p * r * k` | -4400 |
| `a * p * p * k` | 3400 |
| `a * p * w * j` | -1200 |
| `a * p * q * j` | -67253400 |
| `c * q * v * r` | -400 |
| `c * q * u * k` | -3300 |
| `c * q * u * w` | -2200 |
| `c * q * v * j` | -100 |
| `a * p * u * k` | -5200 |
| `a * p * v * j` | 2100 |
| `c * p * v * w` | 2600 |
| `c * e * p * w` | 1800 |
| `c * v * w` | 336609/100 |
| `c * q * w` | 1844/25 |
| `c * e * u * w` | -4400 |
| `a * v * r` | -23209/4 |
| `a * q * u * r` | -2200 |
| `a * q * r` | -487827/100 |
| `a * e * u * r` | 2500 |
| `c * f * v * w` | -5600 |
| `c * u * w` | 251691/50 |
| `c * c * w` | -7043/50 |
| `a * f * v * r` | 7100 |
| `a * u * r` | -447867/100 |
| `c * p * v * k` | 3400 |
| `c * h * p * k` | -98000147357/31000000 |
| `a * c * h * u` | 4400 |
| `a * q * u * j` | 3100 |
| `a * h * u * j` | 2900 |
| `h * p` | -1260358217723789243/10000000000 |
| `c * v * k` | 101137/20 |
| `c * c * v * k` | -900 |
| `c * c * e * k` | -200 |
| `c * f * v * k` | 100 |
| `c * u * k` | 763073/100 |
| `c * c * k` | -85393/100 |
| `a * f * v * j` | -3100 |
| `a * u * j` | -312293/50 |
| `a * h * u` | -269756/25 |
| `a * c * h` | 3878117623/100 |
| `c * e * f * v` | 4100 |
| `e * f * h * u` | -3700 |
| `c * e * f * h` | 1700 |
| `a * f * h * u` | 1000 |
| `a * r * k` | -1008463/100 |
| `a * w * j` | -256336/25 |
| `a * q * j` | 385344401/50 |
| `e * f * r * k` | -3700 |
| `e * f * q * r` | -2400 |
| `e * f * p * k` | 4800 |
| `e * f * w * j` | -4600 |
| `e * f * p * w` | -3500 |
| `a * f * r * k` | 4500 |
| `a * f * q * r` | 3500 |
| `a * f * p * k` | 2500 |
| `a * f * w * j` | 2300 |
| `a * f * q * j` | -5300 |
| `a * u * k` | 383113/100 |
| `a * u * w` | 62517931/20 |
| `e * f * v * r` | -1900 |
| `e * f * u * k` | 4600 |
| `e * f * u * w` | -5300 |
| `a * f * u * k` | -1500 |
| `a * f * u * w` | -300 |
| `h * v` | -8500972954817/10000000 |
| `a * h` | -6485844544643791/100000000 |
| `e * h * u` | 1969547487/100 |
| `a * v` | -3865786958287/25000000 |
| `a * a` | -797012672468957/100000000 |
| `a * e * u` | -223527/25 |
| `a * a * u` | 93509341/25 |
| `h * u * k` | 27683/100 |
| `c * h * k` | -59741/20 |
| `h * v * j` | 689069/100 |
| `c * h * v` | 39093/25 |
| `f * q * k` | -345069/100 |
| `e * f * q` | 497173/100 |
| `q * k` | -109602930419/100000000 |
| `e * q * j` | -134109/20 |
| `a * e * f` | -155349/100 |
| `a * k` | -14636479944183/20000000 |
| `a * e * j` | -30451/5 |
| `e * e * f * p` | -1500 |
| `e * p * k` | 134703/20 |
| `e * p * j` | 359351/100 |
| `e * e * p * j` | -4300 |
| `a * p * j` | 11430335843/100 |
| `f * q * w` | -186239/20 |
| `h * q * r` | 568201/100 |
| `f * h * q` | 151823/100 |
| `a * f * w` | -71274/25 |
| `a * h * r` | 26717967/4 |
| `a * f * h` | -67404/25 |
| `e * h * p * r` | -3500 |
| `e * f * h * p` | 1100 |
| `e * p * r` | 234018511/100 |
| `f * v * k` | 463/5 |
| `a * f * v` | 50361223/100 |
| `a * a * f` | 100679/50 |
| `e * u * j` | 580519/100 |
| `a * a * f * u` | -3200 |
| `b * v` | -571331132456611/100000000 |
| `e * f * v` | 38986594/25 |
| `b * e * v` | 245007/100 |
| `b * e * u` | -135513/100 |
| `e * e * f * u` | -4300 |
| `b * e * e * u` | -4800 |
| `a * b * u` | 769291211/25 |
| `b` | 703244688745492651729/25000000000000 |
| `b * e` | -891387686002631/1000000000 |
| `v * w` | 5693125439/100000000 |
| `b * v * w` | -100163/25 |
| `e * v * r` | -151709/25 |
| `a * w` | -632309602813583/100000000 |
| `a * e * r` | 257311489/100 |
| `e * u * w` | 969553/100 |
| `b * e * u * w` | 3700 |
| `e * e * u * r` | -1000 |
| `b * w` | -338635450752297/10000000 |
| `f * v * w` | 394153/100 |
| `e * u * r` | -5307/50 |
| `c * e * u` | 578814203/20 |
| `h * p * v` | 176143341/100 |
| `c * e * h * u` | -363255981/10 |
| `p * v * w` | -35171/4 |
| `q * v * r` | 11249/5 |
| `e * p * u * w` | 5100 |
| `e * q * u * r` | -1800 |
| `v * r * k` | 179593/20 |
| `v * w * j` | 77633/100 |
| `e * u * r * k` | 7900 |
| `e * u * w * j` | -2600 |
| `a * u * r * k` | -700 |
| `a * u * w * j` | 700 |
| `a * h * j` | 250322401/20 |
| `e * h * u * j` | -4200 |
| `e * p * v` | 213118593/50 |
| `q * v * j` | -369433/100 |
| `q * v` | -29306426426997/20000000 |
| `a * e * p` | 4476568017/100 |
| `a * q` | -76247161644563/6250000 |
| `e * p * u * k` | 1200 |
| `e * e * p * u` | -2000 |
| `e * q * u` | 15627/10 |
| `a * q * u` | 19504959/5 |
| `f * q * v` | -308887/100 |
| `a * f * q` | 107544331/100 |
| `e * p * u` | -116961/25 |
| `a * p * u` | 689670199/50 |
| `a * f * q * u` | 1100 |
| `p` | 8873190214857517117103/100000000000000 |
| `f * q` | -4947952510541/50000000 |
| `h * v * r` | 45981/100 |
| `e * h * u * r` | -100 |
| `a * h * u * r` | 5500 |
| `e * f * u` | 177597/20 |
| `a * f * u` | 1615436717/50 |
| `c * e * v * r` | 4600 |
| `c * e * r` | 15769/5 |
| `h * u * w` | -142392/25 |
| `c * h * w` | 19817/4 |
| `c * e * h * r` | 700 |
| `e * p * w` | 1260122393/100 |
| `q * u * w` | -36667/20 |
| `q * w` | 250386534693/100000000 |
| `e * p * v * r` | -3300 |
| `e * e * p * r` | 2700 |
| `e * q * r` | 27789/50 |
| `c * e * v * j` | -5800 |
| `c * e * h * j` | 4100 |
| `a * c * h * j` | -4000 |
| `f * w * k` | 606470217/10 |
| `h * r * k` | 34771/2 |
| `f * h * k` | -30719/25 |
| `e * h * r * j` | 300 |
| `e * f * h * j` | -200 |
| `e * r * j` | 8709/4 |
| `a * h * r * j` | 4000 |
| `a * f * h * j` | 4800 |
| `a * r * j` | -143317/25 |
| `h * p * k` | 173101068/25 |
| `q * u * k` | -517329/100 |
| `e * p * v * j` | -1200 |
| `e * h * p * j` | 3200 |
| `c * e * k` | 27161/10 |
| `c * e * e * j` | -1200 |
| `f * h * p * v` | -1100 |
| `f * h * v` | 7643/10 |
| `f * h * q * u` | -700 |
| `a * f * p * v` | -4420300 |
| `f * h * h * u` | 7500 |
| `c * f * h * h` | 2500 |
| `c * f * h * q` | -200 |
| `c * h * p` | 35121875847/1000 |
| `b * h * p` | 325883524753/1000 |
| `c * f * q * k` | 1500 |
| `b * f * q * k` | 3800 |
| `c * p * k` | 98071/50 |
| `b * p * k` | 1100182309/20 |
| `f * h * q * r` | 4300 |
| `a * f * h * r` | -100 |
| `b * p * w` | 5984274696/25 |
| `h * p * r` | 604211111/100 |
| `c * f * q * q` | 400 |
| `a * c * f * q` | 400 |
| `c * p * v` | -809057/100 |
| `c * p * q` | 529907207/50 |
| `f * h * q * j` | -7000 |
| `h * p * j` | 1134655731/100 |
| `f * q * u * w` | 4300 |
| `f * p * q * w` | -2200 |
| `f * q * v * r` | 3100 |
| `f * q * q * r` | 2200 |
| `p * u * w` | 151913/25 |
| `p * p * w` | 2008241311/50 |
| `p * v * r` | -848909/100 |
| `p * q * r` | 126217/20 |
| `f * q * r * k` | 500 |
| `f * q * w * j` | 5900 |
| `f * q * v * j` | 300 |
| `p * r * k` | -37109/100 |
| `p * u * k` | -295221/50 |
| `p * w * j` | 8923/2 |
| `f * f * v * k` | 2500 |
| `e * f * f * v` | 4200 |
| `f * v * j` | 49751/100 |
| `f * u * k` | -356969/50 |
| `u * j` | -435615508109/100000000 |
| `f * v * r * k` | -3100 |
| `f * p * v * k` | -300 |
| `f * v * w * j` | -100 |
| `f * p * v * w` | 2600 |
| `u * r * k` | -589869/50 |
| `q * u * r` | -103519/10 |
| `u * w * j` | 607709/100 |
| `q * u * j` | 282463/100 |
| `f * h * p * k` | 3200 |
| `f * h * u * k` | 200 |
| `h * u * j` | -899/100 |
| `f * h * u * w` | 2000 |
| `h * h * u * r` | -1400 |
| `h * u * r` | -132771/50 |
| `f * h * w * j` | 3600 |
| `h * h * r * j` | -1000 |
| `f * h * h * j` | 1000 |
| `h * r * j` | 75583/20 |
| `h * p * v * j` | -2600 |
| `h * h * p * j` | -500 |
| `h * q * u * j` | -500 |
| `e * f * p * v` | -13658500 |
| `h * p * v * r` | 2000 |
| `h * q * u * r` | 700 |
| `c * e * p * v` | -4700 |
| `h * p * p * w` | -43250300 |
| `b * h * p * w` | -399555600 |
| `a * h * p * p` | -1200 |
| `h * p * q * r` | 300 |
| `h * p * u * w` | -2700 |
| `c * h * p * w` | -800 |
| `c * h * q * r` | -1800 |
| `f * p * w * k` | -6400 |
| `p * w * k` | 184900994/25 |
| `e * p * w * j` | -5600 |
| `q * r * k` | -76927/25 |
| `q * r * j` | -86283/25 |
| `e * q * r * j` | 2600 |
| `a * e * f * r` | -2800 |
| `a * e * r * j` | 2800 |
| `p * r * w * k` | -1400 |
| `p * q * r * w` | -1200 |
| `p * p * w * k` | 4400 |
| `p * w * w * j` | 1400 |
| `p * p * w * w` | -4400 |
| `p * q * w * j` | -4400 |
| `q * r * r * k` | 1400 |
| `q * q * r * r` | -4400 |
| `p * q * r * k` | -4400 |
| `q * r * w * j` | -1400 |
| `q * q * r * j` | 4400 |
| `a * r * r * k` | 5600 |
| `a * q * r * r` | 4400 |
| `a * r * w * j` | 4400 |
| `a * p * r * w` | -4400 |
| `a * q * r * j` | -4400 |
| `p * w * w` | 100772/25 |
| `c * p * w * w` | -3200 |
| `e * p * r * w` | 100 |
| `q * r * w` | 257617/50 |
| `c * q * r * w` | -6800 |
| `e * q * r * r` | -100 |
| `c * e * q * r` | -1800 |
| `a * r * w` | -4978/5 |
| `a * c * r * w` | -300 |
| `a * e * r * r` | -300 |
| `p * p * v * k` | 100 |
| `e * p * p * k` | -2400 |
| `p * q * u * k` | -100 |
| `p * q * k` | 36678/25 |
| `p * q * v * j` | -100 |
| `e * p * q * j` | 2400 |
| `q * q * u * j` | 100 |
| `q * q * j` | -36678/25 |
| `h * p * r * k` | 3000 |
| `h * q * r * j` | -1700 |
| `h * p * p * k` | -30242400 |
| `h * p * u * k` | 3100 |
| `h * p * q * j` | 2400 |
| `c * c * v` | 170043/100 |
| `c * q * u` | 3424654649/100 |
| `c * c * q` | 118035873 |
| `b * p * v` | -420043/100 |
| `b * c * v` | 62559/100 |
| `b * q * u` | 125469/25 |
| `b * c * q` | 67919/20 |
| `c * c * h * p` | 3000 |
| `b * c * h * p` | -1000 |
| `c * c` | -2386114350934923/25000000 |
| `b * b * h * p` | -84482000 |
| `b * b` | -2060878462687/10000000 |
| `c * h * h * u` | 1200 |
| `c * c * h * h` | -70078700 |
| `b * c * h * v` | 2800 |
| `b * h * h * u` | -4800 |
| `b * c * h * h` | -4800 |
| `c * h * p * v` | 42019/10 |
| `c * h * h * p` | 3500 |
| `c * h * q * u` | -429748019/10 |
| `b * h * p * v` | 10327/10 |
| `b * h * h * p` | 3600 |
| `b * p * v * w` | 1100 |
| `b * e * p * w` | 2700 |
| `c * r * w * k` | 3500 |
| `c * p * w * k` | -1600 |
| `c * w * w * j` | -3500 |
| `b * q * w * j` | -1400 |
| `b * f * v * w` | 6500 |
| `b * c * v * w` | -2100 |
| `b * u * w` | 313840789/100 |
| `b * c * w` | 598717166/25 |
| `c * c * q * w` | 200 |
| `c * c * h * w` | 500 |
| `b * c * h * w` | 3900 |
| `c * f * w * k` | -400 |
| `c * f * h * k` | 800 |
| `c * r * k` | 4001 |
| `b * f * w * k` | 4200 |
| `b * h * r * k` | -5500 |
| `b * f * h * k` | 5000 |
| `b * r * k` | 387873/50 |
| `c * c * h * k` | 4700 |
| `b * c * v * k` | 1200 |
| `b * h * u * k` | 2300 |
| `b * c * h * k` | -4100 |
| `b * w * j` | -7931/25 |
| `b * q * j` | 12854/5 |
| `b * e * r * k` | -3000 |
| `b * e * p * k` | 1400 |
| `b * e * w * j` | 2200 |
| `b * v * r` | -238877/100 |
| `b * u * k` | 68271/100 |
| `b * v * j` | -329691/100 |
| `b * e * v * r` | -1000 |
| `b * e * v * j` | -4900 |
| `c * e * q` | -784433/100 |
| `b * c * e * q` | 3200 |
| `c * e * e * p` | 1100 |
| `b * e * w` | 57224817/50 |
| `b * c * e * w` | -300 |
| `b * e * e * r` | -300 |
| `b * c * e * e` | -4000 |
| `b * f * q * v` | -2900 |
| `b * c * q * v` | -3200 |
| `c * e * p` | 571976339/100 |
| `b * c * e * v` | 3200 |
| `b * c * e` | 260139/100 |
| `c * e * v` | 2859/10 |
| `b * q * v` | 282764691/20 |
| `b * e * p * v` | -1500 |
| `c * e * e * u` | 1800 |
| `b * e * q` | -500359/100 |
| `b * e * e * p` | -4900 |
| `b * e * h * p` | 158286152643/31000000 |
| `b * c * e * h` | -3600 |
| `b * h * u * w` | -5900 |
| `b * e * h * u` | -31673/10 |
| `b * e * q * u` | 1900 |
| `h * p * w` | 2568556791/50 |
| `b * p * v * k` | 7100 |
| `b * h * p * k` | 122800147357/31000000 |
| `b * q * u * k` | -3800 |
| `b * q * r * k` | 1400 |
| `b * q * v * j` | -3300 |
| `b * v * r * k` | -3500 |
| `b * v * w * j` | 3500 |
| `f * f * v * w` | -300 |
| `f * u * w` | -690229/100 |
| `c * f * w` | 135591/20 |
| `f * v * r` | -171139/50 |
| `c * v * r` | -443731/100 |
| `u * r` | 850860516929/100000000 |
| `c * r` | 228233097353/100000000 |
| `b * f * v` | -769217/100 |
| `b * u` | -281201700137447/100000000 |
| `b * c` | -18486455135169/1000000 |
| `f * h * p * w` | -3800 |
| `b * h * u` | 1334659/100 |
| `b * e * p` | -110367/20 |
| `b * f * v * k` | -1800 |
| `b * c * k` | 367589/100 |
| `c * v * j` | 947191/100 |
| `c * h * j` | 313263811/50 |
| `b * c * h` | 196673/25 |
| `b * c * q * k` | 200 |
| `b * h * v * j` | 4000 |
| `h * p * w * j` | -1300 |
| `b * h * w * j` | 500 |
| `b * h * k` | 136307/50 |
| `b * h * v` | 358563157/50 |
| `b * e * h * j` | -1400 |
| `h * h * p * r` | 3400 |
| `f * h * h * p` | 5000 |
| `b * f * h * w` | 5000 |
| `b * h * h * r` | 5000 |
| `b * f * h * h` | -5000 |
| `b * h * r` | -584451/100 |
| `h * p * q * u` | 3200 |
| `h * p * p * v` | -7703200 |
| `b * h * v * r` | 1600 |
| `h * h * p` | 1682239719/50 |
| `b * h * h` | 234287/50 |
| `b * f * h * v` | 5000 |
| `h * r * r * k` | -6700 |
| `h * q * r * r` | -3300 |
| `h * r * w * j` | -3300 |
| `h * p * r * w` | 3300 |
| `b * e * f * w` | -3689200 |
| `b * w * k` | 40806766/5 |
| `p * p * v * w` | 2000 |
| `p * q * u * w` | -2000 |
| `p * q * v * r` | -2000 |
| `q * q * u * r` | 2000 |
| `b * h * p * q` | -300 |
| `b * e * p * q` | 3900 |
| `b * q * q` | -205197/100 |
| `c * q * j` | 76692/25 |
| `h * w * j` | 247533/100 |
| `f * h * w` | -703507/100 |
| `c * h * r` | -120721/50 |
| `c * f * h * w` | -2500 |
| `c * e * r * k` | -1800 |
| `c * e * w * j` | 2100 |
| `c * e * f * w` | 3400 |
| `h * h * r` | -1492483/100 |
| `f * h * h` | -1041201/100 |
| `c * h * h * r` | 3000 |
| `p * q * w` | 183642/25 |
| `q * q * r` | -2505 |
| `c * c * q * q` | -700 |
| `e * p * p * w` | -55009900 |
| `e * p * q * r` | -100 |
| `c * c * e * q` | 4500 |
| `c * q * k` | 126379/25 |
| `c * c * q * k` | -1000 |
| `c * c * q * v` | -400 |
| `c * e * p * k` | -4700 |
| `c * c * e * v` | -1100 |
| `c * f * q * w` | 5200 |
| `c * e * f * q` | -1800 |
| `c * q * r` | 292443/50 |
| `c * e * e * f` | 4500 |
| `c * e * w` | -117893/100 |
| `c * e * e * r` | -5000 |
| `c * e * q * j` | 3800 |
| `p * q` | -1092728967973093/100000000 |
| `f * q * q` | -59196/25 |
| `e * p * p` | 4778244731/100 |
| `e * f * p * q` | 800 |
| `h * q * u` | 2329254709/100 |
| `h * q * j` | 775371/100 |
| `c * h * q * j` | -2500 |
| `c * f * q` | -135731/20 |
| `e * f * p` | 67174878/25 |
| `c * c * e` | -327331/100 |
| `c * v * r * k` | -4700 |
| `c * v * w * j` | -4400 |
| `c * f * v` | 161763/25 |
| `e * v` | -2418682028509/5000000 |
| `e * e * u` | 141143/100 |
| `c * e * e` | 171193/25 |
| `w * k` | -41153011961337/4000000 |
| `c * w * k` | 28844/25 |
| `e * w * j` | 371203/100 |
| `c * c * w * k` | -2500 |
| `e * r * k` | 77728/25 |
| `e * e * r * j` | -4800 |
| `c * c * e * e` | -2500 |
| `h * w` | -531511431967603/100000000 |
| `e * h * r` | -182418/25 |
| `c * e * h` | 1287859589/100 |
| `c * w * j` | 566121/100 |
| `e * f * h * r` | 1700 |
| `q * w * j` | -59177/50 |
| `c * p * w` | 307909/50 |
| `e * p * r * k` | -7000 |
| `b * e * r` | 61203/25 |
| `w * w` | -2460498868031823/50000000 |
| `c * w * w` | 72969/10 |
| `e * r * w` | 583507/100 |
| `e * w` | -85114763496677/100000000 |
| `e * e * r` | 443317/100 |
| `f * w * w` | 31609828437/100 |
| `h * r * w` | 16473/20 |
| `r * w` | -1746188005027/25000000 |
| `c * f * w * w` | -3000 |
| `c * h * r * w` | -3000 |
| `c * r * w` | 61261/100 |
| `e * f * r * w` | -8000 |
| `e * h * r * r` | 2000 |
| `e * r * r` | -8367/25 |
| `c * e * h * p` | -78758752643/31000000 |
| `r * w * k` | 16513/25 |
| `w * w * j` | 126891/20 |
| `e * r * r * k` | -400 |
| `e * r * w * j` | 400 |
| `c * c * e * h` | 100 |
| `u * w * k` | -506881/100 |
| `c * u * w * k` | -900 |
| `e * v * r * j` | 4700 |
| `f * h * p * q` | 1400 |
| `c * h * p * q` | -3900 |
| `h * p * p` | 150105762 |
| `h * p * u` | 490763/100 |
| `f * p * q * k` | 400 |
| `f * q * q * j` | -400 |
| `p * p * k` | 2408700011/100 |
| `p * q * j` | 139563859/20 |
| `f * h * v * j` | -300 |
| `f * h * v * r` | 1400 |
| `f * h * u` | -664439/50 |
| `c * f * h` | -433869/100 |
| `f * r * w * k` | -6500 |
| `f * q * r * w` | -3700 |
| `f * w * w * j` | -3500 |
| `f * p * w * w` | 3700 |
| `r * r * k` | 82992/25 |
| `q * r * r` | 203263/25 |
| `r * w * j` | 20337/100 |
| `p * r * w` | 5956611/10 |
| `f * f * w * k` | -97391300 |
| `e * f * f * w` | 5300 |
| `f * w * j` | 826520373/100 |
| `f * r * k` | 172251/25 |
| `e * f * r` | 212163/25 |
| `r * j` | -17279041/78125 |
| `h * h * p * u` | -4500 |
| `h * h * p * p` | -65215500 |
| `h * h * u` | -124117/50 |
| `c * h * q` | 8793150053/50 |
| `c * h * h` | 1950066067/25 |
| `c * h * h * j` | -3929500 |
| `h * u * r * k` | 2000 |
| `h * u * w * j` | 2000 |
| `c * v * r * w` | 3600 |
| `c * u * w * w` | -3600 |
| `h * v * r * j` | -4000 |
| `f * p * v` | 187433409/100 |
| `f * q * u` | -18502/5 |
| `p * v * r * w` | 4100 |
| `p * u * w * k` | 4100 |
| `p * u * w * w` | -4100 |
| `p * v * w * j` | -1100 |
| `q * v * r * r` | -4100 |
| `q * u * r * k` | 8900 |
| `q * u * r * w` | 4100 |
| `q * v * r * j` | 4100 |
| `f * u * w * k` | 3200 |
| `v * r * j` | -43483/20 |
| `f * f * q * k` | 1000 |
| `e * f * f * q` | -1000 |
| `f * q * j` | 15231/10 |
| `f * p * k` | 183101/100 |
| `p * j` | -74166484355523/6250000 |
| `e * f * w` | 38902791/100 |
| `e * e * f * r` | 2300 |
| `f * f * w * w` | -507695000 |
| `f * h * r * w` | -5000 |
| `f * f * h * w` | 8000 |
| `f * r * w` | 267903/25 |
| `e * f * f * h` | -3800 |
| `h * r * r` | 286353/50 |
| `f * h * r` | -1933163/100 |
| `r * r` | -22784037757/3125000 |
| `f * v * r * w` | 200 |
| `f * u * w * w` | -200 |
| `v * r * w` | -259991/50 |
| `u * w * w` | 259991/50 |
| `v * r * r` | 121539/20 |
| `u * r * w` | -104567/100 |
| `e * v * r * r` | 800 |
| `e * u * r * w` | -800 |
| `f * f * h * k` | -200 |
| `f * h * j` | -23213/20 |
| `f * h * r * k` | -600 |
| `v * k` | -230437261089/50000000 |
| `e * v * j` | -52067/100 |
| `b * f * k` | -835217/100 |
| `b * e * f` | 142491059/50 |
| `b * j` | -125780074199/100000000 |
| `b * e * j` | -32899/50 |
| `e * f * h` | 371551/100 |
| `h * k` | -8095931976603/20000000 |
| `e * h * j` | 98479/100 |
| `p * q * v` | -2200 |
| `e * p * q` | -490273/50 |
| `q * q * u` | 2200 |
| `q * q` | 27831969119/50000000 |
| `e * h * p * p` | -4700 |
| `h * p * q` | 22521/100 |
| `e * h * p` | 282463/100 |
| `h * q` | -5215865940179071/100000000 |
| `e * p * p * v` | -4700 |
| `e * e * p * p` | -25635300 |
| `e * p * q * u` | 4700 |
| `p * v * r * k` | 7000 |
| `q * u * w * j` | -3000 |
| `u * r * w * k` | 2900 |
| `u * w * w * j` | -2900 |
| `v * r * r * k` | -2900 |
| `v * r * w * j` | 2900 |
| `f * h * h * r` | 13000 |
| `f * f * h * h` | -3000 |
| `f * p * w` | 218507/100 |
| `f * f * q * w` | 1000 |
| `f * h * p` | -42283/20 |
| `f * f * h * q` | -1000 |
| `p * r` | -552060492676889/100000000 |
| `f * q * r` | -142217/50 |
| `f * f * w` | 8269252909/10 |
| `f * f * h` | -12433/20 |
| `f * r` | 111380721867/50000000 |
| `p * v * j` | 307979/100 |
| `p * v * k` | -556619/50 |
| `e * u * k` | -939867/100 |
| `c * f * h * p` | -4000 |
| `b * f * h * p` | 4000 |
| `c * f` | -167505936200431/100000000 |
| `b * f` | -27974903836493/100000000 |
| `c * h * p * u` | 1000 |
| `b * h * p * u` | -1000 |
| `c * u` | -67491202592133/4000000 |
| `c * h * p * r` | 4000 |
| `b * h * p * r` | -4000 |
| `b * r` | -38595713953343/25000000 |
| `c * h * p * j` | -3000 |
| `b * h * p * j` | 3000 |
| `a * b * p` | -376157/100 |
| `b * p` | -18472001478029221/100000000 |
| `a * c * p` | 16280560347/25 |
| `c * p` | -844538042293283/12500000 |
| `a * f * p` | 8122501281/100 |
| `f * p` | -174150530800039/20000000 |
| `f * u` | -167011421313037/50000000 |
| `a * p * p` | 107543/100 |
| `p * p` | -2071768288963443/25000000 |
| `p * u` | -143256914590489/100000000 |
| `a * a * r` | 1001417279/100 |
| `a * b * b` | 48983158/25 |
| `a * b * c` | 17812081823/100 |
| `b * b * h` | 96762069/10 |
| `a * e` | -127830697549469/25000000 |
| `b * f * h` | -442961/100 |
| `b * f * w` | 37263861/100 |
| `b * h * j` | -7401/50 |
| `a * f * r` | -396259/50 |
| `b * f * r` | -388623/100 |
| `b * p * q` | -41481/25 |
| `c * c * r` | -49879/100 |
| `a * f * f` | 2123722121/100 |
| `f * f` | -33800059294685921/100000000 |
| `e * f * f` | -16607/10 |
| `f * j` | -31910712954287/5000000 |
| `e * f * j` | 452863/100 |
| `f * f * k` | 7594721651/100 |
| `f * r * j` | 45223/20 |
| `a * f * f * u` | -51890000 |
| `f * f * u` | 538446963/100 |
| `p * p * v` | 61348899/10 |
| `c * c * p` | 695051188/25 |
| `a * c * c * p` | -267990000 |
| `c * f * p` | 1465772263/100 |
| `a * c * f * p` | -141250000 |
| `a * r * r` | -587317/100 |
| `f * p * q` | 48785893/50 |
| `a * f * p * q` | -9390000 |
| `h * h` | -493604295156253/20000000 |
| `a * h * h * p` | -180370000 |
| `a * h * h` | 413173559/20 |
| `b * b * r` | 444793/100 |
| `b * c * r` | -424751/100 |
| `b * b * q` | 141413993/100 |
| `b * u * r` | -460553/100 |
| `b * e * e` | 442509/50 |
| `e * e` | -34149343532521/100000000 |
| `b * e * h` | 691777/100 |
| `e * h` | -698241199594159/100000000 |
| `e * q` | 4395884613/781250 |
| `b * c * p` | -3871/100 |
| `b * h * w` | 4575878513/100 |
| `c * u * r` | 45731/100 |
| `b * f * q` | -119369/50 |
| `e * e * p` | 293637417/50 |
| `b * e * k` | 138571/50 |
| `e * k` | -110858959663/50000000 |
| `b * f * p` | -329761/25 |
| `b * f * p * r` | 10000 |
| `b * p * r` | 89181513/20 |
| `f * p * r` | -17811/10 |
| `b * p * j` | -421911/100 |
| `b * p * u` | 159599/100 |
| `b * h * q * v` | -17740000 |
| `h * q * v` | 92041329/50 |
| `b * p * r * w` | -5780000 |
| `b * r * w` | 6620123/10 |
| `b * p * w * k` | -71290000 |
| `c * p * r` | -138847/100 |
| `c * f * r` | -3383/50 |
| `c * p * j` | 23119/10 |
| `c * c * h * q` | -148170000 |
| `e * e * f` | -25624/5 |
| `e * e * j` | 13099/2 |
| `c * p * u` | -96559/50 |
| `h * h * j` | 213131779/100 |
| `e * f * k` | 20844/25 |
| `p * q * u` | 176668251/50 |
| `f * f * q` | -32957/50 |
| `f * f * v` | -385959/100 |
| `f * f * j` | 1024162713/100 |
| `f * f * r` | -132371/100 |
| `f * u * r` | 92723/100 |
| `f * f * w * j` | -13270000 |
| `k * k` | -52049/20 |
| `r * k * k` | 52049/20 |

### Shifted coordinate ceiling

| Monomial | Coefficient | Width product | Upper contribution |
| --- | --- | --- | --- |
| `a * a * b * c` | 5400 | 127702442423903801993/15625000000000000000000 | 3447965945445402653811/78125000000000000000 |
| `a * a * b` | -16485853/5000 | 1115314914749507/62500000000000000 | 0 |
| `a * a * c` | -1455971/5000 | 4736210452245811/250000000000000000 | 0 |
| `a * a` | 6132305128743/5000000000 | 41364644689/1000000000000 | 253660622774986596195927/5000000000000000000000 |
| `a * b * c` | 7087967/2000 | 627891428604671/15625000000000000 | 4450473725532764093857/31250000000000000000 |
| `a * b` | 1760639040433849/625000000000 | 5483815829/62500000000 | 9655020239086512173595821/39062500000000000000000 |
| `a * c` | 3260903158503073/1250000000000 | 23287150117/250000000000 | 75937141369060505956809541/312500000000000000000000 |
| `a` | -972641243113507054467/1250000000000000000 | 203383/1000000 | 0 |
| `b * c` | 2110113017093/10000000000 | 3087236537/15625000000 | 6514418003568815126941/156250000000000000000 |
| `b` | 3571528011094681953482155759/6200000000000000000000000 | 26963/62500 | 96299109763145909511739365729917/387500000000000000000000000000 |
| `c` | 297637969072892888782148109644153/5556644600000000000000000000000 | 114499/250000 | 34079249820877162872667176406145874347/1389161150000000000000000000000000000 |
| `1` | -42911580048238880387924560921638441551321739/5556644600000000000000000000000000000 | 1 | -42911580048238880387924560921638441551321739/5556644600000000000000000000000000000 |
| `a * b * v` | -2030728011/2000000 | 2151339336427503/62500000000000000 | 0 |
| `a * v` | -1524606124177481/2000000000000 | 79788574581/1000000000000 | 0 |
| `b * v` | -135849787043903/250000000000 | 10577773641/62500000000 | 0 |
| `v` | 83625341320524831287008313/224058250000000000000000 | 392307/1000000 | 32806806777431134987712370248091/224058250000000000000000000000 |
| `a * b * e * u` | 31327/10 | 991711224229548864427/62500000000000000000000 | 31067337521439077275904629/625000000000000000000000 |
| `a * b * e` | -25608117973/10000000 | 2019321954160157/62500000000000000 | 0 |
| `a * b * u` | -155801933/312500 | 2693162275596019/62500000000000000 | 0 |
| `a * e * u` | -41965841883/10000000 | 36780448178227529/1000000000000000000 | 0 |
| `a * e` | 32629009781558817/10000000000000 | 74892332239/1000000000000 | 2443662641190083738083801263/10000000000000000000000000 |
| `a * u` | -127961998752093/312500000000 | 99883628513/1000000000000 | 0 |
| `b * e * u` | -1108933929/1250000 | 4876077274057069/62500000000000000 | 0 |
| `b * e` | -2589835669998811538983/6200000000000000000 | 9928666379/62500000000 | 0 |
| `b * u` | 508624434123581/625000000000 | 13241825893/62500000000 | 6735116201590107647682833/39062500000000000000000 |
| `e * u` | -817586772717451/625000000000 | 180843276863/1000000000000 | 0 |
| `e` | 7670755912672929765594544311278243/5556644600000000000000000000000 | 368233/1000000 | 2824625461991290946374175835374921254619/5556644600000000000000000000000000000 |
| `u` | 414438497690901168598730873/1120291250000000000000000 | 491111/1000000 | 203535305039476163811691317769903/1120291250000000000000000000000 |
| `a * a * b * u` | -36069500 | 547743423097545132277/62500000000000000000000 | 0 |
| `a * a * u` | -20918117/10000 | 20314632017859479/1000000000000000000 | 0 |
| `a * c * v` | -1624488611/2000000 | 9135712000949919/250000000000000000 | 0 |
| `c * v` | -762832827206569/500000000000 | 44918759193/250000000000 | 0 |
| `a * c * e * u` | 44327/10 | 4211324535958873842971/250000000000000000000000 | 186675382705449000837375517/2500000000000000000000000 |
| `a * c * e` | -52443214973/10000000 | 8575097149033261/250000000000000000 | 0 |
| `a * c * u` | -67424857/1250000 | 11436575581109987/250000000000000000 | 0 |
| `c * e * u` | 688806633/2500000 | 20706374357536637/250000000000000000 | 14262688002852349106113221/625000000000000000000000 |
| `c * e` | 5399878454844440116683351039/5556644600000000000000000 | 42162310267/250000000000 | 227671350817239833419505129499594817413/1389161150000000000000000000000000000 |
| `c * u` | -2838171817989387/1250000000000 | 56231718389/250000000000 | 0 |
| `a * a * c * u` | -2000 | 2326005051412892486021/250000000000000000000000 | 0 |
| `a * b * p * v` | -53673/10 | 82876045257196698069/12500000000000000000000 | 0 |
| `a * b * p` | -2946723/1000 | 211253037180567/12500000000000000 | 0 |
| `a * p * v` | -10354590883/10000000 | 3073695258583863/200000000000000000 | 0 |
| `a * p` | 4770363590097/2000000000 | 7834923309/200000000000 | 37375432884455906870973/400000000000000000000 |
| `b * p * v` | -366976027/625000 | 407487573972243/12500000000000000 | 0 |
| `b * p` | 68475779031847700292637/31000000000000000000 | 1038695649/12500000000 | 71125493742265638724618078636413/387500000000000000000000000000 |
| `p * v` | 386794748239837/312500000000 | 15112842561/200000000000 | 5845568133570288449302557/62500000000000000000000 |
| `p` | -66753366381414093742344360969/31000000000000000000000000 | 38523/200000 | 0 |
| `a * a * b * p` | 200 | 42965276460895258161/12500000000000000000000 | 42965276460895258161/62500000000000000000 |
| `a * a * p` | 1707957/1000 | 1593490207354347/200000000000000000 | 2721612754082308439079/200000000000000000000 |
| `a * b * q * u` | -46327/10 | 104378890315274908383/6250000000000000000000 | 0 |
| `a * b * q` | 9434900757/2500000 | 212536250084553/6250000000000000 | 2005258426812690413706621/15625000000000000000000 |
| `a * q * u` | -7825189117/10000000 | 3871189790278341/100000000000000000 | 0 |
| `a * q` | 1923935289400397/2500000000000 | 7882514931/100000000000 | 15165448644976435389827607/250000000000000000000000 |
| `b * q * u` | 656529777/625000 | 513213446135001/6250000000000000 | 336939909344413718424777/3906250000000000000000 |
| `b * q` | -19967416523039/312500000000 | 1045004991/6250000000 | 0 |
| `q * u` | -1858388400062223/1250000000000 | 19033989027/100000000000 | 0 |
| `q` | 1580353758953835275047/1250000000000000000 | 38757/100000 | 61249770635773793754996579/125000000000000000000000 |
| `a * c * p * v` | -19673/10 | 351935033412593729637/50000000000000000000000 | 0 |
| `a * c * p` | -18844489/5000 | 897090883957191/50000000000000000 | 0 |
| `c * p * v` | -1142292867/2500000 | 1730405360391939/50000000000000000 | 0 |
| `c * p` | 150599757861673099707363/31000000000000000000 | 4410844977/50000000000 | 664272185501577052660242258465651/1550000000000000000000000000000 |
| `a * a * c * p` | -2400 | 182453035251865377153/50000000000000000000000 | 0 |
| `a * c * q * u` | -13327/10 | 443247359797079766159/25000000000000000000000 | 0 |
| `a * c * q` | 839129007/2500000 | 902540077084569/25000000000000000 | 757347558661677839992983/62500000000000000000000 |
| `c * q * u` | 13862833617/2500000 | 2179372709602473/25000000000000000 | 30212281262649541410734841/62500000000000000000000 |
| `c * q` | -3782396127718669/1250000000000 | 4437637743/25000000000 | 0 |
| `a * b * p * w` | 2900 | 48216181953055431513/12500000000000000000000 | 1398269276638607513877/125000000000000000000 |
| `a * b * w` | -747611314317/10000 | 1251620640995131/62500000000000000 | 0 |
| `a * p * w` | 2779207/10000 | 1788235061122851/200000000000000000 | 4969875399518055359157/2000000000000000000000 |
| `a * w` | -4667926089931/10000000000 | 46419932537/1000000000000 | 0 |
| `b * p * w` | -1094077693873/10000 | 237070856232111/12500000000000000 | 0 |
| `b * w` | 8700283348763/10000000000 | 6154008157/62500000000 | 53541614696498777859791/625000000000000000000 |
| `p * w` | 18587416587781/10000000000 | 8792450997/200000000000 | 163428949508889391467657/2000000000000000000000 |
| `w` | 172357298096640862594431/689410000000000000000 | 228239/1000000 | 39338657360279213837690337009/689410000000000000000000000 |
| `a * b * q * r` | -800 | 71490180832190838951/6250000000000000000000 | 0 |
| `a * b * r` | -38740731/5000 | 1844574678953243/62500000000000000 | 0 |
| `a * q * r` | -1841371/1000 | 2651417899795677/100000000000000000 | 0 |
| `a * r` | 55492688582233/10000000000 | 68411329561/1000000000000 | 3796328606825083612289713/10000000000000000000000 |
| `b * q * r` | -15699531/10000 | 351505193807697/6250000000000000 | 0 |
| `b * r` | 186274523729/625000000 | 9069463421/62500000000 | 1689409979224362016909/39062500000000000000 |
| `q * r` | -5400251760137/5000000000 | 13036575819/100000000000 | 0 |
| `r` | 3357538411766157349349547/1792466000000000000000 | 336367/1000000 | 1129365122950547049128659075749/1792466000000000000000000000 |
| `a * a * b * r` | -96548400 | 375155131929547421069/62500000000000000000000 | 0 |
| `a * a * r` | -8507347/2500 | 13913701440104863/1000000000000000000 | 0 |
| `a * c * p * w` | 1300 | 204751126263505316649/50000000000000000000000 | 2661764641425569116437/500000000000000000000 |
| `a * c * w` | -48641413/10000 | 5315035855553963/250000000000000000 | 0 |
| `c * p * w` | -2359831/10000 | 1006726846705503/50000000000000000 | 0 |
| `c * w` | 2262601524181542759/1120291250000000 | 26133137261/250000000000 | 59128876198384067603687643099/280072812500000000000000000 |
| `a * c * q * r` | -1800 | 303584698108705220823/25000000000000000000000 | 0 |
| `a * c * r` | -759987/200 | 7833028823404939/250000000000000000 | 0 |
| `c * q * r` | 2044683/5000 | 1492674894699681/25000000000000000 | 3052046981719227846123/125000000000000000000 |
| `c * r` | 14947094146289/10000000000 | 38513685133/250000000000 | 575667677603481986421437/2500000000000000000000 |
| `a * b * c * w` | -230792700 | 143309311773301504369/15625000000000000000000 | 0 |
| `b * c * w` | 13468511/10000 | 704627779968343/15625000000000000 | 9490287005409207347273/156250000000000000000 |
| `a * b * e * r` | 4100 | 679233267754989529619/62500000000000000000000 | 27848563977954570714379/625000000000000000000 |
| `a * e * r` | -9286887/10000 | 25191309118235713/1000000000000000000 | 0 |
| `b * e * r` | 3957783/2000 | 3339675723905093/62500000000000000 | 13217711805584270688819/125000000000000000000 |
| `e * r` | -10179550558661666701/2240582500000000 | 123861429511/1000000000000 | 0 |
| `a * b * c * e` | -6000 | 231210344429383816343/15625000000000000000000 | 0 |
| `b * c * e` | -253791/10000 | 1136822371729121/15625000000000000 | 0 |
| `a * c * c * w` | 3000 | 608566290425073209537/62500000000000000000000 | 1825698871275219628611/62500000000000000000 |
| `a * c * c` | -27912841/10000 | 2666355401246383/62500000000000000 | 0 |
| `c * c * w` | -569743/2000 | 2992218083247239/62500000000000000 | 0 |
| `c * c` | 320918350609/2000000000 | 13110021001/62500000000 | 4207246316090271139609/125000000000000000000 |
| `a * c * e * r` | -700 | 2884379702728870902787/250000000000000000000000 | 0 |
| `c * e * r` | 10522651/5000 | 14182009817579989/250000000000000000 | 149232339788967888830839/1250000000000000000000 |
| `a * c * c * e` | 4000 | 981840048467159351239/62500000000000000000000 | 981840048467159351239/15625000000000000000 |
| `c * c * e` | -3533199/2000 | 4827542363261233/62500000000000000 | 0 |
| `a * b * c * q` | -9100 | 24335188098431233947/1562500000000000000000 | 0 |
| `b * c * q` | 2940303/2000 | 119652026464509/1562500000000000 | 351813212369675206227/3125000000000000000 |
| `a * c * c * q` | 1000 | 103339936286106065931/6250000000000000000000 | 103339936286106065931/6250000000000000000 |
| `c * c * q` | 8377809/10000 | 508105083935757/6250000000000000 | 4256807345142740416413/62500000000000000000 |
| `a * b * u * k` | 4500 | 1322673936277543639337/62500000000000000000000 | 11904065426497892754033/125000000000000000000 |
| `a * b * k` | -947483/400 | 2693228081385967/62500000000000000 | 0 |
| `a * u * k` | 11144997/5000 | 49055147286190099/1000000000000000000 | 546719469339146794784703/5000000000000000000000 |
| `a * k` | -1888332661251/10000000000 | 99886069109/1000000000000 | 0 |
| `b * u * k` | 14536563/10000 | 6503365258047839/62500000000000000 | 94536578785623668637357/625000000000000000000 |
| `b * k` | -9554974526722340301017/6200000000000000000 | 13242149449/62500000000 | 0 |
| `u * k` | 755750087118925599/1120291250000000 | 241195907653/1000000000000 | 182283828221483083604981709147/1120291250000000000000000000 |
| `k` | 8678491727872592423070571389361757/5556644600000000000000000000000 | 491123/1000000 | 4262206892867971208595688232457514183111/5556644600000000000000000000000000000 |
| `a * b * c * k` | -4000 | 308371922090611835533/15625000000000000000000 | 0 |
| `a * c * k` | 6595529/5000 | 11436855026911391/250000000000000000 | 75432108998789859770839/1250000000000000000000 |
| `b * c * k` | 3117917/10000 | 1516212869761051/15625000000000000 | 4727425882246766850767/156250000000000000000 |
| `c * k` | -12059551344853079698983/6200000000000000000 | 56233092377/250000000000 | 0 |
| `a * b * v * j` | -3000 | 811909011549730349691/62500000000000000000000 | 0 |
| `a * b * j` | 134731/1000 | 2069575642417113/62500000000000000 | 278835995878500051603/62500000000000000000 |
| `a * v * j` | 6496503/10000 | 30111968681145657/1000000000000000000 | 195622494872968804137471/10000000000000000000000 |
| `a * j` | 5210118847757/5000000000 | 76756134051/1000000000000 | 399908580700077952673607/5000000000000000000000 |
| `b * v * j` | 4348087/10000 | 3992020038792477/62500000000000000 | 17357650434413064941499/625000000000000000000 |
| `b * j` | -2541145607469/5000000000 | 10175755311/62500000000 | 0 |
| `v * j` | -2324989635058626047/8962330000000000 | 148055484879/1000000000000 | 0 |
| `j` | 2101689509690567752471773/4481165000000000000000 | 377397/1000000 | 793171315888691198079589714881/4481165000000000000000000000 |
| `a * b * c * v` | 4000 | 246326202681612665997/15625000000000000000000 | 246326202681612665997/3906250000000000000 |
| `b * c * v` | 11354859/10000 | 1211144504120859/15625000000000000 | 13752375072917272903881/156250000000000000000 |
| `a * c * u * k` | -1000 | 5616765309121480145401/250000000000000000000000 | 0 |
| `c * u * k` | 5734777/2000 | 27616690230360847/250000000000000000 | 158375559949198087076119/500000000000000000000 |
| `a * c * c * k` | 4000 | 1309508463726327358109/62500000000000000000000 | 1309508463726327358109/15625000000000000000 |
| `c * c * k` | 7730967/10000 | 6438632844074123/62500000000000000 | 49776858042653190466941/625000000000000000000 |
| `a * c * v * j` | 1000 | 3447790302022496580843/250000000000000000000000 | 3447790302022496580843/250000000000000000000 |
| `a * c * j` | -5449717/5000 | 8788500592705449/250000000000000000 | 0 |
| `c * v * j` | 16933623/5000 | 16952204963160621/250000000000000000 | 287062247864890844459883/1250000000000000000000 |
| `c * j` | -500829361171/10000000000 | 43211579103/250000000000 | 0 |
| `a * c * c * v` | -300 | 1046029888396764775581/62500000000000000000000 | 0 |
| `c * c * v` | 6584337/10000 | 5143153008839307/62500000000000000 | 33864252652761976134459/625000000000000000000 |
| `a * b * e * p` | 73673/10 | 77790339640111728111/12500000000000000000000 | 5731047692305951345121703/125000000000000000000000 |
| `a * e * p` | -4445835117/10000000 | 2885077314842997/200000000000000000 | 0 |
| `b * e * p` | 67822328352108731/31000000000000 | 382482014918217/12500000000000000 | 25940820804559463452352456652627/387500000000000000000000000000 |
| `e * p` | -6964984109692213947247/31000000000000000000 | 14185439859/200000000000 | 0 |
| `a * c * e * p` | -550677327/10 | 330338467472208313503/50000000000000000000000 | 0 |
| `c * e * p` | 101415760537891269/31000000000000 | 1624218678415641/50000000000000000 | 164721372551370873968652046938429/1550000000000000000000000000000 |
| `a * b * e * j` | 5100 | 762086047534180771329/62500000000000000000000 | 38866388424243219337779/625000000000000000000 |
| `a * e * j` | -1194993/500 | 28264141510001883/1000000000000000000 | 0 |
| `b * e * j` | -2551581/5000 | 3747048905435463/62500000000000000 | 0 |
| `e * j` | -170137436207794607/140036406250000 | 138970029501/1000000000000 | 0 |
| `a * c * e * j` | -500 | 3236215938753705601617/250000000000000000000000 | 0 |
| `c * e * j` | -20038441/10000 | 15911929407834999/250000000000000000 | 0 |
| `a * b * f * w` | 1200 | 118089155857249614719/15625000000000000000000 | 354267467571748844157/39062500000000000000 |
| `a * b * f` | 5923883/5000 | 517392539650321/15625000000000000 | 3064972869961362516443/78125000000000000000 |
| `a * f * w` | -11212343/5000 | 4379674214933413/250000000000000000 | 0 |
| `a * f` | -1021784058701/625000000 | 19188982667/250000000000 | 0 |
| `b * f * w` | -5795943/2000 | 580624515604793/15625000000000000 | 0 |
| `b * f` | 10513981073413/10000000000 | 2543932087/15625000000 | 26746853814766033302931/156250000000000000000 |
| `f * w` | -9919538724151/10000000000 | 21534121411/250000000000 | 0 |
| `f` | -10522605822866354296077803/8962330000000000000000 | 94349/250000 | 0 |
| `a * b * h * r` | 7200 | 375155131929547421069/62500000000000000000000 | 3376396187365926789621/78125000000000000000 |
| `a * b * h` | 16902871/10000 | 1115314914749507/62500000000000000 | 18852024128386914134597/625000000000000000000 |
| `a * h * r` | -50882481/10000 | 13913701440104863/1000000000000000000 | 0 |
| `a * h` | -4032372023249/5000000000 | 41364644689/1000000000000 | 0 |
| `b * h * r` | 4669021/10000 | 1844574678953243/62500000000000000 | 8612357912100949585103/625000000000000000000 |
| `b * h` | 9250138055972249806327/6200000000000000000 | 5483815829/62500000000 | 50726053491775911472678186950083/387500000000000000000000000000 |
| `h * r` | 25986654547827/10000000000 | 68411329561/1000000000000 | 1777781588459252333413947/10000000000000000000000 |
| `h` | -1350668750583750669391965499/6200000000000000000000000 | 203383/1000000 | 0 |
| `a * b * f * h` | -500 | 105228846891701235943/15625000000000000000000 | 0 |
| `a * f * h` | 21665497/10000 | 3902712861762461/250000000000000000 | 84554213798376013508117/2500000000000000000000 |
| `b * f * h` | -1268809/250 | 517392539650321/15625000000000000 | 0 |
| `f * h` | 3517385369229/5000000000 | 19188982667/250000000000 | 67495046883294676153743/1250000000000000000000 |
| `a * c * f * w` | -2000 | 501468317935660855087/62500000000000000000000 | 0 |
| `a * c * f` | 8818527/5000 | 2197119326388833/62500000000000000 | 19375356101981736308991/312500000000000000000 |
| `c * f * w` | 11567381/10000 | 2465635367438089/62500000000000000 | 28520943702231369374909/625000000000000000000 |
| `c * f` | 4019712885707/2500000000 | 10802866151/62500000000 | 43424420269742682003757/156250000000000000000 |
| `a * c * h * r` | -7200 | 1593104901190566708637/250000000000000000000000 | 0 |
| `a * c * h` | 151159/80 | 4736210452245811/250000000000000000 | 715920835751024544949/20000000000000000000 |
| `c * h * r` | -2722911/2000 | 7833028823404939/250000000000000000 | 0 |
| `c * h` | 7162586987521146033673/6200000000000000000 | 23287150117/250000000000 | 166796238404475733398022287889741/1550000000000000000000000000000 |
| `a * c * f * h` | 4300 | 446856719958940022039/62500000000000000000000 | 19214838958234420947677/625000000000000000000 |
| `c * f * h` | -5592391/2500 | 2197119326388833/62500000000000000 | 0 |
| `a * b * f * k` | -500 | 254103376250684600483/15625000000000000000000 | 0 |
| `a * f * k` | 6436601/10000 | 9424150734365041/250000000000000000 | 60659498040964757265641/2500000000000000000000 |
| `b * f * k` | 48481/10000 | 1249383558363701/15625000000000000 | 60571364293030588181/156250000000000000000 |
| `f * k` | 7647018060538901453/8962330000000000 | 46336963927/250000000000 | 354339600020308578807868885931/2240582500000000000000000000 |
| `a * c * f * k` | -3200 | 1079055834934062829459/62500000000000000000000 | 0 |
| `c * f * k` | -660019/250 | 5305536032677573/62500000000000000 | 0 |
| `a * b * u * w` | -30174300 | 614684664619759780541/62500000000000000000000 | 0 |
| `a * u * w` | -23660519/10000 | 22797339488178607/1000000000000000000 | 0 |
| `b * u * w` | 455251/250 | 3022301099992427/62500000000000000 | 1375905598072652384177/15625000000000000000 |
| `u * w` | -9518039154825873573/8962330000000000 | 112090683529/1000000000000 | 0 |
| `a * b * v * r` | 4900 | 723639558576109901601/62500000000000000000000 | 35458338370229385178449/625000000000000000000 |
| `a * v * r` | -12223313/10000 | 26838243466087227/1000000000000000000 | 0 |
| `b * v * r` | -2578241/2000 | 3558013986302247/62500000000000000 | 0 |
| `v * r` | -17057892308692929637/8962330000000000 | 131959128669/1000000000000 | 0 |
| `a * c * u * w` | 4900 | 2610272574056962322893/250000000000000000000000 | 127903356128791153821757/2500000000000000000000 |
| `c * u * w` | 16475907/10000 | 12834271173386971/250000000000000000 | 211456258265504609207697/2500000000000000000000 |
| `a * c * v * r` | 2800 | 3072952038623521404273/250000000000000000000000 | 21510664270364649829911/625000000000000000000 |
| `c * v * r` | -6084333/5000 | 15109188273471831/250000000000000000 | 0 |
| `a * b * p * k` | 2500 | 103751225379231606741/12500000000000000000000 | 103751225379231606741/5000000000000000000 |
| `a * p * k` | 6429669/10000 | 3847911040286007/200000000000000000 | 24740794330484690341683/2000000000000000000000 |
| `b * p * k` | -147834908012908731/31000000000000 | 510127323223827/12500000000000000 | 0 |
| `p * k` | 41473029594589183547247/31000000000000000000 | 18919531329/200000000000 | 784650282723374227006670968201263/6200000000000000000000000000000 |
| `a * b * q * j` | -4000 | 80210543173160048541/6250000000000000000000 | 0 |
| `a * q * j` | 277469/250 | 2974837487414607/100000000000000000 | 825425182795443589683/25000000000000000000 |
| `b * q * j` | 10632291/10000 | 394381748588427/6250000000000000 | 4193181516080995096257/62500000000000000000 |
| `q * j` | -1816262275743/10000000000 | 14626775529/100000000000 | 0 |
| `a * c * p * k` | -300 | 440581966201707515493/50000000000000000000000 | 0 |
| `c * p * k` | -16998840687091269/31000000000000 | 2166267417639171/50000000000000000 | 0 |
| `a * c * q * j` | 1800 | 340615917471485086893/25000000000000000000000 | 3065543257243365782037/125000000000000000000 |
| `c * q * j` | 15348777/10000 | 1674751171294971/25000000000000000 | 25705382258695311100467/250000000000000000000 |
| `a * b * e * f` | -4300 | 190521007053056652793/15625000000000000000000 | 0 |
| `a * e * f` | -6472419/5000 | 7066016654417411/250000000000000000 | 0 |
| `b * e * f` | 13845107/10000 | 936759744192271/15625000000000000 | 12969538891634620567997/156250000000000000000 |
| `e * f` | 12889261688869317/560145625000000 | 34742415317/250000000000 | 447804082724194647352128489/140036406250000000000000000 |
| `a * c * e * f` | 4700 | 809051840914139142089/62500000000000000000000 | 38025436522964539678183/625000000000000000000 |
| `c * e * f` | -3786821/10000 | 3977971811381183/62500000000000000 | 0 |
| `b * c * q * w` | -3300 | 27309258868233069651/1562500000000000000000 | 0 |
| `b * q * w` | -260047/5000 | 238510894140849/6250000000000000 | 0 |
| `c * q * w` | -5245873/2000 | 1012842000824577/25000000000000000 | 0 |
| `q * w` | 1849896865769/1250000000 | 8845858923/100000000000 | 16363926696692441906787/125000000000000000000 |
| `a * a * p * r` | 8400 | 535997520577159637349/200000000000000000000000 | 11255947932120352384329/500000000000000000000 |
| `a * p * r` | -31143807/10000 | 2635409648678403/200000000000000000 | 0 |
| `p * r` | 1818049160377/10000000000 | 12957865941/200000000000 | 23558037294312775019757/2000000000000000000000 |
| `b * e * q * r` | 1200 | 129435812031389689401/6250000000000000000000 | 388307436094169068203/15625000000000000000 |
| `b * e * q` | -19749267/10000 | 384805322850903/6250000000000000 | 0 |
| `e * q * r` | -4759829/10000 | 4800497423557827/100000000000000000 | 0 |
| `e * q` | 6570698469831/10000000000 | 14271606381/100000000000 | 93774422209667035591611/1000000000000000000000 |
| `a * e * p * r` | -22483600 | 970444801161794371899/200000000000000000000000 | 0 |
| `e * p * r` | 8360233/5000 | 4771513849052253/200000000000000000 | 39890967540803664254949/1000000000000000000000 |
| `b * p * q * w` | 200 | 9188155174987926027/1250000000000000000000 | 9188155174987926027/6250000000000000000 |
| `b * p * q` | -12872981/10000 | 40256727268293/1250000000000000 | 0 |
| `p * q * w` | 7419243/5000 | 340769023290729/20000000000000000 | 2528248190666578098147/100000000000000000000 |
| `p * q` | -3927242228783/10000000000 | 1493035911/20000000000 | 0 |
| `a * b * p * q` | 500 | 8187533962007235219/1250000000000000000000 | 8187533962007235219/2500000000000000000 |
| `a * p * q` | 4701163/10000 | 303658122686913/20000000000000000 | 1427546331025175979819/200000000000000000000 |
| `b * q * q * r` | -200 | 13623286796404912629/625000000000000000000 | 0 |
| `b * q * q` | -3204069/2500 | 40501258436187/625000000000000 | 0 |
| `q * q * r` | -16397493/5000 | 505258569016983/10000000000000000 | 0 |
| `q * q` | 614079635703/10000000000 | 1502105049/10000000000 | 922412121277556964447/100000000000000000000 |
| `a * p * p * w` | -2000 | 68888179259635589073/40000000000000000000000 | 0 |
| `a * p * p` | -4604261/5000 | 301824750632607/40000000000000000 | 0 |
| `p * p * w` | -5677273/2500 | 338711589757431/40000000000000000 | 0 |
| `p * p` | 969914945099/1000000000 | 1484021529/40000000000 | 1439374659825769036371/40000000000000000000 |
| `a * a * p * p` | -3200 | 61386023257911509481/40000000000000000000000 | 0 |
| `a * p * q * r` | 2000 | 102140571753828865071/20000000000000000000000 | 102140571753828865071/10000000000000000000 |
| `p * q * r` | 9456123/2500 | 502208010275337/20000000000000000 | 4748940716748850538451/50000000000000000000 |
| `b * c * h * q` | -500 | 24335188098431233947/1562500000000000000000 | 0 |
| `b * c * h` | 20031227/10000 | 627891428604671/15625000000000000 | 12577435737734458061317/156250000000000000000 |
| `b * h * q` | -537039493/2500000 | 212536250084553/6250000000000000 | 0 |
| `c * h * q` | 5178483979/2500000 | 902540077084569/25000000000000000 | 4673789329587865594620051/62500000000000000000000 |
| `h * q` | -515924371643143/500000000000 | 7882514931/100000000000 | 0 |
| `a * b * c * h` | 4300 | 127702442423903801993/15625000000000000000000 | 5491205024227863485699/156250000000000000000 |
| `a * c * h * p` | -338549600 | 182453035251865377153/50000000000000000000000 | 0 |
| `a * h * p` | -2322019/5000 | 1593490207354347/200000000000000000 | 0 |
| `c * h * p` | -70792274097147061/31000000000000 | 897090883957191/50000000000000000 | 0 |
| `h * p` | 38143530866381163428543/31000000000000000000 | 7834923309/200000000000 | 298851639072570741824829906608787/6200000000000000000000000000000 |
| `a * b * h * p` | -2900 | 42965276460895258161/12500000000000000000000 | 0 |
| `b * h * p` | -124444117002852939/31000000000000 | 211253037180567/12500000000000000 | 0 |
| `b * c * q * q` | 2700 | 4637353589684975313/156250000000000000000 | 125208546921494333451/1562500000000000000 |
| `c * q * q` | 5458367/2000 | 171989526005451/2500000000000000 | 938781953093795558517/5000000000000000000 |
| `b * b * q * q` | -2700 | 1092035431214910081/39062500000000000000 | 0 |
| `b * b * q` | -21105421/10000 | 28176469572333/390625000000000 | 0 |
| `b * b` | -23241425609/125000000 | 727003369/3906250000 | 0 |
| `a * b * b * q` | -13627300 | 5730614911029802539/390625000000000000000 | 0 |
| `a * b * b` | -7116598627/2000 | 147860126197327/3906250000000000 | 0 |
| `a * c * p * q` | -102107700 | 34768551389528851587/5000000000000000000000 | 0 |
| `c * p * q` | -1678137/5000 | 170951118773589/5000000000000000 | 0 |
| `b * h * q * r` | -500 | 71490180832190838951/6250000000000000000000 | 0 |
| `h * q * r` | 5068623/5000 | 2651417899795677/100000000000000000 | 13439037749516063742771/500000000000000000000 |
| `a * h * p * r` | -58370100 | 535997520577159637349/200000000000000000000000 | 0 |
| `h * p * r` | -18944819/5000 | 2635409648678403/200000000000000000 | 0 |
| `b * f * q * w` | 800 | 22503264351294962301/1562500000000000000000 | 22503264351294962301/1953125000000000000 |
| `b * f * q` | -729229/1000 | 98595175895859/1562500000000000 | 0 |
| `f * q * w` | -7818527/2000 | 834597943526127/25000000000000000 | 0 |
| `f * q` | 8867071310997/5000000000 | 3656684193/25000000000 | 32424079501126516970421/125000000000000000000 |
| `b * e * f * q` | -2000 | 36305997405659847147/1562500000000000000000 | 0 |
| `e * f * q` | 2081117/1250 | 1346511790440969/25000000000000000 | 2802248577787138082373/31250000000000000000 |
| `a * f * p * w` | 4200 | 168718189781879868999/50000000000000000000000 | 3543081985419477248979/250000000000000000000 |
| `a * f * p` | -24098609/10000 | 739217179280841/50000000000000000 | 0 |
| `f * p * w` | 21698429/10000 | 829558959115953/50000000000000000 | 18000126175691408937837/500000000000000000000 |
| `f * p` | 391582456923/2000000000 | 3634606527/50000000000 | 1423248153791032136421/100000000000000000000 |
| `a * e * f * p` | -4300 | 272204159578121923953/50000000000000000000000 | 0 |
| `e * f * p` | -5054927/5000 | 1338382065256791/50000000000000000 | 0 |
| `b * q * k` | -1187661/5000 | 513225986194893/6250000000000000 | 0 |
| `q * k` | -1479516355209/1000000000 | 19034454111/100000000000 | 0 |
| `b * h * q * j` | 800 | 80210543173160048541/6250000000000000000000 | 80210543173160048541/7812500000000000000 |
| `b * h * j` | 1121731/1000 | 2069575642417113/62500000000000000 | 2321507154944190582603/62500000000000000000 |
| `h * q * j` | 6543979/2000 | 2974837487414607/100000000000000000 | 19467274046053952501253/200000000000000000000 |
| `h * j` | -190999668743/156250000 | 76756134051/1000000000000 | 0 |
| `a * b * h * j` | -4100 | 420916502881719693279/62500000000000000000000 | 0 |
| `a * h * j` | -5901737/10000 | 15610892811694533/1000000000000000000 | 0 |
| `a * h * p * j` | -109305400 | 601378423784908494759/200000000000000000000000 | 0 |
| `a * p * j` | -2163107/1250 | 2956876552046673/200000000000000000 | 0 |
| `h * p * j` | 19414591/10000 | 2956876552046673/200000000000000000 | 57406548895476369205743/2000000000000000000000 |
| `p * j` | 488951563731/10000000000 | 14538464631/200000000000 | 7108605015575285898261/2000000000000000000000 |
| `a * e * p * j` | 5100 | 1088819523389802538809/200000000000000000000000 | 55529795692879929479259/2000000000000000000000 |
| `e * p * j` | 21932659/10000 | 5353542446467023/200000000000000000 | 117417420920386970204157/2000000000000000000000 |
| `b * f * h * q` | 500 | 20052582659227490997/1562500000000000000000 | 20052582659227490997/3125000000000000000 |
| `f * h * q` | -16886/625 | 743707401224919/25000000000000000 | 0 |
| `a * f * h * p` | -1700 | 150344207573675285103/50000000000000000000000 | 0 |
| `f * h * p` | 26508173/10000 | 739217179280841/50000000000000000 | 19595296872948548813493/500000000000000000000 |
| `b * q * u * w` | -2900 | 117135323732406493239/6250000000000000000000 | 0 |
| `q * u * w` | -1315959/1250 | 4344298621533453/100000000000000000 | 0 |
| `b * h * q * u` | -327/10 | 104378890315274908383/6250000000000000000000 | 0 |
| `b * h * u` | 2053078643/1250000 | 2693162275596019/62500000000000000 | 5529273950159466704722217/78125000000000000000000 |
| `h * q * u` | 765787023/2000000 | 3871189790278341/100000000000000000 | 2964506904965245095768843/200000000000000000000000 |
| `h * u` | -54572746167291/125000000000 | 99883628513/1000000000000 | 0 |
| `b * q * v * r` | 1800 | 137897948067116186979/6250000000000000000000 | 1241081532604045682811/31250000000000000000 |
| `b * q * v` | 1547081/500 | 409962773004237/6250000000000000 | 634245616822167982197/3125000000000000000 |
| `q * v * r` | -1794089/5000 | 5114339949824433/100000000000000000 | 0 |
| `q * v` | 978508191409/2000000000 | 15204642399/100000000000 | 14877867134866088950191/200000000000000000000 |
| `a * b * h * u` | 900 | 547743423097545132277/62500000000000000000000 | 4929690807877906190493/625000000000000000000 |
| `a * h * u` | -11939921/5000 | 20314632017859479/1000000000000000000 | 0 |
| `a * p * u * w` | -800 | 878221909103104477461/200000000000000000000000 | 0 |
| `a * p * u` | 32534877/10000 | 3847817021206299/200000000000000000 | 125188253503453329590223/2000000000000000000000 |
| `p * u * w` | -616817/500 | 4318069401587667/200000000000000000 | 0 |
| `p * u` | -109881421411/2500000000 | 18919069053/200000000000 | 0 |
| `a * h * p * u` | 4000 | 782580569224000709517/200000000000000000000000 | 782580569224000709517/50000000000000000000 |
| `h * p * u` | -10378047/10000 | 3847817021206299/200000000000000000 | 0 |
| `a * p * v * r` | 3000 | 1033889653044078245721/200000000000000000000000 | 3101668959132234737163/200000000000000000000 |
| `p * v * r` | -488919/250 | 5083461513715887/200000000000000000 | 0 |
| `b * v * k` | 6513621/5000 | 5194987923888843/62500000000000000 | 33838182435788769430503/312500000000000000000 |
| `v * k` | 125715608559/1250000000 | 192670990761/1000000000000 | 24221750855184581523399/1250000000000000000000 |
| `b * e * u * k` | 100 | 2394753699066729898487/62500000000000000000000 | 2394753699066729898487/625000000000000000000 |
| `b * e * k` | 1220417/1250 | 4876196418053617/62500000000000000 | 5950993003931741098289/78125000000000000000 |
| `e * u * k` | -12880807/5000 | 88816292662787149/1000000000000000000 | 0 |
| `e * k` | -199413401297/250000000 | 180847695659/1000000000000 | 0 |
| `a * a * j` | -3409477/2500 | 15610892811694533/1000000000000000000 | 0 |
| `a * e * u * j` | 800 | 13880830801118534762013/1000000000000000000000000 | 13880830801118534762013/1250000000000000000000 |
| `a * u * j` | -10818401/10000 | 37695781749920661/1000000000000000000 | 0 |
| `e * u * j` | 334896/625 | 68249710158265611/1000000000000000000 | 1428534683322657503841/39062500000000000000 |
| `u * j` | -2254696401219/10000000000 | 185343818067/1000000000000 | 0 |
| `a * a * u * j` | 4700 | 7666681179644113796163/1000000000000000000000000 | 360334015443273348419661/10000000000000000000000 |
| `a * f * f * k` | -7578900 | 889159197636607253309/62500000000000000000000 | 0 |
| `a * f * f` | 17490503/10000 | 1810461325648783/62500000000000000 | 31665879247644016007849/625000000000000000000 |
| `f * f * k` | -2585593/2000 | 4371846209548523/62500000000000000 | 0 |
| `f * f` | 12725649842217/10000000000 | 8901733801/62500000000 | 113280347340153385676817/625000000000000000000 |
| `a * e * f * f` | -1100 | 666671605327628310439/62500000000000000000000 | 0 |
| `e * f * f` | -1450643/5000 | 3277912142743633/62500000000000000 | 0 |
| `a * f * j` | 1054331/1250 | 7241864491577799/250000000000000000 | 7635322231269712397469/312500000000000000000 |
| `f * j` | -14491375187131/10000000000 | 35607029553/250000000000 | 0 |
| `a * e * f * j` | 2300 | 2666693487327167659167/250000000000000000000000 | 61333950208524856160841/2500000000000000000000 |
| `e * f * j` | 10578701/10000 | 13111683313389849/250000000000000000 | 138704577379040509006149/2500000000000000000000 |
| `c * h * r * k` | -2300 | 3846980614837103856497/250000000000000000000000 | 0 |
| `c * h * k` | -6989564615506799/6200000000000 | 11436855026911391/250000000000000000 | 0 |
| `c * r * k` | 28875297/10000 | 18914956583574359/250000000000000000 | 546174989092814937709623/2500000000000000000000 |
| `h * r * k` | 75415859/10000 | 33598377407987003/1000000000000000000 | 2533850493229533292080577/10000000000000000000000 |
| `h * k` | -7152313967354013073363/6200000000000000000 | 99886069109/1000000000000 | 0 |
| `r * k` | -23864501396452011469/8962330000000000 | 165197570141/1000000000000 | 0 |
| `c * h * v * r` | 2000 | 3072952038623521404273/250000000000000000000000 | 3072952038623521404273/125000000000000000000 |
| `c * h * v` | 2381447233/2000000 | 9135712000949919/250000000000000000 | 21756216066147077974124127/500000000000000000000000 |
| `h * v * r` | 149697/500 | 26838243466087227/1000000000000000000 | 4017604532142859620219/500000000000000000000 |
| `h * v` | -412837537149501/400000000000 | 79788574581/1000000000000 | 0 |
| `c * h * u * k` | -3300 | 5616765309121480145401/250000000000000000000000 | 0 |
| `c * h * u` | 180776821/1250000 | 11436575581109987/250000000000000000 | 2067467776679291101211327/312500000000000000000000 |
| `h * u * k` | 2357329/5000 | 49055147286190099/1000000000000000000 | 115639121297007219885571/5000000000000000000000 |
| `c * h * w * j` | -2400 | 2005878586778498974311/250000000000000000000000 | 0 |
| `c * h * w` | 32844281/10000 | 5315035855553963/250000000000000000 | 174568531164889771435603/2500000000000000000000 |
| `c * h * j` | 9342539/10000 | 8788500592705449/250000000000000000 | 82106909538873772795011/2500000000000000000000 |
| `c * w * j` | -7822007/10000 | 9862567602889617/250000000000000000 | 0 |
| `h * w * j` | 7174787/10000 | 17518743279666189/1000000000000000000 | 125693251539286337176743/10000000000000000000000 |
| `h * w` | -519306549119/2500000000 | 46419932537/1000000000000 | 0 |
| `w * j` | -6393616751163291047/8962330000000000 | 86136713883/1000000000000 | 0 |
| `c * h * u * w` | 4200 | 2610272574056962322893/250000000000000000000000 | 54815724055196208780753/1250000000000000000000 |
| `h * u * w` | -2680457/1000 | 22797339488178607/1000000000000000000 | 0 |
| `c * h * v * j` | -2700 | 3447790302022496580843/250000000000000000000000 | 0 |
| `h * v * j` | 1747896/625 | 30111968681145657/1000000000000000000 | 6579073701237471160959/78125000000000000000 |
| `a * c * r * k` | -4100 | 3846980614837103856497/250000000000000000000000 | 0 |
| `a * r * k` | -4225497/1000 | 33598377407987003/1000000000000000000 | 0 |
| `a * c * w * j` | 4100 | 2005878586778498974311/250000000000000000000000 | 82241022057918457946751/2500000000000000000000 |
| `a * w * j` | -21422203/5000 | 17518743279666189/1000000000000000000 | 0 |
| `f * v` | 11222181977831/10000000000 | 37013773143/250000000000 | 415375297896899689192833/2500000000000000000000 |
| `c * f * h * v` | -1700 | 861945291577623907731/62500000000000000000000 | 0 |
| `c * f * v` | 669036/625 | 4238040011100357/62500000000000000 | 708850334216634611463/9765625000000000000 |
| `f * h * v` | 10091751/10000 | 7527972223142769/250000000000000000 | 75970421210873262198519/2500000000000000000000 |
| `c * c * h * v` | -500 | 1046029888396764775581/62500000000000000000000 | 0 |
| `c * c * h` | -20224591/10000 | 2666355401246383/62500000000000000 | 0 |
| `a * c * f * v` | -1800 | 861945291577623907731/62500000000000000000000 | 0 |
| `a * f * v` | -107807/200 | 7527972223142769/250000000000000000 | 0 |
| `c * p * q * v` | 4200 | 67065320552710379823/5000000000000000000000 | 1408371731606917976283/25000000000000000000 |
| `c * q * v` | 2385463/5000 | 1740916350043101/25000000000000000 | 4152891539122865840763/125000000000000000000 |
| `p * q * v` | -814208/625 | 585728439136677/20000000000000000 | 0 |
| `c * e * p * q` | 2000 | 62949843319354998237/5000000000000000000000 | 62949843319354998237/2500000000000000000 |
| `c * e * q` | -2436721/1000 | 1634084659018119/25000000000000000 | 0 |
| `e * p * q` | -13055217/2500 | 549785092615263/20000000000000000 | 0 |
| `c * q * q * u` | -4200 | 84465948106063046061/2500000000000000000000 | 0 |
| `q * q * u` | 814208/625 | 737700312719439/10000000000000000 | 4692511689208351479/48828125000000000 |
| `c * e * q * u` | -700 | 802516950975047440209/25000000000000000000000 | 0 |
| `e * q * u` | 905287/1250 | 7008942881379291/100000000000000000 | 6345104874255214211517/125000000000000000000 |
| `a * e * p * p` | -1000 | 111141833399696773431/40000000000000000000000 | 0 |
| `e * p * p` | 20856381/10000 | 546465699688257/40000000000000000 | 11397296836129869217917/400000000000000000000 |
| `a * p * q * u` | -34060000 | 149129844290892530343/20000000000000000000000 | 0 |
| `p * q * u` | 5169733/10000 | 733246359287121/20000000000000000 | 3790687900736485908693/200000000000000000000 |
| `a * e * p * u` | -500 | 1416893205169859099667/200000000000000000000000 | 0 |
| `e * p * u` | 11422041/10000 | 6966625554593349/200000000000000000 | 79573082716212970605309/2000000000000000000000 |
| `c * q * r * k` | -1100 | 733086972309591431763/25000000000000000000000 | 0 |
| `c * q * k` | 14339039/5000 | 2179425961255389/25000000000000000 | 31250873856053511831171/125000000000000000000 |
| `q * r * k` | 1422649/1250 | 6402562225954737/100000000000000000 | 9108598748192280638313/125000000000000000000 |
| `c * q * q * r` | 2600 | 57851600893875536517/2500000000000000000000 | 752070811620381974721/12500000000000000000 |
| `c * p * q * k` | 2700 | 83958026305441350447/5000000000000000000000 | 2266866710246916462069/50000000000000000000 |
| `p * q * k` | 249007/2500 | 733264275718053/20000000000000000 | 182587937503725223371/50000000000000000000 |
| `c * q * w * j` | 2700 | 382243532585192886069/25000000000000000000000 | 10320575379800207923863/250000000000000000000 |
| `q * w * j` | -2628347/5000 | 3338400619963431/100000000000000000 | 0 |
| `c * p * q * w` | -2600 | 39017712397765179771/5000000000000000000000 | 0 |
| `c * q * q * j` | -2700 | 64908331145879191047/2500000000000000000000 | 0 |
| `q * q * j` | -249007/2500 | 566889939177453/10000000000000000 | 0 |
| `a * p * r * k` | -4400 | 1294310292887883316569/200000000000000000000000 | 0 |
| `p * r * k` | -1622043/2500 | 6363905994541743/200000000000000000 | 0 |
| `a * p * p * k` | 3400 | 148233077004937847661/40000000000000000000000 | 2519962309083943410237/200000000000000000000 |
| `p * p * k` | -10906587/10000 | 728837105387067/40000000000000000 | 0 |
| `a * p * w * j` | -1200 | 674874547362580598847/200000000000000000000000 | 0 |
| `p * w * j` | 14416157/5000 | 3318244628914809/200000000000000000 | 47836335534842626169013/1000000000000000000000 |
| `a * p * q * j` | -67253400 | 114599664527672905461/20000000000000000000000 | 0 |
| `p * q * j` | -17451113/10000 | 563467273703667/20000000000000000 | 0 |
| `c * q * v * r` | -400 | 585586809914947754067/25000000000000000000000 | 0 |
| `c * q * u * k` | -3300 | 1070340063258095347179/25000000000000000000000 | 0 |
| `q * u * k` | -913336/625 | 9348029792907321/100000000000000000 | 0 |
| `c * q * u * w` | -2200 | 497417847866958835047/25000000000000000000000 | 0 |
| `c * q * v * j` | -100 | 657016607757216188097/25000000000000000000000 | 0 |
| `q * v * j` | -12881291/10000 | 5738186427455403/100000000000000000 | 0 |
| `a * p * u * k` | -5200 | 1889751438905901183777/200000000000000000000000 | 0 |
| `p * u * k` | -7262447/10000 | 9291589950516519/200000000000000000 | 0 |
| `a * p * v * j` | 2100 | 1160003369503774144611/200000000000000000000000 | 24360070759579257036831/2000000000000000000000 |
| `p * v * j` | 425099/2000 | 5703541443993717/200000000000000000 | 2424569764300285102983/400000000000000000000 |
| `c * p * v * w` | 2600 | 394945989050495765421/50000000000000000000000 | 5134297857656444950473/250000000000000000000 |
| `c * v * w` | 3617759/2000 | 10252212679451127/250000000000000000 | 37090034690998429764393/500000000000000000000 |
| `p * v * w` | -770339/200 | 3449340073280079/200000000000000000 | 0 |
| `v * w` | -217575773329/500000000 | 89539757373/1000000000000 | 0 |
| `c * e * p * w` | 1800 | 370710046942907486199/50000000000000000000000 | 3336390422486167375791/250000000000000000000 |
| `c * e * w` | -4163131/10000 | 9623083533029813/250000000000000000 | 0 |
| `e * p * w` | -3790583/5000 | 3237670607978301/200000000000000000 | 0 |
| `e * w` | -27478514488443/10000000000 | 84045131687/1000000000000 | 0 |
| `c * e * u * w` | -4400 | 4726002176989804492243/250000000000000000000000 | 0 |
| `e * u * w` | 23744991/5000 | 41275488667934257/1000000000000000000 | 980086106940700921056687/5000000000000000000000 |
| `a * q * u * r` | -2200 | 1302140496186554727147/100000000000000000000000 | 0 |
| `a * u * r` | -247579/250 | 33597556472032271/1000000000000000000 | 0 |
| `q * u * r` | -52459/25 | 6402405787044909/100000000000000000 | 0 |
| `u * r` | 8029127364319/10000000000 | 165193533737/1000000000000 | 1326359922136300616530103/10000000000000000000000 |
| `a * e * u * r` | 2500 | 12371729012365859247143/1000000000000000000000000 | 12371729012365859247143/400000000000000000000 |
| `e * u * r` | 736599/500 | 60829710508576721/1000000000000000000 | 44807103930907104111879/500000000000000000000 |
| `c * f * v * w` | -5600 | 967286014093534381323/62500000000000000000000 | 0 |
| `f * v * w` | 17726459/10000 | 8447986568385177/250000000000000000 | 149752887537030536298243/2500000000000000000000 |
| `a * f * v * r` | 7100 | 2532161432781863780223/250000000000000000000000 | 179783461727512328395833/2500000000000000000000 |
| `a * f * r` | -37989311/10000 | 6454540532750789/250000000000000000 | 0 |
| `f * v * r` | -15173051/10000 | 12450211830791481/250000000000000000 | 0 |
| `f * r` | -2131004284923/10000000000 | 31735890083/250000000000 | 0 |
| `c * p * v * k` | 3400 | 849841871811770257497/50000000000000000000000 | 14447311820800094377449/250000000000000000000 |
| `c * v * k` | 15072373/10000 | 22060635771143739/250000000000000000 | 332506130959821070822647/2500000000000000000000 |
| `p * v * k` | -39778733/10000 | 7422264577086003/200000000000000000 | 0 |
| `c * h * p * k` | -98000147357/31000000 | 440581966201707515493/50000000000000000000000 | 0 |
| `h * p * k` | -24793609977289609/31000000000000 | 3847911040286007/200000000000000000 | 0 |
| `a * c * h * u` | 4400 | 2326005051412892486021/250000000000000000000000 | 25586055565541817346231/625000000000000000000 |
| `a * q * u * j` | 3100 | 1460975413281675058377/100000000000000000000000 | 45290237811731926809687/1000000000000000000000 |
| `q * u * j` | 642119/1250 | 7183370356822719/100000000000000000 | 4612578590152647501561/125000000000000000000 |
| `a * h * u * j` | 2900 | 7666681179644113796163/1000000000000000000000000 | 222333754209679300088727/10000000000000000000000 |
| `h * u * j` | 5985937/5000 | 37695781749920661/1000000000000000000 | 225644574720774831744357/5000000000000000000000 |
| `c * c * v * k` | -900 | 2525920735160186971761/62500000000000000000000 | 0 |
| `c * c * e * k` | -200 | 2370917088071946534659/62500000000000000000000 | 0 |
| `c * e * k` | 1532889/2000 | 20706880305259841/250000000000000000 | 31741349044249452410649/500000000000000000000 |
| `c * f * v * k` | 100 | 2081398924371640630911/62500000000000000000000 | 2081398924371640630911/625000000000000000000 |
| `f * v * k` | -575093/1000 | 18178315307309589/250000000000000000 | 0 |
| `a * f * v * j` | -3100 | 2841034133097411592293/250000000000000000000000 | 0 |
| `f * v * j` | -47151/2500 | 13968886942848771/250000000000000000 | 0 |
| `c * e * f * v` | 4100 | 1560586187407517759181/62500000000000000000000 | 63984033683708228126421/625000000000000000000 |
| `c * e * v` | 2070323/10000 | 16540569453915969/250000000000000000 | 34244321373539670687987/2500000000000000000000 |
| `e * f * v` | -1336287/1000 | 13629692725766319/250000000000000000 | 0 |
| `e * v` | 5681784180897/10000000000 | 144460383531/1000000000000 | 820792721912749303607307/10000000000000000000000 |
| `e * f * h * u` | -3700 | 3470198505167589133621/250000000000000000000000 | 0 |
| `e * f * h` | 10546329/5000 | 7066016654417411/250000000000000000 | 74520536356965319734219/1250000000000000000000 |
| `e * f * u` | 3336627/1250 | 17062382328747187/250000000000000000 | 56930805562420740318249/312500000000000000000 |
| `e * h * u` | 6258888577/2000000 | 36780448178227529/1000000000000000000 | 230204726959648741365036233/2000000000000000000000000 |
| `e * h` | -6215856889019488226637/6200000000000000000 | 74892332239/1000000000000 | 0 |
| `f * h * u` | -712081/2500 | 9423920466573037/250000000000000000 | 0 |
| `f * u` | 1491579442311/1250000000 | 46335831739/250000000000 | 69113574064273953308829/312500000000000000000 |
| `c * e * f * h` | 1700 | 809051840914139142089/62500000000000000000000 | 13753881295540365415513/625000000000000000000 |
| `c * e * h` | -7465310114713201/6200000000000 | 8575097149033261/250000000000000000 | 0 |
| `a * f * h * u` | 1000 | 1916665216253023984171/250000000000000000000000 | 1916665216253023984171/250000000000000000000 |
| `a * f * u` | 3995961/2500 | 9423920466573037/250000000000000000 | 37657618651527659503557/625000000000000000000 |
| `e * f * r * k` | -3700 | 5739362591197860249697/250000000000000000000000 | 0 |
| `e * f * r` | 5623241/5000 | 11686202012933339/250000000000000000 | 65714330293409282131699/1250000000000000000000 |
| `e * f * k` | 1118823/2000 | 17062799237730991/250000000000000000 | 19090252231555900543593/500000000000000000000 |
| `e * r * k` | 10696837/5000 | 60831196845730853/1000000000000000000 | 650701397173697080411961/5000000000000000000000 |
| `f * r * k` | 10711067/10000 | 15586225545233209/250000000000000000 | 166945106092104432224003/2500000000000000000000 |
| `e * f * q * r` | -2400 | 452922131415257419623/25000000000000000000000 | 0 |
| `f * q * r` | 522721/1250 | 1229987891946831/25000000000000000 | 642940500866339447151/31250000000000000000 |
| `e * f * p * k` | 4800 | 657310215035110966293/50000000000000000000000 | 1971930645105332898879/31250000000000000000 |
| `e * p * k` | 2644047/2500 | 6966795779871657/200000000000000000 | 18420535481382315075879/500000000000000000000 |
| `f * p * k` | 301341/1000 | 1785038861359821/50000000000000000 | 537905395521029819961/50000000000000000000 |
| `e * f * w * j` | -4600 | 2992597487764785745911/250000000000000000000000 | 0 |
| `e * f * w` | 2754311/2000 | 7929574129536763/250000000000000000 | 21840513250298531235293/500000000000000000000 |
| `e * w * j` | 11742701/5000 | 31718380563278739/1000000000000000000 | 372459459158793811734039/5000000000000000000000 |
| `f * w * j` | 28446839/10000 | 8126912818147167/250000000000000000 | 231184980504868737955113/2500000000000000000000 |
| `e * f * p * w` | -3500 | 305470984192144721049/50000000000000000000000 | 0 |
| `a * f * r * k` | 4500 | 3169973310066165746047/250000000000000000000000 | 28529759790595491714423/500000000000000000000 |
| `a * f * q * r` | 3500 | 250158627427822329273/25000000000000000000000 | 1751110391994756304911/50000000000000000000 |
| `a * f * q` | 1394459/10000 | 743707401224919/25000000000000000 | 1037069479004699323821/250000000000000000000 |
| `a * f * p * k` | 2500 | 363046558739944474443/50000000000000000000000 | 363046558739944474443/20000000000000000000 |
| `a * f * w * j` | 2300 | 1652875909693225265961/250000000000000000000000 | 38016145922944181117103/2500000000000000000000 |
| `a * f * q * j` | -5300 | 280672942100080755843/25000000000000000000000 | 0 |
| `f * q * j` | -3146801/10000 | 1380021644385621/25000000000000000 | 0 |
| `e * f * v * r` | -1900 | 4584578853087839423073/250000000000000000000000 | 0 |
| `e * v * r` | -11480059/10000 | 48591705827171877/1000000000000000000 | 0 |
| `e * f * u * k` | 4600 | 8379728396441304721001/250000000000000000000000 | 192733753118150008583023/1250000000000000000000 |
| `f * u * k` | -41887437/10000 | 22756592691152897/250000000000000000 | 0 |
| `e * f * u * w` | -5300 | 3894301080330929213693/250000000000000000000000 | 0 |
| `f * u * w` | -32615191/10000 | 10575643900277621/250000000000000000 | 0 |
| `a * f * u * k` | -1500 | 4628304091304749650551/250000000000000000000000 | 0 |
| `a * f * u * w` | -300 | 2150906183370163391843/250000000000000000000000 | 0 |
| `f * q * k` | -12431349/10000 | 1795881710918739/25000000000000000 | 0 |
| `e * q * j` | -529101/200 | 5386061433370257/100000000000000000 | 0 |
| `e * e * f * p` | -1500 | 492836443035703920303/50000000000000000000000 | 0 |
| `e * e * f` | -14280817/5000 | 12793303819424861/250000000000000000 | 0 |
| `e * e * p` | -2643739/2500 | 5223547075599147/200000000000000000 | 0 |
| `e * e` | 2381565735389/5000000000 | 135595542289/1000000000000 | 322929697386972533365421/5000000000000000000000 |
| `e * e * p * j` | -4300 | 1971350995689891280359/200000000000000000000000 | 0 |
| `e * e * j` | 22211563/10000 | 51173350873241733/1000000000000000000 | 1136640106842113766758679/10000000000000000000000 |
| `e * h * p * r` | -3500 | 970444801161794371899/200000000000000000000000 | 0 |
| `e * h * p` | 18005100133789609/31000000000000 | 2885077314842997/200000000000000000 | 51946105947473011172314465018173/6200000000000000000000000000000 |
| `e * h * r` | -40142571/10000 | 25191309118235713/1000000000000000000 | 0 |
| `e * f * h * p` | 1100 | 272204159578121923953/50000000000000000000000 | 2994245755359341163483/500000000000000000000 |
| `a * a * f` | 1098431/1250 | 3902712861762461/250000000000000000 | 4286860791458601798691/312500000000000000000 |
| `a * a * f * u` | -3200 | 1916665216253023984171/250000000000000000000000 | 0 |
| `b * e * v` | 8067509/10000 | 3895085321146353/62500000000000000 | 31423635884116093144677/625000000000000000000 |
| `e * e * f * u` | -4300 | 6282932232061562910571/250000000000000000000000 | 0 |
| `e * e * u` | -171173/500 | 66592462369093079/1000000000000000000 | 0 |
| `b * e * e * u` | -4800 | 1795532562857856689077/62500000000000000000000 | 0 |
| `b * e * e` | 21097999/5000 | 3656062606738307/62500000000000000 | 77135605220902194347693/312500000000000000000 |
| `b * v * w` | -11793509/10000 | 2414260478048199/62500000000000000 | 0 |
| `b * e * u * w` | 3700 | 1112911000953511371491/62500000000000000000000 | 41177707035279920745167/625000000000000000000 |
| `b * e * w` | -13587627/10000 | 2266108885676581/62500000000000000 | 0 |
| `e * e * u * r` | -1000 | 22399506789704731703993/1000000000000000000000000 | 0 |
| `e * e * r` | -638949/5000 | 45609865773124063/1000000000000000000 | 0 |
| `h * p * v` | -2236294023/2000000 | 3073695258583863/200000000000000000 | 0 |
| `c * e * h * u` | -363255981/10 | 4211324535958873842971/250000000000000000000000 | 0 |
| `e * p * u * w` | 5100 | 1590055649954831382411/200000000000000000000000 | 81092838147696400502961/2000000000000000000000 |
| `e * q * u * r` | -1800 | 2357577090180907975797/100000000000000000000000 | 0 |
| `v * r * k` | 20566841/10000 | 64808163149305287/1000000000000000000 | 1332899186993821098188367/10000000000000000000000 |
| `v * w * j` | 5221139/10000 | 33792035813298081/1000000000000000000 | 176432916074207329334259/10000000000000000000000 |
| `e * u * r * k` | 7900 | 29874869914103724947683/1000000000000000000000000 | 2360114723214194270866957/10000000000000000000000 |
| `u * r * k` | -4519189/1250 | 81130343869516651/1000000000000000000 | 0 |
| `e * u * w * j` | -2600 | 15577245596812384789029/1000000000000000000000000 | 0 |
| `u * w * j` | 17822679/10000 | 42302687691794013/1000000000000000000 | 753947223568095627820827/10000000000000000000000 |
| `a * u * r * k` | -700 | 16500532727213905030333/1000000000000000000000000 | 0 |
| `a * u * w * j` | 700 | 8603647530820141745979/1000000000000000000000000 | 60225532715740992221853/10000000000000000000000 |
| `e * h * u * j` | -4200 | 13880830801118534762013/1000000000000000000000000 | 0 |
| `e * h * j` | 20756029/10000 | 28264141510001883/1000000000000000000 | 586651340841702873602607/10000000000000000000000 |
| `e * p * v` | 19306013/5000 | 5565047354764713/200000000000000000 | 107438876576703161119269/1000000000000000000000 |
| `e * p * u * k` | 1200 | 3421470042248549340927/200000000000000000000000 | 10264410126745648022781/500000000000000000000 |
| `e * e * p * u` | -2000 | 2565341427844572682317/200000000000000000000000 | 0 |
| `f * q * v` | -2942203/2500 | 1434542805703251/25000000000000000 | 0 |
| `a * f * q * u` | 1100 | 365242885522971195009/25000000000000000000000 | 4017671740752683145099/250000000000000000000 |
| `f * q * u` | -8253159/10000 | 1795837830708423/25000000000000000 | 0 |
| `e * h * u * r` | -100 | 12371729012365859247143/1000000000000000000000000 | 0 |
| `h * u * r` | -32944993/10000 | 33597556472032271/1000000000000000000 | 0 |
| `a * h * u * r` | 5500 | 6833171827951339372793/1000000000000000000000000 | 75164890107464733100723/2000000000000000000000 |
| `c * e * v * r` | 4600 | 5563701725505352744623/250000000000000000000000 | 127965139686623113126329/1250000000000000000000 |
| `c * e * h * r` | 700 | 2884379702728870902787/250000000000000000000000 | 20190657919102096319509/2500000000000000000000 |
| `e * p * v * r` | -3300 | 1871898283580142217671/200000000000000000000000 | 0 |
| `e * e * p * r` | 2700 | 1757028859178058278949/200000000000000000000000 | 47439779197807573531623/2000000000000000000000 |
| `c * e * v * j` | -5800 | 6242361290199524952693/250000000000000000000000 | 0 |
| `e * v * j` | -744449/625 | 54518915363448807/1000000000000000000 | 0 |
| `c * e * h * j` | 4100 | 3236215938753705601617/250000000000000000000000 | 132684853488901929666297/2500000000000000000000 |
| `a * c * h * j` | -4000 | 1787431616046212333967/250000000000000000000000 | 0 |
| `f * w * k` | 71159713/10000 | 10575902309734553/250000000000000000 | 752578173076747897663289/2500000000000000000000 |
| `w * k` | -1157161019437/1250000000 | 112093422397/1000000000000 | 0 |
| `f * h * k` | -451979/1250 | 9424150734365041/250000000000000000 | 0 |
| `e * h * r * j` | 300 | 9507124487294803379061/1000000000000000000000000 | 28521373461884410137183/10000000000000000000000 |
| `e * r * j` | 19984279/5000 | 46744931913162867/1000000000000000000 | 934163761188650506567893/5000000000000000000000 |
| `h * r * j` | -13900867/10000 | 25818230542332717/1000000000000000000 | 0 |
| `r * j` | -2965749879891/5000000000 | 126943896699/1000000000000 | 0 |
| `e * f * h * j` | -200 | 2666693487327167659167/250000000000000000000000 | 0 |
| `f * h * j` | 7949567/10000 | 7241864491577799/250000000000000000 | 57569686980718648863033/2500000000000000000000 |
| `a * h * r * j` | 4000 | 5250989182391254981611/1000000000000000000000000 | 5250989182391254981611/250000000000000000000 |
| `a * r * j` | -320727/500 | 25818230542332717/1000000000000000000 | 0 |
| `a * f * h * j` | 4800 | 1472872125890567494017/250000000000000000000000 | 4418616377671702482051/156250000000000000000 |
| `e * p * v * j` | -1200 | 2100232176546138392061/200000000000000000000000 | 0 |
| `e * h * p * j` | 3200 | 1088819523389802538809/200000000000000000000000 | 1088819523389802538809/62500000000000000000 |
| `c * e * e * j` | -1200 | 5859297501635305186767/250000000000000000000000 | 0 |
| `c * e * e` | 19470561/10000 | 15525553996548211/250000000000000000 | 302291246148585731716371/2500000000000000000000 |
| `f * h * p * v` | -1100 | 290000073952128890187/50000000000000000000000 | 0 |
| `f * p * v` | -6306017/10000 | 1425881582787789/50000000000000000 | 0 |
| `f * h * q * u` | -700 | 365242885522971195009/25000000000000000000000 | 0 |
| `a * f * p * v` | -4420300 | 290000073952128890187/50000000000000000000000 | 0 |
| `f * h * h * u` | 7500 | 1916665216253023984171/250000000000000000000000 | 5749995648759071952513/100000000000000000000 |
| `f * h * h` | 934863/1000 | 3902712861762461/250000000000000000 | 3648501854085839577843/250000000000000000000 |
| `h * h * u` | -2879491/2000 | 20314632017859479/1000000000000000000 | 0 |
| `h * h` | 5264469189309/10000000000 | 41364644689/1000000000000 | 217762897491954662429901/10000000000000000000000 |
| `c * f * h * h` | 2500 | 446856719958940022039/62500000000000000000000 | 446856719958940022039/25000000000000000000 |
| `c * h * h` | 2205393/2000 | 4736210452245811/250000000000000000 | 10445205377909745858723/500000000000000000000 |
| `c * f * h * q` | -200 | 85153753732852000581/6250000000000000000000 | 0 |
| `c * f * q` | -1096657/500 | 418686683414307/6250000000000000 | 0 |
| `c * f * q * k` | 1500 | 205626660018484696761/6250000000000000000000 | 616879980055454090283/12500000000000000000 |
| `b * f * q * k` | 3800 | 48422358571501959657/1562500000000000000000 | 920024812858537233483/7812500000000000000 |
| `f * h * q * r` | 4300 | 250158627427822329273/25000000000000000000000 | 10756820979396360158739/250000000000000000000 |
| `f * h * r` | -208059/400 | 6454540532750789/250000000000000000 | 0 |
| `a * f * h * r` | -100 | 1312743817172453719187/250000000000000000000000 | 0 |
| `c * f * q * q` | 400 | 16227039789088296399/625000000000000000000 | 16227039789088296399/1562500000000000000 |
| `f * q * q` | -4492901/5000 | 141722109268101/2500000000000000 | 0 |
| `a * c * f * q` | 400 | 85153753732852000581/6250000000000000000000 | 85153753732852000581/15625000000000000000 |
| `f * h * q * j` | -7000 | 280672942100080755843/25000000000000000000000 | 0 |
| `f * q * u * w` | 4300 | 409880230643059757097/25000000000000000000000 | 17624849917651569555171/250000000000000000000 |
| `f * p * q * w` | -2200 | 32151216578456990421/5000000000000000000000 | 0 |
| `f * p * q` | 2489173/2500 | 140866445166939/5000000000000000 | 350640951915525051447/12500000000000000000 |
| `f * q * v * r` | 3100 | 482532859925985429117/25000000000000000000000 | 14958518657705548302627/250000000000000000000 |
| `f * q * q * r` | 2200 | 47670640728183329067/2500000000000000000000 | 524377048010016619737/12500000000000000000 |
| `f * q * r * k` | 500 | 604075343456603481213/25000000000000000000000 | 604075343456603481213/50000000000000000000 |
| `f * q * w * j` | 5900 | 314974760092929751419/25000000000000000000000 | 18583510845482855333721/250000000000000000000 |
| `f * q * v * j` | 300 | 541392151243989817647/25000000000000000000000 | 1624176453731969452941/250000000000000000000 |
| `f * f * v * k` | 2500 | 1715105870929352412561/62500000000000000000000 | 1715105870929352412561/25000000000000000000 |
| `f * f * v` | -27206969/10000 | 3492212482268907/62500000000000000 | 0 |
| `e * f * f * v` | 4200 | 1285947878983326431331/62500000000000000000000 | 27004905458649855057951/312500000000000000000 |
| `f * v * r * k` | -3100 | 6114585384973804523163/250000000000000000000000 | 0 |
| `f * p * v * k` | -300 | 700283240583487297047/50000000000000000000000 | 0 |
| `f * v * w * j` | -100 | 3188244786948860644269/250000000000000000000000 | 0 |
| `f * p * v * w` | 2600 | 325441786573902173571/50000000000000000000000 | 4230743225460728256423/250000000000000000000 |
| `f * h * p * k` | 3200 | 363046558739944474443/50000000000000000000000 | 363046558739944474443/15625000000000000000 |
| `f * h * u * k` | 200 | 4628304091304749650551/250000000000000000000000 | 4628304091304749650551/1250000000000000000000 |
| `f * h * u * w` | 2000 | 2150906183370163391843/250000000000000000000000 | 2150906183370163391843/125000000000000000000 |
| `f * h * w` | -20333647/5000 | 4379674214933413/250000000000000000 | 0 |
| `h * h * u * r` | -1400 | 6833171827951339372793/1000000000000000000000000 | 0 |
| `h * h * r` | -23397411/2500 | 13913701440104863/1000000000000000000 | 0 |
| `f * h * w * j` | 3600 | 1652875909693225265961/250000000000000000000000 | 14875883187239027393649/625000000000000000000 |
| `h * h * r * j` | -1000 | 5250989182391254981611/1000000000000000000000000 | 0 |
| `h * h * j` | 2206947/2000 | 15610892811694533/1000000000000000000 | 34452413058090814520751/2000000000000000000000 |
| `f * h * h * j` | 1000 | 1472872125890567494017/250000000000000000000000 | 1472872125890567494017/250000000000000000000 |
| `h * p * v * j` | -2600 | 1160003369503774144611/200000000000000000000000 | 0 |
| `h * h * p * j` | -500 | 601378423784908494759/200000000000000000000000 | 0 |
| `h * h * p` | -7932297/1250 | 1593490207354347/200000000000000000 | 0 |
| `h * q * u * j` | -500 | 1460975413281675058377/100000000000000000000000 | 0 |
| `e * f * p * v` | -13658500 | 525056652874695906837/50000000000000000000000 | 0 |
| `h * p * v * r` | 2000 | 1033889653044078245721/200000000000000000000000 | 1033889653044078245721/100000000000000000000 |
| `h * q * u * r` | 700 | 1302140496186554727147/100000000000000000000000 | 9114983473305883090029/1000000000000000000000 |
| `c * e * p * v` | -4700 | 637192357073204873787/50000000000000000000000 | 0 |
| `h * p * p * w` | -43250300 | 68888179259635589073/40000000000000000000000 | 0 |
| `h * p * p` | 1148699/1000 | 301824750632607/40000000000000000 | 346705789226925028293/40000000000000000000 |
| `h * p * w` | 20450879/10000 | 1788235061122851/200000000000000000 | 36570978858581029936029/2000000000000000000000 |
| `b * h * p * w` | -399555600 | 48216181953055431513/12500000000000000000000 | 0 |
| `b * h * w` | -1548828/625 | 1251620640995131/62500000000000000 | 0 |
| `a * h * p * p` | -1200 | 61386023257911509481/40000000000000000000000 | 0 |
| `h * p * q * r` | 300 | 102140571753828865071/20000000000000000000000 | 306421715261486595213/200000000000000000000 |
| `h * p * q` | 5476093/5000 | 303658122686913/20000000000000000 | 1662860120038945470909/100000000000000000000 |
| `h * p * u * w` | -2700 | 878221909103104477461/200000000000000000000000 | 0 |
| `c * h * p * w` | -800 | 204751126263505316649/50000000000000000000000 | 0 |
| `c * h * q * r` | -1800 | 303584698108705220823/25000000000000000000000 | 0 |
| `f * p * w * k` | -6400 | 407415484677904185219/50000000000000000000000 | 0 |
| `p * w * k` | -14181899/5000 | 4318174910999631/200000000000000000 | 0 |
| `e * p * w * j` | -5600 | 1221887174439186862497/200000000000000000000000 | 0 |
| `q * r * j` | -8514971/5000 | 4919964604363143/100000000000000000 | 0 |
| `e * q * r * j` | 2600 | 1811693326158453236319/100000000000000000000000 | 23552013240059892072147/500000000000000000000 |
| `a * e * f * r` | -2800 | 2376774823996421285837/250000000000000000000000 | 0 |
| `a * e * r * j` | 2800 | 9507124487294803379061/1000000000000000000000000 | 66549871411063623653427/2500000000000000000000 |
| `p * r * w * k` | -1400 | 1452491540288212880577/200000000000000000000000 | 0 |
| `p * r * w` | -21320273/10000 | 2957490364507899/200000000000000000 | 0 |
| `r * w * k` | 876354/625 | 37704528211411699/1000000000000000000 | 16521257058091744032723/312500000000000000000 |
| `r * w` | -1058593074841/10000000000 | 76772067713/1000000000000 | 0 |
| `p * q * r * w` | -1200 | 114623454057232641543/20000000000000000000000 | 0 |
| `q * r * w` | 4525453/5000 | 2975455028352741/100000000000000000 | 13465281884423996816673/500000000000000000000 |
| `p * p * w * k` | 4400 | 166349052096438785013/40000000000000000000000 | 1829839573060826635143/100000000000000000000 |
| `p * w * w * j` | 1400 | 757352835858887091351/200000000000000000000000 | 5301469851012209639457/1000000000000000000000 |
| `p * w * w` | 8563697/5000 | 2006780223104283/200000000000000000 | 17185457776257479014251/1000000000000000000000 |
| `w * w * j` | 6224709/2500 | 19659757439942037/1000000000000000000 | 122376269074224157192233/2500000000000000000000 |
| `w * w` | -10449008864411/5000000000 | 52093041121/1000000000000 | 0 |
| `p * p * w * w` | -4400 | 77307194534646294009/40000000000000000000000 | 0 |
| `p * q * w * j` | -4400 | 128605207082851252413/20000000000000000000000 | 0 |
| `q * r * r * k` | 1400 | 2153610648257717020479/100000000000000000000000 | 15075274537804019143353/500000000000000000000 |
| `q * r * r` | 21014373/10000 | 4385073898509573/100000000000000000 | 92149578535844311092729/1000000000000000000000 |
| `r * r * k` | -926148/625 | 55567011075617747/1000000000000000000 | 0 |
| `r * r` | -298075303709/250000000 | 113142758689/1000000000000 | 0 |
| `q * q * r * r` | -4400 | 169952309084535520761/10000000000000000000000 | 0 |
| `p * q * r * k` | -4400 | 246645904630454333451/20000000000000000000000 | 0 |
| `q * r * w * j` | -1400 | 1122927801335239395177/100000000000000000000000 | 0 |
| `r * w * j` | -4809033/2500 | 28973548038683061/1000000000000000000 | 0 |
| `q * q * r * j` | 4400 | 190683068171302333251/10000000000000000000000 | 2097513749884325665761/25000000000000000000 |
| `a * r * r * k` | 5600 | 11301385413592364238101/1000000000000000000000000 | 79109697895146549666707/1250000000000000000000 |
| `a * r * r` | -20292581/10000 | 23011313690444887/1000000000000000000 | 0 |
| `a * q * r * r` | 4400 | 891849484700572485459/100000000000000000000000 | 9810344331706297340049/250000000000000000000 |
| `a * r * w * j` | 4400 | 5892727120751476995363/1000000000000000000000000 | 64819998328266246948993/2500000000000000000000 |
| `a * r * w` | 387952/625 | 15614133447673079/1000000000000000000 | 378595893705729146513/39062500000000000000 |
| `a * p * r * w` | -4400 | 601503262804710022317/200000000000000000000000 | 0 |
| `a * q * r * j` | -4400 | 1000637161129189112769/100000000000000000000000 | 0 |
| `c * p * w * w` | -3200 | 229774328765217299217/50000000000000000000000 | 0 |
| `c * w * w` | 3629833/1250 | 5964601115313379/250000000000000000 | 21650505960201308435707/312500000000000000000 |
| `e * p * r * w` | 100 | 1089045549393837172467/200000000000000000000000 | 1089045549393837172467/2000000000000000000000 |
| `e * r * w` | 32799331/10000 | 28270008810161129/1000000000000000000 | 927237376337391033404699/10000000000000000000000 |
| `c * q * r * w` | -6800 | 340686625291360491759/25000000000000000000000 | 0 |
| `c * r * w` | -25448559/10000 | 8790324981070787/250000000000000000 | 0 |
| `e * q * r * r` | -100 | 1614728916869875594509/100000000000000000000000 | 0 |
| `e * r * r` | 298703/250 | 41662897460326537/1000000000000000000 | 12444832460091917581511/250000000000000000000 |
| `c * e * q * r` | -1800 | 549652154499947633673/25000000000000000000000 | 0 |
| `a * c * r * w` | -300 | 1787802665625119872421/250000000000000000000000 | 0 |
| `a * e * r * r` | -300 | 8473525074173592074671/1000000000000000000000000 | 0 |
| `p * p * v * k` | 100 | 285927898303084093569/40000000000000000000000 | 285927898303084093569/400000000000000000000 |
| `p * p * v` | -5169733/10000 | 582192033977403/40000000000000000 | 0 |
| `e * p * p * k` | -2400 | 268381873827995842611/40000000000000000000000 | 0 |
| `p * q * u * k` | -100 | 360114151712168726883/20000000000000000000000 | 0 |
| `p * q * v * j` | -100 | 221052155744864489769/20000000000000000000000 | 0 |
| `e * p * q * j` | 2400 | 207487244597722410411/20000000000000000000000 | 622461733793167231233/25000000000000000000 |
| `q * q * u * j` | 100 | 278405884919378120283/10000000000000000000000 | 278405884919378120283/100000000000000000000 |
| `h * p * r * k` | 3000 | 1294310292887883316569/200000000000000000000000 | 3882930878663649949707/200000000000000000000 |
| `h * q * r * j` | -1700 | 1000637161129189112769/100000000000000000000000 | 0 |
| `h * p * p * k` | -30242400 | 148233077004937847661/40000000000000000000000 | 0 |
| `h * p * u * k` | 3100 | 1889751438905901183777/200000000000000000000000 | 58582294606082936697087/2000000000000000000000 |
| `h * p * q * j` | 2400 | 114599664527672905461/20000000000000000000000 | 343798993583018716383/25000000000000000000 |
| `c * c * h * p` | 3000 | 102716009122214412309/12500000000000000000000 | 308148027366643236927/12500000000000000000 |
| `c * c * p` | -4080959/1000 | 505037339021523/12500000000000000 | 0 |
| `b * c * h * p` | -1000 | 24188261504137740933/3125000000000000000000 | 0 |
| `b * c * p` | -835327/1000 | 118929613114851/3125000000000000 | 0 |
| `b * b * h * p` | -84482000 | 5696015641499628021/781250000000000000000 | 0 |
| `b * b * h` | 6103/100 | 147860126197327/3906250000000000 | 902390350182286681/390625000000000000 |
| `b * b * p` | -33649898697/500 | 28006350783987/781250000000000 | 0 |
| `c * h * h * u` | 1200 | 2326005051412892486021/250000000000000000000000 | 6978015154238677458063/625000000000000000000 |
| `c * c * h * h` | -70078700 | 542291360571693113689/62500000000000000000000 | 0 |
| `b * c * h * v` | 2800 | 246326202681612665997/15625000000000000000000 | 1724283418771288661979/39062500000000000000 |
| `b * h * v` | -10489203411/2000000 | 2151339336427503/62500000000000000 | 0 |
| `b * h * h * u` | -4800 | 547743423097545132277/62500000000000000000000 | 0 |
| `b * h * h` | 2555849/1000 | 1115314914749507/62500000000000000 | 2850576509547612716443/62500000000000000000 |
| `b * c * h * h` | -4800 | 127702442423903801993/15625000000000000000000 | 0 |
| `c * h * p * v` | 42019/10 | 351935033412593729637/50000000000000000000000 | 14787958168963775925617103/500000000000000000000000 |
| `c * h * h * p` | 3500 | 182453035251865377153/50000000000000000000000 | 1277171246763057640071/100000000000000000000 |
| `c * h * q * u` | -429748019/10 | 443247359797079766159/25000000000000000000000 | 0 |
| `b * h * p * v` | 10327/10 | 82876045257196698069/12500000000000000000000 | 855860919371070300958563/125000000000000000000000 |
| `b * h * h * p` | 3600 | 42965276460895258161/12500000000000000000000 | 386687488148057323449/31250000000000000000 |
| `b * p * v * w` | 1100 | 93004556395850770077/12500000000000000000000 | 1023050120354358470847/125000000000000000000 |
| `b * e * p * w` | 2700 | 87297312602918929863/12500000000000000000000 | 2357027440278811106301/125000000000000000000 |
| `c * r * w * k` | 3500 | 4317130775678428123801/250000000000000000000000 | 30219915429748996866607/500000000000000000000 |
| `c * w * k` | 1395063/10000 | 12834584771034103/250000000000000000 | 17905054334433148833489/2500000000000000000000 |
| `c * p * w * k` | -1600 | 494426709134546749869/50000000000000000000000 | 0 |
| `c * w * w * j` | -3500 | 2251022567115923294463/250000000000000000000000 | 0 |
| `b * q * w * j` | -1400 | 90013295916073990053/6250000000000000000000 | 0 |
| `b * w * j` | 2155937/5000 | 2322504216427329/62500000000000000 | 5007172772851686402273/312500000000000000000 |
| `b * f * v * w` | 6500 | 227783061843369527451/15625000000000000000000 | 2961179803963803856863/31250000000000000000 |
| `b * f * v` | -269873/500 | 998002365254709/15625000000000000 | 0 |
| `b * c * v * w` | -2100 | 276430410476040737301/15625000000000000000000 | 0 |
| `c * c * q * w` | 200 | 115969396252413241923/6250000000000000000000 | 115969396252413241923/31250000000000000000 |
| `c * c * h * w` | 500 | 608566290425073209537/62500000000000000000000 | 608566290425073209537/125000000000000000000 |
| `b * c * h * w` | 3900 | 143309311773301504369/15625000000000000000000 | 5589063159158758670391/156250000000000000000 |
| `c * f * w * k` | -400 | 1210930238562296583947/62500000000000000000000 | 0 |
| `c * f * h * k` | 800 | 1079055834934062829459/62500000000000000000000 | 1079055834934062829459/78125000000000000000 |
| `b * f * w * k` | 4200 | 285158053977372752539/15625000000000000000000 | 5988319133524827803319/78125000000000000000 |
| `b * w * k` | -1587176/625 | 3022374948090311/62500000000000000 | 0 |
| `b * h * r * k` | -5500 | 905913050051553561889/62500000000000000000000 | 0 |
| `b * h * k` | -1985104644493201/6200000000000 | 2693228081385967/62500000000000000 | 0 |
| `b * r * k` | 1471467/500 | 4454222083711783/62500000000000000 | 6554240806853126195661/31250000000000000000 |
| `b * f * h * k` | 5000 | 254103376250684600483/15625000000000000000000 | 254103376250684600483/3125000000000000000 |
| `c * c * h * k` | 4700 | 1309508463726327358109/62500000000000000000000 | 61546897795137385831123/625000000000000000000 |
| `b * c * v * k` | 1200 | 594820922297348634657/15625000000000000000000 | 1784462766892045903971/39062500000000000000 |
| `b * h * u * k` | 2300 | 1322673936277543639337/62500000000000000000000 | 30421500534383503704751/625000000000000000000 |
| `b * c * h * k` | -4100 | 308371922090611835533/15625000000000000000000 | 0 |
| `b * e * r * k` | -3000 | 1640191560551440989439/62500000000000000000000 | 0 |
| `b * e * p * k` | 1400 | 187845714612679487691/12500000000000000000000 | 1314920002288756413837/62500000000000000000 |
| `b * e * w * j` | 2200 | 855222695127684639657/62500000000000000000000 | 9407449646404531036227/312500000000000000000 |
| `b * e * v * r` | -1000 | 1310178164218035319551/62500000000000000000000 | 0 |
| `b * e * v * j` | -4900 | 1469993514944670183141/62500000000000000000000 | 0 |
| `b * c * e * q` | 3200 | 44059824661105542597/1562500000000000000000 | 44059824661105542597/488281250000000000 |
| `c * e * e * p` | 1100 | 598090916609026732353/50000000000000000000000 | 6579000082699294055883/500000000000000000000 |
| `b * c * e * w` | -300 | 259467201301082847919/15625000000000000000000 | 0 |
| `b * e * e * r` | -300 | 1229778810840744110669/62500000000000000000000 | 0 |
| `b * c * e * e` | -4000 | 418615512408929413193/15625000000000000000000 | 0 |
| `b * f * q * v` | -2900 | 38679577670176756713/1562500000000000000000 | 0 |
| `b * c * q * v` | -3200 | 46940327546212132263/1562500000000000000000 | 0 |
| `b * c * e * v` | 3200 | 445983374185936272147/15625000000000000000000 | 445983374185936272147/4882812500000000000 |
| `b * e * p * v` | -1500 | 150050371826520956619/12500000000000000000000 | 0 |
| `c * e * e * u` | 1800 | 7624770348798788452421/250000000000000000000000 | 68622933139189096071789/1250000000000000000000 |
| `b * e * e * p` | -4900 | 140842499799379800561/12500000000000000000000 | 0 |
| `b * e * h * p` | 158286152643/31000000 | 77790339640111728111/12500000000000000000000 | 12313133574425538681352260047373/387500000000000000000000000000 |
| `b * e * h` | 22950929801233201/6200000000000 | 2019321954160157/62500000000000000 | 46345316416018811117170859772557/387500000000000000000000000000 |
| `b * c * e * h` | -3600 | 231210344429383816343/15625000000000000000000 | 0 |
| `b * h * u * w` | -5900 | 614684664619759780541/62500000000000000000000 | 0 |
| `b * e * h * u` | -31673/10 | 991711224229548864427/62500000000000000000000 | 0 |
| `b * e * q * u` | 1900 | 188982126910629823233/6250000000000000000000 | 3590660411301966641427/62500000000000000000 |
| `b * p * v * k` | 7100 | 200126519791969898889/12500000000000000000000 | 14208982905229862821119/125000000000000000000 |
| `b * h * p * k` | 122800147357/31000000 | 103751225379231606741/12500000000000000000000 | 12740665765038959515226674533537/387500000000000000000000000000 |
| `b * q * u * k` | -3800 | 252050927306160096123/6250000000000000000000 | 0 |
| `b * q * r * k` | 1400 | 172632285298417573731/6250000000000000000000 | 1208425997088923016117/31250000000000000000 |
| `b * q * v * j` | -3300 | 154718720643480031089/6250000000000000000000 | 0 |
| `b * v * r * k` | -3500 | 1747422502994718453381/62500000000000000000000 | 0 |
| `b * v * w * j` | 3500 | 911134661633956158003/62500000000000000000000 | 6377942631437693106021/125000000000000000000 |
| `f * f * v * w` | -300 | 797059084740573064773/62500000000000000000000 | 0 |
| `f * f * w` | 110141/250 | 2031722821006439/62500000000000000 | 223775983228470197899/15625000000000000000 |
| `f * h * p * w` | -3800 | 168718189781879868999/50000000000000000000000 | 0 |
| `b * f * v * k` | -1800 | 490141915630988448207/15625000000000000000000 | 0 |
| `b * c * q * k` | 200 | 58763862193329053607/1562500000000000000000 | 58763862193329053607/7812500000000000000 |
| `b * h * v * j` | 4000 | 811909011549730349691/62500000000000000000000 | 811909011549730349691/15625000000000000000 |
| `h * p * w * j` | -1300 | 674874547362580598847/200000000000000000000000 | 0 |
| `b * h * w * j` | 500 | 472357875049639454007/62500000000000000000000 | 472357875049639454007/125000000000000000000 |
| `b * e * h * j` | -1400 | 762086047534180771329/62500000000000000000000 | 0 |
| `h * h * p * r` | 3400 | 535997520577159637349/200000000000000000000000 | 9111957849811713834933/1000000000000000000000 |
| `f * h * h * p` | 5000 | 150344207573675285103/50000000000000000000000 | 150344207573675285103/10000000000000000000 |
| `b * f * h * w` | 5000 | 118089155857249614719/15625000000000000000000 | 118089155857249614719/3125000000000000000 |
| `b * h * h * r` | 5000 | 375155131929547421069/62500000000000000000000 | 375155131929547421069/12500000000000000000 |
| `b * f * h * h` | -5000 | 105228846891701235943/15625000000000000000000 | 0 |
| `h * p * q * u` | 3200 | 149129844290892530343/20000000000000000000000 | 149129844290892530343/6250000000000000000 |
| `h * p * p * v` | -7703200 | 118407962446426154349/40000000000000000000000 | 0 |
| `b * h * v * r` | 1600 | 723639558576109901601/62500000000000000000000 | 723639558576109901601/39062500000000000000 |
| `b * f * h * v` | 5000 | 202976715052598480547/15625000000000000000000 | 202976715052598480547/3125000000000000000 |
| `h * r * r * k` | -6700 | 11301385413592364238101/1000000000000000000000000 | 0 |
| `h * r * r` | 167497/80 | 23011313690444887/1000000000000000000 | 3854326009208447237839/80000000000000000000 |
| `h * q * r * r` | -3300 | 891849484700572485459/100000000000000000000000 | 0 |
| `h * r * w * j` | -3300 | 5892727120751476995363/1000000000000000000000000 | 0 |
| `h * r * w` | -36930653/10000 | 15614133447673079/1000000000000000000 | 0 |
| `h * p * r * w` | 3300 | 601503262804710022317/200000000000000000000000 | 19849607672555430736461/2000000000000000000000 |
| `b * e * f * w` | -3689200 | 213805107254699740769/15625000000000000000000 | 0 |
| `p * p * v * w` | 2000 | 132878927642968483317/40000000000000000000000 | 132878927642968483317/20000000000000000000 |
| `p * q * u * w` | -2000 | 167355415797333209919/20000000000000000000000 | 0 |
| `p * q * v * r` | -2000 | 197019717887086632459/20000000000000000000000 | 0 |
| `q * q * u * r` | 2000 | 248138041088499538113/10000000000000000000000 | 248138041088499538113/5000000000000000000 |
| `b * h * p * q` | -300 | 8187533962007235219/1250000000000000000000 | 0 |
| `b * e * p * q` | 3900 | 14823855452185336269/1250000000000000000000 | 578130362635228114491/12500000000000000000 |
| `c * f * h * w` | -2500 | 501468317935660855087/62500000000000000000000 | 0 |
| `c * e * r * k` | -1800 | 6965111207639336937647/250000000000000000000000 | 0 |
| `c * e * w * j` | 2100 | 3631722856114852336761/250000000000000000000000 | 76266179978411899071981/2500000000000000000000 |
| `c * e * f * w` | 3400 | 907928308257829826737/62500000000000000000000 | 15434781240383107054529/312500000000000000000 |
| `c * h * h * r` | 3000 | 1593104901190566708637/250000000000000000000000 | 4779314703571700125911/250000000000000000000 |
| `c * c * q * q` | -700 | 19692628738098134049/625000000000000000000 | 0 |
| `e * p * p * w` | -55009900 | 124724784831148089423/40000000000000000000000 | 0 |
| `e * p * q * r` | -100 | 184929562247718169521/20000000000000000000000 | 0 |
| `c * c * e * q` | 4500 | 187101059372915607381/6250000000000000000000 | 1683909534356240466429/12500000000000000000 |
| `c * c * q * k` | -1000 | 249542093137780785111/6250000000000000000000 | 0 |
| `c * c * q * v` | -400 | 199333181163585021399/6250000000000000000000 | 0 |
| `c * e * p * k` | -4700 | 797691149999524854843/50000000000000000000000 | 0 |
| `c * c * e * v` | -1100 | 1893878661903924534531/62500000000000000000000 | 0 |
| `c * f * q * w` | 5200 | 95560629935798015373/6250000000000000000000 | 1242288189165374199849/15625000000000000000 |
| `c * e * f * q` | -1800 | 154174253493700509531/6250000000000000000000 | 0 |
| `c * e * e * f` | 4500 | 1464820494020327159639/62500000000000000000000 | 13183384446182944436751/125000000000000000000 |
| `c * e * e * r` | -5000 | 5222284021156932089437/250000000000000000000000 | 0 |
| `c * e * q * j` | 3800 | 616698648059461056243/25000000000000000000000 | 11717274313129760068617/125000000000000000000 |
| `e * f * p * q` | 800 | 51871673703157448787/5000000000000000000000 | 51871673703157448787/6250000000000000000 |
| `c * h * q * j` | -2500 | 340615917471485086893/25000000000000000000000 | 0 |
| `c * v * r * k` | -4700 | 7420469872432306056213/250000000000000000000000 | 0 |
| `c * v * w * j` | -4400 | 3869154308586816976419/250000000000000000000000 | 0 |
| `c * c * w * k` | -2500 | 1469547121698633759397/62500000000000000000000 | 0 |
| `e * e * r * j` | -4800 | 17213026513179702004011/1000000000000000000000000 | 0 |
| `c * c * e * e` | -2500 | 1777660407050773611289/62500000000000000000000 | 0 |
| `e * f * h * r` | 1700 | 2376774823996421285837/250000000000000000000000 | 40405172007939161859229/2500000000000000000000 |
| `e * p * r * k` | -7000 | 2343400196088089650119/200000000000000000000000 | 0 |
| `f * w * w` | 22575043/10000 | 4914926336725229/250000000000000000 | 110954673393404523859847/2500000000000000000000 |
| `c * f * w * w` | -3000 | 562754150628701995271/62500000000000000000000 | 0 |
| `c * h * r * w` | -3000 | 1787802665625119872421/250000000000000000000000 | 0 |
| `e * f * r * w` | -8000 | 2667247061229892360021/250000000000000000000000 | 0 |
| `f * r * w` | 20141809/10000 | 7243367816653837/250000000000000000 | 145894531079788603971133/2500000000000000000000 |
| `e * h * r * r` | 2000 | 8473525074173592074671/1000000000000000000000000 | 8473525074173592074671/500000000000000000000 |
| `c * e * h * p` | -78758752643/31000000 | 330338467472208313503/50000000000000000000000 | 0 |
| `e * r * r * k` | -400 | 20461607189407949831051/1000000000000000000000000 | 0 |
| `e * r * w * j` | 400 | 10669016514928379601213/1000000000000000000000000 | 10669016514928379601213/2500000000000000000000 |
| `c * c * e * h` | 100 | 981840048467159351239/62500000000000000000000 | 981840048467159351239/625000000000000000000 |
| `u * w * k` | -1083159/500 | 55050312766813067/1000000000000000000 | 0 |
| `c * u * w * k` | -900 | 6303205761487329358433/250000000000000000000000 | 0 |
| `e * v * r * j` | 4700 | 18338364004057184864169/1000000000000000000000000 | 861903108190687688615943/10000000000000000000000 |
| `v * r * j` | -9747367/10000 | 49800979282294593/1000000000000000000 | 0 |
| `f * h * p * q` | 1400 | 28649840217387554637/5000000000000000000000 | 200548881521712882459/25000000000000000000 |
| `c * h * p * q` | -3900 | 34768551389528851587/5000000000000000000000 | 0 |
| `f * p * q * k` | 400 | 69182751149722582497/5000000000000000000000 | 69182751149722582497/12500000000000000000 |
| `f * q * q * j` | -400 | 53485498871453513097/2500000000000000000000 | 0 |
| `f * h * v * j` | -300 | 2841034133097411592293/250000000000000000000000 | 0 |
| `f * h * v * r` | 1400 | 2532161432781863780223/250000000000000000000000 | 17725130029473046461561/1250000000000000000000 |
| `f * r * w * k` | -6500 | 3557384532218482388951/250000000000000000000000 | 0 |
| `f * q * r * w` | -3700 | 280731206470052760609/25000000000000000000000 | 0 |
| `f * w * w * j` | -3500 | 1854878454701091248913/250000000000000000000000 | 0 |
| `f * p * w * w` | 3700 | 189337707269665996767/50000000000000000000000 | 7005495168977641880379/500000000000000000000 |
| `f * f * w * k` | -97391300 | 997825807021145340997/62500000000000000000000 | 0 |
| `e * f * f * w` | 5300 | 748147389547664052287/62500000000000000000000 | 39651811646026194771211/625000000000000000000 |
| `h * h * p * u` | -4500 | 782580569224000709517/200000000000000000000000 | 0 |
| `h * h * p * p` | -65215500 | 61386023257911509481/40000000000000000000000 | 0 |
| `c * h * h * j` | -3929500 | 1787431616046212333967/250000000000000000000000 | 0 |
| `h * u * r * k` | 2000 | 16500532727213905030333/1000000000000000000000000 | 16500532727213905030333/500000000000000000000 |
| `h * u * w * j` | 2000 | 8603647530820141745979/1000000000000000000000000 | 8603647530820141745979/500000000000000000000 |
| `c * v * r * w` | 3600 | 3448506022348937235609/250000000000000000000000 | 31036554201140435120481/625000000000000000000 |
| `v * r * w` | -12121273/10000 | 30118219568283891/1000000000000000000 | 0 |
| `c * u * w * w` | -3600 | 2929281218342668874069/250000000000000000000000 | 0 |
| `u * w * w` | 12121273/10000 | 25583465517975431/1000000000000000000 | 310104169829466606443663/10000000000000000000000 |
| `h * v * r * j` | -4000 | 10128672569370921208119/1000000000000000000000000 | 0 |
| `p * v * r * w` | 4100 | 1160244172429000332993/200000000000000000000000 | 47570011069589013652713/2000000000000000000000 |
| `p * u * w * k` | 4100 | 2120703198715939780041/200000000000000000000000 | 86948831147353530981681/2000000000000000000000 |
| `p * u * w * w` | -4100 | 985551842148967528413/200000000000000000000000 | 0 |
| `p * v * w * j` | -1100 | 1301770595635681974363/200000000000000000000000 | 0 |
| `q * v * r * r` | -4100 | 1720295185902595054911/100000000000000000000000 | 0 |
| `v * r * r` | 34157581/10000 | 44386696233005523/1000000000000000000 | 1516142171901281025319863/10000000000000000000000 |
| `q * u * r * k` | 8900 | 3144368737350856842807/100000000000000000000000 | 279848817624226259009823/1000000000000000000000 |
| `q * u * r * w` | 4100 | 1461278694429342985251/100000000000000000000000 | 59912426471603062395291/1000000000000000000000 |
| `u * r * w` | 16155219/10000 | 37703606946599143/1000000000000000000 | 609110027312230460377317/10000000000000000000000 |
| `q * v * r * j` | 4100 | 1930136554043891540901/100000000000000000000000 | 79135598715799553176941/1000000000000000000000 |
| `f * u * w * k` | 3200 | 5193941959236046058383/250000000000000000000000 | 5193941959236046058383/78125000000000000000 |
| `f * f * q * k` | 1000 | 169439643543472105911/6250000000000000000000 | 169439643543472105911/6250000000000000000 |
| `f * f * q` | -413923/1000 | 345004496925357/6250000000000000 | 0 |
| `e * f * f * q` | -1000 | 127042040916314984181/6250000000000000000000 | 0 |
| `e * e * f * r` | 2300 | 4303245225828482219987/250000000000000000000000 | 98974640194055091059701/2500000000000000000000 |
| `f * f * w * w` | -507695000 | 463718384943688630921/62500000000000000000000 | 0 |
| `f * h * r * w` | -5000 | 1473177876654507330571/250000000000000000000000 | 0 |
| `f * f * h * w` | 8000 | 413217882504752583137/62500000000000000000000 | 413217882504752583137/7812500000000000000 |
| `f * f * h` | -63276/625 | 1810461325648783/62500000000000000 | 0 |
| `e * f * f * h` | -3800 | 666671605327628310439/62500000000000000000000 | 0 |
| `f * v * r * w` | 200 | 2841623898048016831959/250000000000000000000000 | 2841623898048016831959/1250000000000000000000 |
| `f * u * w * w` | -200 | 2413774388155463939419/250000000000000000000000 | 0 |
| `e * v * r * r` | 800 | 16344646313968322750859/1000000000000000000000000 | 16344646313968322750859/1250000000000000000000 |
| `e * u * r * w` | -800 | 13883712296767042224319/1000000000000000000000000 | 0 |
| `f * f * h * k` | -200 | 889159197636607253309/62500000000000000000000 | 0 |
| `f * h * r * k` | -600 | 3169973310066165746047/250000000000000000000000 | 0 |
| `e * h * p * p` | -4700 | 111141833399696773431/40000000000000000000000 | 0 |
| `e * p * p * v` | -4700 | 214382319247601038899/40000000000000000000000 | 0 |
| `e * e * p * p` | -25635300 | 201226703993305939881/40000000000000000000000 | 0 |
| `e * p * q * u` | 4700 | 270005506619374427193/20000000000000000000000 | 12690258811110598078071/200000000000000000000 |
| `p * v * r * k` | 7000 | 2496604869000687571101/200000000000000000000000 | 17476234083004812997707/200000000000000000000 |
| `q * u * w * j` | -3000 | 1639525266870860561841/100000000000000000000000 | 0 |
| `u * r * w * k` | 2900 | 18517108554434610907589/1000000000000000000000000 | 536996148078603716320081/10000000000000000000000 |
| `u * w * w * j` | -2900 | 9655123136087373733107/1000000000000000000000000 | 0 |
| `v * r * r * k` | -2900 | 21799327414042371472329/1000000000000000000000000 | 0 |
| `v * r * w * j` | 2900 | 11366525710411635611727/1000000000000000000000000 | 329629245601937432740083/10000000000000000000000 |
| `f * h * h * r` | 13000 | 1312743817172453719187/250000000000000000000000 | 17065669623241898349431/250000000000000000000 |
| `f * f * h * h` | -3000 | 368217055794426432889/62500000000000000000000 | 0 |
| `f * f * q * w` | 1000 | 78743481373746556323/6250000000000000000000 | 78743481373746556323/6250000000000000000 |
| `f * f * h * q` | -1000 | 70168049598169882731/6250000000000000000000 | 0 |
| `c * f * h * p` | -4000 | 84639627810477013659/12500000000000000000000 | 0 |
| `c * f * p` | -638147/250 | 416158812734973/12500000000000000 | 0 |
| `b * f * h * p` | 4000 | 19931512804949315883/3125000000000000000000 | 19931512804949315883/781250000000000000 |
| `b * f * p` | -1683821/500 | 97999895787501/3125000000000000 | 0 |
| `c * h * p * u` | 1000 | 440571201111100029201/50000000000000000000000 | 440571201111100029201/50000000000000000000 |
| `c * p * u` | -1134563/1000 | 2166214487499447/50000000000000000 | 0 |
| `b * h * p * u` | -1000 | 103748690342785439937/12500000000000000000000 | 0 |
| `b * p * u` | 799373/1000 | 510114858876039/12500000000000000 | 407772045084315923547/12500000000000000000 |
| `c * h * p * r` | 4000 | 301751769364028465097/50000000000000000000000 | 301751769364028465097/12500000000000000000 |
| `c * p * r` | 898999/500 | 1483662692378559/50000000000000000 | 1333811276785632162441/25000000000000000000 |
| `b * h * p * r` | -4000 | 71058550357315780089/12500000000000000000000 | 0 |
| `b * p * r` | -888189/500 | 349382939367183/12500000000000000 | 0 |
| `c * h * p * j` | -3000 | 338559408332792011827/50000000000000000000000 | 0 |
| `c * p * j` | -77951/1000 | 1664639661784869/50000000000000000 | 0 |
| `b * h * p * j` | 3000 | 79726262472834444099/12500000000000000000000 | 239178787418503332297/12500000000000000000 |
| `b * p * j` | -1829259/1000 | 392000621845653/12500000000000000 | 0 |
| `b * f * r` | -68522/25 | 855694804307929/15625000000000000 | 0 |
| `c * c * r` | -49879/100 | 4409778434043367/62500000000000000 | 0 |
| `f * r * j` | 45223/20 | 11977029709653951/250000000000000000 | 541637214559680626073/5000000000000000000 |
| `a * f * f * u` | -51890000 | 889137472100699467913/62500000000000000000000 | 0 |
| `a * c * c * p` | -267990000 | 102716009122214412309/12500000000000000000000 | 0 |
| `a * c * f * p` | -141250000 | 84639627810477013659/12500000000000000000000 | 0 |
| `a * f * p * q` | -9390000 | 28649840217387554637/5000000000000000000000 | 0 |
| `a * h * h * p` | -180370000 | 324088818842349155901/200000000000000000000000 | 0 |
| `b * b * r` | 444793/100 | 244539942220423/3906250000000000 | 108769654520048607439/390625000000000000 |
| `b * c * r` | -424751/100 | 1038444492241079/15625000000000000 | 0 |
| `b * u * r` | -460553/100 | 4454113250150731/62500000000000000 | 0 |
| `c * u * r` | 45731/100 | 18914494419352763/250000000000000000 | 864978744291421204753/25000000000000000000 |
| `b * f * p * r` | 10000 | 32963930946354348867/3125000000000000000000 | 32963930946354348867/312500000000000000 |
| `f * p * r` | -74343/100 | 1222561693667409/50000000000000000 | 0 |
| `b * h * q * v` | -17740000 | 83379458661920733771/6250000000000000000000 | 0 |
| `b * p * r * w` | -5780000 | 79742812698226480737/12500000000000000000000 | 0 |
| `b * p * w * k` | -71290000 | 116430950125283050653/12500000000000000000000 | 0 |
| `c * f * r` | -3383/50 | 3633727678613417/62500000000000000 | 0 |
| `c * c * h * q` | -148170000 | 103339936286106065931/6250000000000000000000 | 0 |
| `f * f * j` | 17933/50 | 3359487631295997/62500000000000000 | 60245691692031114201/3125000000000000000 |
| `f * f * r` | -132371/100 | 2994249493440967/62500000000000000 | 0 |
| `f * u * r` | 92723/100 | 15585844714552213/250000000000000000 | 1445166279467424845999/25000000000000000000 |
| `f * f * w * j` | -13270000 | 766766097479367059283/62500000000000000000000 | 0 |
| `k * k` | -17507565983/20000000 | 241201801129/1000000000000 | 0 |
| `r * k * k` | 52049/20 | 81132326240358343/1000000000000000000 | 4222856448484411394807/20000000000000000000 |

### Exact coordinate contradiction

| Box stage | Maximum |
| --- | --- |
| 79 | -689469993462981657822251845412987601015641/89623300000000000000000000000000000 |
