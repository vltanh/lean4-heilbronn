# Leaf rppmmpmpppmmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"QYZ":1,"OFY":1,"HPQ":-1,"HPR":-1,"HQR":1}

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
| 9 | extreme | ["OHP","Q","POQ",1] |
| 10 | extreme | ["OCY","F","CYF",-1] |
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
| 27 | interior_line | ["ZQ","Y","OHC","H",1] |
| 28 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 29 | interior_line | ["QR","Y","OHC","Y",1] |
| 30 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 31 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 32 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 33 | capacity | ["DYQ","R","P","DYP",-1,"87606223/127000000","C031"] |
| 34 | plu | ["OHDZP","ODP",1] |
| 35 | plu | ["OHDPR","OPR",-1] |
| 36 | plu | ["OHFYZ","OYZ",-1] |
| 37 | plu | ["HOZQR","HZR",1] |
| 38 | plu | ["FOHYZ","FYZ",1] |
| 39 | plu | ["FOHYP","FYP",1] |
| 40 | plu | ["YODZQ","YDZ",-1] |
| 41 | plu | ["YODPR","YPR",-1] |
| 42 | plu | ["YOZPQ","YZP",1] |
| 43 | plu | ["YOZQR","YZR",1] |
| 44 | plu | ["ZOHDP","ZDP",1] |
| 45 | plu | ["ZOHFQ","ZFQ",-1] |
| 46 | plu | ["ZOHFR","ZFR",-1] |
| 47 | plu | ["ZOHPQ","ZPQ",-1] |
| 48 | plu | ["ZOHPR","ZPR",-1] |
| 49 | plu | ["QOHZR","QZR",-1] |
| 50 | mesh | ["OHDPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 347/500 | ["cost","PR"] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HPR | HPR | lo | 93/1000 | ["cost",""] |
| lo_HQR | HQR | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 4 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 5 | ["fan","ODY","DYZ","ODZ","OYZ"] | ["fan","ODY","Z"] |
| 6 | ["fan","ODP","DZP","ODZ","OZP"] | ["fan","ODP","Z"] |
| 7 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 8 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 9 | ["fan","HCP","CZP","HCZ","HZP"] | ["fan","HCP","Z"] |
| 10 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 11 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 12 | ["fan","HDQ","DQR","HDR","HQR"] | ["fan","HDQ","R"] |
| 13 | ["fan","CYP","CYZ","CZP","YZP"] | ["fan","CYP","Z"] |
| 14 | ["plu","ODP","OFZ","ODF","OZP","ODZ","OFP"] | ["plu","ODFZP"] |
| 15 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 16 | ["plu","HFY","OHD","HDF","OHY","HDY","OHF"] | ["plu","HODFY"] |
| 17 | ["plu","HDZ","OHQ","HDQ","OHZ","HZQ","OHD"] | ["plu","HODZQ"] |
| 18 | ["plu","HCD","HYP","HCP","HDY","HCY","HDP"] | ["plu","HCDYP"] |
| 19 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 20 | ["plu","HDR","HPQ","HDP","HQR","HDQ","HPR"] | ["plu","HDPQR"] |
| 21 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 22 | ["plu","HCD","ODQ","CDQ","OHD","HDQ","OCD"] | ["plu","DOHCQ"] |
| 23 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 24 | ["plu","HYQ","YZP","HYP","YZQ","HYZ","YPQ"] | ["plu","YHZPQ"] |
| 25 | ["plu","CYQ","YZP","CYP","YZQ","CYZ","YPQ"] | ["plu","YCZPQ"] |
| 26 | ["plu","HDZ","OZQ","DZQ","OHZ","HZQ","ODZ"] | ["plu","ZOHDQ"] |
| 27 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 28 | ["plu","OCZ","YZP","CYZ","OZP","CZP","OYZ"] | ["plu","ZOCYP"] |
| 29 | ["plu","CDZ","HZP","CZP","HDZ","DZP","HCZ"] | ["plu","ZHCDP"] |
| 30 | ["plu","HZQ","YZP","HYZ","ZPQ","HZP","YZQ"] | ["plu","ZHYPQ"] |
| 31 | ["plu","CDZ","YZP","CYZ","DZP","CZP","DYZ"] | ["plu","ZCDYP"] |
| 32 | ["plu","CZQ","YZP","CYZ","ZPQ","CZP","YZQ"] | ["plu","ZCYPQ"] |
| 33 | ["plu","DYQ","HCQ","CDQ","HYQ","CYQ","HDQ"] | ["plu","QHCDY"] |
| 34 | ["balance",[[-1,"HYZ","ODQ"],[-1,"YZQ","OHD"],[1,"HZQ","ODY"],[-1,"HYQ","ODZ"]]] | ["six","ODHYZQ"] |
| 35 | ["balance",[[1,"HDZ","OFQ"],[-1,"DZQ","OHF"],[-1,"HZQ","ODF"],[-1,"HDQ","OFZ"]]] | ["six","OFHDZQ"] |
| 36 | ["balance",[[-1,"HCD","OZQ"],[1,"CDQ","OHZ"],[1,"HDQ","OCZ"],[1,"HCQ","ODZ"]]] | ["six","OZHCDQ"] |
| 37 | ["balance",[[-1,"OYZ","HCQ"],[1,"YZQ","OHC"],[1,"OZQ","HCY"],[1,"OYQ","HCZ"]]] | ["six","HCOYZQ"] |
| 38 | ["balance",[[1,"YZP","HCQ"],[-1,"ZPQ","HCY"],[-1,"YPQ","HCZ"],[-1,"YZQ","HCP"]]] | ["six","HCYZPQ"] |
| 39 | ["balance",[[1,"ODZ","HPQ"],[-1,"DZP","OHQ"],[1,"OZP","HDQ"],[1,"ODP","HZQ"]]] | ["six","HQODZP"] |
| 40 | ["balance",[[1,"OHD","CZP"],[1,"HDP","OCZ"],[1,"ODP","HCZ"],[-1,"OHP","CDZ"]]] | ["six","CZOHDP"] |
| 41 | ["balance",[[1,"HDY","CZP"],[1,"DYP","HCZ"],[-1,"HYP","CDZ"],[1,"HDP","CYZ"]]] | ["six","CZHDYP"] |
| 42 | ["balance",[[-1,"OHD","CZQ"],[1,"HDZ","OCQ"],[1,"ODZ","HCQ"],[1,"OHZ","CDQ"]]] | ["six","CQOHDZ"] |
| 43 | ["balance",[[-1,"OHC","DQR"],[1,"HCQ","ODR"],[-1,"OCQ","HDR"],[-1,"OHQ","CDR"]]] | ["six","DROHCQ"] |
| 44 | ["balance",[[1,"HCD","YZQ"],[1,"CDQ","HYZ"],[1,"HDQ","CYZ"],[-1,"HCQ","DYZ"]]] | ["six","YZHCDQ"] |
| 45 | ["balance",[[1,"HCP","YZQ"],[1,"CPQ","HYZ"],[1,"HPQ","CYZ"],[-1,"HCQ","YZP"]]] | ["six","YZHCPQ"] |
| 46 | ["balance",[[-1,"HCD","YPQ"],[1,"CDQ","HYP"],[1,"HDQ","CYP"],[1,"HCQ","DYP"]]] | ["six","YPHCDQ"] |
| 47 | ["balance",[[1,"HCZ","YPQ"],[1,"CZP","HYQ"],[-1,"HZP","CYQ"],[1,"HCP","YZQ"]]] | ["six","YQHCZP"] |
| 48 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 49 | ["balance",[[-1,"OHC","YZQ"],[-1,"HCY","OZQ"],[1,"OCY","HZQ"],[-1,"OHY","CZQ"]]] | ["six","ZQOHCY"] |
| 50 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 51 | ["linear",{"OHD":1,"ODQ":1,"OHQ":-1,"HDQ":-1},"0"] | ["affine_quad","OHDQ",-1] |
| 52 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 53 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 54 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 55 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 56 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 57 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 58 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 59 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 60 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 61 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 62 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 63 | ["linear",{"CYZ":-1,"CZQ":-1,"CYQ":1,"YZQ":-1},"0"] | ["affine_quad","CYZQ",1] |
| 64 | ["linear",{"DYZ":-1,"DZP":1,"DYP":-1,"YZP":1},"0"] | ["affine_quad","DYZP",-1] |
| 65 | ["linear",{"YZP":1,"YPQ":-1,"YZQ":-1,"ZPQ":1},"0"] | ["affine_quad","YZPQ",1] |
| 66 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 67 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 68 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CQ"] |
| 69 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 70 | ["bary",["HDY",-1],[["OHD",-1],null,null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HD"] |
| 71 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 72 | ["bary",["CZQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CQ"] |
| 73 | ["bary",["HCP",1],[["OHC",-1],null,["HCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","HC"] |
| 74 | ["bary",["CDP",1],[["OCD",1],["HCD",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CD"] |
| 75 | ["bary",["DFP",1],[["ODF",1],["HDF",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DF"] |
| 76 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DQ"] |
| 77 | ["bary",["DPR",-1],[["ODR",-1],["HDR",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DR"] |
| 78 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CQ"] |
| 79 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 80 | ["bary",["HZQ",-1],[null,["HCQ",-1],["HDQ",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HQ"] |
| 81 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 82 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 83 | ["bary",["DZQ",-1],[["HDQ",-1],["CDQ",-1],["DPQ",-1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","DQ"] |
| 84 | ["bary",["HZQ",-1],[null,["HCQ",-1],null],"HCQ",["CZQ","HZQ","HCZ"]] | ["bary","HCQ","Z","HQ"] |
| 85 | ["bary",["CYZ",-1],[["HCY",-1],null,["CYQ",-1]],"HCQ",["CZQ","HZQ","HCZ"]] | ["bary","HCQ","Z","CY"] |
| 86 | ["bary",["CPQ",1],[["HCQ",1],["CDQ",1],["CYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CQ"] |
| 87 | ["bary",["YZR",1],[["HYZ",1],["DYZ",1],["YZQ",1]],"HDQ",["DQR","HQR","HDR"]] | ["bary","HDQ","R","YZ"] |
| 88 | ["bary",["YZP",1],[["HYZ",1],["DYZ",1],["YZR",1]],"HDR",["DPR","HPR","HDP"]] | ["bary","HDR","P","YZ"] |
| 89 | ["bary",["OYZ",-1],[["OCY",-1],null,["OYQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","OY"] |
| 90 | ["bary",["HDZ",-1],[["HCD",-1],["HDY",-1],["HDQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HD"] |
| 91 | ["bary",["HZP",-1],[["HCP",-1],["HYP",-1],["HPQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HP"] |
| 92 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 93 | ["bary",["YZP",-1],[["CYP",-1],null,["YPQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","YP"] |
| 94 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 95 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 96 | ["linear",{"OHD":1,"OHY":-1},"365211/500000"] | ["mesh_ear","OHDPYZ",1,"OHY"] |
| 97 | ["linear",{"YZP":-1},"-93/625"] | ["mesh_inner","OHDPYZ",1] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s2 | 1 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s4 | 2 | sub | HDZ | hi | 157/250 | hi_OHD,lo_ODZ,lo_OHZ |
| s8 | 3 | sub | ODP | hi | 157/250 | hi_OHD,lo_HDP,lo_OHP |
| s9 | 3 | sub | OHP | hi | 157/250 | hi_OHD,lo_HDP,lo_ODP |
| s28 | 5 | sub | DYZ | hi | 221/500 | s2,lo_ODZ,lo_OYZ |
| s46 | 12 | sub | HDR | hi | 588959/1000000 | hi_HDQ,lo_DQR,lo_HQR |
| s69 | 14 | sumlo | OFZ | lo | 58273/500000 | lo_ODF,lo_OZP,lo_ODZ,lo_OFP,s8 |
| s70 | 15 | sumlo | HCF | lo | 219573/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s79 | 17 | diffhi | HZQ | hi | 263897/500000 | s4,hi_OHQ,lo_HDQ,lo_OHZ,lo_OHD |
| s85 | 19 | sumlo | HYQ | lo | 5847/40000 | lo_HCQ,lo_HDY,lo_HCY,lo_HDQ,hi_HCD |
| s87 | 20 | sumlo | HPQ | lo | 124271/1000000 | lo_HDP,lo_HQR,lo_HDQ,lo_HPR,s46 |
| s97 | 22 | sumlo | ODQ | lo | 373689/1000000 | lo_CDQ,lo_OHD,lo_HDQ,lo_OCD,hi_HCD |
| s106 | 23 | sumlo | HDR | lo | 153671/500000 | lo_CDR,lo_HDQ,lo_DQR,lo_HCD,hi_CDQ |
| s124 | 33 | sumlo | HCQ | lo | 67963/200000 | lo_CDQ,s85,lo_CYQ,lo_HDQ,hi_DYQ |
| s141 | 34 | balance_lo | HZQ | lo | 198863/1000000 | lo_HYZ,s97,lo_YZQ,lo_OHD,s85,lo_ODZ,s2 |
| s148 | 35 | balance_lo | HDZ | lo | 9401/31250 | lo_DZQ,lo_OHF,s141,lo_ODF,lo_HDQ,s69,hi_OFQ |
| s151 | 36 | balance_lo | OZQ | lo | 8931/50000 | lo_CDQ,lo_OHZ,lo_HDQ,lo_OCZ,s124,lo_ODZ,hi_HCD |
| s167 | 39 | balance_lo | DZP | lo | 131581/1000000 | lo_ODZ,s87,lo_OZP,lo_HDQ,lo_ODP,s141,hi_OHQ |
| s172 | 40 | balance_lo | CDZ | lo | 88483/500000 | lo_OHD,lo_CZP,lo_HDP,lo_OCZ,lo_ODP,lo_HCZ,s9 |
| s174 | 42 | balance_lo | CZQ | lo | 137421/1000000 | s148,lo_OCQ,lo_ODZ,s124,lo_OHZ,lo_CDQ,hi_OHD |
| s182 | 43 | balance_lo | ODR | lo | 137481/1000000 | lo_OHC,lo_DQR,lo_OCQ,s106,lo_OHQ,lo_CDR,hi_HCQ |
| s188 | 44 | balance_lo | HCQ | lo | 87687/250000 | lo_HCD,lo_YZQ,lo_CDQ,lo_HYZ,lo_HDQ,lo_CYZ,s28 |
| s189 | 44 | balance_lo | DYZ | lo | 179/1000 | lo_HCD,lo_YZQ,lo_CDQ,lo_HYZ,lo_HDQ,lo_CYZ,hi_HCQ |
| s192 | 46 | balance_lo | YPQ | lo | 25891/100000 | lo_CDQ,lo_HYP,lo_HDQ,lo_CYP,s188,lo_DYP,hi_HCD |
| s197 | 48 | balance_lo | HZP | lo | 130309/1000000 | lo_OHD,lo_FZP,lo_HDF,lo_OZP,lo_OHF,s167,hi_ODF |
| s200 | 49 | balance_lo | OCY | lo | 104849/1000000 | lo_OHC,lo_YZQ,lo_HCY,s151,lo_OHY,s174,s79 |
| s204 | 50 | linear | OHC | lo | 290849/1000000 | lo_HCY,s200,lo_OHY |
| s209 | 51 | linear | ODQ | lo | 97/250 | lo_HDQ,hi_OHD,lo_OHQ |
| s219 | 55 | linear | ODY | lo | 73/200 | s189,lo_ODZ,lo_OYZ |
| s222 | 56 | linear | ODP | lo | 317581/1000000 | s167,lo_ODZ,lo_OZP |
| s226 | 57 | linear | OYQ | lo | 18231/50000 | lo_OYZ,s151,lo_YZQ |
| s230 | 58 | linear | HCQ | hi | 700053/1000000 | hi_CDQ,hi_HCD,lo_HDQ |
| s232 | 59 | linear | HCP | lo | 316309/1000000 | lo_CZP,lo_HCZ,s197 |
| s235 | 60 | linear | HCQ | lo | 107321/250000 | s174,lo_HCZ,s141 |
| s238 | 62 | linear | HDZ | lo | 35489/100000 | s167,lo_HDP,s197 |
| s248 | 63 | linear | CYQ | lo | 323421/1000000 | lo_CYZ,s174,lo_YZQ |
| s253 | 66 | linear | HCD | hi | 907/1000 | lo_HDF |
| s254 | 67 | linear | CDF | hi | 780427/1000000 | s70 |
| s261 | 68 | bary_hi | CYQ | hi | 1632/3125 | hi_OHC,lo_HCY,s200,lo_OHY,hi_OCQ,s230 |
| s270 | 69 | bary_lo | OCY | lo | 124167/1000000 | hi_OHD,lo_HDY,s219,lo_OHY,s204,lo_OCD |
| s275 | 70 | bary_lo | HDY | hi | 271/500 | hi_OHD,lo_HDY,s219,lo_OHY,hi_OHD |
| s304 | 72 | bary_lo | CZQ | lo | 22021/125000 | hi_OHD,s238,lo_ODZ,lo_OHZ,lo_OCQ,s235,lo_CDQ |
| s325 | 73 | bary_hi | HCP | hi | 101511/200000 | hi_OHD,lo_HDP,s222,lo_OHP,s204,s253 |
| s331 | 74 | bary_lo | CDP | lo | 29801/125000 | hi_OHD,lo_HDP,s222,lo_OHP,lo_OCD,lo_HCD |
| s338 | 75 | bary_lo | DFP | lo | 94077/1000000 | hi_OHD,lo_HDP,s222,lo_OHP,lo_ODF,lo_HDF |
| s341 | 76 | bary_hi | DPQ | lo | 51297/200000 | hi_OHD,lo_HDP,s222,lo_OHP,s209,lo_HDQ |
| s342 | 77 | bary_hi | DPR | lo | 110391/1000000 | hi_OHD,lo_HDP,s222,lo_OHP,s182,s106 |
| s405 | 79 | bary_hi | HDZ | lo | 40761/100000 | hi_OYQ,lo_YZQ,s151,lo_OYZ,lo_OHD,lo_HDY,lo_HDQ |
| s412 | 80 | bary_lo | HZQ | hi | 16821/40000 | s253,s172,s405,lo_HCZ,s230,lo_HDQ |
| s418 | 81 | bary_hi | DFZ | hi | 3799/6250 | s253,s172,s405,lo_HCZ,hi_HDF,s254 |
| s429 | 82 | bary_lo | HYP | lo | 53417/500000 | s253,s331,lo_HDP,s232,lo_HCY,lo_HDY |
| s449 | 83 | bary_hi | DZQ | lo | 342431/1000000 | s325,lo_CZP,s197,lo_HCZ,lo_HDQ,lo_CDQ,s341 |
| s459 | 86 | bary_lo | CPQ | lo | 39051/125000 | s275,lo_DYP,s429,lo_HDP,s235,lo_CDQ,s248 |
| s482 | 87 | bary_lo | YZR | lo | 2583/25000 | hi_HDQ,lo_DQR,lo_HQR,s106,lo_HYZ,s189,lo_YZQ |
| s485 | 88 | bary_lo | YZP | lo | 108209/1000000 | s46,s342,lo_HPR,lo_HDP,lo_HYZ,s189,s482 |
| s513 | 90 | bary_hi | HDZ | lo | 85361/200000 | s261,lo_YZQ,s304,lo_CYZ,lo_HCD,lo_HDY,lo_HDQ |
| s514 | 91 | bary_hi | HZP | lo | 73621/500000 | s261,lo_YZQ,s304,lo_CYZ,s232,s429,s87 |
| s517 | 92 | bary_lo | DZP | lo | 148007/1000000 | s261,lo_YZQ,s304,lo_CYZ,s331,lo_DYP,s341 |
| s524 | 94 | bary_hi | OHP | lo | 45279/125000 | s418,lo_FZP,s517,s338,lo_OHD,lo_OHF,lo_OHZ |
| s526 | 95 | bary_lo | HYP | lo | 60729/500000 | s418,lo_FZP,s517,s338,lo_HDY,lo_HFY,lo_HYZ |
| s538 | 96 | linear | OHD | lo | 411711/500000 | lo_OHY |
| s542 | 97 | linear | YZP | hi | 93/625 |  |
| s543 | 0 | sum | OHC | lo | 310167/1000000 | lo_HCY,s270,lo_OHY |
| s547 | 6 | sum | ODP | lo | 334007/1000000 | s517,lo_ODZ,lo_OZP |
| s551 | 8 | sum | HCD | lo | 696771/1000000 | s172,lo_HCZ,s513 |
| s553 | 9 | sum | HCP | lo | 166621/500000 | lo_CZP,lo_HCZ,s514 |
| s555 | 10 | sum | HCQ | lo | 468031/1000000 | s304,lo_HCZ,s141 |
| s557 | 11 | sum | HDY | lo | 153729/500000 | lo_DYP,lo_HDP,s526 |
| s558 | 13 | sum | CYP | lo | 294209/1000000 | lo_CYZ,lo_CZP,s485 |
| s569 | 15 | sumlo | HCF | lo | 55811/250000 | s551,lo_OHF,lo_HDF,s543,hi_OHD |
| s572 | 16 | sumlo | HFY | lo | 94429/1000000 | lo_HDF,lo_OHY,s557,lo_OHF,hi_OHD |
| s575 | 18 | sumlo | HYP | lo | 122499/1000000 | s553,s557,lo_HCY,lo_HDP,s253 |
| s577 | 21 | sumlo | OCD | lo | 108089/500000 | lo_CDQ,s543,s551,lo_OCQ,s230 |
| s582 | 22 | sumlo | ODQ | lo | 418701/1000000 | lo_CDQ,s538,lo_HDQ,s577,s253 |
| s596 | 24 | sumlo | HYQ | lo | 11919/50000 | s575,lo_YZQ,lo_HYZ,s192,s542 |
| s603 | 26 | sumlo | OZQ | lo | 9079/50000 | s449,lo_OHZ,s141,lo_ODZ,s4 |
| s604 | 27 | sumlo | OYZ | lo | 50929/500000 | lo_HYZ,s603,lo_OHZ,lo_YZQ,s412 |
| s605 | 28 | sumlo | OCZ | lo | 60893/500000 | lo_CYZ,lo_OZP,lo_CZP,s604,s542 |
| s607 | 31 | sumlo | CDZ | lo | 204379/1000000 | lo_CYZ,s517,lo_CZP,s189,s542 |
| s619 | 34 | balance_lo | HZQ | lo | 109623/500000 | lo_HYZ,s582,lo_YZQ,s538,s596,lo_ODZ,s2 |
| s622 | 36 | balance_lo | OZQ | lo | 113499/500000 | lo_CDQ,lo_OHZ,lo_HDQ,s605,s555,lo_ODZ,s253 |
| s625 | 37 | balance_lo | OYZ | lo | 119799/1000000 | lo_YZQ,s543,s622,lo_HCY,s226,lo_HCZ,s230 |
| s632 | 39 | balance_lo | DZP | lo | 9333/62500 | lo_ODZ,s87,lo_OZP,lo_HDQ,s547,s619,hi_OHQ |
| s648 | 44 | balance_lo | DYZ | lo | 3466/15625 | s551,lo_YZQ,lo_CDQ,lo_HYZ,lo_HDQ,lo_CYZ,s230 |
| s650 | 45 | balance_lo | HCQ | lo | 1203/2500 | s553,lo_YZQ,s459,lo_HYZ,s87,lo_CYZ,s542 |
| s652 | 46 | balance_lo | YPQ | lo | 156069/500000 | lo_CDQ,s575,lo_HDQ,s558,s650,lo_DYP,s253 |
| s653 | 47 | balance_lo | HZP | lo | 157379/1000000 | lo_HCZ,s652,lo_CZP,s596,s553,lo_YZQ,s261 |
| s657 | 49 | balance_lo | OCY | lo | 31551/200000 | s543,lo_YZQ,lo_HCY,s622,lo_OHY,s304,s412 |
| s662 | 50 | linear | OHC | lo | 68751/200000 | lo_HCY,s657,lo_OHY |
| s665 | 52 | linear | OHF | lo | 280429/1000000 | s572,lo_OFY,lo_OHY |
| s667 | 53 | linear | OHZ | lo | 305799/1000000 | lo_HYZ,lo_OHY,s625 |
| s668 | 54 | linear | OYQ | hi | 33431/50000 | s596,hi_OHQ,lo_OHY |
| s672 | 55 | linear | ODY | lo | 434623/1000000 | s648,lo_ODZ,s625 |
| s675 | 56 | linear | ODP | lo | 10479/31250 | s632,lo_ODZ,lo_OZP |
| s678 | 57 | linear | OYQ | lo | 439797/1000000 | s625,s622,lo_YZQ |
| s684 | 58 | linear | HCD | lo | 472/625 | hi_CDQ,s650,lo_HDQ |
| s685 | 58 | linear | HCQ | hi | 633/1000 | hi_CDQ,s253,lo_HDQ |
| s686 | 59 | linear | HCP | lo | 343379/1000000 | lo_CZP,lo_HCZ,s653 |
| s688 | 60 | linear | HCQ | lo | 244207/500000 | s304,lo_HCZ,s619 |
| s691 | 61 | linear | HDY | lo | 308499/1000000 | lo_DYP,lo_HDP,s575 |
| s698 | 64 | linear | DZP | lo | 20753/125000 | lo_DYP,s648,s542 |
| s701 | 65 | linear | ZPQ | lo | 128169/500000 | s652,s542,lo_YZQ |
| s708 | 66 | linear | HDF | hi | 153/625 | s684 |
| s709 | 67 | linear | CDF | hi | 194189/250000 | s569 |
| s714 | 69 | bary_lo | OCY | lo | 42377/250000 | hi_OHD,s691,s672,lo_OHY,s662,s577 |
| s724 | 71 | bary_hi | HFY | lo | 95161/1000000 | hi_OHD,s691,s672,lo_OHY,s665,lo_HDF |
| s743 | 72 | bary_lo | CZQ | lo | 46663/250000 | hi_OHD,s513,lo_ODZ,s667,lo_OCQ,s688,lo_CDQ |
| s755 | 74 | bary_lo | CDP | lo | 4271/15625 | hi_OHD,lo_HDP,s675,s524,s577,s684 |
| s759 | 75 | bary_lo | DFP | lo | 95727/1000000 | hi_OHD,lo_HDP,s675,s524,lo_ODF,lo_HDF |
| s775 | 78 | bary_hi | CYQ | hi | 58447/125000 | hi_OHQ,s596,s678,lo_OHY,hi_OCQ,s685 |
| s784 | 79 | bary_hi | HDZ | lo | 56149/125000 | s668,lo_YZQ,s622,s625,s538,s691,lo_HDQ |
| s795 | 81 | bary_hi | DFZ | hi | 577243/1000000 | s253,s607,s784,lo_HCZ,s708,s709 |
| s801 | 82 | bary_lo | HYP | lo | 126329/1000000 | s253,s755,lo_HDP,s686,lo_HCY,s691 |
| s819 | 84 | bary_lo | HZQ | hi | 88337/250000 | s685,s743,s619,lo_HCZ,s685 |
| s865 | 89 | bary_hi | OYZ | lo | 121189/1000000 | s775,lo_YZQ,s743,lo_CYZ,s714,s678 |
| s869 | 90 | bary_hi | HDZ | lo | 237011/500000 | s775,lo_YZQ,s743,lo_CYZ,s684,s691,lo_HDQ |
| s870 | 91 | bary_hi | HZP | lo | 5271/31250 | s775,lo_YZQ,s743,lo_CYZ,s686,s801,s87 |
| s875 | 93 | bary_hi | YZP | lo | 120601/1000000 | s775,lo_YZQ,s743,lo_CYZ,s558,s652 |
| s879 | 95 | bary_lo | HYP | lo | 6417/50000 | s795,lo_FZP,s698,s759,s691,s724,lo_HYZ |
| s893 | 0 | sum | OHC | lo | 88877/250000 | lo_HCY,s714,lo_OHY |
| s899 | 4 | sum | OHZ | lo | 307189/1000000 | lo_HYZ,lo_OHY,s865 |
| s907 | 7 | sum | OYQ | lo | 441187/1000000 | s865,s622,lo_YZQ |
| s911 | 8 | sum | HCD | lo | 771401/1000000 | s607,lo_HCZ,s869 |
| s912 | 8 | sub | CDZ | hi | 169989/500000 | s253,lo_HCZ,s869 |
| s913 | 9 | sum | HCP | lo | 22167/62500 | lo_CZP,lo_HCZ,s870 |
| s916 | 11 | sum | HDY | lo | 15717/50000 | lo_DYP,lo_HDP,s879 |
| s918 | 13 | sum | CYP | lo | 306601/1000000 | lo_CYZ,lo_CZP,s875 |
| s936 | 18 | sumlo | HYP | lo | 66227/500000 | s913,s916,lo_HCY,lo_HDP,s253 |
| s956 | 24 | sumlo | HYQ | lo | 27787/100000 | s936,lo_YZQ,lo_HYZ,s652,s542 |
| s960 | 25 | sumlo | CYQ | lo | 386711/1000000 | s918,lo_YZQ,lo_CYZ,s652,s542 |
| s970 | 27 | sumlo | OYZ | lo | 35149/250000 | lo_HYZ,s622,s899,lo_YZQ,s819 |
| s971 | 28 | sumlo | OCZ | lo | 145997/1000000 | lo_CYZ,lo_OZP,lo_CZP,s970,s542 |
| s973 | 29 | sumlo | HZP | lo | 87541/500000 | lo_CZP,s869,s698,lo_HCZ,s912 |
| s975 | 30 | sumlo | HZQ | lo | 269637/1000000 | lo_HYZ,s701,s973,lo_YZQ,s542 |
| s980 | 32 | sumlo | CZQ | lo | 6823/31250 | lo_CYZ,s701,lo_CZP,lo_YZQ,s542 |
| s991 | 33 | sumlo | HCQ | lo | 125361/250000 | lo_CDQ,s956,s960,lo_HDQ,hi_DYQ |
| s1002 | 36 | balance_lo | OZQ | lo | 12881/50000 | lo_CDQ,s899,lo_HDQ,s971,s991,lo_ODZ,s253 |
| s1004 | 37 | balance_lo | OYZ | lo | 154899/1000000 | lo_YZQ,s893,s1002,lo_HCY,s907,lo_HCZ,s685 |
| s1011 | 38 | balance_lo | HCQ | lo | 576967/1000000 | s701,lo_HCY,s652,lo_HCZ,lo_YZQ,s913,s542 |
| s1025 | 41 | balance_lo | HYP | lo | 68433/500000 | s916,lo_CZP,lo_DYP,lo_HCZ,lo_HDP,lo_CYZ,s912 |
| s1038 | 44 | balance_lo | DYZ | lo | 128143/500000 | s911,lo_YZQ,lo_CDQ,lo_HYZ,lo_HDQ,lo_CYZ,s685 |
| s1042 | 46 | balance_lo | YPQ | lo | 335859/1000000 | lo_CDQ,s1025,lo_HDQ,s918,s1011,lo_DYP,s253 |
| s1070 | 53 | linear | OHZ | lo | 340899/1000000 | lo_HYZ,lo_OHY,s1004 |
| s1086 | 57 | linear | OYQ | lo | 505519/1000000 | s1004,s1002,lo_YZQ |
| s1093 | 58 | linear | HCD | lo | 850967/1000000 | hi_CDQ,s1011,lo_HDQ |
| s1095 | 58 | linear | CDQ | lo | 363967/1000000 | s253,s1011,lo_HDQ |
| s1100 | 60 | linear | HCQ | lo | 580973/1000000 | s980,lo_HCZ,s975 |
| s1105 | 61 | linear | HDY | lo | 161433/500000 | lo_DYP,lo_HDP,s1025 |
| s1116 | 63 | linear | CYQ | lo | 25271/62500 | lo_CYZ,s980,lo_YZQ |
| s1122 | 64 | linear | DZP | lo | 100243/500000 | lo_DYP,s1038,s542 |
| s1124 | 65 | linear | ZPQ | lo | 280059/1000000 | s1042,s542,lo_YZQ |
| s1164 | 72 | bary_lo | CZQ | lo | 230753/1000000 | hi_OHD,s869,lo_ODZ,s1070,lo_OCQ,s1100,s1095 |
| s1197 | 78 | bary_hi | CYQ | hi | 112481/250000 | hi_OHQ,s956,s1086,lo_OHY,hi_OCQ,s685 |
| s1262 | 84 | bary_lo | HZQ | hi | 309247/1000000 | s685,s1164,s975,lo_HCZ,s685 |
| s1263 | 85 | bary_hi | CYZ | lo | 46653/500000 | s685,s1164,s975,lo_HCZ,lo_HCY,s1116 |
| s1335 | 90 | bary_hi | HDZ | lo | 508991/1000000 | s1197,lo_YZQ,s1164,s1263,s1093,s1105,lo_HDQ |
| s1370 | 8 | sub | CDZ | hi | 305009/1000000 | s253,lo_HCZ,s1335 |
| s1503 | 29 | sumlo | HZP | lo | 8653/40000 | lo_CZP,s1335,s1122,lo_HCZ,s1370 |
| s1517 | 30 | sumlo | HZQ | lo | 1939/6250 | lo_HYZ,s1124,s1503,lo_YZQ,s542 |

## Conclusion

{"triangle":"HZQ","lower":"s1517","upper":"s1262"}
