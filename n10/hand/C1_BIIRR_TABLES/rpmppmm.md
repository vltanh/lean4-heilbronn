# Leaf rpmppmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":-1}

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
| 38 | capacity | ["HFY","P","Z","FYZ",1,"271/500","C024"] |
| 39 | plu | ["OHDYZ","OYZ",-1] |
| 40 | plu | ["DOHYZ","DYZ",1] |
| 41 | plu | ["FHCYP","FCP",-1] |
| 42 | plu | ["FHCPQ","FPQ",1] |
| 43 | plu | ["FHCPR","FPR",1] |
| 44 | capacity | ["HCF","P","Z","CFZ",-1,"127/200","C027"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCF | HCF | lo | 279/1000 | ["cost","P"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HFY | HFY | hi | 271/500 | "C024" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 1 | ["fan","HFY","FYP","HFP","HYP"] | ["fan","HFY","P"] |
| 2 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 3 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 4 | ["plu","DFP","HCF","CDF","HFP","CFP","HDF"] | ["plu","FHCDP"] |
| 5 | ["plu","DFP","HFY","DFY","HFP","FYP","HDF"] | ["plu","FHDYP"] |
| 6 | ["plu","DFP","HYP","DYP","HFP","FYP","HDP"] | ["plu","PHDFY"] |
| 7 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 8 | ["balance",[[-1,"HDF","CYP"],[1,"DFP","HCY"],[1,"HFP","CDY"],[1,"HDP","CFY"]]] | ["six","CYHDFP"] |
| 9 | ["balance",[[1,"HCD","FYP"],[1,"CDY","HFP"],[-1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 10 | ["balance",[[-1,"HCD","FYP"],[-1,"CDF","HYP"],[-1,"HDF","CYP"],[1,"HCF","DYP"]]] | ["six","YPHCDF"] |
| 11 | ["linear",{"HDY":-1,"HYP":1,"HDP":-1,"DYP":1},"0"] | ["affine_quad","HDYP",1] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s15 | 0 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s19 | 1 | sub | HYP | hi | 89/250 | hi_HFY,lo_FYP,lo_HFP |
| s57 | 2 | sumlo | CFY | lo | 114763/1000000 | lo_CDF,lo_HCY,lo_CDY,lo_HCF,hi_HCD |
| s99 | 3 | sumlo | DFY | lo | 210793/1000000 | lo_CDF,lo_HFY,s57,lo_HDF,hi_HCF |
| s100 | 4 | sumlo | DFP | lo | 47159/500000 | lo_CDF,lo_HFP,lo_CFP,lo_HDF,hi_HCF |
| s101 | 4 | sumlo | HCF | lo | 4991/10000 | lo_CDF,lo_HFP,lo_CFP,lo_HDF,s15 |
| s103 | 4 | diffhi | CFP | hi | 37863/250000 | s15,hi_HCF,lo_CDF,lo_HFP,lo_HDF |
| s115 | 5 | sumlo | HFY | lo | 379589/1000000 | s99,lo_HFP,lo_FYP,lo_HDF,s15 |
| s157 | 6 | diffhi | DYP | hi | 73271/200000 | s15,s19,lo_FYP,lo_HDP,lo_HFP |
| s182 | 7 | balance_lo | CFY | lo | 95879/500000 | s101,lo_ODY,s115,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s232 | 8 | balance_lo | CYP | lo | 85869/500000 | s100,lo_HCY,lo_HFP,lo_CDY,lo_HDP,s182,hi_HDF |
| s256 | 9 | balance_lo | HDY | lo | 20481/31250 | lo_HCD,lo_FYP,lo_CDY,lo_HFP,lo_HCY,s100,s103 |
| s269 | 10 | balance_hi | HYP | hi | 329257/1000000 | hi_HCF,s157,lo_HCD,lo_FYP,lo_HDF,s232,lo_CDF |
| s326 | 11 | linear | HDY | hi | 150653/250000 | s157,lo_HDP,s269 |

## Conclusion

{"triangle":"HDY","lower":"s256","upper":"s326"}
