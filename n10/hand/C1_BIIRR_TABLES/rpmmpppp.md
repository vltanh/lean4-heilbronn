# Leaf rpmmpppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYP":1}

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
| 9 | extreme | ["OHZ","D","HZD",1] |
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFZ","O","FZO",-1] |
| 16 | extreme | ["DYQ","O","YQO",-1] |
| 17 | extreme | ["DYR","O","YRO",-1] |
| 18 | interior_line | ["HY","Z","HCDF","Z",1] |
| 19 | interior_line | ["HY","P","HCDF","P",1] |
| 20 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 21 | interior_line | ["CY","P","HCDF","P",-1] |
| 22 | interior_line | ["CZ","R","CDQ","R",-1] |
| 23 | interior_line | ["CP","R","CDQ","R",-1] |
| 24 | interior_line | ["DZ","R","CDQ","R",1] |
| 25 | interior_line | ["DP","R","CDQ","R",1] |
| 26 | interior_line | ["ZP","Y","OHC","Y",1] |
| 27 | interior_line | ["ZP","Z","HCDF","D",-1] |
| 28 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 29 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | plu | ["OHDYZ","OYZ",-1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["DOHYZ","DYZ",1] |
| 34 | plu | ["FOHZP","FOP",1] |
| 35 | plu | ["YOHDP","YOP",1] |
| 36 | plu | ["YHDFZ","YFZ",-1] |
| 37 | plu | ["YHDFP","YFP",-1] |
| 38 | plu | ["ZOCFP","ZCF",-1] |
| 39 | plu | ["POCFZ","PCF",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","P"] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODY | ODY | hi | 40801583/63500000 | "C040" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 2 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 3 | ["fan","CDY","CDP","CYP","DYP"] | ["fan","CDY","P"] |
| 4 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 5 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 6 | ["plu","HDY","OHC","HCD","OHY","HCY","OHD"] | ["plu","HOCDY"] |
| 7 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 8 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 9 | ["plu","CDF","CYP","CDP","CFY","CDY","CFP"] | ["plu","CDFYP"] |
| 10 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 11 | ["plu","CDP","CYZ","CDY","CZP","CDZ","CYP"] | ["plu","CDYZP"] |
| 12 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 13 | ["plu","CDY","ODQ","CDQ","ODY","DYQ","OCD"] | ["plu","DOCYQ"] |
| 14 | ["plu","DFY","HCD","CDF","HDY","CDY","HDF"] | ["plu","DHCFY"] |
| 15 | ["plu","CDY","HDP","CDP","HDY","DYP","HCD"] | ["plu","DHCYP"] |
| 16 | ["plu","CDY","DFP","CDF","DYP","CDP","DFY"] | ["plu","DCFYP"] |
| 17 | ["plu","HDY","OCY","CDY","OHY","HCY","ODY"] | ["plu","YOHCD"] |
| 18 | ["plu","CFZ","DZP","CDZ","FZP","CZP","DFZ"] | ["plu","ZCDFP"] |
| 19 | ["plu","DZP","HCP","CDP","HZP","CZP","HDP"] | ["plu","PHCDZ"] |
| 20 | ["plu","CFP","HZP","CZP","HFP","FZP","HCP"] | ["plu","PHCFZ"] |
| 21 | ["plu","DFP","HZP","DZP","HFP","FZP","HDP"] | ["plu","PHDFZ"] |
| 22 | ["plu","CFP","DZP","CDP","FZP","CZP","DFP"] | ["plu","PCDFZ"] |
| 23 | ["balance",[[1,"OCD","HFY"],[1,"CDF","OHY"],[1,"ODF","HCY"],[-1,"OCF","HDY"]]] | ["six","HYOCDF"] |
| 24 | ["balance",[[1,"CDF","HYP"],[-1,"DFP","HCY"],[-1,"CFP","HDY"],[-1,"CDP","HFY"]]] | ["six","HYCDFP"] |
| 25 | ["balance",[[-1,"CFY","HZP"],[1,"FYZ","HCP"],[-1,"CYZ","HFP"],[-1,"CFZ","HYP"]]] | ["six","HPCFYZ"] |
| 26 | ["balance",[[1,"HDF","CYP"],[-1,"DFY","HCP"],[1,"HFY","CDP"],[1,"HDY","CFP"]]] | ["six","CPHDFY"] |
| 27 | ["balance",[[-1,"CFZ","DYP"],[-1,"FZP","CDY"],[-1,"CZP","DFY"],[1,"CFP","DYZ"]]] | ["six","DYCFZP"] |
| 28 | ["balance",[[-1,"HCF","DYP"],[1,"CFY","HDP"],[-1,"HFY","CDP"],[-1,"HCY","DFP"]]] | ["six","DPHCFY"] |
| 29 | ["balance",[[1,"CDY","FZP"],[1,"DYP","CFZ"],[-1,"CYP","DFZ"],[1,"CDP","FYZ"]]] | ["six","FZCDYP"] |
| 30 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 31 | ["balance",[[1,"CDF","YZP"],[-1,"DFY","CZP"],[-1,"CFY","DZP"],[-1,"CDY","FZP"]]] | ["six","ZPCDFY"] |
| 32 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 33 | ["linear",{"CFZ":1,"CZP":-1,"CFP":-1,"FZP":1},"0"] | ["affine_quad","CFZP",-1] |
| 34 | ["linear",{"DYZ":1,"DZP":-1,"DYP":-1,"YZP":-1},"0"] | ["affine_quad","DYZP",1] |
| 35 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 36 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 37 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 38 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 39 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["CDF",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DF"] |
| 40 | ["bary",null,[["CZP",1],["DZP",-1],["FZP",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","ZP"] |
| 41 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HC"] |
| 42 | ["bary",["CYP",-1],[null,["CDY",-1],["CFY",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CY"] |
| 43 | ["bary",["DFP",1],[["CDF",1],null,null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DF"] |
| 44 | ["bary",["HCP",1],[null,["HCD",1],["HCY",-1]],"CDY",["DYP","CYP","CDP"]] | ["bary","CDY","P","HC"] |
| 45 | ["bary",["HDP",-1],[["HCD",-1],null,["HDY",-1]],"CDY",["DYP","CYP","CDP"]] | ["bary","CDY","P","HD"] |
| 46 | ["bary",["HFP",-1],[["HCF",-1],["HDF",-1],["HFY",-1]],"CDY",["DYP","CYP","CDP"]] | ["bary","CDY","P","HF"] |
| 47 | ["bary",["CDP",1],[null,null,["CDY",1]],"CDY",["DYP","CYP","CDP"]] | ["bary","CDY","P","CD"] |
| 48 | ["bary",["CFP",-1],[null,["CDF",-1],["CFY",1]],"CDY",["DYP","CYP","CDP"]] | ["bary","CDY","P","CF"] |
| 49 | ["bary",["CYP",-1],[null,["CDY",-1],null],"CDY",["DYP","CYP","CDP"]] | ["bary","CDY","P","CY"] |
| 50 | ["bary",["DFP",1],[["CDF",1],null,["DFY",1]],"CDY",["DYP","CYP","CDP"]] | ["bary","CDY","P","DF"] |
| 51 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 52 | ["bary",["CYZ",-1],[null,["CDY",-1],["CYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CY"] |
| 53 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 54 | ["bary",["YZP",-1],[["CYP",-1],["DYP",1],null],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","YP"] |
| 55 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 56 | ["bary",["CYP",-1],[["CDY",-1],["CFY",-1],["CYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s33 | 2 | sub | DYZ | hi | 563681/1000000 | hi_CDY,lo_CDZ,lo_CYZ |
| s34 | 3 | sub | CDP | hi | 563681/1000000 | hi_CDY,lo_CYP,lo_DYP |
| s35 | 3 | sub | CYP | hi | 377681/1000000 | hi_CDY,lo_CDP,lo_DYP |
| s48 | 6 | sumlo | HDY | lo | 203281/1000000 | lo_HCD,lo_OHY,lo_HCY,lo_OHD,hi_OHC |
| s50 | 7 | sumlo | HCF | lo | 58273/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s60 | 8 | sumlo | CFY | lo | 74649/500000 | lo_CDF,lo_HCY,lo_CDY,s50,hi_HCD |
| s71 | 9 | diffhi | CFP | hi | 106041/250000 | hi_CDF,s35,lo_CDP,s60,lo_CDY |
| s72 | 10 | sumlo | CFZ | lo | 32461/250000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s34 |
| s85 | 12 | sumlo | ODF | lo | 32569/62500 | lo_CDF,lo_OHD,lo_HDF,lo_OCD,hi_HCD |
| s94 | 13 | diff | OCD | lo | 19187/62500 | lo_CDY,lo_ODQ,hi_CDQ,hi_ODY,hi_DYQ |
| s102 | 14 | sumlo | DFY | lo | 26387/125000 | lo_CDF,s48,lo_CDY,lo_HDF,hi_HCD |
| s108 | 16 | sumlo | DFP | lo | 164653/1000000 | lo_CDF,lo_DYP,lo_CDP,s102,hi_CDY |
| s120 | 17 | sumlo | OCY | lo | 14409/100000 | lo_CDY,lo_OHY,lo_HCY,lo_ODY,s1 |
| s133 | 22 | sumlo | DZP | lo | 97273/1000000 | lo_CDP,lo_FZP,lo_CZP,s108,s71 |
| s151 | 23 | balance_lo | HDY | lo | 222921/1000000 | s94,lo_HFY,lo_CDF,lo_OHY,s85,lo_HCY,hi_OCF |
| s165 | 27 | balance_lo | CFP | lo | 170751/1000000 | s72,lo_DYP,lo_FZP,lo_CDY,lo_CZP,s102,s33 |
| s173 | 30 | balance_lo | HZP | lo | 47503/500000 | lo_HCD,lo_FZP,lo_HDF,lo_CZP,s50,s133,hi_CDF |
| s219 | 35 | quad | CDP | lo | 81/250 | hi_CDQ |
| s221 | 36 | linear | HCD | hi | 907/1000 | lo_HDF |
| s222 | 37 | linear | HCF | hi | 153/500 | lo_CDF |
| s223 | 37 | linear | CDF | hi | 441727/500000 | s50 |
| s227 | 38 | bary_hi | CDY | hi | 725679/1000000 | hi_OHC,lo_HCY,s120,lo_OHY,hi_OCD,s221 |
| s230 | 39 | bary_lo | DFY | lo | 243719/1000000 | hi_OHC,lo_HCY,s120,lo_OHY,s85,lo_HDF,lo_CDF |
| s343 | 41 | bary_lo | HCP | lo | 44219/250000 | s223,s108,s165,s219,lo_HCD,s50 |
| s347 | 42 | bary_hi | CYP | lo | 188887/1000000 | s223,s108,s165,s219,lo_CDY,s60 |
| s349 | 43 | bary_hi | DFP | hi | 388703/1000000 | s223,s108,s165,s219,s223 |
| s381 | 44 | bary_hi | HCP | hi | 68857/200000 | s227,lo_DYP,s347,s219,s221,lo_HCY |
| s382 | 45 | bary_hi | HDP | lo | 188469/1000000 | s227,lo_DYP,s347,s219,lo_HCD,s151 |
| s383 | 46 | bary_hi | HFP | lo | 96017/1000000 | s227,lo_DYP,s347,s219,s50,lo_HDF,lo_HFY |
| s386 | 47 | bary_hi | CDP | hi | 27737/62500 | s227,lo_DYP,s347,s219,s227 |
| s387 | 48 | bary_lo | CFP | hi | 309133/1000000 | s227,lo_DYP,s347,s219,s223,s60 |
| s388 | 49 | bary_lo | CYP | hi | 308679/1000000 | s227,lo_DYP,s347,s219,s227 |
| s393 | 50 | bary_lo | DFP | lo | 39551/200000 | s227,lo_DYP,s347,s219,lo_CDF,s230 |
| s410 | 51 | bary_lo | HCZ | lo | 91249/500000 | s386,s133,lo_CZP,lo_CDZ,lo_HCD,s343 |
| s416 | 52 | bary_hi | CYZ | lo | 37003/200000 | s386,s133,lo_CZP,lo_CDZ,lo_CDY,s347 |
| s418 | 53 | bary_hi | DFZ | hi | 594641/1000000 | s386,s133,lo_CZP,lo_CDZ,s223,s349 |
| s425 | 54 | bary_lo | YZP | hi | 159819/1000000 | s386,s133,lo_CZP,lo_CDZ,s388,lo_DYP |
| s458 | 55 | bary_lo | HCP | lo | 228791/1000000 | s418,lo_FZP,s133,s393,lo_HCD,s50,s410 |
| s460 | 56 | bary_hi | CYP | lo | 49273/200000 | s418,lo_FZP,s133,s393,lo_CDY,s60,s416 |
| s472 | 1 | sum | HCD | lo | 37063/50000 | s219,s458,s382 |
| s473 | 1 | sub | HDP | hi | 354209/1000000 | s221,s219,s458 |
| s476 | 2 | sub | DYZ | hi | 27979/62500 | s227,lo_CDZ,s416 |
| s477 | 3 | sub | CDP | hi | 193157/500000 | s227,s460,lo_DYP |
| s480 | 4 | sub | DZP | hi | 100157/500000 | s477,lo_CDZ,lo_CZP |
| s481 | 5 | sum | DFZ | lo | 97007/250000 | s393,s133,lo_FZP |
| s484 | 7 | sumlo | HCF | lo | 15443/125000 | s472,lo_HFY,lo_HCY,lo_HDF,s1 |
| s485 | 7 | sumlo | HDY | lo | 253549/1000000 | s472,lo_HFY,lo_HCY,lo_HDF,s222 |
| s491 | 8 | sumlo | CFY | lo | 16569/100000 | lo_CDF,lo_HCY,lo_CDY,s484,s221 |
| s500 | 11 | sumlo | CYZ | lo | 11319/50000 | lo_CDY,lo_CZP,lo_CDZ,s460,s477 |
| s508 | 15 | sumlo | HDP | lo | 1041/5000 | s219,s485,lo_DYP,s472,s227 |
| s523 | 18 | sumlo | CFZ | lo | 223327/1000000 | lo_CDZ,lo_FZP,lo_CZP,s481,s480 |
| s533 | 19 | sumlo | DZP | lo | 9103/62500 | s219,s173,lo_CZP,s508,s381 |
| s534 | 19 | sumlo | HCP | lo | 250329/1000000 | s219,s173,lo_CZP,s508,s480 |
| s535 | 19 | diffhi | HZP | hi | 30619/200000 | s480,s381,lo_CZP,s508,s219 |
| s538 | 20 | sumlo | HZP | lo | 20839/200000 | lo_CZP,s383,lo_FZP,s534,s387 |
| s539 | 21 | sumlo | DFP | lo | 10891/50000 | s533,s383,lo_FZP,s508,s535 |
| s542 | 22 | sumlo | CFP | lo | 251551/1000000 | s219,lo_FZP,lo_CZP,s539,s480 |
| s543 | 22 | sumlo | DZP | lo | 163001/1000000 | s219,lo_FZP,lo_CZP,s539,s387 |
| s577 | 24 | balance_lo | HYP | lo | 129231/1000000 | s539,lo_HCY,s542,s485,s219,lo_HFY,s223 |
| s582 | 25 | balance_lo | FYZ | lo | 197107/1000000 | s491,s538,s500,s383,s523,s577,s381 |
| s590 | 26 | balance_lo | DFY | lo | 84831/250000 | lo_HDF,s460,lo_HFY,s219,s485,s542,s381 |
| s597 | 27 | balance_lo | CFP | lo | 261063/1000000 | s523,lo_DYP,lo_FZP,lo_CDY,lo_CZP,s590,s476 |
| s601 | 28 | balance_lo | CFY | lo | 34939/200000 | s484,lo_DYP,lo_HFY,s219,lo_HCY,s539,s473 |
| s605 | 29 | balance_lo | DFZ | lo | 241633/500000 | lo_CDY,lo_FZP,lo_DYP,s523,s219,s582,s388 |
| s618 | 31 | balance_lo | YZP | lo | 8813/62500 | s590,lo_CZP,s601,s543,lo_CDY,lo_FZP,s223 |
| s622 | 31 | balance_hi | FZP | hi | 58473/500000 | s223,s425,s590,lo_CZP,s601,s543,lo_CDY |
| s657 | 32 | linear | DYZ | hi | 406299/1000000 | s227,lo_CDZ,s500 |
| s666 | 33 | linear | CFZ | lo | 237117/1000000 | s597,lo_CZP,s622 |
| s668 | 34 | linear | DZP | hi | 172291/1000000 | lo_DYP,s657,s618 |
| s685 | 37 | linear | CDF | hi | 109557/125000 | s484 |

## Conclusion

{"kind":"bary_zero","relation":40,"side":"lo","value":"187270271/87645600000","sources":["s685","s605","s666","lo_CDZ","lo_CZP","s668","lo_FZP"]}
