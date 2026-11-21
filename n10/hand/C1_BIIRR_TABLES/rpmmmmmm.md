# Leaf rpmmmmmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":-1,"DYP":-1,"FYP":-1,"QYZ":-1}

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
| 26 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 27 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | capacity | ["HFY","P","Z","FYZ",1,"271/500","C024"] |
| 30 | plu | ["OHDYZ","OYZ",-1] |
| 31 | plu | ["OHDPR","OPR",-1] |
| 32 | plu | ["DOHYZ","DYZ",1] |
| 33 | plu | ["DOHZP","DZP",-1] |
| 34 | plu | ["FHCYP","FCP",-1] |
| 35 | plu | ["FHCPQ","FPQ",1] |
| 36 | plu | ["FHCPR","FPR",1] |
| 37 | plu | ["FHYZP","FZP",-1] |
| 38 | plu | ["YHDZP","YZP",1] |
| 39 | plu | ["YHDPQ","YPQ",-1] |
| 40 | plu | ["YHDPR","YPR",-1] |
| 41 | plu | ["ZOHCP","ZCP",-1] |
| 42 | capacity | ["HCF","P","Z","CFZ",-1,"127/200","C027"] |
| 43 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 44 | plu | ["YOZQR","YZR",-1] |
| 45 | plu | ["ZOCYR","ZOR",1] |
| 46 | plu | ["QOHYR","QHR",1] |
| 47 | plu | ["QOFYR","QFR",1] |
| 48 | plu | ["QOYZR","QZR",1] |
| 49 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 347/500 | ["cost","YP"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFQ | OFQ | lo | 74230731/144200000 | "C030" |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCF | HCF | lo | 279/1000 | ["cost","P"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 279/1000 | ["cost","P"] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 279/1000 | ["cost","P"] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","R"] |
| lo_CZQ | CZQ | lo | 279/1000 | ["cost","R"] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","Z"] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZQ | DZQ | lo | 93/1000 | ["cost",""] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HFY | HFY | hi | 271/500 | "C024" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 2 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 3 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 4 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 5 | ["fan","ODR","DZR","ODZ","OZR"] | ["fan","ODR","Z"] |
| 6 | ["fan","OPQ","OPR","OQR","PQR"] | ["fan","OPQ","R"] |
| 7 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 8 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 9 | ["fan","HCZ","CZP","HCP","HZP"] | ["fan","HCZ","P"] |
| 10 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 11 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 12 | ["fan","HFY","FYP","HFP","HYP"] | ["fan","HFY","P"] |
| 13 | ["fan","HYZ","HYP","HZP","YZP"] | ["fan","HYZ","P"] |
| 14 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 15 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 16 | ["plu","OFZ","OHD","ODF","OHZ","ODZ","OHF"] | ["plu","OHDFZ"] |
| 17 | ["plu","OHZ","OYQ","OHQ","OYZ","OHY","OZQ"] | ["plu","OHYZQ"] |
| 18 | ["plu","HCZ","OHP","HCP","OHZ","HZP","OHC"] | ["plu","HOCZP"] |
| 19 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 20 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 21 | ["plu","HCZ","HDP","HCD","HZP","HCP","HDZ"] | ["plu","HCDZP"] |
| 22 | ["plu","HDY","HFZ","HDF","HYZ","HDZ","HFY"] | ["plu","HDFYZ"] |
| 23 | ["plu","HDP","HYZ","HDY","HZP","HDZ","HYP"] | ["plu","HDYZP"] |
| 24 | ["plu","HFP","HYZ","HFY","HZP","HFZ","HYP"] | ["plu","HFYZP"] |
| 25 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 26 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 27 | ["plu","CDQ","CYR","CDR","CYQ","CDY","CQR"] | ["plu","CDYQR"] |
| 28 | ["plu","DFZ","OCD","CDF","ODZ","CDZ","ODF"] | ["plu","DOCFZ"] |
| 29 | ["plu","DZQ","OCD","CDQ","ODZ","CDZ","ODQ"] | ["plu","DOCZQ"] |
| 30 | ["plu","CYZ","HYQ","CYQ","HYZ","HCY","YZQ"] | ["plu","YHCZQ"] |
| 31 | ["plu","HFY","YZP","FYP","HYZ","FYZ","HYP"] | ["plu","YHFZP"] |
| 32 | ["plu","HDZ","OCZ","CDZ","OHZ","HCZ","ODZ"] | ["plu","ZOHCD"] |
| 33 | ["plu","DYZ","OCZ","CDZ","OYZ","CYZ","ODZ"] | ["plu","ZOCDY"] |
| 34 | ["plu","CZP","HDP","CDP","HZP","DZP","HCP"] | ["plu","PHCDZ"] |
| 35 | ["plu","DYP","HFP","DFP","HYP","FYP","HDP"] | ["plu","PHDFY"] |
| 36 | ["plu","HDP","YZP","DYP","HZP","DZP","HYP"] | ["plu","PHDYZ"] |
| 37 | ["plu","DQR","OHQ","HDQ","OQR","HQR","ODQ"] | ["plu","QOHDR"] |
| 38 | ["plu","DQR","OYQ","DYQ","OQR","ODQ","YQR"] | ["plu","QODYR"] |
| 39 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 40 | ["plu","HQR","OYR","HYR","OQR","OHR","YQR"] | ["plu","ROHYQ"] |
| 41 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 42 | ["balance",[[1,"HFY","ODZ"],[-1,"FYZ","OHD"],[1,"HYZ","ODF"],[1,"HFZ","ODY"]]] | ["six","ODHFYZ"] |
| 43 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 44 | ["balance",[[1,"HCF","OYQ"],[-1,"CFY","OHQ"],[1,"HFY","OCQ"],[1,"HCY","OFQ"]]] | ["six","OQHCFY"] |
| 45 | ["balance",[[-1,"HCY","OPQ"],[1,"CYP","OHQ"],[-1,"HYP","OCQ"],[-1,"HCP","OYQ"]]] | ["six","OQHCYP"] |
| 46 | ["balance",[[1,"OCZ","HYQ"],[-1,"CZQ","OHY"],[-1,"OZQ","HCY"],[-1,"OCQ","HYZ"]]] | ["six","HYOCZQ"] |
| 47 | ["balance",[[-1,"CDQ","HYR"],[1,"DQR","HCY"],[1,"CQR","HDY"],[1,"CDR","HYQ"]]] | ["six","HYCDQR"] |
| 48 | ["balance",[[-1,"CZQ","HYR"],[1,"ZQR","HCY"],[1,"CQR","HYZ"],[1,"CZR","HYQ"]]] | ["six","HYCZQR"] |
| 49 | ["balance",[[1,"OCD","HZP"],[1,"CDZ","OHP"],[1,"ODZ","HCP"],[-1,"OCZ","HDP"]]] | ["six","HPOCDZ"] |
| 50 | ["balance",[[1,"CDY","HZP"],[1,"DYZ","HCP"],[-1,"CYZ","HDP"],[1,"CDZ","HYP"]]] | ["six","HPCDYZ"] |
| 51 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 52 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 53 | ["balance",[[1,"OYQ","CZR"],[1,"YQR","OCZ"],[1,"OQR","CYZ"],[-1,"OYR","CZQ"]]] | ["six","CZOYQR"] |
| 54 | ["balance",[[-1,"HCZ","FYP"],[1,"CZP","HFY"],[-1,"HZP","CFY"],[-1,"HCP","FYZ"]]] | ["six","FYHCZP"] |
| 55 | ["balance",[[1,"HCD","FYP"],[1,"CDY","HFP"],[-1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 56 | ["balance",[[-1,"HCD","FYP"],[-1,"CDF","HYP"],[-1,"HDF","CYP"],[1,"HCF","DYP"]]] | ["six","YPHCDF"] |
| 57 | ["balance",[[-1,"HDF","YZP"],[-1,"DFZ","HYP"],[1,"HFZ","DYP"],[-1,"HDZ","FYP"]]] | ["six","YPHDFZ"] |
| 58 | ["balance",[[1,"OHC","YQR"],[1,"HCY","OQR"],[-1,"OCY","HQR"],[1,"OHY","CQR"]]] | ["six","QROHCY"] |
| 59 | ["balance",[[1,"OHY","ZQR"],[-1,"HYZ","OQR"],[1,"OYZ","HQR"],[-1,"OHZ","YQR"]]] | ["six","QROHYZ"] |
| 60 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDZ","OQR"],[-1,"ODZ","CQR"],[1,"OCZ","DQR"]]] | ["six","QROCDZ"] |
| 61 | ["balance",[[-1,"ODY","ZQR"],[-1,"DYZ","OQR"],[1,"OYZ","DQR"],[-1,"ODZ","YQR"]]] | ["six","QRODYZ"] |
| 62 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 63 | ["balance",[[1,"HCY","ZQR"],[-1,"CYZ","HQR"],[1,"HYZ","CQR"],[1,"HCZ","YQR"]]] | ["six","QRHCYZ"] |
| 64 | ["linear",{"OHC":1,"OCZ":-1,"OHZ":-1,"HCZ":1},"0"] | ["affine_quad","OHCZ",-1] |
| 65 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 66 | ["linear",{"OHD":1,"ODZ":1,"OHZ":-1,"HDZ":-1},"0"] | ["affine_quad","OHDZ",-1] |
| 67 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 68 | ["linear",{"OHY":-1,"OYR":-1,"OHR":1,"HYR":-1},"0"] | ["affine_quad","OHYR",1] |
| 69 | ["linear",{"OHQ":1,"OQR":-1,"OHR":-1,"HQR":-1},"0"] | ["affine_quad","OHQR",-1] |
| 70 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 71 | ["linear",{"ODZ":-1,"OZQ":-1,"ODQ":1,"DZQ":-1},"0"] | ["affine_quad","ODZQ",1] |
| 72 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 73 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 74 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 75 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 76 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 77 | ["linear",{"HCZ":1,"HZP":-1,"HCP":-1,"CZP":-1},"0"] | ["affine_quad","HCZP",1] |
| 78 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 79 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 80 | ["linear",{"HDQ":-1,"HQR":-1,"HDR":1,"DQR":1},"0"] | ["affine_quad","HDQR",1] |
| 81 | ["linear",{"HFY":1,"HYP":-1,"HFP":-1,"FYP":-1},"0"] | ["affine_quad","HFYP",-1] |
| 82 | ["linear",{"HYZ":1,"HZP":-1,"HYP":-1,"YZP":-1},"0"] | ["affine_quad","HYZP",1] |
| 83 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 84 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 85 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 86 | ["quad","OCF","OHF","93/125"] | ["quad","OCFH","YP"] |
| 87 | ["support","HYZ","HFY","FYZ","1023/1000"] | ["support_pent","YZDFH"] |
| 88 | ["support","HFY","HYZ","HFZ","1023/1000"] | ["support_pent","HFDZY"] |
| 89 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 90 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 91 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["CDQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DQ"] |
| 92 | ["bary",["OYQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OQ"] |
| 93 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CD"] |
| 94 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DQ"] |
| 95 | ["bary",["OHY",-1],[null,null,["OHQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OH"] |
| 96 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 97 | ["bary",["HDY",-1],[["OHD",-1],null,["HDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HD"] |
| 98 | ["bary",["HFY",-1],[["OHF",-1],null,["HFQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HF"] |
| 99 | ["bary",["HYQ",-1],[["OHQ",-1],null,null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HQ"] |
| 100 | ["bary",["HYR",-1],[["OHR",-1],null,["HQR",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HR"] |
| 101 | ["bary",["ODR",-1],[null,["OHD",1],["ODQ",-1]],"OHQ",["HQR","OQR","OHR"]] | ["bary","OHQ","R","OD"] |
| 102 | ["bary",["HCR",1],[["OHC",-1],null,["HCQ",1]],"OHQ",["HQR","OQR","OHR"]] | ["bary","OHQ","R","HC"] |
| 103 | ["bary",["OHY",-1],[null,null,["OHR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","OH"] |
| 104 | ["bary",["HCZ",1],[["OHC",-1],null,["HCD",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","HC"] |
| 105 | ["bary",["HFZ",-1],[["OHF",-1],["HCF",-1],["HDF",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","HF"] |
| 106 | ["bary",["CZQ",1],[["OCQ",1],null,["CDQ",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","CQ"] |
| 107 | ["bary",["ZQR",-1],[["OQR",1],["CQR",1],["DQR",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","QR"] |
| 108 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHR",-1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OH"] |
| 109 | ["bary",["HCZ",1],[["OHC",-1],["HCD",1],["HCR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","HC"] |
| 110 | ["bary",["HYZ",1],[["OHY",-1],["HDY",1],["HYR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","HY"] |
| 111 | ["bary",["OHR",-1],[null,["OHY",-1],["OHQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OH"] |
| 112 | ["bary",["OYR",-1],[null,null,["OYQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OY"] |
| 113 | ["bary",["HQR",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HQ"] |
| 114 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 115 | ["bary",["ODZ",-1],[["OHD",1],["OCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","OD"] |
| 116 | ["bary",["OHP",-1],[null,["OHC",-1],["OHZ",-1]],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","OH"] |
| 117 | ["bary",["HDP",-1],[null,["HCD",-1],["HDZ",-1]],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","HD"] |
| 118 | ["bary",["DFP",1],[["HDF",1],["CDF",1],["DFZ",1]],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","DF"] |
| 119 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OC"] |
| 120 | ["bary",["OPQ",1],[["OHQ",1],["ODQ",1],["OYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OQ"] |
| 121 | ["bary",["HFP",-1],[null,["HDF",-1],["HFY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HF"] |
| 122 | ["bary",["PQR",-1],[["HQR",-1],["DQR",-1],["YQR",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","QR"] |
| 123 | ["bary",["OZP",1],[["OHZ",1],["OFZ",1],["OYZ",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","OZ"] |
| 124 | ["bary",["HDP",-1],[null,["HDF",1],["HDY",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","HD"] |
| 125 | ["bary",["HFP",-1],[null,null,["HFY",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","HF"] |
| 126 | ["bary",["HZP",-1],[null,["HFZ",1],["HYZ",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","HZ"] |
| 127 | ["bary",["CDP",1],[["HCD",1],["CDF",1],["CDY",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","CD"] |
| 128 | ["bary",["CZP",1],[["HCZ",1],["CFZ",1],["CYZ",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","CZ"] |
| 129 | ["bary",["DZP",-1],[["HDZ",-1],["DFZ",-1],["DYZ",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","DZ"] |
| 130 | ["bary",["YZP",1],[["HYZ",1],["FYZ",1],null],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","YZ"] |
| 131 | ["bary",["OHP",-1],[null,["OHY",-1],["OHZ",-1]],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","OH"] |
| 132 | ["bary",["HDP",-1],[null,["HDY",-1],["HDZ",-1]],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","HD"] |
| 133 | ["bary",["HFP",-1],[null,["HFY",-1],["HFZ",-1]],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","HF"] |
| 134 | ["bary",["DYP",-1],[["HDY",-1],null,["DYZ",1]],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","DY"] |
| 135 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 136 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 137 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 138 | ["bary",["OHR",-1],[["OHC",-1],["OHZ",-1],["OHQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","OH"] |
| 139 | ["bary",["OPR",-1],[["OCP",-1],["OZP",-1],["OPQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","OP"] |
| 140 | ["bary",["HCR",1],[null,["HCZ",1],["HCQ",1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","HC"] |
| 141 | ["bary",["HYR",1],[["HCY",1],["HYZ",1],["HYQ",1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","HY"] |
| 142 | ["bary",["CYR",-1],[null,["CYZ",-1],["CYQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","CY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 407/500 | hi_OHD,lo_ODY,lo_OHY |
| s18 | 2 | sub | OCZ | hi | 77989/200000 | hi_OCD,lo_CDZ,lo_ODZ |
| s22 | 3 | sub | OZQ | hi | 35909/62500 | hi_ODQ,lo_DZQ,lo_ODZ |
| s31 | 7 | sub | HCZ | hi | 788053/1000000 | hi_HCD,lo_CDZ,lo_HDZ |
| s63 | 16 | sumlo | OFZ | lo | 302943/1000000 | lo_ODF,lo_OHZ,lo_ODZ,lo_OHF,hi_OHD |
| s70 | 18 | sumlo | OHP | lo | 57413/500000 | lo_HCP,lo_OHZ,lo_HZP,lo_OHC,s31 |
| s72 | 19 | sumlo | HDY | lo | 318543/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,hi_HCF |
| s77 | 25 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s78 | 26 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s77,lo_CQR,lo_HCD,hi_CDQ |
| s87 | 28 | sumlo | DFZ | lo | 127411/1000000 | lo_CDF,lo_ODZ,lo_CDZ,lo_ODF,hi_OCD |
| s88 | 29 | sumlo | DZQ | lo | 157113/1000000 | lo_CDQ,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s102 | 32 | sumlo | HDZ | lo | 46411/200000 | lo_CDZ,lo_OHZ,lo_HCZ,lo_ODZ,s18 |
| s107 | 37 | diffhi | HQR | hi | 39233/125000 | hi_DQR,hi_OHQ,lo_HDQ,lo_OQR,lo_ODQ |
| s117 | 38 | sumlo | OYQ | lo | 77341/200000 | lo_DYQ,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s120 | 39 | sumlo | DQR | lo | 137767/1000000 | s88,lo_OQR,lo_ODQ,lo_ZQR,s22 |
| s121 | 39 | sumlo | OZQ | lo | 169131/500000 | s88,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s130 | 41 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s134 | 42 | balance_lo | FYZ | lo | 152907/1000000 | lo_HFY,lo_ODZ,lo_HYZ,lo_ODF,lo_HFZ,lo_ODY,hi_OHD |
| s142 | 43 | balance_lo | CDY | lo | 362539/1000000 | lo_HCD,s117,s72,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s143 | 44 | balance_lo | CFY | lo | 181711/1000000 | lo_HCF,s117,lo_HFY,lo_OCQ,lo_HCY,lo_OFQ,hi_OHQ |
| s157 | 46 | balance_lo | HYQ | lo | 106877/500000 | lo_CZQ,lo_OHY,s121,lo_HCY,lo_OCQ,lo_HYZ,s18 |
| s159 | 47 | balance_lo | HYR | lo | 148371/1000000 | s120,lo_HCY,lo_CQR,s72,lo_CDR,s157,hi_CDQ |
| s160 | 49 | balance_lo | HDP | lo | 23221/200000 | lo_OCD,lo_HZP,lo_CDZ,s70,lo_ODZ,lo_HCP,s18 |
| s162 | 51 | balance_lo | OYR | lo | 113841/500000 | s117,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s142,hi_CDQ |
| s163 | 52 | balance_lo | OZR | lo | 19659/125000 | s121,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,lo_CDZ,hi_CDQ |
| s173 | 54 | balance_lo | CZP | lo | 13161/125000 | lo_HCZ,lo_FYP,lo_HZP,s143,lo_HCP,s134,hi_HFY |
| s175 | 55 | balance_lo | CFP | lo | 26267/200000 | lo_HCD,lo_FYP,s142,lo_HFP,lo_HCY,lo_DFP,s1 |
| s176 | 56 | balance_lo | DYP | lo | 84359/500000 | lo_HCD,lo_FYP,lo_CDF,lo_HYP,lo_HDF,lo_CYP,hi_HCF |
| s180 | 58 | balance_lo | OCY | lo | 68891/500000 | lo_OHC,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s107 |
| s181 | 60 | balance_lo | OCZ | lo | 184807/1000000 | lo_OCD,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s182 | 61 | balance_lo | OYZ | lo | 27721/250000 | lo_ODY,lo_ZQR,lo_DYZ,lo_OQR,lo_ODZ,lo_YQR,hi_DQR |
| s183 | 62 | balance_lo | HQR | lo | 142699/1000000 | lo_HCD,lo_YQR,s72,lo_CQR,lo_HCY,s120,hi_CDY |
| s185 | 63 | balance_lo | CYZ | lo | 38579/200000 | lo_HCY,lo_ZQR,lo_HYZ,lo_CQR,lo_HCZ,lo_YQR,s107 |
| s193 | 67 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s198 | 68 | linear | OHR | lo | 469053/1000000 | s159,lo_OHY,s162 |
| s202 | 69 | linear | OHQ | lo | 44047/62500 | s183,s198,lo_OQR |
| s203 | 69 | linear | OHR | hi | 764301/1000000 | s183,hi_OHQ,lo_OQR |
| s204 | 70 | linear | OCD | lo | 370807/1000000 | lo_CDZ,s181,lo_ODZ |
| s214 | 72 | linear | OYQ | lo | 206841/500000 | lo_OQR,s162,lo_YQR |
| s216 | 73 | linear | OZQ | lo | 42909/125000 | lo_OQR,s163,lo_ZQR |
| s222 | 76 | linear | HCF | lo | 63467/200000 | s175,lo_HCP,lo_HFP |
| s224 | 77 | linear | HCZ | lo | 36411/125000 | s173,lo_HCP,lo_HZP |
| s227 | 78 | linear | HCQ | lo | 28389/62500 | lo_CQR,s78,s183 |
| s229 | 79 | linear | HDY | lo | 377823/1000000 | s176,s160,lo_HYP |
| s235 | 83 | linear | CDY | lo | 75779/200000 | lo_CDZ,s185,lo_DYZ |
| s238 | 84 | linear | CDQ | lo | 323767/1000000 | lo_CDR,lo_CQR,s120 |
| s243 | 85 | linear | CYQ | lo | 166923/500000 | lo_CQR,s130,lo_YQR |
| s251 | 86 | quad | OHF | lo | 109/1000 | hi_OCF |
| s257 | 89 | linear | OHC | lo | 370807/1000000 | s204 |
| s258 | 90 | linear | HCD | hi | 907/1000 | lo_HDF |
| s270 | 91 | bary_hi | DYQ | lo | 391927/1000000 | hi_OHC,lo_HCY,s180,lo_OHY,lo_ODQ,s193,s238 |
| s277 | 92 | bary_hi | OYQ | hi | 149977/250000 | hi_OHD,s229,lo_ODY,lo_OHY,hi_OHQ,hi_ODQ |
| s279 | 93 | bary_hi | CDY | hi | 697569/1000000 | hi_OHD,s229,lo_ODY,lo_OHY,hi_OCD,s258 |
| s317 | 95 | bary_lo | OHY | hi | 93141/250000 | hi_OHQ,s157,s214,lo_OHY,hi_OHQ |
| s318 | 96 | bary_lo | OCY | lo | 32409/200000 | hi_OHQ,s157,s214,lo_OHY,s257,lo_OCQ |
| s320 | 97 | bary_lo | HDY | hi | 56539/100000 | hi_OHQ,s157,s214,lo_OHY,hi_OHD,hi_HDQ |
| s321 | 98 | bary_lo | HFY | hi | 94819/250000 | hi_OHQ,s157,s214,lo_OHY,hi_OHF,hi_HFQ |
| s323 | 100 | bary_lo | HYR | hi | 363773/1000000 | hi_OHQ,s157,s214,lo_OHY,s203,s183 |
| s329 | 101 | bary_lo | ODR | hi | 516743/1000000 | hi_OHQ,s183,lo_OQR,s198,lo_OHD,hi_ODQ |
| s350 | 104 | bary_hi | HCZ | hi | 138553/250000 | hi_OCD,lo_CDZ,lo_ODZ,s181,s257,s258 |
| s352 | 105 | bary_hi | HFZ | lo | 131807/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s181,s251,s222,lo_HDF |
| s357 | 106 | bary_hi | CZQ | hi | 314397/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s181,hi_OCQ,hi_CDQ |
| s363 | 107 | bary_lo | ZQR | hi | 128397/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s181,lo_OQR,lo_CQR,hi_DQR |
| s380 | 108 | bary_lo | OHZ | hi | 97201/125000 | s329,lo_DZR,s163,lo_ODZ,hi_OHD,s203 |
| s384 | 110 | bary_hi | HYZ | hi | 102653/250000 | s329,lo_DZR,s163,lo_ODZ,lo_OHY,s320,s323 |
| s388 | 111 | bary_lo | OHR | hi | 747709/1000000 | s277,lo_YQR,lo_OQR,s162,s317,hi_OHQ |
| s405 | 114 | bary_hi | DQR | lo | 21043/125000 | s277,lo_YQR,lo_OQR,s162,lo_ODQ,s270 |
| s448 | 116 | bary_hi | OHP | lo | 4467/25000 | s350,s173,lo_HZP,lo_HCP,s257,lo_OHZ |
| s455 | 117 | bary_hi | HDP | lo | 155397/1000000 | s350,s173,lo_HZP,lo_HCP,lo_HCD,s102 |
| s477 | 119 | bary_lo | OCP | lo | 6467/25000 | s320,s176,lo_HYP,s455,s257,s204,s318 |
| s480 | 120 | bary_lo | OPQ | lo | 546649/1000000 | s320,s176,lo_HYP,s455,s202,lo_ODQ,s214 |
| s496 | 122 | bary_hi | PQR | lo | 120223/1000000 | s320,s176,lo_HYP,s455,s183,s405,lo_YQR |
| s499 | 123 | bary_lo | OZP | lo | 1881/6250 | s321,lo_FYP,lo_HYP,lo_HFP,lo_OHZ,s63,s182 |
| s501 | 124 | bary_lo | HDP | hi | 53063/200000 | s321,lo_FYP,lo_HYP,lo_HFP,lo_HDF,s320 |
| s505 | 127 | bary_lo | CDP | lo | 449079/1000000 | s321,lo_FYP,lo_HYP,lo_HFP,lo_HCD,lo_CDF,s235 |
| s506 | 128 | bary_lo | CZP | lo | 33223/200000 | s321,lo_FYP,lo_HYP,lo_HFP,s224,lo_CFZ,s185 |
| s509 | 129 | bary_hi | DZP | lo | 67767/500000 | s321,lo_FYP,lo_HYP,lo_HFP,s102,s87,lo_DYZ |
| s514 | 130 | bary_lo | YZP | lo | 21181/200000 | s321,lo_FYP,lo_HYP,lo_HFP,lo_HYZ,s134 |
| s516 | 133 | bary_hi | HFP | lo | 23261/250000 | s384,s514,lo_HZP,lo_HYP,lo_HFY,s352 |
| s534 | 135 | bary_lo | HCR | lo | 254249/1000000 | hi_CDQ,s405,lo_CQR,lo_CDR,lo_HCD,s227 |
| s535 | 136 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,s405,lo_CQR,lo_CDR,s258,hi_HDQ |
| s542 | 137 | bary_hi | CYR | lo | 157821/1000000 | hi_CDQ,s405,lo_CQR,lo_CDR,s235,s243 |
| s554 | 138 | bary_hi | OHR | lo | 565191/1000000 | s357,lo_ZQR,lo_CQR,lo_CZR,s257,lo_OHZ,s202 |
| s557 | 139 | bary_hi | OPR | lo | 356369/1000000 | s357,lo_ZQR,lo_CQR,lo_CZR,s477,s499,s480 |
| s560 | 141 | bary_lo | HYR | lo | 183739/1000000 | s357,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,lo_HYZ,s157 |
| s576 | 1 | sub | OHY | hi | 10509/31250 | s388,s560,s162 |
| s577 | 4 | sub | ODR | hi | 312/625 | hi_ODQ,s405,lo_OQR |
| s578 | 5 | sub | ODZ | hi | 7779/31250 | s577,lo_DZR,s163 |
| s581 | 6 | sum | OPQ | lo | 71199/125000 | s557,lo_OQR,s496 |
| s583 | 8 | sum | HCD | lo | 174369/250000 | s505,lo_HCP,s455 |
| s585 | 9 | sum | HCZ | lo | 70423/200000 | s506,lo_HCP,lo_HZP |
| s586 | 10 | sum | HCQ | lo | 122487/250000 | lo_CQR,s534,s183 |
| s587 | 11 | sum | HDY | lo | 83423/200000 | s176,s455,lo_HYP |
| s588 | 12 | sum | HFY | lo | 69761/250000 | lo_FYP,s516,lo_HYP |
| s590 | 13 | sum | HYZ | lo | 58381/200000 | lo_HYP,lo_HZP,s514 |
| s591 | 14 | sum | CDQ | lo | 44293/125000 | lo_CDR,lo_CQR,s405 |
| s593 | 15 | sum | CYQ | lo | 343821/1000000 | lo_CQR,s542,lo_YQR |
| s604 | 20 | sumlo | HYQ | lo | 265103/1000000 | s586,s587,lo_HCY,s193,s258 |
| s605 | 21 | sumlo | HDP | lo | 7799/50000 | s583,lo_HZP,lo_HCP,s102,s350 |
| s606 | 22 | sumlo | HFZ | lo | 162543/1000000 | lo_HDF,s590,s102,s588,s320 |
| s609 | 24 | sumlo | HFP | lo | 20003/200000 | s588,lo_HZP,s606,lo_HYP,s384 |
| s611 | 26 | sumlo | HCR | lo | 262929/1000000 | lo_CDR,s586,lo_CQR,s583,hi_CDQ |
| s614 | 27 | sumlo | CYR | lo | 160029/1000000 | lo_CDR,s593,s235,lo_CQR,hi_CDQ |
| s616 | 29 | sumlo | DZQ | lo | 529/3125 | s591,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s626 | 31 | sumlo | YZP | lo | 109069/1000000 | lo_FYP,s590,s134,lo_HYP,s321 |
| s627 | 32 | sumlo | HDZ | lo | 249493/1000000 | lo_CDZ,lo_OHZ,s585,lo_ODZ,s18 |
| s629 | 34 | sumlo | CZP | lo | 102461/500000 | s505,lo_HZP,s509,lo_HCP,s501 |
| s635 | 37 | diffhi | HQR | hi | 142591/500000 | hi_DQR,hi_OHQ,s193,lo_OQR,lo_ODQ |
| s638 | 38 | sumlo | OYQ | lo | 215793/500000 | s270,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s650 | 43 | balance_lo | CDY | lo | 202177/500000 | s583,s638,s587,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s651 | 45 | balance_lo | CYP | lo | 50879/500000 | lo_HCY,s581,lo_HYP,lo_OCQ,lo_HCP,s638,hi_OHQ |
| s659 | 48 | balance_lo | HYR | lo | 7691/40000 | lo_ZQR,lo_HCY,lo_CQR,s590,lo_CZR,s604,s357 |
| s660 | 49 | balance_lo | OCZ | lo | 28151/125000 | s204,lo_HZP,lo_CDZ,s448,lo_ODZ,lo_HCP,s501 |
| s661 | 51 | balance_lo | OYR | lo | 33401/125000 | s638,lo_CDR,lo_YQR,s204,lo_OQR,s650,hi_CDQ |
| s662 | 52 | balance_lo | OZR | lo | 17871/100000 | s216,lo_CDR,lo_ZQR,s204,lo_OQR,lo_CDZ,hi_CDQ |
| s673 | 56 | balance_lo | DYP | lo | 170509/1000000 | s583,lo_FYP,lo_CDF,lo_HYP,lo_HDF,s651,hi_HCF |
| s679 | 59 | balance_lo | OYZ | lo | 21263/125000 | s590,lo_OQR,lo_OHZ,lo_YQR,s576,s363,s635 |
| s682 | 62 | balance_lo | HQR | lo | 171041/1000000 | s583,lo_YQR,s587,lo_CQR,lo_HCY,s405,s279 |
| s684 | 63 | balance_lo | CYZ | lo | 240347/1000000 | lo_HCY,lo_ZQR,s590,lo_CQR,s585,lo_YQR,s635 |
| s686 | 66 | linear | OHD | lo | 138913/200000 | s627,s578,lo_OHZ |
| s687 | 67 | linear | HDQ | lo | 77713/200000 | lo_ODQ,s686,hi_OHQ |
| s693 | 69 | linear | OHQ | lo | 51827/62500 | s682,s554,lo_OQR |
| s694 | 69 | linear | OHR | hi | 735959/1000000 | s682,hi_OHQ,lo_OQR |
| s695 | 70 | linear | OCD | lo | 51401/125000 | lo_CDZ,s660,lo_ODZ |
| s698 | 71 | linear | OZQ | hi | 62283/125000 | s616,hi_ODQ,lo_ODZ |
| s703 | 72 | linear | OYQ | lo | 56651/125000 | lo_OQR,s661,lo_YQR |
| s704 | 73 | linear | OZQ | lo | 36471/100000 | lo_OQR,s662,lo_ZQR |
| s707 | 75 | linear | HCD | lo | 698059/1000000 | s505,lo_HCP,s605 |
| s709 | 77 | linear | HCZ | lo | 195461/500000 | s629,lo_HCP,lo_HZP |
| s711 | 78 | linear | HCQ | lo | 52697/100000 | lo_CQR,s611,s682 |
| s713 | 79 | linear | HDY | lo | 419489/1000000 | s673,s605,lo_HYP |
| s714 | 80 | linear | HDQ | hi | 369943/500000 | hi_DQR,s535,s682 |
| s715 | 81 | linear | HFY | lo | 57203/200000 | lo_FYP,s609,lo_HYP |
| s718 | 82 | linear | HYZ | lo | 295069/1000000 | lo_HYP,lo_HZP,s626 |
| s719 | 83 | linear | CDY | lo | 426347/1000000 | lo_CDZ,s684,lo_DYZ |
| s721 | 85 | linear | CYQ | lo | 346029/1000000 | lo_CQR,s614,lo_YQR |
| s728 | 87 | support_z | FYZ | lo | 23209/125000 | s718,s321 |
| s729 | 88 | support_z | HFZ | lo | 85607/500000 | s715,s384 |
| s730 | 89 | linear | OHC | lo | 51401/125000 | s695 |
| s736 | 92 | bary_hi | OYQ | hi | 279121/500000 | hi_OHD,s713,lo_ODY,lo_OHY,hi_OHQ,hi_ODQ |
| s749 | 94 | bary_hi | DYQ | lo | 208179/500000 | s380,s718,s679,lo_OHY,lo_ODQ,s687,s616 |
| s761 | 97 | bary_lo | HDY | hi | 261301/500000 | hi_OHQ,s604,s703,lo_OHY,hi_OHD,s714 |
| s762 | 98 | bary_lo | HFY | hi | 176239/500000 | hi_OHQ,s604,s703,lo_OHY,hi_OHF,hi_HFQ |
| s763 | 99 | bary_lo | HYQ | hi | 14181/31250 | hi_OHQ,s604,s703,lo_OHY,hi_OHQ |
| s764 | 100 | bary_lo | HYR | hi | 159033/500000 | hi_OHQ,s604,s703,lo_OHY,s694,s682 |
| s770 | 101 | bary_lo | ODR | hi | 99027/200000 | hi_OHQ,s682,lo_OQR,s554,s686,hi_ODQ |
| s774 | 103 | bary_lo | OHY | hi | 69119/250000 | s694,s659,s661,lo_OHY,s694 |
| s780 | 104 | bary_hi | HCZ | hi | 68461/125000 | hi_OCD,lo_CDZ,lo_ODZ,s660,s730,s258 |
| s797 | 110 | bary_hi | HYZ | hi | 184279/500000 | s770,lo_DZR,s662,lo_ODZ,lo_OHY,s761,s764 |
| s798 | 111 | bary_lo | OHR | hi | 712871/1000000 | s736,lo_YQR,lo_OQR,s661,s774,hi_OHQ |
| s800 | 112 | bary_lo | OYR | hi | 186121/500000 | s736,lo_YQR,lo_OQR,s661,s736 |
| s804 | 113 | bary_hi | HQR | lo | 18231/100000 | s736,lo_YQR,lo_OQR,s661,s693,s604 |
| s811 | 114 | bary_hi | DQR | lo | 184979/1000000 | s736,lo_YQR,lo_OQR,s661,lo_ODQ,s749 |
| s815 | 115 | bary_lo | ODZ | hi | 197437/1000000 | s258,lo_CDZ,s627,s709,s686,hi_OCD |
| s828 | 117 | bary_hi | HDP | lo | 80449/500000 | s780,s629,lo_HZP,lo_HCP,s707,s627 |
| s835 | 118 | bary_lo | DFP | lo | 14503/100000 | s780,s629,lo_HZP,lo_HCP,lo_HDF,lo_CDF,s87 |
| s848 | 121 | bary_hi | HFP | lo | 104607/1000000 | s761,s673,lo_HYP,s828,lo_HDF,s715 |
| s858 | 124 | bary_lo | HDP | hi | 55573/250000 | s762,lo_FYP,lo_HYP,s848,lo_HDF,s761 |
| s859 | 125 | bary_lo | HFP | hi | 83239/500000 | s762,lo_FYP,lo_HYP,s848,s762 |
| s862 | 127 | bary_lo | CDP | lo | 235541/500000 | s762,lo_FYP,lo_HYP,s848,s707,lo_CDF,s719 |
| s867 | 129 | bary_hi | DZP | lo | 143369/1000000 | s762,lo_FYP,lo_HYP,s848,s627,s87,lo_DYZ |
| s871 | 130 | bary_lo | YZP | lo | 126841/1000000 | s762,lo_FYP,lo_HYP,s848,s718,s728 |
| s872 | 131 | bary_hi | OHP | lo | 198587/1000000 | s797,s871,lo_HZP,lo_HYP,lo_OHY,lo_OHZ |
| s874 | 132 | bary_hi | HDP | lo | 168807/1000000 | s797,s871,lo_HZP,lo_HYP,s713,s627 |
| s875 | 133 | bary_hi | HFP | lo | 57687/500000 | s797,s871,lo_HZP,lo_HYP,s715,s729 |
| s878 | 134 | bary_lo | DYP | hi | 117697/500000 | s797,s871,lo_HZP,lo_HYP,s761,lo_DYZ |
| s890 | 136 | bary_lo | HDR | hi | 669161/1000000 | hi_CDQ,s811,lo_CQR,lo_CDR,s258,s714 |
| s906 | 138 | bary_hi | OHR | lo | 38657/62500 | s357,lo_ZQR,lo_CQR,lo_CZR,s730,lo_OHZ,s693 |
| s911 | 140 | bary_lo | HCR | lo | 67879/250000 | s357,lo_ZQR,lo_CQR,lo_CZR,s709,s711 |
| s912 | 141 | bary_lo | HYR | lo | 203681/1000000 | s357,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,s718,s604 |
| s913 | 142 | bary_hi | CYR | lo | 43363/250000 | s357,lo_ZQR,lo_CQR,lo_CZR,s684,s721 |
| s922 | 1 | sub | OHY | hi | 120991/500000 | s798,s912,s661 |
| s928 | 7 | sum | HCD | lo | 146683/200000 | lo_CDZ,s709,s627 |
| s931 | 10 | sum | HCQ | lo | 273413/500000 | lo_CQR,s911,s804 |
| s932 | 11 | sum | HDY | lo | 108079/250000 | s673,s874,lo_HYP |
| s933 | 12 | sum | HFY | lo | 150687/500000 | lo_FYP,s875,lo_HYP |
| s935 | 13 | sum | HYZ | lo | 312841/1000000 | lo_HYP,lo_HZP,s871 |
| s938 | 15 | sum | CYQ | lo | 89863/250000 | lo_CQR,s913,lo_YQR |
| s941 | 17 | diff | OYZ | lo | 38791/200000 | lo_OHZ,s703,s922,s698,hi_OHQ |
| s948 | 20 | sumlo | HYQ | lo | 300483/1000000 | s931,s932,lo_HCY,s687,s258 |
| s949 | 21 | sumlo | HCZ | lo | 411217/1000000 | s928,lo_HZP,lo_HCP,s627,s858 |
| s950 | 22 | sumlo | HFZ | lo | 199549/1000000 | lo_HDF,s935,s627,s933,s761 |
| s953 | 23 | sumlo | HDP | lo | 43011/250000 | s932,lo_HZP,s627,lo_HYP,s797 |
| s954 | 24 | sumlo | HFP | lo | 79/625 | s933,lo_HZP,s950,lo_HYP,s797 |
| s968 | 30 | sumlo | CYZ | lo | 266863/1000000 | s938,s935,lo_HCY,lo_YZQ,s763 |
| s979 | 32 | sumlo | HDZ | lo | 65897/250000 | lo_CDZ,lo_OHZ,s949,lo_ODZ,s18 |
| s986 | 33 | sumlo | DYZ | lo | 54951/500000 | lo_CDZ,s941,s968,lo_ODZ,s18 |
| s989 | 34 | sumlo | CZP | lo | 257067/1000000 | s862,lo_HZP,s867,lo_HCP,s858 |
| s990 | 35 | sumlo | DYP | lo | 177127/1000000 | s835,lo_HYP,lo_FYP,s953,s859 |
| s993 | 36 | sumlo | YZP | lo | 26817/200000 | s990,lo_HZP,s867,lo_HYP,s858 |
| s1007 | 40 | sumlo | HQR | lo | 102707/500000 | s912,lo_OQR,s906,lo_YQR,s800 |
| s1014 | 43 | balance_lo | CDY | lo | 27321/62500 | s928,s703,s932,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s1020 | 49 | balance_lo | OCZ | lo | 294027/1000000 | s695,lo_HZP,lo_CDZ,s872,lo_ODZ,lo_HCP,s858 |
| s1021 | 50 | balance_lo | CYZ | lo | 267771/1000000 | s1014,lo_HZP,s986,lo_HCP,lo_CDZ,lo_HYP,s858 |
| s1024 | 52 | balance_lo | OZR | lo | 192403/1000000 | s704,lo_CDR,lo_ZQR,s695,lo_OQR,lo_CDZ,hi_CDQ |
| s1026 | 53 | balance_lo | OYR | lo | 300243/1000000 | s703,lo_CZR,lo_YQR,s1020,lo_OQR,s1021,s357 |
| s1039 | 57 | balance_lo | HFZ | lo | 207451/1000000 | lo_HDF,s993,s87,lo_HYP,s979,lo_FYP,s878 |
| s1049 | 64 | linear | OHC | lo | 440339/1000000 | s780,s1020,lo_OHZ |
| s1050 | 65 | linear | HCQ | hi | 745661/1000000 | hi_OCQ,s1049,hi_OHQ |
| s1052 | 66 | linear | OHD | lo | 760151/1000000 | s979,s815,lo_OHZ |
| s1058 | 69 | linear | OHR | hi | 350793/500000 | s1007,hi_OHQ,lo_OQR |
| s1060 | 70 | linear | OCD | lo | 480027/1000000 | lo_CDZ,s1020,lo_ODZ |
| s1070 | 72 | linear | OYQ | lo | 486243/1000000 | lo_OQR,s1026,lo_YQR |
| s1071 | 74 | linear | HCD | lo | 153561/200000 | lo_CDZ,s949,s979 |
| s1082 | 80 | linear | HDQ | hi | 697747/1000000 | hi_DQR,s890,s1007 |
| s1083 | 81 | linear | HFY | lo | 781/2500 | lo_FYP,s954,lo_HYP |
| s1103 | 89 | linear | OHC | lo | 480027/1000000 | s1060 |
| s1138 | 97 | bary_lo | HDY | hi | 30353/62500 | hi_OHQ,s948,s1070,lo_OHY,hi_OHD,s1082 |
| s1139 | 98 | bary_lo | HFY | hi | 165111/500000 | hi_OHQ,s948,s1070,lo_OHY,hi_OHF,hi_HFQ |
| s1141 | 100 | bary_lo | HYR | hi | 138047/500000 | hi_OHQ,s948,s1070,lo_OHY,s1058,s1007 |
| s1145 | 101 | bary_lo | ODR | hi | 462893/1000000 | hi_OHQ,s1007,lo_OQR,s906,s1052,hi_ODQ |
| s1150 | 102 | bary_hi | HCR | hi | 212271/500000 | hi_OHQ,s1007,lo_OQR,s906,s1103,s1050 |
| s1182 | 109 | bary_hi | HCZ | hi | 265701/500000 | s1145,lo_DZR,s1024,lo_ODZ,s1103,s258,s1150 |
| s1183 | 110 | bary_hi | HYZ | hi | 327291/1000000 | s1145,lo_DZR,s1024,lo_ODZ,lo_OHY,s1138,s1141 |
| s1228 | 117 | bary_hi | HDP | lo | 90251/500000 | s1182,s989,lo_HZP,lo_HCP,s1071,s979 |
| s1251 | 121 | bary_hi | HFP | lo | 133919/1000000 | s1138,s990,lo_HYP,s1228,lo_HDF,s1083 |
| s1271 | 126 | bary_lo | HZP | hi | 42259/500000 | s1139,lo_FYP,lo_HYP,s1251,s1039,s1183 |

## Conclusion

{"triangle":"HZP","lower":"lo_HZP","upper":"s1271"}
