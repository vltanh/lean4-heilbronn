# N6 BIRR: every exact scalar-area chain

These are the complete scalar leaves of [N6_BIRR.md](N6_BIRR.md).
Each bound has an actual occupant or literal cap witness. Every
update cites immutable earlier sources. Lower bounds round down and
upper bounds round up to multiples of 10^-6. The exact rules and
positive denominators are proved in the main manuscript.

## Leaf A001

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BFH | BFH | lo | 93/1000 | cost: |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHR | BHR | lo | 347/500 | cost:PS |
| lo_BPR | BPR | lo | 279/1000 | cost:S |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFH | CFH | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:S |
| lo_CPR | CPR | lo | 279/1000 | cost:S |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 279/1000 | cost:Q |
| lo_EHS | EHS | lo | 279/1000 | cost:Q |
| lo_FHP | FHP | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPS | HPS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BPR | BPR | hi | 1614143075756399/2526093666250000 | C009 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_CPR | CPR | hi | 66213614666233493/146644594250000000 | C002 |
| hi_HRS | HRS | hi | 82452851856455649001/413089442311150000000 | C012 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R1 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R2 | fan | ["BHR","BHS","BRS","HRS"] | ["fan","BHR","S"] |
| R3 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R4 | fan | ["CHR","CHS","CRS","HRS"] | ["fan","CHR","S"] |
| R5 | fan | ["CPR","CPS","CRS","PRS"] | ["fan","CPR","S"] |
| R6 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R7 | plu | ["BCF","CHR","BCH","CFR","BCR","CFH"] | ["plu","CBFHR"] |
| R8 | plu | ["CEH","CFP","CEF","CHP","CEP","CFH"] | ["plu","CEFHP"] |
| R9 | plu | ["CEH","CFR","CEF","CHR","CER","CFH"] | ["plu","CEFHR"] |
| R10 | plu | ["CEP","CFR","CEF","CPR","CER","CFP"] | ["plu","CEFPR"] |
| R11 | plu | ["CEP","CHR","CEH","CPR","CER","CHP"] | ["plu","CEHPR"] |
| R12 | plu | ["CFP","CHR","CFH","CPR","CFR","CHP"] | ["plu","CFHPR"] |
| R13 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R14 | plu | ["BEF","EHR","BEH","EFR","BER","EFH"] | ["plu","EBFHR"] |
| R15 | plu | ["CEF","EPR","CEP","EFR","CER","EFP"] | ["plu","ECFPR"] |
| R16 | plu | ["EFP","EHR","EFH","EPR","EFR","EHP"] | ["plu","EFHPR"] |
| R17 | plu | ["BFR","CEF","BCF","EFR","BEF","CFR"] | ["plu","FBCER"] |
| R18 | plu | ["CFH","EFP","CEF","FHP","CFP","EFH"] | ["plu","FCEHP"] |
| R19 | plu | ["CEF","FHR","CFH","EFR","CFR","EFH"] | ["plu","FCEHR"] |
| R20 | plu | ["CFH","FPR","CFP","FHR","CFR","FHP"] | ["plu","FCHPR"] |
| R21 | plu | ["BCH","EHP","BEH","CHP","BHP","CEH"] | ["plu","HBCEP"] |
| R22 | plu | ["BCH","HPR","BHP","CHR","BHR","CHP"] | ["plu","HBCPR"] |
| R23 | plu | ["BEH","FHR","BFH","EHR","BHR","EFH"] | ["plu","HBEFR"] |
| R24 | plu | ["CEH","FHR","CFH","EHR","CHR","EFH"] | ["plu","HCEFR"] |
| R25 | plu | ["CFH","HPR","CHP","FHR","CHR","FHP"] | ["plu","HCFPR"] |
| R26 | plu | ["BCP","HPR","BHP","CPR","BPR","CHP"] | ["plu","PBCHR"] |
| R27 | plu | ["CEP","FPR","CFP","EPR","CPR","EFP"] | ["plu","PCEFR"] |
| R28 | plu | ["CFP","HPR","CHP","FPR","CPR","FHP"] | ["plu","PCFHR"] |
| R29 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R30 | plu | ["BFR","CHR","BCR","FHR","BHR","CFR"] | ["plu","RBCFH"] |
| R31 | plu | ["BFR","EPR","BER","FPR","BPR","EFR"] | ["plu","RBEFP"] |
| R32 | plu | ["BHR","FPR","BFR","HPR","BPR","FHR"] | ["plu","RBFHP"] |
| R33 | plu | ["BPR","HRS","BHR","PRS","BRS","HPR"] | ["plu","RBHPS"] |
| R34 | plu | ["CFR","EHR","CER","FHR","CHR","EFR"] | ["plu","RCEFH"] |
| R35 | plu | ["CFR","EPR","CER","FPR","CPR","EFR"] | ["plu","RCEFP"] |
| R36 | plu | ["CHR","EPR","CER","HPR","CPR","EHR"] | ["plu","RCEHP"] |
| R37 | plu | ["CHR","ERS","CER","HRS","CRS","EHR"] | ["plu","RCEHS"] |
| R38 | plu | ["CPR","ERS","CER","PRS","CRS","EPR"] | ["plu","RCEPS"] |
| R39 | plu | ["CHR","FPR","CFR","HPR","CPR","FHR"] | ["plu","RCFHP"] |
| R40 | plu | ["CPR","HRS","CHR","PRS","CRS","HPR"] | ["plu","RCHPS"] |
| R41 | plu | ["EHR","FPR","EFR","HPR","EPR","FHR"] | ["plu","REFHP"] |
| R42 | plu | ["EHR","FRS","EFR","HRS","ERS","FHR"] | ["plu","REFHS"] |
| R43 | plu | ["EPR","FRS","EFR","PRS","ERS","FPR"] | ["plu","REFPS"] |
| R44 | plu | ["EPR","HRS","EHR","PRS","ERS","HPR"] | ["plu","REHPS"] |
| R45 | plu | ["BPS","HRS","BHS","PRS","BRS","HPS"] | ["plu","SBHPR"] |
| R46 | plu | ["CFS","ERS","CES","FRS","CRS","EFS"] | ["plu","SCEFR"] |
| R47 | plu | ["CHS","ERS","CES","HRS","CRS","EHS"] | ["plu","SCEHR"] |
| R48 | plu | ["CPS","ERS","CES","PRS","CRS","EPS"] | ["plu","SCEPR"] |
| R49 | plu | ["CPS","FRS","CFS","PRS","CRS","FPS"] | ["plu","SCFPR"] |
| R50 | plu | ["CPS","HRS","CHS","PRS","CRS","HPS"] | ["plu","SCHPR"] |
| R51 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R52 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R53 | linear | [{"BHP":-1,"BPS":-1,"BHS":1,"HPS":-1},"0"] | ["affine_quad","BHPS",1] |
| R54 | linear | [{"BHR":1,"BRS":-1,"BHS":-1,"HRS":-1},"0"] | ["affine_quad","BHRS",-1] |
| R55 | linear | [{"BPR":1,"BRS":-1,"BPS":-1,"PRS":-1},"0"] | ["affine_quad","BPRS",-1] |
| R56 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R57 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R58 | linear | [{"CEH":-1,"CHS":1,"CES":-1,"EHS":1},"0"] | ["affine_quad","CEHS",-1] |
| R59 | linear | [{"CEP":1,"CPR":-1,"CER":1,"EPR":-1},"0"] | ["affine_quad","CEPR",1] |
| R60 | linear | [{"CEP":-1,"CPS":1,"CES":-1,"EPS":1},"0"] | ["affine_quad","CEPS",-1] |
| R61 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R62 | linear | [{"CFP":-1,"CPS":1,"CFS":-1,"FPS":1},"0"] | ["affine_quad","CFPS",-1] |
| R63 | linear | [{"CHR":1,"CRS":-1,"CHS":-1,"HRS":-1},"0"] | ["affine_quad","CHRS",-1] |
| R64 | linear | [{"CPR":1,"CRS":-1,"CPS":-1,"PRS":-1},"0"] | ["affine_quad","CPRS",-1] |
| R65 | linear | [{"EFR":-1,"ERS":1,"EFS":1,"FRS":-1},"0"] | ["affine_quad","EFRS",-1] |
| R66 | linear | [{"EHR":-1,"ERS":1,"EHS":1,"HRS":-1},"0"] | ["affine_quad","EHRS",-1] |
| R67 | linear | [{"EPR":-1,"ERS":1,"EPS":1,"PRS":-1},"0"] | ["affine_quad","EPRS",-1] |
| R68 | linear | [{"HPR":-1,"HRS":1,"HPS":1,"PRS":-1},"0"] | ["affine_quad","HPRS",-1] |
| R69 | quad | ["CEH","CER","93/125"] | ["quad","CREH","QS"] |
| R70 | quad | ["EHS","ERS","449/1000"] | ["quad","EHSR","Q"] |
| R71 | linear | [{"EFR":1,"CER":-1},"0"] | ["right_compare","R","EF"] |
| R72 | linear | [{"EHR":1,"CER":-1},"0"] | ["right_compare","R","EH"] |
| R73 | bary | [["BHS",-1],[["BCH",-1],["BEH",-1],["BHR",-1]],11,[3,3,3]] | ["side_pair_weights","BH","S","CER","3/11"] |
| R74 | bary | [["FRS",-1],[["CFR",-1],["EFR",1],null],11,[3,3,3]] | ["side_pair_weights","FR","S","CER","3/11"] |
| R75 | linear | [{"FRS":-11,"CFR":5,"EFR":-3},"0"] | ["barycentric","FR","S","CER","lower"] |
| R76 | bary | [["HPS",1],[["CHP",1],["EHP",1],["HPR",1]],11,[3,3,3]] | ["side_pair_weights","HP","S","CER","3/11"] |
| R77 | linear | [{"HRS":-11,"CHR":5,"EHR":-3},"0"] | ["barycentric","HR","S","CER","lower"] |
| R78 | linear | [{"CHS":5,"EHS":-3,"HRS":-3},"0"] | ["barycentric","HS","S","CER","lower"] |
| R79 | linear | [{"CPS":5,"EPS":-3,"PRS":-3},"0"] | ["barycentric","PS","S","CER","lower"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s4 | R0 | sub | hi | BCP | 3263/10000 | hi_BCH,lo_BHP,lo_CHP |
| s11 | R1 | sub | hi | HPR | 111037/200000 | hi_BHR,lo_BHP,lo_BPR |
| s22 | R3 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s25 | R5 | sub | hi | CPS | 10621/40000 | hi_CPR,lo_CRS,lo_PRS |
| s45 | R6 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s55 | R13 | sumlo | lo | CEH | 369673/1000000 | s45,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s62 | R21 | sumlo | lo | EHP | 193093/1000000 | lo_BEH,lo_CHP,lo_BHP,s55,hi_BCH |
| s64 | R22 | sumlo | lo | HPR | 22079/125000 | lo_BHP,lo_CHR,lo_BHR,lo_CHP,hi_BCH |
| s66 | R26 | sumlo | lo | BCP | 93471/1000000 | lo_BHP,lo_CPR,lo_BPR,lo_CHP,s11 |
| s79 | R33 | sumlo | lo | BPR | 202827/500000 | lo_BHR,lo_PRS,lo_BRS,s64,hi_HRS |
| s80 | R33 | sumlo | lo | HRS | 63357/500000 | lo_BHR,lo_PRS,lo_BRS,s64,hi_BPR |
| s82 | R36 | sumlo | lo | EPR | 205227/1000000 | lo_CER,s64,lo_CPR,lo_EHR,hi_CHR |
| s87 | R38 | sumlo | lo | ERS | 19947/200000 | lo_CER,lo_PRS,lo_CRS,s82,hi_CPR |
| s94 | R44 | sumlo | lo | EPR | 54563/250000 | lo_EHR,lo_PRS,s87,s64,hi_HRS |
| s105 | R47 | sumlo | lo | CHS | 257973/1000000 | lo_CES,s80,lo_CRS,lo_EHS,s22 |
| s107 | R48 | diffhi | hi | EPS | 324591/1000000 | s25,s22,lo_CES,lo_PRS,lo_CRS |
| s111 | R50 | sumlo | lo | CPS | 163529/1000000 | s105,lo_PRS,lo_CRS,lo_HPS,hi_HRS |
| s112 | R50 | diffhi | hi | HPS | 77977/250000 | s25,hi_HRS,s105,lo_PRS,lo_CRS |
| s117 | R51 | linear | lo | BCH | 279471/1000000 | s66,lo_BHP,lo_CHP |
| s131 | R60 | linear | hi | CEP | 124279/250000 | lo_CES,s25,s107 |
| s133 | R61 | linear | lo | CER | 57147/200000 | lo_CES,lo_CRS,s87 |
| s137 | R63 | linear | lo | CHR | 477687/1000000 | s105,lo_CRS,s80 |
| s138 | R63 | linear | hi | CHS | 79941/200000 | hi_CHR,lo_CRS,s80 |
| s140 | R64 | linear | lo | CPR | 349529/1000000 | s111,lo_CRS,lo_PRS |
| s152 | R67 | linear | hi | EPR | 94463/250000 | s107,s22,lo_PRS |
| s155 | R68 | linear | hi | HPR | 418509/1000000 | s112,hi_HRS,lo_PRS |
| s159 | R69 | quad | lo | CEH | 411739/1000000 | hi_CER |
| s161 | R70 | quad | lo | EHS | 302739/1000000 | s22 |
| s162 | R71 | linear | lo | EFR | 57147/200000 | s133 |
| s163 | R72 | linear | lo | EHR | 57147/200000 | s133 |
| s175 | R73 | bary_hi | lo | BHS | 505577/1000000 | s117,lo_BEH,lo_BHR |
| s182 | R74 | bary_lo | hi | FRS | 47397/250000 | hi_CFR,s162 |
| s183 | R75 | linear | lo | CFR | 376041/1000000 | s162,lo_FRS |
| s185 | R76 | bary_lo | lo | HPS | 71553/500000 | lo_CHP,s62,s64 |
| s186 | R77 | linear | hi | EHR | 283873/500000 | hi_CHR,s80 |
| s189 | R2 | sum | lo | BHR | 725291/1000000 | s175,lo_BRS,s80 |
| s219 | R12 | sumlo | lo | CFP | 108937/1000000 | lo_CFH,s140,s183,lo_CHP,hi_CHR |
| s232 | R16 | sumlo | lo | EFP | 13293/100000 | lo_EFH,s94,s162,s62,s186 |
| s235 | R21 | sumlo | lo | EHP | 200729/1000000 | lo_BEH,lo_CHP,lo_BHP,s159,hi_BCH |
| s237 | R22 | sumlo | lo | HPR | 218381/1000000 | lo_BHP,s137,s189,lo_CHP,hi_BCH |
| s242 | R23 | sumlo | lo | FHR | 94941/1000000 | lo_BFH,s163,s189,lo_EFH,hi_BEH |
| s246 | R25 | sumlo | lo | CFH | 127247/1000000 | lo_CHP,s242,s137,lo_FHP,s155 |
| s248 | R26 | sumlo | lo | BCP | 83907/500000 | lo_BHP,s140,s79,lo_CHP,s155 |
| s251 | R27 | sumlo | lo | FPR | 35323/250000 | s219,s94,s140,s232,s131 |
| s253 | R28 | sumlo | lo | CFP | 27267/250000 | lo_CHP,s251,s140,lo_FHP,s155 |
| s260 | R30 | sumlo | lo | BFR | 454569/1000000 | lo_BCR,s242,s189,s183,hi_CHR |
| s264 | R32 | sumlo | lo | FPR | 148603/1000000 | s260,s237,s79,s242,hi_BHR |
| s268 | R35 | sumlo | lo | CFR | 376691/1000000 | s133,s264,s140,s162,s152 |
| s272 | R36 | sumlo | lo | EPR | 130987/500000 | s133,s237,s140,s163,hi_CHR |
| s275 | R38 | sumlo | lo | ERS | 112811/1000000 | s133,lo_PRS,lo_CRS,s272,hi_CPR |
| s276 | R39 | sumlo | lo | FPR | 186379/1000000 | s268,s237,s140,s242,hi_CHR |
| s281 | R40 | sumlo | lo | HRS | 17921/125000 | s137,lo_PRS,lo_CRS,s237,hi_CPR |
| s284 | R43 | sumlo | lo | FRS | 31493/250000 | s162,lo_PRS,s275,s276,s152 |
| s285 | R43 | diffhi | hi | FPR | 79891/200000 | s152,s182,s162,lo_PRS,s275 |
| s291 | R45 | sumlo | lo | BPS | 302241/1000000 | s175,lo_PRS,lo_BRS,s185,hi_HRS |
| s294 | R47 | sumlo | lo | CHS | 35457/125000 | lo_CES,s281,lo_CRS,s161,s22 |
| s295 | R47 | diffhi | hi | EHS | 7582/15625 | s138,s22,lo_CES,s281,lo_CRS |
| s299 | R50 | sumlo | lo | CPS | 198841/1000000 | s294,lo_PRS,lo_CRS,s185,hi_HRS |
| s300 | R50 | sumlo | lo | HRS | 149473/1000000 | s294,lo_PRS,lo_CRS,s185,s25 |
| s309 | R51 | linear | lo | BCH | 176907/500000 | s248,lo_BHP,lo_CHP |
| s317 | R52 | linear | hi | BPR | 153951/250000 | lo_BHP,hi_BHR,s237 |
| s320 | R53 | linear | lo | BHS | 538347/1000000 | lo_BHP,s291,s185 |
| s321 | R54 | linear | lo | BHR | 39041/50000 | s320,lo_BRS,s300 |
| s323 | R55 | linear | lo | BPR | 488241/1000000 | s291,lo_BRS,lo_PRS |
| s335 | R61 | linear | lo | CER | 298811/1000000 | lo_CES,lo_CRS,s275 |
| s342 | R63 | linear | lo | CHR | 526129/1000000 | s294,lo_CRS,s300 |
| s343 | R63 | linear | hi | CHS | 188473/500000 | hi_CHR,lo_CRS,s300 |
| s345 | R64 | linear | lo | CPR | 384841/1000000 | s299,lo_CRS,lo_PRS |
| s352 | R65 | linear | lo | EFS | 132723/500000 | s162,s22,s284 |
| s359 | R66 | linear | hi | EHR | 120509/250000 | s295,s22,s300 |
| s365 | R71 | linear | lo | EFR | 298811/1000000 | s335 |
| s366 | R72 | linear | lo | EHR | 298811/1000000 | s335 |
| s372 | R73 | bary_hi | lo | BHS | 70381/125000 | s309,lo_BEH,s321 |
| s379 | R74 | bary_lo | hi | FRS | 93011/500000 | hi_CFR,s365 |
| s380 | R75 | linear | lo | CFR | 18257/40000 | s365,s284 |
| s387 | R1 | sub | hi | HPR | 43243/125000 | hi_BHR,lo_BHP,s323 |
| s388 | R2 | sum | lo | BHR | 805521/1000000 | s372,lo_BRS,s300 |
| s426 | R10 | diffhi | hi | CEF | 675549/1000000 | s131,hi_CFR,s335,s253,s345 |
| s428 | R11 | diffhi | hi | CEH | 9099/12500 | s131,hi_CHR,s335,lo_CHP,s345 |
| s429 | R12 | sumlo | lo | CFP | 29517/200000 | s246,s345,s380,lo_CHP,hi_CHR |
| s440 | R16 | sumlo | lo | EFP | 174973/1000000 | lo_EFH,s272,s365,s235,s359 |
| s441 | R19 | sumlo | lo | FHR | 59559/500000 | s246,s365,s380,lo_EFH,s426 |
| s443 | R20 | sumlo | lo | CFH | 150273/1000000 | s429,s441,s380,lo_FHP,s285 |
| s465 | R24 | sumlo | lo | FHR | 25781/200000 | s443,s366,s342,lo_EFH,s428 |
| s468 | R25 | sumlo | lo | CFH | 44023/250000 | lo_CHP,s465,s342,lo_FHP,s387 |
| s470 | R26 | sumlo | lo | BCP | 23471/100000 | lo_BHP,s345,s323,lo_CHP,s387 |
| s471 | R26 | sumlo | lo | HPR | 6221/25000 | lo_BHP,s345,s323,lo_CHP,s4 |
| s474 | R27 | sumlo | lo | FPR | 21323/100000 | s429,s272,s345,s440,s131 |
| s484 | R29 | sumlo | lo | BER | 433451/1000000 | lo_BCR,s366,s388,s335,hi_CHR |
| s492 | R31 | sumlo | lo | BFR | 630713/1000000 | s484,s474,s323,s365,s152 |
| s496 | R32 | sumlo | lo | FPR | 237151/1000000 | s492,s471,s323,s465,hi_BHR |
| s500 | R33 | sumlo | lo | HRS | 159231/1000000 | s388,lo_PRS,lo_BRS,s471,s317 |
| s502 | R34 | sumlo | lo | EHR | 166287/500000 | s335,s465,s342,s365,hi_CFR |
| s504 | R35 | sumlo | lo | CFR | 12297/25000 | s335,s496,s345,s365,s152 |
| s510 | R36 | sumlo | lo | EPR | 81667/250000 | s335,s471,s345,s502,hi_CHR |
| s511 | R36 | diffhi | hi | EHR | 414957/1000000 | hi_CHR,s152,s335,s471,s345 |
| s512 | R37 | sumlo | lo | CHR | 21471/40000 | s335,s500,lo_CRS,s502,s22 |
| s514 | R38 | sumlo | lo | CPR | 39771/100000 | s335,lo_PRS,lo_CRS,s510,s22 |
| s515 | R38 | sumlo | lo | ERS | 128829/1000000 | s335,lo_PRS,lo_CRS,s510,hi_CPR |
| s524 | R40 | sumlo | lo | HRS | 40453/250000 | s512,lo_PRS,lo_CRS,s471,hi_CPR |
| s526 | R41 | sumlo | lo | FPR | 70167/250000 | s365,s471,s510,s465,s511 |
| s528 | R42 | sumlo | lo | EHR | 174597/500000 | s365,s524,s515,s465,s379 |
| s531 | R43 | sumlo | lo | EPR | 343763/1000000 | s365,lo_PRS,s515,s526,s379 |
| s532 | R43 | sumlo | lo | FRS | 169239/1000000 | s365,lo_PRS,s515,s526,s152 |
| s536 | R44 | sumlo | lo | HRS | 42697/250000 | s528,lo_PRS,s515,s471,s152 |
| s550 | R46 | sumlo | lo | CFS | 138197/500000 | lo_CES,s532,lo_CRS,s352,s22 |
| s553 | R47 | diffhi | hi | EHS | 84407/200000 | s343,s22,lo_CES,s536,lo_CRS |
| s561 | R49 | diffhi | hi | FPS | 254719/1000000 | s25,s379,s550,lo_PRS,lo_CRS |
| s580 | R51 | linear | lo | BCH | 42071/100000 | s470,lo_BHP,lo_CHP |
| s607 | R56 | linear | lo | CEF | 45843/100000 | hi_CER,s504,s365 |
| s612 | R57 | linear | lo | CEH | 138427/250000 | hi_CER,s512,s528 |
| s613 | R58 | linear | hi | CEH | 705981/1000000 | lo_CES,s343,s553 |
| s614 | R59 | linear | lo | CEP | 102303/250000 | hi_CER,s514,s531 |
| s615 | R61 | linear | lo | CER | 314829/1000000 | lo_CES,lo_CRS,s515 |
| s621 | R62 | linear | hi | CFP | 4877/20000 | s550,s25,s561 |
| s641 | R66 | linear | hi | EHR | 99377/250000 | s553,s22,s536 |
| s642 | R66 | linear | lo | EHS | 373721/1000000 | s528,s22,s536 |
| s643 | R67 | linear | lo | EPS | 145251/500000 | s531,s22,lo_PRS |
| s649 | R71 | linear | lo | EFR | 314829/1000000 | s615 |
| s662 | R75 | linear | lo | CFR | 561223/1000000 | s649,s532 |
| s668 | R78 | linear | lo | CHS | 65341/200000 | s642,s536 |
| s672 | R79 | linear | lo | CPS | 230101/1000000 | s643,lo_PRS |
| s684 | R4 | sum | lo | CHR | 590493/1000000 | s668,lo_CRS,s536 |
| s685 | R5 | sum | lo | CPR | 416101/1000000 | s672,lo_CRS,lo_PRS |
| s720 | R6 | sumlo | lo | BCE | 148483/500000 | s580,s615,lo_BCR,s612,hi_CHR |
| s724 | R7 | sumlo | lo | BCF | 203811/500000 | s580,s662,lo_BCR,s468,hi_CHR |
| s732 | R8 | sumlo | lo | CFP | 81229/500000 | s607,lo_CHP,s614,s468,s613 |
| s734 | R9 | sumlo | lo | CEH | 277077/500000 | s607,s684,s615,s468,hi_CFR |
| s737 | R10 | diffhi | hi | CEF | 580203/1000000 | s131,hi_CFR,s615,s732,s685 |
| s738 | R11 | sumlo | lo | CEP | 419527/1000000 | s734,s685,s615,lo_CHP,hi_CHR |
| s739 | R11 | diffhi | hi | CEH | 334827/500000 | s131,hi_CHR,s615,lo_CHP,s685 |
| s741 | R12 | sumlo | lo | CFP | 101277/500000 | s468,s685,s662,lo_CHP,hi_CHR |
| s742 | R12 | diffhi | hi | CFH | 118783/500000 | s621,hi_CHR,s662,lo_CHP,s685 |
| s755 | R13 | sumlo | lo | BER | 481129/1000000 | s720,s528,lo_BEH,s615,s739 |
| s757 | R14 | sumlo | lo | BEF | 82777/125000 | lo_BEH,s649,s755,lo_EFH,s641 |
| s768 | R15 | diffhi | hi | EFP | 276823/1000000 | s737,s152,s738,s649,s615 |
| s794 | R17 | sumlo | lo | CEF | 139457/250000 | s724,s649,s757,s662,hi_BFR |
| s802 | R18 | sumlo | lo | CFH | 255453/1000000 | s794,lo_FHP,s741,lo_EFH,s768 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | CFH | s802 | s742 |

The two cited bounds give 255453/1000000 <= |CFH| <= 118783/500000, with exact positive gap 17887/1000000.

## Leaf A002

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEP | BEP | lo | 93/1000 | cost: |
| lo_BEQ | BEQ | lo | 279/1000 | cost:P |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHR | BHR | lo | 347/500 | cost:PS |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPR | BPR | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 93/1000 | cost: |
| lo_BQR | BQR | lo | 347/500 | cost:PS |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHS | EHS | lo | 279/1000 | cost:Q |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQS | EQS | lo | 93/1000 | cost: |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 279/1000 | cost:S |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BQR | BQR | hi | 174239288766899/214807390000000 | C017 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_CQR | CQR | hi | 260683245673673/480094307000000 | C018 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHP | FHP | hi | 12021371561063/24860297000000 | C013 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R1 | fan | ["BEH","BEQ","BHQ","EHQ"] | ["fan","BEH","Q"] |
| R2 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R3 | fan | ["BHR","BHS","BRS","HRS"] | ["fan","BHR","S"] |
| R4 | fan | ["BHS","BHP","BPS","HPS"] | ["fan","BHS","P"] |
| R5 | fan | ["BQR","BPQ","BPR","PQR"] | ["fan","BQR","P"] |
| R6 | fan | ["BQR","BQS","BRS","QRS"] | ["fan","BQR","S"] |
| R7 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R8 | fan | ["CHR","CHS","CRS","HRS"] | ["fan","CHR","S"] |
| R9 | fan | ["FHP","FHQ","FPQ","HPQ"] | ["fan","FHP","Q"] |
| R10 | fan | ["PQR","PQS","PRS","QRS"] | ["fan","PQR","S"] |
| R11 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R12 | plu | ["BEQ","BHP","BEH","BPQ","BEP","BHQ"] | ["plu","BEHPQ"] |
| R13 | plu | ["BEQ","BPR","BEP","BQR","BER","BPQ"] | ["plu","BEPQR"] |
| R14 | plu | ["BHP","BQR","BHQ","BPR","BHR","BPQ"] | ["plu","BHPQR"] |
| R15 | plu | ["BPR","BQS","BPQ","BRS","BPS","BQR"] | ["plu","BPQRS"] |
| R16 | plu | ["BHQ","EHR","BEH","HQR","BHR","EHQ"] | ["plu","HBEQR"] |
| R17 | plu | ["BPR","EPQ","BEP","PQR","BPQ","EPR"] | ["plu","PBEQR"] |
| R18 | plu | ["BPR","HPS","BHP","PRS","BPS","HPR"] | ["plu","PBHRS"] |
| R19 | plu | ["BHQ","EQR","BEQ","HQR","BQR","EHQ"] | ["plu","QBEHR"] |
| R20 | plu | ["FQR","HPQ","FHQ","PQR","FPQ","HQR"] | ["plu","QFHPR"] |
| R21 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R22 | plu | ["BER","CQR","BCR","EQR","BQR","CER"] | ["plu","RBCEQ"] |
| R23 | plu | ["BHR","CPR","BCR","HPR","BPR","CHR"] | ["plu","RBCHP"] |
| R24 | plu | ["BFR","EHR","BER","FHR","BHR","EFR"] | ["plu","RBEFH"] |
| R25 | plu | ["BFR","EQR","BER","FQR","BQR","EFR"] | ["plu","RBEFQ"] |
| R26 | plu | ["BRS","PQR","BPR","QRS","BQR","PRS"] | ["plu","RBPQS"] |
| R27 | plu | ["CHR","EPR","CER","HPR","CPR","EHR"] | ["plu","RCEHP"] |
| R28 | plu | ["CHR","ERS","CER","HRS","CRS","EHR"] | ["plu","RCEHS"] |
| R29 | plu | ["ERS","HPR","EHR","PRS","EPR","HRS"] | ["plu","REHPS"] |
| R30 | plu | ["ERS","PQR","EPR","QRS","EQR","PRS"] | ["plu","REPQS"] |
| R31 | plu | ["BES","CHS","BCS","EHS","BHS","CES"] | ["plu","SBCEH"] |
| R32 | plu | ["BHS","EPS","BES","HPS","BPS","EHS"] | ["plu","SBEHP"] |
| R33 | plu | ["BHS","ERS","BES","HRS","BRS","EHS"] | ["plu","SBEHR"] |
| R34 | plu | ["BRS","EPS","BES","PRS","BPS","ERS"] | ["plu","SBEPR"] |
| R35 | plu | ["BRS","HPS","BHS","PRS","BPS","HRS"] | ["plu","SBHPR"] |
| R36 | plu | ["CHS","EPS","CES","HPS","CPS","EHS"] | ["plu","SCEHP"] |
| R37 | plu | ["CHS","ERS","CES","HRS","CRS","EHS"] | ["plu","SCEHR"] |
| R38 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R39 | plu | ["CQS","ERS","CES","QRS","CRS","EQS"] | ["plu","SCEQR"] |
| R40 | plu | ["CRS","PQS","CPS","QRS","CQS","PRS"] | ["plu","SCPQR"] |
| R41 | plu | ["ERS","HPS","EHS","PRS","EPS","HRS"] | ["plu","SEHPR"] |
| R42 | plu | ["ERS","PQS","EPS","QRS","EQS","PRS"] | ["plu","SEPQR"] |
| R43 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R44 | linear | [{"BEH":1,"BHQ":-1,"BEQ":-1,"EHQ":-1},"0"] | ["affine_quad","BEHQ",1] |
| R45 | linear | [{"BEH":-1,"BHS":1,"BES":-1,"EHS":1},"0"] | ["affine_quad","BEHS",-1] |
| R46 | linear | [{"BEP":-1,"BPQ":-1,"BEQ":1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",-1] |
| R47 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R48 | linear | [{"BHP":1,"BPQ":-1,"BHQ":-1,"HPQ":1},"0"] | ["affine_quad","BHPQ",-1] |
| R49 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R50 | linear | [{"BHP":-1,"BPS":-1,"BHS":1,"HPS":-1},"0"] | ["affine_quad","BHPS",1] |
| R51 | linear | [{"BHR":1,"BRS":-1,"BHS":-1,"HRS":-1},"0"] | ["affine_quad","BHRS",-1] |
| R52 | linear | [{"BPQ":-1,"BQR":1,"BPR":-1,"PQR":-1},"0"] | ["affine_quad","BPQR",-1] |
| R53 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R54 | linear | [{"CHR":1,"CRS":-1,"CHS":-1,"HRS":-1},"0"] | ["affine_quad","CHRS",-1] |
| R55 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R56 | linear | [{"EHQ":-1,"EQS":-1,"EHS":1,"HQS":-1},"0"] | ["affine_quad","EHQS",-1] |
| R57 | linear | [{"EHR":-1,"ERS":1,"EHS":1,"HRS":-1},"0"] | ["affine_quad","EHRS",-1] |
| R58 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R59 | linear | [{"EQR":-1,"ERS":1,"EQS":1,"QRS":-1},"0"] | ["affine_quad","EQRS",-1] |
| R60 | linear | [{"FHQ":-1,"FQR":-1,"FHR":1,"HQR":-1},"0"] | ["affine_quad","FHQR",-1] |
| R61 | linear | [{"HPR":1,"HRS":-1,"HPS":-1,"PRS":-1},"0"] | ["affine_quad","HPRS",1] |
| R62 | linear | [{"PQR":1,"PRS":-1,"PQS":-1,"QRS":-1},"0"] | ["affine_quad","PQRS",-1] |
| R63 | quad | ["EHS","ERS","449/1000"] | ["quad","EHSR","Q"] |
| R64 | linear | [{"EFR":1,"CER":-1},"0"] | ["right_compare","R","EF"] |
| R65 | bary | [["BHS",-1],[["BCH",-1],["BEH",-1],["BHR",-1]],11,[3,3,3]] | ["side_pair_weights","BH","S","CER","3/11"] |
| R66 | bary | [["BPS",-1],[["BCP",-1],["BEP",-1],["BPR",-1]],11,[3,3,3]] | ["side_pair_weights","BP","S","CER","3/11"] |
| R67 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s10 | R0 | sub | hi | BHP | 3263/10000 | hi_BCH,lo_BCP,lo_CHP |
| s16 | R1 | sub | hi | BHQ | 154589/250000 | hi_BEH,lo_BEQ,lo_EHQ |
| s24 | R5 | sub | hi | BPR | 219571/500000 | hi_BQR,lo_BPQ,lo_PQR |
| s25 | R5 | sub | hi | PQR | 312571/500000 | hi_BQR,lo_BPQ,lo_BPR |
| s26 | R6 | sub | hi | BQS | 312571/500000 | hi_BQR,lo_BRS,lo_QRS |
| s32 | R7 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s33 | R7 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s38 | R8 | sub | hi | CHS | 433419/1000000 | hi_CHR,lo_CRS,lo_HRS |
| s52 | R9 | sub | hi | HPQ | 148779/500000 | hi_FHP,lo_FHQ,lo_FPQ |
| s71 | R15 | sumlo | lo | BPR | 58539/500000 | lo_BPQ,lo_BRS,lo_BPS,lo_BQR,s26 |
| s110 | R16 | sumlo | lo | BHQ | 88007/500000 | lo_BEH,lo_HQR,lo_BHR,lo_EHQ,hi_EHR |
| s115 | R17 | sumlo | lo | EPQ | 118171/1000000 | lo_BEP,lo_PQR,lo_BPQ,lo_EPR,s24 |
| s118 | R19 | sumlo | lo | EQR | 73169/500000 | lo_BEQ,lo_HQR,lo_BQR,lo_EHQ,s16 |
| s122 | R20 | sumlo | lo | FQR | 58133/500000 | lo_FHQ,lo_PQR,lo_FPQ,lo_HQR,s52 |
| s129 | R22 | sumlo | lo | BER | 19083/50000 | lo_BCR,s118,lo_BQR,lo_CER,hi_CQR |
| s136 | R26 | sumlo | lo | BRS | 6033/50000 | s71,lo_QRS,lo_BQR,lo_PRS,s25 |
| s163 | R37 | diffhi | hi | EHS | 294319/500000 | s38,s33,lo_CES,lo_HRS,lo_CRS |
| s164 | R38 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s32 |
| s165 | R39 | sumlo | lo | CQS | 29567/250000 | lo_CES,lo_QRS,lo_CRS,lo_EQS,s33 |
| s170 | R40 | sumlo | lo | PQS | 67167/500000 | lo_CPS,lo_QRS,s165,lo_PRS,s32 |
| s171 | R41 | sumlo | lo | HPS | 126301/500000 | lo_EHS,lo_PRS,s164,lo_HRS,s33 |
| s183 | R44 | linear | hi | BEQ | 360671/500000 | hi_BEH,s110,lo_EHQ |
| s184 | R46 | linear | lo | BEQ | 304171/1000000 | lo_BEP,lo_BPQ,s115 |
| s189 | R48 | linear | hi | BHQ | 265429/500000 | s10,lo_BPQ,s52 |
| s192 | R52 | linear | hi | PQR | 75133/125000 | lo_BPQ,s71,hi_BQR |
| s212 | R56 | linear | hi | EQS | 201319/500000 | lo_EHQ,s163,lo_HQS |
| s213 | R57 | linear | hi | EHR | 641899/1000000 | s163,s33,lo_HRS |
| s215 | R58 | linear | lo | EPR | 76067/250000 | s164,lo_ERS,lo_PRS |
| s216 | R59 | linear | hi | EQR | 455899/1000000 | s212,s33,lo_QRS |
| s221 | R60 | linear | lo | FHR | 151133/500000 | lo_FHQ,s122,lo_HQR |
| s224 | R61 | linear | lo | HPR | 219301/500000 | s171,lo_HRS,lo_PRS |
| s225 | R62 | linear | lo | PQR | 160167/500000 | s170,lo_PRS,lo_QRS |
| s234 | R63 | quad | lo | EHS | 302739/1000000 | s33 |
| s235 | R64 | linear | lo | EFR | 279/1000 | lo_CER |
| s244 | R65 | bary_hi | lo | BHS | 505363/1000000 | lo_BCH,lo_BEH,lo_BHR |
| s260 | R67 | bary_hi | lo | PQS | 32373/200000 | lo_CPQ,s115,s225 |
| s264 | R2 | sub | hi | BPR | 395583/1000000 | hi_BHR,lo_BHP,s224 |
| s265 | R3 | sum | lo | BHR | 719023/1000000 | s244,s136,lo_HRS |
| s275 | R10 | sum | lo | PQR | 69573/200000 | s260,lo_PRS,lo_QRS |
| s281 | R13 | sumlo | lo | BPR | 3467/25000 | lo_BEP,lo_BQR,s129,lo_BPQ,s183 |
| s283 | R14 | sumlo | lo | BHP | 112531/1000000 | s110,s281,s265,lo_BPQ,hi_BQR |
| s323 | R16 | sumlo | lo | BHQ | 102361/500000 | lo_BEH,lo_HQR,s265,lo_EHQ,s213 |
| s331 | R17 | sumlo | lo | EPQ | 153313/1000000 | lo_BEP,s275,lo_BPQ,s215,s264 |
| s333 | R19 | sumlo | lo | EQR | 174867/1000000 | s184,lo_HQR,lo_BQR,lo_EHQ,s189 |
| s337 | R20 | sumlo | lo | FQR | 137789/1000000 | lo_FHQ,s275,lo_FPQ,lo_HQR,s52 |
| s344 | R22 | sumlo | lo | BER | 386547/1000000 | lo_BCR,s333,lo_BQR,lo_CER,hi_CQR |
| s350 | R24 | sumlo | lo | EHR | 14167/40000 | s344,s221,s265,s235,hi_BFR |
| s352 | R25 | sumlo | lo | EQR | 68863/250000 | s344,s337,lo_BQR,s235,hi_BFR |
| s355 | R26 | sumlo | lo | BRS | 32209/250000 | s281,lo_QRS,lo_BQR,lo_PRS,s192 |
| s357 | R28 | sumlo | lo | ERS | 19013/200000 | lo_CER,lo_HRS,lo_CRS,s350,hi_CHR |
| s363 | R30 | sumlo | lo | PQR | 184307/500000 | s215,lo_QRS,s352,lo_PRS,s33 |
| s367 | R31 | sumlo | lo | BES | 43349/250000 | lo_BCS,s234,s244,lo_CES,s38 |
| s388 | R43 | linear | lo | BCH | 298531/1000000 | lo_BCP,s283,lo_CHP |
| s390 | R44 | linear | hi | BEQ | 346317/500000 | hi_BEH,s323,lo_EHQ |
| s391 | R46 | linear | lo | BEQ | 339313/1000000 | lo_BEP,lo_BPQ,s331 |
| s393 | R47 | linear | lo | BER | 397297/1000000 | s367,s355,s357 |
| s398 | R51 | linear | lo | BHR | 727199/1000000 | s244,s355,lo_HRS |
| s399 | R51 | linear | hi | BHS | 705349/1000000 | hi_BHR,s355,lo_HRS |
| s401 | R52 | linear | hi | PQR | 289731/500000 | lo_BPQ,s281,hi_BQR |
| s411 | R53 | linear | lo | CER | 56213/200000 | lo_CES,lo_CRS,s357 |
| s425 | R55 | linear | lo | EHR | 115363/250000 | lo_EHQ,s352,lo_HQR |
| s428 | R57 | linear | lo | EHS | 408191/1000000 | s425,s33,lo_HRS |
| s431 | R59 | linear | lo | EQS | 222191/1000000 | s352,s33,lo_QRS |
| s441 | R64 | linear | lo | EFR | 56213/200000 | s411 |
| s447 | R65 | bary_hi | lo | BHS | 104659/200000 | s388,lo_BEH,s398 |
| s448 | R66 | bary_hi | lo | BPS | 52729/500000 | lo_BCP,lo_BEP,s281 |
| s463 | R67 | bary_hi | lo | PQS | 23077/125000 | lo_CPQ,s331,s363 |
| s471 | R3 | sum | lo | BHR | 745131/1000000 | s447,s355,lo_HRS |
| s483 | R10 | sum | lo | PQR | 46327/125000 | s463,lo_PRS,lo_QRS |
| s490 | R11 | sumlo | lo | BCS | 9397/100000 | s388,s355,lo_BCR,s447,hi_BHR |
| s492 | R13 | sumlo | lo | BPR | 4579/31250 | lo_BEP,lo_BQR,s393,lo_BPQ,s390 |
| s494 | R14 | sumlo | lo | BHP | 122413/1000000 | s323,s492,s471,lo_BPQ,hi_BQR |
| s532 | R19 | sumlo | lo | BHQ | 52697/250000 | s391,lo_HQR,lo_BQR,lo_EHQ,s216 |
| s534 | R20 | sumlo | lo | FQR | 1449/10000 | lo_FHQ,s483,lo_FPQ,lo_HQR,s52 |
| s541 | R21 | sumlo | lo | BER | 40739/100000 | lo_BCR,s425,s471,s411,hi_CHR |
| s546 | R25 | sumlo | lo | EQR | 283487/1000000 | s541,s534,lo_BQR,s441,hi_BFR |
| s552 | R26 | sumlo | lo | BRS | 134899/1000000 | s492,lo_QRS,lo_BQR,lo_PRS,s401 |
| s554 | R28 | sumlo | lo | ERS | 55741/500000 | s411,lo_HRS,lo_CRS,s425,hi_CHR |
| s568 | R31 | sumlo | lo | BES | 40157/200000 | s490,s428,s447,lo_CES,s38 |
| s571 | R33 | diffhi | hi | BRS | 12937/62500 | s399,s33,s568,lo_HRS,s428 |
| s574 | R35 | sumlo | lo | HPS | 141247/500000 | s447,lo_PRS,s448,lo_HRS,s571 |
| s577 | R36 | sumlo | lo | EPS | 74101/500000 | lo_CES,s574,lo_CPS,s428,s38 |
| s579 | R37 | sumlo | lo | CHS | 159341/500000 | lo_CES,lo_HRS,lo_CRS,s428,s33 |
| s588 | R41 | sumlo | lo | HPS | 176891/500000 | s428,lo_PRS,s577,lo_HRS,s33 |
| s591 | R42 | sumlo | lo | PQS | 117757/500000 | s577,lo_QRS,s431,lo_PRS,s33 |
| s604 | R43 | linear | lo | BCH | 308413/1000000 | lo_BCP,s494,lo_CHP |
| s606 | R44 | linear | hi | BEQ | 85821/125000 | hi_BEH,s532,lo_EHQ |
| s609 | R47 | linear | lo | BER | 223583/500000 | s568,s552,s554 |
| s616 | R49 | linear | hi | HPR | 164561/250000 | s494,hi_BHR,s492 |
| s619 | R50 | linear | lo | BHS | 581653/1000000 | s494,s448,s588 |
| s622 | R51 | linear | lo | BHR | 50597/62500 | s619,s552,lo_HRS |
| s623 | R51 | linear | hi | BHS | 349643/500000 | hi_BHR,s552,lo_HRS |
| s624 | R52 | linear | hi | PQR | 285807/500000 | lo_BPQ,s492,hi_BQR |
| s634 | R53 | linear | lo | CER | 148741/500000 | lo_CES,lo_CRS,s554 |
| s641 | R54 | linear | lo | CHR | 252341/500000 | s579,lo_CRS,lo_HRS |
| s651 | R55 | linear | lo | EHR | 469487/1000000 | lo_EHQ,s546,lo_HQR |
| s653 | R57 | linear | lo | EHS | 208113/500000 | s651,s33,lo_HRS |
| s655 | R59 | linear | lo | EQS | 115113/500000 | s546,s33,lo_QRS |
| s663 | R61 | linear | lo | HPR | 269891/500000 | s588,lo_HRS,lo_PRS |
| s665 | R62 | linear | lo | PQR | 210757/500000 | s591,lo_PRS,lo_QRS |
| s667 | R64 | linear | lo | EFR | 148741/500000 | s634 |
| s671 | R66 | bary_hi | lo | BPS | 53799/500000 | lo_BCP,lo_BEP,s492 |
| s681 | R2 | sub | hi | BPR | 26499/100000 | hi_BHR,s494,s663 |
| s682 | R4 | sum | lo | BHS | 583793/1000000 | s494,s671,s588 |
| s685 | R4 | sub | hi | HPS | 18771/40000 | s623,s494,s671 |
| s704 | R11 | sumlo | lo | BCS | 25857/250000 | s604,s552,lo_BCR,s682,hi_BHR |
| s708 | R13 | sumlo | lo | BEQ | 400499/1000000 | lo_BEP,lo_BQR,s609,lo_BPQ,s681 |
| s709 | R13 | sumlo | lo | BPR | 77289/500000 | lo_BEP,lo_BQR,s609,lo_BPQ,s606 |
| s711 | R14 | sumlo | lo | BHP | 132987/1000000 | s532,s709,s622,lo_BPQ,hi_BQR |
| s752 | R19 | sumlo | lo | BHQ | 223269/1000000 | s708,lo_HQR,lo_BQR,lo_EHQ,s216 |
| s755 | R20 | sumlo | lo | FQR | 20101/125000 | lo_FHQ,s665,lo_FPQ,lo_HQR,s52 |
| s759 | R21 | sumlo | lo | BER | 91857/200000 | lo_BCR,s651,s622,s634,hi_CHR |
| s761 | R23 | sumlo | lo | CPR | 138281/1000000 | lo_BCR,s663,s709,s641,hi_BHR |
| s763 | R25 | sumlo | lo | EQR | 15637/50000 | s759,s755,lo_BQR,s667,hi_BFR |
| s771 | R26 | sumlo | lo | BRS | 138061/1000000 | s709,lo_QRS,lo_BQR,lo_PRS,s624 |
| s772 | R27 | sumlo | lo | EPR | 72809/200000 | s634,s663,s761,s651,hi_CHR |
| s777 | R29 | sumlo | lo | ERS | 23553/200000 | s651,lo_PRS,s772,lo_HRS,s616 |
| s790 | R31 | sumlo | lo | BES | 224591/1000000 | s704,s653,s682,lo_CES,s38 |
| s794 | R32 | sumlo | lo | EPS | 44417/250000 | s790,s588,s671,s653,s623 |
| s799 | R37 | sumlo | lo | CHS | 323791/1000000 | lo_CES,lo_HRS,lo_CRS,s653,s33 |
| s802 | R41 | sumlo | lo | HPS | 377627/1000000 | s653,lo_PRS,s794,lo_HRS,s33 |
| s803 | R41 | diffhi | hi | EHS | 560361/1000000 | s33,s685,s794,lo_HRS,lo_PRS |
| s806 | R42 | sumlo | lo | PQS | 259359/1000000 | s794,lo_QRS,s655,lo_PRS,s33 |
| s823 | R43 | linear | lo | BCH | 318987/1000000 | lo_BCP,s711,lo_CHP |
| s830 | R44 | linear | hi | BEQ | 674087/1000000 | hi_BEH,s752,lo_EHQ |
| s833 | R47 | linear | lo | BER | 480417/1000000 | s790,s771,s777 |
| s842 | R49 | linear | hi | HPR | 31981/50000 | s711,hi_BHR,s709 |
| s848 | R51 | linear | hi | BHS | 174031/250000 | hi_BHR,s771,lo_HRS |
| s859 | R53 | linear | lo | CER | 60753/200000 | lo_CES,lo_CRS,s777 |
| s866 | R54 | linear | lo | CHR | 509791/1000000 | s799,lo_CRS,lo_HRS |
| s876 | R55 | linear | lo | EHR | 24937/50000 | lo_EHQ,s763,lo_HQR |
| s878 | R56 | linear | hi | EQS | 374361/1000000 | lo_EHQ,s803,lo_HQS |
| s881 | R57 | linear | lo | EHS | 445479/1000000 | s876,s33,lo_HRS |
| s882 | R58 | linear | lo | EPR | 388433/1000000 | s794,s777,lo_PRS |
| s883 | R59 | linear | hi | EQR | 213811/500000 | s878,s33,lo_QRS |
| s891 | R61 | linear | lo | HPR | 563627/1000000 | s802,lo_HRS,lo_PRS |
| s893 | R62 | linear | lo | PQR | 445359/1000000 | s806,lo_PRS,lo_QRS |
| s897 | R66 | bary_hi | lo | BPS | 54897/500000 | lo_BCP,lo_BEP,s709 |
| s910 | R2 | sum | lo | BHR | 106399/125000 | s711,s709,s891 |
| s912 | R2 | sub | hi | BPR | 230571/1000000 | hi_BHR,s711,s891 |
| s913 | R4 | sum | lo | BHS | 77551/125000 | s711,s897,s802 |
| s916 | R4 | sub | hi | HPS | 453343/1000000 | s848,s711,s897 |
| s936 | R11 | sumlo | lo | BCS | 109727/1000000 | s823,s771,lo_BCR,s913,hi_BHR |
| s941 | R13 | sumlo | lo | BEQ | 14803/31250 | lo_BEP,lo_BQR,s833,lo_BPQ,s912 |
| s942 | R13 | sumlo | lo | BPR | 162027/1000000 | lo_BEP,lo_BQR,s833,lo_BPQ,s830 |
| s944 | R14 | sumlo | lo | BHP | 14219/100000 | s752,s942,s910,lo_BPQ,hi_BQR |
| s989 | R17 | sumlo | lo | EPQ | 336307/1000000 | lo_BEP,s893,lo_BPQ,s882,s912 |
| s990 | R18 | sumlo | lo | BPR | 20709/125000 | s944,lo_PRS,s897,s891,s916 |
| s994 | R19 | sumlo | lo | BHQ | 3968/15625 | s941,lo_HQR,lo_BQR,lo_EHQ,s883 |
| s1009 | R23 | sumlo | lo | CPR | 18453/125000 | lo_BCR,s891,s990,s866,hi_BHR |
| s1024 | R27 | sumlo | lo | EPR | 98817/250000 | s859,s891,s1009,s876,hi_CHR |
| s1030 | R29 | sumlo | lo | ERS | 129987/1000000 | s876,lo_PRS,s1024,lo_HRS,s842 |
| s1052 | R31 | sumlo | lo | BES | 122951/500000 | s936,s881,s913,lo_CES,s38 |
| s1062 | R33 | diffhi | hi | BRS | 177219/1000000 | s848,s33,s1052,lo_HRS,s881 |
| s1064 | R34 | sumlo | lo | EPS | 8383/40000 | s1052,lo_PRS,s897,s1030,s1062 |
| s1069 | R35 | sumlo | lo | BRS | 29959/200000 | s913,lo_PRS,s897,lo_HRS,s916 |
| s1079 | R41 | sumlo | lo | HPS | 83303/200000 | s881,lo_PRS,s1064,lo_HRS,s33 |
| s1080 | R41 | diffhi | hi | EHS | 251699/500000 | s33,s916,s1064,lo_HRS,lo_PRS |
| s1114 | R45 | linear | hi | BEH | 47681/50000 | s1052,s848,s1080 |
| s1116 | R46 | linear | lo | BEQ | 522307/1000000 | lo_BEP,lo_BPQ,s989 |
| s1135 | R51 | linear | hi | BHS | 68439/100000 | hi_BHR,s1069,lo_HRS |
| s1211 | R66 | bary_hi | lo | BPS | 112819/1000000 | lo_BCP,lo_BEP,s990 |
| s1220 | R1 | sum | lo | BEH | 869259/1000000 | s1116,s994,lo_EHQ |
| s1221 | R1 | sub | hi | BEQ | 151667/250000 | s1114,s994,lo_EHQ |
| s1227 | R4 | sub | hi | BHP | 9691/62500 | s1135,s1211,s1079 |
| s1268 | R12 | sumlo | lo | BEQ | 673683/1000000 | s1220,lo_BPQ,lo_BEP,s994,s1227 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BEQ | s1268 | s1221 |

The two cited bounds give 673683/1000000 <= |BEQ| <= 151667/250000, with exact positive gap 13403/200000.

## Leaf A003

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_AHR | AHR | lo | 347/500 | cost:PS |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_AQR | AQR | lo | 279/1000 | cost:S |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:S |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_CQR | CQR | lo | 279/1000 | cost:S |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHS | EHS | lo | 279/1000 | cost:Q |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EQS | EQS | lo | 93/1000 | cost: |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_HPR | HPR | lo | 279/1000 | cost:S |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEH","AEP","AHP","EHP"] | ["fan","AEH","P"] |
| R1 | fan | ["AEH","AEQ","AHQ","EHQ"] | ["fan","AEH","Q"] |
| R2 | fan | ["AHR","AHP","APR","HPR"] | ["fan","AHR","P"] |
| R3 | fan | ["AHR","AHS","ARS","HRS"] | ["fan","AHR","S"] |
| R4 | fan | ["AQR","AQS","ARS","QRS"] | ["fan","AQR","S"] |
| R5 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R6 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R7 | fan | ["CHR","CHS","CRS","HRS"] | ["fan","CHR","S"] |
| R8 | fan | ["PQR","PQS","PRS","QRS"] | ["fan","PQR","S"] |
| R9 | plu | ["ABR","ACH","ABC","AHR","ABH","ACR"] | ["plu","ABCHR"] |
| R10 | plu | ["ACS","AHR","ACH","ARS","ACR","AHS"] | ["plu","ACHRS"] |
| R11 | plu | ["AEP","AHQ","AEH","APQ","AEQ","AHP"] | ["plu","AEHPQ"] |
| R12 | plu | ["AHQ","APR","AHP","AQR","AHR","APQ"] | ["plu","AHPQR"] |
| R13 | plu | ["ACR","BCH","ABC","CHR","ACH","BCR"] | ["plu","CABHR"] |
| R14 | plu | ["ACQ","CHR","ACH","CQR","ACR","CHQ"] | ["plu","CAHQR"] |
| R15 | plu | ["AEQ","EHP","AEH","EPQ","AEP","EHQ"] | ["plu","EAHPQ"] |
| R16 | plu | ["AHP","BHR","ABH","HPR","AHR","BHP"] | ["plu","HABPR"] |
| R17 | plu | ["AHP","BPR","ABP","HPR","APR","BHP"] | ["plu","PABHR"] |
| R18 | plu | ["APR","HPQ","AHP","PQR","APQ","HPR"] | ["plu","PAHQR"] |
| R19 | plu | ["ACR","BHR","ABR","CHR","AHR","BCR"] | ["plu","RABCH"] |
| R20 | plu | ["ARS","HPR","AHR","PRS","APR","HRS"] | ["plu","RAHPS"] |
| R21 | plu | ["AES","CHS","ACS","EHS","AHS","CES"] | ["plu","SACEH"] |
| R22 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R23 | plu | ["AHS","EPS","AES","HPS","APS","EHS"] | ["plu","SAEHP"] |
| R24 | plu | ["AQS","ERS","AES","QRS","ARS","EQS"] | ["plu","SAEQR"] |
| R25 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R26 | plu | ["CQS","ERS","CES","QRS","CRS","EQS"] | ["plu","SCEQR"] |
| R27 | plu | ["CRS","PQS","CPS","QRS","CQS","PRS"] | ["plu","SCPQR"] |
| R28 | plu | ["ERS","HPS","EHS","PRS","EPS","HRS"] | ["plu","SEHPR"] |
| R29 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R30 | linear | [{"AEH":1,"AHQ":-1,"AEQ":-1,"EHQ":-1},"0"] | ["affine_quad","AEHQ",1] |
| R31 | linear | [{"AHP":-1,"APQ":-1,"AHQ":1,"HPQ":-1},"0"] | ["affine_quad","AHPQ",1] |
| R32 | linear | [{"AHP":-1,"APR":-1,"AHR":1,"HPR":-1},"0"] | ["affine_quad","AHPR",1] |
| R33 | linear | [{"AHR":1,"ARS":-1,"AHS":-1,"HRS":-1},"0"] | ["affine_quad","AHRS",-1] |
| R34 | linear | [{"AQR":1,"ARS":-1,"AQS":-1,"QRS":-1},"0"] | ["affine_quad","AQRS",-1] |
| R35 | linear | [{"HPR":1,"HRS":-1,"HPS":-1,"PRS":-1},"0"] | ["affine_quad","HPRS",1] |
| R36 | linear | [{"PQR":1,"PRS":-1,"PQS":-1,"QRS":-1},"0"] | ["affine_quad","PQRS",-1] |
| R37 | quad | ["EHS","ERS","449/1000"] | ["quad","EHSR","Q"] |
| R38 | bary | [["AHS",-1],[["ACH",-1],["AEH",-1],["AHR",-1]],11,[3,3,3]] | ["side_pair_weights","AH","S","CER","3/11"] |
| R39 | bary | [["APS",-1],[["ACP",-1],["AEP",-1],["APR",-1]],11,[3,3,3]] | ["side_pair_weights","AP","S","CER","3/11"] |
| R40 | bary | [["AQS",-1],[["ACQ",-1],["AEQ",-1],["AQR",-1]],11,[3,3,3]] | ["side_pair_weights","AQ","S","CER","3/11"] |
| R41 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s5 | R0 | sub | hi | EHP | 316233/500000 | hi_AEH,lo_AEP,lo_AHP |
| s7 | R1 | sub | hi | AHQ | 316233/500000 | hi_AEH,lo_AEQ,lo_EHQ |
| s14 | R2 | sub | hi | HPR | 316233/500000 | hi_AHR,lo_AHP,lo_APR |
| s33 | R6 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s34 | R6 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s36 | R7 | sub | hi | CHS | 433419/1000000 | hi_CHR,lo_CRS,lo_HRS |
| s50 | R9 | sumlo | lo | ABR | 145169/1000000 | lo_ABC,lo_AHR,lo_ABH,lo_ACR,hi_ACH |
| s56 | R11 | sumlo | lo | AEP | 115723/1000000 | lo_AEH,lo_APQ,lo_AEQ,lo_AHP,s7 |
| s59 | R12 | sumlo | lo | APR | 143073/1000000 | lo_AHP,lo_AQR,lo_AHR,lo_APQ,s7 |
| s66 | R13 | sumlo | lo | ACR | 6331/62500 | lo_ABC,lo_CHR,lo_ACH,lo_BCR,hi_BCH |
| s68 | R14 | sumlo | lo | ACQ | 35219/250000 | lo_ACH,lo_CQR,s66,lo_CHQ,hi_CHR |
| s85 | R15 | sumlo | lo | AEQ | 14883/125000 | lo_AEH,lo_EPQ,s56,lo_EHQ,s5 |
| s96 | R16 | sumlo | lo | AHP | 19519/200000 | lo_ABH,lo_HPR,lo_AHR,lo_BHP,hi_BHR |
| s106 | R19 | sumlo | lo | ACR | 113293/1000000 | s50,lo_CHR,lo_AHR,lo_BCR,hi_BHR |
| s115 | R20 | sumlo | lo | ARS | 61543/500000 | lo_AHR,lo_PRS,s59,lo_HRS,s14 |
| s131 | R22 | sumlo | lo | AES | 68699/500000 | lo_ACS,lo_ERS,s115,lo_CES,s33 |
| s138 | R24 | sumlo | lo | AQS | 41407/250000 | s131,lo_QRS,s115,lo_EQS,s34 |
| s150 | R25 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s33 |
| s151 | R26 | sumlo | lo | CQS | 29567/250000 | lo_CES,lo_QRS,lo_CRS,lo_EQS,s34 |
| s155 | R27 | sumlo | lo | PQS | 67167/500000 | lo_CPS,lo_QRS,s151,lo_PRS,s33 |
| s156 | R28 | sumlo | lo | HPS | 126301/500000 | lo_EHS,lo_PRS,s150,lo_HRS,s34 |
| s163 | R29 | linear | lo | ACH | 56719/200000 | lo_ACP,s96,lo_CHP |
| s170 | R30 | linear | hi | AHQ | 303201/500000 | hi_AEH,s85,lo_EHQ |
| s177 | R31 | linear | hi | HPQ | 415807/1000000 | s96,s170,lo_APQ |
| s185 | R33 | linear | hi | AHS | 30119/50000 | hi_AHR,s115,lo_HRS |
| s186 | R34 | linear | lo | AQR | 190857/500000 | s138,s115,lo_QRS |
| s223 | R35 | linear | lo | HPR | 219301/500000 | s156,lo_HRS,lo_PRS |
| s226 | R36 | linear | lo | PQR | 160167/500000 | s155,lo_PRS,lo_QRS |
| s229 | R37 | quad | lo | EHS | 302739/1000000 | s34 |
| s236 | R38 | bary_hi | lo | AHS | 126863/250000 | s163,lo_AEH,lo_AHR |
| s237 | R39 | bary_hi | lo | APS | 112853/1000000 | lo_ACP,s56,s59 |
| s238 | R40 | bary_hi | lo | AQS | 49161/250000 | s68,s85,s186 |
| s258 | R41 | bary_hi | lo | PQS | 31/200 | lo_CPQ,lo_EPQ,s226 |
| s265 | R3 | sum | lo | AHR | 361769/500000 | s236,s115,lo_HRS |
| s269 | R4 | sum | lo | AQR | 41273/100000 | s238,s115,lo_QRS |
| s276 | R5 | sub | hi | BPR | 395583/1000000 | hi_BHR,lo_BHP,s223 |
| s286 | R8 | sum | lo | PQR | 341/1000 | s258,lo_PRS,lo_QRS |
| s301 | R10 | sumlo | lo | ACS | 11289/100000 | s163,s115,s106,s236,hi_AHR |
| s308 | R12 | sumlo | lo | APR | 177389/1000000 | s96,s269,s265,lo_APQ,s170 |
| s358 | R17 | sumlo | lo | AHP | 144817/1000000 | lo_ABP,s223,s308,lo_BHP,s276 |
| s364 | R18 | sumlo | lo | APR | 216861/1000000 | s358,s286,lo_APQ,s223,s177 |
| s401 | R21 | sumlo | lo | AES | 93869/500000 | s301,s229,s236,lo_CES,s36 |
| s405 | R23 | sumlo | lo | EPS | 67721/500000 | s401,s156,s237,s229,s185 |
| s420 | R28 | sumlo | lo | HPS | 278617/1000000 | s229,lo_PRS,s405,lo_HRS,s34 |
| s450 | R32 | linear | hi | HPR | 114197/250000 | s358,hi_AHR,s364 |
| s530 | R35 | linear | lo | HPR | 464617/1000000 | s420,lo_HRS,lo_PRS |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | HPR | s530 | s450 |

The two cited bounds give 464617/1000000 <= |HPR| <= 114197/250000, with exact positive gap 7829/1000000.

## Leaf A004

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFS | EFS | lo | 279/1000 | cost:Q |
| lo_EHR | EHR | lo | 347/500 | cost:QS |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R1 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R2 | plu | ["EFS","EHR","EFH","ERS","EFR","EHS"] | ["plu","EFHRS"] |
| R3 | plu | ["ERS","FHR","EFR","HRS","EHR","FRS"] | ["plu","REFHS"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s34 | R0 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s50 | R1 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s117 | R2 | diff | lo | EFR | 304261/1000000 | lo_EFS,lo_EHR,hi_EFH,s34,s50 |
| s167 | R3 | sumlo | lo | ERS | 2636/15625 | s117,lo_HRS,lo_EHR,lo_FRS,hi_FHR |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | ERS | s167 | s34 |

The two cited bounds give 2636/15625 <= |ERS| <= 146261/1000000, with exact positive gap 22443/1000000.

## Leaf A005

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 347/500 | cost:PS |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_AFR | AFR | lo | 347/500 | cost:PS |
| lo_AHR | AHR | lo | 347/500 | cost:PS |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_AQR | AQR | lo | 347/500 | cost:PS |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEF","AEQ","AFQ","EFQ"] | ["fan","AEF","Q"] |
| R1 | fan | ["AER","AEP","APR","EPR"] | ["fan","AER","P"] |
| R2 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R3 | plu | ["AEH","EQR","AEQ","EHR","AER","EHQ"] | ["plu","EAHQR"] |
| R4 | plu | ["AFQ","FHR","AFH","FQR","AFR","FHQ"] | ["plu","FAHQR"] |
| R5 | plu | ["AFQ","EQR","AEQ","FQR","AQR","EFQ"] | ["plu","QAEFR"] |
| R6 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R7 | plu | ["AHR","EPR","AER","HPR","APR","EHR"] | ["plu","RAEHP"] |
| R8 | plu | ["AHR","ERS","AER","HRS","ARS","EHR"] | ["plu","RAEHS"] |
| R9 | plu | ["ARS","EPR","AER","PRS","APR","ERS"] | ["plu","RAEPS"] |
| R10 | plu | ["AFR","HQR","AHR","FQR","AQR","FHR"] | ["plu","RAFHQ"] |
| R11 | plu | ["ERS","HPR","EHR","PRS","EPR","HRS"] | ["plu","REHPS"] |
| R12 | linear | [{"AEH":-1,"AHR":1,"AER":-1,"EHR":1},"0"] | ["affine_quad","AEHR",-1] |
| R13 | linear | [{"AEQ":1,"AQR":-1,"AER":1,"EQR":-1},"0"] | ["affine_quad","AEQR",1] |
| R14 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s14 | R0 | sub | hi | AFQ | 570997/1000000 | hi_AEF,lo_AEQ,lo_EFQ |
| s20 | R1 | sub | hi | EPR | 269733/500000 | hi_AER,lo_AEP,lo_APR |
| s57 | R2 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s132 | R4 | sumlo | lo | FHR | 128181/1000000 | lo_AFH,lo_FQR,lo_AFR,lo_FHQ,s14 |
| s146 | R5 | sumlo | lo | EQR | 128181/1000000 | lo_AEQ,lo_FQR,lo_AQR,lo_EFQ,s14 |
| s162 | R6 | sumlo | lo | EHR | 17263/50000 | lo_AER,s132,lo_AHR,lo_EFR,hi_AFR |
| s168 | R7 | diffhi | hi | HPR | 11799/20000 | hi_AHR,s20,lo_APR,s162,lo_AER |
| s169 | R8 | sumlo | lo | ERS | 14761/125000 | lo_AER,lo_HRS,lo_ARS,s162,hi_AHR |
| s171 | R8 | diffhi | hi | ARS | 79893/500000 | hi_AHR,s57,lo_AER,lo_HRS,s162 |
| s175 | R9 | sumlo | lo | EPR | 236329/500000 | lo_AER,lo_PRS,lo_APR,s169,s171 |
| s180 | R10 | sumlo | lo | HQR | 37509/200000 | lo_AHR,lo_FQR,lo_AQR,s132,hi_AFR |
| s212 | R11 | diffhi | hi | EHR | 113789/250000 | s57,s168,s175,lo_HRS,lo_PRS |
| s273 | R12 | linear | hi | AEH | 289811/500000 | lo_AER,hi_AHR,s212 |
| s276 | R13 | linear | lo | AEQ | 19343/200000 | hi_AER,lo_AQR,s146 |
| s359 | R14 | linear | hi | EQR | 174611/1000000 | lo_EHQ,s212,s180 |
| s360 | R14 | linear | lo | EHR | 204363/500000 | lo_EHQ,s146,s180 |
| s512 | R3 | sumlo | lo | AEH | 596021/1000000 | s276,s360,lo_AER,lo_EHQ,s359 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AEH | s512 | s273 |

The two cited bounds give 596021/1000000 <= |AEH| <= 289811/500000, with exact positive gap 16399/1000000.

## Leaf A006

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABF | ABF | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ABQ | ABQ | lo | 279/1000 | cost:P |
| lo_ABR | ABR | lo | 279/1000 | cost:P |
| lo_ABS | ABS | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 279/1000 | cost:P |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 347/500 | cost:PQ |
| lo_BEQ | BEQ | lo | 93/1000 | cost: |
| lo_BES | BES | lo | 93/1000 | cost: |
| lo_BFH | BFH | lo | 93/1000 | cost: |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 279/1000 | cost:P |
| lo_BFR | BFR | lo | 347/500 | cost:PS |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHQ | BHQ | lo | 279/1000 | cost:P |
| lo_BHR | BHR | lo | 347/500 | cost:PS |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BQR | BQR | lo | 279/1000 | cost:S |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEF | CEF | lo | 279/1000 | cost:Q |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:S |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_CQR | CQR | lo | 279/1000 | cost:S |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:Q |
| lo_EFS | EFS | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHS | EHS | lo | 279/1000 | cost:Q |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQS | EQS | lo | 93/1000 | cost: |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 279/1000 | cost:S |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPR | HPR | lo | 279/1000 | cost:S |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 279/1000 | cost:S |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ABE | ABE | hi | 43477363/64397000 | C028 |
| hi_ABH | ABH | hi | 893109/4646561 | C034 |
| hi_ABR | ABR | hi | 23259798835491/40647145000000 | C016 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_ACR | ACR | hi | 445132103342243/1016178625000000 | C035 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_HPR | HPR | hi | 1697845810031659129/2459523134761000000 | C037 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ABR","ABP","APR","BPR"] | ["fan","ABR","P"] |
| R1 | fan | ["ABS","ABP","APS","BPS"] | ["fan","ABS","P"] |
| R2 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R3 | fan | ["ACR","ACP","APR","CPR"] | ["fan","ACR","P"] |
| R4 | fan | ["AEF","AEQ","AFQ","EFQ"] | ["fan","AEF","Q"] |
| R5 | fan | ["AEH","AEQ","AHQ","EHQ"] | ["fan","AEH","Q"] |
| R6 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R7 | fan | ["AFR","AFS","ARS","FRS"] | ["fan","AFR","S"] |
| R8 | fan | ["AHR","AHS","ARS","HRS"] | ["fan","AHR","S"] |
| R9 | fan | ["AQR","AQS","ARS","QRS"] | ["fan","AQR","S"] |
| R10 | fan | ["BEF","BEQ","BFQ","EFQ"] | ["fan","BEF","Q"] |
| R11 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R12 | fan | ["BEH","BEQ","BHQ","EHQ"] | ["fan","BEH","Q"] |
| R13 | fan | ["BFR","BFP","BPR","FPR"] | ["fan","BFR","P"] |
| R14 | fan | ["BFR","BFS","BRS","FRS"] | ["fan","BFR","S"] |
| R15 | fan | ["BFS","BFP","BPS","FPS"] | ["fan","BFS","P"] |
| R16 | fan | ["BQR","BQS","BRS","QRS"] | ["fan","BQR","S"] |
| R17 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R18 | fan | ["CFR","CFS","CRS","FRS"] | ["fan","CFR","S"] |
| R19 | fan | ["CHR","CHS","CRS","HRS"] | ["fan","CHR","S"] |
| R20 | fan | ["EHR","EHQ","EQR","HQR"] | ["fan","EHR","Q"] |
| R21 | fan | ["HPR","HPS","HRS","PRS"] | ["fan","HPR","S"] |
| R22 | fan | ["PQR","PQS","PRS","QRS"] | ["fan","PQR","S"] |
| R23 | plu | ["ABF","AHR","ABH","AFR","ABR","AFH"] | ["plu","ABFHR"] |
| R24 | plu | ["ACR","AEP","ACE","APR","ACP","AER"] | ["plu","ACEPR"] |
| R25 | plu | ["ACR","AFP","ACF","APR","ACP","AFR"] | ["plu","ACFPR"] |
| R26 | plu | ["ACR","AHP","ACH","APR","ACP","AHR"] | ["plu","ACHPR"] |
| R27 | plu | ["ACR","APQ","ACP","AQR","ACQ","APR"] | ["plu","ACPQR"] |
| R28 | plu | ["ABE","BFS","ABF","BES","ABS","BEF"] | ["plu","BAEFS"] |
| R29 | plu | ["ABF","BHR","ABH","BFR","ABR","BFH"] | ["plu","BAFHR"] |
| R30 | plu | ["ABF","BHS","ABH","BFS","ABS","BFH"] | ["plu","BAFHS"] |
| R31 | plu | ["BCQ","BHR","BCH","BQR","BCR","BHQ"] | ["plu","BCHQR"] |
| R32 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R33 | plu | ["BEP","BFQ","BEF","BPQ","BEQ","BFP"] | ["plu","BEFPQ"] |
| R34 | plu | ["BEP","BHQ","BEH","BPQ","BEQ","BHP"] | ["plu","BEHPQ"] |
| R35 | plu | ["BFQ","BPR","BFP","BQR","BFR","BPQ"] | ["plu","BFPQR"] |
| R36 | plu | ["BHQ","BPR","BHP","BQR","BHR","BPQ"] | ["plu","BHPQR"] |
| R37 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R38 | plu | ["BCQ","CFR","BCF","CQR","BCR","CFQ"] | ["plu","CBFQR"] |
| R39 | plu | ["CER","CQS","CEQ","CRS","CES","CQR"] | ["plu","CEQRS"] |
| R40 | plu | ["CFP","CHR","CFH","CPR","CFR","CHP"] | ["plu","CFHPR"] |
| R41 | plu | ["AEF","BEQ","ABE","EFQ","AEQ","BEF"] | ["plu","EABFQ"] |
| R42 | plu | ["AEH","BEQ","ABE","EHQ","AEQ","BEH"] | ["plu","EABHQ"] |
| R43 | plu | ["AEF","EQR","AEQ","EFR","AER","EFQ"] | ["plu","EAFQR"] |
| R44 | plu | ["AEH","EQR","AEQ","EHR","AER","EHQ"] | ["plu","EAHQR"] |
| R45 | plu | ["BER","CEP","BCE","EPR","BEP","CER"] | ["plu","EBCPR"] |
| R46 | plu | ["AEF","BFH","ABF","EFH","AFH","BEF"] | ["plu","FABEH"] |
| R47 | plu | ["AFQ","EFR","AEF","FQR","AFR","EFQ"] | ["plu","FAEQR"] |
| R48 | plu | ["AFQ","FHR","AFH","FQR","AFR","FHQ"] | ["plu","FAHQR"] |
| R49 | plu | ["BFR","CFQ","BCF","FQR","BFQ","CFR"] | ["plu","FBCQR"] |
| R50 | plu | ["BFQ","FHR","BFH","FQR","BFR","FHQ"] | ["plu","FBHQR"] |
| R51 | plu | ["AHR","BHQ","ABH","HQR","AHQ","BHR"] | ["plu","HABQR"] |
| R52 | plu | ["AHR","CFH","ACH","FHR","AFH","CHR"] | ["plu","HACFR"] |
| R53 | plu | ["AHQ","EHR","AEH","HQR","AHR","EHQ"] | ["plu","HAEQR"] |
| R54 | plu | ["AHQ","FHR","AFH","HQR","AHR","FHQ"] | ["plu","HAFQR"] |
| R55 | plu | ["BHR","HQS","BHQ","HRS","BHS","HQR"] | ["plu","HBQRS"] |
| R56 | plu | ["ABP","CPR","ACP","BPR","APR","BCP"] | ["plu","PABCR"] |
| R57 | plu | ["AEP","CPR","ACP","EPR","APR","CEP"] | ["plu","PACER"] |
| R58 | plu | ["AFP","CPR","ACP","FPR","APR","CFP"] | ["plu","PACFR"] |
| R59 | plu | ["AHP","CPR","ACP","HPR","APR","CHP"] | ["plu","PACHR"] |
| R60 | plu | ["AHP","CPS","ACP","HPS","APS","CHP"] | ["plu","PACHS"] |
| R61 | plu | ["APQ","CPR","ACP","PQR","APR","CPQ"] | ["plu","PACQR"] |
| R62 | plu | ["BPR","CPQ","BCP","PQR","BPQ","CPR"] | ["plu","PBCQR"] |
| R63 | plu | ["BPR","FPQ","BFP","PQR","BPQ","FPR"] | ["plu","PBFQR"] |
| R64 | plu | ["BPR","HPQ","BHP","PQR","BPQ","HPR"] | ["plu","PBHQR"] |
| R65 | plu | ["AFQ","BEQ","ABQ","EFQ","AEQ","BFQ"] | ["plu","QABEF"] |
| R66 | plu | ["AHQ","BEQ","ABQ","EHQ","AEQ","BHQ"] | ["plu","QABEH"] |
| R67 | plu | ["AHQ","EPQ","AEQ","HPQ","APQ","EHQ"] | ["plu","QAEHP"] |
| R68 | plu | ["AHR","BRS","ABR","HRS","ARS","BHR"] | ["plu","RABHS"] |
| R69 | plu | ["AHR","CRS","ACR","HRS","ARS","CHR"] | ["plu","RACHS"] |
| R70 | plu | ["AHR","ERS","AER","HRS","ARS","EHR"] | ["plu","RAEHS"] |
| R71 | plu | ["AFR","HQR","AHR","FQR","AQR","FHR"] | ["plu","RAFHQ"] |
| R72 | plu | ["BQR","CFR","BCR","FQR","BFR","CQR"] | ["plu","RBCFQ"] |
| R73 | plu | ["BFR","HQR","BHR","FQR","BQR","FHR"] | ["plu","RBFHQ"] |
| R74 | plu | ["BHR","FRS","BFR","HRS","BRS","FHR"] | ["plu","RBFHS"] |
| R75 | plu | ["BRS","FPR","BFR","PRS","BPR","FRS"] | ["plu","RBFPS"] |
| R76 | plu | ["BRS","HPR","BHR","PRS","BPR","HRS"] | ["plu","RBHPS"] |
| R77 | plu | ["AES","CFS","ACS","EFS","AFS","CES"] | ["plu","SACEF"] |
| R78 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R79 | plu | ["AQS","CRS","ACS","QRS","ARS","CQS"] | ["plu","SACQR"] |
| R80 | plu | ["AFS","ERS","AES","FRS","ARS","EFS"] | ["plu","SAEFR"] |
| R81 | plu | ["AHS","ERS","AES","HRS","ARS","EHS"] | ["plu","SAEHR"] |
| R82 | plu | ["BES","CFS","BCS","EFS","BFS","CES"] | ["plu","SBCEF"] |
| R83 | plu | ["BQS","ERS","BES","QRS","BRS","EQS"] | ["plu","SBEQR"] |
| R84 | plu | ["BRS","HPS","BHS","PRS","BPS","HRS"] | ["plu","SBHPR"] |
| R85 | plu | ["CFS","EPS","CES","FPS","CPS","EFS"] | ["plu","SCEFP"] |
| R86 | plu | ["CFS","ERS","CES","FRS","CRS","EFS"] | ["plu","SCEFR"] |
| R87 | plu | ["CHS","ERS","CES","HRS","CRS","EHS"] | ["plu","SCEHR"] |
| R88 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R89 | plu | ["CQS","ERS","CES","QRS","CRS","EQS"] | ["plu","SCEQR"] |
| R90 | plu | ["CRS","PQS","CPS","QRS","CQS","PRS"] | ["plu","SCPQR"] |
| R91 | plu | ["ERS","FPS","EFS","PRS","EPS","FRS"] | ["plu","SEFPR"] |
| R92 | plu | ["ERS","HPS","EHS","PRS","EPS","HRS"] | ["plu","SEHPR"] |
| R93 | linear | [{"ABE":-1,"AEH":-1,"ABH":1,"BEH":1},"0"] | ["affine_quad","ABEH",-1] |
| R94 | linear | [{"ABE":1,"AEP":-1,"ABP":-1,"BEP":-1},"0"] | ["affine_quad","ABEP",1] |
| R95 | linear | [{"ABH":1,"AHP":-1,"ABP":-1,"BHP":1},"0"] | ["affine_quad","ABHP",1] |
| R96 | linear | [{"ABH":1,"AHR":-1,"ABR":-1,"BHR":1},"0"] | ["affine_quad","ABHR",1] |
| R97 | linear | [{"ABH":1,"AHS":-1,"ABS":-1,"BHS":1},"0"] | ["affine_quad","ABHS",1] |
| R98 | linear | [{"ABP":-1,"APQ":-1,"ABQ":1,"BPQ":-1},"0"] | ["affine_quad","ABPQ",-1] |
| R99 | linear | [{"ABP":-1,"APR":-1,"ABR":1,"BPR":-1},"0"] | ["affine_quad","ABPR",-1] |
| R100 | linear | [{"ACE":1,"AER":-1,"ACR":-1,"CER":1},"0"] | ["affine_quad","ACER",1] |
| R101 | linear | [{"ACE":1,"AES":-1,"ACS":-1,"CES":1},"0"] | ["affine_quad","ACES",1] |
| R102 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R103 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R104 | linear | [{"ACH":1,"AHR":-1,"ACR":-1,"CHR":1},"0"] | ["affine_quad","ACHR",1] |
| R105 | linear | [{"ACP":-1,"APQ":-1,"ACQ":1,"CPQ":-1},"0"] | ["affine_quad","ACPQ",-1] |
| R106 | linear | [{"ACP":-1,"APR":-1,"ACR":1,"CPR":-1},"0"] | ["affine_quad","ACPR",-1] |
| R107 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R108 | linear | [{"AEH":1,"AHQ":-1,"AEQ":-1,"EHQ":-1},"0"] | ["affine_quad","AEHQ",1] |
| R109 | linear | [{"AEH":-1,"AHS":1,"AES":-1,"EHS":1},"0"] | ["affine_quad","AEHS",-1] |
| R110 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R111 | linear | [{"AFR":1,"ARS":-1,"AFS":-1,"FRS":-1},"0"] | ["affine_quad","AFRS",-1] |
| R112 | linear | [{"AHR":1,"ARS":-1,"AHS":-1,"HRS":-1},"0"] | ["affine_quad","AHRS",-1] |
| R113 | linear | [{"AQR":1,"ARS":-1,"AQS":-1,"QRS":-1},"0"] | ["affine_quad","AQRS",-1] |
| R114 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R115 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R116 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R117 | linear | [{"BEH":1,"BHQ":-1,"BEQ":-1,"EHQ":-1},"0"] | ["affine_quad","BEHQ",1] |
| R118 | linear | [{"BEH":-1,"BHS":1,"BES":-1,"EHS":1},"0"] | ["affine_quad","BEHS",-1] |
| R119 | linear | [{"BFP":-1,"BPQ":-1,"BFQ":1,"FPQ":-1},"0"] | ["affine_quad","BFPQ",1] |
| R120 | linear | [{"BFP":-1,"BPR":-1,"BFR":1,"FPR":-1},"0"] | ["affine_quad","BFPR",1] |
| R121 | linear | [{"BFR":1,"BRS":-1,"BFS":-1,"FRS":-1},"0"] | ["affine_quad","BFRS",-1] |
| R122 | linear | [{"BHP":-1,"BPQ":-1,"BHQ":1,"HPQ":-1},"0"] | ["affine_quad","BHPQ",1] |
| R123 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R124 | linear | [{"BHR":1,"BRS":-1,"BHS":-1,"HRS":-1},"0"] | ["affine_quad","BHRS",-1] |
| R125 | linear | [{"BQR":1,"BRS":-1,"BQS":-1,"QRS":-1},"0"] | ["affine_quad","BQRS",-1] |
| R126 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R127 | linear | [{"CFR":1,"CRS":-1,"CFS":-1,"FRS":-1},"0"] | ["affine_quad","CFRS",-1] |
| R128 | linear | [{"CHR":1,"CRS":-1,"CHS":-1,"HRS":-1},"0"] | ["affine_quad","CHRS",-1] |
| R129 | linear | [{"CPR":-1,"CRS":1,"CPS":1,"PRS":-1},"0"] | ["affine_quad","CPRS",1] |
| R130 | linear | [{"CQR":1,"CRS":-1,"CQS":-1,"QRS":-1},"0"] | ["affine_quad","CQRS",-1] |
| R131 | linear | [{"EFQ":-1,"EQR":-1,"EFR":1,"FQR":-1},"0"] | ["affine_quad","EFQR",-1] |
| R132 | linear | [{"EFR":-1,"ERS":1,"EFS":1,"FRS":-1},"0"] | ["affine_quad","EFRS",-1] |
| R133 | linear | [{"EHP":1,"EPQ":-1,"EHQ":-1,"HPQ":-1},"0"] | ["affine_quad","EHPQ",1] |
| R134 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R135 | linear | [{"EHQ":-1,"EQS":-1,"EHS":1,"HQS":-1},"0"] | ["affine_quad","EHQS",-1] |
| R136 | linear | [{"EHR":-1,"ERS":1,"EHS":1,"HRS":-1},"0"] | ["affine_quad","EHRS",-1] |
| R137 | linear | [{"FPR":1,"FRS":-1,"FPS":-1,"PRS":-1},"0"] | ["affine_quad","FPRS",1] |
| R138 | linear | [{"HPR":1,"HRS":-1,"HPS":-1,"PRS":-1},"0"] | ["affine_quad","HPRS",1] |
| R139 | linear | [{"PQR":1,"PRS":-1,"PQS":-1,"QRS":-1},"0"] | ["affine_quad","PQRS",-1] |
| R140 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R141 | quad | ["ACS","CRS","449/1000"] | ["quad","ACRS","P"] |
| R142 | quad | ["EFS","ERS","449/1000"] | ["quad","EFSR","Q"] |
| R143 | quad | ["EHS","ERS","449/1000"] | ["quad","EHSR","Q"] |
| R144 | bary | [["AFS",-1],[["ACF",-1],["AEF",-1],["AFR",-1]],11,[3,3,3]] | ["side_pair_weights","AF","S","CER","3/11"] |
| R145 | bary | [["AHS",-1],[["ACH",-1],["AEH",-1],["AHR",-1]],11,[3,3,3]] | ["side_pair_weights","AH","S","CER","3/11"] |
| R146 | bary | [["AQS",-1],[["ACQ",-1],["AEQ",-1],["AQR",-1]],11,[3,3,3]] | ["side_pair_weights","AQ","S","CER","3/11"] |
| R147 | linear | [{"ACS":-3,"AES":5,"ARS":-3},"0"] | ["barycentric","AS","S","CER","upper"] |
| R148 | bary | [["BFS",-1],[["BCF",-1],["BEF",-1],["BFR",-1]],11,[3,3,3]] | ["side_pair_weights","BF","S","CER","3/11"] |
| R149 | bary | [["BPS",-1],[["BCP",-1],["BEP",-1],["BPR",-1]],11,[3,3,3]] | ["side_pair_weights","BP","S","CER","3/11"] |
| R150 | bary | [["BQS",-1],[["BCQ",-1],["BEQ",-1],["BQR",-1]],11,[3,3,3]] | ["side_pair_weights","BQ","S","CER","3/11"] |
| R151 | linear | [{"CFS":5,"EFS":-3,"FRS":-3},"0"] | ["barycentric","FS","S","CER","lower"] |
| R152 | bary | [["HPS",1],[["CHP",1],["EHP",1],["HPR",1]],11,[3,3,3]] | ["side_pair_weights","HP","S","CER","3/11"] |
| R153 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s6 | R0 | sub | hi | BPR | 386237/1000000 | hi_ABR,lo_ABP,lo_APR |
| s14 | R2 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s19 | R3 | sub | hi | CPR | 126023/500000 | hi_ACR,lo_ACP,lo_APR |
| s23 | R4 | sub | hi | AFQ | 570997/1000000 | hi_AEF,lo_AEQ,lo_EFQ |
| s35 | R10 | sub | hi | BEQ | 5243/10000 | hi_BEF,lo_BFQ,lo_EFQ |
| s36 | R10 | sub | hi | BFQ | 7103/10000 | hi_BEF,lo_BEQ,lo_EFQ |
| s42 | R14 | sub | hi | BFS | 7103/10000 | hi_BFR,lo_BRS,lo_FRS |
| s51 | R17 | sub | hi | CES | 146261/1000000 | hi_CER,lo_CRS,lo_ERS |
| s52 | R17 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s53 | R17 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s54 | R18 | sub | hi | CFS | 201267/500000 | hi_CFR,lo_CRS,lo_FRS |
| s55 | R19 | sub | hi | CHS | 433419/1000000 | hi_CHR,lo_CRS,lo_HRS |
| s84 | R28 | sumlo | lo | ABE | 142387/500000 | lo_ABF,lo_BES,lo_ABS,lo_BEF,s42 |
| s85 | R28 | sumlo | lo | BFS | 299601/1000000 | lo_ABF,lo_BES,lo_ABS,lo_BEF,hi_ABE |
| s87 | R29 | sumlo | lo | ABF | 19519/200000 | lo_ABH,lo_BFR,lo_ABR,lo_BFH,hi_BHR |
| s90 | R33 | sumlo | lo | BEP | 51521/500000 | lo_BEF,lo_BPQ,lo_BEQ,lo_BFP,s36 |
| s93 | R35 | sumlo | lo | BPR | 25479/200000 | lo_BFP,lo_BQR,lo_BFR,lo_BPQ,s36 |
| s100 | R37 | sumlo | lo | BCE | 3527/20000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_CFR |
| s101 | R38 | sumlo | lo | BCQ | 73479/500000 | lo_BCF,lo_CQR,lo_BCR,lo_CFQ,hi_CFR |
| s104 | R39 | sumlo | lo | CQS | 104123/1000000 | lo_CEQ,lo_CRS,lo_CES,lo_CQR,hi_CER |
| s105 | R41 | sumlo | lo | BEQ | 60123/500000 | s84,lo_EFQ,lo_AEQ,lo_BEF,hi_AEF |
| s114 | R45 | sumlo | lo | CEP | 2997/25000 | s100,lo_EPR,s90,lo_CER,hi_BER |
| s116 | R46 | sumlo | lo | BFH | 389/4000 | s87,lo_EFH,lo_AFH,lo_BEF,hi_AEF |
| s119 | R49 | sumlo | lo | CFQ | 28949/250000 | lo_BCF,lo_FQR,lo_BFQ,lo_CFR,hi_BFR |
| s121 | R50 | sumlo | lo | FHR | 51799/500000 | s116,lo_FQR,lo_BFR,lo_FHQ,s36 |
| s125 | R57 | sumlo | lo | AEP | 73589/500000 | lo_ACP,lo_EPR,lo_APR,s114,s19 |
| s126 | R58 | sumlo | lo | AFP | 6863/50000 | lo_ACP,lo_FPR,lo_APR,lo_CFP,s19 |
| s127 | R59 | sumlo | lo | AHP | 6863/50000 | lo_ACP,lo_HPR,lo_APR,lo_CHP,s19 |
| s128 | R59 | sumlo | lo | CPR | 27183/250000 | lo_ACP,lo_HPR,lo_APR,lo_CHP,s14 |
| s129 | R61 | sumlo | lo | APQ | 6863/50000 | lo_ACP,lo_PQR,lo_APR,lo_CPQ,s19 |
| s130 | R62 | sumlo | lo | CPQ | 93359/1000000 | lo_BCP,lo_PQR,lo_BPQ,s128,s6 |
| s131 | R63 | sumlo | lo | FPQ | 134357/1000000 | lo_BFP,lo_PQR,lo_BPQ,lo_FPR,s6 |
| s133 | R65 | sumlo | lo | AFQ | 98977/1000000 | lo_ABQ,lo_EFQ,lo_AEQ,lo_BFQ,s35 |
| s134 | R66 | sumlo | lo | AHQ | 98977/1000000 | lo_ABQ,lo_EHQ,lo_AEQ,lo_BHQ,s35 |
| s151 | R72 | sumlo | lo | BQR | 343693/1000000 | lo_BCR,lo_FQR,lo_BFR,lo_CQR,hi_CFR |
| s152 | R73 | sumlo | lo | HQR | 55867/500000 | lo_BHR,lo_FQR,s151,s121,hi_BFR |
| s153 | R76 | sumlo | lo | BRS | 110659/1000000 | lo_BHR,lo_PRS,s93,lo_HRS,hi_HPR |
| s170 | R78 | sumlo | lo | AES | 29567/125000 | lo_ACS,lo_ERS,lo_ARS,lo_CES,s52 |
| s173 | R79 | sumlo | lo | AQS | 30451/125000 | lo_ACS,lo_QRS,lo_ARS,s104,s52 |
| s175 | R80 | sumlo | lo | AFS | 327803/1000000 | s170,lo_FRS,lo_ARS,lo_EFS,s53 |
| s178 | R81 | sumlo | lo | AHS | 327803/1000000 | s170,lo_HRS,lo_ARS,lo_EHS,s53 |
| s179 | R82 | sumlo | lo | BES | 133677/1000000 | lo_BCS,lo_EFS,s85,lo_CES,s54 |
| s182 | R83 | sumlo | lo | BQS | 971/6250 | s179,lo_QRS,s153,lo_EQS,s53 |
| s186 | R86 | diffhi | hi | EFS | 108013/200000 | s54,s53,lo_CES,lo_FRS,lo_CRS |
| s188 | R87 | diffhi | hi | EHS | 294319/500000 | s55,s53,lo_CES,lo_HRS,lo_CRS |
| s189 | R88 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s52 |
| s190 | R89 | sumlo | lo | CQS | 29567/250000 | lo_CES,lo_QRS,lo_CRS,lo_EQS,s53 |
| s193 | R90 | sumlo | lo | PQS | 67167/500000 | lo_CPS,lo_QRS,s190,lo_PRS,s52 |
| s194 | R91 | sumlo | lo | FPS | 126301/500000 | lo_EFS,lo_PRS,s189,lo_FRS,s53 |
| s196 | R92 | sumlo | lo | HPS | 126301/500000 | lo_EHS,lo_PRS,s189,lo_HRS,s53 |
| s198 | R94 | linear | lo | ABE | 17161/50000 | lo_ABP,s125,s90 |
| s203 | R99 | linear | lo | ABR | 62679/200000 | lo_ABP,lo_APR,s93 |
| s207 | R102 | linear | lo | ACF | 16163/50000 | lo_ACP,s126,lo_CFP |
| s208 | R103 | linear | lo | ACH | 16163/50000 | lo_ACP,s127,lo_CHP |
| s210 | R105 | linear | lo | ACQ | 323619/1000000 | lo_ACP,s129,s130 |
| s215 | R107 | linear | lo | AEF | 284977/1000000 | lo_AEQ,s133,lo_EFQ |
| s216 | R108 | linear | lo | AEH | 284977/1000000 | lo_AEQ,s134,lo_EHQ |
| s218 | R111 | linear | lo | AFR | 513803/1000000 | s175,lo_ARS,lo_FRS |
| s219 | R112 | linear | lo | AHR | 513803/1000000 | s178,lo_ARS,lo_HRS |
| s220 | R113 | linear | lo | AQR | 53701/125000 | s173,lo_ARS,lo_QRS |
| s223 | R116 | linear | hi | BFQ | 341527/500000 | hi_BEF,s105,lo_EFQ |
| s226 | R119 | linear | lo | BFQ | 320357/1000000 | lo_BFP,lo_BPQ,s131 |
| s228 | R120 | linear | hi | FPR | 135181/200000 | lo_BFP,hi_BFR,s93 |
| s233 | R124 | linear | hi | BHS | 361763/500000 | hi_BHR,s153,lo_HRS |
| s234 | R125 | linear | lo | BQR | 359019/1000000 | s182,s153,lo_QRS |
| s241 | R130 | linear | lo | CQR | 76067/250000 | s190,lo_CRS,lo_QRS |
| s249 | R132 | linear | hi | EFR | 296663/500000 | s186,s53,lo_FRS |
| s255 | R136 | linear | hi | EHR | 641899/1000000 | s188,s53,lo_HRS |
| s258 | R137 | linear | lo | FPR | 219301/500000 | s194,lo_FRS,lo_PRS |
| s261 | R138 | linear | lo | HPR | 219301/500000 | s196,lo_HRS,lo_PRS |
| s263 | R139 | linear | lo | PQR | 160167/500000 | s193,lo_PRS,lo_QRS |
| s264 | R140 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s265 | R141 | quad | lo | ACS | 302739/1000000 | s52 |
| s269 | R142 | quad | lo | EFS | 302739/1000000 | s53 |
| s270 | R143 | quad | lo | EHS | 302739/1000000 | s53 |
| s272 | R144 | bary_hi | lo | AFS | 5591/15625 | s207,s215,s218 |
| s273 | R145 | bary_hi | lo | AHS | 5591/15625 | s208,s216,s219 |
| s275 | R146 | bary_hi | lo | AQS | 123849/500000 | s210,lo_AEQ,s220 |
| s277 | R147 | linear | lo | AES | 237443/1000000 | s265,lo_ARS |
| s281 | R148 | bary_hi | lo | BFS | 505363/1000000 | lo_BCF,lo_BEF,lo_BFR |
| s283 | R149 | bary_hi | lo | BPS | 105119/1000000 | lo_BCP,s90,s93 |
| s284 | R150 | bary_hi | lo | BQS | 192651/1000000 | s101,s105,s234 |
| s290 | R151 | linear | lo | CFS | 237443/1000000 | s269,lo_FRS |
| s292 | R153 | bary_hi | lo | PQS | 77549/500000 | s130,lo_EPQ,s263 |
| s293 | R1 | sum | lo | ABS | 291119/1000000 | lo_ABP,lo_APS,s283 |
| s296 | R6 | sum | lo | AER | 423443/1000000 | s277,lo_ARS,lo_ERS |
| s297 | R7 | sum | lo | AFR | 33989/62500 | s272,lo_ARS,lo_FRS |
| s298 | R8 | sum | lo | AHR | 33989/62500 | s273,lo_ARS,lo_HRS |
| s299 | R9 | sum | lo | AQR | 216849/500000 | s275,lo_ARS,lo_QRS |
| s301 | R13 | sub | hi | BPR | 182349/500000 | hi_BFR,lo_BFP,s258 |
| s302 | R14 | sum | lo | BFR | 354511/500000 | s281,s153,lo_FRS |
| s304 | R16 | sum | lo | BQR | 39631/100000 | s284,s153,lo_QRS |
| s308 | R18 | sum | lo | CFR | 423443/1000000 | s290,lo_CRS,lo_FRS |
| s312 | R22 | sum | lo | PQR | 170549/500000 | s292,lo_PRS,lo_QRS |
| s314 | R24 | sumlo | lo | AEP | 88657/500000 | s264,lo_APR,lo_ACP,s296,hi_ACR |
| s319 | R27 | sumlo | lo | APQ | 160783/1000000 | lo_ACP,s299,s210,lo_APR,hi_ACR |
| s323 | R30 | sumlo | lo | ABF | 104087/1000000 | lo_ABH,s281,s293,s116,s233 |
| s326 | R33 | sumlo | lo | BEP | 55431/500000 | lo_BEF,lo_BPQ,s105,lo_BFP,s223 |
| s328 | R35 | sumlo | lo | BPR | 75247/500000 | lo_BFP,s304,s302,lo_BPQ,s223 |
| s337 | R38 | sumlo | lo | BCQ | 162539/1000000 | lo_BCF,s241,lo_BCR,s119,hi_CFR |
| s339 | R41 | sumlo | lo | BEQ | 63713/500000 | s198,lo_EFQ,lo_AEQ,lo_BEF,hi_AEF |
| s343 | R46 | sumlo | lo | BFH | 1532/15625 | s323,lo_EFH,lo_AFH,lo_BEF,hi_AEF |
| s345 | R47 | sumlo | lo | AFQ | 129909/1000000 | s215,lo_FQR,s297,lo_EFQ,s249 |
| s348 | R49 | sumlo | lo | CFQ | 22537/125000 | lo_BCF,lo_FQR,s226,s308,hi_BFR |
| s354 | R53 | sumlo | lo | AHQ | 25679/200000 | s216,s152,s298,lo_EHQ,s255 |
| s360 | R58 | sumlo | lo | AFP | 3923/20000 | lo_ACP,s258,lo_APR,lo_CFP,s19 |
| s362 | R59 | sumlo | lo | AHP | 3923/20000 | lo_ACP,s261,lo_APR,lo_CHP,s19 |
| s363 | R59 | sumlo | lo | CPR | 77691/500000 | lo_ACP,s261,lo_APR,lo_CHP,s14 |
| s365 | R60 | sumlo | lo | CPS | 12627/125000 | lo_ACP,s196,lo_APS,lo_CHP,s14 |
| s366 | R62 | sumlo | lo | CPQ | 25321/200000 | lo_BCP,s312,lo_BPQ,s363,s301 |
| s367 | R63 | sumlo | lo | FPQ | 198827/1000000 | lo_BFP,s312,lo_BPQ,s258,s301 |
| s368 | R64 | sumlo | lo | HPQ | 198827/1000000 | lo_BHP,s312,lo_BPQ,s261,s301 |
| s374 | R75 | sumlo | lo | BRS | 118263/1000000 | s302,lo_PRS,s328,lo_FRS,s228 |
| s377 | R77 | sumlo | lo | AES | 62071/200000 | s265,s269,s272,lo_CES,s54 |
| s378 | R79 | sumlo | lo | AQS | 267697/1000000 | s265,lo_QRS,lo_ARS,s190,s52 |
| s379 | R80 | sumlo | lo | AFS | 77967/200000 | s377,lo_FRS,lo_ARS,s269,s53 |
| s381 | R81 | sumlo | lo | AHS | 77967/200000 | s377,lo_HRS,lo_ARS,s270,s53 |
| s383 | R82 | sumlo | lo | BES | 1867/10000 | lo_BCS,s269,s281,lo_CES,s54 |
| s384 | R83 | sumlo | lo | BQS | 19391/100000 | s383,lo_QRS,s374,lo_EQS,s53 |
| s385 | R85 | sumlo | lo | EPS | 33583/250000 | lo_CES,s194,s365,s269,s54 |
| s386 | R86 | sumlo | lo | CFS | 25163/100000 | lo_CES,lo_FRS,lo_CRS,s269,s53 |
| s387 | R87 | sumlo | lo | CHS | 25163/100000 | lo_CES,lo_HRS,lo_CRS,s270,s53 |
| s388 | R91 | sumlo | lo | FPS | 277911/1000000 | s269,lo_PRS,s385,lo_FRS,s53 |
| s390 | R92 | sumlo | lo | HPS | 277911/1000000 | s270,lo_PRS,s385,lo_HRS,s53 |
| s391 | R94 | linear | lo | ABE | 47647/125000 | lo_ABP,s314,s326 |
| s394 | R95 | linear | lo | BHP | 96941/1000000 | hi_ABH,lo_ABP,s362 |
| s395 | R96 | linear | hi | AHR | 402999/500000 | hi_ABH,s203,hi_BHR |
| s398 | R98 | linear | lo | ABQ | 346783/1000000 | lo_ABP,s319,lo_BPQ |
| s399 | R99 | linear | lo | ABR | 168247/500000 | lo_ABP,lo_APR,s328 |
| s403 | R101 | linear | lo | ACE | 466833/1000000 | s265,s377,s51 |
| s404 | R102 | linear | lo | ACF | 7643/20000 | lo_ACP,s360,lo_CFP |
| s405 | R103 | linear | lo | ACH | 7643/20000 | lo_ACP,s362,lo_CHP |
| s407 | R105 | linear | lo | ACQ | 95097/250000 | lo_ACP,s319,s366 |
| s410 | R106 | linear | lo | ACR | 170691/500000 | lo_ACP,lo_APR,s363 |
| s411 | R107 | linear | lo | AEF | 315909/1000000 | lo_AEQ,s345,lo_EFQ |
| s412 | R108 | linear | lo | AEH | 62879/200000 | lo_AEQ,s354,lo_EHQ |
| s413 | R110 | linear | lo | AER | 99271/200000 | s377,lo_ARS,lo_ERS |
| s414 | R111 | linear | lo | AFR | 115167/200000 | s379,lo_ARS,lo_FRS |
| s415 | R112 | linear | lo | AHR | 115167/200000 | s381,lo_ARS,lo_HRS |
| s416 | R112 | linear | hi | AHS | 309999/500000 | s395,lo_ARS,lo_HRS |
| s417 | R113 | linear | lo | AQR | 453697/1000000 | s378,lo_ARS,lo_QRS |
| s420 | R116 | linear | hi | BFQ | 337937/500000 | hi_BEF,s339,lo_EFQ |
| s423 | R119 | linear | lo | BFQ | 384827/1000000 | lo_BFP,lo_BPQ,s367 |
| s426 | R120 | linear | hi | FPR | 326403/500000 | lo_BFP,hi_BFR,s328 |
| s428 | R121 | linear | lo | BFR | 358313/500000 | s281,s374,lo_FRS |
| s430 | R122 | linear | lo | BHQ | 12149/31250 | s394,lo_BPQ,s368 |
| s435 | R125 | linear | lo | BQR | 405173/1000000 | s384,s374,lo_QRS |
| s439 | R127 | linear | lo | CFR | 43763/100000 | s386,lo_CRS,lo_FRS |
| s442 | R128 | linear | lo | CHR | 43763/100000 | s387,lo_CRS,lo_HRS |
| s452 | R137 | linear | lo | FPR | 463911/1000000 | s388,lo_FRS,lo_PRS |
| s454 | R138 | linear | lo | HPR | 463911/1000000 | s390,lo_HRS,lo_PRS |
| s456 | R144 | bary_hi | lo | AFS | 404863/1000000 | s404,s411,s414 |
| s457 | R145 | bary_hi | lo | AHS | 16167/40000 | s405,s412,s415 |
| s459 | R146 | bary_hi | lo | AQS | 1079/4000 | s407,lo_AEQ,s417 |
| s460 | R148 | bary_hi | lo | BFS | 255767/500000 | lo_BCF,lo_BEF,s428 |
| s463 | R150 | bary_hi | lo | BQS | 212751/1000000 | s337,s339,s435 |
| s467 | R153 | bary_hi | lo | PQS | 42457/250000 | s366,lo_EPQ,s312 |
| s469 | R7 | sum | lo | AFR | 590863/1000000 | s456,lo_ARS,lo_FRS |
| s470 | R8 | sum | lo | AHR | 23607/40000 | s457,lo_ARS,lo_HRS |
| s471 | R9 | sum | lo | AQR | 1823/4000 | s459,lo_ARS,lo_QRS |
| s472 | R10 | sub | hi | BEQ | 418473/1000000 | hi_BEF,s423,lo_EFQ |
| s474 | R13 | sub | hi | BPR | 339389/1000000 | hi_BFR,lo_BFP,s452 |
| s475 | R14 | sum | lo | BFR | 722797/1000000 | s460,s374,lo_FRS |
| s479 | R16 | sum | lo | BQR | 212007/500000 | s463,s374,lo_QRS |
| s480 | R22 | sum | lo | PQR | 88957/250000 | s467,lo_PRS,lo_QRS |
| s483 | R24 | sumlo | lo | AEP | 204491/1000000 | s403,lo_APR,lo_ACP,s413,hi_ACR |
| s485 | R25 | sumlo | lo | AFP | 206577/1000000 | s404,lo_APR,lo_ACP,s469,hi_ACR |
| s486 | R26 | sumlo | lo | AHP | 206431/1000000 | s405,lo_APR,lo_ACP,s470,hi_ACR |
| s489 | R29 | sumlo | lo | ABF | 54041/500000 | lo_ABH,s475,s399,s343,hi_BHR |
| s491 | R33 | sumlo | lo | BEP | 113027/1000000 | lo_BEF,lo_BPQ,s339,lo_BFP,s420 |
| s493 | R35 | sumlo | lo | BPR | 789/5000 | lo_BFP,s479,s475,lo_BPQ,s420 |
| s503 | R38 | sumlo | lo | BCQ | 172731/1000000 | lo_BCF,s241,lo_BCR,s348,hi_CFR |
| s505 | R41 | sumlo | lo | BEQ | 132089/1000000 | s391,lo_EFQ,lo_AEQ,lo_BEF,hi_AEF |
| s507 | R43 | sumlo | lo | EQR | 19051/200000 | lo_AEQ,lo_EFR,s413,lo_EFQ,hi_AEF |
| s509 | R46 | sumlo | lo | BFH | 49269/500000 | s489,lo_EFH,lo_AFH,lo_BEF,hi_AEF |
| s518 | R50 | sumlo | lo | FHR | 22603/200000 | s509,lo_FQR,s475,lo_FHQ,s420 |
| s522 | R52 | sumlo | lo | CFH | 1301/12500 | s405,s518,lo_AFH,s442,s395 |
| s528 | R59 | sumlo | lo | CPR | 8139/50000 | lo_ACP,s454,lo_APR,lo_CHP,s14 |
| s530 | R60 | sumlo | lo | CPS | 54207/500000 | lo_ACP,s390,lo_APS,lo_CHP,s14 |
| s531 | R61 | sumlo | lo | APQ | 22251/125000 | lo_ACP,s480,lo_APR,s366,s19 |
| s532 | R62 | sumlo | lo | CPQ | 142109/1000000 | lo_BCP,s480,lo_BPQ,s528,s474 |
| s533 | R63 | sumlo | lo | FPQ | 112313/500000 | lo_BFP,s480,lo_BPQ,s452,s474 |
| s534 | R64 | sumlo | lo | HPQ | 114379/500000 | s394,s480,lo_BPQ,s454,s474 |
| s535 | R65 | sumlo | lo | AFQ | 16259/100000 | s398,lo_EFQ,lo_AEQ,s423,s472 |
| s536 | R66 | sumlo | lo | AHQ | 81733/500000 | s398,lo_EHQ,lo_AEQ,s430,s472 |
| s544 | R71 | sumlo | lo | HQR | 12999/100000 | s470,lo_FQR,s471,s518,hi_AFR |
| s545 | R75 | sumlo | lo | BRS | 125451/1000000 | s475,lo_PRS,s493,lo_FRS,s426 |
| s547 | R77 | sumlo | lo | AES | 160611/500000 | s265,s269,s456,lo_CES,s54 |
| s548 | R81 | sumlo | lo | ERS | 46797/500000 | s547,lo_HRS,lo_ARS,s270,s416 |
| s550 | R85 | sumlo | lo | EPS | 145743/1000000 | lo_CES,s388,s530,s269,s54 |
| s551 | R91 | sumlo | lo | FPS | 285167/1000000 | s269,lo_PRS,s550,lo_FRS,s53 |
| s553 | R92 | sumlo | lo | HPS | 285167/1000000 | s270,lo_PRS,s550,lo_HRS,s53 |
| s555 | R94 | linear | lo | ABE | 205259/500000 | lo_ABP,s483,s491 |
| s557 | R95 | linear | lo | BHP | 53611/500000 | hi_ABH,lo_ABP,s486 |
| s564 | R98 | linear | lo | ABQ | 45501/125000 | lo_ABP,s531,lo_BPQ |
| s566 | R99 | linear | lo | ABR | 1719/5000 | lo_ABP,lo_APR,s493 |
| s569 | R100 | linear | lo | ACE | 126369/250000 | s410,s413,hi_CER |
| s570 | R102 | linear | lo | ACF | 392577/1000000 | lo_ACP,s485,lo_CFP |
| s572 | R103 | linear | lo | ACH | 392431/1000000 | lo_ACP,s486,lo_CHP |
| s574 | R104 | linear | hi | AHR | 782211/1000000 | hi_ACH,s410,hi_CHR |
| s575 | R105 | linear | lo | ACQ | 413117/1000000 | lo_ACP,s531,s532 |
| s577 | R106 | linear | lo | ACR | 17439/50000 | lo_ACP,lo_APR,s528 |
| s578 | R107 | linear | lo | AEF | 34859/100000 | lo_AEQ,s535,lo_EFQ |
| s579 | R108 | linear | lo | AEH | 174733/500000 | lo_AEQ,s536,lo_EHQ |
| s580 | R110 | linear | lo | AER | 63477/125000 | s547,lo_ARS,s548 |
| s583 | R115 | linear | lo | BCH | 146611/500000 | lo_BCP,s557,lo_CHP |
| s585 | R116 | linear | hi | BFQ | 671211/1000000 | hi_BEF,s505,lo_EFQ |
| s588 | R119 | linear | lo | BFQ | 205313/500000 | lo_BFP,lo_BPQ,s533 |
| s591 | R120 | linear | hi | FPR | 1291/2000 | lo_BFP,hi_BFR,s493 |
| s592 | R121 | linear | lo | BFR | 145997/200000 | s460,s545,lo_FRS |
| s594 | R122 | linear | lo | BHQ | 21449/50000 | s557,lo_BPQ,s534 |
| s599 | R125 | linear | lo | BQR | 215601/500000 | s463,s545,lo_QRS |
| s605 | R126 | linear | hi | CRS | 145667/1000000 | hi_CER,lo_CES,s548 |
| s611 | R131 | linear | lo | EFR | 56251/200000 | lo_EFQ,s507,lo_FQR |
| s616 | R134 | linear | lo | EHR | 63649/200000 | lo_EHQ,s507,s544 |
| s617 | R134 | linear | hi | HQR | 113411/250000 | lo_EHQ,s255,s507 |
| s621 | R137 | linear | lo | FPR | 471167/1000000 | s551,lo_FRS,lo_PRS |
| s623 | R138 | linear | lo | HPR | 471167/1000000 | s553,lo_HRS,lo_PRS |
| s625 | R141 | quad | lo | ACS | 303333/1000000 | s605 |
| s626 | R144 | bary_hi | lo | AFS | 21333/50000 | s570,s578,s469 |
| s627 | R145 | bary_hi | lo | AHS | 426831/1000000 | s572,s579,s470 |
| s629 | R146 | bary_hi | lo | AQS | 69809/250000 | s575,lo_AEQ,s471 |
| s630 | R148 | bary_hi | lo | BFS | 515177/1000000 | lo_BCF,lo_BEF,s592 |
| s632 | R149 | bary_hi | lo | BPS | 58067/500000 | lo_BCP,s491,s493 |
| s633 | R150 | bary_hi | lo | BQS | 224749/1000000 | s503,s505,s599 |
| s637 | R153 | bary_hi | lo | PQS | 178073/1000000 | s532,lo_EPQ,s480 |
| s638 | R1 | sum | lo | ABS | 151067/500000 | lo_ABP,lo_APS,s632 |
| s639 | R7 | sum | lo | AFR | 30633/50000 | s626,lo_ARS,lo_FRS |
| s640 | R8 | sum | lo | AHR | 612831/1000000 | s627,lo_ARS,lo_HRS |
| s641 | R9 | sum | lo | AQR | 116309/250000 | s629,lo_ARS,lo_QRS |
| s642 | R10 | sub | hi | BEQ | 196337/500000 | hi_BEF,s588,lo_EFQ |
| s645 | R13 | sub | hi | BPR | 332133/1000000 | hi_BFR,lo_BFP,s621 |
| s646 | R14 | sum | lo | BFR | 183407/250000 | s630,s545,lo_FRS |
| s651 | R16 | sum | lo | BQR | 277/625 | s633,s545,lo_QRS |
| s652 | R22 | sum | lo | PQR | 364073/1000000 | s637,lo_PRS,lo_QRS |
| s653 | R23 | sumlo | lo | ABF | 113717/1000000 | lo_ABH,s639,s566,lo_AFH,s574 |
| s655 | R24 | sumlo | lo | AEP | 26891/125000 | s569,lo_APR,lo_ACP,s580,hi_ACR |
| s657 | R25 | sumlo | lo | AFP | 106709/500000 | s570,lo_APR,lo_ACP,s639,hi_ACR |
| s658 | R26 | sumlo | lo | AHP | 13339/62500 | s572,lo_APR,lo_ACP,s640,hi_ACR |
| s663 | R31 | sumlo | lo | BCQ | 18319/100000 | s583,s651,lo_BCR,s594,hi_BHR |
| s664 | R33 | sumlo | lo | BEP | 114459/1000000 | lo_BEF,lo_BPQ,s505,lo_BFP,s585 |
| s666 | R35 | sumlo | lo | BPR | 10191/62500 | lo_BFP,s651,s646,lo_BPQ,s585 |
| s673 | R40 | sumlo | lo | CFP | 93057/1000000 | s522,s528,s439,lo_CHP,hi_CHR |
| s674 | R41 | sumlo | lo | BEQ | 67847/500000 | s555,lo_EFQ,lo_AEQ,lo_BEF,hi_AEF |
| s676 | R43 | sumlo | lo | EQR | 4847/50000 | lo_AEQ,s611,s580,lo_EFQ,hi_AEF |
| s677 | R46 | sumlo | lo | BFH | 99231/1000000 | s653,lo_EFH,lo_AFH,lo_BEF,hi_AEF |
| s682 | R50 | sumlo | lo | FHR | 115397/1000000 | s677,lo_FQR,s646,lo_FHQ,s585 |
| s687 | R51 | diff | lo | AHQ | 23687/125000 | s640,s594,hi_ABH,s617,hi_BHR |
| s688 | R52 | sumlo | lo | CFH | 4397/40000 | s572,s682,lo_AFH,s442,s574 |
| s692 | R56 | sumlo | lo | ABP | 94479/1000000 | lo_ACP,s666,lo_APR,lo_BCP,s19 |
| s694 | R59 | sumlo | lo | CPR | 164901/1000000 | lo_ACP,s623,lo_APR,lo_CHP,s14 |
| s696 | R60 | sumlo | lo | CPS | 22107/200000 | lo_ACP,s553,lo_APS,lo_CHP,s14 |
| s697 | R61 | sumlo | lo | APQ | 186771/1000000 | lo_ACP,s652,lo_APR,s532,s19 |
| s698 | R62 | sumlo | lo | CPQ | 148117/1000000 | lo_BCP,s652,lo_BPQ,s694,s645 |
| s699 | R63 | sumlo | lo | FPQ | 116937/500000 | lo_BFP,s652,lo_BPQ,s621,s645 |
| s700 | R64 | sumlo | lo | HPQ | 249463/1000000 | s557,s652,lo_BPQ,s623,s645 |
| s701 | R65 | sumlo | lo | AFQ | 91731/500000 | s564,lo_EFQ,lo_AEQ,s588,s642 |
| s703 | R69 | sumlo | lo | CRS | 93499/1000000 | s577,lo_HRS,lo_ARS,s442,s574 |
| s706 | R70 | sumlo | lo | ERS | 98213/1000000 | s580,lo_HRS,lo_ARS,s616,s574 |
| s708 | R71 | sumlo | lo | HQR | 33807/250000 | s640,lo_FQR,s641,s682,hi_AFR |
| s709 | R75 | sumlo | lo | BRS | 129189/1000000 | s646,lo_PRS,s666,lo_FRS,s591 |
| s711 | R77 | sumlo | lo | AES | 65341/200000 | s625,s269,s626,lo_CES,s54 |
| s714 | R85 | sumlo | lo | EPS | 29803/200000 | lo_CES,s551,s696,s269,s54 |
| s715 | R86 | sumlo | lo | CFS | 252663/1000000 | lo_CES,lo_FRS,s703,s269,s53 |
| s718 | R87 | diffhi | hi | EHS | 585497/1000000 | s55,s53,lo_CES,lo_HRS,s703 |
| s720 | R91 | sumlo | lo | FPS | 287247/1000000 | s269,lo_PRS,s714,lo_FRS,s53 |
| s723 | R92 | sumlo | lo | HPS | 287247/1000000 | s270,lo_PRS,s714,lo_HRS,s53 |
| s724 | R93 | linear | hi | AEH | 772047/1000000 | s555,hi_ABH,hi_BEH |
| s725 | R94 | linear | lo | ABE | 212033/500000 | s692,s655,s664 |
| s727 | R95 | linear | lo | BHP | 57847/500000 | hi_ABH,s692,s658 |
| s730 | R96 | linear | hi | ABR | 253281/500000 | hi_ABH,s640,hi_BHR |
| s731 | R96 | linear | lo | BHR | 382211/500000 | hi_ABH,s566,s640 |
| s733 | R97 | linear | lo | BHS | 134189/250000 | hi_ABH,s638,s627 |
| s735 | R98 | linear | lo | ABQ | 1497/4000 | s692,s697,lo_BPQ |
| s737 | R99 | linear | lo | ABR | 70107/200000 | s692,lo_APR,s666 |
| s738 | R99 | linear | hi | BPR | 319083/1000000 | s692,s730,lo_APR |
| s742 | R100 | linear | lo | ACE | 104867/200000 | s577,s580,hi_CER |
| s743 | R102 | linear | lo | ACF | 15979/40000 | lo_ACP,s657,s673 |
| s746 | R103 | linear | lo | ACH | 6241/15625 | lo_ACP,s658,lo_CHP |
| s748 | R104 | linear | hi | AHR | 774813/1000000 | hi_ACH,s577,hi_CHR |
| s749 | R104 | linear | lo | CHR | 114359/250000 | hi_ACH,s577,s640 |
| s750 | R105 | linear | lo | ACQ | 26743/62500 | lo_ACP,s697,s698 |
| s752 | R106 | linear | lo | ACR | 350901/1000000 | lo_ACP,lo_APR,s694 |
| s753 | R107 | linear | lo | AEF | 184731/500000 | lo_AEQ,s701,lo_EFQ |
| s754 | R108 | linear | lo | AEH | 46937/125000 | lo_AEQ,s687,lo_EHQ |
| s755 | R108 | linear | hi | AHQ | 586047/1000000 | s724,lo_AEQ,lo_EHQ |
| s756 | R110 | linear | lo | AER | 258959/500000 | s711,lo_ARS,s706 |
| s759 | R114 | linear | lo | BCF | 279057/1000000 | lo_BCP,lo_BFP,s673 |
| s760 | R115 | linear | lo | BCH | 150847/500000 | lo_BCP,s727,lo_CHP |
| s762 | R116 | linear | hi | BFQ | 333803/500000 | hi_BEF,s674,lo_EFQ |
| s767 | R119 | linear | lo | BFQ | 209937/500000 | lo_BFP,lo_BPQ,s699 |
| s771 | R121 | linear | lo | BFR | 368683/500000 | s630,s709,lo_FRS |
| s773 | R122 | linear | lo | BHQ | 458157/1000000 | s727,lo_BPQ,s700 |
| s778 | R125 | linear | lo | BQR | 223469/500000 | s633,s709,lo_QRS |
| s786 | R126 | linear | hi | CRS | 17631/125000 | hi_CER,lo_CES,s706 |
| s788 | R126 | linear | hi | ERS | 72881/500000 | hi_CER,lo_CES,s703 |
| s790 | R127 | linear | lo | CFR | 219581/500000 | s715,s703,lo_FRS |
| s791 | R127 | linear | hi | CFS | 80407/200000 | hi_CFR,s703,lo_FRS |
| s793 | R128 | linear | hi | CHS | 10823/25000 | hi_CHR,s703,lo_HRS |
| s794 | R129 | linear | lo | CPS | 116853/1000000 | s694,s786,lo_PRS |
| s806 | R133 | linear | lo | EHP | 435463/1000000 | lo_EHQ,lo_EPQ,s700 |
| s807 | R134 | linear | lo | EHR | 20323/62500 | lo_EHQ,s676,s708 |
| s811 | R136 | linear | hi | EHR | 638259/1000000 | s718,s788,lo_HRS |
| s814 | R137 | linear | lo | FPR | 473247/1000000 | s720,lo_FRS,lo_PRS |
| s816 | R138 | linear | lo | HPR | 473247/1000000 | s723,lo_HRS,lo_PRS |
| s818 | R141 | quad | lo | ACS | 19247/62500 | s786 |
| s819 | R142 | quad | lo | EFS | 151619/500000 | s788 |
| s820 | R143 | quad | lo | EHS | 151619/500000 | s788 |
| s822 | R144 | bary_hi | lo | AFS | 221987/500000 | s743,s753,s639 |
| s823 | R145 | bary_hi | lo | AHS | 446749/1000000 | s746,s754,s640 |
| s825 | R146 | bary_hi | lo | AQS | 71463/250000 | s750,lo_AEQ,s641 |
| s826 | R148 | bary_hi | lo | BFS | 16163/31250 | s759,lo_BEF,s771 |
| s827 | R149 | bary_hi | lo | BPS | 58979/500000 | lo_BCP,s664,s666 |
| s828 | R150 | bary_hi | lo | BQS | 58383/250000 | s663,s674,s778 |
| s833 | R152 | bary_lo | lo | HPS | 145051/500000 | lo_CHP,s806,s816 |
| s834 | R153 | bary_hi | lo | PQS | 4549/25000 | s698,lo_EPQ,s652 |
| s835 | R1 | sum | lo | ABS | 305437/1000000 | s692,lo_APS,s827 |
| s836 | R7 | sum | lo | AFR | 314987/500000 | s822,lo_ARS,lo_FRS |
| s837 | R8 | sum | lo | AHR | 632749/1000000 | s823,lo_ARS,lo_HRS |
| s838 | R9 | sum | lo | AQR | 117963/250000 | s825,lo_ARS,lo_QRS |
| s839 | R10 | sub | hi | BEQ | 191713/500000 | hi_BEF,s767,lo_EFQ |
| s842 | R14 | sum | lo | BFR | 147881/200000 | s826,s709,lo_FRS |
| s844 | R16 | sum | lo | BQR | 455721/1000000 | s828,s709,lo_QRS |
| s849 | R20 | sub | hi | HQR | 448319/1000000 | s811,lo_EHQ,s676 |
| s850 | R21 | sum | lo | HPR | 238051/500000 | s833,lo_HRS,lo_PRS |
| s851 | R22 | sum | lo | PQR | 9199/25000 | s834,lo_PRS,lo_QRS |
| s856 | R24 | sumlo | lo | AEP | 221277/1000000 | s742,lo_APR,lo_ACP,s756,hi_ACR |
| s857 | R25 | sumlo | lo | AFP | 218559/1000000 | s743,lo_APR,lo_ACP,s836,hi_ACR |
| s858 | R26 | sumlo | lo | AHP | 219137/1000000 | s746,lo_APR,lo_ACP,s837,hi_ACR |
| s859 | R27 | sumlo | lo | APQ | 191021/1000000 | lo_ACP,s838,s750,lo_APR,hi_ACR |
| s867 | R31 | sumlo | lo | BCQ | 607/3125 | s760,s844,lo_BCR,s773,hi_BHR |
| s869 | R33 | sumlo | lo | BEP | 115579/1000000 | lo_BEF,lo_BPQ,s674,lo_BFP,s762 |
| s871 | R35 | sumlo | lo | BPR | 33297/200000 | lo_BFP,s844,s842,lo_BPQ,s762 |
| s880 | R40 | sumlo | lo | CFP | 119/1250 | s688,s694,s790,lo_CHP,hi_CHR |
| s881 | R41 | sumlo | lo | BEQ | 68679/500000 | s725,lo_EFQ,lo_AEQ,lo_BEF,hi_AEF |
| s885 | R44 | sumlo | lo | EQR | 101557/1000000 | lo_AEQ,s807,s756,lo_EHQ,s724 |
| s888 | R48 | sumlo | lo | FHR | 14719/125000 | lo_AFH,lo_FQR,s836,lo_FHQ,s23 |
| s894 | R51 | diff | lo | AHQ | 219727/1000000 | s837,s773,hi_ABH,s849,hi_BHR |
| s895 | R52 | sumlo | lo | CFH | 115607/1000000 | s746,s888,lo_AFH,s749,s748 |
| s896 | R54 | sumlo | lo | FHR | 12187/100000 | lo_AFH,s708,s837,lo_FHQ,s755 |
| s899 | R55 | sumlo | lo | HQS | 124239/1000000 | s773,lo_HRS,s733,s708,hi_BHR |
| s900 | R56 | sumlo | lo | ABP | 1496/15625 | lo_ACP,s871,lo_APR,lo_BCP,s19 |
| s902 | R59 | sumlo | lo | CPR | 166343/1000000 | lo_ACP,s850,lo_APR,lo_CHP,s14 |
| s904 | R62 | sumlo | lo | CPQ | 9733/62500 | lo_BCP,s851,lo_BPQ,s902,s738 |
| s905 | R63 | sumlo | lo | FPQ | 122589/500000 | lo_BFP,s851,lo_BPQ,s814,s738 |
| s906 | R64 | sumlo | lo | HPQ | 13609/50000 | s727,s851,lo_BPQ,s850,s738 |
| s907 | R65 | sumlo | lo | AFQ | 96307/500000 | s735,lo_EFQ,lo_AEQ,s767,s839 |
| s908 | R68 | sumlo | lo | BRS | 133827/1000000 | s737,lo_HRS,lo_ARS,s731,s748 |
| s909 | R69 | sumlo | lo | CRS | 97023/1000000 | s752,lo_HRS,lo_ARS,s749,s748 |
| s912 | R70 | sumlo | lo | ERS | 50597/500000 | s756,lo_HRS,lo_ARS,s807,s748 |
| s914 | R71 | sumlo | lo | HQR | 35539/250000 | s837,lo_FQR,s838,s896,hi_AFR |
| s919 | R77 | sumlo | lo | AES | 5234/15625 | s818,s819,s822,lo_CES,s791 |
| s922 | R85 | sumlo | lo | EPS | 19323/125000 | lo_CES,s720,s794,s819,s791 |
| s923 | R86 | sumlo | lo | CFS | 261179/1000000 | lo_CES,lo_FRS,s909,s819,s788 |
| s926 | R87 | diffhi | hi | EHS | 140313/250000 | s793,s788,lo_CES,lo_HRS,s909 |
| s928 | R91 | sumlo | lo | FPS | 146051/500000 | s819,lo_PRS,s922,lo_FRS,s788 |
| s930 | R92 | sumlo | lo | HPS | 146051/500000 | s820,lo_PRS,s922,lo_HRS,s788 |
| s933 | R93 | linear | hi | AEH | 758499/1000000 | s725,hi_ABH,hi_BEH |
| s934 | R94 | linear | lo | ABE | 2163/5000 | s900,s856,s869 |
| s936 | R95 | linear | lo | BHP | 7667/62500 | hi_ABH,s900,s858 |
| s938 | R96 | linear | hi | AHR | 384429/500000 | hi_ABH,s737,hi_BHR |
| s939 | R96 | linear | hi | ABR | 121661/250000 | hi_ABH,s837,hi_BHR |
| s940 | R96 | linear | lo | BHR | 31643/40000 | hi_ABH,s737,s837 |
| s942 | R97 | linear | lo | BHS | 559977/1000000 | hi_ABH,s835,s823 |
| s944 | R98 | linear | lo | ABQ | 75953/200000 | s900,s859,lo_BPQ |
| s946 | R99 | linear | lo | ABR | 355229/1000000 | s900,lo_APR,s871 |
| s947 | R99 | linear | hi | BPR | 2979/10000 | s900,s939,lo_APR |
| s952 | R102 | linear | lo | ACF | 406759/1000000 | lo_ACP,s857,s880 |
| s955 | R103 | linear | lo | ACH | 405137/1000000 | lo_ACP,s858,lo_CHP |
| s957 | R104 | linear | lo | CHR | 19179/40000 | hi_ACH,s752,s837 |
| s958 | R105 | linear | lo | ACQ | 439749/1000000 | lo_ACP,s859,s904 |
| s960 | R106 | linear | lo | ACR | 352343/1000000 | lo_ACP,lo_APR,s902 |
| s961 | R107 | linear | lo | AEF | 189307/500000 | lo_AEQ,s907,lo_EFQ |
| s962 | R108 | linear | lo | AEH | 405727/1000000 | lo_AEQ,s894,lo_EHQ |
| s963 | R108 | linear | hi | AHQ | 572499/1000000 | s933,lo_AEQ,lo_EHQ |
| s964 | R110 | linear | lo | AER | 52917/100000 | s919,lo_ARS,s912 |
| s967 | R114 | linear | lo | BCF | 703/2500 | lo_BCP,lo_BFP,s880 |
| s968 | R115 | linear | lo | BCH | 4823/15625 | lo_BCP,s936,lo_CHP |
| s970 | R116 | linear | hi | BFQ | 332971/500000 | hi_BEF,s881,lo_EFQ |
| s973 | R117 | linear | hi | BHQ | 379999/500000 | hi_BEH,s881,lo_EHQ |
| s976 | R119 | linear | lo | BFQ | 215589/500000 | lo_BFP,lo_BPQ,s905 |
| s980 | R121 | linear | lo | BFR | 744043/1000000 | s826,s908,lo_FRS |
| s982 | R122 | linear | lo | BHQ | 121963/250000 | s936,lo_BPQ,s906 |
| s985 | R123 | linear | hi | HPR | 159507/250000 | s936,hi_BHR,s871 |
| s987 | R125 | linear | lo | BQR | 460359/1000000 | s828,s908,lo_QRS |
| s997 | R126 | linear | hi | CRS | 138067/1000000 | hi_CER,lo_CES,s912 |
| s999 | R126 | linear | hi | ERS | 71119/500000 | hi_CER,lo_CES,s909 |
| s1001 | R127 | linear | lo | CFR | 225601/500000 | s923,s909,lo_FRS |
| s1002 | R127 | linear | hi | CFS | 398511/1000000 | hi_CFR,s909,lo_FRS |
| s1004 | R128 | linear | hi | CHS | 107349/250000 | hi_CHR,s909,lo_HRS |
| s1005 | R129 | linear | lo | CPS | 30319/250000 | s902,s997,lo_PRS |
| s1018 | R133 | linear | lo | EHP | 22909/50000 | lo_EHQ,lo_EPQ,s906 |
| s1019 | R134 | linear | lo | EHR | 336713/1000000 | lo_EHQ,s885,s914 |
| s1022 | R135 | linear | lo | EHS | 310239/1000000 | lo_EHQ,lo_EQS,s899 |
| s1024 | R136 | linear | hi | EHR | 61049/100000 | s926,s999,lo_HRS |
| s1030 | R138 | linear | lo | HPR | 239051/500000 | s930,lo_HRS,lo_PRS |
| s1033 | R142 | quad | lo | EFS | 153381/500000 | s999 |
| s1035 | R144 | bary_hi | lo | AFS | 227421/500000 | s952,s961,s836 |
| s1036 | R145 | bary_hi | lo | AHS | 467373/1000000 | s955,s962,s837 |
| s1038 | R146 | bary_hi | lo | AQS | 290891/1000000 | s958,lo_AEQ,s838 |
| s1039 | R148 | bary_hi | lo | BFS | 520011/1000000 | s967,lo_BEF,s980 |
| s1040 | R149 | bary_hi | lo | BPS | 119199/1000000 | lo_BCP,s869,s871 |
| s1041 | R150 | bary_hi | lo | BQS | 120481/500000 | s867,s881,s987 |
| s1046 | R152 | bary_lo | lo | HPS | 148811/500000 | lo_CHP,s1018,s1030 |
| s1047 | R153 | bary_hi | lo | PQS | 23137/125000 | s904,lo_EPQ,s851 |
| s1048 | R1 | sum | lo | ABS | 307943/1000000 | s900,lo_APS,s1040 |
| s1049 | R7 | sum | lo | AFR | 320421/500000 | s1035,lo_ARS,lo_FRS |
| s1050 | R8 | sum | lo | AHR | 653373/1000000 | s1036,lo_ARS,lo_HRS |
| s1051 | R9 | sum | lo | AQR | 476891/1000000 | s1038,lo_ARS,lo_QRS |
| s1052 | R10 | sub | hi | BEQ | 186061/500000 | hi_BEF,s976,lo_EFQ |
| s1054 | R12 | sum | lo | BEH | 71821/100000 | s881,s982,lo_EHQ |
| s1056 | R14 | sum | lo | BFR | 373419/500000 | s1039,s908,lo_FRS |
| s1058 | R16 | sum | lo | BQR | 467789/1000000 | s1041,s908,lo_QRS |
| s1063 | R20 | sub | hi | HQR | 415933/1000000 | s1024,lo_EHQ,s885 |
| s1064 | R21 | sum | lo | HPR | 241811/500000 | s1046,lo_HRS,lo_PRS |
| s1065 | R22 | sum | lo | PQR | 46387/125000 | s1047,lo_PRS,lo_QRS |
| s1071 | R25 | sumlo | lo | AFP | 55603/250000 | s952,lo_APR,lo_ACP,s1049,hi_ACR |
| s1072 | R26 | sumlo | lo | AHP | 28091/125000 | s955,lo_APR,lo_ACP,s1050,hi_ACR |
| s1073 | R27 | sumlo | lo | APQ | 12163/62500 | lo_ACP,s1051,s958,lo_APR,hi_ACR |
| s1078 | R31 | sumlo | lo | BCQ | 102333/500000 | s968,s1058,lo_BCR,s982,hi_BHR |
| s1080 | R33 | sumlo | lo | BEP | 1161/10000 | lo_BEF,lo_BPQ,s881,lo_BFP,s970 |
| s1085 | R36 | sumlo | lo | BPR | 172309/1000000 | s936,s1058,s940,lo_BPQ,s973 |
| s1093 | R40 | sumlo | lo | CFP | 98789/1000000 | s895,s902,s1001,lo_CHP,hi_CHR |
| s1097 | R42 | sumlo | lo | BEQ | 141101/1000000 | s934,lo_EHQ,lo_AEQ,s1054,s933 |
| s1101 | R44 | sumlo | lo | EQR | 53083/500000 | lo_AEQ,s1019,s964,lo_EHQ,s933 |
| s1109 | R51 | diff | lo | AHQ | 257557/1000000 | s1050,s982,hi_ABH,s1063,hi_BHR |
| s1112 | R54 | sumlo | lo | FHR | 12923/100000 | lo_AFH,s914,s1050,lo_FHQ,s963 |
| s1116 | R55 | sumlo | lo | HQS | 134789/1000000 | s982,lo_HRS,s942,s914,hi_BHR |
| s1117 | R56 | sumlo | lo | ABP | 97893/1000000 | lo_ACP,s1085,lo_APR,lo_BCP,s19 |
| s1119 | R59 | sumlo | lo | CPR | 168541/1000000 | lo_ACP,s1064,lo_APR,lo_CHP,s14 |
| s1121 | R62 | sumlo | lo | CPQ | 84233/500000 | lo_BCP,s1065,lo_BPQ,s1119,s947 |
| s1123 | R64 | sumlo | lo | HPQ | 18987/62500 | s936,s1065,lo_BPQ,s1064,s947 |
| s1124 | R65 | sumlo | lo | AFQ | 202669/1000000 | s944,lo_EFQ,lo_AEQ,s976,s1052 |
| s1126 | R68 | sumlo | lo | BRS | 27731/200000 | s946,lo_HRS,lo_ARS,s940,s938 |
| s1127 | R69 | sumlo | lo | CRS | 20123/200000 | s960,lo_HRS,lo_ARS,s957,s938 |
| s1130 | R70 | sumlo | lo | ERS | 3273/31250 | s964,lo_HRS,lo_ARS,s1019,s938 |
| s1132 | R71 | sumlo | lo | HQR | 74769/500000 | s1050,lo_FQR,s1051,s1112,hi_AFR |
| s1136 | R74 | sumlo | lo | FRS | 23559/250000 | s1056,lo_HRS,s1126,s1112,hi_BHR |
| s1137 | R76 | sumlo | lo | BRS | 17553/125000 | s940,lo_PRS,s1085,lo_HRS,s985 |
| s1146 | R85 | sumlo | lo | EPS | 80761/500000 | lo_CES,s928,s1005,s1033,s1002 |
| s1150 | R87 | diffhi | hi | EHS | 52107/100000 | s1004,s999,lo_CES,lo_HRS,s1127 |
| s1152 | R91 | sumlo | lo | FPS | 307583/1000000 | s1033,lo_PRS,s1146,s1136,s999 |
| s1154 | R92 | sumlo | lo | HPS | 308453/1000000 | s1022,lo_PRS,s1146,lo_HRS,s999 |
| s1156 | R93 | linear | hi | AEH | 149993/200000 | s934,hi_ABH,hi_BEH |
| s1159 | R95 | linear | lo | BHP | 32603/250000 | hi_ABH,s1117,s1072 |
| s1161 | R96 | linear | hi | AHR | 191041/250000 | hi_ABH,s946,hi_BHR |
| s1162 | R96 | linear | hi | ABR | 23301/50000 | hi_ABH,s1050,hi_BHR |
| s1165 | R97 | linear | lo | BHS | 583107/1000000 | hi_ABH,s1048,s1036 |
| s1167 | R98 | linear | lo | ABQ | 385501/1000000 | s1117,s1073,lo_BPQ |
| s1169 | R99 | linear | lo | ABR | 181601/500000 | s1117,lo_APR,s1085 |
| s1170 | R99 | linear | hi | BPR | 275127/1000000 | s1117,s1162,lo_APR |
| s1178 | R102 | linear | lo | ACF | 414201/1000000 | lo_ACP,s1071,s1093 |
| s1181 | R103 | linear | lo | ACH | 51341/125000 | lo_ACP,s1072,lo_CHP |
| s1183 | R104 | linear | lo | CHR | 501541/1000000 | hi_ACH,s960,s1050 |
| s1187 | R106 | linear | lo | ACR | 354541/1000000 | lo_ACP,lo_APR,s1119 |
| s1189 | R107 | linear | lo | AEF | 388669/1000000 | lo_AEQ,s1124,lo_EFQ |
| s1190 | R108 | linear | lo | AEH | 443557/1000000 | lo_AEQ,s1109,lo_EHQ |
| s1191 | R108 | linear | hi | AHQ | 112793/200000 | s1156,lo_AEQ,lo_EHQ |
| s1194 | R111 | linear | lo | AFR | 321039/500000 | s1035,lo_ARS,s1136 |
| s1196 | R112 | linear | hi | AHS | 144541/250000 | s1161,lo_ARS,lo_HRS |
| s1198 | R114 | linear | lo | BCF | 284789/1000000 | lo_BCP,lo_BFP,s1093 |
| s1199 | R115 | linear | lo | BCH | 79103/250000 | lo_BCP,s1159,lo_CHP |
| s1205 | R117 | linear | hi | BHQ | 151251/200000 | hi_BEH,s1097,lo_EHQ |
| s1214 | R121 | linear | lo | BFR | 754671/1000000 | s1039,s1137,s1136 |
| s1216 | R122 | linear | lo | BHQ | 131801/250000 | s1159,lo_BPQ,s1123 |
| s1219 | R123 | linear | hi | HPR | 39029/62500 | s1159,hi_BHR,s1085 |
| s1221 | R124 | linear | lo | BHR | 816531/1000000 | s1165,s1137,lo_HRS |
| s1222 | R124 | linear | hi | BHS | 693761/1000000 | hi_BHR,s1137,lo_HRS |
| s1223 | R125 | linear | lo | BQR | 237193/500000 | s1041,s1137,lo_QRS |
| s1232 | R126 | linear | hi | CRS | 5381/40000 | hi_CER,lo_CES,s1130 |
| s1234 | R126 | linear | hi | ERS | 69323/500000 | hi_CER,lo_CES,s1127 |
| s1237 | R127 | linear | hi | CFS | 393683/1000000 | hi_CFR,s1127,s1136 |
| s1240 | R129 | linear | lo | CPS | 15877/125000 | s1119,s1232,lo_PRS |
| s1254 | R133 | linear | lo | EHP | 7653/15625 | lo_EHQ,lo_EPQ,s1123 |
| s1259 | R135 | linear | lo | EHS | 320789/1000000 | lo_EHQ,lo_EQS,s1116 |
| s1261 | R136 | linear | hi | EHR | 141679/250000 | s1150,s1234,lo_HRS |
| s1265 | R137 | linear | lo | FPR | 494819/1000000 | s1152,s1136,lo_PRS |
| s1267 | R138 | linear | lo | HPR | 494453/1000000 | s1154,lo_HRS,lo_PRS |
| s1268 | R138 | linear | hi | HPS | 6851/15625 | s1219,lo_HRS,lo_PRS |
| s1269 | R141 | quad | lo | ACS | 12579/40000 | s1232 |
| s1270 | R142 | quad | lo | EFS | 155177/500000 | s1234 |
| s1272 | R144 | bary_hi | lo | AFS | 464743/1000000 | s1178,s1189,s1194 |
| s1273 | R145 | bary_hi | lo | AHS | 485857/1000000 | s1181,s1190,s1050 |
| s1275 | R148 | bary_hi | lo | BFS | 524541/1000000 | s1198,lo_BEF,s1214 |
| s1276 | R149 | bary_hi | lo | BPS | 120929/1000000 | lo_BCP,s1080,s1085 |
| s1277 | R150 | bary_hi | lo | BQS | 62333/250000 | s1078,s1097,s1223 |
| s1279 | R152 | bary_lo | lo | HPS | 310703/1000000 | lo_CHP,s1254,s1267 |
| s1280 | R153 | bary_hi | lo | PQS | 94713/500000 | s1121,lo_EPQ,s1065 |
| s1281 | R1 | sum | lo | ABS | 155911/500000 | s1117,lo_APS,s1276 |
| s1284 | R8 | sum | lo | AHR | 671857/1000000 | s1273,lo_ARS,lo_HRS |
| s1288 | R12 | sum | lo | BEH | 152261/200000 | s1097,s1216,lo_EHQ |
| s1289 | R13 | sum | lo | BFR | 11877/15625 | lo_BFP,s1085,s1265 |
| s1292 | R16 | sum | lo | BQR | 120689/250000 | s1277,s1137,lo_QRS |
| s1298 | R20 | sub | hi | HQR | 7351/20000 | s1261,lo_EHQ,s1101 |
| s1299 | R21 | sum | lo | HPR | 496703/1000000 | s1279,lo_HRS,lo_PRS |
| s1300 | R22 | sum | lo | PQR | 187713/500000 | s1280,lo_PRS,lo_QRS |
| s1306 | R26 | sumlo | lo | AHP | 2873/12500 | s1181,lo_APR,lo_ACP,s1284,hi_ACR |
| s1312 | R31 | sumlo | lo | BCQ | 108813/500000 | s1199,s1292,lo_BCR,s1216,hi_BHR |
| s1313 | R32 | sumlo | lo | BCS | 106409/1000000 | s1199,s1137,lo_BCR,s1165,hi_BHR |
| s1316 | R34 | sumlo | lo | BEP | 117953/1000000 | s1288,lo_BPQ,s1097,s1159,s1205 |
| s1321 | R36 | sumlo | lo | BPR | 183661/1000000 | s1159,s1292,s1221,lo_BPQ,s1205 |
| s1344 | R51 | diff | lo | AHQ | 76457/250000 | s1284,s1216,hi_ABH,s1298,hi_BHR |
| s1347 | R54 | sumlo | lo | FHR | 135451/1000000 | lo_AFH,s1132,s1284,lo_FHQ,s1191 |
| s1352 | R56 | sumlo | lo | ABP | 51041/500000 | lo_ACP,s1321,lo_APR,lo_BCP,s19 |
| s1354 | R59 | sumlo | lo | CPR | 34473/200000 | lo_ACP,s1299,lo_APR,lo_CHP,s14 |
| s1357 | R62 | sumlo | lo | CPQ | 185167/1000000 | lo_BCP,s1300,lo_BPQ,s1354,s1170 |
| s1360 | R64 | sumlo | lo | HPQ | 86463/250000 | s1159,s1300,lo_BPQ,s1299,s1170 |
| s1362 | R66 | sumlo | lo | BEQ | 37627/250000 | s1167,lo_EHQ,lo_AEQ,s1216,s1191 |
| s1365 | R68 | sumlo | lo | BRS | 5743/40000 | s1169,lo_HRS,lo_ARS,s1221,s1161 |
| s1366 | R69 | sumlo | lo | CRS | 52093/500000 | s1187,lo_HRS,lo_ARS,s1183,s1161 |
| s1379 | R74 | sumlo | lo | FRS | 48609/500000 | s1289,lo_HRS,s1365,s1347,hi_BHR |
| s1387 | R77 | sumlo | lo | AES | 178849/500000 | s1269,s1270,s1272,lo_CES,s1237 |
| s1389 | R81 | sumlo | lo | ERS | 109137/1000000 | s1387,lo_HRS,lo_ARS,s1259,s1196 |
| s1391 | R82 | sumlo | lo | BES | 103899/500000 | s1313,s1270,s1275,lo_CES,s1237 |
| s1393 | R84 | sumlo | lo | BRS | 9333/62500 | s1165,lo_PRS,s1276,lo_HRS,s1268 |
| s1394 | R85 | sumlo | lo | EPS | 172791/1000000 | lo_CES,s1152,s1240,s1270,s1237 |
| s1401 | R91 | sumlo | lo | FPS | 329337/1000000 | s1270,lo_PRS,s1394,s1379,s1234 |
| s1403 | R92 | sumlo | lo | HPS | 8277/25000 | s1259,lo_PRS,s1394,lo_HRS,s1234 |
| s1404 | R92 | diffhi | hi | EHS | 480879/1000000 | s1234,s1268,s1394,lo_HRS,lo_PRS |
| s1410 | R95 | linear | lo | BHP | 139713/1000000 | hi_ABH,s1352,s1306 |
| s1414 | R96 | linear | hi | ABR | 27971/62500 | hi_ABH,s1284,hi_BHR |
| s1416 | R97 | linear | hi | AHS | 143537/250000 | hi_ABH,s1281,s1222 |
| s1418 | R97 | linear | lo | BHS | 60547/100000 | hi_ABH,s1281,s1273 |
| s1424 | R99 | linear | hi | BPR | 126227/500000 | s1352,s1414,lo_APR |
| s1435 | R103 | linear | lo | ACH | 2599/6250 | lo_ACP,s1306,lo_CHP |
| s1445 | R108 | linear | lo | AEH | 122957/250000 | lo_AEQ,s1344,lo_EHQ |
| s1447 | R109 | linear | hi | AEH | 697329/1000000 | s1387,s1416,s1404 |
| s1455 | R115 | linear | lo | BCH | 325713/1000000 | lo_BCP,s1410,lo_CHP |
| s1465 | R118 | linear | hi | BEH | 483421/500000 | s1391,s1222,s1404 |
| s1480 | R122 | linear | lo | BHQ | 115713/200000 | s1410,lo_BPQ,s1360 |
| s1483 | R123 | linear | hi | HPR | 603811/1000000 | s1410,hi_BHR,s1321 |
| s1488 | R124 | linear | lo | BHR | 423899/500000 | s1418,s1393,lo_HRS |
| s1490 | R124 | linear | hi | BHS | 684857/1000000 | hi_BHR,s1393,lo_HRS |
| s1491 | R125 | linear | lo | BQR | 24583/50000 | s1277,s1393,lo_QRS |
| s1500 | R126 | linear | hi | CRS | 32531/250000 | hi_CER,lo_CES,s1389 |
| s1502 | R126 | linear | hi | ERS | 5403/40000 | hi_CER,lo_CES,s1366 |
| s1505 | R127 | linear | hi | CFS | 38713/100000 | hi_CFR,s1366,s1379 |
| s1509 | R129 | linear | lo | CPS | 135241/1000000 | s1354,s1500,lo_PRS |
| s1544 | R138 | linear | lo | HPR | 12927/25000 | s1403,lo_HRS,lo_PRS |
| s1545 | R138 | linear | hi | HPS | 417811/1000000 | s1483,lo_HRS,lo_PRS |
| s1547 | R142 | quad | lo | EFS | 12557/40000 | s1502 |
| s1550 | R145 | bary_hi | lo | AHS | 253193/500000 | s1435,s1445,s1284 |
| s1552 | R149 | bary_hi | lo | BPS | 124531/1000000 | lo_BCP,s1316,s1321 |
| s1553 | R150 | bary_hi | lo | BQS | 130927/500000 | s1312,s1362,s1491 |
| s1555 | R153 | bary_hi | lo | PQS | 195161/1000000 | s1357,lo_EPQ,s1300 |
| s1560 | R5 | sub | hi | AHQ | 511329/1000000 | s1447,lo_AEQ,lo_EHQ |
| s1562 | R8 | sum | lo | AHR | 346193/500000 | s1550,lo_ARS,lo_HRS |
| s1570 | R12 | sum | lo | BEH | 822073/1000000 | s1362,s1480,lo_EHQ |
| s1572 | R12 | sub | hi | BHQ | 361667/500000 | s1465,s1362,lo_EHQ |
| s1577 | R15 | sum | lo | BFS | 136717/250000 | lo_BFP,s1552,s1401 |
| s1580 | R16 | sum | lo | BQR | 252091/500000 | s1553,s1393,lo_QRS |
| s1591 | R22 | sum | lo | PQR | 381161/1000000 | s1555,lo_PRS,lo_QRS |
| s1599 | R26 | sumlo | lo | AHP | 58821/250000 | s1435,lo_APR,lo_ACP,s1562,hi_ACR |
| s1608 | R32 | sumlo | lo | BCS | 28297/250000 | s1455,s1393,lo_BCR,s1418,hi_BHR |
| s1611 | R34 | sumlo | lo | BEP | 26953/200000 | s1570,lo_BPQ,s1362,s1410,s1572 |
| s1622 | R36 | sumlo | lo | BPR | 41277/200000 | s1410,s1580,s1488,lo_BPQ,s1572 |
| s1679 | R56 | sumlo | lo | ABP | 110467/1000000 | lo_ACP,s1622,lo_APR,lo_BCP,s19 |
| s1683 | R61 | sumlo | lo | APQ | 208963/1000000 | lo_ACP,s1591,lo_APR,s1357,s19 |
| s1690 | R64 | sumlo | lo | HPQ | 16057/40000 | s1410,s1591,lo_BPQ,s1544,s1424 |
| s1704 | R67 | sumlo | lo | EPQ | 13877/125000 | lo_AEQ,s1690,s1683,lo_EHQ,s1560 |
| s1756 | R82 | sumlo | lo | BES | 111579/500000 | s1608,s1547,s1577,lo_CES,s1505 |
| s1769 | R85 | sumlo | lo | EPS | 188783/1000000 | lo_CES,s1401,s1509,s1547,s1505 |
| s1783 | R92 | diffhi | hi | EHS | 209027/500000 | s1502,s1545,s1769,lo_HRS,lo_PRS |
| s1796 | R95 | linear | lo | BHP | 76771/500000 | hi_ABH,s1679,s1599 |
| s1885 | R118 | linear | hi | BEH | 879753/1000000 | s1756,s1490,s1783 |
| s1969 | R133 | linear | lo | EHP | 605441/1000000 | lo_EHQ,s1704,s1690 |
| s2044 | R11 | sum | lo | BEH | 223437/250000 | s1611,s1796,s1969 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BEH | s2044 | s1885 |

The two cited bounds give 223437/250000 <= |BEH| <= 879753/1000000, with exact positive gap 2799/200000.

## Leaf A007

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 279/1000 | cost:Q |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFH | BFH | lo | 279/1000 | cost:P |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BFR | BFR | lo | 279/1000 | cost:S |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHQ | BHQ | lo | 279/1000 | cost:P |
| lo_BHR | BHR | lo | 347/500 | cost:PS |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_CQR | CQR | lo | 279/1000 | cost:S |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFP | EFP | lo | 279/1000 | cost:Q |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:Q |
| lo_EFS | EFS | lo | 279/1000 | cost:Q |
| lo_EHP | EHP | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 279/1000 | cost:Q |
| lo_EHS | EHS | lo | 279/1000 | cost:Q |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 93/1000 | cost: |
| lo_EQS | EQS | lo | 93/1000 | cost: |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ABE | ABE | hi | 43477363/64397000 | C028 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFH | BFH | hi | 77/125 | C015 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BQR | BQR | hi | 174239288766899/214807390000000 | C017 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EHS | EHS | hi | 16865932234155493/25254596950000000 | C039 |
| hi_HPR | HPR | hi | 1697845810031659129/2459523134761000000 | C037 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ABE","ABP","AEP","BEP"] | ["fan","ABE","P"] |
| R1 | fan | ["BFH","BFP","BHP","FHP"] | ["fan","BFH","P"] |
| R2 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R3 | fan | ["BHR","BHS","BRS","HRS"] | ["fan","BHR","S"] |
| R4 | fan | ["BHS","BHP","BPS","HPS"] | ["fan","BHS","P"] |
| R5 | fan | ["BQR","BQS","BRS","QRS"] | ["fan","BQR","S"] |
| R6 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R7 | fan | ["CFR","CFS","CRS","FRS"] | ["fan","CFR","S"] |
| R8 | fan | ["CHR","CHS","CRS","HRS"] | ["fan","CHR","S"] |
| R9 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R10 | fan | ["FPR","FPS","FRS","PRS"] | ["fan","FPR","S"] |
| R11 | fan | ["PQR","PQS","PRS","QRS"] | ["fan","PQR","S"] |
| R12 | plu | ["BCQ","BHR","BCH","BQR","BCR","BHQ"] | ["plu","BCHQR"] |
| R13 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R14 | plu | ["BEP","BFH","BEF","BHP","BEH","BFP"] | ["plu","BEFHP"] |
| R15 | plu | ["BFH","BPR","BFP","BHR","BFR","BHP"] | ["plu","BFHPR"] |
| R16 | plu | ["BFH","BPS","BFP","BHS","BFS","BHP"] | ["plu","BFHPS"] |
| R17 | plu | ["ACR","BCE","ABC","CER","ACE","BCR"] | ["plu","CABER"] |
| R18 | plu | ["ACH","CPR","ACP","CHR","ACR","CHP"] | ["plu","CAHPR"] |
| R19 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R20 | plu | ["BCF","CHR","BCH","CFR","BCR","CFH"] | ["plu","CBFHR"] |
| R21 | plu | ["BCQ","CHR","BCH","CQR","BCR","CHQ"] | ["plu","CBHQR"] |
| R22 | plu | ["CEP","CFR","CEF","CPR","CER","CFP"] | ["plu","CEFPR"] |
| R23 | plu | ["AEH","BEQ","ABE","EHQ","AEQ","BEH"] | ["plu","EABHQ"] |
| R24 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R25 | plu | ["BER","CEP","BCE","EPR","BEP","CER"] | ["plu","EBCPR"] |
| R26 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R27 | plu | ["BEF","EHS","BEH","EFS","BES","EFH"] | ["plu","EBFHS"] |
| R28 | plu | ["CER","EPS","CEP","ERS","CES","EPR"] | ["plu","ECPRS"] |
| R29 | plu | ["BFR","CFP","BCF","FPR","BFP","CFR"] | ["plu","FBCPR"] |
| R30 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R31 | plu | ["BEF","FHS","BFH","EFS","BFS","EFH"] | ["plu","FBEHS"] |
| R32 | plu | ["BFQ","FHR","BFH","FQR","BFR","FHQ"] | ["plu","FBHQR"] |
| R33 | plu | ["EFR","FPQ","EFP","FQR","EFQ","FPR"] | ["plu","FEPQR"] |
| R34 | plu | ["BEH","CFH","BCH","EFH","BFH","CEH"] | ["plu","HBCEF"] |
| R35 | plu | ["BHR","CFH","BCH","FHR","BFH","CHR"] | ["plu","HBCFR"] |
| R36 | plu | ["BEH","FHR","BFH","EHR","BHR","EFH"] | ["plu","HBEFR"] |
| R37 | plu | ["BPR","CPQ","BCP","PQR","BPQ","CPR"] | ["plu","PBCQR"] |
| R38 | plu | ["BEP","FHP","BFP","EHP","BHP","EFP"] | ["plu","PBEFH"] |
| R39 | plu | ["BPR","FHP","BFP","HPR","BHP","FPR"] | ["plu","PBFHR"] |
| R40 | plu | ["BPR","HPQ","BHP","PQR","BPQ","HPR"] | ["plu","PBHQR"] |
| R41 | plu | ["BQR","CHQ","BCQ","HQR","BHQ","CQR"] | ["plu","QBCHR"] |
| R42 | plu | ["BFQ","EQR","BEQ","FQR","BQR","EFQ"] | ["plu","QBEFR"] |
| R43 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R44 | plu | ["BFR","CPR","BCR","FPR","BPR","CFR"] | ["plu","RBCFP"] |
| R45 | plu | ["BQR","CHR","BCR","HQR","BHR","CQR"] | ["plu","RBCHQ"] |
| R46 | plu | ["BFR","EHR","BER","FHR","BHR","EFR"] | ["plu","RBEFH"] |
| R47 | plu | ["BHR","ERS","BER","HRS","BRS","EHR"] | ["plu","RBEHS"] |
| R48 | plu | ["BFR","HQR","BHR","FQR","BQR","FHR"] | ["plu","RBFHQ"] |
| R49 | plu | ["BRS","HPR","BHR","PRS","BPR","HRS"] | ["plu","RBHPS"] |
| R50 | plu | ["CRS","EPR","CER","PRS","CPR","ERS"] | ["plu","RCEPS"] |
| R51 | plu | ["CFR","HQR","CHR","FQR","CQR","FHR"] | ["plu","RCFHQ"] |
| R52 | plu | ["CHR","FRS","CFR","HRS","CRS","FHR"] | ["plu","RCFHS"] |
| R53 | plu | ["CRS","HPR","CHR","PRS","CPR","HRS"] | ["plu","RCHPS"] |
| R54 | plu | ["ERS","HPR","EHR","PRS","EPR","HRS"] | ["plu","REHPS"] |
| R55 | plu | ["FRS","HPR","FHR","PRS","FPR","HRS"] | ["plu","RFHPS"] |
| R56 | plu | ["BES","CHS","BCS","EHS","BHS","CES"] | ["plu","SBCEH"] |
| R57 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R58 | plu | ["BFS","EPS","BES","FPS","BPS","EFS"] | ["plu","SBEFP"] |
| R59 | plu | ["BFS","ERS","BES","FRS","BRS","EFS"] | ["plu","SBEFR"] |
| R60 | plu | ["BRS","EPS","BES","PRS","BPS","ERS"] | ["plu","SBEPR"] |
| R61 | plu | ["BQS","ERS","BES","QRS","BRS","EQS"] | ["plu","SBEQR"] |
| R62 | plu | ["BHS","FRS","BFS","HRS","BRS","FHS"] | ["plu","SBFHR"] |
| R63 | plu | ["CFS","EPS","CES","FPS","CPS","EFS"] | ["plu","SCEFP"] |
| R64 | plu | ["CFS","ERS","CES","FRS","CRS","EFS"] | ["plu","SCEFR"] |
| R65 | plu | ["CHS","ERS","CES","HRS","CRS","EHS"] | ["plu","SCEHR"] |
| R66 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R67 | plu | ["CQS","ERS","CES","QRS","CRS","EQS"] | ["plu","SCEQR"] |
| R68 | plu | ["CRS","PQS","CPS","QRS","CQS","PRS"] | ["plu","SCPQR"] |
| R69 | plu | ["ERS","FPS","EFS","PRS","EPS","FRS"] | ["plu","SEFPR"] |
| R70 | plu | ["ERS","HPS","EHS","PRS","EPS","HRS"] | ["plu","SEHPR"] |
| R71 | plu | ["FRS","HPS","FHS","PRS","FPS","HRS"] | ["plu","SFHPR"] |
| R72 | plu | ["FRS","HQS","FHS","QRS","FQS","HRS"] | ["plu","SFHQR"] |
| R73 | linear | [{"ABE":1,"AEP":-1,"ABP":-1,"BEP":-1},"0"] | ["affine_quad","ABEP",1] |
| R74 | linear | [{"BCR":-1,"BRS":-1,"BCS":1,"CRS":1},"0"] | ["affine_quad","BCRS",-1] |
| R75 | linear | [{"BEF":-1,"BFH":-1,"BEH":1,"EFH":1},"0"] | ["affine_quad","BEFH",-1] |
| R76 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R77 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R78 | linear | [{"BFH":1,"BHP":-1,"BFP":-1,"FHP":-1},"0"] | ["affine_quad","BFHP",1] |
| R79 | linear | [{"BFH":-1,"BHS":1,"BFS":-1,"FHS":1},"0"] | ["affine_quad","BFHS",-1] |
| R80 | linear | [{"BFR":1,"BRS":-1,"BFS":-1,"FRS":-1},"0"] | ["affine_quad","BFRS",-1] |
| R81 | linear | [{"BHP":-1,"BPQ":-1,"BHQ":1,"HPQ":-1},"0"] | ["affine_quad","BHPQ",1] |
| R82 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R83 | linear | [{"BHP":-1,"BPS":-1,"BHS":1,"HPS":-1},"0"] | ["affine_quad","BHPS",1] |
| R84 | linear | [{"BHR":1,"BRS":-1,"BHS":-1,"HRS":-1},"0"] | ["affine_quad","BHRS",-1] |
| R85 | linear | [{"BQR":1,"BRS":-1,"BQS":-1,"QRS":-1},"0"] | ["affine_quad","BQRS",-1] |
| R86 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R87 | linear | [{"CFR":1,"CRS":-1,"CFS":-1,"FRS":-1},"0"] | ["affine_quad","CFRS",-1] |
| R88 | linear | [{"CHR":1,"CRS":-1,"CHS":-1,"HRS":-1},"0"] | ["affine_quad","CHRS",-1] |
| R89 | linear | [{"CPR":-1,"CRS":1,"CPS":1,"PRS":-1},"0"] | ["affine_quad","CPRS",1] |
| R90 | linear | [{"CQR":1,"CRS":-1,"CQS":-1,"QRS":-1},"0"] | ["affine_quad","CQRS",-1] |
| R91 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R92 | linear | [{"EFH":1,"EHS":1,"EFS":-1,"FHS":-1},"0"] | ["affine_quad","EFHS",1] |
| R93 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R94 | linear | [{"EFR":-1,"ERS":1,"EFS":1,"FRS":-1},"0"] | ["affine_quad","EFRS",-1] |
| R95 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R96 | linear | [{"EHQ":-1,"EQS":-1,"EHS":1,"HQS":-1},"0"] | ["affine_quad","EHQS",-1] |
| R97 | linear | [{"EHR":-1,"ERS":1,"EHS":1,"HRS":-1},"0"] | ["affine_quad","EHRS",-1] |
| R98 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R99 | linear | [{"FPR":1,"FRS":-1,"FPS":-1,"PRS":-1},"0"] | ["affine_quad","FPRS",1] |
| R100 | linear | [{"HPR":1,"HRS":-1,"HPS":-1,"PRS":-1},"0"] | ["affine_quad","HPRS",1] |
| R101 | linear | [{"PQR":1,"PRS":-1,"PQS":-1,"QRS":-1},"0"] | ["affine_quad","PQRS",-1] |
| R102 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R103 | quad | ["CEF","CER","93/125"] | ["quad","CREF","QS"] |
| R104 | quad | ["CEH","CER","93/125"] | ["quad","CREH","QS"] |
| R105 | quad | ["EFS","ERS","449/1000"] | ["quad","EFSR","Q"] |
| R106 | quad | ["EHS","ERS","449/1000"] | ["quad","EHSR","Q"] |
| R107 | linear | [{"EFR":1,"CER":-1},"0"] | ["right_compare","R","EF"] |
| R108 | bary | [["BHS",-1],[["BCH",-1],["BEH",-1],["BHR",-1]],11,[3,3,3]] | ["side_pair_weights","BH","S","CER","3/11"] |
| R109 | bary | [["BPS",-1],[["BCP",-1],["BEP",-1],["BPR",-1]],11,[3,3,3]] | ["side_pair_weights","BP","S","CER","3/11"] |
| R110 | bary | [["BQS",-1],[["BCQ",-1],["BEQ",-1],["BQR",-1]],11,[3,3,3]] | ["side_pair_weights","BQ","S","CER","3/11"] |
| R111 | bary | [["EPS",1],[["CEP",1],null,["EPR",1]],11,[3,3,3]] | ["side_pair_weights","EP","S","CER","3/11"] |
| R112 | bary | [["FPS",1],[["CFP",1],["EFP",1],["FPR",1]],11,[3,3,3]] | ["side_pair_weights","FP","S","CER","3/11"] |
| R113 | bary | [["FRS",-1],[["CFR",-1],["EFR",1],null],11,[3,3,3]] | ["side_pair_weights","FR","S","CER","3/11"] |
| R114 | linear | [{"CFS":5,"EFS":-3,"FRS":-3},"0"] | ["barycentric","FS","S","CER","lower"] |
| R115 | linear | [{"CHS":5,"EHS":-3,"HRS":-3},"0"] | ["barycentric","HS","S","CER","lower"] |
| R116 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s2 | R0 | sub | hi | BEP | 244573/500000 | hi_ABE,lo_ABP,lo_AEP |
| s32 | R1 | sub | hi | FHP | 43/100 | hi_BFH,lo_BFP,lo_BHP |
| s44 | R6 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s45 | R6 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s46 | R7 | sub | hi | CFS | 201267/500000 | hi_CFR,lo_CRS,lo_FRS |
| s47 | R8 | sub | hi | CHS | 433419/1000000 | hi_CHR,lo_CRS,lo_HRS |
| s75 | R14 | sumlo | lo | BEP | 146897/1000000 | lo_BEF,lo_BHP,lo_BEH,lo_BFP,hi_BFH |
| s78 | R15 | sumlo | lo | BPR | 146897/1000000 | lo_BFP,lo_BHR,lo_BFR,lo_BHP,hi_BFH |
| s84 | R19 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s87 | R21 | sumlo | lo | BCQ | 139631/1000000 | lo_BCH,lo_CQR,lo_BCR,lo_CHQ,hi_CHR |
| s95 | R24 | sumlo | lo | CEH | 369673/1000000 | s84,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s97 | R25 | sumlo | lo | CEP | 33731/250000 | s84,lo_EPR,s75,lo_CER,hi_BER |
| s98 | R26 | sumlo | lo | BES | 124991/1000000 | s84,lo_ERS,lo_BER,lo_CES,hi_CER |
| s100 | R27 | sumlo | lo | BEF | 38417/125000 | lo_BEH,lo_EFS,s98,lo_EFH,hi_EHS |
| s110 | R34 | sumlo | lo | CFH | 65171/500000 | lo_BCH,lo_EFH,lo_BFH,s95,hi_BEH |
| s112 | R36 | sumlo | lo | FHR | 143769/1000000 | lo_BFH,lo_EHR,lo_BHR,lo_EFH,hi_BEH |
| s116 | R38 | sumlo | lo | FHP | 106091/1000000 | lo_BFP,lo_EHP,lo_BHP,lo_EFP,s2 |
| s119 | R41 | sumlo | lo | CHQ | 111973/1000000 | s87,lo_HQR,lo_BHQ,lo_CQR,hi_BQR |
| s124 | R43 | sumlo | lo | BER | 177241/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_CHR |
| s129 | R45 | sumlo | lo | BQR | 81639/250000 | lo_BCR,lo_HQR,lo_BHR,lo_CQR,hi_CHR |
| s131 | R48 | sumlo | lo | HQR | 124389/1000000 | lo_BHR,lo_FQR,s129,s112,hi_BFR |
| s132 | R49 | sumlo | lo | BRS | 56643/500000 | lo_BHR,lo_PRS,s78,lo_HRS,hi_HPR |
| s160 | R64 | diffhi | hi | EFS | 108013/200000 | s46,s45,lo_CES,lo_FRS,lo_CRS |
| s162 | R65 | diffhi | hi | EHS | 294319/500000 | s47,s45,lo_CES,lo_HRS,lo_CRS |
| s163 | R66 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s44 |
| s164 | R67 | sumlo | lo | CQS | 29567/250000 | lo_CES,lo_QRS,lo_CRS,lo_EQS,s45 |
| s167 | R68 | sumlo | lo | PQS | 67167/500000 | lo_CPS,lo_QRS,s164,lo_PRS,s44 |
| s168 | R69 | sumlo | lo | FPS | 126301/500000 | lo_EFS,lo_PRS,s163,lo_FRS,s45 |
| s170 | R70 | sumlo | lo | HPS | 126301/500000 | lo_EHS,lo_PRS,s163,lo_HRS,s45 |
| s173 | R73 | linear | lo | ABE | 332897/1000000 | lo_ABP,lo_AEP,s75 |
| s185 | R78 | linear | lo | BFH | 292091/1000000 | lo_BFP,lo_BHP,s116 |
| s190 | R82 | linear | hi | HPR | 85911/125000 | lo_BHP,hi_BHR,s78 |
| s202 | R90 | linear | lo | CQR | 76067/250000 | s164,lo_CRS,lo_QRS |
| s208 | R94 | linear | hi | EFR | 296663/500000 | s160,s45,lo_FRS |
| s212 | R95 | linear | lo | EHR | 310389/1000000 | lo_EHQ,lo_EQR,s131 |
| s217 | R97 | linear | hi | EHR | 641899/1000000 | s162,s45,lo_HRS |
| s218 | R98 | linear | lo | EPR | 76067/250000 | s163,lo_ERS,lo_PRS |
| s220 | R99 | linear | lo | FPR | 219301/500000 | s168,lo_FRS,lo_PRS |
| s222 | R100 | linear | lo | HPR | 219301/500000 | s170,lo_HRS,lo_PRS |
| s225 | R101 | linear | lo | PQR | 160167/500000 | s167,lo_PRS,lo_QRS |
| s226 | R102 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s227 | R103 | quad | lo | CEF | 411739/1000000 | hi_CER |
| s228 | R104 | quad | lo | CEH | 411739/1000000 | hi_CER |
| s230 | R105 | quad | lo | EFS | 302739/1000000 | s45 |
| s231 | R106 | quad | lo | EHS | 302739/1000000 | s45 |
| s242 | R108 | bary_hi | lo | BHS | 505363/1000000 | lo_BCH,lo_BEH,lo_BHR |
| s247 | R111 | bary_lo | lo | EPS | 119779/1000000 | s97,s218 |
| s250 | R113 | bary_lo | hi | FRS | 7657/40000 | hi_CFR,lo_EFR |
| s251 | R114 | linear | lo | CFS | 237443/1000000 | s230,lo_FRS |
| s253 | R115 | linear | lo | CHS | 237443/1000000 | s231,lo_HRS |
| s254 | R116 | bary_hi | lo | PQS | 31/200 | lo_CPQ,lo_EPQ,s225 |
| s260 | R2 | sub | hi | BPR | 395583/1000000 | hi_BHR,lo_BHP,s222 |
| s261 | R3 | sum | lo | BHR | 711649/1000000 | s242,s132,lo_HRS |
| s267 | R7 | sum | lo | CFR | 423443/1000000 | s251,lo_CRS,lo_FRS |
| s268 | R8 | sum | lo | CHR | 423443/1000000 | s253,lo_CRS,lo_HRS |
| s271 | R9 | sum | lo | EPR | 305779/1000000 | s247,lo_ERS,lo_PRS |
| s272 | R11 | sum | lo | PQR | 341/1000 | s254,lo_PRS,lo_QRS |
| s278 | R14 | sumlo | lo | BEP | 6047/40000 | s100,lo_BHP,lo_BEH,lo_BFP,hi_BFH |
| s282 | R17 | sumlo | lo | ACR | 553/4000 | lo_ABC,lo_CER,s226,lo_BCR,hi_BCE |
| s285 | R18 | sumlo | lo | CPR | 103609/1000000 | lo_ACP,s268,s282,lo_CHP,hi_ACH |
| s286 | R19 | sumlo | lo | BCE | 93743/500000 | lo_BCH,lo_CER,lo_BCR,s228,hi_CHR |
| s287 | R20 | sumlo | lo | BCF | 105149/500000 | lo_BCH,s267,lo_BCR,s110,hi_CHR |
| s288 | R21 | sumlo | lo | BCQ | 7693/50000 | lo_BCH,s202,lo_BCR,s119,hi_CHR |
| s290 | R23 | sumlo | lo | BEQ | 116683/1000000 | s173,lo_EHQ,lo_AEQ,lo_BEH,hi_AEH |
| s293 | R25 | sumlo | lo | CEP | 19129/125000 | s286,s271,s278,lo_CER,hi_BER |
| s294 | R26 | sumlo | lo | BES | 151697/1000000 | s286,lo_ERS,s124,lo_CES,hi_CER |
| s296 | R27 | sumlo | lo | BEF | 190447/500000 | lo_BEH,s230,s294,lo_EFH,s162 |
| s297 | R28 | sumlo | lo | EPS | 128421/1000000 | s293,lo_ERS,lo_CES,s271,hi_CER |
| s303 | R29 | sumlo | lo | CFP | 29369/200000 | s287,s220,lo_BFP,s267,hi_BFR |
| s307 | R33 | sumlo | lo | FPQ | 112479/1000000 | lo_EFP,lo_FQR,lo_EFQ,s220,s208 |
| s310 | R35 | sumlo | lo | CFH | 88329/500000 | lo_BCH,s112,s185,s268,hi_BHR |
| s312 | R36 | sumlo | lo | FHR | 39593/250000 | s185,s212,s261,lo_EFH,hi_BEH |
| s318 | R37 | sumlo | lo | CPQ | 4181/40000 | lo_BCP,s272,lo_BPQ,s285,s260 |
| s319 | R39 | sumlo | lo | BPR | 4743/25000 | lo_BFP,s222,lo_BHP,s220,s32 |
| s320 | R39 | sumlo | lo | FHP | 206227/1000000 | lo_BFP,s222,lo_BHP,s220,s260 |
| s322 | R40 | sumlo | lo | HPQ | 183281/1000000 | lo_BHP,s272,lo_BPQ,s222,s260 |
| s328 | R44 | sumlo | lo | CPR | 135139/1000000 | lo_BCR,s220,s319,s267,hi_BFR |
| s330 | R49 | sumlo | lo | BRS | 7623/62500 | s261,lo_PRS,s319,lo_HRS,s190 |
| s331 | R51 | sumlo | lo | HQR | 148789/1000000 | s268,lo_FQR,s202,s312,hi_CFR |
| s337 | R56 | sumlo | lo | BES | 43349/250000 | lo_BCS,s231,s242,lo_CES,s47 |
| s339 | R59 | sumlo | lo | BFS | 362709/1000000 | s337,lo_FRS,s330,s230,s45 |
| s340 | R61 | sumlo | lo | BQS | 187807/1000000 | s337,lo_QRS,s330,lo_EQS,s45 |
| s342 | R64 | sumlo | lo | CFS | 25163/100000 | lo_CES,lo_FRS,lo_CRS,s230,s45 |
| s343 | R65 | sumlo | lo | CHS | 25163/100000 | lo_CES,lo_HRS,lo_CRS,s231,s45 |
| s344 | R69 | sumlo | lo | FPS | 34269/125000 | s230,lo_PRS,s297,lo_FRS,s45 |
| s346 | R70 | sumlo | lo | HPS | 34269/125000 | s231,lo_PRS,s297,lo_HRS,s45 |
| s349 | R73 | linear | lo | ABE | 13487/40000 | lo_ABP,lo_AEP,s278 |
| s363 | R75 | linear | hi | BEF | 883427/1000000 | hi_BEH,s185,hi_EFH |
| s368 | R78 | linear | lo | BFH | 392227/1000000 | lo_BFP,lo_BHP,s320 |
| s369 | R80 | linear | lo | BFR | 577677/1000000 | s339,s330,lo_FRS |
| s371 | R81 | linear | lo | BHQ | 369281/1000000 | lo_BHP,lo_BPQ,s322 |
| s372 | R82 | linear | lo | BHR | 360661/500000 | lo_BHP,s319,s222 |
| s373 | R82 | linear | hi | HPR | 128893/200000 | lo_BHP,hi_BHR,s319 |
| s376 | R85 | linear | lo | BQR | 16111/40000 | s340,s330,lo_QRS |
| s381 | R87 | linear | lo | CFR | 43763/100000 | s342,lo_CRS,lo_FRS |
| s383 | R88 | linear | lo | CHR | 43763/100000 | s343,lo_CRS,lo_HRS |
| s385 | R91 | linear | hi | FHR | 274031/500000 | hi_EFH,lo_EFR,s217 |
| s387 | R93 | linear | lo | EFP | 298479/1000000 | lo_EFQ,lo_EPQ,s307 |
| s394 | R95 | linear | lo | EHR | 334789/1000000 | lo_EHQ,lo_EQR,s331 |
| s396 | R98 | linear | lo | EPR | 314421/1000000 | s297,lo_ERS,lo_PRS |
| s397 | R99 | linear | lo | FPR | 57519/125000 | s344,lo_FRS,lo_PRS |
| s398 | R100 | linear | lo | HPR | 57519/125000 | s346,lo_HRS,lo_PRS |
| s404 | R108 | bary_hi | lo | BHS | 102563/200000 | lo_BCH,lo_BEH,s372 |
| s406 | R110 | bary_hi | lo | BQS | 204847/1000000 | s288,s290,s376 |
| s409 | R116 | bary_hi | lo | PQS | 163779/1000000 | s318,lo_EPQ,s272 |
| s414 | R2 | sum | lo | BHR | 92859/125000 | lo_BHP,s319,s398 |
| s416 | R2 | sub | hi | BPR | 374033/1000000 | hi_BHR,lo_BHP,s398 |
| s418 | R5 | sum | lo | BQR | 83963/200000 | s406,s330,lo_QRS |
| s419 | R11 | sum | lo | PQR | 349779/1000000 | s409,lo_PRS,lo_QRS |
| s427 | R12 | sumlo | lo | BCQ | 163367/1000000 | lo_BCH,s418,lo_BCR,s371,hi_BHR |
| s428 | R14 | sumlo | lo | BEP | 162281/1000000 | s296,lo_BHP,lo_BEH,lo_BFP,hi_BFH |
| s430 | R15 | sumlo | lo | BPR | 24921/125000 | lo_BFP,s414,s369,lo_BHP,hi_BFH |
| s437 | R20 | sumlo | lo | BCF | 111821/500000 | lo_BCH,s381,lo_BCR,s310,hi_CHR |
| s438 | R22 | sumlo | lo | CEP | 41039/250000 | s227,s328,lo_CER,s303,hi_CFR |
| s441 | R23 | sumlo | lo | BEQ | 117169/1000000 | s349,lo_EHQ,lo_AEQ,lo_BEH,hi_AEH |
| s443 | R27 | sumlo | lo | BEF | 192161/500000 | lo_BEH,s230,s337,lo_EFH,s162 |
| s444 | R28 | sumlo | lo | EPS | 66977/500000 | s438,lo_ERS,lo_CES,s396,hi_CER |
| s448 | R29 | sumlo | lo | CFP | 5007/31250 | s437,s397,lo_BFP,s381,hi_BFR |
| s449 | R30 | sumlo | lo | FHR | 46171/250000 | s368,lo_EFR,s369,lo_EFH,s363 |
| s450 | R31 | sumlo | lo | FHS | 86297/500000 | s368,s230,s339,lo_EFH,s363 |
| s454 | R33 | sumlo | lo | FPQ | 11891/100000 | s387,lo_FQR,lo_EFQ,s397,s208 |
| s459 | R35 | sumlo | lo | CFH | 3761/15625 | lo_BCH,s449,s368,s383,hi_BHR |
| s461 | R36 | sumlo | lo | FHR | 202351/1000000 | s368,s394,s414,lo_EFH,hi_BEH |
| s467 | R39 | sumlo | lo | FHP | 9153/40000 | lo_BFP,s398,lo_BHP,s397,s416 |
| s469 | R40 | sumlo | lo | HPQ | 100691/500000 | lo_BHP,s419,lo_BPQ,s398,s416 |
| s474 | R49 | sumlo | lo | BRS | 13597/100000 | s414,lo_PRS,s430,lo_HRS,s373 |
| s475 | R51 | sumlo | lo | HQR | 21721/125000 | s383,lo_FQR,s202,s461,hi_CFR |
| s476 | R52 | sumlo | lo | FRS | 96087/1000000 | s381,lo_HRS,lo_CRS,s461,hi_CHR |
| s479 | R54 | sumlo | lo | ERS | 23421/250000 | s394,lo_PRS,s396,lo_HRS,s373 |
| s481 | R56 | sumlo | lo | BES | 34999/200000 | lo_BCS,s231,s404,lo_CES,s47 |
| s482 | R59 | sumlo | lo | BFS | 198201/500000 | s481,s476,s474,s230,s45 |
| s484 | R64 | sumlo | lo | CFS | 253593/1000000 | lo_CES,s476,lo_CRS,s230,s45 |
| s485 | R64 | diffhi | hi | EFS | 268489/500000 | s46,s45,lo_CES,s476,lo_CRS |
| s486 | R69 | sumlo | lo | FPS | 140249/500000 | s230,lo_PRS,s444,s476,s45 |
| s487 | R70 | sumlo | lo | HPS | 277671/1000000 | s231,lo_PRS,s444,lo_HRS,s45 |
| s491 | R72 | sumlo | lo | HQS | 129033/1000000 | s450,lo_QRS,lo_FQS,lo_HRS,s250 |
| s492 | R73 | linear | lo | ABE | 348281/1000000 | lo_ABP,lo_AEP,s428 |
| s507 | R75 | linear | hi | BEF | 783291/1000000 | hi_BEH,s368,hi_EFH |
| s514 | R78 | linear | lo | BFH | 16593/40000 | lo_BFP,lo_BHP,s467 |
| s515 | R80 | linear | lo | BFR | 628459/1000000 | s482,s474,s476 |
| s516 | R80 | linear | hi | BFS | 664243/1000000 | hi_BFR,s474,s476 |
| s517 | R81 | linear | lo | BHQ | 193691/500000 | lo_BHP,lo_BPQ,s469 |
| s518 | R82 | linear | lo | BHR | 18813/25000 | lo_BHP,s430,s398 |
| s519 | R82 | linear | hi | HPR | 634817/1000000 | lo_BHP,hi_BHR,s430 |
| s522 | R85 | linear | lo | BQR | 433817/1000000 | s406,s474,lo_QRS |
| s528 | R86 | linear | lo | CER | 69921/250000 | lo_CES,lo_CRS,s479 |
| s531 | R87 | linear | lo | CFR | 11067/25000 | s484,lo_CRS,s476 |
| s532 | R87 | linear | hi | CFS | 399447/1000000 | hi_CFR,lo_CRS,s476 |
| s536 | R93 | linear | lo | EFP | 30491/100000 | lo_EFQ,lo_EPQ,s454 |
| s541 | R94 | linear | hi | EFR | 36697/62500 | s485,s45,s476 |
| s547 | R95 | linear | lo | EHR | 44971/125000 | lo_EHQ,lo_EQR,s475 |
| s549 | R96 | linear | lo | EHS | 315033/1000000 | lo_EHQ,lo_EQS,s491 |
| s552 | R98 | linear | lo | EPR | 160319/500000 | s444,s479,lo_PRS |
| s553 | R99 | linear | lo | FPR | 93917/200000 | s486,s476,lo_PRS |
| s555 | R100 | linear | lo | HPR | 463671/1000000 | s487,lo_HRS,lo_PRS |
| s556 | R100 | linear | hi | HPS | 448817/1000000 | s519,lo_HRS,lo_PRS |
| s557 | R107 | linear | lo | EFR | 69921/250000 | s528 |
| s562 | R108 | bary_hi | lo | BHS | 521323/1000000 | lo_BCH,lo_BEH,s518 |
| s563 | R109 | bary_hi | lo | BPS | 17613/125000 | lo_BCP,s428,s430 |
| s564 | R110 | bary_hi | lo | BQS | 216127/1000000 | s427,s441,s522 |
| s566 | R112 | bary_lo | lo | FPS | 56811/200000 | s448,s536,s553 |
| s567 | R113 | bary_lo | hi | FRS | 95619/500000 | hi_CFR,s557 |
| s574 | R2 | sum | lo | BHR | 756039/1000000 | lo_BHP,s430,s555 |
| s575 | R2 | sub | hi | BPR | 185257/500000 | hi_BHR,lo_BHP,s555 |
| s577 | R5 | sum | lo | BQR | 445097/1000000 | s564,s474,lo_QRS |
| s584 | R10 | sum | lo | FPR | 236571/500000 | s566,s476,lo_PRS |
| s592 | R12 | sumlo | lo | BCQ | 17279/100000 | lo_BCH,s577,lo_BCR,s517,hi_BHR |
| s593 | R13 | sumlo | lo | BCS | 18641/200000 | lo_BCH,s474,lo_BCR,s562,hi_BHR |
| s594 | R14 | sumlo | lo | BEP | 81399/500000 | s443,lo_BHP,lo_BEH,lo_BFP,hi_BFH |
| s596 | R15 | sumlo | lo | BPR | 209023/1000000 | lo_BFP,s574,s515,lo_BHP,hi_BFH |
| s605 | R20 | sumlo | lo | BCF | 58883/250000 | lo_BCH,s531,lo_BCR,s459,hi_CHR |
| s609 | R23 | sumlo | lo | BEQ | 118431/1000000 | s492,lo_EHQ,lo_AEQ,lo_BEH,hi_AEH |
| s616 | R29 | sumlo | lo | CFP | 34053/200000 | s605,s584,lo_BFP,s531,hi_BFR |
| s617 | R30 | sumlo | lo | FHR | 44547/200000 | s514,s557,s515,lo_EFH,s507 |
| s618 | R31 | sumlo | lo | FHS | 207393/1000000 | s514,s230,s482,lo_EFH,s507 |
| s619 | R32 | sumlo | lo | BFQ | 177033/1000000 | s514,lo_FQR,s515,lo_FHQ,s385 |
| s622 | R33 | sumlo | lo | FPQ | 30809/250000 | s536,lo_FQR,lo_EFQ,s584,s541 |
| s626 | R35 | sumlo | lo | CFH | 13141/50000 | lo_BCH,s617,s514,s383,hi_BHR |
| s632 | R39 | sumlo | lo | FHP | 117571/500000 | lo_BFP,s555,lo_BHP,s584,s575 |
| s636 | R44 | sumlo | lo | CPR | 152329/1000000 | lo_BCR,s584,s596,s531,hi_BFR |
| s637 | R48 | sumlo | lo | HQR | 37811/200000 | s574,lo_FQR,s577,s617,hi_BFR |
| s638 | R49 | sumlo | lo | BRS | 7069/50000 | s574,lo_PRS,s596,lo_HRS,s519 |
| s642 | R54 | sumlo | lo | ERS | 49839/500000 | s547,lo_PRS,s552,lo_HRS,s519 |
| s644 | R55 | sumlo | lo | FRS | 20389/200000 | s617,lo_PRS,s584,lo_HRS,s519 |
| s646 | R56 | sumlo | lo | BES | 22451/125000 | s593,s549,s562,lo_CES,s47 |
| s648 | R58 | sumlo | lo | EPS | 70513/500000 | s646,s566,s563,s230,s516 |
| s649 | R59 | sumlo | lo | BFS | 13057/31250 | s646,s644,s638,s230,s45 |
| s652 | R64 | sumlo | lo | CFS | 128659/500000 | lo_CES,s644,lo_CRS,s230,s45 |
| s653 | R64 | diffhi | hi | EFS | 105253/200000 | s532,s45,lo_CES,s644,lo_CRS |
| s655 | R69 | sumlo | lo | FPS | 36349/125000 | s230,lo_PRS,s648,s644,s45 |
| s656 | R70 | sumlo | lo | HPS | 4531/15625 | s549,lo_PRS,s648,lo_HRS,s45 |
| s660 | R71 | sumlo | lo | FRS | 103229/1000000 | s618,lo_PRS,s655,lo_HRS,s556 |
| s661 | R72 | sumlo | lo | HQS | 73041/500000 | s618,lo_QRS,lo_FQS,lo_HRS,s567 |
| s662 | R73 | linear | lo | ABE | 174399/500000 | lo_ABP,lo_AEP,s594 |
| s679 | R75 | linear | hi | BEF | 760693/1000000 | hi_BEH,s514,hi_EFH |
| s680 | R76 | linear | lo | BEF | 24279/62500 | s609,s619,lo_EFQ |
| s681 | R76 | linear | hi | BFQ | 274631/500000 | s679,s609,lo_EFQ |
| s687 | R78 | linear | lo | BFH | 210571/500000 | lo_BFP,lo_BHP,s632 |
| s688 | R80 | linear | lo | BFR | 662433/1000000 | s649,s638,s660 |
| s692 | R82 | linear | hi | HPR | 312581/500000 | lo_BHP,hi_BHR,s596 |
| s696 | R85 | linear | lo | BQR | 450507/1000000 | s564,s638,lo_QRS |
| s703 | R86 | linear | lo | CER | 142839/500000 | lo_CES,lo_CRS,s642 |
| s704 | R86 | linear | hi | CRS | 139583/1000000 | hi_CER,lo_CES,s642 |
| s707 | R87 | linear | lo | CFR | 453547/1000000 | s652,lo_CRS,s660 |
| s708 | R87 | linear | hi | CFS | 78461/200000 | hi_CFR,lo_CRS,s660 |
| s711 | R89 | linear | lo | CPS | 52873/500000 | s636,s704,lo_PRS |
| s716 | R93 | linear | lo | EFP | 77309/250000 | lo_EFQ,lo_EPQ,s622 |
| s721 | R94 | linear | hi | EFR | 569297/1000000 | s653,s45,s660 |
| s727 | R95 | linear | lo | EHR | 75011/200000 | lo_EHQ,lo_EQR,s637 |
| s730 | R96 | linear | lo | EHS | 166041/500000 | lo_EHQ,lo_EQS,s661 |
| s733 | R98 | linear | lo | EPR | 41713/125000 | s648,s642,lo_PRS |
| s735 | R99 | linear | lo | FPR | 487021/1000000 | s655,s660,lo_PRS |
| s737 | R100 | linear | lo | HPR | 29749/62500 | s656,lo_HRS,lo_PRS |
| s738 | R100 | linear | hi | HPS | 219581/500000 | s692,lo_HRS,lo_PRS |
| s739 | R107 | linear | lo | EFR | 142839/500000 | s703 |
| s745 | R109 | bary_hi | lo | BPS | 71839/500000 | lo_BCP,s594,s596 |
| s746 | R110 | bary_hi | lo | BQS | 111911/500000 | s592,s609,s696 |
| s748 | R112 | bary_lo | lo | FPS | 147277/500000 | s616,s716,s735 |
| s755 | R2 | sum | lo | BHR | 778007/1000000 | lo_BHP,s596,s737 |
| s757 | R2 | sub | hi | BPR | 358201/1000000 | hi_BHR,lo_BHP,s737 |
| s758 | R4 | sum | lo | BHS | 263331/500000 | lo_BHP,s745,s656 |
| s760 | R5 | sum | lo | BQR | 229101/500000 | s746,s638,lo_QRS |
| s767 | R10 | sum | lo | FPR | 490783/1000000 | s748,s660,lo_PRS |
| s775 | R13 | sumlo | lo | BCS | 11921/125000 | lo_BCH,s638,lo_BCR,s758,hi_BHR |
| s776 | R14 | sumlo | lo | BEP | 163423/1000000 | s680,lo_BHP,lo_BEH,lo_BFP,hi_BFH |
| s778 | R15 | sumlo | lo | BPR | 217469/1000000 | lo_BFP,s755,s688,lo_BHP,hi_BFH |
| s786 | R20 | sumlo | lo | BCF | 243747/1000000 | lo_BCH,s707,lo_BCR,s626,hi_CHR |
| s790 | R23 | sumlo | lo | BEQ | 11849/100000 | s662,lo_EHQ,lo_AEQ,lo_BEH,hi_AEH |
| s797 | R29 | sumlo | lo | CFP | 180527/1000000 | s786,s767,lo_BFP,s707,hi_BFR |
| s798 | R30 | sumlo | lo | FHR | 119573/500000 | s687,s739,s688,lo_EFH,s679 |
| s799 | R31 | sumlo | lo | FHS | 218687/1000000 | s687,s230,s649,lo_EFH,s679 |
| s803 | R33 | sumlo | lo | FPQ | 13069/100000 | s716,lo_FQR,lo_EFQ,s767,s721 |
| s813 | R39 | sumlo | lo | FHP | 125501/500000 | lo_BFP,s737,lo_BHP,s767,s757 |
| s815 | R42 | sumlo | lo | EQR | 24411/250000 | s790,lo_FQR,s760,lo_EFQ,s681 |
| s820 | R44 | sumlo | lo | CPR | 160967/1000000 | lo_BCR,s767,s778,s707,hi_BFR |
| s823 | R48 | sumlo | lo | HQR | 10149/50000 | s755,lo_FQR,s760,s798,hi_BFR |
| s825 | R49 | sumlo | lo | BRS | 18511/125000 | s755,lo_PRS,s778,lo_HRS,s692 |
| s828 | R54 | sumlo | lo | ERS | 26359/250000 | s727,lo_PRS,s733,lo_HRS,s692 |
| s832 | R55 | sumlo | lo | FRS | 21717/200000 | s798,lo_PRS,s767,lo_HRS,s692 |
| s835 | R56 | sumlo | lo | BES | 186077/1000000 | s775,s730,s758,lo_CES,s47 |
| s837 | R59 | sumlo | lo | BFS | 88933/200000 | s835,s832,s825,s230,s45 |
| s841 | R63 | sumlo | lo | EPS | 15143/100000 | lo_CES,s748,s711,s230,s708 |
| s842 | R64 | sumlo | lo | CFS | 13077/50000 | lo_CES,s832,lo_CRS,s230,s45 |
| s843 | R65 | sumlo | lo | CHS | 16893/62500 | lo_CES,lo_HRS,lo_CRS,s730,s45 |
| s844 | R69 | sumlo | lo | FPS | 152459/500000 | s230,lo_PRS,s841,s832,s45 |
| s845 | R70 | sumlo | lo | HPS | 3843/12500 | s730,lo_PRS,s841,lo_HRS,s45 |
| s849 | R71 | sumlo | lo | FRS | 55441/500000 | s799,lo_PRS,s844,lo_HRS,s738 |
| s867 | R74 | linear | lo | BCS | 20301/200000 | lo_BCR,s825,s704 |
| s868 | R75 | linear | hi | BEF | 94297/125000 | hi_BEH,s687,hi_EFH |
| s875 | R78 | linear | lo | BFH | 218501/500000 | lo_BFP,lo_BHP,s813 |
| s876 | R80 | linear | lo | BFR | 140727/200000 | s837,s825,s849 |
| s880 | R82 | linear | hi | HPR | 154179/250000 | lo_BHP,hi_BHR,s778 |
| s883 | R84 | linear | hi | BHS | 686097/1000000 | hi_BHR,s825,lo_HRS |
| s893 | R86 | linear | lo | CER | 72859/250000 | lo_CES,lo_CRS,s828 |
| s894 | R86 | linear | hi | CRS | 5353/40000 | hi_CER,lo_CES,s828 |
| s896 | R87 | linear | lo | CFR | 232711/500000 | s842,lo_CRS,s849 |
| s897 | R87 | linear | hi | CFS | 96163/250000 | hi_CFR,lo_CRS,s849 |
| s899 | R88 | linear | lo | CHR | 14259/31250 | s843,lo_CRS,lo_HRS |
| s900 | R89 | linear | lo | CPS | 60071/500000 | s820,s894,lo_PRS |
| s907 | R93 | linear | lo | EFP | 31669/100000 | lo_EFQ,lo_EPQ,s803 |
| s918 | R95 | linear | lo | EHR | 49203/125000 | lo_EHQ,s815,s823 |
| s925 | R97 | linear | lo | EHS | 340363/1000000 | s918,s45,lo_HRS |
| s926 | R98 | linear | lo | EPR | 174933/500000 | s841,s828,lo_PRS |
| s927 | R99 | linear | lo | FPR | 318/625 | s844,s849,lo_PRS |
| s929 | R100 | linear | lo | HPR | 1542/3125 | s845,lo_HRS,lo_PRS |
| s930 | R100 | linear | hi | HPS | 107679/250000 | s880,lo_HRS,lo_PRS |
| s931 | R107 | linear | lo | EFR | 72859/250000 | s893 |
| s936 | R109 | bary_hi | lo | BPS | 18269/125000 | lo_BCP,s776,s778 |
| s939 | R112 | bary_lo | lo | FPS | 307191/1000000 | s797,s907,s927 |
| s945 | R2 | sum | lo | BHR | 803909/1000000 | lo_BHP,s778,s929 |
| s947 | R2 | sub | hi | BPR | 68149/200000 | hi_BHR,lo_BHP,s929 |
| s948 | R4 | sum | lo | BHS | 17081/31250 | lo_BHP,s936,s845 |
| s958 | R10 | sum | lo | FPR | 511073/1000000 | s939,s849,lo_PRS |
| s967 | R15 | sumlo | lo | BPR | 227599/1000000 | lo_BFP,s945,s876,lo_BHP,hi_BFH |
| s970 | R16 | sumlo | lo | BPS | 74827/500000 | lo_BFP,s948,s837,lo_BHP,hi_BFH |
| s990 | R30 | sumlo | lo | FHR | 25557/100000 | s875,s931,s876,lo_EFH,s868 |
| s991 | R31 | sumlo | lo | FHS | 14387/62500 | s875,s230,s837,lo_EFH,s868 |
| s1006 | R39 | sumlo | lo | FHP | 274163/1000000 | lo_BFP,s929,lo_BHP,s958,s947 |
| s1013 | R44 | sumlo | lo | CPR | 85607/500000 | lo_BCR,s958,s967,s896,hi_BFR |
| s1021 | R49 | sumlo | lo | BRS | 3111/20000 | s945,lo_PRS,s967,lo_HRS,s880 |
| s1022 | R53 | sumlo | lo | CRS | 47313/500000 | s899,lo_PRS,s1013,lo_HRS,s880 |
| s1024 | R54 | sumlo | lo | ERS | 112117/1000000 | s918,lo_PRS,s926,lo_HRS,s880 |
| s1027 | R55 | sumlo | lo | FRS | 14451/125000 | s990,lo_PRS,s958,lo_HRS,s880 |
| s1028 | R56 | sumlo | lo | BES | 39399/200000 | s867,s925,s948,lo_CES,s47 |
| s1030 | R59 | sumlo | lo | BFS | 19107/40000 | s1028,s1027,s1021,s230,s45 |
| s1036 | R62 | sumlo | lo | FRS | 116937/1000000 | s1030,lo_HRS,s1021,s991,s883 |
| s1037 | R63 | sumlo | lo | EPS | 168829/1000000 | lo_CES,s939,s900,s230,s897 |
| s1039 | R64 | sumlo | lo | CFS | 33777/125000 | lo_CES,s1036,s1022,s230,s45 |
| s1045 | R69 | sumlo | lo | FPS | 81869/250000 | s230,lo_PRS,s1037,s1036,s45 |
| s1046 | R70 | sumlo | lo | HPS | 323769/1000000 | s925,lo_PRS,s1037,lo_HRS,s45 |
| s1050 | R71 | sumlo | lo | FRS | 120411/1000000 | s991,lo_PRS,s1045,lo_HRS,s930 |
| s1072 | R74 | linear | lo | BCS | 4589/40000 | lo_BCR,s1021,s894 |
| s1073 | R75 | linear | hi | BEF | 184629/250000 | hi_BEH,s875,hi_EFH |
| s1078 | R77 | linear | lo | BER | 232331/500000 | s1028,s1021,s1024 |
| s1080 | R78 | linear | lo | BFH | 460163/1000000 | lo_BFP,lo_BHP,s1006 |
| s1082 | R80 | linear | lo | BFR | 188409/250000 | s1030,s1021,s1050 |
| s1083 | R80 | linear | hi | BFS | 620339/1000000 | hi_BFR,s1021,s1050 |
| s1086 | R82 | linear | hi | HPR | 303293/500000 | lo_BHP,hi_BHR,s967 |
| s1088 | R83 | linear | lo | BHS | 566423/1000000 | lo_BHP,s970,s1046 |
| s1090 | R84 | linear | hi | BHS | 135727/200000 | hi_BHR,s1021,lo_HRS |
| s1101 | R86 | linear | lo | CER | 299743/1000000 | lo_CES,s1022,s1024 |
| s1102 | R86 | linear | hi | CRS | 15893/125000 | hi_CER,lo_CES,s1024 |
| s1104 | R86 | linear | hi | ERS | 28927/200000 | hi_CER,lo_CES,s1022 |
| s1106 | R87 | linear | lo | CFR | 485253/1000000 | s1039,s1022,s1050 |
| s1139 | R99 | linear | lo | FPR | 540887/1000000 | s1045,s1050,lo_PRS |
| s1141 | R100 | linear | lo | HPR | 509769/1000000 | s1046,lo_HRS,lo_PRS |
| s1142 | R100 | linear | hi | HPS | 210293/500000 | s1086,lo_HRS,lo_PRS |
| s1143 | R105 | quad | lo | EFS | 60873/200000 | s1104 |
| s1144 | R107 | linear | lo | EFR | 299743/1000000 | s1101 |
| s1155 | R2 | sum | lo | BHR | 25949/31250 | lo_BHP,s967,s1141 |
| s1157 | R2 | sub | hi | BPR | 5069/15625 | hi_BHR,lo_BHP,s1141 |
| s1180 | R15 | sumlo | lo | BPR | 239143/1000000 | lo_BFP,s1155,s1082,lo_BHP,hi_BFH |
| s1183 | R16 | sumlo | lo | BPS | 157631/1000000 | lo_BFP,s1088,s1030,lo_BHP,hi_BFH |
| s1214 | R30 | sumlo | lo | FHR | 281671/1000000 | s1080,s1144,s1082,lo_EFH,s1073 |
| s1229 | R39 | sumlo | lo | FHP | 30119/100000 | lo_BFP,s1141,lo_BHP,s1139,s1157 |
| s1237 | R44 | sumlo | lo | CPR | 185593/1000000 | lo_BCR,s1139,s1180,s1106,hi_BFR |
| s1241 | R46 | sumlo | lo | EHR | 211859/500000 | s1078,s1214,s1155,s1144,hi_BFR |
| s1245 | R47 | sumlo | lo | ERS | 29423/250000 | s1078,lo_HRS,s1021,s1241,hi_BHR |
| s1250 | R49 | sumlo | lo | BRS | 81987/500000 | s1155,lo_PRS,s1180,lo_HRS,s1086 |
| s1252 | R50 | sumlo | lo | EPR | 97761/250000 | s1101,lo_PRS,s1237,s1245,s1102 |
| s1256 | R54 | sumlo | lo | ERS | 31229/250000 | s1241,lo_PRS,s1252,lo_HRS,s1086 |
| s1262 | R55 | sumlo | lo | FRS | 3941/31250 | s1214,lo_PRS,s1139,lo_HRS,s1086 |
| s1270 | R57 | sumlo | lo | BES | 116327/500000 | s1072,s1256,s1250,lo_CES,s1102 |
| s1275 | R59 | sumlo | lo | BFS | 547919/1000000 | s1270,s1262,s1250,s1143,s1104 |
| s1276 | R59 | sumlo | lo | ERS | 511/4000 | s1270,s1262,s1250,s1143,s1083 |
| s1279 | R59 | diffhi | hi | BRS | 49597/250000 | s1083,s1104,s1270,s1262,s1143 |
| s1283 | R60 | sumlo | lo | EPS | 26321/125000 | s1270,lo_PRS,s1183,s1276,s1279 |
| s1303 | R70 | diffhi | hi | EHS | 221767/500000 | s1104,s1142,s1283,lo_HRS,lo_PRS |
| s1355 | R78 | linear | lo | BFH | 48719/100000 | lo_BFP,lo_BHP,s1229 |
| s1361 | R79 | linear | lo | FHS | 178237/500000 | s1355,s1275,s1090 |
| s1409 | R92 | linear | lo | EFH | 43461/200000 | s1143,s1303,s1361 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | EFH | s1409 | hi_EFH |

The two cited bounds give 43461/200000 <= |EFH| <= 1996715486/10783609375, with exact positive gap 22183471951/690151000000.

## Leaf A008

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABS | ABS | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 279/1000 | cost:P |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AFR | AFR | lo | 347/500 | cost:PS |
| lo_AHR | AHR | lo | 347/500 | cost:PS |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_AQR | AQR | lo | 347/500 | cost:PS |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BHR | BHR | lo | 347/500 | cost:PS |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CQR | CQR | lo | 279/1000 | cost:S |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_HPR | HPR | lo | 279/1000 | cost:S |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_AQR | AQR | hi | 3716561/5123000 | C040 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BQR | BQR | hi | 174239288766899/214807390000000 | C017 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_CQR | CQR | hi | 260683245673673/480094307000000 | C018 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEF","AEQ","AFQ","EFQ"] | ["fan","AEF","Q"] |
| R1 | fan | ["AHR","AHS","ARS","HRS"] | ["fan","AHR","S"] |
| R2 | fan | ["AQR","APQ","APR","PQR"] | ["fan","AQR","P"] |
| R3 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R4 | plu | ["ABR","ACH","ABC","AHR","ABH","ACR"] | ["plu","ABCHR"] |
| R5 | plu | ["AEQ","APR","AEP","AQR","AER","APQ"] | ["plu","AEPQR"] |
| R6 | plu | ["AEH","EFQ","AEF","EHQ","AEQ","EFH"] | ["plu","EAFHQ"] |
| R7 | plu | ["AFQ","EFR","AEF","FQR","AFR","EFQ"] | ["plu","FAEQR"] |
| R8 | plu | ["AFQ","FHR","AFH","FQR","AFR","FHQ"] | ["plu","FAHQR"] |
| R9 | plu | ["AFQ","EQR","AEQ","FQR","AQR","EFQ"] | ["plu","QAEFR"] |
| R10 | plu | ["ACR","BQR","ABR","CQR","AQR","BCR"] | ["plu","RABCQ"] |
| R11 | plu | ["AHR","BPR","ABR","HPR","APR","BHR"] | ["plu","RABHP"] |
| R12 | plu | ["AER","CQR","ACR","EQR","AQR","CER"] | ["plu","RACEQ"] |
| R13 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R14 | plu | ["AHR","ERS","AER","HRS","ARS","EHR"] | ["plu","RAEHS"] |
| R15 | plu | ["AFR","HQR","AHR","FQR","AQR","FHR"] | ["plu","RAFHQ"] |
| R16 | plu | ["AHR","PQR","APR","HQR","AQR","HPR"] | ["plu","RAHPQ"] |
| R17 | plu | ["ARS","HPR","AHR","PRS","APR","HRS"] | ["plu","RAHPS"] |
| R18 | plu | ["AHR","QRS","AQR","HRS","ARS","HQR"] | ["plu","RAHQS"] |
| R19 | plu | ["ARS","PQR","APR","QRS","AQR","PRS"] | ["plu","RAPQS"] |
| R20 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R21 | plu | ["BQR","CPR","BCR","PQR","BPR","CQR"] | ["plu","RBCPQ"] |
| R22 | plu | ["BHR","ERS","BER","HRS","BRS","EHR"] | ["plu","RBEHS"] |
| R23 | plu | ["CQR","ERS","CER","QRS","CRS","EQR"] | ["plu","RCEQS"] |
| R24 | plu | ["CRS","PQR","CPR","QRS","CQR","PRS"] | ["plu","RCPQS"] |
| R25 | plu | ["ERS","HPR","EHR","PRS","EPR","HRS"] | ["plu","REHPS"] |
| R26 | plu | ["ACS","BRS","ABS","CRS","ARS","BCS"] | ["plu","SABCR"] |
| R27 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R28 | plu | ["AHS","ERS","AES","HRS","ARS","EHS"] | ["plu","SAEHR"] |
| R29 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R30 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R31 | linear | [{"EHR":-1,"ERS":1,"EHS":1,"HRS":-1},"0"] | ["affine_quad","EHRS",-1] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s13 | R0 | sub | hi | AEQ | 570997/1000000 | hi_AEF,lo_AFQ,lo_EFQ |
| s14 | R0 | sub | hi | AFQ | 384997/1000000 | hi_AEF,lo_AEQ,lo_EFQ |
| s28 | R1 | sub | hi | AHS | 316233/500000 | hi_AHR,lo_ARS,lo_HRS |
| s32 | R2 | sub | hi | PQR | 269733/500000 | hi_AQR,lo_APQ,lo_APR |
| s54 | R3 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s55 | R3 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s71 | R4 | sumlo | lo | ABR | 145169/1000000 | lo_ABC,lo_AHR,lo_ABH,lo_ACR,hi_ACH |
| s88 | R5 | sumlo | lo | APR | 6339/40000 | lo_AEP,lo_AQR,lo_AER,lo_APQ,s13 |
| s128 | R6 | sumlo | lo | EFQ | 110559/1000000 | lo_AEF,lo_EHQ,lo_AEQ,lo_EFH,hi_AEH |
| s151 | R7 | sumlo | lo | EFR | 366937/1000000 | lo_AEF,lo_FQR,lo_AFR,s128,s14 |
| s155 | R8 | sumlo | lo | FHR | 190107/1000000 | lo_AFH,lo_FQR,lo_AFR,lo_FHQ,s14 |
| s192 | R9 | sumlo | lo | EQR | 26669/100000 | lo_AEQ,lo_FQR,lo_AQR,s128,s14 |
| s207 | R10 | sumlo | lo | ACR | 129501/1000000 | s71,lo_CQR,lo_AQR,lo_BCR,hi_BQR |
| s210 | R11 | sumlo | lo | BPR | 9193/50000 | s71,lo_HPR,s88,lo_BHR,hi_AHR |
| s217 | R12 | sumlo | lo | AER | 420201/1000000 | s207,s192,lo_AQR,lo_CER,hi_CQR |
| s218 | R12 | sumlo | lo | CQR | 62901/200000 | s207,s192,lo_AQR,lo_CER,hi_AER |
| s222 | R13 | sumlo | lo | EHR | 408737/1000000 | s217,s155,lo_AHR,s151,hi_AFR |
| s226 | R14 | diffhi | hi | ARS | 197269/1000000 | hi_AHR,s55,s217,lo_HRS,s222 |
| s228 | R15 | sumlo | lo | HQR | 120027/500000 | lo_AHR,lo_FQR,lo_AQR,s155,hi_AFR |
| s238 | R16 | diffhi | hi | HPR | 581401/1000000 | hi_AHR,s32,s88,s228,lo_AQR |
| s239 | R17 | sumlo | lo | ARS | 3409/25000 | lo_AHR,lo_PRS,s88,lo_HRS,s238 |
| s242 | R18 | sumlo | lo | QRS | 118851/1000000 | lo_AQR,lo_HRS,s239,s228,hi_AHR |
| s244 | R19 | sumlo | lo | ARS | 77277/500000 | s88,s242,lo_AQR,lo_PRS,s32 |
| s245 | R19 | sumlo | lo | PQR | 84531/200000 | s88,s242,lo_AQR,lo_PRS,s226 |
| s248 | R20 | sumlo | lo | BER | 373961/1000000 | lo_BCR,s222,lo_BHR,lo_CER,hi_CHR |
| s254 | R21 | sumlo | lo | CPR | 59873/500000 | lo_BCR,s245,s210,s218,hi_BQR |
| s258 | R22 | diffhi | hi | BRS | 246693/1000000 | hi_BHR,s55,s248,lo_HRS,s222 |
| s268 | R23 | sumlo | lo | CQR | 6192/15625 | lo_CER,s242,lo_CRS,s192,s55 |
| s270 | R24 | sumlo | lo | CRS | 47349/500000 | s254,s242,s268,lo_PRS,s32 |
| s274 | R25 | sumlo | lo | ERS | 110009/1000000 | s222,lo_PRS,lo_EPR,lo_HRS,s238 |
| s279 | R26 | sumlo | lo | ACS | 23491/250000 | lo_ABS,s270,s244,lo_BCS,s258 |
| s281 | R27 | sumlo | lo | AES | 168947/1000000 | s279,s274,s244,lo_CES,s54 |
| s286 | R28 | diffhi | hi | EHS | 496869/1000000 | s28,s55,s281,lo_HRS,s244 |
| s400 | R29 | linear | hi | ERS | 144563/1000000 | hi_CER,lo_CES,s270 |
| s429 | R30 | linear | lo | EHR | 9371/15625 | lo_EHQ,s192,s228 |
| s433 | R31 | linear | hi | EHR | 34277/62500 | s286,s400,lo_HRS |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | EHR | s429 | s433 |

The two cited bounds give 9371/15625 <= |EHR| <= 34277/62500, with exact positive gap 3207/62500.

## Leaf A009

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFS | EFS | lo | 279/1000 | cost:Q |
| lo_EHR | EHR | lo | 347/500 | cost:QS |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R1 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R2 | plu | ["EFS","EHR","EFH","ERS","EFR","EHS"] | ["plu","EFHRS"] |
| R3 | plu | ["ERS","FHR","EFR","HRS","EHR","FRS"] | ["plu","REFHS"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s32 | R0 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s49 | R1 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s97 | R2 | diff | lo | EFR | 304261/1000000 | lo_EFS,lo_EHR,hi_EFH,s32,s49 |
| s154 | R3 | sumlo | lo | ERS | 2636/15625 | s97,lo_HRS,lo_EHR,lo_FRS,hi_FHR |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | ERS | s154 | s32 |

The two cited bounds give 2636/15625 <= |ERS| <= 146261/1000000, with exact positive gap 22443/1000000.

## Leaf A010

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCQ | BCQ | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 347/500 | cost:PQ |
| lo_BEP | BEP | lo | 93/1000 | cost: |
| lo_BEQ | BEQ | lo | 279/1000 | cost:P |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BFR | BFR | lo | 347/500 | cost:PS |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPR | BPR | lo | 93/1000 | cost: |
| lo_BQR | BQR | lo | 347/500 | cost:PS |
| lo_CEF | CEF | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFS | EFS | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 279/1000 | cost:S |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BQR | BQR | hi | 174239288766899/214807390000000 | C017 |
| hi_CEF | CEF | hi | 13367777/15625000 | C041 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CQR | CQR | hi | 260683245673673/480094307000000 | C018 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["BEF","BEQ","BFQ","EFQ"] | ["fan","BEF","Q"] |
| R1 | fan | ["BEH","BEQ","BHQ","EHQ"] | ["fan","BEH","Q"] |
| R2 | fan | ["BFR","BFP","BPR","FPR"] | ["fan","BFR","P"] |
| R3 | fan | ["BFR","BFS","BRS","FRS"] | ["fan","BFR","S"] |
| R4 | fan | ["BQR","BPQ","BPR","PQR"] | ["fan","BQR","P"] |
| R5 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R6 | fan | ["CFR","CFS","CRS","FRS"] | ["fan","CFR","S"] |
| R7 | fan | ["EFR","EFQ","EQR","FQR"] | ["fan","EFR","Q"] |
| R8 | fan | ["PQR","PQS","PRS","QRS"] | ["fan","PQR","S"] |
| R9 | plu | ["BCS","BFR","BCF","BRS","BCR","BFS"] | ["plu","BCFRS"] |
| R10 | plu | ["BEQ","BFP","BEF","BPQ","BEP","BFQ"] | ["plu","BEFPQ"] |
| R11 | plu | ["BEQ","BPR","BEP","BQR","BER","BPQ"] | ["plu","BEPQR"] |
| R12 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R13 | plu | ["BES","CEF","BCE","EFS","BEF","CES"] | ["plu","EBCFS"] |
| R14 | plu | ["BEH","EFQ","BEF","EHQ","BEQ","EFH"] | ["plu","EBFHQ"] |
| R15 | plu | ["BEF","EQS","BEQ","EFS","BES","EFQ"] | ["plu","EBFQS"] |
| R16 | plu | ["BFR","EFP","BEF","FPR","BFP","EFR"] | ["plu","FBEPR"] |
| R17 | plu | ["BFQ","EFR","BEF","FQR","BFR","EFQ"] | ["plu","FBEQR"] |
| R18 | plu | ["EFR","FPQ","EFP","FQR","EFQ","FPR"] | ["plu","FEPQR"] |
| R19 | plu | ["BPR","EPQ","BEP","PQR","BPQ","EPR"] | ["plu","PBEQR"] |
| R20 | plu | ["BHQ","EFQ","BEQ","FHQ","BFQ","EHQ"] | ["plu","QBEFH"] |
| R21 | plu | ["BFQ","EQR","BEQ","FQR","BQR","EFQ"] | ["plu","QBEFR"] |
| R22 | plu | ["BHQ","EQR","BEQ","HQR","BQR","EHQ"] | ["plu","QBEHR"] |
| R23 | plu | ["BFQ","HQR","BHQ","FQR","BQR","FHQ"] | ["plu","QBFHR"] |
| R24 | plu | ["EFQ","HQR","EHQ","FQR","EQR","FHQ"] | ["plu","QEFHR"] |
| R25 | plu | ["BER","CFR","BCR","EFR","BFR","CER"] | ["plu","RBCEF"] |
| R26 | plu | ["BER","CQR","BCR","EQR","BQR","CER"] | ["plu","RBCEQ"] |
| R27 | plu | ["BFR","ERS","BER","FRS","BRS","EFR"] | ["plu","RBEFS"] |
| R28 | plu | ["BRS","FPR","BFR","PRS","BPR","FRS"] | ["plu","RBFPS"] |
| R29 | plu | ["BRS","PQR","BPR","QRS","BQR","PRS"] | ["plu","RBPQS"] |
| R30 | plu | ["CFR","ERS","CER","FRS","CRS","EFR"] | ["plu","RCEFS"] |
| R31 | plu | ["ERS","FPR","EFR","PRS","EPR","FRS"] | ["plu","REFPS"] |
| R32 | plu | ["BES","CFS","BCS","EFS","BFS","CES"] | ["plu","SBCEF"] |
| R33 | plu | ["BFS","EPS","BES","FPS","BPS","EFS"] | ["plu","SBEFP"] |
| R34 | plu | ["BRS","PQS","BPS","QRS","BQS","PRS"] | ["plu","SBPQR"] |
| R35 | plu | ["CFS","EPS","CES","FPS","CPS","EFS"] | ["plu","SCEFP"] |
| R36 | plu | ["CFS","ERS","CES","FRS","CRS","EFS"] | ["plu","SCEFR"] |
| R37 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R38 | plu | ["ERS","FPS","EFS","PRS","EPS","FRS"] | ["plu","SEFPR"] |
| R39 | plu | ["ERS","PQS","EPS","QRS","EQS","PRS"] | ["plu","SEPQR"] |
| R40 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R41 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R42 | linear | [{"BEP":-1,"BPQ":-1,"BEQ":1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",-1] |
| R43 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R44 | linear | [{"BFP":-1,"BPR":-1,"BFR":1,"FPR":-1},"0"] | ["affine_quad","BFPR",1] |
| R45 | linear | [{"BFP":-1,"BPS":-1,"BFS":1,"FPS":-1},"0"] | ["affine_quad","BFPS",1] |
| R46 | linear | [{"BFR":1,"BRS":-1,"BFS":-1,"FRS":-1},"0"] | ["affine_quad","BFRS",-1] |
| R47 | linear | [{"BPQ":-1,"BQR":1,"BPR":-1,"PQR":-1},"0"] | ["affine_quad","BPQR",-1] |
| R48 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R49 | linear | [{"EFQ":-1,"EQR":-1,"EFR":1,"FQR":-1},"0"] | ["affine_quad","EFQR",-1] |
| R50 | linear | [{"EFQ":-1,"EQS":-1,"EFS":1,"FQS":-1},"0"] | ["affine_quad","EFQS",-1] |
| R51 | linear | [{"EFR":-1,"ERS":1,"EFS":1,"FRS":-1},"0"] | ["affine_quad","EFRS",-1] |
| R52 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R53 | linear | [{"EQR":-1,"ERS":1,"EQS":1,"QRS":-1},"0"] | ["affine_quad","EQRS",-1] |
| R54 | linear | [{"FPR":1,"FRS":-1,"FPS":-1,"PRS":-1},"0"] | ["affine_quad","FPRS",1] |
| R55 | linear | [{"PQR":1,"PRS":-1,"PQS":-1,"QRS":-1},"0"] | ["affine_quad","PQRS",-1] |
| R56 | bary | [["BFS",-1],[["BCF",-1],["BEF",-1],["BFR",-1]],11,[3,3,3]] | ["side_pair_weights","BF","S","CER","3/11"] |
| R57 | bary | [["BPS",-1],[["BCP",-1],["BEP",-1],["BPR",-1]],11,[3,3,3]] | ["side_pair_weights","BP","S","CER","3/11"] |
| R58 | bary | [["BQS",-1],[["BCQ",-1],["BEQ",-1],["BQR",-1]],11,[3,3,3]] | ["side_pair_weights","BQ","S","CER","3/11"] |
| R59 | bary | [["FPS",1],[["CFP",1],["EFP",1],["FPR",1]],11,[3,3,3]] | ["side_pair_weights","FP","S","CER","3/11"] |
| R60 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s19 | R0 | sub | hi | BEQ | 7103/10000 | hi_BEF,lo_BFQ,lo_EFQ |
| s20 | R0 | sub | hi | BFQ | 5243/10000 | hi_BEF,lo_BEQ,lo_EFQ |
| s30 | R4 | sub | hi | BPR | 219571/500000 | hi_BQR,lo_BPQ,lo_PQR |
| s31 | R4 | sub | hi | PQR | 312571/500000 | hi_BQR,lo_BPQ,lo_BPR |
| s39 | R5 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s40 | R5 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s41 | R6 | sub | hi | CFS | 201267/500000 | hi_CFR,lo_CRS,lo_FRS |
| s47 | R7 | sub | hi | EQR | 23607/50000 | hi_EFR,lo_EFQ,lo_FQR |
| s72 | R10 | sumlo | lo | BFP | 51521/500000 | lo_BEF,lo_BPQ,lo_BEP,lo_BFQ,s19 |
| s75 | R11 | sumlo | lo | BPR | 25479/200000 | lo_BEP,lo_BQR,lo_BER,lo_BPQ,s19 |
| s86 | R12 | sumlo | lo | BCE | 3527/20000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_CFR |
| s98 | R13 | sumlo | lo | BES | 132949/1000000 | s86,lo_EFS,lo_BEF,lo_CES,hi_CEF |
| s103 | R15 | sumlo | lo | EQS | 100641/1000000 | lo_BEQ,lo_EFS,s98,lo_EFQ,hi_BEF |
| s116 | R17 | sumlo | lo | BFQ | 98067/500000 | lo_BEF,lo_FQR,lo_BFR,lo_EFQ,hi_EFR |
| s126 | R19 | sumlo | lo | EPQ | 118171/1000000 | lo_BEP,lo_PQR,lo_BPQ,lo_EPR,s30 |
| s131 | R21 | sumlo | lo | EQR | 17259/100000 | lo_BEQ,lo_FQR,lo_BQR,lo_EFQ,s20 |
| s133 | R22 | sumlo | lo | BHQ | 191657/1000000 | lo_BEQ,lo_HQR,lo_BQR,lo_EHQ,s47 |
| s135 | R23 | sumlo | lo | HQR | 157097/1000000 | s133,lo_FQR,lo_BQR,lo_FHQ,s20 |
| s147 | R26 | sumlo | lo | BER | 386157/1000000 | lo_BCR,s131,lo_BQR,lo_CER,hi_CQR |
| s151 | R29 | sumlo | lo | BRS | 24439/200000 | s75,lo_QRS,lo_BQR,lo_PRS,s31 |
| s170 | R36 | diffhi | hi | EFS | 108013/200000 | s41,s40,lo_CES,lo_FRS,lo_CRS |
| s171 | R37 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s39 |
| s175 | R38 | sumlo | lo | FPS | 126301/500000 | lo_EFS,lo_PRS,s171,lo_FRS,s40 |
| s177 | R39 | sumlo | lo | PQS | 139193/1000000 | s171,lo_QRS,s103,lo_PRS,s40 |
| s182 | R40 | linear | lo | BCF | 144521/500000 | lo_BCP,s72,lo_CFP |
| s188 | R41 | linear | hi | BEQ | 303583/500000 | hi_BEF,s116,lo_EFQ |
| s190 | R42 | linear | lo | BEQ | 304171/1000000 | lo_BEP,lo_BPQ,s126 |
| s200 | R47 | linear | hi | PQR | 590747/1000000 | lo_BPQ,s75,hi_BQR |
| s211 | R49 | linear | lo | EFR | 35859/100000 | lo_EFQ,s131,lo_FQR |
| s213 | R50 | linear | hi | EQS | 70813/200000 | lo_EFQ,s170,lo_FQS |
| s216 | R51 | linear | hi | EFR | 296663/500000 | s170,s40,lo_FRS |
| s217 | R51 | linear | lo | EFS | 305329/1000000 | s211,s40,lo_FRS |
| s224 | R52 | linear | lo | EPR | 76067/250000 | s171,lo_ERS,lo_PRS |
| s225 | R53 | linear | hi | EQR | 203663/500000 | s213,s40,lo_QRS |
| s227 | R54 | linear | lo | FPR | 219301/500000 | s175,lo_FRS,lo_PRS |
| s229 | R55 | linear | lo | PQR | 325193/1000000 | s177,lo_PRS,lo_QRS |
| s241 | R56 | bary_hi | lo | BFS | 63741/125000 | s182,lo_BEF,lo_BFR |
| s243 | R57 | bary_hi | lo | BPS | 5119/50000 | lo_BCP,lo_BEP,s75 |
| s244 | R58 | bary_hi | lo | BQS | 199523/500000 | lo_BCQ,s190,lo_BQR |
| s258 | R60 | bary_hi | lo | PQS | 16319/100000 | lo_CPQ,s126,s229 |
| s260 | R0 | sub | hi | BFQ | 499129/1000000 | hi_BEF,s190,lo_EFQ |
| s261 | R1 | sub | hi | BHQ | 118637/200000 | hi_BEH,s190,lo_EHQ |
| s262 | R2 | sub | hi | BPR | 11083/31250 | hi_BFR,s72,s227 |
| s263 | R3 | sum | lo | BFR | 725123/1000000 | s241,s151,lo_FRS |
| s276 | R8 | sum | lo | PQR | 34919/100000 | s258,lo_PRS,lo_QRS |
| s283 | R10 | sumlo | lo | BFP | 68171/500000 | lo_BEF,lo_BPQ,lo_BEP,s116,s188 |
| s288 | R11 | sumlo | lo | BPR | 20681/125000 | lo_BEP,lo_BQR,s147,lo_BPQ,s188 |
| s308 | R14 | sumlo | lo | EFQ | 93733/1000000 | lo_BEF,lo_EHQ,s190,lo_EFH,hi_BEH |
| s322 | R16 | sumlo | lo | EFP | 197077/500000 | lo_BEF,s227,s283,s211,hi_BFR |
| s329 | R18 | sumlo | lo | FPQ | 13107/100000 | s322,lo_FQR,s308,s227,s216 |
| s335 | R19 | sumlo | lo | EPQ | 171353/1000000 | lo_BEP,s276,lo_BPQ,s224,s262 |
| s341 | R21 | sumlo | lo | BFQ | 229149/1000000 | s190,lo_FQR,lo_BQR,s308,s225 |
| s345 | R22 | sumlo | lo | BHQ | 55153/200000 | s190,s135,lo_BQR,lo_EHQ,s225 |
| s346 | R22 | sumlo | lo | EQR | 189361/1000000 | s190,s135,lo_BQR,lo_EHQ,s261 |
| s348 | R23 | sumlo | lo | HQR | 180691/1000000 | s345,lo_FQR,lo_BQR,lo_FHQ,s260 |
| s359 | R25 | sumlo | lo | BER | 80083/200000 | lo_BCR,s211,s263,lo_CER,hi_CFR |
| s366 | R27 | diffhi | hi | BRS | 130867/500000 | hi_BFR,s40,s359,lo_FRS,s211 |
| s371 | R29 | sumlo | lo | BRS | 135301/1000000 | s288,lo_QRS,lo_BQR,lo_PRS,s200 |
| s373 | R30 | sumlo | lo | ERS | 100751/1000000 | lo_CER,lo_FRS,lo_CRS,s211,hi_CFR |
| s377 | R32 | sumlo | lo | BES | 94177/500000 | lo_BCS,s217,s241,lo_CES,s41 |
| s379 | R34 | sumlo | lo | PQS | 178167/1000000 | s243,lo_QRS,s244,lo_PRS,s366 |
| s380 | R35 | sumlo | lo | EPS | 64451/500000 | lo_CES,s175,lo_CPS,s217,s41 |
| s383 | R38 | sumlo | lo | FPS | 55221/200000 | s217,lo_PRS,s380,lo_FRS,s40 |
| s392 | R40 | linear | lo | BCF | 161171/500000 | lo_BCP,s283,lo_CFP |
| s399 | R41 | linear | hi | BEQ | 286709/500000 | hi_BEF,s341,s308 |
| s401 | R42 | linear | lo | BEQ | 357353/1000000 | lo_BEP,lo_BPQ,s335 |
| s403 | R43 | linear | lo | BER | 212203/500000 | s377,s371,s373 |
| s408 | R44 | linear | hi | FPR | 59451/100000 | s283,hi_BFR,s288 |
| s410 | R45 | linear | lo | BFS | 514827/1000000 | s283,s243,s383 |
| s412 | R46 | linear | lo | BFR | 92891/125000 | s410,s371,lo_FRS |
| s413 | R46 | linear | hi | BFS | 667999/1000000 | hi_BFR,s371,lo_FRS |
| s431 | R48 | linear | lo | EFP | 99039/250000 | s308,s335,s329 |
| s433 | R49 | linear | hi | EQR | 406593/1000000 | s308,s216,lo_FQR |
| s434 | R49 | linear | lo | EFR | 188047/500000 | s308,s346,lo_FQR |
| s439 | R51 | linear | lo | EFS | 322833/1000000 | s434,s40,lo_FRS |
| s446 | R52 | linear | lo | EPR | 322653/1000000 | s380,s373,lo_PRS |
| s449 | R54 | linear | lo | FPR | 92421/200000 | s383,lo_FRS,lo_PRS |
| s450 | R54 | linear | hi | FPS | 40851/100000 | s408,lo_FRS,lo_PRS |
| s451 | R55 | linear | lo | PQR | 364167/1000000 | s379,lo_PRS,lo_QRS |
| s456 | R56 | bary_hi | lo | BFS | 538463/1000000 | s392,lo_BEF,s412 |
| s458 | R57 | bary_hi | lo | BPS | 56379/500000 | lo_BCP,lo_BEP,s288 |
| s463 | R59 | bary_lo | lo | FPS | 276343/1000000 | lo_CFP,s431,s449 |
| s468 | R60 | bary_hi | lo | PQS | 188323/1000000 | lo_CPQ,s335,s451 |
| s470 | R0 | sub | hi | BFQ | 222607/500000 | hi_BEF,s401,s308 |
| s472 | R1 | sub | hi | BHQ | 540003/1000000 | hi_BEH,s401,lo_EHQ |
| s475 | R2 | sub | hi | BPR | 297853/1000000 | hi_BFR,s283,s449 |
| s476 | R3 | sum | lo | BFR | 191691/250000 | s456,s371,lo_FRS |
| s482 | R8 | sum | lo | PQR | 374323/1000000 | s468,lo_PRS,lo_QRS |
| s495 | R9 | sumlo | lo | BCS | 10453/100000 | s392,s371,lo_BCR,s456,hi_BFR |
| s497 | R10 | sumlo | lo | BFP | 149721/1000000 | lo_BEF,lo_BPQ,lo_BEP,s341,s399 |
| s500 | R11 | sumlo | lo | BPR | 181389/1000000 | lo_BEP,lo_BQR,s403,lo_BPQ,s399 |
| s520 | R14 | sumlo | lo | EFQ | 98727/1000000 | lo_BEF,lo_EHQ,s401,lo_EFH,hi_BEH |
| s539 | R17 | sumlo | lo | BFQ | 118183/500000 | lo_BEF,lo_FQR,s476,s520,s216 |
| s554 | R19 | sumlo | lo | EPQ | 217619/1000000 | lo_BEP,s482,lo_BPQ,s446,s475 |
| s562 | R20 | sumlo | lo | EFQ | 102251/1000000 | s401,lo_FHQ,s539,lo_EHQ,s472 |
| s563 | R21 | sumlo | lo | BFQ | 128133/500000 | s401,lo_FQR,lo_BQR,s562,s433 |
| s567 | R22 | sumlo | lo | BHQ | 317547/1000000 | s401,s348,lo_BQR,lo_EHQ,s433 |
| s571 | R23 | sumlo | lo | HQR | 2113/10000 | s567,lo_FQR,lo_BQR,lo_FHQ,s470 |
| s590 | R28 | sumlo | lo | BRS | 927/6250 | s476,lo_PRS,s500,lo_FRS,s408 |
| s594 | R31 | sumlo | lo | ERS | 21861/200000 | s434,lo_PRS,s446,lo_FRS,s408 |
| s601 | R32 | sumlo | lo | BES | 208237/1000000 | s495,s439,s456,lo_CES,s41 |
| s603 | R33 | sumlo | lo | EPS | 140639/1000000 | s601,s463,s458,s439,s413 |
| s609 | R38 | sumlo | lo | FPS | 147349/500000 | s439,lo_PRS,s603,lo_FRS,s40 |
| s610 | R38 | diffhi | hi | EFS | 20073/40000 | s40,s450,s603,lo_FRS,lo_PRS |
| s633 | R42 | linear | lo | BEQ | 403619/1000000 | lo_BEP,lo_BPQ,s554 |
| s635 | R43 | linear | lo | BER | 232931/500000 | s601,s590,s594 |
| s670 | R50 | linear | hi | EQS | 153287/500000 | s562,s610,lo_FQS |
| s673 | R51 | linear | hi | EFR | 277543/500000 | s610,s40,lo_FRS |
| s682 | R53 | linear | hi | EQR | 71967/200000 | s670,s40,lo_QRS |
| s684 | R54 | linear | lo | FPR | 240349/500000 | s609,lo_FRS,lo_PRS |
| s704 | R0 | sum | lo | BEF | 95267/125000 | s633,s563,s562 |
| s705 | R0 | sub | hi | BFQ | 39043/100000 | hi_BEF,s633,s562 |
| s707 | R1 | sub | hi | BHQ | 493737/1000000 | hi_BEH,s633,lo_EHQ |
| s708 | R2 | sum | lo | BFR | 25369/31250 | s497,s500,s684 |
| s710 | R2 | sub | hi | BPR | 265881/1000000 | hi_BFR,s497,s684 |
| s751 | R11 | sumlo | lo | BEQ | 405697/1000000 | lo_BEP,lo_BQR,s635,lo_BPQ,s710 |
| s775 | R14 | sumlo | lo | EFQ | 54833/500000 | s704,lo_EHQ,s751,lo_EFH,hi_BEH |
| s805 | R17 | sumlo | lo | BFQ | 144037/500000 | s704,lo_FQR,s708,s775,s673 |
| s841 | R20 | sumlo | lo | EFQ | 65339/500000 | s751,lo_FHQ,s805,lo_EHQ,s707 |
| s846 | R21 | sumlo | lo | EQR | 8223/25000 | s751,lo_FQR,lo_BQR,s841,s705 |
| s854 | R22 | sumlo | lo | BHQ | 104399/250000 | s751,s571,lo_BQR,lo_EHQ,s682 |
| s856 | R22 | diffhi | hi | HQR | 139417/500000 | s707,s682,lo_BQR,lo_EHQ,s751 |
| s860 | R23 | sumlo | lo | BFQ | 5793/15625 | s854,lo_FQR,lo_BQR,lo_FHQ,s856 |
| s876 | R24 | sumlo | lo | EFQ | 140723/1000000 | lo_EHQ,lo_FQR,s846,lo_FHQ,s856 |
| s997 | R41 | linear | lo | BEF | 229293/250000 | s751,s860,s876 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BEF | s997 | hi_BEF |

The two cited bounds give 229293/250000 <= |BEF| <= 8963/10000, with exact positive gap 2609/125000.

## Leaf A011

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:S |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFS | EFS | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHR | FHR | lo | 279/1000 | cost:S |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R1 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R2 | fan | ["FHR","FHS","FRS","HRS"] | ["fan","FHR","S"] |
| R3 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R4 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R5 | plu | ["BFR","CHR","BCR","FHR","BHR","CFR"] | ["plu","RBCFH"] |
| R6 | plu | ["BFR","ERS","BER","FRS","BRS","EFR"] | ["plu","RBEFS"] |
| R7 | plu | ["BRS","FHR","BFR","HRS","BHR","FRS"] | ["plu","RBFHS"] |
| R8 | plu | ["CRS","FHR","CFR","HRS","CHR","FRS"] | ["plu","RCFHS"] |
| R9 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R10 | plu | ["BFS","ERS","BES","FRS","BRS","EFS"] | ["plu","SBEFR"] |
| R11 | plu | ["BRS","FHS","BFS","HRS","BHS","FRS"] | ["plu","SBFHR"] |
| R12 | linear | [{"BCR":-1,"BRS":-1,"BCS":1,"CRS":1},"0"] | ["affine_quad","BCRS",-1] |
| R13 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R14 | linear | [{"EFR":1,"CER":-1},"0"] | ["right_compare","R","EF"] |
| R15 | linear | [{"BCS":-3,"BES":5,"BRS":-3},"0"] | ["barycentric","BS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s31 | R1 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s32 | R1 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s50 | R2 | sub | hi | FHS | 364303/1000000 | hi_FHR,lo_FRS,lo_HRS |
| s67 | R3 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s127 | R4 | sumlo | lo | CHR | 168841/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_BER |
| s129 | R5 | sumlo | lo | BFR | 177241/500000 | lo_BCR,lo_FHR,lo_BHR,lo_CFR,hi_CHR |
| s133 | R7 | sumlo | lo | BRS | 177191/1000000 | s129,lo_HRS,lo_BHR,lo_FRS,hi_FHR |
| s139 | R8 | sumlo | lo | CRS | 52109/500000 | lo_CFR,lo_HRS,s127,lo_FRS,hi_FHR |
| s150 | R9 | sumlo | lo | BES | 87361/500000 | s67,lo_ERS,s133,lo_CES,s31 |
| s155 | R10 | sumlo | lo | BFS | 223763/1000000 | s150,lo_FRS,s133,lo_EFS,s32 |
| s159 | R11 | sumlo | lo | BRS | 14643/62500 | s155,lo_HRS,lo_BHS,lo_FRS,s50 |
| s190 | R12 | linear | lo | BCS | 181027/1000000 | lo_BCR,s159,s31 |
| s222 | R13 | linear | lo | CER | 145109/500000 | lo_CES,s139,lo_ERS |
| s224 | R13 | linear | hi | ERS | 135043/1000000 | hi_CER,lo_CES,s139 |
| s261 | R14 | linear | lo | EFR | 145109/500000 | s222 |
| s272 | R15 | linear | lo | BES | 249189/1000000 | s190,s159 |
| s284 | R0 | sum | lo | BER | 576477/1000000 | s272,s159,lo_ERS |
| s416 | R6 | sumlo | lo | BFR | 180101/200000 | s284,lo_FRS,s159,s261,s224 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BFR | s416 | hi_BFR |

The two cited bounds give 180101/200000 <= |BFR| <= 8963/10000, with exact positive gap 841/200000.

## Leaf A012

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABE | ABE | lo | 279/1000 | cost:P |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACF | ACF | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_AEH | AEH | lo | 279/1000 | cost:Q |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 347/500 | cost:PS |
| lo_AES | AES | lo | 279/1000 | cost:P |
| lo_AFH | AFH | lo | 279/1000 | cost:Q |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AFR | AFR | lo | 279/1000 | cost:P |
| lo_AFS | AFS | lo | 279/1000 | cost:P |
| lo_AHS | AHS | lo | 279/1000 | cost:P |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_AQS | AQS | lo | 279/1000 | cost:P |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCQ | BCQ | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEP | BEP | lo | 93/1000 | cost: |
| lo_BEQ | BEQ | lo | 279/1000 | cost:P |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BQR | BQR | lo | 279/1000 | cost:P |
| lo_CEF | CEF | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFH | CFH | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPR | CPR | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHP | EHP | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 279/1000 | cost:Q |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACE | ACE | hi | 7016953/8875000 | C043 |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BCQ | BCQ | hi | 4646561/10000000 | C046 |
| hi_BCR | BCR | hi | 279/2000 | C047 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFH | BFH | hi | 77/125 | C015 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFH | CFH | hi | 77/125 | C048 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AER","AEP","APR","EPR"] | ["fan","AER","P"] |
| R2 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R3 | fan | ["AES","AEP","APS","EPS"] | ["fan","AES","P"] |
| R4 | fan | ["AFS","AFP","APS","FPS"] | ["fan","AFS","P"] |
| R5 | fan | ["AHS","AHP","APS","HPS"] | ["fan","AHS","P"] |
| R6 | fan | ["AQS","APQ","APS","PQS"] | ["fan","AQS","P"] |
| R7 | fan | ["BCF","BCP","BFP","CFP"] | ["fan","BCF","P"] |
| R8 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R9 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R10 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R11 | plu | ["ABR","ACE","ABC","AER","ABE","ACR"] | ["plu","ABCER"] |
| R12 | plu | ["ACF","AEH","ACE","AFH","ACH","AEF"] | ["plu","ACEFH"] |
| R13 | plu | ["ACF","AEQ","ACE","AFQ","ACQ","AEF"] | ["plu","ACEFQ"] |
| R14 | plu | ["ACE","AFR","ACF","AER","ACR","AEF"] | ["plu","ACEFR"] |
| R15 | plu | ["ACP","AES","ACE","APS","ACS","AEP"] | ["plu","ACEPS"] |
| R16 | plu | ["ACS","AER","ACE","ARS","ACR","AES"] | ["plu","ACERS"] |
| R17 | plu | ["ACF","AHP","ACH","AFP","ACP","AFH"] | ["plu","ACFHP"] |
| R18 | plu | ["ACS","AFR","ACF","ARS","ACR","AFS"] | ["plu","ACFRS"] |
| R19 | plu | ["AEH","AFR","AEF","AHR","AER","AFH"] | ["plu","AEFHR"] |
| R20 | plu | ["AES","AFP","AEF","APS","AEP","AFS"] | ["plu","AEFPS"] |
| R21 | plu | ["AES","AHP","AEH","APS","AEP","AHS"] | ["plu","AEHPS"] |
| R22 | plu | ["AES","APQ","AEP","AQS","AEQ","APS"] | ["plu","AEPQS"] |
| R23 | plu | ["AES","APR","AEP","ARS","AER","APS"] | ["plu","AEPRS"] |
| R24 | plu | ["AFR","AHP","AFH","APR","AFP","AHR"] | ["plu","AFHPR"] |
| R25 | plu | ["ACR","BCE","ABC","CER","ACE","BCR"] | ["plu","CABER"] |
| R26 | plu | ["ACF","BCP","ABC","CFP","ACP","BCF"] | ["plu","CABFP"] |
| R27 | plu | ["ACH","BCP","ABC","CHP","ACP","BCH"] | ["plu","CABHP"] |
| R28 | plu | ["ACH","CEP","ACE","CHP","ACP","CEH"] | ["plu","CAEHP"] |
| R29 | plu | ["ACS","CER","ACE","CRS","ACR","CES"] | ["plu","CAERS"] |
| R30 | plu | ["ACH","CFP","ACF","CHP","ACP","CFH"] | ["plu","CAFHP"] |
| R31 | plu | ["ACF","CPS","ACP","CFS","ACS","CFP"] | ["plu","CAFPS"] |
| R32 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R33 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R34 | plu | ["BCE","CQR","BCQ","CER","BCR","CEQ"] | ["plu","CBEQR"] |
| R35 | plu | ["AER","CEQ","ACE","EQR","AEQ","CER"] | ["plu","EACQR"] |
| R36 | plu | ["AES","CER","ACE","ERS","AER","CES"] | ["plu","EACRS"] |
| R37 | plu | ["AEF","EHR","AEH","EFR","AER","EFH"] | ["plu","EAFHR"] |
| R38 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R39 | plu | ["CER","EPS","CEP","ERS","CES","EPR"] | ["plu","ECPRS"] |
| R40 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R41 | plu | ["ACF","FPR","AFP","CFR","AFR","CFP"] | ["plu","FACPR"] |
| R42 | plu | ["AEF","FHR","AFH","EFR","AFR","EFH"] | ["plu","FAEHR"] |
| R43 | plu | ["CFH","FPR","CFP","FHR","CFR","FHP"] | ["plu","FCHPR"] |
| R44 | plu | ["EFP","FHR","EFH","FPR","EFR","FHP"] | ["plu","FEHPR"] |
| R45 | plu | ["AEH","BFH","ABH","EFH","AFH","BEH"] | ["plu","HABEF"] |
| R46 | plu | ["AHQ","CFH","ACH","FHQ","AFH","CHQ"] | ["plu","HACFQ"] |
| R47 | plu | ["ACH","HPR","AHP","CHR","AHR","CHP"] | ["plu","HACPR"] |
| R48 | plu | ["CFH","HPR","CHP","FHR","CHR","FHP"] | ["plu","HCFPR"] |
| R49 | plu | ["AFP","BHP","ABP","FHP","AHP","BFP"] | ["plu","PABFH"] |
| R50 | plu | ["AFP","CEP","ACP","EFP","AEP","CFP"] | ["plu","PACEF"] |
| R51 | plu | ["ACP","EPS","AEP","CPS","APS","CEP"] | ["plu","PACES"] |
| R52 | plu | ["AHP","CFP","ACP","FHP","AFP","CHP"] | ["plu","PACFH"] |
| R53 | plu | ["AFP","EPS","AEP","FPS","APS","EFP"] | ["plu","PAEFS"] |
| R54 | plu | ["AHP","EPS","AEP","HPS","APS","EHP"] | ["plu","PAEHS"] |
| R55 | plu | ["AHP","FPR","AFP","HPR","APR","FHP"] | ["plu","PAFHR"] |
| R56 | plu | ["BHP","CFP","BCP","FHP","BFP","CHP"] | ["plu","PBCFH"] |
| R57 | plu | ["BHP","EPQ","BEP","HPQ","BPQ","EHP"] | ["plu","PBEHQ"] |
| R58 | plu | ["CFP","HPR","CHP","FPR","CPR","FHP"] | ["plu","PCFHR"] |
| R59 | plu | ["BCQ","EPQ","BEQ","CPQ","BPQ","CEQ"] | ["plu","QBCEP"] |
| R60 | plu | ["BCQ","PQR","BPQ","CQR","BQR","CPQ"] | ["plu","QBCPR"] |
| R61 | plu | ["ACR","BER","ABR","CER","AER","BCR"] | ["plu","RABCE"] |
| R62 | plu | ["AER","CPR","ACR","EPR","APR","CER"] | ["plu","RACEP"] |
| R63 | plu | ["AFR","EPR","AER","FPR","APR","EFR"] | ["plu","RAEFP"] |
| R64 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R65 | plu | ["ARS","EPR","AER","PRS","APR","ERS"] | ["plu","RAEPS"] |
| R66 | plu | ["CFR","EPR","CER","FPR","CPR","EFR"] | ["plu","RCEFP"] |
| R67 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R68 | plu | ["ARS","EQS","AES","QRS","AQS","ERS"] | ["plu","SAEQR"] |
| R69 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R70 | linear | [{"ACE":1,"AER":-1,"ACR":-1,"CER":1},"0"] | ["affine_quad","ACER",1] |
| R71 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R72 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R73 | linear | [{"ACP":-1,"APQ":-1,"ACQ":1,"CPQ":-1},"0"] | ["affine_quad","ACPQ",-1] |
| R74 | linear | [{"ACR":-1,"ARS":-1,"ACS":1,"CRS":1},"0"] | ["affine_quad","ACRS",-1] |
| R75 | linear | [{"AEF":-1,"AFH":-1,"AEH":1,"EFH":1},"0"] | ["affine_quad","AEFH",-1] |
| R76 | linear | [{"AEF":1,"AFR":-1,"AER":1,"EFR":-1},"0"] | ["affine_quad","AEFR",1] |
| R77 | linear | [{"AEP":-1,"APR":-1,"AER":1,"EPR":-1},"0"] | ["affine_quad","AEPR",1] |
| R78 | linear | [{"AEP":-1,"APS":-1,"AES":1,"EPS":-1},"0"] | ["affine_quad","AEPS",1] |
| R79 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R80 | linear | [{"AFH":1,"AHQ":-1,"AFQ":-1,"FHQ":-1},"0"] | ["affine_quad","AFHQ",1] |
| R81 | linear | [{"AFP":-1,"APR":-1,"AFR":1,"FPR":-1},"0"] | ["affine_quad","AFPR",1] |
| R82 | linear | [{"AHP":-1,"APR":-1,"AHR":1,"HPR":-1},"0"] | ["affine_quad","AHPR",1] |
| R83 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R84 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R85 | linear | [{"BCQ":-1,"BQR":1,"BCR":1,"CQR":-1},"0"] | ["affine_quad","BCQR",-1] |
| R86 | linear | [{"BEP":-1,"BPQ":-1,"BEQ":1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",-1] |
| R87 | linear | [{"CEH":1,"CHQ":-1,"CEQ":-1,"EHQ":-1},"0"] | ["affine_quad","CEHQ",1] |
| R88 | linear | [{"CFH":1,"CHP":1,"CFP":-1,"FHP":-1},"0"] | ["affine_quad","CFHP",1] |
| R89 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R90 | linear | [{"EFH":1,"EHP":1,"EFP":-1,"FHP":-1},"0"] | ["affine_quad","EFHP",1] |
| R91 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R92 | linear | [{"EFP":1,"EPR":1,"EFR":-1,"FPR":-1},"0"] | ["affine_quad","EFPR",1] |
| R93 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R94 | linear | [{"EHP":1,"EPQ":-1,"EHQ":-1,"HPQ":-1},"0"] | ["affine_quad","EHPQ",1] |
| R95 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R96 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R97 | quad | ["CEH","CER","93/125"] | ["quad","CREH","QS"] |
| R98 | bary | [["ACS",1],[null,["ACE",1],["ACR",1]],11,[3,3,3]] | ["side_pair_weights","AC","S","CER","3/11"] |
| R99 | bary | [["ARS",1],[["ACR",-1],["AER",1],null],11,[3,3,3]] | ["side_pair_weights","AR","S","CER","3/11"] |
| R100 | bary | [["EPS",1],[["CEP",1],null,["EPR",1]],11,[3,3,3]] | ["side_pair_weights","EP","S","CER","3/11"] |
| R101 | bary | [["FPS",1],[["CFP",1],["EFP",1],["FPR",1]],11,[3,3,3]] | ["side_pair_weights","FP","S","CER","3/11"] |
| R102 | bary | [["HPS",1],[["CHP",1],["EHP",1],["HPR",1]],11,[3,3,3]] | ["side_pair_weights","HP","S","CER","3/11"] |
| R103 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s8 | R0 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s16 | R1 | sub | hi | EPR | 269733/500000 | hi_AER,lo_AEP,lo_APR |
| s17 | R2 | sub | hi | AES | 269733/500000 | hi_AER,lo_ARS,lo_ERS |
| s33 | R7 | sub | hi | CFP | 3263/10000 | hi_BCF,lo_BCP,lo_BFP |
| s34 | R8 | sub | hi | BHP | 3263/10000 | hi_BCH,lo_BCP,lo_CHP |
| s49 | R9 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s62 | R11 | sumlo | lo | ABR | 114449/1000000 | lo_ABC,lo_AER,lo_ABE,lo_ACR,hi_ACE |
| s67 | R21 | sumlo | lo | AHP | 19239/200000 | lo_AEH,lo_APS,lo_AEP,lo_AHS,s17 |
| s68 | R23 | sumlo | lo | APR | 135673/1000000 | lo_AEP,lo_ARS,lo_AER,lo_APS,s17 |
| s80 | R30 | sumlo | lo | CFP | 6433/62500 | lo_ACF,lo_CHP,lo_ACP,lo_CFH,hi_ACH |
| s81 | R32 | sumlo | lo | CFR | 186137/1000000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_BCE |
| s82 | R33 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s83 | R33 | sumlo | lo | CHR | 44673/200000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_BCE |
| s85 | R34 | sumlo | lo | CQR | 186137/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,hi_BCE |
| s93 | R37 | sumlo | lo | AEF | 48537/250000 | lo_AEH,lo_EFR,lo_AER,lo_EFH,hi_EHR |
| s103 | R38 | sumlo | lo | CEQ | 95803/500000 | s82,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s113 | R42 | sumlo | lo | FHR | 8569/62500 | lo_AFH,lo_EFR,lo_AFR,lo_EFH,hi_AEF |
| s114 | R43 | sumlo | lo | FPR | 53607/500000 | s80,s113,s81,lo_FHP,hi_CFH |
| s115 | R44 | sumlo | lo | EFP | 15957/100000 | lo_EFH,s114,lo_EFR,lo_FHP,hi_FHR |
| s116 | R45 | sumlo | lo | AEH | 20523/62500 | lo_ABH,lo_EFH,lo_AFH,lo_BEH,hi_BFH |
| s122 | R48 | sumlo | lo | HPR | 60933/500000 | lo_CHP,s113,s83,lo_FHP,hi_CFH |
| s123 | R49 | sumlo | lo | AFP | 21387/200000 | lo_ABP,lo_FHP,s67,lo_BFP,s34 |
| s124 | R52 | sumlo | lo | AHP | 27499/250000 | lo_ACP,lo_FHP,s123,lo_CHP,s33 |
| s125 | R52 | sumlo | lo | CFP | 22561/200000 | lo_ACP,lo_FHP,s123,lo_CHP,s8 |
| s126 | R55 | sumlo | lo | FPR | 79963/500000 | s123,s122,s68,lo_FHP,s8 |
| s128 | R56 | sumlo | lo | BHP | 4241/40000 | lo_BCP,lo_FHP,lo_BFP,lo_CHP,s33 |
| s129 | R57 | sumlo | lo | EPQ | 4241/40000 | lo_BEP,lo_HPQ,lo_BPQ,lo_EHP,s34 |
| s130 | R58 | sumlo | lo | HPR | 125099/1000000 | lo_CHP,s126,lo_CPR,lo_FHP,s33 |
| s134 | R60 | sumlo | lo | PQR | 11637/125000 | lo_BPQ,s85,lo_BQR,lo_CPQ,hi_BCQ |
| s135 | R61 | sumlo | lo | ACR | 74183/500000 | s62,lo_CER,lo_AER,lo_BCR,hi_BER |
| s137 | R62 | sumlo | lo | CPR | 21847/200000 | s135,lo_EPR,s68,lo_CER,hi_AER |
| s145 | R65 | sumlo | lo | ARS | 143029/1000000 | lo_AER,lo_PRS,s68,lo_ERS,s16 |
| s155 | R67 | sumlo | lo | EFS | 83173/500000 | lo_AES,lo_FRS,lo_AFS,lo_ERS,hi_ARS |
| s157 | R68 | sumlo | lo | EQS | 83173/500000 | lo_AES,lo_QRS,lo_AQS,lo_ERS,hi_ARS |
| s158 | R69 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s49 |
| s160 | R70 | linear | lo | ACE | 102021/200000 | s135,lo_AER,hi_CER |
| s168 | R75 | linear | hi | AEF | 181157/250000 | hi_AEH,lo_AFH,hi_EFH |
| s171 | R77 | linear | hi | EPR | 496793/1000000 | lo_AEP,hi_AER,s68 |
| s173 | R79 | linear | hi | AES | 489437/1000000 | hi_AER,s145,lo_ERS |
| s174 | R81 | linear | lo | AFR | 201267/500000 | s123,s68,s126 |
| s188 | R84 | linear | lo | BCH | 11681/40000 | lo_BCP,s128,lo_CHP |
| s190 | R85 | linear | lo | BQR | 325637/1000000 | lo_BCQ,hi_BCR,s85 |
| s194 | R86 | linear | lo | BEQ | 11681/40000 | lo_BEP,lo_BPQ,s129 |
| s209 | R93 | linear | lo | EFR | 176173/500000 | s155,lo_ERS,lo_FRS |
| s210 | R94 | linear | lo | EHP | 11681/40000 | lo_EHQ,s129,lo_HPQ |
| s213 | R95 | linear | lo | EPR | 76067/250000 | s158,lo_ERS,lo_PRS |
| s215 | R96 | linear | lo | EQR | 176173/500000 | s157,lo_ERS,lo_QRS |
| s216 | R97 | quad | lo | CEH | 411739/1000000 | hi_CER |
| s219 | R98 | bary_lo | lo | ACS | 179583/1000000 | s160,s135 |
| s224 | R99 | bary_hi | hi | ARS | 144647/500000 | s135,hi_AER |
| s243 | R101 | bary_lo | lo | FPS | 13841/100000 | s125,s115,s126 |
| s246 | R102 | bary_lo | lo | HPS | 156033/1000000 | lo_CHP,s210,s130 |
| s247 | R103 | bary_hi | lo | PQS | 48289/500000 | lo_CPQ,s129,s134 |
| s254 | R4 | sum | lo | AFS | 67669/200000 | s123,lo_APS,s243 |
| s255 | R5 | sum | lo | AHS | 359029/1000000 | s124,lo_APS,s246 |
| s256 | R6 | sum | lo | AQS | 141289/500000 | lo_APQ,lo_APS,s247 |
| s263 | R13 | sumlo | lo | AEQ | 82473/500000 | s160,lo_AFQ,lo_ACQ,s93,hi_ACF |
| s265 | R15 | sumlo | lo | ACP | 2621/20000 | s160,lo_APS,s219,lo_AEP,s173 |
| s267 | R21 | sumlo | lo | AHP | 26123/200000 | s116,lo_APS,lo_AEP,s255,s173 |
| s268 | R23 | sumlo | lo | APR | 159047/1000000 | lo_AEP,s145,lo_AER,lo_APS,s173 |
| s271 | R25 | sumlo | lo | ACR | 157937/1000000 | lo_ABC,lo_CER,s160,lo_BCR,hi_BCE |
| s273 | R27 | sumlo | lo | BCP | 4653/50000 | lo_ABC,lo_CHP,s265,s188,hi_ACH |
| s275 | R28 | sumlo | lo | CEP | 201117/1000000 | s160,lo_CHP,s265,s216,hi_ACH |
| s276 | R29 | sumlo | lo | ACS | 37397/200000 | s160,lo_CRS,s271,lo_CES,hi_CER |
| s281 | R33 | sumlo | lo | CHR | 257753/1000000 | s188,lo_CER,lo_BCR,s216,hi_BCE |
| s282 | R34 | sumlo | lo | CQR | 205873/1000000 | lo_BCQ,lo_CER,lo_BCR,s103,hi_BCE |
| s288 | R35 | sumlo | lo | CEQ | 19449/62500 | s160,s215,s263,lo_CER,hi_AER |
| s289 | R36 | sumlo | lo | AES | 33703/100000 | s160,lo_ERS,lo_AER,lo_CES,hi_CER |
| s300 | R39 | sumlo | lo | EPS | 141457/1000000 | s275,lo_ERS,lo_CES,s213,hi_CER |
| s304 | R42 | sumlo | lo | AEF | 30833/125000 | lo_AFH,s209,s174,lo_EFH,hi_FHR |
| s305 | R42 | sumlo | lo | FHR | 187323/1000000 | lo_AFH,s209,s174,lo_EFH,s168 |
| s308 | R44 | sumlo | lo | EFP | 6427/31250 | lo_EFH,s126,s209,lo_FHP,hi_FHR |
| s312 | R48 | sumlo | lo | HPR | 72511/500000 | lo_CHP,s305,s281,lo_FHP,hi_CFH |
| s313 | R49 | sumlo | lo | AFP | 23349/200000 | lo_ABP,lo_FHP,s267,lo_BFP,s34 |
| s314 | R52 | sumlo | lo | AHP | 145327/1000000 | s265,lo_FHP,s313,lo_CHP,s33 |
| s315 | R52 | sumlo | lo | CFP | 74519/500000 | s265,lo_FHP,s313,lo_CHP,s8 |
| s316 | R55 | sumlo | lo | FPR | 48169/250000 | s313,s312,s268,lo_FHP,s8 |
| s318 | R56 | sumlo | lo | BHP | 26519/250000 | s273,lo_FHP,lo_BFP,lo_CHP,s33 |
| s320 | R58 | sumlo | lo | HPR | 29663/200000 | lo_CHP,s316,s137,lo_FHP,s33 |
| s321 | R59 | sumlo | lo | EPQ | 120731/1000000 | s194,lo_CPQ,lo_BPQ,s288,hi_BCQ |
| s322 | R60 | sumlo | lo | PQR | 5319/50000 | lo_BPQ,s282,s190,lo_CPQ,hi_BCQ |
| s325 | R62 | sumlo | lo | CPR | 63703/500000 | s271,s213,s268,lo_CER,hi_AER |
| s334 | R65 | sumlo | lo | ARS | 159691/1000000 | lo_AER,lo_PRS,s268,lo_ERS,s171 |
| s341 | R67 | sumlo | lo | EFS | 108557/500000 | s289,lo_FRS,s254,lo_ERS,s224 |
| s342 | R68 | sumlo | lo | EQS | 99593/500000 | s289,lo_QRS,s256,lo_ERS,s224 |
| s346 | R70 | linear | lo | ACE | 129919/250000 | s271,lo_AER,hi_CER |
| s348 | R71 | linear | hi | AFP | 41989/125000 | hi_ACF,s265,s315 |
| s349 | R72 | linear | lo | ACH | 369377/1000000 | s265,s314,lo_CHP |
| s350 | R72 | linear | hi | AHP | 2241/8000 | hi_ACH,s265,lo_CHP |
| s353 | R73 | linear | lo | ACQ | 6341/20000 | s265,lo_APQ,lo_CPQ |
| s358 | R77 | linear | hi | EPR | 473419/1000000 | lo_AEP,hi_AER,s268 |
| s360 | R79 | linear | hi | AES | 18911/40000 | hi_AER,s334,lo_ERS |
| s364 | R82 | linear | lo | AHR | 452689/1000000 | s314,s268,s320 |
| s369 | R83 | linear | lo | BCF | 167549/500000 | s273,lo_BFP,s315 |
| s372 | R83 | linear | hi | CFP | 2039/6250 | hi_BCF,s273,lo_BFP |
| s374 | R84 | linear | lo | BCH | 36517/125000 | s273,s318,lo_CHP |
| s391 | R87 | linear | lo | CEH | 15537/31250 | s288,lo_CHQ,lo_EHQ |
| s400 | R93 | linear | lo | EFR | 201557/500000 | s341,lo_ERS,lo_FRS |
| s401 | R94 | linear | lo | EHP | 306731/1000000 | lo_EHQ,s321,lo_HPQ |
| s403 | R95 | linear | lo | EPR | 327457/1000000 | s300,lo_ERS,lo_PRS |
| s405 | R96 | linear | lo | EQR | 192593/500000 | s342,lo_ERS,lo_QRS |
| s408 | R99 | bary_hi | hi | ARS | 71671/250000 | s271,hi_AER |
| s421 | R100 | bary_lo | lo | EPS | 36039/250000 | s275,s403 |
| s423 | R101 | bary_lo | lo | FPS | 88191/500000 | s315,s308,s316 |
| s426 | R102 | bary_lo | lo | HPS | 20797/125000 | lo_CHP,s401,s320 |
| s427 | R103 | bary_hi | lo | PQS | 26053/250000 | lo_CPQ,s321,s322 |
| s432 | R3 | sub | hi | EPS | 11471/40000 | s360,lo_AEP,lo_APS |
| s433 | R4 | sum | lo | AFS | 386127/1000000 | s313,lo_APS,s423 |
| s434 | R5 | sum | lo | AHS | 404703/1000000 | s314,lo_APS,s426 |
| s435 | R6 | sum | lo | AQS | 72553/250000 | lo_APQ,lo_APS,s427 |
| s439 | R10 | sum | lo | EPR | 82539/250000 | s421,lo_ERS,lo_PRS |
| s444 | R12 | sumlo | lo | AEH | 383281/1000000 | s346,lo_AFH,s349,s304,hi_ACF |
| s445 | R13 | sumlo | lo | AEQ | 205413/1000000 | s346,lo_AFQ,s353,s304,hi_ACF |
| s447 | R15 | sumlo | lo | ACP | 139007/1000000 | s346,lo_APS,s276,lo_AEP,s360 |
| s449 | R20 | sumlo | lo | AFP | 31119/250000 | s304,lo_APS,lo_AEP,s433,s360 |
| s450 | R21 | sumlo | lo | AHP | 31001/200000 | s444,lo_APS,lo_AEP,s434,s360 |
| s451 | R22 | sumlo | lo | APQ | 48747/500000 | lo_AEP,s435,s445,lo_APS,s360 |
| s452 | R23 | sumlo | lo | APR | 16793/100000 | lo_AEP,s334,lo_AER,lo_APS,s360 |
| s455 | R25 | sumlo | lo | ACR | 159853/1000000 | lo_ABC,lo_CER,s346,lo_BCR,hi_BCE |
| s456 | R26 | sumlo | lo | BCP | 98119/1000000 | lo_ABC,s315,s447,s369,hi_ACF |
| s457 | R28 | sumlo | lo | CEP | 116469/500000 | s346,lo_CHP,s447,s391,hi_ACH |
| s458 | R29 | sumlo | lo | ACS | 951/5000 | s346,lo_CRS,s455,lo_CES,hi_CER |
| s462 | R33 | sumlo | lo | CHR | 274921/1000000 | s374,lo_CER,lo_BCR,s391,hi_BCE |
| s470 | R35 | sumlo | lo | CEQ | 354919/1000000 | s346,s405,s445,lo_CER,hi_AER |
| s471 | R36 | sumlo | lo | AES | 339709/1000000 | s346,lo_ERS,lo_AER,lo_CES,hi_CER |
| s472 | R37 | sumlo | lo | AEF | 149343/500000 | s444,s400,lo_AER,lo_EFH,hi_EHR |
| s481 | R39 | sumlo | lo | EPS | 15761/100000 | s457,lo_ERS,lo_CES,s439,hi_CER |
| s482 | R40 | sumlo | lo | EQS | 51789/250000 | s470,lo_ERS,lo_CES,s405,hi_CER |
| s490 | R44 | sumlo | lo | EFP | 118469/500000 | lo_EFH,s316,s400,lo_FHP,hi_FHR |
| s491 | R46 | sumlo | lo | AHQ | 3059/31250 | s349,lo_FHQ,lo_AFH,lo_CHQ,hi_CFH |
| s492 | R47 | sumlo | lo | HPR | 6721/40000 | s450,s462,s364,lo_CHP,hi_ACH |
| s494 | R49 | sumlo | lo | BHP | 120157/1000000 | lo_ABP,lo_FHP,s450,lo_BFP,s348 |
| s497 | R52 | sumlo | lo | CFP | 89887/500000 | s447,lo_FHP,s449,lo_CHP,s350 |
| s498 | R53 | sumlo | lo | AFP | 67019/500000 | lo_AEP,s423,lo_APS,s490,s432 |
| s500 | R55 | sumlo | lo | FPR | 123827/500000 | s498,s492,s452,lo_FHP,s350 |
| s503 | R58 | sumlo | lo | HPR | 35911/200000 | lo_CHP,s500,s325,lo_FHP,s372 |
| s507 | R62 | sumlo | lo | CPR | 13733/100000 | s455,s439,s452,lo_CER,hi_AER |
| s508 | R63 | sumlo | lo | AFR | 101207/200000 | lo_AER,s500,s452,s400,s358 |
| s509 | R63 | diffhi | hi | FPR | 230391/500000 | hi_AFR,s358,s452,s400,lo_AER |
| s511 | R64 | sumlo | lo | ARS | 169573/1000000 | lo_AER,lo_FRS,s508,lo_ERS,hi_EFR |
| s522 | R67 | sumlo | lo | EFS | 11773/50000 | s471,lo_FRS,s433,lo_ERS,s408 |
| s525 | R70 | linear | lo | ACE | 65199/125000 | s455,lo_AER,hi_CER |
| s527 | R71 | linear | hi | AFP | 297219/1000000 | hi_ACF,s447,s497 |
| s528 | R72 | linear | lo | ACH | 96753/250000 | s447,s450,lo_CHP |
| s529 | R72 | linear | hi | AHP | 34021/125000 | hi_ACH,s447,lo_CHP |
| s532 | R73 | linear | lo | ACQ | 329501/1000000 | s447,s451,lo_CPQ |
| s539 | R77 | linear | hi | EPR | 58067/125000 | lo_AEP,hi_AER,s452 |
| s541 | R78 | linear | lo | AES | 34361/100000 | lo_AEP,lo_APS,s481 |
| s542 | R79 | linear | hi | AES | 462893/1000000 | hi_AER,s511,lo_ERS |
| s543 | R80 | linear | lo | AFH | 17743/62500 | lo_AFQ,s491,lo_FHQ |
| s548 | R82 | linear | lo | AHR | 50249/100000 | s450,s452,s503 |
| s555 | R83 | linear | lo | BCF | 370893/1000000 | s456,lo_BFP,s497 |
| s558 | R83 | linear | hi | CFP | 321181/1000000 | hi_BCF,s456,lo_BFP |
| s560 | R84 | linear | lo | BCH | 77819/250000 | s456,s494,lo_CHP |
| s574 | R87 | linear | lo | CEH | 540919/1000000 | s470,lo_CHQ,lo_EHQ |
| s582 | R90 | linear | lo | EHP | 13231/40000 | hi_EFH,s490,lo_FHP |
| s584 | R91 | linear | hi | FHR | 515419/1000000 | hi_EFH,s400,hi_EHR |
| s585 | R93 | linear | lo | EFR | 21073/50000 | s522,lo_ERS,lo_FRS |
| s590 | R95 | linear | lo | EPR | 34361/100000 | s481,lo_ERS,lo_PRS |
| s592 | R96 | linear | lo | EQR | 98289/250000 | s482,lo_ERS,lo_QRS |
| s597 | R99 | bary_hi | hi | ARS | 286161/1000000 | s455,hi_AER |
| s612 | R101 | bary_lo | lo | FPS | 53469/250000 | s497,s490,s500 |
| s616 | R102 | bary_lo | lo | HPS | 181453/1000000 | lo_CHP,s582,s503 |
| s622 | R3 | sub | hi | EPS | 276893/1000000 | s542,lo_AEP,lo_APS |
| s623 | R4 | sum | lo | AFS | 220457/500000 | s498,lo_APS,s612 |
| s624 | R5 | sum | lo | AHS | 214729/500000 | s450,lo_APS,s616 |
| s631 | R12 | sumlo | lo | AEH | 428033/1000000 | s525,s543,s528,s472,hi_ACF |
| s632 | R13 | sumlo | lo | AEQ | 47703/200000 | s525,lo_AFQ,s532,s472,hi_ACF |
| s634 | R15 | sumlo | lo | ACP | 71503/500000 | s525,lo_APS,s458,lo_AEP,s542 |
| s635 | R16 | sumlo | lo | ACS | 197631/1000000 | s525,s511,s455,s541,hi_AER |
| s637 | R20 | sumlo | lo | AFP | 148593/1000000 | s472,lo_APS,lo_AEP,s623,s542 |
| s639 | R21 | sumlo | lo | AHP | 86139/500000 | s631,lo_APS,lo_AEP,s624,s542 |
| s643 | R23 | sumlo | lo | APR | 347/2000 | lo_AEP,s511,lo_AER,lo_APS,s542 |
| s646 | R25 | sumlo | lo | ACR | 40059/250000 | lo_ABC,lo_CER,s525,lo_BCR,hi_BCE |
| s647 | R26 | sumlo | lo | BCP | 28311/250000 | lo_ABC,s497,s634,s555,hi_ACF |
| s654 | R33 | sumlo | lo | CHR | 295167/1000000 | s560,lo_CER,lo_BCR,s574,hi_BCE |
| s661 | R35 | sumlo | lo | CEQ | 374397/1000000 | s525,s592,s632,lo_CER,hi_AER |
| s662 | R37 | sumlo | lo | AEF | 333993/1000000 | s631,s585,lo_AER,lo_EFH,hi_EHR |
| s678 | R44 | sumlo | lo | EFP | 34103/125000 | lo_EFH,s500,s585,lo_FHP,s584 |
| s679 | R46 | sumlo | lo | AHQ | 12661/125000 | s528,lo_FHQ,s543,lo_CHQ,hi_CFH |
| s680 | R47 | sumlo | lo | HPR | 48387/250000 | s639,s654,s548,lo_CHP,hi_ACH |
| s684 | R49 | sumlo | lo | BHP | 28241/200000 | lo_ABP,lo_FHP,s639,lo_BFP,s527 |
| s688 | R52 | sumlo | lo | CFP | 19737/100000 | s634,lo_FHP,s637,lo_CHP,s529 |
| s691 | R53 | sumlo | lo | AFP | 163467/1000000 | lo_AEP,s612,lo_APS,s678,s622 |
| s693 | R54 | sumlo | lo | EPS | 43757/250000 | lo_AEP,s616,lo_APS,s582,s529 |
| s695 | R55 | sumlo | lo | AHP | 43429/250000 | s691,s680,s643,lo_FHP,s509 |
| s696 | R55 | sumlo | lo | FPR | 147051/500000 | s691,s680,s643,lo_FHP,s529 |
| s700 | R58 | sumlo | lo | HPR | 204453/1000000 | lo_CHP,s696,s507,lo_FHP,s558 |
| s702 | R62 | sumlo | lo | CPR | 71309/500000 | s646,s590,s643,lo_CER,hi_AER |
| s703 | R63 | sumlo | lo | AFR | 596789/1000000 | lo_AER,s696,s643,s585,s539 |
| s704 | R63 | diffhi | hi | FPR | 110621/250000 | hi_AFR,s539,s643,s585,lo_AER |
| s706 | R64 | sumlo | lo | ARS | 182397/1000000 | lo_AER,lo_FRS,s703,lo_ERS,hi_EFR |
| s716 | R67 | sumlo | lo | EFS | 254963/1000000 | s541,lo_FRS,s623,lo_ERS,s597 |
| s719 | R70 | linear | lo | ACE | 20879/40000 | s646,lo_AER,hi_CER |
| s724 | R72 | linear | lo | ACH | 204861/500000 | s634,s695,lo_CHP |
| s725 | R72 | linear | hi | AHP | 268169/1000000 | hi_ACH,s634,lo_CHP |
| s735 | R77 | linear | hi | EPR | 229483/500000 | lo_AEP,hi_AER,s643 |
| s737 | R78 | linear | lo | AES | 90257/250000 | lo_AEP,lo_APS,s693 |
| s738 | R79 | linear | hi | ARS | 135719/500000 | hi_AER,s737,lo_ERS |
| s739 | R79 | linear | hi | AES | 450069/1000000 | hi_AER,s706,lo_ERS |
| s740 | R80 | linear | lo | AFH | 35911/125000 | lo_AFQ,s679,lo_FHQ |
| s745 | R82 | linear | lo | AHR | 551669/1000000 | s695,s643,s700 |
| s754 | R83 | linear | hi | CFP | 38257/125000 | hi_BCF,s647,lo_BFP |
| s756 | R84 | linear | lo | BCH | 347449/1000000 | s647,s684,lo_CHP |
| s772 | R87 | linear | lo | CEH | 560397/1000000 | s661,lo_CHQ,lo_EHQ |
| s779 | R90 | linear | lo | EHP | 366661/1000000 | hi_EFH,s678,lo_FHP |
| s782 | R91 | linear | hi | FHR | 497073/1000000 | hi_EFH,s585,hi_EHR |
| s783 | R93 | linear | lo | EFR | 440963/1000000 | s716,lo_ERS,lo_FRS |
| s788 | R95 | linear | lo | EPR | 90257/250000 | s693,lo_ERS,lo_PRS |
| s809 | R101 | bary_lo | lo | FPS | 244329/1000000 | s688,s678,s696 |
| s813 | R102 | bary_lo | lo | HPS | 198031/1000000 | lo_CHP,s779,s700 |
| s820 | R3 | sub | hi | EPS | 264069/1000000 | s739,lo_AEP,lo_APS |
| s821 | R4 | sum | lo | AFS | 125199/250000 | s691,lo_APS,s809 |
| s822 | R5 | sum | lo | AHS | 464747/1000000 | s695,lo_APS,s813 |
| s833 | R15 | sumlo | lo | ACP | 29739/200000 | s719,lo_APS,s635,lo_AEP,s739 |
| s839 | R19 | sumlo | lo | AEH | 5859/12500 | s662,s745,lo_AER,s740,hi_AFR |
| s840 | R20 | sumlo | lo | AFP | 10781/62500 | s662,lo_APS,lo_AEP,s821,s739 |
| s842 | R21 | sumlo | lo | AHP | 96443/500000 | s839,lo_APS,lo_AEP,s822,s739 |
| s847 | R23 | sumlo | lo | APR | 90547/500000 | lo_AEP,s706,lo_AER,lo_APS,s739 |
| s852 | R25 | sumlo | lo | ACR | 160313/1000000 | lo_ABC,lo_CER,s719,lo_BCR,hi_BCE |
| s861 | R33 | sumlo | lo | CHR | 160393/500000 | s756,lo_CER,lo_BCR,s772,hi_BCE |
| s888 | R44 | sumlo | lo | EFP | 302531/1000000 | lo_EFH,s696,s783,lo_FHP,s782 |
| s891 | R46 | sumlo | lo | AHQ | 10523/100000 | s724,lo_FHQ,s740,lo_CHQ,hi_CFH |
| s892 | R47 | sumlo | lo | HPR | 112243/500000 | s842,s861,s745,lo_CHP,hi_ACH |
| s900 | R52 | sumlo | lo | CFP | 214521/1000000 | s833,lo_FHP,s840,lo_CHP,s725 |
| s907 | R53 | sumlo | lo | AFP | 192593/1000000 | lo_AEP,s809,lo_APS,s888,s820 |
| s915 | R55 | sumlo | lo | AHP | 211893/1000000 | s907,s892,s847,lo_FHP,s704 |
| s916 | R55 | sumlo | lo | FPR | 87407/250000 | s907,s892,s847,lo_FHP,s725 |
| s925 | R58 | sumlo | lo | HPR | 189/800 | lo_CHP,s916,s702,lo_FHP,s754 |
| s930 | R62 | sumlo | lo | CPR | 9339/62500 | s852,s788,s847,lo_CER,hi_AER |
| s933 | R63 | sumlo | lo | AFR | 702661/1000000 | lo_AER,s916,s847,s783,s735 |
| s935 | R63 | diffhi | hi | FPR | 213107/500000 | hi_AFR,s735,s847,s783,lo_AER |
| s937 | R64 | sumlo | lo | ARS | 98679/500000 | lo_AER,lo_FRS,s933,lo_ERS,hi_EFR |
| s938 | R64 | sumlo | lo | EFR | 478523/1000000 | lo_AER,lo_FRS,s933,lo_ERS,s738 |
| s948 | R66 | sumlo | lo | CFR | 14733/40000 | lo_CER,s916,s930,s938,s735 |
| s951 | R67 | sumlo | lo | EFS | 295277/1000000 | s737,lo_FRS,s821,lo_ERS,s738 |
| s963 | R71 | linear | lo | ACF | 555809/1000000 | s833,s907,s900 |
| s967 | R72 | linear | lo | ACH | 113397/250000 | s833,s915,lo_CHP |
| s968 | R72 | linear | hi | AHP | 3281/12500 | hi_ACH,s833,lo_CHP |
| s970 | R72 | linear | hi | CHP | 143587/1000000 | hi_ACH,s833,s915 |
| s974 | R74 | linear | lo | ACS | 21141/100000 | s852,s937,s49 |
| s978 | R76 | linear | lo | AEF | 227859/500000 | hi_AER,s933,s938 |
| s984 | R77 | linear | hi | EPR | 112843/250000 | lo_AEP,hi_AER,s847 |
| s987 | R79 | linear | hi | AES | 108777/250000 | hi_AER,s937,lo_ERS |
| s989 | R80 | linear | lo | AFH | 29123/100000 | lo_AFQ,s891,lo_FHQ |
| s997 | R82 | linear | lo | AHR | 629237/1000000 | s915,s847,s925 |
| s1038 | R88 | linear | lo | CFH | 174967/500000 | s900,s970,lo_FHP |
| s1044 | R89 | linear | lo | CFS | 39383/125000 | s948,s49,lo_FRS |
| s1053 | R91 | linear | hi | FHR | 44001/100000 | hi_EFH,s938,hi_EHR |
| s1055 | R92 | linear | lo | EFP | 376779/1000000 | s938,s984,s916 |
| s1058 | R93 | linear | lo | EFR | 481277/1000000 | s951,lo_ERS,lo_FRS |
| s1089 | R101 | bary_lo | lo | FPS | 14781/50000 | s900,s1055,s916 |
| s1099 | R3 | sub | hi | EPS | 62277/250000 | s987,lo_AEP,lo_APS |
| s1100 | R4 | sum | lo | AFS | 581213/1000000 | s907,lo_APS,s1089 |
| s1119 | R14 | sumlo | lo | ACE | 560547/1000000 | s963,lo_AER,s852,s978,hi_AFR |
| s1123 | R15 | sumlo | lo | ACP | 82499/500000 | s1119,lo_APS,s974,lo_AEP,s987 |
| s1128 | R17 | diffhi | hi | AFP | 125263/500000 | hi_ACF,s968,s1123,s989,s967 |
| s1134 | R18 | sumlo | lo | ACS | 49573/200000 | s963,s937,s852,s1100,hi_AFR |
| s1142 | R20 | sumlo | lo | AFP | 221633/1000000 | s978,lo_APS,lo_AEP,s1100,s987 |
| s1157 | R23 | sumlo | lo | APR | 95259/500000 | lo_AEP,s937,lo_AER,lo_APS,s987 |
| s1158 | R24 | sumlo | lo | AFR | 742701/1000000 | s989,s1157,s1142,s997,s968 |
| s1175 | R30 | sumlo | lo | CFP | 43409/200000 | s963,lo_CHP,s1123,s1038,hi_ACH |
| s1180 | R31 | sumlo | lo | CPS | 6869/40000 | s1123,s1044,s1134,s1175,hi_ACF |
| s1234 | R41 | sumlo | lo | FPR | 12319/31250 | s1142,s948,s1158,s1175,hi_ACF |
| s1236 | R41 | diffhi | hi | CFP | 243591/1000000 | hi_ACF,s935,s1142,s948,s1158 |
| s1259 | R44 | sumlo | lo | EFP | 77697/200000 | lo_EFH,s1234,s1058,lo_FHP,s1053 |
| s1291 | R50 | sumlo | lo | CEP | 336429/1000000 | s1123,s1259,lo_AEP,s1175,s1128 |
| s1295 | R51 | sumlo | lo | ACP | 18971/100000 | lo_AEP,s1180,lo_APS,s1291,s1099 |
| s1301 | R52 | sumlo | lo | AHP | 301903/1000000 | s1295,lo_FHP,s1142,lo_CHP,s1236 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AHP | s1301 | s968 |

The two cited bounds give 301903/1000000 <= |AHP| <= 3281/12500, with exact positive gap 39423/1000000.

## Leaf A013

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ACS | ACS | lo | 279/1000 | cost:P |
| lo_ARS | ARS | lo | 279/1000 | cost:P |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R1 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R2 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s22 | R0 | sub | hi | AES | 176733/500000 | hi_AER,lo_ARS,lo_ERS |
| s52 | R1 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s216 | R2 | sumlo | lo | AES | 88701/250000 | lo_ACS,lo_ERS,lo_ARS,lo_CES,s52 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AES | s216 | s22 |

The two cited bounds give 88701/250000 <= |AES| <= 176733/500000, with exact positive gap 669/500000.

## Leaf A014

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ABS | ABS | lo | 279/1000 | cost:P |
| lo_ACF | ACF | lo | 279/1000 | cost:P |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 279/1000 | cost:P |
| lo_ACS | ACS | lo | 279/1000 | cost:P |
| lo_AEH | AEH | lo | 279/1000 | cost:Q |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AFH | AFH | lo | 279/1000 | cost:Q |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BES | BES | lo | 93/1000 | cost: |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_CEF | CEF | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFH | CFH | lo | 279/1000 | cost:Q |
| lo_CFS | CFS | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 347/500 | cost:QS |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 279/1000 | cost:Q |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FHR | FHR | lo | 279/1000 | cost:Q |
| lo_FHS | FHS | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ABE | ABE | hi | 43477363/64397000 | C028 |
| hi_ACE | ACE | hi | 7016953/8875000 | C043 |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_ACR | ACR | hi | 445132103342243/1016178625000000 | C035 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BCR | BCR | hi | 279/2000 | C047 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFH | BFH | hi | 77/125 | C015 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFH | CFH | hi | 77/125 | C048 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R2 | fan | ["AFH","AFQ","AHQ","FHQ"] | ["fan","AFH","Q"] |
| R3 | fan | ["BCF","BCP","BFP","CFP"] | ["fan","BCF","P"] |
| R4 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R5 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R6 | fan | ["EHR","EHQ","EQR","HQR"] | ["fan","EHR","Q"] |
| R7 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R8 | fan | ["EHS","EHQ","EQS","HQS"] | ["fan","EHS","Q"] |
| R9 | fan | ["FHS","FHQ","FQS","HQS"] | ["fan","FHS","Q"] |
| R10 | plu | ["ACF","AEQ","ACE","AFQ","ACQ","AEF"] | ["plu","ACEFQ"] |
| R11 | plu | ["ACE","AHR","ACH","AER","ACR","AEH"] | ["plu","ACEHR"] |
| R12 | plu | ["ACE","AQR","ACQ","AER","ACR","AEQ"] | ["plu","ACEQR"] |
| R13 | plu | ["ACF","AHR","ACH","AFR","ACR","AFH"] | ["plu","ACFHR"] |
| R14 | plu | ["ACR","AHP","ACH","APR","ACP","AHR"] | ["plu","ACHPR"] |
| R15 | plu | ["ACR","APQ","ACP","AQR","ACQ","APR"] | ["plu","ACPQR"] |
| R16 | plu | ["ABE","BHS","ABH","BES","ABS","BEH"] | ["plu","BAEHS"] |
| R17 | plu | ["ABF","BHR","ABH","BFR","ABR","BFH"] | ["plu","BAFHR"] |
| R18 | plu | ["ACF","CEH","ACE","CFH","ACH","CEF"] | ["plu","CAEFH"] |
| R19 | plu | ["ACE","CFR","ACF","CER","ACR","CEF"] | ["plu","CAEFR"] |
| R20 | plu | ["ACE","CHR","ACH","CER","ACR","CEH"] | ["plu","CAEHR"] |
| R21 | plu | ["ACF","CHR","ACH","CFR","ACR","CFH"] | ["plu","CAFHR"] |
| R22 | plu | ["ACF","CHS","ACH","CFS","ACS","CFH"] | ["plu","CAFHS"] |
| R23 | plu | ["ACH","CPR","ACP","CHR","ACR","CHP"] | ["plu","CAHPR"] |
| R24 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R25 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R26 | plu | ["CEH","CFR","CEF","CHR","CER","CFH"] | ["plu","CEFHR"] |
| R27 | plu | ["AEF","CEQ","ACE","EFQ","AEQ","CEF"] | ["plu","EACFQ"] |
| R28 | plu | ["AER","CEF","ACE","EFR","AEF","CER"] | ["plu","EACFR"] |
| R29 | plu | ["AEF","EQR","AEQ","EFR","AER","EFQ"] | ["plu","EAFQR"] |
| R30 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R31 | plu | ["CEF","EHR","CEH","EFR","CER","EFH"] | ["plu","ECFHR"] |
| R32 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R33 | plu | ["EFQ","EHR","EFH","EQR","EFR","EHQ"] | ["plu","EFHQR"] |
| R34 | plu | ["AFH","BFQ","ABF","FHQ","AFQ","BFH"] | ["plu","FABHQ"] |
| R35 | plu | ["AEF","CFH","ACF","EFH","AFH","CEF"] | ["plu","FACEH"] |
| R36 | plu | ["AEF","CFQ","ACF","EFQ","AFQ","CEF"] | ["plu","FACEQ"] |
| R37 | plu | ["AFR","CEF","ACF","EFR","AEF","CFR"] | ["plu","FACER"] |
| R38 | plu | ["AFH","CFQ","ACF","FHQ","AFQ","CFH"] | ["plu","FACHQ"] |
| R39 | plu | ["AFR","CFH","ACF","FHR","AFH","CFR"] | ["plu","FACHR"] |
| R40 | plu | ["AFR","CFQ","ACF","FQR","AFQ","CFR"] | ["plu","FACQR"] |
| R41 | plu | ["AEF","FHR","AFH","EFR","AFR","EFH"] | ["plu","FAEHR"] |
| R42 | plu | ["BFH","FQR","BFQ","FHR","BFR","FHQ"] | ["plu","FBHQR"] |
| R43 | plu | ["AEH","BFH","ABH","EFH","AFH","BEH"] | ["plu","HABEF"] |
| R44 | plu | ["AEH","CFH","ACH","EFH","AFH","CEH"] | ["plu","HACEF"] |
| R45 | plu | ["AHR","CEH","ACH","EHR","AEH","CHR"] | ["plu","HACER"] |
| R46 | plu | ["AHS","CFH","ACH","FHS","AFH","CHS"] | ["plu","HACFS"] |
| R47 | plu | ["AEH","FHR","AFH","EHR","AHR","EFH"] | ["plu","HAEFR"] |
| R48 | plu | ["AHQ","EHS","AEH","HQS","AHS","EHQ"] | ["plu","HAEQS"] |
| R49 | plu | ["AHQ","FHR","AFH","HQR","AHR","FHQ"] | ["plu","HAFQR"] |
| R50 | plu | ["BHQ","EHS","BEH","HQS","BHS","EHQ"] | ["plu","HBEQS"] |
| R51 | plu | ["CEH","FHR","CFH","EHR","CHR","EFH"] | ["plu","HCEFR"] |
| R52 | plu | ["CHQ","EHS","CEH","HQS","CHS","EHQ"] | ["plu","HCEQS"] |
| R53 | plu | ["EHS","HQR","EHQ","HRS","EHR","HQS"] | ["plu","HEQRS"] |
| R54 | plu | ["AFP","BHP","ABP","FHP","AHP","BFP"] | ["plu","PABFH"] |
| R55 | plu | ["AHP","CFP","ACP","FHP","AFP","CHP"] | ["plu","PACFH"] |
| R56 | plu | ["AHQ","CFQ","ACQ","FHQ","AFQ","CHQ"] | ["plu","QACFH"] |
| R57 | plu | ["AER","CHR","ACR","EHR","AHR","CER"] | ["plu","RACEH"] |
| R58 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R59 | plu | ["AQR","EHR","AER","HQR","AHR","EQR"] | ["plu","RAEHQ"] |
| R60 | plu | ["ARS","EQR","AER","QRS","AQR","ERS"] | ["plu","RAEQS"] |
| R61 | plu | ["CFR","EHR","CER","FHR","CHR","EFR"] | ["plu","RCEFH"] |
| R62 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R63 | plu | ["CRS","EHR","CER","HRS","CHR","ERS"] | ["plu","RCEHS"] |
| R64 | plu | ["EFR","HRS","EHR","FRS","ERS","FHR"] | ["plu","REFHS"] |
| R65 | plu | ["EQR","HRS","EHR","QRS","ERS","HQR"] | ["plu","REHQS"] |
| R66 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R67 | plu | ["CFS","HRS","CHS","FRS","CRS","FHS"] | ["plu","SCFHR"] |
| R68 | plu | ["EFS","HRS","EHS","FRS","ERS","FHS"] | ["plu","SEFHR"] |
| R69 | plu | ["EQS","HRS","EHS","QRS","ERS","HQS"] | ["plu","SEHQR"] |
| R70 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R71 | linear | [{"ACP":-1,"APQ":-1,"ACQ":1,"CPQ":-1},"0"] | ["affine_quad","ACPQ",-1] |
| R72 | linear | [{"ACP":-1,"APR":-1,"ACR":1,"CPR":-1},"0"] | ["affine_quad","ACPR",-1] |
| R73 | linear | [{"AFH":1,"AHQ":-1,"AFQ":-1,"FHQ":-1},"0"] | ["affine_quad","AFHQ",1] |
| R74 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R75 | linear | [{"BCF":-1,"BFR":1,"BCR":1,"CFR":-1},"0"] | ["affine_quad","BCFR",-1] |
| R76 | linear | [{"BFH":1,"BHQ":-1,"BFQ":-1,"FHQ":-1},"0"] | ["affine_quad","BFHQ",1] |
| R77 | linear | [{"CEF":-1,"CFH":-1,"CEH":1,"EFH":1},"0"] | ["affine_quad","CEFH",-1] |
| R78 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R79 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R80 | linear | [{"CEQ":-1,"CQS":1,"CES":-1,"EQS":1},"0"] | ["affine_quad","CEQS",-1] |
| R81 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R82 | linear | [{"CFH":1,"CHQ":-1,"CFQ":-1,"FHQ":-1},"0"] | ["affine_quad","CFHQ",1] |
| R83 | linear | [{"CFQ":-1,"CQS":1,"CFS":-1,"FQS":1},"0"] | ["affine_quad","CFQS",-1] |
| R84 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R85 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R86 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R87 | linear | [{"EFH":1,"EHS":1,"EFS":-1,"FHS":-1},"0"] | ["affine_quad","EFHS",1] |
| R88 | linear | [{"EFQ":1,"EQS":1,"EFS":-1,"FQS":-1},"0"] | ["affine_quad","EFQS",1] |
| R89 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R90 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R91 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R92 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R93 | linear | [{"FHQ":-1,"FQR":-1,"FHR":1,"HQR":-1},"0"] | ["affine_quad","FHQR",-1] |
| R94 | linear | [{"FHQ":-1,"FQS":-1,"FHS":1,"HQS":-1},"0"] | ["affine_quad","FHQS",-1] |
| R95 | quad | ["ABR","BCR","449/1000"] | ["quad","ABCR","P"] |
| R96 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R97 | quad | ["ACS","CRS","449/1000"] | ["quad","ACRS","P"] |
| R98 | bary | [["AHS",-1],[["ACH",-1],["AEH",-1],["AHR",-1]],11,[3,3,3]] | ["side_pair_weights","AH","S","CER","3/11"] |
| R99 | linear | [{"ACS":-3,"AES":5,"ARS":-3},"0"] | ["barycentric","AS","S","CER","upper"] |
| R100 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R101 | bary | [["FQS",1],[["CFQ",1],["EFQ",1],["FQR",1]],11,[3,3,3]] | ["side_pair_weights","FQ","S","CER","3/11"] |
| R102 | bary | [["HRS",1],[["CHR",-1],["EHR",1],null],11,[3,3,3]] | ["side_pair_weights","HR","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s12 | R0 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s25 | R2 | sub | hi | AHQ | 12727/40000 | hi_AFH,lo_AFQ,lo_FHQ |
| s29 | R3 | sub | hi | CFP | 3263/10000 | hi_BCF,lo_BCP,lo_BFP |
| s30 | R4 | sub | hi | BHP | 3263/10000 | hi_BCH,lo_BCP,lo_CHP |
| s45 | R5 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s54 | R6 | sub | hi | EQR | 547371/1000000 | hi_EHR,lo_EHQ,lo_HQR |
| s56 | R7 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s75 | R11 | sumlo | lo | AHR | 39381/200000 | lo_ACH,lo_AER,lo_ACR,lo_AEH,hi_ACE |
| s78 | R14 | sumlo | lo | AHP | 101037/1000000 | lo_ACH,lo_APR,lo_ACP,s75,hi_ACR |
| s80 | R16 | sumlo | lo | BHS | 299601/1000000 | lo_ABH,lo_BES,lo_ABS,lo_BEH,hi_ABE |
| s91 | R22 | sumlo | lo | CHS | 168487/1000000 | lo_ACH,lo_CFS,lo_ACS,lo_CFH,hi_ACF |
| s92 | R24 | sumlo | lo | CFR | 186137/1000000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_BCE |
| s93 | R25 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s94 | R25 | sumlo | lo | CHR | 44673/200000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_BCE |
| s110 | R30 | sumlo | lo | CEH | 476613/1000000 | s93,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s124 | R32 | sumlo | lo | EHS | 65531/200000 | s110,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s135 | R39 | sumlo | lo | AFR | 21067/100000 | lo_ACF,lo_FHR,lo_AFH,s92,hi_CFH |
| s136 | R41 | sumlo | lo | AEF | 88527/500000 | lo_AFH,lo_EFR,s135,lo_EFH,hi_FHR |
| s141 | R43 | sumlo | lo | AEH | 20523/62500 | lo_ABH,lo_EFH,lo_AFH,lo_BEH,hi_BFH |
| s142 | R45 | sumlo | lo | AHR | 281143/1000000 | lo_ACH,lo_EHR,s141,s94,hi_CEH |
| s143 | R46 | sumlo | lo | AHS | 50669/250000 | lo_ACH,lo_FHS,lo_AFH,s91,hi_CFH |
| s145 | R47 | sumlo | lo | AEH | 199683/500000 | lo_AFH,lo_EHR,s142,lo_EFH,hi_FHR |
| s146 | R48 | sumlo | lo | AHQ | 6393/62500 | s145,lo_HQS,s143,lo_EHQ,s56 |
| s152 | R50 | sumlo | lo | BHQ | 33763/200000 | lo_BEH,lo_HQS,s80,lo_EHQ,s56 |
| s155 | R52 | sumlo | lo | CHQ | 27401/250000 | s110,lo_HQS,s91,lo_EHQ,s56 |
| s159 | R53 | sumlo | lo | HQR | 133713/1000000 | lo_EHQ,lo_HRS,lo_EHR,lo_HQS,s56 |
| s162 | R54 | sumlo | lo | AFP | 21663/200000 | lo_ABP,lo_FHP,s78,lo_BFP,s30 |
| s165 | R55 | sumlo | lo | AHP | 11039/100000 | lo_ACP,lo_FHP,s162,lo_CHP,s29 |
| s166 | R55 | sumlo | lo | CFP | 113209/1000000 | lo_ACP,lo_FHP,s162,lo_CHP,s12 |
| s174 | R56 | sumlo | lo | CFQ | 22717/200000 | lo_ACQ,lo_FHQ,lo_AFQ,s155,s25 |
| s181 | R57 | sumlo | lo | AER | 219613/500000 | lo_ACR,lo_EHR,s142,lo_CER,hi_CHR |
| s182 | R57 | sumlo | lo | CHR | 375021/1000000 | lo_ACR,lo_EHR,s142,lo_CER,hi_AER |
| s190 | R59 | sumlo | lo | AQR | 187039/1000000 | s181,s159,s142,lo_EQR,hi_EHR |
| s192 | R60 | sumlo | lo | ARS | 26601/250000 | s181,lo_QRS,s190,lo_ERS,s54 |
| s195 | R61 | sumlo | lo | CFR | 62203/250000 | lo_CER,lo_FHR,s182,lo_EFR,hi_EHR |
| s198 | R63 | diffhi | hi | HRS | 259451/1000000 | s45,hi_EHR,s182,lo_ERS,lo_CER |
| s207 | R65 | sumlo | lo | HRS | 14063/100000 | lo_EHR,lo_QRS,lo_ERS,s159,s54 |
| s223 | R68 | sumlo | lo | EFS | 108727/500000 | s124,lo_FRS,lo_ERS,lo_FHS,s198 |
| s224 | R69 | sumlo | lo | EQS | 150783/1000000 | s124,lo_QRS,lo_ERS,lo_HQS,s198 |
| s233 | R70 | linear | lo | ACH | 29639/100000 | lo_ACP,s165,lo_CHP |
| s238 | R73 | linear | lo | AFH | 9009/31250 | lo_AFQ,s146,lo_FHQ |
| s241 | R74 | linear | lo | BCF | 299209/1000000 | lo_BCP,lo_BFP,s166 |
| s243 | R75 | linear | lo | BFR | 408521/1000000 | s241,hi_BCR,s195 |
| s253 | R76 | linear | lo | BFH | 70963/200000 | lo_BFQ,s152,lo_FHQ |
| s259 | R79 | linear | lo | CEH | 18419/25000 | hi_CER,s182,lo_EHR |
| s260 | R79 | linear | hi | CHR | 117571/200000 | hi_CEH,hi_CER,lo_EHR |
| s267 | R85 | linear | lo | CHS | 36939/100000 | s182,s45,s207 |
| s274 | R89 | linear | lo | EFR | 201727/500000 | s223,lo_ERS,lo_FRS |
| s277 | R90 | linear | hi | EQR | 253329/500000 | lo_EHQ,hi_EHR,s159 |
| s280 | R91 | linear | hi | EHS | 499741/1000000 | hi_EHR,lo_ERS,s207 |
| s282 | R92 | linear | lo | EQR | 336783/1000000 | s224,lo_ERS,lo_QRS |
| s285 | R93 | linear | lo | FHR | 319713/1000000 | lo_FHQ,lo_FQR,s159 |
| s286 | R95 | quad | lo | ABR | 619/2000 | hi_BCR |
| s287 | R96 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s288 | R97 | quad | lo | ACS | 302739/1000000 | s45 |
| s291 | R98 | bary_hi | lo | AHS | 317543/1000000 | s233,s145,s142 |
| s295 | R99 | linear | lo | AES | 49097/200000 | s288,s192 |
| s303 | R100 | bary_lo | hi | CHS | 295979/500000 | hi_CEH,s260 |
| s311 | R101 | bary_lo | lo | FQS | 49307/500000 | s174,lo_EFQ,lo_FQR |
| s315 | R102 | bary_hi | hi | HRS | 7221/31250 | s182,hi_EHR |
| s323 | R1 | sum | lo | AER | 444889/1000000 | s295,s192,lo_ERS |
| s329 | R9 | sum | lo | FHS | 142307/500000 | lo_FHQ,s311,lo_HQS |
| s333 | R10 | sumlo | lo | AEQ | 142353/1000000 | s287,lo_AFQ,lo_ACQ,s136,hi_ACF |
| s334 | R11 | sumlo | lo | AHR | 307703/1000000 | s233,s323,lo_ACR,s145,hi_ACE |
| s336 | R12 | sumlo | lo | AQR | 25903/125000 | lo_ACQ,s323,lo_ACR,s333,hi_ACE |
| s338 | R14 | sumlo | lo | AHP | 128253/1000000 | s233,lo_APR,lo_ACP,s334,hi_ACR |
| s339 | R15 | sumlo | lo | APQ | 25807/250000 | lo_ACP,s336,lo_ACQ,lo_APR,hi_ACR |
| s341 | R17 | sumlo | lo | ABF | 31883/200000 | lo_ABH,s243,s286,s253,hi_BHR |
| s350 | R23 | sumlo | lo | CPR | 377/3125 | lo_ACP,s182,lo_ACR,lo_CHP,hi_ACH |
| s377 | R32 | sumlo | lo | EHS | 400471/1000000 | s259,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s383 | R33 | sumlo | lo | EFQ | 9387/100000 | lo_EFH,s282,s274,lo_EHQ,hi_EHR |
| s387 | R34 | sumlo | lo | BFQ | 47427/500000 | s341,lo_FHQ,lo_AFQ,s253,hi_AFH |
| s391 | R42 | sumlo | lo | FQR | 55453/500000 | s387,s285,s243,lo_FHQ,hi_BFH |
| s392 | R45 | sumlo | lo | AHR | 187167/500000 | s233,lo_EHR,s145,s182,hi_CEH |
| s393 | R47 | sumlo | lo | AEH | 106707/250000 | s238,lo_EHR,s392,lo_EFH,hi_FHR |
| s395 | R48 | sumlo | lo | AHQ | 34631/250000 | s393,lo_HQS,s291,lo_EHQ,s280 |
| s402 | R52 | sumlo | lo | CHQ | 4117/20000 | s259,lo_HQS,s267,lo_EHQ,s280 |
| s411 | R53 | sumlo | lo | HQR | 155321/1000000 | lo_EHQ,s207,lo_EHR,lo_HQS,s280 |
| s416 | R56 | sumlo | lo | CFQ | 141717/1000000 | lo_ACQ,lo_FHQ,lo_AFQ,s402,s25 |
| s419 | R57 | sumlo | lo | AER | 253519/500000 | lo_ACR,lo_EHR,s392,lo_CER,s260 |
| s420 | R57 | sumlo | lo | CHR | 20543/50000 | lo_ACR,lo_EHR,s392,lo_CER,hi_AER |
| s424 | R58 | sumlo | lo | AFR | 213489/500000 | s419,s285,s392,s274,hi_EHR |
| s428 | R59 | sumlo | lo | AQR | 279289/1000000 | s419,s411,s392,s282,hi_EHR |
| s434 | R61 | sumlo | lo | CFR | 347659/1000000 | lo_CER,s285,s420,s274,hi_EHR |
| s436 | R63 | sumlo | lo | CRS | 52801/500000 | lo_CER,s207,s420,lo_ERS,hi_EHR |
| s439 | R64 | sumlo | lo | EFR | 407991/1000000 | lo_EHR,lo_FRS,lo_ERS,s285,s315 |
| s445 | R65 | sumlo | lo | HRS | 155897/1000000 | lo_EHR,lo_QRS,lo_ERS,s411,s277 |
| s466 | R68 | sumlo | lo | EFS | 275727/1000000 | s377,lo_FRS,lo_ERS,s329,s315 |
| s479 | R70 | linear | lo | ACH | 314253/1000000 | lo_ACP,s338,lo_CHP |
| s481 | R71 | linear | lo | ACQ | 72307/250000 | lo_ACP,s339,lo_CPQ |
| s484 | R72 | linear | lo | ACR | 3833/12500 | lo_ACP,lo_APR,s350 |
| s489 | R73 | linear | lo | AFH | 81131/250000 | lo_AFQ,s395,lo_FHQ |
| s513 | R79 | linear | lo | CEH | 772599/1000000 | hi_CER,s420,lo_EHR |
| s515 | R81 | linear | lo | CER | 145801/500000 | lo_CES,s436,lo_ERS |
| s518 | R82 | linear | lo | CFH | 440567/1000000 | s416,s402,lo_FHQ |
| s524 | R85 | linear | hi | CHR | 291161/500000 | s303,s45,s445 |
| s525 | R85 | linear | lo | CHS | 26281/62500 | s420,s45,s445 |
| s530 | R86 | linear | hi | FHR | 255271/500000 | hi_EFH,s439,hi_EHR |
| s531 | R87 | linear | hi | EFS | 40029/100000 | hi_EFH,s280,s329 |
| s532 | R87 | linear | hi | FHS | 409177/1000000 | hi_EFH,s466,s280 |
| s533 | R89 | linear | lo | EFR | 461727/1000000 | s466,lo_ERS,lo_FRS |
| s538 | R91 | linear | hi | EHS | 242237/500000 | hi_EHR,lo_ERS,s445 |
| s546 | R93 | linear | lo | FHR | 359227/1000000 | lo_FHQ,s391,s411 |
| s548 | R94 | linear | hi | FQS | 223177/1000000 | lo_FHQ,s532,lo_HQS |
| s562 | R100 | bary_lo | hi | CHS | 590449/1000000 | hi_CEH,s524 |
| s565 | R101 | bary_lo | lo | FQS | 22313/200000 | s416,s383,s391 |
| s576 | R8 | sub | hi | EQS | 149237/500000 | s538,lo_EHQ,lo_HQS |
| s579 | R9 | sum | lo | FHS | 59513/200000 | lo_FHQ,s565,lo_HQS |
| s585 | R13 | sumlo | lo | AHR | 47421/125000 | s479,s424,s484,s489,hi_ACF |
| s587 | R14 | sumlo | lo | AHP | 7363/50000 | s479,lo_APR,lo_ACP,s585,hi_ACR |
| s588 | R15 | sumlo | lo | APQ | 1207/10000 | lo_ACP,s428,s481,lo_APR,hi_ACR |
| s602 | R20 | sumlo | lo | ACE | 2821/5000 | s479,s515,s484,s513,s524 |
| s603 | R20 | sumlo | lo | CHR | 415543/1000000 | s479,s515,s484,s513,hi_ACE |
| s606 | R21 | sumlo | lo | ACF | 41961/100000 | s479,s434,s484,s518,s524 |
| s610 | R23 | sumlo | lo | CPR | 133213/1000000 | lo_ACP,s603,s484,lo_CHP,hi_ACH |
| s634 | R31 | sumlo | lo | CEF | 523403/1000000 | s513,s533,s515,lo_EFH,hi_EHR |
| s636 | R32 | sumlo | lo | EHS | 205251/500000 | s513,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s647 | R38 | sumlo | lo | CFQ | 39667/250000 | s606,lo_FHQ,lo_AFQ,s518,hi_AFH |
| s648 | R39 | sumlo | lo | AFR | 85571/200000 | s606,s546,s489,s434,hi_CFH |
| s650 | R41 | sumlo | lo | AEF | 46429/125000 | s489,s533,s648,lo_EFH,s530 |
| s659 | R44 | sumlo | lo | AEH | 113617/250000 | s479,lo_EFH,s489,s513,hi_CFH |
| s660 | R45 | sumlo | lo | AHR | 428543/1000000 | s479,lo_EHR,s659,s603,hi_CEH |
| s666 | R49 | sumlo | lo | AHQ | 22099/125000 | s489,s411,s660,lo_FHQ,s530 |
| s670 | R51 | sumlo | lo | FHR | 9067/25000 | s518,lo_EHR,s603,lo_EFH,hi_CEH |
| s673 | R52 | sumlo | lo | CHQ | 229027/1000000 | s513,lo_HQS,s525,lo_EHQ,s538 |
| s681 | R53 | sumlo | lo | HQR | 81573/500000 | lo_EHQ,s445,lo_EHR,lo_HQS,s538 |
| s689 | R57 | sumlo | lo | CHR | 465593/1000000 | s484,lo_EHR,s660,s515,hi_AER |
| s713 | R61 | sumlo | lo | CFR | 437343/1000000 | s515,s670,s689,s533,hi_EHR |
| s715 | R62 | sumlo | lo | EFR | 463499/1000000 | s515,lo_FRS,s713,lo_ERS,s45 |
| s718 | R63 | sumlo | lo | CRS | 12103/100000 | s515,s445,s689,lo_ERS,hi_EHR |
| s719 | R63 | diffhi | hi | HRS | 27419/125000 | s45,hi_EHR,s689,lo_ERS,s515 |
| s742 | R66 | diffhi | hi | CQS | 37641/100000 | s45,s576,lo_CES,lo_QRS,lo_ERS |
| s743 | R67 | sumlo | lo | CFS | 68493/200000 | s525,lo_FRS,s718,s579,s719 |
| s746 | R68 | sumlo | lo | EFS | 300203/1000000 | s636,lo_FRS,lo_ERS,s579,s719 |
| s747 | R68 | sumlo | lo | HRS | 82253/500000 | s636,lo_FRS,lo_ERS,s579,s531 |
| s763 | R70 | linear | lo | ACH | 16663/50000 | lo_ACP,s587,lo_CHP |
| s765 | R71 | linear | lo | ACQ | 3067/10000 | lo_ACP,s588,lo_CPQ |
| s768 | R72 | linear | lo | ACR | 319213/1000000 | lo_ACP,lo_APR,s610 |
| s779 | R73 | linear | lo | AFH | 45349/125000 | lo_AFQ,s666,lo_FHQ |
| s822 | R77 | linear | hi | CFH | 611353/1000000 | s634,hi_CEH,hi_EFH |
| s825 | R78 | linear | lo | CEF | 568581/1000000 | hi_CER,s713,s715 |
| s831 | R80 | linear | hi | CEQ | 145471/250000 | lo_CES,s742,s576 |
| s832 | R81 | linear | lo | CER | 30703/100000 | lo_CES,s718,lo_ERS |
| s835 | R82 | linear | lo | CFH | 96139/200000 | s647,s673,lo_FHQ |
| s843 | R83 | linear | hi | CFQ | 128561/500000 | s743,s742,s548 |
| s845 | R83 | linear | hi | CFS | 440919/1000000 | s647,s742,s548 |
| s846 | R83 | linear | lo | FQS | 124723/1000000 | s647,s743,s742 |
| s847 | R84 | linear | hi | CFR | 24709/50000 | s845,s45,lo_FRS |
| s850 | R85 | linear | hi | CHR | 143051/250000 | s562,s45,s747 |
| s858 | R86 | linear | hi | FHR | 227517/500000 | hi_EFH,s715,hi_EHR |
| s859 | R87 | linear | lo | EFH | 56647/500000 | s746,s538,s579 |
| s864 | R88 | linear | lo | EFQ | 31613/250000 | s746,s576,s846 |
| s865 | R89 | linear | lo | EFR | 486203/1000000 | s746,lo_ERS,lo_FRS |
| s877 | R93 | linear | hi | FQR | 24861/125000 | lo_FHQ,s858,s681 |
| s938 | R10 | sumlo | lo | AEQ | 270111/1000000 | s602,lo_AFQ,s765,s650,hi_ACF |
| s959 | R18 | sumlo | lo | ACF | 485147/1000000 | s602,s835,s763,s825,hi_CEH |
| s962 | R19 | sumlo | lo | ACE | 668689/1000000 | s959,s832,s768,s825,s847 |
| s971 | R21 | sumlo | lo | ACF | 261439/500000 | s763,s713,s768,s835,s850 |
| s972 | R21 | sumlo | lo | CHR | 242851/500000 | s763,s713,s768,s835,hi_ACF |
| s997 | R26 | sumlo | lo | CFR | 223121/500000 | s825,s972,s832,s835,hi_CEH |
| s998 | R26 | diffhi | hi | CEF | 132461/200000 | hi_CEH,s847,s832,s835,s972 |
| s1013 | R27 | sumlo | lo | AEF | 409251/1000000 | s962,s864,s938,s825,s831 |
| s1014 | R28 | sumlo | lo | AER | 680609/1000000 | s962,s865,s1013,s832,s998 |
| s1015 | R28 | sumlo | lo | CEF | 621353/1000000 | s962,s865,s1013,s832,hi_AER |
| s1018 | R28 | diffhi | hi | AEF | 506013/1000000 | hi_AER,s998,s962,s865,s832 |
| s1034 | R29 | sumlo | lo | EQR | 429619/1000000 | s938,s865,s1014,s864,s1018 |
| s1067 | R33 | sumlo | lo | EFQ | 5121/40000 | s859,s1034,s865,lo_EHQ,hi_EHR |
| s1074 | R35 | sumlo | lo | CFH | 140639/250000 | s971,s859,s779,s1015,s1018 |
| s1076 | R35 | diffhi | hi | AFH | 402531/1000000 | s1018,s822,s971,s859,s1015 |
| s1077 | R36 | sumlo | lo | AEF | 485089/1000000 | s971,s1067,lo_AFQ,s1015,s843 |
| s1082 | R37 | sumlo | lo | AFR | 710687/1000000 | s971,s865,s1077,s997,s998 |
| s1087 | R38 | sumlo | lo | CFQ | 31347/125000 | s971,lo_FHQ,lo_AFQ,s1074,s1076 |
| s1088 | R38 | diffhi | hi | ACF | 550343/1000000 | s1076,s843,lo_AFQ,s1074,lo_FHQ |
| s1090 | R38 | diffhi | hi | AFQ | 97541/1000000 | s1076,s843,s971,lo_FHQ,s1074 |
| s1097 | R40 | sumhi | hi | AFR | 628687/1000000 | s1088,s877,s1090,s847,s1087 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AFR | s1082 | s1097 |

The two cited bounds give 710687/1000000 <= |AFR| <= 628687/1000000, with exact positive gap 41/500.

## Leaf A015

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ABS | ABS | lo | 279/1000 | cost:P |
| lo_ACF | ACF | lo | 279/1000 | cost:P |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 279/1000 | cost:P |
| lo_ACS | ACS | lo | 279/1000 | cost:P |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AFH | AFH | lo | 279/1000 | cost:Q |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AHQ | AHQ | lo | 93/1000 | cost: |
| lo_AHR | AHR | lo | 279/1000 | cost:Q |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCQ | BCQ | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEP | BEP | lo | 93/1000 | cost: |
| lo_BEQ | BEQ | lo | 279/1000 | cost:P |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFH | BFH | lo | 279/1000 | cost:Q |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BFR | BFR | lo | 279/1000 | cost:P |
| lo_BFS | BFS | lo | 279/1000 | cost:P |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 93/1000 | cost: |
| lo_BQS | BQS | lo | 279/1000 | cost:P |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEF | CEF | lo | 93/1000 | cost: |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFH | CFH | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 279/1000 | cost:Q |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FHR | FHR | lo | 93/1000 | cost: |
| lo_FHS | FHS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_HPR | HPR | lo | 279/1000 | cost:Q |
| lo_HPS | HPS | lo | 279/1000 | cost:Q |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ABH | ABH | hi | 893109/4646561 | C034 |
| hi_ACE | ACE | hi | 7016953/8875000 | C043 |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_ACR | ACR | hi | 445132103342243/1016178625000000 | C035 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BCR | BCR | hi | 279/2000 | C047 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFH | BFH | hi | 77/125 | C015 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFH | CFH | hi | 77/125 | C048 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EFP | EFP | hi | 1444058097206471/2067521128750000 | C053 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["ACR","ACP","APR","CPR"] | ["fan","ACR","P"] |
| R2 | fan | ["AEH","AEQ","AHQ","EHQ"] | ["fan","AEH","Q"] |
| R3 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R4 | fan | ["AFH","AFQ","AHQ","FHQ"] | ["fan","AFH","Q"] |
| R5 | fan | ["AHR","AHQ","AQR","HQR"] | ["fan","AHR","Q"] |
| R6 | fan | ["AHS","AHQ","AQS","HQS"] | ["fan","AHS","Q"] |
| R7 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R8 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R9 | fan | ["BFH","BFQ","BHQ","FHQ"] | ["fan","BFH","Q"] |
| R10 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R11 | fan | ["CFH","CFQ","CHQ","FHQ"] | ["fan","CFH","Q"] |
| R12 | fan | ["CHR","CHQ","CQR","HQR"] | ["fan","CHR","Q"] |
| R13 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R14 | fan | ["EQR","EQS","ERS","QRS"] | ["fan","EQR","S"] |
| R15 | plu | ["ACF","AEH","ACE","AFH","ACH","AEF"] | ["plu","ACEFH"] |
| R16 | plu | ["ACF","AEQ","ACE","AFQ","ACQ","AEF"] | ["plu","ACEFQ"] |
| R17 | plu | ["ACE","AFR","ACF","AER","ACR","AEF"] | ["plu","ACEFR"] |
| R18 | plu | ["ACR","AEP","ACE","APR","ACP","AER"] | ["plu","ACEPR"] |
| R19 | plu | ["ACE","AQR","ACQ","AER","ACR","AEQ"] | ["plu","ACEQR"] |
| R20 | plu | ["ACR","AFP","ACF","APR","ACP","AFR"] | ["plu","ACFPR"] |
| R21 | plu | ["ACR","AHP","ACH","APR","ACP","AHR"] | ["plu","ACHPR"] |
| R22 | plu | ["ACR","APQ","ACP","AQR","ACQ","APR"] | ["plu","ACPQR"] |
| R23 | plu | ["ABF","BEH","ABE","BFH","ABH","BEF"] | ["plu","BAEFH"] |
| R24 | plu | ["ABF","BHS","ABH","BFS","ABS","BFH"] | ["plu","BAFHS"] |
| R25 | plu | ["BCF","BHP","BCH","BFP","BCP","BFH"] | ["plu","BCFHP"] |
| R26 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R27 | plu | ["BEH","BFR","BEF","BHR","BER","BFH"] | ["plu","BEFHR"] |
| R28 | plu | ["BEH","BPR","BEP","BHR","BER","BHP"] | ["plu","BEHPR"] |
| R29 | plu | ["BFS","BHP","BFH","BPS","BFP","BHS"] | ["plu","BFHPS"] |
| R30 | plu | ["BHP","BQS","BHQ","BPS","BHS","BPQ"] | ["plu","BHPQS"] |
| R31 | plu | ["ACF","CEQ","ACE","CFQ","ACQ","CEF"] | ["plu","CAEFQ"] |
| R32 | plu | ["ACH","CEP","ACE","CHP","ACP","CEH"] | ["plu","CAEHP"] |
| R33 | plu | ["ACE","CHR","ACH","CER","ACR","CEH"] | ["plu","CAEHR"] |
| R34 | plu | ["ACE","CQR","ACQ","CER","ACR","CEQ"] | ["plu","CAEQR"] |
| R35 | plu | ["ACH","CFP","ACF","CHP","ACP","CFH"] | ["plu","CAFHP"] |
| R36 | plu | ["ACH","CPR","ACP","CHR","ACR","CHP"] | ["plu","CAHPR"] |
| R37 | plu | ["ACH","CPS","ACP","CHS","ACS","CHP"] | ["plu","CAHPS"] |
| R38 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R39 | plu | ["BCE","CQR","BCQ","CER","BCR","CEQ"] | ["plu","CBEQR"] |
| R40 | plu | ["AER","CEH","ACE","EHR","AEH","CER"] | ["plu","EACHR"] |
| R41 | plu | ["AER","CEQ","ACE","EQR","AEQ","CER"] | ["plu","EACQR"] |
| R42 | plu | ["AEF","EHR","AEH","EFR","AER","EFH"] | ["plu","EAFHR"] |
| R43 | plu | ["AER","EPQ","AEP","EQR","AEQ","EPR"] | ["plu","EAPQR"] |
| R44 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R45 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R46 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R47 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R48 | plu | ["EFP","EHR","EFH","EPR","EFR","EHP"] | ["plu","EFHPR"] |
| R49 | plu | ["EFQ","EHR","EFH","EQR","EFR","EHQ"] | ["plu","EFHQR"] |
| R50 | plu | ["AFH","BFQ","ABF","FHQ","AFQ","BFH"] | ["plu","FABHQ"] |
| R51 | plu | ["AFR","BFH","ABF","FHR","AFH","BFR"] | ["plu","FABHR"] |
| R52 | plu | ["AFH","CFQ","ACF","FHQ","AFQ","CFH"] | ["plu","FACHQ"] |
| R53 | plu | ["AEF","FHR","AFH","EFR","AFR","EFH"] | ["plu","FAEHR"] |
| R54 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R55 | plu | ["CFH","FPR","CFP","FHR","CFR","FHP"] | ["plu","FCHPR"] |
| R56 | plu | ["EFP","FHR","EFH","FPR","EFR","FHP"] | ["plu","FEHPR"] |
| R57 | plu | ["AHR","BFH","ABH","FHR","AFH","BHR"] | ["plu","HABFR"] |
| R58 | plu | ["AHS","BFH","ABH","FHS","AFH","BHS"] | ["plu","HABFS"] |
| R59 | plu | ["AHQ","CHS","ACH","HQS","AHS","CHQ"] | ["plu","HACQS"] |
| R60 | plu | ["AEH","FHR","AFH","EHR","AHR","EFH"] | ["plu","HAEFR"] |
| R61 | plu | ["BHQ","CHR","BCH","HQR","BHR","CHQ"] | ["plu","HBCQR"] |
| R62 | plu | ["BHQ","CHS","BCH","HQS","BHS","CHQ"] | ["plu","HBCQS"] |
| R63 | plu | ["BEH","FHR","BFH","EHR","BHR","EFH"] | ["plu","HBEFR"] |
| R64 | plu | ["BEH","FHS","BFH","EHS","BHS","EFH"] | ["plu","HBEFS"] |
| R65 | plu | ["BHR","EHQ","BEH","HQR","BHQ","EHR"] | ["plu","HBEQR"] |
| R66 | plu | ["CHR","EHQ","CEH","HQR","CHQ","EHR"] | ["plu","HCEQR"] |
| R67 | plu | ["CHR","FHQ","CFH","HQR","CHQ","FHR"] | ["plu","HCFQR"] |
| R68 | plu | ["AFP","BHP","ABP","FHP","AHP","BFP"] | ["plu","PABFH"] |
| R69 | plu | ["AHP","CFP","ACP","FHP","AFP","CHP"] | ["plu","PACFH"] |
| R70 | plu | ["AHP","CPR","ACP","HPR","APR","CHP"] | ["plu","PACHR"] |
| R71 | plu | ["AHP","CPS","ACP","HPS","APS","CHP"] | ["plu","PACHS"] |
| R72 | plu | ["BHP","PQR","BPQ","HPR","BPR","HPQ"] | ["plu","PBHQR"] |
| R73 | plu | ["AEQ","CFQ","ACQ","EFQ","AFQ","CEQ"] | ["plu","QACEF"] |
| R74 | plu | ["AHQ","CFQ","ACQ","FHQ","AFQ","CHQ"] | ["plu","QACFH"] |
| R75 | plu | ["AHQ","CQR","ACQ","HQR","AQR","CHQ"] | ["plu","QACHR"] |
| R76 | plu | ["AEQ","FHQ","AFQ","EHQ","AHQ","EFQ"] | ["plu","QAEFH"] |
| R77 | plu | ["BHQ","CQS","BCQ","HQS","BQS","CHQ"] | ["plu","QBCHS"] |
| R78 | plu | ["AER","CHR","ACR","EHR","AHR","CER"] | ["plu","RACEH"] |
| R79 | plu | ["AER","CQR","ACR","EQR","AQR","CER"] | ["plu","RACEQ"] |
| R80 | plu | ["AER","CRS","ACR","ERS","ARS","CER"] | ["plu","RACES"] |
| R81 | plu | ["ARS","CQR","ACR","QRS","AQR","CRS"] | ["plu","RACQS"] |
| R82 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R83 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R84 | plu | ["ARS","EHR","AER","HRS","AHR","ERS"] | ["plu","RAEHS"] |
| R85 | plu | ["AFR","HRS","AHR","FRS","ARS","FHR"] | ["plu","RAFHS"] |
| R86 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R87 | plu | ["BRS","EHR","BER","HRS","BHR","ERS"] | ["plu","RBEHS"] |
| R88 | plu | ["BFR","HRS","BHR","FRS","BRS","FHR"] | ["plu","RBFHS"] |
| R89 | plu | ["CFR","EHR","CER","FHR","CHR","EFR"] | ["plu","RCEFH"] |
| R90 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R91 | plu | ["CRS","EHR","CER","HRS","CHR","ERS"] | ["plu","RCEHS"] |
| R92 | plu | ["CHR","FQR","CFR","HQR","CQR","FHR"] | ["plu","RCFHQ"] |
| R93 | plu | ["CFR","HRS","CHR","FRS","CRS","FHR"] | ["plu","RCFHS"] |
| R94 | plu | ["CFR","QRS","CQR","FRS","CRS","FQR"] | ["plu","RCFQS"] |
| R95 | plu | ["AFS","BHS","ABS","FHS","AHS","BFS"] | ["plu","SABFH"] |
| R96 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R97 | plu | ["ARS","CFS","ACS","FRS","AFS","CRS"] | ["plu","SACFR"] |
| R98 | plu | ["ARS","CHS","ACS","HRS","AHS","CRS"] | ["plu","SACHR"] |
| R99 | plu | ["ARS","CQS","ACS","QRS","AQS","CRS"] | ["plu","SACQR"] |
| R100 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R101 | plu | ["ARS","EHS","AES","HRS","AHS","ERS"] | ["plu","SAEHR"] |
| R102 | plu | ["ARS","EQS","AES","QRS","AQS","ERS"] | ["plu","SAEQR"] |
| R103 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R104 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R105 | plu | ["BFS","HRS","BHS","FRS","BRS","FHS"] | ["plu","SBFHR"] |
| R106 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R107 | plu | ["CRS","EHS","CES","HRS","CHS","ERS"] | ["plu","SCEHR"] |
| R108 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R109 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R110 | plu | ["CFS","HRS","CHS","FRS","CRS","FHS"] | ["plu","SCFHR"] |
| R111 | plu | ["EFS","HRS","EHS","FRS","ERS","FHS"] | ["plu","SEFHR"] |
| R112 | linear | [{"ABE":-1,"AEH":-1,"ABH":1,"BEH":1},"0"] | ["affine_quad","ABEH",-1] |
| R113 | linear | [{"ABE":1,"AEP":-1,"ABP":-1,"BEP":-1},"0"] | ["affine_quad","ABEP",1] |
| R114 | linear | [{"ACE":1,"AEP":-1,"ACP":-1,"CEP":-1},"0"] | ["affine_quad","ACEP",1] |
| R115 | linear | [{"ACE":1,"AER":-1,"ACR":-1,"CER":1},"0"] | ["affine_quad","ACER",1] |
| R116 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R117 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R118 | linear | [{"ACP":-1,"APQ":-1,"ACQ":1,"CPQ":-1},"0"] | ["affine_quad","ACPQ",-1] |
| R119 | linear | [{"ACP":-1,"APR":-1,"ACR":1,"CPR":-1},"0"] | ["affine_quad","ACPR",-1] |
| R120 | linear | [{"ACP":-1,"APS":-1,"ACS":1,"CPS":-1},"0"] | ["affine_quad","ACPS",-1] |
| R121 | linear | [{"ACR":-1,"ARS":-1,"ACS":1,"CRS":1},"0"] | ["affine_quad","ACRS",-1] |
| R122 | linear | [{"AEH":1,"AHQ":-1,"AEQ":-1,"EHQ":-1},"0"] | ["affine_quad","AEHQ",1] |
| R123 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R124 | linear | [{"AFH":1,"AHQ":-1,"AFQ":-1,"FHQ":-1},"0"] | ["affine_quad","AFHQ",1] |
| R125 | linear | [{"AFH":-1,"AHS":1,"AFS":-1,"FHS":1},"0"] | ["affine_quad","AFHS",-1] |
| R126 | linear | [{"AFR":-1,"ARS":1,"AFS":1,"FRS":-1},"0"] | ["affine_quad","AFRS",1] |
| R127 | linear | [{"AHQ":-1,"AQR":-1,"AHR":1,"HQR":-1},"0"] | ["affine_quad","AHQR",1] |
| R128 | linear | [{"AHR":-1,"ARS":1,"AHS":1,"HRS":-1},"0"] | ["affine_quad","AHRS",1] |
| R129 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R130 | linear | [{"BCQ":-1,"BQR":1,"BCR":1,"CQR":-1},"0"] | ["affine_quad","BCQR",-1] |
| R131 | linear | [{"BEF":-1,"BFH":-1,"BEH":1,"EFH":1},"0"] | ["affine_quad","BEFH",-1] |
| R132 | linear | [{"BEF":1,"BFP":-1,"BEP":-1,"EFP":-1},"0"] | ["affine_quad","BEFP",1] |
| R133 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R134 | linear | [{"BFH":1,"BHQ":-1,"BFQ":-1,"FHQ":-1},"0"] | ["affine_quad","BFHQ",1] |
| R135 | linear | [{"BHQ":-1,"BQR":-1,"BHR":1,"HQR":-1},"0"] | ["affine_quad","BHQR",1] |
| R136 | linear | [{"BHQ":-1,"BQS":-1,"BHS":1,"HQS":-1},"0"] | ["affine_quad","BHQS",1] |
| R137 | linear | [{"CEF":-1,"CFH":-1,"CEH":1,"EFH":1},"0"] | ["affine_quad","CEFH",-1] |
| R138 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R139 | linear | [{"CEH":1,"CHQ":-1,"CEQ":-1,"EHQ":-1},"0"] | ["affine_quad","CEHQ",1] |
| R140 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R141 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R142 | linear | [{"CFH":1,"CHQ":-1,"CFQ":-1,"FHQ":-1},"0"] | ["affine_quad","CFHQ",1] |
| R143 | linear | [{"CFH":-1,"CHR":1,"CFR":-1,"FHR":1},"0"] | ["affine_quad","CFHR",-1] |
| R144 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R145 | linear | [{"CHQ":-1,"CQR":-1,"CHR":1,"HQR":-1},"0"] | ["affine_quad","CHQR",1] |
| R146 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R147 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R148 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R149 | linear | [{"EHP":1,"EPQ":-1,"EHQ":-1,"HPQ":-1},"0"] | ["affine_quad","EHPQ",1] |
| R150 | linear | [{"EHQ":1,"EQR":1,"EHR":-1,"HQR":-1},"0"] | ["affine_quad","EHQR",1] |
| R151 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R152 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R153 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R154 | linear | [{"HPQ":-1,"HQR":-1,"HPR":1,"PQR":-1},"0"] | ["affine_quad","HPQR",-1] |
| R155 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R156 | quad | ["ACS","CRS","449/1000"] | ["quad","ACRS","P"] |
| R157 | bary | [["AFS",-1],[["ACF",-1],["AEF",-1],["AFR",-1]],11,[3,3,3]] | ["side_pair_weights","AF","S","CER","3/11"] |
| R158 | bary | [["AQS",-1],[["ACQ",-1],["AEQ",-1],["AQR",-1]],11,[3,3,3]] | ["side_pair_weights","AQ","S","CER","3/11"] |
| R159 | bary | [["ARS",1],[["ACR",-1],["AER",1],null],11,[3,3,3]] | ["side_pair_weights","AR","S","CER","3/11"] |
| R160 | linear | [{"ACS":-3,"AES":5,"ARS":-3},"0"] | ["barycentric","AS","S","CER","upper"] |
| R161 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R162 | bary | [["BFS",-1],[["BCF",-1],["BEF",-1],["BFR",-1]],11,[3,3,3]] | ["side_pair_weights","BF","S","CER","3/11"] |
| R163 | bary | [["BPS",-1],[["BCP",-1],["BEP",-1],["BPR",-1]],11,[3,3,3]] | ["side_pair_weights","BP","S","CER","3/11"] |
| R164 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R165 | bary | [["CFS",-1],[null,["CEF",-1],["CFR",-1]],11,[3,3,3]] | ["side_pair_weights","CF","S","CER","3/11"] |
| R166 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R167 | bary | [["EQS",1],[["CEQ",1],null,["EQR",1]],11,[3,3,3]] | ["side_pair_weights","EQ","S","CER","3/11"] |
| R168 | bary | [["FHS",1],[["CFH",1],["EFH",1],["FHR",1]],11,[3,3,3]] | ["side_pair_weights","FH","S","CER","3/11"] |
| R169 | bary | [["HRS",1],[["CHR",-1],["EHR",1],null],11,[3,3,3]] | ["side_pair_weights","HR","S","CER","3/11"] |
| R170 | linear | [{"CHS":-3,"EHS":5,"HRS":-3},"0"] | ["barycentric","HS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s12 | R0 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s17 | R1 | sub | hi | CPR | 126023/500000 | hi_ACR,lo_ACP,lo_APR |
| s25 | R4 | sub | hi | AHQ | 12727/40000 | hi_AFH,lo_AFQ,lo_FHQ |
| s34 | R7 | sub | hi | BHP | 3263/10000 | hi_BCH,lo_BCP,lo_CHP |
| s43 | R9 | sub | hi | BHQ | 43/100 | hi_BFH,lo_BFQ,lo_FHQ |
| s53 | R10 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s55 | R11 | sub | hi | CFQ | 43/100 | hi_CFH,lo_CHQ,lo_FHQ |
| s57 | R12 | sub | hi | CQR | 433419/1000000 | hi_CHR,lo_CHQ,lo_HQR |
| s65 | R13 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s79 | R19 | sumlo | lo | AQR | 13127/100000 | lo_ACQ,lo_AER,lo_ACR,lo_AEQ,hi_ACE |
| s80 | R21 | sumlo | lo | AHP | 118467/1000000 | lo_ACH,lo_APR,lo_ACP,lo_AHR,hi_ACR |
| s81 | R24 | sumlo | lo | ABF | 61577/500000 | lo_ABH,lo_BFS,lo_ABS,lo_BFH,hi_BHS |
| s86 | R25 | sumlo | lo | BHP | 6331/62500 | lo_BCH,lo_BFP,lo_BCP,lo_BFH,hi_BCF |
| s87 | R26 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s88 | R28 | sumlo | lo | BPR | 93707/1000000 | lo_BEP,lo_BHR,lo_BER,s86,hi_BEH |
| s90 | R29 | sumlo | lo | BHP | 22863/200000 | lo_BFH,lo_BPS,lo_BFP,lo_BHS,hi_BFS |
| s94 | R35 | sumlo | lo | CFP | 6433/62500 | lo_ACF,lo_CHP,lo_ACP,lo_CFH,hi_ACH |
| s97 | R38 | sumlo | lo | CFR | 186137/1000000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_BCE |
| s99 | R39 | sumlo | lo | BCE | 3118/15625 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,s57 |
| s100 | R39 | sumlo | lo | CQR | 186137/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,hi_BCE |
| s109 | R44 | sumlo | lo | CEH | 383401/1000000 | s99,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s111 | R45 | sumlo | lo | CEQ | 41067/200000 | s99,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s118 | R47 | sumlo | lo | EHS | 92703/500000 | s109,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s124 | R51 | sumlo | lo | AFR | 72479/500000 | s81,lo_FHR,lo_AFH,lo_BFR,hi_BFH |
| s127 | R53 | sumlo | lo | AEF | 41487/250000 | lo_AFH,lo_EFR,s124,lo_EFH,hi_FHR |
| s128 | R53 | sumlo | lo | FHR | 120637/1000000 | lo_AFH,lo_EFR,s124,lo_EFH,hi_AEF |
| s129 | R55 | sumlo | lo | FPR | 52231/500000 | s94,s128,s97,lo_FHP,hi_CFH |
| s130 | R56 | sumlo | lo | EFP | 31821/200000 | lo_EFH,s129,lo_EFR,lo_FHP,hi_FHR |
| s131 | R56 | sumlo | lo | FHR | 125357/1000000 | lo_EFH,s129,lo_EFR,lo_FHP,hi_EFP |
| s133 | R57 | sumlo | lo | AHR | 333253/1000000 | lo_ABH,s131,lo_AFH,lo_BHR,hi_BFH |
| s134 | R58 | sumlo | lo | AHS | 20523/62500 | lo_ABH,lo_FHS,lo_AFH,lo_BHS,hi_BFH |
| s138 | R61 | sumlo | lo | BHQ | 146087/1000000 | lo_BCH,lo_HQR,lo_BHR,lo_CHQ,hi_CHR |
| s140 | R63 | sumlo | lo | FHR | 143769/1000000 | lo_BFH,lo_EHR,lo_BHR,lo_EFH,hi_BEH |
| s141 | R64 | sumlo | lo | FHS | 58701/500000 | lo_BFH,s118,lo_BHS,lo_EFH,hi_BEH |
| s142 | R65 | sumlo | lo | EHQ | 113569/1000000 | lo_BEH,lo_HQR,s138,lo_EHR,hi_BHR |
| s143 | R68 | sumlo | lo | AFP | 113283/1000000 | lo_ABP,lo_FHP,s80,lo_BFP,s34 |
| s145 | R69 | sumlo | lo | CFP | 114661/1000000 | lo_ACP,lo_FHP,s143,lo_CHP,s12 |
| s146 | R70 | sumlo | lo | AHP | 6863/50000 | lo_ACP,lo_HPR,lo_APR,lo_CHP,s17 |
| s147 | R70 | sumlo | lo | CPR | 27183/250000 | lo_ACP,lo_HPR,lo_APR,lo_CHP,s12 |
| s148 | R71 | sumlo | lo | CPS | 27183/250000 | lo_ACP,lo_HPS,lo_APS,lo_CHP,s12 |
| s152 | R72 | sumlo | lo | PQR | 53113/500000 | lo_BPQ,lo_HPR,s88,lo_HPQ,s34 |
| s154 | R73 | sumlo | lo | AEQ | 104751/1000000 | lo_ACQ,lo_EFQ,lo_AFQ,s111,s55 |
| s155 | R74 | sumlo | lo | CFQ | 27183/250000 | lo_ACQ,lo_FHQ,lo_AFQ,lo_CHQ,s25 |
| s157 | R77 | sumlo | lo | CQS | 120683/1000000 | lo_BCQ,lo_HQS,lo_BQS,lo_CHQ,s43 |
| s159 | R80 | diffhi | hi | ARS | 143657/500000 | hi_AER,s53,lo_ACR,lo_ERS,lo_CER |
| s162 | R86 | sumlo | lo | BER | 177241/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_CHR |
| s167 | R87 | sumlo | lo | BRS | 132959/1000000 | s162,lo_HRS,lo_BHR,lo_ERS,hi_EHR |
| s169 | R88 | sumlo | lo | HRS | 11667/125000 | lo_BHR,lo_FRS,s167,s140,hi_BFR |
| s176 | R95 | sumlo | lo | AFS | 18447/125000 | lo_ABS,s141,s134,lo_BFS,hi_BHS |
| s178 | R96 | sumlo | lo | AES | 29567/125000 | lo_ACS,lo_ERS,lo_ARS,lo_CES,s53 |
| s179 | R97 | sumlo | lo | CFS | 138077/1000000 | lo_ACS,lo_FRS,s176,lo_CRS,s159 |
| s180 | R101 | sumlo | lo | ARS | 24031/250000 | s178,s169,s134,lo_ERS,s65 |
| s182 | R103 | sumlo | lo | BES | 146597/1000000 | s87,lo_ERS,s167,lo_CES,s53 |
| s183 | R104 | sumlo | lo | BRS | 142909/1000000 | s182,s169,lo_BHS,lo_ERS,s65 |
| s186 | R105 | sumlo | lo | HRS | 102731/1000000 | lo_BHS,lo_FRS,s183,s141,hi_BFS |
| s187 | R106 | sumlo | lo | EFS | 14693/100000 | lo_CES,lo_FRS,s179,lo_ERS,s53 |
| s188 | R108 | sumlo | lo | EPS | 128271/1000000 | lo_CES,lo_PRS,s148,lo_ERS,s53 |
| s189 | R109 | sumlo | lo | EQS | 13587/100000 | lo_CES,lo_QRS,s157,lo_ERS,s53 |
| s196 | R116 | linear | lo | ACF | 20059/62500 | lo_ACP,s143,s145 |
| s198 | R117 | linear | lo | ACH | 16163/50000 | lo_ACP,s146,lo_CHP |
| s202 | R119 | linear | lo | ACR | 73683/250000 | lo_ACP,lo_APR,s147 |
| s213 | R129 | linear | lo | BCH | 60063/200000 | lo_BCP,s90,lo_CHP |
| s217 | R132 | linear | lo | BEF | 69021/200000 | lo_BEP,lo_BFP,s130 |
| s222 | R133 | linear | lo | BER | 191253/500000 | s182,s183,lo_ERS |
| s224 | R134 | linear | lo | BFH | 332087/1000000 | lo_BFQ,s138,lo_FHQ |
| s229 | R136 | linear | hi | BQS | 301831/500000 | s138,hi_BHS,lo_HQS |
| s234 | R139 | linear | lo | CEH | 6436/15625 | s111,lo_CHQ,s142 |
| s236 | R142 | linear | lo | CFH | 73683/250000 | s155,lo_CHQ,lo_FHQ |
| s238 | R145 | linear | lo | CHR | 372137/1000000 | lo_CHQ,s100,lo_HQR |
| s242 | R146 | linear | lo | CHS | 328607/1000000 | s238,s53,s186 |
| s246 | R148 | linear | lo | EFR | 33293/100000 | s187,lo_ERS,lo_FRS |
| s249 | R151 | linear | hi | EHS | 13441/25000 | hi_EHR,lo_ERS,s186 |
| s250 | R152 | linear | lo | EPR | 314271/1000000 | s188,lo_ERS,lo_PRS |
| s251 | R153 | linear | lo | EQR | 32187/100000 | s189,lo_ERS,lo_QRS |
| s252 | R154 | linear | lo | HPR | 146113/500000 | lo_HPQ,lo_HQR,s152 |
| s255 | R155 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s256 | R156 | quad | lo | ACS | 302739/1000000 | s53 |
| s260 | R158 | bary_hi | lo | AQS | 31901/200000 | lo_ACQ,s154,s79 |
| s261 | R159 | bary_hi | hi | ARS | 7793/31250 | s202,hi_AER |
| s262 | R160 | linear | lo | AES | 239317/1000000 | s256,s180 |
| s264 | R161 | bary_hi | lo | BES | 158743/1000000 | s99,s222 |
| s265 | R163 | bary_hi | lo | BPS | 11649/125000 | lo_BCP,lo_BEP,s88 |
| s267 | R164 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s269 | R166 | bary_lo | hi | CHS | 300283/500000 | hi_CEH,hi_CHR |
| s271 | R167 | bary_lo | lo | EQS | 143783/1000000 | s111,s251 |
| s272 | R168 | bary_lo | lo | FHS | 161863/1000000 | s236,lo_EFH,s140 |
| s279 | R169 | bary_hi | hi | HRS | 231859/1000000 | s238,hi_EHR |
| s281 | R170 | linear | lo | EHS | 129401/500000 | s242,s186 |
| s287 | R3 | sum | lo | AER | 428441/1000000 | s262,s180,lo_ERS |
| s288 | R6 | sum | lo | AHS | 69101/200000 | lo_AHQ,s260,lo_HQS |
| s290 | R8 | sum | lo | BER | 98663/250000 | s264,s183,lo_ERS |
| s294 | R13 | sum | lo | EHR | 454533/1000000 | s281,lo_ERS,s186 |
| s295 | R14 | sum | lo | EQR | 329783/1000000 | s271,lo_ERS,lo_QRS |
| s298 | R16 | sumlo | lo | AEQ | 137323/1000000 | s255,lo_AFQ,lo_ACQ,s127,hi_ACF |
| s299 | R17 | sumlo | lo | AFR | 235777/1000000 | s196,s287,s202,s127,hi_ACE |
| s300 | R18 | sumlo | lo | AEP | 22297/125000 | s255,lo_APR,lo_ACP,s287,hi_ACR |
| s301 | R19 | sumlo | lo | AQR | 202377/1000000 | lo_ACQ,s287,s202,s298,hi_ACE |
| s303 | R21 | sumlo | lo | AHP | 69691/500000 | s198,lo_APR,lo_ACP,s133,hi_ACR |
| s304 | R22 | sumlo | lo | APQ | 102199/1000000 | lo_ACP,s301,lo_ACQ,lo_APR,hi_ACR |
| s311 | R25 | sumlo | lo | BHP | 57401/500000 | s213,lo_BFP,lo_BCP,s224,hi_BCF |
| s313 | R27 | sumlo | lo | BFR | 37417/100000 | s217,lo_BHR,s290,s224,hi_BEH |
| s314 | R28 | sumlo | lo | BPR | 55459/500000 | lo_BEP,lo_BHR,s290,s311,hi_BEH |
| s316 | R30 | sumlo | lo | BHP | 12947/100000 | s138,s265,lo_BHS,lo_BPQ,s229 |
| s319 | R32 | sumlo | lo | CEP | 151929/1000000 | s255,lo_CHP,lo_ACP,s234,hi_ACH |
| s320 | R36 | sumlo | lo | CPR | 12301/100000 | lo_ACP,s238,s202,lo_CHP,hi_ACH |
| s321 | R37 | sumlo | lo | CPS | 116457/1000000 | lo_ACP,s242,s256,lo_CHP,hi_ACH |
| s323 | R39 | sumlo | lo | BCE | 27957/125000 | lo_BCQ,lo_CER,lo_BCR,s111,s57 |
| s326 | R41 | sumlo | lo | CEQ | 11999/50000 | s255,s295,s298,lo_CER,hi_AER |
| s329 | R43 | sumlo | lo | EPQ | 70287/500000 | s300,s295,s298,s250,hi_AER |
| s332 | R46 | sumlo | lo | BES | 21633/125000 | s323,lo_ERS,s290,lo_CES,hi_CER |
| s339 | R52 | sumlo | lo | CFQ | 113567/1000000 | s196,lo_FHQ,lo_AFQ,s236,hi_AFH |
| s340 | R53 | sumlo | lo | AEF | 208639/1000000 | lo_AFH,s246,s299,lo_EFH,hi_FHR |
| s342 | R54 | sumlo | lo | FHR | 162177/1000000 | s224,s246,s313,lo_EFH,hi_BEF |
| s344 | R57 | sumlo | lo | AHR | 84703/250000 | lo_ABH,s342,lo_AFH,lo_BHR,hi_BFH |
| s346 | R59 | sumlo | lo | AHQ | 2589/25000 | s198,lo_HQS,s288,lo_CHQ,s269 |
| s349 | R62 | sumlo | lo | BHQ | 153973/1000000 | s213,lo_HQS,lo_BHS,lo_CHQ,s269 |
| s351 | R63 | sumlo | lo | FHR | 13599/62500 | s224,s294,lo_BHR,lo_EFH,hi_BEH |
| s352 | R65 | sumlo | lo | EHQ | 36273/250000 | lo_BEH,lo_HQR,s349,s294,hi_BHR |
| s353 | R68 | sumlo | lo | AFP | 29811/250000 | lo_ABP,lo_FHP,s303,lo_BFP,s34 |
| s354 | R69 | sumlo | lo | CFP | 116403/1000000 | lo_ACP,lo_FHP,s353,lo_CHP,s12 |
| s355 | R70 | sumlo | lo | AHP | 7107/50000 | lo_ACP,s252,lo_APR,lo_CHP,s17 |
| s362 | R79 | sumlo | lo | CQR | 211809/1000000 | s202,s295,s301,lo_CER,hi_AER |
| s364 | R81 | sumlo | lo | ARS | 53333/500000 | s202,lo_QRS,s301,lo_CRS,s57 |
| s365 | R82 | sumlo | lo | AFR | 11237/40000 | s287,s351,s344,s246,hi_EHR |
| s368 | R87 | sumlo | lo | BRS | 14329/100000 | s290,s186,lo_BHR,lo_ERS,hi_EHR |
| s370 | R88 | sumlo | lo | HRS | 53397/500000 | lo_BHR,lo_FRS,s368,s351,hi_BFR |
| s375 | R96 | sumlo | lo | AES | 1627/6250 | s256,lo_ERS,s364,lo_CES,s53 |
| s378 | R99 | sumlo | lo | CQS | 34477/200000 | s256,lo_QRS,s260,lo_CRS,s261 |
| s380 | R101 | sumlo | lo | ARS | 111473/1000000 | s375,s370,s288,lo_ERS,s249 |
| s382 | R104 | sumlo | lo | BRS | 154423/1000000 | s332,s370,lo_BHS,lo_ERS,s249 |
| s383 | R104 | sumlo | lo | EHS | 307271/1000000 | s332,s370,lo_BHS,lo_ERS,s267 |
| s386 | R105 | sumlo | lo | HRS | 113113/1000000 | lo_BHS,lo_FRS,s382,s272,hi_BFS |
| s389 | R108 | sumlo | lo | EPS | 133183/1000000 | lo_CES,lo_PRS,s321,lo_ERS,s53 |
| s390 | R109 | sumlo | lo | EQS | 21093/125000 | lo_CES,lo_QRS,s378,lo_ERS,s53 |
| s392 | R111 | sumlo | lo | EFS | 47043/250000 | s383,lo_FRS,lo_ERS,s272,s279 |
| s395 | R113 | linear | lo | ABE | 45547/125000 | lo_ABP,s300,lo_BEP |
| s398 | R114 | linear | lo | ACE | 84661/200000 | lo_ACP,s300,s319 |
| s400 | R116 | linear | lo | ACF | 328647/1000000 | lo_ACP,s353,s354 |
| s402 | R117 | linear | lo | ACH | 16407/50000 | lo_ACP,s355,lo_CHP |
| s405 | R118 | linear | lo | ACQ | 288199/1000000 | lo_ACP,s304,lo_CPQ |
| s408 | R119 | linear | lo | ACR | 30901/100000 | lo_ACP,lo_APR,s320 |
| s409 | R122 | linear | lo | AEH | 15439/40000 | s298,s346,s352 |
| s411 | R123 | linear | lo | AER | 464793/1000000 | s375,s380,lo_ERS |
| s417 | R127 | linear | lo | AHR | 398937/1000000 | s346,s301,lo_HQR |
| s422 | R129 | linear | lo | BCH | 31547/100000 | lo_BCP,s316,lo_CHP |
| s424 | R131 | linear | hi | BEF | 843431/1000000 | hi_BEH,s224,hi_EFH |
| s432 | R133 | linear | lo | BER | 420487/1000000 | s332,s382,lo_ERS |
| s434 | R134 | linear | lo | BFH | 339973/1000000 | lo_BFQ,s349,lo_FHQ |
| s439 | R136 | linear | hi | BQS | 9309/15625 | s349,hi_BHS,lo_HQS |
| s446 | R140 | linear | lo | CEH | 494409/1000000 | hi_CER,s238,s294 |
| s447 | R142 | linear | lo | CFH | 299567/1000000 | s339,lo_CHQ,lo_FHQ |
| s450 | R145 | linear | lo | CHR | 397809/1000000 | lo_CHQ,s362,lo_HQR |
| s453 | R146 | linear | lo | CHS | 364661/1000000 | s450,s53,s386 |
| s455 | R148 | linear | lo | EFR | 93543/250000 | s392,lo_ERS,lo_FRS |
| s456 | R149 | linear | lo | EHP | 189333/500000 | s352,s329,lo_HPQ |
| s458 | R151 | linear | lo | EHR | 64173/125000 | s383,lo_ERS,s386 |
| s459 | R151 | linear | hi | EHS | 263629/500000 | hi_EHR,lo_ERS,s386 |
| s460 | R152 | linear | lo | EPR | 319183/1000000 | s389,lo_ERS,lo_PRS |
| s461 | R153 | linear | lo | EQR | 44343/125000 | s390,lo_ERS,lo_QRS |
| s468 | R158 | bary_hi | lo | AQS | 196213/1000000 | s405,s298,s301 |
| s469 | R159 | bary_hi | hi | ARS | 122741/500000 | s408,hi_AER |
| s470 | R161 | bary_hi | lo | BES | 7027/40000 | s323,s432 |
| s471 | R162 | bary_lo | hi | BFS | 388577/500000 | hi_BCF,s424,hi_BFR |
| s472 | R163 | bary_hi | lo | BPS | 48943/500000 | lo_BCP,lo_BEP,s314 |
| s476 | R168 | bary_lo | lo | FHS | 183313/1000000 | s447,lo_EFH,s351 |
| s482 | R169 | bary_hi | hi | HRS | 224857/1000000 | s450,hi_EHR |
| s488 | R6 | sum | lo | AHS | 392773/1000000 | s346,s468,lo_HQS |
| s491 | R8 | sum | lo | BER | 211549/500000 | s470,s382,lo_ERS |
| s495 | R16 | sumlo | lo | AEQ | 2019/12500 | s398,lo_AFQ,s405,s340,hi_ACF |
| s496 | R18 | sumlo | lo | AEP | 188549/1000000 | s398,lo_APR,lo_ACP,s411,hi_ACR |
| s497 | R19 | sumlo | lo | AQR | 4651/20000 | s405,s411,s408,s495,hi_ACE |
| s498 | R20 | sumlo | lo | AFP | 16177/125000 | s400,lo_APR,lo_ACP,s365,hi_ACR |
| s499 | R21 | sumlo | lo | AHP | 154363/1000000 | s402,lo_APR,lo_ACP,s417,hi_ACR |
| s500 | R22 | sumlo | lo | APQ | 55279/500000 | lo_ACP,s497,s405,lo_APR,hi_ACR |
| s505 | R30 | sumlo | lo | BHP | 13363/100000 | s349,s472,lo_BHS,lo_BPQ,s439 |
| s507 | R32 | sumlo | lo | CEP | 169281/1000000 | s398,lo_CHP,lo_ACP,s446,hi_ACH |
| s508 | R36 | sumlo | lo | CPR | 130379/1000000 | lo_ACP,s450,s408,lo_CHP,hi_ACH |
| s509 | R37 | sumlo | lo | CPS | 30777/250000 | lo_ACP,s453,s256,lo_CHP,hi_ACH |
| s510 | R39 | sumlo | lo | BCE | 23109/100000 | lo_BCQ,lo_CER,lo_BCR,s326,s57 |
| s513 | R41 | sumlo | lo | CEQ | 67277/250000 | s398,s461,s495,lo_CER,hi_AER |
| s514 | R42 | sumlo | lo | AEF | 63967/250000 | s409,s455,s411,lo_EFH,hi_EHR |
| s517 | R46 | sumlo | lo | BES | 183107/1000000 | s510,lo_ERS,s491,lo_CES,hi_CER |
| s522 | R48 | sumlo | lo | EFP | 116837/500000 | lo_EFH,s460,s455,s456,hi_EHR |
| s524 | R52 | sumlo | lo | CFQ | 2897/25000 | s400,lo_FHQ,lo_AFQ,s447,hi_AFH |
| s528 | R62 | sumlo | lo | BHQ | 977/6250 | s422,lo_HQS,lo_BHS,lo_CHQ,s269 |
| s529 | R63 | sumlo | lo | FHR | 120703/500000 | s434,s458,lo_BHR,lo_EFH,hi_BEH |
| s530 | R65 | sumlo | lo | EHQ | 31233/200000 | lo_BEH,lo_HQR,s528,s458,hi_BHR |
| s531 | R69 | sumlo | lo | CFP | 7461/62500 | lo_ACP,lo_FHP,s498,lo_CHP,s12 |
| s532 | R75 | sumlo | lo | AHQ | 55869/500000 | s405,lo_HQR,s497,lo_CHQ,s57 |
| s534 | R79 | sumlo | lo | CQR | 30067/125000 | s408,s461,s497,lo_CER,hi_AER |
| s537 | R82 | sumlo | lo | AFR | 178269/500000 | s411,s529,s417,s455,hi_EHR |
| s538 | R84 | sumlo | lo | ARS | 61139/500000 | s411,s386,s417,lo_ERS,hi_EHR |
| s542 | R88 | sumlo | lo | HRS | 113601/1000000 | lo_BHR,lo_FRS,s382,s529,hi_BFR |
| s544 | R91 | sumlo | lo | CRS | 2927/31250 | lo_CER,s542,s450,lo_ERS,hi_EHR |
| s547 | R96 | sumlo | lo | AES | 135123/500000 | s256,lo_ERS,s538,lo_CES,s53 |
| s549 | R99 | sumlo | lo | CQS | 47389/250000 | s256,lo_QRS,s468,s544,s469 |
| s551 | R101 | sumlo | lo | ARS | 25501/200000 | s547,s542,s488,lo_ERS,s459 |
| s554 | R104 | sumlo | lo | BRS | 80931/500000 | s517,s542,lo_BHS,lo_ERS,s459 |
| s555 | R104 | sumlo | lo | EHS | 157927/500000 | s517,s542,lo_BHS,lo_ERS,s267 |
| s557 | R105 | sumlo | lo | HRS | 30307/250000 | lo_BHS,lo_FRS,s554,s476,s471 |
| s560 | R109 | sumlo | lo | EQS | 179663/1000000 | lo_CES,lo_QRS,s549,lo_ERS,s53 |
| s562 | R111 | sumlo | lo | EFS | 206453/1000000 | s555,lo_FRS,lo_ERS,s476,s482 |
| s565 | R112 | linear | hi | AEH | 818189/1000000 | s395,hi_ABH,hi_BEH |
| s566 | R113 | linear | lo | ABE | 374549/1000000 | lo_ABP,s496,lo_BEP |
| s568 | R114 | linear | lo | ACE | 45083/100000 | lo_ACP,s496,s507 |
| s570 | R116 | linear | lo | ACF | 10681/31250 | lo_ACP,s498,s531 |
| s572 | R117 | linear | lo | ACH | 340363/1000000 | lo_ACP,s499,lo_CHP |
| s575 | R118 | linear | lo | ACQ | 148279/500000 | lo_ACP,s500,lo_CPQ |
| s578 | R119 | linear | lo | ACR | 316379/1000000 | lo_ACP,lo_APR,s508 |
| s579 | R120 | linear | lo | ACS | 77277/250000 | lo_ACP,lo_APS,s509 |
| s581 | R122 | linear | lo | AEH | 429423/1000000 | s495,s532,s530 |
| s582 | R122 | linear | hi | AEQ | 275143/500000 | s565,s532,s530 |
| s583 | R123 | linear | lo | AER | 490751/1000000 | s547,s551,lo_ERS |
| s589 | R127 | linear | lo | AHR | 54661/125000 | s532,s497,lo_HQR |
| s594 | R129 | linear | lo | BCH | 31963/100000 | lo_BCP,s505,lo_CHP |
| s596 | R131 | linear | hi | BEF | 167109/200000 | hi_BEH,s434,hi_EFH |
| s597 | R132 | linear | lo | BEF | 209837/500000 | lo_BEP,lo_BFP,s522 |
| s604 | R133 | linear | lo | BER | 437969/1000000 | s517,s554,lo_ERS |
| s606 | R134 | linear | lo | BFH | 4279/12500 | lo_BFQ,s528,lo_FHQ |
| s618 | R140 | linear | lo | CEH | 144733/250000 | hi_CER,s450,s458 |
| s619 | R141 | linear | lo | CER | 17479/62500 | lo_CES,s544,lo_ERS |
| s622 | R142 | linear | lo | CFH | 7547/25000 | s524,lo_CHQ,lo_FHQ |
| s625 | R145 | linear | lo | CHR | 53317/125000 | lo_CHQ,s534,lo_HQR |
| s628 | R146 | linear | lo | CHS | 401503/1000000 | s625,s53,s557 |
| s631 | R148 | linear | lo | EFR | 392453/1000000 | s562,lo_ERS,lo_FRS |
| s633 | R151 | linear | lo | EHR | 265041/500000 | s555,lo_ERS,s557 |
| s634 | R151 | linear | hi | EHS | 519143/1000000 | hi_EHR,lo_ERS,s557 |
| s636 | R153 | linear | lo | EQR | 365663/1000000 | s560,lo_ERS,lo_QRS |
| s638 | R157 | bary_hi | lo | AFS | 306757/1000000 | s570,s514,s537 |
| s641 | R158 | bary_hi | lo | AQS | 5443/25000 | s575,s495,s497 |
| s642 | R159 | bary_hi | hi | ARS | 15217/62500 | s578,hi_AER |
| s643 | R162 | bary_lo | hi | BFS | 193751/250000 | hi_BCF,s596,hi_BFR |
| s648 | R168 | bary_lo | lo | FHS | 190441/1000000 | s622,lo_EFH,s529 |
| s661 | R6 | sum | lo | AHS | 211229/500000 | s532,s641,lo_HQS |
| s668 | R16 | sumlo | lo | AEQ | 47811/250000 | s568,lo_AFQ,s575,s514,hi_ACF |
| s669 | R18 | sumlo | lo | AEP | 6247/31250 | s568,lo_APR,lo_ACP,s583,hi_ACR |
| s670 | R19 | sumlo | lo | AQR | 1303/5000 | s575,s583,s578,s668,hi_ACE |
| s671 | R20 | sumlo | lo | AFP | 7413/50000 | s570,lo_APR,lo_ACP,s537,hi_ACR |
| s672 | R21 | sumlo | lo | AHP | 1651/10000 | s572,lo_APR,lo_ACP,s589,hi_ACR |
| s673 | R22 | sumlo | lo | APQ | 7393/62500 | lo_ACP,s670,s575,lo_APR,hi_ACR |
| s674 | R23 | sumlo | lo | ABF | 168873/1000000 | s566,s606,lo_ABH,s597,hi_BEH |
| s677 | R28 | sumlo | lo | BPR | 62133/500000 | lo_BEP,lo_BHR,s604,s505,hi_BEH |
| s680 | R32 | sumlo | lo | CEP | 189949/1000000 | s568,lo_CHP,lo_ACP,s618,hi_ACH |
| s681 | R36 | sumlo | lo | CPR | 137037/1000000 | lo_ACP,s625,s578,lo_CHP,hi_ACH |
| s684 | R39 | sumlo | lo | BCE | 29721/125000 | lo_BCQ,s619,lo_BCR,s513,s57 |
| s686 | R41 | sumlo | lo | CEQ | 300959/1000000 | s568,s636,s668,s619,hi_AER |
| s687 | R42 | sumlo | lo | AEF | 4563/15625 | s581,s631,s583,lo_EFH,hi_EHR |
| s690 | R46 | sumlo | lo | BES | 189139/1000000 | s684,lo_ERS,s604,lo_CES,hi_CER |
| s697 | R49 | sumlo | lo | EFQ | 129939/1000000 | lo_EFH,s636,s631,s530,hi_EHR |
| s698 | R50 | sumlo | lo | BFQ | 47147/500000 | s674,lo_FHQ,lo_AFQ,s606,hi_AFH |
| s703 | R62 | sumlo | lo | BHQ | 39241/250000 | s594,lo_HQS,lo_BHS,lo_CHQ,s269 |
| s704 | R63 | sumlo | lo | FHR | 49679/200000 | s606,s633,lo_BHR,lo_EFH,hi_BEH |
| s706 | R66 | sumlo | lo | EHQ | 41627/250000 | s618,lo_HQR,lo_CHQ,s633,hi_CHR |
| s707 | R69 | sumlo | lo | CFP | 31221/250000 | lo_ACP,lo_FHP,s671,lo_CHP,s12 |
| s709 | R73 | sumlo | lo | CFQ | 120889/1000000 | s575,s697,lo_AFQ,s686,s582 |
| s710 | R75 | sumlo | lo | AHQ | 119551/1000000 | s575,lo_HQR,s670,lo_CHQ,s57 |
| s712 | R79 | sumlo | lo | CQR | 259927/1000000 | s578,s636,s670,s619,hi_AER |
| s714 | R82 | sumlo | lo | AFR | 400227/1000000 | s583,s704,s589,s631,hi_EHR |
| s715 | R84 | sumlo | lo | ARS | 5463/40000 | s583,s557,s589,lo_ERS,hi_EHR |
| s719 | R91 | sumlo | lo | CRS | 50159/500000 | s619,s557,s625,lo_ERS,hi_EHR |
| s723 | R96 | sumlo | lo | AES | 283387/1000000 | s579,lo_ERS,s715,lo_CES,s53 |
| s726 | R100 | sumlo | lo | EFS | 225419/1000000 | s723,lo_FRS,s638,lo_ERS,s642 |
| s727 | R101 | sumlo | lo | ARS | 28371/200000 | s723,s557,s661,lo_ERS,s634 |
| s728 | R102 | sumlo | lo | EQS | 191409/1000000 | s723,lo_QRS,s641,lo_ERS,s642 |
| s729 | R104 | sumlo | lo | BRS | 168491/1000000 | s690,s557,lo_BHS,lo_ERS,s634 |
| s732 | R105 | sumlo | lo | HRS | 62341/500000 | lo_BHS,lo_FRS,s729,s648,s643 |
| s734 | R107 | sumlo | lo | EHS | 167287/500000 | lo_CES,s732,s628,lo_ERS,s53 |
| s738 | R112 | linear | hi | AEH | 50501/62500 | s566,hi_ABH,hi_BEH |
| s739 | R113 | linear | lo | ABE | 24119/62500 | lo_ABP,s669,lo_BEP |
| s742 | R114 | linear | lo | ACE | 482853/1000000 | lo_ACP,s669,s680 |
| s744 | R116 | linear | lo | ACF | 5721/15625 | lo_ACP,s671,s707 |
| s746 | R117 | linear | lo | ACH | 3511/10000 | lo_ACP,s672,lo_CHP |
| s751 | R118 | linear | lo | ACQ | 9509/31250 | lo_ACP,s673,lo_CPQ |
| s754 | R119 | linear | lo | ACR | 323037/1000000 | lo_ACP,lo_APR,s681 |
| s757 | R121 | linear | lo | ACS | 318631/1000000 | s754,s727,s53 |
| s759 | R122 | linear | lo | AEH | 477303/1000000 | s668,s710,s706 |
| s760 | R122 | linear | hi | AEQ | 521957/1000000 | s738,s710,s706 |
| s761 | R123 | linear | lo | AER | 259121/500000 | s723,s727,lo_ERS |
| s763 | R124 | linear | lo | AFH | 305551/1000000 | lo_AFQ,s710,lo_FHQ |
| s767 | R127 | linear | lo | AHR | 473151/1000000 | s710,s670,lo_HQR |
| s774 | R131 | linear | hi | BEF | 416599/500000 | hi_BEH,s606,hi_EFH |
| s782 | R133 | linear | lo | BER | 45063/100000 | s690,s729,lo_ERS |
| s784 | R134 | linear | lo | BFH | 172129/500000 | s698,s703,lo_FHQ |
| s789 | R136 | linear | hi | BQS | 118557/200000 | s703,hi_BHS,lo_HQS |
| s795 | R140 | linear | lo | CEH | 624357/1000000 | hi_CER,s625,s633 |
| s796 | R141 | linear | lo | CER | 143159/500000 | lo_CES,s719,lo_ERS |
| s799 | R142 | linear | lo | CFH | 306889/1000000 | s709,lo_CHQ,lo_FHQ |
| s802 | R145 | linear | lo | CHR | 445927/1000000 | lo_CHQ,s712,lo_HQR |
| s804 | R146 | linear | lo | CHS | 106087/250000 | s802,s53,s732 |
| s808 | R148 | linear | lo | EFR | 411419/1000000 | s726,lo_ERS,lo_FRS |
| s811 | R151 | linear | lo | EHR | 8629/15625 | s734,lo_ERS,s732 |
| s812 | R151 | linear | hi | EHS | 515689/1000000 | hi_EHR,lo_ERS,s732 |
| s814 | R153 | linear | lo | EQR | 377409/1000000 | s728,lo_ERS,lo_QRS |
| s817 | R157 | bary_hi | lo | AFS | 42719/125000 | s744,s687,s714 |
| s820 | R158 | bary_hi | lo | AQS | 240989/1000000 | s751,s668,s670 |
| s821 | R159 | bary_hi | hi | ARS | 241657/1000000 | s754,hi_AER |
| s822 | R162 | bary_lo | hi | BFS | 193591/250000 | hi_BCF,s774,hi_BFR |
| s823 | R163 | bary_hi | lo | BPS | 101527/1000000 | lo_BCP,lo_BEP,s677 |
| s827 | R168 | bary_lo | lo | FHS | 193713/1000000 | s799,lo_EFH,s704 |
| s840 | R6 | sum | lo | AHS | 22677/50000 | s710,s820,lo_HQS |
| s848 | R16 | sumlo | lo | AEQ | 108577/500000 | s742,lo_AFQ,s751,s687,hi_ACF |
| s849 | R18 | sumlo | lo | AEP | 212539/1000000 | s742,lo_APR,lo_ACP,s761,hi_ACR |
| s850 | R19 | sumlo | lo | AQR | 11527/40000 | s751,s761,s754,s848,hi_ACE |
| s851 | R20 | sumlo | lo | AFP | 32541/200000 | s744,lo_APR,lo_ACP,s714,hi_ACR |
| s852 | R21 | sumlo | lo | AHP | 87497/500000 | s746,lo_APR,lo_ACP,s767,hi_ACR |
| s853 | R22 | sumlo | lo | APQ | 125783/1000000 | lo_ACP,s850,s751,lo_APR,hi_ACR |
| s859 | R30 | sumlo | lo | BHP | 67881/500000 | s703,s823,lo_BHS,lo_BPQ,s789 |
| s861 | R32 | sumlo | lo | CEP | 40847/200000 | s742,lo_CHP,lo_ACP,s795,hi_ACH |
| s862 | R33 | sumlo | lo | ACE | 15247/31250 | s746,s796,s754,s795,hi_CHR |
| s863 | R36 | sumlo | lo | CPR | 70921/500000 | lo_ACP,s802,s754,lo_CHP,hi_ACH |
| s866 | R39 | sumlo | lo | BCE | 49777/200000 | lo_BCQ,s796,lo_BCR,s686,s57 |
| s869 | R41 | sumlo | lo | CEQ | 13581/40000 | s862,s814,s848,s796,hi_AER |
| s870 | R42 | sumlo | lo | AEF | 83371/250000 | s759,s808,s761,lo_EFH,hi_EHR |
| s873 | R46 | sumlo | lo | BES | 97897/500000 | s866,lo_ERS,s782,lo_CES,hi_CER |
| s877 | R49 | sumlo | lo | EFQ | 14127/100000 | lo_EFH,s814,s808,s706,hi_EHR |
| s884 | R60 | sumlo | lo | FHR | 263293/1000000 | s763,s811,s767,lo_EFH,s738 |
| s886 | R66 | sumlo | lo | EHQ | 176657/1000000 | s795,lo_HQR,lo_CHQ,s811,hi_CHR |
| s887 | R69 | sumlo | lo | CFP | 64553/500000 | lo_ACP,lo_FHP,s851,lo_CHP,s12 |
| s889 | R73 | sumlo | lo | CFQ | 142851/1000000 | s751,s877,lo_AFQ,s869,s760 |
| s890 | R75 | sumlo | lo | AHQ | 63563/500000 | s751,lo_HQR,s850,lo_CHQ,s57 |
| s892 | R79 | sumlo | lo | CQR | 140893/500000 | s754,s814,s850,s796,hi_AER |
| s893 | R82 | sumlo | lo | AFR | 225747/500000 | s761,s884,s767,s808,hi_EHR |
| s894 | R84 | sumlo | lo | ARS | 37027/250000 | s761,s732,s767,lo_ERS,hi_EHR |
| s898 | R91 | sumlo | lo | CRS | 52613/500000 | s796,s732,s802,lo_ERS,hi_EHR |
| s902 | R96 | sumlo | lo | AES | 11871/40000 | s757,lo_ERS,s894,lo_CES,s53 |
| s905 | R100 | sumlo | lo | EFS | 61433/250000 | s902,lo_FRS,s817,lo_ERS,s821 |
| s906 | R101 | sumlo | lo | ARS | 30709/200000 | s902,s732,s840,lo_ERS,s812 |
| s907 | R102 | sumlo | lo | EQS | 103477/500000 | s902,lo_QRS,s820,lo_ERS,s821 |
| s909 | R104 | sumlo | lo | BRS | 34499/200000 | s873,s732,lo_BHS,lo_ERS,s812 |
| s911 | R105 | sumlo | lo | HRS | 126499/1000000 | lo_BHS,lo_FRS,s909,s827,s822 |
| s913 | R107 | sumlo | lo | EHS | 70051/200000 | lo_CES,s911,s804,lo_ERS,s53 |
| s917 | R112 | linear | hi | AEH | 796661/1000000 | s739,hi_ABH,hi_BEH |
| s918 | R113 | linear | lo | ABE | 398539/1000000 | lo_ABP,s849,lo_BEP |
| s925 | R114 | linear | lo | ACE | 254887/500000 | lo_ACP,s849,s861 |
| s927 | R116 | linear | lo | ACF | 384811/1000000 | lo_ACP,s851,s887 |
| s929 | R117 | linear | lo | ACH | 180497/500000 | lo_ACP,s852,lo_CHP |
| s934 | R118 | linear | lo | ACQ | 311783/1000000 | lo_ACP,s853,lo_CPQ |
| s937 | R119 | linear | lo | ACR | 163921/500000 | lo_ACP,lo_APR,s863 |
| s941 | R121 | linear | lo | ACS | 167563/500000 | s937,s906,s53 |
| s943 | R122 | linear | lo | AEH | 520937/1000000 | s848,s890,s886 |
| s944 | R122 | linear | hi | AEQ | 246439/500000 | s917,s890,s886 |
| s946 | R123 | linear | lo | AER | 13583/25000 | s902,s906,lo_ERS |
| s948 | R124 | linear | lo | AFH | 156563/500000 | lo_AFQ,s890,lo_FHQ |
| s952 | R127 | linear | lo | AHR | 508301/1000000 | s890,s850,lo_HQR |
| s957 | R129 | linear | lo | BCH | 160881/500000 | lo_BCP,s859,lo_CHP |
| s959 | R131 | linear | hi | BEF | 41563/50000 | hi_BEH,s784,hi_EFH |
| s968 | R133 | linear | lo | BER | 461289/1000000 | s873,s909,lo_ERS |
| s981 | R140 | linear | lo | CEH | 332961/500000 | hi_CER,s802,s811 |
| s982 | R141 | linear | lo | CER | 145613/500000 | lo_CES,s898,lo_ERS |
| s985 | R142 | linear | lo | CFH | 328851/1000000 | s889,lo_CHQ,lo_FHQ |
| s988 | R145 | linear | lo | CHR | 233893/500000 | lo_CHQ,s892,lo_HQR |
| s990 | R146 | linear | lo | CHS | 56003/125000 | s988,s53,s911 |
| s996 | R148 | linear | lo | EFR | 107933/250000 | s905,lo_ERS,lo_FRS |
| s999 | R151 | linear | lo | EHR | 284877/500000 | s913,lo_ERS,s911 |
| s1000 | R151 | linear | hi | EHS | 32117/62500 | hi_EHR,lo_ERS,s911 |
| s1002 | R153 | linear | lo | EQR | 196477/500000 | s907,lo_ERS,lo_QRS |
| s1007 | R157 | bary_hi | lo | AFS | 189833/500000 | s927,s870,s893 |
| s1009 | R158 | bary_hi | lo | AQS | 262331/1000000 | s934,s848,s850 |
| s1010 | R159 | bary_hi | hi | ARS | 120173/500000 | s937,hi_AER |
| s1011 | R162 | bary_lo | hi | BFS | 154767/200000 | hi_BCF,s959,hi_BFR |
| s1016 | R168 | bary_lo | lo | FHS | 101883/500000 | s985,lo_EFH,s884 |
| s1028 | R6 | sum | lo | AHS | 482457/1000000 | s890,s1009,lo_HQS |
| s1037 | R16 | sumlo | lo | AEQ | 30719/125000 | s925,lo_AFQ,s934,s870,hi_ACF |
| s1038 | R18 | sumlo | lo | AEP | 223579/1000000 | s925,lo_APR,lo_ACP,s946,hi_ACR |
| s1039 | R19 | sumlo | lo | AQR | 63231/200000 | s934,s946,s937,s1037,hi_ACE |
| s1040 | R20 | sumlo | lo | AFP | 177553/1000000 | s927,lo_APR,lo_ACP,s893,hi_ACR |
| s1041 | R21 | sumlo | lo | AHP | 184557/1000000 | s929,lo_APR,lo_ACP,s952,hi_ACR |
| s1042 | R22 | sumlo | lo | APQ | 26663/200000 | lo_ACP,s1039,s934,lo_APR,hi_ACR |
| s1051 | R33 | sumlo | lo | ACE | 26109/50000 | s929,s982,s937,s981,hi_CHR |
| s1055 | R36 | sumlo | lo | CPR | 146761/1000000 | lo_ACP,s988,s937,lo_CHP,hi_ACH |
| s1058 | R39 | sumlo | lo | BCE | 1627/6250 | lo_BCQ,s982,lo_BCR,s869,s57 |
| s1061 | R41 | sumlo | lo | CEQ | 76299/200000 | s1051,s1002,s1037,s982,hi_AER |
| s1063 | R42 | sumlo | lo | AEF | 93893/250000 | s943,s996,s946,lo_EFH,hi_EHR |
| s1066 | R46 | sumlo | lo | BES | 201979/1000000 | s1058,lo_ERS,s968,lo_CES,hi_CER |
| s1071 | R49 | sumlo | lo | EFQ | 38457/250000 | lo_EFH,s1002,s996,s886,hi_EHR |
| s1076 | R60 | sumlo | lo | FHR | 141639/500000 | s948,s999,s952,lo_EFH,s917 |
| s1077 | R62 | sumlo | lo | BHQ | 78647/500000 | s957,lo_HQS,lo_BHS,lo_CHQ,s269 |
| s1078 | R66 | sumlo | lo | EHQ | 7421/40000 | s981,lo_HQR,lo_CHQ,s999,hi_CHR |
| s1079 | R69 | sumlo | lo | CFP | 66723/500000 | lo_ACP,lo_FHP,s1040,lo_CHP,s12 |
| s1081 | R73 | sumlo | lo | CFQ | 169291/1000000 | s934,s1071,lo_AFQ,s1061,s944 |
| s1082 | R75 | sumlo | lo | AHQ | 67369/500000 | s934,lo_HQR,s1039,lo_CHQ,s57 |
| s1084 | R79 | sumlo | lo | CQR | 304493/1000000 | s937,s1002,s1039,s982,hi_AER |
| s1086 | R82 | sumlo | lo | AFR | 509101/1000000 | s946,s1076,s952,s996,hi_EHR |
| s1087 | R84 | sumlo | lo | ARS | 6327/40000 | s946,s911,s952,lo_ERS,hi_EHR |
| s1090 | R88 | sumlo | lo | HRS | 63263/500000 | lo_BHR,lo_FRS,s909,s1076,hi_BFR |
| s1093 | R91 | sumlo | lo | CRS | 27391/250000 | s982,s1090,s988,lo_ERS,hi_EHR |
| s1095 | R93 | sumlo | lo | HRS | 25331/200000 | s988,lo_FRS,s1093,s1076,hi_CFR |
| s1099 | R96 | sumlo | lo | AES | 62733/200000 | s941,lo_ERS,s1087,lo_CES,s53 |
| s1104 | R100 | sumlo | lo | EFS | 134139/500000 | s1099,lo_FRS,s1007,lo_ERS,s1010 |
| s1105 | R101 | sumlo | lo | ARS | 10289/62500 | s1099,s1095,s1028,lo_ERS,s1000 |
| s1107 | R102 | sumlo | lo | EQS | 222877/1000000 | s1099,lo_QRS,s1009,lo_ERS,s1010 |
| s1110 | R104 | sumlo | lo | BRS | 175381/1000000 | s1066,s1095,lo_BHS,lo_ERS,s1000 |
| s1112 | R105 | sumlo | lo | HRS | 64793/500000 | lo_BHS,lo_FRS,s1110,s1016,s1011 |
| s1114 | R107 | sumlo | lo | EHS | 367273/1000000 | lo_CES,s1112,s990,lo_ERS,s53 |
| s1120 | R112 | linear | hi | AEH | 392013/500000 | s918,hi_ABH,hi_BEH |
| s1121 | R113 | linear | lo | ABE | 409579/1000000 | lo_ABP,s1038,lo_BEP |
| s1131 | R115 | linear | lo | ACE | 538901/1000000 | s937,s946,hi_CER |
| s1132 | R116 | linear | lo | ACF | 403999/1000000 | lo_ACP,s1040,s1079 |
| s1134 | R117 | linear | lo | ACH | 370557/1000000 | lo_ACP,s1041,lo_CHP |
| s1139 | R118 | linear | lo | ACQ | 63863/200000 | lo_ACP,s1042,lo_CPQ |
| s1141 | R119 | linear | lo | ACR | 332761/1000000 | lo_ACP,lo_APR,s1055 |
| s1145 | R121 | linear | lo | ACS | 87781/250000 | s1141,s1105,s53 |
| s1147 | R122 | linear | lo | AEH | 113203/200000 | s1037,s1082,s1078 |
| s1148 | R122 | linear | hi | AEQ | 463763/1000000 | s1120,s1082,s1078 |
| s1150 | R123 | linear | lo | AER | 571289/1000000 | s1099,s1105,lo_ERS |
| s1152 | R124 | linear | lo | AFH | 160369/500000 | lo_AFQ,s1082,lo_FHQ |
| s1156 | R127 | linear | lo | AHR | 543893/1000000 | s1082,s1039,lo_HQR |
| s1162 | R130 | linear | lo | BQR | 443993/1000000 | lo_BCQ,hi_BCR,s1084 |
| s1180 | R135 | linear | lo | BHR | 694287/1000000 | s1077,s1162,lo_HQR |
| s1186 | R137 | linear | hi | CEF | 161181/200000 | hi_CEH,s985,hi_EFH |
| s1189 | R140 | linear | lo | CEH | 705279/1000000 | hi_CER,s988,s999 |
| s1190 | R141 | linear | lo | CER | 73891/250000 | lo_CES,s1093,lo_ERS |
| s1193 | R142 | linear | lo | CFH | 355291/1000000 | s1081,lo_CHQ,lo_FHQ |
| s1196 | R145 | linear | lo | CHR | 490493/1000000 | lo_CHQ,s1084,lo_HQR |
| s1198 | R146 | linear | hi | CHR | 617241/1000000 | s269,s53,s1112 |
| s1205 | R148 | linear | lo | EFR | 227139/500000 | s1104,lo_ERS,lo_FRS |
| s1208 | R151 | linear | lo | EHR | 589859/1000000 | s1114,lo_ERS,s1112 |
| s1209 | R151 | linear | hi | EHS | 102157/200000 | hi_EHR,lo_ERS,s1112 |
| s1211 | R153 | linear | lo | EQR | 408877/1000000 | s1107,lo_ERS,lo_QRS |
| s1216 | R157 | bary_hi | lo | AFS | 419741/1000000 | s1132,s1063,s1086 |
| s1218 | R158 | bary_hi | lo | AQS | 57003/200000 | s1139,s1037,s1039 |
| s1219 | R159 | bary_hi | hi | ARS | 47801/200000 | s1141,hi_AER |
| s1224 | R165 | bary_lo | hi | CFS | 52683/100000 | s1186,hi_CFR |
| s1225 | R166 | bary_lo | hi | CHS | 149993/250000 | hi_CEH,s1198 |
| s1239 | R6 | sum | lo | AHS | 512753/1000000 | s1082,s1218,lo_HQS |
| s1246 | R12 | sub | hi | CQR | 431241/1000000 | s1198,lo_CHQ,lo_HQR |
| s1253 | R16 | sumlo | lo | AEQ | 69011/250000 | s1131,lo_AFQ,s1139,s1063,hi_ACF |
| s1254 | R18 | sumlo | lo | AEP | 2357/10000 | s1131,lo_APR,lo_ACP,s1150,hi_ACR |
| s1255 | R19 | sumlo | lo | AQR | 43363/125000 | s1139,s1150,s1141,s1253,hi_ACE |
| s1257 | R21 | sumlo | lo | AHP | 6067/31250 | s1134,lo_APR,lo_ACP,s1156,hi_ACR |
| s1259 | R22 | sumlo | lo | APQ | 70721/500000 | lo_ACP,s1255,s1139,lo_APR,hi_ACR |
| s1272 | R33 | sumlo | lo | ACE | 557663/1000000 | s1134,s1190,s1141,s1189,s1198 |
| s1279 | R36 | sumlo | lo | CPR | 151857/1000000 | lo_ACP,s1196,s1141,lo_CHP,hi_ACH |
| s1286 | R41 | sumlo | lo | CEQ | 213383/500000 | s1272,s1211,s1253,s1190,hi_AER |
| s1288 | R42 | sumlo | lo | AEF | 423057/1000000 | s1147,s1205,s1150,lo_EFH,hi_EHR |
| s1296 | R49 | sumlo | lo | EFQ | 166771/1000000 | lo_EFH,s1211,s1205,s1078,hi_EHR |
| s1302 | R60 | sumlo | lo | FHR | 305821/1000000 | s1152,s1208,s1156,lo_EFH,s1120 |
| s1304 | R66 | sumlo | lo | EHQ | 195139/1000000 | s1189,lo_HQR,lo_CHQ,s1208,s1198 |
| s1305 | R67 | sumlo | lo | FHQ | 9961/100000 | s1193,lo_HQR,lo_CHQ,s1302,s1198 |
| s1307 | R73 | sumlo | lo | CFQ | 200407/1000000 | s1139,s1296,lo_AFQ,s1286,s1148 |
| s1309 | R75 | sumlo | lo | AHQ | 71837/500000 | s1139,lo_HQR,s1255,lo_CHQ,s1246 |
| s1313 | R78 | sumlo | lo | AER | 14461/25000 | s1141,s1208,s1156,s1190,s1198 |
| s1314 | R78 | sumlo | lo | CHR | 492149/1000000 | s1141,s1208,s1156,s1190,hi_AER |
| s1315 | R79 | sumlo | lo | CQR | 328879/1000000 | s1141,s1211,s1255,s1190,hi_AER |
| s1324 | R84 | sumlo | lo | ARS | 171181/1000000 | s1313,s1112,s1156,lo_ERS,hi_EHR |
| s1328 | R88 | sumlo | lo | HRS | 131879/1000000 | s1180,lo_FRS,s1110,s1302,hi_BFR |
| s1329 | R89 | sumlo | lo | CFR | 107027/250000 | s1190,s1302,s1314,s1205,hi_EHR |
| s1330 | R90 | sumlo | lo | EFR | 230073/500000 | s1190,lo_FRS,s1329,lo_ERS,s53 |
| s1331 | R91 | sumlo | lo | CRS | 2889/25000 | s1190,s1328,s1314,lo_ERS,hi_EHR |
| s1332 | R92 | sumlo | lo | FQR | 227451/1000000 | s1329,lo_HQR,s1315,s1302,s1198 |
| s1333 | R93 | sumlo | lo | HRS | 68909/500000 | s1314,lo_FRS,s1331,s1302,hi_CFR |
| s1335 | R94 | sumlo | lo | QRS | 96629/1000000 | s1315,lo_FRS,s1331,s1332,hi_CFR |
| s1342 | R96 | sumlo | lo | AES | 332107/1000000 | s1145,lo_ERS,s1324,lo_CES,s53 |
| s1347 | R100 | sumlo | lo | EFS | 292553/1000000 | s1342,lo_FRS,s1216,lo_ERS,s1219 |
| s1348 | R101 | sumlo | lo | ARS | 91483/500000 | s1342,s1333,s1239,lo_ERS,s1209 |
| s1349 | R101 | sumlo | lo | EHS | 195511/500000 | s1342,s1333,s1239,lo_ERS,s1219 |
| s1350 | R102 | sumlo | lo | EQS | 61293/250000 | s1342,s1335,s1218,lo_ERS,s1219 |
| s1362 | R112 | linear | hi | AEH | 386493/500000 | s1121,hi_ABH,hi_BEH |
| s1364 | R113 | linear | lo | ABE | 4217/10000 | lo_ABP,s1254,lo_BEP |
| s1375 | R115 | linear | lo | ACE | 28947/50000 | s1141,s1313,hi_CER |
| s1378 | R117 | linear | lo | ACH | 23759/62500 | lo_ACP,s1257,lo_CHP |
| s1382 | R118 | linear | lo | ACQ | 163721/500000 | lo_ACP,s1259,lo_CPQ |
| s1384 | R119 | linear | lo | ACR | 337857/1000000 | lo_ACP,lo_APR,s1279 |
| s1388 | R121 | linear | lo | ACS | 187281/500000 | s1384,s1348,s53 |
| s1390 | R122 | linear | lo | AEH | 614857/1000000 | s1253,s1309,s1304 |
| s1392 | R122 | linear | hi | AEQ | 434173/1000000 | s1362,s1309,s1304 |
| s1396 | R124 | linear | lo | AFH | 84071/250000 | lo_AFQ,s1309,s1305 |
| s1400 | R127 | linear | lo | AHR | 291789/500000 | s1309,s1255,lo_HQR |
| s1431 | R137 | linear | hi | CEF | 155893/200000 | hi_CEH,s1193,hi_EFH |
| s1432 | R138 | linear | lo | CEF | 555993/1000000 | hi_CER,s1329,s1330 |
| s1436 | R141 | linear | lo | CER | 7539/25000 | lo_CES,s1331,lo_ERS |
| s1440 | R144 | linear | hi | CFR | 580091/1000000 | s1224,s53,lo_FRS |
| s1443 | R145 | linear | lo | CHR | 514879/1000000 | lo_CHQ,s1315,lo_HQR |
| s1445 | R146 | linear | hi | CHR | 121683/200000 | s1225,s53,s1333 |
| s1448 | R147 | linear | hi | EFR | 76589/125000 | hi_EFH,hi_EHR,s1302 |
| s1452 | R148 | linear | lo | EFR | 478553/1000000 | s1347,lo_ERS,lo_FRS |
| s1456 | R151 | linear | lo | EHR | 7773/12500 | s1349,lo_ERS,s1333 |
| s1457 | R151 | linear | hi | EHS | 502553/1000000 | hi_EHR,lo_ERS,s1333 |
| s1459 | R153 | linear | lo | EQR | 434801/1000000 | s1350,lo_ERS,s1335 |
| s1473 | R158 | bary_hi | lo | AQS | 309387/1000000 | s1382,s1253,s1255 |
| s1474 | R159 | bary_hi | hi | ARS | 47523/200000 | s1384,hi_AER |
| s1475 | R160 | linear | lo | AES | 83629/250000 | s1388,s1348 |
| s1479 | R165 | bary_lo | hi | CFS | 512509/1000000 | s1431,s1440 |
| s1480 | R166 | bary_lo | hi | CHS | 119513/200000 | hi_CEH,s1445 |
| s1491 | R3 | sum | lo | AER | 305241/500000 | s1475,s1348,lo_ERS |
| s1492 | R6 | sum | lo | AHS | 546061/1000000 | s1309,s1473,lo_HQS |
| s1500 | R12 | sub | hi | CQR | 84483/200000 | s1445,lo_CHQ,lo_HQR |
| s1508 | R16 | sumlo | lo | AEQ | 62457/200000 | s1375,lo_AFQ,s1382,s1288,hi_ACF |
| s1512 | R19 | sumlo | lo | AQR | 193137/500000 | s1382,s1491,s1384,s1508,hi_ACE |
| s1514 | R21 | sumlo | lo | AHP | 51151/250000 | s1378,lo_APR,lo_ACP,s1400,hi_ACR |
| s1516 | R22 | sumlo | lo | APQ | 75763/500000 | lo_ACP,s1512,s1382,lo_APR,hi_ACR |
| s1528 | R31 | sumlo | lo | CEQ | 241947/500000 | s1375,s1307,s1382,s1432,hi_ACF |
| s1532 | R34 | sumlo | lo | ACE | 155197/250000 | s1382,s1436,s1384,s1528,s1500 |
| s1544 | R36 | sumlo | lo | CPR | 31459/200000 | lo_ACP,s1443,s1384,lo_CHP,hi_ACH |
| s1559 | R40 | sumlo | lo | CEH | 49231/62500 | s1532,s1456,s1390,s1436,hi_AER |
| s1560 | R41 | sumlo | lo | CEQ | 501873/1000000 | s1532,s1459,s1508,s1436,hi_AER |
| s1564 | R42 | sumlo | lo | AEF | 239317/500000 | s1390,s1452,s1491,lo_EFH,hi_EHR |
| s1577 | R49 | sumlo | lo | EFQ | 182473/1000000 | lo_EFH,s1459,s1452,s1304,hi_EHR |
| s1591 | R60 | sumlo | lo | FHR | 17037/50000 | s1396,s1456,s1400,lo_EFH,s1362 |
| s1598 | R66 | sumlo | lo | EHQ | 6733/31250 | s1559,lo_HQR,lo_CHQ,s1456,s1445 |
| s1603 | R73 | sumlo | lo | CFQ | 245117/1000000 | s1382,s1577,lo_AFQ,s1560,s1392 |
| s1609 | R75 | sumlo | lo | AHQ | 157133/1000000 | s1382,lo_HQR,s1512,lo_CHQ,s1500 |
| s1610 | R76 | sumlo | lo | FHQ | 11219/100000 | lo_AFQ,s1598,s1609,s1577,s1392 |
| s1618 | R78 | sumlo | lo | AER | 634561/1000000 | s1384,s1456,s1400,s1436,s1445 |
| s1619 | R78 | sumlo | lo | CHR | 532177/1000000 | s1384,s1456,s1400,s1436,hi_AER |
| s1623 | R79 | diffhi | hi | EQR | 562259/1000000 | hi_AER,s1500,s1512,s1436,s1384 |
| s1631 | R82 | sumlo | lo | AFR | 337819/500000 | s1618,s1591,s1400,s1452,hi_EHR |
| s1634 | R83 | sumlo | lo | ARS | 198867/1000000 | s1618,lo_FRS,s1631,lo_ERS,s1448 |
| s1635 | R83 | sumlo | lo | EFR | 256399/500000 | s1618,lo_FRS,s1631,lo_ERS,s1474 |
| s1640 | R85 | sumlo | lo | HRS | 149101/1000000 | s1400,lo_FRS,s1634,s1591,hi_AFR |
| s1646 | R89 | sumlo | lo | CFR | 512227/1000000 | s1436,s1591,s1619,s1635,hi_EHR |
| s1651 | R90 | sumlo | lo | EFR | 258723/500000 | s1436,lo_FRS,s1646,lo_ERS,s53 |
| s1653 | R91 | sumlo | lo | CRS | 32199/250000 | s1436,s1640,s1619,lo_ERS,hi_EHR |
| s1657 | R93 | sumlo | lo | HRS | 40243/250000 | s1619,lo_FRS,s1653,s1591,s1440 |
| s1668 | R96 | sumlo | lo | AES | 182307/500000 | s1388,lo_ERS,s1634,lo_CES,s53 |
| s1672 | R98 | sumlo | lo | ARS | 109297/500000 | s1388,s1657,s1492,s1653,s1480 |
| s1673 | R98 | sumlo | lo | CHS | 549731/1000000 | s1388,s1657,s1492,s1653,s1474 |
| s1675 | R98 | diffhi | hi | AHS | 634309/1000000 | s1474,s1480,s1388,s1657,s1653 |
| s1683 | R101 | diffhi | hi | HRS | 47057/250000 | s1474,s1457,s1492,lo_ERS,s1668 |
| s1701 | R107 | sumlo | lo | CRS | 131519/1000000 | lo_CES,s1657,s1673,lo_ERS,s1457 |
| s1707 | R110 | diffhi | hi | FHS | 344769/1000000 | s1479,s1683,s1673,lo_FRS,s1701 |
| s1711 | R112 | linear | hi | ABE | 141927/250000 | hi_ABH,s1390,hi_BEH |
| s1712 | R112 | linear | hi | AEH | 152173/200000 | s1364,hi_ABH,hi_BEH |
| s1715 | R113 | linear | hi | AEP | 95427/250000 | s1711,lo_ABP,lo_BEP |
| s1727 | R115 | linear | lo | ACE | 640157/1000000 | s1384,s1618,hi_CER |
| s1731 | R117 | linear | lo | ACH | 97651/250000 | lo_ACP,s1514,lo_CHP |
| s1734 | R118 | linear | lo | ACQ | 168763/500000 | lo_ACP,s1516,lo_CPQ |
| s1737 | R119 | linear | lo | ACR | 68659/200000 | lo_ACP,lo_APR,s1544 |
| s1744 | R121 | linear | lo | ACS | 103907/250000 | s1737,s1672,s53 |
| s1759 | R124 | linear | lo | AFH | 362323/1000000 | lo_AFQ,s1609,s1610 |
| s1763 | R125 | linear | hi | AFS | 123351/200000 | s1759,s1675,s1707 |
| s1766 | R126 | linear | hi | AFR | 76137/100000 | s1763,s1474,lo_FRS |
| s1773 | R128 | linear | hi | AHR | 88869/125000 | s1675,s1474,s1657 |
| s1828 | R142 | linear | lo | CFH | 450307/1000000 | s1603,lo_CHQ,s1610 |
| s1831 | R143 | linear | lo | FHR | 354119/1000000 | s1828,s1646,s1445 |
| s1852 | R147 | linear | lo | EHR | 343201/500000 | hi_EFH,s1651,s1831 |
| s1866 | R150 | linear | lo | EHQ | 217143/1000000 | s1852,s1623,lo_HQR |
| s1884 | R160 | linear | lo | AES | 380533/1000000 | s1744,s1672 |
| s1902 | R2 | sub | hi | AEQ | 386589/1000000 | s1712,s1609,s1866 |
| s1903 | R3 | sum | lo | AER | 692127/1000000 | s1884,s1672,lo_ERS |
| s1906 | R5 | sub | hi | AQR | 460819/1000000 | s1773,s1609,lo_HQR |
| s1950 | R15 | diffhi | hi | ACE | 48599/62500 | hi_ACF,s1712,s1731,s1564,s1759 |
| s1954 | R16 | sumlo | lo | ACF | 571889/1000000 | s1727,lo_AFQ,s1734,s1564,s1902 |
| s1955 | R16 | sumlo | lo | AEQ | 71781/200000 | s1727,lo_AFQ,s1734,s1564,hi_ACF |
| s1959 | R17 | sumlo | lo | ACE | 73569/100000 | s1954,s1903,s1737,s1564,s1766 |
| s1967 | R18 | sumlo | lo | ACR | 2783/8000 | s1959,lo_APR,lo_ACP,s1903,s1715 |
| s1973 | R19 | sumlo | lo | ACE | 388943/500000 | s1734,s1903,s1967,s1955,s1906 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | ACE | s1973 | s1950 |

The two cited bounds give 388943/500000 <= |ACE| <= 48599/62500, with exact positive gap 151/500000.

## Leaf A016

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACE | ACE | lo | 93/1000 | cost: |
| lo_ACF | ACF | lo | 279/1000 | cost:P |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AFH | AFH | lo | 279/1000 | cost:Q |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AFR | AFR | lo | 279/1000 | cost:P |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 279/1000 | cost:P |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEQ | BEQ | lo | 279/1000 | cost:P |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_CEF | CEF | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFH | CFH | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHP | EHP | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 279/1000 | cost:Q |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFH | CFH | hi | 77/125 | C048 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AEF","AEP","AFP","EFP"] | ["fan","AEF","P"] |
| R2 | fan | ["AEH","AEP","AHP","EHP"] | ["fan","AEH","P"] |
| R3 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R4 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R5 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R6 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R7 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R8 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R9 | fan | ["EQR","EQS","ERS","QRS"] | ["fan","EQR","S"] |
| R10 | plu | ["ABE","ACH","ABC","AEH","ABH","ACE"] | ["plu","ABCEH"] |
| R11 | plu | ["ACP","AEF","ACE","AFP","ACF","AEP"] | ["plu","ACEFP"] |
| R12 | plu | ["ACE","AHR","ACH","AER","ACR","AEH"] | ["plu","ACEHR"] |
| R13 | plu | ["AEF","AHP","AEH","AFP","AEP","AFH"] | ["plu","AEFHP"] |
| R14 | plu | ["AEF","APR","AEP","AFR","AER","AFP"] | ["plu","AEFPR"] |
| R15 | plu | ["AFR","AHP","AFH","APR","AFP","AHR"] | ["plu","AFHPR"] |
| R16 | plu | ["ACR","BCF","ABC","CFR","ACF","BCR"] | ["plu","CABFR"] |
| R17 | plu | ["ACH","BCP","ABC","CHP","ACP","BCH"] | ["plu","CABHP"] |
| R18 | plu | ["ACR","BCH","ABC","CHR","ACH","BCR"] | ["plu","CABHR"] |
| R19 | plu | ["ACE","CHR","ACH","CER","ACR","CEH"] | ["plu","CAEHR"] |
| R20 | plu | ["ACH","CFP","ACF","CHP","ACP","CFH"] | ["plu","CAFHP"] |
| R21 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R22 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R23 | plu | ["ACE","BEH","ABE","CEH","AEH","BCE"] | ["plu","EABCH"] |
| R24 | plu | ["AEH","BEP","ABE","EHP","AEP","BEH"] | ["plu","EABHP"] |
| R25 | plu | ["AEH","CEP","ACE","EHP","AEP","CEH"] | ["plu","EACHP"] |
| R26 | plu | ["AES","CER","ACE","ERS","AER","CES"] | ["plu","EACRS"] |
| R27 | plu | ["BER","CEF","BCE","EFR","BEF","CER"] | ["plu","EBCFR"] |
| R28 | plu | ["BER","CEP","BCE","EPR","BEP","CER"] | ["plu","EBCPR"] |
| R29 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R30 | plu | ["CER","EFS","CEF","ERS","CES","EFR"] | ["plu","ECFRS"] |
| R31 | plu | ["CER","EPS","CEP","ERS","CES","EPR"] | ["plu","ECPRS"] |
| R32 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R33 | plu | ["AEF","FHR","AFH","EFR","AFR","EFH"] | ["plu","FAEHR"] |
| R34 | plu | ["CFH","FPR","CFP","FHR","CFR","FHP"] | ["plu","FCHPR"] |
| R35 | plu | ["EFP","FHR","EFH","FPR","EFR","FHP"] | ["plu","FEHPR"] |
| R36 | plu | ["AHR","CEH","ACH","EHR","AEH","CHR"] | ["plu","HACER"] |
| R37 | plu | ["ACH","HPR","AHP","CHR","AHR","CHP"] | ["plu","HACPR"] |
| R38 | plu | ["AHQ","EHP","AEH","HPQ","AHP","EHQ"] | ["plu","HAEPQ"] |
| R39 | plu | ["BCH","EHP","BEH","CHP","BHP","CEH"] | ["plu","HBCEP"] |
| R40 | plu | ["CFH","HPR","CHP","FHR","CHR","FHP"] | ["plu","HCFPR"] |
| R41 | plu | ["AFP","BCP","ABP","CFP","ACP","BFP"] | ["plu","PABCF"] |
| R42 | plu | ["AHP","BEP","ABP","EHP","AEP","BHP"] | ["plu","PABEH"] |
| R43 | plu | ["AFP","BHP","ABP","FHP","AHP","BFP"] | ["plu","PABFH"] |
| R44 | plu | ["AHP","BPR","ABP","HPR","APR","BHP"] | ["plu","PABHR"] |
| R45 | plu | ["AHP","CFP","ACP","FHP","AFP","CHP"] | ["plu","PACFH"] |
| R46 | plu | ["ACP","FPR","AFP","CPR","APR","CFP"] | ["plu","PACFR"] |
| R47 | plu | ["AHP","EFP","AEP","FHP","AFP","EHP"] | ["plu","PAEFH"] |
| R48 | plu | ["APR","EFP","AEP","FPR","AFP","EPR"] | ["plu","PAEFR"] |
| R49 | plu | ["AHP","FPR","AFP","HPR","APR","FHP"] | ["plu","PAFHR"] |
| R50 | plu | ["BCP","EFP","BEP","CFP","BFP","CEP"] | ["plu","PBCEF"] |
| R51 | plu | ["BHP","EFP","BEP","FHP","BFP","EHP"] | ["plu","PBEFH"] |
| R52 | plu | ["BPR","EFP","BEP","FPR","BFP","EPR"] | ["plu","PBEFR"] |
| R53 | plu | ["BHP","EPQ","BEP","HPQ","BPQ","EHP"] | ["plu","PBEHQ"] |
| R54 | plu | ["CFP","EHP","CEP","FHP","CHP","EFP"] | ["plu","PCEFH"] |
| R55 | plu | ["CFP","HPR","CHP","FPR","CPR","FHP"] | ["plu","PCFHR"] |
| R56 | plu | ["EHP","FPR","EFP","HPR","EPR","FHP"] | ["plu","PEFHR"] |
| R57 | plu | ["AER","CPR","ACR","EPR","APR","CER"] | ["plu","RACEP"] |
| R58 | plu | ["AFR","EPR","AER","FPR","APR","EFR"] | ["plu","RAEFP"] |
| R59 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R60 | plu | ["AFR","HRS","AHR","FRS","ARS","FHR"] | ["plu","RAFHS"] |
| R61 | plu | ["BER","CPR","BCR","EPR","BPR","CER"] | ["plu","RBCEP"] |
| R62 | plu | ["BFR","EPR","BER","FPR","BPR","EFR"] | ["plu","RBEFP"] |
| R63 | plu | ["BRS","EFR","BER","FRS","BFR","ERS"] | ["plu","RBEFS"] |
| R64 | plu | ["CFR","EHR","CER","FHR","CHR","EFR"] | ["plu","RCEFH"] |
| R65 | plu | ["CFR","EPR","CER","FPR","CPR","EFR"] | ["plu","RCEFP"] |
| R66 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R67 | plu | ["CRS","EHR","CER","HRS","CHR","ERS"] | ["plu","RCEHS"] |
| R68 | plu | ["EFR","PRS","EPR","FRS","ERS","FPR"] | ["plu","REFPS"] |
| R69 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R70 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R71 | linear | [{"ACE":-1,"AEH":-1,"ACH":1,"CEH":1},"0"] | ["affine_quad","ACEH",-1] |
| R72 | linear | [{"ACE":-1,"AEP":-1,"ACP":1,"CEP":1},"0"] | ["affine_quad","ACEP",-1] |
| R73 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R74 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R75 | linear | [{"AEF":-1,"AFH":-1,"AEH":1,"EFH":1},"0"] | ["affine_quad","AEFH",-1] |
| R76 | linear | [{"AEF":1,"AFP":-1,"AEP":-1,"EFP":-1},"0"] | ["affine_quad","AEFP",1] |
| R77 | linear | [{"AEH":1,"AHP":-1,"AEP":-1,"EHP":-1},"0"] | ["affine_quad","AEHP",1] |
| R78 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R79 | linear | [{"AFH":1,"AHQ":-1,"AFQ":-1,"FHQ":-1},"0"] | ["affine_quad","AFHQ",1] |
| R80 | linear | [{"AFP":-1,"APR":-1,"AFR":1,"FPR":-1},"0"] | ["affine_quad","AFPR",1] |
| R81 | linear | [{"AHP":-1,"APR":-1,"AHR":1,"HPR":-1},"0"] | ["affine_quad","AHPR",1] |
| R82 | linear | [{"BCE":-1,"BEP":-1,"BCP":1,"CEP":1},"0"] | ["affine_quad","BCEP",-1] |
| R83 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R84 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R85 | linear | [{"BEF":1,"BFP":-1,"BEP":-1,"EFP":-1},"0"] | ["affine_quad","BEFP",1] |
| R86 | linear | [{"BEP":-1,"BPQ":-1,"BEQ":1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",-1] |
| R87 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R88 | linear | [{"CEH":-1,"CHP":-1,"CEP":1,"EHP":1},"0"] | ["affine_quad","CEHP",-1] |
| R89 | linear | [{"CEH":1,"CHQ":-1,"CEQ":-1,"EHQ":-1},"0"] | ["affine_quad","CEHQ",1] |
| R90 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R91 | linear | [{"CFP":-1,"CPR":1,"CFR":-1,"FPR":1},"0"] | ["affine_quad","CFPR",-1] |
| R92 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R93 | linear | [{"EFH":1,"EHP":1,"EFP":-1,"FHP":-1},"0"] | ["affine_quad","EFHP",1] |
| R94 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R95 | linear | [{"EFP":1,"EPR":1,"EFR":-1,"FPR":-1},"0"] | ["affine_quad","EFPR",1] |
| R96 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R97 | linear | [{"EHP":1,"EPQ":-1,"EHQ":-1,"HPQ":-1},"0"] | ["affine_quad","EHPQ",1] |
| R98 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R99 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R100 | quad | ["CEH","CER","93/125"] | ["quad","CREH","QS"] |
| R101 | bary | [["AES",-1],[["ACE",-1],null,["AER",-1]],11,[3,3,3]] | ["side_pair_weights","AE","S","CER","3/11"] |
| R102 | bary | [["AFS",-1],[["ACF",-1],["AEF",-1],["AFR",-1]],11,[3,3,3]] | ["side_pair_weights","AF","S","CER","3/11"] |
| R103 | bary | [["ARS",1],[["ACR",-1],["AER",1],null],11,[3,3,3]] | ["side_pair_weights","AR","S","CER","3/11"] |
| R104 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R105 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R106 | bary | [["EFS",1],[["CEF",1],null,["EFR",1]],11,[3,3,3]] | ["side_pair_weights","EF","S","CER","3/11"] |
| R107 | linear | [{"EFS":11,"CEF":-3,"EFR":-3},"0"] | ["barycentric","EF","S","CER","lower"] |
| R108 | bary | [["EPS",1],[["CEP",1],null,["EPR",1]],11,[3,3,3]] | ["side_pair_weights","EP","S","CER","3/11"] |
| R109 | bary | [["EQS",1],[["CEQ",1],null,["EQR",1]],11,[3,3,3]] | ["side_pair_weights","EQ","S","CER","3/11"] |
| R110 | bary | [["FRS",1],[["CFR",-1],["EFR",1],null],11,[3,3,3]] | ["side_pair_weights","FR","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s5 | R0 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s8 | R1 | sub | hi | EFP | 570997/1000000 | hi_AEF,lo_AEP,lo_AFP |
| s10 | R2 | sub | hi | EHP | 316233/500000 | hi_AEH,lo_AEP,lo_AHP |
| s30 | R4 | sub | hi | BHP | 3263/10000 | hi_BCH,lo_BCP,lo_CHP |
| s45 | R6 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s49 | R7 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s57 | R10 | sumlo | lo | ABE | 145169/1000000 | lo_ABC,lo_AEH,lo_ABH,lo_ACE,hi_ACH |
| s62 | R12 | sumlo | lo | ACE | 173963/1000000 | lo_ACH,lo_AER,lo_ACR,lo_AEH,hi_AHR |
| s64 | R13 | sumlo | lo | AHP | 7471/62500 | lo_AEH,lo_AFP,lo_AEP,lo_AFH,hi_AEF |
| s65 | R13 | diffhi | hi | AFP | 30967/100000 | hi_AEF,s5,lo_AEP,lo_AFH,lo_AEH |
| s74 | R20 | sumlo | lo | CFP | 6433/62500 | lo_ACF,lo_CHP,lo_ACP,lo_CFH,hi_ACH |
| s75 | R21 | sumlo | lo | CFR | 186137/1000000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_BCE |
| s76 | R22 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s77 | R22 | sumlo | lo | CHR | 44673/200000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_BCE |
| s81 | R24 | sumlo | lo | BEP | 64171/500000 | s57,lo_EHP,lo_AEP,lo_BEH,hi_AEH |
| s87 | R26 | sumlo | lo | AES | 1981/15625 | s62,lo_ERS,lo_AER,lo_CES,hi_CER |
| s94 | R27 | sumlo | lo | CEF | 95803/500000 | s76,lo_EFR,lo_BEF,lo_CER,hi_BER |
| s97 | R29 | sumlo | lo | CEQ | 95803/500000 | s76,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s103 | R30 | sumlo | lo | EFS | 131723/1000000 | s94,lo_ERS,lo_CES,lo_EFR,hi_CER |
| s106 | R32 | sumlo | lo | EQS | 131723/1000000 | s97,lo_ERS,lo_CES,lo_EQR,hi_CER |
| s110 | R33 | sumlo | lo | FHR | 8569/62500 | lo_AFH,lo_EFR,lo_AFR,lo_EFH,hi_AEF |
| s111 | R34 | sumlo | lo | FPR | 53607/500000 | s74,s110,s75,lo_FHP,hi_CFH |
| s113 | R35 | sumlo | lo | FHR | 76893/500000 | lo_EFH,s111,lo_EFR,lo_FHP,s8 |
| s118 | R38 | sumlo | lo | AHQ | 957/8000 | lo_AEH,lo_HPQ,s64,lo_EHQ,s10 |
| s122 | R40 | sumlo | lo | HPR | 3887/31250 | lo_CHP,s113,s77,lo_FHP,hi_CFH |
| s124 | R43 | sumlo | lo | AFP | 28397/250000 | lo_ABP,lo_FHP,s64,lo_BFP,s30 |
| s125 | R43 | sumlo | lo | BHP | 14961/125000 | lo_ABP,lo_FHP,s64,lo_BFP,s65 |
| s127 | R45 | sumlo | lo | CFP | 459/4000 | lo_ACP,lo_FHP,s124,lo_CHP,s5 |
| s132 | R51 | sumlo | lo | EFP | 23657/125000 | s81,lo_FHP,lo_BFP,lo_EHP,s30 |
| s134 | R53 | sumlo | lo | EPQ | 58049/500000 | s81,lo_HPQ,lo_BPQ,lo_EHP,s30 |
| s137 | R56 | sumlo | lo | FPR | 32059/200000 | s132,s122,lo_EPR,lo_FHP,s10 |
| s150 | R70 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s45 |
| s153 | R73 | linear | lo | ACF | 160669/500000 | lo_ACP,s124,s127 |
| s157 | R75 | linear | hi | AEF | 181157/250000 | hi_AEH,lo_AFH,hi_EFH |
| s158 | R76 | linear | lo | AEF | 98961/250000 | lo_AEP,s124,s132 |
| s162 | R77 | linear | hi | EHP | 60593/100000 | hi_AEH,lo_AEP,s64 |
| s168 | R78 | linear | lo | AER | 19549/62500 | s87,lo_ARS,lo_ERS |
| s169 | R79 | linear | lo | AFH | 489/1600 | lo_AFQ,s118,lo_FHQ |
| s172 | R80 | linear | lo | AFR | 366883/1000000 | s124,lo_APR,s137 |
| s185 | R84 | linear | lo | BCH | 38211/125000 | lo_BCP,s125,lo_CHP |
| s189 | R85 | linear | lo | BEF | 205299/500000 | s81,lo_BFP,s132 |
| s192 | R86 | linear | lo | BEQ | 2109/6250 | s81,lo_BPQ,s134 |
| s205 | R93 | linear | hi | EFP | 512093/1000000 | hi_EFH,s162,lo_FHP |
| s207 | R96 | linear | lo | EFR | 317723/1000000 | s103,lo_ERS,lo_FRS |
| s208 | R97 | linear | lo | EHP | 151049/500000 | lo_EHQ,s134,lo_HPQ |
| s211 | R98 | linear | lo | EPR | 76067/250000 | s150,lo_ERS,lo_PRS |
| s212 | R99 | linear | lo | EQR | 317723/1000000 | s106,lo_ERS,lo_QRS |
| s213 | R100 | quad | lo | CEH | 411739/1000000 | hi_CER |
| s217 | R101 | bary_hi | lo | AES | 132749/1000000 | s62,s168 |
| s218 | R102 | bary_hi | lo | AFS | 354079/1000000 | s153,s158,s172 |
| s232 | R104 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s234 | R105 | bary_lo | hi | CHS | 300283/500000 | hi_CEH,hi_CHR |
| s238 | R106 | bary_lo | lo | EFS | 138907/1000000 | s94,s207 |
| s240 | R109 | bary_lo | lo | EQS | 138907/1000000 | s97,s212 |
| s253 | R3 | sum | lo | AER | 318749/1000000 | s217,lo_ARS,lo_ERS |
| s256 | R7 | sum | lo | EFR | 324907/1000000 | s238,lo_ERS,lo_FRS |
| s258 | R9 | sum | lo | EQR | 324907/1000000 | s240,lo_ERS,lo_QRS |
| s259 | R10 | sumlo | lo | ABE | 20013/125000 | lo_ABC,lo_AEH,lo_ABH,s62,hi_ACH |
| s265 | R13 | sumlo | lo | AHP | 148011/1000000 | lo_AEH,s124,lo_AEP,s169,s157 |
| s266 | R13 | diffhi | hi | AFP | 145631/500000 | s157,s5,lo_AEP,s169,lo_AEH |
| s275 | R22 | sumlo | lo | BCE | 199507/1000000 | s185,lo_CER,lo_BCR,s213,hi_CHR |
| s276 | R22 | sumlo | lo | CHR | 265957/1000000 | s185,lo_CER,lo_BCR,s213,hi_BCE |
| s279 | R23 | sumlo | lo | ACE | 206369/1000000 | s259,s213,lo_AEH,s275,hi_BEH |
| s280 | R24 | sumlo | lo | BEP | 4311/31250 | s259,s208,lo_AEP,lo_BEH,hi_AEH |
| s283 | R26 | sumlo | lo | AES | 146981/1000000 | s279,lo_ERS,s253,lo_CES,hi_CER |
| s284 | R27 | sumlo | lo | CEF | 137933/500000 | s275,s256,s189,lo_CER,hi_BER |
| s286 | R28 | sumlo | lo | CEP | 38137/250000 | s275,s211,s280,lo_CER,hi_BER |
| s287 | R29 | sumlo | lo | CEQ | 61119/250000 | s275,s258,s192,lo_CER,hi_BER |
| s289 | R30 | sumlo | lo | EFS | 42039/250000 | s284,lo_ERS,lo_CES,s256,hi_CER |
| s291 | R31 | sumlo | lo | EPS | 127863/1000000 | s286,lo_ERS,lo_CES,s211,hi_CER |
| s292 | R32 | sumlo | lo | EQS | 15937/100000 | s287,lo_ERS,lo_CES,s258,hi_CER |
| s297 | R35 | sumlo | lo | FHR | 206127/1000000 | lo_EFH,s137,s256,lo_FHP,s205 |
| s300 | R38 | sumlo | lo | AHQ | 64617/500000 | lo_AEH,lo_HPQ,s265,lo_EHQ,s162 |
| s303 | R40 | sumlo | lo | HPR | 151577/1000000 | lo_CHP,s297,s276,lo_FHP,hi_CFH |
| s305 | R43 | sumlo | lo | AFP | 15213/125000 | lo_ABP,lo_FHP,s265,lo_BFP,s30 |
| s306 | R43 | sumlo | lo | BHP | 17043/125000 | lo_ABP,lo_FHP,s265,lo_BFP,s266 |
| s310 | R48 | sumlo | lo | APR | 101423/1000000 | lo_AEP,s137,s305,s211,s205 |
| s311 | R51 | sumlo | lo | EFP | 25507/125000 | s280,lo_FHP,lo_BFP,s208,s30 |
| s314 | R53 | sumlo | lo | EPQ | 6271/50000 | s280,lo_HPQ,lo_BPQ,s208,s30 |
| s317 | R56 | sumlo | lo | FPR | 38229/200000 | s311,s303,s211,lo_FHP,s162 |
| s322 | R69 | sumlo | lo | ARS | 12337/125000 | s283,lo_FRS,s218,lo_ERS,s49 |
| s328 | R74 | linear | lo | ACH | 334011/1000000 | lo_ACP,s265,lo_CHP |
| s331 | R75 | linear | hi | AEF | 698003/1000000 | hi_AEH,s169,hi_EFH |
| s334 | R76 | linear | hi | EFP | 483299/1000000 | s331,lo_AEP,s305 |
| s336 | R77 | linear | hi | EHP | 115491/200000 | hi_AEH,lo_AEP,s265 |
| s341 | R78 | linear | lo | AER | 338677/1000000 | s283,s322,lo_ERS |
| s343 | R79 | linear | lo | AFH | 157617/500000 | lo_AFQ,s300,lo_FHQ |
| s347 | R80 | linear | lo | AFR | 6473/15625 | s305,s310,s317 |
| s350 | R81 | linear | lo | AHR | 401011/1000000 | s265,s310,s303 |
| s360 | R84 | linear | lo | BCH | 40293/125000 | lo_BCP,s306,lo_CHP |
| s364 | R85 | linear | lo | BEF | 6797/15625 | s280,lo_BFP,s311 |
| s366 | R86 | linear | lo | BEQ | 89093/250000 | s280,lo_BPQ,s314 |
| s373 | R89 | linear | lo | CEH | 107619/250000 | s287,lo_CHQ,lo_EHQ |
| s379 | R96 | linear | lo | EFR | 88539/250000 | s289,lo_ERS,lo_FRS |
| s380 | R97 | linear | lo | EHP | 15571/50000 | lo_EHQ,s314,lo_HPQ |
| s384 | R98 | linear | lo | EPR | 313863/1000000 | s291,lo_ERS,lo_PRS |
| s385 | R99 | linear | lo | EQR | 34537/100000 | s292,lo_ERS,lo_QRS |
| s388 | R101 | bary_hi | lo | AES | 18581/125000 | s279,s341 |
| s405 | R106 | bary_lo | lo | EFS | 10739/62500 | s284,s379 |
| s407 | R109 | bary_lo | lo | EQS | 160867/1000000 | s287,s385 |
| s420 | R3 | sum | lo | AER | 42543/125000 | s388,s322,lo_ERS |
| s421 | R7 | sum | lo | EFR | 5591/15625 | s405,lo_ERS,lo_FRS |
| s423 | R9 | sum | lo | EQR | 346867/1000000 | s407,lo_ERS,lo_QRS |
| s424 | R10 | sumlo | lo | ABE | 166081/1000000 | lo_ABC,lo_AEH,lo_ABH,s279,hi_ACH |
| s430 | R13 | sumlo | lo | AHP | 81503/500000 | lo_AEH,s305,lo_AEP,s343,s331 |
| s431 | R13 | diffhi | hi | AFP | 34721/125000 | s331,s5,lo_AEP,s343,lo_AEH |
| s438 | R18 | sumlo | lo | ACR | 54457/500000 | lo_ABC,s276,s328,lo_BCR,hi_BCH |
| s440 | R19 | sumlo | lo | ACE | 226137/1000000 | s328,lo_CER,s438,s373,hi_CHR |
| s442 | R22 | sumlo | lo | BCE | 209823/1000000 | s360,lo_CER,lo_BCR,s373,hi_CHR |
| s443 | R22 | sumlo | lo | CHR | 69927/250000 | s360,lo_CER,lo_BCR,s373,hi_BCE |
| s445 | R24 | sumlo | lo | BEP | 142049/1000000 | s424,s380,lo_AEP,lo_BEH,hi_AEH |
| s446 | R26 | sumlo | lo | AES | 79279/500000 | s440,lo_ERS,s420,lo_CES,hi_CER |
| s447 | R27 | sumlo | lo | CEF | 75529/250000 | s442,s421,s364,lo_CER,hi_BER |
| s449 | R28 | sumlo | lo | CEP | 162229/1000000 | s442,s384,s445,lo_CER,hi_BER |
| s450 | R29 | sumlo | lo | CEQ | 6621/25000 | s442,s423,s366,lo_CER,hi_BER |
| s452 | R30 | sumlo | lo | EFS | 184717/1000000 | s447,lo_ERS,lo_CES,s421,hi_CER |
| s454 | R31 | sumlo | lo | EPS | 66629/500000 | s449,lo_ERS,lo_CES,s384,hi_CER |
| s455 | R32 | sumlo | lo | EQS | 171217/1000000 | s450,lo_ERS,lo_CES,s423,hi_CER |
| s462 | R35 | sumlo | lo | EFP | 213717/1000000 | lo_EFH,s317,s421,lo_FHP,hi_FHR |
| s465 | R37 | sumlo | lo | HPR | 164403/1000000 | s430,s443,s350,lo_CHP,hi_ACH |
| s466 | R38 | sumlo | lo | AHQ | 69011/500000 | lo_AEH,lo_HPQ,s430,lo_EHQ,s336 |
| s469 | R43 | sumlo | lo | AFP | 125977/1000000 | lo_ABP,lo_FHP,s430,lo_BFP,s30 |
| s470 | R43 | sumlo | lo | BHP | 36997/250000 | lo_ABP,lo_FHP,s430,lo_BFP,s431 |
| s473 | R48 | sumlo | lo | APR | 118593/1000000 | lo_AEP,s317,s469,s384,s334 |
| s476 | R53 | sumlo | lo | EPQ | 32311/250000 | s445,lo_HPQ,lo_BPQ,s380,s30 |
| s479 | R56 | sumlo | lo | FPR | 21249/100000 | s462,s465,s384,lo_FHP,s336 |
| s481 | R59 | sumlo | lo | ARS | 13329/125000 | s420,lo_FRS,s347,lo_ERS,hi_EFR |
| s488 | R74 | linear | lo | ACH | 174503/500000 | lo_ACP,s430,lo_CHP |
| s491 | R75 | linear | hi | AEF | 344197/500000 | hi_AEH,s343,hi_EFH |
| s496 | R77 | linear | hi | EHP | 28123/50000 | hi_AEH,lo_AEP,s430 |
| s499 | R78 | linear | lo | AER | 35819/100000 | s446,s481,lo_ERS |
| s501 | R79 | linear | lo | AFH | 162011/500000 | lo_AFQ,s466,lo_FHQ |
| s505 | R80 | linear | lo | AFR | 22853/50000 | s469,s473,s479 |
| s508 | R81 | linear | lo | AHR | 223001/500000 | s430,s473,s465 |
| s518 | R84 | linear | lo | BCH | 83497/250000 | lo_BCP,s470,lo_CHP |
| s523 | R85 | linear | lo | BEF | 224383/500000 | s445,lo_BFP,s462 |
| s525 | R86 | linear | lo | BEQ | 364293/1000000 | s445,lo_BPQ,s476 |
| s532 | R89 | linear | lo | CEH | 11271/25000 | s450,lo_CHQ,lo_EHQ |
| s537 | R93 | linear | hi | EFP | 468623/1000000 | hi_EFH,s496,lo_FHP |
| s539 | R96 | linear | lo | EFR | 370717/1000000 | s452,lo_ERS,lo_FRS |
| s540 | R97 | linear | lo | EHP | 78811/250000 | lo_EHQ,s476,lo_HPQ |
| s545 | R98 | linear | lo | EPR | 159629/500000 | s454,lo_ERS,lo_PRS |
| s546 | R99 | linear | lo | EQR | 357217/1000000 | s455,lo_ERS,lo_QRS |
| s550 | R101 | bary_hi | lo | AES | 159361/1000000 | s440,s499 |
| s581 | R3 | sum | lo | AER | 358993/1000000 | s550,s481,lo_ERS |
| s583 | R10 | sumlo | lo | ABE | 2652/15625 | lo_ABC,lo_AEH,lo_ABH,s440,hi_ACH |
| s588 | R12 | sumlo | lo | ACE | 245431/1000000 | s488,s581,s438,lo_AEH,hi_AHR |
| s590 | R13 | sumlo | lo | AHP | 170777/1000000 | lo_AEH,s469,lo_AEP,s501,s491 |
| s591 | R13 | diffhi | hi | AFP | 54437/200000 | s491,s5,lo_AEP,s501,lo_AEH |
| s595 | R18 | sumlo | lo | ACR | 114133/1000000 | lo_ABC,s443,s488,lo_BCR,hi_BCH |
| s597 | R22 | sumlo | lo | BCE | 349/1600 | s518,lo_CER,lo_BCR,s532,hi_CHR |
| s598 | R22 | sumlo | lo | CHR | 11631/40000 | s518,lo_CER,lo_BCR,s532,hi_BCE |
| s600 | R24 | sumlo | lo | BEP | 14423/100000 | s583,s540,lo_AEP,lo_BEH,hi_AEH |
| s601 | R26 | sumlo | lo | AES | 84589/500000 | s588,lo_ERS,s581,lo_CES,hi_CER |
| s602 | R27 | sumlo | lo | CEF | 316913/1000000 | s597,s539,s523,lo_CER,hi_BER |
| s603 | R28 | sumlo | lo | CEP | 84491/500000 | s597,s545,s600,lo_CER,hi_BER |
| s604 | R29 | sumlo | lo | CEQ | 276139/1000000 | s597,s546,s525,lo_CER,hi_BER |
| s606 | R30 | sumlo | lo | EFS | 48117/250000 | s602,lo_ERS,lo_CES,s539,hi_CER |
| s608 | R31 | sumlo | lo | EPS | 68329/500000 | s603,lo_ERS,lo_CES,s545,hi_CER |
| s609 | R32 | sumlo | lo | EQS | 44319/250000 | s604,lo_ERS,lo_CES,s546,hi_CER |
| s614 | R35 | sumlo | lo | EFP | 223861/1000000 | lo_EFH,s479,s539,lo_FHP,hi_FHR |
| s615 | R35 | sumlo | lo | FHR | 262879/1000000 | lo_EFH,s479,s539,lo_FHP,s537 |
| s617 | R37 | sumlo | lo | HPR | 90381/500000 | s590,s598,s508,lo_CHP,hi_ACH |
| s618 | R38 | sumlo | lo | AHQ | 71493/500000 | lo_AEH,lo_HPQ,s590,lo_EHQ,s496 |
| s621 | R43 | sumlo | lo | AFP | 2003/15625 | lo_ABP,lo_FHP,s590,lo_BFP,s30 |
| s622 | R43 | sumlo | lo | BHP | 153679/1000000 | lo_ABP,lo_FHP,s590,lo_BFP,s591 |
| s625 | R48 | sumlo | lo | APR | 64751/500000 | lo_AEP,s479,s621,s545,s537 |
| s628 | R53 | sumlo | lo | EPQ | 32739/250000 | s600,lo_HPQ,lo_BPQ,s540,s30 |
| s630 | R54 | sumlo | lo | CFP | 24167/200000 | s603,lo_FHP,lo_CHP,s614,s496 |
| s632 | R56 | sumlo | lo | FPR | 230307/1000000 | s614,s617,s545,lo_FHP,s496 |
| s635 | R59 | sumlo | lo | ARS | 57657/500000 | s581,lo_FRS,s505,lo_ERS,hi_EFR |
| s642 | R73 | linear | lo | ACF | 342027/1000000 | lo_ACP,s621,s630 |
| s643 | R74 | linear | lo | ACH | 356777/1000000 | lo_ACP,s590,lo_CHP |
| s646 | R75 | linear | hi | AEF | 339803/500000 | hi_AEH,s501,hi_EFH |
| s649 | R76 | linear | hi | EFP | 229207/500000 | s646,lo_AEP,s621 |
| s650 | R77 | linear | hi | EHP | 554689/1000000 | hi_AEH,lo_AEP,s590 |
| s653 | R78 | linear | lo | AER | 94373/250000 | s601,s635,lo_ERS |
| s655 | R79 | linear | lo | AFH | 164493/500000 | lo_AFQ,s618,lo_FHQ |
| s659 | R80 | linear | lo | AFR | 488001/1000000 | s621,s625,s632 |
| s662 | R81 | linear | lo | AHR | 481041/1000000 | s590,s625,s617 |
| s670 | R84 | linear | lo | BCH | 339679/1000000 | lo_BCP,s622,lo_CHP |
| s675 | R85 | linear | lo | BEF | 461091/1000000 | s600,lo_BFP,s614 |
| s677 | R86 | linear | lo | BEQ | 184093/500000 | s600,lo_BPQ,s628 |
| s684 | R89 | linear | lo | CEH | 462139/1000000 | s604,lo_CHQ,lo_EHQ |
| s690 | R93 | linear | lo | EHP | 158849/500000 | hi_EFH,s614,lo_FHP |
| s693 | R94 | linear | hi | EFR | 327827/500000 | hi_EFH,hi_EHR,s615 |
| s694 | R94 | linear | hi | FHR | 68477/125000 | hi_EFH,s539,hi_EHR |
| s696 | R96 | linear | lo | EFR | 94617/250000 | s606,lo_ERS,lo_FRS |
| s701 | R98 | linear | lo | EPR | 161329/500000 | s608,lo_ERS,lo_PRS |
| s702 | R99 | linear | lo | EQR | 90819/250000 | s609,lo_ERS,lo_QRS |
| s706 | R101 | bary_hi | lo | AES | 5309/31250 | s588,s653 |
| s737 | R3 | sum | lo | AER | 189101/500000 | s706,s635,lo_ERS |
| s738 | R10 | sumlo | lo | ABE | 173287/1000000 | lo_ABC,lo_AEH,lo_ABH,s588,hi_ACH |
| s743 | R11 | sumlo | lo | ACP | 93099/1000000 | s588,s621,s642,lo_AEP,s646 |
| s744 | R12 | sumlo | lo | ACE | 130819/500000 | s643,s737,s595,lo_AEH,hi_AHR |
| s746 | R13 | sumlo | lo | AHP | 87963/500000 | lo_AEH,s621,lo_AEP,s655,s646 |
| s747 | R13 | diffhi | hi | AFP | 26749/100000 | s646,s5,lo_AEP,s655,lo_AEH |
| s748 | R14 | sumlo | lo | APR | 138119/1000000 | lo_AEP,s659,s737,s621,s646 |
| s750 | R18 | sumlo | lo | ACR | 7347/62500 | lo_ABC,s598,s643,lo_BCR,hi_BCH |
| s752 | R22 | sumlo | lo | BCE | 44477/200000 | s670,lo_CER,lo_BCR,s684,hi_CHR |
| s753 | R22 | sumlo | lo | CHR | 148227/500000 | s670,lo_CER,lo_BCR,s684,hi_BCE |
| s755 | R24 | sumlo | lo | BEP | 3653/25000 | s738,s690,lo_AEP,lo_BEH,hi_AEH |
| s756 | R26 | sumlo | lo | AES | 179091/1000000 | s744,lo_ERS,s737,lo_CES,hi_CER |
| s757 | R27 | sumlo | lo | CEF | 327281/1000000 | s752,s696,s675,lo_CER,hi_BER |
| s758 | R28 | sumlo | lo | CEP | 173047/1000000 | s752,s701,s755,lo_CER,hi_BER |
| s759 | R29 | sumlo | lo | CEQ | 141111/500000 | s752,s702,s677,lo_CER,hi_BER |
| s761 | R30 | sumlo | lo | EFS | 197539/1000000 | s757,lo_ERS,lo_CES,s696,hi_CER |
| s763 | R31 | sumlo | lo | EPS | 34687/250000 | s758,lo_ERS,lo_CES,s701,hi_CER |
| s764 | R32 | sumlo | lo | EQS | 7227/40000 | s759,lo_ERS,lo_CES,s702,hi_CER |
| s769 | R35 | sumlo | lo | EFP | 231849/1000000 | lo_EFH,s632,s696,lo_FHP,s694 |
| s770 | R35 | sumlo | lo | FHR | 138533/500000 | lo_EFH,s632,s696,lo_FHP,s649 |
| s772 | R37 | sumlo | lo | HPR | 12011/62500 | s746,s753,s662,lo_CHP,hi_ACH |
| s773 | R38 | sumlo | lo | AHQ | 145853/1000000 | lo_AEH,lo_HPQ,s746,lo_EHQ,s650 |
| s776 | R43 | sumlo | lo | AFP | 6483/50000 | lo_ABP,lo_FHP,s746,lo_BFP,s30 |
| s777 | R43 | sumlo | lo | BHP | 158167/1000000 | lo_ABP,lo_FHP,s746,lo_BFP,s747 |
| s781 | R53 | sumlo | lo | EPQ | 66097/500000 | s755,lo_HPQ,lo_BPQ,s690,s30 |
| s783 | R54 | sumlo | lo | CFP | 15739/125000 | s758,lo_FHP,lo_CHP,s769,s650 |
| s785 | R56 | sumlo | lo | FPR | 242617/1000000 | s769,s772,s701,lo_FHP,s650 |
| s789 | R59 | sumlo | lo | ARS | 7679/62500 | s737,lo_FRS,s659,lo_ERS,s693 |
| s797 | R73 | linear | lo | ACF | 348671/1000000 | s743,s776,s783 |
| s798 | R74 | linear | lo | ACH | 14481/40000 | s743,s746,lo_CHP |
| s799 | R74 | linear | hi | AHP | 79519/250000 | hi_ACH,s743,lo_CHP |
| s803 | R75 | linear | hi | AEF | 337321/500000 | hi_AEH,s655,hi_EFH |
| s806 | R76 | linear | hi | EFP | 225991/500000 | s803,lo_AEP,s776 |
| s807 | R77 | linear | hi | EHP | 27477/50000 | hi_AEH,lo_AEP,s746 |
| s810 | R78 | linear | lo | AER | 78991/200000 | s756,s789,lo_ERS |
| s812 | R79 | linear | lo | AFH | 331853/1000000 | lo_AFQ,s773,lo_FHQ |
| s816 | R80 | linear | lo | AFR | 127599/250000 | s776,s748,s785 |
| s819 | R81 | linear | lo | AHR | 506221/1000000 | s746,s748,s772 |
| s826 | R84 | linear | lo | BCH | 344167/1000000 | lo_BCP,s777,lo_CHP |
| s831 | R85 | linear | lo | BEF | 470969/1000000 | s755,lo_BFP,s769 |
| s833 | R86 | linear | lo | BEQ | 185657/500000 | s755,lo_BPQ,s781 |
| s840 | R89 | linear | lo | CEH | 234111/500000 | s759,lo_CHQ,lo_EHQ |
| s846 | R93 | linear | lo | EHP | 162843/500000 | hi_EFH,s769,lo_FHP |
| s849 | R94 | linear | hi | EFR | 641467/1000000 | hi_EFH,hi_EHR,s770 |
| s850 | R94 | linear | hi | FHR | 108013/200000 | hi_EFH,s696,hi_EHR |
| s852 | R96 | linear | lo | EFR | 383539/1000000 | s761,lo_ERS,lo_FRS |
| s857 | R98 | linear | lo | EPR | 81187/250000 | s763,lo_ERS,lo_PRS |
| s858 | R99 | linear | lo | EQR | 14667/40000 | s764,lo_ERS,lo_QRS |
| s894 | R10 | sumlo | lo | ABE | 44069/250000 | lo_ABC,lo_AEH,lo_ABH,s744,hi_ACH |
| s899 | R11 | sumlo | lo | ACP | 98349/1000000 | s744,s776,s797,lo_AEP,s803 |
| s901 | R12 | sumlo | lo | ACE | 68593/250000 | s798,s810,s750,lo_AEH,hi_AHR |
| s903 | R13 | sumlo | lo | AHP | 89563/500000 | lo_AEH,s776,lo_AEP,s812,s803 |
| s904 | R13 | diffhi | hi | AFP | 132367/500000 | s803,s799,lo_AEP,s812,lo_AEH |
| s905 | R14 | sumlo | lo | APR | 29253/200000 | lo_AEP,s816,s810,s776,s803 |
| s907 | R18 | sumlo | lo | ACR | 7471/62500 | lo_ABC,s753,s798,lo_BCR,hi_BCH |
| s908 | R22 | sumlo | lo | BCE | 225319/1000000 | s826,lo_CER,lo_BCR,s840,hi_CHR |
| s909 | R22 | sumlo | lo | CHR | 150183/500000 | s826,lo_CER,lo_BCR,s840,hi_BCE |
| s911 | R24 | sumlo | lo | BEP | 149001/1000000 | s894,s846,lo_AEP,lo_BEH,hi_AEH |
| s912 | R26 | sumlo | lo | AES | 37469/200000 | s901,lo_ERS,s810,lo_CES,hi_CER |
| s913 | R27 | sumlo | lo | CEF | 66997/200000 | s908,s852,s831,lo_CER,hi_BER |
| s914 | R28 | sumlo | lo | CEP | 11029/62500 | s908,s857,s911,lo_CER,hi_BER |
| s915 | R29 | sumlo | lo | CEQ | 286381/1000000 | s908,s858,s833,lo_CER,hi_BER |
| s917 | R30 | sumlo | lo | EFS | 40223/200000 | s913,lo_ERS,lo_CES,s852,hi_CER |
| s919 | R31 | sumlo | lo | EPS | 140289/1000000 | s914,lo_ERS,lo_CES,s857,hi_CER |
| s924 | R35 | sumlo | lo | EFP | 59979/250000 | lo_EFH,s785,s852,lo_FHP,s850 |
| s925 | R35 | sumlo | lo | FHR | 17917/62500 | lo_EFH,s785,s852,lo_FHP,s806 |
| s927 | R37 | sumlo | lo | HPR | 200093/1000000 | s903,s909,s819,lo_CHP,hi_ACH |
| s928 | R38 | sumlo | lo | AHQ | 147761/1000000 | lo_AEH,lo_HPQ,s903,lo_EHQ,s807 |
| s931 | R43 | sumlo | lo | AFP | 32643/250000 | lo_ABP,lo_FHP,s903,lo_BFP,s30 |
| s932 | R43 | sumlo | lo | BHP | 160937/1000000 | lo_ABP,lo_FHP,s903,lo_BFP,s904 |
| s938 | R54 | sumlo | lo | CFP | 130191/1000000 | s914,lo_FHP,lo_CHP,s924,s807 |
| s940 | R56 | sumlo | lo | FPR | 252229/1000000 | s924,s927,s857,lo_FHP,s807 |
| s944 | R59 | sumlo | lo | ARS | 131257/1000000 | s810,lo_FRS,s816,lo_ERS,s849 |
| s953 | R73 | linear | lo | ACF | 44889/125000 | s899,s931,s938 |
| s954 | R74 | linear | lo | ACH | 14819/40000 | s899,s903,lo_CHP |
| s955 | R74 | linear | hi | AHP | 156413/500000 | hi_ACH,s899,lo_CHP |
| s959 | R75 | linear | hi | AEF | 26871/40000 | hi_AEH,s812,hi_EFH |
| s962 | R76 | linear | hi | EFP | 448203/1000000 | s959,lo_AEP,s931 |
| s963 | R77 | linear | hi | EHP | 27317/50000 | hi_AEH,lo_AEP,s903 |
| s966 | R78 | linear | lo | AER | 205801/500000 | s912,s944,lo_ERS |
| s968 | R79 | linear | lo | AFH | 333761/1000000 | lo_AFQ,s928,lo_FHQ |
| s972 | R80 | linear | lo | AFR | 264533/500000 | s931,s905,s940 |
| s975 | R81 | linear | lo | AHR | 131371/250000 | s903,s905,s927 |
| s982 | R84 | linear | lo | BCH | 346937/1000000 | lo_BCP,s932,lo_CHP |
| s987 | R85 | linear | lo | BEF | 481917/1000000 | s911,lo_BFP,s924 |
| s997 | R89 | linear | lo | CEH | 472381/1000000 | s915,lo_CHQ,lo_EHQ |
| s1003 | R93 | linear | lo | EHP | 333753/1000000 | hi_EFH,s924,lo_FHP |
| s1006 | R94 | linear | hi | EFR | 631861/1000000 | hi_EFH,hi_EHR,s925 |
| s1007 | R94 | linear | hi | FHR | 267497/500000 | hi_EFH,s852,hi_EHR |
| s1009 | R96 | linear | lo | EFR | 77423/200000 | s917,lo_ERS,lo_FRS |
| s1014 | R98 | linear | lo | EPR | 326289/1000000 | s919,lo_ERS,lo_PRS |
| s1050 | R10 | sumlo | lo | ABE | 1429/8000 | lo_ABC,lo_AEH,lo_ABH,s901,hi_ACH |
| s1055 | R11 | sumlo | lo | ACP | 25761/250000 | s901,s931,s953,lo_AEP,s959 |
| s1057 | R12 | sumlo | lo | ACE | 287667/1000000 | s954,s966,s907,lo_AEH,hi_AHR |
| s1059 | R13 | sumlo | lo | AHP | 181097/1000000 | lo_AEH,s931,lo_AEP,s968,s959 |
| s1060 | R13 | diffhi | hi | AFP | 258083/1000000 | s959,s955,lo_AEP,s968,lo_AEH |
| s1061 | R14 | sumlo | lo | APR | 76623/500000 | lo_AEP,s972,s966,s931,s959 |
| s1064 | R18 | sumlo | lo | ACR | 6089/50000 | lo_ABC,s909,s954,lo_BCR,hi_BCH |
| s1065 | R22 | sumlo | lo | BCE | 28399/125000 | s982,lo_CER,lo_BCR,s997,hi_CHR |
| s1066 | R22 | sumlo | lo | CHR | 151431/500000 | s982,lo_CER,lo_BCR,s997,hi_BCE |
| s1068 | R24 | sumlo | lo | BEP | 9481/62500 | s1050,s1003,lo_AEP,lo_BEH,hi_AEH |
| s1069 | R26 | sumlo | lo | AES | 97863/500000 | s1057,lo_ERS,s966,lo_CES,hi_CER |
| s1070 | R27 | sumlo | lo | CEF | 85509/250000 | s1065,s1009,s987,lo_CER,hi_BER |
| s1071 | R28 | sumlo | lo | CEP | 89547/500000 | s1065,s1014,s1068,lo_CER,hi_BER |
| s1074 | R30 | sumlo | lo | EFS | 20409/100000 | s1070,lo_ERS,lo_CES,s1009,hi_CER |
| s1076 | R31 | sumlo | lo | EPS | 141457/1000000 | s1071,lo_ERS,lo_CES,s1014,hi_CER |
| s1081 | R35 | sumlo | lo | EFP | 122863/500000 | lo_EFH,s940,s1009,lo_FHP,s1007 |
| s1082 | R35 | sumlo | lo | FHR | 293309/1000000 | lo_EFH,s940,s1009,lo_FHP,s962 |
| s1085 | R37 | sumlo | lo | HPR | 205717/1000000 | s1059,s1066,s975,lo_CHP,hi_ACH |
| s1087 | R38 | sumlo | lo | AHQ | 74481/500000 | lo_AEH,lo_HPQ,s1059,lo_EHQ,s963 |
| s1090 | R43 | sumlo | lo | AFP | 131133/1000000 | lo_ABP,lo_FHP,s1059,lo_BFP,s30 |
| s1091 | R43 | sumlo | lo | BHP | 33159/200000 | lo_ABP,lo_FHP,s1059,lo_BFP,s1060 |
| s1098 | R54 | sumlo | lo | CFP | 66643/500000 | s1071,lo_FHP,lo_CHP,s1081,s963 |
| s1100 | R56 | sumlo | lo | FPR | 259151/1000000 | s1081,s1085,s1014,lo_FHP,s963 |
| s1104 | R59 | sumlo | lo | ARS | 138451/1000000 | s966,lo_FRS,s972,lo_ERS,s1006 |
| s1109 | R71 | linear | lo | CEH | 119373/250000 | s1057,hi_ACH,lo_AEH |
| s1111 | R73 | linear | lo | ACF | 367463/1000000 | s1055,s1090,s1098 |
| s1112 | R74 | linear | lo | ACH | 377141/1000000 | s1055,s1059,lo_CHP |
| s1113 | R74 | linear | hi | AHP | 308131/1000000 | hi_ACH,s1055,lo_CHP |
| s1117 | R75 | linear | hi | AEF | 669867/1000000 | hi_AEH,s968,hi_EFH |
| s1120 | R76 | linear | hi | EFP | 222867/500000 | s1117,lo_AEP,s1090 |
| s1121 | R77 | linear | hi | EHP | 544369/1000000 | hi_AEH,lo_AEP,s1059 |
| s1124 | R78 | linear | lo | AER | 427177/1000000 | s1069,s1104,lo_ERS |
| s1126 | R79 | linear | lo | AFH | 167481/500000 | lo_AFQ,s1087,lo_FHQ |
| s1130 | R80 | linear | lo | AFR | 54353/100000 | s1090,s1061,s1100 |
| s1132 | R81 | linear | lo | AHR | 27003/50000 | s1059,s1061,s1085 |
| s1139 | R84 | linear | lo | BCH | 70359/200000 | lo_BCP,s1091,lo_CHP |
| s1144 | R85 | linear | lo | BEF | 245211/500000 | s1068,lo_BFP,s1081 |
| s1160 | R93 | linear | lo | EHP | 339563/1000000 | hi_EFH,s1081,lo_FHP |
| s1163 | R94 | linear | hi | EFR | 78153/125000 | hi_EFH,hi_EHR,s1082 |
| s1164 | R94 | linear | hi | FHR | 265709/500000 | hi_EFH,s1009,hi_EHR |
| s1166 | R96 | linear | lo | EFR | 39009/100000 | s1074,lo_ERS,lo_FRS |
| s1171 | R98 | linear | lo | EPR | 327457/1000000 | s1076,lo_ERS,lo_PRS |
| s1208 | R10 | sumlo | lo | ABE | 90539/500000 | lo_ABC,lo_AEH,lo_ABH,s1057,hi_ACH |
| s1213 | R11 | sumlo | lo | ACP | 107329/1000000 | s1057,s1090,s1111,lo_AEP,s1117 |
| s1215 | R12 | sumlo | lo | ACE | 300099/1000000 | s1112,s1124,s1064,lo_AEH,hi_AHR |
| s1217 | R13 | sumlo | lo | AHP | 182361/1000000 | lo_AEH,s1090,lo_AEP,s1126,s1117 |
| s1218 | R13 | diffhi | hi | AFP | 25253/100000 | s1117,s1113,lo_AEP,s1126,lo_AEH |
| s1219 | R14 | sumlo | lo | APR | 39771/250000 | lo_AEP,s1130,s1124,s1090,s1117 |
| s1222 | R18 | sumlo | lo | ACR | 123443/1000000 | lo_ABC,s1066,s1112,lo_BCR,hi_BCH |
| s1224 | R22 | sumlo | lo | BCE | 230147/1000000 | s1139,lo_CER,lo_BCR,s1109,hi_CHR |
| s1225 | R22 | sumlo | lo | CHR | 153401/500000 | s1139,lo_CER,lo_BCR,s1109,hi_BCE |
| s1227 | R24 | sumlo | lo | BEP | 76991/500000 | s1208,s1160,lo_AEP,lo_BEH,hi_AEH |
| s1229 | R26 | sumlo | lo | AES | 40713/200000 | s1215,lo_ERS,s1124,lo_CES,hi_CER |
| s1230 | R27 | sumlo | lo | CEF | 174249/500000 | s1224,s1166,s1144,lo_CER,hi_BER |
| s1231 | R28 | sumlo | lo | CEP | 181971/1000000 | s1224,s1171,s1227,lo_CER,hi_BER |
| s1234 | R30 | sumlo | lo | EFS | 206731/1000000 | s1230,lo_ERS,lo_CES,s1166,hi_CER |
| s1236 | R31 | sumlo | lo | EPS | 142589/1000000 | s1231,lo_ERS,lo_CES,s1171,hi_CER |
| s1241 | R35 | sumlo | lo | EFP | 250153/1000000 | lo_EFH,s1100,s1166,lo_FHP,s1164 |
| s1242 | R35 | sumlo | lo | FHR | 932/3125 | lo_EFH,s1100,s1166,lo_FHP,s1120 |
| s1245 | R37 | sumlo | lo | HPR | 21059/100000 | s1217,s1225,s1132,lo_CHP,hi_ACH |
| s1248 | R38 | sumlo | lo | AHQ | 149717/1000000 | lo_AEH,lo_HPQ,s1217,lo_EHQ,s1121 |
| s1251 | R43 | sumlo | lo | AFP | 65747/500000 | lo_ABP,lo_FHP,s1217,lo_BFP,s30 |
| s1252 | R43 | sumlo | lo | BHP | 84953/500000 | lo_ABP,lo_FHP,s1217,lo_BFP,s1218 |
| s1254 | R45 | sumlo | lo | CFP | 136869/1000000 | s1213,lo_FHP,s1251,lo_CHP,s1113 |
| s1260 | R56 | sumlo | lo | FPR | 1323/5000 | s1241,s1245,s1171,lo_FHP,s1121 |
| s1264 | R59 | sumlo | lo | ARS | 144389/1000000 | s1124,lo_FRS,s1130,lo_ERS,s1163 |
| s1270 | R71 | linear | lo | CEH | 122481/250000 | s1215,hi_ACH,lo_AEH |
| s1272 | R73 | linear | lo | ACF | 93923/250000 | s1213,s1251,s1254 |
| s1273 | R74 | linear | lo | ACH | 38269/100000 | s1213,s1217,lo_CHP |
| s1274 | R74 | linear | hi | AHP | 151923/500000 | hi_ACH,s1213,lo_CHP |
| s1279 | R75 | linear | hi | AEF | 334333/500000 | hi_AEH,s1126,hi_EFH |
| s1282 | R76 | linear | hi | EFP | 111043/250000 | s1279,lo_AEP,s1251 |
| s1283 | R77 | linear | hi | EHP | 108621/200000 | hi_AEH,lo_AEP,s1217 |
| s1286 | R78 | linear | lo | AER | 220477/500000 | s1229,s1264,lo_ERS |
| s1288 | R79 | linear | lo | AFH | 335717/1000000 | lo_AFQ,s1248,lo_FHQ |
| s1292 | R80 | linear | lo | AFR | 277589/500000 | s1251,s1219,s1260 |
| s1294 | R81 | linear | lo | AHR | 110407/200000 | s1217,s1219,s1245 |
| s1301 | R84 | linear | lo | BCH | 177953/500000 | lo_BCP,s1252,lo_CHP |
| s1304 | R85 | linear | lo | BEF | 99427/200000 | s1227,lo_BFP,s1241 |
| s1320 | R93 | linear | lo | EHP | 34399/100000 | hi_EFH,s1241,lo_FHP |
| s1323 | R94 | linear | hi | EFR | 620293/1000000 | hi_EFH,hi_EHR,s1242 |
| s1324 | R94 | linear | hi | FHR | 528443/1000000 | hi_EFH,s1166,hi_EHR |
| s1326 | R96 | linear | lo | EFR | 392731/1000000 | s1234,lo_ERS,lo_FRS |
| s1331 | R98 | linear | lo | EPR | 328589/1000000 | s1236,lo_ERS,lo_PRS |
| s1372 | R11 | sumlo | lo | ACP | 111267/1000000 | s1215,s1251,s1272,lo_AEP,s1279 |
| s1374 | R12 | sumlo | lo | ACE | 310847/1000000 | s1273,s1286,s1222,lo_AEH,hi_AHR |
| s1376 | R13 | sumlo | lo | AHP | 2862/15625 | lo_AEH,s1251,lo_AEP,s1288,s1279 |
| s1377 | R13 | diffhi | hi | AFP | 247767/1000000 | s1279,s1274,lo_AEP,s1288,lo_AEH |
| s1378 | R14 | sumlo | lo | APR | 163929/1000000 | lo_AEP,s1292,s1286,s1251,s1279 |
| s1382 | R17 | sumlo | lo | BCP | 957/10000 | lo_ABC,lo_CHP,s1372,s1301,hi_ACH |
| s1383 | R18 | sumlo | lo | ACR | 62583/500000 | lo_ABC,s1225,s1273,lo_BCR,hi_BCH |
| s1385 | R22 | sumlo | lo | BCE | 46773/200000 | s1301,lo_CER,lo_BCR,s1270,hi_CHR |
| s1386 | R22 | sumlo | lo | CHR | 155879/500000 | s1301,lo_CER,lo_BCR,s1270,hi_BCE |
| s1390 | R25 | sumlo | lo | CEP | 186313/1000000 | s1374,s1320,lo_AEP,s1270,hi_AEH |
| s1391 | R26 | sumlo | lo | AES | 210429/1000000 | s1374,lo_ERS,s1286,lo_CES,hi_CER |
| s1392 | R27 | sumlo | lo | CEF | 354559/1000000 | s1385,s1326,s1304,lo_CER,hi_BER |
| s1395 | R30 | sumlo | lo | EFS | 209167/1000000 | s1392,lo_ERS,lo_CES,s1326,hi_CER |
| s1397 | R31 | sumlo | lo | EPS | 144121/1000000 | s1390,lo_ERS,lo_CES,s1331,hi_CER |
| s1402 | R35 | sumlo | lo | EFP | 50783/200000 | lo_EFH,s1260,s1326,lo_FHP,s1324 |
| s1403 | R35 | sumlo | lo | FHR | 302089/1000000 | lo_EFH,s1260,s1326,lo_FHP,s1282 |
| s1406 | R37 | sumlo | lo | HPR | 21509/100000 | s1376,s1386,s1294,lo_CHP,hi_ACH |
| s1409 | R38 | sumlo | lo | AHQ | 37551/250000 | lo_AEH,lo_HPQ,s1376,lo_EHQ,s1283 |
| s1413 | R43 | sumlo | lo | AFP | 32931/250000 | lo_ABP,lo_FHP,s1376,lo_BFP,s30 |
| s1414 | R43 | sumlo | lo | BHP | 6939/40000 | lo_ABP,lo_FHP,s1376,lo_BFP,s1377 |
| s1416 | R45 | sumlo | lo | CFP | 71243/500000 | s1372,lo_FHP,s1413,lo_CHP,s1274 |
| s1422 | R56 | sumlo | lo | FPR | 3367/12500 | s1402,s1406,s1331,lo_FHP,s1283 |
| s1426 | R59 | sumlo | lo | ARS | 149349/1000000 | s1286,lo_FRS,s1292,lo_ERS,s1323 |
| s1432 | R71 | linear | lo | CEH | 7823/15625 | s1374,hi_ACH,lo_AEH |
| s1434 | R73 | linear | lo | ACF | 385477/1000000 | s1372,s1413,s1416 |
| s1435 | R74 | linear | lo | ACH | 77487/200000 | s1372,s1376,lo_CHP |
| s1436 | R74 | linear | hi | AHP | 74977/250000 | hi_ACH,s1372,lo_CHP |
| s1441 | R75 | linear | hi | AEF | 667911/1000000 | hi_AEH,s1288,hi_EFH |
| s1442 | R76 | linear | lo | AEF | 478639/1000000 | lo_AEP,s1413,s1402 |
| s1444 | R76 | linear | hi | EFP | 443187/1000000 | s1441,lo_AEP,s1413 |
| s1445 | R77 | linear | hi | EHP | 271149/500000 | hi_AEH,lo_AEP,s1376 |
| s1448 | R78 | linear | lo | AER | 226389/500000 | s1391,s1426,lo_ERS |
| s1450 | R79 | linear | lo | AFH | 84051/250000 | lo_AFQ,s1409,lo_FHQ |
| s1454 | R80 | linear | lo | AFR | 565013/1000000 | s1413,s1378,s1422 |
| s1456 | R81 | linear | lo | AHR | 562187/1000000 | s1376,s1378,s1406 |
| s1464 | R84 | linear | lo | BCH | 14487/40000 | s1382,s1414,lo_CHP |
| s1465 | R84 | linear | hi | BHP | 809/2500 | hi_BCH,s1382,lo_CHP |
| s1488 | R93 | linear | lo | EHP | 43469/125000 | hi_EFH,s1402,lo_FHP |
| s1491 | R94 | linear | lo | EHR | 509657/1000000 | hi_EFH,s1326,s1403 |
| s1492 | R94 | linear | hi | EFR | 154111/250000 | hi_EFH,hi_EHR,s1403 |
| s1493 | R94 | linear | hi | FHR | 262901/500000 | hi_EFH,s1326,hi_EHR |
| s1495 | R96 | linear | lo | EFR | 395167/1000000 | s1395,lo_ERS,lo_FRS |
| s1500 | R98 | linear | lo | EPR | 330121/1000000 | s1397,lo_ERS,lo_PRS |
| s1507 | R102 | bary_hi | lo | AFS | 459849/1000000 | s1434,s1442,s1454 |
| s1512 | R103 | bary_hi | hi | ARS | 295621/1000000 | s1383,hi_AER |
| s1540 | R11 | sumlo | lo | ACP | 57489/500000 | s1374,s1413,s1434,lo_AEP,s1441 |
| s1542 | R12 | sumlo | lo | ACE | 160231/500000 | s1435,s1448,s1383,lo_AEH,hi_AHR |
| s1544 | R13 | sumlo | lo | AHP | 91841/500000 | lo_AEH,s1413,lo_AEP,s1450,s1441 |
| s1545 | R13 | diffhi | hi | AFP | 243581/1000000 | s1441,s1436,lo_AEP,s1450,lo_AEH |
| s1546 | R14 | sumlo | lo | APR | 5249/31250 | lo_AEP,s1454,s1448,s1413,s1441 |
| s1550 | R17 | sumlo | lo | BCP | 99749/1000000 | lo_ABC,lo_CHP,s1540,s1464,hi_ACH |
| s1551 | R18 | sumlo | lo | ACR | 126927/1000000 | lo_ABC,s1386,s1435,lo_BCR,hi_BCH |
| s1553 | R22 | sumlo | lo | CHR | 158837/500000 | s1464,lo_CER,lo_BCR,s1432,hi_BCE |
| s1557 | R25 | sumlo | lo | CEP | 24131/125000 | s1542,s1488,lo_AEP,s1432,hi_AEH |
| s1558 | R26 | sumlo | lo | AES | 21643/100000 | s1542,lo_ERS,s1448,lo_CES,hi_CER |
| s1564 | R31 | sumlo | lo | EPS | 29287/200000 | s1557,lo_ERS,lo_CES,s1500,hi_CER |
| s1570 | R35 | sumlo | lo | EFP | 10293/40000 | lo_EFH,s1422,s1495,lo_FHP,s1493 |
| s1571 | R35 | sumlo | lo | FHR | 305293/1000000 | lo_EFH,s1422,s1495,lo_FHP,s1444 |
| s1573 | R36 | sumlo | lo | CEH | 510619/1000000 | s1435,s1491,lo_AEH,s1553,hi_AHR |
| s1574 | R37 | sumlo | lo | HPR | 54859/250000 | s1544,s1553,s1456,lo_CHP,hi_ACH |
| s1576 | R38 | sumlo | lo | AHQ | 30103/200000 | lo_AEH,lo_HPQ,s1544,lo_EHQ,s1445 |
| s1580 | R43 | sumlo | lo | AFP | 132971/1000000 | lo_ABP,lo_FHP,s1544,lo_BFP,s1465 |
| s1581 | R43 | sumlo | lo | BHP | 176653/1000000 | lo_ABP,lo_FHP,s1544,lo_BFP,s1545 |
| s1583 | R45 | sumlo | lo | CFP | 29639/200000 | s1540,lo_FHP,s1580,lo_CHP,s1436 |
| s1591 | R56 | sumlo | lo | FPR | 273963/1000000 | s1570,s1574,s1500,lo_FHP,s1445 |
| s1595 | R59 | sumlo | lo | ARS | 153549/1000000 | s1448,lo_FRS,s1454,lo_ERS,s1492 |
| s1600 | R69 | sumlo | lo | EFS | 212751/1000000 | s1558,lo_FRS,s1507,lo_ERS,s1512 |
| s1604 | R73 | linear | lo | ACF | 24759/62500 | s1540,s1580,s1583 |
| s1605 | R74 | linear | lo | ACH | 19583/50000 | s1540,s1544,lo_CHP |
| s1606 | R74 | linear | hi | AHP | 296197/1000000 | hi_ACH,s1540,lo_CHP |
| s1611 | R75 | linear | hi | AEF | 20857/31250 | hi_AEH,s1450,hi_EFH |
| s1612 | R76 | linear | lo | AEF | 15103/31250 | lo_AEP,s1580,s1570 |
| s1614 | R76 | linear | hi | EFP | 441453/1000000 | s1611,lo_AEP,s1580 |
| s1615 | R77 | linear | hi | EHP | 67723/125000 | hi_AEH,lo_AEP,s1544 |
| s1618 | R78 | linear | lo | AER | 462979/1000000 | s1558,s1595,lo_ERS |
| s1620 | R79 | linear | lo | AFH | 67303/200000 | lo_AFQ,s1576,lo_FHQ |
| s1624 | R80 | linear | lo | AFR | 287451/500000 | s1580,s1546,s1591 |
| s1626 | R81 | linear | lo | AHR | 285543/500000 | s1544,s1546,s1574 |
| s1634 | R84 | linear | lo | BCH | 184701/500000 | s1550,s1581,lo_CHP |
| s1635 | R84 | linear | hi | BHP | 319551/1000000 | hi_BCH,s1550,lo_CHP |
| s1660 | R93 | linear | lo | EHP | 175581/500000 | hi_EFH,s1570,lo_FHP |
| s1663 | R94 | linear | lo | EHR | 515297/1000000 | hi_EFH,s1495,s1571 |
| s1664 | R94 | linear | hi | EFR | 15331/25000 | hi_EFH,hi_EHR,s1571 |
| s1665 | R94 | linear | hi | FHR | 261683/500000 | hi_EFH,s1495,hi_EHR |
| s1667 | R96 | linear | lo | EFR | 398751/1000000 | s1600,lo_ERS,lo_FRS |
| s1672 | R98 | linear | lo | EPR | 66487/200000 | s1564,lo_ERS,lo_PRS |
| s1679 | R102 | bary_hi | lo | AFS | 58583/125000 | s1604,s1612,s1624 |
| s1684 | R103 | bary_hi | hi | ARS | 295141/1000000 | s1551,hi_AER |
| s1713 | R11 | sumlo | lo | ACP | 23809/200000 | s1542,s1580,s1604,lo_AEP,s1611 |
| s1716 | R12 | sumlo | lo | ACE | 164587/500000 | s1605,s1618,s1551,lo_AEH,hi_AHR |
| s1718 | R13 | sumlo | lo | AHP | 46289/250000 | lo_AEH,s1580,lo_AEP,s1620,s1611 |
| s1719 | R13 | diffhi | hi | AFP | 2997/12500 | s1611,s1606,lo_AEP,s1620,lo_AEH |
| s1720 | R14 | sumlo | lo | APR | 172347/1000000 | lo_AEP,s1624,s1618,s1580,s1611 |
| s1724 | R17 | sumlo | lo | BCP | 104377/1000000 | lo_ABC,lo_CHP,s1713,s1634,hi_ACH |
| s1725 | R18 | sumlo | lo | ACR | 2012/15625 | lo_ABC,s1553,s1605,lo_BCR,hi_BCH |
| s1728 | R22 | sumlo | lo | CHR | 81001/250000 | s1634,lo_CER,lo_BCR,s1573,hi_BCE |
| s1731 | R25 | sumlo | lo | CEP | 49813/250000 | s1716,s1660,lo_AEP,s1573,hi_AEH |
| s1732 | R26 | sumlo | lo | AES | 55431/250000 | s1716,lo_ERS,s1618,lo_CES,hi_CER |
| s1738 | R31 | sumlo | lo | EPS | 148819/1000000 | s1731,lo_ERS,lo_CES,s1672,hi_CER |
| s1745 | R35 | sumlo | lo | EFP | 261251/1000000 | lo_EFH,s1591,s1667,lo_FHP,s1665 |
| s1746 | R35 | sumlo | lo | FHR | 309727/1000000 | lo_EFH,s1591,s1667,lo_FHP,s1614 |
| s1748 | R36 | sumlo | lo | CEH | 130329/250000 | s1605,s1663,lo_AEH,s1728,hi_AHR |
| s1749 | R37 | sumlo | lo | HPR | 224331/1000000 | s1718,s1728,s1626,lo_CHP,hi_ACH |
| s1751 | R38 | sumlo | lo | AHQ | 150911/1000000 | lo_AEH,lo_HPQ,s1718,lo_EHQ,s1615 |
| s1755 | R43 | sumlo | lo | AFP | 33771/250000 | lo_ABP,lo_FHP,s1718,lo_BFP,s1635 |
| s1756 | R43 | sumlo | lo | BHP | 4501/25000 | lo_ABP,lo_FHP,s1718,lo_BFP,s1719 |
| s1761 | R45 | sumlo | lo | CFP | 154547/1000000 | s1713,lo_FHP,s1755,lo_CHP,s1606 |
| s1768 | R56 | sumlo | lo | FPR | 139683/500000 | s1745,s1749,s1672,lo_FHP,s1615 |
| s1771 | R59 | sumlo | lo | ARS | 78699/500000 | s1618,lo_FRS,s1624,lo_ERS,s1664 |
| s1776 | R69 | sumlo | lo | EFS | 217543/1000000 | s1732,lo_FRS,s1679,lo_ERS,s1684 |
| s1780 | R73 | linear | lo | ACF | 102169/250000 | s1713,s1755,s1761 |
| s1781 | R74 | linear | lo | ACH | 397201/1000000 | s1713,s1718,lo_CHP |
| s1782 | R74 | linear | hi | AHP | 29213/100000 | hi_ACH,s1713,lo_CHP |
| s1787 | R75 | linear | hi | AEF | 667113/1000000 | hi_AEH,s1620,hi_EFH |
| s1788 | R76 | linear | lo | AEF | 97867/200000 | lo_AEP,s1755,s1745 |
| s1790 | R76 | linear | hi | EFP | 439029/1000000 | s1787,lo_AEP,s1755 |
| s1791 | R77 | linear | hi | EHP | 54031/100000 | hi_AEH,lo_AEP,s1718 |
| s1794 | R78 | linear | lo | AER | 236061/500000 | s1732,s1771,lo_ERS |
| s1796 | R79 | linear | lo | AFH | 336911/1000000 | lo_AFQ,s1751,lo_FHQ |
| s1800 | R80 | linear | lo | AFR | 586797/1000000 | s1755,s1720,s1768 |
| s1802 | R81 | linear | lo | AHR | 290917/500000 | s1718,s1720,s1749 |
| s1810 | R84 | linear | lo | BCH | 377417/1000000 | s1724,s1756,lo_CHP |
| s1811 | R84 | linear | hi | BHP | 314923/1000000 | hi_BCH,s1724,lo_CHP |
| s1840 | R93 | linear | lo | EHP | 22193/62500 | hi_EFH,s1745,lo_FHP |
| s1843 | R94 | linear | lo | EHR | 104663/200000 | hi_EFH,s1667,s1746 |
| s1844 | R94 | linear | hi | EFR | 304403/500000 | hi_EFH,hi_EHR,s1746 |
| s1845 | R94 | linear | hi | FHR | 259891/500000 | hi_EFH,s1667,hi_EHR |
| s1847 | R96 | linear | lo | EFR | 403543/1000000 | s1776,lo_ERS,lo_FRS |
| s1852 | R98 | linear | lo | EPR | 334819/1000000 | s1738,lo_ERS,lo_PRS |
| s1859 | R102 | bary_hi | lo | AFS | 119813/250000 | s1780,s1788,s1800 |
| s1864 | R103 | bary_hi | hi | ARS | 294639/1000000 | s1725,hi_AER |
| s1893 | R11 | sumlo | lo | ACP | 61813/500000 | s1716,s1755,s1780,lo_AEP,s1787 |
| s1896 | R12 | sumlo | lo | ACE | 169153/500000 | s1781,s1794,s1725,lo_AEH,hi_AHR |
| s1898 | R13 | sumlo | lo | AHP | 37499/200000 | lo_AEH,s1755,lo_AEP,s1796,s1787 |
| s1899 | R13 | diffhi | hi | AFP | 47133/200000 | s1787,s1782,lo_AEP,s1796,lo_AEH |
| s1900 | R14 | sumlo | lo | APR | 177403/1000000 | lo_AEP,s1800,s1794,s1755,s1787 |
| s1905 | R18 | sumlo | lo | ACR | 130923/1000000 | lo_ABC,s1728,s1781,lo_BCR,hi_BCH |
| s1908 | R22 | sumlo | lo | CHR | 165479/500000 | s1810,lo_CER,lo_BCR,s1748,hi_BCE |
| s1911 | R25 | sumlo | lo | CEP | 25751/125000 | s1896,s1840,lo_AEP,s1748,hi_AEH |
| s1912 | R26 | sumlo | lo | AES | 226839/1000000 | s1896,lo_ERS,s1794,lo_CES,hi_CER |
| s1918 | R31 | sumlo | lo | EPS | 151377/1000000 | s1911,lo_ERS,lo_CES,s1852,hi_CER |
| s1926 | R35 | sumlo | lo | EFP | 266591/1000000 | lo_EFH,s1768,s1847,lo_FHP,s1845 |
| s1927 | R35 | sumlo | lo | FHR | 315627/1000000 | lo_EFH,s1768,s1847,lo_FHP,s1790 |
| s1929 | R36 | sumlo | lo | CEH | 534593/1000000 | s1781,s1843,lo_AEH,s1908,hi_AHR |
| s1930 | R37 | sumlo | lo | HPR | 230403/1000000 | s1898,s1908,s1802,lo_CHP,hi_ACH |
| s1932 | R38 | sumlo | lo | AHQ | 6069/40000 | lo_AEH,lo_HPQ,s1898,lo_EHQ,s1791 |
| s1935 | R41 | sumlo | lo | BCP | 54887/500000 | lo_ABP,s1761,s1893,lo_BFP,s1899 |
| s1937 | R43 | sumlo | lo | AFP | 861/6250 | lo_ABP,lo_FHP,s1898,lo_BFP,s1811 |
| s1938 | R43 | sumlo | lo | BHP | 184091/1000000 | lo_ABP,lo_FHP,s1898,lo_BFP,s1899 |
| s1943 | R45 | sumlo | lo | CFP | 6477/40000 | s1893,lo_FHP,s1937,lo_CHP,s1782 |
| s1950 | R56 | sumlo | lo | FPR | 71643/250000 | s1926,s1930,s1852,lo_FHP,s1791 |
| s1953 | R59 | sumlo | lo | ARS | 80879/500000 | s1794,lo_FRS,s1800,lo_ERS,s1844 |
| s1954 | R60 | sumlo | lo | HRS | 128491/1000000 | s1802,lo_FRS,s1953,s1927,hi_AFR |
| s1957 | R68 | sumlo | lo | PRS | 47461/500000 | s1852,lo_FRS,lo_ERS,s1950,s1844 |
| s1958 | R69 | sumlo | lo | EFS | 22287/100000 | s1912,lo_FRS,s1859,lo_ERS,s1864 |
| s1964 | R73 | linear | lo | ACF | 423311/1000000 | s1893,s1937,s1943 |
| s1965 | R74 | linear | lo | ACH | 404121/1000000 | s1893,s1898,lo_CHP |
| s1966 | R74 | linear | hi | AHP | 287549/1000000 | hi_ACH,s1893,lo_CHP |
| s1971 | R75 | linear | hi | AEF | 666717/1000000 | hi_AEH,s1796,hi_EFH |
| s1972 | R76 | linear | lo | AEF | 497351/1000000 | lo_AEP,s1937,s1926 |
| s1973 | R76 | linear | hi | EFP | 435957/1000000 | s1971,lo_AEP,s1937 |
| s1974 | R77 | linear | hi | EHP | 537971/1000000 | hi_AEH,lo_AEP,s1898 |
| s1977 | R78 | linear | lo | AER | 481597/1000000 | s1912,s1953,lo_ERS |
| s1979 | R79 | linear | lo | AFH | 13509/40000 | lo_AFQ,s1932,lo_FHQ |
| s1983 | R80 | linear | lo | AFR | 120347/200000 | s1937,s1900,s1950 |
| s1985 | R81 | linear | lo | AHR | 595301/1000000 | s1898,s1900,s1930 |
| s1991 | R83 | linear | hi | CFP | 154763/500000 | hi_BCF,s1935,lo_BFP |
| s1992 | R84 | linear | lo | BCH | 77373/200000 | s1935,s1938,lo_CHP |
| s1993 | R84 | linear | hi | BHP | 154763/500000 | hi_BCH,s1935,lo_CHP |
| s2019 | R92 | linear | hi | CHR | 19323/31250 | s234,s45,s1954 |
| s2023 | R93 | linear | lo | EHP | 90107/250000 | hi_EFH,s1926,lo_FHP |
| s2026 | R94 | linear | lo | EHR | 534007/1000000 | hi_EFH,s1847,s1927 |
| s2027 | R94 | linear | hi | EFR | 301453/500000 | hi_EFH,hi_EHR,s1927 |
| s2028 | R94 | linear | hi | FHR | 51499/100000 | hi_EFH,s1847,hi_EHR |
| s2030 | R96 | linear | lo | EFR | 40887/100000 | s1958,lo_ERS,lo_FRS |
| s2035 | R98 | linear | lo | EPR | 339299/1000000 | s1918,lo_ERS,s1957 |
| s2042 | R102 | bary_hi | lo | AFS | 123041/250000 | s1964,s1972,s1983 |
| s2047 | R103 | bary_hi | hi | ARS | 294051/1000000 | s1905,hi_AER |
| s2055 | R105 | bary_lo | hi | CHS | 600271/1000000 | hi_CEH,s2019 |
| s2077 | R11 | sumlo | lo | ACP | 128949/1000000 | s1896,s1937,s1964,lo_AEP,s1971 |
| s2080 | R12 | sumlo | lo | ACE | 348803/1000000 | s1965,s1977,s1905,lo_AEH,hi_AHR |
| s2084 | R13 | sumlo | lo | AHP | 95253/500000 | lo_AEH,s1937,lo_AEP,s1979,s1971 |
| s2085 | R13 | diffhi | hi | AFP | 57747/250000 | s1971,s1966,lo_AEP,s1979,lo_AEH |
| s2086 | R14 | sumlo | lo | APR | 36689/200000 | lo_AEP,s1983,s1977,s1937,s1971 |
| s2093 | R18 | sumlo | lo | ACR | 66721/500000 | lo_ABC,s1908,s1965,lo_BCR,hi_BCH |
| s2096 | R22 | sumlo | lo | CHR | 42411/125000 | s1992,lo_CER,lo_BCR,s1929,hi_BCE |
| s2099 | R25 | sumlo | lo | CEP | 107173/500000 | s2080,s2023,lo_AEP,s1929,hi_AEH |
| s2100 | R26 | sumlo | lo | AES | 232429/1000000 | s2080,lo_ERS,s1977,lo_CES,hi_CER |
| s2105 | R31 | sumlo | lo | EPS | 30993/200000 | s2099,lo_ERS,lo_CES,s2035,hi_CER |
| s2115 | R35 | sumlo | lo | EFP | 273259/1000000 | lo_EFH,s1950,s2030,lo_FHP,s2028 |
| s2116 | R35 | sumlo | lo | FHR | 322797/1000000 | lo_EFH,s1950,s2030,lo_FHP,s1973 |
| s2118 | R36 | sumlo | lo | CEH | 1723/3125 | s1965,s2026,lo_AEH,s2096,hi_AHR |
| s2119 | R37 | sumlo | lo | HPR | 238011/1000000 | s2084,s2096,s1985,lo_CHP,hi_ACH |
| s2121 | R38 | sumlo | lo | AHQ | 76453/500000 | lo_AEH,lo_HPQ,s2084,lo_EHQ,s1974 |
| s2124 | R41 | sumlo | lo | BCP | 117111/1000000 | lo_ABP,s1943,s2077,lo_BFP,s2085 |
| s2125 | R42 | sumlo | lo | BEP | 17611/100000 | lo_ABP,s2023,lo_AEP,s1938,s1966 |
| s2126 | R43 | sumlo | lo | AFP | 141067/1000000 | lo_ABP,lo_FHP,s2084,lo_BFP,s1993 |
| s2132 | R45 | sumlo | lo | CFP | 170739/1000000 | s2077,lo_FHP,s2126,lo_CHP,s1966 |
| s2136 | R51 | sumlo | lo | BHP | 189593/1000000 | s2125,lo_FHP,lo_BFP,s2023,s1973 |
| s2141 | R54 | diffhi | hi | CEP | 252873/500000 | s1991,s1974,lo_CHP,s2115,lo_FHP |
| s2143 | R56 | sumlo | lo | FPR | 296861/1000000 | s2115,s2119,s2035,lo_FHP,s1974 |
| s2146 | R59 | sumlo | lo | ARS | 167107/1000000 | s1977,lo_FRS,s1983,lo_ERS,s2027 |
| s2147 | R60 | sumlo | lo | HRS | 33387/250000 | s1985,lo_FRS,s2146,s2116,hi_AFR |
| s2151 | R64 | sumlo | lo | CFR | 311963/1000000 | lo_CER,s2116,s2096,s2030,hi_EHR |
| s2152 | R67 | sumlo | lo | CRS | 11729/125000 | lo_CER,s2147,s2096,lo_ERS,hi_EHR |
| s2153 | R68 | sumlo | lo | PRS | 98129/1000000 | s2035,lo_FRS,lo_ERS,s2143,s2027 |
| s2154 | R69 | sumlo | lo | EFS | 14323/62500 | s2100,lo_FRS,s2042,lo_ERS,s2047 |
| s2163 | R73 | linear | lo | ACF | 88151/200000 | s2077,s2126,s2132 |
| s2164 | R74 | linear | lo | ACH | 82491/200000 | s2077,s2084,lo_CHP |
| s2165 | R74 | linear | hi | AHP | 141113/500000 | hi_ACH,s2077,lo_CHP |
| s2166 | R74 | linear | hi | ACP | 220669/1000000 | hi_ACH,s2084,lo_CHP |
| s2170 | R75 | linear | hi | AEF | 665903/1000000 | hi_AEH,s1979,hi_EFH |
| s2171 | R76 | linear | lo | AEF | 253663/500000 | lo_AEP,s2126,s2115 |
| s2172 | R76 | linear | hi | EFP | 107959/250000 | s2170,lo_AEP,s2126 |
| s2173 | R77 | linear | hi | EHP | 6687/12500 | hi_AEH,lo_AEP,s2084 |
| s2176 | R78 | linear | lo | AER | 61567/125000 | s2100,s2146,lo_ERS |
| s2178 | R79 | linear | lo | AFH | 169453/500000 | lo_AFQ,s2121,lo_FHQ |
| s2182 | R80 | linear | lo | AFR | 621373/1000000 | s2126,s2086,s2143 |
| s2185 | R81 | linear | lo | AHR | 305981/500000 | s2084,s2086,s2119 |
| s2192 | R84 | linear | lo | BCH | 49963/125000 | s2124,s2136,lo_CHP |
| s2193 | R84 | linear | hi | BHP | 302189/1000000 | hi_BCH,s2124,lo_CHP |
| s2215 | R88 | linear | hi | CEH | 473853/500000 | s2141,lo_CHP,s2173 |
| s2217 | R90 | linear | lo | CER | 34979/125000 | lo_CES,s2152,lo_ERS |
| s2223 | R92 | linear | hi | CHR | 76623/125000 | s2055,s45,s2147 |
| s2227 | R93 | linear | lo | EHP | 45887/125000 | hi_EFH,s2115,lo_FHP |
| s2230 | R94 | linear | lo | EHR | 68313/125000 | hi_EFH,s2030,s2116 |
| s2231 | R94 | linear | hi | EFR | 74467/125000 | hi_EFH,hi_EHR,s2116 |
| s2235 | R96 | linear | lo | EFR | 6487/15625 | s2154,lo_ERS,lo_FRS |
| s2240 | R98 | linear | lo | EPR | 173047/500000 | s2105,lo_ERS,s2153 |
| s2247 | R102 | bary_hi | lo | AFS | 50817/100000 | s2163,s2171,s2182 |
| s2252 | R103 | bary_hi | hi | ARS | 73341/250000 | s2093,hi_AER |
| s2260 | R105 | bary_lo | hi | CHS | 597953/1000000 | s2215,s2223 |
| s2285 | R11 | sumlo | lo | ACP | 135447/1000000 | s2080,s2126,s2163,lo_AEP,s2170 |
| s2288 | R12 | sumlo | lo | ACE | 90339/250000 | s2164,s2176,s2093,lo_AEH,hi_AHR |
| s2292 | R13 | sumlo | lo | AHP | 3887/20000 | lo_AEH,s2126,lo_AEP,s2178,s2170 |
| s2293 | R13 | diffhi | hi | AFP | 45077/200000 | s2170,s2165,lo_AEP,s2178,lo_AEH |
| s2294 | R14 | sumlo | lo | APR | 191121/1000000 | lo_AEP,s2182,s2176,s2126,s2170 |
| s2299 | R16 | sumlo | lo | ACR | 34161/250000 | lo_ABC,s2151,s2163,lo_BCR,hi_BCF |
| s2303 | R22 | sumlo | lo | CHR | 351069/1000000 | s2192,s2217,lo_BCR,s2118,hi_BCE |
| s2306 | R25 | sumlo | lo | CEP | 224723/1000000 | s2288,s2227,lo_AEP,s2118,hi_AEH |
| s2307 | R26 | sumlo | lo | AES | 47801/200000 | s2288,lo_ERS,s2176,lo_CES,hi_CER |
| s2312 | R31 | sumlo | lo | EPS | 39943/250000 | s2306,lo_ERS,lo_CES,s2240,hi_CER |
| s2323 | R35 | sumlo | lo | FHR | 332163/1000000 | lo_EFH,s2143,s2235,lo_FHP,s2172 |
| s2325 | R36 | sumlo | lo | CEH | 143271/250000 | s2164,s2230,lo_AEH,s2303,hi_AHR |
| s2326 | R37 | sumlo | lo | HPR | 62053/250000 | s2292,s2303,s2185,lo_CHP,hi_ACH |
| s2328 | R38 | sumlo | lo | AHQ | 30887/200000 | lo_AEH,lo_HPQ,s2292,lo_EHQ,s2173 |
| s2331 | R41 | sumlo | lo | BCP | 6317/50000 | lo_ABP,s2132,s2285,lo_BFP,s2293 |
| s2332 | R42 | sumlo | lo | BEP | 183441/1000000 | lo_ABP,s2227,lo_AEP,s2136,s2165 |
| s2333 | R43 | sumlo | lo | AFP | 5827/40000 | lo_ABP,lo_FHP,s2292,lo_BFP,s2193 |
| s2339 | R45 | sumlo | lo | CFP | 90951/500000 | s2285,lo_FHP,s2333,lo_CHP,s2165 |
| s2341 | R49 | sumlo | lo | FPR | 158527/500000 | s2333,s2326,s2294,lo_FHP,s2165 |
| s2345 | R51 | sumlo | lo | BHP | 98787/500000 | s2332,lo_FHP,lo_BFP,s2227,s2172 |
| s2346 | R51 | sumlo | lo | EFP | 282339/1000000 | s2332,lo_FHP,lo_BFP,s2227,s2193 |
| s2355 | R59 | sumlo | lo | ARS | 173891/1000000 | s2176,lo_FRS,s2182,lo_ERS,s2231 |
| s2356 | R60 | sumlo | lo | HRS | 70053/500000 | s2185,lo_FRS,s2355,s2323,hi_AFR |
| s2362 | R67 | sumlo | lo | CRS | 97979/1000000 | s2217,s2356,s2303,lo_ERS,hi_EHR |
| s2363 | R68 | sumlo | lo | PRS | 103523/1000000 | s2240,lo_FRS,lo_ERS,s2341,s2231 |
| s2364 | R69 | sumlo | lo | EFS | 236863/1000000 | s2307,lo_FRS,s2247,lo_ERS,s2252 |
| s2371 | R72 | linear | lo | CEP | 233687/1000000 | s2288,s2166,lo_AEP |
| s2372 | R73 | linear | lo | ACF | 28939/62500 | s2285,s2333,s2339 |
| s2373 | R74 | linear | lo | ACH | 422797/1000000 | s2285,s2292,lo_CHP |
| s2374 | R74 | linear | hi | AHP | 17233/62500 | hi_ACH,s2285,lo_CHP |
| s2379 | R75 | linear | hi | AEF | 332361/500000 | hi_AEH,s2178,hi_EFH |
| s2381 | R76 | linear | lo | AEF | 260507/500000 | lo_AEP,s2333,s2346 |
| s2382 | R76 | linear | hi | EFP | 426047/1000000 | s2379,lo_AEP,s2333 |
| s2383 | R77 | linear | hi | EHP | 132779/250000 | hi_AEH,lo_AEP,s2292 |
| s2386 | R78 | linear | lo | AER | 63237/125000 | s2307,s2355,lo_ERS |
| s2388 | R79 | linear | lo | AFH | 68087/200000 | lo_AFQ,s2328,lo_FHQ |
| s2393 | R80 | linear | lo | AFR | 13077/20000 | s2333,s2294,s2341 |
| s2394 | R80 | linear | hi | FPR | 48167/100000 | s2333,hi_AFR,s2294 |
| s2396 | R81 | linear | lo | AHR | 633683/1000000 | s2292,s2294,s2326 |
| s2404 | R84 | linear | lo | BCH | 208457/500000 | s2331,s2345,lo_CHP |
| s2405 | R84 | linear | hi | BHP | 1831/6250 | hi_BCH,s2331,lo_CHP |
| s2406 | R84 | linear | hi | BCP | 110863/500000 | hi_BCH,s2345,lo_CHP |
| s2430 | R90 | linear | lo | CER | 283979/1000000 | lo_CES,s2362,lo_ERS |
| s2437 | R92 | linear | hi | CHR | 151027/250000 | s2260,s45,s2356 |
| s2440 | R93 | linear | lo | EHP | 23511/62500 | hi_EFH,s2346,lo_FHP |
| s2443 | R94 | linear | lo | EHR | 70271/125000 | hi_EFH,s2235,s2323 |
| s2444 | R94 | linear | hi | EFR | 58637/100000 | hi_EFH,hi_EHR,s2323 |
| s2448 | R96 | linear | lo | EFR | 422863/1000000 | s2364,lo_ERS,lo_FRS |
| s2453 | R98 | linear | lo | EPR | 71259/200000 | s2312,lo_ERS,s2363 |
| s2462 | R102 | bary_hi | lo | AFS | 265441/500000 | s2372,s2381,s2393 |
| s2467 | R103 | bary_hi | hi | ARS | 292491/1000000 | s2299,hi_AER |
| s2479 | R108 | bary_lo | lo | EPS | 20113/125000 | s2371,s2453 |
| s2495 | R8 | sum | lo | EPR | 357427/1000000 | s2479,lo_ERS,s2363 |
| s2502 | R11 | sumlo | lo | ACP | 35993/250000 | s2288,s2333,s2372,lo_AEP,s2379 |
| s2506 | R12 | sumlo | lo | ACE | 94299/250000 | s2373,s2386,s2299,lo_AEH,hi_AHR |
| s2510 | R13 | sumlo | lo | AHP | 4993/25000 | lo_AEH,s2333,lo_AEP,s2388,s2379 |
| s2511 | R13 | diffhi | hi | AFP | 54619/250000 | s2379,s2374,lo_AEP,s2388,lo_AEH |
| s2512 | R14 | sumlo | lo | APR | 101173/500000 | lo_AEP,s2393,s2386,s2333,s2379 |
| s2526 | R22 | sumlo | lo | BCE | 142103/500000 | s2404,s2430,lo_BCR,s2325,s2437 |
| s2527 | R22 | sumlo | lo | CHR | 184751/500000 | s2404,s2430,lo_BCR,s2325,hi_BCE |
| s2531 | R25 | sumlo | lo | CEP | 238481/1000000 | s2506,s2440,lo_AEP,s2325,hi_AEH |
| s2532 | R26 | sumlo | lo | AES | 123589/500000 | s2506,lo_ERS,s2386,lo_CES,hi_CER |
| s2539 | R31 | sumlo | lo | EPS | 33359/200000 | s2531,lo_ERS,lo_CES,s2495,hi_CER |
| s2551 | R35 | sumlo | lo | FHR | 346123/1000000 | lo_EFH,s2341,s2448,lo_FHP,s2382 |
| s2553 | R36 | sumlo | lo | CEH | 603711/1000000 | s2373,s2443,lo_AEH,s2527,hi_AHR |
| s2554 | R37 | sumlo | lo | HPR | 13163/50000 | s2510,s2527,s2396,lo_CHP,hi_ACH |
| s2556 | R38 | sumlo | lo | AHQ | 156493/1000000 | lo_AEH,lo_HPQ,s2510,lo_EHQ,s2383 |
| s2564 | R42 | sumlo | lo | BEP | 193519/1000000 | lo_ABP,s2440,lo_AEP,s2345,s2374 |
| s2565 | R43 | sumlo | lo | AFP | 151969/1000000 | lo_ABP,lo_FHP,s2510,lo_BFP,s2405 |
| s2566 | R43 | sumlo | lo | BHP | 203779/1000000 | lo_ABP,lo_FHP,s2510,lo_BFP,s2511 |
| s2569 | R44 | sumlo | lo | BPR | 11917/50000 | lo_ABP,s2554,s2512,s2566,s2374 |
| s2571 | R45 | sumlo | lo | CFP | 196937/1000000 | s2502,lo_FHP,s2565,lo_CHP,s2374 |
| s2574 | R49 | sumlo | lo | AHP | 40053/200000 | s2565,s2554,s2512,lo_FHP,s2394 |
| s2575 | R49 | sumlo | lo | FPR | 87461/250000 | s2565,s2554,s2512,lo_FHP,s2374 |
| s2581 | R50 | sumlo | lo | BCP | 141509/1000000 | s2564,s2571,lo_BFP,s2531,s2382 |
| s2584 | R51 | sumlo | lo | BHP | 208841/1000000 | s2564,lo_FHP,lo_BFP,s2440,s2382 |
| s2585 | R51 | sumlo | lo | EFP | 151857/500000 | s2564,lo_FHP,lo_BFP,s2440,s2405 |
| s2597 | R59 | sumlo | lo | ARS | 183939/1000000 | s2386,lo_FRS,s2393,lo_ERS,s2444 |
| s2598 | R60 | sumlo | lo | HRS | 14979/100000 | s2396,lo_FRS,s2597,s2551,hi_AFR |
| s2599 | R61 | sumlo | lo | CPR | 155211/1000000 | lo_BCR,s2495,s2569,s2430,hi_BER |
| s2602 | R64 | sumlo | lo | CFR | 173541/500000 | s2430,s2551,s2527,s2448,hi_EHR |
| s2604 | R67 | sumlo | lo | CRS | 104859/1000000 | s2430,s2598,s2527,lo_ERS,hi_EHR |
| s2605 | R68 | sumlo | lo | PRS | 4487/40000 | s2495,lo_FRS,lo_ERS,s2575,s2444 |
| s2606 | R69 | sumlo | lo | EFS | 24739/100000 | s2532,lo_FRS,s2462,lo_ERS,s2467 |
| s2615 | R73 | linear | lo | ACF | 246439/500000 | s2502,s2565,s2571 |
| s2616 | R74 | linear | lo | ACH | 437237/1000000 | s2502,s2574,lo_CHP |
| s2617 | R74 | linear | hi | AHP | 267203/1000000 | hi_ACH,s2502,lo_CHP |
| s2623 | R75 | linear | hi | AEF | 663193/1000000 | hi_AEH,s2388,hi_EFH |
| s2626 | R76 | linear | hi | EFP | 26139/62500 | s2623,lo_AEP,s2565 |
| s2630 | R78 | linear | lo | AER | 524117/1000000 | s2532,s2597,lo_ERS |
| s2632 | R79 | linear | lo | AFH | 342493/1000000 | lo_AFQ,s2556,lo_FHQ |
| s2637 | R80 | linear | lo | AFR | 704159/1000000 | s2565,s2512,s2575 |
| s2638 | R80 | linear | hi | FPR | 464151/1000000 | s2565,hi_AFR,s2512 |
| s2640 | R81 | linear | lo | AHR | 665871/1000000 | s2574,s2512,s2554 |
| s2647 | R82 | linear | lo | CEP | 255999/1000000 | s2526,s2406,s2564 |
| s2650 | R83 | linear | hi | CFP | 277791/1000000 | hi_BCF,s2581,lo_BFP |
| s2652 | R84 | linear | lo | BCH | 8867/20000 | s2581,s2584,lo_CHP |
| s2653 | R84 | linear | hi | BHP | 277791/1000000 | hi_BCH,s2581,lo_CHP |
| s2678 | R90 | linear | lo | CER | 290859/1000000 | lo_CES,s2604,lo_ERS |
| s2689 | R93 | linear | lo | EHP | 397551/1000000 | hi_EFH,s2585,lo_FHP |
| s2692 | R94 | linear | lo | EHR | 583823/1000000 | hi_EFH,s2448,s2551 |
| s2697 | R96 | linear | lo | EFR | 43339/100000 | s2606,lo_ERS,lo_FRS |
| s2702 | R98 | linear | lo | EPR | 37197/100000 | s2539,lo_ERS,s2605 |
| s2728 | R108 | bary_lo | lo | EPS | 2676/15625 | s2647,s2702 |
| s2743 | R5 | sum | lo | BEH | 799911/1000000 | s2564,s2584,s2689 |
| s2746 | R8 | sum | lo | EPR | 376439/1000000 | s2728,lo_ERS,s2605 |
| s2759 | R11 | sumlo | lo | ACP | 3111/20000 | s2506,s2565,s2615,lo_AEP,s2623 |
| s2769 | R14 | sumlo | lo | APR | 54711/250000 | lo_AEP,s2637,s2630,s2565,s2623 |
| s2771 | R15 | sumlo | lo | AHP | 53803/250000 | s2632,s2769,s2565,s2640,hi_AFR |
| s2786 | R16 | sumlo | lo | ACR | 152481/1000000 | lo_ABC,s2602,s2615,lo_BCR,hi_BCF |
| s2799 | R22 | sumlo | lo | CHR | 398353/1000000 | s2652,s2678,lo_BCR,s2553,hi_BCE |
| s2839 | R36 | sumlo | lo | CEH | 649661/1000000 | s2616,s2692,lo_AEH,s2799,hi_AHR |
| s2840 | R37 | sumlo | lo | HPR | 292867/1000000 | s2771,s2799,s2640,lo_CHP,hi_ACH |
| s2844 | R39 | sumlo | lo | EHP | 410047/1000000 | s2743,lo_CHP,s2584,s2839,hi_BCH |
| s2853 | R42 | sumlo | lo | BEP | 215403/1000000 | lo_ABP,s2844,lo_AEP,s2584,s2617 |
| s2854 | R43 | sumlo | lo | AFP | 82727/500000 | lo_ABP,lo_FHP,s2771,lo_BFP,s2653 |
| s2862 | R45 | sumlo | lo | CFP | 220003/1000000 | s2759,lo_FHP,s2854,lo_CHP,s2617 |
| s2863 | R45 | diffhi | hi | ACP | 105447/500000 | s2617,s2650,s2854,lo_CHP,lo_FHP |
| s2866 | R46 | sumlo | lo | FPR | 70013/200000 | s2854,s2599,s2769,s2862,s2863 |
| s2875 | R47 | diffhi | hi | EHP | 129649/250000 | s2617,s2626,lo_AEP,lo_FHP,s2854 |
| s2876 | R48 | sumlo | lo | APR | 113383/500000 | lo_AEP,s2866,s2854,s2746,s2626 |
| s2879 | R49 | sumlo | lo | AHP | 48141/200000 | s2854,s2840,s2876,lo_FHP,s2638 |
| s2880 | R49 | sumlo | lo | FPR | 418123/1000000 | s2854,s2840,s2876,lo_FHP,s2617 |
| s2882 | R49 | diffhi | hi | HPR | 367201/1000000 | s2617,s2638,s2876,lo_FHP,s2854 |
| s2903 | R51 | sumlo | lo | EFP | 353617/1000000 | s2853,lo_FHP,lo_BFP,s2844,s2653 |
| s2907 | R52 | sumlo | lo | BPR | 299059/1000000 | s2853,s2880,lo_BFP,s2746,s2626 |
| s2921 | R55 | sumlo | lo | CFP | 111913/500000 | lo_CHP,s2880,s2599,lo_FHP,s2882 |
| s2922 | R55 | sumlo | lo | HPR | 295867/1000000 | lo_CHP,s2880,s2599,lo_FHP,s2650 |
| s2924 | R55 | diffhi | hi | CPR | 56559/250000 | s2650,s2882,lo_CHP,s2880,lo_FHP |
| s2929 | R56 | diffhi | hi | EPR | 243877/500000 | s2875,s2638,s2903,s2922,lo_FHP |
| s2937 | R57 | sumlo | lo | AER | 68157/125000 | s2786,s2746,s2876,s2678,s2924 |
| s2944 | R58 | sumlo | lo | EPR | 199313/500000 | s2937,s2880,s2876,s2697,hi_AFR |
| s2952 | R61 | sumlo | lo | BER | 137087/250000 | lo_BCR,s2944,s2907,s2678,s2924 |
| s2953 | R61 | sumlo | lo | CPR | 95393/500000 | lo_BCR,s2944,s2907,s2678,hi_BER |
| s2956 | R62 | sumlo | lo | BFR | 735793/1000000 | s2952,s2880,s2907,s2697,s2929 |
| s2959 | R63 | sumlo | lo | EFR | 441991/1000000 | s2952,lo_FRS,s2956,lo_ERS,s232 |
| s2965 | R65 | sumlo | lo | CFR | 211111/500000 | s2678,s2880,s2953,s2959,s2929 |
| s2967 | R66 | sumlo | lo | EFR | 113353/250000 | s2678,lo_FRS,s2965,lo_ERS,s45 |
| s3025 | R77 | linear | hi | EHP | 484761/1000000 | hi_AEH,lo_AEP,s2879 |
| s3108 | R87 | linear | lo | CEF | 543373/1000000 | hi_CER,s2965,s2967 |
| s3130 | R91 | linear | lo | FPR | 104953/250000 | s2921,s2965,s2924 |
| s3141 | R93 | linear | hi | EFP | 97731/250000 | hi_EFH,s3025,lo_FHP |
| s3149 | R95 | linear | hi | EFR | 229433/500000 | s3141,s2929,s3130 |
| s3152 | R96 | linear | hi | EFS | 136433/500000 | s3149,lo_ERS,lo_FRS |
| s3203 | R107 | linear | hi | EFR | 28571/62500 | s3108,s3152 |
| s3210 | R110 | bary_hi | hi | FRS | 46319/500000 | s2965,s3203 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | FRS | lo_FRS | s3210 |

The two cited bounds give 93/1000 <= |FRS| <= 46319/500000, with exact positive gap 181/500000.

## Leaf A017

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 279/1000 | cost:Q |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:S |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFS | EFS | lo | 93/1000 | cost: |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 347/500 | cost:QS |
| lo_FQR | FQR | lo | 279/1000 | cost:S |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 93/1000 | cost: |
| lo_PQS | PQS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |
| hi_FPR | FPR | hi | 5910719032513459/8473528594069000 | C054 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEH","AEP","AHP","EHP"] | ["fan","AEH","P"] |
| R1 | fan | ["AEH","AEQ","AHQ","EHQ"] | ["fan","AEH","Q"] |
| R2 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R3 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R4 | fan | ["FPR","FPQ","FQR","PQR"] | ["fan","FPR","Q"] |
| R5 | fan | ["FPR","FPS","FRS","PRS"] | ["fan","FPR","S"] |
| R6 | fan | ["FPS","FPQ","FQS","PQS"] | ["fan","FPS","Q"] |
| R7 | fan | ["FQR","FQS","FRS","QRS"] | ["fan","FQR","S"] |
| R8 | plu | ["AEP","AHQ","AEH","APQ","AEQ","AHP"] | ["plu","AEHPQ"] |
| R9 | plu | ["ACR","BCF","ABC","CFR","ACF","BCR"] | ["plu","CABFR"] |
| R10 | plu | ["BCF","CPR","BCP","CFR","BCR","CFP"] | ["plu","CBFPR"] |
| R11 | plu | ["AEQ","EHP","AEH","EPQ","AEP","EHQ"] | ["plu","EAHPQ"] |
| R12 | plu | ["EFS","FPR","EFP","FRS","EFR","FPS"] | ["plu","FEPRS"] |
| R13 | plu | ["FPS","FQR","FPQ","FRS","FPR","FQS"] | ["plu","FPQRS"] |
| R14 | plu | ["APR","EHP","AEP","HPR","AHP","EPR"] | ["plu","PAEHR"] |
| R15 | plu | ["CPS","FPR","CFP","PRS","CPR","FPS"] | ["plu","PCFRS"] |
| R16 | plu | ["FPS","PQR","FPQ","PRS","FPR","PQS"] | ["plu","PFQRS"] |
| R17 | plu | ["EFQ","PQR","EPQ","FQR","EQR","FPQ"] | ["plu","QEFPR"] |
| R18 | plu | ["AFR","CPR","ACR","FPR","APR","CFR"] | ["plu","RACFP"] |
| R19 | plu | ["CQR","FPR","CFR","PQR","CPR","FQR"] | ["plu","RCFPQ"] |
| R20 | plu | ["CRS","FQR","CFR","QRS","CQR","FRS"] | ["plu","RCFQS"] |
| R21 | plu | ["ERS","FQR","EFR","QRS","EQR","FRS"] | ["plu","REFQS"] |
| R22 | plu | ["FQR","PRS","FPR","QRS","FRS","PQR"] | ["plu","RFPQS"] |
| R23 | plu | ["CFS","ERS","CES","FRS","CRS","EFS"] | ["plu","SCEFR"] |
| R24 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R25 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R26 | plu | ["CQS","FPS","CFS","PQS","CPS","FQS"] | ["plu","SCFPQ"] |
| R27 | plu | ["CRS","FQS","CFS","QRS","CQS","FRS"] | ["plu","SCFQR"] |
| R28 | plu | ["EQS","FPS","EFS","PQS","EPS","FQS"] | ["plu","SEFPQ"] |
| R29 | plu | ["ERS","FQS","EFS","QRS","EQS","FRS"] | ["plu","SEFQR"] |
| R30 | linear | [{"AEH":1,"AHP":-1,"AEP":-1,"EHP":-1},"0"] | ["affine_quad","AEHP",1] |
| R31 | linear | [{"AEH":1,"AHQ":-1,"AEQ":-1,"EHQ":-1},"0"] | ["affine_quad","AEHQ",1] |
| R32 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R33 | linear | [{"CPR":-1,"CRS":1,"CPS":1,"PRS":-1},"0"] | ["affine_quad","CPRS",1] |
| R34 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R35 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R36 | linear | [{"FHP":-1,"FPR":-1,"FHR":1,"HPR":1},"0"] | ["affine_quad","FHPR",-1] |
| R37 | linear | [{"FPQ":-1,"FQR":-1,"FPR":1,"PQR":-1},"0"] | ["affine_quad","FPQR",-1] |
| R38 | linear | [{"FPR":1,"FRS":-1,"FPS":-1,"PRS":-1},"0"] | ["affine_quad","FPRS",1] |
| R39 | linear | [{"FQR":1,"FRS":-1,"FQS":-1,"QRS":-1},"0"] | ["affine_quad","FQRS",1] |
| R40 | quad | ["ACF","AFH","93/125"] | ["quad","ACFH","PQ"] |
| R41 | linear | [{"EFR":1,"CER":-1},"0"] | ["right_compare","R","EF"] |
| R42 | bary | [["FPS",1],[["CFP",1],["EFP",1],["FPR",1]],11,[3,3,3]] | ["side_pair_weights","FP","S","CER","3/11"] |
| R43 | bary | [["FQS",1],[["CFQ",1],["EFQ",1],["FQR",1]],11,[3,3,3]] | ["side_pair_weights","FQ","S","CER","3/11"] |
| R44 | linear | [{"FRS":-11,"CFR":5,"EFR":-3},"0"] | ["barycentric","FR","S","CER","lower"] |
| R45 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |
| R46 | linear | [{"CPS":-3,"EPS":5,"PRS":-3},"0"] | ["barycentric","PS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s5 | R0 | sub | hi | EHP | 316233/500000 | hi_AEH,lo_AEP,lo_AHP |
| s7 | R1 | sub | hi | AHQ | 316233/500000 | hi_AEH,lo_AEQ,lo_EHQ |
| s25 | R2 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s26 | R2 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s39 | R4 | sub | hi | FQR | 7993/15625 | hi_FPR,lo_FPQ,lo_PQR |
| s40 | R4 | sub | hi | PQR | 20347/62500 | hi_FPR,lo_FPQ,lo_FQR |
| s41 | R5 | sub | hi | FPS | 7993/15625 | hi_FPR,lo_FRS,lo_PRS |
| s47 | R8 | sumlo | lo | AEP | 115723/1000000 | lo_AEH,lo_APQ,lo_AEQ,lo_AHP,s7 |
| s75 | R11 | sumlo | lo | AEQ | 14883/125000 | lo_AEH,lo_EPQ,s47,lo_EHQ,s5 |
| s102 | R16 | sumlo | lo | PQR | 35769/250000 | lo_FPQ,lo_PRS,lo_FPR,lo_PQS,s41 |
| s104 | R17 | sumlo | lo | EFQ | 159403/1000000 | lo_EPQ,lo_FQR,lo_EQR,lo_FPQ,s40 |
| s107 | R18 | sumlo | lo | CPR | 110559/1000000 | lo_ACR,lo_FPR,lo_APR,lo_CFR,hi_AFR |
| s120 | R22 | sumlo | lo | PRS | 7609/50000 | lo_FPR,lo_QRS,lo_FRS,s102,s39 |
| s126 | R23 | sumlo | lo | CFS | 29567/250000 | lo_CES,lo_FRS,lo_CRS,lo_EFS,s26 |
| s129 | R25 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s25 |
| s130 | R27 | sumlo | lo | FQS | 67167/500000 | s126,lo_QRS,lo_CQS,lo_FRS,s25 |
| s141 | R30 | linear | hi | EHP | 609743/1000000 | hi_AEH,s47,lo_AHP |
| s142 | R31 | linear | hi | AHQ | 303201/500000 | hi_AEH,s75,lo_EHQ |
| s163 | R33 | linear | lo | CPS | 58239/500000 | s107,s25,s120 |
| s165 | R34 | linear | lo | EFP | 345403/1000000 | s104,lo_EPQ,lo_FPQ |
| s169 | R35 | linear | lo | EQR | 76067/250000 | s129,lo_ERS,lo_QRS |
| s171 | R36 | linear | lo | HPR | 236697/1000000 | lo_FHP,hi_FHR,lo_FPR |
| s173 | R37 | linear | hi | FQR | 115369/250000 | lo_FPQ,hi_FPR,s102 |
| s176 | R38 | linear | hi | FPS | 113093/250000 | hi_FPR,lo_FRS,s120 |
| s177 | R39 | linear | lo | FQR | 160167/500000 | s130,lo_FRS,lo_QRS |
| s179 | R40 | quad | lo | ACF | 9593/40000 | hi_AFH |
| s192 | R41 | linear | lo | EFR | 279/1000 | lo_CER |
| s224 | R42 | bary_lo | lo | FPS | 410291/1000000 | lo_CFP,s165,lo_FPR |
| s226 | R43 | bary_lo | lo | FQS | 17311/100000 | lo_CFQ,s104,s177 |
| s228 | R44 | linear | lo | CFR | 93/250 | s192,lo_FRS |
| s231 | R45 | bary_hi | lo | PQS | 106657/1000000 | lo_CPQ,lo_EPQ,s102 |
| s234 | R46 | linear | lo | EPS | 80597/500000 | s163,s120 |
| s241 | R3 | sum | lo | EPR | 203187/500000 | s234,lo_ERS,s120 |
| s244 | R5 | sub | hi | FRS | 135081/1000000 | hi_FPR,s224,s120 |
| s246 | R6 | sub | hi | FPQ | 34521/200000 | s176,s226,s231 |
| s247 | R6 | sub | hi | FQS | 50543/200000 | s176,lo_FPQ,s231 |
| s249 | R7 | sum | lo | FQR | 35911/100000 | s226,lo_FRS,lo_QRS |
| s257 | R8 | sumlo | lo | AEP | 62347/500000 | lo_AEH,lo_APQ,s75,lo_AHP,s142 |
| s264 | R9 | sumlo | lo | ACR | 111067/1000000 | lo_ABC,s228,s179,lo_BCR,hi_BCF |
| s270 | R10 | sumlo | lo | CPR | 59089/500000 | lo_BCP,s228,lo_BCR,lo_CFP,hi_BCF |
| s300 | R12 | sumlo | lo | EFS | 105077/500000 | s165,lo_FRS,s192,s224,hi_FPR |
| s302 | R13 | diff | lo | FQS | 177799/1000000 | s224,s249,s246,s244,hi_FPR |
| s303 | R14 | sumlo | lo | APR | 55193/500000 | s257,s171,lo_AHP,s241,s141 |
| s311 | R15 | sumlo | lo | CPS | 65189/500000 | lo_CFP,s120,s270,s224,hi_FPR |
| s319 | R16 | sumlo | lo | PQR | 194911/1000000 | lo_FPQ,s120,lo_FPR,s231,s176 |
| s327 | R18 | sumlo | lo | CPR | 36087/250000 | s264,lo_FPR,s303,s228,hi_AFR |
| s345 | R19 | sumlo | lo | CQR | 178257/1000000 | s228,s319,s327,s249,hi_FPR |
| s348 | R20 | sumlo | lo | CRS | 110891/1000000 | s228,lo_QRS,s345,lo_FRS,s173 |
| s356 | R21 | sumlo | lo | ERS | 14693/125000 | s192,lo_QRS,s169,lo_FRS,s173 |
| s362 | R22 | sumlo | lo | PRS | 179139/1000000 | lo_FPR,lo_QRS,lo_FRS,s319,s173 |
| s389 | R23 | sumlo | lo | CFS | 109233/500000 | lo_CES,lo_FRS,s348,s300,s26 |
| s391 | R24 | sumlo | lo | EPS | 54671/250000 | lo_CES,s362,s311,s356,s25 |
| s394 | R26 | sumlo | lo | CQS | 102751/1000000 | s389,s231,s311,s302,s176 |
| s398 | R27 | sumlo | lo | CRS | 1847/15625 | s389,lo_QRS,s394,lo_FRS,s247 |
| s399 | R27 | sumlo | lo | FQS | 40849/200000 | s389,lo_QRS,s394,lo_FRS,s25 |
| s404 | R28 | sumlo | lo | EQS | 148283/1000000 | s300,s231,s391,s399,s176 |
| s409 | R29 | sumlo | lo | ERS | 65953/500000 | s300,lo_QRS,s404,lo_FRS,s247 |
| s461 | R32 | linear | lo | CER | 171557/500000 | lo_CES,s398,s409 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | CER | s461 | hi_CER |

The two cited bounds give 171557/500000 <= |CER| <= 425542517939/1280750000000, with exact positive gap 13900737561/1280750000000.

## Leaf A018

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABF | ABF | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AES | AES | lo | 93/1000 | cost: |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 279/1000 | cost:P |
| lo_AFR | AFR | lo | 347/500 | cost:PQ |
| lo_AFS | AFS | lo | 347/500 | cost:PQ |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_AQS | AQS | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:Q |
| lo_CFS | CFS | lo | 279/1000 | cost:Q |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEF","AEP","AFP","EFP"] | ["fan","AEF","P"] |
| R1 | fan | ["AFR","AFQ","AQR","FQR"] | ["fan","AFR","Q"] |
| R2 | fan | ["AFS","AFQ","AQS","FQS"] | ["fan","AFS","Q"] |
| R3 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R4 | plu | ["ABR","ACF","ABC","AFR","ABF","ACR"] | ["plu","ABCFR"] |
| R5 | plu | ["ABS","ACF","ABC","AFS","ABF","ACS"] | ["plu","ABCFS"] |
| R6 | plu | ["AEP","AFQ","AEF","APQ","AEQ","AFP"] | ["plu","AEFPQ"] |
| R7 | plu | ["AEF","AQS","AEQ","AFS","AES","AFQ"] | ["plu","AEFQS"] |
| R8 | plu | ["AEQ","EFP","AEF","EPQ","AEP","EFQ"] | ["plu","EAFPQ"] |
| R9 | plu | ["AFR","EFQ","AEF","FQR","AFQ","EFR"] | ["plu","FAEQR"] |
| R10 | plu | ["AEQ","FPQ","AFQ","EPQ","APQ","EFQ"] | ["plu","QAEFP"] |
| R11 | plu | ["AQR","EFQ","AEQ","FQR","AFQ","EQR"] | ["plu","QAEFR"] |
| R12 | plu | ["ACR","BFR","ABR","CFR","AFR","BCR"] | ["plu","RABCF"] |
| R13 | plu | ["AER","CFR","ACR","EFR","AFR","CER"] | ["plu","RACEF"] |
| R14 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R15 | plu | ["ACS","BFS","ABS","CFS","AFS","BCS"] | ["plu","SABCF"] |
| R16 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R17 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R18 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R19 | linear | [{"AEF":1,"AFP":-1,"AEP":-1,"EFP":-1},"0"] | ["affine_quad","AEFP",1] |
| R20 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R21 | linear | [{"AFP":-1,"APQ":-1,"AFQ":1,"FPQ":-1},"0"] | ["affine_quad","AFPQ",1] |
| R22 | linear | [{"AFQ":-1,"AQR":-1,"AFR":1,"FQR":-1},"0"] | ["affine_quad","AFQR",1] |
| R23 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R24 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R25 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s9 | R0 | sub | hi | EFP | 570997/1000000 | hi_AEF,lo_AEP,lo_AFP |
| s21 | R1 | sub | hi | AQR | 223233/500000 | hi_AFR,lo_AFQ,lo_FQR |
| s26 | R2 | sub | hi | AFQ | 538543/1000000 | hi_AFS,lo_AQS,lo_FQS |
| s27 | R2 | sub | hi | AQS | 352543/1000000 | hi_AFS,lo_AFQ,lo_FQS |
| s47 | R3 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s64 | R4 | sumlo | lo | ABR | 3713/31250 | lo_ABC,lo_AFR,lo_ABF,lo_ACR,hi_ACF |
| s65 | R5 | sumlo | lo | ABS | 3713/31250 | lo_ABC,lo_AFS,lo_ABF,lo_ACS,hi_ACF |
| s75 | R6 | sumlo | lo | AEP | 27181/200000 | lo_AEF,lo_APQ,lo_AEQ,lo_AFP,s26 |
| s83 | R7 | diffhi | hi | AEQ | 347157/1000000 | hi_AEF,s27,lo_AES,lo_AFQ,lo_AFS |
| s116 | R8 | sumlo | lo | AEQ | 135169/1000000 | lo_AEF,lo_EPQ,s75,lo_EFQ,s9 |
| s136 | R9 | sumlo | lo | EFQ | 173963/1000000 | lo_AEF,lo_FQR,lo_AFQ,lo_EFR,hi_AFR |
| s146 | R10 | sumlo | lo | FPQ | 1896/15625 | lo_AFQ,lo_EPQ,lo_APQ,s136,s83 |
| s148 | R11 | sumlo | lo | EFQ | 40501/200000 | s116,lo_FQR,lo_AFQ,lo_EQR,s21 |
| s154 | R12 | sumlo | lo | ACR | 54497/500000 | s64,lo_CFR,lo_AFR,lo_BCR,hi_BFR |
| s158 | R13 | sumlo | lo | AER | 380667/1000000 | s154,lo_EFR,lo_AFR,lo_CER,hi_CFR |
| s163 | R14 | sumlo | lo | ARS | 75929/500000 | s158,lo_FRS,lo_AFR,lo_ERS,hi_EFR |
| s170 | R15 | sumlo | lo | ACS | 61707/500000 | s65,lo_CFS,lo_AFS,lo_BCS,hi_BFS |
| s174 | R16 | sumlo | lo | AES | 175031/1000000 | s170,lo_ERS,s163,lo_CES,s47 |
| s177 | R17 | sumlo | lo | EFS | 64767/250000 | s174,lo_FRS,lo_AFS,lo_ERS,hi_ARS |
| s181 | R18 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s47 |
| s194 | R19 | linear | hi | EFP | 132023/250000 | hi_AEF,s75,lo_AFP |
| s209 | R21 | linear | lo | AFQ | 19209/62500 | lo_AFP,lo_APQ,s146 |
| s213 | R22 | linear | hi | AQR | 209061/500000 | s209,hi_AFR,lo_FQR |
| s246 | R23 | linear | lo | EFP | 416849/1000000 | s148,lo_EPQ,s146 |
| s249 | R23 | linear | hi | FPQ | 232587/1000000 | s194,s148,lo_EPQ |
| s250 | R24 | linear | lo | EFR | 111267/250000 | s177,lo_ERS,lo_FRS |
| s256 | R25 | linear | lo | EQR | 76067/250000 | s181,lo_ERS,lo_QRS |
| s289 | R0 | sub | hi | AEP | 61787/250000 | hi_AEF,lo_AFP,s246 |
| s336 | R6 | sumlo | lo | AFQ | 31201/100000 | lo_AEF,lo_APQ,s116,lo_AFP,s289 |
| s402 | R9 | sumlo | lo | EFQ | 248523/1000000 | lo_AEF,lo_FQR,s336,s250,hi_AFR |
| s432 | R10 | sumlo | lo | AEQ | 224129/1000000 | s336,lo_EPQ,lo_APQ,s402,s249 |
| s439 | R11 | sumlo | lo | EFQ | 276901/1000000 | s432,lo_FQR,s336,s256,s213 |
| s558 | R20 | linear | lo | AEF | 10163/12500 | s432,s336,s439 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AEF | s558 | hi_AEF |

The two cited bounds give 10163/12500 <= |AEF| <= 34759349289/45917449000, with exact positive gap 64334336149/1147936225000.

## Leaf A019

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACE | ACE | lo | 93/1000 | cost: |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 279/1000 | cost:Q |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFP | EFP | lo | 279/1000 | cost:Q |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EHP | EHP | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 347/500 | cost:QS |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FHS | FHS | lo | 279/1000 | cost:Q |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCR | BCR | hi | 279/2000 | C047 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_EPR | EPR | hi | 16552369677919/26245129000000 | C021 |
| hi_HRS | HRS | hi | 3505826817068943/12904724294000000 | C049 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEH","AEP","AHP","EHP"] | ["fan","AEH","P"] |
| R1 | fan | ["AEH","AEQ","AHQ","EHQ"] | ["fan","AEH","Q"] |
| R2 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R3 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R4 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R5 | fan | ["BFR","BFQ","BQR","FQR"] | ["fan","BFR","Q"] |
| R6 | fan | ["CEH","CEQ","CHQ","EHQ"] | ["fan","CEH","Q"] |
| R7 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R8 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R9 | fan | ["EHR","EHQ","EQR","HQR"] | ["fan","EHR","Q"] |
| R10 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R11 | fan | ["EHS","EHQ","EQS","HQS"] | ["fan","EHS","Q"] |
| R12 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R13 | fan | ["FPS","FPQ","FQS","PQS"] | ["fan","FPS","Q"] |
| R14 | plu | ["ABE","ACH","ABC","AEH","ABH","ACE"] | ["plu","ABCEH"] |
| R15 | plu | ["ABF","AEP","ABE","AFP","ABP","AEF"] | ["plu","ABEFP"] |
| R16 | plu | ["ACF","AEH","ACE","AFH","ACH","AEF"] | ["plu","ACEFH"] |
| R17 | plu | ["ACP","AEH","ACE","AHP","ACH","AEP"] | ["plu","ACEHP"] |
| R18 | plu | ["ACE","AHR","ACH","AER","ACR","AEH"] | ["plu","ACEHR"] |
| R19 | plu | ["ACP","AFH","ACF","AHP","ACH","AFP"] | ["plu","ACFHP"] |
| R20 | plu | ["AEP","AFH","AEF","AHP","AEH","AFP"] | ["plu","AEFHP"] |
| R21 | plu | ["AFH","APR","AFP","AHR","AFR","AHP"] | ["plu","AFHPR"] |
| R22 | plu | ["ABE","BCF","ABC","BEF","ABF","BCE"] | ["plu","BACEF"] |
| R23 | plu | ["ABR","BCF","ABC","BFR","ABF","BCR"] | ["plu","BACFR"] |
| R24 | plu | ["ABE","BFR","ABF","BER","ABR","BEF"] | ["plu","BAEFR"] |
| R25 | plu | ["ACR","BCF","ABC","CFR","ACF","BCR"] | ["plu","CABFR"] |
| R26 | plu | ["ACE","CHR","ACH","CER","ACR","CEH"] | ["plu","CAEHR"] |
| R27 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R28 | plu | ["BCF","CHR","BCH","CFR","BCR","CFH"] | ["plu","CBFHR"] |
| R29 | plu | ["CFR","CPQ","CFP","CQR","CFQ","CPR"] | ["plu","CFPQR"] |
| R30 | plu | ["ACE","BEF","ABE","CEF","AEF","BCE"] | ["plu","EABCF"] |
| R31 | plu | ["ACE","BEH","ABE","CEH","AEH","BCE"] | ["plu","EABCH"] |
| R32 | plu | ["AEF","BEP","ABE","EFP","AEP","BEF"] | ["plu","EABFP"] |
| R33 | plu | ["AEH","BEP","ABE","EHP","AEP","BEH"] | ["plu","EABHP"] |
| R34 | plu | ["AER","BEQ","ABE","EQR","AEQ","BER"] | ["plu","EABQR"] |
| R35 | plu | ["AEF","CEP","ACE","EFP","AEP","CEF"] | ["plu","EACFP"] |
| R36 | plu | ["AEH","CEP","ACE","EHP","AEP","CEH"] | ["plu","EACHP"] |
| R37 | plu | ["AER","CEH","ACE","EHR","AEH","CER"] | ["plu","EACHR"] |
| R38 | plu | ["AES","CER","ACE","ERS","AER","CES"] | ["plu","EACRS"] |
| R39 | plu | ["AEF","EHR","AEH","EFR","AER","EFH"] | ["plu","EAFHR"] |
| R40 | plu | ["AEF","EPR","AEP","EFR","AER","EFP"] | ["plu","EAFPR"] |
| R41 | plu | ["AEQ","EHP","AEH","EPQ","AEP","EHQ"] | ["plu","EAHPQ"] |
| R42 | plu | ["AER","EHS","AEH","ERS","AES","EHR"] | ["plu","EAHRS"] |
| R43 | plu | ["AEQ","EPR","AEP","EQR","AER","EPQ"] | ["plu","EAPQR"] |
| R44 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R45 | plu | ["BER","CEP","BCE","EPR","BEP","CER"] | ["plu","EBCPR"] |
| R46 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R47 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R48 | plu | ["BEF","EHR","BEH","EFR","BER","EFH"] | ["plu","EBFHR"] |
| R49 | plu | ["BER","EHS","BEH","ERS","BES","EHR"] | ["plu","EBHRS"] |
| R50 | plu | ["BEQ","EPR","BEP","EQR","BER","EPQ"] | ["plu","EBPQR"] |
| R51 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R52 | plu | ["CER","EPS","CEP","ERS","CES","EPR"] | ["plu","ECPRS"] |
| R53 | plu | ["AEF","BFP","ABF","EFP","AFP","BEF"] | ["plu","FABEP"] |
| R54 | plu | ["AEF","CFP","ACF","EFP","AFP","CEF"] | ["plu","FACEP"] |
| R55 | plu | ["AFR","CFH","ACF","FHR","AFH","CFR"] | ["plu","FACHR"] |
| R56 | plu | ["AFQ","CFR","ACF","FQR","AFR","CFQ"] | ["plu","FACQR"] |
| R57 | plu | ["BEF","CFP","BCF","EFP","BFP","CEF"] | ["plu","FBCEP"] |
| R58 | plu | ["BFQ","CFR","BCF","FQR","BFR","CFQ"] | ["plu","FBCQR"] |
| R59 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R60 | plu | ["CEF","FPR","CFP","EFR","CFR","EFP"] | ["plu","FCEPR"] |
| R61 | plu | ["CFR","EFQ","CEF","FQR","CFQ","EFR"] | ["plu","FCEQR"] |
| R62 | plu | ["CFR","FHQ","CFH","FQR","CFQ","FHR"] | ["plu","FCHQR"] |
| R63 | plu | ["CFR","FPQ","CFP","FQR","CFQ","FPR"] | ["plu","FCPQR"] |
| R64 | plu | ["CFS","FPQ","CFP","FQS","CFQ","FPS"] | ["plu","FCPQS"] |
| R65 | plu | ["AHP","BEH","ABH","EHP","AEH","BHP"] | ["plu","HABEP"] |
| R66 | plu | ["AEH","CFH","ACH","EFH","AFH","CEH"] | ["plu","HACEF"] |
| R67 | plu | ["AHR","CEH","ACH","EHR","AEH","CHR"] | ["plu","HACER"] |
| R68 | plu | ["AEH","FHR","AFH","EHR","AHR","EFH"] | ["plu","HAEFR"] |
| R69 | plu | ["BHR","CEH","BCH","EHR","BEH","CHR"] | ["plu","HBCER"] |
| R70 | plu | ["BHS","FHR","BFH","HRS","BHR","FHS"] | ["plu","HBFRS"] |
| R71 | plu | ["CEH","HPR","CHP","EHR","CHR","EHP"] | ["plu","HCEPR"] |
| R72 | plu | ["EHS","HQR","EHQ","HRS","EHR","HQS"] | ["plu","HEQRS"] |
| R73 | plu | ["AHP","BEP","ABP","EHP","AEP","BHP"] | ["plu","PABEH"] |
| R74 | plu | ["AEP","FHP","AFP","EHP","AHP","EFP"] | ["plu","PAEFH"] |
| R75 | plu | ["BCP","EHP","BEP","CHP","BHP","CEP"] | ["plu","PBCEH"] |
| R76 | plu | ["BCP","FHP","BFP","CHP","BHP","CFP"] | ["plu","PBCFH"] |
| R77 | plu | ["BQR","FHQ","BFQ","HQR","BHQ","FQR"] | ["plu","QBFHR"] |
| R78 | plu | ["BQS","HQR","BHQ","QRS","BQR","HQS"] | ["plu","QBHRS"] |
| R79 | plu | ["CQR","EFQ","CEQ","FQR","CFQ","EQR"] | ["plu","QCEFR"] |
| R80 | plu | ["AER","CPR","ACR","EPR","APR","CER"] | ["plu","RACEP"] |
| R81 | plu | ["AFR","CPR","ACR","FPR","APR","CFR"] | ["plu","RACFP"] |
| R82 | plu | ["AQR","EHR","AER","HQR","AHR","EQR"] | ["plu","RAEHQ"] |
| R83 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R84 | plu | ["BQR","EHR","BER","HQR","BHR","EQR"] | ["plu","RBEHQ"] |
| R85 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R86 | plu | ["CQR","EHR","CER","HQR","CHR","EQR"] | ["plu","RCEHQ"] |
| R87 | plu | ["EFR","HRS","EHR","FRS","ERS","FHR"] | ["plu","REFHS"] |
| R88 | plu | ["EFR","PRS","EPR","FRS","ERS","FPR"] | ["plu","REFPS"] |
| R89 | plu | ["EHR","PQR","EPR","HQR","EQR","HPR"] | ["plu","REHPQ"] |
| R90 | plu | ["EQR","HRS","EHR","QRS","ERS","HQR"] | ["plu","REHQS"] |
| R91 | plu | ["ARS","EHS","AES","HRS","AHS","ERS"] | ["plu","SAEHR"] |
| R92 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R93 | plu | ["BRS","EQS","BES","QRS","BQS","ERS"] | ["plu","SBEQR"] |
| R94 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R95 | plu | ["CRS","EHS","CES","HRS","CHS","ERS"] | ["plu","SCEHR"] |
| R96 | plu | ["EFS","HRS","EHS","FRS","ERS","FHS"] | ["plu","SEFHR"] |
| R97 | plu | ["EFS","PRS","EPS","FRS","ERS","FPS"] | ["plu","SEFPR"] |
| R98 | plu | ["EQS","HRS","EHS","QRS","ERS","HQS"] | ["plu","SEHQR"] |
| R99 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R100 | linear | [{"AEF":-1,"AFH":-1,"AEH":1,"EFH":1},"0"] | ["affine_quad","AEFH",-1] |
| R101 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R102 | linear | [{"AEH":1,"AHP":-1,"AEP":-1,"EHP":-1},"0"] | ["affine_quad","AEHP",1] |
| R103 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R104 | linear | [{"AFH":1,"AHP":-1,"AFP":-1,"FHP":-1},"0"] | ["affine_quad","AFHP",1] |
| R105 | linear | [{"AFH":-1,"AHQ":1,"AFQ":-1,"FHQ":1},"0"] | ["affine_quad","AFHQ",-1] |
| R106 | linear | [{"AFQ":-1,"AQR":-1,"AFR":1,"FQR":-1},"0"] | ["affine_quad","AFQR",1] |
| R107 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R108 | linear | [{"BCH":-1,"BHR":1,"BCR":1,"CHR":-1},"0"] | ["affine_quad","BCHR",-1] |
| R109 | linear | [{"BEF":-1,"BFH":-1,"BEH":1,"EFH":1},"0"] | ["affine_quad","BEFH",-1] |
| R110 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R111 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R112 | linear | [{"BFH":1,"BHP":-1,"BFP":-1,"FHP":-1},"0"] | ["affine_quad","BFHP",1] |
| R113 | linear | [{"BFH":-1,"BHQ":1,"BFQ":-1,"FHQ":1},"0"] | ["affine_quad","BFHQ",-1] |
| R114 | linear | [{"BFH":-1,"BHR":1,"BFR":-1,"FHR":1},"0"] | ["affine_quad","BFHR",-1] |
| R115 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R116 | linear | [{"BQR":1,"BRS":-1,"BQS":-1,"QRS":1},"0"] | ["affine_quad","BQRS",-1] |
| R117 | linear | [{"CEF":1,"CFQ":-1,"CEQ":-1,"EFQ":-1},"0"] | ["affine_quad","CEFQ",1] |
| R118 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R119 | linear | [{"CEF":-1,"CFS":1,"CES":-1,"EFS":1},"0"] | ["affine_quad","CEFS",-1] |
| R120 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R121 | linear | [{"CEH":-1,"CHS":1,"CES":-1,"EHS":1},"0"] | ["affine_quad","CEHS",-1] |
| R122 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R123 | linear | [{"CFH":-1,"CHQ":1,"CFQ":-1,"FHQ":1},"0"] | ["affine_quad","CFHQ",-1] |
| R124 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R125 | linear | [{"CFQ":-1,"CQS":-1,"CFS":1,"FQS":-1},"0"] | ["affine_quad","CFQS",1] |
| R126 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R127 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R128 | linear | [{"CQR":-1,"CRS":1,"CQS":1,"QRS":-1},"0"] | ["affine_quad","CQRS",1] |
| R129 | linear | [{"EFH":1,"EHP":1,"EFP":-1,"FHP":-1},"0"] | ["affine_quad","EFHP",1] |
| R130 | linear | [{"EFH":1,"EHQ":1,"EFQ":-1,"FHQ":-1},"0"] | ["affine_quad","EFHQ",1] |
| R131 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R132 | linear | [{"EFH":1,"EHS":1,"EFS":-1,"FHS":-1},"0"] | ["affine_quad","EFHS",1] |
| R133 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R134 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R135 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R136 | linear | [{"EHQ":-1,"EQS":-1,"EHS":1,"HQS":-1},"0"] | ["affine_quad","EHQS",-1] |
| R137 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R138 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R139 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R140 | linear | [{"FHQ":-1,"FQR":-1,"FHR":1,"HQR":-1},"0"] | ["affine_quad","FHQR",-1] |
| R141 | linear | [{"FHQ":-1,"FQS":-1,"FHS":1,"HQS":-1},"0"] | ["affine_quad","FHQS",-1] |
| R142 | linear | [{"FPQ":-1,"FQR":-1,"FPR":1,"PQR":-1},"0"] | ["affine_quad","FPQR",-1] |
| R143 | quad | ["CEF","CER","93/125"] | ["quad","CREF","QS"] |
| R144 | quad | ["CFS","CRS","449/1000"] | ["quad","CRSF","Q"] |
| R145 | bary | [["AES",-1],[["ACE",-1],null,["AER",-1]],11,[3,3,3]] | ["side_pair_weights","AE","S","CER","3/11"] |
| R146 | bary | [["AHS",-1],[["ACH",-1],["AEH",-1],["AHR",-1]],11,[3,3,3]] | ["side_pair_weights","AH","S","CER","3/11"] |
| R147 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R148 | bary | [["BHS",-1],[["BCH",-1],["BEH",-1],["BHR",-1]],11,[3,3,3]] | ["side_pair_weights","BH","S","CER","3/11"] |
| R149 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R150 | bary | [["EPS",1],[["CEP",1],null,["EPR",1]],11,[3,3,3]] | ["side_pair_weights","EP","S","CER","3/11"] |
| R151 | linear | [{"CFS":-3,"EFS":5,"FRS":-3},"0"] | ["barycentric","FS","S","CER","upper"] |
| R152 | bary | [["HRS",1],[["CHR",-1],["EHR",1],null],11,[3,3,3]] | ["side_pair_weights","HR","S","CER","3/11"] |
| R153 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s7 | R0 | sub | hi | AEP | 223233/500000 | hi_AEH,lo_AHP,lo_EHP |
| s8 | R0 | sub | hi | EHP | 316233/500000 | hi_AEH,lo_AEP,lo_AHP |
| s38 | R7 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s52 | R9 | sub | hi | EQR | 547371/1000000 | hi_EHR,lo_EHQ,lo_HQR |
| s54 | R10 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s67 | R14 | sumlo | lo | ABE | 145169/1000000 | lo_ABC,lo_AEH,lo_ABH,lo_ACE,hi_ACH |
| s69 | R18 | sumlo | lo | ACE | 173963/1000000 | lo_ACH,lo_AER,lo_ACR,lo_AEH,hi_AHR |
| s71 | R20 | sumlo | lo | AEP | 179479/1000000 | lo_AEF,lo_AHP,lo_AEH,lo_AFP,hi_AFH |
| s86 | R27 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s87 | R27 | sumlo | lo | CHR | 44673/200000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_BCE |
| s90 | R33 | sumlo | lo | BEP | 20167/100000 | s67,lo_EHP,s71,lo_BEH,hi_AEH |
| s104 | R41 | sumlo | lo | AEQ | 128439/1000000 | lo_AEH,lo_EPQ,s71,lo_EHQ,s8 |
| s109 | R44 | sumlo | lo | CEH | 476613/1000000 | s86,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s111 | R45 | sumlo | lo | CEP | 79213/500000 | s86,lo_EPR,s90,lo_CER,hi_BER |
| s120 | R51 | sumlo | lo | EHS | 65531/200000 | s109,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s121 | R52 | sumlo | lo | EPS | 24487/200000 | s111,lo_ERS,lo_CES,lo_EPR,hi_CER |
| s129 | R67 | sumlo | lo | AHR | 367147/1000000 | lo_ACH,lo_EHR,lo_AEH,s87,hi_CEH |
| s133 | R69 | sumlo | lo | BHR | 367147/1000000 | lo_BCH,lo_EHR,lo_BEH,s87,hi_CEH |
| s137 | R72 | sumlo | lo | HQR | 133713/1000000 | lo_EHQ,lo_HRS,lo_EHR,lo_HQS,s54 |
| s140 | R74 | sumlo | lo | FHP | 14529/125000 | lo_AFP,lo_EHP,lo_AHP,lo_EFP,s7 |
| s150 | R83 | sumlo | lo | CHR | 256793/1000000 | lo_BCR,lo_EHR,s133,lo_CER,hi_BER |
| s155 | R86 | sumlo | lo | CQR | 74281/500000 | lo_CER,s137,s150,lo_EQR,hi_EHR |
| s161 | R90 | sumlo | lo | HRS | 14063/100000 | lo_EHR,lo_QRS,lo_ERS,s137,s52 |
| s167 | R98 | sumlo | lo | EQS | 144001/1000000 | s120,lo_QRS,lo_ERS,lo_HQS,hi_HRS |
| s170 | R101 | linear | lo | AEF | 314439/1000000 | s104,lo_AFQ,lo_EFQ |
| s175 | R104 | linear | lo | AFH | 37779/125000 | lo_AFP,lo_AHP,s140 |
| s184 | R108 | linear | lo | BHR | 396293/1000000 | lo_BCH,hi_BCR,s150 |
| s200 | R120 | linear | lo | CEH | 154633/250000 | hi_CER,s150,lo_EHR |
| s201 | R120 | linear | hi | CHR | 117571/200000 | hi_CEH,hi_CER,lo_EHR |
| s204 | R124 | linear | lo | CFR | 167281/500000 | lo_CFQ,s155,lo_FQR |
| s223 | R135 | linear | hi | EQR | 253329/500000 | lo_EHQ,hi_EHR,s137 |
| s226 | R137 | linear | hi | EHS | 499741/1000000 | hi_EHR,lo_ERS,s161 |
| s227 | R138 | linear | lo | EPR | 61687/200000 | s121,lo_ERS,lo_PRS |
| s228 | R139 | linear | lo | EQR | 330001/1000000 | s167,lo_ERS,lo_QRS |
| s231 | R140 | linear | lo | FHR | 319713/1000000 | lo_FHQ,lo_FQR,s137 |
| s233 | R143 | quad | lo | CEF | 411739/1000000 | hi_CER |
| s235 | R144 | quad | lo | CFS | 302739/1000000 | s38 |
| s239 | R146 | bary_hi | lo | AHS | 416221/1000000 | lo_ACH,lo_AEH,s129 |
| s245 | R148 | bary_hi | lo | BHS | 42417/100000 | lo_BCH,lo_BEH,s184 |
| s251 | R149 | bary_lo | hi | CHS | 295979/500000 | hi_CEH,s201 |
| s254 | R150 | bary_lo | lo | EPS | 5093/40000 | s111,s227 |
| s258 | R151 | linear | lo | EFS | 237443/1000000 | s235,lo_FRS |
| s261 | R152 | bary_hi | hi | HRS | 65829/250000 | s150,hi_EHR |
| s271 | R8 | sum | lo | EFR | 423443/1000000 | s258,lo_ERS,lo_FRS |
| s277 | R12 | sum | lo | EPR | 12533/40000 | s254,lo_ERS,lo_PRS |
| s281 | R14 | sumlo | lo | ABE | 20013/125000 | lo_ABC,lo_AEH,lo_ABH,s69,hi_ACH |
| s290 | R20 | sumlo | lo | AEP | 5813/31250 | s170,lo_AHP,lo_AEH,lo_AFP,hi_AFH |
| s306 | R27 | sumlo | lo | BCE | 57567/250000 | lo_BCH,lo_CER,lo_BCR,s200,s201 |
| s307 | R27 | sumlo | lo | CHR | 291321/1000000 | lo_BCH,lo_CER,lo_BCR,s200,hi_BCE |
| s310 | R31 | sumlo | lo | ACE | 52271/200000 | s281,s200,lo_AEH,s306,hi_BEH |
| s316 | R36 | sumlo | lo | CEP | 229667/1000000 | s310,lo_EHP,s290,s200,hi_AEH |
| s318 | R37 | sumlo | lo | AER | 12341/31250 | s310,lo_EHR,lo_AEH,lo_CER,hi_CEH |
| s321 | R38 | sumlo | lo | AES | 183689/1000000 | s310,lo_ERS,s318,lo_CES,hi_CER |
| s323 | R39 | sumlo | lo | AEF | 45079/100000 | lo_AEH,s271,s318,lo_EFH,hi_EHR |
| s331 | R44 | sumlo | lo | BER | 11631/31250 | s306,lo_EHR,lo_BEH,lo_CER,hi_CEH |
| s334 | R47 | sumlo | lo | BES | 168629/1000000 | s306,lo_ERS,s331,lo_CES,hi_CER |
| s339 | R51 | sumlo | lo | EHS | 183689/500000 | s200,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s340 | R52 | sumlo | lo | EPS | 151983/1000000 | s316,lo_ERS,lo_CES,s277,hi_CER |
| s349 | R61 | sumlo | lo | EFQ | 5279/40000 | s233,lo_FQR,lo_CFQ,s271,hi_CFR |
| s350 | R66 | sumlo | lo | CFH | 52021/200000 | lo_ACH,lo_EFH,s175,s200,hi_AEH |
| s352 | R67 | sumlo | lo | AHR | 104203/250000 | lo_ACH,lo_EHR,lo_AEH,s307,hi_CEH |
| s354 | R69 | sumlo | lo | BHR | 104203/250000 | lo_BCH,lo_EHR,lo_BEH,s307,hi_CEH |
| s355 | R71 | sumlo | lo | HPR | 153561/1000000 | lo_CHP,lo_EHR,s307,lo_EHP,hi_CEH |
| s362 | R72 | sumlo | lo | HQR | 155321/1000000 | lo_EHQ,s161,lo_EHR,lo_HQS,s226 |
| s374 | R82 | sumlo | lo | AQR | 54239/200000 | s318,s362,s352,s228,hi_EHR |
| s379 | R84 | sumlo | lo | BQR | 266383/1000000 | s331,s362,s354,s228,hi_EHR |
| s381 | R86 | sumlo | lo | CQR | 190177/1000000 | lo_CER,s362,s307,s228,hi_EHR |
| s384 | R89 | sumlo | lo | PQR | 67729/500000 | s277,s362,s228,s355,hi_EHR |
| s385 | R90 | sumlo | lo | HRS | 155897/1000000 | lo_EHR,lo_QRS,lo_ERS,s362,s223 |
| s389 | R91 | sumlo | lo | ARS | 3369/25000 | s321,s385,s239,lo_ERS,s226 |
| s392 | R92 | sumlo | lo | BRS | 131541/1000000 | s334,s385,s245,lo_ERS,s226 |
| s394 | R94 | sumlo | lo | EFS | 25163/100000 | lo_CES,lo_FRS,s235,lo_ERS,s38 |
| s397 | R98 | sumlo | lo | EQS | 162599/1000000 | s339,lo_QRS,lo_ERS,lo_HQS,s261 |
| s398 | R100 | linear | hi | AEF | 175349/250000 | hi_AEH,s175,hi_EFH |
| s402 | R103 | linear | lo | AER | 411449/1000000 | s321,s389,lo_ERS |
| s403 | R106 | linear | lo | AFR | 91439/200000 | lo_AFQ,s374,lo_FQR |
| s405 | R108 | linear | lo | BHR | 430821/1000000 | lo_BCH,hi_BCR,s307 |
| s408 | R111 | linear | lo | BER | 39317/100000 | s334,s392,lo_ERS |
| s411 | R115 | linear | lo | BFR | 452383/1000000 | lo_BFQ,s379,lo_FQR |
| s416 | R118 | linear | lo | CEF | 26609/62500 | hi_CER,s204,s271 |
| s417 | R120 | linear | lo | CEH | 32653/50000 | hi_CER,s307,lo_EHR |
| s422 | R124 | linear | lo | CFR | 376177/1000000 | lo_CFQ,s381,lo_FQR |
| s425 | R126 | linear | lo | CFS | 80729/250000 | s422,s38,lo_FRS |
| s426 | R127 | linear | hi | CHR | 291161/500000 | s251,s38,s385 |
| s431 | R131 | linear | hi | EFR | 29941/50000 | hi_EFH,hi_EHR,s231 |
| s433 | R132 | linear | hi | EFS | 25369/62500 | hi_EFH,s226,lo_FHS |
| s435 | R133 | linear | lo | EFP | 12719/40000 | s349,lo_EPQ,lo_FPQ |
| s437 | R134 | linear | lo | EFR | 43763/100000 | s394,lo_ERS,lo_FRS |
| s441 | R135 | linear | hi | EQR | 9701/20000 | lo_EHQ,hi_EHR,s362 |
| s443 | R137 | linear | hi | EHS | 242237/500000 | hi_EHR,lo_ERS,s385 |
| s444 | R138 | linear | lo | EPR | 337983/1000000 | s340,lo_ERS,lo_PRS |
| s445 | R139 | linear | lo | EQR | 348599/1000000 | s397,lo_ERS,lo_QRS |
| s449 | R140 | linear | lo | FHR | 341321/1000000 | lo_FHQ,lo_FQR,s362 |
| s456 | R146 | bary_hi | lo | AHS | 214883/500000 | lo_ACH,lo_AEH,s352 |
| s458 | R147 | bary_hi | lo | BES | 42507/250000 | s306,s408 |
| s460 | R148 | bary_hi | lo | BHS | 433587/1000000 | lo_BCH,lo_BEH,s405 |
| s462 | R149 | bary_lo | hi | CHS | 590449/1000000 | hi_CEH,s426 |
| s464 | R150 | bary_lo | lo | EPS | 154813/1000000 | s316,s444 |
| s469 | R152 | bary_hi | hi | HRS | 2539/10000 | s307,hi_EHR |
| s470 | R153 | bary_hi | lo | PQS | 104579/1000000 | lo_CPQ,lo_EPQ,s384 |
| s473 | R4 | sum | lo | BER | 394569/1000000 | s458,s392,lo_ERS |
| s480 | R12 | sum | lo | EPR | 340813/1000000 | s464,lo_ERS,lo_PRS |
| s481 | R13 | sum | lo | FPS | 290579/1000000 | lo_FPQ,lo_FQS,s470 |
| s482 | R14 | sumlo | lo | ABE | 5507/31250 | lo_ABC,lo_AEH,lo_ABH,s310,hi_ACH |
| s487 | R16 | sumlo | lo | ACF | 10007/40000 | s310,s175,lo_ACH,s323,hi_AEH |
| s490 | R19 | sumlo | lo | ACP | 97611/1000000 | s487,lo_AHP,lo_ACH,lo_AFP,hi_AFH |
| s491 | R20 | sumlo | lo | AEP | 211167/1000000 | s323,lo_AHP,lo_AEH,lo_AFP,hi_AFH |
| s504 | R27 | sumlo | lo | BCE | 23797/100000 | lo_BCH,lo_CER,lo_BCR,s417,s426 |
| s505 | R27 | sumlo | lo | CHR | 37279/125000 | lo_BCH,lo_CER,lo_BCR,s417,hi_BCE |
| s506 | R28 | sumlo | lo | BCF | 55443/250000 | lo_BCH,s422,lo_BCR,s350,s426 |
| s508 | R31 | sumlo | lo | ACE | 70741/250000 | s482,s417,lo_AEH,s504,hi_BEH |
| s514 | R36 | sumlo | lo | CEP | 66237/250000 | s508,lo_EHP,s491,s417,hi_AEH |
| s516 | R38 | sumlo | lo | AES | 97183/500000 | s508,lo_ERS,s402,lo_CES,hi_CER |
| s518 | R39 | sumlo | lo | AEF | 58289/125000 | lo_AEH,s437,s402,lo_EFH,hi_EHR |
| s522 | R42 | sumlo | lo | AER | 205823/500000 | lo_AEH,lo_ERS,s516,lo_EHR,s443 |
| s526 | R47 | sumlo | lo | BES | 22131/125000 | s504,lo_ERS,s473,lo_CES,hi_CER |
| s531 | R51 | sumlo | lo | EHS | 377043/1000000 | s417,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s533 | R52 | sumlo | lo | EPS | 169553/1000000 | s514,lo_ERS,lo_CES,s480,hi_CER |
| s538 | R56 | sumlo | lo | AFQ | 55889/500000 | s487,lo_FQR,s403,lo_CFQ,hi_CFR |
| s539 | R58 | sumlo | lo | BFQ | 106529/1000000 | s506,lo_FQR,s411,lo_CFQ,hi_CFR |
| s540 | R61 | sumlo | lo | EFQ | 13643/100000 | s416,lo_FQR,lo_CFQ,s437,hi_CFR |
| s541 | R62 | sumlo | lo | FHQ | 95037/1000000 | s350,lo_FQR,lo_CFQ,s449,hi_CFR |
| s542 | R66 | sumlo | lo | CFH | 54571/200000 | lo_ACH,lo_EFH,s175,s417,hi_AEH |
| s544 | R67 | sumlo | lo | AHR | 421863/1000000 | lo_ACH,lo_EHR,lo_AEH,s505,hi_CEH |
| s547 | R71 | sumlo | lo | HPR | 155591/1000000 | lo_CHP,lo_EHR,s505,lo_EHP,hi_CEH |
| s553 | R72 | sumlo | lo | HQR | 81573/500000 | lo_EHQ,s385,lo_EHR,lo_HQS,s443 |
| s555 | R74 | sumlo | lo | FHP | 124351/1000000 | lo_AFP,lo_EHP,lo_AHP,s435,s7 |
| s561 | R82 | sumlo | lo | AQR | 146051/500000 | s522,s553,s544,s445,hi_EHR |
| s563 | R84 | sumlo | lo | BQR | 292561/1000000 | s473,s553,s405,s445,hi_EHR |
| s565 | R85 | sumlo | lo | CRS | 12719/125000 | lo_CER,lo_FRS,s422,lo_ERS,s431 |
| s566 | R86 | sumlo | lo | CQR | 203827/1000000 | lo_CER,s553,s505,s445,hi_EHR |
| s570 | R89 | sumlo | lo | PQR | 5991/40000 | s480,s553,s445,s547,hi_EHR |
| s571 | R90 | sumlo | lo | HRS | 164343/1000000 | lo_EHR,lo_QRS,lo_ERS,s553,s441 |
| s574 | R91 | sumlo | lo | ARS | 14843/100000 | s516,s571,s456,lo_ERS,s443 |
| s576 | R92 | sumlo | lo | BRS | 143289/1000000 | s526,s571,s460,lo_ERS,s443 |
| s578 | R94 | sumlo | lo | EFS | 13223/50000 | lo_CES,lo_FRS,s425,lo_ERS,s38 |
| s582 | R97 | sumlo | lo | PRS | 6589/62500 | s533,lo_FRS,lo_ERS,s481,s433 |
| s583 | R98 | sumlo | lo | EQS | 17217/100000 | s531,lo_QRS,lo_ERS,lo_HQS,s469 |
| s584 | R99 | linear | lo | ACH | 283611/1000000 | s490,lo_AHP,lo_CHP |
| s587 | R102 | linear | hi | EHP | 514299/1000000 | hi_AEH,s491,lo_AHP |
| s589 | R103 | linear | lo | AER | 108949/250000 | s516,s574,lo_ERS |
| s590 | R104 | linear | lo | AFH | 310351/1000000 | lo_AFP,lo_AHP,s555 |
| s593 | R106 | linear | lo | AFR | 6211/12500 | s538,s561,lo_FQR |
| s597 | R108 | linear | lo | BHR | 109433/250000 | lo_BCH,hi_BCR,s505 |
| s600 | R111 | linear | lo | BER | 413337/1000000 | s526,s576,lo_ERS |
| s603 | R115 | linear | lo | BFR | 49209/100000 | s539,s563,lo_FQR |
| s609 | R118 | linear | lo | CEF | 240773/500000 | hi_CER,s422,s437 |
| s610 | R120 | linear | lo | CEH | 659971/1000000 | hi_CER,s505,lo_EHR |
| s613 | R122 | linear | lo | CER | 35969/125000 | lo_CES,s565,lo_ERS |
| s617 | R124 | linear | lo | CFR | 389827/1000000 | lo_CFQ,s566,lo_FQR |
| s620 | R126 | linear | lo | CFS | 168283/500000 | s617,s38,lo_FRS |
| s621 | R127 | linear | hi | CHR | 572367/1000000 | s462,s38,s571 |
| s626 | R131 | linear | hi | EFR | 144303/250000 | hi_EFH,hi_EHR,s449 |
| s628 | R132 | linear | hi | EFS | 390637/1000000 | hi_EFH,s443,lo_FHS |
| s630 | R133 | linear | lo | EFP | 32243/100000 | s540,lo_EPQ,lo_FPQ |
| s632 | R134 | linear | lo | EFR | 22523/50000 | s578,lo_ERS,lo_FRS |
| s638 | R137 | linear | hi | EHS | 119007/250000 | hi_EHR,lo_ERS,s571 |
| s639 | R138 | linear | lo | EPR | 367977/1000000 | s533,lo_ERS,s582 |
| s640 | R139 | linear | lo | EQR | 35817/100000 | s583,lo_ERS,lo_QRS |
| s644 | R140 | linear | lo | FHR | 351183/1000000 | s541,lo_FQR,s553 |
| s646 | R141 | linear | lo | FHS | 281037/1000000 | s541,lo_FQS,lo_HQS |
| s647 | R142 | linear | lo | FPR | 13431/40000 | lo_FPQ,lo_FQR,s570 |
| s650 | R145 | bary_hi | lo | AES | 7841/40000 | s508,s589 |
| s651 | R146 | bary_hi | lo | AHS | 10831/25000 | s584,lo_AEH,s544 |
| s653 | R147 | bary_hi | lo | BES | 177629/1000000 | s504,s600 |
| s655 | R148 | bary_hi | lo | BHS | 27217/62500 | lo_BCH,lo_BEH,s597 |
| s658 | R150 | bary_lo | lo | EPS | 34523/200000 | s514,s639 |
| s663 | R152 | bary_hi | hi | HRS | 50403/200000 | s505,hi_EHR |
| s666 | R2 | sum | lo | AER | 87491/200000 | s650,s574,lo_ERS |
| s667 | R4 | sum | lo | BER | 206959/500000 | s653,s576,lo_ERS |
| s674 | R12 | sum | lo | EPR | 371039/1000000 | s658,lo_ERS,s582 |
| s676 | R14 | sumlo | lo | ABE | 18021/100000 | lo_ABC,lo_AEH,lo_ABH,s508,hi_ACH |
| s681 | R16 | sumlo | lo | ACF | 3361/12500 | s508,s590,s584,s518,hi_AEH |
| s682 | R17 | sumlo | lo | ACP | 4213/40000 | s508,lo_AHP,s584,s491,hi_AEH |
| s684 | R20 | sumlo | lo | AEP | 21403/100000 | s518,lo_AHP,lo_AEH,lo_AFP,hi_AFH |
| s694 | R27 | sumlo | lo | BCE | 123749/500000 | lo_BCH,s613,lo_BCR,s610,s621 |
| s695 | R27 | sumlo | lo | CHR | 30487/100000 | lo_BCH,s613,lo_BCR,s610,hi_BCE |
| s697 | R28 | sumlo | lo | BCF | 46871/200000 | lo_BCH,s617,lo_BCR,s542,s621 |
| s700 | R31 | sumlo | lo | ACE | 293527/1000000 | s676,s610,lo_AEH,s694,hi_BEH |
| s701 | R33 | sumlo | lo | BEP | 7591/31250 | s676,lo_EHP,s684,lo_BEH,hi_AEH |
| s702 | R35 | sumlo | lo | CEP | 70469/250000 | s700,s630,s684,s609,s398 |
| s704 | R38 | sumlo | lo | AES | 102301/500000 | s700,lo_ERS,s666,lo_CES,hi_CER |
| s705 | R39 | sumlo | lo | AEF | 481751/1000000 | lo_AEH,s632,s666,lo_EFH,hi_EHR |
| s711 | R47 | sumlo | lo | BES | 18513/100000 | s694,lo_ERS,s667,lo_CES,hi_CER |
| s716 | R51 | sumlo | lo | EHS | 378977/1000000 | s610,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s717 | R52 | sumlo | lo | EPS | 182751/1000000 | s702,lo_ERS,lo_CES,s674,hi_CER |
| s722 | R56 | sumlo | lo | AFQ | 24201/200000 | s681,lo_FQR,s593,lo_CFQ,hi_CFR |
| s723 | R58 | sumlo | lo | BFQ | 14349/125000 | s697,lo_FQR,s603,lo_CFQ,hi_CFR |
| s725 | R61 | sumlo | lo | EFQ | 5891/40000 | s609,lo_FQR,lo_CFQ,s632,hi_CFR |
| s726 | R62 | sumlo | lo | FHQ | 9861/100000 | s542,lo_FQR,lo_CFQ,s644,hi_CFR |
| s727 | R66 | sumlo | lo | CFH | 282477/1000000 | s584,lo_EFH,s590,s610,hi_AEH |
| s729 | R67 | sumlo | lo | AHR | 107521/250000 | s584,lo_EHR,lo_AEH,s695,hi_CEH |
| s732 | R71 | sumlo | lo | HPR | 157541/1000000 | lo_CHP,lo_EHR,s695,lo_EHP,hi_CEH |
| s737 | R72 | sumlo | lo | HQR | 167691/1000000 | lo_EHQ,s571,lo_EHR,lo_HQS,s638 |
| s739 | R74 | sumlo | lo | FHP | 125279/1000000 | lo_AFP,lo_EHP,lo_AHP,s630,s7 |
| s740 | R75 | sumlo | lo | BCP | 5931/62500 | s701,lo_CHP,lo_BHP,s702,s587 |
| s748 | R82 | sumlo | lo | AQR | 12403/40000 | s666,s737,s729,s640,hi_EHR |
| s751 | R84 | sumlo | lo | BQR | 77107/250000 | s667,s737,s597,s640,hi_EHR |
| s753 | R85 | sumlo | lo | CRS | 109171/1000000 | s613,lo_FRS,s617,lo_ERS,s626 |
| s754 | R86 | sumlo | lo | CQR | 214691/1000000 | s613,s737,s695,s640,hi_EHR |
| s756 | R87 | sumlo | lo | HRS | 168399/1000000 | lo_EHR,lo_FRS,lo_ERS,s644,s626 |
| s757 | R88 | sumlo | lo | PRS | 113881/1000000 | s674,lo_FRS,lo_ERS,s647,s626 |
| s758 | R89 | sumlo | lo | PQR | 80891/500000 | s674,s737,s640,s732,hi_EHR |
| s761 | R91 | sumlo | lo | ARS | 7851/50000 | s704,s756,s651,lo_ERS,s638 |
| s763 | R92 | sumlo | lo | BRS | 18821/125000 | s711,s756,s655,lo_ERS,s638 |
| s765 | R94 | sumlo | lo | EFS | 273139/1000000 | lo_CES,lo_FRS,s620,lo_ERS,s38 |
| s766 | R94 | diffhi | hi | CFS | 104271/200000 | s38,s628,lo_CES,lo_FRS,lo_ERS |
| s767 | R95 | diffhi | hi | CHS | 2321/4000 | s38,s638,lo_CES,s756,lo_ERS |
| s770 | R98 | sumlo | lo | EQS | 174171/1000000 | s716,lo_QRS,lo_ERS,lo_HQS,s663 |
| s771 | R99 | linear | lo | ACH | 11653/40000 | s682,lo_AHP,lo_CHP |
| s773 | R100 | linear | hi | AEF | 693277/1000000 | hi_AEH,s590,hi_EFH |
| s776 | R102 | linear | hi | EHP | 127859/250000 | hi_AEH,s684,lo_AHP |
| s778 | R103 | linear | lo | AER | 227311/500000 | s704,s761,lo_ERS |
| s779 | R104 | linear | lo | AFH | 311279/1000000 | lo_AFP,lo_AHP,s739 |
| s782 | R106 | linear | lo | AFR | 6551/12500 | s722,s748,lo_FQR |
| s785 | R107 | linear | lo | BCH | 4389/15625 | s740,lo_BHP,lo_CHP |
| s786 | R108 | linear | lo | BHR | 223133/500000 | s785,hi_BCR,s695 |
| s789 | R111 | linear | lo | BER | 214349/500000 | s711,s763,lo_ERS |
| s792 | R115 | linear | lo | BFR | 25811/50000 | s723,s751,lo_FQR |
| s797 | R118 | linear | lo | CEF | 254013/500000 | hi_CER,s617,s632 |
| s799 | R120 | linear | lo | CEH | 666609/1000000 | hi_CER,s695,lo_EHR |
| s802 | R122 | linear | lo | CER | 295171/1000000 | lo_CES,s753,lo_ERS |
| s806 | R124 | linear | lo | CFR | 400691/1000000 | lo_CFQ,s754,lo_FQR |
| s810 | R126 | linear | hi | CFR | 71827/125000 | s766,s38,lo_FRS |
| s811 | R126 | linear | lo | CFS | 34743/100000 | s806,s38,lo_FRS |
| s812 | R127 | linear | hi | CHR | 17441/31250 | s767,s38,s756 |
| s818 | R131 | linear | hi | EFR | 11347/20000 | hi_EFH,hi_EHR,s644 |
| s819 | R131 | linear | hi | FHR | 468073/1000000 | hi_EFH,s632,hi_EHR |
| s820 | R132 | linear | hi | EFS | 190077/500000 | hi_EFH,s638,s646 |
| s822 | R133 | linear | lo | EFP | 13331/40000 | s725,lo_EPQ,lo_FPQ |
| s824 | R134 | linear | lo | EFR | 459139/1000000 | s765,lo_ERS,lo_FRS |
| s829 | R137 | linear | hi | EHS | 117993/250000 | hi_EHR,lo_ERS,s756 |
| s830 | R138 | linear | lo | EPR | 6088/15625 | s717,lo_ERS,s757 |
| s831 | R139 | linear | lo | EQR | 360171/1000000 | s770,lo_ERS,lo_QRS |
| s835 | R140 | linear | lo | FHR | 359301/1000000 | s726,lo_FQR,s737 |
| s838 | R141 | linear | lo | FHS | 28461/100000 | s726,lo_FQS,lo_HQS |
| s839 | R142 | linear | lo | FPR | 173891/500000 | lo_FPQ,lo_FQR,s758 |
| s843 | R146 | bary_hi | lo | AHS | 109747/250000 | s771,lo_AEH,s729 |
| s846 | R148 | bary_hi | lo | BHS | 438661/1000000 | s785,lo_BEH,s786 |
| s848 | R150 | bary_lo | lo | EPS | 91569/500000 | s702,s830 |
| s854 | R152 | bary_hi | hi | HRS | 62551/250000 | s695,hi_EHR |
| s863 | R12 | sum | lo | EPR | 390019/1000000 | s848,lo_ERS,s757 |
| s866 | R14 | sumlo | lo | ABE | 182159/1000000 | lo_ABC,lo_AEH,lo_ABH,s700,hi_ACH |
| s871 | R16 | sumlo | lo | ACF | 70777/250000 | s700,s779,s771,s705,hi_AEH |
| s872 | R17 | sumlo | lo | ACP | 54767/500000 | s700,lo_AHP,s771,s684,hi_AEH |
| s874 | R20 | sumlo | lo | AEP | 108439/500000 | s705,lo_AHP,lo_AEH,lo_AFP,hi_AFH |
| s876 | R21 | sumlo | lo | APR | 44001/250000 | lo_AFP,s729,s782,lo_AHP,hi_AFH |
| s881 | R25 | sumlo | lo | ACR | 31033/250000 | lo_ABC,s806,s871,lo_BCR,hi_BCF |
| s884 | R27 | sumlo | lo | BCE | 259637/1000000 | s785,s802,lo_BCR,s799,s812 |
| s885 | R27 | sumlo | lo | CHR | 155929/500000 | s785,s802,lo_BCR,s799,hi_BCE |
| s887 | R28 | sumlo | lo | BCF | 7773/31250 | s785,s806,lo_BCR,s727,s812 |
| s890 | R31 | sumlo | lo | ACE | 152277/500000 | s866,s799,lo_AEH,s884,hi_BEH |
| s891 | R33 | sumlo | lo | BEP | 245991/1000000 | s866,lo_EHP,s874,lo_BEH,hi_AEH |
| s893 | R35 | sumlo | lo | CEP | 76333/250000 | s890,s822,s874,s797,s773 |
| s895 | R38 | sumlo | lo | AES | 106247/500000 | s890,lo_ERS,s778,lo_CES,hi_CER |
| s896 | R39 | sumlo | lo | AEF | 492141/1000000 | lo_AEH,s824,s778,lo_EFH,hi_EHR |
| s901 | R47 | sumlo | lo | BES | 38533/200000 | s884,lo_ERS,s789,lo_CES,hi_CER |
| s905 | R51 | sumlo | lo | EHS | 76167/200000 | s799,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s906 | R52 | sumlo | lo | EPS | 194629/1000000 | s893,lo_ERS,lo_CES,s863,hi_CER |
| s910 | R54 | sumlo | lo | CFP | 102123/500000 | s871,s822,lo_AFP,s797,s773 |
| s911 | R56 | sumlo | lo | AFQ | 130641/1000000 | s871,lo_FQR,s782,lo_CFQ,s810 |
| s912 | R58 | sumlo | lo | BFQ | 24761/200000 | s887,lo_FQR,s792,lo_CFQ,s810 |
| s914 | R61 | sumlo | lo | EFQ | 39133/250000 | s797,lo_FQR,lo_CFQ,s824,s810 |
| s916 | R62 | sumlo | lo | FHQ | 103869/1000000 | s727,lo_FQR,lo_CFQ,s835,s810 |
| s918 | R66 | sumlo | lo | CFH | 286627/1000000 | s771,lo_EFH,s779,s799,hi_AEH |
| s920 | R67 | sumlo | lo | AHR | 440829/1000000 | s771,lo_EHR,lo_AEH,s885,hi_CEH |
| s921 | R68 | diffhi | hi | AFH | 492947/1000000 | hi_AEH,s819,s920,lo_EFH,lo_EHR |
| s926 | R71 | sumlo | lo | HPR | 79797/500000 | lo_CHP,lo_EHR,s885,lo_EHP,hi_CEH |
| s931 | R72 | sumlo | lo | HQR | 169931/1000000 | lo_EHQ,s756,lo_EHR,lo_HQS,s829 |
| s933 | R74 | sumlo | lo | FHP | 63769/500000 | lo_AFP,lo_EHP,lo_AHP,s822,s7 |
| s934 | R75 | sumlo | lo | BCP | 100253/1000000 | s891,lo_CHP,lo_BHP,s893,s776 |
| s939 | R81 | sumlo | lo | CPR | 138911/1000000 | s881,s839,s876,s806,hi_AFR |
| s941 | R82 | sumlo | lo | AQR | 4023/12500 | s778,s931,s920,s831,hi_EHR |
| s943 | R84 | sumlo | lo | BQR | 318503/1000000 | s789,s931,s786,s831,hi_EHR |
| s945 | R85 | sumlo | lo | CRS | 22813/200000 | s802,lo_FRS,s806,lo_ERS,s818 |
| s947 | R86 | sumlo | lo | CQR | 221553/1000000 | s802,s931,s885,s831,hi_EHR |
| s948 | R87 | sumlo | lo | HRS | 172657/1000000 | lo_EHR,lo_FRS,lo_ERS,s835,s818 |
| s949 | R88 | sumlo | lo | PRS | 6047/50000 | s863,lo_FRS,lo_ERS,s839,s818 |
| s950 | R89 | sumlo | lo | PQR | 168751/1000000 | s863,s931,s831,s926,hi_EHR |
| s953 | R91 | sumlo | lo | ARS | 32847/200000 | s895,s948,s843,lo_ERS,s829 |
| s955 | R92 | sumlo | lo | BRS | 156917/1000000 | s901,s948,s846,lo_ERS,s829 |
| s957 | R94 | sumlo | lo | EFS | 280047/1000000 | lo_CES,lo_FRS,s811,lo_ERS,s38 |
| s958 | R94 | diffhi | hi | CFS | 126217/250000 | s38,s820,lo_CES,lo_FRS,lo_ERS |
| s959 | R95 | diffhi | hi | CHS | 569613/1000000 | s38,s829,lo_CES,s948,lo_ERS |
| s962 | R98 | sumlo | lo | EQS | 88061/500000 | s905,lo_QRS,lo_ERS,lo_HQS,s854 |
| s963 | R99 | linear | lo | ACH | 147767/500000 | s872,lo_AHP,lo_CHP |
| s965 | R100 | linear | hi | AEF | 692349/1000000 | hi_AEH,s779,hi_EFH |
| s970 | R103 | linear | lo | AER | 469729/1000000 | s895,s953,lo_ERS |
| s971 | R104 | linear | lo | AFH | 156769/500000 | lo_AFP,lo_AHP,s933 |
| s973 | R104 | linear | hi | FHP | 306947/1000000 | s921,lo_AFP,lo_AHP |
| s975 | R106 | linear | lo | AFR | 545481/1000000 | s911,s941,lo_FQR |
| s978 | R107 | linear | lo | BCH | 286253/1000000 | s934,lo_BHP,lo_CHP |
| s979 | R108 | linear | lo | BHR | 458611/1000000 | s978,hi_BCR,s885 |
| s982 | R111 | linear | lo | BER | 221291/500000 | s901,s955,lo_ERS |
| s985 | R115 | linear | lo | BFR | 133827/250000 | s912,s943,lo_FQR |
| s989 | R118 | linear | lo | CEF | 527569/1000000 | hi_CER,s806,s824 |
| s991 | R120 | linear | lo | CEH | 673597/1000000 | hi_CER,s885,lo_EHR |
| s992 | R121 | linear | hi | CEH | 189717/200000 | lo_CES,s959,s829 |
| s995 | R122 | linear | lo | CER | 60013/200000 | lo_CES,s945,lo_ERS |
| s999 | R124 | linear | lo | CFR | 407553/1000000 | lo_CFQ,s947,lo_FQR |
| s1003 | R126 | linear | hi | CFR | 558129/1000000 | s958,s38,lo_FRS |
| s1004 | R126 | linear | lo | CFS | 88573/250000 | s999,s38,lo_FRS |
| s1005 | R127 | linear | hi | CHR | 543217/1000000 | s959,s38,s948 |
| s1011 | R131 | linear | hi | EFR | 8738/15625 | hi_EFH,hi_EHR,s835 |
| s1012 | R131 | linear | hi | FHR | 229697/500000 | hi_EFH,s824,hi_EHR |
| s1013 | R132 | linear | hi | EFS | 14901/40000 | hi_EFH,s829,s838 |
| s1015 | R133 | linear | lo | EFP | 85633/250000 | s914,lo_EPQ,lo_FPQ |
| s1017 | R134 | linear | lo | EFR | 466047/1000000 | s957,lo_ERS,lo_FRS |
| s1023 | R137 | linear | hi | EHS | 233857/500000 | hi_EHR,lo_ERS,s948 |
| s1024 | R138 | linear | lo | EPR | 408569/1000000 | s906,lo_ERS,s949 |
| s1025 | R139 | linear | lo | EQR | 181061/500000 | s962,lo_ERS,lo_QRS |
| s1029 | R140 | linear | lo | FHR | 917/2500 | s916,lo_FQR,s931 |
| s1032 | R141 | linear | lo | FHS | 289869/1000000 | s916,lo_FQS,lo_HQS |
| s1033 | R142 | linear | lo | FPR | 354751/1000000 | lo_FPQ,lo_FQR,s950 |
| s1037 | R146 | bary_hi | lo | AHS | 55479/125000 | s963,lo_AEH,s920 |
| s1040 | R148 | bary_hi | lo | BHS | 444463/1000000 | s978,lo_BEH,s979 |
| s1043 | R150 | bary_lo | lo | EPS | 1947/10000 | s893,s1024 |
| s1049 | R152 | bary_hi | hi | HRS | 248299/1000000 | s885,hi_EHR |
| s1057 | R12 | sum | lo | EPR | 1277/3125 | s1043,lo_ERS,s949 |
| s1060 | R14 | sumlo | lo | ABE | 184193/1000000 | lo_ABC,lo_AEH,lo_ABH,s890,hi_ACH |
| s1061 | R15 | sumlo | lo | ABF | 70441/500000 | s1060,lo_AFP,lo_ABP,s896,s7 |
| s1065 | R16 | sumlo | lo | ACF | 73593/250000 | s890,s971,s963,s896,hi_AEH |
| s1066 | R17 | sumlo | lo | ACP | 28229/250000 | s890,lo_AHP,s963,s874,hi_AEH |
| s1068 | R20 | sumlo | lo | AEP | 111889/500000 | s896,lo_AHP,lo_AEH,lo_AFP,s921 |
| s1070 | R21 | sumlo | lo | APR | 93039/500000 | lo_AFP,s920,s975,lo_AHP,s921 |
| s1075 | R25 | sumlo | lo | ACR | 127423/1000000 | lo_ABC,s999,s1065,lo_BCR,hi_BCF |
| s1076 | R26 | sumlo | lo | ACE | 160627/500000 | s963,s995,s1075,s991,s1005 |
| s1078 | R27 | sumlo | lo | BCE | 273443/1000000 | s978,s995,lo_BCR,s991,s1005 |
| s1079 | R27 | sumlo | lo | CHR | 12787/40000 | s978,s995,lo_BCR,s991,hi_BCE |
| s1081 | R28 | sumlo | lo | BCF | 131917/500000 | s978,s999,lo_BCR,s918,s1005 |
| s1085 | R29 | sumlo | lo | CPQ | 104223/1000000 | s910,s947,lo_CFQ,s939,s1003 |
| s1087 | R33 | sumlo | lo | BEP | 50507/200000 | s1060,lo_EHP,s1068,lo_BEH,hi_AEH |
| s1089 | R35 | sumlo | lo | CEP | 65891/200000 | s1076,s1015,s1068,s989,s965 |
| s1091 | R38 | sumlo | lo | AES | 55349/250000 | s1076,lo_ERS,s970,lo_CES,hi_CER |
| s1096 | R43 | sumlo | lo | AEQ | 197753/1000000 | s1068,s1025,s970,lo_EPQ,hi_EPR |
| s1097 | R47 | sumlo | lo | BES | 6263/31250 | s1078,lo_ERS,s982,lo_CES,hi_CER |
| s1098 | R48 | sumlo | lo | BEF | 7768/15625 | lo_BEH,s1017,s982,lo_EFH,hi_EHR |
| s1100 | R50 | sumlo | lo | BEQ | 210261/1000000 | s1087,s1025,s982,lo_EPQ,hi_EPR |
| s1101 | R51 | sumlo | lo | EHS | 382791/1000000 | s991,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s1102 | R52 | sumlo | lo | EPS | 206593/1000000 | s1089,lo_ERS,lo_CES,s1057,hi_CER |
| s1105 | R53 | sumlo | lo | BFP | 136479/1000000 | s1061,s1015,lo_AFP,s1098,s965 |
| s1106 | R54 | sumlo | lo | CFP | 216503/1000000 | s1065,s1015,lo_AFP,s989,s965 |
| s1107 | R55 | sumlo | lo | CFH | 288049/1000000 | s1065,s1029,s971,s999,hi_AFR |
| s1108 | R56 | sumlo | lo | AFQ | 139943/1000000 | s1065,lo_FQR,s975,lo_CFQ,s1003 |
| s1109 | R58 | sumlo | lo | BFQ | 133159/1000000 | s1081,lo_FQR,s985,lo_CFQ,s1003 |
| s1111 | R61 | sumlo | lo | EFQ | 41391/250000 | s989,lo_FQR,lo_CFQ,s1017,s1003 |
| s1113 | R62 | sumlo | lo | FHQ | 27279/250000 | s1107,lo_FQR,lo_CFQ,s1029,s1003 |
| s1115 | R63 | sumlo | lo | FPQ | 47593/500000 | s1106,lo_FQR,lo_CFQ,s1033,s1003 |
| s1116 | R66 | sumlo | lo | CFH | 145811/500000 | s963,lo_EFH,s971,s991,hi_AEH |
| s1118 | R67 | sumlo | lo | AHR | 28131/62500 | s963,lo_EHR,lo_AEH,s1079,s992 |
| s1119 | R68 | diffhi | hi | AFH | 481469/1000000 | hi_AEH,s1012,s1118,lo_EFH,lo_EHR |
| s1124 | R71 | sumlo | lo | HPR | 162063/1000000 | lo_CHP,lo_EHR,s1079,lo_EHP,s992 |
| s1130 | R72 | sumlo | lo | HQR | 6893/40000 | lo_EHQ,s948,lo_EHR,lo_HQS,s1023 |
| s1132 | R74 | sumlo | lo | FHP | 64733/500000 | lo_AFP,lo_EHP,lo_AHP,s1015,s7 |
| s1134 | R76 | sumlo | lo | BCP | 106947/1000000 | s1105,lo_CHP,lo_BHP,s1106,s973 |
| s1137 | R80 | sumlo | lo | CPR | 148739/1000000 | s1075,s1057,s1070,s995,hi_AER |
| s1139 | R82 | sumlo | lo | AQR | 166311/500000 | s970,s1130,s1118,s1025,hi_EHR |
| s1141 | R84 | sumlo | lo | BQR | 20653/62500 | s982,s1130,s979,s1025,hi_EHR |
| s1142 | R85 | sumlo | lo | CRS | 29419/250000 | s995,lo_FRS,s999,lo_ERS,s1011 |
| s1144 | R86 | sumlo | lo | CQR | 57089/250000 | s995,s1130,s1079,s1025,hi_EHR |
| s1145 | R87 | sumlo | lo | HRS | 17641/100000 | lo_EHR,lo_FRS,lo_ERS,s1029,s1011 |
| s1146 | R88 | sumlo | lo | PRS | 126951/1000000 | s1057,lo_FRS,lo_ERS,s1033,s1011 |
| s1147 | R89 | sumlo | lo | PQR | 176043/1000000 | s1057,s1130,s1025,s1124,hi_EHR |
| s1149 | R91 | sumlo | lo | ARS | 42939/250000 | s1091,s1145,s1037,lo_ERS,s1023 |
| s1151 | R92 | sumlo | lo | BRS | 2562/15625 | s1097,s1145,s1040,lo_ERS,s1023 |
| s1153 | R94 | sumlo | lo | EFS | 28441/100000 | lo_CES,lo_FRS,s1004,lo_ERS,s38 |
| s1154 | R94 | diffhi | hi | CFS | 49287/100000 | s38,s1013,lo_CES,lo_FRS,lo_ERS |
| s1155 | R95 | diffhi | hi | CHS | 139791/250000 | s38,s1023,lo_CES,s1145,lo_ERS |
| s1157 | R98 | sumlo | lo | EQS | 89103/500000 | s1101,lo_QRS,lo_ERS,lo_HQS,s1049 |
| s1160 | R99 | linear | lo | ACH | 74729/250000 | s1066,lo_AHP,lo_CHP |
| s1162 | R100 | linear | hi | AEF | 69009/100000 | hi_AEH,s971,hi_EFH |
| s1163 | R101 | linear | lo | AEF | 25163/50000 | s1096,s1108,s1111 |
| s1169 | R103 | linear | lo | AER | 60769/125000 | s1091,s1149,lo_ERS |
| s1170 | R104 | linear | lo | AFH | 157733/500000 | lo_AFP,lo_AHP,s1132 |
| s1172 | R104 | linear | hi | FHP | 295469/1000000 | s1119,lo_AFP,lo_AHP |
| s1174 | R106 | linear | lo | AFR | 113113/200000 | s1108,s1139,lo_FQR |
| s1177 | R107 | linear | lo | BCH | 292947/1000000 | s1134,lo_BHP,lo_CHP |
| s1178 | R108 | linear | lo | BHR | 236561/500000 | s1177,hi_BCR,s1079 |
| s1180 | R110 | linear | lo | BEF | 63623/125000 | s1100,s1109,s1111 |
| s1182 | R111 | linear | lo | BER | 57173/125000 | s1097,s1151,lo_ERS |
| s1187 | R115 | linear | lo | BFR | 556607/1000000 | s1109,s1141,lo_FQR |
| s1191 | R118 | linear | lo | CEF | 541339/1000000 | hi_CER,s999,s1017 |
| s1193 | R120 | linear | lo | CEH | 340707/500000 | hi_CER,s1079,lo_EHR |
| s1194 | R121 | linear | hi | CEH | 466939/500000 | lo_CES,s1155,s1023 |
| s1197 | R122 | linear | lo | CER | 75919/250000 | lo_CES,s1142,lo_ERS |
| s1202 | R124 | linear | lo | CFR | 103589/250000 | lo_CFQ,s1144,lo_FQR |
| s1205 | R126 | linear | hi | CFR | 546131/1000000 | s1154,s38,lo_FRS |
| s1206 | R126 | linear | lo | CFS | 72219/200000 | s1202,s38,lo_FRS |
| s1207 | R127 | linear | hi | CHR | 105803/200000 | s1155,s38,s1145 |
| s1211 | R129 | linear | lo | EHP | 57367/200000 | hi_EFH,s1015,s1132 |
| s1215 | R131 | linear | hi | EFR | 551733/1000000 | hi_EFH,hi_EHR,s1029 |
| s1216 | R131 | linear | hi | FHR | 226243/500000 | hi_EFH,s1017,hi_EHR |
| s1217 | R132 | linear | lo | EFH | 21313/200000 | s1153,s1023,s1032 |
| s1218 | R132 | linear | lo | EHS | 97279/250000 | hi_EFH,s1153,s1032 |
| s1219 | R132 | linear | hi | EFS | 5672/15625 | hi_EFH,s1023,s1032 |
| s1221 | R133 | linear | lo | EFP | 283/800 | s1111,lo_EPQ,s1115 |
| s1223 | R134 | linear | lo | EFR | 47041/100000 | s1153,lo_ERS,lo_FRS |
| s1228 | R137 | linear | hi | EHS | 463961/1000000 | hi_EHR,lo_ERS,s1145 |
| s1229 | R138 | linear | lo | EPR | 26659/62500 | s1102,lo_ERS,s1146 |
| s1230 | R139 | linear | lo | EQR | 182103/500000 | s1157,lo_ERS,lo_QRS |
| s1233 | R140 | linear | lo | FHR | 374441/1000000 | s1113,lo_FQR,s1130 |
| s1236 | R141 | linear | lo | FHS | 73779/250000 | s1113,lo_FQS,lo_HQS |
| s1247 | R148 | bary_hi | lo | BHS | 451463/1000000 | s1177,lo_BEH,s1178 |
| s1255 | R152 | bary_hi | hi | HRS | 246167/1000000 | s1079,hi_EHR |
| s1256 | R153 | bary_hi | lo | PQS | 29677/250000 | s1085,lo_EPQ,s1147 |
| s1258 | R0 | sub | hi | AEP | 438631/1000000 | hi_AEH,lo_AHP,s1211 |
| s1263 | R13 | sum | lo | FPS | 153447/500000 | s1115,lo_FQS,s1256 |
| s1265 | R14 | sumlo | lo | ABE | 187273/1000000 | lo_ABC,lo_AEH,lo_ABH,s1076,hi_ACH |
| s1266 | R15 | sumlo | lo | ABF | 146409/1000000 | s1265,lo_AFP,lo_ABP,s1163,s1258 |
| s1270 | R16 | sumlo | lo | ACF | 15381/50000 | s1076,s1170,s1160,s1163,hi_AEH |
| s1271 | R17 | sumlo | lo | ACP | 11823/100000 | s1076,lo_AHP,s1160,s1068,hi_AEH |
| s1273 | R20 | sumlo | lo | AEP | 231261/1000000 | s1163,lo_AHP,lo_AEH,lo_AFP,s1119 |
| s1281 | R25 | sumlo | lo | ACR | 131063/1000000 | lo_ABC,s1202,s1270,lo_BCR,hi_BCF |
| s1282 | R26 | sumlo | lo | ACE | 340409/1000000 | s1160,s1197,s1281,s1193,s1207 |
| s1284 | R27 | sumlo | lo | BCE | 143977/500000 | s1177,s1197,lo_BCR,s1193,s1207 |
| s1285 | R27 | sumlo | lo | CHR | 327839/1000000 | s1177,s1197,lo_BCR,s1193,hi_BCE |
| s1287 | R28 | sumlo | lo | BCF | 3509/12500 | s1177,s1202,lo_BCR,s1116,s1207 |
| s1291 | R29 | sumlo | lo | CPQ | 23171/200000 | s1106,s1144,lo_CFQ,s1137,s1205 |
| s1292 | R32 | sumlo | lo | BEP | 33321/125000 | s1265,s1221,s1273,s1180,s1162 |
| s1301 | R43 | sumlo | lo | AEQ | 41047/200000 | s1273,s1230,s1169,lo_EPQ,hi_EPR |
| s1303 | R47 | sumlo | lo | BES | 10431/50000 | s1284,lo_ERS,s1182,lo_CES,hi_CER |
| s1304 | R48 | sumlo | lo | BEF | 511617/1000000 | lo_BEH,s1223,s1182,s1217,hi_EHR |
| s1306 | R50 | sumlo | lo | BEQ | 110691/500000 | s1292,s1230,s1182,lo_EPQ,hi_EPR |
| s1309 | R53 | sumlo | lo | BFP | 143999/1000000 | s1266,s1221,lo_AFP,s1304,s1162 |
| s1311 | R54 | sumlo | lo | CFP | 230643/1000000 | s1270,s1221,lo_AFP,s1191,s1162 |
| s1312 | R55 | sumlo | lo | CFH | 300441/1000000 | s1270,s1233,s1170,s1202,hi_AFR |
| s1313 | R56 | sumlo | lo | AFQ | 148693/1000000 | s1270,lo_FQR,s1174,lo_CFQ,s1205 |
| s1316 | R58 | sumlo | lo | BFQ | 142587/1000000 | s1287,lo_FQR,s1187,lo_CFQ,s1205 |
| s1318 | R61 | sumlo | lo | EFQ | 172289/1000000 | s1191,lo_FQR,lo_CFQ,s1223,s1205 |
| s1320 | R62 | sumlo | lo | FHQ | 28731/250000 | s1312,lo_FQR,lo_CFQ,s1233,s1205 |
| s1323 | R64 | sumlo | lo | FPQ | 25357/250000 | s1311,lo_FQS,lo_CFQ,s1263,s1154 |
| s1324 | R66 | sumlo | lo | CFH | 7539/25000 | s1160,s1217,s1170,s1193,hi_AEH |
| s1326 | R67 | sumlo | lo | AHR | 93153/200000 | s1160,lo_EHR,lo_AEH,s1285,s1194 |
| s1327 | R68 | diffhi | hi | AFH | 462119/1000000 | hi_AEH,s1216,s1326,s1217,lo_EHR |
| s1333 | R71 | sumlo | lo | HPR | 33961/200000 | lo_CHP,lo_EHR,s1285,s1211,s1194 |
| s1339 | R72 | sumlo | lo | HQR | 174471/1000000 | lo_EHQ,s1145,lo_EHR,lo_HQS,s1228 |
| s1342 | R74 | sumlo | lo | FHP | 67909/500000 | lo_AFP,s1211,lo_AHP,s1221,s1258 |
| s1344 | R76 | sumlo | lo | BCP | 737/6250 | s1309,lo_CHP,lo_BHP,s1311,s1172 |
| s1353 | R82 | sumlo | lo | AQR | 86741/250000 | s1169,s1339,s1326,s1230,hi_EHR |
| s1357 | R84 | sumlo | lo | BQR | 171887/500000 | s1182,s1339,s1178,s1230,hi_EHR |
| s1358 | R85 | sumlo | lo | CRS | 121031/1000000 | s1197,lo_FRS,s1202,lo_ERS,s1215 |
| s1360 | R86 | sumlo | lo | CQR | 14691/62500 | s1197,s1339,s1285,s1230,hi_EHR |
| s1361 | R87 | sumlo | lo | HRS | 2814/15625 | lo_EHR,lo_FRS,lo_ERS,s1233,s1215 |
| s1363 | R89 | sumlo | lo | PQR | 46451/250000 | s1229,s1339,s1230,s1333,hi_EHR |
| s1368 | R92 | sumlo | lo | BRS | 85737/500000 | s1303,s1361,s1247,lo_ERS,s1228 |
| s1370 | R94 | sumlo | lo | EFS | 9023/31250 | lo_CES,lo_FRS,s1206,lo_ERS,s38 |
| s1371 | R94 | diffhi | hi | CFS | 477903/1000000 | s38,s1219,lo_CES,lo_FRS,lo_ERS |
| s1372 | R95 | diffhi | hi | CHS | 21983/40000 | s38,s1228,lo_CES,s1361,lo_ERS |
| s1375 | R98 | sumlo | lo | EQS | 182139/1000000 | s1218,lo_QRS,lo_ERS,lo_HQS,s1255 |
| s1379 | R99 | linear | lo | ACH | 30423/100000 | s1271,lo_AHP,lo_CHP |
| s1381 | R100 | linear | hi | AEF | 344081/500000 | hi_AEH,s1170,hi_EFH |
| s1382 | R101 | linear | lo | AEF | 526217/1000000 | s1301,s1313,s1318 |
| s1389 | R104 | linear | lo | AFH | 160909/500000 | lo_AFP,lo_AHP,s1342 |
| s1391 | R104 | linear | hi | FHP | 276119/1000000 | s1327,lo_AFP,lo_AHP |
| s1394 | R106 | linear | lo | AFR | 588657/1000000 | s1313,s1353,lo_FQR |
| s1397 | R107 | linear | lo | BCH | 3799/12500 | s1344,lo_BHP,lo_CHP |
| s1398 | R108 | linear | lo | BHR | 492259/1000000 | s1397,hi_BCR,s1285 |
| s1400 | R110 | linear | lo | BEF | 268129/500000 | s1306,s1316,s1318 |
| s1402 | R111 | linear | lo | BER | 236547/500000 | s1303,s1368,lo_ERS |
| s1403 | R112 | linear | lo | BFH | 372817/1000000 | s1309,lo_BHP,s1342 |
| s1407 | R115 | linear | lo | BFR | 579361/1000000 | s1316,s1357,lo_FQR |
| s1412 | R118 | linear | lo | CEF | 110501/200000 | hi_CER,s1202,s1223 |
| s1414 | R120 | linear | lo | CEH | 344789/500000 | hi_CER,s1285,lo_EHR |
| s1415 | R121 | linear | hi | CEH | 115067/125000 | lo_CES,s1372,s1228 |
| s1418 | R122 | linear | lo | CER | 307031/1000000 | lo_CES,s1358,lo_ERS |
| s1424 | R124 | linear | lo | CFR | 6579/15625 | lo_CFQ,s1360,lo_FQR |
| s1427 | R126 | linear | hi | CFR | 132791/250000 | s1371,s38,lo_FRS |
| s1428 | R126 | linear | lo | CFS | 73559/200000 | s1424,s38,lo_FRS |
| s1429 | R127 | linear | hi | CHR | 25787/50000 | s1372,s38,s1361 |
| s1433 | R129 | linear | lo | EHP | 60881/200000 | hi_EFH,s1221,s1342 |
| s1435 | R130 | linear | lo | EHQ | 2041/20000 | hi_EFH,s1318,s1320 |
| s1438 | R131 | linear | hi | EFR | 136023/250000 | hi_EFH,hi_EHR,s1233 |
| s1439 | R131 | linear | hi | FHR | 448123/1000000 | hi_EFH,s1223,hi_EHR |
| s1440 | R132 | linear | lo | EFH | 119891/1000000 | s1370,s1228,s1236 |
| s1441 | R132 | linear | lo | EHS | 398689/1000000 | hi_EFH,s1370,s1236 |
| s1442 | R132 | linear | hi | EFS | 44251/125000 | hi_EFH,s1228,s1236 |
| s1443 | R132 | linear | hi | FHS | 90097/250000 | hi_EFH,s1370,s1228 |
| s1444 | R133 | linear | lo | EFP | 366717/1000000 | s1318,lo_EPQ,s1323 |
| s1446 | R134 | linear | lo | EFR | 29671/62500 | s1370,lo_ERS,lo_FRS |
| s1452 | R137 | linear | hi | EHS | 18411/40000 | hi_EHR,lo_ERS,s1361 |
| s1453 | R137 | linear | hi | HRS | 120841/500000 | hi_EHR,s1441,lo_ERS |
| s1455 | R139 | linear | lo | EQR | 368139/1000000 | s1375,lo_ERS,lo_QRS |
| s1458 | R140 | linear | lo | FHR | 76479/200000 | s1320,lo_FQR,s1339 |
| s1460 | R141 | linear | hi | FHQ | 43597/250000 | s1443,lo_FQS,lo_HQS |
| s1461 | R141 | linear | lo | FHS | 75231/250000 | s1320,lo_FQS,lo_HQS |
| s1482 | R153 | bary_hi | lo | PQS | 124543/1000000 | s1291,lo_EPQ,s1363 |
| s1484 | R0 | sub | hi | AEP | 421061/1000000 | hi_AEH,lo_AHP,s1433 |
| s1491 | R13 | sum | lo | FPS | 318971/1000000 | s1323,lo_FQS,s1482 |
| s1493 | R14 | sumlo | lo | ABE | 95403/500000 | lo_ABC,lo_AEH,lo_ABH,s1282,hi_ACH |
| s1495 | R15 | sumlo | lo | ABF | 158369/1000000 | s1493,lo_AFP,lo_ABP,s1382,s1484 |
| s1499 | R16 | sumlo | lo | ACF | 164723/500000 | s1282,s1389,s1379,s1382,hi_AEH |
| s1502 | R19 | sumlo | lo | ACP | 5101/40000 | s1499,lo_AHP,s1379,lo_AFP,s1327 |
| s1503 | R20 | sumlo | lo | AEP | 61391/250000 | s1382,lo_AHP,lo_AEH,lo_AFP,s1327 |
| s1516 | R25 | sumlo | lo | ACR | 136241/1000000 | lo_ABC,s1424,s1499,lo_BCR,hi_BCF |
| s1517 | R26 | sumlo | lo | ACE | 363277/1000000 | s1379,s1418,s1516,s1414,s1429 |
| s1520 | R27 | sumlo | lo | BCE | 305277/1000000 | s1397,s1418,lo_BCR,s1414,s1429 |
| s1521 | R27 | sumlo | lo | CHR | 338839/1000000 | s1397,s1418,lo_BCR,s1414,hi_BCE |
| s1524 | R28 | sumlo | lo | BCF | 151251/500000 | s1397,s1424,lo_BCR,s1324,s1429 |
| s1529 | R32 | sumlo | lo | BEP | 293037/1000000 | s1493,s1444,s1503,s1400,s1381 |
| s1532 | R37 | sumlo | lo | AER | 10107/20000 | s1517,lo_EHR,lo_AEH,s1418,s1415 |
| s1535 | R38 | sumlo | lo | AES | 243129/1000000 | s1517,lo_ERS,s1532,lo_CES,hi_CER |
| s1539 | R42 | sumlo | lo | AER | 506813/1000000 | lo_AEH,lo_ERS,s1535,lo_EHR,s1452 |
| s1541 | R43 | sumlo | lo | AEQ | 218073/1000000 | s1503,s1455,s1539,lo_EPQ,hi_EPR |
| s1543 | R47 | sumlo | lo | BES | 108933/500000 | s1520,lo_ERS,s1402,lo_CES,hi_CER |
| s1545 | R50 | sumlo | lo | BEQ | 240811/1000000 | s1529,s1455,s1402,lo_EPQ,hi_EPR |
| s1549 | R53 | sumlo | lo | BFP | 31373/200000 | s1495,s1444,lo_AFP,s1400,s1381 |
| s1551 | R54 | sumlo | lo | CFP | 125113/500000 | s1499,s1444,lo_AFP,s1412,s1381 |
| s1552 | R55 | sumlo | lo | CFH | 159739/500000 | s1499,s1458,s1389,s1424,hi_AFR |
| s1553 | R56 | sumlo | lo | AFQ | 40187/250000 | s1499,lo_FQR,s1394,lo_CFQ,s1427 |
| s1556 | R58 | sumlo | lo | BFQ | 77201/500000 | s1524,lo_FQR,s1407,lo_CFQ,s1427 |
| s1557 | R59 | sumlo | lo | BEF | 13749/25000 | s1403,s1446,s1407,s1440,s1439 |
| s1559 | R61 | sumlo | lo | EFQ | 11241/62500 | s1412,lo_FQR,lo_CFQ,s1446,s1427 |
| s1561 | R62 | sumlo | lo | FHQ | 15361/125000 | s1552,lo_FQR,lo_CFQ,s1458,s1427 |
| s1564 | R64 | sumlo | lo | FPQ | 22153/200000 | s1551,lo_FQS,lo_CFQ,s1491,s1371 |
| s1565 | R65 | sumlo | lo | AHP | 18751/200000 | lo_ABH,s1433,lo_AEH,lo_BHP,hi_BEH |
| s1567 | R67 | sumlo | lo | AHR | 96963/200000 | s1379,lo_EHR,lo_AEH,s1521,s1415 |
| s1568 | R68 | diffhi | hi | AFH | 444739/1000000 | hi_AEH,s1439,s1567,s1440,lo_EHR |
| s1575 | R70 | sumlo | lo | BHS | 480393/1000000 | s1403,s1361,s1398,s1461,s1439 |
| s1583 | R72 | sumlo | lo | HQR | 90077/500000 | s1435,s1361,lo_EHR,lo_HQS,s1452 |
| s1587 | R74 | sumlo | lo | FHP | 18611/125000 | lo_AFP,s1433,s1565,s1444,s1484 |
| s1589 | R76 | sumlo | lo | BCP | 17139/125000 | s1549,lo_CHP,lo_BHP,s1551,s1391 |
| s1603 | R82 | sumlo | lo | AQR | 91967/250000 | s1539,s1583,s1567,s1455,hi_EHR |
| s1607 | R84 | sumlo | lo | BQR | 363321/1000000 | s1402,s1583,s1398,s1455,hi_EHR |
| s1608 | R85 | sumlo | lo | CRS | 124449/1000000 | s1418,lo_FRS,s1424,lo_ERS,s1438 |
| s1611 | R86 | sumlo | lo | CQR | 245513/1000000 | s1418,s1583,s1521,s1455,hi_EHR |
| s1613 | R87 | sumlo | lo | HRS | 11499/62500 | lo_EHR,lo_FRS,lo_ERS,s1458,s1438 |
| s1622 | R92 | sumlo | lo | BRS | 184151/1000000 | s1543,s1613,s1575,lo_ERS,s1452 |
| s1623 | R94 | sumlo | lo | EFS | 73249/250000 | lo_CES,lo_FRS,s1428,lo_ERS,s38 |
| s1624 | R94 | diffhi | hi | CFS | 463749/1000000 | s38,s1442,lo_CES,lo_FRS,lo_ERS |
| s1626 | R95 | diffhi | hi | CHS | 53989/100000 | s38,s1452,lo_CES,s1613,lo_ERS |
| s1630 | R98 | sumlo | lo | EQS | 189203/1000000 | s1441,lo_QRS,lo_ERS,lo_HQS,s1453 |
| s1633 | R99 | linear | lo | ACH | 7857/25000 | s1502,s1565,lo_CHP |
| s1636 | R100 | linear | hi | AEF | 68181/100000 | hi_AEH,s1389,hi_EFH |
| s1637 | R101 | linear | lo | AEF | 558677/1000000 | s1541,s1553,s1559 |
| s1645 | R104 | linear | lo | AFH | 335643/1000000 | lo_AFP,s1565,s1587 |
| s1648 | R104 | linear | hi | FHP | 4031/15625 | s1568,lo_AFP,s1565 |
| s1651 | R106 | linear | lo | AFR | 38851/62500 | s1553,s1603,lo_FQR |
| s1656 | R107 | linear | lo | BCH | 40389/125000 | s1589,lo_BHP,lo_CHP |
| s1659 | R109 | linear | hi | BEF | 802701/1000000 | hi_BEH,s1403,hi_EFH |
| s1660 | R109 | linear | lo | BEH | 368807/500000 | s1557,s1403,hi_EFH |
| s1661 | R110 | linear | lo | BEF | 575069/1000000 | s1545,s1556,s1559 |
| s1664 | R111 | linear | lo | BER | 495017/1000000 | s1543,s1622,lo_ERS |
| s1665 | R112 | linear | lo | BFH | 398753/1000000 | s1549,lo_BHP,s1587 |
| s1668 | R113 | linear | lo | BHQ | 378767/1000000 | s1665,s1556,s1460 |
| s1671 | R115 | linear | lo | BFR | 610723/1000000 | s1556,s1607,lo_FQR |
| s1678 | R118 | linear | lo | CEF | 563531/1000000 | hi_CER,s1424,s1446 |
| s1679 | R119 | linear | hi | CEF | 724757/1000000 | lo_CES,s1624,s1442 |
| s1680 | R120 | linear | lo | CEH | 350289/500000 | hi_CER,s1521,lo_EHR |
| s1681 | R121 | linear | hi | CEH | 181433/200000 | lo_CES,s1626,s1452 |
| s1683 | R122 | linear | lo | CER | 310449/1000000 | lo_CES,s1608,lo_ERS |
| s1690 | R124 | linear | lo | CFR | 431513/1000000 | lo_CFQ,s1611,lo_FQR |
| s1691 | R125 | linear | hi | CQS | 277749/1000000 | lo_CFQ,s1624,lo_FQS |
| s1693 | R126 | linear | hi | CFR | 51701/100000 | s1624,s38,lo_FRS |
| s1694 | R126 | linear | lo | CFS | 94563/250000 | s1690,s38,lo_FRS |
| s1695 | R127 | linear | hi | CHR | 502167/1000000 | s1626,s38,s1613 |
| s1697 | R128 | linear | hi | CQR | 33101/100000 | s1691,s38,lo_QRS |
| s1699 | R129 | linear | lo | EHP | 165221/500000 | hi_EFH,s1444,s1587 |
| s1701 | R130 | linear | lo | EHQ | 117581/1000000 | hi_EFH,s1559,s1561 |
| s1704 | R131 | linear | hi | EFR | 268069/500000 | hi_EFH,hi_EHR,s1458 |
| s1705 | R131 | linear | hi | FHR | 443797/1000000 | hi_EFH,s1446,hi_EHR |
| s1706 | R132 | linear | lo | EFH | 26729/200000 | s1623,s1452,s1461 |
| s1707 | R132 | linear | lo | EHS | 408757/1000000 | hi_EFH,s1623,s1461 |
| s1708 | R132 | linear | hi | EFS | 172257/500000 | hi_EFH,s1452,s1461 |
| s1709 | R132 | linear | hi | FHS | 176221/500000 | hi_EFH,s1623,s1452 |
| s1710 | R133 | linear | lo | EFP | 383621/1000000 | s1559,lo_EPQ,s1564 |
| s1714 | R134 | linear | lo | EFR | 119749/250000 | s1623,lo_ERS,lo_FRS |
| s1721 | R137 | linear | hi | EHS | 456387/1000000 | hi_EHR,lo_ERS,s1613 |
| s1722 | R137 | linear | hi | HRS | 115807/500000 | hi_EHR,s1707,lo_ERS |
| s1725 | R139 | linear | lo | EQR | 375203/1000000 | s1630,lo_ERS,lo_QRS |
| s1729 | R140 | linear | lo | FHR | 198021/500000 | s1561,lo_FQR,s1583 |
| s1730 | R140 | linear | hi | HQR | 227909/1000000 | s1561,s1705,lo_FQR |
| s1731 | R141 | linear | hi | FHQ | 83221/500000 | s1709,lo_FQS,lo_HQS |
| s1733 | R141 | linear | lo | FHS | 38611/125000 | s1561,lo_FQS,lo_HQS |
| s1743 | R147 | bary_hi | lo | BES | 109131/500000 | s1520,s1664 |
| s1757 | R0 | sub | hi | AEP | 394269/1000000 | hi_AEH,s1565,s1699 |
| s1759 | R3 | sub | hi | BEP | 283457/500000 | hi_BEH,lo_BHP,s1699 |
| s1760 | R4 | sum | lo | BER | 495413/1000000 | s1743,s1622,lo_ERS |
| s1765 | R11 | sub | hi | EQS | 122903/500000 | s1721,s1701,lo_HQS |
| s1769 | R14 | sumlo | lo | ABE | 7801/40000 | lo_ABC,lo_AEH,lo_ABH,s1517,hi_ACH |
| s1772 | R15 | sumlo | lo | ABF | 88891/500000 | s1769,lo_AFP,lo_ABP,s1637,s1757 |
| s1781 | R16 | sumlo | lo | ACF | 727/2000 | s1517,s1645,s1633,s1637,hi_AEH |
| s1786 | R20 | sumlo | lo | AEP | 262897/1000000 | s1637,s1565,lo_AEH,lo_AFP,s1568 |
| s1795 | R22 | sumlo | lo | ABE | 105167/500000 | lo_ABC,s1661,s1772,s1520,hi_BCF |
| s1807 | R25 | sumlo | lo | ACR | 72161/500000 | lo_ABC,s1690,s1781,lo_BCR,hi_BCF |
| s1809 | R26 | sumlo | lo | ACE | 197819/500000 | s1633,s1683,s1807,s1680,s1695 |
| s1813 | R27 | sumlo | lo | BCE | 329499/1000000 | s1656,s1683,lo_BCR,s1680,s1695 |
| s1814 | R27 | sumlo | lo | CHR | 178049/500000 | s1656,s1683,lo_BCR,s1680,hi_BCE |
| s1818 | R28 | sumlo | lo | BCF | 336817/1000000 | s1656,s1690,lo_BCR,s1552,s1695 |
| s1826 | R32 | sumlo | lo | BEP | 340083/1000000 | s1795,s1710,s1786,s1661,s1636 |
| s1827 | R34 | sumlo | lo | BEQ | 128851/500000 | s1795,s1725,s1541,s1760,hi_AER |
| s1830 | R37 | sumlo | lo | AER | 540171/1000000 | s1809,lo_EHR,lo_AEH,s1683,s1681 |
| s1839 | R43 | sumlo | lo | AEQ | 118027/500000 | s1786,s1725,s1830,lo_EPQ,hi_EPR |
| s1840 | R44 | sumlo | lo | BER | 252249/500000 | s1813,lo_EHR,s1660,s1683,s1681 |
| s1843 | R46 | sumlo | lo | CEQ | 313167/1000000 | s1813,s1725,s1827,s1683,hi_BER |
| s1844 | R47 | sumlo | lo | BES | 58359/250000 | s1813,lo_ERS,s1840,lo_CES,hi_CER |
| s1845 | R49 | sumlo | lo | BER | 252639/500000 | s1660,lo_ERS,s1844,lo_EHR,s1721 |
| s1847 | R50 | sumlo | lo | BEQ | 69207/250000 | s1826,s1725,s1845,lo_EPQ,hi_EPR |
| s1851 | R53 | sumlo | lo | BFP | 178469/1000000 | s1772,s1710,lo_AFP,s1661,s1636 |
| s1856 | R55 | sumlo | lo | CFH | 352849/1000000 | s1781,s1729,s1645,s1690,hi_AFR |
| s1857 | R56 | sumlo | lo | AFQ | 177203/1000000 | s1781,lo_FQR,s1651,lo_CFQ,s1693 |
| s1864 | R57 | sumlo | lo | CFP | 143131/500000 | s1818,s1710,s1851,s1678,s1659 |
| s1866 | R58 | sumlo | lo | BFQ | 170443/1000000 | s1818,lo_FQR,s1671,lo_CFQ,s1693 |
| s1871 | R60 | sumlo | lo | FPR | 104399/250000 | s1864,s1714,s1690,s1710,s1679 |
| s1874 | R62 | sumlo | lo | FHQ | 13471/100000 | s1856,lo_FQR,lo_CFQ,s1729,s1693 |
| s1879 | R63 | sumlo | lo | FPQ | 12661/100000 | s1864,lo_FQR,lo_CFQ,s1871,s1693 |
| s1883 | R67 | sumlo | lo | AHR | 512853/1000000 | s1633,lo_EHR,lo_AEH,s1814,s1681 |
| s1886 | R68 | diffhi | hi | AFH | 424629/1000000 | hi_AEH,s1705,s1883,s1706,lo_EHR |
| s1906 | R72 | sumlo | lo | HQR | 9441/50000 | s1701,s1613,lo_EHR,lo_HQS,s1721 |
| s1911 | R73 | sumlo | lo | AHP | 48667/500000 | lo_ABP,s1699,s1786,lo_BHP,s1759 |
| s1913 | R74 | sumlo | lo | FHP | 172649/1000000 | lo_AFP,s1699,s1911,s1710,s1757 |
| s1916 | R76 | sumlo | lo | BCP | 167529/1000000 | s1851,lo_CHP,lo_BHP,s1864,s1648 |
| s1929 | R77 | sumlo | lo | BQR | 101249/250000 | s1866,s1906,s1668,lo_FQR,s1731 |
| s1931 | R78 | sumlo | lo | BQS | 15991/50000 | s1668,lo_QRS,s1929,lo_HQS,s1730 |
| s1933 | R79 | sumlo | lo | EFQ | 193403/1000000 | s1843,lo_FQR,lo_CFQ,s1725,s1697 |
| s1952 | R83 | diffhi | hi | BHR | 84389/100000 | hi_BER,s1695,lo_BCR,lo_EHR,s1683 |
| s1956 | R85 | sumlo | lo | CRS | 64351/500000 | s1683,lo_FRS,s1690,lo_ERS,s1704 |
| s1965 | R87 | sumlo | lo | HRS | 189081/1000000 | lo_EHR,lo_FRS,lo_ERS,s1729,s1704 |
| s1975 | R93 | sumlo | lo | BRS | 104661/500000 | s1844,lo_QRS,s1931,lo_ERS,s1765 |
| s1976 | R94 | sumlo | lo | EFS | 59929/200000 | lo_CES,lo_FRS,s1694,lo_ERS,s38 |
| s1979 | R95 | diffhi | hi | CHS | 528679/1000000 | s38,s1721,lo_CES,s1965,lo_ERS |
| s1983 | R96 | sumlo | lo | HRS | 7749/40000 | s1707,lo_FRS,lo_ERS,s1733,s1708 |
| s1986 | R98 | sumlo | lo | EQS | 20147/100000 | s1707,lo_QRS,lo_ERS,lo_HQS,s1722 |
| s1987 | R98 | diffhi | hi | QRS | 59061/500000 | s1765,s1722,lo_ERS,lo_HQS,s1707 |
| s1995 | R100 | linear | hi | AEF | 133597/200000 | hi_AEH,s1645,hi_EFH |
| s1997 | R101 | linear | lo | AEF | 30333/50000 | s1839,s1857,s1933 |
| s2007 | R104 | linear | lo | AFH | 362983/1000000 | lo_AFP,s1911,s1913 |
| s2011 | R105 | linear | lo | AHQ | 23359/62500 | s2007,s1857,s1731 |
| s2024 | R107 | linear | lo | BCH | 353529/1000000 | s1916,lo_BHP,lo_CHP |
| s2028 | R109 | linear | hi | BEF | 155353/200000 | hi_BEH,s1665,hi_EFH |
| s2030 | R110 | linear | lo | BEF | 320337/500000 | s1847,s1866,s1933 |
| s2034 | R111 | linear | lo | BER | 267879/500000 | s1844,s1975,lo_ERS |
| s2035 | R112 | linear | lo | BFH | 222059/500000 | s1851,lo_BHP,s1913 |
| s2041 | R114 | linear | hi | BFR | 843569/1000000 | s2035,s1952,s1705 |
| s2051 | R116 | linear | lo | BQR | 20551/50000 | s1931,s1975,s1987 |
| s2053 | R117 | linear | lo | CEF | 59957/100000 | s1843,lo_CFQ,s1933 |
| s2056 | R121 | linear | hi | CEH | 446033/500000 | lo_CES,s1979,s1721 |
| s2058 | R122 | linear | lo | CER | 157351/500000 | lo_CES,s1956,lo_ERS |
| s2061 | R123 | linear | lo | CHQ | 279407/1000000 | s1856,lo_CFQ,s1731 |
| s2068 | R127 | linear | hi | CHR | 96243/200000 | s1979,s38,s1983 |
| s2073 | R129 | linear | lo | EHP | 371107/1000000 | hi_EFH,s1710,s1913 |
| s2076 | R130 | linear | lo | EHQ | 2859/20000 | hi_EFH,s1933,s1874 |
| s2084 | R133 | linear | lo | EFP | 413013/1000000 | s1933,lo_EPQ,s1879 |
| s2090 | R134 | linear | lo | EFR | 97129/200000 | s1976,lo_ERS,lo_FRS |
| s2099 | R136 | linear | lo | EHS | 21871/50000 | s2076,s1986,lo_HQS |
| s2101 | R137 | linear | lo | EHR | 144829/200000 | s2099,lo_ERS,s1983 |
| s2129 | R147 | bary_hi | lo | BES | 235979/1000000 | s1813,s2034 |
| s2141 | R0 | sub | hi | AEP | 14001/40000 | hi_AEH,s1911,s2073 |
| s2142 | R1 | sum | lo | AEH | 188187/250000 | s1839,s2011,s2076 |
| s2151 | R4 | sum | lo | BER | 538301/1000000 | s2129,s1975,lo_ERS |
| s2152 | R5 | sum | lo | BFR | 674463/1000000 | s1866,s2051,lo_FQR |
| s2155 | R6 | sum | lo | CEH | 183881/250000 | s1843,s2061,s2076 |
| s2162 | R14 | sumlo | lo | ABE | 211831/1000000 | lo_ABC,s2142,lo_ABH,s1809,hi_ACH |
| s2167 | R15 | sumlo | lo | ABF | 217469/1000000 | s2162,lo_AFP,lo_ABP,s1997,s2141 |
| s2185 | R20 | sumlo | lo | AEP | 151961/500000 | s1997,s1911,s2142,lo_AFP,s1886 |
| s2203 | R23 | sumlo | lo | ABR | 40479/250000 | lo_ABC,s2152,s2167,lo_BCR,hi_BCF |
| s2205 | R24 | sumlo | lo | ABE | 16359/62500 | s2167,s2151,s2203,s2030,s2041 |
| s2238 | R27 | sumlo | lo | BCE | 186673/500000 | s2024,s2058,lo_BCR,s2155,s2068 |
| s2256 | R30 | sumlo | lo | ACE | 493621/1000000 | s2205,s2053,s1997,s2238,s2028 |
| s2273 | R37 | sumlo | lo | AER | 41641/62500 | s2256,s2101,s2142,s2058,s2056 |
| s2289 | R40 | sumlo | lo | AEF | 670337/1000000 | s2185,s2090,s2273,s2084,hi_EPR |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AEF | s2289 | s1995 |

The two cited bounds give 670337/1000000 <= |AEF| <= 133597/200000, with exact positive gap 147/62500.

## Leaf A020

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 279/1000 | cost:Q |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AES | AES | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 279/1000 | cost:P |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AFS | AFS | lo | 279/1000 | cost:Q |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_AHQ | AHQ | lo | 279/1000 | cost:P |
| lo_AHR | AHR | lo | 347/500 | cost:PQ |
| lo_AHS | AHS | lo | 347/500 | cost:PQ |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:Q |
| lo_CHS | CHS | lo | 279/1000 | cost:Q |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPS | HPS | lo | 279/1000 | cost:Q |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_AHS | AHS | hi | 5161583/7044125 | C056 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEH","AEP","AHP","EHP"] | ["fan","AEH","P"] |
| R1 | fan | ["AEH","AEQ","AHQ","EHQ"] | ["fan","AEH","Q"] |
| R2 | fan | ["AHR","AHQ","AQR","HQR"] | ["fan","AHR","Q"] |
| R3 | fan | ["AHS","AHQ","AQS","HQS"] | ["fan","AHS","Q"] |
| R4 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R5 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R6 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R7 | fan | ["HPS","HPQ","HQS","PQS"] | ["fan","HPS","Q"] |
| R8 | plu | ["ABR","ACH","ABC","AHR","ABH","ACR"] | ["plu","ABCHR"] |
| R9 | plu | ["ABS","ACH","ABC","AHS","ABH","ACS"] | ["plu","ABCHS"] |
| R10 | plu | ["AEP","AFH","AEF","AHP","AEH","AFP"] | ["plu","AEFHP"] |
| R11 | plu | ["AEH","AQS","AEQ","AHS","AES","AHQ"] | ["plu","AEHQS"] |
| R12 | plu | ["AFH","APS","AFP","AHS","AFS","AHP"] | ["plu","AFHPS"] |
| R13 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R14 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R15 | plu | ["AEF","EHR","AEH","EFR","AER","EFH"] | ["plu","EAFHR"] |
| R16 | plu | ["AEQ","EHP","AEH","EPQ","AEP","EHQ"] | ["plu","EAHPQ"] |
| R17 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R18 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R19 | plu | ["AHP","BHS","ABH","HPS","AHS","BHP"] | ["plu","HABPS"] |
| R20 | plu | ["AEH","FHR","AFH","EHR","AHR","EFH"] | ["plu","HAEFR"] |
| R21 | plu | ["AEH","FHS","AFH","EHS","AHS","EFH"] | ["plu","HAEFS"] |
| R22 | plu | ["AHR","EHQ","AEH","HQR","AHQ","EHR"] | ["plu","HAEQR"] |
| R23 | plu | ["AHR","HQS","AHQ","HRS","AHS","HQR"] | ["plu","HAQRS"] |
| R24 | plu | ["AHP","BEP","ABP","EHP","AEP","BHP"] | ["plu","PABEH"] |
| R25 | plu | ["AEQ","HPQ","AHQ","EPQ","APQ","EHQ"] | ["plu","QAEHP"] |
| R26 | plu | ["AQR","EHQ","AEQ","HQR","AHQ","EQR"] | ["plu","QAEHR"] |
| R27 | plu | ["AEQ","PQR","APQ","EQR","AQR","EPQ"] | ["plu","QAEPR"] |
| R28 | plu | ["ACR","BHR","ABR","CHR","AHR","BCR"] | ["plu","RABCH"] |
| R29 | plu | ["AER","CHR","ACR","EHR","AHR","CER"] | ["plu","RACEH"] |
| R30 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R31 | plu | ["ARS","EHR","AER","HRS","AHR","ERS"] | ["plu","RAEHS"] |
| R32 | plu | ["AFR","HRS","AHR","FRS","ARS","FHR"] | ["plu","RAFHS"] |
| R33 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R34 | plu | ["BER","CRS","BCR","ERS","BRS","CER"] | ["plu","RBCES"] |
| R35 | plu | ["BRS","EHR","BER","HRS","BHR","ERS"] | ["plu","RBEHS"] |
| R36 | plu | ["ACS","BHS","ABS","CHS","AHS","BCS"] | ["plu","SABCH"] |
| R37 | plu | ["ARS","BHS","ABS","HRS","AHS","BRS"] | ["plu","SABHR"] |
| R38 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R39 | plu | ["ARS","EHS","AES","HRS","AHS","ERS"] | ["plu","SAEHR"] |
| R40 | plu | ["AFS","HRS","AHS","FRS","ARS","FHS"] | ["plu","SAFHR"] |
| R41 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R42 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R43 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R44 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R45 | linear | [{"AEH":1,"AHQ":-1,"AEQ":-1,"EHQ":-1},"0"] | ["affine_quad","AEHQ",1] |
| R46 | linear | [{"AHP":-1,"APQ":-1,"AHQ":1,"HPQ":-1},"0"] | ["affine_quad","AHPQ",1] |
| R47 | linear | [{"AHP":-1,"APS":-1,"AHS":1,"HPS":-1},"0"] | ["affine_quad","AHPS",1] |
| R48 | linear | [{"AHQ":-1,"AQR":-1,"AHR":1,"HQR":-1},"0"] | ["affine_quad","AHQR",1] |
| R49 | linear | [{"AHQ":-1,"AQS":-1,"AHS":1,"HQS":-1},"0"] | ["affine_quad","AHQS",1] |
| R50 | linear | [{"EHP":1,"EPQ":-1,"EHQ":-1,"HPQ":-1},"0"] | ["affine_quad","EHPQ",1] |
| R51 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R52 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R53 | linear | [{"ACS":-3,"AES":5,"ARS":-3},"0"] | ["barycentric","AS","S","CER","upper"] |
| R54 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s8 | R0 | sub | hi | EHP | 316233/500000 | hi_AEH,lo_AEP,lo_AHP |
| s11 | R1 | sub | hi | EHQ | 223233/500000 | hi_AEH,lo_AEQ,lo_AHQ |
| s23 | R2 | sub | hi | AQR | 223233/500000 | hi_AHR,lo_AHQ,lo_HQR |
| s28 | R3 | sub | hi | AQS | 360751/1000000 | hi_AHS,lo_AHQ,lo_HQS |
| s51 | R5 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s66 | R6 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s77 | R8 | sumlo | lo | ABR | 145169/1000000 | lo_ABC,lo_AHR,lo_ABH,lo_ACR,hi_ACH |
| s78 | R9 | sumlo | lo | ABS | 145169/1000000 | lo_ABC,lo_AHS,lo_ABH,lo_ACS,hi_ACH |
| s91 | R10 | sumlo | lo | AEP | 179479/1000000 | lo_AEF,lo_AHP,lo_AEH,lo_AFP,hi_AFH |
| s100 | R11 | diffhi | hi | AEQ | 388063/1000000 | hi_AEH,s28,lo_AES,lo_AHQ,lo_AHS |
| s102 | R12 | sumlo | lo | APS | 179479/1000000 | lo_AFP,lo_AHS,lo_AFS,lo_AHP,hi_AFH |
| s110 | R13 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s122 | R14 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s133 | R15 | sumlo | lo | EHR | 145029/500000 | lo_AEH,lo_EFR,lo_AER,lo_EFH,hi_AEF |
| s135 | R16 | sumlo | lo | AEQ | 128439/1000000 | lo_AEH,lo_EPQ,s91,lo_EHQ,s8 |
| s138 | R17 | sumlo | lo | CEH | 186261/500000 | s122,s133,lo_BEH,lo_CER,hi_BER |
| s147 | R18 | sumlo | lo | EHS | 11591/62500 | s138,lo_ERS,lo_CES,s133,hi_CER |
| s154 | R19 | sumlo | lo | AHP | 107373/1000000 | lo_ABH,lo_HPS,lo_AHS,lo_BHP,hi_BHS |
| s159 | R20 | sumlo | lo | FHR | 44433/250000 | lo_AFH,s133,lo_AHR,lo_EFH,hi_AEH |
| s160 | R21 | sumlo | lo | FHS | 5683/40000 | lo_AFH,s147,lo_AHS,lo_EFH,hi_AEH |
| s162 | R22 | sumlo | lo | EHQ | 44433/250000 | lo_AEH,lo_HQR,lo_AHQ,s133,hi_AHR |
| s167 | R23 | sumlo | lo | HQS | 110559/1000000 | lo_AHQ,lo_HRS,lo_AHS,lo_HQR,hi_AHR |
| s178 | R25 | sumlo | lo | HPQ | 6841/62500 | lo_AHQ,lo_EPQ,lo_APQ,s162,s100 |
| s179 | R26 | sumlo | lo | AQR | 201103/1000000 | s135,lo_HQR,lo_AHQ,lo_EQR,s11 |
| s180 | R26 | sumlo | lo | EHQ | 201103/1000000 | s135,lo_HQR,lo_AHQ,lo_EQR,s23 |
| s181 | R27 | sumlo | lo | PQR | 115057/1000000 | lo_APQ,lo_EQR,s179,lo_EPQ,s100 |
| s185 | R28 | sumlo | lo | ACR | 113293/1000000 | s77,lo_CHR,lo_AHR,lo_BCR,hi_BHR |
| s187 | R29 | sumlo | lo | AER | 73129/200000 | s185,s133,lo_AHR,lo_CER,hi_CHR |
| s194 | R30 | sumlo | lo | EHR | 78993/250000 | s187,s159,lo_AHR,lo_EFR,hi_AFR |
| s195 | R31 | sumlo | lo | ARS | 43/320 | s187,lo_HRS,lo_AHR,lo_ERS,hi_EHR |
| s196 | R32 | sumlo | lo | HRS | 108037/1000000 | lo_AHR,lo_FRS,s195,s159,hi_AFR |
| s198 | R33 | sumlo | lo | BER | 360033/1000000 | lo_BCR,s194,lo_BHR,lo_CER,hi_CHR |
| s202 | R34 | diffhi | hi | BRS | 2479/8000 | hi_BER,s51,lo_BCR,lo_ERS,lo_CER |
| s206 | R35 | sumlo | lo | BRS | 28209/200000 | s198,s196,lo_BHR,lo_ERS,hi_EHR |
| s212 | R36 | sumlo | lo | ACS | 32107/250000 | s78,lo_CHS,lo_AHS,s110,hi_BHS |
| s216 | R37 | sumlo | lo | ARS | 3369/25000 | s78,s196,lo_AHS,s206,hi_BHS |
| s218 | R38 | sumlo | lo | AES | 167347/1000000 | s212,lo_ERS,s216,lo_CES,s51 |
| s223 | R39 | sumlo | lo | ARS | 75471/500000 | s218,s196,lo_AHS,lo_ERS,s66 |
| s225 | R40 | sumlo | lo | HRS | 118677/1000000 | lo_AHS,lo_FRS,s223,s160,hi_AFS |
| s229 | R41 | sumlo | lo | BES | 151739/1000000 | s110,lo_ERS,s206,lo_CES,s51 |
| s232 | R42 | sumlo | lo | EHS | 266397/1000000 | s229,s225,lo_BHS,lo_ERS,s202 |
| s236 | R43 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s51 |
| s249 | R44 | linear | lo | AEF | 314439/1000000 | s135,lo_AFQ,lo_EFQ |
| s264 | R46 | linear | lo | AHQ | 309829/1000000 | s154,lo_APQ,s178 |
| s269 | R47 | linear | hi | HPS | 445899/1000000 | s154,hi_AHS,s102 |
| s270 | R48 | linear | hi | AQR | 415637/1000000 | s264,hi_AHR,lo_HQR |
| s273 | R49 | linear | hi | AQS | 312363/1000000 | s264,hi_AHS,s167 |
| s310 | R50 | linear | lo | EHP | 403559/1000000 | s180,lo_EPQ,s178 |
| s314 | R51 | linear | lo | EHR | 239037/500000 | s232,lo_ERS,s225 |
| s317 | R52 | linear | lo | EQR | 76067/250000 | s236,lo_ERS,lo_QRS |
| s329 | R53 | linear | lo | AES | 83811/500000 | s212,s223 |
| s343 | R54 | bary_hi | lo | PQS | 19803/200000 | lo_CPQ,lo_EPQ,s181 |
| s354 | R4 | sub | hi | BEP | 493797/1000000 | hi_BEH,lo_BHP,s310 |
| s366 | R7 | sub | hi | HPQ | 9453/40000 | s269,s167,s343 |
| s394 | R10 | sumlo | lo | AEP | 9749/50000 | s249,s154,lo_AEH,lo_AFP,hi_AFH |
| s404 | R11 | diffhi | hi | AEQ | 293551/1000000 | hi_AEH,s273,s329,s264,lo_AHS |
| s472 | R22 | sumlo | lo | EHQ | 259831/1000000 | lo_AEH,lo_HQR,s264,s314,hi_AHR |
| s483 | R24 | sumlo | lo | AHP | 56363/500000 | lo_ABP,s310,s394,lo_BHP,s354 |
| s515 | R25 | sumlo | lo | AEQ | 8967/40000 | s264,lo_EPQ,lo_APQ,s472,s366 |
| s516 | R25 | sumlo | lo | HPQ | 90237/500000 | s264,lo_EPQ,lo_APQ,s472,s404 |
| s519 | R26 | sumlo | lo | EHQ | 27697/100000 | s515,lo_HQR,s264,s317,s270 |
| s652 | R45 | linear | hi | AHQ | 317321/1000000 | hi_AEH,s515,s519 |
| s673 | R46 | linear | hi | AHP | 43847/1000000 | s652,lo_APQ,s516 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AHP | s483 | s673 |

The two cited bounds give 56363/500000 <= |AHP| <= 43847/1000000, with exact positive gap 68879/1000000.

## Leaf A021

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_AHQ | AHQ | lo | 279/1000 | cost:P |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHQ | BHQ | lo | 279/1000 | cost:P |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 279/1000 | cost:Q |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFP | EFP | lo | 279/1000 | cost:Q |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHP | EHP | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 347/500 | cost:QS |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHS | FHS | lo | 279/1000 | cost:Q |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCR | BCR | hi | 279/2000 | C047 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFP | CFP | hi | 2486447/5123000 | C057 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_FHS | FHS | hi | 297140336344849/607688739109375 | C058 |
| hi_HRS | HRS | hi | 3505826817068943/12904724294000000 | C049 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AEH","AEP","AHP","EHP"] | ["fan","AEH","P"] |
| R2 | fan | ["AFH","AFP","AHP","FHP"] | ["fan","AFH","P"] |
| R3 | fan | ["BCF","BCQ","BFQ","CFQ"] | ["fan","BCF","Q"] |
| R4 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R5 | fan | ["EHR","EHQ","EQR","HQR"] | ["fan","EHR","Q"] |
| R6 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R7 | fan | ["FHS","FHQ","FQS","HQS"] | ["fan","FHS","Q"] |
| R8 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R9 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R10 | plu | ["CER","CHS","CEH","CRS","CES","CHR"] | ["plu","CEHRS"] |
| R11 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R12 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R13 | plu | ["BEF","EHR","BEH","EFR","BER","EFH"] | ["plu","EBFHR"] |
| R14 | plu | ["CEF","EHR","CEH","EFR","CER","EFH"] | ["plu","ECFHR"] |
| R15 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R16 | plu | ["BCF","EFQ","BEF","CFQ","BFQ","CEF"] | ["plu","FBCEQ"] |
| R17 | plu | ["BCF","FHQ","BFH","CFQ","BFQ","CFH"] | ["plu","FBCHQ"] |
| R18 | plu | ["BCF","FQR","BFQ","CFR","BFR","CFQ"] | ["plu","FBCQR"] |
| R19 | plu | ["CFP","EFQ","CEF","FPQ","CFQ","EFP"] | ["plu","FCEPQ"] |
| R20 | plu | ["AHR","CHQ","ACH","HQR","AHQ","CHR"] | ["plu","HACQR"] |
| R21 | plu | ["BHR","CEH","BCH","EHR","BEH","CHR"] | ["plu","HBCER"] |
| R22 | plu | ["CHQ","EHS","CEH","HQS","CHS","EHQ"] | ["plu","HCEQS"] |
| R23 | plu | ["CHQ","FHR","CFH","HQR","CHR","FHQ"] | ["plu","HCFQR"] |
| R24 | plu | ["EHS","HQR","EHQ","HRS","EHR","HQS"] | ["plu","HEQRS"] |
| R25 | plu | ["ACP","BFP","ABP","CFP","AFP","BCP"] | ["plu","PABCF"] |
| R26 | plu | ["AEP","FHP","AFP","EHP","AHP","EFP"] | ["plu","PAEFH"] |
| R27 | plu | ["BCP","FHP","BFP","CHP","BHP","CFP"] | ["plu","PBCFH"] |
| R28 | plu | ["BCQ","FHQ","BFQ","CHQ","BHQ","CFQ"] | ["plu","QBCFH"] |
| R29 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R30 | plu | ["BQR","EHR","BER","HQR","BHR","EQR"] | ["plu","RBEHQ"] |
| R31 | plu | ["CFR","EHR","CER","FHR","CHR","EFR"] | ["plu","RCEFH"] |
| R32 | plu | ["EFR","HRS","EHR","FRS","ERS","FHR"] | ["plu","REFHS"] |
| R33 | plu | ["EQR","HRS","EHR","QRS","ERS","HQR"] | ["plu","REHQS"] |
| R34 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R35 | plu | ["EFS","HRS","EHS","FRS","ERS","FHS"] | ["plu","SEFHR"] |
| R36 | plu | ["EQS","HRS","EHS","QRS","ERS","HQS"] | ["plu","SEHQR"] |
| R37 | linear | [{"BCF":1,"BFQ":-1,"BCQ":-1,"CFQ":-1},"0"] | ["affine_quad","BCFQ",1] |
| R38 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R39 | linear | [{"BCH":-1,"BHR":1,"BCR":1,"CHR":-1},"0"] | ["affine_quad","BCHR",-1] |
| R40 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R41 | linear | [{"BFH":1,"BHP":-1,"BFP":-1,"FHP":-1},"0"] | ["affine_quad","BFHP",1] |
| R42 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R43 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R44 | linear | [{"CFH":1,"CHQ":-1,"CFQ":-1,"FHQ":-1},"0"] | ["affine_quad","CFHQ",1] |
| R45 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R46 | linear | [{"EFH":1,"EHS":1,"EFS":-1,"FHS":-1},"0"] | ["affine_quad","EFHS",1] |
| R47 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R48 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R49 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R50 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R51 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R52 | linear | [{"FHQ":-1,"FQR":-1,"FHR":1,"HQR":-1},"0"] | ["affine_quad","FHQR",-1] |
| R53 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R54 | bary | [["BHS",-1],[["BCH",-1],["BEH",-1],["BHR",-1]],11,[3,3,3]] | ["side_pair_weights","BH","S","CER","3/11"] |
| R55 | bary | [["FQS",1],[["CFQ",1],["EFQ",1],["FQR",1]],11,[3,3,3]] | ["side_pair_weights","FQ","S","CER","3/11"] |
| R56 | bary | [["HRS",1],[["CHR",-1],["EHR",1],null],11,[3,3,3]] | ["side_pair_weights","HR","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s4 | R0 | sub | hi | ACP | 12727/40000 | hi_ACH,lo_AHP,lo_CHP |
| s9 | R1 | sub | hi | AEP | 223233/500000 | hi_AEH,lo_AHP,lo_EHP |
| s15 | R2 | sub | hi | FHP | 12727/40000 | hi_AFH,lo_AFP,lo_AHP |
| s24 | R3 | sub | hi | BCQ | 3263/10000 | hi_BCF,lo_BFQ,lo_CFQ |
| s51 | R5 | sub | hi | EQR | 547371/1000000 | hi_EHR,lo_EHQ,lo_HQR |
| s53 | R6 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s59 | R7 | sub | hi | FHQ | 37871/125000 | hi_FHS,lo_FQS,lo_HQS |
| s85 | R9 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s86 | R9 | sumlo | lo | CHR | 44673/200000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_BCE |
| s108 | R11 | sumlo | lo | BER | 326361/1000000 | s85,lo_EHR,lo_BEH,lo_CER,hi_CEH |
| s109 | R11 | sumlo | lo | CEH | 476613/1000000 | s85,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s119 | R14 | sumlo | lo | CEF | 2167/10000 | s109,lo_EFR,lo_CER,lo_EFH,hi_EHR |
| s122 | R15 | sumlo | lo | EHS | 65531/200000 | s109,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s129 | R19 | sumlo | lo | EFQ | 94983/1000000 | s119,lo_FPQ,lo_CFQ,lo_EFP,hi_CFP |
| s135 | R20 | sumlo | lo | CHQ | 107843/1000000 | lo_ACH,lo_HQR,lo_AHQ,s86,hi_AHR |
| s137 | R21 | sumlo | lo | BHR | 367147/1000000 | lo_BCH,lo_EHR,lo_BEH,s86,hi_CEH |
| s142 | R24 | sumlo | lo | HQR | 133713/1000000 | lo_EHQ,lo_HRS,lo_EHR,lo_HQS,s53 |
| s144 | R25 | sumlo | lo | BFP | 27183/250000 | lo_ABP,lo_CFP,lo_AFP,lo_BCP,s4 |
| s151 | R27 | sumlo | lo | BCP | 11333/100000 | s144,lo_CHP,lo_BHP,lo_CFP,s15 |
| s156 | R28 | sumlo | lo | BCQ | 59373/500000 | lo_BFQ,s135,lo_BHQ,lo_CFQ,s59 |
| s157 | R28 | sumlo | lo | FHQ | 22051/200000 | lo_BFQ,s135,lo_BHQ,lo_CFQ,s24 |
| s162 | R29 | sumlo | lo | CHR | 256793/1000000 | lo_BCR,lo_EHR,s137,lo_CER,hi_BER |
| s166 | R30 | sumlo | lo | BQR | 199179/1000000 | s108,s142,s137,lo_EQR,hi_EHR |
| s176 | R33 | sumlo | lo | HRS | 14063/100000 | lo_EHR,lo_QRS,lo_ERS,s142,s51 |
| s184 | R35 | sumlo | lo | EFS | 103837/500000 | s122,lo_FRS,lo_ERS,lo_FHS,hi_HRS |
| s185 | R36 | sumlo | lo | EQS | 144001/1000000 | s122,lo_QRS,lo_ERS,lo_HQS,hi_HRS |
| s205 | R37 | linear | lo | BCF | 152373/500000 | s156,lo_BFQ,lo_CFQ |
| s208 | R38 | linear | lo | BCH | 29933/100000 | s151,lo_BHP,lo_CHP |
| s210 | R39 | linear | lo | BHR | 416623/1000000 | s208,hi_BCR,s162 |
| s217 | R42 | linear | lo | BFR | 385179/1000000 | lo_BFQ,s166,lo_FQR |
| s220 | R43 | linear | lo | CEH | 154633/250000 | hi_CER,s162,lo_EHR |
| s221 | R43 | linear | hi | CHR | 117571/200000 | hi_CEH,hi_CER,lo_EHR |
| s233 | R47 | linear | lo | EFP | 280983/1000000 | s129,lo_EPQ,lo_FPQ |
| s235 | R48 | linear | lo | EFR | 196837/500000 | s184,lo_ERS,lo_FRS |
| s243 | R49 | linear | hi | EQR | 253329/500000 | lo_EHQ,hi_EHR,s142 |
| s247 | R50 | linear | hi | EHS | 499741/1000000 | hi_EHR,lo_ERS,s176 |
| s249 | R51 | linear | lo | EQR | 330001/1000000 | s185,lo_ERS,lo_QRS |
| s252 | R52 | linear | lo | FHR | 42121/125000 | s157,lo_FQR,s142 |
| s270 | R54 | bary_hi | lo | BHS | 109739/250000 | s208,lo_BEH,s210 |
| s284 | R55 | bary_lo | lo | FQS | 4677/50000 | lo_CFQ,s129,lo_FQR |
| s288 | R56 | bary_hi | hi | HRS | 65829/250000 | s162,hi_EHR |
| s300 | R7 | sum | lo | FHS | 59359/200000 | s157,s284,lo_HQS |
| s327 | R8 | sumlo | lo | CFR | 45271/200000 | s205,lo_CER,lo_BCR,s119,hi_BCE |
| s328 | R9 | sumlo | lo | BCE | 239917/1000000 | s208,lo_CER,lo_BCR,s220,s221 |
| s329 | R9 | sumlo | lo | CHR | 37941/125000 | s208,lo_CER,lo_BCR,s220,hi_BCE |
| s333 | R10 | sumlo | lo | CHS | 51617/200000 | s220,lo_CRS,lo_CES,s329,hi_CER |
| s352 | R11 | sumlo | lo | BER | 94811/250000 | s328,lo_EHR,lo_BEH,lo_CER,hi_CEH |
| s355 | R12 | sumlo | lo | BES | 173303/1000000 | s328,lo_ERS,s352,lo_CES,hi_CER |
| s356 | R13 | sumlo | lo | BEF | 52579/125000 | lo_BEH,s235,s352,lo_EFH,hi_EHR |
| s360 | R14 | sumlo | lo | CEF | 22963/62500 | s220,s235,lo_CER,lo_EFH,hi_EHR |
| s363 | R15 | sumlo | lo | EHS | 183689/500000 | s220,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s368 | R16 | sumlo | lo | EFQ | 8941/62500 | s356,lo_CFQ,lo_BFQ,s360,hi_BCF |
| s370 | R18 | sumlo | lo | FQR | 55507/500000 | lo_BFQ,s327,s217,lo_CFQ,hi_BCF |
| s375 | R21 | sumlo | lo | BHR | 27537/62500 | s208,lo_EHR,lo_BEH,s329,hi_CEH |
| s377 | R22 | sumlo | lo | CHQ | 32627/200000 | s220,lo_HQS,s333,lo_EHQ,s247 |
| s381 | R24 | sumlo | lo | HQR | 155321/1000000 | lo_EHQ,s176,lo_EHR,lo_HQS,s247 |
| s383 | R25 | sumlo | lo | BFP | 57337/500000 | lo_ABP,lo_CFP,lo_AFP,s151,s4 |
| s384 | R26 | sumlo | lo | FHP | 23329/200000 | lo_AFP,lo_EHP,lo_AHP,s233,s9 |
| s385 | R27 | sumlo | lo | BCP | 115067/1000000 | s383,lo_CHP,lo_BHP,lo_CFP,s15 |
| s390 | R28 | sumlo | lo | FHQ | 63007/500000 | lo_BFQ,s377,lo_BHQ,lo_CFQ,s24 |
| s400 | R30 | sumlo | lo | BQR | 278577/1000000 | s352,s381,s375,s249,hi_EHR |
| s402 | R31 | sumlo | lo | CFR | 36391/125000 | lo_CER,s252,s329,s235,hi_EHR |
| s407 | R33 | sumlo | lo | HRS | 155897/1000000 | lo_EHR,lo_QRS,lo_ERS,s381,s243 |
| s413 | R34 | sumlo | lo | BRS | 543/4000 | s355,s407,s270,lo_ERS,s247 |
| s418 | R35 | sumlo | lo | EFS | 234577/1000000 | s363,lo_FRS,lo_ERS,s300,s288 |
| s438 | R38 | linear | lo | BCH | 301067/1000000 | s385,lo_BHP,lo_CHP |
| s444 | R40 | linear | lo | BER | 402053/1000000 | s355,s413,lo_ERS |
| s445 | R41 | linear | lo | BFH | 324319/1000000 | s383,lo_BHP,s384 |
| s447 | R42 | linear | lo | BFR | 482591/1000000 | lo_BFQ,s400,s370 |
| s450 | R43 | linear | lo | CEH | 665267/1000000 | hi_CER,s329,lo_EHR |
| s453 | R44 | linear | lo | CFH | 382149/1000000 | lo_CFQ,s377,s390 |
| s462 | R45 | linear | hi | EFR | 116313/200000 | hi_EFH,hi_EHR,s252 |
| s463 | R45 | linear | hi | FHR | 524859/1000000 | hi_EFH,s235,hi_EHR |
| s467 | R48 | linear | lo | EFR | 420577/1000000 | s418,lo_ERS,lo_FRS |
| s479 | R52 | linear | lo | FHR | 392349/1000000 | s390,s370,s381 |
| s492 | R53 | bary_hi | lo | BES | 87541/500000 | s328,s444 |
| s503 | R55 | bary_lo | lo | FQS | 27891/250000 | lo_CFQ,s368,s370 |
| s507 | R56 | bary_hi | hi | HRS | 25057/100000 | s329,hi_EHR |
| s513 | R4 | sum | lo | BER | 50479/125000 | s492,s413,lo_ERS |
| s519 | R7 | sum | lo | FHS | 165289/500000 | s390,s503,lo_HQS |
| s547 | R9 | sumlo | lo | CHR | 12557/40000 | s438,lo_CER,lo_BCR,s450,hi_BCE |
| s571 | R13 | sumlo | lo | BEF | 449209/1000000 | lo_BEH,s467,s513,lo_EFH,hi_EHR |
| s574 | R14 | sumlo | lo | CEF | 416901/1000000 | s450,s467,lo_CER,lo_EFH,hi_EHR |
| s576 | R15 | sumlo | lo | EHS | 19023/50000 | s450,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s587 | R16 | sumlo | lo | EFQ | 39307/250000 | s571,lo_CFQ,lo_BFQ,s574,hi_BCF |
| s588 | R17 | sumlo | lo | FHQ | 16031/125000 | s445,lo_CFQ,lo_BFQ,s453,hi_BCF |
| s590 | R18 | sumlo | lo | FQR | 17557/125000 | lo_BFQ,s402,s447,lo_CFQ,hi_BCF |
| s603 | R23 | sumlo | lo | CHQ | 37959/200000 | s453,s381,s547,s588,s463 |
| s612 | R28 | sumlo | lo | FHQ | 133613/1000000 | lo_BFQ,s603,lo_BHQ,lo_CFQ,s24 |
| s633 | R32 | sumlo | lo | HRS | 173721/1000000 | lo_EHR,lo_FRS,lo_ERS,s479,s462 |
| s648 | R35 | sumlo | lo | EFS | 8247/31250 | s576,lo_FRS,lo_ERS,s519,s507 |
| s704 | R46 | linear | lo | EHS | 409319/1000000 | hi_EFH,s648,s519 |
| s717 | R50 | linear | hi | EHS | 9333/20000 | hi_EHR,lo_ERS,s633 |
| s718 | R50 | linear | hi | HRS | 57763/250000 | hi_EHR,s704,lo_ERS |
| s750 | R55 | bary_lo | lo | FQS | 123459/1000000 | lo_CFQ,s587,s590 |
| s771 | R7 | sum | lo | FHS | 43759/125000 | s612,s750,lo_HQS |
| s954 | R35 | sumlo | lo | EFS | 15283/50000 | s704,lo_FRS,lo_ERS,s771,s718 |
| s1042 | R46 | linear | lo | EFH | 94541/500000 | s954,s717,s771 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | EFH | s1042 | hi_EFH |

The two cited bounds give 94541/500000 <= |EFH| <= 1996715486/10783609375, with exact positive gap 1352670139/345075500000.

## Leaf A022

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 279/1000 | cost:Q |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AES | AES | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 279/1000 | cost:P |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AFS | AFS | lo | 279/1000 | cost:Q |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_AHQ | AHQ | lo | 279/1000 | cost:P |
| lo_AHR | AHR | lo | 347/500 | cost:PQ |
| lo_AHS | AHS | lo | 347/500 | cost:PQ |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:Q |
| lo_CHS | CHS | lo | 279/1000 | cost:Q |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPS | HPS | lo | 279/1000 | cost:Q |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_AHS | AHS | hi | 5161583/7044125 | C056 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEH","AEP","AHP","EHP"] | ["fan","AEH","P"] |
| R1 | fan | ["AEH","AEQ","AHQ","EHQ"] | ["fan","AEH","Q"] |
| R2 | fan | ["AHR","AHQ","AQR","HQR"] | ["fan","AHR","Q"] |
| R3 | fan | ["AHS","AHQ","AQS","HQS"] | ["fan","AHS","Q"] |
| R4 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R5 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R6 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R7 | fan | ["HPS","HPQ","HQS","PQS"] | ["fan","HPS","Q"] |
| R8 | plu | ["ABR","ACH","ABC","AHR","ABH","ACR"] | ["plu","ABCHR"] |
| R9 | plu | ["ABS","ACH","ABC","AHS","ABH","ACS"] | ["plu","ABCHS"] |
| R10 | plu | ["AEP","AFH","AEF","AHP","AEH","AFP"] | ["plu","AEFHP"] |
| R11 | plu | ["AEH","AQS","AEQ","AHS","AES","AHQ"] | ["plu","AEHQS"] |
| R12 | plu | ["AFH","APS","AFP","AHS","AFS","AHP"] | ["plu","AFHPS"] |
| R13 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R14 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R15 | plu | ["AEF","EHR","AEH","EFR","AER","EFH"] | ["plu","EAFHR"] |
| R16 | plu | ["AEQ","EHP","AEH","EPQ","AEP","EHQ"] | ["plu","EAHPQ"] |
| R17 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R18 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R19 | plu | ["AHP","BHS","ABH","HPS","AHS","BHP"] | ["plu","HABPS"] |
| R20 | plu | ["AEH","FHR","AFH","EHR","AHR","EFH"] | ["plu","HAEFR"] |
| R21 | plu | ["AEH","FHS","AFH","EHS","AHS","EFH"] | ["plu","HAEFS"] |
| R22 | plu | ["AHR","EHQ","AEH","HQR","AHQ","EHR"] | ["plu","HAEQR"] |
| R23 | plu | ["AHR","HQS","AHQ","HRS","AHS","HQR"] | ["plu","HAQRS"] |
| R24 | plu | ["AHP","BEP","ABP","EHP","AEP","BHP"] | ["plu","PABEH"] |
| R25 | plu | ["AEQ","HPQ","AHQ","EPQ","APQ","EHQ"] | ["plu","QAEHP"] |
| R26 | plu | ["AQR","EHQ","AEQ","HQR","AHQ","EQR"] | ["plu","QAEHR"] |
| R27 | plu | ["AEQ","PQR","APQ","EQR","AQR","EPQ"] | ["plu","QAEPR"] |
| R28 | plu | ["ACR","BHR","ABR","CHR","AHR","BCR"] | ["plu","RABCH"] |
| R29 | plu | ["AER","CHR","ACR","EHR","AHR","CER"] | ["plu","RACEH"] |
| R30 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R31 | plu | ["ARS","EHR","AER","HRS","AHR","ERS"] | ["plu","RAEHS"] |
| R32 | plu | ["AFR","HRS","AHR","FRS","ARS","FHR"] | ["plu","RAFHS"] |
| R33 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R34 | plu | ["BER","CRS","BCR","ERS","BRS","CER"] | ["plu","RBCES"] |
| R35 | plu | ["BRS","EHR","BER","HRS","BHR","ERS"] | ["plu","RBEHS"] |
| R36 | plu | ["ACS","BHS","ABS","CHS","AHS","BCS"] | ["plu","SABCH"] |
| R37 | plu | ["ARS","BHS","ABS","HRS","AHS","BRS"] | ["plu","SABHR"] |
| R38 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R39 | plu | ["ARS","EHS","AES","HRS","AHS","ERS"] | ["plu","SAEHR"] |
| R40 | plu | ["AFS","HRS","AHS","FRS","ARS","FHS"] | ["plu","SAFHR"] |
| R41 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R42 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R43 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R44 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R45 | linear | [{"AEH":1,"AHQ":-1,"AEQ":-1,"EHQ":-1},"0"] | ["affine_quad","AEHQ",1] |
| R46 | linear | [{"AHP":-1,"APQ":-1,"AHQ":1,"HPQ":-1},"0"] | ["affine_quad","AHPQ",1] |
| R47 | linear | [{"AHP":-1,"APS":-1,"AHS":1,"HPS":-1},"0"] | ["affine_quad","AHPS",1] |
| R48 | linear | [{"AHQ":-1,"AQR":-1,"AHR":1,"HQR":-1},"0"] | ["affine_quad","AHQR",1] |
| R49 | linear | [{"AHQ":-1,"AQS":-1,"AHS":1,"HQS":-1},"0"] | ["affine_quad","AHQS",1] |
| R50 | linear | [{"EHP":1,"EPQ":-1,"EHQ":-1,"HPQ":-1},"0"] | ["affine_quad","EHPQ",1] |
| R51 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R52 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R53 | linear | [{"ACS":-3,"AES":5,"ARS":-3},"0"] | ["barycentric","AS","S","CER","upper"] |
| R54 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s10 | R0 | sub | hi | EHP | 316233/500000 | hi_AEH,lo_AEP,lo_AHP |
| s13 | R1 | sub | hi | EHQ | 223233/500000 | hi_AEH,lo_AEQ,lo_AHQ |
| s24 | R2 | sub | hi | AQR | 223233/500000 | hi_AHR,lo_AHQ,lo_HQR |
| s29 | R3 | sub | hi | AQS | 360751/1000000 | hi_AHS,lo_AHQ,lo_HQS |
| s52 | R5 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s66 | R6 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s79 | R8 | sumlo | lo | ABR | 145169/1000000 | lo_ABC,lo_AHR,lo_ABH,lo_ACR,hi_ACH |
| s80 | R9 | sumlo | lo | ABS | 145169/1000000 | lo_ABC,lo_AHS,lo_ABH,lo_ACS,hi_ACH |
| s91 | R10 | sumlo | lo | AEP | 179479/1000000 | lo_AEF,lo_AHP,lo_AEH,lo_AFP,hi_AFH |
| s100 | R11 | diffhi | hi | AEQ | 388063/1000000 | hi_AEH,s29,lo_AES,lo_AHQ,lo_AHS |
| s102 | R12 | sumlo | lo | APS | 179479/1000000 | lo_AFP,lo_AHS,lo_AFS,lo_AHP,hi_AFH |
| s107 | R13 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s122 | R14 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s131 | R15 | sumlo | lo | EHR | 145029/500000 | lo_AEH,lo_EFR,lo_AER,lo_EFH,hi_AEF |
| s133 | R16 | sumlo | lo | AEQ | 128439/1000000 | lo_AEH,lo_EPQ,s91,lo_EHQ,s10 |
| s137 | R17 | sumlo | lo | CEH | 186261/500000 | s122,s131,lo_BEH,lo_CER,hi_BER |
| s147 | R18 | sumlo | lo | EHS | 11591/62500 | s137,lo_ERS,lo_CES,s131,hi_CER |
| s155 | R19 | sumlo | lo | AHP | 107373/1000000 | lo_ABH,lo_HPS,lo_AHS,lo_BHP,hi_BHS |
| s158 | R20 | sumlo | lo | FHR | 44433/250000 | lo_AFH,s131,lo_AHR,lo_EFH,hi_AEH |
| s159 | R21 | sumlo | lo | FHS | 5683/40000 | lo_AFH,s147,lo_AHS,lo_EFH,hi_AEH |
| s161 | R22 | sumlo | lo | EHQ | 44433/250000 | lo_AEH,lo_HQR,lo_AHQ,s131,hi_AHR |
| s166 | R23 | sumlo | lo | HQS | 110559/1000000 | lo_AHQ,lo_HRS,lo_AHS,lo_HQR,hi_AHR |
| s179 | R25 | sumlo | lo | HPQ | 6841/62500 | lo_AHQ,lo_EPQ,lo_APQ,s161,s100 |
| s180 | R26 | sumlo | lo | AQR | 201103/1000000 | s133,lo_HQR,lo_AHQ,lo_EQR,s13 |
| s181 | R26 | sumlo | lo | EHQ | 201103/1000000 | s133,lo_HQR,lo_AHQ,lo_EQR,s24 |
| s182 | R27 | sumlo | lo | PQR | 115057/1000000 | lo_APQ,lo_EQR,s180,lo_EPQ,s100 |
| s187 | R28 | sumlo | lo | ACR | 113293/1000000 | s79,lo_CHR,lo_AHR,lo_BCR,hi_BHR |
| s189 | R29 | sumlo | lo | AER | 73129/200000 | s187,s131,lo_AHR,lo_CER,hi_CHR |
| s195 | R30 | sumlo | lo | EHR | 78993/250000 | s189,s158,lo_AHR,lo_EFR,hi_AFR |
| s196 | R31 | sumlo | lo | ARS | 43/320 | s189,lo_HRS,lo_AHR,lo_ERS,hi_EHR |
| s197 | R32 | sumlo | lo | HRS | 108037/1000000 | lo_AHR,lo_FRS,s196,s158,hi_AFR |
| s199 | R33 | sumlo | lo | BER | 360033/1000000 | lo_BCR,s195,lo_BHR,lo_CER,hi_CHR |
| s203 | R34 | diffhi | hi | BRS | 2479/8000 | hi_BER,s52,lo_BCR,lo_ERS,lo_CER |
| s206 | R35 | sumlo | lo | BRS | 28209/200000 | s199,s197,lo_BHR,lo_ERS,hi_EHR |
| s213 | R36 | sumlo | lo | ACS | 32107/250000 | s80,lo_CHS,lo_AHS,s107,hi_BHS |
| s217 | R37 | sumlo | lo | ARS | 3369/25000 | s80,s197,lo_AHS,s206,hi_BHS |
| s219 | R38 | sumlo | lo | AES | 167347/1000000 | s213,lo_ERS,s217,lo_CES,s52 |
| s223 | R39 | sumlo | lo | ARS | 75471/500000 | s219,s197,lo_AHS,lo_ERS,s66 |
| s226 | R40 | sumlo | lo | HRS | 118677/1000000 | lo_AHS,lo_FRS,s223,s159,hi_AFS |
| s230 | R41 | sumlo | lo | BES | 151739/1000000 | s107,lo_ERS,s206,lo_CES,s52 |
| s232 | R42 | sumlo | lo | EHS | 266397/1000000 | s230,s226,lo_BHS,lo_ERS,s203 |
| s237 | R43 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s52 |
| s254 | R44 | linear | lo | AEF | 314439/1000000 | s133,lo_AFQ,lo_EFQ |
| s269 | R46 | linear | lo | AHQ | 309829/1000000 | s155,lo_APQ,s179 |
| s274 | R47 | linear | hi | HPS | 445899/1000000 | s155,hi_AHS,s102 |
| s275 | R48 | linear | hi | AQR | 415637/1000000 | s269,hi_AHR,lo_HQR |
| s278 | R49 | linear | hi | AQS | 312363/1000000 | s269,hi_AHS,s166 |
| s309 | R50 | linear | lo | EHP | 403559/1000000 | s181,lo_EPQ,s179 |
| s313 | R51 | linear | lo | EHR | 239037/500000 | s232,lo_ERS,s226 |
| s316 | R52 | linear | lo | EQR | 76067/250000 | s237,lo_ERS,lo_QRS |
| s327 | R53 | linear | lo | AES | 83811/500000 | s213,s223 |
| s343 | R54 | bary_hi | lo | PQS | 19803/200000 | lo_CPQ,lo_EPQ,s182 |
| s355 | R4 | sub | hi | BEP | 493797/1000000 | hi_BEH,lo_BHP,s309 |
| s366 | R7 | sub | hi | HPQ | 9453/40000 | s274,s166,s343 |
| s388 | R10 | sumlo | lo | AEP | 9749/50000 | s254,s155,lo_AEH,lo_AFP,hi_AFH |
| s398 | R11 | diffhi | hi | AEQ | 293551/1000000 | hi_AEH,s278,s327,s269,lo_AHS |
| s461 | R22 | sumlo | lo | EHQ | 259831/1000000 | lo_AEH,lo_HQR,s269,s313,hi_AHR |
| s473 | R24 | sumlo | lo | AHP | 56363/500000 | lo_ABP,s309,s388,lo_BHP,s355 |
| s499 | R25 | sumlo | lo | AEQ | 8967/40000 | s269,lo_EPQ,lo_APQ,s461,s366 |
| s500 | R25 | sumlo | lo | HPQ | 90237/500000 | s269,lo_EPQ,lo_APQ,s461,s398 |
| s503 | R26 | sumlo | lo | EHQ | 27697/100000 | s499,lo_HQR,s269,s316,s275 |
| s633 | R45 | linear | hi | AHQ | 317321/1000000 | hi_AEH,s499,s503 |
| s654 | R46 | linear | hi | AHP | 43847/1000000 | s633,lo_APQ,s500 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AHP | s473 | s654 |

The two cited bounds give 56363/500000 <= |AHP| <= 43847/1000000, with exact positive gap 68879/1000000.

## Leaf A023

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABQ | ABQ | lo | 279/1000 | cost:P |
| lo_ACE | ACE | lo | 279/1000 | cost:P |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 347/500 | cost:PQ |
| lo_BEQ | BEQ | lo | 93/1000 | cost: |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BES | BES | lo | 93/1000 | cost: |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 279/1000 | cost:P |
| lo_BFR | BFR | lo | 347/500 | cost:PQ |
| lo_BFS | BFS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AFR","AFQ","AQR","FQR"] | ["fan","AFR","Q"] |
| R1 | fan | ["BEF","BEP","BFP","EFP"] | ["fan","BEF","P"] |
| R2 | fan | ["BEF","BEQ","BFQ","EFQ"] | ["fan","BEF","Q"] |
| R3 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R4 | fan | ["BFR","BFQ","BQR","FQR"] | ["fan","BFR","Q"] |
| R5 | fan | ["BFS","BFQ","BQS","FQS"] | ["fan","BFS","Q"] |
| R6 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R7 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R8 | fan | ["EQR","EQS","ERS","QRS"] | ["fan","EQR","S"] |
| R9 | plu | ["BCS","BFR","BCF","BRS","BCR","BFS"] | ["plu","BCFRS"] |
| R10 | plu | ["BEP","BFQ","BEF","BPQ","BEQ","BFP"] | ["plu","BEFPQ"] |
| R11 | plu | ["BEF","BQR","BEQ","BFR","BER","BFQ"] | ["plu","BEFQR"] |
| R12 | plu | ["BEF","BQS","BEQ","BFS","BES","BFQ"] | ["plu","BEFQS"] |
| R13 | plu | ["AER","CEQ","ACE","EQR","AEQ","CER"] | ["plu","EACQR"] |
| R14 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R15 | plu | ["BFR","EFQ","BEF","FQR","BFQ","EFR"] | ["plu","FBEQR"] |
| R16 | plu | ["AFQ","BEQ","ABQ","EFQ","AEQ","BFQ"] | ["plu","QABEF"] |
| R17 | plu | ["AQR","BEQ","ABQ","EQR","AEQ","BQR"] | ["plu","QABER"] |
| R18 | plu | ["ABQ","FPQ","AFQ","BPQ","APQ","BFQ"] | ["plu","QABFP"] |
| R19 | plu | ["AFQ","BQR","ABQ","FQR","AQR","BFQ"] | ["plu","QABFR"] |
| R20 | plu | ["BEQ","FPQ","BFQ","EPQ","BPQ","EFQ"] | ["plu","QBEFP"] |
| R21 | plu | ["BQR","EFQ","BEQ","FQR","BFQ","EQR"] | ["plu","QBEFR"] |
| R22 | plu | ["BER","CFR","BCR","EFR","BFR","CER"] | ["plu","RBCEF"] |
| R23 | plu | ["BER","CRS","BCR","ERS","BRS","CER"] | ["plu","RBCES"] |
| R24 | plu | ["BRS","EFR","BER","FRS","BFR","ERS"] | ["plu","RBEFS"] |
| R25 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R26 | plu | ["BRS","EFS","BES","FRS","BFS","ERS"] | ["plu","SBEFR"] |
| R27 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R28 | linear | [{"AFQ":-1,"AQR":-1,"AFR":1,"FQR":-1},"0"] | ["affine_quad","AFQR",1] |
| R29 | linear | [{"BCR":-1,"BRS":-1,"BCS":1,"CRS":1},"0"] | ["affine_quad","BCRS",-1] |
| R30 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R31 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R32 | linear | [{"BFP":-1,"BPQ":-1,"BFQ":1,"FPQ":-1},"0"] | ["affine_quad","BFPQ",1] |
| R33 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R34 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R35 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R36 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R37 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R38 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R39 | linear | [{"BCS":-3,"BES":5,"BRS":-3},"0"] | ["barycentric","BS","S","CER","upper"] |
| R40 | bary | [["EQS",1],[["CEQ",1],null,["EQR",1]],11,[3,3,3]] | ["side_pair_weights","EQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s19 | R0 | sub | hi | AQR | 316233/500000 | hi_AFR,lo_AFQ,lo_FQR |
| s36 | R4 | sub | hi | BQR | 5243/10000 | hi_BFR,lo_BFQ,lo_FQR |
| s40 | R5 | sub | hi | BQS | 419573/1000000 | hi_BFS,lo_BFQ,lo_FQS |
| s47 | R6 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s58 | R7 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s80 | R9 | sumlo | lo | BCS | 50479/500000 | lo_BCF,lo_BRS,lo_BCR,lo_BFS,hi_BFR |
| s85 | R11 | sumlo | lo | BQR | 19857/125000 | lo_BEQ,lo_BFR,lo_BER,lo_BFQ,hi_BEF |
| s87 | R12 | diffhi | hi | BEQ | 504491/1000000 | hi_BEF,s40,lo_BES,lo_BFQ,lo_BFS |
| s105 | R13 | sumlo | lo | CEQ | 143063/1000000 | lo_ACE,lo_EQR,lo_AEQ,lo_CER,hi_AER |
| s135 | R17 | sumlo | lo | AQR | 9179/50000 | lo_ABQ,lo_EQR,lo_AEQ,s85,s87 |
| s136 | R17 | sumlo | lo | BEQ | 73217/500000 | lo_ABQ,lo_EQR,lo_AEQ,s85,s19 |
| s137 | R19 | sumlo | lo | AFQ | 73589/500000 | lo_ABQ,lo_FQR,s135,lo_BFQ,s36 |
| s139 | R21 | sumlo | lo | EFQ | 4361/25000 | s136,lo_FQR,lo_BFQ,lo_EQR,s36 |
| s142 | R22 | sumlo | lo | BER | 93271/250000 | lo_BCR,lo_EFR,lo_BFR,lo_CER,hi_CFR |
| s146 | R23 | diffhi | hi | BRS | 2479/8000 | hi_BER,s47,lo_BCR,lo_ERS,lo_CER |
| s148 | R24 | sumlo | lo | BRS | 75393/500000 | s142,lo_FRS,lo_BFR,lo_ERS,hi_EFR |
| s157 | R25 | sumlo | lo | BES | 160071/1000000 | s80,lo_ERS,s148,lo_CES,s47 |
| s158 | R26 | sumlo | lo | BRS | 168231/1000000 | s157,lo_FRS,lo_BFS,lo_ERS,s58 |
| s159 | R26 | sumlo | lo | EFS | 64081/250000 | s157,lo_FRS,lo_BFS,lo_ERS,s146 |
| s163 | R27 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s47 |
| s172 | R28 | linear | hi | AQR | 36143/62500 | s137,hi_AFR,lo_FQR |
| s177 | R29 | linear | lo | BCS | 11497/100000 | lo_BCR,s158,s47 |
| s181 | R30 | linear | hi | BEQ | 22143/50000 | hi_BEF,lo_BFQ,s139 |
| s206 | R35 | linear | lo | EFR | 110581/250000 | s159,lo_ERS,lo_FRS |
| s209 | R36 | linear | lo | EQR | 76067/250000 | s163,lo_ERS,lo_QRS |
| s213 | R37 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s229 | R38 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s231 | R39 | linear | lo | BES | 531/3125 | s177,s158 |
| s237 | R40 | bary_lo | lo | EQS | 121999/1000000 | s105,s209 |
| s251 | R3 | sum | lo | BER | 431151/1000000 | s231,s158,lo_ERS |
| s258 | R8 | sum | lo | EQR | 307999/1000000 | s237,lo_ERS,lo_QRS |
| s269 | R9 | sumlo | lo | BCS | 15547/125000 | lo_BCF,s158,lo_BCR,lo_BFS,hi_BFR |
| s274 | R11 | sumlo | lo | BQR | 247591/1000000 | s136,lo_BFR,s251,lo_BFQ,hi_BEF |
| s289 | R13 | sumlo | lo | CEQ | 210571/1000000 | s213,s258,lo_AEQ,lo_CER,hi_AER |
| s299 | R14 | sumlo | lo | EQS | 36287/250000 | s289,lo_ERS,lo_CES,s258,hi_CER |
| s308 | R15 | sumlo | lo | EFQ | 41939/200000 | lo_BEF,lo_FQR,lo_BFQ,s206,hi_BFR |
| s313 | R16 | sumlo | lo | AFQ | 23837/125000 | lo_ABQ,s308,lo_AEQ,lo_BFQ,s181 |
| s316 | R17 | sumlo | lo | BEQ | 94207/500000 | lo_ABQ,s258,lo_AEQ,s274,s172 |
| s318 | R20 | sumlo | lo | FPQ | 821/8000 | lo_BFQ,lo_EPQ,lo_BPQ,s308,s181 |
| s330 | R25 | sumlo | lo | BES | 93027/500000 | s269,lo_ERS,s158,lo_CES,s47 |
| s335 | R26 | sumlo | lo | BRS | 173349/1000000 | s330,lo_FRS,lo_BFS,lo_ERS,s58 |
| s336 | R26 | sumlo | lo | EFS | 302907/1000000 | s330,lo_FRS,lo_BFS,lo_ERS,s229 |
| s347 | R28 | linear | hi | AQR | 53477/100000 | s313,hi_AFR,lo_FQR |
| s358 | R31 | linear | lo | BER | 452403/1000000 | s330,s335,lo_ERS |
| s362 | R32 | linear | lo | BFQ | 2309/8000 | lo_BFP,lo_BPQ,s318 |
| s384 | R35 | linear | lo | EFR | 488907/1000000 | s336,lo_ERS,lo_FRS |
| s388 | R36 | linear | lo | EQR | 82787/250000 | s299,lo_ERS,lo_QRS |
| s399 | R40 | bary_lo | lo | EQS | 147741/1000000 | s289,s388 |
| s413 | R2 | sub | hi | BEQ | 19899/50000 | hi_BEF,s362,s308 |
| s420 | R8 | sum | lo | EQR | 333741/1000000 | s399,lo_ERS,lo_QRS |
| s431 | R9 | sumlo | lo | BCS | 125969/1000000 | lo_BCF,s335,lo_BCR,lo_BFS,hi_BFR |
| s436 | R11 | sumlo | lo | BQR | 291569/1000000 | s316,lo_BFR,s358,s362,hi_BEF |
| s444 | R13 | sumlo | lo | CEQ | 225181/1000000 | s213,s420,lo_AEQ,lo_CER,hi_AER |
| s454 | R14 | sumlo | lo | EQS | 78221/500000 | s444,lo_ERS,lo_CES,s420,hi_CER |
| s464 | R15 | sumlo | lo | EFQ | 114723/500000 | lo_BEF,lo_FQR,s362,s384,hi_BFR |
| s473 | R16 | sumlo | lo | AFQ | 28537/125000 | lo_ABQ,s464,lo_AEQ,s362,s413 |
| s476 | R17 | sumlo | lo | BEQ | 28103/125000 | lo_ABQ,s420,lo_AEQ,s436,s347 |
| s478 | R20 | sumlo | lo | FPQ | 60531/500000 | s362,lo_EPQ,lo_BPQ,s464,s413 |
| s489 | R25 | sumlo | lo | BES | 190321/1000000 | s431,lo_ERS,s335,lo_CES,s47 |
| s493 | R26 | sumlo | lo | BRS | 174189/1000000 | s489,lo_FRS,lo_BFS,lo_ERS,s58 |
| s494 | R26 | sumlo | lo | EFS | 38047/125000 | s489,lo_FRS,lo_BFS,lo_ERS,s229 |
| s512 | R28 | linear | hi | AQR | 49717/100000 | s473,hi_AFR,lo_FQR |
| s526 | R31 | linear | lo | BER | 45751/100000 | s489,s493,lo_ERS |
| s530 | R32 | linear | lo | BFQ | 153531/500000 | lo_BFP,lo_BPQ,s478 |
| s535 | R33 | linear | hi | BQR | 248119/500000 | s530,hi_BFR,lo_FQR |
| s558 | R35 | linear | lo | EFR | 61297/125000 | s494,lo_ERS,lo_FRS |
| s562 | R36 | linear | lo | EQR | 171221/500000 | s454,lo_ERS,lo_QRS |
| s584 | R2 | sum | lo | BEF | 190333/250000 | s476,s530,s464 |
| s585 | R2 | sub | hi | BEQ | 22487/62500 | hi_BEF,s530,s464 |
| s586 | R2 | sub | hi | EFQ | 182207/500000 | hi_BEF,s476,s530 |
| s606 | R9 | sumlo | lo | BCS | 12623/100000 | lo_BCF,s493,lo_BCR,lo_BFS,hi_BFR |
| s611 | R11 | sumlo | lo | BQR | 330817/1000000 | s476,lo_BFR,s526,s530,hi_BEF |
| s621 | R13 | sumlo | lo | CEQ | 230119/1000000 | s213,s562,lo_AEQ,lo_CER,hi_AER |
| s631 | R14 | sumlo | lo | EQS | 8013/50000 | s621,lo_ERS,lo_CES,s562,hi_CER |
| s641 | R15 | sumlo | lo | EFQ | 15437/62500 | s584,lo_FQR,s530,s558,hi_BFR |
| s651 | R16 | sumlo | lo | AFQ | 270899/1000000 | lo_ABQ,s641,lo_AEQ,s530,s585 |
| s656 | R17 | sumlo | lo | BEQ | 63513/250000 | lo_ABQ,s562,lo_AEQ,s611,s512 |
| s665 | R20 | sumlo | lo | FPQ | 143213/1000000 | s530,lo_EPQ,lo_BPQ,s641,s585 |
| s667 | R21 | sumlo | lo | BQR | 353383/1000000 | s656,lo_FQR,s530,s562,s586 |
| s668 | R21 | sumlo | lo | EFQ | 64877/250000 | s656,lo_FQR,s530,s562,s535 |
| s685 | R25 | sumlo | lo | BES | 191021/1000000 | s606,lo_ERS,s493,lo_CES,s47 |
| s687 | R26 | sumlo | lo | BRS | 174327/1000000 | s685,lo_FRS,lo_BFS,lo_ERS,s58 |
| s688 | R26 | sumlo | lo | EFS | 304617/1000000 | s685,lo_FRS,lo_BFS,lo_ERS,s229 |
| s710 | R28 | linear | hi | AQR | 454567/1000000 | s651,hi_AFR,lo_FQR |
| s719 | R30 | linear | hi | BFQ | 19137/50000 | hi_BEF,s656,s668 |
| s725 | R31 | linear | lo | BER | 114587/250000 | s685,s687,lo_ERS |
| s729 | R32 | linear | lo | BFQ | 329213/1000000 | lo_BFP,lo_BPQ,s665 |
| s730 | R32 | linear | hi | FPQ | 9837/50000 | lo_BFP,s719,lo_BPQ |
| s735 | R33 | linear | lo | BFR | 193899/250000 | s729,s667,lo_FQR |
| s764 | R34 | linear | lo | EFP | 495721/1000000 | s668,lo_EPQ,s665 |
| s766 | R35 | linear | lo | EFR | 490617/1000000 | s688,lo_ERS,lo_FRS |
| s770 | R36 | linear | lo | EQR | 17313/50000 | s631,lo_ERS,lo_QRS |
| s792 | R1 | sub | hi | BEP | 307579/1000000 | hi_BEF,lo_BFP,s764 |
| s793 | R2 | sum | lo | BEF | 842773/1000000 | s656,s729,s668 |
| s794 | R2 | sub | hi | BEQ | 307579/1000000 | hi_BEF,s729,s668 |
| s824 | R10 | sumlo | lo | BFQ | 331637/1000000 | s793,lo_BPQ,s656,lo_BFP,s792 |
| s828 | R11 | sumlo | lo | BQR | 38943/100000 | s656,s735,s725,s824,hi_BEF |
| s884 | R15 | sumlo | lo | EFQ | 268977/1000000 | s793,lo_FQR,s824,s766,hi_BFR |
| s915 | R16 | sumlo | lo | AFQ | 172129/500000 | lo_ABQ,s884,lo_AEQ,s824,s794 |
| s925 | R17 | diffhi | hi | ABQ | 299193/1000000 | s710,s794,lo_AEQ,s828,s770 |
| s931 | R18 | sumlo | lo | ABQ | 319499/1000000 | s915,lo_BPQ,lo_APQ,s824,s730 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | ABQ | s931 | s925 |

The two cited bounds give 319499/1000000 <= |ABQ| <= 299193/1000000, with exact positive gap 10153/500000.

## Leaf A024

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABF | ABF | lo | 279/1000 | cost:P |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ABQ | ABQ | lo | 279/1000 | cost:P |
| lo_ACF | ACF | lo | 279/1000 | cost:P |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 279/1000 | cost:Q |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 347/500 | cost:PS |
| lo_AFR | AFR | lo | 347/500 | cost:PQ |
| lo_AFS | AFS | lo | 347/500 | cost:PQ |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_AQS | AQS | lo | 279/1000 | cost:P |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BFH | BFH | lo | 279/1000 | cost:P |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFP | EFP | lo | 279/1000 | cost:Q |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FPS | FPS | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| hi_ABE | ABE | hi | 43477363/64397000 | C028 |
| hi_ABF | ABF | hi | 2063683/4437500 | C059 |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFS | CFS | hi | 22417750204943/39359031250000 | C060 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ABF","ABP","AFP","BFP"] | ["fan","ABF","P"] |
| R1 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R2 | fan | ["AES","AEP","APS","EPS"] | ["fan","AES","P"] |
| R3 | fan | ["AFS","AFQ","AQS","FQS"] | ["fan","AFS","Q"] |
| R4 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R5 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R6 | plu | ["ABR","ACF","ABC","AFR","ABF","ACR"] | ["plu","ABCFR"] |
| R7 | plu | ["ABS","ACF","ABC","AFS","ABF","ACS"] | ["plu","ABCFS"] |
| R8 | plu | ["ABE","AFR","ABF","AER","ABR","AEF"] | ["plu","ABEFR"] |
| R9 | plu | ["ABP","AES","ABE","APS","ABS","AEP"] | ["plu","ABEPS"] |
| R10 | plu | ["ABE","AQR","ABQ","AER","ABR","AEQ"] | ["plu","ABEQR"] |
| R11 | plu | ["ABS","AFR","ABF","ARS","ABR","AFS"] | ["plu","ABFRS"] |
| R12 | plu | ["ACP","AES","ACE","APS","ACS","AEP"] | ["plu","ACEPS"] |
| R13 | plu | ["AES","AFP","AEF","APS","AEP","AFS"] | ["plu","AEFPS"] |
| R14 | plu | ["AER","AFS","AEF","ARS","AES","AFR"] | ["plu","AEFRS"] |
| R15 | plu | ["ABF","BPS","ABP","BFS","ABS","BFP"] | ["plu","BAFPS"] |
| R16 | plu | ["ACH","BCP","ABC","CHP","ACP","BCH"] | ["plu","CABHP"] |
| R17 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R18 | plu | ["BCF","CHR","BCH","CFR","BCR","CFH"] | ["plu","CBFHR"] |
| R19 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R20 | plu | ["ACF","BFR","ABF","CFR","AFR","BCF"] | ["plu","FABCR"] |
| R21 | plu | ["ACF","BFS","ABF","CFS","AFS","BCF"] | ["plu","FABCS"] |
| R22 | plu | ["ABF","FPR","AFP","BFR","AFR","BFP"] | ["plu","FABPR"] |
| R23 | plu | ["ABF","FPS","AFP","BFS","AFS","BFP"] | ["plu","FABPS"] |
| R24 | plu | ["ACF","FPS","AFP","CFS","AFS","CFP"] | ["plu","FACPS"] |
| R25 | plu | ["AFQ","CFS","ACF","FQS","AFS","CFQ"] | ["plu","FACQS"] |
| R26 | plu | ["AFR","EFP","AEF","FPR","AFP","EFR"] | ["plu","FAEPR"] |
| R27 | plu | ["AFR","FQS","AFQ","FRS","AFS","FQR"] | ["plu","FAQRS"] |
| R28 | plu | ["BEH","CFH","BCH","EFH","BFH","CEH"] | ["plu","HBCEF"] |
| R29 | plu | ["ABP","CFP","ACP","BFP","AFP","BCP"] | ["plu","PABCF"] |
| R30 | plu | ["AFP","BEP","ABP","EFP","AEP","BFP"] | ["plu","PABEF"] |
| R31 | plu | ["ABP","EPS","AEP","BPS","APS","BEP"] | ["plu","PABES"] |
| R32 | plu | ["AFP","EPS","AEP","FPS","APS","EFP"] | ["plu","PAEFS"] |
| R33 | plu | ["AFQ","CQS","ACQ","FQS","AQS","CFQ"] | ["plu","QACFS"] |
| R34 | plu | ["ACR","BER","ABR","CER","AER","BCR"] | ["plu","RABCE"] |
| R35 | plu | ["AER","CQR","ACR","EQR","AQR","CER"] | ["plu","RACEQ"] |
| R36 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R37 | linear | [{"ABF":1,"AFP":-1,"ABP":-1,"BFP":-1},"0"] | ["affine_quad","ABFP",1] |
| R38 | linear | [{"ABF":1,"AFS":-1,"ABS":-1,"BFS":1},"0"] | ["affine_quad","ABFS",1] |
| R39 | linear | [{"ACE":1,"AER":-1,"ACR":-1,"CER":1},"0"] | ["affine_quad","ACER",1] |
| R40 | linear | [{"ACR":-1,"ARS":-1,"ACS":1,"CRS":1},"0"] | ["affine_quad","ACRS",-1] |
| R41 | linear | [{"AEF":1,"AFS":-1,"AES":1,"EFS":-1},"0"] | ["affine_quad","AEFS",1] |
| R42 | linear | [{"AEP":-1,"APS":-1,"AES":1,"EPS":-1},"0"] | ["affine_quad","AEPS",1] |
| R43 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R44 | linear | [{"AFP":-1,"APS":-1,"AFS":1,"FPS":-1},"0"] | ["affine_quad","AFPS",1] |
| R45 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R46 | linear | [{"CFQ":-1,"CQS":-1,"CFS":1,"FQS":-1},"0"] | ["affine_quad","CFQS",1] |
| R47 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s4 | R0 | sub | hi | AFP | 17441/62500 | hi_ABF,lo_ABP,lo_BFP |
| s23 | R1 | sub | hi | AES | 269733/500000 | hi_AER,lo_ARS,lo_ERS |
| s32 | R3 | sub | hi | AFQ | 352543/1000000 | hi_AFS,lo_AQS,lo_FQS |
| s57 | R4 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s67 | R5 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s75 | R6 | sumlo | lo | ABR | 146897/1000000 | lo_ABC,lo_AFR,lo_ABF,lo_ACR,hi_ACF |
| s79 | R10 | sumlo | lo | AQR | 153513/500000 | lo_ABQ,lo_AER,s75,lo_AEQ,hi_ABE |
| s81 | R11 | sumlo | lo | ABS | 7813/50000 | lo_ABF,lo_ARS,s75,lo_AFS,hi_AFR |
| s89 | R13 | sumlo | lo | AES | 81067/250000 | lo_AEF,lo_APS,lo_AEP,lo_AFS,s4 |
| s90 | R13 | sumlo | lo | AFP | 83869/500000 | lo_AEF,lo_APS,lo_AEP,lo_AFS,s23 |
| s116 | R17 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s130 | R19 | sumlo | lo | CEH | 369673/1000000 | s116,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s149 | R25 | sumlo | lo | AFQ | 19859/125000 | lo_ACF,lo_FQS,lo_AFS,lo_CFQ,hi_CFS |
| s157 | R27 | sumlo | lo | FQS | 96909/1000000 | s149,lo_FRS,lo_AFS,lo_FQR,hi_AFR |
| s164 | R28 | sumlo | lo | CFH | 65171/500000 | lo_BCH,lo_EFH,lo_BFH,s130,hi_BEH |
| s165 | R32 | sumlo | lo | EPS | 92981/500000 | lo_AEP,lo_FPS,lo_APS,lo_EFP,s4 |
| s173 | R33 | sumlo | lo | CQS | 37573/250000 | lo_ACQ,s157,lo_AQS,lo_CFQ,s32 |
| s175 | R34 | sumlo | lo | ACR | 162289/1000000 | s75,lo_CER,lo_AER,lo_BCR,hi_BER |
| s181 | R35 | sumlo | lo | CQR | 180489/1000000 | s175,lo_EQR,s79,lo_CER,hi_AER |
| s198 | R36 | sumlo | lo | ARS | 200573/1000000 | s89,lo_FRS,lo_AFS,lo_ERS,s67 |
| s199 | R36 | sumlo | lo | EFS | 303557/1000000 | s89,lo_FRS,lo_AFS,lo_ERS,hi_ARS |
| s203 | R37 | linear | lo | ABF | 176869/500000 | lo_ABP,s90,lo_BFP |
| s207 | R38 | linear | lo | BFS | 96301/250000 | hi_ABF,s81,lo_AFS |
| s211 | R39 | linear | lo | ACE | 131007/250000 | s175,lo_AER,hi_CER |
| s220 | R40 | linear | lo | ACS | 216601/1000000 | s175,s198,s57 |
| s225 | R41 | linear | lo | AEF | 458091/1000000 | s23,lo_AFS,s199 |
| s229 | R42 | linear | lo | AES | 185981/500000 | lo_AEP,lo_APS,s165 |
| s230 | R43 | linear | hi | ARS | 32563/125000 | hi_AER,s229,lo_ERS |
| s231 | R43 | linear | hi | AES | 431893/1000000 | hi_AER,s198,lo_ERS |
| s233 | R44 | linear | hi | FPS | 92761/200000 | s90,hi_AFS,lo_APS |
| s267 | R45 | linear | lo | CFR | 366489/1000000 | lo_CFQ,s181,lo_FQR |
| s270 | R46 | linear | lo | CFS | 340201/1000000 | lo_CFQ,s173,s157 |
| s278 | R47 | linear | lo | EFR | 489557/1000000 | s199,lo_ERS,lo_FRS |
| s319 | R2 | sub | hi | EPS | 245893/1000000 | s231,lo_AEP,lo_APS |
| s329 | R6 | sumlo | lo | ABR | 19797/100000 | lo_ABC,lo_AFR,s203,s175,hi_ACF |
| s330 | R7 | sumlo | lo | ABS | 229159/1000000 | lo_ABC,lo_AFS,s203,s220,hi_ACF |
| s331 | R8 | sumlo | lo | ABE | 410747/1000000 | s203,lo_AER,s329,s225,hi_AFR |
| s333 | R9 | sumlo | lo | ABP | 137791/1000000 | s331,lo_APS,s330,lo_AEP,s231 |
| s335 | R11 | sumlo | lo | ABS | 254551/1000000 | s203,s198,s329,lo_AFS,hi_AFR |
| s338 | R12 | sumlo | lo | ACP | 3987/25000 | s211,lo_APS,s220,lo_AEP,s231 |
| s346 | R13 | sumlo | lo | AFP | 248081/1000000 | s225,lo_APS,lo_AEP,lo_AFS,s231 |
| s347 | R13 | diffhi | hi | AEF | 30097/50000 | s231,s4,lo_AEP,lo_AFS,lo_APS |
| s352 | R14 | diff | lo | AEF | 491917/1000000 | lo_AER,lo_AFS,s231,hi_AFR,s230 |
| s355 | R14 | diff | lo | AFR | 752103/1000000 | lo_AER,lo_AFS,s347,s230,s231 |
| s368 | R15 | sumlo | lo | BPS | 41259/250000 | s333,s207,s335,lo_BFP,hi_ABF |
| s372 | R16 | sumlo | lo | BCP | 105407/1000000 | lo_ABC,lo_CHP,s338,lo_BCH,hi_ACH |
| s383 | R18 | sumlo | lo | BCF | 46161/250000 | lo_BCH,s267,lo_BCR,s164,hi_CHR |
| s420 | R20 | sumlo | lo | BFR | 54487/125000 | s203,s267,s355,s383,hi_ACF |
| s421 | R21 | sumlo | lo | BFS | 50423/125000 | s203,s270,lo_AFS,s383,hi_ACF |
| s425 | R22 | sumlo | lo | FPR | 23933/62500 | s346,s420,s355,lo_BFP,hi_ABF |
| s429 | R23 | sumlo | lo | FPS | 176983/500000 | s346,s421,lo_AFS,lo_BFP,hi_ABF |
| s444 | R24 | diffhi | hi | CFP | 290067/1000000 | hi_ACF,s233,s346,s270,lo_AFS |
| s455 | R26 | sumlo | lo | EFP | 75707/200000 | s352,s425,s346,s278,hi_AFR |
| s474 | R29 | sumlo | lo | ABP | 141281/1000000 | s338,lo_BFP,s346,s372,s444 |
| s481 | R30 | sumlo | lo | BEP | 222639/1000000 | s474,s455,lo_AEP,lo_BFP,s4 |
| s483 | R31 | sumlo | lo | ABP | 146623/1000000 | lo_AEP,s368,lo_APS,s481,s319 |
| s500 | R32 | sumlo | lo | AFP | 277041/1000000 | lo_AEP,s429,lo_APS,s455,s319 |
| s672 | R37 | linear | lo | ABF | 64583/125000 | s483,s500,lo_BFP |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | ABF | s672 | hi_ABF |

The two cited bounds give 64583/125000 <= |ABF| <= 2063683/4437500, with exact positive gap 458027/8875000.

## Leaf A025

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 279/1000 | cost:Q |
| lo_AER | AER | lo | 347/500 | cost:PS |
| lo_AFR | AFR | lo | 347/500 | cost:PQ |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| hi_ABF | ABF | hi | 2063683/4437500 | C059 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_ERS | ERS | hi | 31/200 | C061 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ABF","ABP","AFP","BFP"] | ["fan","ABF","P"] |
| R1 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R2 | plu | ["AER","AFP","AEF","APR","AEP","AFR"] | ["plu","AEFPR"] |
| R3 | plu | ["AEP","ARS","AER","APS","AES","APR"] | ["plu","AEPRS"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s4 | R0 | sub | hi | AFP | 17441/62500 | hi_ABF,lo_ABP,lo_BFP |
| s28 | R1 | lower_sub | lo | AES | 56759/250000 | lo_AER,hi_ARS,hi_ERS |
| s96 | R2 | diffhi | hi | AEP | 254321/1000000 | hi_AER,s4,lo_AEF,lo_APR,lo_AFR |
| s101 | R3 | sumlo | lo | AEP | 274571/1000000 | lo_AER,lo_APS,s28,lo_APR,hi_ARS |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AEP | s101 | s96 |

The two cited bounds give 274571/1000000 <= |AEP| <= 254321/1000000, with exact positive gap 81/4000.

## Leaf A026

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ABQ | ABQ | lo | 279/1000 | cost:P |
| lo_ABR | ABR | lo | 279/1000 | cost:P |
| lo_ACE | ACE | lo | 279/1000 | cost:P |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 279/1000 | cost:P |
| lo_ACS | ACS | lo | 279/1000 | cost:P |
| lo_AEH | AEH | lo | 279/1000 | cost:Q |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AFS | AFS | lo | 279/1000 | cost:Q |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_AQS | AQS | lo | 93/1000 | cost: |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 279/1000 | cost:Q |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFH | BFH | lo | 279/1000 | cost:P |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EHP | EHP | lo | 279/1000 | cost:Q |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_EPQ | EPQ | lo | 93/1000 | cost: |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 279/1000 | cost:Q |
| lo_FPS | FPS | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ABE | ABE | hi | 43477363/64397000 | C028 |
| hi_ABF | ABF | hi | 2063683/4437500 | C059 |
| hi_ABS | ABS | hi | 473296919240529/894237190000000 | C062 |
| hi_ACE | ACE | hi | 7016953/8875000 | C043 |
| hi_ACR | ACR | hi | 445132103342243/1016178625000000 | C035 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_BCR | BCR | hi | 279/2000 | C047 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFH | BFH | hi | 77/125 | C015 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_CEF | CEF | hi | 13367777/15625000 | C041 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ABF","ABP","AFP","BFP"] | ["fan","ABF","P"] |
| R1 | fan | ["ABS","ABP","APS","BPS"] | ["fan","ABS","P"] |
| R2 | fan | ["ACR","ACP","APR","CPR"] | ["fan","ACR","P"] |
| R3 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R4 | fan | ["AFS","AFQ","AQS","FQS"] | ["fan","AFS","Q"] |
| R5 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R6 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R7 | fan | ["CFR","CFQ","CQR","FQR"] | ["fan","CFR","Q"] |
| R8 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R9 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R10 | fan | ["FPS","FPQ","FQS","PQS"] | ["fan","FPS","Q"] |
| R11 | plu | ["ABE","AFR","ABF","AER","ABR","AEF"] | ["plu","ABEFR"] |
| R12 | plu | ["ABE","AQR","ABQ","AER","ABR","AEQ"] | ["plu","ABEQR"] |
| R13 | plu | ["ACE","AHR","ACH","AER","ACR","AEH"] | ["plu","ACEHR"] |
| R14 | plu | ["ACR","AEP","ACE","APR","ACP","AER"] | ["plu","ACEPR"] |
| R15 | plu | ["ACR","AFP","ACF","APR","ACP","AFR"] | ["plu","ACFPR"] |
| R16 | plu | ["ACR","AHP","ACH","APR","ACP","AHR"] | ["plu","ACHPR"] |
| R17 | plu | ["ACR","APQ","ACP","AQR","ACQ","APR"] | ["plu","ACPQR"] |
| R18 | plu | ["ACR","APS","ACP","ARS","ACS","APR"] | ["plu","ACPRS"] |
| R19 | plu | ["ABF","BPR","ABP","BFR","ABR","BFP"] | ["plu","BAFPR"] |
| R20 | plu | ["BEP","BFH","BEF","BHP","BEH","BFP"] | ["plu","BEFHP"] |
| R21 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R22 | plu | ["BCF","CHR","BCH","CFR","BCR","CFH"] | ["plu","CBFHR"] |
| R23 | plu | ["AER","CEQ","ACE","EQR","AEQ","CER"] | ["plu","EACQR"] |
| R24 | plu | ["AER","EPQ","AEP","EQR","AEQ","EPR"] | ["plu","EAPQR"] |
| R25 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R26 | plu | ["BER","CEP","BCE","EPR","BEP","CER"] | ["plu","EBCPR"] |
| R27 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R28 | plu | ["ABF","CFP","ACF","BFP","AFP","BCF"] | ["plu","FABCP"] |
| R29 | plu | ["AFQ","CFR","ACF","FQR","AFR","CFQ"] | ["plu","FACQR"] |
| R30 | plu | ["AFQ","CFS","ACF","FQS","AFS","CFQ"] | ["plu","FACQS"] |
| R31 | plu | ["BEF","CFH","BCF","EFH","BFH","CEF"] | ["plu","FBCEH"] |
| R32 | plu | ["BFR","CFH","BCF","FHR","BFH","CFR"] | ["plu","FBCHR"] |
| R33 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R34 | plu | ["CFR","EFQ","CEF","FQR","CFQ","EFR"] | ["plu","FCEQR"] |
| R35 | plu | ["BEH","CFH","BCH","EFH","BFH","CEH"] | ["plu","HBCEF"] |
| R36 | plu | ["ABP","CPR","ACP","BPR","APR","BCP"] | ["plu","PABCR"] |
| R37 | plu | ["AFP","BPR","ABP","FPR","APR","BFP"] | ["plu","PABFR"] |
| R38 | plu | ["AFP","CEP","ACP","EFP","AEP","CFP"] | ["plu","PACEF"] |
| R39 | plu | ["AEP","CPR","ACP","EPR","APR","CEP"] | ["plu","PACER"] |
| R40 | plu | ["AFP","CPQ","ACP","FPQ","APQ","CFP"] | ["plu","PACFQ"] |
| R41 | plu | ["AFP","CPR","ACP","FPR","APR","CFP"] | ["plu","PACFR"] |
| R42 | plu | ["AFP","CPS","ACP","FPS","APS","CFP"] | ["plu","PACFS"] |
| R43 | plu | ["AFP","HPS","AHP","FPS","APS","FHP"] | ["plu","PAFHS"] |
| R44 | plu | ["BPS","CFP","BCP","FPS","BFP","CPS"] | ["plu","PBCFS"] |
| R45 | plu | ["BEP","FHP","BFP","EHP","BHP","EFP"] | ["plu","PBEFH"] |
| R46 | plu | ["BEP","HPQ","BHP","EPQ","BPQ","EHP"] | ["plu","PBEHQ"] |
| R47 | plu | ["BPS","FHP","BFP","HPS","BHP","FPS"] | ["plu","PBFHS"] |
| R48 | plu | ["AFQ","CQR","ACQ","FQR","AQR","CFQ"] | ["plu","QACFR"] |
| R49 | plu | ["CQR","EFQ","CEQ","FQR","CFQ","EQR"] | ["plu","QCEFR"] |
| R50 | plu | ["AER","BQR","ABR","EQR","AQR","BER"] | ["plu","RABEQ"] |
| R51 | plu | ["AER","CQR","ACR","EQR","AQR","CER"] | ["plu","RACEQ"] |
| R52 | plu | ["AER","CRS","ACR","ERS","ARS","CER"] | ["plu","RACES"] |
| R53 | plu | ["ARS","CQR","ACR","QRS","AQR","CRS"] | ["plu","RACQS"] |
| R54 | plu | ["AER","PQR","APR","EQR","AQR","EPR"] | ["plu","RAEPQ"] |
| R55 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R56 | plu | ["EFR","PRS","EPR","FRS","ERS","FPR"] | ["plu","REFPS"] |
| R57 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R58 | plu | ["ARS","CQS","ACS","QRS","AQS","CRS"] | ["plu","SACQR"] |
| R59 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R60 | plu | ["ARS","EQS","AES","QRS","AQS","ERS"] | ["plu","SAEQR"] |
| R61 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R62 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R63 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R64 | linear | [{"ABE":1,"AEP":-1,"ABP":-1,"BEP":-1},"0"] | ["affine_quad","ABEP",1] |
| R65 | linear | [{"ABF":1,"AFP":-1,"ABP":-1,"BFP":-1},"0"] | ["affine_quad","ABFP",1] |
| R66 | linear | [{"ABP":-1,"APQ":-1,"ABQ":1,"BPQ":-1},"0"] | ["affine_quad","ABPQ",-1] |
| R67 | linear | [{"ABP":-1,"APR":-1,"ABR":1,"BPR":-1},"0"] | ["affine_quad","ABPR",-1] |
| R68 | linear | [{"ACE":1,"AEP":-1,"ACP":-1,"CEP":-1},"0"] | ["affine_quad","ACEP",1] |
| R69 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R70 | linear | [{"ACP":-1,"APQ":-1,"ACQ":1,"CPQ":-1},"0"] | ["affine_quad","ACPQ",-1] |
| R71 | linear | [{"ACP":-1,"APR":-1,"ACR":1,"CPR":-1},"0"] | ["affine_quad","ACPR",-1] |
| R72 | linear | [{"ACP":-1,"APS":-1,"ACS":1,"CPS":-1},"0"] | ["affine_quad","ACPS",-1] |
| R73 | linear | [{"ACR":-1,"ARS":-1,"ACS":1,"CRS":1},"0"] | ["affine_quad","ACRS",-1] |
| R74 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R75 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R76 | linear | [{"AFQ":-1,"AQR":-1,"AFR":1,"FQR":-1},"0"] | ["affine_quad","AFQR",1] |
| R77 | linear | [{"BCF":-1,"BFR":1,"BCR":1,"CFR":-1},"0"] | ["affine_quad","BCFR",-1] |
| R78 | linear | [{"BEF":-1,"BFH":-1,"BEH":1,"EFH":1},"0"] | ["affine_quad","BEFH",-1] |
| R79 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R80 | linear | [{"BFH":1,"BHP":-1,"BFP":-1,"FHP":-1},"0"] | ["affine_quad","BFHP",1] |
| R81 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R82 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R83 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R84 | linear | [{"CFP":-1,"CPR":1,"CFR":-1,"FPR":1},"0"] | ["affine_quad","CFPR",-1] |
| R85 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R86 | linear | [{"CFQ":-1,"CQS":-1,"CFS":1,"FQS":-1},"0"] | ["affine_quad","CFQS",1] |
| R87 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R88 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R89 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R90 | linear | [{"EHP":1,"EPQ":-1,"EHQ":-1,"HPQ":-1},"0"] | ["affine_quad","EHPQ",1] |
| R91 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R92 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R93 | linear | [{"FPQ":-1,"FQR":-1,"FPR":1,"PQR":-1},"0"] | ["affine_quad","FPQR",-1] |
| R94 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R95 | quad | ["CEF","CER","93/125"] | ["quad","CREF","QS"] |
| R96 | bary | [["AES",-1],[["ACE",-1],null,["AER",-1]],11,[3,3,3]] | ["side_pair_weights","AE","S","CER","3/11"] |
| R97 | bary | [["AQS",-1],[["ACQ",-1],["AEQ",-1],["AQR",-1]],11,[3,3,3]] | ["side_pair_weights","AQ","S","CER","3/11"] |
| R98 | bary | [["ARS",1],[["ACR",-1],["AER",1],null],11,[3,3,3]] | ["side_pair_weights","AR","S","CER","3/11"] |
| R99 | linear | [{"ACS":-3,"AES":5,"ARS":-3},"0"] | ["barycentric","AS","S","CER","upper"] |
| R100 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R101 | bary | [["CFS",-1],[null,["CEF",-1],["CFR",-1]],11,[3,3,3]] | ["side_pair_weights","CF","S","CER","3/11"] |
| R102 | bary | [["EPS",1],[["CEP",1],null,["EPR",1]],11,[3,3,3]] | ["side_pair_weights","EP","S","CER","3/11"] |
| R103 | linear | [{"CFS":-3,"EFS":5,"FRS":-3},"0"] | ["barycentric","FS","S","CER","upper"] |
| R104 | bary | [["PQS",-1],[["CPQ",-1],["EPQ",-1],["PQR",-1]],11,[3,3,3]] | ["side_pair_weights","PQ","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s4 | R0 | sub | hi | AFP | 17441/62500 | hi_ABF,lo_ABP,lo_BFP |
| s9 | R1 | sub | hi | BPS | 13731/40000 | hi_ABS,lo_ABP,lo_APS |
| s19 | R2 | sub | hi | CPR | 126023/500000 | hi_ACR,lo_ACP,lo_APR |
| s50 | R6 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s53 | R7 | sub | hi | CQR | 201267/500000 | hi_CFR,lo_CFQ,lo_FQR |
| s61 | R8 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s73 | R12 | sumlo | lo | AQR | 76863/500000 | lo_ABQ,lo_AER,lo_ABR,lo_AEQ,hi_ABE |
| s75 | R13 | sumlo | lo | AHR | 39381/200000 | lo_ACH,lo_AER,lo_ACR,lo_AEH,hi_ACE |
| s80 | R16 | sumlo | lo | AHP | 101037/1000000 | lo_ACH,lo_APR,lo_ACP,s75,hi_ACR |
| s92 | R20 | sumlo | lo | BEP | 146897/1000000 | lo_BEF,lo_BHP,lo_BEH,lo_BFP,hi_BFH |
| s98 | R21 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s104 | R23 | sumlo | lo | CEQ | 143063/1000000 | lo_ACE,lo_EQR,lo_AEQ,lo_CER,hi_AER |
| s108 | R25 | sumlo | lo | CEH | 369673/1000000 | s98,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s109 | R26 | sumlo | lo | CEP | 33731/250000 | s98,lo_EPR,s92,lo_CER,hi_BER |
| s110 | R27 | sumlo | lo | BES | 124991/1000000 | s98,lo_ERS,lo_BER,lo_CES,hi_CER |
| s121 | R35 | sumlo | lo | CFH | 65171/500000 | lo_BCH,lo_EFH,lo_BFH,s108,hi_BEH |
| s123 | R37 | sumlo | lo | BPR | 4959/40000 | lo_ABP,lo_FPR,lo_APR,lo_BFP,s4 |
| s125 | R39 | sumlo | lo | AEP | 152729/1000000 | lo_ACP,lo_EPR,lo_APR,s109,s19 |
| s126 | R41 | sumlo | lo | AFP | 6863/50000 | lo_ACP,lo_FPR,lo_APR,lo_CFP,s19 |
| s127 | R41 | sumlo | lo | CPR | 4959/40000 | lo_ACP,lo_FPR,lo_APR,lo_CFP,s4 |
| s130 | R42 | sumlo | lo | CPS | 4959/40000 | lo_ACP,lo_FPS,lo_APS,lo_CFP,s4 |
| s133 | R43 | sumlo | lo | HPS | 13201/100000 | s80,lo_FPS,lo_APS,lo_FHP,s4 |
| s135 | R44 | sumlo | lo | CFP | 109173/1000000 | lo_BCP,lo_FPS,lo_BFP,s130,s9 |
| s137 | R47 | sumlo | lo | FHP | 2227/20000 | lo_BFP,s133,lo_BHP,lo_FPS,s9 |
| s139 | R48 | sumlo | lo | AFQ | 3999/40000 | lo_ACQ,lo_FQR,s73,lo_CFQ,s53 |
| s140 | R49 | sumlo | lo | EFQ | 97511/1000000 | s104,lo_FQR,lo_CFQ,lo_EQR,s53 |
| s141 | R50 | sumlo | lo | BQR | 166417/1000000 | lo_ABR,lo_EQR,s73,lo_BER,hi_AER |
| s143 | R51 | sumlo | lo | CQR | 166417/1000000 | lo_ACR,lo_EQR,s73,lo_CER,hi_AER |
| s145 | R52 | diffhi | hi | ARS | 143657/500000 | hi_AER,s50,lo_ACR,lo_ERS,lo_CER |
| s146 | R53 | sumlo | lo | ARS | 3999/40000 | lo_ACR,lo_QRS,s73,lo_CRS,s53 |
| s147 | R54 | sumlo | lo | PQR | 47443/500000 | lo_APR,lo_EQR,s73,lo_EPR,hi_AER |
| s153 | R57 | sumlo | lo | AES | 240971/1000000 | lo_ACS,lo_ERS,s146,lo_CES,s50 |
| s154 | R58 | sumlo | lo | CQS | 120411/1000000 | lo_ACS,lo_QRS,lo_AQS,lo_CRS,s145 |
| s155 | R59 | sumlo | lo | ARS | 102421/1000000 | s153,lo_FRS,lo_AFS,lo_ERS,s61 |
| s158 | R62 | sumlo | lo | EPS | 137963/1000000 | lo_CES,lo_PRS,s130,lo_ERS,s50 |
| s159 | R63 | sumlo | lo | EQS | 135697/1000000 | lo_CES,lo_QRS,s154,lo_ERS,s50 |
| s162 | R64 | linear | hi | BEP | 429417/1000000 | hi_ABE,lo_ABP,s125 |
| s166 | R67 | linear | lo | ABR | 12399/40000 | lo_ABP,lo_APR,s123 |
| s170 | R69 | linear | lo | ACF | 339433/1000000 | lo_ACP,s126,s135 |
| s176 | R71 | linear | lo | ACR | 12399/40000 | lo_ACP,lo_APR,s127 |
| s178 | R72 | linear | lo | ACS | 12399/40000 | lo_ACP,lo_APS,s130 |
| s184 | R76 | linear | lo | AFR | 346701/1000000 | s139,s73,lo_FQR |
| s195 | R79 | linear | lo | BER | 310991/1000000 | s110,lo_BRS,lo_ERS |
| s196 | R80 | linear | lo | BFH | 5947/20000 | lo_BFP,lo_BHP,s137 |
| s197 | R81 | linear | lo | BFR | 352417/1000000 | lo_BFQ,s141,lo_FQR |
| s208 | R85 | linear | lo | CFR | 352417/1000000 | lo_CFQ,s143,lo_FQR |
| s210 | R86 | linear | lo | CFS | 306411/1000000 | lo_CFQ,s154,lo_FQS |
| s213 | R88 | linear | lo | EFP | 283511/1000000 | s140,lo_EPQ,lo_FPQ |
| s219 | R91 | linear | lo | EPR | 323963/1000000 | s158,lo_ERS,lo_PRS |
| s220 | R92 | linear | lo | EQR | 321697/1000000 | s159,lo_ERS,lo_QRS |
| s221 | R93 | linear | lo | FPR | 140443/500000 | lo_FPQ,lo_FQR,s147 |
| s223 | R94 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s224 | R95 | quad | lo | CEF | 411739/1000000 | hi_CER |
| s230 | R97 | bary_hi | lo | AQS | 5009/31250 | lo_ACQ,lo_AEQ,s73 |
| s231 | R98 | bary_hi | hi | ARS | 245219/1000000 | s176,hi_AER |
| s232 | R99 | linear | lo | AES | 247437/1000000 | s178,s155 |
| s235 | R100 | bary_hi | lo | BES | 130513/1000000 | s98,s195 |
| s239 | R101 | bary_lo | hi | CFS | 54939/100000 | hi_CEF,hi_CFR |
| s249 | R103 | linear | lo | EFS | 119823/500000 | s210,lo_FRS |
| s252 | R104 | bary_hi | lo | PQS | 46757/500000 | lo_CPQ,lo_EPQ,s147 |
| s256 | R3 | sum | lo | AER | 221429/500000 | s232,s155,lo_ERS |
| s257 | R4 | sum | lo | AFS | 353263/1000000 | s139,s230,lo_FQS |
| s259 | R5 | sum | lo | BER | 316513/1000000 | s235,lo_BRS,lo_ERS |
| s263 | R8 | sum | lo | EFR | 212823/500000 | s249,lo_ERS,lo_FRS |
| s265 | R10 | sum | lo | FPS | 139757/500000 | lo_FPQ,lo_FQS,s252 |
| s268 | R12 | sumlo | lo | AQR | 112853/500000 | lo_ABQ,s256,s166,lo_AEQ,hi_ABE |
| s270 | R14 | sumlo | lo | AEP | 45359/250000 | s223,lo_APR,lo_ACP,s256,hi_ACR |
| s271 | R15 | sumlo | lo | AFP | 14567/100000 | s170,lo_APR,lo_ACP,s184,hi_ACR |
| s273 | R17 | sumlo | lo | APQ | 6697/62500 | lo_ACP,s268,lo_ACQ,lo_APR,hi_ACR |
| s275 | R19 | sumlo | lo | BPR | 66231/500000 | lo_ABP,s197,s166,lo_BFP,hi_ABF |
| s289 | R22 | sumlo | lo | BCF | 89153/500000 | lo_BCH,s208,lo_BCR,s121,hi_CHR |
| s294 | R24 | sumlo | lo | EPQ | 24397/200000 | s270,s220,lo_AEQ,s219,hi_AER |
| s301 | R28 | sumlo | lo | CFP | 123729/1000000 | s170,lo_BFP,s271,s289,hi_ABF |
| s304 | R30 | sumlo | lo | AFQ | 58629/500000 | s170,lo_FQS,s257,lo_CFQ,s239 |
| s305 | R31 | sumlo | lo | CFH | 19387/125000 | s289,lo_EFH,s196,s224,hi_BEF |
| s306 | R33 | sumlo | lo | FHR | 7111/40000 | s196,s263,s197,lo_EFH,hi_BEF |
| s308 | R34 | sumlo | lo | EFQ | 132323/1000000 | s224,lo_FQR,lo_CFQ,s263,hi_CFR |
| s309 | R38 | sumlo | lo | CEP | 17493/100000 | lo_ACP,s213,s270,s301,s4 |
| s310 | R39 | sumlo | lo | AEP | 184081/1000000 | lo_ACP,s219,lo_APR,s309,s19 |
| s311 | R41 | sumlo | lo | AFP | 74647/500000 | lo_ACP,s221,lo_APR,s301,s19 |
| s312 | R41 | sumlo | lo | CPR | 33711/250000 | lo_ACP,s221,lo_APR,s301,s4 |
| s315 | R42 | sumlo | lo | CPS | 134387/1000000 | lo_ACP,s265,lo_APS,s301,s4 |
| s320 | R45 | sumlo | lo | FHP | 3807/31250 | lo_BFP,lo_EHP,lo_BHP,s213,s162 |
| s322 | R50 | sumlo | lo | BQR | 117963/500000 | s166,s220,s268,s259,hi_AER |
| s324 | R51 | sumlo | lo | CQR | 44851/200000 | s176,s220,s268,lo_CER,hi_AER |
| s327 | R53 | sumlo | lo | ARS | 123761/1000000 | s176,lo_QRS,s268,lo_CRS,s53 |
| s329 | R54 | sumlo | lo | PQR | 14203/100000 | lo_APR,s220,s268,s219,hi_AER |
| s333 | R57 | sumlo | lo | AES | 27579/100000 | s178,lo_ERS,s327,lo_CES,s50 |
| s335 | R58 | sumlo | lo | CQS | 44587/250000 | s178,lo_QRS,s230,lo_CRS,s231 |
| s337 | R59 | sumlo | lo | ARS | 30977/250000 | s333,lo_FRS,s257,lo_ERS,s61 |
| s341 | R62 | sumlo | lo | EPS | 144583/1000000 | lo_CES,lo_PRS,s315,lo_ERS,s50 |
| s342 | R63 | sumlo | lo | EQS | 21567/125000 | lo_CES,lo_QRS,s335,lo_ERS,s50 |
| s346 | R64 | linear | hi | BEP | 79613/200000 | hi_ABE,lo_ABP,s310 |
| s354 | R66 | linear | lo | ABQ | 9161/31250 | lo_ABP,s273,lo_BPQ |
| s356 | R67 | linear | lo | ABR | 159231/500000 | lo_ABP,lo_APR,s275 |
| s358 | R68 | linear | lo | ACE | 452011/1000000 | lo_ACP,s310,s309 |
| s360 | R69 | linear | lo | ACF | 366023/1000000 | lo_ACP,s311,s301 |
| s364 | R70 | linear | lo | ACQ | 9161/31250 | lo_ACP,s273,lo_CPQ |
| s367 | R71 | linear | lo | ACR | 80211/250000 | lo_ACP,lo_APR,s312 |
| s368 | R72 | linear | lo | ACS | 320387/1000000 | lo_ACP,lo_APS,s315 |
| s372 | R75 | linear | lo | AER | 246349/500000 | s333,s337,lo_ERS |
| s375 | R76 | linear | lo | AFR | 108991/250000 | s304,s268,lo_FQR |
| s387 | R80 | linear | lo | BFH | 19239/62500 | lo_BFP,lo_BHP,s320 |
| s388 | R81 | linear | lo | BFR | 210963/500000 | lo_BFQ,s322,lo_FQR |
| s394 | R82 | linear | lo | CEF | 222901/500000 | hi_CER,s208,s263 |
| s398 | R85 | linear | lo | CFR | 82051/200000 | lo_CFQ,s324,lo_FQR |
| s400 | R86 | linear | lo | CFS | 91087/250000 | lo_CFQ,s335,lo_FQS |
| s407 | R88 | linear | lo | EFP | 86827/250000 | s308,s294,lo_FPQ |
| s411 | R90 | linear | lo | EHP | 61597/200000 | lo_EHQ,s294,lo_HPQ |
| s412 | R91 | linear | lo | EPR | 330583/1000000 | s341,lo_ERS,lo_PRS |
| s413 | R92 | linear | lo | EQR | 44817/125000 | s342,lo_ERS,lo_QRS |
| s415 | R93 | linear | lo | FPR | 32803/100000 | lo_FPQ,lo_FQR,s329 |
| s422 | R97 | bary_hi | lo | AQS | 183779/1000000 | s364,lo_AEQ,s268 |
| s423 | R98 | bary_hi | hi | ARS | 48451/200000 | s367,hi_AER |
| s433 | R103 | linear | lo | EFS | 34301/125000 | s400,lo_FRS |
| s437 | R104 | bary_hi | lo | PQS | 28569/250000 | lo_CPQ,s294,s329 |
| s440 | R4 | sum | lo | AFS | 394037/1000000 | s304,s422,lo_FQS |
| s444 | R8 | sum | lo | EFR | 57551/125000 | s433,lo_ERS,lo_FRS |
| s445 | R10 | sum | lo | FPS | 75069/250000 | lo_FPQ,lo_FQS,s437 |
| s448 | R12 | sumlo | lo | AQR | 257799/1000000 | s354,s372,s356,lo_AEQ,hi_ABE |
| s450 | R14 | sumlo | lo | AEP | 25071/125000 | s358,lo_APR,lo_ACP,s372,hi_ACR |
| s452 | R15 | sumlo | lo | AFP | 170267/1000000 | s360,lo_APR,lo_ACP,s375,hi_ACR |
| s455 | R17 | sumlo | lo | APQ | 11697/100000 | lo_ACP,s448,s364,lo_APR,hi_ACR |
| s456 | R18 | sumlo | lo | APS | 47163/500000 | lo_ACP,s337,s368,lo_APR,hi_ACR |
| s460 | R19 | sumlo | lo | BPR | 148059/1000000 | lo_ABP,s388,s356,lo_BFP,hi_ABF |
| s471 | R22 | sumlo | lo | BCF | 104037/500000 | lo_BCH,s398,lo_BCR,s305,hi_CHR |
| s476 | R24 | sumlo | lo | EPQ | 70751/500000 | s450,s413,lo_AEQ,s412,hi_AER |
| s483 | R28 | sumlo | lo | CFP | 2334/15625 | s360,lo_BFP,s452,s471,hi_ABF |
| s486 | R30 | sumlo | lo | AFQ | 128661/1000000 | s360,lo_FQS,s440,lo_CFQ,s239 |
| s488 | R32 | sumlo | lo | CFH | 182167/1000000 | s471,s306,s387,s398,hi_BFR |
| s492 | R34 | sumlo | lo | EFQ | 143199/1000000 | s394,lo_FQR,lo_CFQ,s444,hi_CFR |
| s496 | R38 | sumlo | lo | CEP | 55777/250000 | lo_ACP,s407,s450,s483,s4 |
| s497 | R39 | sumlo | lo | AEP | 204301/1000000 | lo_ACP,s412,lo_APR,s496,s19 |
| s498 | R40 | sumlo | lo | CPQ | 46803/500000 | lo_ACP,lo_FPQ,s455,s483,s4 |
| s499 | R41 | sumlo | lo | AFP | 176153/1000000 | lo_ACP,s415,lo_APR,s483,s19 |
| s500 | R41 | sumlo | lo | CPR | 159103/1000000 | lo_ACP,s415,lo_APR,s483,s4 |
| s503 | R42 | sumlo | lo | CPS | 150563/1000000 | lo_ACP,s445,s456,s483,s4 |
| s506 | R45 | sumlo | lo | FHP | 19137/125000 | lo_BFP,s411,lo_BHP,s407,s346 |
| s507 | R46 | sumlo | lo | HPQ | 105013/1000000 | lo_BHP,s476,lo_BPQ,s411,s346 |
| s511 | R51 | sumlo | lo | CQR | 25771/100000 | s367,s413,s448,lo_CER,hi_AER |
| s513 | R53 | sumlo | lo | ARS | 133687/1000000 | s367,lo_QRS,s448,lo_CRS,s53 |
| s515 | R54 | sumlo | lo | PQR | 40859/250000 | lo_APR,s413,s448,s412,hi_AER |
| s517 | R55 | sumlo | lo | CRS | 24349/250000 | lo_CER,lo_FRS,s398,lo_ERS,hi_EFR |
| s518 | R56 | sumlo | lo | PRS | 46533/500000 | s412,lo_FRS,lo_ERS,s415,hi_EFR |
| s520 | R57 | sumlo | lo | AES | 144361/500000 | s368,lo_ERS,s513,lo_CES,s50 |
| s521 | R58 | sumlo | lo | CQS | 2461/12500 | s368,lo_QRS,s422,s517,s423 |
| s523 | R59 | sumlo | lo | ARS | 67243/500000 | s520,lo_FRS,s440,lo_ERS,s61 |
| s525 | R61 | sumlo | lo | EFS | 72701/250000 | lo_CES,lo_FRS,s400,lo_ERS,s50 |
| s526 | R62 | sumlo | lo | EPS | 154911/1000000 | lo_CES,s518,s503,lo_ERS,s50 |
| s527 | R63 | sumlo | lo | EQS | 576/3125 | lo_CES,lo_QRS,s521,lo_ERS,s50 |
| s531 | R64 | linear | hi | BEP | 75569/200000 | hi_ABE,lo_ABP,s497 |
| s539 | R66 | linear | lo | ABQ | 30297/100000 | lo_ABP,s455,lo_BPQ |
| s540 | R67 | linear | lo | ABR | 334059/1000000 | lo_ABP,lo_APR,s460 |
| s543 | R68 | linear | lo | ACE | 520409/1000000 | lo_ACP,s497,s496 |
| s545 | R69 | linear | lo | ACF | 418529/1000000 | lo_ACP,s499,s483 |
| s549 | R70 | linear | lo | ACQ | 37947/125000 | lo_ACP,s455,s498 |
| s551 | R71 | linear | lo | ACR | 345103/1000000 | lo_ACP,lo_APR,s500 |
| s552 | R72 | linear | lo | ACS | 337889/1000000 | lo_ACP,s456,s503 |
| s558 | R75 | linear | lo | AER | 32263/62500 | s520,s523,lo_ERS |
| s563 | R76 | linear | lo | AFR | 23973/50000 | s486,s448,lo_FQR |
| s566 | R77 | linear | lo | BFR | 478829/1000000 | s471,hi_BCR,s398 |
| s568 | R78 | linear | hi | BEF | 433847/500000 | hi_BEH,s387,hi_EFH |
| s575 | R80 | linear | lo | BFH | 42387/125000 | lo_BFP,lo_BHP,s506 |
| s585 | R82 | linear | lo | CEF | 269201/500000 | hi_CER,s398,s444 |
| s589 | R83 | linear | lo | CER | 70849/250000 | lo_CES,s517,lo_ERS |
| s593 | R85 | linear | lo | CFR | 44371/100000 | lo_CFQ,s511,lo_FQR |
| s597 | R87 | linear | lo | CFS | 390449/1000000 | s593,s50,lo_FRS |
| s606 | R88 | linear | lo | EFP | 377701/1000000 | s492,s476,lo_FPQ |
| s609 | R89 | linear | lo | EFR | 119201/250000 | s525,lo_ERS,lo_FRS |
| s610 | R90 | linear | lo | EHP | 67903/200000 | lo_EHQ,s476,s507 |
| s611 | R91 | linear | lo | EPR | 340977/1000000 | s526,lo_ERS,s518 |
| s612 | R92 | linear | lo | EQR | 4629/12500 | s527,lo_ERS,lo_QRS |
| s614 | R93 | linear | lo | FPR | 87359/250000 | lo_FPQ,lo_FQR,s515 |
| s620 | R97 | bary_hi | lo | AQS | 1563/8000 | s549,lo_AEQ,s448 |
| s621 | R98 | bary_hi | hi | ARS | 235639/1000000 | s551,hi_AER |
| s634 | R104 | bary_hi | lo | PQS | 125713/1000000 | s498,s476,s515 |
| s644 | R10 | sum | lo | FPS | 311713/1000000 | lo_FPQ,lo_FQS,s634 |
| s646 | R12 | sumlo | lo | AQR | 277663/1000000 | s539,s558,s540,lo_AEQ,hi_ABE |
| s648 | R14 | sumlo | lo | AEP | 2751/12500 | s543,lo_APR,lo_ACP,s558,hi_ACR |
| s650 | R15 | sumlo | lo | AFP | 190649/1000000 | s545,lo_APR,lo_ACP,s563,hi_ACR |
| s653 | R17 | sumlo | lo | APQ | 123401/1000000 | lo_ACP,s646,s549,lo_APR,hi_ACR |
| s654 | R18 | sumlo | lo | APS | 1567/15625 | lo_ACP,s523,s552,lo_APR,hi_ACR |
| s660 | R19 | sumlo | lo | BPR | 81279/500000 | lo_ABP,s566,s540,lo_BFP,hi_ABF |
| s670 | R22 | sumlo | lo | BCF | 227207/1000000 | lo_BCH,s593,lo_BCR,s488,hi_CHR |
| s678 | R24 | sumlo | lo | EPQ | 39013/250000 | s648,s612,lo_AEQ,s611,hi_AER |
| s683 | R28 | sumlo | lo | CFP | 176839/1000000 | s545,lo_BFP,s650,s670,hi_ABF |
| s686 | R29 | sumlo | lo | AFQ | 1419/10000 | s545,lo_FQR,s563,lo_CFQ,hi_CFR |
| s687 | R31 | sumlo | lo | CFH | 5869/25000 | s670,lo_EFH,s575,s585,s568 |
| s691 | R34 | sumlo | lo | EFQ | 80211/500000 | s585,lo_FQR,lo_CFQ,s609,hi_CFR |
| s694 | R36 | sumlo | lo | ABP | 18859/200000 | lo_ACP,s660,lo_APR,lo_BCP,s19 |
| s697 | R38 | sumlo | lo | CEP | 13267/50000 | lo_ACP,s606,s648,s683,s4 |
| s698 | R39 | sumlo | lo | AEP | 223719/1000000 | lo_ACP,s611,lo_APR,s697,s19 |
| s699 | R40 | sumlo | lo | CPQ | 109193/1000000 | lo_ACP,lo_FPQ,s653,s683,s4 |
| s700 | R41 | sumlo | lo | AFP | 38837/200000 | lo_ACP,s614,lo_APR,s683,s19 |
| s701 | R41 | sumlo | lo | CPR | 175389/1000000 | lo_ACP,s614,lo_APR,s683,s4 |
| s704 | R42 | sumlo | lo | CPS | 41859/250000 | lo_ACP,s644,s654,s683,s4 |
| s708 | R45 | sumlo | lo | FHP | 17653/100000 | lo_BFP,s610,lo_BHP,s606,s531 |
| s712 | R51 | sumlo | lo | CQR | 142313/500000 | s551,s612,s646,s589,hi_AER |
| s715 | R53 | sumlo | lo | ARS | 146913/1000000 | s551,lo_QRS,s646,s517,s53 |
| s719 | R55 | sumlo | lo | CRS | 20549/200000 | s589,lo_FRS,s593,lo_ERS,hi_EFR |
| s722 | R56 | sumlo | lo | PRS | 2439/25000 | s611,lo_FRS,lo_ERS,s614,hi_EFR |
| s724 | R57 | sumlo | lo | AES | 308261/1000000 | s552,lo_ERS,s715,lo_CES,s50 |
| s727 | R60 | sumlo | lo | EQS | 19877/100000 | s724,lo_QRS,s620,lo_ERS,s621 |
| s728 | R61 | sumlo | lo | EFS | 1537/5000 | lo_CES,lo_FRS,s597,lo_ERS,s50 |
| s729 | R62 | sumlo | lo | EPS | 168497/1000000 | lo_CES,s722,s704,lo_ERS,s50 |
| s735 | R65 | linear | lo | ABF | 9537/25000 | s694,s700,lo_BFP |
| s736 | R65 | linear | hi | AFP | 277761/1000000 | hi_ABF,s694,lo_BFP |
| s742 | R66 | linear | lo | ABQ | 38837/125000 | s694,s653,lo_BPQ |
| s743 | R67 | linear | lo | ABR | 349853/1000000 | s694,lo_APR,s660 |
| s747 | R68 | linear | lo | ACE | 582059/1000000 | lo_ACP,s698,s697 |
| s749 | R69 | linear | lo | ACF | 58003/125000 | lo_ACP,s700,s683 |
| s755 | R70 | linear | lo | ACQ | 162797/500000 | lo_ACP,s653,s699 |
| s757 | R71 | linear | lo | ACR | 361389/1000000 | lo_ACP,lo_APR,s701 |
| s760 | R73 | linear | lo | ACS | 362041/1000000 | s757,s715,s50 |
| s762 | R74 | linear | lo | AEF | 197661/500000 | lo_AEQ,s686,s691 |
| s766 | R75 | linear | lo | AER | 274087/500000 | s724,s715,lo_ERS |
| s776 | R77 | linear | lo | BFR | 531417/1000000 | s670,hi_BCR,s593 |
| s778 | R78 | linear | hi | BEF | 418211/500000 | hi_BEH,s575,hi_EFH |
| s787 | R80 | linear | lo | BFH | 36253/100000 | lo_BFP,lo_BHP,s708 |
| s800 | R82 | linear | lo | CEF | 588253/1000000 | hi_CER,s593,s609 |
| s803 | R83 | linear | lo | CER | 57749/200000 | lo_CES,s719,lo_ERS |
| s806 | R84 | linear | lo | FPR | 368503/1000000 | s683,s593,s19 |
| s808 | R85 | linear | lo | CFR | 235313/500000 | lo_CFQ,s712,lo_FQR |
| s821 | R88 | linear | lo | EFP | 204737/500000 | s691,s678,lo_FPQ |
| s823 | R89 | linear | lo | EFR | 2467/5000 | s728,lo_ERS,lo_FRS |
| s826 | R91 | linear | lo | EPR | 359057/1000000 | s729,lo_ERS,s722 |
| s827 | R92 | linear | lo | EQR | 38477/100000 | s727,lo_ERS,lo_QRS |
| s836 | R97 | bary_hi | lo | AQS | 206797/1000000 | s755,lo_AEQ,s646 |
| s837 | R98 | bary_hi | hi | ARS | 231197/1000000 | s757,hi_AER |
| s843 | R102 | bary_lo | lo | EPS | 17029/100000 | s697,s826 |
| s859 | R9 | sum | lo | EPR | 7217/20000 | s843,lo_ERS,s722 |
| s862 | R11 | sumlo | lo | AFR | 128647/250000 | s735,s766,s743,s762,hi_ABE |
| s863 | R12 | sumlo | lo | AQR | 37557/125000 | s742,s766,s743,lo_AEQ,hi_ABE |
| s867 | R14 | sumlo | lo | AEP | 59989/250000 | s747,lo_APR,lo_ACP,s766,hi_ACR |
| s871 | R15 | sumlo | lo | AFP | 103883/500000 | s749,lo_APR,lo_ACP,s862,hi_ACR |
| s875 | R17 | sumlo | lo | APQ | 66457/500000 | lo_ACP,s863,s755,lo_APR,hi_ACR |
| s883 | R19 | sumlo | lo | BPR | 11107/62500 | s694,s776,s743,lo_BFP,hi_ABF |
| s897 | R22 | sumlo | lo | BCF | 247227/1000000 | lo_BCH,s808,lo_BCR,s687,hi_CHR |
| s913 | R28 | sumlo | lo | CFP | 203243/1000000 | s749,lo_BFP,s871,s897,hi_ABF |
| s918 | R29 | sumlo | lo | AFQ | 1933/12500 | s749,lo_FQR,s862,lo_CFQ,hi_CFR |
| s919 | R31 | sumlo | lo | CFH | 141227/500000 | s897,lo_EFH,s787,s800,s778 |
| s923 | R34 | sumlo | lo | EFQ | 85461/500000 | s800,lo_FQR,lo_CFQ,s823,hi_CFR |
| s927 | R36 | sumlo | lo | ABP | 99887/1000000 | lo_ACP,s883,lo_APR,lo_BCP,s19 |
| s931 | R38 | sumlo | lo | CEP | 7817/25000 | lo_ACP,s821,s867,s913,s736 |
| s932 | R39 | sumlo | lo | AEP | 248519/1000000 | lo_ACP,s859,lo_APR,s931,s19 |
| s934 | R41 | sumlo | lo | AFP | 105481/500000 | lo_ACP,s806,lo_APR,s913,s19 |
| s935 | R41 | sumlo | lo | CPR | 23929/125000 | lo_ACP,s806,lo_APR,s913,s736 |
| s953 | R51 | sumlo | lo | CQR | 311257/1000000 | s757,s827,s863,s803,hi_AER |
| s955 | R52 | sumlo | lo | CRS | 104801/1000000 | s757,lo_ERS,s715,s803,hi_AER |
| s959 | R53 | sumlo | lo | ARS | 80859/500000 | s757,lo_QRS,s863,s955,s53 |
| s963 | R55 | sumlo | lo | CRS | 13413/125000 | s803,lo_FRS,s808,lo_ERS,hi_EFR |
| s968 | R57 | sumlo | lo | AES | 333031/1000000 | s760,lo_ERS,s959,lo_CES,s50 |
| s972 | R60 | sumlo | lo | EQS | 54287/250000 | s968,lo_QRS,s836,lo_ERS,s837 |
| s981 | R65 | linear | lo | ABF | 403849/1000000 | s927,s934,lo_BFP |
| s982 | R65 | linear | hi | AFP | 272169/1000000 | hi_ABF,s927,lo_BFP |
| s989 | R66 | linear | lo | ABQ | 325801/1000000 | s927,s875,lo_BPQ |
| s990 | R67 | linear | lo | ABR | 370599/1000000 | s927,lo_APR,s883 |
| s993 | R68 | linear | lo | ACE | 654199/1000000 | lo_ACP,s932,s931 |
| s995 | R69 | linear | lo | ACF | 101441/200000 | lo_ACP,s934,s913 |
| s1002 | R71 | linear | lo | ACR | 47179/125000 | lo_ACP,lo_APR,s935 |
| s1009 | R74 | linear | lo | AEF | 209281/500000 | lo_AEQ,s918,s923 |
| s1014 | R75 | linear | lo | AER | 587749/1000000 | s968,s959,lo_ERS |
| s1057 | R83 | linear | lo | CER | 36663/125000 | lo_CES,s963,lo_ERS |
| s1063 | R85 | linear | lo | CFR | 497257/1000000 | lo_CFQ,s953,lo_FQR |
| s1087 | R92 | linear | lo | EQR | 100787/250000 | s972,lo_ERS,lo_QRS |
| s1091 | R96 | bary_hi | lo | AES | 338713/1000000 | s993,s1014 |
| s1120 | R3 | sum | lo | AER | 593431/1000000 | s1091,s959,lo_ERS |
| s1132 | R11 | sumlo | lo | AFR | 23389/40000 | s981,s1120,s990,s1009,hi_ABE |
| s1136 | R12 | sumlo | lo | AQR | 337417/1000000 | s989,s1120,s990,lo_AEQ,hi_ABE |
| s1150 | R15 | sumlo | lo | AFP | 14489/62500 | s995,lo_APR,lo_ACP,s1132,hi_ACR |
| s1195 | R22 | sumlo | lo | BCF | 266383/1000000 | lo_BCH,s1063,lo_BCR,s919,hi_CHR |
| s1219 | R28 | sumlo | lo | CFP | 234217/1000000 | s995,lo_BFP,s1150,s1195,hi_ABF |
| s1271 | R41 | diffhi | hi | FPR | 31463/62500 | s982,s19,lo_APR,s1219,lo_ACP |
| s1319 | R51 | sumlo | lo | CQR | 346159/1000000 | s1002,s1087,s1136,s1057,hi_AER |
| s1488 | R84 | linear | hi | CFR | 521237/1000000 | s1219,s19,s1271 |
| s1492 | R85 | linear | hi | CFQ | 41039/500000 | s1488,s1319,lo_FQR |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | CFQ | lo_CFQ | s1492 |

The two cited bounds give 93/1000 <= |CFQ| <= 41039/500000, with exact positive gap 5461/500000.

## Leaf A027

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABF | ABF | lo | 93/1000 | cost: |
| lo_ACF | ACF | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 347/500 | cost:PQ |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AES | AES | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AFR | AFR | lo | 347/500 | cost:PQ |
| lo_AFS | AFS | lo | 347/500 | cost:PQ |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_AQS | AQS | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:Q |
| lo_CFS | CFS | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 279/1000 | cost:Q |
| lo_FPS | FPS | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_CEF | CEF | hi | 13367777/15625000 | C041 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CFS | CFS | hi | 22417750204943/39359031250000 | C060 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AEF","AEQ","AFQ","EFQ"] | ["fan","AEF","Q"] |
| R2 | fan | ["AFS","AFQ","AQS","FQS"] | ["fan","AFS","Q"] |
| R3 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R4 | fan | ["CFR","CFQ","CQR","FQR"] | ["fan","CFR","Q"] |
| R5 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R6 | plu | ["ABR","ACF","ABC","AFR","ABF","ACR"] | ["plu","ABCFR"] |
| R7 | plu | ["ABS","ACF","ABC","AFS","ABF","ACS"] | ["plu","ABCFS"] |
| R8 | plu | ["ACS","AFR","ACF","ARS","ACR","AFS"] | ["plu","ACFRS"] |
| R9 | plu | ["AEF","AHP","AEH","AFP","AEP","AFH"] | ["plu","AEFHP"] |
| R10 | plu | ["AEQ","AFP","AEF","APQ","AEP","AFQ"] | ["plu","AEFPQ"] |
| R11 | plu | ["AEF","APR","AEP","AFR","AER","AFP"] | ["plu","AEFPR"] |
| R12 | plu | ["AEF","APS","AEP","AFS","AES","AFP"] | ["plu","AEFPS"] |
| R13 | plu | ["AEF","AQS","AEQ","AFS","AES","AFQ"] | ["plu","AEFQS"] |
| R14 | plu | ["AFP","AQS","AFQ","APS","AFS","APQ"] | ["plu","AFPQS"] |
| R15 | plu | ["ACR","BCF","ABC","CFR","ACF","BCR"] | ["plu","CABFR"] |
| R16 | plu | ["ACE","CQR","ACQ","CER","ACR","CEQ"] | ["plu","CAEQR"] |
| R17 | plu | ["AER","CEF","ACE","EFR","AEF","CER"] | ["plu","EACFR"] |
| R18 | plu | ["CER","EFS","CEF","ERS","CES","EFR"] | ["plu","ECFRS"] |
| R19 | plu | ["AFQ","CFS","ACF","FQS","AFS","CFQ"] | ["plu","FACQS"] |
| R20 | plu | ["AFQ","EFP","AEF","FPQ","AFP","EFQ"] | ["plu","FAEPQ"] |
| R21 | plu | ["AFS","EFP","AEF","FPS","AFP","EFS"] | ["plu","FAEPS"] |
| R22 | plu | ["AFR","EFQ","AEF","FQR","AFQ","EFR"] | ["plu","FAEQR"] |
| R23 | plu | ["AFR","FQS","AFQ","FRS","AFS","FQR"] | ["plu","FAQRS"] |
| R24 | plu | ["AFP","EPQ","AEP","FPQ","APQ","EFP"] | ["plu","PAEFQ"] |
| R25 | plu | ["AFP","PQR","APQ","FPR","APR","FPQ"] | ["plu","PAFQR"] |
| R26 | plu | ["AFQ","CQS","ACQ","FQS","AQS","CFQ"] | ["plu","QACFS"] |
| R27 | plu | ["AFQ","EPQ","AEQ","FPQ","APQ","EFQ"] | ["plu","QAEFP"] |
| R28 | plu | ["AQR","EFQ","AEQ","FQR","AFQ","EQR"] | ["plu","QAEFR"] |
| R29 | plu | ["ACR","BFR","ABR","CFR","AFR","BCR"] | ["plu","RABCF"] |
| R30 | plu | ["AER","CFR","ACR","EFR","AFR","CER"] | ["plu","RACEF"] |
| R31 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R32 | plu | ["ACS","BFS","ABS","CFS","AFS","BCS"] | ["plu","SABCF"] |
| R33 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R34 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R35 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R36 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R37 | linear | [{"AEF":1,"AFP":-1,"AEP":-1,"EFP":-1},"0"] | ["affine_quad","AEFP",1] |
| R38 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R39 | linear | [{"AEF":1,"AFS":-1,"AES":1,"EFS":-1},"0"] | ["affine_quad","AEFS",1] |
| R40 | linear | [{"AEP":-1,"APQ":-1,"AEQ":1,"EPQ":-1},"0"] | ["affine_quad","AEPQ",-1] |
| R41 | linear | [{"AFQ":-1,"AQR":-1,"AFR":1,"FQR":-1},"0"] | ["affine_quad","AFQR",1] |
| R42 | linear | [{"AFQ":-1,"AQS":-1,"AFS":1,"FQS":-1},"0"] | ["affine_quad","AFQS",1] |
| R43 | linear | [{"APQ":-1,"AQR":1,"APR":-1,"PQR":-1},"0"] | ["affine_quad","APQR",-1] |
| R44 | linear | [{"CFQ":-1,"CQS":-1,"CFS":1,"FQS":-1},"0"] | ["affine_quad","CFQS",1] |
| R45 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R46 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R47 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R48 | bary | [["AQS",-1],[["ACQ",-1],["AEQ",-1],["AQR",-1]],11,[3,3,3]] | ["side_pair_weights","AQ","S","CER","3/11"] |
| R49 | bary | [["ARS",1],[["ACR",-1],["AER",1],null],11,[3,3,3]] | ["side_pair_weights","AR","S","CER","3/11"] |
| R50 | bary | [["CFS",-1],[null,["CEF",-1],["CFR",-1]],11,[3,3,3]] | ["side_pair_weights","CF","S","CER","3/11"] |
| R51 | linear | [{"CFS":-3,"EFS":5,"FRS":-3},"0"] | ["barycentric","FS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s7 | R0 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s13 | R1 | sub | hi | AEQ | 570997/1000000 | hi_AEF,lo_AFQ,lo_EFQ |
| s29 | R2 | sub | hi | AFQ | 352543/1000000 | hi_AFS,lo_AQS,lo_FQS |
| s30 | R2 | sub | hi | AQS | 538543/1000000 | hi_AFS,lo_AFQ,lo_FQS |
| s53 | R3 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s56 | R4 | sub | hi | CQR | 201267/500000 | hi_CFR,lo_CFQ,lo_FQR |
| s61 | R5 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s69 | R6 | sumlo | lo | ABR | 3713/31250 | lo_ABC,lo_AFR,lo_ABF,lo_ACR,hi_ACF |
| s70 | R7 | sumlo | lo | ABS | 3713/31250 | lo_ABC,lo_AFS,lo_ABF,lo_ACS,hi_ACF |
| s82 | R9 | diffhi | hi | AFP | 66919/200000 | hi_AEF,s7,lo_AEP,lo_AFH,lo_AEH |
| s83 | R10 | sumlo | lo | AFP | 128181/1000000 | lo_AEF,lo_APQ,lo_AEP,lo_AFQ,s13 |
| s85 | R11 | sumlo | lo | APR | 132503/1000000 | lo_AEP,lo_AFR,lo_AER,s83,hi_AEF |
| s86 | R12 | sumlo | lo | APS | 6313/62500 | lo_AEP,lo_AFS,lo_AES,s83,hi_AEF |
| s91 | R14 | sumlo | lo | AFP | 17161/125000 | lo_AFQ,s86,lo_AFS,lo_APQ,s30 |
| s97 | R15 | sumlo | lo | ACR | 6331/62500 | lo_ABC,lo_CFR,lo_ACF,lo_BCR,hi_BCF |
| s101 | R16 | sumlo | lo | ACE | 10839/50000 | lo_ACQ,lo_CER,s97,lo_CEQ,s56 |
| s118 | R17 | sumlo | lo | CEF | 87567/250000 | s101,lo_EFR,lo_AEF,lo_CER,hi_AER |
| s135 | R18 | sumlo | lo | EFS | 44033/250000 | s118,lo_ERS,lo_CES,lo_EFR,hi_CER |
| s147 | R19 | sumlo | lo | AFQ | 19859/125000 | lo_ACF,lo_FQS,lo_AFS,lo_CFQ,hi_CFS |
| s155 | R21 | sumlo | lo | EFP | 75153/250000 | lo_AEF,lo_FPS,s91,s135,hi_AFS |
| s156 | R22 | sumlo | lo | EFQ | 133013/1000000 | lo_AEF,lo_FQR,s147,lo_EFR,hi_AFR |
| s160 | R23 | sumlo | lo | FQS | 96909/1000000 | s147,lo_FRS,lo_AFS,lo_FQR,hi_AFR |
| s167 | R24 | sumlo | lo | EPQ | 109403/1000000 | lo_AEP,lo_FPQ,lo_APQ,s155,s82 |
| s168 | R25 | sumlo | lo | PQR | 14297/125000 | lo_APQ,lo_FPR,s85,lo_FPQ,s82 |
| s174 | R26 | sumlo | lo | CQS | 37573/250000 | lo_ACQ,s160,lo_AQS,lo_CFQ,s29 |
| s175 | R29 | sumlo | lo | ACR | 54497/500000 | s69,lo_CFR,lo_AFR,lo_BCR,hi_BFR |
| s179 | R30 | sumlo | lo | AER | 380667/1000000 | s175,lo_EFR,lo_AFR,lo_CER,hi_CFR |
| s183 | R31 | sumlo | lo | ARS | 75929/500000 | s179,lo_FRS,lo_AFR,lo_ERS,hi_EFR |
| s188 | R32 | sumlo | lo | ACS | 61707/500000 | s70,lo_CFS,lo_AFS,lo_BCS,hi_BFS |
| s190 | R33 | sumlo | lo | AES | 175031/1000000 | s188,lo_ERS,s183,lo_CES,s53 |
| s191 | R34 | sumlo | lo | ARS | 171177/1000000 | s190,lo_FRS,lo_AFS,lo_ERS,s61 |
| s192 | R34 | sumlo | lo | EFS | 64767/250000 | s190,lo_FRS,lo_AFS,lo_ERS,hi_ARS |
| s206 | R36 | linear | lo | ACF | 40411/125000 | lo_ACP,s91,lo_CFP |
| s218 | R38 | linear | hi | AEQ | 58139/125000 | hi_AEF,s147,s156 |
| s220 | R39 | linear | lo | AES | 196071/1000000 | hi_AEF,lo_AFS,s192 |
| s227 | R40 | linear | lo | AEQ | 295403/1000000 | lo_AEP,lo_APQ,s167 |
| s237 | R42 | linear | hi | AQS | 234381/500000 | s147,hi_AFS,s160 |
| s242 | R43 | linear | lo | AQR | 339879/1000000 | lo_APQ,s85,s168 |
| s262 | R44 | linear | lo | CFS | 340201/1000000 | lo_CFQ,s174,s160 |
| s282 | R48 | bary_hi | lo | AQS | 75019/250000 | lo_ACQ,s227,s242 |
| s283 | R49 | bary_hi | hi | ARS | 4688/15625 | s175,hi_AER |
| s292 | R50 | bary_lo | hi | CFS | 54939/100000 | hi_CEF,hi_CFR |
| s300 | R51 | linear | lo | EFS | 3249/12500 | s262,lo_FRS |
| s313 | R2 | sub | hi | AFQ | 163779/500000 | hi_AFS,s282,s160 |
| s319 | R5 | sum | lo | EFR | 2787/6250 | s300,lo_ERS,lo_FRS |
| s340 | R8 | sumlo | lo | ACS | 5001/31250 | s206,s191,s175,lo_AFS,hi_AFR |
| s343 | R10 | sumlo | lo | AFP | 170533/1000000 | lo_AEF,lo_APQ,lo_AEP,s147,s218 |
| s346 | R12 | sumlo | lo | APS | 12943/100000 | lo_AEP,lo_AFS,s220,s343,hi_AEF |
| s349 | R13 | sumlo | lo | AQS | 311969/1000000 | s227,lo_AFS,s220,s147,hi_AEF |
| s352 | R14 | sumlo | lo | AFP | 11347/62500 | s147,s346,lo_AFS,lo_APQ,s237 |
| s392 | R19 | sumlo | lo | AFQ | 34901/200000 | s206,s160,lo_AFS,lo_CFQ,s292 |
| s404 | R22 | sumlo | lo | EFQ | 173931/1000000 | lo_AEF,lo_FQR,s392,s319,hi_AFR |
| s408 | R23 | sumlo | lo | FQS | 19737/200000 | s392,lo_FRS,lo_AFS,lo_FQR,hi_AFR |
| s430 | R26 | sumlo | lo | CQS | 172629/1000000 | lo_ACQ,s408,s349,lo_CFQ,s313 |
| s431 | R27 | sumlo | lo | EPQ | 33313/250000 | s227,lo_FPQ,lo_APQ,s404,s313 |
| s441 | R33 | sumlo | lo | AES | 210599/1000000 | s340,lo_ERS,s191,lo_CES,s53 |
| s445 | R34 | sumlo | lo | EFS | 56079/200000 | s441,lo_FRS,lo_AFS,lo_ERS,s283 |
| s449 | R35 | sumlo | lo | EQS | 1689/10000 | lo_CES,lo_QRS,s430,lo_ERS,s53 |
| s471 | R37 | linear | hi | EFP | 96489/200000 | hi_AEF,lo_AEP,s352 |
| s473 | R38 | linear | hi | AEQ | 408561/1000000 | hi_AEF,s392,s404 |
| s475 | R39 | linear | lo | AES | 108699/500000 | hi_AEF,lo_AFS,s445 |
| s481 | R40 | linear | lo | AEQ | 79813/250000 | lo_AEP,lo_APQ,s431 |
| s490 | R41 | linear | hi | AQR | 550961/1000000 | s392,hi_AFR,lo_FQR |
| s491 | R42 | linear | hi | AQS | 451353/1000000 | s392,hi_AFS,s408 |
| s520 | R45 | linear | hi | EPQ | 107757/500000 | s471,s404,lo_FPQ |
| s523 | R46 | linear | lo | EFR | 93279/200000 | s445,lo_ERS,lo_FRS |
| s528 | R47 | linear | lo | EQR | 3549/10000 | s449,lo_ERS,lo_QRS |
| s554 | R1 | sub | hi | AFQ | 131907/500000 | hi_AEF,s481,s404 |
| s584 | R10 | sumlo | lo | AFP | 3089/15625 | lo_AEF,lo_APQ,lo_AEP,s392,s473 |
| s587 | R12 | sumlo | lo | APS | 28407/200000 | lo_AEP,lo_AFS,s475,s584,hi_AEF |
| s589 | R14 | sumlo | lo | AFP | 197911/1000000 | s392,s587,lo_AFS,lo_APQ,s491 |
| s640 | R20 | sumlo | lo | AFQ | 205131/1000000 | lo_AEF,lo_FPQ,s589,s404,s471 |
| s643 | R22 | sumlo | lo | EFQ | 195749/1000000 | lo_AEF,lo_FQR,s640,s523,hi_AFR |
| s706 | R27 | sumlo | lo | AFQ | 55559/250000 | s481,lo_FPQ,lo_APQ,s643,s520 |
| s707 | R27 | sumlo | lo | EPQ | 45387/250000 | s481,lo_FPQ,lo_APQ,s643,s554 |
| s709 | R28 | sumlo | lo | EFQ | 197041/1000000 | s481,lo_FQR,s706,s528,s490 |
| s781 | R38 | linear | hi | AEQ | 8443/25000 | hi_AEF,s706,s709 |
| s786 | R40 | linear | hi | AEP | 15793/250000 | s781,lo_APQ,s707 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AEP | lo_AEP | s786 |

The two cited bounds give 93/1000 <= |AEP| <= 15793/250000, with exact positive gap 7457/250000.

## Leaf A028

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABE | ABE | lo | 279/1000 | cost:P |
| lo_ABF | ABF | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 279/1000 | cost:Q |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 347/500 | cost:PS |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_AFR | AFR | lo | 347/500 | cost:PQ |
| lo_AFS | AFS | lo | 347/500 | cost:PQ |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_AQS | AQS | lo | 279/1000 | cost:P |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCQ | BCQ | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BFR | BFR | lo | 347/500 | cost:PQ |
| lo_BFS | BFS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 93/1000 | cost: |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CFS | CFS | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 279/1000 | cost:Q |
| lo_FPS | FPS | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_AHS | AHS | hi | 5161583/7044125 | C056 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFS | CFS | hi | 22417750204943/39359031250000 | C060 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R2 | fan | ["AES","AEP","APS","EPS"] | ["fan","AES","P"] |
| R3 | fan | ["AFR","AFP","APR","FPR"] | ["fan","AFR","P"] |
| R4 | fan | ["AFR","AFQ","AQR","FQR"] | ["fan","AFR","Q"] |
| R5 | fan | ["AFS","AFP","APS","FPS"] | ["fan","AFS","P"] |
| R6 | fan | ["AFS","AFQ","AQS","FQS"] | ["fan","AFS","Q"] |
| R7 | fan | ["BCF","BCP","BFP","CFP"] | ["fan","BCF","P"] |
| R8 | fan | ["BFS","BFQ","BQS","FQS"] | ["fan","BFS","Q"] |
| R9 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R10 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R11 | plu | ["ABS","ACF","ABC","AFS","ABF","ACS"] | ["plu","ABCFS"] |
| R12 | plu | ["ABP","AES","ABE","APS","ABS","AEP"] | ["plu","ABEPS"] |
| R13 | plu | ["ABF","AHS","ABH","AFS","ABS","AFH"] | ["plu","ABFHS"] |
| R14 | plu | ["ACE","AFR","ACF","AER","ACR","AEF"] | ["plu","ACEFR"] |
| R15 | plu | ["ACP","AES","ACE","APS","ACS","AEP"] | ["plu","ACEPS"] |
| R16 | plu | ["ACS","AFR","ACF","ARS","ACR","AFS"] | ["plu","ACFRS"] |
| R17 | plu | ["AES","AFP","AEF","APS","AEP","AFS"] | ["plu","AEFPS"] |
| R18 | plu | ["AER","AFS","AEF","ARS","AES","AFR"] | ["plu","AEFRS"] |
| R19 | plu | ["AES","APR","AEP","ARS","AER","APS"] | ["plu","AEPRS"] |
| R20 | plu | ["ABR","BCF","ABC","BFR","ABF","BCR"] | ["plu","BACFR"] |
| R21 | plu | ["BFP","BQS","BFQ","BPS","BFS","BPQ"] | ["plu","BFPQS"] |
| R22 | plu | ["ACH","CFP","ACF","CHP","ACP","CFH"] | ["plu","CAFHP"] |
| R23 | plu | ["ACF","CPS","ACP","CFS","ACS","CFP"] | ["plu","CAFPS"] |
| R24 | plu | ["BCE","CQR","BCQ","CER","BCR","CEQ"] | ["plu","CBEQR"] |
| R25 | plu | ["AES","CER","ACE","ERS","AER","CES"] | ["plu","EACRS"] |
| R26 | plu | ["ACF","BFS","ABF","CFS","AFS","BCF"] | ["plu","FABCS"] |
| R27 | plu | ["AFQ","CFH","ACF","FHQ","AFH","CFQ"] | ["plu","FACHQ"] |
| R28 | plu | ["ACF","FPR","AFP","CFR","AFR","CFP"] | ["plu","FACPR"] |
| R29 | plu | ["AFQ","CFS","ACF","FQS","AFS","CFQ"] | ["plu","FACQS"] |
| R30 | plu | ["AFR","CFS","ACF","FRS","AFS","CFR"] | ["plu","FACRS"] |
| R31 | plu | ["AFR","EFP","AEF","FPR","AFP","EFR"] | ["plu","FAEPR"] |
| R32 | plu | ["AFQ","FHP","AFH","FPQ","AFP","FHQ"] | ["plu","FAHPQ"] |
| R33 | plu | ["AFQ","FPS","AFP","FQS","AFS","FPQ"] | ["plu","FAPQS"] |
| R34 | plu | ["AFR","FQS","AFQ","FRS","AFS","FQR"] | ["plu","FAQRS"] |
| R35 | plu | ["APQ","BFP","ABP","FPQ","AFP","BPQ"] | ["plu","PABFQ"] |
| R36 | plu | ["AFP","BPR","ABP","FPR","APR","BFP"] | ["plu","PABFR"] |
| R37 | plu | ["AFP","BPS","ABP","FPS","APS","BFP"] | ["plu","PABFS"] |
| R38 | plu | ["AFP","CEP","ACP","EFP","AEP","CFP"] | ["plu","PACEF"] |
| R39 | plu | ["ACP","EPS","AEP","CPS","APS","CEP"] | ["plu","PACES"] |
| R40 | plu | ["AHP","CFP","ACP","FHP","AFP","CHP"] | ["plu","PACFH"] |
| R41 | plu | ["AFP","PQR","APQ","FPR","APR","FPQ"] | ["plu","PAFQR"] |
| R42 | plu | ["BFP","PQR","BPQ","FPR","BPR","FPQ"] | ["plu","PBFQR"] |
| R43 | plu | ["BFP","PQS","BPQ","FPS","BPS","FPQ"] | ["plu","PBFQS"] |
| R44 | plu | ["ACR","BER","ABR","CER","AER","BCR"] | ["plu","RABCE"] |
| R45 | plu | ["AER","CQR","ACR","EQR","AQR","CER"] | ["plu","RACEQ"] |
| R46 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R47 | plu | ["AFS","CQS","ACS","FQS","AQS","CFS"] | ["plu","SACFQ"] |
| R48 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R49 | plu | ["ARS","EQS","AES","QRS","AQS","ERS"] | ["plu","SAEQR"] |
| R50 | linear | [{"ACE":1,"AER":-1,"ACR":-1,"CER":1},"0"] | ["affine_quad","ACER",1] |
| R51 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R52 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R53 | linear | [{"ACR":-1,"ARS":-1,"ACS":1,"CRS":1},"0"] | ["affine_quad","ACRS",-1] |
| R54 | linear | [{"AEF":1,"AFS":-1,"AES":1,"EFS":-1},"0"] | ["affine_quad","AEFS",1] |
| R55 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R56 | linear | [{"AFP":-1,"APR":-1,"AFR":1,"FPR":-1},"0"] | ["affine_quad","AFPR",1] |
| R57 | linear | [{"AFP":-1,"APS":-1,"AFS":1,"FPS":-1},"0"] | ["affine_quad","AFPS",1] |
| R58 | linear | [{"APQ":-1,"AQR":1,"APR":-1,"PQR":-1},"0"] | ["affine_quad","APQR",-1] |
| R59 | linear | [{"APQ":-1,"AQS":1,"APS":-1,"PQS":-1},"0"] | ["affine_quad","APQS",-1] |
| R60 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R61 | linear | [{"CFQ":-1,"CQS":-1,"CFS":1,"FQS":-1},"0"] | ["affine_quad","CFQS",1] |
| R62 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R63 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R64 | linear | [{"FPQ":-1,"FQR":-1,"FPR":1,"PQR":-1},"0"] | ["affine_quad","FPQR",-1] |
| R65 | linear | [{"FPQ":-1,"FQS":-1,"FPS":1,"PQS":-1},"0"] | ["affine_quad","FPQS",-1] |
| R66 | bary | [["ABS",1],[["ABC",1],["ABE",1],["ABR",1]],11,[3,3,3]] | ["side_pair_weights","AB","S","CER","3/11"] |
| R67 | bary | [["ARS",1],[["ACR",-1],["AER",1],null],11,[3,3,3]] | ["side_pair_weights","AR","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s8 | R0 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s19 | R1 | sub | hi | AES | 269733/500000 | hi_AER,lo_ARS,lo_ERS |
| s26 | R5 | sub | hi | AFP | 352543/1000000 | hi_AFS,lo_APS,lo_FPS |
| s39 | R7 | sub | hi | BFP | 3263/10000 | hi_BCF,lo_BCP,lo_CFP |
| s56 | R8 | sub | hi | BQS | 605573/1000000 | hi_BFS,lo_BFQ,lo_FQS |
| s61 | R9 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s71 | R10 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s80 | R11 | sumlo | lo | ABS | 3713/31250 | lo_ABC,lo_AFS,lo_ABF,lo_ACS,hi_ACF |
| s82 | R13 | sumlo | lo | ABF | 103161/1000000 | lo_ABH,lo_AFS,s80,lo_AFH,hi_AHS |
| s90 | R17 | sumlo | lo | AFP | 83869/500000 | lo_AEF,lo_APS,lo_AEP,lo_AFS,s19 |
| s93 | R18 | diff | lo | AES | 37491/125000 | lo_AER,lo_AFS,hi_AEF,hi_ARS,hi_AFR |
| s95 | R19 | sumlo | lo | APR | 135673/1000000 | lo_AEP,lo_ARS,lo_AER,lo_APS,s19 |
| s100 | R20 | sumlo | lo | ABR | 18089/125000 | lo_ABC,lo_BFR,s82,lo_BCR,hi_BCF |
| s112 | R21 | sumlo | lo | BFP | 60431/500000 | lo_BFQ,lo_BPS,lo_BFS,lo_BPQ,s56 |
| s124 | R24 | sumlo | lo | CQR | 186137/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,hi_BCE |
| s148 | R26 | sumlo | lo | ACF | 280969/1000000 | s82,lo_CFS,lo_AFS,lo_BCF,hi_BFS |
| s157 | R29 | sumlo | lo | AFQ | 159193/1000000 | s148,lo_FQS,lo_AFS,lo_CFQ,hi_CFS |
| s165 | R34 | sumlo | lo | FQS | 19389/200000 | s157,lo_FRS,lo_AFS,lo_FQR,hi_AFR |
| s177 | R36 | sumlo | lo | BPR | 7507/62500 | lo_ABP,lo_FPR,s95,s112,s26 |
| s178 | R37 | sumlo | lo | BPS | 52741/500000 | lo_ABP,lo_FPS,lo_APS,s112,s26 |
| s183 | R42 | sumlo | lo | PQR | 14219/125000 | lo_BPQ,lo_FPR,s177,lo_FPQ,s39 |
| s184 | R43 | sumlo | lo | PQS | 54791/500000 | lo_BPQ,lo_FPS,s178,lo_FPQ,s39 |
| s186 | R44 | sumlo | lo | ACR | 161351/1000000 | s100,lo_CER,lo_AER,lo_BCR,hi_BER |
| s193 | R46 | sumlo | lo | ARS | 98067/500000 | lo_AER,lo_FRS,lo_AFR,lo_ERS,hi_EFR |
| s212 | R48 | sumlo | lo | EFS | 296301/1000000 | s93,lo_FRS,lo_AFS,lo_ERS,hi_ARS |
| s214 | R49 | sumlo | lo | EQS | 34517/200000 | s93,lo_QRS,lo_AQS,lo_ERS,hi_ARS |
| s218 | R50 | linear | lo | ACE | 52309/100000 | s186,lo_AER,hi_CER |
| s220 | R51 | linear | lo | ACF | 176869/500000 | lo_ACP,s90,lo_CFP |
| s224 | R53 | linear | lo | ACS | 26403/125000 | s186,s193,s61 |
| s229 | R54 | linear | lo | AEF | 90167/200000 | s19,lo_AFS,s212 |
| s234 | R55 | linear | hi | AES | 109083/250000 | hi_AER,s193,lo_ERS |
| s236 | R57 | linear | hi | FPS | 92761/200000 | s90,hi_AFS,lo_APS |
| s245 | R58 | linear | lo | AQR | 13697/40000 | lo_APQ,s95,s183 |
| s247 | R59 | linear | lo | AQS | 147791/500000 | lo_APQ,lo_APS,s184 |
| s280 | R60 | linear | lo | CFR | 372137/1000000 | lo_CFQ,s124,lo_FQR |
| s296 | R63 | linear | lo | EQR | 71717/200000 | s214,lo_ERS,lo_QRS |
| s298 | R64 | linear | lo | FPR | 37469/125000 | lo_FPQ,lo_FQR,s183 |
| s301 | R65 | linear | lo | FPS | 299527/1000000 | lo_FPQ,s165,s184 |
| s306 | R66 | bary_lo | lo | ABS | 15783/100000 | lo_ABC,lo_ABE,s100 |
| s309 | R67 | bary_hi | hi | ARS | 285753/1000000 | s186,hi_AER |
| s328 | R5 | sub | hi | AFP | 20751/62500 | hi_AFS,lo_APS,s301 |
| s329 | R6 | sub | hi | AFQ | 20751/62500 | hi_AFS,s247,s165 |
| s337 | R12 | sumlo | lo | ABP | 46553/500000 | lo_ABE,lo_APS,s306,lo_AEP,s234 |
| s339 | R13 | sumlo | lo | ABF | 108113/1000000 | lo_ABH,lo_AFS,s306,lo_AFH,hi_AHS |
| s342 | R15 | sumlo | lo | ACP | 4891/31250 | s218,lo_APS,s224,lo_AEP,s234 |
| s347 | R16 | sumlo | lo | ACS | 110791/500000 | s220,s193,s186,lo_AFS,hi_AFR |
| s349 | R17 | sumlo | lo | AFP | 24401/100000 | s229,lo_APS,lo_AEP,lo_AFS,s234 |
| s356 | R19 | sumlo | lo | APR | 189723/1000000 | lo_AEP,s193,lo_AER,lo_APS,s234 |
| s360 | R20 | sumlo | lo | ABR | 14561/100000 | lo_ABC,lo_BFR,s339,lo_BCR,hi_BCF |
| s394 | R25 | sumlo | lo | AES | 42583/125000 | s218,lo_ERS,lo_AER,lo_CES,hi_CER |
| s409 | R27 | sumlo | lo | CFH | 62567/500000 | s220,lo_FHQ,lo_AFH,lo_CFQ,s329 |
| s415 | R30 | sumlo | lo | CFS | 355739/1000000 | s220,lo_FRS,lo_AFS,s280,hi_AFR |
| s419 | R32 | sumlo | lo | FHP | 47199/500000 | lo_AFH,lo_FPQ,s349,lo_FHQ,s329 |
| s423 | R33 | sumlo | lo | AFQ | 2377/12500 | s349,s165,lo_AFS,lo_FPQ,s236 |
| s426 | R34 | sumlo | lo | FQS | 6279/62500 | s423,lo_FRS,lo_AFS,lo_FQR,hi_AFR |
| s437 | R35 | sumlo | lo | APQ | 48041/500000 | s337,lo_FPQ,s349,lo_BPQ,s39 |
| s443 | R40 | sumlo | lo | CFP | 117757/1000000 | s342,s419,s349,lo_CHP,s8 |
| s451 | R41 | sumlo | lo | PQR | 139887/1000000 | s437,s298,s356,lo_FPQ,s328 |
| s462 | R44 | sumlo | lo | ACR | 161737/1000000 | s360,lo_CER,lo_AER,lo_BCR,hi_BER |
| s468 | R45 | sumlo | lo | CQR | 211633/1000000 | s462,s296,s245,lo_CER,hi_AER |
| s484 | R47 | sumlo | lo | CQS | 3517/20000 | s347,s426,s247,s415,hi_AFS |
| s487 | R48 | sumlo | lo | ARS | 203803/1000000 | s394,lo_FRS,lo_AFS,lo_ERS,s71 |
| s488 | R48 | sumlo | lo | EFS | 336737/1000000 | s394,lo_FRS,lo_AFS,lo_ERS,s309 |
| s501 | R51 | linear | lo | ACF | 518279/1000000 | s342,s349,s443 |
| s507 | R52 | linear | hi | AHP | 254663/1000000 | hi_ACH,s342,lo_CHP |
| s515 | R54 | linear | lo | AEF | 118881/200000 | s234,lo_AFS,s488 |
| s520 | R55 | linear | hi | AES | 428663/1000000 | hi_AER,s487,lo_ERS |
| s524 | R56 | linear | hi | FPR | 384733/1000000 | s349,hi_AFR,s356 |
| s533 | R58 | linear | lo | AQR | 106423/250000 | s437,s356,s451 |
| s576 | R60 | linear | lo | CFR | 397633/1000000 | lo_CFQ,s468,lo_FQR |
| s578 | R61 | linear | lo | CFS | 184657/500000 | lo_CFQ,s484,s426 |
| s588 | R62 | linear | lo | EFR | 522737/1000000 | s488,lo_ERS,lo_FRS |
| s600 | R64 | linear | lo | FPR | 325887/1000000 | lo_FPQ,lo_FQR,s451 |
| s612 | R2 | sub | hi | EPS | 242663/1000000 | s520,lo_AEP,lo_APS |
| s613 | R3 | sum | lo | AFR | 37981/50000 | s349,s356,s600 |
| s614 | R3 | sub | hi | AFP | 37857/125000 | hi_AFR,s356,s600 |
| s616 | R4 | sub | hi | AFQ | 149887/500000 | hi_AFR,s533,lo_FQR |
| s628 | R14 | sumlo | lo | ACE | 556923/1000000 | s501,lo_AER,s462,s515,hi_AFR |
| s630 | R15 | sumlo | lo | ACP | 168899/1000000 | s628,lo_APS,s347,lo_AEP,s520 |
| s640 | R16 | sumlo | lo | ACS | 53239/200000 | s501,s487,s462,lo_AFS,hi_AFR |
| s645 | R17 | sumlo | lo | AFP | 69881/250000 | s515,lo_APS,lo_AEP,lo_AFS,s520 |
| s690 | R22 | sumlo | lo | CFP | 137521/1000000 | s501,lo_CHP,s630,s409,hi_ACH |
| s697 | R23 | sumlo | lo | CPS | 10043/62500 | s630,s578,s640,s690,hi_ACF |
| s733 | R28 | sumlo | lo | FPR | 175009/500000 | s645,s576,s613,s690,hi_ACF |
| s735 | R28 | diffhi | hi | CFP | 20709/125000 | hi_ACF,s524,s645,s576,s613 |
| s747 | R31 | sumlo | lo | EFP | 108181/250000 | s515,s733,s645,s588,hi_AFR |
| s751 | R32 | sumlo | lo | FHP | 115569/1000000 | lo_AFH,lo_FPQ,s645,lo_FHQ,s616 |
| s792 | R38 | sumlo | lo | CEP | 141777/500000 | s630,s747,lo_AEP,s690,s614 |
| s793 | R39 | sumlo | lo | ACP | 85127/500000 | lo_AEP,s697,lo_APS,s792,s612 |
| s794 | R40 | sumlo | lo | AHP | 68919/250000 | s793,s751,s645,lo_CHP,s735 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AHP | s794 | s507 |

The two cited bounds give 68919/250000 <= |AHP| <= 254663/1000000, with exact positive gap 21013/1000000.

## Leaf A029

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ACS | ACS | lo | 279/1000 | cost:P |
| lo_ARS | ARS | lo | 279/1000 | cost:P |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R1 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R2 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s24 | R0 | sub | hi | AES | 176733/500000 | hi_AER,lo_ARS,lo_ERS |
| s62 | R1 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s286 | R2 | sumlo | lo | AES | 88701/250000 | lo_ACS,lo_ERS,lo_ARS,lo_CES,s62 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AES | s286 | s24 |

The two cited bounds give 88701/250000 <= |AES| <= 176733/500000, with exact positive gap 669/500000.

## Leaf A030

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 279/1000 | cost:P |
| lo_AEH | AEH | lo | 279/1000 | cost:Q |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCQ | BCQ | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 347/500 | cost:PQ |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEP | BEP | lo | 93/1000 | cost: |
| lo_BFH | BFH | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BFR | BFR | lo | 347/500 | cost:PQ |
| lo_BFS | BFS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 93/1000 | cost: |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 93/1000 | cost: |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EHQ | EHQ | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 347/500 | cost:QS |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FHR | FHR | lo | 279/1000 | cost:Q |
| lo_FHS | FHS | lo | 279/1000 | cost:Q |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACE | ACE | hi | 7016953/8875000 | C043 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_ACR | ACR | hi | 445132103342243/1016178625000000 | C035 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_CEF | CEF | hi | 13367777/15625000 | C041 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CFS | CFS | hi | 22417750204943/39359031250000 | C060 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACR","ACP","APR","CPR"] | ["fan","ACR","P"] |
| R1 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R2 | fan | ["AFS","AFQ","AQS","FQS"] | ["fan","AFS","Q"] |
| R3 | fan | ["BEF","BEQ","BFQ","EFQ"] | ["fan","BEF","Q"] |
| R4 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R5 | fan | ["BFR","BFQ","BQR","FQR"] | ["fan","BFR","Q"] |
| R6 | fan | ["BFS","BFQ","BQS","FQS"] | ["fan","BFS","Q"] |
| R7 | fan | ["CEF","CEQ","CFQ","EFQ"] | ["fan","CEF","Q"] |
| R8 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R9 | fan | ["CFR","CFQ","CQR","FQR"] | ["fan","CFR","Q"] |
| R10 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R11 | fan | ["EHR","EHQ","EQR","HQR"] | ["fan","EHR","Q"] |
| R12 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R13 | fan | ["EHS","EHQ","EQS","HQS"] | ["fan","EHS","Q"] |
| R14 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R15 | plu | ["ACE","AHR","ACH","AER","ACR","AEH"] | ["plu","ACEHR"] |
| R16 | plu | ["ACR","AEP","ACE","APR","ACP","AER"] | ["plu","ACEPR"] |
| R17 | plu | ["ACR","AHP","ACH","APR","ACP","AHR"] | ["plu","ACHPR"] |
| R18 | plu | ["BCP","BEQ","BCE","BPQ","BCQ","BEP"] | ["plu","BCEPQ"] |
| R19 | plu | ["BCF","BHQ","BCH","BFQ","BCQ","BFH"] | ["plu","BCFHQ"] |
| R20 | plu | ["BCF","BHS","BCH","BFS","BCS","BFH"] | ["plu","BCFHS"] |
| R21 | plu | ["BCS","BFR","BCF","BRS","BCR","BFS"] | ["plu","BCFRS"] |
| R22 | plu | ["BEQ","BFP","BEF","BPQ","BEP","BFQ"] | ["plu","BEFPQ"] |
| R23 | plu | ["BEF","BPR","BEP","BFR","BER","BFP"] | ["plu","BEFPR"] |
| R24 | plu | ["BEF","BPS","BEP","BFS","BES","BFP"] | ["plu","BEFPS"] |
| R25 | plu | ["BEQ","BHP","BEH","BPQ","BEP","BHQ"] | ["plu","BEHPQ"] |
| R26 | plu | ["BEQ","BPR","BEP","BQR","BER","BPQ"] | ["plu","BEPQR"] |
| R27 | plu | ["BFP","BQR","BFQ","BPR","BFR","BPQ"] | ["plu","BFPQR"] |
| R28 | plu | ["BFP","BQS","BFQ","BPS","BFS","BPQ"] | ["plu","BFPQS"] |
| R29 | plu | ["ACH","CEP","ACE","CHP","ACP","CEH"] | ["plu","CAEHP"] |
| R30 | plu | ["ACE","CHR","ACH","CER","ACR","CEH"] | ["plu","CAEHR"] |
| R31 | plu | ["ACF","CHR","ACH","CFR","ACR","CFH"] | ["plu","CAFHR"] |
| R32 | plu | ["ACH","CPR","ACP","CHR","ACR","CHP"] | ["plu","CAHPR"] |
| R33 | plu | ["ACH","CPS","ACP","CHS","ACS","CHP"] | ["plu","CAHPS"] |
| R34 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R35 | plu | ["BCE","CQR","BCQ","CER","BCR","CEQ"] | ["plu","CBEQR"] |
| R36 | plu | ["CFP","CHR","CFH","CPR","CFR","CHP"] | ["plu","CFHPR"] |
| R37 | plu | ["CHR","CPQ","CHP","CQR","CHQ","CPR"] | ["plu","CHPQR"] |
| R38 | plu | ["AER","CEF","ACE","EFR","AEF","CER"] | ["plu","EACFR"] |
| R39 | plu | ["AER","CEH","ACE","EHR","AEH","CER"] | ["plu","EACHR"] |
| R40 | plu | ["AER","CEQ","ACE","EQR","AEQ","CER"] | ["plu","EACQR"] |
| R41 | plu | ["AER","EPQ","AEP","EQR","AEQ","EPR"] | ["plu","EAPQR"] |
| R42 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R43 | plu | ["BER","CEP","BCE","EPR","BEP","CER"] | ["plu","EBCPR"] |
| R44 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R45 | plu | ["BEF","EHR","BEH","EFR","BER","EFH"] | ["plu","EBFHR"] |
| R46 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R47 | plu | ["CER","EPS","CEP","ERS","CES","EPR"] | ["plu","ECPRS"] |
| R48 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R49 | plu | ["EFQ","EHS","EFH","EQS","EFS","EHQ"] | ["plu","EFHQS"] |
| R50 | plu | ["AFQ","CFR","ACF","FQR","AFR","CFQ"] | ["plu","FACQR"] |
| R51 | plu | ["AFQ","CFS","ACF","FQS","AFS","CFQ"] | ["plu","FACQS"] |
| R52 | plu | ["BCF","FPR","BFP","CFR","BFR","CFP"] | ["plu","FBCPR"] |
| R53 | plu | ["BCF","FPS","BFP","CFS","BFS","CFP"] | ["plu","FBCPS"] |
| R54 | plu | ["BFQ","CFR","BCF","FQR","BFR","CFQ"] | ["plu","FBCQR"] |
| R55 | plu | ["BFQ","CFS","BCF","FQS","BFS","CFQ"] | ["plu","FBCQS"] |
| R56 | plu | ["BFR","EFQ","BEF","FQR","BFQ","EFR"] | ["plu","FBEQR"] |
| R57 | plu | ["BFR","FQS","BFQ","FRS","BFS","FQR"] | ["plu","FBQRS"] |
| R58 | plu | ["CFR","EFQ","CEF","FQR","CFQ","EFR"] | ["plu","FCEQR"] |
| R59 | plu | ["CFS","FPQ","CFP","FQS","CFQ","FPS"] | ["plu","FCPQS"] |
| R60 | plu | ["AHR","CEH","ACH","EHR","AEH","CHR"] | ["plu","HACER"] |
| R61 | plu | ["AHQ","EHS","AEH","HQS","AHS","EHQ"] | ["plu","HAEQS"] |
| R62 | plu | ["BHQ","EHS","BEH","HQS","BHS","EHQ"] | ["plu","HBEQS"] |
| R63 | plu | ["CEH","FHS","CFH","EHS","CHS","EFH"] | ["plu","HCEFS"] |
| R64 | plu | ["CHQ","EHS","CEH","HQS","CHS","EHQ"] | ["plu","HCEQS"] |
| R65 | plu | ["EHS","HQR","EHQ","HRS","EHR","HQS"] | ["plu","HEQRS"] |
| R66 | plu | ["AEP","CPR","ACP","EPR","APR","CEP"] | ["plu","PACER"] |
| R67 | plu | ["AFP","CPR","ACP","FPR","APR","CFP"] | ["plu","PACFR"] |
| R68 | plu | ["AQR","CEQ","ACQ","EQR","AEQ","CQR"] | ["plu","QACER"] |
| R69 | plu | ["AFQ","CQR","ACQ","FQR","AQR","CFQ"] | ["plu","QACFR"] |
| R70 | plu | ["BCQ","EPQ","BEQ","CPQ","BPQ","CEQ"] | ["plu","QBCEP"] |
| R71 | plu | ["BQR","CEQ","BCQ","EQR","BEQ","CQR"] | ["plu","QBCER"] |
| R72 | plu | ["BFQ","CQR","BCQ","FQR","BQR","CFQ"] | ["plu","QBCFR"] |
| R73 | plu | ["BFQ","EPQ","BEQ","FPQ","BPQ","EFQ"] | ["plu","QBEFP"] |
| R74 | plu | ["BQR","EFQ","BEQ","FQR","BFQ","EQR"] | ["plu","QBEFR"] |
| R75 | plu | ["BFQ","PQR","BPQ","FQR","BQR","FPQ"] | ["plu","QBFPR"] |
| R76 | plu | ["CEQ","FPQ","CFQ","EPQ","CPQ","EFQ"] | ["plu","QCEFP"] |
| R77 | plu | ["CQR","EFQ","CEQ","FQR","CFQ","EQR"] | ["plu","QCEFR"] |
| R78 | plu | ["CQR","FHQ","CFQ","HQR","CHQ","FQR"] | ["plu","QCFHR"] |
| R79 | plu | ["AER","CHR","ACR","EHR","AHR","CER"] | ["plu","RACEH"] |
| R80 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R81 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R82 | plu | ["AER","HPR","AHR","EPR","APR","EHR"] | ["plu","RAEHP"] |
| R83 | plu | ["AQR","EHR","AER","HQR","AHR","EQR"] | ["plu","RAEHQ"] |
| R84 | plu | ["ARS","EQR","AER","QRS","AQR","ERS"] | ["plu","RAEQS"] |
| R85 | plu | ["BER","CFR","BCR","EFR","BFR","CER"] | ["plu","RBCEF"] |
| R86 | plu | ["BRS","EFR","BER","FRS","BFR","ERS"] | ["plu","RBEFS"] |
| R87 | plu | ["CQR","EHR","CER","HQR","CHR","EQR"] | ["plu","RCEHQ"] |
| R88 | plu | ["CRS","EHR","CER","HRS","CHR","ERS"] | ["plu","RCEHS"] |
| R89 | plu | ["CRS","EQR","CER","QRS","CQR","ERS"] | ["plu","RCEQS"] |
| R90 | plu | ["CQR","HRS","CHR","QRS","CRS","HQR"] | ["plu","RCHQS"] |
| R91 | plu | ["EFR","HRS","EHR","FRS","ERS","FHR"] | ["plu","REFHS"] |
| R92 | plu | ["EFR","PRS","EPR","FRS","ERS","FPR"] | ["plu","REFPS"] |
| R93 | plu | ["EHR","PQR","EPR","HQR","EQR","HPR"] | ["plu","REHPQ"] |
| R94 | plu | ["EQR","HRS","EHR","QRS","ERS","HQR"] | ["plu","REHQS"] |
| R95 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R96 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R97 | plu | ["BRS","EFS","BES","FRS","BFS","ERS"] | ["plu","SBEFR"] |
| R98 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R99 | plu | ["CRS","EHS","CES","HRS","CHS","ERS"] | ["plu","SCEHR"] |
| R100 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R101 | plu | ["EQS","HRS","EHS","QRS","ERS","HQS"] | ["plu","SEHQR"] |
| R102 | linear | [{"ACE":1,"AEP":-1,"ACP":-1,"CEP":-1},"0"] | ["affine_quad","ACEP",1] |
| R103 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R104 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R105 | linear | [{"ACH":-1,"AHR":1,"ACR":1,"CHR":-1},"0"] | ["affine_quad","ACHR",-1] |
| R106 | linear | [{"ACP":-1,"APR":-1,"ACR":1,"CPR":-1},"0"] | ["affine_quad","ACPR",-1] |
| R107 | linear | [{"ACP":-1,"APS":-1,"ACS":1,"CPS":-1},"0"] | ["affine_quad","ACPS",-1] |
| R108 | linear | [{"ACR":-1,"ARS":-1,"ACS":1,"CRS":1},"0"] | ["affine_quad","ACRS",-1] |
| R109 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R110 | linear | [{"AEH":1,"AHQ":-1,"AEQ":-1,"EHQ":-1},"0"] | ["affine_quad","AEHQ",1] |
| R111 | linear | [{"AEH":1,"AHR":-1,"AER":1,"EHR":-1},"0"] | ["affine_quad","AEHR",1] |
| R112 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R113 | linear | [{"AFQ":-1,"AQR":-1,"AFR":1,"FQR":-1},"0"] | ["affine_quad","AFQR",1] |
| R114 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R115 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R116 | linear | [{"BCR":-1,"BRS":-1,"BCS":1,"CRS":1},"0"] | ["affine_quad","BCRS",-1] |
| R117 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R118 | linear | [{"BEP":-1,"BPQ":-1,"BEQ":1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",-1] |
| R119 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R120 | linear | [{"BFP":-1,"BPR":-1,"BFR":1,"FPR":-1},"0"] | ["affine_quad","BFPR",1] |
| R121 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R122 | linear | [{"BFQ":-1,"BQS":-1,"BFS":1,"FQS":-1},"0"] | ["affine_quad","BFQS",1] |
| R123 | linear | [{"BFR":1,"BRS":-1,"BFS":-1,"FRS":1},"0"] | ["affine_quad","BFRS",-1] |
| R124 | linear | [{"BPQ":-1,"BQR":1,"BPR":-1,"PQR":-1},"0"] | ["affine_quad","BPQR",-1] |
| R125 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R126 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R127 | linear | [{"CFH":1,"CHR":-1,"CFR":1,"FHR":-1},"0"] | ["affine_quad","CFHR",1] |
| R128 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R129 | linear | [{"CFQ":-1,"CQS":-1,"CFS":1,"FQS":-1},"0"] | ["affine_quad","CFQS",1] |
| R130 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R131 | linear | [{"CHQ":1,"CQR":1,"CHR":-1,"HQR":-1},"0"] | ["affine_quad","CHQR",-1] |
| R132 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R133 | linear | [{"CQR":-1,"CRS":1,"CQS":1,"QRS":-1},"0"] | ["affine_quad","CQRS",1] |
| R134 | linear | [{"EFH":1,"EHQ":1,"EFQ":-1,"FHQ":-1},"0"] | ["affine_quad","EFHQ",1] |
| R135 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R136 | linear | [{"EFH":1,"EHS":1,"EFS":-1,"FHS":-1},"0"] | ["affine_quad","EFHS",1] |
| R137 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R138 | linear | [{"EHQ":-1,"EQR":-1,"EHR":1,"HQR":-1},"0"] | ["affine_quad","EHQR",-1] |
| R139 | linear | [{"EHQ":-1,"EQS":-1,"EHS":1,"HQS":-1},"0"] | ["affine_quad","EHQS",-1] |
| R140 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R141 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R142 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R143 | linear | [{"FHQ":-1,"FQR":-1,"FHR":1,"HQR":-1},"0"] | ["affine_quad","FHQR",-1] |
| R144 | linear | [{"FHQ":-1,"FQS":-1,"FHS":1,"HQS":-1},"0"] | ["affine_quad","FHQS",-1] |
| R145 | linear | [{"FPQ":-1,"FQR":-1,"FPR":1,"PQR":-1},"0"] | ["affine_quad","FPQR",-1] |
| R146 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R147 | quad | ["ACS","CRS","449/1000"] | ["quad","ACRS","P"] |
| R148 | bary | [["AES",-1],[["ACE",-1],null,["AER",-1]],11,[3,3,3]] | ["side_pair_weights","AE","S","CER","3/11"] |
| R149 | bary | [["AHS",-1],[["ACH",-1],["AEH",-1],["AHR",-1]],11,[3,3,3]] | ["side_pair_weights","AH","S","CER","3/11"] |
| R150 | bary | [["AQS",-1],[["ACQ",-1],["AEQ",-1],["AQR",-1]],11,[3,3,3]] | ["side_pair_weights","AQ","S","CER","3/11"] |
| R151 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R152 | bary | [["BPS",-1],[["BCP",-1],["BEP",-1],["BPR",-1]],11,[3,3,3]] | ["side_pair_weights","BP","S","CER","3/11"] |
| R153 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R154 | linear | [{"BCS":-3,"BES":5,"BRS":-3},"0"] | ["barycentric","BS","S","CER","upper"] |
| R155 | bary | [["CFS",-1],[null,["CEF",-1],["CFR",-1]],11,[3,3,3]] | ["side_pair_weights","CF","S","CER","3/11"] |
| R156 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R157 | bary | [["EPS",1],[["CEP",1],null,["EPR",1]],11,[3,3,3]] | ["side_pair_weights","EP","S","CER","3/11"] |
| R158 | bary | [["HRS",1],[["CHR",-1],["EHR",1],null],11,[3,3,3]] | ["side_pair_weights","HR","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s17 | R0 | sub | hi | CPR | 126023/500000 | hi_ACR,lo_ACP,lo_APR |
| s38 | R3 | sub | hi | BEQ | 7103/10000 | hi_BEF,lo_BFQ,lo_EFQ |
| s48 | R6 | sub | hi | BQS | 605573/1000000 | hi_BFS,lo_BFQ,lo_FQS |
| s52 | R7 | sub | hi | CEQ | 334769/500000 | hi_CEF,lo_CFQ,lo_EFQ |
| s56 | R8 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s59 | R9 | sub | hi | CQR | 201267/500000 | hi_CFR,lo_CFQ,lo_FQR |
| s67 | R10 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s71 | R11 | sub | hi | EQR | 547371/1000000 | hi_EHR,lo_EHQ,lo_HQR |
| s73 | R12 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s88 | R15 | sumlo | lo | AHR | 39381/200000 | lo_ACH,lo_AER,lo_ACR,lo_AEH,hi_ACE |
| s94 | R17 | sumlo | lo | AHP | 101037/1000000 | lo_ACH,lo_APR,lo_ACP,s88,hi_ACR |
| s100 | R19 | sumlo | lo | BHQ | 6331/62500 | lo_BCH,lo_BFQ,lo_BCQ,lo_BFH,hi_BCF |
| s102 | R20 | sumlo | lo | BHS | 394837/1000000 | lo_BCH,lo_BFS,lo_BCS,lo_BFH,hi_BCF |
| s103 | R21 | sumlo | lo | BCS | 50479/500000 | lo_BCF,lo_BRS,lo_BCR,lo_BFS,hi_BFR |
| s108 | R25 | sumlo | lo | BHP | 1627/15625 | lo_BEH,lo_BPQ,lo_BEP,s100,s38 |
| s110 | R28 | sumlo | lo | BFP | 60431/500000 | lo_BFQ,lo_BPS,lo_BFS,lo_BPQ,s48 |
| s118 | R34 | sumlo | lo | CHR | 44673/200000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_BCE |
| s119 | R35 | sumlo | lo | BCE | 214863/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,s59 |
| s120 | R35 | sumlo | lo | CQR | 186137/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,hi_BCE |
| s135 | R42 | sumlo | lo | CEH | 527103/1000000 | s119,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s137 | R43 | sumlo | lo | CEP | 2064/15625 | s119,lo_EPR,lo_BEP,lo_CER,hi_BER |
| s140 | R45 | diff | lo | EFR | 182377/500000 | lo_BEF,lo_EHR,hi_BER,hi_EFH,hi_BEH |
| s147 | R46 | sumlo | lo | EHS | 341787/1000000 | s135,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s160 | R55 | sumlo | lo | BFQ | 19859/125000 | lo_BCF,lo_FQS,lo_BFS,lo_CFQ,hi_CFS |
| s163 | R56 | sumlo | lo | EFQ | 136663/1000000 | lo_BEF,lo_FQR,s160,s140,hi_BFR |
| s166 | R60 | sumlo | lo | AHR | 26953/100000 | lo_ACH,lo_EHR,lo_AEH,s118,hi_CEH |
| s172 | R62 | sumlo | lo | BHQ | 46249/250000 | lo_BEH,lo_HQS,s102,lo_EHQ,s73 |
| s176 | R65 | sumlo | lo | HQR | 133713/1000000 | lo_EHQ,lo_HRS,lo_EHR,lo_HQS,s73 |
| s179 | R67 | sumlo | lo | AFP | 6863/50000 | lo_ACP,lo_FPR,lo_APR,lo_CFP,s17 |
| s183 | R68 | sumlo | lo | AQR | 28423/200000 | lo_ACQ,lo_EQR,lo_AEQ,s120,s52 |
| s184 | R69 | sumlo | lo | AFQ | 24323/250000 | lo_ACQ,lo_FQR,s183,lo_CFQ,s59 |
| s189 | R79 | sumlo | lo | AER | 86799/200000 | lo_ACR,lo_EHR,s166,lo_CER,hi_CHR |
| s190 | R79 | sumlo | lo | CHR | 185277/500000 | lo_ACR,lo_EHR,s166,lo_CER,hi_AER |
| s196 | R82 | sumlo | lo | HPR | 96311/500000 | s166,lo_EPR,lo_APR,lo_EHR,hi_AER |
| s197 | R83 | sumlo | lo | AQR | 181667/1000000 | s189,s176,s166,lo_EQR,hi_EHR |
| s199 | R85 | sumlo | lo | BER | 77327/200000 | lo_BCR,s140,lo_BFR,lo_CER,hi_CFR |
| s203 | R86 | sumlo | lo | BRS | 152701/1000000 | s199,lo_FRS,lo_BFR,lo_ERS,hi_EFR |
| s206 | R87 | sumlo | lo | CQR | 1199/6250 | lo_CER,s176,s190,lo_EQR,hi_EHR |
| s207 | R88 | diffhi | hi | HRS | 13047/50000 | s56,hi_EHR,s190,lo_ERS,lo_CER |
| s208 | R89 | sumlo | lo | EQR | 299383/1000000 | lo_CER,lo_QRS,s206,lo_ERS,s56 |
| s215 | R93 | sumlo | lo | PQR | 64751/500000 | lo_EPR,s176,s208,s196,hi_EHR |
| s216 | R94 | sumlo | lo | HRS | 14063/100000 | lo_EHR,lo_QRS,lo_ERS,s176,s71 |
| s222 | R96 | sumlo | lo | BES | 20161/125000 | s103,lo_ERS,s203,lo_CES,s56 |
| s223 | R97 | sumlo | lo | BRS | 16847/100000 | s222,lo_FRS,lo_BFS,lo_ERS,s67 |
| s225 | R100 | sumlo | lo | EPS | 29567/250000 | lo_CES,lo_PRS,lo_CPS,lo_ERS,s56 |
| s227 | R101 | sumlo | lo | EQS | 154959/1000000 | s147,lo_QRS,lo_ERS,lo_HQS,s207 |
| s233 | R103 | linear | lo | ACF | 16163/50000 | lo_ACP,s179,lo_CFP |
| s234 | R104 | linear | lo | ACH | 287037/1000000 | lo_ACP,s94,lo_CHP |
| s246 | R114 | linear | lo | BCF | 153431/500000 | lo_BCP,s110,lo_CFP |
| s249 | R115 | linear | lo | BCH | 18133/62500 | lo_BCP,s108,lo_CHP |
| s256 | R117 | linear | hi | BEQ | 120153/200000 | hi_BEF,s160,s163 |
| s261 | R119 | linear | lo | BER | 211379/500000 | s222,s223,lo_ERS |
| s266 | R122 | linear | hi | BQS | 539701/1000000 | s160,hi_BFS,lo_FQS |
| s274 | R125 | linear | lo | CEH | 732293/1000000 | hi_CER,s190,lo_EHR |
| s275 | R125 | linear | hi | CHR | 117571/200000 | hi_CEH,hi_CER,lo_EHR |
| s283 | R132 | linear | lo | CHS | 364923/1000000 | s190,s56,s216 |
| s286 | R135 | linear | hi | EFR | 639533/1000000 | hi_EFH,hi_EHR,lo_FHR |
| s293 | R137 | linear | hi | EFS | 453533/1000000 | s286,lo_ERS,lo_FRS |
| s297 | R138 | linear | hi | EQR | 253329/500000 | lo_EHQ,hi_EHR,s176 |
| s300 | R140 | linear | hi | EHS | 499741/1000000 | hi_EHR,lo_ERS,s216 |
| s301 | R141 | linear | lo | EPR | 76067/250000 | s225,lo_ERS,lo_PRS |
| s302 | R142 | linear | lo | EQR | 340959/1000000 | s227,lo_ERS,lo_QRS |
| s306 | R143 | linear | lo | FHR | 319713/1000000 | lo_FHQ,lo_FQR,s176 |
| s310 | R145 | linear | lo | FPR | 157751/500000 | lo_FPQ,lo_FQR,s215 |
| s313 | R146 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s314 | R147 | quad | lo | ACS | 302739/1000000 | s56 |
| s317 | R149 | bary_hi | lo | AHS | 276887/1000000 | s234,lo_AEH,s166 |
| s319 | R150 | bary_hi | lo | AQS | 167909/1000000 | lo_ACQ,lo_AEQ,s197 |
| s323 | R151 | bary_hi | lo | BES | 21737/125000 | s119,s261 |
| s327 | R153 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s329 | R155 | bary_lo | hi | CFS | 54939/100000 | hi_CEF,hi_CFR |
| s330 | R156 | bary_lo | hi | CHS | 295979/500000 | hi_CEH,s275 |
| s332 | R157 | bary_lo | lo | EPS | 3719/31250 | s137,s301 |
| s340 | R158 | bary_hi | hi | HRS | 232291/1000000 | s190,hi_EHR |
| s348 | R2 | sum | lo | AFS | 358201/1000000 | s184,s319,lo_FQS |
| s352 | R4 | sum | lo | BER | 217683/500000 | s323,s223,lo_ERS |
| s362 | R14 | sum | lo | EPR | 19063/62500 | s332,lo_ERS,lo_PRS |
| s368 | R17 | sumlo | lo | AHP | 118163/1000000 | s234,lo_APR,lo_ACP,s166,hi_ACR |
| s381 | R22 | sumlo | lo | BFP | 66013/500000 | lo_BEF,lo_BPQ,lo_BEP,s160,s256 |
| s383 | R23 | sumlo | lo | BPR | 136139/1000000 | lo_BEP,lo_BFR,s352,s381,hi_BEF |
| s384 | R24 | sumlo | lo | BPS | 12203/125000 | lo_BEP,lo_BFS,s323,s381,hi_BEF |
| s385 | R25 | sumlo | lo | BHP | 13607/100000 | lo_BEH,lo_BPQ,lo_BEP,s172,s256 |
| s388 | R28 | sumlo | lo | BFP | 74163/500000 | s160,s384,lo_BFS,lo_BPQ,s266 |
| s390 | R29 | sumlo | lo | CEP | 211027/1000000 | s313,lo_CHP,lo_ACP,s274,hi_ACH |
| s394 | R32 | sumlo | lo | CPR | 14977/125000 | lo_ACP,s190,lo_ACR,lo_CHP,hi_ACH |
| s395 | R33 | sumlo | lo | CPS | 30789/250000 | lo_ACP,s283,s314,lo_CHP,hi_ACH |
| s396 | R34 | sumlo | lo | BCE | 253547/1000000 | s249,lo_CER,lo_BCR,s274,s275 |
| s404 | R44 | sumlo | lo | BES | 192827/1000000 | s396,lo_ERS,s352,lo_CES,hi_CER |
| s408 | R46 | sumlo | lo | EHS | 19961/50000 | s274,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s411 | R47 | sumlo | lo | EPS | 72219/500000 | s390,lo_ERS,lo_CES,s362,hi_CER |
| s419 | R51 | sumlo | lo | AFQ | 28839/250000 | s233,lo_FQS,s348,lo_CFQ,s329 |
| s423 | R55 | sumlo | lo | BFQ | 10589/62500 | s246,lo_FQS,lo_BFS,lo_CFQ,s329 |
| s429 | R60 | sumlo | lo | AHR | 6373/20000 | s234,lo_EHR,lo_AEH,s190,hi_CEH |
| s430 | R61 | sumlo | lo | AHQ | 12931/125000 | lo_AEH,lo_HQS,s317,lo_EHQ,s300 |
| s436 | R63 | diff | lo | CFH | 189501/1000000 | s274,lo_FHS,s330,hi_EFH,s300 |
| s443 | R65 | sumlo | lo | HQR | 155321/1000000 | lo_EHQ,s216,lo_EHR,lo_HQS,s300 |
| s445 | R66 | sumlo | lo | AEP | 95203/500000 | lo_ACP,s362,lo_APR,s390,s17 |
| s446 | R67 | sumlo | lo | AFP | 150729/1000000 | lo_ACP,s310,lo_APR,lo_CFP,s17 |
| s449 | R79 | sumlo | lo | AER | 48061/100000 | lo_ACR,lo_EHR,s429,lo_CER,s275 |
| s450 | R79 | sumlo | lo | CHR | 77889/200000 | lo_ACR,lo_EHR,s429,lo_CER,hi_AER |
| s454 | R82 | sumlo | lo | HPR | 27867/125000 | s429,s362,lo_APR,lo_EHR,hi_AER |
| s455 | R83 | sumlo | lo | AQR | 49987/200000 | s449,s443,s429,s302,hi_EHR |
| s461 | R87 | sumlo | lo | CQR | 4803/20000 | lo_CER,s443,s450,s302,hi_EHR |
| s462 | R88 | sumlo | lo | CRS | 51443/500000 | lo_CER,s216,s450,lo_ERS,hi_EHR |
| s466 | R93 | sumlo | lo | PQR | 33649/200000 | s362,s443,s302,s454,hi_EHR |
| s467 | R94 | sumlo | lo | HRS | 155897/1000000 | lo_EHR,lo_QRS,lo_ERS,s443,s297 |
| s473 | R97 | sumlo | lo | BRS | 181849/1000000 | s404,lo_FRS,lo_BFS,lo_ERS,s293 |
| s474 | R97 | sumlo | lo | EFS | 152619/500000 | s404,lo_FRS,lo_BFS,lo_ERS,s327 |
| s477 | R101 | sumlo | lo | EQS | 39413/200000 | s408,lo_QRS,lo_ERS,lo_HQS,s340 |
| s484 | R102 | linear | lo | ACE | 494433/1000000 | lo_ACP,s445,s390 |
| s487 | R103 | linear | lo | ACF | 336729/1000000 | lo_ACP,s446,lo_CFP |
| s488 | R104 | linear | lo | ACH | 304163/1000000 | lo_ACP,s368,lo_CHP |
| s493 | R106 | linear | lo | ACR | 38227/125000 | lo_ACP,lo_APR,s394 |
| s495 | R107 | linear | lo | ACS | 77289/250000 | lo_ACP,lo_APS,s395 |
| s498 | R110 | linear | lo | AEH | 36181/125000 | lo_AEQ,s430,lo_EHQ |
| s501 | R113 | linear | lo | AFR | 458291/1000000 | s419,s455,lo_FQR |
| s504 | R114 | linear | lo | BCF | 167163/500000 | lo_BCP,s388,lo_CFP |
| s507 | R115 | linear | lo | BCH | 32207/100000 | lo_BCP,s385,lo_CHP |
| s517 | R119 | linear | lo | BER | 116919/250000 | s404,s473,lo_ERS |
| s521 | R122 | linear | hi | BQS | 529149/1000000 | s423,hi_BFS,lo_FQS |
| s534 | R125 | linear | lo | CEH | 46949/62500 | hi_CER,s450,lo_EHR |
| s536 | R126 | linear | lo | CER | 144443/500000 | lo_CES,s462,lo_ERS |
| s540 | R128 | linear | lo | CFR | 8523/20000 | lo_CFQ,s461,lo_FQR |
| s544 | R132 | linear | hi | CHR | 291161/500000 | s330,s56,s467 |
| s547 | R135 | linear | hi | EFR | 29941/50000 | hi_EFH,hi_EHR,s306 |
| s549 | R136 | linear | hi | EFS | 25369/62500 | hi_EFH,s300,lo_FHS |
| s552 | R137 | linear | lo | EFR | 245619/500000 | s474,lo_ERS,lo_FRS |
| s555 | R138 | linear | hi | EQR | 9701/20000 | lo_EHQ,hi_EHR,s443 |
| s557 | R140 | linear | hi | EHS | 242237/500000 | hi_EHR,lo_ERS,s467 |
| s558 | R141 | linear | lo | EPR | 165219/500000 | s411,lo_ERS,lo_PRS |
| s559 | R142 | linear | lo | EQR | 76613/200000 | s477,lo_ERS,lo_QRS |
| s563 | R143 | linear | lo | FHR | 341321/1000000 | lo_FHQ,lo_FQR,s443 |
| s568 | R145 | linear | lo | FPR | 70849/200000 | lo_FPQ,lo_FQR,s466 |
| s576 | R151 | bary_hi | lo | BES | 196697/1000000 | s396,s517 |
| s578 | R152 | bary_hi | lo | BPS | 20953/200000 | lo_BCP,lo_BEP,s383 |
| s580 | R156 | bary_lo | hi | CHS | 590449/1000000 | hi_CEH,s544 |
| s581 | R157 | bary_lo | lo | EPS | 18459/125000 | s390,s558 |
| s587 | R158 | bary_hi | hi | HRS | 227139/1000000 | s450,hi_EHR |
| s595 | R4 | sum | lo | BER | 235773/500000 | s576,s473,lo_ERS |
| s603 | R14 | sum | lo | EPR | 41709/125000 | s581,lo_ERS,lo_PRS |
| s607 | R17 | sumlo | lo | AHP | 132227/1000000 | s488,lo_APR,lo_ACP,s429,hi_ACR |
| s616 | R28 | sumlo | lo | BFP | 155517/1000000 | s423,s578,lo_BFS,lo_BPQ,s521 |
| s618 | R29 | sumlo | lo | CEP | 114883/500000 | s484,lo_CHP,lo_ACP,s534,hi_ACH |
| s619 | R30 | sumlo | lo | ACE | 545389/1000000 | s488,s536,s493,s534,s544 |
| s620 | R30 | sumlo | lo | CHR | 401689/1000000 | s488,s536,s493,s534,hi_ACE |
| s623 | R32 | sumlo | lo | CPR | 65253/500000 | lo_ACP,s620,s493,lo_CHP,hi_ACH |
| s625 | R34 | sumlo | lo | BCE | 4371/15625 | s507,s536,lo_BCR,s534,s544 |
| s626 | R36 | sumlo | lo | CFP | 1727/15625 | s436,s623,s540,lo_CHP,s544 |
| s634 | R44 | sumlo | lo | BES | 105143/500000 | s625,lo_ERS,s595,lo_CES,hi_CER |
| s637 | R46 | sumlo | lo | EHS | 101127/250000 | s534,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s640 | R47 | sumlo | lo | EPS | 78853/500000 | s618,lo_ERS,lo_CES,s603,hi_CER |
| s646 | R50 | sumlo | lo | AFQ | 31407/250000 | s487,lo_FQR,s501,lo_CFQ,hi_CFR |
| s650 | R55 | sumlo | lo | BFQ | 174073/1000000 | s504,lo_FQS,lo_BFS,lo_CFQ,s329 |
| s652 | R56 | sumlo | lo | EFQ | 83707/500000 | lo_BEF,lo_FQR,s650,s552,hi_BFR |
| s658 | R60 | sumlo | lo | AHR | 344733/1000000 | s488,lo_EHR,s498,s620,hi_CEH |
| s669 | R63 | diff | lo | CFH | 12933/62500 | s534,lo_FHS,s580,hi_EFH,s557 |
| s676 | R65 | sumlo | lo | HQR | 81573/500000 | lo_EHQ,s467,lo_EHR,lo_HQS,s557 |
| s682 | R79 | sumlo | lo | AER | 107097/200000 | s493,lo_EHR,s658,s536,s544 |
| s683 | R79 | sumlo | lo | CHR | 429827/1000000 | s493,lo_EHR,s658,s536,hi_AER |
| s690 | R82 | sumlo | lo | HPR | 247523/1000000 | s658,s603,lo_APR,lo_EHR,hi_AER |
| s691 | R83 | sumlo | lo | AQR | 29919/100000 | s682,s676,s658,s559,hi_EHR |
| s693 | R84 | sumlo | lo | ARS | 80017/500000 | s682,lo_QRS,s691,lo_ERS,s555 |
| s697 | R87 | sumlo | lo | CQR | 288779/1000000 | s536,s676,s683,s559,hi_EHR |
| s698 | R88 | sumlo | lo | CRS | 115917/1000000 | s536,s467,s683,lo_ERS,hi_EHR |
| s702 | R92 | sumlo | lo | PRS | 106837/1000000 | s603,lo_FRS,lo_ERS,s568,s547 |
| s703 | R93 | sumlo | lo | PQR | 101759/500000 | s603,s676,s559,s690,hi_EHR |
| s705 | R94 | sumlo | lo | HRS | 164343/1000000 | lo_EHR,lo_QRS,lo_ERS,s676,s555 |
| s708 | R95 | sumlo | lo | AES | 149167/500000 | s495,lo_ERS,s693,lo_CES,s56 |
| s712 | R97 | sumlo | lo | BRS | 51797/250000 | s634,lo_FRS,lo_BFS,lo_ERS,s549 |
| s713 | R97 | sumlo | lo | EFS | 19453/62500 | s634,lo_FRS,lo_BFS,lo_ERS,s327 |
| s714 | R98 | diffhi | hi | CFS | 109073/200000 | s56,s549,lo_CES,lo_FRS,lo_ERS |
| s716 | R101 | sumlo | lo | EQS | 2037/10000 | s637,lo_QRS,lo_ERS,lo_HQS,s587 |
| s729 | R104 | linear | lo | ACH | 318227/1000000 | lo_ACP,s607,lo_CHP |
| s735 | R106 | linear | lo | ACR | 158253/500000 | lo_ACP,lo_APR,s623 |
| s739 | R108 | linear | lo | ACS | 330279/1000000 | s735,s693,s56 |
| s743 | R111 | linear | lo | AEH | 313267/1000000 | hi_AER,s658,lo_EHR |
| s744 | R112 | linear | lo | AER | 68921/125000 | s708,s693,lo_ERS |
| s746 | R113 | linear | lo | AFR | 258909/500000 | s646,s691,lo_FQR |
| s748 | R114 | linear | lo | BCF | 71809/200000 | lo_BCP,s616,s626 |
| s756 | R116 | linear | lo | BCS | 153927/1000000 | lo_BCR,s712,s56 |
| s758 | R117 | linear | hi | BEQ | 554813/1000000 | hi_BEF,s650,s652 |
| s769 | R122 | linear | hi | BQS | 1049/2000 | s650,hi_BFS,lo_FQS |
| s783 | R125 | linear | lo | CEH | 395783/500000 | hi_CER,s683,lo_EHR |
| s787 | R126 | linear | lo | CER | 301917/1000000 | lo_CES,s698,lo_ERS |
| s791 | R128 | linear | lo | CFR | 474779/1000000 | lo_CFQ,s697,lo_FQR |
| s797 | R132 | linear | hi | CHR | 572367/1000000 | s580,s56,s705 |
| s798 | R132 | linear | lo | CHS | 447909/1000000 | s683,s56,s705 |
| s802 | R135 | linear | hi | EFR | 144303/250000 | hi_EFH,hi_EHR,s563 |
| s806 | R136 | linear | hi | EFS | 390637/1000000 | hi_EFH,s557,lo_FHS |
| s809 | R137 | linear | lo | EFR | 15539/31250 | s713,lo_ERS,lo_FRS |
| s812 | R140 | linear | hi | EHS | 119007/250000 | hi_EHR,lo_ERS,s705 |
| s813 | R141 | linear | lo | EPR | 357543/1000000 | s640,lo_ERS,s702 |
| s814 | R142 | linear | lo | EQR | 3897/10000 | s716,lo_ERS,lo_QRS |
| s818 | R143 | linear | lo | FHR | 174573/500000 | lo_FHQ,lo_FQR,s676 |
| s821 | R145 | linear | lo | FPR | 194759/500000 | lo_FPQ,lo_FQR,s703 |
| s823 | R148 | bary_hi | lo | AES | 59823/200000 | s619,s744 |
| s835 | R154 | linear | lo | BES | 216669/1000000 | s756,s712 |
| s836 | R156 | bary_lo | hi | CHS | 293867/500000 | hi_CEH,s797 |
| s839 | R157 | bary_lo | lo | EPS | 6407/40000 | s618,s813 |
| s850 | R1 | sum | lo | AER | 552149/1000000 | s823,s693,lo_ERS |
| s862 | R14 | sum | lo | EPR | 90003/250000 | s839,lo_ERS,s702 |
| s864 | R15 | sumlo | lo | AHR | 8691/25000 | s729,s850,s735,s743,hi_ACE |
| s867 | R17 | sumlo | lo | AHP | 17671/125000 | s729,lo_APR,lo_ACP,s864,hi_ACR |
| s875 | R18 | sumlo | lo | BCP | 46829/500000 | s625,lo_BPQ,lo_BCQ,lo_BEP,s758 |
| s876 | R21 | sumlo | lo | BCS | 31001/200000 | s748,s712,lo_BCR,lo_BFS,hi_BFR |
| s879 | R24 | sumlo | lo | BPS | 109603/1000000 | lo_BEP,lo_BFS,s835,s616,hi_BEF |
| s883 | R28 | sumlo | lo | BFP | 159429/1000000 | s650,s879,lo_BFS,lo_BPQ,s769 |
| s885 | R29 | sumlo | lo | CEP | 123307/500000 | s619,lo_CHP,lo_ACP,s783,hi_ACH |
| s886 | R30 | sumlo | lo | ACE | 605579/1000000 | s729,s787,s735,s783,s797 |
| s887 | R30 | sumlo | lo | CHR | 219197/500000 | s729,s787,s735,s783,hi_ACE |
| s890 | R31 | sumlo | lo | ACF | 94599/250000 | s729,s791,s735,s669,s797 |
| s892 | R32 | sumlo | lo | CPR | 8703/62500 | lo_ACP,s887,s735,lo_CHP,hi_ACH |
| s896 | R36 | sumlo | lo | CFP | 25497/200000 | s669,s892,s791,lo_CHP,s797 |
| s905 | R46 | sumlo | lo | EHS | 415811/1000000 | s783,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s908 | R47 | sumlo | lo | EPS | 33959/200000 | s885,lo_ERS,lo_CES,s862,hi_CER |
| s915 | R50 | sumlo | lo | AFQ | 141619/1000000 | s890,lo_FQR,s746,lo_CFQ,hi_CFR |
| s920 | R55 | sumlo | lo | BFQ | 179573/1000000 | s748,lo_FQS,lo_BFS,lo_CFQ,s714 |
| s926 | R60 | sumlo | lo | AHR | 377197/1000000 | s729,lo_EHR,s743,s887,hi_CEH |
| s937 | R63 | diff | lo | CFH | 58831/250000 | s783,lo_FHS,s836,hi_EFH,s812 |
| s940 | R64 | sumlo | lo | CHQ | 30269/125000 | s783,lo_HQS,s798,lo_EHQ,s812 |
| s947 | R65 | sumlo | lo | HQR | 167691/1000000 | lo_EHQ,s705,lo_EHR,lo_HQS,s812 |
| s954 | R78 | sumlo | lo | FHQ | 2959/31250 | lo_CFQ,s947,s940,lo_FQR,s59 |
| s958 | R79 | sumlo | lo | AER | 582733/1000000 | s735,lo_EHR,s926,s787,s797 |
| s959 | R79 | sumlo | lo | CHR | 114939/250000 | s735,lo_EHR,s926,s787,hi_AER |
| s960 | R79 | diffhi | hi | ACR | 434223/1000000 | hi_AER,s797,s926,s787,lo_EHR |
| s965 | R80 | sumlo | lo | AFR | 533181/1000000 | s958,s818,s926,s809,hi_EHR |
| s966 | R81 | sumlo | lo | ARS | 35959/200000 | s958,lo_FRS,s965,lo_ERS,s802 |
| s968 | R83 | sumlo | lo | AQR | 166841/500000 | s958,s947,s926,s814,hi_EHR |
| s973 | R87 | sumlo | lo | CQR | 313341/1000000 | s787,s947,s959,s814,hi_EHR |
| s974 | R88 | sumlo | lo | CRS | 125959/1000000 | s787,s705,s959,lo_ERS,hi_EHR |
| s975 | R88 | diffhi | hi | HRS | 26707/125000 | s56,hi_EHR,s959,lo_ERS,s787 |
| s979 | R91 | sumlo | lo | HRS | 16807/100000 | lo_EHR,lo_FRS,lo_ERS,s818,s802 |
| s980 | R91 | diffhi | hi | FRS | 65457/500000 | s802,s975,lo_ERS,s818,lo_EHR |
| s981 | R92 | sumlo | lo | PRS | 120763/1000000 | s862,lo_FRS,lo_ERS,s821,s802 |
| s986 | R95 | sumlo | lo | AES | 32433/100000 | s739,lo_ERS,s966,lo_CES,s56 |
| s995 | R96 | sumlo | lo | BES | 2303/10000 | s876,lo_ERS,s712,lo_CES,s56 |
| s996 | R97 | sumlo | lo | BRS | 4401/20000 | s995,lo_FRS,lo_BFS,lo_ERS,s806 |
| s999 | R98 | diffhi | hi | CFS | 104271/200000 | s56,s806,lo_CES,lo_FRS,lo_ERS |
| s1001 | R99 | diffhi | hi | CHS | 580579/1000000 | s56,s812,lo_CES,s979,lo_ERS |
| s1003 | R101 | sumlo | lo | EQS | 110737/500000 | s905,lo_QRS,lo_ERS,lo_HQS,s975 |
| s1017 | R104 | linear | lo | ACH | 40921/125000 | lo_ACP,s867,lo_CHP |
| s1021 | R106 | linear | lo | ACR | 5082/15625 | lo_ACP,lo_APR,s892 |
| s1030 | R111 | linear | lo | AEH | 345731/1000000 | hi_AER,s926,lo_EHR |
| s1032 | R112 | linear | lo | AER | 4777/8000 | s986,s966,lo_ERS |
| s1034 | R113 | linear | lo | AFR | 568301/1000000 | s915,s968,lo_FQR |
| s1036 | R114 | linear | lo | BCF | 95143/250000 | s875,s883,s896 |
| s1048 | R116 | linear | lo | BCS | 166789/1000000 | lo_BCR,s996,s56 |
| s1062 | R121 | linear | hi | BQR | 623727/1000000 | s920,hi_BFR,lo_FQR |
| s1064 | R123 | linear | lo | BFR | 24473/31250 | lo_BFS,s996,s980 |
| s1077 | R125 | linear | lo | CEH | 164299/200000 | hi_CER,s959,lo_EHR |
| s1080 | R126 | linear | lo | CER | 311959/1000000 | lo_CES,s974,lo_ERS |
| s1085 | R128 | linear | lo | CFR | 499341/1000000 | lo_CFQ,s973,lo_FQR |
| s1087 | R129 | linear | hi | CQS | 67071/200000 | lo_CFQ,s999,lo_FQS |
| s1089 | R130 | linear | hi | CFR | 71827/125000 | s999,s56,lo_FRS |
| s1090 | R130 | linear | lo | CFS | 1394/3125 | s1085,s56,lo_FRS |
| s1094 | R132 | linear | hi | CHR | 55877/100000 | s1001,s56,s979 |
| s1095 | R132 | linear | lo | CHS | 96313/200000 | s959,s56,s979 |
| s1096 | R133 | linear | hi | CQR | 48577/125000 | s1087,s56,lo_QRS |
| s1104 | R136 | linear | hi | EFS | 382191/1000000 | hi_EFH,s812,lo_FHS |
| s1111 | R140 | linear | hi | EHS | 472301/1000000 | hi_EHR,lo_ERS,s979 |
| s1112 | R141 | linear | lo | EPR | 191779/500000 | s908,lo_ERS,s981 |
| s1113 | R142 | linear | lo | EQR | 203737/500000 | s1003,lo_ERS,lo_QRS |
| s1117 | R143 | linear | lo | FHR | 355379/1000000 | s954,lo_FQR,s947 |
| s1121 | R144 | linear | lo | FHS | 17543/62500 | s954,lo_FQS,lo_HQS |
| s1125 | R148 | bary_hi | lo | AES | 32801/100000 | s886,s1032 |
| s1133 | R154 | linear | lo | BES | 232103/1000000 | s1048,s996 |
| s1135 | R157 | bary_lo | lo | EPS | 34373/200000 | s885,s1112 |
| s1143 | R1 | sum | lo | AER | 120161/200000 | s1125,s966,lo_ERS |
| s1148 | R4 | sum | lo | BER | 545153/1000000 | s1133,s996,lo_ERS |
| s1158 | R14 | sum | lo | EPR | 96407/250000 | s1135,lo_ERS,s981 |
| s1161 | R15 | sumlo | lo | AHR | 390989/1000000 | s1017,s1143,s1021,s1030,hi_ACE |
| s1162 | R16 | sumlo | lo | AEP | 129189/500000 | s886,lo_APR,lo_ACP,s1143,s960 |
| s1164 | R17 | sumlo | lo | AHP | 76927/500000 | s1017,lo_APR,lo_ACP,s1161,s960 |
| s1176 | R23 | sumlo | lo | BPR | 89113/500000 | lo_BEP,s1064,s1148,s883,hi_BEF |
| s1180 | R27 | sumlo | lo | BFP | 2101/12500 | s920,s1176,s1064,lo_BPQ,s1062 |
| s1186 | R30 | sumlo | lo | ACE | 330471/500000 | s1017,s1080,s1021,s1077,s1094 |
| s1187 | R30 | sumlo | lo | CHR | 467107/1000000 | s1017,s1080,s1021,s1077,hi_ACE |
| s1191 | R31 | sumlo | lo | ACF | 429527/1000000 | s1017,s1085,s1021,s937,s1094 |
| s1193 | R32 | sumlo | lo | CPR | 146157/1000000 | lo_ACP,s1187,s1021,lo_CHP,hi_ACH |
| s1208 | R40 | sumlo | lo | CEQ | 411223/1000000 | s1186,s1113,lo_AEQ,s1080,hi_AER |
| s1212 | R41 | sumlo | lo | EPQ | 97279/500000 | s1162,s1113,lo_AEQ,s1158,hi_AER |
| s1216 | R46 | sumlo | lo | EHS | 106047/250000 | s1077,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s1224 | R50 | sumlo | lo | AFQ | 32299/200000 | s1191,lo_FQR,s1034,lo_CFQ,s1089 |
| s1230 | R55 | sumlo | lo | BFQ | 191683/1000000 | s1036,lo_FQS,lo_BFS,lo_CFQ,s999 |
| s1242 | R60 | sumlo | lo | AHR | 409319/1000000 | s1017,lo_EHR,s1030,s1187,hi_CEH |
| s1258 | R64 | sumlo | lo | CHQ | 256583/1000000 | s1077,lo_HQS,s1095,lo_EHQ,s1111 |
| s1263 | R65 | sumlo | lo | HQR | 42437/250000 | lo_EHQ,s979,lo_EHR,lo_HQS,s1111 |
| s1269 | R77 | sumlo | lo | EFQ | 195923/1000000 | s1208,lo_FQR,lo_CFQ,s1113,s1096 |
| s1272 | R78 | sumlo | lo | FHQ | 4081/40000 | lo_CFQ,s1263,s1258,lo_FQR,s1096 |
| s1279 | R79 | sumlo | lo | CHR | 487153/1000000 | s1021,lo_EHR,s1242,s1080,hi_AER |
| s1280 | R79 | diffhi | hi | ACR | 400113/1000000 | hi_AER,s1094,s1242,s1080,lo_EHR |
| s1290 | R82 | sumlo | lo | HPR | 306543/1000000 | s1242,s1158,lo_APR,lo_EHR,hi_AER |
| s1303 | R87 | sumlo | lo | CQR | 342877/1000000 | s1080,s1263,s1279,s1113,hi_EHR |
| s1304 | R88 | sumlo | lo | CRS | 133269/1000000 | s1080,s979,s1279,lo_ERS,hi_EHR |
| s1305 | R88 | diffhi | hi | HRS | 198611/1000000 | s56,hi_EHR,s1279,lo_ERS,s1080 |
| s1306 | R89 | sumlo | lo | EQR | 416377/1000000 | s1080,lo_QRS,s1303,lo_ERS,s56 |
| s1310 | R90 | sumlo | lo | HRS | 174793/1000000 | s1279,lo_QRS,s1304,s1263,s1096 |
| s1315 | R93 | sumlo | lo | PQR | 2633/10000 | s1158,s1263,s1306,s1290,hi_EHR |
| s1327 | R96 | sumlo | lo | BES | 245971/1000000 | s1048,lo_ERS,s996,lo_CES,s56 |
| s1328 | R97 | sumlo | lo | BRS | 114363/500000 | s1327,lo_FRS,lo_BFS,lo_ERS,s1104 |
| s1330 | R98 | sumlo | lo | EFS | 342773/1000000 | lo_CES,lo_FRS,s1090,lo_ERS,s56 |
| s1331 | R98 | diffhi | hi | CFS | 63509/125000 | s56,s1104,lo_CES,lo_FRS,lo_ERS |
| s1333 | R99 | diffhi | hi | CHS | 113599/200000 | s56,s1111,lo_CES,s1310,lo_ERS |
| s1335 | R101 | sumlo | lo | EQS | 121087/500000 | s1216,lo_QRS,lo_ERS,lo_HQS,s1305 |
| s1349 | R104 | linear | lo | ACH | 169927/500000 | lo_ACP,s1164,lo_CHP |
| s1351 | R105 | linear | lo | AHR | 213447/500000 | s1349,s1280,s1279 |
| s1355 | R106 | linear | lo | ACR | 332157/1000000 | lo_ACP,lo_APR,s1193 |
| s1362 | R109 | linear | lo | AEF | 225209/500000 | lo_AEQ,s1224,s1269 |
| s1365 | R111 | linear | lo | AEH | 98857/250000 | hi_AER,s1351,lo_EHR |
| s1394 | R117 | linear | hi | BEQ | 254347/500000 | hi_BEF,s1230,s1269 |
| s1398 | R118 | linear | lo | BEQ | 190279/500000 | lo_BEP,lo_BPQ,s1212 |
| s1399 | R118 | linear | hi | EPQ | 161347/500000 | lo_BEP,s1394,lo_BPQ |
| s1400 | R119 | linear | lo | BER | 567697/1000000 | s1327,s1328,lo_ERS |
| s1403 | R120 | linear | hi | FPR | 274997/500000 | s1180,hi_BFR,s1176 |
| s1406 | R121 | linear | hi | BQR | 611617/1000000 | s1230,hi_BFR,lo_FQR |
| s1414 | R124 | linear | lo | BQR | 267263/500000 | lo_BPQ,s1176,s1315 |
| s1415 | R124 | linear | hi | BPR | 255317/1000000 | lo_BPQ,s1406,s1315 |
| s1416 | R124 | linear | hi | PQR | 340391/1000000 | lo_BPQ,s1176,s1406 |
| s1425 | R125 | linear | lo | CEH | 212223/250000 | hi_CER,s1279,lo_EHR |
| s1429 | R126 | linear | lo | CER | 319269/1000000 | lo_CES,s1304,lo_ERS |
| s1431 | R127 | linear | lo | CFH | 66979/250000 | s1089,s1279,s1117 |
| s1436 | R128 | linear | lo | CFR | 528877/1000000 | lo_CFQ,s1303,lo_FQR |
| s1439 | R129 | linear | hi | CQS | 40259/125000 | lo_CFQ,s1331,lo_FQS |
| s1442 | R130 | linear | hi | CFR | 561333/1000000 | s1331,s56,lo_FRS |
| s1443 | R130 | linear | lo | CFS | 14863/31250 | s1436,s56,lo_FRS |
| s1447 | R131 | linear | lo | CHQ | 53657/200000 | s1279,s1096,s1263 |
| s1449 | R132 | linear | hi | CHR | 539463/1000000 | s1333,s56,s1310 |
| s1452 | R133 | linear | hi | CQR | 375333/1000000 | s1439,s56,lo_QRS |
| s1455 | R134 | linear | lo | EHQ | 22557/200000 | hi_EFH,s1269,s1272 |
| s1462 | R136 | linear | hi | EFS | 47097/125000 | hi_EFH,s1111,s1121 |
| s1465 | R137 | linear | lo | EFR | 528773/1000000 | s1330,lo_ERS,lo_FRS |
| s1472 | R139 | linear | lo | EHS | 447959/1000000 | s1455,s1335,lo_HQS |
| s1474 | R140 | linear | lo | EHR | 89469/125000 | s1472,lo_ERS,s1310 |
| s1475 | R140 | linear | hi | EHS | 232789/500000 | hi_EHR,lo_ERS,s1310 |
| s1479 | R142 | linear | lo | EQR | 214087/500000 | s1335,lo_ERS,lo_QRS |
| s1510 | R3 | sum | lo | BEF | 192041/250000 | s1398,s1230,s1269 |
| s1513 | R5 | sum | lo | BFR | 819209/1000000 | s1230,s1414,lo_FQR |
| s1529 | R13 | sub | hi | EHQ | 32601/250000 | s1475,s1335,lo_HQS |
| s1530 | R13 | sub | hi | EQS | 259793/1000000 | s1475,s1455,lo_HQS |
| s1564 | R26 | sumlo | lo | BEQ | 25093/62500 | lo_BEP,s1414,s1400,lo_BPQ,s1415 |
| s1565 | R26 | sumlo | lo | BPR | 201509/1000000 | lo_BEP,s1414,s1400,lo_BPQ,s1394 |
| s1568 | R27 | sumlo | lo | BFP | 187719/1000000 | s1230,s1565,s1513,lo_BPQ,s1406 |
| s1575 | R30 | sumlo | lo | ACE | 180953/250000 | s1349,s1429,s1355,s1425,s1449 |
| s1576 | R30 | sumlo | lo | CHR | 61733/125000 | s1349,s1429,s1355,s1425,hi_ACE |
| s1577 | R30 | diffhi | hi | ACH | 18111/40000 | hi_ACE,s1449,s1355,s1425,s1429 |
| s1591 | R32 | sumlo | lo | CPR | 2651/15625 | lo_ACP,s1576,s1355,lo_CHP,s1577 |
| s1608 | R36 | sumlo | lo | CFP | 43859/250000 | s1431,s1591,s1436,lo_CHP,s1449 |
| s1610 | R37 | sumlo | lo | CPQ | 71743/500000 | lo_CHP,s1303,s1447,s1591,s1449 |
| s1613 | R38 | sumlo | lo | CEF | 725791/1000000 | s1575,s1465,s1362,s1429,hi_AER |
| s1617 | R39 | sumlo | lo | CEH | 888143/1000000 | s1575,s1474,s1365,s1429,hi_AER |
| s1624 | R40 | sumlo | lo | CEQ | 234063/500000 | s1575,s1479,lo_AEQ,s1429,hi_AER |
| s1656 | R46 | sumlo | lo | EHS | 448931/1000000 | s1617,lo_ERS,lo_CES,s1474,hi_CER |
| s1664 | R48 | diffhi | hi | CEQ | 499987/1000000 | hi_CER,s1530,lo_CES,s1479,lo_ERS |
| s1668 | R49 | sumhi | hi | EFQ | 216597/1000000 | hi_EFH,s1530,s1462,s1529,s1656 |
| s1689 | R52 | sumlo | lo | BCF | 441821/1000000 | s1568,s1436,s1513,s1608,s1403 |
| s1693 | R53 | sumlo | lo | FPS | 82387/200000 | s1568,s1443,lo_BFS,s1608,hi_BCF |
| s1694 | R54 | sumlo | lo | BFQ | 208923/1000000 | s1689,lo_FQR,s1513,lo_CFQ,s1442 |
| s1700 | R56 | diffhi | hi | BFQ | 232041/1000000 | hi_BFR,s1668,s1510,lo_FQR,s1465 |
| s1705 | R57 | sumlo | lo | FQS | 93687/1000000 | s1694,lo_FRS,lo_BFS,lo_FQR,hi_BFR |
| s1711 | R58 | sumlo | lo | EFQ | 51963/250000 | s1613,lo_FQR,lo_CFQ,s1465,s1442 |
| s1720 | R59 | sumlo | lo | FPQ | 13469/125000 | s1608,s1705,lo_CFQ,s1693,s1331 |
| s1806 | R70 | sumlo | lo | BCQ | 62687/200000 | s1564,s1610,lo_BPQ,s1624,s1399 |
| s1809 | R71 | sumlo | lo | BQR | 108749/200000 | s1806,s1479,s1564,s1303,s1664 |
| s1811 | R72 | sumlo | lo | BFQ | 26549/125000 | s1806,lo_FQR,s1809,lo_CFQ,s1452 |
| s1820 | R73 | sumlo | lo | EPQ | 134871/500000 | s1564,s1720,lo_BPQ,s1711,s1700 |
| s1821 | R74 | sumlo | lo | BQR | 592247/1000000 | s1564,lo_FQR,s1811,s1479,s1668 |
| s1822 | R74 | sumlo | lo | EFQ | 209737/1000000 | s1564,lo_FQR,s1811,s1479,s1406 |
| s1824 | R74 | diffhi | hi | BFQ | 222191/1000000 | s1406,s1668,s1564,lo_FQR,s1479 |
| s1835 | R75 | diffhi | hi | FPQ | 1131/10000 | s1824,s1416,lo_BPQ,lo_FQR,s1821 |
| s1841 | R76 | sumlo | lo | CEQ | 487889/1000000 | lo_CFQ,s1820,s1610,s1822,s1835 |
| s1846 | R77 | sumlo | lo | CQR | 24583/62500 | s1841,lo_FQR,lo_CFQ,s1479,s1668 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | CQR | s1846 | s1452 |

The two cited bounds give 24583/62500 <= |CQR| <= 375333/1000000, with exact positive gap 3599/200000.

## Leaf A031

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ABS | ABS | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACQ | ACQ | lo | 279/1000 | cost:P |
| lo_ACR | ACR | lo | 279/1000 | cost:P |
| lo_ACS | ACS | lo | 279/1000 | cost:P |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_AFS | AFS | lo | 279/1000 | cost:Q |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCQ | BCQ | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 347/500 | cost:PQ |
| lo_BEP | BEP | lo | 93/1000 | cost: |
| lo_BEQ | BEQ | lo | 279/1000 | cost:P |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFH | BFH | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BFR | BFR | lo | 347/500 | cost:PQ |
| lo_BFS | BFS | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 93/1000 | cost: |
| lo_BQR | BQR | lo | 279/1000 | cost:P |
| lo_BQS | BQS | lo | 279/1000 | cost:P |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFH | CFH | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFP | EFP | lo | 279/1000 | cost:Q |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHQ | FHQ | lo | 93/1000 | cost: |
| lo_FHS | FHS | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 279/1000 | cost:Q |
| lo_FPS | FPS | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPR | HPR | lo | 279/1000 | cost:Q |
| lo_HPS | HPS | lo | 279/1000 | cost:Q |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_HQS | HQS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACE | ACE | hi | 7016953/8875000 | C043 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_ACR | ACR | hi | 445132103342243/1016178625000000 | C035 |
| hi_AER | AER | hi | 3716561/5123000 | C032 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCR | BCR | hi | 279/2000 | C047 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_CEF | CEF | hi | 13367777/15625000 | C041 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CFS | CFS | hi | 22417750204943/39359031250000 | C060 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ABS","ABP","APS","BPS"] | ["fan","ABS","P"] |
| R1 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R2 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R3 | fan | ["AFS","AFQ","AQS","FQS"] | ["fan","AFS","Q"] |
| R4 | fan | ["BCF","BCP","BFP","CFP"] | ["fan","BCF","P"] |
| R5 | fan | ["BEF","BEQ","BFQ","EFQ"] | ["fan","BEF","Q"] |
| R6 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R7 | fan | ["BFR","BFP","BPR","FPR"] | ["fan","BFR","P"] |
| R8 | fan | ["BFR","BFQ","BQR","FQR"] | ["fan","BFR","Q"] |
| R9 | fan | ["BFS","BFQ","BQS","FQS"] | ["fan","BFS","Q"] |
| R10 | fan | ["BHS","BHQ","BQS","HQS"] | ["fan","BHS","Q"] |
| R11 | fan | ["BQS","BPQ","BPS","PQS"] | ["fan","BQS","P"] |
| R12 | fan | ["CEF","CEQ","CFQ","EFQ"] | ["fan","CEF","Q"] |
| R13 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R14 | fan | ["CFR","CFQ","CQR","FQR"] | ["fan","CFR","Q"] |
| R15 | fan | ["CFS","CFQ","CQS","FQS"] | ["fan","CFS","Q"] |
| R16 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R17 | fan | ["EQR","EQS","ERS","QRS"] | ["fan","EQR","S"] |
| R18 | plu | ["ACR","AEP","ACE","APR","ACP","AER"] | ["plu","ACEPR"] |
| R19 | plu | ["ACE","AQR","ACQ","AER","ACR","AEQ"] | ["plu","ACEQR"] |
| R20 | plu | ["ACR","APQ","ACP","AQR","ACQ","APR"] | ["plu","ACPQR"] |
| R21 | plu | ["ABF","BHS","ABH","BFS","ABS","BFH"] | ["plu","BAFHS"] |
| R22 | plu | ["BCP","BEQ","BCE","BPQ","BCQ","BEP"] | ["plu","BCEPQ"] |
| R23 | plu | ["BCS","BFR","BCF","BRS","BCR","BFS"] | ["plu","BCFRS"] |
| R24 | plu | ["BEQ","BFP","BEF","BPQ","BEP","BFQ"] | ["plu","BEFPQ"] |
| R25 | plu | ["BEF","BPR","BEP","BFR","BER","BFP"] | ["plu","BEFPR"] |
| R26 | plu | ["BEF","BPS","BEP","BFS","BES","BFP"] | ["plu","BEFPS"] |
| R27 | plu | ["BEF","BQR","BEQ","BFR","BER","BFQ"] | ["plu","BEFQR"] |
| R28 | plu | ["BEQ","BPR","BEP","BQR","BER","BPQ"] | ["plu","BEPQR"] |
| R29 | plu | ["BFS","BHQ","BFH","BQS","BFQ","BHS"] | ["plu","BFHQS"] |
| R30 | plu | ["BFP","BQS","BFQ","BPS","BFS","BPQ"] | ["plu","BFPQS"] |
| R31 | plu | ["ACH","CPR","ACP","CHR","ACR","CHP"] | ["plu","CAHPR"] |
| R32 | plu | ["ACH","CPS","ACP","CHS","ACS","CHP"] | ["plu","CAHPS"] |
| R33 | plu | ["BCE","CQR","BCQ","CER","BCR","CEQ"] | ["plu","CBEQR"] |
| R34 | plu | ["BCF","CHQ","BCH","CFQ","BCQ","CFH"] | ["plu","CBFHQ"] |
| R35 | plu | ["CFP","CHR","CFH","CPR","CFR","CHP"] | ["plu","CFHPR"] |
| R36 | plu | ["AER","EPQ","AEP","EQR","AEQ","EPR"] | ["plu","EAPQR"] |
| R37 | plu | ["BER","CEF","BCE","EFR","BEF","CER"] | ["plu","EBCFR"] |
| R38 | plu | ["BER","CEP","BCE","EPR","BEP","CER"] | ["plu","EBCPR"] |
| R39 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R40 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R41 | plu | ["BEH","EFQ","BEF","EHQ","BEQ","EFH"] | ["plu","EBFHQ"] |
| R42 | plu | ["CER","EFS","CEF","ERS","CES","EFR"] | ["plu","ECFRS"] |
| R43 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R44 | plu | ["AFS","BFH","ABF","FHS","AFH","BFS"] | ["plu","FABHS"] |
| R45 | plu | ["BFQ","CFH","BCF","FHQ","BFH","CFQ"] | ["plu","FBCHQ"] |
| R46 | plu | ["BFQ","CFR","BCF","FQR","BFR","CFQ"] | ["plu","FBCQR"] |
| R47 | plu | ["BFQ","CFS","BCF","FQS","BFS","CFQ"] | ["plu","FBCQS"] |
| R48 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R49 | plu | ["BEF","FHS","BFH","EFS","BFS","EFH"] | ["plu","FBEHS"] |
| R50 | plu | ["BFR","EFQ","BEF","FQR","BFQ","EFR"] | ["plu","FBEQR"] |
| R51 | plu | ["EFQ","FHR","EFH","FQR","EFR","FHQ"] | ["plu","FEHQR"] |
| R52 | plu | ["BHR","HQS","BHQ","HRS","BHS","HQR"] | ["plu","HBQRS"] |
| R53 | plu | ["AHP","CPR","ACP","HPR","APR","CHP"] | ["plu","PACHR"] |
| R54 | plu | ["AHP","CPS","ACP","HPS","APS","CHP"] | ["plu","PACHS"] |
| R55 | plu | ["BFP","EPQ","BEP","FPQ","BPQ","EFP"] | ["plu","PBEFQ"] |
| R56 | plu | ["BFP","PQR","BPQ","FPR","BPR","FPQ"] | ["plu","PBFQR"] |
| R57 | plu | ["BFP","PQS","BPQ","FPS","BPS","FPQ"] | ["plu","PBFQS"] |
| R58 | plu | ["AQR","CEQ","ACQ","EQR","AEQ","CQR"] | ["plu","QACER"] |
| R59 | plu | ["AFQ","CQR","ACQ","FQR","AQR","CFQ"] | ["plu","QACFR"] |
| R60 | plu | ["AFQ","CQS","ACQ","FQS","AQS","CFQ"] | ["plu","QACFS"] |
| R61 | plu | ["BQR","CEQ","BCQ","EQR","BEQ","CQR"] | ["plu","QBCER"] |
| R62 | plu | ["BFQ","CHQ","BCQ","FHQ","BHQ","CFQ"] | ["plu","QBCFH"] |
| R63 | plu | ["BFQ","CQR","BCQ","FQR","BQR","CFQ"] | ["plu","QBCFR"] |
| R64 | plu | ["BFQ","CQS","BCQ","FQS","BQS","CFQ"] | ["plu","QBCFS"] |
| R65 | plu | ["BQR","EPQ","BEQ","PQR","BPQ","EQR"] | ["plu","QBEPR"] |
| R66 | plu | ["BHQ","FQR","BFQ","HQR","BQR","FHQ"] | ["plu","QBFHR"] |
| R67 | plu | ["CQR","EFQ","CEQ","FQR","CFQ","EQR"] | ["plu","QCEFR"] |
| R68 | plu | ["EHQ","FQR","EFQ","HQR","EQR","FHQ"] | ["plu","QEFHR"] |
| R69 | plu | ["EFQ","PQR","EPQ","FQR","EQR","FPQ"] | ["plu","QEFPR"] |
| R70 | plu | ["AER","CQR","ACR","EQR","AQR","CER"] | ["plu","RACEQ"] |
| R71 | plu | ["ARS","CQR","ACR","QRS","AQR","CRS"] | ["plu","RACQS"] |
| R72 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R73 | plu | ["AER","PQR","APR","EQR","AQR","EPR"] | ["plu","RAEPQ"] |
| R74 | plu | ["BER","CFR","BCR","EFR","BFR","CER"] | ["plu","RBCEF"] |
| R75 | plu | ["BER","CRS","BCR","ERS","BRS","CER"] | ["plu","RBCES"] |
| R76 | plu | ["BRS","EFR","BER","FRS","BFR","ERS"] | ["plu","RBEFS"] |
| R77 | plu | ["BHR","FQR","BFR","HQR","BQR","FHR"] | ["plu","RBFHQ"] |
| R78 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R79 | plu | ["EHR","FQR","EFR","HQR","EQR","FHR"] | ["plu","REFHQ"] |
| R80 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R81 | plu | ["ARS","CQS","ACS","QRS","AQS","CRS"] | ["plu","SACQR"] |
| R82 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R83 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R84 | plu | ["BRS","EFS","BES","FRS","BFS","ERS"] | ["plu","SBEFR"] |
| R85 | plu | ["BRS","EQS","BES","QRS","BQS","ERS"] | ["plu","SBEQR"] |
| R86 | plu | ["BHS","FQS","BFS","HQS","BQS","FHS"] | ["plu","SBFHQ"] |
| R87 | plu | ["BFS","HRS","BHS","FRS","BRS","FHS"] | ["plu","SBFHR"] |
| R88 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R89 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R90 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R91 | linear | [{"ACE":1,"AEP":-1,"ACP":-1,"CEP":-1},"0"] | ["affine_quad","ACEP",1] |
| R92 | linear | [{"ACP":-1,"APQ":-1,"ACQ":1,"CPQ":-1},"0"] | ["affine_quad","ACPQ",-1] |
| R93 | linear | [{"ACP":-1,"APR":-1,"ACR":1,"CPR":-1},"0"] | ["affine_quad","ACPR",-1] |
| R94 | linear | [{"ACP":-1,"APS":-1,"ACS":1,"CPS":-1},"0"] | ["affine_quad","ACPS",-1] |
| R95 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R96 | linear | [{"AFQ":-1,"AQR":-1,"AFR":1,"FQR":-1},"0"] | ["affine_quad","AFQR",1] |
| R97 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R98 | linear | [{"BCP":-1,"BPQ":-1,"BCQ":1,"CPQ":-1},"0"] | ["affine_quad","BCPQ",-1] |
| R99 | linear | [{"BCQ":-1,"BQR":1,"BCR":1,"CQR":-1},"0"] | ["affine_quad","BCQR",-1] |
| R100 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R101 | linear | [{"BEP":-1,"BPQ":-1,"BEQ":1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",-1] |
| R102 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R103 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R104 | linear | [{"BFQ":-1,"BQS":-1,"BFS":1,"FQS":-1},"0"] | ["affine_quad","BFQS",1] |
| R105 | linear | [{"BPQ":-1,"BQR":1,"BPR":-1,"PQR":-1},"0"] | ["affine_quad","BPQR",-1] |
| R106 | linear | [{"BPQ":-1,"BQS":1,"BPS":-1,"PQS":-1},"0"] | ["affine_quad","BPQS",-1] |
| R107 | linear | [{"CEF":1,"CFQ":-1,"CEQ":-1,"EFQ":-1},"0"] | ["affine_quad","CEFQ",1] |
| R108 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R109 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R110 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R111 | linear | [{"CHQ":-1,"CQR":-1,"CHR":1,"HQR":-1},"0"] | ["affine_quad","CHQR",1] |
| R112 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R113 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R114 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R115 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R116 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R117 | linear | [{"FPQ":-1,"FQR":-1,"FPR":1,"PQR":-1},"0"] | ["affine_quad","FPQR",-1] |
| R118 | linear | [{"FPQ":-1,"FQS":-1,"FPS":1,"PQS":-1},"0"] | ["affine_quad","FPQS",-1] |
| R119 | quad | ["ACE","CER","93/125"] | ["quad","ACRE","PS"] |
| R120 | quad | ["ACS","CRS","449/1000"] | ["quad","ACRS","P"] |
| R121 | bary | [["AQS",-1],[["ACQ",-1],["AEQ",-1],["AQR",-1]],11,[3,3,3]] | ["side_pair_weights","AQ","S","CER","3/11"] |
| R122 | bary | [["ARS",1],[["ACR",-1],["AER",1],null],11,[3,3,3]] | ["side_pair_weights","AR","S","CER","3/11"] |
| R123 | linear | [{"ACS":-3,"AES":5,"ARS":-3},"0"] | ["barycentric","AS","S","CER","upper"] |
| R124 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R125 | bary | [["BPS",-1],[["BCP",-1],["BEP",-1],["BPR",-1]],11,[3,3,3]] | ["side_pair_weights","BP","S","CER","3/11"] |
| R126 | bary | [["BQS",-1],[["BCQ",-1],["BEQ",-1],["BQR",-1]],11,[3,3,3]] | ["side_pair_weights","BQ","S","CER","3/11"] |
| R127 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R128 | bary | [["CFS",-1],[null,["CEF",-1],["CFR",-1]],11,[3,3,3]] | ["side_pair_weights","CF","S","CER","3/11"] |
| R129 | bary | [["EQS",1],[["CEQ",1],null,["EQR",1]],11,[3,3,3]] | ["side_pair_weights","EQ","S","CER","3/11"] |
| R130 | bary | [["FHS",1],[["CFH",1],["EFH",1],["FHR",1]],11,[3,3,3]] | ["side_pair_weights","FH","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s12 | R1 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s35 | R4 | sub | hi | BFP | 3263/10000 | hi_BCF,lo_BCP,lo_CFP |
| s41 | R5 | sub | hi | BEQ | 7103/10000 | hi_BEF,lo_BFQ,lo_EFQ |
| s50 | R9 | sub | hi | BFQ | 419573/1000000 | hi_BFS,lo_BQS,lo_FQS |
| s51 | R9 | sub | hi | BQS | 605573/1000000 | hi_BFS,lo_BFQ,lo_FQS |
| s59 | R12 | sub | hi | CEQ | 334769/500000 | hi_CEF,lo_CFQ,lo_EFQ |
| s63 | R13 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s66 | R14 | sub | hi | CQR | 201267/500000 | hi_CFR,lo_CFQ,lo_FQR |
| s77 | R16 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s95 | R21 | sumlo | lo | ABF | 107373/1000000 | lo_ABH,lo_BFS,lo_ABS,lo_BFH,hi_BHS |
| s100 | R23 | sumlo | lo | BCS | 50479/500000 | lo_BCF,lo_BRS,lo_BCR,lo_BFS,hi_BFR |
| s101 | R24 | sumlo | lo | BFP | 51521/500000 | lo_BEF,lo_BPQ,lo_BEP,lo_BFQ,s41 |
| s102 | R25 | sumlo | lo | BPR | 26021/250000 | lo_BEP,lo_BFR,lo_BER,s101,hi_BEF |
| s108 | R30 | sumlo | lo | BFP | 60431/500000 | lo_BFQ,lo_BPS,lo_BFS,lo_BPQ,s51 |
| s118 | R33 | sumlo | lo | BCE | 214863/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,s66 |
| s119 | R33 | sumlo | lo | CQR | 186137/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,hi_BCE |
| s120 | R34 | sumlo | lo | CHQ | 6331/62500 | lo_BCH,lo_CFQ,lo_BCQ,lo_CFH,hi_BCF |
| s126 | R37 | sumlo | lo | CEF | 389971/1000000 | s118,lo_EFR,lo_BEF,lo_CER,hi_BER |
| s130 | R39 | sumlo | lo | CEQ | 3311/15625 | s118,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s135 | R42 | sumlo | lo | EFS | 37449/200000 | s126,lo_ERS,lo_CES,lo_EFR,hi_CER |
| s140 | R44 | sumlo | lo | BFH | 102861/1000000 | s95,lo_FHS,lo_AFH,lo_BFS,hi_AFS |
| s144 | R47 | sumlo | lo | BFQ | 19859/125000 | lo_BCF,lo_FQS,lo_BFS,lo_CFQ,hi_CFS |
| s146 | R48 | sumlo | lo | FHR | 104027/1000000 | s140,lo_EFR,lo_BFR,lo_EFH,hi_BEF |
| s147 | R49 | sumlo | lo | FHS | 93497/1000000 | s140,s135,lo_BFS,lo_EFH,hi_BEF |
| s149 | R50 | sumlo | lo | EFQ | 121463/1000000 | lo_BEF,lo_FQR,s144,lo_EFR,hi_BFR |
| s159 | R53 | sumlo | lo | CPR | 27183/250000 | lo_ACP,lo_HPR,lo_APR,lo_CHP,s12 |
| s160 | R54 | sumlo | lo | CPS | 27183/250000 | lo_ACP,lo_HPS,lo_APS,lo_CHP,s12 |
| s161 | R55 | sumlo | lo | EPQ | 4241/40000 | lo_BEP,lo_FPQ,lo_BPQ,lo_EFP,s35 |
| s162 | R56 | sumlo | lo | PQR | 1706/15625 | lo_BPQ,lo_FPR,s102,lo_FPQ,s35 |
| s163 | R57 | sumlo | lo | PQS | 4241/40000 | lo_BPQ,lo_FPS,lo_BPS,lo_FPQ,s35 |
| s164 | R58 | sumlo | lo | AQR | 28423/200000 | lo_ACQ,lo_EQR,lo_AEQ,s119,s59 |
| s165 | R59 | sumlo | lo | AFQ | 24323/250000 | lo_ACQ,lo_FQR,s164,lo_CFQ,s66 |
| s168 | R64 | sumlo | lo | CQS | 61841/500000 | lo_BCQ,lo_FQS,lo_BQS,lo_CFQ,s50 |
| s173 | R71 | sumlo | lo | ARS | 24323/250000 | lo_ACR,lo_QRS,s164,lo_CRS,s66 |
| s174 | R74 | sumlo | lo | BER | 93271/250000 | lo_BCR,lo_EFR,lo_BFR,lo_CER,hi_CFR |
| s177 | R75 | diffhi | hi | BRS | 2479/8000 | hi_BER,s63,lo_BCR,lo_ERS,lo_CER |
| s179 | R76 | sumlo | lo | BRS | 75393/500000 | s174,lo_FRS,lo_BFR,lo_ERS,hi_EFR |
| s182 | R77 | sumlo | lo | FQR | 100913/1000000 | lo_BFR,lo_HQR,lo_BQR,s146,hi_BHR |
| s188 | R80 | sumlo | lo | AES | 47853/200000 | lo_ACS,lo_ERS,s173,lo_CES,s63 |
| s189 | R82 | sumlo | lo | ARS | 20417/200000 | s188,lo_FRS,lo_AFS,lo_ERS,s77 |
| s191 | R83 | sumlo | lo | BES | 160071/1000000 | s100,lo_ERS,s179,lo_CES,s63 |
| s192 | R84 | sumlo | lo | BRS | 168231/1000000 | s191,lo_FRS,lo_BFS,lo_ERS,s77 |
| s193 | R84 | sumlo | lo | EFS | 64081/250000 | s191,lo_FRS,lo_BFS,lo_ERS,s177 |
| s195 | R86 | sumlo | lo | FQS | 53769/500000 | lo_BFS,lo_HQS,lo_BQS,s147,hi_BHS |
| s197 | R87 | sumlo | lo | HRS | 101407/1000000 | lo_BHS,lo_FRS,s192,s147,hi_BFS |
| s198 | R89 | sumlo | lo | EPS | 128271/1000000 | lo_CES,lo_PRS,s160,lo_ERS,s63 |
| s199 | R90 | sumlo | lo | EQS | 137777/1000000 | lo_CES,lo_QRS,s168,lo_ERS,s63 |
| s209 | R93 | linear | lo | ACR | 73683/250000 | lo_ACP,lo_APR,s159 |
| s226 | R97 | linear | lo | BCF | 153431/500000 | lo_BCP,s108,lo_CFP |
| s231 | R99 | linear | lo | BQR | 325637/1000000 | lo_BCQ,hi_BCR,s119 |
| s236 | R100 | linear | hi | BEQ | 123193/200000 | hi_BEF,s144,s149 |
| s240 | R101 | linear | lo | BEQ | 11681/40000 | lo_BEP,lo_BPQ,s161 |
| s242 | R102 | linear | lo | BER | 210651/500000 | s191,s192,lo_ERS |
| s248 | R104 | linear | hi | BQS | 525163/1000000 | s144,hi_BFS,s195 |
| s260 | R109 | linear | hi | CQR | 394621/1000000 | lo_CFQ,hi_CFR,s182 |
| s261 | R109 | linear | lo | CFR | 7601/20000 | lo_CFQ,s119,s182 |
| s268 | R111 | linear | lo | CHR | 380433/1000000 | s120,s119,lo_HQR |
| s272 | R112 | linear | lo | CHS | 335579/1000000 | s268,s63,s197 |
| s277 | R114 | linear | lo | EFR | 110581/250000 | s193,lo_ERS,lo_FRS |
| s281 | R115 | linear | lo | EPR | 314271/1000000 | s198,lo_ERS,lo_PRS |
| s282 | R116 | linear | lo | EQR | 323777/1000000 | s199,lo_ERS,lo_QRS |
| s283 | R117 | linear | lo | FPR | 303097/1000000 | lo_FPQ,s182,s162 |
| s284 | R118 | linear | lo | FPS | 306563/1000000 | lo_FPQ,s195,s163 |
| s288 | R119 | quad | lo | ACE | 411739/1000000 | hi_CER |
| s289 | R120 | quad | lo | ACS | 302739/1000000 | s63 |
| s294 | R121 | bary_hi | lo | AQS | 78561/500000 | lo_ACQ,lo_AEQ,s164 |
| s295 | R122 | bary_hi | hi | ARS | 7793/31250 | s209,hi_AER |
| s296 | R123 | linear | lo | AES | 121447/500000 | s289,s189 |
| s298 | R124 | bary_hi | lo | BES | 173499/1000000 | s118,s242 |
| s299 | R125 | bary_hi | lo | BPS | 48011/500000 | lo_BCP,lo_BEP,s102 |
| s300 | R126 | bary_hi | lo | BQS | 295271/1000000 | lo_BCQ,s240,s231 |
| s301 | R127 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s303 | R128 | bary_lo | hi | CFS | 54939/100000 | hi_CEF,hi_CFR |
| s306 | R129 | bary_lo | lo | EQS | 73047/500000 | s130,s282 |
| s307 | R130 | bary_lo | lo | FHS | 96007/1000000 | lo_CFH,lo_EFH,s146 |
| s319 | R0 | sum | lo | ABS | 141011/500000 | lo_ABP,lo_APS,s299 |
| s322 | R2 | sum | lo | AER | 437979/1000000 | s296,s189,lo_ERS |
| s323 | R3 | sum | lo | AFS | 11311/31250 | s165,s294,s195 |
| s329 | R6 | sum | lo | BER | 43473/100000 | s298,s192,lo_ERS |
| s330 | R9 | sub | hi | BFQ | 97191/250000 | hi_BFS,s300,s195 |
| s334 | R15 | sub | hi | CQS | 87213/250000 | s303,lo_CFQ,s195 |
| s336 | R17 | sum | lo | EQR | 166047/500000 | s306,lo_ERS,lo_QRS |
| s337 | R18 | sumlo | lo | AEP | 451/2500 | s288,lo_APR,lo_ACP,s322,hi_ACR |
| s338 | R19 | sumlo | lo | AQR | 189221/1000000 | lo_ACQ,s322,s209,lo_AEQ,hi_ACE |
| s341 | R20 | sumlo | lo | APQ | 49703/500000 | lo_ACP,s338,lo_ACQ,lo_APR,hi_ACR |
| s343 | R21 | sumlo | lo | ABF | 111007/1000000 | lo_ABH,lo_BFS,s319,s140,hi_BHS |
| s353 | R24 | sumlo | lo | BFP | 2012/15625 | lo_BEF,lo_BPQ,lo_BEP,s144,s236 |
| s355 | R25 | sumlo | lo | BPR | 26893/200000 | lo_BEP,lo_BFR,s329,s353,hi_BEF |
| s356 | R26 | sumlo | lo | BPS | 19387/200000 | lo_BEP,lo_BFS,s298,s353,hi_BEF |
| s360 | R29 | sumlo | lo | BHQ | 177657/1000000 | s140,s300,s144,lo_BHS,hi_BFS |
| s362 | R30 | sumlo | lo | BFP | 152223/1000000 | s144,s356,lo_BFS,lo_BPQ,s248 |
| s368 | R31 | sumlo | lo | CPR | 6227/50000 | lo_ACP,s268,s209,lo_CHP,hi_ACH |
| s369 | R32 | sumlo | lo | CPS | 7359/62500 | lo_ACP,s272,s289,lo_CHP,hi_ACH |
| s370 | R33 | sumlo | lo | BCE | 123597/500000 | lo_BCQ,lo_CER,lo_BCR,s130,s260 |
| s371 | R33 | sumlo | lo | CQR | 13121/62500 | lo_BCQ,lo_CER,lo_BCR,s130,hi_BCE |
| s375 | R36 | sumlo | lo | EPQ | 30717/250000 | s337,s336,lo_AEQ,s281,hi_AER |
| s378 | R38 | sumlo | lo | CEP | 159377/1000000 | s370,s281,lo_BEP,lo_CER,hi_BER |
| s379 | R39 | sumlo | lo | CEQ | 5031/20000 | s370,s336,s240,lo_CER,hi_BER |
| s380 | R40 | sumlo | lo | BES | 190871/1000000 | s370,lo_ERS,s329,lo_CES,hi_CER |
| s383 | R44 | sumlo | lo | BFH | 25947/250000 | s343,s307,lo_AFH,lo_BFS,hi_AFS |
| s388 | R45 | sumlo | lo | CFH | 19647/200000 | s226,lo_FHQ,s383,lo_CFQ,s330 |
| s391 | R47 | sumlo | lo | BFQ | 22193/125000 | s226,s195,lo_BFS,lo_CFQ,s303 |
| s394 | R48 | sumlo | lo | FHR | 30807/250000 | s383,s277,lo_BFR,lo_EFH,hi_BEF |
| s395 | R49 | sumlo | lo | FHS | 10169/100000 | s383,s193,lo_BFS,lo_EFH,hi_BEF |
| s404 | R56 | sumlo | lo | PQR | 124711/1000000 | lo_BPQ,s283,s355,lo_FPQ,s35 |
| s405 | R57 | sumlo | lo | PQS | 57501/500000 | lo_BPQ,s284,s356,lo_FPQ,s35 |
| s406 | R60 | sumlo | lo | AFQ | 31973/250000 | lo_ACQ,s195,s294,lo_CFQ,s334 |
| s409 | R62 | sumlo | lo | CHQ | 109241/1000000 | lo_BCQ,lo_FHQ,s360,lo_CFQ,s330 |
| s414 | R71 | sumlo | lo | ARS | 28513/250000 | s209,lo_QRS,s338,lo_CRS,s260 |
| s415 | R77 | sumlo | lo | FQR | 112889/1000000 | lo_BFR,lo_HQR,s231,s394,hi_BHR |
| s416 | R78 | sumlo | lo | CRS | 11641/125000 | lo_CER,lo_FRS,s261,lo_ERS,hi_EFR |
| s418 | R80 | sumlo | lo | AES | 33127/125000 | s289,lo_ERS,s414,lo_CES,s63 |
| s420 | R81 | sumlo | lo | CQS | 21447/125000 | s289,lo_QRS,s294,s416,s295 |
| s422 | R82 | sumlo | lo | ARS | 123497/1000000 | s418,lo_FRS,s323,lo_ERS,s77 |
| s423 | R84 | sumlo | lo | BRS | 174297/1000000 | s380,lo_FRS,lo_BFS,lo_ERS,s77 |
| s424 | R84 | sumlo | lo | EFS | 60913/200000 | s380,lo_FRS,lo_BFS,lo_ERS,s301 |
| s427 | R86 | sumlo | lo | FQS | 112213/1000000 | lo_BFS,lo_HQS,s300,s395,hi_BHS |
| s430 | R89 | sumlo | lo | EPS | 134001/1000000 | lo_CES,lo_PRS,s369,lo_ERS,s63 |
| s431 | R90 | sumlo | lo | EQS | 16823/100000 | lo_CES,lo_QRS,s420,lo_ERS,s63 |
| s436 | R91 | linear | lo | ACE | 432777/1000000 | lo_ACP,s337,s378 |
| s443 | R92 | linear | lo | ACQ | 142703/500000 | lo_ACP,s341,lo_CPQ |
| s446 | R93 | linear | lo | ACR | 15527/50000 | lo_ACP,lo_APR,s368 |
| s447 | R94 | linear | lo | ACS | 4746/15625 | lo_ACP,lo_APS,s369 |
| s451 | R95 | linear | lo | AER | 481513/1000000 | s418,s422,lo_ERS |
| s454 | R96 | linear | lo | AFR | 215001/500000 | s406,s338,s415 |
| s460 | R97 | linear | lo | BCF | 338223/1000000 | lo_BCP,s362,lo_CFP |
| s473 | R101 | linear | lo | BEQ | 77217/250000 | lo_BEP,lo_BPQ,s375 |
| s475 | R102 | linear | lo | BER | 57271/125000 | s380,s423,lo_ERS |
| s481 | R104 | linear | hi | BQS | 62727/125000 | s391,hi_BFS,s427 |
| s484 | R105 | linear | lo | BQR | 22011/62500 | lo_BPQ,s355,s404 |
| s492 | R108 | linear | lo | CER | 34891/125000 | lo_CES,s416,lo_ERS |
| s495 | R109 | linear | hi | CQR | 76529/200000 | lo_CFQ,hi_CFR,s415 |
| s496 | R109 | linear | lo | CFR | 16633/40000 | lo_CFQ,s371,s415 |
| s501 | R111 | linear | lo | CHR | 412177/1000000 | s409,s371,lo_HQR |
| s507 | R114 | linear | lo | EFR | 98113/200000 | s424,lo_ERS,lo_FRS |
| s511 | R115 | linear | lo | EPR | 320001/1000000 | s430,lo_ERS,lo_PRS |
| s512 | R116 | linear | lo | EQR | 35423/100000 | s431,lo_ERS,lo_QRS |
| s514 | R118 | linear | lo | FPS | 64043/200000 | lo_FPQ,s427,s405 |
| s519 | R121 | bary_hi | lo | AQS | 42929/250000 | s443,lo_AEQ,s338 |
| s521 | R124 | bary_hi | lo | BES | 192371/1000000 | s370,s475 |
| s522 | R125 | bary_hi | lo | BPS | 26077/250000 | lo_BCP,lo_BEP,s355 |
| s523 | R126 | bary_hi | lo | BQS | 153551/500000 | lo_BCQ,s473,s484 |
| s526 | R130 | bary_lo | lo | FHS | 102671/1000000 | s388,lo_EFH,s394 |
| s535 | R0 | sum | lo | ABS | 72577/250000 | lo_ABP,lo_APS,s522 |
| s537 | R3 | sum | lo | AFS | 411821/1000000 | s406,s519,s427 |
| s541 | R5 | sub | hi | EFQ | 12809/31250 | hi_BEF,s473,s391 |
| s543 | R6 | sum | lo | BER | 114917/250000 | s521,s423,lo_ERS |
| s544 | R9 | sub | hi | BFQ | 186129/500000 | hi_BFS,s523,s427 |
| s546 | R11 | sum | lo | BQS | 31231/100000 | lo_BPQ,s522,s405 |
| s549 | R18 | sumlo | lo | AEP | 19411/100000 | s436,lo_APR,lo_ACP,s451,hi_ACR |
| s550 | R19 | sumlo | lo | AQR | 210343/1000000 | s443,s451,s446,lo_AEQ,hi_ACE |
| s553 | R20 | sumlo | lo | APQ | 421/4000 | lo_ACP,s550,s443,lo_APR,hi_ACR |
| s555 | R21 | sumlo | lo | ABF | 112337/1000000 | lo_ABH,lo_BFS,s535,s383,hi_BHS |
| s560 | R25 | sumlo | lo | BPR | 150077/1000000 | lo_BEP,lo_BFR,s543,s362,hi_BEF |
| s561 | R26 | sumlo | lo | BPS | 2617/25000 | lo_BEP,lo_BFS,s521,s362,hi_BEF |
| s563 | R29 | sumlo | lo | BHQ | 3072/15625 | s383,s546,s391,lo_BHS,hi_BFS |
| s564 | R30 | sumlo | lo | BFP | 41413/250000 | s391,s561,lo_BFS,lo_BPQ,s481 |
| s569 | R31 | sumlo | lo | CPR | 2083/15625 | lo_ACP,s501,s446,lo_CHP,hi_ACH |
| s571 | R33 | sumlo | lo | BCE | 13233/50000 | lo_BCQ,s492,lo_BCR,s379,s495 |
| s575 | R36 | sumlo | lo | EPQ | 135801/1000000 | s549,s512,lo_AEQ,s511,hi_AER |
| s576 | R39 | sumlo | lo | CEQ | 276767/1000000 | s571,s512,s473,s492,hi_BER |
| s577 | R40 | sumlo | lo | BES | 10137/50000 | s571,lo_ERS,s543,lo_CES,hi_CER |
| s580 | R44 | sumlo | lo | BFH | 52499/500000 | s555,s526,lo_AFH,lo_BFS,hi_AFS |
| s585 | R45 | sumlo | lo | CFH | 13841/125000 | s460,lo_FHQ,s580,lo_CFQ,s544 |
| s586 | R47 | sumlo | lo | BFQ | 186561/1000000 | s460,s427,lo_BFS,lo_CFQ,s303 |
| s589 | R49 | sumlo | lo | FHS | 107687/1000000 | s580,s424,lo_BFS,lo_EFH,hi_BEF |
| s590 | R50 | sumlo | lo | EFQ | 94759/500000 | lo_BEF,s415,s586,s507,hi_BFR |
| s592 | R51 | sumlo | lo | FHR | 68459/500000 | lo_EFH,s415,s507,lo_FHQ,s541 |
| s598 | R57 | sumlo | lo | PQS | 1211/10000 | lo_BPQ,s514,s561,lo_FPQ,s35 |
| s602 | R62 | sumlo | lo | CHQ | 118819/1000000 | lo_BCQ,lo_FHQ,s563,lo_CFQ,s544 |
| s607 | R70 | sumlo | lo | CQR | 232561/1000000 | s446,s512,s550,s492,hi_AER |
| s609 | R72 | sumlo | lo | ARS | 128803/1000000 | s451,lo_FRS,s454,lo_ERS,hi_EFR |
| s610 | R73 | sumlo | lo | PQR | 138191/1000000 | lo_APR,s512,s550,s511,hi_AER |
| s612 | R78 | sumlo | lo | CRS | 98201/1000000 | s492,lo_FRS,s496,lo_ERS,hi_EFR |
| s613 | R79 | sumlo | lo | FQR | 128343/1000000 | s507,lo_HQR,s512,s592,hi_EHR |
| s616 | R80 | sumlo | lo | AES | 137517/500000 | s447,lo_ERS,s609,lo_CES,s63 |
| s620 | R82 | sumlo | lo | ARS | 135293/1000000 | s616,lo_FRS,s537,lo_ERS,s77 |
| s621 | R84 | sumlo | lo | BRS | 35327/200000 | s577,lo_FRS,lo_BFS,lo_ERS,s77 |
| s622 | R84 | sumlo | lo | EFS | 6173/20000 | s577,lo_FRS,lo_BFS,lo_ERS,s301 |
| s624 | R85 | sumlo | lo | EQS | 44319/250000 | s577,lo_QRS,s546,lo_ERS,s301 |
| s625 | R86 | sumlo | lo | FQS | 29123/250000 | lo_BFS,lo_HQS,s546,s589,hi_BHS |
| s642 | R92 | linear | lo | ACQ | 233/800 | lo_ACP,s553,lo_CPQ |
| s645 | R93 | linear | lo | ACR | 19957/62500 | lo_ACP,lo_APR,s569 |
| s650 | R95 | linear | lo | AER | 503327/1000000 | s616,s620,lo_ERS |
| s659 | R97 | linear | lo | BCF | 87913/250000 | lo_BCP,s564,lo_CFP |
| s667 | R100 | linear | hi | BEQ | 520221/1000000 | hi_BEF,s586,s590 |
| s672 | R101 | linear | lo | BEQ | 321801/1000000 | lo_BEP,lo_BPQ,s575 |
| s674 | R102 | linear | lo | BER | 3779/8000 | s577,s621,lo_ERS |
| s678 | R103 | linear | hi | BQR | 145349/250000 | s586,hi_BFR,s613 |
| s680 | R104 | linear | hi | BQS | 12213/25000 | s586,hi_BFS,s625 |
| s684 | R105 | linear | lo | BQR | 95317/250000 | lo_BPQ,s560,s610 |
| s687 | R106 | linear | lo | BQS | 15939/50000 | lo_BPQ,s561,s598 |
| s695 | R108 | linear | lo | CER | 284201/1000000 | lo_CES,s612,lo_ERS |
| s699 | R109 | linear | hi | CQR | 367191/1000000 | lo_CFQ,hi_CFR,s613 |
| s700 | R109 | linear | lo | CFR | 28369/62500 | lo_CFQ,s607,s613 |
| s704 | R110 | linear | lo | CFS | 400643/1000000 | s700,s63,lo_FRS |
| s706 | R111 | linear | lo | CHR | 22219/50000 | s602,s607,lo_HQR |
| s712 | R113 | linear | lo | EFP | 418319/1000000 | s590,s575,lo_FPQ |
| s713 | R114 | linear | lo | EFR | 9893/20000 | s622,lo_ERS,lo_FRS |
| s718 | R116 | linear | lo | EQR | 90819/250000 | s624,lo_ERS,lo_QRS |
| s719 | R117 | linear | lo | FPR | 179767/500000 | lo_FPQ,s613,s610 |
| s720 | R118 | linear | lo | FPS | 10331/31250 | lo_FPQ,s625,s598 |
| s727 | R125 | bary_hi | lo | BPS | 54283/500000 | lo_BCP,lo_BEP,s560 |
| s730 | R130 | bary_lo | lo | FHS | 27453/250000 | s585,lo_EFH,s592 |
| s738 | R0 | sum | lo | ABS | 147283/500000 | lo_ABP,lo_APS,s727 |
| s744 | R5 | sum | lo | BEF | 17447/25000 | s672,s586,s590 |
| s745 | R5 | sub | hi | EFQ | 193969/500000 | hi_BEF,s672,s586 |
| s748 | R8 | sum | lo | BFR | 174043/250000 | s586,s684,s613 |
| s749 | R9 | sub | hi | BFQ | 356301/1000000 | hi_BFS,s687,s625 |
| s751 | R11 | sum | lo | BQS | 161333/500000 | lo_BPQ,s727,s598 |
| s754 | R19 | sumlo | lo | AQR | 22297/100000 | s642,s650,s645,lo_AEQ,hi_ACE |
| s757 | R20 | sumlo | lo | APQ | 27293/250000 | lo_ACP,s754,s642,lo_APR,hi_ACR |
| s761 | R21 | sumlo | lo | ABF | 22657/200000 | lo_ABH,lo_BFS,s738,s580,hi_BHS |
| s764 | R22 | sumlo | lo | BCP | 9719/100000 | s571,lo_BPQ,lo_BCQ,lo_BEP,s667 |
| s767 | R25 | sumlo | lo | BPR | 159537/1000000 | lo_BEP,s748,s674,s564,hi_BEF |
| s768 | R26 | sumlo | lo | BPS | 109479/1000000 | lo_BEP,lo_BFS,s577,s564,hi_BEF |
| s769 | R29 | sumlo | lo | BHQ | 51591/250000 | s580,s751,s586,lo_BHS,hi_BFS |
| s770 | R30 | sumlo | lo | BFP | 86963/500000 | s586,s768,lo_BFS,lo_BPQ,s680 |
| s776 | R31 | sumlo | lo | CPR | 14087/100000 | lo_ACP,s706,s645,lo_CHP,hi_ACH |
| s778 | R33 | sumlo | lo | BCE | 7151/25000 | lo_BCQ,s695,lo_BCR,s576,s699 |
| s781 | R35 | sumlo | lo | CFP | 93331/1000000 | s585,s776,s700,lo_CHP,hi_CHR |
| s784 | R39 | sumlo | lo | CEQ | 37557/125000 | s778,s718,s672,s695,hi_BER |
| s785 | R40 | sumlo | lo | BES | 212281/1000000 | s778,lo_ERS,s674,lo_CES,hi_CER |
| s787 | R43 | sumlo | lo | EQS | 185779/1000000 | s784,lo_ERS,lo_CES,s718,hi_CER |
| s788 | R44 | sumlo | lo | BFH | 106249/1000000 | s761,s730,lo_AFH,lo_BFS,hi_AFS |
| s792 | R45 | sumlo | lo | CFH | 119519/1000000 | s659,lo_FHQ,s788,lo_CFQ,s749 |
| s794 | R47 | sumlo | lo | BFQ | 192043/1000000 | s659,s625,lo_BFS,lo_CFQ,s303 |
| s796 | R50 | sumlo | lo | EFQ | 41183/200000 | s744,s613,s794,s713,hi_BFR |
| s800 | R51 | sumlo | lo | FHR | 149349/1000000 | lo_EFH,s613,s713,lo_FHQ,s745 |
| s808 | R55 | sumlo | lo | EPQ | 36433/250000 | lo_BEP,lo_FPQ,lo_BPQ,s712,s35 |
| s809 | R56 | sumlo | lo | PQR | 73971/500000 | lo_BPQ,s719,s767,lo_FPQ,s35 |
| s810 | R57 | sumlo | lo | PQS | 62713/500000 | lo_BPQ,s720,s768,lo_FPQ,s35 |
| s813 | R61 | sumlo | lo | CEQ | 6061/20000 | lo_BCQ,s718,s672,s607,s678 |
| s814 | R62 | sumlo | lo | CHQ | 126687/1000000 | lo_BCQ,lo_FHQ,s769,lo_CFQ,s749 |
| s815 | R63 | sumlo | lo | BFQ | 194083/1000000 | lo_BCQ,s613,s684,lo_CFQ,s699 |
| s820 | R70 | sumlo | lo | CQR | 247243/1000000 | s645,s718,s754,s695,hi_AER |
| s826 | R78 | sumlo | lo | CRS | 104299/1000000 | s695,lo_FRS,s700,lo_ERS,hi_EFR |
| s827 | R79 | sumlo | lo | FQR | 136707/1000000 | s713,lo_HQR,s718,s800,hi_EHR |
| s835 | R84 | sumlo | lo | BRS | 35703/200000 | s785,lo_FRS,lo_BFS,lo_ERS,s77 |
| s839 | R87 | sumlo | lo | HRS | 106301/1000000 | lo_BHS,lo_FRS,s835,s730,hi_BFS |
| s840 | R88 | sumlo | lo | EFS | 156941/500000 | lo_CES,lo_FRS,s704,lo_ERS,s63 |
| s858 | R92 | linear | lo | ACQ | 73793/250000 | lo_ACP,s757,lo_CPQ |
| s861 | R93 | linear | lo | ACR | 32687/100000 | lo_ACP,lo_APR,s776 |
| s879 | R97 | linear | lo | BCF | 364447/1000000 | s764,s770,s781 |
| s880 | R97 | linear | hi | BFP | 321779/1000000 | hi_BCF,s764,s781 |
| s887 | R98 | linear | lo | BCQ | 28319/100000 | s764,lo_BPQ,lo_CPQ |
| s893 | R100 | linear | hi | BEQ | 248151/500000 | hi_BEF,s815,s796 |
| s899 | R101 | linear | lo | BEQ | 82933/250000 | lo_BEP,lo_BPQ,s808 |
| s901 | R102 | linear | lo | BER | 120949/250000 | s785,s835,lo_ERS |
| s905 | R103 | linear | hi | BQR | 56551/100000 | s815,hi_BFR,s827 |
| s913 | R105 | linear | lo | BQR | 400479/1000000 | lo_BPQ,s767,s809 |
| s920 | R107 | linear | hi | CEQ | 556623/1000000 | hi_CEF,lo_CFQ,s796 |
| s923 | R108 | linear | lo | CER | 290299/1000000 | lo_CES,s826,lo_ERS |
| s927 | R109 | linear | hi | CQR | 358827/1000000 | lo_CFQ,hi_CFR,s827 |
| s928 | R109 | linear | lo | CFR | 9539/20000 | lo_CFQ,s820,s827 |
| s932 | R110 | linear | lo | CFS | 423689/1000000 | s928,s63,lo_FRS |
| s934 | R111 | linear | lo | CHR | 46693/100000 | s814,s820,lo_HQR |
| s938 | R113 | linear | lo | EFP | 444647/1000000 | s796,s808,lo_FPQ |
| s939 | R114 | linear | lo | EFR | 249941/500000 | s840,lo_ERS,lo_FRS |
| s944 | R116 | linear | lo | EQR | 371779/1000000 | s787,lo_ERS,lo_QRS |
| s945 | R117 | linear | lo | FPR | 377649/1000000 | lo_FPQ,s827,s809 |
| s953 | R125 | bary_hi | lo | BPS | 112289/1000000 | s764,lo_BEP,s767 |
| s970 | R5 | sum | lo | BEF | 73173/100000 | s899,s815,s796 |
| s971 | R5 | sub | hi | EFQ | 74097/200000 | hi_BEF,s899,s815 |
| s974 | R8 | sum | lo | BFR | 731269/1000000 | s815,s913,s827 |
| s978 | R11 | sum | lo | BQS | 66143/200000 | lo_BPQ,s953,s810 |
| s993 | R22 | sumlo | lo | BCP | 21333/200000 | s778,lo_BPQ,s887,lo_BEP,s893 |
| s998 | R25 | sumlo | lo | BPR | 42439/250000 | lo_BEP,s974,s901,s770,hi_BEF |
| s1002 | R29 | sumlo | lo | BHQ | 214549/1000000 | s788,s978,s815,lo_BHS,hi_BFS |
| s1011 | R31 | sumlo | lo | CPR | 18303/125000 | lo_ACP,s934,s861,lo_CHP,hi_ACH |
| s1013 | R33 | sumlo | lo | BCE | 6153/20000 | s887,s923,lo_BCR,s813,s927 |
| s1017 | R35 | sumlo | lo | CFP | 49931/500000 | s792,s1011,s928,lo_CHP,hi_CHR |
| s1022 | R39 | sumlo | lo | CEQ | 81001/250000 | s1013,s944,s899,s923,hi_BER |
| s1023 | R40 | sumlo | lo | BES | 110763/500000 | s1013,lo_ERS,s901,lo_CES,hi_CER |
| s1025 | R43 | sumlo | lo | EQS | 779/4000 | s1022,lo_ERS,lo_CES,s944,hi_CER |
| s1033 | R46 | sumlo | lo | BFQ | 20021/100000 | s879,s827,s974,lo_CFQ,hi_CFR |
| s1034 | R50 | sumlo | lo | EFQ | 111633/500000 | s970,s827,s1033,s939,hi_BFR |
| s1039 | R51 | sumlo | lo | FHR | 79899/500000 | lo_EFH,s827,s939,lo_FHQ,s971 |
| s1042 | R52 | sumlo | lo | HQS | 1472/15625 | s1002,s839,lo_BHS,lo_HQR,hi_BHR |
| s1046 | R55 | sumlo | lo | EPQ | 155389/1000000 | lo_BEP,lo_FPQ,lo_BPQ,s938,s880 |
| s1047 | R56 | sumlo | lo | PQR | 15821/100000 | lo_BPQ,s945,s998,lo_FPQ,s880 |
| s1049 | R58 | sumlo | lo | AQR | 11923/50000 | s858,s944,lo_AEQ,s820,s920 |
| s1053 | R61 | sumlo | lo | CEQ | 331209/1000000 | s887,s944,s899,s820,s905 |
| s1055 | R63 | sumlo | lo | BFQ | 42337/200000 | s887,s827,s913,lo_CFQ,s927 |
| s1066 | R70 | sumlo | lo | CQR | 262931/1000000 | s861,s944,s1049,s923,hi_AER |
| s1075 | R78 | sumlo | lo | CRS | 108417/1000000 | s923,lo_FRS,s928,lo_ERS,hi_EFR |
| s1076 | R79 | sumlo | lo | FQR | 144399/1000000 | s939,lo_HQR,s944,s1039,hi_EHR |
| s1083 | R84 | sumlo | lo | BRS | 11271/62500 | s1023,lo_FRS,lo_BFS,lo_ERS,s77 |
| s1089 | R88 | sumlo | lo | EFS | 41067/125000 | lo_CES,lo_FRS,s932,lo_ERS,s63 |
| s1127 | R97 | linear | hi | BFP | 305773/1000000 | hi_BCF,s993,s1017 |
| s1134 | R98 | linear | lo | BCQ | 58533/200000 | s993,lo_BPQ,lo_CPQ |
| s1142 | R100 | linear | hi | BEQ | 461349/1000000 | hi_BEF,s1055,s1034 |
| s1148 | R101 | linear | lo | BEQ | 341389/1000000 | lo_BEP,lo_BPQ,s1046 |
| s1150 | R102 | linear | lo | BER | 247431/500000 | s1023,s1083,lo_ERS |
| s1156 | R103 | linear | hi | BQR | 67527/125000 | s1055,hi_BFR,s1076 |
| s1165 | R105 | linear | lo | BQR | 210483/500000 | lo_BPQ,s998,s1047 |
| s1174 | R108 | linear | lo | CER | 294417/1000000 | lo_CES,s1075,lo_ERS |
| s1178 | R109 | linear | hi | CQR | 70227/200000 | lo_CFQ,hi_CFR,s1076 |
| s1191 | R114 | linear | lo | EFR | 64317/125000 | s1089,lo_ERS,lo_FRS |
| s1196 | R116 | linear | lo | EQR | 1523/4000 | s1025,lo_ERS,lo_QRS |
| s1200 | R117 | linear | lo | FPR | 395609/1000000 | lo_FPQ,s1076,s1047 |
| s1209 | R126 | bary_hi | lo | BQS | 21309/62500 | s1134,s1148,s1165 |
| s1224 | R5 | sum | lo | BEF | 38817/50000 | s1148,s1055,s1034 |
| s1226 | R5 | sub | hi | EFQ | 171613/500000 | hi_BEF,s1148,s1055 |
| s1229 | R8 | sum | lo | BFR | 15541/20000 | s1055,s1165,s1076 |
| s1234 | R10 | sub | hi | BHQ | 407597/1000000 | hi_BHS,s1209,s1042 |
| s1256 | R24 | sumlo | lo | BFP | 3112/15625 | s1224,lo_BPQ,lo_BEP,s1055,s1142 |
| s1258 | R25 | sumlo | lo | BPR | 19059/100000 | lo_BEP,s1229,s1150,s1256,hi_BEF |
| s1272 | R33 | sumlo | lo | BCE | 166557/500000 | s1134,s1174,lo_BCR,s1053,s1178 |
| s1286 | R40 | sumlo | lo | BES | 231751/1000000 | s1272,lo_ERS,s1150,lo_CES,hi_CER |
| s1287 | R41 | diffhi | hi | EHQ | 396949/1000000 | hi_BEH,s1226,s1148,lo_EFH,s1224 |
| s1310 | R51 | sumlo | lo | FHR | 11159/62500 | lo_EFH,s1076,s1191,lo_FHQ,s1226 |
| s1327 | R56 | sumlo | lo | PQR | 17829/100000 | lo_BPQ,s1200,s1258,lo_FPQ,s1127 |
| s1335 | R61 | sumlo | lo | CEQ | 23277/62500 | s1134,s1196,s1148,s1066,s1156 |
| s1337 | R63 | sumlo | lo | BFQ | 231849/1000000 | s1134,s1076,s1165,lo_CFQ,s1178 |
| s1345 | R65 | sumlo | lo | EPQ | 178217/1000000 | s1148,s1327,lo_BPQ,s1196,s1156 |
| s1347 | R66 | sumlo | lo | FQR | 2979/20000 | s1337,lo_HQR,s1165,lo_FHQ,s1234 |
| s1355 | R67 | sumlo | lo | EFQ | 258827/1000000 | s1335,s1347,lo_CFQ,s1196,s1178 |
| s1360 | R68 | sumlo | lo | FQR | 37461/250000 | s1355,lo_HQR,s1196,lo_FHQ,s1287 |
| s1361 | R69 | sumlo | lo | PQR | 45243/250000 | s1345,s1360,s1196,lo_FPQ,s1226 |
| s1374 | R77 | sumlo | lo | FQR | 39751/250000 | s1229,lo_HQR,s1165,s1310,hi_BHR |
| s1386 | R84 | sumlo | lo | BRS | 3647/20000 | s1286,lo_FRS,lo_BFS,lo_ERS,s77 |
| s1449 | R101 | linear | lo | BEQ | 364217/1000000 | lo_BEP,lo_BPQ,s1345 |
| s1453 | R102 | linear | lo | BER | 507101/1000000 | s1286,s1386,lo_ERS |
| s1460 | R103 | linear | hi | BQR | 505447/1000000 | s1337,hi_BFR,s1374 |
| s1470 | R105 | linear | lo | BQR | 232281/500000 | lo_BPQ,s1258,s1361 |
| s1471 | R105 | linear | hi | BPR | 9259/40000 | lo_BPQ,s1460,s1361 |
| s1512 | R117 | linear | lo | FPR | 27061/62500 | lo_FPQ,s1374,s1361 |
| s1540 | R5 | sum | lo | BEF | 854893/1000000 | s1449,s1337,s1355 |
| s1546 | R7 | sub | hi | BFP | 136367/500000 | hi_BFR,s1258,s1512 |
| s1547 | R8 | sum | lo | BFR | 171083/200000 | s1337,s1470,s1374 |
| s1599 | R24 | sumlo | lo | BEQ | 370569/1000000 | s1540,lo_BPQ,lo_BEP,s1337,s1546 |
| s1610 | R27 | sumlo | lo | BQR | 242419/500000 | s1599,s1547,s1453,s1337,hi_BEF |
| s1611 | R27 | diffhi | hi | BEQ | 392163/1000000 | hi_BEF,s1460,s1453,s1337,s1547 |
| s1624 | R28 | sumlo | lo | BEQ | 99633/250000 | lo_BEP,s1610,s1453,lo_BPQ,s1471 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BEQ | s1624 | s1611 |

The two cited bounds give 99633/250000 <= |BEQ| <= 392163/1000000, with exact positive gap 6369/1000000.

## Leaf A032

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABF | ABF | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACE | ACE | lo | 93/1000 | cost: |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 347/500 | cost:PQ |
| lo_AEH | AEH | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AES | AES | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 93/1000 | cost: |
| lo_AFR | AFR | lo | 347/500 | cost:PQ |
| lo_AFS | AFS | lo | 347/500 | cost:PQ |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCP | BCP | lo | 93/1000 | cost: |
| lo_BCQ | BCQ | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 347/500 | cost:PQ |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BFR | BFR | lo | 347/500 | cost:PQ |
| lo_BFS | BFS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 93/1000 | cost: |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEQ | CEQ | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:Q |
| lo_CFS | CFS | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_EFP | EFP | lo | 279/1000 | cost:Q |
| lo_EFQ | EFQ | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FPR | FPR | lo | 279/1000 | cost:Q |
| lo_FPS | FPS | lo | 279/1000 | cost:Q |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FQS | FQS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| hi_ACF | ACF | hi | 77/125 | C029 |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_AHS | AHS | hi | 5161583/7044125 | C056 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_CEF | CEF | hi | 13367777/15625000 | C041 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CFS | CFS | hi | 22417750204943/39359031250000 | C060 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AEF","AEP","AFP","EFP"] | ["fan","AEF","P"] |
| R2 | fan | ["AEF","AEQ","AFQ","EFQ"] | ["fan","AEF","Q"] |
| R3 | fan | ["BCF","BCP","BFP","CFP"] | ["fan","BCF","P"] |
| R4 | fan | ["BFS","BFQ","BQS","FQS"] | ["fan","BFS","Q"] |
| R5 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R6 | fan | ["CFR","CFQ","CQR","FQR"] | ["fan","CFR","Q"] |
| R7 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R8 | plu | ["ABE","ACH","ABC","AEH","ABH","ACE"] | ["plu","ABCEH"] |
| R9 | plu | ["ABS","ACF","ABC","AFS","ABF","ACS"] | ["plu","ABCFS"] |
| R10 | plu | ["ABE","AFR","ABF","AER","ABR","AEF"] | ["plu","ABEFR"] |
| R11 | plu | ["ABF","AHS","ABH","AFS","ABS","AFH"] | ["plu","ABFHS"] |
| R12 | plu | ["AEF","AHP","AEH","AFP","AEP","AFH"] | ["plu","AEFHP"] |
| R13 | plu | ["AEQ","AFP","AEF","APQ","AEP","AFQ"] | ["plu","AEFPQ"] |
| R14 | plu | ["AEF","APR","AEP","AFR","AER","AFP"] | ["plu","AEFPR"] |
| R15 | plu | ["AEF","APS","AEP","AFS","AES","AFP"] | ["plu","AEFPS"] |
| R16 | plu | ["ABR","BCF","ABC","BFR","ABF","BCR"] | ["plu","BACFR"] |
| R17 | plu | ["ABS","BCF","ABC","BFS","ABF","BCS"] | ["plu","BACFS"] |
| R18 | plu | ["BCS","BFR","BCF","BRS","BCR","BFS"] | ["plu","BCFRS"] |
| R19 | plu | ["BFP","BQS","BFQ","BPS","BFS","BPQ"] | ["plu","BFPQS"] |
| R20 | plu | ["BCE","CQR","BCQ","CER","BCR","CEQ"] | ["plu","CBEQR"] |
| R21 | plu | ["AEF","BEP","ABE","EFP","AEP","BEF"] | ["plu","EABFP"] |
| R22 | plu | ["BER","CEF","BCE","EFR","BEF","CER"] | ["plu","EBCFR"] |
| R23 | plu | ["CER","EFS","CEF","ERS","CES","EFR"] | ["plu","ECFRS"] |
| R24 | plu | ["ACF","BFS","ABF","CFS","AFS","BCF"] | ["plu","FABCS"] |
| R25 | plu | ["AFS","BEF","ABF","EFS","AEF","BFS"] | ["plu","FABES"] |
| R26 | plu | ["AFP","BFS","ABF","FPS","AFS","BFP"] | ["plu","FABPS"] |
| R27 | plu | ["AFQ","CFS","ACF","FQS","AFS","CFQ"] | ["plu","FACQS"] |
| R28 | plu | ["AFR","EFP","AEF","FPR","AFP","EFR"] | ["plu","FAEPR"] |
| R29 | plu | ["AFS","EFP","AEF","FPS","AFP","EFS"] | ["plu","FAEPS"] |
| R30 | plu | ["AFR","EFQ","AEF","FQR","AFQ","EFR"] | ["plu","FAEQR"] |
| R31 | plu | ["AFQ","FPS","AFP","FQS","AFS","FPQ"] | ["plu","FAPQS"] |
| R32 | plu | ["AFR","FQS","AFQ","FRS","AFS","FQR"] | ["plu","FAQRS"] |
| R33 | plu | ["BFQ","CFS","BCF","FQS","BFS","CFQ"] | ["plu","FBCQS"] |
| R34 | plu | ["BFQ","EFP","BEF","FPQ","BFP","EFQ"] | ["plu","FBEPQ"] |
| R35 | plu | ["APQ","BFP","ABP","FPQ","AFP","BPQ"] | ["plu","PABFQ"] |
| R36 | plu | ["AFP","BPS","ABP","FPS","APS","BFP"] | ["plu","PABFS"] |
| R37 | plu | ["BFP","EPQ","BEP","FPQ","BPQ","EFP"] | ["plu","PBEFQ"] |
| R38 | plu | ["BPR","EFP","BEP","FPR","BFP","EPR"] | ["plu","PBEFR"] |
| R39 | plu | ["BFP","PQR","BPQ","FPR","BPR","FPQ"] | ["plu","PBFQR"] |
| R40 | plu | ["BFP","PQS","BPQ","FPS","BPS","FPQ"] | ["plu","PBFQS"] |
| R41 | plu | ["ACR","BFR","ABR","CFR","AFR","BCR"] | ["plu","RABCF"] |
| R42 | plu | ["AER","CFR","ACR","EFR","AFR","CER"] | ["plu","RACEF"] |
| R43 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R44 | plu | ["BER","CFR","BCR","EFR","BFR","CER"] | ["plu","RBCEF"] |
| R45 | plu | ["BRS","EFR","BER","FRS","BFR","ERS"] | ["plu","RBEFS"] |
| R46 | plu | ["ACS","BFS","ABS","CFS","AFS","BCS"] | ["plu","SABCF"] |
| R47 | plu | ["AFS","BPS","ABS","FPS","APS","BFS"] | ["plu","SABFP"] |
| R48 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R49 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R50 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R51 | plu | ["BRS","EFS","BES","FRS","BFS","ERS"] | ["plu","SBEFR"] |
| R52 | linear | [{"ACF":1,"AFP":-1,"ACP":-1,"CFP":-1},"0"] | ["affine_quad","ACFP",1] |
| R53 | linear | [{"AEF":1,"AFP":-1,"AEP":-1,"EFP":-1},"0"] | ["affine_quad","AEFP",1] |
| R54 | linear | [{"AEF":1,"AFQ":-1,"AEQ":-1,"EFQ":-1},"0"] | ["affine_quad","AEFQ",1] |
| R55 | linear | [{"AEF":1,"AFS":-1,"AES":1,"EFS":-1},"0"] | ["affine_quad","AEFS",1] |
| R56 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R57 | linear | [{"AFP":-1,"APR":-1,"AFR":1,"FPR":-1},"0"] | ["affine_quad","AFPR",1] |
| R58 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R59 | linear | [{"BCR":-1,"BRS":-1,"BCS":1,"CRS":1},"0"] | ["affine_quad","BCRS",-1] |
| R60 | linear | [{"BFQ":-1,"BQS":-1,"BFS":1,"FQS":-1},"0"] | ["affine_quad","BFQS",1] |
| R61 | linear | [{"BPQ":-1,"BQS":1,"BPS":-1,"PQS":-1},"0"] | ["affine_quad","BPQS",-1] |
| R62 | linear | [{"EFP":1,"EPQ":-1,"EFQ":-1,"FPQ":-1},"0"] | ["affine_quad","EFPQ",1] |
| R63 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R64 | linear | [{"FPQ":-1,"FQR":-1,"FPR":1,"PQR":-1},"0"] | ["affine_quad","FPQR",-1] |
| R65 | linear | [{"FPQ":-1,"FQS":-1,"FPS":1,"PQS":-1},"0"] | ["affine_quad","FPQS",-1] |
| R66 | bary | [["CFS",-1],[null,["CEF",-1],["CFR",-1]],11,[3,3,3]] | ["side_pair_weights","CF","S","CER","3/11"] |
| R67 | bary | [["FPS",1],[["CFP",1],["EFP",1],["FPR",1]],11,[3,3,3]] | ["side_pair_weights","FP","S","CER","3/11"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s5 | R0 | sub | hi | AHP | 12727/40000 | hi_ACH,lo_ACP,lo_CHP |
| s10 | R1 | sub | hi | EFP | 570997/1000000 | hi_AEF,lo_AEP,lo_AFP |
| s11 | R2 | sub | hi | AEQ | 570997/1000000 | hi_AEF,lo_AFQ,lo_EFQ |
| s36 | R3 | sub | hi | BFP | 3263/10000 | hi_BCF,lo_BCP,lo_CFP |
| s51 | R4 | sub | hi | BQS | 605573/1000000 | hi_BFS,lo_BFQ,lo_FQS |
| s56 | R5 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s59 | R6 | sub | hi | CQR | 201267/500000 | hi_CFR,lo_CFQ,lo_FQR |
| s64 | R7 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s71 | R8 | sumlo | lo | ABE | 145169/1000000 | lo_ABC,lo_AEH,lo_ABH,lo_ACE,hi_ACH |
| s73 | R9 | sumlo | lo | ABS | 3713/31250 | lo_ABC,lo_AFS,lo_ABF,lo_ACS,hi_ACF |
| s76 | R11 | sumlo | lo | ABF | 103161/1000000 | lo_ABH,lo_AFS,s73,lo_AFH,hi_AHS |
| s83 | R12 | diffhi | hi | AFP | 66919/200000 | hi_AEF,s5,lo_AEP,lo_AFH,lo_AEH |
| s85 | R13 | sumlo | lo | AFP | 128181/1000000 | lo_AEF,lo_APQ,lo_AEP,lo_AFQ,s11 |
| s87 | R14 | sumlo | lo | APR | 132503/1000000 | lo_AEP,lo_AFR,lo_AER,s85,hi_AEF |
| s88 | R15 | sumlo | lo | APS | 6313/62500 | lo_AEP,lo_AFS,lo_AES,s85,hi_AEF |
| s94 | R16 | sumlo | lo | ABR | 18089/125000 | lo_ABC,lo_BFR,s76,lo_BCR,hi_BCF |
| s95 | R17 | sumlo | lo | ABS | 18089/125000 | lo_ABC,lo_BFS,s76,lo_BCS,hi_BCF |
| s101 | R18 | sumlo | lo | BCS | 50479/500000 | lo_BCF,lo_BRS,lo_BCR,lo_BFS,hi_BFR |
| s106 | R19 | sumlo | lo | BFP | 60431/500000 | lo_BFQ,lo_BPS,lo_BFS,lo_BPQ,s51 |
| s117 | R20 | sumlo | lo | BCE | 214863/1000000 | lo_BCQ,lo_CER,lo_BCR,lo_CEQ,s59 |
| s121 | R21 | sumlo | lo | BEP | 34691/250000 | s71,lo_EFP,lo_AEP,lo_BEF,hi_AEF |
| s140 | R22 | sumlo | lo | CEF | 389971/1000000 | s117,lo_EFR,lo_BEF,lo_CER,hi_BER |
| s149 | R23 | sumlo | lo | EFS | 37449/200000 | s140,lo_ERS,lo_CES,lo_EFR,hi_CER |
| s153 | R24 | sumlo | lo | ACF | 280969/1000000 | s76,lo_CFS,lo_AFS,lo_BCF,hi_BFS |
| s156 | R26 | sumlo | lo | AFP | 35581/250000 | s76,lo_FPS,lo_AFS,s106,hi_BFS |
| s163 | R27 | sumlo | lo | AFQ | 159193/1000000 | s153,lo_FQS,lo_AFS,lo_CFQ,hi_CFS |
| s171 | R29 | sumlo | lo | EFP | 15201/50000 | lo_AEF,lo_FPS,s156,s149,hi_AFS |
| s172 | R30 | sumlo | lo | EFQ | 133123/1000000 | lo_AEF,lo_FQR,s163,lo_EFR,hi_AFR |
| s176 | R32 | sumlo | lo | FQS | 19389/200000 | s163,lo_FRS,lo_AFS,lo_FQR,hi_AFR |
| s179 | R33 | sumlo | lo | BFQ | 40201/250000 | lo_BCF,s176,lo_BFS,lo_CFQ,hi_CFS |
| s189 | R36 | sumlo | lo | BPS | 114033/1000000 | lo_ABP,lo_FPS,s88,s106,s83 |
| s193 | R37 | sumlo | lo | EPQ | 126199/1000000 | s121,lo_FPQ,lo_BPQ,s171,s36 |
| s194 | R38 | sumlo | lo | BPR | 63429/500000 | s121,lo_FPR,s106,lo_EPR,s10 |
| s195 | R39 | sumlo | lo | PQR | 4627/40000 | lo_BPQ,lo_FPR,s194,lo_FPQ,s36 |
| s196 | R40 | sumlo | lo | PQS | 112019/1000000 | lo_BPQ,lo_FPS,s189,lo_FPQ,s36 |
| s200 | R41 | sumlo | lo | ACR | 23411/200000 | s94,lo_CFR,lo_AFR,lo_BCR,hi_BFR |
| s202 | R42 | sumlo | lo | AER | 48061/125000 | s200,lo_EFR,lo_AFR,lo_CER,hi_CFR |
| s206 | R43 | sumlo | lo | ARS | 76199/500000 | s202,lo_FRS,lo_AFR,lo_ERS,hi_EFR |
| s207 | R43 | sumlo | lo | EFR | 32151/100000 | s202,lo_FRS,lo_AFR,lo_ERS,hi_ARS |
| s208 | R44 | sumlo | lo | BER | 189901/500000 | lo_BCR,s207,lo_BFR,lo_CER,hi_CFR |
| s213 | R45 | sumlo | lo | BRS | 18967/125000 | s208,lo_FRS,lo_BFR,lo_ERS,hi_EFR |
| s220 | R46 | sumlo | lo | ACS | 139519/1000000 | s95,lo_CFS,lo_AFS,s101,hi_BFS |
| s222 | R47 | sumlo | lo | BPS | 76237/500000 | s95,lo_FPS,s88,lo_BFS,hi_AFS |
| s224 | R48 | sumlo | lo | AES | 37123/200000 | s220,lo_ERS,s206,lo_CES,s56 |
| s225 | R49 | sumlo | lo | ARS | 86631/500000 | s224,lo_FRS,lo_AFS,lo_ERS,s64 |
| s226 | R49 | sumlo | lo | EFS | 262223/1000000 | s224,lo_FRS,lo_AFS,lo_ERS,hi_ARS |
| s229 | R50 | sumlo | lo | BES | 6427/40000 | s101,lo_ERS,s213,lo_CES,s56 |
| s230 | R51 | sumlo | lo | BRS | 3367/20000 | s229,lo_FRS,lo_BFS,lo_ERS,s64 |
| s239 | R52 | linear | lo | ACF | 82081/250000 | lo_ACP,s156,lo_CFP |
| s247 | R53 | linear | hi | EFP | 521673/1000000 | hi_AEF,lo_AEP,s156 |
| s249 | R54 | linear | hi | AEQ | 464681/1000000 | hi_AEF,s163,s172 |
| s251 | R55 | linear | lo | AES | 99613/500000 | hi_AEF,lo_AFS,s226 |
| s260 | R56 | linear | lo | AER | 29093/62500 | s251,s225,lo_ERS |
| s263 | R57 | linear | hi | FPR | 543639/1000000 | s156,hi_AFR,s87 |
| s281 | R58 | linear | hi | CFP | 149219/500000 | hi_BCF,lo_BCP,s106 |
| s286 | R59 | linear | lo | BCS | 115089/1000000 | lo_BCR,s230,s56 |
| s297 | R60 | linear | hi | BQS | 8341/15625 | s179,hi_BFS,s176 |
| s314 | R62 | linear | lo | EFP | 176161/500000 | s172,s193,lo_FPQ |
| s316 | R63 | linear | lo | EFR | 448223/1000000 | s226,lo_ERS,lo_FRS |
| s323 | R64 | linear | lo | FPR | 12067/40000 | lo_FPQ,lo_FQR,s195 |
| s325 | R65 | linear | lo | FPS | 75491/250000 | lo_FPQ,s176,s196 |
| s337 | R66 | bary_lo | hi | CFS | 54939/100000 | hi_CEF,hi_CFR |
| s343 | R67 | bary_hi | hi | FPS | 58847/125000 | s281,s247,s263 |
| s350 | R1 | sub | hi | AFP | 12467/40000 | hi_AEF,lo_AEP,s314 |
| s366 | R10 | sumlo | lo | ABE | 2834/15625 | s76,s260,s94,lo_AEF,hi_AFR |
| s370 | R11 | sumlo | lo | ABF | 6653/62500 | lo_ABH,lo_AFS,s95,lo_AFH,hi_AHS |
| s382 | R13 | sumlo | lo | AFP | 34151/200000 | lo_AEF,lo_APQ,lo_AEP,s163,s249 |
| s385 | R15 | sumlo | lo | APS | 130199/1000000 | lo_AEP,lo_AFS,s251,s382,hi_AEF |
| s393 | R17 | sumlo | lo | ABS | 74949/500000 | lo_ABC,lo_BFS,s370,s286,hi_BCF |
| s410 | R19 | sumlo | lo | BFP | 83417/500000 | s179,s222,lo_BFS,lo_BPQ,s297 |
| s419 | R21 | sumlo | lo | BEP | 42419/250000 | s366,s314,lo_AEP,lo_BEF,hi_AEF |
| s436 | R25 | sumlo | lo | BEF | 70327/100000 | s370,s226,lo_AEF,lo_BFS,hi_AFS |
| s438 | R26 | sumlo | lo | AFP | 46719/250000 | s370,s325,lo_AFS,s410,hi_BFS |
| s439 | R26 | diffhi | hi | BFP | 309179/1000000 | s350,hi_BFS,s370,s325,lo_AFS |
| s445 | R27 | sumlo | lo | AFQ | 35083/200000 | s239,s176,lo_AFS,lo_CFQ,s337 |
| s455 | R28 | sumlo | lo | EFP | 358139/1000000 | lo_AEF,s323,s438,s316,hi_AFR |
| s457 | R30 | sumlo | lo | EFQ | 174921/1000000 | lo_AEF,lo_FQR,s445,s316,hi_AFR |
| s460 | R31 | sumlo | lo | AFQ | 175579/1000000 | s438,s176,lo_AFS,lo_FPQ,s343 |
| s462 | R32 | sumlo | lo | FQS | 98807/1000000 | s460,lo_FRS,lo_AFS,lo_FQR,hi_AFR |
| s466 | R34 | sumlo | lo | BFQ | 90657/500000 | s436,lo_FPQ,s410,s457,s247 |
| s475 | R36 | sumlo | lo | BPS | 31959/200000 | lo_ABP,s325,s385,s410,s350 |
| s483 | R37 | sumlo | lo | EPQ | 39691/250000 | s419,lo_FPQ,lo_BPQ,s455,s439 |
| s488 | R40 | sumlo | lo | PQS | 27779/200000 | lo_BPQ,s325,s475,lo_FPQ,s439 |
| s504 | R47 | sumlo | lo | BPS | 93591/500000 | s393,s325,s385,lo_BFS,hi_AFS |
| s534 | R54 | linear | hi | AEQ | 406497/1000000 | hi_AEF,s460,s457 |
| s586 | R60 | linear | hi | BQS | 127863/250000 | s466,hi_BFS,s462 |
| s593 | R61 | linear | lo | BQS | 419077/1000000 | lo_BPQ,s504,s488 |
| s604 | R62 | linear | lo | EFP | 85337/200000 | s457,s483,lo_FPQ |
| s617 | R65 | linear | lo | FPS | 165351/500000 | lo_FPQ,s462,s488 |
| s634 | R1 | sum | lo | AEF | 706561/1000000 | lo_AEP,s438,s604 |
| s636 | R1 | sub | hi | AFP | 3708/15625 | hi_AEF,lo_AEP,s604 |
| s652 | R4 | sum | lo | BFS | 349599/500000 | s466,s593,s462 |
| s662 | R11 | sumlo | lo | ABF | 53553/500000 | lo_ABH,lo_AFS,s393,lo_AFH,hi_AHS |
| s679 | R13 | diffhi | hi | APQ | 5671/50000 | s534,s636,lo_AEP,s460,s634 |
| s703 | R19 | sumlo | lo | BFP | 24187/125000 | s466,s504,s652,lo_BPQ,s586 |
| s747 | R26 | sumlo | lo | AFP | 214391/1000000 | s662,s617,lo_AFS,s703,hi_BFS |
| s750 | R26 | diffhi | hi | BFP | 5491/25000 | s636,hi_BFS,s662,s617,lo_AFS |
| s854 | R35 | sumlo | lo | APQ | 26031/200000 | lo_ABP,lo_FPQ,s747,lo_BPQ,s750 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | APQ | s854 | s679 |

The two cited bounds give 26031/200000 <= |APQ| <= 5671/50000, with exact positive gap 3347/200000.

## Leaf A033

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:S |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFS | EFS | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHR | FHR | lo | 279/1000 | cost:S |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_FHR | FHR | hi | 3391848256/6163609375 | C020 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R1 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R2 | fan | ["FHR","FHS","FRS","HRS"] | ["fan","FHR","S"] |
| R3 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R4 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R5 | plu | ["BFR","CHR","BCR","FHR","BHR","CFR"] | ["plu","RBCFH"] |
| R6 | plu | ["BFR","ERS","BER","FRS","BRS","EFR"] | ["plu","RBEFS"] |
| R7 | plu | ["BRS","FHR","BFR","HRS","BHR","FRS"] | ["plu","RBFHS"] |
| R8 | plu | ["CRS","FHR","CFR","HRS","CHR","FRS"] | ["plu","RCFHS"] |
| R9 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R10 | plu | ["BFS","ERS","BES","FRS","BRS","EFS"] | ["plu","SBEFR"] |
| R11 | plu | ["BRS","FHS","BFS","HRS","BHS","FRS"] | ["plu","SBFHR"] |
| R12 | linear | [{"BCR":-1,"BRS":-1,"BCS":1,"CRS":1},"0"] | ["affine_quad","BCRS",-1] |
| R13 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R14 | linear | [{"EFR":1,"CER":-1},"0"] | ["right_compare","R","EF"] |
| R15 | linear | [{"BCS":-3,"BES":5,"BRS":-3},"0"] | ["barycentric","BS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s37 | R1 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s38 | R1 | sub | hi | ERS | 146261/1000000 | hi_CER,lo_CES,lo_CRS |
| s58 | R2 | sub | hi | FHS | 364303/1000000 | hi_FHR,lo_FRS,lo_HRS |
| s74 | R3 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s141 | R4 | sumlo | lo | CHR | 168841/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_BER |
| s143 | R5 | sumlo | lo | BFR | 177241/500000 | lo_BCR,lo_FHR,lo_BHR,lo_CFR,hi_CHR |
| s147 | R7 | sumlo | lo | BRS | 177191/1000000 | s143,lo_HRS,lo_BHR,lo_FRS,hi_FHR |
| s154 | R8 | sumlo | lo | CRS | 52109/500000 | lo_CFR,lo_HRS,s141,lo_FRS,hi_FHR |
| s166 | R9 | sumlo | lo | BES | 87361/500000 | s74,lo_ERS,s147,lo_CES,s37 |
| s170 | R10 | sumlo | lo | BFS | 223763/1000000 | s166,lo_FRS,s147,lo_EFS,s38 |
| s173 | R11 | sumlo | lo | BRS | 14643/62500 | s170,lo_HRS,lo_BHS,lo_FRS,s58 |
| s206 | R12 | linear | lo | BCS | 181027/1000000 | lo_BCR,s173,s37 |
| s230 | R13 | linear | lo | CER | 145109/500000 | lo_CES,s154,lo_ERS |
| s232 | R13 | linear | hi | ERS | 135043/1000000 | hi_CER,lo_CES,s154 |
| s275 | R14 | linear | lo | EFR | 145109/500000 | s230 |
| s287 | R15 | linear | lo | BES | 249189/1000000 | s206,s173 |
| s299 | R0 | sum | lo | BER | 576477/1000000 | s287,s173,lo_ERS |
| s413 | R6 | sumlo | lo | BFR | 180101/200000 | s299,lo_FRS,s173,s275,s232 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BFR | s413 | hi_BFR |

The two cited bounds give 180101/200000 <= |BFR| <= 8963/10000, with exact positive gap 841/200000.

## Leaf A034

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABF | ABF | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_BCF | BCF | lo | 279/1000 | cost:P |
| lo_BCQ | BCQ | lo | 93/1000 | cost: |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEF | BEF | lo | 347/500 | cost:PQ |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEQ | BEQ | lo | 93/1000 | cost: |
| lo_BES | BES | lo | 93/1000 | cost: |
| lo_BFH | BFH | lo | 93/1000 | cost: |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BFQ | BFQ | lo | 279/1000 | cost:P |
| lo_BFR | BFR | lo | 347/500 | cost:PQ |
| lo_BFS | BFS | lo | 347/500 | cost:PQ |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BPS | BPS | lo | 279/1000 | cost:Q |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEF | CEF | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFH | CFH | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:Q |
| lo_CHS | CHS | lo | 279/1000 | cost:Q |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 279/1000 | cost:Q |
| lo_CQR | CQR | lo | 93/1000 | cost: |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 93/1000 | cost: |
| lo_FHS | FHS | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 93/1000 | cost: |
| lo_PQS | PQS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_BPR | BPR | hi | 1614143075756399/2526093666250000 | C009 |
| hi_BPS | BPS | hi | 19982096006443189661/35579307548083750000 | C063 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_CPR | CPR | hi | 66213614666233493/146644594250000000 | C002 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["BEF","BEP","BFP","EFP"] | ["fan","BEF","P"] |
| R1 | fan | ["BEF","BEQ","BFQ","EFQ"] | ["fan","BEF","Q"] |
| R2 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R3 | fan | ["BFR","BFP","BPR","FPR"] | ["fan","BFR","P"] |
| R4 | fan | ["BFS","BFP","BPS","FPS"] | ["fan","BFS","P"] |
| R5 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R6 | fan | ["BPS","BPQ","BQS","PQS"] | ["fan","BPS","Q"] |
| R7 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R8 | fan | ["CFR","CFQ","CQR","FQR"] | ["fan","CFR","Q"] |
| R9 | fan | ["CPR","CPQ","CQR","PQR"] | ["fan","CPR","Q"] |
| R10 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R11 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R12 | plu | ["BCE","BHR","BCH","BER","BCR","BEH"] | ["plu","BCEHR"] |
| R13 | plu | ["BCS","BFR","BCF","BRS","BCR","BFS"] | ["plu","BCFRS"] |
| R14 | plu | ["BEF","BQR","BEQ","BFR","BER","BFQ"] | ["plu","BEFQR"] |
| R15 | plu | ["BEF","BQS","BEQ","BFS","BES","BFQ"] | ["plu","BEFQS"] |
| R16 | plu | ["BFS","BHP","BFH","BPS","BFP","BHS"] | ["plu","BFHPS"] |
| R17 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R18 | plu | ["CFP","CHR","CFH","CPR","CFR","CHP"] | ["plu","CFHPR"] |
| R19 | plu | ["CFP","CHS","CFH","CPS","CFS","CHP"] | ["plu","CFHPS"] |
| R20 | plu | ["BER","CEF","BCE","EFR","BEF","CER"] | ["plu","EBCFR"] |
| R21 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R22 | plu | ["AFS","BFH","ABF","FHS","AFH","BFS"] | ["plu","FABHS"] |
| R23 | plu | ["BCF","FPR","BFP","CFR","BFR","CFP"] | ["plu","FBCPR"] |
| R24 | plu | ["BFR","FQS","BFQ","FRS","BFS","FQR"] | ["plu","FBQRS"] |
| R25 | plu | ["CFH","EFP","CEF","FHP","CFP","EFH"] | ["plu","FCEHP"] |
| R26 | plu | ["EFP","FHR","EFH","FPR","EFR","FHP"] | ["plu","FEHPR"] |
| R27 | plu | ["BCH","HPR","BHP","CHR","BHR","CHP"] | ["plu","HBCPR"] |
| R28 | plu | ["BCH","HPS","BHP","CHS","BHS","CHP"] | ["plu","HBCPS"] |
| R29 | plu | ["BCP","EFP","BEP","CFP","BFP","CEP"] | ["plu","PBCEF"] |
| R30 | plu | ["BHP","CFP","BCP","FHP","BFP","CHP"] | ["plu","PBCFH"] |
| R31 | plu | ["BCP","FPR","BFP","CPR","BPR","CFP"] | ["plu","PBCFR"] |
| R32 | plu | ["BCP","FPS","BFP","CPS","BPS","CFP"] | ["plu","PBCFS"] |
| R33 | plu | ["BCP","HPR","BHP","CPR","BPR","CHP"] | ["plu","PBCHR"] |
| R34 | plu | ["BHP","FPR","BFP","HPR","BPR","FHP"] | ["plu","PBFHR"] |
| R35 | plu | ["BPQ","HPR","BHP","PQR","BPR","HPQ"] | ["plu","PBHQR"] |
| R36 | plu | ["CPR","EPQ","CEP","PQR","CPQ","EPR"] | ["plu","PCEQR"] |
| R37 | plu | ["CFP","HPR","CHP","FPR","CPR","FHP"] | ["plu","PCFHR"] |
| R38 | plu | ["BQR","EFQ","BEQ","FQR","BFQ","EQR"] | ["plu","QBEFR"] |
| R39 | plu | ["BPQ","FQR","BFQ","PQR","BQR","FPQ"] | ["plu","QBFPR"] |
| R40 | plu | ["CQR","EPQ","CEQ","PQR","CPQ","EQR"] | ["plu","QCEPR"] |
| R41 | plu | ["BER","CFR","BCR","EFR","BFR","CER"] | ["plu","RBCEF"] |
| R42 | plu | ["BER","CQR","BCR","EQR","BQR","CER"] | ["plu","RBCEQ"] |
| R43 | plu | ["BRS","EFR","BER","FRS","BFR","ERS"] | ["plu","RBEFS"] |
| R44 | plu | ["BHR","FPR","BFR","HPR","BPR","FHR"] | ["plu","RBFHP"] |
| R45 | plu | ["BPR","FQR","BFR","PQR","BQR","FPR"] | ["plu","RBFPQ"] |
| R46 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R47 | plu | ["BRS","EFS","BES","FRS","BFS","ERS"] | ["plu","SBEFR"] |
| R48 | plu | ["BHS","FPS","BFS","HPS","BPS","FHS"] | ["plu","SBFHP"] |
| R49 | plu | ["BPS","FQS","BFS","PQS","BQS","FPS"] | ["plu","SBFPQ"] |
| R50 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R51 | linear | [{"BCF":1,"BFP":-1,"BCP":-1,"CFP":-1},"0"] | ["affine_quad","BCFP",1] |
| R52 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R53 | linear | [{"BCR":-1,"BRS":-1,"BCS":1,"CRS":1},"0"] | ["affine_quad","BCRS",-1] |
| R54 | linear | [{"BEP":1,"BPQ":-1,"BEQ":-1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",1] |
| R55 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R56 | linear | [{"BFP":-1,"BPQ":-1,"BFQ":1,"FPQ":-1},"0"] | ["affine_quad","BFPQ",1] |
| R57 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R58 | linear | [{"BPQ":-1,"BQR":-1,"BPR":1,"PQR":-1},"0"] | ["affine_quad","BPQR",1] |
| R59 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R60 | linear | [{"CFQ":-1,"CQS":-1,"CFS":1,"FQS":-1},"0"] | ["affine_quad","CFQS",1] |
| R61 | linear | [{"CPQ":-1,"CQR":-1,"CPR":1,"PQR":-1},"0"] | ["affine_quad","CPQR",1] |
| R62 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R63 | quad | ["CEP","CER","93/125"] | ["quad","CREP","QS"] |
| R64 | quad | ["CPS","CRS","449/1000"] | ["quad","CRSP","Q"] |
| R65 | bary | [["BQS",-1],[["BCQ",-1],["BEQ",-1],["BQR",-1]],11,[3,3,3]] | ["side_pair_weights","BQ","S","CER","3/11"] |
| R66 | linear | [{"BCS":-3,"BES":5,"BRS":-3},"0"] | ["barycentric","BS","S","CER","upper"] |
| R67 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R68 | bary | [["FQS",1],[["CFQ",-1],["EFQ",1],["FQR",1]],11,[3,3,3]] | ["side_pair_weights","FQ","S","CER","3/11"] |
| R69 | linear | [{"CFS":-3,"EFS":5,"FRS":-3},"0"] | ["barycentric","FS","S","CER","upper"] |
| R70 | linear | [{"CPS":-3,"EPS":5,"PRS":-3},"0"] | ["barycentric","PS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s27 | R1 | sub | hi | EFQ | 5243/10000 | hi_BEF,lo_BEQ,lo_BFQ |
| s39 | R4 | sub | hi | FPS | 419573/1000000 | hi_BFS,lo_BFP,lo_BPS |
| s60 | R7 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s64 | R8 | sub | hi | FQR | 201267/500000 | hi_CFR,lo_CFQ,lo_CQR |
| s72 | R9 | sub | hi | CQR | 10621/40000 | hi_CPR,lo_CPQ,lo_PQR |
| s76 | R10 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s89 | R13 | sumlo | lo | BCS | 50479/500000 | lo_BCF,lo_BRS,lo_BCR,lo_BFS,hi_BFR |
| s92 | R15 | sumlo | lo | BQS | 50479/500000 | lo_BEQ,lo_BFS,lo_BES,lo_BFQ,hi_BEF |
| s94 | R16 | sumlo | lo | BHP | 22863/200000 | lo_BFH,lo_BPS,lo_BFP,lo_BHS,hi_BFS |
| s99 | R17 | sumlo | lo | BCE | 3527/20000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_CFR |
| s113 | R21 | sumlo | lo | CEQ | 115571/1000000 | s99,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s123 | R22 | sumlo | lo | BFH | 12627/125000 | lo_ABF,lo_FHS,lo_AFH,lo_BFS,hi_AFS |
| s126 | R23 | sumlo | lo | FPR | 22079/125000 | lo_BFP,lo_CFR,lo_BFR,lo_CFP,hi_BCF |
| s138 | R27 | sumlo | lo | HPR | 188241/1000000 | s94,lo_CHR,lo_BHR,lo_CHP,hi_BCH |
| s139 | R28 | sumlo | lo | HPS | 188241/1000000 | s94,lo_CHS,lo_BHS,lo_CHP,hi_BCH |
| s145 | R32 | sumlo | lo | BCP | 61841/500000 | lo_BFP,lo_CPS,lo_BPS,lo_CFP,s39 |
| s150 | R38 | sumlo | lo | BQR | 82481/500000 | lo_BEQ,lo_FQR,lo_BFQ,lo_EQR,s27 |
| s153 | R39 | sumlo | lo | BPQ | 102571/1000000 | lo_BFQ,lo_PQR,s150,lo_FPQ,s64 |
| s156 | R40 | sumlo | lo | EPQ | 69099/500000 | s113,lo_PQR,lo_CPQ,lo_EQR,s72 |
| s157 | R41 | sumlo | lo | BER | 93271/250000 | lo_BCR,lo_EFR,lo_BFR,lo_CER,hi_CFR |
| s160 | R42 | sumlo | lo | CQR | 22137/200000 | lo_BCR,lo_EQR,s150,lo_CER,hi_BER |
| s163 | R43 | sumlo | lo | BRS | 75393/500000 | s157,lo_FRS,lo_BFR,lo_ERS,hi_EFR |
| s166 | R45 | sumlo | lo | FQR | 73303/500000 | lo_BFR,lo_PQR,s150,s126,hi_BPR |
| s174 | R46 | sumlo | lo | BES | 160071/1000000 | s89,lo_ERS,s163,lo_CES,s60 |
| s175 | R47 | sumlo | lo | BRS | 168231/1000000 | s174,lo_FRS,lo_BFS,lo_ERS,s76 |
| s178 | R48 | sumlo | lo | FPS | 46451/250000 | lo_BFS,s139,lo_BPS,lo_FHS,hi_BHS |
| s180 | R49 | sumlo | lo | FQS | 148321/1000000 | lo_BFS,lo_PQS,s92,s178,hi_BPS |
| s183 | R50 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s60 |
| s196 | R51 | linear | lo | BCF | 154841/500000 | s145,lo_BFP,lo_CFP |
| s199 | R52 | linear | lo | BCH | 330997/1000000 | s145,s94,lo_CHP |
| s201 | R52 | linear | hi | BCP | 60997/200000 | hi_BCH,s94,lo_CHP |
| s205 | R53 | linear | lo | BCS | 11497/100000 | lo_BCR,s175,s60 |
| s210 | R54 | linear | lo | BEP | 333769/1000000 | lo_BEQ,s153,s156 |
| s215 | R56 | linear | lo | BFQ | 288571/1000000 | lo_BFP,s153,lo_FPQ |
| s222 | R57 | linear | hi | BPR | 624629/1000000 | s94,hi_BHR,s138 |
| s230 | R58 | linear | lo | BPR | 360533/1000000 | s153,s150,lo_PQR |
| s241 | R59 | linear | lo | CFR | 350291/1000000 | lo_CFQ,s160,s166 |
| s242 | R59 | linear | hi | FQR | 384849/1000000 | lo_CFQ,hi_CFR,s160 |
| s244 | R60 | linear | lo | CFS | 334321/1000000 | lo_CFQ,lo_CQS,s180 |
| s250 | R61 | linear | lo | CPR | 59337/200000 | lo_CPQ,s160,lo_PQR |
| s258 | R62 | linear | lo | EQR | 76067/250000 | s183,lo_ERS,lo_QRS |
| s262 | R63 | quad | lo | CEP | 411739/1000000 | hi_CER |
| s264 | R64 | quad | lo | CPS | 302739/1000000 | s60 |
| s272 | R65 | bary_hi | lo | BQS | 56313/500000 | lo_BCQ,lo_BEQ,s150 |
| s275 | R66 | linear | lo | BES | 531/3125 | s205,s175 |
| s277 | R67 | bary_lo | hi | CHS | 300283/500000 | hi_CEH,hi_CHR |
| s282 | R68 | bary_hi | hi | FQS | 158957/500000 | lo_CFQ,s27,s242 |
| s284 | R69 | linear | lo | EFS | 32049/125000 | s244,lo_FRS |
| s290 | R70 | linear | lo | EPS | 237443/1000000 | s264,lo_PRS |
| s293 | R0 | sub | hi | EFP | 469531/1000000 | hi_BEF,s210,lo_BFP |
| s297 | R2 | sum | lo | BER | 431151/1000000 | s275,s175,lo_ERS |
| s299 | R3 | sub | hi | FPR | 442767/1000000 | hi_BFR,lo_BFP,s230 |
| s306 | R6 | sum | lo | BPS | 308197/1000000 | s153,s272,lo_PQS |
| s311 | R10 | sum | lo | EFR | 55299/125000 | s284,lo_ERS,lo_FRS |
| s313 | R11 | sum | lo | EPR | 423443/1000000 | s290,lo_ERS,lo_PRS |
| s323 | R12 | sumlo | lo | BCE | 27941/125000 | s199,s297,lo_BCR,lo_BEH,hi_BHR |
| s324 | R13 | sumlo | lo | BCS | 26027/200000 | s196,s175,lo_BCR,lo_BFS,hi_BFR |
| s326 | R14 | sumlo | lo | BQR | 210821/1000000 | lo_BEQ,lo_BFR,s297,s215,hi_BEF |
| s329 | R16 | sumlo | lo | BHP | 60433/500000 | s123,s306,lo_BFP,lo_BHS,hi_BFS |
| s338 | R19 | sumlo | lo | CFP | 98651/1000000 | lo_CFH,s264,s244,lo_CHP,s277 |
| s344 | R20 | sumlo | lo | CEF | 449857/1000000 | s323,s311,lo_BEF,lo_CER,hi_BER |
| s353 | R23 | sumlo | lo | FPR | 197229/1000000 | lo_BFP,s241,lo_BFR,s338,hi_BCF |
| s363 | R24 | diffhi | hi | FQR | 92979/250000 | hi_BFR,s282,s215,lo_FRS,lo_BFS |
| s364 | R25 | sumlo | lo | CFH | 54321/500000 | s344,lo_FHP,s338,lo_EFH,s293 |
| s365 | R26 | sumlo | lo | FHR | 126689/1000000 | lo_EFH,s353,s311,lo_FHP,s293 |
| s386 | R33 | sumlo | lo | HPR | 45503/200000 | s329,s250,s230,lo_CHP,s201 |
| s390 | R34 | sumlo | lo | BHP | 24703/200000 | lo_BFP,s386,s230,lo_FHP,s299 |
| s394 | R36 | sumlo | lo | EPQ | 172021/1000000 | s262,lo_PQR,lo_CPQ,s313,hi_CPR |
| s399 | R39 | sumlo | lo | BPQ | 31219/250000 | s215,lo_PQR,s326,lo_FPQ,s363 |
| s405 | R42 | sumlo | lo | CQR | 16747/125000 | lo_BCR,s258,s326,lo_CER,hi_BER |
| s406 | R44 | sumlo | lo | FPR | 109779/500000 | lo_BFR,s386,s230,s365,hi_BHR |
| s407 | R45 | sumlo | lo | FQR | 22179/125000 | lo_BFR,lo_PQR,s326,s406,s222 |
| s410 | R46 | sumlo | lo | BES | 37943/200000 | s324,lo_ERS,s175,lo_CES,s60 |
| s413 | R47 | sumlo | lo | BRS | 17407/100000 | s410,lo_FRS,lo_BFS,lo_ERS,s76 |
| s447 | R52 | linear | hi | BCP | 59157/200000 | hi_BCH,s390,lo_CHP |
| s452 | R54 | linear | lo | BEP | 389897/1000000 | lo_BEQ,s399,s394 |
| s456 | R55 | linear | lo | BER | 91357/200000 | s410,s413,lo_ERS |
| s459 | R56 | linear | lo | BFQ | 77719/250000 | lo_BFP,s399,lo_FPQ |
| s480 | R58 | linear | lo | BPR | 428697/1000000 | s399,s326,lo_PQR |
| s489 | R59 | linear | lo | CFR | 50551/125000 | lo_CFQ,s405,s407 |
| s497 | R61 | linear | lo | CPR | 39997/125000 | lo_CPQ,s405,lo_PQR |
| s524 | R0 | sub | hi | EFP | 413403/1000000 | hi_BEF,s452,lo_BFP |
| s530 | R3 | sum | lo | BFR | 148251/200000 | lo_BFP,s480,s406 |
| s532 | R3 | sub | hi | FPR | 374603/1000000 | hi_BFR,lo_BFP,s480 |
| s538 | R5 | sub | hi | HPR | 374973/1000000 | hi_BHR,s390,s480 |
| s563 | R14 | sumlo | lo | BQR | 47069/200000 | lo_BEQ,s530,s456,s459,hi_BEF |
| s570 | R18 | sumlo | lo | CFP | 116839/1000000 | s364,s497,s489,lo_CHP,hi_CHR |
| s591 | R23 | diffhi | hi | CFP | 1301/6250 | hi_BCF,s532,lo_BFP,s489,s530 |
| s626 | R29 | sumlo | lo | BCP | 202821/1000000 | s452,s570,lo_BFP,s262,s524 |
| s631 | R30 | sumlo | lo | BHP | 33041/250000 | s626,lo_FHP,lo_BFP,lo_CHP,s591 |
| s635 | R31 | diffhi | hi | CFP | 23631/125000 | s447,s532,lo_BFP,s497,s480 |
| s638 | R33 | sumlo | lo | HPR | 277763/1000000 | s631,s497,s480,lo_CHP,s447 |
| s639 | R33 | diffhi | hi | BHP | 8881/40000 | s447,s538,s480,lo_CHP,s497 |
| s649 | R34 | sumlo | lo | BHP | 175387/1000000 | lo_BFP,s638,s480,lo_FHP,s532 |
| s650 | R34 | sumlo | lo | FPR | 73979/250000 | lo_BFP,s638,s480,lo_FHP,s639 |
| s655 | R35 | sumlo | lo | BPQ | 149823/1000000 | s649,lo_PQR,s480,lo_HPQ,s538 |
| s662 | R37 | sumlo | lo | HPR | 302981/1000000 | lo_CHP,s650,s497,lo_FHP,s635 |
| s773 | R57 | linear | hi | BPR | 448817/1000000 | s649,hi_BHR,s662 |
| s786 | R58 | linear | hi | BPQ | 15059/125000 | s773,s563,lo_PQR |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BPQ | s655 | s786 |

The two cited bounds give 149823/1000000 <= |BPQ| <= 15059/125000, with exact positive gap 29351/1000000.

## Leaf A035

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEQ | BEQ | lo | 93/1000 | cost: |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFH | BFH | lo | 279/1000 | cost:P |
| lo_BFP | BFP | lo | 93/1000 | cost: |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHQ | BHQ | lo | 279/1000 | cost:P |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 279/1000 | cost:Q |
| lo_BQS | BQS | lo | 93/1000 | cost: |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CHS | CHS | lo | 279/1000 | cost:Q |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPS | CPS | lo | 279/1000 | cost:Q |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 93/1000 | cost: |
| lo_PQS | PQS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BEF | BEF | hi | 8963/10000 | C036 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_BPS | BPS | hi | 19982096006443189661/35579307548083750000 | C063 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_CPR | CPR | hi | 66213614666233493/146644594250000000 | C002 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_EPR | EPR | hi | 16552369677919/26245129000000 | C021 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R1 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R2 | fan | ["BEH","BEQ","BHQ","EHQ"] | ["fan","BEH","Q"] |
| R3 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R4 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R5 | fan | ["BHS","BHP","BPS","HPS"] | ["fan","BHS","P"] |
| R6 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R7 | fan | ["CPR","CPQ","CQR","PQR"] | ["fan","CPR","Q"] |
| R8 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R9 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R10 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R11 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R12 | plu | ["BEH","BQR","BEQ","BHR","BER","BHQ"] | ["plu","BEHQR"] |
| R13 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R14 | plu | ["BCF","CHR","BCH","CFR","BCR","CFH"] | ["plu","CBFHR"] |
| R15 | plu | ["CFP","CHR","CFH","CPR","CFR","CHP"] | ["plu","CFHPR"] |
| R16 | plu | ["CFR","CHQ","CFH","CQR","CFQ","CHR"] | ["plu","CFHQR"] |
| R17 | plu | ["CFR","CPQ","CFP","CQR","CFQ","CPR"] | ["plu","CFPQR"] |
| R18 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R19 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R20 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R21 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R22 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R23 | plu | ["BFR","CFH","BCF","FHR","BFH","CFR"] | ["plu","FBCHR"] |
| R24 | plu | ["BFQ","CFR","BCF","FQR","BFR","CFQ"] | ["plu","FBCQR"] |
| R25 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R26 | plu | ["CFR","EFQ","CEF","FQR","CFQ","EFR"] | ["plu","FCEQR"] |
| R27 | plu | ["CFR","FPQ","CFP","FQR","CFQ","FPR"] | ["plu","FCPQR"] |
| R28 | plu | ["BCH","EHP","BEH","CHP","BHP","CEH"] | ["plu","HBCEP"] |
| R29 | plu | ["BCH","FHP","BFH","CHP","BHP","CFH"] | ["plu","HBCFP"] |
| R30 | plu | ["BHR","CFH","BCH","FHR","BFH","CHR"] | ["plu","HBCFR"] |
| R31 | plu | ["BCH","HPQ","BHP","CHQ","BHQ","CHP"] | ["plu","HBCPQ"] |
| R32 | plu | ["BCH","HPR","BHP","CHR","BHR","CHP"] | ["plu","HBCPR"] |
| R33 | plu | ["BCH","HPS","BHP","CHS","BHS","CHP"] | ["plu","HBCPS"] |
| R34 | plu | ["BHQ","CHR","BCH","HQR","BHR","CHQ"] | ["plu","HBCQR"] |
| R35 | plu | ["BEH","FHR","BFH","EHR","BHR","EFH"] | ["plu","HBEFR"] |
| R36 | plu | ["BEH","FHS","BFH","EHS","BHS","EFH"] | ["plu","HBEFS"] |
| R37 | plu | ["BHR","EHQ","BEH","HQR","BHQ","EHR"] | ["plu","HBEQR"] |
| R38 | plu | ["BHQ","HPR","BHP","HQR","BHR","HPQ"] | ["plu","HBPQR"] |
| R39 | plu | ["CHR","HPQ","CHP","HQR","CHQ","HPR"] | ["plu","HCPQR"] |
| R40 | plu | ["EHQ","HPR","EHP","HQR","EHR","HPQ"] | ["plu","HEPQR"] |
| R41 | plu | ["BCP","EHP","BEP","CHP","BHP","CEP"] | ["plu","PBCEH"] |
| R42 | plu | ["BCP","HPR","BHP","CPR","BPR","CHP"] | ["plu","PBCHR"] |
| R43 | plu | ["BCP","HPS","BHP","CPS","BPS","CHP"] | ["plu","PBCHS"] |
| R44 | plu | ["BPQ","EHP","BEP","HPQ","BHP","EPQ"] | ["plu","PBEHQ"] |
| R45 | plu | ["BPR","EHP","BEP","HPR","BHP","EPR"] | ["plu","PBEHR"] |
| R46 | plu | ["CPR","EPQ","CEP","PQR","CPQ","EPR"] | ["plu","PCEQR"] |
| R47 | plu | ["EPQ","HPR","EHP","PQR","EPR","HPQ"] | ["plu","PEHQR"] |
| R48 | plu | ["BPQ","FQR","BFQ","PQR","BQR","FPQ"] | ["plu","QBFPR"] |
| R49 | plu | ["BPQ","HQR","BHQ","PQR","BQR","HPQ"] | ["plu","QBHPR"] |
| R50 | plu | ["CQR","EPQ","CEQ","PQR","CPQ","EQR"] | ["plu","QCEPR"] |
| R51 | plu | ["EPQ","FQR","EFQ","PQR","EQR","FPQ"] | ["plu","QEFPR"] |
| R52 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R53 | plu | ["BER","CQR","BCR","EQR","BQR","CER"] | ["plu","RBCEQ"] |
| R54 | plu | ["BFR","CQR","BCR","FQR","BQR","CFR"] | ["plu","RBCFQ"] |
| R55 | plu | ["BFR","EHR","BER","FHR","BHR","EFR"] | ["plu","RBEFH"] |
| R56 | plu | ["BRS","EHR","BER","HRS","BHR","ERS"] | ["plu","RBEHS"] |
| R57 | plu | ["BFR","HRS","BHR","FRS","BRS","FHR"] | ["plu","RBFHS"] |
| R58 | plu | ["BPR","HQR","BHR","PQR","BQR","HPR"] | ["plu","RBHPQ"] |
| R59 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R60 | plu | ["CRS","EHR","CER","HRS","CHR","ERS"] | ["plu","RCEHS"] |
| R61 | plu | ["CHR","FPR","CFR","HPR","CPR","FHR"] | ["plu","RCFHP"] |
| R62 | plu | ["CHR","PRS","CPR","HRS","CRS","HPR"] | ["plu","RCHPS"] |
| R63 | plu | ["EHR","FPR","EFR","HPR","EPR","FHR"] | ["plu","REFHP"] |
| R64 | plu | ["EHR","FQR","EFR","HQR","EQR","FHR"] | ["plu","REFHQ"] |
| R65 | plu | ["EPR","FQR","EFR","PQR","EQR","FPR"] | ["plu","REFPQ"] |
| R66 | plu | ["EFR","PRS","EPR","FRS","ERS","FPR"] | ["plu","REFPS"] |
| R67 | plu | ["EPR","HQR","EHR","PQR","EQR","HPR"] | ["plu","REHPQ"] |
| R68 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R69 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R70 | plu | ["BFS","HRS","BHS","FRS","BRS","FHS"] | ["plu","SBFHR"] |
| R71 | plu | ["BPS","HQS","BHS","PQS","BQS","HPS"] | ["plu","SBHPQ"] |
| R72 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R73 | plu | ["CRS","EHS","CES","HRS","CHS","ERS"] | ["plu","SCEHR"] |
| R74 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R75 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R76 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R77 | linear | [{"BEP":1,"BPQ":-1,"BEQ":-1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",1] |
| R78 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R79 | linear | [{"BFH":1,"BHP":-1,"BFP":-1,"FHP":-1},"0"] | ["affine_quad","BFHP",1] |
| R80 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R81 | linear | [{"BHP":-1,"BPQ":-1,"BHQ":1,"HPQ":-1},"0"] | ["affine_quad","BHPQ",1] |
| R82 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R83 | linear | [{"BPQ":-1,"BQR":-1,"BPR":1,"PQR":-1},"0"] | ["affine_quad","BPQR",1] |
| R84 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R85 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R86 | linear | [{"CEP":1,"CPQ":-1,"CEQ":-1,"EPQ":-1},"0"] | ["affine_quad","CEPQ",1] |
| R87 | linear | [{"CEP":1,"CPR":-1,"CER":1,"EPR":-1},"0"] | ["affine_quad","CEPR",1] |
| R88 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R89 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R90 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R91 | linear | [{"CHQ":-1,"CQR":-1,"CHR":1,"HQR":-1},"0"] | ["affine_quad","CHQR",1] |
| R92 | linear | [{"CHQ":-1,"CQS":-1,"CHS":1,"HQS":-1},"0"] | ["affine_quad","CHQS",1] |
| R93 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R94 | linear | [{"CPQ":-1,"CQR":-1,"CPR":1,"PQR":-1},"0"] | ["affine_quad","CPQR",1] |
| R95 | linear | [{"CPR":-1,"CRS":1,"CPS":1,"PRS":-1},"0"] | ["affine_quad","CPRS",1] |
| R96 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R97 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R98 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R99 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R100 | quad | ["CEH","CER","93/125"] | ["quad","CREH","QS"] |
| R101 | quad | ["CEP","CER","93/125"] | ["quad","CREP","QS"] |
| R102 | quad | ["CFS","CRS","449/1000"] | ["quad","CRSF","Q"] |
| R103 | quad | ["CPS","CRS","449/1000"] | ["quad","CRSP","Q"] |
| R104 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R105 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R106 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R107 | linear | [{"CFS":-3,"EFS":5,"FRS":-3},"0"] | ["barycentric","FS","S","CER","upper"] |
| R108 | linear | [{"CHS":-3,"EHS":5,"HRS":-3},"0"] | ["barycentric","HS","S","CER","upper"] |
| R109 | linear | [{"CPS":-3,"EPS":5,"PRS":-3},"0"] | ["barycentric","PS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s23 | R0 | sub | hi | BCP | 3263/10000 | hi_BCH,lo_BHP,lo_CHP |
| s44 | R5 | sub | hi | HPS | 470749/1000000 | hi_BHS,lo_BHP,lo_BPS |
| s60 | R6 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s72 | R7 | sub | hi | CQR | 10621/40000 | hi_CPR,lo_CPQ,lo_PQR |
| s77 | R9 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s91 | R11 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s92 | R12 | sumlo | lo | BQR | 143769/1000000 | lo_BEQ,lo_BHR,lo_BER,lo_BHQ,hi_BEH |
| s97 | R13 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s107 | R18 | sumlo | lo | CEH | 369673/1000000 | s97,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s108 | R19 | sumlo | lo | CEQ | 55899/500000 | s97,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s115 | R21 | sumlo | lo | EHS | 45391/250000 | s107,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s131 | R33 | sumlo | lo | HPS | 22079/125000 | lo_BHP,lo_CHS,lo_BHS,lo_CHP,hi_BCH |
| s133 | R35 | sumlo | lo | FHR | 143769/1000000 | lo_BFH,lo_EHR,lo_BHR,lo_EFH,hi_BEH |
| s134 | R36 | sumlo | lo | FHS | 727/6250 | lo_BFH,s115,lo_BHS,lo_EFH,hi_BEH |
| s142 | R43 | sumlo | lo | BCP | 110237/1000000 | lo_BHP,lo_CPS,lo_BPS,lo_CHP,s44 |
| s146 | R50 | sumlo | lo | EPQ | 34219/250000 | s108,lo_PQR,lo_CPQ,lo_EQR,s72 |
| s147 | R52 | sumlo | lo | BER | 177241/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_CHR |
| s148 | R52 | sumlo | lo | CHR | 168841/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_BER |
| s149 | R53 | sumlo | lo | CQR | 101591/1000000 | lo_BCR,lo_EQR,s92,lo_CER,hi_BER |
| s153 | R56 | sumlo | lo | BRS | 132959/1000000 | s147,lo_HRS,lo_BHR,lo_ERS,hi_EHR |
| s155 | R57 | sumlo | lo | HRS | 11667/125000 | lo_BHR,lo_FRS,s153,s133,hi_BFR |
| s165 | R68 | sumlo | lo | BES | 146597/1000000 | s91,lo_ERS,s153,lo_CES,s60 |
| s167 | R69 | sumlo | lo | BRS | 142909/1000000 | s165,s155,lo_BHS,lo_ERS,s77 |
| s169 | R70 | sumlo | lo | HRS | 12817/125000 | lo_BHS,lo_FRS,s167,s134,hi_BFS |
| s170 | R71 | sumlo | lo | HQS | 144169/1000000 | lo_BHS,lo_PQS,lo_BQS,s131,hi_BPS |
| s173 | R75 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s60 |
| s186 | R76 | linear | lo | BCH | 296237/1000000 | s142,lo_BHP,lo_CHP |
| s192 | R77 | linear | lo | BEP | 80719/250000 | lo_BEQ,lo_BPQ,s146 |
| s194 | R78 | linear | lo | BER | 191253/500000 | s165,s167,lo_ERS |
| s212 | R91 | linear | hi | HQR | 106207/250000 | lo_CHQ,hi_CHR,s149 |
| s213 | R92 | linear | lo | CHS | 330169/1000000 | lo_CHQ,lo_CQS,s170 |
| s219 | R97 | linear | hi | EHS | 107567/200000 | hi_EHR,lo_ERS,s169 |
| s221 | R99 | linear | lo | EQR | 76067/250000 | s173,lo_ERS,lo_QRS |
| s224 | R100 | quad | lo | CEH | 411739/1000000 | hi_CER |
| s225 | R101 | quad | lo | CEP | 411739/1000000 | hi_CER |
| s227 | R102 | quad | lo | CFS | 302739/1000000 | s60 |
| s228 | R103 | quad | lo | CPS | 302739/1000000 | s60 |
| s236 | R104 | bary_hi | lo | BES | 150017/1000000 | s97,s194 |
| s239 | R105 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s241 | R106 | bary_lo | hi | CHS | 300283/500000 | hi_CEH,hi_CHR |
| s248 | R107 | linear | lo | EFS | 237443/1000000 | s227,lo_FRS |
| s251 | R108 | linear | lo | EHS | 259623/1000000 | s213,s169 |
| s254 | R109 | linear | lo | EPS | 237443/1000000 | s228,lo_PRS |
| s257 | R1 | sub | hi | EHP | 7181/12500 | hi_BEH,s192,lo_BHP |
| s258 | R3 | sum | lo | BER | 192963/500000 | s236,s167,lo_ERS |
| s271 | R8 | sum | lo | EFR | 423443/1000000 | s248,lo_ERS,lo_FRS |
| s272 | R9 | sum | lo | EHR | 455159/1000000 | s251,lo_ERS,s169 |
| s273 | R10 | sum | lo | EPR | 423443/1000000 | s254,lo_ERS,lo_PRS |
| s278 | R11 | sumlo | lo | BCS | 11527/100000 | s186,s167,lo_BCR,lo_BHS,hi_BHR |
| s279 | R12 | sumlo | lo | BQR | 43473/250000 | lo_BEQ,lo_BHR,s258,lo_BHQ,hi_BEH |
| s284 | R13 | sumlo | lo | BCE | 781/4000 | s186,lo_CER,lo_BCR,s224,hi_CHR |
| s295 | R19 | sumlo | lo | CEQ | 32817/250000 | s284,s221,lo_BEQ,lo_CER,hi_BER |
| s299 | R22 | sumlo | lo | EQS | 60953/500000 | s295,lo_ERS,lo_CES,s221,hi_CER |
| s310 | R32 | sumlo | lo | HPR | 37457/200000 | lo_BHP,s148,lo_BHR,lo_CHP,hi_BCH |
| s313 | R35 | sumlo | lo | FHR | 48349/250000 | lo_BFH,s272,lo_BHR,lo_EFH,hi_BEH |
| s314 | R36 | sumlo | lo | FHS | 13831/100000 | lo_BFH,s251,lo_BHS,lo_EFH,hi_BEH |
| s320 | R41 | sumlo | lo | BCP | 118923/1000000 | s192,lo_CHP,lo_BHP,s225,s257 |
| s322 | R46 | sumlo | lo | EPQ | 172021/1000000 | s225,lo_PQR,lo_CPQ,s273,hi_CPR |
| s324 | R49 | sumlo | lo | BPQ | 99143/1000000 | lo_BHQ,lo_PQR,s279,lo_HPQ,s212 |
| s327 | R52 | sumlo | lo | CHR | 362877/1000000 | lo_BCR,s272,lo_BHR,lo_CER,hi_BER |
| s328 | R53 | sumlo | lo | CQR | 11813/100000 | lo_BCR,s221,s279,lo_CER,hi_BER |
| s332 | R57 | sumlo | lo | HRS | 20569/200000 | lo_BHR,lo_FRS,s167,s313,hi_BFR |
| s335 | R63 | sumlo | lo | FPR | 109901/500000 | s271,s310,s273,s313,hi_EHR |
| s337 | R65 | sumlo | lo | FQR | 84241/500000 | s271,lo_PQR,s221,s335,hi_EPR |
| s338 | R67 | sumlo | lo | HQR | 157471/1000000 | s272,lo_PQR,s221,s310,hi_EPR |
| s340 | R68 | sumlo | lo | BES | 164163/1000000 | s278,lo_ERS,s167,lo_CES,s60 |
| s342 | R69 | sumlo | lo | BRS | 75697/500000 | s340,s332,lo_BHS,lo_ERS,s219 |
| s343 | R69 | sumlo | lo | EHS | 150677/500000 | s340,s332,lo_BHS,lo_ERS,s239 |
| s344 | R70 | sumlo | lo | HRS | 107989/1000000 | lo_BHS,lo_FRS,s342,s314,hi_BFS |
| s346 | R72 | sumlo | lo | EFS | 25163/100000 | lo_CES,lo_FRS,s227,lo_ERS,s60 |
| s347 | R74 | sumlo | lo | EPS | 25163/100000 | lo_CES,lo_PRS,s228,lo_ERS,s60 |
| s368 | R76 | linear | lo | BCH | 304923/1000000 | s320,lo_BHP,lo_CHP |
| s371 | R77 | linear | lo | BEP | 91041/250000 | lo_BEQ,s324,s322 |
| s374 | R78 | linear | lo | BER | 408557/1000000 | s340,s342,lo_ERS |
| s377 | R81 | linear | lo | BHQ | 285143/1000000 | lo_BHP,s324,lo_HPQ |
| s388 | R85 | linear | lo | CEH | 19431/40000 | hi_CER,s327,s272 |
| s391 | R89 | linear | lo | CFR | 94903/250000 | lo_CFQ,s328,s337 |
| s393 | R90 | linear | lo | CFS | 326351/1000000 | s391,s60,lo_FRS |
| s395 | R91 | linear | lo | CHR | 368601/1000000 | lo_CHQ,s328,s338 |
| s396 | R91 | linear | hi | HQR | 408289/1000000 | lo_CHQ,hi_CHR,s328 |
| s403 | R96 | linear | lo | EFR | 43763/100000 | s346,lo_ERS,lo_FRS |
| s404 | R97 | linear | lo | EHR | 502343/1000000 | s343,lo_ERS,s344 |
| s405 | R97 | linear | hi | EHS | 266191/500000 | hi_EHR,lo_ERS,s344 |
| s406 | R98 | linear | lo | EPR | 43763/100000 | s347,lo_ERS,lo_PRS |
| s407 | R99 | linear | lo | EQR | 153953/500000 | s299,lo_ERS,lo_QRS |
| s412 | R104 | bary_hi | lo | BES | 82337/500000 | s284,s374 |
| s426 | R1 | sub | hi | EHP | 66649/125000 | hi_BEH,s371,lo_BHP |
| s428 | R3 | sum | lo | BER | 102267/250000 | s412,s342,lo_ERS |
| s438 | R12 | sumlo | lo | BQR | 182949/1000000 | lo_BEQ,lo_BHR,s428,s377,hi_BEH |
| s439 | R13 | sumlo | lo | BCE | 105139/500000 | s368,lo_CER,lo_BCR,s388,hi_CHR |
| s446 | R19 | sumlo | lo | CEQ | 139477/1000000 | s439,s407,lo_BEQ,lo_CER,hi_BER |
| s447 | R20 | sumlo | lo | BES | 34671/200000 | s439,lo_ERS,s428,lo_CES,hi_CER |
| s449 | R22 | sumlo | lo | EQS | 62611/500000 | s446,lo_ERS,lo_CES,s407,hi_CER |
| s459 | R30 | sumlo | lo | CFH | 87259/500000 | s368,s313,lo_BFH,s395,hi_BHR |
| s460 | R32 | sumlo | lo | HPR | 96449/500000 | lo_BHP,s395,lo_BHR,lo_CHP,hi_BCH |
| s464 | R35 | sumlo | lo | FHR | 206689/1000000 | lo_BFH,s404,lo_BHR,lo_EFH,hi_BEH |
| s465 | R36 | sumlo | lo | FHS | 150067/1000000 | lo_BFH,s343,lo_BHS,lo_EFH,hi_BEH |
| s471 | R41 | sumlo | lo | BCP | 135333/1000000 | s371,lo_CHP,lo_BHP,s225,s426 |
| s474 | R46 | sumlo | lo | EPQ | 174943/1000000 | s225,lo_PQR,lo_CPQ,s406,hi_CPR |
| s475 | R49 | sumlo | lo | BPQ | 106621/1000000 | s377,lo_PQR,s438,lo_HPQ,s396 |
| s478 | R52 | sumlo | lo | CHR | 184813/500000 | lo_BCR,s404,lo_BHR,lo_CER,hi_BER |
| s479 | R53 | sumlo | lo | CQR | 122537/1000000 | lo_BCR,s407,s438,lo_CER,hi_BER |
| s481 | R59 | sumlo | lo | CRS | 46533/500000 | lo_CER,lo_FRS,s391,lo_ERS,hi_EFR |
| s482 | R63 | sumlo | lo | FPR | 14903/62500 | s403,s460,s406,s464,hi_EHR |
| s484 | R65 | sumlo | lo | FQR | 36189/200000 | s403,lo_PQR,s407,s482,hi_EPR |
| s485 | R66 | sumlo | lo | PRS | 47767/500000 | s406,lo_FRS,lo_ERS,s482,hi_EFR |
| s486 | R67 | sumlo | lo | HQR | 168249/1000000 | s404,lo_PQR,s407,s460,hi_EPR |
| s488 | R69 | sumlo | lo | BRS | 39099/250000 | s447,s344,lo_BHS,lo_ERS,s405 |
| s489 | R69 | sumlo | lo | EHS | 308153/1000000 | s447,s344,lo_BHS,lo_ERS,s239 |
| s490 | R70 | sumlo | lo | HRS | 55593/500000 | lo_BHS,lo_FRS,s488,s465,hi_BFS |
| s492 | R72 | sumlo | lo | EFS | 66661/250000 | lo_CES,lo_FRS,s393,lo_ERS,s60 |
| s493 | R74 | sumlo | lo | EPS | 253241/1000000 | lo_CES,s485,s228,lo_ERS,s60 |
| s512 | R76 | linear | lo | BCH | 321333/1000000 | s471,lo_BHP,lo_CHP |
| s515 | R77 | linear | lo | BEP | 93641/250000 | lo_BEQ,s475,s474 |
| s518 | R78 | linear | lo | BER | 422751/1000000 | s447,s488,lo_ERS |
| s521 | R81 | linear | lo | BHQ | 292621/1000000 | lo_BHP,s475,lo_HPQ |
| s525 | R83 | linear | lo | BPR | 38257/100000 | s475,s438,lo_PQR |
| s532 | R85 | linear | lo | CEH | 134927/250000 | hi_CER,s478,s404 |
| s534 | R88 | linear | lo | CER | 139533/500000 | lo_CES,s481,lo_ERS |
| s538 | R89 | linear | lo | CFR | 198241/500000 | lo_CFQ,s479,s484 |
| s540 | R90 | linear | lo | CFS | 343221/1000000 | s538,s60,lo_FRS |
| s542 | R91 | linear | lo | CHR | 191893/500000 | lo_CHQ,s479,s486 |
| s543 | R91 | linear | hi | HQR | 201941/500000 | lo_CHQ,hi_CHR,s479 |
| s547 | R94 | linear | lo | CPR | 308537/1000000 | lo_CPQ,s479,lo_PQR |
| s551 | R96 | linear | lo | EFR | 113161/250000 | s492,lo_ERS,lo_FRS |
| s552 | R97 | linear | lo | EHR | 512339/1000000 | s489,lo_ERS,s490 |
| s553 | R97 | linear | hi | EHS | 105837/200000 | hi_EHR,lo_ERS,s490 |
| s554 | R98 | linear | lo | EPR | 17671/40000 | s493,lo_ERS,s485 |
| s556 | R99 | linear | lo | EQR | 155611/500000 | s449,lo_ERS,lo_QRS |
| s573 | R4 | sub | hi | HPR | 90323/200000 | hi_BHR,lo_BHP,s525 |
| s585 | R12 | sumlo | lo | BQR | 594/3125 | lo_BEQ,lo_BHR,s518,s521,hi_BEH |
| s589 | R13 | sumlo | lo | BCE | 112901/500000 | s512,s534,lo_BCR,s532,hi_CHR |
| s593 | R16 | sumlo | lo | CHQ | 96981/1000000 | s459,s479,lo_CFQ,s542,hi_CFR |
| s595 | R19 | sumlo | lo | CEQ | 147989/1000000 | s589,s556,lo_BEQ,s534,hi_BER |
| s596 | R20 | sumlo | lo | BES | 18153/100000 | s589,lo_ERS,s518,lo_CES,hi_CER |
| s598 | R22 | sumlo | lo | EQS | 128533/1000000 | s595,lo_ERS,lo_CES,s556,hi_CER |
| s607 | R30 | sumlo | lo | CFH | 187117/1000000 | s512,s464,lo_BFH,s542,hi_BHR |
| s612 | R35 | sumlo | lo | FHR | 41901/200000 | lo_BFH,s552,lo_BHR,lo_EFH,hi_BEH |
| s613 | R36 | sumlo | lo | FHS | 75991/500000 | lo_BFH,s489,lo_BHS,lo_EFH,hi_BEH |
| s621 | R41 | sumlo | lo | EHP | 224107/1000000 | s515,lo_CHP,lo_BHP,s225,s23 |
| s622 | R42 | sumlo | lo | BCP | 71159/500000 | lo_BHP,s547,s525,lo_CHP,s573 |
| s623 | R42 | sumlo | lo | HPR | 7879/40000 | lo_BHP,s547,s525,lo_CHP,s23 |
| s625 | R46 | sumlo | lo | EPQ | 175797/1000000 | s225,lo_PQR,lo_CPQ,s554,hi_CPR |
| s626 | R49 | sumlo | lo | BPQ | 111149/1000000 | s521,lo_PQR,s585,lo_HPQ,s543 |
| s629 | R53 | sumlo | lo | CQR | 12609/100000 | lo_BCR,s556,s585,s534,hi_BER |
| s631 | R59 | sumlo | lo | CRS | 95459/1000000 | s534,lo_FRS,s538,lo_ERS,hi_EFR |
| s632 | R63 | sumlo | lo | FPR | 123889/500000 | s551,s623,s554,s612,hi_EHR |
| s633 | R64 | sumlo | lo | FQR | 192753/1000000 | s551,s486,s556,s612,hi_EHR |
| s634 | R66 | sumlo | lo | PRS | 48719/500000 | s554,lo_FRS,lo_ERS,s632,hi_EFR |
| s635 | R67 | sumlo | lo | HQR | 172749/1000000 | s552,lo_PQR,s556,s623,hi_EPR |
| s637 | R69 | sumlo | lo | BRS | 32021/200000 | s596,s490,lo_BHS,lo_ERS,s553 |
| s638 | R69 | sumlo | lo | EHS | 9799/31250 | s596,s490,lo_BHS,lo_ERS,s239 |
| s639 | R70 | sumlo | lo | HRS | 28069/250000 | lo_BHS,lo_FRS,s637,s613,hi_BFS |
| s641 | R72 | sumlo | lo | EFS | 27737/100000 | lo_CES,lo_FRS,s540,lo_ERS,s60 |
| s642 | R74 | sumlo | lo | EPS | 63613/250000 | lo_CES,s634,s228,lo_ERS,s60 |
| s661 | R76 | linear | lo | BCH | 164159/500000 | s622,lo_BHP,lo_CHP |
| s664 | R77 | linear | lo | BEP | 189973/500000 | lo_BEQ,s626,s625 |
| s667 | R78 | linear | lo | BER | 86927/200000 | s596,s637,lo_ERS |
| s670 | R81 | linear | lo | BHQ | 297149/1000000 | lo_BHP,s626,lo_HPQ |
| s676 | R83 | linear | lo | BPR | 394229/1000000 | s626,s585,lo_PQR |
| s681 | R85 | linear | lo | CEH | 70483/125000 | hi_CER,s542,s552 |
| s684 | R87 | linear | lo | CEP | 418051/1000000 | hi_CER,s547,s554 |
| s685 | R88 | linear | lo | CER | 281459/1000000 | lo_CES,s631,lo_ERS |
| s689 | R89 | linear | lo | CFR | 411843/1000000 | lo_CFQ,s629,s633 |
| s691 | R90 | linear | lo | CFS | 179291/500000 | s689,s60,lo_FRS |
| s693 | R91 | linear | lo | CHR | 19791/50000 | s593,s629,s635 |
| s694 | R91 | linear | hi | HQR | 99087/250000 | s593,hi_CHR,s629 |
| s698 | R94 | linear | lo | CPR | 31209/100000 | lo_CPQ,s629,lo_PQR |
| s702 | R96 | linear | lo | EFR | 46337/100000 | s641,lo_ERS,lo_FRS |
| s703 | R97 | linear | lo | EHR | 129711/250000 | s638,lo_ERS,s639 |
| s704 | R97 | linear | hi | EHS | 105619/200000 | hi_EHR,lo_ERS,s639 |
| s705 | R98 | linear | lo | EPR | 44489/100000 | s642,lo_ERS,s634 |
| s707 | R99 | linear | lo | EQR | 314533/1000000 | s598,lo_ERS,lo_QRS |
| s726 | R1 | sum | lo | BEH | 697053/1000000 | s664,lo_BHP,s621 |
| s729 | R4 | sub | hi | HPR | 109989/250000 | hi_BHR,lo_BHP,s676 |
| s740 | R12 | sumlo | lo | BQR | 195579/1000000 | lo_BEQ,lo_BHR,s667,s670,hi_BEH |
| s745 | R13 | sumlo | lo | BCE | 58461/250000 | s661,s685,lo_BCR,s681,hi_CHR |
| s749 | R16 | sumlo | lo | CHQ | 25659/250000 | s607,s629,lo_CFQ,s693,hi_CFR |
| s751 | R19 | sumlo | lo | CEQ | 153371/1000000 | s745,s707,lo_BEQ,s685,hi_BER |
| s752 | R20 | sumlo | lo | BES | 187107/1000000 | s745,lo_ERS,s667,lo_CES,hi_CER |
| s754 | R22 | sumlo | lo | EQS | 65483/500000 | s751,lo_ERS,lo_CES,s707,hi_CER |
| s760 | R28 | sumlo | lo | EHP | 228899/1000000 | s726,lo_CHP,lo_BHP,s681,hi_BCH |
| s761 | R30 | sumlo | lo | CFH | 48323/250000 | s661,s612,lo_BFH,s693,hi_BHR |
| s766 | R35 | sumlo | lo | FHR | 211337/1000000 | lo_BFH,s703,lo_BHR,lo_EFH,hi_BEH |
| s767 | R36 | sumlo | lo | FHS | 153507/1000000 | lo_BFH,s638,lo_BHS,lo_EFH,hi_BEH |
| s778 | R42 | sumlo | lo | BCP | 29861/200000 | lo_BHP,s698,s676,lo_CHP,s729 |
| s779 | R42 | sumlo | lo | HPR | 20131/100000 | lo_BHP,s698,s676,lo_CHP,s23 |
| s781 | R46 | sumlo | lo | EPQ | 177739/1000000 | s684,lo_PQR,lo_CPQ,s705,hi_CPR |
| s782 | R49 | sumlo | lo | BPQ | 57807/500000 | s670,lo_PQR,s740,lo_HPQ,s694 |
| s785 | R53 | sumlo | lo | CQR | 129643/1000000 | lo_BCR,s707,s740,s685,hi_BER |
| s786 | R55 | sumlo | lo | BFR | 563743/1000000 | s667,s766,lo_BHR,s702,hi_EHR |
| s787 | R59 | sumlo | lo | CRS | 6123/62500 | s685,lo_FRS,s689,lo_ERS,hi_EFR |
| s789 | R63 | sumlo | lo | FPR | 255399/1000000 | s702,s779,s705,s766,hi_EHR |
| s790 | R64 | sumlo | lo | FQR | 49947/250000 | s702,s635,s707,s766,hi_EHR |
| s792 | R66 | sumlo | lo | PRS | 19791/200000 | s705,lo_FRS,lo_ERS,s789,hi_EFR |
| s793 | R67 | sumlo | lo | HQR | 35381/200000 | s703,lo_PQR,s707,s779,hi_EPR |
| s795 | R69 | sumlo | lo | BRS | 40499/250000 | s752,s639,lo_BHS,lo_ERS,s704 |
| s796 | R69 | sumlo | lo | EHS | 158309/500000 | s752,s639,lo_BHS,lo_ERS,s239 |
| s797 | R70 | sumlo | lo | HRS | 112951/1000000 | lo_BHS,lo_FRS,s795,s767,hi_BFS |
| s798 | R72 | sumlo | lo | EFS | 143569/500000 | lo_CES,lo_FRS,s691,lo_ERS,s60 |
| s799 | R74 | sumlo | lo | EPS | 31927/125000 | lo_CES,s792,s228,lo_ERS,s60 |
| s818 | R76 | linear | lo | BCH | 67061/200000 | s778,lo_BHP,lo_CHP |
| s822 | R77 | linear | lo | BEP | 386353/1000000 | lo_BEQ,s782,s781 |
| s825 | R78 | linear | lo | BER | 442103/1000000 | s752,s795,lo_ERS |
| s828 | R81 | linear | lo | BHQ | 150807/500000 | lo_BHP,s782,lo_HPQ |
| s833 | R83 | linear | lo | BPR | 404193/1000000 | s782,s740,lo_PQR |
| s839 | R85 | linear | lo | CEH | 582403/1000000 | hi_CER,s693,s703 |
| s842 | R87 | linear | lo | CEP | 424719/1000000 | hi_CER,s698,s705 |
| s843 | R88 | linear | lo | CER | 4437/15625 | lo_CES,s787,lo_ERS |
| s847 | R89 | linear | lo | CFR | 422431/1000000 | lo_CFQ,s785,s790 |
| s849 | R90 | linear | lo | CFS | 36917/100000 | s847,s60,lo_FRS |
| s851 | R91 | linear | lo | CHR | 12787/31250 | s749,s785,s793 |
| s852 | R91 | linear | hi | HQR | 19357/50000 | s749,hi_CHR,s785 |
| s855 | R94 | linear | lo | CPR | 315643/1000000 | lo_CPQ,s785,lo_PQR |
| s859 | R96 | linear | lo | EFR | 236569/500000 | s798,lo_ERS,lo_FRS |
| s860 | R97 | linear | lo | EHR | 522569/1000000 | s796,lo_ERS,s797 |
| s861 | R97 | linear | hi | EHS | 26371/50000 | hi_EHR,lo_ERS,s797 |
| s862 | R98 | linear | lo | EPR | 447371/1000000 | s799,lo_ERS,s792 |
| s864 | R99 | linear | lo | EQR | 158483/500000 | s754,lo_ERS,lo_QRS |
| s882 | R1 | sum | lo | BEH | 177063/250000 | s822,lo_BHP,s760 |
| s885 | R4 | sum | lo | BHR | 698503/1000000 | lo_BHP,s833,s779 |
| s886 | R4 | sub | hi | HPR | 53749/125000 | hi_BHR,lo_BHP,s833 |
| s897 | R12 | sumlo | lo | BQR | 50059/250000 | lo_BEQ,s885,s825,s828,hi_BEH |
| s901 | R13 | sumlo | lo | BCE | 6029/25000 | s818,s843,lo_BCR,s839,hi_CHR |
| s902 | R14 | sumlo | lo | BCF | 64423/250000 | s818,s847,lo_BCR,s761,hi_CHR |
| s905 | R16 | sumlo | lo | CHQ | 107237/1000000 | s761,s785,lo_CFQ,s851,hi_CFR |
| s907 | R19 | sumlo | lo | CEQ | 158171/1000000 | s901,s864,lo_BEQ,s843,hi_BER |
| s908 | R20 | sumlo | lo | BES | 38249/200000 | s901,lo_ERS,s825,lo_CES,hi_CER |
| s910 | R22 | sumlo | lo | EQS | 132991/1000000 | s907,lo_ERS,lo_CES,s864,hi_CER |
| s914 | R24 | sumlo | lo | BFQ | 2207/12500 | s902,s790,s786,lo_CFQ,hi_CFR |
| s918 | R28 | sumlo | lo | EHP | 117149/500000 | s882,lo_CHP,lo_BHP,s839,hi_BCH |
| s919 | R30 | sumlo | lo | CFH | 39911/200000 | s818,s766,lo_BFH,s851,hi_BHR |
| s923 | R35 | sumlo | lo | FHR | 212809/1000000 | lo_BFH,s860,s885,lo_EFH,hi_BEH |
| s924 | R36 | sumlo | lo | FHS | 154367/1000000 | lo_BFH,s796,lo_BHS,lo_EFH,hi_BEH |
| s935 | R42 | sumlo | lo | BCP | 19461/125000 | lo_BHP,s855,s833,lo_CHP,s886 |
| s936 | R42 | sumlo | lo | HPR | 205163/1000000 | lo_BHP,s855,s833,lo_CHP,s23 |
| s937 | R46 | sumlo | lo | EPQ | 179623/1000000 | s842,lo_PQR,lo_CPQ,s862,hi_CPR |
| s938 | R49 | sumlo | lo | BPQ | 30139/250000 | s828,lo_PQR,s897,lo_HPQ,s852 |
| s941 | R53 | sumlo | lo | CQR | 6639/50000 | lo_BCR,s864,s897,s843,hi_BER |
| s943 | R59 | sumlo | lo | CRS | 99819/1000000 | s843,lo_FRS,s847,lo_ERS,hi_EFR |
| s945 | R63 | sumlo | lo | FPR | 262179/1000000 | s859,s936,s862,s923,hi_EHR |
| s946 | R64 | sumlo | lo | FQR | 51527/250000 | s859,s793,s864,s923,hi_EHR |
| s948 | R66 | sumlo | lo | PRS | 12533/125000 | s862,lo_FRS,lo_ERS,s945,hi_EFR |
| s949 | R67 | sumlo | lo | HQR | 180167/1000000 | s860,lo_PQR,s864,s936,hi_EPR |
| s951 | R69 | sumlo | lo | BRS | 163329/1000000 | s908,s797,lo_BHS,lo_ERS,s861 |
| s952 | R69 | sumlo | lo | EHS | 63763/200000 | s908,s797,lo_BHS,lo_ERS,s239 |
| s953 | R70 | sumlo | lo | HRS | 113387/1000000 | lo_BHS,lo_FRS,s951,s924,hi_BFS |
| s954 | R72 | sumlo | lo | EFS | 29387/100000 | lo_CES,lo_FRS,s849,lo_ERS,s60 |
| s955 | R74 | sumlo | lo | EPS | 256249/1000000 | lo_CES,s948,s228,lo_ERS,s60 |
| s976 | R76 | linear | lo | BCH | 42711/125000 | s935,lo_BHP,lo_CHP |
| s980 | R77 | linear | lo | BEP | 393179/1000000 | lo_BEQ,s938,s937 |
| s983 | R78 | linear | lo | BER | 223787/500000 | s908,s951,lo_ERS |
| s986 | R80 | linear | lo | BFR | 72863/125000 | s914,s897,s946 |
| s987 | R81 | linear | lo | BHQ | 76639/250000 | lo_BHP,s938,lo_HPQ |
| s994 | R83 | linear | lo | BPR | 12931/31250 | s938,s897,lo_PQR |
| s1000 | R85 | linear | lo | CEH | 149873/250000 | hi_CER,s851,s860 |
| s1001 | R86 | linear | lo | CEP | 215397/500000 | s907,lo_CPQ,s937 |
| s1004 | R88 | linear | lo | CER | 285819/1000000 | lo_CES,s943,lo_ERS |
| s1008 | R89 | linear | lo | CFR | 26993/62500 | lo_CFQ,s941,s946 |
| s1010 | R90 | linear | lo | CFS | 378627/1000000 | s1008,s60,lo_FRS |
| s1012 | R91 | linear | lo | CHR | 52523/125000 | s905,s941,s949 |
| s1013 | R91 | linear | hi | HQR | 189701/500000 | s905,hi_CHR,s941 |
| s1016 | R94 | linear | lo | CPR | 15939/50000 | lo_CPQ,s941,lo_PQR |
| s1020 | R96 | linear | lo | EFR | 47987/100000 | s954,lo_ERS,lo_FRS |
| s1021 | R97 | linear | lo | EHR | 262601/500000 | s952,lo_ERS,s953 |
| s1022 | R97 | linear | hi | EHS | 65873/125000 | hi_EHR,lo_ERS,s953 |
| s1023 | R98 | linear | lo | EPR | 449513/1000000 | s955,lo_ERS,s948 |
| s1025 | R99 | linear | lo | EQR | 318991/1000000 | s910,lo_ERS,lo_QRS |
| s1044 | R1 | sum | lo | BEH | 720477/1000000 | s980,lo_BHP,s918 |
| s1047 | R4 | sum | lo | BHR | 142391/200000 | lo_BHP,s994,s936 |
| s1048 | R4 | sub | hi | HPR | 420393/1000000 | hi_BHR,lo_BHP,s994 |
| s1059 | R12 | sumlo | lo | BQR | 205399/1000000 | lo_BEQ,s1047,s983,s987,hi_BEH |
| s1064 | R13 | sumlo | lo | BCE | 247673/1000000 | s976,s1004,lo_BCR,s1000,hi_CHR |
| s1065 | R14 | sumlo | lo | BCF | 134101/500000 | s976,s1008,lo_BCR,s919,hi_CHR |
| s1068 | R16 | sumlo | lo | CHQ | 111419/1000000 | s919,s941,lo_CFQ,s1012,hi_CFR |
| s1070 | R19 | sumlo | lo | CEQ | 81191/500000 | s1064,s1025,lo_BEQ,s1004,hi_BER |
| s1071 | R20 | sumlo | lo | BES | 973/5000 | s1064,lo_ERS,s983,lo_CES,hi_CER |
| s1072 | R22 | sumlo | lo | EQS | 8421/62500 | s1070,lo_ERS,lo_CES,s1025,hi_CER |
| s1076 | R24 | sumlo | lo | BFQ | 46509/250000 | s1065,s946,s986,lo_CFQ,hi_CFR |
| s1080 | R28 | sumlo | lo | EHP | 239619/1000000 | s1044,lo_CHP,lo_BHP,s1000,hi_BCH |
| s1081 | R30 | sumlo | lo | CFH | 102431/500000 | s976,s923,lo_BFH,s1012,hi_BHR |
| s1085 | R35 | sumlo | lo | FHR | 107407/500000 | lo_BFH,s1021,s1047,lo_EFH,hi_BEH |
| s1086 | R36 | sumlo | lo | FHS | 77493/500000 | lo_BFH,s952,lo_BHS,lo_EFH,hi_BEH |
| s1097 | R42 | sumlo | lo | BCP | 8103/50000 | lo_BHP,s1016,s994,lo_CHP,s1048 |
| s1098 | R42 | sumlo | lo | HPR | 208793/1000000 | lo_BHP,s1016,s994,lo_CHP,s23 |
| s1099 | R46 | sumlo | lo | EPQ | 36263/200000 | s1001,lo_PQR,lo_CPQ,s1023,hi_CPR |
| s1100 | R49 | sumlo | lo | BPQ | 125491/1000000 | s987,lo_PQR,s1059,lo_HPQ,s1013 |
| s1103 | R53 | sumlo | lo | CQR | 135909/1000000 | lo_BCR,s1025,s1059,s1004,hi_BER |
| s1105 | R59 | sumlo | lo | CRS | 101417/1000000 | s1004,lo_FRS,s1008,lo_ERS,hi_EFR |
| s1107 | R63 | sumlo | lo | FPR | 4192/15625 | s1020,s1098,s1023,s1085,hi_EHR |
| s1108 | R64 | sumlo | lo | FQR | 105663/500000 | s1020,s949,s1025,s1085,hi_EHR |
| s1110 | R66 | sumlo | lo | PRS | 10143/100000 | s1023,lo_FRS,lo_ERS,s1107,hi_EFR |
| s1111 | R67 | sumlo | lo | HQR | 3661/20000 | s1021,lo_PQR,s1025,s1098,hi_EPR |
| s1113 | R69 | sumlo | lo | BRS | 20543/125000 | s1071,s953,lo_BHS,lo_ERS,s1022 |
| s1114 | R69 | sumlo | lo | EHS | 80133/250000 | s1071,s953,lo_BHS,lo_ERS,s239 |
| s1115 | R70 | sumlo | lo | HRS | 56857/500000 | lo_BHS,lo_FRS,s1113,s1086,hi_BFS |
| s1116 | R72 | sumlo | lo | EFS | 299883/1000000 | lo_CES,lo_FRS,s1010,lo_ERS,s60 |
| s1117 | R74 | sumlo | lo | EPS | 25699/100000 | lo_CES,s1110,s228,lo_ERS,s60 |
| s1139 | R76 | linear | lo | BCH | 17403/50000 | s1097,lo_BHP,lo_CHP |
| s1143 | R77 | linear | lo | BEP | 199903/500000 | lo_BEQ,s1100,s1099 |
| s1146 | R78 | linear | lo | BER | 56493/125000 | s1071,s1113,lo_ERS |
| s1149 | R80 | linear | lo | BFR | 602761/1000000 | s1076,s1059,s1108 |
| s1150 | R81 | linear | lo | BHQ | 311491/1000000 | lo_BHP,s1100,lo_HPQ |
| s1157 | R83 | linear | lo | BPR | 42389/100000 | s1100,s1059,lo_PQR |
| s1163 | R85 | linear | lo | CEH | 981/1600 | hi_CER,s1012,s1021 |
| s1164 | R86 | linear | lo | CEP | 436697/1000000 | s1070,lo_CPQ,s1099 |
| s1167 | R88 | linear | lo | CER | 287417/1000000 | lo_CES,s1105,lo_ERS |
| s1171 | R89 | linear | lo | CFR | 88047/200000 | lo_CFQ,s1103,s1108 |
| s1173 | R90 | linear | lo | CFS | 193487/500000 | s1171,s60,lo_FRS |
| s1175 | R91 | linear | lo | CHR | 215189/500000 | s1068,s1103,s1111 |
| s1176 | R91 | linear | hi | HQR | 372091/1000000 | s1068,hi_CHR,s1103 |
| s1177 | R93 | linear | lo | CHS | 397831/1000000 | s1175,s60,s1115 |
| s1179 | R94 | linear | lo | CPR | 321909/1000000 | lo_CPQ,s1103,lo_PQR |
| s1183 | R96 | linear | lo | EFR | 485883/1000000 | s1116,lo_ERS,lo_FRS |
| s1184 | R97 | linear | lo | EHR | 263623/500000 | s1114,lo_ERS,s1115 |
| s1185 | R97 | linear | hi | EHS | 526657/1000000 | hi_EHR,lo_ERS,s1115 |
| s1186 | R98 | linear | lo | EPR | 22571/50000 | s1117,lo_ERS,s1110 |
| s1188 | R99 | linear | lo | EQR | 10023/31250 | s1072,lo_ERS,lo_QRS |
| s1207 | R1 | sum | lo | BEH | 29297/40000 | s1143,lo_BHP,s1080 |
| s1210 | R4 | sum | lo | BHR | 725683/1000000 | lo_BHP,s1157,s1098 |
| s1211 | R4 | sub | hi | HPR | 82059/200000 | hi_BHR,lo_BHP,s1157 |
| s1221 | R12 | sumlo | lo | BQR | 210293/1000000 | lo_BEQ,s1210,s1146,s1150,hi_BEH |
| s1225 | R13 | sumlo | lo | BCE | 126779/500000 | s1139,s1167,lo_BCR,s1163,hi_CHR |
| s1226 | R14 | sumlo | lo | BCF | 69533/250000 | s1139,s1171,lo_BCR,s1081,hi_CHR |
| s1229 | R16 | sumlo | lo | CHQ | 28829/250000 | s1081,s1103,lo_CFQ,s1175,hi_CFR |
| s1232 | R19 | sumlo | lo | CEQ | 83089/500000 | s1225,s1188,lo_BEQ,s1167,hi_BER |
| s1233 | R20 | sumlo | lo | BES | 19747/100000 | s1225,lo_ERS,s1146,lo_CES,hi_CER |
| s1234 | R22 | sumlo | lo | EQS | 136287/1000000 | s1232,lo_ERS,lo_CES,s1188,hi_CER |
| s1237 | R24 | sumlo | lo | BFQ | 195117/1000000 | s1226,s1108,s1149,lo_CFQ,hi_CFR |
| s1241 | R28 | sumlo | lo | EHP | 244263/1000000 | s1207,lo_CHP,lo_BHP,s1163,hi_BCH |
| s1242 | R30 | sumlo | lo | CFH | 42029/200000 | s1139,s1085,lo_BFH,s1175,hi_BHR |
| s1246 | R35 | sumlo | lo | FHR | 216679/1000000 | lo_BFH,s1184,s1210,lo_EFH,hi_BEH |
| s1257 | R42 | sumlo | lo | BCP | 169047/1000000 | lo_BHP,s1179,s1157,lo_CHP,s1211 |
| s1258 | R42 | sumlo | lo | HPR | 212563/1000000 | lo_BHP,s1179,s1157,lo_CHP,s23 |
| s1259 | R46 | sumlo | lo | EPQ | 45731/250000 | s1164,lo_PQR,lo_CPQ,s1186,hi_CPR |
| s1260 | R49 | sumlo | lo | BPQ | 65207/500000 | s1150,lo_PQR,s1221,lo_HPQ,s1176 |
| s1263 | R53 | sumlo | lo | CQR | 138827/1000000 | lo_BCR,s1188,s1221,s1167,hi_BER |
| s1265 | R57 | sumlo | lo | HRS | 57513/500000 | s1210,lo_FRS,s1113,s1246,hi_BFR |
| s1266 | R59 | sumlo | lo | CRS | 51411/500000 | s1167,lo_FRS,s1171,lo_ERS,hi_EFR |
| s1268 | R63 | sumlo | lo | FPR | 54841/200000 | s1183,s1258,s1186,s1246,hi_EHR |
| s1269 | R64 | sumlo | lo | FQR | 5401/25000 | s1183,s1111,s1188,s1246,hi_EHR |
| s1271 | R66 | sumlo | lo | PRS | 12817/125000 | s1186,lo_FRS,lo_ERS,s1268,hi_EFR |
| s1272 | R67 | sumlo | lo | HQR | 92923/500000 | s1184,lo_PQR,s1188,s1258,hi_EPR |
| s1275 | R69 | sumlo | lo | BRS | 165679/1000000 | s1233,s1265,lo_BHS,lo_ERS,s1185 |
| s1277 | R72 | sumlo | lo | EFS | 305191/1000000 | lo_CES,lo_FRS,s1173,lo_ERS,s60 |
| s1278 | R73 | sumlo | lo | EHS | 326099/1000000 | lo_CES,s1265,s1177,lo_ERS,s60 |
| s1279 | R74 | sumlo | lo | EPS | 257693/1000000 | lo_CES,s1271,s228,lo_ERS,s60 |
| s1300 | R76 | linear | lo | BCH | 355047/1000000 | s1257,lo_BHP,lo_CHP |
| s1304 | R77 | linear | lo | BEP | 203169/500000 | lo_BEQ,s1260,s1259 |
| s1307 | R78 | linear | lo | BER | 456149/1000000 | s1233,s1275,lo_ERS |
| s1310 | R80 | linear | lo | BFR | 12429/20000 | s1237,s1221,s1269 |
| s1311 | R81 | linear | lo | BHQ | 158207/500000 | lo_BHP,s1260,lo_HPQ |
| s1319 | R83 | linear | lo | BPR | 433707/1000000 | s1260,s1221,lo_PQR |
| s1325 | R85 | linear | lo | CEH | 625363/1000000 | hi_CER,s1175,s1184 |
| s1326 | R86 | linear | lo | CEP | 221051/500000 | s1232,lo_CPQ,s1259 |
| s1329 | R88 | linear | lo | CER | 144411/500000 | lo_CES,s1266,lo_ERS |
| s1333 | R89 | linear | lo | CFR | 447867/1000000 | lo_CFQ,s1263,s1269 |
| s1335 | R90 | linear | lo | CFS | 197303/500000 | s1333,s60,lo_FRS |
| s1337 | R91 | linear | lo | CHR | 439989/1000000 | s1229,s1263,s1272 |
| s1338 | R91 | linear | hi | HQR | 91319/250000 | s1229,hi_CHR,s1263 |
| s1339 | R93 | linear | lo | CHS | 204377/500000 | s1337,s60,s1265 |
| s1341 | R94 | linear | lo | CPR | 324827/1000000 | lo_CPQ,s1263,lo_PQR |
| s1345 | R96 | linear | lo | EFR | 491191/1000000 | s1277,lo_ERS,lo_FRS |
| s1346 | R97 | linear | lo | EHR | 4273/8000 | s1278,lo_ERS,s1265 |
| s1347 | R97 | linear | hi | EHS | 105069/200000 | hi_EHR,lo_ERS,s1265 |
| s1348 | R98 | linear | lo | EPR | 453229/1000000 | s1279,lo_ERS,s1271 |
| s1350 | R99 | linear | lo | EQR | 322287/1000000 | s1234,lo_ERS,lo_QRS |
| s1370 | R1 | sum | lo | BEH | 743601/1000000 | s1304,lo_BHP,s1241 |
| s1373 | R4 | sum | lo | BHR | 73927/100000 | lo_BHP,s1319,s1258 |
| s1374 | R4 | sub | hi | HPR | 200239/500000 | hi_BHR,lo_BHP,s1319 |
| s1385 | R12 | sumlo | lo | BQR | 215159/1000000 | lo_BEQ,s1373,s1307,s1311,hi_BEH |
| s1391 | R13 | sumlo | lo | BCE | 259443/1000000 | s1300,s1329,lo_BCR,s1325,hi_CHR |
| s1392 | R14 | sumlo | lo | BCF | 144133/500000 | s1300,s1333,lo_BCR,s1242,hi_CHR |
| s1394 | R15 | sumlo | lo | CFP | 44361/250000 | s1242,s1341,s1333,lo_CHP,hi_CHR |
| s1395 | R16 | sumlo | lo | CHQ | 119097/1000000 | s1242,s1263,lo_CFQ,s1337,hi_CFR |
| s1396 | R17 | sumlo | lo | CPQ | 18637/200000 | s1394,s1263,lo_CFQ,s1341,hi_CFR |
| s1399 | R19 | sumlo | lo | CEQ | 1699/10000 | s1391,s1350,lo_BEQ,s1329,hi_BER |
| s1400 | R20 | sumlo | lo | BES | 100147/500000 | s1391,lo_ERS,s1307,lo_CES,hi_CER |
| s1401 | R22 | sumlo | lo | EQS | 137763/1000000 | s1399,lo_ERS,lo_CES,s1350,hi_CER |
| s1404 | R24 | sumlo | lo | BFQ | 102009/500000 | s1392,s1269,s1310,lo_CFQ,hi_CFR |
| s1405 | R25 | sumlo | lo | FHR | 217379/1000000 | lo_BFH,s1345,s1310,lo_EFH,hi_BEF |
| s1409 | R28 | sumlo | lo | EHP | 248513/1000000 | s1370,lo_CHP,lo_BHP,s1325,hi_BCH |
| s1410 | R30 | sumlo | lo | CFH | 107819/500000 | s1300,s1405,lo_BFH,s1337,hi_BHR |
| s1414 | R35 | sumlo | lo | FHR | 219893/1000000 | lo_BFH,s1346,s1373,lo_EFH,hi_BEH |
| s1424 | R42 | sumlo | lo | BCP | 44037/250000 | lo_BHP,s1341,s1319,lo_CHP,s1374 |
| s1425 | R42 | sumlo | lo | HPR | 3378/15625 | lo_BHP,s1341,s1319,lo_CHP,s23 |
| s1426 | R46 | sumlo | lo | EPQ | 46149/250000 | s1326,lo_PQR,s1396,s1348,hi_CPR |
| s1427 | R49 | sumlo | lo | BPQ | 135339/1000000 | s1311,lo_PQR,s1385,lo_HPQ,s1338 |
| s1430 | R53 | sumlo | lo | CQR | 4427/31250 | lo_BCR,s1350,s1385,s1329,hi_BER |
| s1432 | R57 | sumlo | lo | HRS | 117353/1000000 | s1373,lo_FRS,s1275,s1414,hi_BFR |
| s1433 | R59 | sumlo | lo | CRS | 104099/1000000 | s1329,lo_FRS,s1333,lo_ERS,hi_EFR |
| s1435 | R63 | sumlo | lo | FPR | 140347/500000 | s1345,s1425,s1348,s1414,hi_EHR |
| s1436 | R64 | sumlo | lo | FQR | 55277/250000 | s1345,s1272,s1350,s1414,hi_EHR |
| s1438 | R66 | sumlo | lo | PRS | 25927/250000 | s1348,lo_FRS,lo_ERS,s1435,hi_EFR |
| s1439 | R67 | sumlo | lo | HQR | 94619/500000 | s1346,lo_PQR,s1350,s1425,hi_EPR |
| s1444 | R69 | sumlo | lo | BRS | 83799/500000 | s1400,s1432,lo_BHS,lo_ERS,s1347 |
| s1445 | R72 | sumlo | lo | EFS | 77511/250000 | lo_CES,lo_FRS,s1335,lo_ERS,s60 |
| s1446 | R73 | sumlo | lo | EHS | 83631/250000 | lo_CES,s1432,s1339,lo_ERS,s60 |
| s1447 | R74 | sumlo | lo | EPS | 258439/1000000 | lo_CES,s1438,s228,lo_ERS,s60 |
| s1467 | R76 | linear | lo | BCH | 90537/250000 | s1424,lo_BHP,lo_CHP |
| s1472 | R77 | linear | lo | BEP | 82587/200000 | lo_BEQ,s1427,s1426 |
| s1475 | R78 | linear | lo | BER | 115223/250000 | s1400,s1444,lo_ERS |
| s1478 | R80 | linear | lo | BFR | 128057/200000 | s1404,s1385,s1436 |
| s1480 | R81 | linear | lo | BHQ | 321339/1000000 | lo_BHP,s1427,lo_HPQ |
| s1481 | R82 | linear | hi | BPR | 617993/1000000 | lo_BHP,hi_BHR,s1425 |
| s1488 | R83 | linear | lo | BPR | 221749/500000 | s1427,s1385,lo_PQR |
| s1494 | R85 | linear | lo | CEH | 641853/1000000 | hi_CER,s1337,s1346 |
| s1495 | R86 | linear | lo | CEP | 447681/1000000 | s1399,s1396,s1426 |
| s1498 | R88 | linear | lo | CER | 290099/1000000 | lo_CES,s1433,lo_ERS |
| s1502 | R89 | linear | lo | CFR | 113943/250000 | lo_CFQ,s1430,s1436 |
| s1504 | R90 | linear | lo | CFS | 402511/1000000 | s1502,s60,lo_FRS |
| s1506 | R91 | linear | lo | CHR | 449999/1000000 | s1395,s1430,s1439 |
| s1507 | R91 | linear | hi | HQR | 179329/500000 | s1395,hi_CHR,s1430 |
| s1508 | R93 | linear | lo | CHS | 421091/1000000 | s1506,s60,s1432 |
| s1511 | R94 | linear | lo | CPR | 327849/1000000 | s1396,s1430,lo_PQR |
| s1516 | R96 | linear | lo | EFR | 124011/250000 | s1445,lo_ERS,lo_FRS |
| s1517 | R97 | linear | lo | EHR | 544877/1000000 | s1446,lo_ERS,s1432 |
| s1518 | R97 | linear | hi | EHS | 261509/500000 | hi_EHR,lo_ERS,s1432 |
| s1519 | R98 | linear | lo | EPR | 455147/1000000 | s1447,lo_ERS,s1438 |
| s1521 | R99 | linear | lo | EQR | 323763/1000000 | s1401,lo_ERS,lo_QRS |
| s1540 | R1 | sum | lo | BEH | 47153/62500 | s1472,lo_BHP,s1409 |
| s1544 | R4 | sum | lo | BHR | 75269/100000 | lo_BHP,s1488,s1425 |
| s1545 | R4 | sub | hi | HPR | 390687/1000000 | hi_BHR,lo_BHP,s1488 |
| s1555 | R12 | sumlo | lo | BQR | 110113/500000 | lo_BEQ,s1544,s1475,s1480,hi_BEH |
| s1561 | R13 | sumlo | lo | BCE | 265977/1000000 | s1467,s1498,lo_BCR,s1494,hi_CHR |
| s1562 | R14 | sumlo | lo | BCF | 298847/1000000 | s1467,s1502,lo_BCR,s1410,hi_CHR |
| s1564 | R15 | sumlo | lo | CFP | 45641/250000 | s1410,s1511,s1502,lo_CHP,hi_CHR |
| s1565 | R16 | sumlo | lo | CHQ | 61507/500000 | s1410,s1430,lo_CFQ,s1506,hi_CFR |
| s1566 | R17 | sumlo | lo | CPQ | 95751/1000000 | s1564,s1430,lo_CFQ,s1511,hi_CFR |
| s1569 | R19 | sumlo | lo | CEQ | 6957/40000 | s1561,s1521,lo_BEQ,s1498,hi_BER |
| s1570 | R20 | sumlo | lo | BES | 203451/1000000 | s1561,lo_ERS,s1475,lo_CES,hi_CER |
| s1571 | R22 | sumlo | lo | EQS | 139303/1000000 | s1569,lo_ERS,lo_CES,s1521,hi_CER |
| s1574 | R24 | sumlo | lo | BFQ | 53363/250000 | s1562,s1436,s1478,lo_CFQ,hi_CFR |
| s1575 | R25 | sumlo | lo | FHR | 55211/250000 | lo_BFH,s1516,s1478,lo_EFH,hi_BEF |
| s1579 | R28 | sumlo | lo | EHP | 63369/250000 | s1540,lo_CHP,lo_BHP,s1494,hi_BCH |
| s1580 | R30 | sumlo | lo | CFH | 55417/250000 | s1467,s1575,lo_BFH,s1506,hi_BHR |
| s1584 | R35 | sumlo | lo | FHR | 112091/500000 | lo_BFH,s1517,s1544,lo_EFH,hi_BEH |
| s1595 | R42 | sumlo | lo | BCP | 183613/1000000 | lo_BHP,s1511,s1488,lo_CHP,s1545 |
| s1596 | R42 | sumlo | lo | HPR | 54961/250000 | lo_BHP,s1511,s1488,lo_CHP,s23 |
| s1597 | R46 | sumlo | lo | EPQ | 188727/1000000 | s1495,lo_PQR,s1566,s1519,hi_CPR |
| s1598 | R49 | sumlo | lo | BPQ | 140427/1000000 | s1480,lo_PQR,s1555,lo_HPQ,s1507 |
| s1601 | R53 | sumlo | lo | CQR | 72279/500000 | lo_BCR,s1521,s1555,s1498,hi_BER |
| s1603 | R56 | sumlo | lo | BRS | 169201/1000000 | s1475,s1432,s1544,lo_ERS,hi_EHR |
| s1604 | R57 | sumlo | lo | HRS | 120419/1000000 | s1544,lo_FRS,s1603,s1584,hi_BFR |
| s1605 | R58 | sumlo | lo | HQR | 191613/1000000 | s1544,lo_PQR,s1555,s1596,s1481 |
| s1606 | R59 | sumlo | lo | CRS | 105397/1000000 | s1498,lo_FRS,s1502,lo_ERS,hi_EFR |
| s1608 | R63 | sumlo | lo | FPR | 35979/125000 | s1516,s1596,s1519,s1584,hi_EHR |
| s1609 | R64 | sumlo | lo | FQR | 9143/40000 | s1516,s1605,s1521,s1584,hi_EHR |
| s1612 | R66 | sumlo | lo | PRS | 26247/250000 | s1519,lo_FRS,lo_ERS,s1608,hi_EFR |
| s1613 | R67 | sumlo | lo | HQR | 48301/250000 | s1517,lo_PQR,s1521,s1596,hi_EPR |
| s1617 | R69 | sumlo | lo | BRS | 34049/200000 | s1570,s1604,lo_BHS,lo_ERS,s1518 |
| s1619 | R72 | sumlo | lo | EFS | 31507/100000 | lo_CES,lo_FRS,s1504,lo_ERS,s60 |
| s1620 | R73 | sumlo | lo | EHS | 172159/500000 | lo_CES,s1604,s1508,lo_ERS,s60 |
| s1621 | R74 | sumlo | lo | EPS | 259253/1000000 | lo_CES,s1612,s228,lo_ERS,s60 |
| s1644 | R76 | linear | lo | BCH | 369613/1000000 | s1595,lo_BHP,lo_CHP |
| s1651 | R77 | linear | lo | BEP | 211077/500000 | lo_BEQ,s1598,s1597 |
| s1654 | R78 | linear | lo | BER | 58337/125000 | s1570,s1617,lo_ERS |
| s1657 | R80 | linear | lo | BFR | 662253/1000000 | s1574,s1555,s1609 |
| s1659 | R81 | linear | lo | BHQ | 326427/1000000 | lo_BHP,s1598,lo_HPQ |
| s1660 | R82 | linear | hi | BPR | 614341/1000000 | lo_BHP,hi_BHR,s1596 |
| s1667 | R83 | linear | lo | BPR | 453653/1000000 | s1598,s1555,lo_PQR |
| s1673 | R84 | linear | lo | CEF | 123911/200000 | hi_CER,s1502,s1516 |
| s1674 | R85 | linear | lo | CEH | 132523/200000 | hi_CER,s1506,s1517 |
| s1677 | R88 | linear | lo | CER | 291397/1000000 | lo_CES,s1606,lo_ERS |
| s1681 | R89 | linear | lo | CFR | 466133/1000000 | lo_CFQ,s1601,s1609 |
| s1682 | R89 | linear | hi | FQR | 5484/15625 | lo_CFQ,hi_CFR,s1601 |
| s1683 | R90 | linear | lo | CFS | 51609/125000 | s1681,s60,lo_FRS |
| s1685 | R91 | linear | lo | CHR | 57597/125000 | s1565,s1601,s1613 |
| s1686 | R91 | linear | hi | HQR | 351847/1000000 | s1565,hi_CHR,s1601 |
| s1687 | R93 | linear | lo | CHS | 217467/500000 | s1685,s60,s1604 |
| s1690 | R94 | linear | lo | CPR | 333309/1000000 | s1566,s1601,lo_PQR |
| s1695 | R96 | linear | lo | EFR | 50107/100000 | s1619,lo_ERS,lo_FRS |
| s1696 | R97 | linear | lo | EHR | 557737/1000000 | s1620,lo_ERS,s1604 |
| s1698 | R98 | linear | lo | EPR | 457241/1000000 | s1621,lo_ERS,s1612 |
| s1700 | R99 | linear | lo | EQR | 325303/1000000 | s1571,lo_ERS,lo_QRS |
| s1719 | R1 | sum | lo | BEH | 76863/100000 | s1651,lo_BHP,s1579 |
| s1723 | R4 | sum | lo | BHR | 766497/1000000 | lo_BHP,s1667,s1596 |
| s1724 | R4 | sub | hi | HPR | 95133/250000 | hi_BHR,lo_BHP,s1667 |
| s1734 | R12 | sumlo | lo | BQR | 56451/250000 | lo_BEQ,s1723,s1654,s1659,hi_BEH |
| s1739 | R13 | sumlo | lo | BCE | 54673/200000 | s1644,s1677,lo_BCR,s1674,hi_CHR |
| s1740 | R14 | sumlo | lo | BCF | 311427/1000000 | s1644,s1681,lo_BCR,s1580,hi_CHR |
| s1743 | R15 | sumlo | lo | CFP | 37853/200000 | s1580,s1690,s1681,lo_CHP,hi_CHR |
| s1744 | R16 | sumlo | lo | CHQ | 63629/500000 | s1580,s1601,lo_CFQ,s1685,hi_CFR |
| s1745 | R17 | sumlo | lo | CPQ | 99157/1000000 | s1743,s1601,lo_CFQ,s1690,hi_CFR |
| s1748 | R19 | sumlo | lo | CEQ | 178437/1000000 | s1739,s1700,lo_BEQ,s1677,hi_BER |
| s1749 | R20 | sumlo | lo | BES | 207143/1000000 | s1739,lo_ERS,s1654,lo_CES,hi_CER |
| s1750 | R22 | sumlo | lo | EQS | 140997/1000000 | s1748,lo_ERS,lo_CES,s1700,hi_CER |
| s1753 | R24 | sumlo | lo | BFQ | 225601/1000000 | s1740,s1609,s1657,lo_CFQ,hi_CFR |
| s1754 | R25 | sumlo | lo | FHR | 14043/62500 | lo_BFH,s1695,s1657,lo_EFH,hi_BEF |
| s1755 | R26 | sumlo | lo | EFQ | 159901/500000 | s1673,s1609,lo_CFQ,s1695,hi_CFR |
| s1756 | R27 | sumlo | lo | FPQ | 11899/100000 | s1743,s1609,lo_CFQ,s1608,hi_CFR |
| s1759 | R28 | sumlo | lo | EHP | 259819/1000000 | s1719,lo_CHP,lo_BHP,s1674,hi_BCH |
| s1760 | R30 | sumlo | lo | CFH | 114111/500000 | s1644,s1754,lo_BFH,s1685,hi_BHR |
| s1764 | R35 | sumlo | lo | FHR | 114551/500000 | lo_BFH,s1696,s1723,lo_EFH,hi_BEH |
| s1775 | R42 | sumlo | lo | BCP | 192329/1000000 | lo_BHP,s1690,s1667,lo_CHP,s1724 |
| s1776 | R42 | sumlo | lo | HPR | 44859/200000 | lo_BHP,s1690,s1667,lo_CHP,s23 |
| s1779 | R49 | sumlo | lo | BPQ | 29193/200000 | s1659,lo_PQR,s1734,lo_HPQ,s1686 |
| s1780 | R51 | sumlo | lo | EPQ | 7801/40000 | s1755,lo_PQR,s1700,s1756,s1682 |
| s1783 | R53 | sumlo | lo | CQR | 73859/500000 | lo_BCR,s1700,s1734,s1677,hi_BER |
| s1785 | R56 | sumlo | lo | BRS | 173831/1000000 | s1654,s1604,s1723,lo_ERS,hi_EHR |
| s1786 | R57 | sumlo | lo | HRS | 30991/250000 | s1723,lo_FRS,s1785,s1764,hi_BFR |
| s1787 | R58 | sumlo | lo | HQR | 99237/500000 | s1723,lo_PQR,s1734,s1776,s1660 |
| s1789 | R60 | sumlo | lo | CRS | 107687/1000000 | s1677,s1786,s1685,lo_ERS,hi_EHR |
| s1793 | R63 | sumlo | lo | FPR | 37011/125000 | s1695,s1776,s1698,s1764,hi_EHR |
| s1794 | R64 | sumlo | lo | FQR | 237229/1000000 | s1695,s1787,s1700,s1764,hi_EHR |
| s1797 | R66 | sumlo | lo | PRS | 2129/20000 | s1698,lo_FRS,lo_ERS,s1793,hi_EFR |
| s1803 | R72 | sumlo | lo | EFS | 160829/500000 | lo_CES,lo_FRS,s1683,lo_ERS,s60 |
| s1804 | R73 | sumlo | lo | EHS | 2843/8000 | lo_CES,s1786,s1687,lo_ERS,s60 |
| s1805 | R74 | sumlo | lo | EPS | 130091/500000 | lo_CES,s1797,s228,lo_ERS,s60 |
| s1830 | R76 | linear | lo | BCH | 378329/1000000 | s1775,lo_BHP,lo_CHP |
| s1838 | R77 | linear | lo | BEP | 43399/100000 | lo_BEQ,s1779,s1780 |
| s1840 | R78 | linear | lo | BER | 236987/500000 | s1749,s1785,lo_ERS |
| s1843 | R80 | linear | lo | BFR | 344317/500000 | s1753,s1734,s1794 |
| s1845 | R81 | linear | lo | BHQ | 66393/200000 | lo_BHP,s1779,lo_HPQ |
| s1846 | R82 | linear | hi | BPR | 60989/100000 | lo_BHP,hi_BHR,s1776 |
| s1853 | R83 | linear | lo | BPR | 464769/1000000 | s1779,s1734,lo_PQR |
| s1857 | R84 | linear | lo | CEF | 317471/500000 | hi_CER,s1681,s1695 |
| s1858 | R85 | linear | lo | CEH | 171563/250000 | hi_CER,s1685,s1696 |
| s1861 | R88 | linear | lo | CER | 293687/1000000 | lo_CES,s1789,lo_ERS |
| s1866 | R89 | linear | lo | CFR | 477947/1000000 | lo_CFQ,s1783,s1794 |
| s1867 | R89 | linear | hi | FQR | 43477/125000 | lo_CFQ,hi_CFR,s1783 |
| s1868 | R90 | linear | lo | CFS | 212343/500000 | s1866,s60,lo_FRS |
| s1870 | R91 | linear | lo | CHR | 9469/20000 | s1744,s1783,s1787 |
| s1871 | R91 | linear | hi | HQR | 344443/1000000 | s1744,hi_CHR,s1783 |
| s1872 | R93 | linear | lo | CHS | 451153/1000000 | s1870,s60,s1786 |
| s1874 | R94 | linear | lo | CPR | 2719/8000 | s1745,s1783,lo_PQR |
| s1880 | R96 | linear | lo | EFR | 253829/500000 | s1803,lo_ERS,lo_FRS |
| s1881 | R97 | linear | lo | EHR | 572339/1000000 | s1804,lo_ERS,s1786 |
| s1883 | R98 | linear | lo | EPR | 28727/62500 | s1805,lo_ERS,s1797 |
| s1885 | R99 | linear | lo | EQR | 326997/1000000 | s1750,lo_ERS,lo_QRS |
| s1904 | R1 | sum | lo | BEH | 786809/1000000 | s1838,lo_BHP,s1759 |
| s1908 | R4 | sum | lo | BHR | 48879/62500 | lo_BHP,s1853,s1776 |
| s1909 | R4 | sub | hi | HPR | 46177/125000 | hi_BHR,lo_BHP,s1853 |
| s1920 | R12 | sumlo | lo | BQR | 46463/200000 | lo_BEQ,s1908,s1840,s1845,hi_BEH |
| s1926 | R13 | sumlo | lo | BCE | 282413/1000000 | s1830,s1861,lo_BCR,s1858,hi_CHR |
| s1927 | R14 | sumlo | lo | BCF | 163093/500000 | s1830,s1866,lo_BCR,s1760,hi_CHR |
| s1929 | R15 | sumlo | lo | CFP | 24623/125000 | s1760,s1874,s1866,lo_CHP,hi_CHR |
| s1930 | R16 | sumlo | lo | CHQ | 2064/15625 | s1760,s1783,lo_CFQ,s1870,hi_CFR |
| s1931 | R17 | sumlo | lo | CPQ | 25787/250000 | s1929,s1783,lo_CFQ,s1874,hi_CFR |
| s1934 | R19 | sumlo | lo | CEQ | 184027/1000000 | s1926,s1885,lo_BEQ,s1861,hi_BER |
| s1935 | R20 | sumlo | lo | BES | 211713/1000000 | s1926,lo_ERS,s1840,lo_CES,hi_CER |
| s1937 | R22 | sumlo | lo | EQS | 35759/250000 | s1934,lo_ERS,lo_CES,s1885,hi_CER |
| s1941 | R24 | sumlo | lo | BFQ | 120149/500000 | s1927,s1794,s1843,lo_CFQ,hi_CFR |
| s1942 | R25 | sumlo | lo | FHR | 57369/250000 | lo_BFH,s1880,s1843,lo_EFH,hi_BEF |
| s1943 | R26 | sumlo | lo | EFQ | 67231/200000 | s1857,s1794,lo_CFQ,s1880,hi_CFR |
| s1944 | R27 | sumlo | lo | FPQ | 126189/1000000 | s1929,s1794,lo_CFQ,s1793,hi_CFR |
| s1947 | R28 | sumlo | lo | EHP | 267411/1000000 | s1904,lo_CHP,lo_BHP,s1858,hi_BCH |
| s1948 | R30 | sumlo | lo | CFH | 236101/1000000 | s1830,s1942,lo_BFH,s1870,hi_BHR |
| s1952 | R35 | sumlo | lo | FHR | 234677/1000000 | lo_BFH,s1881,s1908,lo_EFH,hi_BEH |
| s1963 | R42 | sumlo | lo | BCP | 25321/125000 | lo_BHP,s1874,s1853,lo_CHP,s1909 |
| s1964 | R42 | sumlo | lo | HPR | 114667/500000 | lo_BHP,s1874,s1853,lo_CHP,s23 |
| s1971 | R49 | sumlo | lo | BPQ | 38089/250000 | s1845,lo_PQR,s1920,lo_HPQ,s1871 |
| s1972 | R51 | sumlo | lo | EPQ | 208517/1000000 | s1943,lo_PQR,s1885,s1944,s1867 |
| s1975 | R53 | sumlo | lo | CQR | 9481/62500 | lo_BCR,s1885,s1920,s1861,hi_BER |
| s1977 | R56 | sumlo | lo | BRS | 44823/250000 | s1840,s1786,s1908,lo_ERS,hi_EHR |
| s1978 | R57 | sumlo | lo | HRS | 12809/100000 | s1908,lo_FRS,s1977,s1952,hi_BFR |
| s1980 | R58 | sumlo | lo | HQR | 20661/100000 | s1908,lo_PQR,s1920,s1964,s1846 |
| s1984 | R60 | sumlo | lo | CRS | 55667/500000 | s1861,s1978,s1870,lo_ERS,hi_EHR |
| s1988 | R63 | sumlo | lo | FPR | 38229/125000 | s1880,s1964,s1883,s1952,hi_EHR |
| s1989 | R64 | sumlo | lo | FQR | 247659/1000000 | s1880,s1980,s1885,s1952,hi_EHR |
| s1995 | R72 | sumlo | lo | EFS | 32917/100000 | lo_CES,lo_FRS,s1868,lo_ERS,s60 |
| s1996 | R73 | sumlo | lo | EHS | 368311/1000000 | lo_CES,s1978,s1872,lo_ERS,s60 |
| s2022 | R76 | linear | lo | BCH | 48571/125000 | s1963,lo_BHP,lo_CHP |
| s2030 | R77 | linear | lo | BEP | 453873/1000000 | lo_BEQ,s1971,s1972 |
| s2032 | R78 | linear | lo | BER | 96801/200000 | s1935,s1977,lo_ERS |
| s2035 | R80 | linear | lo | BFR | 45017/62500 | s1941,s1920,s1989 |
| s2037 | R81 | linear | lo | BHQ | 84589/250000 | lo_BHP,s1971,lo_HPQ |
| s2038 | R82 | linear | hi | BPR | 604851/1000000 | lo_BHP,hi_BHR,s1964 |
| s2045 | R83 | linear | lo | BPR | 477671/1000000 | s1971,s1920,lo_PQR |
| s2049 | R84 | linear | lo | CEF | 20417/31250 | hi_CER,s1866,s1880 |
| s2051 | R85 | linear | lo | CEH | 89191/125000 | hi_CER,s1870,s1881 |
| s2054 | R88 | linear | lo | CER | 148667/500000 | lo_CES,s1984,lo_ERS |
| s2059 | R89 | linear | lo | CFR | 98471/200000 | lo_CFQ,s1975,s1989 |
| s2060 | R89 | linear | hi | FQR | 171919/500000 | lo_CFQ,hi_CFR,s1975 |
| s2061 | R90 | linear | lo | CFS | 219547/500000 | s2059,s60,lo_FRS |
| s2063 | R91 | linear | lo | CHR | 245201/500000 | s1930,s1975,s1980 |
| s2065 | R93 | linear | hi | CHR | 618737/1000000 | s241,s60,s1978 |
| s2066 | R93 | linear | lo | CHS | 472231/1000000 | s2063,s60,s1978 |
| s2068 | R94 | linear | lo | CPR | 86961/250000 | s1931,s1975,lo_PQR |
| s2076 | R96 | linear | lo | EFR | 51517/100000 | s1995,lo_ERS,lo_FRS |
| s2077 | R97 | linear | lo | EHR | 589401/1000000 | s1996,lo_ERS,s1978 |
| s2081 | R99 | linear | lo | EQR | 82259/250000 | s1937,lo_ERS,lo_QRS |
| s2089 | R106 | bary_lo | hi | CHS | 30019/50000 | hi_CEH,s2065 |
| s2104 | R1 | sum | lo | BEH | 203571/250000 | s2030,lo_BHP,s1947 |
| s2108 | R4 | sum | lo | BHR | 160001/200000 | lo_BHP,s2045,s1964 |
| s2109 | R4 | sub | hi | HPR | 178257/500000 | hi_BHR,lo_BHP,s2045 |
| s2125 | R12 | sumlo | lo | BQR | 48097/200000 | lo_BEQ,s2108,s2032,s2037,hi_BEH |
| s2132 | R13 | sumlo | lo | BCE | 293973/1000000 | s2022,s2054,lo_BCR,s2051,s2065 |
| s2133 | R14 | sumlo | lo | BCF | 344687/1000000 | s2022,s2059,lo_BCR,s1948,s2065 |
| s2136 | R15 | sumlo | lo | CFP | 12921/62500 | s1948,s2068,s2059,lo_CHP,s2065 |
| s2137 | R16 | sumlo | lo | CHQ | 34587/250000 | s1948,s1975,lo_CFQ,s2063,hi_CFR |
| s2138 | R17 | sumlo | lo | CPQ | 27063/250000 | s2136,s1975,lo_CFQ,s2068,hi_CFR |
| s2141 | R19 | sumlo | lo | CEQ | 47821/250000 | s2132,s2081,lo_BEQ,s2054,hi_BER |
| s2142 | R20 | sumlo | lo | BES | 54439/250000 | s2132,lo_ERS,s2032,lo_CES,hi_CER |
| s2144 | R22 | sumlo | lo | EQS | 72819/500000 | s2141,lo_ERS,lo_CES,s2081,hi_CER |
| s2148 | R23 | sumlo | lo | CFH | 243509/1000000 | s2133,s1952,lo_BFH,s2059,hi_BFR |
| s2149 | R24 | sumlo | lo | BFQ | 258863/1000000 | s2133,s1989,s2035,lo_CFQ,hi_CFR |
| s2150 | R25 | sumlo | lo | FHR | 235097/1000000 | lo_BFH,s2076,s2035,lo_EFH,hi_BEF |
| s2152 | R26 | sumlo | lo | EFQ | 178169/500000 | s2049,s1989,lo_CFQ,s2076,hi_CFR |
| s2153 | R27 | sumlo | lo | FPQ | 135323/1000000 | s2136,s1989,lo_CFQ,s1988,hi_CFR |
| s2156 | R28 | sumlo | lo | EHP | 5547/20000 | s2104,lo_CHP,lo_BHP,s2051,hi_BCH |
| s2158 | R29 | sumlo | lo | FHP | 94853/1000000 | lo_BFH,lo_CHP,lo_BHP,s2148,hi_BCH |
| s2159 | R30 | sumlo | lo | CFH | 61523/250000 | s2022,s2150,lo_BFH,s2063,hi_BHR |
| s2163 | R35 | sumlo | lo | FHR | 241169/1000000 | lo_BFH,s2077,s2108,lo_EFH,hi_BEH |
| s2177 | R42 | sumlo | lo | BCP | 215343/1000000 | lo_BHP,s2068,s2045,lo_CHP,s2109 |
| s2178 | R42 | sumlo | lo | HPR | 235283/1000000 | lo_BHP,s2068,s2045,lo_CHP,s23 |
| s2184 | R48 | sumlo | lo | BPQ | 164663/1000000 | s2149,lo_PQR,s2125,s2153,s2060 |
| s2188 | R51 | sumlo | lo | EPQ | 112939/500000 | s2152,lo_PQR,s2081,s2153,s2060 |
| s2191 | R54 | sumlo | lo | CQR | 789/5000 | lo_BCR,s1989,s2125,s2059,hi_BFR |
| s2193 | R55 | sumlo | lo | EHR | 295027/500000 | s2032,s2163,s2108,s2076,hi_BFR |
| s2194 | R56 | sumlo | lo | BRS | 37197/200000 | s2032,s1978,s2108,lo_ERS,hi_EHR |
| s2196 | R57 | sumlo | lo | HRS | 133051/1000000 | s2108,lo_FRS,s2194,s2163,hi_BFR |
| s2199 | R58 | sumlo | lo | HQR | 216553/1000000 | s2108,lo_PQR,s2125,s2178,s2038 |
| s2203 | R60 | sumlo | lo | CRS | 29033/250000 | s2054,s2196,s2063,lo_ERS,hi_EHR |
| s2204 | R61 | sumlo | lo | FPR | 64561/200000 | s2059,s2178,s2068,s2163,s2065 |
| s2208 | R64 | sumlo | lo | FQR | 10413/40000 | s2076,s2199,s2081,s2163,hi_EHR |
| s2214 | R72 | sumlo | lo | EFS | 338331/1000000 | lo_CES,lo_FRS,s2061,lo_ERS,s60 |
| s2216 | R73 | sumlo | lo | EHS | 96217/250000 | lo_CES,s2196,s2066,lo_ERS,s60 |
| s2246 | R76 | linear | lo | BCH | 401343/1000000 | s2177,lo_BHP,lo_CHP |
| s2254 | R77 | linear | lo | BEP | 483541/1000000 | lo_BEQ,s2184,s2188 |
| s2257 | R78 | linear | lo | BER | 496741/1000000 | s2142,s2194,lo_ERS |
| s2259 | R79 | linear | lo | BFH | 280853/1000000 | lo_BFP,lo_BHP,s2158 |
| s2261 | R80 | linear | lo | BFR | 759673/1000000 | s2149,s2125,s2208 |
| s2263 | R81 | linear | lo | BHQ | 350663/1000000 | lo_BHP,s2184,lo_HPQ |
| s2264 | R82 | linear | hi | BPR | 299451/500000 | lo_BHP,hi_BHR,s2178 |
| s2272 | R83 | linear | lo | BPR | 124537/250000 | s2184,s2125,lo_PQR |
| s2277 | R84 | linear | lo | CEF | 10551/15625 | hi_CER,s2059,s2076 |
| s2279 | R85 | linear | lo | CEH | 149639/200000 | hi_CER,s2063,s2193 |
| s2281 | R88 | linear | lo | CER | 75533/250000 | lo_CES,s2203,lo_ERS |
| s2286 | R89 | linear | lo | CFR | 4089/8000 | lo_CFQ,s2191,s2208 |
| s2287 | R89 | linear | hi | FQR | 168867/500000 | lo_CFQ,hi_CFR,s2191 |
| s2290 | R91 | linear | lo | CHR | 512701/1000000 | s2137,s2191,s2199 |
| s2292 | R93 | linear | hi | CHR | 61359/100000 | s2089,s60,s2196 |
| s2295 | R94 | linear | lo | CPR | 89763/250000 | s2138,s2191,lo_PQR |
| s2302 | R96 | linear | lo | EFR | 524331/1000000 | s2214,lo_ERS,lo_FRS |
| s2303 | R97 | linear | lo | EHR | 610919/1000000 | s2216,lo_ERS,s2196 |
| s2307 | R99 | linear | lo | EQR | 165819/500000 | s2144,lo_ERS,lo_QRS |
| s2315 | R106 | bary_lo | hi | CHS | 598977/1000000 | hi_CEH,s2292 |
| s2330 | R1 | sum | lo | BEH | 853891/1000000 | s2254,lo_BHP,s2156 |
| s2334 | R4 | sum | lo | BHR | 826431/1000000 | lo_BHP,s2272,s2178 |
| s2336 | R4 | sub | hi | HPR | 336037/1000000 | hi_BHR,lo_BHP,s2272 |
| s2356 | R12 | sumlo | lo | BQR | 253491/1000000 | lo_BEQ,s2334,s2257,s2263,hi_BEH |
| s2369 | R14 | sumlo | lo | BCF | 371621/1000000 | s2246,s2286,lo_BCR,s2159,s2292 |
| s2374 | R15 | sumlo | lo | CFP | 110737/500000 | s2159,s2295,s2286,lo_CHP,s2292 |
| s2375 | R16 | sumlo | lo | CHQ | 147/1000 | s2159,s2191,lo_CFQ,s2290,hi_CFR |
| s2376 | R17 | sumlo | lo | CPQ | 116119/1000000 | s2374,s2191,lo_CFQ,s2295,hi_CFR |
| s2394 | R24 | sumlo | lo | BFQ | 284421/1000000 | s2369,s2208,s2261,lo_CFQ,hi_CFR |
| s2395 | R25 | sumlo | lo | FHR | 243121/1000000 | s2259,s2302,s2261,lo_EFH,hi_BEF |
| s2399 | R26 | sumlo | lo | EFQ | 381543/1000000 | s2277,s2208,lo_CFQ,s2302,hi_CFR |
| s2400 | R27 | sumlo | lo | FPQ | 148973/1000000 | s2374,s2208,lo_CFQ,s2204,hi_CFR |
| s2406 | R28 | sumlo | lo | EHP | 290833/1000000 | s2330,lo_CHP,lo_BHP,s2279,hi_BCH |
| s2410 | R30 | sumlo | lo | CFH | 260539/1000000 | s2246,s2395,s2259,s2290,hi_BHR |
| s2414 | R35 | sumlo | lo | FHR | 50171/200000 | s2259,s2303,s2334,lo_EFH,hi_BEH |
| s2436 | R42 | sumlo | lo | BCP | 118617/500000 | lo_BHP,s2295,s2272,lo_CHP,s2336 |
| s2437 | R42 | sumlo | lo | HPR | 244313/1000000 | lo_BHP,s2295,s2272,lo_CHP,s23 |
| s2451 | R48 | sumlo | lo | BPQ | 190133/1000000 | s2394,lo_PQR,s2356,s2400,s2287 |
| s2459 | R51 | sumlo | lo | EPQ | 251347/1000000 | s2399,lo_PQR,s2307,s2400,s2287 |
| s2464 | R52 | sumlo | lo | BER | 49953/100000 | lo_BCR,s2303,s2334,s2281,s2292 |
| s2465 | R54 | sumlo | lo | CQR | 171567/1000000 | lo_BCR,s2208,s2356,s2286,hi_BFR |
| s2467 | R55 | sumlo | lo | EHR | 124653/200000 | s2464,s2414,s2334,s2302,hi_BFR |
| s2469 | R56 | sumlo | lo | BRS | 195427/1000000 | s2464,s2196,s2334,lo_ERS,hi_EHR |
| s2471 | R57 | sumlo | lo | HRS | 70223/500000 | s2334,lo_FRS,s2469,s2414,hi_BFR |
| s2475 | R58 | sumlo | lo | HQR | 231739/1000000 | s2334,lo_PQR,s2356,s2437,s2264 |
| s2479 | R60 | sumlo | lo | CRS | 122877/1000000 | s2281,s2471,s2290,lo_ERS,hi_EHR |
| s2485 | R62 | sumlo | lo | PRS | 13111/100000 | s2295,s2471,s2479,s2437,s2292 |
| s2525 | R76 | linear | lo | BCH | 211617/500000 | s2436,lo_BHP,lo_CHP |
| s2534 | R77 | linear | lo | BEP | 6681/12500 | lo_BEQ,s2451,s2459 |
| s2546 | R81 | linear | lo | BHQ | 376133/1000000 | lo_BHP,s2451,lo_HPQ |
| s2547 | R82 | linear | hi | BPR | 36867/62500 | lo_BHP,hi_BHR,s2437 |
| s2557 | R83 | linear | hi | BPQ | 243381/1000000 | s2547,s2356,lo_PQR |
| s2558 | R83 | linear | hi | BQR | 306739/1000000 | s2451,s2547,lo_PQR |
| s2559 | R83 | linear | lo | BPR | 33539/62500 | s2451,s2356,lo_PQR |
| s2568 | R85 | linear | lo | CEH | 160741/200000 | hi_CER,s2290,s2467 |
| s2570 | R88 | linear | lo | CER | 308877/1000000 | lo_CES,s2479,lo_ERS |
| s2581 | R91 | linear | lo | CHR | 275153/500000 | s2375,s2465,s2475 |
| s2583 | R93 | linear | hi | CHR | 75599/125000 | s2315,s60,s2471 |
| s2584 | R93 | linear | lo | CHS | 544491/1000000 | s2581,s60,s2471 |
| s2586 | R94 | linear | lo | CPR | 190343/500000 | s2376,s2465,lo_PQR |
| s2589 | R95 | linear | lo | CPS | 73107/200000 | s2586,s60,s2485 |
| s2623 | R108 | linear | lo | EHS | 205481/500000 | s2584,s2471 |
| s2626 | R109 | linear | lo | EPS | 297987/1000000 | s2589,s2485 |
| s2629 | R1 | sum | lo | BEH | 918313/1000000 | s2534,lo_BHP,s2406 |
| s2631 | R1 | sub | hi | EHP | 90719/250000 | hi_BEH,s2534,lo_BHP |
| s2632 | R2 | sub | hi | EHQ | 521223/1000000 | hi_BEH,lo_BEQ,s2546 |
| s2636 | R4 | sum | lo | BHR | 873937/1000000 | lo_BHP,s2559,s2437 |
| s2638 | R4 | sub | hi | HPR | 297561/1000000 | hi_BHR,lo_BHP,s2559 |
| s2645 | R9 | sum | lo | EHR | 80551/125000 | s2623,lo_ERS,s2471 |
| s2646 | R10 | sum | lo | EPR | 522097/1000000 | s2626,lo_ERS,s2485 |
| s2683 | R12 | diffhi | hi | BER | 591559/1000000 | hi_BEH,s2558,lo_BEQ,s2636,s2546 |
| s2701 | R13 | sumlo | lo | BCE | 339739/1000000 | s2525,s2570,lo_BCR,s2568,s2583 |
| s2716 | R16 | sumlo | lo | CHQ | 16291/100000 | s2410,s2465,lo_CFQ,s2581,hi_CFR |
| s2732 | R18 | sumlo | lo | CEH | 849579/1000000 | s2701,s2645,s2629,s2570,s2683 |
| s2807 | R28 | sumlo | lo | BCH | 90617/200000 | s2629,lo_CHP,lo_BHP,s2732,s2631 |
| s2808 | R28 | sumlo | lo | EHP | 80233/250000 | s2629,lo_CHP,lo_BHP,s2732,hi_BCH |
| s2815 | R31 | sumlo | lo | HPQ | 48927/500000 | lo_BHP,s2716,s2546,lo_CHP,hi_BCH |
| s2819 | R34 | sumlo | lo | BHQ | 409017/1000000 | s2807,s2475,s2636,s2716,s2583 |
| s2827 | R37 | sumlo | lo | BHR | 913971/1000000 | s2629,s2475,s2819,s2645,s2632 |
| s2831 | R37 | diffhi | hi | BHQ | 83941/200000 | hi_BHR,s2632,s2629,s2475,s2645 |
| s2839 | R38 | sumlo | lo | HPR | 264441/1000000 | lo_BHP,s2475,s2827,s2815,s2831 |
| s2840 | R38 | diffhi | hi | HPQ | 113063/1000000 | s2831,s2638,lo_BHP,s2475,s2827 |
| s2860 | R39 | sumlo | lo | HPQ | 53433/500000 | lo_CHP,s2475,s2716,s2839,s2583 |
| s2861 | R39 | diffhi | hi | HPR | 287447/1000000 | s2583,s2840,lo_CHP,s2475,s2716 |
| s2866 | R40 | sumlo | lo | HPR | 27481/100000 | s2808,s2475,s2645,s2860,s2632 |
| s2867 | R40 | diffhi | hi | EHP | 349353/1000000 | s2632,s2861,s2645,s2860,s2475 |
| s2914 | R44 | diffhi | hi | EPQ | 37511/125000 | s2557,s2867,s2534,s2860,lo_BHP |
| s2916 | R45 | sumlo | lo | EHP | 165659/500000 | s2534,s2866,lo_BHP,s2646,s2547 |
| s2961 | R47 | sumlo | lo | EPQ | 301297/1000000 | s2916,lo_PQR,s2646,s2860,s2861 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | EPQ | s2961 | s2914 |

The two cited bounds give 301297/1000000 <= |EPQ| <= 37511/125000, with exact positive gap 1209/1000000.

## Leaf A036

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ACR | ACR | lo | 93/1000 | cost: |
| lo_ACS | ACS | lo | 93/1000 | cost: |
| lo_AEF | AEF | lo | 347/500 | cost:PQ |
| lo_AEP | AEP | lo | 279/1000 | cost:Q |
| lo_AEQ | AEQ | lo | 93/1000 | cost: |
| lo_AER | AER | lo | 279/1000 | cost:S |
| lo_AES | AES | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 93/1000 | cost: |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AFQ | AFQ | lo | 279/1000 | cost:P |
| lo_AFR | AFR | lo | 347/500 | cost:PQ |
| lo_AFS | AFS | lo | 347/500 | cost:PQ |
| lo_AHR | AHR | lo | 347/500 | cost:PQ |
| lo_AHS | AHS | lo | 347/500 | cost:PQ |
| lo_APQ | APQ | lo | 93/1000 | cost: |
| lo_APS | APS | lo | 279/1000 | cost:Q |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFR | CFR | lo | 279/1000 | cost:Q |
| lo_CFS | CFS | lo | 279/1000 | cost:Q |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:Q |
| lo_CHS | CHS | lo | 279/1000 | cost:Q |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHP | EHP | lo | 93/1000 | cost: |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 93/1000 | cost: |
| lo_FPQ | FPQ | lo | 93/1000 | cost: |
| lo_FQR | FQR | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_HQR | HQR | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEF | AEF | hi | 34759349289/45917449000 | C031 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AEP | AEP | hi | 4160554973356841/9056551012239500 | C064 |
| hi_AFR | AFR | hi | 4193/5123 | C030 |
| hi_AFS | AFS | hi | 182980310857/252545969500 | C055 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_APR | APR | hi | 26471051/49308875 | C065 |
| hi_ARS | ARS | hi | 251612522939/806545268375 | C044 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AEF","AEQ","AFQ","EFQ"] | ["fan","AEF","Q"] |
| R1 | fan | ["AFR","AFP","APR","FPR"] | ["fan","AFR","P"] |
| R2 | fan | ["AFS","AFP","APS","FPS"] | ["fan","AFS","P"] |
| R3 | fan | ["APR","APQ","AQR","PQR"] | ["fan","APR","Q"] |
| R4 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R5 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R6 | plu | ["ABR","ACH","ABC","AHR","ABH","ACR"] | ["plu","ABCHR"] |
| R7 | plu | ["ABS","ACH","ABC","AHS","ABH","ACS"] | ["plu","ABCHS"] |
| R8 | plu | ["AEF","APR","AEP","AFR","AER","AFP"] | ["plu","AEFPR"] |
| R9 | plu | ["AEF","AQR","AEQ","AFR","AER","AFQ"] | ["plu","AEFQR"] |
| R10 | plu | ["AEF","AQS","AEQ","AFS","AES","AFQ"] | ["plu","AEFQS"] |
| R11 | plu | ["AFS","AHP","AFH","APS","AFP","AHS"] | ["plu","AFHPS"] |
| R12 | plu | ["AFS","AHQ","AFH","AQS","AFQ","AHS"] | ["plu","AFHQS"] |
| R13 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R14 | plu | ["AEH","EFP","AEF","EHP","AEP","EFH"] | ["plu","EAFHP"] |
| R15 | plu | ["AEP","EFQ","AEF","EPQ","AEQ","EFP"] | ["plu","EAFPQ"] |
| R16 | plu | ["AEF","FHR","AFH","EFR","AFR","EFH"] | ["plu","FAEHR"] |
| R17 | plu | ["AFR","EFQ","AEF","FQR","AFQ","EFR"] | ["plu","FAEQR"] |
| R18 | plu | ["ACH","HPR","AHP","CHR","AHR","CHP"] | ["plu","HACPR"] |
| R19 | plu | ["ACH","HPS","AHP","CHS","AHS","CHP"] | ["plu","HACPS"] |
| R20 | plu | ["AHP","FPS","AFP","HPS","APS","FHP"] | ["plu","PAFHS"] |
| R21 | plu | ["AQR","EFQ","AEQ","FQR","AFQ","EQR"] | ["plu","QAEFR"] |
| R22 | plu | ["AQR","EHQ","AEQ","HQR","AHQ","EQR"] | ["plu","QAEHR"] |
| R23 | plu | ["APQ","FQR","AFQ","PQR","AQR","FPQ"] | ["plu","QAFPR"] |
| R24 | plu | ["EPQ","HQR","EHQ","PQR","EQR","HPQ"] | ["plu","QEHPR"] |
| R25 | plu | ["ACR","BFR","ABR","CFR","AFR","BCR"] | ["plu","RABCF"] |
| R26 | plu | ["AER","CFR","ACR","EFR","AFR","CER"] | ["plu","RACEF"] |
| R27 | plu | ["ARS","EFR","AER","FRS","AFR","ERS"] | ["plu","RAEFS"] |
| R28 | plu | ["AHR","FPR","AFR","HPR","APR","FHR"] | ["plu","RAFHP"] |
| R29 | plu | ["ACS","BFS","ABS","CFS","AFS","BCS"] | ["plu","SABCF"] |
| R30 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R31 | plu | ["ARS","EFS","AES","FRS","AFS","ERS"] | ["plu","SAEFR"] |
| R32 | linear | [{"AEF":1,"AFS":-1,"AES":1,"EFS":-1},"0"] | ["affine_quad","AEFS",1] |
| R33 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R34 | linear | [{"AFP":-1,"APQ":-1,"AFQ":1,"FPQ":-1},"0"] | ["affine_quad","AFPQ",1] |
| R35 | linear | [{"AHP":-1,"APQ":-1,"AHQ":1,"HPQ":-1},"0"] | ["affine_quad","AHPQ",1] |
| R36 | linear | [{"AHQ":-1,"AQR":-1,"AHR":1,"HQR":-1},"0"] | ["affine_quad","AHQR",1] |
| R37 | linear | [{"APQ":-1,"AQR":-1,"APR":1,"PQR":-1},"0"] | ["affine_quad","APQR",1] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s11 | R0 | sub | hi | EFQ | 384997/1000000 | hi_AEF,lo_AEQ,lo_AFQ |
| s24 | R2 | sub | hi | FPS | 352543/1000000 | hi_AFS,lo_AFP,lo_APS |
| s34 | R3 | sub | hi | AQR | 175421/500000 | hi_APR,lo_APQ,lo_PQR |
| s64 | R4 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s78 | R5 | sub | hi | EFS | 23607/50000 | hi_EFR,lo_ERS,lo_FRS |
| s86 | R6 | sumlo | lo | ABR | 145169/1000000 | lo_ABC,lo_AHR,lo_ABH,lo_ACR,hi_ACH |
| s87 | R7 | sumlo | lo | ABS | 145169/1000000 | lo_ABC,lo_AHS,lo_ABH,lo_ACS,hi_ACH |
| s108 | R8 | sumlo | lo | APR | 145029/500000 | lo_AEP,lo_AFR,lo_AER,lo_AFP,hi_AEF |
| s112 | R10 | sumlo | lo | AQS | 7471/62500 | lo_AEQ,lo_AFS,lo_AES,lo_AFQ,hi_AEF |
| s113 | R11 | sumlo | lo | AHP | 124891/1000000 | lo_AFH,lo_APS,lo_AFP,lo_AHS,hi_AFS |
| s115 | R12 | sumlo | lo | AHQ | 141291/500000 | lo_AFH,s112,lo_AFQ,lo_AHS,hi_AFS |
| s121 | R13 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s141 | R14 | sumlo | lo | EFP | 110559/1000000 | lo_AEF,lo_EHP,lo_AEP,lo_EFH,hi_AEH |
| s147 | R15 | diffhi | hi | EPQ | 60009/250000 | hi_AEP,s11,lo_AEQ,s141,lo_AEF |
| s169 | R16 | sumlo | lo | FHR | 7471/62500 | lo_AFH,lo_EFR,lo_AFR,lo_EFH,hi_AEF |
| s176 | R17 | diffhi | hi | FQR | 170941/500000 | hi_AFR,s11,lo_AFQ,lo_EFR,lo_AEF |
| s186 | R18 | sumlo | lo | HPR | 197127/1000000 | s113,lo_CHR,lo_AHR,lo_CHP,hi_ACH |
| s187 | R19 | sumlo | lo | HPS | 197127/1000000 | s113,lo_CHS,lo_AHS,lo_CHP,hi_ACH |
| s207 | R20 | sumlo | lo | AHP | 125601/1000000 | lo_AFP,s187,lo_APS,lo_FHP,s24 |
| s224 | R21 | sumlo | lo | AQR | 224651/1000000 | lo_AEQ,lo_FQR,lo_AFQ,lo_EQR,s11 |
| s229 | R22 | sumlo | lo | EHQ | 249369/1000000 | lo_AEQ,lo_HQR,s115,lo_EQR,s34 |
| s232 | R23 | sumlo | lo | APQ | 34251/250000 | lo_AFQ,lo_PQR,s224,lo_FPQ,s176 |
| s260 | R24 | sumlo | lo | HQR | 25589/125000 | s229,lo_PQR,lo_EQR,lo_HPQ,s147 |
| s263 | R25 | sumlo | lo | ACR | 117197/1000000 | s86,lo_CFR,lo_AFR,lo_BCR,hi_BFR |
| s267 | R26 | sumlo | lo | AER | 76911/200000 | s263,lo_EFR,lo_AFR,lo_CER,hi_CFR |
| s272 | R27 | sumlo | lo | ARS | 152407/1000000 | s267,lo_FRS,lo_AFR,lo_ERS,hi_EFR |
| s275 | R28 | sumlo | lo | FPR | 26189/125000 | lo_AFR,s186,s108,s169,hi_AHR |
| s297 | R29 | sumlo | lo | ACS | 136731/1000000 | s87,lo_CFS,lo_AFS,s121,hi_BFS |
| s304 | R30 | sumlo | lo | AES | 22981/125000 | s297,lo_ERS,s272,lo_CES,s64 |
| s308 | R31 | sumlo | lo | ARS | 86457/500000 | s304,lo_FRS,lo_AFS,lo_ERS,s78 |
| s309 | R31 | sumlo | lo | EFS | 261697/1000000 | s304,lo_FRS,lo_AFS,lo_ERS,hi_ARS |
| s354 | R32 | linear | lo | AES | 1987/10000 | hi_AEF,lo_AFS,s309 |
| s363 | R33 | linear | lo | AER | 232307/500000 | s354,s308,lo_ERS |
| s368 | R34 | linear | lo | AFQ | 80751/250000 | lo_AFP,s232,lo_FPQ |
| s379 | R35 | linear | lo | AHQ | 71121/200000 | s207,s232,lo_HPQ |
| s385 | R36 | linear | hi | AQR | 258149/1000000 | s379,hi_AHR,s260 |
| s392 | R37 | linear | lo | APR | 90931/200000 | s232,s224,lo_PQR |
| s491 | R1 | sum | lo | AFR | 757167/1000000 | lo_AFP,s392,s275 |
| s564 | R9 | sumlo | lo | AEF | 427057/500000 | lo_AEQ,s491,s363,s368,s385 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | AEF | s564 | hi_AEF |

The two cited bounds give 427057/500000 <= |AEF| <= 34759349289/45917449000, with exact positive gap 2229693373093/22958724500000.

## Leaf A037

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABC | ABC | lo | 93/1000 | cost: |
| lo_ABH | ABH | lo | 93/1000 | cost: |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_ACH | ACH | lo | 279/1000 | cost:P |
| lo_ACP | ACP | lo | 93/1000 | cost: |
| lo_AFH | AFH | lo | 279/1000 | cost:P |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_APR | APR | lo | 93/1000 | cost: |
| lo_ARS | ARS | lo | 93/1000 | cost: |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEQ | BEQ | lo | 93/1000 | cost: |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFH | BFH | lo | 279/1000 | cost:P |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHQ | BHQ | lo | 279/1000 | cost:P |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPS | BPS | lo | 279/1000 | cost:Q |
| lo_BQS | BQS | lo | 93/1000 | cost: |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:Q |
| lo_CHS | CHS | lo | 279/1000 | cost:Q |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPR | CPR | lo | 279/1000 | cost:Q |
| lo_CPS | CPS | lo | 279/1000 | cost:Q |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FHP | FHP | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 93/1000 | cost: |
| lo_PQS | PQS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AEP | AEP | hi | 4160554973356841/9056551012239500 | C064 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_AHS | AHS | hi | 5161583/7044125 | C056 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BEP | BEP | hi | 230475410760667/357785197000000 | C066 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFP | BFP | hi | 16905616233437/44723149625000 | C067 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_BPS | BPS | hi | 19982096006443189661/35579307548083750000 | C063 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CFR | CFR | hi | 1052914223723/1789046875000 | C011 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_CPR | CPR | hi | 66213614666233493/146644594250000000 | C002 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_EPR | EPR | hi | 16552369677919/26245129000000 | C021 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["AER","AES","ARS","ERS"] | ["fan","AER","S"] |
| R1 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R2 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R3 | fan | ["BEH","BEQ","BHQ","EHQ"] | ["fan","BEH","Q"] |
| R4 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R5 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R6 | fan | ["BHS","BHP","BPS","HPS"] | ["fan","BHS","P"] |
| R7 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R8 | fan | ["CPR","CPQ","CQR","PQR"] | ["fan","CPR","Q"] |
| R9 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R10 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R11 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R12 | plu | ["AEP","AFH","AEF","AHP","AEH","AFP"] | ["plu","AEFHP"] |
| R13 | plu | ["BCQ","BEH","BCE","BHQ","BCH","BEQ"] | ["plu","BCEHQ"] |
| R14 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R15 | plu | ["BEH","BFR","BEF","BHR","BER","BFH"] | ["plu","BEFHR"] |
| R16 | plu | ["BEH","BQR","BEQ","BHR","BER","BHQ"] | ["plu","BEHQR"] |
| R17 | plu | ["ACR","BCH","ABC","CHR","ACH","BCR"] | ["plu","CABHR"] |
| R18 | plu | ["ACS","BCH","ABC","CHS","ACH","BCS"] | ["plu","CABHS"] |
| R19 | plu | ["ACR","BCP","ABC","CPR","ACP","BCR"] | ["plu","CABPR"] |
| R20 | plu | ["ACS","BCP","ABC","CPS","ACP","BCS"] | ["plu","CABPS"] |
| R21 | plu | ["ACE","CHR","ACH","CER","ACR","CEH"] | ["plu","CAEHR"] |
| R22 | plu | ["ACF","CHR","ACH","CFR","ACR","CFH"] | ["plu","CAFHR"] |
| R23 | plu | ["ACF","CHS","ACH","CFS","ACS","CFH"] | ["plu","CAFHS"] |
| R24 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R25 | plu | ["BCF","CHR","BCH","CFR","BCR","CFH"] | ["plu","CBFHR"] |
| R26 | plu | ["BCF","CHS","BCH","CFS","BCS","CFH"] | ["plu","CBFHS"] |
| R27 | plu | ["CFP","CHR","CFH","CPR","CFR","CHP"] | ["plu","CFHPR"] |
| R28 | plu | ["CFR","CHQ","CFH","CQR","CFQ","CHR"] | ["plu","CFHQR"] |
| R29 | plu | ["CFR","CPQ","CFP","CQR","CFQ","CPR"] | ["plu","CFPQR"] |
| R30 | plu | ["AES","CER","ACE","ERS","AER","CES"] | ["plu","EACRS"] |
| R31 | plu | ["BEF","CEQ","BCE","EFQ","BEQ","CEF"] | ["plu","EBCFQ"] |
| R32 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R33 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R34 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R35 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R36 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R37 | plu | ["EFP","EHR","EFH","EPR","EFR","EHP"] | ["plu","EFHPR"] |
| R38 | plu | ["AEF","CFH","ACF","EFH","AFH","CEF"] | ["plu","FACEH"] |
| R39 | plu | ["AEF","FHR","AFH","EFR","AFR","EFH"] | ["plu","FAEHR"] |
| R40 | plu | ["BFQ","CFR","BCF","FQR","BFR","CFQ"] | ["plu","FBCQR"] |
| R41 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R42 | plu | ["BFR","FHQ","BFH","FQR","BFQ","FHR"] | ["plu","FBHQR"] |
| R43 | plu | ["CFR","EFQ","CEF","FQR","CFQ","EFR"] | ["plu","FCEQR"] |
| R44 | plu | ["CFR","FPQ","CFP","FQR","CFQ","FPR"] | ["plu","FCPQR"] |
| R45 | plu | ["CFR","FQS","CFQ","FRS","CFS","FQR"] | ["plu","FCQRS"] |
| R46 | plu | ["AHS","BFH","ABH","FHS","AFH","BHS"] | ["plu","HABFS"] |
| R47 | plu | ["AEH","CFH","ACH","EFH","AFH","CEH"] | ["plu","HACEF"] |
| R48 | plu | ["AEH","FHR","AFH","EHR","AHR","EFH"] | ["plu","HAEFR"] |
| R49 | plu | ["BCH","EHP","BEH","CHP","BHP","CEH"] | ["plu","HBCEP"] |
| R50 | plu | ["BCH","FHP","BFH","CHP","BHP","CFH"] | ["plu","HBCFP"] |
| R51 | plu | ["BCH","HPR","BHP","CHR","BHR","CHP"] | ["plu","HBCPR"] |
| R52 | plu | ["BCH","HPS","BHP","CHS","BHS","CHP"] | ["plu","HBCPS"] |
| R53 | plu | ["BEH","FHR","BFH","EHR","BHR","EFH"] | ["plu","HBEFR"] |
| R54 | plu | ["BEH","FHS","BFH","EHS","BHS","EFH"] | ["plu","HBEFS"] |
| R55 | plu | ["BHR","EHQ","BEH","HQR","BHQ","EHR"] | ["plu","HBEQR"] |
| R56 | plu | ["CHR","HPQ","CHP","HQR","CHQ","HPR"] | ["plu","HCPQR"] |
| R57 | plu | ["AEP","BFP","ABP","EFP","AFP","BEP"] | ["plu","PABEF"] |
| R58 | plu | ["APR","BEP","ABP","EPR","AEP","BPR"] | ["plu","PABER"] |
| R59 | plu | ["APR","BFP","ABP","FPR","AFP","BPR"] | ["plu","PABFR"] |
| R60 | plu | ["ACP","EHP","AEP","CHP","AHP","CEP"] | ["plu","PACEH"] |
| R61 | plu | ["ACP","HPR","AHP","CPR","APR","CHP"] | ["plu","PACHR"] |
| R62 | plu | ["BCP","EHP","BEP","CHP","BHP","CEP"] | ["plu","PBCEH"] |
| R63 | plu | ["BCP","HPR","BHP","CPR","BPR","CHP"] | ["plu","PBCHR"] |
| R64 | plu | ["BCP","HPS","BHP","CPS","BPS","CHP"] | ["plu","PBCHS"] |
| R65 | plu | ["CPR","EPQ","CEP","PQR","CPQ","EPR"] | ["plu","PCEQR"] |
| R66 | plu | ["BQR","EFQ","BEQ","FQR","BFQ","EQR"] | ["plu","QBEFR"] |
| R67 | plu | ["BPQ","FQR","BFQ","PQR","BQR","FPQ"] | ["plu","QBFPR"] |
| R68 | plu | ["BPQ","HQR","BHQ","PQR","BQR","HPQ"] | ["plu","QBHPR"] |
| R69 | plu | ["CHQ","EFQ","CEQ","FHQ","CFQ","EHQ"] | ["plu","QCEFH"] |
| R70 | plu | ["CQR","EHQ","CEQ","HQR","CHQ","EQR"] | ["plu","QCEHR"] |
| R71 | plu | ["CQR","EPQ","CEQ","PQR","CPQ","EQR"] | ["plu","QCEPR"] |
| R72 | plu | ["EPQ","FQR","EFQ","PQR","EQR","FPQ"] | ["plu","QEFPR"] |
| R73 | plu | ["FQR","PQS","FPQ","QRS","FQS","PQR"] | ["plu","QFPRS"] |
| R74 | plu | ["AFR","EHR","AER","FHR","AHR","EFR"] | ["plu","RAEFH"] |
| R75 | plu | ["ARS","EHR","AER","HRS","AHR","ERS"] | ["plu","RAEHS"] |
| R76 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R77 | plu | ["BER","CQR","BCR","EQR","BQR","CER"] | ["plu","RBCEQ"] |
| R78 | plu | ["BFR","CQR","BCR","FQR","BQR","CFR"] | ["plu","RBCFQ"] |
| R79 | plu | ["BFR","EHR","BER","FHR","BHR","EFR"] | ["plu","RBEFH"] |
| R80 | plu | ["BRS","EHR","BER","HRS","BHR","ERS"] | ["plu","RBEHS"] |
| R81 | plu | ["BFR","HRS","BHR","FRS","BRS","FHR"] | ["plu","RBFHS"] |
| R82 | plu | ["BPR","HQR","BHR","PQR","BQR","HPR"] | ["plu","RBHPQ"] |
| R83 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R84 | plu | ["CRS","EHR","CER","HRS","CHR","ERS"] | ["plu","RCEHS"] |
| R85 | plu | ["EHR","FPR","EFR","HPR","EPR","FHR"] | ["plu","REFHP"] |
| R86 | plu | ["EHR","FQR","EFR","HQR","EQR","FHR"] | ["plu","REFHQ"] |
| R87 | plu | ["EPR","FQR","EFR","PQR","EQR","FPR"] | ["plu","REFPQ"] |
| R88 | plu | ["EFR","PRS","EPR","FRS","ERS","FPR"] | ["plu","REFPS"] |
| R89 | plu | ["EPR","HQR","EHR","PQR","EQR","HPR"] | ["plu","REHPQ"] |
| R90 | plu | ["AES","CRS","ACS","ERS","ARS","CES"] | ["plu","SACER"] |
| R91 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R92 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R93 | plu | ["BFS","HRS","BHS","FRS","BRS","FHS"] | ["plu","SBFHR"] |
| R94 | plu | ["BPS","HQS","BHS","PQS","BQS","HPS"] | ["plu","SBHPQ"] |
| R95 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R96 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R97 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R98 | linear | [{"ACH":1,"AHP":-1,"ACP":-1,"CHP":-1},"0"] | ["affine_quad","ACHP",1] |
| R99 | linear | [{"AEF":-1,"AFH":-1,"AEH":1,"EFH":1},"0"] | ["affine_quad","AEFH",-1] |
| R100 | linear | [{"AEH":1,"AHP":-1,"AEP":-1,"EHP":-1},"0"] | ["affine_quad","AEHP",1] |
| R101 | linear | [{"AER":1,"ARS":-1,"AES":-1,"ERS":-1},"0"] | ["affine_quad","AERS",-1] |
| R102 | linear | [{"AFH":1,"AHP":-1,"AFP":-1,"FHP":-1},"0"] | ["affine_quad","AFHP",1] |
| R103 | linear | [{"AHP":-1,"APR":-1,"AHR":1,"HPR":-1},"0"] | ["affine_quad","AHPR",1] |
| R104 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R105 | linear | [{"BEF":-1,"BFH":-1,"BEH":1,"EFH":1},"0"] | ["affine_quad","BEFH",-1] |
| R106 | linear | [{"BEF":1,"BFQ":-1,"BEQ":-1,"EFQ":-1},"0"] | ["affine_quad","BEFQ",1] |
| R107 | linear | [{"BEP":1,"BPQ":-1,"BEQ":-1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",1] |
| R108 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R109 | linear | [{"BFH":1,"BHP":-1,"BFP":-1,"FHP":-1},"0"] | ["affine_quad","BFHP",1] |
| R110 | linear | [{"BFQ":-1,"BQR":-1,"BFR":1,"FQR":-1},"0"] | ["affine_quad","BFQR",1] |
| R111 | linear | [{"BHP":-1,"BPQ":-1,"BHQ":1,"HPQ":-1},"0"] | ["affine_quad","BHPQ",1] |
| R112 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R113 | linear | [{"BPQ":-1,"BQR":-1,"BPR":1,"PQR":-1},"0"] | ["affine_quad","BPQR",1] |
| R114 | linear | [{"BPQ":-1,"BQS":-1,"BPS":1,"PQS":-1},"0"] | ["affine_quad","BPQS",1] |
| R115 | linear | [{"CEF":-1,"CFH":-1,"CEH":1,"EFH":1},"0"] | ["affine_quad","CEFH",-1] |
| R116 | linear | [{"CEF":1,"CFR":-1,"CER":1,"EFR":-1},"0"] | ["affine_quad","CEFR",1] |
| R117 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R118 | linear | [{"CEP":1,"CPQ":-1,"CEQ":-1,"EPQ":-1},"0"] | ["affine_quad","CEPQ",1] |
| R119 | linear | [{"CEP":1,"CPR":-1,"CER":1,"EPR":-1},"0"] | ["affine_quad","CEPR",1] |
| R120 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R121 | linear | [{"CFQ":-1,"CQR":-1,"CFR":1,"FQR":-1},"0"] | ["affine_quad","CFQR",1] |
| R122 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R123 | linear | [{"CHQ":-1,"CQR":-1,"CHR":1,"HQR":-1},"0"] | ["affine_quad","CHQR",1] |
| R124 | linear | [{"CHQ":-1,"CQS":-1,"CHS":1,"HQS":-1},"0"] | ["affine_quad","CHQS",1] |
| R125 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R126 | linear | [{"CPQ":-1,"CQR":-1,"CPR":1,"PQR":-1},"0"] | ["affine_quad","CPQR",1] |
| R127 | linear | [{"EFH":1,"EHR":1,"EFR":-1,"FHR":-1},"0"] | ["affine_quad","EFHR",1] |
| R128 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R129 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R130 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R131 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R132 | quad | ["CEF","CER","93/125"] | ["quad","CREF","QS"] |
| R133 | quad | ["CEH","CER","93/125"] | ["quad","CREH","QS"] |
| R134 | quad | ["CEP","CER","93/125"] | ["quad","CREP","QS"] |
| R135 | quad | ["CFS","CRS","449/1000"] | ["quad","CRSF","Q"] |
| R136 | quad | ["CPS","CRS","449/1000"] | ["quad","CRSP","Q"] |
| R137 | bary | [["AES",-1],[["ACE",-1],null,["AER",-1]],11,[3,3,3]] | ["side_pair_weights","AE","S","CER","3/11"] |
| R138 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R139 | bary | [["BFS",-1],[["BCF",-1],["BEF",-1],["BFR",-1]],11,[3,3,3]] | ["side_pair_weights","BF","S","CER","3/11"] |
| R140 | bary | [["BQS",-1],[["BCQ",-1],["BEQ",-1],["BQR",-1]],11,[3,3,3]] | ["side_pair_weights","BQ","S","CER","3/11"] |
| R141 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R142 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R143 | bary | [["FHS",1],[["CFH",1],["EFH",1],["FHR",1]],11,[3,3,3]] | ["side_pair_weights","FH","S","CER","3/11"] |
| R144 | linear | [{"CFS":-3,"EFS":5,"FRS":-3},"0"] | ["barycentric","FS","S","CER","upper"] |
| R145 | linear | [{"CHS":-3,"EHS":5,"HRS":-3},"0"] | ["barycentric","HS","S","CER","upper"] |
| R146 | linear | [{"CPS":-3,"EPS":5,"PRS":-3},"0"] | ["barycentric","PS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s10 | R1 | sub | hi | BCP | 3263/10000 | hi_BCH,lo_BHP,lo_CHP |
| s32 | R6 | sub | hi | HPS | 470749/1000000 | hi_BHS,lo_BHP,lo_BPS |
| s49 | R7 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s61 | R8 | sub | hi | CQR | 10621/40000 | hi_CPR,lo_CPQ,lo_PQR |
| s66 | R10 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s82 | R14 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s83 | R16 | sumlo | lo | BQR | 143769/1000000 | lo_BEQ,lo_BHR,lo_BER,lo_BHQ,hi_BEH |
| s87 | R19 | sumlo | lo | ACR | 4241/40000 | lo_ABC,lo_CPR,lo_ACP,lo_BCR,s10 |
| s88 | R20 | sumlo | lo | ACS | 53667/500000 | lo_ABC,lo_CPS,lo_ACP,s82,s10 |
| s90 | R21 | sumlo | lo | ACE | 10839/62500 | lo_ACH,lo_CER,s87,lo_CEH,hi_CHR |
| s93 | R24 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s100 | R32 | sumlo | lo | CEH | 369673/1000000 | s93,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s101 | R33 | sumlo | lo | CEQ | 55899/500000 | s93,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s109 | R35 | sumlo | lo | EHS | 45391/250000 | s100,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s124 | R47 | sumlo | lo | CFH | 39429/250000 | lo_ACH,lo_EFH,lo_AFH,s100,hi_AEH |
| s131 | R49 | sumlo | lo | EHP | 193093/1000000 | lo_BEH,lo_CHP,lo_BHP,s100,hi_BCH |
| s132 | R51 | sumlo | lo | HPR | 22079/125000 | lo_BHP,lo_CHR,lo_BHR,lo_CHP,hi_BCH |
| s133 | R52 | sumlo | lo | HPS | 22079/125000 | lo_BHP,lo_CHS,lo_BHS,lo_CHP,hi_BCH |
| s135 | R53 | sumlo | lo | FHR | 143769/1000000 | lo_BFH,lo_EHR,lo_BHR,lo_EFH,hi_BEH |
| s136 | R54 | sumlo | lo | FHS | 727/6250 | lo_BFH,s109,lo_BHS,lo_EFH,hi_BEH |
| s141 | R64 | sumlo | lo | BCP | 110237/1000000 | lo_BHP,lo_CPS,lo_BPS,lo_CHP,s32 |
| s146 | R71 | sumlo | lo | EPQ | 34219/250000 | s101,lo_PQR,lo_CPQ,lo_EQR,s61 |
| s150 | R76 | sumlo | lo | BER | 177241/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_CHR |
| s151 | R76 | sumlo | lo | CHR | 168841/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_BER |
| s152 | R77 | sumlo | lo | CQR | 101591/1000000 | lo_BCR,lo_EQR,s83,lo_CER,hi_BER |
| s156 | R80 | sumlo | lo | BRS | 132959/1000000 | s150,lo_HRS,lo_BHR,lo_ERS,hi_EHR |
| s159 | R81 | sumlo | lo | HRS | 11667/125000 | lo_BHR,lo_FRS,s156,s135,hi_BFR |
| s168 | R90 | sumlo | lo | AES | 63691/500000 | s88,lo_ERS,lo_ARS,lo_CES,s49 |
| s171 | R91 | sumlo | lo | BES | 146597/1000000 | s82,lo_ERS,s156,lo_CES,s49 |
| s173 | R92 | sumlo | lo | BRS | 142909/1000000 | s171,s159,lo_BHS,lo_ERS,s66 |
| s176 | R93 | sumlo | lo | HRS | 12817/125000 | lo_BHS,lo_FRS,s173,s136,hi_BFS |
| s177 | R94 | sumlo | lo | HQS | 144169/1000000 | lo_BHS,lo_PQS,lo_BQS,s133,hi_BPS |
| s180 | R97 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s49 |
| s185 | R99 | linear | hi | AEF | 181157/250000 | hi_AEH,lo_AFH,hi_EFH |
| s187 | R101 | linear | lo | AER | 156691/500000 | s168,lo_ARS,lo_ERS |
| s188 | R103 | linear | lo | AHR | 45329/125000 | lo_AHP,lo_APR,s132 |
| s191 | R104 | linear | lo | BCH | 296237/1000000 | s141,lo_BHP,lo_CHP |
| s197 | R107 | linear | lo | BEP | 80719/250000 | lo_BEQ,lo_BPQ,s146 |
| s199 | R108 | linear | lo | BER | 191253/500000 | s171,s173,lo_ERS |
| s204 | R113 | linear | lo | BPR | 329769/1000000 | lo_BPQ,s83,lo_PQR |
| s217 | R123 | linear | hi | HQR | 106207/250000 | lo_CHQ,hi_CHR,s152 |
| s218 | R124 | linear | lo | CHS | 330169/1000000 | lo_CHQ,lo_CQS,s177 |
| s224 | R129 | linear | hi | EHS | 107567/200000 | hi_EHR,lo_ERS,s176 |
| s226 | R131 | linear | lo | EQR | 76067/250000 | s180,lo_ERS,lo_QRS |
| s227 | R132 | quad | lo | CEF | 411739/1000000 | hi_CER |
| s228 | R133 | quad | lo | CEH | 411739/1000000 | hi_CER |
| s229 | R134 | quad | lo | CEP | 411739/1000000 | hi_CER |
| s231 | R135 | quad | lo | CFS | 302739/1000000 | s49 |
| s232 | R136 | quad | lo | CPS | 302739/1000000 | s49 |
| s234 | R137 | bary_hi | lo | AES | 26553/200000 | s90,s187 |
| s238 | R138 | bary_hi | lo | BES | 150017/1000000 | s93,s199 |
| s241 | R141 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s243 | R142 | bary_lo | hi | CHS | 300283/500000 | hi_CEH,hi_CHR |
| s246 | R143 | bary_lo | lo | FHS | 24899/200000 | s124,lo_EFH,s135 |
| s250 | R144 | linear | lo | EFS | 237443/1000000 | s231,lo_FRS |
| s253 | R145 | linear | lo | EHS | 259623/1000000 | s218,s176 |
| s256 | R146 | linear | lo | EPS | 237443/1000000 | s232,lo_PRS |
| s258 | R0 | sum | lo | AER | 63753/200000 | s234,lo_ARS,lo_ERS |
| s259 | R2 | sub | hi | EHP | 7181/12500 | hi_BEH,s197,lo_BHP |
| s260 | R4 | sum | lo | BER | 192963/500000 | s238,s173,lo_ERS |
| s273 | R9 | sum | lo | EFR | 423443/1000000 | s250,lo_ERS,lo_FRS |
| s274 | R10 | sum | lo | EHR | 455159/1000000 | s253,lo_ERS,s176 |
| s275 | R11 | sum | lo | EPR | 423443/1000000 | s256,lo_ERS,lo_PRS |
| s289 | R14 | sumlo | lo | BCS | 11527/100000 | s191,s173,lo_BCR,lo_BHS,hi_BHR |
| s290 | R16 | sumlo | lo | BQR | 43473/250000 | lo_BEQ,lo_BHR,s260,lo_BHQ,hi_BEH |
| s293 | R17 | sumlo | lo | ACR | 27987/250000 | lo_ABC,s151,lo_ACH,lo_BCR,hi_BCH |
| s294 | R18 | sumlo | lo | ACS | 122713/1000000 | lo_ABC,s218,lo_ACH,s289,hi_BCH |
| s296 | R21 | sumlo | lo | ACE | 200081/1000000 | lo_ACH,lo_CER,s293,s228,hi_CHR |
| s298 | R23 | sumlo | lo | ACF | 86433/500000 | lo_ACH,s231,s294,s124,s243 |
| s300 | R24 | sumlo | lo | BCE | 781/4000 | s191,lo_CER,lo_BCR,s228,hi_CHR |
| s308 | R30 | sumlo | lo | AES | 5809/40000 | s296,lo_ERS,s258,lo_CES,hi_CER |
| s311 | R33 | sumlo | lo | CEQ | 32817/250000 | s300,s226,lo_BEQ,lo_CER,hi_BER |
| s316 | R36 | sumlo | lo | EQS | 60953/500000 | s311,lo_ERS,lo_CES,s226,hi_CER |
| s317 | R37 | sumlo | lo | EFP | 41297/250000 | lo_EFH,s275,s273,s131,hi_EHR |
| s323 | R38 | sumlo | lo | CFH | 36143/200000 | s298,lo_EFH,lo_AFH,s227,s185 |
| s327 | R46 | sumlo | lo | BFH | 140023/500000 | lo_ABH,s246,lo_AFH,lo_BHS,hi_AHS |
| s330 | R48 | sumlo | lo | FHR | 4909/25000 | lo_AFH,s274,s188,lo_EFH,hi_AEH |
| s335 | R51 | sumlo | lo | HPR | 37457/200000 | lo_BHP,s151,lo_BHR,lo_CHP,hi_BCH |
| s338 | R54 | sumlo | lo | FHS | 17323/125000 | s327,s253,lo_BHS,lo_EFH,hi_BEH |
| s342 | R57 | sumlo | lo | AEP | 120077/1000000 | lo_ABP,s317,lo_AFP,s197,hi_BFP |
| s343 | R57 | sumlo | lo | BFP | 98803/1000000 | lo_ABP,s317,lo_AFP,s197,hi_AEP |
| s344 | R58 | sumlo | lo | APR | 122603/1000000 | lo_ABP,s275,s342,s204,hi_BEP |
| s346 | R62 | sumlo | lo | BCP | 118923/1000000 | s197,lo_CHP,lo_BHP,s229,s259 |
| s347 | R62 | sumlo | lo | EHP | 67/320 | s197,lo_CHP,lo_BHP,s229,s10 |
| s348 | R65 | sumlo | lo | EPQ | 172021/1000000 | s229,lo_PQR,lo_CPQ,s275,hi_CPR |
| s353 | R68 | sumlo | lo | BPQ | 99143/1000000 | lo_BHQ,lo_PQR,s290,lo_HPQ,s217 |
| s357 | R76 | sumlo | lo | CHR | 362877/1000000 | lo_BCR,s274,lo_BHR,lo_CER,hi_BER |
| s358 | R77 | sumlo | lo | CQR | 11813/100000 | lo_BCR,s226,s290,lo_CER,hi_BER |
| s362 | R81 | sumlo | lo | HRS | 103317/1000000 | lo_BHR,lo_FRS,s173,s330,hi_BFR |
| s365 | R85 | sumlo | lo | FPR | 221513/1000000 | s273,s335,s275,s330,hi_EHR |
| s367 | R87 | sumlo | lo | FQR | 169307/1000000 | s273,lo_PQR,s226,s365,hi_EPR |
| s369 | R89 | sumlo | lo | HQR | 157471/1000000 | s274,lo_PQR,s226,s335,hi_EPR |
| s371 | R91 | sumlo | lo | BES | 164163/1000000 | s289,lo_ERS,s173,lo_CES,s49 |
| s373 | R92 | sumlo | lo | BRS | 75769/500000 | s371,s362,lo_BHS,lo_ERS,s224 |
| s374 | R92 | sumlo | lo | EHS | 301641/1000000 | s371,s362,lo_BHS,lo_ERS,s241 |
| s375 | R93 | sumlo | lo | HRS | 54033/500000 | lo_BHS,lo_FRS,s373,s338,hi_BFS |
| s378 | R96 | sumlo | lo | EPS | 25163/100000 | lo_CES,lo_PRS,s232,lo_ERS,s49 |
| s389 | R101 | linear | lo | AER | 13249/40000 | s308,lo_ARS,lo_ERS |
| s390 | R103 | linear | lo | AHR | 50361/125000 | lo_AHP,s344,s335 |
| s393 | R104 | linear | lo | BCH | 304923/1000000 | s346,lo_BHP,lo_CHP |
| s396 | R105 | linear | hi | BEF | 55967/62500 | hi_BEH,s327,hi_EFH |
| s397 | R107 | linear | lo | BEP | 91041/250000 | lo_BEQ,s353,s348 |
| s400 | R108 | linear | lo | BER | 408701/1000000 | s371,s373,lo_ERS |
| s402 | R109 | linear | lo | BFH | 284803/1000000 | s343,lo_BHP,lo_FHP |
| s404 | R111 | linear | lo | BHQ | 285143/1000000 | lo_BHP,s353,lo_HPQ |
| s408 | R113 | linear | lo | BPR | 73207/200000 | s353,s290,lo_PQR |
| s414 | R117 | linear | lo | CEH | 19431/40000 | hi_CER,s357,s274 |
| s417 | R121 | linear | lo | CFR | 380437/1000000 | lo_CFQ,s358,s367 |
| s419 | R122 | linear | lo | CFS | 40897/125000 | s417,s49,lo_FRS |
| s421 | R123 | linear | lo | CHR | 368601/1000000 | lo_CHQ,s358,s369 |
| s422 | R123 | linear | hi | HQR | 408289/1000000 | lo_CHQ,hi_CHR,s358 |
| s431 | R129 | linear | lo | EHR | 502707/1000000 | s374,lo_ERS,s375 |
| s432 | R129 | linear | hi | EHS | 106461/200000 | hi_EHR,lo_ERS,s375 |
| s433 | R130 | linear | lo | EPR | 43763/100000 | s378,lo_ERS,lo_PRS |
| s434 | R131 | linear | lo | EQR | 153953/500000 | s316,lo_ERS,lo_QRS |
| s438 | R138 | bary_hi | lo | BES | 164713/1000000 | s300,s400 |
| s439 | R139 | bary_lo | hi | BFS | 791347/1000000 | hi_BCF,s396,hi_BFR |
| s445 | R144 | linear | lo | EFS | 50421/200000 | s419,lo_FRS |
| s452 | R2 | sub | hi | EHP | 66649/125000 | hi_BEH,s397,lo_BHP |
| s454 | R4 | sum | lo | BER | 409251/1000000 | s438,s373,lo_ERS |
| s460 | R9 | sum | lo | EFR | 87621/200000 | s445,lo_ERS,lo_FRS |
| s473 | R16 | sumlo | lo | BQR | 183001/1000000 | lo_BEQ,lo_BHR,s454,s404,hi_BEH |
| s474 | R17 | sumlo | lo | ACR | 117561/1000000 | lo_ABC,s421,lo_ACH,lo_BCR,hi_BCH |
| s476 | R21 | sumlo | lo | ACE | 27233/125000 | lo_ACH,lo_CER,s474,s414,hi_CHR |
| s478 | R24 | sumlo | lo | BCE | 105139/500000 | s393,lo_CER,lo_BCR,s414,hi_CHR |
| s483 | R28 | sumlo | lo | CHQ | 94519/1000000 | s323,s358,lo_CFQ,s421,hi_CFR |
| s484 | R30 | sumlo | lo | AES | 15369/100000 | s476,lo_ERS,s389,lo_CES,hi_CER |
| s486 | R33 | sumlo | lo | CEQ | 139477/1000000 | s478,s434,lo_BEQ,lo_CER,hi_BER |
| s487 | R34 | sumlo | lo | BES | 86703/500000 | s478,lo_ERS,s454,lo_CES,hi_CER |
| s489 | R36 | sumlo | lo | EQS | 62611/500000 | s486,lo_ERS,lo_CES,s434,hi_CER |
| s490 | R37 | sumlo | lo | EFP | 90287/500000 | lo_EFH,s433,s460,s347,hi_EHR |
| s498 | R47 | sumlo | lo | CFH | 197293/1000000 | lo_ACH,lo_EFH,lo_AFH,s414,hi_AEH |
| s499 | R48 | sumlo | lo | FHR | 108571/500000 | lo_AFH,s431,s390,lo_EFH,hi_AEH |
| s504 | R51 | sumlo | lo | HPR | 96449/500000 | lo_BHP,s421,lo_BHR,lo_CHP,hi_BCH |
| s508 | R54 | sumlo | lo | FHS | 30383/200000 | s402,s374,lo_BHS,lo_EFH,hi_BEH |
| s512 | R57 | sumlo | lo | AEP | 6701/50000 | lo_ABP,s490,lo_AFP,s397,hi_BFP |
| s513 | R57 | sumlo | lo | BFP | 27569/250000 | lo_ABP,s490,lo_AFP,s397,hi_AEP |
| s515 | R59 | sumlo | lo | APR | 144553/1000000 | lo_ABP,s365,lo_AFP,s408,hi_BFP |
| s517 | R60 | sumlo | lo | ACP | 95191/1000000 | s512,lo_CHP,lo_AHP,s229,s452 |
| s518 | R62 | sumlo | lo | BCP | 135333/1000000 | s397,lo_CHP,lo_BHP,s229,s452 |
| s519 | R62 | sumlo | lo | EHP | 221143/1000000 | s397,lo_CHP,lo_BHP,s229,s10 |
| s521 | R65 | sumlo | lo | EPQ | 174943/1000000 | s229,lo_PQR,lo_CPQ,s433,hi_CPR |
| s523 | R68 | sumlo | lo | BPQ | 106633/1000000 | s404,lo_PQR,s473,lo_HPQ,s422 |
| s525 | R74 | sumlo | lo | AFR | 338751/1000000 | s389,s499,s390,s460,hi_EHR |
| s527 | R75 | sumlo | lo | ARS | 49949/500000 | s389,s375,s390,lo_ERS,hi_EHR |
| s528 | R76 | sumlo | lo | CHR | 184839/500000 | lo_BCR,s431,lo_BHR,lo_CER,hi_BER |
| s529 | R77 | sumlo | lo | CQR | 122559/1000000 | lo_BCR,s434,s473,lo_CER,hi_BER |
| s531 | R81 | sumlo | lo | HRS | 108721/1000000 | lo_BHR,lo_FRS,s373,s499,hi_BFR |
| s532 | R83 | sumlo | lo | CRS | 93183/1000000 | lo_CER,lo_FRS,s417,lo_ERS,hi_EFR |
| s534 | R85 | sumlo | lo | FPR | 244811/1000000 | s460,s504,s433,s499,hi_EHR |
| s535 | R86 | sumlo | lo | FQR | 92619/500000 | s460,s369,s434,s499,hi_EHR |
| s537 | R88 | sumlo | lo | PRS | 96433/1000000 | s433,lo_FRS,lo_ERS,s534,hi_EFR |
| s538 | R89 | sumlo | lo | HQR | 168303/1000000 | s431,lo_PQR,s434,s504,hi_EPR |
| s541 | R92 | sumlo | lo | BRS | 156667/1000000 | s487,s531,lo_BHS,lo_ERS,s432 |
| s542 | R92 | sumlo | lo | EHS | 308643/1000000 | s487,s531,lo_BHS,lo_ERS,s241 |
| s543 | R93 | sumlo | lo | HRS | 22327/200000 | lo_BHS,lo_FRS,s541,s508,s439 |
| s545 | R95 | sumlo | lo | EFS | 8349/31250 | lo_CES,lo_FRS,s419,lo_ERS,s49 |
| s546 | R96 | sumlo | lo | EPS | 253813/1000000 | lo_CES,s537,s232,lo_ERS,s49 |
| s552 | R98 | linear | lo | ACH | 281191/1000000 | s517,lo_AHP,lo_CHP |
| s557 | R101 | linear | lo | AER | 86647/250000 | s484,s527,lo_ERS |
| s560 | R103 | linear | lo | AHR | 430451/1000000 | lo_AHP,s515,s504 |
| s563 | R104 | linear | lo | BCH | 321333/1000000 | s518,lo_BHP,lo_CHP |
| s566 | R105 | linear | hi | BEF | 178143/200000 | hi_BEH,s402,hi_EFH |
| s567 | R107 | linear | lo | BEP | 23411/62500 | lo_BEQ,s523,s521 |
| s570 | R108 | linear | lo | BER | 423073/1000000 | s487,s541,lo_ERS |
| s572 | R109 | linear | lo | BFH | 74069/250000 | s513,lo_BHP,lo_FHP |
| s574 | R111 | linear | lo | BHQ | 292633/1000000 | lo_BHP,s523,lo_HPQ |
| s578 | R113 | linear | lo | BPR | 191317/500000 | s523,s473,lo_PQR |
| s585 | R117 | linear | lo | CEH | 135031/250000 | hi_CER,s528,s431 |
| s587 | R120 | linear | lo | CER | 279183/1000000 | lo_CES,s532,lo_ERS |
| s591 | R121 | linear | lo | CFR | 400797/1000000 | lo_CFQ,s529,s535 |
| s593 | R122 | linear | lo | CFS | 21721/62500 | s591,s49,lo_FRS |
| s595 | R123 | linear | lo | CHR | 385381/1000000 | s483,s529,s538 |
| s596 | R123 | linear | hi | HQR | 402341/1000000 | s483,hi_CHR,s529 |
| s600 | R126 | linear | lo | CPR | 308559/1000000 | lo_CPQ,s529,lo_PQR |
| s603 | R127 | linear | hi | FHR | 120107/250000 | hi_EFH,s460,hi_EHR |
| s605 | R128 | linear | lo | EFR | 28323/62500 | s545,lo_ERS,lo_FRS |
| s606 | R129 | linear | lo | EHR | 256639/500000 | s542,lo_ERS,s543 |
| s607 | R129 | linear | hi | EHS | 16523/31250 | hi_EHR,lo_ERS,s543 |
| s608 | R130 | linear | lo | EPR | 221623/500000 | s546,lo_ERS,s537 |
| s610 | R131 | linear | lo | EQR | 155611/500000 | s489,lo_ERS,lo_QRS |
| s611 | R137 | bary_hi | lo | AES | 153941/1000000 | s476,s557 |
| s615 | R139 | bary_lo | hi | BFS | 15801/20000 | hi_BCF,s566,hi_BFR |
| s628 | R0 | sum | lo | AER | 346839/1000000 | s611,s527,lo_ERS |
| s630 | R2 | sub | hi | EHP | 26139/50000 | hi_BEH,s567,lo_BHP |
| s632 | R5 | sub | hi | HPR | 451551/1000000 | hi_BHR,lo_BHP,s578 |
| s651 | R16 | sumlo | lo | BQR | 190181/1000000 | lo_BEQ,lo_BHR,s570,s574,hi_BEH |
| s652 | R17 | sumlo | lo | ACR | 24201/200000 | lo_ABC,s595,s552,lo_BCR,hi_BCH |
| s654 | R21 | sumlo | lo | ACE | 58063/250000 | s552,s587,s652,s585,hi_CHR |
| s656 | R24 | sumlo | lo | BCE | 9037/40000 | s563,s587,lo_BCR,s585,hi_CHR |
| s660 | R28 | sumlo | lo | CHQ | 101983/1000000 | s498,s529,lo_CFQ,s595,hi_CFR |
| s661 | R30 | sumlo | lo | AES | 20261/125000 | s654,lo_ERS,s628,lo_CES,hi_CER |
| s663 | R33 | sumlo | lo | CEQ | 4627/31250 | s656,s610,lo_BEQ,s587,hi_BER |
| s664 | R34 | sumlo | lo | BES | 36331/200000 | s656,lo_ERS,s570,lo_CES,hi_CER |
| s666 | R36 | sumlo | lo | EQS | 64277/500000 | s663,lo_ERS,lo_CES,s610,hi_CER |
| s667 | R37 | sumlo | lo | EFP | 96429/500000 | lo_EFH,s608,s605,s519,hi_EHR |
| s672 | R39 | sumlo | lo | AEF | 328743/1000000 | lo_AFH,s605,s525,lo_EFH,s603 |
| s677 | R47 | sumlo | lo | CFH | 216069/1000000 | s552,lo_EFH,lo_AFH,s585,hi_AEH |
| s678 | R48 | sumlo | lo | FHR | 111939/500000 | lo_AFH,s606,s560,lo_EFH,hi_AEH |
| s681 | R50 | sumlo | lo | FHP | 5813/62500 | s572,lo_CHP,lo_BHP,s677,hi_BCH |
| s686 | R54 | sumlo | lo | FHS | 2461/15625 | s572,s542,lo_BHS,lo_EFH,hi_BEH |
| s692 | R57 | sumlo | lo | AEP | 34901/250000 | lo_ABP,s667,lo_AFP,s567,hi_BFP |
| s693 | R57 | sumlo | lo | BFP | 11487/100000 | lo_ABP,s667,lo_AFP,s567,hi_AEP |
| s695 | R59 | sumlo | lo | APR | 2412/15625 | lo_ABP,s534,lo_AFP,s578,hi_BFP |
| s696 | R60 | sumlo | lo | ACP | 98081/1000000 | s692,lo_CHP,lo_AHP,s229,s630 |
| s697 | R62 | sumlo | lo | EHP | 22411/100000 | s567,lo_CHP,lo_BHP,s229,s10 |
| s698 | R63 | sumlo | lo | BCP | 28471/200000 | lo_BHP,s600,s578,lo_CHP,s632 |
| s699 | R63 | sumlo | lo | HPR | 196999/1000000 | lo_BHP,s600,s578,lo_CHP,s10 |
| s701 | R65 | sumlo | lo | EPQ | 1761/10000 | s229,lo_PQR,lo_CPQ,s608,hi_CPR |
| s702 | R68 | sumlo | lo | BPQ | 111601/1000000 | s574,lo_PQR,s651,lo_HPQ,s596 |
| s704 | R74 | sumlo | lo | AFR | 185933/500000 | s628,s678,s560,s605,hi_EHR |
| s706 | R75 | sumlo | lo | ARS | 53691/500000 | s628,s543,s560,lo_ERS,hi_EHR |
| s707 | R77 | sumlo | lo | CQR | 15771/125000 | lo_BCR,s610,s651,s587,hi_BER |
| s708 | R79 | sumlo | lo | BFR | 69749/125000 | s570,s678,lo_BHR,s605,hi_EHR |
| s709 | R83 | sumlo | lo | CRS | 48043/500000 | s587,lo_FRS,s591,lo_ERS,hi_EFR |
| s710 | R85 | sumlo | lo | FPR | 257041/1000000 | s605,s699,s608,s678,hi_EHR |
| s711 | R86 | sumlo | lo | FQR | 99503/500000 | s605,s538,s610,s678,hi_EHR |
| s713 | R88 | sumlo | lo | PRS | 19791/200000 | s608,lo_FRS,lo_ERS,s710,hi_EFR |
| s714 | R89 | sumlo | lo | HQR | 1729/10000 | s606,lo_PQR,s610,s699,hi_EPR |
| s716 | R92 | sumlo | lo | BRS | 80211/500000 | s664,s543,lo_BHS,lo_ERS,s607 |
| s717 | R92 | sumlo | lo | EHS | 313921/1000000 | s664,s543,lo_BHS,lo_ERS,s241 |
| s718 | R93 | sumlo | lo | HRS | 4547/40000 | lo_BHS,lo_FRS,s716,s686,s615 |
| s720 | R95 | sumlo | lo | EFS | 140057/500000 | lo_CES,lo_FRS,s593,lo_ERS,s49 |
| s721 | R96 | sumlo | lo | EPS | 31927/125000 | lo_CES,s713,s232,lo_ERS,s49 |
| s726 | R98 | linear | lo | ACH | 284081/1000000 | s696,lo_AHP,lo_CHP |
| s730 | R100 | linear | lo | AEH | 228357/500000 | s692,lo_AHP,s697 |
| s731 | R101 | linear | lo | AER | 36247/100000 | s661,s706,lo_ERS |
| s733 | R102 | linear | lo | AFH | 8719/31250 | lo_AFP,lo_AHP,s681 |
| s735 | R103 | linear | lo | AHR | 444367/1000000 | lo_AHP,s695,s699 |
| s738 | R104 | linear | lo | BCH | 65671/200000 | s698,lo_BHP,lo_CHP |
| s740 | R105 | linear | hi | BEF | 439621/500000 | hi_BEH,s572,hi_EFH |
| s741 | R107 | linear | lo | BEP | 380701/1000000 | lo_BEQ,s702,s701 |
| s744 | R108 | linear | lo | BER | 435077/1000000 | s664,s716,lo_ERS |
| s746 | R109 | linear | lo | BFH | 150439/500000 | s693,lo_BHP,s681 |
| s748 | R111 | linear | lo | BHQ | 297601/1000000 | lo_BHP,s702,lo_HPQ |
| s754 | R113 | linear | lo | BPR | 197391/500000 | s702,s651,lo_PQR |
| s758 | R116 | linear | lo | CEF | 65213/125000 | hi_CER,s591,s605 |
| s759 | R117 | linear | lo | CEH | 283199/500000 | hi_CER,s595,s606 |
| s762 | R119 | linear | lo | CEP | 52443/125000 | hi_CER,s600,s608 |
| s763 | R120 | linear | lo | CER | 141043/500000 | lo_CES,s709,lo_ERS |
| s767 | R121 | linear | lo | CFR | 209087/500000 | lo_CFQ,s707,s711 |
| s769 | R122 | linear | lo | CFS | 364913/1000000 | s767,s49,lo_FRS |
| s771 | R123 | linear | lo | CHR | 401051/1000000 | s660,s707,s714 |
| s772 | R123 | linear | hi | HQR | 97817/250000 | s660,hi_CHR,s707 |
| s776 | R126 | linear | lo | CPR | 39021/125000 | lo_CPQ,s707,lo_PQR |
| s779 | R127 | linear | hi | FHR | 93073/200000 | hi_EFH,s605,hi_EHR |
| s781 | R128 | linear | lo | EFR | 233057/500000 | s720,lo_ERS,lo_FRS |
| s782 | R129 | linear | lo | EHR | 130149/250000 | s717,lo_ERS,s718 |
| s783 | R129 | linear | hi | EHS | 65837/125000 | hi_EHR,lo_ERS,s718 |
| s784 | R130 | linear | lo | EPR | 447371/1000000 | s721,lo_ERS,s713 |
| s786 | R131 | linear | lo | EQR | 157277/500000 | s666,lo_ERS,lo_QRS |
| s787 | R137 | bary_hi | lo | AES | 40549/250000 | s654,s731 |
| s791 | R139 | bary_lo | hi | BFS | 786921/1000000 | hi_BCF,s740,hi_BFR |
| s795 | R143 | bary_lo | lo | FHS | 81129/500000 | s677,lo_EFH,s678 |
| s805 | R0 | sum | lo | AER | 181289/500000 | s787,s706,lo_ERS |
| s807 | R2 | sum | lo | BEH | 697811/1000000 | s741,lo_BHP,s697 |
| s808 | R2 | sub | hi | EHP | 103331/200000 | hi_BEH,s741,lo_BHP |
| s810 | R5 | sub | hi | HPR | 439403/1000000 | hi_BHR,lo_BHP,s754 |
| s816 | R12 | sumlo | lo | AEP | 28977/200000 | s672,lo_AHP,s730,lo_AFP,hi_AFH |
| s827 | R16 | sumlo | lo | BQR | 19591/100000 | lo_BEQ,lo_BHR,s744,s748,hi_BEH |
| s829 | R17 | sumlo | lo | ACR | 62187/500000 | lo_ABC,s771,s726,lo_BCR,hi_BCH |
| s831 | R21 | sumlo | lo | ACE | 243099/1000000 | s726,s763,s829,s759,hi_CHR |
| s832 | R22 | sumlo | lo | ACF | 23517/100000 | s726,s767,s829,s677,hi_CHR |
| s833 | R24 | sumlo | lo | BCE | 117287/500000 | s738,s763,lo_BCR,s759,hi_CHR |
| s834 | R25 | sumlo | lo | BCF | 50823/200000 | s738,s767,lo_BCR,s677,hi_CHR |
| s837 | R28 | sumlo | lo | CHQ | 54847/500000 | s677,s707,lo_CFQ,s771,hi_CFR |
| s838 | R30 | sumlo | lo | AES | 169529/1000000 | s831,lo_ERS,s805,lo_CES,hi_CER |
| s840 | R33 | sumlo | lo | CEQ | 153821/1000000 | s833,s786,lo_BEQ,s763,hi_BER |
| s841 | R34 | sumlo | lo | BES | 37487/200000 | s833,lo_ERS,s744,lo_CES,hi_CER |
| s843 | R36 | sumlo | lo | EQS | 65549/500000 | s840,lo_ERS,lo_CES,s786,hi_CER |
| s844 | R37 | sumlo | lo | EFP | 199171/1000000 | lo_EFH,s784,s781,s697,hi_EHR |
| s846 | R38 | sumlo | lo | CFH | 231057/1000000 | s832,lo_EFH,s733,s758,s185 |
| s848 | R39 | sumlo | lo | AEF | 353771/1000000 | s733,s781,s704,lo_EFH,s779 |
| s850 | R40 | sumlo | lo | BFQ | 174099/1000000 | s834,s711,s708,lo_CFQ,hi_CFR |
| s855 | R48 | sumlo | lo | FHR | 113979/500000 | s733,s782,s735,lo_EFH,hi_AEH |
| s857 | R49 | sumlo | lo | EHP | 229497/1000000 | s807,lo_CHP,lo_BHP,s759,hi_BCH |
| s858 | R50 | sumlo | lo | FHP | 24141/250000 | s746,lo_CHP,lo_BHP,s846,hi_BCH |
| s868 | R57 | sumlo | lo | BFP | 29347/250000 | lo_ABP,s844,lo_AFP,s741,hi_AEP |
| s869 | R59 | sumlo | lo | APR | 80183/500000 | lo_ABP,s710,lo_AFP,s754,hi_BFP |
| s870 | R60 | sumlo | lo | ACP | 101599/1000000 | s816,lo_CHP,lo_AHP,s762,s808 |
| s871 | R63 | sumlo | lo | BCP | 74813/500000 | lo_BHP,s776,s754,lo_CHP,s810 |
| s872 | R63 | sumlo | lo | HPR | 20149/100000 | lo_BHP,s776,s754,lo_CHP,s10 |
| s874 | R65 | sumlo | lo | EPQ | 178557/1000000 | s762,lo_PQR,lo_CPQ,s784,hi_CPR |
| s875 | R68 | sumlo | lo | BPQ | 58651/500000 | s748,lo_PQR,s827,lo_HPQ,s772 |
| s877 | R74 | sumlo | lo | AFR | 395131/1000000 | s805,s855,s735,s781,hi_EHR |
| s878 | R75 | sumlo | lo | ARS | 112551/1000000 | s805,s718,s735,lo_ERS,hi_EHR |
| s879 | R77 | sumlo | lo | CQR | 129979/1000000 | lo_BCR,s786,s827,s763,hi_BER |
| s881 | R83 | sumlo | lo | CRS | 98951/1000000 | s763,lo_FRS,s767,lo_ERS,hi_EFR |
| s883 | R85 | sumlo | lo | FPR | 267121/1000000 | s781,s872,s784,s855,hi_EHR |
| s884 | R86 | sumlo | lo | FQR | 103833/500000 | s781,s714,s786,s855,hi_EHR |
| s886 | R88 | sumlo | lo | PRS | 50481/500000 | s784,lo_FRS,lo_ERS,s883,hi_EFR |
| s887 | R89 | sumlo | lo | HQR | 177259/1000000 | s782,lo_PQR,s786,s872,hi_EPR |
| s890 | R92 | sumlo | lo | BRS | 81497/500000 | s841,s718,lo_BHS,lo_ERS,s783 |
| s891 | R92 | sumlo | lo | EHS | 12709/40000 | s841,s718,lo_BHS,lo_ERS,s241 |
| s892 | R93 | sumlo | lo | HRS | 57813/500000 | lo_BHS,lo_FRS,s890,s795,s791 |
| s893 | R95 | sumlo | lo | EFS | 291163/1000000 | lo_CES,lo_FRS,s769,lo_ERS,s49 |
| s894 | R96 | sumlo | lo | EPS | 256693/1000000 | lo_CES,s886,s232,lo_ERS,s49 |
| s898 | R98 | linear | lo | ACH | 287599/1000000 | s870,lo_AHP,lo_CHP |
| s902 | R99 | linear | hi | AEF | 36231/50000 | hi_AEH,s733,hi_EFH |
| s903 | R100 | linear | lo | AEH | 233691/500000 | s816,lo_AHP,s857 |
| s904 | R101 | linear | lo | AER | 9377/25000 | s838,s878,lo_ERS |
| s906 | R102 | linear | lo | AFH | 70641/250000 | lo_AFP,lo_AHP,s858 |
| s908 | R103 | linear | lo | AHR | 56857/125000 | lo_AHP,s869,s872 |
| s911 | R104 | linear | lo | BCH | 167813/500000 | s871,lo_BHP,lo_CHP |
| s913 | R105 | linear | hi | BEF | 10933/12500 | hi_BEH,s746,hi_EFH |
| s917 | R107 | linear | lo | BEP | 388859/1000000 | lo_BEQ,s875,s874 |
| s920 | R108 | linear | lo | BER | 443429/1000000 | s841,s890,lo_ERS |
| s922 | R109 | linear | lo | BFH | 38369/125000 | s868,lo_BHP,s858 |
| s924 | R110 | linear | lo | BFR | 23107/40000 | s850,s827,s884 |
| s925 | R111 | linear | lo | BHQ | 151651/500000 | lo_BHP,s875,lo_HPQ |
| s930 | R113 | linear | lo | BPR | 101553/250000 | s875,s827,lo_PQR |
| s936 | R116 | linear | lo | CEF | 552027/1000000 | hi_CER,s767,s781 |
| s937 | R117 | linear | lo | CEH | 294693/500000 | hi_CER,s771,s782 |
| s940 | R119 | linear | lo | CEP | 213639/500000 | hi_CER,s776,s784 |
| s941 | R120 | linear | lo | CER | 284951/1000000 | lo_CES,s881,lo_ERS |
| s945 | R121 | linear | lo | CFR | 86129/200000 | lo_CFQ,s879,s884 |
| s947 | R122 | linear | lo | CFS | 47173/125000 | s945,s49,lo_FRS |
| s949 | R123 | linear | lo | CHR | 104233/250000 | s837,s879,s887 |
| s950 | R123 | linear | hi | HQR | 189873/500000 | s837,hi_CHR,s879 |
| s954 | R126 | linear | lo | CPR | 315979/1000000 | lo_CPQ,s879,lo_PQR |
| s957 | R127 | linear | hi | FHR | 452419/1000000 | hi_EFH,s781,hi_EHR |
| s959 | R128 | linear | lo | EFR | 477163/1000000 | s893,lo_ERS,lo_FRS |
| s960 | R129 | linear | lo | EHR | 526351/1000000 | s891,lo_ERS,s892 |
| s961 | R129 | linear | hi | EHS | 104949/200000 | hi_EHR,lo_ERS,s892 |
| s962 | R130 | linear | lo | EPR | 90131/200000 | s894,lo_ERS,s886 |
| s964 | R131 | linear | lo | EQR | 158549/500000 | s843,lo_ERS,lo_QRS |
| s968 | R139 | bary_lo | hi | BFS | 392833/500000 | hi_BCF,s913,hi_BFR |
| s972 | R143 | bary_lo | lo | FHS | 83729/500000 | s846,lo_EFH,s855 |
| s982 | R2 | sum | lo | BEH | 177839/250000 | s917,lo_BHP,s857 |
| s983 | R2 | sub | hi | EHP | 508497/1000000 | hi_BEH,s917,lo_BHP |
| s985 | R5 | sum | lo | BHR | 350351/500000 | lo_BHP,s930,s872 |
| s986 | R5 | sub | hi | HPR | 427973/1000000 | hi_BHR,lo_BHP,s930 |
| s991 | R12 | sumlo | lo | AEP | 151469/1000000 | s848,lo_AHP,s903,lo_AFP,hi_AFH |
| s1002 | R16 | sumlo | lo | BQR | 100801/500000 | lo_BEQ,s985,s920,s925,hi_BEH |
| s1003 | R17 | sumlo | lo | ACR | 15987/125000 | lo_ABC,s949,s898,lo_BCR,hi_BCH |
| s1005 | R21 | sumlo | lo | ACE | 253999/1000000 | s898,s941,s1003,s937,hi_CHR |
| s1006 | R22 | sumlo | lo | ACF | 123829/500000 | s898,s945,s1003,s846,hi_CHR |
| s1007 | R24 | sumlo | lo | BCE | 242889/1000000 | s911,s941,lo_BCR,s937,hi_CHR |
| s1008 | R25 | sumlo | lo | BCF | 4188/15625 | s911,s945,lo_BCR,s846,hi_CHR |
| s1011 | R28 | sumlo | lo | CHQ | 116913/1000000 | s846,s879,lo_CFQ,s949,hi_CFR |
| s1012 | R30 | sumlo | lo | AES | 176079/1000000 | s1005,lo_ERS,s904,lo_CES,hi_CER |
| s1013 | R33 | sumlo | lo | CEQ | 39801/250000 | s1007,s964,lo_BEQ,s941,hi_BER |
| s1014 | R34 | sumlo | lo | BES | 192101/1000000 | s1007,lo_ERS,s920,lo_CES,hi_CER |
| s1016 | R36 | sumlo | lo | EQS | 133317/1000000 | s1013,lo_ERS,lo_CES,s964,hi_CER |
| s1017 | R37 | sumlo | lo | EFP | 206469/1000000 | lo_EFH,s962,s959,s857,hi_EHR |
| s1018 | R38 | sumlo | lo | CFH | 123523/500000 | s1006,lo_EFH,s906,s936,s902 |
| s1020 | R39 | sumlo | lo | AEF | 379241/1000000 | s906,s959,s877,lo_EFH,s957 |
| s1021 | R39 | sumlo | lo | FHR | 236781/1000000 | s906,s959,s877,lo_EFH,s902 |
| s1022 | R40 | sumlo | lo | BFQ | 9293/50000 | s1008,s884,s924,lo_CFQ,hi_CFR |
| s1028 | R49 | sumlo | lo | EHP | 236129/1000000 | s982,lo_CHP,lo_BHP,s937,hi_BCH |
| s1029 | R50 | sumlo | lo | FHP | 100569/1000000 | s922,lo_CHP,lo_BHP,s1018,hi_BCH |
| s1038 | R57 | sumlo | lo | BFP | 120517/1000000 | lo_ABP,s1017,lo_AFP,s917,hi_AEP |
| s1040 | R59 | sumlo | lo | APR | 82829/500000 | lo_ABP,s883,lo_AFP,s930,hi_BFP |
| s1041 | R60 | sumlo | lo | ACP | 13231/125000 | s991,lo_CHP,lo_AHP,s940,s983 |
| s1042 | R63 | sumlo | lo | BCP | 78467/500000 | lo_BHP,s954,s930,lo_CHP,s986 |
| s1043 | R63 | sumlo | lo | HPR | 102917/500000 | lo_BHP,s954,s930,lo_CHP,s10 |
| s1044 | R65 | sumlo | lo | EPQ | 90413/500000 | s940,lo_PQR,lo_CPQ,s962,hi_CPR |
| s1045 | R68 | sumlo | lo | BPQ | 123651/1000000 | s925,lo_PQR,s1002,lo_HPQ,s950 |
| s1047 | R74 | sumlo | lo | AFR | 8341/20000 | s904,s1021,s908,s959,hi_EHR |
| s1048 | R75 | sumlo | lo | ARS | 116817/1000000 | s904,s892,s908,lo_ERS,hi_EHR |
| s1049 | R77 | sumlo | lo | CQR | 1337/10000 | lo_BCR,s964,s1002,s941,hi_BER |
| s1051 | R81 | sumlo | lo | HRS | 115763/1000000 | s985,lo_FRS,s890,s1021,hi_BFR |
| s1052 | R83 | sumlo | lo | CRS | 50559/500000 | s941,lo_FRS,s945,lo_ERS,hi_EFR |
| s1054 | R85 | sumlo | lo | FPR | 139713/500000 | s959,s1043,s962,s1021,hi_EHR |
| s1055 | R86 | sumlo | lo | FQR | 13607/62500 | s959,s887,s964,s1021,hi_EHR |
| s1057 | R88 | sumlo | lo | PRS | 20633/200000 | s962,lo_FRS,lo_ERS,s1054,hi_EFR |
| s1058 | R89 | sumlo | lo | HQR | 36221/200000 | s960,lo_PQR,s964,s1043,hi_EPR |
| s1061 | R92 | sumlo | lo | BRS | 1323/8000 | s1014,s1051,lo_BHS,lo_ERS,s961 |
| s1062 | R92 | sumlo | lo | EHS | 80293/250000 | s1014,s1051,lo_BHS,lo_ERS,s241 |
| s1063 | R93 | sumlo | lo | HRS | 117397/1000000 | lo_BHS,lo_FRS,s1061,s972,s968 |
| s1064 | R95 | sumlo | lo | EFS | 299093/1000000 | lo_CES,lo_FRS,s947,lo_ERS,s49 |
| s1065 | R96 | sumlo | lo | EPS | 258093/1000000 | lo_CES,s1057,s232,lo_ERS,s49 |
| s1069 | R98 | linear | lo | ACH | 36481/125000 | s1041,lo_AHP,lo_CHP |
| s1073 | R99 | linear | hi | AEF | 90133/125000 | hi_AEH,s906,hi_EFH |
| s1075 | R100 | linear | lo | AEH | 240299/500000 | s991,lo_AHP,s1028 |
| s1076 | R101 | linear | lo | AER | 48237/125000 | s1012,s1048,lo_ERS |
| s1078 | R102 | linear | lo | AFH | 286569/1000000 | lo_AFP,lo_AHP,s1029 |
| s1079 | R103 | linear | hi | APR | 32477/62500 | lo_AHP,hi_AHR,s1043 |
| s1080 | R103 | linear | lo | AHR | 116123/250000 | lo_AHP,s1040,s1043 |
| s1083 | R104 | linear | lo | BCH | 171467/500000 | s1042,lo_BHP,lo_CHP |
| s1089 | R107 | linear | lo | BEP | 397477/1000000 | lo_BEQ,s1045,s1044 |
| s1092 | R108 | linear | lo | BER | 112619/250000 | s1014,s1061,lo_ERS |
| s1094 | R109 | linear | lo | BFH | 157043/500000 | s1038,lo_BHP,s1029 |
| s1096 | R110 | linear | lo | BFR | 302587/500000 | s1022,s1002,s1055 |
| s1097 | R111 | linear | lo | BHQ | 309651/1000000 | lo_BHP,s1045,lo_HPQ |
| s1105 | R113 | linear | lo | BPR | 418253/1000000 | s1045,s1002,lo_PQR |
| s1109 | R115 | linear | lo | CEH | 61391/100000 | s936,s1018,hi_EFH |
| s1110 | R116 | linear | lo | CEF | 575547/1000000 | hi_CER,s945,s959 |
| s1113 | R119 | linear | lo | CEP | 434373/1000000 | hi_CER,s954,s962 |
| s1115 | R120 | linear | lo | CER | 143559/500000 | lo_CES,s1052,lo_ERS |
| s1119 | R121 | linear | lo | CFR | 111103/250000 | lo_CFQ,s1049,s1055 |
| s1121 | R122 | linear | lo | CFS | 391151/1000000 | s1119,s49,lo_FRS |
| s1123 | R123 | linear | lo | CHR | 215859/500000 | s1011,s1049,s1058 |
| s1124 | R123 | linear | hi | HQR | 184403/500000 | s1011,hi_CHR,s1049 |
| s1127 | R126 | linear | lo | CPR | 3197/10000 | lo_CPQ,s1049,lo_PQR |
| s1131 | R127 | linear | hi | FHR | 44137/100000 | hi_EFH,s959,hi_EHR |
| s1133 | R128 | linear | lo | EFR | 485093/1000000 | s1064,lo_ERS,lo_FRS |
| s1134 | R129 | linear | lo | EHR | 531569/1000000 | s1062,lo_ERS,s1063 |
| s1135 | R129 | linear | hi | EHS | 261487/500000 | hi_EHR,lo_ERS,s1063 |
| s1136 | R130 | linear | lo | EPR | 227129/500000 | s1065,lo_ERS,s1057 |
| s1138 | R131 | linear | lo | EQR | 319317/1000000 | s1016,lo_ERS,lo_QRS |
| s1156 | R2 | sum | lo | BEH | 363303/500000 | s1089,lo_BHP,s1028 |
| s1157 | R2 | sub | hi | EHP | 499879/1000000 | hi_BEH,s1089,lo_BHP |
| s1159 | R5 | sum | lo | BHR | 717087/1000000 | lo_BHP,s1105,s1043 |
| s1160 | R5 | sub | hi | HPR | 103983/250000 | hi_BHR,lo_BHP,s1105 |
| s1165 | R12 | sumlo | lo | AEP | 31721/200000 | s1020,lo_AHP,s1075,lo_AFP,hi_AFH |
| s1177 | R16 | sumlo | lo | BQR | 208187/1000000 | lo_BEQ,s1159,s1092,s1097,hi_BEH |
| s1178 | R17 | sumlo | lo | ACR | 16419/125000 | lo_ABC,s1123,s1069,lo_BCR,hi_BCH |
| s1181 | R22 | sumlo | lo | ACF | 261779/1000000 | s1069,s1119,s1178,s1018,hi_CHR |
| s1183 | R24 | sumlo | lo | BCE | 62783/250000 | s1083,s1115,lo_BCR,s1109,hi_CHR |
| s1184 | R25 | sumlo | lo | BCF | 56627/200000 | s1083,s1119,lo_BCR,s1018,hi_CHR |
| s1186 | R27 | sumlo | lo | CFP | 24279/125000 | s1018,s1127,s1119,lo_CHP,hi_CHR |
| s1187 | R28 | sumlo | lo | CHQ | 62171/500000 | s1018,s1049,lo_CFQ,s1123,hi_CFR |
| s1188 | R29 | sumlo | lo | CPQ | 94643/1000000 | s1186,s1049,lo_CFQ,s1127,hi_CFR |
| s1190 | R33 | sumlo | lo | CEQ | 16439/100000 | s1183,s1138,lo_BEQ,s1115,hi_BER |
| s1191 | R34 | sumlo | lo | BES | 9819/50000 | s1183,lo_ERS,s1092,lo_CES,hi_CER |
| s1192 | R36 | sumlo | lo | EQS | 13539/100000 | s1190,lo_ERS,lo_CES,s1138,hi_CER |
| s1194 | R38 | sumlo | lo | CFH | 21/80 | s1181,lo_EFH,s1078,s1110,s1073 |
| s1196 | R39 | sumlo | lo | AEF | 25177/62500 | s1078,s1133,s1047,lo_EFH,s1131 |
| s1197 | R39 | sumlo | lo | FHR | 246577/1000000 | s1078,s1133,s1047,lo_EFH,s1073 |
| s1198 | R40 | sumlo | lo | BFQ | 200367/1000000 | s1184,s1055,s1096,lo_CFQ,hi_CFR |
| s1204 | R49 | sumlo | lo | EHP | 243349/1000000 | s1156,lo_CHP,lo_BHP,s1109,hi_BCH |
| s1205 | R50 | sumlo | lo | FHP | 10467/100000 | s1094,lo_CHP,lo_BHP,s1194,hi_BCH |
| s1216 | R59 | sumlo | lo | BFP | 24973/200000 | lo_ABP,s1054,lo_AFP,s1105,s1079 |
| s1217 | R60 | sumlo | lo | ACP | 1379/12500 | s1165,lo_CHP,lo_AHP,s1113,s1157 |
| s1218 | R63 | sumlo | lo | BCP | 82501/500000 | lo_BHP,s1127,s1105,lo_CHP,s1160 |
| s1219 | R63 | sumlo | lo | HPR | 105163/500000 | lo_BHP,s1127,s1105,lo_CHP,s10 |
| s1220 | R65 | sumlo | lo | EPQ | 184683/1000000 | s1113,lo_PQR,s1188,s1136,hi_CPR |
| s1221 | R68 | sumlo | lo | BPQ | 6529/50000 | s1097,lo_PQR,s1177,lo_HPQ,s1124 |
| s1223 | R74 | sumlo | lo | AFR | 109247/250000 | s1076,s1197,s1080,s1133,hi_EHR |
| s1225 | R77 | sumlo | lo | CQR | 137597/1000000 | lo_BCR,s1138,s1177,s1115,hi_BER |
| s1227 | R81 | sumlo | lo | HRS | 1199/10000 | s1159,lo_FRS,s1061,s1197,hi_BFR |
| s1228 | R83 | sumlo | lo | CRS | 10337/100000 | s1115,lo_FRS,s1119,lo_ERS,hi_EFR |
| s1230 | R85 | sumlo | lo | FPR | 145927/500000 | s1133,s1219,s1136,s1197,hi_EHR |
| s1231 | R86 | sumlo | lo | FQR | 45431/200000 | s1133,s1058,s1138,s1197,hi_EHR |
| s1234 | R88 | sumlo | lo | PRS | 105431/1000000 | s1136,lo_FRS,lo_ERS,s1230,hi_EFR |
| s1235 | R89 | sumlo | lo | HQR | 184873/1000000 | s1134,lo_PQR,s1138,s1219,hi_EPR |
| s1239 | R92 | sumlo | lo | BRS | 42109/250000 | s1191,s1227,lo_BHS,lo_ERS,s1135 |
| s1241 | R95 | sumlo | lo | EFS | 307847/1000000 | lo_CES,lo_FRS,s1121,lo_ERS,s49 |
| s1243 | R96 | sumlo | lo | EPS | 129767/500000 | lo_CES,s1234,s232,lo_ERS,s49 |
| s1247 | R98 | linear | lo | ACH | 926/3125 | s1217,lo_AHP,lo_CHP |
| s1251 | R99 | linear | hi | AEF | 717059/1000000 | hi_AEH,s1078,hi_EFH |
| s1252 | R99 | linear | lo | AEH | 252119/500000 | s1196,s1078,hi_EFH |
| s1255 | R102 | linear | lo | AFH | 29067/100000 | lo_AFP,lo_AHP,s1205 |
| s1256 | R103 | linear | hi | APR | 25757/50000 | lo_AHP,hi_AHR,s1219 |
| s1260 | R104 | linear | lo | BCH | 175501/500000 | s1218,lo_BHP,lo_CHP |
| s1266 | R107 | linear | lo | BEP | 408263/1000000 | lo_BEQ,s1221,s1220 |
| s1269 | R108 | linear | lo | BER | 57227/125000 | s1191,s1239,lo_ERS |
| s1271 | R109 | linear | lo | BFH | 64507/200000 | s1216,lo_BHP,s1205 |
| s1273 | R110 | linear | lo | BFR | 635709/1000000 | s1198,s1177,s1231 |
| s1274 | R111 | linear | lo | BHQ | 15829/50000 | lo_BHP,s1221,lo_HPQ |
| s1282 | R113 | linear | lo | BPR | 431767/1000000 | s1221,s1177,lo_PQR |
| s1286 | R115 | linear | lo | CEH | 163221/250000 | s1110,s1194,hi_EFH |
| s1287 | R116 | linear | lo | CEF | 149311/250000 | hi_CER,s1119,s1133 |
| s1290 | R120 | linear | lo | CER | 28937/100000 | lo_CES,s1228,lo_ERS |
| s1294 | R121 | linear | lo | CFR | 57219/125000 | lo_CFQ,s1225,s1231 |
| s1295 | R121 | linear | hi | FQR | 357937/1000000 | lo_CFQ,hi_CFR,s1225 |
| s1296 | R122 | linear | lo | CFS | 404491/1000000 | s1294,s49,lo_FRS |
| s1298 | R123 | linear | lo | CHR | 111703/250000 | s1187,s1225,s1235 |
| s1299 | R123 | linear | hi | HQR | 8937/25000 | s1187,hi_CHR,s1225 |
| s1303 | R126 | linear | lo | CPR | 8131/25000 | s1188,s1225,lo_PQR |
| s1307 | R127 | linear | lo | EHR | 546507/1000000 | hi_EFH,s1133,s1197 |
| s1308 | R127 | linear | hi | FHR | 2709/6250 | hi_EFH,s1133,hi_EHR |
| s1310 | R128 | linear | lo | EFR | 493847/1000000 | s1241,lo_ERS,lo_FRS |
| s1311 | R129 | linear | hi | EHS | 520471/1000000 | hi_EHR,lo_ERS,s1227 |
| s1312 | R130 | linear | lo | EPR | 91593/200000 | s1243,lo_ERS,s1234 |
| s1314 | R131 | linear | lo | EQR | 32139/100000 | s1192,lo_ERS,lo_QRS |
| s1332 | R2 | sum | lo | BEH | 186153/250000 | s1266,lo_BHP,s1204 |
| s1335 | R5 | sum | lo | BHR | 735093/1000000 | lo_BHP,s1282,s1219 |
| s1336 | R5 | sub | hi | HPR | 201209/500000 | hi_BHR,lo_BHP,s1282 |
| s1340 | R12 | sumlo | lo | AEP | 167317/1000000 | s1196,lo_AHP,s1252,lo_AFP,hi_AFH |
| s1353 | R16 | sumlo | lo | BQR | 13461/62500 | lo_BEQ,s1335,s1269,s1274,hi_BEH |
| s1354 | R17 | sumlo | lo | ACR | 134903/1000000 | lo_ABC,s1298,s1247,lo_BCR,hi_BCH |
| s1358 | R22 | sumlo | lo | ACF | 276151/1000000 | s1247,s1294,s1354,s1194,hi_CHR |
| s1360 | R24 | sumlo | lo | BCE | 131/500 | s1260,s1290,lo_BCR,s1286,hi_CHR |
| s1361 | R25 | sumlo | lo | BCF | 298803/1000000 | s1260,s1294,lo_BCR,s1194,hi_CHR |
| s1365 | R27 | sumlo | lo | CFP | 206559/1000000 | s1194,s1303,s1294,lo_CHP,hi_CHR |
| s1366 | R28 | sumlo | lo | CHQ | 16497/125000 | s1194,s1225,lo_CFQ,s1298,hi_CFR |
| s1367 | R29 | sumlo | lo | CPQ | 99687/1000000 | s1365,s1225,lo_CFQ,s1303,hi_CFR |
| s1369 | R33 | sumlo | lo | CEQ | 34177/200000 | s1360,s1314,lo_BEQ,s1290,hi_BER |
| s1370 | R34 | sumlo | lo | BES | 201477/1000000 | s1360,lo_ERS,s1269,lo_CES,hi_CER |
| s1372 | R36 | sumlo | lo | EQS | 34447/250000 | s1369,lo_ERS,lo_CES,s1314,hi_CER |
| s1374 | R38 | sumlo | lo | CFH | 277917/1000000 | s1358,lo_EFH,s1255,s1287,s1251 |
| s1376 | R39 | sumlo | lo | AEF | 21247/50000 | s1255,s1310,s1223,lo_EFH,s1308 |
| s1377 | R39 | sumlo | lo | FHR | 256863/1000000 | s1255,s1310,s1223,lo_EFH,s1251 |
| s1378 | R40 | sumlo | lo | BFQ | 107891/500000 | s1361,s1231,s1273,lo_CFQ,hi_CFR |
| s1379 | R43 | sumlo | lo | EFQ | 154277/500000 | s1287,s1231,lo_CFQ,s1310,hi_CFR |
| s1381 | R44 | sumlo | lo | FPQ | 125843/1000000 | s1365,s1231,lo_CFQ,s1230,hi_CFR |
| s1386 | R49 | sumlo | lo | EHP | 253693/1000000 | s1332,lo_CHP,lo_BHP,s1286,hi_BCH |
| s1387 | R50 | sumlo | lo | FHP | 54501/500000 | s1271,lo_CHP,lo_BHP,s1374,hi_BCH |
| s1396 | R58 | sumlo | lo | APR | 178263/1000000 | lo_ABP,s1312,s1340,s1282,hi_BEP |
| s1397 | R59 | sumlo | lo | BFP | 130637/1000000 | lo_ABP,s1230,lo_AFP,s1282,s1256 |
| s1399 | R61 | sumlo | lo | ACP | 116361/1000000 | lo_AHP,s1303,s1396,lo_CHP,s1336 |
| s1401 | R63 | sumlo | lo | BCP | 87473/500000 | lo_BHP,s1303,s1282,lo_CHP,s1336 |
| s1402 | R63 | sumlo | lo | HPR | 215757/1000000 | lo_BHP,s1303,s1282,lo_CHP,s10 |
| s1406 | R68 | sumlo | lo | BPQ | 13839/100000 | s1274,lo_PQR,s1353,lo_HPQ,s1299 |
| s1407 | R72 | sumlo | lo | EPQ | 193163/1000000 | s1379,lo_PQR,s1314,s1381,s1295 |
| s1412 | R77 | sumlo | lo | CQR | 70907/500000 | lo_BCR,s1314,s1353,s1290,hi_BER |
| s1414 | R81 | sumlo | lo | HRS | 124543/1000000 | s1335,lo_FRS,s1239,s1377,hi_BFR |
| s1416 | R84 | sumlo | lo | CRS | 52901/500000 | s1290,s1414,s1298,lo_ERS,hi_EHR |
| s1419 | R85 | sumlo | lo | FPR | 305691/1000000 | s1310,s1402,s1312,s1377,hi_EHR |
| s1420 | R86 | sumlo | lo | FQR | 237059/1000000 | s1310,s1235,s1314,s1377,hi_EHR |
| s1423 | R88 | sumlo | lo | PRS | 10791/100000 | s1312,lo_FRS,lo_ERS,s1419,hi_EFR |
| s1424 | R89 | sumlo | lo | HQR | 38107/200000 | s1307,lo_PQR,s1314,s1402,hi_EPR |
| s1429 | R92 | sumlo | lo | BRS | 86109/500000 | s1370,s1414,lo_BHS,lo_ERS,s1311 |
| s1431 | R95 | sumlo | lo | EFS | 316329/1000000 | lo_CES,lo_FRS,s1296,lo_ERS,s49 |
| s1433 | R96 | sumlo | lo | EPS | 261111/1000000 | lo_CES,s1423,s232,lo_ERS,s49 |
| s1437 | R98 | linear | lo | ACH | 302361/1000000 | s1399,lo_AHP,lo_CHP |
| s1440 | R99 | linear | hi | AEF | 356479/500000 | hi_AEH,s1255,hi_EFH |
| s1441 | R99 | linear | lo | AEH | 530447/1000000 | s1376,s1255,hi_EFH |
| s1444 | R102 | linear | lo | AFH | 147501/500000 | lo_AFP,lo_AHP,s1387 |
| s1446 | R103 | linear | hi | APR | 509709/1000000 | lo_AHP,hi_AHR,s1402 |
| s1450 | R104 | linear | lo | BCH | 180473/500000 | s1401,lo_BHP,lo_CHP |
| s1452 | R105 | linear | hi | BEF | 852983/1000000 | hi_BEH,s1271,hi_EFH |
| s1460 | R107 | linear | lo | BEP | 424553/1000000 | lo_BEQ,s1406,s1407 |
| s1463 | R108 | linear | lo | BER | 93339/200000 | s1370,s1429,lo_ERS |
| s1465 | R109 | linear | lo | BFH | 332639/1000000 | s1397,lo_BHP,s1387 |
| s1467 | R110 | linear | lo | BFR | 668217/1000000 | s1378,s1353,s1420 |
| s1469 | R111 | linear | lo | BHQ | 32439/100000 | lo_BHP,s1406,lo_HPQ |
| s1470 | R112 | linear | hi | BPR | 154607/250000 | lo_BHP,hi_BHR,s1402 |
| s1477 | R113 | linear | lo | BPR | 223383/500000 | s1406,s1353,lo_PQR |
| s1481 | R115 | linear | lo | CEH | 344999/500000 | s1287,s1374,hi_EFH |
| s1482 | R116 | linear | lo | CEF | 309669/500000 | hi_CER,s1294,s1310 |
| s1483 | R118 | linear | lo | CEP | 92747/200000 | s1369,s1367,s1407 |
| s1485 | R120 | linear | lo | CER | 145901/500000 | lo_CES,s1416,lo_ERS |
| s1490 | R121 | linear | lo | CFR | 471873/1000000 | lo_CFQ,s1412,s1420 |
| s1491 | R121 | linear | hi | FQR | 8843/25000 | lo_CFQ,hi_CFR,s1412 |
| s1492 | R122 | linear | lo | CFS | 104653/250000 | s1490,s49,lo_FRS |
| s1494 | R123 | linear | lo | CHR | 18573/40000 | s1366,s1412,s1424 |
| s1498 | R126 | linear | lo | CPR | 334501/1000000 | s1367,s1412,lo_PQR |
| s1502 | R127 | linear | lo | EHR | 565547/1000000 | hi_EFH,s1310,s1377 |
| s1505 | R128 | linear | lo | EFR | 502329/1000000 | s1431,lo_ERS,lo_FRS |
| s1506 | R129 | linear | hi | EHS | 128957/250000 | hi_EHR,lo_ERS,s1414 |
| s1507 | R130 | linear | lo | EPR | 462021/1000000 | s1433,lo_ERS,s1423 |
| s1509 | R131 | linear | lo | EQR | 80947/250000 | s1372,lo_ERS,lo_QRS |
| s1528 | R2 | sum | lo | BEH | 385623/500000 | s1460,lo_BHP,s1386 |
| s1529 | R2 | sub | hi | EHP | 472803/1000000 | hi_BEH,s1460,lo_BHP |
| s1532 | R5 | sum | lo | BHR | 755523/1000000 | lo_BHP,s1477,s1402 |
| s1533 | R5 | sub | hi | HPR | 387419/1000000 | hi_BHR,lo_BHP,s1477 |
| s1536 | R12 | sumlo | lo | AEP | 17623/100000 | s1376,lo_AHP,s1441,lo_AFP,hi_AFH |
| s1547 | R13 | sumlo | lo | BCQ | 3741/31250 | s1360,s1469,s1450,lo_BEQ,hi_BEH |
| s1551 | R16 | sumlo | lo | BQR | 223813/1000000 | lo_BEQ,s1532,s1463,s1469,hi_BEH |
| s1556 | R17 | sumlo | lo | ACR | 139179/1000000 | lo_ABC,s1494,s1437,lo_BCR,hi_BCH |
| s1561 | R22 | sumlo | lo | ACF | 18299/62500 | s1437,s1490,s1556,s1374,hi_CHR |
| s1563 | R24 | sumlo | lo | BCE | 54727/200000 | s1450,s1485,lo_BCR,s1481,hi_CHR |
| s1565 | R25 | sumlo | lo | BCF | 63339/200000 | s1450,s1490,lo_BCR,s1374,hi_CHR |
| s1569 | R27 | sumlo | lo | CFP | 220929/1000000 | s1374,s1498,s1490,lo_CHP,hi_CHR |
| s1570 | R28 | sumlo | lo | CHQ | 140339/1000000 | s1374,s1412,lo_CFQ,s1494,hi_CFR |
| s1571 | R29 | sumlo | lo | CPQ | 106093/1000000 | s1569,s1412,lo_CFQ,s1498,hi_CFR |
| s1573 | R33 | sumlo | lo | CEQ | 177993/1000000 | s1563,s1509,lo_BEQ,s1485,hi_BER |
| s1574 | R34 | sumlo | lo | BES | 207219/1000000 | s1563,lo_ERS,s1463,lo_CES,hi_CER |
| s1576 | R36 | sumlo | lo | EQS | 4389/31250 | s1573,lo_ERS,lo_CES,s1509,hi_CER |
| s1578 | R38 | sumlo | lo | CFH | 36807/125000 | s1561,lo_EFH,s1444,s1482,s1440 |
| s1583 | R40 | sumlo | lo | BFQ | 46631/200000 | s1565,s1420,s1467,lo_CFQ,hi_CFR |
| s1584 | R41 | sumlo | lo | FHR | 268749/1000000 | s1465,s1505,s1467,lo_EFH,s1452 |
| s1586 | R43 | sumlo | lo | EFQ | 82211/250000 | s1482,s1420,lo_CFQ,s1505,hi_CFR |
| s1588 | R44 | sumlo | lo | FPQ | 68647/500000 | s1569,s1420,lo_CFQ,s1419,hi_CFR |
| s1592 | R49 | sumlo | lo | EHP | 53053/200000 | s1528,lo_CHP,lo_BHP,s1481,hi_BCH |
| s1593 | R50 | sumlo | lo | FHP | 113839/1000000 | s1465,lo_CHP,lo_BHP,s1578,hi_BCH |
| s1605 | R59 | sumlo | lo | BFP | 137291/1000000 | lo_ABP,s1419,lo_AFP,s1477,s1446 |
| s1606 | R60 | sumlo | lo | ACP | 3147/25000 | s1536,lo_CHP,lo_AHP,s1483,s1529 |
| s1608 | R63 | sumlo | lo | BCP | 187543/1000000 | lo_BHP,s1498,s1477,lo_CHP,s1533 |
| s1609 | R63 | sumlo | lo | HPR | 222671/1000000 | lo_BHP,s1498,s1477,lo_CHP,s10 |
| s1612 | R67 | sumlo | lo | BPQ | 37043/250000 | s1583,lo_PQR,s1551,s1588,s1491 |
| s1613 | R72 | sumlo | lo | EPQ | 42427/200000 | s1586,lo_PQR,s1509,s1588,s1491 |
| s1618 | R77 | sumlo | lo | CQR | 146749/1000000 | lo_BCR,s1509,s1551,s1485,hi_BER |
| s1620 | R80 | sumlo | lo | BRS | 21883/125000 | s1463,s1414,s1532,lo_ERS,hi_EHR |
| s1621 | R81 | sumlo | lo | HRS | 32721/250000 | s1532,lo_FRS,s1620,s1584,hi_BFR |
| s1622 | R82 | sumlo | lo | HQR | 97101/500000 | s1532,lo_PQR,s1551,s1609,s1470 |
| s1624 | R84 | sumlo | lo | CRS | 110959/1000000 | s1485,s1621,s1494,lo_ERS,hi_EHR |
| s1628 | R85 | sumlo | lo | FPR | 321831/1000000 | s1505,s1609,s1507,s1584,hi_EHR |
| s1629 | R86 | sumlo | lo | FQR | 125837/500000 | s1505,s1622,s1509,s1584,hi_EHR |
| s1633 | R89 | sumlo | lo | HQR | 12357/62500 | s1502,lo_PQR,s1509,s1609,hi_EPR |
| s1637 | R92 | sumlo | lo | BRS | 177701/1000000 | s1574,s1621,lo_BHS,lo_ERS,s1506 |
| s1639 | R95 | sumlo | lo | EFS | 81327/250000 | lo_CES,lo_FRS,s1492,lo_ERS,s49 |
| s1646 | R98 | linear | lo | ACH | 7797/25000 | s1606,lo_AHP,lo_CHP |
| s1648 | R99 | linear | hi | AEF | 354313/500000 | hi_AEH,s1444,hi_EFH |
| s1652 | R102 | linear | lo | AFH | 299839/1000000 | lo_AFP,lo_AHP,s1593 |
| s1653 | R103 | linear | hi | APR | 100559/200000 | lo_AHP,hi_AHR,s1609 |
| s1657 | R104 | linear | lo | BCH | 373543/1000000 | s1608,lo_BHP,lo_CHP |
| s1659 | R105 | linear | hi | BEF | 842879/1000000 | hi_BEH,s1465,hi_EFH |
| s1667 | R107 | linear | lo | BEP | 453307/1000000 | lo_BEQ,s1612,s1613 |
| s1670 | R108 | linear | lo | BER | 2987/6250 | s1574,s1637,lo_ERS |
| s1672 | R109 | linear | lo | BFH | 34413/100000 | s1605,lo_BHP,s1593 |
| s1675 | R110 | linear | lo | BFR | 354321/500000 | s1583,s1551,s1629 |
| s1677 | R111 | linear | lo | BHQ | 83543/250000 | lo_BHP,s1612,lo_HPQ |
| s1678 | R112 | linear | hi | BPR | 305757/500000 | lo_BHP,hi_BHR,s1609 |
| s1685 | R113 | linear | lo | BPR | 92997/200000 | s1612,s1551,lo_PQR |
| s1690 | R115 | linear | lo | CEH | 728631/1000000 | s1482,s1578,hi_EFH |
| s1691 | R116 | linear | lo | CEF | 641941/1000000 | hi_CER,s1490,s1505 |
| s1694 | R120 | linear | lo | CER | 296959/1000000 | lo_CES,s1624,lo_ERS |
| s1700 | R121 | linear | lo | CFR | 491423/1000000 | lo_CFQ,s1618,s1629 |
| s1701 | R121 | linear | hi | FQR | 69757/200000 | lo_CFQ,hi_CFR,s1618 |
| s1702 | R122 | linear | lo | CFS | 219081/500000 | s1700,s49,lo_FRS |
| s1704 | R123 | linear | lo | CHR | 303/625 | s1570,s1618,s1633 |
| s1706 | R125 | linear | hi | CHR | 615943/1000000 | s243,s49,s1621 |
| s1707 | R125 | linear | lo | CHS | 469423/1000000 | s1704,s49,s1621 |
| s1709 | R126 | linear | lo | CPR | 172921/500000 | s1571,s1618,lo_PQR |
| s1718 | R128 | linear | lo | EFR | 127827/250000 | s1639,lo_ERS,lo_FRS |
| s1721 | R129 | linear | hi | EHS | 509487/1000000 | hi_EHR,lo_ERS,s1621 |
| s1724 | R131 | linear | lo | EQR | 20403/62500 | s1576,lo_ERS,lo_QRS |
| s1731 | R140 | bary_hi | lo | BQS | 135961/1000000 | s1547,lo_BEQ,s1551 |
| s1733 | R142 | bary_lo | hi | CHS | 299809/500000 | hi_CEH,s1706 |
| s1747 | R2 | sum | lo | BEH | 202893/250000 | s1667,lo_BHP,s1592 |
| s1751 | R5 | sum | lo | BHR | 48791/62500 | lo_BHP,s1685,s1609 |
| s1752 | R5 | sub | hi | HPR | 923/2500 | hi_BHR,lo_BHP,s1685 |
| s1775 | R16 | sumlo | lo | BQR | 23457/100000 | lo_BEQ,s1751,s1670,s1677,hi_BEH |
| s1781 | R17 | sumlo | lo | ACR | 9039/62500 | lo_ABC,s1704,s1646,lo_BCR,hi_BCH |
| s1787 | R22 | sumlo | lo | ACF | 19873/62500 | s1646,s1700,s1781,s1578,s1706 |
| s1790 | R24 | sumlo | lo | BCE | 290107/1000000 | s1657,s1694,lo_BCR,s1690,s1706 |
| s1793 | R25 | sumlo | lo | BCF | 171243/500000 | s1657,s1700,lo_BCR,s1578,s1706 |
| s1798 | R27 | sumlo | lo | CFP | 239531/1000000 | s1578,s1709,s1700,lo_CHP,s1706 |
| s1799 | R28 | sumlo | lo | CHQ | 150029/1000000 | s1578,s1618,lo_CFQ,s1704,hi_CFR |
| s1800 | R29 | sumlo | lo | CPQ | 14297/125000 | s1798,s1618,lo_CFQ,s1709,hi_CFR |
| s1803 | R33 | sumlo | lo | CEQ | 188119/1000000 | s1790,s1724,lo_BEQ,s1694,hi_BER |
| s1804 | R34 | sumlo | lo | BES | 214971/1000000 | s1790,lo_ERS,s1670,lo_CES,hi_CER |
| s1808 | R36 | sumlo | lo | EQS | 144027/1000000 | s1803,lo_ERS,lo_CES,s1724,hi_CER |
| s1810 | R38 | sumlo | lo | CFH | 39169/125000 | s1787,lo_EFH,s1652,s1691,s1648 |
| s1817 | R40 | sumlo | lo | BFQ | 64609/250000 | s1793,s1629,s1675,lo_CFQ,hi_CFR |
| s1818 | R41 | sumlo | lo | FHR | 57389/200000 | s1672,s1718,s1675,lo_EFH,s1659 |
| s1822 | R43 | sumlo | lo | EFQ | 355309/1000000 | s1691,s1629,lo_CFQ,s1718,hi_CFR |
| s1823 | R44 | sumlo | lo | FPQ | 76643/500000 | s1798,s1629,lo_CFQ,s1628,hi_CFR |
| s1824 | R45 | sumlo | lo | FQS | 101033/500000 | lo_CFQ,lo_FRS,s1702,s1629,hi_CFR |
| s1830 | R49 | sumlo | lo | EHP | 279599/1000000 | s1747,lo_CHP,lo_BHP,s1690,hi_BCH |
| s1833 | R50 | sumlo | lo | FHP | 23871/200000 | s1672,lo_CHP,lo_BHP,s1810,hi_BCH |
| s1836 | R52 | sumlo | lo | HPS | 211201/1000000 | lo_BHP,s1707,lo_BHS,lo_CHP,hi_BCH |
| s1848 | R59 | sumlo | lo | BFP | 72767/500000 | lo_ABP,s1628,lo_AFP,s1685,s1653 |
| s1854 | R63 | sumlo | lo | BCP | 51061/250000 | lo_BHP,s1709,s1685,lo_CHP,s1752 |
| s1855 | R63 | sumlo | lo | HPR | 28887/125000 | lo_BHP,s1709,s1685,lo_CHP,s10 |
| s1859 | R67 | sumlo | lo | BPQ | 171999/1000000 | s1817,lo_PQR,s1775,s1823,s1701 |
| s1865 | R72 | sumlo | lo | EPQ | 3722/15625 | s1822,lo_PQR,s1724,s1823,s1701 |
| s1867 | R73 | sumlo | lo | PQS | 94751/1000000 | s1823,lo_QRS,s1824,lo_PQR,s1701 |
| s1872 | R78 | sumlo | lo | CQR | 154723/1000000 | lo_BCR,s1629,s1775,s1700,hi_BFR |
| s1874 | R79 | sumlo | lo | EHR | 29917/50000 | s1670,s1818,s1751,s1718,hi_BFR |
| s1875 | R80 | sumlo | lo | BRS | 18429/100000 | s1670,s1621,s1751,lo_ERS,hi_EHR |
| s1877 | R81 | sumlo | lo | HRS | 7/50 | s1751,lo_FRS,s1875,s1818,hi_BFR |
| s1880 | R82 | sumlo | lo | HQR | 207369/1000000 | s1751,lo_PQR,s1775,s1855,s1678 |
| s1883 | R84 | sumlo | lo | CRS | 118167/1000000 | s1694,s1877,s1704,lo_ERS,hi_EHR |
| s1887 | R86 | sumlo | lo | FQR | 272307/1000000 | s1718,s1880,s1724,s1818,hi_EHR |
| s1892 | R89 | sumlo | lo | HQR | 25981/125000 | s1874,lo_PQR,s1724,s1855,hi_EPR |
| s1899 | R92 | sumlo | lo | BRS | 185751/1000000 | s1804,s1877,lo_BHS,lo_ERS,s1721 |
| s1901 | R95 | sumlo | lo | EFS | 337739/1000000 | lo_CES,lo_FRS,s1702,lo_ERS,s49 |
| s1921 | R104 | linear | lo | BCH | 97561/250000 | s1854,lo_BHP,lo_CHP |
| s1922 | R105 | linear | hi | BEF | 207847/250000 | hi_BEH,s1672,hi_EFH |
| s1925 | R106 | linear | lo | BEF | 141349/200000 | lo_BEQ,s1817,s1822 |
| s1928 | R106 | linear | hi | EFQ | 29997/62500 | s1922,lo_BEQ,s1817 |
| s1931 | R107 | linear | lo | BEP | 503207/1000000 | lo_BEQ,s1859,s1865 |
| s1935 | R108 | linear | lo | BER | 246861/500000 | s1804,s1899,lo_ERS |
| s1937 | R109 | linear | lo | BFH | 357889/1000000 | s1848,lo_BHP,s1833 |
| s1942 | R111 | linear | lo | BHQ | 357999/1000000 | lo_BHP,s1859,lo_HPQ |
| s1943 | R112 | linear | hi | BPR | 603089/1000000 | lo_BHP,hi_BHR,s1855 |
| s1951 | R113 | linear | hi | BPQ | 275519/1000000 | s1943,s1775,lo_PQR |
| s1953 | R113 | linear | lo | BPR | 499569/1000000 | s1859,s1775,lo_PQR |
| s1955 | R114 | linear | lo | BPS | 402711/1000000 | s1859,s1731,s1867 |
| s1958 | R115 | linear | lo | CEH | 77013/100000 | s1691,s1810,hi_EFH |
| s1959 | R116 | linear | lo | CEF | 67047/100000 | hi_CER,s1700,s1718 |
| s1961 | R120 | linear | lo | CER | 304167/1000000 | lo_CES,s1883,lo_ERS |
| s1967 | R121 | linear | lo | CFR | 52003/100000 | lo_CFQ,s1872,s1887 |
| s1969 | R122 | linear | lo | CFS | 466769/1000000 | s1967,s49,lo_FRS |
| s1971 | R123 | linear | lo | CHR | 2563/5000 | s1799,s1872,s1892 |
| s1973 | R125 | linear | hi | CHR | 605879/1000000 | s1733,s49,s1877 |
| s1974 | R125 | linear | lo | CHS | 506339/1000000 | s1971,s49,s1877 |
| s1976 | R126 | linear | lo | CPR | 362099/1000000 | s1800,s1872,lo_PQR |
| s1986 | R128 | linear | lo | EFR | 523739/1000000 | s1901,lo_ERS,lo_FRS |
| s1992 | R131 | linear | lo | EQR | 330027/1000000 | s1808,lo_ERS,lo_QRS |
| s2004 | R142 | bary_lo | hi | CHS | 298437/500000 | hi_CEH,s1973 |
| s2015 | R145 | linear | lo | EHS | 387803/1000000 | s1974,s1877 |
| s2020 | R2 | sum | lo | BEH | 437903/500000 | s1931,lo_BHP,s1830 |
| s2022 | R3 | sub | hi | EHQ | 539357/1000000 | hi_BEH,lo_BEQ,s1942 |
| s2024 | R5 | sum | lo | BHR | 164733/200000 | lo_BHP,s1953,s1855 |
| s2027 | R6 | sum | lo | BHS | 22091/31250 | lo_BHP,s1955,s1836 |
| s2033 | R10 | sum | lo | EHR | 620803/1000000 | s2015,lo_ERS,s1877 |
| s2058 | R14 | sumlo | lo | BCS | 74543/500000 | s1921,s1899,lo_BCR,s2027,hi_BHR |
| s2060 | R15 | sumlo | lo | BFR | 11972/15625 | s1925,s2024,s1935,s1937,hi_BEH |
| s2084 | R24 | sumlo | lo | BCE | 78531/250000 | s1921,s1961,lo_BCR,s1958,s1973 |
| s2088 | R26 | sumlo | lo | BCF | 47931/125000 | s1921,s1969,s2058,s1810,s2004 |
| s2098 | R28 | sumlo | lo | CHQ | 163379/1000000 | s1810,s1872,lo_CFQ,s1971,hi_CFR |
| s2108 | R31 | sumlo | lo | CEQ | 104623/500000 | s2084,s1822,lo_BEQ,s1959,s1922 |
| s2139 | R40 | sumlo | lo | BFQ | 74623/250000 | s2088,s1887,s2060,lo_CFQ,hi_CFR |
| s2141 | R41 | sumlo | lo | FHR | 311163/1000000 | s1937,s1986,s2060,lo_EFH,s1922 |
| s2147 | R42 | sumlo | lo | FHQ | 53089/250000 | s1937,s1887,s2139,s2141,hi_BFR |
| s2170 | R51 | sumlo | lo | HPR | 242577/1000000 | lo_BHP,s1971,s2024,lo_CHP,hi_BCH |
| s2175 | R55 | sumlo | lo | EHQ | 436031/1000000 | s2020,s1892,s1942,s2033,hi_BHR |
| s2180 | R56 | sumlo | lo | HPQ | 24329/250000 | lo_CHP,s1892,s2098,s2170,s1973 |
| s2200 | R63 | sumlo | lo | HPR | 245587/1000000 | lo_BHP,s1976,s1953,lo_CHP,s10 |
| s2218 | R66 | sumlo | lo | BQR | 51603/200000 | lo_BEQ,s1887,s2139,s1992,s1928 |
| s2226 | R68 | sumlo | lo | HQR | 105987/500000 | s1942,lo_PQR,s2218,s2180,s1951 |
| s2228 | R69 | sumlo | lo | CHQ | 17707/100000 | s2108,s2147,lo_CFQ,s2175,s1928 |
| s2233 | R70 | sumlo | lo | CQR | 190583/1000000 | s2108,s2226,s2228,s1992,s2022 |
| s2273 | R82 | sumlo | lo | HQR | 232081/1000000 | s2024,lo_PQR,s2218,s2200,s1943 |
| s2278 | R83 | sumlo | lo | EFR | 104813/200000 | s1961,lo_FRS,s1967,lo_ERS,s49 |
| s2293 | R86 | sumlo | lo | FQR | 19117/62500 | s2278,s2273,s1992,s2141,hi_EHR |
| s2407 | R121 | linear | hi | CFQ | 92079/1000000 | hi_CFR,s2233,s2293 |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | CFQ | lo_CFQ | s2407 |

The two cited bounds give 93/1000 <= |CFQ| <= 92079/1000000, with exact positive gap 921/1000000.

## Leaf A038

### Initial bounds

| Reference | Area | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_ABP | ABP | lo | 93/1000 | cost: |
| lo_AFP | AFP | lo | 93/1000 | cost: |
| lo_AHP | AHP | lo | 93/1000 | cost: |
| lo_AHQ | AHQ | lo | 279/1000 | cost:P |
| lo_BCF | BCF | lo | 279/1000 | cost:Q |
| lo_BCH | BCH | lo | 279/1000 | cost:P |
| lo_BCR | BCR | lo | 93/1000 | cost: |
| lo_BCS | BCS | lo | 93/1000 | cost: |
| lo_BEH | BEH | lo | 347/500 | cost:PQ |
| lo_BEQ | BEQ | lo | 93/1000 | cost: |
| lo_BER | BER | lo | 279/1000 | cost:S |
| lo_BFH | BFH | lo | 279/1000 | cost:P |
| lo_BFQ | BFQ | lo | 93/1000 | cost: |
| lo_BHP | BHP | lo | 93/1000 | cost: |
| lo_BHQ | BHQ | lo | 279/1000 | cost:P |
| lo_BHR | BHR | lo | 347/500 | cost:PQ |
| lo_BHS | BHS | lo | 347/500 | cost:PQ |
| lo_BPQ | BPQ | lo | 93/1000 | cost: |
| lo_BPR | BPR | lo | 279/1000 | cost:Q |
| lo_BPS | BPS | lo | 279/1000 | cost:Q |
| lo_BQS | BQS | lo | 93/1000 | cost: |
| lo_BRS | BRS | lo | 93/1000 | cost: |
| lo_CEF | CEF | lo | 93/1000 | cost: |
| lo_CEH | CEH | lo | 279/1000 | cost:Q |
| lo_CEP | CEP | lo | 279/1000 | cost:Q |
| lo_CER | CER | lo | 279/1000 | cost:S |
| lo_CES | CES | lo | 93/1000 | cost: |
| lo_CFP | CFP | lo | 279/1000 | cost:Q |
| lo_CFQ | CFQ | lo | 93/1000 | cost: |
| lo_CHP | CHP | lo | 93/1000 | cost: |
| lo_CHQ | CHQ | lo | 93/1000 | cost: |
| lo_CHR | CHR | lo | 279/1000 | cost:Q |
| lo_CHS | CHS | lo | 279/1000 | cost:Q |
| lo_CPQ | CPQ | lo | 93/1000 | cost: |
| lo_CPR | CPR | lo | 279/1000 | cost:Q |
| lo_CPS | CPS | lo | 279/1000 | cost:Q |
| lo_CQS | CQS | lo | 93/1000 | cost: |
| lo_CRS | CRS | lo | 93/1000 | cost: |
| lo_EFH | EFH | lo | 93/1000 | cost: |
| lo_EFP | EFP | lo | 93/1000 | cost: |
| lo_EFR | EFR | lo | 279/1000 | cost:S |
| lo_EHR | EHR | lo | 279/1000 | cost:S |
| lo_EPR | EPR | lo | 279/1000 | cost:S |
| lo_EQR | EQR | lo | 279/1000 | cost:S |
| lo_ERS | ERS | lo | 93/1000 | cost: |
| lo_FRS | FRS | lo | 93/1000 | cost: |
| lo_HPQ | HPQ | lo | 93/1000 | cost: |
| lo_HRS | HRS | lo | 93/1000 | cost: |
| lo_PQR | PQR | lo | 93/1000 | cost: |
| lo_PQS | PQS | lo | 93/1000 | cost: |
| lo_PRS | PRS | lo | 93/1000 | cost: |
| lo_QRS | QRS | lo | 93/1000 | cost: |
| hi_ACH | ACH | hi | 322861/640375 | C022 |
| hi_AEH | AEH | hi | 4193/5123 | C023 |
| hi_AFH | AFH | hi | 322861/640375 | C014 |
| hi_AHR | AHR | hi | 4193/5123 | C024 |
| hi_BCE | BCE | hi | 4646561/10000000 | C038 |
| hi_BCF | BCF | hi | 5123/10000 | C045 |
| hi_BCH | BCH | hi | 5123/10000 | C004 |
| hi_BEH | BEH | hi | 9903559/10000000 | C005 |
| hi_BEP | BEP | hi | 230475410760667/357785197000000 | C066 |
| hi_BER | BER | hi | 33311536243/51230000000 | C006 |
| hi_BFP | BFP | hi | 16905616233437/44723149625000 | C067 |
| hi_BFR | BFR | hi | 8963/10000 | C007 |
| hi_BFS | BFS | hi | 87073/110000 | C051 |
| hi_BHR | BHR | hi | 1061616851941/1144990000000 | C008 |
| hi_BHS | BHS | hi | 663395231033/787180625000 | C052 |
| hi_BPR | BPR | hi | 1614143075756399/2526093666250000 | C009 |
| hi_BPS | BPS | hi | 19982096006443189661/35579307548083750000 | C063 |
| hi_CEF | CEF | hi | 13367777/15625000 | C041 |
| hi_CEH | CEH | hi | 237398407/250000000 | C050 |
| hi_CEP | CEP | hi | 56493656141/78894200000 | C068 |
| hi_CER | CER | hi | 425542517939/1280750000000 | C010 |
| hi_CHR | CHR | hi | 17730685453093/28624750000000 | C001 |
| hi_CPR | CPR | hi | 66213614666233493/146644594250000000 | C002 |
| hi_EFH | EFH | hi | 1996715486/10783609375 | C026 |
| hi_EFR | EFR | hi | 33716509393/51230000000 | C027 |
| hi_EHR | EHR | hi | 751411663/1024600000 | C019 |
| hi_EPR | EPR | hi | 16552369677919/26245129000000 | C021 |

### Relations

| Relation | Type | Exact data | Witness |
| --- | --- | --- | --- |
| R0 | fan | ["ACH","ACP","AHP","CHP"] | ["fan","ACH","P"] |
| R1 | fan | ["AFH","AFP","AHP","FHP"] | ["fan","AFH","P"] |
| R2 | fan | ["BCF","BCQ","BFQ","CFQ"] | ["fan","BCF","Q"] |
| R3 | fan | ["BCH","BCP","BHP","CHP"] | ["fan","BCH","P"] |
| R4 | fan | ["BEH","BEP","BHP","EHP"] | ["fan","BEH","P"] |
| R5 | fan | ["BEH","BEQ","BHQ","EHQ"] | ["fan","BEH","Q"] |
| R6 | fan | ["BER","BES","BRS","ERS"] | ["fan","BER","S"] |
| R7 | fan | ["BHR","BHP","BPR","HPR"] | ["fan","BHR","P"] |
| R8 | fan | ["CER","CES","CRS","ERS"] | ["fan","CER","S"] |
| R9 | fan | ["CHR","CHQ","CQR","HQR"] | ["fan","CHR","Q"] |
| R10 | fan | ["CPR","CPQ","CQR","PQR"] | ["fan","CPR","Q"] |
| R11 | fan | ["EFR","EFS","ERS","FRS"] | ["fan","EFR","S"] |
| R12 | fan | ["EHR","EHS","ERS","HRS"] | ["fan","EHR","S"] |
| R13 | fan | ["EPR","EPS","ERS","PRS"] | ["fan","EPR","S"] |
| R14 | plu | ["BCP","BEH","BCE","BHP","BCH","BEP"] | ["plu","BCEHP"] |
| R15 | plu | ["BCP","BHR","BCH","BPR","BCR","BHP"] | ["plu","BCHPR"] |
| R16 | plu | ["BCP","BHS","BCH","BPS","BCS","BHP"] | ["plu","BCHPS"] |
| R17 | plu | ["BCS","BHR","BCH","BRS","BCR","BHS"] | ["plu","BCHRS"] |
| R18 | plu | ["BEH","BFR","BEF","BHR","BER","BFH"] | ["plu","BEFHR"] |
| R19 | plu | ["BEH","BQR","BEQ","BHR","BER","BHQ"] | ["plu","BEHQR"] |
| R20 | plu | ["BCE","CFR","BCF","CER","BCR","CEF"] | ["plu","CBEFR"] |
| R21 | plu | ["BCE","CHR","BCH","CER","BCR","CEH"] | ["plu","CBEHR"] |
| R22 | plu | ["BCS","CHR","BCH","CRS","BCR","CHS"] | ["plu","CBHRS"] |
| R23 | plu | ["BER","CEH","BCE","EHR","BEH","CER"] | ["plu","EBCHR"] |
| R24 | plu | ["BER","CEQ","BCE","EQR","BEQ","CER"] | ["plu","EBCQR"] |
| R25 | plu | ["BES","CER","BCE","ERS","BER","CES"] | ["plu","EBCRS"] |
| R26 | plu | ["CER","EHS","CEH","ERS","CES","EHR"] | ["plu","ECHRS"] |
| R27 | plu | ["CER","EPS","CEP","ERS","CES","EPR"] | ["plu","ECPRS"] |
| R28 | plu | ["CER","EQS","CEQ","ERS","CES","EQR"] | ["plu","ECQRS"] |
| R29 | plu | ["EFP","EHR","EFH","EPR","EFR","EHP"] | ["plu","EFHPR"] |
| R30 | plu | ["BEF","FHR","BFH","EFR","BFR","EFH"] | ["plu","FBEHR"] |
| R31 | plu | ["CEF","FPR","CFP","EFR","CFR","EFP"] | ["plu","FCEPR"] |
| R32 | plu | ["AEH","FHR","AFH","EHR","AHR","EFH"] | ["plu","HAEFR"] |
| R33 | plu | ["AHR","FHQ","AFH","HQR","AHQ","FHR"] | ["plu","HAFQR"] |
| R34 | plu | ["BCH","EHP","BEH","CHP","BHP","CEH"] | ["plu","HBCEP"] |
| R35 | plu | ["BCH","FHP","BFH","CHP","BHP","CFH"] | ["plu","HBCFP"] |
| R36 | plu | ["BCH","HPR","BHP","CHR","BHR","CHP"] | ["plu","HBCPR"] |
| R37 | plu | ["BCH","HPS","BHP","CHS","BHS","CHP"] | ["plu","HBCPS"] |
| R38 | plu | ["BEH","FHR","BFH","EHR","BHR","EFH"] | ["plu","HBEFR"] |
| R39 | plu | ["BEH","FHS","BFH","EHS","BHS","EFH"] | ["plu","HBEFS"] |
| R40 | plu | ["BHR","EHQ","BEH","HQR","BHQ","EHR"] | ["plu","HBEQR"] |
| R41 | plu | ["BHR","FHQ","BFH","HQR","BHQ","FHR"] | ["plu","HBFQR"] |
| R42 | plu | ["ACP","BFP","ABP","CFP","AFP","BCP"] | ["plu","PABCF"] |
| R43 | plu | ["AEP","BFP","ABP","EFP","AFP","BEP"] | ["plu","PABEF"] |
| R44 | plu | ["APR","BEP","ABP","EPR","AEP","BPR"] | ["plu","PABER"] |
| R45 | plu | ["APR","BFP","ABP","FPR","AFP","BPR"] | ["plu","PABFR"] |
| R46 | plu | ["BCP","EHP","BEP","CHP","BHP","CEP"] | ["plu","PBCEH"] |
| R47 | plu | ["BCP","FHP","BFP","CHP","BHP","CFP"] | ["plu","PBCFH"] |
| R48 | plu | ["BCP","HPR","BHP","CPR","BPR","CHP"] | ["plu","PBCHR"] |
| R49 | plu | ["CEP","FPR","CFP","EPR","CPR","EFP"] | ["plu","PCEFR"] |
| R50 | plu | ["CEP","FPS","CFP","EPS","CPS","EFP"] | ["plu","PCEFS"] |
| R51 | plu | ["CPR","EPQ","CEP","PQR","CPQ","EPR"] | ["plu","PCEQR"] |
| R52 | plu | ["CPR","FPQ","CFP","PQR","CPQ","FPR"] | ["plu","PCFQR"] |
| R53 | plu | ["BCQ","FHQ","BFQ","CHQ","BHQ","CFQ"] | ["plu","QBCFH"] |
| R54 | plu | ["BPQ","HQR","BHQ","PQR","BQR","HPQ"] | ["plu","QBHPR"] |
| R55 | plu | ["CQR","EPQ","CEQ","PQR","CPQ","EQR"] | ["plu","QCEPR"] |
| R56 | plu | ["BER","CHR","BCR","EHR","BHR","CER"] | ["plu","RBCEH"] |
| R57 | plu | ["BER","CQR","BCR","EQR","BQR","CER"] | ["plu","RBCEQ"] |
| R58 | plu | ["BFR","EHR","BER","FHR","BHR","EFR"] | ["plu","RBEFH"] |
| R59 | plu | ["BRS","EHR","BER","HRS","BHR","ERS"] | ["plu","RBEHS"] |
| R60 | plu | ["BFR","HRS","BHR","FRS","BRS","FHR"] | ["plu","RBFHS"] |
| R61 | plu | ["BPR","HQR","BHR","PQR","BQR","HPR"] | ["plu","RBHPQ"] |
| R62 | plu | ["CFR","EHR","CER","FHR","CHR","EFR"] | ["plu","RCEFH"] |
| R63 | plu | ["CFR","EPR","CER","FPR","CPR","EFR"] | ["plu","RCEFP"] |
| R64 | plu | ["CRS","EFR","CER","FRS","CFR","ERS"] | ["plu","RCEFS"] |
| R65 | plu | ["CRS","EHR","CER","HRS","CHR","ERS"] | ["plu","RCEHS"] |
| R66 | plu | ["CRS","EPR","CER","PRS","CPR","ERS"] | ["plu","RCEPS"] |
| R67 | plu | ["CHR","PRS","CPR","HRS","CRS","HPR"] | ["plu","RCHPS"] |
| R68 | plu | ["EHR","FPR","EFR","HPR","EPR","FHR"] | ["plu","REFHP"] |
| R69 | plu | ["EFR","PRS","EPR","FRS","ERS","FPR"] | ["plu","REFPS"] |
| R70 | plu | ["EPR","HQR","EHR","PQR","EQR","HPR"] | ["plu","REHPQ"] |
| R71 | plu | ["EHR","PRS","EPR","HRS","ERS","HPR"] | ["plu","REHPS"] |
| R72 | plu | ["EHR","QRS","EQR","HRS","ERS","HQR"] | ["plu","REHQS"] |
| R73 | plu | ["BES","CRS","BCS","ERS","BRS","CES"] | ["plu","SBCER"] |
| R74 | plu | ["BRS","EHS","BES","HRS","BHS","ERS"] | ["plu","SBEHR"] |
| R75 | plu | ["BFS","HRS","BHS","FRS","BRS","FHS"] | ["plu","SBFHR"] |
| R76 | plu | ["BPS","HQS","BHS","PQS","BQS","HPS"] | ["plu","SBHPQ"] |
| R77 | plu | ["CRS","EFS","CES","FRS","CFS","ERS"] | ["plu","SCEFR"] |
| R78 | plu | ["CRS","EHS","CES","HRS","CHS","ERS"] | ["plu","SCEHR"] |
| R79 | plu | ["CRS","EPS","CES","PRS","CPS","ERS"] | ["plu","SCEPR"] |
| R80 | plu | ["CRS","EQS","CES","QRS","CQS","ERS"] | ["plu","SCEQR"] |
| R81 | plu | ["CFS","PRS","CPS","FRS","CRS","FPS"] | ["plu","SCFPR"] |
| R82 | plu | ["EFS","HRS","EHS","FRS","ERS","FHS"] | ["plu","SEFHR"] |
| R83 | plu | ["EFS","PRS","EPS","FRS","ERS","FPS"] | ["plu","SEFPR"] |
| R84 | linear | [{"AFH":1,"AHP":-1,"AFP":-1,"FHP":-1},"0"] | ["affine_quad","AFHP",1] |
| R85 | linear | [{"AHP":-1,"APR":-1,"AHR":1,"HPR":-1},"0"] | ["affine_quad","AHPR",1] |
| R86 | linear | [{"BCH":1,"BHP":-1,"BCP":-1,"CHP":-1},"0"] | ["affine_quad","BCHP",1] |
| R87 | linear | [{"BEF":-1,"BFH":-1,"BEH":1,"EFH":1},"0"] | ["affine_quad","BEFH",-1] |
| R88 | linear | [{"BEP":1,"BPQ":-1,"BEQ":-1,"EPQ":-1},"0"] | ["affine_quad","BEPQ",1] |
| R89 | linear | [{"BER":1,"BRS":-1,"BES":-1,"ERS":-1},"0"] | ["affine_quad","BERS",-1] |
| R90 | linear | [{"BFH":1,"BHP":-1,"BFP":-1,"FHP":-1},"0"] | ["affine_quad","BFHP",1] |
| R91 | linear | [{"BHP":-1,"BPQ":-1,"BHQ":1,"HPQ":-1},"0"] | ["affine_quad","BHPQ",1] |
| R92 | linear | [{"BHP":-1,"BPR":-1,"BHR":1,"HPR":-1},"0"] | ["affine_quad","BHPR",1] |
| R93 | linear | [{"BHQ":-1,"BQR":-1,"BHR":1,"HQR":-1},"0"] | ["affine_quad","BHQR",1] |
| R94 | linear | [{"BHR":-1,"BRS":1,"BHS":1,"HRS":-1},"0"] | ["affine_quad","BHRS",1] |
| R95 | linear | [{"BPQ":-1,"BQR":-1,"BPR":1,"PQR":-1},"0"] | ["affine_quad","BPQR",1] |
| R96 | linear | [{"CEH":1,"CHR":-1,"CER":1,"EHR":-1},"0"] | ["affine_quad","CEHR",1] |
| R97 | linear | [{"CEH":1,"CHS":-1,"CES":1,"EHS":-1},"0"] | ["affine_quad","CEHS",1] |
| R98 | linear | [{"CEP":1,"CPR":-1,"CER":1,"EPR":-1},"0"] | ["affine_quad","CEPR",1] |
| R99 | linear | [{"CER":1,"CRS":-1,"CES":-1,"ERS":-1},"0"] | ["affine_quad","CERS",-1] |
| R100 | linear | [{"CFH":1,"CHQ":-1,"CFQ":-1,"FHQ":-1},"0"] | ["affine_quad","CFHQ",1] |
| R101 | linear | [{"CFP":1,"CPQ":-1,"CFQ":-1,"FPQ":-1},"0"] | ["affine_quad","CFPQ",1] |
| R102 | linear | [{"CFR":-1,"CRS":1,"CFS":1,"FRS":-1},"0"] | ["affine_quad","CFRS",1] |
| R103 | linear | [{"CHQ":-1,"CQR":-1,"CHR":1,"HQR":-1},"0"] | ["affine_quad","CHQR",1] |
| R104 | linear | [{"CHQ":-1,"CQS":-1,"CHS":1,"HQS":-1},"0"] | ["affine_quad","CHQS",1] |
| R105 | linear | [{"CHR":-1,"CRS":1,"CHS":1,"HRS":-1},"0"] | ["affine_quad","CHRS",1] |
| R106 | linear | [{"CPQ":-1,"CQR":-1,"CPR":1,"PQR":-1},"0"] | ["affine_quad","CPQR",1] |
| R107 | linear | [{"CPR":-1,"CRS":1,"CPS":1,"PRS":-1},"0"] | ["affine_quad","CPRS",1] |
| R108 | linear | [{"EFR":1,"ERS":-1,"EFS":-1,"FRS":-1},"0"] | ["affine_quad","EFRS",1] |
| R109 | linear | [{"EHR":1,"ERS":-1,"EHS":-1,"HRS":-1},"0"] | ["affine_quad","EHRS",1] |
| R110 | linear | [{"EPR":1,"ERS":-1,"EPS":-1,"PRS":-1},"0"] | ["affine_quad","EPRS",1] |
| R111 | linear | [{"EQR":1,"ERS":-1,"EQS":-1,"QRS":-1},"0"] | ["affine_quad","EQRS",1] |
| R112 | quad | ["CEH","CER","93/125"] | ["quad","CREH","QS"] |
| R113 | quad | ["CEP","CER","93/125"] | ["quad","CREP","QS"] |
| R114 | quad | ["CPS","CRS","449/1000"] | ["quad","CRSP","Q"] |
| R115 | bary | [["BES",-1],[["BCE",-1],null,["BER",-1]],11,[3,3,3]] | ["side_pair_weights","BE","S","CER","3/11"] |
| R116 | bary | [["BFS",-1],[["BCF",-1],["BEF",-1],["BFR",-1]],11,[3,3,3]] | ["side_pair_weights","BF","S","CER","3/11"] |
| R117 | bary | [["BRS",1],[["BCR",-1],["BER",1],null],11,[3,3,3]] | ["side_pair_weights","BR","S","CER","3/11"] |
| R118 | bary | [["CHS",-1],[null,["CEH",-1],["CHR",-1]],11,[3,3,3]] | ["side_pair_weights","CH","S","CER","3/11"] |
| R119 | bary | [["FHS",1],[["CFH",1],["EFH",1],["FHR",1]],11,[3,3,3]] | ["side_pair_weights","FH","S","CER","3/11"] |
| R120 | bary | [["FPS",1],[["CFP",1],["EFP",1],["FPR",1]],11,[3,3,3]] | ["side_pair_weights","FP","S","CER","3/11"] |
| R121 | linear | [{"CFS":-3,"EFS":5,"FRS":-3},"0"] | ["barycentric","FS","S","CER","upper"] |
| R122 | bary | [["HRS",1],[["CHR",-1],["EHR",1],null],11,[3,3,3]] | ["side_pair_weights","HR","S","CER","3/11"] |
| R123 | linear | [{"CHS":-3,"EHS":5,"HRS":-3},"0"] | ["barycentric","HS","S","CER","upper"] |
| R124 | bary | [["PRS",1],[["CPR",-1],["EPR",1],null],11,[3,3,3]] | ["side_pair_weights","PR","S","CER","3/11"] |
| R125 | linear | [{"CPS":-3,"EPS":5,"PRS":-3},"0"] | ["barycentric","PS","S","CER","upper"] |

### Updates

| Reference | Relation | Rule | Side | Area | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s4 | R0 | sub | hi | ACP | 12727/40000 | hi_ACH,lo_AHP,lo_CHP |
| s9 | R1 | sub | hi | FHP | 12727/40000 | hi_AFH,lo_AFP,lo_AHP |
| s13 | R2 | sub | hi | BCQ | 3263/10000 | hi_BCF,lo_BFQ,lo_CFQ |
| s16 | R3 | sub | hi | BCP | 3263/10000 | hi_BCH,lo_BHP,lo_CHP |
| s50 | R8 | sub | hi | CES | 146261/1000000 | hi_CER,lo_CRS,lo_ERS |
| s51 | R8 | sub | hi | CRS | 146261/1000000 | hi_CER,lo_CES,lo_ERS |
| s63 | R10 | sub | hi | CQR | 10621/40000 | hi_CPR,lo_CPQ,lo_PQR |
| s68 | R12 | sub | hi | EHS | 547371/1000000 | hi_EHR,lo_ERS,lo_HRS |
| s86 | R16 | sumlo | lo | BCP | 25657/250000 | lo_BCH,lo_BPS,lo_BCS,lo_BHP,hi_BHS |
| s87 | R17 | sumlo | lo | BCS | 19519/200000 | lo_BCH,lo_BRS,lo_BCR,lo_BHS,hi_BHR |
| s88 | R19 | sumlo | lo | BQR | 143769/1000000 | lo_BEQ,lo_BHR,lo_BER,lo_BHQ,hi_BEH |
| s97 | R20 | sumlo | lo | CFR | 186137/1000000 | lo_BCF,lo_CER,lo_BCR,lo_CEF,hi_BCE |
| s98 | R21 | sumlo | lo | BCE | 167557/1000000 | lo_BCH,lo_CER,lo_BCR,lo_CEH,hi_CHR |
| s103 | R23 | sumlo | lo | CEH | 369673/1000000 | s98,lo_EHR,lo_BEH,lo_CER,hi_BER |
| s104 | R24 | sumlo | lo | CEQ | 55899/500000 | s98,lo_EQR,lo_BEQ,lo_CER,hi_BER |
| s112 | R26 | sumlo | lo | EHS | 45391/250000 | s103,lo_ERS,lo_CES,lo_EHR,hi_CER |
| s113 | R27 | sumlo | lo | EPS | 19523/125000 | lo_CEP,lo_ERS,lo_CES,lo_EPR,hi_CER |
| s121 | R31 | sumlo | lo | FPR | 55609/500000 | lo_CFP,lo_EFR,s97,lo_EFP,hi_CEF |
| s132 | R34 | sumlo | lo | EHP | 193093/1000000 | lo_BEH,lo_CHP,lo_BHP,s103,hi_BCH |
| s133 | R36 | sumlo | lo | HPR | 22079/125000 | lo_BHP,lo_CHR,lo_BHR,lo_CHP,hi_BCH |
| s134 | R37 | sumlo | lo | HPS | 22079/125000 | lo_BHP,lo_CHS,lo_BHS,lo_CHP,hi_BCH |
| s136 | R38 | sumlo | lo | FHR | 143769/1000000 | lo_BFH,lo_EHR,lo_BHR,lo_EFH,hi_BEH |
| s137 | R39 | sumlo | lo | FHS | 727/6250 | lo_BFH,s112,lo_BHS,lo_EFH,hi_BEH |
| s142 | R42 | sumlo | lo | BFP | 55773/500000 | lo_ABP,lo_CFP,lo_AFP,s86,s4 |
| s144 | R45 | sumlo | lo | APR | 24001/250000 | lo_ABP,s121,lo_AFP,lo_BPR,hi_BFP |
| s147 | R47 | sumlo | lo | BCP | 114153/1000000 | s142,lo_CHP,lo_BHP,lo_CFP,s9 |
| s148 | R47 | sumlo | lo | FHP | 11131/100000 | s142,lo_CHP,lo_BHP,lo_CFP,s16 |
| s149 | R49 | sumlo | lo | FPR | 144941/1000000 | lo_CFP,lo_EPR,lo_CPR,lo_EFP,hi_CEP |
| s150 | R50 | sumlo | lo | FPS | 1517/15625 | lo_CFP,s113,lo_CPS,lo_EFP,hi_CEP |
| s152 | R53 | sumlo | lo | FHQ | 4241/40000 | lo_BFQ,lo_CHQ,lo_BHQ,lo_CFQ,s13 |
| s155 | R55 | sumlo | lo | EPQ | 34219/250000 | s104,lo_PQR,lo_CPQ,lo_EQR,s63 |
| s157 | R56 | sumlo | lo | BER | 177241/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_CHR |
| s158 | R56 | sumlo | lo | CHR | 168841/500000 | lo_BCR,lo_EHR,lo_BHR,lo_CER,hi_BER |
| s159 | R57 | sumlo | lo | CQR | 101591/1000000 | lo_BCR,lo_EQR,s88,lo_CER,hi_BER |
| s163 | R59 | sumlo | lo | BRS | 132959/1000000 | s157,lo_HRS,lo_BHR,lo_ERS,hi_EHR |
| s165 | R60 | sumlo | lo | HRS | 11667/125000 | lo_BHR,lo_FRS,s163,s136,hi_BFR |
| s166 | R61 | sumlo | lo | HQR | 140747/1000000 | lo_BHR,lo_PQR,s88,s133,hi_BPR |
| s171 | R66 | diffhi | hi | PRS | 118813/500000 | s51,hi_EPR,lo_CPR,lo_ERS,lo_CER |
| s176 | R73 | sumlo | lo | BES | 146597/1000000 | s87,lo_ERS,s163,lo_CES,s51 |
| s178 | R74 | sumlo | lo | BRS | 142909/1000000 | s176,s165,lo_BHS,lo_ERS,s68 |
| s181 | R75 | sumlo | lo | HRS | 12817/125000 | lo_BHS,lo_FRS,s178,s137,hi_BFS |
| s182 | R76 | sumlo | lo | HQS | 144169/1000000 | lo_BHS,lo_PQS,lo_BQS,s134,hi_BPS |
| s184 | R80 | sumlo | lo | EQS | 29567/250000 | lo_CES,lo_QRS,lo_CQS,lo_ERS,s51 |
| s186 | R81 | sumlo | lo | CFS | 14719/100000 | lo_CPS,lo_FRS,lo_CRS,s150,s171 |
| s195 | R84 | linear | lo | AFH | 29731/100000 | lo_AFP,lo_AHP,s148 |
| s197 | R85 | linear | lo | AHR | 91409/250000 | lo_AHP,s144,s133 |
| s200 | R86 | linear | lo | BCH | 300153/1000000 | s147,lo_BHP,lo_CHP |
| s204 | R88 | linear | lo | BEP | 80719/250000 | lo_BEQ,lo_BPQ,s155 |
| s206 | R89 | linear | lo | BER | 191253/500000 | s176,s178,lo_ERS |
| s208 | R90 | linear | lo | BFH | 19741/62500 | s142,lo_BHP,s148 |
| s213 | R95 | linear | lo | BPR | 329769/1000000 | lo_BPQ,s88,lo_PQR |
| s219 | R100 | linear | lo | CFH | 11681/40000 | lo_CFQ,lo_CHQ,s152 |
| s222 | R103 | linear | hi | HQR | 106207/250000 | lo_CHQ,hi_CHR,s159 |
| s223 | R104 | linear | lo | CHS | 330169/1000000 | lo_CHQ,lo_CQS,s182 |
| s225 | R106 | linear | lo | CPR | 287591/1000000 | lo_CPQ,s159,lo_PQR |
| s231 | R109 | linear | hi | EHS | 107567/200000 | hi_EHR,lo_ERS,s181 |
| s233 | R111 | linear | lo | EQR | 76067/250000 | s184,lo_ERS,lo_QRS |
| s234 | R112 | quad | lo | CEH | 411739/1000000 | hi_CER |
| s235 | R113 | quad | lo | CEP | 411739/1000000 | hi_CER |
| s237 | R114 | quad | lo | CPS | 302739/1000000 | s51 |
| s245 | R115 | bary_hi | lo | BES | 150017/1000000 | s98,s206 |
| s249 | R117 | bary_hi | hi | BRS | 135099/500000 | lo_BCR,hi_BER |
| s251 | R118 | bary_lo | hi | CHS | 300283/500000 | hi_CEH,hi_CHR |
| s255 | R119 | bary_lo | lo | FHS | 1289/8000 | s219,lo_EFH,s136 |
| s257 | R120 | bary_lo | lo | FPS | 157893/1000000 | lo_CFP,lo_EFP,s149 |
| s260 | R121 | linear | lo | EFS | 72057/500000 | s186,lo_FRS |
| s263 | R123 | linear | lo | EHS | 259623/1000000 | s223,s181 |
| s265 | R124 | bary_hi | hi | PRS | 208241/1000000 | s225,hi_EPR |
| s266 | R125 | linear | lo | EPS | 237443/1000000 | s237,lo_PRS |
| s270 | R4 | sub | hi | EHP | 7181/12500 | hi_BEH,s204,lo_BHP |
| s271 | R6 | sum | lo | BER | 192963/500000 | s245,s178,lo_ERS |
| s280 | R11 | sum | lo | EFR | 165057/500000 | s260,lo_ERS,lo_FRS |
| s281 | R12 | sum | lo | EHR | 455159/1000000 | s263,lo_ERS,s181 |
| s282 | R13 | sum | lo | EPR | 423443/1000000 | s266,lo_ERS,lo_PRS |
| s293 | R15 | sumlo | lo | BCP | 58041/500000 | s200,s213,lo_BCR,lo_BHP,hi_BHR |
| s294 | R17 | sumlo | lo | BCS | 57937/500000 | s200,s178,lo_BCR,lo_BHS,hi_BHR |
| s295 | R19 | sumlo | lo | BQR | 43473/250000 | lo_BEQ,lo_BHR,s271,lo_BHQ,hi_BEH |
| s302 | R21 | sumlo | lo | BCE | 98507/500000 | s200,lo_CER,lo_BCR,s234,hi_CHR |
| s307 | R24 | sumlo | lo | CEQ | 132093/1000000 | s302,s233,lo_BEQ,lo_CER,hi_BER |
| s313 | R28 | sumlo | lo | EQS | 122137/1000000 | s307,lo_ERS,lo_CES,s233,hi_CER |
| s314 | R29 | sumlo | lo | EFP | 70307/500000 | lo_EFH,s282,s280,s132,hi_EHR |
| s322 | R32 | sumlo | lo | FHR | 51721/250000 | s195,s281,s197,lo_EFH,hi_AEH |
| s324 | R33 | sumlo | lo | FHQ | 121649/1000000 | s195,s166,lo_AHQ,s322,hi_AHR |
| s326 | R36 | sumlo | lo | HPR | 37457/200000 | lo_BHP,s158,lo_BHR,lo_CHP,hi_BCH |
| s328 | R38 | sumlo | lo | FHR | 42067/200000 | s208,s281,lo_BHR,lo_EFH,hi_BEH |
| s332 | R42 | sumlo | lo | BFP | 115479/1000000 | lo_ABP,lo_CFP,lo_AFP,s293,s4 |
| s333 | R43 | sumlo | lo | AEP | 114031/1000000 | lo_ABP,s314,lo_AFP,s204,hi_BFP |
| s334 | R44 | sumlo | lo | APR | 29877/250000 | lo_ABP,s282,s333,s213,hi_BEP |
| s336 | R46 | sumlo | lo | BCP | 118923/1000000 | s204,lo_CHP,lo_BHP,s235,s270 |
| s337 | R46 | sumlo | lo | EHP | 67/320 | s204,lo_CHP,lo_BHP,s235,s16 |
| s338 | R47 | sumlo | lo | FHP | 112431/1000000 | s332,lo_CHP,lo_BHP,lo_CFP,s16 |
| s340 | R49 | sumlo | lo | FPR | 221459/1000000 | lo_CFP,s282,s225,s314,hi_CEP |
| s341 | R51 | sumlo | lo | EPQ | 172021/1000000 | s235,lo_PQR,lo_CPQ,s282,hi_CPR |
| s342 | R52 | sumlo | lo | FPQ | 103079/1000000 | lo_CFP,lo_PQR,lo_CPQ,s340,hi_CPR |
| s344 | R54 | sumlo | lo | BPQ | 99143/1000000 | lo_BHQ,lo_PQR,s295,lo_HPQ,s222 |
| s347 | R57 | sumlo | lo | CQR | 11813/100000 | lo_BCR,s233,s295,lo_CER,hi_BER |
| s349 | R60 | sumlo | lo | HRS | 21109/200000 | lo_BHR,lo_FRS,s178,s328,hi_BFR |
| s356 | R70 | sumlo | lo | HQR | 157471/1000000 | s281,lo_PQR,s233,s326,hi_EPR |
| s358 | R73 | sumlo | lo | BES | 164547/1000000 | s294,lo_ERS,s178,lo_CES,s51 |
| s359 | R74 | sumlo | lo | BRS | 76147/500000 | s358,s349,lo_BHS,lo_ERS,s231 |
| s360 | R74 | sumlo | lo | EHS | 37893/125000 | s358,s349,lo_BHS,lo_ERS,s249 |
| s362 | R75 | sumlo | lo | HRS | 22507/200000 | lo_BHS,lo_FRS,s359,s255,hi_BFS |
| s364 | R79 | sumlo | lo | EPS | 25163/100000 | lo_CES,lo_PRS,s237,lo_ERS,s51 |
| s368 | R83 | sumlo | lo | EFS | 45723/250000 | s364,lo_FRS,lo_ERS,s257,s265 |
| s376 | R84 | linear | lo | AFH | 298431/1000000 | lo_AFP,lo_AHP,s338 |
| s378 | R85 | linear | lo | AHR | 399793/1000000 | lo_AHP,s334,s326 |
| s381 | R86 | linear | lo | BCH | 304923/1000000 | s336,lo_BHP,lo_CHP |
| s384 | R87 | linear | hi | BEF | 429831/500000 | hi_BEH,s208,hi_EFH |
| s386 | R88 | linear | lo | BEP | 91041/250000 | lo_BEQ,s344,s341 |
| s389 | R89 | linear | lo | BER | 409841/1000000 | s358,s359,lo_ERS |
| s391 | R90 | linear | lo | BFH | 32091/100000 | s332,lo_BHP,s338 |
| s394 | R91 | linear | lo | BHQ | 285143/1000000 | lo_BHP,s344,lo_HPQ |
| s398 | R95 | linear | lo | BPR | 73207/200000 | s344,s295,lo_PQR |
| s405 | R97 | linear | lo | CEH | 121763/250000 | s50,s223,s360 |
| s407 | R100 | linear | lo | CFH | 307649/1000000 | lo_CFQ,lo_CHQ,s324 |
| s408 | R101 | linear | lo | CFP | 289079/1000000 | lo_CFQ,lo_CPQ,s342 |
| s411 | R103 | linear | lo | CHR | 368601/1000000 | lo_CHQ,s347,s356 |
| s412 | R103 | linear | hi | HQR | 408289/1000000 | lo_CHQ,hi_CHR,s347 |
| s415 | R106 | linear | lo | CPR | 30413/100000 | lo_CPQ,s347,lo_PQR |
| s418 | R108 | linear | lo | EFR | 92223/250000 | s368,lo_ERS,lo_FRS |
| s419 | R109 | linear | lo | EHR | 508679/1000000 | s360,lo_ERS,s362 |
| s420 | R109 | linear | hi | EHS | 131959/250000 | hi_EHR,lo_ERS,s362 |
| s421 | R110 | linear | lo | EPR | 43763/100000 | s364,lo_ERS,lo_PRS |
| s422 | R111 | linear | lo | EQR | 308137/1000000 | s313,lo_ERS,lo_QRS |
| s427 | R115 | bary_hi | lo | BES | 33101/200000 | s302,s389 |
| s428 | R116 | bary_lo | hi | BFS | 781581/1000000 | hi_BCF,s384,hi_BFR |
| s432 | R119 | bary_lo | lo | FHS | 183541/1000000 | s407,lo_EFH,s328 |
| s433 | R120 | bary_lo | lo | FPS | 203153/1000000 | s408,s314,s340 |
| s440 | R124 | bary_hi | hi | PRS | 20373/100000 | s415,hi_EPR |
| s444 | R4 | sub | hi | EHP | 66649/125000 | hi_BEH,s386,lo_BHP |
| s446 | R6 | sum | lo | BER | 410799/1000000 | s427,s359,lo_ERS |
| s459 | R14 | sumlo | lo | BCP | 2041/15625 | s302,lo_BHP,s381,s386,hi_BEH |
| s462 | R19 | sumlo | lo | BQR | 183447/1000000 | lo_BEQ,lo_BHR,s446,s394,hi_BEH |
| s466 | R21 | sumlo | lo | BCE | 21047/100000 | s381,lo_CER,lo_BCR,s405,hi_CHR |
| s471 | R24 | sumlo | lo | CEQ | 69821/500000 | s466,s422,lo_BEQ,lo_CER,hi_BER |
| s472 | R25 | sumlo | lo | BES | 173893/1000000 | s466,lo_ERS,s446,lo_CES,hi_CER |
| s477 | R28 | sumlo | lo | EQS | 125333/1000000 | s471,lo_ERS,lo_CES,s422,hi_CER |
| s478 | R29 | sumlo | lo | EFP | 80407/500000 | lo_EFH,s421,s418,s337,hi_EHR |
| s481 | R32 | sumlo | lo | FHR | 230903/1000000 | s376,s419,s378,lo_EFH,hi_AEH |
| s483 | R33 | sumlo | lo | FHQ | 2127/15625 | s376,s356,lo_AHQ,s481,hi_AHR |
| s486 | R36 | sumlo | lo | HPR | 96449/500000 | lo_BHP,s411,lo_BHR,lo_CHP,hi_BCH |
| s494 | R42 | sumlo | lo | BFP | 4907/40000 | lo_ABP,s408,lo_AFP,s459,s4 |
| s498 | R45 | sumlo | lo | APR | 144539/1000000 | lo_ABP,s340,lo_AFP,s398,hi_BFP |
| s501 | R46 | sumlo | lo | BCP | 135333/1000000 | s386,lo_CHP,lo_BHP,s235,s444 |
| s502 | R46 | sumlo | lo | EHP | 221143/1000000 | s386,lo_CHP,lo_BHP,s235,s16 |
| s503 | R47 | sumlo | lo | FHP | 23471/200000 | s494,lo_CHP,lo_BHP,s408,s16 |
| s505 | R49 | sumlo | lo | FPR | 244973/1000000 | s408,s421,s415,s478,hi_CEP |
| s507 | R52 | sumlo | lo | FPQ | 54999/500000 | s408,lo_PQR,lo_CPQ,s505,hi_CPR |
| s508 | R54 | sumlo | lo | BPQ | 21347/200000 | s394,lo_PQR,s462,lo_HPQ,s412 |
| s511 | R56 | sumlo | lo | CHR | 92633/250000 | lo_BCR,s419,lo_BHR,lo_CER,hi_BER |
| s512 | R57 | sumlo | lo | CQR | 3837/31250 | lo_BCR,s422,s462,lo_CER,hi_BER |
| s517 | R69 | sumlo | lo | PRS | 12057/125000 | s421,lo_FRS,lo_ERS,s505,hi_EFR |
| s518 | R70 | sumlo | lo | HQR | 84627/500000 | s419,lo_PQR,s422,s486,hi_EPR |
| s520 | R74 | sumlo | lo | BRS | 3187/20000 | s472,s362,lo_BHS,lo_ERS,s420 |
| s521 | R74 | sumlo | lo | EHS | 155647/500000 | s472,s362,lo_BHS,lo_ERS,s249 |
| s523 | R75 | sumlo | lo | HRS | 119999/1000000 | lo_BHS,lo_FRS,s520,s432,s428 |
| s527 | R79 | sumlo | lo | EPS | 253827/1000000 | lo_CES,s517,s237,lo_ERS,s51 |
| s531 | R83 | sumlo | lo | EFS | 41721/200000 | s527,lo_FRS,lo_ERS,s433,s440 |
| s542 | R84 | linear | lo | AFH | 60671/200000 | lo_AFP,lo_AHP,s503 |
| s545 | R85 | linear | lo | AHR | 430437/1000000 | lo_AHP,s498,s486 |
| s548 | R86 | linear | lo | BCH | 321333/1000000 | s501,lo_BHP,lo_CHP |
| s551 | R87 | linear | hi | BEF | 53413/62500 | hi_BEH,s391,hi_EFH |
| s556 | R89 | linear | lo | BER | 426243/1000000 | s472,s520,lo_ERS |
| s558 | R90 | linear | lo | BFH | 33303/100000 | s494,lo_BHP,s503 |
| s560 | R91 | linear | lo | BHQ | 58547/200000 | lo_BHP,s508,lo_HPQ |
| s565 | R95 | linear | lo | BPR | 191591/500000 | s508,s462,lo_PQR |
| s571 | R96 | linear | lo | CEH | 10939/20000 | hi_CER,s511,s419 |
| s573 | R100 | linear | lo | CFH | 20133/62500 | lo_CFQ,lo_CHQ,s483 |
| s574 | R101 | linear | lo | CFP | 147999/500000 | lo_CFQ,lo_CPQ,s507 |
| s578 | R103 | linear | lo | CHR | 192519/500000 | lo_CHQ,s512,s518 |
| s579 | R103 | linear | hi | HQR | 80727/200000 | lo_CHQ,hi_CHR,s512 |
| s583 | R106 | linear | lo | CPR | 19299/62500 | lo_CPQ,s512,lo_PQR |
| s588 | R108 | linear | lo | EFR | 78921/200000 | s531,lo_ERS,lo_FRS |
| s589 | R109 | linear | lo | EHR | 524293/1000000 | s521,lo_ERS,s523 |
| s590 | R109 | linear | hi | EHS | 130093/250000 | hi_EHR,lo_ERS,s523 |
| s591 | R110 | linear | lo | EPR | 443283/1000000 | s527,lo_ERS,s517 |
| s593 | R111 | linear | lo | EQR | 311333/1000000 | s477,lo_ERS,lo_QRS |
| s597 | R116 | bary_lo | hi | BFS | 780203/1000000 | hi_BCF,s551,hi_BFR |
| s601 | R119 | bary_lo | lo | FHS | 193099/1000000 | s573,lo_EFH,s481 |
| s603 | R120 | bary_lo | lo | FPS | 110317/500000 | s574,s478,s505 |
| s609 | R124 | bary_hi | hi | PRS | 202461/1000000 | s583,hi_EPR |
| s614 | R7 | sub | hi | HPR | 451003/1000000 | hi_BHR,lo_BHP,s565 |
| s626 | R15 | sumlo | lo | BCP | 142127/1000000 | s548,s565,lo_BCR,lo_BHP,hi_BHR |
| s628 | R19 | sumlo | lo | BQR | 191161/1000000 | lo_BEQ,lo_BHR,s556,s560,hi_BEH |
| s632 | R21 | sumlo | lo | BCE | 45371/200000 | s548,lo_CER,lo_BCR,s571,hi_CHR |
| s637 | R24 | sumlo | lo | CEQ | 74261/500000 | s632,s593,lo_BEQ,lo_CER,hi_BER |
| s638 | R25 | sumlo | lo | BES | 91401/500000 | s632,lo_ERS,s556,lo_CES,hi_CER |
| s641 | R28 | sumlo | lo | EQS | 128713/1000000 | s637,lo_ERS,lo_CES,s593,hi_CER |
| s642 | R29 | sumlo | lo | EFP | 175203/1000000 | lo_EFH,s591,s588,s502,hi_EHR |
| s645 | R32 | sumlo | lo | FHR | 7601/31250 | s542,s589,s545,lo_EFH,hi_AEH |
| s646 | R33 | sumlo | lo | FHQ | 29129/200000 | s542,s518,lo_AHQ,s645,hi_AHR |
| s647 | R34 | sumlo | lo | EHP | 112637/500000 | lo_BEH,lo_CHP,lo_BHP,s571,hi_BCH |
| s657 | R42 | sumlo | lo | BFP | 6403/50000 | lo_ABP,s574,lo_AFP,s626,s4 |
| s660 | R45 | sumlo | lo | APR | 154543/1000000 | lo_ABP,s505,lo_AFP,s565,hi_BFP |
| s663 | R47 | sumlo | lo | FHP | 60431/500000 | s657,lo_CHP,lo_BHP,s574,s16 |
| s664 | R48 | sumlo | lo | BCP | 4459/31250 | lo_BHP,s583,s565,lo_CHP,s614 |
| s665 | R48 | sumlo | lo | HPR | 197219/1000000 | lo_BHP,s583,s565,lo_CHP,s16 |
| s667 | R49 | sumlo | lo | FPR | 258789/1000000 | s574,s591,s583,s642,hi_CEP |
| s668 | R51 | sumlo | lo | EPQ | 176107/1000000 | s235,lo_PQR,lo_CPQ,s591,hi_CPR |
| s669 | R52 | sumlo | lo | FPQ | 28567/250000 | s574,lo_PQR,lo_CPQ,s667,hi_CPR |
| s670 | R54 | sumlo | lo | BPQ | 27873/250000 | s560,lo_PQR,s628,lo_HPQ,s579 |
| s673 | R57 | sumlo | lo | CQR | 126551/1000000 | lo_BCR,s593,s628,lo_CER,hi_BER |
| s677 | R65 | sumlo | lo | CRS | 94479/1000000 | lo_CER,s523,s578,lo_ERS,hi_EHR |
| s679 | R69 | sumlo | lo | PRS | 99207/1000000 | s591,lo_FRS,lo_ERS,s667,hi_EFR |
| s680 | R70 | sumlo | lo | HQR | 174667/1000000 | s589,lo_PQR,s593,s665,hi_EPR |
| s681 | R74 | sumlo | lo | BRS | 33237/200000 | s638,s523,lo_BHS,lo_ERS,s590 |
| s682 | R74 | sumlo | lo | EHS | 160027/500000 | s638,s523,lo_BHS,lo_ERS,s249 |
| s684 | R75 | sumlo | lo | HRS | 24771/200000 | lo_BHS,lo_FRS,s681,s601,s597 |
| s687 | R79 | sumlo | lo | EPS | 255577/1000000 | lo_CES,s679,s237,lo_ERS,s51 |
| s690 | R83 | sumlo | lo | EFS | 109373/500000 | s687,lo_FRS,lo_ERS,s603,s609 |
| s700 | R84 | linear | lo | AFH | 153431/500000 | lo_AFP,lo_AHP,s663 |
| s703 | R85 | linear | lo | AHR | 222381/500000 | lo_AHP,s660,s665 |
| s706 | R86 | linear | lo | BCH | 20543/62500 | s664,lo_BHP,lo_CHP |
| s708 | R87 | linear | hi | BEF | 105311/125000 | hi_BEH,s558,hi_EFH |
| s710 | R88 | linear | lo | BEP | 380599/1000000 | lo_BEQ,s670,s668 |
| s713 | R89 | linear | lo | BER | 441987/1000000 | s638,s681,lo_ERS |
| s715 | R90 | linear | lo | BFH | 170961/500000 | s657,lo_BHP,s663 |
| s717 | R91 | linear | lo | BHQ | 74373/250000 | lo_BHP,s670,lo_HPQ |
| s723 | R95 | linear | lo | BPR | 395653/1000000 | s670,s628,lo_PQR |
| s728 | R96 | linear | lo | CEH | 57707/100000 | hi_CER,s578,s589 |
| s731 | R98 | linear | lo | CEP | 209903/500000 | hi_CER,s583,s591 |
| s732 | R99 | linear | lo | CER | 280479/1000000 | lo_CES,s677,lo_ERS |
| s735 | R100 | linear | lo | CFH | 66329/200000 | lo_CFQ,lo_CHQ,s646 |
| s736 | R101 | linear | lo | CFP | 75067/250000 | lo_CFQ,lo_CPQ,s669 |
| s740 | R103 | linear | lo | CHR | 197109/500000 | lo_CHQ,s673,s680 |
| s741 | R103 | linear | hi | HQR | 99967/250000 | lo_CHQ,hi_CHR,s673 |
| s745 | R106 | linear | lo | CPR | 312551/1000000 | lo_CPQ,s673,lo_PQR |
| s750 | R108 | linear | lo | EFR | 202373/500000 | s690,lo_ERS,lo_FRS |
| s751 | R109 | linear | lo | EHR | 536909/1000000 | s682,lo_ERS,s684 |
| s752 | R109 | linear | hi | EHS | 129129/250000 | hi_EHR,lo_ERS,s684 |
| s753 | R110 | linear | lo | EPR | 55973/125000 | s687,lo_ERS,s679 |
| s755 | R111 | linear | lo | EQR | 314713/1000000 | s641,lo_ERS,lo_QRS |
| s759 | R116 | bary_lo | hi | BFS | 776897/1000000 | hi_BCF,s708,hi_BFR |
| s764 | R119 | bary_lo | lo | FHS | 199057/1000000 | s735,lo_EFH,s645 |
| s766 | R120 | bary_lo | lo | FPS | 232107/1000000 | s736,s642,s667 |
| s772 | R124 | bary_hi | hi | PRS | 100717/500000 | s745,hi_EPR |
| s775 | R4 | sum | lo | BEH | 698873/1000000 | s710,lo_BHP,s647 |
| s778 | R7 | sub | hi | HPR | 109633/250000 | hi_BHR,lo_BHP,s723 |
| s791 | R15 | sumlo | lo | BCP | 149587/1000000 | s706,s723,lo_BCR,lo_BHP,hi_BHR |
| s793 | R19 | sumlo | lo | BQR | 98969/500000 | lo_BEQ,lo_BHR,s713,s717,hi_BEH |
| s798 | R21 | sumlo | lo | BCE | 9419/40000 | s706,s732,lo_BCR,s728,hi_CHR |
| s803 | R24 | sumlo | lo | CEQ | 30817/200000 | s798,s755,lo_BEQ,s732,hi_BER |
| s804 | R25 | sumlo | lo | BES | 94811/500000 | s798,lo_ERS,s713,lo_CES,hi_CER |
| s806 | R28 | sumlo | lo | EQS | 131217/1000000 | s803,lo_ERS,lo_CES,s755,hi_CER |
| s807 | R29 | sumlo | lo | EFP | 22639/125000 | lo_EFH,s753,s750,s647,hi_EHR |
| s811 | R32 | sumlo | lo | FHR | 62959/250000 | s700,s751,s703,lo_EFH,hi_AEH |
| s812 | R33 | sumlo | lo | FHQ | 151333/1000000 | s700,s680,lo_AHQ,s811,hi_AHR |
| s813 | R34 | sumlo | lo | EHP | 231627/1000000 | s775,lo_CHP,lo_BHP,s728,hi_BCH |
| s823 | R42 | sumlo | lo | BFP | 131489/1000000 | lo_ABP,s736,lo_AFP,s791,s4 |
| s826 | R45 | sumlo | lo | APR | 16101/100000 | lo_ABP,s667,lo_AFP,s723,hi_BFP |
| s829 | R47 | sumlo | lo | FHP | 7691/62500 | s823,lo_CHP,lo_BHP,s736,s16 |
| s830 | R48 | sumlo | lo | BCP | 150189/1000000 | lo_BHP,s745,s723,lo_CHP,s778 |
| s831 | R48 | sumlo | lo | HPR | 201847/1000000 | lo_BHP,s745,s723,lo_CHP,s16 |
| s833 | R49 | sumlo | lo | FPR | 13341/50000 | s736,s753,s745,s807,hi_CEP |
| s834 | R51 | sumlo | lo | EPQ | 22337/125000 | s731,lo_PQR,lo_CPQ,s753,hi_CPR |
| s835 | R52 | sumlo | lo | FPQ | 58401/500000 | s736,lo_PQR,lo_CPQ,s833,hi_CPR |
| s836 | R54 | sumlo | lo | BPQ | 4609/40000 | s717,lo_PQR,s793,lo_HPQ,s741 |
| s839 | R57 | sumlo | lo | CQR | 16299/125000 | lo_BCR,s755,s793,s732,hi_BER |
| s843 | R65 | sumlo | lo | CRS | 1217/12500 | s732,s684,s740,lo_ERS,hi_EHR |
| s846 | R70 | sumlo | lo | HQR | 89947/500000 | s751,lo_PQR,s755,s831,hi_EPR |
| s847 | R71 | sumlo | lo | PRS | 5061/50000 | s753,s684,lo_ERS,s831,hi_EHR |
| s848 | R74 | sumlo | lo | BRS | 6817/40000 | s804,s684,lo_BHS,lo_ERS,s752 |
| s849 | R74 | sumlo | lo | EHS | 325789/1000000 | s804,s684,lo_BHS,lo_ERS,s249 |
| s851 | R75 | sumlo | lo | HRS | 126743/1000000 | lo_BHS,lo_FRS,s848,s764,s759 |
| s855 | R79 | sumlo | lo | EPS | 256857/1000000 | lo_CES,s847,s237,lo_ERS,s51 |
| s856 | R83 | sumlo | lo | EFS | 225749/1000000 | s855,lo_FRS,lo_ERS,s766,s772 |
| s866 | R84 | linear | lo | AFH | 4829/15625 | lo_AFP,lo_AHP,s829 |
| s869 | R85 | linear | lo | AHR | 455857/1000000 | lo_AHP,s826,s831 |
| s874 | R86 | linear | lo | BCH | 336189/1000000 | s830,lo_BHP,lo_CHP |
| s876 | R87 | linear | hi | BEF | 208399/250000 | hi_BEH,s715,hi_EFH |
| s878 | R88 | linear | lo | BEP | 386921/1000000 | lo_BEQ,s836,s834 |
| s881 | R89 | linear | lo | BER | 453047/1000000 | s804,s848,lo_ERS |
| s883 | R90 | linear | lo | BFH | 69509/200000 | s823,lo_BHP,s829 |
| s885 | R91 | linear | lo | BHQ | 12049/40000 | lo_BHP,s836,lo_HPQ |
| s891 | R95 | linear | lo | BPR | 406163/1000000 | s836,s793,lo_PQR |
| s896 | R96 | linear | lo | CEH | 299433/500000 | hi_CER,s740,s751 |
| s899 | R98 | linear | lo | CEP | 214037/500000 | hi_CER,s745,s753 |
| s900 | R99 | linear | lo | CER | 1771/6250 | lo_CES,s843,lo_ERS |
| s903 | R100 | linear | lo | CFH | 337333/1000000 | lo_CFQ,lo_CHQ,s812 |
| s904 | R101 | linear | lo | CFP | 151401/500000 | lo_CFQ,lo_CPQ,s835 |
| s909 | R103 | linear | lo | CHR | 201643/500000 | lo_CHQ,s839,s846 |
| s910 | R103 | linear | hi | HQR | 396027/1000000 | lo_CHQ,hi_CHR,s839 |
| s913 | R106 | linear | lo | CPR | 39549/125000 | lo_CPQ,s839,lo_PQR |
| s918 | R108 | linear | lo | EFR | 411749/1000000 | s856,lo_ERS,lo_FRS |
| s919 | R109 | linear | lo | EHR | 136383/250000 | s849,lo_ERS,s851 |
| s920 | R109 | linear | hi | EHS | 128407/250000 | hi_EHR,lo_ERS,s851 |
| s921 | R110 | linear | lo | EPR | 451077/1000000 | s855,lo_ERS,s847 |
| s923 | R111 | linear | lo | EQR | 317217/1000000 | s806,lo_ERS,lo_QRS |
| s926 | R116 | bary_lo | hi | BFS | 96809/125000 | hi_BCF,s876,hi_BFR |
| s931 | R119 | bary_lo | lo | FHS | 40591/200000 | s903,lo_EFH,s811 |
| s933 | R120 | bary_lo | lo | FPS | 9507/40000 | s904,s807,s833 |
| s939 | R124 | bary_hi | hi | PRS | 100193/500000 | s913,hi_EPR |
| s940 | R4 | sum | lo | BEH | 177887/250000 | s878,lo_BHP,s813 |
| s943 | R7 | sum | lo | BHR | 70101/100000 | lo_BHP,s891,s831 |
| s944 | R7 | sub | hi | HPR | 214011/500000 | hi_BHR,lo_BHP,s891 |
| s958 | R15 | sumlo | lo | BCP | 156599/1000000 | s874,s891,lo_BCR,lo_BHP,hi_BHR |
| s960 | R19 | sumlo | lo | BQR | 101813/500000 | lo_BEQ,s943,s881,s885,hi_BEH |
| s964 | R21 | sumlo | lo | BCE | 243707/1000000 | s874,s900,lo_BCR,s896,hi_CHR |
| s969 | R24 | sumlo | lo | CEQ | 7971/50000 | s964,s923,lo_BEQ,s900,hi_BER |
| s970 | R25 | sumlo | lo | BES | 97511/500000 | s964,lo_ERS,s881,lo_CES,hi_CER |
| s972 | R28 | sumlo | lo | EQS | 133411/1000000 | s969,lo_ERS,lo_CES,s923,hi_CER |
| s973 | R29 | sumlo | lo | EFP | 11703/62500 | lo_EFH,s921,s918,s813,hi_EHR |
| s976 | R32 | sumlo | lo | FHR | 4028/15625 | s866,s919,s869,lo_EFH,hi_AEH |
| s977 | R33 | sumlo | lo | FHQ | 31161/200000 | s866,s846,lo_AHQ,s976,hi_AHR |
| s978 | R34 | sumlo | lo | EHP | 47577/200000 | s940,lo_CHP,lo_BHP,s896,hi_BCH |
| s986 | R42 | sumlo | lo | BFP | 134279/1000000 | lo_ABP,s904,lo_AFP,s958,s4 |
| s989 | R45 | sumlo | lo | APR | 41393/250000 | lo_ABP,s833,lo_AFP,s891,hi_BFP |
| s992 | R47 | sumlo | lo | FHP | 62287/500000 | s986,lo_CHP,lo_BHP,s904,s16 |
| s993 | R48 | sumlo | lo | BCP | 31399/200000 | lo_BHP,s913,s891,lo_CHP,s944 |
| s994 | R48 | sumlo | lo | HPR | 102969/500000 | lo_BHP,s913,s891,lo_CHP,s16 |
| s996 | R49 | sumlo | lo | FPR | 6837/25000 | s904,s921,s913,s973,hi_CEP |
| s997 | R51 | sumlo | lo | EPQ | 181077/1000000 | s899,lo_PQR,lo_CPQ,s921,hi_CPR |
| s998 | R52 | sumlo | lo | FPQ | 14837/125000 | s904,lo_PQR,lo_CPQ,s996,hi_CPR |
| s999 | R54 | sumlo | lo | BPQ | 23711/200000 | s885,lo_PQR,s960,lo_HPQ,s910 |
| s1002 | R57 | sumlo | lo | CQR | 67053/500000 | lo_BCR,s923,s960,s900,hi_BER |
| s1006 | R65 | sumlo | lo | CRS | 6257/62500 | s900,s851,s909,lo_ERS,hi_EHR |
| s1007 | R68 | sumlo | lo | FPR | 34273/125000 | s918,s994,s921,s976,hi_EHR |
| s1010 | R70 | sumlo | lo | HQR | 23003/125000 | s919,lo_PQR,s923,s994,hi_EPR |
| s1011 | R71 | sumlo | lo | PRS | 104071/1000000 | s921,s851,lo_ERS,s994,hi_EHR |
| s1012 | R74 | sumlo | lo | BRS | 86891/500000 | s970,s851,lo_BHS,lo_ERS,s920 |
| s1013 | R74 | sumlo | lo | EHS | 330349/1000000 | s970,s851,lo_BHS,lo_ERS,s249 |
| s1015 | R75 | sumlo | lo | HRS | 128877/1000000 | lo_BHS,lo_FRS,s1012,s931,s926 |
| s1019 | R79 | sumlo | lo | EPS | 258669/1000000 | lo_CES,s1011,s237,lo_ERS,s51 |
| s1020 | R83 | sumlo | lo | EFS | 46071/200000 | s1019,lo_FRS,lo_ERS,s933,s939 |
| s1030 | R84 | linear | lo | AFH | 155287/500000 | lo_AFP,lo_AHP,s992 |
| s1033 | R85 | linear | lo | AHR | 46451/100000 | lo_AHP,s989,s994 |
| s1038 | R86 | linear | lo | BCH | 68599/200000 | s993,lo_BHP,lo_CHP |
| s1040 | R87 | linear | hi | BEF | 827973/1000000 | hi_BEH,s883,hi_EFH |
| s1042 | R88 | linear | lo | BEP | 49079/125000 | lo_BEQ,s999,s997 |
| s1045 | R89 | linear | lo | BER | 115451/250000 | s970,s1012,lo_ERS |
| s1047 | R90 | linear | lo | BFH | 351853/1000000 | s986,lo_BHP,s992 |
| s1049 | R91 | linear | lo | BHQ | 60911/200000 | lo_BHP,s999,lo_HPQ |
| s1057 | R95 | linear | lo | BPR | 415181/1000000 | s999,s960,lo_PQR |
| s1062 | R96 | linear | lo | CEH | 616557/1000000 | hi_CER,s909,s919 |
| s1065 | R98 | linear | lo | CEP | 54401/125000 | hi_CER,s913,s921 |
| s1067 | R99 | linear | lo | CER | 8941/31250 | lo_CES,s1006,lo_ERS |
| s1070 | R100 | linear | lo | CFH | 68361/200000 | lo_CFQ,lo_CHQ,s977 |
| s1071 | R101 | linear | lo | CFP | 38087/125000 | lo_CFQ,lo_CPQ,s998 |
| s1076 | R103 | linear | lo | CHR | 41113/100000 | lo_CHQ,s1002,s1010 |
| s1078 | R105 | linear | hi | CHR | 12359/20000 | s251,s51,s1015 |
| s1081 | R106 | linear | lo | CPR | 160053/500000 | lo_CPQ,s1002,lo_PQR |
| s1087 | R108 | linear | lo | EFR | 83271/200000 | s1020,lo_ERS,lo_FRS |
| s1088 | R109 | linear | lo | EHR | 276113/500000 | s1013,lo_ERS,s1015 |
| s1089 | R109 | linear | hi | EHS | 255747/500000 | hi_EHR,lo_ERS,s1015 |
| s1090 | R110 | linear | lo | EPR | 22787/50000 | s1019,lo_ERS,s1011 |
| s1092 | R111 | linear | lo | EQR | 319411/1000000 | s972,lo_ERS,lo_QRS |
| s1095 | R116 | bary_lo | hi | BFS | 772939/1000000 | hi_BCF,s1040,hi_BFR |
| s1099 | R118 | bary_lo | hi | CHS | 300083/500000 | hi_CEH,s1078 |
| s1101 | R119 | bary_lo | lo | FHS | 205799/1000000 | s1070,lo_EFH,s976 |
| s1102 | R120 | bary_lo | lo | FPS | 242989/1000000 | s1071,s973,s1007 |
| s1109 | R124 | bary_hi | hi | PRS | 199373/1000000 | s1081,hi_EPR |
| s1110 | R4 | sum | lo | BEH | 723517/1000000 | s1042,lo_BHP,s978 |
| s1113 | R7 | sum | lo | BHR | 714119/1000000 | lo_BHP,s1057,s994 |
| s1114 | R7 | sub | hi | HPR | 104751/250000 | hi_BHR,lo_BHP,s1057 |
| s1119 | R9 | sub | hi | HQR | 97711/250000 | s1078,lo_CHQ,s1002 |
| s1127 | R15 | sumlo | lo | BCP | 40729/250000 | s1038,s1057,lo_BCR,lo_BHP,hi_BHR |
| s1129 | R19 | sumlo | lo | BQR | 104537/500000 | lo_BEQ,s1113,s1045,s1049,hi_BEH |
| s1133 | R21 | sumlo | lo | BCE | 251597/1000000 | s1038,s1067,lo_BCR,s1062,s1078 |
| s1138 | R24 | sumlo | lo | CEQ | 164511/1000000 | s1133,s1092,lo_BEQ,s1067,hi_BER |
| s1139 | R25 | sumlo | lo | BES | 199681/1000000 | s1133,lo_ERS,s1045,lo_CES,hi_CER |
| s1142 | R28 | sumlo | lo | EQS | 2709/20000 | s1138,lo_ERS,lo_CES,s1092,hi_CER |
| s1143 | R29 | sumlo | lo | EFP | 192847/1000000 | lo_EFH,s1090,s1087,s978,hi_EHR |
| s1146 | R32 | sumlo | lo | FHR | 262327/1000000 | s1030,s1088,s1033,lo_EFH,hi_AEH |
| s1147 | R33 | sumlo | lo | FHQ | 159251/1000000 | s1030,s1010,lo_AHQ,s1146,hi_AHR |
| s1148 | R34 | sumlo | lo | EHP | 243269/1000000 | s1110,lo_CHP,lo_BHP,s1062,hi_BCH |
| s1149 | R35 | sumlo | lo | FHP | 62961/500000 | s1047,lo_CHP,lo_BHP,s1070,hi_BCH |
| s1152 | R38 | sumlo | lo | FHR | 131627/500000 | s1047,s1088,s1113,lo_EFH,hi_BEH |
| s1156 | R42 | sumlo | lo | BFP | 136679/1000000 | lo_ABP,s1071,lo_AFP,s1127,s4 |
| s1158 | R45 | sumlo | lo | APR | 169603/1000000 | lo_ABP,s1007,lo_AFP,s1057,hi_BFP |
| s1161 | R48 | sumlo | lo | BCP | 102/625 | lo_BHP,s1081,s1057,lo_CHP,s1114 |
| s1162 | R48 | sumlo | lo | HPR | 104783/500000 | lo_BHP,s1081,s1057,lo_CHP,s16 |
| s1164 | R49 | sumlo | lo | FPR | 280131/1000000 | s1071,s1090,s1081,s1143,hi_CEP |
| s1165 | R51 | sumlo | lo | EPQ | 183507/1000000 | s1065,lo_PQR,lo_CPQ,s1090,hi_CPR |
| s1166 | R52 | sumlo | lo | FPQ | 15057/125000 | s1071,lo_PQR,lo_CPQ,s1164,hi_CPR |
| s1167 | R54 | sumlo | lo | BPQ | 15277/125000 | s1049,lo_PQR,s1129,lo_HPQ,s1119 |
| s1170 | R57 | sumlo | lo | CQR | 137679/1000000 | lo_BCR,s1092,s1129,s1067,hi_BER |
| s1173 | R63 | sumlo | lo | CFR | 67681/200000 | s1067,s1164,s1081,s1087,hi_EPR |
| s1174 | R65 | sumlo | lo | CRS | 20483/200000 | s1067,s1015,s1076,lo_ERS,hi_EHR |
| s1178 | R70 | sumlo | lo | HQR | 37513/200000 | s1088,lo_PQR,s1092,s1162,hi_EPR |
| s1179 | R71 | sumlo | lo | PRS | 106663/1000000 | s1090,s1015,lo_ERS,s1162,hi_EHR |
| s1180 | R74 | sumlo | lo | BRS | 35299/200000 | s1139,s1015,lo_BHS,lo_ERS,s1089 |
| s1181 | R74 | sumlo | lo | EHS | 334111/1000000 | s1139,s1015,lo_BHS,lo_ERS,s249 |
| s1183 | R75 | sumlo | lo | HRS | 65247/500000 | lo_BHS,lo_FRS,s1180,s1101,s1095 |
| s1187 | R79 | sumlo | lo | EPS | 130159/500000 | lo_CES,s1179,s237,lo_ERS,s51 |
| s1188 | R83 | sumlo | lo | EFS | 234773/1000000 | s1187,lo_FRS,lo_ERS,s1102,s1109 |
| s1198 | R84 | linear | lo | AFH | 155961/500000 | lo_AFP,lo_AHP,s1149 |
| s1201 | R85 | linear | lo | AHR | 472169/1000000 | lo_AHP,s1158,s1162 |
| s1206 | R86 | linear | lo | BCH | 873/2500 | s1161,lo_BHP,lo_CHP |
| s1208 | R87 | linear | hi | BEF | 164733/200000 | hi_BEH,s1047,hi_EFH |
| s1210 | R88 | linear | lo | BEP | 398723/1000000 | lo_BEQ,s1167,s1165 |
| s1213 | R89 | linear | lo | BER | 58647/125000 | s1139,s1180,lo_ERS |
| s1215 | R90 | linear | lo | BFH | 355601/1000000 | s1156,lo_BHP,s1149 |
| s1217 | R91 | linear | lo | BHQ | 38527/125000 | lo_BHP,s1167,lo_HPQ |
| s1225 | R95 | linear | lo | BPR | 42429/100000 | s1167,s1129,lo_PQR |
| s1230 | R96 | linear | lo | CEH | 126219/200000 | hi_CER,s1076,s1088 |
| s1233 | R98 | linear | lo | CEP | 88717/200000 | hi_CER,s1081,s1090 |
| s1235 | R99 | linear | lo | CER | 57683/200000 | lo_CES,s1174,lo_ERS |
| s1238 | R100 | linear | lo | CFH | 345251/1000000 | lo_CFQ,lo_CHQ,s1147 |
| s1239 | R101 | linear | lo | CFP | 38307/125000 | lo_CFQ,lo_CPQ,s1166 |
| s1242 | R102 | linear | lo | CFS | 35643/125000 | s1173,s51,lo_FRS |
| s1244 | R103 | linear | lo | CHR | 104561/250000 | lo_CHQ,s1170,s1178 |
| s1246 | R105 | linear | hi | CHR | 615933/1000000 | s1099,s51,s1183 |
| s1247 | R105 | linear | lo | CHS | 402477/1000000 | s1244,s51,s1183 |
| s1249 | R106 | linear | lo | CPR | 323679/1000000 | lo_CPQ,s1170,lo_PQR |
| s1256 | R108 | linear | lo | EFR | 420773/1000000 | s1188,lo_ERS,lo_FRS |
| s1258 | R109 | linear | lo | EHR | 111521/200000 | s1181,lo_ERS,s1183 |
| s1259 | R109 | linear | hi | EHS | 509877/1000000 | hi_EHR,lo_ERS,s1183 |
| s1260 | R110 | linear | lo | EPR | 459981/1000000 | s1187,lo_ERS,s1179 |
| s1262 | R111 | linear | lo | EQR | 6429/20000 | s1142,lo_ERS,lo_QRS |
| s1265 | R116 | bary_lo | hi | BFS | 192941/250000 | hi_BCF,s1208,hi_BFR |
| s1269 | R118 | bary_lo | hi | CHS | 9369/15625 | hi_CEH,s1246 |
| s1271 | R119 | bary_lo | lo | FHS | 52057/250000 | s1238,lo_EFH,s1152 |
| s1280 | R4 | sum | lo | BEH | 45937/62500 | s1210,lo_BHP,s1148 |
| s1283 | R7 | sum | lo | BHR | 90857/125000 | lo_BHP,s1225,s1162 |
| s1284 | R7 | sub | hi | HPR | 81979/200000 | hi_BHR,lo_BHP,s1225 |
| s1289 | R9 | sub | hi | HQR | 192627/500000 | s1246,lo_CHQ,s1170 |
| s1297 | R15 | sumlo | lo | BCP | 84563/500000 | s1206,s1225,lo_BCR,lo_BHP,hi_BHR |
| s1299 | R19 | sumlo | lo | BQR | 214271/1000000 | lo_BEQ,s1283,s1213,s1217,hi_BEH |
| s1303 | R21 | sumlo | lo | BCE | 64701/250000 | s1206,s1235,lo_BCR,s1230,s1246 |
| s1308 | R24 | sumlo | lo | CEQ | 21149/125000 | s1303,s1262,lo_BEQ,s1235,hi_BER |
| s1309 | R25 | sumlo | lo | BES | 101881/500000 | s1303,lo_ERS,s1213,lo_CES,hi_CER |
| s1312 | R28 | sumlo | lo | EQS | 137331/1000000 | s1308,lo_ERS,lo_CES,s1262,hi_CER |
| s1313 | R29 | sumlo | lo | EFP | 197907/1000000 | lo_EFH,s1260,s1256,s1148,hi_EHR |
| s1316 | R32 | sumlo | lo | FHR | 266157/1000000 | s1198,s1258,s1201,lo_EFH,hi_AEH |
| s1317 | R33 | sumlo | lo | FHQ | 16221/100000 | s1198,s1178,lo_AHQ,s1316,hi_AHR |
| s1318 | R34 | sumlo | lo | EHP | 247991/1000000 | s1280,lo_CHP,lo_BHP,s1230,hi_BCH |
| s1319 | R35 | sumlo | lo | FHP | 31807/250000 | s1215,lo_CHP,lo_BHP,s1238,hi_BCH |
| s1322 | R38 | sumlo | lo | FHR | 268471/1000000 | s1215,s1258,s1283,lo_EFH,hi_BEH |
| s1327 | R42 | sumlo | lo | BFP | 2172/15625 | lo_ABP,s1239,lo_AFP,s1297,s4 |
| s1331 | R48 | sumlo | lo | BCP | 21213/125000 | lo_BHP,s1249,s1225,lo_CHP,s1284 |
| s1332 | R48 | sumlo | lo | HPR | 213181/1000000 | lo_BHP,s1249,s1225,lo_CHP,s16 |
| s1334 | R49 | sumlo | lo | FPR | 71579/250000 | s1239,s1260,s1249,s1313,hi_CEP |
| s1335 | R51 | sumlo | lo | EPQ | 93053/500000 | s1233,lo_PQR,lo_CPQ,s1260,hi_CPR |
| s1336 | R52 | sumlo | lo | FPQ | 30523/250000 | s1239,lo_PQR,lo_CPQ,s1334,hi_CPR |
| s1337 | R54 | sumlo | lo | BPQ | 126127/1000000 | s1217,lo_PQR,s1299,lo_HPQ,s1289 |
| s1340 | R57 | sumlo | lo | CQR | 17627/125000 | lo_BCR,s1262,s1299,s1235,hi_BER |
| s1343 | R63 | sumlo | lo | CFR | 173441/500000 | s1235,s1334,s1249,s1256,hi_EPR |
| s1344 | R65 | sumlo | lo | CRS | 52179/500000 | s1235,s1183,s1244,lo_ERS,hi_EHR |
| s1347 | R70 | sumlo | lo | HQR | 190879/1000000 | s1258,lo_PQR,s1262,s1332,hi_EPR |
| s1348 | R71 | sumlo | lo | PRS | 108881/1000000 | s1260,s1183,lo_ERS,s1332,hi_EHR |
| s1349 | R74 | sumlo | lo | BRS | 44683/250000 | s1309,s1183,lo_BHS,lo_ERS,s1259 |
| s1352 | R75 | sumlo | lo | HRS | 32963/250000 | lo_BHS,lo_FRS,s1349,s1271,s1265 |
| s1355 | R77 | sumlo | lo | EFS | 120221/500000 | lo_CES,lo_FRS,s1242,lo_ERS,s51 |
| s1356 | R78 | sumlo | lo | EHS | 42469/125000 | lo_CES,s1352,s1247,lo_ERS,s51 |
| s1357 | R79 | sumlo | lo | EPS | 8179/31250 | lo_CES,s1348,s237,lo_ERS,s51 |
| s1376 | R86 | linear | lo | BCH | 44463/125000 | s1331,lo_BHP,lo_CHP |
| s1378 | R87 | linear | hi | BEF | 819917/1000000 | hi_BEH,s1215,hi_EFH |
| s1380 | R88 | linear | lo | BEP | 405233/1000000 | lo_BEQ,s1337,s1335 |
| s1383 | R89 | linear | lo | BER | 237747/500000 | s1309,s1349,lo_ERS |
| s1385 | R90 | linear | lo | BFH | 89809/250000 | s1327,lo_BHP,s1319 |
| s1387 | R91 | linear | lo | BHQ | 312127/1000000 | lo_BHP,s1337,lo_HPQ |
| s1395 | R95 | linear | lo | BPR | 216699/500000 | s1337,s1299,lo_PQR |
| s1400 | R96 | linear | lo | CEH | 160897/250000 | hi_CER,s1244,s1258 |
| s1403 | R98 | linear | lo | CEP | 451399/1000000 | hi_CER,s1249,s1260 |
| s1405 | R99 | linear | lo | CER | 145179/500000 | lo_CES,s1344,lo_ERS |
| s1408 | R100 | linear | lo | CFH | 34821/100000 | lo_CFQ,lo_CHQ,s1317 |
| s1409 | R101 | linear | lo | CFP | 77023/250000 | lo_CFQ,lo_CPQ,s1336 |
| s1412 | R102 | linear | lo | CFS | 293621/1000000 | s1343,s51,lo_FRS |
| s1414 | R103 | linear | lo | CHR | 84979/200000 | lo_CHQ,s1340,s1347 |
| s1416 | R105 | linear | hi | CHR | 24561/40000 | s1269,s51,s1352 |
| s1417 | R105 | linear | lo | CHS | 205243/500000 | s1414,s51,s1352 |
| s1419 | R106 | linear | lo | CPR | 40877/125000 | lo_CPQ,s1340,lo_PQR |
| s1426 | R108 | linear | lo | EFR | 213221/500000 | s1355,lo_ERS,lo_FRS |
| s1428 | R109 | linear | lo | EHR | 141151/250000 | s1356,lo_ERS,s1352 |
| s1429 | R109 | linear | hi | EHS | 508519/1000000 | hi_EHR,lo_ERS,s1352 |
| s1430 | R110 | linear | lo | EPR | 463609/1000000 | s1357,lo_ERS,s1348 |
| s1432 | R111 | linear | lo | EQR | 323331/1000000 | s1312,lo_ERS,lo_QRS |
| s1435 | R116 | bary_lo | hi | BFS | 770741/1000000 | hi_BCF,s1378,hi_BFR |
| s1438 | R118 | bary_lo | hi | CHS | 119819/200000 | hi_CEH,s1416 |
| s1440 | R119 | bary_lo | lo | FHS | 105229/500000 | s1408,lo_EFH,s1322 |
| s1449 | R4 | sum | lo | BEH | 46639/62500 | s1380,lo_BHP,s1318 |
| s1452 | R7 | sum | lo | BHR | 739579/1000000 | lo_BHP,s1395,s1332 |
| s1453 | R7 | sub | hi | HPR | 400787/1000000 | hi_BHR,lo_BHP,s1395 |
| s1457 | R9 | sub | hi | HQR | 380009/1000000 | s1416,lo_CHQ,s1340 |
| s1465 | R15 | sumlo | lo | BCP | 43899/250000 | s1376,s1395,lo_BCR,lo_BHP,hi_BHR |
| s1467 | R19 | sumlo | lo | BQR | 21931/100000 | lo_BEQ,s1452,s1383,s1387,hi_BEH |
| s1471 | R21 | sumlo | lo | BCE | 265681/1000000 | s1376,s1405,lo_BCR,s1400,s1416 |
| s1476 | R24 | sumlo | lo | CEQ | 173639/1000000 | s1471,s1432,lo_BEQ,s1405,hi_BER |
| s1477 | R25 | sumlo | lo | BES | 41491/200000 | s1471,lo_ERS,s1383,lo_CES,hi_CER |
| s1480 | R28 | sumlo | lo | EQS | 69551/500000 | s1476,lo_ERS,lo_CES,s1432,hi_CER |
| s1481 | R29 | sumlo | lo | EFP | 202993/1000000 | lo_EFH,s1430,s1426,s1318,hi_EHR |
| s1486 | R34 | sumlo | lo | EHP | 126149/500000 | s1449,lo_CHP,lo_BHP,s1400,hi_BCH |
| s1487 | R35 | sumlo | lo | FHP | 5137/40000 | s1385,lo_CHP,lo_BHP,s1408,hi_BCH |
| s1490 | R38 | sumlo | lo | FHR | 274251/1000000 | s1385,s1428,s1452,lo_EFH,hi_BEH |
| s1492 | R41 | sumlo | lo | FHQ | 166279/1000000 | s1385,s1347,s1387,s1490,hi_BHR |
| s1496 | R42 | sumlo | lo | BFP | 70689/500000 | lo_ABP,s1409,lo_AFP,s1465,s4 |
| s1501 | R48 | sumlo | lo | BCP | 176449/1000000 | lo_BHP,s1419,s1395,lo_CHP,s1453 |
| s1502 | R48 | sumlo | lo | HPR | 27091/125000 | lo_BHP,s1419,s1395,lo_CHP,s16 |
| s1503 | R49 | sumlo | lo | FPR | 292173/1000000 | s1409,s1430,s1419,s1481,hi_CEP |
| s1504 | R51 | sumlo | lo | EPQ | 188463/1000000 | s1403,lo_PQR,lo_CPQ,s1430,hi_CPR |
| s1505 | R52 | sumlo | lo | FPQ | 24727/200000 | s1409,lo_PQR,lo_CPQ,s1503,hi_CPR |
| s1506 | R54 | sumlo | lo | BPQ | 130059/1000000 | s1387,lo_PQR,s1467,lo_HPQ,s1457 |
| s1509 | R57 | sumlo | lo | CQR | 5767/40000 | lo_BCR,s1432,s1467,s1405,hi_BER |
| s1512 | R62 | sumlo | lo | CFR | 355651/1000000 | s1405,s1490,s1414,s1426,hi_EHR |
| s1513 | R65 | sumlo | lo | CRS | 26521/250000 | s1405,s1352,s1414,lo_ERS,hi_EHR |
| s1514 | R68 | sumlo | lo | FPR | 149697/500000 | s1426,s1502,s1430,s1490,hi_EHR |
| s1517 | R70 | sumlo | lo | HQR | 38873/200000 | s1428,lo_PQR,s1432,s1502,hi_EPR |
| s1518 | R71 | sumlo | lo | PRS | 22167/200000 | s1430,s1352,lo_ERS,s1502,hi_EHR |
| s1519 | R74 | sumlo | lo | BRS | 180711/1000000 | s1477,s1352,lo_BHS,lo_ERS,s1429 |
| s1522 | R75 | sumlo | lo | HRS | 26617/200000 | lo_BHS,lo_FRS,s1519,s1440,s1435 |
| s1525 | R77 | sumlo | lo | EFS | 30729/125000 | lo_CES,lo_FRS,s1412,lo_ERS,s51 |
| s1526 | R78 | sumlo | lo | EHS | 345629/1000000 | lo_CES,s1522,s1417,lo_ERS,s51 |
| s1527 | R79 | sumlo | lo | EPS | 26297/100000 | lo_CES,s1518,s237,lo_ERS,s51 |
| s1545 | R86 | linear | lo | BCH | 362449/1000000 | s1501,lo_BHP,lo_CHP |
| s1549 | R88 | linear | lo | BEP | 205761/500000 | lo_BEQ,s1506,s1504 |
| s1552 | R89 | linear | lo | BER | 240583/500000 | s1477,s1519,lo_ERS |
| s1554 | R90 | linear | lo | BFH | 362803/1000000 | s1496,lo_BHP,s1487 |
| s1556 | R91 | linear | lo | BHQ | 316059/1000000 | lo_BHP,s1506,lo_HPQ |
| s1564 | R95 | linear | lo | BPR | 442369/1000000 | s1506,s1467,lo_PQR |
| s1569 | R96 | linear | lo | CEH | 328619/500000 | hi_CER,s1414,s1428 |
| s1572 | R98 | linear | lo | CEP | 114591/250000 | hi_CER,s1419,s1430 |
| s1574 | R99 | linear | lo | CER | 73021/250000 | lo_CES,s1513,lo_ERS |
| s1577 | R100 | linear | lo | CFH | 352279/1000000 | lo_CFQ,lo_CHQ,s1492 |
| s1578 | R101 | linear | lo | CFP | 61927/200000 | lo_CFQ,lo_CPQ,s1505 |
| s1581 | R102 | linear | lo | CFS | 30239/100000 | s1512,s51,lo_FRS |
| s1583 | R103 | linear | lo | CHR | 21577/50000 | lo_CHQ,s1509,s1517 |
| s1585 | R105 | linear | hi | CHR | 612271/1000000 | s1438,s51,s1522 |
| s1586 | R105 | linear | lo | CHS | 104591/250000 | s1583,s51,s1522 |
| s1588 | R106 | linear | lo | CPR | 13207/40000 | lo_CPQ,s1509,lo_PQR |
| s1595 | R108 | linear | lo | EFR | 53979/125000 | s1525,lo_ERS,lo_FRS |
| s1597 | R109 | linear | lo | EHR | 285857/500000 | s1526,lo_ERS,s1522 |
| s1598 | R109 | linear | hi | EHS | 253643/500000 | hi_EHR,lo_ERS,s1522 |
| s1599 | R110 | linear | lo | EPR | 93361/200000 | s1527,lo_ERS,s1518 |
| s1601 | R111 | linear | lo | EQR | 162551/500000 | s1480,lo_ERS,lo_QRS |
| s1607 | R118 | bary_lo | hi | CHS | 598617/1000000 | hi_CEH,s1585 |
| s1618 | R4 | sum | lo | BEH | 37841/50000 | s1549,lo_BHP,s1486 |
| s1621 | R7 | sum | lo | BHR | 752097/1000000 | lo_BHP,s1564,s1502 |
| s1622 | R7 | sub | hi | HPR | 48977/125000 | hi_BHR,lo_BHP,s1564 |
| s1625 | R9 | sub | hi | HQR | 46887/125000 | s1585,lo_CHQ,s1509 |
| s1634 | R15 | sumlo | lo | BCP | 11391/62500 | s1545,s1564,lo_BCR,lo_BHP,hi_BHR |
| s1636 | R19 | sumlo | lo | BQR | 224183/1000000 | lo_BEQ,s1621,s1552,s1556,hi_BEH |
| s1642 | R21 | sumlo | lo | BCE | 8523/31250 | s1545,s1574,lo_BCR,s1569,s1585 |
| s1647 | R24 | sumlo | lo | CEQ | 22267/125000 | s1642,s1601,lo_BEQ,s1574,hi_BER |
| s1648 | R25 | sumlo | lo | BES | 211017/1000000 | s1642,lo_ERS,s1552,lo_CES,hi_CER |
| s1651 | R28 | sumlo | lo | EQS | 17607/125000 | s1647,lo_ERS,lo_CES,s1601,hi_CER |
| s1657 | R34 | sumlo | lo | EHP | 256699/1000000 | s1618,lo_CHP,lo_BHP,s1569,hi_BCH |
| s1658 | R35 | sumlo | lo | FHP | 129811/1000000 | s1554,lo_CHP,lo_BHP,s1577,hi_BCH |
| s1661 | R38 | sumlo | lo | FHR | 56013/200000 | s1554,s1597,s1621,lo_EFH,hi_BEH |
| s1663 | R41 | sumlo | lo | FHQ | 85761/500000 | s1554,s1517,s1556,s1661,hi_BHR |
| s1667 | R42 | sumlo | lo | BFP | 5751/40000 | lo_ABP,s1578,lo_AFP,s1634,s4 |
| s1673 | R48 | sumlo | lo | BCP | 22921/125000 | lo_BHP,s1588,s1564,lo_CHP,s1622 |
| s1674 | R48 | sumlo | lo | HPR | 44037/200000 | lo_BHP,s1588,s1564,lo_CHP,s16 |
| s1675 | R51 | sumlo | lo | EPQ | 47639/250000 | s1572,lo_PQR,lo_CPQ,s1599,hi_CPR |
| s1676 | R52 | sumlo | lo | FPQ | 125441/1000000 | s1578,lo_PQR,lo_CPQ,s1514,hi_CPR |
| s1677 | R54 | sumlo | lo | BPQ | 26789/200000 | s1556,lo_PQR,s1636,lo_HPQ,s1625 |
| s1680 | R57 | sumlo | lo | CQR | 92/625 | lo_BCR,s1601,s1636,s1574,hi_BER |
| s1682 | R59 | sumlo | lo | BRS | 45673/250000 | s1552,s1522,s1621,lo_ERS,hi_EHR |
| s1683 | R60 | sumlo | lo | HRS | 67561/500000 | s1621,lo_FRS,s1682,s1661,hi_BFR |
| s1684 | R62 | sumlo | lo | CFR | 365647/1000000 | s1574,s1661,s1583,s1595,hi_EHR |
| s1685 | R65 | sumlo | lo | CRS | 5427/50000 | s1574,s1683,s1583,lo_ERS,hi_EHR |
| s1688 | R68 | sumlo | lo | FPR | 153959/500000 | s1595,s1674,s1599,s1661,hi_EHR |
| s1690 | R70 | sumlo | lo | HQR | 49451/250000 | s1597,lo_PQR,s1601,s1674,hi_EPR |
| s1691 | R71 | sumlo | lo | PRS | 113929/1000000 | s1599,s1683,lo_ERS,s1674,hi_EHR |
| s1692 | R74 | sumlo | lo | BRS | 183437/1000000 | s1648,s1683,lo_BHS,lo_ERS,s1598 |
| s1696 | R77 | sumlo | lo | EFS | 15713/62500 | lo_CES,lo_FRS,s1581,lo_ERS,s51 |
| s1697 | R78 | sumlo | lo | EHS | 351933/1000000 | lo_CES,s1683,s1586,lo_ERS,s51 |
| s1698 | R79 | sumlo | lo | EPS | 132469/500000 | lo_CES,s1691,s237,lo_ERS,s51 |
| s1716 | R86 | linear | lo | BCH | 46171/125000 | s1673,lo_BHP,lo_CHP |
| s1722 | R88 | linear | lo | BEP | 417501/1000000 | lo_BEQ,s1677,s1675 |
| s1725 | R89 | linear | lo | BER | 243727/500000 | s1648,s1692,lo_ERS |
| s1727 | R90 | linear | lo | BFH | 183293/500000 | s1667,lo_BHP,s1658 |
| s1729 | R91 | linear | lo | BHQ | 63989/200000 | lo_BHP,s1677,lo_HPQ |
| s1737 | R95 | linear | lo | BPR | 56391/125000 | s1677,s1636,lo_PQR |
| s1742 | R96 | linear | lo | CEH | 670993/1000000 | hi_CER,s1583,s1597 |
| s1747 | R99 | linear | lo | CER | 14727/50000 | lo_CES,s1685,lo_ERS |
| s1750 | R100 | linear | lo | CFH | 178761/500000 | lo_CFQ,lo_CHQ,s1663 |
| s1751 | R101 | linear | lo | CFP | 311441/1000000 | lo_CFQ,lo_CPQ,s1676 |
| s1754 | R102 | linear | lo | CFS | 156193/500000 | s1684,s51,lo_FRS |
| s1756 | R103 | linear | lo | CHR | 109501/250000 | lo_CHQ,s1680,s1690 |
| s1758 | R105 | linear | hi | CHR | 152439/250000 | s1607,s51,s1683 |
| s1759 | R105 | linear | lo | CHS | 85373/200000 | s1756,s51,s1683 |
| s1761 | R106 | linear | lo | CPR | 833/2500 | lo_CPQ,s1680,lo_PQR |
| s1768 | R108 | linear | lo | EFR | 13669/31250 | s1696,lo_ERS,lo_FRS |
| s1770 | R109 | linear | lo | EHR | 116011/200000 | s1697,lo_ERS,s1683 |
| s1771 | R109 | linear | hi | EHS | 505249/1000000 | hi_EHR,lo_ERS,s1683 |
| s1772 | R110 | linear | lo | EPR | 471867/1000000 | s1698,lo_ERS,s1691 |
| s1774 | R111 | linear | lo | EQR | 40857/125000 | s1651,lo_ERS,lo_QRS |
| s1781 | R118 | bary_lo | hi | CHS | 597931/1000000 | hi_CEH,s1758 |
| s1792 | R4 | sum | lo | BEH | 959/1250 | s1722,lo_BHP,s1657 |
| s1795 | R7 | sum | lo | BHR | 764313/1000000 | lo_BHP,s1737,s1674 |
| s1796 | R7 | sub | hi | HPR | 383057/1000000 | hi_BHR,lo_BHP,s1737 |
| s1800 | R9 | sub | hi | HQR | 92389/250000 | s1758,lo_CHQ,s1680 |
| s1809 | R15 | sumlo | lo | BCP | 94523/500000 | s1716,s1737,lo_BCR,lo_BHP,hi_BHR |
| s1811 | R19 | sumlo | lo | BQR | 917/4000 | lo_BEQ,s1795,s1725,s1729,hi_BEH |
| s1818 | R21 | sumlo | lo | BCE | 280761/1000000 | s1716,s1747,lo_BCR,s1742,s1758 |
| s1822 | R24 | sumlo | lo | CEQ | 183257/1000000 | s1818,s1774,lo_BEQ,s1747,hi_BER |
| s1823 | R25 | sumlo | lo | BES | 13439/62500 | s1818,lo_ERS,s1725,lo_CES,hi_CER |
| s1826 | R28 | sumlo | lo | EQS | 142781/1000000 | s1822,lo_ERS,lo_CES,s1774,hi_CER |
| s1833 | R35 | sumlo | lo | FHP | 2629/20000 | s1727,lo_CHP,lo_BHP,s1750,hi_BCH |
| s1836 | R38 | sumlo | lo | FHR | 71621/250000 | s1727,s1770,s1795,lo_EFH,hi_BEH |
| s1837 | R40 | sumlo | lo | EHQ | 363833/1000000 | s1792,s1690,s1729,s1770,hi_BHR |
| s1838 | R41 | sumlo | lo | FHQ | 22133/125000 | s1727,s1690,s1729,s1836,hi_BHR |
| s1842 | R42 | sumlo | lo | BFP | 9143/62500 | lo_ABP,s1751,lo_AFP,s1809,s4 |
| s1848 | R48 | sumlo | lo | BCP | 95211/500000 | lo_BHP,s1761,s1737,lo_CHP,s1796 |
| s1849 | R48 | sumlo | lo | HPR | 27943/125000 | lo_BHP,s1761,s1737,lo_CHP,s16 |
| s1851 | R52 | sumlo | lo | FPQ | 7973/62500 | s1751,lo_PQR,lo_CPQ,s1688,hi_CPR |
| s1852 | R54 | sumlo | lo | BPQ | 69103/500000 | s1729,lo_PQR,s1811,lo_HPQ,s1800 |
| s1855 | R57 | sumlo | lo | CQR | 150593/1000000 | lo_BCR,s1774,s1811,s1747,hi_BER |
| s1857 | R59 | sumlo | lo | BRS | 11671/62500 | s1725,s1683,s1795,lo_ERS,hi_EHR |
| s1858 | R60 | sumlo | lo | HRS | 138991/1000000 | s1795,lo_FRS,s1857,s1836,hi_BFR |
| s1861 | R62 | sumlo | lo | CFR | 3763/10000 | s1747,s1836,s1756,s1768,hi_EHR |
| s1862 | R65 | sumlo | lo | CRS | 55683/500000 | s1747,s1858,s1756,lo_ERS,hi_EHR |
| s1865 | R68 | sumlo | lo | FPR | 317659/1000000 | s1768,s1849,s1772,s1836,hi_EHR |
| s1867 | R70 | sumlo | lo | HQR | 201387/1000000 | s1770,lo_PQR,s1774,s1849,hi_EPR |
| s1868 | R71 | sumlo | lo | PRS | 117777/1000000 | s1772,s1858,lo_ERS,s1849,hi_EHR |
| s1869 | R74 | sumlo | lo | BRS | 93447/500000 | s1823,s1858,lo_BHS,lo_ERS,s1771 |
| s1873 | R77 | sumlo | lo | EFS | 64441/250000 | lo_CES,lo_FRS,s1754,lo_ERS,s51 |
| s1874 | R78 | sumlo | lo | EHS | 359799/1000000 | lo_CES,s1858,s1759,lo_ERS,s51 |
| s1894 | R86 | linear | lo | BCH | 188211/500000 | s1848,lo_BHP,lo_CHP |
| s1902 | R89 | linear | lo | BER | 247459/500000 | s1823,s1869,lo_ERS |
| s1904 | R90 | linear | lo | BFH | 185369/500000 | s1842,lo_BHP,s1833 |
| s1906 | R91 | linear | lo | BHQ | 162103/500000 | lo_BHP,s1852,lo_HPQ |
| s1907 | R92 | linear | hi | BPR | 610641/1000000 | lo_BHP,hi_BHR,s1849 |
| s1913 | R95 | linear | lo | BPR | 57557/125000 | s1852,s1811,lo_PQR |
| s1918 | R96 | linear | lo | CEH | 342899/500000 | hi_CER,s1756,s1770 |
| s1923 | R99 | linear | lo | CER | 148683/500000 | lo_CES,s1862,lo_ERS |
| s1926 | R100 | linear | lo | CFH | 45383/125000 | lo_CFQ,lo_CHQ,s1838 |
| s1927 | R101 | linear | lo | CFP | 9799/31250 | lo_CFQ,lo_CPQ,s1851 |
| s1930 | R102 | linear | lo | CFS | 323039/1000000 | s1861,s51,lo_FRS |
| s1932 | R103 | linear | lo | CHR | 22249/50000 | lo_CHQ,s1855,s1867 |
| s1934 | R105 | linear | hi | CHR | 605201/1000000 | s1781,s51,s1858 |
| s1935 | R105 | linear | lo | CHS | 43771/100000 | s1932,s51,s1858 |
| s1937 | R106 | linear | lo | CPR | 336593/1000000 | lo_CPQ,s1855,lo_PQR |
| s1940 | R107 | linear | lo | CPS | 308109/1000000 | s1937,s51,s1868 |
| s1946 | R108 | linear | lo | EFR | 110941/250000 | s1873,lo_ERS,lo_FRS |
| s1948 | R109 | linear | lo | EHR | 59179/100000 | s1874,lo_ERS,s1858 |
| s1952 | R111 | linear | lo | EQR | 328781/1000000 | s1826,lo_ERS,lo_QRS |
| s1959 | R118 | bary_lo | hi | CHS | 596689/1000000 | hi_CEH,s1934 |
| s1972 | R5 | sum | lo | BEH | 781039/1000000 | lo_BEQ,s1906,s1837 |
| s1974 | R7 | sum | lo | BHR | 777/1000 | lo_BHP,s1913,s1849 |
| s1975 | R7 | sub | hi | HPR | 373729/1000000 | hi_BHR,lo_BHP,s1913 |
| s1979 | R9 | sub | hi | HQR | 45201/125000 | s1934,lo_CHQ,s1855 |
| s1987 | R15 | sumlo | lo | BCP | 39253/200000 | s1894,s1913,lo_BCR,lo_BHP,hi_BHR |
| s1989 | R19 | sumlo | lo | BQR | 117491/500000 | lo_BEQ,s1974,s1902,s1906,hi_BEH |
| s1996 | R21 | sumlo | lo | BCE | 14517/50000 | s1894,s1923,lo_BCR,s1918,s1934 |
| s1999 | R24 | sumlo | lo | CEQ | 23667/125000 | s1996,s1952,lo_BEQ,s1923,hi_BER |
| s2000 | R25 | sumlo | lo | BES | 109897/500000 | s1996,lo_ERS,s1902,lo_CES,hi_CER |
| s2003 | R28 | sumlo | lo | EQS | 145021/1000000 | s1999,lo_ERS,lo_CES,s1952,hi_CER |
| s2010 | R35 | sumlo | lo | FHP | 13321/100000 | s1904,lo_CHP,lo_BHP,s1926,hi_BCH |
| s2013 | R38 | sumlo | lo | FHR | 589/2000 | s1904,s1948,s1974,lo_EFH,hi_BEH |
| s2014 | R40 | sumlo | lo | EHQ | 376573/1000000 | s1972,s1867,s1906,s1948,hi_BHR |
| s2015 | R41 | sumlo | lo | FHQ | 91751/500000 | s1904,s1867,s1906,s2013,hi_BHR |
| s2018 | R42 | sumlo | lo | BFP | 7451/50000 | lo_ABP,s1927,lo_AFP,s1987,s4 |
| s2024 | R48 | sumlo | lo | BCP | 9917/50000 | lo_BHP,s1937,s1913,lo_CHP,s1975 |
| s2025 | R48 | sumlo | lo | HPR | 227169/1000000 | lo_BHP,s1937,s1913,lo_CHP,s16 |
| s2027 | R52 | sumlo | lo | FPQ | 130013/1000000 | s1927,lo_PQR,lo_CPQ,s1865,hi_CPR |
| s2028 | R54 | sumlo | lo | BPQ | 71907/500000 | s1906,lo_PQR,s1989,lo_HPQ,s1979 |
| s2031 | R57 | sumlo | lo | CQR | 77243/500000 | lo_BCR,s1952,s1989,s1923,hi_BER |
| s2033 | R59 | sumlo | lo | BRS | 192331/1000000 | s1902,s1858,s1974,lo_ERS,hi_EHR |
| s2034 | R60 | sumlo | lo | HRS | 17977/125000 | s1974,lo_FRS,s2033,s2013,hi_BFR |
| s2037 | R61 | sumlo | lo | HQR | 205753/1000000 | s1974,lo_PQR,s1989,s2025,s1907 |
| s2040 | R62 | sumlo | lo | CFR | 388671/1000000 | s1923,s2013,s1932,s1946,hi_EHR |
| s2041 | R65 | sumlo | lo | CRS | 57371/500000 | s1923,s2034,s1932,lo_ERS,hi_EHR |
| s2044 | R67 | sumlo | lo | PRS | 24611/200000 | s1937,s2034,s2041,s2025,s1934 |
| s2049 | R77 | sumlo | lo | EFS | 132269/500000 | lo_CES,lo_FRS,s1930,lo_ERS,s51 |
| s2050 | R78 | sumlo | lo | EHS | 369763/1000000 | lo_CES,s2034,s1935,lo_ERS,s51 |
| s2051 | R79 | sumlo | lo | EPS | 54831/200000 | lo_CES,s2044,s1940,lo_ERS,s51 |
| s2073 | R86 | linear | lo | BCH | 19217/50000 | s2024,lo_BHP,lo_CHP |
| s2081 | R89 | linear | lo | BER | 4041/8000 | s2000,s2033,lo_ERS |
| s2083 | R90 | linear | lo | BFH | 37523/100000 | s2018,lo_BHP,s2010 |
| s2085 | R91 | linear | lo | BHQ | 164907/500000 | lo_BHP,s2028,lo_HPQ |
| s2086 | R92 | linear | hi | BPR | 75877/125000 | lo_BHP,hi_BHR,s2025 |
| s2092 | R95 | linear | lo | BPR | 117949/250000 | s2028,s1989,lo_PQR |
| s2097 | R96 | linear | lo | CEH | 704509/1000000 | hi_CER,s1932,s1948 |
| s2102 | R99 | linear | lo | CER | 150371/500000 | lo_CES,s2041,lo_ERS |
| s2105 | R100 | linear | lo | CFH | 184751/500000 | lo_CFQ,lo_CHQ,s2015 |
| s2106 | R101 | linear | lo | CFP | 316013/1000000 | lo_CFQ,lo_CPQ,s2027 |
| s2109 | R102 | linear | lo | CFS | 33541/100000 | s2040,s51,lo_FRS |
| s2111 | R103 | linear | lo | CHR | 453239/1000000 | lo_CHQ,s2031,s2037 |
| s2113 | R105 | linear | hi | CHR | 299567/500000 | s1959,s51,s2034 |
| s2114 | R105 | linear | lo | CHS | 225397/500000 | s2111,s51,s2034 |
| s2116 | R106 | linear | lo | CPR | 170243/500000 | lo_CPQ,s2031,lo_PQR |
| s2118 | R107 | linear | lo | CPS | 1983/6250 | s2116,s51,s2044 |
| s2124 | R108 | linear | lo | EFR | 225269/500000 | s2049,lo_ERS,lo_FRS |
| s2126 | R109 | linear | lo | EHR | 606579/1000000 | s2050,lo_ERS,s2034 |
| s2128 | R110 | linear | lo | EPR | 49021/100000 | s2051,lo_ERS,s2044 |
| s2130 | R111 | linear | lo | EQR | 331021/1000000 | s2003,lo_ERS,lo_QRS |
| s2137 | R118 | bary_lo | hi | CHS | 297517/500000 | hi_CEH,s2113 |
| s2149 | R5 | sum | lo | BEH | 799387/1000000 | lo_BEQ,s2085,s2014 |
| s2151 | R7 | sum | lo | BHR | 158393/200000 | lo_BHP,s2092,s2025 |
| s2152 | R7 | sub | hi | HPR | 362389/1000000 | hi_BHR,lo_BHP,s2092 |
| s2156 | R9 | sub | hi | HQR | 10989/31250 | s2113,lo_CHQ,s2031 |
| s2167 | R15 | sumlo | lo | BCP | 102449/500000 | s2073,s2092,lo_BCR,lo_BHP,hi_BHR |
| s2169 | R19 | sumlo | lo | BQR | 242589/1000000 | lo_BEQ,s2151,s2081,s2085,hi_BEH |
| s2179 | R21 | sumlo | lo | BCE | 7557/25000 | s2073,s2102,lo_BCR,s2097,s2113 |
| s2182 | R24 | sumlo | lo | CEQ | 98449/500000 | s2179,s2130,lo_BEQ,s2102,hi_BER |
| s2183 | R25 | sumlo | lo | BES | 225993/1000000 | s2179,lo_ERS,s2081,lo_CES,hi_CER |
| s2186 | R28 | sumlo | lo | EQS | 29553/200000 | s2182,lo_ERS,lo_CES,s2130,hi_CER |
| s2194 | R35 | sumlo | lo | FHP | 67597/500000 | s2083,lo_CHP,lo_BHP,s2105,hi_BCH |
| s2197 | R38 | sumlo | lo | FHR | 304193/1000000 | s2083,s2126,s2151,lo_EFH,hi_BEH |
| s2198 | R40 | sumlo | lo | EHQ | 196581/500000 | s2149,s2037,s2085,s2126,hi_BHR |
| s2199 | R41 | sumlo | lo | FHQ | 95737/500000 | s2083,s2037,s2085,s2197,hi_BHR |
| s2203 | R42 | sumlo | lo | BFP | 76129/500000 | lo_ABP,s2106,lo_AFP,s2167,s4 |
| s2210 | R48 | sumlo | lo | BCP | 26057/125000 | lo_BHP,s2116,s2092,lo_CHP,s2152 |
| s2211 | R48 | sumlo | lo | HPR | 231511/1000000 | lo_BHP,s2116,s2092,lo_CHP,s16 |
| s2218 | R54 | sumlo | lo | BPQ | 75691/500000 | s2085,lo_PQR,s2169,lo_HPQ,s2156 |
| s2221 | R57 | sumlo | lo | CQR | 19943/125000 | lo_BCR,s2130,s2169,s2102,hi_BER |
| s2223 | R59 | sumlo | lo | BRS | 99743/500000 | s2081,s2034,s2151,lo_ERS,hi_EHR |
| s2224 | R60 | sumlo | lo | HRS | 149877/1000000 | s2151,lo_FRS,s2223,s2197,hi_BFR |
| s2227 | R61 | sumlo | lo | HQR | 213857/1000000 | s2151,lo_PQR,s2169,s2211,s2086 |
| s2232 | R65 | sumlo | lo | CRS | 118937/1000000 | s2102,s2224,s2111,lo_ERS,hi_EHR |
| s2235 | R67 | sumlo | lo | PRS | 131133/1000000 | s2116,s2224,s2232,s2211,s2113 |
| s2236 | R68 | sumlo | lo | FPR | 345559/1000000 | s2124,s2211,s2128,s2197,hi_EHR |
| s2238 | R72 | sumlo | lo | QRS | 94769/1000000 | s2130,s2224,lo_ERS,s2227,hi_EHR |
| s2241 | R77 | sumlo | lo | EFS | 68101/250000 | lo_CES,lo_FRS,s2109,lo_ERS,s51 |
| s2243 | R78 | sumlo | lo | EHS | 23871/62500 | lo_CES,s2224,s2114,lo_ERS,s51 |
| s2244 | R79 | sumlo | lo | EPS | 285123/1000000 | lo_CES,s2235,s2118,lo_ERS,s51 |
| s2258 | R85 | linear | hi | APR | 98791/200000 | lo_AHP,hi_AHR,s2211 |
| s2264 | R86 | linear | lo | BCH | 49307/125000 | s2210,lo_BHP,lo_CHP |
| s2271 | R89 | linear | lo | BER | 518479/1000000 | s2183,s2223,lo_ERS |
| s2273 | R90 | linear | lo | BFH | 95113/250000 | s2203,lo_BHP,s2194 |
| s2275 | R91 | linear | lo | BHQ | 168691/500000 | lo_BHP,s2218,lo_HPQ |
| s2276 | R92 | linear | hi | BPR | 301337/500000 | lo_BHP,hi_BHR,s2211 |
| s2283 | R95 | linear | lo | BPR | 486971/1000000 | s2218,s2169,lo_PQR |
| s2288 | R96 | linear | lo | CEH | 727557/1000000 | hi_CER,s2111,s2126 |
| s2292 | R99 | linear | lo | CER | 304937/1000000 | lo_CES,s2232,lo_ERS |
| s2295 | R100 | linear | lo | CFH | 188737/500000 | lo_CFQ,lo_CHQ,s2199 |
| s2301 | R103 | linear | lo | CHR | 466401/1000000 | lo_CHQ,s2221,s2227 |
| s2303 | R105 | linear | hi | CHR | 295709/500000 | s2137,s51,s2224 |
| s2304 | R105 | linear | lo | CHS | 470017/1000000 | s2301,s51,s2224 |
| s2306 | R106 | linear | lo | CPR | 43193/125000 | lo_CPQ,s2221,lo_PQR |
| s2313 | R108 | linear | lo | EFR | 114601/250000 | s2241,lo_ERS,lo_FRS |
| s2315 | R109 | linear | lo | EHR | 624813/1000000 | s2243,lo_ERS,s2224 |
| s2317 | R110 | linear | lo | EPR | 63657/125000 | s2244,lo_ERS,s2235 |
| s2319 | R111 | linear | lo | EQR | 167767/500000 | s2186,lo_ERS,s2238 |
| s2327 | R118 | bary_lo | hi | CHS | 59293/100000 | hi_CEH,s2303 |
| s2329 | R119 | bary_lo | lo | FHS | 228181/1000000 | s2295,lo_EFH,s2197 |
| s2335 | R122 | bary_hi | hi | HRS | 206151/1000000 | s2301,hi_EHR |
| s2340 | R5 | sum | lo | BEH | 102943/125000 | lo_BEQ,s2275,s2198 |
| s2342 | R7 | sum | lo | BHR | 405741/500000 | lo_BHP,s2283,s2211 |
| s2344 | R7 | sub | hi | HPR | 173607/500000 | hi_BHR,lo_BHP,s2283 |
| s2348 | R9 | sub | hi | HQR | 169437/500000 | s2303,lo_CHQ,s2221 |
| s2363 | R19 | sumlo | lo | BQR | 252831/1000000 | lo_BEQ,s2342,s2271,s2275,hi_BEH |
| s2376 | R21 | sumlo | lo | BCE | 31779/100000 | s2264,s2292,lo_BCR,s2288,s2303 |
| s2381 | R25 | sumlo | lo | BES | 29259/125000 | s2376,lo_ERS,s2271,lo_CES,hi_CER |
| s2396 | R35 | sumlo | lo | FHP | 137589/1000000 | s2273,lo_CHP,lo_BHP,s2295,hi_BCH |
| s2400 | R38 | sumlo | lo | FHR | 79057/250000 | s2273,s2315,s2342,lo_EFH,hi_BEH |
| s2401 | R40 | sumlo | lo | EHQ | 417307/1000000 | s2340,s2227,s2275,s2315,hi_BHR |
| s2402 | R41 | sumlo | lo | FHQ | 10141/50000 | s2273,s2227,s2275,s2400,hi_BHR |
| s2410 | R45 | sumlo | lo | BFP | 31349/200000 | lo_ABP,s2236,lo_AFP,s2283,s2258 |
| s2414 | R48 | sumlo | lo | BCP | 111493/500000 | lo_BHP,s2306,s2283,lo_CHP,s2344 |
| s2415 | R48 | sumlo | lo | HPR | 118639/500000 | lo_BHP,s2306,s2283,lo_CHP,s16 |
| s2425 | R54 | sumlo | lo | BPQ | 161977/1000000 | s2275,lo_PQR,s2363,lo_HPQ,s2348 |
| s2431 | R56 | sumlo | lo | CHR | 2937/6250 | lo_BCR,s2315,s2342,s2292,hi_BER |
| s2432 | R57 | sumlo | lo | CQR | 83279/500000 | lo_BCR,s2319,s2363,s2292,hi_BER |
| s2435 | R59 | sumlo | lo | BRS | 41773/200000 | s2271,s2224,s2342,lo_ERS,hi_EHR |
| s2437 | R60 | sumlo | lo | HRS | 157889/1000000 | s2342,lo_FRS,s2435,s2400,hi_BFR |
| s2441 | R61 | sumlo | lo | HQR | 224763/1000000 | s2342,lo_PQR,s2363,s2415,s2276 |
| s2445 | R62 | sumlo | lo | CFR | 212609/500000 | s2292,s2400,s2431,s2313,hi_EHR |
| s2446 | R64 | sumlo | lo | EFR | 116067/250000 | s2292,lo_FRS,s2445,lo_ERS,s51 |
| s2447 | R65 | sumlo | lo | CRS | 125241/1000000 | s2292,s2437,s2431,lo_ERS,hi_EHR |
| s2453 | R68 | sumlo | lo | FPR | 369801/1000000 | s2446,s2415,s2317,s2400,hi_EHR |
| s2463 | R78 | sumlo | lo | EHS | 399253/1000000 | lo_CES,s2437,s2304,lo_ERS,s51 |
| s2468 | R82 | sumlo | lo | EFS | 283051/1000000 | s2463,lo_FRS,lo_ERS,s2329,s2335 |
| s2480 | R85 | linear | hi | APR | 122047/250000 | lo_AHP,hi_AHR,s2415 |
| s2485 | R86 | linear | lo | BCH | 204493/500000 | s2414,lo_BHP,lo_CHP |
| s2494 | R89 | linear | lo | BER | 535937/1000000 | s2381,s2435,lo_ERS |
| s2496 | R90 | linear | lo | BFH | 193667/500000 | s2410,lo_BHP,s2396 |
| s2500 | R91 | linear | lo | BHQ | 347977/1000000 | lo_BHP,s2425,lo_HPQ |
| s2501 | R92 | linear | hi | BPR | 596907/1000000 | lo_BHP,hi_BHR,s2415 |
| s2505 | R93 | linear | lo | BHR | 825571/1000000 | s2500,s2363,s2441 |
| s2509 | R94 | linear | lo | BHS | 356631/500000 | s2505,s249,s2437 |
| s2512 | R95 | linear | lo | BPR | 15869/31250 | s2425,s2363,lo_PQR |
| s2522 | R99 | linear | lo | CER | 311241/1000000 | lo_CES,s2447,lo_ERS |
| s2525 | R100 | linear | lo | CFH | 19441/50000 | lo_CFQ,lo_CHQ,s2402 |
| s2531 | R103 | linear | lo | CHR | 484321/1000000 | lo_CHQ,s2432,s2441 |
| s2532 | R105 | linear | hi | CHR | 290651/500000 | s2327,s51,s2437 |
| s2533 | R105 | linear | lo | CHS | 495949/1000000 | s2531,s51,s2437 |
| s2535 | R106 | linear | lo | CPR | 176279/500000 | lo_CPQ,s2432,lo_PQR |
| s2543 | R108 | linear | lo | EFR | 469051/1000000 | s2468,lo_ERS,lo_FRS |
| s2545 | R109 | linear | lo | EHR | 325071/500000 | s2463,lo_ERS,s2437 |
| s2546 | R109 | linear | hi | EHS | 241241/500000 | hi_EHR,lo_ERS,s2437 |
| s2561 | R119 | bary_lo | lo | FHS | 117279/500000 | s2525,lo_EFH,s2400 |
| s2572 | R5 | sum | lo | BEH | 214571/250000 | lo_BEQ,s2500,s2401 |
| s2575 | R7 | sum | lo | BHR | 419043/500000 | lo_BHP,s2512,s2415 |
| s2582 | R9 | sub | hi | HQR | 20109/62500 | s2532,lo_CHQ,s2432 |
| s2600 | R19 | sumlo | lo | BQR | 26701/100000 | lo_BEQ,s2575,s2494,s2500,hi_BEH |
| s2618 | R22 | sumlo | lo | BCS | 8373/50000 | s2485,s2447,lo_BCR,s2533,s2532 |
| s2644 | R35 | sumlo | lo | FHP | 70449/500000 | s2496,lo_CHP,lo_BHP,s2525,hi_BCH |
| s2648 | R38 | sumlo | lo | FHR | 13319/40000 | s2496,s2545,s2575,lo_EFH,hi_BEH |
| s2650 | R40 | sumlo | lo | EHQ | 226031/500000 | s2572,s2441,s2500,s2545,hi_BHR |
| s2664 | R45 | sumlo | lo | BFP | 10449/62500 | lo_ABP,s2453,lo_AFP,s2512,s2480 |
| s2672 | R48 | sumlo | lo | HPR | 7663/31250 | lo_BHP,s2535,s2512,lo_CHP,s16 |
| s2685 | R54 | sumlo | lo | BPQ | 177761/1000000 | s2500,lo_PQR,s2600,lo_HPQ,s2582 |
| s2697 | R56 | sumlo | lo | BER | 552741/1000000 | lo_BCR,s2545,s2575,s2522,s2532 |
| s2698 | R56 | sumlo | lo | CHR | 7721/15625 | lo_BCR,s2545,s2575,s2522,hi_BER |
| s2700 | R58 | sumlo | lo | BFR | 196747/250000 | s2697,s2648,s2575,s2543,hi_EHR |
| s2705 | R59 | sumlo | lo | BRS | 225279/1000000 | s2697,s2437,s2575,lo_ERS,hi_EHR |
| s2710 | R60 | sumlo | lo | HRS | 3413/20000 | s2575,lo_FRS,s2705,s2648,hi_BFR |
| s2716 | R61 | sumlo | lo | HQR | 240267/1000000 | s2575,lo_PQR,s2600,s2672,s2501 |
| s2725 | R65 | sumlo | lo | CRS | 67543/500000 | s2522,s2710,s2698,lo_ERS,hi_EHR |
| s2727 | R65 | diffhi | hi | HRS | 9849/50000 | s51,hi_EHR,s2698,lo_ERS,s2522 |
| s2745 | R73 | sumlo | lo | BES | 124861/500000 | s2618,lo_ERS,s2705,lo_CES,s51 |
| s2747 | R74 | sumlo | lo | BRS | 14113/62500 | s2745,s2710,s2509,lo_ERS,s2546 |
| s2753 | R78 | sumlo | lo | EHS | 26491/62500 | lo_CES,s2710,s2533,lo_ERS,s51 |
| s2754 | R78 | diffhi | hi | CHS | 588149/1000000 | s51,s2546,lo_CES,s2710,lo_ERS |
| s2760 | R82 | sumlo | lo | EFS | 38857/125000 | s2753,lo_FRS,lo_ERS,s2561,s2727 |
| s2791 | R89 | linear | lo | BER | 56853/100000 | s2745,s2747,lo_ERS |
| s2793 | R90 | linear | lo | BFH | 200541/500000 | s2664,lo_BHP,s2644 |
| s2796 | R91 | linear | lo | BHQ | 363761/1000000 | lo_BHP,s2685,lo_HPQ |
| s2811 | R95 | linear | lo | BPR | 537771/1000000 | s2685,s2600,lo_PQR |
| s2823 | R99 | linear | lo | CER | 160543/500000 | lo_CES,s2725,lo_ERS |
| s2836 | R105 | linear | hi | CHR | 7047/12500 | s2754,s51,s2710 |
| s2850 | R108 | linear | lo | EFR | 62107/125000 | s2760,lo_ERS,lo_FRS |
| s2853 | R109 | linear | lo | EHR | 343753/500000 | s2753,lo_ERS,s2710 |
| s2890 | R5 | sum | lo | BEH | 908823/1000000 | lo_BEQ,s2796,s2650 |
| s2892 | R5 | sub | hi | EHQ | 106719/200000 | hi_BEH,lo_BEQ,s2796 |
| s2894 | R7 | sum | lo | BHR | 875987/1000000 | lo_BHP,s2811,s2672 |
| s2933 | R18 | diffhi | hi | BEF | 753013/1000000 | hi_BEH,hi_BFR,s2791,s2793,s2894 |
| s3025 | R30 | sumlo | lo | FHR | 361839/1000000 | s2793,s2850,s2700,lo_EFH,s2933 |
| s3066 | R40 | sumlo | lo | BHR | 877909/1000000 | s2890,s2716,s2796,s2853,s2892 |
| s3186 | R56 | sumlo | lo | BER | 613421/1000000 | lo_BCR,s2853,s3066,s2823,s2836 |
| s3196 | R58 | sumlo | lo | BFR | 224359/250000 | s3186,s3025,s3066,s2850,hi_EHR |

### Contradiction

| End | Area | Lower reference | Upper reference |
| --- | --- | --- | --- |
| E | BFR | s3196 | hi_BFR |

The two cited bounds give 224359/250000 <= |BFR| <= 8963/10000, with exact positive gap 71/62500.
