# Leaf rmpmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":1,"FZP":-1,"FYZ":1,"FYP":1}

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
| 9 | extreme | ["OHZ","D","ZOD",1] |
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFY","O","FYO",-1] |
| 16 | extreme | ["DZQ","O","ZQO",-1] |
| 17 | extreme | ["DZQ","H","ZQH",-1] |
| 18 | interior_line | ["OZ","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["HZ","R","CDQ","R",-1] |
| 22 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 23 | interior_line | ["CY","P","HCDF","P",-1] |
| 24 | interior_line | ["CZ","R","CDQ","R",-1] |
| 25 | interior_line | ["CP","R","CDQ","R",-1] |
| 26 | interior_line | ["DZ","Y","OHC","Y",1] |
| 27 | interior_line | ["DZ","R","CDQ","R",1] |
| 28 | interior_line | ["DP","R","CDQ","R",1] |
| 29 | interior_line | ["ZQ","Y","OHC","Y",-1] |
| 30 | interior_line | ["ZR","Y","OHC","Y",-1] |
| 31 | capacity | ["OCD","Y","P","DOP",-1,"115189/200000","C009"] |
| 32 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 33 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 34 | capacity | ["HDF","Z","P","HDP",-1,"153/500","C010"] |
| 35 | plu | ["OHDYZ","OYZ",1] |
| 36 | plu | ["OHDYP","OYP",1] |
| 37 | plu | ["OHDPR","OPR",-1] |
| 38 | plu | ["HODZP","HZP",-1] |
| 39 | plu | ["DOHYP","DYP",-1] |
| 40 | plu | ["DOHZP","DZP",1] |
| 41 | plu | ["FOHYZ","FOZ",1] |
| 42 | plu | ["FOHYP","FOP",1] |
| 43 | plu | ["YOHPQ","YPQ",-1] |
| 44 | plu | ["YHDPR","YPR",-1] |
| 45 | plu | ["ZOHCP","ZCP",-1] |
| 46 | plu | ["ZOHYP","ZYP",-1] |
| 47 | plu | ["ZOHPQ","ZPQ",1] |
| 48 | plu | ["ZOHPR","ZPR",1] |
| 49 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 50 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | "C014" |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","Z"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 279/1000 | ["cost","P"] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 279/1000 | ["cost","Z"] |
| lo_FYZ | FYZ | lo | 279/1000 | ["cost","P"] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HDF","DFZ","HDZ","HFZ"] | ["fan","HDF","Z"] |
| 1 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 2 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 3 | ["plu","OCD","OHY","OCY","OHD","ODY","OHC"] | ["plu","OHCDY"] |
| 4 | ["plu","OCD","OFY","OCF","ODY","OCY","ODF"] | ["plu","OCDFY"] |
| 5 | ["plu","HDY","ODF","DFY","OHD","HDF","ODY"] | ["plu","DOHFY"] |
| 6 | ["plu","DYZ","HDF","DFY","HDZ","DFZ","HDY"] | ["plu","DHFYZ"] |
| 7 | ["plu","HFY","ODF","DFY","OHF","HDF","OFY"] | ["plu","FOHDY"] |
| 8 | ["plu","HFZ","ODF","DFZ","OHF","HDF","OFZ"] | ["plu","FOHDZ"] |
| 9 | ["plu","DFY","HFZ","DFZ","HFY","FYZ","HDF"] | ["plu","FHDYZ"] |
| 10 | ["plu","DFP","HFZ","DFZ","HFP","FZP","HDF"] | ["plu","FHDZP"] |
| 11 | ["plu","CDF","FYP","CFP","DFY","CFY","DFP"] | ["plu","FCDYP"] |
| 12 | ["plu","HDY","OYZ","DYZ","OHY","HYZ","ODY"] | ["plu","YOHDZ"] |
| 13 | ["plu","DFY","HYZ","DYZ","HFY","FYZ","HDY"] | ["plu","YHDFZ"] |
| 14 | ["plu","DYP","FYZ","DFY","YZP","DYZ","FYP"] | ["plu","YDFZP"] |
| 15 | ["plu","HYZ","OFZ","FYZ","OHZ","HFZ","OYZ"] | ["plu","ZOHFY"] |
| 16 | ["plu","OHZ","YZP","HYZ","OZP","HZP","OYZ"] | ["plu","ZOHYP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s33 | 0 | sub | HFZ | hi | 3/25 | hi_HDF,lo_DFZ,lo_HDZ |
| s47 | 1 | sub | DYZ | hi | 100541/250000 | hi_DFY,lo_DFZ,lo_FYZ |
| s50 | 2 | sub | DYP | hi | 100541/250000 | hi_DFY,lo_DFP,lo_FYP |
| s55 | 3 | sumlo | OHY | lo | 157113/1000000 | lo_OCY,lo_OHD,lo_ODY,lo_OHC,hi_OCD |
| s60 | 4 | sumlo | OFY | lo | 157113/1000000 | lo_OCF,lo_ODY,lo_OCY,lo_ODF,hi_OCD |
| s100 | 5 | sumlo | HDY | lo | 542603/1000000 | lo_DFY,lo_OHD,lo_HDF,lo_ODY,hi_ODF |
| s136 | 6 | sumlo | DYZ | lo | 37583/100000 | lo_DFY,lo_HDZ,lo_DFZ,s100,hi_HDF |
| s137 | 6 | sumlo | HDF | lo | 285963/1000000 | lo_DFY,lo_HDZ,lo_DFZ,s100,s47 |
| s140 | 6 | diffhi | HDY | hi | 2517/4000 | s47,hi_HDF,lo_DFY,lo_HDZ,lo_DFZ |
| s156 | 7 | sumlo | HFY | lo | 117023/1000000 | lo_DFY,lo_OHF,s137,s60,hi_ODF |
| s159 | 8 | diffhi | OFZ | hi | 181153/500000 | s33,hi_ODF,lo_DFZ,lo_OHF,s137 |
| s177 | 9 | sumlo | DFY | lo | 188889/250000 | lo_DFZ,s156,lo_FYZ,s137,s33 |
| s178 | 9 | sumlo | HFZ | lo | 23423/200000 | lo_DFZ,s156,lo_FYZ,s137,hi_DFY |
| s179 | 9 | diffhi | HFY | hi | 141033/1000000 | hi_DFY,s33,lo_FYZ,s137,lo_DFZ |
| s180 | 9 | diffhi | FYZ | hi | 286809/1000000 | hi_DFY,s33,lo_DFZ,s156,s137 |
| s185 | 10 | sumlo | DFP | lo | 4589/15625 | lo_DFZ,lo_HFP,lo_FZP,s137,s33 |
| s187 | 11 | sumlo | FYP | lo | 109677/1000000 | lo_CFP,s177,lo_CFY,s185,hi_CDF |
| s196 | 12 | sumlo | OYZ | lo | 135073/1000000 | s136,s55,lo_HYZ,lo_ODY,s140 |
| s213 | 13 | sumhi | HYZ | hi | 78483/250000 | s47,s179,s180,s140,s177 |
| s239 | 14 | diffhi | YZP | hi | 49053/500000 | s50,s180,s136,s187,s177 |
| s257 | 15 | diffhi | OHZ | hi | 35097/100000 | s213,s159,s178,s196,lo_FYZ |
| s262 | 16 | sumlo | OHZ | lo | 196261/500000 | lo_HYZ,lo_OZP,lo_HZP,s196,s239 |

## Conclusion

{"triangle":"OHZ","lower":"s262","upper":"s257"}
