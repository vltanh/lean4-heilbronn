# Leaf rppmmppppmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYZ":1,"DYP":-1,"QYZ":1}

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
| 27 | interior_line | ["ZP","Z","HCDF","D",-1] |
| 28 | interior_line | ["ZQ","Y","OHC","H",1] |
| 29 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 31 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 32 | plu | ["OHDZP","ODP",1] |
| 33 | plu | ["OHDPR","OPR",-1] |
| 34 | plu | ["YOHDZ","YOZ",1] |
| 35 | plu | ["YOZQR","YZR",1] |
| 36 | plu | ["YHDFZ","YFZ",-1] |
| 37 | plu | ["YHDPR","YPR",-1] |
| 38 | plu | ["ZOHFP","ZOF",-1] |
| 39 | plu | ["ZOHFQ","ZFQ",-1] |
| 40 | plu | ["ZOHYR","ZHR",-1] |
| 41 | plu | ["ZOHPQ","ZPQ",-1] |
| 42 | plu | ["ZOHPR","ZPR",-1] |
| 43 | plu | ["ZOCFP","ZCF",-1] |
| 44 | plu | ["ZOFYR","ZFR",-1] |
| 45 | plu | ["POHFZ","POF",-1] |
| 46 | plu | ["POCFZ","PCF",-1] |
| 47 | plu | ["PHCFY","PFY",1] |
| 48 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OHR | OHR | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_ODQ | ODQ | lo | 279/1000 | ["cost","R"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HCR | HCR | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CPR | CPR | lo | 279/1000 | ["cost","Z"] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
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
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |
| hi_CFR | CFR | hi | 13635066269/18025000000 | "C066" |
| hi_CYQ | CYQ | hi | 27769359917/45783500000 | "C032" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 4 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 5 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 6 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 7 | ["fan","ODY","DYZ","ODZ","OYZ"] | ["fan","ODY","Z"] |
| 8 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 9 | ["fan","OFQ","FZQ","OFZ","OZQ"] | ["fan","OFQ","Z"] |
| 10 | ["fan","OPQ","OZP","OZQ","ZPQ"] | ["fan","OPQ","Z"] |
| 11 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 12 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 13 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 14 | ["fan","HDZ","DZP","HDP","HZP"] | ["fan","HDZ","P"] |
| 15 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 16 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 17 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 18 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 19 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 20 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 21 | ["fan","CPQ","CZP","CZQ","ZPQ"] | ["fan","CPQ","Z"] |
| 22 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 23 | ["fan","DYQ","DQR","DYR","YQR"] | ["fan","DYQ","R"] |
| 24 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 25 | ["plu","OCD","OHQ","OCQ","OHD","ODQ","OHC"] | ["plu","OHCDQ"] |
| 26 | ["plu","HDY","OHC","HCD","OHY","HCY","OHD"] | ["plu","HOCDY"] |
| 27 | ["plu","HCD","OHQ","HCQ","OHD","HDQ","OHC"] | ["plu","HOCDQ"] |
| 28 | ["plu","HYQ","OHC","HCQ","OHY","HCY","OHQ"] | ["plu","HOCYQ"] |
| 29 | ["plu","HYR","OHC","HCR","OHY","HCY","OHR"] | ["plu","HOCYR"] |
| 30 | ["plu","HYR","OHZ","HYZ","OHR","HZR","OHY"] | ["plu","HOYZR"] |
| 31 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 32 | ["plu","HCD","HFQ","HCF","HDQ","HCQ","HDF"] | ["plu","HCDFQ"] |
| 33 | ["plu","HCD","OCP","CDP","OHC","HCP","OCD"] | ["plu","COHDP"] |
| 34 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 35 | ["plu","CDP","OCZ","CDZ","OCP","CZP","OCD"] | ["plu","CODZP"] |
| 36 | ["plu","CFR","OCP","CFP","OCR","CPR","OCF"] | ["plu","COFPR"] |
| 37 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 38 | ["plu","CDF","HCP","CDP","HCF","CFP","HCD"] | ["plu","CHDFP"] |
| 39 | ["plu","CDY","CFQ","CDF","CYQ","CDQ","CFY"] | ["plu","CDFYQ"] |
| 40 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 41 | ["plu","CDP","CYZ","CDY","CZP","CDZ","CYP"] | ["plu","CDYZP"] |
| 42 | ["plu","HCD","ODR","CDR","OHD","HDR","OCD"] | ["plu","DOHCR"] |
| 43 | ["plu","HDQ","ODF","DFQ","OHD","HDF","ODQ"] | ["plu","DOHFQ"] |
| 44 | ["plu","CDZ","ODF","CDF","ODZ","DFZ","OCD"] | ["plu","DOCFZ"] |
| 45 | ["plu","CDQ","ODR","CDR","ODQ","DQR","OCD"] | ["plu","DOCQR"] |
| 46 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 47 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 48 | ["plu","CDF","DPQ","CDP","DFQ","CDQ","DFP"] | ["plu","DCFPQ"] |
| 49 | ["plu","CDQ","DYR","CDR","DYQ","CDY","DQR"] | ["plu","DCYQR"] |
| 50 | ["plu","CDQ","DZR","CDR","DZQ","CDZ","DQR"] | ["plu","DCZQR"] |
| 51 | ["plu","CFP","HFZ","CFZ","HFP","FZP","HCF"] | ["plu","FHCZP"] |
| 52 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 53 | ["plu","HDY","OYZ","DYZ","OHY","HYZ","ODY"] | ["plu","YOHDZ"] |
| 54 | ["plu","CDY","HYQ","CYQ","HDY","DYQ","HCY"] | ["plu","YHCDQ"] |
| 55 | ["plu","DYZ","HYQ","DYQ","HYZ","HDY","YZQ"] | ["plu","YHDZQ"] |
| 56 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 57 | ["plu","HDZ","OYZ","DYZ","OHZ","HYZ","ODZ"] | ["plu","ZOHDY"] |
| 58 | ["plu","DZP","OHZ","HDZ","OZP","HZP","ODZ"] | ["plu","ZOHDP"] |
| 59 | ["plu","HDZ","OZQ","DZQ","OHZ","HZQ","ODZ"] | ["plu","ZOHDQ"] |
| 60 | ["plu","HZP","OFZ","FZP","OHZ","HFZ","OZP"] | ["plu","ZOHFP"] |
| 61 | ["plu","FZQ","OHZ","HFZ","OZQ","HZQ","OFZ"] | ["plu","ZOHFQ"] |
| 62 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 63 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 64 | ["plu","CFP","DZP","CDP","FZP","CZP","DFP"] | ["plu","PCDFZ"] |
| 65 | ["plu","DZQ","OQR","DQR","OZQ","ODQ","ZQR"] | ["plu","QODZR"] |
| 66 | ["plu","CQR","DZQ","CDQ","ZQR","CZQ","DQR"] | ["plu","QCDZR"] |
| 67 | ["plu","CQR","DYR","CDR","YQR","CYR","DQR"] | ["plu","RCDYQ"] |
| 68 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 69 | ["balance",[[1,"HCF","ODP"],[1,"CFP","OHD"],[1,"HFP","OCD"],[-1,"HCP","ODF"]]] | ["six","ODHCFP"] |
| 70 | ["balance",[[1,"HCZ","ODP"],[-1,"CZP","OHD"],[-1,"HZP","OCD"],[-1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 71 | ["balance",[[-1,"HYZ","ODQ"],[-1,"YZQ","OHD"],[1,"HZQ","ODY"],[-1,"HYQ","ODZ"]]] | ["six","ODHYZQ"] |
| 72 | ["balance",[[-1,"HYZ","ODR"],[-1,"YZR","OHD"],[1,"HZR","ODY"],[-1,"HYR","ODZ"]]] | ["six","ODHYZR"] |
| 73 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[1,"CZP","ODF"],[1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 74 | ["balance",[[1,"ODY","HCZ"],[1,"DYZ","OHC"],[-1,"OYZ","HCD"],[1,"ODZ","HCY"]]] | ["six","HCODYZ"] |
| 75 | ["balance",[[1,"ODZ","HCQ"],[1,"DZQ","OHC"],[-1,"OZQ","HCD"],[1,"ODQ","HCZ"]]] | ["six","HCODZQ"] |
| 76 | ["balance",[[1,"DYZ","HCQ"],[-1,"YZQ","HCD"],[-1,"DZQ","HCY"],[-1,"DYQ","HCZ"]]] | ["six","HCDYZQ"] |
| 77 | ["balance",[[-1,"DYP","HCQ"],[1,"YPQ","HCD"],[-1,"DPQ","HCY"],[-1,"DYQ","HCP"]]] | ["six","HCDYPQ"] |
| 78 | ["balance",[[-1,"OCF","HDZ"],[-1,"CFZ","OHD"],[1,"OFZ","HCD"],[-1,"OCZ","HDF"]]] | ["six","HDOCFZ"] |
| 79 | ["balance",[[1,"OFZ","HDP"],[1,"FZP","OHD"],[1,"OZP","HDF"],[-1,"OFP","HDZ"]]] | ["six","HDOFZP"] |
| 80 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 81 | ["balance",[[1,"OCD","HFY"],[1,"CDF","OHY"],[1,"ODF","HCY"],[-1,"OCF","HDY"]]] | ["six","HYOCDF"] |
| 82 | ["balance",[[1,"OCP","HYQ"],[-1,"CPQ","OHY"],[-1,"OPQ","HCY"],[-1,"OCQ","HYP"]]] | ["six","HYOCPQ"] |
| 83 | ["balance",[[-1,"ODY","CFZ"],[-1,"DYZ","OCF"],[1,"OYZ","CDF"],[-1,"ODZ","CFY"]]] | ["six","CFODYZ"] |
| 84 | ["balance",[[-1,"ODZ","CFQ"],[-1,"DZQ","OCF"],[1,"OZQ","CDF"],[-1,"ODQ","CFZ"]]] | ["six","CFODZQ"] |
| 85 | ["balance",[[-1,"DYZ","CFQ"],[1,"YZQ","CDF"],[1,"DZQ","CFY"],[1,"DYQ","CFZ"]]] | ["six","CFDYZQ"] |
| 86 | ["balance",[[-1,"OHD","CFP"],[-1,"HDF","OCP"],[1,"ODF","HCP"],[-1,"OHF","CDP"]]] | ["six","CPOHDF"] |
| 87 | ["balance",[[-1,"ODY","CZP"],[-1,"DYZ","OCP"],[1,"OYZ","CDP"],[-1,"ODZ","CYP"]]] | ["six","CPODYZ"] |
| 88 | ["balance",[[-1,"ODZ","CPQ"],[-1,"DZQ","OCP"],[1,"OZQ","CDP"],[-1,"ODQ","CZP"]]] | ["six","CPODZQ"] |
| 89 | ["balance",[[-1,"OHD","CZQ"],[1,"HDZ","OCQ"],[1,"ODZ","HCQ"],[1,"OHZ","CDQ"]]] | ["six","CQOHDZ"] |
| 90 | ["balance",[[1,"OHC","DYZ"],[1,"HCY","ODZ"],[-1,"OCY","HDZ"],[1,"OHY","CDZ"]]] | ["six","DZOHCY"] |
| 91 | ["balance",[[-1,"OHC","DZQ"],[-1,"HCQ","ODZ"],[-1,"OCQ","HDZ"],[1,"OHQ","CDZ"]]] | ["six","DZOHCQ"] |
| 92 | ["balance",[[1,"OCF","DZQ"],[1,"CFQ","ODZ"],[-1,"OFQ","CDZ"],[1,"OCQ","DFZ"]]] | ["six","DZOCFQ"] |
| 93 | ["balance",[[-1,"OHC","DQR"],[1,"HCQ","ODR"],[-1,"OCQ","HDR"],[-1,"OHQ","CDR"]]] | ["six","DROHCQ"] |
| 94 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 95 | ["balance",[[-1,"OHC","DFP"],[1,"HCD","OFP"],[-1,"OCD","HFP"],[-1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 96 | ["balance",[[1,"HDZ","YPQ"],[-1,"DZQ","HYP"],[-1,"HZQ","DYP"],[-1,"HDQ","YZP"]]] | ["six","YPHDZQ"] |
| 97 | ["balance",[[1,"CDZ","YPQ"],[-1,"DZP","CYQ"],[1,"CZP","DYQ"],[1,"CDP","YZQ"]]] | ["six","YQCDZP"] |
| 98 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 99 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 100 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 101 | ["balance",[[-1,"OHC","YZQ"],[-1,"HCY","OZQ"],[1,"OCY","HZQ"],[-1,"OHY","CZQ"]]] | ["six","ZQOHCY"] |
| 102 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 103 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 104 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 105 | ["linear",{"OHD":1,"ODZ":-1,"OHZ":-1,"HDZ":-1},"0"] | ["affine_quad","OHDZ",-1] |
| 106 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 107 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 108 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 109 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 110 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 111 | ["linear",{"ODZ":-1,"OZQ":1,"ODQ":-1,"DZQ":1},"0"] | ["affine_quad","ODZQ",-1] |
| 112 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 113 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 114 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 115 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 116 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 117 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 118 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 119 | ["linear",{"HDZ":1,"HZQ":-1,"HDQ":-1,"DZQ":1},"0"] | ["affine_quad","HDZQ",-1] |
| 120 | ["linear",{"CDF":1,"CFP":-1,"CDP":-1,"DFP":-1},"0"] | ["affine_quad","CDFP",1] |
| 121 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 122 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 123 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 124 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 125 | ["linear",{"DYQ":1,"DQR":-1,"DYR":-1,"YQR":-1},"0"] | ["affine_quad","DYQR",1] |
| 126 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 127 | ["quad","HDQ","HZQ","93/125"] | ["quad","HZQD","PR"] |
| 128 | ["quad","CFQ","DFQ","93/91"] | ["quad","CQDF","ZPR"] |
| 129 | ["support","OHZ","OZP","OHP","1023/1000"] | ["support_pent","OHFPZ"] |
| 130 | ["support","DZQ","CDQ","CDZ","1023/1000"] | ["support_pent","DZOCQ"] |
| 131 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 132 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 133 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 134 | ["bary",["YZP",1],[["OZP",1],["HZP",1],["CZP",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","ZP"] |
| 135 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 136 | ["bary",["OYQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OQ"] |
| 137 | ["bary",["HDY",-1],[["OHD",-1],null,null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HD"] |
| 138 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HDQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HQ"] |
| 139 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DQ"] |
| 140 | ["bary",["OHZ",-1],[null,null,["OHD",-1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OH"] |
| 141 | ["bary",["OZR",1],[null,["OHR",1],["ODR",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OR"] |
| 142 | ["bary",["HDZ",-1],[["OHD",-1],null,null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","HD"] |
| 143 | ["bary",["CZQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CQ"] |
| 144 | ["bary",["CZR",1],[["OCR",1],["HCR",1],["CDR",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CR"] |
| 145 | ["bary",["DFZ",1],[["ODF",1],["HDF",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DF"] |
| 146 | ["bary",["DYZ",1],[["ODY",1],["HDY",-1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DY"] |
| 147 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DQ"] |
| 148 | ["bary",["OYQ",1],[null,["OHQ",1],["OZQ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OQ"] |
| 149 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HQ"] |
| 150 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 151 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CQ"] |
| 152 | ["bary",["OFZ",-1],[null,["ODF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OF"] |
| 153 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 154 | ["bary",["HCZ",1],[["OHC",-1],["HCY",-1],["HCQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HC"] |
| 155 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 156 | ["bary",["HZQ",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HQ"] |
| 157 | ["bary",["DZP",1],[["ODP",1],["DYP",1],["DPQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DP"] |
| 158 | ["bary",["DZP",1],[["ODP",1],["DYP",1],["DPR",1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","DP"] |
| 159 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 160 | ["bary",["CYZ",-1],[["HCY",-1],null,["CDY",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","CY"] |
| 161 | ["bary",["HCP",1],[null,null,["HCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HC"] |
| 162 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 163 | ["bary",["DPQ",-1],[["HDQ",-1],["CDQ",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DQ"] |
| 164 | ["bary",["DPQ",-1],[["HDQ",-1],null,["DYQ",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DQ"] |
| 165 | ["bary",["ZPQ",1],[["HZQ",1],["DZQ",1],["YZQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZQ"] |
| 166 | ["bary",["ZPR",1],[["HZR",1],["DZR",1],["YZR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZR"] |
| 167 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 168 | ["bary",["DFZ",1],[["CDF",1],null,null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DF"] |
| 169 | ["bary",["OHP",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OH"] |
| 170 | ["bary",["ODP",1],[["OCD",-1],null,["ODF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OD"] |
| 171 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 172 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 173 | ["bary",["CPQ",1],[null,["CDQ",1],["CFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CQ"] |
| 174 | ["bary",["DFP",1],[["CDF",1],null,null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DF"] |
| 175 | ["bary",["DPQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DQ"] |
| 176 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 177 | ["bary",["OFZ",-1],[["OCF",-1],["ODF",-1],["OFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OF"] |
| 178 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 179 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 180 | ["bary",["HZP",-1],[["HCP",-1],["HDP",1],null],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HP"] |
| 181 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 182 | ["bary",["CYZ",-1],[null,["CDY",-1],["CYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CY"] |
| 183 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 184 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DPQ",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DQ"] |
| 185 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 186 | ["bary",["HFR",-1],[["HCF",-1],["HDF",-1],["HFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HF"] |
| 187 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 188 | ["bary",["CPR",-1],[null,["CDP",-1],["CPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CP"] |
| 189 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 190 | ["bary",["DZR",1],[["CDZ",1],null,["DZQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DZ"] |
| 191 | ["bary",["DPR",1],[["CDP",1],null,["DPQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DP"] |
| 192 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 193 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPR",1]],"CYR",["YZR","CZR","CYZ"]] | ["bary","CYR","Z","DP"] |
| 194 | ["bary",["HFZ",-1],[["HCF",-1],["HFP",-1],["HFQ",-1]],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","HF"] |
| 195 | ["bary",["CDZ",1],[null,["CDP",1],["CDQ",-1]],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","CD"] |
| 196 | ["bary",["HFZ",-1],[["HCF",-1],["HFP",-1],["HFR",-1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","HF"] |
| 197 | ["bary",["OZP",1],[["ODZ",-1],["OFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OZ"] |
| 198 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 199 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 200 | ["bary",["HZP",1],[["HDZ",1],["HFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HZ"] |
| 201 | ["bary",["CDP",1],[null,["CDF",1],["CDZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CD"] |
| 202 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 203 | ["bary",["CYP",-1],[["CDY",-1],["CFY",-1],["CYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CY"] |
| 204 | ["bary",["OCR",1],[["OCD",1],["OCZ",1],["OCQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OC"] |
| 205 | ["bary",["OQR",1],[["ODQ",1],["OZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OQ"] |
| 206 | ["bary",["CQR",1],[["CDQ",1],["CZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","CQ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 1 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s2 | 1 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s4 | 2 | sub | HDZ | hi | 157/250 | hi_OHD,lo_ODZ,lo_OHZ |
| s21 | 6 | sub | ODP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_OFP |
| s23 | 7 | sub | DYZ | hi | 221/500 | s2,lo_ODZ,lo_OYZ |
| s45 | 15 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s46 | 16 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s77 | 28 | sumlo | HYQ | lo | 71251/500000 | lo_HCQ,lo_OHY,lo_HCY,lo_OHQ,hi_OHC |
| s78 | 29 | sumlo | HYR | lo | 71251/500000 | lo_HCR,lo_OHY,lo_HCY,lo_OHR,hi_OHC |
| s82 | 31 | sumlo | HCF | lo | 58273/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s86 | 36 | sumlo | OCP | lo | 3573/31250 | lo_CFP,lo_OCR,lo_CPR,lo_OCF,hi_CFR |
| s87 | 37 | sumlo | CFY | lo | 99643/1000000 | lo_CDF,lo_HCY,lo_CDY,s82,hi_HCD |
| s90 | 39 | sumlo | CFQ | lo | 923/3125 | lo_CDF,lo_CYQ,lo_CDQ,s87,hi_CDY |
| s91 | 40 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s46 |
| s95 | 44 | sumlo | CDZ | lo | 126743/1000000 | lo_CDF,lo_ODZ,lo_DFZ,lo_OCD,hi_ODF |
| s96 | 45 | sumlo | ODR | lo | 26163/250000 | lo_CDR,lo_ODQ,lo_DQR,lo_OCD,hi_CDQ |
| s98 | 47 | sumlo | HDR | lo | 192191/1000000 | lo_CDR,lo_HDQ,lo_DQR,lo_HCD,hi_CDQ |
| s106 | 52 | sumlo | CFP | lo | 105463/1000000 | lo_CDF,lo_FZP,s91,lo_DFP,s45 |
| s115 | 67 | sumlo | DYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CYR,lo_DQR,hi_CQR |
| s119 | 68 | balance_lo | CFY | lo | 23013/200000 | s82,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s121 | 69 | balance_lo | HCP | lo | 146793/1000000 | s82,lo_ODP,s106,lo_OHD,lo_HFP,lo_OCD,hi_ODF |
| s122 | 70 | balance_lo | HCZ | lo | 9023/62500 | lo_CZP,lo_OHD,lo_HZP,lo_OCD,s121,lo_ODZ,s21 |
| s127 | 71 | balance_lo | HZQ | lo | 184297/1000000 | lo_HYZ,lo_ODQ,lo_YZQ,lo_OHD,s77,lo_ODZ,s2 |
| s128 | 72 | balance_lo | HZR | lo | 79239/500000 | lo_HYZ,s96,lo_YZR,lo_OHD,s78,lo_ODZ,s2 |
| s129 | 73 | balance_lo | CFZ | lo | 3851/31250 | lo_FZP,lo_OCD,lo_CZP,lo_ODF,s106,lo_ODZ,s21 |
| s138 | 76 | balance_lo | DYZ | lo | 75493/500000 | lo_YZQ,lo_HCD,lo_DZQ,lo_HCY,lo_DYQ,s122,hi_HCQ |
| s139 | 76 | balance_lo | HCQ | lo | 147927/500000 | lo_YZQ,lo_HCD,lo_DZQ,lo_HCY,lo_DYQ,s122,s23 |
| s140 | 78 | balance_lo | OFZ | lo | 38583/200000 | lo_OCF,lo_HDZ,s129,lo_OHD,lo_OCZ,lo_HDF,hi_HCD |
| s143 | 79 | balance_lo | OFP | lo | 82109/500000 | s140,lo_HDP,lo_FZP,lo_OHD,lo_OZP,lo_HDF,s4 |
| s144 | 80 | balance_lo | CFP | lo | 26959/200000 | s129,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s4 |
| s151 | 83 | balance_lo | OYZ | lo | 98019/1000000 | lo_ODY,s129,s138,lo_OCF,lo_ODZ,s119,hi_CDF |
| s152 | 84 | balance_lo | OZQ | lo | 9813/62500 | lo_ODZ,s90,lo_DZQ,lo_OCF,lo_ODQ,s129,hi_CDF |
| s153 | 85 | balance_lo | DYZ | lo | 160233/1000000 | lo_YZQ,lo_CDF,lo_DZQ,s119,lo_DYQ,s129,hi_CFQ |
| s154 | 85 | balance_lo | CFQ | lo | 7411/25000 | lo_YZQ,lo_CDF,lo_DZQ,s119,lo_DYQ,s129,s23 |
| s156 | 86 | balance_lo | HCP | lo | 78847/500000 | lo_OHD,s144,lo_HDF,s86,lo_OHF,lo_CDP,hi_ODF |
| s157 | 89 | balance_lo | CZQ | lo | 65651/500000 | lo_HDZ,lo_OCQ,lo_ODZ,s139,lo_OHZ,lo_CDQ,hi_OHD |
| s158 | 90 | balance_lo | OCY | lo | 103727/1000000 | lo_OHC,s153,lo_HCY,lo_ODZ,lo_OHY,s95,s4 |
| s160 | 92 | balance_lo | CDZ | lo | 13317/100000 | lo_OCF,lo_DZQ,s154,lo_ODZ,lo_OCQ,lo_DFZ,hi_OFQ |
| s161 | 93 | balance_lo | ODR | lo | 125117/1000000 | lo_OHC,lo_DQR,lo_OCQ,s98,lo_OHQ,lo_CDR,hi_HCQ |
| s164 | 96 | balance_lo | YPQ | lo | 94371/1000000 | lo_DZQ,lo_HYP,s127,lo_DYP,lo_HDQ,lo_YZP,s4 |
| s167 | 97 | balance_lo | DZP | lo | 106277/1000000 | s160,s164,lo_CZP,lo_DYQ,lo_CDP,lo_YZQ,hi_CYQ |
| s170 | 98 | balance_lo | OZP | lo | 25501/200000 | lo_OHC,s167,lo_OCD,lo_HZP,lo_OHD,lo_CZP,hi_HCD |
| s171 | 99 | balance_lo | HZP | lo | 105061/1000000 | lo_OHD,lo_FZP,lo_HDF,s170,lo_OHF,s167,hi_ODF |
| s174 | 102 | linear | OHC | lo | 289727/1000000 | lo_HCY,s158,lo_OHY |
| s179 | 106 | linear | OHZ | lo | 284019/1000000 | lo_HYZ,lo_OHY,s151 |
| s181 | 107 | linear | HZQ | hi | 558973/1000000 | hi_OHQ,s179,s152 |
| s189 | 109 | linear | ODY | lo | 87813/250000 | s153,lo_ODZ,s151 |
| s194 | 110 | linear | ODP | lo | 163391/500000 | s167,lo_ODZ,s170 |
| s195 | 112 | linear | ODQ | lo | 311117/1000000 | lo_DQR,s161,lo_OQR |
| s206 | 116 | linear | HCQ | lo | 459967/1000000 | s157,s122,s127 |
| s207 | 117 | linear | HCR | lo | 197923/500000 | lo_CZR,s122,s128 |
| s208 | 118 | linear | HDZ | lo | 152169/500000 | s167,lo_HDP,s171 |
| s218 | 121 | linear | CDY | lo | 386403/1000000 | s160,lo_CYZ,s153 |
| s221 | 122 | linear | CDP | lo | 332447/1000000 | s160,lo_CZP,s167 |
| s232 | 124 | linear | DFZ | lo | 292277/1000000 | lo_DFP,s167,lo_FZP |
| s234 | 125 | linear | DYQ | lo | 166923/500000 | lo_DQR,s115,lo_YQR |
| s235 | 127 | quad | HDQ | lo | 185027/1000000 | s181 |
| s236 | 128 | quad | DFQ | lo | 204251/1000000 | hi_CFQ |
| s237 | 130 | support_z | CDZ | lo | 82227/500000 | lo_DZQ,hi_CDQ |
| s241 | 131 | linear | HCD | hi | 907/1000 | lo_HDF |
| s243 | 132 | linear | CDF | hi | 441727/500000 | s82 |
| s247 | 133 | bary_hi | CDY | hi | 725679/1000000 | hi_OHC,lo_HCY,s158,lo_OHY,hi_OCD,s241 |
| s262 | 135 | bary_lo | OCY | lo | 59887/500000 | hi_OHD,lo_HDY,s189,lo_OHY,s174,lo_OCD |
| s265 | 137 | bary_lo | HDY | hi | 138937/250000 | hi_OHD,lo_HDY,s189,lo_OHY,hi_OHD |
| s281 | 140 | bary_lo | OHZ | hi | 301331/500000 | hi_OHD,s208,lo_ODZ,s179,hi_OHD |
| s286 | 141 | bary_lo | OZR | lo | 100077/1000000 | hi_OHD,s208,lo_ODZ,s179,lo_OHR,s161 |
| s295 | 143 | bary_lo | CZQ | lo | 35991/200000 | hi_OHD,s208,lo_ODZ,s179,lo_OCQ,s206,lo_CDQ |
| s296 | 144 | bary_lo | CZR | lo | 30291/250000 | hi_OHD,s208,lo_ODZ,s179,lo_OCR,s207,lo_CDR |
| s357 | 153 | bary_lo | OYR | hi | 75083/125000 | hi_ODQ,lo_DQR,lo_OQR,s161,s2,hi_OYQ |
| s377 | 158 | bary_lo | DZP | lo | 32299/250000 | s357,lo_YZR,s286,s151,s194,lo_DYP,lo_DPR |
| s379 | 159 | bary_lo | HDZ | hi | 299089/500000 | s241,s237,s208,s122,s241 |
| s400 | 162 | bary_lo | DFP | lo | 105247/1000000 | s241,s221,lo_HDP,s156,lo_HDF,lo_CDF |
| s413 | 166 | bary_lo | ZPR | lo | 103957/1000000 | s265,lo_DYP,lo_HYP,lo_HDP,s128,lo_DZR,lo_YZR |
| s415 | 167 | bary_hi | CYP | lo | 144531/1000000 | s379,s377,s171,lo_HDP,lo_HCY,s218,lo_CYZ |
| s428 | 168 | bary_hi | DFZ | hi | 74471/125000 | s243,s232,s129,s237,s243 |
| s434 | 169 | bary_hi | OHP | lo | 227817/1000000 | s243,s400,s144,s221,s174,lo_OHD,lo_OHF |
| s436 | 170 | bary_hi | ODP | hi | 32911/50000 | s243,s400,s144,s221,lo_OCD,hi_ODF |
| s441 | 171 | bary_lo | HYP | lo | 121379/1000000 | s243,s400,s144,s221,lo_HCY,lo_HDY,lo_HFY |
| s442 | 172 | bary_hi | CDP | hi | 160853/250000 | s243,s400,s144,s221,s243 |
| s443 | 173 | bary_hi | CPQ | hi | 659627/1000000 | s243,s400,s144,s221,hi_CDQ,hi_CFQ |
| s446 | 175 | bary_lo | DPQ | hi | 562919/1000000 | s243,s400,s144,s221,hi_CDQ,hi_DFQ |
| s447 | 175 | bary_hi | DPQ | lo | 55049/500000 | s243,s400,s144,s221,lo_CDQ,s236 |
| s454 | 176 | bary_hi | OHZ | lo | 326277/1000000 | s442,s377,lo_CZP,s237,s174,lo_OHD,s434 |
| s455 | 177 | bary_hi | OFZ | lo | 263841/1000000 | s442,s377,lo_CZP,s237,lo_OCF,lo_ODF,s143 |
| s456 | 179 | bary_lo | HYZ | lo | 63569/500000 | s442,s377,lo_CZP,s237,lo_HCY,lo_HDY,s441 |
| s461 | 184 | bary_lo | DZQ | hi | 56607/125000 | s442,s377,lo_CZP,s237,hi_CDQ,s446 |
| s474 | 185 | bary_hi | HDR | lo | 194641/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s235 |
| s476 | 186 | bary_hi | HFR | lo | 98213/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s82,lo_HDF,lo_HFQ |
| s479 | 187 | bary_lo | CYR | hi | 134653/250000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s247,hi_CYQ |
| s481 | 188 | bary_lo | CPR | hi | 509977/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s442,s443 |
| s484 | 189 | bary_lo | DYR | lo | 159483/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s218,s234 |
| s485 | 190 | bary_lo | DZR | lo | 98193/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s237,lo_DZQ |
| s487 | 191 | bary_lo | DPR | lo | 12249/125000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s221,s447 |
| s513 | 193 | bary_lo | DZP | lo | 67603/500000 | s479,lo_YZR,s296,lo_CYZ,s221,lo_DYP,s487 |
| s517 | 196 | bary_hi | HFZ | lo | 79/800 | s481,s413,s296,lo_CZP,s82,lo_HFP,s476 |
| s523 | 198 | bary_lo | HCP | lo | 105801/500000 | s428,lo_FZP,s513,s400,lo_HCD,s82,s122 |
| s525 | 199 | bary_lo | HYP | lo | 25613/200000 | s428,lo_FZP,s513,s400,lo_HDY,lo_HFY,s456 |
| s538 | 204 | bary_lo | OCR | lo | 1776/15625 | s461,lo_ZQR,lo_DQR,s485,lo_OCD,lo_OCZ,lo_OCQ |
| s542 | 205 | bary_lo | OQR | lo | 19227/200000 | s461,lo_ZQR,lo_DQR,s485,s195,s152 |
| s547 | 206 | bary_lo | CQR | lo | 23563/250000 | s461,lo_ZQR,lo_DQR,s485,lo_CDQ,s295 |
| s552 | 0 | sum | OHC | lo | 152887/500000 | lo_HCY,s262,lo_OHY |
| s553 | 2 | sub | HDZ | hi | 580723/1000000 | hi_OHD,lo_ODZ,s454 |
| s554 | 5 | sub | DFZ | hi | 578617/1000000 | hi_ODF,lo_ODZ,s455 |
| s558 | 8 | sum | ODQ | lo | 78563/250000 | lo_DQR,s161,s542 |
| s563 | 11 | sub | CDP | hi | 301199/500000 | s241,s523,lo_HDP |
| s564 | 12 | sum | HCQ | lo | 25431/50000 | s295,s122,s127 |
| s566 | 13 | sum | HDY | lo | 62813/200000 | lo_DYP,lo_HDP,s525 |
| s569 | 14 | sum | HDZ | lo | 333267/1000000 | s513,lo_HDP,s171 |
| s571 | 17 | sum | CDY | lo | 417687/1000000 | s237,lo_CYZ,s153 |
| s572 | 18 | sum | CDP | lo | 19633/50000 | s237,lo_CZP,s513 |
| s575 | 19 | sum | CDQ | lo | 70063/250000 | lo_CDR,s547,lo_DQR |
| s579 | 20 | sum | CYQ | lo | 73191/200000 | lo_CYZ,s295,lo_YZQ |
| s584 | 22 | sum | DFZ | lo | 333453/1000000 | s400,s513,lo_FZP |
| s586 | 23 | sum | DYQ | lo | 345483/1000000 | lo_DQR,s484,lo_YQR |
| s587 | 24 | sum | DZQ | lo | 284193/1000000 | lo_DQR,s485,lo_ZQR |
| s592 | 30 | sumlo | HYR | lo | 85431/500000 | s456,lo_OHR,s128,lo_OHY,s281 |
| s593 | 31 | sumlo | HCF | lo | 65849/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s265 |
| s597 | 37 | sumlo | CFY | lo | 4119/31250 | lo_CDF,lo_HCY,s571,s593,s241 |
| s599 | 40 | sumlo | CFZ | lo | 7197/50000 | lo_CDF,lo_CZP,s237,s144,s563 |
| s600 | 41 | sumlo | CYZ | lo | 5197/50000 | s571,lo_CZP,s237,s415,s563 |
| s601 | 42 | sumlo | ODR | lo | 62969/500000 | lo_CDR,lo_OHD,s474,lo_OCD,s241 |
| s602 | 43 | sumlo | HDQ | lo | 105469/500000 | s236,lo_OHD,lo_HDF,s558,hi_ODF |
| s604 | 46 | sumlo | DFP | lo | 111421/1000000 | lo_CDF,lo_HDP,s572,lo_HDF,s241 |
| s606 | 47 | sumlo | HDR | lo | 200379/1000000 | lo_CDR,s602,lo_DQR,lo_HCD,hi_CDQ |
| s607 | 48 | sumlo | DPQ | lo | 63063/500000 | s572,s236,s575,s604,s243 |
| s609 | 49 | sumlo | DYR | lo | 168987/1000000 | lo_CDR,s586,s571,lo_DQR,hi_CDQ |
| s610 | 50 | sumlo | DZR | lo | 99343/1000000 | lo_CDR,s587,s237,lo_DQR,hi_CDQ |
| s613 | 52 | sumlo | CFP | lo | 69631/500000 | lo_CDF,lo_FZP,s599,s604,s554 |
| s616 | 54 | sumlo | HYQ | lo | 6333/31250 | s579,s566,s586,lo_HCY,s247 |
| s622 | 59 | sumlo | OZQ | lo | 189187/1000000 | s587,s454,s127,lo_ODZ,s553 |
| s624 | 65 | sumlo | OQR | lo | 103387/1000000 | lo_DQR,s622,s558,lo_ZQR,s461 |
| s625 | 66 | sumlo | CQR | lo | 94509/1000000 | s575,lo_ZQR,s295,lo_DQR,s461 |
| s626 | 70 | balance_lo | HCZ | lo | 44271/250000 | lo_CZP,lo_OHD,s171,lo_OCD,s523,lo_ODZ,s436 |
| s627 | 71 | balance_lo | HZQ | lo | 53877/250000 | s456,s558,lo_YZQ,lo_OHD,s616,lo_ODZ,s2 |
| s628 | 72 | balance_lo | HZR | lo | 43169/250000 | s456,s601,lo_YZR,lo_OHD,s592,lo_ODZ,s2 |
| s629 | 73 | balance_lo | CFZ | lo | 145089/1000000 | lo_FZP,lo_OCD,lo_CZP,lo_ODF,s613,lo_ODZ,s436 |
| s633 | 74 | balance_lo | OYZ | lo | 132133/1000000 | s189,s626,s153,s552,lo_ODZ,lo_HCY,s241 |
| s634 | 75 | balance_lo | OZQ | lo | 41863/200000 | lo_ODZ,s564,s587,s552,s558,s626,s241 |
| s637 | 77 | balance_lo | YPQ | lo | 36421/250000 | lo_DYP,s564,s607,lo_HCY,s586,s523,s241 |
| s639 | 79 | balance_lo | OFP | lo | 194471/1000000 | s455,lo_HDP,lo_FZP,lo_OHD,s170,lo_HDF,s553 |
| s641 | 80 | balance_lo | CFP | lo | 149269/1000000 | s629,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s553 |
| s645 | 85 | balance_lo | DYZ | lo | 46509/250000 | lo_YZQ,lo_CDF,s587,s597,s586,s629,hi_CFQ |
| s646 | 90 | balance_lo | OCY | lo | 27837/200000 | s552,s645,lo_HCY,lo_ODZ,lo_OHY,s237,s553 |
| s647 | 91 | balance_lo | CDZ | lo | 82597/500000 | s552,s587,s564,lo_ODZ,lo_OCQ,s569,hi_OHQ |
| s648 | 93 | balance_lo | ODR | lo | 128871/1000000 | s552,lo_DQR,lo_OCQ,s606,lo_OHQ,lo_CDR,hi_HCQ |
| s649 | 94 | balance_lo | OFZ | lo | 66287/250000 | s552,s584,lo_OCD,s517,lo_OHD,s629,s241 |
| s652 | 97 | balance_lo | DZP | lo | 152857/1000000 | s647,s637,lo_CZP,s586,s572,lo_YZQ,hi_CYQ |
| s653 | 98 | balance_lo | OZP | lo | 158347/1000000 | s552,s652,lo_OCD,s171,lo_OHD,lo_CZP,s241 |
| s654 | 99 | balance_lo | HZP | lo | 56379/500000 | lo_OHD,lo_FZP,lo_HDF,s653,lo_OHF,s652,hi_ODF |
| s656 | 102 | linear | OHC | lo | 65037/200000 | lo_HCY,s646,lo_OHY |
| s657 | 103 | linear | HCQ | hi | 172163/200000 | hi_OCQ,s656,hi_OHQ |
| s658 | 104 | linear | ODY | hi | 118587/200000 | s566,hi_OHD,lo_OHY |
| s665 | 106 | linear | OHZ | lo | 352271/1000000 | s456,lo_OHY,s633 |
| s668 | 107 | linear | HZQ | hi | 219207/500000 | hi_OHQ,s665,s634 |
| s674 | 109 | linear | ODY | lo | 411169/1000000 | s645,lo_ODZ,s633 |
| s678 | 112 | linear | ODQ | lo | 162629/500000 | lo_DQR,s648,s624 |
| s685 | 115 | linear | HCD | lo | 348631/500000 | s572,s523,lo_HDP |
| s689 | 116 | linear | HCQ | lo | 572547/1000000 | s295,s626,s627 |
| s691 | 117 | linear | HCR | lo | 117731/250000 | s296,s626,s628 |
| s692 | 118 | linear | HDZ | lo | 71723/200000 | s652,lo_HDP,s654 |
| s699 | 121 | linear | CDY | lo | 45517/100000 | s647,s600,s645 |
| s701 | 122 | linear | CDP | lo | 411051/1000000 | s647,lo_CZP,s652 |
| s703 | 123 | linear | CDQ | lo | 280509/1000000 | lo_CDR,s625,lo_DQR |
| s713 | 124 | linear | DFZ | lo | 178639/500000 | s604,s652,lo_FZP |
| s715 | 125 | linear | DYQ | lo | 354987/1000000 | lo_DQR,s609,lo_YQR |
| s716 | 126 | linear | DZQ | lo | 285343/1000000 | lo_DQR,s610,lo_ZQR |
| s717 | 127 | quad | HDQ | lo | 152793/500000 | s668 |
| s719 | 130 | support_z | CDZ | lo | 168193/1000000 | s716,hi_CDQ |
| s722 | 131 | linear | HDF | hi | 151369/500000 | s685 |
| s723 | 132 | linear | CDF | hi | 434151/500000 | s593 |
| s729 | 134 | bary_lo | YZP | lo | 106901/1000000 | hi_OHC,lo_HCY,s646,lo_OHY,s653,s654,lo_CZP |
| s732 | 135 | bary_lo | OCY | lo | 151713/1000000 | hi_OHD,s566,s674,lo_OHY,s656,lo_OCD |
| s734 | 136 | bary_hi | OYQ | hi | 331833/500000 | hi_OHD,s566,s674,lo_OHY,hi_OHQ,hi_ODQ |
| s737 | 137 | bary_lo | HDY | hi | 495831/1000000 | hi_OHD,s566,s674,lo_OHY,hi_OHD |
| s741 | 138 | bary_lo | HYQ | hi | 116853/250000 | hi_OHD,s566,s674,lo_OHY,hi_OHQ,s717 |
| s763 | 142 | bary_lo | HDZ | hi | 554729/1000000 | hi_OHD,s692,lo_ODZ,s665,hi_OHD |
| s767 | 143 | bary_lo | CZQ | lo | 203651/1000000 | hi_OHD,s692,lo_ODZ,s665,lo_OCQ,s689,s703 |
| s768 | 144 | bary_lo | CZR | lo | 135557/1000000 | hi_OHD,s692,lo_ODZ,s665,s538,s691,lo_CDR |
| s769 | 145 | bary_hi | DFZ | hi | 547081/1000000 | hi_OHD,s692,lo_ODZ,s665,hi_ODF,s722 |
| s770 | 146 | bary_hi | DYZ | hi | 299711/1000000 | hi_OHD,s692,lo_ODZ,s665,s658,s566 |
| s798 | 152 | bary_lo | OFZ | hi | 24259/50000 | hi_ODF,s713,s649,lo_ODZ,hi_ODF |
| s811 | 155 | bary_hi | HDZ | lo | 76153/200000 | s734,lo_YZQ,s634,s633,lo_OHD,s566,s717 |
| s819 | 160 | bary_hi | CYZ | lo | 106113/1000000 | s241,s719,s811,s626,lo_HCY,s699 |
| s823 | 161 | bary_hi | HCP | hi | 402949/1000000 | s241,s701,lo_HDP,s523,s241 |
| s829 | 162 | bary_lo | DFP | lo | 113307/1000000 | s241,s701,lo_HDP,s523,lo_HDF,lo_CDF |
| s830 | 163 | bary_hi | DPQ | lo | 167253/1000000 | s241,s701,lo_HDP,s523,s717,s703 |
| s840 | 165 | bary_lo | ZPQ | lo | 165657/1000000 | s737,lo_DYP,s525,lo_HDP,s627,s716,lo_YZQ |
| s841 | 166 | bary_lo | ZPR | lo | 54791/500000 | s737,lo_DYP,s525,lo_HDP,s628,s610,lo_YZR |
| s842 | 167 | bary_hi | CYP | lo | 33763/200000 | s763,s652,s654,lo_HDP,lo_HCY,s699,s819 |
| s851 | 169 | bary_hi | OHP | lo | 31099/125000 | s723,s829,s641,s701,s656,lo_OHD,lo_OHF |
| s853 | 170 | bary_hi | ODP | hi | 156827/250000 | s723,s829,s641,s701,lo_OCD,hi_ODF |
| s857 | 171 | bary_lo | HYP | lo | 131003/1000000 | s723,s829,s641,s701,lo_HCY,s566,lo_HFY |
| s858 | 173 | bary_hi | CPQ | hi | 642647/1000000 | s723,s829,s641,s701,hi_CDQ,hi_CFQ |
| s861 | 175 | bary_lo | DPQ | hi | 136519/250000 | s723,s829,s641,s701,hi_CDQ,hi_DFQ |
| s864 | 176 | bary_hi | OHZ | lo | 44603/125000 | s563,s652,lo_CZP,s719,s656,lo_OHD,s851 |
| s865 | 177 | bary_hi | OFZ | lo | 146519/500000 | s563,s652,lo_CZP,s719,lo_OCF,lo_ODF,s639 |
| s866 | 179 | bary_lo | HYZ | lo | 137739/1000000 | s563,s652,lo_CZP,s719,lo_HCY,s566,s857 |
| s869 | 182 | bary_hi | CYZ | lo | 29351/250000 | s563,s652,lo_CZP,s719,s699,s842 |
| s870 | 184 | bary_lo | DZQ | hi | 21489/50000 | s563,s652,lo_CZP,s719,hi_CDQ,s861 |
| s879 | 186 | bary_hi | HFR | lo | 1587/15625 | hi_CDQ,lo_DQR,s625,lo_CDR,s593,lo_HDF,lo_HFQ |
| s884 | 188 | bary_lo | CPR | hi | 49129/100000 | hi_CDQ,lo_DQR,s625,lo_CDR,s563,s858 |
| s886 | 189 | bary_lo | DYR | lo | 179391/1000000 | hi_CDQ,lo_DQR,s625,lo_CDR,s699,s715 |
| s887 | 190 | bary_lo | DZR | lo | 4017/40000 | hi_CDQ,lo_DQR,s625,lo_CDR,s719,s716 |
| s900 | 192 | bary_lo | DZP | lo | 156139/1000000 | hi_CYQ,lo_YZQ,s767,s869,s701,lo_DYP,s830 |
| s906 | 196 | bary_hi | HFZ | lo | 103253/1000000 | s884,s841,s768,lo_CZP,s593,lo_HFP,s879 |
| s908 | 197 | bary_hi | OZP | hi | 286407/1000000 | s769,lo_FZP,s900,s829,lo_ODZ,s798 |
| s909 | 198 | bary_lo | HCP | lo | 237239/1000000 | s769,lo_FZP,s900,s829,s685,s593,s626 |
| s910 | 199 | bary_lo | HYP | lo | 27969/200000 | s769,lo_FZP,s900,s829,s566,lo_HFY,s866 |
| s911 | 203 | bary_hi | CYP | lo | 44733/250000 | s769,lo_FZP,s900,s829,s699,s597,s869 |
| s922 | 205 | bary_lo | OQR | lo | 28919/250000 | s870,lo_ZQR,lo_DQR,s887,s678,s634 |
| s927 | 206 | bary_lo | CQR | lo | 104767/1000000 | s870,lo_ZQR,lo_DQR,s887,s703,s767 |
| s932 | 0 | sum | OHC | lo | 337713/1000000 | lo_HCY,s732,lo_OHY |
| s933 | 2 | sum | OHD | lo | 830589/1000000 | s811,lo_ODZ,s864 |
| s934 | 2 | sub | HDZ | hi | 17193/31250 | hi_OHD,lo_ODZ,s864 |
| s937 | 3 | sum | OHZ | lo | 45359/125000 | s866,lo_OHY,s633 |
| s940 | 4 | sum | OHQ | lo | 157539/200000 | s627,s937,s634 |
| s941 | 4 | sub | HZQ | hi | 427813/1000000 | hi_OHQ,s937,s634 |
| s942 | 5 | sum | ODF | lo | 185829/250000 | s713,lo_ODZ,s865 |
| s945 | 8 | sum | ODQ | lo | 337547/1000000 | lo_DQR,s648,s922 |
| s949 | 10 | sum | OPQ | lo | 533319/1000000 | s653,s634,s840 |
| s952 | 11 | sum | HCD | lo | 74129/100000 | s701,s909,lo_HDP |
| s953 | 11 | sub | CDP | hi | 576761/1000000 | s241,s909,lo_HDP |
| s955 | 12 | sum | HCQ | lo | 596243/1000000 | s767,s626,s627 |
| s957 | 13 | sum | HDY | lo | 65169/200000 | lo_DYP,lo_HDP,s910 |
| s959 | 17 | sum | CDY | lo | 471633/1000000 | s719,s869,s645 |
| s960 | 18 | sum | CDP | lo | 104333/250000 | s719,lo_CZP,s900 |
| s961 | 18 | sub | DZP | hi | 19723/62500 | s953,s719,lo_CZP |
| s962 | 19 | sum | CDQ | lo | 290767/1000000 | lo_CDR,s927,lo_DQR |
| s968 | 21 | sum | CPQ | lo | 115577/250000 | lo_CZP,s767,s840 |
| s971 | 22 | sum | DFZ | lo | 181223/500000 | s829,s900,lo_FZP |
| s972 | 23 | sum | DYQ | lo | 365391/1000000 | lo_DQR,s886,lo_YQR |
| s973 | 24 | sum | DZQ | lo | 11457/40000 | lo_DQR,s887,lo_ZQR |
| s982 | 31 | sumlo | HCF | lo | 78241/500000 | s952,lo_HFY,lo_HCY,lo_HDF,s737 |
| s984 | 32 | sumlo | HFQ | lo | 56929/500000 | s982,s717,s955,lo_HDF,s241 |
| s988 | 34 | sumlo | OCD | lo | 194159/1000000 | s962,s932,s952,lo_OCQ,s657 |
| s990 | 37 | sumlo | CFY | lo | 152529/1000000 | lo_CDF,lo_HCY,s959,s982,s241 |
| s992 | 40 | sumlo | CFZ | lo | 155433/1000000 | lo_CDF,lo_CZP,s719,s641,s953 |
| s993 | 41 | sumlo | CYZ | lo | 32057/250000 | s959,lo_CZP,s719,s911,s953 |
| s995 | 46 | sumlo | DFP | lo | 113951/1000000 | lo_CDF,lo_HDP,s960,lo_HDF,s241 |
| s997 | 47 | sumlo | HDR | lo | 3622/15625 | lo_CDR,s717,lo_DQR,s952,hi_CDQ |
| s998 | 49 | sumlo | DYR | lo | 185341/1000000 | lo_CDR,s972,s959,lo_DQR,hi_CDQ |
| s999 | 50 | sumlo | DZR | lo | 20133/200000 | lo_CDR,s973,s719,lo_DQR,hi_CDQ |
| s1002 | 52 | sumlo | CFP | lo | 3007/20000 | lo_CDF,lo_FZP,s992,s995,s769 |
| s1006 | 55 | sumlo | HYQ | lo | 269033/1000000 | s972,s866,s957,lo_YZQ,s770 |
| s1011 | 59 | sumlo | OZQ | lo | 112671/500000 | s973,s937,s627,lo_ODZ,s934 |
| s1018 | 63 | sumlo | DFP | lo | 6551/50000 | s960,lo_HFP,s1002,lo_HDP,s823 |
| s1019 | 64 | sumlo | CFP | lo | 161603/1000000 | s960,lo_FZP,lo_CZP,s1018,s961 |
| s1021 | 65 | sumlo | OQR | lo | 121803/1000000 | lo_DQR,s1011,s945,lo_ZQR,s870 |
| s1022 | 66 | sumlo | CQR | lo | 106987/1000000 | s962,lo_ZQR,s767,lo_DQR,s870 |
| s1023 | 70 | balance_lo | HCZ | lo | 24151/125000 | lo_CZP,s933,s654,s988,s909,lo_ODZ,s853 |
| s1024 | 71 | balance_lo | HZQ | lo | 62721/250000 | s866,s945,lo_YZQ,s933,s1006,lo_ODZ,s658 |
| s1026 | 73 | balance_lo | CFZ | lo | 162941/1000000 | lo_FZP,s988,lo_CZP,s942,s1019,lo_ODZ,s853 |
| s1038 | 80 | balance_lo | CFP | lo | 21071/125000 | s1026,lo_HDP,lo_FZP,s952,lo_CZP,lo_HDF,s934 |
| s1039 | 81 | balance_lo | OCF | lo | 61201/200000 | s988,lo_HFY,lo_CDF,lo_OHY,s942,lo_HCY,s737 |
| s1042 | 82 | balance_lo | OCP | lo | 112961/500000 | s968,lo_OHY,s949,lo_HCY,lo_OCQ,s910,s741 |
| s1043 | 85 | balance_lo | DYZ | lo | 102581/500000 | lo_YZQ,lo_CDF,s973,s990,s972,s1026,hi_CFQ |
| s1046 | 87 | balance_lo | OYZ | lo | 87757/500000 | s674,lo_CZP,s1043,s1042,lo_ODZ,s911,s953 |
| s1047 | 88 | balance_lo | OZQ | lo | 241167/1000000 | lo_ODZ,s968,s973,s1042,s945,lo_CZP,s953 |
| s1049 | 91 | balance_lo | CDZ | lo | 187591/1000000 | s932,s973,s955,lo_ODZ,lo_OCQ,s811,hi_OHQ |
| s1050 | 93 | balance_lo | ODR | lo | 146629/1000000 | s932,lo_DQR,lo_OCQ,s997,s940,lo_CDR,s657 |
| s1051 | 94 | balance_lo | OFZ | lo | 30627/100000 | s932,s971,s988,s906,s933,s1026,s241 |
| s1052 | 95 | balance_lo | OFP | lo | 223059/1000000 | s932,s1018,s988,lo_HFP,s933,s1038,s241 |
| s1056 | 96 | balance_lo | YPQ | lo | 174589/1000000 | s973,s910,s1024,lo_DYP,s717,s729,s934 |
| s1060 | 97 | balance_lo | DZP | lo | 174011/1000000 | s1049,s1056,lo_CZP,s972,s960,lo_YZQ,hi_CYQ |
| s1061 | 98 | balance_lo | OZP | lo | 87047/500000 | s932,s1060,s988,s654,s933,lo_CZP,s241 |
| s1063 | 100 | balance_lo | HZP | lo | 30179/250000 | s952,lo_FZP,lo_HDF,lo_CZP,s982,s1060,s723 |
| s1066 | 101 | balance_lo | OCY | lo | 17011/100000 | s932,lo_YZQ,lo_HCY,s1047,lo_OHY,s767,s941 |
| s1068 | 102 | linear | OHC | lo | 35611/100000 | lo_HCY,s1066,lo_OHY |
| s1070 | 103 | linear | HCQ | hi | 82989/100000 | hi_OCQ,s1068,hi_OHQ |
| s1072 | 105 | linear | OHD | lo | 836637/1000000 | s811,lo_ODZ,s937 |
| s1077 | 106 | linear | OHZ | lo | 406253/1000000 | s866,lo_OHY,s1046 |
| s1080 | 107 | linear | OHZ | hi | 507949/1000000 | s1024,hi_OHQ,s1047 |
| s1081 | 107 | linear | OZQ | hi | 342863/1000000 | s1024,hi_OHQ,s1077 |
| s1082 | 107 | linear | OHQ | lo | 14036/15625 | s1024,s1077,s1047 |
| s1083 | 107 | linear | HZQ | hi | 17629/50000 | hi_OHQ,s1077,s1047 |
| s1091 | 108 | linear | ODF | lo | 190429/250000 | s971,lo_ODZ,s1051 |
| s1096 | 109 | linear | ODY | lo | 118419/250000 | s1043,lo_ODZ,s1046 |
| s1099 | 110 | linear | ODP | lo | 88221/200000 | s1060,lo_ODZ,s1061 |
| s1101 | 111 | linear | ODQ | hi | 679643/1000000 | s870,lo_ODZ,s1081 |
| s1102 | 112 | linear | ODQ | lo | 45179/125000 | lo_DQR,s1050,s1021 |
| s1106 | 113 | linear | OYQ | lo | 509681/1000000 | s1046,s1047,lo_YZQ |
| s1110 | 114 | linear | HCD | lo | 190391/250000 | s1049,s1023,s811 |
| s1111 | 114 | linear | HDZ | hi | 526201/1000000 | s1049,s241,s1023 |
| s1116 | 116 | linear | HCQ | lo | 647743/1000000 | s767,s1023,s1024 |
| s1118 | 118 | linear | HDZ | lo | 387727/1000000 | s1060,lo_HDP,s1063 |
| s1122 | 119 | linear | HDQ | hi | 705097/1000000 | s870,s1111,s1024 |
| s1127 | 120 | linear | CDF | lo | 17923/25000 | s960,s1038,s1018 |
| s1131 | 121 | linear | CDY | lo | 520981/1000000 | s1049,s993,s1043 |
| s1133 | 122 | linear | CDP | lo | 227301/500000 | s1049,lo_CZP,s1060 |
| s1136 | 123 | linear | CDQ | lo | 292987/1000000 | lo_CDR,s1022,lo_DQR |
| s1144 | 124 | linear | DFZ | lo | 398031/1000000 | s1018,s1060,lo_FZP |
| s1149 | 125 | linear | DYQ | lo | 371341/1000000 | lo_DQR,s998,lo_YQR |
| s1150 | 126 | linear | DZQ | lo | 57333/200000 | lo_DQR,s999,lo_ZQR |
| s1153 | 127 | quad | HDQ | lo | 19571/50000 | s1083 |
| s1155 | 129 | support_z | OHP | lo | 58503/200000 | s1077,s908 |
| s1162 | 132 | linear | CDF | hi | 421759/500000 | s982 |
| s1177 | 137 | bary_lo | HDY | hi | 108331/250000 | hi_OHD,s957,s1096,lo_OHY,hi_OHD |
| s1181 | 138 | bary_lo | HYQ | hi | 198461/500000 | hi_OHD,s957,s1096,lo_OHY,hi_OHQ,s1153 |
| s1190 | 139 | bary_lo | DYQ | hi | 631229/1000000 | hi_OHD,s957,s1096,lo_OHY,s1101,s1122 |
| s1201 | 142 | bary_lo | HDZ | hi | 500747/1000000 | hi_OHD,s1118,lo_ODZ,s1077,hi_OHD |
| s1206 | 143 | bary_lo | CZQ | lo | 56459/250000 | hi_OHD,s1118,lo_ODZ,s1077,lo_OCQ,s1116,s1136 |
| s1223 | 147 | bary_hi | DPQ | lo | 20627/100000 | hi_OHD,lo_HDP,s1099,s1155,s1102,s1153 |
| s1232 | 148 | bary_hi | OYQ | hi | 608519/1000000 | s1080,s866,s1046,lo_OHY,hi_OHQ,s1081 |
| s1234 | 149 | bary_hi | HYQ | lo | 72381/250000 | s1080,s866,s1046,lo_OHY,s1082,s1024 |
| s1247 | 150 | bary_lo | OCY | lo | 190151/1000000 | hi_OHQ,s1234,s1106,lo_OHY,s1068,lo_OCQ |
| s1252 | 151 | bary_hi | CYQ | hi | 566289/1000000 | hi_OHQ,s1234,s1106,lo_OHY,hi_OCQ,s1070 |
| s1264 | 152 | bary_lo | OFZ | hi | 444427/1000000 | hi_ODF,s1144,s1051,lo_ODZ,hi_ODF |
| s1290 | 154 | bary_hi | HCZ | hi | 70719/250000 | s1232,lo_YZQ,s1047,s1046,s1068,lo_HCY,s1070 |
| s1291 | 155 | bary_hi | HDZ | lo | 422823/1000000 | s1232,lo_YZQ,s1047,s1046,s1072,s957,s1153 |
| s1293 | 156 | bary_hi | HZQ | lo | 252031/1000000 | s1232,lo_YZQ,s1047,s1046,s1082,s1234 |
| s1296 | 157 | bary_lo | DZP | lo | 178871/1000000 | s1232,lo_YZQ,s1047,s1046,s1099,lo_DYP,s1223 |
| s1300 | 160 | bary_hi | CYZ | lo | 130213/1000000 | s241,s1049,s1291,s1023,lo_HCY,s1131 |
| s1304 | 161 | bary_hi | HCP | hi | 179699/500000 | s241,s1133,lo_HDP,s909,s241 |
| s1313 | 163 | bary_hi | DPQ | lo | 226227/1000000 | s241,s1133,lo_HDP,s909,s1153,s1136 |
| s1325 | 164 | bary_lo | DPQ | hi | 461691/1000000 | s1177,lo_DYP,s910,lo_HDP,s1122,s1190 |
| s1328 | 165 | bary_lo | ZPQ | lo | 2963/15625 | s1177,lo_DYP,s910,lo_HDP,s1293,s1150,lo_YZQ |
| s1330 | 167 | bary_hi | CYP | lo | 40617/200000 | s1201,s1296,s1063,lo_HDP,lo_HCY,s1131,s1300 |
| s1350 | 172 | bary_hi | CDP | hi | 54393/100000 | s1162,s1018,s1038,s1133,s1162 |
| s1351 | 173 | bary_hi | CPQ | hi | 19101/31250 | s1162,s1018,s1038,s1133,hi_CDQ,hi_CFQ |
| s1353 | 174 | bary_hi | DFP | hi | 55087/250000 | s1162,s1018,s1038,s1133,s1162 |
| s1355 | 176 | bary_hi | OHZ | lo | 20323/50000 | s1350,s1296,lo_CZP,s1049,s1068,s1072,s1155 |
| s1356 | 177 | bary_hi | OFZ | lo | 171217/500000 | s1350,s1296,lo_CZP,s1049,s1039,s1091,s1052 |
| s1357 | 178 | bary_lo | HCZ | lo | 212029/1000000 | s1350,s1296,lo_CZP,s1049,s1110,s909 |
| s1359 | 179 | bary_lo | HYZ | lo | 148967/1000000 | s1350,s1296,lo_CZP,s1049,lo_HCY,s957,s910 |
| s1360 | 180 | bary_lo | HZP | hi | 158099/1000000 | s1350,s1296,lo_CZP,s1049,s1304,lo_HDP |
| s1362 | 181 | bary_hi | CFZ | lo | 180713/1000000 | s1350,s1296,lo_CZP,s1049,s1127,s1038 |
| s1363 | 182 | bary_hi | CYZ | lo | 39779/250000 | s1350,s1296,lo_CZP,s1049,s1131,s1330 |
| s1364 | 183 | bary_hi | DFZ | hi | 60547/125000 | s1350,s1296,lo_CZP,s1049,s1162,s1353 |
| s1366 | 184 | bary_lo | DZQ | hi | 184521/500000 | s1350,s1296,lo_CZP,s1049,hi_CDQ,s1325 |
| s1384 | 189 | bary_lo | DYR | lo | 39517/200000 | hi_CDQ,lo_DQR,s1022,lo_CDR,s1131,s1149 |
| s1385 | 190 | bary_lo | DZR | lo | 105013/1000000 | hi_CDQ,lo_DQR,s1022,lo_CDR,s1049,s1150 |
| s1399 | 192 | bary_lo | DZP | lo | 94909/500000 | s1252,lo_YZQ,s1206,s1363,s1133,lo_DYP,s1313 |
| s1400 | 194 | bary_hi | HFZ | lo | 28967/250000 | s1351,s1328,s1206,lo_CZP,s982,lo_HFP,s984 |
| s1401 | 195 | bary_hi | CDZ | hi | 1549/6250 | s1351,s1328,s1206,lo_CZP,s1350,s1136 |
| s1410 | 198 | bary_lo | HCP | lo | 143841/500000 | s1364,lo_FZP,s1399,s1018,s1110,s982,s1357 |
| s1413 | 200 | bary_lo | HZP | lo | 31647/250000 | s1364,lo_FZP,s1399,s1018,s1291,s1400 |
| s1414 | 201 | bary_hi | CDP | hi | 520437/1000000 | s1364,lo_FZP,s1399,s1018,s1162,s1401 |
| s1415 | 202 | bary_hi | CFP | lo | 186529/1000000 | s1364,lo_FZP,s1399,s1018,s1127,s1362 |
| s1436 | 205 | bary_lo | OQR | lo | 151857/1000000 | s1366,lo_ZQR,lo_DQR,s1385,s1102,s1047 |
| s1442 | 206 | bary_lo | CQR | lo | 26149/200000 | s1366,lo_ZQR,lo_DQR,s1385,s1136,s1206 |
| s1450 | 0 | sum | OHC | lo | 376151/1000000 | lo_HCY,s1247,lo_OHY |
| s1452 | 2 | sum | OHD | lo | 922283/1000000 | s1291,lo_ODZ,s1355 |
| s1453 | 2 | sub | HDZ | hi | 25027/50000 | hi_OHD,lo_ODZ,s1355 |
| s1455 | 2 | sub | OHZ | hi | 484177/1000000 | hi_OHD,s1291,lo_ODZ |
| s1456 | 3 | sum | OHZ | lo | 417481/1000000 | s1359,lo_OHY,s1046 |
| s1458 | 3 | sub | OYZ | hi | 24221/100000 | s1455,s1359,lo_OHY |
| s1464 | 8 | sum | ODQ | lo | 195743/500000 | lo_DQR,s1050,s1436 |
| s1466 | 9 | sub | FZQ | hi | 402779/1000000 | hi_OFQ,s1356,s1047 |
| s1472 | 11 | sum | HCD | lo | 208821/250000 | s1133,s1410,lo_HDP |
| s1480 | 16 | sum | CDF | lo | 772151/1000000 | s1133,s1415,s1018 |
| s1482 | 18 | sum | CDP | lo | 470409/1000000 | s1049,lo_CZP,s1399 |
| s1484 | 18 | sub | DZP | hi | 119923/500000 | s1414,s1049,lo_CZP |
| s1485 | 19 | sum | CDQ | lo | 63349/200000 | lo_CDR,s1442,lo_DQR |
| s1495 | 23 | sum | DYQ | lo | 76717/200000 | lo_DQR,s1384,lo_YQR |
| s1496 | 24 | sum | DZQ | lo | 291013/1000000 | lo_DQR,s1385,lo_ZQR |
| s1500 | 25 | sumlo | OCD | lo | 23303/100000 | lo_OCQ,s1452,s1464,s1450,hi_OHQ |
| s1508 | 26 | sumlo | OHC | lo | 377209/1000000 | s1472,lo_OHY,lo_HCY,s1452,s1177 |
| s1511 | 27 | diffhi | HCQ | hi | 823341/1000000 | s241,hi_OHQ,s1153,s1508,s1452 |
| s1520 | 31 | sumlo | HCF | lo | 49807/250000 | s1472,lo_HFY,lo_HCY,lo_HDF,s1177 |
| s1530 | 33 | sumlo | OCP | lo | 269549/1000000 | s1482,s1508,s1410,s1500,s241 |
| s1531 | 34 | sumlo | OCD | lo | 239463/1000000 | s1485,s1508,s1472,lo_OCQ,s1511 |
| s1533 | 35 | sumlo | OCZ | lo | 139949/1000000 | s1049,s1530,lo_CZP,s1531,s1414 |
| s1538 | 38 | diffhi | CFP | hi | 125371/500000 | s1162,s1304,s1482,s1520,s1472 |
| s1548 | 40 | sumlo | CFZ | lo | 102607/500000 | s1480,lo_CZP,s1049,s1415,s1414 |
| s1575 | 51 | sumlo | HFZ | lo | 150007/1000000 | s1548,lo_HFP,lo_FZP,s1520,s1538 |
| s1582 | 53 | sumlo | HDY | lo | 3701/10000 | s1043,lo_OHY,s1359,s1096,s1458 |
| s1598 | 55 | sumlo | DYZ | lo | 230677/1000000 | s1495,s1359,s1582,lo_YZQ,s1181 |
| s1615 | 56 | sumlo | OZP | lo | 199881/1000000 | lo_CZP,s1456,s1413,s1533,s1290 |
| s1618 | 57 | sumlo | HDZ | lo | 1137/2500 | s1598,s1456,s1359,lo_ODZ,s1458 |
| s1620 | 57 | diffhi | OHZ | hi | 116377/250000 | s1453,s1458,s1359,lo_ODZ,s1598 |
| s1622 | 58 | sumlo | OHZ | lo | 214051/500000 | s1618,s1615,s1413,lo_ODZ,s1484 |
| s1623 | 58 | diffhi | HDZ | hi | 249843/500000 | s1484,s1620,s1413,lo_ODZ,s1615 |
| s1626 | 59 | sumlo | OZQ | lo | 29623/100000 | s1496,s1622,s1293,lo_ODZ,s1623 |
| s1631 | 60 | sumlo | OFZ | lo | 110369/250000 | lo_FZP,s1622,s1575,s1615,s1360 |
| s1633 | 60 | diffhi | OHZ | hi | 216559/500000 | s1360,s1264,s1575,s1615,lo_FZP |
| s1637 | 61 | diffhi | HZQ | hi | 589/2000 | s1466,s1633,s1575,s1626,s1631 |
| s1641 | 62 | sumlo | HZQ | lo | 173283/500000 | s1359,s1626,s1622,lo_YZQ,s1458 |

## Conclusion

{"triangle":"HZQ","lower":"s1641","upper":"s1637"}
