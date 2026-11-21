# Leaf rpmmpmpmpmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":-1,"OZR":-1}

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
| 18 | interior_line | ["OZ","R","ODQ","Q",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 22 | interior_line | ["CY","P","HCDF","P",-1] |
| 23 | interior_line | ["CZ","R","CDQ","R",-1] |
| 24 | interior_line | ["CP","R","CDQ","R",-1] |
| 25 | interior_line | ["DZ","R","CDQ","R",1] |
| 26 | interior_line | ["DP","R","CDQ","R",1] |
| 27 | interior_line | ["ZQ","Y","OHC","H",1] |
| 28 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 29 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 30 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 33 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 34 | plu | ["OHDYZ","OYZ",-1] |
| 35 | plu | ["OHDPR","OPR",-1] |
| 36 | plu | ["OHFYP","OFP",-1] |
| 37 | plu | ["COFZP","CFP",-1] |
| 38 | plu | ["DOHYZ","DYZ",1] |
| 39 | plu | ["DOHZP","DZP",-1] |
| 40 | plu | ["FOCYZ","FYZ",1] |
| 41 | plu | ["FOCYP","FYP",1] |
| 42 | plu | ["YODZP","YZP",1] |
| 43 | plu | ["YODPR","YPR",-1] |
| 44 | plu | ["YOZQR","YZR",1] |
| 45 | plu | ["ZOHFQ","ZFQ",-1] |
| 46 | plu | ["ZOHYR","ZHR",-1] |
| 47 | plu | ["ZOHPQ","ZPQ",-1] |
| 48 | plu | ["ZOHPR","ZPR",-1] |
| 49 | plu | ["ZOFYR","ZFR",-1] |
| 50 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHR | OHR | lo | 347/500 | ["cost","YZ"] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","YP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_ODR | ODR | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","Y"] |
| lo_OFP | OFP | lo | 279/1000 | ["cost","Y"] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YZ"] |
| lo_OFR | OFR | lo | 347/500 | ["cost","YZ"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
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
| lo_HFR | HFR | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 279/1000 | ["cost","Z"] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YZR | YZR | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
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
| hi_OPQ | OPQ | hi | 70912/79375 | "C050" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 2 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 3 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 4 | ["fan","OHR","HZR","OHZ","OZR"] | ["fan","OHR","Z"] |
| 5 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 6 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 7 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 8 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 9 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 10 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 11 | ["fan","ODR","DZR","ODZ","OZR"] | ["fan","ODR","Z"] |
| 12 | ["fan","OFZ","FYZ","OFY","OYZ"] | ["fan","OFZ","Y"] |
| 13 | ["fan","OFQ","FYQ","OFY","OYQ"] | ["fan","OFQ","Y"] |
| 14 | ["fan","OFQ","FZQ","OFZ","OZQ"] | ["fan","OFQ","Z"] |
| 15 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 16 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 17 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 18 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 19 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 20 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 21 | ["fan","CFQ","CFZ","CZQ","FZQ"] | ["fan","CFQ","Z"] |
| 22 | ["fan","CFR","CFZ","CZR","FZR"] | ["fan","CFR","Z"] |
| 23 | ["fan","CYP","CYZ","CZP","YZP"] | ["fan","CYP","Z"] |
| 24 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 25 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 26 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 27 | ["plu","OCY","OHR","OCR","OHY","OHC","OYR"] | ["plu","OHCYR"] |
| 28 | ["plu","OFR","OHY","OFY","OHR","OHF","OYR"] | ["plu","OHFYR"] |
| 29 | ["plu","ODY","OPQ","ODP","OYQ","ODQ","OYP"] | ["plu","ODYPQ"] |
| 30 | ["plu","ODR","OZQ","ODQ","OZR","ODZ","OQR"] | ["plu","ODZQR"] |
| 31 | ["plu","OFR","OZQ","OFQ","OZR","OFZ","OQR"] | ["plu","OFZQR"] |
| 32 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 33 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 34 | ["plu","HCP","OCZ","CZP","OHC","HCZ","OCP"] | ["plu","COHZP"] |
| 35 | ["plu","CFP","OCZ","CFZ","OCP","CZP","OCF"] | ["plu","COFZP"] |
| 36 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 37 | ["plu","CDZ","CFP","CDF","CZP","CDP","CFZ"] | ["plu","CDFZP"] |
| 38 | ["plu","CFP","CZQ","CFQ","CZP","CFZ","CPQ"] | ["plu","CFZPQ"] |
| 39 | ["plu","CFP","CZR","CFR","CZP","CFZ","CPR"] | ["plu","CFZPR"] |
| 40 | ["plu","HDY","ODP","DYP","OHD","HDP","ODY"] | ["plu","DOHYP"] |
| 41 | ["plu","DFY","ODP","DFP","ODY","DYP","ODF"] | ["plu","DOFYP"] |
| 42 | ["plu","DFR","ODQ","DFQ","ODR","DQR","ODF"] | ["plu","DOFQR"] |
| 43 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 44 | ["plu","DFY","HCD","CDF","HDY","CDY","HDF"] | ["plu","DHCFY"] |
| 45 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 46 | ["plu","CDP","DFY","CDF","DYP","CDY","DFP"] | ["plu","DCFYP"] |
| 47 | ["plu","DFY","DPQ","DFP","DYQ","DFQ","DYP"] | ["plu","DFYPQ"] |
| 48 | ["plu","HFQ","ODF","DFQ","OHF","HDF","OFQ"] | ["plu","FOHDQ"] |
| 49 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 50 | ["plu","CDF","HFQ","CFQ","HDF","DFQ","HCF"] | ["plu","FHCDQ"] |
| 51 | ["plu","DFY","HFZ","DFZ","HFY","FYZ","HDF"] | ["plu","FHDYZ"] |
| 52 | ["plu","DFY","HFQ","DFQ","HFY","FYQ","HDF"] | ["plu","FHDYQ"] |
| 53 | ["plu","CDF","FYZ","CFY","DFZ","CFZ","DFY"] | ["plu","FCDYZ"] |
| 54 | ["plu","HYR","OCY","CYR","OHY","HCY","OYR"] | ["plu","YOHCR"] |
| 55 | ["plu","FYQ","OHY","HFY","OYQ","HYQ","OFY"] | ["plu","YOHFQ"] |
| 56 | ["plu","FYQ","OCY","CFY","OYQ","CYQ","OFY"] | ["plu","YOCFQ"] |
| 57 | ["plu","CDY","HYQ","CYQ","HDY","DYQ","HCY"] | ["plu","YHCDQ"] |
| 58 | ["plu","DYZ","HYQ","DYQ","HYZ","HDY","YZQ"] | ["plu","YHDZQ"] |
| 59 | ["plu","DYZ","FYQ","DFY","YZQ","DYQ","FYZ"] | ["plu","YDFZQ"] |
| 60 | ["plu","FZQ","OYZ","FYZ","OZQ","OFZ","YZQ"] | ["plu","ZOFYQ"] |
| 61 | ["plu","FYZ","HDZ","DFZ","HYZ","DYZ","HFZ"] | ["plu","ZHDFY"] |
| 62 | ["plu","DYZ","HZQ","DZQ","HYZ","HDZ","YZQ"] | ["plu","ZHDYQ"] |
| 63 | ["plu","CDZ","FZP","CFZ","DZP","CZP","DFZ"] | ["plu","ZCDFP"] |
| 64 | ["plu","DYZ","FZQ","DFZ","YZQ","DZQ","FYZ"] | ["plu","ZDFYQ"] |
| 65 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 66 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 67 | ["plu","HDQ","OFQ","DFQ","OHQ","HFQ","ODQ"] | ["plu","QOHDF"] |
| 68 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 69 | ["plu","DZQ","OQR","DQR","OZQ","ODQ","ZQR"] | ["plu","QODZR"] |
| 70 | ["balance",[[1,"HCZ","ODP"],[1,"CZP","OHD"],[-1,"HZP","OCD"],[1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 71 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[-1,"CZP","ODF"],[-1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 72 | ["balance",[[1,"HCY","OFR"],[1,"CYR","OHF"],[-1,"HYR","OCF"],[1,"HCR","OFY"]]] | ["six","OFHCYR"] |
| 73 | ["balance",[[1,"HCF","OPQ"],[1,"CFP","OHQ"],[1,"HFP","OCQ"],[-1,"HCP","OFQ"]]] | ["six","OQHCFP"] |
| 74 | ["balance",[[1,"HCF","OYR"],[-1,"CFY","OHR"],[1,"HFY","OCR"],[1,"HCY","OFR"]]] | ["six","ORHCFY"] |
| 75 | ["balance",[[1,"HCF","OZR"],[1,"CFZ","OHR"],[1,"HFZ","OCR"],[-1,"HCZ","OFR"]]] | ["six","ORHCFZ"] |
| 76 | ["balance",[[-1,"HYZ","OQR"],[-1,"YZQ","OHR"],[1,"HZQ","OYR"],[-1,"HYQ","OZR"]]] | ["six","ORHYZQ"] |
| 77 | ["balance",[[-1,"OYZ","HCR"],[1,"YZR","OHC"],[1,"OZR","HCY"],[1,"OYR","HCZ"]]] | ["six","HCOYZR"] |
| 78 | ["balance",[[1,"DFY","HCQ"],[-1,"FYQ","HCD"],[1,"DYQ","HCF"],[1,"DFQ","HCY"]]] | ["six","HCDFYQ"] |
| 79 | ["balance",[[-1,"CFY","HDP"],[1,"FYP","HCD"],[-1,"CYP","HDF"],[-1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 80 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 81 | ["balance",[[1,"OCF","HYP"],[-1,"CFP","OHY"],[-1,"OFP","HCY"],[-1,"OCP","HFY"]]] | ["six","HYOCFP"] |
| 82 | ["balance",[[1,"DFY","HZQ"],[-1,"FYQ","HDZ"],[1,"DYQ","HFZ"],[1,"DFQ","HYZ"]]] | ["six","HZDFYQ"] |
| 83 | ["balance",[[1,"OYZ","CFQ"],[-1,"YZQ","OCF"],[-1,"OZQ","CFY"],[-1,"OYQ","CFZ"]]] | ["six","CFOYZQ"] |
| 84 | ["balance",[[1,"OZQ","CFR"],[-1,"ZQR","OCF"],[-1,"OQR","CFZ"],[-1,"OZR","CFQ"]]] | ["six","CFOZQR"] |
| 85 | ["balance",[[-1,"DYZ","CFP"],[1,"YZP","CDF"],[-1,"DZP","CFY"],[-1,"DYP","CFZ"]]] | ["six","CFDYZP"] |
| 86 | ["balance",[[-1,"DYZ","CFQ"],[1,"YZQ","CDF"],[1,"DZQ","CFY"],[1,"DYQ","CFZ"]]] | ["six","CFDYZQ"] |
| 87 | ["balance",[[1,"DYP","CFQ"],[-1,"YPQ","CDF"],[1,"DPQ","CFY"],[1,"DYQ","CFP"]]] | ["six","CFDYPQ"] |
| 88 | ["balance",[[-1,"YZP","CFQ"],[1,"ZPQ","CFY"],[1,"YPQ","CFZ"],[1,"YZQ","CFP"]]] | ["six","CFYZPQ"] |
| 89 | ["balance",[[-1,"ODF","CZP"],[-1,"DFP","OCZ"],[1,"OFP","CDZ"],[-1,"ODP","CFZ"]]] | ["six","CZODFP"] |
| 90 | ["balance",[[1,"HDF","CYZ"],[-1,"DFY","HCZ"],[1,"HFY","CDZ"],[1,"HDY","CFZ"]]] | ["six","CZHDFY"] |
| 91 | ["balance",[[-1,"HCZ","DYP"],[-1,"CZP","HDY"],[1,"HZP","CDY"],[-1,"HCP","DYZ"]]] | ["six","DYHCZP"] |
| 92 | ["balance",[[1,"CFZ","DYP"],[-1,"FZP","CDY"],[1,"CZP","DFY"],[1,"CFP","DYZ"]]] | ["six","DYCFZP"] |
| 93 | ["balance",[[-1,"HCF","DYZ"],[1,"CFY","HDZ"],[-1,"HFY","CDZ"],[-1,"HCY","DFZ"]]] | ["six","DZHCFY"] |
| 94 | ["balance",[[1,"CFY","DPQ"],[-1,"FYQ","CDP"],[1,"CYQ","DFP"],[1,"CFQ","DYP"]]] | ["six","DPCFYQ"] |
| 95 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 96 | ["balance",[[-1,"HCD","FYZ"],[1,"CDY","HFZ"],[1,"HDY","CFZ"],[1,"HCY","DFZ"]]] | ["six","FZHCDY"] |
| 97 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 98 | ["balance",[[-1,"HCD","FYQ"],[1,"CDY","HFQ"],[1,"HDY","CFQ"],[1,"HCY","DFQ"]]] | ["six","FQHCDY"] |
| 99 | ["balance",[[-1,"HCD","FYR"],[1,"CDY","HFR"],[1,"HDY","CFR"],[1,"HCY","DFR"]]] | ["six","FRHCDY"] |
| 100 | ["balance",[[1,"ODF","YZQ"],[1,"DFQ","OYZ"],[-1,"OFQ","DYZ"],[1,"ODQ","FYZ"]]] | ["six","YZODFQ"] |
| 101 | ["balance",[[1,"HCD","FYZ"],[-1,"CDF","HYZ"],[-1,"HDF","CYZ"],[-1,"HCF","DYZ"]]] | ["six","YZHCDF"] |
| 102 | ["balance",[[-1,"ODF","YPQ"],[1,"DFQ","OYP"],[1,"OFQ","DYP"],[1,"ODQ","FYP"]]] | ["six","YPODFQ"] |
| 103 | ["balance",[[-1,"OHZ","YQR"],[1,"HZR","OYQ"],[-1,"OZR","HYQ"],[-1,"OHR","YZQ"]]] | ["six","YQOHZR"] |
| 104 | ["balance",[[1,"OCZ","YQR"],[-1,"CZR","OYQ"],[1,"OZR","CYQ"],[1,"OCR","YZQ"]]] | ["six","YQOCZR"] |
| 105 | ["balance",[[-1,"ODZ","YQR"],[1,"DZR","OYQ"],[-1,"OZR","DYQ"],[-1,"ODR","YZQ"]]] | ["six","YQODZR"] |
| 106 | ["balance",[[-1,"OFZ","YQR"],[1,"FZR","OYQ"],[-1,"OZR","FYQ"],[-1,"OFR","YZQ"]]] | ["six","YQOFZR"] |
| 107 | ["balance",[[1,"HCD","FYQ"],[-1,"CDF","HYQ"],[-1,"HDF","CYQ"],[-1,"HCF","DYQ"]]] | ["six","YQHCDF"] |
| 108 | ["balance",[[1,"HCZ","YPQ"],[1,"CZP","HYQ"],[-1,"HZP","CYQ"],[1,"HCP","YZQ"]]] | ["six","YQHCZP"] |
| 109 | ["balance",[[-1,"CFZ","YPQ"],[1,"FZP","CYQ"],[-1,"CZP","FYQ"],[-1,"CFP","YZQ"]]] | ["six","YQCFZP"] |
| 110 | ["balance",[[1,"OCF","YZQ"],[1,"CFY","OZQ"],[1,"OFY","CZQ"],[-1,"OCY","FZQ"]]] | ["six","ZQOCFY"] |
| 111 | ["balance",[[1,"ODY","ZPQ"],[-1,"DYP","OZQ"],[-1,"OYP","DZQ"],[-1,"ODP","YZQ"]]] | ["six","ZQODYP"] |
| 112 | ["balance",[[1,"HCD","FZQ"],[-1,"CDF","HZQ"],[-1,"HDF","CZQ"],[-1,"HCF","DZQ"]]] | ["six","ZQHCDF"] |
| 113 | ["balance",[[1,"CDF","YZQ"],[1,"DFY","CZQ"],[1,"CFY","DZQ"],[-1,"CDY","FZQ"]]] | ["six","ZQCDFY"] |
| 114 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDQ","OZR"],[1,"ODQ","CZR"],[-1,"OCQ","DZR"]]] | ["six","ZROCDQ"] |
| 115 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 116 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 117 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 118 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 119 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 120 | ["linear",{"OHZ":-1,"OZR":-1,"OHR":1,"HZR":-1},"0"] | ["affine_quad","OHZR",1] |
| 121 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 122 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 123 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 124 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 125 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 126 | ["linear",{"ODF":1,"OFY":-1,"ODY":-1,"DFY":-1},"0"] | ["affine_quad","ODFY",1] |
| 127 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 128 | ["linear",{"ODZ":-1,"OZR":-1,"ODR":1,"DZR":-1},"0"] | ["affine_quad","ODZR",1] |
| 129 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 130 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 131 | ["linear",{"OFY":-1,"OYP":-1,"OFP":1,"FYP":-1},"0"] | ["affine_quad","OFYP",1] |
| 132 | ["linear",{"OFY":-1,"OYQ":-1,"OFQ":1,"FYQ":-1},"0"] | ["affine_quad","OFYQ",1] |
| 133 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 134 | ["linear",{"OFZ":-1,"OZR":-1,"OFR":1,"FZR":-1},"0"] | ["affine_quad","OFZR",1] |
| 135 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 136 | ["linear",{"OYZ":-1,"OZR":-1,"OYR":1,"YZR":-1},"0"] | ["affine_quad","OYZR",1] |
| 137 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 138 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 139 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 140 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 141 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 142 | ["linear",{"HDY":-1,"HYQ":1,"HDQ":1,"DYQ":-1},"0"] | ["affine_quad","HDYQ",1] |
| 143 | ["linear",{"HDZ":1,"HZQ":-1,"HDQ":-1,"DZQ":1},"0"] | ["affine_quad","HDZQ",-1] |
| 144 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 145 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 146 | ["linear",{"CFZ":-1,"CZP":-1,"CFP":1,"FZP":-1},"0"] | ["affine_quad","CFZP",1] |
| 147 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 148 | ["linear",{"CFZ":-1,"CZR":-1,"CFR":1,"FZR":-1},"0"] | ["affine_quad","CFZR",1] |
| 149 | ["linear",{"CYZ":-1,"CZP":-1,"CYP":1,"YZP":-1},"0"] | ["affine_quad","CYZP",1] |
| 150 | ["linear",{"CYZ":-1,"CZQ":-1,"CYQ":1,"YZQ":-1},"0"] | ["affine_quad","CYZQ",1] |
| 151 | ["linear",{"CYZ":-1,"CZR":-1,"CYR":1,"YZR":-1},"0"] | ["affine_quad","CYZR",1] |
| 152 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 153 | ["linear",{"DFY":-1,"DYQ":-1,"DFQ":1,"FYQ":1},"0"] | ["affine_quad","DFYQ",-1] |
| 154 | ["linear",{"DFZ":1,"DZQ":1,"DFQ":-1,"FZQ":-1},"0"] | ["affine_quad","DFZQ",1] |
| 155 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 156 | ["support","OYR","ODR","ODY","1023/1000"] | ["support_pent","OYPDR"] |
| 157 | ["support","CYP","CFP","CFY","1023/1000"] | ["support_pent","CYHFP"] |
| 158 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 159 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 160 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 161 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 162 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 163 | ["bary",["FYR",-1],[["OFR",-1],["HFR",-1],["CFR",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FR"] |
| 164 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 165 | ["bary",["FYR",-1],[["OFR",-1],["HFR",-1],["FZR",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FR"] |
| 166 | ["bary",["OCY",1],[null,["OHC",1],["OCR",1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","OC"] |
| 167 | ["bary",["OZQ",1],[null,["OHQ",1],["OQR",1]],"OHR",["HZR","OZR","OHZ"]] | ["bary","OHR","Z","OQ"] |
| 168 | ["bary",["YZP",-1],[["OYP",-1],["CYP",-1],["DYP",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","YP"] |
| 169 | ["bary",["OFZ",-1],[null,["OCF",-1],["OFP",-1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","OF"] |
| 170 | ["bary",["DZR",-1],[["ODR",-1],["CDR",-1],["DPR",-1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","DR"] |
| 171 | ["bary",["ODY",1],[null,null,["ODF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OD"] |
| 172 | ["bary",["OYQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OQ"] |
| 173 | ["bary",["CDY",1],[["OCD",1],null,["CDF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","CD"] |
| 174 | ["bary",["CYQ",1],[["OCQ",1],["CDQ",1],["CFQ",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","CQ"] |
| 175 | ["bary",["OHR",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OH"] |
| 176 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 177 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 178 | ["bary",["HDR",-1],[["OHD",-1],null,["HDQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","HD"] |
| 179 | ["bary",["DFR",1],[["ODF",1],null,["DFQ",1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","DF"] |
| 180 | ["bary",["OZQ",1],[null,["ODQ",1],["OQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OQ"] |
| 181 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],["CQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","CQ"] |
| 182 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],["DZQ",-1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DQ"] |
| 183 | ["bary",["DYR",-1],[["ODR",-1],["DFR",-1],["DZR",-1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DR"] |
| 184 | ["bary",["OCY",1],[null,["OCF",1],["OCQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OC"] |
| 185 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 186 | ["bary",["HYQ",-1],[["OHQ",-1],["HFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HQ"] |
| 187 | ["bary",["CDY",1],[["OCD",1],["CDF",1],["CDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","CD"] |
| 188 | ["bary",["CYQ",1],[["OCQ",1],["CFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","CQ"] |
| 189 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 190 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DQ"] |
| 191 | ["bary",["FYQ",-1],[["OFQ",-1],null,null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","FQ"] |
| 192 | ["bary",["DZQ",-1],[["ODQ",-1],["DFQ",-1],null],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","DQ"] |
| 193 | ["bary",["FZQ",-1],[["OFQ",-1],null,null],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","FQ"] |
| 194 | ["bary",["OHY",-1],[null,["OHF",-1],["OHR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","OH"] |
| 195 | ["bary",["OCY",1],[null,["OCF",1],["OCR",1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","OC"] |
| 196 | ["bary",["OFY",-1],[null,null,["OFR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","OF"] |
| 197 | ["bary",["HCY",-1],[["OHC",-1],["HCF",1],["HCR",1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","HC"] |
| 198 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","HD"] |
| 199 | ["bary",["DFY",1],[["ODF",1],null,["DFR",1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","DF"] |
| 200 | ["bary",["OZQ",1],[null,["OFQ",1],["OQR",1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","OQ"] |
| 201 | ["bary",["DFZ",1],[["ODF",1],["DFY",1],["DFQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DF"] |
| 202 | ["bary",["CZQ",1],[["OCQ",1],["CYQ",1],["CQR",1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","CQ"] |
| 203 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 204 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 205 | ["bary",["ODP",1],[["OHD",1],null,["ODY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OD"] |
| 206 | ["bary",["OFP",-1],[["OHF",1],["ODF",-1],["OFY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OF"] |
| 207 | ["bary",["OZP",1],[["OHZ",1],["ODZ",1],["OYZ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OZ"] |
| 208 | ["bary",["HCP",1],[null,["HCD",1],["HCY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HC"] |
| 209 | ["bary",["HDP",-1],[null,null,["HDY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HD"] |
| 210 | ["bary",["CDP",1],[["HCD",1],null,["CDY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CD"] |
| 211 | ["bary",["CFP",-1],[["HCF",1],["CDF",-1],["CFY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CF"] |
| 212 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],null],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CY"] |
| 213 | ["bary",["CPQ",1],[["HCQ",1],["CDQ",1],["CYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CQ"] |
| 214 | ["bary",["CPR",1],[["HCR",1],["CDR",1],["CYR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CR"] |
| 215 | ["bary",["DPQ",-1],[["HDQ",-1],null,["DYQ",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DQ"] |
| 216 | ["bary",["HCZ",1],[null,["HCD",1],["HCF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HC"] |
| 217 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 218 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DQ"] |
| 219 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OC"] |
| 220 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 221 | ["bary",["HDP",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HD"] |
| 222 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 223 | ["bary",["DFP",1],[["CDF",1],null,null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DF"] |
| 224 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFY",-1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","HF"] |
| 225 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 226 | ["bary",["HFR",-1],[["HCF",-1],["HDF",-1],["HFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HF"] |
| 227 | ["bary",["CFR",-1],[null,["CDF",-1],["CFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CF"] |
| 228 | ["bary",["OCZ",1],[null,["OCF",1],["OCP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","OC"] |
| 229 | ["bary",["HDZ",-1],[["HCD",-1],["HDF",1],["HDP",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","HD"] |
| 230 | ["bary",["CDZ",1],[null,["CDF",1],["CDP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CD"] |
| 231 | ["bary",["CYZ",-1],[null,["CFY",-1],["CYP",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CY"] |
| 232 | ["bary",["CZQ",1],[null,["CFQ",1],["CPQ",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CQ"] |
| 233 | ["bary",["CZR",1],[null,["CFR",1],["CPR",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","CR"] |
| 234 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","DF"] |
| 235 | ["bary",["DYZ",1],[["CDY",1],["DFY",-1],["DYP",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","DY"] |
| 236 | ["bary",["FZP",-1],[["CFP",-1],null,null],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","FP"] |
| 237 | ["bary",["HFZ",-1],[["HCF",-1],["HFY",-1],["HFP",-1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","HF"] |
| 238 | ["bary",["HDZ",-1],[["HCD",-1],["HDY",-1],["HDQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HD"] |
| 239 | ["bary",["DFZ",1],[["CDF",1],["DFY",1],["DFQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DF"] |
| 240 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 241 | ["bary",["ODP",1],[null,["ODF",1],["ODY",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OD"] |
| 242 | ["bary",["OZP",1],[["ODZ",1],["OFZ",1],["OYZ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OZ"] |
| 243 | ["bary",["OPQ",1],[["ODQ",1],["OFQ",1],["OYQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OQ"] |
| 244 | ["bary",["HDP",-1],[null,["HDF",1],["HDY",-1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","HD"] |
| 245 | ["bary",["CDP",1],[null,["CDF",1],["CDY",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","CD"] |
| 246 | ["bary",["CPQ",1],[["CDQ",1],["CFQ",1],["CYQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","CQ"] |
| 247 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],["YZQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZQ"] |
| 248 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","ZQ"] |
| 249 | ["bary",["OYR",-1],[["ODY",-1],null,["OYQ",-1]],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OY"] |
| 250 | ["bary",["OCR",1],[["OCD",1],["OCZ",1],["OCQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OC"] |
| 251 | ["bary",["OQR",1],[["ODQ",1],["OZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OQ"] |
| 252 | ["bary",["HDR",-1],[null,["HDZ",-1],["HDQ",-1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","HD"] |
| 253 | ["bary",["DFR",1],[null,["DFZ",1],["DFQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","DF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s12 | 3 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s22 | 7 | sub | DFY | hi | 374729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s26 | 8 | sub | OFP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_ODP |
| s27 | 9 | sub | DZQ | hi | 35909/62500 | hi_ODQ,lo_ODZ,lo_OZQ |
| s30 | 10 | sub | ODR | hi | 35909/62500 | hi_ODQ,lo_DQR,lo_OQR |
| s79 | 28 | sumlo | OHY | lo | 12533/125000 | lo_OFY,lo_OHR,lo_OHF,lo_OYR,hi_OFR |
| s84 | 29 | sumlo | ODY | lo | 12661/125000 | lo_ODP,lo_OYQ,lo_ODQ,lo_OYP,hi_OPQ |
| s85 | 30 | sumlo | OZQ | lo | 127389/1000000 | lo_ODQ,lo_OZR,lo_ODZ,lo_OQR,s30 |
| s103 | 43 | sumlo | ODP | lo | 5361/50000 | lo_DPQ,s84,lo_DYP,lo_ODQ,hi_DYQ |
| s108 | 46 | sumlo | CDP | lo | 120739/1000000 | lo_CDF,lo_DYP,lo_CDY,lo_DFP,s22 |
| s119 | 49 | sumlo | HCF | lo | 48829/500000 | lo_CDF,lo_HFY,lo_CFY,lo_HDF,s22 |
| s121 | 54 | sumlo | OCY | lo | 98449/1000000 | lo_CYR,s79,lo_HCY,lo_OYR,s12 |
| s125 | 66 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s127 | 68 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s133 | 69 | sumlo | OQR | lo | 33239/250000 | lo_DQR,s85,lo_ODQ,lo_ZQR,s27 |
| s141 | 70 | balance_lo | HZP | lo | 174427/1000000 | lo_HCZ,s103,lo_CZP,lo_OHD,lo_HCP,lo_ODZ,hi_OCD |
| s143 | 71 | balance_lo | FZP | lo | 174427/1000000 | lo_CFZ,s103,lo_CZP,lo_ODF,lo_CFP,lo_ODZ,hi_OCD |
| s154 | 74 | balance_lo | CFY | lo | 54603/500000 | s119,lo_OYR,lo_HFY,lo_OCR,lo_HCY,lo_OFR,hi_OHR |
| s162 | 79 | balance_lo | FYP | lo | 116979/1000000 | s154,lo_HDP,lo_CYP,lo_HDF,lo_CFP,lo_HDY,hi_HCD |
| s163 | 80 | balance_lo | HYQ | lo | 205683/1000000 | lo_CDQ,s79,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s164 | 81 | balance_lo | HYP | lo | 5031/40000 | lo_CFP,s79,lo_OFP,lo_HCY,lo_OCP,lo_HFY,hi_OCF |
| s171 | 86 | balance_lo | DYZ | lo | 153951/1000000 | lo_YZQ,lo_CDF,lo_DZQ,s154,lo_DYQ,lo_CFZ,s127 |
| s172 | 89 | balance_lo | CDZ | lo | 110963/1000000 | lo_ODF,lo_CZP,lo_DFP,lo_OCZ,s103,lo_CFZ,s26 |
| s174 | 95 | balance_lo | FYQ | lo | 55423/250000 | lo_CDQ,lo_OFY,lo_ODQ,s154,lo_OCQ,lo_DFY,hi_OCD |
| s180 | 103 | balance_lo | HZR | lo | 158071/1000000 | lo_OHZ,lo_YQR,lo_OZR,s163,lo_OHR,lo_YZQ,hi_OYQ |
| s181 | 106 | balance_lo | FZR | lo | 80109/500000 | lo_OFZ,lo_YQR,lo_OZR,s174,lo_OFR,lo_YZQ,hi_OYQ |
| s191 | 116 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s192 | 117 | linear | OHZ | lo | 35783/125000 | lo_HYZ,s79,lo_OYZ |
| s193 | 118 | linear | OHP | lo | 319039/1000000 | s164,s79,lo_OYP |
| s204 | 122 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s210 | 127 | linear | DFQ | lo | 20081/50000 | lo_ODF,lo_ODQ,hi_OFQ |
| s213 | 129 | linear | ODR | hi | 133647/250000 | lo_DQR,hi_ODQ,s133 |
| s216 | 131 | linear | OFP | lo | 302979/1000000 | s162,lo_OFY,lo_OYP |
| s234 | 138 | linear | HCP | lo | 360427/1000000 | lo_CZP,lo_HCZ,s141 |
| s236 | 140 | linear | HCR | lo | 344071/1000000 | lo_CZR,lo_HCZ,s180 |
| s237 | 141 | linear | HDY | lo | 12471/40000 | lo_DYP,lo_HDP,s164 |
| s245 | 145 | linear | CDY | lo | 178957/500000 | s172,lo_CYZ,s171 |
| s249 | 146 | linear | CFP | lo | 360427/1000000 | lo_CFZ,lo_CZP,s143 |
| s252 | 148 | linear | CFR | lo | 173109/500000 | lo_CFZ,lo_CZR,s181 |
| s254 | 152 | linear | DFY | lo | 302979/1000000 | lo_DFP,lo_DYP,s162 |
| s260 | 156 | support_z | ODY | lo | 133203/1000000 | lo_OYR,s213 |
| s264 | 158 | linear | OHC | lo | 367/1000 | s204 |
| s265 | 159 | linear | HCD | hi | 907/1000 | lo_HDF |
| s274 | 161 | bary_hi | FYZ | lo | 1503/12500 | hi_OHC,lo_HCY,s121,s79,lo_OFZ,lo_HFZ,lo_CFZ |
| s275 | 162 | bary_hi | FYP | lo | 82989/500000 | hi_OHC,lo_HCY,s121,s79,s216,lo_HFP,s249 |
| s276 | 163 | bary_hi | FYR | lo | 110501/500000 | hi_OHC,lo_HCY,s121,s79,lo_OFR,lo_HFR,s252 |
| s293 | 164 | bary_hi | OCP | hi | 111421/200000 | hi_OHD,lo_HDP,s103,s193,hi_OHC,hi_OCD |
| s348 | 168 | bary_hi | YZP | lo | 61517/500000 | hi_OCD,s172,lo_ODZ,lo_OCZ,lo_OYP,lo_CYP,lo_DYP |
| s367 | 170 | bary_hi | DZR | lo | 124049/1000000 | s293,lo_CZP,lo_OZP,lo_OCZ,lo_ODR,lo_CDR,lo_DPR |
| s371 | 172 | bary_hi | OYQ | hi | 644457/1000000 | hi_ODF,s254,lo_OFY,s260,hi_ODQ,hi_OFQ |
| s374 | 173 | bary_hi | CDY | hi | 699631/1000000 | hi_ODF,s254,lo_OFY,s260,hi_OCD,hi_CDF |
| s408 | 175 | bary_lo | OHR | hi | 877719/1000000 | hi_ODQ,lo_DQR,s133,lo_ODR,hi_OHD,hi_OHQ |
| s411 | 176 | bary_lo | OFR | hi | 856863/1000000 | hi_ODQ,lo_DQR,s133,lo_ODR,hi_ODF,hi_OFQ |
| s415 | 178 | bary_lo | HDR | hi | 185657/250000 | hi_ODQ,lo_DQR,s133,lo_ODR,hi_OHD,hi_HDQ |
| s423 | 179 | bary_hi | DFR | hi | 687099/1000000 | hi_ODQ,lo_DQR,s133,lo_ODR,hi_ODF,hi_DFQ |
| s431 | 180 | bary_lo | OZQ | lo | 71931/500000 | s213,s367,lo_OZR,lo_ODZ,lo_ODQ,s133 |
| s434 | 181 | bary_lo | CZQ | lo | 125357/1000000 | s213,s367,lo_OZR,lo_ODZ,lo_OCQ,lo_CDQ,lo_CQR |
| s460 | 194 | bary_hi | OHY | lo | 26401/250000 | s411,s276,lo_OYR,lo_OFY,lo_OHF,lo_OHR |
| s461 | 196 | bary_lo | OFY | hi | 356861/1000000 | s411,s276,lo_OYR,lo_OFY,s411 |
| s463 | 197 | bary_lo | HCY | hi | 290179/1000000 | s411,s276,lo_OYR,lo_OFY,hi_OHC,s119,s236 |
| s464 | 198 | bary_lo | HDY | hi | 616179/1000000 | s411,s276,lo_OYR,lo_OFY,hi_OHD,lo_HDF,s415 |
| s471 | 199 | bary_hi | DFY | hi | 75489/125000 | s411,s276,lo_OYR,lo_OFY,hi_ODF,s423 |
| s484 | 201 | bary_lo | DFZ | lo | 9341/25000 | s371,lo_YZQ,s431,lo_OYZ,lo_ODF,s254,s210 |
| s502 | 203 | bary_lo | HYP | lo | 13343/100000 | s265,s108,lo_HDP,s234,lo_HCY,s237 |
| s525 | 206 | bary_lo | OFP | hi | 138581/200000 | s464,lo_DYP,s502,lo_HDP,lo_OHF,hi_ODF,s461 |
| s527 | 207 | bary_lo | OZP | lo | 122169/1000000 | s464,lo_DYP,s502,lo_HDP,s192,lo_ODZ,lo_OYZ |
| s530 | 208 | bary_hi | HCP | hi | 619177/1000000 | s464,lo_DYP,s502,lo_HDP,s265,lo_HCY |
| s534 | 210 | bary_lo | CDP | lo | 31753/200000 | s464,lo_DYP,s502,lo_HDP,lo_HCD,s245 |
| s535 | 211 | bary_lo | CFP | hi | 117983/200000 | s464,lo_DYP,s502,lo_HDP,s119,hi_CDF,s154 |
| s536 | 212 | bary_lo | CYP | hi | 532237/1000000 | s464,lo_DYP,s502,lo_HDP,s463,s374 |
| s549 | 217 | bary_lo | HYZ | lo | 28967/250000 | hi_CDF,s484,lo_CFZ,s172,lo_HCY,s237,lo_HFY |
| s551 | 218 | bary_lo | DZQ | hi | 511251/1000000 | hi_CDF,s484,lo_CFZ,s172,hi_CDQ,hi_DFQ |
| s554 | 219 | bary_hi | OCP | hi | 544701/1000000 | hi_CDF,lo_DFP,s249,s534,hi_OCD,hi_OCF |
| s557 | 220 | bary_hi | OPQ | hi | 156413/200000 | hi_CDF,lo_DFP,s249,s534,lo_OCQ,hi_ODQ,hi_OFQ |
| s559 | 221 | bary_lo | HDP | hi | 361119/1000000 | hi_CDF,lo_DFP,s249,s534,s265,lo_HDF |
| s561 | 222 | bary_lo | HYP | lo | 181627/1000000 | hi_CDF,lo_DFP,s249,s534,lo_HCY,s237,lo_HFY |
| s565 | 223 | bary_hi | DFP | hi | 37051/100000 | hi_CDF,lo_DFP,s249,s534,hi_CDF |
| s576 | 225 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s265,s125 |
| s580 | 226 | bary_hi | HFR | lo | 94031/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s119,lo_HDF,lo_HFQ |
| s596 | 229 | bary_lo | HDZ | hi | 663293/1000000 | s535,s143,lo_CZP,lo_CFZ,s265,lo_HDF,s559 |
| s599 | 230 | bary_lo | CDZ | lo | 67219/500000 | s535,s143,lo_CZP,lo_CFZ,lo_CDF,s534 |
| s601 | 234 | bary_hi | DFZ | hi | 667591/1000000 | s535,s143,lo_CZP,lo_CFZ,hi_CDF,s565 |
| s609 | 237 | bary_hi | HFZ | lo | 23519/250000 | s536,s348,lo_CZP,lo_CYZ,s119,lo_HFY,lo_HFP |
| s618 | 241 | bary_lo | ODP | lo | 25477/200000 | s471,s275,lo_DYP,lo_DFP,lo_ODF,s260 |
| s623 | 245 | bary_lo | CDP | lo | 16199/100000 | s471,s275,lo_DYP,lo_DFP,lo_CDF,s245 |
| s645 | 250 | bary_lo | OCR | lo | 71421/500000 | s551,lo_ZQR,lo_DQR,s367,s204,lo_OCZ,lo_OCQ |
| s647 | 251 | bary_lo | OQR | lo | 38103/250000 | s551,lo_ZQR,lo_DQR,s367,lo_ODQ,s431 |
| s648 | 252 | bary_lo | HDR | hi | 153419/250000 | s551,lo_ZQR,lo_DQR,s367,s596,hi_HDQ |
| s649 | 253 | bary_hi | DFR | hi | 28473/50000 | s551,lo_ZQR,lo_DQR,s367,s601,hi_DFQ |
| s660 | 6 | sum | OCP | lo | 308169/1000000 | lo_CZP,lo_OCZ,s527 |
| s661 | 10 | sub | ODR | hi | 128783/250000 | hi_ODQ,lo_DQR,s647 |
| s662 | 11 | sum | ODR | lo | 310049/1000000 | s367,lo_ODZ,lo_OZR |
| s663 | 12 | sum | OFZ | lo | 957/3125 | s274,lo_OFY,lo_OYZ |
| s668 | 15 | sum | OYQ | lo | 164931/500000 | lo_OYZ,s431,lo_YZQ |
| s670 | 18 | sum | HDY | lo | 367627/1000000 | lo_DYP,lo_HDP,s561 |
| s672 | 20 | sum | CDY | lo | 381389/1000000 | s599,lo_CYZ,s171 |
| s674 | 23 | sum | CYP | lo | 154517/500000 | lo_CYZ,lo_CZP,s348 |
| s675 | 24 | sum | CYQ | lo | 311357/1000000 | lo_CYZ,s434,lo_YZQ |
| s676 | 25 | sum | DFY | lo | 175989/500000 | lo_DFP,lo_DYP,s275 |
| s677 | 26 | sum | DZQ | lo | 310049/1000000 | lo_DQR,s367,lo_ZQR |
| s679 | 27 | sumlo | OCY | lo | 33461/250000 | s645,s460,s264,lo_OYR,s408 |
| s680 | 29 | sumlo | ODY | lo | 2129/15625 | s618,s668,lo_ODQ,lo_OYP,s557 |
| s681 | 30 | sumlo | OZQ | lo | 19101/125000 | lo_ODQ,lo_OZR,lo_ODZ,s647,s661 |
| s685 | 32 | sumlo | HCF | lo | 59391/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s464 |
| s688 | 34 | sumlo | OCZ | lo | 101409/1000000 | lo_CZP,s264,lo_HCZ,s660,s530 |
| s689 | 36 | sumlo | CFY | lo | 121107/1000000 | lo_CDF,lo_HCY,s672,s685,s265 |
| s690 | 37 | sumlo | CDZ | lo | 67473/500000 | lo_CDF,lo_CZP,s623,lo_CFZ,s535 |
| s692 | 41 | sumlo | ODP | lo | 7991/62500 | lo_DFP,s680,lo_DYP,lo_ODF,s471 |
| s694 | 42 | sumlo | DFR | lo | 24859/100000 | s210,s662,lo_DQR,lo_ODF,hi_ODQ |
| s699 | 48 | sumlo | HFQ | lo | 54461/500000 | s210,lo_OHF,lo_HDF,lo_OFQ,hi_ODF |
| s700 | 49 | sumlo | HCF | lo | 125523/1000000 | lo_CDF,lo_HFY,s689,lo_HDF,s471 |
| s707 | 69 | sumlo | OQR | lo | 3851/25000 | lo_DQR,s681,lo_ODQ,lo_ZQR,s551 |
| s708 | 70 | balance_lo | HZP | lo | 190907/1000000 | lo_HCZ,s692,lo_CZP,lo_OHD,s234,lo_ODZ,hi_OCD |
| s710 | 71 | balance_lo | FZP | lo | 190907/1000000 | lo_CFZ,s692,lo_CZP,lo_ODF,s249,lo_ODZ,hi_OCD |
| s712 | 72 | balance_lo | HYR | lo | 192893/1000000 | lo_HCY,lo_OFR,lo_CYR,lo_OHF,s236,lo_OFY,hi_OCF |
| s714 | 74 | balance_lo | CFY | lo | 16071/125000 | s700,lo_OYR,lo_HFY,s645,lo_HCY,lo_OFR,s408 |
| s715 | 75 | balance_lo | HCZ | lo | 10463/100000 | s700,lo_OZR,lo_CFZ,lo_OHR,s609,s645,s411 |
| s719 | 77 | balance_lo | OYZ | lo | 52509/500000 | lo_YZR,s264,lo_OZR,lo_HCY,lo_OYR,s715,s576 |
| s728 | 95 | balance_lo | FYQ | lo | 256807/1000000 | lo_CDQ,lo_OFY,lo_ODQ,s714,lo_OCQ,s676,hi_OCD |
| s729 | 97 | balance_lo | FYP | lo | 19473/100000 | s672,lo_HFP,s670,s249,lo_HCY,lo_DFP,s265 |
| s732 | 100 | balance_lo | DYZ | lo | 192791/1000000 | lo_ODF,lo_YZQ,s210,s719,lo_ODQ,s274,hi_OFQ |
| s733 | 101 | balance_lo | FYZ | lo | 62437/500000 | lo_CDF,s549,lo_HDF,lo_CYZ,s700,s732,s265 |
| s738 | 106 | balance_lo | FZR | lo | 181401/1000000 | s663,lo_YQR,lo_OZR,s728,lo_OFR,lo_YZQ,s371 |
| s742 | 113 | balance_lo | FZQ | lo | 212293/1000000 | lo_CDF,lo_YZQ,s676,s434,s714,s677,s374 |
| s743 | 114 | balance_lo | CZR | lo | 47081/500000 | s204,lo_ZQR,lo_CDQ,lo_OZR,lo_OCQ,s367,hi_ODQ |
| s751 | 123 | linear | OCF | lo | 88853/250000 | s714,s679,lo_OFY |
| s753 | 125 | linear | OCP | lo | 158289/500000 | lo_CZP,s688,s527 |
| s757 | 129 | linear | ODR | hi | 16047/31250 | lo_DQR,hi_ODQ,s707 |
| s759 | 130 | linear | OFZ | lo | 80723/250000 | s733,lo_OFY,s719 |
| s765 | 135 | linear | OYQ | lo | 175413/500000 | s719,s681,lo_YZQ |
| s766 | 136 | linear | OYR | lo | 145509/500000 | s719,lo_OZR,lo_YZR |
| s768 | 138 | linear | HCP | lo | 388537/1000000 | lo_CZP,s715,s708 |
| s775 | 145 | linear | CDY | lo | 420737/1000000 | s690,lo_CYZ,s732 |
| s777 | 146 | linear | CFP | lo | 376907/1000000 | lo_CFZ,lo_CZP,s710 |
| s779 | 148 | linear | CFR | lo | 368563/1000000 | lo_CFZ,s743,s738 |
| s781 | 152 | linear | DFY | lo | 38073/100000 | lo_DFP,lo_DYP,s729 |
| s782 | 152 | linear | DFP | hi | 158091/500000 | s471,lo_DYP,s729 |
| s784 | 156 | support_z | ODY | lo | 72469/500000 | s766,s757 |
| s785 | 157 | support_z | CFY | lo | 32707/250000 | s674,s535 |
| s789 | 160 | linear | CDF | hi | 874477/1000000 | s700 |
| s791 | 161 | bary_hi | FYZ | lo | 7931/62500 | hi_OHC,lo_HCY,s679,s460,s759,s609,lo_CFZ |
| s792 | 163 | bary_hi | FYR | lo | 56889/250000 | hi_OHC,lo_HCY,s679,s460,lo_OFR,s580,s779 |
| s809 | 166 | bary_lo | OCY | lo | 138869/1000000 | s408,s712,s766,s460,s264,s645 |
| s815 | 168 | bary_hi | YZP | lo | 127883/1000000 | hi_OCD,s690,lo_ODZ,s688,lo_OYP,s674,lo_DYP |
| s820 | 169 | bary_lo | OFZ | hi | 280807/500000 | s554,lo_CZP,s527,s688,hi_OCF,s525 |
| s825 | 170 | bary_hi | DZR | lo | 65029/500000 | s554,lo_CZP,s527,s688,s662,lo_CDR,lo_DPR |
| s827 | 171 | bary_hi | ODY | hi | 14429/31250 | hi_ODF,s781,lo_OFY,s784,hi_ODF |
| s830 | 172 | bary_hi | OYQ | hi | 562473/1000000 | hi_ODF,s781,lo_OFY,s784,hi_ODQ,hi_OFQ |
| s832 | 173 | bary_hi | CDY | hi | 333019/500000 | hi_ODF,s781,lo_OFY,s784,hi_OCD,s789 |
| s833 | 174 | bary_hi | CYQ | hi | 25263/50000 | hi_ODF,s781,lo_OFY,s784,hi_OCQ,hi_CDQ,s127 |
| s846 | 176 | bary_lo | OFR | hi | 855451/1000000 | hi_ODQ,lo_DQR,s707,s662,hi_ODF,hi_OFQ |
| s847 | 177 | bary_lo | OYR | hi | 473289/1000000 | hi_ODQ,lo_DQR,s707,s662,s827,s830 |
| s853 | 180 | bary_lo | OZQ | lo | 153587/1000000 | s757,s825,lo_OZR,lo_ODZ,lo_ODQ,s707 |
| s859 | 182 | bary_hi | DYQ | lo | 16557/40000 | s820,s791,s719,lo_OFY,lo_ODQ,s210,s677 |
| s860 | 183 | bary_hi | DYR | lo | 192891/1000000 | s820,s791,s719,lo_OFY,s662,s694,s825 |
| s869 | 190 | bary_lo | DYQ | hi | 668807/1000000 | hi_OFQ,s728,s765,lo_OFY,hi_ODQ,hi_DFQ |
| s871 | 191 | bary_lo | FYQ | hi | 271277/500000 | hi_OFQ,s728,s765,lo_OFY,hi_OFQ |
| s875 | 194 | bary_hi | OHY | lo | 21417/200000 | s846,s792,s766,lo_OFY,lo_OHF,lo_OHR |
| s876 | 198 | bary_lo | HDY | hi | 586171/1000000 | s846,s792,s766,lo_OFY,hi_OHD,lo_HDF,s648 |
| s878 | 199 | bary_hi | DFY | hi | 577433/1000000 | s846,s792,s766,lo_OFY,hi_ODF,s649 |
| s889 | 201 | bary_lo | DFZ | lo | 218213/500000 | s830,lo_YZQ,s853,s719,lo_ODF,s781,s210 |
| s892 | 202 | bary_lo | CZQ | lo | 67953/500000 | s847,lo_YZR,lo_OZR,s719,lo_OCQ,s675,lo_CQR |
| s918 | 209 | bary_lo | HDP | hi | 38943/125000 | s876,lo_DYP,s561,lo_HDP,s876 |
| s921 | 210 | bary_lo | CDP | lo | 8843/50000 | s876,lo_DYP,s561,lo_HDP,lo_HCD,s775 |
| s922 | 211 | bary_lo | CFP | hi | 278161/500000 | s876,lo_DYP,s561,lo_HDP,s700,s789,s785 |
| s936 | 217 | bary_lo | HYZ | lo | 61103/500000 | s789,s889,lo_CFZ,s690,lo_HCY,s670,lo_HFY |
| s940 | 218 | bary_lo | DZQ | hi | 121871/250000 | s789,s889,lo_CFZ,s690,hi_CDQ,hi_DFQ |
| s948 | 222 | bary_lo | HYP | lo | 105683/500000 | s789,lo_DFP,s777,s921,lo_HCY,s670,lo_HFY |
| s956 | 224 | bary_hi | HFZ | lo | 51207/500000 | s832,s732,lo_CYZ,s690,s700,lo_HDF,lo_HFY |
| s959 | 226 | bary_hi | HFR | lo | 103727/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s700,lo_HDF,s699 |
| s966 | 228 | bary_lo | OCZ | lo | 7021/62500 | s922,s710,lo_CZP,lo_CFZ,s751,s753 |
| s971 | 229 | bary_lo | HDZ | hi | 640289/1000000 | s922,s710,lo_CZP,lo_CFZ,s265,lo_HDF,s918 |
| s974 | 230 | bary_lo | CDZ | lo | 145581/1000000 | s922,s710,lo_CZP,lo_CFZ,lo_CDF,s921 |
| s976 | 234 | bary_hi | DFZ | hi | 317481/500000 | s922,s710,lo_CZP,lo_CFZ,s789,s782 |
| s985 | 239 | bary_lo | DFZ | lo | 110559/250000 | s833,lo_YZQ,s892,lo_CYZ,lo_CDF,s781,s210 |
| s988 | 241 | bary_lo | ODP | lo | 135117/1000000 | s878,s729,lo_DYP,lo_DFP,lo_ODF,s784 |
| s990 | 242 | bary_lo | OZP | lo | 131961/1000000 | s878,s729,lo_DYP,lo_DFP,lo_ODZ,s759,s719 |
| s994 | 245 | bary_lo | CDP | lo | 11221/62500 | s878,s729,lo_DYP,lo_DFP,lo_CDF,s775 |
| s1004 | 249 | bary_lo | OYR | hi | 470251/1000000 | s869,lo_YQR,lo_DQR,s860,s827,s830 |
| s1009 | 250 | bary_lo | OCR | lo | 148961/1000000 | s940,lo_ZQR,lo_DQR,s825,s204,s966,lo_OCQ |
| s1011 | 251 | bary_lo | OQR | lo | 80849/500000 | s940,lo_ZQR,lo_DQR,s825,lo_ODQ,s853 |
| s1012 | 252 | bary_lo | HDR | hi | 37589/62500 | s940,lo_ZQR,lo_DQR,s825,s971,hi_HDQ |
| s1015 | 253 | bary_hi | DFR | hi | 111333/200000 | s940,lo_ZQR,lo_DQR,s825,s976,hi_DFQ |
| s1019 | 1 | sum | OHZ | lo | 334309/1000000 | s936,s875,s719 |
| s1022 | 5 | sum | OCF | lo | 362697/1000000 | s785,s809,lo_OFY |
| s1023 | 6 | sum | OCP | lo | 337297/1000000 | lo_CZP,s966,s990 |
| s1024 | 10 | sub | ODR | hi | 252923/500000 | hi_ODQ,lo_DQR,s1011 |
| s1025 | 11 | sum | ODR | lo | 158029/500000 | s825,lo_ODZ,lo_OZR |
| s1026 | 12 | sum | OFZ | lo | 162457/500000 | s791,lo_OFY,s719 |
| s1028 | 13 | sum | OFQ | lo | 700633/1000000 | s728,lo_OFY,s765 |
| s1031 | 15 | sum | OYQ | lo | 70321/200000 | s719,s853,lo_YZQ |
| s1033 | 18 | sum | HDY | lo | 198683/500000 | lo_DYP,lo_HDP,s948 |
| s1035 | 20 | sum | CDY | lo | 107843/250000 | s974,lo_CYZ,s732 |
| s1036 | 21 | sum | CFQ | lo | 441199/1000000 | lo_CFZ,s892,s742 |
| s1037 | 23 | sum | CYP | lo | 313883/1000000 | lo_CYZ,lo_CZP,s815 |
| s1038 | 24 | sum | CYQ | lo | 160953/500000 | lo_CYZ,s892,lo_YZQ |
| s1039 | 26 | sum | DZQ | lo | 158029/500000 | lo_DQR,s825,lo_ZQR |
| s1042 | 30 | sumlo | OZQ | lo | 3933/25000 | lo_ODQ,lo_OZR,lo_ODZ,s1011,s1024 |
| s1046 | 35 | sumlo | OCZ | lo | 117017/1000000 | lo_CFZ,s1023,lo_CZP,s1022,s922 |
| s1047 | 36 | sumlo | CFY | lo | 65429/500000 | lo_CDF,lo_HCY,s1035,s700,s265 |
| s1048 | 37 | sumlo | CDZ | lo | 36507/250000 | lo_CDF,lo_CZP,s994,lo_CFZ,s922 |
| s1053 | 48 | sumlo | HFQ | lo | 54791/500000 | s210,lo_OHF,lo_HDF,s1028,hi_ODF |
| s1054 | 49 | sumlo | HCF | lo | 132849/1000000 | lo_CDF,lo_HFY,s1047,lo_HDF,s878 |
| s1056 | 56 | sumlo | OCY | lo | 139981/1000000 | s1047,s1031,s1038,lo_OFY,s871 |
| s1057 | 57 | sumlo | HYQ | lo | 249849/1000000 | s1038,s1033,s859,lo_HCY,s832 |
| s1061 | 69 | sumlo | OQR | lo | 16241/100000 | lo_DQR,s1042,lo_ODQ,lo_ZQR,s940 |
| s1063 | 70 | balance_lo | HZP | lo | 199347/1000000 | s715,s988,lo_CZP,lo_OHD,s768,lo_ODZ,hi_OCD |
| s1064 | 71 | balance_lo | FZP | lo | 194741/1000000 | lo_CFZ,s988,lo_CZP,lo_ODF,s777,lo_ODZ,hi_OCD |
| s1068 | 74 | balance_lo | CFY | lo | 33341/250000 | s1054,s766,lo_HFY,s1009,lo_HCY,lo_OFR,s408 |
| s1069 | 75 | balance_lo | HCZ | lo | 26931/250000 | s1054,lo_OZR,lo_CFZ,lo_OHR,s956,s1009,s846 |
| s1070 | 76 | balance_lo | HZQ | lo | 57217/250000 | s936,s1061,lo_YZQ,lo_OHR,s1057,lo_OZR,s1004 |
| s1076 | 83 | balance_lo | OYZ | lo | 55627/500000 | lo_YZQ,s1022,s1042,s1068,s1031,lo_CFZ,s127 |
| s1077 | 96 | balance_lo | FYZ | lo | 134797/1000000 | s1035,s956,s1033,lo_CFZ,lo_HCY,s985,s265 |
| s1078 | 97 | balance_lo | FYP | lo | 218893/1000000 | s1035,lo_HFP,s1033,s777,lo_HCY,lo_DFP,s265 |
| s1079 | 98 | balance_lo | FYQ | lo | 286591/1000000 | s1035,s1053,s1033,s1036,lo_HCY,s210,s265 |
| s1082 | 100 | balance_lo | DYZ | lo | 51393/250000 | lo_ODF,lo_YZQ,s210,s1076,lo_ODQ,s1077,hi_OFQ |
| s1084 | 103 | balance_lo | HZR | lo | 52833/250000 | s1019,lo_YQR,lo_OZR,s1057,lo_OHR,lo_YZQ,s830 |
| s1085 | 104 | balance_lo | CZR | lo | 97201/1000000 | s1046,lo_YQR,lo_OZR,s1038,s1009,lo_YZQ,s830 |
| s1086 | 105 | balance_lo | DZR | lo | 136073/1000000 | lo_ODZ,lo_YQR,lo_OZR,s859,s1025,lo_YZQ,s830 |
| s1087 | 106 | balance_lo | FZR | lo | 215853/1000000 | s1026,lo_YQR,lo_OZR,s1079,lo_OFR,lo_YZQ,s830 |
| s1091 | 113 | balance_lo | FZQ | lo | 118939/500000 | lo_CDF,lo_YZQ,s781,s892,s1068,s1039,s832 |
| s1096 | 120 | linear | OHZ | hi | 573387/1000000 | s1084,s408,lo_OZR |
| s1097 | 123 | linear | OCF | lo | 73269/200000 | s1068,s1056,lo_OFY |
| s1098 | 125 | linear | OCP | lo | 170989/500000 | lo_CZP,s1046,s990 |
| s1099 | 128 | linear | ODR | lo | 322073/1000000 | s1086,lo_ODZ,lo_OZR |
| s1101 | 129 | linear | ODR | hi | 252567/500000 | lo_DQR,hi_ODQ,s1061 |
| s1103 | 130 | linear | OFZ | lo | 339051/1000000 | s1077,lo_OFY,s1076 |
| s1109 | 134 | linear | OFZ | hi | 273299/500000 | s1087,s846,lo_OZR |
| s1111 | 135 | linear | OYQ | lo | 180787/500000 | s1076,s1042,lo_YZQ |
| s1112 | 136 | linear | OYR | lo | 148627/500000 | s1076,lo_OZR,lo_YZR |
| s1113 | 138 | linear | HCP | lo | 400071/1000000 | lo_CZP,s1069,s1063 |
| s1115 | 140 | linear | HCR | lo | 416257/1000000 | s1085,s1069,s1084 |
| s1116 | 145 | linear | CDY | lo | 2223/5000 | s1048,lo_CYZ,s1082 |
| s1118 | 146 | linear | CFP | lo | 380741/1000000 | lo_CFZ,lo_CZP,s1064 |
| s1120 | 148 | linear | CFR | lo | 203027/500000 | lo_CFZ,s1085,s1087 |
| s1121 | 151 | linear | CYR | lo | 283201/1000000 | lo_CYZ,s1085,lo_YZR |
| s1122 | 152 | linear | DFY | lo | 404893/1000000 | lo_DFP,lo_DYP,s1078 |
| s1123 | 152 | linear | DFP | hi | 13277/50000 | s878,lo_DYP,s1078 |
| s1124 | 155 | linear | DZQ | lo | 322073/1000000 | lo_DQR,s1086,lo_ZQR |
| s1125 | 156 | support_z | ODY | lo | 37619/250000 | s1112,s1101 |
| s1126 | 157 | support_z | CFY | lo | 35797/250000 | s1037,s922 |
| s1129 | 160 | linear | CDF | hi | 867151/1000000 | s1054 |
| s1135 | 165 | bary_hi | FYR | lo | 31309/125000 | s1096,s936,s1076,s875,lo_OFR,s959,s1087 |
| s1141 | 168 | bary_hi | YZP | lo | 64333/500000 | hi_OCD,s1048,lo_ODZ,s1046,lo_OYP,s1037,lo_DYP |
| s1148 | 171 | bary_hi | ODY | hi | 87513/200000 | hi_ODF,s1122,lo_OFY,s1125,hi_ODF |
| s1150 | 172 | bary_hi | OYQ | hi | 107399/200000 | hi_ODF,s1122,lo_OFY,s1125,hi_ODQ,hi_OFQ |
| s1152 | 173 | bary_hi | CDY | hi | 6549/10000 | hi_ODF,s1122,lo_OFY,s1125,hi_OCD,s1129 |
| s1153 | 174 | bary_hi | CYQ | hi | 48977/100000 | hi_ODF,s1122,lo_OFY,s1125,hi_OCQ,hi_CDQ,s127 |
| s1161 | 176 | bary_lo | OFR | hi | 854891/1000000 | hi_ODQ,lo_DQR,s1061,s1099,hi_ODF,hi_OFQ |
| s1162 | 177 | bary_lo | OYR | hi | 225049/500000 | hi_ODQ,lo_DQR,s1061,s1099,s1148,s1150 |
| s1166 | 179 | bary_lo | DFR | lo | 12747/50000 | hi_ODQ,lo_DQR,s1061,s1099,lo_ODF,s210 |
| s1169 | 180 | bary_lo | OZQ | lo | 157673/1000000 | s1101,s1086,lo_OZR,lo_ODZ,lo_ODQ,s1061 |
| s1172 | 182 | bary_hi | DYQ | lo | 85997/200000 | s1109,s1077,s1076,lo_OFY,lo_ODQ,s210,s1124 |
| s1173 | 183 | bary_hi | DYR | lo | 25767/125000 | s1109,s1077,s1076,lo_OFY,s1099,s1166,s1086 |
| s1184 | 190 | bary_lo | DYQ | hi | 668193/1000000 | hi_OFQ,s1079,s1111,lo_OFY,hi_ODQ,hi_DFQ |
| s1185 | 191 | bary_lo | FYQ | hi | 265903/500000 | hi_OFQ,s1079,s1111,lo_OFY,hi_OFQ |
| s1188 | 194 | bary_hi | OHY | lo | 53917/500000 | s1161,s1135,s1112,lo_OFY,lo_OHF,lo_OHR |
| s1189 | 195 | bary_lo | OCY | lo | 71793/500000 | s1161,s1135,s1112,lo_OFY,s1097,s1009 |
| s1190 | 198 | bary_lo | HDY | hi | 288297/500000 | s1161,s1135,s1112,lo_OFY,hi_OHD,lo_HDF,s1012 |
| s1192 | 199 | bary_hi | DFY | hi | 568983/1000000 | s1161,s1135,s1112,lo_OFY,hi_ODF,s1015 |
| s1204 | 201 | bary_lo | DFZ | lo | 453217/1000000 | s1150,lo_YZQ,s1169,s1076,lo_ODF,s1122,s210 |
| s1208 | 202 | bary_lo | CZQ | lo | 17537/125000 | s1162,lo_YZR,lo_OZR,s1076,lo_OCQ,s1038,lo_CQR |
| s1225 | 209 | bary_lo | HDP | hi | 68057/250000 | s1190,lo_DYP,s948,lo_HDP,s1190 |
| s1227 | 210 | bary_lo | CDP | lo | 183647/1000000 | s1190,lo_DYP,s948,lo_HDP,lo_HCD,s1116 |
| s1228 | 211 | bary_lo | CFP | hi | 5429/10000 | s1190,lo_DYP,s948,lo_HDP,s1054,s1129,s1126 |
| s1231 | 214 | bary_lo | CPR | lo | 21977/125000 | s1190,lo_DYP,s948,lo_HDP,s1115,lo_CDR,s1121 |
| s1238 | 217 | bary_lo | HYZ | lo | 62821/500000 | s1129,s1204,lo_CFZ,s1048,lo_HCY,s1033,lo_HFY |
| s1242 | 218 | bary_lo | DZQ | hi | 9603/20000 | s1129,s1204,lo_CFZ,s1048,hi_CDQ,hi_DFQ |
| s1248 | 222 | bary_lo | HYP | lo | 113319/500000 | s1129,lo_DFP,s1118,s1227,lo_HCY,s1033,lo_HFY |
| s1254 | 224 | bary_hi | HFZ | lo | 26377/250000 | s1152,s1082,lo_CYZ,s1048,s1054,lo_HDF,lo_HFY |
| s1257 | 226 | bary_hi | HFR | lo | 21099/200000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s1054,lo_HDF,s1053 |
| s1263 | 228 | bary_lo | OCZ | lo | 121337/1000000 | s1228,s1064,lo_CZP,lo_CFZ,s1097,s1098 |
| s1267 | 229 | bary_lo | HDZ | hi | 7837/12500 | s1228,s1064,lo_CZP,lo_CFZ,s265,lo_HDF,s1225 |
| s1270 | 230 | bary_lo | CDZ | lo | 75171/500000 | s1228,s1064,lo_CZP,lo_CFZ,lo_CDF,s1227 |
| s1272 | 233 | bary_lo | CZR | lo | 3987/40000 | s1228,s1064,lo_CZP,lo_CFZ,s1120,s1231 |
| s1273 | 234 | bary_hi | DFZ | hi | 615549/1000000 | s1228,s1064,lo_CZP,lo_CFZ,s1129,s1123 |
| s1274 | 235 | bary_hi | DYZ | hi | 345239/1000000 | s1228,s1064,lo_CZP,lo_CFZ,s1152,s1122,lo_DYP |
| s1281 | 238 | bary_hi | HDZ | lo | 448787/1000000 | s1153,lo_YZQ,s1208,lo_CYZ,lo_HCD,s1033,s191 |
| s1282 | 239 | bary_lo | DFZ | lo | 114519/250000 | s1153,lo_YZQ,s1208,lo_CYZ,lo_CDF,s1122,s210 |
| s1284 | 241 | bary_lo | ODP | lo | 138029/1000000 | s1192,s1078,lo_DYP,lo_DFP,lo_ODF,s1125 |
| s1285 | 242 | bary_lo | OZP | lo | 681/5000 | s1192,s1078,lo_DYP,lo_DFP,lo_ODZ,s1103,s1076 |
| s1288 | 244 | bary_lo | HDP | hi | 245329/1000000 | s1192,s1078,lo_DYP,lo_DFP,lo_HDF,s1190 |
| s1289 | 245 | bary_lo | CDP | lo | 186103/1000000 | s1192,s1078,lo_DYP,lo_DFP,lo_CDF,s1116 |
| s1296 | 249 | bary_lo | OYR | hi | 448417/1000000 | s1184,lo_YQR,lo_DQR,s1173,s1148,s1150 |
| s1297 | 250 | bary_lo | OCR | lo | 151559/1000000 | s1242,lo_ZQR,lo_DQR,s1086,s204,s1263,lo_OCQ |
| s1299 | 251 | bary_lo | OQR | lo | 1031/6250 | s1242,lo_ZQR,lo_DQR,s1086,lo_ODQ,s1169 |
| s1300 | 252 | bary_lo | HDR | hi | 18631/31250 | s1242,lo_ZQR,lo_DQR,s1086,s1267,hi_HDQ |
| s1304 | 253 | bary_hi | DFR | hi | 550651/1000000 | s1242,lo_ZQR,lo_DQR,s1086,s1273,hi_DFQ |
| s1309 | 1 | sum | OHZ | lo | 34473/100000 | s1238,s1188,s1076 |
| s1313 | 5 | sum | OCF | lo | 189887/500000 | s1126,s1189,lo_OFY |
| s1314 | 6 | sum | OCP | lo | 350537/1000000 | lo_CZP,s1263,s1285 |
| s1315 | 10 | sub | ODR | hi | 62823/125000 | hi_ODQ,lo_DQR,s1299 |
| s1318 | 15 | sum | OYQ | lo | 361927/1000000 | s1076,s1169,lo_YZQ |
| s1321 | 17 | sum | HCQ | lo | 59611/125000 | s1208,s1069,s1070 |
| s1323 | 18 | sum | HDY | lo | 206319/500000 | lo_DYP,lo_HDP,s1248 |
| s1324 | 19 | sum | CDF | lo | 350709/500000 | s1270,lo_CFZ,s1282 |
| s1326 | 20 | sum | CDY | lo | 224457/500000 | s1270,lo_CYZ,s1082 |
| s1327 | 21 | sum | CFQ | lo | 235587/500000 | lo_CFZ,s1208,s1091 |
| s1328 | 22 | sum | CFR | lo | 25533/62500 | lo_CFZ,s1272,s1087 |
| s1329 | 23 | sum | CYP | lo | 157333/500000 | lo_CYZ,lo_CZP,s1141 |
| s1330 | 24 | sum | CYQ | lo | 40787/125000 | lo_CYZ,s1208,lo_YZQ |
| s1334 | 30 | sumlo | OZQ | lo | 31789/200000 | lo_ODQ,lo_OZR,lo_ODZ,s1299,s1315 |
| s1337 | 35 | sumlo | OCZ | lo | 125103/1000000 | lo_CFZ,s1314,lo_CZP,s1313,s1228 |
| s1338 | 37 | sumlo | CDZ | lo | 76017/500000 | s1324,lo_CZP,s1289,lo_CFZ,s1228 |
| s1344 | 49 | sumlo | HCF | lo | 2761/20000 | s1324,lo_HFY,s1126,lo_HDF,s1192 |
| s1346 | 50 | sumlo | HFQ | lo | 11447/100000 | s1327,lo_HDF,s210,s1344,s1129 |
| s1349 | 56 | sumlo | OCY | lo | 154509/1000000 | s1126,s1318,s1330,lo_OFY,s1185 |
| s1351 | 58 | sumlo | HYQ | lo | 267639/1000000 | s1172,s1238,s1323,lo_YZQ,s1274 |
| s1355 | 69 | sumlo | OQR | lo | 82603/500000 | lo_DQR,s1334,lo_ODQ,lo_ZQR,s1242 |
| s1356 | 70 | balance_lo | HZP | lo | 2531/12500 | s1069,s1284,lo_CZP,lo_OHD,s1113,lo_ODZ,hi_OCD |
| s1357 | 71 | balance_lo | FZP | lo | 19583/100000 | lo_CFZ,s1284,lo_CZP,lo_ODF,s1118,lo_ODZ,hi_OCD |
| s1358 | 75 | balance_lo | HCZ | lo | 5461/50000 | s1344,lo_OZR,lo_CFZ,lo_OHR,s1254,s1297,s1161 |
| s1359 | 76 | balance_lo | HZQ | lo | 245729/1000000 | s1238,s1355,lo_YZQ,lo_OHR,s1351,lo_OZR,s1296 |
| s1361 | 78 | balance_lo | FYQ | lo | 319513/1000000 | s1122,s1321,s1172,s1344,s210,lo_HCY,s265 |
| s1364 | 83 | balance_lo | OYZ | lo | 2919/25000 | lo_YZQ,s1313,s1334,s1126,s1318,lo_CFZ,s127 |
| s1365 | 96 | balance_lo | FYZ | lo | 141499/1000000 | s1326,s1254,s1323,lo_CFZ,lo_HCY,s1282,s265 |
| s1366 | 97 | balance_lo | FYP | lo | 228783/1000000 | s1326,lo_HFP,s1323,s1118,lo_HCY,lo_DFP,s265 |
| s1367 | 99 | balance_lo | FYR | lo | 264213/1000000 | s1326,s1257,s1323,s1328,lo_HCY,s1166,s265 |
| s1369 | 100 | balance_lo | DYZ | lo | 21253/100000 | lo_ODF,lo_YZQ,s210,s1364,lo_ODQ,s1365,hi_OFQ |
| s1371 | 103 | balance_lo | HZR | lo | 56561/250000 | s1309,lo_YQR,lo_OZR,s1351,lo_OHR,lo_YZQ,s1150 |
| s1372 | 104 | balance_lo | CZR | lo | 104423/1000000 | s1337,lo_YQR,lo_OZR,s1330,s1297,lo_YZQ,s1150 |
| s1373 | 105 | balance_lo | DZR | lo | 9147/62500 | lo_ODZ,lo_YQR,lo_OZR,s1172,s1099,lo_YZQ,s1150 |
| s1374 | 106 | balance_lo | FZR | lo | 46849/200000 | s1103,lo_YQR,lo_OZR,s1361,lo_OFR,lo_YZQ,s1150 |
| s1376 | 113 | balance_lo | FZQ | lo | 128381/500000 | s1324,lo_YZQ,s1122,s1208,s1126,s1124,s1152 |
| s1383 | 121 | linear | OCD | lo | 370137/1000000 | s1338,s1337,lo_ODZ |
| s1384 | 123 | linear | OCF | lo | 390697/1000000 | s1126,s1349,lo_OFY |
| s1385 | 124 | linear | CFQ | hi | 781683/1000000 | s1384,hi_OCQ,hi_OFQ |
| s1386 | 125 | linear | OCP | lo | 354303/1000000 | lo_CZP,s1337,s1285 |
| s1387 | 128 | linear | ODR | lo | 5193/15625 | s1373,lo_ODZ,lo_OZR |
| s1389 | 129 | linear | ODR | hi | 251169/500000 | lo_DQR,hi_ODQ,s1355 |
| s1391 | 130 | linear | OFZ | lo | 351259/1000000 | s1365,lo_OFY,s1364 |
| s1396 | 134 | linear | OFZ | hi | 263823/500000 | s1374,s1161,lo_OZR |
| s1398 | 135 | linear | OYQ | lo | 73741/200000 | s1364,s1334,lo_YZQ |
| s1399 | 136 | linear | OYR | lo | 7569/25000 | s1364,lo_OZR,lo_YZR |
| s1400 | 137 | linear | HCD | lo | 710041/1000000 | s1338,s1358,s1281 |
| s1401 | 138 | linear | HCP | lo | 4047/10000 | lo_CZP,s1358,s1356 |
| s1403 | 140 | linear | HCR | lo | 439887/1000000 | s1372,s1358,s1371 |
| s1404 | 144 | linear | CDF | lo | 70311/100000 | s1338,lo_CFZ,s1282 |
| s1405 | 145 | linear | CDY | lo | 114391/250000 | s1338,lo_CYZ,s1369 |
| s1407 | 146 | linear | CFP | lo | 38183/100000 | lo_CFZ,lo_CZP,s1357 |
| s1409 | 148 | linear | CFR | lo | 107917/250000 | lo_CFZ,s1372,s1374 |
| s1410 | 151 | linear | CYR | lo | 290423/1000000 | lo_CYZ,s1372,lo_YZR |
| s1411 | 152 | linear | DFY | lo | 414783/1000000 | lo_DFP,lo_DYP,s1366 |
| s1412 | 152 | linear | DFP | hi | 309/1250 | s1192,lo_DYP,s1366 |
| s1413 | 155 | linear | DZQ | lo | 5193/15625 | lo_DQR,s1373,lo_ZQR |
| s1414 | 156 | support_z | ODY | lo | 154091/1000000 | s1399,s1389 |
| s1415 | 157 | support_z | CFY | lo | 73837/500000 | s1329,s1228 |
| s1421 | 160 | linear | CDF | hi | 17239/20000 | s1344 |
| s1427 | 168 | bary_hi | YZP | lo | 128793/1000000 | hi_OCD,s1338,lo_ODZ,s1337,lo_OYP,s1329,lo_DYP |
| s1432 | 171 | bary_hi | ODY | hi | 17107/40000 | hi_ODF,s1411,lo_OFY,s1414,hi_ODF |
| s1433 | 172 | bary_hi | OYQ | hi | 526567/1000000 | hi_ODF,s1411,lo_OFY,s1414,hi_ODQ,hi_OFQ |
| s1435 | 173 | bary_hi | CDY | hi | 162361/250000 | hi_ODF,s1411,lo_OFY,s1414,hi_OCD,s1421 |
| s1436 | 174 | bary_hi | CYQ | hi | 301/625 | hi_ODF,s1411,lo_OFY,s1414,hi_OCQ,hi_CDQ,s1385 |
| s1442 | 176 | bary_lo | OFR | hi | 854703/1000000 | hi_ODQ,lo_DQR,s1355,s1387,hi_ODF,hi_OFQ |
| s1443 | 177 | bary_lo | OYR | hi | 440697/1000000 | hi_ODQ,lo_DQR,s1355,s1387,s1432,s1433 |
| s1447 | 179 | bary_lo | DFR | lo | 16273/62500 | hi_ODQ,lo_DQR,s1355,s1387,lo_ODF,s210 |
| s1450 | 180 | bary_lo | OZQ | lo | 39767/250000 | s1389,s1373,lo_OZR,lo_ODZ,lo_ODQ,s1355 |
| s1452 | 182 | bary_hi | DYQ | lo | 444663/1000000 | s1396,s1365,s1364,lo_OFY,lo_ODQ,s210,s1413 |
| s1453 | 183 | bary_hi | DYR | lo | 221461/1000000 | s1396,s1365,s1364,lo_OFY,s1387,s1447,s1373 |
| s1463 | 190 | bary_lo | DYQ | hi | 333893/500000 | hi_OFQ,s1361,s1398,lo_OFY,hi_ODQ,hi_DFQ |
| s1465 | 191 | bary_lo | FYQ | hi | 20987/40000 | hi_OFQ,s1361,s1398,lo_OFY,hi_OFQ |
| s1468 | 194 | bary_hi | OHY | lo | 108457/1000000 | s1442,s1367,s1399,lo_OFY,lo_OHF,lo_OHR |
| s1469 | 195 | bary_lo | OCY | lo | 154887/1000000 | s1442,s1367,s1399,lo_OFY,s1384,s1297 |
| s1470 | 198 | bary_lo | HDY | hi | 568891/1000000 | s1442,s1367,s1399,lo_OFY,hi_OHD,lo_HDF,s1300 |
| s1472 | 199 | bary_hi | DFY | hi | 281111/500000 | s1442,s1367,s1399,lo_OFY,hi_ODF,s1304 |
| s1485 | 202 | bary_lo | CZQ | lo | 17779/125000 | s1443,lo_YZR,lo_OZR,s1364,lo_OCQ,s1330,lo_CQR |
| s1500 | 210 | bary_lo | CDP | lo | 1527/8000 | s1470,lo_DYP,s1248,lo_HDP,s1400,s1405 |
| s1501 | 211 | bary_lo | CFP | hi | 21337/40000 | s1470,lo_DYP,s1248,lo_HDP,s1344,s1421,s1415 |
| s1504 | 214 | bary_lo | CPR | lo | 181981/1000000 | s1470,lo_DYP,s1248,lo_HDP,s1403,lo_CDR,s1410 |
| s1512 | 217 | bary_lo | HYZ | lo | 127487/1000000 | s1421,s1282,lo_CFZ,s1338,lo_HCY,s1323,lo_HFY |
| s1515 | 218 | bary_lo | DZQ | hi | 95439/200000 | s1421,s1282,lo_CFZ,s1338,hi_CDQ,hi_DFQ |
| s1520 | 222 | bary_lo | HYP | lo | 117297/500000 | s1421,lo_DFP,s1407,s1500,lo_HCY,s1323,lo_HFY |
| s1525 | 224 | bary_hi | HFZ | lo | 53871/500000 | s1435,s1369,lo_CYZ,s1338,s1344,lo_HDF,lo_HFY |
| s1528 | 226 | bary_hi | HFR | lo | 107729/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s1344,lo_HDF,s1346 |
| s1534 | 228 | bary_lo | OCZ | lo | 129887/1000000 | s1501,s1357,lo_CZP,lo_CFZ,s1384,s1386 |
| s1537 | 229 | bary_lo | HDZ | hi | 38581/62500 | s1501,s1357,lo_CZP,lo_CFZ,s265,lo_HDF,s1288 |
| s1540 | 230 | bary_lo | CDZ | lo | 155861/1000000 | s1501,s1357,lo_CZP,lo_CFZ,s1404,s1500 |
| s1542 | 233 | bary_lo | CZR | lo | 53493/500000 | s1501,s1357,lo_CZP,lo_CFZ,s1409,s1504 |
| s1543 | 234 | bary_hi | DFZ | hi | 120899/200000 | s1501,s1357,lo_CZP,lo_CFZ,s1421,s1412 |
| s1544 | 235 | bary_hi | DYZ | hi | 16723/50000 | s1501,s1357,lo_CZP,lo_CFZ,s1435,s1411,lo_DYP |
| s1550 | 238 | bary_hi | HDZ | lo | 57183/125000 | s1436,lo_YZQ,s1485,lo_CYZ,s1400,s1323,s191 |
| s1551 | 239 | bary_lo | DFZ | lo | 463727/1000000 | s1436,lo_YZQ,s1485,lo_CYZ,s1404,s1411,s210 |
| s1554 | 242 | bary_lo | OZP | lo | 2793/20000 | s1472,s1366,lo_DYP,lo_DFP,lo_ODZ,s1391,s1364 |
| s1557 | 244 | bary_lo | HDP | hi | 56977/250000 | s1472,s1366,lo_DYP,lo_DFP,lo_HDF,s1470 |
| s1558 | 245 | bary_lo | CDP | lo | 23999/125000 | s1472,s1366,lo_DYP,lo_DFP,s1404,s1405 |
| s1565 | 249 | bary_lo | OYR | hi | 219731/500000 | s1463,lo_YQR,lo_DQR,s1453,s1432,s1433 |
| s1566 | 250 | bary_lo | OCR | lo | 154199/1000000 | s1515,lo_ZQR,lo_DQR,s1373,s1383,s1534,lo_OCQ |
| s1568 | 251 | bary_lo | OQR | lo | 166253/1000000 | s1515,lo_ZQR,lo_DQR,s1373,lo_ODQ,s1450 |
| s1569 | 252 | bary_lo | HDR | hi | 593201/1000000 | s1515,lo_ZQR,lo_DQR,s1373,s1537,hi_HDQ |
| s1573 | 253 | bary_hi | DFR | hi | 109509/200000 | s1515,lo_ZQR,lo_DQR,s1373,s1543,hi_DFQ |
| s1578 | 1 | sum | OHZ | lo | 5511/15625 | s1512,s1468,s1364 |
| s1581 | 2 | sum | OHQ | lo | 757501/1000000 | s1359,s1578,s1450 |
| s1583 | 5 | sum | OCF | lo | 395561/1000000 | s1415,s1469,lo_OFY |
| s1584 | 6 | sum | OCP | lo | 362537/1000000 | lo_CZP,s1534,s1554 |
| s1585 | 10 | sub | ODR | hi | 501291/1000000 | hi_ODQ,lo_DQR,s1568 |
| s1588 | 15 | sum | OYQ | lo | 92207/250000 | s1364,s1450,lo_YZQ |
| s1591 | 17 | sum | HCQ | lo | 497181/1000000 | s1485,s1358,s1359 |
| s1593 | 18 | sum | HDY | lo | 210297/500000 | lo_DYP,lo_HDP,s1520 |
| s1594 | 19 | sum | CDF | lo | 178147/250000 | s1540,lo_CFZ,s1551 |
| s1597 | 20 | sum | CDY | lo | 461391/1000000 | s1540,lo_CYZ,s1369 |
| s1598 | 21 | sum | CFQ | lo | 245997/500000 | lo_CFZ,s1485,s1376 |
| s1599 | 22 | sum | CFR | lo | 434231/1000000 | lo_CFZ,s1542,s1374 |
| s1600 | 23 | sum | CYP | lo | 314793/1000000 | lo_CYZ,lo_CZP,s1427 |
| s1601 | 24 | sum | CYQ | lo | 41029/125000 | lo_CYZ,s1485,lo_YZQ |
| s1605 | 30 | sumlo | OZQ | lo | 79797/500000 | lo_ODQ,lo_OZR,lo_ODZ,s1568,s1585 |
| s1607 | 33 | sumlo | HYQ | lo | 4224/15625 | s1591,s1593,lo_HCY,s191,s265 |
| s1609 | 35 | sumlo | OCZ | lo | 13217/100000 | lo_CFZ,s1584,lo_CZP,s1583,s1501 |
| s1610 | 37 | sumlo | CDZ | lo | 157709/1000000 | s1594,lo_CZP,s1558,lo_CFZ,s1501 |
| s1613 | 46 | sumlo | CDP | lo | 194193/1000000 | s1594,lo_DYP,s1597,lo_DFP,s1472 |
| s1616 | 49 | sumlo | HCF | lo | 1423/10000 | s1594,lo_HFY,s1415,lo_HDF,s1472 |
| s1618 | 50 | sumlo | HFQ | lo | 119387/1000000 | s1598,lo_HDF,s210,s1616,s1421 |
| s1619 | 55 | sumlo | OHY | lo | 113293/1000000 | lo_HFY,s1588,s1607,lo_OFY,s1465 |
| s1621 | 56 | sumlo | OCY | lo | 161989/1000000 | s1415,s1588,s1601,lo_OFY,s1465 |
| s1623 | 58 | sumlo | HYQ | lo | 286443/1000000 | s1452,s1512,s1593,lo_YZQ,s1544 |
| s1625 | 64 | sumlo | FZQ | lo | 269551/1000000 | s1551,lo_YZQ,s1413,s1365,s1544 |
| s1626 | 67 | sumlo | HDQ | lo | 392427/1000000 | s210,s1581,s1618,lo_ODQ,hi_OFQ |
| s1627 | 69 | sumlo | OQR | lo | 33271/200000 | lo_DQR,s1605,lo_ODQ,lo_ZQR,s1515 |
| s1631 | 76 | balance_lo | HZQ | lo | 127871/500000 | s1512,s1627,lo_YZQ,lo_OHR,s1623,lo_OZR,s1565 |
| s1632 | 78 | balance_lo | FYQ | lo | 338311/1000000 | s1411,s1591,s1452,s1616,s210,lo_HCY,s265 |
| s1634 | 83 | balance_lo | OYZ | lo | 30273/250000 | lo_YZQ,s1583,s1605,s1415,s1588,lo_CFZ,s1385 |
| s1635 | 90 | balance_lo | HCZ | lo | 111043/1000000 | lo_HDF,lo_CYZ,lo_HFY,s1610,s1593,lo_CFZ,s1472 |
| s1636 | 91 | balance_lo | HZP | lo | 208567/1000000 | s1635,lo_DYP,lo_CZP,s1593,s1401,s1369,s1435 |
| s1637 | 92 | balance_lo | FZP | lo | 197667/1000000 | lo_CFZ,lo_DYP,lo_CZP,s1411,s1407,s1369,s1435 |
| s1638 | 96 | balance_lo | FYZ | lo | 72741/500000 | s1597,s1525,s1593,lo_CFZ,lo_HCY,s1551,s265 |
| s1639 | 97 | balance_lo | FYP | lo | 233907/1000000 | s1597,lo_HFP,s1593,s1407,lo_HCY,lo_DFP,s265 |
| s1640 | 99 | balance_lo | FYR | lo | 14143/50000 | s1597,s1528,s1593,s1599,lo_HCY,s1447,s265 |
| s1642 | 100 | balance_lo | DYZ | lo | 27137/125000 | lo_ODF,lo_YZQ,s210,s1634,lo_ODQ,s1638,hi_OFQ |
| s1644 | 103 | balance_lo | HZR | lo | 117727/500000 | s1578,lo_YQR,lo_OZR,s1623,lo_OHR,lo_YZQ,s1433 |
| s1645 | 104 | balance_lo | CZR | lo | 27137/250000 | s1609,lo_YQR,lo_OZR,s1601,s1566,lo_YZQ,s1433 |
| s1646 | 105 | balance_lo | DZR | lo | 76829/500000 | lo_ODZ,lo_YQR,lo_OZR,s1452,s1387,lo_YZQ,s1433 |
| s1647 | 106 | balance_lo | FZR | lo | 6109/25000 | s1391,lo_YQR,lo_OZR,s1632,lo_OFR,lo_YZQ,s1433 |
| s1656 | 123 | linear | OCF | lo | 402663/1000000 | s1415,s1621,lo_OFY |
| s1657 | 124 | linear | CFQ | hi | 769717/1000000 | s1656,hi_OCQ,hi_OFQ |
| s1659 | 128 | linear | ODR | lo | 169829/500000 | s1646,lo_ODZ,lo_OZR |
| s1661 | 129 | linear | ODR | hi | 501189/1000000 | lo_DQR,hi_ODQ,s1627 |
| s1663 | 130 | linear | OFZ | lo | 179787/500000 | s1638,lo_OFY,s1634 |
| s1668 | 134 | linear | OFZ | hi | 517343/1000000 | s1647,s1442,lo_OZR |
| s1669 | 134 | linear | OFR | lo | 348467/500000 | s1647,s1663,lo_OZR |
| s1671 | 135 | linear | OYQ | lo | 186843/500000 | s1634,s1605,lo_YZQ |
| s1672 | 136 | linear | OYR | lo | 76773/250000 | s1634,lo_OZR,lo_YZR |
| s1673 | 137 | linear | HCD | lo | 90777/125000 | s1610,s1635,s1550 |
| s1674 | 138 | linear | HCP | lo | 41261/100000 | lo_CZP,s1635,s1636 |
| s1675 | 139 | linear | HCQ | lo | 509017/1000000 | s1485,s1635,s1631 |
| s1676 | 140 | linear | HCR | lo | 91009/200000 | s1645,s1635,s1644 |
| s1679 | 144 | linear | CDF | lo | 178609/250000 | s1610,lo_CFZ,s1551 |
| s1681 | 145 | linear | CDY | lo | 93561/200000 | s1610,lo_CYZ,s1642 |
| s1682 | 146 | linear | CFP | lo | 383667/1000000 | lo_CFZ,lo_CZP,s1637 |
| s1683 | 147 | linear | CFQ | lo | 504783/1000000 | lo_CFZ,s1485,s1625 |
| s1684 | 148 | linear | CFR | lo | 111477/250000 | lo_CFZ,s1645,s1647 |
| s1685 | 151 | linear | CYR | lo | 73637/250000 | lo_CYZ,s1645,lo_YZR |
| s1686 | 152 | linear | DFY | lo | 419907/1000000 | lo_DFP,lo_DYP,s1639 |
| s1687 | 152 | linear | DFP | hi | 47063/200000 | s1472,lo_DYP,s1639 |
| s1688 | 155 | linear | DZQ | lo | 169829/500000 | lo_DQR,s1646,lo_ZQR |
| s1690 | 156 | support_z | ODY | lo | 156641/1000000 | s1672,s1661 |
| s1691 | 157 | support_z | CFY | lo | 150649/1000000 | s1600,s1501 |
| s1697 | 160 | linear | CDF | hi | 8577/10000 | s1616 |
| s1701 | 168 | bary_hi | YZP | lo | 128813/1000000 | hi_OCD,s1610,lo_ODZ,s1609,lo_OYP,s1600,lo_DYP |
| s1707 | 172 | bary_hi | OYQ | hi | 130291/250000 | hi_ODF,s1686,lo_OFY,s1690,hi_ODQ,hi_OFQ |
| s1709 | 173 | bary_hi | CDY | hi | 645957/1000000 | hi_ODF,s1686,lo_OFY,s1690,hi_OCD,s1697 |
| s1710 | 174 | bary_hi | CYQ | hi | 118233/250000 | hi_ODF,s1686,lo_OFY,s1690,hi_OCQ,hi_CDQ,s1657 |
| s1716 | 176 | bary_lo | OFR | hi | 427313/500000 | hi_ODQ,lo_DQR,s1627,s1659,hi_ODF,hi_OFQ |
| s1720 | 179 | bary_lo | DFR | lo | 132113/500000 | hi_ODQ,lo_DQR,s1627,s1659,lo_ODF,s210 |
| s1723 | 180 | bary_lo | OZQ | lo | 79823/500000 | s1661,s1646,lo_OZR,lo_ODZ,lo_ODQ,s1627 |
| s1725 | 182 | bary_hi | DYQ | lo | 90761/200000 | s1668,s1638,s1634,lo_OFY,lo_ODQ,s210,s1688 |
| s1737 | 191 | bary_lo | FYQ | hi | 259847/500000 | hi_OFQ,s1632,s1671,lo_OFY,hi_OFQ |
| s1739 | 192 | bary_lo | DZQ | hi | 474181/1000000 | hi_OFQ,s1625,s1723,s1663,hi_ODQ,hi_DFQ |
| s1741 | 198 | bary_lo | HDY | hi | 281493/500000 | s1716,s1640,s1672,lo_OFY,hi_OHD,lo_HDF,s1569 |
| s1743 | 199 | bary_hi | DFY | hi | 557109/1000000 | s1716,s1640,s1672,lo_OFY,hi_ODF,s1573 |
| s1757 | 204 | bary_lo | DFP | lo | 93167/1000000 | s265,s1613,lo_HDP,s1674,lo_HDF,s1679 |
| s1769 | 210 | bary_lo | CDP | lo | 197241/1000000 | s1741,lo_DYP,s1520,lo_HDP,s1673,s1681 |
| s1770 | 211 | bary_lo | CFP | hi | 26297/50000 | s1741,lo_DYP,s1520,lo_HDP,s1616,s1697,s1691 |
| s1772 | 213 | bary_lo | CPQ | lo | 325129/1000000 | s1741,lo_DYP,s1520,lo_HDP,s1675,lo_CDQ,s1601 |
| s1773 | 214 | bary_lo | CPR | lo | 1861/10000 | s1741,lo_DYP,s1520,lo_HDP,s1676,lo_CDR,s1685 |
| s1780 | 217 | bary_lo | HYZ | lo | 3213/25000 | s1697,s1551,lo_CFZ,s1610,lo_HCY,s1593,lo_HFY |
| s1787 | 222 | bary_lo | HYP | lo | 239539/1000000 | s1697,s1757,s1682,s1769,lo_HCY,s1593,lo_HFY |
| s1792 | 224 | bary_hi | HFZ | lo | 1712/15625 | s1709,s1642,lo_CYZ,s1610,s1616,lo_HDF,lo_HFY |
| s1795 | 226 | bary_hi | HFR | lo | 109759/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s1616,lo_HDF,s1618 |
| s1804 | 229 | bary_lo | HDZ | hi | 610093/1000000 | s1770,s1637,lo_CZP,lo_CFZ,s265,lo_HDF,s1557 |
| s1807 | 230 | bary_lo | CDZ | lo | 20151/125000 | s1770,s1637,lo_CZP,lo_CFZ,s1679,s1769 |
| s1808 | 232 | bary_lo | CZQ | lo | 587/4000 | s1770,s1637,lo_CZP,lo_CFZ,s1683,s1772 |
| s1809 | 233 | bary_lo | CZR | lo | 22351/200000 | s1770,s1637,lo_CZP,lo_CFZ,s1684,s1773 |
| s1810 | 234 | bary_hi | DFZ | hi | 595983/1000000 | s1770,s1637,lo_CZP,lo_CFZ,s1697,s1687 |
| s1811 | 235 | bary_hi | DYZ | hi | 163409/500000 | s1770,s1637,lo_CZP,lo_CFZ,s1709,s1686,lo_DYP |
| s1817 | 238 | bary_hi | HDZ | lo | 93361/200000 | s1710,lo_YZQ,s1808,lo_CYZ,s1673,s1593,s1626 |
| s1818 | 239 | bary_lo | DFZ | lo | 58601/125000 | s1710,lo_YZQ,s1808,lo_CYZ,s1679,s1686,s210 |
| s1824 | 244 | bary_lo | HDP | hi | 108553/500000 | s1743,s1639,lo_DYP,s1757,lo_HDF,s1741 |
| s1825 | 245 | bary_lo | CDP | lo | 39499/200000 | s1743,s1639,lo_DYP,s1757,s1679,s1681 |
| s1835 | 251 | bary_lo | OQR | lo | 167423/1000000 | s1739,lo_ZQR,lo_DQR,s1646,lo_ODQ,s1723 |
| s1836 | 252 | bary_lo | HDR | hi | 590633/1000000 | s1739,lo_ZQR,lo_DQR,s1646,s1804,hi_HDQ |
| s1841 | 253 | bary_hi | DFR | hi | 6811/12500 | s1739,lo_ZQR,lo_DQR,s1646,s1810,hi_DFQ |
| s1847 | 1 | sum | OHZ | lo | 72581/200000 | s1780,s1619,s1634 |
| s1850 | 2 | sum | OHQ | lo | 778293/1000000 | s1631,s1847,s1723 |
| s1852 | 5 | sum | OCF | lo | 202819/500000 | s1691,s1621,lo_OFY |
| s1854 | 10 | sub | ODR | hi | 500121/1000000 | hi_ODQ,lo_DQR,s1835 |
| s1856 | 13 | sum | OFQ | lo | 804997/1000000 | s1632,lo_OFY,s1671 |
| s1857 | 15 | sum | OYQ | lo | 186869/500000 | s1634,s1723,lo_YZQ |
| s1860 | 17 | sum | HCQ | lo | 102707/200000 | s1808,s1635,s1631 |
| s1862 | 18 | sum | HDY | lo | 425539/1000000 | lo_DYP,lo_HDP,s1787 |
| s1863 | 19 | sum | CDF | lo | 90377/125000 | s1807,lo_CFZ,s1818 |
| s1866 | 20 | sum | CDY | lo | 58913/125000 | s1807,lo_CYZ,s1642 |
| s1867 | 21 | sum | CFQ | lo | 509301/1000000 | lo_CFZ,s1808,s1625 |
| s1868 | 22 | sum | CFR | lo | 89823/200000 | lo_CFZ,s1809,s1647 |
| s1869 | 23 | sum | CYP | lo | 314813/1000000 | lo_CYZ,lo_CZP,s1701 |
| s1870 | 24 | sum | CYQ | lo | 1331/4000 | lo_CYZ,s1808,lo_YZQ |
| s1872 | 25 | sum | DFY | lo | 210037/500000 | s1757,lo_DYP,s1639 |
| s1875 | 30 | sumlo | OZQ | lo | 32037/200000 | lo_ODQ,lo_OZR,lo_ODZ,s1835,s1854 |
| s1879 | 37 | sumlo | CDZ | lo | 16277/100000 | s1863,lo_CZP,s1825,lo_CFZ,s1770 |
| s1880 | 38 | sumlo | CZQ | lo | 147549/1000000 | s1867,lo_CZP,lo_CFZ,s1772,s1770 |
| s1881 | 39 | sumlo | CZR | lo | 56161/500000 | s1868,lo_CZP,lo_CFZ,s1773,s1770 |
| s1882 | 45 | sumlo | DFP | lo | 18877/200000 | s1863,lo_HDP,s1825,lo_HDF,s265 |
| s1884 | 46 | sumlo | CDP | lo | 200543/1000000 | s1863,lo_DYP,s1866,s1882,s1743 |
| s1888 | 49 | sumlo | HCF | lo | 145843/1000000 | s1863,lo_HFY,s1691,lo_HDF,s1743 |
| s1891 | 52 | sumlo | HFQ | lo | 123519/1000000 | s210,lo_HFY,s1632,lo_HDF,s1743 |
| s1892 | 55 | sumlo | OHY | lo | 5907/50000 | lo_HFY,s1857,s1623,lo_OFY,s1737 |
| s1894 | 56 | sumlo | OCY | lo | 33577/200000 | s1691,s1857,s1870,lo_OFY,s1737 |
| s1895 | 58 | sumlo | HYQ | lo | 299549/1000000 | s1725,s1780,s1862,lo_YZQ,s1811 |
| s1896 | 62 | sumlo | HZQ | lo | 66601/250000 | s1688,s1780,s1817,lo_YZQ,s1811 |
| s1897 | 64 | sumlo | FZQ | lo | 142301/500000 | s1818,lo_YZQ,s1688,s1638,s1811 |
| s1898 | 67 | sumlo | HDQ | lo | 2019/5000 | s210,s1850,s1891,lo_ODQ,hi_OFQ |
| s1899 | 69 | sumlo | OQR | lo | 167529/1000000 | lo_DQR,s1875,lo_ODQ,lo_ZQR,s1739 |
| s1901 | 78 | balance_lo | FYQ | lo | 43999/125000 | s1872,s1860,s1725,s1888,s210,lo_HCY,s265 |
| s1903 | 83 | balance_lo | OYZ | lo | 62759/500000 | lo_YZQ,s1852,s1875,s1691,s1857,lo_CFZ,s1657 |
| s1904 | 90 | balance_lo | HCZ | lo | 113733/1000000 | lo_HDF,lo_CYZ,lo_HFY,s1879,s1862,lo_CFZ,s1743 |
| s1905 | 91 | balance_lo | HZP | lo | 27039/125000 | s1904,lo_DYP,lo_CZP,s1862,s1674,s1642,s1709 |
| s1907 | 96 | balance_lo | FYZ | lo | 148637/1000000 | s1866,s1792,s1862,lo_CFZ,lo_HCY,s1818,s265 |
| s1908 | 97 | balance_lo | FYP | lo | 238009/1000000 | s1866,lo_HFP,s1862,s1682,lo_HCY,s1882,s265 |
| s1909 | 99 | balance_lo | FYR | lo | 147419/500000 | s1866,s1795,s1862,s1868,lo_HCY,s1720,s265 |
| s1911 | 100 | balance_lo | DYZ | lo | 110559/500000 | lo_ODF,lo_YZQ,s210,s1903,lo_ODQ,s1907,hi_OFQ |
| s1912 | 102 | balance_lo | YPQ | lo | 74133/250000 | s210,lo_OYP,s1856,lo_DYP,lo_ODQ,s1908,hi_ODF |
| s1913 | 103 | balance_lo | HZR | lo | 121027/500000 | s1847,lo_YQR,lo_OZR,s1895,lo_OHR,lo_YZQ,s1707 |
| s1914 | 105 | balance_lo | DZR | lo | 79093/500000 | lo_ODZ,lo_YQR,lo_OZR,s1725,s1659,lo_YZQ,s1707 |
| s1915 | 106 | balance_lo | FZR | lo | 125671/500000 | s1663,lo_YQR,lo_OZR,s1901,s1669,lo_YZQ,s1707 |
| s1917 | 109 | balance_lo | FZP | lo | 8119/40000 | lo_CFZ,s1912,lo_CZP,s1901,s1682,lo_YZQ,s1710 |
| s1928 | 123 | linear | OCF | lo | 205767/500000 | s1691,s1894,lo_OFY |
| s1929 | 124 | linear | CFQ | hi | 380423/500000 | s1928,hi_OCQ,hi_OFQ |
| s1932 | 128 | linear | ODR | lo | 172093/500000 | s1914,lo_ODZ,lo_OZR |
| s1934 | 129 | linear | ODR | hi | 100003/200000 | lo_DQR,hi_ODQ,s1899 |
| s1936 | 130 | linear | OFZ | lo | 73431/200000 | s1907,lo_OFY,s1903 |
| s1938 | 132 | linear | OFQ | lo | 81873/100000 | s1901,lo_OFY,s1857 |
| s1941 | 134 | linear | OFZ | hi | 127571/250000 | s1915,s1716,lo_OZR |
| s1942 | 134 | linear | OFR | lo | 711497/1000000 | s1915,s1936,lo_OZR |
| s1944 | 135 | linear | OYQ | lo | 378703/1000000 | s1903,s1875,lo_YZQ |
| s1945 | 136 | linear | OYR | lo | 155759/500000 | s1903,lo_OZR,lo_YZR |
| s1946 | 137 | linear | HCD | lo | 185827/250000 | s1879,s1904,s1817 |
| s1947 | 138 | linear | HCP | lo | 84609/200000 | lo_CZP,s1904,s1905 |
| s1948 | 139 | linear | HCQ | lo | 263843/500000 | s1880,s1904,s1896 |
| s1949 | 140 | linear | HCR | lo | 468109/1000000 | s1881,s1904,s1913 |
| s1952 | 144 | linear | CDF | lo | 362289/500000 | s1879,lo_CFZ,s1818 |
| s1955 | 145 | linear | CDY | lo | 59611/125000 | s1879,lo_CYZ,s1911 |
| s1956 | 146 | linear | CFP | lo | 15559/40000 | lo_CFZ,lo_CZP,s1917 |
| s1957 | 147 | linear | CFQ | lo | 525151/1000000 | lo_CFZ,s1880,s1897 |
| s1958 | 148 | linear | CFR | lo | 57083/125000 | lo_CFZ,s1881,s1915 |
| s1959 | 150 | linear | CYQ | lo | 333549/1000000 | lo_CYZ,s1880,lo_YZQ |
| s1960 | 151 | linear | CYR | lo | 149161/500000 | lo_CYZ,s1881,lo_YZR |
| s1961 | 152 | linear | DFY | lo | 212697/500000 | s1882,lo_DYP,s1908 |
| s1962 | 152 | linear | DFP | hi | 2261/10000 | s1743,lo_DYP,s1908 |
| s1963 | 155 | linear | DZQ | lo | 172093/500000 | lo_DQR,s1914,lo_ZQR |
| s1965 | 156 | support_z | ODY | lo | 19907/125000 | s1945,s1934 |
| s1966 | 157 | support_z | CFY | lo | 76481/500000 | s1869,s1770 |
| s1971 | 160 | linear | CDF | hi | 854157/1000000 | s1888 |
| s1980 | 172 | bary_hi | OYQ | hi | 257689/500000 | hi_ODF,s1961,lo_OFY,s1965,hi_ODQ,hi_OFQ |
| s1982 | 173 | bary_hi | CDY | hi | 25709/40000 | hi_ODF,s1961,lo_OFY,s1965,hi_OCD,s1971 |
| s1983 | 174 | bary_hi | CYQ | hi | 465553/1000000 | hi_ODF,s1961,lo_OFY,s1965,hi_OCQ,hi_CDQ,s1929 |
| s1988 | 176 | bary_lo | OFR | hi | 213637/250000 | hi_ODQ,lo_DQR,s1899,s1932,hi_ODF,hi_OFQ |
| s1992 | 179 | bary_lo | DFR | lo | 266617/1000000 | hi_ODQ,lo_DQR,s1899,s1932,lo_ODF,s210 |
| s1994 | 180 | bary_lo | OZQ | lo | 160239/1000000 | s1934,s1914,lo_OZR,lo_ODZ,lo_ODQ,s1899 |
| s1996 | 182 | bary_hi | DYQ | lo | 28763/62500 | s1941,s1907,s1903,lo_OFY,lo_ODQ,s210,s1963 |
| s2001 | 186 | bary_lo | HYQ | hi | 474361/1000000 | hi_OFQ,s1901,s1944,lo_OFY,hi_OHQ,s1891 |
| s2009 | 191 | bary_lo | FYQ | hi | 514677/1000000 | hi_OFQ,s1901,s1944,lo_OFY,hi_OFQ |
| s2011 | 192 | bary_lo | DZQ | hi | 234151/500000 | hi_OFQ,s1897,s1994,s1936,hi_ODQ,hi_DFQ |
| s2013 | 198 | bary_lo | HDY | hi | 278503/500000 | s1988,s1909,s1945,lo_OFY,hi_OHD,lo_HDF,s1836 |
| s2015 | 199 | bary_hi | DFY | hi | 551939/1000000 | s1988,s1909,s1945,lo_OFY,hi_ODF,s1841 |
| s2021 | 200 | bary_lo | OZQ | lo | 4027/25000 | s1988,s1915,lo_OZR,s1936,s1938,s1899 |
| s2031 | 204 | bary_lo | DFP | lo | 47429/500000 | s265,s1884,lo_HDP,s1947,lo_HDF,s1952 |
| s2043 | 210 | bary_lo | CDP | lo | 12733/62500 | s2013,lo_DYP,s1787,lo_HDP,s1946,s1955 |
| s2044 | 211 | bary_lo | CFP | hi | 519041/1000000 | s2013,lo_DYP,s1787,lo_HDP,s1888,s1971,s1966 |
| s2046 | 213 | bary_lo | CPQ | lo | 329629/1000000 | s2013,lo_DYP,s1787,lo_HDP,s1948,lo_CDQ,s1959 |
| s2047 | 214 | bary_lo | CPR | lo | 189911/1000000 | s2013,lo_DYP,s1787,lo_HDP,s1949,lo_CDR,s1960 |
| s2048 | 215 | bary_hi | DPQ | lo | 72129/500000 | s2013,lo_DYP,s1787,lo_HDP,s1898,s1996 |
| s2056 | 217 | bary_lo | HYZ | lo | 64603/500000 | s1971,s1818,lo_CFZ,s1879,lo_HCY,s1862,lo_HFY |
| s2064 | 222 | bary_lo | HYP | lo | 48887/200000 | s1971,s2031,s1956,s2043,lo_HCY,s1862,lo_HFY |
| s2070 | 224 | bary_hi | HFZ | lo | 111179/1000000 | s1982,s1911,lo_CYZ,s1879,s1888,lo_HDF,lo_HFY |
| s2074 | 226 | bary_hi | HFR | lo | 55729/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s1888,lo_HDF,s1891 |
| s2083 | 229 | bary_lo | HDZ | hi | 604211/1000000 | s2044,s1917,lo_CZP,lo_CFZ,s265,lo_HDF,s1824 |
| s2086 | 230 | bary_lo | CDZ | lo | 16633/100000 | s2044,s1917,lo_CZP,lo_CFZ,s1952,s2043 |
| s2087 | 232 | bary_lo | CZQ | lo | 38289/250000 | s2044,s1917,lo_CZP,lo_CFZ,s1957,s2046 |
| s2088 | 233 | bary_lo | CZR | lo | 115851/1000000 | s2044,s1917,lo_CZP,lo_CFZ,s1958,s2047 |
| s2089 | 234 | bary_hi | DFZ | hi | 588579/1000000 | s2044,s1917,lo_CZP,lo_CFZ,s1971,s1962 |
| s2090 | 235 | bary_hi | DYZ | hi | 319519/1000000 | s2044,s1917,lo_CZP,lo_CFZ,s1982,s1961,lo_DYP |
| s2095 | 238 | bary_hi | HDZ | lo | 119693/250000 | s1983,lo_YZQ,s2087,lo_CYZ,s1946,s1862,s1898 |
| s2096 | 239 | bary_lo | DFZ | lo | 94791/200000 | s1983,lo_YZQ,s2087,lo_CYZ,s1952,s1961,s210 |
| s2097 | 240 | bary_lo | DZP | lo | 62679/500000 | s1983,lo_YZQ,s2087,lo_CYZ,s2043,lo_DYP,s2048 |
| s2101 | 244 | bary_lo | HDP | hi | 207289/1000000 | s2015,s1908,lo_DYP,s2031,lo_HDF,s2013 |
| s2102 | 245 | bary_lo | CDP | lo | 12753/62500 | s2015,s1908,lo_DYP,s2031,s1952,s1955 |
| s2103 | 246 | bary_lo | CPQ | lo | 6597/20000 | s2015,s1908,lo_DYP,s2031,lo_CDQ,s1957,s1959 |
| s2114 | 251 | bary_lo | OQR | lo | 16981/100000 | s2011,lo_ZQR,lo_DQR,s1914,lo_ODQ,s2021 |
| s2115 | 252 | bary_lo | HDR | hi | 587151/1000000 | s2011,lo_ZQR,lo_DQR,s1914,s2083,hi_HDQ |
| s2120 | 253 | bary_hi | DFR | hi | 541409/1000000 | s2011,lo_ZQR,lo_DQR,s1914,s2089,hi_DFQ |
| s2127 | 1 | sum | OHZ | lo | 5826/15625 | s2056,s1892,s1903 |
| s2131 | 4 | sum | OHR | lo | 353959/500000 | s1913,s2127,lo_OZR |
| s2133 | 5 | sum | OCF | lo | 413847/1000000 | s1966,s1894,lo_OFY |
| s2137 | 13 | sum | OFQ | lo | 164739/200000 | s1901,lo_OFY,s1944 |
| s2139 | 15 | sum | OYQ | lo | 189799/500000 | s1903,s2021,lo_YZQ |
| s2143 | 17 | sum | HCQ | lo | 533293/1000000 | s2087,s1904,s1896 |
| s2145 | 18 | sum | HDY | lo | 86087/200000 | lo_DYP,lo_HDP,s2064 |
| s2146 | 19 | sum | CDF | lo | 146657/200000 | s2086,lo_CFZ,s2096 |
| s2149 | 20 | sum | CDY | lo | 7507/15625 | s2086,lo_CYZ,s1911 |
| s2150 | 21 | sum | CFQ | lo | 265379/500000 | lo_CFZ,s2087,s1897 |
| s2151 | 22 | sum | CFR | lo | 460193/1000000 | lo_CFZ,s2088,s1915 |
| s2153 | 24 | sum | CYQ | lo | 84789/250000 | lo_CYZ,s2087,lo_YZQ |
| s2155 | 25 | sum | DFY | lo | 425867/1000000 | s2031,lo_DYP,s1908 |
| s2159 | 31 | sumlo | OZQ | lo | 813/5000 | s2137,lo_OZR,s1936,s2114,s1988 |
| s2164 | 37 | sumlo | CDZ | lo | 41987/250000 | s2146,lo_CZP,s2102,lo_CFZ,s2044 |
| s2165 | 38 | sumlo | CZQ | lo | 771/5000 | s2150,lo_CZP,lo_CFZ,s2103,s2044 |
| s2168 | 45 | sumlo | DFP | lo | 9611/100000 | s2146,lo_HDP,s2102,lo_HDF,s265 |
| s2170 | 46 | sumlo | CDP | lo | 207217/1000000 | s2146,lo_DYP,s2149,s2168,s2015 |
| s2173 | 49 | sumlo | HCF | lo | 149329/1000000 | s2146,lo_HFY,s1966,lo_HDF,s2015 |
| s2175 | 50 | sumlo | HFQ | lo | 64001/500000 | s2150,lo_HDF,s210,s2173,s1971 |
| s2176 | 55 | sumlo | OHY | lo | 122719/1000000 | lo_HFY,s2139,s1895,lo_OFY,s2009 |
| s2178 | 56 | sumlo | OCY | lo | 1741/10000 | s1966,s2139,s2153,lo_OFY,s2009 |
| s2179 | 58 | sumlo | HYQ | lo | 15569/50000 | s1996,s2056,s2145,lo_YZQ,s2090 |
| s2181 | 62 | sumlo | HZQ | lo | 278533/1000000 | s1963,s2056,s2095,lo_YZQ,s2090 |
| s2182 | 64 | sumlo | FZQ | lo | 149031/500000 | s2096,lo_YZQ,s1963,s1907,s2090 |
| s2184 | 69 | sumlo | OQR | lo | 2658/15625 | lo_DQR,s2159,lo_ODQ,lo_ZQR,s2011 |
| s2186 | 78 | balance_lo | FYQ | lo | 91837/250000 | s2155,s2143,s1996,s2173,s210,lo_HCY,s265 |
| s2187 | 83 | balance_lo | OYZ | lo | 64837/500000 | lo_YZQ,s2133,s2159,s1966,s2139,lo_CFZ,s1929 |
| s2188 | 85 | balance_lo | YZP | lo | 133269/1000000 | s1911,s1956,s2097,s1966,lo_DYP,lo_CFZ,s1971 |
| s2189 | 90 | balance_lo | HCZ | lo | 23299/200000 | lo_HDF,lo_CYZ,lo_HFY,s2164,s2145,lo_CFZ,s2015 |
| s2190 | 91 | balance_lo | HZP | lo | 224679/1000000 | s2189,lo_DYP,lo_CZP,s2145,s1947,s1911,s1982 |
| s2192 | 93 | balance_lo | CFY | lo | 3069/20000 | s2173,s1911,lo_HFY,s2164,lo_HCY,s2096,s2083 |
| s2194 | 96 | balance_lo | FYZ | lo | 1213/8000 | s2149,s2070,s2145,lo_CFZ,lo_HCY,s2096,s265 |
| s2195 | 97 | balance_lo | FYP | lo | 243713/1000000 | s2149,lo_HFP,s2145,s1956,lo_HCY,s2168,s265 |
| s2196 | 99 | balance_lo | FYR | lo | 76193/250000 | s2149,s2074,s2145,s2151,lo_HCY,s1992,s265 |
| s2198 | 100 | balance_lo | DYZ | lo | 14057/62500 | lo_ODF,lo_YZQ,s210,s2187,lo_ODQ,s2194,hi_OFQ |
| s2199 | 102 | balance_lo | YPQ | lo | 302623/1000000 | s210,lo_OYP,s2137,lo_DYP,lo_ODQ,s2195,hi_ODF |
| s2200 | 103 | balance_lo | HZR | lo | 50243/200000 | s2127,lo_YQR,lo_OZR,s2179,s2131,lo_YZQ,s1980 |
| s2201 | 105 | balance_lo | DZR | lo | 80967/500000 | lo_ODZ,lo_YQR,lo_OZR,s1996,s1932,lo_YZQ,s1980 |
| s2202 | 106 | balance_lo | FZR | lo | 26093/100000 | s1936,lo_YQR,lo_OZR,s2186,s1942,lo_YZQ,s1980 |
| s2204 | 109 | balance_lo | FZP | lo | 211537/1000000 | lo_CFZ,s2199,lo_CZP,s2186,s1956,lo_YZQ,s1983 |
| s2215 | 123 | linear | OCF | lo | 8411/20000 | s2192,s2178,lo_OFY |
| s2216 | 124 | linear | CFQ | hi | 75183/100000 | s2215,hi_OCQ,hi_OFQ |
| s2219 | 128 | linear | ODR | lo | 173967/500000 | s2201,lo_ODZ,lo_OZR |
| s2221 | 129 | linear | ODR | hi | 62179/125000 | lo_DQR,hi_ODQ,s2184 |
| s2223 | 130 | linear | OFZ | lo | 374299/1000000 | s2194,lo_OFY,s2187 |
| s2225 | 132 | linear | OFQ | lo | 419973/500000 | s2186,lo_OFY,s2139 |
| s2228 | 134 | linear | OFZ | hi | 250309/500000 | s2202,s1988,lo_OZR |
| s2229 | 134 | linear | OFR | lo | 728229/1000000 | s2202,s2223,lo_OZR |
| s2231 | 135 | linear | OYQ | lo | 192637/500000 | s2187,s2159,lo_YZQ |
| s2232 | 136 | linear | OYR | lo | 157837/500000 | s2187,lo_OZR,lo_YZR |
| s2233 | 137 | linear | HCD | lo | 152643/200000 | s2164,s2189,s2095 |
| s2235 | 138 | linear | HCP | lo | 217087/500000 | lo_CZP,s2189,s2190 |
| s2236 | 139 | linear | HCQ | lo | 137307/250000 | s2165,s2189,s2181 |
| s2238 | 142 | linear | HDQ | lo | 208141/500000 | s1996,s2145,s2001 |
| s2241 | 144 | linear | CDF | lo | 734903/1000000 | s2164,lo_CFZ,s2096 |
| s2244 | 145 | linear | CDY | lo | 24293/50000 | s2164,lo_CYZ,s2198 |
| s2245 | 146 | linear | CFP | lo | 397537/1000000 | lo_CFZ,lo_CZP,s2204 |
| s2246 | 147 | linear | CFQ | lo | 272631/500000 | lo_CFZ,s2165,s2182 |
| s2248 | 149 | linear | CYP | lo | 319269/1000000 | lo_CYZ,lo_CZP,s2188 |
| s2249 | 150 | linear | CYQ | lo | 1701/5000 | lo_CYZ,s2165,lo_YZQ |
| s2251 | 152 | linear | DFY | lo | 432823/1000000 | s2168,lo_DYP,s2195 |
| s2253 | 155 | linear | DZQ | lo | 173967/500000 | lo_DQR,s2201,lo_ZQR |
| s2255 | 156 | support_z | ODY | lo | 81089/500000 | s2232,s2221 |
| s2256 | 157 | support_z | CFY | lo | 157281/1000000 | s2248,s2044 |
| s2261 | 160 | linear | CDF | hi | 850671/1000000 | s2173 |
| s2269 | 172 | bary_hi | OYQ | hi | 101509/200000 | hi_ODF,s2251,lo_OFY,s2255,hi_ODQ,hi_OFQ |
| s2271 | 173 | bary_hi | CDY | hi | 638989/1000000 | hi_ODF,s2251,lo_OFY,s2255,hi_OCD,s2261 |
| s2272 | 174 | bary_hi | CYQ | hi | 5713/12500 | hi_ODF,s2251,lo_OFY,s2255,hi_OCQ,hi_CDQ,s2216 |
| s2277 | 176 | bary_lo | OFR | hi | 1367/1600 | hi_ODQ,lo_DQR,s2184,s2219,hi_ODF,hi_OFQ |
| s2287 | 182 | bary_hi | DYQ | lo | 93331/200000 | s2228,s2194,s2187,lo_OFY,lo_ODQ,s210,s2253 |
| s2292 | 186 | bary_lo | HYQ | hi | 3721/8000 | hi_OFQ,s2186,s2231,lo_OFY,hi_OHQ,s2175 |
| s2300 | 191 | bary_lo | FYQ | hi | 254053/500000 | hi_OFQ,s2186,s2231,lo_OFY,hi_OFQ |
| s2302 | 192 | bary_lo | DZQ | hi | 462659/1000000 | hi_OFQ,s2182,s2159,s2223,hi_ODQ,hi_DFQ |
| s2303 | 198 | bary_lo | HDY | hi | 27561/50000 | s2277,s2196,s2232,lo_OFY,hi_OHD,lo_HDF,s2115 |
| s2305 | 199 | bary_hi | DFY | hi | 546933/1000000 | s2277,s2196,s2232,lo_OFY,hi_ODF,s2120 |
| s2311 | 200 | bary_lo | OZQ | lo | 82977/500000 | s2277,s2202,lo_OZR,s2223,s2225,s2184 |
| s2321 | 204 | bary_lo | DFP | lo | 96601/1000000 | s265,s2170,lo_HDP,s2235,lo_HDF,s2241 |
| s2334 | 210 | bary_lo | CDP | lo | 210739/1000000 | s2303,lo_DYP,s2064,lo_HDP,s2233,s2244 |
| s2335 | 211 | bary_lo | CFP | hi | 511897/1000000 | s2303,lo_DYP,s2064,lo_HDP,s2173,s2261,s2256 |
| s2337 | 213 | bary_lo | CPQ | lo | 334917/1000000 | s2303,lo_DYP,s2064,lo_HDP,s2236,lo_CDQ,s2249 |
| s2339 | 215 | bary_hi | DPQ | lo | 74483/500000 | s2303,lo_DYP,s2064,lo_HDP,s2238,s2287 |
| s2347 | 217 | bary_lo | HYZ | lo | 12989/100000 | s2261,s2096,lo_CFZ,s2164,lo_HCY,s2145,lo_HFY |
| s2355 | 222 | bary_lo | HYP | lo | 25069/100000 | s2261,s2321,s2245,s2334,lo_HCY,s2145,lo_HFY |
| s2361 | 224 | bary_hi | HFZ | lo | 56413/500000 | s2271,s2198,lo_CYZ,s2164,s2173,lo_HDF,lo_HFY |
| s2373 | 229 | bary_lo | HDZ | hi | 299101/500000 | s2335,s2204,lo_CZP,lo_CFZ,s265,lo_HDF,s2101 |
| s2376 | 230 | bary_lo | CDZ | lo | 171801/1000000 | s2335,s2204,lo_CZP,lo_CFZ,s2241,s2334 |
| s2378 | 232 | bary_lo | CZQ | lo | 39977/250000 | s2335,s2204,lo_CZP,lo_CFZ,s2246,s2337 |
| s2381 | 235 | bary_hi | DYZ | hi | 3891/12500 | s2335,s2204,lo_CZP,lo_CFZ,s2271,s2251,lo_DYP |
| s2383 | 236 | bary_lo | FZP | hi | 325897/1000000 | s2335,s2204,lo_CZP,lo_CFZ,s2335 |
| s2386 | 238 | bary_hi | HDZ | lo | 122957/250000 | s2272,lo_YZQ,s2378,lo_CYZ,s2233,s2145,s2238 |
| s2387 | 239 | bary_lo | DFZ | lo | 240177/500000 | s2272,lo_YZQ,s2378,lo_CYZ,s2241,s2251,s210 |
| s2388 | 240 | bary_lo | DZP | lo | 64173/500000 | s2272,lo_YZQ,s2378,lo_CYZ,s2334,lo_DYP,s2339 |
| s2389 | 243 | bary_lo | OPQ | lo | 300077/500000 | s2305,s2195,lo_DYP,s2321,lo_ODQ,s2225,s2231 |
| s2392 | 245 | bary_lo | CDP | lo | 26347/125000 | s2305,s2195,lo_DYP,s2321,s2241,s2244 |
| s2393 | 246 | bary_lo | CPQ | lo | 83771/250000 | s2305,s2195,lo_DYP,s2321,lo_CDQ,s2246,s2249 |
| s2405 | 251 | bary_lo | OQR | lo | 172861/1000000 | s2302,lo_ZQR,lo_DQR,s2201,lo_ODQ,s2311 |
| s2418 | 1 | sum | OHZ | lo | 382283/1000000 | s2347,s2176,s2187 |
| s2421 | 2 | sum | OHQ | lo | 82677/100000 | s2181,s2418,s2311 |
| s2422 | 4 | sum | OHR | lo | 363249/500000 | s2200,s2418,lo_OZR |
| s2424 | 5 | sum | OCF | lo | 424381/1000000 | s2256,s2178,lo_OFY |
| s2428 | 13 | sum | OFQ | lo | 422811/500000 | s2186,lo_OFY,s2231 |
| s2430 | 15 | sum | OYQ | lo | 97157/250000 | s2187,s2311,lo_YZQ |
| s2436 | 18 | sum | HDY | lo | 43669/100000 | lo_DYP,lo_HDP,s2355 |
| s2437 | 19 | sum | CDF | lo | 149031/200000 | s2376,lo_CFZ,s2387 |
| s2440 | 20 | sum | CDY | lo | 489713/1000000 | s2376,lo_CYZ,s2198 |
| s2441 | 21 | sum | CFQ | lo | 55097/100000 | lo_CFZ,s2378,s2182 |
| s2443 | 24 | sum | CYQ | lo | 86477/250000 | lo_CYZ,s2378,lo_YZQ |
| s2445 | 25 | sum | DFY | lo | 216657/500000 | s2321,lo_DYP,s2195 |
| s2447 | 31 | sumlo | OZQ | lo | 167777/1000000 | s2428,lo_OZR,s2223,s2405,s2277 |
| s2453 | 38 | sumlo | CZQ | lo | 6439/40000 | s2441,lo_CZP,lo_CFZ,s2393,s2335 |
| s2457 | 45 | sumlo | DFP | lo | 98017/1000000 | s2437,lo_HDP,s2392,lo_HDF,s265 |
| s2460 | 47 | sumlo | DPQ | lo | 151921/1000000 | s2457,s2287,s210,lo_DYP,s2305 |
| s2462 | 49 | sumlo | HCF | lo | 153449/1000000 | s2437,lo_HFY,s2256,lo_HDF,s2305 |
| s2465 | 55 | sumlo | OHY | lo | 32031/250000 | lo_HFY,s2430,s2179,lo_OFY,s2300 |
| s2467 | 56 | sumlo | OCY | lo | 183609/1000000 | s2256,s2430,s2443,lo_OFY,s2300 |
| s2468 | 58 | sumlo | HYQ | lo | 40649/125000 | s2287,s2347,s2436,lo_YZQ,s2381 |
| s2474 | 62 | sumlo | HZQ | lo | 146063/500000 | s2253,s2347,s2386,lo_YZQ,s2381 |
| s2475 | 63 | sumlo | CDZ | lo | 86851/500000 | lo_CFZ,s2388,lo_CZP,s2387,s2383 |
| s2478 | 69 | sumlo | OQR | lo | 173227/1000000 | lo_DQR,s2447,lo_ODQ,lo_ZQR,s2302 |
| s2479 | 73 | balance_lo | HCP | lo | 435343/1000000 | s2462,s2389,s2245,s2421,lo_HFP,lo_OCQ,hi_OFQ |
| s2483 | 82 | balance_lo | FYQ | lo | 15473/40000 | s2445,s2474,s2287,s2361,s210,s2347,s2373 |
| s2484 | 83 | balance_lo | OYZ | lo | 67833/500000 | lo_YZQ,s2424,s2447,s2256,s2430,lo_CFZ,s2216 |
| s2485 | 85 | balance_lo | YZP | lo | 139003/1000000 | s2198,s2245,s2388,s2256,lo_DYP,lo_CFZ,s2261 |
| s2487 | 90 | balance_lo | HCZ | lo | 29901/250000 | lo_HDF,lo_CYZ,lo_HFY,s2475,s2436,lo_CFZ,s2305 |
| s2490 | 93 | balance_lo | CFY | lo | 159377/1000000 | s2462,s2198,lo_HFY,s2475,lo_HCY,s2387,s2373 |
| s2491 | 94 | balance_lo | CDP | lo | 107613/500000 | s2490,s2460,s2443,s2457,s2441,lo_DYP,s2300 |
| s2493 | 96 | balance_lo | FYZ | lo | 154947/1000000 | s2440,s2361,s2436,lo_CFZ,lo_HCY,s2387,s265 |
| s2494 | 97 | balance_lo | FYP | lo | 15729/62500 | s2440,lo_HFP,s2436,s2245,lo_HCY,s2457,s265 |
| s2498 | 100 | balance_lo | DYZ | lo | 229689/1000000 | lo_ODF,lo_YZQ,s210,s2484,lo_ODQ,s2493,hi_OFQ |
| s2499 | 101 | balance_lo | FYZ | lo | 155107/1000000 | s2437,s2347,lo_HDF,lo_CYZ,s2462,s2498,s265 |
| s2500 | 102 | balance_lo | YPQ | lo | 310701/1000000 | s210,lo_OYP,s2428,lo_DYP,lo_ODQ,s2494,hi_ODF |
| s2502 | 103 | balance_lo | HZR | lo | 131377/500000 | s2418,lo_YQR,lo_OZR,s2468,s2422,lo_YZQ,s2269 |
| s2503 | 105 | balance_lo | DZR | lo | 83151/500000 | lo_ODZ,lo_YQR,lo_OZR,s2287,s2219,lo_YZQ,s2269 |
| s2504 | 106 | balance_lo | FZR | lo | 272901/1000000 | s2223,lo_YQR,lo_OZR,s2483,s2229,lo_YZQ,s2269 |
| s2506 | 108 | balance_lo | HZP | lo | 7377/31250 | s2487,s2500,lo_CZP,s2468,s2479,lo_YZQ,s2272 |
| s2507 | 109 | balance_lo | FZP | lo | 222827/1000000 | lo_CFZ,s2500,lo_CZP,s2483,s2245,lo_YZQ,s2272 |
| s2508 | 112 | balance_lo | FZQ | lo | 315369/1000000 | s2437,s2474,lo_HDF,s2453,s2462,s2253,s265 |
| s2512 | 115 | linear | OHD | lo | 45437/62500 | s2436,s2255,s2465 |
| s2514 | 117 | linear | OHZ | lo | 4921/12500 | s2347,s2465,s2484 |
| s2517 | 119 | linear | OHQ | lo | 853583/1000000 | s2474,s2514,s2447 |
| s2521 | 123 | linear | OCF | lo | 217993/500000 | s2490,s2467,lo_OFY |
| s2523 | 124 | linear | CFQ | hi | 368197/500000 | s2521,hi_OCQ,hi_OFQ |
| s2526 | 128 | linear | ODR | lo | 176151/500000 | s2503,lo_ODZ,lo_OZR |
| s2528 | 129 | linear | ODR | hi | 494317/1000000 | lo_DQR,hi_ODQ,s2478 |
| s2530 | 130 | linear | OFZ | lo | 383773/1000000 | s2499,lo_OFY,s2484 |
| s2533 | 132 | linear | OFQ | lo | 868453/1000000 | s2483,lo_OFY,s2430 |
| s2534 | 132 | linear | FYQ | hi | 31547/62500 | hi_OFQ,lo_OFY,s2430 |
| s2536 | 134 | linear | OFZ | hi | 244237/500000 | s2504,s2277,lo_OZR |
| s2537 | 134 | linear | OFR | lo | 374837/500000 | s2504,s2530,lo_OZR |
| s2540 | 135 | linear | OYQ | lo | 396443/1000000 | s2484,s2447,lo_YZQ |
| s2541 | 136 | linear | OYR | lo | 160833/500000 | s2484,lo_OZR,lo_YZR |
| s2542 | 137 | linear | HCD | lo | 392567/500000 | s2475,s2487,s2386 |
| s2545 | 138 | linear | HCP | lo | 112167/250000 | lo_CZP,s2487,s2506 |
| s2546 | 139 | linear | HCQ | lo | 114541/200000 | s2453,s2487,s2474 |
| s2548 | 142 | linear | HDQ | lo | 21911/50000 | s2287,s2436,s2292 |
| s2549 | 143 | linear | HDQ | hi | 153747/200000 | s2302,s2373,s2474 |
| s2552 | 144 | linear | CDF | lo | 46691/62500 | s2475,lo_CFZ,s2387 |
| s2555 | 145 | linear | CDY | lo | 496391/1000000 | s2475,lo_CYZ,s2498 |
| s2557 | 146 | linear | CFP | lo | 408827/1000000 | lo_CFZ,lo_CZP,s2507 |
| s2558 | 147 | linear | CFQ | lo | 8896/15625 | lo_CFZ,s2453,s2508 |
| s2560 | 149 | linear | CYP | lo | 325003/1000000 | lo_CYZ,lo_CZP,s2485 |
| s2561 | 150 | linear | CYQ | lo | 13879/40000 | lo_CYZ,s2453,lo_YZQ |
| s2563 | 152 | linear | DFY | lo | 442681/1000000 | s2457,lo_DYP,s2494 |
| s2564 | 152 | linear | DFP | hi | 202269/1000000 | s2305,lo_DYP,s2494 |
| s2565 | 153 | linear | DFQ | lo | 50573/125000 | s2563,s2287,s2534 |
| s2567 | 155 | linear | DZQ | lo | 176151/500000 | lo_DQR,s2503,lo_ZQR |
| s2569 | 156 | support_z | ODY | lo | 33247/200000 | s2541,s2528 |
| s2570 | 157 | support_z | CFY | lo | 1299/8000 | s2560,s2335 |
| s2574 | 160 | linear | CDF | hi | 846551/1000000 | s2462 |
| s2579 | 167 | bary_lo | OZQ | lo | 168139/1000000 | s408,s2502,lo_OZR,s2514,s2517,s2478 |
| s2585 | 172 | bary_hi | OYQ | hi | 9943/20000 | hi_ODF,s2563,lo_OFY,s2569,hi_ODQ,hi_OFQ |
| s2588 | 174 | bary_hi | CYQ | hi | 1389/3125 | hi_ODF,s2563,lo_OFY,s2569,hi_OCQ,hi_CDQ,s2523 |
| s2594 | 176 | bary_lo | OFR | hi | 427083/500000 | hi_ODQ,lo_DQR,s2478,s2526,hi_ODF,hi_OFQ |
| s2607 | 182 | bary_hi | DYQ | lo | 475323/1000000 | s2536,s2499,s2484,lo_OFY,lo_ODQ,s2565,s2567 |
| s2609 | 184 | bary_lo | OCY | lo | 91999/500000 | hi_OFQ,s2483,s2540,lo_OFY,s2521,lo_OCQ |
| s2611 | 185 | bary_lo | HDY | hi | 5389/10000 | hi_OFQ,s2483,s2540,lo_OFY,hi_OHD,lo_HDF,s2549 |
| s2614 | 187 | bary_hi | CDY | hi | 634307/1000000 | hi_OFQ,s2483,s2540,lo_OFY,hi_OCD,s2574,lo_CDQ |
| s2617 | 189 | bary_hi | DFY | hi | 6721/12500 | hi_OFQ,s2483,s2540,lo_OFY,hi_ODF,hi_DFQ |
| s2622 | 191 | bary_lo | FYQ | hi | 496937/1000000 | hi_OFQ,s2483,s2540,lo_OFY,hi_OFQ |
| s2624 | 192 | bary_lo | DZQ | hi | 227519/500000 | hi_OFQ,s2508,s2579,s2530,hi_ODQ,hi_DFQ |
| s2625 | 193 | bary_lo | FZQ | hi | 108617/250000 | hi_OFQ,s2508,s2579,s2530,hi_OFQ |
| s2631 | 200 | bary_lo | OZQ | lo | 34477/200000 | s2594,s2504,lo_OZR,s2530,s2533,s2478 |
| s2642 | 204 | bary_lo | DFP | lo | 24667/250000 | s265,s2491,lo_HDP,s2545,lo_HDF,s2552 |
| s2647 | 205 | bary_lo | ODP | lo | 154147/1000000 | s2611,lo_DYP,s2355,lo_HDP,s2512,s2569 |
| s2653 | 208 | bary_hi | HCP | hi | 288951/500000 | s2611,lo_DYP,s2355,lo_HDP,s265,lo_HCY |
| s2654 | 209 | bary_lo | HDP | hi | 19521/100000 | s2611,lo_DYP,s2355,lo_HDP,s2611 |
| s2657 | 210 | bary_lo | CDP | lo | 221157/1000000 | s2611,lo_DYP,s2355,lo_HDP,s2542,s2555 |
| s2658 | 211 | bary_lo | CFP | hi | 62483/125000 | s2611,lo_DYP,s2355,lo_HDP,s2462,s2574,s2570 |
| s2660 | 213 | bary_lo | CPQ | lo | 42677/125000 | s2611,lo_DYP,s2355,lo_HDP,s2546,lo_CDQ,s2561 |
| s2662 | 215 | bary_hi | DPQ | lo | 157653/1000000 | s2611,lo_DYP,s2355,lo_HDP,s2548,s2607 |
| s2671 | 217 | bary_lo | HYZ | lo | 32689/250000 | s2574,s2387,lo_CFZ,s2475,lo_HCY,s2436,lo_HFY |
| s2678 | 220 | bary_hi | OPQ | hi | 93939/125000 | s2574,s2642,s2557,s2657,lo_OCQ,hi_ODQ,hi_OFQ |
| s2680 | 222 | bary_lo | HYP | lo | 258979/1000000 | s2574,s2642,s2557,s2657,lo_HCY,s2436,lo_HFY |
| s2687 | 224 | bary_hi | HFZ | lo | 114889/1000000 | s2614,s2498,lo_CYZ,s2475,s2462,lo_HDF,lo_HFY |
| s2692 | 227 | bary_lo | CFR | hi | 634709/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s2574,s2523 |
| s2698 | 229 | bary_lo | HDZ | hi | 588521/1000000 | s2658,s2507,lo_CZP,lo_CFZ,s265,lo_HDF,s2654 |
| s2701 | 230 | bary_lo | CDZ | lo | 22517/125000 | s2658,s2507,lo_CZP,lo_CFZ,s2552,s2657 |
| s2703 | 232 | bary_lo | CZQ | lo | 169447/1000000 | s2658,s2507,lo_CZP,lo_CFZ,s2558,s2660 |
| s2705 | 234 | bary_hi | DFZ | hi | 569181/1000000 | s2658,s2507,lo_CZP,lo_CFZ,s2574,s2564 |
| s2706 | 235 | bary_hi | DYZ | hi | 298617/1000000 | s2658,s2507,lo_CZP,lo_CFZ,s2614,s2563,lo_DYP |
| s2708 | 236 | bary_lo | FZP | hi | 39233/125000 | s2658,s2507,lo_CZP,lo_CFZ,s2658 |
| s2710 | 238 | bary_hi | HDZ | lo | 127479/250000 | s2588,lo_YZQ,s2703,lo_CYZ,s2542,s2436,s2548 |
| s2712 | 239 | bary_lo | DFZ | lo | 122691/250000 | s2588,lo_YZQ,s2703,lo_CYZ,s2552,s2563,s2565 |
| s2713 | 240 | bary_lo | DZP | lo | 66671/500000 | s2588,lo_YZQ,s2703,lo_CYZ,s2657,lo_DYP,s2662 |
| s2714 | 243 | bary_lo | OPQ | lo | 617357/1000000 | s2617,s2494,lo_DYP,s2642,lo_ODQ,s2533,s2540 |
| s2717 | 246 | bary_lo | CPQ | lo | 341693/1000000 | s2617,s2494,lo_DYP,s2642,lo_CDQ,s2558,s2561 |
| s2720 | 247 | bary_lo | ZPQ | lo | 252829/1000000 | s2617,s2494,lo_DYP,s2642,s2567,s2508,lo_YZQ |
| s2726 | 248 | bary_hi | ZPQ | hi | 185669/500000 | s2705,s2507,s2713,s2642,s2624,s2625 |
| s2731 | 251 | bary_lo | OQR | lo | 17707/100000 | s2624,lo_ZQR,lo_DQR,s2503,lo_ODQ,s2631 |
| s2743 | 0 | sum | OHD | lo | 731049/1000000 | s2436,s2569,s2465 |
| s2744 | 1 | sum | OHZ | lo | 197273/500000 | s2671,s2465,s2484 |
| s2747 | 2 | sum | OHQ | lo | 859057/1000000 | s2474,s2744,s2631 |
| s2750 | 5 | sum | OCF | lo | 439373/1000000 | s2570,s2609,lo_OFY |
| s2752 | 7 | sum | ODF | lo | 175479/250000 | s2563,s2569,lo_OFY |
| s2755 | 13 | sum | OFQ | lo | 219067/250000 | s2483,lo_OFY,s2540 |
| s2756 | 14 | sub | FZQ | hi | 215111/500000 | hi_OFQ,s2530,s2631 |
| s2757 | 15 | sum | OYQ | lo | 401051/1000000 | s2484,s2631,lo_YZQ |
| s2758 | 16 | sum | HCD | lo | 101207/125000 | s2701,s2487,s2710 |
| s2762 | 18 | sum | HDY | lo | 444979/1000000 | lo_DYP,lo_HDP,s2680 |
| s2763 | 19 | sum | CDF | lo | 7639/10000 | s2701,lo_CFZ,s2712 |
| s2766 | 20 | sum | CDY | lo | 20113/40000 | s2701,lo_CYZ,s2498 |
| s2767 | 21 | sum | CFQ | lo | 72227/125000 | lo_CFZ,s2703,s2508 |
| s2769 | 24 | sum | CYQ | lo | 355447/1000000 | lo_CYZ,s2703,lo_YZQ |
| s2771 | 25 | sum | DFY | lo | 110833/250000 | s2642,lo_DYP,s2494 |
| s2773 | 29 | sumlo | ODY | lo | 10509/62500 | s2647,s2757,lo_ODQ,lo_OYP,s2678 |
| s2774 | 31 | sumlo | OZQ | lo | 174963/1000000 | s2755,lo_OZR,s2530,s2731,s2594 |
| s2776 | 32 | sumlo | HCF | lo | 77887/500000 | s2758,lo_HFY,lo_HCY,lo_HDF,s2611 |
| s2782 | 36 | sumlo | CFY | lo | 32937/200000 | s2763,lo_HCY,s2766,s2776,s265 |
| s2785 | 38 | sumlo | CZQ | lo | 6843/40000 | s2767,lo_CZP,lo_CFZ,s2717,s2658 |
| s2787 | 40 | sumlo | ODP | lo | 155177/1000000 | lo_DYP,s2743,lo_HDP,s2773,s2611 |
| s2790 | 45 | sumlo | DFP | lo | 101003/1000000 | s2763,lo_HDP,s2657,lo_HDF,s265 |
| s2793 | 46 | sumlo | CDP | lo | 226583/1000000 | s2763,lo_DYP,s2766,s2790,s2617 |
| s2794 | 47 | sumlo | DPQ | lo | 39817/250000 | s2790,s2607,s2565,lo_DYP,s2617 |
| s2797 | 49 | sumlo | HCF | lo | 160613/1000000 | s2763,lo_HFY,s2782,lo_HDF,s2617 |
| s2803 | 58 | sumlo | HYQ | lo | 43339/125000 | s2607,s2671,s2762,lo_YZQ,s2706 |
| s2809 | 60 | sumlo | OYZ | lo | 73019/500000 | s2499,s2774,s2530,lo_YZQ,s2756 |
| s2811 | 62 | sumlo | HZQ | lo | 313069/1000000 | s2567,s2671,s2710,lo_YZQ,s2706 |
| s2812 | 63 | sumlo | CDZ | lo | 92463/500000 | lo_CFZ,s2713,lo_CZP,s2712,s2708 |
| s2816 | 65 | sumlo | DFP | lo | 51127/500000 | s2793,lo_HFP,s2557,lo_HDP,s2653 |
| s2818 | 69 | sumlo | OQR | lo | 177597/1000000 | lo_DQR,s2774,lo_ODQ,lo_ZQR,s2624 |
| s2819 | 73 | balance_lo | HCP | lo | 116337/250000 | s2797,s2714,s2557,s2747,lo_HFP,lo_OCQ,hi_OFQ |
| s2829 | 82 | balance_lo | FYQ | lo | 209257/500000 | s2771,s2811,s2607,s2687,s2565,s2671,s2698 |
| s2831 | 84 | balance_lo | OZQ | lo | 21883/125000 | lo_ZQR,s2750,s2818,lo_CFZ,lo_OZR,s2767,s2692 |
| s2833 | 86 | balance_lo | DYZ | lo | 23529/100000 | lo_YZQ,s2763,s2567,s2782,s2607,lo_CFZ,s2523 |
| s2834 | 86 | balance_lo | CFQ | lo | 58023/100000 | lo_YZQ,s2763,s2567,s2782,s2607,lo_CFZ,s2706 |
| s2835 | 87 | balance_lo | YPQ | lo | 162137/500000 | lo_DYP,s2834,s2794,s2782,s2607,s2557,s2574 |
| s2837 | 88 | balance_lo | YZP | lo | 74563/500000 | s2720,s2782,s2835,lo_CFZ,lo_YZQ,s2557,s2523 |
| s2839 | 90 | balance_lo | HCZ | lo | 125037/1000000 | lo_HDF,lo_CYZ,lo_HFY,s2812,s2762,lo_CFZ,s2617 |
| s2842 | 93 | balance_lo | CFY | lo | 170987/1000000 | s2797,s2833,lo_HFY,s2812,lo_HCY,s2712,s2698 |
| s2844 | 94 | balance_lo | CDP | lo | 236529/1000000 | s2842,s2794,s2769,s2816,s2834,lo_DYP,s2622 |
| s2846 | 96 | balance_lo | FYZ | lo | 159639/1000000 | s2766,s2687,s2762,lo_CFZ,lo_HCY,s2712,s265 |
| s2848 | 97 | balance_lo | FYP | lo | 131307/500000 | s2766,lo_HFP,s2762,s2557,lo_HCY,s2816,s265 |
| s2852 | 100 | balance_lo | DYZ | lo | 238399/1000000 | s2752,lo_YZQ,s2565,s2809,lo_ODQ,s2846,hi_OFQ |
| s2853 | 101 | balance_lo | FYZ | lo | 80939/500000 | s2763,s2671,lo_HDF,lo_CYZ,s2797,s2852,s265 |
| s2857 | 105 | balance_lo | DZR | lo | 172217/1000000 | lo_ODZ,lo_YQR,lo_OZR,s2607,s2526,lo_YZQ,s2585 |
| s2859 | 106 | balance_lo | FZR | lo | 290319/1000000 | s2530,lo_YQR,lo_OZR,s2829,s2537,lo_YZQ,s2585 |
| s2861 | 107 | balance_hi | HYQ | hi | 13963/31250 | s265,s2622,lo_HDF,s2769,s2797,s2607,s2763 |
| s2862 | 108 | balance_lo | HZP | lo | 261131/1000000 | s2839,s2835,lo_CZP,s2803,s2819,lo_YZQ,s2588 |
| s2863 | 109 | balance_lo | FZP | lo | 60239/250000 | lo_CFZ,s2835,lo_CZP,s2829,s2557,lo_YZQ,s2588 |
| s2864 | 110 | balance_lo | OCY | lo | 3149/15625 | s2750,lo_YZQ,s2842,s2831,lo_OFY,s2785,s2756 |
| s2865 | 111 | balance_lo | ODY | lo | 170939/1000000 | lo_DYP,s2831,lo_OYP,s2567,s2787,lo_YZQ,s2726 |
| s2866 | 112 | balance_lo | FZQ | lo | 171801/500000 | s2763,s2811,lo_HDF,s2785,s2797,s2567,s265 |
| s2884 | 123 | linear | OCF | lo | 465523/1000000 | s2842,s2864,lo_OFY |
| s2887 | 124 | linear | CFQ | hi | 706857/1000000 | s2884,hi_OCQ,hi_OFQ |
| s2889 | 126 | linear | ODF | lo | 707271/1000000 | s2771,s2865,lo_OFY |
| s2893 | 128 | linear | ODR | lo | 358217/1000000 | s2857,lo_ODZ,lo_OZR |
| s2897 | 130 | linear | OFZ | lo | 100229/250000 | s2853,lo_OFY,s2809 |
| s2900 | 132 | linear | OYQ | hi | 237433/500000 | s2829,hi_OFQ,lo_OFY |
| s2902 | 132 | linear | FYQ | hi | 492329/1000000 | hi_OFQ,lo_OFY,s2757 |
| s2903 | 133 | linear | OFZ | hi | 233857/500000 | s2866,hi_OFQ,s2831 |
| s2905 | 133 | linear | OFQ | lo | 459791/500000 | s2866,s2897,s2831 |
| s2911 | 135 | linear | OYQ | lo | 207051/500000 | s2809,s2831,lo_YZQ |
| s2914 | 137 | linear | HCD | lo | 819879/1000000 | s2812,s2839,s2710 |
| s2918 | 138 | linear | HCP | lo | 7487/15625 | lo_CZP,s2839,s2862 |
| s2919 | 139 | linear | HCQ | lo | 609181/1000000 | s2785,s2839,s2811 |
| s2923 | 142 | linear | HDQ | lo | 236743/500000 | s2607,s2762,s2861 |
| s2924 | 143 | linear | HDQ | hi | 73049/100000 | s2624,s2698,s2811 |
| s2929 | 144 | linear | CDF | lo | 76869/100000 | s2812,lo_CFZ,s2712 |
| s2931 | 144 | linear | DFZ | hi | 4549/8000 | s2574,s2812,lo_CFZ |
| s2934 | 145 | linear | CDY | lo | 20653/40000 | s2812,lo_CYZ,s2852 |
| s2936 | 146 | linear | CFP | lo | 106739/250000 | lo_CFZ,lo_CZP,s2863 |
| s2937 | 147 | linear | CFQ | lo | 607677/1000000 | lo_CFZ,s2785,s2866 |
| s2939 | 149 | linear | CYP | lo | 167563/500000 | lo_CYZ,lo_CZP,s2837 |
| s2940 | 150 | linear | CYQ | lo | 14283/40000 | lo_CYZ,s2785,lo_YZQ |
| s2942 | 152 | linear | DFY | lo | 114467/250000 | s2816,lo_DYP,s2848 |
| s2944 | 153 | linear | DFQ | lo | 220431/500000 | s2942,s2607,s2902 |
| s2945 | 154 | linear | DFQ | hi | 680061/1000000 | s2931,s2624,s2866 |
| s2949 | 155 | linear | DZQ | lo | 358217/1000000 | lo_DQR,s2857,lo_ZQR |
| s2951 | 157 | support_z | CFY | lo | 85687/500000 | s2939,s2658 |
| s2955 | 160 | linear | CDF | hi | 839387/1000000 | s2797 |
| s2989 | 176 | bary_lo | OFR | hi | 426937/500000 | hi_ODQ,lo_DQR,s2818,s2893,hi_ODF,hi_OFQ |
| s3005 | 182 | bary_hi | DYQ | lo | 500237/1000000 | s2903,s2853,s2809,lo_OFY,lo_ODQ,s2944,s2949 |
| s3011 | 185 | bary_lo | HDY | hi | 515727/1000000 | hi_OFQ,s2829,s2911,lo_OFY,hi_OHD,lo_HDF,s2924 |
| s3015 | 187 | bary_hi | CDY | hi | 124433/200000 | hi_OFQ,s2829,s2911,lo_OFY,hi_OCD,s2955,lo_CDQ |
| s3018 | 188 | bary_hi | CYQ | hi | 26201/62500 | hi_OFQ,s2829,s2911,lo_OFY,hi_OCQ,s2887 |
| s3020 | 189 | bary_hi | DFY | hi | 259327/500000 | hi_OFQ,s2829,s2911,lo_OFY,hi_ODF,s2945 |
| s3023 | 191 | bary_lo | FYQ | hi | 239639/500000 | hi_OFQ,s2829,s2911,lo_OFY,hi_OFQ |
| s3038 | 200 | bary_lo | OZQ | lo | 183543/1000000 | s2989,s2859,lo_OZR,s2897,s2905,s2818 |
| s3049 | 201 | bary_lo | DFZ | lo | 499609/1000000 | s2900,lo_YZQ,s3038,s2809,s2889,s2942,s2944 |
| s3059 | 204 | bary_lo | DFP | lo | 10307/100000 | s265,s2844,lo_HDP,s2918,lo_HDF,s2929 |
| s3086 | 210 | bary_lo | CDP | lo | 120477/500000 | s3011,lo_DYP,s2680,lo_HDP,s2914,s2934 |
| s3087 | 211 | bary_lo | CFP | hi | 476791/1000000 | s3011,lo_DYP,s2680,lo_HDP,s2797,s2955,s2951 |
| s3090 | 213 | bary_lo | CPQ | lo | 352619/1000000 | s3011,lo_DYP,s2680,lo_HDP,s2919,lo_CDQ,s2940 |
| s3105 | 216 | bary_lo | HCZ | lo | 126223/1000000 | s2955,s3049,lo_CFZ,s2812,s2914,s2797 |
| s3108 | 217 | bary_lo | HYZ | lo | 131997/1000000 | s2955,s3049,lo_CFZ,s2812,lo_HCY,s2762,lo_HFY |
| s3119 | 221 | bary_lo | HDP | hi | 79297/500000 | s2955,s3059,s2936,s3086,s265,lo_HDF |
| s3120 | 222 | bary_lo | HYP | lo | 136017/500000 | s2955,s3059,s2936,s3086,lo_HCY,s2762,lo_HFY |
| s3144 | 229 | bary_lo | HDZ | hi | 565967/1000000 | s3087,s2863,lo_CZP,lo_CFZ,s265,lo_HDF,s3119 |
| s3147 | 230 | bary_lo | CDZ | lo | 39387/200000 | s3087,s2863,lo_CZP,lo_CFZ,s2929,s3086 |
| s3148 | 231 | bary_hi | CYZ | lo | 49397/500000 | s3087,s2863,lo_CZP,lo_CFZ,s2951,s2939 |
| s3149 | 232 | bary_lo | CZQ | lo | 187309/1000000 | s3087,s2863,lo_CZP,lo_CFZ,s2937,s3090 |
| s3152 | 235 | bary_hi | DYZ | hi | 54401/200000 | s3087,s2863,lo_CZP,lo_CFZ,s3015,s2942,lo_DYP |
| s3157 | 238 | bary_hi | HDZ | lo | 106973/200000 | s3018,lo_YZQ,s3149,s3148,s2914,s2762,s2923 |
| s3160 | 239 | bary_lo | DFZ | lo | 260593/500000 | s3018,lo_YZQ,s3149,s3148,s2929,s2942,s2944 |
| s3230 | 16 | sum | HCD | lo | 858023/1000000 | s3147,s3105,s3157 |
| s3236 | 18 | sum | HDY | lo | 229017/500000 | lo_DYP,lo_HDP,s3120 |
| s3237 | 19 | sum | CDF | lo | 811121/1000000 | s3147,lo_CFZ,s3160 |
| s3240 | 20 | sum | CDY | lo | 33383/62500 | s3147,s3148,s2852 |
| s3254 | 32 | sumlo | HCF | lo | 21437/125000 | s3230,lo_HFY,lo_HCY,lo_HDF,s3011 |
| s3265 | 36 | sumlo | CFY | lo | 92081/500000 | s3237,lo_HCY,s3240,s3254,s265 |
| s3285 | 44 | sumlo | DFY | lo | 232191/500000 | s3237,s3236,s3240,lo_HDF,s265 |
| s3312 | 51 | sumlo | HFZ | lo | 1531/12500 | s3160,lo_HFY,s2853,lo_HDF,s3020 |
| s3313 | 53 | sumlo | FYZ | lo | 165799/1000000 | s3265,s3160,lo_CFZ,s3285,s2955 |
| s3355 | 59 | sumlo | DYZ | lo | 263159/1000000 | s3285,lo_YZQ,s3005,s3313,s3023 |
| s3360 | 59 | diffhi | FYZ | hi | 6971/40000 | s3152,s3023,s3285,lo_YZQ,s3005 |
| s3430 | 61 | sumlo | FYZ | lo | 89251/500000 | s3160,s3108,s3355,s3312,s3144 |

## Conclusion

{"triangle":"FYZ","lower":"s3430","upper":"s3360"}
