# Leaf rpmmpppmpmmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":-1,"OYP":-1,"OZR":1}

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
| 10 | extreme | ["OYP","D","POD",1] |
| 11 | extreme | ["OZP","D","ZPD",-1] |
| 12 | extreme | ["HFY","C","FYC",1] |
| 13 | extreme | ["CYQ","H","YQH",1] |
| 14 | extreme | ["CYR","D","YRD",1] |
| 15 | extreme | ["CYR","F","YRF",1] |
| 16 | extreme | ["CYR","H","YRH",1] |
| 17 | extreme | ["DFZ","O","FZO",-1] |
| 18 | extreme | ["DYQ","O","YQO",-1] |
| 19 | extreme | ["DYR","O","YRO",-1] |
| 20 | extreme | ["DPQ","O","PQO",-1] |
| 21 | interior_line | ["OP","R","CDQ","R",-1] |
| 22 | interior_line | ["HY","Z","HCDF","Z",1] |
| 23 | interior_line | ["HY","P","HCDF","P",1] |
| 24 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 25 | interior_line | ["CY","P","HCDF","P",-1] |
| 26 | interior_line | ["CZ","R","CDQ","R",-1] |
| 27 | interior_line | ["CP","R","CDQ","R",-1] |
| 28 | interior_line | ["DZ","R","CDQ","R",1] |
| 29 | interior_line | ["DP","R","CDQ","R",1] |
| 30 | interior_line | ["ZP","Y","OHC","Y",1] |
| 31 | interior_line | ["ZR","R","ODQ","Q",-1] |
| 32 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 33 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 34 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 35 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 36 | capacity | ["DZQ","R","Y","DZY",-1,"87606223/127000000","C065"] |
| 37 | plu | ["OHDYZ","OYZ",-1] |
| 38 | plu | ["OHFYP","OFP",-1] |
| 39 | plu | ["FOCYZ","FYZ",1] |
| 40 | plu | ["FOCZP","FCP",1] |
| 41 | plu | ["FOYZP","FYP",1] |
| 42 | plu | ["YODPR","YPR",-1] |
| 43 | plu | ["YOZQR","YZR",1] |
| 44 | plu | ["ZOHCR","ZHR",-1] |
| 45 | plu | ["ZOHYQ","ZHQ",-1] |
| 46 | plu | ["ZOHPQ","ZPQ",-1] |
| 47 | plu | ["ZOCFR","ZFR",-1] |
| 48 | plu | ["ZOCPR","ZPR",-1] |
| 49 | plu | ["ZOFYQ","ZFQ",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 279/1000 | ["cost","Z"] |
| lo_ODF | ODF | lo | 347/500 | ["cost","YP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 279/1000 | ["cost","Y"] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YZ"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OPQ | OPQ | lo | 279/1000 | ["cost","Z"] |
| lo_OQR | OQR | lo | 279/1000 | ["cost","Z"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCF | HCF | lo | 93/1000 | ["cost",""] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CPR | CPR | lo | 279/1000 | ["cost","Z"] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_OCR | OCR | hi | 2849236491/7210000000 | "C045" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OPQ | OPQ | hi | 70912/79375 | "C050" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFR | CFR | hi | 13635066269/18025000000 | "C066" |
| hi_CYR | CYR | hi | 1302044845163/2289175000000 | "C051" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHP","HYP","OHY","OYP"] | ["fan","OHP","Y"] |
| 1 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 2 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 3 | ["fan","OCR","CZR","OCZ","OZR"] | ["fan","OCR","Z"] |
| 4 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 5 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 6 | ["fan","OFZ","FYZ","OFY","OYZ"] | ["fan","OFZ","Y"] |
| 7 | ["fan","OFP","FYP","OFY","OYP"] | ["fan","OFP","Y"] |
| 8 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 9 | ["fan","OQR","OZQ","OZR","ZQR"] | ["fan","OQR","Z"] |
| 10 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 11 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 12 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 13 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 14 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 15 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 16 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 17 | ["fan","CPQ","CZP","CZQ","ZPQ"] | ["fan","CPQ","Z"] |
| 18 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 19 | ["plu","OCY","OHQ","OCQ","OHY","OHC","OYQ"] | ["plu","OHCYQ"] |
| 20 | ["plu","OFQ","OHY","OFY","OHQ","OHF","OYQ"] | ["plu","OHFYQ"] |
| 21 | ["plu","OCY","OFP","OCF","OYP","OCP","OFY"] | ["plu","OCFYP"] |
| 22 | ["plu","ODY","OFP","ODF","OYP","ODP","OFY"] | ["plu","ODFYP"] |
| 23 | ["plu","ODY","OPQ","ODP","OYQ","ODQ","OYP"] | ["plu","ODYPQ"] |
| 24 | ["plu","ODZ","OQR","ODQ","OZR","ODR","OZQ"] | ["plu","ODZQR"] |
| 25 | ["plu","OFP","OYZ","OFY","OZP","OFZ","OYP"] | ["plu","OFYZP"] |
| 26 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 27 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 28 | ["plu","HCD","OCP","CDP","OHC","HCP","OCD"] | ["plu","COHDP"] |
| 29 | ["plu","HCZ","OCF","CFZ","OHC","HCF","OCZ"] | ["plu","COHFZ"] |
| 30 | ["plu","HCZ","OCP","CZP","OHC","HCP","OCZ"] | ["plu","COHZP"] |
| 31 | ["plu","HCR","OCP","CPR","OHC","HCP","OCR"] | ["plu","COHPR"] |
| 32 | ["plu","CFR","OCD","CDF","OCR","CDR","OCF"] | ["plu","CODFR"] |
| 33 | ["plu","CFR","OCZ","CFZ","OCR","CZR","OCF"] | ["plu","COFZR"] |
| 34 | ["plu","CFR","OCP","CFP","OCR","CPR","OCF"] | ["plu","COFPR"] |
| 35 | ["plu","CPR","OCZ","CZP","OCR","CZR","OCP"] | ["plu","COZPR"] |
| 36 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 37 | ["plu","CDF","HCP","CDP","HCF","CFP","HCD"] | ["plu","CHDFP"] |
| 38 | ["plu","CDP","HCZ","CDZ","HCP","CZP","HCD"] | ["plu","CHDZP"] |
| 39 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 40 | ["plu","CDP","CZQ","CDQ","CZP","CDZ","CPQ"] | ["plu","CDZPQ"] |
| 41 | ["plu","CFZ","CPR","CFP","CZR","CFR","CZP"] | ["plu","CFZPR"] |
| 42 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 43 | ["plu","CDQ","ODR","CDR","ODQ","DQR","OCD"] | ["plu","DOCQR"] |
| 44 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 45 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 46 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 47 | ["plu","CDQ","DFR","CDF","DQR","CDR","DFQ"] | ["plu","DCFQR"] |
| 48 | ["plu","HFQ","ODF","DFQ","OHF","HDF","OFQ"] | ["plu","FOHDQ"] |
| 49 | ["plu","CFP","OFZ","CFZ","OFP","FZP","OCF"] | ["plu","FOCZP"] |
| 50 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 51 | ["plu","FYP","HCF","CFP","HFY","CFY","HFP"] | ["plu","FHCYP"] |
| 52 | ["plu","FYP","HFZ","FYZ","HFP","FZP","HFY"] | ["plu","FHYZP"] |
| 53 | ["plu","FYP","OHY","HFY","OYP","HYP","OFY"] | ["plu","YOHFP"] |
| 54 | ["plu","HCZ","OFZ","CFZ","OHZ","HFZ","OCZ"] | ["plu","ZOHCF"] |
| 55 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 56 | ["plu","HZR","OCZ","CZR","OHZ","HCZ","OZR"] | ["plu","ZOHCR"] |
| 57 | ["plu","HZP","OFZ","FZP","OHZ","HFZ","OZP"] | ["plu","ZOHFP"] |
| 58 | ["plu","CFZ","OZP","CZP","OFZ","FZP","OCZ"] | ["plu","ZOCFP"] |
| 59 | ["plu","OCZ","ZPR","CZP","OZR","CZR","OZP"] | ["plu","ZOCPR"] |
| 60 | ["plu","HCZ","ZPR","CZP","HZR","CZR","HZP"] | ["plu","ZHCPR"] |
| 61 | ["plu","CFZ","DZP","CDZ","FZP","CZP","DFZ"] | ["plu","ZCDFP"] |
| 62 | ["plu","CZQ","DZP","CDZ","ZPQ","CZP","DZQ"] | ["plu","ZCDPQ"] |
| 63 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 64 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 65 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 66 | ["plu","DFP","HZP","DZP","HFP","FZP","HDP"] | ["plu","PHDFZ"] |
| 67 | ["plu","CFP","DZP","CDP","FZP","CZP","DFP"] | ["plu","PCDFZ"] |
| 68 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 69 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 70 | ["plu","CQR","ODR","CDR","OQR","DQR","OCR"] | ["plu","ROCDQ"] |
| 71 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 72 | ["balance",[[-1,"HFZ","ODP"],[-1,"FZP","OHD"],[1,"HZP","ODF"],[-1,"HFP","ODZ"]]] | ["six","ODHFZP"] |
| 73 | ["balance",[[-1,"CDQ","OZR"],[-1,"DQR","OCZ"],[1,"CQR","ODZ"],[-1,"CDR","OZQ"]]] | ["six","OZCDQR"] |
| 74 | ["balance",[[1,"HCF","OYP"],[-1,"CFY","OHP"],[1,"HFY","OCP"],[1,"HCY","OFP"]]] | ["six","OPHCFY"] |
| 75 | ["balance",[[1,"CDQ","OPR"],[-1,"DQR","OCP"],[-1,"CQR","ODP"],[-1,"CDR","OPQ"]]] | ["six","OPCDQR"] |
| 76 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 77 | ["balance",[[1,"CDZ","OPR"],[-1,"DZP","OCR"],[1,"CZP","ODR"],[1,"CDP","OZR"]]] | ["six","ORCDZP"] |
| 78 | ["balance",[[-1,"ODZ","HCR"],[1,"DZR","OHC"],[1,"OZR","HCD"],[1,"ODR","HCZ"]]] | ["six","HCODZR"] |
| 79 | ["balance",[[-1,"OFZ","HCP"],[1,"FZP","OHC"],[1,"OZP","HCF"],[1,"OFP","HCZ"]]] | ["six","HCOFZP"] |
| 80 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 81 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 82 | ["balance",[[-1,"OFZ","HYP"],[1,"FZP","OHY"],[1,"OZP","HFY"],[1,"OFP","HYZ"]]] | ["six","HYOFZP"] |
| 83 | ["balance",[[1,"OZQ","CDR"],[-1,"ZQR","OCD"],[1,"OQR","CDZ"],[1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 84 | ["balance",[[-1,"HYZ","CDQ"],[-1,"YZQ","HCD"],[1,"HZQ","CDY"],[-1,"HYQ","CDZ"]]] | ["six","CDHYZQ"] |
| 85 | ["balance",[[-1,"OHD","CZP"],[1,"HDP","OCZ"],[1,"ODP","HCZ"],[-1,"OHP","CDZ"]]] | ["six","CZOHDP"] |
| 86 | ["balance",[[1,"ODY","CZP"],[1,"DYP","OCZ"],[1,"OYP","CDZ"],[-1,"ODP","CYZ"]]] | ["six","CZODYP"] |
| 87 | ["balance",[[1,"OCZ","DFR"],[1,"CZR","ODF"],[1,"OZR","CDF"],[-1,"OCR","DFZ"]]] | ["six","DFOCZR"] |
| 88 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 89 | ["balance",[[-1,"HCD","FYZ"],[1,"CDY","HFZ"],[1,"HDY","CFZ"],[1,"HCY","DFZ"]]] | ["six","FZHCDY"] |
| 90 | ["balance",[[1,"HCD","FZP"],[1,"CDP","HFZ"],[1,"HDP","CFZ"],[-1,"HCP","DFZ"]]] | ["six","FZHCDP"] |
| 91 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 92 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 93 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 94 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 95 | ["balance",[[1,"CDF","YZQ"],[1,"DFY","CZQ"],[1,"CFY","DZQ"],[-1,"CDY","FZQ"]]] | ["six","ZQCDFY"] |
| 96 | ["balance",[[-1,"OHC","DZR"],[-1,"HCD","OZR"],[1,"OCD","HZR"],[-1,"OHD","CZR"]]] | ["six","ZROHCD"] |
| 97 | ["balance",[[1,"OCD","FZR"],[-1,"CDF","OZR"],[-1,"ODF","CZR"],[-1,"OCF","DZR"]]] | ["six","ZROCDF"] |
| 98 | ["linear",{"OHC":-1,"OCZ":1,"OHZ":1,"HCZ":-1},"0"] | ["affine_quad","OHCZ",1] |
| 99 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 100 | ["linear",{"OHD":-1,"ODZ":-1,"OHZ":1,"HDZ":1},"0"] | ["affine_quad","OHDZ",1] |
| 101 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 102 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 103 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 104 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 105 | ["linear",{"OCF":-1,"OFZ":1,"OCZ":1,"CFZ":-1},"0"] | ["affine_quad","OCFZ",-1] |
| 106 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 107 | ["linear",{"OCZ":-1,"OZR":-1,"OCR":1,"CZR":-1},"0"] | ["affine_quad","OCZR",-1] |
| 108 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 109 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 110 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 111 | ["linear",{"OZQ":-1,"OQR":1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",1] |
| 112 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 113 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 114 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 115 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 116 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 117 | ["linear",{"CDF":1,"CFP":-1,"CDP":-1,"DFP":-1},"0"] | ["affine_quad","CDFP",1] |
| 118 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 119 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 120 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 121 | ["linear",{"CFZ":-1,"CZR":-1,"CFR":1,"FZR":-1},"0"] | ["affine_quad","CFZR",1] |
| 122 | ["linear",{"CZP":-1,"CPQ":1,"CZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","CZPQ",-1] |
| 123 | ["linear",{"CZP":-1,"CPR":1,"CZR":-1,"ZPR":-1},"0"] | ["affine_quad","CZPR",-1] |
| 124 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 125 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 126 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 127 | ["support","CDP","OCD","ODP","1023/1000"] | ["support_pent","DPYOC"] |
| 128 | ["support","OFP","OCF","CFP","1023/1000"] | ["support_pent","FPZCO"] |
| 129 | ["support","CFR","CYR","FYR","1023/1000"] | ["support_pent","RFHYC"] |
| 130 | ["support","DZQ","DPQ","ZPQ","1023/1000"] | ["support_pent","QZYPD"] |
| 131 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 132 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 133 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 134 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 135 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 136 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["CFQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FQ"] |
| 137 | ["bary",["OHP",-1],[null,null,["OHD",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OH"] |
| 138 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["FZP",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FP"] |
| 139 | ["bary",["ODY",1],[null,["OHD",1],["ODP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","OD"] |
| 140 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],["CZP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","CZ"] |
| 141 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 142 | ["bary",["HFZ",-1],[["OHF",-1],["HCF",-1],["HDF",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","HF"] |
| 143 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","OH"] |
| 144 | ["bary",["OFZ",-1],[null,["OCF",-1],["OFR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","OF"] |
| 145 | ["bary",["HCZ",1],[["OHC",-1],null,["HCR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","HC"] |
| 146 | ["bary",["HDZ",-1],[["OHD",-1],["HCD",-1],["HDR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","HD"] |
| 147 | ["bary",["CFZ",-1],[["OCF",1],null,["CFR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","CF"] |
| 148 | ["bary",["CZQ",1],[["OCQ",1],null,["CQR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","CQ"] |
| 149 | ["bary",["DFZ",1],[["ODF",1],["CDF",1],["DFR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DF"] |
| 150 | ["bary",["DZP",1],[["ODP",1],["CDP",1],["DPR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DP"] |
| 151 | ["bary",["DZQ",-1],[["ODQ",-1],["CDQ",-1],["DQR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DQ"] |
| 152 | ["bary",["ZPR",-1],[["OPR",-1],["CPR",-1],null],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","PR"] |
| 153 | ["bary",["ZQR",1],[["OQR",1],["CQR",1],null],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","QR"] |
| 154 | ["bary",["CYZ",1],[["OCZ",1],["CDZ",-1],["CFZ",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","CZ"] |
| 155 | ["bary",["OFP",-1],[null,["ODF",-1],null],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OF"] |
| 156 | ["bary",["CDP",1],[["OCD",1],null,["CDF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CD"] |
| 157 | ["bary",["CPQ",1],[["OCQ",1],["CDQ",1],["CFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CQ"] |
| 158 | ["bary",["DPQ",-1],[["ODQ",-1],null,["DFQ",-1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","DQ"] |
| 159 | ["bary",["ZPR",1],[["OZR",1],["DZR",1],["FZR",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","ZR"] |
| 160 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 161 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OF"] |
| 162 | ["bary",["OHR",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OH"] |
| 163 | ["bary",["ODR",-1],[null,null,["ODQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OD"] |
| 164 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 165 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 166 | ["bary",["CQR",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","CQ"] |
| 167 | ["bary",["CYQ",1],[["OCQ",1],["CFQ",1],["CZQ",1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","CQ"] |
| 168 | ["bary",["ODY",1],[null,["ODF",1],["ODP",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","OD"] |
| 169 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDP",-1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","HD"] |
| 170 | ["bary",["CDY",1],[["OCD",1],["CDF",1],["CDP",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","CD"] |
| 171 | ["bary",["CYZ",1],[["OCZ",1],["CFZ",1],["CZP",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","CZ"] |
| 172 | ["bary",["DFY",1],[["ODF",1],null,["DFP",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","DF"] |
| 173 | ["bary",["DYZ",-1],[["ODZ",-1],["DFZ",-1],["DZP",-1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","DZ"] |
| 174 | ["bary",["YZR",1],[["OZR",1],["FZR",1],["ZPR",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","ZR"] |
| 175 | ["bary",["OHY",-1],[null,["OHF",-1],["OHQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OH"] |
| 176 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 177 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 178 | ["bary",["CDY",1],[["OCD",1],["CDF",1],["CDR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","CD"] |
| 179 | ["bary",["ODZ",-1],[null,["ODQ",-1],["ODR",-1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","OD"] |
| 180 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 181 | ["bary",["OHP",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OH"] |
| 182 | ["bary",["OCP",1],[["OHC",1],null,["OCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OC"] |
| 183 | ["bary",["OFP",-1],[["OHF",1],["OCF",-1],["ODF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OF"] |
| 184 | ["bary",["HCP",1],[null,null,["HCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HC"] |
| 185 | ["bary",["HDP",-1],[null,["HCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HD"] |
| 186 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 187 | ["bary",["CPQ",1],[["HCQ",1],["CDQ",1],["CYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CQ"] |
| 188 | ["bary",["ZPQ",1],[["HZQ",1],["DZQ",1],["YZQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZQ"] |
| 189 | ["bary",["ZPR",1],[["HZR",1],["DZR",1],["YZR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZR"] |
| 190 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","OC"] |
| 191 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 192 | ["bary",["OFP",-1],[["OCF",-1],["ODF",-1],null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OF"] |
| 193 | ["bary",["HDP",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HD"] |
| 194 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 195 | ["bary",["DFP",1],[["CDF",1],null,null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DF"] |
| 196 | ["bary",["DPQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DQ"] |
| 197 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 198 | ["bary",["OFZ",-1],[["OCF",-1],["ODF",-1],["OFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OF"] |
| 199 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 200 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 201 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 202 | ["bary",["HZP",-1],[["HCP",-1],["HDP",1],null],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HP"] |
| 203 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 204 | ["bary",["CYZ",-1],[null,["CDY",-1],["CYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CY"] |
| 205 | ["bary",["CZQ",1],[null,["CDQ",1],["CPQ",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CQ"] |
| 206 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 207 | ["bary",["DZP",1],[["CDP",1],null,null],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DP"] |
| 208 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 209 | ["bary",["ZPQ",-1],[["CPQ",-1],["DPQ",1],null],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","PQ"] |
| 210 | ["bary",["OCR",1],[null,["OCD",1],["OCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OC"] |
| 211 | ["bary",["ODR",-1],[["OCD",-1],null,["ODQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OD"] |
| 212 | ["bary",["OFR",-1],[["OCF",-1],["ODF",-1],["OFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OF"] |
| 213 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 214 | ["bary",["OQR",1],[["OCQ",-1],["ODQ",1],null],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OQ"] |
| 215 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 216 | ["bary",["HFR",-1],[["HCF",-1],["HDF",-1],["HFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HF"] |
| 217 | ["bary",["CFR",-1],[null,["CDF",-1],["CFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CF"] |
| 218 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 219 | ["bary",["CPR",-1],[null,["CDP",-1],["CPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CP"] |
| 220 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 221 | ["bary",["ZPR",-1],[["CZP",1],["DZP",-1],["ZPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","ZP"] |
| 222 | ["bary",["HZR",-1],[["HCR",-1],["HFR",1],null],"CFR",["FZR","CZR","CFZ"]] | ["bary","CFR","Z","HR"] |
| 223 | ["bary",["OYZ",-1],[["OCY",-1],["OYP",-1],["OYQ",-1]],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","OY"] |
| 224 | ["bary",["OCZ",1],[null,["OCP",1],["OCR",1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","OC"] |
| 225 | ["bary",["HCZ",1],[null,["HCP",1],["HCR",1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","HC"] |
| 226 | ["bary",["ZPR",-1],[["CPR",-1],null,null],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","PR"] |
| 227 | ["bary",["OZP",1],[["ODZ",1],["OFZ",1],["OYZ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OZ"] |
| 228 | ["bary",["OPR",1],[["ODR",1],["OFR",1],["OYR",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OR"] |
| 229 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],["YZQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZQ"] |
| 230 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 231 | ["bary",["HDP",-1],[null,["HDF",1],["HDZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HD"] |
| 232 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 233 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s20 | 4 | sub | DFY | hi | 374729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s28 | 5 | sub | ODR | hi | 6071/15625 | hi_ODQ,lo_DQR,lo_OQR |
| s50 | 13 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s51 | 14 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s80 | 23 | sumlo | ODY | lo | 12661/125000 | lo_ODP,lo_OYQ,lo_ODQ,lo_OYP,hi_OPQ |
| s88 | 32 | sumlo | OCD | lo | 145133/500000 | lo_CDF,lo_OCR,lo_CDR,lo_OCF,hi_CFR |
| s91 | 34 | sumlo | OCP | lo | 137203/1000000 | lo_CFP,lo_OCR,lo_CPR,lo_OCF,hi_CFR |
| s93 | 37 | sumlo | HCP | lo | 101707/1000000 | lo_CDP,lo_HCF,lo_CFP,lo_HCD,hi_CDF |
| s95 | 38 | sumlo | HCZ | lo | 105159/1000000 | lo_CDZ,s93,lo_CZP,lo_HCD,s51 |
| s97 | 39 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s51 |
| s102 | 42 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s110 | 44 | sumlo | ODP | lo | 5361/50000 | lo_DPQ,s80,lo_DYP,lo_ODQ,hi_DYQ |
| s115 | 46 | sumlo | HDR | lo | 192191/1000000 | lo_CDR,lo_HDQ,lo_DQR,lo_HCD,hi_CDQ |
| s116 | 47 | sumlo | DFR | lo | 187789/1000000 | lo_CDF,lo_DQR,lo_CDR,s102,hi_CDQ |
| s121 | 50 | sumlo | HCF | lo | 48829/500000 | lo_CDF,lo_HFY,lo_CFY,lo_HDF,s20 |
| s133 | 68 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s135 | 69 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s141 | 70 | sumlo | CQR | lo | 3339/25000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,s28 |
| s142 | 70 | sumlo | ODR | lo | 221769/1000000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,hi_CQR |
| s148 | 71 | balance_lo | CFY | lo | 25357/250000 | s121,s80,lo_HFY,s88,lo_HCY,lo_ODF,hi_OHD |
| s158 | 73 | balance_lo | ODZ | lo | 184807/1000000 | lo_CDQ,lo_OZR,lo_DQR,lo_OCZ,lo_CDR,lo_OZQ,hi_CQR |
| s161 | 75 | balance_lo | OPR | lo | 25251/200000 | lo_DQR,s91,s141,s110,lo_CDR,lo_OPQ,hi_CDQ |
| s163 | 76 | balance_lo | CDY | lo | 18373/62500 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s148,lo_ODQ,hi_OFQ |
| s168 | 77 | balance_lo | DZP | lo | 147561/1000000 | lo_CDZ,s161,lo_CZP,s142,lo_CDP,lo_OZR,hi_OCR |
| s174 | 81 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s181 | 83 | balance_lo | ZQR | lo | 105119/1000000 | lo_OZQ,lo_CDR,lo_OQR,lo_CDZ,lo_OZR,lo_CDQ,hi_OCD |
| s189 | 87 | balance_lo | DFZ | lo | 370841/1000000 | lo_OCZ,s116,lo_CZR,lo_ODF,lo_OZR,lo_CDF,hi_OCR |
| s194 | 89 | balance_lo | FYZ | lo | 18653/200000 | s163,lo_HFZ,lo_HDY,s97,lo_HCY,s189,hi_HCD |
| s195 | 90 | balance_lo | HCP | lo | 28467/200000 | lo_HCD,lo_FZP,lo_CDP,lo_HFZ,lo_HDP,s97,s50 |
| s204 | 93 | balance_lo | HZP | lo | 98461/1000000 | lo_HCD,lo_FZP,lo_HDF,lo_CZP,s121,s168,hi_CDF |
| s205 | 94 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s206 | 95 | balance_lo | FZQ | lo | 3169/20000 | lo_CDF,lo_YZQ,lo_DFY,lo_CZQ,s148,lo_DZQ,hi_CDY |
| s207 | 96 | balance_lo | HZR | lo | 33647/125000 | lo_OHC,lo_DZR,lo_HCD,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s208 | 97 | balance_lo | FZR | lo | 33647/125000 | lo_CDF,lo_OZR,lo_ODF,lo_CZR,lo_OCF,lo_DZR,hi_OCD |
| s217 | 103 | linear | OCD | lo | 370807/1000000 | lo_CDZ,lo_OCZ,s158 |
| s219 | 104 | linear | OCF | lo | 71857/250000 | s148,lo_OCY,lo_OFY |
| s224 | 108 | linear | DFQ | lo | 20081/50000 | lo_ODF,lo_ODQ,hi_OFQ |
| s227 | 109 | linear | OQR | hi | 17831/40000 | lo_DQR,hi_ODQ,s142 |
| s228 | 110 | linear | OFZ | lo | 55853/200000 | s194,lo_OFY,lo_OYZ |
| s240 | 111 | linear | OQR | lo | 291119/1000000 | lo_OZQ,lo_OZR,s181 |
| s247 | 113 | linear | HCQ | lo | 353473/1000000 | lo_CZQ,s95,s205 |
| s258 | 118 | linear | CDP | lo | 333561/1000000 | lo_CDZ,lo_CZP,s168 |
| s260 | 119 | linear | CDQ | lo | 7989/25000 | lo_CDR,s141,lo_DQR |
| s263 | 120 | linear | CFQ | lo | 177729/500000 | s97,lo_CZQ,s206 |
| s266 | 121 | linear | CFR | lo | 58273/125000 | s97,lo_CZR,s208 |
| s273 | 126 | linear | DZQ | lo | 291119/1000000 | lo_DQR,lo_DZR,s181 |
| s275 | 127 | support_z | ODP | lo | 145767/1000000 | s258,hi_OCD |
| s276 | 128 | support_z | CFP | lo | 52909/500000 | lo_OFP,hi_OCF |
| s278 | 129 | support_z | FYR | lo | 206987/1000000 | s266,hi_CYR |
| s280 | 131 | linear | OHC | lo | 370807/1000000 | s217 |
| s281 | 132 | linear | HCD | hi | 907/1000 | lo_HDF |
| s292 | 134 | bary_hi | FYZ | lo | 121891/1000000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,s228,lo_HFZ,s97 |
| s293 | 135 | bary_hi | FYP | lo | 61059/500000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,lo_OFP,lo_HFP,s276 |
| s294 | 136 | bary_hi | FYQ | lo | 219459/1000000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,lo_OFQ,lo_HFQ,s263 |
| s306 | 137 | bary_lo | OHP | hi | 761233/1000000 | hi_OHD,lo_HDP,s275,lo_OHP,hi_OHD |
| s332 | 139 | bary_lo | ODY | lo | 51297/500000 | s306,lo_HYP,lo_OYP,lo_OHY,lo_OHD,s275 |
| s336 | 140 | bary_lo | CYZ | lo | 18897/200000 | s306,lo_HYP,lo_OYP,lo_OHY,lo_OCZ,s95,lo_CZP |
| s341 | 141 | bary_lo | OCY | lo | 14013/125000 | hi_OHQ,s174,lo_OYQ,lo_OHY,s280,lo_OCQ |
| s360 | 142 | bary_hi | HFZ | lo | 47247/500000 | hi_OCD,lo_CDZ,s158,lo_OCZ,lo_OHF,s121,lo_HDF |
| s383 | 146 | bary_hi | HDZ | lo | 428379/1000000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,lo_OHD,lo_HCD,s115 |
| s388 | 148 | bary_hi | CZQ | hi | 41909/250000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,hi_OCQ,hi_CQR |
| s389 | 149 | bary_lo | DFZ | lo | 426049/1000000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,lo_ODF,lo_CDF,s116 |
| s390 | 150 | bary_lo | DZP | lo | 16203/100000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,s275,s258,lo_DPR |
| s405 | 155 | bary_lo | OFP | hi | 696691/1000000 | hi_ODF,lo_DFP,lo_OFP,s275,hi_ODF |
| s410 | 156 | bary_hi | CDP | hi | 593157/1000000 | hi_ODF,lo_DFP,lo_OFP,s275,hi_OCD,hi_CDF |
| s412 | 157 | bary_hi | CPQ | hi | 308501/500000 | hi_ODF,lo_DFP,lo_OFP,s275,hi_OCQ,hi_CDQ,s135 |
| s422 | 159 | bary_lo | ZPR | lo | 30113/250000 | hi_ODF,lo_DFP,lo_OFP,s275,lo_OZR,lo_DZR,s208 |
| s424 | 160 | bary_lo | OHZ | hi | 617223/1000000 | hi_ODQ,s273,lo_OZQ,s158,hi_OHD,hi_OHQ |
| s426 | 161 | bary_lo | OFZ | hi | 602589/1000000 | hi_ODQ,s273,lo_OZQ,s158,hi_ODF,hi_OFQ |
| s435 | 162 | bary_lo | OHR | hi | 877719/1000000 | hi_ODQ,lo_DQR,s240,s142,hi_OHD,hi_OHQ |
| s438 | 163 | bary_lo | ODR | hi | 15057/40000 | hi_ODQ,lo_DQR,s240,s142,hi_ODQ |
| s439 | 164 | bary_lo | OFR | hi | 846273/1000000 | hi_ODQ,lo_DQR,s240,s142,hi_ODF,hi_OFQ |
| s442 | 165 | bary_hi | OYR | lo | 193/1600 | hi_ODQ,lo_DQR,s240,s142,s332,lo_OYQ |
| s455 | 166 | bary_lo | CQR | lo | 33423/250000 | hi_ODQ,lo_DQR,s240,s142,lo_OCQ,s260 |
| s473 | 167 | bary_hi | CYQ | hi | 568997/1000000 | s426,s292,lo_OYZ,lo_OFY,hi_OCQ,s135,s388 |
| s477 | 168 | bary_lo | ODY | lo | 56049/500000 | s405,s293,lo_OYP,lo_OFY,lo_ODF,s275 |
| s481 | 173 | bary_hi | DYZ | lo | 40253/200000 | s405,s293,lo_OYP,lo_OFY,s158,s389,s390 |
| s483 | 174 | bary_lo | YZR | lo | 120181/1000000 | s405,s293,lo_OYP,lo_OFY,lo_OZR,s208,s422 |
| s485 | 176 | bary_lo | HDY | hi | 5357/8000 | hi_OFQ,s294,lo_OYQ,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s491 | 177 | bary_hi | DFY | hi | 32453/50000 | hi_OFQ,s294,lo_OYQ,lo_OFY,hi_ODF,hi_DFQ |
| s495 | 178 | bary_hi | CDY | hi | 704969/1000000 | s439,s278,s442,lo_OFY,hi_OCD,hi_CDF,lo_CDR |
| s497 | 179 | bary_hi | ODZ | lo | 47763/250000 | s227,s181,lo_OZR,lo_OZQ,lo_ODQ,s142 |
| s502 | 180 | bary_lo | HDZ | hi | 708841/1000000 | s281,lo_CDZ,s383,s95,s281 |
| s511 | 183 | bary_lo | OFP | hi | 263211/500000 | s281,s258,lo_HDP,s195,lo_OHF,hi_OCF,hi_ODF |
| s519 | 186 | bary_lo | DFP | lo | 105361/1000000 | s281,s258,lo_HDP,s195,lo_HDF,lo_CDF |
| s529 | 187 | bary_lo | CPQ | lo | 4609/15625 | s485,lo_DYP,lo_HYP,lo_HDP,s247,s260,lo_CYQ |
| s530 | 188 | bary_lo | ZPQ | lo | 129169/1000000 | s485,lo_DYP,lo_HYP,lo_HDP,s205,s273,lo_YZQ |
| s531 | 189 | bary_lo | ZPR | lo | 60621/500000 | s485,lo_DYP,lo_HYP,lo_HDP,s207,lo_DZR,s483 |
| s532 | 190 | bary_lo | OCP | lo | 19509/100000 | s502,s390,s204,lo_HDP,s280,s217,lo_OCZ |
| s551 | 194 | bary_lo | HYP | lo | 57561/500000 | hi_CDF,s519,s276,s258,lo_HCY,lo_HDY,lo_HFY |
| s552 | 195 | bary_hi | DFP | hi | 450323/1000000 | hi_CDF,s519,s276,s258,hi_CDF |
| s558 | 197 | bary_hi | OHZ | lo | 73829/200000 | s410,s390,lo_CZP,lo_CDZ,s280,lo_OHD,lo_OHP |
| s560 | 198 | bary_hi | OFZ | lo | 346369/1000000 | s410,s390,lo_CZP,lo_CDZ,s219,lo_ODF,lo_OFP |
| s562 | 199 | bary_lo | HCZ | lo | 131127/1000000 | s410,s390,lo_CZP,lo_CDZ,lo_HCD,s195 |
| s564 | 201 | bary_lo | HYZ | lo | 125631/1000000 | s410,s390,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,s551 |
| s566 | 203 | bary_hi | CFZ | lo | 125401/1000000 | s410,s390,lo_CZP,lo_CDZ,lo_CDF,s276 |
| s567 | 205 | bary_lo | CZQ | lo | 96351/1000000 | s410,s390,lo_CZP,lo_CDZ,s260,s529 |
| s568 | 206 | bary_hi | DFZ | hi | 340659/500000 | s410,s390,lo_CZP,lo_CDZ,hi_CDF,s552 |
| s580 | 210 | bary_hi | OCR | hi | 36207/100000 | hi_CDQ,lo_DQR,s455,lo_CDR,hi_OCD,hi_OCQ |
| s581 | 211 | bary_hi | ODR | lo | 117889/500000 | hi_CDQ,lo_DQR,s455,lo_CDR,s217,lo_ODQ |
| s582 | 212 | bary_hi | OFR | lo | 63359/125000 | hi_CDQ,lo_DQR,s455,lo_CDR,s219,lo_ODF,lo_OFQ |
| s583 | 213 | bary_hi | OYR | lo | 2329/15625 | hi_CDQ,lo_DQR,s455,lo_CDR,s341,s477,lo_OYQ |
| s586 | 214 | bary_hi | OQR | hi | 403139/1000000 | hi_CDQ,lo_DQR,s455,lo_CDR,lo_OCQ,hi_ODQ |
| s587 | 215 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,s455,lo_CDR,s281,s133 |
| s590 | 216 | bary_hi | HFR | lo | 94031/1000000 | hi_CDQ,lo_DQR,s455,lo_CDR,s121,lo_HDF,lo_HFQ |
| s593 | 217 | bary_lo | CFR | hi | 133933/200000 | hi_CDQ,lo_DQR,s455,lo_CDR,hi_CDF,s135 |
| s594 | 218 | bary_lo | CYR | hi | 518761/1000000 | hi_CDQ,lo_DQR,s455,lo_CDR,s495,s473 |
| s596 | 219 | bary_lo | CPR | hi | 47279/100000 | hi_CDQ,lo_DQR,s455,lo_CDR,s410,s412 |
| s597 | 220 | bary_lo | DFR | lo | 242601/1000000 | hi_CDQ,lo_DQR,s455,lo_CDR,lo_CDF,s224 |
| s612 | 222 | bary_lo | HZR | hi | 448759/1000000 | s593,s208,lo_CZR,s566,s587,s590 |
| s615 | 223 | bary_hi | OYZ | lo | 62517/500000 | s412,s530,s567,lo_CZP,s341,lo_OYP,lo_OYQ |
| s616 | 224 | bary_lo | OCZ | lo | 18651/200000 | s596,s531,lo_CZR,lo_CZP,s532,lo_OCR |
| s620 | 227 | bary_lo | OZP | lo | 10573/62500 | s491,s293,lo_DYP,s519,s497,s560,s615 |
| s622 | 228 | bary_lo | OPR | lo | 216641/1000000 | s491,s293,lo_DYP,s519,s581,s582,s583 |
| s626 | 229 | bary_lo | ZPQ | lo | 139653/1000000 | s491,s293,lo_DYP,s519,s273,s206,lo_YZQ |
| s628 | 230 | bary_lo | HCP | lo | 92117/500000 | s568,lo_FZP,s390,s519,lo_HCD,s121,s562 |
| s630 | 232 | bary_lo | HYP | lo | 24687/200000 | s568,lo_FZP,s390,s519,lo_HDY,lo_HFY,s564 |
| s631 | 233 | bary_hi | CFP | lo | 114123/1000000 | s568,lo_FZP,s390,s519,lo_CDF,s566 |
| s645 | 1 | sum | OCD | lo | 377307/1000000 | lo_CDZ,s616,s497 |
| s647 | 3 | sum | OCR | lo | 55851/200000 | lo_CZR,s616,lo_OZR |
| s648 | 3 | sub | OCZ | hi | 17607/100000 | s580,lo_CZR,lo_OZR |
| s653 | 7 | sum | OFP | lo | 154059/500000 | s293,lo_OFY,lo_OYP |
| s657 | 8 | sum | OYQ | lo | 155517/500000 | s615,lo_OZQ,lo_YZQ |
| s659 | 10 | sub | HDZ | hi | 682873/1000000 | s281,lo_CDZ,s562 |
| s664 | 12 | sum | HDY | lo | 61887/200000 | lo_DYP,lo_HDP,s630 |
| s666 | 15 | sum | CDY | lo | 311/800 | lo_CDZ,s336,s481 |
| s668 | 16 | sum | CDQ | lo | 79923/250000 | lo_CDR,s455,lo_DQR |
| s673 | 17 | sum | CPQ | lo | 82251/250000 | lo_CZP,s567,s626 |
| s675 | 18 | sum | DFY | lo | 320479/1000000 | s519,lo_DYP,s293 |
| s677 | 19 | sumlo | OCY | lo | 61991/500000 | lo_OCQ,lo_OHY,s280,s657,hi_OHQ |
| s679 | 20 | sumlo | OHY | lo | 47379/500000 | lo_OFY,lo_OHQ,lo_OHF,s657,hi_OFQ |
| s680 | 22 | sumlo | ODY | lo | 37089/250000 | lo_ODF,lo_OYP,s275,lo_OFY,s511 |
| s682 | 24 | sumlo | ODZ | lo | 21449/100000 | lo_ODQ,lo_OZR,s581,lo_OZQ,s586 |
| s686 | 26 | sumlo | HCF | lo | 109301/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s485 |
| s689 | 27 | sumlo | OCF | lo | 65839/200000 | lo_CDF,s280,s686,s645,s281 |
| s694 | 36 | sumlo | CFY | lo | 118007/1000000 | lo_CDF,lo_HCY,s666,s686,s281 |
| s695 | 38 | sumlo | HCZ | lo | 4303/31250 | lo_CDZ,s628,lo_CZP,lo_HCD,s410 |
| s696 | 39 | sumlo | CFZ | lo | 7919/62500 | lo_CDF,lo_CZP,lo_CDZ,s631,s410 |
| s697 | 40 | sumlo | CDP | lo | 359879/1000000 | s668,lo_CZP,lo_CDZ,s673,s388 |
| s698 | 40 | sumlo | CZQ | lo | 101707/1000000 | s668,lo_CZP,lo_CDZ,s673,s410 |
| s700 | 43 | sumlo | ODR | lo | 237217/1000000 | lo_CDR,lo_ODQ,lo_DQR,s645,hi_CDQ |
| s702 | 45 | sumlo | DFP | lo | 5403/50000 | lo_CDF,lo_HDP,s697,lo_HDF,s281 |
| s707 | 48 | sumlo | HFQ | lo | 54461/500000 | s224,lo_OHF,lo_HDF,lo_OFQ,hi_ODF |
| s709 | 50 | sumlo | HCF | lo | 116347/1000000 | lo_CDF,lo_HFY,s694,lo_HDF,s491 |
| s713 | 56 | sumlo | OCZ | lo | 26259/250000 | lo_CZR,s558,s695,lo_OZR,s612 |
| s715 | 59 | sumlo | ZPR | lo | 34619/250000 | lo_CZP,lo_OZR,lo_CZR,s620,s648 |
| s720 | 62 | sumlo | DZP | lo | 11949/50000 | lo_CDZ,s626,lo_CZP,s273,s388 |
| s725 | 70 | sumlo | CQR | lo | 140917/1000000 | lo_CDR,s240,lo_DQR,s647,s438 |
| s728 | 72 | balance_lo | HZP | lo | 105043/1000000 | s360,s275,lo_FZP,lo_OHD,lo_HFP,s682,hi_ODF |
| s732 | 80 | balance_lo | CFP | lo | 31109/250000 | s696,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s659 |
| s733 | 81 | balance_lo | HYQ | lo | 107313/500000 | s668,s679,lo_ODQ,lo_HCY,lo_OCQ,s664,hi_OCD |
| s735 | 83 | balance_lo | ZQR | lo | 113647/1000000 | lo_OZQ,lo_CDR,s240,lo_CDZ,lo_OZR,s668,hi_OCD |
| s738 | 84 | balance_lo | HZQ | lo | 88419/500000 | s564,s668,lo_YZQ,lo_HCD,s733,lo_CDZ,s495 |
| s742 | 88 | balance_lo | FYQ | lo | 122783/500000 | s668,lo_OFY,lo_ODQ,s694,lo_OCQ,s675,hi_OCD |
| s749 | 91 | balance_lo | OZP | lo | 106279/500000 | s280,s720,s645,s728,lo_OHD,lo_CZP,s281 |
| s750 | 92 | balance_lo | HZP | lo | 22777/200000 | lo_OHD,lo_FZP,lo_HDF,s749,lo_OHF,s720,hi_ODF |
| s751 | 95 | balance_lo | FZQ | lo | 4663/25000 | lo_CDF,lo_YZQ,s675,s698,s694,s273,s495 |
| s753 | 97 | balance_lo | FZR | lo | 277281/1000000 | lo_CDF,lo_OZR,lo_ODF,lo_CZR,s689,lo_DZR,hi_OCD |
| s754 | 101 | linear | OHP | lo | 311193/1000000 | s630,s679,lo_OYP |
| s756 | 103 | linear | OCD | lo | 206263/500000 | lo_CDZ,s713,s682 |
| s757 | 104 | linear | OCF | lo | 334989/1000000 | s694,s677,lo_OFY |
| s761 | 107 | linear | OCR | lo | 72759/250000 | lo_CZR,s713,lo_OZR |
| s771 | 111 | linear | OQR | lo | 299647/1000000 | lo_OZQ,lo_OZR,s735 |
| s787 | 118 | linear | CDP | lo | 21249/50000 | lo_CDZ,lo_CZP,s720 |
| s788 | 119 | linear | CDQ | lo | 326917/1000000 | lo_CDR,s725,lo_DQR |
| s792 | 121 | linear | CFR | lo | 99397/200000 | s696,lo_CZR,s753 |
| s795 | 122 | linear | CPQ | lo | 8359/25000 | lo_CZP,s698,s626 |
| s796 | 123 | linear | CPR | lo | 81119/250000 | lo_CZP,lo_CZR,s715 |
| s797 | 124 | linear | DFY | lo | 161589/500000 | s702,lo_DYP,s293 |
| s801 | 127 | support_z | ODP | lo | 185717/1000000 | s787,hi_OCD |
| s802 | 129 | support_z | FYR | lo | 48993/200000 | s792,s594 |
| s805 | 131 | linear | OHC | lo | 206263/500000 | s756 |
| s806 | 133 | linear | CDF | hi | 883653/1000000 | s709 |
| s818 | 138 | bary_hi | FYP | lo | 27357/200000 | s424,s564,s615,s679,s653,lo_HFP,lo_FZP |
| s826 | 141 | bary_lo | OCY | lo | 68561/500000 | hi_OHQ,s733,s657,s679,s805,lo_OCQ |
| s839 | 143 | bary_lo | OHZ | hi | 73741/125000 | s580,lo_CZR,lo_OZR,s713,hi_OHC,s435 |
| s840 | 144 | bary_lo | OFZ | hi | 143659/250000 | s580,lo_CZR,lo_OZR,s713,hi_OCF,s439 |
| s844 | 145 | bary_hi | HCZ | hi | 45461/200000 | s580,lo_CZR,lo_OZR,s713,s805,s587 |
| s847 | 147 | bary_lo | CFZ | hi | 119803/500000 | s580,lo_CZR,lo_OZR,s713,s757,s593 |
| s850 | 148 | bary_hi | CZQ | hi | 161567/1000000 | s580,lo_CZR,lo_OZR,s713,hi_OCQ,hi_CQR |
| s851 | 149 | bary_lo | DFZ | lo | 47449/100000 | s580,lo_CZR,lo_OZR,s713,lo_ODF,lo_CDF,s597 |
| s852 | 151 | bary_hi | DZQ | lo | 307453/1000000 | s580,lo_CZR,lo_OZR,s713,lo_ODQ,s788,lo_DQR |
| s854 | 152 | bary_hi | ZPR | lo | 138989/1000000 | s580,lo_CZR,lo_OZR,s713,s622,s796 |
| s862 | 154 | bary_hi | CYZ | hi | 18459/100000 | hi_ODF,s797,lo_OFY,s680,s648,lo_CDZ,s847 |
| s870 | 156 | bary_hi | CDP | hi | 278527/500000 | hi_ODF,s702,s653,s801,hi_OCD,s806 |
| s872 | 157 | bary_hi | CPQ | hi | 119193/200000 | hi_ODF,s702,s653,s801,hi_OCQ,hi_CDQ,s135 |
| s874 | 158 | bary_lo | DPQ | hi | 249429/500000 | hi_ODF,s702,s653,s801,hi_ODQ,hi_DFQ |
| s881 | 163 | bary_lo | ODR | hi | 367897/1000000 | hi_ODQ,lo_DQR,s771,s700,hi_ODQ |
| s882 | 164 | bary_lo | OFR | hi | 422851/500000 | hi_ODQ,lo_DQR,s771,s700,hi_ODF,hi_OFQ |
| s884 | 165 | bary_hi | OYR | lo | 155463/1000000 | hi_ODQ,lo_DQR,s771,s700,s680,s657 |
| s908 | 170 | bary_lo | CDY | lo | 116113/250000 | s511,s818,lo_OYP,lo_OFY,s756,lo_CDF,s787 |
| s916 | 176 | bary_lo | HDY | hi | 39633/62500 | hi_OFQ,s742,s657,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s920 | 177 | bary_hi | DFY | hi | 15467/25000 | hi_OFQ,s742,s657,lo_OFY,hi_ODF,hi_DFQ |
| s923 | 178 | bary_hi | CDY | hi | 687123/1000000 | s882,s802,s884,lo_OFY,hi_OCD,s806,lo_CDR |
| s925 | 179 | bary_hi | ODZ | lo | 107411/500000 | s586,s735,lo_OZR,lo_OZQ,lo_ODQ,s700 |
| s929 | 181 | bary_lo | OHP | hi | 494019/1000000 | s281,s787,lo_HDP,s628,hi_OHC,hi_OHD |
| s930 | 182 | bary_lo | OCP | lo | 55417/200000 | s281,s787,lo_HDP,s628,s805,s756 |
| s931 | 183 | bary_lo | OFP | hi | 422761/1000000 | s281,s787,lo_HDP,s628,lo_OHF,hi_OCF,hi_ODF |
| s933 | 184 | bary_hi | HCP | hi | 19451/50000 | s281,s787,lo_HDP,s628,s281 |
| s934 | 185 | bary_lo | HDP | hi | 148893/500000 | s281,s787,lo_HDP,s628,s281 |
| s939 | 186 | bary_lo | DFP | lo | 22947/200000 | s281,s787,lo_HDP,s628,lo_HDF,lo_CDF |
| s947 | 188 | bary_lo | ZPQ | lo | 147039/1000000 | s916,lo_DYP,s630,lo_HDP,s738,s852,lo_YZQ |
| s956 | 194 | bary_lo | HYP | lo | 61739/500000 | s806,s939,s732,s787,lo_HCY,s664,lo_HFY |
| s957 | 195 | bary_hi | DFP | hi | 334237/1000000 | s806,s939,s732,s787,s806 |
| s964 | 197 | bary_hi | OHZ | lo | 16743/40000 | s870,s720,lo_CZP,lo_CDZ,s805,lo_OHD,s754 |
| s968 | 199 | bary_lo | HCZ | lo | 7331/50000 | s870,s720,lo_CZP,lo_CDZ,lo_HCD,s628 |
| s969 | 200 | bary_lo | HDZ | hi | 653869/1000000 | s870,s720,lo_CZP,lo_CDZ,s281,s934 |
| s971 | 201 | bary_lo | HYZ | lo | 67111/500000 | s870,s720,lo_CZP,lo_CDZ,lo_HCY,s664,s956 |
| s972 | 202 | bary_lo | HZP | hi | 243601/1000000 | s870,s720,lo_CZP,lo_CDZ,s933,lo_HDP |
| s973 | 203 | bary_hi | CFZ | lo | 136637/1000000 | s870,s720,lo_CZP,lo_CDZ,lo_CDF,s732 |
| s975 | 205 | bary_lo | CZQ | lo | 110399/1000000 | s870,s720,lo_CZP,lo_CDZ,s788,s795 |
| s976 | 206 | bary_hi | DFZ | hi | 644403/1000000 | s870,s720,lo_CZP,lo_CDZ,s806,s957 |
| s978 | 207 | bary_hi | DZP | hi | 185527/500000 | s870,s720,lo_CZP,lo_CDZ,s870 |
| s986 | 211 | bary_hi | ODR | lo | 30627/125000 | hi_CDQ,lo_DQR,s725,lo_CDR,s756,lo_ODQ |
| s992 | 216 | bary_hi | HFR | lo | 20339/200000 | hi_CDQ,lo_DQR,s725,lo_CDR,s709,lo_HDF,s707 |
| s994 | 217 | bary_lo | CFR | hi | 133259/200000 | hi_CDQ,lo_DQR,s725,lo_CDR,s806,s135 |
| s997 | 219 | bary_lo | CPR | hi | 450947/1000000 | hi_CDQ,lo_DQR,s725,lo_CDR,s870,s872 |
| s1006 | 222 | bary_lo | HZR | hi | 86987/200000 | s994,s753,lo_CZR,s973,s587,s992 |
| s1008 | 223 | bary_hi | OYZ | lo | 13791/100000 | s872,s947,s975,lo_CZP,s826,lo_OYP,s657 |
| s1009 | 224 | bary_lo | OCZ | lo | 23433/200000 | s997,s854,lo_CZR,lo_CZP,s930,s761 |
| s1014 | 229 | bary_lo | ZPQ | lo | 154471/1000000 | s920,s818,lo_DYP,s939,s852,s751,lo_YZQ |
| s1015 | 230 | bary_lo | HCP | lo | 205103/1000000 | s976,lo_FZP,s720,s939,lo_HCD,s709,s968 |
| s1017 | 232 | bary_lo | HYP | lo | 5263/40000 | s976,lo_FZP,s720,s939,s664,lo_HFY,s971 |
| s1036 | 0 | sum | OHP | lo | 319333/1000000 | s1017,s679,lo_OYP |
| s1039 | 1 | sum | OCD | lo | 424987/1000000 | lo_CDZ,s1009,s925 |
| s1041 | 3 | sum | OCR | lo | 60633/200000 | lo_CZR,s1009,lo_OZR |
| s1046 | 7 | sum | OFP | lo | 64557/200000 | s818,lo_OFY,lo_OYP |
| s1051 | 8 | sum | OYQ | lo | 32391/100000 | s1008,lo_OZQ,lo_YZQ |
| s1054 | 11 | sum | HCD | lo | 723083/1000000 | s787,s1015,lo_HDP |
| s1058 | 12 | sum | HDY | lo | 12703/40000 | lo_DYP,lo_HDP,s1017 |
| s1059 | 13 | sum | CDF | lo | 704127/1000000 | lo_CDZ,s973,s851 |
| s1065 | 18 | sum | DFY | lo | 8613/25000 | s939,lo_DYP,s818 |
| s1068 | 20 | sumlo | OHY | lo | 23993/250000 | lo_OFY,lo_OHQ,lo_OHF,s1051,hi_OFQ |
| s1069 | 22 | sumlo | ODY | lo | 96761/500000 | lo_ODF,lo_OYP,s801,lo_OFY,s931 |
| s1070 | 24 | sumlo | ODZ | lo | 216621/1000000 | lo_ODQ,lo_OZR,s986,lo_OZQ,s586 |
| s1071 | 26 | sumlo | HCF | lo | 23937/200000 | s1054,lo_HFY,lo_HCY,lo_HDF,s916 |
| s1075 | 28 | sumlo | OCP | lo | 57879/200000 | s787,s805,s1015,s1039,s281 |
| s1078 | 35 | sumlo | OCZ | lo | 24441/200000 | lo_CZP,s1041,lo_CZR,s1075,s997 |
| s1079 | 36 | sumlo | CFY | lo | 26697/200000 | s1059,lo_HCY,s908,s1071,s281 |
| s1080 | 38 | sumlo | HCZ | lo | 1937/12500 | lo_CDZ,s1015,lo_CZP,s1054,s870 |
| s1085 | 43 | sumlo | ODR | lo | 9911/40000 | lo_CDR,lo_ODQ,lo_DQR,s1039,hi_CDQ |
| s1095 | 50 | sumlo | HCF | lo | 125909/1000000 | s1059,lo_HFY,s1079,lo_HDF,s920 |
| s1097 | 55 | sumlo | OZP | lo | 58121/250000 | lo_CZP,s964,s750,s1078,s844 |
| s1098 | 56 | sumlo | HZR | lo | 15147/50000 | lo_CZR,s964,s1080,lo_OZR,s648 |
| s1099 | 56 | sumlo | OCZ | lo | 30659/250000 | lo_CZR,s964,s1080,lo_OZR,s1006 |
| s1100 | 59 | sumlo | ZPR | lo | 2149/12500 | lo_CZP,lo_OZR,lo_CZR,s1097,s648 |
| s1104 | 61 | sumlo | CFZ | lo | 71117/500000 | lo_CDZ,lo_FZP,lo_CZP,s851,s978 |
| s1105 | 62 | sumlo | CZQ | lo | 4631/40000 | lo_CDZ,s1014,lo_CZP,s852,s978 |
| s1106 | 62 | sumlo | DZP | lo | 265889/1000000 | lo_CDZ,s1014,lo_CZP,s852,s850 |
| s1109 | 63 | sumlo | HZP | lo | 12139/100000 | lo_FZP,s1036,lo_HFP,s1097,s931 |
| s1112 | 66 | sumlo | DFP | lo | 137013/1000000 | s1106,lo_HFP,lo_FZP,lo_HDP,s972 |
| s1113 | 67 | sumlo | CFP | lo | 17607/125000 | s787,lo_FZP,lo_CZP,s1112,s978 |
| s1115 | 70 | sumlo | CQR | lo | 152383/1000000 | lo_CDR,s771,lo_DQR,s1041,s881 |
| s1117 | 74 | balance_lo | CFY | lo | 69473/500000 | s1095,lo_OYP,lo_HFY,s1075,lo_HCY,s1046,s929 |
| s1121 | 81 | balance_lo | HYQ | lo | 108909/500000 | s788,s1068,lo_ODQ,lo_HCY,lo_OCQ,s1058,hi_OCD |
| s1123 | 83 | balance_lo | ZQR | lo | 11619/100000 | lo_OZQ,lo_CDR,s771,lo_CDZ,lo_OZR,s788,hi_OCD |
| s1125 | 86 | balance_lo | ODP | lo | 206141/1000000 | s1069,lo_CZP,lo_DYP,s1099,lo_OYP,lo_CDZ,s862 |
| s1127 | 88 | balance_lo | FYQ | lo | 137923/500000 | s788,lo_OFY,lo_ODQ,s1117,lo_OCQ,s1065,hi_OCD |
| s1133 | 91 | balance_lo | OZP | lo | 248971/1000000 | s805,s1106,s1039,s1109,lo_OHD,lo_CZP,s281 |
| s1134 | 93 | balance_lo | HZP | lo | 61887/500000 | s1054,lo_FZP,lo_HDF,lo_CZP,s1095,s1106,s806 |
| s1136 | 94 | balance_lo | HZQ | lo | 48247/250000 | s1054,lo_YZQ,s1058,s1105,lo_HCY,s852,s923 |
| s1137 | 95 | balance_lo | FZQ | lo | 215521/1000000 | s1059,lo_YZQ,s1065,s1105,s1117,s852,s923 |
| s1139 | 98 | linear | OHC | hi | 305519/500000 | s1080,s648,s839 |
| s1140 | 99 | linear | HCQ | hi | 386737/500000 | hi_OCQ,s805,hi_OHQ |
| s1143 | 101 | linear | OHP | lo | 320547/1000000 | s1017,s1068,lo_OYP |
| s1144 | 102 | linear | OHQ | lo | 704563/1000000 | s1136,s964,lo_OZQ |
| s1145 | 103 | linear | OCD | lo | 432257/1000000 | lo_CDZ,s1099,s1070 |
| s1147 | 105 | linear | OCF | hi | 76059/125000 | s1104,s648,s840 |
| s1151 | 107 | linear | OCR | lo | 77159/250000 | lo_CZR,s1099,lo_OZR |
| s1161 | 111 | linear | OQR | lo | 30219/100000 | lo_OZQ,lo_OZR,s1123 |
| s1164 | 114 | linear | HCR | lo | 5509/10000 | lo_CZR,s1080,s1098 |
| s1166 | 115 | linear | HDP | hi | 132103/500000 | s1106,s969,s1134 |
| s1169 | 116 | linear | CDF | lo | 177431/250000 | lo_CDZ,s1104,s851 |
| s1171 | 118 | linear | CDP | lo | 451889/1000000 | lo_CDZ,lo_CZP,s1106 |
| s1172 | 119 | linear | CDQ | lo | 338383/1000000 | lo_CDR,s1115,lo_DQR |
| s1178 | 122 | linear | CPQ | lo | 181623/500000 | lo_CZP,s1105,s1014 |
| s1179 | 123 | linear | CPR | lo | 2237/6250 | lo_CZP,lo_CZR,s1100 |
| s1180 | 124 | linear | DFY | lo | 183399/500000 | s1112,lo_DYP,s818 |
| s1181 | 125 | linear | DFZ | lo | 247951/500000 | s1112,s1106,lo_FZP |
| s1182 | 125 | linear | DFP | hi | 142757/500000 | s976,s1106,lo_FZP |
| s1189 | 130 | support_z | ZPQ | lo | 6301/40000 | s852,s874 |
| s1190 | 131 | linear | OHC | lo | 432257/1000000 | s1145 |
| s1193 | 133 | linear | CDF | hi | 874091/1000000 | s1095 |
| s1205 | 138 | bary_hi | FYP | lo | 145281/1000000 | s839,s971,s1008,s1068,s1046,lo_HFP,lo_FZP |
| s1215 | 141 | bary_lo | OCY | lo | 148937/1000000 | hi_OHQ,s1121,s1051,s1068,s1190,lo_OCQ |
| s1224 | 143 | bary_lo | OHZ | hi | 583773/1000000 | s580,lo_CZR,lo_OZR,s1099,s1139,s435 |
| s1225 | 144 | bary_lo | OFZ | hi | 70943/125000 | s580,lo_CZR,lo_OZR,s1099,s1147,s882 |
| s1226 | 145 | bary_hi | HCZ | hi | 222237/1000000 | s580,lo_CZR,lo_OZR,s1099,s1190,s587 |
| s1229 | 151 | bary_hi | DZQ | lo | 155199/500000 | s580,lo_CZR,lo_OZR,s1099,lo_ODQ,s1172,lo_DQR |
| s1231 | 153 | bary_lo | ZQR | lo | 116759/1000000 | s580,lo_CZR,lo_OZR,s1099,s1161,s1115 |
| s1246 | 156 | bary_hi | CDP | hi | 528813/1000000 | hi_ODF,s1112,s1046,s1125,hi_OCD,s1193 |
| s1248 | 157 | bary_hi | CPQ | hi | 571671/1000000 | hi_ODF,s1112,s1046,s1125,hi_OCQ,hi_CDQ,s135 |
| s1254 | 163 | bary_lo | ODR | hi | 182677/500000 | hi_ODQ,lo_DQR,s1161,s1085,hi_ODQ |
| s1278 | 169 | bary_lo | HDY | hi | 298849/500000 | s931,s1205,lo_OYP,lo_OFY,hi_OHD,lo_HDF,s1166 |
| s1282 | 170 | bary_lo | CDY | lo | 497613/1000000 | s931,s1205,lo_OYP,lo_OFY,s1145,s1169,s1171 |
| s1284 | 171 | bary_lo | CYZ | lo | 57007/500000 | s931,s1205,lo_OYP,lo_OFY,s1099,s1104,lo_CZP |
| s1287 | 172 | bary_hi | DFY | hi | 293349/500000 | s931,s1205,lo_OYP,lo_OFY,hi_ODF,s1182 |
| s1288 | 173 | bary_hi | DYZ | lo | 4514/15625 | s931,s1205,lo_OYP,lo_OFY,s1070,s1181,s1106 |
| s1294 | 175 | bary_hi | OHY | lo | 12121/125000 | hi_OFQ,s1127,s1051,lo_OFY,lo_OHF,s1144 |
| s1299 | 179 | bary_hi | ODZ | lo | 217257/1000000 | s586,s1231,lo_OZR,lo_OZQ,lo_ODQ,s1085 |
| s1304 | 181 | bary_lo | OHP | hi | 230947/500000 | s281,s1171,lo_HDP,s1015,s1139,hi_OHD |
| s1305 | 182 | bary_lo | OCP | lo | 78277/250000 | s281,s1171,lo_HDP,s1015,s1190,s1145 |
| s1306 | 183 | bary_lo | OFP | hi | 48691/125000 | s281,s1171,lo_HDP,s1015,lo_OHF,s1147,hi_ODF |
| s1308 | 184 | bary_hi | HCP | hi | 362111/1000000 | s281,s1171,lo_HDP,s1015,s281 |
| s1315 | 191 | bary_hi | CYP | lo | 172579/1000000 | s969,s1106,s1134,lo_HDP,lo_HCY,s1282,s1284 |
| s1324 | 193 | bary_lo | HDP | hi | 12193/50000 | s1193,s1112,s1113,s1171,s281,lo_HDF |
| s1327 | 195 | bary_hi | DFP | hi | 140673/500000 | s1193,s1112,s1113,s1171,s1193 |
| s1328 | 196 | bary_hi | DPQ | lo | 260671/1000000 | s1193,s1112,s1113,s1171,s1172,s224 |
| s1333 | 197 | bary_hi | OHZ | lo | 55299/125000 | s1246,s1106,lo_CZP,lo_CDZ,s1190,lo_OHD,s1143 |
| s1340 | 200 | bary_lo | HDZ | hi | 630867/1000000 | s1246,s1106,lo_CZP,lo_CDZ,s281,s1324 |
| s1342 | 201 | bary_lo | HYZ | lo | 139279/1000000 | s1246,s1106,lo_CZP,lo_CDZ,lo_HCY,s1058,s1017 |
| s1344 | 203 | bary_hi | CFZ | lo | 149587/1000000 | s1246,s1106,lo_CZP,lo_CDZ,s1169,s1113 |
| s1345 | 204 | bary_hi | CYZ | lo | 117863/1000000 | s1246,s1106,lo_CZP,lo_CDZ,s1282,s1315 |
| s1346 | 205 | bary_lo | CZQ | lo | 1928/15625 | s1246,s1106,lo_CZP,lo_CDZ,s1172,s1178 |
| s1347 | 206 | bary_hi | DFZ | hi | 308063/500000 | s1246,s1106,lo_CZP,lo_CDZ,s1193,s1327 |
| s1349 | 207 | bary_hi | DZP | hi | 342813/1000000 | s1246,s1106,lo_CZP,lo_CDZ,s1246 |
| s1351 | 208 | bary_lo | FYZ | lo | 180131/1000000 | s1246,s1106,lo_CZP,lo_CDZ,s1117,s1180,s1205 |
| s1356 | 209 | bary_lo | ZPQ | hi | 162377/500000 | s1246,s1106,lo_CZP,lo_CDZ,s1248,s1328 |
| s1364 | 215 | bary_hi | HCR | hi | 338299/500000 | hi_CDQ,lo_DQR,s1115,lo_CDR,s281,s1140 |
| s1372 | 219 | bary_lo | CPR | hi | 214769/500000 | hi_CDQ,lo_DQR,s1115,lo_CDR,s1246,s1248 |
| s1381 | 221 | bary_lo | ZPR | hi | 242313/1000000 | hi_CDQ,lo_DQR,s1115,lo_CDR,lo_CZP,s1349,s1356 |
| s1385 | 223 | bary_hi | OYZ | lo | 72989/500000 | s1248,s1189,s1346,lo_CZP,s1215,lo_OYP,s1051 |
| s1386 | 224 | bary_lo | OCZ | lo | 67307/500000 | s1372,s1100,lo_CZR,lo_CZP,s1305,s1151 |
| s1387 | 225 | bary_lo | HCZ | lo | 163683/1000000 | s1372,s1100,lo_CZR,lo_CZP,s1015,s1164 |
| s1389 | 229 | bary_lo | ZPQ | lo | 83127/500000 | s1287,s1205,lo_DYP,s1112,s1229,s1137,lo_YZQ |
| s1390 | 230 | bary_lo | HCP | lo | 3507/15625 | s1347,lo_FZP,s1106,s1112,s1054,s1095,s1387 |
| s1391 | 231 | bary_lo | HDP | hi | 111629/500000 | s1347,lo_FZP,s1106,s1112,lo_HDF,s1340 |
| s1392 | 232 | bary_lo | HYP | lo | 137189/1000000 | s1347,lo_FZP,s1106,s1112,s1058,lo_HFY,s1342 |
| s1409 | 0 | sum | OHP | lo | 327157/1000000 | s1392,s1294,lo_OYP |
| s1413 | 1 | sum | OCD | lo | 444871/1000000 | lo_CDZ,s1386,s1299 |
| s1414 | 2 | sum | OCF | lo | 380883/1000000 | s1117,s1215,lo_OFY |
| s1415 | 3 | sum | OCR | lo | 160307/500000 | lo_CZR,s1386,lo_OZR |
| s1417 | 6 | sum | OFZ | lo | 419109/1000000 | s1351,lo_OFY,s1385 |
| s1419 | 7 | sum | OFP | lo | 331281/1000000 | s1205,lo_OFY,lo_OYP |
| s1420 | 7 | sub | FYP | hi | 25441/125000 | s1306,lo_OFY,lo_OYP |
| s1427 | 9 | sum | OQR | lo | 302759/1000000 | lo_OZQ,lo_OZR,s1231 |
| s1429 | 11 | sum | HCD | lo | 769337/1000000 | s1171,s1390,lo_HDP |
| s1433 | 13 | sum | CDF | lo | 738489/1000000 | lo_CDZ,s1344,s1181 |
| s1434 | 15 | sum | CDY | lo | 499759/1000000 | lo_CDZ,s1345,s1288 |
| s1442 | 21 | sumlo | OCY | lo | 16569/100000 | s1414,lo_OYP,s1305,lo_OFY,s1306 |
| s1445 | 25 | sumlo | OYZ | lo | 9969/62500 | lo_OFY,s1133,s1417,lo_OYP,s1306 |
| s1449 | 26 | sumlo | HCF | lo | 134177/1000000 | s1429,lo_HFY,lo_HCY,lo_HDF,s1278 |
| s1452 | 27 | sumlo | OCF | lo | 2611/6250 | s1433,s1190,s1449,s1413,s281 |
| s1455 | 31 | sumlo | OCP | lo | 335021/1000000 | s1179,s1190,s1390,s1415,s1364 |
| s1458 | 35 | sumlo | OCZ | lo | 2218/15625 | lo_CZP,s1415,lo_CZR,s1455,s1372 |
| s1459 | 36 | sumlo | CFY | lo | 149653/1000000 | s1433,lo_HCY,s1434,s1449,s281 |
| s1460 | 38 | sumlo | HCZ | lo | 43693/250000 | lo_CDZ,s1390,lo_CZP,s1429,s1246 |
| s1461 | 39 | sumlo | CFZ | lo | 77323/500000 | s1433,lo_CZP,lo_CDZ,s1113,s1246 |
| s1466 | 43 | sumlo | ODR | lo | 126089/500000 | lo_CDR,lo_ODQ,lo_DQR,s1413,hi_CDQ |
| s1474 | 49 | sumlo | CFP | lo | 39681/250000 | s1461,s1419,lo_FZP,s1452,s1225 |
| s1478 | 51 | sumlo | HCF | lo | 140909/1000000 | s1474,lo_HFY,s1459,lo_HFP,s1420 |
| s1479 | 52 | sumlo | HFZ | lo | 31201/250000 | s1351,lo_HFP,lo_FZP,lo_HFY,s1420 |
| s1482 | 53 | sumlo | OHY | lo | 52591/500000 | lo_HFY,lo_OYP,s1392,lo_OFY,s1420 |
| s1485 | 55 | sumlo | OZP | lo | 66047/250000 | lo_CZP,s1333,s1134,s1458,s1226 |
| s1486 | 56 | sumlo | HZR | lo | 65197/200000 | lo_CZR,s1333,s1460,lo_OZR,s648 |
| s1487 | 57 | sumlo | HZP | lo | 130587/1000000 | lo_FZP,s1333,s1479,s1485,s1225 |
| s1490 | 59 | diffhi | OZP | hi | 182877/500000 | s648,s1381,lo_CZP,lo_OZR,lo_CZR |
| s1493 | 60 | sumlo | HCZ | lo | 2738/15625 | lo_CZP,s1486,lo_CZR,s1487,s1381 |
| s1494 | 60 | sumlo | ZPR | lo | 95531/500000 | lo_CZP,s1486,lo_CZR,s1487,s1226 |
| s1496 | 61 | sumlo | CFZ | lo | 1997/12500 | lo_CDZ,lo_FZP,lo_CZP,s1181,s1349 |
| s1498 | 62 | sumlo | DZP | lo | 137183/500000 | lo_CDZ,s1389,lo_CZP,s1229,s850 |
| s1502 | 63 | sumlo | HZP | lo | 141183/1000000 | lo_FZP,s1409,lo_HFP,s1485,s1306 |
| s1504 | 64 | sumlo | CFP | lo | 8471/50000 | lo_CZP,s1419,lo_FZP,s1455,s1490 |
| s1506 | 65 | sumlo | DFP | lo | 159569/1000000 | s1171,lo_HFP,s1504,lo_HDP,s1308 |
| s1509 | 70 | sumlo | CQR | lo | 79339/500000 | lo_CDR,s1427,lo_DQR,s1415,s1254 |
| s1515 | 74 | balance_lo | CFY | lo | 162527/1000000 | s1478,lo_OYP,lo_HFY,s1455,lo_HCY,s1419,s1304 |
| s1518 | 78 | balance_lo | ODZ | lo | 230473/1000000 | lo_DZR,s1190,lo_OZR,s1429,s1466,s1493,s1364 |
| s1519 | 79 | balance_lo | HCP | lo | 59677/250000 | lo_FZP,s1190,s1485,s1478,s1419,s1493,s1225 |
| s1523 | 82 | balance_lo | HYP | lo | 2216/15625 | lo_FZP,s1482,s1485,lo_HFY,s1419,s1342,s1225 |
| s1526 | 85 | balance_lo | ODP | lo | 125223/500000 | lo_OHD,lo_CZP,s1409,lo_CDZ,s1391,s648,s1226 |
| s1540 | 100 | linear | OHD | hi | 984167/1000000 | s1340,s1518,s1224 |
| s1543 | 101 | linear | OHP | lo | 170003/500000 | s1523,s1482,lo_OYP |
| s1546 | 103 | linear | OCD | lo | 18617/40000 | lo_CDZ,s1458,s1518 |
| s1547 | 104 | linear | OCF | lo | 421217/1000000 | s1515,s1442,lo_OFY |
| s1549 | 105 | linear | OCF | hi | 291927/500000 | s1496,s648,s1225 |
| s1550 | 106 | linear | CFQ | hi | 751163/1000000 | s1547,hi_OCQ,hi_OFQ |
| s1556 | 107 | linear | OCR | lo | 20497/62500 | lo_CZR,s1458,lo_OZR |
| s1580 | 112 | linear | HCD | lo | 783597/1000000 | s1171,s1519,lo_HDP |
| s1586 | 114 | linear | HCR | lo | 594217/1000000 | lo_CZR,s1493,s1486 |
| s1589 | 115 | linear | HDP | hi | 107659/500000 | s1498,s1340,s1502 |
| s1593 | 117 | linear | CDF | lo | 390439/500000 | s1171,s1504,s1506 |
| s1597 | 118 | linear | CDP | lo | 230183/500000 | lo_CDZ,lo_CZP,s1498 |
| s1606 | 124 | linear | DFY | lo | 7957/20000 | s1506,lo_DYP,s1205 |
| s1614 | 131 | linear | OHC | lo | 18617/40000 | s1546 |
| s1617 | 133 | linear | CDF | hi | 859091/1000000 | s1478 |
| s1630 | 138 | bary_hi | FYP | lo | 2997/20000 | s1224,s1342,s1445,s1482,s1419,lo_HFP,lo_FZP |
| s1659 | 145 | bary_hi | HCZ | hi | 104737/500000 | s580,lo_CZR,lo_OZR,s1458,s1614,s1364 |
| s1668 | 156 | bary_hi | CDP | hi | 126639/250000 | hi_ODF,s1506,s1419,s1526,hi_OCD,s1617 |
| s1670 | 157 | bary_hi | CPQ | hi | 268741/500000 | hi_ODF,s1506,s1419,s1526,hi_OCQ,hi_CDQ,s1550 |
| s1707 | 169 | bary_lo | HDY | hi | 54343/100000 | s1306,s1630,lo_OYP,lo_OFY,s1540,lo_HDF,s1589 |
| s1731 | 182 | bary_lo | OCP | lo | 44841/125000 | s281,s1597,lo_HDP,s1519,s1614,s1546 |
| s1753 | 192 | bary_lo | OFP | hi | 184431/500000 | s1617,s1506,s1504,s1597,s1549,hi_ODF |
| s1758 | 195 | bary_hi | DFP | hi | 45861/200000 | s1617,s1506,s1504,s1597,s1617 |
| s1763 | 197 | bary_hi | OHZ | lo | 472927/1000000 | s1668,s1498,lo_CZP,lo_CDZ,s1614,lo_OHD,s1543 |
| s1774 | 203 | bary_hi | CFZ | lo | 174467/1000000 | s1668,s1498,lo_CZP,lo_CDZ,s1593,s1504 |
| s1777 | 206 | bary_hi | DFZ | hi | 117149/200000 | s1668,s1498,lo_CZP,lo_CDZ,s1617,s1758 |
| s1781 | 208 | bary_lo | FYZ | lo | 202247/1000000 | s1668,s1498,lo_CZP,lo_CDZ,s1515,s1606,s1630 |
| s1800 | 217 | bary_lo | CFR | hi | 322483/500000 | hi_CDQ,lo_DQR,s1509,lo_CDR,s1617,s1550 |
| s1802 | 219 | bary_lo | CPR | hi | 81357/200000 | hi_CDQ,lo_DQR,s1509,lo_CDR,s1668,s1670 |
| s1818 | 224 | bary_lo | OCZ | lo | 15699/100000 | s1802,s1494,lo_CZR,lo_CZP,s1731,s1556 |
| s1820 | 225 | bary_lo | HCZ | lo | 23803/125000 | s1802,s1494,lo_CZR,lo_CZP,s1519,s1586 |
| s1824 | 226 | bary_lo | ZPR | hi | 44157/200000 | s1802,s1494,lo_CZR,lo_CZP,s1802 |
| s1828 | 230 | bary_lo | HCP | lo | 128219/500000 | s1777,lo_FZP,s1498,s1506,s1580,s1478,s1820 |
| s1831 | 233 | bary_hi | CFP | lo | 17151/100000 | s1777,lo_FZP,s1498,s1506,s1593,s1774 |
| s1857 | 3 | sum | OCR | lo | 34299/100000 | lo_CZR,s1818,lo_OZR |
| s1862 | 7 | sub | FYP | hi | 91431/500000 | s1753,lo_OFY,lo_OYP |
| s1871 | 11 | sum | HCD | lo | 202451/250000 | s1597,s1828,lo_HDP |
| s1900 | 26 | sumlo | HCF | lo | 154501/1000000 | s1871,lo_HFY,lo_HCY,lo_HDF,s1707 |
| s1914 | 29 | sumlo | OCF | lo | 251717/500000 | s1774,s1614,s1900,s1818,s1659 |
| s1917 | 30 | sumlo | OCP | lo | 398821/1000000 | lo_CZP,s1614,s1828,s1818,s1659 |
| s1928 | 33 | sumlo | CFR | lo | 30289/50000 | s1774,s1857,lo_CZR,s1914,s648 |
| s1930 | 33 | diffhi | CFZ | hi | 194583/1000000 | s1800,s648,lo_CZR,s1914,s1857 |
| s1936 | 35 | sumlo | OCZ | lo | 84797/500000 | lo_CZP,s1857,lo_CZR,s1917,s1802 |
| s1956 | 41 | sumlo | CFZ | lo | 35541/200000 | s1831,lo_CZR,s1928,lo_CZP,s1802 |
| s1995 | 52 | sumlo | HFZ | lo | 37539/250000 | s1781,lo_HFP,lo_FZP,lo_HFY,s1862 |
| s2006 | 54 | sumlo | OFZ | lo | 522771/1000000 | s1956,s1763,s1995,s1936,s1659 |
| s2028 | 58 | sumlo | OZP | lo | 10341/31250 | lo_CZP,s2006,lo_FZP,s1936,s1930 |
| s2039 | 59 | sumlo | OCZ | lo | 89281/500000 | lo_CZP,lo_OZR,lo_CZR,s2028,s1824 |

## Conclusion

{"triangle":"OCZ","lower":"s2039","upper":"s648"}
