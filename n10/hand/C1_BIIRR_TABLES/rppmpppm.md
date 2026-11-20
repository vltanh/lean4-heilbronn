# Leaf rppmpppm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":1,"FZP":1,"DYZ":-1}

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
| 15 | extreme | ["DYQ","O","YQO",-1] |
| 16 | extreme | ["DYR","O","YRO",-1] |
| 17 | extreme | ["DZQ","O","ZQO",-1] |
| 18 | extreme | ["DPQ","O","PQO",-1] |
| 19 | extreme | ["DPQ","H","PQH",-1] |
| 20 | interior_line | ["OZ","R","CDQ","R",-1] |
| 21 | interior_line | ["OP","R","CDQ","R",-1] |
| 22 | interior_line | ["HY","Z","HCDF","Z",1] |
| 23 | interior_line | ["HY","P","HCDF","P",1] |
| 24 | interior_line | ["HP","R","CDQ","R",-1] |
| 25 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 26 | interior_line | ["CY","P","HCDF","P",-1] |
| 27 | interior_line | ["CZ","R","CDQ","R",-1] |
| 28 | interior_line | ["CP","R","CDQ","R",-1] |
| 29 | interior_line | ["DZ","R","CDQ","R",1] |
| 30 | interior_line | ["DP","Y","OHC","Y",1] |
| 31 | interior_line | ["DP","R","CDQ","R",1] |
| 32 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 33 | interior_line | ["PR","Y","OHC","Y",-1] |
| 34 | plu | ["HODZP","HZP",1] |
| 35 | plu | ["DOHZP","DZP",-1] |
| 36 | plu | ["YHDZQ","YZQ",-1] |
| 37 | plu | ["YHDZR","YZR",-1] |
| 38 | plu | ["ZOHFP","ZOF",-1] |
| 39 | plu | ["ZOCFP","ZCF",-1] |
| 40 | plu | ["ZHCFY","ZFY",1] |
| 41 | plu | ["ZHCYP","ZYP",-1] |
| 42 | plu | ["POHFZ","POF",-1] |
| 43 | plu | ["POCFZ","PCF",-1] |
| 44 | plu | ["PHCFY","PFY",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |
| hi_FYQ | FYQ | hi | 245797/317500 | "C044" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 1 | ["fan","ODP","DZP","ODZ","OZP"] | ["fan","ODP","Z"] |
| 2 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 3 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 4 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 5 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 6 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 7 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 8 | ["plu","HCP","HDF","HCD","HFP","HCF","HDP"] | ["plu","HCDFP"] |
| 9 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 10 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 11 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 12 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 13 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 14 | ["plu","CDY","ODF","CDF","ODY","DFY","OCD"] | ["plu","DOCFY"] |
| 15 | ["plu","DFY","ODZ","DFZ","ODY","DYZ","ODF"] | ["plu","DOFYZ"] |
| 16 | ["plu","CDZ","DFY","CDF","DYZ","CDY","DFZ"] | ["plu","DCFYZ"] |
| 17 | ["plu","CDF","DYQ","CDQ","DFY","CDY","DFQ"] | ["plu","DCFYQ"] |
| 18 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 19 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 20 | ["plu","CDF","HFP","CFP","HDF","DFP","HCF"] | ["plu","FHCDP"] |
| 21 | ["plu","DFZ","HFP","DFP","HFZ","FZP","HDF"] | ["plu","FHDZP"] |
| 22 | ["plu","CDF","FYZ","CFY","DFZ","CFZ","DFY"] | ["plu","FCDYZ"] |
| 23 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 24 | ["plu","DFZ","FYP","DFP","FYZ","DFY","FZP"] | ["plu","FDYZP"] |
| 25 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 26 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 27 | ["plu","DZP","OFP","DFP","OZP","FZP","ODP"] | ["plu","PODFZ"] |
| 28 | ["plu","CFP","HZP","CZP","HFP","FZP","HCP"] | ["plu","PHCFZ"] |
| 29 | ["plu","DZP","HFP","DFP","HZP","FZP","HDP"] | ["plu","PHDFZ"] |
| 30 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[1,"CZP","ODF"],[1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 31 | ["balance",[[1,"DFY","HCQ"],[-1,"FYQ","HCD"],[1,"DYQ","HCF"],[1,"DFQ","HCY"]]] | ["six","HCDFYQ"] |
| 32 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 33 | ["balance",[[1,"CFZ","DYP"],[-1,"FZP","CDY"],[-1,"CZP","DFY"],[-1,"CFP","DYZ"]]] | ["six","DYCFZP"] |
| 34 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 35 | ["balance",[[-1,"OHC","DFP"],[1,"HCD","OFP"],[-1,"OCD","HFP"],[-1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 36 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 37 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 38 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 39 | ["balance",[[1,"HCD","YZP"],[-1,"CDY","HZP"],[-1,"HDY","CZP"],[-1,"HCY","DZP"]]] | ["six","ZPHCDY"] |
| 40 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 41 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 42 | ["linear",{"HDF":1,"HFY":-1,"HDY":1,"DFY":-1},"0"] | ["affine_quad","HDFY",1] |
| 43 | ["linear",{"HDZ":1,"HZP":-1,"HDP":1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 44 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 45 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 46 | ["quad","HDF","OHD","93/91"] | ["quad","ODFH","YZP"] |
| 47 | ["quad","CFQ","DFQ","93/91"] | ["quad","CQDF","ZPR"] |
| 48 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 49 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 50 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DF"] |
| 51 | ["bary",["ODZ",1],[null,null,["ODF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OD"] |
| 52 | ["bary",["OFZ",-1],[null,["ODF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OF"] |
| 53 | ["bary",["OZP",-1],[null,["ODP",-1],["OFP",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OP"] |
| 54 | ["bary",["HCZ",1],[["OHC",-1],["HCD",1],["HCF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","HC"] |
| 55 | ["bary",["DYZ",-1],[["ODY",1],null,["DFY",-1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","DY"] |
| 56 | ["bary",["HFZ",-1],[["OHF",-1],["HDF",-1],["HFP",-1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","HF"] |
| 57 | ["bary",["OHP",-1],[null,["OHD",-1],["OHF",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OH"] |
| 58 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OC"] |
| 59 | ["bary",["OFP",-1],[["OHF",1],["ODF",-1],null],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OF"] |
| 60 | ["bary",["CDP",1],[["HCD",1],null,["CDF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CD"] |
| 61 | ["bary",["DZP",-1],[["HDZ",-1],null,["DFZ",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DZ"] |
| 62 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 63 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HF"] |
| 64 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 65 | ["bary",["ODZ",1],[null,["ODF",1],["ODY",1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","OD"] |
| 66 | ["bary",["CDZ",1],[null,["CDF",1],["CDY",1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","CD"] |
| 67 | ["bary",["DFZ",1],[null,null,["DFY",1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","DF"] |
| 68 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 69 | ["bary",["ODP",1],[null,["ODF",1],["ODZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OD"] |
| 70 | ["bary",["OZP",1],[["ODZ",-1],["OFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OZ"] |
| 71 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 72 | ["bary",["DYP",-1],[null,["DFY",-1],["DYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","DY"] |
| 73 | ["bary",["FYP",1],[["DFY",1],null,["FYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","FY"] |
| 74 | ["bary",["OCZ",1],[["OCD",1],["OCY",1],["OCP",1]],"DYP",["YZP","DZP","DYZ"]] | ["bary","DYP","Z","OC"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s20 | 2 | sub | HDP | hi | 3/25 | hi_HDF,lo_DFP,lo_HFP |
| s21 | 2 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s28 | 3 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s32 | 4 | sub | DFZ | hi | 147041/250000 | hi_DFY,lo_DYZ,lo_FYZ |
| s35 | 5 | sub | DYP | hi | 147041/250000 | hi_DFY,lo_DFP,lo_FYP |
| s48 | 7 | sumlo | HCF | lo | 142383/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s56 | 8 | sumlo | HCP | lo | 127097/500000 | lo_HCD,lo_HFP,s48,lo_HDP,hi_HDF |
| s75 | 12 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s28 |
| s85 | 14 | sumlo | CDY | lo | 106321/500000 | lo_CDF,lo_ODY,lo_DFY,lo_OCD,hi_ODF |
| s99 | 16 | sumlo | CDZ | lo | 160003/1000000 | lo_CDF,lo_DYZ,s85,lo_DFZ,hi_DFY |
| s106 | 18 | sumlo | HCF | lo | 76103/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s113 | 20 | diffhi | CFP | hi | 331933/1000000 | hi_CDF,s21,lo_DFP,s106,lo_HDF |
| s115 | 21 | sumlo | DFZ | lo | 2883/10000 | lo_DFP,lo_HFZ,lo_FZP,lo_HDF,s21 |
| s118 | 22 | sumlo | FYZ | lo | 22253/200000 | lo_CFY,s115,s75,lo_DFY,hi_CDF |
| s122 | 23 | sumlo | CFP | lo | 6309/50000 | lo_CDF,lo_FZP,s75,lo_DFP,s32 |
| s123 | 24 | sumlo | FYP | lo | 127327/1000000 | lo_DFP,s118,lo_DFY,lo_FZP,s32 |
| s129 | 28 | sumlo | HZP | lo | 3891/40000 | lo_CZP,lo_HFP,lo_FZP,s56,s113 |
| s130 | 29 | sumlo | DZP | lo | 147463/1000000 | lo_DFP,s129,lo_FZP,lo_HDP,s21 |
| s164 | 32 | balance_lo | CFY | lo | 13783/125000 | lo_HDF,lo_OCY,lo_ODF,lo_HCY,lo_OHF,s85,hi_OHD |
| s179 | 33 | balance_lo | CFZ | lo | 40827/250000 | lo_FZP,s85,lo_CZP,lo_DFY,s122,lo_DYZ,s35 |
| s191 | 38 | balance_lo | HZP | lo | 63467/500000 | lo_HCD,lo_FZP,lo_HDF,lo_CZP,s106,s130,hi_CDF |
| s209 | 42 | linear | HDY | lo | 481/1000 | lo_DFY,hi_HDF,lo_HFY |
| s211 | 43 | linear | HDZ | lo | 154397/1000000 | s130,s20,s191 |
| s230 | 45 | linear | DFZ | lo | 333463/1000000 | lo_DFP,s130,lo_FZP |
| s235 | 46 | quad | OHD | lo | 357989/500000 | hi_HDF |
| s237 | 47 | quad | DFQ | lo | 204251/1000000 | hi_CFQ |
| s241 | 48 | linear | HCD | hi | 721/1000 | lo_HDF |
| s243 | 49 | linear | CDF | hi | 423897/500000 | s106 |
| s350 | 57 | bary_hi | OHP | lo | 49173/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s235,lo_OHF |
| s354 | 59 | bary_lo | OFP | hi | 169291/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHF,hi_ODF |
| s365 | 60 | bary_hi | CDP | hi | 137899/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s241,s243 |
| s374 | 61 | bary_hi | DZP | lo | 148271/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s211,s230 |
| s419 | 62 | bary_hi | OHZ | lo | 334033/1000000 | s365,s374,lo_CZP,s99,lo_OHC,s235,s350 |
| s423 | 63 | bary_hi | HFZ | lo | 70137/500000 | s365,s374,lo_CZP,s99,s106,lo_HDF,lo_HFP |
| s431 | 64 | bary_lo | FYZ | lo | 3338/15625 | s365,s374,lo_CZP,s99,s164,lo_DFY,s123 |
| s467 | 66 | bary_lo | CDZ | lo | 174963/1000000 | hi_DFY,s431,lo_DYZ,s230,lo_CDF,s85 |
| s473 | 67 | bary_hi | DFZ | hi | 116883/250000 | hi_DFY,s431,lo_DYZ,s230,hi_DFY |
| s481 | 68 | bary_hi | OHP | lo | 132433/500000 | s473,lo_FZP,s374,lo_DFP,s235,lo_OHF,s419 |
| s487 | 71 | bary_hi | CFP | lo | 170533/1000000 | s473,lo_FZP,s374,lo_DFP,lo_CDF,s179 |
| s493 | 73 | bary_lo | FYP | lo | 180543/1000000 | s473,lo_FZP,s374,lo_DFP,lo_DFY,s431 |
| s501 | 5 | sub | DYP | hi | 500621/1000000 | hi_DFY,lo_DFP,s493 |
| s502 | 6 | sum | DFZ | lo | 334271/1000000 | lo_DFP,s374,lo_FZP |
| s508 | 9 | sumlo | OCF | lo | 309427/1000000 | lo_CDF,lo_OHC,s106,lo_OCD,s241 |
| s510 | 11 | sumlo | CFY | lo | 67203/500000 | lo_CDF,lo_HCY,s85,s106,s241 |
| s513 | 12 | sumlo | CFZ | lo | 171101/1000000 | lo_CDF,lo_CZP,s467,s487,s365 |
| s514 | 13 | sumlo | ODF | lo | 191023/250000 | lo_CDF,s235,lo_HDF,lo_OCD,s241 |
| s515 | 13 | diffhi | OHD | hi | 894011/1000000 | s241,hi_ODF,lo_HDF,lo_OCD,lo_CDF |
| s522 | 15 | sumlo | ODZ | lo | 26389/200000 | s502,lo_ODY,lo_DYZ,s514,hi_DFY |
| s533 | 16 | sumlo | CDZ | lo | 35037/200000 | lo_CDF,lo_DYZ,s85,s502,hi_DFY |
| s535 | 17 | sumlo | DYQ | lo | 279617/1000000 | lo_CDQ,lo_DFY,s85,s237,s243 |
| s537 | 18 | sumlo | HCF | lo | 161281/1000000 | lo_CDF,lo_OHF,lo_HDF,s508,hi_ODF |
| s544 | 23 | sumlo | CFP | lo | 172083/1000000 | lo_CDF,lo_FZP,s513,lo_DFP,s473 |
| s554 | 29 | sumlo | DZP | lo | 10653/62500 | lo_DFP,s191,lo_FZP,lo_HDP,s21 |
| s571 | 31 | balance_hi | HCQ | hi | 711931/1000000 | hi_FYQ,s241,s535,s537,s237,lo_HCY,lo_DFY |
| s592 | 33 | balance_lo | CFZ | lo | 200393/1000000 | lo_FZP,s85,lo_CZP,lo_DFY,s544,lo_DYZ,s501 |
| s596 | 34 | balance_lo | OFZ | lo | 183009/500000 | lo_OHC,s502,lo_OCD,s423,s235,s592,s241 |
| s600 | 35 | balance_lo | OFP | lo | 231847/1000000 | lo_OHC,lo_DFP,lo_OCD,lo_HFP,s235,s544,s241 |
| s606 | 36 | balance_lo | OZP | lo | 192397/1000000 | lo_OHC,s554,lo_OCD,s191,s235,lo_CZP,s241 |
| s607 | 37 | balance_lo | HZP | lo | 145507/1000000 | s235,lo_FZP,lo_HDF,s606,lo_OHF,s554,hi_ODF |
| s608 | 39 | balance_lo | YZP | lo | 63471/500000 | s85,s607,s209,lo_CZP,lo_HCY,s554,s241 |
| s620 | 40 | linear | ODF | lo | 416117/500000 | s502,s522,s596 |
| s624 | 41 | linear | ODP | hi | 610611/1000000 | lo_DFP,hi_ODF,s600 |
| s630 | 44 | linear | CDF | lo | 709849/1000000 | s533,s592,s502 |
| s637 | 45 | linear | DFZ | lo | 11139/31250 | lo_DFP,s554,lo_FZP |
| s645 | 49 | linear | HCF | hi | 290151/1000000 | s630 |
| s646 | 49 | linear | CDF | hi | 838719/1000000 | s537 |
| s659 | 50 | bary_hi | DFY | hi | 772667/1000000 | s515,s209,lo_ODY,lo_OHY,hi_ODF,hi_HDF |
| s667 | 51 | bary_hi | ODZ | hi | 3328/15625 | hi_ODF,s637,s596,s522,hi_ODF |
| s668 | 52 | bary_lo | OFZ | hi | 89413/200000 | hi_ODF,s637,s596,s522,hi_ODF |
| s671 | 54 | bary_hi | HCZ | hi | 279189/1000000 | hi_ODF,s637,s596,s522,lo_OHC,s241,s645 |
| s679 | 55 | bary_lo | DYZ | hi | 14049/100000 | hi_ODF,s637,s596,s522,lo_ODY,s659 |
| s690 | 56 | bary_hi | HFZ | lo | 75803/500000 | s624,s554,s606,s522,lo_OHF,lo_HDF,lo_HFP |
| s699 | 58 | bary_lo | OCP | lo | 254767/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHC,lo_OCD,s508 |
| s707 | 60 | bary_hi | CDP | hi | 548037/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s241,s646 |
| s731 | 62 | bary_hi | OHZ | lo | 172907/500000 | s707,s554,lo_CZP,s533,lo_OHC,s235,s481 |
| s737 | 64 | bary_lo | FYZ | lo | 48823/200000 | s707,s554,lo_CZP,s533,s510,lo_DFY,s493 |
| s766 | 65 | bary_lo | ODZ | lo | 4471/31250 | s659,s737,lo_DYZ,s637,s620,lo_ODY |
| s774 | 67 | bary_hi | DFZ | hi | 13611/31250 | s659,s737,lo_DYZ,s637,s659 |
| s778 | 69 | bary_hi | ODP | hi | 116291/200000 | s774,lo_FZP,s554,lo_DFP,hi_ODF,s667 |
| s780 | 70 | bary_hi | OZP | hi | 141/625 | s774,lo_FZP,s554,lo_DFP,s766,s668 |
| s789 | 72 | bary_lo | DYP | hi | 236351/500000 | s774,lo_FZP,s554,lo_DFP,s659,s679 |
| s794 | 74 | bary_lo | OCZ | lo | 18981/125000 | s789,s608,s554,lo_DYZ,lo_OCD,lo_OCY,s699 |
| s798 | 0 | sum | ODF | lo | 432769/500000 | s637,s766,s596 |
| s799 | 0 | sub | DFZ | hi | 6662/15625 | hi_ODF,s766,s596 |
| s801 | 1 | sum | ODP | lo | 505917/1000000 | s554,s766,s606 |
| s814 | 10 | sumlo | OCD | lo | 39999/200000 | lo_CDQ,lo_OHC,lo_HCD,lo_OCQ,s571 |
| s831 | 15 | sumlo | ODZ | lo | 147081/1000000 | s637,lo_ODY,lo_DYZ,s798,s659 |
| s850 | 19 | sumlo | OFP | lo | 67157/250000 | lo_DFP,s596,lo_FZP,s798,s799 |
| s851 | 21 | sumlo | HFP | lo | 23481/250000 | lo_DFP,s690,lo_FZP,lo_HDF,s799 |
| s859 | 25 | sumlo | OZP | lo | 194333/1000000 | lo_CZP,s731,s607,s794,s671 |
| s873 | 26 | sumlo | CFP | lo | 215761/1000000 | lo_CZP,s850,lo_FZP,s699,s780 |
| s874 | 27 | sumlo | DZP | lo | 192341/1000000 | lo_DFP,s859,lo_FZP,s801,s354 |
| s885 | 30 | balance_lo | CFZ | lo | 112501/500000 | lo_FZP,s814,lo_CZP,s798,s873,s831,s778 |
| s934 | 34 | balance_lo | OFZ | lo | 20171/50000 | lo_OHC,s637,s814,s690,s235,s885,s241 |
| s942 | 35 | balance_lo | OFP | lo | 138149/500000 | lo_OHC,lo_DFP,s814,s851,s235,s873,s241 |
| s953 | 36 | balance_lo | OZP | lo | 103571/500000 | lo_OHC,s874,s814,s607,s235,lo_CZP,s241 |
| s982 | 41 | linear | ODP | hi | 7077/12500 | lo_DFP,hi_ODF,s942 |
| s1012 | 45 | linear | DFZ | lo | 378341/1000000 | lo_DFP,s874,lo_FZP |
| s1068 | 53 | bary_lo | OZP | hi | 204721/1000000 | hi_ODF,s1012,s934,s831,s982,s942 |

## Conclusion

{"triangle":"OZP","lower":"s953","upper":"s1068"}
