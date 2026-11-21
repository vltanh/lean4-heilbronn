# Leaf rppmppmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":1,"FZP":-1,"DYZ":1,"FYP":-1}

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
| 34 | capacity | ["HFY","P","Z","FYZ",1,"271/500","C024"] |
| 35 | plu | ["HODZP","HZP",1] |
| 36 | plu | ["DOHZP","DZP",-1] |
| 37 | plu | ["FHCYP","FCP",-1] |
| 38 | plu | ["FHCPQ","FPQ",1] |
| 39 | plu | ["FHCPR","FPR",1] |
| 40 | plu | ["YOHDZ","YOZ",1] |
| 41 | plu | ["YHDZP","YZP",1] |
| 42 | capacity | ["HCF","P","Z","CFZ",-1,"127/200","C027"] |
| 43 | plu | ["FOHCZ","FOZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 2 | ["plu","DFP","HCF","CDF","HFP","CFP","HDF"] | ["plu","FHCDP"] |
| 3 | ["balance",[[1,"HCD","FYP"],[1,"CDY","HFP"],[-1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s20 | 1 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s100 | 2 | sumlo | DFP | lo | 47159/500000 | lo_CDF,lo_HFP,lo_CFP,lo_HDF,hi_HCF |
| s103 | 2 | diffhi | CFP | hi | 37863/250000 | s20,hi_HCF,lo_CDF,lo_HFP,lo_HDF |
| s293 | 3 | balance_hi | HCD | hi | 649391/1000000 | s1,s103,lo_CDY,lo_HFP,lo_HCY,s100,lo_FYP |

## Conclusion

{"triangle":"HCD","lower":"lo_HCD","upper":"s293"}
