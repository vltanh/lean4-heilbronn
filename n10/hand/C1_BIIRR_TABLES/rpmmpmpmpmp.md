# Leaf rpmmpmpmpmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":-1,"OZR":1}

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
| 26 | interior_line | ["ZR","R","ODQ","Q",-1] |
| 27 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 28 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 29 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 30 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["OCR","Z","P","ROP",-1,"2849236491/7210000000","C045"] |
| 33 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 34 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 35 | capacity | ["DZQ","R","Y","DZY",-1,"87606223/127000000","C065"] |
| 36 | plu | ["OHDYZ","OYZ",-1] |
| 37 | plu | ["OHFYP","OFP",-1] |
| 38 | plu | ["COFZP","CFP",-1] |
| 39 | plu | ["DOHZP","DZP",-1] |
| 40 | plu | ["FOCYZ","FYZ",1] |
| 41 | plu | ["FOCYP","FYP",1] |
| 42 | plu | ["YODZP","YZP",1] |
| 43 | plu | ["YODPR","YPR",-1] |
| 44 | plu | ["YOZQR","YZR",1] |
| 45 | plu | ["ZOHCR","ZHR",-1] |
| 46 | plu | ["ZOHYQ","ZHQ",-1] |
| 47 | plu | ["ZOHPQ","ZPQ",-1] |
| 48 | plu | ["ZOCFR","ZFR",-1] |
| 49 | plu | ["ZODPR","ZPR",-1] |
| 50 | plu | ["ZOFYQ","ZFQ",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 279/1000 | ["cost","Z"] |
| lo_ODF | ODF | lo | 347/500 | ["cost","YP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","Y"] |
| lo_OFP | OFP | lo | 279/1000 | ["cost","Y"] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YZ"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 279/1000 | ["cost","Z"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDP | CDP | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 279/1000 | ["cost","Z"] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
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
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 1 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 2 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 3 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 4 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 5 | ["fan","OPQ","OZP","OZQ","ZPQ"] | ["fan","OPQ","Z"] |
| 6 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 7 | ["fan","HCP","CZP","HCZ","HZP"] | ["fan","HCP","Z"] |
| 8 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 9 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 10 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 11 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 12 | ["fan","CFR","CFZ","CZR","FZR"] | ["fan","CFR","Z"] |
| 13 | ["fan","CYP","CYZ","CZP","YZP"] | ["fan","CYP","Z"] |
| 14 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 15 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 16 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 17 | ["plu","OCD","OPQ","OCP","ODQ","OCQ","ODP"] | ["plu","OCDPQ"] |
| 18 | ["plu","ODY","OPQ","ODP","OYQ","ODQ","OYP"] | ["plu","ODYPQ"] |
| 19 | ["plu","ODZ","OQR","ODQ","OZR","ODR","OZQ"] | ["plu","ODZQR"] |
| 20 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 21 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 22 | ["plu","HCP","OCZ","CZP","OHC","HCZ","OCP"] | ["plu","COHZP"] |
| 23 | ["plu","CFR","OCD","CDF","OCR","CDR","OCF"] | ["plu","CODFR"] |
| 24 | ["plu","CFP","OCZ","CFZ","OCP","CZP","OCF"] | ["plu","COFZP"] |
| 25 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 26 | ["plu","CDF","HCZ","CDZ","HCF","CFZ","HCD"] | ["plu","CHDFZ"] |
| 27 | ["plu","CDZ","CFP","CDF","CZP","CDP","CFZ"] | ["plu","CDFZP"] |
| 28 | ["plu","CDY","CZQ","CDQ","CYZ","CDZ","CYQ"] | ["plu","CDYZQ"] |
| 29 | ["plu","CFP","CZR","CFR","CZP","CFZ","CPR"] | ["plu","CFZPR"] |
| 30 | ["plu","CYP","CZQ","CPQ","CYZ","CYQ","CZP"] | ["plu","CYZPQ"] |
| 31 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 32 | ["plu","CDQ","ODR","CDR","ODQ","DQR","OCD"] | ["plu","DOCQR"] |
| 33 | ["plu","DFY","ODP","DFP","ODY","DYP","ODF"] | ["plu","DOFYP"] |
| 34 | ["plu","DPQ","ODF","DFP","ODQ","DFQ","ODP"] | ["plu","DOFPQ"] |
| 35 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 36 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 37 | ["plu","CDP","DFY","CDF","DYP","CDY","DFP"] | ["plu","DCFYP"] |
| 38 | ["plu","CDQ","DFR","CDF","DQR","CDR","DFQ"] | ["plu","DCFQR"] |
| 39 | ["plu","HFQ","ODF","DFQ","OHF","HDF","OFQ"] | ["plu","FOHDQ"] |
| 40 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 41 | ["plu","FYP","HCF","CFP","HFY","CFY","HFP"] | ["plu","FHCYP"] |
| 42 | ["plu","CDY","HYQ","CYQ","HDY","DYQ","HCY"] | ["plu","YHCDQ"] |
| 43 | ["plu","CZQ","OYZ","CYZ","OZQ","OCZ","YZQ"] | ["plu","ZOCYQ"] |
| 44 | ["plu","ODZ","ZQR","DZQ","OZR","DZR","OZQ"] | ["plu","ZODQR"] |
| 45 | ["plu","CZQ","DYZ","CDZ","YZQ","CYZ","DZQ"] | ["plu","ZCDYQ"] |
| 46 | ["plu","CZQ","YZR","CYZ","ZQR","CZR","YZQ"] | ["plu","ZCYQR"] |
| 47 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 48 | ["plu","CDP","FYP","CFP","DYP","CYP","DFP"] | ["plu","PCDFY"] |
| 49 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 50 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 51 | ["plu","CQR","ODR","CDR","OQR","DQR","OCR"] | ["plu","ROCDQ"] |
| 52 | ["balance",[[1,"CDQ","OHR"],[-1,"DQR","OHC"],[-1,"CQR","OHD"],[-1,"CDR","OHQ"]]] | ["six","OHCDQR"] |
| 53 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 54 | ["balance",[[1,"CZP","ODQ"],[-1,"ZPQ","OCD"],[1,"CPQ","ODZ"],[1,"CZQ","ODP"]]] | ["six","ODCZPQ"] |
| 55 | ["balance",[[1,"HCY","OFP"],[1,"CYP","OHF"],[-1,"HYP","OCF"],[1,"HCP","OFY"]]] | ["six","OFHCYP"] |
| 56 | ["balance",[[1,"CDQ","OFR"],[-1,"DQR","OCF"],[-1,"CQR","ODF"],[-1,"CDR","OFQ"]]] | ["six","OFCDQR"] |
| 57 | ["balance",[[1,"CDQ","OYR"],[-1,"DQR","OCY"],[-1,"CQR","ODY"],[-1,"CDR","OYQ"]]] | ["six","OYCDQR"] |
| 58 | ["balance",[[-1,"CDQ","OZR"],[-1,"DQR","OCZ"],[1,"CQR","ODZ"],[-1,"CDR","OZQ"]]] | ["six","OZCDQR"] |
| 59 | ["balance",[[1,"CDQ","OPR"],[-1,"DQR","OCP"],[-1,"CQR","ODP"],[-1,"CDR","OPQ"]]] | ["six","OPCDQR"] |
| 60 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 61 | ["balance",[[1,"HCZ","OPR"],[1,"CZP","OHR"],[-1,"HZP","OCR"],[1,"HCP","OZR"]]] | ["six","ORHCZP"] |
| 62 | ["balance",[[-1,"CDY","OZR"],[1,"DYZ","OCR"],[-1,"CYZ","ODR"],[-1,"CDZ","OYR"]]] | ["six","ORCDYZ"] |
| 63 | ["balance",[[-1,"CFZ","OPR"],[1,"FZP","OCR"],[-1,"CZP","OFR"],[-1,"CFP","OZR"]]] | ["six","ORCFZP"] |
| 64 | ["balance",[[-1,"CYZ","OPR"],[1,"YZP","OCR"],[-1,"CZP","OYR"],[-1,"CYP","OZR"]]] | ["six","ORCYZP"] |
| 65 | ["balance",[[1,"OZP","HCR"],[-1,"ZPR","OHC"],[-1,"OPR","HCZ"],[-1,"OZR","HCP"]]] | ["six","HCOZPR"] |
| 66 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 67 | ["balance",[[1,"OZQ","CDR"],[-1,"ZQR","OCD"],[1,"OQR","CDZ"],[1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 68 | ["balance",[[-1,"ODF","CZP"],[-1,"DFP","OCZ"],[1,"OFP","CDZ"],[-1,"ODP","CFZ"]]] | ["six","CZODFP"] |
| 69 | ["balance",[[1,"HDF","CYZ"],[-1,"DFY","HCZ"],[1,"HFY","CDZ"],[1,"HDY","CFZ"]]] | ["six","CZHDFY"] |
| 70 | ["balance",[[1,"HDY","CZP"],[1,"DYP","HCZ"],[-1,"HYP","CDZ"],[1,"HDP","CYZ"]]] | ["six","CZHDYP"] |
| 71 | ["balance",[[1,"HFY","CZP"],[-1,"FYP","HCZ"],[1,"HYP","CFZ"],[1,"HFP","CYZ"]]] | ["six","CZHFYP"] |
| 72 | ["balance",[[1,"OCZ","DFR"],[1,"CZR","ODF"],[1,"OZR","CDF"],[-1,"OCR","DFZ"]]] | ["six","DFOCZR"] |
| 73 | ["balance",[[1,"HFZ","DYP"],[1,"FZP","HDY"],[-1,"HZP","DFY"],[1,"HFP","DYZ"]]] | ["six","DYHFZP"] |
| 74 | ["balance",[[-1,"HCF","DYZ"],[1,"CFY","HDZ"],[-1,"HFY","CDZ"],[-1,"HCY","DFZ"]]] | ["six","DZHCFY"] |
| 75 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 76 | ["balance",[[-1,"ODZ","FYR"],[1,"DZR","OFY"],[1,"OZR","DFY"],[1,"ODR","FYZ"]]] | ["six","FYODZR"] |
| 77 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 78 | ["balance",[[1,"HCD","FYZ"],[-1,"CDF","HYZ"],[-1,"HDF","CYZ"],[-1,"HCF","DYZ"]]] | ["six","YZHCDF"] |
| 79 | ["balance",[[-1,"OHC","FZP"],[-1,"HCF","OZP"],[1,"OCF","HZP"],[-1,"OHF","CZP"]]] | ["six","ZPOHCF"] |
| 80 | ["balance",[[1,"HCF","YZP"],[-1,"CFY","HZP"],[1,"HFY","CZP"],[1,"HCY","FZP"]]] | ["six","ZPHCFY"] |
| 81 | ["balance",[[1,"HFY","ZPQ"],[-1,"FYQ","HZP"],[1,"HYQ","FZP"],[1,"HFQ","YZP"]]] | ["six","ZPHFYQ"] |
| 82 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 83 | ["balance",[[1,"CDF","YZQ"],[1,"DFY","CZQ"],[1,"CFY","DZQ"],[-1,"CDY","FZQ"]]] | ["six","ZQCDFY"] |
| 84 | ["balance",[[-1,"OHC","DZR"],[-1,"HCD","OZR"],[1,"OCD","HZR"],[-1,"OHD","CZR"]]] | ["six","ZROHCD"] |
| 85 | ["balance",[[1,"OCD","FZR"],[-1,"CDF","OZR"],[-1,"ODF","CZR"],[-1,"OCF","DZR"]]] | ["six","ZROCDF"] |
| 86 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 87 | ["linear",{"OHD":-1,"ODZ":-1,"OHZ":1,"HDZ":1},"0"] | ["affine_quad","OHDZ",1] |
| 88 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 89 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 90 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 91 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 92 | ["linear",{"OCP":-1,"OPQ":1,"OCQ":1,"CPQ":-1},"0"] | ["affine_quad","OCPQ",-1] |
| 93 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 94 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 95 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 96 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 97 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 98 | ["linear",{"OFY":-1,"OYP":-1,"OFP":1,"FYP":-1},"0"] | ["affine_quad","OFYP",1] |
| 99 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 100 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 101 | ["linear",{"OZQ":-1,"OQR":1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",1] |
| 102 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 103 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 104 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 105 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 106 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 107 | ["linear",{"CDF":1,"CFP":-1,"CDP":-1,"DFP":-1},"0"] | ["affine_quad","CDFP",1] |
| 108 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 109 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 110 | ["linear",{"CFZ":-1,"CZP":-1,"CFP":1,"FZP":-1},"0"] | ["affine_quad","CFZP",1] |
| 111 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 112 | ["linear",{"CFZ":-1,"CZR":-1,"CFR":1,"FZR":-1},"0"] | ["affine_quad","CFZR",1] |
| 113 | ["linear",{"CYZ":-1,"CZP":-1,"CYP":1,"YZP":-1},"0"] | ["affine_quad","CYZP",1] |
| 114 | ["linear",{"CYZ":-1,"CZQ":-1,"CYQ":1,"YZQ":-1},"0"] | ["affine_quad","CYZQ",1] |
| 115 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 116 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 117 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 118 | ["support","ODZ","DZP","OZP","1023/1000"] | ["support_pent","ZOYPD"] |
| 119 | ["support","CYP","CFP","CFY","1023/1000"] | ["support_pent","CYHFP"] |
| 120 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 121 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 122 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 123 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 124 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 125 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["CFQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FQ"] |
| 126 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 127 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 128 | ["bary",["YZP",-1],[["OYP",-1],["CYP",-1],["DYP",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","YP"] |
| 129 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DFQ",-1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","DQ"] |
| 130 | ["bary",["OFZ",-1],[null,["OCF",-1],["OFP",-1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","OF"] |
| 131 | ["bary",["DZR",-1],[["ODR",-1],["CDR",-1],["DPR",-1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","DR"] |
| 132 | ["bary",["CZQ",1],[["OCQ",1],null,["CQR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","CQ"] |
| 133 | ["bary",["DFZ",1],[["ODF",1],["CDF",1],["DFR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DF"] |
| 134 | ["bary",["CDY",1],[["OCD",1],null,["CDF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","CD"] |
| 135 | ["bary",["CYQ",1],[["OCQ",1],["CDQ",1],["CFQ",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","CQ"] |
| 136 | ["bary",["DPQ",-1],[["ODQ",-1],null,["DFQ",-1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","DQ"] |
| 137 | ["bary",["ZPR",1],[["OZR",1],["DZR",1],["FZR",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","ZR"] |
| 138 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 139 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OF"] |
| 140 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 141 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 142 | ["bary",["CQR",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","CQ"] |
| 143 | ["bary",["DFR",1],[["ODF",1],null,["DFQ",1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","DF"] |
| 144 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],["DZQ",-1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DQ"] |
| 145 | ["bary",["DYR",-1],[["ODR",-1],["DFR",-1],["DZR",-1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DR"] |
| 146 | ["bary",["ODY",1],[null,["ODF",1],["ODP",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","OD"] |
| 147 | ["bary",["YZR",1],[["OZR",1],["FZR",1],["ZPR",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","ZR"] |
| 148 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 149 | ["bary",["CFY",1],[["OCF",1],null,["CFQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","CF"] |
| 150 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 151 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DQ"] |
| 152 | ["bary",["CYP",1],[["OCP",1],["CFP",1],["CPR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","CP"] |
| 153 | ["bary",["ODZ",-1],[null,["ODQ",-1],["ODR",-1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","OD"] |
| 154 | ["bary",["CDZ",1],[["OCD",1],["CDQ",-1],["CDR",-1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","CD"] |
| 155 | ["bary",["DYZ",1],[["ODY",1],["DYQ",1],["DYR",1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","DY"] |
| 156 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 157 | ["bary",["OCZ",1],[["OHC",1],null,["OCP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","OC"] |
| 158 | ["bary",["ODP",1],[["OHD",1],null,["ODY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OD"] |
| 159 | ["bary",["HCP",1],[null,["HCD",1],["HCY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HC"] |
| 160 | ["bary",["CDP",1],[["HCD",1],null,["CDY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CD"] |
| 161 | ["bary",["CFP",-1],[["HCF",1],["CDF",-1],["CFY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CF"] |
| 162 | ["bary",["CPQ",1],[["HCQ",1],["CDQ",1],["CYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CQ"] |
| 163 | ["bary",["CPR",1],[["HCR",1],["CDR",1],["CYR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CR"] |
| 164 | ["bary",["FYP",1],[["HFY",-1],["DFY",1],null],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","FY"] |
| 165 | ["bary",["ZPR",1],[["HZR",1],["DZR",1],["YZR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZR"] |
| 166 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 167 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OC"] |
| 168 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 169 | ["bary",["HDP",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HD"] |
| 170 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 171 | ["bary",["FYP",1],[["CFY",1],["DFY",1],null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","FY"] |
| 172 | ["bary",["OHR",-1],[["OHC",-1],["OHD",-1],["OHQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OH"] |
| 173 | ["bary",["OCR",1],[null,["OCD",1],["OCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OC"] |
| 174 | ["bary",["ODR",-1],[["OCD",-1],null,["ODQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OD"] |
| 175 | ["bary",["OFR",-1],[["OCF",-1],["ODF",-1],["OFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OF"] |
| 176 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 177 | ["bary",["OPR",-1],[["OCP",-1],["ODP",-1],["OPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OP"] |
| 178 | ["bary",["OQR",1],[["OCQ",-1],["ODQ",1],null],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OQ"] |
| 179 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 180 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 181 | ["bary",["ODZ",-1],[["OCD",-1],["ODF",1],["ODP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","OD"] |
| 182 | ["bary",["OZR",-1],[["OCR",-1],["OFR",1],["OPR",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","OR"] |
| 183 | ["bary",["HCZ",1],[null,["HCF",1],["HCP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","HC"] |
| 184 | ["bary",["HDZ",-1],[["HCD",-1],["HDF",1],["HDP",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","HD"] |
| 185 | ["bary",["HZP",-1],[["HCP",-1],["HFP",1],null],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","HP"] |
| 186 | ["bary",["CDZ",1],[null,["CDF",1],["CDP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CD"] |
| 187 | ["bary",["CZQ",1],[null,["CFQ",1],["CPQ",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CQ"] |
| 188 | ["bary",["CZR",1],[null,["CFR",1],["CPR",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CR"] |
| 189 | ["bary",["DYZ",1],[["CDY",1],["DFY",-1],["DYP",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","DY"] |
| 190 | ["bary",["DZR",-1],[["CDR",-1],["DFR",-1],["DPR",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","DR"] |
| 191 | ["bary",["HFZ",-1],[["HCF",-1],["HFY",-1],["HFP",-1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","HF"] |
| 192 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 193 | ["bary",["ODP",1],[null,["ODF",1],["ODY",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OD"] |
| 194 | ["bary",["OZP",1],[["ODZ",1],["OFZ",1],["OYZ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OZ"] |
| 195 | ["bary",["OPR",1],[["ODR",1],["OFR",1],["OYR",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OR"] |
| 196 | ["bary",["CDP",1],[null,["CDF",1],["CDY",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","CD"] |
| 197 | ["bary",["CYP",-1],[["CDY",-1],["CFY",-1],null],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","CY"] |
| 198 | ["bary",["CPQ",1],[["CDQ",1],["CFQ",1],["CYQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","CQ"] |
| 199 | ["bary",["CPR",1],[["CDR",1],["CFR",1],["CYR",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","CR"] |
| 200 | ["bary",["ZPR",1],[["DZR",1],["FZR",1],["YZR",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZR"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s22 | 2 | sub | DFY | hi | 374729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s26 | 3 | sub | OFP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_ODP |
| s30 | 4 | sub | ODR | hi | 6071/15625 | hi_ODQ,lo_DQR,lo_OQR |
| s53 | 9 | sub | CFP | hi | 351851/500000 | hi_CDF,lo_CDP,lo_DFP |
| s74 | 17 | sumlo | OPQ | lo | 70241/200000 | lo_OCP,lo_ODQ,lo_OCQ,lo_ODP,hi_OCD |
| s77 | 18 | sumlo | ODY | lo | 12661/125000 | lo_ODP,lo_OYQ,lo_ODQ,lo_OYP,hi_OPQ |
| s84 | 23 | sumlo | OCD | lo | 145133/500000 | lo_CDF,lo_OCR,lo_CDR,lo_OCF,hi_CFR |
| s90 | 27 | sumlo | CDZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDP,lo_CFZ,s53 |
| s99 | 31 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s106 | 35 | sumlo | ODP | lo | 5361/50000 | lo_DPQ,s77,lo_DYP,lo_ODQ,hi_DYQ |
| s113 | 37 | sumlo | CDP | lo | 120739/1000000 | lo_CDF,lo_DYP,lo_CDY,lo_DFP,s22 |
| s116 | 38 | sumlo | DFR | lo | 187789/1000000 | lo_CDF,lo_DQR,lo_CDR,s99,hi_CDQ |
| s121 | 40 | sumlo | HCF | lo | 48829/500000 | lo_CDF,lo_HFY,lo_CFY,lo_HDF,s22 |
| s137 | 49 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s139 | 50 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s145 | 51 | sumlo | CQR | lo | 3339/25000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,s30 |
| s146 | 51 | sumlo | ODR | lo | 221769/1000000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,hi_CQR |
| s151 | 52 | balance_lo | OHR | lo | 218071/500000 | lo_DQR,lo_OHC,s145,lo_OHD,lo_CDR,lo_OHQ,hi_CDQ |
| s152 | 53 | balance_lo | CFY | lo | 25357/250000 | s121,s77,lo_HFY,s84,lo_HCY,lo_ODF,hi_OHD |
| s158 | 55 | balance_lo | HYP | lo | 15323/125000 | lo_HCY,lo_OFP,lo_CYP,lo_OHF,lo_HCP,lo_OFY,hi_OCF |
| s162 | 56 | balance_lo | OFR | lo | 218071/500000 | lo_DQR,lo_OCF,s145,lo_ODF,lo_CDR,lo_OFQ,hi_CDQ |
| s163 | 57 | balance_lo | OYR | lo | 114581/1000000 | lo_DQR,lo_OCY,s145,s77,lo_CDR,lo_OYQ,hi_CDQ |
| s165 | 58 | balance_lo | ODZ | lo | 184807/1000000 | lo_CDQ,lo_OZR,lo_DQR,lo_OCZ,lo_CDR,lo_OZQ,hi_CQR |
| s168 | 59 | balance_lo | OPR | lo | 173641/1000000 | lo_DQR,lo_OCP,s145,s106,lo_CDR,s74,hi_CDQ |
| s170 | 60 | balance_lo | CDY | lo | 18373/62500 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s152,lo_ODQ,hi_OFQ |
| s173 | 61 | balance_lo | HZP | lo | 209163/1000000 | lo_HCZ,s168,lo_CZP,s151,lo_HCP,lo_OZR,hi_OCR |
| s175 | 62 | balance_lo | DYZ | lo | 18941/125000 | s170,lo_OZR,lo_CYZ,s146,s90,s163,hi_OCR |
| s176 | 63 | balance_lo | FZP | lo | 209163/1000000 | lo_CFZ,s168,lo_CZP,s162,lo_CFP,lo_OZR,hi_OCR |
| s177 | 64 | balance_lo | YZP | lo | 8343/62500 | lo_CYZ,s168,lo_CZP,s163,lo_CYP,lo_OZR,hi_OCR |
| s183 | 66 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s189 | 67 | balance_lo | ZQR | lo | 110451/1000000 | lo_OZQ,lo_CDR,lo_OQR,s90,lo_OZR,lo_CDQ,hi_OCD |
| s197 | 68 | balance_lo | CDZ | lo | 110963/1000000 | lo_ODF,lo_CZP,lo_DFP,lo_OCZ,s106,lo_CFZ,s26 |
| s205 | 77 | balance_lo | FYP | lo | 116861/1000000 | s170,lo_HFP,lo_HDY,lo_CFP,lo_HCY,lo_DFP,hi_HCD |
| s214 | 82 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s215 | 83 | balance_lo | FZQ | lo | 3169/20000 | lo_CDF,lo_YZQ,lo_DFY,lo_CZQ,s152,lo_DZQ,hi_CDY |
| s216 | 84 | balance_lo | HZR | lo | 33647/125000 | lo_OHC,lo_DZR,lo_HCD,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s217 | 85 | balance_lo | FZR | lo | 33647/125000 | lo_CDF,lo_OZR,lo_ODF,lo_CZR,lo_OCF,lo_DZR,hi_OCD |
| s223 | 88 | linear | OHP | lo | 38573/125000 | s158,lo_OHY,lo_OYP |
| s227 | 89 | linear | OCD | lo | 38877/100000 | s197,lo_OCZ,s165 |
| s230 | 90 | linear | OCF | lo | 71857/250000 | s152,lo_OCY,lo_OFY |
| s235 | 93 | linear | OFP | hi | 367619/500000 | lo_DFP,hi_ODF,s106 |
| s236 | 94 | linear | DFQ | lo | 20081/50000 | lo_ODF,lo_ODQ,hi_OFQ |
| s239 | 96 | linear | OQR | hi | 17831/40000 | lo_DQR,hi_ODQ,s146 |
| s242 | 98 | linear | OFP | lo | 302861/1000000 | s205,lo_OFY,lo_OYP |
| s251 | 101 | linear | OQR | lo | 296451/1000000 | lo_OZQ,lo_OZR,s189 |
| s260 | 102 | linear | HCP | lo | 395163/1000000 | lo_CZP,lo_HCZ,s173 |
| s262 | 103 | linear | HCQ | lo | 170657/500000 | lo_CZQ,lo_HCZ,s214 |
| s264 | 104 | linear | HCR | lo | 56897/125000 | lo_CZR,lo_HCZ,s216 |
| s265 | 105 | linear | HDY | lo | 38573/125000 | lo_DYP,lo_HDP,s158 |
| s270 | 106 | linear | DFZ | hi | 685739/1000000 | hi_CDF,s197,lo_CFZ |
| s271 | 107 | linear | CFP | hi | 675963/1000000 | hi_CDF,s113,lo_DFP |
| s273 | 108 | linear | CDY | lo | 355491/1000000 | s197,lo_CYZ,s175 |
| s276 | 109 | linear | CDQ | lo | 7989/25000 | lo_CDR,s145,lo_DQR |
| s280 | 110 | linear | CFP | lo | 395163/1000000 | lo_CFZ,lo_CZP,s176 |
| s282 | 111 | linear | CFQ | lo | 6889/20000 | lo_CFZ,lo_CZQ,s215 |
| s284 | 112 | linear | CFR | lo | 56897/125000 | lo_CFZ,lo_CZR,s217 |
| s285 | 113 | linear | CYP | lo | 4992/15625 | lo_CYZ,lo_CZP,s177 |
| s287 | 115 | linear | DFY | lo | 302861/1000000 | lo_DFP,lo_DYP,s205 |
| s289 | 116 | linear | DZP | hi | 47947/125000 | lo_DFP,s270,s176 |
| s297 | 118 | support_z | OZP | lo | 115513/1000000 | s165,s289 |
| s300 | 119 | support_z | CFY | lo | 108381/1000000 | s285,s271 |
| s304 | 120 | linear | OHC | lo | 38877/100000 | s227 |
| s305 | 121 | linear | HCD | hi | 907/1000 | lo_HDF |
| s317 | 123 | bary_hi | FYZ | lo | 1503/12500 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,lo_OFZ,lo_HFZ,lo_CFZ |
| s318 | 124 | bary_hi | FYP | lo | 167989/1000000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,s242,lo_HFP,s280 |
| s319 | 125 | bary_hi | FYQ | lo | 217847/1000000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,lo_OFQ,lo_HFQ,s282 |
| s335 | 126 | bary_hi | OCP | hi | 278861/500000 | hi_OHD,lo_HDP,s106,s223,hi_OHC,hi_OCD |
| s363 | 127 | bary_lo | OCY | lo | 23423/200000 | hi_OHQ,s183,lo_OYQ,lo_OHY,s304,lo_OCQ |
| s384 | 128 | bary_hi | YZP | lo | 82837/500000 | hi_OCD,s197,s165,lo_OCZ,lo_OYP,s285,lo_DYP |
| s395 | 129 | bary_hi | DYQ | lo | 398603/1000000 | hi_OCF,s300,lo_OFY,s363,lo_ODQ,s276,s236 |
| s400 | 130 | bary_lo | OFZ | hi | 591877/1000000 | s335,lo_CZP,s297,lo_OCZ,hi_OCF,s235 |
| s403 | 131 | bary_hi | DZR | lo | 14309/125000 | s335,lo_CZP,s297,lo_OCZ,s146,lo_CDR,lo_DPR |
| s411 | 132 | bary_hi | CZQ | hi | 41909/250000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,hi_OCQ,hi_CQR |
| s412 | 133 | bary_lo | DFZ | lo | 426049/1000000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,lo_ODF,lo_CDF,s116 |
| s422 | 134 | bary_hi | CDY | hi | 69967/100000 | hi_ODF,s287,lo_OFY,s77,hi_OCD,hi_CDF |
| s424 | 135 | bary_hi | CYQ | hi | 555179/1000000 | hi_ODF,s287,lo_OFY,s77,hi_OCQ,hi_CDQ,s139 |
| s441 | 136 | bary_hi | DPQ | lo | 115027/1000000 | hi_ODF,lo_DFP,s242,s106,lo_ODQ,s236 |
| s446 | 137 | bary_lo | ZPR | lo | 7509/62500 | hi_ODF,lo_DFP,s242,s106,lo_OZR,s403,s217 |
| s477 | 142 | bary_lo | CQR | lo | 33983/250000 | hi_ODQ,lo_DQR,s251,s146,lo_OCQ,s276 |
| s478 | 143 | bary_lo | DFR | lo | 50493/250000 | hi_ODQ,lo_DQR,s251,s146,lo_ODF,s236 |
| s491 | 145 | bary_hi | DYR | lo | 75009/500000 | s400,s317,lo_OYZ,lo_OFY,s146,s478,s403 |
| s494 | 146 | bary_lo | ODY | lo | 50673/500000 | s235,s318,lo_OYP,lo_OFY,lo_ODF,s106 |
| s496 | 147 | bary_lo | YZR | lo | 118717/1000000 | s235,s318,lo_OYP,lo_OFY,lo_OZR,s217,s446 |
| s498 | 148 | bary_lo | HDY | hi | 5357/8000 | hi_OFQ,s319,lo_OYQ,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s501 | 149 | bary_hi | CFY | hi | 181521/500000 | hi_OFQ,s319,lo_OYQ,lo_OFY,hi_OCF,s282 |
| s502 | 150 | bary_hi | DFY | hi | 32453/50000 | hi_OFQ,s319,lo_OYQ,lo_OFY,hi_ODF,hi_DFQ |
| s504 | 151 | bary_lo | DYQ | hi | 168227/250000 | hi_OFQ,s319,lo_OYQ,lo_OFY,hi_ODQ,hi_DFQ |
| s507 | 153 | bary_hi | ODZ | lo | 47763/250000 | s239,s189,lo_OZR,lo_OZQ,lo_ODQ,s146 |
| s508 | 154 | bary_hi | CDZ | hi | 249561/1000000 | s239,s189,lo_OZR,lo_OZQ,hi_OCD,s276,lo_CDR |
| s510 | 155 | bary_lo | DYZ | lo | 34703/200000 | s239,s189,lo_OZR,lo_OZQ,s494,s395,s491 |
| s525 | 156 | bary_lo | HYP | lo | 7199/50000 | s305,s113,lo_HDP,s260,lo_HCY,s265 |
| s552 | 158 | bary_lo | ODP | lo | 5523/50000 | s498,lo_DYP,s525,lo_HDP,lo_OHD,s494 |
| s558 | 159 | bary_hi | HCP | hi | 642149/1000000 | s498,lo_DYP,s525,lo_HDP,s305,lo_HCY |
| s561 | 160 | bary_lo | CDP | lo | 145757/1000000 | s498,lo_DYP,s525,lo_HDP,lo_HCD,s273 |
| s562 | 161 | bary_lo | CFP | hi | 613957/1000000 | s498,lo_DYP,s525,lo_HDP,s121,hi_CDF,s300 |
| s565 | 162 | bary_lo | CPQ | lo | 2371/8000 | s498,lo_DYP,s525,lo_HDP,s262,s276,lo_CYQ |
| s566 | 163 | bary_lo | CPR | lo | 42283/250000 | s498,lo_DYP,s525,lo_HDP,s264,lo_CDR,lo_CYR |
| s576 | 166 | bary_lo | HYZ | lo | 57767/500000 | hi_CDF,s412,lo_CFZ,s197,lo_HCY,s265,lo_HFY |
| s584 | 167 | bary_hi | OCP | hi | 108479/200000 | hi_CDF,lo_DFP,s280,s561,hi_OCD,hi_OCF |
| s587 | 168 | bary_hi | OPQ | hi | 12082/15625 | hi_CDF,lo_DFP,s280,s561,lo_OCQ,hi_ODQ,hi_OFQ |
| s589 | 169 | bary_lo | HDP | hi | 42541/125000 | hi_CDF,lo_DFP,s280,s561,s305,lo_HDF |
| s590 | 170 | bary_lo | HYP | lo | 11797/62500 | hi_CDF,lo_DFP,s280,s561,lo_HCY,s265,lo_HFY |
| s601 | 172 | bary_hi | OHR | lo | 555143/1000000 | hi_CDQ,lo_DQR,s477,lo_CDR,s304,lo_OHD,lo_OHQ |
| s602 | 173 | bary_hi | OCR | hi | 36207/100000 | hi_CDQ,lo_DQR,s477,lo_CDR,hi_OCD,hi_OCQ |
| s603 | 174 | bary_hi | ODR | lo | 59939/250000 | hi_CDQ,lo_DQR,s477,lo_CDR,s227,lo_ODQ |
| s604 | 175 | bary_hi | OFR | lo | 6363/12500 | hi_CDQ,lo_DQR,s477,lo_CDR,s230,lo_ODF,lo_OFQ |
| s605 | 176 | bary_hi | OYR | lo | 5767/40000 | hi_CDQ,lo_DQR,s477,lo_CDR,s363,s494,lo_OYQ |
| s608 | 178 | bary_hi | OQR | hi | 403139/1000000 | hi_CDQ,lo_DQR,s477,lo_CDR,lo_OCQ,hi_ODQ |
| s609 | 179 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,s477,lo_CDR,s305,s137 |
| s620 | 180 | bary_lo | DFR | lo | 242601/1000000 | hi_CDQ,lo_DQR,s477,lo_CDR,lo_CDF,s236 |
| s629 | 181 | bary_lo | ODZ | hi | 55921/200000 | s562,s176,lo_CZP,lo_CFZ,hi_OCD,lo_ODF,s552 |
| s633 | 184 | bary_lo | HDZ | hi | 669687/1000000 | s562,s176,lo_CZP,lo_CFZ,s305,lo_HDF,s589 |
| s635 | 185 | bary_lo | HZP | hi | 433521/1000000 | s562,s176,lo_CZP,lo_CFZ,s558,lo_HFP |
| s636 | 186 | bary_lo | CDZ | lo | 127203/1000000 | s562,s176,lo_CZP,lo_CFZ,lo_CDF,s561 |
| s638 | 187 | bary_lo | CZQ | lo | 97069/1000000 | s562,s176,lo_CZP,lo_CFZ,s282,s565 |
| s639 | 188 | bary_lo | CZR | lo | 94567/1000000 | s562,s176,lo_CZP,lo_CFZ,s284,s566 |
| s643 | 190 | bary_hi | DZR | lo | 115661/1000000 | s562,s176,lo_CZP,lo_CFZ,lo_CDR,s620,lo_DPR |
| s653 | 192 | bary_lo | DZP | lo | 105527/1000000 | s424,lo_YZQ,s638,lo_CYZ,s561,lo_DYP,s441 |
| s656 | 193 | bary_lo | ODP | lo | 2849/25000 | s502,s318,lo_DYP,lo_DFP,lo_ODF,s494 |
| s658 | 194 | bary_lo | OZP | lo | 36257/250000 | s502,s318,lo_DYP,lo_DFP,s507,lo_OFZ,lo_OYZ |
| s660 | 195 | bary_lo | OPR | lo | 27649/125000 | s502,s318,lo_DYP,lo_DFP,s603,s604,s605 |
| s661 | 196 | bary_lo | CDP | lo | 1203/8000 | s502,s318,lo_DYP,lo_DFP,lo_CDF,s273 |
| s662 | 197 | bary_lo | CYP | hi | 110237/200000 | s502,s318,lo_DYP,lo_DFP,s422,s501 |
| s664 | 198 | bary_lo | CPQ | lo | 2391/8000 | s502,s318,lo_DYP,lo_DFP,s276,s282,lo_CYQ |
| s665 | 199 | bary_lo | CPR | lo | 21443/125000 | s502,s318,lo_DYP,lo_DFP,lo_CDR,s284,lo_CYR |
| s667 | 200 | bary_lo | ZPR | lo | 27619/200000 | s502,s318,lo_DYP,lo_DFP,s643,s217,s496 |
| s675 | 0 | sum | OCD | lo | 82251/200000 | s636,lo_OCZ,s507 |
| s677 | 1 | sum | OCP | lo | 82757/250000 | lo_CZP,lo_OCZ,s658 |
| s690 | 8 | sum | HDY | lo | 11711/31250 | lo_DYP,lo_HDP,s590 |
| s693 | 10 | sum | CDY | lo | 196859/500000 | s636,lo_CYZ,s510 |
| s694 | 11 | sum | CDQ | lo | 80483/250000 | lo_CDR,s477,lo_DQR |
| s696 | 12 | sum | CFR | lo | 456743/1000000 | lo_CFZ,s639,s217 |
| s697 | 13 | sum | CYP | lo | 175837/500000 | lo_CYZ,lo_CZP,s384 |
| s698 | 14 | sum | CYQ | lo | 283069/1000000 | lo_CYZ,s638,lo_YZQ |
| s700 | 15 | sum | DFY | lo | 353989/1000000 | lo_DFP,lo_DYP,s318 |
| s701 | 16 | sum | DZQ | lo | 39889/125000 | lo_DQR,s643,s189 |
| s703 | 18 | sumlo | ODY | lo | 124587/1000000 | s656,lo_OYQ,lo_ODQ,lo_OYP,s587 |
| s704 | 19 | sumlo | ODZ | lo | 215407/1000000 | lo_ODQ,lo_OZR,s603,lo_OZQ,s608 |
| s712 | 20 | sumlo | HCF | lo | 109301/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s498 |
| s715 | 21 | sumlo | OCF | lo | 34703/100000 | lo_CDF,s304,s712,s675,s305 |
| s718 | 22 | sumlo | OCZ | lo | 20849/200000 | lo_CZP,s304,lo_HCZ,s677,s558 |
| s722 | 25 | sumlo | CFY | lo | 59303/500000 | lo_CDF,lo_HCY,s693,s712,s305 |
| s723 | 27 | sumlo | CDZ | lo | 63951/500000 | lo_CDF,lo_CZP,s661,lo_CFZ,s562 |
| s724 | 28 | sumlo | CDY | lo | 394573/1000000 | s694,lo_CYZ,s723,s698,s411 |
| s726 | 29 | sumlo | CZR | lo | 9517/100000 | s696,lo_CZP,lo_CFZ,s665,s562 |
| s727 | 30 | sumlo | CZQ | lo | 98189/1000000 | s664,lo_CYZ,s698,lo_CZP,s662 |
| s730 | 32 | sumlo | ODR | lo | 48947/200000 | lo_CDR,lo_ODQ,lo_DQR,s675,hi_CDQ |
| s731 | 33 | sumlo | ODP | lo | 11729/100000 | lo_DFP,s703,lo_DYP,lo_ODF,s502 |
| s732 | 34 | sumlo | DPQ | lo | 119351/1000000 | lo_DFP,lo_ODQ,s236,s731,hi_ODF |
| s733 | 35 | sumlo | ODP | lo | 29503/250000 | s732,s703,lo_DYP,lo_ODQ,s504 |
| s735 | 37 | sumlo | CDP | lo | 6239/40000 | lo_CDF,lo_DYP,s724,lo_DFP,s502 |
| s738 | 39 | sumlo | HFQ | lo | 54461/500000 | s236,lo_OHF,lo_HDF,lo_OFQ,hi_ODF |
| s739 | 40 | sumlo | HCF | lo | 116433/1000000 | lo_CDF,lo_HFY,s722,lo_HDF,s502 |
| s748 | 43 | sumlo | OYZ | lo | 54713/500000 | lo_CYZ,lo_OZQ,s718,lo_YZQ,s411 |
| s749 | 44 | sumlo | ZQR | lo | 14461/100000 | s701,lo_OZR,s643,lo_OZQ,s629 |
| s751 | 45 | sumlo | DYZ | lo | 247991/1000000 | s723,lo_YZQ,lo_CYZ,s701,s411 |
| s753 | 46 | sumlo | YZR | lo | 133023/1000000 | lo_CYZ,s749,s726,lo_YZQ,s411 |
| s762 | 54 | balance_lo | ZPQ | lo | 121981/500000 | lo_CZP,lo_ODQ,s664,s704,s727,s733,hi_OCD |
| s763 | 58 | balance_lo | CQR | lo | 43171/250000 | s694,lo_OZR,lo_DQR,s718,lo_CDR,lo_OZQ,s629 |
| s765 | 61 | balance_lo | HZP | lo | 150453/500000 | lo_HCZ,s660,lo_CZP,s601,s260,lo_OZR,s602 |
| s766 | 63 | balance_lo | FZP | lo | 36133/125000 | lo_CFZ,s660,lo_CZP,s604,s280,lo_OZR,s602 |
| s767 | 64 | balance_lo | YZP | lo | 11511/62500 | lo_CYZ,s660,lo_CZP,s605,s697,lo_OZR,s602 |
| s769 | 65 | balance_lo | OZP | lo | 80989/500000 | s667,s304,s660,lo_HCZ,lo_OZR,s260,s609 |
| s776 | 66 | balance_lo | HYQ | lo | 112279/500000 | s694,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,s690,hi_OCD |
| s788 | 70 | balance_lo | HYP | lo | 104483/500000 | s690,lo_CZP,lo_DYP,lo_HCZ,lo_HDP,lo_CYZ,s508 |
| s790 | 72 | balance_lo | DFZ | lo | 107631/250000 | s718,s620,s726,lo_ODF,lo_OZR,lo_CDF,s602 |
| s791 | 74 | balance_lo | CFY | lo | 24133/200000 | s739,s751,lo_HFY,s723,lo_HCY,s790,s633 |
| s792 | 75 | balance_lo | FYQ | lo | 254541/1000000 | s694,lo_OFY,lo_ODQ,s791,lo_OCQ,s700,hi_OCD |
| s793 | 76 | balance_lo | FYR | lo | 52291/200000 | s643,lo_OFY,lo_OZR,s700,s730,s317,s629 |
| s797 | 77 | balance_lo | FYP | lo | 106633/500000 | s724,lo_HFP,s690,s280,lo_HCY,lo_DFP,s305 |
| s798 | 78 | balance_lo | FYZ | lo | 32443/250000 | lo_CDF,s576,lo_HDF,lo_CYZ,s739,s751,s305 |
| s805 | 80 | balance_lo | CFY | lo | 65713/500000 | s739,s767,lo_HFY,lo_CZP,lo_HCY,s766,s635 |
| s807 | 82 | balance_lo | HZQ | lo | 187253/1000000 | lo_HCD,lo_YZQ,s690,s727,lo_HCY,s701,s422 |
| s808 | 83 | balance_lo | FZQ | lo | 40373/200000 | lo_CDF,lo_YZQ,s700,s727,s805,s701,s422 |
| s809 | 84 | balance_lo | HZR | lo | 76203/250000 | s304,s643,lo_HCD,lo_OZR,lo_OHD,s726,hi_OCD |
| s812 | 86 | linear | HCQ | hi | 79723/100000 | hi_OCQ,s304,hi_OHQ |
| s818 | 89 | linear | OCD | lo | 223777/500000 | s723,s718,s704 |
| s820 | 91 | linear | OCP | lo | 359223/1000000 | lo_CZP,s718,s769 |
| s830 | 97 | linear | OFZ | lo | 166099/500000 | s798,lo_OFY,s748 |
| s835 | 100 | linear | OYQ | lo | 147713/500000 | s748,lo_OZQ,lo_YZQ |
| s838 | 101 | linear | OQR | lo | 33061/100000 | lo_OZQ,lo_OZR,s749 |
| s839 | 102 | linear | HCP | lo | 243453/500000 | lo_CZP,lo_HCZ,s765 |
| s840 | 103 | linear | HCQ | lo | 189221/500000 | s727,lo_HCZ,s807 |
| s842 | 105 | linear | HDY | lo | 197483/500000 | lo_DYP,lo_HDP,s788 |
| s849 | 108 | linear | CDY | lo | 468893/1000000 | s723,lo_CYZ,s751 |
| s850 | 109 | linear | CDQ | lo | 89671/250000 | lo_CDR,s763,lo_DQR |
| s853 | 110 | linear | CFP | lo | 59383/125000 | lo_CFZ,lo_CZP,s766 |
| s854 | 111 | linear | CFQ | lo | 196527/500000 | lo_CFZ,s727,s808 |
| s857 | 113 | linear | CYP | lo | 5784/15625 | lo_CYZ,lo_CZP,s767 |
| s858 | 114 | linear | CYQ | lo | 284189/1000000 | lo_CYZ,s727,lo_YZQ |
| s861 | 115 | linear | DFY | lo | 199633/500000 | lo_DFP,lo_DYP,s797 |
| s862 | 116 | linear | DFZ | lo | 487591/1000000 | lo_DFP,s653,s766 |
| s864 | 117 | linear | DZQ | lo | 353271/1000000 | lo_DQR,s643,s749 |
| s868 | 119 | support_z | CFY | lo | 148013/1000000 | s857,s562 |
| s871 | 120 | linear | OHC | lo | 223777/500000 | s818 |
| s872 | 122 | linear | CDF | hi | 883567/1000000 | s739 |
| s886 | 127 | bary_lo | OCY | lo | 35217/250000 | hi_OHQ,s776,s835,lo_OHY,s871,lo_OCQ |
| s890 | 128 | bary_hi | YZP | lo | 39333/200000 | hi_OCD,s723,s704,s718,lo_OYP,s857,lo_DYP |
| s900 | 131 | bary_hi | DZR | lo | 14877/125000 | s584,lo_CZP,s769,s718,s730,lo_CDR,lo_DPR |
| s906 | 132 | bary_hi | CZQ | hi | 161279/1000000 | s602,s726,lo_OZR,s718,hi_OCQ,hi_CQR |
| s915 | 134 | bary_hi | CDY | hi | 664429/1000000 | hi_ODF,s861,lo_OFY,s703,hi_OCD,s872 |
| s924 | 138 | bary_lo | OHZ | hi | 267751/500000 | hi_ODQ,s864,lo_OZQ,s704,hi_OHD,hi_OHQ |
| s925 | 139 | bary_lo | OFZ | hi | 260991/500000 | hi_ODQ,s864,lo_OZQ,s704,hi_ODF,hi_OFQ |
| s935 | 140 | bary_lo | OFR | hi | 843629/1000000 | hi_ODQ,lo_DQR,s838,s730,hi_ODF,hi_OFQ |
| s938 | 141 | bary_hi | OYR | lo | 149223/1000000 | hi_ODQ,lo_DQR,s838,s730,s703,s835 |
| s957 | 144 | bary_hi | DYQ | lo | 112029/250000 | s925,s798,s748,lo_OFY,lo_ODQ,s236,s864 |
| s962 | 148 | bary_lo | HDY | hi | 651423/1000000 | hi_OFQ,s792,s835,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s966 | 150 | bary_hi | DFY | hi | 316741/500000 | hi_OFQ,s792,s835,lo_OFY,hi_ODF,hi_DFQ |
| s970 | 152 | bary_hi | CYP | hi | 505187/1000000 | s935,s793,s938,lo_OFY,s584,s562,s665 |
| s971 | 153 | bary_hi | ODZ | lo | 54139/250000 | s608,s749,lo_OZR,lo_OZQ,lo_ODQ,s730 |
| s973 | 154 | bary_hi | CDZ | hi | 103009/500000 | s608,s749,lo_OZR,lo_OZQ,hi_OCD,s850,lo_CDR |
| s983 | 156 | bary_lo | HYP | lo | 44313/200000 | s305,s735,lo_HDP,s839,lo_HCY,s842 |
| s996 | 157 | bary_lo | OCZ | lo | 58421/500000 | s558,lo_CZP,s765,lo_HCZ,s871,s820 |
| s1008 | 159 | bary_hi | HCP | hi | 634749/1000000 | s962,lo_DYP,s983,lo_HDP,s305,lo_HCY |
| s1010 | 160 | bary_lo | CDP | lo | 166019/1000000 | s962,lo_DYP,s983,lo_HDP,lo_HCD,s849 |
| s1011 | 161 | bary_lo | CFP | hi | 59353/100000 | s962,lo_DYP,s983,lo_HDP,s739,s872,s868 |
| s1013 | 162 | bary_lo | CPQ | lo | 161491/500000 | s962,lo_DYP,s983,lo_HDP,s840,s850,s858 |
| s1015 | 164 | bary_hi | FYP | hi | 13729/31250 | s962,lo_DYP,s983,lo_HDP,lo_HFY,s966 |
| s1017 | 165 | bary_lo | ZPR | lo | 7377/50000 | s962,lo_DYP,s983,lo_HDP,s809,s900,s753 |
| s1026 | 166 | bary_lo | HYZ | lo | 124783/1000000 | s872,s862,lo_CFZ,s723,lo_HCY,s842,lo_HFY |
| s1035 | 168 | bary_hi | OPQ | hi | 150269/200000 | s872,lo_DFP,s853,s1010,lo_OCQ,hi_ODQ,hi_OFQ |
| s1037 | 169 | bary_lo | HDP | hi | 231441/1000000 | s872,lo_DFP,s853,s1010,s305,lo_HDF |
| s1038 | 170 | bary_lo | HYP | lo | 63839/250000 | s872,lo_DFP,s853,s1010,lo_HCY,s842,lo_HFY |
| s1046 | 171 | bary_lo | FYP | lo | 921/4000 | s872,lo_DFP,s853,s1010,s868,s861 |
| s1052 | 172 | bary_hi | OHR | lo | 603451/1000000 | hi_CDQ,lo_DQR,s763,lo_CDR,s871,lo_OHD,lo_OHQ |
| s1053 | 174 | bary_hi | ODR | lo | 63193/250000 | hi_CDQ,lo_DQR,s763,lo_CDR,s818,lo_ODQ |
| s1054 | 175 | bary_hi | OFR | lo | 141629/250000 | hi_CDQ,lo_DQR,s763,lo_CDR,s715,lo_ODF,lo_OFQ |
| s1055 | 176 | bary_hi | OYR | lo | 8301/50000 | hi_CDQ,lo_DQR,s763,lo_CDR,s886,s703,s835 |
| s1058 | 179 | bary_hi | HCR | hi | 681859/1000000 | hi_CDQ,lo_DQR,s763,lo_CDR,s305,s812 |
| s1071 | 181 | bary_lo | ODZ | hi | 134111/500000 | s1011,s766,lo_CZP,lo_CFZ,hi_OCD,lo_ODF,s733 |
| s1073 | 183 | bary_lo | HCZ | lo | 11817/125000 | s1011,s766,lo_CZP,lo_CFZ,s739,s839 |
| s1074 | 184 | bary_lo | HDZ | hi | 322229/500000 | s1011,s766,lo_CZP,lo_CFZ,s305,lo_HDF,s1037 |
| s1076 | 185 | bary_lo | HZP | hi | 21063/50000 | s1011,s766,lo_CZP,lo_CFZ,s1008,lo_HFP |
| s1077 | 186 | bary_lo | CDZ | lo | 33689/250000 | s1011,s766,lo_CZP,lo_CFZ,lo_CDF,s1010 |
| s1079 | 187 | bary_lo | CZQ | lo | 22439/200000 | s1011,s766,lo_CZP,lo_CFZ,s854,s1013 |
| s1082 | 189 | bary_hi | DYZ | hi | 189539/500000 | s1011,s766,lo_CZP,lo_CFZ,s915,s861,lo_DYP |
| s1089 | 191 | bary_hi | HFZ | lo | 51061/500000 | s970,s890,lo_CZP,lo_CYZ,s739,lo_HFY,lo_HFP |
| s1090 | 193 | bary_lo | ODP | lo | 60087/500000 | s966,s1046,lo_DYP,lo_DFP,lo_ODF,s703 |
| s1092 | 194 | bary_lo | OZP | lo | 45267/250000 | s966,s1046,lo_DYP,lo_DFP,s971,s830,s748 |
| s1094 | 196 | bary_lo | CDP | lo | 170721/1000000 | s966,s1046,lo_DYP,lo_DFP,lo_CDF,s849 |
| s1096 | 198 | bary_lo | CPQ | lo | 327247/1000000 | s966,s1046,lo_DYP,lo_DFP,s850,s854,s858 |
| s1108 | 0 | sum | OCD | lo | 234077/500000 | s1077,s996,s971 |
| s1110 | 1 | sum | OCP | lo | 39091/100000 | lo_CZP,s996,s1092 |
| s1114 | 5 | sum | OPQ | lo | 51803/100000 | s1092,lo_OZQ,s762 |
| s1116 | 6 | sum | HCD | lo | 750627/1000000 | s1094,s839,lo_HDP |
| s1117 | 7 | sum | HCP | lo | 244221/500000 | lo_CZP,s1073,s765 |
| s1120 | 8 | sum | HDY | lo | 110339/250000 | lo_DYP,lo_HDP,s1038 |
| s1123 | 9 | sum | CDF | lo | 147757/200000 | s1094,s853,lo_DFP |
| s1125 | 10 | sum | CDY | lo | 475747/1000000 | s1077,lo_CYZ,s751 |
| s1128 | 13 | sum | CYP | lo | 76533/200000 | lo_CYZ,lo_CZP,s890 |
| s1129 | 14 | sum | CYQ | lo | 59639/200000 | lo_CYZ,s1079,lo_YZQ |
| s1133 | 16 | sum | DZQ | lo | 178313/500000 | lo_DQR,s900,s749 |
| s1136 | 18 | sumlo | ODY | lo | 133153/1000000 | s1090,s835,lo_ODQ,lo_OYP,s1035 |
| s1137 | 19 | sumlo | ODZ | lo | 21841/100000 | lo_ODQ,lo_OZR,s1053,lo_OZQ,s608 |
| s1139 | 20 | sumlo | HCF | lo | 120439/1000000 | s1116,lo_HFY,lo_HCY,lo_HDF,s962 |
| s1143 | 21 | sumlo | OCF | lo | 213357/500000 | s1123,s871,s1139,s1108,s305 |
| s1149 | 24 | sumlo | OCZ | lo | 128113/1000000 | lo_CFZ,s1110,lo_CZP,s1143,s1011 |
| s1151 | 26 | sumlo | HCZ | lo | 779/8000 | s1077,s1139,lo_CFZ,s1116,s872 |
| s1155 | 27 | sumlo | CDZ | lo | 14251/100000 | s1123,lo_CZP,s1094,lo_CFZ,s1011 |
| s1163 | 33 | sumlo | ODP | lo | 15179/125000 | lo_DFP,s1136,lo_DYP,lo_ODF,s966 |
| s1164 | 36 | sumlo | DFP | lo | 11657/125000 | s1123,lo_HDP,s1094,lo_HDF,s305 |
| s1167 | 37 | sumlo | CDP | lo | 89247/500000 | s1123,lo_DYP,s1125,s1164,s966 |
| s1176 | 41 | sumlo | HCF | lo | 131897/1000000 | s853,lo_HFY,s868,lo_HFP,s1015 |
| s1180 | 42 | sumlo | HYQ | lo | 130401/500000 | s1129,s1120,s957,lo_HCY,s915 |
| s1187 | 43 | sumlo | OYZ | lo | 63751/500000 | lo_CYZ,lo_OZQ,s1149,lo_YZQ,s906 |
| s1200 | 45 | sumlo | CZQ | lo | 61227/500000 | s1155,lo_YZQ,lo_CYZ,s1133,s1082 |
| s1201 | 45 | sumlo | DYZ | lo | 143911/500000 | s1155,lo_YZQ,lo_CYZ,s1133,s906 |
| s1207 | 47 | sumlo | DFP | lo | 19151/200000 | s1167,lo_HFP,s853,lo_HDP,s1008 |
| s1210 | 48 | sumlo | CDP | lo | 183969/1000000 | s853,lo_DYP,s1128,s1207,s1015 |
| s1217 | 54 | balance_lo | ZPQ | lo | 261979/1000000 | lo_CZP,lo_ODQ,s1096,s1137,s1200,s1163,hi_OCD |
| s1218 | 58 | balance_lo | CQR | lo | 201031/1000000 | s850,lo_OZR,lo_DQR,s1149,lo_CDR,lo_OZQ,s1071 |
| s1219 | 58 | balance_lo | ODZ | lo | 7201/31250 | s850,lo_OZR,lo_DQR,s1149,lo_CDR,lo_OZQ,hi_CQR |
| s1220 | 59 | balance_lo | OPR | lo | 64847/250000 | lo_DQR,s1110,s1218,s1163,lo_CDR,s1114,hi_CDQ |
| s1221 | 61 | balance_lo | HZP | lo | 350219/1000000 | s1151,s1220,lo_CZP,s1052,s1117,lo_OZR,s602 |
| s1222 | 63 | balance_lo | FZP | lo | 334161/1000000 | lo_CFZ,s1220,lo_CZP,s1054,s853,lo_OZR,s602 |
| s1223 | 64 | balance_lo | YZP | lo | 103779/500000 | lo_CYZ,s1220,lo_CZP,s1055,s1128,lo_OZR,s602 |
| s1227 | 65 | balance_lo | OZP | lo | 200503/1000000 | s1017,s871,s1220,s1151,lo_OZR,s1117,s1058 |
| s1249 | 69 | balance_lo | HCZ | lo | 99369/1000000 | lo_HDF,lo_CYZ,lo_HFY,s1155,s1120,lo_CFZ,s966 |
| s1250 | 70 | balance_lo | HYP | lo | 143037/500000 | s1120,lo_CZP,lo_DYP,s1249,lo_HDP,lo_CYZ,s973 |
| s1251 | 71 | balance_lo | HCZ | lo | 99931/1000000 | lo_HFY,lo_CZP,s1250,lo_CFZ,lo_HFP,lo_CYZ,s1015 |
| s1256 | 73 | balance_lo | DFY | lo | 109047/250000 | s1089,lo_DYP,s1222,s1120,lo_HFP,s1201,s1076 |
| s1268 | 78 | balance_lo | FYZ | lo | 153031/1000000 | s1123,s1026,lo_HDF,lo_CYZ,s1176,s1201,s305 |
| s1273 | 79 | balance_lo | OCF | lo | 438327/1000000 | s871,s1222,s1176,s1227,lo_OHF,lo_CZP,s1076 |
| s1274 | 80 | balance_lo | CFY | lo | 159289/1000000 | s1176,s1223,lo_HFY,lo_CZP,lo_HCY,s1222,s1076 |
| s1275 | 81 | balance_lo | FYQ | lo | 318381/1000000 | lo_HFY,s1217,s1180,s1222,s738,s1223,s1076 |
| s1278 | 83 | balance_lo | FZQ | lo | 269293/1000000 | s1123,lo_YZQ,s1256,s1200,s1274,s1133,s915 |
| s1285 | 87 | linear | OHD | hi | 118691/125000 | s1074,s1219,s924 |
| s1295 | 91 | linear | OCP | lo | 26351/62500 | lo_CZP,s1149,s1227 |
| s1299 | 92 | linear | OPQ | lo | 562863/1000000 | s1096,s1295,hi_OCQ |
| s1303 | 95 | linear | ODY | lo | 73551/500000 | s1201,s1071,s1187 |
| s1311 | 97 | linear | OFZ | lo | 373533/1000000 | s1268,lo_OFY,s1187 |
| s1315 | 99 | linear | OFQ | lo | 367913/500000 | s1278,s1311,lo_OZQ |
| s1316 | 100 | linear | OYQ | lo | 156751/500000 | s1187,lo_OZQ,lo_YZQ |
| s1325 | 102 | linear | HCP | lo | 10863/20000 | lo_CZP,s1251,s1221 |
| s1328 | 105 | linear | HDY | lo | 236037/500000 | lo_DYP,lo_HDP,s1250 |
| s1350 | 113 | linear | CYP | lo | 196779/500000 | lo_CYZ,lo_CZP,s1223 |
| s1364 | 119 | support_z | CFY | lo | 165221/1000000 | s1350,s1011 |
| s1371 | 122 | linear | CDF | hi | 868103/1000000 | s1176 |
| s1469 | 148 | bary_lo | HDY | hi | 300861/500000 | hi_OFQ,s1275,s1316,lo_OFY,s1285,lo_HDF,hi_HDQ |
| s1489 | 156 | bary_lo | HYP | lo | 292233/1000000 | s305,s1210,lo_HDP,s1325,lo_HCY,s1328 |
| s1515 | 158 | bary_lo | ODP | lo | 129997/1000000 | s1469,lo_DYP,s1489,lo_HDP,lo_OHD,s1303 |
| s1523 | 161 | bary_lo | CFP | hi | 6923/12500 | s1469,lo_DYP,s1489,lo_HDP,s1176,s1371,s1364 |
| s1580 | 175 | bary_hi | OFR | lo | 313289/500000 | hi_CDQ,lo_DQR,s1218,lo_CDR,s1273,lo_ODF,s1315 |
| s1583 | 177 | bary_hi | OPR | lo | 145209/500000 | hi_CDQ,lo_DQR,s1218,lo_CDR,s1295,s1515,s1299 |
| s1610 | 182 | bary_lo | OZR | hi | 86493/1000000 | s1523,s1222,lo_CZP,lo_CFZ,s602,s1580,s1583 |

## Conclusion

{"triangle":"OZR","lower":"lo_OZR","upper":"s1610"}
