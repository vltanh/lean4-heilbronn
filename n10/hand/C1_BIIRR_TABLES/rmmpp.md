# Leaf rmmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":1,"FZP":1}

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
| 40 | plu | ["YOHZQ","YZQ",-1] |
| 41 | plu | ["YHDZR","YZR",-1] |
| 42 | plu | ["ZOHFP","ZOF",-1] |
| 43 | plu | ["POHFZ","POF",-1] |
| 44 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 45 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 46 | capacity | ["OCP","Y","Z","CPZ",-1,"115189/200000","C013"] |
| 47 | plu | ["FOCYZ","FYZ",1] |
| 48 | plu | ["FOCYP","FYP",1] |
| 49 | plu | ["ZOCYP","ZYP",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | "C014" |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Y"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
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
| lo_YZP | YZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFY | OFY | hi | 138233/317500 | "C018" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 1 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 2 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 3 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 4 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 5 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 6 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 7 | ["plu","OCD","OFY","OCF","ODY","OCY","ODF"] | ["plu","OCDFY"] |
| 8 | ["plu","OCD","OZQ","OCQ","ODZ","OCZ","ODQ"] | ["plu","OCDZQ"] |
| 9 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 10 | ["plu","HDF","OHP","HDP","OHF","HFP","OHD"] | ["plu","HODFP"] |
| 11 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 12 | ["plu","HCZ","OCP","CZP","OHC","HCP","OCZ"] | ["plu","COHZP"] |
| 13 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 14 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 15 | ["plu","HCD","ODP","CDP","OHD","HDP","OCD"] | ["plu","DOHCP"] |
| 16 | ["plu","HDY","ODF","DFY","OHD","HDF","ODY"] | ["plu","DOHFY"] |
| 17 | ["plu","DYZ","ODF","DFY","ODZ","DFZ","ODY"] | ["plu","DOFYZ"] |
| 18 | ["plu","DYP","HDF","DFP","HDY","DFY","HDP"] | ["plu","DHFYP"] |
| 19 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 20 | ["plu","HFY","ODF","DFY","OHF","HDF","OFY"] | ["plu","FOHDY"] |
| 21 | ["plu","CDF","HFZ","CFZ","HDF","DFZ","HCF"] | ["plu","FHCDZ"] |
| 22 | ["plu","DFY","HFP","DFP","HFY","FYP","HDF"] | ["plu","FHDYP"] |
| 23 | ["plu","DFZ","HFP","DFP","HFZ","FZP","HDF"] | ["plu","FHDZP"] |
| 24 | ["plu","CDF","FYZ","CFY","DFZ","CFZ","DFY"] | ["plu","FCDYZ"] |
| 25 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 26 | ["plu","DFZ","FYP","DFP","FYZ","DFY","FZP"] | ["plu","FDYZP"] |
| 27 | ["plu","CDY","OFY","CFY","ODY","DFY","OCY"] | ["plu","YOCDF"] |
| 28 | ["plu","CFY","HDY","CDY","HFY","DFY","HCY"] | ["plu","YHCDF"] |
| 29 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 30 | ["plu","HZP","OFZ","FZP","OHZ","HFZ","OZP"] | ["plu","ZOHFP"] |
| 31 | ["plu","CDZ","OFZ","CFZ","ODZ","DFZ","OCZ"] | ["plu","ZOCDF"] |
| 32 | ["plu","CFZ","OZP","CZP","OFZ","FZP","OCZ"] | ["plu","ZOCFP"] |
| 33 | ["plu","HCP","OZP","CZP","OHP","HZP","OCP"] | ["plu","POHCZ"] |
| 34 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 35 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 36 | ["plu","DZP","OFP","DFP","OZP","FZP","ODP"] | ["plu","PODFZ"] |
| 37 | ["plu","CDP","HFP","CFP","HDP","DFP","HCP"] | ["plu","PHCDF"] |
| 38 | ["plu","DZP","FYP","DFP","YZP","DYP","FZP"] | ["plu","PDFYZ"] |
| 39 | ["balance",[[-1,"CDF","OHZ"],[1,"DFZ","OHC"],[1,"CFZ","OHD"],[1,"CDZ","OHF"]]] | ["six","OHCDFZ"] |
| 40 | ["balance",[[-1,"CDF","OHP"],[1,"DFP","OHC"],[1,"CFP","OHD"],[1,"CDP","OHF"]]] | ["six","OHCDFP"] |
| 41 | ["balance",[[-1,"DFZ","OHP"],[1,"FZP","OHD"],[1,"DZP","OHF"],[1,"DFP","OHZ"]]] | ["six","OHDFZP"] |
| 42 | ["balance",[[1,"HCF","ODP"],[1,"CFP","OHD"],[1,"HFP","OCD"],[-1,"HCP","ODF"]]] | ["six","ODHCFP"] |
| 43 | ["balance",[[1,"HCZ","ODP"],[-1,"CZP","OHD"],[-1,"HZP","OCD"],[-1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 44 | ["balance",[[-1,"HFZ","ODP"],[-1,"FZP","OHD"],[1,"HZP","ODF"],[1,"HFP","ODZ"]]] | ["six","ODHFZP"] |
| 45 | ["balance",[[-1,"HDF","OZP"],[-1,"DFZ","OHP"],[1,"HFZ","ODP"],[1,"HDZ","OFP"]]] | ["six","OPHDFZ"] |
| 46 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 47 | ["balance",[[-1,"OCF","HDZ"],[-1,"CFZ","OHD"],[1,"OFZ","HCD"],[-1,"OCZ","HDF"]]] | ["six","HDOCFZ"] |
| 48 | ["balance",[[1,"OCZ","HDP"],[1,"CZP","OHD"],[-1,"OZP","HCD"],[1,"OCP","HDZ"]]] | ["six","HDOCZP"] |
| 49 | ["balance",[[-1,"OFZ","HDP"],[1,"FZP","OHD"],[1,"OZP","HDF"],[-1,"OFP","HDZ"]]] | ["six","HDOFZP"] |
| 50 | ["balance",[[-1,"ODF","HZP"],[1,"DFZ","OHP"],[1,"OFZ","HDP"],[-1,"ODZ","HFP"]]] | ["six","HPODFZ"] |
| 51 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 52 | ["balance",[[1,"CFZ","DYP"],[-1,"FZP","CDY"],[-1,"CZP","DFY"],[-1,"CFP","DYZ"]]] | ["six","DYCFZP"] |
| 53 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 54 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 55 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 56 | ["linear",{"HDZ":1,"HZP":-1,"HDP":1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 57 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 58 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 59 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 60 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 61 | ["bary",["DFY",1],[["ODF",1],["CDF",1],null],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","DF"] |
| 62 | ["bary",["OFZ",-1],[null,["ODF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OF"] |
| 63 | ["bary",["HCZ",1],[["OHC",-1],["HCD",1],["HCF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","HC"] |
| 64 | ["bary",["CDZ",1],[["OCD",1],null,["CDF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CD"] |
| 65 | ["bary",["DYZ",-1],[["ODY",-1],null,["DFY",-1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","DY"] |
| 66 | ["bary",["OFP",-1],[["OHF",1],["ODF",-1],null],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OF"] |
| 67 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HC"] |
| 68 | ["bary",["CDP",1],[["HCD",1],null,["CDF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CD"] |
| 69 | ["bary",["DZP",-1],[["HDZ",-1],null,["DFZ",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DZ"] |
| 70 | ["bary",["OZQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OQ"] |
| 71 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 72 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 73 | ["bary",["CDZ",1],[null,null,["CDP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CD"] |
| 74 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 75 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 76 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 77 | ["bary",["ODZ",1],[null,["ODF",1],["ODY",-1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","OD"] |
| 78 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 79 | ["bary",["ODP",1],[null,["ODF",1],["ODZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OD"] |
| 80 | ["bary",["OZP",1],[["ODZ",-1],["OFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OZ"] |
| 81 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 82 | ["bary",["CDP",1],[null,["CDF",1],["CDZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CD"] |
| 83 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s25 | 0 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s26 | 0 | sub | HDP | hi | 3/25 | hi_HDF,lo_DFP,lo_HFP |
| s27 | 0 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s34 | 2 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s38 | 4 | sub | DFZ | hi | 147041/250000 | hi_DFY,lo_DYZ,lo_FYZ |
| s41 | 5 | sub | DYP | hi | 147041/250000 | hi_DFY,lo_DFP,lo_FYP |
| s54 | 7 | sumlo | OFY | lo | 157113/1000000 | lo_OCF,lo_ODY,lo_OCY,lo_ODF,hi_OCD |
| s63 | 10 | sumlo | OHP | lo | 119593/500000 | lo_HDP,lo_OHF,lo_HFP,lo_OHD,hi_HDF |
| s93 | 13 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s34 |
| s98 | 16 | sumlo | HDY | lo | 542603/1000000 | lo_DFY,lo_OHD,lo_HDF,lo_ODY,hi_ODF |
| s111 | 17 | sumlo | DYZ | lo | 24183/250000 | lo_DFY,lo_ODZ,lo_DFZ,lo_ODY,hi_ODF |
| s123 | 18 | sumlo | DYP | lo | 37583/100000 | lo_DFP,s98,lo_DFY,lo_HDP,hi_HDF |
| s132 | 19 | sumlo | HCF | lo | 76103/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s133 | 20 | sumlo | HFY | lo | 115853/1000000 | lo_DFY,lo_OHF,lo_HDF,s54,hi_ODF |
| s144 | 22 | diffhi | FYP | hi | 294357/1000000 | hi_DFY,s27,lo_DFP,s133,lo_HDF |
| s145 | 23 | sumlo | DFZ | lo | 2883/10000 | lo_DFP,lo_HFZ,lo_FZP,lo_HDF,s27 |
| s148 | 24 | sumlo | FYZ | lo | 22253/200000 | lo_CFY,s145,s93,lo_DFY,hi_CDF |
| s152 | 25 | sumlo | CFP | lo | 6309/50000 | lo_CDF,lo_FZP,s93,lo_DFP,s38 |
| s153 | 26 | sumlo | FYP | lo | 127327/1000000 | lo_DFP,s148,lo_DFY,lo_FZP,s38 |
| s155 | 27 | sumlo | CDY | lo | 42027/250000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,hi_OFY |
| s160 | 28 | sumlo | CFY | lo | 99441/1000000 | s155,s133,lo_DFY,lo_HCY,hi_HDY |
| s185 | 38 | sumlo | DZP | lo | 148123/1000000 | lo_DFP,lo_YZP,s123,lo_FZP,s144 |
| s223 | 46 | balance_lo | CDY | lo | 200831/1000000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s160,lo_ODQ,hi_OFQ |
| s241 | 51 | balance_lo | CFY | lo | 54583/500000 | lo_HDF,lo_OCY,lo_ODF,lo_HCY,lo_OHF,s223,hi_OHD |
| s254 | 52 | balance_lo | CFZ | lo | 81121/500000 | lo_FZP,s223,lo_CZP,lo_DFY,s152,s111,s41 |
| s258 | 53 | balance_lo | OFZ | lo | 224811/1000000 | lo_OHC,s145,lo_OCD,lo_HFZ,lo_OHD,s254,hi_HCD |
| s269 | 54 | balance_lo | HZP | lo | 127047/1000000 | lo_HCD,lo_FZP,lo_HDF,lo_CZP,s132,s185,hi_CDF |
| s279 | 55 | linear | OCD | lo | 386831/1000000 | s223,lo_OCY,lo_ODY |
| s307 | 56 | linear | HDZ | lo | 15517/100000 | s185,s26,s269 |
| s322 | 57 | linear | DFZ | lo | 334123/1000000 | lo_DFP,s185,lo_FZP |
| s330 | 58 | linear | OHC | lo | 386831/1000000 | s279 |
| s331 | 59 | linear | HCD | hi | 721/1000 | lo_HDF |
| s332 | 60 | linear | HCF | hi | 153/500 | lo_CDF |
| s333 | 60 | linear | CDF | hi | 423897/500000 | s132 |
| s361 | 61 | bary_hi | DFY | hi | 770251/1000000 | hi_OCD,s223,lo_ODY,lo_OCY,hi_ODF,s333 |
| s376 | 62 | bary_lo | OFZ | hi | 101667/200000 | hi_ODF,s322,s258,lo_ODZ,hi_ODF |
| s381 | 63 | bary_hi | HCZ | hi | 71013/250000 | hi_ODF,s322,s258,lo_ODZ,s330,s331,s332 |
| s384 | 64 | bary_lo | CDZ | lo | 207161/1000000 | hi_ODF,s322,s258,lo_ODZ,s279,lo_CDF |
| s392 | 65 | bary_hi | DYZ | lo | 25553/250000 | hi_ODF,s322,s258,lo_ODZ,lo_ODY,lo_DFY |
| s454 | 66 | bary_lo | OFP | hi | 169291/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHF,hi_ODF |
| s459 | 67 | bary_lo | HCP | lo | 12859/50000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCD,s132 |
| s466 | 68 | bary_hi | CDP | hi | 137899/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s331,s333 |
| s475 | 69 | bary_hi | DZP | lo | 74353/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s307,s322 |
| s490 | 70 | bary_hi | OZQ | hi | 517769/1000000 | s333,s322,s254,s384,lo_OCQ,hi_ODQ,hi_OFQ |
| s512 | 71 | bary_hi | OHZ | lo | 44459/125000 | s466,s475,lo_CZP,s384,s330,lo_OHD,s63 |
| s515 | 72 | bary_lo | HCZ | lo | 213597/1000000 | s466,s475,lo_CZP,s384,lo_HCD,s459 |
| s519 | 73 | bary_hi | CDZ | hi | 30989/100000 | s466,s475,lo_CZP,s384,s466 |
| s520 | 74 | bary_hi | CFZ | lo | 82199/500000 | s466,s475,lo_CZP,s384,lo_CDF,s152 |
| s521 | 75 | bary_hi | DFZ | hi | 2697/6250 | s466,s475,lo_CZP,s384,s333,s25 |
| s525 | 76 | bary_lo | FYZ | lo | 21459/100000 | s466,s475,lo_CZP,s384,s241,lo_DFY,s153 |
| s562 | 77 | bary_hi | ODZ | hi | 228713/1000000 | s361,s525,s392,s322,hi_ODF,lo_ODY |
| s572 | 78 | bary_hi | OHP | lo | 8723/31250 | s521,lo_FZP,s475,lo_DFP,lo_OHD,lo_OHF,s512 |
| s573 | 79 | bary_hi | ODP | hi | 116307/200000 | s521,lo_FZP,s475,lo_DFP,hi_ODF,s562 |
| s576 | 80 | bary_hi | OZP | hi | 134591/500000 | s521,lo_FZP,s475,lo_DFP,lo_ODZ,s376 |
| s578 | 81 | bary_lo | HCP | lo | 141101/500000 | s521,lo_FZP,s475,lo_DFP,lo_HCD,s132,s515 |
| s580 | 82 | bary_hi | CDP | hi | 549153/1000000 | s521,lo_FZP,s475,lo_DFP,s333,s519 |
| s581 | 83 | bary_hi | CFP | lo | 184999/1000000 | s521,lo_FZP,s475,lo_DFP,lo_CDF,s520 |
| s600 | 1 | sum | CDF | lo | 352841/500000 | s384,s520,s322 |
| s601 | 3 | sum | CDP | lo | 448867/1000000 | s384,lo_CZP,s475 |
| s604 | 6 | sum | DFZ | lo | 167353/500000 | lo_DFP,s475,lo_FZP |
| s607 | 8 | sumlo | OCD | lo | 195333/500000 | lo_OCQ,lo_ODZ,lo_OCZ,lo_ODQ,s490 |
| s609 | 9 | sumlo | HCF | lo | 172467/1000000 | lo_HCD,lo_OHF,lo_HDF,s330,hi_OHD |
| s616 | 11 | sumlo | OCF | lo | 472061/1000000 | s600,s330,s609,s607,s331 |
| s621 | 12 | sumlo | OCP | lo | 403833/1000000 | lo_CZP,s330,s578,lo_OCZ,s381 |
| s637 | 13 | sumlo | CFZ | lo | 11831/62500 | s600,lo_CZP,s384,s581,s580 |
| s640 | 14 | diffhi | CDF | hi | 407399/500000 | s331,hi_ODF,lo_HDF,s607,lo_OHD |
| s642 | 15 | sumlo | ODP | lo | 30153/62500 | s601,lo_OHD,lo_HDP,s607,s331 |
| s662 | 19 | sumlo | HCF | lo | 52737/250000 | s600,lo_OHF,lo_HDF,s616,hi_ODF |
| s674 | 21 | sumlo | HFZ | lo | 9467/62500 | s637,lo_HDF,s604,s662,s640 |
| s686 | 29 | sumlo | OZP | lo | 60309/250000 | lo_CZP,s512,s269,lo_OCZ,s381 |
| s689 | 29 | diffhi | HZP | hi | 155499/1000000 | s381,s576,lo_CZP,s512,lo_OCZ |
| s691 | 30 | sumlo | HZP | lo | 17119/125000 | lo_FZP,s512,s674,s686,s376 |
| s692 | 30 | sumlo | OFZ | lo | 447707/1000000 | lo_FZP,s512,s674,s686,s689 |
| s694 | 31 | sumlo | CDZ | lo | 43667/200000 | s637,lo_ODZ,s604,lo_OCZ,s376 |
| s695 | 32 | sumlo | CFZ | lo | 25107/100000 | lo_CZP,s692,lo_FZP,lo_OCZ,s576 |
| s704 | 33 | sumlo | HCP | lo | 301897/1000000 | lo_CZP,s572,s691,s621,s576 |
| s710 | 34 | sumlo | HZP | lo | 142933/1000000 | lo_FZP,s572,lo_HFP,s686,s454 |
| s711 | 34 | sumlo | OFP | lo | 311221/1000000 | lo_FZP,s572,lo_HFP,s686,s689 |
| s713 | 34 | diffhi | OHP | hi | 64977/200000 | s689,s454,lo_HFP,s686,lo_FZP |
| s714 | 34 | diffhi | HFP | hi | 110637/1000000 | s689,s454,lo_FZP,s572,s686 |
| s715 | 35 | sumlo | CFP | lo | 61761/250000 | lo_CZP,s711,lo_FZP,s621,s576 |
| s718 | 36 | sumlo | DZP | lo | 198777/1000000 | lo_DFP,s686,lo_FZP,s642,s454 |
| s719 | 37 | sumlo | CDP | lo | 57679/125000 | s715,lo_HDP,lo_DFP,s704,s714 |
| s728 | 39 | balance_lo | OHZ | lo | 49709/125000 | s604,s330,s695,lo_OHD,s694,lo_OHF,s640 |
| s732 | 40 | balance_lo | OHP | lo | 153619/500000 | lo_DFP,s330,s715,lo_OHD,s719,lo_OHF,s640 |
| s737 | 41 | balance_lo | DFZ | lo | 369397/1000000 | lo_FZP,lo_OHD,s718,lo_OHF,lo_DFP,s728,s713 |
| s747 | 42 | balance_lo | HCP | lo | 330909/1000000 | s662,s642,s715,lo_OHD,lo_HFP,s607,hi_ODF |
| s749 | 43 | balance_lo | ODP | lo | 26607/50000 | lo_CZP,lo_OHD,s710,s607,s747,lo_ODZ,s381 |
| s751 | 43 | balance_hi | ODZ | hi | 135401/1000000 | s381,s573,lo_CZP,lo_OHD,s710,s607,s747 |
| s755 | 44 | balance_hi | HFZ | hi | 90109/500000 | s689,hi_ODF,s714,s751,lo_FZP,lo_OHD,s749 |
| s791 | 45 | balance_lo | HDZ | lo | 224449/1000000 | lo_HDF,s686,s737,s732,s755,s573,s454 |
| s825 | 47 | balance_hi | HDZ | hi | 242397/1000000 | s376,s331,s695,lo_OHD,lo_OCZ,lo_HDF,s616 |
| s828 | 47 | balance_lo | OFZ | lo | 62073/125000 | s616,s791,s695,lo_OHD,lo_OCZ,lo_HDF,s331 |
| s834 | 48 | balance_lo | OZP | lo | 251219/1000000 | lo_OCZ,lo_HDP,lo_CZP,lo_OHD,s621,s791,s331 |
| s838 | 49 | balance_lo | HDP | lo | 51699/500000 | lo_FZP,lo_OHD,s834,lo_HDF,s454,s825,s376 |
| s881 | 50 | balance_lo | ODF | lo | 240931/250000 | s737,s732,s828,s838,s751,s714,s689 |

## Conclusion

{"triangle":"ODF","lower":"s881","upper":"hi_ODF"}
