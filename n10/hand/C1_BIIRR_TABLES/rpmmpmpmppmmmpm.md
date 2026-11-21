# Leaf rpmmpmpmppmmmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":1,"OZR":-1,"HPQ":-1,"HPR":-1,"HQR":1,"CFZ":-1}

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
| 10 | extreme | ["OHP","Q","POQ",1] |
| 11 | extreme | ["OCY","F","CYF",-1] |
| 12 | extreme | ["OCZ","F","ZOF",-1] |
| 13 | extreme | ["OZP","F","POF",-1] |
| 14 | extreme | ["CYQ","H","YQH",1] |
| 15 | extreme | ["CYR","D","YRD",1] |
| 16 | extreme | ["CYR","F","YRF",1] |
| 17 | extreme | ["CYR","H","YRH",1] |
| 18 | extreme | ["DYQ","O","YQO",-1] |
| 19 | extreme | ["DYR","O","YRO",-1] |
| 20 | interior_line | ["OZ","R","ODQ","Q",-1] |
| 21 | interior_line | ["HY","Z","HCDF","Z",1] |
| 22 | interior_line | ["HY","P","HCDF","P",1] |
| 23 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 24 | interior_line | ["CY","P","HCDF","P",-1] |
| 25 | interior_line | ["CZ","R","CDQ","R",-1] |
| 26 | interior_line | ["CP","R","CDQ","R",-1] |
| 27 | interior_line | ["DZ","R","CDQ","R",1] |
| 28 | interior_line | ["DP","R","CDQ","R",1] |
| 29 | interior_line | ["FZ","Y","OHC","Y",-1] |
| 30 | interior_line | ["ZQ","Y","OHC","H",1] |
| 31 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 32 | interior_line | ["QR","Y","OHC","Y",1] |
| 33 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 34 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 35 | plu | ["OHDYZ","OYZ",-1] |
| 36 | plu | ["OHDPR","OPR",-1] |
| 37 | plu | ["HOZQR","HZR",1] |
| 38 | plu | ["COFZP","CFP",-1] |
| 39 | plu | ["DOHYZ","DYZ",1] |
| 40 | plu | ["DOHZP","DZP",-1] |
| 41 | plu | ["FOHYP","FYP",1] |
| 42 | plu | ["YODZP","YZP",1] |
| 43 | plu | ["YODPR","YPR",-1] |
| 44 | plu | ["YOZQR","YZR",1] |
| 45 | plu | ["ZOHFQ","ZFQ",-1] |
| 46 | plu | ["ZOHFR","ZFR",-1] |
| 47 | plu | ["ZOHPQ","ZPQ",-1] |
| 48 | plu | ["ZOHPR","ZPR",-1] |
| 49 | plu | ["QOHZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_ODR | ODR | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 347/500 | ["cost","PR"] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HQR | HQR | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 279/1000 | ["cost","Z"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OHR | OHR | hi | 9197/10000 | "C063" |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |
| hi_FYQ | FYQ | hi | 245797/317500 | "C044" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 2 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 3 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 4 | ["fan","OYR","OYZ","OZR","YZR"] | ["fan","OYR","Z"] |
| 5 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 6 | ["fan","HCP","CZP","HCZ","HZP"] | ["fan","HCP","Z"] |
| 7 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 8 | ["fan","HDQ","DQR","HDR","HQR"] | ["fan","HDQ","R"] |
| 9 | ["plu","OCY","OHR","OCR","OHY","OHC","OYR"] | ["plu","OHCYR"] |
| 10 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 11 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 12 | ["plu","HFQ","OHD","HDF","OHQ","HDQ","OHF"] | ["plu","HODFQ"] |
| 13 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 14 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 15 | ["plu","CDF","HCZ","CDZ","HCF","CFZ","HCD"] | ["plu","CHDFZ"] |
| 16 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 17 | ["plu","HDY","ODP","DYP","OHD","HDP","ODY"] | ["plu","DOHYP"] |
| 18 | ["plu","DPQ","OHD","HDP","ODQ","HDQ","ODP"] | ["plu","DOHPQ"] |
| 19 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 20 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 21 | ["plu","CFY","ODF","CDF","OFY","DFY","OCF"] | ["plu","FOCDY"] |
| 22 | ["plu","HYR","OCY","CYR","OHY","HCY","OYR"] | ["plu","YOHCR"] |
| 23 | ["plu","HDQ","OQR","DQR","OHQ","HQR","ODQ"] | ["plu","QOHDR"] |
| 24 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 25 | ["plu","DYQ","HZQ","DZQ","HYQ","HDQ","YZQ"] | ["plu","QHDYZ"] |
| 26 | ["balance",[[1,"HCZ","ODP"],[1,"CZP","OHD"],[-1,"HZP","OCD"],[1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 27 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[-1,"CZP","ODF"],[-1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 28 | ["balance",[[-1,"HCD","OFY"],[-1,"CDF","OHY"],[-1,"HDF","OCY"],[1,"HCF","ODY"]]] | ["six","OYHCDF"] |
| 29 | ["balance",[[-1,"HCF","OYP"],[1,"CFP","OHY"],[1,"HFP","OCY"],[1,"HCP","OFY"]]] | ["six","OYHCFP"] |
| 30 | ["balance",[[1,"HDQ","OZR"],[1,"DQR","OHZ"],[1,"HQR","ODZ"],[-1,"HDR","OZQ"]]] | ["six","OZHDQR"] |
| 31 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 32 | ["balance",[[-1,"OCF","HDY"],[1,"CFY","OHD"],[-1,"OFY","HCD"],[-1,"OCY","HDF"]]] | ["six","HDOCFY"] |
| 33 | ["balance",[[-1,"OCF","HDP"],[-1,"CFP","OHD"],[1,"OFP","HCD"],[-1,"OCP","HDF"]]] | ["six","HDOCFP"] |
| 34 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 35 | ["balance",[[-1,"ODZ","HQR"],[1,"DZR","OHQ"],[-1,"OZR","HDQ"],[-1,"ODR","HZQ"]]] | ["six","HQODZR"] |
| 36 | ["balance",[[1,"OYZ","CFQ"],[-1,"YZQ","OCF"],[-1,"OZQ","CFY"],[-1,"OYQ","CFZ"]]] | ["six","CFOYZQ"] |
| 37 | ["balance",[[1,"HDY","CFP"],[1,"DYP","HCF"],[-1,"HYP","CDF"],[1,"HDP","CFY"]]] | ["six","CFHDYP"] |
| 38 | ["balance",[[1,"OHF","CZQ"],[1,"HFQ","OCZ"],[-1,"OFQ","HCZ"],[1,"OHQ","CFZ"]]] | ["six","CZOHFQ"] |
| 39 | ["balance",[[1,"OFY","DPQ"],[-1,"FYQ","ODP"],[1,"OYQ","DFP"],[1,"OFQ","DYP"]]] | ["six","DPOFYQ"] |
| 40 | ["balance",[[-1,"OHC","DFY"],[-1,"HCD","OFY"],[-1,"OCD","HFY"],[1,"OHD","CFY"]]] | ["six","FYOHCD"] |
| 41 | ["balance",[[-1,"OHD","YZQ"],[-1,"HDQ","OYZ"],[-1,"ODQ","HYZ"],[1,"OHQ","DYZ"]]] | ["six","YZOHDQ"] |
| 42 | ["balance",[[1,"ODF","YZQ"],[1,"DFY","OZQ"],[1,"OFY","DZQ"],[-1,"ODY","FZQ"]]] | ["six","ZQODFY"] |
| 43 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 44 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 45 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 46 | ["linear",{"ODZ":-1,"OZR":-1,"ODR":1,"DZR":-1},"0"] | ["affine_quad","ODZR",1] |
| 47 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 48 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 49 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 50 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 51 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 52 | ["linear",{"CFZ":-1,"CZP":-1,"CFP":1,"FZP":-1},"0"] | ["affine_quad","CFZP",1] |
| 53 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 54 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 55 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 56 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 57 | ["bary",["ODY",1],[null,["OHD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OD"] |
| 58 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 59 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CQ"] |
| 60 | ["bary",null,[["OYP",-1],["HYP",1],["DYP",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","YP"] |
| 61 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CD"] |
| 62 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],["CFZ",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CZ"] |
| 63 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 64 | ["bary",["HDY",-1],[["OHD",-1],null,["HDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HD"] |
| 65 | ["bary",["CDP",1],[["OCD",1],null,["CDF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CD"] |
| 66 | ["bary",["OHR",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OH"] |
| 67 | ["bary",["HDR",-1],[["OHD",-1],null,["HDQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","HD"] |
| 68 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 69 | ["bary",["CDP",1],[["HCD",1],null,["CDY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CD"] |
| 70 | ["bary",["CFP",-1],[["HCF",1],["CDF",-1],["CFY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CF"] |
| 71 | ["bary",["CPQ",1],[["HCQ",1],["CDQ",1],["CYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CQ"] |
| 72 | ["bary",["OCR",1],[["OHC",1],["OCD",1],["OCQ",1]],"HDQ",["DQR","HQR","HDR"]] | ["bary","HDQ","R","OC"] |
| 73 | ["bary",["YZR",1],[["HYZ",1],["DYZ",1],["YZQ",1]],"HDQ",["DQR","HQR","HDR"]] | ["bary","HDQ","R","YZ"] |
| 74 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 75 | ["bary",["HPQ",1],[["HCQ",-1],["HDQ",1],["HFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HQ"] |
| 76 | ["bary",["OCZ",1],[null,["OCF",1],["OCP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","OC"] |
| 77 | ["bary",["HCZ",1],[null,["HCF",1],["HCP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","HC"] |
| 78 | ["bary",["CDZ",1],[null,["CDF",1],["CDP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CD"] |
| 79 | ["bary",["CZQ",1],[null,["CFQ",1],["CPQ",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CQ"] |
| 80 | ["bary",["OYZ",-1],[["OCY",-1],["OFY",-1],["OYQ",-1]],"CFQ",["FZQ","CZQ","CFZ"]] | ["bary","CFQ","Z","OY"] |
| 81 | ["bary",["HDZ",-1],[["HCD",-1],["HDY",-1],["HDQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HD"] |
| 82 | ["bary",["HZP",-1],[["HCP",-1],["HYP",-1],["HPQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 407/500 | hi_OHD,lo_ODY,lo_OHY |
| s2 | 0 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s13 | 2 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s50 | 8 | sub | HDR | hi | 588959/1000000 | hi_HDQ,lo_DQR,lo_HQR |
| s86 | 10 | sumlo | ODY | lo | 92689/500000 | lo_ODF,lo_OYQ,lo_ODQ,lo_OFY,hi_OFQ |
| s89 | 11 | sumlo | HCF | lo | 219573/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s93 | 12 | sumlo | HFQ | lo | 32271/125000 | lo_HDF,lo_OHQ,lo_HDQ,lo_OHF,hi_OHD |
| s98 | 13 | sumlo | HYQ | lo | 5847/40000 | lo_HCQ,lo_HDY,lo_HCY,lo_HDQ,hi_HCD |
| s102 | 15 | sumlo | HCZ | lo | 19099/200000 | lo_CDZ,s89,lo_CFZ,lo_HCD,hi_CDF |
| s109 | 16 | sumlo | ODF | lo | 32569/62500 | lo_CDF,lo_OHD,lo_HDF,lo_OCD,hi_HCD |
| s111 | 17 | sumlo | ODP | lo | 100469/1000000 | lo_DYP,lo_OHD,lo_HDP,s86,s1 |
| s116 | 18 | sumlo | DPQ | lo | 134267/1000000 | lo_HDP,lo_ODQ,lo_HDQ,s111,hi_OHD |
| s123 | 19 | sumlo | ODP | lo | 64823/500000 | s116,s86,lo_DYP,lo_ODQ,hi_DYQ |
| s134 | 20 | sumlo | HCF | lo | 117361/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s137 | 21 | sumlo | CFY | lo | 76103/500000 | lo_CDF,lo_OFY,lo_DFY,lo_OCF,hi_ODF |
| s142 | 22 | sumlo | OCY | lo | 23687/250000 | lo_CYR,lo_OHY,lo_HCY,lo_OYR,s13 |
| s151 | 23 | sumlo | OQR | lo | 20821/125000 | lo_DQR,lo_OHQ,lo_HQR,lo_ODQ,hi_HDQ |
| s154 | 24 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s163 | 25 | sumlo | HZQ | lo | 76343/500000 | lo_DZQ,s98,lo_HDQ,lo_YZQ,hi_DYQ |
| s169 | 26 | balance_lo | HZP | lo | 17861/100000 | s102,s123,lo_CZP,lo_OHD,lo_HCP,lo_ODZ,hi_OCD |
| s171 | 27 | balance_lo | FZP | lo | 15013/100000 | lo_CFZ,s123,lo_CZP,s109,lo_CFP,lo_ODZ,hi_OCD |
| s175 | 28 | balance_lo | ODY | lo | 108579/500000 | lo_HCD,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s142,hi_HCF |
| s180 | 30 | balance_lo | OZQ | lo | 168327/1000000 | lo_HDQ,lo_OZR,lo_DQR,lo_OHZ,lo_HQR,lo_ODZ,s50 |
| s181 | 31 | balance_lo | OFQ | lo | 670581/1000000 | lo_CDF,lo_OHQ,lo_HDF,lo_OCQ,s134,lo_ODQ,hi_HCD |
| s190 | 33 | balance_lo | OFP | lo | 12603/50000 | lo_OCF,lo_HDP,lo_CFP,lo_OHD,lo_OCP,lo_HDF,hi_HCD |
| s197 | 34 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s201 | 35 | balance_lo | DZR | lo | 11579/100000 | lo_ODZ,lo_HQR,lo_OZR,lo_HDQ,lo_ODR,s163,hi_OHQ |
| s206 | 36 | balance_lo | OYZ | lo | 49329/500000 | lo_YZQ,lo_OCF,s180,s137,lo_OYQ,lo_CFZ,s154 |
| s207 | 37 | balance_lo | HYP | lo | 1999/15625 | lo_HDY,lo_CFP,lo_DYP,s134,lo_HDP,s137,hi_CDF |
| s212 | 38 | balance_lo | HCZ | lo | 116079/1000000 | lo_OHF,lo_CZQ,s93,lo_OCZ,lo_OHQ,lo_CFZ,hi_OFQ |
| s215 | 39 | balance_lo | ODP | lo | 65101/500000 | lo_OFY,s116,lo_OYQ,lo_DFP,s181,lo_DYP,hi_FYQ |
| s219 | 40 | balance_lo | CFY | lo | 16833/100000 | lo_OHC,lo_DFY,lo_HCD,lo_OFY,lo_OCD,lo_HFY,hi_OHD |
| s224 | 41 | balance_lo | DYZ | lo | 12347/62500 | lo_OHD,lo_YZQ,lo_HDQ,s206,lo_ODQ,lo_HYZ,hi_OHQ |
| s233 | 42 | balance_lo | FZQ | lo | 48317/250000 | s109,lo_YZQ,lo_DFY,s180,lo_OFY,lo_DZQ,s2 |
| s234 | 43 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s253 | 45 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s258 | 46 | linear | ODR | lo | 30179/100000 | s201,lo_ODZ,lo_OZR |
| s265 | 47 | linear | OYQ | lo | 71997/200000 | s206,s180,lo_YZQ |
| s273 | 48 | linear | HCQ | hi | 700053/1000000 | hi_CDQ,hi_HCD,lo_HDQ |
| s276 | 49 | linear | HCP | lo | 387689/1000000 | lo_CZP,s212,s169 |
| s279 | 50 | linear | HCQ | lo | 364393/1000000 | lo_CZQ,s212,s234 |
| s282 | 51 | linear | HDY | lo | 19621/62500 | lo_DYP,lo_HDP,s207 |
| s297 | 52 | linear | CFP | lo | 33613/100000 | lo_CFZ,lo_CZP,s171 |
| s299 | 53 | linear | CFQ | lo | 94817/250000 | lo_CFZ,lo_CZQ,s233 |
| s311 | 54 | linear | OHC | lo | 367/1000 | s253 |
| s312 | 55 | linear | HCD | hi | 907/1000 | lo_HDF |
| s313 | 56 | linear | HCF | hi | 153/500 | lo_CDF |
| s314 | 56 | linear | CDF | hi | 382639/500000 | s134 |
| s335 | 57 | bary_hi | ODY | hi | 74133/125000 | hi_OHD,s282,s175,lo_OHY,hi_OHD |
| s342 | 58 | bary_hi | HFY | lo | 96237/1000000 | hi_OHD,s282,s175,lo_OHY,lo_OHF,lo_HDF |
| s348 | 59 | bary_hi | CYQ | hi | 512629/1000000 | hi_OHD,s282,s175,lo_OHY,hi_OCQ,s273,hi_CDQ |
| s382 | 61 | bary_lo | CDY | lo | 231391/500000 | hi_OHF,s342,lo_OFY,lo_OHY,s253,lo_HCD,lo_CDF |
| s383 | 62 | bary_lo | CYZ | lo | 4819/50000 | hi_OHF,s342,lo_OFY,lo_OHY,lo_OCZ,s212,lo_CFZ |
| s395 | 63 | bary_lo | OCY | lo | 140763/1000000 | hi_OHQ,s197,s265,lo_OHY,s311,lo_OCQ |
| s397 | 64 | bary_lo | HDY | hi | 619087/1000000 | hi_OHQ,s197,s265,lo_OHY,hi_OHD,hi_HDQ |
| s437 | 65 | bary_lo | CDP | lo | 3327/25000 | hi_ODF,lo_DFP,s190,s215,s253,lo_CDF |
| s454 | 66 | bary_lo | OHR | hi | 877719/1000000 | hi_ODQ,lo_DQR,s151,s258,hi_OHD,hi_OHQ |
| s461 | 67 | bary_hi | HDR | lo | 45031/125000 | hi_ODQ,lo_DQR,s151,s258,lo_OHD,lo_HDQ |
| s521 | 68 | bary_lo | HYP | lo | 35931/250000 | s312,s437,lo_HDP,s276,lo_HCY,s282 |
| s568 | 69 | bary_lo | CDP | lo | 173773/1000000 | s397,lo_DYP,s521,lo_HDP,lo_HCD,s382 |
| s569 | 70 | bary_lo | CFP | hi | 47481/100000 | s397,lo_DYP,s521,lo_HDP,s134,s314,s219 |
| s572 | 71 | bary_lo | CPQ | lo | 291827/1000000 | s397,lo_DYP,s521,lo_HDP,s279,lo_CDQ,lo_CYQ |
| s587 | 72 | bary_lo | OCR | lo | 158763/1000000 | hi_HDQ,lo_DQR,lo_HQR,s461,s311,s253,lo_OCQ |
| s599 | 73 | bary_lo | YZR | lo | 52773/500000 | hi_HDQ,lo_DQR,lo_HQR,s461,lo_HYZ,s224,lo_YZQ |
| s627 | 74 | bary_lo | HYP | lo | 7631/40000 | s314,lo_DFP,s297,s568,lo_HCY,s282,s342 |
| s628 | 75 | bary_lo | HPQ | lo | 32459/250000 | s314,lo_DFP,s297,s568,s273,lo_HDQ,s93 |
| s648 | 76 | bary_lo | OCZ | lo | 54647/500000 | s569,s171,lo_CZP,lo_CFZ,lo_OCF,lo_OCP |
| s652 | 77 | bary_lo | HCZ | lo | 12191/100000 | s569,s171,lo_CZP,lo_CFZ,s134,s276 |
| s658 | 78 | bary_lo | CDZ | lo | 10623/62500 | s569,s171,lo_CZP,lo_CFZ,lo_CDF,s568 |
| s660 | 79 | bary_lo | CZQ | lo | 26289/200000 | s569,s171,lo_CZP,lo_CFZ,s299,s572 |
| s670 | 80 | bary_hi | OYZ | lo | 136351/1000000 | s154,s233,s660,lo_CFZ,s395,lo_OFY,s265 |
| s672 | 81 | bary_hi | HDZ | lo | 227171/500000 | s348,lo_YZQ,s660,s383,lo_HCD,s282,lo_HDQ |
| s673 | 82 | bary_hi | HZP | lo | 2403/12500 | s348,lo_YZQ,s660,s383,s276,s627,s628 |
| s700 | 1 | sum | OHF | lo | 282237/1000000 | s342,lo_OFY,lo_OHY |
| s704 | 3 | sum | OCD | lo | 186131/500000 | s658,s648,lo_ODZ |
| s708 | 4 | sum | OYR | lo | 334897/1000000 | s670,lo_OZR,s599 |
| s709 | 5 | sum | HCD | lo | 37311/50000 | s658,s652,s672 |
| s712 | 6 | sum | HCP | lo | 8143/20000 | lo_CZP,s652,s673 |
| s715 | 7 | sum | HDY | lo | 15071/40000 | lo_DYP,lo_HDP,s627 |
| s732 | 9 | sumlo | OCY | lo | 39213/250000 | s587,lo_OHY,s311,s708,s454 |
| s734 | 11 | sumlo | HCF | lo | 244741/1000000 | s709,s700,lo_HDF,s311,hi_OHD |
| s751 | 14 | sumlo | OCF | lo | 381263/1000000 | lo_CDF,s311,s734,s704,s312 |
| s840 | 28 | balance_lo | HCF | lo | 250441/1000000 | s709,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s732,s335 |
| s841 | 28 | balance_lo | ODY | lo | 60673/125000 | s709,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s732,s313 |
| s844 | 29 | balance_lo | OYP | lo | 273569/1000000 | s297,lo_OHY,lo_HFP,s732,s712,lo_OFY,s313 |
| s854 | 32 | balance_lo | CFY | lo | 56909/250000 | s751,s715,lo_OFY,s709,s732,lo_HDF,hi_OHD |
| s878 | 37 | balance_lo | HYP | lo | 223587/1000000 | s715,s297,lo_DYP,s840,lo_HDP,s854,s314 |
| s949 | 44 | linear | HDY | hi | 26351/62500 | s841,hi_OHD,lo_OHY |
| s1011 | 51 | linear | HDY | lo | 409587/1000000 | lo_DYP,lo_HDP,s878 |
| s1012 | 51 | linear | HYP | hi | 7363/31250 | lo_DYP,lo_HDP,s949 |

## Conclusion

{"kind":"bary_zero","relation":60,"side":"hi","value":"-700168919/200000000000","sources":["hi_OHD","s1011","s841","lo_OHY","s844","s1012","lo_DYP"]}
