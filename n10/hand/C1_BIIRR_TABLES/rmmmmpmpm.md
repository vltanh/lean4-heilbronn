# Leaf rmmmmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":-1,"DZP":1,"FZP":-1,"FYZ":1,"FYP":-1}

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
| 35 | plu | ["FHCYP","FCP",-1] |
| 36 | plu | ["FHCPQ","FPQ",1] |
| 37 | plu | ["FHCPR","FPR",1] |
| 38 | plu | ["YOHZQ","YZQ",-1] |
| 39 | plu | ["YOHPQ","YPQ",-1] |
| 40 | plu | ["YOFZP","YZP",1] |
| 41 | plu | ["YHDZR","YZR",-1] |
| 42 | plu | ["YHDPR","YPR",-1] |
| 43 | plu | ["ZOHCP","ZCP",-1] |
| 44 | plu | ["ZODPQ","ZPQ",1] |
| 45 | plu | ["ZODPR","ZPR",1] |
| 46 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 47 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HDP | HDP | lo | 279/1000 | ["cost","Z"] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HFY | HFY | hi | 271/500 | "C024" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 1 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 2 | ["fan","OCZ","CYZ","OCY","OYZ"] | ["fan","OCZ","Y"] |
| 3 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 4 | ["plu","OCF","ODP","OCD","OFP","OCP","ODF"] | ["plu","OCDFP"] |
| 5 | ["plu","CDP","OHD","HCD","ODP","HDP","OCD"] | ["plu","DOHCP"] |
| 6 | ["plu","CDZ","HDP","CDP","HDZ","DZP","HCD"] | ["plu","DHCZP"] |
| 7 | ["plu","CDY","OHY","HCY","ODY","HDY","OCY"] | ["plu","YOHCD"] |
| 8 | ["plu","CZP","ODZ","CDZ","OZP","DZP","OCZ"] | ["plu","ZOCDP"] |
| 9 | ["plu","CDP","OHP","HCP","ODP","HDP","OCP"] | ["plu","POHCD"] |
| 10 | ["plu","CFP","ODP","CDP","OFP","DFP","OCP"] | ["plu","POCDF"] |
| 11 | ["plu","CDP","HFP","CFP","HDP","DFP","HCP"] | ["plu","PHCDF"] |
| 12 | ["balance",[[-1,"CFZ","ODP"],[-1,"FZP","OCD"],[1,"CZP","ODF"],[-1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 13 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 14 | ["balance",[[1,"ODF","HCP"],[1,"DFP","OHC"],[1,"OFP","HCD"],[-1,"ODP","HCF"]]] | ["six","HCODFP"] |
| 15 | ["balance",[[1,"ODF","HYP"],[1,"DFP","OHY"],[1,"OFP","HDY"],[-1,"ODP","HFY"]]] | ["six","HYODFP"] |
| 16 | ["balance",[[-1,"HDZ","CFP"],[-1,"DZP","HCF"],[1,"HZP","CDF"],[-1,"HDP","CFZ"]]] | ["six","CFHDZP"] |
| 17 | ["balance",[[-1,"ODF","CYP"],[-1,"DFP","OCY"],[-1,"OFP","CDY"],[1,"ODP","CFY"]]] | ["six","CYODFP"] |
| 18 | ["balance",[[-1,"OHC","DZP"],[-1,"HCP","ODZ"],[-1,"OCP","HDZ"],[1,"OHP","CDZ"]]] | ["six","DZOHCP"] |
| 19 | ["balance",[[1,"HCF","DZP"],[1,"CFP","HDZ"],[-1,"HFP","CDZ"],[1,"HCP","DFZ"]]] | ["six","DZHCFP"] |
| 20 | ["balance",[[-1,"OHC","DFP"],[-1,"HCD","OFP"],[-1,"OCD","HFP"],[1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 21 | ["linear",{"OHF":1,"OFP":-1,"OHP":-1,"HFP":-1},"0"] | ["affine_quad","OHFP",-1] |
| 22 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 23 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 24 | ["linear",{"HDZ":-1,"HZP":-1,"HDP":1,"DZP":-1},"0"] | ["affine_quad","HDZP",1] |
| 25 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 26 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 27 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 28 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 29 | ["bary",["HFP",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","HF"] |
| 30 | ["bary",["CDP",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","CD"] |
| 31 | ["bary",["ODP",1],[["OHD",1],["OCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OD"] |
| 32 | ["bary",["HDP",-1],[null,["HCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HD"] |
| 33 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 34 | ["bary",["CFP",1],[["HCF",1],null,["CDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CF"] |
| 35 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 36 | ["bary",["OYZ",1],[["OHY",1],["ODY",1],["OYP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","OY"] |
| 37 | ["bary",["CDZ",1],[["HCD",1],null,["CDP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","CD"] |
| 38 | ["bary",["CZP",-1],[["HCP",1],["CDP",-1],null],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","CP"] |
| 39 | ["bary",["OZP",-1],[["OCP",-1],["ODP",-1],["OFP",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OP"] |
| 40 | ["bary",["CDZ",1],[null,null,["CDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","CD"] |
| 41 | ["bary",["CYZ",-1],[["CDY",-1],["CFY",-1],["CYP",-1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","CY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s5 | 0 | sub | ODP | hi | 157/250 | hi_OHD,lo_HDP,lo_OHP |
| s12 | 1 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s27 | 3 | sub | CDP | hi | 602053/1000000 | hi_HCD,lo_HCP,lo_HDP |
| s57 | 4 | sumlo | ODP | lo | 113589/500000 | lo_OCD,lo_OFP,lo_OCP,lo_ODF,hi_OCF |
| s81 | 5 | sumlo | CDP | lo | 117751/500000 | lo_HCD,s57,lo_HDP,lo_OCD,hi_OHD |
| s102 | 7 | sumlo | OHY | lo | 37539/200000 | lo_HCY,lo_ODY,lo_HDY,lo_OCY,s12 |
| s115 | 9 | sumlo | OHP | lo | 32877/200000 | lo_HCP,s57,lo_HDP,lo_OCP,s27 |
| s117 | 10 | sumlo | CFP | lo | 6353/40000 | s81,lo_OFP,lo_DFP,lo_OCP,s5 |
| s119 | 11 | sumlo | HFP | lo | 116699/1000000 | s117,lo_HDP,lo_DFP,lo_HCP,s27 |
| s148 | 13 | balance_lo | CDY | lo | 96813/500000 | lo_HCD,lo_OYQ,lo_HDY,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s161 | 15 | balance_lo | ODP | lo | 288461/1000000 | lo_ODF,lo_HYP,lo_DFP,s102,lo_OFP,lo_HDY,hi_HFY |
| s168 | 17 | balance_lo | CFY | lo | 33197/250000 | lo_ODF,lo_CYP,lo_DFP,lo_OCY,lo_OFP,s148,s5 |
| s182 | 20 | balance_lo | CFP | lo | 87471/500000 | lo_OHC,lo_DFP,lo_HCD,lo_OFP,lo_OCD,s119,hi_OHD |
| s203 | 21 | linear | OHF | lo | 93521/250000 | s119,lo_OFP,s115 |
| s207 | 22 | linear | OCD | lo | 189813/500000 | s148,lo_OCY,lo_ODY |
| s220 | 23 | linear | HCF | lo | 384641/1000000 | s182,lo_HCP,s119 |
| s244 | 26 | linear | OHC | lo | 189813/500000 | s207 |
| s245 | 27 | linear | HCD | hi | 907/1000 | lo_HDF |
| s246 | 28 | linear | CDF | hi | 615359/1000000 | s220 |
| s290 | 29 | bary_hi | HFP | lo | 119657/1000000 | hi_OHD,lo_HDP,s161,s115,s203,lo_HDF |
| s308 | 30 | bary_lo | CDP | lo | 20797/50000 | hi_OHF,s290,lo_OFP,s115,s207,lo_HCD,lo_CDF |
| s399 | 31 | bary_hi | ODP | hi | 473081/1000000 | s245,s308,lo_HDP,lo_HCP,hi_OHD,s207 |
| s405 | 32 | bary_lo | HDP | hi | 19903/50000 | s245,s308,lo_HDP,lo_HCP,s245 |
| s410 | 33 | bary_hi | CDP | hi | 107/200 | s245,s308,lo_HDP,lo_HCP,s245 |
| s411 | 34 | bary_hi | CFP | hi | 168567/500000 | s245,s308,lo_HDP,lo_HCP,hi_HCF,lo_CDF |
| s415 | 35 | bary_hi | DFP | hi | 82079/200000 | s245,s308,lo_HDP,lo_HCP,hi_HDF,s246 |
| s445 | 36 | bary_lo | OYZ | lo | 115123/1000000 | s405,lo_DZP,lo_HZP,lo_HDZ,s102,lo_ODY,lo_OYP |
| s454 | 37 | bary_lo | CDZ | lo | 129659/500000 | s405,lo_DZP,lo_HZP,lo_HDZ,lo_HCD,s308 |
| s457 | 38 | bary_lo | CZP | hi | 52657/200000 | s405,lo_DZP,lo_HZP,lo_HDZ,lo_HCP,s410 |
| s476 | 39 | bary_hi | OZP | lo | 3013/20000 | s246,lo_DFZ,lo_CFZ,s454,lo_OCP,s161,lo_OFP |
| s480 | 40 | bary_hi | CDZ | hi | 429359/1000000 | s246,lo_DFZ,lo_CFZ,s454,s246 |
| s527 | 41 | bary_hi | CYZ | lo | 124819/1000000 | s415,lo_FZP,lo_DZP,lo_DFZ,s148,s168,lo_CYP |
| s537 | 2 | sum | OCZ | lo | 166471/500000 | s527,lo_OCY,s445 |
| s541 | 3 | sum | HCD | lo | 39397/50000 | s308,lo_HCP,lo_HDP |
| s574 | 6 | sumlo | CDZ | lo | 140633/500000 | s308,lo_HDZ,lo_DZP,s541,s405 |
| s586 | 8 | sumlo | ODZ | lo | 278543/1000000 | s574,s476,lo_DZP,s537,s457 |
| s592 | 10 | sumlo | CFP | lo | 246307/1000000 | s308,lo_OFP,lo_DFP,lo_OCP,s399 |
| s593 | 10 | sumlo | ODP | lo | 345629/1000000 | s308,lo_OFP,lo_DFP,lo_OCP,s411 |
| s602 | 12 | balance_lo | ODF | lo | 258381/500000 | lo_CFZ,s593,lo_FZP,s207,s592,s586,s457 |
| s611 | 13 | balance_lo | CDY | lo | 101181/500000 | s541,lo_OYQ,lo_HDY,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s617 | 14 | balance_lo | ODP | lo | 178939/500000 | s602,lo_HCP,lo_DFP,s244,lo_OFP,s541,hi_HCF |
| s618 | 14 | balance_lo | HCF | lo | 480367/1000000 | s602,lo_HCP,lo_DFP,s244,lo_OFP,s541,s399 |
| s627 | 16 | balance_lo | HZP | lo | 37997/250000 | lo_HDZ,s592,lo_DZP,s618,lo_HDP,lo_CFZ,s246 |
| s638 | 18 | balance_lo | OHP | lo | 12687/62500 | s244,lo_DZP,lo_HCP,s586,lo_OCP,lo_HDZ,s480 |
| s639 | 19 | balance_lo | HFP | lo | 88771/500000 | s618,lo_DZP,s592,lo_HDZ,lo_HCP,lo_DFZ,s480 |
| s645 | 20 | balance_lo | CFP | lo | 246593/1000000 | s244,lo_DFP,s541,lo_OFP,s207,s639,hi_OHD |
| s665 | 21 | linear | OHF | lo | 236767/500000 | s639,lo_OFP,s638 |
| s669 | 22 | linear | OCD | lo | 194181/500000 | s611,lo_OCY,lo_ODY |
| s692 | 24 | linear | HDP | lo | 84497/250000 | lo_DZP,lo_HDZ,s627 |
| s698 | 25 | linear | CDF | lo | 233633/500000 | s574,lo_CFZ,lo_DFZ |
| s712 | 28 | linear | HCF | hi | 266367/500000 | s698 |
| s749 | 29 | bary_hi | HFP | lo | 178927/1000000 | hi_OHD,s692,s617,s638,s665,lo_HDF |
| s759 | 30 | bary_lo | CDP | lo | 236053/500000 | hi_OHF,s749,lo_OFP,s638,s669,s541,s698 |
| s881 | 34 | bary_hi | CFP | hi | 231679/1000000 | s245,s759,s692,lo_HCP,s712,s698 |

## Conclusion

{"triangle":"CFP","lower":"s645","upper":"s881"}
