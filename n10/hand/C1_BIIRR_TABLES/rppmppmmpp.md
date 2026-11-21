# Leaf rppmppmmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":1,"FZP":-1,"DYZ":-1,"FYZ":1,"FYP":1}

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
| 36 | plu | ["YHDZQ","YZQ",-1] |
| 37 | plu | ["YHDZR","YZR",-1] |
| 38 | plu | ["ZHCYP","ZYP",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 1 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 2 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 3 | ["plu","DFZ","DYP","DFP","DYZ","DFY","DZP"] | ["plu","DFYZP"] |
| 4 | ["plu","DFP","FYZ","DFY","FZP","DFZ","FYP"] | ["plu","FDYZP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s14 | 0 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s27 | 1 | sub | FYZ | hi | 147041/250000 | hi_DFY,lo_DFZ,lo_DYZ |
| s28 | 2 | sub | DYP | hi | 147041/250000 | hi_DFY,lo_DFP,lo_FYP |
| s85 | 3 | sumlo | DFZ | lo | 124439/1000000 | lo_DFP,lo_DYZ,lo_DFY,lo_DZP,s28 |
| s97 | 4 | sumlo | DFP | lo | 12941/100000 | lo_DFY,lo_FZP,s85,lo_FYP,s27 |

## Conclusion

{"triangle":"DFP","lower":"s97","upper":"s14"}
