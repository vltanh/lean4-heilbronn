# Leaf rpmmppmmpppm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":1,"QYZ":1,"OFY":1,"OZR":-1}

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
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFZ","O","FZO",-1] |
| 16 | extreme | ["DYQ","O","YQO",-1] |
| 17 | extreme | ["DYR","O","YRO",-1] |
| 18 | interior_line | ["OZ","R","ODQ","Q",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 22 | interior_line | ["CY","P","HCDF","P",-1] |
| 23 | interior_line | ["CZ","R","CDQ","R",-1] |
| 24 | interior_line | ["CP","R","CDQ","R",-1] |
| 25 | interior_line | ["DZ","R","CDQ","R",1] |
| 26 | interior_line | ["DP","R","CDQ","R",1] |
| 27 | interior_line | ["ZP","Y","OHC","Y",1] |
| 28 | interior_line | ["ZQ","Y","OHC","H",1] |
| 29 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 30 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["HFZ","P","Q","FZQ",1,"39077/62500","C072"] |
| 33 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 34 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 35 | plu | ["OHDYZ","OYZ",-1] |
| 36 | plu | ["OHDPR","OPR",-1] |
| 37 | plu | ["OHFYP","OYP",-1] |
| 38 | plu | ["DOHYZ","DYZ",1] |
| 39 | plu | ["DOHZP","DZP",-1] |
| 40 | plu | ["FOHYZ","FYZ",1] |
| 41 | plu | ["FOZPQ","FPQ",1] |
| 42 | plu | ["YODPR","YPR",-1] |
| 43 | plu | ["YOZQR","YZR",1] |
| 44 | plu | ["ZOHYR","ZHR",-1] |
| 45 | plu | ["ZOHPQ","ZPQ",-1] |
| 46 | plu | ["ZOHPR","ZPR",-1] |
| 47 | plu | ["ZOFYR","ZFR",-1] |
| 48 | plu | ["POFZR","PFR",-1] |
| 49 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OHR | OHR | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_ODR | ODR | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","P"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","ZP"] |
| lo_OFR | OFR | lo | 347/500 | ["cost","ZP"] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 279/1000 | ["cost","P"] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 279/1000 | ["cost","P"] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FYQ | FYQ | lo | 279/1000 | ["cost","P"] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_FPR | FPR | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OHR | OHR | hi | 9197/10000 | "C063" |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OFR | OFR | hi | 2865451013/3175000000 | "C064" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_OYR | OYR | hi | 2010130013/3175000000 | "C059" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HDR | HDR | hi | 4843910223/6350000000 | "C069" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 3 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 4 | ["fan","OHP","HYP","OHY","OYP"] | ["fan","OHP","Y"] |
| 5 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 6 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 7 | ["fan","OHR","HZR","OHZ","OZR"] | ["fan","OHR","Z"] |
| 8 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 9 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 10 | ["fan","OFZ","FZP","OFP","OZP"] | ["fan","OFZ","P"] |
| 11 | ["fan","OFQ","FZQ","OFZ","OZQ"] | ["fan","OFQ","Z"] |
| 12 | ["fan","OFQ","FPQ","OFP","OPQ"] | ["fan","OFQ","P"] |
| 13 | ["fan","OFR","FPR","OFP","OPR"] | ["fan","OFR","P"] |
| 14 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 15 | ["fan","OYR","OYZ","OZR","YZR"] | ["fan","OYR","Z"] |
| 16 | ["fan","OPQ","OZP","OZQ","ZPQ"] | ["fan","OPQ","Z"] |
| 17 | ["fan","OPR","OZP","OZR","ZPR"] | ["fan","OPR","Z"] |
| 18 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 19 | ["fan","HFZ","FZP","HFP","HZP"] | ["fan","HFZ","P"] |
| 20 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 21 | ["fan","CPQ","CZP","CZQ","ZPQ"] | ["fan","CPQ","Z"] |
| 22 | ["fan","CPR","CZP","CZR","ZPR"] | ["fan","CPR","Z"] |
| 23 | ["fan","DYQ","DQR","DYR","YQR"] | ["fan","DYQ","R"] |
| 24 | ["fan","FYZ","FYP","FZP","YZP"] | ["fan","FYZ","P"] |
| 25 | ["fan","FYQ","FPQ","FYP","YPQ"] | ["fan","FYQ","P"] |
| 26 | ["plu","OCF","OHQ","OCQ","OHF","OFQ","OHC"] | ["plu","OHCFQ"] |
| 27 | ["plu","OCF","OHR","OCR","OHF","OFR","OHC"] | ["plu","OHCFR"] |
| 28 | ["plu","OCY","OHR","OCR","OHY","OHC","OYR"] | ["plu","OHCYR"] |
| 29 | ["plu","OCZ","OHR","OCR","OHZ","OHC","OZR"] | ["plu","OHCZR"] |
| 30 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 31 | ["plu","ODR","OZQ","ODQ","OZR","ODZ","OQR"] | ["plu","ODZQR"] |
| 32 | ["plu","OFQ","OYP","OFP","OYQ","OFY","OPQ"] | ["plu","OFYPQ"] |
| 33 | ["plu","OFR","OZQ","OFQ","OZR","OFZ","OQR"] | ["plu","OFZQR"] |
| 34 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 35 | ["plu","HFY","OHZ","HFZ","OHY","HYZ","OHF"] | ["plu","HOFYZ"] |
| 36 | ["plu","HCP","HDZ","HCD","HZP","HCZ","HDP"] | ["plu","HCDZP"] |
| 37 | ["plu","CDP","HCZ","CDZ","HCP","CZP","HCD"] | ["plu","CHDZP"] |
| 38 | ["plu","HFP","OFZ","FZP","OHF","HFZ","OFP"] | ["plu","FOHZP"] |
| 39 | ["plu","DFP","OFZ","DFZ","OFP","FZP","ODF"] | ["plu","FODZP"] |
| 40 | ["plu","FPQ","OFZ","FZP","OFQ","FZQ","OFP"] | ["plu","FOZPQ"] |
| 41 | ["plu","HYR","OCY","CYR","OHY","HCY","OYR"] | ["plu","YOHCR"] |
| 42 | ["plu","HFZ","OZP","FZP","OHZ","HZP","OFZ"] | ["plu","ZOHFP"] |
| 43 | ["plu","FZQ","OHZ","HFZ","OZQ","HZQ","OFZ"] | ["plu","ZOHFQ"] |
| 44 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 45 | ["plu","HZR","OZQ","HZQ","OZR","OHZ","ZQR"] | ["plu","ZOHQR"] |
| 46 | ["plu","DZR","OZQ","DZQ","OZR","ODZ","ZQR"] | ["plu","ZODQR"] |
| 47 | ["plu","FZQ","OYZ","FYZ","OZQ","OFZ","YZQ"] | ["plu","ZOFYQ"] |
| 48 | ["plu","FZR","OZQ","FZQ","OZR","OFZ","ZQR"] | ["plu","ZOFQR"] |
| 49 | ["plu","FZQ","YZR","FYZ","ZQR","FZR","YZQ"] | ["plu","ZFYQR"] |
| 50 | ["plu","HCP","OZP","CZP","OHP","HZP","OCP"] | ["plu","POHCZ"] |
| 51 | ["plu","HFP","OZP","FZP","OHP","HZP","OFP"] | ["plu","POHFZ"] |
| 52 | ["plu","FPQ","OZP","FZP","OPQ","OFP","ZPQ"] | ["plu","POFZQ"] |
| 53 | ["plu","DFP","YPQ","DPQ","FYP","DYP","FPQ"] | ["plu","PDFYQ"] |
| 54 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 55 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 56 | ["plu","CYQ","ODQ","CDQ","OYQ","DYQ","OCQ"] | ["plu","QOCDY"] |
| 57 | ["plu","CPQ","ODQ","CDQ","OPQ","DPQ","OCQ"] | ["plu","QOCDP"] |
| 58 | ["plu","DPQ","OFQ","DFQ","OPQ","FPQ","ODQ"] | ["plu","QODFP"] |
| 59 | ["plu","DZQ","OQR","DQR","OZQ","ODQ","ZQR"] | ["plu","QODZR"] |
| 60 | ["balance",[[-1,"HCZ","OFP"],[-1,"CZP","OHF"],[-1,"HZP","OCF"],[1,"HCP","OFZ"]]] | ["six","OFHCZP"] |
| 61 | ["balance",[[-1,"YZQ","OFR"],[-1,"ZQR","OFY"],[-1,"YQR","OFZ"],[1,"YZR","OFQ"]]] | ["six","OFYZQR"] |
| 62 | ["balance",[[1,"HCZ","OPR"],[-1,"CZP","OHR"],[-1,"HZP","OCR"],[-1,"HCP","OZR"]]] | ["six","ORHCZP"] |
| 63 | ["balance",[[-1,"HYZ","OQR"],[-1,"YZQ","OHR"],[1,"HZQ","OYR"],[-1,"HYQ","OZR"]]] | ["six","ORHYZQ"] |
| 64 | ["balance",[[-1,"CYZ","OPR"],[1,"YZP","OCR"],[1,"CZP","OYR"],[1,"CYP","OZR"]]] | ["six","ORCYZP"] |
| 65 | ["balance",[[-1,"FYZ","OQR"],[-1,"YZQ","OFR"],[1,"FZQ","OYR"],[-1,"FYQ","OZR"]]] | ["six","ORFYZQ"] |
| 66 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 67 | ["balance",[[1,"OCP","HYQ"],[-1,"CPQ","OHY"],[-1,"OPQ","HCY"],[-1,"OCQ","HYP"]]] | ["six","HYOCPQ"] |
| 68 | ["balance",[[1,"OCP","HYR"],[-1,"CPR","OHY"],[-1,"OPR","HCY"],[-1,"OCR","HYP"]]] | ["six","HYOCPR"] |
| 69 | ["balance",[[1,"OFY","DPQ"],[-1,"FYQ","ODP"],[1,"OYQ","DFP"],[1,"OFQ","DYP"]]] | ["six","DPOFYQ"] |
| 70 | ["balance",[[1,"FYZ","DQR"],[1,"YZQ","DFR"],[-1,"FZQ","DYR"],[1,"FYQ","DZR"]]] | ["six","DRFYZQ"] |
| 71 | ["balance",[[-1,"OYZ","FPQ"],[1,"YZQ","OFP"],[1,"OZQ","FYP"],[1,"OYQ","FZP"]]] | ["six","FPOYZQ"] |
| 72 | ["balance",[[1,"ODF","YZQ"],[1,"DFQ","OYZ"],[-1,"OFQ","DYZ"],[1,"ODQ","FYZ"]]] | ["six","YZODFQ"] |
| 73 | ["balance",[[1,"OHD","YPQ"],[-1,"HDQ","OYP"],[-1,"ODQ","HYP"],[-1,"OHQ","DYP"]]] | ["six","YPOHDQ"] |
| 74 | ["balance",[[-1,"ODF","YPQ"],[1,"DFQ","OYP"],[1,"OFQ","DYP"],[1,"ODQ","FYP"]]] | ["six","YPODFQ"] |
| 75 | ["balance",[[-1,"OHZ","YQR"],[1,"HZR","OYQ"],[-1,"OZR","HYQ"],[-1,"OHR","YZQ"]]] | ["six","YQOHZR"] |
| 76 | ["balance",[[-1,"ODZ","YQR"],[1,"DZR","OYQ"],[-1,"OZR","DYQ"],[-1,"ODR","YZQ"]]] | ["six","YQODZR"] |
| 77 | ["balance",[[-1,"OFZ","YQR"],[1,"FZR","OYQ"],[-1,"OZR","FYQ"],[-1,"OFR","YZQ"]]] | ["six","YQOFZR"] |
| 78 | ["balance",[[1,"CDZ","YPQ"],[-1,"DZP","CYQ"],[1,"CZP","DYQ"],[1,"CDP","YZQ"]]] | ["six","YQCDZP"] |
| 79 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 80 | ["balance",[[1,"OHC","FZP"],[-1,"HCF","OZP"],[1,"OCF","HZP"],[1,"OHF","CZP"]]] | ["six","ZPOHCF"] |
| 81 | ["balance",[[1,"OHC","ZPR"],[-1,"HCR","OZP"],[1,"OCR","HZP"],[1,"OHR","CZP"]]] | ["six","ZPOHCR"] |
| 82 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 83 | ["balance",[[-1,"OCP","ZQR"],[-1,"CPQ","OZR"],[1,"OPQ","CZR"],[-1,"OCQ","ZPR"]]] | ["six","ZROCPQ"] |
| 84 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 85 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 86 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 87 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 88 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 89 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 90 | ["linear",{"OHZ":-1,"OZR":-1,"OHR":1,"HZR":-1},"0"] | ["affine_quad","OHZR",1] |
| 91 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 92 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 93 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 94 | ["linear",{"ODZ":-1,"OZR":-1,"ODR":1,"DZR":-1},"0"] | ["affine_quad","ODZR",1] |
| 95 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 96 | ["linear",{"OFZ":1,"OZP":-1,"OFP":-1,"FZP":-1},"0"] | ["affine_quad","OFZP",-1] |
| 97 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 98 | ["linear",{"OFZ":-1,"OZR":-1,"OFR":1,"FZR":-1},"0"] | ["affine_quad","OFZR",1] |
| 99 | ["linear",{"OFP":-1,"OPQ":-1,"OFQ":1,"FPQ":-1},"0"] | ["affine_quad","OFPQ",1] |
| 100 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 101 | ["linear",{"OYZ":-1,"OZR":-1,"OYR":1,"YZR":-1},"0"] | ["affine_quad","OYZR",1] |
| 102 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 103 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 104 | ["linear",{"HFZ":1,"HZP":-1,"HFP":-1,"FZP":-1},"0"] | ["affine_quad","HFZP",-1] |
| 105 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 106 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 107 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 108 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 109 | ["support","CDP","OCD","ODP","1023/1000"] | ["support_pent","DPYOC"] |
| 110 | ["support","HFZ","HZR","HFR","1023/1000"] | ["support_pent","HFDRZ"] |
| 111 | ["support","DZQ","DPQ","ZPQ","1023/1000"] | ["support_pent","QZYPD"] |
| 112 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 113 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 114 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 115 | ["bary",["HYR",-1],[["OHR",-1],null,["HCR",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HR"] |
| 116 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 117 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["CDQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DQ"] |
| 118 | ["bary",["YZP",1],[["OZP",1],["HZP",1],["CZP",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","ZP"] |
| 119 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CQ"] |
| 120 | ["bary",["OHP",-1],[null,null,["OHD",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OH"] |
| 121 | ["bary",["CDP",1],[["OCD",1],["HCD",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CD"] |
| 122 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DQ"] |
| 123 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DF"] |
| 124 | ["bary",["OHY",-1],[null,null,["OHZ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OH"] |
| 125 | ["bary",["OYQ",1],[null,["OHQ",1],["OZQ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OQ"] |
| 126 | ["bary",["HFY",-1],[["OHF",-1],null,["HFZ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HF"] |
| 127 | ["bary",["HYR",-1],[["OHR",-1],null,["HZR",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HR"] |
| 128 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DQ"] |
| 129 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],["CZP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","CZ"] |
| 130 | ["bary",["ODY",1],[null,["OHD",1],["ODQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OD"] |
| 131 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","FQ"] |
| 132 | ["bary",["OCY",1],[null,["OHC",1],["OCR",1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","OC"] |
| 133 | ["bary",["HDY",-1],[["OHD",-1],null,["HDR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","HD"] |
| 134 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["DFR",1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","DF"] |
| 135 | ["bary",["OCZ",1],[null,["OHC",1],["OCR",1]],"OHR",["HZR","OZR","OHZ"]] | ["bary","OHR","Z","OC"] |
| 136 | ["bary",["OFZ",-1],[null,["OHF",1],["OFR",-1]],"OHR",["HZR","OZR","OHZ"]] | ["bary","OHR","Z","OF"] |
| 137 | ["bary",["OZQ",1],[null,["OHQ",1],["OQR",1]],"OHR",["HZR","OZR","OHZ"]] | ["bary","OHR","Z","OQ"] |
| 138 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 139 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OF"] |
| 140 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","CQ"] |
| 141 | ["bary",["YZP",-1],[["OYP",-1],["DYP",-1],["YPQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","YP"] |
| 142 | ["bary",["OHR",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OH"] |
| 143 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 144 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 145 | ["bary",["OZQ",1],[null,["ODQ",1],["OQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OQ"] |
| 146 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],["CQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","CQ"] |
| 147 | ["bary",["OCP",1],[null,["OCF",1],["OCZ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","OC"] |
| 148 | ["bary",["OZP",1],[null,["OFZ",1],null],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","OZ"] |
| 149 | ["bary",["OPQ",1],[null,["OFQ",1],["OZQ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","OQ"] |
| 150 | ["bary",["OPR",1],[null,["OFR",1],["OZR",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","OR"] |
| 151 | ["bary",["HFP",-1],[["OHF",-1],null,["HFZ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","HF"] |
| 152 | ["bary",["CPQ",1],[["OCQ",1],["CFQ",1],["CZQ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","CQ"] |
| 153 | ["bary",["DFP",1],[["ODF",1],null,["DFZ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","DF"] |
| 154 | ["bary",["DPQ",-1],[["ODQ",-1],["DFQ",-1],["DZQ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","DQ"] |
| 155 | ["bary",["FPQ",-1],[["OFQ",-1],null,["FZQ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","FQ"] |
| 156 | ["bary",["FPR",-1],[["OFR",-1],null,["FZR",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","FR"] |
| 157 | ["bary",["YPQ",1],[["OYQ",-1],["FYQ",1],["YZQ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","YQ"] |
| 158 | ["bary",["ZPQ",1],[["OZQ",-1],["FZQ",1],null],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","ZQ"] |
| 159 | ["bary",["OCZ",1],[null,["OCF",1],["OCQ",1]],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","OC"] |
| 160 | ["bary",["OYZ",-1],[null,["OFY",-1],["OYQ",-1]],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","OY"] |
| 161 | ["bary",["DZQ",-1],[["ODQ",-1],["DFQ",-1],null],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","DQ"] |
| 162 | ["bary",["FZQ",-1],[["OFQ",-1],null,null],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","FQ"] |
| 163 | ["bary",["OYP",-1],[null,["OFY",-1],["OYQ",-1]],"OFQ",["FPQ","OPQ","OFP"]] | ["bary","OFQ","P","OY"] |
| 164 | ["bary",["OPQ",1],[null,["OFQ",1],null],"OFQ",["FPQ","OPQ","OFP"]] | ["bary","OFQ","P","OQ"] |
| 165 | ["bary",["OPR",1],[null,["OFR",1],["OQR",-1]],"OFQ",["FPQ","OPQ","OFP"]] | ["bary","OFQ","P","OR"] |
| 166 | ["bary",["CDP",1],[["OCD",1],["CDF",1],["CDQ",-1]],"OFQ",["FPQ","OPQ","OFP"]] | ["bary","OFQ","P","CD"] |
| 167 | ["bary",["OYZ",-1],[null,["OFY",-1],["OYR",-1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","OY"] |
| 168 | ["bary",["OZQ",1],[null,["OFQ",1],["OQR",1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","OQ"] |
| 169 | ["bary",["HZR",-1],[["OHR",-1],["HFR",1],null],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","HR"] |
| 170 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 171 | ["bary",["DFZ",1],[["ODF",1],["DFY",1],["DFQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DF"] |
| 172 | ["bary",["DZP",1],[["ODP",1],["DYP",1],["DPQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DP"] |
| 173 | ["bary",["OHZ",-1],[null,["OHY",-1],["OHR",-1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","OH"] |
| 174 | ["bary",["OFZ",-1],[null,["OFY",1],["OFR",-1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","OF"] |
| 175 | ["bary",["CZQ",1],[["OCQ",1],["CPQ",1],["CQR",1]],"OPR",["ZPR","OZR","OZP"]] | ["bary","OPR","Z","CQ"] |
| 176 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 177 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |
| 178 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 179 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OC"] |
| 180 | ["bary",["OPQ",1],[["OHQ",1],["ODQ",1],["OYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OQ"] |
| 181 | ["bary",["ZPQ",1],[["HZQ",1],["DZQ",1],["YZQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZQ"] |
| 182 | ["bary",["ZPR",1],[["HZR",1],["DZR",1],["YZR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZR"] |
| 183 | ["bary",["HCP",1],[null,["HCD",1],["HCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HC"] |
| 184 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 185 | ["bary",["OHP",-1],[null,["OHF",-1],["OHZ",-1]],"HFZ",["FZP","HZP","HFP"]] | ["bary","HFZ","P","OH"] |
| 186 | ["bary",["DFP",1],[["HDF",1],null,["DFZ",1]],"HFZ",["FZP","HZP","HFP"]] | ["bary","HFZ","P","DF"] |
| 187 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 188 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 189 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 190 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 191 | ["bary",["CPR",-1],[null,["CDP",-1],["CPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CP"] |
| 192 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 193 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 194 | ["bary",["HDZ",-1],[["HCD",-1],["HDY",-1],["HDQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HD"] |
| 195 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 196 | ["bary",["DZQ",-1],[["CDQ",-1],["DPQ",-1],null],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","DQ"] |
| 197 | ["bary",["OHZ",-1],[["OHC",-1],["OHP",-1],["OHR",-1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","OH"] |
| 198 | ["bary",["OYZ",-1],[["OCY",-1],["OYP",-1],["OYR",-1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","OY"] |
| 199 | ["bary",["OZP",1],[["ODZ",1],["OFZ",1],["OYZ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OZ"] |
| 200 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],["YZQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZQ"] |
| 201 | ["bary",["ZPR",1],[["DZR",1],["FZR",1],["YZR",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZR"] |
| 202 | ["bary",["OFR",-1],[["ODF",-1],["OFY",1],["OFQ",-1]],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OF"] |
| 203 | ["bary",["OYR",-1],[["ODY",-1],null,["OYQ",-1]],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OY"] |
| 204 | ["bary",["OCR",1],[["OCD",1],["OCZ",1],["OCQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OC"] |
| 205 | ["bary",["OZR",-1],[["ODZ",1],null,["OZQ",-1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OZ"] |
| 206 | ["bary",["OQR",1],[["ODQ",1],["OZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OQ"] |
| 207 | ["bary",["HDR",-1],[null,["HDZ",-1],["HDQ",-1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","HD"] |
| 208 | ["bary",["HYR",1],[["HDY",1],["HYZ",1],["HYQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","HY"] |
| 209 | ["bary",["DFR",1],[null,["DFZ",1],["DFQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","DF"] |
| 210 | ["bary",["CDP",1],[["CDF",1],["CDY",1],["CDQ",-1]],"FYQ",["YPQ","FPQ","FYP"]] | ["bary","FYQ","P","CD"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s2 | 1 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s13 | 6 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s22 | 8 | sub | DZQ | hi | 35909/62500 | hi_ODQ,lo_ODZ,lo_OZQ |
| s24 | 8 | sub | OZQ | hi | 6071/15625 | hi_ODQ,lo_DZQ,lo_ODZ |
| s25 | 9 | sub | ODR | hi | 35909/62500 | hi_ODQ,lo_DQR,lo_OQR |
| s31 | 11 | sub | FZQ | hi | 30719/50000 | hi_OFQ,lo_OFZ,lo_OZQ |
| s40 | 13 | sub | OPR | hi | 143301/200000 | hi_OFR,lo_FPR,lo_OFP |
| s91 | 30 | sumlo | ODY | lo | 92689/500000 | lo_ODF,lo_OYQ,lo_ODQ,lo_OFY,hi_OFQ |
| s92 | 31 | sumlo | OZQ | lo | 127389/1000000 | lo_ODQ,lo_OZR,lo_ODZ,lo_OQR,s25 |
| s95 | 34 | sumlo | HCF | lo | 219573/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s123 | 41 | sumlo | OCY | lo | 23687/250000 | lo_CYR,lo_OHY,lo_HCY,lo_OYR,s13 |
| s126 | 47 | sumlo | OYZ | lo | 50041/500000 | lo_FYZ,s92,lo_OFZ,lo_YZQ,s31 |
| s130 | 54 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s133 | 55 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s134 | 56 | sumhi | CYQ | hi | 120911/200000 | hi_CDQ,hi_OYQ,hi_DYQ,hi_OCQ,lo_ODQ |
| s140 | 59 | sumlo | OQR | lo | 33239/250000 | lo_DQR,s92,lo_ODQ,lo_ZQR,s22 |
| s147 | 61 | balance_lo | YZR | lo | 50253/500000 | lo_YZQ,lo_OFR,lo_ZQR,lo_OFY,lo_YQR,lo_OFZ,hi_OFQ |
| s153 | 62 | balance_lo | HCZ | lo | 114221/1000000 | lo_CZP,lo_OHR,lo_HZP,lo_OCR,lo_HCP,lo_OZR,s40 |
| s155 | 65 | balance_lo | FZQ | lo | 100759/500000 | lo_FYZ,s140,lo_YZQ,lo_OFR,lo_FYQ,lo_OZR,hi_OYR |
| s157 | 66 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s170 | 72 | balance_lo | DYZ | lo | 245717/1000000 | lo_ODF,lo_YZQ,lo_DFQ,s126,lo_ODQ,lo_FYZ,hi_OFQ |
| s174 | 74 | balance_lo | YPQ | lo | 29447/200000 | lo_DFQ,lo_OYP,lo_OFQ,lo_DYP,lo_ODQ,lo_FYP,hi_ODF |
| s175 | 75 | balance_lo | HZR | lo | 197/1250 | lo_OHZ,lo_YQR,lo_OZR,s157,lo_OHR,lo_YZQ,hi_OYQ |
| s177 | 77 | balance_lo | FZR | lo | 5247/31250 | lo_OFZ,lo_YQR,lo_OZR,lo_FYQ,lo_OFR,lo_YZQ,hi_OYQ |
| s178 | 78 | balance_lo | DZP | lo | 108487/1000000 | lo_CDZ,s174,lo_CZP,lo_DYQ,lo_CDP,lo_YZQ,s134 |
| s179 | 79 | balance_lo | OZP | lo | 123973/1000000 | lo_OHC,s178,lo_OCD,lo_HZP,lo_OHD,lo_CZP,hi_HCD |
| s182 | 82 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s188 | 85 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s197 | 91 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s198 | 93 | linear | DFQ | lo | 5267/40000 | lo_ODF,lo_ODQ,hi_OFQ |
| s201 | 95 | linear | ODR | hi | 133647/250000 | lo_DQR,hi_ODQ,s140 |
| s202 | 96 | linear | OFZ | lo | 309973/1000000 | lo_FZP,lo_OFP,s179 |
| s212 | 101 | linear | OYR | lo | 73397/250000 | s126,lo_OZR,s147 |
| s223 | 103 | linear | HCR | lo | 364821/1000000 | lo_CZR,s153,s175 |
| s229 | 105 | linear | CDY | lo | 431717/1000000 | lo_CDZ,lo_CYZ,s170 |
| s248 | 108 | quad | CDP | lo | 81/250 | hi_CDQ |
| s251 | 109 | support_z | ODP | lo | 141589/1000000 | s248,hi_OCD |
| s255 | 112 | linear | OHC | lo | 367/1000 | s197 |
| s256 | 113 | linear | HCD | hi | 907/1000 | lo_HDF |
| s257 | 114 | linear | CDF | hi | 780427/1000000 | s95 |
| s259 | 115 | bary_hi | HYR | lo | 155071/1000000 | hi_OHC,lo_HCY,s123,lo_OHY,lo_OHR,s223 |
| s260 | 116 | bary_hi | CDY | hi | 725679/1000000 | hi_OHC,lo_HCY,s123,lo_OHY,hi_OCD,s256 |
| s263 | 117 | bary_hi | DYQ | lo | 356043/1000000 | hi_OHC,lo_HCY,s123,lo_OHY,lo_ODQ,s188,lo_CDQ |
| s274 | 119 | bary_hi | CYQ | hi | 601447/1000000 | hi_OHD,lo_HDY,s91,lo_OHY,hi_OCQ,s130,hi_CDQ |
| s281 | 120 | bary_lo | OHP | hi | 765411/1000000 | hi_OHD,lo_HDP,s251,lo_OHP,hi_OHD |
| s285 | 121 | bary_hi | CDP | hi | 623159/1000000 | hi_OHD,lo_HDP,s251,lo_OHP,hi_OCD,s256 |
| s291 | 122 | bary_lo | DPQ | hi | 111481/200000 | hi_OHD,lo_HDP,s251,lo_OHP,hi_ODQ,hi_HDQ |
| s299 | 123 | bary_hi | DFY | hi | 353133/500000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,hi_ODF,hi_HDF |
| s306 | 129 | bary_lo | CYZ | lo | 47789/500000 | s281,lo_HYP,lo_OYP,lo_OHY,lo_OCZ,s153,lo_CZP |
| s319 | 132 | bary_lo | OCY | lo | 63279/500000 | hi_OHR,s259,s212,lo_OHY,s255,lo_OCR |
| s321 | 133 | bary_lo | HDY | hi | 131359/200000 | hi_OHR,s259,s212,lo_OHY,hi_OHD,hi_HDR |
| s342 | 138 | bary_lo | OHZ | hi | 633157/1000000 | hi_ODQ,lo_DZQ,s92,lo_ODZ,hi_OHD,hi_OHQ |
| s344 | 139 | bary_lo | OFZ | hi | 154001/250000 | hi_ODQ,lo_DZQ,s92,lo_ODZ,hi_ODF,hi_OFQ |
| s351 | 140 | bary_hi | CZQ | hi | 282801/1000000 | hi_ODQ,lo_DZQ,s92,lo_ODZ,hi_OCQ,hi_CDQ |
| s356 | 141 | bary_hi | YZP | lo | 99631/1000000 | hi_ODQ,lo_DZQ,s92,lo_ODZ,lo_OYP,lo_DYP,s174 |
| s358 | 142 | bary_lo | OHR | hi | 877719/1000000 | hi_ODQ,lo_DQR,s140,lo_ODR,hi_OHD,hi_OHQ |
| s361 | 143 | bary_lo | OFR | hi | 856863/1000000 | hi_ODQ,lo_DQR,s140,lo_ODR,hi_ODF,hi_OFQ |
| s362 | 144 | bary_lo | OYR | hi | 74653/125000 | hi_ODQ,lo_DQR,s140,lo_ODR,s2,hi_OYQ |
| s379 | 145 | bary_lo | OZQ | lo | 71931/500000 | s201,lo_DZR,lo_OZR,lo_ODZ,lo_ODQ,s140 |
| s382 | 146 | bary_lo | CZQ | lo | 125357/1000000 | s201,lo_DZR,lo_OZR,lo_ODZ,lo_OCQ,lo_CDQ,lo_CQR |
| s402 | 152 | bary_hi | CPQ | hi | 154807/250000 | s344,lo_FZP,s179,lo_OFP,hi_OCQ,s133,s351 |
| s403 | 154 | bary_hi | DPQ | lo | 238813/1000000 | s344,lo_FZP,s179,lo_OFP,lo_ODQ,s198,lo_DZQ |
| s406 | 155 | bary_hi | FPQ | lo | 135199/1000000 | s344,lo_FZP,s179,lo_OFP,lo_OFQ,s155 |
| s407 | 156 | bary_hi | FPR | lo | 32531/250000 | s344,lo_FZP,s179,lo_OFP,lo_OFR,s177 |
| s424 | 167 | bary_hi | OYZ | lo | 1163/10000 | s361,s177,lo_OZR,s202,lo_OFY,s212 |
| s441 | 170 | bary_hi | HDZ | lo | 70587/200000 | hi_OYQ,lo_YZQ,s379,s424,lo_OHD,lo_HDY,s188 |
| s442 | 171 | bary_lo | DFZ | lo | 25181/125000 | hi_OYQ,lo_YZQ,s379,s424,lo_ODF,lo_DFY,s198 |
| s443 | 172 | bary_lo | DZP | lo | 12397/100000 | hi_OYQ,lo_YZQ,s379,s424,s251,lo_DYP,s403 |
| s444 | 174 | bary_lo | OFZ | hi | 2259/4000 | s362,s147,lo_OZR,s424,lo_OFY,s361 |
| s453 | 176 | bary_lo | HDZ | hi | 699779/1000000 | s256,lo_CDZ,s441,s153,s256 |
| s454 | 177 | bary_lo | HFZ | hi | 264229/500000 | s256,lo_CDZ,s441,s153,hi_HCF,hi_HDF |
| s457 | 178 | bary_hi | DFZ | hi | 1267/2000 | s256,lo_CDZ,s441,s153,hi_HDF,s257 |
| s469 | 181 | bary_lo | ZPQ | lo | 801/6250 | s321,lo_DYP,lo_HYP,lo_HDP,s182,lo_DZQ,lo_YZQ |
| s470 | 182 | bary_lo | ZPR | lo | 103209/1000000 | s321,lo_DYP,lo_HYP,lo_HDP,s175,lo_DZR,s147 |
| s471 | 183 | bary_lo | HCP | lo | 107411/1000000 | s453,s443,lo_HZP,lo_HDP,lo_HCD,s153 |
| s472 | 184 | bary_hi | CYP | lo | 138357/1000000 | s453,s443,lo_HZP,lo_HDP,lo_HCY,s229,s306 |
| s476 | 185 | bary_lo | OHP | hi | 522927/1000000 | s454,lo_FZP,lo_HZP,lo_HFP,hi_OHF,s342 |
| s482 | 186 | bary_hi | DFP | hi | 23219/50000 | s454,lo_FZP,lo_HZP,lo_HFP,hi_HDF,s457 |
| s489 | 187 | bary_lo | HCZ | lo | 59801/500000 | s285,s443,lo_CZP,lo_CDZ,lo_HCD,s471 |
| s490 | 188 | bary_lo | HYZ | lo | 60379/500000 | s285,s443,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s492 | 189 | bary_hi | DFZ | hi | 61679/100000 | s285,s443,lo_CZP,lo_CDZ,s257,s482 |
| s498 | 190 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s256,s130 |
| s506 | 191 | bary_lo | CPR | hi | 30269/62500 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s285,s402 |
| s507 | 192 | bary_lo | DFR | lo | 54989/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s198 |
| s509 | 193 | bary_lo | DYR | lo | 5451/31250 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s229,s263 |
| s516 | 194 | bary_hi | HDZ | lo | 360491/1000000 | s274,lo_YZQ,s382,s306,lo_HCD,lo_HDY,s188 |
| s517 | 195 | bary_lo | DZP | lo | 15189/100000 | s274,lo_YZQ,s382,s306,s248,lo_DYP,s403 |
| s523 | 196 | bary_lo | DZQ | hi | 111313/250000 | s402,s469,s382,lo_CZP,hi_CDQ,s291 |
| s524 | 197 | bary_hi | OHZ | lo | 75489/200000 | s506,s470,lo_CZR,lo_CZP,s255,lo_OHP,lo_OHR |
| s525 | 198 | bary_hi | OYZ | lo | 13867/100000 | s506,s470,lo_CZR,lo_CZP,s319,lo_OYP,s212 |
| s529 | 199 | bary_lo | OZP | lo | 3987/31250 | s299,lo_FYP,lo_DYP,lo_DFP,lo_ODZ,s202,s525 |
| s530 | 200 | bary_lo | ZPQ | lo | 131781/1000000 | s299,lo_FYP,lo_DYP,lo_DFP,lo_DZQ,s155,lo_YZQ |
| s531 | 201 | bary_lo | ZPR | lo | 103851/1000000 | s299,lo_FYP,lo_DYP,lo_DFP,lo_DZR,s177,s147 |
| s534 | 202 | bary_lo | OFR | hi | 416997/500000 | hi_DYQ,lo_YQR,lo_DQR,s509,hi_ODF,lo_OFY,hi_OFQ |
| s535 | 203 | bary_lo | OYR | hi | 147787/250000 | hi_DYQ,lo_YQR,lo_DQR,s509,s2,hi_OYQ |
| s545 | 204 | bary_lo | OCR | lo | 15023/100000 | s523,lo_ZQR,lo_DQR,lo_DZR,s197,lo_OCZ,lo_OCQ |
| s547 | 205 | bary_lo | OZR | hi | 206809/1000000 | s523,lo_ZQR,lo_DQR,lo_DZR,lo_ODZ,s24 |
| s548 | 206 | bary_lo | OQR | lo | 43751/250000 | s523,lo_ZQR,lo_DQR,lo_DZR,lo_ODQ,s379 |
| s549 | 207 | bary_lo | HDR | hi | 59739/100000 | s523,lo_ZQR,lo_DQR,lo_DZR,s453,hi_HDQ |
| s552 | 208 | bary_lo | HYR | lo | 170813/1000000 | s523,lo_ZQR,lo_DQR,lo_DZR,lo_HDY,s490,s157 |
| s554 | 209 | bary_hi | DFR | hi | 538873/1000000 | s523,lo_ZQR,lo_DQR,lo_DZR,s492,hi_DFQ |
| s566 | 7 | sub | OHZ | hi | 627119/1000000 | s358,s175,lo_OZR |
| s567 | 9 | sub | ODR | hi | 24627/50000 | hi_ODQ,lo_DQR,s548 |
| s569 | 10 | sum | OFZ | lo | 19599/62500 | lo_FZP,lo_OFP,s529 |
| s570 | 10 | sub | OZP | hi | 303/800 | s444,lo_FZP,lo_OFP |
| s571 | 11 | sub | FZQ | hi | 264467/500000 | hi_OFQ,s569,s379 |
| s575 | 13 | sub | OPR | hi | 61087/100000 | s534,s407,lo_OFP |
| s577 | 15 | sum | OYR | lo | 20761/62500 | s525,lo_OZR,s147 |
| s579 | 18 | sub | HDZ | hi | 347199/500000 | s256,lo_CDZ,s489 |
| s583 | 20 | sum | CDP | lo | 33789/100000 | lo_CDZ,lo_CZP,s517 |
| s586 | 21 | sum | CPQ | lo | 175069/500000 | lo_CZP,s382,s530 |
| s588 | 23 | sum | DYQ | lo | 22527/62500 | lo_DQR,s509,lo_YQR |
| s589 | 24 | sum | FYZ | lo | 285631/1000000 | lo_FYP,lo_FZP,s356 |
| s590 | 25 | sum | FYQ | lo | 187717/500000 | s406,lo_FYP,s174 |
| s593 | 27 | sumlo | OCF | lo | 67587/200000 | s545,lo_OHF,lo_OFR,s255,s358 |
| s595 | 28 | sumlo | OCY | lo | 15481/100000 | s545,lo_OHY,s255,s577,s358 |
| s596 | 29 | sumlo | OCZ | lo | 103489/1000000 | s545,s524,s255,lo_OZR,s358 |
| s599 | 31 | sumlo | OZQ | lo | 82041/500000 | lo_ODQ,lo_OZR,lo_ODZ,s548,s567 |
| s603 | 35 | sumlo | HFY | lo | 95099/1000000 | lo_HFZ,lo_OHY,s490,lo_OHF,s566 |
| s604 | 36 | sumlo | HCP | lo | 27241/250000 | lo_HCD,lo_HZP,s489,lo_HDP,s579 |
| s606 | 37 | sumlo | HCZ | lo | 59917/500000 | lo_CDZ,s604,lo_CZP,lo_HCD,s285 |
| s612 | 39 | sumlo | DFP | lo | 25751/250000 | s442,lo_OFP,lo_FZP,lo_ODF,s444 |
| s615 | 47 | sumlo | OYZ | lo | 71871/500000 | s589,s599,s569,lo_YZQ,s571 |
| s620 | 59 | sumlo | OQR | lo | 44807/250000 | lo_DQR,s599,lo_ODQ,lo_ZQR,s523 |
| s622 | 60 | balance_lo | HCP | lo | 121327/1000000 | s606,lo_OFP,lo_CZP,lo_OHF,lo_HZP,s593,s444 |
| s623 | 61 | balance_lo | YZR | lo | 103767/1000000 | lo_YZQ,lo_OFR,lo_ZQR,lo_OFY,lo_YQR,s569,hi_OFQ |
| s626 | 62 | balance_lo | HCZ | lo | 73499/500000 | lo_CZP,lo_OHR,lo_HZP,s545,s622,lo_OZR,s575 |
| s627 | 63 | balance_lo | HZQ | lo | 177597/1000000 | s490,s620,lo_YZQ,lo_OHR,s157,lo_OZR,s535 |
| s628 | 64 | balance_lo | CYZ | lo | 12017/125000 | s356,s545,lo_CZP,s577,s472,lo_OZR,s575 |
| s629 | 65 | balance_lo | FZQ | lo | 254843/1000000 | s589,s620,lo_YZQ,lo_OFR,s590,lo_OZR,s535 |
| s636 | 72 | balance_lo | DYZ | lo | 52027/200000 | lo_ODF,lo_YZQ,s198,s615,lo_ODQ,s589,hi_OFQ |
| s637 | 73 | balance_lo | YPQ | lo | 10323/62500 | s188,lo_OYP,lo_ODQ,lo_HYP,lo_OHQ,lo_DYP,hi_OHD |
| s638 | 75 | balance_lo | HZR | lo | 85401/500000 | s524,lo_YQR,lo_OZR,s157,lo_OHR,lo_YZQ,hi_OYQ |
| s639 | 76 | balance_lo | DZR | lo | 3929/40000 | lo_ODZ,lo_YQR,lo_OZR,s588,lo_ODR,lo_YZQ,hi_OYQ |
| s640 | 77 | balance_lo | FZR | lo | 7419/40000 | s569,lo_YQR,lo_OZR,s590,lo_OFR,lo_YZQ,hi_OYQ |
| s641 | 79 | balance_lo | OZP | lo | 170249/1000000 | s255,s517,s197,lo_HZP,lo_OHD,lo_CZP,s256 |
| s642 | 80 | balance_lo | HCF | lo | 241599/1000000 | s255,lo_FZP,s593,lo_HZP,lo_OHF,lo_CZP,s570 |
| s644 | 86 | linear | OHF | lo | 281099/1000000 | s603,lo_OFY,lo_OHY |
| s647 | 89 | linear | OHQ | lo | 179781/250000 | s627,s524,s599 |
| s649 | 90 | linear | OHZ | hi | 613917/1000000 | s638,s358,lo_OZR |
| s652 | 94 | linear | ODR | lo | 11369/40000 | s639,lo_ODZ,lo_OZR |
| s655 | 95 | linear | ODR | hi | 122079/250000 | lo_DQR,hi_ODQ,s620 |
| s656 | 96 | linear | OFZ | lo | 356249/1000000 | lo_FZP,lo_OFP,s641 |
| s658 | 97 | linear | OZQ | hi | 46911/125000 | s629,hi_OFQ,s656 |
| s659 | 97 | linear | OFQ | lo | 387587/500000 | s629,s656,s599 |
| s665 | 100 | linear | OYQ | lo | 50103/125000 | s615,s599,lo_YZQ |
| s667 | 101 | linear | OYR | lo | 340509/1000000 | s615,lo_OZR,s623 |
| s670 | 102 | linear | HDZ | hi | 333501/500000 | lo_CDZ,s256,s626 |
| s674 | 105 | linear | CDY | lo | 449271/1000000 | lo_CDZ,s628,s636 |
| s677 | 106 | linear | DFY | lo | 72251/250000 | s612,lo_DYP,lo_FYP |
| s679 | 107 | linear | DZQ | lo | 11369/40000 | lo_DQR,s639,lo_ZQR |
| s684 | 114 | linear | CDF | hi | 758401/1000000 | s642 |
| s687 | 118 | bary_lo | YZP | lo | 104313/1000000 | hi_OHC,lo_HCY,s595,lo_OHY,s641,lo_HZP,lo_CZP |
| s701 | 126 | bary_hi | HFY | lo | 97557/1000000 | s649,s490,s615,lo_OHY,s644,lo_HFZ |
| s703 | 128 | bary_hi | DYQ | lo | 3113/8000 | s649,s490,s615,lo_OHY,lo_ODQ,s188,s679 |
| s708 | 129 | bary_lo | CYZ | lo | 26117/250000 | s476,lo_HYP,lo_OYP,lo_OHY,s596,s626,lo_CZP |
| s723 | 133 | bary_lo | HDY | hi | 284697/500000 | s358,s552,s667,lo_OHY,hi_OHD,s549 |
| s728 | 134 | bary_hi | DFY | hi | 649241/1000000 | s358,s552,s667,lo_OHY,hi_ODF,hi_HDF,s554 |
| s732 | 136 | bary_lo | OFZ | hi | 11071/20000 | s358,s638,lo_OZR,s524,s644,s534 |
| s739 | 140 | bary_hi | CZQ | hi | 140597/500000 | hi_ODQ,s679,s599,lo_ODZ,hi_OCQ,hi_CDQ |
| s747 | 145 | bary_lo | OZQ | lo | 83153/500000 | s655,s639,lo_OZR,lo_ODZ,lo_ODQ,s620 |
| s752 | 149 | bary_hi | OPQ | hi | 143599/200000 | s732,lo_FZP,s641,lo_OFP,hi_OFQ,s658 |
| s753 | 150 | bary_hi | OPR | hi | 588507/1000000 | s732,lo_FZP,s641,lo_OFP,s534,s547 |
| s755 | 151 | bary_hi | HFP | lo | 941/10000 | s732,lo_FZP,s641,lo_OFP,s644,lo_HFZ |
| s759 | 152 | bary_hi | CPQ | hi | 600177/1000000 | s732,lo_FZP,s641,lo_OFP,hi_OCQ,s133,s739 |
| s760 | 153 | bary_lo | DFP | lo | 1642/15625 | s732,lo_FZP,s641,lo_OFP,lo_ODF,s442 |
| s761 | 154 | bary_hi | DPQ | lo | 125889/500000 | s732,lo_FZP,s641,lo_OFP,lo_ODQ,s198,s679 |
| s763 | 155 | bary_hi | FPQ | lo | 173049/1000000 | s732,lo_FZP,s641,lo_OFP,s659,s629 |
| s771 | 160 | bary_hi | OYZ | lo | 40111/250000 | hi_OFQ,s629,s747,s656,lo_OFY,s665 |
| s774 | 162 | bary_lo | FZQ | hi | 18553/40000 | hi_OFQ,s629,s747,s656,hi_OFQ |
| s784 | 171 | bary_lo | DFZ | lo | 26077/125000 | hi_OYQ,lo_YZQ,s747,s771,lo_ODF,s677,s198 |
| s785 | 174 | bary_lo | OFZ | hi | 135441/250000 | s535,s623,lo_OZR,s771,lo_OFY,s534 |
| s788 | 175 | bary_lo | CZQ | lo | 66817/500000 | s753,s531,lo_OZR,s641,lo_OCQ,s586,lo_CQR |
| s790 | 178 | bary_hi | DFZ | hi | 5891/10000 | s256,lo_CDZ,s516,s626,hi_HDF,s684 |
| s792 | 180 | bary_lo | OPQ | lo | 500697/1000000 | s723,lo_DYP,lo_HYP,lo_HDP,s647,lo_ODQ,s665 |
| s795 | 181 | bary_lo | ZPQ | lo | 2761/20000 | s723,lo_DYP,lo_HYP,lo_HDP,s627,s679,lo_YZQ |
| s796 | 182 | bary_lo | ZPR | lo | 13873/125000 | s723,lo_DYP,lo_HYP,lo_HDP,s638,s639,s623 |
| s797 | 184 | bary_hi | CYP | lo | 144273/1000000 | s670,s517,lo_HZP,lo_HDP,lo_HCY,s674,s708 |
| s807 | 191 | bary_lo | CPR | hi | 96017/200000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s285,s759 |
| s811 | 195 | bary_lo | DZP | lo | 31689/200000 | s274,lo_YZQ,s788,s708,s583,lo_DYP,s761 |
| s812 | 196 | bary_lo | DZQ | hi | 109857/250000 | s759,s795,s788,lo_CZP,hi_CDQ,s291 |
| s813 | 197 | bary_hi | OHZ | lo | 75947/200000 | s807,s796,lo_CZR,lo_CZP,s255,lo_OHP,lo_OHR |
| s814 | 200 | bary_lo | ZPQ | lo | 71787/500000 | s728,lo_FYP,lo_DYP,s760,s679,s629,lo_YZQ |
| s815 | 201 | bary_lo | ZPR | lo | 5581/50000 | s728,lo_FYP,lo_DYP,s760,s639,s640,s623 |
| s817 | 204 | bary_lo | OCR | lo | 19151/125000 | s812,lo_ZQR,lo_DQR,s639,s197,s596,lo_OCQ |
| s818 | 205 | bary_lo | OZR | hi | 39351/200000 | s812,lo_ZQR,lo_DQR,s639,lo_ODZ,s658 |
| s819 | 206 | bary_lo | OQR | lo | 91037/500000 | s812,lo_ZQR,lo_DQR,s639,lo_ODQ,s747 |
| s820 | 207 | bary_lo | HDR | hi | 5881/10000 | s812,lo_ZQR,lo_DQR,s639,s670,hi_HDQ |
| s822 | 208 | bary_lo | HYR | lo | 43111/250000 | s812,lo_ZQR,lo_DQR,s639,lo_HDY,s490,s157 |
| s824 | 209 | bary_hi | DFR | hi | 530821/1000000 | s812,lo_ZQR,lo_DQR,s639,s790,hi_DFQ |
| s832 | 2 | sum | OHF | lo | 283557/1000000 | s701,lo_OFY,lo_OHY |
| s835 | 5 | sum | OHQ | lo | 361819/500000 | s627,s813,s747 |
| s836 | 9 | sub | ODR | hi | 48547/100000 | hi_ODQ,lo_DQR,s819 |
| s838 | 10 | sub | OZP | hi | 88941/250000 | s785,lo_FZP,lo_OFP |
| s842 | 15 | sum | OYR | lo | 357211/1000000 | s771,lo_OZR,s623 |
| s845 | 19 | sum | HFZ | lo | 2801/10000 | lo_FZP,s755,lo_HZP |
| s847 | 20 | sum | CDP | lo | 68889/200000 | lo_CDZ,lo_CZP,s811 |
| s850 | 21 | sum | CPQ | lo | 11569/31250 | lo_CZP,s788,s814 |
| s853 | 24 | sum | FYZ | lo | 290313/1000000 | lo_FYP,lo_FZP,s687 |
| s854 | 25 | sum | FYQ | lo | 431217/1000000 | s763,lo_FYP,s637 |
| s856 | 27 | sumlo | OCF | lo | 339677/1000000 | s817,s832,lo_OFR,s255,s358 |
| s858 | 28 | sumlo | OCY | lo | 165593/1000000 | s817,lo_OHY,s255,s842,s358 |
| s861 | 31 | sumlo | OZQ | lo | 83913/500000 | lo_ODQ,lo_OZR,lo_ODZ,s819,s836 |
| s865 | 35 | sumlo | HFY | lo | 98207/1000000 | s845,lo_OHY,s490,s832,s649 |
| s871 | 39 | sumlo | DFP | lo | 21721/200000 | s784,lo_OFP,lo_FZP,lo_ODF,s785 |
| s874 | 47 | sumlo | OYZ | lo | 88237/500000 | s853,s861,s656,lo_YZQ,s774 |
| s876 | 51 | sumlo | HFP | lo | 24311/250000 | lo_FZP,lo_OHP,lo_HZP,lo_OFP,s838 |
| s878 | 57 | sumhi | CPQ | hi | 583913/1000000 | hi_CDQ,s752,s291,hi_OCQ,lo_ODQ |
| s879 | 59 | sumlo | OQR | lo | 36479/200000 | lo_DQR,s861,lo_ODQ,lo_ZQR,s812 |
| s880 | 60 | balance_lo | HCP | lo | 132219/1000000 | s626,lo_OFP,lo_CZP,s832,lo_HZP,s856,s785 |
| s881 | 61 | balance_lo | YZR | lo | 10779/100000 | lo_YZQ,lo_OFR,lo_ZQR,lo_OFY,lo_YQR,s656,hi_OFQ |
| s882 | 62 | balance_lo | HCZ | lo | 6191/40000 | lo_CZP,lo_OHR,lo_HZP,s817,s880,lo_OZR,s753 |
| s883 | 63 | balance_lo | HZQ | lo | 44561/250000 | s490,s879,lo_YZQ,lo_OHR,s157,lo_OZR,s535 |
| s884 | 64 | balance_lo | CYZ | lo | 26601/250000 | s687,s817,lo_CZP,s842,s797,lo_OZR,s753 |
| s885 | 65 | balance_lo | FZQ | lo | 133297/500000 | s853,s879,lo_YZQ,lo_OFR,s854,lo_OZR,s535 |
| s890 | 72 | balance_lo | DYZ | lo | 267799/1000000 | lo_ODF,lo_YZQ,s198,s874,lo_ODQ,s853,hi_OFQ |
| s891 | 73 | balance_lo | YPQ | lo | 41981/250000 | s188,lo_OYP,lo_ODQ,lo_HYP,s835,lo_DYP,hi_OHD |
| s892 | 75 | balance_lo | HZR | lo | 171109/1000000 | s813,lo_YQR,lo_OZR,s157,lo_OHR,lo_YZQ,hi_OYQ |
| s893 | 76 | balance_lo | DZR | lo | 51387/500000 | lo_ODZ,lo_YQR,lo_OZR,s703,s652,lo_YZQ,hi_OYQ |
| s894 | 77 | balance_lo | FZR | lo | 198677/1000000 | s656,lo_YQR,lo_OZR,s854,lo_OFR,lo_YZQ,hi_OYQ |
| s896 | 80 | balance_lo | HCF | lo | 32357/125000 | s255,lo_FZP,s856,lo_HZP,s832,lo_CZP,s838 |
| s897 | 81 | balance_lo | OZP | lo | 174741/1000000 | s255,s815,s817,lo_HZP,lo_OHR,lo_CZP,s498 |
| s900 | 86 | linear | OHF | lo | 284207/1000000 | s865,lo_OFY,lo_OHY |
| s902 | 87 | linear | OHZ | lo | 48779/125000 | s490,lo_OHY,s874 |
| s905 | 89 | linear | OHQ | lo | 368151/500000 | s883,s902,s861 |
| s906 | 90 | linear | OHZ | hi | 61361/100000 | s892,s358,lo_OZR |
| s908 | 94 | linear | ODR | lo | 144387/500000 | s893,lo_ODZ,lo_OZR |
| s911 | 95 | linear | ODR | hi | 485149/1000000 | lo_DQR,hi_ODQ,s879 |
| s912 | 96 | linear | OFZ | lo | 360741/1000000 | lo_FZP,lo_OFP,s897 |
| s914 | 97 | linear | OZQ | hi | 71809/200000 | s885,hi_OFQ,s912 |
| s915 | 97 | linear | OFQ | lo | 795161/1000000 | s885,s912,s861 |
| s919 | 100 | linear | OYQ | lo | 4373/10000 | s874,s861,lo_YZQ |
| s921 | 101 | linear | OYR | lo | 23579/62500 | s874,lo_OZR,s881 |
| s923 | 102 | linear | HDZ | hi | 26369/40000 | lo_CDZ,s256,s882 |
| s926 | 104 | linear | HFZ | lo | 70811/250000 | lo_FZP,s876,lo_HZP |
| s927 | 105 | linear | CDY | lo | 467203/1000000 | lo_CDZ,s884,s890 |
| s930 | 106 | linear | DFY | lo | 58921/200000 | s871,lo_DYP,lo_FYP |
| s931 | 107 | linear | DZQ | lo | 144387/500000 | lo_DQR,s893,lo_ZQR |
| s935 | 114 | linear | CDF | hi | 92643/125000 | s896 |
| s938 | 118 | bary_lo | YZP | lo | 104971/1000000 | hi_OHC,lo_HCY,s858,lo_OHY,s897,lo_HZP,lo_CZP |
| s945 | 126 | bary_hi | HFY | lo | 4943/50000 | s906,s490,s874,lo_OHY,s900,s926 |
| s948 | 128 | bary_hi | DYQ | lo | 397059/1000000 | s906,s490,s874,lo_OHY,lo_ODQ,s188,s931 |
| s962 | 132 | bary_lo | OCY | lo | 86989/500000 | s358,s822,s921,lo_OHY,s255,s817 |
| s964 | 133 | bary_lo | HDY | hi | 263267/500000 | s358,s822,s921,lo_OHY,hi_OHD,s820 |
| s969 | 134 | bary_hi | DFY | hi | 622029/1000000 | s358,s822,s921,lo_OHY,hi_ODF,hi_HDF,s824 |
| s973 | 135 | bary_lo | OCZ | lo | 107001/1000000 | s358,s892,lo_OZR,s902,s255,s817 |
| s983 | 145 | bary_lo | OZQ | lo | 167999/1000000 | s911,s893,lo_OZR,lo_ODZ,lo_ODQ,s879 |
| s985 | 149 | bary_hi | OPQ | hi | 88671/125000 | s785,lo_FZP,s897,lo_OFP,hi_OFQ,s914 |
| s986 | 150 | bary_hi | OPR | hi | 1817/3125 | s785,lo_FZP,s897,lo_OFP,s534,s818 |
| s988 | 151 | bary_hi | HFP | lo | 97409/1000000 | s785,lo_FZP,s897,lo_OFP,s900,s926 |
| s992 | 154 | bary_hi | DPQ | lo | 63793/250000 | s785,lo_FZP,s897,lo_OFP,lo_ODQ,s198,s931 |
| s994 | 155 | bary_hi | FPQ | lo | 91131/500000 | s785,lo_FZP,s897,lo_OFP,s915,s885 |
| s1001 | 159 | bary_hi | OCZ | hi | 149583/500000 | hi_OFQ,s885,s983,s912,hi_OCF,hi_OCQ |
| s1006 | 166 | bary_hi | CDP | hi | 153609/250000 | hi_OFQ,s994,s792,lo_OFP,hi_OCD,s935,lo_CDQ |
| s1013 | 170 | bary_hi | HDZ | lo | 362393/1000000 | hi_OYQ,lo_YZQ,s983,s874,lo_OHD,lo_HDY,s188 |
| s1014 | 171 | bary_lo | DFZ | lo | 210357/1000000 | hi_OYQ,lo_YZQ,s983,s874,lo_ODF,s930,s198 |
| s1015 | 174 | bary_lo | OFZ | hi | 67011/125000 | s535,s881,lo_OZR,s874,lo_OFY,s534 |
| s1018 | 175 | bary_lo | CZQ | lo | 68669/500000 | s986,s815,lo_OZR,s897,lo_OCQ,s850,lo_CQR |
| s1020 | 178 | bary_hi | DFZ | hi | 285027/500000 | s256,lo_CDZ,s1013,s882,hi_HDF,s935 |
| s1021 | 179 | bary_lo | OCP | lo | 242163/1000000 | s964,lo_DYP,lo_HYP,lo_HDP,s255,s197,s962 |
| s1022 | 180 | bary_lo | OPQ | lo | 535451/1000000 | s964,lo_DYP,lo_HYP,lo_HDP,s905,lo_ODQ,s919 |
| s1026 | 184 | bary_hi | CYP | lo | 147681/1000000 | s923,s811,lo_HZP,lo_HDP,lo_HCY,s927,s884 |
| s1031 | 188 | bary_lo | HYZ | lo | 1893/15625 | s1006,s811,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1040 | 195 | bary_lo | DZP | lo | 16057/100000 | s274,lo_YZQ,s1018,s884,s847,lo_DYP,s992 |
| s1042 | 196 | bary_lo | DZQ | hi | 217421/500000 | s878,s814,s1018,lo_CZP,hi_CDQ,s291 |
| s1043 | 200 | bary_lo | ZPQ | lo | 2316/15625 | s969,lo_FYP,lo_DYP,s871,s931,s885,lo_YZQ |
| s1044 | 201 | bary_lo | ZPR | lo | 29497/250000 | s969,lo_FYP,lo_DYP,s871,s893,s894,s881 |
| s1046 | 204 | bary_lo | OCR | lo | 30919/200000 | s1042,lo_ZQR,lo_DQR,s893,s197,s973,lo_OCQ |
| s1047 | 205 | bary_lo | OZR | hi | 185577/1000000 | s1042,lo_ZQR,lo_DQR,s893,lo_ODZ,s914 |
| s1048 | 206 | bary_lo | OQR | lo | 46089/250000 | s1042,lo_ZQR,lo_DQR,s893,lo_ODQ,s983 |
| s1049 | 207 | bary_lo | HDR | hi | 292233/500000 | s1042,lo_ZQR,lo_DQR,s893,s923,hi_HDQ |
| s1051 | 208 | bary_lo | HYR | lo | 87029/500000 | s1042,lo_ZQR,lo_DQR,s893,lo_HDY,s1031,s157 |
| s1053 | 209 | bary_hi | DFR | hi | 524919/1000000 | s1042,lo_ZQR,lo_DQR,s893,s1020,hi_DFQ |
| s1060 | 2 | sum | OHF | lo | 14243/50000 | s945,lo_OFY,lo_OHY |
| s1061 | 3 | sum | OHZ | lo | 195313/500000 | s1031,lo_OHY,s874 |
| s1063 | 5 | sum | OHQ | lo | 736869/1000000 | s883,s1061,s983 |
| s1066 | 10 | sub | OZP | hi | 43761/125000 | s1015,lo_FZP,lo_OFP |
| s1068 | 12 | sum | OFQ | lo | 810713/1000000 | s994,lo_OFP,s1022 |
| s1069 | 12 | sub | FPQ | hi | 357929/1000000 | hi_OFQ,lo_OFP,s1022 |
| s1070 | 14 | sum | OYQ | lo | 437473/1000000 | s874,s983,lo_YZQ |
| s1073 | 19 | sum | HFZ | lo | 283409/1000000 | lo_FZP,s988,lo_HZP |
| s1074 | 20 | sum | CDP | lo | 34657/100000 | lo_CDZ,lo_CZP,s1040 |
| s1077 | 21 | sum | CPQ | lo | 189281/500000 | lo_CZP,s1018,s1043 |
| s1079 | 24 | sum | FYZ | lo | 290971/1000000 | lo_FYP,lo_FZP,s938 |
| s1080 | 25 | sum | FYQ | lo | 221593/500000 | s994,lo_FYP,s891 |
| s1082 | 27 | sumlo | OCF | lo | 170177/500000 | s1046,s1060,lo_OFR,s255,s358 |
| s1083 | 28 | sumlo | OCY | lo | 1393/8000 | s1046,lo_OHY,s255,s921,s358 |
| s1087 | 33 | sumlo | OZQ | lo | 85073/500000 | s1068,lo_OZR,s912,s1048,s534 |
| s1088 | 35 | sumlo | HFY | lo | 99197/1000000 | s1073,lo_OHY,s1031,s1060,s906 |
| s1092 | 39 | sumlo | DFP | lo | 110057/1000000 | s1014,lo_OFP,lo_FZP,lo_ODF,s1015 |
| s1093 | 40 | sumlo | FPQ | lo | 18689/100000 | lo_FZP,s1068,s885,lo_OFP,s1015 |
| s1096 | 50 | sumlo | HCP | lo | 27689/200000 | lo_CZP,lo_OHP,lo_HZP,s1021,s1066 |
| s1097 | 51 | sumlo | HFP | lo | 4941/50000 | lo_FZP,lo_OHP,lo_HZP,lo_OFP,s1066 |
| s1100 | 57 | sumhi | CPQ | hi | 144673/250000 | hi_CDQ,s985,s291,hi_OCQ,lo_ODQ |
| s1102 | 59 | sumlo | OQR | lo | 36963/200000 | lo_DQR,s1087,lo_ODQ,lo_ZQR,s1042 |
| s1103 | 61 | balance_lo | YZR | lo | 108213/1000000 | lo_YZQ,lo_OFR,lo_ZQR,lo_OFY,lo_YQR,s912,hi_OFQ |
| s1105 | 62 | balance_lo | HCZ | lo | 78937/500000 | lo_CZP,lo_OHR,lo_HZP,s1046,s1096,lo_OZR,s986 |
| s1106 | 63 | balance_lo | HZQ | lo | 89431/500000 | s1031,s1102,lo_YZQ,lo_OHR,s157,lo_OZR,s535 |
| s1107 | 64 | balance_lo | CYZ | lo | 111873/1000000 | s938,s1046,lo_CZP,s921,s1026,lo_OZR,s986 |
| s1108 | 65 | balance_lo | FZQ | lo | 269871/1000000 | s1079,s1102,lo_YZQ,lo_OFR,s1080,lo_OZR,s535 |
| s1113 | 71 | balance_lo | OYZ | lo | 4551/25000 | lo_YZQ,lo_OFP,s1087,lo_FYP,s1070,lo_FZP,s1069 |
| s1114 | 72 | balance_lo | DYZ | lo | 53801/200000 | lo_ODF,lo_YZQ,s198,s1113,lo_ODQ,s1079,hi_OFQ |
| s1115 | 73 | balance_lo | YPQ | lo | 84577/500000 | s188,lo_OYP,lo_ODQ,lo_HYP,s1063,lo_DYP,hi_OHD |
| s1116 | 75 | balance_lo | HZR | lo | 17257/100000 | s1061,lo_YQR,lo_OZR,s157,lo_OHR,lo_YZQ,hi_OYQ |
| s1117 | 76 | balance_lo | DZR | lo | 1632/15625 | lo_ODZ,lo_YQR,lo_OZR,s948,s908,lo_YZQ,hi_OYQ |
| s1118 | 77 | balance_lo | FZR | lo | 40177/200000 | s912,lo_YQR,lo_OZR,s1080,lo_OFR,lo_YZQ,hi_OYQ |
| s1119 | 80 | balance_lo | HCF | lo | 263579/1000000 | s255,lo_FZP,s1082,lo_HZP,s1060,lo_CZP,s1066 |
| s1120 | 81 | balance_lo | OZP | lo | 8917/50000 | s255,s1044,s1046,lo_HZP,lo_OHR,lo_CZP,s498 |
| s1124 | 86 | linear | OHF | lo | 285197/1000000 | s1088,lo_OFY,lo_OHY |
| s1126 | 87 | linear | OHZ | lo | 12381/31250 | s1031,lo_OHY,s1113 |
| s1128 | 89 | linear | OHQ | lo | 1863/2500 | s1106,s1126,s1087 |
| s1129 | 90 | linear | OHZ | hi | 612149/1000000 | s1116,s358,lo_OZR |
| s1131 | 94 | linear | ODR | lo | 18153/62500 | s1117,lo_ODZ,lo_OZR |
| s1135 | 96 | linear | OFZ | lo | 18217/50000 | lo_FZP,lo_OFP,s1120 |
| s1137 | 97 | linear | OZQ | hi | 352169/1000000 | s1108,hi_OFQ,s1135 |
| s1142 | 99 | linear | OFQ | lo | 815341/1000000 | s1093,lo_OFP,s1022 |
| s1143 | 100 | linear | OYQ | lo | 222593/500000 | s1113,s1087,lo_YZQ |
| s1145 | 101 | linear | OYR | lo | 383253/1000000 | s1113,lo_OZR,s1103 |
| s1147 | 102 | linear | HDZ | hi | 328063/500000 | lo_CDZ,s256,s1105 |
| s1150 | 104 | linear | HFZ | lo | 14241/50000 | lo_FZP,s1097,lo_HZP |
| s1151 | 105 | linear | CDY | lo | 236939/500000 | lo_CDZ,s1107,s1114 |
| s1155 | 106 | linear | DFY | lo | 296057/1000000 | s1092,lo_DYP,lo_FYP |
| s1156 | 107 | linear | DZQ | lo | 18153/62500 | lo_DQR,s1117,lo_ZQR |
| s1160 | 114 | linear | CDF | hi | 736421/1000000 | s1119 |
| s1163 | 118 | bary_lo | YZP | lo | 52749/500000 | hi_OHC,lo_HCY,s1083,lo_OHY,s1120,lo_HZP,lo_CZP |
| s1167 | 126 | bary_hi | HFY | lo | 19943/200000 | s1129,s1031,s1113,lo_OHY,s1124,s1150 |
| s1170 | 128 | bary_hi | DYQ | lo | 15973/40000 | s1129,s1031,s1113,lo_OHY,lo_ODQ,s188,s1156 |
| s1176 | 131 | bary_lo | FYQ | hi | 373269/500000 | hi_OHQ,s157,s1143,lo_OHY,hi_OFQ,hi_HFQ |
| s1177 | 132 | bary_lo | OCY | lo | 176629/1000000 | s358,s1051,s1145,lo_OHY,s255,s1046 |
| s1179 | 133 | bary_lo | HDY | hi | 20773/40000 | s358,s1051,s1145,lo_OHY,hi_OHD,s1049 |
| s1183 | 134 | bary_hi | DFY | hi | 617109/1000000 | s358,s1051,s1145,lo_OHY,hi_ODF,hi_HDF,s1053 |
| s1186 | 135 | bary_lo | OCZ | lo | 27167/250000 | s358,s1116,lo_OZR,s1126,s255,s1046 |
| s1195 | 147 | bary_hi | OCP | hi | 466581/1000000 | s1015,lo_FZP,s1120,lo_OFP,hi_OCF,s1001 |
| s1197 | 150 | bary_hi | OPR | hi | 576827/1000000 | s1015,lo_FZP,s1120,lo_OFP,s534,s1047 |
| s1199 | 151 | bary_hi | HFP | lo | 19777/200000 | s1015,lo_FZP,s1120,lo_OFP,s1124,s1150 |
| s1203 | 154 | bary_hi | DPQ | lo | 25677/100000 | s1015,lo_FZP,s1120,lo_OFP,lo_ODQ,s198,s1156 |
| s1205 | 155 | bary_hi | FPQ | lo | 188261/1000000 | s1015,lo_FZP,s1120,lo_OFP,s1142,s1108 |
| s1212 | 159 | bary_hi | OCZ | hi | 147709/500000 | hi_OFQ,s1108,s1087,s1135,hi_OCF,hi_OCQ |
| s1217 | 164 | bary_hi | OPQ | hi | 705119/1000000 | hi_OFQ,s1205,s1022,lo_OFP,hi_OFQ |
| s1218 | 166 | bary_hi | CDP | hi | 122011/200000 | hi_OFQ,s1205,s1022,lo_OFP,hi_OCD,s1160,lo_CDQ |
| s1221 | 168 | bary_lo | OZQ | lo | 85829/500000 | s534,s1118,lo_OZR,s1135,s1142,s1102 |
| s1226 | 170 | bary_hi | HDZ | lo | 90817/250000 | hi_OYQ,lo_YZQ,s1221,s1113,lo_OHD,lo_HDY,s188 |
| s1227 | 171 | bary_lo | DFZ | lo | 26447/125000 | hi_OYQ,lo_YZQ,s1221,s1113,lo_ODF,s1155,s198 |
| s1228 | 174 | bary_lo | OFZ | hi | 133873/250000 | s535,s1103,lo_OZR,s1113,lo_OFY,s534 |
| s1231 | 175 | bary_lo | CZQ | lo | 869/6250 | s1197,s1044,lo_OZR,s1120,lo_OCQ,s1077,lo_CQR |
| s1233 | 178 | bary_hi | DFZ | hi | 112821/200000 | s256,lo_CDZ,s1226,s1105,hi_HDF,s1160 |
| s1234 | 179 | bary_lo | OCP | lo | 244811/1000000 | s1179,lo_DYP,lo_HYP,lo_HDP,s255,s197,s1177 |
| s1235 | 180 | bary_lo | OPQ | lo | 543469/1000000 | s1179,lo_DYP,lo_HYP,lo_HDP,s1128,lo_ODQ,s1143 |
| s1238 | 184 | bary_hi | CYP | lo | 149661/1000000 | s1147,s1040,lo_HZP,lo_HDP,lo_HCY,s1151,s1107 |
| s1241 | 188 | bary_lo | HYZ | lo | 60677/500000 | s1218,s1040,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1248 | 195 | bary_lo | DZP | lo | 162671/1000000 | s274,lo_YZQ,s1231,s1107,s1074,lo_DYP,s1203 |
| s1250 | 196 | bary_lo | DZQ | hi | 54079/125000 | s1100,s1043,s1231,lo_CZP,hi_CDQ,s291 |
| s1251 | 200 | bary_lo | ZPQ | lo | 14941/100000 | s1183,lo_FYP,lo_DYP,s1092,s1156,s1108,lo_YZQ |
| s1252 | 201 | bary_lo | ZPR | lo | 29913/250000 | s1183,lo_FYP,lo_DYP,s1092,s1117,s1118,s1103 |
| s1254 | 204 | bary_lo | OCR | lo | 155267/1000000 | s1250,lo_ZQR,lo_DQR,s1117,s197,s1186,lo_OCQ |
| s1255 | 205 | bary_lo | OZR | hi | 180771/1000000 | s1250,lo_ZQR,lo_DQR,s1117,lo_ODZ,s1137 |
| s1256 | 206 | bary_lo | OQR | lo | 46521/250000 | s1250,lo_ZQR,lo_DQR,s1117,lo_ODQ,s1221 |
| s1257 | 207 | bary_lo | HDR | hi | 582827/1000000 | s1250,lo_ZQR,lo_DQR,s1117,s1147,hi_HDQ |
| s1259 | 208 | bary_lo | HYR | lo | 174751/1000000 | s1250,lo_ZQR,lo_DQR,s1117,lo_HDY,s1241,s157 |
| s1262 | 209 | bary_hi | DFR | hi | 130681/250000 | s1250,lo_ZQR,lo_DQR,s1117,s1233,hi_DFQ |
| s1266 | 210 | bary_hi | CDP | hi | 37951/62500 | s1176,s1115,s1205,lo_FYP,s1160,s260,lo_CDQ |
| s1267 | 2 | sum | OHF | lo | 57143/200000 | s1167,lo_OFY,lo_OHY |
| s1268 | 3 | sum | OHZ | lo | 198197/500000 | s1241,lo_OHY,s1113 |
| s1270 | 5 | sum | OHQ | lo | 373457/500000 | s1106,s1268,s1221 |
| s1272 | 10 | sub | OZP | hi | 87373/250000 | s1228,lo_FZP,lo_OFP |
| s1274 | 12 | sum | OFQ | lo | 82473/100000 | s1205,lo_OFP,s1235 |
| s1275 | 12 | sub | FPQ | hi | 349911/1000000 | hi_OFQ,lo_OFP,s1235 |
| s1277 | 14 | sum | OYQ | lo | 223349/500000 | s1113,s1221,lo_YZQ |
| s1280 | 19 | sum | HFZ | lo | 56977/200000 | lo_FZP,s1199,lo_HZP |
| s1281 | 20 | sum | CDP | lo | 348671/1000000 | lo_CDZ,lo_CZP,s1248 |
| s1283 | 21 | sum | CPQ | lo | 7629/20000 | lo_CZP,s1231,s1251 |
| s1285 | 24 | sum | FYZ | lo | 145749/500000 | lo_FYP,lo_FZP,s1163 |
| s1286 | 25 | sum | FYQ | lo | 90083/200000 | s1205,lo_FYP,s1115 |
| s1288 | 27 | sumlo | OCF | lo | 85181/250000 | s1254,s1267,lo_OFR,s255,s358 |
| s1289 | 28 | sumlo | OCY | lo | 1767/10000 | s1254,lo_OHY,s255,s1145,s358 |
| s1292 | 32 | sumlo | OYP | lo | 93357/1000000 | lo_OFP,s1277,lo_OFY,s1235,hi_OFQ |
| s1293 | 33 | sumlo | OZQ | lo | 173259/1000000 | s1274,lo_OZR,s1135,s1256,s534 |
| s1294 | 35 | sumlo | HFY | lo | 99921/1000000 | s1280,lo_OHY,s1241,s1267,s1129 |
| s1296 | 38 | sumlo | HFP | lo | 99097/1000000 | lo_FZP,s1267,s1280,lo_OFP,s1228 |
| s1297 | 39 | sumlo | DFP | lo | 110391/1000000 | s1227,lo_OFP,lo_FZP,lo_ODF,s1228 |
| s1298 | 40 | sumlo | FPQ | lo | 190101/1000000 | lo_FZP,s1274,s1108,lo_OFP,s1228 |
| s1301 | 50 | sumlo | HCP | lo | 69693/500000 | lo_CZP,lo_OHP,lo_HZP,s1234,s1272 |
| s1302 | 52 | sumlo | OZP | lo | 92077/500000 | lo_FZP,s1235,lo_OFP,s1251,s1275 |
| s1303 | 57 | sumhi | CPQ | hi | 576121/1000000 | hi_CDQ,s1217,s291,hi_OCQ,lo_ODQ |
| s1305 | 59 | sumlo | OQR | lo | 46607/250000 | lo_DQR,s1293,lo_ODQ,lo_ZQR,s1250 |
| s1306 | 61 | balance_lo | YZR | lo | 108553/1000000 | lo_YZQ,lo_OFR,lo_ZQR,lo_OFY,lo_YQR,s1135,hi_OFQ |
| s1307 | 62 | balance_lo | HCZ | lo | 159397/1000000 | lo_CZP,lo_OHR,lo_HZP,s1254,s1301,lo_OZR,s1197 |
| s1309 | 64 | balance_lo | CYZ | lo | 114317/1000000 | s1163,s1254,lo_CZP,s1145,s1238,lo_OZR,s1197 |
| s1310 | 65 | balance_lo | FZQ | lo | 271969/1000000 | s1285,s1305,lo_YZQ,lo_OFR,s1286,lo_OZR,s535 |
| s1311 | 67 | balance_lo | HYQ | lo | 202893/1000000 | s1283,lo_OHY,s1235,lo_HCY,lo_OCQ,lo_HYP,s1195 |
| s1312 | 69 | balance_lo | ODP | lo | 200781/1000000 | lo_OFY,s1203,s1277,s1297,s1274,lo_DYP,s1176 |
| s1315 | 71 | balance_lo | OYZ | lo | 189491/1000000 | lo_YZQ,lo_OFP,s1293,lo_FYP,s1277,lo_FZP,s1275 |
| s1316 | 72 | balance_lo | DYZ | lo | 27037/100000 | lo_ODF,lo_YZQ,s198,s1315,lo_ODQ,s1285,hi_OFQ |
| s1317 | 73 | balance_lo | YPQ | lo | 170227/1000000 | s188,s1292,lo_ODQ,lo_HYP,s1270,lo_DYP,hi_OHD |
| s1318 | 75 | balance_lo | HZR | lo | 173441/1000000 | s1268,lo_YQR,lo_OZR,s1311,lo_OHR,lo_YZQ,hi_OYQ |
| s1319 | 76 | balance_lo | DZR | lo | 6561/62500 | lo_ODZ,lo_YQR,lo_OZR,s1170,s1131,lo_YZQ,hi_OYQ |
| s1320 | 77 | balance_lo | FZR | lo | 202337/1000000 | s1135,lo_YQR,lo_OZR,s1286,lo_OFR,lo_YZQ,hi_OYQ |
| s1321 | 80 | balance_lo | HCF | lo | 132177/500000 | s255,lo_FZP,s1288,lo_HZP,s1267,lo_CZP,s1272 |
| s1323 | 82 | balance_lo | HZQ | lo | 179619/1000000 | lo_HCD,lo_YZQ,lo_HDY,s1231,lo_HCY,s1156,s260 |
| s1325 | 86 | linear | OHF | lo | 285921/1000000 | s1294,lo_OFY,lo_OHY |
| s1327 | 87 | linear | OHZ | lo | 80769/200000 | s1241,lo_OHY,s1315 |
| s1328 | 88 | linear | OHP | lo | 279357/1000000 | lo_HYP,lo_OHY,s1292 |
| s1330 | 89 | linear | OHQ | lo | 756723/1000000 | s1323,s1327,s1293 |
| s1332 | 90 | linear | OHZ | hi | 305639/500000 | s1318,s358,lo_OZR |
| s1334 | 94 | linear | ODR | lo | 9093/31250 | s1319,lo_ODZ,lo_OZR |
| s1338 | 96 | linear | OFZ | lo | 185077/500000 | lo_FZP,lo_OFP,s1302 |
| s1344 | 99 | linear | OFQ | lo | 82657/100000 | s1298,lo_OFP,s1235 |
| s1345 | 100 | linear | OYQ | lo | 1823/4000 | s1315,s1293,lo_YZQ |
| s1347 | 101 | linear | OYR | lo | 97761/250000 | s1315,lo_OZR,s1306 |
| s1349 | 102 | linear | HDZ | hi | 654603/1000000 | lo_CDZ,s256,s1307 |
| s1352 | 104 | linear | HFZ | lo | 285097/1000000 | lo_FZP,s1296,lo_HZP |
| s1353 | 105 | linear | CDY | lo | 477687/1000000 | lo_CDZ,s1309,s1316 |
| s1357 | 106 | linear | DFY | lo | 296391/1000000 | s1297,lo_DYP,lo_FYP |
| s1358 | 107 | linear | DZQ | lo | 9093/31250 | lo_DQR,s1319,lo_ZQR |
| s1362 | 114 | linear | CDF | hi | 367823/500000 | s1321 |
| s1364 | 118 | bary_lo | YZP | lo | 2127/20000 | hi_OHC,lo_HCY,s1289,lo_OHY,s1302,lo_HZP,lo_CZP |
| s1366 | 122 | bary_lo | DPQ | hi | 69641/125000 | hi_OHD,lo_HDP,s1312,s1328,hi_ODQ,hi_HDQ |
| s1368 | 126 | bary_hi | HFY | lo | 100137/1000000 | s1332,s1241,s1315,lo_OHY,s1325,s1352 |
| s1370 | 128 | bary_hi | DYQ | lo | 200531/500000 | s1332,s1241,s1315,lo_OHY,lo_ODQ,s188,s1358 |
| s1376 | 131 | bary_lo | FYQ | hi | 743023/1000000 | hi_OHQ,s1311,s1345,lo_OHY,hi_OFQ,hi_HFQ |
| s1377 | 132 | bary_lo | OCY | lo | 89979/500000 | s358,s1259,s1347,lo_OHY,s255,s1254 |
| s1379 | 133 | bary_lo | HDY | hi | 20411/40000 | s358,s1259,s1347,lo_OHY,hi_OHD,s1257 |
| s1383 | 134 | bary_hi | DFY | hi | 611289/1000000 | s358,s1259,s1347,lo_OHY,hi_ODF,hi_HDF,s1262 |
| s1386 | 135 | bary_lo | OCZ | lo | 4413/40000 | s358,s1318,lo_OZR,s1327,s255,s1254 |
| s1395 | 147 | bary_hi | OCP | hi | 465743/1000000 | s1228,lo_FZP,s1302,lo_OFP,hi_OCF,s1212 |
| s1396 | 150 | bary_hi | OPR | hi | 287853/500000 | s1228,lo_FZP,s1302,lo_OFP,s534,s1255 |
| s1398 | 151 | bary_hi | HFP | lo | 99169/1000000 | s1228,lo_FZP,s1302,lo_OFP,s1325,s1352 |
| s1402 | 154 | bary_hi | DPQ | lo | 257001/1000000 | s1228,lo_FZP,s1302,lo_OFP,lo_ODQ,s198,s1358 |
| s1404 | 155 | bary_hi | FPQ | lo | 38157/200000 | s1228,lo_FZP,s1302,lo_OFP,s1344,s1310 |
| s1411 | 159 | bary_hi | OCZ | hi | 291421/1000000 | hi_OFQ,s1310,s1293,s1338,hi_OCF,hi_OCQ |
| s1416 | 163 | bary_hi | OYP | lo | 9421/100000 | hi_OFQ,s1404,s1235,lo_OFP,lo_OFY,s1345 |
| s1417 | 164 | bary_hi | OPQ | hi | 140519/200000 | hi_OFQ,s1404,s1235,lo_OFP,hi_OFQ |
| s1420 | 168 | bary_lo | OZQ | lo | 34983/200000 | s534,s1320,lo_OZR,s1338,s1344,s1305 |
| s1425 | 170 | bary_hi | HDZ | lo | 364439/1000000 | hi_OYQ,lo_YZQ,s1420,s1315,lo_OHD,lo_HDY,s188 |
| s1426 | 171 | bary_lo | DFZ | lo | 13277/62500 | hi_OYQ,lo_YZQ,s1420,s1315,lo_ODF,s1357,s198 |
| s1427 | 174 | bary_lo | OFZ | hi | 133753/250000 | s535,s1306,lo_OZR,s1315,lo_OFY,s534 |
| s1430 | 175 | bary_lo | CZQ | lo | 34899/250000 | s1396,s1252,lo_OZR,s1302,lo_OCQ,s1283,lo_CQR |
| s1432 | 178 | bary_hi | DFZ | hi | 562309/1000000 | s256,lo_CDZ,s1425,s1307,hi_HDF,s1362 |
| s1433 | 179 | bary_lo | OCP | lo | 31017/125000 | s1379,lo_DYP,lo_HYP,lo_HDP,s255,s197,s1377 |
| s1434 | 180 | bary_lo | OPQ | lo | 22161/40000 | s1379,lo_DYP,lo_HYP,lo_HDP,s1330,lo_ODQ,s1345 |
| s1437 | 184 | bary_hi | CYP | lo | 150681/1000000 | s1349,s1248,lo_HZP,lo_HDP,lo_HCY,s1353,s1309 |
| s1440 | 188 | bary_lo | HYZ | lo | 121487/1000000 | s1266,s1248,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1446 | 195 | bary_lo | DZP | lo | 32741/200000 | s274,lo_YZQ,s1430,s1309,s1281,lo_DYP,s1402 |
| s1448 | 196 | bary_lo | DZQ | hi | 26977/62500 | s1303,s1251,s1430,lo_CZP,hi_CDQ,s1366 |
| s1449 | 200 | bary_lo | ZPQ | lo | 150347/1000000 | s1383,lo_FYP,lo_DYP,s1297,s1358,s1310,lo_YZQ |
| s1450 | 201 | bary_lo | ZPR | lo | 60217/500000 | s1383,lo_FYP,lo_DYP,s1297,s1319,s1320,s1306 |
| s1452 | 204 | bary_lo | OCR | lo | 155769/1000000 | s1448,lo_ZQR,lo_DQR,s1319,s197,s1386,lo_OCQ |
| s1454 | 206 | bary_lo | OQR | lo | 187217/1000000 | s1448,lo_ZQR,lo_DQR,s1319,lo_ODQ,s1420 |
| s1455 | 207 | bary_lo | HDR | hi | 582053/1000000 | s1448,lo_ZQR,lo_DQR,s1319,s1349,hi_HDQ |
| s1457 | 208 | bary_lo | HYR | lo | 175223/1000000 | s1448,lo_ZQR,lo_DQR,s1319,lo_HDY,s1440,s1311 |
| s1460 | 209 | bary_hi | DFR | hi | 130479/250000 | s1448,lo_ZQR,lo_DQR,s1319,s1432,hi_DFQ |
| s1466 | 210 | bary_hi | CDP | hi | 60609/100000 | s1376,s1317,s1404,lo_FYP,s1362,s260,lo_CDQ |
| s1467 | 2 | sum | OHF | lo | 286137/1000000 | s1368,lo_OFY,lo_OHY |
| s1468 | 3 | sum | OHZ | lo | 201989/500000 | s1440,lo_OHY,s1315 |
| s1470 | 4 | sum | OHP | lo | 28021/100000 | lo_HYP,lo_OHY,s1416 |
| s1471 | 5 | sum | OHQ | lo | 47407/62500 | s1323,s1468,s1420 |
| s1473 | 10 | sub | OZP | hi | 87253/250000 | s1427,lo_FZP,lo_OFP |
| s1475 | 12 | sum | OFQ | lo | 83781/100000 | s1404,lo_OFP,s1434 |
| s1476 | 12 | sub | FPQ | hi | 67871/200000 | hi_OFQ,lo_OFP,s1434 |
| s1478 | 14 | sum | OYQ | lo | 228703/500000 | s1315,s1420,lo_YZQ |
| s1481 | 19 | sum | HFZ | lo | 285169/1000000 | lo_FZP,s1398,lo_HZP |
| s1482 | 20 | sum | CDP | lo | 69941/200000 | lo_CDZ,lo_CZP,s1446 |
| s1484 | 21 | sum | CPQ | lo | 382943/1000000 | lo_CZP,s1430,s1449 |
| s1486 | 24 | sum | FYZ | lo | 5847/20000 | lo_FYP,lo_FZP,s1364 |
| s1487 | 25 | sum | FYQ | lo | 113503/250000 | s1404,lo_FYP,s1317 |
| s1489 | 27 | sumlo | OCF | lo | 170481/500000 | s1452,s1467,lo_OFR,s255,s358 |
| s1490 | 28 | sumlo | OCY | lo | 180011/1000000 | s1452,lo_OHY,s255,s1347,s358 |
| s1493 | 32 | sumlo | OYP | lo | 95361/1000000 | lo_OFP,s1478,lo_OFY,s1434,hi_OFQ |
| s1494 | 33 | sumlo | OZQ | lo | 88259/500000 | s1475,lo_OZR,s1338,s1454,s534 |
| s1495 | 35 | sumlo | HFY | lo | 100253/1000000 | s1481,lo_OHY,s1440,s1467,s1332 |
| s1498 | 39 | sumlo | DFP | lo | 110639/1000000 | s1426,lo_OFP,lo_FZP,lo_ODF,s1427 |
| s1499 | 40 | sumlo | FPQ | lo | 19291/100000 | lo_FZP,s1475,s1310,lo_OFP,s1427 |
| s1502 | 50 | sumlo | HCP | lo | 70393/500000 | lo_CZP,s1470,lo_HZP,s1433,s1473 |
| s1503 | 51 | sumlo | HFP | lo | 99447/1000000 | lo_FZP,s1470,lo_HZP,lo_OFP,s1473 |
| s1504 | 52 | sumlo | OZP | lo | 24129/125000 | lo_FZP,s1434,lo_OFP,s1449,s1476 |
| s1505 | 57 | sumhi | CPQ | hi | 574519/1000000 | hi_CDQ,s1417,s1366,hi_OCQ,lo_ODQ |
| s1507 | 59 | sumlo | OQR | lo | 93781/500000 | lo_DQR,s1494,lo_ODQ,lo_ZQR,s1448 |
| s1508 | 61 | balance_lo | YZR | lo | 109101/1000000 | lo_YZQ,lo_OFR,lo_ZQR,lo_OFY,lo_YQR,s1338,hi_OFQ |
| s1509 | 62 | balance_lo | HCZ | lo | 32003/200000 | lo_CZP,lo_OHR,lo_HZP,s1452,s1502,lo_OZR,s1396 |
| s1511 | 64 | balance_lo | CYZ | lo | 23257/200000 | s1364,s1452,lo_CZP,s1347,s1437,lo_OZR,s1396 |
| s1512 | 65 | balance_lo | FZQ | lo | 68341/250000 | s1486,s1507,lo_YZQ,lo_OFR,s1487,lo_OZR,s535 |
| s1513 | 67 | balance_lo | HYQ | lo | 6427/31250 | s1484,lo_OHY,s1434,lo_HCY,lo_OCQ,lo_HYP,s1395 |
| s1514 | 69 | balance_lo | ODP | lo | 10257/50000 | lo_OFY,s1402,s1478,s1498,s1475,lo_DYP,s1376 |
| s1516 | 71 | balance_lo | OYZ | lo | 199213/1000000 | lo_YZQ,lo_OFP,s1494,lo_FYP,s1478,lo_FZP,s1476 |
| s1518 | 73 | balance_lo | YPQ | lo | 172083/1000000 | s188,s1493,lo_ODQ,lo_HYP,s1471,lo_DYP,hi_OHD |
| s1519 | 75 | balance_lo | HZR | lo | 17483/100000 | s1468,lo_YQR,lo_OZR,s1513,lo_OHR,lo_YZQ,hi_OYQ |
| s1520 | 76 | balance_lo | DZR | lo | 329/3125 | lo_ODZ,lo_YQR,lo_OZR,s1370,s1334,lo_YZQ,hi_OYQ |
| s1521 | 77 | balance_lo | FZR | lo | 203599/1000000 | s1338,lo_YQR,lo_OZR,s1487,lo_OFR,lo_YZQ,hi_OYQ |
| s1522 | 80 | balance_lo | HCF | lo | 132447/500000 | s255,lo_FZP,s1489,lo_HZP,s1467,lo_CZP,s1473 |
| s1524 | 82 | balance_lo | HZQ | lo | 1799/10000 | lo_HCD,lo_YZQ,lo_HDY,s1430,lo_HCY,s1358,s260 |
| s1526 | 86 | linear | OHF | lo | 286253/1000000 | s1495,lo_OFY,lo_OHY |
| s1528 | 87 | linear | OHZ | lo | 4137/10000 | s1440,lo_OHY,s1516 |
| s1529 | 88 | linear | OHP | lo | 281361/1000000 | lo_HYP,lo_OHY,s1493 |
| s1531 | 89 | linear | OHQ | lo | 385059/500000 | s1524,s1528,s1494 |
| s1533 | 90 | linear | OHZ | hi | 609889/1000000 | s1519,s358,lo_OZR |
| s1539 | 96 | linear | OFZ | lo | 47379/125000 | lo_FZP,lo_OFP,s1504 |
| s1540 | 97 | linear | OZQ | hi | 10437/31250 | s1512,hi_OFQ,s1539 |
| s1545 | 99 | linear | OFQ | lo | 167987/200000 | s1499,lo_OFP,s1434 |
| s1546 | 100 | linear | OYQ | lo | 468731/1000000 | s1516,s1494,lo_YZQ |
| s1548 | 101 | linear | OYR | lo | 200657/500000 | s1516,lo_OZR,s1508 |
| s1550 | 102 | linear | HDZ | hi | 130797/200000 | lo_CDZ,s256,s1509 |
| s1553 | 104 | linear | HFZ | lo | 285447/1000000 | lo_FZP,s1503,lo_HZP |
| s1558 | 106 | linear | DFY | lo | 296639/1000000 | s1498,lo_DYP,lo_FYP |
| s1559 | 107 | linear | DZQ | lo | 3641/12500 | lo_DQR,s1520,lo_ZQR |
| s1564 | 114 | linear | CDF | hi | 367553/500000 | s1522 |
| s1566 | 118 | bary_lo | YZP | lo | 2153/20000 | hi_OHC,lo_HCY,s1490,lo_OHY,s1504,lo_HZP,lo_CZP |
| s1568 | 122 | bary_lo | DPQ | hi | 22223/40000 | hi_OHD,lo_HDP,s1514,s1529,hi_ODQ,hi_HDQ |
| s1571 | 126 | bary_hi | HFY | lo | 100547/1000000 | s1533,s1440,s1516,lo_OHY,s1526,s1553 |
| s1582 | 131 | bary_lo | FYQ | hi | 147741/200000 | hi_OHQ,s1513,s1546,lo_OHY,hi_OFQ,hi_HFQ |
| s1583 | 132 | bary_lo | OCY | lo | 36861/200000 | s358,s1457,s1548,lo_OHY,s255,s1452 |
| s1585 | 133 | bary_lo | HDY | hi | 498493/1000000 | s358,s1457,s1548,lo_OHY,hi_OHD,s1455 |
| s1589 | 134 | bary_hi | DFY | hi | 301919/500000 | s358,s1457,s1548,lo_OHY,hi_ODF,hi_HDF,s1460 |
| s1592 | 135 | bary_lo | OCZ | lo | 22461/200000 | s358,s1519,lo_OZR,s1528,s255,s1452 |
| s1601 | 147 | bary_hi | OCP | hi | 7264/15625 | s1427,lo_FZP,s1504,lo_OFP,hi_OCF,s1411 |
| s1607 | 154 | bary_hi | DPQ | lo | 128583/500000 | s1427,lo_FZP,s1504,lo_OFP,lo_ODQ,s198,s1559 |
| s1609 | 155 | bary_hi | FPQ | lo | 96761/500000 | s1427,lo_FZP,s1504,lo_OFP,s1545,s1512 |
| s1616 | 159 | bary_hi | OCZ | hi | 143241/500000 | hi_OFQ,s1512,s1494,s1539,hi_OCF,hi_OCQ |
| s1621 | 163 | bary_hi | OYP | lo | 96429/1000000 | hi_OFQ,s1609,s1434,lo_OFP,lo_OFY,s1546 |
| s1622 | 164 | bary_hi | OPQ | hi | 349929/500000 | hi_OFQ,s1609,s1434,lo_OFP,hi_OFQ |
| s1623 | 165 | bary_hi | OPR | hi | 574053/1000000 | hi_OFQ,s1609,s1434,lo_OFP,s534,s1507 |
| s1626 | 168 | bary_lo | OZQ | lo | 35781/200000 | s534,s1521,lo_OZR,s1539,s1545,s1507 |
| s1631 | 170 | bary_hi | HDZ | lo | 365967/1000000 | hi_OYQ,lo_YZQ,s1626,s1516,lo_OHD,lo_HDY,s188 |
| s1632 | 171 | bary_lo | DFZ | lo | 53361/250000 | hi_OYQ,lo_YZQ,s1626,s1516,lo_ODF,s1558,s198 |
| s1633 | 174 | bary_lo | OFZ | hi | 534239/1000000 | s535,s1508,lo_OZR,s1516,lo_OFY,s534 |
| s1636 | 175 | bary_lo | CZQ | lo | 34993/250000 | s1623,s1450,lo_OZR,s1504,lo_OCQ,s1484,lo_CQR |
| s1638 | 178 | bary_hi | DFZ | hi | 561419/1000000 | s256,lo_CDZ,s1631,s1509,hi_HDF,s1564 |
| s1639 | 179 | bary_lo | OCP | lo | 31559/125000 | s1585,lo_DYP,lo_HYP,lo_HDP,s255,s197,s1583 |
| s1640 | 180 | bary_lo | OPQ | lo | 113397/200000 | s1585,lo_DYP,lo_HYP,lo_HDP,s1531,lo_ODQ,s1546 |
| s1646 | 188 | bary_lo | HYZ | lo | 6077/50000 | s1466,s1446,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1651 | 195 | bary_lo | DZP | lo | 164433/1000000 | s274,lo_YZQ,s1636,s1511,s1482,lo_DYP,s1607 |
| s1652 | 196 | bary_lo | DZQ | hi | 430163/1000000 | s1505,s1449,s1636,lo_CZP,hi_CDQ,s1568 |
| s1653 | 200 | bary_lo | ZPQ | lo | 37829/250000 | s1589,lo_FYP,lo_DYP,s1498,s1559,s1512,lo_YZQ |
| s1654 | 201 | bary_lo | ZPR | lo | 60561/500000 | s1589,lo_FYP,lo_DYP,s1498,s1520,s1521,s1508 |
| s1656 | 204 | bary_lo | OCR | lo | 156411/1000000 | s1652,lo_ZQR,lo_DQR,s1520,s197,s1592,lo_OCQ |
| s1658 | 206 | bary_lo | OQR | lo | 188719/1000000 | s1652,lo_ZQR,lo_DQR,s1520,lo_ODQ,s1626 |
| s1659 | 207 | bary_lo | HDR | hi | 581261/1000000 | s1652,lo_ZQR,lo_DQR,s1520,s1550,hi_HDQ |
| s1661 | 208 | bary_lo | HYR | lo | 176171/1000000 | s1652,lo_ZQR,lo_DQR,s1520,lo_HDY,s1646,s1513 |
| s1663 | 209 | bary_hi | DFR | hi | 521101/1000000 | s1652,lo_ZQR,lo_DQR,s1520,s1638,hi_DFQ |
| s1669 | 210 | bary_hi | CDP | hi | 120993/200000 | s1582,s1518,s1609,lo_FYP,s1564,s260,lo_CDQ |
| s1670 | 0 | sum | OHC | lo | 74061/200000 | lo_HCY,s1583,lo_OHY |
| s1671 | 2 | sum | OHF | lo | 286547/1000000 | s1571,lo_OFY,lo_OHY |
| s1672 | 3 | sum | OHZ | lo | 413753/1000000 | s1646,lo_OHY,s1516 |
| s1674 | 4 | sum | OHP | lo | 282429/1000000 | lo_HYP,lo_OHY,s1621 |
| s1675 | 5 | sum | OHQ | lo | 386279/500000 | s1524,s1672,s1626 |
| s1677 | 10 | sub | OZP | hi | 348239/1000000 | s1633,lo_FZP,lo_OFP |
| s1679 | 11 | sub | OFZ | hi | 534111/1000000 | hi_OFQ,s1512,s1626 |
| s1680 | 12 | sum | OFQ | lo | 853507/1000000 | s1609,lo_OFP,s1640 |
| s1681 | 12 | sub | FPQ | hi | 65279/200000 | hi_OFQ,lo_OFP,s1640 |
| s1683 | 14 | sum | OYQ | lo | 235559/500000 | s1516,s1626,lo_YZQ |
| s1688 | 21 | sum | CPQ | lo | 12009/31250 | lo_CZP,s1636,s1653 |
| s1690 | 24 | sum | FYZ | lo | 5873/20000 | lo_FYP,lo_FZP,s1566 |
| s1691 | 25 | sum | FYQ | lo | 91721/200000 | s1609,lo_FYP,s1518 |
| s1694 | 27 | sumlo | OCF | lo | 171929/500000 | s1656,s1671,lo_OFR,s1670,s358 |
| s1695 | 28 | sumlo | OCY | lo | 37177/200000 | s1656,lo_OHY,s1670,s1548,s358 |
| s1697 | 32 | sumlo | OYP | lo | 24469/250000 | lo_OFP,s1683,lo_OFY,s1640,hi_OFQ |
| s1698 | 33 | sumlo | OZQ | lo | 11309/62500 | s1680,lo_OZR,s1539,s1658,s534 |
| s1699 | 35 | sumlo | HFY | lo | 10063/100000 | s1553,lo_OHY,s1646,s1671,s1533 |
| s1702 | 39 | sumlo | DFP | lo | 55501/500000 | s1632,lo_OFP,lo_FZP,lo_ODF,s1679 |
| s1703 | 40 | sumlo | FPQ | lo | 49053/250000 | lo_FZP,s1680,s1512,lo_OFP,s1679 |
| s1705 | 46 | sumlo | DZR | lo | 21401/200000 | s1559,lo_OZR,lo_ODZ,lo_ZQR,s1540 |
| s1707 | 50 | sumlo | HCP | lo | 142849/1000000 | lo_CZP,s1674,lo_HZP,s1639,s1677 |
| s1708 | 51 | sumlo | HFP | lo | 100261/1000000 | lo_FZP,s1674,lo_HZP,lo_OFP,s1677 |
| s1709 | 52 | sumlo | OZP | lo | 102333/500000 | lo_FZP,s1640,lo_OFP,s1653,s1681 |
| s1710 | 57 | sumhi | CPQ | hi | 286223/500000 | hi_CDQ,s1622,s1568,hi_OCQ,lo_ODQ |
| s1712 | 59 | sumlo | OQR | lo | 4729/25000 | lo_DQR,s1698,lo_ODQ,lo_ZQR,s1652 |
| s1713 | 61 | balance_lo | YZR | lo | 54969/500000 | lo_YZQ,lo_OFR,lo_ZQR,lo_OFY,lo_YQR,s1539,hi_OFQ |
| s1714 | 62 | balance_lo | HCZ | lo | 80457/500000 | lo_CZP,lo_OHR,lo_HZP,s1656,s1707,lo_OZR,s1623 |
| s1715 | 63 | balance_lo | HZQ | lo | 180427/1000000 | s1646,s1712,lo_YZQ,lo_OHR,s1513,lo_OZR,s535 |
| s1717 | 65 | balance_lo | FZQ | lo | 275293/1000000 | s1690,s1712,lo_YZQ,lo_OFR,s1691,lo_OZR,s535 |
| s1718 | 67 | balance_lo | HYQ | lo | 208901/1000000 | s1688,lo_OHY,s1640,lo_HCY,lo_OCQ,lo_HYP,s1601 |
| s1720 | 69 | balance_lo | ODP | lo | 105311/500000 | lo_OFY,s1607,s1683,s1702,s1680,lo_DYP,s1582 |
| s1725 | 71 | balance_lo | OYZ | lo | 212291/1000000 | lo_YZQ,lo_OFP,s1698,lo_FYP,s1683,lo_FZP,s1681 |
| s1727 | 73 | balance_lo | YPQ | lo | 34873/200000 | s188,s1697,lo_ODQ,lo_HYP,s1675,lo_DYP,hi_OHD |
| s1728 | 75 | balance_lo | HZR | lo | 7063/40000 | s1672,lo_YQR,lo_OZR,s1718,lo_OHR,lo_YZQ,hi_OYQ |
| s1729 | 77 | balance_lo | FZR | lo | 102703/500000 | s1539,lo_YQR,lo_OZR,s1691,lo_OFR,lo_YZQ,hi_OYQ |
| s1730 | 80 | balance_lo | HCF | lo | 267247/1000000 | s1670,lo_FZP,s1694,lo_HZP,s1671,lo_CZP,s1677 |
| s1732 | 83 | balance_lo | CZR | lo | 10071/100000 | s1639,lo_ZQR,s1688,lo_OZR,lo_OCQ,s1654,s1622 |
| s1733 | 84 | linear | OHC | lo | 74377/200000 | lo_HCY,s1695,lo_OHY |
| s1734 | 86 | linear | OHF | lo | 28663/100000 | s1699,lo_OFY,lo_OHY |
| s1736 | 87 | linear | OHZ | lo | 426831/1000000 | s1646,lo_OHY,s1725 |
| s1737 | 88 | linear | OHP | lo | 70969/250000 | lo_HYP,lo_OHY,s1697 |
| s1740 | 89 | linear | OHQ | lo | 394101/500000 | s1715,s1736,s1698 |
| s1742 | 90 | linear | OHZ | hi | 38009/62500 | s1728,s358,lo_OZR |
| s1749 | 96 | linear | OFZ | lo | 195333/500000 | lo_FZP,lo_OFP,s1709 |
| s1751 | 97 | linear | OFZ | hi | 530143/1000000 | s1717,hi_OFQ,s1698 |
| s1752 | 97 | linear | OZQ | hi | 320421/1000000 | s1717,hi_OFQ,s1749 |
| s1757 | 99 | linear | OFQ | lo | 856197/1000000 | s1703,lo_OFP,s1640 |
| s1758 | 100 | linear | OYQ | lo | 97247/200000 | s1725,s1698,lo_YZQ |
| s1760 | 101 | linear | OYR | lo | 415229/1000000 | s1725,lo_OZR,s1713 |
| s1762 | 102 | linear | HDZ | hi | 326543/500000 | lo_CDZ,s256,s1714 |
| s1765 | 104 | linear | HFZ | lo | 286261/1000000 | lo_FZP,s1708,lo_HZP |
| s1771 | 107 | linear | DZQ | lo | 58601/200000 | lo_DQR,s1705,lo_ZQR |
| s1776 | 114 | linear | CDF | hi | 732753/1000000 | s1730 |
| s1778 | 118 | bary_lo | YZP | lo | 54677/500000 | hi_OHC,lo_HCY,s1695,lo_OHY,s1709,lo_HZP,lo_CZP |
| s1780 | 122 | bary_lo | DPQ | hi | 276813/500000 | hi_OHD,lo_HDP,s1720,s1737,hi_ODQ,hi_HDQ |
| s1783 | 126 | bary_hi | HFY | lo | 5053/50000 | s1742,s1646,s1725,lo_OHY,s1734,s1765 |
| s1796 | 131 | bary_lo | FYQ | hi | 732881/1000000 | hi_OHQ,s1718,s1758,lo_OHY,hi_OFQ,hi_HFQ |
| s1797 | 132 | bary_lo | OCY | lo | 192503/1000000 | s358,s1661,s1760,lo_OHY,s1733,s1656 |
| s1799 | 133 | bary_lo | HDY | hi | 96511/200000 | s358,s1661,s1760,lo_OHY,hi_OHD,s1659 |
| s1803 | 134 | bary_hi | DFY | hi | 148443/250000 | s358,s1661,s1760,lo_OHY,hi_ODF,hi_HDF,s1663 |
| s1806 | 135 | bary_lo | OCZ | lo | 23093/200000 | s358,s1728,lo_OZR,s1736,s1733,s1656 |
| s1815 | 147 | bary_hi | OCP | hi | 462467/1000000 | s1751,lo_FZP,s1709,lo_OFP,hi_OCF,s1616 |
| s1816 | 148 | bary_hi | OZP | hi | 344143/1000000 | s1751,lo_FZP,s1709,lo_OFP,s1751 |
| s1820 | 151 | bary_hi | HFP | lo | 100499/1000000 | s1751,lo_FZP,s1709,lo_OFP,s1734,s1765 |
| s1823 | 153 | bary_lo | DFP | lo | 13979/125000 | s1751,lo_FZP,s1709,lo_OFP,lo_ODF,s1632 |
| s1825 | 154 | bary_hi | DPQ | lo | 258621/1000000 | s1751,lo_FZP,s1709,lo_OFP,lo_ODQ,s198,s1771 |
| s1827 | 155 | bary_hi | FPQ | lo | 19849/100000 | s1751,lo_FZP,s1709,lo_OFP,s1757,s1717 |
| s1830 | 157 | bary_hi | YPQ | hi | 374139/1000000 | s1751,lo_FZP,s1709,lo_OFP,s1758,s1796,lo_YZQ |
| s1834 | 159 | bary_hi | OCZ | hi | 34993/125000 | hi_OFQ,s1717,s1698,s1749,hi_OCF,hi_OCQ |
| s1840 | 163 | bary_hi | OYP | lo | 49651/500000 | hi_OFQ,s1827,s1640,lo_OFP,lo_OFY,s1758 |
| s1841 | 164 | bary_hi | OPQ | hi | 69489/100000 | hi_OFQ,s1827,s1640,lo_OFP,hi_OFQ |
| s1842 | 165 | bary_hi | OPR | hi | 284851/500000 | hi_OFQ,s1827,s1640,lo_OFP,s534,s1712 |
| s1844 | 168 | bary_lo | OZQ | lo | 184083/1000000 | s534,s1729,lo_OZR,s1749,s1757,s1712 |
| s1849 | 170 | bary_hi | HDZ | lo | 368023/1000000 | hi_OYQ,lo_YZQ,s1844,s1725,lo_OHD,lo_HDY,s188 |
| s1854 | 175 | bary_lo | CZQ | lo | 2811/20000 | s1842,s1654,lo_OZR,s1709,lo_OCQ,s1688,lo_CQR |
| s1856 | 178 | bary_hi | DFZ | hi | 139749/250000 | s256,lo_CDZ,s1849,s1714,hi_HDF,s1776 |
| s1857 | 179 | bary_lo | OCP | lo | 8147/31250 | s1799,lo_DYP,lo_HYP,lo_HDP,s1733,s197,s1797 |
| s1858 | 180 | bary_lo | OPQ | lo | 73059/125000 | s1799,lo_DYP,lo_HYP,lo_HDP,s1740,lo_ODQ,s1758 |
| s1864 | 188 | bary_lo | HYZ | lo | 121593/1000000 | s1669,s1651,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1869 | 196 | bary_lo | DZQ | hi | 214181/500000 | s1710,s1653,s1854,lo_CZP,hi_CDQ,s1780 |
| s1870 | 200 | bary_lo | ZPQ | lo | 152877/1000000 | s1803,lo_FYP,lo_DYP,s1823,s1771,s1717,lo_YZQ |
| s1871 | 201 | bary_lo | ZPR | lo | 122969/1000000 | s1803,lo_FYP,lo_DYP,s1823,s1705,s1729,s1713 |
| s1873 | 204 | bary_lo | OCR | lo | 39341/250000 | s1869,lo_ZQR,lo_DQR,s1705,s197,s1806,lo_OCQ |
| s1875 | 206 | bary_lo | OQR | lo | 190637/1000000 | s1869,lo_ZQR,lo_DQR,s1705,lo_ODQ,s1844 |
| s1876 | 207 | bary_lo | HDR | hi | 580251/1000000 | s1869,lo_ZQR,lo_DQR,s1705,s1762,hi_HDQ |
| s1880 | 209 | bary_hi | DFR | hi | 103961/200000 | s1869,lo_ZQR,lo_DQR,s1705,s1856,hi_DFQ |
| s1887 | 0 | sum | OHC | lo | 378503/1000000 | lo_HCY,s1797,lo_OHY |
| s1888 | 2 | sum | OHF | lo | 14353/50000 | s1783,lo_OFY,lo_OHY |
| s1889 | 3 | sum | OHZ | lo | 106721/250000 | s1864,lo_OHY,s1725 |
| s1891 | 4 | sum | OHP | lo | 142651/500000 | lo_HYP,lo_OHY,s1840 |
| s1892 | 5 | sum | OHQ | lo | 395697/500000 | s1715,s1889,s1844 |
| s1893 | 7 | sum | OHR | lo | 696459/1000000 | s1728,s1889,lo_OZR |
| s1895 | 11 | sub | FZQ | hi | 411631/1000000 | hi_OFQ,s1749,s1844 |
| s1896 | 11 | sub | OFZ | hi | 131751/250000 | hi_OFQ,s1717,s1844 |
| s1897 | 12 | sum | OFQ | lo | 437981/500000 | s1827,lo_OFP,s1858 |
| s1898 | 12 | sub | FPQ | hi | 77227/250000 | hi_OFQ,lo_OFP,s1858 |
| s1900 | 14 | sum | OYQ | lo | 244687/500000 | s1725,s1844,lo_YZQ |
| s1901 | 17 | sum | OPR | lo | 84127/200000 | s1709,lo_OZR,s1871 |
| s1903 | 19 | sum | HFZ | lo | 286499/1000000 | lo_FZP,s1820,lo_HZP |
| s1906 | 21 | sum | CPQ | lo | 386427/1000000 | lo_CZP,s1854,s1870 |
| s1907 | 22 | sum | CPR | lo | 316679/1000000 | lo_CZP,s1732,s1871 |
| s1909 | 24 | sum | FYZ | lo | 147677/500000 | lo_FYP,lo_FZP,s1778 |
| s1910 | 25 | sum | FYQ | lo | 93171/200000 | s1827,lo_FYP,s1727 |
| s1912 | 26 | sumlo | OCF | lo | 1433/4000 | lo_OCQ,s1888,s1897,s1887,hi_OHQ |
| s1914 | 28 | sumlo | OCY | lo | 97867/500000 | s1873,lo_OHY,s1887,s1760,s358 |
| s1916 | 32 | sumlo | OYP | lo | 50623/500000 | lo_OFP,s1900,lo_OFY,s1858,hi_OFQ |
| s1917 | 33 | sumlo | OZQ | lo | 186979/1000000 | s1897,lo_OZR,s1749,s1875,s534 |
| s1918 | 35 | sumlo | HFY | lo | 101207/1000000 | s1903,lo_OHY,s1864,s1888,s1742 |
| s1922 | 40 | sumlo | FPQ | lo | 203161/1000000 | lo_FZP,s1897,s1717,lo_OFP,s1896 |
| s1924 | 46 | sumlo | DZR | lo | 22407/200000 | s1771,lo_OZR,lo_ODZ,lo_ZQR,s1752 |
| s1926 | 49 | sumlo | YZR | lo | 7071/62500 | s1909,lo_ZQR,s1729,lo_YZQ,s1895 |
| s1927 | 50 | sumlo | HCP | lo | 2951/20000 | lo_CZP,s1891,lo_HZP,s1857,s1816 |
| s1928 | 51 | sumlo | HFP | lo | 102231/1000000 | lo_FZP,s1891,lo_HZP,lo_OFP,s1816 |
| s1930 | 52 | sumlo | OZP | lo | 110993/500000 | lo_FZP,s1858,lo_OFP,s1870,s1898 |
| s1931 | 53 | sumlo | DFP | lo | 22957/200000 | s1825,lo_FYP,lo_DYP,s1922,s1830 |
| s1932 | 57 | sumhi | CPQ | hi | 568917/1000000 | hi_CDQ,s1841,s1780,hi_OCQ,lo_ODQ |
| s1935 | 59 | sumlo | OQR | lo | 38253/200000 | lo_DQR,s1917,lo_ODQ,lo_ZQR,s1869 |
| s1938 | 62 | balance_lo | HCZ | lo | 163467/1000000 | lo_CZP,s1893,lo_HZP,s1873,s1927,lo_OZR,s1842 |
| s1939 | 63 | balance_lo | HZQ | lo | 181773/1000000 | s1864,s1935,lo_YZQ,s1893,s1718,lo_OZR,s535 |
| s1941 | 65 | balance_lo | FZQ | lo | 27803/100000 | s1909,s1935,lo_YZQ,lo_OFR,s1910,lo_OZR,s535 |
| s1942 | 67 | balance_lo | HYQ | lo | 42789/200000 | s1906,lo_OHY,s1858,lo_HCY,lo_OCQ,lo_HYP,s1815 |
| s1943 | 68 | balance_lo | HYR | lo | 35983/200000 | s1907,lo_OHY,s1901,lo_HCY,s1873,lo_HYP,s1815 |
| s1945 | 69 | balance_lo | ODP | lo | 220621/1000000 | lo_OFY,s1825,s1900,s1931,s1897,lo_DYP,s1796 |
| s1946 | 70 | balance_lo | DYR | lo | 21837/100000 | s1909,lo_DQR,lo_YZQ,s507,s1910,s1924,s1895 |
| s1949 | 71 | balance_lo | OYZ | lo | 231621/1000000 | lo_YZQ,lo_OFP,s1917,lo_FYP,s1900,lo_FZP,s1898 |
| s1951 | 73 | balance_lo | YPQ | lo | 7097/40000 | s188,s1916,lo_ODQ,lo_HYP,s1892,lo_DYP,hi_OHD |
| s1953 | 75 | balance_lo | HZR | lo | 89671/500000 | s1889,lo_YQR,lo_OZR,s1942,s1893,lo_YZQ,hi_OYQ |
| s1954 | 77 | balance_lo | FZR | lo | 103969/500000 | s1749,lo_YQR,lo_OZR,s1910,lo_OFR,lo_YZQ,hi_OYQ |
| s1955 | 80 | balance_lo | HCF | lo | 276671/1000000 | s1887,lo_FZP,s1912,lo_HZP,s1888,lo_CZP,s1816 |
| s1958 | 84 | linear | OHC | lo | 190867/500000 | lo_HCY,s1914,lo_OHY |
| s1960 | 86 | linear | OHF | lo | 287207/1000000 | s1918,lo_OFY,lo_OHY |
| s1962 | 87 | linear | OHZ | lo | 223107/500000 | s1864,lo_OHY,s1949 |
| s1963 | 88 | linear | OHP | lo | 143623/500000 | lo_HYP,lo_OHY,s1916 |
| s1967 | 89 | linear | OHQ | lo | 407483/500000 | s1939,s1962,s1917 |
| s1969 | 90 | linear | OHZ | hi | 605377/1000000 | s1953,s358,lo_OZR |
| s1972 | 92 | linear | ODF | lo | 214203/500000 | s1931,s1945,lo_OFP |
| s1973 | 93 | linear | DFQ | lo | 68013/500000 | s1972,lo_ODQ,hi_OFQ |
| s1978 | 96 | linear | OFZ | lo | 203993/500000 | lo_FZP,lo_OFP,s1930 |
| s1980 | 97 | linear | OFZ | hi | 521371/1000000 | s1941,hi_OFQ,s1917 |
| s1981 | 97 | linear | OZQ | hi | 75091/250000 | s1941,hi_OFQ,s1978 |
| s1982 | 97 | linear | FZQ | hi | 78283/200000 | hi_OFQ,s1978,s1917 |
| s1983 | 98 | linear | OFR | lo | 177231/250000 | s1954,s1978,lo_OZR |
| s1987 | 99 | linear | OFQ | lo | 880633/1000000 | s1922,lo_OFP,s1858 |
| s1988 | 100 | linear | OYQ | lo | 1279/2500 | s1949,s1917,lo_YZQ |
| s1990 | 101 | linear | OYR | lo | 437757/1000000 | s1949,lo_OZR,s1926 |
| s1992 | 102 | linear | HDZ | hi | 650533/1000000 | lo_CDZ,s256,s1938 |
| s1995 | 104 | linear | HFZ | lo | 288231/1000000 | lo_FZP,s1928,lo_HZP |
| s2002 | 107 | linear | DZQ | lo | 59607/200000 | lo_DQR,s1924,lo_ZQR |
| s2007 | 114 | linear | CDF | hi | 723329/1000000 | s1955 |
| s2010 | 118 | bary_lo | YZP | lo | 11189/100000 | hi_OHC,lo_HCY,s1914,lo_OHY,s1930,lo_HZP,lo_CZP |
| s2012 | 122 | bary_lo | DPQ | hi | 110203/200000 | hi_OHD,lo_HDP,s1945,s1963,hi_ODQ,hi_HDQ |
| s2015 | 125 | bary_hi | OYQ | hi | 138333/200000 | s1969,s1864,s1949,lo_OHY,hi_OHQ,s1981 |
| s2016 | 126 | bary_hi | HFY | lo | 20393/200000 | s1969,s1864,s1949,lo_OHY,s1960,s1995 |
| s2034 | 131 | bary_lo | FYQ | hi | 724443/1000000 | hi_OHQ,s1942,s1988,lo_OHY,hi_OFQ,hi_HFQ |
| s2036 | 132 | bary_lo | OCY | lo | 207061/1000000 | s358,s1943,s1990,lo_OHY,s1958,s1873 |
| s2038 | 133 | bary_lo | HDY | hi | 456781/1000000 | s358,s1943,s1990,lo_OHY,hi_OHD,s1876 |
| s2043 | 134 | bary_hi | DFY | hi | 577479/1000000 | s358,s1943,s1990,lo_OHY,hi_ODF,hi_HDF,s1880 |
| s2056 | 147 | bary_hi | OCP | hi | 229199/500000 | s1980,lo_FZP,s1930,lo_OFP,hi_OCF,s1834 |
| s2057 | 148 | bary_hi | OZP | hi | 335371/1000000 | s1980,lo_FZP,s1930,lo_OFP,s1980 |
| s2065 | 154 | bary_hi | DPQ | lo | 264453/1000000 | s1980,lo_FZP,s1930,lo_OFP,lo_ODQ,s1973,s2002 |
| s2067 | 155 | bary_hi | FPQ | lo | 206677/1000000 | s1980,lo_FZP,s1930,lo_OFP,s1987,s1941 |
| s2070 | 157 | bary_hi | YPQ | hi | 358151/1000000 | s1980,lo_FZP,s1930,lo_OFP,s1988,s2034,lo_YZQ |
| s2072 | 158 | bary_hi | ZPQ | hi | 8737/40000 | s1980,lo_FZP,s1930,lo_OFP,s1917,s1982 |
| s2080 | 163 | bary_hi | OYP | lo | 51671/500000 | hi_OFQ,s2067,s1858,lo_OFP,lo_OFY,s1988 |
| s2082 | 165 | bary_hi | OPR | hi | 562581/1000000 | hi_OFQ,s2067,s1858,lo_OFP,s534,s1935 |
| s2083 | 166 | bary_hi | CDP | hi | 74743/125000 | hi_OFQ,s2067,s1858,lo_OFP,hi_OCD,s2007,lo_CDQ |
| s2085 | 168 | bary_lo | OZQ | lo | 95883/500000 | s534,s1954,lo_OZR,s1978,s1987,s1935 |
| s2093 | 172 | bary_lo | DZP | lo | 83787/500000 | s2015,lo_YZQ,s2085,s1949,s1945,lo_DYP,s2065 |
| s2101 | 175 | bary_lo | CZQ | lo | 70753/500000 | s2082,s1871,lo_OZR,s1930,lo_OCQ,s1906,lo_CQR |
| s2106 | 180 | bary_lo | OPQ | lo | 610501/1000000 | s2038,lo_DYP,lo_HYP,lo_HDP,s1967,lo_ODQ,s1988 |
| s2113 | 188 | bary_lo | HYZ | lo | 121929/1000000 | s2083,s2093,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s2119 | 192 | bary_lo | DFR | lo | 110941/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s1973 |
| s2121 | 196 | bary_lo | DZQ | hi | 53217/125000 | s1932,s1870,s2101,lo_CZP,hi_CDQ,s2012 |
| s2122 | 200 | bary_lo | ZPQ | lo | 155817/1000000 | s2043,lo_FYP,lo_DYP,s1931,s2002,s1941,lo_YZQ |
| s2124 | 203 | bary_lo | OYR | hi | 589833/1000000 | hi_DYQ,lo_YQR,lo_DQR,s1946,s2,s2015 |
| s2129 | 206 | bary_lo | OQR | lo | 193491/1000000 | s2121,lo_ZQR,lo_DQR,s1924,lo_ODQ,s2085 |
| s2130 | 207 | bary_lo | HDR | hi | 578493/1000000 | s2121,lo_ZQR,lo_DQR,s1924,s1992,hi_HDQ |
| s2140 | 0 | sum | OHC | lo | 393061/1000000 | lo_HCY,s2036,lo_OHY |
| s2141 | 2 | sum | OHF | lo | 57593/200000 | s2016,lo_OFY,lo_OHY |
| s2142 | 3 | sum | OHZ | lo | 8931/20000 | s2113,lo_OHY,s1949 |
| s2144 | 4 | sum | OHP | lo | 144671/500000 | lo_HYP,lo_OHY,s2080 |
| s2147 | 7 | sum | OHR | lo | 179723/250000 | s1953,s2142,lo_OZR |
| s2149 | 11 | sub | FZQ | hi | 96657/250000 | hi_OFQ,s1978,s2085 |
| s2150 | 11 | sub | OFZ | hi | 64573/125000 | hi_OFQ,s1941,s2085 |
| s2151 | 12 | sum | OFQ | lo | 455089/500000 | s2067,lo_OFP,s2106 |
| s2152 | 12 | sub | FPQ | hi | 282879/1000000 | hi_OFQ,lo_OFP,s2106 |
| s2154 | 14 | sum | OYQ | lo | 516387/1000000 | s1949,s2085,lo_YZQ |
| s2161 | 21 | sum | CPQ | lo | 390323/1000000 | lo_CZP,s2101,s2122 |
| s2163 | 24 | sum | FYZ | lo | 29789/100000 | lo_FYP,lo_FZP,s2010 |
| s2164 | 25 | sum | FYQ | lo | 238551/500000 | s2067,lo_FYP,s1951 |
| s2166 | 26 | sumlo | OCF | lo | 48067/125000 | lo_OCQ,s2141,s2151,s2140,hi_OHQ |
| s2172 | 33 | sumlo | OZQ | lo | 3923/20000 | s2151,lo_OZR,s1978,s2129,s534 |
| s2176 | 40 | sumlo | FPQ | lo | 213911/1000000 | lo_FZP,s2151,s1941,lo_OFP,s2150 |
| s2179 | 45 | sumlo | HZR | lo | 12159/62500 | s1939,lo_OZR,s2142,lo_ZQR,s1981 |
| s2181 | 46 | sumlo | DZR | lo | 121073/1000000 | s2002,lo_OZR,lo_ODZ,lo_ZQR,s1981 |
| s2183 | 48 | sumlo | FZR | lo | 212407/1000000 | s1941,lo_OZR,s1978,lo_ZQR,s1981 |
| s2186 | 49 | sumlo | YZR | lo | 122747/1000000 | s2163,lo_ZQR,s2183,lo_YZQ,s2149 |
| s2188 | 51 | sumlo | HFP | lo | 4241/40000 | lo_FZP,s2144,lo_HZP,lo_OFP,s2057 |
| s2190 | 52 | sumlo | OZP | lo | 7873/31250 | lo_FZP,s2106,lo_OFP,s2122,s2152 |
| s2192 | 53 | sumlo | DFP | lo | 24843/200000 | s2065,lo_FYP,lo_DYP,s2176,s2070 |
| s2197 | 58 | diffhi | DFQ | hi | 647101/1000000 | s2012,hi_OFQ,s2176,lo_ODQ,s2106 |
| s2198 | 59 | sumlo | OQR | lo | 194449/1000000 | lo_DQR,s2172,lo_ODQ,lo_ZQR,s2121 |
| s2205 | 63 | balance_lo | HZQ | lo | 93639/500000 | s2113,s2198,lo_YZQ,s2147,s1942,lo_OZR,s2124 |
| s2208 | 65 | balance_lo | FZQ | lo | 285207/1000000 | s2163,s2198,lo_YZQ,s1983,s2164,lo_OZR,s2124 |
| s2209 | 67 | balance_lo | HYQ | lo | 44383/200000 | s2161,lo_OHY,s2106,lo_HCY,lo_OCQ,lo_HYP,s2056 |
| s2212 | 69 | balance_lo | ODP | lo | 239333/1000000 | lo_OFY,s2065,s2154,s2192,s2151,lo_DYP,s2034 |
| s2213 | 70 | balance_lo | DYR | lo | 49549/200000 | s2163,lo_DQR,lo_YZQ,s2119,s2164,s2181,s2149 |
| s2216 | 71 | balance_lo | OYZ | lo | 26483/100000 | lo_YZQ,lo_OFP,s2172,lo_FYP,s2154,lo_FZP,s2152 |
| s2220 | 77 | balance_lo | FZR | lo | 214327/1000000 | s1978,lo_YQR,lo_OZR,s2164,s1983,lo_YZQ,s2015 |
| s2221 | 80 | balance_lo | HCF | lo | 59097/200000 | s2140,lo_FZP,s2166,lo_HZP,s2141,lo_CZP,s2057 |
| s2232 | 87 | linear | OHZ | lo | 479759/1000000 | s2113,lo_OHY,s2216 |
| s2237 | 89 | linear | OHQ | lo | 863187/1000000 | s2205,s2232,s2172 |
| s2239 | 90 | linear | OHZ | hi | 23607/40000 | s2179,s358,lo_OZR |
| s2240 | 90 | linear | OHR | lo | 767303/1000000 | s2179,s2232,lo_OZR |
| s2241 | 90 | linear | HZR | hi | 953/3125 | s358,s2232,lo_OZR |
| s2243 | 94 | linear | ODR | lo | 307073/1000000 | s2181,lo_ODZ,lo_OZR |
| s2247 | 96 | linear | OFZ | lo | 27371/62500 | lo_FZP,lo_OFP,s2190 |
| s2249 | 97 | linear | OFZ | hi | 505023/1000000 | s2208,hi_OFQ,s2172 |
| s2250 | 97 | linear | OZQ | hi | 263237/1000000 | s2208,hi_OFQ,s2247 |
| s2251 | 97 | linear | OFQ | lo | 919293/1000000 | s2208,s2247,s2172 |
| s2257 | 100 | linear | OYQ | lo | 27699/50000 | s2216,s2172,lo_YZQ |
| s2259 | 101 | linear | OYR | lo | 480577/1000000 | s2216,lo_OZR,s2186 |
| s2266 | 104 | linear | HFZ | lo | 11681/40000 | lo_FZP,s2188,lo_HZP |
| s2277 | 107 | linear | DZQ | lo | 307073/1000000 | lo_DQR,s2181,lo_ZQR |
| s2283 | 110 | support_z | HFR | lo | 204971/1000000 | s2266,s2241 |
| s2284 | 111 | support_y | DPQ | lo | 147663/500000 | s2277,s2072 |
| s2285 | 114 | linear | CDF | hi | 140903/200000 | s2221 |
| s2296 | 124 | bary_lo | OHY | hi | 25427/125000 | s2239,s2113,s2216,lo_OHY,s2239 |
| s2301 | 125 | bary_hi | OYQ | hi | 677303/1000000 | s2239,s2113,s2216,lo_OHY,hi_OHQ,s2250 |
| s2304 | 127 | bary_hi | HYR | lo | 189179/1000000 | s2239,s2113,s2216,lo_OHY,s2240,s2179 |
| s2314 | 130 | bary_hi | ODY | hi | 620543/1000000 | hi_OHQ,s2209,s2257,lo_OHY,hi_OHD,lo_ODQ |
| s2331 | 133 | bary_lo | HDY | hi | 40781/100000 | s358,s2304,s2259,lo_OHY,hi_OHD,s2130 |
| s2342 | 137 | bary_lo | OZQ | lo | 39549/200000 | s358,s2179,lo_OZR,s2232,s2237,s2198 |
| s2348 | 144 | bary_lo | OYR | hi | 57997/100000 | hi_ODQ,lo_DQR,s2198,s2243,s2314,s2301 |
| s2364 | 149 | bary_hi | OPQ | hi | 671571/1000000 | s2249,lo_FZP,s2190,lo_OFP,hi_OFQ,s2250 |
| s2373 | 155 | bary_hi | FPQ | lo | 13863/62500 | s2249,lo_FZP,s2190,lo_OFP,s2251,s2208 |
| s2386 | 161 | bary_lo | DZQ | hi | 400133/1000000 | hi_OFQ,s2208,s2342,s2247,hi_ODQ,s2197 |
| s2396 | 166 | bary_hi | CDP | hi | 291437/500000 | hi_OFQ,s2373,s2106,lo_OFP,hi_OCD,s2285,lo_CDQ |
| s2399 | 168 | bary_lo | OZQ | lo | 102309/500000 | s534,s2220,lo_OZR,s2247,s2251,s2198 |
| s2400 | 169 | bary_lo | HZR | hi | 296091/1000000 | s534,s2220,lo_OZR,s2247,s358,s2283 |
| s2407 | 172 | bary_lo | DZP | lo | 192203/1000000 | s2301,lo_YZQ,s2399,s2216,s2212,lo_DYP,s2284 |
| s2409 | 173 | bary_lo | OHZ | hi | 583829/1000000 | s2348,s2186,lo_OZR,s2216,s2296,s358 |
| s2429 | 180 | bary_lo | OPQ | lo | 26257/40000 | s2331,lo_DYP,lo_HYP,lo_HDP,s2237,lo_ODQ,s2257 |
| s2432 | 181 | bary_lo | ZPQ | lo | 81659/500000 | s2331,lo_DYP,lo_HYP,lo_HDP,s2205,s2277,lo_YZQ |
| s2437 | 188 | bary_lo | HYZ | lo | 122677/1000000 | s2396,s2407,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s2444 | 203 | bary_lo | OYR | hi | 289169/500000 | hi_DYQ,lo_YQR,lo_DQR,s2213,s2314,s2301 |
| s2452 | 206 | bary_lo | OQR | lo | 208859/1000000 | s2386,lo_ZQR,lo_DQR,s2181,lo_ODQ,s2399 |
| s2465 | 3 | sum | OHZ | lo | 480507/1000000 | s2437,lo_OHY,s2216 |
| s2475 | 11 | sub | OFZ | hi | 99311/200000 | hi_OFQ,s2208,s2399 |
| s2476 | 12 | sum | OFQ | lo | 971233/1000000 | s2373,lo_OFP,s2429 |
| s2477 | 12 | sub | FPQ | hi | 47391/200000 | hi_OFQ,lo_OFP,s2429 |
| s2481 | 15 | sub | OYZ | hi | 362591/1000000 | s2444,lo_OZR,s2186 |
| s2482 | 16 | sub | OZP | hi | 60727/200000 | s2364,s2399,s2432 |
| s2515 | 33 | sumlo | OZQ | lo | 217977/1000000 | s2476,lo_OZR,s2247,s2452,s534 |
| s2530 | 40 | sumlo | OFZ | lo | 493127/1000000 | lo_FZP,s2476,s2208,lo_OFP,s2477 |
| s2533 | 40 | diffhi | FZQ | hi | 146971/500000 | s2477,s2475,lo_FZP,s2476,lo_OFP |
| s2544 | 42 | sumlo | HFZ | lo | 298213/1000000 | lo_FZP,s2465,lo_HZP,s2530,s2482 |
| s2546 | 43 | sumlo | OHZ | lo | 16729/31250 | s2544,s2515,s2205,s2530,s2533 |
| s2548 | 43 | diffhi | HZQ | hi | 216189/1000000 | s2533,s2409,s2544,s2515,s2530 |
| s2549 | 44 | sumlo | HZQ | lo | 211053/1000000 | s2437,s2515,s2546,lo_YZQ,s2481 |
| s2552 | 44 | diffhi | OZQ | hi | 46631/200000 | s2548,s2481,s2546,lo_YZQ,s2437 |
| s2558 | 45 | sumlo | HZR | lo | 297713/1000000 | s2549,lo_OZR,s2546,lo_ZQR,s2552 |

## Conclusion

{"triangle":"HZR","lower":"s2558","upper":"s2400"}
