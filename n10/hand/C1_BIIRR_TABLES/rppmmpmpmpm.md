# Leaf rppmmpmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"QYZ":-1,"OFY":1,"HZQ":-1}

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
| 9 | extreme | ["OHZ","Q","ZOQ",1] |
| 10 | extreme | ["OCY","F","CYF",-1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DYQ","O","YQO",-1] |
| 16 | extreme | ["DYR","O","YRO",-1] |
| 17 | extreme | ["YZQ","H","YZH",1] |
| 18 | interior_line | ["OZ","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","P","HCDF","P",1] |
| 20 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 21 | interior_line | ["CY","P","HCDF","P",-1] |
| 22 | interior_line | ["CZ","R","CDQ","R",-1] |
| 23 | interior_line | ["CP","R","CDQ","R",-1] |
| 24 | interior_line | ["DZ","R","CDQ","R",1] |
| 25 | interior_line | ["DP","R","CDQ","R",1] |
| 26 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 27 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 28 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 29 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | plu | ["OHDZP","ODP",1] |
| 31 | plu | ["OHDPR","OPR",-1] |
| 32 | plu | ["OHFYZ","OYZ",-1] |
| 33 | plu | ["HOZPQ","HPQ",-1] |
| 34 | plu | ["FOHYZ","FYZ",1] |
| 35 | plu | ["FOHYP","FYP",1] |
| 36 | plu | ["ZOHDP","ZDP",1] |
| 37 | plu | ["ZOHYP","ZYP",-1] |
| 38 | plu | ["ZOCPQ","ZPQ",-1] |
| 39 | plu | ["ZOCPR","ZPR",-1] |
| 40 | plu | ["POHYQ","PYQ",1] |
| 41 | capacity | ["HDQ","ZP","R","QHR",1,"19683941/25400000","C029"] |
| 42 | plu | ["HOZQR","HZR",-1] |
| 43 | plu | ["HOPQR","HPR",-1] |
| 44 | plu | ["ZOHYR","ZYR",1] |
| 45 | plu | ["POHYR","PYR",1] |
| 46 | plu | ["QOHFR","QFR",1] |
| 47 | plu | ["QOHZR","QZR",1] |
| 48 | plu | ["QOHPR","QPR",1] |
| 49 | mesh | ["OHDPYZ",1] |
| 50 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OPQ | OPQ | lo | 347/500 | ["cost","ZR"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","R"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 347/500 | ["cost","ZP"] |
| lo_HDR | HDR | lo | 347/500 | ["cost","ZP"] |
| lo_HYR | HYR | lo | 93/1000 | ["cost",""] |
| lo_HZQ | HZQ | lo | 93/1000 | ["cost",""] |
| lo_HPQ | HPQ | lo | 279/1000 | ["cost","Z"] |
| lo_HPR | HPR | lo | 279/1000 | ["cost","Z"] |
| lo_HQR | HQR | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CPQ | CPQ | lo | 279/1000 | ["cost","R"] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YPR | YPR | lo | 279/1000 | ["cost","Z"] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZPR | ZPR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCP | OCP | hi | 115189/200000 | "C013" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HDR | HDR | hi | 4843910223/6350000000 | "C069" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |
| hi_DYR | DYR | hi | 4056959289/6350000000 | "C070" |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 1 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 2 | ["fan","HDQ","DZQ","HDZ","HZQ"] | ["fan","HDQ","Z"] |
| 3 | ["fan","HDR","DPR","HDP","HPR"] | ["fan","HDR","P"] |
| 4 | ["plu","HFQ","OHD","HDF","OHQ","HDQ","OHF"] | ["plu","HODFQ"] |
| 5 | ["plu","HDQ","OHP","HDP","OHQ","HPQ","OHD"] | ["plu","HODPQ"] |
| 6 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 7 | ["plu","HCD","ODQ","CDQ","OHD","HDQ","OCD"] | ["plu","DOHCQ"] |
| 8 | ["plu","HCD","ODR","CDR","OHD","HDR","OCD"] | ["plu","DOHCR"] |
| 9 | ["plu","DPQ","OHD","HDP","ODQ","HDQ","ODP"] | ["plu","DOHPQ"] |
| 10 | ["plu","OCP","ZPQ","CPQ","OZP","CZP","OPQ"] | ["plu","POCZQ"] |
| 11 | ["plu","DPR","HYP","DYP","HPR","HDP","YPR"] | ["plu","PHDYR"] |
| 12 | ["plu","HQR","OYQ","HYQ","OQR","OHQ","YQR"] | ["plu","QOHYR"] |
| 13 | ["plu","HPQ","OZQ","HZQ","OPQ","OHQ","ZPQ"] | ["plu","QOHZP"] |
| 14 | ["plu","CPQ","ODQ","CDQ","OPQ","DPQ","OCQ"] | ["plu","QOCDP"] |
| 15 | ["plu","DQR","HCQ","CDQ","HQR","CQR","HDQ"] | ["plu","QHCDR"] |
| 16 | ["plu","DYQ","HQR","DQR","HYQ","HDQ","YQR"] | ["plu","QHDYR"] |
| 17 | ["plu","DQR","OYR","DYR","OQR","ODR","YQR"] | ["plu","RODYQ"] |
| 18 | ["plu","DQR","HCR","CDR","HQR","CQR","HDR"] | ["plu","RHCDQ"] |
| 19 | ["plu","DYR","HQR","DQR","HYR","HDR","YQR"] | ["plu","RHDYQ"] |
| 20 | ["balance",[[-1,"HCD","OPR"],[1,"CDR","OHP"],[1,"HDR","OCP"],[1,"HCR","ODP"]]] | ["six","OPHCDR"] |
| 21 | ["balance",[[1,"OCP","HYQ"],[-1,"CPQ","OHY"],[-1,"OPQ","HCY"],[-1,"OCQ","HYP"]]] | ["six","HYOCPQ"] |
| 22 | ["balance",[[-1,"CDQ","HYR"],[1,"DQR","HCY"],[1,"CQR","HDY"],[1,"CDR","HYQ"]]] | ["six","HYCDQR"] |
| 23 | ["balance",[[-1,"OZP","HQR"],[-1,"ZPR","OHQ"],[-1,"OPR","HZQ"],[1,"OZR","HPQ"]]] | ["six","HQOZPR"] |
| 24 | ["balance",[[1,"OHF","ZPQ"],[1,"HFQ","OZP"],[-1,"OFQ","HZP"],[1,"OHQ","FZP"]]] | ["six","ZPOHFQ"] |
| 25 | ["balance",[[-1,"HCD","ZPR"],[1,"CDR","HZP"],[1,"HDR","CZP"],[1,"HCR","DZP"]]] | ["six","ZPHCDR"] |
| 26 | ["balance",[[-1,"OHD","ZPQ"],[-1,"HDP","OZQ"],[-1,"ODP","HZQ"],[1,"OHP","DZQ"]]] | ["six","ZQOHDP"] |
| 27 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 28 | ["linear",{"OHY":-1,"OYR":-1,"OHR":1,"HYR":-1},"0"] | ["affine_quad","OHYR",1] |
| 29 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 30 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 31 | ["linear",{"HDZ":-1,"HZQ":-1,"HDQ":1,"DZQ":-1},"0"] | ["affine_quad","HDZQ",1] |
| 32 | ["bary",["ZPQ",1],[["OZQ",-1],["HZQ",-1],["DZQ",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","ZQ"] |
| 33 | ["bary",["ZPR",-1],[["OZP",1],["HZP",1],["ZPQ",-1]],"OHQ",["HQR","OQR","OHR"]] | ["bary","OHQ","R","ZP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s9 | 0 | sub | OHP | hi | 157/250 | hi_OHD,lo_HDP,lo_ODP |
| s45 | 1 | sub | HCR | hi | 680091/1000000 | hi_HCQ,lo_CQR,lo_HQR |
| s48 | 2 | sub | DZQ | hi | 402959/1000000 | hi_HDQ,lo_HDZ,lo_HZQ |
| s57 | 3 | sub | DPR | hi | 390821/1000000 | hi_HDR,lo_HDP,lo_HPR |
| s91 | 4 | sumlo | HFQ | lo | 32271/125000 | lo_HDF,lo_OHQ,lo_HDQ,lo_OHF,hi_OHD |
| s96 | 5 | sumlo | OHP | lo | 18979/50000 | lo_HDP,lo_OHQ,lo_HPQ,lo_OHD,hi_HDQ |
| s98 | 5 | diffhi | HPQ | hi | 512919/1000000 | hi_HDQ,s9,lo_HDP,lo_OHQ,lo_OHD |
| s102 | 6 | sumlo | HYQ | lo | 5847/40000 | lo_HCQ,lo_HDY,lo_HCY,lo_HDQ,hi_HCD |
| s121 | 7 | sumlo | ODQ | lo | 373689/1000000 | lo_CDQ,lo_OHD,lo_HDQ,lo_OCD,hi_HCD |
| s122 | 8 | sumlo | ODR | lo | 216533/1000000 | lo_CDR,lo_OHD,lo_HDR,lo_OCD,hi_HCD |
| s131 | 9 | sumlo | DPQ | lo | 228379/1000000 | lo_HDP,s121,lo_HDQ,lo_ODP,hi_OHD |
| s157 | 10 | sumlo | ZPQ | lo | 157113/1000000 | lo_CPQ,lo_OZP,lo_CZP,lo_OPQ,hi_OCP |
| s160 | 11 | sumlo | HYP | lo | 66391/500000 | lo_DYP,lo_HPR,lo_HDP,lo_YPR,s57 |
| s165 | 12 | sumlo | HQR | lo | 56337/500000 | s102,lo_OQR,lo_OHQ,lo_YQR,hi_OYQ |
| s166 | 13 | sumlo | OZQ | lo | 84603/250000 | lo_HZQ,lo_OPQ,lo_OHQ,s157,s98 |
| s168 | 14 | sumlo | CPQ | lo | 56503/200000 | lo_CDQ,lo_OPQ,s131,lo_OCQ,hi_ODQ |
| s175 | 15 | sumlo | DQR | lo | 110817/1000000 | lo_CDQ,s165,lo_CQR,lo_HDQ,hi_HCQ |
| s177 | 16 | sumlo | HQR | lo | 117047/1000000 | s175,s102,lo_HDQ,lo_YQR,hi_DYQ |
| s186 | 17 | sumlo | OYR | lo | 98471/500000 | lo_DYR,lo_OQR,s122,lo_YQR,hi_DQR |
| s191 | 18 | sumlo | DQR | lo | 110907/1000000 | lo_CDR,s177,lo_CQR,lo_HDR,s45 |
| s192 | 18 | sumlo | HCR | lo | 322339/1000000 | lo_CDR,s177,lo_CQR,lo_HDR,hi_DQR |
| s195 | 19 | sumlo | HQR | lo | 58583/500000 | s191,lo_HYR,lo_HDR,lo_YQR,hi_DYR |
| s218 | 20 | balance_lo | OPR | lo | 327353/1000000 | lo_CDR,s96,lo_HDR,lo_OCP,s192,lo_ODP,hi_HCD |
| s238 | 21 | balance_lo | HYQ | lo | 89561/500000 | s168,lo_OHY,lo_OPQ,lo_HCY,lo_OCQ,s160,hi_OCP |
| s239 | 22 | balance_lo | HYR | lo | 125999/1000000 | s191,lo_HCY,lo_CQR,lo_HDY,lo_CDR,s238,hi_CDQ |
| s248 | 23 | balance_lo | OZR | lo | 20643/100000 | lo_OZP,s195,lo_ZPR,lo_OHQ,s218,lo_HZQ,s98 |
| s279 | 24 | balance_lo | HZP | lo | 67107/500000 | lo_OHF,s157,s91,lo_OZP,lo_OHQ,lo_FZP,hi_OFQ |
| s282 | 25 | balance_lo | ZPR | lo | 109851/1000000 | lo_CDR,s279,lo_HDR,lo_CZP,s192,lo_DZP,hi_HCD |
| s286 | 26 | balance_lo | OHP | lo | 23169/50000 | lo_OHD,s157,lo_HDP,s166,lo_ODP,lo_HZQ,s48 |
| s297 | 27 | balance_lo | HQR | lo | 134461/1000000 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,s191,hi_CDY |
| s313 | 28 | linear | OHR | lo | 415941/1000000 | s239,lo_OHY,s186 |
| s337 | 29 | linear | OZQ | lo | 39243/100000 | lo_OQR,s248,lo_ZQR |
| s359 | 30 | linear | HDZ | lo | 160107/500000 | lo_DZP,lo_HDP,s279 |
| s364 | 31 | linear | DZQ | hi | 72349/200000 | hi_HDQ,s359,lo_HZQ |
| s507 | 32 | bary_hi | ZPQ | hi | 164733/1000000 | hi_OHD,lo_HDP,lo_ODP,s286,s337,lo_HZQ,s364 |
| s539 | 33 | bary_lo | ZPR | hi | 25569/250000 | hi_OHQ,s297,lo_OQR,s313,lo_OZP,s279,s507 |

## Conclusion

{"triangle":"ZPR","lower":"s282","upper":"s539"}
