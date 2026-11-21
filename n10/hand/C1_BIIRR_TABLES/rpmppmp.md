# Leaf rpmppmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":1}

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
| 10 | extreme | ["OHP","D","POD",1] |
| 11 | extreme | ["OZP","D","ZPD",-1] |
| 12 | extreme | ["HFY","C","FYC",1] |
| 13 | extreme | ["CYQ","H","YQH",1] |
| 14 | extreme | ["CYR","D","YRD",1] |
| 15 | extreme | ["CYR","F","YRF",1] |
| 16 | extreme | ["CYR","H","YRH",1] |
| 17 | extreme | ["DFZ","O","FZO",-1] |
| 18 | extreme | ["DYQ","O","YQO",-1] |
| 19 | extreme | ["DYR","O","YRO",-1] |
| 20 | extreme | ["DZP","H","ZPH",1] |
| 21 | extreme | ["DPQ","O","PQO",-1] |
| 22 | extreme | ["DPQ","H","PQH",-1] |
| 23 | interior_line | ["OP","R","CDQ","R",-1] |
| 24 | interior_line | ["HY","Z","HCDF","Z",1] |
| 25 | interior_line | ["HY","P","HCDF","P",1] |
| 26 | interior_line | ["HP","R","CDQ","R",-1] |
| 27 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 28 | interior_line | ["CY","P","HCDF","P",-1] |
| 29 | interior_line | ["CZ","R","CDQ","R",-1] |
| 30 | interior_line | ["CP","R","CDQ","R",-1] |
| 31 | interior_line | ["DZ","R","CDQ","R",1] |
| 32 | interior_line | ["DP","Y","OHC","Y",1] |
| 33 | interior_line | ["DP","R","CDQ","R",1] |
| 34 | interior_line | ["ZP","Y","OHC","Y",1] |
| 35 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 36 | interior_line | ["PR","Y","OHC","Y",-1] |
| 37 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 38 | plu | ["OHDYZ","OYZ",-1] |
| 39 | plu | ["DOHYZ","DYZ",1] |
| 40 | plu | ["FHYZP","FYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | "C014" |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFY | CFY | hi | 271/500 | "C033" |
| hi_FYZ | FYZ | hi | 110297/158750 | "C034" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 1 | ["fan","HFZ","FZP","HFP","HZP"] | ["fan","HFZ","P"] |
| 2 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 3 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 4 | ["plu","HDY","OHC","HCD","OHY","HCY","OHD"] | ["plu","HOCDY"] |
| 5 | ["plu","HDF","OHP","HDP","OHF","HFP","OHD"] | ["plu","HODFP"] |
| 6 | ["plu","HCD","HFZ","HCF","HDZ","HCZ","HDF"] | ["plu","HCDFZ"] |
| 7 | ["plu","HCP","HDF","HCD","HFP","HCF","HDP"] | ["plu","HCDFP"] |
| 8 | ["plu","CDP","HCZ","CDZ","HCP","CZP","HCD"] | ["plu","CHDZP"] |
| 9 | ["plu","HDZ","OCD","CDZ","OHD","HCD","ODZ"] | ["plu","DOHCZ"] |
| 10 | ["plu","HDF","ODP","DFP","OHD","HDP","ODF"] | ["plu","DOHFP"] |
| 11 | ["plu","DFZ","OCD","CDF","ODZ","CDZ","ODF"] | ["plu","DOCFZ"] |
| 12 | ["plu","DFZ","HCD","CDF","HDZ","CDZ","HDF"] | ["plu","DHCFZ"] |
| 13 | ["plu","DYP","HDF","DFP","HDY","DFY","HDP"] | ["plu","DHFYP"] |
| 14 | ["plu","DZP","HDF","DFP","HDZ","DFZ","HDP"] | ["plu","DHFZP"] |
| 15 | ["plu","DFY","HFP","DFP","HFY","FYP","HDF"] | ["plu","FHDYP"] |
| 16 | ["plu","DFP","FYZ","DFY","FZP","DFZ","FYP"] | ["plu","FDYZP"] |
| 17 | ["plu","DFP","HZP","DZP","HFP","FZP","HDP"] | ["plu","PHDFZ"] |
| 18 | ["balance",[[1,"FYZ","HDP"],[-1,"YZP","HDF"],[1,"FZP","HDY"],[1,"FYP","HDZ"]]] | ["six","HDFYZP"] |
| 19 | ["balance",[[-1,"OHD","CZP"],[-1,"HDP","OCZ"],[1,"ODP","HCZ"],[-1,"OHP","CDZ"]]] | ["six","CZOHDP"] |
| 20 | ["balance",[[1,"HCD","FYZ"],[1,"CDZ","HFY"],[-1,"HDZ","CFY"],[-1,"HCZ","DFY"]]] | ["six","FYHCDZ"] |
| 21 | ["linear",{"OHC":1,"OCD":-1,"OHD":-1,"HCD":1},"0"] | ["affine_quad","OHCD",-1] |
| 22 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 23 | ["linear",{"HDF":1,"HFP":-1,"HDP":-1,"DFP":-1},"0"] | ["affine_quad","HDFP",1] |
| 24 | ["linear",{"HFZ":1,"HZP":-1,"HFP":-1,"FZP":-1},"0"] | ["affine_quad","HFZP",-1] |
| 25 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 26 | ["linear",{"FYZ":1,"FZP":-1,"FYP":-1,"YZP":-1},"0"] | ["affine_quad","FYZP",1] |
| 27 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 28 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 29 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 30 | ["bary",["DYP",1],[["ODP",1],["HDP",1],["CDP",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DP"] |
| 31 | ["bary",["CFY",1],[["OCF",1],["HCF",1],["CDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CF"] |
| 32 | ["bary",["HCZ",1],[null,null,["HCD",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HC"] |
| 33 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 34 | ["bary",["FYZ",1],[["HFY",-1],["CFY",1],["DFY",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","FY"] |
| 35 | ["bary",["HZP",1],[null,["HDZ",1],["HFZ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HZ"] |
| 36 | ["bary",["CDP",1],[["HCD",1],null,["CDF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CD"] |
| 37 | ["bary",["DYP",-1],[["HDY",-1],null,["DFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DY"] |
| 38 | ["bary",["DZP",-1],[["HDZ",-1],null,["DFZ",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DZ"] |
| 39 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 40 | ["bary",["DFP",1],[null,["DFY",1],["DFZ",1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","DF"] |
| 41 | ["bary",["YZP",1],[["FYZ",1],null,null],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","YZ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s12 | 0 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s13 | 0 | sub | HDP | hi | 3/25 | hi_HDF,lo_DFP,lo_HFP |
| s14 | 0 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s31 | 3 | sumlo | HCF | lo | 142383/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s32 | 4 | sumlo | HDY | lo | 203281/1000000 | lo_HCD,lo_OHY,lo_HCY,lo_OHD,hi_OHC |
| s34 | 5 | sumlo | OHP | lo | 119593/500000 | lo_HDP,lo_OHF,lo_HFP,lo_OHD,hi_HDF |
| s57 | 9 | sumlo | HDZ | lo | 1793/8000 | lo_CDZ,lo_OHD,lo_HCD,lo_ODZ,hi_OCD |
| s59 | 10 | sumlo | ODP | lo | 339801/1000000 | lo_DFP,lo_OHD,lo_HDP,lo_ODF,hi_HDF |
| s60 | 10 | sumhi | ODP | hi | 104057/125000 | s12,hi_OHD,s13,hi_ODF,lo_HDF |
| s67 | 11 | sumlo | DFZ | lo | 127411/1000000 | lo_CDF,lo_ODZ,lo_CDZ,lo_ODF,hi_OCD |
| s79 | 14 | sumlo | DZP | lo | 106839/1000000 | lo_DFP,s57,s67,lo_HDP,hi_HDF |
| s87 | 15 | sumlo | DFY | lo | 2883/10000 | lo_DFP,lo_HFY,lo_FYP,lo_HDF,s14 |
| s94 | 16 | sumlo | FYZ | lo | 5034/15625 | s87,lo_FZP,s67,lo_FYP,s12 |
| s95 | 16 | diffhi | DFY | hi | 153817/200000 | s12,hi_FYZ,s67,lo_FYP,lo_FZP |
| s96 | 17 | sumlo | HZP | lo | 1239/8000 | s79,lo_HFP,lo_FZP,lo_HDP,s12 |
| s125 | 18 | balance_lo | YZP | lo | 113907/500000 | s94,lo_HDP,lo_FZP,s32,lo_FYP,s57,hi_HDF |
| s135 | 19 | balance_lo | HCZ | lo | 114643/1000000 | lo_OHD,lo_CZP,lo_HDP,lo_OCZ,s34,lo_CDZ,s60 |
| s146 | 22 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s155 | 24 | linear | HFZ | lo | 2727/8000 | lo_FZP,lo_HFP,s96 |
| s159 | 26 | linear | FYZ | lo | 206907/500000 | lo_FYP,lo_FZP,s125 |
| s162 | 27 | quad | CDP | lo | 81/250 | hi_CDQ |
| s164 | 28 | linear | HCD | hi | 721/1000 | lo_HDF |
| s165 | 29 | linear | CDF | hi | 857617/1000000 | s31 |
| s171 | 30 | bary_lo | DYP | lo | 162977/1000000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,s59,lo_HDP,s162 |
| s220 | 32 | bary_hi | HCZ | hi | 3231/8000 | s164,lo_CDZ,s57,s135,s164 |
| s226 | 33 | bary_lo | DFZ | lo | 18681/125000 | s164,lo_CDZ,s57,s135,lo_HDF,lo_CDF |
| s230 | 34 | bary_hi | FYZ | hi | 587297/1000000 | s164,lo_CDZ,s57,s135,lo_HFY,hi_CFY,s95 |
| s241 | 35 | bary_lo | HZP | lo | 34343/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s57,s155 |
| s246 | 36 | bary_hi | CDP | hi | 69431/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s164,s165 |
| s254 | 38 | bary_hi | DZP | lo | 1774/15625 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s57,s226 |
| s276 | 39 | bary_lo | HDZ | hi | 57999/125000 | s246,s254,lo_CZP,lo_CDZ,s164,lo_HDP |
| s328 | 1 | sum | HFZ | lo | 71543/200000 | lo_FZP,lo_HFP,s241 |
| s330 | 2 | sum | DFY | lo | 348977/1000000 | lo_DFP,s171,lo_FYP |
| s335 | 6 | diff | HCF | lo | 134343/500000 | lo_HCD,s328,s220,hi_HDF,s276 |
| s336 | 7 | sumlo | HCP | lo | 292581/1000000 | lo_HCD,lo_HFP,s335,lo_HDP,hi_HDF |
| s349 | 8 | sumlo | HCZ | lo | 33037/200000 | lo_CDZ,s336,lo_CZP,lo_HCD,s246 |
| s360 | 13 | sumlo | DYP | lo | 167843/1000000 | lo_DFP,s32,s330,lo_HDP,hi_HDF |
| s364 | 16 | diffhi | DFY | hi | 121671/200000 | s12,s230,s226,lo_FYP,lo_FZP |
| s379 | 18 | balance_lo | YZP | lo | 15979/62500 | s159,lo_HDP,lo_FZP,s32,lo_FYP,s57,hi_HDF |
| s388 | 21 | linear | OHD | hi | 989/1000 | s164,s146,hi_OHC |
| s399 | 25 | linear | DFY | lo | 353843/1000000 | lo_DFP,s360,lo_FYP |
| s402 | 26 | linear | FYZ | lo | 6901/15625 | lo_FYP,lo_FZP,s379 |
| s411 | 31 | bary_hi | CFY | hi | 270483/500000 | s388,s32,lo_ODY,lo_OHY,hi_OCF,hi_HCF,lo_CDF |
| s432 | 34 | bary_hi | FYZ | hi | 496941/1000000 | s164,lo_CDZ,s57,s349,lo_HFY,s411,s364 |
| s443 | 37 | bary_hi | DYP | lo | 84661/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s32,s399 |
| s491 | 40 | bary_lo | DFP | lo | 23547/250000 | s432,s379,lo_FZP,lo_FYP,s399,s226 |
| s495 | 41 | bary_hi | YZP | hi | 310941/1000000 | s432,s379,lo_FZP,lo_FYP,s432 |
| s496 | 0 | sum | HDF | lo | 70047/250000 | s491,lo_HDP,lo_HFP |
| s499 | 2 | sum | DFY | lo | 35651/100000 | s491,s443,lo_FYP |
| s517 | 12 | sumlo | DFZ | lo | 74801/500000 | lo_CDF,s57,lo_CDZ,s496,s164 |
| s523 | 16 | sumlo | DFP | lo | 23679/250000 | s499,lo_FZP,s517,lo_FYP,s432 |
| s524 | 16 | diffhi | DFY | hi | 491613/1000000 | s12,s432,s517,lo_FYP,lo_FZP |
| s541 | 18 | balance_lo | YZP | lo | 264129/1000000 | s402,lo_HDP,lo_FZP,s32,lo_FYP,s57,hi_HDF |
| s543 | 18 | balance_hi | HDZ | hi | 47269/125000 | s495,hi_HDF,s402,lo_HDP,lo_FZP,s32,lo_FYP |
| s555 | 20 | balance_lo | HCZ | lo | 112483/500000 | lo_HCD,s402,lo_CDZ,lo_HFY,s543,s411,s524 |
| s570 | 23 | linear | HDF | lo | 70179/250000 | s523,lo_HDP,lo_HFP |
| s581 | 26 | linear | FYZ | lo | 450129/1000000 | lo_FYP,lo_FZP,s541 |
| s584 | 28 | linear | HCD | hi | 179821/250000 | s570 |
| s610 | 34 | bary_hi | FYZ | hi | 221781/500000 | s584,lo_CDZ,s57,s555,lo_HFY,s411,s524 |

## Conclusion

{"triangle":"FYZ","lower":"s581","upper":"s610"}
