# Leaf rmmmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":1,"FZP":-1,"FYZ":1,"FYP":-1}

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
| 9 | extreme | ["HFY","C","FYC",1] |
| 10 | extreme | ["CYQ","H","YQH",1] |
| 11 | extreme | ["CYR","D","YRD",1] |
| 12 | extreme | ["CYR","F","YRF",1] |
| 13 | extreme | ["CYR","H","YRH",1] |
| 14 | extreme | ["DFY","O","FYO",-1] |
| 15 | interior_line | ["HY","Z","HCDF","Z",1] |
| 16 | interior_line | ["HY","P","HCDF","P",1] |
| 17 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 18 | interior_line | ["CY","P","HCDF","P",-1] |
| 19 | interior_line | ["CZ","R","CDQ","R",-1] |
| 20 | interior_line | ["CP","R","CDQ","R",-1] |
| 21 | interior_line | ["DZ","R","CDQ","R",1] |
| 22 | interior_line | ["DP","R","CDQ","R",1] |
| 23 | capacity | ["OCD","Y","Z","DOZ",-1,"115189/200000","C009"] |
| 24 | capacity | ["OCD","Y","P","DOP",-1,"115189/200000","C009"] |
| 25 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 26 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 27 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | plu | ["OHDYZ","OYZ",1] |
| 29 | plu | ["OHDYP","OYP",1] |
| 30 | plu | ["OHDZR","OZR",-1] |
| 31 | plu | ["OHDPR","OPR",-1] |
| 32 | plu | ["DOHYZ","DYZ",-1] |
| 33 | plu | ["DOHYP","DYP",-1] |
| 34 | plu | ["FOHYZ","FOZ",1] |
| 35 | plu | ["FHCYP","FCP",-1] |
| 36 | plu | ["FHCPQ","FPQ",1] |
| 37 | plu | ["FHCPR","FPR",1] |
| 38 | plu | ["YOHZQ","YZQ",-1] |
| 39 | plu | ["YOHPQ","YPQ",-1] |
| 40 | plu | ["YOFZP","YZP",1] |
| 41 | plu | ["YHDZR","YZR",-1] |
| 42 | plu | ["YHDPR","YPR",-1] |
| 43 | plu | ["ZOHDP","ZDP",1] |
| 44 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 45 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |
| 46 | capacity | ["OCP","Y","Z","CPZ",-1,"115189/200000","C013"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","ZP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","P"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 279/1000 | ["cost","Y"] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OFZ | OFZ | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCF | HCF | lo | 279/1000 | ["cost","P"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 279/1000 | ["cost","P"] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 1 | ["fan","OHF","HFP","OFP","OHP"] | ["fan","OHF","P"] |
| 2 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 3 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 4 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 5 | ["fan","HCF","CFP","HCP","HFP"] | ["fan","HCF","P"] |
| 6 | ["fan","HDY","DYZ","HDZ","HYZ"] | ["fan","HDY","Z"] |
| 7 | ["fan","HDZ","DZP","HDP","HZP"] | ["fan","HDZ","P"] |
| 8 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 9 | ["plu","OCF","OHZ","OCZ","OHF","OFZ","OHC"] | ["plu","OHCFZ"] |
| 10 | ["plu","OCD","OZQ","OCQ","ODZ","OCZ","ODQ"] | ["plu","OCDZQ"] |
| 11 | ["plu","HDZ","OHP","HDP","OHZ","HZP","OHD"] | ["plu","HODZP"] |
| 12 | ["plu","HCP","HDZ","HCD","HZP","HCZ","HDP"] | ["plu","HCDZP"] |
| 13 | ["plu","HDZ","HYP","HDP","HYZ","HDY","HZP"] | ["plu","HDYZP"] |
| 14 | ["plu","CDF","HCZ","CDZ","HCF","CFZ","HCD"] | ["plu","CHDFZ"] |
| 15 | ["plu","HCF","OFZ","CFZ","OHF","HFZ","OCF"] | ["plu","FOHCZ"] |
| 16 | ["plu","CDY","OHY","HCY","ODY","HDY","OCY"] | ["plu","YOHCD"] |
| 17 | ["plu","CDZ","OHZ","HCZ","ODZ","HDZ","OCZ"] | ["plu","ZOHCD"] |
| 18 | ["plu","HCZ","OFZ","CFZ","OHZ","HFZ","OCZ"] | ["plu","ZOHCF"] |
| 19 | ["plu","DFZ","HCZ","CDZ","HFZ","CFZ","HDZ"] | ["plu","ZHCDF"] |
| 20 | ["plu","DZP","HCP","CDP","HZP","CZP","HDP"] | ["plu","PHCDZ"] |
| 21 | ["balance",[[1,"HCF","ODZ"],[1,"CFZ","OHD"],[1,"HFZ","OCD"],[-1,"HCZ","ODF"]]] | ["six","ODHCFZ"] |
| 22 | ["balance",[[-1,"HDZ","OFP"],[1,"DZP","OHF"],[-1,"HZP","ODF"],[-1,"HDP","OFZ"]]] | ["six","OFHDZP"] |
| 23 | ["balance",[[1,"HCF","OYZ"],[1,"CFZ","OHY"],[1,"HFZ","OCY"],[-1,"HCZ","OFY"]]] | ["six","OYHCFZ"] |
| 24 | ["balance",[[-1,"HCF","OZP"],[1,"CFZ","OHP"],[1,"HFZ","OCP"],[1,"HCZ","OFP"]]] | ["six","OPHCFZ"] |
| 25 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 26 | ["balance",[[-1,"OCF","HDZ"],[-1,"CFZ","OHD"],[1,"OFZ","HCD"],[-1,"OCZ","HDF"]]] | ["six","HDOCFZ"] |
| 27 | ["balance",[[-1,"OCF","HDP"],[1,"CFP","OHD"],[-1,"OFP","HCD"],[-1,"OCP","HDF"]]] | ["six","HDOCFP"] |
| 28 | ["balance",[[1,"OCF","HYZ"],[-1,"CFZ","OHY"],[-1,"OFZ","HCY"],[-1,"OCZ","HFY"]]] | ["six","HYOCFZ"] |
| 29 | ["balance",[[-1,"ODF","HZP"],[1,"DFZ","OHP"],[-1,"OFZ","HDP"],[-1,"ODZ","HFP"]]] | ["six","HPODFZ"] |
| 30 | ["balance",[[1,"OHF","CYZ"],[1,"HFZ","OCY"],[1,"OFZ","HCY"],[-1,"OHZ","CFY"]]] | ["six","CYOHFZ"] |
| 31 | ["balance",[[1,"OHD","CZP"],[1,"HDZ","OCP"],[1,"ODZ","HCP"],[-1,"OHZ","CDP"]]] | ["six","CPOHDZ"] |
| 32 | ["balance",[[-1,"HCF","DYZ"],[-1,"CFZ","HDY"],[-1,"HFZ","CDY"],[1,"HCZ","DFY"]]] | ["six","DYHCFZ"] |
| 33 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 34 | ["balance",[[-1,"HCD","FYZ"],[1,"CDY","HFZ"],[1,"HDY","CFZ"],[1,"HCY","DFZ"]]] | ["six","FZHCDY"] |
| 35 | ["balance",[[-1,"OHC","FZP"],[-1,"HCZ","OFP"],[-1,"OCZ","HFP"],[1,"OHZ","CFP"]]] | ["six","FPOHCZ"] |
| 36 | ["linear",{"OHD":1,"ODP":-1,"OHP":-1,"HDP":-1},"0"] | ["affine_quad","OHDP",-1] |
| 37 | ["linear",{"OHF":1,"OFP":-1,"OHP":-1,"HFP":-1},"0"] | ["affine_quad","OHFP",-1] |
| 38 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 39 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 40 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 41 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 42 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 43 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 44 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 45 | ["linear",{"HFY":1,"HYP":-1,"HFP":-1,"FYP":-1},"0"] | ["affine_quad","HFYP",-1] |
| 46 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 47 | ["linear",{"DFY":1,"DYZ":-1,"DFZ":-1,"FYZ":-1},"0"] | ["affine_quad","DFYZ",1] |
| 48 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 49 | ["linear",{"OHC":1,"OHF":-1},"0"] | ["c1_norm","c_ge_f"] |
| 50 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 51 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 52 | ["bary",["OHZ",-1],[null,null,["OHD",-1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OH"] |
| 53 | ["bary",["CDZ",1],[["OCD",1],["HCD",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CD"] |
| 54 | ["bary",["DFZ",1],[["ODF",1],["HDF",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DF"] |
| 55 | ["bary",["DYZ",-1],[["ODY",-1],["HDY",-1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DY"] |
| 56 | ["bary",["CZP",1],[["OCZ",1],["HCZ",1],["CFZ",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","CZ"] |
| 57 | ["bary",["OFY",-1],[null,["OCF",-1],["ODF",-1]],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","OF"] |
| 58 | ["bary",["HDY",-1],[["OHD",-1],["HCD",-1],["HDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","HD"] |
| 59 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","OH"] |
| 60 | ["bary",["OZQ",1],[["OHQ",1],["OCQ",-1],["ODQ",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","OQ"] |
| 61 | ["bary",["HCZ",1],[null,null,["HCD",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HC"] |
| 62 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 63 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |
| 64 | ["bary",["HCP",1],[null,null,["HCF",1]],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","HC"] |
| 65 | ["bary",["DFZ",1],[["HDF",1],null,["DFY",1]],"HDY",["DYZ","HYZ","HDZ"]] | ["bary","HDY","Z","DF"] |
| 66 | ["bary",["OHP",-1],[null,["OHD",-1],["OHZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","OH"] |
| 67 | ["bary",["HCP",1],[null,["HCD",1],["HCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HC"] |
| 68 | ["bary",["OCP",1],[["OHC",1],["OCF",1],["OCZ",1]],"HFZ",["FZP","HZP","HFP"]] | ["bary","HFZ","P","OC"] |
| 69 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OH"] |
| 70 | ["bary",["HCZ",1],[null,["HCD",1],["HCF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HC"] |
| 71 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HD"] |
| 72 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 73 | ["bary",["DFZ",1],[["CDF",1],null,null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s3 | 0 | sub | OHZ | hi | 157/250 | hi_OHD,lo_HDZ,lo_ODZ |
| s9 | 1 | sub | OHP | hi | 449/1000 | hi_OHF,lo_HFP,lo_OFP |
| s10 | 2 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s25 | 3 | sub | HCZ | hi | 602053/1000000 | hi_HCD,lo_CDZ,lo_HDZ |
| s27 | 4 | sub | CDP | hi | 788053/1000000 | hi_HCD,lo_HCP,lo_HDP |
| s33 | 6 | sub | HDZ | hi | 131779/200000 | hi_HDY,lo_DYZ,lo_HYZ |
| s53 | 9 | sumlo | OHZ | lo | 32689/200000 | lo_OCZ,lo_OHF,lo_OFZ,lo_OHC,hi_OCF |
| s64 | 11 | sumlo | OHP | lo | 1891/15625 | lo_HDP,s53,lo_HZP,lo_OHD,s33 |
| s67 | 12 | sumlo | HCP | lo | 111081/1000000 | lo_HCD,lo_HZP,lo_HCZ,lo_HDP,s33 |
| s68 | 13 | sumlo | HYP | lo | 111081/1000000 | lo_HDP,lo_HYZ,lo_HDY,lo_HZP,s33 |
| s96 | 15 | sumlo | OFZ | lo | 32689/200000 | lo_CFZ,lo_OHF,lo_HFZ,lo_OCF,hi_HCF |
| s99 | 16 | sumlo | OHY | lo | 37539/200000 | lo_HCY,lo_ODY,lo_HDY,lo_OCY,s10 |
| s132 | 22 | balance_lo | DZP | lo | 15863/125000 | lo_HDZ,lo_OFP,lo_HZP,lo_ODF,lo_HDP,s96,hi_OHF |
| s134 | 23 | balance_lo | OFY | lo | 28797/250000 | lo_HCF,lo_OYZ,lo_CFZ,s99,lo_HFZ,lo_OCY,s25 |
| s140 | 25 | balance_lo | CDY | lo | 96813/500000 | lo_HCD,lo_OYQ,lo_HDY,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s144 | 26 | balance_lo | OFZ | lo | 86407/500000 | lo_OCF,lo_HDZ,lo_CFZ,lo_OHD,lo_OCZ,lo_HDF,hi_HCD |
| s145 | 27 | balance_lo | CFP | lo | 29109/250000 | lo_OCF,lo_HDP,lo_OFP,lo_HCD,lo_OCP,lo_HDF,hi_OHD |
| s151 | 28 | balance_lo | HYZ | lo | 175383/1000000 | lo_CFZ,s99,s144,lo_HCY,lo_OCZ,lo_HFY,hi_OCF |
| s155 | 29 | balance_lo | DFZ | lo | 14289/100000 | lo_ODF,lo_HZP,s144,lo_HDP,lo_ODZ,lo_HFP,s9 |
| s162 | 30 | balance_lo | CFY | lo | 4329/40000 | lo_OHF,lo_CYZ,lo_HFZ,lo_OCY,s144,lo_HCY,s3 |
| s163 | 31 | balance_lo | OHZ | lo | 38757/200000 | lo_OHD,lo_CZP,lo_HDZ,lo_OCP,lo_ODZ,s67,s27 |
| s165 | 32 | balance_lo | HCZ | lo | 93333/500000 | lo_HCF,lo_DYZ,lo_CFZ,lo_HDY,lo_HFZ,s140,hi_DFY |
| s169 | 34 | balance_lo | FYZ | lo | 33841/250000 | s140,lo_HFZ,lo_HDY,lo_CFZ,lo_HCY,s155,hi_HCD |
| s182 | 37 | linear | OHF | lo | 19189/62500 | lo_HFP,lo_OFP,s64 |
| s185 | 38 | linear | OCD | lo | 189813/500000 | s140,lo_OCY,lo_ODY |
| s186 | 39 | linear | OCF | lo | 316413/1000000 | s162,lo_OCY,s134 |
| s203 | 43 | linear | HCF | lo | 320517/1000000 | s145,s67,lo_HFP |
| s211 | 44 | linear | HDZ | lo | 39113/125000 | s132,lo_HDP,lo_HZP |
| s214 | 45 | linear | HFY | lo | 297081/1000000 | lo_FYP,lo_HFP,s68 |
| s222 | 47 | linear | DFY | lo | 185627/500000 | s155,lo_DYZ,s169 |
| s229 | 48 | linear | OHC | lo | 189813/500000 | s185 |
| s230 | 50 | linear | HCD | hi | 907/1000 | lo_HDF |
| s232 | 51 | linear | CDF | hi | 679483/1000000 | s203 |
| s244 | 52 | bary_lo | OHZ | hi | 37131/62500 | hi_OHD,s211,lo_ODZ,s163,hi_OHD |
| s255 | 53 | bary_lo | CDZ | lo | 5729/31250 | hi_OHD,s211,lo_ODZ,s163,s185,lo_HCD |
| s262 | 55 | bary_hi | DYZ | lo | 46821/500000 | hi_OHD,s211,lo_ODZ,s163,lo_ODY,lo_HDY |
| s294 | 56 | bary_lo | CZP | lo | 66979/500000 | hi_OHF,lo_HFP,lo_OFP,s64,lo_OCZ,s165,lo_CFZ |
| s300 | 57 | bary_hi | OFY | lo | 59783/500000 | hi_OCD,s140,lo_ODY,lo_OCY,s186,lo_ODF |
| s318 | 58 | bary_lo | HDY | hi | 205603/250000 | hi_OCF,s162,s300,lo_OCY,hi_OHD,s230,lo_HDF |
| s363 | 59 | bary_hi | OHZ | lo | 54759/200000 | s230,s255,s211,s165,s229,lo_OHD |
| s369 | 61 | bary_hi | HCZ | hi | 25673/62500 | s230,s255,s211,s165,s230 |
| s370 | 62 | bary_lo | HDZ | hi | 268503/500000 | s230,s255,s211,s165,s230 |
| s417 | 65 | bary_lo | DFZ | lo | 949/6250 | s318,s262,s151,s211,lo_HDF,s222 |
| s421 | 66 | bary_hi | OHP | lo | 33521/200000 | s370,s132,lo_HZP,lo_HDP,lo_OHD,s363 |
| s429 | 67 | bary_lo | HCP | lo | 30503/200000 | s370,s132,lo_HZP,lo_HDP,lo_HCD,s165 |
| s462 | 69 | bary_hi | OHZ | lo | 94053/250000 | s232,s417,lo_CFZ,s255,s229,lo_OHD,s182 |
| s466 | 72 | bary_lo | HYZ | lo | 2879/12500 | s232,s417,lo_CFZ,s255,lo_HCY,lo_HDY,s214 |
| s513 | 0 | sum | OHD | lo | 195529/250000 | s211,lo_ODZ,s462 |
| s515 | 1 | sum | OHF | lo | 70721/200000 | lo_HFP,lo_OFP,s421 |
| s527 | 5 | sum | HCF | lo | 361951/1000000 | s145,s429,lo_HFP |
| s529 | 6 | sub | HDZ | hi | 9969/20000 | s318,s262,s466 |
| s531 | 7 | sub | DZP | hi | 6249/20000 | s529,lo_HDP,lo_HZP |
| s537 | 8 | sum | CDP | lo | 44419/100000 | s255,s294,s132 |
| s544 | 11 | sumlo | OHP | lo | 108059/500000 | lo_HDP,s462,lo_HZP,s513,s529 |
| s570 | 18 | sumlo | OFZ | lo | 274677/1000000 | lo_CFZ,s462,lo_HFZ,lo_OCZ,s369 |
| s573 | 19 | sumlo | DFZ | lo | 97681/500000 | s255,lo_HFZ,lo_CFZ,s211,s369 |
| s575 | 20 | sumlo | HCP | lo | 43021/250000 | s537,lo_HZP,s294,lo_HDP,s531 |
| s577 | 21 | balance_lo | HCZ | lo | 113481/500000 | s527,lo_ODZ,lo_CFZ,s513,lo_HFZ,s185,hi_ODF |
| s578 | 21 | balance_lo | ODF | lo | 51687/100000 | s527,lo_ODZ,lo_CFZ,s513,lo_HFZ,s185,s369 |
| s579 | 22 | balance_lo | DZP | lo | 80877/500000 | s211,lo_OFP,lo_HZP,s578,lo_HDP,s570,hi_OHF |
| s580 | 23 | balance_lo | OFY | lo | 187609/1000000 | s527,lo_OYZ,lo_CFZ,s99,lo_HFZ,lo_OCY,s369 |
| s589 | 30 | balance_lo | CFY | lo | 71013/500000 | s515,lo_CYZ,lo_HFZ,lo_OCY,s570,lo_HCY,s244 |
| s594 | 33 | balance_lo | OFZ | lo | 278739/1000000 | s229,s573,s185,lo_HFZ,s513,lo_CFZ,s230 |
| s597 | 35 | balance_lo | CFP | lo | 13863/100000 | s229,lo_FZP,s577,lo_OFP,lo_OCZ,lo_HFP,s244 |
| s608 | 37 | linear | OHF | lo | 201059/500000 | lo_HFP,lo_OFP,s544 |
| s610 | 39 | linear | OCF | lo | 84527/200000 | s589,lo_OCY,s580 |
| s614 | 40 | linear | ODF | lo | 567101/1000000 | s573,lo_ODZ,s594 |
| s626 | 42 | linear | HCD | lo | 361597/500000 | s255,s577,s211 |
| s631 | 43 | linear | HCF | lo | 201857/500000 | s597,s575,lo_HFP |
| s633 | 44 | linear | HDZ | lo | 173877/500000 | s579,lo_HDP,lo_HZP |
| s637 | 46 | linear | CDF | lo | 47169/100000 | s255,lo_CFZ,s573 |
| s645 | 49 | linear | OHC | lo | 201059/500000 | s608 |
| s646 | 50 | linear | HDF | hi | 138403/500000 | s626 |
| s647 | 51 | linear | HCF | hi | 52831/100000 | s637 |
| s648 | 51 | linear | CDF | hi | 298143/500000 | s631 |
| s656 | 52 | bary_lo | OHZ | hi | 279623/500000 | hi_OHD,s633,lo_ODZ,s462,hi_OHD |
| s665 | 53 | bary_lo | CDZ | lo | 199273/1000000 | hi_OHD,s633,lo_ODZ,s462,s185,s626 |
| s672 | 54 | bary_lo | DFZ | lo | 10293/50000 | hi_OHD,s633,lo_ODZ,s462,s614,lo_HDF |
| s690 | 56 | bary_lo | CZP | lo | 6993/50000 | hi_OHF,lo_HFP,lo_OFP,s544,lo_OCZ,s577,lo_CFZ |
| s750 | 60 | bary_hi | OZQ | hi | 130253/250000 | s230,s665,s633,s577,hi_OHQ,lo_OCQ,hi_ODQ |
| s752 | 61 | bary_hi | HCZ | hi | 359973/1000000 | s230,s665,s633,s577,s230 |
| s753 | 62 | bary_lo | HDZ | hi | 96153/200000 | s230,s665,s633,s577,s230 |
| s754 | 63 | bary_lo | HFZ | hi | 349303/1000000 | s230,s665,s633,s577,s647,s646 |
| s781 | 64 | bary_hi | HCP | hi | 7417/25000 | s647,s597,lo_HFP,s575,s647 |
| s808 | 67 | bary_lo | HCP | lo | 183799/1000000 | s753,s579,lo_HZP,lo_HDP,s626,s577 |
| s830 | 68 | bary_lo | OCP | lo | 350021/1000000 | s754,lo_FZP,lo_HZP,lo_HFP,s645,s610,lo_OCZ |
| s838 | 69 | bary_hi | OHZ | lo | 57673/125000 | s648,s672,lo_CFZ,s665,s645,s513,s608 |
| s840 | 70 | bary_lo | HCZ | lo | 24771/100000 | s648,s672,lo_CFZ,s665,s626,s631 |
| s841 | 71 | bary_lo | HDZ | hi | 8627/20000 | s648,s672,lo_CFZ,s665,s230,lo_HDF |
| s846 | 73 | bary_hi | DFZ | hi | 304013/1000000 | s648,s672,lo_CFZ,s665,s648 |
| s879 | 0 | sum | OHD | lo | 451069/500000 | s633,lo_ODZ,s838 |
| s890 | 3 | sum | HCD | lo | 794737/1000000 | s665,s840,s633 |
| s891 | 5 | sum | HCF | lo | 415429/1000000 | s597,s808,lo_HFP |
| s901 | 8 | sum | CDP | lo | 500887/1000000 | s665,s690,s579 |
| s908 | 10 | sumlo | OCD | lo | 194117/500000 | lo_OCQ,lo_ODZ,lo_OCZ,lo_ODQ,s750 |
| s914 | 11 | sumlo | OHP | lo | 146989/500000 | lo_HDP,s838,lo_HZP,s879,s841 |
| s924 | 14 | sumlo | HCZ | lo | 262783/1000000 | s665,s891,lo_CFZ,s890,s648 |
| s953 | 17 | sumlo | CDZ | lo | 217189/1000000 | s924,lo_ODZ,s633,lo_OCZ,s656 |
| s954 | 18 | sumlo | OFZ | lo | 335441/1000000 | lo_CFZ,s838,lo_HFZ,lo_OCZ,s752 |
| s965 | 19 | sumlo | HCZ | lo | 3057/10000 | s953,lo_HFZ,lo_CFZ,s633,s846 |
| s973 | 20 | sumlo | DZP | lo | 100427/500000 | s901,lo_HZP,s690,lo_HDP,s781 |
| s981 | 21 | balance_lo | ODF | lo | 6413/10000 | s891,lo_ODZ,lo_CFZ,s879,lo_HFZ,s908,s752 |
| s990 | 24 | balance_lo | OZP | lo | 36301/125000 | lo_CFZ,s914,lo_HFZ,s830,s965,lo_OFP,s647 |
| s1020 | 29 | balance_lo | OHP | lo | 163621/500000 | s981,lo_HZP,s954,lo_HDP,lo_ODZ,lo_HFP,s846 |
| s1076 | 36 | linear | ODP | hi | 289879/500000 | lo_HDP,hi_OHD,s1020 |
| s1126 | 41 | linear | ODZ | hi | 5531/62500 | s973,s1076,s990 |

## Conclusion

{"triangle":"ODZ","lower":"lo_ODZ","upper":"s1126"}
