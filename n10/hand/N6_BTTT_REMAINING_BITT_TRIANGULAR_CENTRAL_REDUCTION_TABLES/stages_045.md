# BITT triangular: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 225

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ+ |
| Packet | forest:root/ACP-/HEQ+ |
| Index | 1 |
| Context | 92 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 224 |
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
| u | 17183/125000 | 2149/3125 | 17183/125000 | 687677/1000000 |
| v | 53183/100000 | 906327/1000000 | 531831/1000000 | 906327/1000000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 30969/40000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 72 | A_CFQ | bitt ["actual-area","CFQ",[]] | `1/1 * f * v + -1/1 * c * v + -1/1 * u + 1/1 * c + -93/1000` |
| 93 | A_EHQ | bitt ["actual-area","EHQ",[]] | `1/1 * v + 1/1 * h * u + -1/1 * h + -1/1 * e * u + -93/1000` |
| 560 | AREA_lo_EHR | bitt ["earlier-area",{"direction":"lo","ref":"224:203","triangle":"EHR","value":"450761/1000000"}] | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -450761/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 72 | u | 17183/125000 | 2149/3125 | 17183/125000 | 34383824949/50000000000 | 17183/125000 | 687677/1000000 | `(-1/1, 42012013517/100000000000); (-1/1, 6839973239/12500000000); (-1/1, 56059877503/100000000000); (-1/1, 34383824949/50000000000); (-1/1, 268411025973/1000000000000); (-1/1, 36729644591/125000000000); (-1/1, 507810052407/1000000000000); (-1/1, 266618091581/500000000000)` |
| 1 | 93 | v | 53183/100000 | 906327/1000000 | 265915871839/500000000000 | 906327/1000000 | 531831/1000000 | 906327/1000000 | `(1/1, -45942045181/62500000000); (1/1, -1888727689/2500000000); (1/1, -15625010239/15625000000); (1/1, -15944047/15625000); (1/1, -265915871839/500000000000); (1/1, -12679530691/20000000000); (1/1, -78470219141/125000000000); (1/1, -45619159/62500000)` |
| 2 | 560 | w | 367929/500000 | 1/1 | 30969/40000 | 1/1 | 30969/40000 | 1/1 | `(1/1, -217948839203/250000000000); (1/1, -9810967607/10000000000); (1/1, -59557910757/62500000000); (1/1, -132778497/125000000); (1/1, -30969/40000); (1/1, -922761/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 225:179 | FHR | hi | 280828117/1000000000 | vertex maximum 280828117/1000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 778 | quad | FHR + EHR >= 93/125 | quadrilateral RFHE; occupants Q, S |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 225:199 | EHR | lo | 463171/1000000 | 463171883/1000000000 | 778 | 225:179 |

## Stage 226

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ+ |
| Packet | forest:root/ACP-/HEQ+ |
| Index | 2 |
| Context | 92 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 225 |
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
| u | 17183/125000 | 687677/1000000 | 17183/125000 | 687677/1000000 |
| v | 531831/1000000 | 906327/1000000 | 531831/1000000 | 906327/1000000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 30969/40000 | 1/1 | 157327/200000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 561 | AREA_lo_EHR | bitt ["earlier-area",{"direction":"lo","ref":"225:199","triangle":"EHR","value":"463171/1000000"}] | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -463171/1000000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 561 | w | 30969/40000 | 1/1 | 157327/200000 | 1/1 | 157327/200000 | 1/1 | `(1/1, -221051339203/250000000000); (1/1, -9935067607/10000000000); (1/1, -60333535757/62500000000); (1/1, -134329747/125000000); (1/1, -157327/200000); (1/1, -935171/1000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 226:179 | FHR | hi | 6920348219/25000000000 | vertex maximum 6920348219/25000000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 227

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ+ |
| Packet | forest:root/ACP-/HEQ+ |
| Index | 3 |
| Context | 93 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 226 |
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
| u | 17183/125000 | 687677/1000000 | 17183/125000 | 687677/1000000 |
| v | 531831/1000000 | 906327/1000000 | 531831/1000000 | 906327/1000000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 157327/200000 | 1/1 | 157327/200000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 94 | A_EHR | bitt ["actual-area","EHR",["Q","S"]] | `1/1 * w + 1/1 * h * r + -1/1 * h + -1/1 * e * r + -13857/20000` |

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


### Interval contradiction

| Factor | Target | Old lower | Old upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- |
| 94 | e | 40433/125000 | 59/125 | `(-367929/500000, -892257847/10000000000); (-367929/500000, -170357/1000000); (-1/1, 18757/200000); (-367929/500000, 1241392153/10000000000); (-367929/500000, 672/15625); (-1/1, 6143/20000)` |

## Stage 228

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ- |
| Packet | forest:root/ACP-/HEQ- |
| Index | 0 |
| Context | 94 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 223 |
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
| u | 17183/125000 | 170663/200000 | 17183/125000 | 170663/200000 |
| v | 6509/50000 | 906327/1000000 | 6509/50000 | 41721/50000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 90 | A_EHQ | bitt ["actual-area","EHQ",[]] | `-1/1 * v + -1/1 * h * u + 1/1 * h + 1/1 * e * u + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 90 | v | 6509/50000 | 906327/1000000 | 6509/50000 | 13037797/15625000 | 6509/50000 | 41721/50000 | `(-1/1, 34317045181/62500000000); (-1/1, 1423727689/2500000000); (-1/1, 12718760239/15625000000); (-1/1, 13037797/15625000); (-1/1, 28464738541/100000000000); (-1/1, 1645581529/4000000000); (-1/1, 8242542079/25000000000); (-1/1, 5705621/12500000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 228:0 | ABC | lo | 279/1000 | occupants P |
| 228:1 | ABC | hi | 6361203/15625000 | vertex maximum 6361203/15625000 |
| 228:6 | ABH | lo | 93/1000 | occupants none |
| 228:8 | ABP | lo | 93/1000 | occupants none |
| 228:9 | ABP | hi | 221117/1000000 | earlier 223:9; ABP; hi; 221117/1000000 |
| 228:17 | ACE | hi | 59/125 | vertex maximum 59/125 |
| 228:20 | ACH | lo | 93/1000 | occupants none |
| 228:21 | ACH | hi | 84567/125000 | vertex maximum 84567/125000 |
| 228:22 | ACP | lo | 93/1000 | occupants none |
| 228:23 | ACP | hi | 221117/1000000 | earlier 223:23; ACP; hi; 221117/1000000 |
| 228:44 | AFR | lo | 9449/100000 | earlier 223:44; AFR; lo; 9449/100000 |
| 228:50 | AHQ | lo | 93/1000 | occupants none |
| 228:62 | BCE | lo | 93/1000 | occupants none |
| 228:63 | BCE | hi | 6361203/15625000 | vertex maximum 6361203/15625000 |
| 228:66 | BCH | lo | 279/1000 | occupants P |
| 228:67 | BCH | hi | 107817/125000 | vertex maximum 107817/125000 |
| 228:68 | BCP | lo | 93/1000 | occupants none |
| 228:69 | BCP | hi | 221117/1000000 | earlier 223:69; BCP; hi; 221117/1000000 |
| 228:75 | BCS | hi | 23249/31250 | earlier 223:75; BCS; hi; 23249/31250 |
| 228:99 | CEF | hi | 28915167/62500000 | vertex maximum 28915167/62500000 |
| 228:100 | CEH | lo | 279/1000 | occupants Q |
| 228:101 | CEH | hi | 7691471/12500000 | vertex maximum 7691471/12500000 |
| 228:103 | CEP | hi | 349357/1000000 | earlier 223:103; CEP; hi; 349357/1000000 |
| 228:104 | CEQ | lo | 93/1000 | occupants none |
| 228:106 | CER | lo | 93/1000 | occupants none |
| 228:107 | CER | hi | 33634497131/125000000000 | vertex maximum 33634497131/125000000000 |
| 228:110 | CFH | lo | 279/1000 | occupants Q |
| 228:117 | CFR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 228:121 | CHP | hi | 311507/500000 | earlier 223:121; CHP; hi; 311507/500000 |
| 228:122 | CHQ | lo | 93/1000 | occupants none |
| 228:125 | CHR | hi | 1/1 | vertex maximum 1/1 |
| 228:131 | CPR | hi | 740163/1000000 | earlier 223:131; CPR; hi; 740163/1000000 |
| 228:139 | CRS | hi | 38271/100000 | earlier 223:139; CRS; hi; 38271/100000 |
| 228:140 | EFH | lo | 63921/500000 | earlier 223:140; EFH; lo; 63921/500000 |
| 228:141 | EFH | hi | 131050857479/250000000000 | vertex maximum 131050857479/250000000000 |
| 228:146 | EFR | lo | 279/1000 | occupants S |
| 228:152 | EHQ | lo | 93/1000 | occupants none |
| 228:155 | EHR | hi | 84567/125000 | vertex maximum 84567/125000 |
| 228:167 | ERS | hi | 271701/1000000 | earlier 223:165; ERS; hi; 271701/1000000 |
| 228:168 | FHP | lo | 135489/1000000 | earlier 223:166; FHP; lo; 135489/1000000 |
| 228:172 | FHR | lo | 93/1000 | occupants none |
| 228:185 | FRS | hi | 271701/1000000 | earlier 223:183; FRS; hi; 271701/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 2 | fan | CEH = CEQ + EHQ + CHQ | point Q |
| 14 | plu | ABE * BCH = ABC * BEH + ABH * BCE | circuit BACEH |
| 15 | plu | ACE * BCH = ABC * CEH + ACH * BCE | circuit CABEH |
| 416 | plu | CEF * EHR = CEH * EFR + CER * EFH | circuit ECFHR |
| 417 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 649 | quad | BCE + BEH >= 93/125 | quadrilateral BCEH; occupants P, Q |
| 1187 | bary | outer ABC; fans BCP, ACP, ABP; target HPQ; sign -1; vertices AHQ -1; BHQ -1; CHQ -1 | container ABC; inner P; line HQ |
| 1220 | bary | outer CEH; fans EHQ, CHQ, CEQ; target ABQ; sign 1; vertices ABC 1; ABE 1; ABH 1 | container CEH; inner Q; line AB |
| 1221 | bary | outer CEH; fans EHQ, CHQ, CEQ; target ACQ; sign 1; vertices none 0; ACE 1; ACH 1 | container CEH; inner Q; line AC |
| 1224 | bary | outer CEH; fans EHQ, CHQ, CEQ; target BCQ; sign 1; vertices none 0; BCE 1; BCH 1 | container CEH; inner Q; line BC |
| 1225 | bary | outer CEH; fans EHQ, CHQ, CEQ; target BHQ; sign -1; vertices BCH -1; BEH -1; none 0 | container CEH; inner Q; line BH |
| 1231 | bary | outer CEH; fans EHQ, CHQ, CEQ; target CQR; sign 1; vertices none 0; CER -1; CHR 1 | container CEH; inner Q; line CR |
| 1233 | bary | outer CEH; fans EHQ, CHQ, CEQ; target EFQ; sign 1; vertices CEF 1; none 0; EFH 1 | container CEH; inner Q; line EF |
| 1236 | bary | outer CEH; fans EHQ, CHQ, CEQ; target EQR; sign 1; vertices CER 1; none 0; EHR 1 | container CEH; inner Q; line ER |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 228:196 | CEQ | hi | 214659/500000 | 5366471/12500000 | 2 | 228:101, 228:152, 228:122 |
| 228:204 | ACE | lo | 50137/500000 | 14415/143756 | 15 | 228:0, 228:100, 228:20, 228:62, 228:67 |
| 228:206 | CEF | lo | 132631/1000000 | 14955051/112756000 | 416 | 228:100, 228:146, 228:106, 228:140, 228:155 |
| 228:207 | EFH | lo | 13329/100000 | 30058561/225512000 | 417 | 228:206, 228:172, 228:110, 228:146, 228:117 |
| 228:209 | BEH | lo | 336883/1000000 | 5263797/15625000 | 649 | 228:63 |
| 228:221 | ACQ | hi | 54337/100000 | 522413853057/961433875000 | 1221 | 228:101, 228:152, 228:122, 228:104, 228:17, 228:21 |
| 228:223 | BCQ | hi | 663339/1000000 | 637755991707/961433875000 | 1224 | 228:101, 228:152, 228:122, 228:104, 228:63, 228:67 |
| 228:224 | BHQ | lo | 18617/200000 | 57277119/615317680 | 1225 | 228:101, 228:152, 228:122, 228:104, 228:66, 228:209 |
| 228:227 | CQR | hi | 683661/1000000 | 10516717/15382942 | 1231 | 228:101, 228:152, 228:122, 228:104, 228:106, 228:125 |
| 228:229 | EFQ | hi | 435671/1000000 | 837736152736186609/1922867750000000000 | 1233 | 228:101, 228:152, 228:122, 228:104, 228:99, 228:141 |
| 228:230 | EQR | hi | 5127/10000 | 39434116477743/76914710000000 | 1236 | 228:101, 228:152, 228:122, 228:104, 228:107, 228:155 |
| 228:241 | ABE | lo | 118997/1000000 | 34213119/287512000 | 14 | 228:0, 228:209, 228:6, 228:62, 228:67 |
| 228:244 | CEF | lo | 6669/50000 | 3007899/22551200 | 416 | 228:100, 228:146, 228:106, 228:207, 228:155 |
| 228:245 | EFH | lo | 133393/1000000 | 1504089/11275600 | 417 | 228:244, 228:172, 228:110, 228:146, 228:117 |
| 228:247 | HPQ | lo | 93019/1000000 | 1577907719/16963208000 | 1187 | 228:1, 228:68, 228:22, 228:8, 228:50, 228:224, 228:122 |
| 228:249 | ABQ | lo | 125041/1000000 | 1923506631/15382942000 | 1220 | 228:101, 228:152, 228:122, 228:104, 228:0, 228:241, 228:6 |
| 228:252 | CEF | lo | 26679/200000 | 30082183/225512000 | 416 | 228:100, 228:146, 228:106, 228:245, 228:155 |
| 228:253 | EFH | lo | 26679/200000 | 6016449/45102400 | 417 | 228:252, 228:172, 228:110, 228:146, 228:117 |

## Stage 229

| Property | Value |
| --- | --- |
| Scope | root/ACP-/HEQ- |
| Packet | forest:root/ACP-/HEQ- |
| Index | 1 |
| Context | 94 |
| Box present | yes |
| Coarse version | 1 |
| Parent box | 228 |
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
| u | 17183/125000 | 170663/200000 | 17183/125000 | 170663/200000 |
| v | 6509/50000 | 41721/50000 | 6509/50000 | 41721/50000 |
| r | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| w | 367929/500000 | 1/1 | 367929/500000 | 1/1 |
| j | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |
| k | 74799/125000 | 107817/125000 | 74799/125000 | 107817/125000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 229:2 | ABE | lo | 118997/1000000 | earlier 228:241; ABE; lo; 118997/1000000 |
| 229:9 | ABP | hi | 221117/1000000 | earlier 228:9; ABP; hi; 221117/1000000 |
| 229:10 | ABQ | lo | 125041/1000000 | earlier 228:249; ABQ; lo; 125041/1000000 |
| 229:16 | ACE | lo | 50137/500000 | earlier 228:204; ACE; lo; 50137/500000 |
| 229:23 | ACP | hi | 221117/1000000 | earlier 228:23; ACP; hi; 221117/1000000 |
| 229:25 | ACQ | hi | 54337/100000 | earlier 228:221; ACQ; hi; 54337/100000 |
| 229:44 | AFR | lo | 9449/100000 | earlier 228:44; AFR; lo; 9449/100000 |
| 229:69 | BCP | hi | 221117/1000000 | earlier 228:69; BCP; hi; 221117/1000000 |
| 229:71 | BCQ | hi | 663339/1000000 | earlier 228:223; BCQ; hi; 663339/1000000 |
| 229:75 | BCS | hi | 23249/31250 | earlier 228:75; BCS; hi; 23249/31250 |
| 229:78 | BEH | lo | 336883/1000000 | earlier 228:209; BEH; lo; 336883/1000000 |
| 229:98 | CEF | lo | 26679/200000 | earlier 228:252; CEF; lo; 26679/200000 |
| 229:103 | CEP | hi | 349357/1000000 | earlier 228:103; CEP; hi; 349357/1000000 |
| 229:105 | CEQ | hi | 214659/500000 | earlier 228:196; CEQ; hi; 214659/500000 |
| 229:121 | CHP | hi | 311507/500000 | earlier 228:121; CHP; hi; 311507/500000 |
| 229:131 | CPR | hi | 740163/1000000 | earlier 228:131; CPR; hi; 740163/1000000 |
| 229:135 | CQR | hi | 683661/1000000 | earlier 228:227; CQR; hi; 683661/1000000 |
| 229:139 | CRS | hi | 38271/100000 | earlier 228:139; CRS; hi; 38271/100000 |
| 229:140 | EFH | lo | 26679/200000 | earlier 228:253; EFH; lo; 26679/200000 |
| 229:145 | EFQ | hi | 435671/1000000 | earlier 228:229; EFQ; hi; 435671/1000000 |
| 229:163 | EQR | hi | 5127/10000 | earlier 228:230; EQR; hi; 5127/10000 |
| 229:167 | ERS | hi | 271701/1000000 | earlier 228:167; ERS; hi; 271701/1000000 |
| 229:168 | FHP | lo | 135489/1000000 | earlier 228:168; FHP; lo; 135489/1000000 |
| 229:185 | FRS | hi | 271701/1000000 | earlier 228:185; FRS; hi; 271701/1000000 |
| 229:186 | HPQ | lo | 93019/1000000 | earlier 228:247; HPQ; lo; 93019/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
