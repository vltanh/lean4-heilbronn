# Leaf rppmmppmpmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYZ":1,"DYP":-1,"FYP":1,"QYZ":1}

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
| 26 | interior_line | ["ZP","Y","OHC","Y",1] |
| 27 | interior_line | ["ZQ","Y","OHC","H",1] |
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | capacity | ["HFZ","P","Q","FZQ",1,"39077/62500","C072"] |
| 30 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 31 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 32 | plu | ["OHDZP","ODP",1] |
| 33 | plu | ["OHDPR","OPR",-1] |
| 34 | plu | ["DOYZP","DZP",-1] |
| 35 | plu | ["FHYZP","FYZ",1] |
| 36 | plu | ["FHZPQ","FPQ",1] |
| 37 | plu | ["YOHDZ","YOZ",1] |
| 38 | plu | ["YOZQR","YZR",1] |
| 39 | plu | ["YHDPR","YPR",-1] |
| 40 | plu | ["ZOHYR","ZHR",-1] |
| 41 | plu | ["ZOHPQ","ZPQ",-1] |
| 42 | plu | ["ZOHPR","ZPR",-1] |
| 43 | plu | ["ZHDFR","ZFR",-1] |
| 44 | plu | ["PDFZR","PFR",-1] |
| 45 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OHR | OHR | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 279/1000 | ["cost","R"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 279/1000 | ["cost","P"] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
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
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZP | YZP | lo | 93/1000 | ["cost",""] |
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
| hi_OFR | OFR | hi | 2865451013/3175000000 | "C064" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFY | CFY | hi | 271/500 | "C033" |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |
| hi_CYQ | CYQ | hi | 27769359917/45783500000 | "C032" |
| hi_CPQ | CPQ | hi | 541235929/721000000 | "C058" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |
| hi_FYQ | FYQ | hi | 245797/317500 | "C044" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 4 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 5 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 6 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 7 | ["fan","OPQ","OZP","OZQ","ZPQ"] | ["fan","OPQ","Z"] |
| 8 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 9 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 10 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 11 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 12 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 13 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 14 | ["fan","CPQ","CZP","CZQ","ZPQ"] | ["fan","CPQ","Z"] |
| 15 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 16 | ["fan","DYQ","DQR","DYR","YQR"] | ["fan","DYQ","R"] |
| 17 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 18 | ["fan","FYZ","FYP","FZP","YZP"] | ["fan","FYZ","P"] |
| 19 | ["plu","OCD","OHQ","OCQ","OHD","ODQ","OHC"] | ["plu","OHCDQ"] |
| 20 | ["plu","OCZ","OHQ","OCQ","OHZ","OHC","OZQ"] | ["plu","OHCZQ"] |
| 21 | ["plu","HCF","OHZ","HCZ","OHF","HFZ","OHC"] | ["plu","HOCFZ"] |
| 22 | ["plu","HYQ","OHC","HCQ","OHY","HCY","OHQ"] | ["plu","HOCYQ"] |
| 23 | ["plu","HDY","OHZ","HDZ","OHY","HYZ","OHD"] | ["plu","HODYZ"] |
| 24 | ["plu","HCP","HDZ","HCD","HZP","HCZ","HDP"] | ["plu","HCDZP"] |
| 25 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 26 | ["plu","CDP","CYZ","CDY","CZP","CDZ","CYP"] | ["plu","CDYZP"] |
| 27 | ["plu","CDZ","OHD","HCD","ODZ","HDZ","OCD"] | ["plu","DOHCZ"] |
| 28 | ["plu","HCD","ODQ","CDQ","OHD","HDQ","OCD"] | ["plu","DOHCQ"] |
| 29 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 30 | ["plu","CDQ","DFR","CDF","DQR","CDR","DFQ"] | ["plu","DCFQR"] |
| 31 | ["plu","CDQ","DYR","CDR","DYQ","CDY","DQR"] | ["plu","DCYQR"] |
| 32 | ["plu","CDQ","DZR","CDR","DZQ","CDZ","DQR"] | ["plu","DCZQR"] |
| 33 | ["plu","DFP","FYZ","DFY","FZP","DFZ","FYP"] | ["plu","FDYZP"] |
| 34 | ["plu","HDY","OCY","CDY","OHY","HCY","ODY"] | ["plu","YOHCD"] |
| 35 | ["plu","HYQ","OCY","CYQ","OHY","HCY","OYQ"] | ["plu","YOHCQ"] |
| 36 | ["plu","CDY","HYQ","CYQ","HDY","DYQ","HCY"] | ["plu","YHCDQ"] |
| 37 | ["plu","DYZ","HYQ","DYQ","HYZ","HDY","YZQ"] | ["plu","YHDZQ"] |
| 38 | ["plu","DYZ","FYQ","DFY","YZQ","DYQ","FYZ"] | ["plu","YDFZQ"] |
| 39 | ["plu","DYZ","YPQ","DYP","YZQ","DYQ","YZP"] | ["plu","YDZPQ"] |
| 40 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 41 | ["plu","HDZ","OZQ","DZQ","OHZ","HZQ","ODZ"] | ["plu","ZOHDQ"] |
| 42 | ["plu","DZP","OZQ","DZQ","OZP","ODZ","ZPQ"] | ["plu","ZODPQ"] |
| 43 | ["plu","DZP","HCZ","CDZ","HZP","CZP","HDZ"] | ["plu","ZHCDP"] |
| 44 | ["plu","DYZ","HZQ","DZQ","HYZ","HDZ","YZQ"] | ["plu","ZHDYQ"] |
| 45 | ["plu","CZQ","DYZ","CDZ","YZQ","CYZ","DZQ"] | ["plu","ZCDYQ"] |
| 46 | ["plu","DYZ","FZQ","DFZ","YZQ","DZQ","FYZ"] | ["plu","ZDFYQ"] |
| 47 | ["plu","DYZ","ZPQ","DZP","YZQ","DZQ","YZP"] | ["plu","ZDYPQ"] |
| 48 | ["plu","DZP","HCP","CDP","HZP","CZP","HDP"] | ["plu","PHCDZ"] |
| 49 | ["plu","DFP","YZP","DYP","FZP","DZP","FYP"] | ["plu","PDFYZ"] |
| 50 | ["plu","DZQ","OQR","DQR","OZQ","ODQ","ZQR"] | ["plu","QODZR"] |
| 51 | ["plu","CQR","DYQ","CDQ","YQR","CYQ","DQR"] | ["plu","QCDYR"] |
| 52 | ["plu","CQR","DZQ","CDQ","ZQR","CZQ","DQR"] | ["plu","QCDZR"] |
| 53 | ["plu","CQR","DYR","CDR","YQR","CYR","DQR"] | ["plu","RCDYQ"] |
| 54 | ["balance",[[1,"HCZ","ODP"],[-1,"CZP","OHD"],[-1,"HZP","OCD"],[-1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 55 | ["balance",[[-1,"HYZ","ODQ"],[-1,"YZQ","OHD"],[1,"HZQ","ODY"],[-1,"HYQ","ODZ"]]] | ["six","ODHYZQ"] |
| 56 | ["balance",[[-1,"CYZ","ODP"],[1,"YZP","OCD"],[1,"CZP","ODY"],[1,"CYP","ODZ"]]] | ["six","ODCYZP"] |
| 57 | ["balance",[[1,"HCZ","OPQ"],[-1,"CZP","OHQ"],[-1,"HZP","OCQ"],[-1,"HCP","OZQ"]]] | ["six","OQHCZP"] |
| 58 | ["balance",[[1,"ODY","HCZ"],[1,"DYZ","OHC"],[-1,"OYZ","HCD"],[1,"ODZ","HCY"]]] | ["six","HCODYZ"] |
| 59 | ["balance",[[1,"ODZ","HCQ"],[1,"DZQ","OHC"],[-1,"OZQ","HCD"],[1,"ODQ","HCZ"]]] | ["six","HCODZQ"] |
| 60 | ["balance",[[1,"DYZ","HCQ"],[-1,"YZQ","HCD"],[-1,"DZQ","HCY"],[-1,"DYQ","HCZ"]]] | ["six","HCDYZQ"] |
| 61 | ["balance",[[1,"OCP","HYQ"],[-1,"CPQ","OHY"],[-1,"OPQ","HCY"],[-1,"OCQ","HYP"]]] | ["six","HYOCPQ"] |
| 62 | ["balance",[[1,"ODZ","HYQ"],[1,"DZQ","OHY"],[-1,"OZQ","HDY"],[1,"ODQ","HYZ"]]] | ["six","HYODZQ"] |
| 63 | ["balance",[[1,"CDZ","HYP"],[1,"DZP","HCY"],[1,"CZP","HDY"],[-1,"CDP","HYZ"]]] | ["six","HYCDZP"] |
| 64 | ["balance",[[1,"CZP","HYQ"],[1,"ZPQ","HCY"],[-1,"CPQ","HYZ"],[1,"CZQ","HYP"]]] | ["six","HYCZPQ"] |
| 65 | ["balance",[[-1,"DYP","HZQ"],[1,"YPQ","HDZ"],[-1,"DPQ","HYZ"],[-1,"DYQ","HZP"]]] | ["six","HZDYPQ"] |
| 66 | ["balance",[[-1,"ODY","CZP"],[-1,"DYZ","OCP"],[1,"OYZ","CDP"],[-1,"ODZ","CYP"]]] | ["six","CPODYZ"] |
| 67 | ["balance",[[-1,"ODZ","CPQ"],[-1,"DZQ","OCP"],[1,"OZQ","CDP"],[-1,"ODQ","CZP"]]] | ["six","CPODZQ"] |
| 68 | ["balance",[[1,"OYZ","CPQ"],[-1,"YZQ","OCP"],[-1,"OZQ","CYP"],[-1,"OYQ","CZP"]]] | ["six","CPOYZQ"] |
| 69 | ["balance",[[-1,"DYZ","CPQ"],[1,"YZQ","CDP"],[1,"DZQ","CYP"],[1,"DYQ","CZP"]]] | ["six","CPDYZQ"] |
| 70 | ["balance",[[-1,"OHD","CZQ"],[1,"HDZ","OCQ"],[1,"ODZ","HCQ"],[1,"OHZ","CDQ"]]] | ["six","CQOHDZ"] |
| 71 | ["balance",[[1,"OHC","DYZ"],[1,"HCY","ODZ"],[-1,"OCY","HDZ"],[1,"OHY","CDZ"]]] | ["six","DZOHCY"] |
| 72 | ["balance",[[-1,"OHC","DZQ"],[-1,"HCQ","ODZ"],[-1,"OCQ","HDZ"],[1,"OHQ","CDZ"]]] | ["six","DZOHCQ"] |
| 73 | ["balance",[[-1,"OHC","DQR"],[1,"HCQ","ODR"],[-1,"OCQ","HDR"],[-1,"OHQ","CDR"]]] | ["six","DROHCQ"] |
| 74 | ["balance",[[1,"DYZ","FPQ"],[-1,"YZQ","DFP"],[-1,"DZQ","FYP"],[-1,"DYQ","FZP"]]] | ["six","FPDYZQ"] |
| 75 | ["balance",[[1,"CDF","YZQ"],[1,"DFQ","CYZ"],[-1,"CFQ","DYZ"],[1,"CDQ","FYZ"]]] | ["six","YZCDFQ"] |
| 76 | ["balance",[[1,"HDZ","YPQ"],[-1,"DZQ","HYP"],[-1,"HZQ","DYP"],[-1,"HDQ","YZP"]]] | ["six","YPHDZQ"] |
| 77 | ["balance",[[1,"CDZ","YPQ"],[-1,"DZP","CYQ"],[1,"CZP","DYQ"],[1,"CDP","YZQ"]]] | ["six","YQCDZP"] |
| 78 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 79 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 80 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 81 | ["linear",{"OHD":1,"ODZ":-1,"OHZ":-1,"HDZ":-1},"0"] | ["affine_quad","OHDZ",-1] |
| 82 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 83 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 84 | ["linear",{"OCD":-1,"ODZ":-1,"OCZ":1,"CDZ":1},"0"] | ["affine_quad","OCDZ",-1] |
| 85 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 86 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 87 | ["linear",{"ODZ":-1,"OZQ":1,"ODQ":-1,"DZQ":1},"0"] | ["affine_quad","ODZQ",-1] |
| 88 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 89 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 90 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 91 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 92 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 93 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 94 | ["linear",{"HDZ":1,"HZQ":-1,"HDQ":-1,"DZQ":1},"0"] | ["affine_quad","HDZQ",-1] |
| 95 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 96 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 97 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 98 | ["linear",{"CZP":-1,"CPQ":1,"CZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","CZPQ",-1] |
| 99 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 100 | ["linear",{"DYQ":1,"DQR":-1,"DYR":-1,"YQR":-1},"0"] | ["affine_quad","DYQR",1] |
| 101 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 102 | ["quad","OFR","OHF","93/91"] | ["quad","ORFH","YZP"] |
| 103 | ["quad","HDQ","HZQ","93/125"] | ["quad","HZQD","PR"] |
| 104 | ["support","DZQ","CDQ","CDZ","1023/1000"] | ["support_pent","DZOCQ"] |
| 105 | ["support","DZQ","ZPQ","DPQ","1023/1000"] | ["support_pent","QDFPZ"] |
| 106 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 107 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 108 | ["bary",["OCY",1],[null,["OHC",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","OC"] |
| 109 | ["bary",["OYQ",1],[null,["OHQ",1],["OCQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","OQ"] |
| 110 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HCQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HQ"] |
| 111 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 112 | ["bary",["CFY",1],[["OCF",1],["HCF",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CF"] |
| 113 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CQ"] |
| 114 | ["bary",["YZP",1],[["OZP",1],["HZP",1],["CZP",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","ZP"] |
| 115 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 116 | ["bary",["HDY",-1],[["OHD",-1],null,null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HD"] |
| 117 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DF"] |
| 118 | ["bary",["DYZ",-1],[["ODZ",1],["HDZ",-1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DZ"] |
| 119 | ["bary",["OZQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OQ"] |
| 120 | ["bary",["OZR",1],[null,["OHR",1],["ODR",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OR"] |
| 121 | ["bary",["HDZ",-1],[["OHD",-1],null,null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","HD"] |
| 122 | ["bary",["CZQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CQ"] |
| 123 | ["bary",["DYZ",1],[["ODY",1],["HDY",-1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DY"] |
| 124 | ["bary",["DZQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DQ"] |
| 125 | ["bary",["OCY",1],[null,["OHC",1],["OCZ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OC"] |
| 126 | ["bary",["OYQ",1],[null,["OHQ",1],["OZQ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OQ"] |
| 127 | ["bary",["HDY",-1],[["OHD",-1],null,["HDZ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HD"] |
| 128 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HQ"] |
| 129 | ["bary",["DYZ",-1],[["ODZ",1],["HDZ",-1],null],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DZ"] |
| 130 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 131 | ["bary",["HYQ",-1],[["OHQ",-1],null,null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HQ"] |
| 132 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CD"] |
| 133 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CQ"] |
| 134 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","FQ"] |
| 135 | ["bary",["FZQ",-1],[["OFQ",-1],["HFQ",-1],null],"OHQ",["HZQ","OZQ","OHZ"]] | ["bary","OHQ","Z","FQ"] |
| 136 | ["bary",["CZR",1],[["OCR",1],["CDR",1],["CYR",1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","CR"] |
| 137 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 138 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 139 | ["bary",["HCZ",1],[["OHC",-1],["HCY",-1],["HCQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HC"] |
| 140 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 141 | ["bary",["HYZ",1],[["OHY",-1],null,["HYQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HY"] |
| 142 | ["bary",["HZQ",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HQ"] |
| 143 | ["bary",["DFZ",1],[["ODF",1],["DFY",1],["DFQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DF"] |
| 144 | ["bary",["DZP",1],[["ODP",1],["DYP",1],["DPQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DP"] |
| 145 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDR",-1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","HD"] |
| 146 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 147 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |
| 148 | ["bary",["CDZ",1],[["HCD",1],null,null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","CD"] |
| 149 | ["bary",["FYZ",1],[["HFY",-1],["CFY",1],["DFY",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","FY"] |
| 150 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 151 | ["bary",["DPQ",-1],[["HDQ",-1],["CDQ",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DQ"] |
| 152 | ["bary",["YZP",1],[["HYZ",1],["CYZ",-1],["DYZ",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","YZ"] |
| 153 | ["bary",["HCP",1],[null,["HCD",1],["HCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","HC"] |
| 154 | ["bary",["CDP",1],[["HCD",1],null,["CDZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CD"] |
| 155 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 156 | ["bary",["DPQ",-1],[["HDQ",-1],null,["DZQ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","DQ"] |
| 157 | ["bary",["DPR",-1],[["HDR",-1],["DFR",-1],["DZR",-1]],"HFZ",["FZP","HZP","HFP"]] | ["bary","HFZ","P","DR"] |
| 158 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],null],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","FY"] |
| 159 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 160 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 161 | ["bary",["CYZ",-1],[null,["CDY",-1],["CYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CY"] |
| 162 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DPQ",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DQ"] |
| 163 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 164 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 165 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 166 | ["bary",["DZR",1],[["CDZ",1],null,["DZQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DZ"] |
| 167 | ["bary",["OCZ",1],[null,["OCY",1],["OCQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","OC"] |
| 168 | ["bary",["OZQ",1],[["OCQ",-1],["OYQ",1],null],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","OQ"] |
| 169 | ["bary",["DFZ",1],[["CDF",1],["DFY",1],["DFQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DF"] |
| 170 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 171 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPR",1]],"CYR",["YZR","CZR","CYZ"]] | ["bary","CYR","Z","DP"] |
| 172 | ["bary",["CDZ",1],[null,["CDP",1],["CDQ",-1]],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","CD"] |
| 173 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHY",-1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OH"] |
| 174 | ["bary",["DPQ",-1],[null,["DFQ",-1],["DYQ",-1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","DQ"] |
| 175 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],["YZQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZQ"] |
| 176 | ["bary",["OQR",1],[["ODQ",1],["OZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OQ"] |
| 177 | ["bary",["CQR",1],[["CDQ",1],["CZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","CQ"] |
| 178 | ["bary",["DFP",1],[null,["DFY",1],["DFZ",1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","DF"] |
| 179 | ["bary",["DPQ",-1],[["DFQ",-1],["DYQ",-1],["DZQ",-1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","DQ"] |
| 180 | ["bary",["ODP",1],[["ODF",1],["ODY",1],["ODQ",-1]],"FYQ",["YPQ","FPQ","FYP"]] | ["bary","FYQ","P","OD"] |
| 181 | ["bary",["OPQ",1],[["OFQ",1],["OYQ",1],null],"FYQ",["YPQ","FPQ","FYP"]] | ["bary","FYQ","P","OQ"] |
| 182 | ["bary",["CDP",1],[["CDF",1],["CDY",1],["CDQ",-1]],"FYQ",["YPQ","FPQ","FYP"]] | ["bary","FYQ","P","CD"] |
| 183 | ["bary",["CPQ",1],[["CFQ",1],["CYQ",1],null],"FYQ",["YPQ","FPQ","FYP"]] | ["bary","FYQ","P","CQ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s2 | 1 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s4 | 2 | sub | HDZ | hi | 157/250 | hi_OHD,lo_ODZ,lo_OHZ |
| s8 | 3 | sub | ODP | hi | 407/500 | hi_OHD,lo_HDP,lo_OHP |
| s72 | 22 | sumlo | HYQ | lo | 71251/500000 | lo_HCQ,lo_OHY,lo_HCY,lo_OHQ,hi_OHC |
| s76 | 24 | sumlo | HCP | lo | 58273/500000 | lo_HCD,lo_HZP,lo_HCZ,lo_HDP,s4 |
| s81 | 25 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s84 | 27 | sumlo | CDZ | lo | 118563/1000000 | lo_HCD,lo_ODZ,lo_HDZ,lo_OCD,hi_OHD |
| s89 | 29 | sumlo | HDR | lo | 192191/1000000 | lo_CDR,lo_HDQ,lo_DQR,lo_HCD,hi_CDQ |
| s90 | 30 | sumlo | DFR | lo | 50707/500000 | lo_CDF,lo_DQR,lo_CDR,lo_DFQ,hi_CDQ |
| s99 | 53 | sumlo | DYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CYR,lo_DQR,hi_CQR |
| s101 | 54 | balance_lo | HCZ | lo | 25893/200000 | lo_CZP,lo_OHD,lo_HZP,lo_OCD,s76,lo_ODZ,s8 |
| s102 | 55 | balance_lo | HZQ | lo | 184297/1000000 | lo_HYZ,lo_ODQ,lo_YZQ,lo_OHD,s72,lo_ODZ,s2 |
| s109 | 60 | balance_lo | DYZ | lo | 29237/200000 | lo_YZQ,lo_HCD,lo_DZQ,lo_HCY,lo_DYQ,s101,hi_HCQ |
| s114 | 70 | balance_lo | CZQ | lo | 65513/500000 | lo_HDZ,lo_OCQ,lo_ODZ,s81,lo_OHZ,lo_CDQ,hi_OHD |
| s117 | 71 | balance_lo | OCY | lo | 3851/40000 | lo_OHC,s109,lo_HCY,lo_ODZ,lo_OHY,s84,s4 |
| s118 | 72 | balance_lo | CDZ | lo | 65513/500000 | lo_OHC,lo_DZQ,s81,lo_ODZ,lo_OCQ,lo_HDZ,hi_OHQ |
| s119 | 73 | balance_lo | ODR | lo | 125117/1000000 | lo_OHC,lo_DQR,lo_OCQ,s89,lo_OHQ,lo_CDR,hi_HCQ |
| s123 | 75 | balance_lo | DYZ | lo | 1841/12500 | lo_CDF,lo_YZQ,lo_DFQ,lo_CYZ,lo_CDQ,lo_FYZ,hi_CFQ |
| s125 | 76 | balance_lo | YPQ | lo | 94371/1000000 | lo_DZQ,lo_HYP,s102,lo_DYP,lo_HDQ,lo_YZP,s4 |
| s127 | 77 | balance_lo | DZP | lo | 13243/125000 | s118,s125,lo_CZP,lo_DYQ,lo_CDP,lo_YZQ,hi_CYQ |
| s128 | 78 | balance_lo | OZP | lo | 12741/100000 | lo_OHC,s127,lo_OCD,lo_HZP,lo_OHD,lo_CZP,hi_HCD |
| s129 | 79 | linear | OHC | lo | 11291/40000 | lo_HCY,s117,lo_OHY |
| s135 | 85 | linear | ODY | lo | 2083/6250 | s123,lo_ODZ,lo_OYZ |
| s139 | 86 | linear | ODP | lo | 163177/500000 | s127,lo_ODZ,s128 |
| s140 | 88 | linear | ODQ | lo | 311117/1000000 | lo_DQR,s119,lo_OQR |
| s147 | 92 | linear | HCQ | lo | 111197/250000 | s114,s101,s102 |
| s150 | 93 | linear | HDZ | lo | 36493/125000 | s127,lo_HDP,lo_HZP |
| s153 | 95 | linear | CDY | lo | 185653/500000 | s118,lo_CYZ,s123 |
| s155 | 96 | linear | CDP | lo | 32997/100000 | s118,lo_CZP,s127 |
| s160 | 98 | linear | ZPQ | hi | 65831/125000 | hi_CPQ,lo_CZP,s114 |
| s161 | 100 | linear | DYQ | lo | 166923/500000 | lo_DQR,s99,lo_YQR |
| s166 | 102 | quad | OHF | lo | 119473/1000000 | hi_OFR |
| s169 | 104 | support_z | CDZ | lo | 82227/500000 | lo_DZQ,hi_CDQ |
| s172 | 105 | support_z | DPQ | lo | 16921/125000 | lo_DZQ,s160 |
| s173 | 106 | linear | HCD | hi | 907/1000 | lo_HDF |
| s178 | 111 | bary_hi | CDY | hi | 725679/1000000 | hi_OHC,lo_HCY,s117,lo_OHY,hi_OCD,s173 |
| s181 | 114 | bary_lo | YZP | lo | 98039/1000000 | hi_OHC,lo_HCY,s117,lo_OHY,s128,lo_HZP,lo_CZP |
| s185 | 115 | bary_lo | OCY | lo | 112083/1000000 | hi_OHD,lo_HDY,s135,lo_OHY,s129,lo_OCD |
| s189 | 116 | bary_lo | HDY | hi | 14343/25000 | hi_OHD,lo_HDY,s135,lo_OHY,hi_OHD |
| s196 | 117 | bary_hi | DFY | hi | 25547/40000 | hi_OHD,lo_HDY,s135,lo_OHY,hi_ODF,hi_HDF |
| s197 | 118 | bary_lo | DYZ | hi | 368437/1000000 | hi_OHD,lo_HDY,s135,lo_OHY,lo_ODZ,s4 |
| s204 | 119 | bary_lo | OZQ | lo | 151343/1000000 | hi_OHD,s150,lo_ODZ,lo_OHZ,lo_OHQ,s140 |
| s205 | 120 | bary_lo | OZR | lo | 99449/1000000 | hi_OHD,s150,lo_ODZ,lo_OHZ,lo_OHR,s119 |
| s212 | 122 | bary_lo | CZQ | lo | 17761/100000 | hi_OHD,s150,lo_ODZ,lo_OHZ,lo_OCQ,s147,lo_CDQ |
| s247 | 136 | bary_lo | CZR | lo | 3767/31250 | s2,s123,lo_OYZ,lo_ODZ,lo_OCR,lo_CDR,lo_CYR |
| s251 | 137 | bary_lo | OFR | hi | 429769/500000 | hi_ODQ,lo_DQR,lo_OQR,s119,hi_ODF,hi_OFQ |
| s252 | 138 | bary_lo | OYR | hi | 75083/125000 | hi_ODQ,lo_DQR,lo_OQR,s119,s2,hi_OYQ |
| s268 | 144 | bary_lo | DZP | lo | 16247/125000 | hi_OYQ,lo_YZQ,s204,lo_OYZ,s139,lo_DYP,s172 |
| s271 | 145 | bary_hi | HDZ | lo | 30423/100000 | s252,lo_YZR,s205,lo_OYZ,lo_OHD,lo_HDY,s89 |
| s276 | 146 | bary_lo | HDZ | hi | 613081/1000000 | s173,s169,s271,s101,s173 |
| s277 | 147 | bary_lo | HFZ | hi | 472903/1000000 | s173,s169,s271,s101,hi_HCF,hi_HDF |
| s284 | 149 | bary_hi | FYZ | hi | 29599/62500 | s173,s169,s271,s101,lo_HFY,hi_CFY,s196 |
| s293 | 150 | bary_hi | CDP | hi | 348727/500000 | s173,s155,lo_HDP,s76,s173 |
| s322 | 153 | bary_lo | HCP | lo | 124913/1000000 | s276,s268,lo_HZP,lo_HDP,lo_HCD,s101 |
| s344 | 157 | bary_hi | DPR | lo | 114161/1000000 | s277,lo_FZP,lo_HZP,lo_HFP,s89,s90,lo_DZR |
| s352 | 160 | bary_lo | HYZ | lo | 117801/1000000 | s293,s268,lo_CZP,s169,lo_HCY,lo_HDY,lo_HYP |
| s369 | 164 | bary_lo | CYR | hi | 134653/250000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s178,hi_CYQ |
| s373 | 165 | bary_lo | DYR | lo | 7807/50000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s153,s161 |
| s374 | 166 | bary_lo | DZR | lo | 98193/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s169,lo_DZQ |
| s398 | 171 | bary_lo | DZP | lo | 13757/100000 | s369,lo_YZR,s247,lo_CYZ,s155,lo_DYP,s344 |
| s403 | 173 | bary_hi | OHP | lo | 203153/1000000 | s196,lo_FYP,lo_DYP,lo_DFP,lo_OHD,s166,lo_OHY |
| s404 | 174 | bary_lo | DPQ | hi | 18737/31250 | s196,lo_FYP,lo_DYP,lo_DFP,hi_DFQ,hi_DYQ |
| s443 | 179 | bary_hi | DPQ | lo | 176821/1000000 | s284,s181,lo_FZP,lo_FYP,lo_DFQ,s161,lo_DZQ |
| s455 | 0 | sum | OHC | lo | 298083/1000000 | lo_HCY,s185,lo_OHY |
| s457 | 3 | sub | ODP | hi | 703847/1000000 | hi_OHD,lo_HDP,s403 |
| s466 | 9 | sum | HCQ | lo | 122843/250000 | s212,s101,s102 |
| s469 | 10 | sum | CDY | lo | 202367/500000 | s169,lo_CYZ,s123 |
| s470 | 11 | sum | CDP | lo | 24689/62500 | s169,lo_CZP,s398 |
| s471 | 13 | sum | CYQ | lo | 36361/100000 | lo_CYZ,s212,lo_YZQ |
| s477 | 16 | sum | DYQ | lo | 17107/50000 | lo_DQR,s373,lo_YQR |
| s478 | 17 | sum | DZQ | lo | 284193/1000000 | lo_DQR,s374,lo_ZQR |
| s479 | 18 | sum | FYZ | lo | 284039/1000000 | lo_FYP,lo_FZP,s181 |
| s489 | 31 | sumlo | DYR | lo | 165379/1000000 | lo_CDR,s477,s469,lo_DQR,hi_CDQ |
| s490 | 32 | sumlo | DZR | lo | 99343/1000000 | lo_CDR,s478,s169,lo_DQR,hi_CDQ |
| s492 | 34 | sumlo | OCY | lo | 7477/62500 | s469,lo_OHY,lo_HCY,s135,s189 |
| s494 | 36 | sumlo | HYQ | lo | 183643/1000000 | s471,lo_HDY,s477,lo_HCY,s178 |
| s497 | 38 | sumlo | DYZ | lo | 79523/500000 | lo_DFY,lo_YZQ,s477,s479,hi_FYQ |
| s503 | 54 | balance_lo | HCZ | lo | 9427/62500 | lo_CZP,lo_OHD,lo_HZP,lo_OCD,s322,lo_ODZ,s457 |
| s504 | 55 | balance_lo | HZQ | lo | 25929/125000 | s352,s140,lo_YZQ,lo_OHD,s494,lo_ODZ,s2 |
| s507 | 58 | balance_lo | OYZ | lo | 117229/1000000 | s135,s503,s497,s455,lo_ODZ,lo_HCY,s173 |
| s508 | 59 | balance_lo | OZQ | lo | 611/3125 | lo_ODZ,s466,s478,s455,s140,s503,s173 |
| s509 | 60 | balance_lo | DYZ | lo | 82311/500000 | lo_YZQ,lo_HCD,s478,lo_HCY,s477,s503,hi_HCQ |
| s512 | 65 | balance_lo | YPQ | lo | 117341/1000000 | lo_DYP,s504,s443,s352,s477,lo_HZP,s276 |
| s513 | 73 | balance_lo | ODR | lo | 63583/500000 | s455,lo_DQR,lo_OCQ,s89,lo_OHQ,lo_CDR,hi_HCQ |
| s514 | 74 | balance_lo | FPQ | lo | 45393/250000 | lo_YZQ,lo_DFP,s478,lo_FYP,s477,lo_FZP,s197 |
| s516 | 77 | balance_lo | DZP | lo | 36211/250000 | s169,s512,lo_CZP,s477,s470,lo_YZQ,hi_CYQ |
| s517 | 78 | balance_lo | OZP | lo | 151843/1000000 | s455,s516,lo_OCD,lo_HZP,lo_OHD,lo_CZP,s173 |
| s518 | 79 | linear | OHC | lo | 9551/31250 | lo_HCY,s492,lo_OHY |
| s523 | 82 | linear | OHZ | lo | 32803/100000 | s352,lo_OHY,s507 |
| s525 | 83 | linear | OHQ | lo | 365491/500000 | s504,s523,s508 |
| s526 | 83 | linear | HZQ | hi | 9529/20000 | hi_OHQ,s523,s508 |
| s527 | 85 | linear | ODY | lo | 374851/1000000 | s509,lo_ODZ,s507 |
| s530 | 86 | linear | ODP | lo | 389687/1000000 | s516,lo_ODZ,s517 |
| s531 | 88 | linear | ODQ | lo | 156583/500000 | lo_DQR,s513,lo_OQR |
| s532 | 89 | linear | OYQ | lo | 405749/1000000 | s507,s508,lo_YZQ |
| s539 | 92 | linear | HCQ | lo | 267937/500000 | s212,s503,s504 |
| s542 | 93 | linear | HDZ | lo | 82711/250000 | s516,lo_HDP,lo_HZP |
| s544 | 95 | linear | CDY | lo | 105519/250000 | s169,lo_CYZ,s509 |
| s545 | 96 | linear | CDP | lo | 201149/500000 | s169,lo_CZP,s516 |
| s546 | 100 | linear | DYQ | lo | 351379/1000000 | lo_DQR,s489,lo_YQR |
| s547 | 101 | linear | DZQ | lo | 285343/1000000 | lo_DQR,s490,lo_ZQR |
| s549 | 102 | quad | OHF | lo | 4061/25000 | s251 |
| s552 | 103 | quad | HDQ | lo | 5351/20000 | s526 |
| s553 | 104 | support_z | CDZ | lo | 168193/1000000 | s547,hi_CDQ |
| s557 | 110 | bary_hi | HYQ | lo | 185539/1000000 | hi_OHC,lo_HCY,s492,lo_OHY,s525,s539 |
| s559 | 114 | bary_lo | YZP | lo | 101617/1000000 | hi_OHC,lo_HCY,s492,lo_OHY,s517,lo_HZP,lo_CZP |
| s571 | 117 | bary_hi | DFY | hi | 153127/250000 | hi_OHD,lo_HDY,s527,lo_OHY,hi_ODF,hi_HDF |
| s580 | 121 | bary_lo | HDZ | hi | 57897/100000 | hi_OHD,s542,lo_ODZ,s523,hi_OHD |
| s584 | 122 | bary_lo | CZQ | lo | 122/625 | hi_OHD,s542,lo_ODZ,s523,lo_OCQ,s539,lo_CDQ |
| s587 | 123 | bary_hi | DYZ | hi | 337647/1000000 | hi_OHD,s542,lo_ODZ,s523,s2,lo_HDY |
| s598 | 130 | bary_lo | OCY | lo | 66329/500000 | hi_OHQ,s557,s532,lo_OHY,s518,lo_OCQ |
| s601 | 131 | bary_lo | HYQ | hi | 501251/1000000 | hi_OHQ,s557,s532,lo_OHY,hi_OHQ |
| s602 | 134 | bary_lo | FYQ | hi | 379829/500000 | hi_OHQ,s557,s532,lo_OHY,hi_OFQ,hi_HFQ |
| s605 | 140 | bary_hi | HDZ | lo | 345269/1000000 | hi_OYQ,lo_YZQ,s508,s507,lo_OHD,lo_HDY,s552 |
| s607 | 144 | bary_lo | DZP | lo | 73479/500000 | hi_OYQ,lo_YZQ,s508,s507,s530,lo_DYP,s443 |
| s613 | 148 | bary_hi | CDZ | hi | 410899/1000000 | s173,s553,s605,s503,s173 |
| s626 | 153 | bary_lo | HCP | lo | 27141/200000 | s580,s607,lo_HZP,lo_HDP,lo_HCD,s503 |
| s628 | 154 | bary_hi | CDP | hi | 34081/50000 | s580,s607,lo_HZP,lo_HDP,s173,s613 |
| s629 | 155 | bary_hi | CYP | lo | 145859/1000000 | s580,s607,lo_HZP,lo_HDP,lo_HCY,s544,lo_CYZ |
| s642 | 158 | bary_hi | FYZ | hi | 454551/1000000 | s178,s509,lo_CYZ,s553,hi_CFY,s571 |
| s643 | 160 | bary_lo | HYZ | lo | 118377/1000000 | s628,s607,lo_CZP,s553,lo_HCY,lo_HDY,lo_HYP |
| s645 | 161 | bary_hi | CYZ | lo | 93579/1000000 | s628,s607,lo_CZP,s553,s544,s629 |
| s646 | 162 | bary_lo | DZQ | hi | 479059/1000000 | s628,s607,lo_CZP,s553,hi_CDQ,s404 |
| s649 | 163 | bary_hi | HDR | lo | 106457/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s552 |
| s654 | 165 | bary_lo | DYR | lo | 34253/200000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s544,s546 |
| s655 | 166 | bary_lo | DZR | lo | 4017/40000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s553,s547 |
| s665 | 169 | bary_lo | DFZ | lo | 38913/200000 | hi_CYQ,lo_YZQ,s584,s645,lo_CDF,lo_DFY,lo_DFQ |
| s666 | 170 | bary_lo | DZP | lo | 38339/250000 | hi_CYQ,lo_YZQ,s584,s645,s545,lo_DYP,s443 |
| s672 | 173 | bary_hi | OHP | lo | 107191/500000 | s571,lo_FYP,lo_DYP,lo_DFP,lo_OHD,s549,lo_OHY |
| s673 | 174 | bary_lo | DPQ | hi | 595113/1000000 | s571,lo_FYP,lo_DYP,lo_DFP,hi_DFQ,hi_DYQ |
| s684 | 176 | bary_lo | OQR | lo | 98751/1000000 | s646,lo_ZQR,lo_DQR,s655,s531,s508 |
| s696 | 178 | bary_lo | DFP | lo | 9689/100000 | s642,s559,lo_FZP,lo_FYP,lo_DFY,s665 |
| s698 | 179 | bary_hi | DPQ | lo | 2894/15625 | s642,s559,lo_FZP,lo_FYP,lo_DFQ,s546,s547 |
| s706 | 183 | bary_hi | CPQ | hi | 33357/50000 | s602,s512,s514,lo_FYP,hi_CFQ,hi_CYQ |
| s708 | 0 | sum | OHC | lo | 159329/500000 | lo_HCY,s598,lo_OHY |
| s710 | 2 | sub | OHZ | hi | 561731/1000000 | hi_OHD,s605,lo_ODZ |
| s711 | 3 | sub | ODP | hi | 346309/500000 | hi_OHD,lo_HDP,s672 |
| s712 | 4 | sum | OHZ | lo | 164303/500000 | s643,lo_OHY,s507 |
| s715 | 5 | sum | OHQ | lo | 365779/500000 | s504,s712,s508 |
| s719 | 6 | sum | ODQ | lo | 318917/1000000 | lo_DQR,s513,s684 |
| s723 | 9 | sum | HCQ | lo | 69183/125000 | s584,s503,s504 |
| s725 | 10 | sum | CDY | lo | 213197/500000 | s553,s645,s509 |
| s726 | 11 | sum | CDP | lo | 414549/1000000 | s553,lo_CZP,s666 |
| s727 | 13 | sum | CYQ | lo | 381779/1000000 | s645,s584,lo_YZQ |
| s732 | 15 | sum | DFY | lo | 28289/100000 | s696,lo_DYP,lo_FYP |
| s733 | 16 | sum | DYQ | lo | 71453/200000 | lo_DQR,s654,lo_YQR |
| s734 | 17 | sum | DZQ | lo | 11457/40000 | lo_DQR,s655,lo_ZQR |
| s735 | 18 | sum | FYZ | lo | 287617/1000000 | lo_FYP,lo_FZP,s559 |
| s741 | 21 | sumlo | HCF | lo | 201887/1000000 | s503,s549,lo_HFZ,s708,s710 |
| s752 | 31 | sumlo | DYR | lo | 43381/250000 | lo_CDR,s733,s725,lo_DQR,hi_CDQ |
| s753 | 32 | sumlo | DZR | lo | 20133/200000 | lo_CDR,s734,s553,lo_DQR,hi_CDQ |
| s755 | 33 | sumlo | DFP | lo | 48843/500000 | s732,lo_FZP,s665,lo_FYP,s642 |
| s757 | 35 | sumlo | OCY | lo | 73057/500000 | s727,lo_OHY,lo_HCY,s532,s601 |
| s760 | 37 | sumlo | HYQ | lo | 202101/1000000 | s733,s643,lo_HDY,lo_YZQ,s587 |
| s762 | 38 | sumlo | DYZ | lo | 169897/1000000 | s732,lo_YZQ,s733,s735,s602 |
| s763 | 39 | sumlo | YPQ | lo | 8321/62500 | lo_DYP,lo_YZQ,s733,s559,s587 |
| s764 | 41 | sumlo | OZQ | lo | 97943/500000 | s734,s712,s504,lo_ODZ,s580 |
| s766 | 50 | sumlo | OQR | lo | 99939/1000000 | lo_DQR,s764,s719,lo_ZQR,s646 |
| s767 | 54 | balance_lo | HCZ | lo | 154727/1000000 | lo_CZP,lo_OHD,lo_HZP,lo_OCD,s626,lo_ODZ,s711 |
| s768 | 55 | balance_lo | HZQ | lo | 211921/1000000 | s643,s719,lo_YZQ,lo_OHD,s760,lo_ODZ,s2 |
| s770 | 56 | balance_lo | CYZ | lo | 3933/40000 | s559,lo_OCD,lo_CZP,s527,s629,lo_ODZ,s711 |
| s772 | 58 | balance_lo | OYZ | lo | 33293/250000 | s527,s767,s762,s708,lo_ODZ,lo_HCY,s173 |
| s773 | 59 | balance_lo | OZQ | lo | 26473/125000 | lo_ODZ,s723,s734,s708,s719,s767,s173 |
| s776 | 69 | balance_lo | DYZ | lo | 170213/1000000 | lo_YZQ,s726,s734,s629,s733,lo_CZP,s706 |
| s777 | 72 | balance_lo | CDZ | lo | 174853/1000000 | s708,s734,s723,lo_ODZ,lo_OCQ,s605,hi_OHQ |
| s778 | 73 | balance_lo | ODR | lo | 135633/1000000 | s708,lo_DQR,lo_OCQ,s649,s715,lo_CDR,hi_HCQ |
| s779 | 74 | balance_lo | FPQ | lo | 204201/1000000 | lo_YZQ,s755,s734,lo_FYP,s733,lo_FZP,s587 |
| s782 | 77 | balance_lo | DZP | lo | 78361/500000 | s777,s763,lo_CZP,s733,s726,lo_YZQ,hi_CYQ |
| s783 | 78 | balance_lo | OZP | lo | 79651/500000 | s708,s782,lo_OCD,lo_HZP,lo_OHD,lo_CZP,s173 |
| s784 | 79 | linear | OHC | lo | 166057/500000 | lo_HCY,s757,lo_OHY |
| s785 | 80 | linear | OHC | hi | 79067/125000 | s723,hi_OCQ,hi_OHQ |
| s786 | 80 | linear | HCQ | hi | 426943/500000 | hi_OCQ,s784,hi_OHQ |
| s790 | 82 | linear | OHZ | lo | 344549/1000000 | s643,lo_OHY,s772 |
| s793 | 83 | linear | HZQ | hi | 443667/1000000 | hi_OHQ,s790,s773 |
| s794 | 85 | linear | ODY | lo | 79277/200000 | s776,lo_ODZ,s772 |
| s797 | 88 | linear | ODQ | lo | 82143/250000 | lo_DQR,s778,s766 |
| s798 | 89 | linear | OYQ | lo | 109489/250000 | s772,s773,lo_YZQ |
| s805 | 92 | linear | HCQ | lo | 70231/125000 | s584,s767,s768 |
| s808 | 95 | linear | CDY | lo | 443391/1000000 | s777,s770,s776 |
| s809 | 96 | linear | CDP | lo | 16983/40000 | s777,lo_CZP,s782 |
| s813 | 99 | linear | DFY | lo | 141843/500000 | s755,lo_DYP,lo_FYP |
| s814 | 100 | linear | DYQ | lo | 89881/250000 | lo_DQR,s752,lo_YQR |
| s815 | 101 | linear | DZQ | lo | 57333/200000 | lo_DQR,s753,lo_ZQR |
| s817 | 103 | quad | HDQ | lo | 300333/1000000 | s793 |
| s820 | 107 | linear | CDF | hi | 798113/1000000 | s741 |
| s822 | 109 | bary_hi | OYQ | hi | 692273/1000000 | s785,lo_HCY,s757,lo_OHY,hi_OHQ,lo_OCQ |
| s823 | 111 | bary_hi | CDY | hi | 724973/1000000 | s785,lo_HCY,s757,lo_OHY,hi_OCD,s173 |
| s824 | 112 | bary_hi | CFY | hi | 270819/500000 | s785,lo_HCY,s757,lo_OHY,hi_OCF,hi_HCF |
| s825 | 114 | bary_lo | YZP | lo | 25687/250000 | s785,lo_HCY,s757,lo_OHY,s783,lo_HZP,lo_CZP |
| s836 | 117 | bary_hi | DFY | hi | 598953/1000000 | hi_OHD,lo_HDY,s794,lo_OHY,hi_ODF,hi_HDF |
| s843 | 121 | bary_lo | HDZ | hi | 562451/1000000 | hi_OHD,s605,lo_ODZ,s790,hi_OHD |
| s845 | 122 | bary_lo | CZQ | lo | 12543/62500 | hi_OHD,s605,lo_ODZ,s790,lo_OCQ,s805,lo_CDQ |
| s848 | 123 | bary_hi | DYZ | hi | 327273/1000000 | hi_OHD,s605,lo_ODZ,s790,s2,lo_HDY |
| s857 | 130 | bary_lo | OCY | lo | 1541/10000 | hi_OHQ,s760,s798,lo_OHY,s784,lo_OCQ |
| s860 | 131 | bary_lo | HYQ | hi | 117261/250000 | hi_OHQ,s760,s798,lo_OHY,hi_OHQ |
| s861 | 134 | bary_lo | FYQ | hi | 748943/1000000 | hi_OHQ,s760,s798,lo_OHY,hi_OFQ,hi_HFQ |
| s863 | 135 | bary_lo | FZQ | hi | 288033/500000 | hi_OHQ,s768,s773,s790,hi_OFQ,hi_HFQ |
| s864 | 137 | bary_lo | OFR | hi | 859073/1000000 | hi_ODQ,lo_DQR,s766,s778,hi_ODF,hi_OFQ |
| s866 | 140 | bary_hi | HDZ | lo | 44523/125000 | s822,lo_YZQ,s773,s772,lo_OHD,lo_HDY,s817 |
| s872 | 148 | bary_hi | CDZ | hi | 396089/1000000 | s173,s777,s866,s767,s173 |
| s884 | 153 | bary_lo | HCP | lo | 28067/200000 | s843,s782,lo_HZP,lo_HDP,lo_HCD,s767 |
| s886 | 154 | bary_hi | CDP | hi | 84069/125000 | s843,s782,lo_HZP,lo_HDP,s173,s872 |
| s887 | 155 | bary_hi | CYP | lo | 18977/125000 | s843,s782,lo_HZP,lo_HDP,lo_HCY,s808,s770 |
| s897 | 158 | bary_hi | FYZ | hi | 220519/500000 | s823,s776,s770,s777,s824,s836 |
| s898 | 160 | bary_lo | HYZ | lo | 118719/1000000 | s886,s782,lo_CZP,s777,lo_HCY,lo_HDY,lo_HYP |
| s900 | 161 | bary_hi | CYZ | lo | 100781/1000000 | s886,s782,lo_CZP,s777,s808,s887 |
| s901 | 162 | bary_lo | DZQ | hi | 29501/62500 | s886,s782,lo_CZP,s777,hi_CDQ,s673 |
| s905 | 163 | bary_hi | HDR | lo | 220173/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s817 |
| s911 | 165 | bary_lo | DYR | lo | 44447/250000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s808,s814 |
| s912 | 166 | bary_lo | DZR | lo | 102193/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s777,s815 |
| s921 | 169 | bary_lo | DFZ | lo | 98899/500000 | hi_CYQ,lo_YZQ,s845,s900,lo_CDF,s813,lo_DFQ |
| s922 | 170 | bary_lo | DZP | lo | 79581/500000 | hi_CYQ,lo_YZQ,s845,s900,s809,lo_DYP,s698 |
| s926 | 173 | bary_hi | OHP | lo | 217129/1000000 | s836,lo_FYP,lo_DYP,s755,lo_OHD,s549,lo_OHY |
| s941 | 176 | bary_lo | OQR | lo | 3327/31250 | s901,lo_ZQR,lo_DQR,s912,s797,s773 |
| s945 | 177 | bary_lo | CQR | lo | 94511/1000000 | s901,lo_ZQR,lo_DQR,s912,lo_CDQ,s845 |
| s954 | 178 | bary_lo | DFP | lo | 12691/125000 | s897,s825,lo_FZP,lo_FYP,s813,s921 |
| s956 | 179 | bary_hi | DPQ | lo | 95019/500000 | s897,s825,lo_FZP,lo_FYP,lo_DFQ,s814,s815 |
| s963 | 182 | bary_hi | CDP | hi | 644421/1000000 | s861,s763,s779,lo_FYP,s820,s823,lo_CDQ |
| s964 | 183 | bary_hi | CPQ | hi | 131721/200000 | s861,s763,s779,lo_FYP,hi_CFQ,hi_CYQ |
| s966 | 0 | sum | OHC | lo | 3401/10000 | lo_HCY,s857,lo_OHY |
| s968 | 2 | sub | OHZ | hi | 17213/31250 | hi_OHD,s866,lo_ODZ |
| s969 | 3 | sub | ODP | hi | 689871/1000000 | hi_OHD,lo_HDP,s926 |
| s970 | 4 | sum | OHZ | lo | 344891/1000000 | s898,lo_OHY,s772 |
| s973 | 5 | sum | OHQ | lo | 192149/250000 | s768,s970,s773 |
| s977 | 6 | sum | ODQ | lo | 335097/1000000 | lo_DQR,s778,s941 |
| s981 | 9 | sum | HCQ | lo | 70917/125000 | s845,s767,s768 |
| s984 | 10 | sum | CDY | lo | 445847/1000000 | s777,s900,s776 |
| s985 | 11 | sum | CDP | lo | 85403/200000 | s777,lo_CZP,s922 |
| s986 | 12 | sum | CDQ | lo | 280511/1000000 | lo_CDR,s945,lo_DQR |
| s988 | 13 | sum | CYQ | lo | 394469/1000000 | s900,s845,lo_YZQ |
| s995 | 15 | sum | DFY | lo | 35941/125000 | s954,lo_DYP,lo_FYP |
| s996 | 16 | sum | DYQ | lo | 90947/250000 | lo_DQR,s911,lo_YQR |
| s997 | 17 | sum | DZQ | lo | 288193/1000000 | lo_DQR,s912,lo_ZQR |
| s998 | 18 | sum | FYZ | lo | 72187/250000 | lo_FYP,lo_FZP,s825 |
| s1003 | 21 | sumlo | HCF | lo | 108949/500000 | s767,s549,lo_HFZ,s966,s968 |
| s1008 | 26 | sumlo | CYZ | lo | 21107/200000 | s984,lo_CZP,s777,s887,s963 |
| s1009 | 31 | sumlo | DYR | lo | 44819/250000 | lo_CDR,s996,s984,lo_DQR,hi_CDQ |
| s1010 | 32 | sumlo | DZR | lo | 102531/1000000 | lo_CDR,s997,s777,lo_DQR,hi_CDQ |
| s1012 | 33 | sumlo | DFP | lo | 51169/500000 | s995,lo_FZP,s921,lo_FYP,s897 |
| s1013 | 35 | sumlo | OCY | lo | 165049/1000000 | s988,lo_OHY,lo_HCY,s798,s860 |
| s1016 | 37 | sumlo | HYQ | lo | 211247/1000000 | s996,s898,lo_HDY,lo_YZQ,s848 |
| s1018 | 39 | sumlo | YPQ | lo | 140639/1000000 | lo_DYP,lo_YZQ,s996,s825,s848 |
| s1019 | 46 | sumlo | DYZ | lo | 88193/500000 | s921,lo_YZQ,s997,s998,s863 |
| s1020 | 46 | sumlo | FZQ | lo | 12419/40000 | s921,lo_YZQ,s997,s998,s848 |
| s1021 | 50 | sumlo | OQR | lo | 431/4000 | lo_DQR,s773,s977,lo_ZQR,s901 |
| s1022 | 52 | sumlo | CQR | lo | 94809/1000000 | s986,lo_ZQR,s845,lo_DQR,s901 |
| s1023 | 54 | balance_lo | HCZ | lo | 155967/1000000 | lo_CZP,lo_OHD,lo_HZP,lo_OCD,s884,lo_ODZ,s969 |
| s1024 | 55 | balance_lo | HZQ | lo | 54127/250000 | s898,s977,lo_YZQ,lo_OHD,s1016,lo_ODZ,s2 |
| s1027 | 58 | balance_lo | OYZ | lo | 143837/1000000 | s794,s1023,s1019,s966,lo_ODZ,lo_HCY,s173 |
| s1028 | 59 | balance_lo | OZQ | lo | 223859/1000000 | lo_ODZ,s981,s997,s966,s977,s1023,s173 |
| s1031 | 69 | balance_lo | DYZ | lo | 178099/1000000 | lo_YZQ,s985,s997,s887,s996,lo_CZP,s964 |
| s1032 | 72 | balance_lo | CDZ | lo | 183901/1000000 | s966,s997,s981,lo_ODZ,lo_OCQ,s866,hi_OHQ |
| s1033 | 73 | balance_lo | ODR | lo | 36183/250000 | s966,lo_DQR,lo_OCQ,s905,s973,lo_CDR,s786 |
| s1034 | 74 | balance_lo | FPQ | lo | 13397/62500 | lo_YZQ,s1012,s997,lo_FYP,s996,lo_FZP,s848 |
| s1038 | 77 | balance_lo | DZP | lo | 32779/200000 | s1032,s1018,lo_CZP,s996,s985,lo_YZQ,hi_CYQ |
| s1039 | 78 | balance_lo | OZP | lo | 2589/15625 | s966,s1038,lo_OCD,lo_HZP,lo_OHD,lo_CZP,s173 |
| s1040 | 79 | linear | OHC | lo | 351049/1000000 | lo_HCY,s1013,lo_OHY |
| s1041 | 80 | linear | OHC | hi | 77333/125000 | s981,hi_OCQ,hi_OHQ |
| s1042 | 80 | linear | HCQ | hi | 834951/1000000 | hi_OCQ,s1040,hi_OHQ |
| s1046 | 82 | linear | OHZ | lo | 88889/250000 | s898,lo_OHY,s1027 |
| s1049 | 83 | linear | HZQ | hi | 84117/200000 | hi_OHQ,s1046,s1028 |
| s1051 | 85 | linear | ODY | lo | 51867/125000 | s1031,lo_ODZ,s1027 |
| s1053 | 88 | linear | ODQ | lo | 172741/500000 | lo_DQR,s1033,s1021 |
| s1054 | 89 | linear | OYQ | lo | 57587/125000 | s1027,s1028,lo_YZQ |
| s1058 | 90 | linear | HCD | lo | 174013/250000 | s1032,s1023,s866 |
| s1061 | 91 | linear | HDQ | hi | 47479/62500 | hi_CDQ,s173,s981 |
| s1062 | 92 | linear | HCQ | lo | 573163/1000000 | s845,s1023,s1024 |
| s1066 | 95 | linear | CDY | lo | 93507/200000 | s1032,s1008,s1031 |
| s1068 | 96 | linear | CDP | lo | 110199/250000 | s1032,lo_CZP,s1038 |
| s1070 | 97 | linear | CDQ | lo | 280809/1000000 | lo_CDR,s1022,lo_DQR |
| s1075 | 99 | linear | DFY | lo | 144169/500000 | s1012,lo_DYP,lo_FYP |
| s1076 | 100 | linear | DYQ | lo | 91319/250000 | lo_DQR,s1009,lo_YQR |
| s1077 | 101 | linear | DZQ | lo | 288531/1000000 | lo_DQR,s1010,lo_ZQR |
| s1080 | 102 | quad | OHF | lo | 32581/200000 | s864 |
| s1081 | 103 | quad | HDQ | lo | 64683/200000 | s1049 |
| s1084 | 106 | linear | HDF | hi | 75987/250000 | s1058 |
| s1085 | 107 | linear | CDF | hi | 391051/500000 | s1003 |
| s1087 | 109 | bary_hi | OYQ | hi | 685373/1000000 | s1041,lo_HCY,s1013,lo_OHY,hi_OHQ,lo_OCQ |
| s1088 | 111 | bary_hi | CDY | hi | 720891/1000000 | s1041,lo_HCY,s1013,lo_OHY,hi_OCD,s173 |
| s1089 | 112 | bary_hi | CFY | hi | 107909/200000 | s1041,lo_HCY,s1013,lo_OHY,hi_OCF,hi_HCF |
| s1091 | 114 | bary_lo | YZP | lo | 103927/1000000 | s1041,lo_HCY,s1013,lo_OHY,s1039,lo_HZP,lo_CZP |
| s1103 | 117 | bary_hi | DFY | hi | 23457/40000 | hi_OHD,lo_HDY,s1051,lo_OHY,hi_ODF,s1084 |
| s1110 | 121 | bary_lo | HDZ | hi | 137861/250000 | hi_OHD,s866,lo_ODZ,s1046,hi_OHD |
| s1112 | 122 | bary_lo | CZQ | lo | 204431/1000000 | hi_OHD,s866,lo_ODZ,s1046,lo_OCQ,s1062,s1070 |
| s1123 | 129 | bary_lo | DYZ | hi | 3993/12500 | s968,s898,s1027,lo_OHY,lo_ODZ,s1110 |
| s1126 | 130 | bary_lo | OCY | lo | 1363/8000 | hi_OHQ,s1016,s1054,lo_OHY,s1040,lo_OCQ |
| s1129 | 131 | bary_lo | HYQ | hi | 13947/31250 | hi_OHQ,s1016,s1054,lo_OHY,hi_OHQ |
| s1132 | 134 | bary_lo | FYQ | hi | 370689/500000 | hi_OHQ,s1016,s1054,lo_OHY,hi_OFQ,hi_HFQ |
| s1137 | 137 | bary_lo | OFR | hi | 17171/20000 | hi_ODQ,lo_DQR,s1021,s1033,hi_ODF,hi_OFQ |
| s1139 | 140 | bary_hi | HDZ | lo | 362137/1000000 | s1087,lo_YZQ,s1028,s1027,lo_OHD,lo_HDY,s1081 |
| s1140 | 143 | bary_lo | DFZ | lo | 201723/1000000 | s1087,lo_YZQ,s1028,s1027,lo_ODF,s1075,lo_DFQ |
| s1153 | 155 | bary_hi | CYP | lo | 79139/500000 | s1110,s1038,lo_HZP,lo_HDP,lo_HCY,s1066,s1008 |
| s1158 | 156 | bary_lo | DPQ | hi | 583037/1000000 | s1110,s1038,lo_HZP,lo_HDP,s1061,s901 |
| s1163 | 158 | bary_hi | FYZ | hi | 85049/200000 | s1088,s1031,s1008,s1032,s1089,s1103 |
| s1164 | 160 | bary_lo | HYZ | lo | 59921/500000 | s963,s1038,lo_CZP,s1032,lo_HCY,lo_HDY,lo_HYP |
| s1166 | 161 | bary_hi | CYZ | lo | 112641/1000000 | s963,s1038,lo_CZP,s1032,s1066,s1153 |
| s1167 | 162 | bary_lo | DZQ | hi | 457431/1000000 | s963,s1038,lo_CZP,s1032,hi_CDQ,s1158 |
| s1177 | 165 | bary_lo | DYR | lo | 23051/125000 | hi_CDQ,lo_DQR,s1022,lo_CDR,s1066,s1076 |
| s1178 | 166 | bary_lo | DZR | lo | 104609/1000000 | hi_CDQ,lo_DQR,s1022,lo_CDR,s1032,s1077 |
| s1186 | 170 | bary_lo | DZP | lo | 41087/250000 | hi_CYQ,lo_YZQ,s1112,s1166,s1068,lo_DYP,s956 |
| s1192 | 175 | bary_lo | ZPQ | lo | 158497/1000000 | s1103,lo_FYP,lo_DYP,s1012,s1077,s1020,lo_YZQ |
| s1203 | 176 | bary_lo | OQR | lo | 14469/125000 | s1167,lo_ZQR,lo_DQR,s1178,s1053,s1028 |
| s1207 | 177 | bary_lo | CQR | lo | 98653/1000000 | s1167,lo_ZQR,lo_DQR,s1178,s1070,s1112 |
| s1215 | 178 | bary_lo | DFP | lo | 4287/40000 | s1163,s1091,lo_FZP,lo_FYP,s1075,s1140 |
| s1223 | 180 | bary_hi | ODP | hi | 17147/25000 | s1132,s1018,s1034,lo_FYP,hi_ODF,s2,s1053 |
| s1226 | 182 | bary_hi | CDP | hi | 631071/1000000 | s1132,s1018,s1034,lo_FYP,s1085,s1088,s1070 |
| s1227 | 183 | bary_hi | CPQ | hi | 654089/1000000 | s1132,s1018,s1034,lo_FYP,hi_CFQ,hi_CYQ |
| s1228 | 0 | sum | OHC | lo | 2851/8000 | lo_HCY,s1126,lo_OHY |
| s1230 | 2 | sub | OHZ | hi | 544863/1000000 | hi_OHD,s1139,lo_ODZ |
| s1231 | 4 | sum | OHZ | lo | 356679/1000000 | s1164,lo_OHY,s1027 |
| s1234 | 5 | sum | OHQ | lo | 398523/500000 | s1024,s1231,s1028 |
| s1238 | 6 | sum | ODQ | lo | 88371/250000 | lo_DQR,s1033,s1203 |
| s1240 | 7 | sum | OPQ | lo | 137013/250000 | s1039,s1028,s1192 |
| s1242 | 8 | sum | HCD | lo | 140401/200000 | s1032,s1023,s1139 |
| s1243 | 9 | sum | HCQ | lo | 288453/500000 | s1112,s1023,s1024 |
| s1246 | 10 | sum | CDY | lo | 474641/1000000 | s1032,s1166,s1031 |
| s1247 | 11 | sum | CDP | lo | 441249/1000000 | s1032,lo_CZP,s1186 |
| s1249 | 12 | sum | CDQ | lo | 284653/1000000 | lo_CDR,s1207,lo_DQR |
| s1251 | 13 | sum | CYQ | lo | 51259/125000 | s1166,s1112,lo_YZQ |
| s1253 | 14 | sum | CPQ | lo | 56991/125000 | lo_CZP,s1112,s1192 |
| s1255 | 15 | sum | DFY | lo | 11727/40000 | s1215,lo_DYP,lo_FYP |
| s1256 | 16 | sum | DYQ | lo | 46301/125000 | lo_DQR,s1177,lo_YQR |
| s1257 | 17 | sum | DZQ | lo | 290609/1000000 | lo_DQR,s1178,lo_ZQR |
| s1258 | 18 | sum | FYZ | lo | 289927/1000000 | lo_FYP,lo_FZP,s1091 |
| s1260 | 19 | sumlo | OCD | lo | 202511/1000000 | lo_OCQ,lo_OHD,s1238,s1228,hi_OHQ |
| s1264 | 21 | sumlo | HCF | lo | 45823/200000 | s1023,s1080,lo_HFZ,s1228,s1230 |
| s1267 | 24 | sumlo | HCP | lo | 28939/200000 | s1242,lo_HZP,s1023,lo_HDP,s1110 |
| s1269 | 26 | sumlo | CYZ | lo | 116071/1000000 | s1246,lo_CZP,s1032,s1153,s1226 |
| s1270 | 29 | sumlo | HDR | lo | 227057/1000000 | lo_CDR,s1081,lo_DQR,s1242,hi_CDQ |
| s1271 | 31 | sumlo | DYR | lo | 187117/1000000 | lo_CDR,s1256,s1246,lo_DQR,hi_CDQ |
| s1272 | 32 | sumlo | DZR | lo | 10507/100000 | lo_CDR,s1257,s1032,lo_DQR,hi_CDQ |
| s1274 | 33 | sumlo | DFP | lo | 13529/125000 | s1255,lo_FZP,s1140,lo_FYP,s1163 |
| s1275 | 35 | sumlo | OCY | lo | 181449/1000000 | s1251,lo_OHY,lo_HCY,s1054,s1129 |
| s1278 | 37 | sumlo | HYQ | lo | 220189/1000000 | s1256,s1164,lo_HDY,lo_YZQ,s1123 |
| s1280 | 39 | sumlo | YPQ | lo | 2306/15625 | lo_DYP,lo_YZQ,s1256,s1091,s1123 |
| s1281 | 41 | sumlo | OZQ | lo | 112241/500000 | s1257,s1231,s1024,lo_ODZ,s1110 |
| s1283 | 46 | sumlo | FZQ | lo | 40311/125000 | s1140,lo_YZQ,s1257,s1258,s1123 |
| s1284 | 50 | sumlo | OQR | lo | 23501/200000 | lo_DQR,s1281,s1238,lo_ZQR,s1167 |
| s1285 | 52 | sumlo | CQR | lo | 19887/200000 | s1249,lo_ZQR,s1112,lo_DQR,s1167 |
| s1286 | 54 | balance_lo | HCZ | lo | 15867/100000 | lo_CZP,lo_OHD,lo_HZP,s1260,s1267,lo_ODZ,s1223 |
| s1287 | 55 | balance_lo | HZQ | lo | 11097/50000 | s1164,s1238,lo_YZQ,lo_OHD,s1278,lo_ODZ,s2 |
| s1290 | 59 | balance_lo | OZQ | lo | 29397/125000 | lo_ODZ,s1243,s1257,s1228,s1238,s1286,s173 |
| s1292 | 61 | balance_lo | OCP | lo | 114293/500000 | s1253,lo_OHY,s1240,lo_HCY,lo_OCQ,lo_HYP,s1129 |
| s1293 | 68 | balance_lo | OYZ | lo | 4841/31250 | lo_YZQ,s1292,s1290,s1153,s1054,lo_CZP,s1227 |
| s1294 | 69 | balance_lo | DYZ | lo | 7429/40000 | lo_YZQ,s1247,s1257,s1153,s1256,lo_CZP,s1227 |
| s1295 | 72 | balance_lo | CDZ | lo | 11931/62500 | s1228,s1257,s1243,lo_ODZ,lo_OCQ,s1139,hi_OHQ |
| s1296 | 73 | balance_lo | ODR | lo | 76881/500000 | s1228,lo_DQR,lo_OCQ,s1270,s1234,lo_CDR,s1042 |
| s1297 | 74 | balance_lo | FPQ | lo | 111977/500000 | lo_YZQ,s1274,s1257,lo_FYP,s1256,lo_FZP,s1123 |
| s1302 | 77 | balance_lo | DZP | lo | 1709/10000 | s1295,s1280,lo_CZP,s1256,s1247,lo_YZQ,hi_CYQ |
| s1303 | 78 | balance_lo | OZP | lo | 172301/1000000 | s1228,s1302,s1260,lo_HZP,lo_OHD,lo_CZP,s173 |
| s1304 | 79 | linear | OHC | lo | 367449/1000000 | lo_HCY,s1275,lo_OHY |
| s1305 | 80 | linear | OHC | hi | 304547/500000 | s1243,hi_OCQ,hi_OHQ |
| s1306 | 80 | linear | HCQ | hi | 818551/1000000 | hi_OCQ,s1304,hi_OHQ |
| s1310 | 82 | linear | OHZ | lo | 183877/500000 | s1164,lo_OHY,s1293 |
| s1311 | 83 | linear | OHZ | hi | 135721/250000 | s1287,hi_OHQ,s1290 |
| s1312 | 83 | linear | OZQ | hi | 205153/500000 | s1287,hi_OHQ,s1310 |
| s1314 | 83 | linear | HZQ | hi | 39707/100000 | hi_OHQ,s1310,s1290 |
| s1316 | 85 | linear | ODY | lo | 433637/1000000 | s1294,lo_ODZ,s1293 |
| s1318 | 88 | linear | ODQ | lo | 364267/1000000 | lo_DQR,s1296,s1284 |
| s1319 | 89 | linear | OYQ | lo | 30193/62500 | s1293,s1290,lo_YZQ |
| s1323 | 90 | linear | HCD | lo | 711703/1000000 | s1295,s1286,s1139 |
| s1326 | 91 | linear | HDQ | hi | 375047/500000 | hi_CDQ,s173,s1243 |
| s1327 | 92 | linear | HCQ | lo | 585041/1000000 | s1112,s1286,s1287 |
| s1331 | 95 | linear | CDY | lo | 123173/250000 | s1295,s1269,s1294 |
| s1332 | 96 | linear | CDP | lo | 113699/250000 | s1295,lo_CZP,s1302 |
| s1334 | 97 | linear | CDQ | lo | 57087/200000 | lo_CDR,s1285,lo_DQR |
| s1339 | 99 | linear | DFY | lo | 36779/125000 | s1274,lo_DYP,lo_FYP |
| s1342 | 100 | linear | DYQ | lo | 373117/1000000 | lo_DQR,s1271,lo_YQR |
| s1343 | 101 | linear | DZQ | lo | 29107/100000 | lo_DQR,s1272,lo_ZQR |
| s1346 | 102 | quad | OHF | lo | 40857/250000 | s1137 |
| s1347 | 103 | quad | HDQ | lo | 34693/100000 | s1314 |
| s1350 | 106 | linear | HDF | hi | 288297/1000000 | s1323 |
| s1351 | 107 | linear | CDF | hi | 154177/200000 | s1264 |
| s1352 | 108 | bary_hi | OCY | hi | 211547/500000 | s1305,lo_HCY,s1275,lo_OHY,s1305 |
| s1354 | 111 | bary_hi | CDY | hi | 717967/1000000 | s1305,lo_HCY,s1275,lo_OHY,hi_OCD,s173 |
| s1357 | 113 | bary_hi | CYQ | hi | 596989/1000000 | s1305,lo_HCY,s1275,lo_OHY,hi_OCQ,s1306 |
| s1359 | 114 | bary_lo | YZP | lo | 26277/250000 | s1305,lo_HCY,s1275,lo_OHY,s1303,lo_HZP,lo_CZP |
| s1370 | 117 | bary_hi | DFY | hi | 141957/250000 | hi_OHD,lo_HDY,s1316,lo_OHY,hi_ODF,s1350 |
| s1373 | 121 | bary_lo | HDZ | hi | 269623/500000 | hi_OHD,s1139,lo_ODZ,s1310,hi_OHD |
| s1375 | 122 | bary_lo | CZQ | lo | 26191/125000 | hi_OHD,s1139,lo_ODZ,s1310,lo_OCQ,s1327,s1334 |
| s1385 | 126 | bary_hi | OYQ | hi | 678231/1000000 | s1311,s1164,s1293,lo_OHY,hi_OHQ,s1312 |
| s1388 | 129 | bary_lo | DYZ | hi | 307301/1000000 | s1311,s1164,s1293,lo_OHY,lo_ODZ,s1373 |
| s1391 | 130 | bary_lo | OCY | lo | 186159/1000000 | hi_OHQ,s1278,s1319,lo_OHY,s1304,lo_OCQ |
| s1394 | 131 | bary_lo | HYQ | hi | 52989/125000 | hi_OHQ,s1278,s1319,lo_OHY,hi_OHQ |
| s1397 | 134 | bary_lo | FYQ | hi | 91741/125000 | hi_OHQ,s1278,s1319,lo_OHY,hi_OFQ,hi_HFQ |
| s1403 | 137 | bary_lo | OFR | hi | 857897/1000000 | hi_ODQ,lo_DQR,s1284,s1296,hi_ODF,hi_OFQ |
| s1407 | 140 | bary_hi | HDZ | lo | 369109/1000000 | s1385,lo_YZQ,s1290,s1293,lo_OHD,lo_HDY,s1347 |
| s1408 | 141 | bary_hi | HYZ | hi | 103021/500000 | s1385,lo_YZQ,s1290,s1293,lo_OHY,s1394 |
| s1410 | 143 | bary_lo | DFZ | lo | 208171/1000000 | s1385,lo_YZQ,s1290,s1293,lo_ODF,s1339,lo_DFQ |
| s1417 | 151 | bary_hi | DPQ | lo | 50807/250000 | s173,s1332,lo_HDP,s1267,s1347,s1334 |
| s1418 | 152 | bary_hi | YZP | hi | 213117/1000000 | s173,s1332,lo_HDP,s1267,s1408,s1269,s1388 |
| s1424 | 155 | bary_hi | CYP | lo | 16591/100000 | s1373,s1302,lo_HZP,lo_HDP,lo_HCY,s1331,s1269 |
| s1428 | 156 | bary_lo | DPQ | hi | 570257/1000000 | s1373,s1302,lo_HZP,lo_HDP,s1326,s1167 |
| s1433 | 160 | bary_lo | HYZ | lo | 12041/100000 | s1226,s1302,lo_CZP,s1295,lo_HCY,lo_HDY,lo_HYP |
| s1435 | 161 | bary_hi | CYZ | lo | 61397/500000 | s1226,s1302,lo_CZP,s1295,s1331,s1424 |
| s1436 | 162 | bary_lo | DZQ | hi | 445529/1000000 | s1226,s1302,lo_CZP,s1295,hi_CDQ,s1428 |
| s1447 | 165 | bary_lo | DYR | lo | 95857/500000 | hi_CDQ,lo_DQR,s1285,lo_CDR,s1331,s1342 |
| s1448 | 166 | bary_lo | DZR | lo | 106721/1000000 | hi_CDQ,lo_DQR,s1285,lo_CDR,s1295,s1343 |
| s1455 | 167 | bary_hi | OCZ | hi | 308417/1000000 | s1357,lo_YZQ,s1375,s1435,s1352,hi_OCQ |
| s1456 | 170 | bary_lo | DZP | lo | 172033/1000000 | s1357,lo_YZQ,s1375,s1435,s1332,lo_DYP,s1417 |
| s1457 | 172 | bary_hi | CDZ | hi | 347841/1000000 | s1227,s1192,s1375,lo_CZP,s1226,s1334 |
| s1460 | 175 | bary_lo | ZPQ | lo | 81513/500000 | s1370,lo_FYP,lo_DYP,s1274,s1343,s1283,lo_YZQ |
| s1470 | 176 | bary_lo | OQR | lo | 15641/125000 | s1436,lo_ZQR,lo_DQR,s1448,s1318,s1290 |
| s1474 | 177 | bary_lo | CQR | lo | 51659/500000 | s1436,lo_ZQR,lo_DQR,s1448,s1334,s1375 |
| s1487 | 180 | bary_hi | ODP | hi | 42309/62500 | s1397,s1280,s1297,lo_FYP,hi_ODF,s2,s1318 |
| s1490 | 182 | bary_hi | CDP | hi | 310443/500000 | s1397,s1280,s1297,lo_FYP,s1351,s1354,s1334 |
| s1491 | 183 | bary_hi | CPQ | hi | 20211/31250 | s1397,s1280,s1297,lo_FYP,hi_CFQ,s1357 |
| s1492 | 0 | sum | OHC | lo | 372159/1000000 | lo_HCY,s1391,lo_OHY |
| s1493 | 2 | sum | OHD | lo | 829863/1000000 | s1407,lo_ODZ,s1310 |
| s1495 | 2 | sub | OHZ | hi | 537891/1000000 | hi_OHD,s1407,lo_ODZ |
| s1496 | 4 | sum | OHZ | lo | 184161/500000 | s1433,lo_OHY,s1293 |
| s1499 | 5 | sum | OHQ | lo | 412719/500000 | s1287,s1496,s1290 |
| s1503 | 6 | sum | ODQ | lo | 37189/100000 | lo_DQR,s1296,s1470 |
| s1505 | 7 | sum | OPQ | lo | 570503/1000000 | s1303,s1290,s1460 |
| s1507 | 8 | sum | HCD | lo | 28747/40000 | s1295,s1286,s1407 |
| s1508 | 9 | sum | HCQ | lo | 295069/500000 | s1375,s1286,s1287 |
| s1511 | 10 | sum | CDY | lo | 99883/200000 | s1295,s1435,s1294 |
| s1512 | 11 | sum | CDP | lo | 455929/1000000 | s1295,lo_CZP,s1456 |
| s1513 | 11 | sub | DZP | hi | 33699/100000 | s1490,s1295,lo_CZP |
| s1514 | 12 | sum | CDQ | lo | 144659/500000 | lo_CDR,s1474,lo_DQR |
| s1516 | 13 | sum | CYQ | lo | 212661/500000 | s1435,s1375,lo_YZQ |
| s1518 | 14 | sum | CPQ | lo | 232777/500000 | lo_CZP,s1375,s1460 |
| s1521 | 16 | sum | DYQ | lo | 188857/500000 | lo_DQR,s1447,lo_YQR |
| s1522 | 17 | sum | DZQ | lo | 292721/1000000 | lo_DQR,s1448,lo_ZQR |
| s1523 | 18 | sum | FYZ | lo | 72777/250000 | lo_FYP,lo_FZP,s1359 |
| s1525 | 19 | sumlo | OCD | lo | 215579/1000000 | lo_OCQ,s1493,s1503,s1492,hi_OHQ |
| s1529 | 21 | sumlo | HCF | lo | 60311/250000 | s1286,s1346,lo_HFZ,s1492,s1495 |
| s1534 | 26 | sumlo | CYZ | lo | 25163/200000 | s1511,lo_CZP,s1295,s1424,s1490 |
| s1536 | 29 | sumlo | HDR | lo | 47191/200000 | lo_CDR,s1347,lo_DQR,s1507,hi_CDQ |
| s1537 | 31 | sumlo | DYR | lo | 194221/1000000 | lo_CDR,s1521,s1511,lo_DQR,hi_CDQ |
| s1538 | 32 | sumlo | DZR | lo | 53543/500000 | lo_CDR,s1522,s1295,lo_DQR,hi_CDQ |
| s1541 | 35 | sumlo | OCY | lo | 199291/1000000 | s1516,lo_OHY,lo_HCY,s1319,s1394 |
| s1545 | 37 | sumlo | HYQ | lo | 46487/200000 | s1521,s1433,lo_HDY,lo_YZQ,s1388 |
| s1549 | 41 | sumlo | OZQ | lo | 119107/500000 | s1522,s1496,s1287,lo_ODZ,s1373 |
| s1553 | 46 | sumlo | FZQ | lo | 42537/125000 | s1410,lo_YZQ,s1522,s1523,s1388 |
| s1554 | 48 | sumlo | HCP | lo | 151489/1000000 | s1512,lo_HZP,lo_CZP,lo_HDP,s1513 |
| s1555 | 49 | sumlo | DFP | lo | 23131/200000 | lo_DYP,lo_FZP,s1456,lo_FYP,s1418 |
| s1556 | 50 | sumlo | OQR | lo | 127353/1000000 | lo_DQR,s1549,s1503,lo_ZQR,s1436 |
| s1557 | 52 | sumlo | CQR | lo | 104129/1000000 | s1514,lo_ZQR,s1375,lo_DQR,s1436 |
| s1558 | 54 | balance_lo | HCZ | lo | 41109/250000 | lo_CZP,s1493,lo_HZP,s1525,s1554,lo_ODZ,s1487 |
| s1559 | 55 | balance_lo | HZQ | lo | 228619/1000000 | s1433,s1503,lo_YZQ,s1493,s1545,lo_ODZ,s2 |
| s1562 | 59 | balance_lo | OZQ | lo | 248041/1000000 | lo_ODZ,s1508,s1522,s1492,s1503,s1558,s173 |
| s1565 | 61 | balance_lo | OCP | lo | 123849/500000 | s1518,lo_OHY,s1505,lo_HCY,lo_OCQ,lo_HYP,s1394 |
| s1566 | 68 | balance_lo | OYZ | lo | 168713/1000000 | lo_YZQ,s1565,s1562,s1424,s1319,lo_CZP,s1491 |
| s1567 | 69 | balance_lo | DYZ | lo | 38993/200000 | lo_YZQ,s1512,s1522,s1424,s1521,lo_CZP,s1491 |
| s1568 | 72 | balance_lo | CDZ | lo | 49537/250000 | s1492,s1522,s1508,lo_ODZ,lo_OCQ,s1407,hi_OHQ |
| s1569 | 73 | balance_lo | ODR | lo | 162873/1000000 | s1492,lo_DQR,lo_OCQ,s1536,s1499,lo_CDR,s1306 |
| s1570 | 74 | balance_lo | FPQ | lo | 118949/500000 | lo_YZQ,s1555,s1522,lo_FYP,s1521,lo_FZP,s1388 |
| s1574 | 76 | balance_lo | YPQ | lo | 78767/500000 | s1522,lo_HYP,s1559,lo_DYP,s1347,s1359,s1373 |
| s1577 | 77 | balance_lo | DZP | lo | 182153/1000000 | s1568,s1574,lo_CZP,s1521,s1512,lo_YZQ,s1357 |
| s1578 | 78 | balance_lo | OZP | lo | 11371/62500 | s1492,s1577,s1525,lo_HZP,s1493,lo_CZP,s173 |
| s1579 | 79 | linear | OHC | lo | 385291/1000000 | lo_HCY,s1541,lo_OHY |
| s1580 | 80 | linear | OHC | hi | 297931/500000 | s1508,hi_OCQ,hi_OHQ |
| s1581 | 80 | linear | HCQ | hi | 800709/1000000 | hi_OCQ,s1579,hi_OHQ |
| s1582 | 81 | linear | OHD | lo | 830431/1000000 | s1407,lo_ODZ,s1496 |
| s1586 | 82 | linear | OHZ | lo | 382123/1000000 | s1433,lo_OHY,s1566 |
| s1588 | 83 | linear | OHZ | hi | 26167/50000 | s1559,hi_OHQ,s1562 |
| s1589 | 83 | linear | OZQ | hi | 194629/500000 | s1559,hi_OHQ,s1586 |
| s1590 | 83 | linear | OHQ | lo | 858783/1000000 | s1559,s1586,s1562 |
| s1591 | 83 | linear | HZQ | hi | 92459/250000 | hi_OHQ,s1586,s1562 |
| s1593 | 84 | linear | OCD | hi | 281629/500000 | s1457,s1455,lo_ODZ |
| s1595 | 85 | linear | ODY | lo | 228339/500000 | s1567,lo_ODZ,s1566 |
| s1598 | 88 | linear | ODQ | lo | 191613/500000 | lo_DQR,s1569,s1556 |
| s1599 | 89 | linear | OYQ | lo | 254877/500000 | s1566,s1562,lo_YZQ |
| s1603 | 90 | linear | HCD | lo | 731693/1000000 | s1568,s1558,s1407 |
| s1606 | 91 | linear | HDQ | hi | 368431/500000 | hi_CDQ,s173,s1508 |
| s1607 | 92 | linear | HCQ | lo | 602583/1000000 | s1375,s1558,s1559 |
| s1611 | 95 | linear | CDY | lo | 32433/62500 | s1568,s1534,s1567 |
| s1613 | 96 | linear | CDP | lo | 473301/1000000 | s1568,lo_CZP,s1577 |
| s1615 | 97 | linear | CDQ | lo | 290129/1000000 | lo_CDR,s1557,lo_DQR |
| s1619 | 99 | linear | DFY | lo | 60331/200000 | s1555,lo_DYP,lo_FYP |
| s1622 | 100 | linear | DYQ | lo | 380221/1000000 | lo_DQR,s1537,lo_YQR |
| s1623 | 101 | linear | DZQ | lo | 146543/500000 | lo_DQR,s1538,lo_ZQR |
| s1626 | 102 | quad | OHF | lo | 164081/1000000 | s1403 |
| s1627 | 103 | quad | HDQ | lo | 93541/250000 | s1591 |
| s1630 | 106 | linear | HDF | hi | 268307/1000000 | s1603 |
| s1631 | 107 | linear | CDF | hi | 189689/250000 | s1529 |
| s1634 | 111 | bary_hi | CDY | hi | 711789/1000000 | s1580,lo_HCY,s1541,lo_OHY,s1593,s173 |
| s1635 | 112 | bary_hi | CFY | hi | 133973/250000 | s1580,lo_HCY,s1541,lo_OHY,hi_OCF,hi_HCF |
| s1637 | 113 | bary_hi | CYQ | hi | 144949/250000 | s1580,lo_HCY,s1541,lo_OHY,hi_OCQ,s1581 |
| s1639 | 114 | bary_lo | YZP | lo | 334/3125 | s1580,lo_HCY,s1541,lo_OHY,s1578,lo_HZP,lo_CZP |
| s1651 | 117 | bary_hi | DFY | hi | 135947/250000 | hi_OHD,lo_HDY,s1595,lo_OHY,hi_ODF,s1630 |
| s1654 | 121 | bary_lo | HDZ | hi | 524877/1000000 | hi_OHD,s1407,lo_ODZ,s1586,hi_OHD |
| s1656 | 122 | bary_lo | CZQ | lo | 107859/500000 | hi_OHD,s1407,lo_ODZ,s1586,lo_OCQ,s1607,s1615 |
| s1667 | 125 | bary_hi | OCY | hi | 203843/500000 | s1588,s1433,s1566,lo_OHY,s1580,s1455 |
| s1669 | 126 | bary_hi | OYQ | hi | 661389/1000000 | s1588,s1433,s1566,lo_OHY,hi_OHQ,s1589 |
| s1671 | 128 | bary_hi | HYQ | lo | 47643/200000 | s1588,s1433,s1566,lo_OHY,s1590,s1559 |
| s1674 | 129 | bary_lo | DYZ | hi | 289443/1000000 | s1588,s1433,s1566,lo_OHY,lo_ODZ,s1654 |
| s1677 | 130 | bary_lo | OCY | lo | 51263/250000 | hi_OHQ,s1671,s1599,lo_OHY,s1579,lo_OCQ |
| s1680 | 131 | bary_lo | HYQ | hi | 198623/500000 | hi_OHQ,s1671,s1599,lo_OHY,hi_OHQ |
| s1683 | 134 | bary_lo | FYQ | hi | 725057/1000000 | hi_OHQ,s1671,s1599,lo_OHY,hi_OFQ,hi_HFQ |
| s1698 | 140 | bary_hi | HDZ | lo | 380813/1000000 | s1669,lo_YZQ,s1562,s1566,s1582,lo_HDY,s1627 |
| s1699 | 141 | bary_hi | HYZ | hi | 44833/250000 | s1669,lo_YZQ,s1562,s1566,lo_OHY,s1680 |
| s1701 | 143 | bary_lo | DFZ | lo | 108901/500000 | s1669,lo_YZQ,s1562,s1566,lo_ODF,s1619,lo_DFQ |
| s1710 | 151 | bary_hi | DPQ | lo | 224999/1000000 | s173,s1613,lo_HDP,s1554,s1627,s1615 |
| s1712 | 152 | bary_hi | YZP | hi | 37881/200000 | s173,s1613,lo_HDP,s1554,s1699,s1534,s1674 |
| s1719 | 155 | bary_hi | CYP | lo | 87141/500000 | s1654,s1577,lo_HZP,lo_HDP,lo_HCY,s1611,s1534 |
| s1723 | 156 | bary_lo | DPQ | hi | 277341/500000 | s1654,s1577,lo_HZP,lo_HDP,s1606,s1436 |
| s1726 | 158 | bary_hi | FYZ | hi | 195123/500000 | s1634,s1567,s1534,s1568,s1635,s1651 |
| s1727 | 160 | bary_lo | HYZ | lo | 6043/50000 | s1490,s1577,lo_CZP,s1568,lo_HCY,lo_HDY,lo_HYP |
| s1729 | 161 | bary_hi | CYZ | lo | 33337/250000 | s1490,s1577,lo_CZP,s1568,s1611,s1719 |
| s1731 | 162 | bary_lo | DZQ | hi | 216043/500000 | s1490,s1577,lo_CZP,s1568,hi_CDQ,s1723 |
| s1744 | 165 | bary_lo | DYR | lo | 199097/1000000 | hi_CDQ,lo_DQR,s1557,lo_CDR,s1611,s1622 |
| s1745 | 166 | bary_lo | DZR | lo | 108773/1000000 | hi_CDQ,lo_DQR,s1557,lo_CDR,s1568,s1623 |
| s1752 | 167 | bary_hi | OCZ | hi | 291307/1000000 | s1637,lo_YZQ,s1656,s1729,s1667,hi_OCQ |
| s1755 | 170 | bary_lo | DZP | lo | 184359/1000000 | s1637,lo_YZQ,s1656,s1729,s1613,lo_DYP,s1710 |
| s1761 | 175 | bary_lo | ZPQ | lo | 21189/125000 | s1651,lo_FYP,lo_DYP,s1555,s1623,s1553,lo_YZQ |
| s1772 | 176 | bary_lo | OQR | lo | 13587/100000 | s1731,lo_ZQR,lo_DQR,s1745,s1598,s1562 |
| s1777 | 177 | bary_lo | CQR | lo | 871/8000 | s1731,lo_ZQR,lo_DQR,s1745,s1615,s1656 |
| s1786 | 178 | bary_lo | DFP | lo | 7737/62500 | s1726,s1639,lo_FZP,lo_FYP,s1619,s1701 |
| s1792 | 180 | bary_hi | ODP | hi | 665437/1000000 | s1683,s1574,s1570,lo_FYP,hi_ODF,s2,s1598 |
| s1795 | 182 | bary_hi | CDP | hi | 60881/100000 | s1683,s1574,s1570,lo_FYP,s1631,s1634,s1615 |
| s1796 | 183 | bary_hi | CPQ | hi | 317387/500000 | s1683,s1574,s1570,lo_FYP,hi_CFQ,s1637 |
| s1798 | 0 | sum | OHC | lo | 97763/250000 | lo_HCY,s1677,lo_OHY |
| s1799 | 2 | sum | OHD | lo | 13374/15625 | s1698,lo_ODZ,s1586 |
| s1801 | 4 | sum | OHZ | lo | 382573/1000000 | s1727,lo_OHY,s1566 |
| s1804 | 5 | sum | OHQ | lo | 859233/1000000 | s1559,s1801,s1562 |
| s1808 | 6 | sum | ODQ | lo | 391743/1000000 | lo_DQR,s1569,s1772 |
| s1810 | 7 | sum | OPQ | lo | 599489/1000000 | s1578,s1562,s1761 |
| s1812 | 8 | sum | HCD | lo | 743397/1000000 | s1568,s1558,s1698 |
| s1813 | 9 | sum | HCQ | lo | 608773/1000000 | s1656,s1558,s1559 |
| s1816 | 10 | sum | CDY | lo | 526461/1000000 | s1568,s1729,s1567 |
| s1817 | 11 | sum | CDP | lo | 475507/1000000 | s1568,lo_CZP,s1755 |
| s1818 | 11 | sub | CDZ | hi | 331451/1000000 | s1795,lo_CZP,s1755 |
| s1819 | 11 | sub | DZP | hi | 158831/500000 | s1795,s1568,lo_CZP |
| s1820 | 12 | sum | CDQ | lo | 2359/8000 | lo_CDR,s1777,lo_DQR |
| s1822 | 13 | sum | CYQ | lo | 221033/500000 | s1729,s1656,lo_YZQ |
| s1824 | 14 | sum | CPQ | lo | 47823/100000 | lo_CZP,s1656,s1761 |
| s1826 | 15 | sum | DFY | lo | 9681/31250 | s1786,lo_DYP,lo_FYP |
| s1827 | 16 | sum | DYQ | lo | 385097/1000000 | lo_DQR,s1744,lo_YQR |
| s1828 | 17 | sum | DZQ | lo | 294773/1000000 | lo_DQR,s1745,lo_ZQR |
| s1829 | 18 | sum | FYZ | lo | 3661/12500 | lo_FYP,lo_FZP,s1639 |
| s1831 | 19 | sumlo | OCD | lo | 232793/1000000 | lo_OCQ,s1799,s1808,s1798,hi_OHQ |
| s1835 | 21 | sumlo | HCF | lo | 26003/100000 | s1558,s1626,lo_HFZ,s1798,s1588 |
| s1841 | 26 | sumlo | CYZ | lo | 137143/1000000 | s1816,lo_CZP,s1568,s1719,s1795 |
| s1843 | 29 | sumlo | HDR | lo | 247459/1000000 | lo_CDR,s1627,lo_DQR,s1812,hi_CDQ |
| s1844 | 31 | sumlo | DYR | lo | 50461/250000 | lo_CDR,s1827,s1816,lo_DQR,hi_CDQ |
| s1845 | 32 | sumlo | DZR | lo | 54573/500000 | lo_CDR,s1828,s1568,lo_DQR,hi_CDQ |
| s1848 | 35 | sumlo | OCY | lo | 13927/62500 | s1822,lo_OHY,lo_HCY,s1599,s1680 |
| s1854 | 38 | diffhi | DYQ | hi | 618179/1000000 | s1674,s1683,s1826,lo_YZQ,s1829 |
| s1855 | 39 | sumlo | YPQ | lo | 86041/500000 | lo_DYP,lo_YZQ,s1827,s1639,s1674 |
| s1856 | 41 | sumlo | OZQ | lo | 127681/500000 | s1828,s1801,s1559,lo_ODZ,s1654 |
| s1859 | 44 | sumlo | HZQ | lo | 245443/1000000 | s1828,s1727,s1698,lo_YZQ,s1674 |
| s1861 | 46 | sumlo | FZQ | lo | 184127/500000 | s1701,lo_YZQ,s1828,s1829,s1674 |
| s1862 | 48 | sumlo | HCP | lo | 83219/500000 | s1817,lo_HZP,lo_CZP,lo_HDP,s1819 |
| s1863 | 49 | sumlo | DFP | lo | 68093/500000 | lo_DYP,lo_FZP,s1755,lo_FYP,s1712 |
| s1864 | 50 | sumlo | OQR | lo | 139279/1000000 | lo_DQR,s1856,s1808,lo_ZQR,s1731 |
| s1865 | 51 | sumlo | CQR | lo | 55433/500000 | s1820,lo_YQR,s1822,lo_DQR,s1854 |
| s1866 | 54 | balance_lo | HCZ | lo | 175419/1000000 | lo_CZP,s1799,lo_HZP,s1831,s1862,lo_ODZ,s1792 |
| s1871 | 60 | balance_lo | DYZ | lo | 204947/1000000 | lo_YZQ,s1812,s1828,lo_HCY,s1827,s1866,s1581 |
| s1873 | 61 | balance_lo | OCP | lo | 274079/1000000 | s1824,lo_OHY,s1810,lo_HCY,lo_OCQ,lo_HYP,s1680 |
| s1874 | 66 | balance_lo | OYZ | lo | 23581/125000 | s1595,lo_CZP,s1871,s1873,lo_ODZ,s1719,s1795 |
| s1875 | 67 | balance_lo | OZQ | lo | 265597/1000000 | lo_ODZ,s1824,s1828,s1873,s1808,lo_CZP,s1795 |
| s1876 | 69 | balance_lo | DYZ | lo | 103509/500000 | lo_YZQ,s1817,s1828,s1719,s1827,lo_CZP,s1796 |
| s1877 | 72 | balance_lo | CDZ | lo | 207303/1000000 | s1798,s1828,s1813,lo_ODZ,lo_OCQ,s1698,hi_OHQ |
| s1878 | 73 | balance_lo | ODR | lo | 86979/500000 | s1798,lo_DQR,lo_OCQ,s1843,s1804,lo_CDR,s1581 |
| s1879 | 74 | balance_lo | FPQ | lo | 65551/250000 | lo_YZQ,s1863,s1828,lo_FYP,s1827,lo_FZP,s1674 |
| s1887 | 77 | balance_lo | DZP | lo | 12473/62500 | s1877,s1855,lo_CZP,s1827,s1817,lo_YZQ,s1637 |
| s1888 | 78 | balance_lo | OZP | lo | 197677/1000000 | s1798,s1887,s1831,lo_HZP,s1799,lo_CZP,s173 |
| s1889 | 79 | linear | OHC | lo | 6388/15625 | lo_HCY,s1848,lo_OHY |
| s1890 | 80 | linear | OHC | hi | 577227/1000000 | s1813,hi_OCQ,hi_OHQ |
| s1891 | 80 | linear | HCQ | hi | 48573/62500 | hi_OCQ,s1889,hi_OHQ |
| s1892 | 81 | linear | OHD | lo | 428193/500000 | s1698,lo_ODZ,s1801 |
| s1896 | 82 | linear | OHZ | lo | 100627/250000 | s1727,lo_OHY,s1874 |
| s1898 | 83 | linear | OHZ | hi | 1528/3125 | s1859,hi_OHQ,s1875 |
| s1899 | 83 | linear | OZQ | hi | 352049/1000000 | s1859,hi_OHQ,s1896 |
| s1900 | 83 | linear | OHQ | lo | 228387/250000 | s1859,s1896,s1875 |
| s1901 | 83 | linear | HZQ | hi | 66379/200000 | hi_OHQ,s1896,s1875 |
| s1905 | 84 | linear | OCD | hi | 264879/500000 | s1818,s1752,lo_ODZ |
| s1908 | 85 | linear | ODY | lo | 244333/500000 | s1876,lo_ODZ,s1874 |
| s1911 | 87 | linear | ODQ | hi | 138227/200000 | s1731,lo_ODZ,s1899 |
| s1912 | 88 | linear | ODQ | lo | 406237/1000000 | lo_DQR,s1878,s1864 |
| s1914 | 89 | linear | OYQ | lo | 109449/200000 | s1874,s1875,lo_YZQ |
| s1920 | 90 | linear | HCD | lo | 152707/200000 | s1877,s1866,s1698 |
| s1921 | 90 | linear | HDZ | hi | 262139/500000 | s1877,s173,s1866 |
| s1924 | 92 | linear | HCQ | lo | 31829/50000 | s1656,s1866,s1859 |
| s1926 | 93 | linear | HDZ | lo | 12049/31250 | s1887,lo_HDP,lo_HZP |
| s1928 | 94 | linear | HDQ | hi | 710921/1000000 | s1731,s1921,s1859 |
| s1930 | 95 | linear | CDY | lo | 68933/125000 | s1877,s1841,s1876 |
| s1932 | 96 | linear | CDP | lo | 499871/1000000 | s1877,lo_CZP,s1887 |
| s1934 | 97 | linear | CDQ | lo | 148433/500000 | lo_CDR,s1865,lo_DQR |
| s1942 | 100 | linear | DYQ | lo | 96961/250000 | lo_DQR,s1844,lo_YQR |
| s1944 | 101 | linear | DZQ | lo | 147573/500000 | lo_DQR,s1845,lo_ZQR |
| s1952 | 103 | quad | HDQ | lo | 82421/200000 | s1901 |
| s1956 | 106 | linear | HDF | hi | 47293/200000 | s1920 |
| s1957 | 107 | linear | CDF | hi | 73997/100000 | s1835 |
| s1965 | 114 | bary_lo | YZP | lo | 21973/200000 | s1890,lo_HCY,s1848,lo_OHY,s1888,lo_HZP,lo_CZP |
| s1975 | 117 | bary_hi | DFY | hi | 506887/1000000 | hi_OHD,lo_HDY,s1908,lo_OHY,hi_ODF,s1956 |
| s1980 | 121 | bary_lo | HDZ | hi | 126123/250000 | hi_OHD,s1926,lo_ODZ,s1896,hi_OHD |
| s1982 | 122 | bary_lo | CZQ | lo | 22561/100000 | hi_OHD,s1926,lo_ODZ,s1896,lo_OCQ,s1924,s1934 |
| s1985 | 124 | bary_lo | DZQ | hi | 417141/1000000 | hi_OHD,s1926,lo_ODZ,s1896,s1911,s1928 |
| s1997 | 126 | bary_hi | OYQ | hi | 629583/1000000 | s1898,s1727,s1874,lo_OHY,hi_OHQ,s1899 |
| s1999 | 127 | bary_hi | HDY | lo | 142507/500000 | s1898,s1727,s1874,lo_OHY,s1892,s1926 |
| s2001 | 128 | bary_hi | HYQ | lo | 272491/1000000 | s1898,s1727,s1874,lo_OHY,s1900,s1859 |
| s2006 | 129 | bary_lo | DYZ | hi | 65213/250000 | s1898,s1727,s1874,lo_OHY,lo_ODZ,s1980 |
| s2009 | 130 | bary_lo | OCY | lo | 11619/50000 | hi_OHQ,s2001,s1914,lo_OHY,s1889,lo_OCQ |
| s2014 | 131 | bary_lo | HYQ | hi | 71951/200000 | hi_OHQ,s2001,s1914,lo_OHY,hi_OHQ |
| s2015 | 132 | bary_hi | CDY | hi | 346123/500000 | hi_OHQ,s2001,s1914,lo_OHY,s1905,s173,s1934 |
| s2017 | 133 | bary_hi | CYQ | hi | 135951/250000 | hi_OHQ,s2001,s1914,lo_OHY,hi_OCQ,s1891 |
| s2019 | 134 | bary_lo | FYQ | hi | 89073/125000 | hi_OHQ,s2001,s1914,lo_OHY,hi_OFQ,hi_HFQ |
| s2040 | 139 | bary_hi | HCZ | hi | 117443/500000 | s1997,lo_YZQ,s1875,s1874,s1889,lo_HCY,s1891 |
| s2041 | 140 | bary_hi | HDZ | lo | 50937/125000 | s1997,lo_YZQ,s1875,s1874,s1892,s1999,s1952 |
| s2042 | 141 | bary_hi | HYZ | hi | 141109/1000000 | s1997,lo_YZQ,s1875,s1874,lo_OHY,s2014 |
| s2043 | 142 | bary_hi | HZQ | lo | 249899/1000000 | s1997,lo_YZQ,s1875,s1874,s1900,s2001 |
| s2056 | 151 | bary_hi | DPQ | lo | 257561/1000000 | s173,s1932,lo_HDP,s1862,s1952,s1934 |
| s2066 | 153 | bary_lo | HCP | lo | 17309/100000 | s1980,s1887,lo_HZP,lo_HDP,s1920,s1866 |
| s2068 | 155 | bary_hi | CYP | lo | 46413/250000 | s1980,s1887,lo_HZP,lo_HDP,lo_HCY,s1930,s1841 |
| s2073 | 156 | bary_lo | DPQ | hi | 525711/1000000 | s1980,s1887,lo_HZP,lo_HDP,s1928,s1985 |
| s2078 | 159 | bary_lo | HCZ | lo | 175573/1000000 | s1795,s1887,lo_CZP,s1877,s1920,s2066 |
| s2079 | 160 | bary_lo | HYZ | lo | 122331/1000000 | s1795,s1887,lo_CZP,s1877,lo_HCY,s1999,lo_HYP |
| s2081 | 161 | bary_hi | CYZ | lo | 29491/200000 | s1795,s1887,lo_CZP,s1877,s1930,s2068 |
| s2083 | 162 | bary_lo | DZQ | hi | 410753/1000000 | s1795,s1887,lo_CZP,s1877,hi_CDQ,s2073 |
| s2096 | 165 | bary_lo | DYR | lo | 207989/1000000 | hi_CDQ,lo_DQR,s1865,lo_CDR,s1930,s1942 |
| s2097 | 166 | bary_lo | DZR | lo | 13907/125000 | hi_CDQ,lo_DQR,s1865,lo_CDR,s1877,s1944 |
| s2106 | 168 | bary_hi | OZQ | hi | 67059/200000 | s2017,lo_YZQ,s1982,s2081,lo_OCQ,s1997 |
| s2110 | 170 | bary_lo | DZP | lo | 207203/1000000 | s2017,lo_YZQ,s1982,s2081,s1932,lo_DYP,s2056 |
| s2120 | 175 | bary_lo | ZPQ | lo | 180589/1000000 | s1975,lo_FYP,lo_DYP,s1863,s1944,s1861,lo_YZQ |
| s2135 | 176 | bary_lo | OQR | lo | 9507/62500 | s2083,lo_ZQR,lo_DQR,s2097,s1912,s1875 |
| s2141 | 177 | bary_lo | CQR | lo | 23659/200000 | s2083,lo_ZQR,lo_DQR,s2097,s1934,s1982 |
| s2163 | 181 | bary_hi | OPQ | hi | 726359/1000000 | s2019,s1855,s1879,lo_FYP,hi_OFQ,s1997 |
| s2165 | 182 | bary_hi | CDP | hi | 587091/1000000 | s2019,s1855,s1879,lo_FYP,s1957,s2015,s1934 |
| s2169 | 0 | sum | OHC | lo | 20919/50000 | lo_HCY,s2009,lo_OHY |
| s2171 | 2 | sum | OHD | lo | 225751/250000 | s2041,lo_ODZ,s1896 |
| s2172 | 4 | sum | OHZ | lo | 403979/1000000 | s2079,lo_OHY,s1874 |
| s2174 | 5 | sum | OHQ | lo | 36779/40000 | s2043,s2172,s1875 |
| s2175 | 5 | sub | HZQ | hi | 41303/125000 | hi_OHQ,s2172,s1875 |
| s2176 | 5 | sub | OHZ | hi | 60563/125000 | hi_OHQ,s2043,s1875 |
| s2179 | 6 | sum | ODQ | lo | 41907/100000 | lo_DQR,s1878,s2135 |
| s2181 | 7 | sum | OPQ | lo | 643863/1000000 | s1888,s1875,s2120 |
| s2186 | 9 | sum | HCQ | lo | 325541/500000 | s1982,s2078,s2043 |
| s2190 | 10 | sum | CDY | lo | 35111/62500 | s1877,s2081,s1876 |
| s2191 | 11 | sum | CDP | lo | 253753/500000 | s1877,lo_CZP,s2110 |
| s2193 | 11 | sub | DZP | hi | 71697/250000 | s2165,s1877,lo_CZP |
| s2194 | 12 | sum | CDQ | lo | 60859/200000 | lo_CDR,s2141,lo_DQR |
| s2197 | 14 | sum | CPQ | lo | 499199/1000000 | lo_CZP,s1982,s2120 |
| s2200 | 16 | sum | DYQ | lo | 393989/1000000 | lo_DQR,s2096,lo_YQR |
| s2201 | 17 | sum | DZQ | lo | 37157/125000 | lo_DQR,s2097,lo_ZQR |
| s2204 | 19 | sumlo | OCD | lo | 259309/1000000 | lo_OCQ,s2171,s2179,s2169,hi_OHQ |
| s2206 | 20 | sumlo | OCZ | lo | 14869/100000 | lo_OCQ,s2172,s2169,s1875,hi_OHQ |
| s2212 | 23 | sumlo | HDY | lo | 61243/200000 | s2041,lo_OHY,s2079,s2171,s2176 |
| s2225 | 26 | sumlo | CYZ | lo | 154543/1000000 | s2190,lo_CZP,s1877,s2068,s2165 |
| s2227 | 28 | sumlo | ODQ | lo | 210387/500000 | s2194,s2171,s1952,s2204,s173 |
| s2244 | 37 | sumlo | HYQ | lo | 14697/50000 | s2200,s2079,s2212,lo_YZQ,s2006 |
| s2252 | 40 | sumlo | OZP | lo | 218821/1000000 | lo_CZP,s2172,lo_HZP,s2206,s2040 |
| s2253 | 41 | sumlo | HDZ | lo | 427461/1000000 | s2201,s2172,s2043,lo_ODZ,s2106 |
| s2266 | 42 | sumlo | OZQ | lo | 285369/1000000 | s2201,s2252,lo_ODZ,s2120,s2193 |
| s2274 | 43 | sumlo | DZP | lo | 125663/500000 | s1877,lo_HZP,lo_CZP,s2253,s2040 |
| s2281 | 44 | sumlo | HZQ | lo | 291803/1000000 | s2201,s2079,s2253,lo_YZQ,s2006 |
| s2284 | 45 | sumlo | CZQ | lo | 250019/1000000 | s1877,lo_YZQ,s2225,s2201,s2006 |
| s2289 | 47 | sumlo | ZPQ | lo | 214801/1000000 | s2274,lo_YZQ,s2201,s1965,s2006 |
| s2294 | 48 | sumlo | HCP | lo | 48683/250000 | s2191,lo_HZP,lo_CZP,lo_HDP,s2193 |
| s2313 | 55 | balance_lo | ODY | lo | 123167/250000 | s2079,s2227,lo_YZQ,s2171,s2244,lo_ODZ,s2175 |
| s2320 | 57 | balance_lo | HCZ | lo | 103069/500000 | lo_CZP,s2174,lo_HZP,lo_OCQ,s2294,s2266,s2163 |
| s2330 | 59 | balance_lo | HCD | lo | 405097/500000 | lo_ODZ,s2186,s2201,s2169,s2227,s2320,s2106 |
| s2337 | 60 | balance_lo | DYZ | lo | 9481/40000 | lo_YZQ,s2330,s2201,lo_HCY,s2200,s2320,s1891 |
| s2346 | 61 | balance_lo | OCP | lo | 319533/1000000 | s2197,lo_OHY,s2181,lo_HCY,lo_OCQ,lo_HYP,s2014 |
| s2348 | 62 | balance_lo | HDY | lo | 39687/125000 | lo_ODZ,s2244,s2201,lo_OHY,s2227,s2079,s2106 |
| s2352 | 63 | balance_lo | HYZ | lo | 1921/15625 | s1877,lo_HYP,s2274,lo_HCY,lo_CZP,s2348,s2165 |
| s2353 | 64 | balance_lo | CPQ | lo | 62509/125000 | lo_CZP,s2244,s2289,lo_HCY,s2284,lo_HYP,s2042 |
| s2361 | 66 | balance_lo | OYZ | lo | 47291/200000 | s2313,lo_CZP,s2337,s2346,lo_ODZ,s2068,s2165 |
| s2366 | 67 | balance_lo | OZQ | lo | 61531/200000 | lo_ODZ,s2353,s2201,s2346,s2227,lo_CZP,s2165 |
| s2444 | 82 | linear | OHZ | lo | 452399/1000000 | s2352,lo_OHY,s2361 |
| s2448 | 83 | linear | OHZ | hi | 200271/500000 | s2281,hi_OHQ,s2366 |

## Conclusion

{"triangle":"OHZ","lower":"s2444","upper":"s2448"}
