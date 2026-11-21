# Leaf rmmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":1,"FZP":-1,"FYZ":1,"FYP":-1}

## Signs

| Step | Deduction | Arguments |
| --- | --- | --- |
| 1 | box_sign | ["OFR",-1,"-1203792909/7210000000","C001"] |
| 2 | box_sign | ["HCR",1,"-222759/5000000","C002"] |
| 3 | box_sign | ["HDY",-1,"831/63500","C003"] |
| 4 | box_sign | ["HDR",-1,"-2583767/36050000","C004"] |
| 5 | box_sign | ["CDY",1,"617153/12700000","C005"] |
| 6 | box_sign | ["CFR",-1,"3643/50000","C006"] |
| 7 | box_sign | ["CYR",-1,"29451633927/457835000000","C007"] |
| 8 | box_sign | ["FYQ",1,"1327/15875","C008"] |
| 9 | extreme | ["OHP","D","POD",1] |
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFY","O","FYO",-1] |
| 16 | extreme | ["DPQ","O","PQO",-1] |
| 17 | extreme | ["DPQ","H","PQH",-1] |
| 18 | interior_line | ["OP","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["HP","R","CDQ","R",-1] |
| 22 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 23 | interior_line | ["CY","P","HCDF","P",-1] |
| 24 | interior_line | ["CZ","R","CDQ","R",-1] |
| 25 | interior_line | ["CP","R","CDQ","R",-1] |
| 26 | interior_line | ["DZ","R","CDQ","R",1] |
| 27 | interior_line | ["DP","Y","OHC","Y",1] |
| 28 | interior_line | ["DP","R","CDQ","R",1] |
| 29 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 30 | interior_line | ["PR","Y","OHC","Y",-1] |
| 31 | capacity | ["OCD","Y","Z","DOZ",-1,"115189/200000","C009"] |
| 32 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 33 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 34 | plu | ["OHDYZ","OYZ",1] |
| 35 | plu | ["OHDYP","OYP",1] |
| 36 | plu | ["OHDZR","OZR",-1] |
| 37 | plu | ["HODZP","HZP",1] |
| 38 | plu | ["DOHYZ","DYZ",-1] |
| 39 | plu | ["DOHZP","DZP",-1] |
| 40 | plu | ["FOHYZ","FOZ",1] |
| 41 | plu | ["FHCYP","FCP",-1] |
| 42 | plu | ["FHCPQ","FPQ",1] |
| 43 | plu | ["FHCPR","FPR",1] |
| 44 | plu | ["YOHZQ","YZQ",-1] |
| 45 | plu | ["YOFZP","YZP",1] |
| 46 | plu | ["YHDZR","YZR",-1] |
| 47 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 48 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |
| 49 | capacity | ["OCP","Y","Z","CPZ",-1,"115189/200000","C013"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Y"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OFQ | OFQ | lo | 74230731/144200000 | "C030" |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCF | HCF | lo | 279/1000 | ["cost","P"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_DFY | DFY | lo | 279/1000 | ["cost","Z"] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HFY | HFY | hi | 271/500 | "C024" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHF","HFP","OFP","OHP"] | ["fan","OHF","P"] |
| 1 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 2 | ["fan","HFY","FYP","HFP","HYP"] | ["fan","HFY","P"] |
| 3 | ["plu","ODQ","OFY","ODF","OYQ","ODY","OFQ"] | ["plu","ODFYQ"] |
| 4 | ["plu","HCP","HDF","HCD","HFP","HCF","HDP"] | ["plu","HCDFP"] |
| 5 | ["plu","CDY","OHC","HCD","OCY","HCY","OCD"] | ["plu","COHDY"] |
| 6 | ["plu","DFP","OHF","HDF","OFP","HFP","ODF"] | ["plu","FOHDP"] |
| 7 | ["plu","CFP","ODF","CDF","OFP","DFP","OCF"] | ["plu","FOCDP"] |
| 8 | ["plu","DFP","HCF","CDF","HFP","CFP","HDF"] | ["plu","FHCDP"] |
| 9 | ["plu","DFP","HFY","DFY","HFP","FYP","HDF"] | ["plu","FHDYP"] |
| 10 | ["plu","CFP","DFY","CDF","FYP","CFY","DFP"] | ["plu","FCDYP"] |
| 11 | ["plu","CFY","OHY","HCY","OFY","HFY","OCY"] | ["plu","YOHCF"] |
| 12 | ["plu","CFP","OHP","HCP","OFP","HFP","OCP"] | ["plu","POHCF"] |
| 13 | ["plu","DFP","OHP","HDP","OFP","HFP","ODP"] | ["plu","POHDF"] |
| 14 | ["plu","DFP","HYP","DYP","HFP","FYP","HDP"] | ["plu","PHDFY"] |
| 15 | ["balance",[[1,"HCD","OFY"],[-1,"CDF","OHY"],[-1,"HDF","OCY"],[-1,"HCF","ODY"]]] | ["six","OYHCDF"] |
| 16 | ["balance",[[1,"HDF","OYP"],[-1,"DFP","OHY"],[-1,"HFP","ODY"],[-1,"HDP","OFY"]]] | ["six","OYHDFP"] |
| 17 | ["balance",[[-1,"HCD","OFP"],[-1,"CDF","OHP"],[-1,"HDF","OCP"],[1,"HCF","ODP"]]] | ["six","OPHCDF"] |
| 18 | ["balance",[[-1,"HCD","OYP"],[-1,"CDY","OHP"],[1,"HDY","OCP"],[-1,"HCY","ODP"]]] | ["six","OPHCDY"] |
| 19 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 20 | ["balance",[[-1,"OCD","HFY"],[1,"CDY","OHF"],[1,"ODY","HCF"],[1,"OCY","HDF"]]] | ["six","HFOCDY"] |
| 21 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 22 | ["balance",[[-1,"HDF","CYP"],[1,"DFP","HCY"],[1,"HFP","CDY"],[1,"HDP","CFY"]]] | ["six","CYHDFP"] |
| 23 | ["balance",[[-1,"OHC","DFY"],[1,"HCY","ODF"],[1,"OCY","HDF"],[1,"OHY","CDF"]]] | ["six","DFOHCY"] |
| 24 | ["balance",[[-1,"OHC","DFP"],[-1,"HCD","OFP"],[-1,"OCD","HFP"],[1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 25 | ["linear",{"OHD":-1,"ODP":1,"OHP":1,"HDP":-1},"0"] | ["affine_quad","OHDP",1] |
| 26 | ["linear",{"OCY":-1,"OYP":-1,"OCP":1,"CYP":-1},"0"] | ["affine_quad","OCYP",-1] |
| 27 | ["linear",{"ODY":-1,"OYP":1,"ODP":-1,"DYP":1},"0"] | ["affine_quad","ODYP",1] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s6 | 0 | sub | OHP | hi | 449/1000 | hi_OHF,lo_HFP,lo_OFP |
| s28 | 1 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s35 | 2 | sub | HYP | hi | 89/250 | hi_HFY,lo_FYP,lo_HFP |
| s63 | 3 | sumlo | OFY | lo | 114801/1000000 | lo_ODF,lo_OYQ,lo_ODY,lo_OFQ,hi_ODQ |
| s69 | 4 | sumlo | HCP | lo | 59143/200000 | lo_HCD,lo_HFP,lo_HCF,lo_HDP,hi_HDF |
| s76 | 5 | sumlo | CDY | lo | 71251/500000 | lo_HCD,lo_OCY,lo_HCY,lo_OCD,hi_OHC |
| s111 | 6 | sumlo | DFP | lo | 102967/1000000 | lo_HDF,lo_OFP,lo_HFP,lo_ODF,hi_OHF |
| s112 | 6 | sumlo | OHF | lo | 544867/1000000 | lo_HDF,lo_OFP,lo_HFP,lo_ODF,s28 |
| s115 | 6 | diffhi | ODF | hi | 108071/200000 | s28,hi_OHF,lo_HDF,lo_OFP,lo_HFP |
| s124 | 7 | sumlo | CFP | lo | 7249/62500 | lo_CDF,lo_OFP,s111,lo_OCF,s115 |
| s126 | 8 | sumlo | DFP | lo | 3263/31250 | lo_CDF,lo_HFP,s124,lo_HDF,hi_HCF |
| s127 | 8 | sumlo | HCF | lo | 552537/1000000 | lo_CDF,lo_HFP,s124,lo_HDF,s28 |
| s129 | 8 | diffhi | CFP | hi | 37863/250000 | s28,hi_HCF,lo_CDF,lo_HFP,lo_HDF |
| s138 | 9 | sumlo | HFY | lo | 8649/20000 | lo_DFY,lo_HFP,lo_FYP,lo_HDF,s28 |
| s139 | 9 | diffhi | DFY | hi | 84071/200000 | s28,hi_HFY,lo_FYP,lo_HDF,lo_HFP |
| s148 | 10 | diffhi | CFY | hi | 142309/500000 | s129,s139,lo_CDF,lo_FYP,s126 |
| s153 | 11 | sumlo | OHY | lo | 2794/15625 | lo_HCY,s63,s138,lo_OCY,s148 |
| s168 | 12 | sumlo | OHP | lo | 352907/1000000 | s69,lo_OFP,lo_HFP,lo_OCP,s129 |
| s173 | 13 | diffhi | ODP | hi | 97271/200000 | s28,s6,lo_HDP,lo_OFP,lo_HFP |
| s196 | 14 | diffhi | DYP | hi | 73271/200000 | s28,s35,lo_FYP,lo_HDP,lo_HFP |
| s237 | 15 | balance_lo | OFY | lo | 146399/1000000 | lo_CDF,s153,lo_HDF,lo_OCY,s127,lo_ODY,hi_HCD |
| s239 | 16 | balance_lo | OYP | lo | 5351/40000 | s126,s153,lo_HFP,lo_ODY,lo_HDP,s237,hi_HDF |
| s247 | 17 | balance_hi | OCP | hi | 103479/250000 | hi_HCF,s173,lo_HCD,lo_OFP,lo_CDF,s168,lo_HDF |
| s248 | 17 | balance_lo | HCF | lo | 111521/200000 | lo_HCD,lo_OFP,lo_CDF,s168,lo_HDF,lo_OCP,s173 |
| s249 | 17 | balance_lo | ODP | lo | 427077/1000000 | lo_HCD,lo_OFP,lo_CDF,s168,lo_HDF,lo_OCP,hi_HCF |
| s250 | 18 | balance_lo | HDY | lo | 441751/1000000 | lo_HCD,s239,s76,s168,lo_HCY,s249,s247 |
| s257 | 19 | balance_lo | CDY | lo | 85083/500000 | lo_HCD,lo_OYQ,s250,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s279 | 20 | balance_lo | OCD | lo | 39327/125000 | s257,s112,lo_ODY,s248,lo_OCY,lo_HDF,hi_HFY |
| s308 | 21 | balance_lo | CFY | lo | 158101/1000000 | lo_HDF,lo_OCY,lo_ODF,lo_HCY,s112,s257,hi_OHD |
| s315 | 22 | balance_lo | CYP | lo | 131501/1000000 | s126,lo_HCY,lo_HFP,s257,lo_HDP,s308,hi_HDF |
| s332 | 23 | balance_lo | OHC | lo | 310813/1000000 | lo_HCY,lo_ODF,lo_OCY,lo_HDF,s153,lo_CDF,s139 |
| s350 | 24 | balance_lo | OHD | lo | 833631/1000000 | s332,s126,lo_HCD,lo_OFP,s279,lo_HFP,s129 |
| s400 | 25 | linear | ODP | lo | 477631/1000000 | lo_HDP,s350,s6 |
| s433 | 26 | linear | OYP | hi | 37883/200000 | s315,s247,lo_OCY |
| s449 | 27 | linear | ODY | hi | 78139/1000000 | s196,s400,s433 |

## Conclusion

{"triangle":"ODY","lower":"lo_ODY","upper":"s449"}
