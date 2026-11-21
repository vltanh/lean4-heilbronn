# Leaf rmmmpmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":1,"FZP":-1,"FYZ":1,"FYP":1}

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
| 9 | extreme | ["HFY","C","FYC",1] |
| 10 | extreme | ["CYQ","H","YQH",1] |
| 11 | extreme | ["CYR","D","YRD",1] |
| 12 | extreme | ["CYR","F","YRF",1] |
| 13 | extreme | ["CYR","H","YRH",1] |
| 14 | extreme | ["DFY","O","FYO",-1] |
| 15 | interior_line | ["HY","Z","HCDF","Z",1] |
| 16 | interior_line | ["HY","P","HCDF","P",1] |
| 17 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 18 | interior_line | ["CY","P","HCDF","P",-1] |
| 19 | interior_line | ["CZ","R","CDQ","R",-1] |
| 20 | interior_line | ["CP","R","CDQ","R",-1] |
| 21 | interior_line | ["DZ","R","CDQ","R",1] |
| 22 | interior_line | ["DP","R","CDQ","R",1] |
| 23 | capacity | ["OCD","Y","Z","DOZ",-1,"115189/200000","C009"] |
| 24 | capacity | ["OCD","Y","P","DOP",-1,"115189/200000","C009"] |
| 25 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 26 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 27 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | plu | ["OHDYZ","OYZ",1] |
| 29 | plu | ["OHDYP","OYP",1] |
| 30 | plu | ["OHDZR","OZR",-1] |
| 31 | plu | ["OHDPR","OPR",-1] |
| 32 | plu | ["DOHYZ","DYZ",-1] |
| 33 | plu | ["DOHYP","DYP",-1] |
| 34 | plu | ["FOHYZ","FOZ",1] |
| 35 | plu | ["FOHYP","FOP",1] |
| 36 | plu | ["YOHZQ","YZQ",-1] |
| 37 | plu | ["YOHPQ","YPQ",-1] |
| 38 | plu | ["YHDZR","YZR",-1] |
| 39 | plu | ["YHDPR","YPR",-1] |
| 40 | plu | ["ZOHDP","ZDP",1] |
| 41 | plu | ["ZOFYP","ZYP",-1] |
| 42 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 43 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 44 | capacity | ["OCP","Y","Z","CPZ",-1,"115189/200000","C013"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","ZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 279/1000 | ["cost","P"] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 279/1000 | ["cost","P"] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_OFY | OFY | hi | 138233/317500 | "C018" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 1 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 2 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 3 | ["plu","OCD","OFY","OCF","ODY","OCY","ODF"] | ["plu","OCDFY"] |
| 4 | ["plu","HCF","OHZ","HCZ","OHF","HFZ","OHC"] | ["plu","HOCFZ"] |
| 5 | ["plu","CDF","HCZ","CDZ","HCF","CFZ","HCD"] | ["plu","CHDFZ"] |
| 6 | ["plu","HCF","OFZ","CFZ","OHF","HFZ","OCF"] | ["plu","FOHCZ"] |
| 7 | ["plu","HFY","OFZ","FYZ","OHF","HFZ","OFY"] | ["plu","FOHYZ"] |
| 8 | ["plu","CDY","OFY","CFY","ODY","DFY","OCY"] | ["plu","YOCDF"] |
| 9 | ["plu","CFY","HDY","CDY","HFY","DFY","HCY"] | ["plu","YHCDF"] |
| 10 | ["plu","CDZ","OHZ","HCZ","ODZ","HDZ","OCZ"] | ["plu","ZOHCD"] |
| 11 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 12 | ["balance",[[-1,"HCF","DYZ"],[-1,"CFZ","HDY"],[-1,"HFZ","CDY"],[1,"HCZ","DFY"]]] | ["six","DYHCFZ"] |
| 13 | ["balance",[[-1,"OHD","FYZ"],[-1,"HDZ","OFY"],[-1,"ODZ","HFY"],[1,"OHZ","DFY"]]] | ["six","FYOHDZ"] |
| 14 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 15 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 16 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 17 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 18 | ["bary",["CDZ",1],[["OCD",1],["HCD",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CD"] |
| 19 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s3 | 0 | sub | OHZ | hi | 157/250 | hi_OHD,lo_HDZ,lo_ODZ |
| s7 | 1 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s16 | 2 | sub | OFZ | hi | 374729/500000 | hi_ODF,lo_DFZ,lo_ODZ |
| s68 | 3 | sumlo | OFY | lo | 157113/1000000 | lo_OCF,lo_ODY,lo_OCY,lo_ODF,hi_OCD |
| s73 | 4 | sumlo | HCF | lo | 68861/500000 | lo_HCZ,lo_OHF,lo_HFZ,lo_OHC,s3 |
| s89 | 5 | sumlo | HCZ | lo | 116013/500000 | lo_CDZ,s73,lo_CFZ,lo_HCD,hi_CDF |
| s133 | 6 | sumlo | HCF | lo | 34621/250000 | lo_CFZ,lo_OHF,lo_HFZ,lo_OCF,s16 |
| s134 | 7 | sumlo | HFY | lo | 93109/1000000 | lo_FYZ,lo_OHF,lo_HFZ,s68,s16 |
| s155 | 8 | sumlo | CDY | lo | 42027/250000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,hi_OFY |
| s156 | 8 | sumlo | OFY | lo | 37539/200000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,s7 |
| s160 | 9 | sumlo | CFY | lo | 23729/250000 | s155,s134,lo_DFY,lo_HCY,hi_HDY |
| s178 | 10 | sumlo | CDZ | lo | 158311/1000000 | s89,lo_ODZ,lo_HDZ,lo_OCZ,s3 |
| s215 | 11 | balance_lo | CDY | lo | 197647/1000000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s160,lo_ODQ,hi_OFQ |
| s243 | 12 | balance_lo | HCZ | lo | 13519/40000 | s133,lo_DYZ,lo_CFZ,lo_HDY,lo_HFZ,s215,hi_DFY |
| s245 | 13 | balance_lo | OHZ | lo | 164469/500000 | lo_OHD,lo_FYZ,lo_HDZ,s156,lo_ODZ,s134,hi_DFY |
| s274 | 14 | linear | OCD | lo | 383647/1000000 | s215,lo_OCY,lo_ODY |
| s294 | 15 | linear | HCD | lo | 387643/500000 | s178,s243,lo_HDZ |
| s341 | 16 | linear | HCD | hi | 907/1000 | lo_HDF |
| s342 | 16 | linear | HDF | hi | 112357/500000 | s294 |
| s343 | 17 | linear | HCF | hi | 153/500 | lo_CDF |
| s361 | 18 | bary_lo | CDZ | lo | 179139/1000000 | hi_OHD,lo_HDZ,lo_ODZ,s245,s274,s294 |
| s491 | 19 | bary_lo | HFZ | hi | 107637/500000 | s341,s361,lo_HDZ,s243,s343,s342 |

## Conclusion

{"triangle":"HFZ","lower":"lo_HFZ","upper":"s491"}
