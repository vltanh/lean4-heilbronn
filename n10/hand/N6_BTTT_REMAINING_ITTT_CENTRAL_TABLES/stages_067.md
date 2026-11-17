# ITTT +--+: literal exact stages

Each factor is proved nonnegative by its printed actual geometry and fixed earlier endpoint sources.

## Stage 335

| Property | Value |
| --- | --- |
| Scope | root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Packet | forest:root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Index | 2 |
| Context | 78 |
| Box present | yes |
| Parent box | 334 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 22579/200000 | 33/125 | 22579/200000 | 33/125 |
| b | 109219/1000000 | 19451/50000 | 109219/1000000 | 19451/50000 |
| c | 461491/1000000 | 932989/1000000 | 461491/1000000 | 932989/1000000 |
| e | 22579/200000 | 33/125 | 22579/200000 | 33/125 |
| f | 22579/200000 | 19451/50000 | 22579/200000 | 19451/50000 |
| h | 287311/500000 | 120549/125000 | 287311/500000 | 120549/125000 |
| p | 8119/40000 | 727989/1000000 | 8119/40000 | 727989/1000000 |
| q | 41179/200000 | 634117/1000000 | 41179/200000 | 158529/250000 |
| u | 401857/500000 | 1/1 | 401857/500000 | 1/1 |
| v | 55957/125000 | 878533/1000000 | 447657/1000000 | 878533/1000000 |
| r | 456389/1000000 | 878533/1000000 | 456389/1000000 | 878533/1000000 |
| w | 161149/200000 | 1/1 | 161149/200000 | 1/1 |
| j | 378867/1000000 | 17067/20000 | 378867/1000000 | 17067/20000 |
| k | 10457/25000 | 838863/1000000 | 418281/1000000 | 838863/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 184 | AREA_lo_AES | earlier 334:332; AES; lo; 152693/500000 | `1/1 * k + -1/1 * a + -1/1 * e * j + 1/1 * a * j + -152693/500000` |
| 325 | AREA_lo_HPQ | earlier 334:373; HPQ; lo; 312849/1000000 | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -312849/1000000` |
| 181 | AREA_lo_AEQ | earlier 334:331; AEQ; lo; 167381/500000 | `1/1 * v + -1/1 * a + -1/1 * e * u + 1/1 * a * u + -167381/500000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 181 | v | 55957/125000 | 878533/1000000 | 447657/1000000 | 878533/1000000 | 447657/1000000 | 878533/1000000 | `(1/1, -447657/1000000); (1/1, -47731679603/100000000000); (1/1, -56910220397/100000000000); (1/1, -299381/500000)` |
| 1 | 184 | k | 10457/25000 | 838863/1000000 | 418281/1000000 | 838863/1000000 | 418281/1000000 | 838863/1000000 | `(1/1, -418281/1000000); (1/1, -102427460393/200000000000); (1/1, -95105939607/200000000000); (1/1, -284693/500000); (1/1, -1761762193/4000000000); (1/1, -2188905807/4000000000)` |
| 2 | 325 | q | 41179/200000 | 634117/1000000 | 41179/200000 | 25364630779/40000000000 | 41179/200000 | 158529/250000 | `(-401857/500000, 123212025233/1000000000000); (-401857/500000, 357362065263/1000000000000); (-401857/500000, 56553622723/1000000000000); (-401857/500000, 86068955973/1000000000000); (-1/1, 1888018233/8000000000); (-1/1, 4373269707/8000000000); (-1/1, 33868775323/200000000000); (-1/1, 55073120817/200000000000); (-401857/500000, 210669081333/1000000000000); (-401857/500000, 444819121363/1000000000000); (-401857/500000, 370226611087/1000000000000); (-401857/500000, 399741944337/1000000000000); (-1/1, 12938373409/40000000000); (-1/1, 25364630779/40000000000); (-1/1, 483016864979/1000000000000); (-1/1, 589038592449/1000000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 335:4 | ABF | lo | 12083/125000 | earlier 334:4; ABF; lo; 12083/125000 |
| 335:8 | ABP | lo | 28449/250000 | earlier 334:8; ABP; lo; 28449/250000 |
| 335:9 | ABP | hi | 71417/250000 | earlier 334:270; ABP; hi; 71417/250000 |
| 335:10 | ABQ | lo | 74949/250000 | earlier 334:10; ABQ; lo; 74949/250000 |
| 335:14 | ABS | lo | 172157/1000000 | earlier 334:300; ABS; lo; 172157/1000000 |
| 335:15 | ABS | hi | 107339/250000 | earlier 334:275; ABS; hi; 107339/250000 |
| 335:20 | ACH | lo | 5609/40000 | earlier 334:341; ACH; lo; 5609/40000 |
| 335:23 | ACP | hi | 127641/250000 | earlier 334:260; ACP; hi; 127641/250000 |
| 335:24 | ACQ | lo | 168173/500000 | earlier 334:370; ACQ; lo; 168173/500000 |
| 335:26 | ACR | lo | 16361/50000 | earlier 334:256; ACR; lo; 16361/50000 |
| 335:28 | ACS | lo | 289599/1000000 | earlier 334:328; ACS; lo; 289599/1000000 |
| 335:29 | ACS | hi | 741211/1000000 | earlier 334:276; ACS; hi; 741211/1000000 |
| 335:30 | AEF | lo | 2287/8000 | earlier 334:329; AEF; lo; 2287/8000 |
| 335:32 | AEH | lo | 15253/50000 | earlier 334:330; AEH; lo; 15253/50000 |
| 335:35 | AEP | hi | 116341/250000 | earlier 334:261; AEP; hi; 116341/250000 |
| 335:36 | AEQ | lo | 167381/500000 | earlier 334:331; AEQ; lo; 167381/500000 |
| 335:40 | AES | lo | 152693/500000 | earlier 334:332; AES; lo; 152693/500000 |
| 335:41 | AES | hi | 140221/200000 | earlier 334:232; AES; hi; 140221/200000 |
| 335:42 | AFH | lo | 93/1000 | occupants none |
| 335:44 | AFP | lo | 3901/40000 | earlier 334:262; AFP; lo; 3901/40000 |
| 335:45 | AFP | hi | 298169/500000 | earlier 334:286; AFP; hi; 298169/500000 |
| 335:46 | AFQ | lo | 352137/1000000 | earlier 334:257; AFQ; lo; 352137/1000000 |
| 335:47 | AFQ | hi | 84931204401/100000000000 | vertex maximum 84931204401/100000000000 |
| 335:48 | AFR | lo | 119201/1000000 | earlier 334:344; AFR; lo; 119201/1000000 |
| 335:50 | AFS | lo | 105589/1000000 | earlier 334:352; AFS; lo; 105589/1000000 |
| 335:52 | AHP | lo | 5953/50000 | earlier 334:281; AHP; lo; 5953/50000 |
| 335:53 | AHP | hi | 149477/250000 | earlier 334:263; AHP; hi; 149477/250000 |
| 335:54 | AHQ | lo | 342151/1000000 | earlier 334:334; AHQ; lo; 342151/1000000 |
| 335:55 | AHQ | hi | 851497/1000000 | vertex maximum 851497/1000000 |
| 335:56 | AHR | lo | 56813/500000 | earlier 334:343; AHR; lo; 56813/500000 |
| 335:58 | AHS | lo | 156151/1000000 | earlier 334:310; AHS; lo; 156151/1000000 |
| 335:59 | AHS | hi | 665497/1000000 | earlier 334:234; AHS; hi; 665497/1000000 |
| 335:61 | APQ | hi | 29627/100000 | earlier 334:231; APQ; hi; 29627/100000 |
| 335:62 | APR | lo | 3689/31250 | earlier 334:242; APR; lo; 3689/31250 |
| 335:63 | APR | hi | 139657/250000 | earlier 334:264; APR; hi; 139657/250000 |
| 335:65 | APS | hi | 344723/1000000 | earlier 334:378; APS; hi; 344723/1000000 |
| 335:68 | AQS | lo | 93/1000 | occupants none |
| 335:69 | AQS | hi | 81221/200000 | earlier 334:362; AQS; hi; 81221/200000 |
| 335:71 | ARS | hi | 488719/1000000 | earlier 334:333; ARS; hi; 488719/1000000 |
| 335:74 | BCF | lo | 150391/500000 | earlier 334:74; BCF; lo; 150391/500000 |
| 335:76 | BCH | lo | 157421/1000000 | earlier 334:76; BCH; lo; 157421/1000000 |
| 335:78 | BCP | lo | 57391/500000 | earlier 334:78; BCP; lo; 57391/500000 |
| 335:79 | BCP | hi | 248167/500000 | earlier 334:265; BCP; hi; 248167/500000 |
| 335:80 | BCQ | lo | 158693/1000000 | earlier 334:80; BCQ; lo; 158693/1000000 |
| 335:82 | BCR | lo | 4653/31250 | earlier 334:342; BCR; lo; 4653/31250 |
| 335:86 | BEF | lo | 5627/20000 | earlier 334:335; BEF; lo; 5627/20000 |
| 335:88 | BEH | lo | 77233/250000 | earlier 334:336; BEH; lo; 77233/250000 |
| 335:92 | BEQ | lo | 4709/31250 | earlier 334:92; BEQ; lo; 4709/31250 |
| 335:94 | BER | lo | 138849/500000 | earlier 334:94; BER; lo; 138849/500000 |
| 335:101 | BFP | hi | 502227/1000000 | earlier 334:380; BFP; hi; 502227/1000000 |
| 335:104 | BFR | lo | 30787/200000 | earlier 334:246; BFR; lo; 30787/200000 |
| 335:106 | BFS | lo | 8337/62500 | earlier 334:245; BFS; lo; 8337/62500 |
| 335:107 | BFS | hi | 674199/1000000 | earlier 334:278; BFS; hi; 674199/1000000 |
| 335:108 | BHP | lo | 30733/250000 | earlier 334:243; BHP; lo; 30733/250000 |
| 335:109 | BHP | hi | 274583/500000 | earlier 334:374; BHP; hi; 274583/500000 |
| 335:112 | BHR | lo | 155143/1000000 | earlier 334:346; BHR; lo; 155143/1000000 |
| 335:117 | BPQ | hi | 29627/100000 | earlier 334:230; BPQ; hi; 29627/100000 |
| 335:118 | BQR | lo | 56437/250000 | earlier 334:255; BQR; lo; 56437/250000 |
| 335:122 | CEF | lo | 131101/1000000 | earlier 334:348; CEF; lo; 131101/1000000 |
| 335:124 | CEH | lo | 149533/500000 | earlier 334:124; CEH; lo; 149533/500000 |
| 335:126 | CEP | lo | 56533/500000 | earlier 334:126; CEP; lo; 56533/500000 |
| 335:127 | CEP | hi | 34857/100000 | earlier 334:271; CEP; hi; 34857/100000 |
| 335:130 | CER | lo | 19091/200000 | earlier 334:239; CER; lo; 19091/200000 |
| 335:132 | CES | lo | 7893/62500 | earlier 334:317; CES; lo; 7893/62500 |
| 335:133 | CES | hi | 454341/1000000 | earlier 334:273; CES; hi; 454341/1000000 |
| 335:134 | CFH | lo | 7659/25000 | earlier 334:371; CFH; lo; 7659/25000 |
| 335:137 | CFP | hi | 79237/250000 | earlier 334:361; CFP; hi; 79237/250000 |
| 335:138 | CFQ | lo | 77531/250000 | earlier 334:337; CFQ; lo; 77531/250000 |
| 335:140 | CFR | lo | 34891/200000 | earlier 334:377; CFR; lo; 34891/200000 |
| 335:143 | CFS | hi | 537263/1000000 | earlier 334:318; CFS; hi; 537263/1000000 |
| 335:145 | CHP | hi | 407053/1000000 | earlier 334:359; CHP; hi; 407053/1000000 |
| 335:148 | CHR | lo | 155663/500000 | earlier 334:384; CHR; lo; 155663/500000 |
| 335:150 | CHS | lo | 353983/1000000 | earlier 334:311; CHS; lo; 353983/1000000 |
| 335:151 | CHS | hi | 353683/500000 | earlier 334:357; CHS; hi; 353683/500000 |
| 335:152 | CPQ | lo | 75173/500000 | earlier 334:350; CPQ; lo; 75173/500000 |
| 335:153 | CPQ | hi | 12973/25000 | earlier 334:375; CPQ; hi; 12973/25000 |
| 335:155 | CPR | hi | 496299/1000000 | earlier 334:381; CPR; hi; 496299/1000000 |
| 335:156 | CPS | lo | 103599/1000000 | earlier 334:312; CPS; lo; 103599/1000000 |
| 335:157 | CPS | hi | 88113/250000 | earlier 334:383; CPS; hi; 88113/250000 |
| 335:158 | CQR | lo | 24051/250000 | earlier 334:349; CQR; lo; 24051/250000 |
| 335:160 | CQS | lo | 31031/250000 | earlier 334:320; CQS; lo; 31031/250000 |
| 335:161 | CQS | hi | 238893/500000 | earlier 334:339; CQS; hi; 238893/500000 |
| 335:162 | EFH | lo | 34463/250000 | earlier 334:250; EFH; lo; 34463/250000 |
| 335:168 | EFR | lo | 76179/250000 | earlier 334:168; EFR; lo; 76179/250000 |
| 335:171 | EFS | hi | 222453/500000 | earlier 334:321; EFS; hi; 222453/500000 |
| 335:173 | EHP | hi | 428281/1000000 | earlier 334:287; EHP; hi; 428281/1000000 |
| 335:179 | EHS | hi | 526533/1000000 | earlier 334:322; EHS; hi; 526533/1000000 |
| 335:180 | EPQ | lo | 74381/500000 | earlier 334:288; EPQ; lo; 74381/500000 |
| 335:181 | EPQ | hi | 115321/200000 | earlier 334:297; EPQ; hi; 115321/200000 |
| 335:182 | EPR | lo | 181527/1000000 | earlier 334:267; EPR; lo; 181527/1000000 |
| 335:183 | EPR | hi | 127919/200000 | earlier 334:382; EPR; hi; 127919/200000 |
| 335:184 | EPS | lo | 59693/500000 | earlier 334:268; EPS; lo; 59693/500000 |
| 335:185 | EPS | hi | 43969/100000 | earlier 334:358; EPS; hi; 43969/100000 |
| 335:189 | EQS | hi | 439263/1000000 | earlier 334:364; EQS; hi; 439263/1000000 |
| 335:192 | FHP | lo | 3009/25000 | earlier 334:355; FHP; lo; 3009/25000 |
| 335:193 | FHP | hi | 397749/1000000 | earlier 334:282; FHP; hi; 397749/1000000 |
| 335:194 | FHQ | lo | 1643/15625 | earlier 334:351; FHQ; lo; 1643/15625 |
| 335:198 | FHS | lo | 48851/500000 | earlier 334:274; FHS; lo; 48851/500000 |
| 335:199 | FHS | hi | 393543/1000000 | earlier 334:323; FHS; hi; 393543/1000000 |
| 335:200 | FPQ | lo | 283723/1000000 | earlier 334:340; FPQ; lo; 283723/1000000 |
| 335:201 | FPQ | hi | 662671/1000000 | earlier 334:289; FPQ; hi; 662671/1000000 |
| 335:204 | FPS | lo | 97723/1000000 | earlier 334:280; FPS; lo; 97723/1000000 |
| 335:205 | FPS | hi | 27199/62500 | earlier 334:360; FPS; hi; 27199/62500 |
| 335:209 | FQS | hi | 7371/15625 | earlier 334:366; FQS; hi; 7371/15625 |
| 335:210 | FRS | lo | 29679/250000 | earlier 334:210; FRS; lo; 29679/250000 |
| 335:212 | HPQ | lo | 312849/1000000 | earlier 334:373; HPQ; lo; 312849/1000000 |
| 335:213 | HPQ | hi | 631761/1000000 | earlier 334:292; HPQ; hi; 631761/1000000 |
| 335:214 | HPR | lo | 62663/500000 | earlier 334:379; HPR; lo; 62663/500000 |
| 335:215 | HPR | hi | 154357/250000 | earlier 334:293; HPR; hi; 154357/250000 |
| 335:216 | HPS | lo | 126849/1000000 | earlier 334:368; HPS; lo; 126849/1000000 |
| 335:217 | HPS | hi | 445761/1000000 | earlier 334:324; HPS; hi; 445761/1000000 |
| 335:218 | HQR | lo | 99167/1000000 | earlier 334:376; HQR; lo; 99167/1000000 |
| 335:220 | HQS | lo | 93/1000 | occupants none |
| 335:221 | HQS | hi | 51489/125000 | earlier 334:369; HQS; hi; 51489/125000 |
| 335:223 | HRS | hi | 252927/500000 | earlier 334:315; HRS; hi; 252927/500000 |
| 335:224 | PQR | lo | 1948/15625 | earlier 334:224; PQR; lo; 1948/15625 |
| 335:225 | PQR | hi | 243181/500000 | earlier 334:309; PQR; hi; 243181/500000 |
| 335:227 | PQS | hi | 61333/200000 | earlier 334:294; PQS; hi; 61333/200000 |
| 335:229 | QRS | hi | 334331/1000000 | earlier 334:367; QRS; hi; 334331/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 2699 | bary | outer AHQ; fans HQS, AQS, AHS; target AFS; sign -1; vertices none 0; AFH 1; AFQ -1 | container AHQ; inner S; line AF |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 335:230 | AFS | hi | 10213/15625 | 55656561735252297/85149700000000000 | 2699 | 335:55, 335:220, 335:68, 335:58, 335:42, 335:47 |

## Stage 336

| Property | Value |
| --- | --- |
| Scope | root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Packet | forest:root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Index | 3 |
| Context | 78 |
| Box present | yes |
| Parent box | 335 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 22579/200000 | 33/125 | 22579/200000 | 33/125 |
| b | 109219/1000000 | 19451/50000 | 109219/1000000 | 19451/50000 |
| c | 461491/1000000 | 932989/1000000 | 461491/1000000 | 932989/1000000 |
| e | 22579/200000 | 33/125 | 22579/200000 | 33/125 |
| f | 22579/200000 | 19451/50000 | 22579/200000 | 19451/50000 |
| h | 287311/500000 | 120549/125000 | 287311/500000 | 120549/125000 |
| p | 8119/40000 | 727989/1000000 | 8119/40000 | 727989/1000000 |
| q | 41179/200000 | 158529/250000 | 41179/200000 | 158529/250000 |
| u | 401857/500000 | 1/1 | 401857/500000 | 1/1 |
| v | 447657/1000000 | 878533/1000000 | 447657/1000000 | 878533/1000000 |
| r | 456389/1000000 | 878533/1000000 | 456389/1000000 | 878533/1000000 |
| w | 161149/200000 | 1/1 | 161149/200000 | 1/1 |
| j | 378867/1000000 | 17067/20000 | 378867/1000000 | 17067/20000 |
| k | 418281/1000000 | 838863/1000000 | 418281/1000000 | 838863/1000000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 336:0 | ABC | lo | 93/1000 | occupants none |
| 336:1 | ABC | hi | 2718441/12500000 | vertex maximum 2718441/12500000 |
| 336:2 | ABE | lo | 93/1000 | occupants none |
| 336:3 | ABE | hi | 33/125 | vertex maximum 33/125 |
| 336:4 | ABF | lo | 12083/125000 | earlier 335:4; ABF; lo; 12083/125000 |
| 336:5 | ABF | hi | 19451/50000 | vertex maximum 19451/50000 |
| 336:6 | ABH | lo | 93/1000 | occupants none |
| 336:7 | ABH | hi | 16562468147/50000000000 | vertex maximum 16562468147/50000000000 |
| 336:8 | ABP | lo | 28449/250000 | earlier 335:8; ABP; lo; 28449/250000 |
| 336:9 | ABP | hi | 71417/250000 | earlier 335:9; ABP; hi; 71417/250000 |
| 336:10 | ABQ | lo | 74949/250000 | earlier 335:10; ABQ; lo; 74949/250000 |
| 336:11 | ABQ | hi | 25153281383/50000000000 | vertex maximum 25153281383/50000000000 |
| 336:12 | ABR | lo | 93/1000 | occupants none |
| 336:13 | ABR | hi | 64781429/125000000 | vertex maximum 64781429/125000000 |
| 336:14 | ABS | lo | 172157/1000000 | earlier 335:14; ABS; lo; 172157/1000000 |
| 336:15 | ABS | hi | 107339/250000 | earlier 335:15; ABS; hi; 107339/250000 |
| 336:16 | ACE | lo | 93/1000 | occupants none |
| 336:17 | ACE | hi | 33/125 | vertex maximum 33/125 |
| 336:20 | ACH | lo | 5609/40000 | earlier 335:20; ACH; lo; 5609/40000 |
| 336:21 | ACH | hi | 794437334533/1000000000000 | vertex maximum 794437334533/1000000000000 |
| 336:22 | ACP | lo | 93/1000 | occupants none |
| 336:23 | ACP | hi | 127641/250000 | earlier 335:23; ACP; hi; 127641/250000 |
| 336:24 | ACQ | lo | 168173/500000 | earlier 335:24; ACQ; lo; 168173/500000 |
| 336:25 | ACQ | hi | 837352529137/1000000000000 | vertex maximum 837352529137/1000000000000 |
| 336:26 | ACR | lo | 16361/50000 | earlier 335:26; ACR; lo; 16361/50000 |
| 336:27 | ACR | hi | 23171029747/25000000000 | vertex maximum 23171029747/25000000000 |
| 336:28 | ACS | lo | 289599/1000000 | earlier 335:28; ACS; lo; 289599/1000000 |
| 336:29 | ACS | hi | 741211/1000000 | earlier 335:29; ACS; hi; 741211/1000000 |
| 336:30 | AEF | lo | 2287/8000 | earlier 335:30; AEF; lo; 2287/8000 |
| 336:31 | AEF | hi | 177421/200000 | vertex maximum 177421/200000 |
| 336:32 | AEH | lo | 15253/50000 | earlier 335:32; AEH; lo; 15253/50000 |
| 336:33 | AEH | hi | 851497/1000000 | vertex maximum 851497/1000000 |
| 336:34 | AEP | lo | 93/1000 | occupants none |
| 336:35 | AEP | hi | 116341/250000 | earlier 335:35; AEP; hi; 116341/250000 |
| 336:36 | AEQ | lo | 167381/500000 | earlier 335:36; AEQ; lo; 167381/500000 |
| 336:37 | AEQ | hi | 382819/500000 | vertex maximum 382819/500000 |
| 336:38 | AER | lo | 13857/20000 | occupants P, S |
| 336:39 | AER | hi | 177421/200000 | vertex maximum 177421/200000 |
| 336:40 | AES | lo | 152693/500000 | earlier 335:40; AES; lo; 152693/500000 |
| 336:41 | AES | hi | 140221/200000 | earlier 335:41; AES; hi; 140221/200000 |
| 336:42 | AFH | lo | 93/1000 | occupants none |
| 336:43 | AFH | hi | 16562468147/50000000000 | vertex maximum 16562468147/50000000000 |
| 336:44 | AFP | lo | 3901/40000 | earlier 335:44; AFP; lo; 3901/40000 |
| 336:45 | AFP | hi | 298169/500000 | earlier 335:45; AFP; hi; 298169/500000 |
| 336:46 | AFQ | lo | 352137/1000000 | earlier 335:46; AFQ; lo; 352137/1000000 |
| 336:47 | AFQ | hi | 84931204401/100000000000 | vertex maximum 84931204401/100000000000 |
| 336:48 | AFR | lo | 119201/1000000 | earlier 335:48; AFR; lo; 119201/1000000 |
| 336:49 | AFR | hi | 140226343243/200000000000 | vertex maximum 140226343243/200000000000 |
| 336:50 | AFS | lo | 105589/1000000 | earlier 335:50; AFS; lo; 105589/1000000 |
| 336:51 | AFS | hi | 10213/15625 | earlier 335:230; AFS; hi; 10213/15625 |
| 336:52 | AHP | lo | 5953/50000 | earlier 335:52; AHP; lo; 5953/50000 |
| 336:53 | AHP | hi | 149477/250000 | earlier 335:53; AHP; hi; 149477/250000 |
| 336:54 | AHQ | lo | 342151/1000000 | earlier 335:54; AHQ; lo; 342151/1000000 |
| 336:55 | AHQ | hi | 851497/1000000 | vertex maximum 851497/1000000 |
| 336:56 | AHR | lo | 56813/500000 | earlier 335:56; AHR; lo; 56813/500000 |
| 336:57 | AHR | hi | 748068213901/1000000000000 | vertex maximum 748068213901/1000000000000 |
| 336:58 | AHS | lo | 156151/1000000 | earlier 335:58; AHS; lo; 156151/1000000 |
| 336:59 | AHS | hi | 665497/1000000 | earlier 335:59; AHS; hi; 665497/1000000 |
| 336:60 | APQ | lo | 93/1000 | occupants none |
| 336:61 | APQ | hi | 29627/100000 | earlier 335:61; APQ; hi; 29627/100000 |
| 336:62 | APR | lo | 3689/31250 | earlier 335:62; APR; lo; 3689/31250 |
| 336:63 | APR | hi | 139657/250000 | earlier 335:63; APR; hi; 139657/250000 |
| 336:64 | APS | lo | 93/1000 | occupants none |
| 336:65 | APS | hi | 344723/1000000 | earlier 335:65; APS; hi; 344723/1000000 |
| 336:66 | AQR | lo | 279/1000 | occupants S |
| 336:67 | AQR | hi | 367161652791/500000000000 | vertex maximum 367161652791/500000000000 |
| 336:68 | AQS | lo | 93/1000 | occupants none |
| 336:69 | AQS | hi | 81221/200000 | earlier 335:69; AQS; hi; 81221/200000 |
| 336:70 | ARS | lo | 93/1000 | occupants none |
| 336:71 | ARS | hi | 488719/1000000 | earlier 335:71; ARS; hi; 488719/1000000 |
| 336:72 | BCE | lo | 93/1000 | occupants none |
| 336:73 | BCE | hi | 2718441/12500000 | vertex maximum 2718441/12500000 |
| 336:74 | BCF | lo | 150391/500000 | earlier 335:74; BCF; lo; 150391/500000 |
| 336:75 | BCF | hi | 82377/100000 | vertex maximum 82377/100000 |
| 336:76 | BCH | lo | 157421/1000000 | earlier 335:76; BCH; lo; 157421/1000000 |
| 336:77 | BCH | hi | 9930464973/12500000000 | vertex maximum 9930464973/12500000000 |
| 336:78 | BCP | lo | 57391/500000 | earlier 335:78; BCP; lo; 57391/500000 |
| 336:79 | BCP | hi | 248167/500000 | earlier 335:79; BCP; hi; 248167/500000 |
| 336:80 | BCQ | lo | 158693/1000000 | earlier 335:80; BCQ; lo; 158693/1000000 |
| 336:81 | BCQ | hi | 72370912941/100000000000 | vertex maximum 72370912941/100000000000 |
| 336:82 | BCR | lo | 4653/31250 | earlier 335:82; BCR; lo; 4653/31250 |
| 336:83 | BCR | hi | 82377/100000 | vertex maximum 82377/100000 |
| 336:86 | BEF | lo | 5627/20000 | earlier 335:86; BEF; lo; 5627/20000 |
| 336:88 | BEH | lo | 77233/250000 | earlier 335:88; BEH; lo; 77233/250000 |
| 336:89 | BEH | hi | 110986985769/125000000000 | vertex maximum 110986985769/125000000000 |
| 336:92 | BEQ | lo | 4709/31250 | earlier 335:92; BEQ; lo; 4709/31250 |
| 336:93 | BEQ | hi | 44010968203/62500000000 | vertex maximum 44010968203/62500000000 |
| 336:94 | BER | lo | 138849/500000 | earlier 335:94; BER; lo; 138849/500000 |
| 336:95 | BER | hi | 17031744857/20000000000 | vertex maximum 17031744857/20000000000 |
| 336:98 | BFH | lo | 93/1000 | occupants none |
| 336:99 | BFH | hi | 19451/50000 | vertex maximum 19451/50000 |
| 336:100 | BFP | lo | 93/1000 | occupants none |
| 336:101 | BFP | hi | 502227/1000000 | earlier 335:101; BFP; hi; 502227/1000000 |
| 336:102 | BFQ | lo | 13857/20000 | occupants P, S |
| 336:103 | BFQ | hi | 222283853217/250000000000 | vertex maximum 222283853217/250000000000 |
| 336:104 | BFR | lo | 30787/200000 | earlier 335:104; BFR; lo; 30787/200000 |
| 336:105 | BFR | hi | 38317604069/50000000000 | vertex maximum 38317604069/50000000000 |
| 336:106 | BFS | lo | 8337/62500 | earlier 335:106; BFS; lo; 8337/62500 |
| 336:107 | BFS | hi | 674199/1000000 | earlier 335:107; BFS; hi; 674199/1000000 |
| 336:108 | BHP | lo | 30733/250000 | earlier 335:108; BHP; lo; 30733/250000 |
| 336:109 | BHP | hi | 274583/500000 | earlier 335:109; BHP; hi; 274583/500000 |
| 336:110 | BHQ | lo | 13857/20000 | occupants P, S |
| 336:111 | BHQ | hi | 955014565879/1000000000000 | vertex maximum 955014565879/1000000000000 |
| 336:112 | BHR | lo | 155143/1000000 | earlier 335:112; BHR; lo; 155143/1000000 |
| 336:113 | BHR | hi | 107637802637/125000000000 | vertex maximum 107637802637/125000000000 |
| 336:116 | BPQ | lo | 93/1000 | occupants none |
| 336:117 | BPQ | hi | 29627/100000 | earlier 335:117; BPQ; hi; 29627/100000 |
| 336:118 | BQR | lo | 56437/250000 | earlier 335:118; BQR; lo; 56437/250000 |
| 336:119 | BQR | hi | 73536791931/100000000000 | vertex maximum 73536791931/100000000000 |
| 336:122 | CEF | lo | 131101/1000000 | earlier 335:122; CEF; lo; 131101/1000000 |
| 336:123 | CEF | hi | 78817293/125000000 | vertex maximum 78817293/125000000 |
| 336:124 | CEH | lo | 149533/500000 | earlier 335:124; CEH; lo; 149533/500000 |
| 336:125 | CEH | hi | 80145924441/125000000000 | vertex maximum 80145924441/125000000000 |
| 336:126 | CEP | lo | 56533/500000 | earlier 335:126; CEP; lo; 56533/500000 |
| 336:127 | CEP | hi | 34857/100000 | earlier 335:127; CEP; hi; 34857/100000 |
| 336:128 | CEQ | lo | 93/1000 | occupants none |
| 336:129 | CEQ | hi | 27153916357/62500000000 | vertex maximum 27153916357/62500000000 |
| 336:130 | CER | lo | 19091/200000 | earlier 335:130; CER; lo; 19091/200000 |
| 336:131 | CER | hi | 67481991/125000000 | vertex maximum 67481991/125000000 |
| 336:132 | CES | lo | 7893/62500 | earlier 335:132; CES; lo; 7893/62500 |
| 336:133 | CES | hi | 454341/1000000 | earlier 335:133; CES; hi; 454341/1000000 |
| 336:134 | CFH | lo | 7659/25000 | earlier 335:134; CFH; lo; 7659/25000 |
| 336:135 | CFH | hi | 310206222641/500000000000 | vertex maximum 310206222641/500000000000 |
| 336:136 | CFP | lo | 93/1000 | occupants none |
| 336:137 | CFP | hi | 79237/250000 | earlier 335:137; CFP; hi; 79237/250000 |
| 336:138 | CFQ | lo | 77531/250000 | earlier 335:138; CFQ; lo; 77531/250000 |
| 336:139 | CFQ | hi | 211190522417/250000000000 | vertex maximum 211190522417/250000000000 |
| 336:140 | CFR | lo | 34891/200000 | earlier 335:140; CFR; lo; 34891/200000 |
| 336:141 | CFR | hi | 382819/500000 | vertex maximum 382819/500000 |
| 336:142 | CFS | lo | 93/1000 | occupants none |
| 336:143 | CFS | hi | 537263/1000000 | earlier 335:143; CFS; hi; 537263/1000000 |
| 336:144 | CHP | lo | 93/1000 | occupants none |
| 336:145 | CHP | hi | 407053/1000000 | earlier 335:145; CHP; hi; 407053/1000000 |
| 336:146 | CHQ | lo | 13857/20000 | occupants P, S |
| 336:147 | CHQ | hi | 924768844231/1000000000000 | vertex maximum 924768844231/1000000000000 |
| 336:148 | CHR | lo | 155663/500000 | earlier 335:148; CHR; lo; 155663/500000 |
| 336:149 | CHR | hi | 56356086523/62500000000 | vertex maximum 56356086523/62500000000 |
| 336:150 | CHS | lo | 353983/1000000 | earlier 335:150; CHS; lo; 353983/1000000 |
| 336:151 | CHS | hi | 353683/500000 | earlier 335:151; CHS; hi; 353683/500000 |
| 336:152 | CPQ | lo | 75173/500000 | earlier 335:152; CPQ; lo; 75173/500000 |
| 336:153 | CPQ | hi | 12973/25000 | earlier 335:153; CPQ; hi; 12973/25000 |
| 336:154 | CPR | lo | 93/1000 | occupants none |
| 336:155 | CPR | hi | 496299/1000000 | earlier 335:155; CPR; hi; 496299/1000000 |
| 336:156 | CPS | lo | 103599/1000000 | earlier 335:156; CPS; lo; 103599/1000000 |
| 336:157 | CPS | hi | 88113/250000 | earlier 335:157; CPS; hi; 88113/250000 |
| 336:158 | CQR | lo | 24051/250000 | earlier 335:158; CQR; lo; 24051/250000 |
| 336:159 | CQR | hi | 271495637683/500000000000 | vertex maximum 271495637683/500000000000 |
| 336:160 | CQS | lo | 31031/250000 | earlier 335:160; CQS; lo; 31031/250000 |
| 336:161 | CQS | hi | 238893/500000 | earlier 335:161; CQS; hi; 238893/500000 |
| 336:162 | EFH | lo | 34463/250000 | earlier 335:162; EFH; lo; 34463/250000 |
| 336:163 | EFH | hi | 30249951877/50000000000 | vertex maximum 30249951877/50000000000 |
| 336:166 | EFQ | lo | 279/1000 | occupants S |
| 336:167 | EFQ | hi | 67920129799/100000000000 | vertex maximum 67920129799/100000000000 |
| 336:168 | EFR | lo | 76179/250000 | earlier 335:168; EFR; lo; 76179/250000 |
| 336:169 | EFR | hi | 67920129799/100000000000 | vertex maximum 67920129799/100000000000 |
| 336:170 | EFS | lo | 93/1000 | occupants none |
| 336:171 | EFS | hi | 222453/500000 | earlier 335:171; EFS; hi; 222453/500000 |
| 336:172 | EHP | lo | 93/1000 | occupants none |
| 336:173 | EHP | hi | 428281/1000000 | earlier 335:173; EHP; hi; 428281/1000000 |
| 336:174 | EHQ | lo | 279/1000 | occupants S |
| 336:175 | EHQ | hi | 382819/500000 | vertex maximum 382819/500000 |
| 336:176 | EHR | lo | 279/1000 | occupants S |
| 336:177 | EHR | hi | 831020406491/1000000000000 | vertex maximum 831020406491/1000000000000 |
| 336:178 | EHS | lo | 93/1000 | occupants none |
| 336:179 | EHS | hi | 526533/1000000 | earlier 335:179; EHS; hi; 526533/1000000 |
| 336:180 | EPQ | lo | 74381/500000 | earlier 335:180; EPQ; lo; 74381/500000 |
| 336:181 | EPQ | hi | 115321/200000 | earlier 335:181; EPQ; hi; 115321/200000 |
| 336:182 | EPR | lo | 181527/1000000 | earlier 335:182; EPR; lo; 181527/1000000 |
| 336:183 | EPR | hi | 127919/200000 | earlier 335:183; EPR; hi; 127919/200000 |
| 336:184 | EPS | lo | 59693/500000 | earlier 335:184; EPS; lo; 59693/500000 |
| 336:185 | EPS | hi | 43969/100000 | earlier 335:185; EPS; hi; 43969/100000 |
| 336:186 | EQR | lo | 93/1000 | occupants none |
| 336:187 | EQR | hi | 208104619409/500000000000 | vertex maximum 208104619409/500000000000 |
| 336:188 | EQS | lo | 93/1000 | occupants none |
| 336:189 | EQS | hi | 439263/1000000 | earlier 335:189; EQS; hi; 439263/1000000 |
| 336:190 | ERS | lo | 93/1000 | occupants none |
| 336:192 | FHP | lo | 3009/25000 | earlier 335:192; FHP; lo; 3009/25000 |
| 336:193 | FHP | hi | 397749/1000000 | earlier 335:193; FHP; hi; 397749/1000000 |
| 336:194 | FHQ | lo | 1643/15625 | earlier 335:194; FHQ; lo; 1643/15625 |
| 336:195 | FHQ | hi | 4747699243/10000000000 | vertex maximum 4747699243/10000000000 |
| 336:196 | FHR | lo | 93/1000 | occupants none |
| 336:197 | FHR | hi | 347615979389/1000000000000 | vertex maximum 347615979389/1000000000000 |
| 336:198 | FHS | lo | 48851/500000 | earlier 335:198; FHS; lo; 48851/500000 |
| 336:199 | FHS | hi | 393543/1000000 | earlier 335:199; FHS; hi; 393543/1000000 |
| 336:200 | FPQ | lo | 283723/1000000 | earlier 335:200; FPQ; lo; 283723/1000000 |
| 336:201 | FPQ | hi | 662671/1000000 | earlier 335:201; FPQ; hi; 662671/1000000 |
| 336:204 | FPS | lo | 97723/1000000 | earlier 335:204; FPS; lo; 97723/1000000 |
| 336:205 | FPS | hi | 27199/62500 | earlier 335:205; FPS; hi; 27199/62500 |
| 336:206 | FQR | lo | 93/1000 | occupants none |
| 336:207 | FQR | hi | 211447394917/500000000000 | vertex maximum 211447394917/500000000000 |
| 336:208 | FQS | lo | 93/1000 | occupants none |
| 336:209 | FQS | hi | 7371/15625 | earlier 335:209; FQS; hi; 7371/15625 |
| 336:210 | FRS | lo | 29679/250000 | earlier 335:210; FRS; lo; 29679/250000 |
| 336:211 | FRS | hi | 222693085861/500000000000 | vertex maximum 222693085861/500000000000 |
| 336:212 | HPQ | lo | 312849/1000000 | earlier 335:212; HPQ; lo; 312849/1000000 |
| 336:213 | HPQ | hi | 631761/1000000 | earlier 335:213; HPQ; hi; 631761/1000000 |
| 336:214 | HPR | lo | 62663/500000 | earlier 335:214; HPR; lo; 62663/500000 |
| 336:215 | HPR | hi | 154357/250000 | earlier 335:215; HPR; hi; 154357/250000 |
| 336:216 | HPS | lo | 126849/1000000 | earlier 335:216; HPS; lo; 126849/1000000 |
| 336:217 | HPS | hi | 445761/1000000 | earlier 335:217; HPS; hi; 445761/1000000 |
| 336:218 | HQR | lo | 99167/1000000 | earlier 335:218; HQR; lo; 99167/1000000 |
| 336:219 | HQR | hi | 107384188469/200000000000 | vertex maximum 107384188469/200000000000 |
| 336:220 | HQS | lo | 93/1000 | occupants none |
| 336:221 | HQS | hi | 51489/125000 | earlier 335:221; HQS; hi; 51489/125000 |
| 336:222 | HRS | lo | 93/1000 | occupants none |
| 336:223 | HRS | hi | 252927/500000 | earlier 335:223; HRS; hi; 252927/500000 |
| 336:224 | PQR | lo | 1948/15625 | earlier 335:224; PQR; lo; 1948/15625 |
| 336:225 | PQR | hi | 243181/500000 | earlier 335:225; PQR; hi; 243181/500000 |
| 336:226 | PQS | lo | 93/1000 | occupants none |
| 336:227 | PQS | hi | 61333/200000 | earlier 335:227; PQS; hi; 61333/200000 |
| 336:228 | QRS | lo | 93/1000 | occupants none |
| 336:229 | QRS | hi | 334331/1000000 | earlier 335:229; QRS; hi; 334331/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 39 | plu | ABE * ACH = ABC * AEH + ABH * ACE | circuit ABCEH |
| 40 | plu | ABE * BCH = ABC * BEH + ABH * BCE | circuit BACEH |
| 44 | plu | ABE * ACP = ABC * AEP + ABP * ACE | circuit ABCEP |
| 57 | plu | ACE * BER = ABE * CER + AER * BCE | circuit EABCR |
| 154 | plu | ABP * AEH = ABE * AHP + ABH * AEP | circuit ABEHP |
| 159 | plu | ABQ * AEH = ABE * AHQ + ABH * AEQ | circuit ABEHQ |
| 160 | plu | ABQ * BEH = ABE * BHQ + ABH * BEQ | circuit BAEHQ |
| 169 | plu | ABS * AEH = ABE * AHS + ABH * AES | circuit ABEHS |
| 195 | plu | ABF * AHP = ABH * AFP + ABP * AFH | circuit ABFHP |
| 200 | plu | ABF * AHQ = ABH * AFQ + ABQ * AFH | circuit ABFHQ |
| 201 | plu | ABF * BHQ = ABH * BFQ + ABQ * BFH | circuit BAFHQ |
| 203 | plu | AHQ * BFH = ABH * FHQ + AFH * BHQ | circuit HABFQ |
| 208 | plu | AHR * BFH = ABH * FHR + AFH * BHR | circuit HABFR |
| 215 | plu | ABQ * AFP = ABF * APQ + ABP * AFQ | circuit ABFPQ |
| 246 | plu | ABR * BHQ = ABH * BQR + ABQ * BHR | circuit BAHQR |
| 257 | plu | ABQ * APR = ABP * AQR + ABR * APQ | circuit ABPQR |
| 258 | plu | ABQ * PQR = APQ * BQR + AQR * BPQ | circuit QABPR |
| 262 | plu | ABS * AQR = ABQ * ARS + ABR * AQS | circuit ABQRS |
| 296 | plu | AEQ * CEH = ACE * EHQ + AEH * CEQ | circuit EACHQ |
| 311 | plu | AEQ * CEP = ACE * EPQ + AEP * CEQ | circuit EACPQ |
| 349 | plu | AHR * CFH = ACH * FHR + AFH * CHR | circuit HACFR |
| 401 | plu | AQR * CHQ = ACQ * HQR + AHQ * CQR | circuit QACHR |
| 406 | plu | AHQ * CQS = ACQ * HQS + AQS * CHQ | circuit QACHS |
| 421 | plu | ACS * AQR = ACQ * ARS + ACR * AQS | circuit ACQRS |
| 437 | plu | AFR * EHR = AER * FHR + AHR * EFR | circuit RAEFH |
| 476 | plu | AHP * EPQ = AEP * HPQ + APQ * EHP | circuit PAEHQ |
| 480 | plu | AEH * HPR = AHP * EHR + AHR * EHP | circuit HAEPR |
| 486 | plu | AHP * EPS = AEP * HPS + APS * EHP | circuit PAEHS |
| 497 | plu | AHS * EQS = AES * HQS + AQS * EHS | circuit SAEHQ |
| 543 | plu | AHQ * FQS = AFQ * HQS + AQS * FHQ | circuit QAFHS |
| 557 | plu | APS * FPQ = AFP * PQS + APQ * FPS | circuit PAFQS |
| 559 | plu | AFS * PQS = APS * FQS + AQS * FPS | circuit SAFPQ |
| 584 | plu | APS * AQR = APQ * ARS + APR * AQS | circuit APQRS |
| 585 | plu | AQR * PQS = APQ * QRS + AQS * PQR | circuit QAPRS |
| 655 | plu | BCP * FHP = BFP * CHP + BHP * CFP | circuit PBCFH |
| 656 | plu | BCF * BHQ = BCH * BFQ + BCQ * BFH | circuit BCFHQ |
| 679 | plu | BCF * FPS = BFP * CFS + BFS * CFP | circuit FBCPS |
| 693 | plu | BHP * CHQ = BCH * HPQ + BHQ * CHP | circuit HBCPQ |
| 701 | plu | BCR * CHQ = BCH * CQR + BCQ * CHR | circuit CBHQR |
| 796 | plu | BHR * FHQ = BFH * HQR + BHQ * FHR | circuit HBFQR |
| 797 | plu | BFQ * HQR = BHQ * FQR + BQR * FHQ | circuit QBFHR |
| 824 | plu | CEH * FHP = CFH * EHP + CHP * EFH | circuit HCEFP |
| 826 | plu | CEF * CHQ = CEH * CFQ + CEQ * CFH | circuit CEFHQ |
| 829 | plu | CHQ * EFH = CEH * FHQ + CFH * EHQ | circuit HCEFQ |
| 830 | plu | CFQ * EHQ = CEQ * FHQ + CHQ * EFQ | circuit QCEFH |
| 834 | plu | CHR * EFH = CEH * FHR + CFH * EHR | circuit HCEFR |
| 835 | plu | CFR * EHR = CER * FHR + CHR * EFR | circuit RCEFH |
| 858 | plu | CFQ * EFR = CEF * FQR + CFR * EFQ | circuit FCEQR |
| 865 | plu | CFS * EQS = CES * FQS + CQS * EFS | circuit SCEFQ |
| 870 | plu | CEH * HPQ = CHP * EHQ + CHQ * EHP | circuit HCEPQ |
| 871 | plu | CEP * HPQ = CHP * EPQ + CPQ * EHP | circuit PCEHQ |
| 875 | plu | CEH * HPR = CHP * EHR + CHR * EHP | circuit HCEPR |
| 883 | plu | CER * CHQ = CEH * CQR + CEQ * CHR | circuit CEHQR |
| 908 | plu | CFH * CPQ = CFP * CHQ + CFQ * CHP | circuit CFHPQ |
| 910 | plu | CHQ * FHP = CFH * HPQ + CHP * FHQ | circuit HCFPQ |
| 911 | plu | CPQ * FHP = CFP * HPQ + CHP * FPQ | circuit PCFHQ |
| 913 | plu | CFH * CPR = CFP * CHR + CFR * CHP | circuit CFHPR |
| 924 | plu | CFR * FHQ = CFH * FQR + CFQ * FHR | circuit FCHQR |
| 925 | plu | CHR * FHQ = CFH * HQR + CHQ * FHR | circuit HCFQR |
| 957 | plu | CQS * HPS = CHS * PQS + CPS * HQS | circuit SCHPQ |
| 1018 | plu | EQS * HPS = EHS * PQS + EPS * HQS | circuit SEHPQ |
| 1034 | plu | FHS * HPQ = FHP * HQS + FHQ * HPS | circuit HFPQS |
| 1036 | plu | FQS * HPQ = FHQ * PQS + FPQ * HQS | circuit QFHPS |
| 1044 | plu | FQS * HRS = FHS * QRS + FRS * HQS | circuit SFHQR |
| 1048 | plu | HPQ * QRS = HQR * PQS + HQS * PQR | circuit QHPRS |
| 1147 | quad | BQS + ABS >= 279/625 | quadrilateral BQSA; occupants P |
| 1377 | quad | APQ + AQR >= 279/625 | quadrilateral APQR; occupants S |
| 1379 | quad | PQR + APR >= 279/625 | quadrilateral PQRA; occupants S |
| 1665 | quad | EQR + EFR >= 279/625 | quadrilateral EQRF; occupants S |
| 1858 | support | BFR * ABR >= 1023/1000 * (BFR - AFR) | pentagon RFHAB |
| 3095 | bary | outer CFH; fans FHP, CHP, CFP; target ABP; sign 1; vertices ABC 1; ABF 1; ABH 1 | container CFH; inner P; line AB |
| 3177 | bary | outer CHQ; fans HPQ, CPQ, CHP; target ABP; sign 1; vertices ABC 1; ABH 1; ABQ 1 | container CHQ; inner P; line AB |
| 3249 | bary | outer CHQ; fans HQS, CQS, CHS; target FRS; sign -1; vertices CFR -1; FHR -1; FQR -1 | container CHQ; inner S; line FR |
| 3355 | bary | outer EFQ; fans FQS, EQS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPQ -1 | container EFQ; inner S; line CP |
| 3395 | bary | outer EFR; fans FRS, ERS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPR -1 | container EFR; inner S; line CP |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


### Affine certificates

| Certificate | Output bound | Target | Direction | Exact bound | Rounded bound | Terminal upper |
| --- | --- | --- | --- | --- | --- | --- |
| 0 | 336:230 | AFQ | lo | 439167906158245362221619710709/1000000010200000000000000000000 | 439167/1000000 | none |
| 1 | 336:231 | AFP | lo | 829408987489267440405330802457/4999999897736533170000000000000 | 165881/1000000 | none |
| 2 | 336:233 | EFQ | lo | 613237256042985930874770277/1953124804687500000000000000 | 313977/1000000 | none |
| 3 | 336:234 | EFQ | hi | 347925024101500180894070737/520833362819689396406250000 | 668017/1000000 | none |
| 4 | 336:235 | EFR | hi | 325463928312550250790158582803/499999998102587696900000000000 | 40683/62500 | none |

### Exact affine factors

| Certificate | Factor | Origin witness | Constant | Area coefficients |
| --- | --- | --- | --- | --- |
| 0 | 3 | `{"bound":{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},"direction":"hi","kind":"bound","triangle":"ABE"}` | 33/125 | `-1 * ABE` |
| 0 | 6 | `{"bound":{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"ABH"}` | -93/1000 | `1 * ABH` |
| 0 | 68 | `{"bound":{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"AQS"}` | -93/1000 | `1 * AQS` |
| 0 | 70 | `{"bound":{"ref":"336:70","side":"lo","triangle":"ARS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"ARS"}` | -93/1000 | `1 * ARS` |
| 0 | 72 | `{"bound":{"ref":"336:72","side":"lo","triangle":"BCE","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"BCE"}` | -93/1000 | `1 * BCE` |
| 0 | 136 | `{"bound":{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CFP"}` | -93/1000 | `1 * CFP` |
| 0 | 144 | `{"bound":{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CHP"}` | -93/1000 | `1 * CHP` |
| 0 | 170 | `{"bound":{"ref":"336:170","side":"lo","triangle":"EFS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"EFS"}` | -93/1000 | `1 * EFS` |
| 0 | 172 | `{"bound":{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"EHP"}` | -93/1000 | `1 * EHP` |
| 0 | 196 | `{"bound":{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"FHR"}` | -93/1000 | `1 * FHR` |
| 0 | 220 | `{"bound":{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"HQS"}` | -93/1000 | `1 * HQS` |
| 0 | 230 | `{"direction":1,"kind":"four_point","vertices":"ABCE"}` | 0 | `1 * ABC + 1 * ACE + -1 * ABE + -1 * BCE` |
| 0 | 236 | `{"direction":1,"kind":"four_point","vertices":"ABCP"}` | 0 | `1 * ABC + 1 * ACP + -1 * ABP + -1 * BCP` |
| 0 | 241 | `{"direction":-1,"kind":"four_point","vertices":"ABCR"}` | 0 | `-1 * ABC + -1 * ACR + 1 * ABR + 1 * BCR` |
| 0 | 247 | `{"direction":-1,"kind":"four_point","vertices":"ABEH"}` | 0 | `-1 * ABE + -1 * AEH + 1 * ABH + 1 * BEH` |
| 0 | 248 | `{"direction":1,"kind":"four_point","vertices":"ABEP"}` | 0 | `1 * ABE + 1 * AEP + -1 * ABP + -1 * BEP` |
| 0 | 251 | `{"direction":-1,"kind":"four_point","vertices":"ABEQ"}` | 0 | `-1 * ABE + -1 * AEQ + 1 * ABQ + 1 * BEQ` |
| 0 | 256 | `{"direction":1,"kind":"four_point","vertices":"ABFH"}` | 0 | `1 * ABF + 1 * AFH + -1 * ABH + -1 * BFH` |
| 0 | 259 | `{"direction":-1,"kind":"four_point","vertices":"ABFP"}` | 0 | `-1 * ABF + 1 * AFP + 1 * ABP + -1 * BFP` |
| 0 | 269 | `{"direction":-1,"kind":"four_point","vertices":"ABHQ"}` | 0 | `-1 * ABH + 1 * AHQ + 1 * ABQ + -1 * BHQ` |
| 0 | 271 | `{"direction":-1,"kind":"four_point","vertices":"ABHR"}` | 0 | `-1 * ABH + 1 * AHR + 1 * ABR + -1 * BHR` |
| 0 | 273 | `{"direction":-1,"kind":"four_point","vertices":"ABHS"}` | 0 | `-1 * ABH + 1 * AHS + 1 * ABS + -1 * BHS` |
| 0 | 277 | `{"direction":-1,"kind":"four_point","vertices":"ABQR"}` | 0 | `-1 * ABQ + -1 * AQR + 1 * ABR + 1 * BQR` |
| 0 | 280 | `{"direction":1,"kind":"four_point","vertices":"ACEF"}` | 0 | `1 * ACE + 1 * AEF + -1 * ACF + -1 * CEF` |
| 0 | 287 | `{"direction":-1,"kind":"four_point","vertices":"ACEQ"}` | 0 | `-1 * ACE + -1 * AEQ + 1 * ACQ + 1 * CEQ` |
| 0 | 289 | `{"direction":-1,"kind":"four_point","vertices":"ACER"}` | 0 | `-1 * ACE + -1 * AER + 1 * ACR + 1 * CER` |
| 0 | 290 | `{"direction":1,"kind":"four_point","vertices":"ACES"}` | 0 | `1 * ACE + 1 * AES + -1 * ACS + -1 * CES` |
| 0 | 298 | `{"direction":1,"kind":"four_point","vertices":"ACFR"}` | 0 | `1 * ACF + -1 * AFR + -1 * ACR + 1 * CFR` |
| 0 | 307 | `{"direction":-1,"kind":"four_point","vertices":"ACHR"}` | 0 | `-1 * ACH + 1 * AHR + 1 * ACR + -1 * CHR` |
| 0 | 315 | `{"direction":-1,"kind":"four_point","vertices":"ACPS"}` | 0 | `-1 * ACP + -1 * APS + 1 * ACS + -1 * CPS` |
| 0 | 322 | `{"direction":1,"kind":"four_point","vertices":"AEFP"}` | 0 | `1 * AEF + -1 * AFP + -1 * AEP + -1 * EFP` |
| 0 | 329 | `{"direction":-1,"kind":"four_point","vertices":"AEFS"}` | 0 | `-1 * AEF + 1 * AFS + 1 * AES + -1 * EFS` |
| 0 | 334 | `{"direction":1,"kind":"four_point","vertices":"AEHR"}` | 0 | `1 * AEH + -1 * AHR + -1 * AER + 1 * EHR` |
| 0 | 336 | `{"direction":1,"kind":"four_point","vertices":"AEHS"}` | 0 | `1 * AEH + -1 * AHS + -1 * AES + 1 * EHS` |
| 0 | 340 | `{"direction":1,"kind":"four_point","vertices":"AEPR"}` | 0 | `1 * AEP + 1 * APR + -1 * AER + 1 * EPR` |
| 0 | 346 | `{"direction":1,"kind":"four_point","vertices":"AEQS"}` | 0 | `1 * AEQ + 1 * AQS + -1 * AES + -1 * EQS` |
| 0 | 348 | `{"direction":1,"kind":"four_point","vertices":"AERS"}` | 0 | `1 * AER + -1 * ARS + -1 * AES + -1 * ERS` |
| 0 | 350 | `{"direction":1,"kind":"four_point","vertices":"AFHP"}` | 0 | `1 * AFH + -1 * AHP + 1 * AFP + -1 * FHP` |
| 0 | 352 | `{"direction":1,"kind":"four_point","vertices":"AFHQ"}` | 0 | `1 * AFH + -1 * AHQ + 1 * AFQ + -1 * FHQ` |
| 0 | 354 | `{"direction":1,"kind":"four_point","vertices":"AFHR"}` | 0 | `1 * AFH + -1 * AHR + 1 * AFR + -1 * FHR` |
| 0 | 356 | `{"direction":1,"kind":"four_point","vertices":"AFHS"}` | 0 | `1 * AFH + -1 * AHS + 1 * AFS + -1 * FHS` |
| 0 | 359 | `{"direction":-1,"kind":"four_point","vertices":"AFPQ"}` | 0 | `1 * AFP + -1 * APQ + -1 * AFQ + 1 * FPQ` |
| 0 | 367 | `{"direction":-1,"kind":"four_point","vertices":"AFQS"}` | 0 | `1 * AFQ + -1 * AQS + -1 * AFS + -1 * FQS` |
| 0 | 368 | `{"direction":1,"kind":"four_point","vertices":"AFRS"}` | 0 | `-1 * AFR + -1 * ARS + 1 * AFS + 1 * FRS` |
| 0 | 376 | `{"direction":1,"kind":"four_point","vertices":"AHQR"}` | 0 | `-1 * AHQ + 1 * AQR + 1 * AHR + -1 * HQR` |
| 0 | 387 | `{"direction":-1,"kind":"four_point","vertices":"AQRS"}` | 0 | `-1 * AQR + 1 * ARS + 1 * AQS + 1 * QRS` |
| 0 | 391 | `{"direction":-1,"kind":"four_point","vertices":"BCEH"}` | 0 | `-1 * BCE + -1 * BEH + 1 * BCH + 1 * CEH` |
| 0 | 393 | `{"direction":-1,"kind":"four_point","vertices":"BCEP"}` | 0 | `-1 * BCE + -1 * BEP + 1 * BCP + 1 * CEP` |
| 0 | 396 | `{"direction":1,"kind":"four_point","vertices":"BCER"}` | 0 | `1 * BCE + 1 * BER + -1 * BCR + -1 * CER` |
| 0 | 400 | `{"direction":1,"kind":"four_point","vertices":"BCFH"}` | 0 | `1 * BCF + 1 * BFH + -1 * BCH + -1 * CFH` |
| 0 | 414 | `{"direction":1,"kind":"four_point","vertices":"BCHR"}` | 0 | `1 * BCH + -1 * BHR + -1 * BCR + 1 * CHR` |
| 0 | 427 | `{"direction":-1,"kind":"four_point","vertices":"BEFP"}` | 0 | `-1 * BEF + 1 * BFP + 1 * BEP + 1 * EFP` |
| 0 | 428 | `{"direction":1,"kind":"four_point","vertices":"BEFQ"}` | 0 | `1 * BEF + -1 * BFQ + -1 * BEQ + 1 * EFQ` |
| 0 | 451 | `{"direction":-1,"kind":"four_point","vertices":"BFHQ"}` | 0 | `-1 * BFH + 1 * BHQ + -1 * BFQ + 1 * FHQ` |
| 0 | 455 | `{"direction":-1,"kind":"four_point","vertices":"BFHS"}` | 0 | `-1 * BFH + 1 * BHS + -1 * BFS + 1 * FHS` |
| 0 | 476 | `{"direction":1,"kind":"four_point","vertices":"CEFS"}` | 0 | `1 * CEF + -1 * CFS + -1 * CES + 1 * EFS` |
| 0 | 487 | `{"direction":-1,"kind":"four_point","vertices":"CEPQ"}` | 0 | `-1 * CEP + 1 * CPQ + 1 * CEQ + -1 * EPQ` |
| 0 | 490 | `{"direction":1,"kind":"four_point","vertices":"CEPS"}` | 0 | `1 * CEP + -1 * CPS + -1 * CES + 1 * EPS` |
| 0 | 492 | `{"direction":1,"kind":"four_point","vertices":"CEQR"}` | 0 | `1 * CEQ + 1 * CQR + -1 * CER + -1 * EQR` |
| 0 | 495 | `{"direction":-1,"kind":"four_point","vertices":"CEQS"}` | 0 | `-1 * CEQ + -1 * CQS + 1 * CES + 1 * EQS` |
| 0 | 500 | `{"direction":1,"kind":"four_point","vertices":"CFHR"}` | 0 | `1 * CFH + -1 * CHR + 1 * CFR + -1 * FHR` |
| 0 | 504 | `{"direction":1,"kind":"four_point","vertices":"CFPQ"}` | 0 | `1 * CFP + -1 * CPQ + 1 * CFQ + -1 * FPQ` |
| 0 | 507 | `{"direction":-1,"kind":"four_point","vertices":"CFPR"}` | 0 | `-1 * CFP + 1 * CPR + -1 * CFR + 1 * FPR` |
| 0 | 509 | `{"direction":-1,"kind":"four_point","vertices":"CFPS"}` | 0 | `-1 * CFP + 1 * CPS + -1 * CFS + 1 * FPS` |
| 0 | 511 | `{"direction":-1,"kind":"four_point","vertices":"CFQR"}` | 0 | `1 * CFQ + -1 * CQR + -1 * CFR + 1 * FQR` |
| 0 | 512 | `{"direction":1,"kind":"four_point","vertices":"CFQS"}` | 0 | `-1 * CFQ + 1 * CQS + 1 * CFS + 1 * FQS` |
| 0 | 518 | `{"direction":1,"kind":"four_point","vertices":"CHPS"}` | 0 | `-1 * CHP + -1 * CPS + 1 * CHS + -1 * HPS` |
| 0 | 520 | `{"direction":1,"kind":"four_point","vertices":"CHQR"}` | 0 | `-1 * CHQ + 1 * CQR + 1 * CHR + -1 * HQR` |
| 0 | 523 | `{"direction":-1,"kind":"four_point","vertices":"CHQS"}` | 0 | `1 * CHQ + -1 * CQS + -1 * CHS + -1 * HQS` |
| 0 | 531 | `{"direction":-1,"kind":"four_point","vertices":"EFHQ"}` | 0 | `-1 * EFH + 1 * EHQ + -1 * EFQ + 1 * FHQ` |
| 0 | 537 | `{"direction":-1,"kind":"four_point","vertices":"EFPQ"}` | 0 | `-1 * EFP + 1 * EPQ + -1 * EFQ + 1 * FPQ` |
| 0 | 538 | `{"direction":1,"kind":"four_point","vertices":"EFPR"}` | 0 | `1 * EFP + -1 * EPR + 1 * EFR + -1 * FPR` |
| 0 | 546 | `{"direction":1,"kind":"four_point","vertices":"EFRS"}` | 0 | `-1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS` |
| 0 | 551 | `{"direction":-1,"kind":"four_point","vertices":"EHPR"}` | 0 | `-1 * EHP + 1 * EPR + -1 * EHR + 1 * HPR` |
| 0 | 554 | `{"direction":1,"kind":"four_point","vertices":"EHQR"}` | 0 | `-1 * EHQ + 1 * EQR + 1 * EHR + -1 * HQR` |
| 0 | 557 | `{"direction":-1,"kind":"four_point","vertices":"EHQS"}` | 0 | `1 * EHQ + -1 * EQS + -1 * EHS + -1 * HQS` |
| 0 | 568 | `{"direction":1,"kind":"four_point","vertices":"FHPR"}` | 0 | `1 * FHP + 1 * FPR + -1 * FHR + -1 * HPR` |
| 0 | 571 | `{"direction":-1,"kind":"four_point","vertices":"FHPS"}` | 0 | `-1 * FHP + -1 * FPS + 1 * FHS + 1 * HPS` |
| 0 | 582 | `{"direction":1,"kind":"four_point","vertices":"FQRS"}` | 0 | `1 * FQR + -1 * FRS + 1 * FQS + -1 * QRS` |
| 0 | 738 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABE","Y":"ACH","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:20","side":"lo","triangle":"ACH","value":"5609/40000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABC","Y":"AEH","bounds":[{"ref":"336:0","side":"lo","triangle":"ABC","value":"93/1000"},{"ref":"336:32","side":"lo","triangle":"AEH","value":"15253/50000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABH","Y":"ACE","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:16","side":"lo","triangle":"ACE","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":39}` | 9/50000000 | `5609/40000 * ABE + 33/125 * ACH + -15253/50000 * ABC + -93/1000 * AEH + -93/1000 * ABH + -93/1000 * ACE` |
| 0 | 831 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ABE","Y":"ACP","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:23","side":"hi","triangle":"ACP","value":"127641/250000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"ABC","Y":"AEP","bounds":[{"ref":"336:1","side":"hi","triangle":"ABC","value":"2718441/12500000"},{"ref":"336:34","side":"lo","triangle":"AEP","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABP","Y":"ACE","bounds":[{"ref":"336:8","side":"lo","triangle":"ABP","value":"28449/250000"},{"ref":"336:17","side":"hi","triangle":"ACE","value":"33/125"}],"choice":1,"sign":1,"type":"upper"}],"relation":44}` | 1056519387/12500000000 | `-127641/250000 * ABE + -33/125 * ACP + 93/1000 * ABC + 2718441/12500000 * AEP + 33/125 * ABP + 28449/250000 * ACE` |
| 0 | 1038 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ACE","Y":"BER","bounds":[{"ref":"336:17","side":"hi","triangle":"ACE","value":"33/125"},{"ref":"336:95","side":"hi","triangle":"BER","value":"17031744857/20000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"ABE","Y":"CER","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:130","side":"lo","triangle":"CER","value":"19091/200000"}],"choice":0,"sign":1,"type":"upper"},{"X":"AER","Y":"BCE","bounds":[{"ref":"336:39","side":"hi","triangle":"AER","value":"177421/200000"},{"ref":"336:72","side":"lo","triangle":"BCE","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":57}` | 292795367781/2500000000000 | `-17031744857/20000000000 * ACE + -33/125 * BER + 19091/200000 * ABE + 33/125 * CER + 93/1000 * AER + 177421/200000 * BCE` |
| 0 | 2587 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ABP","Y":"AEH","bounds":[{"ref":"336:8","side":"lo","triangle":"ABP","value":"28449/250000"},{"ref":"336:32","side":"lo","triangle":"AEH","value":"15253/50000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABE","Y":"AHP","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:52","side":"lo","triangle":"AHP","value":"5953/50000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABH","Y":"AEP","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:35","side":"hi","triangle":"AEP","value":"116341/250000"}],"choice":1,"sign":1,"type":"upper"}],"relation":154}` | -499951053/12500000000 | `-15253/50000 * ABP + -28449/250000 * AEH + 5953/50000 * ABE + 33/125 * AHP + 116341/250000 * ABH + 93/1000 * AEP` |
| 0 | 2687 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ABQ","Y":"BEH","bounds":[{"ref":"336:11","side":"hi","triangle":"ABQ","value":"25153281383/50000000000"},{"ref":"336:89","side":"hi","triangle":"BEH","value":"110986985769/125000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"ABE","Y":"BHQ","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:110","side":"lo","triangle":"BHQ","value":"13857/20000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABH","Y":"BEQ","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:93","side":"hi","triangle":"BEQ","value":"44010968203/62500000000"}],"choice":1,"sign":1,"type":"upper"}],"relation":160}` | 1239182378610773638527/6250000000000000000000 | `-110986985769/125000000000 * ABQ + -25153281383/50000000000 * BEH + 13857/20000 * ABE + 33/125 * BHQ + 44010968203/62500000000 * ABH + 93/1000 * BEQ` |
| 0 | 2827 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ABS","Y":"AEH","bounds":[{"ref":"336:14","side":"lo","triangle":"ABS","value":"172157/1000000"},{"ref":"336:32","side":"lo","triangle":"AEH","value":"15253/50000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABE","Y":"AHS","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:58","side":"lo","triangle":"AHS","value":"156151/1000000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABH","Y":"AES","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:41","side":"hi","triangle":"AES","value":"140221/200000"}],"choice":1,"sign":1,"type":"upper"}],"relation":169}` | -2695420729/50000000000 | `-15253/50000 * ABS + -172157/1000000 * AEH + 156151/1000000 * ABE + 33/125 * AHS + 140221/200000 * ABH + 93/1000 * AES` |
| 0 | 3315 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABF","Y":"AHQ","bounds":[{"ref":"336:5","side":"hi","triangle":"ABF","value":"19451/50000"},{"ref":"336:54","side":"lo","triangle":"AHQ","value":"342151/1000000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABH","Y":"AFQ","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:46","side":"lo","triangle":"AFQ","value":"352137/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABQ","Y":"AFH","bounds":[{"ref":"336:11","side":"hi","triangle":"ABQ","value":"25153281383/50000000000"},{"ref":"336:43","side":"hi","triangle":"AFH","value":"16562468147/50000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":200}` | 165713319148465607301/2500000000000000000000 | `342151/1000000 * ABF + 19451/50000 * AHQ + -352137/1000000 * ABH + -93/1000 * AFQ + -16562468147/50000000000 * ABQ + -25153281383/50000000000 * AFH` |
| 0 | 3366 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHQ","Y":"BFH","bounds":[{"ref":"336:54","side":"lo","triangle":"AHQ","value":"342151/1000000"},{"ref":"336:99","side":"hi","triangle":"BFH","value":"19451/50000"}],"choice":1,"sign":1,"type":"upper"},{"X":"ABH","Y":"FHQ","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AFH","Y":"BHQ","bounds":[{"ref":"336:42","side":"lo","triangle":"AFH","value":"93/1000"},{"ref":"336:110","side":"lo","triangle":"BHQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":203}` | -2944469801/50000000000 | `19451/50000 * AHQ + 342151/1000000 * BFH + -1643/15625 * ABH + -93/1000 * FHQ + -13857/20000 * AFH + -93/1000 * BHQ` |
| 0 | 4064 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ABR","Y":"BHQ","bounds":[{"ref":"336:13","side":"hi","triangle":"ABR","value":"64781429/125000000"},{"ref":"336:111","side":"hi","triangle":"BHQ","value":"955014565879/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"ABH","Y":"BQR","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:119","side":"hi","triangle":"BQR","value":"73536791931/100000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"ABQ","Y":"BHR","bounds":[{"ref":"336:11","side":"hi","triangle":"ABQ","value":"25153281383/50000000000"},{"ref":"336:112","side":"lo","triangle":"BHR","value":"155143/1000000"}],"choice":0,"sign":1,"type":"upper"}],"relation":246}` | 43562667397470588591/125000000000000000000 | `-955014565879/1000000000000 * ABR + -64781429/125000000 * BHQ + 73536791931/100000000000 * ABH + 93/1000 * BQR + 155143/1000000 * ABQ + 25153281383/50000000000 * BHR` |
| 0 | 4238 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ABQ","Y":"APR","bounds":[{"ref":"336:11","side":"hi","triangle":"ABQ","value":"25153281383/50000000000"},{"ref":"336:63","side":"hi","triangle":"APR","value":"139657/250000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"ABP","Y":"AQR","bounds":[{"ref":"336:9","side":"hi","triangle":"ABP","value":"71417/250000"},{"ref":"336:66","side":"lo","triangle":"AQR","value":"279/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABR","Y":"APQ","bounds":[{"ref":"336:13","side":"hi","triangle":"ABR","value":"64781429/125000000"},{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":257}` | 1914097378405631/12500000000000000 | `-139657/250000 * ABQ + -25153281383/50000000000 * APR + 279/1000 * ABP + 71417/250000 * AQR + 93/1000 * ABR + 64781429/125000000 * APQ` |
| 0 | 4306 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABS","Y":"AQR","bounds":[{"ref":"336:15","side":"hi","triangle":"ABS","value":"107339/250000"},{"ref":"336:66","side":"lo","triangle":"AQR","value":"279/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABQ","Y":"ARS","bounds":[{"ref":"336:10","side":"lo","triangle":"ABQ","value":"74949/250000"},{"ref":"336:70","side":"lo","triangle":"ARS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABR","Y":"AQS","bounds":[{"ref":"336:12","side":"lo","triangle":"ABR","value":"93/1000"},{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":262}` | -10407537/125000000 | `279/1000 * ABS + 107339/250000 * AQR + -93/1000 * ABQ + -74949/250000 * ARS + -93/1000 * ABR + -93/1000 * AQS` |
| 0 | 6614 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHQ","Y":"CQS","bounds":[{"ref":"336:54","side":"lo","triangle":"AHQ","value":"342151/1000000"},{"ref":"336:161","side":"hi","triangle":"CQS","value":"238893/500000"}],"choice":1,"sign":1,"type":"upper"},{"X":"ACQ","Y":"HQS","bounds":[{"ref":"336:24","side":"lo","triangle":"ACQ","value":"168173/500000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AQS","Y":"CHQ","bounds":[{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"},{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":406}` | -33879864843/500000000000 | `238893/500000 * AHQ + 342151/1000000 * CQS + -93/1000 * ACQ + -168173/500000 * HQS + -13857/20000 * AQS + -93/1000 * CHQ` |
| 0 | 6850 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ACS","Y":"AQR","bounds":[{"ref":"336:29","side":"hi","triangle":"ACS","value":"741211/1000000"},{"ref":"336:66","side":"lo","triangle":"AQR","value":"279/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ACQ","Y":"ARS","bounds":[{"ref":"336:24","side":"lo","triangle":"ACQ","value":"168173/500000"},{"ref":"336:70","side":"lo","triangle":"ARS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ACR","Y":"AQS","bounds":[{"ref":"336:26","side":"lo","triangle":"ACR","value":"16361/50000"},{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":421}` | -145086231/1000000000 | `279/1000 * ACS + 741211/1000000 * AQR + -93/1000 * ACQ + -168173/500000 * ARS + -93/1000 * ACR + -16361/50000 * AQS` |
| 0 | 7900 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"AHP","Y":"EPS","bounds":[{"ref":"336:52","side":"lo","triangle":"AHP","value":"5953/50000"},{"ref":"336:184","side":"lo","triangle":"EPS","value":"59693/500000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AEP","Y":"HPS","bounds":[{"ref":"336:34","side":"lo","triangle":"AEP","value":"93/1000"},{"ref":"336:217","side":"hi","triangle":"HPS","value":"445761/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"APS","Y":"EHP","bounds":[{"ref":"336:65","side":"hi","triangle":"APS","value":"344723/1000000"},{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":486}` | -1482522871/25000000000 | `-59693/500000 * AHP + -5953/50000 * EPS + 445761/1000000 * AEP + 93/1000 * HPS + 93/1000 * APS + 344723/1000000 * EHP` |
| 0 | 8070 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHS","Y":"EQS","bounds":[{"ref":"336:58","side":"lo","triangle":"AHS","value":"156151/1000000"},{"ref":"336:189","side":"hi","triangle":"EQS","value":"439263/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"AES","Y":"HQS","bounds":[{"ref":"336:40","side":"lo","triangle":"AES","value":"152693/500000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AQS","Y":"EHS","bounds":[{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"},{"ref":"336:178","side":"lo","triangle":"EHS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":497}` | -31541458713/1000000000000 | `439263/1000000 * AHS + 156151/1000000 * EQS + -93/1000 * AES + -152693/500000 * HQS + -93/1000 * AQS + -93/1000 * EHS` |
| 0 | 10988 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"BCF","Y":"FPS","bounds":[{"ref":"336:74","side":"lo","triangle":"BCF","value":"150391/500000"},{"ref":"336:204","side":"lo","triangle":"FPS","value":"97723/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"BFP","Y":"CFS","bounds":[{"ref":"336:100","side":"lo","triangle":"BFP","value":"93/1000"},{"ref":"336:143","side":"hi","triangle":"CFS","value":"537263/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"BFS","Y":"CFP","bounds":[{"ref":"336:107","side":"hi","triangle":"BFS","value":"674199/1000000"},{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":679}` | -41636323307/500000000000 | `-97723/1000000 * BCF + -150391/500000 * FPS + 537263/1000000 * BFP + 93/1000 * CFS + 93/1000 * BFS + 674199/1000000 * CFP` |
| 0 | 12870 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"BFQ","Y":"HQR","bounds":[{"ref":"336:102","side":"lo","triangle":"BFQ","value":"13857/20000"},{"ref":"336:219","side":"hi","triangle":"HQR","value":"107384188469/200000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"BHQ","Y":"FQR","bounds":[{"ref":"336:110","side":"lo","triangle":"BHQ","value":"13857/20000"},{"ref":"336:206","side":"lo","triangle":"FQR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"BQR","Y":"FHQ","bounds":[{"ref":"336:118","side":"lo","triangle":"BQR","value":"56437/250000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":-1,"type":"lower"}],"relation":797}` | -1135331084830933/4000000000000000 | `107384188469/200000000000 * BFQ + 13857/20000 * HQR + -93/1000 * BHQ + -13857/20000 * FQR + -1643/15625 * BQR + -56437/250000 * FHQ` |
| 0 | 13379 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CHQ","Y":"EFH","bounds":[{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"},{"ref":"336:162","side":"lo","triangle":"EFH","value":"34463/250000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CEH","Y":"FHQ","bounds":[{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFH","Y":"EHQ","bounds":[{"ref":"336:135","side":"hi","triangle":"CFH","value":"310206222641/500000000000"},{"ref":"336:175","side":"hi","triangle":"EHQ","value":"382819/500000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":829}` | 47372187137236013/125000000000000000 | `34463/250000 * CHQ + 924768844231/1000000000000 * EFH + -1643/15625 * CEH + -149533/500000 * FHQ + -382819/500000 * CFH + -310206222641/500000000000 * EHQ` |
| 0 | 13459 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CHR","Y":"EFH","bounds":[{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"},{"ref":"336:162","side":"lo","triangle":"EFH","value":"34463/250000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CEH","Y":"FHR","bounds":[{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFH","Y":"EHR","bounds":[{"ref":"336:135","side":"hi","triangle":"CFH","value":"310206222641/500000000000"},{"ref":"336:177","side":"hi","triangle":"EHR","value":"831020406491/1000000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":834}` | 209543876320212699562731/500000000000000000000000 | `34463/250000 * CHR + 56356086523/62500000000 * EFH + -93/1000 * CEH + -149533/500000 * FHR + -831020406491/1000000000000 * CFH + -310206222641/500000000000 * EHR` |
| 0 | 14247 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CER","Y":"CHQ","bounds":[{"ref":"336:130","side":"lo","triangle":"CER","value":"19091/200000"},{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CEH","Y":"CQR","bounds":[{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"},{"ref":"336:158","side":"lo","triangle":"CQR","value":"24051/250000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CEQ","Y":"CHR","bounds":[{"ref":"336:129","side":"hi","triangle":"CEQ","value":"27153916357/62500000000"},{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":883}` | 5191427829831242436219/15625000000000000000000 | `924768844231/1000000000000 * CER + 19091/200000 * CHQ + -24051/250000 * CEH + -149533/500000 * CQR + -56356086523/62500000000 * CEQ + -27153916357/62500000000 * CHR` |
| 0 | 14646 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFH","Y":"CPQ","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:153","side":"hi","triangle":"CPQ","value":"12973/25000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CFP","Y":"CHQ","bounds":[{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFQ","Y":"CHP","bounds":[{"ref":"336:138","side":"lo","triangle":"CFQ","value":"77531/250000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":908}` | -164249373/2500000000 | `12973/25000 * CFH + 7659/25000 * CPQ + -13857/20000 * CFP + -93/1000 * CHQ + -93/1000 * CFQ + -77531/250000 * CHP` |
| 0 | 14914 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CHR","Y":"FHQ","bounds":[{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":1,"type":"upper"},{"X":"CFH","Y":"HQR","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:218","side":"lo","triangle":"HQR","value":"99167/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHQ","Y":"FHR","bounds":[{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":925}` | 1110857297/1953125000000000 | `1643/15625 * CHR + 56356086523/62500000000 * FHQ + -99167/1000000 * CFH + -7659/25000 * HQR + -93/1000 * CHQ + -13857/20000 * FHR` |
| 0 | 20963 | `{"direction":-1,"kind":"bary_affine","relation":3249,"sources":[{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"},{"ref":"336:160","side":"lo","triangle":"CQS","value":"31031/250000"},{"ref":"336:150","side":"lo","triangle":"CHS","value":"353983/1000000"},{"ref":"336:140","side":"lo","triangle":"CFR","value":"34891/200000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"},{"ref":"336:206","side":"lo","triangle":"FQR","value":"93/1000"}]}` | -32890551513483/1000000000000000 | `-93/1000 * CFR + -31031/250000 * FHR + -353983/1000000 * FQR + 924768844231/1000000000000 * FRS` |
| 0 | 21175 | `{"direction":-1,"kind":"bary_affine","relation":3355,"sources":[{"ref":"336:167","side":"hi","triangle":"EFQ","value":"67920129799/100000000000"},{"ref":"336:208","side":"lo","triangle":"FQS","value":"93/1000"},{"ref":"336:188","side":"lo","triangle":"EQS","value":"93/1000"},{"ref":"336:170","side":"lo","triangle":"EFS","value":"93/1000"},{"ref":"336:126","side":"lo","triangle":"CEP","value":"56533/500000"},{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:152","side":"lo","triangle":"CPQ","value":"75173/500000"}]}` | -3721872071307/100000000000000 | `-93/1000 * CEP + -93/1000 * CFP + -93/1000 * CPQ + 67920129799/100000000000 * CPS` |
| 0 | 21255 | `{"direction":-1,"kind":"bary_affine","relation":3395,"sources":[{"ref":"336:169","side":"hi","triangle":"EFR","value":"67920129799/100000000000"},{"ref":"336:210","side":"lo","triangle":"FRS","value":"29679/250000"},{"ref":"336:190","side":"lo","triangle":"ERS","value":"93/1000"},{"ref":"336:170","side":"lo","triangle":"EFS","value":"93/1000"},{"ref":"336:126","side":"lo","triangle":"CEP","value":"56533/500000"},{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:154","side":"lo","triangle":"CPR","value":"93/1000"}]}` | -3482713271307/100000000000000 | `-29679/250000 * CEP + -93/1000 * CFP + -93/1000 * CPR + 67920129799/100000000000 * CPS` |
| 1 | 0 | `{"bound":{"ref":"336:0","side":"lo","triangle":"ABC","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"ABC"}` | -93/1000 | `1 * ABC` |
| 1 | 6 | `{"bound":{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"ABH"}` | -93/1000 | `1 * ABH` |
| 1 | 60 | `{"bound":{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"APQ"}` | -93/1000 | `1 * APQ` |
| 1 | 100 | `{"bound":{"ref":"336:100","side":"lo","triangle":"BFP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"BFP"}` | -93/1000 | `1 * BFP` |
| 1 | 136 | `{"bound":{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CFP"}` | -93/1000 | `1 * CFP` |
| 1 | 144 | `{"bound":{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CHP"}` | -93/1000 | `1 * CHP` |
| 1 | 196 | `{"bound":{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"FHR"}` | -93/1000 | `1 * FHR` |
| 1 | 238 | `{"direction":1,"kind":"four_point","vertices":"ABCQ"}` | 0 | `1 * ABC + 1 * ACQ + -1 * ABQ + -1 * BCQ` |
| 1 | 241 | `{"direction":-1,"kind":"four_point","vertices":"ABCR"}` | 0 | `-1 * ABC + -1 * ACR + 1 * ABR + 1 * BCR` |
| 1 | 247 | `{"direction":-1,"kind":"four_point","vertices":"ABEH"}` | 0 | `-1 * ABE + -1 * AEH + 1 * ABH + 1 * BEH` |
| 1 | 254 | `{"direction":1,"kind":"four_point","vertices":"ABES"}` | 0 | `1 * ABE + 1 * AES + -1 * ABS + -1 * BES` |
| 1 | 256 | `{"direction":1,"kind":"four_point","vertices":"ABFH"}` | 0 | `1 * ABF + 1 * AFH + -1 * ABH + -1 * BFH` |
| 1 | 259 | `{"direction":-1,"kind":"four_point","vertices":"ABFP"}` | 0 | `-1 * ABF + 1 * AFP + 1 * ABP + -1 * BFP` |
| 1 | 261 | `{"direction":-1,"kind":"four_point","vertices":"ABFQ"}` | 0 | `-1 * ABF + 1 * AFQ + 1 * ABQ + -1 * BFQ` |
| 1 | 262 | `{"direction":1,"kind":"four_point","vertices":"ABFR"}` | 0 | `1 * ABF + -1 * AFR + -1 * ABR + 1 * BFR` |
| 1 | 267 | `{"direction":-1,"kind":"four_point","vertices":"ABHP"}` | 0 | `-1 * ABH + 1 * AHP + 1 * ABP + -1 * BHP` |
| 1 | 268 | `{"direction":1,"kind":"four_point","vertices":"ABHQ"}` | 0 | `1 * ABH + -1 * AHQ + -1 * ABQ + 1 * BHQ` |
| 1 | 272 | `{"direction":1,"kind":"four_point","vertices":"ABHS"}` | 0 | `1 * ABH + -1 * AHS + -1 * ABS + 1 * BHS` |
| 1 | 279 | `{"direction":-1,"kind":"four_point","vertices":"ABQS"}` | 0 | `-1 * ABQ + -1 * AQS + 1 * ABS + 1 * BQS` |
| 1 | 280 | `{"direction":1,"kind":"four_point","vertices":"ACEF"}` | 0 | `1 * ACE + 1 * AEF + -1 * ACF + -1 * CEF` |
| 1 | 289 | `{"direction":-1,"kind":"four_point","vertices":"ACER"}` | 0 | `-1 * ACE + -1 * AER + 1 * ACR + 1 * CER` |
| 1 | 293 | `{"direction":-1,"kind":"four_point","vertices":"ACFH"}` | 0 | `-1 * ACF + -1 * AFH + 1 * ACH + 1 * CFH` |
| 1 | 300 | `{"direction":1,"kind":"four_point","vertices":"ACFS"}` | 0 | `1 * ACF + -1 * AFS + -1 * ACS + 1 * CFS` |
| 1 | 319 | `{"direction":-1,"kind":"four_point","vertices":"ACQS"}` | 0 | `-1 * ACQ + -1 * AQS + 1 * ACS + 1 * CQS` |
| 1 | 321 | `{"direction":-1,"kind":"four_point","vertices":"AEFH"}` | 0 | `-1 * AEF + -1 * AFH + 1 * AEH + 1 * EFH` |
| 1 | 326 | `{"direction":1,"kind":"four_point","vertices":"AEFR"}` | 0 | `1 * AEF + -1 * AFR + -1 * AER + 1 * EFR` |
| 1 | 330 | `{"direction":1,"kind":"four_point","vertices":"AEHP"}` | 0 | `1 * AEH + -1 * AHP + -1 * AEP + -1 * EHP` |
| 1 | 338 | `{"direction":1,"kind":"four_point","vertices":"AEPQ"}` | 0 | `1 * AEP + 1 * APQ + -1 * AEQ + 1 * EPQ` |
| 1 | 341 | `{"direction":-1,"kind":"four_point","vertices":"AEPR"}` | 0 | `-1 * AEP + -1 * APR + 1 * AER + -1 * EPR` |
| 1 | 346 | `{"direction":1,"kind":"four_point","vertices":"AEQS"}` | 0 | `1 * AEQ + 1 * AQS + -1 * AES + -1 * EQS` |
| 1 | 352 | `{"direction":1,"kind":"four_point","vertices":"AFHQ"}` | 0 | `1 * AFH + -1 * AHQ + 1 * AFQ + -1 * FHQ` |
| 1 | 356 | `{"direction":1,"kind":"four_point","vertices":"AFHS"}` | 0 | `1 * AFH + -1 * AHS + 1 * AFS + -1 * FHS` |
| 1 | 359 | `{"direction":-1,"kind":"four_point","vertices":"AFPQ"}` | 0 | `1 * AFP + -1 * APQ + -1 * AFQ + 1 * FPQ` |
| 1 | 365 | `{"direction":-1,"kind":"four_point","vertices":"AFQR"}` | 0 | `1 * AFQ + -1 * AQR + -1 * AFR + 1 * FQR` |
| 1 | 373 | `{"direction":-1,"kind":"four_point","vertices":"AHPR"}` | 0 | `1 * AHP + -1 * APR + -1 * AHR + 1 * HPR` |
| 1 | 378 | `{"direction":1,"kind":"four_point","vertices":"AHQS"}` | 0 | `-1 * AHQ + 1 * AQS + 1 * AHS + 1 * HQS` |
| 1 | 383 | `{"direction":-1,"kind":"four_point","vertices":"APQR"}` | 0 | `-1 * APQ + -1 * AQR + 1 * APR + 1 * PQR` |
| 1 | 414 | `{"direction":1,"kind":"four_point","vertices":"BCHR"}` | 0 | `1 * BCH + -1 * BHR + -1 * BCR + 1 * CHR` |
| 1 | 421 | `{"direction":-1,"kind":"four_point","vertices":"BCQR"}` | 0 | `-1 * BCQ + -1 * BQR + 1 * BCR + 1 * CQR` |
| 1 | 441 | `{"direction":-1,"kind":"four_point","vertices":"BEHS"}` | 0 | `-1 * BEH + 1 * BHS + 1 * BES + -1 * EHS` |
| 1 | 454 | `{"direction":1,"kind":"four_point","vertices":"BFHS"}` | 0 | `1 * BFH + -1 * BHS + 1 * BFS + -1 * FHS` |
| 1 | 461 | `{"direction":-1,"kind":"four_point","vertices":"BFQS"}` | 0 | `1 * BFQ + -1 * BQS + -1 * BFS + -1 * FQS` |
| 1 | 464 | `{"direction":1,"kind":"four_point","vertices":"BHQR"}` | 0 | `-1 * BHQ + 1 * BQR + 1 * BHR + -1 * HQR` |
| 1 | 475 | `{"direction":-1,"kind":"four_point","vertices":"CEFR"}` | 0 | `-1 * CEF + 1 * CFR + 1 * CER + -1 * EFR` |
| 1 | 476 | `{"direction":1,"kind":"four_point","vertices":"CEFS"}` | 0 | `1 * CEF + -1 * CFS + -1 * CES + 1 * EFS` |
| 1 | 481 | `{"direction":-1,"kind":"four_point","vertices":"CEHQ"}` | 0 | `-1 * CEH + 1 * CHQ + 1 * CEQ + -1 * EHQ` |
| 1 | 482 | `{"direction":1,"kind":"four_point","vertices":"CEHR"}` | 0 | `1 * CEH + -1 * CHR + -1 * CER + 1 * EHR` |
| 1 | 495 | `{"direction":-1,"kind":"four_point","vertices":"CEQS"}` | 0 | `-1 * CEQ + -1 * CQS + 1 * CES + 1 * EQS` |
| 1 | 496 | `{"direction":1,"kind":"four_point","vertices":"CFHP"}` | 0 | `1 * CFH + -1 * CHP + -1 * CFP + -1 * FHP` |
| 1 | 501 | `{"direction":-1,"kind":"four_point","vertices":"CFHR"}` | 0 | `-1 * CFH + 1 * CHR + -1 * CFR + 1 * FHR` |
| 1 | 521 | `{"direction":-1,"kind":"four_point","vertices":"CHQR"}` | 0 | `1 * CHQ + -1 * CQR + -1 * CHR + 1 * HQR` |
| 1 | 533 | `{"direction":-1,"kind":"four_point","vertices":"EFHR"}` | 0 | `-1 * EFH + 1 * EHR + -1 * EFR + 1 * FHR` |
| 1 | 547 | `{"direction":-1,"kind":"four_point","vertices":"EFRS"}` | 0 | `1 * EFR + -1 * ERS + -1 * EFS + -1 * FRS` |
| 1 | 551 | `{"direction":-1,"kind":"four_point","vertices":"EHPR"}` | 0 | `-1 * EHP + 1 * EPR + -1 * EHR + 1 * HPR` |
| 1 | 552 | `{"direction":1,"kind":"four_point","vertices":"EHPS"}` | 0 | `1 * EHP + -1 * EPS + 1 * EHS + -1 * HPS` |
| 1 | 557 | `{"direction":-1,"kind":"four_point","vertices":"EHQS"}` | 0 | `1 * EHQ + -1 * EQS + -1 * EHS + -1 * HQS` |
| 1 | 558 | `{"direction":1,"kind":"four_point","vertices":"EHRS"}` | 0 | `-1 * EHR + 1 * ERS + 1 * EHS + 1 * HRS` |
| 1 | 562 | `{"direction":1,"kind":"four_point","vertices":"EPQS"}` | 0 | `-1 * EPQ + 1 * EQS + 1 * EPS + -1 * PQS` |
| 1 | 571 | `{"direction":-1,"kind":"four_point","vertices":"FHPS"}` | 0 | `-1 * FHP + -1 * FPS + 1 * FHS + 1 * HPS` |
| 1 | 581 | `{"direction":-1,"kind":"four_point","vertices":"FPQS"}` | 0 | `-1 * FPQ + 1 * FQS + 1 * FPS + 1 * PQS` |
| 1 | 583 | `{"direction":-1,"kind":"four_point","vertices":"FQRS"}` | 0 | `-1 * FQR + 1 * FRS + -1 * FQS + 1 * QRS` |
| 1 | 584 | `{"direction":1,"kind":"four_point","vertices":"HPQR"}` | 0 | `1 * HPQ + 1 * HQR + -1 * HPR + -1 * PQR` |
| 1 | 586 | `{"direction":1,"kind":"four_point","vertices":"HPQS"}` | 0 | `1 * HPQ + -1 * HQS + -1 * HPS + -1 * PQS` |
| 1 | 588 | `{"direction":1,"kind":"four_point","vertices":"HQRS"}` | 0 | `1 * HQR + -1 * HRS + 1 * HQS + -1 * QRS` |
| 1 | 3234 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABF","Y":"AHP","bounds":[{"ref":"336:5","side":"hi","triangle":"ABF","value":"19451/50000"},{"ref":"336:52","side":"lo","triangle":"AHP","value":"5953/50000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABH","Y":"AFP","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:44","side":"lo","triangle":"AFP","value":"3901/40000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABP","Y":"AFH","bounds":[{"ref":"336:8","side":"lo","triangle":"ABP","value":"28449/250000"},{"ref":"336:42","side":"lo","triangle":"AFH","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":195}` | -133319341/5000000000 | `5953/50000 * ABF + 19451/50000 * AHP + -3901/40000 * ABH + -93/1000 * AFP + -93/1000 * ABP + -28449/250000 * AFH` |
| 1 | 3335 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABF","Y":"BHQ","bounds":[{"ref":"336:4","side":"lo","triangle":"ABF","value":"12083/125000"},{"ref":"336:111","side":"hi","triangle":"BHQ","value":"955014565879/1000000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"ABH","Y":"BFQ","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:102","side":"lo","triangle":"BFQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABQ","Y":"BFH","bounds":[{"ref":"336:11","side":"hi","triangle":"ABQ","value":"25153281383/50000000000"},{"ref":"336:99","side":"hi","triangle":"BFH","value":"19451/50000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":201}` | 20977764059520693/125000000000000000 | `955014565879/1000000000000 * ABF + 12083/125000 * BHQ + -13857/20000 * ABH + -93/1000 * BFQ + -19451/50000 * ABQ + -25153281383/50000000000 * BFH` |
| 1 | 3366 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHQ","Y":"BFH","bounds":[{"ref":"336:54","side":"lo","triangle":"AHQ","value":"342151/1000000"},{"ref":"336:99","side":"hi","triangle":"BFH","value":"19451/50000"}],"choice":1,"sign":1,"type":"upper"},{"X":"ABH","Y":"FHQ","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AFH","Y":"BHQ","bounds":[{"ref":"336:42","side":"lo","triangle":"AFH","value":"93/1000"},{"ref":"336:110","side":"lo","triangle":"BHQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":203}` | -2944469801/50000000000 | `19451/50000 * AHQ + 342151/1000000 * BFH + -1643/15625 * ABH + -93/1000 * FHQ + -13857/20000 * AFH + -93/1000 * BHQ` |
| 1 | 3554 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABQ","Y":"AFP","bounds":[{"ref":"336:11","side":"hi","triangle":"ABQ","value":"25153281383/50000000000"},{"ref":"336:44","side":"lo","triangle":"AFP","value":"3901/40000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABF","Y":"APQ","bounds":[{"ref":"336:4","side":"lo","triangle":"ABF","value":"12083/125000"},{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABP","Y":"AFQ","bounds":[{"ref":"336:8","side":"lo","triangle":"ABP","value":"28449/250000"},{"ref":"336:46","side":"lo","triangle":"AFQ","value":"352137/1000000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":215}` | 117428917/2000000000000000 | `3901/40000 * ABQ + 25153281383/50000000000 * AFP + -93/1000 * ABF + -12083/125000 * APQ + -352137/1000000 * ABP + -28449/250000 * AFQ` |
| 1 | 5699 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHR","Y":"CFH","bounds":[{"ref":"336:57","side":"hi","triangle":"AHR","value":"748068213901/1000000000000"},{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ACH","Y":"FHR","bounds":[{"ref":"336:20","side":"lo","triangle":"ACH","value":"5609/40000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AFH","Y":"CHR","bounds":[{"ref":"336:43","side":"hi","triangle":"AFH","value":"16562468147/50000000000"},{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":349}` | 257966972268293607881/3125000000000000000000 | `7659/25000 * AHR + 748068213901/1000000000000 * CFH + -93/1000 * ACH + -5609/40000 * FHR + -56356086523/62500000000 * AFH + -16562468147/50000000000 * CHR` |
| 1 | 6543 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"AQR","Y":"CHQ","bounds":[{"ref":"336:67","side":"hi","triangle":"AQR","value":"367161652791/500000000000"},{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"ACQ","Y":"HQR","bounds":[{"ref":"336:25","side":"hi","triangle":"ACQ","value":"837352529137/1000000000000"},{"ref":"336:218","side":"lo","triangle":"HQR","value":"99167/1000000"}],"choice":0,"sign":1,"type":"upper"},{"X":"AHQ","Y":"CQR","bounds":[{"ref":"336:54","side":"lo","triangle":"AHQ","value":"342151/1000000"},{"ref":"336:159","side":"hi","triangle":"CQR","value":"271495637683/500000000000"}],"choice":1,"sign":1,"type":"upper"}],"relation":401}` | 205128284240136212898721/500000000000000000000000 | `-924768844231/1000000000000 * AQR + -367161652791/500000000000 * CHQ + 99167/1000000 * ACQ + 837352529137/1000000000000 * HQR + 271495637683/500000000000 * AHQ + 342151/1000000 * CQR` |
| 1 | 11206 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"BHP","Y":"CHQ","bounds":[{"ref":"336:108","side":"lo","triangle":"BHP","value":"30733/250000"},{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"BCH","Y":"HPQ","bounds":[{"ref":"336:76","side":"lo","triangle":"BCH","value":"157421/1000000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"BHQ","Y":"CHP","bounds":[{"ref":"336:110","side":"lo","triangle":"BHQ","value":"13857/20000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":693}` | 92217498677/250000000000000000 | `924768844231/1000000000000 * BHP + 30733/250000 * CHQ + -312849/1000000 * BCH + -157421/1000000 * HPQ + -93/1000 * BHQ + -13857/20000 * CHP` |
| 1 | 11345 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"BCR","Y":"CHQ","bounds":[{"ref":"336:83","side":"hi","triangle":"BCR","value":"82377/100000"},{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"BCH","Y":"CQR","bounds":[{"ref":"336:76","side":"lo","triangle":"BCH","value":"157421/1000000"},{"ref":"336:159","side":"hi","triangle":"CQR","value":"271495637683/500000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"BCQ","Y":"CHR","bounds":[{"ref":"336:80","side":"lo","triangle":"BCQ","value":"158693/1000000"},{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"}],"choice":1,"sign":1,"type":"upper"}],"relation":701}` | 13330638455881719/25000000000000000 | `-924768844231/1000000000000 * BCR + -82377/100000 * CHQ + 271495637683/500000000000 * BCH + 157421/1000000 * CQR + 56356086523/62500000000 * BCQ + 158693/1000000 * CHR` |
| 1 | 14674 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CHQ","Y":"FHP","bounds":[{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"},{"ref":"336:192","side":"lo","triangle":"FHP","value":"3009/25000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CFH","Y":"HPQ","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHP","Y":"FHQ","bounds":[{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":-1,"type":"lower"}],"relation":910}` | -142040561291079/25000000000000000 | `3009/25000 * CHQ + 924768844231/1000000000000 * FHP + -312849/1000000 * CFH + -7659/25000 * HPQ + -1643/15625 * CHP + -93/1000 * FHQ` |
| 1 | 14914 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CHR","Y":"FHQ","bounds":[{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":1,"type":"upper"},{"X":"CFH","Y":"HQR","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:218","side":"lo","triangle":"HQR","value":"99167/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHQ","Y":"FHR","bounds":[{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":925}` | 1110857297/1953125000000000 | `1643/15625 * CHR + 56356086523/62500000000 * FHQ + -99167/1000000 * CFH + -7659/25000 * HQR + -93/1000 * CHQ + -13857/20000 * FHR` |
| 1 | 17390 | `{"kind":"quad","relation":1377}` | -279/625 | `1 * APQ + 1 * AQR` |
| 1 | 18181 | `{"kind":"support_envelope","product":{"X":"BFR","Y":"ABR","bounds":[{"ref":"336:104","side":"lo","triangle":"BFR","value":"30787/200000"},{"ref":"336:13","side":"hi","triangle":"ABR","value":"64781429/125000000"}],"choice":1,"sign":1,"type":"upper"},"relation":1858}` | -1994425854623/25000000000000 | `-63093571/125000000 * BFR + 30787/200000 * ABR + 1023/1000 * AFR` |
| 1 | 20818 | `{"direction":1,"kind":"bary_affine","relation":3177,"sources":[{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"},{"ref":"336:152","side":"lo","triangle":"CPQ","value":"75173/500000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:0","side":"lo","triangle":"ABC","value":"93/1000"},{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:10","side":"lo","triangle":"ABQ","value":"74949/250000"}]}` | -34277367513483/1000000000000000 | `-312849/1000000 * ABC + -75173/500000 * ABH + -93/1000 * ABQ + 924768844231/1000000000000 * ABP` |
| 2 | 17 | `{"bound":{"ref":"336:17","side":"hi","triangle":"ACE","value":"33/125"},"direction":"hi","kind":"bound","triangle":"ACE"}` | 33/125 | `-1 * ACE` |
| 2 | 60 | `{"bound":{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"APQ"}` | -93/1000 | `1 * APQ` |
| 2 | 136 | `{"bound":{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CFP"}` | -93/1000 | `1 * CFP` |
| 2 | 144 | `{"bound":{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CHP"}` | -93/1000 | `1 * CHP` |
| 2 | 170 | `{"bound":{"ref":"336:170","side":"lo","triangle":"EFS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"EFS"}` | -93/1000 | `1 * EFS` |
| 2 | 196 | `{"bound":{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"FHR"}` | -93/1000 | `1 * FHR` |
| 2 | 220 | `{"bound":{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"HQS"}` | -93/1000 | `1 * HQS` |
| 2 | 226 | `{"bound":{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"PQS"}` | -93/1000 | `1 * PQS` |
| 2 | 228 | `{"bound":{"ref":"336:228","side":"lo","triangle":"QRS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"QRS"}` | -93/1000 | `1 * QRS` |
| 2 | 235 | `{"direction":-1,"kind":"four_point","vertices":"ABCH"}` | 0 | `-1 * ABC + -1 * ACH + 1 * ABH + 1 * BCH` |
| 2 | 236 | `{"direction":1,"kind":"four_point","vertices":"ABCP"}` | 0 | `1 * ABC + 1 * ACP + -1 * ABP + -1 * BCP` |
| 2 | 238 | `{"direction":1,"kind":"four_point","vertices":"ABCQ"}` | 0 | `1 * ABC + 1 * ACQ + -1 * ABQ + -1 * BCQ` |
| 2 | 249 | `{"direction":-1,"kind":"four_point","vertices":"ABEP"}` | 0 | `-1 * ABE + -1 * AEP + 1 * ABP + 1 * BEP` |
| 2 | 254 | `{"direction":1,"kind":"four_point","vertices":"ABES"}` | 0 | `1 * ABE + 1 * AES + -1 * ABS + -1 * BES` |
| 2 | 262 | `{"direction":1,"kind":"four_point","vertices":"ABFR"}` | 0 | `1 * ABF + -1 * AFR + -1 * ABR + 1 * BFR` |
| 2 | 267 | `{"direction":-1,"kind":"four_point","vertices":"ABHP"}` | 0 | `-1 * ABH + 1 * AHP + 1 * ABP + -1 * BHP` |
| 2 | 271 | `{"direction":-1,"kind":"four_point","vertices":"ABHR"}` | 0 | `-1 * ABH + 1 * AHR + 1 * ABR + -1 * BHR` |
| 2 | 275 | `{"direction":-1,"kind":"four_point","vertices":"ABPQ"}` | 0 | `-1 * ABP + -1 * APQ + 1 * ABQ + -1 * BPQ` |
| 2 | 279 | `{"direction":-1,"kind":"four_point","vertices":"ABQS"}` | 0 | `-1 * ABQ + -1 * AQS + 1 * ABS + 1 * BQS` |
| 2 | 282 | `{"direction":1,"kind":"four_point","vertices":"ACEH"}` | 0 | `1 * ACE + 1 * AEH + -1 * ACH + -1 * CEH` |
| 2 | 286 | `{"direction":1,"kind":"four_point","vertices":"ACEQ"}` | 0 | `1 * ACE + 1 * AEQ + -1 * ACQ + -1 * CEQ` |
| 2 | 289 | `{"direction":-1,"kind":"four_point","vertices":"ACER"}` | 0 | `-1 * ACE + -1 * AER + 1 * ACR + 1 * CER` |
| 2 | 291 | `{"direction":-1,"kind":"four_point","vertices":"ACES"}` | 0 | `-1 * ACE + -1 * AES + 1 * ACS + 1 * CES` |
| 2 | 293 | `{"direction":-1,"kind":"four_point","vertices":"ACFH"}` | 0 | `-1 * ACF + -1 * AFH + 1 * ACH + 1 * CFH` |
| 2 | 294 | `{"direction":1,"kind":"four_point","vertices":"ACFP"}` | 0 | `1 * ACF + -1 * AFP + -1 * ACP + -1 * CFP` |
| 2 | 299 | `{"direction":-1,"kind":"four_point","vertices":"ACFR"}` | 0 | `-1 * ACF + 1 * AFR + 1 * ACR + -1 * CFR` |
| 2 | 300 | `{"direction":1,"kind":"four_point","vertices":"ACFS"}` | 0 | `1 * ACF + -1 * AFS + -1 * ACS + 1 * CFS` |
| 2 | 303 | `{"direction":-1,"kind":"four_point","vertices":"ACHP"}` | 0 | `-1 * ACH + 1 * AHP + 1 * ACP + -1 * CHP` |
| 2 | 316 | `{"direction":1,"kind":"four_point","vertices":"ACQR"}` | 0 | `1 * ACQ + 1 * AQR + -1 * ACR + -1 * CQR` |
| 2 | 319 | `{"direction":-1,"kind":"four_point","vertices":"ACQS"}` | 0 | `-1 * ACQ + -1 * AQS + 1 * ACS + 1 * CQS` |
| 2 | 323 | `{"direction":-1,"kind":"four_point","vertices":"AEFP"}` | 0 | `-1 * AEF + 1 * AFP + 1 * AEP + 1 * EFP` |
| 2 | 324 | `{"direction":1,"kind":"four_point","vertices":"AEFQ"}` | 0 | `1 * AEF + -1 * AFQ + -1 * AEQ + 1 * EFQ` |
| 2 | 333 | `{"direction":-1,"kind":"four_point","vertices":"AEHQ"}` | 0 | `-1 * AEH + 1 * AHQ + 1 * AEQ + -1 * EHQ` |
| 2 | 340 | `{"direction":1,"kind":"four_point","vertices":"AEPR"}` | 0 | `1 * AEP + 1 * APR + -1 * AER + 1 * EPR` |
| 2 | 348 | `{"direction":1,"kind":"four_point","vertices":"AERS"}` | 0 | `1 * AER + -1 * ARS + -1 * AES + -1 * ERS` |
| 2 | 352 | `{"direction":1,"kind":"four_point","vertices":"AFHQ"}` | 0 | `1 * AFH + -1 * AHQ + 1 * AFQ + -1 * FHQ` |
| 2 | 354 | `{"direction":1,"kind":"four_point","vertices":"AFHR"}` | 0 | `1 * AFH + -1 * AHR + 1 * AFR + -1 * FHR` |
| 2 | 356 | `{"direction":1,"kind":"four_point","vertices":"AFHS"}` | 0 | `1 * AFH + -1 * AHS + 1 * AFS + -1 * FHS` |
| 2 | 367 | `{"direction":-1,"kind":"four_point","vertices":"AFQS"}` | 0 | `1 * AFQ + -1 * AQS + -1 * AFS + -1 * FQS` |
| 2 | 368 | `{"direction":1,"kind":"four_point","vertices":"AFRS"}` | 0 | `-1 * AFR + -1 * ARS + 1 * AFS + 1 * FRS` |
| 2 | 374 | `{"direction":1,"kind":"four_point","vertices":"AHPS"}` | 0 | `-1 * AHP + 1 * APS + 1 * AHS + -1 * HPS` |
| 2 | 378 | `{"direction":1,"kind":"four_point","vertices":"AHQS"}` | 0 | `-1 * AHQ + 1 * AQS + 1 * AHS + 1 * HQS` |
| 2 | 382 | `{"direction":1,"kind":"four_point","vertices":"APQR"}` | 0 | `1 * APQ + 1 * AQR + -1 * APR + -1 * PQR` |
| 2 | 384 | `{"direction":1,"kind":"four_point","vertices":"APQS"}` | 0 | `1 * APQ + 1 * AQS + -1 * APS + -1 * PQS` |
| 2 | 387 | `{"direction":-1,"kind":"four_point","vertices":"AQRS"}` | 0 | `-1 * AQR + 1 * ARS + 1 * AQS + 1 * QRS` |
| 2 | 393 | `{"direction":-1,"kind":"four_point","vertices":"BCEP"}` | 0 | `-1 * BCE + -1 * BEP + 1 * BCP + 1 * CEP` |
| 2 | 395 | `{"direction":-1,"kind":"four_point","vertices":"BCEQ"}` | 0 | `-1 * BCE + -1 * BEQ + 1 * BCQ + 1 * CEQ` |
| 2 | 398 | `{"direction":1,"kind":"four_point","vertices":"BCES"}` | 0 | `1 * BCE + 1 * BES + -1 * BCS + -1 * CES` |
| 2 | 404 | `{"direction":1,"kind":"four_point","vertices":"BCFQ"}` | 0 | `1 * BCF + -1 * BFQ + -1 * BCQ + 1 * CFQ` |
| 2 | 417 | `{"direction":-1,"kind":"four_point","vertices":"BCHS"}` | 0 | `-1 * BCH + 1 * BHS + 1 * BCS + -1 * CHS` |
| 2 | 425 | `{"direction":-1,"kind":"four_point","vertices":"BEFH"}` | 0 | `-1 * BEF + -1 * BFH + 1 * BEH + 1 * EFH` |
| 2 | 428 | `{"direction":1,"kind":"four_point","vertices":"BEFQ"}` | 0 | `1 * BEF + -1 * BFQ + -1 * BEQ + 1 * EFQ` |
| 2 | 443 | `{"direction":-1,"kind":"four_point","vertices":"BEPQ"}` | 0 | `-1 * BEP + 1 * BPQ + 1 * BEQ + -1 * EPQ` |
| 2 | 448 | `{"direction":1,"kind":"four_point","vertices":"BFHP"}` | 0 | `1 * BFH + -1 * BHP + 1 * BFP + -1 * FHP` |
| 2 | 452 | `{"direction":1,"kind":"four_point","vertices":"BFHR"}` | 0 | `1 * BFH + -1 * BHR + 1 * BFR + -1 * FHR` |
| 2 | 459 | `{"direction":-1,"kind":"four_point","vertices":"BFQR"}` | 0 | `1 * BFQ + -1 * BQR + -1 * BFR + 1 * FQR` |
| 2 | 463 | `{"direction":-1,"kind":"four_point","vertices":"BHPQ"}` | 0 | `1 * BHP + 1 * BPQ + -1 * BHQ + 1 * HPQ` |
| 2 | 464 | `{"direction":1,"kind":"four_point","vertices":"BHQR"}` | 0 | `-1 * BHQ + 1 * BQR + 1 * BHR + -1 * HQR` |
| 2 | 467 | `{"direction":-1,"kind":"four_point","vertices":"BHQS"}` | 0 | `1 * BHQ + -1 * BQS + -1 * BHS + -1 * HQS` |
| 2 | 482 | `{"direction":1,"kind":"four_point","vertices":"CEHR"}` | 0 | `1 * CEH + -1 * CHR + -1 * CER + 1 * EHR` |
| 2 | 489 | `{"direction":-1,"kind":"four_point","vertices":"CEPR"}` | 0 | `-1 * CEP + 1 * CPR + 1 * CER + -1 * EPR` |
| 2 | 490 | `{"direction":1,"kind":"four_point","vertices":"CEPS"}` | 0 | `1 * CEP + -1 * CPS + -1 * CES + 1 * EPS` |
| 2 | 495 | `{"direction":-1,"kind":"four_point","vertices":"CEQS"}` | 0 | `-1 * CEQ + -1 * CQS + 1 * CES + 1 * EQS` |
| 2 | 503 | `{"direction":-1,"kind":"four_point","vertices":"CFHS"}` | 0 | `-1 * CFH + 1 * CHS + -1 * CFS + 1 * FHS` |
| 2 | 510 | `{"direction":1,"kind":"four_point","vertices":"CFQR"}` | 0 | `-1 * CFQ + 1 * CQR + 1 * CFR + -1 * FQR` |
| 2 | 512 | `{"direction":1,"kind":"four_point","vertices":"CFQS"}` | 0 | `-1 * CFQ + 1 * CQS + 1 * CFS + 1 * FQS` |
| 2 | 516 | `{"direction":1,"kind":"four_point","vertices":"CHPR"}` | 0 | `-1 * CHP + -1 * CPR + 1 * CHR + -1 * HPR` |
| 2 | 521 | `{"direction":-1,"kind":"four_point","vertices":"CHQR"}` | 0 | `1 * CHQ + -1 * CQR + -1 * CHR + 1 * HQR` |
| 2 | 524 | `{"direction":1,"kind":"four_point","vertices":"CPQR"}` | 0 | `-1 * CPQ + 1 * CQR + 1 * CPR + -1 * PQR` |
| 2 | 526 | `{"direction":1,"kind":"four_point","vertices":"CPQS"}` | 0 | `-1 * CPQ + 1 * CQS + 1 * CPS + -1 * PQS` |
| 2 | 528 | `{"direction":1,"kind":"four_point","vertices":"EFHP"}` | 0 | `1 * EFH + 1 * EHP + -1 * EFP + -1 * FHP` |
| 2 | 531 | `{"direction":-1,"kind":"four_point","vertices":"EFHQ"}` | 0 | `-1 * EFH + 1 * EHQ + -1 * EFQ + 1 * FHQ` |
| 2 | 532 | `{"direction":1,"kind":"four_point","vertices":"EFHR"}` | 0 | `1 * EFH + -1 * EHR + 1 * EFR + -1 * FHR` |
| 2 | 537 | `{"direction":-1,"kind":"four_point","vertices":"EFPQ"}` | 0 | `-1 * EFP + 1 * EPQ + -1 * EFQ + 1 * FPQ` |
| 2 | 545 | `{"direction":-1,"kind":"four_point","vertices":"EFQS"}` | 0 | `1 * EFQ + -1 * EQS + -1 * EFS + -1 * FQS` |
| 2 | 546 | `{"direction":1,"kind":"four_point","vertices":"EFRS"}` | 0 | `-1 * EFR + 1 * ERS + 1 * EFS + 1 * FRS` |
| 2 | 549 | `{"direction":-1,"kind":"four_point","vertices":"EHPQ"}` | 0 | `-1 * EHP + 1 * EPQ + -1 * EHQ + 1 * HPQ` |
| 2 | 555 | `{"direction":-1,"kind":"four_point","vertices":"EHQR"}` | 0 | `1 * EHQ + -1 * EQR + -1 * EHR + 1 * HQR` |
| 2 | 558 | `{"direction":1,"kind":"four_point","vertices":"EHRS"}` | 0 | `-1 * EHR + 1 * ERS + 1 * EHS + 1 * HRS` |
| 2 | 562 | `{"direction":1,"kind":"four_point","vertices":"EPQS"}` | 0 | `-1 * EPQ + 1 * EQS + 1 * EPS + -1 * PQS` |
| 2 | 585 | `{"direction":-1,"kind":"four_point","vertices":"HPQR"}` | 0 | `-1 * HPQ + -1 * HQR + 1 * HPR + 1 * PQR` |
| 2 | 588 | `{"direction":1,"kind":"four_point","vertices":"HQRS"}` | 0 | `1 * HQR + -1 * HRS + 1 * HQS + -1 * QRS` |
| 2 | 754 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABE","Y":"BCH","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:76","side":"lo","triangle":"BCH","value":"157421/1000000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ABC","Y":"BEH","bounds":[{"ref":"336:0","side":"lo","triangle":"ABC","value":"93/1000"},{"ref":"336:88","side":"lo","triangle":"BEH","value":"77233/250000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ABH","Y":"BCE","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:72","side":"lo","triangle":"BCE","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":40}` | -1044867/250000000 | `157421/1000000 * ABE + 33/125 * BCH + -77233/250000 * ABC + -93/1000 * BEH + -93/1000 * ABH + -93/1000 * BCE` |
| 2 | 2664 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"ABQ","Y":"AEH","bounds":[{"ref":"336:10","side":"lo","triangle":"ABQ","value":"74949/250000"},{"ref":"336:33","side":"hi","triangle":"AEH","value":"851497/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"ABE","Y":"AHQ","bounds":[{"ref":"336:3","side":"hi","triangle":"ABE","value":"33/125"},{"ref":"336:55","side":"hi","triangle":"AHQ","value":"851497/1000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"ABH","Y":"AEQ","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:36","side":"lo","triangle":"AEQ","value":"167381/500000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":159}` | 163169847/250000000000 | `851497/1000000 * ABQ + 74949/250000 * AEH + -851497/1000000 * ABE + -33/125 * AHQ + -167381/500000 * ABH + -93/1000 * AEQ` |
| 2 | 3447 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHR","Y":"BFH","bounds":[{"ref":"336:56","side":"lo","triangle":"AHR","value":"56813/500000"},{"ref":"336:99","side":"hi","triangle":"BFH","value":"19451/50000"}],"choice":1,"sign":1,"type":"upper"},{"X":"ABH","Y":"FHR","bounds":[{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AFH","Y":"BHR","bounds":[{"ref":"336:43","side":"hi","triangle":"AFH","value":"16562468147/50000000000"},{"ref":"336:113","side":"hi","triangle":"BHR","value":"107637802637/125000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":208}` | 1560536511838385103639/6250000000000000000000 | `19451/50000 * AHR + 56813/500000 * BFH + -93/1000 * ABH + -93/1000 * FHR + -107637802637/125000000000 * AFH + -16562468147/50000000000 * BHR` |
| 2 | 4252 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"ABQ","Y":"PQR","bounds":[{"ref":"336:10","side":"lo","triangle":"ABQ","value":"74949/250000"},{"ref":"336:224","side":"lo","triangle":"PQR","value":"1948/15625"}],"choice":0,"sign":-1,"type":"lower"},{"X":"APQ","Y":"BQR","bounds":[{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"},{"ref":"336:119","side":"hi","triangle":"BQR","value":"73536791931/100000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"AQR","Y":"BPQ","bounds":[{"ref":"336:67","side":"hi","triangle":"AQR","value":"367161652791/500000000000"},{"ref":"336:116","side":"lo","triangle":"BPQ","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":258}` | -24826279250739/250000000000000 | `-1948/15625 * ABQ + -74949/250000 * PQR + 73536791931/100000000000 * APQ + 93/1000 * BQR + 93/1000 * AQR + 367161652791/500000000000 * BPQ` |
| 2 | 4858 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"AEQ","Y":"CEH","bounds":[{"ref":"336:36","side":"lo","triangle":"AEQ","value":"167381/500000"},{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ACE","Y":"EHQ","bounds":[{"ref":"336:17","side":"hi","triangle":"ACE","value":"33/125"},{"ref":"336:174","side":"lo","triangle":"EHQ","value":"279/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"AEH","Y":"CEQ","bounds":[{"ref":"336:33","side":"hi","triangle":"AEH","value":"851497/1000000"},{"ref":"336:128","side":"lo","triangle":"CEQ","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":296}` | -13182322177/250000000000 | `-149533/500000 * AEQ + -167381/500000 * CEH + 279/1000 * ACE + 33/125 * EHQ + 93/1000 * AEH + 851497/1000000 * CEQ` |
| 2 | 5098 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"AEQ","Y":"CEP","bounds":[{"ref":"336:36","side":"lo","triangle":"AEQ","value":"167381/500000"},{"ref":"336:126","side":"lo","triangle":"CEP","value":"56533/500000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"ACE","Y":"EPQ","bounds":[{"ref":"336:17","side":"hi","triangle":"ACE","value":"33/125"},{"ref":"336:180","side":"lo","triangle":"EPQ","value":"74381/500000"}],"choice":0,"sign":1,"type":"upper"},{"X":"AEP","Y":"CEQ","bounds":[{"ref":"336:35","side":"hi","triangle":"AEP","value":"116341/250000"},{"ref":"336:128","side":"lo","triangle":"CEQ","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":311}` | -11175454927/250000000000 | `-56533/500000 * AEQ + -167381/500000 * CEP + 74381/500000 * ACE + 33/125 * EPQ + 93/1000 * AEP + 116341/250000 * CEQ` |
| 2 | 6610 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHQ","Y":"CQS","bounds":[{"ref":"336:55","side":"hi","triangle":"AHQ","value":"851497/1000000"},{"ref":"336:160","side":"lo","triangle":"CQS","value":"31031/250000"}],"choice":0,"sign":1,"type":"upper"},{"X":"ACQ","Y":"HQS","bounds":[{"ref":"336:24","side":"lo","triangle":"ACQ","value":"168173/500000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AQS","Y":"CHQ","bounds":[{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"},{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":406}` | -2493996407/250000000000 | `31031/250000 * AHQ + 851497/1000000 * CQS + -93/1000 * ACQ + -168173/500000 * HQS + -13857/20000 * AQS + -93/1000 * CHQ` |
| 2 | 7730 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHP","Y":"EPQ","bounds":[{"ref":"336:53","side":"hi","triangle":"AHP","value":"149477/250000"},{"ref":"336:180","side":"lo","triangle":"EPQ","value":"74381/500000"}],"choice":0,"sign":1,"type":"upper"},{"X":"AEP","Y":"HPQ","bounds":[{"ref":"336:34","side":"lo","triangle":"AEP","value":"93/1000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"APQ","Y":"EHP","bounds":[{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"},{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":476}` | -200007941/3906250000 | `74381/500000 * AHP + 149477/250000 * EPQ + -312849/1000000 * AEP + -93/1000 * HPQ + -93/1000 * APQ + -93/1000 * EHP` |
| 2 | 8802 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AHQ","Y":"FQS","bounds":[{"ref":"336:55","side":"hi","triangle":"AHQ","value":"851497/1000000"},{"ref":"336:208","side":"lo","triangle":"FQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"AFQ","Y":"HQS","bounds":[{"ref":"336:46","side":"lo","triangle":"AFQ","value":"352137/1000000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AQS","Y":"FHQ","bounds":[{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":-1,"type":"lower"}],"relation":543}` | -1145667/31250000 | `93/1000 * AHQ + 851497/1000000 * FQS + -93/1000 * AFQ + -352137/1000000 * HQS + -1643/15625 * AQS + -93/1000 * FHQ` |
| 2 | 10598 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"BCP","Y":"FHP","bounds":[{"ref":"336:78","side":"lo","triangle":"BCP","value":"57391/500000"},{"ref":"336:193","side":"hi","triangle":"FHP","value":"397749/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"BFP","Y":"CHP","bounds":[{"ref":"336:100","side":"lo","triangle":"BFP","value":"93/1000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"BHP","Y":"CFP","bounds":[{"ref":"336:108","side":"lo","triangle":"BHP","value":"30733/250000"},{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":655}` | -12786374859/500000000000 | `397749/1000000 * BCP + 57391/500000 * FHP + -93/1000 * BFP + -93/1000 * CHP + -93/1000 * BHP + -30733/250000 * CFP` |
| 2 | 10623 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"BCF","Y":"BHQ","bounds":[{"ref":"336:75","side":"hi","triangle":"BCF","value":"82377/100000"},{"ref":"336:111","side":"hi","triangle":"BHQ","value":"955014565879/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"BCH","Y":"BFQ","bounds":[{"ref":"336:77","side":"hi","triangle":"BCH","value":"9930464973/12500000000"},{"ref":"336:102","side":"lo","triangle":"BFQ","value":"13857/20000"}],"choice":0,"sign":1,"type":"upper"},{"X":"BCQ","Y":"BFH","bounds":[{"ref":"336:80","side":"lo","triangle":"BCQ","value":"158693/1000000"},{"ref":"336:99","side":"hi","triangle":"BFH","value":"19451/50000"}],"choice":1,"sign":1,"type":"upper"}],"relation":656}` | 17455178555069983/100000000000000000 | `-955014565879/1000000000000 * BCF + -82377/100000 * BHQ + 13857/20000 * BCH + 9930464973/12500000000 * BFQ + 19451/50000 * BCQ + 158693/1000000 * BFH` |
| 2 | 10625 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"BCF","Y":"BHQ","bounds":[{"ref":"336:75","side":"hi","triangle":"BCF","value":"82377/100000"},{"ref":"336:111","side":"hi","triangle":"BHQ","value":"955014565879/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"BCH","Y":"BFQ","bounds":[{"ref":"336:76","side":"lo","triangle":"BCH","value":"157421/1000000"},{"ref":"336:103","side":"hi","triangle":"BFQ","value":"222283853217/250000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"BCQ","Y":"BFH","bounds":[{"ref":"336:80","side":"lo","triangle":"BCQ","value":"158693/1000000"},{"ref":"336:99","side":"hi","triangle":"BFH","value":"19451/50000"}],"choice":1,"sign":1,"type":"upper"}],"relation":656}` | 292504506122525201/500000000000000000 | `-955014565879/1000000000000 * BCF + -82377/100000 * BHQ + 222283853217/250000000000 * BCH + 157421/1000000 * BFQ + 19451/50000 * BCQ + 158693/1000000 * BFH` |
| 2 | 12852 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"BHR","Y":"FHQ","bounds":[{"ref":"336:113","side":"hi","triangle":"BHR","value":"107637802637/125000000000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":1,"type":"upper"},{"X":"BFH","Y":"HQR","bounds":[{"ref":"336:99","side":"hi","triangle":"BFH","value":"19451/50000"},{"ref":"336:219","side":"hi","triangle":"HQR","value":"107384188469/200000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"BHQ","Y":"FHR","bounds":[{"ref":"336:110","side":"lo","triangle":"BHQ","value":"13857/20000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":796}` | 45690348301991327/250000000000000000 | `1643/15625 * BHR + 107637802637/125000000000 * FHQ + -107384188469/200000000000 * BFH + -19451/50000 * HQR + -93/1000 * BHQ + -13857/20000 * FHR` |
| 2 | 13954 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFS","Y":"EQS","bounds":[{"ref":"336:143","side":"hi","triangle":"CFS","value":"537263/1000000"},{"ref":"336:188","side":"lo","triangle":"EQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CES","Y":"FQS","bounds":[{"ref":"336:132","side":"lo","triangle":"CES","value":"7893/62500"},{"ref":"336:208","side":"lo","triangle":"FQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CQS","Y":"EFS","bounds":[{"ref":"336:160","side":"lo","triangle":"CQS","value":"31031/250000"},{"ref":"336:170","side":"lo","triangle":"EFS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":865}` | -26677143/1000000000 | `93/1000 * CFS + 537263/1000000 * EQS + -93/1000 * CES + -7893/62500 * FQS + -93/1000 * CQS + -31031/250000 * EFS` |
| 2 | 14694 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CPQ","Y":"FHP","bounds":[{"ref":"336:152","side":"lo","triangle":"CPQ","value":"75173/500000"},{"ref":"336:193","side":"hi","triangle":"FHP","value":"397749/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CFP","Y":"HPQ","bounds":[{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHP","Y":"FPQ","bounds":[{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:200","side":"lo","triangle":"FPQ","value":"283723/1000000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":911}` | -2159387577/500000000000 | `397749/1000000 * CPQ + 75173/500000 * FHP + -312849/1000000 * CFP + -93/1000 * HPQ + -283723/1000000 * CHP + -93/1000 * FPQ` |
| 2 | 15430 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CQS","Y":"HPS","bounds":[{"ref":"336:160","side":"lo","triangle":"CQS","value":"31031/250000"},{"ref":"336:217","side":"hi","triangle":"HPS","value":"445761/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CHS","Y":"PQS","bounds":[{"ref":"336:150","side":"lo","triangle":"CHS","value":"353983/1000000"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CPS","Y":"HQS","bounds":[{"ref":"336:156","side":"lo","triangle":"CPS","value":"103599/1000000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":957}` | -3193628091/250000000000 | `445761/1000000 * CQS + 31031/250000 * HPS + -93/1000 * CHS + -353983/1000000 * PQS + -93/1000 * CPS + -103599/1000000 * HQS` |
| 2 | 16406 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"EQS","Y":"HPS","bounds":[{"ref":"336:188","side":"lo","triangle":"EQS","value":"93/1000"},{"ref":"336:217","side":"hi","triangle":"HPS","value":"445761/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"EHS","Y":"PQS","bounds":[{"ref":"336:178","side":"lo","triangle":"EHS","value":"93/1000"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"EPS","Y":"HQS","bounds":[{"ref":"336:184","side":"lo","triangle":"EPS","value":"59693/500000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":1018}` | -173631/8000000 | `445761/1000000 * EQS + 93/1000 * HPS + -93/1000 * EHS + -93/1000 * PQS + -93/1000 * EPS + -59693/500000 * HQS` |
| 2 | 16694 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"FQS","Y":"HPQ","bounds":[{"ref":"336:208","side":"lo","triangle":"FQS","value":"93/1000"},{"ref":"336:213","side":"hi","triangle":"HPQ","value":"631761/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"FHQ","Y":"PQS","bounds":[{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"FPQ","Y":"HQS","bounds":[{"ref":"336:200","side":"lo","triangle":"FPQ","value":"283723/1000000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":1036}` | -11294199/500000000 | `631761/1000000 * FQS + 93/1000 * HPQ + -93/1000 * FHQ + -1643/15625 * PQS + -93/1000 * FPQ + -283723/1000000 * HQS` |
| 2 | 16822 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"FQS","Y":"HRS","bounds":[{"ref":"336:208","side":"lo","triangle":"FQS","value":"93/1000"},{"ref":"336:223","side":"hi","triangle":"HRS","value":"252927/500000"}],"choice":1,"sign":1,"type":"upper"},{"X":"FHS","Y":"QRS","bounds":[{"ref":"336:198","side":"lo","triangle":"FHS","value":"48851/500000"},{"ref":"336:228","side":"lo","triangle":"QRS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"FRS","Y":"HQS","bounds":[{"ref":"336:210","side":"lo","triangle":"FRS","value":"29679/250000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":1044}` | -6729387/250000000 | `252927/500000 * FQS + 93/1000 * HRS + -93/1000 * FHS + -48851/500000 * QRS + -93/1000 * FRS + -29679/250000 * HQS` |
| 2 | 16891 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"HPQ","Y":"QRS","bounds":[{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"},{"ref":"336:228","side":"lo","triangle":"QRS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"HQR","Y":"PQS","bounds":[{"ref":"336:219","side":"hi","triangle":"HQR","value":"107384188469/200000000000"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"HQS","Y":"PQR","bounds":[{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"},{"ref":"336:225","side":"hi","triangle":"PQR","value":"243181/500000"}],"choice":1,"sign":1,"type":"upper"}],"relation":1048}` | -13214071327617/200000000000000 | `-93/1000 * HPQ + -312849/1000000 * QRS + 93/1000 * HQR + 107384188469/200000000000 * PQS + 243181/500000 * HQS + 93/1000 * PQR` |
| 2 | 17045 | `{"kind":"quad","relation":1147}` | -279/625 | `1 * BQS + 1 * ABS` |
| 2 | 17822 | `{"kind":"quad","relation":1665}` | -279/625 | `1 * EQR + 1 * EFR` |
| 2 | 20654 | `{"direction":1,"kind":"bary_affine","relation":3095,"sources":[{"ref":"336:135","side":"hi","triangle":"CFH","value":"310206222641/500000000000"},{"ref":"336:192","side":"lo","triangle":"FHP","value":"3009/25000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:0","side":"lo","triangle":"ABC","value":"93/1000"},{"ref":"336:4","side":"lo","triangle":"ABF","value":"12083/125000"},{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"}]}` | -14603438705613/500000000000000 | `-3009/25000 * ABC + -93/1000 * ABF + -93/1000 * ABH + 310206222641/500000000000 * ABP` |
| 2 | 20818 | `{"direction":1,"kind":"bary_affine","relation":3177,"sources":[{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"},{"ref":"336:152","side":"lo","triangle":"CPQ","value":"75173/500000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:0","side":"lo","triangle":"ABC","value":"93/1000"},{"ref":"336:6","side":"lo","triangle":"ABH","value":"93/1000"},{"ref":"336:10","side":"lo","triangle":"ABQ","value":"74949/250000"}]}` | -34277367513483/1000000000000000 | `-312849/1000000 * ABC + -75173/500000 * ABH + -93/1000 * ABQ + 924768844231/1000000000000 * ABP` |
| 3 | 136 | `{"bound":{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CFP"}` | -93/1000 | `1 * CFP` |
| 3 | 139 | `{"bound":{"ref":"336:139","side":"hi","triangle":"CFQ","value":"211190522417/250000000000"},"direction":"hi","kind":"bound","triangle":"CFQ"}` | 211190522417/250000000000 | `-1 * CFQ` |
| 3 | 144 | `{"bound":{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CHP"}` | -93/1000 | `1 * CHP` |
| 3 | 172 | `{"bound":{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"EHP"}` | -93/1000 | `1 * EHP` |
| 3 | 175 | `{"bound":{"ref":"336:175","side":"hi","triangle":"EHQ","value":"382819/500000"},"direction":"hi","kind":"bound","triangle":"EHQ"}` | 382819/500000 | `-1 * EHQ` |
| 3 | 295 | `{"direction":-1,"kind":"four_point","vertices":"ACFP"}` | 0 | `-1 * ACF + 1 * AFP + 1 * ACP + 1 * CFP` |
| 3 | 296 | `{"direction":1,"kind":"four_point","vertices":"ACFQ"}` | 0 | `1 * ACF + -1 * AFQ + -1 * ACQ + 1 * CFQ` |
| 3 | 315 | `{"direction":-1,"kind":"four_point","vertices":"ACPS"}` | 0 | `-1 * ACP + -1 * APS + 1 * ACS + -1 * CPS` |
| 3 | 318 | `{"direction":1,"kind":"four_point","vertices":"ACQS"}` | 0 | `1 * ACQ + 1 * AQS + -1 * ACS + -1 * CQS` |
| 3 | 351 | `{"direction":-1,"kind":"four_point","vertices":"AFHP"}` | 0 | `-1 * AFH + 1 * AHP + -1 * AFP + 1 * FHP` |
| 3 | 352 | `{"direction":1,"kind":"four_point","vertices":"AFHQ"}` | 0 | `1 * AFH + -1 * AHQ + 1 * AFQ + -1 * FHQ` |
| 3 | 374 | `{"direction":1,"kind":"four_point","vertices":"AHPS"}` | 0 | `-1 * AHP + 1 * APS + 1 * AHS + -1 * HPS` |
| 3 | 379 | `{"direction":-1,"kind":"four_point","vertices":"AHQS"}` | 0 | `1 * AHQ + -1 * AQS + -1 * AHS + -1 * HQS` |
| 3 | 471 | `{"direction":-1,"kind":"four_point","vertices":"CEFP"}` | 0 | `-1 * CEF + -1 * CFP + 1 * CEP + 1 * EFP` |
| 3 | 479 | `{"direction":-1,"kind":"four_point","vertices":"CEHP"}` | 0 | `-1 * CEH + 1 * CHP + 1 * CEP + 1 * EHP` |
| 3 | 489 | `{"direction":-1,"kind":"four_point","vertices":"CEPR"}` | 0 | `-1 * CEP + 1 * CPR + 1 * CER + -1 * EPR` |
| 3 | 492 | `{"direction":1,"kind":"four_point","vertices":"CEQR"}` | 0 | `1 * CEQ + 1 * CQR + -1 * CER + -1 * EQR` |
| 3 | 506 | `{"direction":1,"kind":"four_point","vertices":"CFPR"}` | 0 | `1 * CFP + -1 * CPR + 1 * CFR + -1 * FPR` |
| 3 | 511 | `{"direction":-1,"kind":"four_point","vertices":"CFQR"}` | 0 | `1 * CFQ + -1 * CQR + -1 * CFR + 1 * FQR` |
| 3 | 516 | `{"direction":1,"kind":"four_point","vertices":"CHPR"}` | 0 | `-1 * CHP + -1 * CPR + 1 * CHR + -1 * HPR` |
| 3 | 521 | `{"direction":-1,"kind":"four_point","vertices":"CHQR"}` | 0 | `1 * CHQ + -1 * CQR + -1 * CHR + 1 * HQR` |
| 3 | 526 | `{"direction":1,"kind":"four_point","vertices":"CPQS"}` | 0 | `-1 * CPQ + 1 * CQS + 1 * CPS + -1 * PQS` |
| 3 | 530 | `{"direction":1,"kind":"four_point","vertices":"EFHQ"}` | 0 | `1 * EFH + -1 * EHQ + 1 * EFQ + -1 * FHQ` |
| 3 | 537 | `{"direction":-1,"kind":"four_point","vertices":"EFPQ"}` | 0 | `-1 * EFP + 1 * EPQ + -1 * EFQ + 1 * FPQ` |
| 3 | 549 | `{"direction":-1,"kind":"four_point","vertices":"EHPQ"}` | 0 | `-1 * EHP + 1 * EPQ + -1 * EHQ + 1 * HPQ` |
| 3 | 560 | `{"direction":1,"kind":"four_point","vertices":"EPQR"}` | 0 | `-1 * EPQ + 1 * EQR + 1 * EPR + -1 * PQR` |
| 3 | 569 | `{"direction":-1,"kind":"four_point","vertices":"FHPR"}` | 0 | `-1 * FHP + -1 * FPR + 1 * FHR + 1 * HPR` |
| 3 | 572 | `{"direction":1,"kind":"four_point","vertices":"FHQR"}` | 0 | `1 * FHQ + 1 * FQR + -1 * FHR + -1 * HQR` |
| 3 | 579 | `{"direction":-1,"kind":"four_point","vertices":"FPQR"}` | 0 | `-1 * FPQ + -1 * FQR + 1 * FPR + 1 * PQR` |
| 3 | 585 | `{"direction":-1,"kind":"four_point","vertices":"HPQR"}` | 0 | `-1 * HPQ + -1 * HQR + 1 * HPR + 1 * PQR` |
| 3 | 587 | `{"direction":-1,"kind":"four_point","vertices":"HPQS"}` | 0 | `-1 * HPQ + 1 * HQS + 1 * HPS + 1 * PQS` |
| 3 | 13302 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CEH","Y":"FHP","bounds":[{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"},{"ref":"336:193","side":"hi","triangle":"FHP","value":"397749/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CFH","Y":"EHP","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHP","Y":"EFH","bounds":[{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:162","side":"lo","triangle":"EFH","value":"34463/250000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":824}` | -38820743217/500000000000 | `397749/1000000 * CEH + 149533/500000 * FHP + -93/1000 * CFH + -7659/25000 * EHP + -34463/250000 * CHP + -93/1000 * EFH` |
| 3 | 13336 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CEF","Y":"CHQ","bounds":[{"ref":"336:122","side":"lo","triangle":"CEF","value":"131101/1000000"},{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CEH","Y":"CFQ","bounds":[{"ref":"336:125","side":"hi","triangle":"CEH","value":"80145924441/125000000000"},{"ref":"336:139","side":"hi","triangle":"CFQ","value":"211190522417/250000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"CEQ","Y":"CFH","bounds":[{"ref":"336:128","side":"lo","triangle":"CEQ","value":"93/1000"},{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":826}` | 14027727144552938350147/31250000000000000000000 | `924768844231/1000000000000 * CEF + 131101/1000000 * CHQ + -211190522417/250000000000 * CEH + -80145924441/125000000000 * CFQ + -7659/25000 * CEQ + -93/1000 * CFH` |
| 3 | 13401 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFQ","Y":"EHQ","bounds":[{"ref":"336:138","side":"lo","triangle":"CFQ","value":"77531/250000"},{"ref":"336:175","side":"hi","triangle":"EHQ","value":"382819/500000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CEQ","Y":"FHQ","bounds":[{"ref":"336:129","side":"hi","triangle":"CEQ","value":"27153916357/62500000000"},{"ref":"336:195","side":"hi","triangle":"FHQ","value":"4747699243/10000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"CHQ","Y":"EFQ","bounds":[{"ref":"336:147","side":"hi","triangle":"CHQ","value":"924768844231/1000000000000"},{"ref":"336:167","side":"hi","triangle":"EFQ","value":"67920129799/100000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":830}` | 59693128524259007179729/100000000000000000000000 | `382819/500000 * CFQ + 77531/250000 * EHQ + -4747699243/10000000000 * CEQ + -27153916357/62500000000 * FHQ + -67920129799/100000000000 * CHQ + -924768844231/1000000000000 * EFQ` |
| 3 | 14038 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CEH","Y":"HPQ","bounds":[{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"},{"ref":"336:213","side":"hi","triangle":"HPQ","value":"631761/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CHP","Y":"EHQ","bounds":[{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:174","side":"lo","triangle":"EHQ","value":"279/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHQ","Y":"EHP","bounds":[{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"},{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":870}` | -49278092613/500000000000 | `631761/1000000 * CEH + 149533/500000 * HPQ + -279/1000 * CHP + -93/1000 * EHQ + -93/1000 * CHQ + -13857/20000 * EHP` |
| 3 | 14647 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFH","Y":"CPQ","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:153","side":"hi","triangle":"CPQ","value":"12973/25000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CFP","Y":"CHQ","bounds":[{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFQ","Y":"CHP","bounds":[{"ref":"336:139","side":"hi","triangle":"CFQ","value":"211190522417/250000000000"},{"ref":"336:145","side":"hi","triangle":"CHP","value":"407053/1000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":908}` | 62330415421407101/250000000000000000 | `12973/25000 * CFH + 7659/25000 * CPQ + -13857/20000 * CFP + -93/1000 * CHQ + -407053/1000000 * CFQ + -211190522417/250000000000 * CHP` |
| 3 | 14690 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CPQ","Y":"FHP","bounds":[{"ref":"336:153","side":"hi","triangle":"CPQ","value":"12973/25000"},{"ref":"336:192","side":"lo","triangle":"FHP","value":"3009/25000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CFP","Y":"HPQ","bounds":[{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHP","Y":"FPQ","bounds":[{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:200","side":"lo","triangle":"FPQ","value":"283723/1000000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":911}` | -8720019/1250000000 | `3009/25000 * CPQ + 12973/25000 * FHP + -312849/1000000 * CFP + -93/1000 * HPQ + -283723/1000000 * CHP + -93/1000 * FPQ` |
| 4 | 42 | `{"bound":{"ref":"336:42","side":"lo","triangle":"AFH","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"AFH"}` | -93/1000 | `1 * AFH` |
| 4 | 136 | `{"bound":{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CFP"}` | -93/1000 | `1 * CFP` |
| 4 | 141 | `{"bound":{"ref":"336:141","side":"hi","triangle":"CFR","value":"382819/500000"},"direction":"hi","kind":"bound","triangle":"CFR"}` | 382819/500000 | `-1 * CFR` |
| 4 | 144 | `{"bound":{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"CHP"}` | -93/1000 | `1 * CHP` |
| 4 | 170 | `{"bound":{"ref":"336:170","side":"lo","triangle":"EFS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"EFS"}` | -93/1000 | `1 * EFS` |
| 4 | 172 | `{"bound":{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"EHP"}` | -93/1000 | `1 * EHP` |
| 4 | 177 | `{"bound":{"ref":"336:177","side":"hi","triangle":"EHR","value":"831020406491/1000000000000"},"direction":"hi","kind":"bound","triangle":"EHR"}` | 831020406491/1000000000000 | `-1 * EHR` |
| 4 | 220 | `{"bound":{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"},"direction":"lo","kind":"bound","triangle":"HQS"}` | -93/1000 | `1 * HQS` |
| 4 | 257 | `{"direction":-1,"kind":"four_point","vertices":"ABFH"}` | 0 | `-1 * ABF + -1 * AFH + 1 * ABH + 1 * BFH` |
| 4 | 262 | `{"direction":1,"kind":"four_point","vertices":"ABFR"}` | 0 | `1 * ABF + -1 * AFR + -1 * ABR + 1 * BFR` |
| 4 | 271 | `{"direction":-1,"kind":"four_point","vertices":"ABHR"}` | 0 | `-1 * ABH + 1 * AHR + 1 * ABR + -1 * BHR` |
| 4 | 280 | `{"direction":1,"kind":"four_point","vertices":"ACEF"}` | 0 | `1 * ACE + 1 * AEF + -1 * ACF + -1 * CEF` |
| 4 | 289 | `{"direction":-1,"kind":"four_point","vertices":"ACER"}` | 0 | `-1 * ACE + -1 * AER + 1 * ACR + 1 * CER` |
| 4 | 291 | `{"direction":-1,"kind":"four_point","vertices":"ACES"}` | 0 | `-1 * ACE + -1 * AES + 1 * ACS + 1 * CES` |
| 4 | 296 | `{"direction":1,"kind":"four_point","vertices":"ACFQ"}` | 0 | `1 * ACF + -1 * AFQ + -1 * ACQ + 1 * CFQ` |
| 4 | 311 | `{"direction":-1,"kind":"four_point","vertices":"ACPQ"}` | 0 | `-1 * ACP + -1 * APQ + 1 * ACQ + -1 * CPQ` |
| 4 | 312 | `{"direction":1,"kind":"four_point","vertices":"ACPR"}` | 0 | `1 * ACP + 1 * APR + -1 * ACR + 1 * CPR` |
| 4 | 314 | `{"direction":1,"kind":"four_point","vertices":"ACPS"}` | 0 | `1 * ACP + 1 * APS + -1 * ACS + 1 * CPS` |
| 4 | 319 | `{"direction":-1,"kind":"four_point","vertices":"ACQS"}` | 0 | `-1 * ACQ + -1 * AQS + 1 * ACS + 1 * CQS` |
| 4 | 320 | `{"direction":1,"kind":"four_point","vertices":"AEFH"}` | 0 | `1 * AEF + 1 * AFH + -1 * AEH + -1 * EFH` |
| 4 | 327 | `{"direction":-1,"kind":"four_point","vertices":"AEFR"}` | 0 | `-1 * AEF + 1 * AFR + 1 * AER + -1 * EFR` |
| 4 | 329 | `{"direction":-1,"kind":"four_point","vertices":"AEFS"}` | 0 | `-1 * AEF + 1 * AFS + 1 * AES + -1 * EFS` |
| 4 | 357 | `{"direction":-1,"kind":"four_point","vertices":"AFHS"}` | 0 | `-1 * AFH + 1 * AHS + -1 * AFS + 1 * FHS` |
| 4 | 359 | `{"direction":-1,"kind":"four_point","vertices":"AFPQ"}` | 0 | `1 * AFP + -1 * APQ + -1 * AFQ + 1 * FPQ` |
| 4 | 360 | `{"direction":1,"kind":"four_point","vertices":"AFPR"}` | 0 | `-1 * AFP + 1 * APR + 1 * AFR + -1 * FPR` |
| 4 | 365 | `{"direction":-1,"kind":"four_point","vertices":"AFQR"}` | 0 | `1 * AFQ + -1 * AQR + -1 * AFR + 1 * FQR` |
| 4 | 366 | `{"direction":1,"kind":"four_point","vertices":"AFQS"}` | 0 | `-1 * AFQ + 1 * AQS + 1 * AFS + 1 * FQS` |
| 4 | 368 | `{"direction":1,"kind":"four_point","vertices":"AFRS"}` | 0 | `-1 * AFR + -1 * ARS + 1 * AFS + 1 * FRS` |
| 4 | 375 | `{"direction":-1,"kind":"four_point","vertices":"AHPS"}` | 0 | `1 * AHP + -1 * APS + -1 * AHS + 1 * HPS` |
| 4 | 382 | `{"direction":1,"kind":"four_point","vertices":"APQR"}` | 0 | `1 * APQ + 1 * AQR + -1 * APR + -1 * PQR` |
| 4 | 390 | `{"direction":1,"kind":"four_point","vertices":"BCEH"}` | 0 | `1 * BCE + 1 * BEH + -1 * BCH + -1 * CEH` |
| 4 | 393 | `{"direction":-1,"kind":"four_point","vertices":"BCEP"}` | 0 | `-1 * BCE + -1 * BEP + 1 * BCP + 1 * CEP` |
| 4 | 398 | `{"direction":1,"kind":"four_point","vertices":"BCES"}` | 0 | `1 * BCE + 1 * BES + -1 * BCS + -1 * CES` |
| 4 | 410 | `{"direction":1,"kind":"four_point","vertices":"BCHP"}` | 0 | `1 * BCH + -1 * BHP + -1 * BCP + 1 * CHP` |
| 4 | 417 | `{"direction":-1,"kind":"four_point","vertices":"BCHS"}` | 0 | `-1 * BCH + 1 * BHS + 1 * BCS + -1 * CHS` |
| 4 | 429 | `{"direction":-1,"kind":"four_point","vertices":"BEFQ"}` | 0 | `-1 * BEF + 1 * BFQ + 1 * BEQ + -1 * EFQ` |
| 4 | 432 | `{"direction":1,"kind":"four_point","vertices":"BEFS"}` | 0 | `1 * BEF + -1 * BFS + -1 * BES + 1 * EFS` |
| 4 | 439 | `{"direction":-1,"kind":"four_point","vertices":"BEHR"}` | 0 | `-1 * BEH + 1 * BHR + 1 * BER + -1 * EHR` |
| 4 | 440 | `{"direction":1,"kind":"four_point","vertices":"BEHS"}` | 0 | `1 * BEH + -1 * BHS + -1 * BES + 1 * EHS` |
| 4 | 442 | `{"direction":1,"kind":"four_point","vertices":"BEPQ"}` | 0 | `1 * BEP + -1 * BPQ + -1 * BEQ + 1 * EPQ` |
| 4 | 444 | `{"direction":1,"kind":"four_point","vertices":"BEQR"}` | 0 | `1 * BEQ + 1 * BQR + -1 * BER + -1 * EQR` |
| 4 | 447 | `{"direction":-1,"kind":"four_point","vertices":"BEQS"}` | 0 | `-1 * BEQ + -1 * BQS + 1 * BES + 1 * EQS` |
| 4 | 449 | `{"direction":-1,"kind":"four_point","vertices":"BFHP"}` | 0 | `-1 * BFH + 1 * BHP + -1 * BFP + 1 * FHP` |
| 4 | 457 | `{"direction":-1,"kind":"four_point","vertices":"BFPQ"}` | 0 | `1 * BFP + 1 * BPQ + -1 * BFQ + 1 * FPQ` |
| 4 | 459 | `{"direction":-1,"kind":"four_point","vertices":"BFQR"}` | 0 | `1 * BFQ + -1 * BQR + -1 * BFR + 1 * FQR` |
| 4 | 460 | `{"direction":1,"kind":"four_point","vertices":"BFQS"}` | 0 | `-1 * BFQ + 1 * BQS + 1 * BFS + 1 * FQS` |
| 4 | 471 | `{"direction":-1,"kind":"four_point","vertices":"CEFP"}` | 0 | `-1 * CEF + -1 * CFP + 1 * CEP + 1 * EFP` |
| 4 | 474 | `{"direction":1,"kind":"four_point","vertices":"CEFR"}` | 0 | `1 * CEF + -1 * CFR + -1 * CER + 1 * EFR` |
| 4 | 476 | `{"direction":1,"kind":"four_point","vertices":"CEFS"}` | 0 | `1 * CEF + -1 * CFS + -1 * CES + 1 * EFS` |
| 4 | 478 | `{"direction":1,"kind":"four_point","vertices":"CEHP"}` | 0 | `1 * CEH + -1 * CHP + -1 * CEP + -1 * EHP` |
| 4 | 483 | `{"direction":-1,"kind":"four_point","vertices":"CEHR"}` | 0 | `-1 * CEH + 1 * CHR + 1 * CER + -1 * EHR` |
| 4 | 489 | `{"direction":-1,"kind":"four_point","vertices":"CEPR"}` | 0 | `-1 * CEP + 1 * CPR + 1 * CER + -1 * EPR` |
| 4 | 490 | `{"direction":1,"kind":"four_point","vertices":"CEPS"}` | 0 | `1 * CEP + -1 * CPS + -1 * CES + 1 * EPS` |
| 4 | 500 | `{"direction":1,"kind":"four_point","vertices":"CFHR"}` | 0 | `1 * CFH + -1 * CHR + 1 * CFR + -1 * FHR` |
| 4 | 502 | `{"direction":1,"kind":"four_point","vertices":"CFHS"}` | 0 | `1 * CFH + -1 * CHS + 1 * CFS + -1 * FHS` |
| 4 | 509 | `{"direction":-1,"kind":"four_point","vertices":"CFPS"}` | 0 | `-1 * CFP + 1 * CPS + -1 * CFS + 1 * FPS` |
| 4 | 514 | `{"direction":1,"kind":"four_point","vertices":"CHPQ"}` | 0 | `-1 * CHP + -1 * CPQ + 1 * CHQ + -1 * HPQ` |
| 4 | 516 | `{"direction":1,"kind":"four_point","vertices":"CHPR"}` | 0 | `-1 * CHP + -1 * CPR + 1 * CHR + -1 * HPR` |
| 4 | 518 | `{"direction":1,"kind":"four_point","vertices":"CHPS"}` | 0 | `-1 * CHP + -1 * CPS + 1 * CHS + -1 * HPS` |
| 4 | 523 | `{"direction":-1,"kind":"four_point","vertices":"CHQS"}` | 0 | `1 * CHQ + -1 * CQS + -1 * CHS + -1 * HQS` |
| 4 | 533 | `{"direction":-1,"kind":"four_point","vertices":"EFHR"}` | 0 | `-1 * EFH + 1 * EHR + -1 * EFR + 1 * FHR` |
| 4 | 539 | `{"direction":-1,"kind":"four_point","vertices":"EFPR"}` | 0 | `-1 * EFP + 1 * EPR + -1 * EFR + 1 * FPR` |
| 4 | 547 | `{"direction":-1,"kind":"four_point","vertices":"EFRS"}` | 0 | `1 * EFR + -1 * ERS + -1 * EFS + -1 * FRS` |
| 4 | 560 | `{"direction":1,"kind":"four_point","vertices":"EPQR"}` | 0 | `-1 * EPQ + 1 * EQR + 1 * EPR + -1 * PQR` |
| 4 | 564 | `{"direction":1,"kind":"four_point","vertices":"EQRS"}` | 0 | `1 * EQR + 1 * ERS + -1 * EQS + -1 * QRS` |
| 4 | 567 | `{"direction":-1,"kind":"four_point","vertices":"FHPQ"}` | 0 | `-1 * FHP + -1 * FPQ + 1 * FHQ + 1 * HPQ` |
| 4 | 573 | `{"direction":-1,"kind":"four_point","vertices":"FHQR"}` | 0 | `-1 * FHQ + -1 * FQR + 1 * FHR + 1 * HQR` |
| 4 | 583 | `{"direction":-1,"kind":"four_point","vertices":"FQRS"}` | 0 | `-1 * FQR + 1 * FRS + -1 * FQS + 1 * QRS` |
| 4 | 585 | `{"direction":-1,"kind":"four_point","vertices":"HPQR"}` | 0 | `-1 * HPQ + -1 * HQR + 1 * HPR + 1 * PQR` |
| 4 | 586 | `{"direction":1,"kind":"four_point","vertices":"HPQS"}` | 0 | `1 * HPQ + -1 * HQS + -1 * HPS + -1 * PQS` |
| 4 | 7113 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AFR","Y":"EHR","bounds":[{"ref":"336:48","side":"lo","triangle":"AFR","value":"119201/1000000"},{"ref":"336:177","side":"hi","triangle":"EHR","value":"831020406491/1000000000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"AER","Y":"FHR","bounds":[{"ref":"336:39","side":"hi","triangle":"AER","value":"177421/200000"},{"ref":"336:197","side":"hi","triangle":"FHR","value":"347615979389/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"AHR","Y":"EFR","bounds":[{"ref":"336:57","side":"hi","triangle":"AHR","value":"748068213901/1000000000000"},{"ref":"336:169","side":"hi","triangle":"EFR","value":"67920129799/100000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":437}` | 71740231178836531535899/100000000000000000000000 | `831020406491/1000000000000 * AFR + 119201/1000000 * EHR + -347615979389/1000000000000 * AER + -177421/200000 * FHR + -67920129799/100000000000 * AHR + -748068213901/1000000000000 * EFR` |
| 4 | 7800 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AEH","Y":"HPR","bounds":[{"ref":"336:32","side":"lo","triangle":"AEH","value":"15253/50000"},{"ref":"336:215","side":"hi","triangle":"HPR","value":"154357/250000"}],"choice":1,"sign":1,"type":"upper"},{"X":"AHP","Y":"EHR","bounds":[{"ref":"336:53","side":"hi","triangle":"AHP","value":"149477/250000"},{"ref":"336:177","side":"hi","triangle":"EHR","value":"831020406491/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"AHR","Y":"EHP","bounds":[{"ref":"336:56","side":"lo","triangle":"AHR","value":"56813/500000"},{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":480}` | 79772095381055207/250000000000000000 | `154357/250000 * AEH + 15253/50000 * HPR + -831020406491/1000000000000 * AHP + -149477/250000 * EHR + -93/1000 * AHR + -56813/500000 * EHP` |
| 4 | 9035 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"APS","Y":"FPQ","bounds":[{"ref":"336:64","side":"lo","triangle":"APS","value":"93/1000"},{"ref":"336:200","side":"lo","triangle":"FPQ","value":"283723/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AFP","Y":"PQS","bounds":[{"ref":"336:45","side":"hi","triangle":"AFP","value":"298169/500000"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"APQ","Y":"FPS","bounds":[{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"},{"ref":"336:205","side":"hi","triangle":"FPS","value":"27199/62500"}],"choice":1,"sign":1,"type":"upper"}],"relation":557}` | -69545307/1000000000 | `-283723/1000000 * APS + -93/1000 * FPQ + 93/1000 * AFP + 298169/500000 * PQS + 27199/62500 * APQ + 93/1000 * FPS` |
| 4 | 9058 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AFS","Y":"PQS","bounds":[{"ref":"336:51","side":"hi","triangle":"AFS","value":"10213/15625"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"APS","Y":"FQS","bounds":[{"ref":"336:64","side":"lo","triangle":"APS","value":"93/1000"},{"ref":"336:208","side":"lo","triangle":"FQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AQS","Y":"FPS","bounds":[{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"},{"ref":"336:204","side":"lo","triangle":"FPS","value":"97723/1000000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":559}` | -43050537/1000000000 | `93/1000 * AFS + 10213/15625 * PQS + -93/1000 * APS + -93/1000 * FQS + -97723/1000000 * AQS + -93/1000 * FPS` |
| 4 | 9468 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"APS","Y":"AQR","bounds":[{"ref":"336:64","side":"lo","triangle":"APS","value":"93/1000"},{"ref":"336:66","side":"lo","triangle":"AQR","value":"279/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"APQ","Y":"ARS","bounds":[{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"},{"ref":"336:71","side":"hi","triangle":"ARS","value":"488719/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"APR","Y":"AQS","bounds":[{"ref":"336:63","side":"hi","triangle":"APR","value":"139657/250000"},{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":584}` | -71456271/1000000000 | `-279/1000 * APS + -93/1000 * AQR + 488719/1000000 * APQ + 93/1000 * ARS + 93/1000 * APR + 139657/250000 * AQS` |
| 4 | 9474 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"AQR","Y":"PQS","bounds":[{"ref":"336:67","side":"hi","triangle":"AQR","value":"367161652791/500000000000"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"APQ","Y":"QRS","bounds":[{"ref":"336:60","side":"lo","triangle":"APQ","value":"93/1000"},{"ref":"336:228","side":"lo","triangle":"QRS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"AQS","Y":"PQR","bounds":[{"ref":"336:68","side":"lo","triangle":"AQS","value":"93/1000"},{"ref":"336:224","side":"lo","triangle":"PQR","value":"1948/15625"}],"choice":0,"sign":-1,"type":"lower"}],"relation":585}` | -24024285709563/500000000000000 | `93/1000 * AQR + 367161652791/500000000000 * PQS + -93/1000 * APQ + -93/1000 * QRS + -1948/15625 * AQS + -93/1000 * PQR` |
| 4 | 13459 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CHR","Y":"EFH","bounds":[{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"},{"ref":"336:162","side":"lo","triangle":"EFH","value":"34463/250000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CEH","Y":"FHR","bounds":[{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"},{"ref":"336:196","side":"lo","triangle":"FHR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFH","Y":"EHR","bounds":[{"ref":"336:135","side":"hi","triangle":"CFH","value":"310206222641/500000000000"},{"ref":"336:177","side":"hi","triangle":"EHR","value":"831020406491/1000000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":834}` | 209543876320212699562731/500000000000000000000000 | `34463/250000 * CHR + 56356086523/62500000000 * EFH + -93/1000 * CEH + -149533/500000 * FHR + -831020406491/1000000000000 * CFH + -310206222641/500000000000 * EHR` |
| 4 | 13477 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFR","Y":"EHR","bounds":[{"ref":"336:141","side":"hi","triangle":"CFR","value":"382819/500000"},{"ref":"336:176","side":"lo","triangle":"EHR","value":"279/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CER","Y":"FHR","bounds":[{"ref":"336:131","side":"hi","triangle":"CER","value":"67481991/125000000"},{"ref":"336:197","side":"hi","triangle":"FHR","value":"347615979389/1000000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"CHR","Y":"EFR","bounds":[{"ref":"336:149","side":"hi","triangle":"CHR","value":"56356086523/62500000000"},{"ref":"336:169","side":"hi","triangle":"EFR","value":"67920129799/100000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":835}` | 3665522368735068773827/6250000000000000000000 | `279/1000 * CFR + 382819/500000 * EHR + -347615979389/1000000000000 * CER + -67481991/125000000 * FHR + -67920129799/100000000000 * CHR + -56356086523/62500000000 * EFR` |
| 4 | 13854 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"CFQ","Y":"EFR","bounds":[{"ref":"336:139","side":"hi","triangle":"CFQ","value":"211190522417/250000000000"},{"ref":"336:169","side":"hi","triangle":"EFR","value":"67920129799/100000000000"}],"choice":1,"sign":-1,"type":"lower"},{"X":"CEF","Y":"FQR","bounds":[{"ref":"336:123","side":"hi","triangle":"CEF","value":"78817293/125000000"},{"ref":"336:206","side":"lo","triangle":"FQR","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CFR","Y":"EFQ","bounds":[{"ref":"336:141","side":"hi","triangle":"CFR","value":"382819/500000"},{"ref":"336:166","side":"lo","triangle":"EFQ","value":"279/1000"}],"choice":0,"sign":1,"type":"upper"}],"relation":858}` | 7537760995081259204183/25000000000000000000000 | `-67920129799/100000000000 * CFQ + -211190522417/250000000000 * EFR + 93/1000 * CEF + 78817293/125000000 * FQR + 279/1000 * CFR + 382819/500000 * EFQ` |
| 4 | 14050 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CEP","Y":"HPQ","bounds":[{"ref":"336:127","side":"hi","triangle":"CEP","value":"34857/100000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"}],"choice":0,"sign":1,"type":"upper"},{"X":"CHP","Y":"EPQ","bounds":[{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:180","side":"lo","triangle":"EPQ","value":"74381/500000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CPQ","Y":"EHP","bounds":[{"ref":"336:152","side":"lo","triangle":"CPQ","value":"75173/500000"},{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":871}` | -8123273193/100000000000 | `312849/1000000 * CEP + 34857/100000 * HPQ + -74381/500000 * CHP + -93/1000 * EPQ + -93/1000 * CPQ + -75173/500000 * EHP` |
| 4 | 14118 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CEH","Y":"HPR","bounds":[{"ref":"336:124","side":"lo","triangle":"CEH","value":"149533/500000"},{"ref":"336:215","side":"hi","triangle":"HPR","value":"154357/250000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CHP","Y":"EHR","bounds":[{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"},{"ref":"336:176","side":"lo","triangle":"EHR","value":"279/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CHR","Y":"EHP","bounds":[{"ref":"336:148","side":"lo","triangle":"CHR","value":"155663/500000"},{"ref":"336:172","side":"lo","triangle":"EHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":875}` | -16218925531/125000000000 | `154357/250000 * CEH + 149533/500000 * HPR + -279/1000 * CHP + -93/1000 * EHR + -93/1000 * CHR + -155663/500000 * EHP` |
| 4 | 14646 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFH","Y":"CPQ","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:153","side":"hi","triangle":"CPQ","value":"12973/25000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CFP","Y":"CHQ","bounds":[{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:146","side":"lo","triangle":"CHQ","value":"13857/20000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFQ","Y":"CHP","bounds":[{"ref":"336:138","side":"lo","triangle":"CFQ","value":"77531/250000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":908}` | -164249373/2500000000 | `12973/25000 * CFH + 7659/25000 * CPQ + -13857/20000 * CFP + -93/1000 * CHQ + -93/1000 * CFQ + -77531/250000 * CHP` |
| 4 | 14726 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFH","Y":"CPR","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:155","side":"hi","triangle":"CPR","value":"496299/1000000"}],"choice":1,"sign":1,"type":"upper"},{"X":"CFP","Y":"CHR","bounds":[{"ref":"336:136","side":"lo","triangle":"CFP","value":"93/1000"},{"ref":"336:148","side":"lo","triangle":"CHR","value":"155663/500000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFR","Y":"CHP","bounds":[{"ref":"336:140","side":"lo","triangle":"CFR","value":"34891/200000"},{"ref":"336:144","side":"lo","triangle":"CHP","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":913}` | -41745519/390625000 | `496299/1000000 * CFH + 7659/25000 * CPR + -155663/500000 * CFP + -93/1000 * CHR + -93/1000 * CFR + -34891/200000 * CHP` |
| 4 | 14899 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"CFR","Y":"FHQ","bounds":[{"ref":"336:141","side":"hi","triangle":"CFR","value":"382819/500000"},{"ref":"336:194","side":"lo","triangle":"FHQ","value":"1643/15625"}],"choice":0,"sign":1,"type":"upper"},{"X":"CFH","Y":"FQR","bounds":[{"ref":"336:134","side":"lo","triangle":"CFH","value":"7659/25000"},{"ref":"336:206","side":"lo","triangle":"FQR","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"CFQ","Y":"FHR","bounds":[{"ref":"336:139","side":"hi","triangle":"CFQ","value":"211190522417/250000000000"},{"ref":"336:197","side":"hi","triangle":"FHR","value":"347615979389/1000000000000"}],"choice":1,"sign":-1,"type":"lower"}],"relation":924}` | 60408978543660014463213/250000000000000000000000 | `1643/15625 * CFR + 382819/500000 * FHQ + -93/1000 * CFH + -7659/25000 * FQR + -347615979389/1000000000000 * CFQ + -211190522417/250000000000 * FHR` |
| 4 | 16402 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"EQS","Y":"HPS","bounds":[{"ref":"336:189","side":"hi","triangle":"EQS","value":"439263/1000000"},{"ref":"336:216","side":"lo","triangle":"HPS","value":"126849/1000000"}],"choice":0,"sign":1,"type":"upper"},{"X":"EHS","Y":"PQS","bounds":[{"ref":"336:178","side":"lo","triangle":"EHS","value":"93/1000"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"EPS","Y":"HQS","bounds":[{"ref":"336:184","side":"lo","triangle":"EPS","value":"59693/500000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"}],"relation":1018}` | -35968174287/1000000000000 | `126849/1000000 * EQS + 439263/1000000 * HPS + -93/1000 * EHS + -93/1000 * PQS + -93/1000 * EPS + -59693/500000 * HQS` |
| 4 | 16666 | `{"kind":"product_linear_envelope","orientation":-1,"products":[{"X":"FHS","Y":"HPQ","bounds":[{"ref":"336:198","side":"lo","triangle":"FHS","value":"48851/500000"},{"ref":"336:212","side":"lo","triangle":"HPQ","value":"312849/1000000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"FHP","Y":"HQS","bounds":[{"ref":"336:193","side":"hi","triangle":"FHP","value":"397749/1000000"},{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"FHQ","Y":"HPS","bounds":[{"ref":"336:195","side":"hi","triangle":"FHQ","value":"4747699243/10000000000"},{"ref":"336:216","side":"lo","triangle":"HPS","value":"126849/1000000"}],"choice":0,"sign":1,"type":"upper"}],"relation":1034}` | -666487741295307/10000000000000000 | `-312849/1000000 * FHS + -48851/500000 * HPQ + 93/1000 * FHP + 397749/1000000 * HQS + 126849/1000000 * FHQ + 4747699243/10000000000 * HPS` |
| 4 | 16882 | `{"kind":"product_linear_envelope","orientation":1,"products":[{"X":"HPQ","Y":"QRS","bounds":[{"ref":"336:213","side":"hi","triangle":"HPQ","value":"631761/1000000"},{"ref":"336:228","side":"lo","triangle":"QRS","value":"93/1000"}],"choice":0,"sign":1,"type":"upper"},{"X":"HQR","Y":"PQS","bounds":[{"ref":"336:218","side":"lo","triangle":"HQR","value":"99167/1000000"},{"ref":"336:226","side":"lo","triangle":"PQS","value":"93/1000"}],"choice":0,"sign":-1,"type":"lower"},{"X":"HQS","Y":"PQR","bounds":[{"ref":"336:220","side":"lo","triangle":"HQS","value":"93/1000"},{"ref":"336:224","side":"lo","triangle":"PQR","value":"1948/15625"}],"choice":0,"sign":-1,"type":"lower"}],"relation":1048}` | -18968373/500000000 | `93/1000 * HPQ + 631761/1000000 * QRS + -93/1000 * HQR + -99167/1000000 * PQS + -1948/15625 * HQS + -93/1000 * PQR` |
| 4 | 17393 | `{"kind":"quad","relation":1379}` | -279/625 | `1 * PQR + 1 * APR` |

### Positive affine weights

| Certificate | Factor | Weight |
| --- | --- | --- |
| 0 | 3 | 495505 |
| 0 | 6 | 429364 |
| 0 | 68 | 2407398 |
| 0 | 70 | 750018 |
| 0 | 72 | 67534 |
| 0 | 136 | 252898 |
| 0 | 144 | 1015969 |
| 0 | 170 | 398793 |
| 0 | 172 | 505742 |
| 0 | 196 | 7986700 |
| 0 | 220 | 2086434 |
| 0 | 230 | 50569 |
| 0 | 236 | 175188 |
| 0 | 241 | 81649 |
| 0 | 247 | 502190 |
| 0 | 248 | 563113 |
| 0 | 251 | 655968 |
| 0 | 256 | 821834 |
| 0 | 259 | 1228442 |
| 0 | 269 | 1201979 |
| 0 | 271 | 670078 |
| 0 | 273 | 84843 |
| 0 | 277 | 735311 |
| 0 | 280 | 61105 |
| 0 | 287 | 360006 |
| 0 | 289 | 162628 |
| 0 | 290 | 607137 |
| 0 | 298 | 61105 |
| 0 | 307 | 131159 |
| 0 | 315 | 154039 |
| 0 | 322 | 1480104 |
| 0 | 329 | 1541209 |
| 0 | 334 | 931465 |
| 0 | 336 | 117960 |
| 0 | 340 | 4592 |
| 0 | 346 | 1015974 |
| 0 | 348 | 1081311 |
| 0 | 350 | 246932 |
| 0 | 352 | 3967500 |
| 0 | 354 | 3753016 |
| 0 | 356 | 914630 |
| 0 | 359 | 4730 |
| 0 | 367 | 6147750 |
| 0 | 368 | 3691911 |
| 0 | 376 | 3883244 |
| 0 | 387 | 5067300 |
| 0 | 391 | 56823 |
| 0 | 393 | 175188 |
| 0 | 396 | 49320 |
| 0 | 400 | 89152 |
| 0 | 414 | 32329 |
| 0 | 427 | 738301 |
| 0 | 428 | 738301 |
| 0 | 451 | 3679340 |
| 0 | 455 | 84843 |
| 0 | 476 | 61105 |
| 0 | 487 | 339508 |
| 0 | 490 | 197203 |
| 0 | 492 | 295073 |
| 0 | 495 | 865446 |
| 0 | 500 | 718911 |
| 0 | 504 | 344238 |
| 0 | 507 | 4592 |
| 0 | 509 | 1104188 |
| 0 | 511 | 745851 |
| 0 | 512 | 1080450 |
| 0 | 518 | 983827 |
| 0 | 520 | 493610 |
| 0 | 523 | 983827 |
| 0 | 531 | 398793 |
| 0 | 537 | 339508 |
| 0 | 538 | 1081311 |
| 0 | 546 | 1081311 |
| 0 | 551 | 1076719 |
| 0 | 554 | 295073 |
| 0 | 557 | 17742 |
| 0 | 568 | 1076719 |
| 0 | 571 | 829787 |
| 0 | 582 | 5067300 |
| 0 | 738 | 496816 |
| 0 | 831 | 80108 |
| 0 | 1038 | 186816 |
| 0 | 2587 | 1684376 |
| 0 | 2687 | 885307 |
| 0 | 2827 | 1796943 |
| 0 | 3315 | 1188386 |
| 0 | 3366 | 13142926 |
| 0 | 4064 | 1396253 |
| 0 | 4238 | 9127 |
| 0 | 4306 | 1660689 |
| 0 | 6614 | 2247027 |
| 0 | 6850 | 1624008 |
| 0 | 7900 | 1656337 |
| 0 | 8070 | 1077610 |
| 0 | 10988 | 912292 |
| 0 | 12870 | 8227731 |
| 0 | 13379 | 195777 |
| 0 | 13459 | 241483 |
| 0 | 14247 | 143220 |
| 0 | 14646 | 103643 |
| 0 | 14914 | 3357671 |
| 0 | 20963 | 318002 |
| 0 | 21175 | 290557 |
| 0 | 21255 | 49373 |
| 1 | 0 | 977772 |
| 1 | 6 | 3440259 |
| 1 | 60 | 1510135 |
| 1 | 100 | 1774885 |
| 1 | 136 | 1098889 |
| 1 | 144 | 1601515 |
| 1 | 196 | 1812144 |
| 1 | 238 | 51203 |
| 1 | 241 | 90831 |
| 1 | 247 | 785933 |
| 1 | 254 | 785933 |
| 1 | 256 | 3534227 |
| 1 | 259 | 1774885 |
| 1 | 261 | 1392458 |
| 1 | 262 | 130686 |
| 1 | 267 | 268088 |
| 1 | 268 | 656402 |
| 1 | 272 | 668914 |
| 1 | 279 | 1454847 |
| 1 | 280 | 90831 |
| 1 | 289 | 90831 |
| 1 | 293 | 9385 |
| 1 | 300 | 100216 |
| 1 | 319 | 100216 |
| 1 | 321 | 124797 |
| 1 | 326 | 33967 |
| 1 | 330 | 661135 |
| 1 | 338 | 785933 |
| 1 | 341 | 124797 |
| 1 | 346 | 785933 |
| 1 | 352 | 1590772 |
| 1 | 356 | 100216 |
| 1 | 359 | 1555063 |
| 1 | 365 | 100216 |
| 1 | 373 | 30917 |
| 1 | 378 | 769130 |
| 1 | 383 | 155714 |
| 1 | 414 | 37362 |
| 1 | 421 | 37362 |
| 1 | 441 | 785933 |
| 1 | 454 | 1454847 |
| 1 | 461 | 1454847 |
| 1 | 464 | 37362 |
| 1 | 475 | 9385 |
| 1 | 476 | 100216 |
| 1 | 481 | 100216 |
| 1 | 482 | 100216 |
| 1 | 495 | 100216 |
| 1 | 496 | 1098889 |
| 1 | 501 | 9385 |
| 1 | 521 | 221930 |
| 1 | 533 | 124797 |
| 1 | 547 | 100216 |
| 1 | 551 | 124797 |
| 1 | 552 | 785933 |
| 1 | 557 | 100216 |
| 1 | 558 | 100216 |
| 1 | 562 | 785933 |
| 1 | 571 | 1555063 |
| 1 | 581 | 1555063 |
| 1 | 583 | 100216 |
| 1 | 584 | 155714 |
| 1 | 586 | 769130 |
| 1 | 588 | 100216 |
| 1 | 3234 | 930880 |
| 1 | 3335 | 670851 |
| 1 | 3366 | 7063730 |
| 1 | 3554 | 13430899 |
| 1 | 5699 | 100917 |
| 1 | 6543 | 494246 |
| 1 | 11206 | 289897 |
| 1 | 11345 | 98220 |
| 1 | 14674 | 2869854 |
| 1 | 14914 | 2788735 |
| 1 | 17390 | 712993 |
| 1 | 18181 | 258914 |
| 1 | 20818 | 2998712 |
| 2 | 17 | 1209817 |
| 2 | 60 | 143737 |
| 2 | 136 | 2376036 |
| 2 | 144 | 2719664 |
| 2 | 170 | 10498387 |
| 2 | 196 | 1587920 |
| 2 | 220 | 4412573 |
| 2 | 226 | 4004400 |
| 2 | 228 | 1641016 |
| 2 | 235 | 1238329 |
| 2 | 236 | 1133301 |
| 2 | 238 | 651585 |
| 2 | 249 | 2280622 |
| 2 | 254 | 2280622 |
| 2 | 262 | 31025 |
| 2 | 267 | 913107 |
| 2 | 271 | 31025 |
| 2 | 275 | 2742752 |
| 2 | 279 | 2148694 |
| 2 | 282 | 958713 |
| 2 | 286 | 899117 |
| 2 | 289 | 606494 |
| 2 | 291 | 709461 |
| 2 | 293 | 2467627 |
| 2 | 294 | 1403885 |
| 2 | 299 | 415896 |
| 2 | 300 | 1479638 |
| 2 | 303 | 270585 |
| 2 | 316 | 1022391 |
| 2 | 319 | 770177 |
| 2 | 323 | 1403885 |
| 2 | 324 | 1403885 |
| 2 | 333 | 1190859 |
| 2 | 340 | 964666 |
| 2 | 348 | 1571161 |
| 2 | 352 | 1050151 |
| 2 | 354 | 83817 |
| 2 | 356 | 1450515 |
| 2 | 367 | 439565 |
| 2 | 368 | 468688 |
| 2 | 374 | 1272326 |
| 2 | 378 | 178189 |
| 2 | 382 | 964666 |
| 2 | 384 | 1272326 |
| 2 | 387 | 2039849 |
| 2 | 393 | 952409 |
| 2 | 395 | 1224177 |
| 2 | 398 | 2280622 |
| 2 | 404 | 966146 |
| 2 | 417 | 2280622 |
| 2 | 425 | 104036 |
| 2 | 428 | 104036 |
| 2 | 443 | 1328213 |
| 2 | 448 | 42295 |
| 2 | 452 | 384871 |
| 2 | 459 | 415896 |
| 2 | 463 | 997698 |
| 2 | 464 | 363105 |
| 2 | 467 | 2280622 |
| 2 | 482 | 1571161 |
| 2 | 489 | 964666 |
| 2 | 490 | 366708 |
| 2 | 495 | 2375608 |
| 2 | 503 | 2467627 |
| 2 | 510 | 415896 |
| 2 | 512 | 550250 |
| 2 | 516 | 1575843 |
| 2 | 521 | 4682 |
| 2 | 524 | 611177 |
| 2 | 526 | 553713 |
| 2 | 528 | 450225 |
| 2 | 531 | 1016837 |
| 2 | 532 | 462575 |
| 2 | 537 | 953660 |
| 2 | 545 | 10462575 |
| 2 | 546 | 548424 |
| 2 | 549 | 394815 |
| 2 | 555 | 85849 |
| 2 | 558 | 1022737 |
| 2 | 562 | 656029 |
| 2 | 585 | 1575843 |
| 2 | 588 | 2039849 |
| 2 | 754 | 1118671 |
| 2 | 2664 | 206815 |
| 2 | 3447 | 135704 |
| 2 | 4252 | 567652 |
| 2 | 4858 | 1829501 |
| 2 | 5098 | 1058813 |
| 2 | 6610 | 50346 |
| 2 | 7730 | 595812 |
| 2 | 8802 | 922907 |
| 2 | 10598 | 454789 |
| 2 | 10623 | 777108 |
| 2 | 10625 | 234548 |
| 2 | 12852 | 929546 |
| 2 | 13954 | 4706873 |
| 2 | 14694 | 2928705 |
| 2 | 15430 | 2010804 |
| 2 | 16406 | 10997170 |
| 2 | 16694 | 7325701 |
| 2 | 16822 | 10936688 |
| 2 | 16891 | 1829891 |
| 2 | 17045 | 131928 |
| 2 | 17822 | 85849 |
| 2 | 20654 | 333601 |
| 2 | 20818 | 514023 |
| 3 | 136 | 5479044 |
| 3 | 139 | 2517391 |
| 3 | 144 | 8113981 |
| 3 | 172 | 4379839 |
| 3 | 175 | 1143291 |
| 3 | 295 | 887764 |
| 3 | 296 | 887764 |
| 3 | 315 | 887764 |
| 3 | 318 | 887764 |
| 3 | 351 | 887764 |
| 3 | 352 | 887764 |
| 3 | 374 | 887764 |
| 3 | 379 | 887764 |
| 3 | 471 | 4170069 |
| 3 | 479 | 218017 |
| 3 | 489 | 4388086 |
| 3 | 492 | 4388086 |
| 3 | 506 | 21921 |
| 3 | 511 | 21921 |
| 3 | 516 | 4366165 |
| 3 | 521 | 4366165 |
| 3 | 526 | 887764 |
| 3 | 530 | 26427 |
| 3 | 537 | 4170069 |
| 3 | 549 | 218017 |
| 3 | 560 | 4388086 |
| 3 | 569 | 3665548 |
| 3 | 572 | 3665548 |
| 3 | 579 | 3687469 |
| 3 | 585 | 700617 |
| 3 | 587 | 887764 |
| 3 | 13302 | 284162 |
| 3 | 13336 | 4509309 |
| 3 | 13401 | 6332781 |
| 3 | 14038 | 6195833 |
| 3 | 14647 | 859078 |
| 3 | 14690 | 5189241 |
| 4 | 42 | 346517 |
| 4 | 136 | 4742875 |
| 4 | 141 | 752140 |
| 4 | 144 | 6412223 |
| 4 | 170 | 101412 |
| 4 | 172 | 2154991 |
| 4 | 177 | 3040251 |
| 4 | 220 | 299167 |
| 4 | 257 | 297598 |
| 4 | 262 | 297598 |
| 4 | 271 | 297598 |
| 4 | 280 | 946503 |
| 4 | 289 | 813626 |
| 4 | 291 | 132876 |
| 4 | 296 | 946503 |
| 4 | 311 | 1104960 |
| 4 | 312 | 813626 |
| 4 | 314 | 291334 |
| 4 | 319 | 158457 |
| 4 | 320 | 141410 |
| 4 | 327 | 955036 |
| 4 | 329 | 132876 |
| 4 | 357 | 190329 |
| 4 | 359 | 32954 |
| 4 | 360 | 33246 |
| 4 | 365 | 998093 |
| 4 | 366 | 18637 |
| 4 | 368 | 30649 |
| 4 | 375 | 190329 |
| 4 | 382 | 1002113 |
| 4 | 390 | 267451 |
| 4 | 393 | 297598 |
| 4 | 398 | 30147 |
| 4 | 410 | 297598 |
| 4 | 417 | 30147 |
| 4 | 429 | 174436 |
| 4 | 432 | 174436 |
| 4 | 439 | 297598 |
| 4 | 440 | 30147 |
| 4 | 442 | 297598 |
| 4 | 444 | 297598 |
| 4 | 447 | 174436 |
| 4 | 449 | 297598 |
| 4 | 457 | 297598 |
| 4 | 459 | 297598 |
| 4 | 460 | 174436 |
| 4 | 471 | 33246 |
| 4 | 474 | 885977 |
| 4 | 476 | 72583 |
| 4 | 478 | 970823 |
| 4 | 483 | 1794222 |
| 4 | 489 | 115289 |
| 4 | 490 | 30147 |
| 4 | 500 | 291013 |
| 4 | 502 | 80457 |
| 4 | 509 | 7874 |
| 4 | 514 | 348064 |
| 4 | 516 | 1842279 |
| 4 | 518 | 269061 |
| 4 | 523 | 158457 |
| 4 | 533 | 4850982 |
| 4 | 539 | 33246 |
| 4 | 547 | 215555 |
| 4 | 560 | 82042 |
| 4 | 564 | 215555 |
| 4 | 567 | 330259 |
| 4 | 573 | 1003056 |
| 4 | 583 | 184907 |
| 4 | 585 | 994624 |
| 4 | 586 | 230395 |
| 4 | 7113 | 406798 |
| 4 | 7800 | 229030 |
| 4 | 9035 | 3146 |
| 4 | 9058 | 87813 |
| 4 | 9468 | 329556 |
| 4 | 9474 | 286330 |
| 4 | 13459 | 5536660 |
| 4 | 13477 | 5285024 |
| 4 | 13854 | 227831 |
| 4 | 14050 | 2317800 |
| 4 | 14118 | 2600722 |
| 4 | 14646 | 5446467 |
| 4 | 14726 | 2981344 |
| 4 | 14899 | 820555 |
| 4 | 16402 | 324157 |
| 4 | 16666 | 351196 |
| 4 | 16882 | 90663 |
| 4 | 17393 | 124592 |

### Weighted affine sums

| Certificate | Constant | Area coefficients |
| --- | --- | --- |
| 0 | -2195842168563824458664449751847/500000000000000000000000 | `491871/1000000 * ABE + 653157819283/500000000000 * ABH + -36171/100000 * AQS + -128553/250000 * ARS + -1851/3125 * BCE + -94221/500000 * CFP + -45433/250000 * CHP + 459651/1000000 * EHP + 153131/250000 * FHR + -275401/500000 * HQS + -4031/6250 * ABC + -325122583/312500000 * ACE + 61/125 * ACP + 5061/25000 * ABP + 32/125 * ACR + 781347748613/1000000000000 * ABR + -455347/1000000 * AEH + -26081339581/50000000000 * BEH + -2120319/25000000 * AEP + -21517836469/62500000000 * ABQ + 551/1000 * BEQ + -270857/500000 * ABF + -10702308919/25000000000 * AFH + 136913/500000 * BFH + -65801/250000 * BFP + 18231/500000 * AHQ + 103789463/125000000 * BHQ + -5409142101/50000000000 * BHR + 15343/100000 * AHS + -10029/50000 * ABS + -5128/15625 * AQR + 19861/125000 * BQR + -51/200 * ACQ + -310591203/3125000000 * CEQ + -14/125 * AER + -9106461809/50000000000 * CER + -1031/1000 * AES + 29/125 * ACS + 1 * CES + -593/500 * CFR + 53/125 * ACH + -21569977/3125000000 * CHR + 341/1000 * APS + -1027742593/10000000000 * CPS + -29262016603/500000000000 * EHR + 27/100 * EHS + 26000817359/50000000000 * APR + -12089/100000 * EQS + -92541/500000 * AHP + 5000000051/500 * AFQ + -1362607067/62500000000 * FHQ + 10102483/125000000 * APQ + 171001573231/500000000000 * FRS + 33579/100000 * HQR + 50127/125000 * CEH + -41517/250000 * CEP + 72/125 * BER + 22221/250000 * BCF + -346043666153/1000000000000 * CFH + 16376233839/200000000000 * BFQ + 39/250 * BFS + 39/250 * CFS + 839/3125 * CPQ + -24161/50000 * EPS + -5813/25000 * CQR + -464923/1000000 * CQS + 201/1000 * CFQ + 311/1000 * CPR + -1543/125000 * FPS + 68671/250000 * FQR + -659/1000 * HPS + 18847/31250 * CHQ + 59486350231/1000000000000 * EFH + -243649987057/500000000000 * EHQ` |
| 1 | -414705343387322852181177220157/250000000000000000000000 | `-6311/125000 * ABC + 60669/500000 * ABH + -52617/125000 * APQ + -12129/500000 * CHP + -5243/40000 * FHR + -53459/500000 * ACQ + -49409/200000 * ABQ + -884085547/3125000000 * BCQ + 92659/100000 * ABR + 10205981559/50000000000 * BCR + -1 * AEH + -557665506971/1000000000000 * ABF + 40880108409/62500000000 * AFH + 10192433067/50000000000 * BFH + 499999989773653317/50000000000 * AFP + 13657328809/125000000000 * ABP + 104349/250000 * AFQ + -143/1000 * BFQ + 11/500 * AFR + -29420947/62500000 * BFR + 586/625 * AHP + -286363965793/1000000000000 * BHP + -122378863991/250000000000 * AHQ + -10621/62500 * BHQ + 1 * AEF + -1 * AER + -281/1000 * ACH + 362151247217/1000000000000 * CFH + 1 * EFR + 1 * AEP + 1 * EHP + -3210056319/12500000000 * FHQ + -151092897413/500000000000 * AQR + -1697/25000 * AHR + 15412836213/25000000000 * BCH + 9861009201/50000000000 * CHR + 326883/500000 * CQR + -358242077149/500000000000 * HQR + -38861670293/250000000000 * CHQ + -216654143863/500000000000 * FHP + -347077/1000000 * HPQ` |
| 2 | -2452953587943096777871265393/781250000000000000000 | `-40747/500000 * ACE + -11146695997/25000000000 * APQ + 448107/1000000 * CFP + -69143/200000 * CHP + 23937/250000 * EFS + 5819/10000 * FHR + -219/3125 * HQS + -110755073121/200000000000 * PQS + 27913/200000 * QRS + -67259/1000000 * ABC + 31753/250000 * ABH + 22163585229/62500000000 * BCH + 1 * ACP + -266444665641/200000000000 * ABP + -130039/1000000 * BCP + -89/500 * ACQ + 902911/1000000 * ABQ + 2607/6250 * BCQ + -11141/250000 * ABE + -144847/250000 * AEP + 107/1000 * ABF + 23093/125000 * AHP + 623/1000 * BHP + -2687/6250 * AHR + 4734022439/6250000000 * BHR + -113367470817/125000000000 * BPQ + 64259/250000 * AQS + -4863/50000 * AEH + 293119/500000 * CEH + -22931/250000 * AEQ + 65929/1000000 * CEQ + 1 * AER + -1 * ACR + -1 * CER + -189/1000 * CES + 14953868569/15625000000 * AFH + 189/1000 * CFS + -91/250 * AQR + 140403/500000 * CQS + 649/1000 * AFQ + 9999999 * EFQ + -41381/62500 * AHQ + 33/125 * EHQ + -14554993599/62500000000 * FHQ + 2/125 * FHS + 65671/125000 * FQS + 2/125 * FRS + -2411/15625 * HPS + 8001/125000 * PQR + -403/1000 * BCE + 321247/500000 * CEP + -26957360703/125000000000 * BCF + 883272021/3125000000 * BFQ + 57/250 * CHS + -48596102537/100000000000 * BFH + -403/1000 * BEH + -1 * EFH + 24581/62500 * EPQ + -377/1000 * BFP + 21029/31250 * FHP + 159/250 * BQR + -4007/6250 * BHQ + 249/1000 * HPQ + -381/3125 * HQR + 57/250 * CPS + 19/100 * EPS + 204969/1000000 * EQS + -89/500 * CHQ + -102991/200000 * CPQ + -129/250 * EHP + 121/500 * FPQ + 19/100 * EHS + -2/125 * HRS` |
| 3 | 3340079885879106102819221276513/500000000000000000000000 | `-1049909/1000000 * CFP + -50627121269/125000000000 * CFQ + -32216850763/125000000000 * CHP + 23563/100000 * EHP + -23539/250000 * EHQ + 33103/250000 * FHP + 6918801183/62500000000 * FHQ + -527789553621/1000000000000 * CEF + 127363070147/250000000000 * CEH + 1387815217/10000000000 * CEQ + 12112258981/100000000000 * CHQ + 4571/25000 * CPQ + -33/500 * EFH + -10000000566138036411/1000000000000 * EFQ + 587/1000 * FPQ + -210511/500000 * HPQ + -1181/25000 * CFH` |
| 4 | 8136590057921735224915756503/1250000000000000000000 | `218453/500000 * CFP + 13809/25000 * CFR + 374743/250000 * CHP + -12369/125000 * EHP + -46270625953/25000000000 * EHR + -43667/500000 * HQS + -280340137091/500000000000 * AFR + 24019013199/50000000000 * AHR + 1 * ACE + 1 * AEF + -717/1000 * CEF + 257408256789/500000000000 * AER + 37692050927/31250000000 * CER + -1 * ACS + -1 * CES + -1 * AFQ + 85622019883/200000000000 * CFQ + -80593/250000 * APQ + 5753/25000 * CPQ + -73/250 * APR + 1712/3125 * CPR + -162779/500000 * APS + 525609/1000000 * AQS + -11629/25000 * AEH + -499578341/3125000000 * EFH + -4999999981025876969/500000000000 * EFR + -391/1000 * AFS + 170649/250000 * FHS + 289/500 * AFP + 211/500 * FPQ + -9/500 * AQR + -131043517/125000000 * FQR + -609/1000 * FQS + -73/250 * ARS + 1 * FRS + 39630136627/100000000000 * AHP + 1186563657/2500000000 * HPS + 651/1000 * PQR + -99623/125000 * CEH + 2061/5000 * CEP + 35589/500000 * EFQ + 399/1000 * EHS + 3/5 * EPQ + -1 * EQR + -8707/1000000 * EQS + 57/250 * FHP + 1111286557/3125000000 * CHR + -1 * EPR + 399/1000 * EPS + -17865323003/50000000000 * CFH + 20407010113/50000000000 * FHR + -31/1000 * FPS + -431/1000 * CHQ + 20419/31250 * HPQ + 104363/250000 * HPR + 657543/1000000 * QRS + -24753/500000 * FHQ + 341/1000 * HQR + -6023485297/50000000000 * PQS` |

### Affine ceiling sources

| Certificate | Triangle | Lower reference | Lower bound | Upper reference | Upper bound |
| --- | --- | --- | --- | --- | --- |
| 0 | ABE | 336:2 | 93/1000 | 336:3 | 33/125 |
| 0 | ABH | 336:6 | 93/1000 | 336:7 | 16562468147/50000000000 |
| 0 | AQS | 336:68 | 93/1000 | 336:69 | 81221/200000 |
| 0 | ARS | 336:70 | 93/1000 | 336:71 | 488719/1000000 |
| 0 | BCE | 336:72 | 93/1000 | 336:73 | 2718441/12500000 |
| 0 | CFP | 336:136 | 93/1000 | 336:137 | 79237/250000 |
| 0 | CHP | 336:144 | 93/1000 | 336:145 | 407053/1000000 |
| 0 | EHP | 336:172 | 93/1000 | 336:173 | 428281/1000000 |
| 0 | FHR | 336:196 | 93/1000 | 336:197 | 347615979389/1000000000000 |
| 0 | HQS | 336:220 | 93/1000 | 336:221 | 51489/125000 |
| 0 | ABC | 336:0 | 93/1000 | 336:1 | 2718441/12500000 |
| 0 | ACE | 336:16 | 93/1000 | 336:17 | 33/125 |
| 0 | ACP | 336:22 | 93/1000 | 336:23 | 127641/250000 |
| 0 | ABP | 336:8 | 28449/250000 | 336:9 | 71417/250000 |
| 0 | ACR | 336:26 | 16361/50000 | 336:27 | 23171029747/25000000000 |
| 0 | ABR | 336:12 | 93/1000 | 336:13 | 64781429/125000000 |
| 0 | AEH | 336:32 | 15253/50000 | 336:33 | 851497/1000000 |
| 0 | BEH | 336:88 | 77233/250000 | 336:89 | 110986985769/125000000000 |
| 0 | AEP | 336:34 | 93/1000 | 336:35 | 116341/250000 |
| 0 | ABQ | 336:10 | 74949/250000 | 336:11 | 25153281383/50000000000 |
| 0 | BEQ | 336:92 | 4709/31250 | 336:93 | 44010968203/62500000000 |
| 0 | ABF | 336:4 | 12083/125000 | 336:5 | 19451/50000 |
| 0 | AFH | 336:42 | 93/1000 | 336:43 | 16562468147/50000000000 |
| 0 | BFH | 336:98 | 93/1000 | 336:99 | 19451/50000 |
| 0 | BFP | 336:100 | 93/1000 | 336:101 | 502227/1000000 |
| 0 | AHQ | 336:54 | 342151/1000000 | 336:55 | 851497/1000000 |
| 0 | BHQ | 336:110 | 13857/20000 | 336:111 | 955014565879/1000000000000 |
| 0 | BHR | 336:112 | 155143/1000000 | 336:113 | 107637802637/125000000000 |
| 0 | AHS | 336:58 | 156151/1000000 | 336:59 | 665497/1000000 |
| 0 | ABS | 336:14 | 172157/1000000 | 336:15 | 107339/250000 |
| 0 | AQR | 336:66 | 279/1000 | 336:67 | 367161652791/500000000000 |
| 0 | BQR | 336:118 | 56437/250000 | 336:119 | 73536791931/100000000000 |
| 0 | ACQ | 336:24 | 168173/500000 | 336:25 | 837352529137/1000000000000 |
| 0 | CEQ | 336:128 | 93/1000 | 336:129 | 27153916357/62500000000 |
| 0 | AER | 336:38 | 13857/20000 | 336:39 | 177421/200000 |
| 0 | CER | 336:130 | 19091/200000 | 336:131 | 67481991/125000000 |
| 0 | AES | 336:40 | 152693/500000 | 336:41 | 140221/200000 |
| 0 | ACS | 336:28 | 289599/1000000 | 336:29 | 741211/1000000 |
| 0 | CES | 336:132 | 7893/62500 | 336:133 | 454341/1000000 |
| 0 | CFR | 336:140 | 34891/200000 | 336:141 | 382819/500000 |
| 0 | ACH | 336:20 | 5609/40000 | 336:21 | 794437334533/1000000000000 |
| 0 | CHR | 336:148 | 155663/500000 | 336:149 | 56356086523/62500000000 |
| 0 | APS | 336:64 | 93/1000 | 336:65 | 344723/1000000 |
| 0 | CPS | 336:156 | 103599/1000000 | 336:157 | 88113/250000 |
| 0 | EHR | 336:176 | 279/1000 | 336:177 | 831020406491/1000000000000 |
| 0 | EHS | 336:178 | 93/1000 | 336:179 | 526533/1000000 |
| 0 | APR | 336:62 | 3689/31250 | 336:63 | 139657/250000 |
| 0 | EQS | 336:188 | 93/1000 | 336:189 | 439263/1000000 |
| 0 | AHP | 336:52 | 5953/50000 | 336:53 | 149477/250000 |
| 0 | FHQ | 336:194 | 1643/15625 | 336:195 | 4747699243/10000000000 |
| 0 | APQ | 336:60 | 93/1000 | 336:61 | 29627/100000 |
| 0 | FRS | 336:210 | 29679/250000 | 336:211 | 222693085861/500000000000 |
| 0 | HQR | 336:218 | 99167/1000000 | 336:219 | 107384188469/200000000000 |
| 0 | CEH | 336:124 | 149533/500000 | 336:125 | 80145924441/125000000000 |
| 0 | CEP | 336:126 | 56533/500000 | 336:127 | 34857/100000 |
| 0 | BER | 336:94 | 138849/500000 | 336:95 | 17031744857/20000000000 |
| 0 | BCF | 336:74 | 150391/500000 | 336:75 | 82377/100000 |
| 0 | CFH | 336:134 | 7659/25000 | 336:135 | 310206222641/500000000000 |
| 0 | BFQ | 336:102 | 13857/20000 | 336:103 | 222283853217/250000000000 |
| 0 | BFS | 336:106 | 8337/62500 | 336:107 | 674199/1000000 |
| 0 | CFS | 336:142 | 93/1000 | 336:143 | 537263/1000000 |
| 0 | CPQ | 336:152 | 75173/500000 | 336:153 | 12973/25000 |
| 0 | EPS | 336:184 | 59693/500000 | 336:185 | 43969/100000 |
| 0 | CQR | 336:158 | 24051/250000 | 336:159 | 271495637683/500000000000 |
| 0 | CQS | 336:160 | 31031/250000 | 336:161 | 238893/500000 |
| 0 | CFQ | 336:138 | 77531/250000 | 336:139 | 211190522417/250000000000 |
| 0 | CPR | 336:154 | 93/1000 | 336:155 | 496299/1000000 |
| 0 | FPS | 336:204 | 97723/1000000 | 336:205 | 27199/62500 |
| 0 | FQR | 336:206 | 93/1000 | 336:207 | 211447394917/500000000000 |
| 0 | HPS | 336:216 | 126849/1000000 | 336:217 | 445761/1000000 |
| 0 | CHQ | 336:146 | 13857/20000 | 336:147 | 924768844231/1000000000000 |
| 0 | EFH | 336:162 | 34463/250000 | 336:163 | 30249951877/50000000000 |
| 0 | EHQ | 336:174 | 279/1000 | 336:175 | 382819/500000 |
| 1 | ABC | 336:0 | 93/1000 | 336:1 | 2718441/12500000 |
| 1 | ABH | 336:6 | 93/1000 | 336:7 | 16562468147/50000000000 |
| 1 | APQ | 336:60 | 93/1000 | 336:61 | 29627/100000 |
| 1 | CHP | 336:144 | 93/1000 | 336:145 | 407053/1000000 |
| 1 | FHR | 336:196 | 93/1000 | 336:197 | 347615979389/1000000000000 |
| 1 | ACQ | 336:24 | 168173/500000 | 336:25 | 837352529137/1000000000000 |
| 1 | ABQ | 336:10 | 74949/250000 | 336:11 | 25153281383/50000000000 |
| 1 | BCQ | 336:80 | 158693/1000000 | 336:81 | 72370912941/100000000000 |
| 1 | ABR | 336:12 | 93/1000 | 336:13 | 64781429/125000000 |
| 1 | BCR | 336:82 | 4653/31250 | 336:83 | 82377/100000 |
| 1 | AEH | 336:32 | 15253/50000 | 336:33 | 851497/1000000 |
| 1 | ABF | 336:4 | 12083/125000 | 336:5 | 19451/50000 |
| 1 | AFH | 336:42 | 93/1000 | 336:43 | 16562468147/50000000000 |
| 1 | BFH | 336:98 | 93/1000 | 336:99 | 19451/50000 |
| 1 | ABP | 336:8 | 28449/250000 | 336:9 | 71417/250000 |
| 1 | AFQ | 336:46 | 352137/1000000 | 336:47 | 84931204401/100000000000 |
| 1 | BFQ | 336:102 | 13857/20000 | 336:103 | 222283853217/250000000000 |
| 1 | AFR | 336:48 | 119201/1000000 | 336:49 | 140226343243/200000000000 |
| 1 | BFR | 336:104 | 30787/200000 | 336:105 | 38317604069/50000000000 |
| 1 | AHP | 336:52 | 5953/50000 | 336:53 | 149477/250000 |
| 1 | BHP | 336:108 | 30733/250000 | 336:109 | 274583/500000 |
| 1 | AHQ | 336:54 | 342151/1000000 | 336:55 | 851497/1000000 |
| 1 | BHQ | 336:110 | 13857/20000 | 336:111 | 955014565879/1000000000000 |
| 1 | AEF | 336:30 | 2287/8000 | 336:31 | 177421/200000 |
| 1 | AER | 336:38 | 13857/20000 | 336:39 | 177421/200000 |
| 1 | ACH | 336:20 | 5609/40000 | 336:21 | 794437334533/1000000000000 |
| 1 | CFH | 336:134 | 7659/25000 | 336:135 | 310206222641/500000000000 |
| 1 | EFR | 336:168 | 76179/250000 | 336:169 | 67920129799/100000000000 |
| 1 | AEP | 336:34 | 93/1000 | 336:35 | 116341/250000 |
| 1 | EHP | 336:172 | 93/1000 | 336:173 | 428281/1000000 |
| 1 | FHQ | 336:194 | 1643/15625 | 336:195 | 4747699243/10000000000 |
| 1 | AQR | 336:66 | 279/1000 | 336:67 | 367161652791/500000000000 |
| 1 | AHR | 336:56 | 56813/500000 | 336:57 | 748068213901/1000000000000 |
| 1 | BCH | 336:76 | 157421/1000000 | 336:77 | 9930464973/12500000000 |
| 1 | CHR | 336:148 | 155663/500000 | 336:149 | 56356086523/62500000000 |
| 1 | CQR | 336:158 | 24051/250000 | 336:159 | 271495637683/500000000000 |
| 1 | HQR | 336:218 | 99167/1000000 | 336:219 | 107384188469/200000000000 |
| 1 | CHQ | 336:146 | 13857/20000 | 336:147 | 924768844231/1000000000000 |
| 1 | FHP | 336:192 | 3009/25000 | 336:193 | 397749/1000000 |
| 1 | HPQ | 336:212 | 312849/1000000 | 336:213 | 631761/1000000 |
| 2 | ACE | 336:16 | 93/1000 | 336:17 | 33/125 |
| 2 | APQ | 336:60 | 93/1000 | 336:61 | 29627/100000 |
| 2 | CFP | 336:136 | 93/1000 | 336:137 | 79237/250000 |
| 2 | CHP | 336:144 | 93/1000 | 336:145 | 407053/1000000 |
| 2 | EFS | 336:170 | 93/1000 | 336:171 | 222453/500000 |
| 2 | FHR | 336:196 | 93/1000 | 336:197 | 347615979389/1000000000000 |
| 2 | HQS | 336:220 | 93/1000 | 336:221 | 51489/125000 |
| 2 | PQS | 336:226 | 93/1000 | 336:227 | 61333/200000 |
| 2 | QRS | 336:228 | 93/1000 | 336:229 | 334331/1000000 |
| 2 | ABC | 336:0 | 93/1000 | 336:1 | 2718441/12500000 |
| 2 | ABH | 336:6 | 93/1000 | 336:7 | 16562468147/50000000000 |
| 2 | BCH | 336:76 | 157421/1000000 | 336:77 | 9930464973/12500000000 |
| 2 | ACP | 336:22 | 93/1000 | 336:23 | 127641/250000 |
| 2 | ABP | 336:8 | 28449/250000 | 336:9 | 71417/250000 |
| 2 | BCP | 336:78 | 57391/500000 | 336:79 | 248167/500000 |
| 2 | ACQ | 336:24 | 168173/500000 | 336:25 | 837352529137/1000000000000 |
| 2 | ABQ | 336:10 | 74949/250000 | 336:11 | 25153281383/50000000000 |
| 2 | BCQ | 336:80 | 158693/1000000 | 336:81 | 72370912941/100000000000 |
| 2 | ABE | 336:2 | 93/1000 | 336:3 | 33/125 |
| 2 | AEP | 336:34 | 93/1000 | 336:35 | 116341/250000 |
| 2 | ABF | 336:4 | 12083/125000 | 336:5 | 19451/50000 |
| 2 | AHP | 336:52 | 5953/50000 | 336:53 | 149477/250000 |
| 2 | BHP | 336:108 | 30733/250000 | 336:109 | 274583/500000 |
| 2 | AHR | 336:56 | 56813/500000 | 336:57 | 748068213901/1000000000000 |
| 2 | BHR | 336:112 | 155143/1000000 | 336:113 | 107637802637/125000000000 |
| 2 | BPQ | 336:116 | 93/1000 | 336:117 | 29627/100000 |
| 2 | AQS | 336:68 | 93/1000 | 336:69 | 81221/200000 |
| 2 | AEH | 336:32 | 15253/50000 | 336:33 | 851497/1000000 |
| 2 | CEH | 336:124 | 149533/500000 | 336:125 | 80145924441/125000000000 |
| 2 | AEQ | 336:36 | 167381/500000 | 336:37 | 382819/500000 |
| 2 | CEQ | 336:128 | 93/1000 | 336:129 | 27153916357/62500000000 |
| 2 | AER | 336:38 | 13857/20000 | 336:39 | 177421/200000 |
| 2 | ACR | 336:26 | 16361/50000 | 336:27 | 23171029747/25000000000 |
| 2 | CER | 336:130 | 19091/200000 | 336:131 | 67481991/125000000 |
| 2 | CES | 336:132 | 7893/62500 | 336:133 | 454341/1000000 |
| 2 | AFH | 336:42 | 93/1000 | 336:43 | 16562468147/50000000000 |
| 2 | CFS | 336:142 | 93/1000 | 336:143 | 537263/1000000 |
| 2 | AQR | 336:66 | 279/1000 | 336:67 | 367161652791/500000000000 |
| 2 | CQS | 336:160 | 31031/250000 | 336:161 | 238893/500000 |
| 2 | AFQ | 336:46 | 352137/1000000 | 336:47 | 84931204401/100000000000 |
| 2 | AHQ | 336:54 | 342151/1000000 | 336:55 | 851497/1000000 |
| 2 | EHQ | 336:174 | 279/1000 | 336:175 | 382819/500000 |
| 2 | FHQ | 336:194 | 1643/15625 | 336:195 | 4747699243/10000000000 |
| 2 | FHS | 336:198 | 48851/500000 | 336:199 | 393543/1000000 |
| 2 | FQS | 336:208 | 93/1000 | 336:209 | 7371/15625 |
| 2 | FRS | 336:210 | 29679/250000 | 336:211 | 222693085861/500000000000 |
| 2 | HPS | 336:216 | 126849/1000000 | 336:217 | 445761/1000000 |
| 2 | PQR | 336:224 | 1948/15625 | 336:225 | 243181/500000 |
| 2 | BCE | 336:72 | 93/1000 | 336:73 | 2718441/12500000 |
| 2 | CEP | 336:126 | 56533/500000 | 336:127 | 34857/100000 |
| 2 | BCF | 336:74 | 150391/500000 | 336:75 | 82377/100000 |
| 2 | BFQ | 336:102 | 13857/20000 | 336:103 | 222283853217/250000000000 |
| 2 | CHS | 336:150 | 353983/1000000 | 336:151 | 353683/500000 |
| 2 | BFH | 336:98 | 93/1000 | 336:99 | 19451/50000 |
| 2 | BEH | 336:88 | 77233/250000 | 336:89 | 110986985769/125000000000 |
| 2 | EFH | 336:162 | 34463/250000 | 336:163 | 30249951877/50000000000 |
| 2 | EPQ | 336:180 | 74381/500000 | 336:181 | 115321/200000 |
| 2 | BFP | 336:100 | 93/1000 | 336:101 | 502227/1000000 |
| 2 | FHP | 336:192 | 3009/25000 | 336:193 | 397749/1000000 |
| 2 | BQR | 336:118 | 56437/250000 | 336:119 | 73536791931/100000000000 |
| 2 | BHQ | 336:110 | 13857/20000 | 336:111 | 955014565879/1000000000000 |
| 2 | HPQ | 336:212 | 312849/1000000 | 336:213 | 631761/1000000 |
| 2 | HQR | 336:218 | 99167/1000000 | 336:219 | 107384188469/200000000000 |
| 2 | CPS | 336:156 | 103599/1000000 | 336:157 | 88113/250000 |
| 2 | EPS | 336:184 | 59693/500000 | 336:185 | 43969/100000 |
| 2 | EQS | 336:188 | 93/1000 | 336:189 | 439263/1000000 |
| 2 | CHQ | 336:146 | 13857/20000 | 336:147 | 924768844231/1000000000000 |
| 2 | CPQ | 336:152 | 75173/500000 | 336:153 | 12973/25000 |
| 2 | EHP | 336:172 | 93/1000 | 336:173 | 428281/1000000 |
| 2 | FPQ | 336:200 | 283723/1000000 | 336:201 | 662671/1000000 |
| 2 | EHS | 336:178 | 93/1000 | 336:179 | 526533/1000000 |
| 2 | HRS | 336:222 | 93/1000 | 336:223 | 252927/500000 |
| 3 | CFP | 336:136 | 93/1000 | 336:137 | 79237/250000 |
| 3 | CFQ | 336:138 | 77531/250000 | 336:139 | 211190522417/250000000000 |
| 3 | CHP | 336:144 | 93/1000 | 336:145 | 407053/1000000 |
| 3 | EHP | 336:172 | 93/1000 | 336:173 | 428281/1000000 |
| 3 | EHQ | 336:174 | 279/1000 | 336:175 | 382819/500000 |
| 3 | FHP | 336:192 | 3009/25000 | 336:193 | 397749/1000000 |
| 3 | FHQ | 336:194 | 1643/15625 | 336:195 | 4747699243/10000000000 |
| 3 | CEF | 336:122 | 131101/1000000 | 336:123 | 78817293/125000000 |
| 3 | CEH | 336:124 | 149533/500000 | 336:125 | 80145924441/125000000000 |
| 3 | CEQ | 336:128 | 93/1000 | 336:129 | 27153916357/62500000000 |
| 3 | CHQ | 336:146 | 13857/20000 | 336:147 | 924768844231/1000000000000 |
| 3 | CPQ | 336:152 | 75173/500000 | 336:153 | 12973/25000 |
| 3 | EFH | 336:162 | 34463/250000 | 336:163 | 30249951877/50000000000 |
| 3 | FPQ | 336:200 | 283723/1000000 | 336:201 | 662671/1000000 |
| 3 | HPQ | 336:212 | 312849/1000000 | 336:213 | 631761/1000000 |
| 3 | CFH | 336:134 | 7659/25000 | 336:135 | 310206222641/500000000000 |
| 4 | CFP | 336:136 | 93/1000 | 336:137 | 79237/250000 |
| 4 | CFR | 336:140 | 34891/200000 | 336:141 | 382819/500000 |
| 4 | CHP | 336:144 | 93/1000 | 336:145 | 407053/1000000 |
| 4 | EHP | 336:172 | 93/1000 | 336:173 | 428281/1000000 |
| 4 | EHR | 336:176 | 279/1000 | 336:177 | 831020406491/1000000000000 |
| 4 | HQS | 336:220 | 93/1000 | 336:221 | 51489/125000 |
| 4 | AFR | 336:48 | 119201/1000000 | 336:49 | 140226343243/200000000000 |
| 4 | AHR | 336:56 | 56813/500000 | 336:57 | 748068213901/1000000000000 |
| 4 | ACE | 336:16 | 93/1000 | 336:17 | 33/125 |
| 4 | AEF | 336:30 | 2287/8000 | 336:31 | 177421/200000 |
| 4 | CEF | 336:122 | 131101/1000000 | 336:123 | 78817293/125000000 |
| 4 | AER | 336:38 | 13857/20000 | 336:39 | 177421/200000 |
| 4 | CER | 336:130 | 19091/200000 | 336:131 | 67481991/125000000 |
| 4 | ACS | 336:28 | 289599/1000000 | 336:29 | 741211/1000000 |
| 4 | CES | 336:132 | 7893/62500 | 336:133 | 454341/1000000 |
| 4 | AFQ | 336:46 | 352137/1000000 | 336:47 | 84931204401/100000000000 |
| 4 | CFQ | 336:138 | 77531/250000 | 336:139 | 211190522417/250000000000 |
| 4 | APQ | 336:60 | 93/1000 | 336:61 | 29627/100000 |
| 4 | CPQ | 336:152 | 75173/500000 | 336:153 | 12973/25000 |
| 4 | APR | 336:62 | 3689/31250 | 336:63 | 139657/250000 |
| 4 | CPR | 336:154 | 93/1000 | 336:155 | 496299/1000000 |
| 4 | APS | 336:64 | 93/1000 | 336:65 | 344723/1000000 |
| 4 | AQS | 336:68 | 93/1000 | 336:69 | 81221/200000 |
| 4 | AEH | 336:32 | 15253/50000 | 336:33 | 851497/1000000 |
| 4 | EFH | 336:162 | 34463/250000 | 336:163 | 30249951877/50000000000 |
| 4 | AFS | 336:50 | 105589/1000000 | 336:51 | 10213/15625 |
| 4 | FHS | 336:198 | 48851/500000 | 336:199 | 393543/1000000 |
| 4 | AFP | 336:44 | 3901/40000 | 336:45 | 298169/500000 |
| 4 | FPQ | 336:200 | 283723/1000000 | 336:201 | 662671/1000000 |
| 4 | AQR | 336:66 | 279/1000 | 336:67 | 367161652791/500000000000 |
| 4 | FQR | 336:206 | 93/1000 | 336:207 | 211447394917/500000000000 |
| 4 | FQS | 336:208 | 93/1000 | 336:209 | 7371/15625 |
| 4 | ARS | 336:70 | 93/1000 | 336:71 | 488719/1000000 |
| 4 | FRS | 336:210 | 29679/250000 | 336:211 | 222693085861/500000000000 |
| 4 | AHP | 336:52 | 5953/50000 | 336:53 | 149477/250000 |
| 4 | HPS | 336:216 | 126849/1000000 | 336:217 | 445761/1000000 |
| 4 | PQR | 336:224 | 1948/15625 | 336:225 | 243181/500000 |
| 4 | CEH | 336:124 | 149533/500000 | 336:125 | 80145924441/125000000000 |
| 4 | CEP | 336:126 | 56533/500000 | 336:127 | 34857/100000 |
| 4 | EFQ | 336:166 | 279/1000 | 336:167 | 67920129799/100000000000 |
| 4 | EHS | 336:178 | 93/1000 | 336:179 | 526533/1000000 |
| 4 | EPQ | 336:180 | 74381/500000 | 336:181 | 115321/200000 |
| 4 | EQR | 336:186 | 93/1000 | 336:187 | 208104619409/500000000000 |
| 4 | EQS | 336:188 | 93/1000 | 336:189 | 439263/1000000 |
| 4 | FHP | 336:192 | 3009/25000 | 336:193 | 397749/1000000 |
| 4 | CHR | 336:148 | 155663/500000 | 336:149 | 56356086523/62500000000 |
| 4 | EPR | 336:182 | 181527/1000000 | 336:183 | 127919/200000 |
| 4 | EPS | 336:184 | 59693/500000 | 336:185 | 43969/100000 |
| 4 | CFH | 336:134 | 7659/25000 | 336:135 | 310206222641/500000000000 |
| 4 | FHR | 336:196 | 93/1000 | 336:197 | 347615979389/1000000000000 |
| 4 | FPS | 336:204 | 97723/1000000 | 336:205 | 27199/62500 |
| 4 | CHQ | 336:146 | 13857/20000 | 336:147 | 924768844231/1000000000000 |
| 4 | HPQ | 336:212 | 312849/1000000 | 336:213 | 631761/1000000 |
| 4 | HPR | 336:214 | 62663/500000 | 336:215 | 154357/250000 |
| 4 | QRS | 336:228 | 93/1000 | 336:229 | 334331/1000000 |
| 4 | FHQ | 336:194 | 1643/15625 | 336:195 | 4747699243/10000000000 |
| 4 | HQR | 336:218 | 99167/1000000 | 336:219 | 107384188469/200000000000 |
| 4 | PQS | 336:226 | 93/1000 | 336:227 | 61333/200000 |

## Stage 337

| Property | Value |
| --- | --- |
| Scope | root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Packet | forest:root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Index | 4 |
| Context | 78 |
| Box present | yes |
| Parent box | 336 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 22579/200000 | 33/125 | 112899/1000000 | 33/125 |
| b | 109219/1000000 | 19451/50000 | 5461/50000 | 389017/1000000 |
| c | 461491/1000000 | 932989/1000000 | 115373/250000 | 466479/500000 |
| e | 22579/200000 | 33/125 | 112899/1000000 | 33/125 |
| f | 22579/200000 | 19451/50000 | 112899/1000000 | 389017/1000000 |
| h | 287311/500000 | 120549/125000 | 17957/31250 | 241097/250000 |
| p | 8119/40000 | 727989/1000000 | 202977/1000000 | 363981/500000 |
| q | 41179/200000 | 158529/250000 | 205899/1000000 | 634113/1000000 |
| u | 401857/500000 | 1/1 | 803787/1000000 | 1/1 |
| v | 447657/1000000 | 878533/1000000 | 93367/200000 | 878533/1000000 |
| r | 456389/1000000 | 878533/1000000 | 91279/200000 | 878533/1000000 |
| w | 161149/200000 | 1/1 | 805749/1000000 | 1/1 |
| j | 378867/1000000 | 17067/20000 | 189437/500000 | 853349/1000000 |
| k | 418281/1000000 | 838863/1000000 | 83657/200000 | 41943/50000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 0 | A_ABC | actual ABC; occupants none | `-1/1 * a * b + 1/1 * a * c + -93/1000` |
| 134 | fb | contact order fb | `1/1 * f + -1/1 * b` |
| 7 | A_ABH | actual ABH; occupants none | `1/1 * b * h + -1/1 * a * b + -93/1000` |
| 136 | sym | contact order sym | `1/1 * f + -1/1 * e` |
| 140 | top-area | top hull +--+ | `114499/250000 + -1/1 * f + -1/1 * e + 1/1 * e * f` |
| 26 | A_AEP | actual AEP; occupants none | `1/1 * q + -1/1 * a + -1/1 * e * p + 1/1 * a * p + -93/1000` |
| 29 | A_AER | actual AER; occupants P, S | `1/1 * w + -1/1 * a + -1/1 * e * r + 1/1 * a * r + -13857/20000` |
| 287 | AREA_lo_EFR | earlier 336:168; EFR; lo; 76179/250000 | `-1/1 * f * w + 1/1 * e * f + 1/1 * w + 1/1 * r + -326179/250000 + -1/1 * e * r` |
| 46 | A_BCE | actual BCE; occupants none | `1/1 * c * e + -1/1 * b * e + -93/1000` |
| 184 | AREA_lo_AES | earlier 336:40; AES; lo; 152693/500000 | `1/1 * k + -1/1 * a + -1/1 * e * j + 1/1 * a * j + -152693/500000` |
| 64 | A_BFP | actual BFP; occupants none | `-1/1 * f * q + 1/1 * b * q + 1/1 * p + -1/1 * b + -93/1000` |
| 65 | A_BFQ | actual BFQ; occupants P, S | `-1/1 * f * v + 1/1 * b * v + 1/1 * u + -1/1 * b + -13857/20000` |
| 320 | AREA_lo_HPQ | earlier 336:212; HPQ; lo; 312849/1000000 | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -312849/1000000` |
| 69 | A_BHQ | actual BHQ; occupants P, S | `1/1 * b * v + 1/1 * h * u + -1/1 * b * h + -13857/20000` |
| 79 | A_CEQ | actual CEQ; occupants none | `1/1 * v + -1/1 * c * v + -1/1 * e * u + 1/1 * c * e + -93/1000` |
| 336 | AREA_lo_EFQ | earlier 336:233; EFQ; lo; 313977/1000000 | `-1/1 * f * v + 1/1 * e * f + 1/1 * v + 1/1 * u + -1313977/1000000 + -1/1 * e * u` |
| 83 | A_CFP | actual CFP; occupants none | `1/1 * f * q + -1/1 * c * q + -1/1 * p + 1/1 * c + -93/1000` |
| 101 | A_EFS | actual EFS; occupants none | `-1/1 * f * k + 1/1 * e * f + 1/1 * k + 1/1 * j + -1093/1000 + -1/1 * e * j` |
| 111 | A_ERS | actual ERS; occupants none | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |
| 114 | A_FHR | actual FHR; occupants none | `-1/1 * f * w + -1/1 * h * r + 1/1 * f * h + 1/1 * r + -93/1000` |
| 126 | A_HQS | actual HQS; occupants none | `-1/1 * u * k + 1/1 * h * u + 1/1 * v * j + -1/1 * h * j + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 336 | v | 447657/1000000 | 878533/1000000 | 16565068759/35484200000 | 878533/1000000 | 466829/1000000 | 878533/1000000 | `(177421/200000, -117650602201/200000000000); (177421/200000, -43289951/62500000); (30549/50000, -55707987913/100000000000); (30549/50000, -77467777/125000000); (177421/200000, -16565068759/40000000000); (177421/200000, -6852159/12500000); (30549/50000, -3829535871/10000000000); (30549/50000, -11881893/25000000)` |
| 1 | 65 | u | 401857/500000 | 1/1 | 200946265851/250000000000 | 1/1 | 160757/200000 | 1/1 | `(1/1, -200946265851/250000000000); (1/1, -7623734739/8000000000); (1/1, -932688221029/1000000000000); (1/1, -108187/100000); (1/1, -201324621827/250000000000); (1/1, -6714280603/8000000000); (1/1, -1047883411933/1000000000000)` |
| 2 | 79 | c | 461491/1000000 | 932989/1000000 | 461491/1000000 | 14333344/15363325 | 461491/1000000 | 932959/1000000 | `(-176967/500000, 11323427697/40000000000); (-202829/1000000, 505093/3125000); (-176967/500000, 130467/500000); (-202829/1000000, 109829/1000000); (-382819/500000, 27791587697/40000000000); (-614533/1000000, 447917/781250); (-382819/500000, 336319/500000); (-614533/1000000, 521533/1000000)` |
| 3 | 83 | p | 8119/40000 | 727989/1000000 | 8119/40000 | 145592935919/200000000000 | 8119/40000 | 145593/200000 | `(-1/1, 14835841329/50000000000); (-1/1, 4194449517/6250000000); (-1/1, 70713916691/200000000000); (-1/1, 145592935919/200000000000); (-1/1, 9215043679/62500000000); (-1/1, 4999114009/15625000000); (-1/1, 80633994841/250000000000); (-1/1, 123759644269/250000000000)` |
| 4 | 0 | a | 22579/200000 | 33/125 | 1550/13729 | 33/125 | 112899/1000000 | 33/125 | `(22017/62500, -93/1000); (72471/1000000, -93/1000); (41187/50000, -93/1000); (543939/1000000, -93/1000)` |
| 5 | 26 | q | 41179/200000 | 158529/250000 | 10294804407/50000000000 | 158529/250000 | 25737/125000 | 158529/250000 | `(1/1, -2058981881/10000000000); (1/1, -2610635701/8000000000); (1/1, -9462749019/40000000000); (1/1, -357/1000); (1/1, -10294804407/50000000000); (1/1, -9880033947/40000000000); (1/1, -63179047893/200000000000)` |
| 6 | 46 | e | 22579/200000 | 33/125 | 1550/13729 | 33/125 | 112899/1000000 | 33/125 | `(22017/62500, -93/1000); (72471/1000000, -93/1000); (41187/50000, -93/1000); (543939/1000000, -93/1000)` |
| 7 | 101 | j | 378867/1000000 | 17067/20000 | 16804735289/44355050000 | 17067/20000 | 94717/250000 | 17067/20000 | `(887101/1000000, -70919510089/100000000000); (92/125, -138427310699/200000000000); (887101/1000000, -19837967641/25000000000); (92/125, -36736869731/50000000000); (887101/1000000, -16804735289/50000000000); (92/125, -63807231677/200000000000); (887101/1000000, -6706893941/12500000000); (92/125, -23888510213/50000000000)` |
| 8 | 136 | f | 22579/200000 | 19451/50000 | 112899/1000000 | 19451/50000 | 112899/1000000 | 19451/50000 | `(1/1, -112899/1000000); (1/1, -33/125)` |
| 9 | 140 | f | 112899/1000000 | 19451/50000 | 112899/1000000 | 345097/887101 | 112899/1000000 | 389017/1000000 | `(-887101/1000000, 345097/1000000); (-92/125, 48499/250000)` |
| 10 | 184 | k | 418281/1000000 | 838863/1000000 | 83657/200000 | 838863/1000000 | 83657/200000 | 838863/1000000 | `(1/1, -83657/200000); (1/1, -128034666583/250000000000); (1/1, -118883083417/250000000000); (1/1, -284693/500000); (1/1, -8808879233/20000000000); (1/1, -10944540767/20000000000)` |
| 11 | 287 | r | 456389/1000000 | 878533/1000000 | 404868815799/887101000000 | 878533/1000000 | 91279/200000 | 878533/1000000 | `(887101/1000000, -288596310277/500000000000); (92/125, -112026693751/200000000000); (887101/1000000, -384249936191/500000000000); (92/125, -141943802933/200000000000); (887101/1000000, -404868815799/1000000000000); (92/125, -3029763/7812500); (887101/1000000, -649813369717/1000000000000); (92/125, -9234883/15625000)` |
| 12 | 336 | v | 466829/1000000 | 878533/1000000 | 414129815799/887101000000 | 878533/1000000 | 93367/200000 | 878533/1000000 | `(887101/1000000, -294096169257/500000000000); (887101/1000000, -43286619/62500000); (610983/1000000, -34813680777/62500000000); (610983/1000000, -2420667/3906250); (887101/1000000, -414129815799/1000000000000); (887101/1000000, -34260729/62500000); (610983/1000000, -382956369717/1000000000000); (610983/1000000, -14852391/31250000)` |
| 13 | 26 | q | 25737/125000 | 158529/250000 | 205899/1000000 | 158529/250000 | 205899/1000000 | 158529/250000 | `(1/1, -205899/1000000); (1/1, -13053210981/40000000000); (1/1, -9462749019/40000000000); (1/1, -357/1000); (1/1, -49400752107/200000000000); (1/1, -63179047893/200000000000)` |
| 14 | 29 | w | 161149/200000 | 1/1 | 805749/1000000 | 1/1 | 805749/1000000 | 1/1 | `(1/1, -805749/1000000); (1/1, -177577651821/200000000000); (1/1, -174942148179/200000000000); (1/1, -19137/20000); (1/1, -824102785167/1000000000000); (1/1, -938496214833/1000000000000)` |
| 15 | 64 | p | 8119/40000 | 145593/200000 | 1268604427/6250000000 | 145593/200000 | 6343/31250 | 145593/200000 | `(1/1, -1268604427/6250000000); (1/1, -425166962221/1000000000000); (1/1, -129914564201/500000000000); (1/1, -482019382303/1000000000000); (1/1, -639226709/3125000000); (1/1, -76731813991/250000000000); (1/1, -47455423571/125000000000); (1/1, -120504524413/250000000000)` |
| 16 | 65 | u | 160757/200000 | 1/1 | 1004733691/1250000000 | 1/1 | 401893/500000 | 1/1 | `(1/1, -1004733691/1250000000); (1/1, -190593410593/200000000000); (1/1, -93268849933/100000000000); (1/1, -216373719899/200000000000); (1/1, -5033137509/6250000000); (1/1, -839288589507/1000000000000); (1/1, -523940388167/500000000000); (1/1, -1081867364401/1000000000000)` |
| 17 | 83 | p | 6343/31250 | 145593/200000 | 6343/31250 | 363980943071/500000000000 | 6343/31250 | 363981/500000 | `(-1/1, 18544765987/62500000000); (-1/1, 33555473303/50000000000); (-1/1, 176784337937/500000000000); (-1/1, 363980943071/500000000000); (-1/1, 287975069/1953125000); (-1/1, 3999322913/12500000000); (-1/1, 40316759627/125000000000); (-1/1, 61879584341/125000000000)` |
| 18 | 101 | j | 94717/250000 | 17067/20000 | 84024402409/221775250000 | 17067/20000 | 378871/1000000 | 17067/20000 | `(887101/1000000, -354596387007/500000000000); (92/125, -138426724443/200000000000); (887101/1000000, -396757672781/500000000000); (92/125, -146946897569/200000000000); (887101/1000000, -84024402409/250000000000); (92/125, -319038457837/1000000000000); (887101/1000000, -134137334347/250000000000); (92/125, -477768479671/1000000000000)` |
| 19 | 111 | j | 378871/1000000 | 17067/20000 | 378871/1000000 | 378503339369/443550500000 | 378871/1000000 | 853349/1000000 | `(-13857/20000, 43384064347/100000000000); (-541749/1000000, 14595156103/40000000000); (-13857/20000, 281377839369/500000000000); (-541749/1000000, 86001692781/200000000000); (-887101/1000000, 62809164347/100000000000); (-92/125, 22365196103/40000000000); (-887101/1000000, 378503339369/500000000000); (-92/125, 124851892781/200000000000); (-13857/20000, 10260616989/50000000000); (-541749/1000000, 27250119777/200000000000); (-13857/20000, 127917332703/250000000000); (-541749/1000000, 378922115979/1000000000000); (-887101/1000000, 19973166989/50000000000); (-92/125, 66100319777/200000000000); (-887101/1000000, 176480082703/250000000000); (-92/125, 573173115979/1000000000000)` |
| 20 | 114 | h | 287311/500000 | 120549/125000 | 287311/500000 | 24846470593/25764000000 | 287311/500000 | 241097/250000 | `(-42937/125000, 272426743649/1000000000000); (-33689/500000, 49944941267/1000000000000); (-382817/500000, 694564743649/1000000000000); (-122379/250000, 472082941267/1000000000000); (-42937/125000, 3914/15625); (-33689/500000, -12811/500000); (-382817/500000, 336317/500000); (-122379/250000, 99129/250000)` |
| 21 | 126 | k | 83657/200000 | 838863/1000000 | 83657/200000 | 167772006059/200000000000 | 83657/200000 | 838861/1000000 | `(-401893/500000, 65607150083/200000000000); (-401893/500000, 98730634061/200000000000); (-1/1, 440784631523/1000000000000); (-1/1, 682879597337/1000000000000); (-401893/500000, 484016183373/1000000000000); (-401893/500000, 649633603263/1000000000000); (-1/1, 596765064481/1000000000000); (-1/1, 167772006059/200000000000); (-401893/500000, 276893190229/1000000000000); (-401893/500000, 257575217971/1000000000000); (-1/1, 389642071337/1000000000000); (-1/1, 446801645003/1000000000000); (-401893/500000, 628215266831/1000000000000); (-401893/500000, 608897294573/1000000000000); (-1/1, 740964147939/1000000000000); (-1/1, 159624744321/200000000000)` |
| 22 | 134 | b | 109219/1000000 | 19451/50000 | 109219/1000000 | 389017/1000000 | 109219/1000000 | 389017/1000000 | `(-1/1, 112899/1000000); (-1/1, 389017/1000000)` |
| 23 | 320 | q | 205899/1000000 | 158529/250000 | 205899/1000000 | 3963203097/6250000000 | 205899/1000000 | 634113/1000000 | `(-401893/500000, 6357297239/50000000000); (-401893/500000, 9033031381/25000000000); (-401893/500000, 35279639399/500000000000); (-401893/500000, 50056447991/500000000000); (-1/1, 7496713309/31250000000); (-1/1, 17204615071/31250000000); (-1/1, 91654079953/500000000000); (-1/1, 144669661507/500000000000); (-401893/500000, 52677689507/250000000000); (-401893/500000, 55610758561/125000000000); (-401893/500000, 185129889137/500000000000); (-401893/500000, 199906697729/500000000000); (-1/1, 10108113723/31250000000); (-1/1, 3963203097/6250000000); (-1/1, 241504329691/500000000000); (-1/1, 58903982249/100000000000)` |
| 24 | 7 | b | 109219/1000000 | 389017/1000000 | 93000/851489 | 389017/1000000 | 5461/50000 | 389017/1000000 | `(461723/1000000, -93/1000); (155311/500000, -93/1000); (851489/1000000, -93/1000); (175097/250000, -93/1000)` |
| 25 | 46 | c | 461491/1000000 | 932959/1000000 | 253821/550000 | 932959/1000000 | 115373/250000 | 932959/1000000 | `(112899/1000000, -5266541439/50000000000); (112899/1000000, -136919630283/1000000000000); (33/125, -761463/6250000); (33/125, -24462561/125000000)` |
| 26 | 64 | p | 6343/31250 | 363981/500000 | 202977502421/1000000000000 | 363981/500000 | 202977/1000000 | 363981/500000 | `(1/1, -202977502421/1000000000000); (1/1, -212582289959/500000000000); (1/1, -259829922503/1000000000000); (1/1, -482017/1000000); (1/1, -204552901727/1000000000000); (1/1, -153463493333/500000000000); (1/1, -379642915061/1000000000000)` |
| 27 | 65 | u | 401893/500000 | 1/1 | 160757497193/200000000000 | 1/1 | 803787/1000000 | 1/1 | `(1/1, -160757497193/200000000000); (1/1, -95296545347/100000000000); (1/1, -186537806499/200000000000); (1/1, -1081867/1000000); (1/1, -805302122907/1000000000000); (1/1, -419644112553/500000000000); (1/1, -1047880897801/1000000000000)` |
| 28 | 69 | h | 287311/500000 | 241097/250000 | 351085727939/610983000000 | 241097/250000 | 17957/31250 | 241097/250000 | `(694567/1000000, -6418622813/10000000000); (41477/100000, -102248649761/200000000000); (44539/50000, -6418622813/10000000000); (610983/1000000, -102248649761/200000000000); (694567/1000000, -29844831287/50000000000); (41477/100000, -351085727939/1000000000000); (44539/50000, -29844831287/50000000000); (610983/1000000, -351085727939/1000000000000)` |
| 29 | 79 | c | 115373/250000 | 932959/1000000 | 115373/250000 | 71666654/76816625 | 115373/250000 | 466479/500000 | `(-22121/62500, 283088251487/1000000000000); (-40567/200000, 5051101/31250000); (-22121/62500, 32617/125000); (-40567/200000, 21967/200000); (-382817/500000, 694786251487/1000000000000); (-614533/1000000, 35833327/62500000); (-382817/500000, 336317/500000); (-614533/1000000, 521533/1000000)` |
| 30 | 101 | j | 378871/1000000 | 853349/1000000 | 168049691919/443550500000 | 853349/1000000 | 378873/1000000 | 853349/1000000 | `(887101/1000000, -354596387007/500000000000); (92/125, -138426724443/200000000000); (887101/1000000, -396757672781/500000000000); (92/125, -146946897569/200000000000); (887101/1000000, -168049691919/500000000000); (92/125, -319040232039/1000000000000); (887101/1000000, -268275279677/500000000000); (92/125, -477769701637/1000000000000)` |
| 31 | 126 | k | 83657/200000 | 838861/1000000 | 83657/200000 | 167771971717/200000000000 | 83657/200000 | 41943/50000 | `(-803787/1000000, 328036959291/1000000000000); (-803787/1000000, 493653139587/1000000000000); (-1/1, 440785658203/1000000000000); (-1/1, 682878602231/1000000000000); (-803787/1000000, 96803643129/200000000000); (-803787/1000000, 649634395941/1000000000000); (-1/1, 596766914557/1000000000000); (-1/1, 167771971717/200000000000); (-803787/1000000, 276893665727/1000000000000); (-803787/1000000, 257576182359/1000000000000); (-1/1, 389642364639/1000000000000); (-1/1, 446801645003/1000000000000); (-803787/1000000, 628215742329/1000000000000); (-803787/1000000, 608898258961/1000000000000); (-1/1, 740964441241/1000000000000); (-1/1, 159624744321/200000000000)` |
| 32 | 101 | j | 378873/1000000 | 853349/1000000 | 336100270939/887101000000 | 853349/1000000 | 189437/500000 | 853349/1000000 | `(887101/1000000, -354596387007/500000000000); (92/125, -138426724443/200000000000); (887101/1000000, -396757672781/500000000000); (92/125, -146946897569/200000000000); (887101/1000000, -336100270939/1000000000000); (92/125, -15952055957/50000000000); (887101/1000000, -536551170337/1000000000000); (92/125, -23888515631/50000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 337:0 | ABC | lo | 93/1000 | occupants none |
| 337:2 | ABE | lo | 93/1000 | occupants none |
| 337:3 | ABE | hi | 33/125 | vertex maximum 33/125 |
| 337:6 | ABH | lo | 93/1000 | occupants none |
| 337:8 | ABP | lo | 28449/250000 | earlier 336:8; ABP; lo; 28449/250000 |
| 337:10 | ABQ | lo | 74949/250000 | earlier 336:10; ABQ; lo; 74949/250000 |
| 337:11 | ABQ | hi | 503063784061/1000000000000 | vertex maximum 503063784061/1000000000000 |
| 337:13 | ABR | hi | 64781153/125000000 | vertex maximum 64781153/125000000 |
| 337:17 | ACE | hi | 33/125 | vertex maximum 33/125 |
| 337:19 | ACF | hi | 871547605041/1000000000000 | vertex maximum 871547605041/1000000000000 |
| 337:21 | ACH | hi | 397201737231/500000000000 | vertex maximum 397201737231/500000000000 |
| 337:22 | ACP | lo | 93/1000 | occupants none |
| 337:25 | ACQ | hi | 418666739307/500000000000 | vertex maximum 418666739307/500000000000 |
| 337:31 | AEF | hi | 887101/1000000 | vertex maximum 887101/1000000 |
| 337:32 | AEH | lo | 15253/50000 | earlier 336:32; AEH; lo; 15253/50000 |
| 337:34 | AEP | lo | 93/1000 | occupants none |
| 337:38 | AER | lo | 13857/20000 | occupants P, S |
| 337:39 | AER | hi | 887101/1000000 | vertex maximum 887101/1000000 |
| 337:40 | AES | lo | 152693/500000 | earlier 336:40; AES; lo; 152693/500000 |
| 337:42 | AFH | lo | 93/1000 | occupants none |
| 337:44 | AFP | lo | 165881/1000000 | earlier 336:231; AFP; lo; 165881/1000000 |
| 337:46 | AFQ | lo | 439167/1000000 | earlier 336:230; AFQ; lo; 439167/1000000 |
| 337:48 | AFR | lo | 119201/1000000 | earlier 336:48; AFR; lo; 119201/1000000 |
| 337:54 | AHQ | lo | 342151/1000000 | earlier 336:54; AHQ; lo; 342151/1000000 |
| 337:55 | AHQ | hi | 851489/1000000 | vertex maximum 851489/1000000 |
| 337:58 | AHS | lo | 156151/1000000 | earlier 336:58; AHS; lo; 156151/1000000 |
| 337:60 | APQ | lo | 93/1000 | occupants none |
| 337:64 | APS | lo | 93/1000 | occupants none |
| 337:68 | AQS | lo | 93/1000 | occupants none |
| 337:70 | ARS | lo | 93/1000 | occupants none |
| 337:72 | BCE | lo | 93/1000 | occupants none |
| 337:74 | BCF | lo | 150391/500000 | earlier 336:74; BCF; lo; 150391/500000 |
| 337:80 | BCQ | lo | 158693/1000000 | earlier 336:80; BCQ; lo; 158693/1000000 |
| 337:86 | BEF | lo | 5627/20000 | earlier 336:86; BEF; lo; 5627/20000 |
| 337:89 | BEH | hi | 11098645283/12500000000 | vertex maximum 11098645283/12500000000 |
| 337:90 | BEP | lo | 93/1000 | occupants none |
| 337:100 | BFP | lo | 93/1000 | occupants none |
| 337:102 | BFQ | lo | 13857/20000 | occupants P, S |
| 337:103 | BFQ | hi | 177812502807/200000000000 | vertex maximum 177812502807/200000000000 |
| 337:110 | BHQ | lo | 13857/20000 | occupants P, S |
| 337:116 | BPQ | lo | 93/1000 | occupants none |
| 337:118 | BQR | lo | 56437/250000 | earlier 336:118; BQR; lo; 56437/250000 |
| 337:124 | CEH | lo | 149533/500000 | earlier 336:124; CEH; lo; 149533/500000 |
| 337:126 | CEP | lo | 56533/500000 | earlier 336:126; CEP; lo; 56533/500000 |
| 337:128 | CEQ | lo | 93/1000 | occupants none |
| 337:131 | CER | hi | 67481701/125000000 | vertex maximum 67481701/125000000 |
| 337:132 | CES | lo | 7893/62500 | earlier 336:132; CES; lo; 7893/62500 |
| 337:134 | CFH | lo | 7659/25000 | earlier 336:134; CFH; lo; 7659/25000 |
| 337:135 | CFH | hi | 19387388963/31250000000 | vertex maximum 19387388963/31250000000 |
| 337:136 | CFP | lo | 93/1000 | occupants none |
| 337:138 | CFQ | lo | 77531/250000 | earlier 336:138; CFQ; lo; 77531/250000 |
| 337:141 | CFR | hi | 382817/500000 | vertex maximum 382817/500000 |
| 337:142 | CFS | lo | 93/1000 | occupants none |
| 337:144 | CHP | lo | 93/1000 | occupants none |
| 337:146 | CHQ | lo | 13857/20000 | occupants P, S |
| 337:147 | CHQ | hi | 46238330217/50000000000 | vertex maximum 46238330217/50000000000 |
| 337:149 | CHR | hi | 1127105111/1250000000 | vertex maximum 1127105111/1250000000 |
| 337:162 | EFH | lo | 34463/250000 | earlier 336:162; EFH; lo; 34463/250000 |
| 337:163 | EFH | hi | 24199794973/40000000000 | vertex maximum 24199794973/40000000000 |
| 337:166 | EFQ | lo | 313977/1000000 | earlier 336:233; EFQ; lo; 313977/1000000 |
| 337:167 | EFQ | hi | 668017/1000000 | earlier 336:234; EFQ; hi; 668017/1000000 |
| 337:168 | EFR | lo | 76179/250000 | earlier 336:168; EFR; lo; 76179/250000 |
| 337:169 | EFR | hi | 40683/62500 | earlier 336:235; EFR; hi; 40683/62500 |
| 337:170 | EFS | lo | 93/1000 | occupants none |
| 337:172 | EHP | lo | 93/1000 | occupants none |
| 337:174 | EHQ | lo | 279/1000 | occupants S |
| 337:175 | EHQ | hi | 382817/500000 | vertex maximum 382817/500000 |
| 337:177 | EHR | hi | 33240665977/40000000000 | vertex maximum 33240665977/40000000000 |
| 337:188 | EQS | lo | 93/1000 | occupants none |
| 337:190 | ERS | lo | 93/1000 | occupants none |
| 337:192 | FHP | lo | 3009/25000 | earlier 336:192; FHP; lo; 3009/25000 |
| 337:194 | FHQ | lo | 1643/15625 | earlier 336:194; FHQ; lo; 1643/15625 |
| 337:196 | FHR | lo | 93/1000 | occupants none |
| 337:200 | FPQ | lo | 283723/1000000 | earlier 336:200; FPQ; lo; 283723/1000000 |
| 337:206 | FQR | lo | 93/1000 | occupants none |
| 337:208 | FQS | lo | 93/1000 | occupants none |
| 337:210 | FRS | lo | 29679/250000 | earlier 336:210; FRS; lo; 29679/250000 |
| 337:212 | HPQ | lo | 312849/1000000 | earlier 336:212; HPQ; lo; 312849/1000000 |
| 337:220 | HQS | lo | 93/1000 | occupants none |
| 337:226 | PQS | lo | 93/1000 | occupants none |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |
| 50 | plu | ABE * BCQ = ABC * BEQ + ABQ * BCE | circuit BACEQ |
| 52 | plu | ACE * BEQ = ABE * CEQ + AEQ * BCE | circuit EABCQ |
| 95 | plu | ABQ * BCH = ABC * BHQ + ABH * BCQ | circuit BACHQ |
| 433 | plu | AEF * AHR = AEH * AFR + AER * AFH | circuit AEFHR |
| 437 | plu | AFR * EHR = AER * FHR + AHR * EFR | circuit RAEFH |
| 693 | plu | BHP * CHQ = BCH * HPQ + BHQ * CHP | circuit HBCPQ |
| 752 | plu | BFS * EFQ = BEF * FQS + BFQ * EFS | circuit FBEQS |
| 797 | plu | BFQ * HQR = BHQ * FQR + BQR * FHQ | circuit QBFHR |
| 827 | plu | CEF * EHQ = CEH * EFQ + CEQ * EFH | circuit ECFHQ |
| 833 | plu | CFR * EFH = CEF * FHR + CFH * EFR | circuit FCEHR |
| 908 | plu | CFH * CPQ = CFP * CHQ + CFQ * CHP | circuit CFHPQ |
| 925 | plu | CHR * FHQ = CFH * HQR + CHQ * FHR | circuit HCFQR |
| 1139 | quad | BQR + ABR >= 93/125 | quadrilateral BQRA; occupants P, S |
| 1745 | support | AER * CER >= 1023/1000 * (AER - ACR) | pentagon RABCE |
| 2129 | support | FPQ * EFQ >= 1023/1000 * (FPQ - EFP) | pentagon FPCEQ |
| 2278 | bary | outer ACF; fans CFP, AFP, ACP; target EPS; sign 1; vertices AES 1; CES 1; EFS 1 | container ACF; inner P; line ES |
| 2400 | bary | outer ACS; fans CPS, APS, ACP; target FHP; sign 1; vertices AFH 1; CFH 1; FHS 1 | container ACS; inner P; line FH |
| 2422 | bary | outer AEF; fans EFP, AFP, AEP; target BCP; sign 1; vertices ABC 1; BCE 1; BCF 1 | container AEF; inner P; line BC |
| 2603 | bary | outer AER; fans ERS, ARS, AES; target FHS; sign 1; vertices AFH 1; EFH 1; FHR 1 | container AER; inner S; line FH |
| 2697 | bary | outer AHQ; fans HQS, AQS, AHS; target ACS; sign 1; vertices none 0; ACH 1; ACQ 1 | container AHQ; inner S; line AC |
| 2887 | bary | outer BEH; fans EHP, BHP, BEP; target FPS; sign -1; vertices BFS -1; EFS -1; FHS -1 | container BEH; inner P; line FS |
| 2899 | bary | outer BFQ; fans FPQ, BPQ, BFP; target AHP; sign -1; vertices ABH -1; AFH -1; AHQ -1 | container BFQ; inner P; line AH |
| 3120 | bary | outer CFH; fans FHP, CHP, CFP; target EPQ; sign 1; vertices CEQ 1; EFQ 1; EHQ 1 | container CFH; inner P; line EQ |
| 3129 | bary | outer CFH; fans FHP, CHP, CFP; target HPQ; sign -1; vertices CHQ -1; FHQ 1; none 0 | container CFH; inner P; line HQ |
| 3341 | bary | outer EFQ; fans FQS, EQS, EFS; target AHS; sign -1; vertices AEH -1; AFH -1; AHQ -1 | container EFQ; inner S; line AH |
| 3354 | bary | outer EFQ; fans FQS, EQS, EFS; target CHS; sign -1; vertices CEH -1; CFH -1; CHQ -1 | container EFQ; inner S; line CH |
| 3355 | bary | outer EFQ; fans FQS, EQS, EFS; target CPS; sign -1; vertices CEP -1; CFP -1; CPQ -1 | container EFQ; inner S; line CP |
| 3369 | bary | outer EFQ; fans FQS, EQS, EFS; target HPS; sign 1; vertices EHP 1; FHP 1; HPQ 1 | container EFQ; inner S; line HP |
| 3547 | bary | outer HPQ; fans PQS, HQS, HPS; target BQS; sign 1; vertices BHQ 1; BPQ 1; none 0 | container HPQ; inner S; line BQ |
| 3552 | bary | outer HPQ; fans PQS, HQS, HPS; target CQS; sign 1; vertices CHQ 1; CPQ 1; none 0 | container HPQ; inner S; line CQ |
| 3615 | four | 1 * ACP + 1 * APS + -1 * ACS + 1 * CPS = 0 | vertices ACPS |
| 3623 | four | 1 * AEH + -1 * AHP + -1 * AEP + -1 * EHP = 0 | vertices AEHP |
| 3627 | four | 1 * AEP + 1 * APQ + -1 * AEQ + 1 * EPQ = 0 | vertices AEPQ |
| 3629 | four | 1 * AEP + 1 * APS + -1 * AES + 1 * EPS = 0 | vertices AEPS |
| 3647 | four | -1 * AHQ + 1 * AQS + 1 * AHS + 1 * HQS = 0 | vertices AHQS |
| 3659 | four | 1 * BCF + -1 * BFP + -1 * BCP + -1 * CFP = 0 | vertices BCFP |
| 3671 | four | 1 * BEF + -1 * BFP + -1 * BEP + -1 * EFP = 0 | vertices BEFP |
| 3706 | four | 1 * CFH + -1 * CHP + -1 * CFP + -1 * FHP = 0 | vertices CFHP |
| 3714 | four | -1 * CFQ + 1 * CQS + 1 * CFS + 1 * FQS = 0 | vertices CFQS |
| 3748 | four | 1 * FPQ + -1 * FQS + -1 * FPS + -1 * PQS = 0 | vertices FPQS |
| 3751 | four | 1 * HPQ + -1 * HQS + -1 * HPS + -1 * PQS = 0 | vertices HPQS |

### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
| 337:243 | BCH | lo | 78711/500000 | 79193499000/503063784061 | 95 | 337:0, 337:110, 337:6, 337:80, 337:11 |
| 337:245 | BHP | lo | 122933/1000000 | 18947394213/154127767390 | 693 | 337:243, 337:212, 337:110, 337:144, 337:147 |
| 337:247 | BFS | lo | 67813/500000 | 453003/3340085 | 752 | 337:86, 337:208, 337:102, 337:170, 337:167 |
| 337:250 | HQR | lo | 3967/40000 | 88172903696/889062514035 | 797 | 337:110, 337:206, 337:118, 337:194, 337:103 |
| 337:252 | CEF | lo | 139387/1000000 | 53360040741/382817000000 | 827 | 337:124, 337:166, 337:128, 337:162, 337:175 |
| 337:254 | EFH | lo | 138859/1000000 | 2657894619/19140850000 | 833 | 337:252, 337:196, 337:134, 337:168, 337:141 |
| 337:256 | CPQ | lo | 150349/1000000 | 5829786375/38774777926 | 908 | 337:136, 337:146, 337:138, 337:144, 337:135 |
| 337:257 | FHQ | lo | 26289/250000 | 474091515/4508420444 | 925 | 337:134, 337:250, 337:146, 337:196, 337:149 |
| 337:259 | BQR | lo | 903/4000 | 28218847/125000000 | 1139 | 337:13 |
| 337:260 | ACR | lo | 327221/1000000 | 8998601551/27500000000 | 1745 | 337:38, 337:131 |
| 337:261 | EFP | lo | 24613/250000 | 9156076519/93000000000 | 2129 | 337:200, 337:167 |
| 337:269 | EPS | lo | 60999/500000 | 35442557332271/290515868347000 | 2278 | 337:19, 337:136, 337:44, 337:22, 337:40, 337:132, 337:170 |
| 337:271 | BCP | lo | 114783/1000000 | 101824119/887101000 | 2422 | 337:31, 337:261, 337:44, 337:34, 337:0, 337:72, 337:74 |
| 337:276 | FHS | lo | 97807/1000000 | 2169132/22177525 | 2603 | 337:39, 337:190, 337:70, 337:40, 337:42, 337:254, 337:196 |
| 337:280 | ACS | hi | 741191/1000000 | 315557871237159123/425744500000000000 | 2697 | 337:55, 337:220, 337:68, 337:58, 337:21, 337:25 |
| 337:284 | FPS | lo | 6123/62500 | 1087314873819/11098645283000 | 2887 | 337:89, 337:172, 337:245, 337:90, 337:247, 337:170, 337:276 |
| 337:285 | AHP | lo | 59531/500000 | 7056923787017/59270834269000 | 2899 | 337:103, 337:200, 337:116, 337:100, 337:6, 337:42, 337:54 |
| 337:291 | EPQ | lo | 154007/1000000 | 2985804079809/19387388963000 | 3120 | 337:135, 337:192, 337:144, 337:136, 337:128, 337:166, 337:174 |
| 337:295 | HPQ | hi | 631751/1000000 | 612399717280302694971/969369448150000000000 | 3129 | 337:135, 337:192, 337:144, 337:136, 337:147, 337:257 |
| 337:311 | AHS | lo | 19651/125000 | 26254551/167004250 | 3341 | 337:167, 337:208, 337:188, 337:170, 337:32, 337:42, 337:54 |
| 337:313 | CPS | lo | 103777/1000000 | 8665647/83502125 | 3355 | 337:167, 337:208, 337:188, 337:170, 337:126, 337:136, 337:256 |
| 337:314 | HPS | lo | 25483/200000 | 42558009/334008500 | 3369 | 337:167, 337:208, 337:188, 337:170, 337:172, 337:192, 337:212 |
| 337:319 | BQS | lo | 28921/250000 | 1461681/12635020 | 3547 | 337:295, 337:226, 337:220, 337:314, 337:110, 337:116 |
| 337:322 | CQS | lo | 124127/1000000 | 78417507/631751000 | 3552 | 337:295, 337:226, 337:220, 337:314, 337:146, 337:256 |
| 337:329 | ACS | lo | 289777/1000000 | 289777/1000000 | 3615 | 337:22, 337:64, 337:313 |
| 337:331 | AEH | lo | 152531/500000 | 152531/500000 | 3623 | 337:285, 337:34, 337:172 |
| 337:332 | AEQ | lo | 340007/1000000 | 340007/1000000 | 3627 | 337:34, 337:60, 337:291 |
| 337:333 | AES | lo | 153999/500000 | 153999/500000 | 3629 | 337:34, 337:64, 337:269 |
| 337:335 | AHQ | lo | 42901/125000 | 42901/125000 | 3647 | 337:68, 337:311, 337:220 |
| 337:336 | BCF | lo | 300783/1000000 | 300783/1000000 | 3659 | 337:100, 337:271, 337:136 |
| 337:337 | BEF | lo | 71113/250000 | 71113/250000 | 3671 | 337:100, 337:90, 337:261 |
| 337:339 | CFQ | lo | 310127/1000000 | 310127/1000000 | 3714 | 337:322, 337:142, 337:208 |
| 337:342 | FPQ | lo | 4437/15625 | 4437/15625 | 3748 | 337:208, 337:284, 337:226 |
| 337:343 | HPQ | lo | 62683/200000 | 62683/200000 | 3751 | 337:220, 337:314, 337:226 |
| 337:347 | BEQ | lo | 19067/125000 | 13423217/88000000 | 52 | 337:2, 337:128, 337:332, 337:72, 337:17 |
| 337:350 | AHR | lo | 113627/1000000 | 50399372731/443550500000 | 433 | 337:331, 337:48, 337:38, 337:42, 337:31 |
| 337:351 | AFR | lo | 59601/500000 | 99059014932/831016649425 | 437 | 337:38, 337:196, 337:350, 337:168, 337:177 |
| 337:353 | BHP | lo | 123029/1000000 | 3792448871/30825553478 | 693 | 337:243, 337:343, 337:110, 337:144, 337:147 |
| 337:355 | BFS | lo | 68029/500000 | 45444543/334008500 | 752 | 337:337, 337:208, 337:102, 337:170, 337:167 |
| 337:357 | HQR | lo | 12397/125000 | 5878267800/59270834269 | 797 | 337:110, 337:206, 337:259, 337:257, 337:103 |
| 337:358 | CEF | lo | 13951/100000 | 53406866241/382817000000 | 827 | 337:124, 337:166, 337:128, 337:254, 337:175 |
| 337:360 | EFH | lo | 69437/500000 | 1329090297/9570425000 | 833 | 337:358, 337:196, 337:134, 337:168, 337:141 |
| 337:363 | EFP | lo | 98537/1000000 | 525019857/5328125000 | 2129 | 337:342, 337:167 |
| 337:365 | EPS | lo | 122277/1000000 | 35523529332271/290515868347000 | 2278 | 337:19, 337:136, 337:44, 337:22, 337:333, 337:132, 337:170 |
| 337:367 | FHP | lo | 60187/500000 | 44610147/370595500 | 2400 | 337:280, 337:313, 337:64, 337:22, 337:42, 337:134, 337:276 |
| 337:369 | FHS | lo | 97809/1000000 | 3470667/35484040 | 2603 | 337:39, 337:190, 337:70, 337:333, 337:42, 337:360, 337:196 |
| 337:371 | FPS | lo | 98013/1000000 | 1087819398819/11098645283000 | 2887 | 337:89, 337:172, 337:353, 337:90, 337:355, 337:170, 337:369 |
| 337:372 | AHP | lo | 29793/250000 | 7063477187017/59270834269000 | 2899 | 337:103, 337:342, 337:116, 337:100, 337:6, 337:42, 337:335 |
| 337:392 | AHS | lo | 39339/250000 | 105116691/668017000 | 3341 | 337:167, 337:208, 337:188, 337:170, 337:331, 337:42, 337:335 |
| 337:393 | HPS | lo | 15937/125000 | 42584979/334008500 | 3369 | 337:167, 337:208, 337:188, 337:170, 337:172, 337:367, 337:343 |
| 337:402 | AEH | lo | 76293/250000 | 76293/250000 | 3623 | 337:372, 337:34, 337:172 |
| 337:403 | AES | lo | 308277/1000000 | 308277/1000000 | 3629 | 337:34, 337:64, 337:365 |
| 337:405 | AHQ | lo | 85839/250000 | 85839/250000 | 3647 | 337:68, 337:392, 337:220 |
| 337:406 | BEF | lo | 284537/1000000 | 284537/1000000 | 3671 | 337:100, 337:90, 337:363 |
| 337:408 | CFH | lo | 153187/500000 | 153187/500000 | 3706 | 337:144, 337:136, 337:367 |
| 337:410 | FPQ | lo | 284013/1000000 | 284013/1000000 | 3748 | 337:208, 337:371, 337:226 |
| 337:411 | HPQ | lo | 39187/125000 | 39187/125000 | 3751 | 337:220, 337:393, 337:226 |
| 337:415 | BCQ | lo | 9959/62500 | 3505573/22000000 | 50 | 337:0, 337:347, 337:10, 337:72, 337:3 |
| 337:417 | BCH | lo | 78771/500000 | 79254042000/503063784061 | 95 | 337:0, 337:110, 337:6, 337:415, 337:11 |
| 337:418 | AHR | lo | 56821/500000 | 12601520343/110887625000 | 433 | 337:402, 337:351, 337:38, 337:42, 337:31 |
| 337:419 | AFR | lo | 119207/1000000 | 99063585672/831016649425 | 437 | 337:38, 337:196, 337:418, 337:168, 337:177 |
| 337:421 | BHP | lo | 123083/1000000 | 9485319736/77063883695 | 693 | 337:417, 337:411, 337:110, 337:144, 337:147 |
| 337:423 | BFS | lo | 136069/1000000 | 90896991/668017000 | 752 | 337:406, 337:208, 337:102, 337:170, 337:167 |
| 337:424 | CEF | lo | 139511/1000000 | 53407563741/382817000000 | 827 | 337:124, 337:166, 337:128, 337:360, 337:175 |
| 337:426 | EFH | lo | 434/3125 | 1661430981/11963031250 | 833 | 337:424, 337:196, 337:408, 337:168, 337:141 |
| 337:427 | FHQ | lo | 52579/500000 | 2963124932/28177627775 | 925 | 337:408, 337:357, 337:146, 337:196, 337:149 |
| 337:428 | EFP | lo | 98553/1000000 | 33606595593/341000000000 | 2129 | 337:410, 337:167 |
| 337:430 | EPS | lo | 122307/1000000 | 35532178332271/290515868347000 | 2278 | 337:19, 337:136, 337:44, 337:22, 337:403, 337:132, 337:170 |
| 337:432 | FHP | lo | 15047/125000 | 44610891/370595500 | 2400 | 337:280, 337:313, 337:64, 337:22, 337:42, 337:408, 337:369 |
| 337:436 | FPS | lo | 49007/500000 | 1087832186319/11098645283000 | 2887 | 337:89, 337:172, 337:421, 337:90, 337:423, 337:170, 337:369 |
| 337:437 | AHP | lo | 29797/250000 | 7064394787017/59270834269000 | 2899 | 337:103, 337:410, 337:116, 337:100, 337:6, 337:42, 337:405 |
| 337:450 | AHS | lo | 9837/62500 | 21028137/133603400 | 3341 | 337:167, 337:208, 337:188, 337:170, 337:402, 337:42, 337:405 |
| 337:451 | CHS | lo | 70981/200000 | 118541364061/334008500000 | 3354 | 337:167, 337:208, 337:188, 337:170, 337:124, 337:408, 337:146 |
| 337:452 | HPS | lo | 31877/250000 | 85177677/668017000 | 3369 | 337:167, 337:208, 337:188, 337:170, 337:172, 337:432, 337:411 |
| 337:460 | AEH | lo | 76297/250000 | 76297/250000 | 3623 | 337:437, 337:34, 337:172 |
| 337:461 | AES | lo | 308307/1000000 | 308307/1000000 | 3629 | 337:34, 337:64, 337:430 |
| 337:463 | AHQ | lo | 10731/31250 | 10731/31250 | 3647 | 337:68, 337:450, 337:220 |
| 337:464 | BEF | lo | 284553/1000000 | 284553/1000000 | 3671 | 337:100, 337:90, 337:428 |
| 337:466 | CFH | lo | 38297/125000 | 38297/125000 | 3706 | 337:144, 337:136, 337:432 |
| 337:469 | FPQ | lo | 142007/500000 | 142007/500000 | 3748 | 337:208, 337:436, 337:226 |
| 337:470 | HPQ | lo | 78377/250000 | 78377/250000 | 3751 | 337:220, 337:452, 337:226 |
| 337:475 | AHR | lo | 56823/500000 | 25203898979/221775250000 | 433 | 337:460, 337:419, 337:38, 337:42, 337:31 |
| 337:476 | AFR | lo | 119209/1000000 | 99064804536/831016649425 | 437 | 337:38, 337:196, 337:475, 337:168, 337:177 |
| 337:478 | BHP | lo | 24617/200000 | 9485477278/77063883695 | 693 | 337:417, 337:470, 337:110, 337:144, 337:147 |
| 337:480 | BFS | lo | 17009/125000 | 1855071/13633000 | 752 | 337:464, 337:208, 337:102, 337:170, 337:167 |
| 337:481 | CEF | lo | 17439/125000 | 53407842741/382817000000 | 827 | 337:124, 337:166, 337:128, 337:426, 337:175 |
| 337:482 | CFR | lo | 175757/1000000 | 106332285216/604994874325 | 833 | 337:481, 337:196, 337:466, 337:168, 337:163 |
| 337:484 | EPS | lo | 12231/100000 | 35533108332271/290515868347000 | 2278 | 337:19, 337:136, 337:44, 337:22, 337:461, 337:132, 337:170 |
| 337:488 | FPS | lo | 19603/200000 | 1087835673819/11098645283000 | 2887 | 337:89, 337:172, 337:478, 337:90, 337:480, 337:170, 337:369 |
| 337:489 | AHP | lo | 14899/125000 | 7064617987017/59270834269000 | 2899 | 337:103, 337:469, 337:116, 337:100, 337:6, 337:42, 337:463 |
| 337:503 | AHS | lo | 157399/1000000 | 105145521/668017000 | 3341 | 337:167, 337:208, 337:188, 337:170, 337:460, 337:42, 337:463 |
| 337:504 | HPS | lo | 127509/1000000 | 12168399/95431000 | 3369 | 337:167, 337:208, 337:188, 337:170, 337:172, 337:432, 337:470 |
| 337:509 | AEH | lo | 38149/125000 | 38149/125000 | 3623 | 337:489, 337:34, 337:172 |
| 337:510 | AES | lo | 30831/100000 | 30831/100000 | 3629 | 337:34, 337:64, 337:484 |
| 337:512 | AHQ | lo | 343399/1000000 | 343399/1000000 | 3647 | 337:68, 337:503, 337:220 |
| 337:515 | FPQ | lo | 56803/200000 | 56803/200000 | 3748 | 337:208, 337:488, 337:226 |
| 337:516 | HPQ | lo | 313509/1000000 | 313509/1000000 | 3751 | 337:220, 337:504, 337:226 |
| 337:527 | AHS | lo | 157401/1000000 | 13143318/83502125 | 3341 | 337:167, 337:208, 337:188, 337:170, 337:509, 337:42, 337:512 |
| 337:528 | HPS | lo | 12751/100000 | 42589443/334008500 | 3369 | 337:167, 337:208, 337:188, 337:170, 337:172, 337:432, 337:516 |
| 337:530 | AHQ | lo | 343401/1000000 | 343401/1000000 | 3647 | 337:68, 337:527, 337:220 |
| 337:532 | HPQ | lo | 31351/100000 | 31351/100000 | 3751 | 337:220, 337:528, 337:226 |
| 337:535 | AHP | lo | 119193/1000000 | 7064673787017/59270834269000 | 2899 | 337:103, 337:515, 337:116, 337:100, 337:6, 337:42, 337:530 |
| 337:542 | AEH | lo | 305193/1000000 | 305193/1000000 | 3623 | 337:535, 337:34, 337:172 |

## Stage 338

| Property | Value |
| --- | --- |
| Scope | root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Packet | forest:root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Index | 5 |
| Context | 78 |
| Box present | yes |
| Parent box | 337 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112899/1000000 | 33/125 | 112899/1000000 | 33/125 |
| b | 5461/50000 | 389017/1000000 | 5461/50000 | 389017/1000000 |
| c | 115373/250000 | 466479/500000 | 115373/250000 | 466479/500000 |
| e | 112899/1000000 | 33/125 | 112899/1000000 | 33/125 |
| f | 112899/1000000 | 389017/1000000 | 112899/1000000 | 389017/1000000 |
| h | 17957/31250 | 241097/250000 | 17957/31250 | 241097/250000 |
| p | 202977/1000000 | 363981/500000 | 202977/1000000 | 363981/500000 |
| q | 205899/1000000 | 634113/1000000 | 205899/1000000 | 158363/250000 |
| u | 803787/1000000 | 1/1 | 803787/1000000 | 1/1 |
| v | 93367/200000 | 878533/1000000 | 93367/200000 | 878533/1000000 |
| r | 91279/200000 | 878533/1000000 | 91279/200000 | 878533/1000000 |
| w | 805749/1000000 | 1/1 | 805749/1000000 | 1/1 |
| j | 189437/500000 | 853349/1000000 | 189437/500000 | 852949/1000000 |
| k | 83657/200000 | 41943/50000 | 421209/1000000 | 41943/50000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |
| 184 | AREA_lo_AES | earlier 337:510; AES; lo; 30831/100000 | `1/1 * k + -1/1 * a + -1/1 * e * j + 1/1 * a * j + -30831/100000` |
| 326 | AREA_lo_HPQ | earlier 337:532; HPQ; lo; 31351/100000 | `1/1 * p * v + -1/1 * h * p + -1/1 * q * u + 1/1 * h * u + -31351/100000` |
| 111 | A_ERS | actual ERS; occupants none | `1/1 * r * k + -1/1 * e * r + -1/1 * k + -1/1 * w * j + 1/1 * w + 1/1 * e * j + -93/1000` |

### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 184 | k | 83657/200000 | 41943/50000 | 421209/1000000 | 41943/50000 | 421209/1000000 | 41943/50000 | `(1/1, -421209/1000000); (1/1, -257530879863/500000000000); (1/1, -239228620137/500000000000); (1/1, -57231/100000); (1/1, -443368112751/1000000000000); (1/1, -550150887249/1000000000000)` |
| 1 | 326 | q | 205899/1000000 | 634113/1000000 | 205899/1000000 | 126690281933/200000000000 | 205899/1000000 | 158363/250000 | `(-803787/1000000, 25297322647/200000000000); (-803787/1000000, 14426428883/40000000000); (-803787/1000000, 6989900507/100000000000); (-803787/1000000, 9945286037/100000000000); (-1/1, 239235312147/1000000000000); (-1/1, 549886184719/1000000000000); (-1/1, 91323851991/500000000000); (-1/1, 144339161507/500000000000); (-803787/1000000, 210051838181/1000000000000); (-803787/1000000, 444225947021/1000000000000); (-803787/1000000, 184799752273/500000000000); (-803787/1000000, 199576679923/500000000000); (-1/1, 322800537093/1000000000000); (-1/1, 126690281933/200000000000); (-1/1, 241174101729/500000000000); (-1/1, 58837882249/100000000000)` |
| 2 | 111 | j | 189437/500000 | 853349/1000000 | 189437/500000 | 75665150923/88710100000 | 189437/500000 | 852949/1000000 | `(-13857/20000, 8645022849/20000000000); (-541749/1000000, 72657880311/200000000000); (-13857/20000, 56240050923/100000000000); (-541749/1000000, 429653294397/1000000000000); (-887101/1000000, 12530042849/20000000000); (-92/125, 111508080311/200000000000); (-887101/1000000, 75665150923/100000000000); (-92/125, 623904294397/1000000000000); (-13857/20000, 41042794119/200000000000); (-541749/1000000, 1362522297/10000000000); (-13857/20000, 511669695213/1000000000000); (-541749/1000000, 18946124019/50000000000); (-887101/1000000, 79892994119/200000000000); (-92/125, 3305032297/10000000000); (-887101/1000000, 705920695213/1000000000000); (-92/125, 28658674019/50000000000)` |

### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 338:8 | ABP | lo | 28449/250000 | earlier 337:8; ABP; lo; 28449/250000 |
| 338:10 | ABQ | lo | 74949/250000 | earlier 337:10; ABQ; lo; 74949/250000 |
| 338:26 | ACR | lo | 327221/1000000 | earlier 337:260; ACR; lo; 327221/1000000 |
| 338:28 | ACS | lo | 289777/1000000 | earlier 337:329; ACS; lo; 289777/1000000 |
| 338:32 | AEH | lo | 305193/1000000 | earlier 337:542; AEH; lo; 305193/1000000 |
| 338:36 | AEQ | lo | 340007/1000000 | earlier 337:332; AEQ; lo; 340007/1000000 |
| 338:40 | AES | lo | 30831/100000 | earlier 337:510; AES; lo; 30831/100000 |
| 338:44 | AFP | lo | 165881/1000000 | earlier 337:44; AFP; lo; 165881/1000000 |
| 338:46 | AFQ | lo | 439167/1000000 | earlier 337:46; AFQ; lo; 439167/1000000 |
| 338:48 | AFR | lo | 119209/1000000 | earlier 337:476; AFR; lo; 119209/1000000 |
| 338:54 | AHQ | lo | 343401/1000000 | earlier 337:530; AHQ; lo; 343401/1000000 |
| 338:74 | BCF | lo | 300783/1000000 | earlier 337:336; BCF; lo; 300783/1000000 |
| 338:78 | BCP | lo | 114783/1000000 | earlier 337:271; BCP; lo; 114783/1000000 |
| 338:80 | BCQ | lo | 9959/62500 | earlier 337:415; BCQ; lo; 9959/62500 |
| 338:92 | BEQ | lo | 19067/125000 | earlier 337:347; BEQ; lo; 19067/125000 |
| 338:106 | BFS | lo | 17009/125000 | earlier 337:480; BFS; lo; 17009/125000 |
| 338:118 | BQR | lo | 903/4000 | earlier 337:259; BQR; lo; 903/4000 |
| 338:120 | BQS | lo | 28921/250000 | earlier 337:319; BQS; lo; 28921/250000 |
| 338:124 | CEH | lo | 149533/500000 | earlier 337:124; CEH; lo; 149533/500000 |
| 338:132 | CES | lo | 7893/62500 | earlier 337:132; CES; lo; 7893/62500 |
| 338:134 | CFH | lo | 38297/125000 | earlier 337:466; CFH; lo; 38297/125000 |
| 338:138 | CFQ | lo | 310127/1000000 | earlier 337:339; CFQ; lo; 310127/1000000 |
| 338:140 | CFR | lo | 175757/1000000 | earlier 337:482; CFR; lo; 175757/1000000 |
| 338:150 | CHS | lo | 70981/200000 | earlier 337:451; CHS; lo; 70981/200000 |
| 338:156 | CPS | lo | 103777/1000000 | earlier 337:313; CPS; lo; 103777/1000000 |
| 338:160 | CQS | lo | 124127/1000000 | earlier 337:322; CQS; lo; 124127/1000000 |
| 338:166 | EFQ | lo | 313977/1000000 | earlier 337:166; EFQ; lo; 313977/1000000 |
| 338:167 | EFQ | hi | 668017/1000000 | earlier 337:167; EFQ; hi; 668017/1000000 |
| 338:168 | EFR | lo | 76179/250000 | earlier 337:168; EFR; lo; 76179/250000 |
| 338:169 | EFR | hi | 40683/62500 | earlier 337:169; EFR; hi; 40683/62500 |
| 338:194 | FHQ | lo | 52579/500000 | earlier 337:427; FHQ; lo; 52579/500000 |
| 338:200 | FPQ | lo | 56803/200000 | earlier 337:515; FPQ; lo; 56803/200000 |
| 338:210 | FRS | lo | 29679/250000 | earlier 337:210; FRS; lo; 29679/250000 |
| 338:212 | HPQ | lo | 31351/100000 | earlier 337:532; HPQ; lo; 31351/100000 |
| 338:213 | HPQ | hi | 631751/1000000 | earlier 337:295; HPQ; hi; 631751/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |


## Stage 339

| Property | Value |
| --- | --- |
| Scope | root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Packet | forest:root/EHP+/AFP-/APQ+/AQS+/ARS-/HQS-/BPQ-/BFP-/CFP+ |
| Index | 6 |
| Context | 78 |
| Box present | yes |
| Parent box | 338 |
| Coordinate cut | none |

### Coordinate box

| Coordinate | Initial lower | Initial upper | Final lower | Final upper |
| --- | --- | --- | --- | --- |
| a | 112899/1000000 | 33/125 | 112899/1000000 | 33/125 |
| b | 5461/50000 | 389017/1000000 | 5461/50000 | 389017/1000000 |
| c | 115373/250000 | 466479/500000 | 115373/250000 | 466479/500000 |
| e | 112899/1000000 | 33/125 | 112899/1000000 | 33/125 |
| f | 112899/1000000 | 389017/1000000 | 112899/1000000 | 389017/1000000 |
| h | 17957/31250 | 241097/250000 | 17957/31250 | 241097/250000 |
| p | 202977/1000000 | 363981/500000 | 202977/1000000 | 363981/500000 |
| q | 205899/1000000 | 158363/250000 | 205899/1000000 | 158363/250000 |
| u | 803787/1000000 | 1/1 | 803787/1000000 | 1/1 |
| v | 93367/200000 | 878533/1000000 | 93367/200000 | 878533/1000000 |
| r | 91279/200000 | 878533/1000000 | 91279/200000 | 878533/1000000 |
| w | 805749/1000000 | 1/1 | 805749/1000000 | 1/1 |
| j | 189437/500000 | 852949/1000000 | 189437/500000 | 852949/1000000 |
| k | 421209/1000000 | 41943/50000 | 421209/1000000 | 41943/50000 |

### Physical factors

| Factor | Name | Nonnegativity premise | Polynomial |
| --- | --- | --- | --- |


### Exact coordinate updates

| Step | Factor | Target | Old lower | Old upper | Exact lower | Exact upper | Rounded lower | Rounded upper | All distinct endpoint lines (slope, intercept) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


### Initial area bounds

| Bound | Triangle | Direction | Value | Justification |
| --- | --- | --- | --- | --- |
| 339:8 | ABP | lo | 28449/250000 | earlier 338:8; ABP; lo; 28449/250000 |
| 339:10 | ABQ | lo | 74949/250000 | earlier 338:10; ABQ; lo; 74949/250000 |
| 339:26 | ACR | lo | 327221/1000000 | earlier 338:26; ACR; lo; 327221/1000000 |
| 339:28 | ACS | lo | 289777/1000000 | earlier 338:28; ACS; lo; 289777/1000000 |
| 339:32 | AEH | lo | 305193/1000000 | earlier 338:32; AEH; lo; 305193/1000000 |
| 339:36 | AEQ | lo | 340007/1000000 | earlier 338:36; AEQ; lo; 340007/1000000 |
| 339:40 | AES | lo | 30831/100000 | earlier 338:40; AES; lo; 30831/100000 |
| 339:44 | AFP | lo | 165881/1000000 | earlier 338:44; AFP; lo; 165881/1000000 |
| 339:46 | AFQ | lo | 439167/1000000 | earlier 338:46; AFQ; lo; 439167/1000000 |
| 339:48 | AFR | lo | 119209/1000000 | earlier 338:48; AFR; lo; 119209/1000000 |
| 339:54 | AHQ | lo | 343401/1000000 | earlier 338:54; AHQ; lo; 343401/1000000 |
| 339:74 | BCF | lo | 300783/1000000 | earlier 338:74; BCF; lo; 300783/1000000 |
| 339:78 | BCP | lo | 114783/1000000 | earlier 338:78; BCP; lo; 114783/1000000 |
| 339:80 | BCQ | lo | 9959/62500 | earlier 338:80; BCQ; lo; 9959/62500 |
| 339:92 | BEQ | lo | 19067/125000 | earlier 338:92; BEQ; lo; 19067/125000 |
| 339:106 | BFS | lo | 17009/125000 | earlier 338:106; BFS; lo; 17009/125000 |
| 339:118 | BQR | lo | 903/4000 | earlier 338:118; BQR; lo; 903/4000 |
| 339:120 | BQS | lo | 28921/250000 | earlier 338:120; BQS; lo; 28921/250000 |
| 339:124 | CEH | lo | 149533/500000 | earlier 338:124; CEH; lo; 149533/500000 |
| 339:132 | CES | lo | 7893/62500 | earlier 338:132; CES; lo; 7893/62500 |
| 339:134 | CFH | lo | 38297/125000 | earlier 338:134; CFH; lo; 38297/125000 |
| 339:138 | CFQ | lo | 310127/1000000 | earlier 338:138; CFQ; lo; 310127/1000000 |
| 339:140 | CFR | lo | 175757/1000000 | earlier 338:140; CFR; lo; 175757/1000000 |
| 339:150 | CHS | lo | 70981/200000 | earlier 338:150; CHS; lo; 70981/200000 |
| 339:156 | CPS | lo | 103777/1000000 | earlier 338:156; CPS; lo; 103777/1000000 |
| 339:160 | CQS | lo | 124127/1000000 | earlier 338:160; CQS; lo; 124127/1000000 |
| 339:166 | EFQ | lo | 313977/1000000 | earlier 338:166; EFQ; lo; 313977/1000000 |
| 339:167 | EFQ | hi | 668017/1000000 | earlier 338:167; EFQ; hi; 668017/1000000 |
| 339:168 | EFR | lo | 76179/250000 | earlier 338:168; EFR; lo; 76179/250000 |
| 339:169 | EFR | hi | 40683/62500 | earlier 338:169; EFR; hi; 40683/62500 |
| 339:194 | FHQ | lo | 52579/500000 | earlier 338:194; FHQ; lo; 52579/500000 |
| 339:200 | FPQ | lo | 56803/200000 | earlier 338:200; FPQ; lo; 56803/200000 |
| 339:210 | FRS | lo | 29679/250000 | earlier 338:210; FRS; lo; 29679/250000 |
| 339:212 | HPQ | lo | 31351/100000 | earlier 338:212; HPQ; lo; 31351/100000 |
| 339:213 | HPQ | hi | 631751/1000000 | earlier 338:213; HPQ; hi; 631751/1000000 |

### Scalar relations

| Relation | Kind | Exact relation | Geometric witness |
| --- | --- | --- | --- |


### Exact area updates

| Bound | Triangle | Direction | Rounded value | Exact value | Relation | Earlier bound references |
| --- | --- | --- | --- | --- | --- | --- |
