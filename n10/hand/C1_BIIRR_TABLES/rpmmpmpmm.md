# Leaf rpmmpmpmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":-1}

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
| 26 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 27 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 28 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | plu | ["OHDYZ","OYZ",-1] |
| 31 | plu | ["OHDPR","OPR",-1] |
| 32 | plu | ["DOHYZ","DYZ",1] |
| 33 | plu | ["DOHZP","DZP",-1] |
| 34 | plu | ["FOHZP","FOP",1] |
| 35 | plu | ["YODZP","YZP",1] |
| 36 | plu | ["YODPQ","YPQ",-1] |
| 37 | plu | ["YODPR","YPR",-1] |
| 38 | plu | ["YHDFZ","YFZ",-1] |
| 39 | plu | ["ZOCPQ","ZPQ",-1] |
| 40 | plu | ["ZCDPR","ZPR",-1] |
| 41 | plu | ["POHFY","PFY",1] |
| 42 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 43 | plu | ["YOZQR","YZR",-1] |
| 44 | plu | ["ZOCYR","ZOR",1] |
| 45 | plu | ["QOHYR","QHR",1] |
| 46 | plu | ["QOFYR","QFR",1] |
| 47 | plu | ["QOYZR","QZR",1] |
| 48 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OPQ | OPQ | lo | 347/500 | ["cost","ZR"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 279/1000 | ["cost","R"] |
| lo_CPQ | CPQ | lo | 279/1000 | ["cost","R"] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCP | OCP | hi | 115189/200000 | "C013" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OPQ | OPQ | hi | 70912/79375 | "C050" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 2 | ["plu","ODQ","OZP","ODP","OZQ","ODZ","OPQ"] | ["plu","ODZPQ"] |
| 3 | ["plu","CDP","HDY","CDY","HDP","DYP","HCD"] | ["plu","DHCYP"] |
| 4 | ["plu","OCP","ZPQ","CPQ","OZP","CZP","OPQ"] | ["plu","POCZQ"] |
| 5 | ["plu","CZQ","ODQ","CDQ","OZQ","DZQ","OCQ"] | ["plu","QOCDZ"] |
| 6 | ["plu","DZQ","OPQ","DPQ","OZQ","ODQ","ZPQ"] | ["plu","QODZP"] |
| 7 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 8 | ["balance",[[1,"CDZ","OPQ"],[-1,"DZP","OCQ"],[-1,"CZP","ODQ"],[-1,"CDP","OZQ"]]] | ["six","OQCDZP"] |
| 9 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDZ","OQR"],[-1,"ODZ","CQR"],[1,"OCZ","DQR"]]] | ["six","QROCDZ"] |
| 10 | ["support","CZQ","CDQ","CDZ","1023/1000"] | ["support_pent","CZPDQ"] |
| 11 | ["bary",["ZQR",-1],[["OQR",1],["CQR",1],["DQR",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","QR"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 407/500 | hi_OHD,lo_ODY,lo_OHY |
| s21 | 1 | sub | DZQ | hi | 6071/15625 | hi_ODQ,lo_ODZ,lo_OZQ |
| s74 | 2 | sumlo | OZP | lo | 118979/1000000 | lo_ODP,lo_OZQ,lo_ODZ,lo_OPQ,hi_ODQ |
| s88 | 3 | sumlo | CDP | lo | 22233/200000 | lo_CDY,lo_HDP,lo_DYP,lo_HCD,s1 |
| s99 | 4 | sumlo | ZPQ | lo | 84849/500000 | lo_CPQ,s74,lo_CZP,lo_OPQ,hi_OCP |
| s108 | 5 | diff | OZQ | lo | 18059/62500 | lo_CZQ,lo_ODQ,s21,hi_OCQ,hi_CDQ |
| s115 | 6 | sumlo | DZQ | lo | 10119/62500 | lo_DPQ,s108,lo_ODQ,s99,hi_OPQ |
| s118 | 7 | sumlo | OZQ | lo | 170083/500000 | s115,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s139 | 8 | balance_lo | CDZ | lo | 124253/1000000 | lo_DZP,lo_OCQ,lo_CZP,lo_ODQ,s88,s118,hi_OPQ |
| s180 | 9 | balance_lo | OCZ | lo | 49307/250000 | lo_OCD,lo_ZQR,s139,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s275 | 10 | support_z | CDZ | lo | 82227/500000 | lo_CZQ,hi_CDQ |
| s376 | 11 | bary_lo | ZQR | hi | 21957/250000 | hi_OCD,s275,lo_ODZ,s180,lo_OQR,lo_CQR,hi_DQR |

## Conclusion

{"triangle":"ZQR","lower":"lo_ZQR","upper":"s376"}
