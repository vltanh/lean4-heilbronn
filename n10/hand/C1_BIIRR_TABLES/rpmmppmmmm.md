# Leaf rpmmppmmmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":-1,"QYZ":-1}

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
| 27 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 28 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | capacity | ["HFY","P","Z","FYZ",1,"271/500","C024"] |
| 31 | plu | ["OHDYZ","OYZ",-1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["DOHYZ","DYZ",1] |
| 34 | plu | ["DOHZP","DZP",-1] |
| 35 | plu | ["FHCYP","FCP",-1] |
| 36 | plu | ["FHCPQ","FPQ",1] |
| 37 | plu | ["FHCPR","FPR",1] |
| 38 | plu | ["YHDPQ","YPQ",-1] |
| 39 | plu | ["YHDPR","YPR",-1] |
| 40 | capacity | ["HCF","P","Z","CFZ",-1,"127/200","C027"] |
| 41 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 42 | plu | ["YOZQR","YZR",-1] |
| 43 | plu | ["ZOCYR","ZOR",1] |
| 44 | plu | ["QOHYR","QHR",1] |
| 45 | plu | ["QOFYR","QFR",1] |
| 46 | plu | ["QOYZR","QZR",1] |
| 47 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
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
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 279/1000 | ["cost","P"] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","R"] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","Z"] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZQ | DZQ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FQR | FQR | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHQ","HYQ","OHY","OYQ"] | ["fan","OHQ","Y"] |
| 2 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 3 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 4 | ["fan","HCF","CFP","HCP","HFP"] | ["fan","HCF","P"] |
| 5 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 6 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 7 | ["fan","HDZ","DZP","HDP","HZP"] | ["fan","HDZ","P"] |
| 8 | ["fan","HFY","FYP","HFP","HYP"] | ["fan","HFY","P"] |
| 9 | ["fan","HFZ","FZP","HFP","HZP"] | ["fan","HFZ","P"] |
| 10 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 11 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 12 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 13 | ["plu","HCP","HDZ","HCD","HZP","HCZ","HDP"] | ["plu","HCDZP"] |
| 14 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 15 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 16 | ["plu","CDQ","CYR","CDR","CYQ","CDY","CQR"] | ["plu","CDYQR"] |
| 17 | ["plu","DFZ","OCD","CDF","ODZ","CDZ","ODF"] | ["plu","DOCFZ"] |
| 18 | ["plu","DZQ","OCD","CDQ","ODZ","CDZ","ODQ"] | ["plu","DOCZQ"] |
| 19 | ["plu","DZQ","HCD","CDQ","HDZ","CDZ","HDQ"] | ["plu","DHCZQ"] |
| 20 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 21 | ["plu","FZP","HFY","FYP","HFZ","FYZ","HFP"] | ["plu","FHYZP"] |
| 22 | ["plu","DZP","HCP","CDP","HZP","CZP","HDP"] | ["plu","PHCDZ"] |
| 23 | ["plu","CFP","HYP","CYP","HFP","FYP","HCP"] | ["plu","PHCFY"] |
| 24 | ["plu","DQR","OHQ","HDQ","OQR","HQR","ODQ"] | ["plu","QOHDR"] |
| 25 | ["plu","DQR","OFQ","DFQ","OQR","FQR","ODQ"] | ["plu","QODFR"] |
| 26 | ["plu","DQR","OYQ","DYQ","OQR","ODQ","YQR"] | ["plu","QODYR"] |
| 27 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 28 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 29 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 30 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 31 | ["balance",[[1,"HCF","OYQ"],[-1,"CFY","OHQ"],[1,"HFY","OCQ"],[1,"HCY","OFQ"]]] | ["six","OQHCFY"] |
| 32 | ["balance",[[1,"HCF","OZQ"],[1,"CFZ","OHQ"],[1,"HFZ","OCQ"],[-1,"HCZ","OFQ"]]] | ["six","OQHCFZ"] |
| 33 | ["balance",[[-1,"HCY","OZQ"],[1,"CYZ","OHQ"],[-1,"HYZ","OCQ"],[-1,"HCZ","OYQ"]]] | ["six","OQHCYZ"] |
| 34 | ["balance",[[-1,"CFY","HDP"],[-1,"FYP","HCD"],[-1,"CYP","HDF"],[1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 35 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 36 | ["balance",[[-1,"CDF","HZP"],[1,"DFZ","HCP"],[-1,"CFZ","HDP"],[-1,"CDZ","HFP"]]] | ["six","HPCDFZ"] |
| 37 | ["balance",[[-1,"CFY","HZP"],[1,"FYZ","HCP"],[-1,"CYZ","HFP"],[-1,"CFZ","HYP"]]] | ["six","HPCFYZ"] |
| 38 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 39 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 40 | ["balance",[[-1,"HDZ","CFP"],[1,"DZP","HCF"],[-1,"HZP","CDF"],[-1,"HDP","CFZ"]]] | ["six","CFHDZP"] |
| 41 | ["balance",[[1,"HDZ","FYP"],[-1,"DZP","HFY"],[1,"HZP","DFY"],[1,"HDP","FYZ"]]] | ["six","FYHDZP"] |
| 42 | ["balance",[[-1,"HCD","FYZ"],[1,"CDY","HFZ"],[1,"HDY","CFZ"],[1,"HCY","DFZ"]]] | ["six","FZHCDY"] |
| 43 | ["balance",[[1,"HCD","FYP"],[1,"CDY","HFP"],[-1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 44 | ["balance",[[1,"HCD","FPQ"],[-1,"CDQ","HFP"],[-1,"HDQ","CFP"],[-1,"HCQ","DFP"]]] | ["six","FPHCDQ"] |
| 45 | ["balance",[[-1,"HCY","FZP"],[-1,"CYZ","HFP"],[1,"HYZ","CFP"],[-1,"HCZ","FYP"]]] | ["six","FPHCYZ"] |
| 46 | ["balance",[[-1,"HCY","FPQ"],[-1,"CYQ","HFP"],[1,"HYQ","CFP"],[-1,"HCQ","FYP"]]] | ["six","FPHCYQ"] |
| 47 | ["balance",[[-1,"HCD","FYP"],[-1,"CDF","HYP"],[-1,"HDF","CYP"],[1,"HCF","DYP"]]] | ["six","YPHCDF"] |
| 48 | ["balance",[[1,"OHC","YQR"],[1,"HCY","OQR"],[-1,"OCY","HQR"],[1,"OHY","CQR"]]] | ["six","QROHCY"] |
| 49 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDZ","OQR"],[-1,"ODZ","CQR"],[1,"OCZ","DQR"]]] | ["six","QROCDZ"] |
| 50 | ["balance",[[-1,"ODF","ZQR"],[-1,"DFZ","OQR"],[1,"OFZ","DQR"],[-1,"ODZ","FQR"]]] | ["six","QRODFZ"] |
| 51 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 52 | ["balance",[[-1,"HCF","YQR"],[1,"CFY","HQR"],[-1,"HFY","CQR"],[-1,"HCY","FQR"]]] | ["six","QRHCFY"] |
| 53 | ["balance",[[-1,"HCF","ZQR"],[-1,"CFZ","HQR"],[-1,"HFZ","CQR"],[1,"HCZ","FQR"]]] | ["six","QRHCFZ"] |
| 54 | ["balance",[[1,"HCY","ZQR"],[-1,"CYZ","HQR"],[1,"HYZ","CQR"],[1,"HCZ","YQR"]]] | ["six","QRHCYZ"] |
| 55 | ["balance",[[-1,"CFY","ZQR"],[-1,"FYZ","CQR"],[1,"CYZ","FQR"],[-1,"CFZ","YQR"]]] | ["six","QRCFYZ"] |
| 56 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 57 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 58 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 59 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 60 | ["linear",{"ODZ":-1,"OZQ":-1,"ODQ":1,"DZQ":-1},"0"] | ["affine_quad","ODZQ",1] |
| 61 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 62 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 63 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 64 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 65 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 66 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 67 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 68 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 69 | ["linear",{"HDQ":-1,"HQR":-1,"HDR":1,"DQR":1},"0"] | ["affine_quad","HDQR",1] |
| 70 | ["linear",{"HFY":1,"HYP":-1,"HFP":-1,"FYP":-1},"0"] | ["affine_quad","HFYP",-1] |
| 71 | ["linear",{"HFZ":1,"HZP":-1,"HFP":-1,"FZP":-1},"0"] | ["affine_quad","HFZP",-1] |
| 72 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 73 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 74 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 75 | ["support","HFZ","HFY","FYZ","1023/1000"] | ["support_pent","FZCYH"] |
| 76 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 77 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 78 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 79 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["CDQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DQ"] |
| 80 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 81 | ["bary",["OYQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OQ"] |
| 82 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CD"] |
| 83 | ["bary",["HDY",-1],[["OHD",-1],null,["HDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HD"] |
| 84 | ["bary",["HFY",-1],[["OHF",-1],null,["HFQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HF"] |
| 85 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CD"] |
| 86 | ["bary",["DYZ",-1],[["ODZ",-1],["HDZ",-1],["DZQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DZ"] |
| 87 | ["bary",["DZQ",-1],[["ODQ",-1],["CDQ",-1],null],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","DQ"] |
| 88 | ["bary",["HDZ",-1],[["OHD",-1],null,["HDQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","HD"] |
| 89 | ["bary",["DZQ",-1],[["ODQ",-1],null,null],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","DQ"] |
| 90 | ["bary",["HQR",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HQ"] |
| 91 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 92 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 93 | ["bary",["DZQ",-1],[["HDQ",-1],["CDQ",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DQ"] |
| 94 | ["bary",["ZQR",-1],[["HQR",-1],["CQR",1],["DQR",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","QR"] |
| 95 | ["bary",["HCP",1],[null,["HCD",1],["HCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HC"] |
| 96 | ["bary",["HYP",1],[null,["HDY",1],["HYZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HY"] |
| 97 | ["bary",["CFP",1],[["HCF",1],["CDF",-1],["CFZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CF"] |
| 98 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 99 | ["bary",["DZP",-1],[["HDZ",-1],null,null],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","DZ"] |
| 100 | ["bary",["HCP",1],[null,["HCF",1],["HCY",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","HC"] |
| 101 | ["bary",["CDP",1],[["HCD",1],["CDF",1],["CDY",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","CD"] |
| 102 | ["bary",["CZP",1],[["HCZ",1],["CFZ",1],["CYZ",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","CZ"] |
| 103 | ["bary",["DZP",-1],[["HDZ",-1],["DFZ",-1],["DYZ",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","DZ"] |
| 104 | ["bary",["FZP",-1],[["HFZ",-1],null,["FYZ",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","FZ"] |
| 105 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 106 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 107 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 108 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 407/500 | hi_OHD,lo_ODY,lo_OHY |
| s18 | 2 | sub | OZQ | hi | 35909/62500 | hi_ODQ,lo_DZQ,lo_ODZ |
| s71 | 12 | sumlo | HDY | lo | 318543/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,hi_HCF |
| s77 | 14 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s78 | 15 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s77,lo_CQR,lo_HCD,hi_CDQ |
| s86 | 17 | sumlo | DFZ | lo | 127411/1000000 | lo_CDF,lo_ODZ,lo_CDZ,lo_ODF,hi_OCD |
| s87 | 18 | sumlo | DZQ | lo | 157113/1000000 | lo_CDQ,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s103 | 24 | diffhi | HQR | hi | 39233/125000 | hi_DQR,hi_OHQ,lo_HDQ,lo_OQR,lo_ODQ |
| s111 | 25 | diffhi | FQR | hi | 320121/1000000 | hi_DQR,hi_OFQ,lo_DFQ,lo_OQR,lo_ODQ |
| s113 | 26 | sumlo | OYQ | lo | 77341/200000 | lo_DYQ,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s116 | 27 | sumlo | DQR | lo | 137767/1000000 | s87,lo_OQR,lo_ODQ,lo_ZQR,s18 |
| s117 | 27 | sumlo | OZQ | lo | 169131/500000 | s87,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s126 | 28 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s138 | 30 | balance_lo | CDY | lo | 362539/1000000 | lo_HCD,s113,s71,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s139 | 31 | balance_lo | CFY | lo | 181711/1000000 | lo_HCF,s113,lo_HFY,lo_OCQ,lo_HCY,lo_OFQ,hi_OHQ |
| s148 | 34 | balance_lo | CFP | lo | 4427/40000 | s139,lo_HDP,lo_FYP,lo_HCD,lo_CYP,lo_HDF,s1 |
| s152 | 35 | balance_lo | HYQ | lo | 4171/20000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,s71,hi_OCD |
| s158 | 38 | balance_lo | OYR | lo | 113841/500000 | s113,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s138,hi_CDQ |
| s159 | 39 | balance_lo | OZR | lo | 19659/125000 | s117,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,lo_CDZ,hi_CDQ |
| s163 | 40 | balance_lo | DZP | lo | 14463/125000 | lo_HDZ,s148,lo_HZP,lo_CDF,lo_HDP,lo_CFZ,hi_HCF |
| s171 | 42 | balance_lo | FYZ | lo | 146421/1000000 | s138,lo_HFZ,s71,lo_CFZ,lo_HCY,s86,hi_HCD |
| s172 | 43 | balance_lo | CFP | lo | 26267/200000 | lo_HCD,lo_FYP,s138,lo_HFP,lo_HCY,lo_DFP,s1 |
| s173 | 47 | balance_lo | DYP | lo | 84359/500000 | lo_HCD,lo_FYP,lo_CDF,lo_HYP,lo_HDF,lo_CYP,hi_HCF |
| s178 | 48 | balance_lo | OCY | lo | 68891/500000 | lo_OHC,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s103 |
| s180 | 49 | balance_lo | OCZ | lo | 184807/1000000 | lo_OCD,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s181 | 50 | balance_lo | OFZ | lo | 256133/1000000 | lo_ODF,lo_ZQR,s86,lo_OQR,lo_ODZ,lo_FQR,hi_DQR |
| s184 | 51 | balance_lo | HQR | lo | 142699/1000000 | lo_HCD,lo_YQR,s71,lo_CQR,lo_HCY,s116,hi_CDY |
| s185 | 52 | balance_lo | CFY | lo | 38579/200000 | lo_HCF,lo_YQR,lo_HFY,lo_CQR,lo_HCY,lo_FQR,s103 |
| s186 | 53 | balance_lo | HCZ | lo | 203563/1000000 | lo_HCF,lo_ZQR,lo_CFZ,s184,lo_HFZ,lo_CQR,s111 |
| s189 | 55 | balance_lo | CYZ | lo | 62797/500000 | s185,lo_ZQR,s171,lo_CQR,lo_CFZ,lo_YQR,s111 |
| s196 | 56 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s203 | 58 | linear | OCD | lo | 370807/1000000 | lo_CDZ,s180,lo_ODZ |
| s205 | 59 | linear | DFQ | lo | 5267/40000 | lo_ODF,lo_ODQ,hi_OFQ |
| s213 | 61 | linear | OYQ | lo | 206841/500000 | lo_OQR,s158,lo_YQR |
| s214 | 62 | linear | OZQ | lo | 42909/125000 | lo_OQR,s159,lo_ZQR |
| s219 | 65 | linear | HCF | lo | 63467/200000 | s172,lo_HCP,lo_HFP |
| s221 | 66 | linear | HCQ | lo | 28389/62500 | lo_CQR,s78,s184 |
| s223 | 67 | linear | HDY | lo | 177359/500000 | s173,lo_HDP,lo_HYP |
| s225 | 68 | linear | HDZ | lo | 37713/125000 | s163,lo_HDP,lo_HZP |
| s232 | 73 | linear | CDQ | lo | 323767/1000000 | lo_CDR,lo_CQR,s116 |
| s237 | 74 | linear | CYQ | lo | 166923/500000 | lo_CQR,s126,lo_YQR |
| s254 | 76 | linear | OHC | lo | 370807/1000000 | s203 |
| s255 | 77 | linear | HCD | hi | 907/1000 | lo_HDF |
| s256 | 78 | linear | CDF | hi | 136533/200000 | s219 |
| s268 | 79 | bary_hi | DYQ | lo | 391927/1000000 | hi_OHC,lo_HCY,s178,lo_OHY,lo_ODQ,s196,s232 |
| s269 | 80 | bary_hi | FYZ | lo | 629/4000 | hi_OHC,lo_HCY,s178,lo_OHY,s181,lo_HFZ,lo_CFZ |
| s276 | 81 | bary_hi | OYQ | hi | 623013/1000000 | hi_OHD,s223,lo_ODY,lo_OHY,hi_OHQ,hi_ODQ |
| s278 | 82 | bary_hi | CDY | hi | 352609/500000 | hi_OHD,s223,lo_ODY,lo_OHY,hi_OCD,s255 |
| s307 | 83 | bary_lo | HDY | hi | 56539/100000 | hi_OHQ,s152,s213,lo_OHY,hi_OHD,hi_HDQ |
| s308 | 84 | bary_lo | HFY | hi | 379373/1000000 | hi_OHQ,s152,s213,lo_OHY,hi_OHF,hi_HFQ |
| s345 | 87 | bary_hi | DZQ | lo | 82171/500000 | hi_OCD,lo_CDZ,lo_ODZ,s180,lo_ODQ,s232 |
| s350 | 88 | bary_lo | HDZ | hi | 521131/1000000 | hi_ODQ,s345,s214,lo_ODZ,hi_OHD,hi_HDQ |
| s389 | 91 | bary_hi | DQR | lo | 162101/1000000 | s276,lo_YQR,lo_OQR,s158,lo_ODQ,s268 |
| s410 | 92 | bary_lo | DFZ | lo | 130949/1000000 | s255,lo_CDZ,s225,s186,lo_HDF,lo_CDF |
| s482 | 95 | bary_lo | HCP | lo | 160177/1000000 | s350,s163,lo_HZP,lo_HDP,lo_HCD,s186 |
| s484 | 97 | bary_hi | CFP | hi | 2613/8000 | s350,s163,lo_HZP,lo_HDP,hi_HCF,lo_CDF,lo_CFZ |
| s485 | 98 | bary_hi | CYP | lo | 73459/500000 | s350,s163,lo_HZP,lo_HDP,lo_HCY,s138,s189 |
| s502 | 100 | bary_hi | HCP | hi | 300873/1000000 | s308,lo_FYP,lo_HYP,lo_HFP,hi_HCF,lo_HCY |
| s507 | 101 | bary_lo | CDP | lo | 444397/1000000 | s308,lo_FYP,lo_HYP,lo_HFP,lo_HCD,lo_CDF,s138 |
| s509 | 102 | bary_lo | CZP | lo | 128093/1000000 | s308,lo_FYP,lo_HYP,lo_HFP,s186,lo_CFZ,s189 |
| s512 | 103 | bary_hi | DZP | lo | 19183/125000 | s308,lo_FYP,lo_HYP,lo_HFP,s225,s410,lo_DYZ |
| s515 | 104 | bary_hi | FZP | lo | 53471/500000 | s308,lo_FYP,lo_HYP,lo_HFP,lo_HFZ,s269 |
| s522 | 105 | bary_lo | HYZ | lo | 19249/125000 | s256,s410,lo_CFZ,lo_CDZ,lo_HCY,s223,lo_HFY |
| s535 | 106 | bary_lo | HCR | lo | 254249/1000000 | hi_CDQ,s389,lo_CQR,lo_CDR,lo_HCD,s221 |
| s536 | 107 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,s389,lo_CQR,lo_CDR,s255,hi_HDQ |
| s543 | 108 | bary_hi | CYR | lo | 154199/1000000 | hi_CDQ,s389,lo_CQR,lo_CDR,s138,s237 |
| s582 | 3 | sum | HCD | lo | 348787/500000 | s507,s482,lo_HDP |
| s583 | 4 | sum | HCF | lo | 6008/15625 | s172,s482,lo_HFP |
| s584 | 5 | sum | HCQ | lo | 122487/250000 | lo_CQR,s535,s184 |
| s585 | 7 | sum | HDZ | lo | 42433/125000 | s512,lo_HDP,lo_HZP |
| s586 | 9 | sum | HFZ | lo | 146471/500000 | s515,lo_HFP,lo_HZP |
| s587 | 10 | sum | CDQ | lo | 348101/1000000 | lo_CDR,lo_CQR,s389 |
| s589 | 11 | sum | CYQ | lo | 340199/1000000 | lo_CQR,s543,lo_YQR |
| s595 | 13 | sumlo | HCP | lo | 32163/200000 | s582,lo_HZP,s186,lo_HDP,s350 |
| s600 | 15 | sumlo | HCR | lo | 262951/1000000 | lo_CDR,s584,lo_CQR,s582,hi_CDQ |
| s603 | 16 | sumlo | CYR | lo | 77803/500000 | lo_CDR,s589,s138,lo_CQR,hi_CDQ |
| s608 | 19 | sumlo | DZQ | lo | 42517/250000 | s587,s585,lo_CDZ,s196,s255 |
| s612 | 21 | sumlo | FZP | lo | 2759/25000 | lo_FYP,s586,s269,lo_HFP,s308 |
| s617 | 22 | sumlo | DZP | lo | 44239/250000 | s507,lo_HZP,s509,lo_HDP,s502 |
| s622 | 24 | diffhi | HQR | hi | 142591/500000 | hi_DQR,hi_OHQ,s196,lo_OQR,lo_ODQ |
| s624 | 25 | diffhi | FQR | hi | 314939/1000000 | hi_DQR,hi_OFQ,s205,lo_OQR,lo_ODQ |
| s625 | 26 | sumlo | OYQ | lo | 215793/500000 | s268,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s627 | 27 | sumlo | OZQ | lo | 343411/1000000 | s608,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s634 | 30 | balance_lo | CDY | lo | 398593/1000000 | s582,s625,s223,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s646 | 36 | balance_lo | DFZ | lo | 85157/500000 | lo_CDF,lo_HZP,lo_CFZ,lo_HDP,lo_CDZ,lo_HFP,s502 |
| s647 | 38 | balance_lo | OYR | lo | 66483/250000 | s625,lo_CDR,lo_YQR,s203,lo_OQR,s634,hi_CDQ |
| s648 | 39 | balance_lo | OZR | lo | 178741/1000000 | s627,lo_CDR,lo_ZQR,s203,lo_OQR,lo_CDZ,hi_CDQ |
| s651 | 43 | balance_lo | CFP | lo | 195603/1000000 | s582,lo_FYP,s634,lo_HFP,lo_HCY,lo_DFP,s307 |
| s652 | 44 | balance_lo | FPQ | lo | 33921/200000 | s587,lo_HFP,s196,s651,s584,lo_DFP,s255 |
| s653 | 46 | balance_lo | HYQ | lo | 284659/1000000 | lo_HCY,s652,s589,lo_HFP,s584,lo_FYP,s484 |
| s656 | 47 | balance_lo | DYP | lo | 88569/500000 | s582,lo_FYP,lo_CDF,lo_HYP,lo_HDF,s485,hi_HCF |
| s660 | 48 | balance_lo | OCY | lo | 90789/500000 | s254,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s622 |
| s662 | 49 | balance_lo | OCZ | lo | 44259/200000 | s203,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s666 | 51 | balance_lo | HQR | lo | 160147/1000000 | s582,lo_YQR,s223,lo_CQR,lo_HCY,s389,s278 |
| s668 | 53 | balance_lo | HCZ | lo | 247339/1000000 | s583,lo_ZQR,lo_CFZ,s666,s586,lo_CQR,s624 |
| s670 | 54 | balance_lo | CYZ | lo | 32241/200000 | lo_HCY,lo_ZQR,s522,lo_CQR,s668,lo_YQR,s622 |
| s673 | 57 | linear | OHQ | lo | 161849/200000 | s653,lo_OHY,s625 |
| s677 | 58 | linear | OCD | lo | 81459/200000 | lo_CDZ,s662,lo_ODZ |
| s681 | 60 | linear | DZQ | hi | 324133/1000000 | hi_ODQ,lo_ODZ,s627 |
| s686 | 61 | linear | OYQ | lo | 112983/250000 | lo_OQR,s647,lo_YQR |
| s688 | 62 | linear | OZQ | lo | 364741/1000000 | lo_OQR,s648,lo_ZQR |
| s691 | 64 | linear | HCD | lo | 174553/250000 | s507,s595,lo_HDP |
| s692 | 65 | linear | HCF | lo | 224709/500000 | s651,s595,lo_HFP |
| s693 | 66 | linear | HCQ | lo | 258049/500000 | lo_CQR,s600,s666 |
| s695 | 67 | linear | HDY | lo | 181569/500000 | s656,lo_HDP,lo_HYP |
| s696 | 68 | linear | HDZ | lo | 90739/250000 | s617,lo_HDP,lo_HZP |
| s698 | 69 | linear | HDQ | hi | 37539/50000 | hi_DQR,s536,s666 |
| s699 | 71 | linear | HFZ | lo | 7409/25000 | s612,lo_HFP,lo_HZP |
| s702 | 74 | linear | CYQ | lo | 170803/500000 | lo_CQR,s603,lo_YQR |
| s708 | 75 | support_z | FYZ | lo | 23307/125000 | s699,s308 |
| s711 | 78 | linear | CDF | hi | 275291/500000 | s692 |
| s713 | 79 | bary_hi | DYQ | lo | 410169/1000000 | hi_OHC,lo_HCY,s660,lo_OHY,lo_ODQ,s196,s587 |
| s718 | 81 | bary_hi | OYQ | hi | 614593/1000000 | hi_OHD,s695,lo_ODY,lo_OHY,hi_OHQ,hi_ODQ |
| s728 | 83 | bary_lo | HDY | hi | 524891/1000000 | hi_OHQ,s653,s686,lo_OHY,hi_OHD,s698 |
| s729 | 84 | bary_lo | HFY | hi | 352947/1000000 | hi_OHQ,s653,s686,lo_OHY,hi_OHF,hi_HFQ |
| s732 | 85 | bary_hi | CDY | hi | 348019/500000 | hi_OHQ,s653,s686,lo_OHY,hi_OCD,s255,s587 |
| s736 | 86 | bary_hi | DYZ | lo | 841/8000 | hi_OHQ,s653,s686,lo_OHY,lo_ODZ,s696,s681 |
| s750 | 88 | bary_lo | HDZ | hi | 244973/500000 | hi_ODQ,s608,s688,lo_ODZ,hi_OHD,s698 |
| s757 | 89 | bary_lo | DZQ | hi | 302803/1000000 | hi_ODQ,s608,s688,lo_ODZ,hi_ODQ |
| s767 | 90 | bary_hi | HQR | lo | 165529/1000000 | s718,lo_YQR,lo_OQR,s647,s673,s653 |
| s768 | 91 | bary_hi | DQR | lo | 83541/500000 | s718,lo_YQR,lo_OQR,s647,lo_ODQ,s713 |
| s783 | 93 | bary_hi | DZQ | lo | 44771/250000 | s255,lo_CDZ,s696,s668,s196,s587 |
| s806 | 95 | bary_lo | HCP | lo | 179481/1000000 | s750,s617,lo_HZP,lo_HDP,s691,s668 |
| s808 | 96 | bary_lo | HYP | lo | 98159/1000000 | s750,s617,lo_HZP,lo_HDP,s695,s522 |
| s810 | 97 | bary_hi | CFP | hi | 306997/1000000 | s750,s617,lo_HZP,lo_HDP,hi_HCF,lo_CDF,lo_CFZ |
| s811 | 98 | bary_hi | CYP | lo | 163953/1000000 | s750,s617,lo_HZP,lo_HDP,lo_HCY,s634,s670 |
| s816 | 99 | bary_lo | DZP | hi | 151973/500000 | s750,s617,lo_HZP,lo_HDP,s750 |
| s828 | 100 | bary_hi | HCP | hi | 17241/62500 | s729,lo_FYP,s808,lo_HFP,hi_HCF,lo_HCY |
| s832 | 101 | bary_lo | CDP | lo | 461651/1000000 | s729,lo_FYP,s808,lo_HFP,s691,lo_CDF,s634 |
| s834 | 102 | bary_lo | CZP | lo | 151639/1000000 | s729,lo_FYP,s808,lo_HFP,s668,lo_CFZ,s670 |
| s837 | 103 | bary_hi | DZP | lo | 23899/125000 | s729,lo_FYP,s808,lo_HFP,s696,s646,s736 |
| s840 | 104 | bary_hi | FZP | lo | 127219/1000000 | s729,lo_FYP,s808,lo_HFP,s699,s708 |
| s845 | 105 | bary_lo | HYZ | lo | 170047/1000000 | s711,s646,lo_CFZ,lo_CDZ,lo_HCY,s695,lo_HFY |
| s860 | 106 | bary_lo | HCR | lo | 134441/500000 | hi_CDQ,s768,lo_CQR,lo_CDR,s691,s693 |
| s861 | 107 | bary_lo | HDR | hi | 671573/1000000 | hi_CDQ,s768,lo_CQR,lo_CDR,s255,s698 |
| s866 | 108 | bary_hi | CYR | lo | 163901/1000000 | hi_CDQ,s768,lo_CQR,lo_CDR,s634,s702 |
| s892 | 1 | sum | OHQ | lo | 829591/1000000 | s653,lo_OHY,s686 |
| s894 | 2 | sub | OZQ | hi | 24423/50000 | hi_ODQ,s783,lo_ODZ |
| s900 | 3 | sum | HCD | lo | 183533/250000 | s832,s806,lo_HDP |
| s901 | 4 | sum | HCF | lo | 117021/250000 | s651,s806,lo_HFP |
| s902 | 5 | sum | HCQ | lo | 527411/1000000 | lo_CQR,s860,s767 |
| s903 | 6 | sum | HDY | lo | 368297/1000000 | s656,lo_HDP,s808 |
| s904 | 7 | sum | HDZ | lo | 47149/125000 | s837,lo_HDP,lo_HZP |
| s906 | 8 | sum | HFY | lo | 284159/1000000 | lo_FYP,lo_HFP,s808 |
| s907 | 9 | sum | HFZ | lo | 313219/1000000 | s840,lo_HFP,lo_HZP |
| s908 | 10 | sum | CDQ | lo | 176541/500000 | lo_CDR,lo_CQR,s768 |
| s910 | 11 | sum | CYQ | lo | 349901/1000000 | lo_CQR,s866,lo_YQR |
| s924 | 19 | sumlo | DZQ | lo | 186619/1000000 | s908,s904,lo_CDZ,s196,s255 |
| s926 | 21 | sumlo | FZP | lo | 65831/500000 | lo_FYP,s907,s708,lo_HFP,s729 |
| s929 | 22 | sumlo | DZP | lo | 206759/1000000 | s832,lo_HZP,s834,lo_HDP,s828 |
| s930 | 22 | sumlo | HCP | lo | 187651/1000000 | s832,lo_HZP,s834,lo_HDP,s816 |
| s932 | 23 | sumlo | HYP | lo | 106513/1000000 | s811,lo_HFP,lo_FYP,s930,s810 |
| s938 | 27 | sumlo | DQR | lo | 10479/62500 | s924,lo_OQR,lo_ODQ,lo_ZQR,s894 |
| s941 | 29 | balance_lo | OFQ | lo | 701543/1000000 | lo_CDF,s892,lo_HDF,lo_OCQ,s901,lo_ODQ,s255 |
| s942 | 30 | balance_lo | CDY | lo | 430571/1000000 | s900,s686,s903,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s943 | 31 | balance_lo | CFY | lo | 75803/250000 | s901,s686,s906,lo_OCQ,lo_HCY,s941,hi_OHQ |
| s944 | 32 | balance_lo | HCZ | lo | 56167/200000 | s901,s688,lo_CFZ,s892,s907,lo_OCQ,hi_OFQ |
| s945 | 33 | balance_lo | CYZ | lo | 176653/1000000 | lo_HCY,s688,s845,lo_OCQ,s944,s686,hi_OHQ |
| s951 | 36 | balance_lo | DFZ | lo | 185759/1000000 | lo_CDF,lo_HZP,lo_CFZ,lo_HDP,lo_CDZ,lo_HFP,s828 |
| s953 | 38 | balance_lo | OYR | lo | 142799/500000 | s686,lo_CDR,lo_YQR,s677,lo_OQR,s942,hi_CDQ |
| s954 | 39 | balance_lo | OZR | lo | 191543/1000000 | s688,lo_CDR,lo_ZQR,s677,lo_OQR,lo_CDZ,hi_CDQ |
| s962 | 43 | balance_lo | HDY | lo | 381001/1000000 | s900,lo_FYP,s942,lo_HFP,lo_HCY,lo_DFP,s810 |
| s963 | 43 | balance_lo | CFP | lo | 222839/1000000 | s900,lo_FYP,s942,lo_HFP,lo_HCY,lo_DFP,s728 |
| s964 | 44 | balance_lo | FPQ | lo | 185609/1000000 | s908,lo_HFP,s196,s963,s902,lo_DFP,s255 |
| s965 | 45 | balance_lo | HYZ | lo | 178473/1000000 | lo_HCY,s926,s945,lo_HFP,s944,lo_FYP,s810 |
| s966 | 46 | balance_lo | HYQ | lo | 64399/200000 | lo_HCY,s964,s910,lo_HFP,s902,lo_FYP,s810 |
| s969 | 47 | balance_lo | DYP | lo | 96377/500000 | s900,lo_FYP,lo_CDF,s932,lo_HDF,s811,hi_HCF |
| s984 | 51 | balance_lo | HQR | lo | 85699/500000 | s900,lo_YQR,s962,lo_CQR,lo_HCY,s938,s732 |
| s985 | 53 | balance_lo | HCZ | lo | 17583/62500 | s901,lo_ZQR,lo_CFZ,s984,s907,lo_CQR,s624 |
| s987 | 54 | balance_lo | CYZ | lo | 11267/62500 | lo_HCY,lo_ZQR,s965,lo_CQR,s985,lo_YQR,s622 |
| s1005 | 61 | linear | OYQ | lo | 235799/500000 | lo_OQR,s953,lo_YQR |
| s1007 | 62 | linear | OZQ | lo | 377543/1000000 | lo_OQR,s954,lo_ZQR |
| s1009 | 63 | linear | HCD | lo | 4697/6250 | lo_CDZ,s985,s904 |
| s1011 | 65 | linear | HCF | lo | 50349/100000 | s963,s930,lo_HFP |
| s1014 | 67 | linear | HDY | lo | 392267/1000000 | s969,lo_HDP,s932 |
| s1015 | 68 | linear | HDZ | lo | 392759/1000000 | s929,lo_HDP,lo_HZP |
| s1017 | 69 | linear | HDQ | hi | 29367/40000 | hi_DQR,s861,s984 |
| s1018 | 70 | linear | HFY | lo | 292513/1000000 | lo_FYP,lo_HFP,s932 |
| s1020 | 71 | linear | HFZ | lo | 158831/500000 | s926,lo_HFP,lo_HZP |
| s1022 | 72 | linear | CDF | lo | 371759/1000000 | lo_CDZ,lo_CFZ,s951 |
| s1032 | 75 | support_z | FYZ | lo | 3251/15625 | s1020,s729 |
| s1035 | 78 | linear | HCF | hi | 628241/1000000 | s1022 |
| s1036 | 78 | linear | CDF | hi | 49651/100000 | s1011 |
| s1053 | 84 | bary_lo | HFY | hi | 169697/500000 | hi_OHQ,s966,s1005,lo_OHY,hi_OHF,hi_HFQ |
| s1060 | 86 | bary_hi | DYZ | lo | 152669/1000000 | hi_OHQ,s966,s1005,lo_OHY,lo_ODZ,s1015,s757 |
| s1071 | 88 | bary_lo | HDZ | hi | 471083/1000000 | hi_ODQ,s924,s1007,lo_ODZ,hi_OHD,s1017 |
| s1133 | 95 | bary_lo | HCP | lo | 101951/500000 | s1071,s929,lo_HZP,lo_HDP,s1009,s985 |
| s1135 | 96 | bary_lo | HYP | lo | 56337/500000 | s1071,s929,lo_HZP,lo_HDP,s1014,s965 |
| s1137 | 97 | bary_hi | CFP | hi | 288439/1000000 | s1071,s929,lo_HZP,lo_HDP,s1035,s1022,lo_CFZ |
| s1138 | 98 | bary_hi | CYP | lo | 176871/1000000 | s1071,s929,lo_HZP,lo_HDP,lo_HCY,s942,s987 |
| s1143 | 99 | bary_lo | DZP | hi | 285083/1000000 | s1071,s929,lo_HZP,lo_HDP,s1071 |
| s1154 | 100 | bary_hi | HCP | hi | 258459/1000000 | s1053,lo_FYP,s1135,lo_HFP,s1035,lo_HCY |
| s1158 | 101 | bary_lo | CDP | lo | 98387/200000 | s1053,lo_FYP,s1135,lo_HFP,s1009,s1022,s942 |
| s1160 | 102 | bary_lo | CZP | lo | 168519/1000000 | s1053,lo_FYP,s1135,lo_HFP,s985,lo_CFZ,s987 |
| s1163 | 103 | bary_hi | DZP | lo | 229443/1000000 | s1053,lo_FYP,s1135,lo_HFP,s1015,s951,s1060 |
| s1166 | 104 | bary_hi | FZP | lo | 72029/500000 | s1053,lo_FYP,s1135,lo_HFP,s1020,s1032 |
| s1172 | 105 | bary_lo | HYZ | lo | 7457/40000 | s1036,s951,lo_CFZ,lo_CDZ,lo_HCY,s1014,s1018 |
| s1226 | 1 | sum | OHQ | lo | 886593/1000000 | s966,lo_OHY,s1005 |
| s1235 | 4 | sum | HCF | lo | 519741/1000000 | s963,s1133,lo_HFP |
| s1238 | 7 | sum | HDZ | lo | 415443/1000000 | s1163,lo_HDP,lo_HZP |
| s1240 | 8 | sum | HFY | lo | 149337/500000 | lo_FYP,lo_HFP,s1135 |
| s1241 | 9 | sum | HFZ | lo | 165029/500000 | s1166,lo_HFP,lo_HZP |
| s1267 | 20 | sumlo | DFY | lo | 27703/125000 | s1022,s1240,s943,lo_HDF,s1035 |
| s1273 | 22 | sumlo | HCP | lo | 215453/1000000 | s1158,lo_HZP,s1160,lo_HDP,s1143 |
| s1275 | 23 | sumlo | HYP | lo | 25299/200000 | s1138,lo_HFP,lo_FYP,s1273,s1137 |
| s1288 | 29 | balance_lo | OFQ | lo | 154123/200000 | s1022,s1226,lo_HDF,lo_OCQ,s1235,lo_ODQ,s255 |
| s1290 | 31 | balance_lo | CFY | lo | 43069/125000 | s1235,s1005,s1240,lo_OCQ,lo_HCY,s1288,hi_OHQ |
| s1291 | 32 | balance_lo | HCZ | lo | 62729/200000 | s1235,s1007,lo_CFZ,s1226,s1241,lo_OCQ,hi_OFQ |
| s1292 | 33 | balance_lo | CYZ | lo | 200363/1000000 | lo_HCY,s1007,s1172,lo_OCQ,s1291,s1005,hi_OHQ |
| s1307 | 37 | balance_lo | FYZ | lo | 24159/100000 | s1290,lo_HZP,s1292,lo_HFP,lo_CFZ,s1275,s1154 |
| s1315 | 41 | balance_lo | DZP | lo | 240767/1000000 | s1238,lo_FYP,lo_HZP,s1267,lo_HDP,s1307,s1053 |
| s1393 | 68 | linear | HDZ | lo | 426767/1000000 | s1315,lo_HDP,lo_HZP |
| s1506 | 94 | bary_lo | ZQR | hi | 89539/1000000 | s255,lo_CDZ,s1393,s1291,s622,lo_CQR,hi_DQR |

## Conclusion

{"triangle":"ZQR","lower":"lo_ZQR","upper":"s1506"}
