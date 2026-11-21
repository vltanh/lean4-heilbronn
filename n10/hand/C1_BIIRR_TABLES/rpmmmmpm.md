# Leaf rpmmmmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":-1,"DYP":-1,"FYP":1,"QYZ":-1}

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
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFZ","O","FZO",-1] |
| 16 | extreme | ["DYQ","O","YQO",-1] |
| 17 | extreme | ["DYR","O","YRO",-1] |
| 18 | interior_line | ["HY","Z","HCDF","Z",1] |
| 19 | interior_line | ["HY","P","HCDF","P",1] |
| 20 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 21 | interior_line | ["CY","P","HCDF","P",-1] |
| 22 | interior_line | ["CZ","R","CDQ","R",-1] |
| 23 | interior_line | ["CP","R","CDQ","R",-1] |
| 24 | interior_line | ["DZ","R","CDQ","R",1] |
| 25 | interior_line | ["DP","R","CDQ","R",1] |
| 26 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 27 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | plu | ["OHDYZ","OYZ",-1] |
| 30 | plu | ["OHDPR","OPR",-1] |
| 31 | plu | ["DOHYZ","DYZ",1] |
| 32 | plu | ["DOHZP","DZP",-1] |
| 33 | plu | ["YHDFZ","YFZ",-1] |
| 34 | plu | ["YHDZP","YZP",1] |
| 35 | plu | ["YHDPQ","YPQ",-1] |
| 36 | plu | ["YHDPR","YPR",-1] |
| 37 | plu | ["ZOHCP","ZCP",-1] |
| 38 | plu | ["ZOHFP","ZFP",1] |
| 39 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 40 | plu | ["YOZQR","YZR",-1] |
| 41 | plu | ["ZOCYR","ZOR",1] |
| 42 | plu | ["QOHYR","QHR",1] |
| 43 | plu | ["QOFYR","QFR",1] |
| 44 | plu | ["QOYZR","QZR",1] |
| 45 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 347/500 | ["cost","YP"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 279/1000 | ["cost","P"] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HYZ | HYZ | lo | 279/1000 | ["cost","P"] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFQ | CFQ | lo | 279/1000 | ["cost","R"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","R"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 279/1000 | ["cost","R"] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","Z"] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZQ | DZQ | lo | 93/1000 | ["cost",""] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZP | YZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YZR | YZR | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHZ | OHZ | hi | 907/1000 | "C039" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHQ","HQR","OHR","OQR"] | ["fan","OHQ","R"] |
| 1 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 2 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 3 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 4 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 5 | ["fan","ODR","DZR","ODZ","OZR"] | ["fan","ODR","Z"] |
| 6 | ["fan","OYQ","OQR","OYR","YQR"] | ["fan","OYQ","R"] |
| 7 | ["fan","HCZ","CZP","HCP","HZP"] | ["fan","HCZ","P"] |
| 8 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 9 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 10 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 11 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 12 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 13 | ["plu","OHZ","OYQ","OHQ","OYZ","OHY","OZQ"] | ["plu","OHYZQ"] |
| 14 | ["plu","OHR","OZQ","OHQ","OZR","OHZ","OQR"] | ["plu","OHZQR"] |
| 15 | ["plu","HYQ","OHR","HQR","OHY","HYR","OHQ"] | ["plu","HOYQR"] |
| 16 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 17 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 18 | ["plu","CDQ","CFR","CDF","CQR","CDR","CFQ"] | ["plu","CDFQR"] |
| 19 | ["plu","CDQ","CYR","CDR","CYQ","CDY","CQR"] | ["plu","CDYQR"] |
| 20 | ["plu","CYR","CZQ","CQR","CYZ","CYQ","CZR"] | ["plu","CYZQR"] |
| 21 | ["plu","DZQ","OCD","CDQ","ODZ","CDZ","ODQ"] | ["plu","DOCZQ"] |
| 22 | ["plu","CYZ","HYQ","CYQ","HYZ","HCY","YZQ"] | ["plu","YHCZQ"] |
| 23 | ["plu","HDY","YZP","DYP","HYZ","DYZ","HYP"] | ["plu","YHDZP"] |
| 24 | ["plu","DYQ","HYZ","DYZ","HYQ","HDY","YZQ"] | ["plu","YHDZQ"] |
| 25 | ["plu","HYQ","YZR","HYR","YZQ","HYZ","YQR"] | ["plu","YHZQR"] |
| 26 | ["plu","HDZ","OCZ","CDZ","OHZ","HCZ","ODZ"] | ["plu","ZOHCD"] |
| 27 | ["plu","DYZ","OCZ","CDZ","OYZ","CYZ","ODZ"] | ["plu","ZOCDY"] |
| 28 | ["plu","DYZ","OZR","DZR","OYZ","ODZ","YZR"] | ["plu","ZODYR"] |
| 29 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 30 | ["plu","DQR","OHQ","HDQ","OQR","HQR","ODQ"] | ["plu","QOHDR"] |
| 31 | ["plu","CZQ","ODQ","CDQ","OZQ","DZQ","OCQ"] | ["plu","QOCDZ"] |
| 32 | ["plu","DQR","OYQ","DYQ","OQR","ODQ","YQR"] | ["plu","QODYR"] |
| 33 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 34 | ["plu","HQR","OYR","HYR","OQR","OHR","YQR"] | ["plu","ROHYQ"] |
| 35 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 36 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 37 | ["balance",[[1,"OCZ","HYQ"],[-1,"CZQ","OHY"],[-1,"OZQ","HCY"],[-1,"OCQ","HYZ"]]] | ["six","HYOCZQ"] |
| 38 | ["balance",[[-1,"CDQ","HYR"],[1,"DQR","HCY"],[1,"CQR","HDY"],[1,"CDR","HYQ"]]] | ["six","HYCDQR"] |
| 39 | ["balance",[[1,"OCD","HZP"],[1,"CDZ","OHP"],[1,"ODZ","HCP"],[-1,"OCZ","HDP"]]] | ["six","HPOCDZ"] |
| 40 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 41 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 42 | ["balance",[[-1,"HCZ","DYP"],[1,"CZP","HDY"],[-1,"HZP","CDY"],[-1,"HCP","DYZ"]]] | ["six","DYHCZP"] |
| 43 | ["balance",[[-1,"OHQ","DZR"],[-1,"HQR","ODZ"],[-1,"OQR","HDZ"],[1,"OHR","DZQ"]]] | ["six","DZOHQR"] |
| 44 | ["balance",[[1,"OHC","YQR"],[1,"HCY","OQR"],[-1,"OCY","HQR"],[1,"OHY","CQR"]]] | ["six","QROHCY"] |
| 45 | ["balance",[[1,"OHY","ZQR"],[-1,"HYZ","OQR"],[1,"OYZ","HQR"],[-1,"OHZ","YQR"]]] | ["six","QROHYZ"] |
| 46 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDZ","OQR"],[-1,"ODZ","CQR"],[1,"OCZ","DQR"]]] | ["six","QROCDZ"] |
| 47 | ["balance",[[-1,"ODY","ZQR"],[-1,"DYZ","OQR"],[1,"OYZ","DQR"],[-1,"ODZ","YQR"]]] | ["six","QRODYZ"] |
| 48 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 49 | ["balance",[[1,"HCY","ZQR"],[-1,"CYZ","HQR"],[1,"HYZ","CQR"],[1,"HCZ","YQR"]]] | ["six","QRHCYZ"] |
| 50 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 51 | ["linear",{"OHD":1,"ODZ":1,"OHZ":-1,"HDZ":-1},"0"] | ["affine_quad","OHDZ",-1] |
| 52 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 53 | ["linear",{"OHD":-1,"ODR":-1,"OHR":1,"HDR":1},"0"] | ["affine_quad","OHDR",1] |
| 54 | ["linear",{"OHQ":1,"OQR":-1,"OHR":-1,"HQR":-1},"0"] | ["affine_quad","OHQR",-1] |
| 55 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 56 | ["linear",{"OCD":-1,"ODQ":1,"OCQ":1,"CDQ":-1},"0"] | ["affine_quad","OCDQ",-1] |
| 57 | ["linear",{"OCQ":1,"OQR":1,"OCR":-1,"CQR":-1},"0"] | ["affine_quad","OCQR",1] |
| 58 | ["linear",{"ODZ":-1,"OZQ":-1,"ODQ":1,"DZQ":-1},"0"] | ["affine_quad","ODZQ",1] |
| 59 | ["linear",{"ODZ":-1,"OZR":-1,"ODR":1,"DZR":-1},"0"] | ["affine_quad","ODZR",1] |
| 60 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 61 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 62 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 63 | ["linear",{"HCZ":1,"HZP":-1,"HCP":-1,"CZP":-1},"0"] | ["affine_quad","HCZP",1] |
| 64 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 65 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 66 | ["linear",{"HDQ":-1,"HQR":-1,"HDR":1,"DQR":1},"0"] | ["affine_quad","HDQR",1] |
| 67 | ["linear",{"HYQ":1,"HQR":-1,"HYR":-1,"YQR":1},"0"] | ["affine_quad","HYQR",1] |
| 68 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 69 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 70 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 71 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 72 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 73 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["CDQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DQ"] |
| 74 | ["bary",["OYQ",1],[null,["OHQ",1],["OZQ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OQ"] |
| 75 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],null],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","CZ"] |
| 76 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],["CZQ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","CQ"] |
| 77 | ["bary",["DYZ",-1],[["ODZ",-1],["HDZ",-1],null],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DZ"] |
| 78 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DQ"] |
| 79 | ["bary",["OHY",-1],[null,null,["OHQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OH"] |
| 80 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 81 | ["bary",["OYZ",1],[null,["OHZ",1],["OZQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OZ"] |
| 82 | ["bary",["HCY",-1],[["OHC",-1],null,["HCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HC"] |
| 83 | ["bary",["HDY",-1],[["OHD",-1],null,["HDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HD"] |
| 84 | ["bary",["HYQ",-1],[["OHQ",-1],null,null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HQ"] |
| 85 | ["bary",["HYR",-1],[["OHR",-1],null,["HQR",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HR"] |
| 86 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CD"] |
| 87 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["DFQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DF"] |
| 88 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","FQ"] |
| 89 | ["bary",["OCR",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HQR","OQR","OHR"]] | ["bary","OHQ","R","OC"] |
| 90 | ["bary",["ODR",-1],[null,["OHD",1],["ODQ",-1]],"OHQ",["HQR","OQR","OHR"]] | ["bary","OHQ","R","OD"] |
| 91 | ["bary",["OHY",-1],[null,null,["OHR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","OH"] |
| 92 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HQR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","HQ"] |
| 93 | ["bary",["CFY",1],[["OCF",1],["HCF",1],["CFR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","CF"] |
| 94 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHD",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","OH"] |
| 95 | ["bary",["OZQ",1],[null,["OCQ",-1],["ODQ",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","OQ"] |
| 96 | ["bary",["HCZ",1],[["OHC",-1],null,["HCD",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","HC"] |
| 97 | ["bary",["HYZ",1],[["OHY",-1],["HCY",1],["HDY",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","HY"] |
| 98 | ["bary",["CYZ",-1],[["OCY",1],null,["CDY",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","CY"] |
| 99 | ["bary",["CZQ",1],[["OCQ",1],null,["CDQ",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","CQ"] |
| 100 | ["bary",["DZQ",-1],[["ODQ",-1],["CDQ",-1],null],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","DQ"] |
| 101 | ["bary",["ZQR",-1],[["OQR",1],["CQR",1],["DQR",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","QR"] |
| 102 | ["bary",["OZQ",1],[null,["ODQ",1],null],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OQ"] |
| 103 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","CQ"] |
| 104 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHR",-1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OH"] |
| 105 | ["bary",["OCZ",1],[null,["OCD",1],["OCR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OC"] |
| 106 | ["bary",["ODZ",-1],[null,null,["ODR",-1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OD"] |
| 107 | ["bary",["OZQ",1],[null,["ODQ",1],["OQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OQ"] |
| 108 | ["bary",["HYZ",1],[["OHY",-1],["HDY",1],["HYR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","HY"] |
| 109 | ["bary",["ZQR",-1],[["OQR",1],["DQR",-1],null],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","QR"] |
| 110 | ["bary",["OHR",-1],[null,["OHY",-1],["OHQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OH"] |
| 111 | ["bary",["OYR",-1],[null,null,["OYQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OY"] |
| 112 | ["bary",["HYR",1],[["OHY",-1],null,["HYQ",1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HY"] |
| 113 | ["bary",["HQR",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HQ"] |
| 114 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 115 | ["bary",["DQR",-1],[["ODQ",-1],["DZQ",-1],null],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DQ"] |
| 116 | ["bary",["HDP",-1],[null,["HCD",-1],["HDZ",-1]],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","HD"] |
| 117 | ["bary",["HDP",-1],[null,null,["HDY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HD"] |
| 118 | ["bary",["OHP",-1],[null,["OHY",-1],["OHZ",-1]],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","OH"] |
| 119 | ["bary",["CZP",1],[["HCZ",1],["CYZ",1],null],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","CZ"] |
| 120 | ["bary",["YZP",1],[["HYZ",1],null,null],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","YZ"] |
| 121 | ["bary",["OCR",1],[null,["OCD",1],["OCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OC"] |
| 122 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 123 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 124 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 125 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 126 | ["bary",["FYR",1],[["CFY",1],null,["FYQ",1]],"CYQ",["YQR","CQR","CYR"]] | ["bary","CYQ","R","FY"] |
| 127 | ["bary",["OHR",-1],[["OHC",-1],["OHZ",-1],["OHQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","OH"] |
| 128 | ["bary",["OYR",-1],[["OCY",-1],["OYZ",-1],["OYQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","OY"] |
| 129 | ["bary",["HYR",1],[["HCY",1],["HYZ",1],["HYQ",1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","HY"] |
| 130 | ["bary",["CYR",-1],[null,["CYZ",-1],["CYQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","CY"] |
| 131 | ["bary",["FYZ",1],[["DFY",1],null,["FYR",1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","FY"] |
| 132 | ["bary",["OHP",-1],[["OHF",-1],["OHY",-1],["OHZ",-1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","OH"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s18 | 2 | sub | OCZ | hi | 77989/200000 | hi_OCD,lo_CDZ,lo_ODZ |
| s20 | 3 | sub | DZQ | hi | 6071/15625 | hi_ODQ,lo_ODZ,lo_OZQ |
| s22 | 3 | sub | OZQ | hi | 35909/62500 | hi_ODQ,lo_DZQ,lo_ODZ |
| s74 | 16 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s75 | 17 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s74,lo_CQR,lo_HCD,hi_CDQ |
| s77 | 18 | sumlo | CFR | lo | 713/5000 | lo_CDF,lo_CQR,lo_CDR,lo_CFQ,hi_CDQ |
| s83 | 21 | sumlo | DZQ | lo | 157113/1000000 | lo_CDQ,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s94 | 26 | sumlo | HDZ | lo | 46411/200000 | lo_CDZ,lo_OHZ,lo_HCZ,lo_ODZ,s18 |
| s98 | 29 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s99 | 30 | diffhi | HQR | hi | 39233/125000 | hi_DQR,hi_OHQ,lo_HDQ,lo_OQR,lo_ODQ |
| s104 | 31 | sumhi | CZQ | hi | 225921/500000 | hi_CDQ,s22,s20,hi_OCQ,lo_ODQ |
| s109 | 32 | sumlo | OYQ | lo | 77341/200000 | lo_DYQ,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s112 | 33 | sumlo | DQR | lo | 137767/1000000 | s83,lo_OQR,lo_ODQ,lo_ZQR,s22 |
| s113 | 33 | sumlo | OZQ | lo | 169131/500000 | s83,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s122 | 35 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s128 | 36 | balance_lo | CDY | lo | 179431/500000 | lo_HCD,s109,lo_HDY,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s136 | 37 | balance_lo | HYQ | lo | 106877/500000 | lo_CZQ,lo_OHY,s113,lo_HCY,lo_OCQ,lo_HYZ,s18 |
| s138 | 38 | balance_lo | HYR | lo | 27923/200000 | s112,lo_HCY,lo_CQR,lo_HDY,lo_CDR,s136,hi_CDQ |
| s141 | 40 | balance_lo | OYR | lo | 56717/250000 | s109,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s128,hi_CDQ |
| s142 | 41 | balance_lo | OZR | lo | 19659/125000 | s113,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,lo_CDZ,hi_CDQ |
| s150 | 44 | balance_lo | OCY | lo | 68891/500000 | lo_OHC,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s99 |
| s151 | 46 | balance_lo | OCZ | lo | 184807/1000000 | lo_OCD,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s152 | 47 | balance_lo | OYZ | lo | 27721/250000 | lo_ODY,lo_ZQR,lo_DYZ,lo_OQR,lo_ODZ,lo_YQR,hi_DQR |
| s154 | 48 | balance_lo | HQR | lo | 137793/1000000 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,s112,hi_CDY |
| s155 | 49 | balance_lo | CYZ | lo | 38579/200000 | lo_HCY,lo_ZQR,lo_HYZ,lo_CQR,lo_HCZ,lo_YQR,s99 |
| s161 | 52 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s170 | 54 | linear | OHR | hi | 769207/1000000 | s154,hi_OHQ,lo_OQR |
| s171 | 55 | linear | OCD | lo | 370807/1000000 | lo_CDZ,s151,lo_ODZ |
| s175 | 58 | linear | OZQ | hi | 510431/1000000 | s83,hi_ODQ,lo_ODZ |
| s181 | 61 | linear | OYQ | lo | 103217/250000 | lo_OQR,s141,lo_YQR |
| s183 | 62 | linear | OZQ | lo | 42909/125000 | lo_OQR,s142,lo_ZQR |
| s193 | 64 | linear | HCQ | lo | 224659/500000 | lo_CQR,s75,s154 |
| s198 | 68 | linear | CDY | lo | 75779/200000 | lo_CDZ,s155,lo_DYZ |
| s200 | 69 | linear | CDQ | lo | 323767/1000000 | lo_CDR,lo_CQR,s112 |
| s205 | 70 | linear | CYQ | lo | 166923/500000 | lo_CQR,s122,lo_YQR |
| s215 | 71 | linear | OHC | lo | 370807/1000000 | s171 |
| s216 | 72 | linear | HCD | hi | 907/1000 | lo_HDF |
| s226 | 73 | bary_hi | DYQ | lo | 391927/1000000 | hi_OHC,lo_HCY,s150,lo_OHY,lo_ODQ,s161,s200 |
| s256 | 74 | bary_hi | OYQ | hi | 128439/200000 | hi_OHZ,lo_HYZ,s152,lo_OHY,hi_OHQ,s175 |
| s258 | 76 | bary_hi | CYQ | hi | 72879/125000 | hi_OHZ,lo_HYZ,s152,lo_OHY,hi_OCQ,s98,s104 |
| s276 | 79 | bary_lo | OHY | hi | 186689/500000 | hi_OHQ,s136,s181,lo_OHY,hi_OHQ |
| s277 | 80 | bary_lo | OCY | lo | 161743/1000000 | hi_OHQ,s136,s181,lo_OHY,s215,lo_OCQ |
| s278 | 82 | bary_lo | HCY | hi | 67997/250000 | hi_OHQ,s136,s181,lo_OHY,hi_OHC,s193 |
| s279 | 83 | bary_lo | HDY | hi | 141551/250000 | hi_OHQ,s136,s181,lo_OHY,hi_OHD,hi_HDQ |
| s283 | 86 | bary_hi | CDY | hi | 28871/40000 | hi_OHQ,s136,s181,lo_OHY,hi_OCD,s216,s200 |
| s284 | 87 | bary_hi | DFY | hi | 654071/1000000 | hi_OHQ,s136,s181,lo_OHY,hi_ODF,hi_HDF,hi_DFQ |
| s286 | 88 | bary_lo | FYQ | hi | 75729/100000 | hi_OHQ,s136,s181,lo_OHY,hi_OFQ,hi_HFQ |
| s302 | 93 | bary_hi | CFY | hi | 270493/500000 | s170,s138,s141,lo_OHY,hi_OCF,hi_HCF,s77 |
| s304 | 94 | bary_lo | OHZ | hi | 779589/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s151,hi_OHC,hi_OHD |
| s308 | 95 | bary_hi | OZQ | hi | 499911/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s151,lo_OCQ,hi_ODQ |
| s309 | 96 | bary_hi | HCZ | hi | 138553/250000 | hi_OCD,lo_CDZ,lo_ODZ,s151,s215,s216 |
| s311 | 97 | bary_hi | HYZ | hi | 103063/250000 | hi_OCD,lo_CDZ,lo_ODZ,s151,lo_OHY,s278,s279 |
| s313 | 98 | bary_lo | CYZ | hi | 462563/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s151,s277,s283 |
| s314 | 99 | bary_hi | CZQ | hi | 314397/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s151,hi_OCQ,hi_CDQ |
| s317 | 100 | bary_hi | DZQ | lo | 82171/500000 | hi_OCD,lo_CDZ,lo_ODZ,s151,lo_ODQ,s200 |
| s320 | 101 | bary_lo | ZQR | hi | 128397/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s151,lo_OQR,lo_CQR,hi_DQR |
| s342 | 110 | bary_lo | OHR | hi | 19111/25000 | s256,lo_YQR,lo_OQR,s141,s276,hi_OHQ |
| s364 | 115 | bary_hi | DQR | lo | 499/3125 | s308,lo_ZQR,lo_OQR,s142,lo_ODQ,s317 |
| s398 | 116 | bary_hi | HDP | lo | 155397/1000000 | s309,lo_CZP,lo_HZP,lo_HCP,lo_HCD,s94 |
| s438 | 119 | bary_lo | CZP | lo | 53227/500000 | s311,lo_YZP,lo_HZP,lo_HYP,lo_HCZ,s155 |
| s450 | 122 | bary_lo | HCR | lo | 253163/1000000 | hi_CDQ,s364,lo_CQR,lo_CDR,lo_HCD,s193 |
| s451 | 123 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,s364,lo_CQR,lo_CDR,s216,hi_HDQ |
| s456 | 124 | bary_hi | CYR | lo | 157821/1000000 | hi_CDQ,s364,lo_CQR,lo_CDR,s198,s205 |
| s460 | 125 | bary_hi | DYR | hi | 554877/1000000 | hi_CDQ,s364,lo_CQR,lo_CDR,s283,hi_DYQ |
| s465 | 126 | bary_hi | FYR | hi | 75249/125000 | s258,lo_YQR,lo_CQR,s456,s302,s286 |
| s466 | 127 | bary_hi | OHR | lo | 56201/100000 | s314,lo_ZQR,lo_CQR,lo_CZR,s215,lo_OHZ,lo_OHQ |
| s473 | 129 | bary_lo | HYR | lo | 183739/1000000 | s314,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,lo_HYZ,s136 |
| s487 | 131 | bary_hi | FYZ | hi | 535717/1000000 | s460,lo_YZR,lo_DZR,lo_DYZ,s284,s465 |
| s488 | 132 | bary_hi | OHP | lo | 197333/1000000 | s487,lo_YZP,lo_FZP,lo_FYP,lo_OHF,lo_OHY,lo_OHZ |
| s494 | 1 | sub | OHY | hi | 353833/1000000 | s342,s473,s141 |
| s498 | 7 | sum | HCZ | lo | 146227/500000 | s438,lo_HCP,lo_HZP |
| s499 | 8 | sum | HCQ | lo | 120989/250000 | lo_CQR,s450,s154 |
| s500 | 9 | sum | HDY | lo | 341397/1000000 | lo_DYP,s398,lo_HYP |
| s501 | 11 | sum | CDQ | lo | 4321/12500 | lo_CDR,lo_CQR,s364 |
| s503 | 12 | sum | CYQ | lo | 343821/1000000 | lo_CQR,s456,lo_YQR |
| s513 | 17 | sumlo | HCR | lo | 260833/1000000 | lo_CDR,s499,lo_CQR,lo_HCD,hi_CDQ |
| s516 | 19 | sumlo | CYR | lo | 160029/1000000 | lo_CDR,s503,s198,lo_CQR,hi_CDQ |
| s518 | 21 | sumlo | DZQ | lo | 167881/1000000 | s501,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s521 | 22 | sumlo | HYQ | lo | 226077/1000000 | s503,lo_HYZ,lo_HCY,lo_YZQ,s313 |
| s529 | 30 | diffhi | HQR | hi | 142591/500000 | hi_DQR,hi_OHQ,s161,lo_OQR,lo_ODQ |
| s533 | 32 | sumlo | OYQ | lo | 215793/500000 | s226,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s535 | 33 | sumlo | DQR | lo | 80169/500000 | s518,lo_OQR,lo_ODQ,lo_ZQR,s308 |
| s543 | 36 | balance_lo | CDY | lo | 98953/250000 | lo_HCD,s533,s500,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s548 | 39 | balance_lo | HDP | lo | 78839/500000 | s171,lo_HZP,lo_CDZ,s488,lo_ODZ,lo_HCP,s18 |
| s549 | 40 | balance_lo | OYR | lo | 66329/250000 | s533,lo_CDR,lo_YQR,s171,lo_OQR,s543,hi_CDQ |
| s550 | 41 | balance_lo | OZR | lo | 17871/100000 | s183,lo_CDR,lo_ZQR,s171,lo_OQR,lo_CDZ,hi_CDQ |
| s551 | 42 | balance_lo | CZP | lo | 32081/250000 | s498,lo_DYP,lo_HZP,s543,lo_HCP,lo_DYZ,s279 |
| s556 | 44 | balance_lo | OCY | lo | 90789/500000 | s215,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s529 |
| s557 | 45 | balance_lo | OYZ | lo | 157997/1000000 | lo_HYZ,lo_OQR,lo_OHZ,lo_YQR,s494,s320,s529 |
| s558 | 46 | balance_lo | OCZ | lo | 44259/200000 | s171,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s559 | 48 | balance_lo | HQR | lo | 154069/1000000 | lo_HCD,lo_YQR,s500,lo_CQR,lo_HCY,s535,s283 |
| s560 | 49 | balance_lo | CYZ | lo | 216683/1000000 | lo_HCY,lo_ZQR,lo_HYZ,lo_CQR,s498,lo_YQR,s529 |
| s568 | 54 | linear | OHQ | lo | 809079/1000000 | s559,s466,lo_OQR |
| s569 | 54 | linear | OHR | hi | 752931/1000000 | s559,hi_OHQ,lo_OQR |
| s570 | 55 | linear | OCD | lo | 81459/200000 | lo_CDZ,s558,lo_ODZ |
| s572 | 58 | linear | OZQ | hi | 499663/1000000 | s518,hi_ODQ,lo_ODZ |
| s575 | 60 | linear | ODR | hi | 253603/500000 | s535,hi_ODQ,lo_OQR |
| s577 | 61 | linear | OYQ | lo | 112829/250000 | lo_OQR,s549,lo_YQR |
| s578 | 62 | linear | OZQ | lo | 36471/100000 | lo_OQR,s550,lo_ZQR |
| s580 | 63 | linear | HCZ | lo | 78581/250000 | s551,lo_HCP,lo_HZP |
| s581 | 64 | linear | HCQ | lo | 253951/500000 | lo_CQR,s513,s559 |
| s582 | 65 | linear | HDY | lo | 171839/500000 | lo_DYP,s548,lo_HYP |
| s583 | 66 | linear | HDQ | hi | 378429/500000 | hi_DQR,s451,s559 |
| s585 | 69 | linear | CDQ | lo | 173169/500000 | lo_CDR,lo_CQR,s535 |
| s587 | 70 | linear | CYQ | lo | 346029/1000000 | lo_CQR,s516,lo_YQR |
| s592 | 71 | linear | OHC | lo | 81459/200000 | s570 |
| s595 | 73 | bary_hi | DYQ | lo | 25573/62500 | hi_OHC,lo_HCY,s556,lo_OHY,lo_ODQ,s161,s585 |
| s607 | 74 | bary_hi | OYQ | hi | 582433/1000000 | s304,lo_HYZ,s557,lo_OHY,hi_OHQ,s572 |
| s610 | 75 | bary_hi | CYZ | hi | 429311/1000000 | s304,lo_HYZ,s557,lo_OHY,s18,s309 |
| s620 | 83 | bary_lo | HDY | hi | 65759/125000 | hi_OHQ,s521,s577,lo_OHY,hi_OHD,s583 |
| s622 | 84 | bary_lo | HYQ | hi | 113921/250000 | hi_OHQ,s521,s577,lo_OHY,hi_OHQ |
| s623 | 85 | bary_lo | HYR | hi | 328771/1000000 | hi_OHQ,s521,s577,lo_OHY,s569,s559 |
| s632 | 91 | bary_lo | OHY | hi | 75969/250000 | s569,s473,s549,lo_OHY,s569 |
| s642 | 100 | bary_hi | DZQ | lo | 167987/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s558,lo_ODQ,s585 |
| s645 | 102 | bary_hi | OZQ | hi | 499557/1000000 | hi_ODQ,s642,s578,lo_ODZ,hi_ODQ |
| s654 | 104 | bary_lo | OHZ | hi | 771341/1000000 | s575,lo_DZR,s550,lo_ODZ,hi_OHD,s569 |
| s658 | 108 | bary_hi | HYZ | hi | 5881/15625 | s575,lo_DZR,s550,lo_ODZ,lo_OHY,s620,s623 |
| s659 | 110 | bary_lo | OHR | hi | 182293/250000 | s607,lo_YQR,lo_OQR,s549,s632,hi_OHQ |
| s661 | 111 | bary_lo | OYR | hi | 396433/1000000 | s607,lo_YQR,lo_OQR,s549,s607 |
| s664 | 112 | bary_hi | HYR | hi | 18457/62500 | s607,lo_YQR,lo_OQR,s549,lo_OHY,s622 |
| s665 | 113 | bary_hi | HQR | lo | 20661/125000 | s607,lo_YQR,lo_OQR,s549,s568,s521 |
| s671 | 114 | bary_hi | DQR | lo | 44037/250000 | s607,lo_YQR,lo_OQR,s549,lo_ODQ,s595 |
| s706 | 119 | bary_lo | CZP | lo | 26241/200000 | s658,lo_YZP,lo_HZP,lo_HYP,s580,s560 |
| s716 | 122 | bary_lo | HCR | lo | 53227/200000 | hi_CDQ,s671,lo_CQR,lo_CDR,lo_HCD,s581 |
| s717 | 123 | bary_lo | HDR | hi | 672919/1000000 | hi_CDQ,s671,lo_CQR,lo_CDR,s216,s583 |
| s730 | 127 | bary_hi | OHR | lo | 610953/1000000 | s314,lo_ZQR,lo_CQR,lo_CZR,s592,lo_OHZ,s568 |
| s732 | 129 | bary_lo | HYR | lo | 23423/125000 | s314,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,lo_HYZ,s521 |
| s733 | 130 | bary_hi | CYR | lo | 41613/250000 | s314,lo_ZQR,lo_CQR,lo_CZR,s560,s587 |
| s745 | 1 | sub | OHY | hi | 34559/125000 | s659,s732,s549 |
| s746 | 4 | sub | ODR | hi | 122849/250000 | hi_ODQ,s671,lo_OQR |
| s747 | 5 | sub | ODZ | hi | 109843/500000 | s746,lo_DZR,s550 |
| s751 | 7 | sum | HCZ | lo | 63441/200000 | s706,lo_HCP,lo_HZP |
| s752 | 8 | sum | HCQ | lo | 524423/1000000 | lo_CQR,s716,s665 |
| s753 | 11 | sum | CDQ | lo | 90537/250000 | lo_CDR,lo_CQR,s671 |
| s755 | 12 | sum | CYQ | lo | 88113/250000 | lo_CQR,s733,lo_YQR |
| s759 | 13 | diff | OYZ | lo | 175099/1000000 | lo_OHZ,s577,s745,s645,hi_OHQ |
| s763 | 17 | sumlo | HCR | lo | 269793/1000000 | lo_CDR,s752,lo_CQR,lo_HCD,hi_CDQ |
| s766 | 20 | sumlo | CYR | lo | 5261/31250 | lo_CQR,s560,s755,lo_CZR,s314 |
| s768 | 21 | sumlo | DZQ | lo | 8527/50000 | s753,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s770 | 22 | sumlo | CYZ | lo | 117387/500000 | s755,lo_HYZ,lo_HCY,lo_YZQ,s622 |
| s771 | 22 | sumlo | HYQ | lo | 249197/1000000 | s755,lo_HYZ,lo_HCY,lo_YZQ,s610 |
| s774 | 26 | sumlo | HDZ | lo | 241167/1000000 | lo_CDZ,lo_OHZ,s751,lo_ODZ,s18 |
| s775 | 27 | sumlo | DYZ | lo | 12219/125000 | lo_CDZ,s759,s770,lo_ODZ,s18 |
| s783 | 34 | sumlo | HQR | lo | 187283/1000000 | s732,lo_OQR,s730,lo_YQR,s661 |
| s786 | 36 | balance_lo | CDY | lo | 409717/1000000 | lo_HCD,s577,s582,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s791 | 40 | balance_lo | OYR | lo | 70211/250000 | s577,lo_CDR,lo_YQR,s570,lo_OQR,s786,hi_CDQ |
| s792 | 41 | balance_lo | OZR | lo | 11971/62500 | s578,lo_CDR,lo_ZQR,s570,lo_OQR,lo_CDZ,hi_CDQ |
| s793 | 42 | balance_lo | CZP | lo | 145787/1000000 | s751,lo_DYP,lo_HZP,s786,lo_HCP,s775,s620 |
| s799 | 44 | balance_lo | OCY | lo | 193477/1000000 | s592,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s529 |
| s801 | 45 | balance_lo | OYZ | lo | 192827/1000000 | lo_HYZ,lo_OQR,lo_OHZ,lo_YQR,s745,s320,s529 |
| s802 | 46 | balance_lo | OCZ | lo | 58949/250000 | s570,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s804 | 51 | linear | OHD | lo | 715481/1000000 | s774,s747,lo_OHZ |
| s805 | 52 | linear | HDQ | lo | 409481/1000000 | lo_ODQ,s804,hi_OHQ |
| s807 | 54 | linear | OHQ | lo | 222809/250000 | s783,s730,lo_OQR |
| s808 | 54 | linear | OHR | hi | 719717/1000000 | s783,hi_OHQ,lo_OQR |
| s809 | 55 | linear | OCD | lo | 105449/250000 | lo_CDZ,s802,lo_ODZ |
| s810 | 58 | linear | OZQ | hi | 124251/250000 | s768,hi_ODQ,lo_ODZ |
| s814 | 61 | linear | OYQ | lo | 116711/250000 | lo_OQR,s791,lo_YQR |
| s815 | 62 | linear | OZQ | lo | 5899/15625 | lo_OQR,s792,lo_ZQR |
| s816 | 63 | linear | HCZ | lo | 331787/1000000 | s793,lo_HCP,lo_HZP |
| s817 | 64 | linear | HCQ | lo | 137519/250000 | lo_CQR,s763,s783 |
| s819 | 66 | linear | HDQ | hi | 179909/250000 | hi_DQR,s717,s783 |
| s820 | 68 | linear | CDY | lo | 212763/500000 | lo_CDZ,s770,s775 |
| s823 | 70 | linear | CYQ | lo | 22147/62500 | lo_CQR,s766,lo_YQR |
| s831 | 71 | linear | OHC | lo | 105449/250000 | s809 |
| s833 | 73 | bary_hi | DYQ | lo | 425171/1000000 | hi_OHC,lo_HCY,s799,lo_OHY,lo_ODQ,s805,s753 |
| s836 | 74 | bary_hi | OYQ | hi | 577647/1000000 | s654,lo_HYZ,s801,lo_OHY,hi_OHQ,s810 |
| s846 | 83 | bary_lo | HDY | hi | 507083/1000000 | hi_OHQ,s771,s814,lo_OHY,hi_OHD,s819 |
| s848 | 84 | bary_lo | HYQ | hi | 110039/250000 | hi_OHQ,s771,s814,lo_OHY,hi_OHQ |
| s854 | 90 | bary_lo | ODR | hi | 480837/1000000 | hi_OHQ,s783,lo_OQR,s730,s804,hi_ODQ |
| s858 | 91 | bary_lo | OHY | hi | 251489/1000000 | s808,s732,s791,lo_OHY,s808 |
| s859 | 92 | bary_hi | HYQ | lo | 3203/12500 | s808,s732,s791,lo_OHY,s807,s783 |
| s877 | 104 | bary_lo | OHZ | hi | 752377/1000000 | s854,lo_DZR,s792,lo_ODZ,hi_OHD,s808 |
| s878 | 106 | bary_lo | ODZ | hi | 196301/1000000 | s854,lo_DZR,s792,lo_ODZ,s854 |
| s882 | 108 | bary_hi | HYZ | hi | 350061/1000000 | s854,lo_DZR,s792,lo_ODZ,lo_OHY,s846,s664 |
| s884 | 109 | bary_lo | ZQR | hi | 15687/125000 | s854,lo_DZR,s792,lo_ODZ,lo_OQR,hi_DQR |
| s885 | 110 | bary_lo | OHR | hi | 359247/500000 | s836,lo_YQR,lo_OQR,s791,s858,hi_OHQ |
| s886 | 111 | bary_lo | OYR | hi | 391647/1000000 | s836,lo_YQR,lo_OQR,s791,s836 |
| s888 | 112 | bary_hi | HYR | hi | 56691/200000 | s836,lo_YQR,lo_OQR,s791,lo_OHY,s848 |
| s892 | 114 | bary_hi | DQR | lo | 22523/125000 | s836,lo_YQR,lo_OQR,s791,lo_ODQ,s833 |
| s927 | 119 | bary_lo | CZP | lo | 150517/1000000 | s882,lo_YZP,lo_HZP,lo_HYP,s816,s770 |
| s938 | 122 | bary_lo | HCR | lo | 275473/1000000 | hi_CDQ,s892,lo_CQR,lo_CDR,lo_HCD,s817 |
| s939 | 123 | bary_lo | HDR | hi | 664677/1000000 | hi_CDQ,s892,lo_CQR,lo_CDR,s216,s819 |
| s951 | 127 | bary_hi | OHR | lo | 641177/1000000 | s314,lo_ZQR,lo_CQR,lo_CZR,s831,lo_OHZ,s807 |
| s953 | 129 | bary_lo | HYR | lo | 98153/500000 | s314,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,lo_HYZ,s859 |
| s954 | 130 | bary_hi | CYR | lo | 87133/500000 | s314,lo_ZQR,lo_CQR,lo_CZR,s770,s823 |
| s963 | 0 | sum | OHQ | lo | 46073/50000 | s783,s951,lo_OQR |
| s964 | 0 | sub | HQR | hi | 265823/1000000 | hi_OHQ,s951,lo_OQR |
| s966 | 1 | sub | OHY | hi | 3771/15625 | s885,s953,s791 |
| s968 | 7 | sum | HCZ | lo | 336517/1000000 | s927,lo_HCP,lo_HZP |
| s969 | 8 | sum | HCQ | lo | 138939/250000 | lo_CQR,s938,s783 |
| s972 | 12 | sum | CYQ | lo | 180133/500000 | lo_CQR,s954,lo_YQR |
| s977 | 13 | diff | OYZ | lo | 5101/25000 | lo_OHZ,s814,s966,s810,hi_OHQ |
| s979 | 15 | sumlo | HYQ | lo | 276001/1000000 | s783,lo_OHY,s953,s963,s885 |
| s982 | 17 | sumlo | HCR | lo | 276731/1000000 | lo_CDR,s969,lo_CQR,lo_HCD,hi_CDQ |
| s984 | 20 | sumlo | CYR | lo | 35203/200000 | lo_CQR,s770,s972,lo_CZR,s314 |
| s988 | 22 | sumlo | CYZ | lo | 24801/100000 | s972,lo_HYZ,lo_HCY,lo_YZQ,s848 |
| s991 | 26 | sumlo | HDZ | lo | 245773/1000000 | lo_CDZ,lo_OHZ,s968,lo_ODZ,s18 |
| s994 | 27 | sumlo | DYZ | lo | 107811/1000000 | lo_CDZ,s977,s988,lo_ODZ,s18 |
| s1006 | 34 | sumlo | HQR | lo | 198867/1000000 | s953,lo_OQR,s951,lo_YQR,s886 |
| s1007 | 34 | sumlo | OYR | lo | 292999/1000000 | s953,lo_OQR,s951,lo_YQR,s964 |
| s1016 | 41 | balance_lo | OZR | lo | 197587/1000000 | s815,lo_CDR,lo_ZQR,s809,lo_OQR,lo_CDZ,hi_CDQ |
| s1017 | 42 | balance_lo | CZP | lo | 39883/250000 | s968,lo_DYP,lo_HZP,s820,lo_HCP,s994,s846 |
| s1018 | 43 | balance_lo | DZQ | lo | 22103/125000 | s963,lo_DZR,s1006,lo_ODZ,lo_OQR,s991,s885 |
| s1024 | 45 | balance_lo | OYZ | lo | 226471/1000000 | lo_HYZ,lo_OQR,lo_OHZ,lo_YQR,s966,s884,s964 |
| s1025 | 46 | balance_lo | OCZ | lo | 241559/1000000 | s809,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s1030 | 51 | linear | OHD | lo | 46467/62500 | s991,s878,lo_OHZ |
| s1031 | 52 | linear | HDQ | lo | 13671/31250 | lo_ODQ,s1030,hi_OHQ |
| s1033 | 54 | linear | OHQ | lo | 233261/250000 | s1006,s951,lo_OQR |
| s1035 | 54 | linear | OHR | hi | 708133/1000000 | s1006,hi_OHQ,lo_OQR |
| s1036 | 55 | linear | OCD | lo | 427559/1000000 | lo_CDZ,s1025,lo_ODZ |
| s1037 | 58 | linear | OZQ | hi | 3067/6250 | s1018,hi_ODQ,lo_ODZ |
| s1039 | 59 | linear | ODR | lo | 383587/1000000 | lo_DZR,lo_ODZ,s1016 |
| s1041 | 61 | linear | OYQ | lo | 478999/1000000 | lo_OQR,s1007,lo_YQR |
| s1042 | 62 | linear | OZQ | lo | 383587/1000000 | lo_OQR,s1016,lo_ZQR |
| s1043 | 63 | linear | HCZ | lo | 86383/250000 | s1017,lo_HCP,lo_HZP |
| s1044 | 64 | linear | HCQ | lo | 284299/500000 | lo_CQR,s982,s1006 |
| s1046 | 66 | linear | HDQ | hi | 69981/100000 | hi_DQR,s939,s1006 |
| s1050 | 70 | linear | CYQ | lo | 72403/200000 | lo_CQR,s984,lo_YQR |
| s1058 | 71 | linear | OHC | lo | 427559/1000000 | s1036 |
| s1063 | 74 | bary_hi | OYQ | hi | 22649/40000 | s877,lo_HYZ,s1024,lo_OHY,hi_OHQ,s1037 |
| s1066 | 77 | bary_hi | DYZ | lo | 54233/500000 | s877,lo_HYZ,s1024,lo_OHY,lo_ODZ,s991 |
| s1067 | 78 | bary_hi | DYQ | lo | 223531/500000 | s877,lo_HYZ,s1024,lo_OHY,lo_ODQ,s1031,s1018 |
| s1072 | 80 | bary_lo | OCY | lo | 213449/1000000 | hi_OHQ,s979,s1041,lo_OHY,s1058,lo_OCQ |
| s1075 | 83 | bary_lo | HDY | hi | 123271/250000 | hi_OHQ,s979,s1041,lo_OHY,hi_OHD,s1046 |
| s1077 | 84 | bary_lo | HYQ | hi | 428001/1000000 | hi_OHQ,s979,s1041,lo_OHY,hi_OHQ |
| s1082 | 90 | bary_lo | ODR | hi | 469423/1000000 | hi_OHQ,s1006,lo_OQR,s951,s1030,hi_ODQ |
| s1088 | 92 | bary_hi | HYQ | lo | 71193/250000 | s1035,s953,s1007,lo_OHY,s1033,s1006 |
| s1099 | 103 | bary_hi | CZQ | hi | 157119/500000 | hi_ODQ,s1018,s1042,lo_ODZ,hi_OCQ,hi_CDQ |
| s1105 | 104 | bary_lo | OHZ | hi | 372031/500000 | s1082,lo_DZR,s1016,lo_ODZ,hi_OHD,s1035 |
| s1106 | 106 | bary_lo | ODZ | hi | 44709/250000 | s1082,lo_DZR,s1016,lo_ODZ,s1082 |
| s1110 | 108 | bary_hi | HYZ | hi | 335441/1000000 | s1082,lo_DZR,s1016,lo_ODZ,lo_OHY,s1075,s888 |
| s1113 | 109 | bary_lo | ZQR | hi | 61429/500000 | s1082,lo_DZR,s1016,lo_ODZ,lo_OQR,hi_DQR |
| s1116 | 111 | bary_lo | OYR | hi | 15209/40000 | s1063,lo_YQR,lo_OQR,s1007,s1063 |
| s1120 | 113 | bary_hi | HQR | lo | 10001/50000 | s1063,lo_YQR,lo_OQR,s1007,s1033,s1088 |
| s1124 | 114 | bary_hi | DQR | lo | 93707/500000 | s1063,lo_YQR,lo_OQR,s1007,lo_ODQ,s1067 |
| s1150 | 118 | bary_hi | OHP | lo | 218193/1000000 | s1110,lo_YZP,lo_HZP,lo_HYP,lo_OHY,lo_OHZ |
| s1159 | 119 | bary_lo | CZP | lo | 164557/1000000 | s1110,lo_YZP,lo_HZP,lo_HYP,s1043,s988 |
| s1172 | 122 | bary_lo | HCR | lo | 11183/40000 | hi_CDQ,s1124,lo_CQR,lo_CDR,lo_HCD,s1044 |
| s1173 | 123 | bary_lo | HDR | hi | 660287/1000000 | hi_CDQ,s1124,lo_CQR,lo_CDR,s216,s1046 |
| s1184 | 127 | bary_hi | OHR | lo | 656013/1000000 | s1099,lo_ZQR,lo_CQR,lo_CZR,s1058,lo_OHZ,s1033 |
| s1186 | 128 | bary_hi | OYR | lo | 295893/1000000 | s1099,lo_ZQR,lo_CQR,lo_CZR,s1072,s1024,s1041 |
| s1187 | 129 | bary_lo | HYR | lo | 204803/1000000 | s1099,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,lo_HYZ,s1088 |
| s1188 | 130 | bary_hi | CYR | lo | 180539/1000000 | s1099,lo_ZQR,lo_CQR,lo_CZR,s988,s1050 |
| s1200 | 0 | sum | OHQ | lo | 949033/1000000 | s1120,s1184,lo_OQR |
| s1201 | 0 | sub | HQR | hi | 250987/1000000 | hi_OHQ,s1184,lo_OQR |
| s1202 | 0 | sub | OHR | hi | 35349/50000 | hi_OHQ,s1120,lo_OQR |
| s1204 | 1 | sub | OHY | hi | 51571/250000 | s1202,s1187,s1186 |
| s1206 | 6 | sum | OYQ | lo | 481893/1000000 | lo_OQR,s1186,lo_YQR |
| s1207 | 7 | sum | HCZ | lo | 350557/1000000 | s1159,lo_HCP,lo_HZP |
| s1208 | 8 | sum | HCQ | lo | 114519/200000 | lo_CQR,s1172,s1120 |
| s1209 | 10 | sum | CDY | lo | 112369/250000 | lo_CDZ,s988,s1066 |
| s1210 | 11 | sum | CDQ | lo | 186707/500000 | lo_CDR,lo_CQR,s1124 |
| s1212 | 12 | sum | CYQ | lo | 366539/1000000 | lo_CQR,s1188,lo_YQR |
| s1218 | 13 | diff | OYZ | lo | 116603/500000 | lo_OHZ,s1206,s1204,s1037,hi_OHQ |
| s1220 | 15 | sumlo | HYQ | lo | 150617/500000 | s1120,lo_OHY,s1187,s1200,s1202 |
| s1233 | 22 | sumlo | CYZ | lo | 129571/500000 | s1212,lo_HYZ,lo_HCY,lo_YZQ,s1077 |
| s1236 | 26 | sumlo | HDZ | lo | 249121/1000000 | lo_CDZ,lo_OHZ,s1207,lo_ODZ,s18 |
| s1239 | 27 | sumlo | DYZ | lo | 58711/500000 | lo_CDZ,s1218,s1233,lo_ODZ,s18 |
| s1251 | 34 | sumlo | HQR | lo | 52637/250000 | s1187,lo_OQR,s1184,lo_YQR,s1116 |
| s1252 | 34 | sumlo | OYR | lo | 79741/250000 | s1187,lo_OQR,s1184,lo_YQR,s1201 |
| s1260 | 39 | balance_lo | HDP | lo | 44047/250000 | s1036,lo_HZP,lo_CDZ,s1150,lo_ODZ,lo_HCP,s18 |
| s1261 | 41 | balance_lo | OZR | lo | 200203/1000000 | s1042,lo_CDR,lo_ZQR,s1036,lo_OQR,lo_CDZ,hi_CDQ |
| s1263 | 42 | balance_lo | CZP | lo | 2163/12500 | s1207,lo_DYP,lo_HZP,s1209,lo_HCP,s1239,s1075 |
| s1264 | 43 | balance_lo | DZQ | lo | 46327/250000 | s1200,lo_DZR,s1251,lo_ODZ,lo_OQR,s1236,s1202 |
| s1269 | 44 | balance_lo | OCY | lo | 113673/500000 | s1058,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s1201 |
| s1271 | 45 | balance_lo | OYZ | lo | 64889/250000 | lo_HYZ,lo_OQR,lo_OHZ,lo_YQR,s1204,s1113,s1201 |
| s1272 | 46 | balance_lo | OCZ | lo | 4877/20000 | s1036,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s1274 | 49 | balance_lo | CYZ | lo | 133867/500000 | lo_HCY,lo_ZQR,lo_HYZ,lo_CQR,s1207,lo_YQR,s1201 |
| s1276 | 50 | linear | OHC | hi | 122681/200000 | s1208,hi_OCQ,hi_OHQ |
| s1278 | 51 | linear | OHD | lo | 152857/200000 | s1236,s1106,lo_OHZ |
| s1279 | 52 | linear | HDQ | lo | 91657/200000 | lo_ODQ,s1278,hi_OHQ |
| s1280 | 53 | linear | OHD | hi | 3074/3125 | s1173,s1039,s1202 |
| s1284 | 54 | linear | OHQ | lo | 959561/1000000 | s1251,s1184,lo_OQR |
| s1286 | 54 | linear | OHR | hi | 174113/250000 | s1251,hi_OHQ,lo_OQR |
| s1287 | 55 | linear | OCD | lo | 8597/20000 | lo_CDZ,s1272,lo_ODZ |
| s1288 | 56 | linear | OCD | hi | 57313/100000 | s1210,hi_OCQ,hi_ODQ |
| s1292 | 58 | linear | OZQ | hi | 120559/250000 | s1264,hi_ODQ,lo_ODZ |
| s1294 | 59 | linear | ODR | lo | 386203/1000000 | lo_DZR,lo_ODZ,s1261 |
| s1296 | 61 | linear | OYQ | lo | 126241/250000 | lo_OQR,s1252,lo_YQR |
| s1297 | 62 | linear | OZQ | lo | 386203/1000000 | lo_OQR,s1261,lo_ZQR |
| s1298 | 63 | linear | HCZ | lo | 1122/3125 | s1263,lo_HCP,lo_HZP |
| s1301 | 66 | linear | HDQ | hi | 683739/1000000 | hi_DQR,s1173,s1251 |
| s1314 | 71 | linear | OHC | lo | 8597/20000 | s1287 |
| s1320 | 74 | bary_hi | OYQ | hi | 560317/1000000 | s1105,lo_HYZ,s1271,lo_OHY,hi_OHQ,s1292 |
| s1324 | 78 | bary_hi | DYQ | lo | 18851/40000 | s1105,lo_HYZ,s1271,lo_OHY,lo_ODQ,s1279,s1264 |
| s1337 | 83 | bary_lo | HDY | hi | 459063/1000000 | hi_OHQ,s1220,s1296,lo_OHY,s1280,s1301 |
| s1340 | 85 | bary_lo | HYR | hi | 130209/500000 | hi_OHQ,s1220,s1296,lo_OHY,s1286,s1251 |
| s1345 | 89 | bary_hi | OCR | hi | 203871/1000000 | hi_OHQ,s1251,lo_OQR,s1184,s1276,hi_OCQ |
| s1346 | 90 | bary_lo | ODR | hi | 114651/250000 | hi_OHQ,s1251,lo_OQR,s1184,s1278,hi_ODQ |
| s1356 | 92 | bary_hi | HYQ | lo | 310289/1000000 | s1286,s1187,s1252,lo_OHY,s1284,s1251 |
| s1370 | 103 | bary_hi | CZQ | hi | 77907/250000 | hi_ODQ,s1264,s1297,lo_ODZ,hi_OCQ,hi_CDQ |
| s1376 | 104 | bary_lo | OHZ | hi | 362977/500000 | s1346,lo_DZR,s1261,lo_ODZ,s1280,s1286 |
| s1377 | 105 | bary_hi | OCZ | hi | 47753/125000 | s1346,lo_DZR,s1261,lo_ODZ,s1288,s1345 |
| s1378 | 106 | bary_lo | ODZ | hi | 165401/1000000 | s1346,lo_DZR,s1261,lo_ODZ,s1346 |
| s1385 | 108 | bary_hi | HYZ | hi | 76707/250000 | s1346,lo_DZR,s1261,lo_ODZ,lo_OHY,s1337,s1340 |
| s1389 | 109 | bary_lo | ZQR | hi | 30059/250000 | s1346,lo_DZR,s1261,lo_ODZ,lo_OQR,hi_DQR |
| s1391 | 111 | bary_lo | OYR | hi | 374317/1000000 | s1320,lo_YQR,lo_OQR,s1252,s1320 |
| s1395 | 113 | bary_hi | HQR | lo | 105383/500000 | s1320,lo_YQR,lo_OQR,s1252,s1284,s1356 |
| s1401 | 114 | bary_hi | DQR | lo | 193409/1000000 | s1320,lo_YQR,lo_OQR,s1252,lo_ODQ,s1324 |
| s1421 | 117 | bary_lo | HDP | hi | 273063/1000000 | s1337,lo_DYP,lo_HYP,s1260,s1337 |
| s1432 | 118 | bary_hi | OHP | lo | 11927/50000 | s1385,lo_YZP,lo_HZP,lo_HYP,lo_OHY,lo_OHZ |
| s1446 | 119 | bary_lo | CZP | lo | 23747/125000 | s1385,lo_YZP,lo_HZP,lo_HYP,s1298,s1274 |
| s1463 | 121 | bary_lo | OCR | lo | 115773/1000000 | hi_CDQ,s1401,lo_CQR,lo_CDR,s1287,lo_OCQ |
| s1466 | 123 | bary_lo | HDR | hi | 82091/125000 | hi_CDQ,s1401,lo_CQR,lo_CDR,s216,s1301 |
| s1477 | 127 | bary_hi | OHR | lo | 166691/250000 | s1370,lo_ZQR,lo_CQR,lo_CZR,s1314,lo_OHZ,s1284 |
| s1479 | 128 | bary_hi | OYR | lo | 4997/15625 | s1370,lo_ZQR,lo_CQR,lo_CZR,s1269,s1271,s1296 |
| s1481 | 129 | bary_lo | HYR | lo | 106677/500000 | s1370,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,lo_HYZ,s1356 |
| s1494 | 0 | sum | OHQ | lo | 97053/100000 | s1395,s1477,lo_OQR |
| s1495 | 0 | sub | HQR | hi | 60059/250000 | hi_OHQ,s1477,lo_OQR |
| s1496 | 0 | sub | OHR | hi | 348117/500000 | hi_OHQ,s1395,lo_OQR |
| s1498 | 1 | sub | OHY | hi | 2548/15625 | s1496,s1481,s1479 |
| s1502 | 7 | sum | HCZ | lo | 46997/125000 | s1446,lo_HCP,lo_HZP |
| s1539 | 26 | sumlo | HDZ | lo | 10419/40000 | lo_CDZ,lo_OHZ,s1502,lo_ODZ,s1377 |
| s1557 | 34 | sumlo | HQR | lo | 218667/1000000 | s1481,lo_OQR,s1477,lo_YQR,s1391 |
| s1558 | 34 | sumlo | OYR | lo | 34071/100000 | s1481,lo_OQR,s1477,lo_YQR,s1495 |
| s1559 | 34 | diffhi | YQR | hi | 105109/1000000 | s1495,s1391,s1481,lo_OQR,s1477 |
| s1572 | 39 | balance_lo | OCZ | lo | 129657/500000 | s1287,lo_HZP,lo_CDZ,s1432,lo_ODZ,lo_HCP,s1421 |
| s1574 | 41 | balance_lo | OZR | lo | 20129/100000 | s1297,lo_CDR,lo_ZQR,s1287,lo_OQR,lo_CDZ,hi_CDQ |
| s1577 | 43 | balance_lo | DZQ | lo | 193641/1000000 | s1494,lo_DZR,s1557,lo_ODZ,lo_OQR,s1539,s1496 |
| s1586 | 45 | balance_lo | OYZ | lo | 295051/1000000 | lo_HYZ,lo_OQR,lo_OHZ,lo_YQR,s1498,s1389,s1495 |
| s1592 | 51 | linear | OHD | lo | 394537/500000 | s1539,s1378,lo_OHZ |
| s1593 | 52 | linear | HDQ | lo | 241537/500000 | lo_ODQ,s1592,hi_OHQ |
| s1594 | 53 | linear | OHD | hi | 966759/1000000 | s1466,s1294,s1496 |
| s1601 | 54 | linear | OHQ | lo | 978431/1000000 | s1557,s1477,lo_OQR |
| s1602 | 54 | linear | OQR | hi | 114569/1000000 | s1557,hi_OHQ,s1477 |
| s1603 | 54 | linear | OHR | hi | 688333/1000000 | s1557,hi_OHQ,lo_OQR |
| s1604 | 55 | linear | OCD | lo | 222657/500000 | lo_CDZ,s1572,lo_ODZ |
| s1608 | 57 | linear | OCQ | lo | 23551/250000 | lo_CQR,s1463,s1602 |
| s1612 | 58 | linear | OZQ | hi | 473903/1000000 | s1577,hi_ODQ,lo_ODZ |
| s1618 | 61 | linear | OYQ | lo | 52671/100000 | lo_OQR,s1558,lo_YQR |
| s1619 | 62 | linear | OZQ | lo | 38729/100000 | lo_OQR,s1574,lo_ZQR |
| s1627 | 66 | linear | HDQ | hi | 672061/1000000 | hi_DQR,s1466,s1557 |
| s1629 | 67 | linear | HYQ | lo | 5108/15625 | s1557,s1481,s1559 |
| s1641 | 71 | linear | OHC | lo | 222657/500000 | s1604 |
| s1649 | 74 | bary_hi | OYQ | hi | 274141/500000 | s1376,lo_HYZ,s1586,lo_OHY,hi_OHQ,s1612 |
| s1656 | 78 | bary_hi | DYQ | lo | 251787/500000 | s1376,lo_HYZ,s1586,lo_OHY,lo_ODQ,s1593,s1577 |
| s1667 | 80 | bary_lo | OCY | lo | 15207/62500 | hi_OHQ,s1629,s1618,lo_OHY,s1641,s1608 |
| s1669 | 81 | bary_lo | OYZ | lo | 296167/1000000 | hi_OHQ,s1629,s1618,lo_OHY,lo_OHZ,s1612 |
| s1671 | 83 | bary_lo | HDY | hi | 430151/1000000 | hi_OHQ,s1629,s1618,lo_OHY,s1594,s1627 |
| s1672 | 84 | bary_lo | HYQ | hi | 38029/100000 | hi_OHQ,s1629,s1618,lo_OHY,hi_OHQ |
| s1673 | 85 | bary_lo | HYR | hi | 241431/1000000 | hi_OHQ,s1629,s1618,lo_OHY,s1603,s1557 |
| s1680 | 90 | bary_lo | ODR | hi | 112531/250000 | hi_OHQ,s1557,lo_OQR,s1477,s1592,hi_ODQ |
| s1691 | 91 | bary_lo | OHY | hi | 134269/1000000 | s1603,s1481,s1558,lo_OHY,s1603 |
| s1692 | 92 | bary_hi | HYQ | lo | 66563/200000 | s1603,s1481,s1558,lo_OHY,s1601,s1557 |
| s1704 | 103 | bary_hi | CZQ | hi | 38633/125000 | hi_ODQ,s1577,s1619,lo_ODZ,hi_OCQ,hi_CDQ |
| s1716 | 107 | bary_hi | OZQ | hi | 58743/125000 | s1680,lo_DZR,s1574,lo_ODZ,hi_ODQ,s1602 |
| s1719 | 108 | bary_hi | HYZ | hi | 4423/15625 | s1680,lo_DZR,s1574,lo_ODZ,lo_OHY,s1671,s1673 |
| s1726 | 110 | bary_lo | OHR | hi | 341767/500000 | s1649,lo_YQR,lo_OQR,s1558,s1691,hi_OHQ |
| s1735 | 113 | bary_hi | HQR | lo | 111207/500000 | s1649,lo_YQR,lo_OQR,s1558,s1601,s1692 |
| s1801 | 120 | bary_hi | YZP | hi | 6067/62500 | s1719,lo_YZP,lo_HZP,lo_HYP,s1719 |
| s1818 | 127 | bary_hi | OHR | lo | 136113/200000 | s1704,lo_ZQR,lo_CQR,lo_CZR,s1641,lo_OHZ,s1601 |
| s1820 | 128 | bary_hi | OYR | lo | 344493/1000000 | s1704,lo_ZQR,lo_CQR,lo_CZR,s1667,s1669,s1618 |
| s1824 | 129 | bary_lo | HYR | lo | 221131/1000000 | s1704,lo_ZQR,lo_CQR,lo_CZR,lo_HCY,lo_HYZ,s1692 |
| s1835 | 0 | sum | OHQ | lo | 995979/1000000 | s1735,s1818,lo_OQR |
| s1838 | 1 | sub | OHY | hi | 11791/100000 | s1726,s1824,s1820 |
| s1840 | 6 | sum | OYQ | lo | 530493/1000000 | lo_OQR,s1820,lo_YQR |
| s1863 | 13 | diff | OYZ | lo | 312751/1000000 | lo_OHZ,s1840,s1838,s1716,hi_OHQ |
| s1867 | 14 | diffhi | OZR | hi | 257717/1000000 | s1726,s1716,lo_OHZ,lo_OQR,s1835 |
| s1930 | 23 | diffhi | DYZ | hi | 84993/500000 | s1671,s1801,lo_DYP,lo_HYZ,lo_HYP |
| s1932 | 24 | diff | YZQ | lo | 8817/50000 | s1656,lo_HYZ,s1930,s1672,s1671 |
| s1942 | 25 | sumlo | YZR | lo | 170767/1000000 | s1824,s1932,lo_HYZ,lo_YQR,s1672 |
| s1980 | 28 | sumlo | DYZ | lo | 87241/500000 | lo_DZR,s1863,lo_ODZ,s1942,s1867 |

## Conclusion

{"triangle":"DYZ","lower":"s1980","upper":"s1930"}
