# Leaf rppmmppmpmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYZ":1,"DYP":-1,"FYP":1,"QYZ":-1,"OFY":1,"HZQ":-1}

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
| 10 | extreme | ["OCY","F","CYF",-1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DYQ","O","YQO",-1] |
| 16 | extreme | ["DYR","O","YRO",-1] |
| 17 | extreme | ["YZQ","H","YZH",1] |
| 18 | interior_line | ["OZ","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","P","HCDF","P",1] |
| 20 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 21 | interior_line | ["CY","P","HCDF","P",-1] |
| 22 | interior_line | ["CZ","R","CDQ","R",-1] |
| 23 | interior_line | ["CP","R","CDQ","R",-1] |
| 24 | interior_line | ["DZ","R","CDQ","R",1] |
| 25 | interior_line | ["DP","R","CDQ","R",1] |
| 26 | interior_line | ["ZP","Y","OHC","Y",1] |
| 27 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 28 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 29 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 31 | plu | ["OHDZP","ODP",1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["OHFYZ","OYZ",-1] |
| 34 | plu | ["OHFYP","OYP",-1] |
| 35 | plu | ["HOZPQ","HPQ",-1] |
| 36 | plu | ["DOYZP","DZP",-1] |
| 37 | plu | ["FOHYZ","FYZ",1] |
| 38 | plu | ["YODPQ","YPQ",-1] |
| 39 | plu | ["YODPR","YPR",-1] |
| 40 | plu | ["YOZQR","YZR",-1] |
| 41 | plu | ["QOHYR","QHR",1] |
| 42 | plu | ["QOHZR","QZR",1] |
| 43 | plu | ["QOHPR","QPR",1] |
| 44 | plu | ["QOFYR","QFR",1] |
| 45 | extreme | ["ZQR","H","RZH",1] |
| 46 | extreme | ["PQR","H","RPH",1] |
| 47 | mesh | ["OHDPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","R"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDQ | HDQ | lo | 347/500 | ["cost","ZP"] |
| lo_HDR | HDR | lo | 347/500 | ["cost","ZP"] |
| lo_HQR | HQR | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 1 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 2 | ["plu","HQR","OYQ","HYQ","OQR","OHQ","YQR"] | ["plu","QOHYR"] |
| 3 | ["plu","DQR","HCQ","CDQ","HQR","CQR","HDQ"] | ["plu","QHCDR"] |
| 4 | ["plu","DYQ","HQR","DQR","HYQ","HDQ","YQR"] | ["plu","QHDYR"] |
| 5 | ["plu","DQR","HCR","CDR","HQR","CQR","HDR"] | ["plu","RHCDQ"] |
| 6 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 7 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 8 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 9 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 10 | ["bary",["DQR",-1],[["HDQ",-1],["CDQ",-1],null],"HCQ",["CQR","HQR","HCR"]] | ["bary","HCQ","R","DQ"] |
| 11 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s39 | 0 | sub | HCR | hi | 680091/1000000 | hi_HCQ,lo_CQR,lo_HQR |
| s94 | 1 | sumlo | HYQ | lo | 5847/40000 | lo_HCQ,lo_HDY,lo_HCY,lo_HDQ,hi_HCD |
| s141 | 2 | sumlo | HQR | lo | 56337/500000 | s94,lo_OQR,lo_OHQ,lo_YQR,hi_OYQ |
| s146 | 3 | sumlo | DQR | lo | 110817/1000000 | lo_CDQ,s141,lo_CQR,lo_HDQ,hi_HCQ |
| s150 | 4 | sumlo | HQR | lo | 117047/1000000 | s146,s94,lo_HDQ,lo_YQR,hi_DYQ |
| s159 | 5 | sumlo | DQR | lo | 110907/1000000 | lo_CDR,s150,lo_CQR,lo_HDR,s39 |
| s160 | 5 | sumlo | HCR | lo | 322339/1000000 | lo_CDR,s150,lo_CQR,lo_HDR,hi_DQR |
| s233 | 6 | balance_lo | HQR | lo | 134461/1000000 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,s159,hi_CDY |
| s267 | 7 | linear | HCQ | hi | 700053/1000000 | hi_CDQ,hi_HCD,lo_HDQ |
| s289 | 8 | linear | CDQ | lo | 296907/1000000 | lo_CDR,lo_CQR,s159 |
| s305 | 9 | linear | HCD | hi | 907/1000 | lo_HDF |
| s502 | 10 | bary_hi | DQR | lo | 149223/1000000 | s267,lo_CQR,s233,s160,lo_HDQ,s289 |
| s594 | 11 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,s502,lo_CQR,lo_CDR,s305,hi_HDQ |

## Conclusion

{"triangle":"HDR","lower":"lo_HDR","upper":"s594"}
