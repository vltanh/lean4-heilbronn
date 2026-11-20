# Leaf rpmmppmmmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":-1,"QYZ":1,"OFY":-1}

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
| 28 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 29 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | capacity | ["HFY","P","Z","FYZ",1,"271/500","C024"] |
| 32 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 33 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 34 | plu | ["OHDYZ","OYZ",-1] |
| 35 | plu | ["OHDPR","OPR",-1] |
| 36 | plu | ["DOHYZ","DYZ",1] |
| 37 | plu | ["DOHZP","DZP",-1] |
| 38 | plu | ["FHCYP","FCP",-1] |
| 39 | plu | ["FHCPQ","FPQ",1] |
| 40 | plu | ["FHCPR","FPR",1] |
| 41 | plu | ["YOHFP","YOP",-1] |
| 42 | plu | ["YOHPR","YPR",-1] |
| 43 | plu | ["YOZQR","YZR",1] |
| 44 | plu | ["ZOHYQ","ZHQ",-1] |
| 45 | plu | ["ZOHPQ","ZPQ",-1] |
| 46 | plu | ["ZOFYQ","ZFQ",-1] |
| 47 | plu | ["ZHCYR","ZHR",-1] |
| 48 | plu | ["ZHCPR","ZPR",-1] |
| 49 | plu | ["ZHDFR","ZFR",-1] |
| 50 | plu | ["QOYZR","QZR",-1] |
| 51 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","P"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","Y"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YZ"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OPQ | OPQ | lo | 347/500 | ["cost","YZ"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCF | HCF | lo | 279/1000 | ["cost","P"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
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
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YZR | YZR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHY | OHY | hi | 449/1000 | "C067" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCP | OCP | hi | 115189/200000 | "C013" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHF","HFP","OFP","OHP"] | ["fan","OHF","P"] |
| 2 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 3 | ["fan","OHQ","HYQ","OHY","OYQ"] | ["fan","OHQ","Y"] |
| 4 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 5 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 6 | ["fan","OCP","CYP","OCY","OYP"] | ["fan","OCP","Y"] |
| 7 | ["fan","OFQ","FYQ","OFY","OYQ"] | ["fan","OFQ","Y"] |
| 8 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 9 | ["fan","OPQ","OYP","OYQ","YPQ"] | ["fan","OPQ","Y"] |
| 10 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 11 | ["fan","HCF","CFP","HCP","HFP"] | ["fan","HCF","P"] |
| 12 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 13 | ["fan","HDZ","DZP","HDP","HZP"] | ["fan","HDZ","P"] |
| 14 | ["fan","HFY","FYP","HFP","HYP"] | ["fan","HFY","P"] |
| 15 | ["fan","HFZ","FZP","HFP","HZP"] | ["fan","HFZ","P"] |
| 16 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 17 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 18 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 19 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 20 | ["plu","OFQ","OHY","OFY","OHQ","OHF","OYQ"] | ["plu","OHFYQ"] |
| 21 | ["plu","ODP","OFQ","ODF","OPQ","ODQ","OFP"] | ["plu","ODFPQ"] |
| 22 | ["plu","HFQ","OHD","HDF","OHQ","HDQ","OHF"] | ["plu","HODFQ"] |
| 23 | ["plu","HDZ","OHP","HDP","OHZ","HZP","OHD"] | ["plu","HODZP"] |
| 24 | ["plu","HYQ","OHZ","HYZ","OHQ","HZQ","OHY"] | ["plu","HOYZQ"] |
| 25 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 26 | ["plu","HCP","HDZ","HCD","HZP","HCZ","HDP"] | ["plu","HCDZP"] |
| 27 | ["plu","HDZ","HFQ","HDF","HZQ","HDQ","HFZ"] | ["plu","HDFZQ"] |
| 28 | ["plu","HFZ","HYP","HFP","HYZ","HFY","HZP"] | ["plu","HFYZP"] |
| 29 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 30 | ["plu","CDF","HCZ","CDZ","HCF","CFZ","HCD"] | ["plu","CHDFZ"] |
| 31 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 32 | ["plu","CDF","CYZ","CDY","CFZ","CDZ","CFY"] | ["plu","CDFYZ"] |
| 33 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 34 | ["plu","HYQ","OCY","CYQ","OHY","HCY","OYQ"] | ["plu","YOHCQ"] |
| 35 | ["plu","FYQ","OHY","HFY","OYQ","HYQ","OFY"] | ["plu","YOHFQ"] |
| 36 | ["plu","OCY","YPQ","CYP","OYQ","CYQ","OYP"] | ["plu","YOCPQ"] |
| 37 | ["plu","CFY","HDY","CDY","HFY","DFY","HCY"] | ["plu","YHCDF"] |
| 38 | ["plu","CFY","HYQ","CYQ","HFY","FYQ","HCY"] | ["plu","YHCFQ"] |
| 39 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 40 | ["plu","DFZ","HCZ","CDZ","HFZ","CFZ","HDZ"] | ["plu","ZHCDF"] |
| 41 | ["plu","CZQ","HDZ","CDZ","HZQ","DZQ","HCZ"] | ["plu","ZHCDQ"] |
| 42 | ["plu","DYZ","HZQ","DZQ","HYZ","HDZ","YZQ"] | ["plu","ZHDYQ"] |
| 43 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 44 | ["plu","CPQ","ODQ","CDQ","OPQ","DPQ","OCQ"] | ["plu","QOCDP"] |
| 45 | ["balance",[[1,"HFY","ODQ"],[-1,"FYQ","OHD"],[1,"HYQ","ODF"],[1,"HFQ","ODY"]]] | ["six","ODHFYQ"] |
| 46 | ["balance",[[1,"HCY","OFQ"],[1,"CYQ","OHF"],[-1,"HYQ","OCF"],[1,"HCQ","OFY"]]] | ["six","OFHCYQ"] |
| 47 | ["balance",[[1,"CDY","OFP"],[-1,"DYP","OCF"],[1,"CYP","ODF"],[1,"CDP","OFY"]]] | ["six","OFCDYP"] |
| 48 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 49 | ["balance",[[1,"HCD","OZQ"],[-1,"CDZ","OHQ"],[1,"HDZ","OCQ"],[-1,"HCZ","ODQ"]]] | ["six","OQHCDZ"] |
| 50 | ["balance",[[1,"HCF","OYQ"],[-1,"CFY","OHQ"],[1,"HFY","OCQ"],[1,"HCY","OFQ"]]] | ["six","OQHCFY"] |
| 51 | ["balance",[[1,"HCF","OZQ"],[1,"CFZ","OHQ"],[1,"HFZ","OCQ"],[-1,"HCZ","OFQ"]]] | ["six","OQHCFZ"] |
| 52 | ["balance",[[-1,"HCY","OPQ"],[1,"CYP","OHQ"],[-1,"HYP","OCQ"],[-1,"HCP","OYQ"]]] | ["six","OQHCYP"] |
| 53 | ["balance",[[-1,"OFP","HDQ"],[1,"FPQ","OHD"],[-1,"OPQ","HDF"],[-1,"OFQ","HDP"]]] | ["six","HDOFPQ"] |
| 54 | ["balance",[[1,"OCF","HYZ"],[-1,"CFZ","OHY"],[-1,"OFZ","HCY"],[-1,"OCZ","HFY"]]] | ["six","HYOCFZ"] |
| 55 | ["balance",[[1,"ODF","HYQ"],[1,"DFQ","OHY"],[-1,"OFQ","HDY"],[1,"ODQ","HFY"]]] | ["six","HYODFQ"] |
| 56 | ["balance",[[-1,"OFY","HZQ"],[1,"FYQ","OHZ"],[-1,"OYQ","HFZ"],[-1,"OFQ","HYZ"]]] | ["six","HZOFYQ"] |
| 57 | ["balance",[[-1,"CDF","HZP"],[1,"DFZ","HCP"],[-1,"CFZ","HDP"],[-1,"CDZ","HFP"]]] | ["six","HPCDFZ"] |
| 58 | ["balance",[[-1,"HYZ","CDQ"],[-1,"YZQ","HCD"],[1,"HZQ","CDY"],[-1,"HYQ","CDZ"]]] | ["six","CDHYZQ"] |
| 59 | ["balance",[[1,"OYZ","CPQ"],[-1,"YZQ","OCP"],[-1,"OZQ","CYP"],[-1,"OYQ","CZP"]]] | ["six","CPOYZQ"] |
| 60 | ["balance",[[-1,"HCD","FYZ"],[1,"CDY","HFZ"],[1,"HDY","CFZ"],[1,"HCY","DFZ"]]] | ["six","FZHCDY"] |
| 61 | ["balance",[[-1,"OHD","FPQ"],[1,"HDQ","OFP"],[1,"ODQ","HFP"],[1,"OHQ","DFP"]]] | ["six","FPOHDQ"] |
| 62 | ["balance",[[1,"HCD","FYP"],[1,"CDY","HFP"],[-1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 63 | ["balance",[[-1,"HCY","FPQ"],[-1,"CYQ","HFP"],[1,"HYQ","CFP"],[-1,"HCQ","FYP"]]] | ["six","FPHCYQ"] |
| 64 | ["balance",[[1,"HYZ","FPQ"],[1,"YZQ","HFP"],[1,"HZQ","FYP"],[-1,"HYQ","FZP"]]] | ["six","FPHYZQ"] |
| 65 | ["balance",[[-1,"OHD","YZQ"],[-1,"HDQ","OYZ"],[-1,"ODQ","HYZ"],[1,"OHQ","DYZ"]]] | ["six","YZOHDQ"] |
| 66 | ["balance",[[-1,"HCD","FYP"],[-1,"CDF","HYP"],[-1,"HDF","CYP"],[1,"HCF","DYP"]]] | ["six","YPHCDF"] |
| 67 | ["balance",[[-1,"CDF","YZQ"],[1,"DFZ","CYQ"],[-1,"CFZ","DYQ"],[-1,"CDZ","FYQ"]]] | ["six","YQCDFZ"] |
| 68 | ["balance",[[-1,"OHD","FZQ"],[1,"HDF","OZQ"],[1,"ODF","HZQ"],[1,"OHF","DZQ"]]] | ["six","ZQOHDF"] |
| 69 | ["balance",[[1,"OCF","YZQ"],[1,"CFY","OZQ"],[1,"OFY","CZQ"],[-1,"OCY","FZQ"]]] | ["six","ZQOCFY"] |
| 70 | ["balance",[[1,"HCD","FZQ"],[-1,"CDF","HZQ"],[-1,"HDF","CZQ"],[-1,"HCF","DZQ"]]] | ["six","ZQHCDF"] |
| 71 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 72 | ["balance",[[1,"HCF","YZQ"],[-1,"CFY","HZQ"],[1,"HFY","CZQ"],[1,"HCY","FZQ"]]] | ["six","ZQHCFY"] |
| 73 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 74 | ["linear",{"OHF":1,"OFP":-1,"OHP":-1,"HFP":-1},"0"] | ["affine_quad","OHFP",-1] |
| 75 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 76 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 77 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 78 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 79 | ["linear",{"OCY":-1,"OYP":-1,"OCP":1,"CYP":-1},"0"] | ["affine_quad","OCYP",-1] |
| 80 | ["linear",{"OCP":-1,"OPQ":1,"OCQ":1,"CPQ":-1},"0"] | ["affine_quad","OCPQ",-1] |
| 81 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 82 | ["linear",{"ODY":-1,"OYP":-1,"ODP":1,"DYP":-1},"0"] | ["affine_quad","ODYP",-1] |
| 83 | ["linear",{"ODP":-1,"OPQ":1,"ODQ":-1,"DPQ":1},"0"] | ["affine_quad","ODPQ",-1] |
| 84 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 85 | ["linear",{"OFY":-1,"OYQ":-1,"OFQ":1,"FYQ":-1},"0"] | ["affine_quad","OFYQ",1] |
| 86 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 87 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 88 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 89 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 90 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 91 | ["linear",{"HFY":1,"HYP":-1,"HFP":-1,"FYP":-1},"0"] | ["affine_quad","HFYP",-1] |
| 92 | ["linear",{"HFZ":1,"HZQ":-1,"HFQ":-1,"FZQ":1},"0"] | ["affine_quad","HFZQ",-1] |
| 93 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 94 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 95 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 96 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 97 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 98 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 99 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["CDF",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DF"] |
| 100 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["CDQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DQ"] |
| 101 | ["bary",["CPQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CQ"] |
| 102 | ["bary",["OCP",1],[null,["OHC",1],["OCF",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","OC"] |
| 103 | ["bary",["OPQ",1],[null,["OHQ",1],["OFQ",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","OQ"] |
| 104 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],["DFQ",-1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","DQ"] |
| 105 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DQ"] |
| 106 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["FZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FQ"] |
| 107 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 108 | ["bary",["DZQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHQ",["HZQ","OZQ","OHZ"]] | ["bary","OHQ","Z","DQ"] |
| 109 | ["bary",["CDY",1],[["OCD",1],null,["CDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","CD"] |
| 110 | ["bary",["OYQ",1],[null,["OCQ",-1],["OPQ",1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","OQ"] |
| 111 | ["bary",["CYQ",1],[["OCQ",1],null,["CPQ",1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","CQ"] |
| 112 | ["bary",["DFY",1],[["ODF",1],["CDF",1],["DFP",1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","DF"] |
| 113 | ["bary",["FYQ",-1],[["OFQ",-1],["CFQ",-1],["FPQ",-1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","FQ"] |
| 114 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 115 | ["bary",["OHY",-1],[null,["OHF",-1],["OHQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OH"] |
| 116 | ["bary",["OYP",-1],[null,["OFP",-1],["OPQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OP"] |
| 117 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 118 | ["bary",["HFY",-1],[["OHF",-1],null,["HFQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HF"] |
| 119 | ["bary",["CFY",1],[["OCF",1],null,["CFQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","CF"] |
| 120 | ["bary",["FYQ",-1],[["OFQ",-1],null,null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","FQ"] |
| 121 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 122 | ["bary",["HZQ",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HQ"] |
| 123 | ["bary",["DFZ",1],[["ODF",1],["DFY",1],["DFQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DF"] |
| 124 | ["bary",["DZP",1],[["ODP",1],["DYP",1],["DPQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DP"] |
| 125 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 126 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |
| 127 | ["bary",["OCP",1],[["OHC",1],null,["OCF",1]],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","OC"] |
| 128 | ["bary",["OPQ",1],[["OHQ",1],["OCQ",-1],["OFQ",1]],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","OQ"] |
| 129 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","DF"] |
| 130 | ["bary",["OHP",-1],[null,["OHD",-1],["OHZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","OH"] |
| 131 | ["bary",["HCP",1],[null,["HCD",1],["HCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HC"] |
| 132 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 133 | ["bary",["DPQ",-1],[["HDQ",-1],null,["DZQ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","DQ"] |
| 134 | ["bary",["CDP",1],[["HCD",1],["CDF",1],["CDY",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","CD"] |
| 135 | ["bary",["CZP",1],[["HCZ",1],["CFZ",1],["CYZ",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","CZ"] |
| 136 | ["bary",["OHP",-1],[null,["OHF",-1],["OHZ",-1]],"HFZ",["FZP","HZP","HFP"]] | ["bary","HFZ","P","OH"] |
| 137 | ["bary",["HYP",1],[null,["HFY",1],["HYZ",1]],"HFZ",["FZP","HZP","HFP"]] | ["bary","HFZ","P","HY"] |
| 138 | ["bary",["OZQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OQ"] |
| 139 | ["bary",["HCZ",1],[null,["HCD",1],["HCF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HC"] |
| 140 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HD"] |
| 141 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HF"] |
| 142 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 143 | ["bary",["CYZ",-1],[null,["CDY",-1],["CFY",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","CY"] |
| 144 | ["bary",["CZQ",1],[null,["CDQ",1],["CFQ",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","CQ"] |
| 145 | ["bary",["DFZ",1],[["CDF",1],null,null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DF"] |
| 146 | ["bary",["DYZ",1],[["CDY",1],null,["DFY",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DY"] |
| 147 | ["bary",["FZP",1],[["CFP",1],["DFP",1],["FYP",1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","FP"] |
| 148 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 149 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 150 | ["bary",["HDZ",-1],[["HCD",-1],["HDY",-1],["HDQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HD"] |
| 151 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 152 | ["bary",["FZP",1],[["CFP",1],["FYP",1],["FPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","FP"] |
| 153 | ["bary",["DFZ",1],[["CDF",1],["DFY",1],["DFR",1]],"CYR",["YZR","CZR","CYZ"]] | ["bary","CYR","Z","DF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 407/500 | hi_OHD,lo_ODY,lo_OHY |
| s10 | 3 | sub | HYQ | hi | 157/250 | hi_OHQ,lo_OHY,lo_OYQ |
| s18 | 5 | sub | CFY | hi | 449/1000 | hi_OCF,lo_OCY,lo_OFY |
| s20 | 6 | sub | OCY | hi | 77989/200000 | hi_OCP,lo_CYP,lo_OYP |
| s28 | 7 | sub | FYQ | hi | 30719/50000 | hi_OFQ,lo_OFY,lo_OYQ |
| s38 | 10 | sub | HDZ | hi | 788053/1000000 | hi_HCD,lo_CDZ,lo_HCZ |
| s78 | 20 | sumlo | OHY | lo | 144349/1000000 | lo_OFY,lo_OHQ,lo_OHF,lo_OYQ,hi_OFQ |
| s80 | 21 | sumlo | ODP | lo | 363791/1000000 | lo_ODF,lo_OPQ,lo_ODQ,lo_OFP,hi_OFQ |
| s83 | 22 | sumlo | HFQ | lo | 113077/1000000 | lo_HDF,lo_OHQ,lo_HDQ,lo_OHF,hi_OHD |
| s85 | 23 | sumlo | OHP | lo | 57413/500000 | lo_HDP,lo_OHZ,lo_HZP,lo_OHD,s38 |
| s87 | 25 | sumlo | HDY | lo | 318543/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,hi_HCF |
| s91 | 31 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s112 | 34 | sumlo | HYQ | lo | 169819/1000000 | lo_CYQ,s78,lo_HCY,lo_OYQ,s20 |
| s113 | 34 | sumlo | OCY | lo | 52723/500000 | lo_CYQ,s78,lo_HCY,lo_OYQ,s10 |
| s114 | 35 | sumlo | FYQ | lo | 208539/1000000 | lo_HFY,lo_OYQ,s112,lo_OFY,hi_OHY |
| s115 | 35 | sumlo | OHY | lo | 38101/250000 | lo_HFY,lo_OYQ,s112,lo_OFY,s28 |
| s118 | 38 | sumlo | HYQ | lo | 216559/1000000 | lo_CYQ,lo_HFY,s114,lo_HCY,s18 |
| s125 | 43 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s136 | 45 | balance_lo | FYQ | lo | 11839/40000 | lo_HFY,lo_ODQ,s118,lo_ODF,s83,lo_ODY,hi_OHD |
| s140 | 46 | balance_lo | HYQ | lo | 3339/12500 | lo_HCY,lo_OFQ,lo_CYQ,lo_OHF,s91,lo_OFY,hi_OCF |
| s151 | 48 | balance_lo | CDY | lo | 17987/62500 | lo_HCD,lo_OYQ,s87,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s152 | 50 | balance_lo | CFY | lo | 16833/100000 | lo_HCF,lo_OYQ,lo_HFY,lo_OCQ,lo_HCY,lo_OFQ,hi_OHQ |
| s153 | 51 | balance_lo | HCZ | lo | 118043/1000000 | lo_HCF,lo_OZQ,lo_CFZ,lo_OHQ,lo_HFZ,lo_OCQ,hi_OFQ |
| s154 | 52 | balance_lo | CYP | lo | 49569/500000 | lo_HCY,lo_OPQ,lo_HYP,lo_OCQ,lo_HCP,lo_OYQ,hi_OHQ |
| s165 | 53 | balance_lo | FPQ | lo | 72631/500000 | lo_OFP,lo_HDQ,lo_OPQ,lo_HDF,lo_OFQ,lo_HDP,hi_OHD |
| s167 | 54 | balance_lo | HYZ | lo | 104043/1000000 | lo_CFZ,s115,lo_OFZ,lo_HCY,lo_OCZ,lo_HFY,hi_OCF |
| s168 | 55 | balance_lo | HDY | lo | 162753/500000 | lo_ODF,s140,lo_DFQ,s115,lo_ODQ,lo_HFY,hi_OFQ |
| s172 | 58 | balance_lo | HZQ | lo | 3159/20000 | s167,lo_CDQ,lo_YZQ,lo_HCD,s140,lo_CDZ,hi_CDY |
| s182 | 62 | balance_lo | CFP | lo | 24559/200000 | lo_HCD,lo_FYP,s151,lo_HFP,lo_HCY,lo_DFP,s1 |
| s183 | 65 | balance_lo | DYZ | lo | 76463/500000 | lo_OHD,lo_YZQ,lo_HDQ,lo_OYZ,lo_ODQ,s167,hi_OHQ |
| s186 | 66 | balance_lo | DYP | lo | 169617/1000000 | lo_HCD,lo_FYP,lo_CDF,lo_HYP,lo_HDF,s154,hi_HCF |
| s188 | 68 | balance_lo | FZQ | lo | 153469/1000000 | lo_HDF,lo_OZQ,lo_ODF,s172,lo_OHF,lo_DZQ,hi_OHD |
| s189 | 71 | balance_lo | HZQ | lo | 161083/1000000 | lo_HCD,lo_YZQ,s168,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s200 | 73 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s203 | 75 | linear | OHZ | lo | 349447/1000000 | s167,s115,lo_OYZ |
| s205 | 76 | linear | OHQ | lo | 174631/250000 | s140,s115,lo_OYQ |
| s206 | 76 | linear | HYQ | hi | 142149/250000 | hi_OHQ,s115,lo_OYQ |
| s212 | 78 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s220 | 81 | linear | DFQ | lo | 5267/40000 | lo_ODF,lo_ODQ,hi_OFQ |
| s237 | 89 | linear | HCF | lo | 61759/200000 | s182,lo_HCP,lo_HFP |
| s244 | 90 | linear | HDY | lo | 355617/1000000 | s186,lo_HDP,lo_HYP |
| s249 | 94 | linear | CDY | lo | 169463/500000 | lo_CDZ,lo_CYZ,s183 |
| s252 | 95 | linear | CFQ | lo | 339469/1000000 | lo_CFZ,lo_CZQ,s188 |
| s261 | 96 | linear | OHC | lo | 367/1000 | s212 |
| s262 | 97 | linear | HCD | hi | 907/1000 | lo_HDF |
| s263 | 98 | linear | CDF | hi | 138241/200000 | s237 |
| s269 | 99 | bary_lo | DFY | lo | 103383/500000 | hi_OHC,lo_HCY,s113,s115,lo_ODF,lo_HDF,lo_CDF |
| s272 | 100 | bary_hi | DYQ | lo | 357879/1000000 | hi_OHC,lo_HCY,s113,s115,lo_ODQ,s200,lo_CDQ |
| s295 | 101 | bary_hi | CPQ | hi | 709473/1000000 | hi_OHD,lo_HDP,s80,s85,hi_OCQ,s125,hi_CDQ |
| s304 | 102 | bary_hi | OCP | hi | 271/500 | hi_OHF,lo_HFP,lo_OFP,s85,hi_OHC,hi_OCF |
| s305 | 103 | bary_hi | OPQ | hi | 851081/1000000 | hi_OHF,lo_HFP,lo_OFP,s85,hi_OHQ,hi_OFQ |
| s311 | 104 | bary_hi | DPQ | lo | 251571/1000000 | hi_OHF,lo_HFP,lo_OFP,s85,lo_ODQ,s200,s220 |
| s317 | 107 | bary_lo | OCY | lo | 58283/500000 | hi_OHQ,s140,lo_OYQ,s115,s261,lo_OCQ |
| s337 | 108 | bary_lo | DZQ | hi | 50183/100000 | hi_OHQ,s189,lo_OZQ,s203,hi_ODQ,hi_HDQ |
| s351 | 109 | bary_hi | CDY | hi | 27971/50000 | hi_OCF,s152,lo_OFY,s317,hi_OCD,s263 |
| s361 | 110 | bary_hi | OYQ | hi | 533417/1000000 | s304,s154,lo_OYP,s317,lo_OCQ,s305 |
| s364 | 111 | bary_hi | CYQ | hi | 122997/250000 | s304,s154,lo_OYP,s317,hi_OCQ,s295 |
| s369 | 114 | bary_lo | OHZ | hi | 633157/1000000 | hi_ODQ,lo_DZQ,lo_OZQ,lo_ODZ,hi_OHD,hi_OHQ |
| s413 | 117 | bary_lo | HDY | hi | 5357/8000 | hi_OFQ,s136,lo_OYQ,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s414 | 118 | bary_lo | HFY | hi | 28949/62500 | hi_OFQ,s136,lo_OYQ,lo_OFY,hi_OHF,hi_HFQ |
| s416 | 119 | bary_hi | CFY | hi | 45439/125000 | hi_OFQ,s136,lo_OYQ,lo_OFY,hi_OCF,s252 |
| s424 | 121 | bary_hi | HDZ | lo | 420259/1000000 | s361,lo_YZQ,lo_OZQ,lo_OYZ,lo_OHD,s244,s200 |
| s425 | 122 | bary_hi | HZQ | lo | 168357/1000000 | s361,lo_YZQ,lo_OZQ,lo_OYZ,s205,s140 |
| s426 | 123 | bary_lo | DFZ | lo | 97871/500000 | s361,lo_YZQ,lo_OZQ,lo_OYZ,lo_ODF,s269,s220 |
| s427 | 124 | bary_lo | DZP | lo | 217759/1000000 | s361,lo_YZQ,lo_OZQ,lo_OYZ,s80,s186,s311 |
| s440 | 125 | bary_lo | HDZ | hi | 695957/1000000 | s262,lo_CDZ,s424,s153,s262 |
| s470 | 128 | bary_hi | OPQ | hi | 837929/1000000 | hi_HCF,s182,lo_HFP,lo_HCP,hi_OHQ,lo_OCQ,hi_OFQ |
| s492 | 130 | bary_hi | OHP | lo | 69717/500000 | s440,s427,lo_HZP,lo_HDP,lo_OHD,s203 |
| s497 | 131 | bary_lo | HCP | lo | 3391/31250 | s440,s427,lo_HZP,lo_HDP,lo_HCD,s153 |
| s501 | 132 | bary_hi | CYP | lo | 62931/500000 | s440,s427,lo_HZP,lo_HDP,lo_HCY,s249,lo_CYZ |
| s506 | 133 | bary_lo | DPQ | hi | 79363/125000 | s440,s427,lo_HZP,lo_HDP,hi_HDQ,s337 |
| s518 | 134 | bary_lo | CDP | lo | 207727/500000 | s414,lo_FYP,lo_HYP,lo_HFP,lo_HCD,lo_CDF,s249 |
| s519 | 135 | bary_lo | CZP | lo | 24507/250000 | s414,lo_FYP,lo_HYP,lo_HFP,s153,lo_CFZ,lo_CYZ |
| s534 | 139 | bary_lo | HCZ | lo | 134923/1000000 | s263,s426,lo_CFZ,lo_CDZ,lo_HCD,s237 |
| s535 | 140 | bary_lo | HDZ | hi | 325209/500000 | s263,s426,lo_CFZ,lo_CDZ,s262,lo_HDF |
| s537 | 142 | bary_lo | HYZ | lo | 1917/12500 | s263,s426,lo_CFZ,lo_CDZ,lo_HCY,s244,lo_HFY |
| s596 | 151 | bary_lo | DZP | lo | 231579/1000000 | s364,lo_YZQ,lo_CZQ,lo_CYZ,s518,s186,s311 |
| s598 | 152 | bary_lo | FZP | lo | 108511/1000000 | s364,lo_YZQ,lo_CZQ,lo_CYZ,s182,lo_FYP,s165 |
| s633 | 1 | sum | OHF | lo | 162717/500000 | lo_HFP,lo_OFP,s492 |
| s634 | 2 | sum | OHZ | lo | 99691/250000 | s537,s115,lo_OYZ |
| s638 | 6 | sum | OCP | lo | 83857/250000 | s501,s317,lo_OYP |
| s645 | 9 | sub | YPQ | hi | 465929/1000000 | s470,lo_OYP,lo_OYQ |
| s648 | 11 | sum | HCF | lo | 324307/1000000 | s182,s497,lo_HFP |
| s649 | 12 | sum | HCQ | lo | 9907/25000 | lo_CZQ,s534,s425 |
| s653 | 15 | sum | HFZ | lo | 294511/1000000 | s598,lo_HFP,lo_HZP |
| s655 | 16 | sum | CDF | lo | 190871/500000 | lo_CDZ,lo_CFZ,s426 |
| s656 | 18 | sum | CDP | lo | 422607/1000000 | lo_CDZ,s519,s596 |
| s665 | 23 | sumlo | OHP | lo | 19531/125000 | lo_HDP,s634,lo_HZP,lo_OHD,s535 |
| s666 | 26 | sumlo | HCP | lo | 118523/1000000 | lo_HCD,lo_HZP,s534,lo_HDP,s535 |
| s668 | 27 | sumlo | HFQ | lo | 199759/1000000 | lo_HDF,s425,s200,s653,s535 |
| s670 | 30 | sumlo | HCZ | lo | 13701/100000 | lo_CDZ,s648,lo_CFZ,lo_HCD,s263 |
| s675 | 35 | sumlo | OHY | lo | 41783/250000 | lo_HFY,lo_OYQ,s140,lo_OFY,s28 |
| s677 | 36 | sumlo | OCY | lo | 26211/200000 | s501,lo_OYQ,lo_CYQ,lo_OYP,s645 |
| s678 | 38 | sumlo | CFY | lo | 18531/100000 | lo_CYQ,lo_HFY,s136,lo_HCY,s206 |
| s679 | 38 | sumlo | HYQ | lo | 289857/1000000 | lo_CYQ,lo_HFY,s136,lo_HCY,s416 |
| s689 | 44 | sumhi | CPQ | hi | 338633/500000 | hi_CDQ,s470,s506,hi_OCQ,lo_ODQ |
| s691 | 45 | balance_lo | FYQ | lo | 167559/500000 | lo_HFY,lo_ODQ,s679,lo_ODF,s668,lo_ODY,hi_OHD |
| s692 | 46 | balance_lo | HYQ | lo | 37833/125000 | lo_HCY,lo_OFQ,lo_CYQ,s633,s649,lo_OFY,hi_OCF |
| s693 | 47 | balance_lo | DYP | lo | 97791/500000 | s249,lo_OFP,s501,lo_ODF,s656,lo_OFY,hi_OCF |
| s703 | 58 | balance_lo | HZQ | lo | 121087/500000 | s537,lo_CDQ,lo_YZQ,lo_HCD,s692,lo_CDZ,s351 |
| s708 | 59 | balance_lo | OYZ | lo | 4149/40000 | lo_YZQ,s638,lo_OZQ,s501,lo_OYQ,s519,s689 |
| s711 | 61 | balance_lo | FPQ | lo | 41397/250000 | s200,lo_OFP,lo_ODQ,lo_HFP,s205,lo_DFP,hi_OHD |
| s712 | 62 | balance_lo | CFP | lo | 39093/250000 | lo_HCD,lo_FYP,s249,lo_HFP,lo_HCY,lo_DFP,s413 |
| s713 | 65 | balance_lo | DYZ | lo | 211219/1000000 | lo_OHD,lo_YZQ,s200,s708,lo_ODQ,s537,hi_OHQ |
| s715 | 67 | balance_lo | DFZ | lo | 50789/250000 | s655,lo_YZQ,lo_CFZ,s272,lo_CDZ,s691,s364 |
| s718 | 70 | balance_lo | FZQ | lo | 105611/500000 | s655,s703,lo_HDF,lo_CZQ,s648,lo_DZQ,s262 |
| s723 | 74 | linear | OHF | lo | 42781/125000 | lo_HFP,lo_OFP,s665 |
| s725 | 75 | linear | OHZ | lo | 424217/1000000 | s537,s675,s708 |
| s731 | 77 | linear | OHQ | lo | 759391/1000000 | s703,s725,lo_OZQ |
| s737 | 79 | linear | OCP | lo | 349917/1000000 | s501,s677,lo_OYP |
| s738 | 80 | linear | CPQ | hi | 168503/250000 | s737,hi_OCQ,s470 |
| s740 | 82 | linear | ODP | lo | 190791/500000 | s693,lo_ODY,lo_OYP |
| s745 | 87 | linear | OYQ | lo | 11589/40000 | s708,lo_OZQ,lo_YZQ |
| s751 | 89 | linear | HCF | lo | 73579/200000 | s712,s666,lo_HFP |
| s754 | 90 | linear | HDY | lo | 190791/500000 | s693,lo_HDP,lo_HYP |
| s755 | 93 | linear | CDF | lo | 97289/250000 | lo_CDZ,lo_CFZ,s715 |
| s756 | 94 | linear | CDY | lo | 397219/1000000 | lo_CDZ,lo_CYZ,s713 |
| s758 | 95 | linear | CFQ | lo | 198611/500000 | lo_CFZ,lo_CZQ,s718 |
| s763 | 98 | linear | HCF | hi | 152711/250000 | s755 |
| s764 | 98 | linear | CDF | hi | 126421/200000 | s751 |
| s777 | 105 | bary_hi | DYQ | lo | 3179/8000 | s369,s537,s708,s675,lo_ODQ,s200,lo_DZQ |
| s793 | 109 | bary_hi | CDY | hi | 523141/1000000 | hi_OCF,s678,lo_OFY,s677,hi_OCD,s764 |
| s797 | 110 | bary_hi | OYQ | hi | 120903/250000 | s304,s501,lo_OYP,s677,lo_OCQ,s470 |
| s800 | 111 | bary_hi | CYQ | hi | 111259/250000 | s304,s501,lo_OYP,s677,hi_OCQ,s738 |
| s802 | 112 | bary_lo | DFY | lo | 220693/1000000 | s304,s501,lo_OYP,s677,lo_ODF,s755,lo_DFP |
| s817 | 115 | bary_hi | OHY | lo | 1377/8000 | hi_OFQ,s691,s745,lo_OFY,s723,s731 |
| s819 | 117 | bary_lo | HDY | hi | 32887/50000 | hi_OFQ,s691,s745,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s820 | 118 | bary_lo | HFY | hi | 91067/200000 | hi_OFQ,s691,s745,lo_OFY,hi_OHF,hi_HFQ |
| s826 | 120 | bary_lo | FYQ | hi | 120731/200000 | hi_OFQ,s691,s745,lo_OFY,hi_OFQ |
| s830 | 123 | bary_lo | DFZ | lo | 102509/500000 | s797,lo_YZQ,lo_OZQ,s708,lo_ODF,s802,s220 |
| s831 | 124 | bary_lo | DZP | lo | 121679/500000 | s797,lo_YZQ,lo_OZQ,s708,s740,s693,s311 |
| s855 | 127 | bary_hi | OCP | hi | 538323/1000000 | s763,s712,lo_HFP,s666,hi_OHC,hi_OCF |
| s857 | 128 | bary_hi | OPQ | hi | 16619/20000 | s763,s712,lo_HFP,s666,hi_OHQ,lo_OCQ,hi_OFQ |
| s862 | 130 | bary_hi | OHP | lo | 9993/62500 | s535,s831,lo_HZP,lo_HDP,lo_OHD,s725 |
| s867 | 131 | bary_lo | HCP | lo | 118821/1000000 | s535,s831,lo_HZP,lo_HDP,lo_HCD,s670 |
| s871 | 132 | bary_hi | CYP | lo | 68249/500000 | s535,s831,lo_HZP,lo_HDP,lo_HCY,s756,lo_CYZ |
| s883 | 134 | bary_lo | CDP | lo | 90613/200000 | s820,lo_FYP,lo_HYP,lo_HFP,lo_HCD,s755,s756 |
| s884 | 135 | bary_lo | CZP | lo | 25497/250000 | s820,lo_FYP,lo_HYP,lo_HFP,s670,lo_CFZ,lo_CYZ |
| s897 | 139 | bary_lo | HCZ | lo | 156233/1000000 | s764,s830,lo_CFZ,lo_CDZ,lo_HCD,s751 |
| s898 | 140 | bary_lo | HDZ | hi | 156607/250000 | s764,s830,lo_CFZ,lo_CDZ,s262,lo_HDF |
| s900 | 142 | bary_lo | HYZ | lo | 20353/125000 | s764,s830,lo_CFZ,lo_CDZ,lo_HCY,s754,lo_HFY |
| s904 | 144 | bary_lo | CZQ | lo | 9949/100000 | s764,s830,lo_CFZ,lo_CDZ,lo_CDQ,s758 |
| s905 | 145 | bary_hi | DFZ | hi | 89221/200000 | s764,s830,lo_CFZ,lo_CDZ,s764 |
| s906 | 146 | bary_hi | DYZ | hi | 67347/200000 | s764,s830,lo_CFZ,lo_CDZ,s793,s802 |
| s928 | 148 | bary_lo | CYR | hi | 48751/125000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s793,s800 |
| s931 | 149 | bary_lo | DFR | lo | 57663/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s755,s220 |
| s941 | 150 | bary_hi | HDZ | lo | 448209/1000000 | s800,lo_YZQ,s904,lo_CYZ,lo_HCD,s754,s200 |
| s944 | 151 | bary_lo | DZP | lo | 8159/31250 | s800,lo_YZQ,s904,lo_CYZ,s883,s693,s311 |
| s945 | 152 | bary_lo | FZP | lo | 121411/1000000 | s800,lo_YZQ,s904,lo_CYZ,s712,lo_FYP,s711 |
| s949 | 153 | bary_lo | DFZ | lo | 51437/250000 | s928,lo_YZR,lo_CZR,lo_CYZ,s755,s802,s931 |
| s966 | 1 | sum | OHF | lo | 10809/31250 | lo_HFP,lo_OFP,s862 |
| s967 | 2 | sum | OHZ | lo | 219337/500000 | s900,s817,s708 |
| s970 | 3 | sub | HYQ | hi | 10763/20000 | hi_OHQ,s817,s745 |
| s971 | 4 | sum | OHQ | lo | 96731/125000 | s703,s967,lo_OZQ |
| s972 | 4 | sub | HZQ | hi | 234163/500000 | hi_OHQ,s967,lo_OZQ |
| s979 | 7 | sum | OFQ | lo | 717843/1000000 | s691,lo_OFY,s745 |
| s982 | 9 | sub | YPQ | hi | 17929/40000 | s857,lo_OYP,s745 |
| s983 | 10 | sum | HCD | lo | 348721/500000 | lo_CDZ,s897,s941 |
| s984 | 11 | sum | HCF | lo | 368193/1000000 | s712,s867,lo_HFP |
| s985 | 12 | sum | HCQ | lo | 497897/1000000 | s904,s897,s703 |
| s989 | 15 | sum | HFZ | lo | 307411/1000000 | s945,lo_HFP,lo_HZP |
| s992 | 16 | sum | CDF | lo | 97937/250000 | lo_CDZ,lo_CFZ,s949 |
| s993 | 18 | sum | CDP | lo | 114019/250000 | lo_CDZ,s884,s944 |
| s995 | 19 | sum | CYQ | lo | 28549/100000 | lo_CYZ,s904,lo_YZQ |
| s1003 | 23 | sumlo | OHP | lo | 168157/1000000 | lo_HDP,s967,lo_HZP,lo_OHD,s898 |
| s1005 | 26 | sumlo | HCP | lo | 126737/1000000 | s983,lo_HZP,s897,lo_HDP,s898 |
| s1016 | 35 | sumlo | OHY | lo | 36107/200000 | lo_HFY,s745,s692,lo_OFY,s826 |
| s1018 | 36 | sumlo | OCY | lo | 18433/125000 | s871,s745,s995,lo_OYP,s982 |
| s1019 | 38 | sumlo | CFY | lo | 205923/1000000 | s995,lo_HFY,s691,lo_HCY,s970 |
| s1022 | 39 | sumlo | OYZ | lo | 23889/200000 | s900,lo_OZQ,s967,lo_YZQ,s972 |
| s1024 | 40 | sumlo | HCZ | lo | 39381/250000 | lo_CDZ,s989,lo_CFZ,s941,s905 |
| s1025 | 41 | sumlo | CZQ | lo | 106111/1000000 | lo_CDZ,s703,lo_DZQ,s1024,s898 |
| s1028 | 42 | sumlo | HZQ | lo | 129347/500000 | lo_DZQ,s900,s941,lo_YZQ,s906 |
| s1032 | 46 | balance_lo | HYQ | lo | 333561/1000000 | lo_HCY,s979,s995,s966,s985,lo_OFY,hi_OCF |
| s1033 | 47 | balance_lo | DYP | lo | 54031/250000 | s756,lo_OFP,s871,lo_ODF,s993,lo_OFY,hi_OCF |
| s1037 | 56 | balance_lo | FYQ | lo | 363267/1000000 | lo_OFY,s1028,s745,s989,s979,s900,s369 |
| s1040 | 58 | balance_lo | HZQ | lo | 6753/25000 | s900,lo_CDQ,lo_YZQ,s983,s1032,lo_CDZ,s793 |
| s1046 | 61 | balance_lo | FPQ | lo | 172593/1000000 | s200,lo_OFP,lo_ODQ,lo_HFP,s971,lo_DFP,hi_OHD |
| s1047 | 62 | balance_lo | CFP | lo | 167927/1000000 | s983,lo_FYP,s756,lo_HFP,lo_HCY,lo_DFP,s819 |
| s1048 | 65 | balance_lo | DYZ | lo | 111943/500000 | lo_OHD,lo_YZQ,s200,s1022,lo_ODQ,s900,hi_OHQ |
| s1049 | 67 | balance_lo | DFZ | lo | 240817/1000000 | s992,lo_YZQ,lo_CFZ,s777,lo_CDZ,s1037,s800 |
| s1052 | 70 | balance_lo | FZQ | lo | 30101/125000 | s992,s1040,lo_HDF,s1025,s984,lo_DZQ,s262 |
| s1059 | 74 | linear | OHF | lo | 354157/1000000 | lo_HFP,lo_OFP,s1003 |
| s1061 | 75 | linear | OHZ | lo | 115701/250000 | s900,s1016,s1022 |
| s1065 | 77 | linear | OHQ | lo | 206481/250000 | s1040,s1061,lo_OZQ |
| s1071 | 79 | linear | OCP | lo | 188481/500000 | s871,s1018,lo_OYP |
| s1072 | 80 | linear | CPQ | hi | 159997/250000 | s1071,hi_OCQ,s857 |
| s1073 | 82 | linear | ODP | lo | 100531/250000 | s1033,lo_ODY,lo_OYP |
| s1074 | 83 | linear | DPQ | lo | 132587/500000 | s1073,lo_ODQ,s857 |
| s1076 | 85 | linear | OFQ | lo | 93249/125000 | s1037,lo_OFY,s745 |
| s1079 | 87 | linear | OYQ | lo | 61089/200000 | s1022,lo_OZQ,lo_YZQ |
| s1083 | 88 | linear | HCD | lo | 698733/1000000 | lo_CDZ,s1024,s941 |
| s1084 | 89 | linear | HCF | lo | 24229/62500 | s1047,s1005,lo_HFP |
| s1087 | 90 | linear | HDY | lo | 100531/250000 | s1033,lo_HDP,lo_HYP |
| s1089 | 93 | linear | CDF | lo | 426817/1000000 | lo_CDZ,lo_CFZ,s1049 |
| s1091 | 94 | linear | CDY | lo | 204943/500000 | lo_CDZ,lo_CYZ,s1048 |
| s1093 | 95 | linear | CFQ | lo | 439919/1000000 | lo_CFZ,s1025,s1052 |
| s1101 | 97 | linear | HDF | hi | 301267/1000000 | s1083 |
| s1102 | 98 | linear | HCF | hi | 573183/1000000 | s1089 |
| s1103 | 98 | linear | CDF | hi | 38271/62500 | s1084 |
| s1104 | 99 | bary_lo | DFY | lo | 236391/1000000 | hi_OHC,lo_HCY,s1018,s1016,lo_ODF,lo_HDF,s1089 |
| s1111 | 105 | bary_hi | DYQ | lo | 81257/200000 | s369,s900,s1022,s1016,lo_ODQ,s200,lo_DZQ |
| s1129 | 109 | bary_hi | CDY | hi | 102171/200000 | hi_OCF,s1019,lo_OFY,s1018,hi_OCD,s1103 |
| s1134 | 110 | bary_hi | OYQ | hi | 460633/1000000 | s855,s871,lo_OYP,s1018,lo_OCQ,s857 |
| s1136 | 111 | bary_hi | CYQ | hi | 414311/1000000 | s855,s871,lo_OYP,s1018,hi_OCQ,s1072 |
| s1138 | 113 | bary_hi | FYQ | lo | 364167/1000000 | s855,s871,lo_OYP,s1018,s1076,s1093,s1046 |
| s1148 | 115 | bary_hi | OHY | lo | 9377/50000 | hi_OFQ,s1138,s1079,lo_OFY,s1059,s1065 |
| s1149 | 116 | bary_hi | OYP | lo | 94231/1000000 | hi_OFQ,s1138,s1079,lo_OFY,lo_OFP,lo_OPQ |
| s1152 | 118 | bary_lo | HFY | hi | 444367/1000000 | hi_OFQ,s1138,s1079,lo_OFY,hi_OHF,hi_HFQ |
| s1154 | 119 | bary_hi | CFY | hi | 337017/1000000 | hi_OFQ,s1138,s1079,lo_OFY,hi_OCF,s1093 |
| s1157 | 120 | bary_lo | FYQ | hi | 117587/200000 | hi_OFQ,s1138,s1079,lo_OFY,hi_OFQ |
| s1161 | 124 | bary_lo | DZP | lo | 53279/200000 | s1134,lo_YZQ,lo_OZQ,s1022,s1073,s1033,s1074 |
| s1179 | 127 | bary_hi | OCP | hi | 531971/1000000 | s1102,s1047,lo_HFP,s1005,hi_OHC,hi_OCF |
| s1181 | 128 | bary_hi | OPQ | hi | 12807/15625 | s1102,s1047,lo_HFP,s1005,hi_OHQ,lo_OCQ,hi_OFQ |
| s1185 | 129 | bary_lo | DFP | lo | 48249/500000 | s1102,s1047,lo_HFP,s1005,lo_HDF,s1089 |
| s1190 | 130 | bary_hi | OHP | lo | 8587/50000 | s898,s1161,lo_HZP,lo_HDP,lo_OHD,s1061 |
| s1194 | 131 | bary_lo | HCP | lo | 1589/12500 | s898,s1161,lo_HZP,lo_HDP,s1083,s1024 |
| s1199 | 132 | bary_hi | CYP | lo | 28009/200000 | s898,s1161,lo_HZP,lo_HDP,lo_HCY,s1091,lo_CYZ |
| s1209 | 134 | bary_lo | CDP | lo | 473881/1000000 | s1152,lo_FYP,lo_HYP,lo_HFP,s1083,s1089,s1091 |
| s1210 | 135 | bary_lo | CZP | lo | 13313/125000 | s1152,lo_FYP,lo_HYP,lo_HFP,s1024,lo_CFZ,lo_CYZ |
| s1221 | 139 | bary_lo | HCZ | lo | 164999/1000000 | s1103,s1049,lo_CFZ,lo_CDZ,s1083,s1084 |
| s1222 | 140 | bary_lo | HDZ | hi | 61737/100000 | s1103,s1049,lo_CFZ,lo_CDZ,s262,lo_HDF |
| s1223 | 141 | bary_lo | HFZ | hi | 13901/31250 | s1103,s1049,lo_CFZ,lo_CDZ,s1102,s1101 |
| s1224 | 142 | bary_lo | HYZ | lo | 84099/500000 | s1103,s1049,lo_CFZ,lo_CDZ,lo_HCY,s1087,lo_HFY |
| s1228 | 143 | bary_hi | CYZ | lo | 93527/1000000 | s1103,s1049,lo_CFZ,lo_CDZ,s1091,s1019 |
| s1229 | 144 | bary_lo | CZQ | lo | 109187/1000000 | s1103,s1049,lo_CFZ,lo_CDZ,lo_CDQ,s1093 |
| s1230 | 145 | bary_hi | DFZ | hi | 13323/31250 | s1103,s1049,lo_CFZ,lo_CDZ,s1103 |
| s1231 | 146 | bary_hi | DYZ | hi | 159889/500000 | s1103,s1049,lo_CFZ,lo_CDZ,s1129,s1104 |
| s1265 | 150 | bary_hi | HDZ | lo | 14421/31250 | s1136,lo_YZQ,s1229,s1228,s1083,s1087,s200 |
| s1267 | 151 | bary_lo | DZP | lo | 57011/200000 | s1136,lo_YZQ,s1229,s1228,s1209,s1033,s1074 |
| s1268 | 152 | bary_lo | FZP | lo | 63893/500000 | s1136,lo_YZQ,s1229,s1228,s1047,lo_FYP,s1046 |
| s1288 | 1 | sum | OHF | lo | 17887/50000 | lo_HFP,lo_OFP,s1190 |
| s1289 | 2 | sum | OHZ | lo | 475183/1000000 | s1224,s1148,s1022 |
| s1292 | 3 | sub | HYQ | hi | 101403/200000 | hi_OHQ,s1148,s1079 |
| s1293 | 4 | sum | OHQ | lo | 838303/1000000 | s1040,s1289,lo_OZQ |
| s1294 | 4 | sub | HZQ | hi | 431817/1000000 | hi_OHQ,s1289,lo_OZQ |
| s1301 | 7 | sum | OFQ | lo | 190653/250000 | s1138,lo_OFY,s1079 |
| s1304 | 9 | sub | YPQ | hi | 104993/250000 | s1181,s1149,s1079 |
| s1305 | 10 | sum | HCD | lo | 719471/1000000 | lo_CDZ,s1221,s1265 |
| s1306 | 11 | sum | HCF | lo | 388047/1000000 | s1047,s1194,lo_HFP |
| s1307 | 12 | sum | HCQ | lo | 272153/500000 | s1229,s1221,s1040 |
| s1309 | 13 | sum | HDZ | lo | 94211/200000 | s1267,lo_HDP,lo_HZP |
| s1312 | 15 | sum | HFZ | lo | 156893/500000 | s1268,lo_HFP,lo_HZP |
| s1315 | 17 | sum | CDY | lo | 410413/1000000 | lo_CDZ,s1228,s1048 |
| s1316 | 18 | sum | CDP | lo | 484559/1000000 | lo_CDZ,s1210,s1267 |
| s1318 | 19 | sum | CYQ | lo | 147857/500000 | s1228,s1229,lo_YZQ |
| s1327 | 23 | sumlo | OHP | lo | 44031/250000 | lo_HDP,s1289,lo_HZP,lo_OHD,s1222 |
| s1329 | 27 | sumlo | HFQ | lo | 29737/125000 | lo_HDF,s1040,s200,s1312,s1222 |
| s1330 | 28 | sumlo | HYP | lo | 46747/500000 | lo_HFP,s1224,lo_HFY,lo_HZP,s1223 |
| s1332 | 29 | sumlo | CFY | lo | 219353/1000000 | s1089,lo_HCY,s1315,s1306,s262 |
| s1334 | 32 | sumlo | CYZ | lo | 95647/1000000 | s1315,lo_CFZ,lo_CDZ,s1332,s1103 |
| s1341 | 33 | sumlo | DFY | lo | 48669/200000 | s1089,lo_HFY,s1332,lo_HDF,s1102 |
| s1343 | 35 | sumlo | OHY | lo | 197709/1000000 | lo_HFY,s1079,s1032,lo_OFY,s1157 |
| s1345 | 36 | sumlo | OCY | lo | 33641/200000 | s1199,s1079,s1318,s1149,s1304 |
| s1346 | 37 | sumlo | HDY | lo | 6358/15625 | s1315,lo_HFY,s1341,lo_HCY,s1154 |
| s1347 | 38 | sumlo | CFY | lo | 229523/1000000 | s1318,lo_HFY,s1138,lo_HCY,s1292 |
| s1350 | 39 | sumlo | OYZ | lo | 34641/250000 | s1224,lo_OZQ,s1289,lo_YZQ,s1294 |
| s1351 | 40 | sumlo | HCZ | lo | 171203/1000000 | lo_CDZ,s1312,lo_CFZ,s1309,s1230 |
| s1352 | 41 | sumlo | CZQ | lo | 5903/50000 | lo_CDZ,s1040,lo_DZQ,s1351,s1222 |
| s1354 | 42 | sumlo | HZQ | lo | 8867/31250 | lo_DZQ,s1224,s1309,lo_YZQ,s1231 |
| s1356 | 46 | balance_lo | HYQ | lo | 358003/1000000 | lo_HCY,s1301,s1318,s1288,s1307,lo_OFY,hi_OCF |
| s1358 | 47 | balance_lo | DYP | lo | 224597/1000000 | s1315,lo_OFP,s1199,lo_ODF,s1316,lo_OFY,hi_OCF |
| s1363 | 56 | balance_lo | FYQ | lo | 9891/25000 | lo_OFY,s1354,s1079,s1312,s1301,s1224,s369 |
| s1364 | 57 | balance_lo | HCP | lo | 66839/500000 | s1089,lo_HZP,lo_CFZ,lo_HDP,lo_CDZ,lo_HFP,s1230 |
| s1366 | 58 | balance_lo | HZQ | lo | 288011/1000000 | s1224,lo_CDQ,lo_YZQ,s1305,s1356,lo_CDZ,s1129 |
| s1372 | 60 | balance_lo | FYZ | lo | 104201/500000 | s1315,s1312,s1346,lo_CFZ,lo_HCY,s1049,s262 |
| s1373 | 61 | balance_lo | FPQ | lo | 2269/12500 | s200,lo_OFP,lo_ODQ,lo_HFP,s1293,s1185,hi_OHD |
| s1376 | 63 | balance_lo | CFP | lo | 187377/1000000 | lo_HCY,s1373,s1318,lo_HFP,s1307,lo_FYP,s1292 |
| s1378 | 64 | balance_lo | FZP | lo | 26021/200000 | s1224,s1373,lo_YZQ,lo_HFP,s1366,lo_FYP,s1292 |
| s1379 | 65 | balance_lo | DYZ | lo | 117517/500000 | lo_OHD,lo_YZQ,s200,s1350,lo_ODQ,s1224,hi_OHQ |
| s1382 | 67 | balance_lo | DFZ | lo | 137907/500000 | s1089,lo_YZQ,lo_CFZ,s1111,lo_CDZ,s1363,s1136 |
| s1385 | 70 | balance_lo | FZQ | lo | 66751/250000 | s1089,s1366,lo_HDF,s1352,s1306,lo_DZQ,s262 |
| s1392 | 74 | linear | OHF | lo | 90531/250000 | lo_HFP,lo_OFP,s1327 |
| s1394 | 75 | linear | OHZ | lo | 504471/1000000 | s1224,s1343,s1350 |
| s1399 | 77 | linear | OHZ | hi | 618989/1000000 | s1366,hi_OHQ,lo_OZQ |
| s1401 | 77 | linear | OHQ | lo | 442741/500000 | s1366,s1394,lo_OZQ |
| s1407 | 79 | linear | OCP | lo | 402481/1000000 | s1199,s1345,s1149 |
| s1408 | 80 | linear | CPQ | hi | 603167/1000000 | s1407,hi_OCQ,s1181 |
| s1412 | 82 | linear | ODP | lo | 102957/250000 | s1358,lo_ODY,s1149 |
| s1413 | 83 | linear | DPQ | lo | 14309/50000 | s1412,lo_ODQ,s1181 |
| s1414 | 84 | linear | OFZ | lo | 219983/500000 | s1372,lo_OFY,s1350 |
| s1416 | 86 | linear | OFQ | lo | 79997/100000 | s1385,s1414,lo_OZQ |
| s1417 | 86 | linear | FZQ | hi | 226707/500000 | hi_OFQ,s1414,lo_OZQ |
| s1419 | 87 | linear | OYQ | lo | 81141/250000 | s1350,lo_OZQ,lo_YZQ |
| s1422 | 88 | linear | HCD | lo | 367629/500000 | lo_CDZ,s1351,s1309 |
| s1423 | 89 | linear | HCF | lo | 82811/200000 | s1376,s1364,lo_HFP |
| s1428 | 90 | linear | HDY | lo | 411091/1000000 | s1358,lo_HDP,s1330 |
| s1430 | 91 | linear | HFY | lo | 139747/500000 | lo_FYP,lo_HFP,s1330 |
| s1433 | 92 | linear | HFQ | hi | 122047/200000 | s1417,s1223,s1366 |
| s1435 | 93 | linear | CDF | lo | 230907/500000 | lo_CDZ,lo_CFZ,s1382 |
| s1436 | 94 | linear | CDY | lo | 423681/1000000 | lo_CDZ,s1334,s1379 |
| s1439 | 95 | linear | CFQ | lo | 29879/62500 | lo_CFZ,s1352,s1385 |
| s1451 | 97 | linear | HDF | hi | 132371/500000 | s1422 |
| s1452 | 98 | linear | HCF | hi | 269093/500000 | s1435 |
| s1453 | 98 | linear | CDF | hi | 117189/200000 | s1423 |
| s1470 | 106 | bary_hi | FYQ | lo | 15997/40000 | s1399,s1224,s1350,s1343,s1416,s1329,s1385 |
| s1493 | 109 | bary_hi | CDY | hi | 99303/200000 | hi_OCF,s1347,lo_OFY,s1345,hi_OCD,s1453 |
| s1498 | 111 | bary_hi | CYQ | hi | 386503/1000000 | s1179,s1199,s1149,s1345,hi_OCQ,s1408 |
| s1510 | 115 | bary_hi | OHY | lo | 101321/500000 | hi_OFQ,s1470,s1419,lo_OFY,s1392,s1401 |
| s1512 | 116 | bary_hi | OYP | lo | 48017/500000 | hi_OFQ,s1470,s1419,lo_OFY,lo_OFP,lo_OPQ |
| s1515 | 118 | bary_lo | HFY | hi | 423721/1000000 | hi_OFQ,s1470,s1419,lo_OFY,hi_OHF,s1433 |
| s1517 | 119 | bary_hi | CFY | hi | 40139/125000 | hi_OFQ,s1470,s1419,lo_OFY,hi_OCF,s1439 |
| s1520 | 120 | bary_lo | FYQ | hi | 35551/62500 | hi_OFQ,s1470,s1419,lo_OFY,hi_OFQ |
| s1533 | 126 | bary_lo | HFZ | hi | 431389/1000000 | s262,lo_CDZ,s1309,s1351,s1452,s1451 |
| s1544 | 127 | bary_hi | OCP | hi | 525271/1000000 | s1452,s1376,lo_HFP,s1364,hi_OHC,hi_OCF |
| s1555 | 129 | bary_lo | DFP | lo | 112181/1000000 | s1452,s1376,lo_HFP,s1364,lo_HDF,s1435 |
| s1565 | 131 | bary_lo | HCP | lo | 34137/250000 | s1222,s1267,lo_HZP,lo_HDP,s1422,s1351 |
| s1569 | 132 | bary_hi | CYP | lo | 35803/250000 | s1222,s1267,lo_HZP,lo_HDP,lo_HCY,s1436,s1334 |
| s1575 | 134 | bary_lo | CDP | lo | 500481/1000000 | s1515,lo_FYP,s1330,lo_HFP,s1422,s1435,s1436 |
| s1578 | 136 | bary_hi | OHP | lo | 93411/500000 | s1533,s1378,lo_HZP,lo_HFP,s1392,s1394 |
| s1581 | 137 | bary_lo | HYP | lo | 48257/500000 | s1533,s1378,lo_HZP,lo_HFP,s1430,s1224 |
| s1591 | 138 | bary_lo | OZQ | lo | 55081/500000 | s1453,s1382,lo_CFZ,lo_CDZ,hi_OCQ,lo_ODQ,s1416 |
| s1592 | 139 | bary_lo | HCZ | lo | 11401/62500 | s1453,s1382,lo_CFZ,lo_CDZ,s1422,s1423 |
| s1593 | 140 | bary_lo | HDZ | hi | 24173/40000 | s1453,s1382,lo_CFZ,lo_CDZ,s262,lo_HDF |
| s1595 | 142 | bary_lo | HYZ | lo | 86543/500000 | s1453,s1382,lo_CFZ,lo_CDZ,lo_HCY,s1428,s1430 |
| s1599 | 143 | bary_hi | CYZ | lo | 4147/40000 | s1453,s1382,lo_CFZ,lo_CDZ,s1436,s1347 |
| s1600 | 144 | bary_lo | CZQ | lo | 120159/1000000 | s1453,s1382,lo_CFZ,lo_CDZ,lo_CDQ,s1439 |
| s1601 | 145 | bary_hi | DFZ | hi | 79989/200000 | s1453,s1382,lo_CFZ,lo_CDZ,s1453 |
| s1615 | 147 | bary_lo | FZP | lo | 1771/12500 | s1493,s1379,s1599,lo_CDZ,s1376,s1555,lo_FYP |
| s1641 | 151 | bary_lo | DZP | lo | 153749/500000 | s1498,lo_YZQ,s1600,s1599,s1575,s1358,s1413 |
| s1664 | 1 | sum | OHF | lo | 186411/500000 | lo_HFP,lo_OFP,s1578 |
| s1665 | 2 | sum | OHZ | lo | 128573/250000 | s1595,s1510,s1350 |
| s1666 | 2 | sub | OHY | hi | 307339/1000000 | s1399,s1595,s1350 |
| s1667 | 3 | sub | HYQ | hi | 236397/500000 | hi_OHQ,s1510,s1419 |
| s1669 | 4 | sum | OHQ | lo | 182493/200000 | s1366,s1665,s1591 |
| s1670 | 4 | sub | HZQ | hi | 187773/500000 | hi_OHQ,s1665,s1591 |
| s1671 | 4 | sub | OHZ | hi | 601827/1000000 | hi_OHQ,s1366,s1591 |
| s1676 | 6 | sub | OCY | hi | 11441/40000 | s1544,s1569,s1512 |
| s1679 | 7 | sum | OFQ | lo | 817489/1000000 | s1470,lo_OFY,s1419 |
| s1682 | 8 | sum | OYQ | lo | 170863/500000 | s1350,s1591,lo_YZQ |
| s1688 | 11 | sum | HCF | lo | 16677/40000 | s1376,s1565,lo_HFP |
| s1689 | 12 | sum | HCQ | lo | 295293/500000 | s1600,s1592,s1366 |
| s1692 | 13 | sum | HDZ | lo | 246749/500000 | s1641,lo_HDP,lo_HZP |
| s1695 | 14 | sum | HFY | lo | 141257/500000 | lo_FYP,lo_HFP,s1581 |
| s1696 | 15 | sum | HFZ | lo | 1024/3125 | s1615,lo_HFP,lo_HZP |
| s1703 | 19 | sum | CYQ | lo | 158417/500000 | s1599,s1600,lo_YZQ |
| s1711 | 20 | sumlo | OHY | lo | 215193/1000000 | lo_OFY,s1669,s1664,s1682,hi_OFQ |
| s1720 | 24 | sumlo | HYQ | lo | 11419/31250 | s1595,s1669,s1366,s1711,s1671 |
| s1741 | 35 | sumlo | FYQ | lo | 212347/500000 | s1695,s1682,s1720,lo_OFY,s1666 |
| s1742 | 35 | sumlo | OHY | lo | 57367/250000 | s1695,s1682,s1720,lo_OFY,s1520 |
| s1751 | 38 | sumlo | CFY | lo | 13643/50000 | s1703,s1695,s1741,lo_HCY,s1667 |
| s1768 | 39 | sumlo | OYZ | lo | 178131/1000000 | s1595,s1591,s1665,lo_YZQ,s1670 |
| s1772 | 40 | sumlo | HCZ | lo | 3819/20000 | lo_CDZ,s1696,lo_CFZ,s1692,s1601 |
| s1773 | 41 | sumlo | CZQ | lo | 66239/500000 | lo_CDZ,s1366,lo_DZQ,s1772,s1593 |
| s1788 | 46 | balance_lo | OCF | lo | 131703/250000 | lo_HCY,s1679,s1703,s1664,s1689,lo_OFY,s1667 |
| s1795 | 49 | balance_lo | OZQ | lo | 115737/1000000 | lo_CDZ,s1669,s1772,lo_ODQ,s1593,hi_OCQ,s262 |
| s1847 | 69 | balance_lo | FZQ | lo | 12991/40000 | s1788,lo_YZQ,s1751,s1795,lo_OFY,s1773,s1676 |
| s1852 | 72 | balance_lo | HZQ | lo | 82841/250000 | s1688,lo_YZQ,s1695,s1773,lo_HCY,s1847,s1517 |
| s1878 | 75 | linear | OHZ | lo | 116137/200000 | s1595,s1742,s1768 |
| s1885 | 77 | linear | OHZ | hi | 552899/1000000 | s1852,hi_OHQ,s1795 |

## Conclusion

{"triangle":"OHZ","lower":"s1878","upper":"s1885"}
