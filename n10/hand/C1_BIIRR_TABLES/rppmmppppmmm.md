# Leaf rppmmppppmmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYZ":1,"DYP":-1,"QYZ":-1,"OFY":-1}

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
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 30 | plu | ["OHDZP","ODP",1] |
| 31 | plu | ["OHDPR","OPR",-1] |
| 32 | plu | ["YOHDZ","YOZ",1] |
| 33 | plu | ["YOHFZ","YFZ",-1] |
| 34 | plu | ["YOZQR","YZR",-1] |
| 35 | plu | ["YHDPQ","YPQ",-1] |
| 36 | plu | ["YHDPR","YPR",-1] |
| 37 | plu | ["ZOHFP","ZOF",-1] |
| 38 | plu | ["ZOCFP","ZCF",-1] |
| 39 | plu | ["POHFZ","POF",-1] |
| 40 | plu | ["POCFZ","PCF",-1] |
| 41 | plu | ["PHCFY","PFY",1] |
| 42 | plu | ["QOHYR","QHR",1] |
| 43 | plu | ["QOFYR","QFR",1] |
| 44 | plu | ["QOYZR","QZR",1] |
| 45 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 823/1000 | ["cost","YZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_ODQ | ODQ | lo | 279/1000 | ["cost","R"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","Y"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YR"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","R"] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","R"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 279/1000 | ["cost","R"] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
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
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHQ","HQR","OHR","OQR"] | ["fan","OHQ","R"] |
| 4 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 5 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 6 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 7 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 8 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 9 | ["fan","OFZ","FYZ","OFY","OYZ"] | ["fan","OFZ","Y"] |
| 10 | ["fan","OFQ","FYQ","OFY","OYQ"] | ["fan","OFQ","Y"] |
| 11 | ["fan","OFQ","FQR","OFR","OQR"] | ["fan","OFQ","R"] |
| 12 | ["fan","OFR","FYR","OFY","OYR"] | ["fan","OFR","Y"] |
| 13 | ["fan","OYQ","OQR","OYR","YQR"] | ["fan","OYQ","R"] |
| 14 | ["fan","OZQ","OQR","OZR","ZQR"] | ["fan","OZQ","R"] |
| 15 | ["fan","OPQ","OPR","OQR","PQR"] | ["fan","OPQ","R"] |
| 16 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 17 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 18 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 19 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 20 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 21 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 22 | ["fan","CFQ","CFR","CQR","FQR"] | ["fan","CFQ","R"] |
| 23 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 24 | ["fan","CZQ","CQR","CZR","ZQR"] | ["fan","CZQ","R"] |
| 25 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 26 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 27 | ["fan","DYQ","DYZ","DZQ","YZQ"] | ["fan","DYQ","Z"] |
| 28 | ["plu","ODF","OHY","ODY","OHF","OFY","OHD"] | ["plu","OHDFY"] |
| 29 | ["plu","OCY","ODF","OCD","OFY","OCF","ODY"] | ["plu","OCDFY"] |
| 30 | ["plu","OCP","OFQ","OCF","OPQ","OCQ","OFP"] | ["plu","OCFPQ"] |
| 31 | ["plu","OCR","OFQ","OCF","OQR","OCQ","OFR"] | ["plu","OCFQR"] |
| 32 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 33 | ["plu","CFQ","OCD","CDF","OCQ","CDQ","OCF"] | ["plu","CODFQ"] |
| 34 | ["plu","CFR","OCD","CDF","OCR","CDR","OCF"] | ["plu","CODFR"] |
| 35 | ["plu","CFQ","OCZ","CFZ","OCQ","CZQ","OCF"] | ["plu","COFZQ"] |
| 36 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 37 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 38 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 39 | ["plu","CDY","CFQ","CDF","CYQ","CDQ","CFY"] | ["plu","CDFYQ"] |
| 40 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 41 | ["plu","CDQ","CFR","CDF","CQR","CDR","CFQ"] | ["plu","CDFQR"] |
| 42 | ["plu","CDQ","CYR","CDR","CYQ","CDY","CQR"] | ["plu","CDYQR"] |
| 43 | ["plu","DFP","OHD","HDF","ODP","HDP","ODF"] | ["plu","DOHFP"] |
| 44 | ["plu","CDZ","ODF","CDF","ODZ","DFZ","OCD"] | ["plu","DOCFZ"] |
| 45 | ["plu","CDF","DZQ","CDQ","DFZ","CDZ","DFQ"] | ["plu","DCFZQ"] |
| 46 | ["plu","CDQ","DFR","CDF","DQR","CDR","DFQ"] | ["plu","DCFQR"] |
| 47 | ["plu","HFQ","ODF","DFQ","OHF","HDF","OFQ"] | ["plu","FOHDQ"] |
| 48 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 49 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 50 | ["plu","FYP","HFZ","FYZ","HFP","FZP","HFY"] | ["plu","FHYZP"] |
| 51 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 52 | ["plu","FYQ","OHY","HFY","OYQ","HYQ","OFY"] | ["plu","YOHFQ"] |
| 53 | ["plu","FYR","OHY","HFY","OYR","HYR","OFY"] | ["plu","YOHFR"] |
| 54 | ["plu","FYQ","OCY","CFY","OYQ","CYQ","OFY"] | ["plu","YOCFQ"] |
| 55 | ["plu","CDZ","OFZ","CFZ","ODZ","DFZ","OCZ"] | ["plu","ZOCDF"] |
| 56 | ["plu","DZQ","OYZ","DYZ","OZQ","ODZ","YZQ"] | ["plu","ZODYQ"] |
| 57 | ["plu","CFZ","DZP","CDZ","FZP","CZP","DFZ"] | ["plu","ZCDFP"] |
| 58 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 59 | ["plu","FYP","HZP","FZP","HYP","HFP","YZP"] | ["plu","PHFYZ"] |
| 60 | ["plu","CYQ","DQR","CDQ","YQR","CQR","DYQ"] | ["plu","QCDYR"] |
| 61 | ["plu","HQR","OYR","HYR","OQR","OHR","YQR"] | ["plu","ROHYQ"] |
| 62 | ["plu","FQR","OYR","FYR","OQR","OFR","YQR"] | ["plu","ROFYQ"] |
| 63 | ["plu","CFR","DQR","CDR","FQR","CQR","DFR"] | ["plu","RCDFQ"] |
| 64 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 65 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 66 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[1,"CZP","ODF"],[1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 67 | ["balance",[[1,"HCY","OFQ"],[1,"CYQ","OHF"],[-1,"HYQ","OCF"],[1,"HCQ","OFY"]]] | ["six","OFHCYQ"] |
| 68 | ["balance",[[1,"CDQ","OFR"],[-1,"DQR","OCF"],[-1,"CQR","ODF"],[-1,"CDR","OFQ"]]] | ["six","OFCDQR"] |
| 69 | ["balance",[[1,"HCF","OYQ"],[-1,"CFY","OHQ"],[1,"HFY","OCQ"],[1,"HCY","OFQ"]]] | ["six","OQHCFY"] |
| 70 | ["balance",[[1,"HCF","OZQ"],[1,"CFZ","OHQ"],[1,"HFZ","OCQ"],[-1,"HCZ","OFQ"]]] | ["six","OQHCFZ"] |
| 71 | ["balance",[[1,"HCZ","OPQ"],[-1,"CZP","OHQ"],[-1,"HZP","OCQ"],[-1,"HCP","OZQ"]]] | ["six","OQHCZP"] |
| 72 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 73 | ["balance",[[1,"CDF","OQR"],[1,"DFR","OCQ"],[-1,"CFR","ODQ"],[1,"CDR","OFQ"]]] | ["six","OQCDFR"] |
| 74 | ["balance",[[-1,"ODF","HCY"],[1,"DFY","OHC"],[-1,"OFY","HCD"],[-1,"ODY","HCF"]]] | ["six","HCODFY"] |
| 75 | ["balance",[[-1,"OFY","HCQ"],[1,"FYQ","OHC"],[-1,"OYQ","HCF"],[-1,"OFQ","HCY"]]] | ["six","HCOFYQ"] |
| 76 | ["balance",[[1,"OFZ","HDP"],[1,"FZP","OHD"],[1,"OZP","HDF"],[-1,"OFP","HDZ"]]] | ["six","HDOFZP"] |
| 77 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 78 | ["balance",[[1,"OCF","HYQ"],[-1,"CFQ","OHY"],[-1,"OFQ","HCY"],[-1,"OCQ","HFY"]]] | ["six","HYOCFQ"] |
| 79 | ["balance",[[-1,"ODF","HYP"],[1,"DFY","OHP"],[-1,"OFY","HDP"],[-1,"ODY","HFP"]]] | ["six","HPODFY"] |
| 80 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 81 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 82 | ["balance",[[-1,"ODY","CFZ"],[-1,"DYZ","OCF"],[1,"OYZ","CDF"],[-1,"ODZ","CFY"]]] | ["six","CFODYZ"] |
| 83 | ["balance",[[-1,"ODF","CYQ"],[-1,"DFQ","OCY"],[1,"OFQ","CDY"],[-1,"ODQ","CFY"]]] | ["six","CYODFQ"] |
| 84 | ["balance",[[-1,"OHD","CFZ"],[-1,"HDF","OCZ"],[1,"ODF","HCZ"],[-1,"OHF","CDZ"]]] | ["six","CZOHDF"] |
| 85 | ["balance",[[-1,"ODF","CQR"],[-1,"DFQ","OCR"],[-1,"OFQ","CDR"],[1,"ODQ","CFR"]]] | ["six","CRODFQ"] |
| 86 | ["balance",[[-1,"OHY","DFR"],[-1,"HYR","ODF"],[-1,"OYR","HDF"],[1,"OHR","DFY"]]] | ["six","DFOHYR"] |
| 87 | ["balance",[[1,"OCF","DQR"],[-1,"CFQ","ODR"],[1,"OFQ","CDR"],[1,"OCQ","DFR"]]] | ["six","DROCFQ"] |
| 88 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 89 | ["balance",[[1,"OCZ","FYQ"],[-1,"CZQ","OFY"],[-1,"OZQ","CFY"],[-1,"OCQ","FYZ"]]] | ["six","FYOCZQ"] |
| 90 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 91 | ["balance",[[-1,"OHD","FZP"],[-1,"HDP","OFZ"],[-1,"ODP","HFZ"],[1,"OHP","DFZ"]]] | ["six","FZOHDP"] |
| 92 | ["balance",[[-1,"HCD","FYZ"],[1,"CDY","HFZ"],[1,"HDY","CFZ"],[1,"HCY","DFZ"]]] | ["six","FZHCDY"] |
| 93 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 94 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 95 | ["balance",[[1,"OCD","FZP"],[-1,"CDF","OZP"],[1,"ODF","CZP"],[1,"OCF","DZP"]]] | ["six","ZPOCDF"] |
| 96 | ["balance",[[-1,"OCF","YQR"],[-1,"CFY","OQR"],[-1,"OFY","CQR"],[1,"OCY","FQR"]]] | ["six","QROCFY"] |
| 97 | ["balance",[[1,"OFZ","PQR"],[-1,"FZP","OQR"],[-1,"OZP","FQR"],[-1,"OFP","ZQR"]]] | ["six","QROFZP"] |
| 98 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 99 | ["balance",[[-1,"HCZ","PQR"],[1,"CZP","HQR"],[1,"HZP","CQR"],[1,"HCP","ZQR"]]] | ["six","QRHCZP"] |
| 100 | ["balance",[[-1,"CDF","YQR"],[-1,"DFY","CQR"],[-1,"CFY","DQR"],[1,"CDY","FQR"]]] | ["six","QRCDFY"] |
| 101 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 102 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 103 | ["linear",{"OHQ":1,"OQR":-1,"OHR":-1,"HQR":-1},"0"] | ["affine_quad","OHQR",-1] |
| 104 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 105 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 106 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 107 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 108 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 109 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 110 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 111 | ["linear",{"OFY":-1,"OYQ":-1,"OFQ":1,"FYQ":-1},"0"] | ["affine_quad","OFYQ",1] |
| 112 | ["linear",{"OFQ":1,"OQR":-1,"OFR":-1,"FQR":-1},"0"] | ["affine_quad","OFQR",-1] |
| 113 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 114 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 115 | ["linear",{"OPQ":1,"OQR":-1,"OPR":-1,"PQR":-1},"0"] | ["affine_quad","OPQR",-1] |
| 116 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 117 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 118 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 119 | ["linear",{"HDQ":-1,"HQR":-1,"HDR":1,"DQR":1},"0"] | ["affine_quad","HDQR",1] |
| 120 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 121 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 122 | ["linear",{"CFQ":1,"CQR":-1,"CFR":-1,"FQR":-1},"0"] | ["affine_quad","CFQR",-1] |
| 123 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 124 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 125 | ["linear",{"DYZ":-1,"DZQ":-1,"DYQ":1,"YZQ":-1},"0"] | ["affine_quad","DYZQ",-1] |
| 126 | ["quad","CFQ","DFQ","93/91"] | ["quad","CQDF","ZPR"] |
| 127 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 128 | ["quad","DFQ","FYQ","93/125"] | ["quad","DFYQ","ZP"] |
| 129 | ["quad","DFR","FYR","93/125"] | ["quad","DFYR","ZP"] |
| 130 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 131 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 132 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["CDF",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DF"] |
| 133 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 134 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["CFQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FQ"] |
| 135 | ["bary",["DFP",1],[["ODF",1],["HDF",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DF"] |
| 136 | ["bary",["FYP",1],[["OFY",-1],["HFY",-1],["DFY",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","FY"] |
| 137 | ["bary",["FZP",1],[["OFZ",-1],["HFZ",-1],["DFZ",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","FZ"] |
| 138 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 139 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["DFR",1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","DF"] |
| 140 | ["bary",["OYQ",1],[null,["OCQ",-1],["OFQ",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","OQ"] |
| 141 | ["bary",["CDY",1],[["OCD",1],null,["CDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","CD"] |
| 142 | ["bary",["CYQ",1],[["OCQ",1],null,["CFQ",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","CQ"] |
| 143 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DFQ",-1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","DQ"] |
| 144 | ["bary",["YZP",1],[["OZP",1],["CZP",1],["FZP",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","ZP"] |
| 145 | ["bary",["ODY",1],[null,null,["ODF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OD"] |
| 146 | ["bary",["HDY",-1],[["OHD",-1],null,["HDF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","HD"] |
| 147 | ["bary",["DYQ",-1],[["ODQ",-1],null,["DFQ",-1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","DQ"] |
| 148 | ["bary",["OFZ",-1],[null,["ODF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OF"] |
| 149 | ["bary",["OYZ",-1],[null,["ODY",-1],["OFY",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OY"] |
| 150 | ["bary",["HCZ",1],[["OHC",-1],["HCD",1],["HCF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","HC"] |
| 151 | ["bary",["HDZ",-1],[["OHD",-1],null,["HDF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","HD"] |
| 152 | ["bary",["CDZ",1],[["OCD",1],null,["CDF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CD"] |
| 153 | ["bary",["CFZ",-1],[["OCF",1],["CDF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CF"] |
| 154 | ["bary",["CZR",1],[["OCR",1],["CDR",1],["CFR",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CR"] |
| 155 | ["bary",["DFZ",1],[["ODF",1],null,null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","DF"] |
| 156 | ["bary",["OCY",1],[null,["OCF",1],["OCQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OC"] |
| 157 | ["bary",["OYQ",1],[null,["OFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OQ"] |
| 158 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 159 | ["bary",["CYQ",1],[["OCQ",1],["CFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","CQ"] |
| 160 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 161 | ["bary",["FYQ",-1],[["OFQ",-1],null,null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","FQ"] |
| 162 | ["bary",["CDY",1],[["OCD",1],["CDF",1],["CDR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","CD"] |
| 163 | ["bary",["OHR",-1],[null,["OHY",-1],["OHQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OH"] |
| 164 | ["bary",["OYR",-1],[null,null,["OYQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OY"] |
| 165 | ["bary",["HQR",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HQ"] |
| 166 | ["bary",["CFR",-1],[["OCF",1],["CFY",1],["CFQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","CF"] |
| 167 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 168 | ["bary",["FYR",1],[["OFY",-1],null,["FYQ",1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","FY"] |
| 169 | ["bary",["FQR",-1],[["OFQ",-1],["FYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","FQ"] |
| 170 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OC"] |
| 171 | ["bary",["OPQ",1],[["OHQ",1],["ODQ",1],["OYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OQ"] |
| 172 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","OC"] |
| 173 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DQ"] |
| 174 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 175 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 176 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 177 | ["bary",["CZQ",1],[null,["CDQ",1],["CYQ",1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","CQ"] |
| 178 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 179 | ["bary",["OFZ",-1],[["OCF",-1],["ODF",-1],["OFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OF"] |
| 180 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HF"] |
| 181 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 182 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 183 | ["bary",["OHR",-1],[["OHC",-1],["OHD",-1],["OHQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OH"] |
| 184 | ["bary",["OFR",-1],[["OCF",-1],["ODF",-1],["OFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OF"] |
| 185 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 186 | ["bary",["OZR",-1],[["OCZ",-1],["ODZ",-1],["OZQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OZ"] |
| 187 | ["bary",["OPR",-1],[["OCP",-1],["ODP",-1],["OPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OP"] |
| 188 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 189 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 190 | ["bary",["HYR",1],[["HCY",1],["HDY",1],["HYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HY"] |
| 191 | ["bary",["CFR",-1],[null,["CDF",-1],["CFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CF"] |
| 192 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 193 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 194 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 195 | ["bary",["FYR",1],[["CFY",1],["DFY",1],["FYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","FY"] |
| 196 | ["bary",["DQR",-1],[["CDQ",-1],["DYQ",-1],null],"CYQ",["YQR","CQR","CYR"]] | ["bary","CYQ","R","DQ"] |
| 197 | ["bary",["DFR",1],[["CDF",1],["DFZ",1],["DFQ",1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","DF"] |
| 198 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 199 | ["bary",["OFP",-1],[["ODF",-1],null,["OFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OF"] |
| 200 | ["bary",["OZP",1],[["ODZ",-1],["OFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OZ"] |
| 201 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 202 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 203 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 204 | ["bary",["PQR",-1],[["DQR",-1],["FQR",-1],["ZQR",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","QR"] |
| 205 | ["bary",["HDZ",-1],[null,["HDY",-1],["HDR",-1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","HD"] |
| 206 | ["bary",["DFZ",1],[null,["DFY",1],["DFR",1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","DF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 1 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s4 | 2 | sub | HDZ | hi | 157/250 | hi_OHD,lo_ODZ,lo_OHZ |
| s19 | 5 | sub | DFY | hi | 281729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s22 | 6 | sub | DFZ | hi | 281729/500000 | hi_ODF,lo_ODZ,lo_OFZ |
| s26 | 7 | sub | ODP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_OFP |
| s34 | 10 | sub | FYQ | hi | 30719/50000 | hi_OFQ,lo_OFY,lo_OYQ |
| s55 | 19 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s76 | 28 | sumlo | OHY | lo | 109557/1000000 | lo_ODY,lo_OHF,lo_OFY,lo_OHD,hi_ODF |
| s82 | 29 | sumlo | OCY | lo | 102461/1000000 | lo_OCD,lo_OFY,lo_OCF,lo_ODY,hi_ODF |
| s94 | 32 | sumlo | HCF | lo | 58273/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s100 | 35 | sumlo | OCZ | lo | 13221/125000 | lo_CFZ,lo_OCQ,lo_CZQ,lo_OCF,hi_CFQ |
| s101 | 36 | sumlo | CFY | lo | 99643/1000000 | lo_CDF,lo_HCY,lo_CDY,s94,hi_HCD |
| s102 | 37 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s104 | 38 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s102,lo_CQR,lo_HCD,hi_CDQ |
| s105 | 39 | sumlo | CFQ | lo | 923/3125 | lo_CDF,lo_CYQ,lo_CDQ,s101,hi_CDY |
| s106 | 40 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s55 |
| s108 | 41 | sumlo | CFR | lo | 3423/15625 | lo_CDF,lo_CQR,lo_CDR,s105,hi_CDQ |
| s113 | 43 | sumlo | DFP | lo | 51243/500000 | lo_HDF,lo_ODP,lo_HDP,lo_ODF,hi_OHD |
| s116 | 44 | sumlo | CDZ | lo | 126743/1000000 | lo_CDF,lo_ODZ,lo_DFZ,lo_OCD,hi_ODF |
| s121 | 46 | sumlo | DFR | lo | 21783/125000 | lo_CDF,lo_DQR,lo_CDR,lo_DFQ,hi_CDQ |
| s131 | 48 | sumlo | OFP | lo | 23323/125000 | s113,lo_OFZ,lo_FZP,lo_ODF,s22 |
| s133 | 49 | sumlo | HCF | lo | 8187/62500 | lo_CDF,lo_HFY,s101,lo_HDF,s19 |
| s135 | 51 | sumlo | CFP | lo | 16683/125000 | lo_CDF,lo_FZP,s106,s113,s22 |
| s141 | 64 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s150 | 65 | balance_lo | CFY | lo | 32773/250000 | s133,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s159 | 66 | balance_lo | CFZ | lo | 71357/500000 | lo_FZP,lo_OCD,lo_CZP,lo_ODF,s135,lo_ODZ,s26 |
| s161 | 67 | balance_lo | HYQ | lo | 185397/1000000 | lo_HCY,lo_OFQ,lo_CYQ,lo_OHF,s102,lo_OFY,hi_OCF |
| s174 | 74 | balance_lo | DFY | lo | 17483/62500 | lo_ODF,lo_HCY,lo_OFY,lo_HCD,lo_ODY,s133,hi_OHC |
| s175 | 74 | balance_lo | OHC | lo | 63049/200000 | lo_ODF,lo_HCY,lo_OFY,lo_HCD,lo_ODY,s133,s19 |
| s179 | 77 | balance_lo | CFP | lo | 1721/12500 | s159,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s4 |
| s191 | 80 | balance_lo | OYR | lo | 166431/1000000 | lo_OYQ,lo_CDR,lo_YQR,lo_OCD,lo_OQR,lo_CDY,hi_CDQ |
| s192 | 81 | balance_lo | OZR | lo | 132717/1000000 | lo_OZQ,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,s116,hi_CDQ |
| s195 | 83 | balance_lo | CDY | lo | 279527/1000000 | lo_ODF,lo_CYQ,lo_DFQ,s82,lo_ODQ,s150,hi_OFQ |
| s196 | 84 | balance_lo | HCZ | lo | 2323/15625 | lo_OHD,s159,lo_HDF,s100,lo_OHF,s116,hi_ODF |
| s199 | 87 | balance_lo | ODR | lo | 65239/500000 | lo_OCF,lo_DQR,lo_OFQ,lo_CDR,lo_OCQ,s121,hi_CFQ |
| s201 | 89 | balance_lo | OCZ | lo | 115841/1000000 | lo_CZQ,lo_OFY,lo_OZQ,s150,lo_OCQ,lo_FYZ,s34 |
| s203 | 91 | balance_lo | OHP | lo | 227937/1000000 | lo_OHD,lo_FZP,lo_HDP,lo_OFZ,lo_ODP,lo_HFZ,s22 |
| s204 | 92 | balance_lo | FYZ | lo | 23551/250000 | s195,lo_HFZ,lo_HDY,s159,lo_HCY,lo_DFZ,hi_HCD |
| s211 | 93 | balance_lo | OZP | lo | 127163/1000000 | s175,lo_DZP,lo_OCD,lo_HZP,lo_OHD,lo_CZP,hi_HCD |
| s212 | 94 | balance_lo | HZP | lo | 103707/1000000 | lo_OHD,lo_FZP,lo_HDF,s211,lo_OHF,lo_DZP,hi_ODF |
| s213 | 95 | balance_lo | OZP | lo | 13543/100000 | lo_OCD,lo_FZP,lo_ODF,lo_CZP,lo_OCF,lo_DZP,hi_CDF |
| s216 | 98 | balance_lo | HQR | lo | 1653/12500 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,lo_DQR,hi_CDY |
| s217 | 100 | balance_lo | FQR | lo | 4283/31250 | lo_CDF,lo_YQR,s174,lo_CQR,s150,lo_DQR,hi_CDY |
| s228 | 104 | linear | OCF | lo | 326553/1000000 | s150,s82,lo_OFY |
| s236 | 108 | linear | ODP | lo | 32143/100000 | lo_DZP,lo_ODZ,s213 |
| s237 | 109 | linear | ODQ | lo | 158239/500000 | lo_DQR,s199,lo_OQR |
| s238 | 110 | linear | OFZ | lo | 70051/250000 | s204,lo_OFY,lo_OYZ |
| s243 | 113 | linear | OYQ | lo | 352431/1000000 | lo_OQR,s191,lo_YQR |
| s245 | 114 | linear | OZQ | lo | 318717/1000000 | lo_OQR,s192,lo_ZQR |
| s250 | 117 | linear | HCQ | lo | 88753/200000 | lo_CQR,s104,s216 |
| s262 | 122 | linear | CFQ | lo | 56141/125000 | s108,lo_CQR,s217 |
| s264 | 123 | linear | CYQ | lo | 166923/500000 | lo_CQR,s141,lo_YQR |
| s270 | 124 | linear | DFZ | lo | 144243/500000 | s113,lo_DZP,lo_FZP |
| s275 | 126 | quad | DFQ | lo | 204251/1000000 | hi_CFQ |
| s277 | 127 | quad | CDP | lo | 81/250 | hi_CDQ |
| s279 | 130 | linear | HCD | hi | 907/1000 | lo_HDF |
| s280 | 131 | linear | HCF | hi | 153/500 | lo_CDF |
| s281 | 131 | linear | CDF | hi | 54313/62500 | s133 |
| s286 | 132 | bary_lo | DFY | lo | 75901/250000 | hi_OHC,lo_HCY,s82,s76,lo_ODF,lo_HDF,lo_CDF |
| s288 | 133 | bary_hi | FYP | lo | 57207/500000 | hi_OHC,lo_HCY,s82,s76,s131,lo_HFP,s179 |
| s289 | 134 | bary_hi | FYQ | lo | 242463/1000000 | hi_OHC,lo_HCY,s82,s76,lo_OFQ,lo_HFQ,s262 |
| s343 | 135 | bary_lo | DFP | lo | 106431/1000000 | hi_OHD,lo_HDP,s236,s203,lo_ODF,lo_HDF |
| s354 | 138 | bary_lo | OCY | lo | 12129/100000 | hi_OHQ,s161,s243,s76,s175,lo_OCQ |
| s373 | 140 | bary_hi | OYQ | hi | 124933/200000 | hi_OCF,s150,lo_OFY,s354,lo_OCQ,hi_OFQ |
| s375 | 141 | bary_hi | CDY | hi | 136247/200000 | hi_OCF,s150,lo_OFY,s354,hi_OCD,s281 |
| s377 | 142 | bary_hi | CYQ | hi | 11351/20000 | hi_OCF,s150,lo_OFY,s354,hi_OCQ,hi_CFQ |
| s380 | 145 | bary_hi | ODY | hi | 269427/500000 | hi_ODF,s286,lo_OFY,lo_ODY,hi_ODF |
| s383 | 146 | bary_lo | HDY | hi | 574597/1000000 | hi_ODF,s286,lo_OFY,lo_ODY,hi_OHD,lo_HDF |
| s391 | 147 | bary_lo | DYQ | hi | 668137/1000000 | hi_ODF,s286,lo_OFY,lo_ODY,hi_ODQ,hi_DFQ |
| s400 | 149 | bary_lo | OYZ | hi | 309861/1000000 | hi_ODF,s270,s238,lo_ODZ,s380,lo_OFY |
| s407 | 152 | bary_lo | CDZ | lo | 128707/1000000 | hi_ODF,s270,s238,lo_ODZ,lo_OCD,lo_CDF |
| s408 | 153 | bary_lo | CFZ | hi | 103479/250000 | hi_ODF,s270,s238,lo_ODZ,s228,s281 |
| s411 | 154 | bary_lo | CZR | lo | 105533/1000000 | hi_ODF,s270,s238,lo_ODZ,lo_OCR,lo_CDR,s108 |
| s412 | 155 | bary_hi | DFZ | hi | 281127/500000 | hi_ODF,s270,s238,lo_ODZ,hi_ODF |
| s453 | 156 | bary_lo | OCY | lo | 25089/200000 | hi_OFQ,s289,s243,lo_OFY,s228,lo_OCQ |
| s458 | 161 | bary_lo | FYQ | hi | 540949/1000000 | hi_OFQ,s289,s243,lo_OFY,hi_OFQ |
| s481 | 166 | bary_lo | CFR | hi | 506107/1000000 | s373,lo_YQR,lo_OQR,s191,s228,s150,hi_CFQ |
| s489 | 168 | bary_hi | FYR | hi | 366031/1000000 | s373,lo_YQR,lo_OQR,s191,lo_OFY,s458 |
| s490 | 169 | bary_hi | FQR | lo | 6971/50000 | s373,lo_YQR,lo_OQR,s191,lo_OFQ,s289 |
| s512 | 170 | bary_lo | OCP | lo | 167199/1000000 | s383,lo_DYP,lo_HYP,lo_HDP,s175,lo_OCD,s453 |
| s513 | 171 | bary_lo | OPQ | lo | 383399/1000000 | s383,lo_DYP,lo_HYP,lo_HDP,lo_OHQ,s237,s243 |
| s529 | 173 | bary_hi | DZQ | lo | 122871/1000000 | s281,s270,s159,s407,lo_CDQ,s275 |
| s533 | 174 | bary_hi | OPQ | hi | 204601/250000 | s281,s343,s179,s277,lo_OCQ,hi_ODQ,hi_OFQ |
| s536 | 175 | bary_lo | HYP | lo | 30617/250000 | s281,s343,s179,s277,lo_HCY,lo_HDY,lo_HFY |
| s537 | 176 | bary_hi | CDP | hi | 624897/1000000 | s281,s343,s179,s277,s281 |
| s549 | 177 | bary_hi | CZQ | hi | 469927/1000000 | s375,lo_DYZ,lo_CYZ,s407,hi_CDQ,s377 |
| s551 | 179 | bary_hi | OFZ | lo | 302129/1000000 | s537,lo_DZP,lo_CZP,s407,s228,lo_ODF,s131 |
| s552 | 180 | bary_hi | HFZ | lo | 49327/500000 | s537,lo_DZP,lo_CZP,s407,s133,lo_HDF,lo_HFP |
| s553 | 181 | bary_lo | HYZ | lo | 507/4000 | s537,lo_DZP,lo_CZP,s407,lo_HCY,lo_HDY,s536 |
| s556 | 182 | bary_lo | FYZ | lo | 36263/250000 | s537,lo_DZP,lo_CZP,s407,s150,s286,s288 |
| s557 | 183 | bary_hi | OHR | lo | 511543/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s175,lo_OHD,lo_OHQ |
| s558 | 184 | bary_hi | OFR | lo | 517843/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s228,lo_ODF,lo_OFQ |
| s559 | 185 | bary_hi | OYR | lo | 209707/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s453,lo_ODY,s243 |
| s560 | 186 | bary_hi | OZR | lo | 148037/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s201,lo_ODZ,s245 |
| s561 | 187 | bary_hi | OPR | lo | 249223/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s512,s236,s513 |
| s562 | 188 | bary_lo | HCR | lo | 251933/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s250 |
| s563 | 189 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s279,hi_HDQ |
| s568 | 191 | bary_hi | CFR | lo | 253121/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s262 |
| s570 | 193 | bary_hi | DFR | hi | 320049/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s281,hi_DFQ |
| s571 | 194 | bary_hi | DYR | hi | 52749/100000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s375,s391 |
| s574 | 195 | bary_lo | FYR | lo | 193951/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s150,s286,s289 |
| s587 | 197 | bary_lo | DFR | lo | 79461/250000 | s549,lo_ZQR,lo_CQR,s411,lo_CDF,s270,s275 |
| s600 | 199 | bary_hi | OFP | lo | 193319/1000000 | s412,lo_FZP,lo_DZP,s343,lo_ODF,s551 |
| s602 | 201 | bary_lo | HCP | lo | 227463/1000000 | s412,lo_FZP,lo_DZP,s343,lo_HCD,s133,s196 |
| s603 | 202 | bary_lo | HYP | lo | 65077/500000 | s412,lo_FZP,lo_DZP,s343,lo_HDY,lo_HFY,s553 |
| s611 | 204 | bary_hi | PQR | lo | 50339/500000 | s412,lo_FZP,lo_DZP,s343,lo_DQR,s490,lo_ZQR |
| s618 | 205 | bary_lo | HDZ | hi | 539539/1000000 | s571,lo_YZR,lo_DZR,lo_DYZ,s383,s563 |
| s620 | 206 | bary_hi | DFZ | hi | 513733/1000000 | s571,lo_YZR,lo_DZR,lo_DYZ,s19,s570 |
| s623 | 0 | sum | OHC | lo | 164001/500000 | lo_HCY,s453,s76 |
| s624 | 3 | sum | OHQ | lo | 736783/1000000 | s216,s557,lo_OQR |
| s626 | 4 | sum | OCF | lo | 349537/1000000 | s150,s453,lo_OFY |
| s627 | 7 | sub | ODP | hi | 158927/250000 | hi_ODF,s343,s600 |
| s628 | 9 | sum | OFZ | lo | 82763/250000 | s556,lo_OFY,lo_OYZ |
| s630 | 11 | sum | OFQ | lo | 750263/1000000 | s490,s558,lo_OQR |
| s632 | 13 | sum | OYQ | lo | 395707/1000000 | lo_OQR,s559,lo_YQR |
| s634 | 14 | sum | OZQ | lo | 334037/1000000 | lo_OQR,s560,lo_ZQR |
| s635 | 15 | sum | OPQ | lo | 442901/1000000 | s561,lo_OQR,s611 |
| s636 | 16 | sub | CDP | hi | 586537/1000000 | s279,s602,lo_HDP |
| s637 | 17 | sum | HCQ | lo | 477173/1000000 | lo_CQR,s562,s216 |
| s638 | 18 | sum | HDY | lo | 158077/500000 | lo_DYP,lo_HDP,s603 |
| s642 | 22 | sum | CFQ | lo | 485541/1000000 | s568,lo_CQR,s490 |
| s643 | 24 | sum | CZQ | lo | 291533/1000000 | lo_CQR,s411,lo_ZQR |
| s646 | 25 | sum | DFY | lo | 62769/200000 | s343,lo_DYP,s288 |
| s647 | 26 | sum | DFZ | lo | 292431/1000000 | s343,lo_DZP,lo_FZP |
| s650 | 27 | sum | DYQ | lo | 308871/1000000 | lo_DYZ,s529,lo_YZQ |
| s659 | 33 | sumlo | OCD | lo | 99093/500000 | lo_CDF,lo_OCQ,lo_CDQ,s626,hi_CFQ |
| s661 | 38 | sumlo | HCR | lo | 259331/1000000 | lo_CDR,s637,lo_CQR,lo_HCD,hi_CDQ |
| s664 | 41 | sumlo | CFR | lo | 4081/15625 | lo_CDF,lo_CQR,lo_CDR,s642,hi_CDQ |
| s670 | 44 | sumlo | CDZ | lo | 130949/1000000 | lo_CDF,lo_ODZ,s647,s659,hi_ODF |
| s674 | 47 | sumlo | HFQ | lo | 47447/500000 | s275,lo_OHF,lo_HDF,s630,hi_ODF |
| s676 | 49 | sumlo | HCF | lo | 136183/1000000 | lo_CDF,lo_HFY,s150,lo_HDF,s19 |
| s678 | 51 | sumlo | CFP | lo | 155199/1000000 | lo_CDF,lo_FZP,s159,s343,s620 |
| s679 | 54 | sumlo | OCY | lo | 153289/1000000 | s150,s632,s264,lo_OFY,s458 |
| s683 | 56 | sumlo | DZQ | lo | 16021/125000 | lo_DYZ,s634,lo_ODZ,lo_YZQ,s400 |
| s684 | 57 | sumlo | DZP | lo | 47563/500000 | s670,lo_FZP,lo_CZP,s647,s408 |
| s688 | 60 | sumlo | DQR | lo | 96329/1000000 | lo_CDQ,lo_YQR,lo_CQR,s650,s377 |
| s692 | 65 | balance_lo | CFY | lo | 26593/200000 | s676,lo_ODY,lo_HFY,s659,lo_HCY,lo_ODF,hi_OHD |
| s694 | 66 | balance_lo | CFZ | lo | 172097/1000000 | lo_FZP,s659,lo_CZP,lo_ODF,s678,lo_ODZ,s627 |
| s695 | 67 | balance_lo | HYQ | lo | 11433/50000 | lo_HCY,s630,s264,lo_OHF,s637,lo_OFY,hi_OCF |
| s699 | 71 | balance_lo | HCZ | lo | 3767/20000 | lo_CZP,s624,s212,lo_OCQ,s602,s634,s533 |
| s701 | 73 | balance_lo | ODQ | lo | 323797/1000000 | lo_CDF,lo_OQR,s587,lo_OCQ,lo_CDR,s630,s481 |
| s705 | 76 | balance_lo | OFP | lo | 222267/1000000 | s628,lo_HDP,lo_FZP,lo_OHD,s213,lo_HDF,s618 |
| s706 | 77 | balance_lo | CFP | lo | 82659/500000 | s694,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s618 |
| s709 | 82 | balance_lo | OYZ | lo | 106889/1000000 | lo_ODY,s694,lo_DYZ,s626,lo_ODZ,s692,s281 |
| s710 | 83 | balance_lo | CDY | lo | 353939/1000000 | lo_ODF,s264,s275,s679,s701,s692,hi_OFQ |
| s713 | 87 | balance_lo | ODR | lo | 162651/1000000 | s626,s688,s630,lo_CDR,lo_OCQ,s587,hi_CFQ |
| s714 | 89 | balance_lo | OCZ | lo | 157163/1000000 | s643,lo_OFY,s634,s692,lo_OCQ,s556,s458 |
| s716 | 91 | balance_lo | OHP | lo | 3383/12500 | lo_OHD,lo_FZP,lo_HDP,s628,s236,s552,s620 |
| s720 | 93 | balance_lo | OZP | lo | 17681/125000 | s623,s684,s659,s212,lo_OHD,lo_CZP,s279 |
| s721 | 94 | balance_lo | HZP | lo | 105339/1000000 | lo_OHD,lo_FZP,lo_HDF,s720,lo_OHF,s684,hi_ODF |
| s722 | 95 | balance_lo | OZP | lo | 147547/1000000 | s659,lo_FZP,lo_ODF,lo_CZP,s626,s684,s281 |
| s723 | 98 | balance_lo | HQR | lo | 151053/1000000 | lo_HCD,lo_YQR,s638,lo_CQR,lo_HCY,s688,s375 |
| s724 | 100 | balance_lo | FQR | lo | 156389/1000000 | lo_CDF,lo_YQR,s646,lo_CQR,s692,s688,s375 |
| s725 | 101 | linear | OHC | lo | 177923/500000 | lo_HCY,s679,s76 |
| s732 | 103 | linear | OHQ | lo | 188899/250000 | s723,s557,lo_OQR |
| s734 | 104 | linear | OCF | lo | 189627/500000 | s692,s679,lo_OFY |
| s736 | 105 | linear | CFQ | hi | 396563/500000 | s734,hi_OCQ,hi_OFQ |
| s742 | 107 | linear | ODY | lo | 292889/1000000 | lo_DYZ,lo_ODZ,s709 |
| s743 | 108 | linear | ODP | lo | 335673/1000000 | s684,lo_ODZ,s722 |
| s744 | 109 | linear | ODQ | lo | 17599/50000 | s688,s713,lo_OQR |
| s746 | 110 | linear | OFZ | lo | 344941/1000000 | s556,lo_OFY,s709 |
| s748 | 111 | linear | FYQ | hi | 497673/1000000 | hi_OFQ,lo_OFY,s632 |
| s749 | 112 | linear | OFQ | lo | 11988/15625 | s724,s558,lo_OQR |
| s750 | 112 | linear | OFR | hi | 736991/1000000 | s724,hi_OFQ,lo_OQR |
| s751 | 117 | linear | HCQ | lo | 62923/125000 | lo_CQR,s661,s723 |
| s754 | 119 | linear | HDQ | hi | 379937/500000 | hi_DQR,s563,s723 |
| s758 | 121 | linear | CDQ | lo | 282329/1000000 | lo_CDR,lo_CQR,s688 |
| s760 | 122 | linear | CFQ | lo | 510573/1000000 | s664,lo_CQR,s724 |
| s762 | 124 | linear | DFZ | lo | 294557/1000000 | s343,s684,lo_FZP |
| s765 | 125 | linear | DYQ | lo | 39271/125000 | lo_DYZ,s683,lo_YZQ |
| s769 | 128 | quad | DFQ | lo | 246327/1000000 | s748 |
| s770 | 129 | quad | DFR | lo | 377969/1000000 | s489 |
| s772 | 131 | linear | CDF | hi | 863817/1000000 | s676 |
| s774 | 133 | bary_hi | FYP | lo | 124409/1000000 | hi_OHC,lo_HCY,s679,s76,s705,lo_HFP,s706 |
| s775 | 134 | bary_hi | FYQ | lo | 265079/1000000 | hi_OHC,lo_HCY,s679,s76,s749,s674,s760 |
| s794 | 135 | bary_lo | DFP | lo | 26939/250000 | hi_OHD,lo_HDP,s743,s716,lo_ODF,lo_HDF |
| s806 | 140 | bary_hi | OYQ | hi | 155439/250000 | hi_OCF,s692,lo_OFY,s679,lo_OCQ,hi_OFQ |
| s808 | 142 | bary_hi | CYQ | hi | 6873/12500 | hi_OCF,s692,lo_OFY,s679,hi_OCQ,s736 |
| s829 | 150 | bary_hi | HCZ | hi | 224803/500000 | hi_ODF,s762,s746,lo_ODZ,s725,s279,s280 |
| s830 | 151 | bary_lo | HDZ | hi | 261299/500000 | hi_ODF,s762,s746,lo_ODZ,hi_OHD,lo_HDF |
| s832 | 152 | bary_lo | CDZ | lo | 131399/1000000 | hi_ODF,s762,s746,lo_ODZ,s659,lo_CDF |
| s833 | 153 | bary_lo | CFZ | hi | 193261/500000 | hi_ODF,s762,s746,lo_ODZ,s734,s772 |
| s835 | 154 | bary_lo | CZR | lo | 2743/25000 | hi_ODF,s762,s746,lo_ODZ,lo_OCR,lo_CDR,s664 |
| s836 | 155 | bary_hi | DFZ | hi | 497517/1000000 | hi_ODF,s762,s746,lo_ODZ,hi_ODF |
| s865 | 156 | bary_lo | OCY | lo | 80457/500000 | hi_OFQ,s775,s632,lo_OFY,s734,lo_OCQ |
| s867 | 158 | bary_lo | HDY | hi | 1684/3125 | hi_OFQ,s775,s632,lo_OFY,hi_OHD,lo_HDF,s754 |
| s873 | 160 | bary_hi | DFY | hi | 269189/500000 | hi_OFQ,s775,s632,lo_OFY,hi_ODF,hi_DFQ |
| s881 | 162 | bary_hi | CDY | hi | 16683/25000 | s750,s574,s559,lo_OFY,hi_OCD,s772,lo_CDR |
| s886 | 164 | bary_lo | OYR | hi | 108939/250000 | s806,lo_YQR,lo_OQR,s559,s806 |
| s890 | 166 | bary_lo | CFR | hi | 95849/200000 | s806,lo_YQR,lo_OQR,s559,s734,s692,s736 |
| s894 | 167 | bary_hi | DQR | lo | 99639/1000000 | s806,lo_YQR,lo_OQR,s559,s744,s765 |
| s895 | 168 | bary_hi | FYR | hi | 334883/1000000 | s806,lo_YQR,lo_OQR,s559,lo_OFY,s748 |
| s904 | 170 | bary_lo | OCP | lo | 203557/1000000 | s867,lo_DYP,s603,lo_HDP,s725,s659,s865 |
| s920 | 174 | bary_hi | OPQ | hi | 808513/1000000 | s772,s794,s706,s277,lo_OCQ,hi_ODQ,hi_OFQ |
| s923 | 175 | bary_lo | HYP | lo | 135707/1000000 | s772,s794,s706,s277,lo_HCY,s638,lo_HFY |
| s932 | 178 | bary_hi | OHZ | lo | 372039/1000000 | s636,s684,lo_CZP,s832,s725,lo_OHD,s716 |
| s934 | 181 | bary_lo | HYZ | lo | 2759/20000 | s636,s684,lo_CZP,s832,lo_HCY,s638,s923 |
| s936 | 182 | bary_lo | FYZ | lo | 155833/1000000 | s636,s684,lo_CZP,s832,s692,s646,s774 |
| s937 | 183 | bary_hi | OHR | lo | 547803/1000000 | hi_CDQ,s894,lo_CQR,lo_CDR,s725,lo_OHD,s732 |
| s938 | 184 | bary_hi | OFR | lo | 563421/1000000 | hi_CDQ,s894,lo_CQR,lo_CDR,s734,lo_ODF,s749 |
| s939 | 185 | bary_hi | OYR | lo | 121063/500000 | hi_CDQ,s894,lo_CQR,lo_CDR,s865,s742,s632 |
| s940 | 186 | bary_hi | OZR | lo | 80797/500000 | hi_CDQ,s894,lo_CQR,lo_CDR,s714,lo_ODZ,s634 |
| s941 | 187 | bary_hi | OPR | lo | 17863/62500 | hi_CDQ,s894,lo_CQR,lo_CDR,s904,s743,s635 |
| s942 | 188 | bary_lo | HCR | lo | 53027/200000 | hi_CDQ,s894,lo_CQR,lo_CDR,lo_HCD,s751 |
| s943 | 189 | bary_lo | HDR | hi | 673587/1000000 | hi_CDQ,s894,lo_CQR,lo_CDR,s279,s754 |
| s946 | 191 | bary_hi | CFR | lo | 133363/500000 | hi_CDQ,s894,lo_CQR,lo_CDR,lo_CDF,s760 |
| s947 | 192 | bary_hi | CYR | lo | 30459/200000 | hi_CDQ,s894,lo_CQR,lo_CDR,s710,s264 |
| s953 | 195 | bary_lo | FYR | lo | 20227/100000 | hi_CDQ,s894,lo_CQR,lo_CDR,s692,s646,s775 |
| s957 | 196 | bary_hi | DQR | lo | 100891/1000000 | s808,lo_YQR,lo_CQR,s947,s758,s765 |
| s969 | 198 | bary_hi | OHP | lo | 144947/500000 | s836,lo_FZP,s684,s794,lo_OHD,lo_OHF,s932 |
| s971 | 199 | bary_hi | OFP | lo | 228551/1000000 | s836,lo_FZP,s684,s794,lo_ODF,s746 |
| s973 | 201 | bary_lo | HCP | lo | 251753/1000000 | s836,lo_FZP,s684,s794,lo_HCD,s676,s699 |
| s974 | 202 | bary_lo | HYP | lo | 144449/1000000 | s836,lo_FZP,s684,s794,s638,lo_HFY,s934 |
| s975 | 203 | bary_hi | CFP | lo | 83501/500000 | s836,lo_FZP,s684,s794,lo_CDF,s694 |
| s988 | 3 | sum | OHQ | lo | 49491/62500 | s723,s937,lo_OQR |
| s991 | 4 | sum | OCF | lo | 386879/1000000 | s692,s865,lo_OFY |
| s992 | 7 | sub | ODP | hi | 599151/1000000 | hi_ODF,s794,s971 |
| s993 | 8 | sum | ODQ | lo | 178271/500000 | s957,s713,lo_OQR |
| s994 | 9 | sum | OFZ | lo | 177861/500000 | s936,lo_OFY,s709 |
| s997 | 11 | sum | OFQ | lo | 81281/100000 | s724,s938,lo_OQR |
| s1000 | 13 | sum | OYQ | lo | 214063/500000 | lo_OQR,s939,lo_YQR |
| s1001 | 14 | sum | OZQ | lo | 173797/500000 | lo_OQR,s940,lo_ZQR |
| s1004 | 16 | sub | CDP | hi | 562247/1000000 | s279,s973,lo_HDP |
| s1005 | 17 | sum | HCQ | lo | 127297/250000 | lo_CQR,s942,s723 |
| s1006 | 18 | sum | HDY | lo | 330449/1000000 | lo_DYP,lo_HDP,s974 |
| s1009 | 21 | sum | CDQ | lo | 286891/1000000 | lo_CDR,lo_CQR,s957 |
| s1011 | 22 | sum | CFQ | lo | 103223/200000 | s946,lo_CQR,s724 |
| s1012 | 23 | sum | CYQ | lo | 67659/200000 | lo_CQR,s947,lo_YQR |
| s1013 | 24 | sum | CZQ | lo | 7393/25000 | lo_CQR,s835,lo_ZQR |
| s1015 | 25 | sum | DFY | lo | 65033/200000 | s794,lo_DYP,s774 |
| s1016 | 26 | sum | DFZ | lo | 147941/500000 | s794,s684,lo_FZP |
| s1028 | 33 | sumlo | OCD | lo | 221319/1000000 | lo_CDF,lo_OCQ,s1009,s991,s736 |
| s1029 | 38 | sumlo | HCR | lo | 13321/50000 | lo_CDR,s1005,lo_CQR,lo_HCD,hi_CDQ |
| s1031 | 41 | sumlo | CFR | lo | 133977/500000 | lo_CDF,lo_CQR,lo_CDR,s1011,hi_CDQ |
| s1033 | 42 | sumlo | CYR | lo | 479/3125 | lo_CDR,s1012,s710,lo_CQR,hi_CDQ |
| s1037 | 44 | sumlo | CDZ | lo | 138997/1000000 | lo_CDF,lo_ODZ,s1016,s1028,hi_ODF |
| s1043 | 45 | sumlo | DZQ | lo | 8619/62500 | s1009,s1016,s1037,s769,s772 |
| s1045 | 47 | sumlo | HFQ | lo | 21059/200000 | s769,lo_OHF,lo_HDF,s997,hi_ODF |
| s1047 | 49 | sumlo | HCF | lo | 2857/20000 | lo_CDF,lo_HFY,s692,lo_HDF,s873 |
| s1049 | 52 | sumlo | OHY | lo | 122733/1000000 | lo_HFY,s1000,s695,lo_OFY,s748 |
| s1050 | 54 | sumlo | OCY | lo | 111/625 | s692,s1000,s1012,lo_OFY,s748 |
| s1052 | 57 | sumlo | DZP | lo | 20927/200000 | s1037,lo_FZP,lo_CZP,s1016,s833 |
| s1058 | 62 | sumlo | FQR | lo | 32683/200000 | s953,lo_OQR,s938,lo_YQR,s886 |
| s1059 | 63 | sumlo | DQR | lo | 52529/500000 | lo_CDR,s1058,lo_CQR,s770,s890 |
| s1062 | 66 | balance_lo | CFZ | lo | 9401/50000 | lo_FZP,s1028,lo_CZP,lo_ODF,s975,lo_ODZ,s992 |
| s1063 | 67 | balance_lo | HYQ | lo | 243161/1000000 | lo_HCY,s997,s1012,lo_OHF,s1005,lo_OFY,hi_OCF |
| s1065 | 69 | balance_lo | CFY | lo | 72699/500000 | s1047,s1000,lo_HFY,lo_OCQ,lo_HCY,s997,hi_OHQ |
| s1068 | 71 | balance_lo | HCZ | lo | 211433/1000000 | lo_CZP,s988,s721,lo_OCQ,s973,s1001,s920 |
| s1069 | 72 | balance_lo | CDY | lo | 96109/250000 | lo_CDF,s1000,s1015,lo_OCQ,s1065,s993,hi_OFQ |
| s1074 | 75 | balance_lo | OHC | lo | 46241/125000 | lo_OFY,s1005,s1000,s1047,s997,lo_HCY,s748 |
| s1075 | 76 | balance_lo | OFP | lo | 118009/500000 | s994,lo_HDP,lo_FZP,lo_OHD,s722,lo_HDF,s830 |
| s1076 | 77 | balance_lo | CFP | lo | 173511/1000000 | s1062,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s830 |
| s1079 | 82 | balance_lo | OYZ | lo | 3783/31250 | s742,s1062,lo_DYZ,s991,lo_ODZ,s1065,s772 |
| s1080 | 87 | balance_lo | ODR | lo | 95437/500000 | s991,s1059,s997,lo_CDR,lo_OCQ,s770,s736 |
| s1081 | 89 | balance_lo | OCZ | lo | 185933/1000000 | s1013,lo_OFY,s1001,s1065,lo_OCQ,s936,s748 |
| s1086 | 93 | balance_lo | OZP | lo | 152767/1000000 | s1074,s1052,s1028,s721,lo_OHD,lo_CZP,s279 |
| s1087 | 94 | balance_lo | HZP | lo | 107409/1000000 | lo_OHD,lo_FZP,lo_HDF,s1086,lo_OHF,s1052,hi_ODF |
| s1088 | 95 | balance_lo | OZP | lo | 2489/15625 | s1028,lo_FZP,lo_ODF,lo_CZP,s991,s1052,s772 |
| s1089 | 98 | balance_lo | HQR | lo | 157411/1000000 | lo_HCD,lo_YQR,s1006,lo_CQR,lo_HCY,s1059,s881 |
| s1090 | 99 | balance_lo | PQR | lo | 106851/1000000 | lo_CZP,s1089,s1087,lo_CQR,s973,lo_ZQR,s829 |
| s1091 | 100 | balance_lo | FQR | lo | 41231/250000 | lo_CDF,lo_YQR,s1015,lo_CQR,s1065,s1059,s881 |
| s1092 | 101 | linear | OHC | lo | 393333/1000000 | lo_HCY,s1050,s1049 |
| s1098 | 103 | linear | OHQ | lo | 399107/500000 | s1089,s937,lo_OQR |
| s1100 | 104 | linear | OCF | lo | 207999/500000 | s1065,s1050,lo_OFY |
| s1102 | 105 | linear | CFQ | hi | 378191/500000 | s1100,hi_OCQ,hi_OFQ |
| s1108 | 107 | linear | ODY | lo | 19191/62500 | lo_DYZ,lo_ODZ,s1079 |
| s1109 | 108 | linear | ODP | lo | 356931/1000000 | s1052,lo_ODZ,s1088 |
| s1110 | 109 | linear | ODQ | lo | 97233/250000 | s1059,s1080,lo_OQR |
| s1113 | 110 | linear | OFZ | lo | 369889/1000000 | s936,lo_OFY,s1079 |
| s1116 | 111 | linear | FYQ | hi | 232627/500000 | hi_OFQ,lo_OFY,s1000 |
| s1117 | 112 | linear | OFQ | lo | 164269/200000 | s1091,s938,lo_OQR |
| s1121 | 115 | linear | OPQ | lo | 485659/1000000 | s941,lo_OQR,s1090 |
| s1122 | 117 | linear | HCQ | lo | 516831/1000000 | lo_CQR,s1029,s1089 |
| s1124 | 119 | linear | HDQ | hi | 23443/31250 | hi_DQR,s943,s1089 |
| s1128 | 120 | linear | CDP | lo | 42079/125000 | s1037,lo_CZP,s1052 |
| s1129 | 121 | linear | CDQ | lo | 145529/500000 | lo_CDR,lo_CQR,s1059 |
| s1130 | 122 | linear | CFQ | lo | 262939/500000 | s1031,lo_CQR,s1091 |
| s1131 | 123 | linear | CYQ | lo | 4241/12500 | lo_CQR,s1033,lo_YQR |
| s1133 | 124 | linear | DFZ | lo | 305391/1000000 | s794,s1052,lo_FZP |
| s1136 | 125 | linear | DYQ | lo | 5061/15625 | lo_DYZ,s1043,lo_YZQ |
| s1142 | 128 | quad | DFQ | lo | 139373/500000 | s1116 |
| s1143 | 129 | quad | DFR | lo | 409117/1000000 | s895 |
| s1144 | 131 | linear | CDF | hi | 17143/20000 | s1047 |
| s1146 | 133 | bary_hi | FYP | lo | 129507/1000000 | hi_OHC,lo_HCY,s1050,s1049,s1075,lo_HFP,s1076 |
| s1147 | 134 | bary_hi | FYQ | lo | 58291/200000 | hi_OHC,lo_HCY,s1050,s1049,s1117,s1045,s1130 |
| s1167 | 135 | bary_lo | DFP | lo | 109733/1000000 | hi_OHD,lo_HDP,s1109,s969,lo_ODF,lo_HDF |
| s1175 | 138 | bary_lo | OCY | lo | 17981/100000 | hi_OHQ,s1063,s1000,s1049,s1092,lo_OCQ |
| s1183 | 142 | bary_hi | CYQ | hi | 515003/1000000 | hi_OCF,s1065,lo_OFY,s1175,hi_OCQ,s1102 |
| s1195 | 148 | bary_lo | OFZ | hi | 537067/1000000 | hi_ODF,s1133,s1113,lo_ODZ,hi_ODF |
| s1198 | 151 | bary_lo | HDZ | hi | 495929/1000000 | hi_ODF,s1133,s1113,lo_ODZ,hi_OHD,lo_HDF |
| s1200 | 152 | bary_lo | CDZ | lo | 141247/1000000 | hi_ODF,s1133,s1113,lo_ODZ,s1028,lo_CDF |
| s1201 | 153 | bary_lo | CFZ | hi | 178151/500000 | hi_ODF,s1133,s1113,lo_ODZ,s1100,s1144 |
| s1203 | 154 | bary_lo | CZR | lo | 110393/1000000 | hi_ODF,s1133,s1113,lo_ODZ,lo_OCR,lo_CDR,s1031 |
| s1204 | 155 | bary_hi | DFZ | hi | 472569/1000000 | hi_ODF,s1133,s1113,lo_ODZ,hi_ODF |
| s1229 | 156 | bary_lo | OCY | lo | 189327/1000000 | hi_OFQ,s1147,s1000,lo_OFY,s1100,lo_OCQ |
| s1230 | 157 | bary_hi | OYQ | hi | 24077/40000 | hi_OFQ,s1147,s1000,lo_OFY,hi_OFQ |
| s1239 | 160 | bary_hi | DFY | hi | 507633/1000000 | hi_OFQ,s1147,s1000,lo_OFY,hi_ODF,hi_DFQ |
| s1256 | 165 | bary_hi | HQR | lo | 2514/15625 | s1230,lo_YQR,lo_OQR,s939,s1098,s1063 |
| s1258 | 166 | bary_lo | CFR | hi | 108979/250000 | s1230,lo_YQR,lo_OQR,s939,s1100,s1065,s1102 |
| s1263 | 167 | bary_hi | DQR | lo | 13767/125000 | s1230,lo_YQR,lo_OQR,s939,s1110,s1136 |
| s1264 | 168 | bary_hi | FYR | hi | 153559/500000 | s1230,lo_YQR,lo_OQR,s939,lo_OFY,s1116 |
| s1265 | 169 | bary_hi | FQR | lo | 42983/250000 | s1230,lo_YQR,lo_OQR,s939,s1117,s1147 |
| s1278 | 172 | bary_lo | OCP | lo | 47471/200000 | s1198,s1052,s1087,lo_HDP,s1092,s1028,s1081 |
| s1300 | 180 | bary_hi | HFZ | lo | 102277/1000000 | s1004,s1052,lo_CZP,s1200,s1047,lo_HDF,lo_HFP |
| s1301 | 181 | bary_lo | HYZ | lo | 363/2500 | s1004,s1052,lo_CZP,s1200,lo_HCY,s1006,s974 |
| s1304 | 182 | bary_lo | FYZ | lo | 164827/1000000 | s1004,s1052,lo_CZP,s1200,s1065,s1015,s1146 |
| s1305 | 183 | bary_hi | OHR | lo | 37/64 | hi_CDQ,s1263,lo_CQR,lo_CDR,s1092,lo_OHD,s1098 |
| s1306 | 184 | bary_hi | OFR | lo | 4767/8000 | hi_CDQ,s1263,lo_CQR,lo_CDR,s1100,lo_ODF,s1117 |
| s1307 | 185 | bary_hi | OYR | lo | 16767/62500 | hi_CDQ,s1263,lo_CQR,lo_CDR,s1229,s1108,s1000 |
| s1308 | 186 | bary_hi | OZR | lo | 10859/62500 | hi_CDQ,s1263,lo_CQR,lo_CDR,s1081,lo_ODZ,s1001 |
| s1309 | 187 | bary_hi | OPR | lo | 159407/500000 | hi_CDQ,s1263,lo_CQR,lo_CDR,s1278,s1109,s1121 |
| s1310 | 188 | bary_lo | HCR | lo | 16757/62500 | hi_CDQ,s1263,lo_CQR,lo_CDR,lo_HCD,s1122 |
| s1311 | 189 | bary_lo | HDR | hi | 671439/1000000 | hi_CDQ,s1263,lo_CQR,lo_CDR,s279,s1124 |
| s1313 | 190 | bary_lo | HYR | lo | 178827/1000000 | hi_CDQ,s1263,lo_CQR,lo_CDR,lo_HCY,s1006,s1063 |
| s1314 | 191 | bary_hi | CFR | lo | 54023/200000 | hi_CDQ,s1263,lo_CQR,lo_CDR,lo_CDF,s1130 |
| s1315 | 192 | bary_hi | CYR | lo | 160251/1000000 | hi_CDQ,s1263,lo_CQR,lo_CDR,s1069,s1131 |
| s1320 | 195 | bary_lo | FYR | lo | 27193/125000 | hi_CDQ,s1263,lo_CQR,lo_CDR,s1065,s1015,s1147 |
| s1324 | 196 | bary_hi | DQR | lo | 2221/20000 | s1183,lo_YQR,lo_CQR,s1315,s1129,s1136 |
| s1334 | 199 | bary_hi | OFP | lo | 247853/1000000 | s1204,lo_FZP,s1052,s1167,lo_ODF,s1113 |
| s1336 | 201 | bary_lo | HCP | lo | 267239/1000000 | s1204,lo_FZP,s1052,s1167,lo_HCD,s1047,s1068 |
| s1337 | 202 | bary_lo | HYP | lo | 3037/20000 | s1204,lo_FZP,s1052,s1167,s1006,lo_HFY,s1301 |
| s1338 | 203 | bary_hi | CFP | lo | 45059/250000 | s1204,lo_FZP,s1052,s1167,lo_CDF,s1062 |
| s1348 | 3 | sum | OHQ | lo | 832021/1000000 | s1256,s1305,lo_OQR |
| s1350 | 4 | sum | OCF | lo | 17109/40000 | s1065,s1229,lo_OFY |
| s1351 | 7 | sub | ODP | hi | 36117/62500 | hi_ODF,s1167,s1334 |
| s1353 | 9 | sum | OFZ | lo | 378883/1000000 | s1304,lo_OFY,s1079 |
| s1356 | 11 | sum | OFQ | lo | 860807/1000000 | s1265,s1306,lo_OQR |
| s1357 | 11 | sub | FQR | hi | 59501/200000 | hi_OFQ,s1306,lo_OQR |
| s1358 | 11 | sub | OFR | hi | 90181/125000 | hi_OFQ,s1265,lo_OQR |
| s1361 | 12 | sub | OYR | hi | 51363/125000 | s1358,s1320,lo_OFY |
| s1362 | 13 | sum | OYQ | lo | 7098/15625 | lo_OQR,s1307,lo_YQR |
| s1363 | 14 | sum | OZQ | lo | 5621/15625 | lo_OQR,s1308,lo_ZQR |
| s1366 | 16 | sum | HCD | lo | 696871/1000000 | s1128,s1336,lo_HDP |
| s1367 | 16 | sub | CDP | hi | 546761/1000000 | s279,s1336,lo_HDP |
| s1368 | 17 | sum | HCQ | lo | 65251/125000 | lo_CQR,s1310,s1256 |
| s1369 | 18 | sum | HDY | lo | 6757/20000 | lo_DYP,lo_HDP,s1337 |
| s1372 | 20 | sum | CDP | lo | 169441/500000 | s1200,lo_CZP,s1052 |
| s1374 | 21 | sum | CDQ | lo | 5941/20000 | lo_CDR,lo_CQR,s1324 |
| s1375 | 22 | sum | CFQ | lo | 535047/1000000 | s1314,lo_CQR,s1265 |
| s1376 | 23 | sum | CYQ | lo | 346251/1000000 | lo_CQR,s1315,lo_YQR |
| s1377 | 24 | sum | CZQ | lo | 296393/1000000 | lo_CQR,s1203,lo_ZQR |
| s1379 | 25 | sum | DFY | lo | 4153/12500 | s1167,lo_DYP,s1146 |
| s1380 | 26 | sum | DFZ | lo | 38421/125000 | s1167,s1052,lo_FZP |
| s1389 | 31 | sumlo | OCR | lo | 96509/1000000 | s1350,lo_OQR,lo_OCQ,s1306,hi_OFQ |
| s1393 | 33 | sumlo | OCD | lo | 63327/250000 | lo_CDF,lo_OCQ,s1374,s1350,s1102 |
| s1394 | 38 | sumlo | HCR | lo | 134947/500000 | lo_CDR,s1368,lo_CQR,s1366,hi_CDQ |
| s1396 | 41 | sumlo | CFR | lo | 136073/500000 | lo_CDF,lo_CQR,lo_CDR,s1375,hi_CDQ |
| s1398 | 42 | sumlo | CYR | lo | 80897/500000 | lo_CDR,s1376,s1069,lo_CQR,hi_CDQ |
| s1403 | 44 | sumlo | CDZ | lo | 6089/40000 | lo_CDF,lo_ODZ,s1380,s1393,hi_ODF |
| s1410 | 47 | sumlo | HFQ | lo | 11329/100000 | s1142,lo_OHF,lo_HDF,s1356,hi_ODF |
| s1412 | 49 | sumlo | HCF | lo | 7689/50000 | lo_CDF,lo_HFY,s1065,lo_HDF,s1239 |
| s1415 | 52 | sumlo | OHY | lo | 13941/100000 | lo_HFY,s1362,s1063,lo_OFY,s1116 |
| s1416 | 54 | sumlo | OCY | lo | 105589/500000 | s1065,s1362,s1376,lo_OFY,s1116 |
| s1419 | 57 | sumlo | DZP | lo | 2999/25000 | s1403,lo_FZP,lo_CZP,s1380,s1201 |
| s1424 | 61 | sumlo | HQR | lo | 171321/1000000 | s1313,lo_OQR,s1305,lo_YQR,s1361 |
| s1426 | 62 | sumlo | FQR | lo | 184101/1000000 | s1320,lo_OQR,s1306,lo_YQR,s1361 |
| s1428 | 63 | sumlo | DQR | lo | 126559/1000000 | lo_CDR,s1426,lo_CQR,s1143,s1258 |
| s1431 | 66 | balance_lo | CFZ | lo | 101111/500000 | lo_FZP,s1393,lo_CZP,lo_ODF,s1338,lo_ODZ,s1351 |
| s1434 | 69 | balance_lo | CFY | lo | 158561/1000000 | s1412,s1362,lo_HFY,lo_OCQ,lo_HCY,s1356,hi_OHQ |
| s1435 | 70 | balance_lo | HCZ | lo | 14769/62500 | s1412,s1363,s1431,s1348,s1300,lo_OCQ,hi_OFQ |
| s1438 | 73 | balance_lo | ODQ | lo | 418991/1000000 | lo_CDF,lo_OQR,s1143,lo_OCQ,lo_CDR,s1356,s1258 |
| s1442 | 75 | balance_lo | OHC | lo | 213281/500000 | lo_OFY,s1368,s1362,s1412,s1356,lo_HCY,s1116 |
| s1443 | 76 | balance_lo | OFP | lo | 255257/1000000 | s1353,lo_HDP,lo_FZP,lo_OHD,s1088,lo_HDF,s1198 |
| s1444 | 77 | balance_lo | CFP | lo | 46511/250000 | s1431,lo_HDP,lo_FZP,s1366,lo_CZP,lo_HDF,s1198 |
| s1446 | 78 | balance_lo | HYQ | lo | 257157/1000000 | s1375,s1415,s1356,lo_HCY,lo_OCQ,lo_HFY,hi_OCF |
| s1449 | 79 | balance_lo | OHP | lo | 159739/500000 | lo_ODF,s1337,lo_OFY,lo_HDP,s1108,lo_HFP,s1239 |
| s1451 | 82 | balance_lo | OYZ | lo | 136053/1000000 | s1108,s1431,lo_DYZ,s1350,lo_ODZ,s1434,s1144 |
| s1452 | 83 | balance_lo | CDY | lo | 41593/100000 | lo_ODF,s1376,s1142,s1416,s1438,s1434,hi_OFQ |
| s1453 | 85 | balance_lo | ODQ | lo | 210471/500000 | lo_ODF,lo_CQR,s1142,s1389,s1356,lo_CDR,s1258 |
| s1454 | 87 | balance_lo | ODR | lo | 227709/1000000 | s1350,s1428,s1356,lo_CDR,lo_OCQ,s1143,s1102 |
| s1455 | 88 | balance_lo | OCD | lo | 4207/15625 | s1374,lo_OFY,s1453,s1434,lo_OCQ,s1379,s1116 |
| s1456 | 89 | balance_lo | OCZ | lo | 53699/250000 | s1377,lo_OFY,s1363,s1434,lo_OCQ,s1304,s1116 |
| s1461 | 93 | balance_lo | OZP | lo | 172689/1000000 | s1442,s1419,s1455,s1087,lo_OHD,lo_CZP,s279 |
| s1462 | 94 | balance_lo | HZP | lo | 110913/1000000 | lo_OHD,lo_FZP,lo_HDF,s1461,lo_OHF,s1419,hi_ODF |
| s1463 | 95 | balance_lo | OZP | lo | 2787/15625 | s1455,lo_FZP,lo_ODF,lo_CZP,s1350,s1419,s1144 |
| s1465 | 96 | balance_lo | OCY | lo | 26543/125000 | s1350,lo_YQR,s1434,lo_OQR,lo_OFY,lo_CQR,s1357 |
| s1466 | 97 | balance_lo | PQR | lo | 121447/1000000 | lo_FZP,lo_OQR,s1463,s1426,s1443,lo_ZQR,s1195 |
| s1467 | 101 | linear | OHC | lo | 222377/500000 | lo_HCY,s1465,s1415 |
| s1470 | 102 | linear | OHY | hi | 288571/1000000 | s1446,hi_OHQ,s1362 |
| s1471 | 102 | linear | OHQ | lo | 850839/1000000 | s1446,s1415,s1362 |
| s1474 | 103 | linear | OHR | hi | 735679/1000000 | s1424,hi_OHQ,lo_OQR |
| s1476 | 104 | linear | OCF | lo | 92781/200000 | s1434,s1465,lo_OFY |
| s1478 | 105 | linear | CFQ | hi | 28339/40000 | s1476,hi_OCQ,hi_OFQ |
| s1484 | 107 | linear | ODY | lo | 322053/1000000 | lo_DYZ,lo_ODZ,s1451 |
| s1485 | 108 | linear | ODP | lo | 12229/31250 | s1419,lo_ODZ,s1463 |
| s1486 | 109 | linear | ODQ | lo | 111817/250000 | s1428,s1454,lo_OQR |
| s1489 | 110 | linear | OFZ | lo | 9847/25000 | s1304,lo_OFY,s1451 |
| s1492 | 111 | linear | FYQ | hi | 109777/250000 | hi_OFQ,lo_OFY,s1362 |
| s1493 | 112 | linear | OFQ | lo | 54561/62500 | s1426,s1306,lo_OQR |
| s1497 | 115 | linear | OPQ | lo | 533261/1000000 | s1309,lo_OQR,s1466 |
| s1498 | 116 | linear | HCD | lo | 699121/1000000 | s1372,s1336,lo_HDP |
| s1499 | 117 | linear | HCQ | lo | 106843/200000 | lo_CQR,s1394,s1424 |
| s1500 | 118 | linear | HDZ | lo | 323873/1000000 | s1419,lo_HDP,s1462 |
| s1501 | 119 | linear | HDQ | hi | 367059/500000 | hi_DQR,s1311,s1424 |
| s1507 | 120 | linear | CDP | lo | 73037/200000 | s1403,lo_CZP,s1419 |
| s1508 | 121 | linear | CDQ | lo | 312559/1000000 | lo_CDR,lo_CQR,s1428 |
| s1509 | 122 | linear | CFQ | lo | 549247/1000000 | s1396,lo_CQR,s1426 |
| s1511 | 123 | linear | CYQ | lo | 173897/500000 | lo_CQR,s1398,lo_YQR |
| s1513 | 124 | linear | DFZ | lo | 322693/1000000 | s1167,s1419,lo_FZP |
| s1522 | 126 | quad | DFQ | lo | 313503/1000000 | s1478 |
| s1523 | 129 | quad | DFR | lo | 218441/500000 | s1264 |
| s1525 | 131 | linear | CDF | hi | 42311/50000 | s1412 |
| s1528 | 133 | bary_hi | FYP | lo | 13719/100000 | hi_OHC,lo_HCY,s1465,s1415,s1443,lo_HFP,s1444 |
| s1529 | 134 | bary_hi | FYQ | lo | 160131/500000 | hi_OHC,lo_HCY,s1465,s1415,s1493,s1410,s1509 |
| s1558 | 135 | bary_lo | DFP | lo | 28233/250000 | hi_OHD,lo_HDP,s1485,s1449,lo_ODF,lo_HDF |
| s1561 | 136 | bary_hi | FYP | hi | 21673/100000 | hi_OHD,lo_HDP,s1485,s1449,lo_OFY,lo_HFY,s1239 |
| s1569 | 138 | bary_lo | OCY | lo | 53751/250000 | hi_OHQ,s1446,s1362,s1415,s1467,lo_OCQ |
| s1585 | 139 | bary_lo | DFY | lo | 335611/1000000 | s1474,s1313,s1307,s1415,lo_ODF,lo_HDF,s1523 |
| s1590 | 143 | bary_hi | DYQ | lo | 69303/200000 | hi_OCF,s1434,lo_OFY,s1569,s1486,s1508,s1522 |
| s1591 | 144 | bary_lo | YZP | lo | 28579/250000 | hi_OCF,s1434,lo_OFY,s1569,s1463,lo_CZP,lo_FZP |
| s1597 | 148 | bary_lo | OFZ | hi | 103953/200000 | hi_ODF,s1513,s1489,lo_ODZ,hi_ODF |
| s1601 | 151 | bary_lo | HDZ | hi | 235141/500000 | hi_ODF,s1513,s1489,lo_ODZ,hi_OHD,lo_HDF |
| s1603 | 152 | bary_lo | CDZ | lo | 80937/500000 | hi_ODF,s1513,s1489,lo_ODZ,s1455,lo_CDF |
| s1604 | 153 | bary_lo | CFZ | hi | 62031/200000 | hi_ODF,s1513,s1489,lo_ODZ,s1476,s1525 |
| s1606 | 154 | bary_lo | CZR | lo | 5601/50000 | hi_ODF,s1513,s1489,lo_ODZ,s1389,lo_CDR,s1396 |
| s1607 | 155 | bary_hi | DFZ | hi | 224289/500000 | hi_ODF,s1513,s1489,lo_ODZ,hi_ODF |
| s1632 | 156 | bary_lo | OCY | lo | 222417/1000000 | hi_OFQ,s1529,s1362,lo_OFY,s1476,lo_OCQ |
| s1635 | 157 | bary_hi | OYQ | hi | 286559/500000 | hi_OFQ,s1529,s1362,lo_OFY,hi_OFQ |
| s1637 | 158 | bary_lo | HDY | hi | 471557/1000000 | hi_OFQ,s1529,s1362,lo_OFY,hi_OHD,lo_HDF,s1501 |
| s1644 | 159 | bary_hi | CYQ | hi | 236019/500000 | hi_OFQ,s1529,s1362,lo_OFY,hi_OCQ,s1478 |
| s1665 | 163 | bary_lo | OHR | hi | 361143/500000 | s1635,lo_YQR,lo_OQR,s1307,s1470,hi_OHQ |
| s1673 | 165 | bary_hi | HQR | lo | 89897/500000 | s1635,lo_YQR,lo_OQR,s1307,s1471,s1446 |
| s1675 | 166 | bary_lo | CFR | hi | 377539/1000000 | s1635,lo_YQR,lo_OQR,s1307,s1476,s1434,s1478 |
| s1680 | 167 | bary_hi | DQR | lo | 128807/1000000 | s1635,lo_YQR,lo_OQR,s1307,s1486,s1590 |
| s1681 | 168 | bary_hi | FYR | hi | 281509/1000000 | s1635,lo_YQR,lo_OQR,s1307,lo_OFY,s1492 |
| s1682 | 169 | bary_hi | FQR | lo | 193627/1000000 | s1635,lo_YQR,lo_OQR,s1307,s1493,s1529 |
| s1701 | 172 | bary_lo | OCP | lo | 35787/125000 | s1601,s1419,s1462,lo_HDP,s1467,s1455,s1456 |
| s1726 | 178 | bary_hi | OHZ | lo | 432609/1000000 | s1367,s1419,lo_CZP,s1603,s1467,lo_OHD,s1449 |
| s1727 | 179 | bary_hi | OFZ | lo | 397603/1000000 | s1367,s1419,lo_CZP,s1603,s1476,lo_ODF,s1443 |
| s1729 | 181 | bary_lo | HYZ | lo | 15207/100000 | s1367,s1419,lo_CZP,s1603,lo_HCY,s1369,s1337 |
| s1732 | 182 | bary_lo | FYZ | lo | 43907/250000 | s1367,s1419,lo_CZP,s1603,s1434,s1585,s1528 |
| s1735 | 184 | bary_hi | OFR | lo | 316999/500000 | hi_CDQ,s1680,lo_CQR,lo_CDR,s1476,lo_ODF,s1493 |
| s1736 | 185 | bary_hi | OYR | lo | 147909/500000 | hi_CDQ,s1680,lo_CQR,lo_CDR,s1632,s1484,s1362 |
| s1738 | 187 | bary_hi | OPR | lo | 182119/500000 | hi_CDQ,s1680,lo_CQR,lo_CDR,s1701,s1485,s1497 |
| s1739 | 188 | bary_lo | HCR | lo | 54619/200000 | hi_CDQ,s1680,lo_CQR,lo_CDR,s1498,s1499 |
| s1742 | 190 | bary_lo | HYR | lo | 36713/200000 | hi_CDQ,s1680,lo_CQR,lo_CDR,lo_HCY,s1369,s1446 |
| s1744 | 192 | bary_hi | CYR | lo | 16911/100000 | hi_CDQ,s1680,lo_CQR,lo_CDR,s1452,s1511 |
| s1748 | 195 | bary_lo | FYR | lo | 23357/100000 | hi_CDQ,s1680,lo_CQR,lo_CDR,s1434,s1585,s1529 |
| s1753 | 196 | bary_hi | DQR | lo | 129849/1000000 | s1644,lo_YQR,lo_CQR,s1744,s1508,s1590 |
| s1768 | 199 | bary_hi | OFP | lo | 67681/250000 | s1607,lo_FZP,s1419,s1558,lo_ODF,s1727 |
| s1769 | 200 | bary_hi | OZP | hi | 16367/62500 | s1607,lo_FZP,s1419,s1558,lo_ODZ,s1597 |
| s1770 | 201 | bary_lo | HCP | lo | 4494/15625 | s1607,lo_FZP,s1419,s1558,s1498,s1412,s1435 |
| s1772 | 202 | bary_lo | HYP | lo | 158633/1000000 | s1607,lo_FZP,s1419,s1558,s1369,lo_HFY,s1729 |
| s1782 | 204 | bary_hi | PQR | lo | 127549/1000000 | s1607,lo_FZP,s1419,s1558,s1753,s1682,lo_ZQR |
| s1784 | 2 | sum | OHD | lo | 424741/500000 | s1500,lo_ODZ,s1726 |
| s1790 | 4 | sum | OCF | lo | 236989/500000 | s1434,s1632,lo_OFY |
| s1791 | 6 | sub | DFZ | hi | 88971/200000 | hi_ODF,lo_ODZ,s1727 |
| s1793 | 7 | sub | ODP | hi | 275901/500000 | hi_ODF,s1558,s1768 |
| s1795 | 9 | sum | OFZ | lo | 404681/1000000 | s1732,lo_OFY,s1451 |
| s1798 | 11 | sum | OFQ | lo | 1473/1600 | s1682,s1735,lo_OQR |
| s1799 | 11 | sub | FQR | hi | 129691/500000 | hi_OFQ,s1735,lo_OQR |
| s1800 | 11 | sub | OFR | hi | 699753/1000000 | hi_OFQ,s1682,lo_OQR |
| s1803 | 12 | sub | OYR | hi | 373183/1000000 | s1800,s1748,lo_OFY |
| s1804 | 13 | sum | OYQ | lo | 240909/500000 | lo_OQR,s1736,lo_YQR |
| s1807 | 15 | sum | OPQ | lo | 584787/1000000 | s1738,lo_OQR,s1782 |
| s1809 | 16 | sum | HCD | lo | 745801/1000000 | s1507,s1770,lo_HDP |
| s1811 | 17 | sum | HCQ | lo | 545889/1000000 | lo_CQR,s1739,s1673 |
| s1821 | 24 | sum | CZQ | lo | 14901/50000 | lo_CQR,s1606,lo_ZQR |
| s1824 | 26 | sum | DFZ | lo | 81473/250000 | s1558,s1419,lo_FZP |
| s1836 | 30 | sumlo | OCP | lo | 9579/31250 | s1790,s1807,lo_OCQ,s1768,hi_OFQ |
| s1837 | 31 | sumlo | OCR | lo | 6529/62500 | s1790,lo_OQR,lo_OCQ,s1735,hi_OFQ |
| s1840 | 32 | sumlo | HCF | lo | 165427/1000000 | s1809,lo_HFY,lo_HCY,lo_HDF,s1637 |
| s1846 | 34 | sumlo | OCD | lo | 308783/1000000 | lo_CDF,s1837,lo_CDR,s1790,s1675 |
| s1847 | 35 | sumlo | OCZ | lo | 56481/250000 | s1431,lo_OCQ,s1821,s1790,s1478 |
| s1867 | 48 | sumlo | OFP | lo | 274787/1000000 | s1558,s1795,lo_FZP,lo_ODF,s1791 |
| s1872 | 50 | sumlo | HFZ | lo | 115269/1000000 | s1732,lo_HFP,lo_FZP,lo_HFY,s1561 |
| s1876 | 53 | sumlo | OHY | lo | 15837/100000 | lo_HFY,s1736,s1742,lo_OFY,s1681 |
| s1885 | 55 | sumlo | CDZ | lo | 177837/1000000 | s1431,lo_ODZ,s1824,s1847,s1597 |
| s1889 | 57 | sumlo | DZP | lo | 151043/1000000 | s1885,lo_FZP,lo_CZP,s1824,s1604 |
| s1891 | 58 | sumlo | CFP | lo | 41289/200000 | lo_CZP,s1867,lo_FZP,s1836,s1769 |
| s1893 | 59 | sumlo | HZP | lo | 117123/1000000 | lo_FZP,s1772,lo_HFP,s1591,s1561 |
| s1910 | 62 | sumlo | FQR | lo | 54051/250000 | s1748,lo_OQR,s1735,lo_YQR,s1803 |
| s1911 | 62 | sumlo | OYR | lo | 311061/1000000 | s1748,lo_OQR,s1735,lo_YQR,s1799 |
| s1915 | 63 | sumlo | DQR | lo | 40219/250000 | lo_CDR,s1910,lo_CQR,s1523,s1675 |
| s1920 | 66 | balance_lo | CFZ | lo | 225543/1000000 | lo_FZP,s1846,lo_CZP,lo_ODF,s1891,lo_ODZ,s1793 |
| s1921 | 66 | balance_lo | ODP | lo | 401267/1000000 | lo_FZP,s1846,lo_CZP,lo_ODF,s1891,lo_ODZ,s1604 |
| s1925 | 68 | balance_lo | CDQ | lo | 10647/31250 | s1915,s1790,lo_CQR,lo_ODF,lo_CDR,s1798,s1800 |
| s1932 | 69 | balance_lo | CFY | lo | 43493/250000 | s1840,s1804,lo_HFY,lo_OCQ,lo_HCY,s1798,hi_OHQ |
| s1944 | 75 | balance_lo | OHC | lo | 246057/500000 | lo_OFY,s1811,s1804,s1840,s1798,lo_HCY,s1492 |
| s1965 | 85 | balance_lo | ODQ | lo | 16133/31250 | lo_ODF,lo_CQR,s1522,s1837,s1798,lo_CDR,s1675 |
| s1966 | 86 | balance_lo | DFY | lo | 86251/250000 | s1876,s1523,s1742,lo_ODF,s1911,lo_HDF,s1665 |
| s1969 | 88 | balance_lo | OCD | lo | 69953/200000 | s1925,lo_OFY,s1965,s1932,lo_OCQ,s1966,s1492 |
| s1974 | 90 | balance_lo | OFZ | lo | 432511/1000000 | s1944,s1824,s1969,s1872,s1784,s1920,s279 |
| s1976 | 91 | balance_lo | OHP | lo | 23249/62500 | s1784,lo_FZP,lo_HDP,s1974,s1921,s1872,s1791 |
| s1991 | 93 | balance_lo | OZP | lo | 10711/50000 | s1944,s1889,s1969,s1893,s1784,lo_CZP,s279 |
| s2034 | 106 | linear | DFZ | hi | 409947/1000000 | hi_ODF,lo_ODZ,s1974 |
| s2041 | 108 | linear | ODP | lo | 458263/1000000 | s1889,lo_ODZ,s1991 |
| s2168 | 137 | bary_hi | FZP | hi | 2841/31250 | hi_OHD,lo_HDP,s2041,s1976,s1974,s1872,s2034 |

## Conclusion

{"triangle":"FZP","lower":"lo_FZP","upper":"s2168"}
