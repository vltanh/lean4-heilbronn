# Leaf rpmmppmmppppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":1,"QYZ":1,"OFY":1,"OZR":1,"HPQ":1}

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
| 10 | extreme | ["OCY","F","CYF",-1] |
| 11 | extreme | ["HFP","Q","FPQ",1] |
| 12 | extreme | ["CYQ","H","YQH",1] |
| 13 | extreme | ["CYR","D","YRD",1] |
| 14 | extreme | ["CYR","F","YRF",1] |
| 15 | extreme | ["CYR","H","YRH",1] |
| 16 | extreme | ["DFZ","O","FZO",-1] |
| 17 | extreme | ["DYQ","O","YQO",-1] |
| 18 | extreme | ["DYR","O","YRO",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 22 | interior_line | ["CY","P","HCDF","P",-1] |
| 23 | interior_line | ["CZ","R","CDQ","R",-1] |
| 24 | interior_line | ["CP","R","CDQ","R",-1] |
| 25 | interior_line | ["DZ","R","CDQ","R",1] |
| 26 | interior_line | ["DP","R","CDQ","R",1] |
| 27 | interior_line | ["ZP","Y","OHC","Y",1] |
| 28 | interior_line | ["ZR","R","ODQ","Q",-1] |
| 29 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 30 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 31 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 33 | capacity | ["OCR","Z","P","ROP",-1,"2849236491/7210000000","C045"] |
| 34 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 35 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 36 | capacity | ["DZQ","R","Y","DZY",-1,"87606223/127000000","C065"] |
| 37 | plu | ["OHDYZ","OYZ",-1] |
| 38 | plu | ["OHFYP","OYP",-1] |
| 39 | plu | ["HOZPQ","HZQ",1] |
| 40 | plu | ["DOHZP","DZP",-1] |
| 41 | plu | ["FOHYZ","FYZ",1] |
| 42 | plu | ["YODPR","YPR",-1] |
| 43 | plu | ["YOZQR","YZR",1] |
| 44 | plu | ["ZOHCR","ZHR",-1] |
| 45 | plu | ["ZOHFQ","ZFQ",-1] |
| 46 | plu | ["ZOHPQ","ZPQ",-1] |
| 47 | plu | ["ZOCPR","ZPR",-1] |
| 48 | plu | ["ZODFR","ZFR",-1] |
| 49 | plu | ["POFZR","PFR",-1] |
| 50 | capacity | ["OHQ","YZP","R","HQR",1,"1",["unit"]] |
| 51 | plu | ["HOPQR","HPR",1] |
| 52 | plu | ["QOHPR","QPR",-1] |
| 53 | mesh | ["OHQPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 279/1000 | ["cost","Z"] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 279/1000 | ["cost","Z"] |
| lo_HCQ | HCQ | lo | 347/500 | ["cost","ZP"] |
| lo_HCR | HCR | lo | 347/500 | ["cost","ZP"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 1 | ["plu","CQR","ODR","CDR","OQR","DQR","OCR"] | ["plu","ROCDQ"] |
| 2 | ["balance",[[1,"OZQ","CDR"],[-1,"ZQR","OCD"],[1,"OQR","CDZ"],[1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 3 | ["linear",{"OZQ":-1,"OQR":1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",1] |
| 4 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 5 | ["bary",["CQR",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","CQ"] |
| 6 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s166 | 0 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s167 | 0 | diff | CDQ | lo | 337493/1000000 | lo_HCQ,lo_ODQ,hi_HDQ,hi_OCQ,hi_OHQ |
| s190 | 1 | sumlo | ODR | lo | 221769/1000000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,hi_CQR |
| s251 | 2 | balance_lo | ZQR | lo | 28641/250000 | lo_OZQ,lo_CDR,lo_OQR,lo_CDZ,lo_OZR,s167,hi_OCD |
| s310 | 3 | linear | OQR | lo | 75141/250000 | lo_OZQ,lo_OZR,s251 |
| s370 | 4 | linear | HCD | hi | 907/1000 | lo_HDF |
| s577 | 5 | bary_lo | CQR | lo | 36187/250000 | hi_ODQ,lo_DQR,s310,s190,lo_OCQ,s167 |
| s727 | 6 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,s577,lo_CDR,s370,s166 |

## Conclusion

{"triangle":"HCR","lower":"lo_HCR","upper":"s727"}
