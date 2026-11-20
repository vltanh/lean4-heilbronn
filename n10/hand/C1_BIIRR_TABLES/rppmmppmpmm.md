# Leaf rppmmppmpmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYZ":1,"DYP":-1,"FYP":-1}

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
| 17 | interior_line | ["OZ","R","CDQ","R",-1] |
| 18 | interior_line | ["HY","Z","HCDF","Z",1] |
| 19 | interior_line | ["HY","P","HCDF","P",1] |
| 20 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 21 | interior_line | ["CY","P","HCDF","P",-1] |
| 22 | interior_line | ["CZ","R","CDQ","R",-1] |
| 23 | interior_line | ["CP","R","CDQ","R",-1] |
| 24 | interior_line | ["DZ","R","CDQ","R",1] |
| 25 | interior_line | ["DP","R","CDQ","R",1] |
| 26 | interior_line | ["ZP","Y","OHC","Y",1] |
| 27 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | capacity | ["HFY","P","Z","FYZ",1,"271/500","C024"] |
| 29 | plu | ["OHDZP","ODP",1] |
| 30 | plu | ["OHDPR","OPR",-1] |
| 31 | plu | ["DOYZP","DZP",-1] |
| 32 | plu | ["FHCYP","FCP",-1] |
| 33 | plu | ["FHCPQ","FPQ",1] |
| 34 | plu | ["FHCPR","FPR",1] |
| 35 | plu | ["YOHDZ","YOZ",1] |
| 36 | plu | ["YHDPQ","YPQ",-1] |
| 37 | plu | ["YHDPR","YPR",-1] |
| 38 | capacity | ["HCF","P","Z","CFZ",-1,"127/200","C027"] |
| 39 | plu | ["FOHCZ","FOZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 279/1000 | ["cost","P"] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 4 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 5 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 6 | ["fan","HCF","CFP","HCP","HFP"] | ["fan","HCF","P"] |
| 7 | ["fan","HDZ","DZP","HDP","HZP"] | ["fan","HDZ","P"] |
| 8 | ["fan","HFY","FYP","HFP","HYP"] | ["fan","HFY","P"] |
| 9 | ["fan","HFZ","FZP","HFP","HZP"] | ["fan","HFZ","P"] |
| 10 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 11 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 12 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 13 | ["plu","OCZ","OHD","OCD","OHZ","ODZ","OHC"] | ["plu","OHCDZ"] |
| 14 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 15 | ["plu","HCP","HDZ","HCD","HZP","HCZ","HDP"] | ["plu","HCDZP"] |
| 16 | ["plu","HFZ","HYP","HFP","HYZ","HFY","HZP"] | ["plu","HFYZP"] |
| 17 | ["plu","CDF","HCZ","CDZ","HCF","CFZ","HCD"] | ["plu","CHDFZ"] |
| 18 | ["plu","CDZ","OHD","HCD","ODZ","HDZ","OCD"] | ["plu","DOHCZ"] |
| 19 | ["plu","DFP","HCF","CDF","HFP","CFP","HDF"] | ["plu","FHCDP"] |
| 20 | ["plu","FZP","HFY","FYP","HFZ","FYZ","HFP"] | ["plu","FHYZP"] |
| 21 | ["plu","CDZ","OHZ","HCZ","ODZ","HDZ","OCZ"] | ["plu","ZOHCD"] |
| 22 | ["plu","DFZ","HCZ","CDZ","HFZ","CFZ","HDZ"] | ["plu","ZHCDF"] |
| 23 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 24 | ["balance",[[1,"HCF","ODZ"],[1,"CFZ","OHD"],[1,"HFZ","OCD"],[-1,"HCZ","ODF"]]] | ["six","ODHCFZ"] |
| 25 | ["balance",[[-1,"HCY","ODZ"],[1,"CYZ","OHD"],[-1,"HYZ","OCD"],[-1,"HCZ","ODY"]]] | ["six","ODHCYZ"] |
| 26 | ["balance",[[-1,"OCF","HDZ"],[-1,"CFZ","OHD"],[1,"OFZ","HCD"],[-1,"OCZ","HDF"]]] | ["six","HDOCFZ"] |
| 27 | ["balance",[[-1,"CFY","HDP"],[-1,"FYP","HCD"],[-1,"CYP","HDF"],[1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 28 | ["balance",[[-1,"CDF","HZP"],[1,"DFZ","HCP"],[-1,"CFZ","HDP"],[-1,"CDZ","HFP"]]] | ["six","HPCDFZ"] |
| 29 | ["balance",[[-1,"ODY","CFZ"],[-1,"DYZ","OCF"],[1,"OYZ","CDF"],[-1,"ODZ","CFY"]]] | ["six","CFODYZ"] |
| 30 | ["balance",[[-1,"HDZ","CFP"],[1,"DZP","HCF"],[-1,"HZP","CDF"],[-1,"HDP","CFZ"]]] | ["six","CFHDZP"] |
| 31 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 32 | ["balance",[[1,"HCD","FYP"],[1,"CDY","HFP"],[-1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 33 | ["balance",[[-1,"HCD","FYP"],[-1,"CDF","HYP"],[-1,"HDF","CYP"],[1,"HCF","DYP"]]] | ["six","YPHCDF"] |
| 34 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 35 | ["linear",{"OHC":-1,"OCZ":1,"OHZ":1,"HCZ":-1},"0"] | ["affine_quad","OHCZ",1] |
| 36 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 37 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 38 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 39 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 40 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 41 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 42 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 43 | ["linear",{"HFY":1,"HYP":-1,"HFP":-1,"FYP":-1},"0"] | ["affine_quad","HFYP",-1] |
| 44 | ["linear",{"HFZ":1,"HZP":-1,"HFP":-1,"FZP":-1},"0"] | ["affine_quad","HFZP",-1] |
| 45 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 46 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 47 | ["quad","CDQ","CDY","93/125"] | ["quad","CQDY","ZR"] |
| 48 | ["support","HFZ","HFY","FYZ","1023/1000"] | ["support_pent","FZCYH"] |
| 49 | ["linear",{"OHC":1,"OHF":-1},"0"] | ["c1_norm","c_ge_f"] |
| 50 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 51 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 52 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 53 | ["bary",["HDY",-1],[["OHD",-1],null,null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HD"] |
| 54 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 55 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CD"] |
| 56 | ["bary",["OHZ",-1],[null,null,["OHD",-1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OH"] |
| 57 | ["bary",["HDZ",-1],[["OHD",-1],null,null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","HD"] |
| 58 | ["bary",["CDZ",1],[["OCD",1],["HCD",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CD"] |
| 59 | ["bary",["DFZ",1],[["ODF",1],["HDF",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DF"] |
| 60 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 61 | ["bary",["HYP",1],[null,["HCY",1],["HFY",1]],"HCF",["CFP","HFP","HCP"]] | ["bary","HCF","P","HY"] |
| 62 | ["bary",["HCP",1],[null,["HCD",1],["HCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HC"] |
| 63 | ["bary",["HYP",1],[null,["HDY",1],["HYZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HY"] |
| 64 | ["bary",["CFP",1],[["HCF",1],["CDF",-1],["CFZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CF"] |
| 65 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 66 | ["bary",["HCP",1],[null,["HCF",1],["HCY",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","HC"] |
| 67 | ["bary",null,[["HCP",1],["CFP",-1],["CYP",1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","CP"] |
| 68 | ["bary",["DZP",-1],[["HDZ",-1],["DFZ",-1],["DYZ",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","DZ"] |
| 69 | ["bary",["FZP",-1],[["HFZ",-1],null,["FYZ",-1]],"HFY",["FYP","HYP","HFP"]] | ["bary","HFY","P","FZ"] |
| 70 | ["bary",["HCZ",1],[null,["HCD",1],["HCF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HC"] |
| 71 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HD"] |
| 72 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HF"] |
| 73 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 74 | ["bary",["CDZ",1],[null,null,["CDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","CD"] |
| 75 | ["bary",["CYZ",-1],[null,["CDY",-1],["CFY",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","CY"] |
| 76 | ["bary",["DFZ",1],[["CDF",1],null,null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DF"] |
| 77 | ["bary",["FZP",1],[["CFP",1],["DFP",1],["FYP",1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","FP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 1 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s4 | 2 | sub | HDZ | hi | 157/250 | hi_OHD,lo_ODZ,lo_OHZ |
| s42 | 12 | sumlo | OCY | lo | 11981/125000 | lo_OCD,lo_OHY,lo_ODY,lo_OHC,hi_OHD |
| s60 | 14 | sumlo | HCF | lo | 322093/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s62 | 15 | sumlo | HCP | lo | 58273/500000 | lo_HCD,lo_HZP,lo_HCZ,lo_HDP,s4 |
| s97 | 23 | balance_lo | CFY | lo | 91661/500000 | s60,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s99 | 24 | balance_lo | HCZ | lo | 17159/100000 | s60,lo_ODZ,lo_CFZ,lo_OHD,lo_HFZ,lo_OCD,hi_ODF |
| s109 | 27 | balance_lo | CFP | lo | 71847/500000 | s97,lo_HDP,lo_FYP,lo_HCD,lo_CYP,lo_HDF,s1 |
| s119 | 30 | balance_lo | DZP | lo | 32553/250000 | lo_HDZ,s109,lo_HZP,lo_CDF,lo_HDP,lo_CFZ,hi_HCF |
| s129 | 32 | balance_lo | CFP | lo | 157863/1000000 | lo_HCD,lo_FYP,lo_CDY,lo_HFP,lo_HCY,lo_DFP,s1 |
| s131 | 33 | balance_lo | DYP | lo | 84359/500000 | lo_HCD,lo_FYP,lo_CDF,lo_HYP,lo_HDF,lo_CYP,hi_HCF |
| s133 | 34 | linear | OHC | lo | 35231/125000 | lo_HCY,s42,lo_OHY |
| s150 | 40 | linear | HCF | lo | 367409/1000000 | s129,s62,lo_HFP |
| s156 | 41 | linear | HDY | lo | 177359/500000 | s131,lo_HDP,lo_HYP |
| s158 | 42 | linear | HDZ | lo | 79053/250000 | s119,lo_HDP,lo_HZP |
| s163 | 47 | quad | CDY | lo | 81/250 | hi_CDQ |
| s166 | 50 | linear | HCD | hi | 907/1000 | lo_HDF |
| s167 | 51 | linear | CDF | hi | 632591/1000000 | s150 |
| s182 | 52 | bary_lo | OCY | lo | 48321/500000 | hi_OHD,s156,lo_ODY,lo_OHY,s133,lo_OCD |
| s190 | 54 | bary_lo | HFY | hi | 213619/500000 | hi_OHD,s156,lo_ODY,lo_OHY,hi_OHF,hi_HDF |
| s194 | 55 | bary_hi | CDY | hi | 352609/500000 | hi_OHD,s156,lo_ODY,lo_OHY,hi_OCD,s166 |
| s216 | 58 | bary_lo | CDZ | lo | 15721/125000 | hi_OHD,s158,lo_ODZ,lo_OHZ,lo_OCD,lo_HCD |
| s224 | 59 | bary_lo | DFZ | lo | 7137/50000 | hi_OHD,s158,lo_ODZ,lo_OHZ,lo_ODF,lo_HDF |
| s278 | 60 | bary_lo | HDZ | hi | 304821/500000 | s166,s216,s158,s99,s166 |
| s328 | 62 | bary_lo | HCP | lo | 33011/250000 | s278,s119,lo_HZP,lo_HDP,lo_HCD,s99 |
| s331 | 65 | bary_hi | CYP | lo | 64119/500000 | s278,s119,lo_HZP,lo_HDP,lo_HCY,s163,lo_CYZ |
| s347 | 66 | bary_hi | HCP | hi | 169153/500000 | s190,lo_FYP,lo_HYP,lo_HFP,hi_HCF,lo_HCY |
| s355 | 68 | bary_hi | DZP | lo | 30483/200000 | s190,lo_FYP,lo_HYP,lo_HFP,s158,s224,lo_DYZ |
| s362 | 70 | bary_lo | HCZ | lo | 87537/500000 | s167,s224,lo_CFZ,s216,lo_HCD,s150 |
| s363 | 71 | bary_lo | HDZ | hi | 143711/250000 | s167,s224,lo_CFZ,s216,s166,lo_HDF |
| s365 | 73 | bary_lo | HYZ | lo | 33691/200000 | s167,s224,lo_CFZ,s216,lo_HCY,s156,lo_HFY |
| s371 | 77 | bary_lo | FZP | lo | 101553/1000000 | s194,lo_DYZ,lo_CYZ,s216,s129,lo_DFP,lo_FYP |
| s402 | 0 | sum | OHC | lo | 141321/500000 | lo_HCY,s182,lo_OHY |
| s404 | 3 | sum | OHZ | lo | 70891/200000 | s365,lo_OHY,lo_OYZ |
| s407 | 6 | sum | HCF | lo | 382907/1000000 | s129,s328,lo_HFP |
| s408 | 7 | sum | HDZ | lo | 67683/200000 | s355,lo_HDP,lo_HZP |
| s411 | 9 | sum | HFZ | lo | 287553/1000000 | s371,lo_HFP,lo_HZP |
| s413 | 12 | sumlo | OCY | lo | 3027/31250 | lo_OCD,lo_OHY,lo_ODY,s402,hi_OHD |
| s414 | 13 | sumlo | OCZ | lo | 94917/1000000 | lo_OCD,s404,lo_ODZ,s402,hi_OHD |
| s419 | 15 | sumlo | HCP | lo | 140601/1000000 | lo_HCD,lo_HZP,s362,lo_HDP,s363 |
| s426 | 18 | sumlo | CDZ | lo | 130067/1000000 | lo_HCD,lo_ODZ,s408,lo_OCD,hi_OHD |
| s433 | 23 | balance_lo | CFY | lo | 200289/1000000 | s407,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s434 | 24 | balance_lo | HCZ | lo | 89703/500000 | s407,lo_ODZ,lo_CFZ,lo_OHD,s411,lo_OCD,hi_ODF |
| s437 | 26 | balance_lo | OFZ | lo | 99109/500000 | lo_OCF,s408,lo_CFZ,lo_OHD,s414,lo_HDF,s166 |
| s439 | 28 | balance_lo | DFZ | lo | 161659/1000000 | lo_CDF,lo_HZP,lo_CFZ,lo_HDP,s426,lo_HFP,s347 |
| s442 | 29 | balance_lo | OYZ | lo | 111479/1000000 | lo_ODY,lo_CFZ,lo_DYZ,lo_OCF,lo_ODZ,s433,s167 |
| s444 | 32 | balance_lo | CFP | lo | 164527/1000000 | lo_HCD,lo_FYP,s163,lo_HFP,lo_HCY,lo_DFP,s1 |
| s445 | 33 | balance_lo | DYP | lo | 86939/500000 | lo_HCD,lo_FYP,lo_CDF,lo_HYP,lo_HDF,s331,hi_HCF |
| s448 | 34 | linear | OHC | lo | 17679/62500 | lo_HCY,s413,lo_OHY |
| s455 | 36 | linear | OHZ | lo | 186467/500000 | s365,lo_OHY,s442 |
| s456 | 37 | linear | ODF | lo | 452877/1000000 | s439,lo_ODZ,s437 |
| s457 | 38 | linear | ODY | lo | 297479/1000000 | lo_DYZ,lo_ODZ,s442 |
| s462 | 40 | linear | HCF | lo | 24883/62500 | s444,s419,lo_HFP |
| s463 | 41 | linear | HDY | lo | 179939/500000 | s445,lo_HDP,lo_HYP |
| s466 | 45 | linear | CDF | lo | 192363/500000 | s426,lo_CFZ,s439 |
| s472 | 51 | linear | HCF | hi | 307637/500000 | s466 |
| s473 | 51 | linear | CDF | hi | 37617/62500 | s462 |
| s478 | 52 | bary_lo | OCY | lo | 102153/1000000 | hi_OHD,s463,s457,lo_OHY,s448,lo_OCD |
| s486 | 53 | bary_lo | HDY | hi | 609521/1000000 | hi_OHD,s463,s457,lo_OHY,hi_OHD |
| s487 | 54 | bary_lo | HFY | hi | 25969/62500 | hi_OHD,s463,s457,lo_OHY,hi_OHF,hi_HDF |
| s491 | 55 | bary_hi | CDY | hi | 70351/100000 | hi_OHD,s463,s457,lo_OHY,hi_OCD,s166 |
| s509 | 57 | bary_lo | HDZ | hi | 267033/500000 | hi_OHD,s408,lo_ODZ,s455,hi_OHD |
| s515 | 59 | bary_lo | DFZ | lo | 161909/1000000 | hi_OHD,s408,lo_ODZ,s455,s456,lo_HDF |
| s551 | 62 | bary_lo | HCP | lo | 152091/1000000 | s509,s355,lo_HZP,lo_HDP,lo_HCD,s434 |
| s555 | 65 | bary_hi | CYP | lo | 5329/40000 | s509,s355,lo_HZP,lo_HDP,lo_HCY,s163,lo_CYZ |
| s572 | 66 | bary_hi | HCP | hi | 39879/125000 | s487,lo_FYP,lo_HYP,lo_HFP,s472,lo_HCY |
| s579 | 68 | bary_hi | DZP | lo | 163353/1000000 | s487,lo_FYP,lo_HYP,lo_HFP,s408,s515,lo_DYZ |
| s585 | 70 | bary_lo | HCZ | lo | 24159/125000 | s473,s515,lo_CFZ,s426,lo_HCD,s462 |
| s586 | 72 | bary_lo | HFZ | hi | 434523/1000000 | s473,s515,lo_CFZ,s426,s472,hi_HDF |
| s587 | 73 | bary_lo | HYZ | lo | 5451/31250 | s473,s515,lo_CFZ,s426,lo_HCY,s463,lo_HFY |
| s590 | 75 | bary_hi | CYZ | lo | 93347/1000000 | s473,s515,lo_CFZ,s426,s163,s433 |
| s594 | 77 | bary_lo | FZP | lo | 20491/200000 | s491,lo_DYZ,s590,s426,s444,lo_DFP,lo_FYP |
| s618 | 0 | sum | OHC | lo | 288153/1000000 | lo_HCY,s478,lo_OHY |
| s623 | 4 | sum | ODF | lo | 453127/1000000 | s515,lo_ODZ,s437 |
| s624 | 6 | sum | HCF | lo | 204809/500000 | s444,s551,lo_HFP |
| s625 | 7 | sum | HDZ | lo | 349353/1000000 | s579,lo_HDP,lo_HZP |
| s627 | 9 | sum | HFZ | lo | 57691/200000 | s594,lo_HFP,lo_HZP |
| s628 | 10 | sum | CDF | lo | 24061/62500 | s426,lo_CFZ,s515 |
| s629 | 12 | sumlo | OCY | lo | 51863/500000 | lo_OCD,lo_OHY,s457,s618,hi_OHD |
| s634 | 15 | sumlo | HCP | lo | 30901/200000 | lo_HCD,lo_HZP,s585,lo_HDP,s509 |
| s636 | 16 | sumlo | HYP | lo | 97047/1000000 | lo_HFP,s587,lo_HFY,lo_HZP,s586 |
| s638 | 17 | sumlo | HCZ | lo | 39151/200000 | s426,s624,lo_CFZ,lo_HCD,s473 |
| s642 | 18 | sumlo | CDZ | lo | 26437/200000 | lo_HCD,lo_ODZ,s625,lo_OCD,hi_OHD |
| s649 | 23 | balance_lo | CFY | lo | 43603/200000 | s624,s457,lo_HFY,lo_OCD,lo_HCY,s623,hi_OHD |
| s650 | 25 | balance_lo | CYZ | lo | 6291/62500 | lo_HCY,lo_ODZ,s587,lo_OCD,s638,s457,hi_OHD |
| s654 | 28 | balance_lo | DFZ | lo | 88933/500000 | s628,lo_HZP,lo_CFZ,lo_HDP,s642,lo_HFP,s572 |
| s656 | 29 | balance_lo | OYZ | lo | 122763/1000000 | s457,lo_CFZ,lo_DYZ,lo_OCF,lo_ODZ,s649,s473 |
| s657 | 30 | balance_lo | DZP | lo | 33133/200000 | s625,s444,lo_HZP,s628,lo_HDP,lo_CFZ,s472 |
| s658 | 31 | balance_lo | OFZ | lo | 101237/500000 | s618,s654,lo_OCD,s627,lo_OHD,lo_CFZ,s166 |
| s659 | 32 | balance_lo | CFP | lo | 33903/200000 | lo_HCD,lo_FYP,s163,lo_HFP,lo_HCY,lo_DFP,s486 |
| s660 | 33 | balance_lo | DYP | lo | 185759/1000000 | lo_HCD,lo_FYP,s628,s636,lo_HDF,s555,s472 |
| s662 | 34 | linear | OHC | lo | 144863/500000 | lo_HCY,s629,lo_OHY |
| s669 | 36 | linear | OHZ | lo | 78039/200000 | s587,lo_OHY,s656 |
| s670 | 37 | linear | ODF | lo | 23667/50000 | s654,lo_ODZ,s658 |
| s671 | 38 | linear | ODY | lo | 308763/1000000 | lo_DYZ,lo_ODZ,s656 |
| s672 | 40 | linear | HCF | lo | 20851/50000 | s659,s634,lo_HFP |
| s674 | 41 | linear | HDY | lo | 187903/500000 | s660,lo_HDP,s636 |
| s675 | 42 | linear | HDZ | lo | 70333/200000 | s657,lo_HDP,lo_HZP |
| s678 | 43 | linear | HFY | lo | 283047/1000000 | lo_FYP,lo_HFP,s636 |
| s680 | 45 | linear | CDF | lo | 403051/1000000 | s642,lo_CFZ,s654 |
| s683 | 46 | linear | CDY | lo | 325841/1000000 | s642,s650,lo_DYZ |
| s686 | 48 | support_z | FYZ | lo | 34259/200000 | s627,s487 |
| s688 | 51 | linear | HCF | hi | 596949/1000000 | s680 |
| s689 | 51 | linear | CDF | hi | 29149/50000 | s672 |
| s691 | 52 | bary_lo | OCY | lo | 107463/1000000 | hi_OHD,s674,s671,lo_OHY,s662,lo_OCD |
| s699 | 53 | bary_lo | HDY | hi | 598237/1000000 | hi_OHD,s674,s671,lo_OHY,hi_OHD |
| s700 | 54 | bary_lo | HFY | hi | 408339/1000000 | hi_OHD,s674,s671,lo_OHY,hi_OHF,hi_HDF |
| s719 | 57 | bary_lo | HDZ | hi | 103361/200000 | hi_OHD,s675,lo_ODZ,s669,hi_OHD |
| s721 | 58 | bary_lo | CDZ | lo | 132633/1000000 | hi_OHD,s675,lo_ODZ,s669,lo_OCD,lo_HCD |
| s755 | 62 | bary_lo | HCP | lo | 160113/1000000 | s719,s657,lo_HZP,lo_HDP,lo_HCD,s638 |
| s757 | 63 | bary_lo | HYP | lo | 12377/125000 | s719,s657,lo_HZP,lo_HDP,s674,s587 |
| s760 | 65 | bary_hi | CYP | lo | 136277/1000000 | s719,s657,lo_HZP,lo_HDP,lo_HCY,s683,s650 |
| s777 | 66 | bary_hi | HCP | hi | 18991/62500 | s700,lo_FYP,s757,lo_HFP,s688,lo_HCY |
| s784 | 68 | bary_hi | DZP | lo | 17249/100000 | s700,lo_FYP,s757,lo_HFP,s675,s654,lo_DYZ |
| s786 | 69 | bary_hi | FZP | lo | 26177/250000 | s700,lo_FYP,s757,lo_HFP,s627,s686 |
| s790 | 72 | bary_lo | HFZ | hi | 16589/40000 | s689,s654,lo_CFZ,s721,s688,hi_HDF |
| s791 | 73 | bary_lo | HYZ | lo | 22669/125000 | s689,s654,lo_CFZ,s721,lo_HCY,s674,s678 |
| s794 | 75 | bary_hi | CYZ | lo | 5079/50000 | s689,s654,lo_CFZ,s721,s683,s649 |
| s795 | 76 | bary_hi | DFZ | hi | 357347/1000000 | s689,s654,lo_CFZ,s721,s689 |
| s820 | 0 | sum | OHC | lo | 293463/1000000 | lo_HCY,s691,lo_OHY |
| s821 | 2 | sum | OHD | lo | 41743/50000 | s675,lo_ODZ,s669 |
| s826 | 6 | sum | HCF | lo | 105657/250000 | s659,s755,lo_HFP |
| s828 | 7 | sum | HDZ | lo | 35849/100000 | s784,lo_HDP,lo_HZP |
| s830 | 8 | sum | HFY | lo | 35627/125000 | lo_FYP,lo_HFP,s757 |
| s831 | 9 | sum | HFZ | lo | 72677/250000 | s786,lo_HFP,lo_HZP |
| s832 | 10 | sum | CDF | lo | 403499/1000000 | s721,lo_CFZ,s654 |
| s833 | 11 | sum | CDY | lo | 327213/1000000 | s721,s794,lo_DYZ |
| s834 | 12 | sumlo | OCY | lo | 108617/1000000 | lo_OCD,lo_OHY,s671,s820,hi_OHD |
| s841 | 16 | sumlo | HYP | lo | 5229/50000 | lo_HFP,s791,s830,lo_HZP,s790 |
| s843 | 17 | sumlo | HCZ | lo | 103431/500000 | s721,s826,lo_CFZ,lo_HCD,s689 |
| s849 | 18 | sumlo | CDZ | lo | 66977/500000 | lo_HCD,lo_ODZ,s828,lo_OCD,hi_OHD |
| s855 | 20 | sumlo | FZP | lo | 52611/500000 | lo_FYP,s831,s686,lo_HFP,s700 |
| s860 | 23 | balance_lo | CFY | lo | 229699/1000000 | s826,s671,s830,lo_OCD,lo_HCY,s670,hi_OHD |
| s861 | 25 | balance_lo | CYZ | lo | 53817/500000 | lo_HCY,lo_ODZ,s791,lo_OCD,s843,s671,hi_OHD |
| s865 | 28 | balance_lo | DFZ | lo | 603/3125 | s832,lo_HZP,lo_CFZ,lo_HDP,s849,lo_HFP,s777 |
| s866 | 28 | balance_lo | HCP | lo | 41019/250000 | s832,lo_HZP,lo_CFZ,lo_HDP,s849,lo_HFP,s795 |
| s869 | 29 | balance_lo | OYZ | lo | 26081/200000 | s671,lo_CFZ,lo_DYZ,lo_OCF,lo_ODZ,s860,s689 |
| s870 | 30 | balance_lo | DZP | lo | 3583/20000 | s828,s659,lo_HZP,s832,lo_HDP,lo_CFZ,s688 |
| s871 | 31 | balance_lo | OFZ | lo | 13131/62500 | s820,s865,lo_OCD,s831,s821,lo_CFZ,s166 |
| s872 | 32 | balance_lo | CFP | lo | 173211/1000000 | lo_HCD,lo_FYP,s833,lo_HFP,lo_HCY,lo_DFP,s699 |
| s874 | 33 | balance_lo | DYP | lo | 5001/25000 | lo_HCD,lo_FYP,s832,s841,lo_HDF,s760,s688 |
| s876 | 34 | linear | OHC | lo | 294617/1000000 | lo_HCY,s834,lo_OHY |
| s885 | 36 | linear | OHZ | lo | 404757/1000000 | s791,lo_OHY,s869 |
| s886 | 37 | linear | ODF | lo | 62007/125000 | s865,lo_ODZ,s871 |
| s887 | 38 | linear | ODY | lo | 63281/200000 | lo_DYZ,lo_ODZ,s869 |
| s890 | 39 | linear | HCD | lo | 349653/500000 | s849,s843,s828 |
| s891 | 40 | linear | HCF | lo | 430287/1000000 | s872,s866,lo_HFP |
| s892 | 41 | linear | HDY | lo | 19881/50000 | s874,lo_HDP,s841 |
| s893 | 42 | linear | HDZ | lo | 7303/20000 | s870,lo_HDP,lo_HZP |
| s896 | 43 | linear | HFY | lo | 14529/50000 | lo_FYP,lo_HFP,s841 |
| s898 | 44 | linear | HFZ | lo | 145611/500000 | s855,lo_HFP,lo_HZP |
| s899 | 45 | linear | CDF | lo | 209957/500000 | s849,lo_CFZ,s865 |
| s902 | 46 | linear | CDY | lo | 83647/250000 | s849,s861,lo_DYZ |
| s906 | 48 | support_z | FYZ | lo | 87489/500000 | s898,s700 |
| s909 | 50 | linear | HDF | hi | 150347/500000 | s890 |
| s910 | 51 | linear | HCF | hi | 290043/500000 | s899 |
| s911 | 51 | linear | CDF | hi | 569713/1000000 | s891 |
| s915 | 52 | bary_lo | OCY | lo | 4449/40000 | hi_OHD,s892,s887,lo_OHY,s876,lo_OCD |
| s923 | 53 | bary_lo | HDY | hi | 118119/200000 | hi_OHD,s892,s887,lo_OHY,hi_OHD |
| s924 | 54 | bary_lo | HFY | hi | 402993/1000000 | hi_OHD,s892,s887,lo_OHY,hi_OHF,s909 |
| s942 | 57 | bary_lo | HDZ | hi | 502243/1000000 | hi_OHD,s893,lo_ODZ,s885,hi_OHD |
| s944 | 58 | bary_lo | CDZ | lo | 135737/1000000 | hi_OHD,s893,lo_ODZ,s885,lo_OCD,s890 |
| s979 | 62 | bary_lo | HCP | lo | 83897/500000 | s942,s870,lo_HZP,lo_HDP,s890,s843 |
| s981 | 63 | bary_lo | HYP | lo | 107207/1000000 | s942,s870,lo_HZP,lo_HDP,s892,s791 |
| s984 | 65 | bary_hi | CYP | lo | 35111/250000 | s942,s870,lo_HZP,lo_HDP,lo_HCY,s902,s861 |
| s1000 | 66 | bary_hi | HCP | hi | 36361/125000 | s924,lo_FYP,s981,lo_HFP,s910,lo_HCY |
| s1007 | 68 | bary_hi | DZP | lo | 45599/250000 | s924,lo_FYP,s981,lo_HFP,s893,s865,lo_DYZ |
| s1009 | 69 | bary_hi | FZP | lo | 53793/500000 | s924,lo_FYP,s981,lo_HFP,s898,s906 |
| s1011 | 70 | bary_lo | HCZ | lo | 6771/31250 | s911,s865,lo_CFZ,s944,s890,s891 |
| s1012 | 72 | bary_lo | HFZ | hi | 39627/100000 | s911,s865,lo_CFZ,s944,s910,s909 |
| s1013 | 73 | bary_lo | HYZ | lo | 949/5000 | s911,s865,lo_CFZ,s944,lo_HCY,s892,s896 |
| s1016 | 75 | bary_hi | CYZ | lo | 21869/200000 | s911,s865,lo_CFZ,s944,s902,s860 |
| s1017 | 76 | bary_hi | DFZ | hi | 21311/62500 | s911,s865,lo_CFZ,s944,s911 |
| s1044 | 0 | sum | OHC | lo | 11889/40000 | lo_HCY,s915,lo_OHY |
| s1045 | 2 | sum | OHD | lo | 862907/1000000 | s893,lo_ODZ,s885 |
| s1050 | 5 | sum | HCD | lo | 717559/1000000 | s944,s1011,s893 |
| s1051 | 6 | sum | HCF | lo | 86801/200000 | s872,s979,lo_HFP |
| s1053 | 7 | sum | HDZ | lo | 92099/250000 | s1007,lo_HDP,lo_HZP |
| s1055 | 8 | sum | HFY | lo | 293207/1000000 | lo_FYP,lo_HFP,s981 |
| s1056 | 9 | sum | HFZ | lo | 146793/500000 | s1009,lo_HFP,lo_HZP |
| s1058 | 10 | sum | CDF | lo | 421697/1000000 | s944,lo_CFZ,s865 |
| s1059 | 11 | sum | CDY | lo | 169041/500000 | s944,s1016,lo_DYZ |
| s1067 | 16 | sumlo | HYP | lo | 28339/250000 | lo_HFP,s1013,s1055,lo_HZP,s1012 |
| s1069 | 17 | sumlo | HCZ | lo | 110269/500000 | s944,s1051,lo_CFZ,s1050,s911 |
| s1075 | 18 | sumlo | CDZ | lo | 8629/62500 | s1050,lo_ODZ,s1053,lo_OCD,hi_OHD |
| s1083 | 19 | sumlo | DFP | lo | 5961/62500 | s1058,lo_HFP,s872,lo_HDF,s910 |
| s1084 | 20 | sumlo | FZP | lo | 27033/250000 | lo_FYP,s1056,s906,lo_HFP,s924 |
| s1091 | 23 | balance_lo | CFY | lo | 240227/1000000 | s1051,s887,s1055,lo_OCD,lo_HCY,s886,hi_OHD |
| s1092 | 25 | balance_lo | CYZ | lo | 57589/500000 | lo_HCY,lo_ODZ,s1013,lo_OCD,s1069,s887,hi_OHD |
| s1098 | 28 | balance_lo | DFZ | lo | 104347/500000 | s1058,lo_HZP,lo_CFZ,lo_HDP,s1075,lo_HFP,s1000 |
| s1099 | 28 | balance_lo | HCP | lo | 89019/500000 | s1058,lo_HZP,lo_CFZ,lo_HDP,s1075,lo_HFP,s1017 |
| s1102 | 29 | balance_lo | OYZ | lo | 17051/125000 | s887,lo_CFZ,lo_DYZ,lo_OCF,lo_ODZ,s1091,s911 |
| s1103 | 30 | balance_lo | DZP | lo | 96259/500000 | s1053,s872,lo_HZP,s1058,lo_HDP,lo_CFZ,s910 |
| s1105 | 31 | balance_lo | OFZ | lo | 109771/500000 | s1044,s1098,lo_OCD,s1056,s1045,lo_CFZ,s166 |
| s1107 | 32 | balance_lo | CFP | lo | 2832/15625 | s1050,lo_FYP,s1059,lo_HFP,lo_HCY,s1083,s923 |
| s1109 | 33 | balance_lo | DYP | lo | 5499/25000 | s1050,lo_FYP,s1058,s1067,lo_HDF,s984,s910 |
| s1120 | 36 | linear | OHZ | lo | 52401/125000 | s1013,lo_OHY,s1102 |
| s1123 | 37 | linear | ODF | lo | 130309/250000 | s1098,lo_ODZ,s1105 |
| s1124 | 38 | linear | ODY | lo | 40301/125000 | lo_DYZ,lo_ODZ,s1102 |
| s1127 | 39 | linear | HCD | lo | 363499/500000 | s1075,s1069,s1053 |
| s1128 | 40 | linear | HCF | lo | 226143/500000 | s1107,s1099,lo_HFP |
| s1129 | 41 | linear | HDY | lo | 106579/250000 | s1109,lo_HDP,s1067 |
| s1130 | 42 | linear | HDZ | lo | 189259/500000 | s1103,lo_HDP,lo_HZP |
| s1133 | 43 | linear | HFY | lo | 74839/250000 | lo_FYP,lo_HFP,s1067 |
| s1134 | 44 | linear | HFZ | lo | 73533/250000 | s1084,lo_HFP,lo_HZP |
| s1136 | 45 | linear | CDF | lo | 219879/500000 | s1075,lo_CFZ,s1098 |
| s1139 | 46 | linear | CDY | lo | 173121/500000 | s1075,s1092,lo_DYZ |
| s1144 | 48 | support_z | FYZ | lo | 178263/1000000 | s1134,s924 |
| s1148 | 50 | linear | HDF | hi | 136501/500000 | s1127 |
| s1149 | 51 | linear | HCF | hi | 280121/500000 | s1136 |
| s1150 | 51 | linear | CDF | hi | 273857/500000 | s1128 |
| s1160 | 53 | bary_lo | HDY | hi | 36537/62500 | hi_OHD,s1129,s1124,lo_OHY,hi_OHD |
| s1161 | 54 | bary_lo | HFY | hi | 198303/500000 | hi_OHD,s1129,s1124,lo_OHY,hi_OHF,s1148 |
| s1173 | 56 | bary_lo | OHZ | hi | 264241/500000 | hi_OHD,s1130,lo_ODZ,s1120,hi_OHD |
| s1181 | 57 | bary_lo | HDZ | hi | 30487/62500 | hi_OHD,s1130,lo_ODZ,s1120,hi_OHD |
| s1183 | 58 | bary_lo | CDZ | lo | 140901/1000000 | hi_OHD,s1130,lo_ODZ,s1120,lo_OCD,s1127 |
| s1226 | 62 | bary_lo | HCP | lo | 45163/250000 | s1181,s1103,lo_HZP,lo_HDP,s1127,s1069 |
| s1228 | 63 | bary_lo | HYP | lo | 23493/200000 | s1181,s1103,lo_HZP,lo_HDP,s1129,s1013 |
| s1231 | 65 | bary_hi | CYP | lo | 14551/100000 | s1181,s1103,lo_HZP,lo_HDP,lo_HCY,s1139,s1092 |
| s1246 | 66 | bary_hi | HCP | hi | 275693/1000000 | s1161,lo_FYP,s1228,lo_HFP,s1149,lo_HCY |
| s1253 | 68 | bary_hi | DZP | lo | 24277/125000 | s1161,lo_FYP,s1228,lo_HFP,s1130,s1098,lo_DYZ |
| s1255 | 69 | bary_hi | FZP | lo | 110771/1000000 | s1161,lo_FYP,s1228,lo_HFP,s1134,s1144 |
| s1258 | 70 | bary_lo | HCZ | lo | 239793/1000000 | s1150,s1098,lo_CFZ,s1183,s1127,s1128 |
| s1259 | 72 | bary_lo | HFZ | hi | 183673/500000 | s1150,s1098,lo_CFZ,s1183,s1149,s1148 |
| s1260 | 73 | bary_lo | HYZ | lo | 202681/1000000 | s1150,s1098,lo_CFZ,s1183,lo_HCY,s1129,s1133 |
| s1262 | 74 | bary_hi | CDZ | hi | 12301/50000 | s1150,s1098,lo_CFZ,s1183,s1150 |
| s1263 | 75 | bary_hi | CYZ | lo | 120589/1000000 | s1150,s1098,lo_CFZ,s1183,s1139,s1091 |
| s1264 | 76 | bary_hi | DFZ | hi | 313813/1000000 | s1150,s1098,lo_CFZ,s1183,s1150 |
| s1300 | 5 | sum | HCD | lo | 189803/250000 | s1183,s1258,s1130 |
| s1301 | 6 | sum | HCF | lo | 4549/10000 | s1107,s1226,lo_HFP |
| s1303 | 7 | sum | HDZ | lo | 47527/125000 | s1253,lo_HDP,lo_HZP |
| s1305 | 8 | sum | HFY | lo | 60693/200000 | lo_FYP,lo_HFP,s1228 |
| s1306 | 9 | sum | HFZ | lo | 296771/1000000 | s1255,lo_HFP,lo_HZP |
| s1308 | 10 | sum | CDF | lo | 88519/200000 | s1183,lo_CFZ,s1098 |
| s1309 | 11 | sum | CDY | lo | 35449/100000 | s1183,s1263,lo_DYZ |
| s1319 | 16 | sumlo | HYP | lo | 128139/1000000 | lo_HFP,s1260,s1305,lo_HZP,s1259 |
| s1321 | 17 | sumlo | HCZ | lo | 49187/200000 | s1183,s1301,lo_CFZ,s1300,s1150 |
| s1327 | 18 | sumlo | CDZ | lo | 72113/500000 | s1300,lo_ODZ,s1303,lo_OCD,hi_OHD |
| s1336 | 19 | sumlo | DFP | lo | 103557/1000000 | s1308,lo_HFP,s1107,lo_HDF,s1149 |
| s1340 | 21 | diffhi | OCZ | hi | 281801/1000000 | s1262,s1173,s1321,lo_ODZ,s1303 |
| s1344 | 22 | sumlo | HCZ | lo | 15567/62500 | s1327,s1306,lo_CFZ,s1303,s1264 |
| s1350 | 23 | balance_lo | CFY | lo | 253897/1000000 | s1301,s1124,s1305,lo_OCD,lo_HCY,s1123,hi_OHD |
| s1351 | 25 | balance_lo | CYZ | lo | 32049/250000 | lo_HCY,lo_ODZ,s1260,lo_OCD,s1344,s1124,hi_OHD |
| s1356 | 27 | balance_lo | CFP | lo | 184319/1000000 | s1350,lo_HDP,lo_FYP,s1300,s1231,lo_HDF,s1160 |
| s1359 | 28 | balance_lo | DFZ | lo | 9173/40000 | s1308,lo_HZP,lo_CFZ,lo_HDP,s1327,lo_HFP,s1246 |
| s1360 | 28 | balance_lo | HCP | lo | 50367/250000 | s1308,lo_HZP,lo_CFZ,lo_HDP,s1327,lo_HFP,s1264 |
| s1364 | 29 | balance_lo | OYZ | lo | 145227/1000000 | s1124,lo_CFZ,lo_DYZ,lo_OCF,lo_ODZ,s1350,s1150 |
| s1365 | 30 | balance_lo | DZP | lo | 213999/1000000 | s1303,s1356,lo_HZP,s1308,lo_HDP,lo_CFZ,s1149 |
| s1371 | 32 | balance_lo | CFP | lo | 12103/62500 | s1300,lo_FYP,s1309,lo_HFP,lo_HCY,s1336,s1160 |
| s1375 | 33 | balance_lo | DYP | lo | 125707/500000 | s1300,lo_FYP,s1308,s1319,lo_HDF,s1231,s1149 |
| s1381 | 35 | linear | OHC | hi | 561211/1000000 | s1344,s1340,s1173 |
| s1391 | 36 | linear | OHZ | lo | 110227/250000 | s1260,lo_OHY,s1364 |
| s1397 | 38 | linear | ODY | lo | 331227/1000000 | lo_DYZ,lo_ODZ,s1364 |
| s1400 | 39 | linear | HCD | lo | 386757/500000 | s1327,s1344,s1303 |
| s1403 | 41 | linear | HDY | lo | 472553/1000000 | s1375,lo_HDP,s1319 |
| s1404 | 42 | linear | HDZ | lo | 399999/1000000 | s1365,lo_HDP,lo_HZP |
| s1407 | 43 | linear | HFY | lo | 314139/1000000 | lo_FYP,lo_HFP,s1319 |
| s1410 | 45 | linear | CDF | lo | 466551/1000000 | s1327,lo_CFZ,s1359 |
| s1413 | 46 | linear | CDY | lo | 182711/500000 | s1327,s1351,lo_DYZ |
| s1424 | 49 | linear | OHF | hi | 561211/1000000 | s1381 |
| s1425 | 50 | linear | HDF | hi | 113243/500000 | s1400 |
| s1426 | 51 | linear | HCF | hi | 533449/1000000 | s1410 |
| s1438 | 54 | bary_lo | HFY | hi | 172097/500000 | hi_OHD,s1403,s1397,lo_OHY,s1424,s1425 |
| s1461 | 57 | bary_lo | HDZ | hi | 116523/250000 | hi_OHD,s1404,lo_ODZ,s1391,hi_OHD |
| s1508 | 61 | bary_lo | HYP | lo | 67427/500000 | s1426,s1371,lo_HFP,s1360,lo_HCY,s1407 |
| s1532 | 62 | bary_lo | HCP | lo | 102019/500000 | s1461,s1365,lo_HZP,lo_HDP,s1400,s1344 |
| s1535 | 64 | bary_hi | CFP | hi | 104461/500000 | s1461,s1365,lo_HZP,lo_HDP,s1426,s1410,lo_CFZ |
| s1536 | 65 | bary_hi | CYP | lo | 154379/1000000 | s1461,s1365,lo_HZP,lo_HDP,lo_HCY,s1413,s1351 |

## Conclusion

{"kind":"bary_zero","relation":67,"side":"lo","value":"70643533/86048500000","sources":["s1438","lo_FYP","s1508","lo_HFP","s1532","s1535","s1536"]}
