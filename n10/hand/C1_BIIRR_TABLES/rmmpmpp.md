# Leaf rmmpmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":1,"FZP":-1,"FYZ":1,"FYP":1}

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
| 15 | extreme | ["DFY","O","FYO",-1] |
| 16 | extreme | ["DPQ","O","PQO",-1] |
| 17 | extreme | ["DPQ","H","PQH",-1] |
| 18 | interior_line | ["OP","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["HP","R","CDQ","R",-1] |
| 22 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 23 | interior_line | ["CY","P","HCDF","P",-1] |
| 24 | interior_line | ["CZ","R","CDQ","R",-1] |
| 25 | interior_line | ["CP","R","CDQ","R",-1] |
| 26 | interior_line | ["DZ","R","CDQ","R",1] |
| 27 | interior_line | ["DP","Y","OHC","Y",1] |
| 28 | interior_line | ["DP","R","CDQ","R",1] |
| 29 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 30 | interior_line | ["PR","Y","OHC","Y",-1] |
| 31 | capacity | ["OCD","Y","Z","DOZ",-1,"115189/200000","C009"] |
| 32 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 33 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 34 | plu | ["OHDYZ","OYZ",1] |
| 35 | plu | ["OHDYP","OYP",1] |
| 36 | plu | ["OHDZR","OZR",-1] |
| 37 | plu | ["HODZP","HZP",1] |
| 38 | plu | ["DOHYZ","DYZ",-1] |
| 39 | plu | ["DOHZP","DZP",-1] |
| 40 | plu | ["FOHYZ","FOZ",1] |
| 41 | plu | ["FOHYP","FOP",1] |
| 42 | plu | ["YOHZQ","YZQ",-1] |
| 43 | plu | ["YHDZR","YZR",-1] |
| 44 | plu | ["ZOFYP","ZYP",-1] |
| 45 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 46 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 47 | capacity | ["OCP","Y","Z","CPZ",-1,"115189/200000","C013"] |

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
| s26 | 0 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s43 | 1 | sub | FYZ | hi | 147041/250000 | hi_DFY,lo_DFZ,lo_DYZ |
| s44 | 2 | sub | DYP | hi | 147041/250000 | hi_DFY,lo_DFP,lo_FYP |
| s139 | 3 | sumlo | DFZ | lo | 124439/1000000 | lo_DFP,lo_DYZ,lo_DFY,lo_DZP,s44 |
| s178 | 4 | sumlo | DFP | lo | 12941/100000 | lo_DFY,lo_FZP,s139,lo_FYP,s43 |

## Conclusion

{"triangle":"DFP","lower":"s178","upper":"s26"}
