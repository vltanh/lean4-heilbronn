# Leaf rppmmpmpmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"QYZ":-1,"OFY":1,"HZQ":1}

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
| 10 | extreme | ["HFZ","Q","FZQ",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DYQ","O","YQO",-1] |
| 16 | extreme | ["DYR","O","YRO",-1] |
| 17 | extreme | ["DZQ","O","ZQO",-1] |
| 18 | interior_line | ["OZ","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 22 | interior_line | ["CY","P","HCDF","P",-1] |
| 23 | interior_line | ["CZ","R","CDQ","R",-1] |
| 24 | interior_line | ["CP","R","CDQ","R",-1] |
| 25 | interior_line | ["DZ","R","CDQ","R",1] |
| 26 | interior_line | ["DP","R","CDQ","R",1] |
| 27 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 28 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 29 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 30 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | plu | ["OHDZP","ODP",1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["OHFYZ","OYZ",-1] |
| 34 | plu | ["FOHYZ","FYZ",1] |
| 35 | plu | ["FOHYP","FYP",1] |
| 36 | plu | ["ZOHDP","ZDP",1] |
| 37 | plu | ["ZOHYP","ZYP",-1] |
| 38 | plu | ["ZOHPQ","ZPQ",-1] |
| 39 | plu | ["ZOCPR","ZPR",-1] |
| 40 | plu | ["QOYZP","QYP",-1] |
| 41 | mesh | ["OHDPYZ",1] |
| 42 | interior_line | ["YP","R","CDQ","R",-1] |
| 43 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 44 | plu | ["YOZQR","YZR",-1] |
| 45 | plu | ["QOHYR","QHR",1] |
| 46 | plu | ["QOFYR","QFR",1] |
| 47 | plu | ["QOYZR","QZR",1] |
| 48 | plu | ["QOYPR","QPR",1] |
| 49 | capacity | ["OHQ","YZR","P","HQP",1,"1",["unit"]] |
| 50 | plu | ["HOPQR","HPR",-1] |
| 51 | mesh | ["OHQZYR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHQ | OHQ | lo | 823/1000 | ["cost","YZR"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDR | HDR | lo | 347/500 | ["cost","ZP"] |
| lo_HQR | HQR | lo | 279/1000 | ["cost","Z"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHQ","HQR","OHR","OQR"] | ["fan","OHQ","R"] |
| 1 | ["plu","HCD","ODR","CDR","OHD","HDR","OCD"] | ["plu","DOHCR"] |
| 2 | ["plu","DQR","OHR","HDR","OQR","HQR","ODR"] | ["plu","ROHDQ"] |
| 3 | ["plu","DQR","HCR","CDR","HQR","CQR","HDR"] | ["plu","RHCDQ"] |
| 4 | ["balance",[[1,"CDQ","OHR"],[-1,"DQR","OHC"],[-1,"CQR","OHD"],[-1,"CDR","OHQ"]]] | ["six","OHCDQR"] |
| 5 | ["linear",{"HCD":1,"HDR":-1,"HCR":-1,"CDR":1},"0"] | ["affine_quad","HCDR",1] |
| 6 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s20 | 0 | sub | OHR | hi | 157/250 | hi_OHQ,lo_HQR,lo_OQR |
| s130 | 1 | sumlo | ODR | lo | 216533/1000000 | lo_CDR,lo_OHD,lo_HDR,lo_OCD,hi_HCD |
| s173 | 2 | sumlo | DQR | lo | 49743/250000 | lo_HDR,lo_OQR,lo_HQR,s130,s20 |
| s189 | 3 | sumlo | HCR | lo | 77341/200000 | lo_CDR,lo_HQR,lo_CQR,lo_HDR,hi_DQR |
| s204 | 4 | balance_hi | CDR | hi | 80017/500000 | hi_CDQ,s20,s173,lo_OHC,lo_CQR,lo_OHD,lo_OHQ |
| s371 | 5 | linear | HCD | lo | 920671/1000000 | s204,s189,lo_HDR |
| s448 | 6 | linear | HCD | hi | 907/1000 | lo_HDF |

## Conclusion

{"triangle":"HCD","lower":"s371","upper":"s448"}
