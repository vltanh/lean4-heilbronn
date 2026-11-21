# Leaf rppmpmppmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":-1,"FZP":1,"DYZ":1,"QYZ":-1,"OFY":-1}

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
| 34 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 35 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 36 | plu | ["OHFYP","OFP",-1] |
| 37 | plu | ["OHFZP","OFZ",-1] |
| 38 | plu | ["OHYZP","OYZ",-1] |
| 39 | plu | ["HODZP","HZP",1] |
| 40 | plu | ["DOHZP","DZP",-1] |
| 41 | plu | ["YOHFZ","YFZ",-1] |
| 42 | plu | ["YOHFP","YFP",-1] |
| 43 | plu | ["YODZP","YZP",1] |
| 44 | plu | ["YOZQR","YZR",-1] |
| 45 | plu | ["ZOCPQ","ZPQ",-1] |
| 46 | plu | ["ZOCPR","ZPR",-1] |
| 47 | plu | ["QOHYR","QHR",1] |
| 48 | plu | ["QOHPR","QPR",1] |
| 49 | plu | ["QOFYR","QFR",1] |
| 50 | plu | ["QOYZR","QZR",1] |
| 51 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 52 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 53 | mesh | ["ODFPZY",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","YZ"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_ODF | ODF | lo | 823/1000 | ["cost","YZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CFP | CFP | lo | 279/1000 | ["cost","Z"] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 2 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 3 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 4 | ["plu","ODF","OHY","ODY","OHF","OFY","OHD"] | ["plu","OHDFY"] |
| 5 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 6 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 7 | ["plu","HFP","ODF","DFP","OHF","HDF","OFP"] | ["plu","FOHDP"] |
| 8 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 9 | ["plu","CDF","HFP","CFP","HDF","DFP","HCF"] | ["plu","FHCDP"] |
| 10 | ["plu","HCP","OFP","CFP","OHP","HFP","OCP"] | ["plu","POHCF"] |
| 11 | ["plu","CDP","HFP","CFP","HDP","DFP","HCP"] | ["plu","PHCDF"] |
| 12 | ["balance",[[-1,"HDF","OYP"],[-1,"DFP","OHY"],[1,"HFP","ODY"],[-1,"HDP","OFY"]]] | ["six","OYHDFP"] |
| 13 | ["balance",[[1,"OCD","HFY"],[1,"CDF","OHY"],[1,"ODF","HCY"],[-1,"OCF","HDY"]]] | ["six","HYOCDF"] |
| 14 | ["balance",[[1,"HDF","CYP"],[-1,"DFY","HCP"],[1,"HFY","CDP"],[1,"HDY","CFP"]]] | ["six","CPHDFY"] |
| 15 | ["linear",{"ODF":1,"OFY":-1,"ODY":-1,"DFY":-1},"0"] | ["affine_quad","ODFY",1] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s17 | 1 | sub | DFY | hi | 281729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s53 | 2 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s56 | 3 | sub | CDP | hi | 258851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s78 | 4 | sumlo | OHY | lo | 24183/250000 | lo_ODY,lo_OHF,lo_OFY,lo_OHD,hi_ODF |
| s95 | 5 | sumlo | HCF | lo | 14409/100000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s107 | 6 | sumlo | CFY | lo | 107533/1000000 | lo_CDF,lo_HCY,lo_CDY,s95,hi_HCD |
| s149 | 7 | diffhi | OFP | hi | 92837/250000 | s53,hi_ODF,lo_DFP,lo_OHF,lo_HDF |
| s160 | 8 | sumlo | HCF | lo | 167791/1000000 | lo_CDF,lo_HFY,s107,lo_HDF,s17 |
| s162 | 9 | sumlo | CDF | lo | 778713/1000000 | lo_CFP,lo_HDF,lo_DFP,s160,s53 |
| s163 | 9 | sumlo | HFP | lo | 10503/100000 | lo_CFP,lo_HDF,lo_DFP,s160,hi_CDF |
| s191 | 10 | sumlo | HCP | lo | 18033/62500 | lo_CFP,lo_OHP,s163,lo_OCP,s149 |
| s205 | 11 | sumlo | CDP | lo | 219917/500000 | lo_CFP,lo_HDP,lo_DFP,s191,s53 |
| s206 | 11 | diffhi | HCP | hi | 389003/1000000 | s56,s53,lo_CFP,lo_HDP,lo_DFP |
| s279 | 12 | balance_lo | ODY | lo | 363267/1000000 | lo_HDF,lo_OYP,lo_DFP,s78,lo_HDP,lo_OFY,s53 |
| s312 | 13 | balance_lo | HDY | lo | 66879/250000 | lo_OCD,lo_HFY,s162,s78,lo_ODF,lo_HCY,hi_OCF |
| s360 | 14 | balance_lo | DFY | lo | 497123/1000000 | lo_HDF,lo_CYP,lo_HFY,s205,s312,lo_CFP,s206 |
| s480 | 15 | linear | ODF | lo | 95339/100000 | s360,s279,lo_OFY |

## Conclusion

{"triangle":"ODF","lower":"s480","upper":"hi_ODF"}
