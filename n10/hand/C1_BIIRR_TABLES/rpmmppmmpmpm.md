# Leaf rpmmppmmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":1,"QYZ":-1,"OFY":1,"HZQ":-1}

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
| 9 | extreme | ["OHZ","Q","ZOQ",1] |
| 10 | extreme | ["OHZ","D","HZD",1] |
| 11 | extreme | ["OCY","F","CYF",-1] |
| 12 | extreme | ["CYQ","H","YQH",1] |
| 13 | extreme | ["CYR","D","YRD",1] |
| 14 | extreme | ["CYR","F","YRF",1] |
| 15 | extreme | ["CYR","H","YRH",1] |
| 16 | extreme | ["DFZ","O","FZO",-1] |
| 17 | extreme | ["DYQ","O","YQO",-1] |
| 18 | extreme | ["DYR","O","YRO",-1] |
| 19 | extreme | ["YZQ","H","YZH",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 22 | interior_line | ["CY","P","HCDF","P",-1] |
| 23 | interior_line | ["CZ","R","CDQ","R",-1] |
| 24 | interior_line | ["CP","R","CDQ","R",-1] |
| 25 | interior_line | ["DZ","R","CDQ","R",1] |
| 26 | interior_line | ["DP","R","CDQ","R",1] |
| 27 | interior_line | ["ZP","Y","OHC","Y",1] |
| 28 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 29 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 30 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | plu | ["OHDYZ","OYZ",-1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["OHFYP","OYP",-1] |
| 34 | plu | ["HOZPQ","HPQ",-1] |
| 35 | plu | ["DOHYZ","DYZ",1] |
| 36 | plu | ["DOHZP","DZP",-1] |
| 37 | plu | ["FOHYZ","FYZ",1] |
| 38 | plu | ["YODPQ","YPQ",-1] |
| 39 | plu | ["YODPR","YPR",-1] |
| 40 | capacity | ["HDQ","ZP","R","QHR",1,"19683941/25400000","C029"] |
| 41 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 42 | plu | ["HOZQR","HZR",-1] |
| 43 | plu | ["HOPQR","HPR",-1] |
| 44 | plu | ["YOZQR","YZR",-1] |
| 45 | plu | ["ZOHCR","ZOR",1] |
| 46 | plu | ["QOHFR","QFR",1] |
| 47 | plu | ["QOHZR","QZR",1] |
| 48 | plu | ["QOHPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDQ | HDQ | lo | 347/500 | ["cost","ZP"] |
| lo_HDR | HDR | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZQ | DZQ | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 1 | ["plu","HDR","ODQ","DQR","OHD","HDQ","ODR"] | ["plu","DOHQR"] |
| 2 | ["plu","DZQ","OCD","CDQ","ODZ","CDZ","ODQ"] | ["plu","DOCZQ"] |
| 3 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 4 | ["plu","DQR","OYR","DYR","OQR","ODR","YQR"] | ["plu","RODYQ"] |
| 5 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 6 | ["balance",[[-1,"CDQ","HYR"],[1,"DQR","HCY"],[1,"CQR","HDY"],[1,"CDR","HYQ"]]] | ["six","HYCDQR"] |
| 7 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 8 | ["linear",{"OHY":-1,"OYR":-1,"OHR":1,"HYR":-1},"0"] | ["affine_quad","OHYR",1] |
| 9 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 10 | ["bary",["DQR",-1],[["ODQ",-1],["HDQ",-1],null],"OHQ",["HQR","OQR","OHR"]] | ["bary","OHQ","R","DQ"] |
| 11 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s22 | 0 | sub | OZQ | hi | 35909/62500 | hi_ODQ,lo_DZQ,lo_ODZ |
| s117 | 1 | diff | ODR | lo | 319547/1000000 | lo_HDR,lo_ODQ,hi_DQR,hi_OHD,hi_HDQ |
| s120 | 2 | sumlo | DZQ | lo | 157113/1000000 | lo_CDQ,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s164 | 3 | sumlo | DQR | lo | 137767/1000000 | s120,lo_OQR,lo_ODQ,lo_ZQR,s22 |
| s180 | 4 | sumlo | OYR | lo | 59471/250000 | lo_DYR,lo_OQR,s117,lo_YQR,hi_DQR |
| s214 | 5 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s217 | 6 | balance_lo | HYR | lo | 137049/1000000 | s164,lo_HCY,lo_CQR,lo_HDY,lo_CDR,s214,hi_CDQ |
| s256 | 7 | balance_lo | HQR | lo | 137793/1000000 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,s164,hi_CDY |
| s269 | 8 | linear | OHR | lo | 467933/1000000 | s217,lo_OHY,s180 |
| s331 | 9 | linear | HCD | hi | 907/1000 | lo_HDF |
| s417 | 10 | bary_hi | DQR | lo | 16017/100000 | hi_OHQ,s256,lo_OQR,s269,lo_ODQ,lo_HDQ |
| s631 | 11 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,s417,lo_CQR,lo_CDR,s331,hi_HDQ |

## Conclusion

{"triangle":"HDR","lower":"lo_HDR","upper":"s631"}
