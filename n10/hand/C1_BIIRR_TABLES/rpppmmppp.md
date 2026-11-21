# Leaf rpppmmppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":1,"FZP":-1,"DYP":-1,"FYZ":1,"FYP":1,"OFY":1}

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
| 9 | extreme | ["OCY","F","CYF",-1] |
| 10 | extreme | ["CYQ","H","YQH",1] |
| 11 | extreme | ["CYR","D","YRD",1] |
| 12 | extreme | ["CYR","F","YRF",1] |
| 13 | extreme | ["CYR","H","YRH",1] |
| 14 | extreme | ["DYQ","O","YQO",-1] |
| 15 | extreme | ["DYR","O","YRO",-1] |
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
| 31 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 32 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 33 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 34 | capacity | ["HDF","Z","P","HDP",-1,"153/500","C010"] |
| 35 | plu | ["OHDZP","ODP",1] |
| 36 | plu | ["OHDPR","OPR",-1] |
| 37 | plu | ["OHFYZ","OYZ",-1] |
| 38 | plu | ["OHFYP","OYP",-1] |
| 39 | plu | ["HODZP","HZP",-1] |
| 40 | plu | ["DOHZP","DZP",1] |
| 41 | plu | ["YODPQ","YPQ",-1] |
| 42 | plu | ["YODPR","YPR",-1] |
| 43 | plu | ["ZOHCP","ZCP",-1] |
| 44 | plu | ["ZOHPQ","ZPQ",1] |
| 45 | plu | ["ZOHPR","ZPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHZ | OHZ | lo | 347/500 | ["cost","YP"] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","P"] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","Z"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_HDF | HDF | hi | 153/500 | "C010" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 1 | ["fan","HDF","DFZ","HDZ","HFZ"] | ["fan","HDF","Z"] |
| 2 | ["plu","HDF","OHZ","HDZ","OHF","HFZ","OHD"] | ["plu","HODFZ"] |
| 3 | ["plu","HDF","ODZ","DFZ","OHD","HDZ","ODF"] | ["plu","DOHFZ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s15 | 0 | sub | ODZ | hi | 281729/500000 | hi_ODF,lo_DFZ,lo_OFZ |
| s27 | 1 | sub | HDZ | hi | 3/25 | hi_HDF,lo_DFZ,lo_HFZ |
| s28 | 1 | sub | HFZ | hi | 3/25 | hi_HDF,lo_DFZ,lo_HDZ |
| s54 | 2 | sumhi | HDF | hi | 282709/1000000 | s27,hi_OHF,s28,hi_OHD,lo_OHZ |
| s56 | 2 | diff | HDZ | lo | 57973/500000 | lo_HDF,lo_OHZ,s28,hi_OHD,hi_OHF |
| s59 | 2 | diff | OHD | lo | 19571/20000 | lo_HDF,lo_OHZ,s27,hi_OHF,s28 |
| s102 | 3 | sumlo | HDF | lo | 951/3125 | lo_DFZ,s59,s56,lo_ODF,s15 |

## Conclusion

{"triangle":"HDF","lower":"s102","upper":"s54"}
