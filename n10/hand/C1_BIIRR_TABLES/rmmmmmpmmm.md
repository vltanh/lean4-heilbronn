# Leaf rmmmmmpmmm

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":-1,"DZP":-1,"FYZ":1,"FYP":-1,"OYR":-1,"HZQ":-1}

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
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFY","O","FYO",-1] |
| 16 | interior_line | ["OY","R","ODQ","Q",-1] |
| 17 | interior_line | ["HY","Z","HCDF","Z",1] |
| 18 | interior_line | ["HY","P","HCDF","P",1] |
| 19 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 20 | interior_line | ["CY","P","HCDF","P",-1] |
| 21 | interior_line | ["CZ","R","CDQ","R",-1] |
| 22 | interior_line | ["CP","R","CDQ","R",-1] |
| 23 | interior_line | ["DZ","R","CDQ","R",1] |
| 24 | interior_line | ["DP","R","CDQ","R",1] |
| 25 | interior_line | ["ZQ","Y","OHC","Y",-1] |
| 26 | capacity | ["OCD","Y","Z","DOZ",-1,"115189/200000","C009"] |
| 27 | capacity | ["OCD","Y","P","DOP",-1,"115189/200000","C009"] |
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | plu | ["OHDYZ","OYZ",1] |
| 30 | plu | ["OHDYP","OYP",1] |
| 31 | plu | ["OHDZR","OZR",-1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["DOHYZ","DYZ",-1] |
| 34 | plu | ["DOHYP","DYP",-1] |
| 35 | plu | ["FOHYZ","FOZ",1] |
| 36 | plu | ["FHCYP","FCP",-1] |
| 37 | plu | ["FHCPQ","FPQ",1] |
| 38 | plu | ["FHCPR","FPR",1] |
| 39 | plu | ["FHYZP","FZP",-1] |
| 40 | plu | ["YOHZR","YZR",-1] |
| 41 | plu | ["YOHPQ","YPQ",-1] |
| 42 | plu | ["YOHPR","YPR",-1] |
| 43 | plu | ["YOFZP","YZP",1] |
| 44 | plu | ["ZOHCP","ZCP",-1] |
| 45 | plu | ["ZOHPQ","ZPQ",1] |
| 46 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 47 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |
| 48 | capacity | ["DPQ","Z","R","PQR",-1,"87606223/127000000","C056"] |
| 49 | plu | ["POZQR","PZR",-1] |
| 50 | plu | ["QOFPR","QFR",1] |
| 51 | plu | ["QOZPR","QZR",1] |
| 52 | plu | ["ZOHQR","ZHR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","ZP"] |
| lo_OHR | OHR | lo | 9753129/25000000 | "C057" |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OFZ | OFZ | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_OYR | OYR | lo | 93/1000 | ["cost",""] |
| lo_OZQ | OZQ | lo | 347/500 | ["cost","YR"] |
| lo_OPQ | OPQ | lo | 347/500 | ["cost","YR"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 279/1000 | ["cost","P"] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 279/1000 | ["cost","P"] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_HZQ | HZQ | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_ZPQ | ZPQ | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_DPQ | DPQ | hi | 87606223/127000000 | "C056" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 1 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 2 | ["fan","HDY","DYZ","HDZ","HYZ"] | ["fan","HDY","Z"] |
| 3 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 4 | ["fan","DPQ","DZP","DZQ","ZPQ"] | ["fan","DPQ","Z"] |
| 5 | ["plu","ODR","OHY","ODY","OHR","OHD","OYR"] | ["plu","OHDYR"] |
| 6 | ["plu","ODQ","OYZ","ODY","OZQ","ODZ","OYQ"] | ["plu","ODYZQ"] |
| 7 | ["plu","ODR","OYQ","ODQ","OYR","ODY","OQR"] | ["plu","ODYQR"] |
| 8 | ["plu","OFQ","OZP","OFP","OZQ","OFZ","OPQ"] | ["plu","OFZPQ"] |
| 9 | ["plu","HDY","OHP","HDP","OHY","HYP","OHD"] | ["plu","HODYP"] |
| 10 | ["plu","HDP","HYZ","HDY","HZP","HDZ","HYP"] | ["plu","HDYZP"] |
| 11 | ["plu","DYP","HDZ","DYZ","HDP","DZP","HDY"] | ["plu","DHYZP"] |
| 12 | ["plu","OHZ","ZPQ","HZP","OZQ","HZQ","OZP"] | ["plu","ZOHPQ"] |
| 13 | ["plu","DZQ","OZP","DZP","OZQ","ODZ","ZPQ"] | ["plu","ZODPQ"] |
| 14 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 15 | ["balance",[[-1,"HCY","OZQ"],[1,"CYZ","OHQ"],[-1,"HYZ","OCQ"],[-1,"HCZ","OYQ"]]] | ["six","OQHCYZ"] |
| 16 | ["balance",[[-1,"CFZ","OPQ"],[-1,"FZP","OCQ"],[1,"CZP","OFQ"],[-1,"CFP","OZQ"]]] | ["six","OQCFZP"] |
| 17 | ["linear",{"OHD":1,"ODP":-1,"OHP":-1,"HDP":-1},"0"] | ["affine_quad","OHDP",-1] |
| 18 | ["linear",{"OHZ":1,"OZP":-1,"OHP":-1,"HZP":-1},"0"] | ["affine_quad","OHZP",-1] |
| 19 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 20 | ["linear",{"OCY":-1,"OYZ":-1,"OCZ":1,"CYZ":-1},"0"] | ["affine_quad","OCYZ",-1] |
| 21 | ["linear",{"HCZ":1,"HZP":-1,"HCP":-1,"CZP":-1},"0"] | ["affine_quad","HCZP",1] |
| 22 | ["support","OZQ","ODQ","ODZ","897/1000"] | ["support_quad","OQDZ","YR","299/31"] |
| 23 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 24 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 25 | ["bary",["HCZ",1],[["OHC",-1],null,["HCD",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","HC"] |
| 26 | ["bary",["CDZ",1],[["OCD",1],["HCD",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CD"] |
| 27 | ["bary",["OPQ",1],[null,["OHQ",1],["OFQ",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","OQ"] |
| 28 | ["bary",["CDP",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","CD"] |
| 29 | ["bary",["CZP",1],[["OCZ",1],["HCZ",1],["CFZ",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","CZ"] |
| 30 | ["bary",["OZQ",1],[null,["ODQ",1],["OPQ",1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","OQ"] |
| 31 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 32 | ["bary",["OPQ",1],[["OHQ",1],["OCQ",-1],["OZQ",1]],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","OQ"] |
| 33 | ["bary",["OZQ",1],[["OCQ",-1],["ODQ",1],["OPQ",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OQ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s3 | 0 | sub | OHZ | hi | 407/500 | hi_OHD,lo_HDZ,lo_ODZ |
| s25 | 1 | sub | ODR | hi | 35909/62500 | hi_ODQ,lo_DQR,lo_OQR |
| s47 | 2 | sub | HYZ | hi | 131779/200000 | hi_HDY,lo_DYZ,lo_HDZ |
| s48 | 3 | sub | DYP | hi | 131779/200000 | hi_HDY,lo_HDP,lo_HYP |
| s69 | 4 | sub | DZQ | hi | 503813/1000000 | hi_DPQ,lo_DZP,lo_ZPQ |
| s77 | 5 | sumlo | OHY | lo | 43871/250000 | lo_ODY,lo_OHR,lo_OHD,lo_OYR,s25 |
| s83 | 6 | sumlo | OYZ | lo | 19247/200000 | lo_ODY,lo_OZQ,lo_ODZ,lo_OYQ,hi_ODQ |
| s85 | 7 | sumlo | OYQ | lo | 127389/1000000 | lo_ODQ,lo_OYR,lo_ODY,lo_OQR,s25 |
| s87 | 8 | sumlo | OZP | lo | 65433/500000 | lo_OFP,lo_OZQ,lo_OFZ,lo_OPQ,hi_OFQ |
| s91 | 9 | sumlo | OHP | lo | 47853/500000 | lo_HDP,s77,lo_HYP,lo_OHD,hi_HDY |
| s93 | 10 | sumlo | HDP | lo | 111081/1000000 | lo_HDY,lo_HZP,lo_HDZ,lo_HYP,s47 |
| s112 | 11 | sumlo | HDZ | lo | 113633/1000000 | lo_DYZ,s93,lo_DZP,lo_HDY,s48 |
| s136 | 12 | sumlo | ZPQ | lo | 94241/1000000 | lo_HZP,lo_OZQ,lo_HZQ,s87,s3 |
| s139 | 13 | sumlo | OZP | lo | 145503/1000000 | lo_DZP,lo_OZQ,lo_ODZ,s136,s69 |
| s166 | 14 | balance_lo | CDY | lo | 217491/1000000 | lo_HCD,s85,lo_HDY,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s169 | 15 | balance_lo | CYZ | lo | 12603/100000 | lo_HCY,lo_OZQ,lo_HYZ,lo_OCQ,lo_HCZ,s85,hi_OHQ |
| s173 | 16 | balance_lo | CZP | lo | 69817/500000 | lo_CFZ,lo_OPQ,lo_FZP,lo_OCQ,lo_CFP,lo_OZQ,hi_OFQ |
| s212 | 17 | linear | ODP | hi | 793213/1000000 | s93,hi_OHD,s91 |
| s221 | 18 | linear | OHZ | lo | 334209/1000000 | lo_HZP,s91,s139 |
| s223 | 19 | linear | OCD | lo | 403491/1000000 | s166,lo_OCY,lo_ODY |
| s228 | 20 | linear | OCZ | lo | 63053/200000 | s169,lo_OCY,s83 |
| s253 | 21 | linear | HCZ | lo | 162817/500000 | s173,lo_HCP,lo_HZP |
| s281 | 22 | support_z | ODZ | lo | 4223/40000 | lo_OZQ,hi_ODQ |
| s283 | 23 | linear | OHC | lo | 403491/1000000 | s223 |
| s284 | 24 | linear | HCD | hi | 907/1000 | lo_HDF |
| s302 | 25 | bary_hi | HCZ | hi | 662329/1000000 | hi_OHD,s112,s281,s221,s283,s284 |
| s308 | 26 | bary_lo | CDZ | lo | 59559/500000 | hi_OHD,s112,s281,s221,s223,lo_HCD |
| s332 | 27 | bary_hi | OPQ | hi | 851491/1000000 | hi_OHF,lo_HFP,lo_OFP,s91,hi_OHQ,hi_OFQ |
| s335 | 28 | bary_lo | CDP | lo | 418821/1000000 | hi_OHF,lo_HFP,lo_OFP,s91,s223,lo_HCD,lo_CDF |
| s336 | 29 | bary_lo | CZP | lo | 159623/1000000 | hi_OHF,lo_HFP,lo_OFP,s91,s228,s253,lo_CFZ |
| s372 | 30 | bary_hi | OZQ | hi | 11484/15625 | s212,lo_DZP,s139,s281,hi_ODQ,s332 |
| s507 | 31 | bary_hi | CDP | hi | 702919/1000000 | s284,s335,s93,lo_HCP,s284 |
| s529 | 32 | bary_hi | OPQ | hi | 161863/200000 | s302,s336,lo_HZP,lo_HCP,hi_OHQ,lo_OCQ,s372 |
| s572 | 33 | bary_hi | OZQ | hi | 678859/1000000 | s507,lo_DZP,s336,s308,lo_OCQ,hi_ODQ,s529 |

## Conclusion

{"triangle":"OZQ","lower":"lo_OZQ","upper":"s572"}
