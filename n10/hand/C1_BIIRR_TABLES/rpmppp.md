# Leaf rpmppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":1,"CZP":1,"FZP":1}

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
| 40 | plu | ["FOHZP","FOP",1] |
| 41 | plu | ["YHDFZ","YFZ",-1] |
| 42 | plu | ["ZOCFP","ZCF",-1] |
| 43 | plu | ["POCFZ","PCF",-1] |
| 44 | plu | ["PHCFY","PFY",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | "C014" |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["plu","OCD","OHQ","OCQ","OHD","ODQ","OHC"] | ["plu","OHCDQ"] |
| 1 | ["plu","OCD","OFQ","OCF","ODQ","OCQ","ODF"] | ["plu","OCDFQ"] |
| 2 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 3 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 4 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 5 | ["plu","CFQ","OCD","CDF","OCQ","CDQ","OCF"] | ["plu","CODFQ"] |
| 6 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 7 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 8 | ["plu","CDF","HFQ","CFQ","HDF","DFQ","HCF"] | ["plu","FHCDQ"] |
| 9 | ["plu","HDQ","OFQ","DFQ","OHQ","HFQ","ODQ"] | ["plu","QOHDF"] |
| 10 | ["balance",[[-1,"HCD","OFQ"],[1,"CDQ","OHF"],[1,"HDQ","OCF"],[1,"HCQ","ODF"]]] | ["six","OFHCDQ"] |
| 11 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 12 | ["linear",{"OHC":1,"OCD":-1,"OHD":-1,"HCD":1},"0"] | ["affine_quad","OHCD",-1] |
| 13 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 14 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 15 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 16 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s168 | 13 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s193 | 15 | linear | OHC | lo | 367/1000 | s168 |
| s194 | 16 | linear | HCD | hi | 721/1000 | lo_HDF |
| s409 | 2 | sumlo | HCF | lo | 33387/200000 | lo_HCD,lo_OHF,lo_HDF,s193,hi_OHD |
| s419 | 3 | sumlo | OCF | lo | 438229/1000000 | lo_CDF,s193,s409,s168,s194 |
| s438 | 6 | diffhi | OHD | hi | 103039/125000 | s194,hi_ODF,lo_HDF,s168,lo_CDF |
| s458 | 7 | sumlo | HCF | lo | 12481/62500 | lo_CDF,lo_OHF,lo_HDF,s419,hi_ODF |
| s487 | 11 | balance_hi | OHQ | hi | 787671/1000000 | s194,hi_OFQ,lo_HDF,lo_OCQ,s458,lo_ODQ,lo_CDF |
| s754 | 0 | sumlo | OCD | lo | 25331/62500 | lo_OCQ,lo_OHD,lo_ODQ,s193,s487 |
| s756 | 2 | sumlo | HCF | lo | 101257/500000 | lo_HCD,lo_OHF,lo_HDF,s193,s438 |
| s765 | 3 | sumlo | OCF | lo | 93419/200000 | lo_CDF,s193,s756,s754,s194 |
| s766 | 3 | diffhi | OHC | hi | 541437/1000000 | s194,hi_OCF,s756,s754,lo_CDF |
| s778 | 6 | diffhi | OHD | hi | 202229/250000 | s194,hi_ODF,lo_HDF,s754,lo_CDF |
| s789 | 7 | sumlo | HCF | lo | 41661/200000 | lo_CDF,lo_OHF,lo_HDF,s765,hi_ODF |
| s801 | 11 | balance_hi | OHQ | hi | 389531/500000 | s194,hi_OFQ,lo_HDF,lo_OCQ,s789,lo_ODQ,lo_CDF |
| s842 | 15 | linear | OHC | lo | 25331/62500 | s754 |
| s843 | 15 | linear | OCD | hi | 541437/1000000 | s766 |
| s994 | 0 | sumlo | OCD | lo | 443889/1000000 | lo_OCQ,lo_OHD,lo_ODQ,s842,s801 |
| s996 | 0 | diffhi | OHC | hi | 1287/2500 | s843,s801,lo_OCQ,lo_OHD,lo_ODQ |
| s998 | 2 | sumlo | HCF | lo | 219577/1000000 | lo_HCD,lo_OHF,lo_HDF,s842,s778 |
| s1004 | 3 | sumlo | OCF | lo | 262651/500000 | lo_CDF,s842,s998,s994,s194 |
| s1017 | 6 | sumlo | ODF | lo | 839779/1000000 | lo_CDF,lo_OHD,lo_HDF,s994,s194 |
| s1032 | 7 | sumlo | HCF | lo | 112833/500000 | lo_CDF,lo_OHF,lo_HDF,s1004,hi_ODF |
| s1041 | 11 | balance_hi | OHQ | hi | 761701/1000000 | s194,hi_OFQ,lo_HDF,lo_OCQ,s1032,lo_ODQ,lo_CDF |
| s1078 | 12 | linear | OHD | hi | 791911/1000000 | s194,s994,s996 |
| s1088 | 14 | linear | DFQ | lo | 547399/1000000 | s1017,lo_ODQ,hi_OFQ |
| s1100 | 15 | linear | OHC | lo | 443889/1000000 | s994 |
| s1101 | 15 | linear | OCD | hi | 1287/2500 | s996 |
| s1263 | 0 | sumlo | OCD | lo | 489169/1000000 | lo_OCQ,lo_OHD,lo_ODQ,s1100,s1041 |
| s1264 | 0 | sumlo | OHQ | lo | 361889/500000 | lo_OCQ,lo_OHD,lo_ODQ,s1100,s1101 |
| s1271 | 1 | diffhi | OCF | hi | 619149/1000000 | s1101,hi_OFQ,lo_OCQ,s1017,lo_ODQ |
| s1273 | 2 | sumlo | HCF | lo | 237889/1000000 | lo_HCD,lo_OHF,lo_HDF,s1100,s1078 |
| s1283 | 3 | sumlo | OCF | lo | 73583/125000 | lo_CDF,s1100,s1273,s1263,s194 |
| s1284 | 3 | diffhi | CDF | hi | 185879/250000 | s194,s1271,s1273,s1263,s1100 |
| s1288 | 4 | sumlo | HCQ | lo | 182971/500000 | lo_CDQ,s1100,lo_HCD,lo_OCQ,s1101 |
| s1299 | 5 | sumlo | CFQ | lo | 111101/250000 | lo_CDF,lo_OCQ,lo_CDQ,s1283,s1101 |
| s1319 | 6 | sumlo | ODF | lo | 857301/1000000 | lo_CDF,lo_OHD,lo_HDF,s1263,s194 |
| s1353 | 7 | sumlo | HCF | lo | 244563/1000000 | lo_CDF,lo_OHF,lo_HDF,s1283,hi_ODF |
| s1367 | 8 | sumlo | HFQ | lo | 173407/500000 | s1299,lo_HDF,s1088,s1353,s1284 |
| s1371 | 9 | sumlo | HDQ | lo | 322839/500000 | s1088,s1264,s1367,lo_ODQ,hi_OFQ |
| s1378 | 10 | balance_lo | HCD | lo | 145939/200000 | lo_CDQ,lo_OHF,s1371,s1283,s1288,s1319,hi_OFQ |

## Conclusion

{"triangle":"HCD","lower":"s1378","upper":"s194"}
