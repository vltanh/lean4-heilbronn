# Leaf rpmmppmmppppm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":1,"QYZ":1,"OFY":1,"OZR":1,"HPQ":-1}

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
| 12 | extreme | ["CYQ","H","YQH",1] |
| 13 | extreme | ["CYR","D","YRD",1] |
| 14 | extreme | ["CYR","F","YRF",1] |
| 15 | extreme | ["CYR","H","YRH",1] |
| 16 | extreme | ["DFZ","O","FZO",-1] |
| 17 | extreme | ["DYQ","O","YQO",-1] |
| 18 | extreme | ["DYR","O","YRO",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 22 | interior_line | ["CY","P","HCDF","P",-1] |
| 23 | interior_line | ["CZ","R","CDQ","R",-1] |
| 24 | interior_line | ["CP","R","CDQ","R",-1] |
| 25 | interior_line | ["DZ","R","CDQ","R",1] |
| 26 | interior_line | ["DP","R","CDQ","R",1] |
| 27 | interior_line | ["ZP","Y","OHC","Y",1] |
| 28 | interior_line | ["ZR","R","ODQ","Q",-1] |
| 29 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 30 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 31 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 32 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 33 | capacity | ["OCR","Z","P","ROP",-1,"2849236491/7210000000","C045"] |
| 34 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 35 | capacity | ["DZQ","R","Y","DZY",-1,"87606223/127000000","C065"] |
| 36 | plu | ["OHDYZ","OYZ",-1] |
| 37 | plu | ["OHFYP","OYP",-1] |
| 38 | plu | ["DOHZP","DZP",-1] |
| 39 | plu | ["FOHYZ","FYZ",1] |
| 40 | plu | ["YODPR","YPR",-1] |
| 41 | plu | ["YOZQR","YZR",1] |
| 42 | plu | ["ZOHCR","ZHR",-1] |
| 43 | plu | ["ZOHYQ","ZHQ",-1] |
| 44 | plu | ["ZOHPQ","ZPQ",-1] |
| 45 | plu | ["ZOCPR","ZPR",-1] |
| 46 | plu | ["ZODFR","ZFR",-1] |
| 47 | plu | ["ZOFYQ","ZFQ",-1] |
| 48 | plu | ["POFZQ","PFQ",-1] |
| 49 | plu | ["POFZR","PFR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 279/1000 | ["cost","Z"] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","P"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","ZP"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OPQ | OPQ | lo | 279/1000 | ["cost","Z"] |
| lo_OQR | OQR | lo | 279/1000 | ["cost","Z"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HPQ | HPQ | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CPQ | CPQ | lo | 279/1000 | ["cost","Z"] |
| lo_CPR | CPR | lo | 279/1000 | ["cost","Z"] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 279/1000 | ["cost","P"] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FYQ | FYQ | lo | 279/1000 | ["cost","P"] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZPQ | ZPQ | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_OCR | OCR | hi | 2849236491/7210000000 | "C045" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HCR | HCR | hi | 29356581307/36050000000 | "C071" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |
| hi_FYQ | FYQ | hi | 245797/317500 | "C044" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 1 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 2 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 3 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 4 | ["fan","OCR","CZR","OCZ","OZR"] | ["fan","OCR","Z"] |
| 5 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 6 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 7 | ["fan","OQR","OZQ","OZR","ZQR"] | ["fan","OQR","Z"] |
| 8 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 9 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 10 | ["fan","HCR","CZR","HCZ","HZR"] | ["fan","HCR","Z"] |
| 11 | ["fan","HDQ","DPQ","HDP","HPQ"] | ["fan","HDQ","P"] |
| 12 | ["fan","HFZ","FZP","HFP","HZP"] | ["fan","HFZ","P"] |
| 13 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 14 | ["fan","CPQ","CZP","CZQ","ZPQ"] | ["fan","CPQ","Z"] |
| 15 | ["fan","FYZ","FYP","FZP","YZP"] | ["fan","FYZ","P"] |
| 16 | ["fan","FYQ","FPQ","FYP","YPQ"] | ["fan","FYQ","P"] |
| 17 | ["plu","OCF","OHZ","OCZ","OHF","OFZ","OHC"] | ["plu","OHCFZ"] |
| 18 | ["plu","OCY","OHQ","OCQ","OHY","OHC","OYQ"] | ["plu","OHCYQ"] |
| 19 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 20 | ["plu","ODZ","OQR","ODQ","OZR","ODR","OZQ"] | ["plu","ODZQR"] |
| 21 | ["plu","OFQ","OYZ","OFY","OZQ","OFZ","OYQ"] | ["plu","OFYZQ"] |
| 22 | ["plu","HCF","OHZ","HCZ","OHF","HFZ","OHC"] | ["plu","HOCFZ"] |
| 23 | ["plu","HYQ","OHC","HCQ","OHY","HCY","OHQ"] | ["plu","HOCYQ"] |
| 24 | ["plu","HFY","OHZ","HFZ","OHY","HYZ","OHF"] | ["plu","HOFYZ"] |
| 25 | ["plu","HCP","HDQ","HCD","HPQ","HCQ","HDP"] | ["plu","HCDPQ"] |
| 26 | ["plu","HCR","OCZ","CZR","OHC","HCZ","OCR"] | ["plu","COHZR"] |
| 27 | ["plu","HCR","OCP","CPR","OHC","HCP","OCR"] | ["plu","COHPR"] |
| 28 | ["plu","CPR","OCZ","CZP","OCR","CZR","OCP"] | ["plu","COZPR"] |
| 29 | ["plu","CPR","HCZ","CZP","HCR","CZR","HCP"] | ["plu","CHZPR"] |
| 30 | ["plu","CDP","CZQ","CDQ","CZP","CDZ","CPQ"] | ["plu","CDZPQ"] |
| 31 | ["plu","CDQ","ODR","CDR","ODQ","DQR","OCD"] | ["plu","DOCQR"] |
| 32 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 33 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 34 | ["plu","CDQ","DFR","CDF","DQR","CDR","DFQ"] | ["plu","DCFQR"] |
| 35 | ["plu","HFP","OFZ","FZP","OHF","HFZ","OFP"] | ["plu","FOHZP"] |
| 36 | ["plu","HFY","OYZ","FYZ","OHY","HYZ","OFY"] | ["plu","YOHFZ"] |
| 37 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 38 | ["plu","HZR","OCZ","CZR","OHZ","HCZ","OZR"] | ["plu","ZOHCR"] |
| 39 | ["plu","OCZ","ZPR","CZP","OZR","CZR","OZP"] | ["plu","ZOCPR"] |
| 40 | ["plu","DZP","HCZ","CDZ","HZP","CZP","HDZ"] | ["plu","ZHCDP"] |
| 41 | ["plu","HCZ","ZPR","CZP","HZR","CZR","HZP"] | ["plu","ZHCPR"] |
| 42 | ["plu","CZQ","DZP","CDZ","ZPQ","CZP","DZQ"] | ["plu","ZCDPQ"] |
| 43 | ["plu","DYZ","FZQ","DFZ","YZQ","DZQ","FYZ"] | ["plu","ZDFYQ"] |
| 44 | ["plu","DFP","OZP","DZP","OFP","FZP","ODP"] | ["plu","PODFZ"] |
| 45 | ["plu","DFP","YZP","DYP","FZP","DZP","FYP"] | ["plu","PDFYZ"] |
| 46 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 47 | ["plu","HZQ","OYQ","HYQ","OZQ","OHQ","YZQ"] | ["plu","QOHYZ"] |
| 48 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 49 | ["plu","CPQ","ODQ","CDQ","OPQ","DPQ","OCQ"] | ["plu","QOCDP"] |
| 50 | ["plu","CQR","ODR","CDR","OQR","DQR","OCR"] | ["plu","ROCDQ"] |
| 51 | ["balance",[[-1,"HCP","OFQ"],[1,"CPQ","OHF"],[1,"HPQ","OCF"],[1,"HCQ","OFP"]]] | ["six","OFHCPQ"] |
| 52 | ["balance",[[-1,"CDQ","OZR"],[-1,"DQR","OCZ"],[1,"CQR","ODZ"],[-1,"CDR","OZQ"]]] | ["six","OZCDQR"] |
| 53 | ["balance",[[1,"CDQ","OPR"],[-1,"DQR","OCP"],[-1,"CQR","ODP"],[-1,"CDR","OPQ"]]] | ["six","OPCDQR"] |
| 54 | ["balance",[[1,"CDZ","OPR"],[-1,"DZP","OCR"],[1,"CZP","ODR"],[1,"CDP","OZR"]]] | ["six","ORCDZP"] |
| 55 | ["balance",[[-1,"ODZ","HCR"],[1,"DZR","OHC"],[1,"OZR","HCD"],[1,"ODR","HCZ"]]] | ["six","HCODZR"] |
| 56 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 57 | ["balance",[[-1,"OCD","HPQ"],[-1,"CDQ","OHP"],[1,"ODQ","HCP"],[-1,"OCQ","HDP"]]] | ["six","HPOCDQ"] |
| 58 | ["balance",[[-1,"OFZ","HPQ"],[-1,"FZP","OHQ"],[1,"OZP","HFQ"],[-1,"OFP","HZQ"]]] | ["six","HQOFZP"] |
| 59 | ["balance",[[1,"OHP","CDQ"],[1,"HPQ","OCD"],[-1,"OPQ","HCD"],[1,"OHQ","CDP"]]] | ["six","CDOHPQ"] |
| 60 | ["balance",[[1,"OZQ","CDR"],[-1,"ZQR","OCD"],[1,"OQR","CDZ"],[1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 61 | ["balance",[[-1,"HYZ","CDQ"],[-1,"YZQ","HCD"],[1,"HZQ","CDY"],[-1,"HYQ","CDZ"]]] | ["six","CDHYZQ"] |
| 62 | ["balance",[[-1,"HYP","CDQ"],[1,"YPQ","HCD"],[-1,"HPQ","CDY"],[-1,"HYQ","CDP"]]] | ["six","CDHYPQ"] |
| 63 | ["balance",[[-1,"FYZ","CDQ"],[-1,"YZQ","CDF"],[1,"FZQ","CDY"],[-1,"FYQ","CDZ"]]] | ["six","CDFYZQ"] |
| 64 | ["balance",[[-1,"YZP","CDQ"],[1,"ZPQ","CDY"],[-1,"YPQ","CDZ"],[-1,"YZQ","CDP"]]] | ["six","CDYZPQ"] |
| 65 | ["balance",[[1,"OHP","CZQ"],[1,"HPQ","OCZ"],[-1,"OPQ","HCZ"],[1,"OHQ","CZP"]]] | ["six","CZOHPQ"] |
| 66 | ["balance",[[1,"ODY","CZP"],[1,"DYP","OCZ"],[1,"OYP","CDZ"],[-1,"ODP","CYZ"]]] | ["six","CZODYP"] |
| 67 | ["balance",[[1,"HDP","CZQ"],[-1,"DPQ","HCZ"],[1,"HPQ","CDZ"],[1,"HDQ","CZP"]]] | ["six","CZHDPQ"] |
| 68 | ["balance",[[1,"ODF","YZQ"],[1,"DFQ","OYZ"],[-1,"OFQ","DYZ"],[1,"ODQ","FYZ"]]] | ["six","YZODFQ"] |
| 69 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 70 | ["balance",[[1,"OHC","FZP"],[-1,"HCF","OZP"],[1,"OCF","HZP"],[1,"OHF","CZP"]]] | ["six","ZPOHCF"] |
| 71 | ["balance",[[1,"OHC","ZPR"],[-1,"HCR","OZP"],[1,"OCR","HZP"],[1,"OHR","CZP"]]] | ["six","ZPOHCR"] |
| 72 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 73 | ["balance",[[-1,"OHC","DZR"],[-1,"HCD","OZR"],[1,"OCD","HZR"],[-1,"OHD","CZR"]]] | ["six","ZROHCD"] |
| 74 | ["balance",[[1,"OCD","FZR"],[-1,"CDF","OZR"],[-1,"ODF","CZR"],[-1,"OCF","DZR"]]] | ["six","ZROCDF"] |
| 75 | ["balance",[[-1,"OHC","FPQ"],[1,"HCF","OPQ"],[-1,"OCF","HPQ"],[-1,"OHF","CPQ"]]] | ["six","PQOHCF"] |
| 76 | ["linear",{"OHC":-1,"OCZ":1,"OHZ":1,"HCZ":-1},"0"] | ["affine_quad","OHCZ",1] |
| 77 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 78 | ["linear",{"OHC":-1,"OCR":1,"OHR":1,"HCR":-1},"0"] | ["affine_quad","OHCR",1] |
| 79 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 80 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 81 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 82 | ["linear",{"OCZ":-1,"OZR":-1,"OCR":1,"CZR":-1},"0"] | ["affine_quad","OCZR",-1] |
| 83 | ["linear",{"OCP":-1,"OPQ":1,"OCQ":1,"CPQ":-1},"0"] | ["affine_quad","OCPQ",-1] |
| 84 | ["linear",{"OCQ":1,"OQR":1,"OCR":-1,"CQR":-1},"0"] | ["affine_quad","OCQR",1] |
| 85 | ["linear",{"ODF":-1,"OFZ":1,"ODZ":-1,"DFZ":1},"0"] | ["affine_quad","ODFZ",-1] |
| 86 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 87 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 88 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 89 | ["linear",{"OFZ":1,"OZP":-1,"OFP":-1,"FZP":-1},"0"] | ["affine_quad","OFZP",-1] |
| 90 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 91 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 92 | ["linear",{"OZP":-1,"OPQ":1,"OZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","OZPQ",-1] |
| 93 | ["linear",{"OZQ":-1,"OQR":1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",1] |
| 94 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 95 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 96 | ["linear",{"HDP":-1,"HPQ":-1,"HDQ":1,"DPQ":-1},"0"] | ["affine_quad","HDPQ",1] |
| 97 | ["linear",{"HFZ":1,"HZP":-1,"HFP":-1,"FZP":-1},"0"] | ["affine_quad","HFZP",-1] |
| 98 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 99 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 100 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 101 | ["linear",{"CZP":-1,"CPQ":1,"CZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","CZPQ",-1] |
| 102 | ["linear",{"CZP":-1,"CPR":1,"CZR":-1,"ZPR":-1},"0"] | ["affine_quad","CZPR",-1] |
| 103 | ["linear",{"DFZ":1,"DZQ":1,"DFQ":-1,"FZQ":-1},"0"] | ["affine_quad","DFZQ",1] |
| 104 | ["linear",{"DZP":-1,"DPQ":1,"DZQ":-1,"ZPQ":1},"0"] | ["affine_quad","DZPQ",1] |
| 105 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 106 | ["support","CDP","OCD","ODP","1023/1000"] | ["support_pent","DPYOC"] |
| 107 | ["support","DZQ","DPQ","ZPQ","1023/1000"] | ["support_pent","QZYPD"] |
| 108 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 109 | ["linear",{"OHC":1,"OHF":-1},"0"] | ["c1_norm","c_ge_f"] |
| 110 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 111 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 112 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 113 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["CDQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DQ"] |
| 114 | ["bary",["YPQ",-1],[["OPQ",-1],["HPQ",-1],["CPQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","PQ"] |
| 115 | ["bary",["CDP",1],[["OCD",1],["HCD",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CD"] |
| 116 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DQ"] |
| 117 | ["bary",["HDY",-1],[["OHD",-1],null,["HDF",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","HD"] |
| 118 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DF"] |
| 119 | ["bary",["YZR",1],[["OZR",1],["HZR",1],["FZR",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","ZR"] |
| 120 | ["bary",["OYQ",1],[null,["OHQ",1],["OZQ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OQ"] |
| 121 | ["bary",["HFY",-1],[["OHF",-1],null,["HFZ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HF"] |
| 122 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],null],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","CZ"] |
| 123 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DQ"] |
| 124 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],null],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FZ"] |
| 125 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","CD"] |
| 126 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 127 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CD"] |
| 128 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["DFQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DF"] |
| 129 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","OH"] |
| 130 | ["bary",["OFZ",-1],[null,["OCF",-1],["OFR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","OF"] |
| 131 | ["bary",["OZQ",1],[null,["OCQ",-1],["OQR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","OQ"] |
| 132 | ["bary",["HCZ",1],[["OHC",-1],null,["HCR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","HC"] |
| 133 | ["bary",["HDZ",-1],[["OHD",-1],["HCD",-1],["HDR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","HD"] |
| 134 | ["bary",["HZR",-1],[["OHR",-1],["HCR",-1],null],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","HR"] |
| 135 | ["bary",["CZQ",1],[["OCQ",1],null,["CQR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","CQ"] |
| 136 | ["bary",["DFZ",1],[["ODF",1],["CDF",1],["DFR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DF"] |
| 137 | ["bary",["DZP",1],[["ODP",1],["CDP",1],["DPR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DP"] |
| 138 | ["bary",["DZQ",-1],[["ODQ",-1],["CDQ",-1],["DQR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DQ"] |
| 139 | ["bary",["ZQR",1],[["OQR",1],["CQR",1],null],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","QR"] |
| 140 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 141 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OF"] |
| 142 | ["bary",["OHR",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OH"] |
| 143 | ["bary",["ODR",-1],[null,null,["ODQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OD"] |
| 144 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 145 | ["bary",["HCR",1],[["OHC",-1],["HCD",1],["HCQ",1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","HC"] |
| 146 | ["bary",["CQR",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","CQ"] |
| 147 | ["bary",["OPQ",1],[null,["OFQ",1],["OZQ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","OQ"] |
| 148 | ["bary",["HFP",-1],[["OHF",-1],null,["HFZ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","HF"] |
| 149 | ["bary",["CPQ",1],[["OCQ",1],["CFQ",1],["CZQ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","CQ"] |
| 150 | ["bary",["DFP",1],[["ODF",1],null,["DFZ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","DF"] |
| 151 | ["bary",["DPQ",-1],[["ODQ",-1],["DFQ",-1],["DZQ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","DQ"] |
| 152 | ["bary",["FPQ",-1],[["OFQ",-1],null,["FZQ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","FQ"] |
| 153 | ["bary",["ZPQ",1],[["OZQ",-1],["FZQ",1],null],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","ZQ"] |
| 154 | ["bary",["OYZ",-1],[null,["OFY",-1],["OYQ",-1]],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","OY"] |
| 155 | ["bary",["DZQ",-1],[["ODQ",-1],["DFQ",-1],null],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","DQ"] |
| 156 | ["bary",["CDP",1],[["OCD",1],["CDF",1],["CDQ",-1]],"OFQ",["FPQ","OPQ","OFP"]] | ["bary","OFQ","P","CD"] |
| 157 | ["bary",["HZP",-1],[["OHP",-1],["HYP",-1],["HPQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HP"] |
| 158 | ["bary",["ODZ",-1],[null,["ODQ",-1],["ODR",-1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","OD"] |
| 159 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |
| 160 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 161 | ["bary",["OHP",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OH"] |
| 162 | ["bary",["HDP",-1],[null,["HCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HD"] |
| 163 | ["bary",["OCZ",1],[["OHC",1],null,["OCR",1]],"HCR",["CZR","HZR","HCZ"]] | ["bary","HCR","Z","OC"] |
| 164 | ["bary",["ZPQ",1],[["HZQ",1],["DZQ",1],["YZQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZQ"] |
| 165 | ["bary",["ZPR",1],[["HZR",1],["DZR",1],["YZR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZR"] |
| 166 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","OC"] |
| 167 | ["bary",["DFP",1],[["HDF",1],null,["DFZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","DF"] |
| 168 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCQ",1]],"HDQ",["DPQ","HPQ","HDP"]] | ["bary","HDQ","P","OC"] |
| 169 | ["bary",["YZP",1],[["HYZ",1],["FYZ",1],["YZQ",1]],"HFQ",["FPQ","HPQ","HFP"]] | ["bary","HFQ","P","YZ"] |
| 170 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 171 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 172 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 173 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 174 | ["bary",["CZQ",1],[null,["CDQ",1],["CPQ",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CQ"] |
| 175 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 176 | ["bary",["DYZ",1],[["CDY",1],null,["DYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DY"] |
| 177 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DPQ",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DQ"] |
| 178 | ["bary",["OCR",1],[null,["OCD",1],["OCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OC"] |
| 179 | ["bary",["ODR",-1],[["OCD",-1],null,["ODQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OD"] |
| 180 | ["bary",["OQR",1],[["OCQ",-1],["ODQ",1],null],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OQ"] |
| 181 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 182 | ["bary",["CPR",-1],[null,["CDP",-1],["CPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CP"] |
| 183 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 184 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 185 | ["bary",["OYZ",-1],[["OCY",-1],["OYP",-1],["OYQ",-1]],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","OY"] |
| 186 | ["bary",["OHZ",-1],[["OHC",-1],["OHP",-1],["OHR",-1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","OH"] |
| 187 | ["bary",["OCZ",1],[null,["OCP",1],["OCR",1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","OC"] |
| 188 | ["bary",["HCZ",1],[null,["HCP",1],["HCR",1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","HC"] |
| 189 | ["bary",["ZPR",-1],[["CPR",-1],null,null],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","PR"] |
| 190 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],["YZQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZQ"] |
| 191 | ["bary",["OFR",-1],[["ODF",-1],["OFY",1],["OFQ",-1]],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OF"] |
| 192 | ["bary",["YZP",1],[["FYZ",1],null,null],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","YZ"] |
| 193 | ["bary",["CDP",1],[["CDF",1],["CDY",1],["CDQ",-1]],"FYQ",["YPQ","FPQ","FYP"]] | ["bary","FYQ","P","CD"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s25 | 5 | sub | ODR | hi | 6071/15625 | hi_ODQ,lo_DQR,lo_OQR |
| s85 | 19 | sumlo | ODY | lo | 92689/500000 | lo_ODF,lo_OYQ,lo_ODQ,lo_OFY,hi_OFQ |
| s90 | 23 | sumlo | HYQ | lo | 71251/500000 | lo_HCQ,lo_OHY,lo_HCY,lo_OHQ,hi_OHC |
| s93 | 25 | sumlo | HCP | lo | 58383/500000 | lo_HCD,lo_HPQ,lo_HCQ,lo_HDP,hi_HDQ |
| s97 | 27 | sumlo | OCP | lo | 67797/500000 | lo_CPR,lo_OHC,s93,lo_OCR,hi_HCR |
| s116 | 32 | sumlo | ODP | lo | 118557/1000000 | lo_DPQ,s85,lo_DYP,lo_ODQ,hi_DYQ |
| s122 | 34 | sumlo | DFR | lo | 50707/500000 | lo_CDF,lo_DQR,lo_CDR,lo_DFQ,hi_CDQ |
| s137 | 46 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s138 | 47 | sumlo | HZQ | lo | 56091/500000 | s90,lo_OZQ,lo_OHQ,lo_YZQ,hi_OYQ |
| s140 | 48 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s145 | 50 | sumlo | CQR | lo | 3339/25000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,s25 |
| s146 | 50 | sumlo | ODR | lo | 221769/1000000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,hi_CQR |
| s159 | 52 | balance_lo | ODZ | lo | 184807/1000000 | lo_CDQ,lo_OZR,lo_DQR,lo_OCZ,lo_CDR,lo_OZQ,hi_CQR |
| s161 | 53 | balance_lo | OPR | lo | 4047/31250 | lo_DQR,s97,s145,s116,lo_CDR,lo_OPQ,hi_CDQ |
| s167 | 54 | balance_lo | DZP | lo | 74163/500000 | lo_CDZ,s161,lo_CZP,s146,lo_CDP,lo_OZR,hi_OCR |
| s171 | 56 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s174 | 57 | balance_lo | HCP | lo | 147837/1000000 | lo_OCD,lo_HPQ,lo_CDQ,lo_OHP,lo_OCQ,lo_HDP,hi_ODQ |
| s176 | 58 | balance_lo | OZP | lo | 38597/250000 | lo_OFZ,lo_HPQ,lo_FZP,lo_OHQ,lo_OFP,s138,hi_HFQ |
| s180 | 60 | balance_lo | ZQR | lo | 105119/1000000 | lo_OZQ,lo_CDR,lo_OQR,lo_CDZ,lo_OZR,lo_CDQ,hi_OCD |
| s183 | 63 | balance_lo | FZQ | lo | 91861/500000 | lo_FYZ,lo_CDQ,lo_YZQ,lo_CDF,lo_FYQ,lo_CDZ,hi_CDY |
| s200 | 68 | balance_lo | DYZ | lo | 245049/1000000 | lo_ODF,lo_YZQ,lo_DFQ,lo_OYZ,lo_ODQ,lo_FYZ,hi_OFQ |
| s203 | 72 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s204 | 73 | balance_lo | HZR | lo | 33647/125000 | lo_OHC,lo_DZR,lo_HCD,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s205 | 74 | balance_lo | FZR | lo | 86231/500000 | lo_CDF,lo_OZR,lo_ODF,lo_CZR,lo_OCF,lo_DZR,hi_OCD |
| s209 | 79 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s215 | 81 | linear | OCD | lo | 370807/1000000 | lo_CDZ,lo_OCZ,s159 |
| s218 | 87 | linear | DFQ | lo | 5267/40000 | lo_ODF,lo_ODQ,hi_OFQ |
| s221 | 88 | linear | OQR | hi | 17831/40000 | lo_DQR,hi_ODQ,s146 |
| s222 | 89 | linear | OFZ | lo | 85097/250000 | lo_FZP,lo_OFP,s176 |
| s229 | 92 | linear | OPQ | lo | 85097/250000 | s176,lo_OZQ,lo_ZPQ |
| s232 | 93 | linear | OQR | lo | 291119/1000000 | lo_OZQ,lo_OZR,s180 |
| s250 | 98 | linear | CDY | lo | 431049/1000000 | lo_CDZ,lo_CYZ,s200 |
| s251 | 99 | linear | CDP | lo | 167163/500000 | lo_CDZ,lo_CZP,s167 |
| s253 | 100 | linear | CDQ | lo | 7989/25000 | lo_CDR,s145,lo_DQR |
| s261 | 105 | linear | DZQ | lo | 291119/1000000 | lo_DQR,lo_DZR,s180 |
| s267 | 106 | support_z | ODP | lo | 146101/1000000 | s251,hi_OCD |
| s271 | 108 | linear | OHC | lo | 370807/1000000 | s215 |
| s272 | 110 | linear | HCD | hi | 907/1000 | lo_HDF |
| s277 | 112 | bary_hi | CDY | hi | 725679/1000000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,hi_OCD,s272 |
| s281 | 113 | bary_hi | DYQ | lo | 192211/500000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,lo_ODQ,s209,s253 |
| s284 | 114 | bary_hi | YPQ | lo | 19559/125000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,s229,lo_HPQ,lo_CPQ |
| s306 | 115 | bary_hi | CDP | hi | 623159/1000000 | hi_OHD,lo_HDP,s267,lo_OHP,hi_OCD,s272 |
| s311 | 116 | bary_lo | DPQ | hi | 111481/200000 | hi_OHD,lo_HDP,s267,lo_OHP,hi_ODQ,hi_HDQ |
| s316 | 117 | bary_lo | HDY | hi | 693467/1000000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,hi_OHD,lo_HDF |
| s320 | 118 | bary_hi | DFY | hi | 353133/500000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,hi_ODF,hi_HDF |
| s325 | 119 | bary_lo | YZR | lo | 130439/1000000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,lo_OZR,s204,s205 |
| s328 | 126 | bary_lo | OCY | lo | 14013/125000 | hi_OHQ,s171,lo_OYQ,lo_OHY,s271,lo_OCQ |
| s350 | 131 | bary_hi | OZQ | hi | 8563/40000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,lo_OCQ,s221 |
| s356 | 135 | bary_hi | CZQ | hi | 41909/250000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,hi_OCQ,hi_CQR |
| s357 | 136 | bary_lo | DFZ | lo | 119687/500000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,lo_ODF,lo_CDF,s122 |
| s358 | 137 | bary_lo | DZP | lo | 162289/1000000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,s267,s251,lo_DPR |
| s362 | 140 | bary_lo | OHZ | hi | 617223/1000000 | hi_ODQ,s261,lo_OZQ,s159,hi_OHD,hi_OHQ |
| s364 | 141 | bary_lo | OFZ | hi | 602589/1000000 | hi_ODQ,s261,lo_OZQ,s159,hi_ODF,hi_OFQ |
| s374 | 142 | bary_lo | OHR | hi | 877719/1000000 | hi_ODQ,lo_DQR,s232,s146,hi_OHD,hi_OHQ |
| s377 | 143 | bary_lo | ODR | hi | 15057/40000 | hi_ODQ,lo_DQR,s232,s146,hi_ODQ |
| s393 | 146 | bary_lo | CQR | lo | 33423/250000 | hi_ODQ,lo_DQR,s232,s146,lo_OCQ,s253 |
| s411 | 147 | bary_hi | OPQ | hi | 142991/200000 | s364,lo_FZP,s176,lo_OFP,hi_OFQ,s350 |
| s418 | 149 | bary_hi | CPQ | hi | 149437/250000 | s364,lo_FZP,s176,lo_OFP,hi_OCQ,s140,s356 |
| s419 | 150 | bary_lo | DFP | lo | 102389/1000000 | s364,lo_FZP,s176,lo_OFP,lo_ODF,s357 |
| s420 | 151 | bary_hi | DPQ | lo | 60767/250000 | s364,lo_FZP,s176,lo_OFP,lo_ODQ,s218,s261 |
| s423 | 152 | bary_hi | FPQ | lo | 67731/500000 | s364,lo_FZP,s176,lo_OFP,lo_OFQ,s183 |
| s429 | 154 | bary_hi | OYZ | lo | 13131/125000 | hi_OFQ,s183,lo_OZQ,s222,lo_OFY,lo_OYQ |
| s433 | 157 | bary_hi | HZP | lo | 14743/125000 | hi_OYQ,lo_YZQ,lo_OZQ,s429,lo_OHP,lo_HYP,lo_HPQ |
| s434 | 158 | bary_hi | ODZ | lo | 47763/250000 | s221,s180,lo_OZR,lo_OZQ,lo_ODQ,s146 |
| s467 | 164 | bary_lo | ZPQ | lo | 63963/500000 | s316,lo_DYP,lo_HYP,lo_HDP,s203,s261,lo_YZQ |
| s468 | 165 | bary_lo | ZPR | lo | 121647/1000000 | s316,lo_DYP,lo_HYP,lo_HDP,s204,lo_DZR,s325 |
| s476 | 168 | bary_lo | OCP | lo | 213473/1000000 | hi_HDQ,s420,lo_HPQ,lo_HDP,s271,s215,lo_OCQ |
| s488 | 169 | bary_lo | YZP | lo | 59731/500000 | hi_HFQ,s423,lo_HPQ,lo_HFP,lo_HYZ,lo_FYZ,lo_YZQ |
| s491 | 171 | bary_lo | HCZ | lo | 25127/200000 | s306,s358,lo_CZP,lo_CDZ,lo_HCD,s174 |
| s492 | 173 | bary_lo | HYZ | lo | 60379/500000 | s306,s358,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s505 | 178 | bary_hi | OCR | hi | 36207/100000 | hi_CDQ,lo_DQR,s393,lo_CDR,hi_OCD,hi_OCQ |
| s506 | 179 | bary_hi | ODR | lo | 117889/500000 | hi_CDQ,lo_DQR,s393,lo_CDR,s215,lo_ODQ |
| s511 | 180 | bary_hi | OQR | hi | 403139/1000000 | hi_CDQ,lo_DQR,s393,lo_CDR,lo_OCQ,hi_ODQ |
| s512 | 181 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,s393,lo_CDR,s272,s137 |
| s518 | 182 | bary_lo | CPR | hi | 119887/250000 | hi_CDQ,lo_DQR,s393,lo_CDR,s306,s418 |
| s519 | 183 | bary_lo | DFR | lo | 54989/500000 | hi_CDQ,lo_DQR,s393,lo_CDR,lo_CDF,s218 |
| s520 | 184 | bary_lo | DYR | lo | 22571/125000 | hi_CDQ,lo_DQR,s393,lo_CDR,s250,s281 |
| s528 | 185 | bary_hi | OYZ | lo | 126027/1000000 | s418,s467,lo_CZQ,lo_CZP,s328,lo_OYP,lo_OYQ |
| s529 | 187 | bary_lo | OCZ | lo | 47753/500000 | s518,s468,lo_CZR,lo_CZP,s476,lo_OCR |
| s536 | 190 | bary_lo | ZPQ | lo | 65517/500000 | s320,lo_FYP,lo_DYP,s419,s261,s183,lo_YZQ |
| s537 | 191 | bary_lo | OFR | hi | 416997/500000 | hi_DYQ,lo_YQR,lo_DQR,s520,hi_ODF,lo_OFY,hi_OFQ |
| s551 | 3 | sum | OCD | lo | 189779/500000 | lo_CDZ,s529,s434 |
| s552 | 4 | sum | OCR | lo | 140753/500000 | lo_CZR,s529,lo_OZR |
| s554 | 4 | sub | OCZ | hi | 17607/100000 | s505,lo_CZR,lo_OZR |
| s557 | 6 | sum | OYQ | lo | 312027/1000000 | s528,lo_OZQ,lo_YZQ |
| s565 | 11 | sum | HDQ | lo | 107267/250000 | s420,lo_HDP,lo_HPQ |
| s566 | 12 | sum | HFZ | lo | 37993/125000 | lo_FZP,lo_HFP,s433 |
| s570 | 13 | sum | CDQ | lo | 79923/250000 | lo_CDR,s393,lo_DQR |
| s573 | 14 | sum | CPQ | lo | 158517/500000 | lo_CZP,lo_CZQ,s536 |
| s576 | 15 | sum | FYZ | lo | 152731/500000 | lo_FYP,lo_FZP,s488 |
| s577 | 16 | sum | FYQ | lo | 192467/500000 | s423,lo_FYP,s284 |
| s580 | 18 | sumlo | OCY | lo | 2487/20000 | lo_OCQ,lo_OHY,s271,s557,hi_OHQ |
| s583 | 20 | sumlo | ODZ | lo | 21449/100000 | lo_ODQ,lo_OZR,s506,lo_OZQ,s511 |
| s585 | 22 | sumlo | HCF | lo | 239389/1000000 | s491,lo_OHF,s566,s271,s362 |
| s586 | 24 | sumlo | HFY | lo | 50191/500000 | s566,lo_OHY,s492,lo_OHF,s362 |
| s587 | 26 | sumlo | OCZ | lo | 4077/40000 | lo_CZR,s271,s491,s552,s512 |
| s591 | 30 | sumlo | CZQ | lo | 5939/62500 | s570,lo_CZP,lo_CDZ,s573,s306 |
| s593 | 31 | sumlo | ODR | lo | 59429/250000 | lo_CDR,lo_ODQ,lo_DQR,s551,hi_CDQ |
| s595 | 33 | sumlo | HDR | lo | 248679/1000000 | lo_CDR,s565,lo_DQR,lo_HCD,hi_CDQ |
| s601 | 42 | sumlo | DZP | lo | 234199/1000000 | lo_CDZ,s536,lo_CZP,s261,s356 |
| s606 | 49 | sumhi | CPQ | hi | 582073/1000000 | hi_CDQ,s411,s311,hi_OCQ,lo_ODQ |
| s608 | 50 | sumlo | CQR | lo | 141473/1000000 | lo_CDR,s232,lo_DQR,s552,s377 |
| s611 | 56 | balance_lo | HYQ | lo | 41747/200000 | s570,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s613 | 57 | balance_lo | HCP | lo | 175061/1000000 | s551,lo_HPQ,s570,lo_OHP,lo_OCQ,lo_HDP,hi_ODQ |
| s617 | 60 | balance_lo | ZQR | lo | 113647/1000000 | lo_OZQ,lo_CDR,s232,lo_CDZ,lo_OZR,s570,hi_OCD |
| s620 | 63 | balance_lo | FZQ | lo | 230677/1000000 | s576,s570,lo_YZQ,lo_CDF,s577,lo_CDZ,s277 |
| s623 | 65 | balance_lo | HCZ | lo | 70307/500000 | lo_OHP,s591,lo_HPQ,s587,lo_OHQ,lo_CZP,s411 |
| s632 | 69 | balance_lo | OZP | lo | 216263/1000000 | s271,s601,s551,s433,lo_OHD,lo_CZP,s272 |
| s633 | 73 | balance_lo | HZR | lo | 284001/1000000 | s271,lo_DZR,lo_HCD,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s634 | 80 | linear | OHF | lo | 143191/500000 | s586,lo_OFY,lo_OHY |
| s636 | 81 | linear | OCD | lo | 81883/200000 | lo_CDZ,s587,s583 |
| s637 | 82 | linear | OCR | lo | 11517/40000 | lo_CZR,s587,lo_OZR |
| s640 | 89 | linear | OFZ | lo | 402263/1000000 | lo_FZP,lo_OFP,s632 |
| s643 | 90 | linear | OFQ | lo | 36297/50000 | s620,s640,lo_OZQ |
| s645 | 92 | linear | OPQ | lo | 440297/1000000 | s632,lo_OZQ,s536 |
| s646 | 93 | linear | OZQ | hi | 49123/250000 | s511,lo_OZR,s617 |
| s647 | 93 | linear | OQR | lo | 299647/1000000 | lo_OZQ,lo_OZR,s617 |
| s657 | 99 | linear | CDP | lo | 420199/1000000 | lo_CDZ,lo_CZP,s601 |
| s658 | 100 | linear | CDQ | lo | 327473/1000000 | lo_CDR,s608,lo_DQR |
| s661 | 101 | linear | CPQ | lo | 159529/500000 | lo_CZP,s591,s536 |
| s663 | 105 | linear | DZQ | lo | 299647/1000000 | lo_DQR,lo_DZR,s617 |
| s667 | 107 | support_z | ZPQ | lo | 136377/1000000 | s663,s311 |
| s668 | 108 | linear | OHC | lo | 81883/200000 | s636 |
| s669 | 111 | linear | CDF | hi | 760611/1000000 | s585 |
| s674 | 114 | bary_hi | YPQ | lo | 176971/1000000 | hi_OHC,lo_HCY,s580,lo_OHY,s645,lo_HPQ,s661 |
| s693 | 120 | bary_hi | OYQ | hi | 136657/200000 | s362,s492,s528,lo_OHY,hi_OHQ,s646 |
| s695 | 121 | bary_hi | HFY | lo | 50913/500000 | s362,s492,s528,lo_OHY,s634,s566 |
| s709 | 126 | bary_lo | OCY | lo | 136397/1000000 | hi_OHQ,s611,s557,lo_OHY,s668,lo_OCQ |
| s714 | 127 | bary_hi | CDY | hi | 180773/250000 | hi_OHQ,s611,s557,lo_OHY,hi_OCD,s272,s658 |
| s715 | 129 | bary_lo | OHZ | hi | 73741/125000 | s505,lo_CZR,lo_OZR,s587,hi_OHC,s374 |
| s716 | 130 | bary_lo | OFZ | hi | 113733/200000 | s505,lo_CZR,lo_OZR,s587,hi_OCF,s537 |
| s719 | 131 | bary_hi | OZQ | hi | 86077/500000 | s505,lo_CZR,lo_OZR,s587,lo_OCQ,s511 |
| s720 | 132 | bary_hi | HCZ | hi | 28513/125000 | s505,lo_CZR,lo_OZR,s587,s668,s512 |
| s721 | 133 | bary_hi | HDZ | lo | 238723/500000 | s505,lo_CZR,lo_OZR,s587,lo_OHD,lo_HCD,s595 |
| s725 | 135 | bary_hi | CZQ | hi | 161567/1000000 | s505,lo_CZR,lo_OZR,s587,hi_OCQ,hi_CQR |
| s726 | 136 | bary_lo | DFZ | lo | 128077/500000 | s505,lo_CZR,lo_OZR,s587,lo_ODF,lo_CDF,s519 |
| s727 | 138 | bary_hi | DZQ | lo | 76899/250000 | s505,lo_CZR,lo_OZR,s587,lo_ODQ,s658,lo_DQR |
| s734 | 143 | bary_lo | ODR | hi | 367897/1000000 | hi_ODQ,lo_DQR,s647,s593,hi_ODQ |
| s750 | 147 | bary_hi | OPQ | hi | 691907/1000000 | s716,lo_FZP,s632,lo_OFP,hi_OFQ,s719 |
| s753 | 148 | bary_hi | HFP | lo | 48271/500000 | s716,lo_FZP,s632,lo_OFP,s634,s566 |
| s755 | 150 | bary_lo | DFP | lo | 55621/500000 | s716,lo_FZP,s632,lo_OFP,lo_ODF,s726 |
| s756 | 151 | bary_hi | DPQ | lo | 31551/125000 | s716,lo_FZP,s632,lo_OFP,lo_ODQ,s218,s727 |
| s757 | 152 | bary_hi | FPQ | lo | 78223/500000 | s716,lo_FZP,s632,lo_OFP,s643,s620 |
| s762 | 154 | bary_hi | OYZ | lo | 68009/500000 | hi_OFQ,s620,lo_OZQ,s640,lo_OFY,s557 |
| s766 | 157 | bary_hi | HZP | lo | 23663/200000 | s693,lo_YZQ,lo_OZQ,s762,lo_OHP,lo_HYP,lo_HPQ |
| s767 | 158 | bary_hi | ODZ | lo | 214937/1000000 | s511,s617,lo_OZR,lo_OZQ,lo_ODQ,s593 |
| s773 | 159 | bary_lo | HFZ | hi | 103777/200000 | s272,lo_CDZ,s721,s623,hi_HCF,hi_HDF |
| s776 | 161 | bary_lo | OHP | hi | 49929/100000 | s272,s657,lo_HDP,s613,hi_OHC,hi_OHD |
| s787 | 163 | bary_lo | OCZ | lo | 57317/500000 | s512,lo_CZR,s633,s623,s668,s637 |
| s795 | 169 | bary_lo | YZP | lo | 12987/100000 | hi_HFQ,s757,lo_HPQ,s753,s492,s576,lo_YZQ |
| s798 | 174 | bary_lo | CZQ | lo | 12061/125000 | s306,s601,lo_CZP,lo_CDZ,s658,s661 |
| s800 | 176 | bary_hi | DYZ | hi | 98677/200000 | s306,s601,lo_CZP,lo_CDZ,s714,lo_DYP |
| s803 | 179 | bary_hi | ODR | lo | 244327/1000000 | hi_CDQ,lo_DQR,s608,lo_CDR,s636,lo_ODQ |
| s819 | 185 | bary_hi | OYZ | lo | 69081/500000 | s606,s667,s798,lo_CZP,s709,lo_OYP,s557 |
| s824 | 190 | bary_lo | ZPQ | lo | 69693/500000 | s320,lo_FYP,lo_DYP,s755,s727,s620,lo_YZQ |
| s833 | 193 | bary_hi | CDP | hi | 311159/500000 | hi_FYQ,s674,s757,lo_FYP,s669,s714,s658 |
| s834 | 0 | sum | OHF | lo | 143913/500000 | s695,lo_OFY,lo_OHY |
| s836 | 1 | sub | OYZ | hi | 37617/100000 | s715,s492,lo_OHY |
| s839 | 3 | sum | OCD | lo | 422571/1000000 | lo_CDZ,s787,s767 |
| s840 | 4 | sum | OCR | lo | 150317/500000 | lo_CZR,s787,lo_OZR |
| s842 | 6 | sum | OYQ | lo | 162081/500000 | s819,lo_OZQ,lo_YZQ |
| s844 | 8 | sum | HCD | lo | 35553/50000 | lo_CDZ,s623,s721 |
| s846 | 11 | sum | HDQ | lo | 54801/125000 | s756,lo_HDP,lo_HPQ |
| s847 | 12 | sum | HFZ | lo | 307857/1000000 | lo_FZP,s753,s766 |
| s852 | 14 | sum | CPQ | lo | 164437/500000 | lo_CZP,s798,s824 |
| s855 | 15 | sum | FYZ | lo | 31587/100000 | lo_FYP,lo_FZP,s795 |
| s860 | 18 | sumlo | OCY | lo | 28273/200000 | lo_OCQ,lo_OHY,s668,s842,hi_OHQ |
| s862 | 20 | sumlo | ODZ | lo | 108231/500000 | lo_ODQ,lo_OZR,s803,lo_OZQ,s511 |
| s863 | 21 | sumlo | OYZ | lo | 140967/1000000 | lo_OFY,lo_OZQ,s640,s842,hi_OFQ |
| s865 | 22 | sumlo | HCF | lo | 14113/50000 | s623,s834,s847,s668,s715 |
| s868 | 26 | sumlo | OCZ | lo | 58621/500000 | lo_CZR,s668,s623,s840,s512 |
| s870 | 30 | sumlo | CZQ | lo | 19617/200000 | s658,lo_CZP,lo_CDZ,s852,s833 |
| s872 | 31 | sumlo | ODR | lo | 6181/25000 | lo_CDR,lo_ODQ,lo_DQR,s839,hi_CDQ |
| s873 | 33 | sumlo | HDR | lo | 10181/40000 | lo_CDR,s846,lo_DQR,s844,hi_CDQ |
| s875 | 35 | sumlo | HFP | lo | 48709/500000 | lo_FZP,s834,s847,lo_OFP,s716 |
| s876 | 36 | sumlo | HFY | lo | 53973/500000 | s855,lo_OHY,s492,lo_OFY,s836 |
| s880 | 42 | sumlo | DZP | lo | 32161/125000 | lo_CDZ,s824,lo_CZP,s727,s725 |
| s881 | 43 | sumlo | FZQ | lo | 245209/1000000 | s726,lo_YZQ,s727,s855,s800 |
| s883 | 49 | sumhi | CPQ | hi | 909/1600 | hi_CDQ,s750,s311,hi_OCQ,lo_ODQ |
| s884 | 50 | sumlo | CQR | lo | 151743/1000000 | lo_CDR,s647,lo_DQR,s840,s734 |
| s891 | 57 | balance_lo | HCP | lo | 7327/40000 | s839,lo_HPQ,s658,lo_OHP,lo_OCQ,lo_HDP,hi_ODQ |
| s894 | 60 | balance_lo | ZQR | lo | 2907/25000 | lo_OZQ,lo_CDR,s647,lo_CDZ,lo_OZR,s658,hi_OCD |
| s897 | 65 | balance_lo | HCZ | lo | 148591/1000000 | lo_OHP,s870,lo_HPQ,s868,lo_OHQ,lo_CZP,s750 |
| s898 | 67 | balance_lo | DPQ | lo | 256649/1000000 | lo_HDP,s870,lo_HPQ,lo_CDZ,s846,lo_CZP,s720 |
| s903 | 69 | balance_lo | OZP | lo | 242421/1000000 | s668,s880,s839,s766,lo_OHD,lo_CZP,s272 |
| s904 | 73 | balance_lo | HZR | lo | 29299/100000 | s668,lo_DZR,s844,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s905 | 76 | linear | OHC | hi | 617407/1000000 | s897,s554,s715 |
| s906 | 77 | linear | HCQ | hi | 155317/200000 | hi_OCQ,s668,hi_OHQ |
| s907 | 80 | linear | OHF | lo | 146973/500000 | s876,lo_OFY,lo_OHY |
| s909 | 81 | linear | OCD | lo | 26669/62500 | lo_CDZ,s868,s862 |
| s911 | 82 | linear | OCR | lo | 151621/500000 | lo_CZR,s868,lo_OZR |
| s914 | 89 | linear | OFZ | lo | 428421/1000000 | lo_FZP,lo_OFP,s903 |
| s917 | 90 | linear | OFQ | lo | 76663/100000 | s881,s914,lo_OZQ |
| s918 | 90 | linear | FZQ | hi | 464959/1000000 | hi_OFQ,s914,lo_OZQ |
| s920 | 91 | linear | OYQ | lo | 326967/1000000 | s863,lo_OZQ,lo_YZQ |
| s921 | 92 | linear | OPQ | lo | 474807/1000000 | s903,lo_OZQ,s824 |
| s922 | 93 | linear | OQR | lo | 7557/25000 | lo_OZQ,lo_OZR,s894 |
| s923 | 94 | linear | HCD | lo | 719037/1000000 | lo_CDZ,s897,s721 |
| s924 | 94 | linear | HDZ | hi | 665409/1000000 | lo_CDZ,s272,s897 |
| s928 | 95 | linear | HCR | lo | 534581/1000000 | lo_CZR,s897,s904 |
| s930 | 96 | linear | HDQ | lo | 442649/1000000 | s898,lo_HDP,lo_HPQ |
| s931 | 97 | linear | HFZ | lo | 308733/1000000 | lo_FZP,s875,s766 |
| s934 | 99 | linear | CDP | lo | 55411/125000 | lo_CDZ,lo_CZP,s880 |
| s935 | 100 | linear | CDQ | lo | 337743/1000000 | lo_CDR,s884,lo_DQR |
| s938 | 101 | linear | CPQ | lo | 330471/1000000 | lo_CZP,s870,s824 |
| s944 | 108 | linear | OHC | lo | 26669/62500 | s909 |
| s945 | 109 | linear | OHF | hi | 617407/1000000 | s905 |
| s946 | 110 | linear | HDF | hi | 280963/1000000 | s923 |
| s947 | 111 | linear | CDF | hi | 35887/50000 | s865 |
| s949 | 112 | bary_hi | CDY | hi | 11258/15625 | s905,lo_HCY,s860,lo_OHY,hi_OCD,s272 |
| s957 | 114 | bary_hi | YPQ | lo | 186281/1000000 | s905,lo_HCY,s860,lo_OHY,s921,lo_HPQ,s938 |
| s966 | 118 | bary_hi | DFY | hi | 173991/250000 | s945,s876,lo_OFY,lo_OHY,hi_ODF,s946 |
| s975 | 120 | bary_hi | OYQ | hi | 332397/500000 | s715,s492,s863,lo_OHY,hi_OHQ,s719 |
| s977 | 121 | bary_hi | HFY | lo | 108841/1000000 | s715,s492,s863,lo_OHY,s907,s931 |
| s978 | 122 | bary_hi | CYZ | hi | 181493/1000000 | s715,s492,s863,lo_OHY,s554,s720 |
| s982 | 124 | bary_lo | FYZ | hi | 233561/500000 | s715,s492,s863,lo_OHY,s716,s773 |
| s985 | 125 | bary_lo | CDY | lo | 121061/250000 | s776,lo_HYP,lo_OYP,lo_OHY,s909,s923,s934 |
| s996 | 129 | bary_lo | OHZ | hi | 585409/1000000 | s505,lo_CZR,lo_OZR,s868,s905,s374 |
| s998 | 132 | bary_hi | HCZ | hi | 13979/62500 | s505,lo_CZR,lo_OZR,s868,s944,s512 |
| s999 | 133 | bary_hi | HDZ | lo | 486719/1000000 | s505,lo_CZR,lo_OZR,s868,lo_OHD,s923,s873 |
| s1001 | 138 | bary_hi | DZQ | lo | 155117/500000 | s505,lo_CZR,lo_OZR,s868,lo_ODQ,s935,lo_DQR |
| s1002 | 139 | bary_lo | ZQR | lo | 58309/500000 | s505,lo_CZR,lo_OZR,s868,s922,s884 |
| s1004 | 143 | bary_lo | ODR | hi | 22829/62500 | hi_ODQ,lo_DQR,s922,s872,hi_ODQ |
| s1016 | 148 | bary_hi | HFP | lo | 49281/500000 | s716,lo_FZP,s903,lo_OFP,s907,s931 |
| s1018 | 152 | bary_hi | FPQ | lo | 165477/1000000 | s716,lo_FZP,s903,lo_OFP,s917,s881 |
| s1020 | 153 | bary_hi | ZPQ | hi | 297671/1000000 | s716,lo_FZP,s903,lo_OFP,lo_OZQ,s918 |
| s1021 | 154 | bary_hi | OYZ | lo | 75391/500000 | hi_OFQ,s881,lo_OZQ,s914,lo_OFY,s920 |
| s1024 | 156 | bary_hi | CDP | hi | 594437/1000000 | hi_OFQ,s1018,s921,lo_OFP,hi_OCD,s947,s935 |
| s1026 | 157 | bary_hi | HZP | lo | 5951/50000 | s975,lo_YZQ,lo_OZQ,s1021,lo_OHP,lo_HYP,lo_HPQ |
| s1027 | 158 | bary_hi | ODZ | lo | 108567/500000 | s511,s1002,lo_OZR,lo_OZQ,lo_ODQ,s872 |
| s1031 | 159 | bary_lo | HFZ | hi | 511889/1000000 | s272,lo_CDZ,s999,s897,hi_HCF,s946 |
| s1033 | 160 | bary_hi | DFZ | hi | 55537/100000 | s272,lo_CDZ,s999,s897,s946,s947 |
| s1035 | 161 | bary_lo | OHP | hi | 47203/100000 | s272,s934,lo_HDP,s891,s905,hi_OHD |
| s1045 | 163 | bary_lo | OCZ | lo | 123653/1000000 | s512,lo_CZR,s904,s897,s944,s911 |
| s1048 | 167 | bary_hi | DFP | hi | 34993/100000 | s924,s880,s1026,lo_HDP,s946,s1033 |
| s1049 | 169 | bary_lo | YZP | lo | 65867/500000 | hi_HFQ,s1018,lo_HPQ,s1016,s492,s855,lo_YZQ |
| s1051 | 173 | bary_lo | HYZ | lo | 122099/1000000 | s1024,s880,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1053 | 174 | bary_lo | CZQ | lo | 52271/500000 | s1024,s880,lo_CZP,lo_CDZ,s935,s938 |
| s1054 | 175 | bary_hi | DFZ | hi | 273953/500000 | s1024,s880,lo_CZP,lo_CDZ,s947,s1048 |
| s1055 | 176 | bary_hi | DYZ | hi | 240257/500000 | s1024,s880,lo_CZP,lo_CDZ,s949,lo_DYP |
| s1063 | 181 | bary_hi | HCR | hi | 677287/1000000 | hi_CDQ,lo_DQR,s884,lo_CDR,s272,s906 |
| s1079 | 190 | bary_lo | ZPQ | lo | 142367/1000000 | s966,lo_FYP,lo_DYP,s755,s1001,s881,lo_YZQ |
| s1086 | 192 | bary_hi | YZP | hi | 140561/500000 | s982,s1049,lo_FZP,lo_FYP,s982 |
| s1089 | 193 | bary_hi | CDP | hi | 296359/500000 | hi_FYQ,s957,s1018,lo_FYP,s947,s949,s935 |
| s1090 | 0 | sum | OHF | lo | 294841/1000000 | s977,lo_OFY,lo_OHY |
| s1095 | 3 | sum | OCD | lo | 433787/1000000 | lo_CDZ,s1045,s1027 |
| s1096 | 4 | sum | OCR | lo | 309653/1000000 | lo_CZR,s1045,lo_OZR |
| s1099 | 6 | sum | OYQ | lo | 168391/500000 | s1021,lo_OZQ,lo_YZQ |
| s1101 | 7 | sum | OQR | lo | 151309/500000 | lo_OZQ,lo_OZR,s1002 |
| s1102 | 8 | sum | HCD | lo | 72831/100000 | lo_CDZ,s897,s999 |
| s1104 | 12 | sum | HFZ | lo | 155291/500000 | lo_FZP,s1016,s1026 |
| s1108 | 14 | sum | CPQ | lo | 339909/1000000 | lo_CZP,s1053,s1079 |
| s1109 | 15 | sum | FYZ | lo | 158867/500000 | lo_FYP,lo_FZP,s1049 |
| s1113 | 18 | sumlo | OCY | lo | 30471/200000 | lo_OCQ,lo_OHY,s944,s1099,hi_OHQ |
| s1114 | 19 | sumlo | ODY | lo | 210219/1000000 | lo_ODF,s1099,lo_ODQ,lo_OFY,hi_OFQ |
| s1116 | 21 | sumlo | OYZ | lo | 31009/200000 | lo_OFY,lo_OZQ,s914,s1099,hi_OFQ |
| s1117 | 22 | sumlo | HCF | lo | 15061/50000 | s897,s1090,s1104,s944,s996 |
| s1118 | 24 | sumlo | HFY | lo | 22167/200000 | s1104,lo_OHY,s1051,s1090,s996 |
| s1120 | 26 | sumlo | OCZ | lo | 126527/1000000 | lo_CZR,s944,s897,s1096,s1063 |
| s1124 | 30 | sumlo | CZQ | lo | 53163/500000 | s935,lo_CZP,lo_CDZ,s1108,s1089 |
| s1126 | 31 | sumlo | ODR | lo | 62431/250000 | lo_CDR,lo_ODQ,lo_DQR,s1095,hi_CDQ |
| s1127 | 33 | sumlo | HDR | lo | 259283/1000000 | lo_CDR,s930,lo_DQR,s1102,hi_CDQ |
| s1128 | 35 | sumlo | HFP | lo | 99011/1000000 | lo_FZP,s1090,s1104,lo_OFP,s716 |
| s1130 | 39 | sumlo | ZPR | lo | 177169/1000000 | lo_CZP,lo_OZR,lo_CZR,s903,s554 |
| s1131 | 42 | sumlo | DZP | lo | 130261/500000 | lo_CDZ,s1079,lo_CZP,s1001,s725 |
| s1132 | 43 | sumlo | FZQ | lo | 50943/200000 | s726,lo_YZQ,s1001,s1109,s1055 |
| s1134 | 45 | sumlo | DFP | lo | 116951/1000000 | lo_DYP,lo_FZP,s1131,lo_FYP,s1086 |
| s1136 | 50 | sumlo | CQR | lo | 15589/100000 | lo_CDR,s1101,lo_DQR,s1096,s1004 |
| s1139 | 52 | balance_lo | ODZ | lo | 221479/1000000 | s935,lo_OZR,lo_DQR,s1120,lo_CDR,lo_OZQ,hi_CQR |
| s1140 | 56 | balance_lo | HYQ | lo | 4233/20000 | s935,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s1142 | 57 | balance_lo | HCP | lo | 94157/500000 | s1095,lo_HPQ,s935,lo_OHP,lo_OCQ,lo_HDP,hi_ODQ |
| s1143 | 59 | balance_lo | OPQ | lo | 487557/1000000 | lo_OHP,s935,lo_HPQ,s1095,lo_OHQ,s934,s272 |
| s1145 | 60 | balance_lo | ZQR | lo | 59209/500000 | lo_OZQ,lo_CDR,s1101,lo_CDZ,lo_OZR,s935,hi_OCD |
| s1147 | 62 | balance_lo | YPQ | lo | 7509/40000 | lo_HYP,s935,lo_HPQ,s985,s1140,s934,s272 |
| s1148 | 64 | balance_lo | ZPQ | lo | 71599/500000 | s1049,s935,s1147,lo_CDZ,lo_YZQ,s934,s949 |
| s1149 | 65 | balance_lo | HCZ | lo | 76581/500000 | lo_OHP,s1124,lo_HPQ,s1120,lo_OHQ,lo_CZP,s750 |
| s1150 | 66 | balance_lo | ODP | lo | 13763/62500 | s1114,lo_CZP,lo_DYP,s1120,lo_OYP,lo_CDZ,s978 |
| s1151 | 67 | balance_lo | DPQ | lo | 133467/500000 | lo_HDP,s1124,lo_HPQ,lo_CDZ,s930,lo_CZP,s998 |
| s1155 | 69 | balance_lo | OZP | lo | 250647/1000000 | s944,s1131,s1095,s1026,lo_OHD,lo_CZP,s272 |
| s1156 | 73 | balance_lo | HZR | lo | 298567/1000000 | s944,lo_DZR,s1102,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s1157 | 76 | linear | OHC | hi | 608317/1000000 | s1149,s554,s996 |
| s1158 | 77 | linear | HCQ | hi | 11864/15625 | hi_OCQ,s944,hi_OHQ |
| s1159 | 78 | linear | OHR | lo | 119843/200000 | s928,s505,s944 |
| s1160 | 80 | linear | OHF | lo | 59367/200000 | s1118,lo_OFY,lo_OHY |
| s1163 | 81 | linear | OCD | lo | 220503/500000 | lo_CDZ,s1120,s1139 |
| s1165 | 82 | linear | OCR | lo | 312527/1000000 | lo_CZR,s1120,lo_OZR |
| s1168 | 85 | linear | ODF | hi | 223773/250000 | s1054,s1139,s716 |
| s1169 | 86 | linear | ODF | lo | 430159/1000000 | s1134,s1150,lo_OFP |
| s1170 | 87 | linear | DFQ | lo | 137779/1000000 | s1169,lo_ODQ,hi_OFQ |
| s1172 | 89 | linear | OFZ | lo | 436647/1000000 | lo_FZP,lo_OFP,s1155 |
| s1174 | 90 | linear | OFQ | lo | 392181/500000 | s1132,s1172,lo_OZQ |
| s1179 | 91 | linear | OYQ | lo | 68209/200000 | s1116,lo_OZQ,lo_YZQ |
| s1180 | 93 | linear | OQR | lo | 152209/500000 | lo_OZQ,lo_OZR,s1145 |
| s1181 | 94 | linear | HCD | lo | 732881/1000000 | lo_CDZ,s1149,s999 |
| s1182 | 94 | linear | HDZ | hi | 330419/500000 | lo_CDZ,s272,s1149 |
| s1187 | 95 | linear | HCR | lo | 544729/1000000 | lo_CZR,s1149,s1156 |
| s1189 | 96 | linear | HDQ | lo | 226467/500000 | s1151,lo_HDP,lo_HPQ |
| s1190 | 97 | linear | HFZ | lo | 311031/1000000 | lo_FZP,s1128,s1026 |
| s1193 | 99 | linear | CDP | lo | 223261/500000 | lo_CDZ,lo_CZP,s1131 |
| s1194 | 100 | linear | CDQ | lo | 34189/100000 | lo_CDR,s1136,lo_DQR |
| s1197 | 101 | linear | CPQ | lo | 85631/250000 | lo_CZP,s1124,s1148 |
| s1198 | 102 | linear | CPR | lo | 363169/1000000 | lo_CZP,lo_CZR,s1130 |
| s1200 | 104 | linear | DPQ | lo | 54617/200000 | s1131,s1001,s1020 |
| s1203 | 108 | linear | OHC | lo | 220503/500000 | s1163 |
| s1204 | 109 | linear | OHF | hi | 608317/1000000 | s1157 |
| s1205 | 110 | linear | HDF | hi | 267119/1000000 | s1181 |
| s1206 | 111 | linear | CDF | hi | 34939/50000 | s1117 |
| s1207 | 112 | bary_hi | CDY | hi | 358863/500000 | s1157,lo_HCY,s1113,lo_OHY,hi_OCD,s272 |
| s1217 | 118 | bary_hi | DFY | hi | 132449/200000 | s1204,s1118,lo_OFY,lo_OHY,s1168,s1205 |
| s1223 | 120 | bary_hi | OYQ | hi | 164979/250000 | s996,s1051,s1116,lo_OHY,hi_OHQ,s719 |
| s1225 | 121 | bary_hi | HFY | lo | 55661/500000 | s996,s1051,s1116,lo_OHY,s1160,s1190 |
| s1226 | 122 | bary_hi | CYZ | hi | 89103/500000 | s996,s1051,s1116,lo_OHY,s554,s998 |
| s1229 | 123 | bary_hi | DYQ | lo | 42807/100000 | s996,s1051,s1116,lo_OHY,lo_ODQ,s1189,s1001 |
| s1230 | 124 | bary_lo | FYZ | hi | 57911/125000 | s996,s1051,s1116,lo_OHY,s716,s1031 |
| s1234 | 125 | bary_lo | CDY | lo | 249799/500000 | s1035,lo_HYP,lo_OYP,lo_OHY,s1163,s1181,s1193 |
| s1245 | 129 | bary_lo | OHZ | hi | 291537/500000 | s505,lo_CZR,lo_OZR,s1120,s1157,s374 |
| s1247 | 132 | bary_hi | HCZ | hi | 216081/1000000 | s505,lo_CZR,lo_OZR,s1120,s1203,s1063 |
| s1248 | 133 | bary_hi | HDZ | lo | 492589/1000000 | s505,lo_CZR,lo_OZR,s1120,lo_OHD,s1181,s1127 |
| s1249 | 136 | bary_lo | DFZ | lo | 128861/500000 | s505,lo_CZR,lo_OZR,s1120,s1169,lo_CDF,s519 |
| s1250 | 138 | bary_hi | DZQ | lo | 311299/1000000 | s505,lo_CZR,lo_OZR,s1120,lo_ODQ,s1194,lo_DQR |
| s1252 | 143 | bary_lo | ODR | hi | 181563/500000 | hi_ODQ,lo_DQR,s1180,s1126,hi_ODQ |
| s1265 | 148 | bary_hi | HFP | lo | 9941/100000 | s716,lo_FZP,s1155,lo_OFP,s1160,s1190 |
| s1266 | 152 | bary_hi | FPQ | lo | 169931/1000000 | s716,lo_FZP,s1155,lo_OFP,s1174,s1132 |
| s1268 | 154 | bary_hi | OYZ | lo | 159741/1000000 | hi_OFQ,s1132,lo_OZQ,s1172,lo_OFY,s1179 |
| s1270 | 156 | bary_hi | CDP | hi | 1159/2000 | hi_OFQ,s1266,s1143,lo_OFP,hi_OCD,s1206,s1194 |
| s1271 | 157 | bary_hi | HZP | lo | 29803/250000 | s1223,lo_YZQ,lo_OZQ,s1268,lo_OHP,lo_HYP,lo_HPQ |
| s1273 | 159 | bary_lo | HFZ | hi | 507767/1000000 | s272,lo_CDZ,s1248,s1149,hi_HCF,s1205 |
| s1274 | 160 | bary_hi | DFZ | hi | 536519/1000000 | s272,lo_CDZ,s1248,s1149,s1205,s1206 |
| s1284 | 163 | bary_lo | OCZ | lo | 13123/100000 | s1063,lo_CZR,s1156,s1149,s1203,s1165 |
| s1287 | 167 | bary_hi | DFP | hi | 333529/1000000 | s1182,s1131,s1271,lo_HDP,s1205,s1274 |
| s1288 | 169 | bary_lo | YZP | lo | 132537/1000000 | hi_HFQ,s1266,lo_HPQ,s1265,s1051,s1109,lo_YZQ |
| s1289 | 170 | bary_hi | OHZ | lo | 6538/15625 | s1270,s1131,lo_CZP,lo_CDZ,s1203,lo_OHD,lo_OHP |
| s1291 | 173 | bary_lo | HYZ | lo | 122849/1000000 | s1270,s1131,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1294 | 174 | bary_lo | CZQ | lo | 27459/250000 | s1270,s1131,lo_CZP,lo_CDZ,s1194,s1197 |
| s1295 | 175 | bary_hi | DFZ | hi | 528021/1000000 | s1270,s1131,lo_CZP,lo_CDZ,s1206,s1287 |
| s1296 | 176 | bary_hi | DYZ | hi | 118109/250000 | s1270,s1131,lo_CZP,lo_CDZ,s1207,lo_DYP |
| s1298 | 177 | bary_lo | DZQ | hi | 406179/1000000 | s1270,s1131,lo_CZP,lo_CDZ,hi_CDQ,s311 |
| s1302 | 181 | bary_hi | HCR | hi | 673459/1000000 | hi_CDQ,lo_DQR,s1136,lo_CDR,s272,s1158 |
| s1308 | 182 | bary_lo | CPR | hi | 56083/125000 | hi_CDQ,lo_DQR,s1136,lo_CDR,s1270,s883 |
| s1309 | 183 | bary_lo | DFR | lo | 111329/1000000 | hi_CDQ,lo_DQR,s1136,lo_CDR,lo_CDF,s1170 |
| s1311 | 184 | bary_lo | DYR | lo | 51353/250000 | hi_CDQ,lo_DQR,s1136,lo_CDR,s1234,s1229 |
| s1319 | 190 | bary_lo | ZPQ | lo | 29273/200000 | s1217,lo_FYP,lo_DYP,s1134,s1250,s1132,lo_YZQ |
| s1320 | 191 | bary_lo | OFR | hi | 103569/125000 | hi_DYQ,lo_YQR,lo_DQR,s1311,s1168,lo_OFY,hi_OFQ |
| s1327 | 192 | bary_hi | YZP | hi | 34661/125000 | s1230,s1288,lo_FZP,lo_FYP,s1230 |
| s1330 | 0 | sum | OHF | lo | 148661/500000 | s1225,lo_OFY,lo_OHY |
| s1334 | 3 | sum | OCD | lo | 445709/1000000 | lo_CDZ,s1284,s1139 |
| s1335 | 4 | sum | OCR | lo | 31723/100000 | lo_CZR,s1284,lo_OZR |
| s1339 | 6 | sum | OYQ | lo | 345741/1000000 | s1268,lo_OZQ,lo_YZQ |
| s1341 | 8 | sum | HCD | lo | 738751/1000000 | lo_CDZ,s1149,s1248 |
| s1344 | 11 | sum | HDQ | lo | 91817/200000 | s1200,lo_HDP,lo_HPQ |
| s1345 | 12 | sum | HFZ | lo | 155811/500000 | lo_FZP,s1265,s1271 |
| s1348 | 14 | sum | CPQ | lo | 349201/1000000 | lo_CZP,s1294,s1319 |
| s1349 | 15 | sum | FYZ | lo | 318537/1000000 | lo_FYP,lo_FZP,s1288 |
| s1353 | 18 | sumlo | OCY | lo | 80561/500000 | lo_OCQ,lo_OHY,s1203,s1339,hi_OHQ |
| s1354 | 19 | sumlo | ODY | lo | 21621/100000 | s1169,s1339,lo_ODQ,lo_OFY,hi_OFQ |
| s1355 | 21 | sumlo | OYZ | lo | 161819/1000000 | lo_OFY,lo_OZQ,s1172,s1339,hi_OFQ |
| s1356 | 22 | sumlo | HCF | lo | 156897/500000 | s1149,s1330,s1345,s1203,s1245 |
| s1357 | 24 | sumlo | HFY | lo | 56173/500000 | s1345,lo_OHY,s1291,s1330,s1245 |
| s1360 | 27 | sumlo | OCP | lo | 326521/1000000 | s1198,s1203,s1142,s1335,s1302 |
| s1363 | 28 | sumlo | OCZ | lo | 66719/500000 | lo_CZP,s1335,lo_CZR,s1360,s1308 |
| s1364 | 30 | sumlo | CZQ | lo | 27727/250000 | s1194,lo_CZP,lo_CDZ,s1348,s1270 |
| s1366 | 31 | sumlo | ODR | lo | 63091/250000 | lo_CDR,lo_ODQ,lo_DQR,s1334,hi_CDQ |
| s1368 | 33 | sumlo | HDR | lo | 53047/200000 | lo_CDR,s1344,lo_DQR,s1341,hi_CDQ |
| s1369 | 35 | sumlo | HFP | lo | 99587/1000000 | lo_FZP,s1330,s1345,lo_OFP,s716 |
| s1370 | 37 | sumlo | OZP | lo | 63427/250000 | lo_CZP,s1289,s1271,s1363,s1247 |
| s1372 | 39 | sumlo | ZPR | lo | 18313/100000 | lo_CZP,lo_OZR,lo_CZR,s1370,s554 |
| s1374 | 42 | sumlo | DZP | lo | 263437/1000000 | lo_CDZ,s1319,lo_CZP,s1250,s725 |
| s1375 | 43 | sumlo | FZQ | lo | 16289/62500 | s1249,lo_YZQ,s1250,s1349,s1296 |
| s1377 | 45 | sumlo | DFP | lo | 23909/200000 | lo_DYP,lo_FZP,s1374,lo_FYP,s1327 |
| s1380 | 50 | sumlo | CQR | lo | 159209/1000000 | lo_CDR,s1180,lo_DQR,s1335,s1252 |
| s1383 | 52 | balance_lo | ODZ | lo | 225873/1000000 | s1194,lo_OZR,lo_DQR,s1363,lo_CDR,lo_OZQ,hi_CQR |
| s1384 | 56 | balance_lo | HYQ | lo | 1327/6250 | s1194,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s1386 | 57 | balance_lo | HCP | lo | 191293/1000000 | s1334,lo_HPQ,s1194,lo_OHP,lo_OCQ,lo_HDP,hi_ODQ |
| s1389 | 60 | balance_lo | ZQR | lo | 59689/500000 | lo_OZQ,lo_CDR,s1180,lo_CDZ,lo_OZR,s1194,hi_OCD |
| s1390 | 61 | balance_lo | HZQ | lo | 36351/200000 | s1291,s1194,lo_YZQ,s1341,s1384,lo_CDZ,s1207 |
| s1391 | 65 | balance_lo | OPQ | lo | 249663/500000 | lo_OHP,s1364,lo_HPQ,s1363,lo_OHQ,lo_CZP,s1247 |
| s1392 | 65 | balance_lo | HCZ | lo | 77969/500000 | lo_OHP,s1364,lo_HPQ,s1363,lo_OHQ,lo_CZP,s750 |
| s1393 | 66 | balance_lo | ODP | lo | 231003/1000000 | s1354,lo_CZP,lo_DYP,s1363,lo_OYP,lo_CDZ,s1226 |
| s1394 | 67 | balance_lo | DPQ | lo | 71337/250000 | lo_HDP,s1364,lo_HPQ,lo_CDZ,s1344,lo_CZP,s1247 |
| s1399 | 71 | balance_lo | OZP | lo | 129411/500000 | s1203,s1372,s1335,s1271,s1159,lo_CZP,s1302 |
| s1400 | 73 | balance_lo | HZR | lo | 151281/500000 | s1203,lo_DZR,s1341,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s1401 | 76 | linear | OHC | hi | 301603/500000 | s1392,s554,s1245 |
| s1404 | 77 | linear | HCQ | hi | 372497/500000 | hi_OCQ,s1203,hi_OHQ |
| s1405 | 78 | linear | OHR | lo | 124733/200000 | s1187,s505,s1203 |
| s1406 | 80 | linear | OHF | lo | 149173/500000 | s1357,lo_OFY,lo_OHY |
| s1409 | 81 | linear | OCD | lo | 452311/1000000 | lo_CDZ,s1363,s1383 |
| s1412 | 82 | linear | OCR | lo | 159719/500000 | lo_CZR,s1363,lo_OZR |
| s1414 | 83 | linear | CPQ | hi | 275693/500000 | s1360,hi_OCQ,s750 |
| s1416 | 85 | linear | ODF | hi | 870813/1000000 | s1295,s1383,s716 |
| s1417 | 86 | linear | ODF | lo | 110887/250000 | s1377,s1393,lo_OFP |
| s1418 | 87 | linear | DFQ | lo | 2362/15625 | s1417,lo_ODQ,hi_OFQ |
| s1420 | 89 | linear | OFZ | lo | 222411/500000 | lo_FZP,lo_OFP,s1399 |
| s1422 | 90 | linear | OFQ | lo | 399223/500000 | s1375,s1420,lo_OZQ |
| s1427 | 91 | linear | OYQ | lo | 347819/1000000 | s1355,lo_OZQ,lo_YZQ |
| s1428 | 93 | linear | OQR | lo | 152689/500000 | lo_OZQ,lo_OZR,s1389 |
| s1429 | 94 | linear | HCD | lo | 741527/1000000 | lo_CDZ,s1392,s1248 |
| s1430 | 94 | linear | HDZ | hi | 329031/500000 | lo_CDZ,s272,s1392 |
| s1436 | 95 | linear | HCR | lo | 1103/2000 | lo_CZR,s1392,s1400 |
| s1438 | 96 | linear | HDQ | lo | 117837/250000 | s1394,lo_HDP,lo_HPQ |
| s1439 | 97 | linear | HFZ | lo | 311799/1000000 | lo_FZP,s1369,s1271 |
| s1441 | 99 | linear | CDP | lo | 449437/1000000 | lo_CDZ,lo_CZP,s1374 |
| s1442 | 100 | linear | CDQ | lo | 345209/1000000 | lo_CDR,s1380,lo_DQR |
| s1445 | 101 | linear | CPQ | lo | 350273/1000000 | lo_CZP,s1364,s1319 |
| s1446 | 102 | linear | CPR | lo | 36913/100000 | lo_CZP,lo_CZR,s1372 |
| s1448 | 103 | linear | DFQ | hi | 84197/125000 | s1295,s1298,s1375 |
| s1450 | 108 | linear | OHC | lo | 452311/1000000 | s1409 |
| s1452 | 110 | linear | HDF | hi | 258473/1000000 | s1429 |
| s1453 | 111 | linear | CDF | hi | 343103/500000 | s1356 |
| s1454 | 112 | bary_hi | CDY | hi | 358061/500000 | s1401,lo_HCY,s1353,lo_OHY,hi_OCD,s272 |
| s1469 | 120 | bary_hi | OYQ | hi | 164317/250000 | s1245,s1291,s1355,lo_OHY,hi_OHQ,s719 |
| s1471 | 121 | bary_hi | HFY | lo | 11259/100000 | s1245,s1291,s1355,lo_OHY,s1406,s1439 |
| s1472 | 122 | bary_hi | CYZ | hi | 173187/1000000 | s1245,s1291,s1355,lo_OHY,s554,s1247 |
| s1476 | 124 | bary_lo | FYZ | hi | 461063/1000000 | s1245,s1291,s1355,lo_OHY,s716,s1273 |
| s1492 | 128 | bary_hi | DFY | hi | 639487/1000000 | hi_OHQ,s1384,s1427,lo_OHY,s1416,s1452,s1448 |
| s1493 | 129 | bary_lo | OHZ | hi | 581761/1000000 | s505,lo_CZR,lo_OZR,s1363,s1401,s374 |
| s1494 | 130 | bary_lo | OFZ | hi | 566019/1000000 | s505,lo_CZR,lo_OZR,s1363,hi_OCF,s1320 |
| s1497 | 132 | bary_hi | HCZ | hi | 52829/250000 | s505,lo_CZR,lo_OZR,s1363,s1450,s1302 |
| s1498 | 133 | bary_hi | HDZ | lo | 62213/125000 | s505,lo_CZR,lo_OZR,s1363,lo_OHD,s1429,s1368 |
| s1500 | 136 | bary_lo | DFZ | lo | 130909/500000 | s505,lo_CZR,lo_OZR,s1363,s1417,lo_CDF,s1309 |
| s1501 | 138 | bary_hi | DZQ | lo | 39019/125000 | s505,lo_CZR,lo_OZR,s1363,lo_ODQ,s1442,lo_DQR |
| s1503 | 143 | bary_lo | ODR | hi | 181083/500000 | hi_ODQ,lo_DQR,s1428,s1366,hi_ODQ |
| s1504 | 144 | bary_lo | OFR | hi | 409681/500000 | hi_ODQ,lo_DQR,s1428,s1366,s1416,hi_OFQ |
| s1519 | 147 | bary_hi | OPQ | hi | 690531/1000000 | s1494,lo_FZP,s1399,lo_OFP,hi_OFQ,s719 |
| s1521 | 148 | bary_hi | HFP | lo | 401/4000 | s1494,lo_FZP,s1399,lo_OFP,s1406,s1439 |
| s1522 | 152 | bary_hi | FPQ | lo | 17401/100000 | s1494,lo_FZP,s1399,lo_OFP,s1422,s1375 |
| s1525 | 154 | bary_hi | OYZ | lo | 82811/500000 | hi_OFQ,s1375,lo_OZQ,s1420,lo_OFY,s1427 |
| s1527 | 156 | bary_hi | CDP | hi | 569509/1000000 | hi_OFQ,s1522,s1391,lo_OFP,hi_OCD,s1453,s1442 |
| s1528 | 157 | bary_hi | HZP | lo | 59659/500000 | s1469,lo_YZQ,lo_OZQ,s1525,lo_OHP,lo_HYP,lo_HPQ |
| s1531 | 160 | bary_hi | DFZ | hi | 524371/1000000 | s272,lo_CDZ,s1498,s1392,s1452,s1453 |
| s1534 | 162 | bary_lo | HDP | hi | 26627/100000 | s272,s1441,lo_HDP,s1386,s272 |
| s1541 | 167 | bary_hi | DFP | hi | 322849/1000000 | s1430,s1374,s1528,lo_HDP,s1452,s1531 |
| s1542 | 169 | bary_lo | YZP | lo | 16629/125000 | hi_HFQ,s1522,lo_HPQ,s1521,s1291,s1349,lo_YZQ |
| s1543 | 170 | bary_hi | OHZ | lo | 426937/1000000 | s1527,s1374,lo_CZP,lo_CDZ,s1450,lo_OHD,lo_OHP |
| s1544 | 172 | bary_lo | HDZ | hi | 327129/500000 | s1527,s1374,lo_CZP,lo_CDZ,s272,s1534 |
| s1545 | 173 | bary_lo | HYZ | lo | 123373/1000000 | s1527,s1374,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1548 | 174 | bary_lo | CZQ | lo | 113571/1000000 | s1527,s1374,lo_CZP,lo_CDZ,s1442,s1445 |
| s1549 | 175 | bary_hi | DFZ | hi | 257407/500000 | s1527,s1374,lo_CZP,lo_CDZ,s1453,s1541 |
| s1550 | 176 | bary_hi | DYZ | hi | 116763/250000 | s1527,s1374,lo_CZP,lo_CDZ,s1454,lo_DYP |
| s1552 | 177 | bary_lo | DZQ | hi | 402823/1000000 | s1527,s1374,lo_CZP,lo_CDZ,hi_CDQ,s311 |
| s1555 | 181 | bary_hi | HCR | hi | 167573/250000 | hi_CDQ,lo_DQR,s1380,lo_CDR,s272,s1404 |
| s1560 | 182 | bary_lo | CPR | hi | 439391/1000000 | hi_CDQ,lo_DQR,s1380,lo_CDR,s1527,s1414 |
| s1561 | 183 | bary_lo | DFR | lo | 57147/500000 | hi_CDQ,lo_DQR,s1380,lo_CDR,lo_CDF,s1418 |
| s1569 | 187 | bary_lo | OCZ | lo | 136721/1000000 | s1560,s1372,lo_CZR,lo_CZP,s1360,s1412 |
| s1570 | 188 | bary_lo | HCZ | lo | 157217/1000000 | s1560,s1372,lo_CZR,lo_CZP,s1386,s1436 |
| s1576 | 190 | bary_lo | ZPQ | lo | 2332/15625 | s1492,lo_FYP,lo_DYP,s1377,s1501,s1375,lo_YZQ |
| s1581 | 192 | bary_hi | YZP | hi | 275063/1000000 | s1476,s1542,lo_FZP,lo_FYP,s1476 |
| s1584 | 0 | sum | OHF | lo | 29859/100000 | s1471,lo_OFY,lo_OHY |
| s1588 | 2 | sum | OHQ | lo | 175423/250000 | s1390,s1543,lo_OZQ |
| s1589 | 3 | sum | OCD | lo | 227797/500000 | lo_CDZ,s1569,s1383 |
| s1591 | 4 | sum | OCR | lo | 322721/1000000 | lo_CZR,s1569,lo_OZR |
| s1595 | 6 | sum | OYQ | lo | 175811/500000 | s1525,lo_OZQ,lo_YZQ |
| s1597 | 8 | sum | HCD | lo | 747921/1000000 | lo_CDZ,s1570,s1498 |
| s1598 | 9 | sum | HCQ | lo | 452543/1000000 | s1548,s1570,s1390 |
| s1599 | 10 | sum | HCR | lo | 552779/1000000 | lo_CZR,s1570,s1400 |
| s1601 | 12 | sum | HFZ | lo | 39071/125000 | lo_FZP,s1521,s1528 |
| s1604 | 14 | sum | CPQ | lo | 355819/1000000 | lo_CZP,s1548,s1576 |
| s1605 | 15 | sum | FYZ | lo | 39879/125000 | lo_FYP,lo_FZP,s1542 |
| s1608 | 17 | sumlo | OCF | lo | 83203/200000 | s1569,s1584,s1420,s1450,s1493 |
| s1609 | 18 | sumlo | OCY | lo | 167691/1000000 | lo_OCQ,lo_OHY,s1450,s1595,hi_OHQ |
| s1610 | 19 | sumlo | ODY | lo | 55887/250000 | s1417,s1595,lo_ODQ,lo_OFY,hi_OFQ |
| s1611 | 21 | sumlo | OYZ | lo | 167337/1000000 | lo_OFY,lo_OZQ,s1420,s1595,hi_OFQ |
| s1613 | 24 | sumlo | HFY | lo | 14161/125000 | s1601,lo_OHY,s1545,s1584,s1493 |
| s1615 | 27 | sumlo | OCP | lo | 85297/250000 | s1446,s1450,s1386,s1591,s1555 |
| s1618 | 28 | sumlo | OCZ | lo | 3513/25000 | lo_CZP,s1591,lo_CZR,s1615,s1560 |
| s1619 | 29 | sumlo | HCZ | lo | 157487/1000000 | lo_CZP,s1599,lo_CZR,s1386,s1560 |
| s1620 | 30 | sumlo | CZQ | lo | 28619/250000 | s1442,lo_CZP,lo_CDZ,s1604,s1527 |
| s1622 | 31 | sumlo | ODR | lo | 31819/125000 | lo_CDR,lo_ODQ,lo_DQR,s1589,hi_CDQ |
| s1624 | 33 | sumlo | HDR | lo | 13499/50000 | lo_CDR,s1438,lo_DQR,s1597,hi_CDQ |
| s1625 | 35 | sumlo | HFP | lo | 1569/15625 | lo_FZP,s1584,s1601,lo_OFP,s1494 |
| s1627 | 37 | sumlo | OZP | lo | 133619/500000 | lo_CZP,s1543,s1528,s1618,s1497 |
| s1628 | 38 | sumlo | HZR | lo | 77173/250000 | lo_CZR,s1543,s1619,lo_OZR,s554 |
| s1629 | 39 | sumlo | ZPR | lo | 190277/1000000 | lo_CZP,lo_OZR,lo_CZR,s1627,s554 |
| s1630 | 40 | sumlo | DZP | lo | 5431/20000 | lo_CDZ,s1528,lo_CZP,s1498,s1497 |
| s1631 | 43 | sumlo | FZQ | lo | 265357/1000000 | s1500,lo_YZQ,s1501,s1605,s1550 |
| s1634 | 45 | sumlo | DFP | lo | 24651/200000 | lo_DYP,lo_FZP,s1630,lo_FYP,s1581 |
| s1636 | 50 | sumlo | CQR | lo | 20161/125000 | lo_CDR,s1428,lo_DQR,s1591,s1503 |
| s1639 | 52 | balance_lo | ODZ | lo | 230007/1000000 | s1442,lo_OZR,lo_DQR,s1618,lo_CDR,lo_OZQ,hi_CQR |
| s1640 | 56 | balance_lo | HYQ | lo | 26607/125000 | s1442,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s1642 | 57 | balance_lo | HCP | lo | 4843/25000 | s1589,lo_HPQ,s1442,lo_OHP,lo_OCQ,lo_HDP,hi_ODQ |
| s1644 | 60 | balance_lo | ZQR | lo | 120069/1000000 | lo_OZQ,lo_CDR,s1428,lo_CDZ,lo_OZR,s1442,hi_OCD |
| s1645 | 61 | balance_lo | HZQ | lo | 46061/250000 | s1545,s1442,lo_YZQ,s1597,s1640,lo_CDZ,s1454 |
| s1646 | 65 | balance_lo | OPQ | lo | 521799/1000000 | lo_OHP,s1620,lo_HPQ,s1618,s1588,lo_CZP,s1497 |
| s1647 | 65 | balance_lo | HCZ | lo | 499/3125 | lo_OHP,s1620,lo_HPQ,s1618,s1588,lo_CZP,s1519 |
| s1648 | 66 | balance_lo | ODP | lo | 245441/1000000 | s1610,lo_CZP,lo_DYP,s1618,lo_OYP,lo_CDZ,s1472 |
| s1649 | 67 | balance_lo | DPQ | lo | 298749/1000000 | lo_HDP,s1620,lo_HPQ,lo_CDZ,s1438,lo_CZP,s1497 |
| s1652 | 71 | balance_lo | OZP | lo | 34047/125000 | s1450,s1629,s1591,s1528,s1405,lo_CZP,s1555 |
| s1653 | 75 | balance_lo | HCF | lo | 161933/500000 | s1450,s1522,s1608,lo_HPQ,s1584,s1604,s1519 |
| s1654 | 76 | linear | OHC | hi | 598151/1000000 | s1647,s554,s1493 |
| s1656 | 77 | linear | OHQ | lo | 359427/500000 | s1598,hi_OCQ,s1450 |
| s1657 | 77 | linear | HCQ | hi | 733689/1000000 | hi_OCQ,s1450,hi_OHQ |
| s1658 | 78 | linear | OHR | lo | 32151/50000 | s1599,s505,s1450 |
| s1659 | 80 | linear | OHF | lo | 37411/125000 | s1613,lo_OFY,lo_OHY |
| s1662 | 81 | linear | OCD | lo | 463527/1000000 | lo_CDZ,s1618,s1639 |
| s1666 | 82 | linear | OCR | lo | 8163/25000 | lo_CZR,s1618,lo_OZR |
| s1668 | 83 | linear | CPQ | hi | 535343/1000000 | s1615,hi_OCQ,s1519 |
| s1670 | 85 | linear | ODF | hi | 425413/500000 | s1549,s1639,s1494 |
| s1671 | 86 | linear | ODF | lo | 7214/15625 | s1634,s1648,lo_OFP |
| s1672 | 87 | linear | DFQ | lo | 42329/250000 | s1671,lo_ODQ,hi_OFQ |
| s1674 | 89 | linear | OFZ | lo | 57297/125000 | lo_FZP,lo_OFP,s1652 |
| s1676 | 90 | linear | OFQ | lo | 816733/1000000 | s1631,s1674,lo_OZQ |
| s1681 | 91 | linear | OYQ | lo | 353337/1000000 | s1611,lo_OZQ,lo_YZQ |
| s1682 | 93 | linear | OQR | lo | 306069/1000000 | lo_OZQ,lo_OZR,s1644 |
| s1683 | 94 | linear | HCD | lo | 46899/62500 | lo_CDZ,s1647,s1498 |
| s1689 | 95 | linear | HCR | lo | 140343/250000 | lo_CZR,s1647,s1628 |
| s1692 | 96 | linear | HDQ | lo | 484749/1000000 | s1649,lo_HDP,lo_HPQ |
| s1693 | 97 | linear | HFZ | lo | 156367/500000 | lo_FZP,s1625,s1528 |
| s1696 | 100 | linear | CDQ | lo | 43411/125000 | lo_CDR,s1636,lo_DQR |
| s1699 | 101 | linear | CPQ | lo | 89181/250000 | lo_CZP,s1620,s1576 |
| s1700 | 102 | linear | CPR | lo | 376277/1000000 | lo_CZP,lo_CZR,s1629 |
| s1702 | 103 | linear | DFQ | hi | 16307/25000 | s1549,s1552,s1631 |
| s1704 | 108 | linear | OHC | lo | 463527/1000000 | s1662 |
| s1706 | 110 | linear | HDF | hi | 15601/62500 | s1683 |
| s1707 | 111 | linear | CDF | hi | 338067/500000 | s1653 |
| s1708 | 112 | bary_hi | CDY | hi | 714509/1000000 | s1654,lo_HCY,s1609,lo_OHY,hi_OCD,s272 |
| s1721 | 120 | bary_hi | OYQ | hi | 655593/1000000 | s1493,s1545,s1611,lo_OHY,hi_OHQ,s719 |
| s1724 | 121 | bary_hi | HFY | lo | 56731/500000 | s1493,s1545,s1611,lo_OHY,s1659,s1693 |
| s1725 | 122 | bary_hi | CYZ | hi | 170061/1000000 | s1493,s1545,s1611,lo_OHY,s554,s1497 |
| s1747 | 128 | bary_hi | DFY | hi | 154983/250000 | hi_OHQ,s1640,s1681,lo_OHY,s1670,s1706,s1702 |
| s1748 | 129 | bary_lo | OHZ | hi | 580463/1000000 | s505,lo_CZR,lo_OZR,s1618,s1654,s374 |
| s1749 | 130 | bary_lo | OFZ | hi | 11231/20000 | s505,lo_CZR,lo_OZR,s1618,hi_OCF,s1504 |
| s1752 | 132 | bary_hi | HCZ | hi | 41379/200000 | s505,lo_CZR,lo_OZR,s1618,s1704,s1555 |
| s1753 | 133 | bary_hi | HDZ | lo | 502287/1000000 | s505,lo_CZR,lo_OZR,s1618,lo_OHD,s1683,s1624 |
| s1755 | 134 | bary_hi | HZR | lo | 61871/200000 | s505,lo_CZR,lo_OZR,s1618,s1658,s1689 |
| s1756 | 136 | bary_lo | DFZ | lo | 267921/1000000 | s505,lo_CZR,lo_OZR,s1618,s1671,lo_CDF,s1561 |
| s1758 | 138 | bary_hi | DZQ | lo | 156343/500000 | s505,lo_CZR,lo_OZR,s1618,lo_ODQ,s1696,lo_DQR |
| s1762 | 143 | bary_lo | ODR | hi | 14459/40000 | hi_ODQ,lo_DQR,s1682,s1622,hi_ODQ |
| s1763 | 144 | bary_lo | OFR | hi | 811213/1000000 | hi_ODQ,lo_DQR,s1682,s1622,s1670,hi_OFQ |
| s1778 | 147 | bary_hi | OPQ | hi | 43011/62500 | s1749,lo_FZP,s1652,lo_OFP,hi_OFQ,s719 |
| s1780 | 148 | bary_hi | HFP | lo | 50679/500000 | s1749,lo_FZP,s1652,lo_OFP,s1659,s1693 |
| s1781 | 152 | bary_hi | FPQ | lo | 22401/125000 | s1749,lo_FZP,s1652,lo_OFP,s1676,s1631 |
| s1784 | 154 | bary_hi | OYZ | lo | 86483/500000 | hi_OFQ,s1631,lo_OZQ,s1674,lo_OFY,s1681 |
| s1786 | 155 | bary_lo | DZQ | hi | 99227/250000 | hi_OFQ,s1631,lo_OZQ,s1674,hi_ODQ,s1702 |
| s1787 | 156 | bary_hi | CDP | hi | 561439/1000000 | hi_OFQ,s1781,s1646,lo_OFP,hi_OCD,s1707,s1696 |
| s1788 | 157 | bary_hi | HZP | lo | 23877/200000 | s1721,lo_YZQ,lo_OZQ,s1784,lo_OHP,lo_HYP,lo_HPQ |
| s1790 | 160 | bary_hi | DFZ | hi | 256683/500000 | s272,lo_CDZ,s1753,s1647,s1706,s1707 |
| s1801 | 167 | bary_hi | DFP | hi | 310221/1000000 | s1544,s1630,s1788,lo_HDP,s1706,s1790 |
| s1802 | 169 | bary_lo | YZP | lo | 33371/250000 | hi_HFQ,s1781,lo_HPQ,s1780,s1545,s1605,lo_YZQ |
| s1805 | 173 | bary_lo | HYZ | lo | 12381/100000 | s1787,s1630,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s1808 | 174 | bary_lo | CZQ | lo | 14577/125000 | s1787,s1630,lo_CZP,lo_CDZ,s1696,s1699 |
| s1809 | 175 | bary_hi | DFZ | hi | 125881/250000 | s1787,s1630,lo_CZP,lo_CDZ,s1707,s1801 |
| s1810 | 176 | bary_hi | DYZ | hi | 231197/500000 | s1787,s1630,lo_CZP,lo_CDZ,s1708,lo_DYP |
| s1814 | 181 | bary_hi | HCR | hi | 667789/1000000 | hi_CDQ,lo_DQR,s1636,lo_CDR,s272,s1657 |
| s1819 | 182 | bary_lo | CPR | hi | 215671/500000 | hi_CDQ,lo_DQR,s1636,lo_CDR,s1787,s1668 |
| s1820 | 183 | bary_lo | DFR | lo | 14789/125000 | hi_CDQ,lo_DQR,s1636,lo_CDR,lo_CDF,s1672 |
| s1828 | 186 | bary_hi | OHZ | lo | 109721/250000 | s1819,s1629,lo_CZR,lo_CZP,s1704,lo_OHP,s1658 |
| s1829 | 187 | bary_lo | OCZ | lo | 143961/1000000 | s1819,s1629,lo_CZR,lo_CZP,s1615,s1666 |
| s1830 | 188 | bary_lo | HCZ | lo | 81401/500000 | s1819,s1629,lo_CZR,lo_CZP,s1642,s1689 |
| s1835 | 189 | bary_lo | ZPR | hi | 122671/500000 | s1819,s1629,lo_CZR,lo_CZP,s1819 |
| s1836 | 190 | bary_lo | ZPQ | lo | 37953/250000 | s1747,lo_FYP,lo_DYP,s1634,s1758,s1631,lo_YZQ |
| s1841 | 0 | sum | OHF | lo | 149731/500000 | s1724,lo_OFY,lo_OHY |
| s1845 | 3 | sum | OCD | lo | 58371/125000 | lo_CDZ,s1829,s1639 |
| s1847 | 4 | sum | OCR | lo | 329961/1000000 | lo_CZR,s1829,lo_OZR |
| s1851 | 6 | sum | OYQ | lo | 179483/500000 | s1784,lo_OZQ,lo_YZQ |
| s1852 | 8 | sum | HCD | lo | 758089/1000000 | lo_CDZ,s1830,s1753 |
| s1853 | 9 | sum | HCQ | lo | 231831/500000 | s1808,s1830,s1645 |
| s1854 | 10 | sum | HCR | lo | 565157/1000000 | lo_CZR,s1830,s1755 |
| s1856 | 12 | sum | HFZ | lo | 313743/1000000 | lo_FZP,s1780,s1788 |
| s1859 | 14 | sum | CPQ | lo | 90357/250000 | lo_CZP,s1808,s1836 |
| s1860 | 15 | sum | FYZ | lo | 79871/250000 | lo_FYP,lo_FZP,s1802 |
| s1863 | 17 | sumlo | OCF | lo | 27519/62500 | s1829,s1841,s1674,s1704,s1748 |
| s1864 | 18 | sumlo | OCY | lo | 175039/1000000 | lo_OCQ,lo_OHY,s1704,s1851,hi_OHQ |
| s1865 | 19 | sumlo | ODY | lo | 116727/500000 | s1671,s1851,lo_ODQ,lo_OFY,hi_OFQ |
| s1866 | 21 | sumlo | OYZ | lo | 175581/1000000 | lo_OFY,lo_OZQ,s1674,s1851,hi_OFQ |
| s1869 | 24 | sumlo | HFY | lo | 5707/50000 | s1856,lo_OHY,s1805,s1841,s1748 |
| s1872 | 27 | sumlo | OCP | lo | 356901/1000000 | s1700,s1704,s1642,s1847,s1814 |
| s1875 | 28 | sumlo | OCZ | lo | 148091/1000000 | lo_CZP,s1847,lo_CZR,s1872,s1819 |
| s1876 | 29 | sumlo | HCZ | lo | 81809/500000 | lo_CZP,s1854,lo_CZR,s1642,s1819 |
| s1877 | 30 | sumlo | CZQ | lo | 23479/200000 | s1696,lo_CZP,lo_CDZ,s1859,s1787 |
| s1878 | 31 | sumlo | ODR | lo | 257071/1000000 | lo_CDR,lo_ODQ,lo_DQR,s1845,hi_CDQ |
| s1880 | 33 | sumlo | HDR | lo | 275199/1000000 | lo_CDR,s1692,lo_DQR,s1852,hi_CDQ |
| s1881 | 35 | sumlo | HFP | lo | 50777/500000 | lo_FZP,s1841,s1856,lo_OFP,s1749 |
| s1883 | 37 | sumlo | OZP | lo | 282733/1000000 | lo_CZP,s1828,s1788,s1875,s1752 |
| s1884 | 38 | sumlo | HZR | lo | 1989/6250 | lo_CZR,s1828,s1876,lo_OZR,s554 |
| s1885 | 39 | sumlo | ZPR | lo | 198461/1000000 | lo_CZP,lo_OZR,lo_CZR,s1883,s554 |
| s1887 | 39 | diffhi | OZP | hi | 11609/31250 | s554,s1835,lo_CZP,lo_OZR,lo_CZR |
| s1888 | 40 | sumlo | DZP | lo | 279443/1000000 | lo_CDZ,s1788,lo_CZP,s1753,s1752 |
| s1889 | 41 | sumlo | HCZ | lo | 165887/1000000 | lo_CZP,s1884,lo_CZR,s1788,s1835 |
| s1891 | 43 | sumlo | FZQ | lo | 269931/1000000 | s1756,lo_YZQ,s1758,s1860,s1810 |
| s1893 | 44 | sumlo | DFP | lo | 131401/1000000 | s1888,lo_OFP,lo_FZP,s1648,s1887 |
| s1896 | 50 | sumlo | CQR | lo | 163637/1000000 | lo_CDR,s1682,lo_DQR,s1847,s1762 |
| s1902 | 55 | balance_lo | ODZ | lo | 58497/250000 | lo_DZR,s1704,lo_OZR,s1852,s1878,s1889,s1814 |
| s1903 | 56 | balance_lo | HYQ | lo | 213191/1000000 | s1696,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s1905 | 57 | balance_lo | HCP | lo | 195873/1000000 | s1845,lo_HPQ,s1696,lo_OHP,lo_OCQ,lo_HDP,hi_ODQ |
| s1907 | 61 | balance_lo | HZQ | lo | 186599/1000000 | s1805,s1696,lo_YZQ,s1852,s1903,lo_CDZ,s1708 |
| s1908 | 65 | balance_lo | OPQ | lo | 548003/1000000 | lo_OHP,s1877,lo_HPQ,s1875,s1656,lo_CZP,s1752 |
| s1909 | 66 | balance_lo | ODP | lo | 25951/100000 | s1865,lo_CZP,lo_DYP,s1875,lo_OYP,lo_CDZ,s1725 |
| s1914 | 71 | balance_lo | OZP | lo | 57259/200000 | s1704,s1885,s1847,s1788,s1658,lo_CZP,s1814 |
| s1915 | 75 | balance_lo | HCF | lo | 168743/500000 | s1704,s1781,s1863,lo_HPQ,s1841,s1859,s1778 |
| s1916 | 76 | linear | OHC | hi | 295323/500000 | s1889,s554,s1748 |
| s1918 | 77 | linear | OHQ | lo | 741189/1000000 | s1853,hi_OCQ,s1704 |
| s1919 | 77 | linear | HCQ | hi | 722473/1000000 | hi_OCQ,s1704,hi_OHQ |
| s1920 | 78 | linear | OHR | lo | 333307/500000 | s1854,s505,s1704 |
| s1922 | 80 | linear | OHF | lo | 15007/50000 | s1869,lo_OFY,lo_OHY |
| s1926 | 81 | linear | OCD | lo | 475079/1000000 | lo_CDZ,s1875,s1902 |
| s1931 | 82 | linear | OCR | lo | 334091/1000000 | lo_CZR,s1875,lo_OZR |
| s1933 | 83 | linear | CPQ | hi | 20691/40000 | s1872,hi_OCQ,s1778 |
| s1935 | 84 | linear | OCQ | lo | 94589/1000000 | s1896,s1931,s511 |
| s1936 | 84 | linear | OQR | lo | 19483/62500 | s1896,hi_OCQ,s1931 |
| s1937 | 85 | linear | ODF | hi | 415543/500000 | s1809,s1902,s1749 |
| s1938 | 86 | linear | ODF | lo | 483911/1000000 | s1893,s1909,lo_OFP |
| s1941 | 88 | linear | ODR | hi | 44477/125000 | lo_DQR,hi_ODQ,s1936 |
| s1942 | 89 | linear | OFZ | lo | 94459/200000 | lo_FZP,lo_OFP,s1914 |
| s1944 | 90 | linear | OFQ | lo | 417613/500000 | s1891,s1942,lo_OZQ |
| s1949 | 91 | linear | OYQ | lo | 361581/1000000 | s1866,lo_OZQ,lo_YZQ |
| s1952 | 94 | linear | HCD | lo | 380587/500000 | lo_CDZ,s1889,s1753 |
| s1959 | 95 | linear | HCR | lo | 577127/1000000 | lo_CZR,s1889,s1884 |
| s1962 | 97 | linear | HFZ | lo | 313939/1000000 | lo_FZP,s1881,s1788 |
| s1966 | 100 | linear | CDQ | lo | 349637/1000000 | lo_CDR,s1896,lo_DQR |
| s1969 | 101 | linear | CPQ | lo | 362207/1000000 | lo_CZP,s1877,s1836 |
| s1970 | 102 | linear | CPR | lo | 384461/1000000 | lo_CZP,lo_CZR,s1885 |
| s1972 | 103 | linear | DFQ | hi | 630501/1000000 | s1809,s1786,s1891 |
| s1976 | 108 | linear | OHC | lo | 475079/1000000 | s1926 |
| s1978 | 110 | linear | HDF | hi | 119413/500000 | s1952 |
| s1979 | 111 | linear | CDF | hi | 331257/500000 | s1915 |
| s1980 | 112 | bary_hi | CDY | hi | 712063/1000000 | s1916,lo_HCY,s1864,lo_OHY,hi_OCD,s272 |
| s1996 | 120 | bary_hi | OYQ | hi | 65407/100000 | s1748,s1805,s1866,lo_OHY,hi_OHQ,s719 |
| s1998 | 121 | bary_hi | HFY | lo | 28579/250000 | s1748,s1805,s1866,lo_OHY,s1922,s1962 |
| s2019 | 128 | bary_hi | DFY | hi | 299141/500000 | hi_OHQ,s1903,s1949,lo_OHY,s1937,s1978,s1972 |
| s2020 | 129 | bary_lo | OHZ | hi | 115707/200000 | s505,lo_CZR,lo_OZR,s1875,s1916,s374 |
| s2021 | 130 | bary_lo | OFZ | hi | 557587/1000000 | s505,lo_CZR,lo_OZR,s1875,hi_OCF,s1763 |
| s2024 | 131 | bary_hi | OZQ | hi | 85873/500000 | s505,lo_CZR,lo_OZR,s1875,s1935,s511 |
| s2025 | 132 | bary_hi | HCZ | hi | 202711/1000000 | s505,lo_CZR,lo_OZR,s1875,s1976,s1814 |
| s2026 | 133 | bary_hi | HDZ | lo | 126899/250000 | s505,lo_CZR,lo_OZR,s1875,lo_OHD,s1952,s1880 |
| s2028 | 134 | bary_hi | HZR | lo | 159731/500000 | s505,lo_CZR,lo_OZR,s1875,s1920,s1959 |
| s2031 | 136 | bary_lo | DFZ | lo | 275581/1000000 | s505,lo_CZR,lo_OZR,s1875,s1938,lo_CDF,s1820 |
| s2033 | 138 | bary_hi | DZQ | lo | 313289/1000000 | s505,lo_CZR,lo_OZR,s1875,lo_ODQ,s1966,lo_DQR |
| s2041 | 144 | bary_lo | OFR | hi | 401057/500000 | hi_ODQ,lo_DQR,s1936,s1878,s1937,hi_OFQ |
| s2054 | 147 | bary_hi | OPQ | hi | 685989/1000000 | s2021,lo_FZP,s1914,lo_OFP,hi_OFQ,s2024 |
| s2056 | 148 | bary_hi | HFP | lo | 51211/500000 | s2021,lo_FZP,s1914,lo_OFP,s1922,s1962 |
| s2057 | 152 | bary_hi | FPQ | lo | 184329/1000000 | s2021,lo_FZP,s1914,lo_OFP,s1944,s1891 |
| s2061 | 154 | bary_hi | OYZ | lo | 181899/1000000 | hi_OFQ,s1891,lo_OZQ,s1942,lo_OFY,s1949 |
| s2066 | 156 | bary_hi | CDP | hi | 550907/1000000 | hi_OFQ,s2057,s1908,lo_OFP,hi_OCD,s1979,s1966 |
| s2067 | 157 | bary_hi | HZP | lo | 59723/500000 | s1996,lo_YZQ,lo_OZQ,s2061,lo_OHP,lo_HYP,lo_HPQ |
| s2081 | 169 | bary_lo | YZP | lo | 133909/1000000 | hi_HFQ,s2057,lo_HPQ,s2056,s1805,s1860,lo_YZQ |
| s2083 | 173 | bary_lo | HYZ | lo | 124399/1000000 | s2066,s1888,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,lo_HYP |
| s2086 | 174 | bary_lo | CZQ | lo | 15021/125000 | s2066,s1888,lo_CZP,lo_CDZ,s1966,s1969 |
| s2088 | 176 | bary_hi | DYZ | hi | 227977/500000 | s2066,s1888,lo_CZP,lo_CDZ,s1980,lo_DYP |
| s2093 | 181 | bary_hi | HCR | hi | 133061/200000 | hi_CDQ,lo_DQR,s1896,lo_CDR,s272,s1919 |
| s2098 | 182 | bary_lo | CPR | hi | 210737/500000 | hi_CDQ,lo_DQR,s1896,lo_CDR,s2066,s1933 |
| s2106 | 186 | bary_hi | OHZ | lo | 456857/1000000 | s2098,s1885,lo_CZR,lo_CZP,s1976,lo_OHP,s1920 |
| s2107 | 187 | bary_lo | OCZ | lo | 15247/100000 | s2098,s1885,lo_CZR,lo_CZP,s1872,s1931 |
| s2109 | 188 | bary_lo | HCZ | lo | 34113/200000 | s2098,s1885,lo_CZR,lo_CZP,s1905,s1959 |
| s2115 | 189 | bary_lo | ZPR | hi | 117737/500000 | s2098,s1885,lo_CZR,lo_CZP,s2098 |
| s2116 | 190 | bary_lo | ZPQ | lo | 30949/200000 | s2019,lo_FYP,lo_DYP,s1893,s2033,s1891,lo_YZQ |
| s2125 | 0 | sum | OHF | lo | 75079/250000 | s1998,lo_OFY,lo_OHY |
| s2129 | 3 | sum | OCD | lo | 239729/500000 | lo_CDZ,s2107,s1902 |
| s2131 | 4 | sum | OCR | lo | 33847/100000 | lo_CZR,s2107,lo_OZR |
| s2135 | 6 | sum | OYQ | lo | 367899/1000000 | s2061,lo_OZQ,lo_YZQ |
| s2136 | 8 | sum | HCD | lo | 771161/1000000 | lo_CDZ,s2109,s2026 |
| s2137 | 9 | sum | HCQ | lo | 119333/250000 | s2086,s2109,s1907 |
| s2138 | 10 | sum | HCR | lo | 583027/1000000 | lo_CZR,s2109,s2028 |
| s2145 | 14 | sum | CPQ | lo | 367913/1000000 | lo_CZP,s2086,s2116 |
| s2146 | 15 | sum | FYZ | lo | 319909/1000000 | lo_FYP,lo_FZP,s2081 |
| s2149 | 17 | sumlo | OCF | lo | 58373/125000 | s2107,s2125,s1942,s1976,s2020 |
| s2152 | 21 | sumlo | OYZ | lo | 46231/250000 | lo_OFY,lo_OZQ,s1942,s2135,hi_OFQ |
| s2159 | 27 | sumlo | OCP | lo | 374183/1000000 | s1970,s1976,s1905,s2131,s2093 |
| s2162 | 28 | sumlo | OCZ | lo | 157249/1000000 | lo_CZP,s2131,lo_CZR,s2159,s2098 |
| s2165 | 29 | sumlo | HCZ | lo | 171867/1000000 | lo_CZP,s2138,lo_CZR,s1905,s2098 |
| s2167 | 30 | sumlo | CZQ | lo | 121131/1000000 | s1966,lo_CZP,lo_CDZ,s2145,s2066 |
| s2168 | 31 | sumlo | ODR | lo | 259837/1000000 | lo_CDR,lo_ODQ,lo_DQR,s2129,hi_CDQ |
| s2174 | 37 | sumlo | OZP | lo | 60451/200000 | lo_CZP,s2106,s2067,s2162,s2025 |
| s2175 | 38 | sumlo | HZR | lo | 332091/1000000 | lo_CZR,s2106,s2165,lo_OZR,s554 |
| s2179 | 39 | sumlo | ZPR | lo | 208773/1000000 | lo_CZP,lo_OZR,lo_CZR,s2174,s554 |
| s2181 | 39 | diffhi | OZP | hi | 176403/500000 | s554,s2115,lo_CZP,lo_OZR,lo_CZR |
| s2183 | 40 | sumlo | DZP | lo | 11507/40000 | lo_CDZ,s2067,lo_CZP,s2026,s2025 |
| s2185 | 41 | sumlo | HCZ | lo | 178333/1000000 | lo_CZP,s2175,lo_CZR,s2067,s2115 |
| s2191 | 43 | sumlo | FZQ | lo | 276021/1000000 | s2031,lo_YZQ,s2033,s2146,s2088 |
| s2199 | 50 | sumlo | CQR | lo | 84971/500000 | lo_CDR,s1936,lo_DQR,s2131,s1941 |
| s2204 | 51 | balance_lo | HCP | lo | 201049/1000000 | s2145,s2125,lo_HPQ,s2149,s2137,lo_OFP,hi_OFQ |
| s2209 | 55 | balance_lo | ODZ | lo | 121927/500000 | lo_DZR,s1976,lo_OZR,s2136,s2168,s2185,s2093 |
| s2216 | 65 | balance_lo | OPQ | lo | 72363/125000 | lo_OHP,s2167,lo_HPQ,s2162,s1918,lo_CZP,s2025 |
| s2217 | 65 | balance_hi | OHQ | hi | 974601/1000000 | s2054,s2025,lo_OHP,s2167,lo_HPQ,s2162,lo_CZP |
| s2225 | 70 | balance_lo | HCF | lo | 5664/15625 | s1976,lo_FZP,s2149,s2067,s2125,lo_CZP,s2181 |
| s2226 | 71 | balance_lo | OZP | lo | 30303/100000 | s1976,s2179,s2131,s2067,s1920,lo_CZP,s2093 |
| s2231 | 77 | linear | HCQ | hi | 342761/500000 | hi_OCQ,s1976,s2217 |
| s2232 | 78 | linear | OHR | lo | 174009/250000 | s2138,s505,s1976 |
| s2238 | 81 | linear | OCD | lo | 494103/1000000 | lo_CDZ,s2162,s2209 |
| s2245 | 82 | linear | OCR | lo | 343249/1000000 | lo_CZR,s2162,lo_OZR |
| s2246 | 83 | linear | CPQ | hi | 248903/500000 | s2159,hi_OCQ,s2054 |
| s2250 | 84 | linear | OQR | lo | 327191/1000000 | s2199,hi_OCQ,s2245 |
| s2257 | 89 | linear | OFZ | lo | 48903/100000 | lo_FZP,lo_OFP,s2226 |
| s2259 | 90 | linear | OFQ | lo | 858051/1000000 | s2191,s2257,lo_OZQ |
| s2264 | 91 | linear | OYQ | lo | 92731/250000 | s2152,lo_OZQ,lo_YZQ |
| s2269 | 94 | linear | HDZ | hi | 635667/1000000 | lo_CDZ,s272,s2185 |
| s2274 | 95 | linear | HCR | lo | 18857/31250 | lo_CZR,s2185,s2175 |
| s2284 | 100 | linear | CDQ | lo | 177971/500000 | lo_CDR,s2199,lo_DQR |
| s2288 | 102 | linear | CPR | lo | 394773/1000000 | lo_CZP,lo_CZR,s2179 |
| s2298 | 108 | linear | OHC | lo | 494103/1000000 | s2238 |
| s2300 | 111 | linear | CDF | hi | 9961/15625 | s2225 |
| s2328 | 120 | bary_hi | OYQ | hi | 635979/1000000 | s2020,s2083,s2152,lo_OHY,s2217,s2024 |
| s2360 | 130 | bary_lo | OFZ | hi | 276581/500000 | s505,lo_CZR,lo_OZR,s2162,hi_OCF,s2041 |
| s2363 | 132 | bary_hi | HCZ | hi | 24577/125000 | s505,lo_CZR,lo_OZR,s2162,s2298,s2093 |
| s2365 | 134 | bary_hi | HZR | lo | 166887/500000 | s505,lo_CZR,lo_OZR,s2162,s2232,s2274 |
| s2380 | 145 | bary_hi | HCR | hi | 132001/200000 | hi_ODQ,lo_DQR,s2250,s2168,s2298,s272,s2231 |
| s2396 | 152 | bary_hi | FPQ | lo | 38133/200000 | s2360,lo_FZP,s2226,lo_OFP,s2259,s2191 |
| s2399 | 154 | bary_hi | OYZ | lo | 96333/500000 | hi_OFQ,s2191,lo_OZQ,s2257,lo_OFY,s2264 |
| s2403 | 156 | bary_hi | CDP | hi | 531939/1000000 | hi_OFQ,s2396,s2216,lo_OFP,hi_OCD,s2300,s2284 |
| s2404 | 157 | bary_hi | HZP | lo | 120199/1000000 | s2328,lo_YZQ,lo_OZQ,s2399,lo_OHP,lo_HYP,lo_HPQ |
| s2413 | 163 | bary_lo | OCZ | lo | 2537/15625 | s2380,lo_CZR,s2365,s2185,s2298,s2245 |
| s2415 | 166 | bary_lo | OCP | lo | 46903/125000 | s2269,s2183,s2404,lo_HDP,s2298,s2238,s2413 |
| s2432 | 181 | bary_hi | HCR | hi | 657123/1000000 | hi_CDQ,lo_DQR,s2199,lo_CDR,s272,s2231 |
| s2437 | 182 | bary_lo | CPR | hi | 81319/200000 | hi_CDQ,lo_DQR,s2199,lo_CDR,s2403,s2246 |
| s2445 | 186 | bary_hi | OHZ | lo | 121209/250000 | s2437,s2179,lo_CZR,lo_CZP,s2298,lo_OHP,s2232 |
| s2446 | 187 | bary_lo | OCZ | lo | 32867/200000 | s2437,s2179,lo_CZR,lo_CZP,s2415,s2245 |
| s2457 | 189 | bary_lo | ZPR | hi | 44119/200000 | s2437,s2179,lo_CZR,lo_CZP,s2437 |
| s2476 | 4 | sum | OCR | lo | 70067/200000 | lo_CZR,s2446,lo_OZR |
| s2514 | 27 | sumlo | OCP | lo | 404023/1000000 | s2288,s2298,s2204,s2476,s2432 |
| s2521 | 28 | sumlo | OCZ | lo | 172543/1000000 | lo_CZP,s2476,lo_CZR,s2514,s2437 |
| s2540 | 37 | sumlo | OZP | lo | 334811/1000000 | lo_CZP,s2445,s2404,s2521,s2363 |
| s2551 | 39 | sumlo | OCZ | lo | 180359/1000000 | lo_CZP,lo_OZR,lo_CZR,s2540,s2457 |

## Conclusion

{"triangle":"OCZ","lower":"s2551","upper":"s554"}
