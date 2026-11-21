# Leaf rppmppmmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":1,"FZP":-1,"DYZ":-1,"FYZ":1,"FYP":-1}

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
| 36 | plu | ["FHCYP","FCP",-1] |
| 37 | plu | ["FHCPQ","FPQ",1] |
| 38 | plu | ["FHCPR","FPR",1] |
| 39 | plu | ["YHDZQ","YZQ",-1] |
| 40 | plu | ["YHDZR","YZR",-1] |
| 41 | plu | ["YHFZP","YZP",1] |
| 42 | capacity | ["HCF","P","Z","CFZ",-1,"127/200","C027"] |
| 43 | plu | ["FOHCZ","FOZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","Z"] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HFY | HFY | hi | 271/500 | "C024" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HCF","CFP","HCP","HFP"] | ["fan","HCF","P"] |
| 1 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 2 | ["fan","HFY","FYP","HFP","HYP"] | ["fan","HFY","P"] |
| 3 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 4 | ["plu","CDY","OHD","HCD","ODY","HDY","OCD"] | ["plu","DOHCY"] |
| 5 | ["plu","HDF","ODP","DFP","OHD","HDP","ODF"] | ["plu","DOHFP"] |
| 6 | ["plu","CDP","HDF","CDF","HDP","DFP","HCD"] | ["plu","DHCFP"] |
| 7 | ["plu","DFP","HCF","CDF","HFP","CFP","HDF"] | ["plu","FHCDP"] |
| 8 | ["plu","DFP","HFY","DFY","HFP","FYP","HDF"] | ["plu","FHDYP"] |
| 9 | ["plu","DFP","HFZ","DFZ","HFP","FZP","HDF"] | ["plu","FHDZP"] |
| 10 | ["plu","CFP","DFY","CDF","FYP","CFY","DFP"] | ["plu","FCDYP"] |
| 11 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 12 | ["plu","CFP","HYP","CYP","HFP","FYP","HCP"] | ["plu","PHCFY"] |
| 13 | ["plu","DFP","HYP","DYP","HFP","FYP","HDP"] | ["plu","PHDFY"] |
| 14 | ["plu","DFP","HZP","DZP","HFP","FZP","HDP"] | ["plu","PHDFZ"] |
| 15 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 16 | ["balance",[[-1,"HCY","ODP"],[1,"CYP","OHD"],[-1,"HYP","OCD"],[-1,"HCP","ODY"]]] | ["six","ODHCYP"] |
| 17 | ["balance",[[1,"CFY","HDP"],[-1,"FYP","HCD"],[-1,"CYP","HDF"],[1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 18 | ["balance",[[-1,"CFY","HZP"],[1,"FYZ","HCP"],[-1,"CYZ","HFP"],[-1,"CFZ","HYP"]]] | ["six","HPCFYZ"] |
| 19 | ["balance",[[-1,"HCF","DYZ"],[-1,"CFZ","HDY"],[-1,"HFZ","CDY"],[1,"HCZ","DFY"]]] | ["six","DYHCFZ"] |
| 20 | ["balance",[[-1,"HCY","FZP"],[-1,"CYZ","HFP"],[1,"HYZ","CFP"],[-1,"HCZ","FYP"]]] | ["six","FPHCYZ"] |
| 21 | ["linear",{"HDF":1,"HFP":-1,"HDP":-1,"DFP":-1},"0"] | ["affine_quad","HDFP",1] |
| 22 | ["linear",{"HDY":-1,"HYP":1,"HDP":-1,"DYP":1},"0"] | ["affine_quad","HDYP",1] |
| 23 | ["linear",{"DFY":1,"DYZ":-1,"DFZ":-1,"FYZ":-1},"0"] | ["affine_quad","DFYZ",1] |
| 24 | ["quad","HDF","HDZ","449/1000"] | ["quad","HZDF","P"] |
| 25 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","DF"] |
| 26 | ["bary",["FYP",-1],[["HFY",-1],["DFY",1],null],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","FY"] |
| 27 | ["bary",["FZP",1],[["HFP",-1],["DFP",1],["FYP",1]],"HDY",["DYZ","HYZ","HDZ"]] | ["bary","HDY","Z","FP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s18 | 0 | sub | HCP | hi | 449/1000 | hi_HCF,lo_CFP,lo_HFP |
| s20 | 1 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s21 | 1 | sub | HDP | hi | 3/25 | hi_HDF,lo_DFP,lo_HFP |
| s27 | 2 | sub | HYP | hi | 89/250 | hi_HFY,lo_FYP,lo_HFP |
| s55 | 3 | sumlo | HDY | lo | 43223/125000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,hi_HCF |
| s76 | 4 | sumlo | CDY | lo | 65747/500000 | lo_HCD,lo_ODY,s55,lo_OCD,hi_OHD |
| s77 | 5 | sumlo | ODP | lo | 339801/1000000 | lo_DFP,lo_OHD,lo_HDP,lo_ODF,hi_HDF |
| s83 | 6 | sumlo | CDP | lo | 80463/250000 | lo_CDF,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s94 | 7 | sumlo | HCF | lo | 4991/10000 | lo_CDF,lo_HFP,lo_CFP,lo_HDF,s20 |
| s96 | 7 | diffhi | CFP | hi | 37863/250000 | s20,hi_HCF,lo_CDF,lo_HFP,lo_HDF |
| s108 | 8 | sumlo | DFP | lo | 19149/200000 | lo_DFY,lo_HFP,lo_FYP,lo_HDF,hi_HFY |
| s109 | 8 | sumlo | HFY | lo | 8649/20000 | lo_DFY,lo_HFP,lo_FYP,lo_HDF,s20 |
| s110 | 8 | diffhi | DFY | hi | 84071/200000 | s20,hi_HFY,lo_FYP,lo_HDF,lo_HFP |
| s114 | 9 | sumlo | HFZ | lo | 2883/10000 | lo_DFZ,lo_HFP,lo_FZP,lo_HDF,s20 |
| s122 | 10 | sumlo | CFP | lo | 20387/200000 | lo_CDF,lo_FYP,lo_CFY,s108,s110 |
| s124 | 10 | diffhi | CFY | hi | 155197/500000 | s96,s110,lo_CDF,lo_FYP,s108 |
| s141 | 11 | sumlo | HCP | lo | 164217/500000 | s83,lo_HFP,s122,lo_HDP,s20 |
| s145 | 12 | sumlo | CFP | lo | 110093/1000000 | lo_CYP,lo_HFP,lo_FYP,s141,s27 |
| s150 | 13 | sumlo | DFP | lo | 97179/1000000 | lo_DYP,lo_HFP,lo_FYP,lo_HDP,s27 |
| s151 | 13 | sumlo | HYP | lo | 2883/10000 | lo_DYP,lo_HFP,lo_FYP,lo_HDP,s20 |
| s152 | 13 | diffhi | DYP | hi | 73271/200000 | s20,s27,lo_FYP,lo_HDP,lo_HFP |
| s153 | 14 | sumlo | HZP | lo | 2883/20000 | lo_DZP,lo_HFP,lo_FZP,lo_HDP,s20 |
| s177 | 15 | balance_lo | CFY | lo | 84793/500000 | s94,lo_ODY,s109,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s181 | 16 | balance_lo | CYP | lo | 7373/62500 | lo_HCY,s77,s151,lo_OCD,s141,lo_ODY,hi_OHD |
| s208 | 17 | balance_lo | HDY | lo | 397537/1000000 | lo_FYP,lo_HCD,s181,lo_HDF,s124,s21,s96 |
| s212 | 18 | balance_lo | FYZ | lo | 66711/500000 | s177,s153,lo_CYZ,lo_HFP,lo_CFZ,s151,s18 |
| s231 | 19 | balance_lo | HCZ | lo | 144279/500000 | s94,lo_DYZ,lo_CFZ,s208,s114,s76,s110 |
| s242 | 20 | balance_lo | HYZ | lo | 58281/200000 | lo_HCY,lo_FZP,lo_CYZ,lo_HFP,s231,lo_FYP,s96 |
| s286 | 21 | linear | HDF | lo | 283179/1000000 | s150,lo_HDP,lo_HFP |
| s292 | 22 | linear | HDY | hi | 125871/200000 | s152,lo_HDP,s27 |
| s320 | 23 | linear | DFY | lo | 159711/500000 | lo_DFZ,lo_DYZ,s212 |
| s333 | 24 | quad | HDZ | lo | 143/1000 | hi_HDF |
| s433 | 25 | bary_lo | DFP | lo | 12819/125000 | hi_HCF,s145,lo_HFP,s141,s286,lo_CDF |
| s460 | 26 | bary_lo | FYP | hi | 11547/100000 | hi_HDF,s433,lo_HFP,lo_HDP,hi_HFY,s320 |
| s487 | 27 | bary_hi | FZP | hi | 10937/125000 | s292,lo_DYZ,s242,s333,lo_HFP,s20,s460 |

## Conclusion

{"triangle":"FZP","lower":"lo_FZP","upper":"s487"}
