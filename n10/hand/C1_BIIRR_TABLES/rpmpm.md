# Leaf rpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":1,"CZP":-1}

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
| 34 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 35 | interior_line | ["PR","Y","OHC","Y",-1] |
| 36 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 37 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 38 | plu | ["OHDYZ","OYZ",-1] |
| 39 | plu | ["DOHYZ","DYZ",1] |
| 40 | plu | ["YODZP","YZP",1] |
| 41 | plu | ["YHDFZ","YFZ",-1] |
| 42 | plu | ["ZOCPQ","ZPQ",-1] |
| 43 | plu | ["ZCDPR","ZPR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | "C014" |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCP | OCP | hi | 115189/200000 | "C013" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 1 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 2 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 3 | ["fan","HCP","CZP","HCZ","HZP"] | ["fan","HCP","Z"] |
| 4 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 5 | ["plu","HCP","HDF","HCD","HFP","HCF","HDP"] | ["plu","HCDFP"] |
| 6 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 7 | ["plu","HCD","OCZ","CDZ","OHC","HCZ","OCD"] | ["plu","COHDZ"] |
| 8 | ["plu","HCD","OCP","CDP","OHC","HCP","OCD"] | ["plu","COHDP"] |
| 9 | ["plu","HCP","OCZ","CZP","OHC","HCZ","OCP"] | ["plu","COHZP"] |
| 10 | ["plu","CDZ","HCP","CDP","HCZ","CZP","HCD"] | ["plu","CHDZP"] |
| 11 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 12 | ["plu","HDZ","OCD","CDZ","OHD","HCD","ODZ"] | ["plu","DOHCZ"] |
| 13 | ["plu","HCD","ODP","CDP","OHD","HDP","OCD"] | ["plu","DOHCP"] |
| 14 | ["plu","HDF","ODP","DFP","OHD","HDP","ODF"] | ["plu","DOHFP"] |
| 15 | ["plu","CDP","HDF","CDF","HDP","DFP","HCD"] | ["plu","DHCFP"] |
| 16 | ["balance",[[1,"HCZ","ODP"],[1,"CZP","OHD"],[-1,"HZP","OCD"],[1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 17 | ["balance",[[1,"HCD","OZP"],[-1,"CDP","OHZ"],[-1,"HDP","OCZ"],[-1,"HCP","ODZ"]]] | ["six","OZHCDP"] |
| 18 | ["balance",[[1,"ODF","HCZ"],[1,"DFZ","OHC"],[-1,"OFZ","HCD"],[1,"ODZ","HCF"]]] | ["six","HCODFZ"] |
| 19 | ["balance",[[-1,"OHD","CZP"],[1,"HDZ","OCP"],[-1,"ODZ","HCP"],[-1,"OHZ","CDP"]]] | ["six","CPOHDZ"] |
| 20 | ["linear",{"OHD":-1,"ODZ":-1,"OHZ":1,"HDZ":1},"0"] | ["affine_quad","OHDZ",1] |
| 21 | ["linear",{"OCD":-1,"ODF":-1,"OCF":1,"CDF":1},"0"] | ["affine_quad","OCDF",-1] |
| 22 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 23 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 24 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 25 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 26 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 27 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 28 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","OH"] |
| 29 | ["bary",["OCZ",1],[["OHC",1],null,["OCD",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","OC"] |
| 30 | ["bary",["HZP",-1],[null,["HCP",-1],["HDP",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HP"] |
| 31 | ["bary",["OCZ",1],[["OHC",1],null,["OCP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","OC"] |
| 32 | ["bary",["HDZ",-1],[null,["HCD",-1],["HDP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","HD"] |
| 33 | ["bary",["CDZ",1],[["HCD",1],null,["CDP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","CD"] |
| 34 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],["DFP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","DF"] |
| 35 | ["bary",["OZP",1],[["OHZ",1],["ODZ",1],["OFZ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OZ"] |
| 36 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HC"] |
| 37 | ["bary",["CDP",1],[["HCD",1],null,["CDF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CD"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s18 | 4 | sub | HDP | hi | 3/25 | hi_HDF,lo_DFP,lo_HFP |
| s19 | 4 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s36 | 5 | sumhi | HCP | hi | 346033/500000 | hi_HCD,s19,hi_HCF,s18,lo_HDF |
| s52 | 14 | sumlo | ODP | lo | 339801/1000000 | lo_DFP,lo_OHD,lo_HDP,lo_ODF,hi_HDF |
| s67 | 15 | sumlo | CDP | lo | 80463/250000 | lo_CDF,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s88 | 16 | balance_lo | HZP | lo | 105991/500000 | lo_HCZ,s52,lo_CZP,lo_OHD,lo_HCP,lo_ODZ,hi_OCD |
| s158 | 25 | linear | HCP | lo | 198991/500000 | lo_CZP,lo_HCZ,s88 |
| s168 | 27 | linear | HCD | hi | 721/1000 | lo_HDF |
| s278 | 33 | bary_lo | CDZ | lo | 13651/100000 | s36,lo_CZP,s88,lo_HCZ,lo_HCD,s67 |
| s285 | 36 | bary_hi | HCP | hi | 59467/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s168,hi_HCF |
| s357 | 2 | sub | HDZ | hi | 49149/100000 | s168,s278,lo_HCZ |
| s360 | 3 | sub | HZP | hi | 36217/125000 | s285,lo_CZP,lo_HCZ |
| s381 | 10 | sumlo | CDZ | lo | 39717/200000 | s67,lo_HCZ,lo_CZP,lo_HCD,s285 |
| s388 | 12 | sumlo | HDZ | lo | 43919/125000 | s381,lo_OHD,lo_HCD,lo_ODZ,hi_OCD |
| s389 | 12 | sumlo | OCD | lo | 411727/1000000 | s381,lo_OHD,lo_HCD,lo_ODZ,s357 |
| s392 | 13 | sumlo | ODP | lo | 181453/500000 | s67,lo_OHD,lo_HDP,s389,s168 |
| s407 | 16 | balance_lo | HZP | lo | 117463/500000 | lo_HCZ,s392,lo_CZP,lo_OHD,s158,lo_ODZ,hi_OCD |
| s408 | 16 | balance_lo | OCD | lo | 29187/62500 | lo_HCZ,s392,lo_CZP,lo_OHD,s158,lo_ODZ,s360 |
| s464 | 25 | linear | HCP | lo | 210463/500000 | lo_CZP,lo_HCZ,s407 |
| s471 | 26 | linear | OHC | lo | 29187/62500 | s408 |
| s531 | 28 | bary_hi | OHZ | lo | 9909/31250 | s168,s381,s388,lo_HCZ,s471,lo_OHD |
| s532 | 29 | bary_lo | OCZ | lo | 188859/1000000 | s168,s381,s388,lo_HCZ,s471,s408 |
| s549 | 32 | bary_lo | HDZ | hi | 420929/1000000 | s285,lo_CZP,s407,lo_HCZ,s168,lo_HDP |
| s552 | 34 | bary_lo | DFZ | lo | 131839/500000 | s285,lo_CZP,s407,lo_HCZ,lo_HDF,lo_CDF,lo_DFP |
| s601 | 0 | sum | OCD | lo | 120111/250000 | s381,s532,lo_ODZ |
| s618 | 5 | diff | HCF | lo | 64413/250000 | s464,lo_HDF,s168,s19,s18 |
| s622 | 6 | diffhi | HCF | hi | 299081/500000 | s168,hi_OCF,lo_CDF,s471,s601 |
| s623 | 7 | sumlo | OCZ | lo | 95297/500000 | s381,s471,lo_HCZ,s601,s168 |
| s641 | 11 | sumlo | ODF | lo | 107449/200000 | lo_CDF,lo_OHD,lo_HDF,s601,s168 |
| s642 | 12 | sumlo | OCD | lo | 240373/500000 | s381,lo_OHD,lo_HCD,lo_ODZ,s549 |
| s647 | 14 | sumlo | ODP | lo | 374201/1000000 | lo_DFP,lo_OHD,lo_HDP,s641,hi_HDF |
| s664 | 16 | balance_lo | HZP | lo | 120227/500000 | lo_HCZ,s647,lo_CZP,lo_OHD,s464,lo_ODZ,hi_OCD |
| s675 | 18 | balance_lo | OFZ | lo | 68329/250000 | s641,lo_HCZ,s552,s471,lo_ODZ,s618,s168 |
| s689 | 19 | balance_lo | HDZ | lo | 357227/1000000 | lo_OHD,lo_CZP,lo_ODZ,s464,s531,s67,hi_OCP |
| s708 | 20 | linear | OHZ | lo | 366071/1000000 | s549,lo_ODZ,lo_OHD |
| s720 | 21 | linear | CDF | lo | 382991/1000000 | s642,hi_OCF,s641 |
| s721 | 22 | linear | OCD | lo | 482179/1000000 | s381,s623,lo_ODZ |
| s735 | 25 | linear | HCP | lo | 213227/500000 | lo_CZP,lo_HCZ,s664 |
| s741 | 26 | linear | OHC | lo | 482179/1000000 | s721 |
| s825 | 29 | bary_lo | OCZ | lo | 195001/1000000 | s168,s381,s689,lo_HCZ,s741,s721 |
| s835 | 35 | bary_lo | OZP | lo | 115397/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s708,lo_ODZ,s675 |
| s836 | 36 | bary_hi | HCP | hi | 23227/50000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s168,s622 |
| s840 | 37 | bary_lo | CDP | lo | 8183/25000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCD,s720 |
| s872 | 0 | sum | OCD | lo | 243293/500000 | s381,s825,lo_ODZ |
| s873 | 1 | sum | OCP | lo | 103759/200000 | lo_CZP,s825,s835 |
| s878 | 3 | sub | HZP | hi | 13927/50000 | s836,lo_CZP,lo_HCZ |
| s896 | 6 | diffhi | HCF | hi | 561391/1000000 | s168,hi_OCF,s720,s741,s872 |
| s899 | 9 | sumlo | OCZ | lo | 200393/1000000 | lo_CZP,s741,lo_HCZ,s873,s836 |
| s904 | 10 | sumlo | CDZ | lo | 102233/500000 | s840,lo_HCZ,lo_CZP,lo_HCD,s836 |
| s908 | 11 | sumlo | ODF | lo | 556939/1000000 | s720,lo_OHD,lo_HDF,s872,s168 |
| s913 | 14 | sumlo | ODP | lo | 380187/1000000 | lo_DFP,lo_OHD,lo_HDP,s908,hi_HDF |
| s934 | 16 | balance_lo | HZP | lo | 121157/500000 | lo_HCZ,s913,lo_CZP,lo_OHD,s735,lo_ODZ,hi_OCD |
| s935 | 16 | balance_lo | OCD | lo | 501039/1000000 | lo_HCZ,s913,lo_CZP,lo_OHD,s735,lo_ODZ,s878 |
| s942 | 17 | balance_lo | OZP | lo | 61761/250000 | s840,s708,lo_HDP,s899,s735,lo_ODZ,s168 |
| s953 | 19 | balance_lo | HDZ | lo | 48621/125000 | lo_OHD,lo_CZP,lo_ODZ,s735,s708,s840,hi_OCP |
| s978 | 21 | linear | CDF | lo | 211489/500000 | s935,hi_OCF,s908 |
| s984 | 23 | linear | OCP | lo | 540437/1000000 | lo_CZP,s899,s942 |
| s991 | 25 | linear | HCP | lo | 214157/500000 | lo_CZP,lo_HCZ,s934 |
| s996 | 26 | linear | OHC | lo | 501039/1000000 | s935 |
| s1076 | 30 | bary_hi | HZP | lo | 30383/125000 | s168,s904,s953,lo_HCZ,s991,lo_HDP |
| s1080 | 31 | bary_lo | OCZ | lo | 208501/1000000 | s836,lo_CZP,s1076,lo_HCZ,s996,s984 |
| s1088 | 36 | bary_hi | HCP | hi | 113341/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s168,s896 |
| s1093 | 37 | bary_lo | CDP | lo | 339473/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCD,s978 |
| s1129 | 0 | sum | OCD | lo | 505967/1000000 | s904,s1080,lo_ODZ |
| s1133 | 3 | sum | HCP | lo | 53633/125000 | lo_CZP,lo_HCZ,s1076 |
| s1151 | 6 | diffhi | HCF | hi | 486013/1000000 | s168,hi_OCF,s978,s996,s1129 |
| s1152 | 8 | diffhi | OCD | hi | 2857/5000 | s168,hi_OCP,s1093,s996,s1133 |
| s1165 | 10 | sumlo | CDZ | lo | 211999/1000000 | s1093,lo_HCZ,lo_CZP,lo_HCD,s1088 |
| s1171 | 11 | sumlo | ODF | lo | 37683/62500 | s978,lo_OHD,lo_HDF,s1129,s168 |
| s1177 | 14 | sumlo | ODP | lo | 98541/250000 | lo_DFP,lo_OHD,lo_HDP,s1171,hi_HDF |
| s1215 | 16 | balance_lo | HZP | lo | 246941/1000000 | lo_HCZ,s1177,lo_CZP,lo_OHD,s1133,lo_ODZ,s1152 |
| s1246 | 19 | balance_lo | HDZ | lo | 198557/500000 | lo_OHD,lo_CZP,lo_ODZ,s1133,s708,s1093,hi_OCP |
| s1309 | 24 | linear | HCD | lo | 702113/1000000 | s1165,lo_HCZ,s1246 |
| s1314 | 25 | linear | HCP | lo | 432941/1000000 | lo_CZP,lo_HCZ,s1215 |
| s1331 | 27 | linear | HDF | hi | 297887/1000000 | s1309 |
| s1479 | 36 | bary_hi | HCP | hi | 211271/500000 | s1331,lo_DFP,lo_HFP,lo_HDP,s168,s1151 |

## Conclusion

{"triangle":"HCP","lower":"s1314","upper":"s1479"}
