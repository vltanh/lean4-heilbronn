# Leaf rppmmpmppm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"QYZ":1,"OFY":-1}

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
| 14 | extreme | ["DYQ","O","YQO",-1] |
| 15 | extreme | ["DYR","O","YRO",-1] |
| 16 | extreme | ["DZQ","O","ZQO",-1] |
| 17 | interior_line | ["OZ","R","CDQ","R",-1] |
| 18 | interior_line | ["HY","Z","HCDF","Z",1] |
| 19 | interior_line | ["HY","P","HCDF","P",1] |
| 20 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 21 | interior_line | ["CY","P","HCDF","P",-1] |
| 22 | interior_line | ["CZ","R","CDQ","R",-1] |
| 23 | interior_line | ["CP","R","CDQ","R",-1] |
| 24 | interior_line | ["DZ","R","CDQ","R",1] |
| 25 | interior_line | ["DP","R","CDQ","R",1] |
| 26 | interior_line | ["ZQ","Y","OHC","H",1] |
| 27 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 30 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 31 | plu | ["OHDZP","ODP",1] |
| 32 | plu | ["OHDPR","OPR",-1] |
| 33 | plu | ["OHFYP","OFP",-1] |
| 34 | plu | ["OHFZP","OFZ",-1] |
| 35 | plu | ["OHYZP","OYZ",-1] |
| 36 | plu | ["YOHFZ","YFZ",-1] |
| 37 | plu | ["YOHFP","YFP",-1] |
| 38 | plu | ["YODZQ","YDZ",-1] |
| 39 | plu | ["YOZPQ","YZP",1] |
| 40 | plu | ["YOZQR","YZR",1] |
| 41 | plu | ["ZOHDP","ZDP",1] |
| 42 | plu | ["ZOHFQ","ZFQ",-1] |
| 43 | plu | ["ZOHYR","ZHR",-1] |
| 44 | plu | ["ZOHPQ","ZPQ",-1] |
| 45 | plu | ["ZOHPR","ZPR",-1] |
| 46 | plu | ["ZOFYR","ZFR",-1] |
| 47 | plu | ["QOYZR","QZR",-1] |
| 48 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 49 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 50 | capacity | ["ODY","Z","P","DYP",-1,"40801583/63500000","C040"] |
| 51 | capacity | ["OYR","Z","P","YRP",1,"2010130013/3175000000","C059"] |
| 52 | mesh | ["OHDPYZ",1] |
| 53 | mesh | ["ODFPZY",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 823/1000 | ["cost","YZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_ODQ | ODQ | lo | 279/1000 | ["cost","R"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","Y"] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YZ"] |
| lo_OFR | OFR | lo | 347/500 | ["cost","YZ"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 279/1000 | ["cost","Z"] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YZR | YZR | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 2 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 3 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 4 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 5 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 6 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 7 | ["fan","ODY","DYZ","ODZ","OYZ"] | ["fan","ODY","Z"] |
| 8 | ["fan","ODP","DZP","ODZ","OZP"] | ["fan","ODP","Z"] |
| 9 | ["fan","OFZ","FYZ","OFY","OYZ"] | ["fan","OFZ","Y"] |
| 10 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 11 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 12 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 13 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 14 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 15 | ["fan","DYQ","DQR","DYR","YQR"] | ["fan","DYQ","R"] |
| 16 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 17 | ["plu","ODF","OHY","ODY","OHF","OFY","OHD"] | ["plu","OHDFY"] |
| 18 | ["plu","HYQ","OHC","HCQ","OHY","HCY","OHQ"] | ["plu","HOCYQ"] |
| 19 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 20 | ["plu","CFQ","OCD","CDF","OCQ","CDQ","OCF"] | ["plu","CODFQ"] |
| 21 | ["plu","CFP","OCZ","CFZ","OCP","CZP","OCF"] | ["plu","COFZP"] |
| 22 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 23 | ["plu","DFP","OHD","HDF","ODP","HDP","ODF"] | ["plu","DOHFP"] |
| 24 | ["plu","DFZ","ODY","DFY","ODZ","DYZ","ODF"] | ["plu","DOFYZ"] |
| 25 | ["plu","CDQ","DFR","CDF","DQR","CDR","DFQ"] | ["plu","DCFQR"] |
| 26 | ["plu","CDQ","DYR","CDR","DYQ","CDY","DQR"] | ["plu","DCYQR"] |
| 27 | ["plu","CDF","OFP","CFP","ODF","DFP","OCF"] | ["plu","FOCDP"] |
| 28 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 29 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 30 | ["plu","DFY","HFZ","DFZ","HFY","FYZ","HDF"] | ["plu","FHDYZ"] |
| 31 | ["plu","DFY","OHY","HDY","OFY","HFY","ODY"] | ["plu","YOHDF"] |
| 32 | ["plu","HDY","OYZ","DYZ","OHY","HYZ","ODY"] | ["plu","YOHDZ"] |
| 33 | ["plu","FYZ","OHY","HFY","OYZ","HYZ","OFY"] | ["plu","YOHFZ"] |
| 34 | ["plu","HYQ","OYZ","HYZ","OYQ","OHY","YZQ"] | ["plu","YOHZQ"] |
| 35 | ["plu","DYZ","OYQ","DYQ","OYZ","ODY","YZQ"] | ["plu","YODZQ"] |
| 36 | ["plu","FYZ","HDY","DFY","HYZ","DYZ","HFY"] | ["plu","YHDFZ"] |
| 37 | ["plu","DYZ","HYQ","DYQ","HYZ","HDY","YZQ"] | ["plu","YHDZQ"] |
| 38 | ["plu","CDY","YPQ","CYP","DYQ","CYQ","DYP"] | ["plu","YCDPQ"] |
| 39 | ["plu","DYZ","FYQ","DFY","YZQ","DYQ","FYZ"] | ["plu","YDFZQ"] |
| 40 | ["plu","HDZ","OYZ","DYZ","OHZ","HYZ","ODZ"] | ["plu","ZOHDY"] |
| 41 | ["plu","HDZ","OZQ","DZQ","OHZ","HZQ","ODZ"] | ["plu","ZOHDQ"] |
| 42 | ["plu","FYZ","OHZ","HFZ","OYZ","HYZ","OFZ"] | ["plu","ZOHFY"] |
| 43 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 44 | ["plu","FZP","OCZ","CFZ","OZP","CZP","OFZ"] | ["plu","ZOCFP"] |
| 45 | ["plu","DFZ","OYZ","DYZ","OFZ","FYZ","ODZ"] | ["plu","ZODFY"] |
| 46 | ["plu","DYZ","OZQ","DZQ","OYZ","ODZ","YZQ"] | ["plu","ZODYQ"] |
| 47 | ["plu","FZQ","OYZ","FYZ","OZQ","OFZ","YZQ"] | ["plu","ZOFYQ"] |
| 48 | ["plu","FYZ","HDZ","DFZ","HYZ","DYZ","HFZ"] | ["plu","ZHDFY"] |
| 49 | ["plu","CQR","DYR","CDR","YQR","CYR","DQR"] | ["plu","RCDYQ"] |
| 50 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 51 | ["balance",[[1,"HCF","ODZ"],[1,"CFZ","OHD"],[1,"HFZ","OCD"],[-1,"HCZ","ODF"]]] | ["six","ODHCFZ"] |
| 52 | ["balance",[[1,"HFY","ODQ"],[-1,"FYQ","OHD"],[1,"HYQ","ODF"],[1,"HFQ","ODY"]]] | ["six","ODHFYQ"] |
| 53 | ["balance",[[-1,"HYZ","ODQ"],[-1,"YZQ","OHD"],[1,"HZQ","ODY"],[-1,"HYQ","ODZ"]]] | ["six","ODHYZQ"] |
| 54 | ["balance",[[-1,"FYZ","ODQ"],[-1,"YZQ","ODF"],[1,"FZQ","ODY"],[-1,"FYQ","ODZ"]]] | ["six","ODFYZQ"] |
| 55 | ["balance",[[-1,"ODF","HCY"],[1,"DFY","OHC"],[-1,"OFY","HCD"],[-1,"ODY","HCF"]]] | ["six","HCODFY"] |
| 56 | ["balance",[[1,"ODZ","HCQ"],[1,"DZQ","OHC"],[-1,"OZQ","HCD"],[1,"ODQ","HCZ"]]] | ["six","HCODZQ"] |
| 57 | ["balance",[[-1,"CFY","HDP"],[1,"FYP","HCD"],[-1,"CYP","HDF"],[-1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 58 | ["balance",[[1,"OCF","HYP"],[-1,"CFP","OHY"],[-1,"OFP","HCY"],[-1,"OCP","HFY"]]] | ["six","HYOCFP"] |
| 59 | ["balance",[[1,"OYZ","CFQ"],[-1,"YZQ","OCF"],[-1,"OZQ","CFY"],[-1,"OYQ","CFZ"]]] | ["six","CFOYZQ"] |
| 60 | ["balance",[[-1,"DYZ","CFQ"],[1,"YZQ","CDF"],[1,"DZQ","CFY"],[1,"DYQ","CFZ"]]] | ["six","CFDYZQ"] |
| 61 | ["balance",[[1,"DYP","CFQ"],[-1,"YPQ","CDF"],[1,"DPQ","CFY"],[1,"DYQ","CFP"]]] | ["six","CFDYPQ"] |
| 62 | ["balance",[[-1,"ODF","CZP"],[-1,"DFP","OCZ"],[1,"OFP","CDZ"],[-1,"ODP","CFZ"]]] | ["six","CZODFP"] |
| 63 | ["balance",[[1,"ODF","CZQ"],[-1,"DFZ","OCQ"],[-1,"OFZ","CDQ"],[-1,"ODZ","CFQ"]]] | ["six","CQODFZ"] |
| 64 | ["balance",[[1,"CFZ","DYP"],[-1,"FZP","CDY"],[1,"CZP","DFY"],[1,"CFP","DYZ"]]] | ["six","DYCFZP"] |
| 65 | ["balance",[[1,"OHC","DYZ"],[1,"HCY","ODZ"],[-1,"OCY","HDZ"],[1,"OHY","CDZ"]]] | ["six","DZOHCY"] |
| 66 | ["balance",[[-1,"OCF","DYZ"],[-1,"CFY","ODZ"],[-1,"OFY","CDZ"],[1,"OCY","DFZ"]]] | ["six","DZOCFY"] |
| 67 | ["balance",[[1,"OCF","DQR"],[-1,"CFQ","ODR"],[1,"OFQ","CDR"],[1,"OCQ","DFR"]]] | ["six","DROCFQ"] |
| 68 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 69 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 70 | ["balance",[[-1,"OHD","FYZ"],[1,"HDF","OYZ"],[1,"ODF","HYZ"],[1,"OHF","DYZ"]]] | ["six","YZOHDF"] |
| 71 | ["balance",[[1,"HCD","FYZ"],[-1,"CDF","HYZ"],[-1,"HDF","CYZ"],[-1,"HCF","DYZ"]]] | ["six","YZHCDF"] |
| 72 | ["balance",[[1,"ODZ","YPQ"],[-1,"DZP","OYQ"],[1,"OZP","DYQ"],[1,"ODP","YZQ"]]] | ["six","YQODZP"] |
| 73 | ["balance",[[1,"HCD","FZQ"],[-1,"CDF","HZQ"],[-1,"HDF","CZQ"],[-1,"HCF","DZQ"]]] | ["six","ZQHCDF"] |
| 74 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 75 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 76 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 77 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 78 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 79 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 80 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 81 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 82 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 83 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 84 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 85 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 86 | ["linear",{"OFY":-1,"OYP":-1,"OFP":1,"FYP":-1},"0"] | ["affine_quad","OFYP",1] |
| 87 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 88 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 89 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 90 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 91 | ["linear",{"CFZ":-1,"CZP":-1,"CFP":1,"FZP":-1},"0"] | ["affine_quad","CFZP",1] |
| 92 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 93 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 94 | ["linear",{"DYQ":1,"DQR":-1,"DYR":-1,"YQR":-1},"0"] | ["affine_quad","DYQR",1] |
| 95 | ["quad","HDQ","HZQ","93/125"] | ["quad","HZQD","PR"] |
| 96 | ["quad","CFQ","DFQ","93/91"] | ["quad","CQDF","ZPR"] |
| 97 | ["quad","DFQ","FZQ","93/125"] | ["quad","DFZQ","PR"] |
| 98 | ["support","CFP","CYP","FYP","1023/1000"] | ["support_pent","PFHYC"] |
| 99 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 100 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 101 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 102 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 103 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 104 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 105 | ["bary",["CFP",-1],[["OCF",1],["HCF",1],["CDF",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CF"] |
| 106 | ["bary",["DFP",1],[["ODF",1],["HDF",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DF"] |
| 107 | ["bary",["CZQ",1],[["OCQ",1],["HCQ",1],null],"OHQ",["HZQ","OZQ","OHZ"]] | ["bary","OHQ","Z","CQ"] |
| 108 | ["bary",["DFZ",1],[["ODF",1],["HDF",1],["DFQ",1]],"OHQ",["HZQ","OZQ","OHZ"]] | ["bary","OHQ","Z","DF"] |
| 109 | ["bary",["OYQ",1],[null,["OCQ",-1],["OFQ",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","OQ"] |
| 110 | ["bary",["CDY",1],[["OCD",1],null,["CDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","CD"] |
| 111 | ["bary",["DFZ",1],[["ODF",1],["CDF",1],["DFP",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","DF"] |
| 112 | ["bary",["OHY",-1],[null,["OHD",-1],["OHF",-1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OH"] |
| 113 | ["bary",["OCY",1],[null,["OCD",1],["OCF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OC"] |
| 114 | ["bary",["ODY",1],[null,null,["ODF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OD"] |
| 115 | ["bary",["OFY",-1],[null,["ODF",-1],null],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OF"] |
| 116 | ["bary",["HDY",-1],[["OHD",-1],null,["HDF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","HD"] |
| 117 | ["bary",["HYQ",-1],[["OHQ",-1],["HDQ",1],["HFQ",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","HQ"] |
| 118 | ["bary",["DFY",1],[["ODF",1],null,null],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","DF"] |
| 119 | ["bary",["FYQ",-1],[["OFQ",-1],["DFQ",1],null],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","FQ"] |
| 120 | ["bary",["OZQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OQ"] |
| 121 | ["bary",["OZR",1],[null,["ODR",1],["OFR",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OR"] |
| 122 | ["bary",["HZQ",-1],[["OHQ",-1],["HDQ",1],["HFQ",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","HQ"] |
| 123 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],["CFQ",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CQ"] |
| 124 | ["bary",["DFZ",1],[["ODF",1],null,null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","DF"] |
| 125 | ["bary",["DYZ",1],[["ODY",1],null,["DFY",-1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","DY"] |
| 126 | ["bary",["FZQ",-1],[["OFQ",-1],["DFQ",1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","FQ"] |
| 127 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OC"] |
| 128 | ["bary",["OFP",-1],[null,["ODF",-1],null],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OF"] |
| 129 | ["bary",["CDP",1],[["OCD",1],null,["CDF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CD"] |
| 130 | ["bary",["CFP",-1],[["OCF",1],["CDF",-1],null],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CF"] |
| 131 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFY",-1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","OF"] |
| 132 | ["bary",["FYZ",1],[["OFY",-1],["DFY",1],null],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","FY"] |
| 133 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 134 | ["bary",["OYQ",1],[null,["OFQ",1],["OZQ",1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","OQ"] |
| 135 | ["bary",["CYQ",1],[["OCQ",1],["CFQ",1],["CZQ",1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","CQ"] |
| 136 | ["bary",["DYZ",-1],[["ODZ",1],["DFZ",-1],null],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DZ"] |
| 137 | ["bary",["CYP",1],[["OCP",1],["CFP",1],null],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","CP"] |
| 138 | ["bary",["DFZ",1],[["ODF",1],["DFY",1],["DFQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DF"] |
| 139 | ["bary",["DZP",1],[["ODP",1],["DYP",1],["DPR",1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","DP"] |
| 140 | ["bary",["HDP",-1],[null,null,["HDY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HD"] |
| 141 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HD"] |
| 142 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 143 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 144 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFY",-1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","HF"] |
| 145 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 146 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 147 | ["bary",["OCZ",1],[null,["OCF",1],["OCP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","OC"] |
| 148 | ["bary",["HDZ",-1],[["HCD",-1],["HDF",1],["HDP",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","HD"] |
| 149 | ["bary",["CYZ",-1],[null,["CFY",-1],["CYP",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CY"] |
| 150 | ["bary",["DZR",-1],[["CDR",-1],["DFR",-1],["DPR",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","DR"] |
| 151 | ["bary",["OYZ",-1],[["OCY",-1],null,["OYQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","OY"] |
| 152 | ["linear",{"OHD":1,"OHY":-1},"365211/500000"] | ["mesh_ear","OHDPYZ",1,"OHY"] |
| 153 | ["linear",{"ODF":1,"DFP":-1},"365211/500000"] | ["mesh_ear","ODFPZY",-1,"DFP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s24 | 4 | sub | DFY | hi | 281729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s25 | 4 | sub | ODY | hi | 281729/500000 | hi_ODF,lo_DFY,lo_OFY |
| s27 | 5 | sub | DFZ | hi | 281729/500000 | hi_ODF,lo_ODZ,lo_OFZ |
| s32 | 6 | sub | OFP | hi | 281729/500000 | hi_ODF,lo_DFP,lo_ODP |
| s81 | 17 | sumlo | OHY | lo | 109557/1000000 | lo_ODY,lo_OHF,lo_OFY,lo_OHD,hi_ODF |
| s92 | 18 | sumlo | HYQ | lo | 149777/1000000 | lo_HCQ,s81,lo_HCY,lo_OHQ,hi_OHC |
| s95 | 19 | sumlo | HCF | lo | 58273/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s97 | 22 | sumlo | CFY | lo | 99643/1000000 | lo_CDF,lo_HCY,lo_CDY,s95,hi_HCD |
| s105 | 23 | sumlo | DFP | lo | 51243/500000 | lo_HDF,lo_ODP,lo_HDP,lo_ODF,hi_OHD |
| s111 | 24 | diffhi | DYZ | hi | 354239/1000000 | s27,s25,lo_DFY,lo_ODZ,lo_ODF |
| s117 | 25 | sumlo | DFR | lo | 21783/125000 | lo_CDF,lo_DQR,lo_CDR,lo_DFQ,hi_CDQ |
| s122 | 27 | sumlo | OFP | lo | 290221/1000000 | lo_CFP,lo_ODF,s105,lo_OCF,hi_CDF |
| s128 | 28 | diffhi | FZP | hi | 351023/1000000 | s27,s32,s105,lo_OFZ,lo_ODF |
| s129 | 29 | sumlo | HCF | lo | 8187/62500 | lo_CDF,lo_HFY,s97,lo_HDF,s24 |
| s137 | 44 | sumlo | OCZ | lo | 98557/1000000 | lo_CFZ,lo_OZP,lo_CZP,lo_OFZ,s128 |
| s152 | 49 | sumlo | DYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CYR,lo_DQR,hi_CQR |
| s154 | 50 | balance_lo | CFY | lo | 32773/250000 | s129,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s156 | 51 | balance_lo | HCZ | lo | 28523/250000 | s129,lo_ODZ,lo_CFZ,lo_OHD,lo_HFZ,lo_OCD,hi_ODF |
| s158 | 52 | balance_lo | FYQ | lo | 4379/25000 | lo_HFY,lo_ODQ,s92,lo_ODF,lo_HFQ,lo_ODY,hi_OHD |
| s162 | 53 | balance_lo | HZQ | lo | 12913/62500 | lo_HYZ,lo_ODQ,lo_YZQ,lo_OHD,s92,lo_ODZ,s25 |
| s169 | 54 | balance_lo | FZQ | lo | 105399/500000 | lo_FYZ,lo_ODQ,lo_YZQ,lo_ODF,s158,lo_ODZ,s25 |
| s180 | 55 | balance_lo | DFY | lo | 17483/62500 | lo_ODF,lo_HCY,lo_OFY,lo_HCD,lo_ODY,s129,hi_OHC |
| s192 | 57 | balance_lo | FYP | lo | 119069/1000000 | s154,lo_HDP,lo_CYP,lo_HDF,lo_CFP,lo_HDY,hi_HCD |
| s194 | 58 | balance_lo | HYP | lo | 65751/500000 | lo_CFP,s81,s122,lo_HCY,lo_OCP,lo_HFY,hi_OCF |
| s202 | 60 | balance_lo | DYZ | lo | 77693/500000 | lo_YZQ,lo_CDF,lo_DZQ,s154,lo_DYQ,lo_CFZ,hi_CFQ |
| s203 | 60 | balance_lo | CFQ | lo | 179347/500000 | lo_YZQ,lo_CDF,lo_DZQ,s154,lo_DYQ,lo_CFZ,s111 |
| s205 | 61 | balance_lo | YPQ | lo | 2167/15625 | lo_DYP,s203,lo_DPQ,s154,lo_DYQ,lo_CFP,hi_CDF |
| s211 | 62 | balance_lo | CDZ | lo | 199813/1000000 | lo_ODF,lo_CZP,s105,s137,lo_ODP,lo_CFZ,s32 |
| s214 | 63 | balance_lo | CZQ | lo | 9163/62500 | lo_DFZ,lo_OCQ,lo_OFZ,lo_CDQ,lo_ODZ,s203,hi_ODF |
| s225 | 64 | balance_lo | FZP | lo | 52033/500000 | lo_CFZ,lo_DYP,lo_CZP,s180,lo_CFP,s202,hi_CDY |
| s227 | 66 | balance_lo | OCY | lo | 131557/1000000 | lo_OCF,s202,s154,lo_ODZ,lo_OFY,s211,s27 |
| s229 | 67 | balance_lo | ODR | lo | 65239/500000 | lo_OCF,lo_DQR,lo_OFQ,lo_CDR,lo_OCQ,s117,hi_CFQ |
| s230 | 70 | balance_lo | FYZ | lo | 49819/500000 | lo_HDF,lo_OYZ,lo_ODF,lo_HYZ,lo_OHF,s202,hi_OHD |
| s236 | 72 | balance_lo | DZP | lo | 11679/125000 | lo_ODZ,s205,lo_OZP,lo_DYQ,lo_ODP,lo_YZQ,hi_OYQ |
| s240 | 74 | linear | OHC | lo | 167057/500000 | lo_HCY,s227,s81 |
| s247 | 77 | linear | OHP | lo | 334059/1000000 | s194,s81,lo_OYP |
| s256 | 79 | linear | OCF | lo | 355649/1000000 | s154,s227,lo_OFY |
| s258 | 80 | linear | CFQ | hi | 816731/1000000 | s256,hi_OCQ,hi_OFQ |
| s259 | 81 | linear | OCP | lo | 284557/1000000 | lo_CZP,s137,lo_OZP |
| s267 | 82 | linear | ODY | lo | 170693/500000 | s202,lo_ODZ,lo_OYZ |
| s270 | 83 | linear | ODP | lo | 34929/125000 | s236,lo_ODZ,lo_OZP |
| s272 | 84 | linear | ODQ | lo | 158239/500000 | lo_DQR,s229,lo_OQR |
| s273 | 85 | linear | OFZ | lo | 142819/500000 | s230,lo_OFY,lo_OYZ |
| s276 | 86 | linear | OFP | lo | 305069/1000000 | s192,lo_OFY,lo_OYP |
| s297 | 89 | linear | HDY | lo | 158751/500000 | lo_DYP,lo_HDP,s194 |
| s304 | 90 | linear | CDY | lo | 448199/1000000 | s211,lo_CYZ,s202 |
| s309 | 91 | linear | CFP | lo | 145033/500000 | lo_CFZ,lo_CZP,s225 |
| s310 | 92 | linear | CFQ | lo | 225203/500000 | lo_CFZ,s214,s169 |
| s315 | 93 | linear | DFY | lo | 62911/200000 | s105,lo_DYP,s192 |
| s319 | 94 | linear | DYQ | lo | 166923/500000 | lo_DQR,s152,lo_YQR |
| s321 | 96 | quad | DFQ | lo | 205247/1000000 | s258 |
| s323 | 99 | linear | HCD | hi | 907/1000 | lo_HDF |
| s325 | 100 | linear | CDF | hi | 54313/62500 | s129 |
| s332 | 102 | bary_hi | FYP | lo | 79029/500000 | hi_OHC,lo_HCY,s227,s81,s276,lo_HFP,s309 |
| s338 | 103 | bary_lo | OCY | lo | 67637/500000 | hi_OHD,s297,s267,s81,s240,lo_OCD |
| s377 | 104 | bary_hi | OCP | hi | 278109/500000 | hi_OHD,lo_HDP,s270,s247,hi_OHC,hi_OCD |
| s393 | 106 | bary_lo | DFP | lo | 51263/500000 | hi_OHD,lo_HDP,s270,s247,lo_ODF,lo_HDF |
| s411 | 109 | bary_hi | OYQ | hi | 124933/200000 | hi_OCF,s154,lo_OFY,s338,lo_OCQ,hi_OFQ |
| s413 | 110 | bary_hi | CDY | hi | 136247/200000 | hi_OCF,s154,lo_OFY,s338,hi_OCD,s325 |
| s428 | 111 | bary_lo | DFZ | lo | 80471/250000 | s377,lo_CZP,lo_OZP,s137,lo_ODF,lo_CDF,s393 |
| s431 | 112 | bary_hi | OHY | lo | 115759/1000000 | hi_ODF,s315,lo_OFY,s267,lo_OHD,lo_OHF |
| s432 | 113 | bary_lo | OCY | lo | 1863/12500 | hi_ODF,s315,lo_OFY,s267,lo_OCD,s256 |
| s433 | 114 | bary_hi | ODY | hi | 527903/1000000 | hi_ODF,s315,lo_OFY,s267,hi_ODF |
| s439 | 116 | bary_lo | HDY | hi | 100341/200000 | hi_ODF,s315,lo_OFY,s267,hi_OHD,lo_HDF |
| s449 | 118 | bary_hi | DFY | hi | 31317/62500 | hi_ODF,s315,lo_OFY,s267,hi_ODF |
| s455 | 119 | bary_lo | FYQ | hi | 507943/1000000 | hi_ODF,s315,lo_OFY,s267,hi_OFQ,s321 |
| s458 | 120 | bary_lo | OZQ | lo | 16563/100000 | hi_ODF,s428,s273,lo_ODZ,s272,lo_OFQ |
| s459 | 121 | bary_lo | OZR | lo | 21767/200000 | hi_ODF,s428,s273,lo_ODZ,s229,lo_OFR |
| s465 | 123 | bary_lo | CZQ | lo | 92663/500000 | hi_ODF,s428,s273,lo_ODZ,lo_OCQ,lo_CDQ,s310 |
| s467 | 125 | bary_hi | DYZ | hi | 70739/250000 | hi_ODF,s428,s273,lo_ODZ,s433,s315 |
| s477 | 127 | bary_hi | OCP | hi | 273073/500000 | hi_ODF,s393,s276,s270,hi_OCD,hi_OCF |
| s479 | 128 | bary_lo | OFP | hi | 1107/2000 | hi_ODF,s393,s276,s270,hi_ODF |
| s486 | 129 | bary_lo | CDP | lo | 228527/1000000 | hi_ODF,s393,s276,s270,lo_OCD,lo_CDF |
| s487 | 130 | bary_lo | CFP | hi | 118801/250000 | hi_ODF,s393,s276,s270,s256,s325 |
| s517 | 133 | bary_lo | OYR | hi | 536449/1000000 | hi_ODQ,lo_DQR,lo_OQR,s229,s433,s411 |
| s533 | 137 | bary_hi | CYP | hi | 221231/500000 | s479,s332,lo_OYP,lo_OFY,s477,s487 |
| s545 | 138 | bary_lo | DFZ | lo | 1631/5000 | s411,lo_YZQ,s458,lo_OYZ,lo_ODF,s315,s321 |
| s549 | 139 | bary_lo | DZP | lo | 3133/25000 | s517,lo_YZR,s459,lo_OYZ,s270,lo_DYP,lo_DPR |
| s586 | 141 | bary_lo | HDZ | hi | 290001/500000 | s325,s545,lo_CFZ,s211,s323,lo_HDF |
| s588 | 142 | bary_lo | HYZ | lo | 4681/40000 | s325,s545,lo_CFZ,s211,lo_HCY,s297,lo_HFY |
| s604 | 143 | bary_lo | HYP | lo | 2624/15625 | s325,s393,s309,s486,lo_HCY,s297,lo_HFY |
| s613 | 144 | bary_hi | HFZ | lo | 20333/200000 | s413,s202,lo_CYZ,s211,s129,lo_HDF,lo_HFY |
| s635 | 145 | bary_lo | DFR | lo | 99559/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s321 |
| s637 | 146 | bary_lo | DYR | lo | 173167/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s304,s319 |
| s646 | 147 | bary_lo | OCZ | lo | 125291/1000000 | s487,s225,lo_CZP,lo_CFZ,s256,s259 |
| s650 | 150 | bary_hi | DZR | lo | 113767/1000000 | s487,s225,lo_CZP,lo_CFZ,lo_CDR,s635,lo_DPR |
| s705 | 152 | linear | OHD | lo | 846181/1000000 | s431 |
| s712 | 153 | linear | ODF | lo | 208237/250000 | s393 |
| s719 | 2 | sum | OCF | lo | 93283/250000 | s154,s432,lo_OFY |
| s720 | 3 | sum | OCP | lo | 311291/1000000 | lo_CZP,s646,lo_OZP |
| s721 | 8 | sum | ODP | lo | 7783/25000 | s549,lo_ODZ,lo_OZP |
| s726 | 10 | sum | OYQ | lo | 35163/100000 | lo_OYZ,s458,lo_YZQ |
| s730 | 11 | sum | HCQ | lo | 253013/500000 | s465,s156,s162 |
| s732 | 12 | sum | HDY | lo | 22121/62500 | lo_DYP,lo_HDP,s604 |
| s736 | 13 | sum | CYQ | lo | 185663/500000 | lo_CYZ,s465,lo_YZQ |
| s738 | 14 | sum | DFY | lo | 22099/62500 | s393,lo_DYP,s332 |
| s740 | 15 | sum | DYQ | lo | 359167/1000000 | lo_DQR,s637,lo_YQR |
| s741 | 16 | sum | DZQ | lo | 299767/1000000 | lo_DQR,s650,lo_ZQR |
| s752 | 19 | sumlo | HCF | lo | 36471/250000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s439 |
| s756 | 20 | sumlo | OCD | lo | 25811/125000 | lo_CDF,lo_OCQ,lo_CDQ,s719,s258 |
| s757 | 21 | sumlo | OCZ | lo | 26789/200000 | lo_CFZ,s720,lo_CZP,s719,s487 |
| s758 | 22 | sumlo | CFY | lo | 143249/1000000 | lo_CDF,lo_HCY,s304,s752,s323 |
| s761 | 23 | sumlo | DFP | lo | 6651/62500 | lo_HDF,s721,lo_HDP,s712,hi_OHD |
| s768 | 26 | sumlo | DYR | lo | 178773/1000000 | lo_CDR,s740,s304,lo_DQR,hi_CDQ |
| s771 | 29 | sumlo | HCF | lo | 31079/200000 | lo_CDF,lo_HFY,s758,lo_HDF,s449 |
| s774 | 31 | sumlo | OHY | lo | 129053/1000000 | s732,lo_OFY,lo_HFY,s267,s449 |
| s779 | 37 | sumlo | HYQ | lo | 264873/1000000 | s740,s588,s732,lo_YZQ,s467 |
| s784 | 38 | sumlo | YPQ | lo | 197789/1000000 | lo_CYP,s740,s736,lo_DYP,s413 |
| s794 | 50 | balance_lo | CFY | lo | 149717/1000000 | s771,s267,lo_HFY,s756,lo_HCY,s712,hi_OHD |
| s795 | 51 | balance_lo | HCZ | lo | 61007/500000 | s771,lo_ODZ,lo_CFZ,s705,s613,s756,hi_ODF |
| s799 | 53 | balance_lo | HZQ | lo | 265889/1000000 | s588,s272,lo_YZQ,s705,s779,lo_ODZ,s433 |
| s804 | 55 | balance_lo | OHC | lo | 389277/1000000 | s712,lo_HCY,lo_OFY,lo_HCD,s267,s771,s449 |
| s806 | 56 | balance_lo | OZQ | lo | 223117/1000000 | lo_ODZ,s730,s741,s804,s272,s795,s323 |
| s812 | 59 | balance_lo | OYZ | lo | 123427/1000000 | lo_YZQ,s719,s806,s794,s726,lo_CFZ,s258 |
| s813 | 60 | balance_lo | DYZ | lo | 174873/1000000 | lo_YZQ,lo_CDF,s741,s794,s740,lo_CFZ,s258 |
| s817 | 62 | balance_lo | CDZ | lo | 109007/500000 | s712,lo_CZP,s761,s757,s721,lo_CFZ,s479 |
| s820 | 64 | balance_lo | FZP | lo | 67713/500000 | lo_CFZ,lo_DYP,lo_CZP,s738,s309,s813,s413 |
| s821 | 65 | balance_lo | OCY | lo | 180789/1000000 | s804,s813,lo_HCY,lo_ODZ,s774,s817,s586 |
| s824 | 68 | balance_lo | OCD | lo | 209103/1000000 | lo_CDQ,lo_OFY,s272,s794,lo_OCQ,s738,s455 |
| s825 | 69 | balance_lo | FYP | lo | 170059/1000000 | s304,lo_HFP,s732,s309,lo_HCY,s761,s323 |
| s827 | 71 | balance_lo | FYZ | lo | 129039/1000000 | lo_CDF,s588,lo_HDF,lo_CYZ,s771,s813,s323 |
| s833 | 72 | balance_lo | DZP | lo | 32317/250000 | lo_ODZ,s784,lo_OZP,s740,s721,lo_YZQ,s411 |
| s836 | 73 | balance_lo | FZQ | lo | 17113/62500 | lo_CDF,s799,lo_HDF,s465,s771,s741,s323 |
| s839 | 74 | linear | OHC | lo | 201421/500000 | lo_HCY,s821,s774 |
| s841 | 75 | linear | HCQ | hi | 391579/500000 | hi_OCQ,s839,hi_OHQ |
| s845 | 76 | linear | OHZ | lo | 73901/200000 | s588,s774,s812 |
| s846 | 77 | linear | OHP | lo | 389989/1000000 | s604,s774,lo_OYP |
| s850 | 78 | linear | OZQ | hi | 182303/500000 | s799,hi_OHQ,s845 |
| s852 | 78 | linear | HZQ | hi | 203689/500000 | hi_OHQ,s845,s806 |
| s856 | 79 | linear | OCF | lo | 211753/500000 | s794,s821,lo_OFY |
| s859 | 80 | linear | CFQ | hi | 374437/500000 | s856,hi_OCQ,hi_OFQ |
| s866 | 82 | linear | ODY | lo | 3913/10000 | s813,lo_ODZ,s812 |
| s870 | 83 | linear | ODP | lo | 78817/250000 | s833,lo_ODZ,lo_OZP |
| s873 | 85 | linear | OFZ | lo | 172733/500000 | s827,lo_OFY,s812 |
| s875 | 86 | linear | OFP | lo | 356059/1000000 | s825,lo_OFY,lo_OYP |
| s881 | 87 | linear | FZQ | hi | 417797/1000000 | hi_OFQ,s873,s806 |
| s883 | 88 | linear | OYQ | lo | 54943/125000 | s812,s806,lo_YZQ |
| s900 | 90 | linear | CDY | lo | 485887/1000000 | s817,lo_CYZ,s813 |
| s902 | 91 | linear | CFP | lo | 160713/500000 | lo_CFZ,lo_CZP,s820 |
| s903 | 92 | linear | CFQ | lo | 276067/500000 | lo_CFZ,s465,s836 |
| s906 | 93 | linear | DFY | lo | 14779/40000 | s761,lo_DYP,s825 |
| s909 | 94 | linear | DYQ | lo | 364773/1000000 | lo_DQR,s768,lo_YQR |
| s912 | 95 | quad | HDQ | lo | 168311/500000 | s852 |
| s914 | 97 | quad | DFQ | lo | 326203/1000000 | s881 |
| s915 | 98 | support_z | FYP | lo | 45601/250000 | s902,s533 |
| s918 | 100 | linear | CDF | hi | 168921/200000 | s771 |
| s924 | 101 | bary_hi | FYZ | lo | 66221/500000 | hi_OHC,lo_HCY,s821,s774,s873,s613,lo_CFZ |
| s960 | 105 | bary_lo | CFP | hi | 411403/1000000 | hi_OHD,lo_HDP,s870,s846,s856,s771,s918 |
| s964 | 106 | bary_lo | DFP | lo | 3337/31250 | hi_OHD,lo_HDP,s870,s846,s712,lo_HDF |
| s987 | 107 | bary_hi | CZQ | hi | 67/200 | hi_OHQ,s799,s806,s845,hi_OCQ,s841 |
| s989 | 108 | bary_lo | DFZ | lo | 375913/1000000 | hi_OHQ,s799,s806,s845,s712,lo_HDF,s914 |
| s1001 | 113 | bary_lo | OCY | lo | 197939/1000000 | hi_ODF,s906,lo_OFY,s866,s824,s856 |
| s1003 | 114 | bary_hi | ODY | hi | 472983/1000000 | hi_ODF,s906,lo_OFY,s866,hi_ODF |
| s1004 | 115 | bary_lo | OFY | hi | 174683/1000000 | hi_ODF,s906,lo_OFY,s866,hi_ODF |
| s1009 | 116 | bary_lo | HDY | hi | 55423/125000 | hi_ODF,s906,lo_OFY,s866,hi_OHD,lo_HDF |
| s1012 | 117 | bary_lo | HYQ | hi | 409919/1000000 | hi_ODF,s906,lo_OFY,s866,hi_OHQ,s912,lo_HFQ |
| s1019 | 118 | bary_hi | DFY | hi | 225579/500000 | hi_ODF,s906,lo_OFY,s866,hi_ODF |
| s1025 | 119 | bary_lo | FYQ | hi | 443287/1000000 | hi_ODF,s906,lo_OFY,s866,hi_OFQ,s914 |
| s1032 | 122 | bary_lo | HZQ | hi | 198861/500000 | hi_ODF,s989,s873,lo_ODZ,hi_OHQ,s912,lo_HFQ |
| s1034 | 123 | bary_lo | CZQ | lo | 41467/200000 | hi_ODF,s989,s873,lo_ODZ,lo_OCQ,lo_CDQ,s903 |
| s1036 | 124 | bary_hi | DFZ | hi | 15531/31250 | hi_ODF,s989,s873,lo_ODZ,hi_ODF |
| s1042 | 126 | bary_lo | FZQ | hi | 403579/1000000 | hi_ODF,s989,s873,lo_ODZ,hi_OFQ,s914 |
| s1053 | 129 | bary_lo | CDP | lo | 257761/1000000 | hi_ODF,s964,s875,s870,s824,lo_CDF |
| s1067 | 131 | bary_lo | OFZ | hi | 440011/1000000 | s1003,s813,s812,lo_ODZ,hi_ODF,s1004 |
| s1077 | 132 | bary_hi | FYZ | hi | 80631/500000 | s1003,s813,s812,lo_ODZ,lo_OFY,s1019 |
| s1086 | 134 | bary_hi | OYQ | hi | 279033/500000 | s1067,s924,s812,lo_OFY,hi_OFQ,s850 |
| s1089 | 135 | bary_hi | CYQ | hi | 19679/40000 | s1067,s924,s812,lo_OFY,hi_OCQ,s859,s987 |
| s1090 | 136 | bary_lo | DYZ | hi | 214363/1000000 | s1067,s924,s812,lo_OFY,lo_ODZ,s1036 |
| s1106 | 138 | bary_lo | DFZ | lo | 8559/20000 | s1086,lo_YZQ,s806,s812,s712,s906,s914 |
| s1123 | 140 | bary_lo | HDP | hi | 11403/62500 | s1009,lo_DYP,s604,lo_HDP,s1009 |
| s1135 | 142 | bary_lo | HYZ | lo | 121731/1000000 | s918,s1106,lo_CFZ,s817,lo_HCY,s732,lo_HFY |
| s1146 | 143 | bary_lo | HYP | lo | 96151/500000 | s918,s964,s902,s1053,lo_HCY,s732,lo_HFY |
| s1169 | 145 | bary_lo | DFR | lo | 112951/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s914 |
| s1170 | 146 | bary_lo | DYR | lo | 4709/25000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s900,s909 |
| s1180 | 148 | bary_lo | HDZ | hi | 129289/250000 | s960,s820,lo_CZP,lo_CFZ,s323,lo_HDF,s1123 |
| s1183 | 149 | bary_hi | CYZ | lo | 96913/1000000 | s960,s820,lo_CZP,lo_CFZ,s794,lo_CYP |
| s1186 | 150 | bary_hi | DZR | lo | 123043/1000000 | s960,s820,lo_CZP,lo_CFZ,lo_CDR,s1169,lo_DPR |
| s1189 | 151 | bary_hi | OYZ | lo | 124001/1000000 | s1089,lo_YZQ,s1034,s1183,s1001,s883 |
| s1237 | 1 | sum | OHZ | lo | 74957/200000 | s1135,s774,s1189 |
| s1246 | 5 | sub | OFZ | hi | 103627/250000 | hi_ODF,s1106,lo_ODZ |
| s1247 | 7 | sum | ODY | lo | 195937/500000 | s813,lo_ODZ,s1189 |
| s1250 | 9 | sum | OFZ | lo | 349443/1000000 | s924,lo_OFY,s1189 |
| s1252 | 9 | sub | OYZ | hi | 94533/500000 | s1246,s924,lo_OFY |
| s1264 | 12 | sum | HDY | lo | 189151/500000 | lo_DYP,lo_HDP,s1146 |
| s1275 | 14 | sum | DFY | lo | 95547/250000 | s964,lo_DYP,s915 |
| s1276 | 15 | sum | DYQ | lo | 9359/25000 | lo_DQR,s1170,lo_YQR |
| s1277 | 16 | sum | DZQ | lo | 309043/1000000 | lo_DQR,s1186,lo_ZQR |
| s1340 | 30 | sumlo | HFZ | lo | 115517/1000000 | s1106,lo_HFY,s924,lo_HDF,s1019 |
| s1345 | 31 | sumlo | OHY | lo | 158761/1000000 | s1264,lo_OFY,lo_HFY,s1247,s1019 |
| s1347 | 32 | sumlo | OYZ | lo | 34041/200000 | s813,s1345,s1135,s1247,s1009 |
| s1352 | 33 | sumlo | OHY | lo | 168359/1000000 | lo_HFY,s1347,s1135,lo_OFY,s1077 |
| s1357 | 34 | diffhi | OYQ | hi | 254021/500000 | s1012,s1252,s1352,lo_YZQ,s1135 |
| s1365 | 35 | sumlo | DYZ | lo | 197153/1000000 | s1276,s1347,s1247,lo_YZQ,s1357 |
| s1382 | 36 | sumlo | FYZ | lo | 73141/500000 | s1275,s1135,s1365,lo_HFY,s1009 |
| s1412 | 39 | sumlo | DYZ | lo | 101859/500000 | s1275,lo_YZQ,s1276,s1382,s1025 |
| s1416 | 39 | diffhi | FYZ | hi | 158887/1000000 | s1090,s1025,s1275,lo_YZQ,s1276 |
| s1428 | 40 | diffhi | OHZ | hi | 424389/1000000 | s1180,s1252,s1135,lo_ODZ,s1412 |
| s1430 | 41 | sumlo | OZQ | lo | 271779/1000000 | s1277,s1237,s799,lo_ODZ,s1180 |
| s1433 | 42 | sumlo | FYZ | lo | 73281/500000 | s1340,s1347,s1135,s1250,s1428 |
| s1434 | 42 | sumlo | OHZ | lo | 39147/100000 | s1340,s1347,s1135,s1250,s1416 |
| s1439 | 43 | sumlo | OYZ | lo | 174721/1000000 | s1135,s1430,s1434,lo_YZQ,s1032 |
| s1453 | 45 | sumlo | DFZ | lo | 56077/125000 | s1412,s1250,s1433,lo_ODZ,s1252 |
| s1462 | 46 | sumlo | OZQ | lo | 292239/1000000 | s1277,s1439,lo_ODZ,lo_YZQ,s1090 |
| s1469 | 47 | diffhi | FYZ | hi | 74947/500000 | s1042,s1252,s1250,lo_YZQ,s1462 |
| s1511 | 48 | sumlo | FYZ | lo | 75551/500000 | s1453,s1135,s1412,s1340,s1180 |

## Conclusion

{"triangle":"FYZ","lower":"s1511","upper":"s1469"}
