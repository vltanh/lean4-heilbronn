# Leaf rpmmppmmpmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":1,"QYZ":-1,"OFY":-1}

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
| 31 | plu | ["OHDYZ","OYZ",-1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["DOHYZ","DYZ",1] |
| 34 | plu | ["DOHZP","DZP",-1] |
| 35 | plu | ["FOHYP","FOP",1] |
| 36 | plu | ["FOCYZ","FYZ",1] |
| 37 | plu | ["YHDPQ","YPQ",-1] |
| 38 | plu | ["YHDPR","YPR",-1] |
| 39 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 40 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 41 | plu | ["YOZQR","YZR",-1] |
| 42 | plu | ["ZOCYR","ZOR",1] |
| 43 | plu | ["QOHYR","QHR",1] |
| 44 | plu | ["QOFYR","QFR",1] |
| 45 | plu | ["QOYZR","QZR",1] |
| 46 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 279/1000 | ["cost","P"] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFZ | CFZ | lo | 279/1000 | ["cost","P"] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OFZ | OFZ | hi | 70912/79375 | "C068" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["plu","DZQ","OCD","CDQ","ODZ","CDZ","ODQ"] | ["plu","DOCZQ"] |
| 1 | ["plu","HCF","OFZ","CFZ","OHF","HFZ","OCF"] | ["plu","FOHCZ"] |
| 2 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 3 | ["balance",[[1,"HCF","OZQ"],[1,"CFZ","OHQ"],[1,"HFZ","OCQ"],[-1,"HCZ","OFQ"]]] | ["six","OQHCFZ"] |
| 4 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 5 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 6 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s109 | 0 | sumlo | DZQ | lo | 157113/1000000 | lo_CDQ,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s120 | 1 | sumlo | HCF | lo | 58087/500000 | lo_CFZ,lo_OHF,lo_HFZ,lo_OCF,hi_OFZ |
| s148 | 2 | sumlo | OZQ | lo | 169131/500000 | s109,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s174 | 3 | balance_lo | HCZ | lo | 65611/250000 | s120,s148,lo_CFZ,lo_OHQ,lo_HFZ,lo_OCQ,hi_OFQ |
| s312 | 4 | linear | HCD | hi | 907/1000 | lo_HDF |
| s313 | 5 | linear | HCF | hi | 153/500 | lo_CDF |
| s540 | 6 | bary_lo | HFZ | hi | 2197/8000 | s312,lo_CDZ,lo_HDZ,s174,s313,hi_HDF |

## Conclusion

{"triangle":"HFZ","lower":"lo_HFZ","upper":"s540"}
