# Leaf rpppmmpmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":1,"FZP":-1,"DYP":-1,"FYZ":1,"FYP":-1,"OFY":-1}

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
| 14 | extreme | ["DYQ","O","YQO",-1] |
| 15 | extreme | ["DYR","O","YRO",-1] |
| 16 | extreme | ["DZQ","O","ZQO",-1] |
| 17 | extreme | ["DZQ","H","ZQH",-1] |
| 18 | interior_line | ["OZ","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["HZ","R","CDQ","R",-1] |
| 22 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 23 | interior_line | ["CY","P","HCDF","P",-1] |
| 24 | interior_line | ["CZ","R","CDQ","R",-1] |
| 25 | interior_line | ["CP","R","CDQ","R",-1] |
| 26 | interior_line | ["DZ","Y","OHC","Y",1] |
| 27 | interior_line | ["DZ","R","CDQ","R",1] |
| 28 | interior_line | ["DP","R","CDQ","R",1] |
| 29 | interior_line | ["ZQ","Y","OHC","Y",-1] |
| 30 | interior_line | ["ZR","Y","OHC","Y",-1] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["HDF","Z","P","HDP",-1,"153/500","C010"] |
| 33 | plu | ["OHDZP","ODP",1] |
| 34 | plu | ["OHDPR","OPR",-1] |
| 35 | plu | ["HODZP","HZP",-1] |
| 36 | plu | ["DOHZP","DZP",1] |
| 37 | plu | ["FOHYZ","FOZ",1] |
| 38 | plu | ["FHCYP","FCP",-1] |
| 39 | plu | ["FHCPQ","FPQ",1] |
| 40 | plu | ["FHCPR","FPR",1] |
| 41 | plu | ["YOHFP","YOP",-1] |
| 42 | plu | ["YOHPQ","YPQ",-1] |
| 43 | plu | ["YOHPR","YPR",-1] |
| 44 | plu | ["YHFZP","YZP",1] |
| 45 | plu | ["ZOHCP","ZCP",-1] |
| 46 | plu | ["ZOHPQ","ZPQ",1] |
| 47 | plu | ["ZOHPR","ZPR",1] |
| 48 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 49 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","YZ"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","Z"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHF","HFP","OFP","OHP"] | ["fan","OHF","P"] |
| 1 | ["fan","OHZ","HZP","OHP","OZP"] | ["fan","OHZ","P"] |
| 2 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 3 | ["fan","HCF","CFP","HCP","HFP"] | ["fan","HCF","P"] |
| 4 | ["fan","HDF","DFZ","HDZ","HFZ"] | ["fan","HDF","Z"] |
| 5 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 6 | ["fan","DFP","DFZ","DZP","FZP"] | ["fan","DFP","Z"] |
| 7 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 8 | ["plu","HCD","OHQ","HCQ","OHD","HDQ","OHC"] | ["plu","HOCDQ"] |
| 9 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 10 | ["plu","CDP","OCF","CDF","OCP","CFP","OCD"] | ["plu","CODFP"] |
| 11 | ["plu","CFQ","OCD","CDF","OCQ","CDQ","OCF"] | ["plu","CODFQ"] |
| 12 | ["plu","CDP","HCF","CDF","HCP","CFP","HCD"] | ["plu","CHDFP"] |
| 13 | ["plu","CDZ","HDF","CDF","HDZ","DFZ","HCD"] | ["plu","DHCFZ"] |
| 14 | ["plu","CDF","HDQ","CDQ","HDF","DFQ","HCD"] | ["plu","DHCFQ"] |
| 15 | ["plu","CFP","ODF","CDF","OFP","DFP","OCF"] | ["plu","FOCDP"] |
| 16 | ["plu","CFP","OFZ","CFZ","OFP","FZP","OCF"] | ["plu","FOCZP"] |
| 17 | ["plu","CDF","HFZ","CFZ","HDF","DFZ","HCF"] | ["plu","FHCDZ"] |
| 18 | ["plu","DFY","HFZ","DFZ","HFY","FYZ","HDF"] | ["plu","FHDYZ"] |
| 19 | ["plu","DFP","HFZ","DFZ","HFP","FZP","HDF"] | ["plu","FHDZP"] |
| 20 | ["plu","HFZ","ODZ","DFZ","OHZ","HDZ","OFZ"] | ["plu","ZOHDF"] |
| 21 | ["plu","DZP","HFZ","DFZ","HZP","FZP","HDZ"] | ["plu","ZHDFP"] |
| 22 | ["plu","CZP","OHP","HCP","OZP","HZP","OCP"] | ["plu","POHCZ"] |
| 23 | ["plu","CFP","ODP","CDP","OFP","DFP","OCP"] | ["plu","POCDF"] |
| 24 | ["plu","CDP","HFP","CFP","HDP","DFP","HCP"] | ["plu","PHCDF"] |
| 25 | ["balance",[[1,"HDF","OCZ"],[-1,"DFZ","OHC"],[-1,"HFZ","OCD"],[-1,"HDZ","OCF"]]] | ["six","OCHDFZ"] |
| 26 | ["balance",[[-1,"HFZ","OCP"],[1,"FZP","OHC"],[-1,"HZP","OCF"],[1,"HFP","OCZ"]]] | ["six","OCHFZP"] |
| 27 | ["balance",[[1,"HCD","OFP"],[-1,"CDP","OHF"],[1,"HDP","OCF"],[1,"HCP","ODF"]]] | ["six","OFHCDP"] |
| 28 | ["balance",[[-1,"HCD","OFQ"],[1,"CDQ","OHF"],[1,"HDQ","OCF"],[1,"HCQ","ODF"]]] | ["six","OFHCDQ"] |
| 29 | ["balance",[[-1,"HCD","OFP"],[-1,"CDF","OHP"],[-1,"HDF","OCP"],[1,"HCF","ODP"]]] | ["six","OPHCDF"] |
| 30 | ["balance",[[1,"ODF","HCP"],[1,"DFP","OHC"],[1,"OFP","HCD"],[-1,"ODP","HCF"]]] | ["six","HCODFP"] |
| 31 | ["balance",[[-1,"OFZ","HCP"],[-1,"FZP","OHC"],[1,"OZP","HCF"],[-1,"OFP","HCZ"]]] | ["six","HCOFZP"] |
| 32 | ["balance",[[1,"DFY","HCP"],[1,"FYP","HCD"],[-1,"DYP","HCF"],[1,"DFP","HCY"]]] | ["six","HCDFYP"] |
| 33 | ["balance",[[1,"DFZ","HCP"],[1,"FZP","HCD"],[1,"DZP","HCF"],[-1,"DFP","HCZ"]]] | ["six","HCDFZP"] |
| 34 | ["balance",[[-1,"OCF","HDP"],[1,"CFP","OHD"],[-1,"OFP","HCD"],[-1,"OCP","HDF"]]] | ["six","HDOCFP"] |
| 35 | ["balance",[[-1,"OCD","HZP"],[1,"CDP","OHZ"],[-1,"ODP","HCZ"],[1,"OCP","HDZ"]]] | ["six","HZOCDP"] |
| 36 | ["balance",[[-1,"ODF","HZP"],[1,"DFP","OHZ"],[-1,"OFP","HDZ"],[-1,"ODP","HFZ"]]] | ["six","HZODFP"] |
| 37 | ["balance",[[-1,"ODF","HYP"],[1,"DFY","OHP"],[-1,"OFY","HDP"],[-1,"ODY","HFP"]]] | ["six","HPODFY"] |
| 38 | ["balance",[[-1,"OHZ","CDP"],[1,"HZP","OCD"],[1,"OZP","HCD"],[1,"OHP","CDZ"]]] | ["six","CDOHZP"] |
| 39 | ["balance",[[-1,"OHZ","CFP"],[1,"HZP","OCF"],[1,"OZP","HCF"],[-1,"OHP","CFZ"]]] | ["six","CFOHZP"] |
| 40 | ["balance",[[1,"ODF","CZP"],[-1,"DFP","OCZ"],[-1,"OFP","CDZ"],[-1,"ODP","CFZ"]]] | ["six","CZODFP"] |
| 41 | ["balance",[[-1,"OCD","FZP"],[1,"CDP","OFZ"],[-1,"ODP","CFZ"],[-1,"OCP","DFZ"]]] | ["six","FZOCDP"] |
| 42 | ["linear",{"OHD":1,"ODF":-1,"OHF":-1,"HDF":1},"0"] | ["affine_quad","OHDF",-1] |
| 43 | ["linear",{"OHF":-1,"OFZ":-1,"OHZ":1,"HFZ":1},"0"] | ["affine_quad","OHFZ",1] |
| 44 | ["linear",{"OHF":1,"OFP":-1,"OHP":-1,"HFP":-1},"0"] | ["affine_quad","OHFP",-1] |
| 45 | ["linear",{"ODY":-1,"OYP":-1,"ODP":1,"DYP":-1},"0"] | ["affine_quad","ODYP",-1] |
| 46 | ["linear",{"HCD":-1,"HDQ":1,"HCQ":1,"CDQ":-1},"0"] | ["affine_quad","HCDQ",-1] |
| 47 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 48 | ["linear",{"HDF":1,"HFZ":-1,"HDZ":-1,"DFZ":-1},"0"] | ["affine_quad","HDFZ",1] |
| 49 | ["linear",{"HDF":1,"HFP":-1,"HDP":1,"DFP":-1},"0"] | ["affine_quad","HDFP",1] |
| 50 | ["linear",{"HFZ":1,"HZP":1,"HFP":-1,"FZP":-1},"0"] | ["affine_quad","HFZP",-1] |
| 51 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 52 | ["linear",{"DFZ":-1,"DZP":-1,"DFP":1,"FZP":-1},"0"] | ["affine_quad","DFZP",-1] |
| 53 | ["quad","HDF","OHD","93/91"] | ["quad","ODFH","YZP"] |
| 54 | ["quad","HDF","HDP","449/1000"] | ["quad","HPDF","Z"] |
| 55 | ["linear",{"OHC":1,"OHF":-1},"0"] | ["c1_norm","c_ge_f"] |
| 56 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 57 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 58 | ["bary",["CDP",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","CD"] |
| 59 | ["bary",["HFZ",-1],[["OHF",-1],["HDF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","HF"] |
| 60 | ["bary",["OHP",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OH"] |
| 61 | ["bary",["ODP",1],[["OHD",1],["OCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OD"] |
| 62 | ["bary",["HFP",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HF"] |
| 63 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 64 | ["bary",["CFP",1],[["HCF",1],null,["CDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CF"] |
| 65 | ["bary",["OHP",-1],[null,["OHC",-1],["OHF",-1]],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","OH"] |
| 66 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","DF"] |
| 67 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHF",-1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","OH"] |
| 68 | ["bary",["CDZ",1],[["HCD",1],null,["CDF",1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","CD"] |
| 69 | ["bary",["CZP",-1],[["HCP",1],["CDP",-1],["CFP",-1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","CP"] |
| 70 | ["bary",["DZP",-1],[["HDP",-1],null,["DFP",-1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","DP"] |
| 71 | ["bary",["OZP",-1],[["OCP",-1],["ODP",-1],["OFP",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OP"] |
| 72 | ["bary",["HCZ",1],[["HCD",1],["HCF",1],["HCP",1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","HC"] |
| 73 | ["bary",["HDZ",1],[null,["HDF",1],["HDP",-1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","HD"] |
| 74 | ["bary",["HFZ",-1],[["HDF",-1],null,["HFP",-1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","HF"] |
| 75 | ["bary",["CFZ",-1],[["CDF",-1],null,["CFP",1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","CF"] |
| 76 | ["bary",["DZP",-1],[null,["DFP",-1],null],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","DP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s16 | 2 | sub | DFY | hi | 374729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s32 | 4 | sub | HFZ | hi | 3/25 | hi_HDF,lo_DFZ,lo_HDZ |
| s85 | 13 | sumlo | CDZ | lo | 80463/250000 | lo_CDF,lo_HDZ,lo_DFZ,lo_HCD,hi_HDF |
| s108 | 18 | sumlo | DFY | lo | 8649/20000 | lo_DFZ,lo_HFY,lo_FYZ,lo_HDF,s32 |
| s110 | 19 | sumlo | DFP | lo | 2883/10000 | lo_DFZ,lo_HFP,lo_FZP,lo_HDF,s32 |
| s115 | 21 | sumlo | DZP | lo | 2883/20000 | lo_DFZ,lo_HZP,lo_FZP,lo_HDZ,s32 |
| s145 | 32 | balance_lo | DYP | lo | 207199/1000000 | s108,lo_HCP,lo_FYP,lo_HCD,s110,lo_HCY,hi_HCF |
| s149 | 34 | balance_lo | CFP | lo | 16833/100000 | lo_OCF,lo_HDP,lo_OFP,lo_HCD,lo_OCP,lo_HDF,hi_OHD |
| s155 | 37 | balance_lo | OHP | lo | 54599/500000 | lo_ODF,lo_HYP,lo_OFY,lo_HDP,lo_ODY,lo_HFP,s16 |
| s181 | 42 | linear | OHF | hi | 153/250 | hi_HDF,lo_ODF,hi_OHD |
| s187 | 44 | linear | OHF | lo | 147599/500000 | lo_HFP,lo_OFP,s155 |
| s200 | 45 | linear | ODP | lo | 393199/1000000 | s145,lo_ODY,lo_OYP |
| s209 | 47 | linear | HCF | lo | 35433/100000 | s149,lo_HCP,lo_HFP |
| s219 | 51 | linear | CDF | lo | 126963/250000 | s85,lo_CFZ,lo_DFZ |
| s222 | 52 | linear | DFP | lo | 6603/20000 | lo_DFZ,s115,lo_FZP |
| s223 | 53 | quad | OHD | lo | 357989/500000 | hi_HDF |
| s227 | 54 | quad | HDP | lo | 143/1000 | hi_HDF |
| s232 | 55 | linear | OHC | lo | 147599/500000 | s187 |
| s233 | 56 | linear | HCD | hi | 721/1000 | lo_HDF |
| s234 | 57 | linear | HCF | hi | 123037/250000 | s219 |
| s235 | 57 | linear | CDF | hi | 64567/100000 | s209 |
| s296 | 58 | bary_lo | CDP | lo | 325729/1000000 | s181,lo_HFP,lo_OFP,s155,lo_OCD,lo_HCD,s219 |
| s376 | 60 | bary_hi | OHP | lo | 1509/10000 | s233,s296,s227,lo_HCP,s232,s223 |
| s378 | 61 | bary_hi | ODP | hi | 317137/500000 | s233,s296,s227,lo_HCP,hi_OHD,lo_OCD |
| s387 | 62 | bary_hi | HFP | lo | 106263/1000000 | s233,s296,s227,lo_HCP,s209,lo_HDF |
| s389 | 63 | bary_hi | CDP | hi | 97/200 | s233,s296,s227,lo_HCP,s233 |
| s390 | 64 | bary_hi | CFP | hi | 5311/20000 | s233,s296,s227,lo_HCP,s234,s219 |
| s425 | 67 | bary_lo | OHZ | hi | 578157/1000000 | hi_HDF,lo_DFZ,lo_HFZ,lo_HDZ,hi_OHD,s181 |
| s439 | 68 | bary_lo | CDZ | lo | 91317/250000 | hi_HDF,lo_DFZ,lo_HFZ,lo_HDZ,lo_HCD,s219 |
| s443 | 69 | bary_lo | CZP | hi | 121319/500000 | hi_HDF,lo_DFZ,lo_HFZ,lo_HDZ,lo_HCP,s389,s390 |
| s466 | 71 | bary_hi | OZP | lo | 16303/100000 | s235,lo_DFZ,lo_CFZ,s439,lo_OCP,s200,lo_OFP |
| s517 | 1 | sum | OHZ | lo | 40693/100000 | lo_HZP,s376,s466 |
| s524 | 3 | sum | HCF | lo | 367593/1000000 | s149,lo_HCP,s387 |
| s528 | 5 | sum | CDF | lo | 137817/250000 | s439,lo_CFZ,lo_DFZ |
| s546 | 10 | sumlo | OCF | lo | 384323/1000000 | s528,lo_OCP,s149,lo_OCD,s389 |
| s548 | 11 | sumlo | OCD | lo | 96911/500000 | s528,lo_OCQ,lo_CDQ,s546,hi_CFQ |
| s552 | 12 | sumlo | CDP | lo | 341541/1000000 | s528,lo_HCP,s149,lo_HCD,s234 |
| s566 | 13 | sumlo | CDZ | lo | 378463/1000000 | s528,lo_HDZ,lo_DFZ,lo_HCD,hi_HDF |
| s567 | 14 | sumlo | HDQ | lo | 220519/1000000 | lo_CDQ,lo_HDF,lo_DFQ,lo_HCD,s235 |
| s586 | 16 | sumlo | OFZ | lo | 83583/500000 | lo_CFZ,lo_OFP,lo_FZP,s546,s390 |
| s588 | 17 | sumlo | HFZ | lo | 23283/250000 | lo_CFZ,lo_HDF,lo_DFZ,s524,s235 |
| s593 | 20 | sumlo | ODZ | lo | 111231/250000 | lo_DFZ,s517,lo_HDZ,s586,s32 |
| s602 | 22 | sumlo | OHP | lo | 10589/62500 | lo_HCP,s466,lo_HZP,lo_OCP,s443 |
| s604 | 23 | sumlo | CFP | lo | 97651/500000 | s552,lo_OFP,s222,lo_OCP,s378 |
| s607 | 24 | sumlo | HFP | lo | 120891/1000000 | s604,s227,s222,lo_HCP,s389 |
| s615 | 27 | balance_lo | OHF | lo | 94867/250000 | lo_HCD,lo_OFP,s227,s546,lo_HCP,lo_ODF,s389 |
| s616 | 28 | balance_hi | HCQ | hi | 750083/1000000 | s233,hi_OFQ,lo_CDQ,s615,s567,s546,lo_ODF |
| s624 | 29 | balance_lo | ODP | lo | 95817/200000 | lo_HCD,lo_OFP,s528,s602,lo_HDF,lo_OCP,s234 |
| s644 | 34 | balance_lo | CFP | lo | 197341/1000000 | s546,s227,lo_OFP,lo_HCD,lo_OCP,lo_HDF,hi_OHD |
| s675 | 41 | balance_lo | OFZ | lo | 18253/100000 | s548,lo_FZP,s624,lo_CFZ,lo_OCP,lo_DFZ,s389 |
| s700 | 42 | linear | ODF | hi | 231633/250000 | hi_HDF,hi_OHD,s615 |
| s704 | 43 | linear | OHF | hi | 515627/1000000 | s32,s675,s425 |
| s706 | 44 | linear | OHF | lo | 76663/200000 | s607,lo_OFP,s602 |
| s731 | 46 | linear | HDQ | lo | 222917/1000000 | lo_CDQ,lo_HCD,s616 |
| s733 | 47 | linear | HCF | lo | 12851/31250 | s644,lo_HCP,s607 |
| s739 | 48 | linear | HDF | lo | 69783/250000 | lo_DFZ,lo_HDZ,s588 |
| s741 | 49 | linear | HDP | lo | 145041/1000000 | s222,hi_HDF,s607 |
| s744 | 50 | linear | HZP | lo | 93891/1000000 | lo_FZP,s607,s32 |
| s745 | 51 | linear | CDF | lo | 564463/1000000 | s566,lo_CFZ,lo_DFZ |
| s759 | 55 | linear | OHC | lo | 76663/200000 | s706 |
| s760 | 56 | linear | HCD | hi | 180217/250000 | s739 |
| s761 | 57 | linear | HCF | hi | 435537/1000000 | s745 |
| s762 | 57 | linear | CDF | hi | 18399/31250 | s733 |
| s805 | 58 | bary_lo | CDP | lo | 20291/50000 | s704,s607,lo_OFP,s602,s548,lo_HCD,s745 |
| s825 | 59 | bary_hi | HFZ | lo | 11683/125000 | s700,lo_DFZ,s675,s593,s706,s739 |
| s849 | 61 | bary_hi | ODP | hi | 157697/250000 | s760,s805,s741,lo_HCP,hi_OHD,s548 |
| s854 | 63 | bary_hi | CDP | hi | 482827/1000000 | s760,s805,s741,lo_HCP,s760 |
| s855 | 64 | bary_hi | CFP | hi | 43779/200000 | s760,s805,s741,lo_HCP,s761,s745 |
| s867 | 65 | bary_hi | OHP | lo | 47061/250000 | s761,s644,s607,lo_HCP,s759,s706 |
| s878 | 66 | bary_hi | DFP | hi | 20933/62500 | s761,s644,s607,lo_HCP,hi_HDF,s762 |
| s899 | 68 | bary_lo | CDZ | lo | 191237/500000 | hi_HDF,lo_DFZ,s825,lo_HDZ,lo_HCD,s745 |
| s902 | 69 | bary_lo | CZP | hi | 227607/1000000 | hi_HDF,lo_DFZ,s825,lo_HDZ,lo_HCP,s854,s855 |
| s906 | 70 | bary_hi | DZP | lo | 7221/50000 | hi_HDF,lo_DFZ,s825,lo_HDZ,s741,s222 |
| s970 | 72 | bary_lo | HCZ | lo | 397101/1000000 | s878,lo_FZP,s906,lo_DFZ,lo_HCD,s733,lo_HCP |
| s971 | 73 | bary_hi | HDZ | hi | 5987/62500 | s878,lo_FZP,s906,lo_DFZ,hi_HDF,s741 |
| s972 | 74 | bary_hi | HFZ | lo | 4443/40000 | s878,lo_FZP,s906,lo_DFZ,s739,s607 |
| s974 | 75 | bary_hi | CFZ | lo | 5813/62500 | s878,lo_FZP,s906,lo_DFZ,s745,s855 |
| s979 | 76 | bary_lo | DZP | hi | 2327/15625 | s878,lo_FZP,s906,lo_DFZ,s878 |
| s987 | 0 | sum | OHF | lo | 80427/200000 | s607,lo_OFP,s867 |
| s997 | 4 | sum | HDF | lo | 11883/40000 | lo_DFZ,lo_HDZ,s972 |
| s998 | 5 | sum | CDF | lo | 284241/500000 | s899,s974,lo_DFZ |
| s1000 | 6 | sum | DFP | lo | 16521/50000 | lo_DFZ,s906,lo_FZP |
| s1002 | 7 | sumlo | OHD | lo | 902231/1000000 | lo_HCD,s987,s997,s759,s761 |
| s1007 | 8 | diffhi | HCQ | hi | 352139/500000 | s760,hi_OHQ,s731,s759,s1002 |
| s1019 | 9 | sumlo | OCD | lo | 243493/1000000 | lo_CDQ,s759,lo_HCD,lo_OCQ,s1007 |
| s1023 | 10 | sumlo | OCF | lo | 85603/200000 | s998,lo_OCP,s644,s1019,s854 |
| s1033 | 12 | sumlo | CDP | lo | 435837/1000000 | s998,lo_HCP,s644,lo_HCD,s761 |
| s1055 | 13 | sumlo | CDZ | lo | 76739/200000 | s998,lo_HDZ,lo_DFZ,lo_HCD,hi_HDF |
| s1089 | 15 | sumlo | ODF | lo | 88761/100000 | s998,lo_OFP,s1000,s1023,s855 |
| s1091 | 15 | diffhi | OCF | hi | 2269/5000 | s855,s700,s998,lo_OFP,s1000 |
| s1099 | 16 | sumlo | OFZ | lo | 110681/500000 | s974,lo_OFP,lo_FZP,s1023,s855 |
| s1146 | 21 | sumlo | DZP | lo | 3621/25000 | lo_DFZ,s744,lo_FZP,lo_HDZ,s32 |
| s1147 | 21 | sumlo | HFZ | lo | 58353/500000 | lo_DFZ,s744,lo_FZP,lo_HDZ,s979 |
| s1148 | 21 | diffhi | HZP | hi | 49583/500000 | s979,s32,lo_FZP,lo_HDZ,lo_DFZ |
| s1164 | 23 | sumlo | CFP | lo | 210403/1000000 | s1033,lo_OFP,s1000,lo_OCP,s849 |
| s1167 | 23 | diffhi | OCP | hi | 295211/1000000 | s855,s849,s1033,lo_OFP,s1000 |
| s1188 | 24 | sumlo | HFP | lo | 1982/15625 | s1164,s741,s1000,lo_HCP,s854 |
| s1216 | 25 | balance_lo | OCZ | lo | 339447/1000000 | lo_DFZ,s759,s1147,s1019,lo_HDZ,s1023,hi_HDF |
| s1222 | 26 | balance_lo | HZP | lo | 47687/500000 | lo_FZP,s759,s1188,s1216,s32,s1167,s1091 |
| s1223 | 26 | balance_lo | OCF | lo | 436451/1000000 | lo_FZP,s759,s1188,s1216,s32,s1167,s1148 |
| s1292 | 30 | balance_hi | ODF | hi | 449111/500000 | s849,s761,s1000,s759,lo_OFP,lo_HCD,lo_HCP |
| s1294 | 30 | balance_hi | DFP | hi | 66599/200000 | s849,s761,s1089,lo_HCP,lo_OFP,lo_HCD,s759 |
| s1296 | 30 | balance_hi | OFP | hi | 47211/500000 | s849,s761,s1089,lo_HCP,s1000,s759,lo_HCD |
| s1298 | 30 | balance_lo | ODP | lo | 314261/500000 | s1089,lo_HCP,s1000,s759,lo_OFP,lo_HCD,s761 |
| s1299 | 30 | balance_lo | HCF | lo | 108493/250000 | s1089,lo_HCP,s1000,s759,lo_OFP,lo_HCD,s849 |
| s1312 | 31 | balance_lo | OZP | lo | 213909/1000000 | s1099,lo_HCP,lo_FZP,s759,lo_OFP,s970,s761 |
| s1319 | 33 | balance_lo | HCZ | lo | 408557/1000000 | lo_DFZ,lo_HCP,lo_FZP,lo_HCD,s1146,s1299,s1294 |
| s1372 | 35 | balance_lo | OHZ | lo | 521369/1000000 | s1019,s1222,s1298,s1319,s1167,s971,s854 |
| s1377 | 36 | balance_lo | HZP | lo | 97449/1000000 | s1000,s1372,s1296,s971,s849,s32,s1292 |
| s1378 | 36 | balance_hi | OHZ | hi | 131509/250000 | s1292,s1148,s1296,s971,s849,s32,s1000 |
| s1396 | 38 | balance_hi | OHP | hi | 213199/1000000 | s1378,s854,s1377,s1019,s1312,lo_HCD,s1055 |
| s1407 | 39 | balance_lo | CFZ | lo | 4741/50000 | s1377,s1223,s1312,s1299,s1378,s855,s1396 |
| s1421 | 40 | balance_lo | ODF | lo | 227849/250000 | s1000,s1216,lo_OFP,s1055,s1298,s1407,s902 |

## Conclusion

{"triangle":"ODF","lower":"s1421","upper":"s1292"}
