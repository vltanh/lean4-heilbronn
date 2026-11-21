# Leaf rpmmpppmpmmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":-1,"OYP":-1,"OZR":-1}

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
| 21 | interior_line | ["OZ","R","ODQ","Q",-1] |
| 22 | interior_line | ["OP","R","CDQ","R",-1] |
| 23 | interior_line | ["HY","Z","HCDF","Z",1] |
| 24 | interior_line | ["HY","P","HCDF","P",1] |
| 25 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 26 | interior_line | ["CY","P","HCDF","P",-1] |
| 27 | interior_line | ["CZ","R","CDQ","R",-1] |
| 28 | interior_line | ["CP","R","CDQ","R",-1] |
| 29 | interior_line | ["DZ","R","CDQ","R",1] |
| 30 | interior_line | ["DP","R","CDQ","R",1] |
| 31 | interior_line | ["ZP","Y","OHC","Y",1] |
| 32 | interior_line | ["ZQ","Y","OHC","H",1] |
| 33 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 34 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 35 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 36 | plu | ["OHDYZ","OYZ",-1] |
| 37 | plu | ["OHFYP","OFP",-1] |
| 38 | plu | ["DOHYZ","DYZ",1] |
| 39 | plu | ["FOCYZ","FYZ",1] |
| 40 | plu | ["FOCZP","FCP",1] |
| 41 | plu | ["FOYZP","FYP",1] |
| 42 | plu | ["YODPR","YPR",-1] |
| 43 | plu | ["YOZQR","YZR",1] |
| 44 | plu | ["ZOHFQ","ZFQ",-1] |
| 45 | plu | ["ZOHYR","ZHR",-1] |
| 46 | plu | ["ZOHPQ","ZPQ",-1] |
| 47 | plu | ["ZOHPR","ZPR",-1] |
| 48 | plu | ["ZOFYR","ZFR",-1] |
| 49 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHR | OHR | lo | 347/500 | ["cost","YZ"] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","YP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_ODR | ODR | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","Y"] |
| lo_OFP | OFP | lo | 279/1000 | ["cost","Y"] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YZ"] |
| lo_OFR | OFR | lo | 347/500 | ["cost","YZ"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCF | HCF | lo | 93/1000 | ["cost",""] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HFR | HFR | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
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
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 1 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 2 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 3 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 4 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 5 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 6 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 7 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 8 | ["fan","OFZ","FYZ","OFY","OYZ"] | ["fan","OFZ","Y"] |
| 9 | ["fan","OFP","FYP","OFY","OYP"] | ["fan","OFP","Y"] |
| 10 | ["fan","OFQ","FZQ","OFZ","OZQ"] | ["fan","OFQ","Z"] |
| 11 | ["fan","OFR","FZR","OFZ","OZR"] | ["fan","OFR","Z"] |
| 12 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 13 | ["fan","OYR","OYZ","OZR","YZR"] | ["fan","OYR","Z"] |
| 14 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 15 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 16 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 17 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 18 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 19 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 20 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 21 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 22 | ["fan","CFQ","CFZ","CZQ","FZQ"] | ["fan","CFQ","Z"] |
| 23 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 24 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 25 | ["plu","OCY","OHR","OCR","OHY","OHC","OYR"] | ["plu","OHCYR"] |
| 26 | ["plu","OCZ","OHR","OCR","OHZ","OHC","OZR"] | ["plu","OHCZR"] |
| 27 | ["plu","OFQ","OHY","OFY","OHQ","OHF","OYQ"] | ["plu","OHFYQ"] |
| 28 | ["plu","OFR","OHY","OFY","OHR","OHF","OYR"] | ["plu","OHFYR"] |
| 29 | ["plu","OCD","OFQ","OCF","ODQ","OCQ","ODF"] | ["plu","OCDFQ"] |
| 30 | ["plu","OCZ","OFR","OCF","OZR","OCR","OFZ"] | ["plu","OCFZR"] |
| 31 | ["plu","OCR","OFQ","OCF","OQR","OCQ","OFR"] | ["plu","OCFQR"] |
| 32 | ["plu","ODF","OYR","ODR","OFY","ODY","OFR"] | ["plu","ODFYR"] |
| 33 | ["plu","ODR","OZQ","ODQ","OZR","ODZ","OQR"] | ["plu","ODZQR"] |
| 34 | ["plu","OFR","OZQ","OFQ","OZR","OFZ","OQR"] | ["plu","OFZQR"] |
| 35 | ["plu","HYQ","OHZ","HYZ","OHQ","HZQ","OHY"] | ["plu","HOYZQ"] |
| 36 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 37 | ["plu","HCD","HFQ","HCF","HDQ","HCQ","HDF"] | ["plu","HCDFQ"] |
| 38 | ["plu","HCF","HYQ","HCQ","HFY","HCY","HFQ"] | ["plu","HCFYQ"] |
| 39 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 40 | ["plu","CDF","HCP","CDP","HCF","CFP","HCD"] | ["plu","CHDFP"] |
| 41 | ["plu","CDP","HCZ","CDZ","HCP","CZP","HCD"] | ["plu","CHDZP"] |
| 42 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 43 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 44 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 45 | ["plu","HFQ","ODF","DFQ","OHF","HDF","OFQ"] | ["plu","FOHDQ"] |
| 46 | ["plu","CFP","OFZ","CFZ","OFP","FZP","OCF"] | ["plu","FOCZP"] |
| 47 | ["plu","FYQ","OFZ","FYZ","OFQ","FZQ","OFY"] | ["plu","FOYZQ"] |
| 48 | ["plu","FYR","OFZ","FYZ","OFR","FZR","OFY"] | ["plu","FOYZR"] |
| 49 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 50 | ["plu","DFY","HFZ","DFZ","HFY","FYZ","HDF"] | ["plu","FHDYZ"] |
| 51 | ["plu","DFY","HFQ","DFQ","HFY","FYQ","HDF"] | ["plu","FHDYQ"] |
| 52 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 53 | ["plu","CFP","FYZ","CFY","FZP","CFZ","FYP"] | ["plu","FCYZP"] |
| 54 | ["plu","HYR","OCY","CYR","OHY","HCY","OYR"] | ["plu","YOHCR"] |
| 55 | ["plu","FYQ","OHY","HFY","OYQ","HYQ","OFY"] | ["plu","YOHFQ"] |
| 56 | ["plu","HYQ","OYZ","HYZ","OYQ","OHY","YZQ"] | ["plu","YOHZQ"] |
| 57 | ["plu","FYQ","OYZ","FYZ","OYQ","OFY","YZQ"] | ["plu","YOFZQ"] |
| 58 | ["plu","FYZ","HDY","DFY","HYZ","DYZ","HFY"] | ["plu","YHDFZ"] |
| 59 | ["plu","FYZ","OHZ","HFZ","OYZ","HYZ","OFZ"] | ["plu","ZOHFY"] |
| 60 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 61 | ["plu","CFZ","OZP","CZP","OFZ","FZP","OCZ"] | ["plu","ZOCFP"] |
| 62 | ["plu","FZQ","OYZ","FYZ","OZQ","OFZ","YZQ"] | ["plu","ZOFYQ"] |
| 63 | ["plu","FZR","OYZ","FYZ","OZR","OFZ","YZR"] | ["plu","ZOFYR"] |
| 64 | ["plu","FZR","OZQ","FZQ","OZR","OFZ","ZQR"] | ["plu","ZOFQR"] |
| 65 | ["plu","OZQ","YZR","OYZ","ZQR","OZR","YZQ"] | ["plu","ZOYQR"] |
| 66 | ["plu","OZQ","ZPR","OZP","ZQR","OZR","ZPQ"] | ["plu","ZOPQR"] |
| 67 | ["plu","FZQ","HCZ","CFZ","HZQ","CZQ","HFZ"] | ["plu","ZHCFQ"] |
| 68 | ["plu","FYZ","HZR","FZR","HYZ","HFZ","YZR"] | ["plu","ZHFYR"] |
| 69 | ["plu","FZR","HZP","FZP","HZR","HFZ","ZPR"] | ["plu","ZHFPR"] |
| 70 | ["plu","HZQ","YZR","HYZ","ZQR","HZR","YZQ"] | ["plu","ZHYQR"] |
| 71 | ["plu","CYZ","FZR","CFZ","YZR","CZR","FYZ"] | ["plu","ZCFYR"] |
| 72 | ["plu","FZQ","YZR","FYZ","ZQR","FZR","YZQ"] | ["plu","ZFYQR"] |
| 73 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 74 | ["plu","HDQ","OFQ","DFQ","OHQ","HFQ","ODQ"] | ["plu","QOHDF"] |
| 75 | ["plu","FZQ","OHQ","HFQ","OZQ","HZQ","OFQ"] | ["plu","QOHFZ"] |
| 76 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 77 | ["plu","CYQ","ODQ","CDQ","OYQ","DYQ","OCQ"] | ["plu","QOCDY"] |
| 78 | ["plu","CZQ","OFQ","CFQ","OZQ","FZQ","OCQ"] | ["plu","QOCFZ"] |
| 79 | ["plu","DZQ","OFQ","DFQ","OZQ","FZQ","ODQ"] | ["plu","QODFZ"] |
| 80 | ["plu","DZQ","OQR","DQR","OZQ","ODQ","ZQR"] | ["plu","QODZR"] |
| 81 | ["plu","FZQ","OYQ","FYQ","OZQ","OFQ","YZQ"] | ["plu","QOFYZ"] |
| 82 | ["plu","FZQ","HCQ","CFQ","HZQ","CZQ","HFQ"] | ["plu","QHCFZ"] |
| 83 | ["plu","FZQ","HDQ","DFQ","HZQ","DZQ","HFQ"] | ["plu","QHDFZ"] |
| 84 | ["plu","FYQ","HZQ","FZQ","HYQ","HFQ","YZQ"] | ["plu","QHFYZ"] |
| 85 | ["plu","CQR","DZQ","CDQ","ZQR","CZQ","DQR"] | ["plu","QCDZR"] |
| 86 | ["plu","DYQ","FZQ","DFQ","YZQ","DZQ","FYQ"] | ["plu","QDFYZ"] |
| 87 | ["plu","FZR","OYR","FYR","OZR","OFR","YZR"] | ["plu","ROFYZ"] |
| 88 | ["balance",[[1,"HFY","ODQ"],[-1,"FYQ","OHD"],[1,"HYQ","ODF"],[1,"HFQ","ODY"]]] | ["six","ODHFYQ"] |
| 89 | ["balance",[[1,"HCY","OFQ"],[1,"CYQ","OHF"],[-1,"HYQ","OCF"],[1,"HCQ","OFY"]]] | ["six","OFHCYQ"] |
| 90 | ["balance",[[-1,"HCZ","OFP"],[-1,"CZP","OHF"],[-1,"HZP","OCF"],[1,"HCP","OFZ"]]] | ["six","OFHCZP"] |
| 91 | ["balance",[[-1,"HYZ","OFQ"],[-1,"YZQ","OHF"],[-1,"HZQ","OFY"],[1,"HYQ","OFZ"]]] | ["six","OFHYZQ"] |
| 92 | ["balance",[[1,"CYZ","OFQ"],[1,"YZQ","OCF"],[1,"CZQ","OFY"],[-1,"CYQ","OFZ"]]] | ["six","OFCYZQ"] |
| 93 | ["balance",[[1,"HCZ","OPQ"],[-1,"CZP","OHQ"],[-1,"HZP","OCQ"],[-1,"HCP","OZQ"]]] | ["six","OQHCZP"] |
| 94 | ["balance",[[-1,"CFZ","OPQ"],[1,"FZP","OCQ"],[1,"CZP","OFQ"],[1,"CFP","OZQ"]]] | ["six","OQCFZP"] |
| 95 | ["balance",[[1,"HCF","OYR"],[-1,"CFY","OHR"],[1,"HFY","OCR"],[1,"HCY","OFR"]]] | ["six","ORHCFY"] |
| 96 | ["balance",[[1,"HCZ","OPR"],[-1,"CZP","OHR"],[-1,"HZP","OCR"],[-1,"HCP","OZR"]]] | ["six","ORHCZP"] |
| 97 | ["balance",[[1,"HFY","OQR"],[-1,"FYQ","OHR"],[1,"HYQ","OFR"],[1,"HFQ","OYR"]]] | ["six","ORHFYQ"] |
| 98 | ["balance",[[-1,"HYZ","OQR"],[-1,"YZQ","OHR"],[1,"HZQ","OYR"],[-1,"HYQ","OZR"]]] | ["six","ORHYZQ"] |
| 99 | ["balance",[[1,"CFY","OZR"],[1,"FYZ","OCR"],[-1,"CYZ","OFR"],[1,"CFZ","OYR"]]] | ["six","ORCFYZ"] |
| 100 | ["balance",[[-1,"CFZ","OPR"],[1,"FZP","OCR"],[1,"CZP","OFR"],[1,"CFP","OZR"]]] | ["six","ORCFZP"] |
| 101 | ["balance",[[1,"CYZ","OQR"],[1,"YZQ","OCR"],[-1,"CZQ","OYR"],[1,"CYQ","OZR"]]] | ["six","ORCYZQ"] |
| 102 | ["balance",[[-1,"FYZ","OQR"],[-1,"YZQ","OFR"],[1,"FZQ","OYR"],[-1,"FYQ","OZR"]]] | ["six","ORFYZQ"] |
| 103 | ["balance",[[-1,"OFY","HCQ"],[1,"FYQ","OHC"],[-1,"OYQ","HCF"],[-1,"OFQ","HCY"]]] | ["six","HCOFYQ"] |
| 104 | ["balance",[[-1,"OYZ","HCR"],[1,"YZR","OHC"],[1,"OZR","HCY"],[1,"OYR","HCZ"]]] | ["six","HCOYZR"] |
| 105 | ["balance",[[1,"DFY","HCQ"],[-1,"FYQ","HCD"],[1,"DYQ","HCF"],[1,"DFQ","HCY"]]] | ["six","HCDFYQ"] |
| 106 | ["balance",[[1,"OYZ","HDQ"],[1,"YZQ","OHD"],[1,"OZQ","HDY"],[-1,"OYQ","HDZ"]]] | ["six","HDOYZQ"] |
| 107 | ["balance",[[-1,"CFY","HDZ"],[1,"FYZ","HCD"],[-1,"CYZ","HDF"],[-1,"CFZ","HDY"]]] | ["six","HDCFYZ"] |
| 108 | ["balance",[[-1,"CFY","HDQ"],[1,"FYQ","HCD"],[-1,"CYQ","HDF"],[-1,"CFQ","HDY"]]] | ["six","HDCFYQ"] |
| 109 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 110 | ["balance",[[-1,"FYZ","HDQ"],[-1,"YZQ","HDF"],[-1,"FZQ","HDY"],[1,"FYQ","HDZ"]]] | ["six","HDFYZQ"] |
| 111 | ["balance",[[1,"OYZ","HFQ"],[1,"YZQ","OHF"],[1,"OZQ","HFY"],[-1,"OYQ","HFZ"]]] | ["six","HFOYZQ"] |
| 112 | ["balance",[[1,"OCD","HFY"],[1,"CDF","OHY"],[1,"ODF","HCY"],[-1,"OCF","HDY"]]] | ["six","HYOCDF"] |
| 113 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 114 | ["balance",[[-1,"OZQ","HYR"],[1,"ZQR","OHY"],[1,"OQR","HYZ"],[1,"OZR","HYQ"]]] | ["six","HYOZQR"] |
| 115 | ["balance",[[-1,"CFZ","HYQ"],[-1,"FZQ","HCY"],[-1,"CZQ","HFY"],[1,"CFQ","HYZ"]]] | ["six","HYCFZQ"] |
| 116 | ["balance",[[1,"DFY","HZQ"],[-1,"FYQ","HDZ"],[1,"DYQ","HFZ"],[1,"DFQ","HYZ"]]] | ["six","HZDFYQ"] |
| 117 | ["balance",[[1,"OHY","CDR"],[-1,"HYR","OCD"],[-1,"OYR","HCD"],[1,"OHR","CDY"]]] | ["six","CDOHYR"] |
| 118 | ["balance",[[1,"OYZ","CDR"],[-1,"YZR","OCD"],[-1,"OZR","CDY"],[1,"OYR","CDZ"]]] | ["six","CDOYZR"] |
| 119 | ["balance",[[1,"HDF","CYZ"],[-1,"DFY","HCZ"],[1,"HFY","CDZ"],[1,"HDY","CFZ"]]] | ["six","CZHDFY"] |
| 120 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 121 | ["balance",[[1,"HCD","FZP"],[1,"CDP","HFZ"],[1,"HDP","CFZ"],[-1,"HCP","DFZ"]]] | ["six","FZHCDP"] |
| 122 | ["balance",[[1,"ODF","YZQ"],[1,"DFQ","OYZ"],[-1,"OFQ","DYZ"],[1,"ODQ","FYZ"]]] | ["six","YZODFQ"] |
| 123 | ["balance",[[-1,"ODF","YPQ"],[1,"DFQ","OYP"],[1,"OFQ","DYP"],[1,"ODQ","FYP"]]] | ["six","YPODFQ"] |
| 124 | ["balance",[[-1,"OHZ","YQR"],[1,"HZR","OYQ"],[-1,"OZR","HYQ"],[-1,"OHR","YZQ"]]] | ["six","YQOHZR"] |
| 125 | ["balance",[[-1,"ODZ","YQR"],[1,"DZR","OYQ"],[-1,"OZR","DYQ"],[-1,"ODR","YZQ"]]] | ["six","YQODZR"] |
| 126 | ["balance",[[-1,"OFZ","YQR"],[1,"FZR","OYQ"],[-1,"OZR","FYQ"],[-1,"OFR","YZQ"]]] | ["six","YQOFZR"] |
| 127 | ["balance",[[1,"CDZ","YPQ"],[-1,"DZP","CYQ"],[1,"CZP","DYQ"],[1,"CDP","YZQ"]]] | ["six","YQCDZP"] |
| 128 | ["balance",[[1,"OHC","ZPR"],[-1,"HCR","OZP"],[1,"OCR","HZP"],[1,"OHR","CZP"]]] | ["six","ZPOHCR"] |
| 129 | ["balance",[[1,"OHF","ZPR"],[1,"HFR","OZP"],[-1,"OFR","HZP"],[1,"OHR","FZP"]]] | ["six","ZPOHFR"] |
| 130 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 131 | ["balance",[[1,"OCF","YZQ"],[1,"CFY","OZQ"],[1,"OFY","CZQ"],[-1,"OCY","FZQ"]]] | ["six","ZQOCFY"] |
| 132 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 133 | ["balance",[[1,"CDF","YZQ"],[1,"DFY","CZQ"],[1,"CFY","DZQ"],[-1,"CDY","FZQ"]]] | ["six","ZQCDFY"] |
| 134 | ["balance",[[-1,"OCF","ZQR"],[-1,"CFQ","OZR"],[1,"OFQ","CZR"],[-1,"OCQ","FZR"]]] | ["six","ZROCFQ"] |
| 135 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 136 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 137 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 138 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 139 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 140 | ["linear",{"OHZ":-1,"OZR":-1,"OHR":1,"HZR":-1},"0"] | ["affine_quad","OHZR",1] |
| 141 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 142 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 143 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 144 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 145 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 146 | ["linear",{"ODZ":-1,"OZR":-1,"ODR":1,"DZR":-1},"0"] | ["affine_quad","ODZR",1] |
| 147 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 148 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 149 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 150 | ["linear",{"OFZ":-1,"OZR":-1,"OFR":1,"FZR":-1},"0"] | ["affine_quad","OFZR",1] |
| 151 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 152 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 153 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 154 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 155 | ["linear",{"CFZ":-1,"CZR":-1,"CFR":1,"FZR":-1},"0"] | ["affine_quad","CFZR",1] |
| 156 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 157 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 158 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 159 | ["support","CDP","OCD","ODP","1023/1000"] | ["support_pent","DPYOC"] |
| 160 | ["support","OFP","OCF","CFP","1023/1000"] | ["support_pent","FPZCO"] |
| 161 | ["support","OYR","ODR","ODY","1023/1000"] | ["support_pent","OYPDR"] |
| 162 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 163 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 164 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 165 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 166 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 167 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["CFQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FQ"] |
| 168 | ["bary",["FYR",-1],[["OFR",-1],["HFR",-1],["CFR",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FR"] |
| 169 | ["bary",["OHP",-1],[null,null,["OHD",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OH"] |
| 170 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HQ"] |
| 171 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["FZP",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FP"] |
| 172 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["FZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FQ"] |
| 173 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],["CZP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","CZ"] |
| 174 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 175 | ["bary",["OCZ",1],[null,["OHC",1],["OCR",1]],"OHR",["HZR","OZR","OHZ"]] | ["bary","OHR","Z","OC"] |
| 176 | ["bary",["OZQ",1],[null,["OHQ",1],["OQR",1]],"OHR",["HZR","OZR","OHZ"]] | ["bary","OHR","Z","OQ"] |
| 177 | ["bary",["OYQ",1],[null,["OCQ",-1],["OFQ",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","OQ"] |
| 178 | ["bary",["CYQ",1],[["OCQ",1],null,["CFQ",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","CQ"] |
| 179 | ["bary",["ODY",1],[null,null,["ODF",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OD"] |
| 180 | ["bary",["OFP",-1],[null,["ODF",-1],null],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OF"] |
| 181 | ["bary",["OPQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OQ"] |
| 182 | ["bary",["CDP",1],[["OCD",1],null,["CDF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CD"] |
| 183 | ["bary",["CPQ",1],[["OCQ",1],["CDQ",1],["CFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CQ"] |
| 184 | ["bary",["DPQ",-1],[["ODQ",-1],null,["DFQ",-1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","DQ"] |
| 185 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OF"] |
| 186 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","CQ"] |
| 187 | ["bary",["OHR",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OH"] |
| 188 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 189 | ["bary",["OZR",-1],[null,["ODZ",1],["OZQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OZ"] |
| 190 | ["bary",["OPR",-1],[null,["ODP",-1],["OPQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OP"] |
| 191 | ["bary",["HDR",-1],[["OHD",-1],null,["HDQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","HD"] |
| 192 | ["bary",["DFR",1],[["ODF",1],null,["DFQ",1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","DF"] |
| 193 | ["bary",["OZQ",1],[null,["ODQ",1],["OQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","OQ"] |
| 194 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],["CQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","CQ"] |
| 195 | ["bary",["OYQ",1],[null,["OFQ",1],["OZQ",1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","OQ"] |
| 196 | ["bary",["OYR",1],[null,["OFR",1],["OZR",1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","OR"] |
| 197 | ["bary",["CYQ",1],[["OCQ",1],["CFQ",1],["CZQ",1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","CQ"] |
| 198 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],["DZQ",-1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DQ"] |
| 199 | ["bary",["DYR",-1],[["ODR",-1],["DFR",-1],["DZR",-1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DR"] |
| 200 | ["bary",["CDY",1],[["OCD",1],["CDF",1],["CDP",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","CD"] |
| 201 | ["bary",["CYZ",1],[["OCZ",1],["CFZ",1],["CZP",1]],"OFP",["FYP","OYP","OFY"]] | ["bary","OFP","Y","CZ"] |
| 202 | ["bary",["OHY",-1],[null,["OHF",-1],["OHQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OH"] |
| 203 | ["bary",["OCY",1],[null,["OCF",1],["OCQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OC"] |
| 204 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 205 | ["bary",["HYQ",-1],[["OHQ",-1],["HFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HQ"] |
| 206 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 207 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DQ"] |
| 208 | ["bary",["FYQ",-1],[["OFQ",-1],null,null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","FQ"] |
| 209 | ["bary",["OHY",-1],[null,["OHF",-1],["OHR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","OH"] |
| 210 | ["bary",["OYR",1],[null,["OFR",1],null],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","OR"] |
| 211 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","HD"] |
| 212 | ["bary",["DFY",1],[["ODF",1],null,["DFR",1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","DF"] |
| 213 | ["bary",["OCZ",1],[null,["OCF",1],["OCR",1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","OC"] |
| 214 | ["bary",["ODZ",-1],[null,["ODF",1],["ODR",-1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","OD"] |
| 215 | ["bary",["OFZ",-1],[null,null,["OFR",-1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","OF"] |
| 216 | ["bary",["OZQ",1],[null,["OFQ",1],["OQR",1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","OQ"] |
| 217 | ["bary",["CZQ",1],[["OCQ",1],["CFQ",1],["CQR",1]],"OFR",["FZR","OZR","OFZ"]] | ["bary","OFR","Z","CQ"] |
| 218 | ["bary",["OZP",-1],[null,["OYP",1],["OPQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","OP"] |
| 219 | ["bary",["HZQ",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HQ"] |
| 220 | ["bary",["CFZ",-1],[["OCF",1],["CFY",1],["CFQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","CF"] |
| 221 | ["bary",["FYZ",1],[["OFY",-1],null,["FYQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","FY"] |
| 222 | ["bary",["FZQ",-1],[["OFQ",-1],["FYQ",-1],null],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","FQ"] |
| 223 | ["bary",["OHP",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OH"] |
| 224 | ["bary",["OFP",-1],[["OHF",1],["OCF",-1],["ODF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OF"] |
| 225 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 226 | ["bary",["DFP",1],[["HDF",1],null,["DFY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DF"] |
| 227 | ["bary",["ZPQ",1],[["HZQ",1],["DZQ",1],["YZQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZQ"] |
| 228 | ["bary",["ZPR",1],[["HZR",1],["DZR",1],["YZR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZR"] |
| 229 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 230 | ["bary",["DFP",1],[["CDF",1],null,null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DF"] |
| 231 | ["bary",["DPQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DQ"] |
| 232 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 233 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 234 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 235 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 236 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DPQ",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DQ"] |
| 237 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 238 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 239 | ["bary",["HFR",-1],[["HCF",-1],["HDF",-1],["HFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HF"] |
| 240 | ["bary",["CPR",-1],[null,["CDP",-1],["CPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CP"] |
| 241 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 242 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 243 | ["bary",["DFZ",1],[["CDF",1],["DFY",1],["DFQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DF"] |
| 244 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 245 | ["bary",["OYZ",-1],[["OCY",-1],["OYP",-1],["OYQ",-1]],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","OY"] |
| 246 | ["bary",["OHZ",-1],[["OHC",-1],["OHP",-1],["OHR",-1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","OH"] |
| 247 | ["bary",["OYZ",-1],[["OCY",-1],["OYP",-1],["OYR",-1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","OY"] |
| 248 | ["bary",["HFZ",-1],[["HCF",-1],["HFP",-1],["HFR",-1]],"CPR",["ZPR","CZR","CZP"]] | ["bary","CPR","Z","HF"] |
| 249 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],["YZQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZQ"] |
| 250 | ["bary",["ZPR",1],[["DZR",1],["FZR",1],["YZR",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZR"] |
| 251 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 252 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 253 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 254 | ["bary",["OYR",-1],[["ODY",-1],null,["OYQ",-1]],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OY"] |
| 255 | ["bary",["OPR",-1],[["ODP",-1],["OYP",1],["OPQ",-1]],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OP"] |
| 256 | ["bary",["OCR",1],[["OCD",1],["OCZ",1],["OCQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OC"] |
| 257 | ["bary",["ODR",-1],[null,["ODZ",-1],["ODQ",-1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OD"] |
| 258 | ["bary",["OQR",1],[["ODQ",1],["OZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OQ"] |
| 259 | ["bary",["CDR",-1],[null,["CDZ",1],["CDQ",-1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","CD"] |
| 260 | ["bary",["CQR",1],[["CDQ",1],["CZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","CQ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s12 | 2 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s20 | 4 | sub | DFY | hi | 374729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s23 | 5 | sub | ODP | hi | 281729/500000 | hi_ODF,lo_DFP,lo_OFP |
| s25 | 6 | sub | DZQ | hi | 35909/62500 | hi_ODQ,lo_ODZ,lo_OZQ |
| s28 | 7 | sub | ODR | hi | 35909/62500 | hi_ODQ,lo_DQR,lo_OQR |
| s57 | 17 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s58 | 18 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s83 | 28 | sumlo | OHY | lo | 12533/125000 | lo_OFY,lo_OHR,lo_OHF,lo_OYR,hi_OFR |
| s89 | 33 | sumlo | OZQ | lo | 127389/1000000 | lo_ODQ,lo_OZR,lo_ODZ,lo_OQR,s28 |
| s96 | 40 | sumlo | HCP | lo | 101707/1000000 | lo_CDP,lo_HCF,lo_CFP,lo_HCD,hi_CDF |
| s98 | 41 | sumlo | HCZ | lo | 105159/1000000 | lo_CDZ,s96,lo_CZP,lo_HCD,s58 |
| s100 | 42 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s58 |
| s103 | 43 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s119 | 49 | sumlo | HCF | lo | 48829/500000 | lo_CDF,lo_HFY,lo_CFY,lo_HDF,s20 |
| s122 | 54 | sumlo | OCY | lo | 98449/1000000 | lo_CYR,s83,lo_HCY,lo_OYR,s12 |
| s123 | 73 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s125 | 76 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s126 | 77 | sumhi | CYQ | hi | 120911/200000 | hi_CDQ,hi_OYQ,hi_DYQ,hi_OCQ,lo_ODQ |
| s131 | 80 | sumlo | OQR | lo | 33239/250000 | lo_DQR,s89,lo_ODQ,lo_ZQR,s25 |
| s149 | 95 | balance_lo | CFY | lo | 54603/500000 | s119,lo_OYR,lo_HFY,lo_OCR,lo_HCY,lo_OFR,hi_OHR |
| s158 | 113 | balance_lo | HYQ | lo | 205683/1000000 | lo_CDQ,s83,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s166 | 120 | balance_lo | FYQ | lo | 55423/250000 | lo_CDQ,lo_OFY,lo_ODQ,s149,lo_OCQ,lo_DFY,hi_OCD |
| s169 | 121 | balance_lo | HCP | lo | 28467/200000 | lo_HCD,lo_FZP,lo_CDP,lo_HFZ,lo_HDP,s100,s57 |
| s174 | 123 | balance_lo | YPQ | lo | 38327/250000 | s103,lo_OYP,lo_OFQ,lo_DYP,lo_ODQ,lo_FYP,hi_ODF |
| s176 | 124 | balance_lo | HZR | lo | 158071/1000000 | lo_OHZ,lo_YQR,lo_OZR,s158,lo_OHR,lo_YZQ,hi_OYQ |
| s177 | 126 | balance_lo | FZR | lo | 80109/500000 | lo_OFZ,lo_YQR,lo_OZR,s166,lo_OFR,lo_YZQ,hi_OYQ |
| s178 | 127 | balance_lo | DZP | lo | 54711/500000 | lo_CDZ,s174,lo_CZP,lo_DYQ,lo_CDP,lo_YZQ,s126 |
| s183 | 130 | balance_lo | HZP | lo | 3771/40000 | lo_HCD,lo_FZP,lo_HDF,lo_CZP,s119,s178,hi_CDF |
| s184 | 132 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s185 | 133 | balance_lo | FZQ | lo | 32269/200000 | lo_CDF,lo_YZQ,lo_DFY,lo_CZQ,s149,lo_DZQ,hi_CDY |
| s194 | 138 | linear | OHP | lo | 35783/125000 | lo_HYP,s83,lo_OYP |
| s202 | 141 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s208 | 145 | linear | DFQ | lo | 20081/50000 | lo_ODF,lo_ODQ,hi_OFQ |
| s211 | 147 | linear | ODR | hi | 133647/250000 | lo_DQR,hi_ODQ,s131 |
| s220 | 151 | linear | OYQ | lo | 313389/1000000 | lo_OYZ,s89,lo_YZQ |
| s240 | 154 | linear | CFQ | lo | 358353/1000000 | s100,lo_CZQ,s185 |
| s242 | 155 | linear | CFR | lo | 178613/500000 | s100,lo_CZR,s177 |
| s250 | 158 | quad | CDP | lo | 81/250 | hi_CDQ |
| s251 | 159 | support_z | ODP | lo | 141589/1000000 | s250,hi_OCD |
| s252 | 160 | support_z | CFP | lo | 52909/500000 | lo_OFP,hi_OCF |
| s254 | 162 | linear | OHC | lo | 367/1000 | s202 |
| s255 | 163 | linear | HCD | hi | 907/1000 | lo_HDF |
| s263 | 165 | bary_hi | FYZ | lo | 121979/1000000 | hi_OHC,lo_HCY,s122,s83,lo_OFZ,lo_HFZ,s100 |
| s264 | 166 | bary_hi | FYP | lo | 15283/125000 | hi_OHC,lo_HCY,s122,s83,lo_OFP,lo_HFP,s252 |
| s265 | 167 | bary_hi | FYQ | lo | 111459/500000 | hi_OHC,lo_HCY,s122,s83,lo_OFQ,lo_HFQ,s240 |
| s266 | 168 | bary_hi | FYR | lo | 11137/50000 | hi_OHC,lo_HCY,s122,s83,lo_OFR,lo_HFR,s242 |
| s279 | 169 | bary_lo | OHP | hi | 765411/1000000 | hi_OHD,lo_HDP,s251,s194,hi_OHD |
| s308 | 173 | bary_lo | CYZ | lo | 94477/1000000 | s279,lo_HYP,lo_OYP,s83,lo_OCZ,s98,lo_CZP |
| s310 | 174 | bary_lo | OCY | lo | 62169/500000 | hi_OHQ,s158,s220,s83,s254,lo_OCQ |
| s349 | 177 | bary_hi | OYQ | hi | 329331/500000 | hi_OCF,s149,lo_OFY,s310,lo_OCQ,hi_OFQ |
| s354 | 178 | bary_hi | CYQ | hi | 113497/200000 | hi_OCF,s149,lo_OFY,s310,hi_OCQ,s125 |
| s370 | 180 | bary_lo | OFP | hi | 700869/1000000 | hi_ODF,lo_DFP,lo_OFP,s251,hi_ODF |
| s372 | 181 | bary_hi | OPQ | hi | 410481/500000 | hi_ODF,lo_DFP,lo_OFP,s251,hi_ODQ,hi_OFQ |
| s377 | 182 | bary_hi | CDP | hi | 593157/1000000 | hi_ODF,lo_DFP,lo_OFP,s251,hi_OCD,hi_CDF |
| s379 | 183 | bary_hi | CPQ | hi | 308501/500000 | hi_ODF,lo_DFP,lo_OFP,s251,hi_OCQ,hi_CDQ,s125 |
| s382 | 184 | bary_lo | DPQ | hi | 131297/250000 | hi_ODF,lo_DFP,lo_OFP,s251,hi_ODQ,hi_DFQ |
| s393 | 185 | bary_lo | OFZ | hi | 154001/250000 | hi_ODQ,lo_DZQ,s89,lo_ODZ,hi_ODF,hi_OFQ |
| s404 | 187 | bary_lo | OHR | hi | 877719/1000000 | hi_ODQ,lo_DQR,s131,lo_ODR,hi_OHD,hi_OHQ |
| s407 | 188 | bary_lo | OFR | hi | 856863/1000000 | hi_ODQ,lo_DQR,s131,lo_ODR,hi_ODF,hi_OFQ |
| s411 | 191 | bary_lo | HDR | hi | 185657/250000 | hi_ODQ,lo_DQR,s131,lo_ODR,hi_OHD,hi_HDQ |
| s419 | 192 | bary_hi | DFR | hi | 687099/1000000 | hi_ODQ,lo_DQR,s131,lo_ODR,hi_ODF,hi_DFQ |
| s425 | 193 | bary_lo | OZQ | lo | 71931/500000 | s211,lo_DZR,lo_OZR,lo_ODZ,lo_ODQ,s131 |
| s428 | 194 | bary_lo | CZQ | lo | 125357/1000000 | s211,lo_DZR,lo_OZR,lo_ODZ,lo_OCQ,lo_CDQ,lo_CQR |
| s440 | 198 | bary_hi | DYQ | lo | 379689/1000000 | s393,s263,lo_OYZ,lo_OFY,lo_ODQ,s208,lo_DZQ |
| s443 | 200 | bary_lo | CDY | lo | 380597/1000000 | s370,s264,lo_OYP,lo_OFY,s202,lo_CDF,s250 |
| s453 | 207 | bary_lo | DYQ | hi | 20967/31250 | hi_OFQ,s265,s220,lo_OFY,hi_ODQ,hi_DFQ |
| s459 | 209 | bary_hi | OHY | lo | 26401/250000 | s407,s266,lo_OYR,lo_OFY,lo_OHF,lo_OHR |
| s464 | 210 | bary_hi | OYR | hi | 541123/1000000 | s407,s266,lo_OYR,lo_OFY,s407 |
| s466 | 211 | bary_lo | HDY | hi | 616179/1000000 | s407,s266,lo_OYR,lo_OFY,hi_OHD,lo_HDF,s411 |
| s473 | 212 | bary_hi | DFY | hi | 75489/125000 | s407,s266,lo_OYR,lo_OFY,hi_ODF,s419 |
| s507 | 223 | bary_lo | OHP | hi | 605353/1000000 | s255,s250,lo_HDP,s169,hi_OHC,hi_OHD |
| s518 | 225 | bary_lo | DFP | lo | 104381/1000000 | s255,s250,lo_HDP,s169,lo_HDF,lo_CDF |
| s534 | 228 | bary_lo | ZPR | lo | 102821/1000000 | s466,lo_DYP,lo_HYP,lo_HDP,s176,lo_DZR,lo_YZR |
| s546 | 229 | bary_lo | HYP | lo | 57561/500000 | hi_CDF,s518,s252,s250,lo_HCY,lo_HDY,lo_HFY |
| s547 | 230 | bary_hi | DFP | hi | 114971/250000 | hi_CDF,s518,s252,s250,hi_CDF |
| s548 | 231 | bary_hi | DPQ | lo | 178989/1000000 | hi_CDF,s518,s252,s250,lo_CDQ,s208 |
| s560 | 232 | bary_lo | HCZ | lo | 131127/1000000 | s377,s178,lo_CZP,lo_CDZ,lo_HCD,s169 |
| s562 | 233 | bary_lo | HYZ | lo | 125631/1000000 | s377,s178,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,s546 |
| s564 | 234 | bary_hi | CFZ | lo | 125401/1000000 | s377,s178,lo_CZP,lo_CDZ,lo_CDF,s252 |
| s565 | 235 | bary_hi | DFZ | hi | 682817/1000000 | s377,s178,lo_CZP,lo_CDZ,hi_CDF,s547 |
| s567 | 236 | bary_lo | DZQ | hi | 423441/1000000 | s377,s178,lo_CZP,lo_CDZ,hi_CDQ,s382 |
| s569 | 237 | bary_lo | FYZ | lo | 1103/8000 | s377,s178,lo_CZP,lo_CDZ,s149,lo_DFY,s264 |
| s576 | 238 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s255,s123 |
| s580 | 239 | bary_hi | HFR | lo | 94031/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s119,lo_HDF,lo_HFQ |
| s585 | 240 | bary_lo | CPR | hi | 475101/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s377,s379 |
| s586 | 241 | bary_lo | DFR | lo | 242601/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s208 |
| s588 | 242 | bary_lo | DYR | lo | 168349/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s443,s440 |
| s601 | 244 | bary_lo | DZP | lo | 36293/250000 | s354,lo_YZQ,s428,s308,s250,lo_DYP,s548 |
| s605 | 246 | bary_hi | OHZ | lo | 7671/20000 | s585,s534,lo_CZR,lo_CZP,s254,s194,lo_OHR |
| s607 | 247 | bary_hi | OYZ | lo | 136191/1000000 | s585,s534,lo_CZR,lo_CZP,s310,lo_OYP,lo_OYR |
| s608 | 248 | bary_hi | HFZ | lo | 94209/1000000 | s585,s534,lo_CZR,lo_CZP,s119,lo_HFP,s580 |
| s621 | 250 | bary_lo | ZPR | lo | 103351/1000000 | s473,s264,lo_DYP,s518,lo_DZR,s177,lo_YZR |
| s622 | 251 | bary_lo | HCP | lo | 45999/250000 | s565,lo_FZP,s601,s518,lo_HCD,s119,s560 |
| s623 | 252 | bary_lo | HYP | lo | 123321/1000000 | s565,lo_FZP,s601,s518,lo_HDY,lo_HFY,s562 |
| s624 | 253 | bary_hi | CFP | lo | 28423/250000 | s565,lo_FZP,s601,s518,lo_CDF,s564 |
| s630 | 255 | bary_lo | OPR | hi | 131717/200000 | s453,lo_YQR,lo_DQR,s588,s23,lo_OYP,s372 |
| s638 | 256 | bary_lo | OCR | lo | 76589/500000 | s567,lo_ZQR,lo_DQR,lo_DZR,s202,lo_OCZ,lo_OCQ |
| s641 | 258 | bary_lo | OQR | lo | 92009/500000 | s567,lo_ZQR,lo_DQR,lo_DZR,lo_ODQ,s425 |
| s658 | 7 | sub | ODR | hi | 241763/500000 | hi_ODQ,lo_DQR,s641 |
| s660 | 8 | sum | OFZ | lo | 183533/500000 | s569,lo_OFY,s607 |
| s662 | 9 | sum | OFP | lo | 38533/125000 | s264,lo_OFY,lo_OYP |
| s667 | 13 | sum | OYR | lo | 322191/1000000 | s607,lo_OZR,lo_YZR |
| s668 | 14 | sub | HDZ | hi | 682873/1000000 | s255,lo_CDZ,s560 |
| s669 | 15 | sum | HCQ | lo | 205899/500000 | s428,s560,s184 |
| s671 | 16 | sum | HDY | lo | 309321/1000000 | lo_DYP,lo_HDP,s623 |
| s672 | 17 | sub | DFZ | hi | 671301/1000000 | hi_CDF,lo_CDZ,s564 |
| s673 | 20 | sum | CDP | lo | 82793/250000 | lo_CDZ,lo_CZP,s601 |
| s676 | 23 | sum | CYQ | lo | 156417/500000 | s308,s428,lo_YZQ |
| s680 | 24 | sum | DFY | lo | 63929/200000 | s518,lo_DYP,s264 |
| s682 | 25 | sumlo | OCY | lo | 153147/1000000 | s638,s459,s254,s667,s404 |
| s683 | 26 | sumlo | OCZ | lo | 52911/500000 | s638,s605,s254,lo_OZR,s404 |
| s684 | 28 | sumlo | OHY | lo | 27573/250000 | lo_OFY,lo_OHR,lo_OHF,s667,s407 |
| s687 | 33 | sumlo | OZQ | lo | 1351/8000 | lo_ODQ,lo_OZR,lo_ODZ,s641,s658 |
| s691 | 36 | sumlo | HCF | lo | 59391/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s466 |
| s695 | 39 | sumlo | CFY | lo | 121003/1000000 | lo_CDF,lo_HCY,s443,s691,s255 |
| s697 | 42 | sumlo | CFZ | lo | 31659/250000 | lo_CDF,lo_CZP,lo_CDZ,s624,s377 |
| s699 | 44 | sumlo | DFP | lo | 26279/250000 | lo_CDF,lo_HDP,s673,lo_HDF,s255 |
| s703 | 45 | sumlo | HFQ | lo | 54461/500000 | s208,lo_OHF,lo_HDF,lo_OFQ,hi_ODF |
| s705 | 49 | sumlo | HCF | lo | 125507/1000000 | lo_CDF,lo_HFY,s695,lo_HDF,s473 |
| s707 | 52 | sumlo | CFP | lo | 57987/500000 | lo_CDF,lo_FZP,s697,s699,s672 |
| s710 | 80 | sumlo | OQR | lo | 23689/125000 | lo_DQR,s687,lo_ODQ,lo_ZQR,s567 |
| s713 | 89 | balance_lo | HYQ | lo | 25971/125000 | lo_HCY,lo_OFQ,s676,lo_OHF,s669,lo_OFY,hi_OCF |
| s715 | 95 | balance_lo | CFY | lo | 67917/500000 | s705,s667,lo_HFY,s638,lo_HCY,lo_OFR,s404 |
| s716 | 96 | balance_lo | HCZ | lo | 14591/100000 | lo_CZP,lo_OHR,s183,s638,s622,lo_OZR,s630 |
| s717 | 97 | balance_lo | FYQ | lo | 112171/500000 | lo_HFY,s710,s713,lo_OFR,s703,s667,s404 |
| s718 | 98 | balance_lo | HZQ | lo | 9949/50000 | s562,s710,lo_YZQ,lo_OHR,s713,lo_OZR,s464 |
| s719 | 100 | balance_lo | CFZ | lo | 17001/125000 | lo_FZP,s638,lo_CZP,lo_OFR,s707,lo_OZR,s630 |
| s720 | 102 | balance_lo | FZQ | lo | 206117/1000000 | s569,s710,lo_YZQ,lo_OFR,s717,lo_OZR,s464 |
| s724 | 109 | balance_lo | CFP | lo | 125703/1000000 | s719,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s668 |
| s725 | 113 | balance_lo | HYQ | lo | 215437/1000000 | lo_CDQ,s684,lo_ODQ,lo_HCY,lo_OCQ,s671,hi_OCD |
| s729 | 120 | balance_lo | FYQ | lo | 130171/500000 | lo_CDQ,lo_OFY,lo_ODQ,s715,lo_OCQ,s680,hi_OCD |
| s737 | 123 | balance_lo | YPQ | lo | 49907/250000 | s208,lo_OYP,lo_OFQ,lo_DYP,lo_ODQ,s264,hi_ODF |
| s739 | 124 | balance_lo | HZR | lo | 182563/1000000 | s605,lo_YQR,lo_OZR,s725,lo_OHR,lo_YZQ,s349 |
| s740 | 125 | balance_lo | DZR | lo | 53067/500000 | lo_ODZ,lo_YQR,lo_OZR,s440,lo_ODR,lo_YZQ,s349 |
| s741 | 126 | balance_lo | FZR | lo | 11661/62500 | s660,lo_YQR,lo_OZR,s729,lo_OFR,lo_YZQ,s349 |
| s743 | 127 | balance_lo | DZP | lo | 149211/1000000 | lo_CDZ,s737,lo_CZP,s440,s673,lo_YZQ,s354 |
| s745 | 128 | balance_lo | OZP | lo | 85297/500000 | s254,s621,s638,s183,lo_OHR,lo_CZP,s576 |
| s747 | 129 | balance_lo | HZP | lo | 105261/1000000 | lo_OHF,s621,s580,s745,lo_OHR,lo_FZP,s407 |
| s750 | 138 | linear | OHP | lo | 326613/1000000 | s623,s684,lo_OYP |
| s757 | 140 | linear | OHZ | hi | 150539/250000 | s739,s404,lo_OZR |
| s758 | 142 | linear | OCF | lo | 381981/1000000 | s715,s682,lo_OFY |
| s761 | 144 | linear | ODP | hi | 261039/500000 | s699,hi_ODF,s662 |
| s763 | 146 | linear | ODR | lo | 146067/500000 | s740,lo_ODZ,lo_OZR |
| s765 | 147 | linear | ODR | hi | 29877/62500 | lo_DQR,hi_ODQ,s710 |
| s771 | 149 | linear | OFQ | lo | 371029/500000 | s720,s660,s687 |
| s773 | 150 | linear | OFZ | hi | 577287/1000000 | s741,s407,lo_OZR |
| s774 | 151 | linear | OYQ | lo | 199033/500000 | s607,s687,lo_YZQ |
| s787 | 152 | linear | CDP | lo | 335211/1000000 | lo_CDZ,lo_CZP,s743 |
| s788 | 154 | linear | CFQ | lo | 233741/500000 | s719,s428,s720 |
| s791 | 156 | linear | DFY | lo | 16019/50000 | s699,lo_DYP,s264 |
| s792 | 157 | linear | DZQ | lo | 146067/500000 | lo_DQR,s740,lo_ZQR |
| s794 | 159 | support_z | ODP | lo | 18311/125000 | s787,hi_OCD |
| s795 | 161 | support_z | ODY | lo | 42909/250000 | s667,s765 |
| s799 | 164 | linear | CDF | hi | 874493/1000000 | s705 |
| s802 | 165 | bary_hi | FYZ | lo | 14143/100000 | hi_OHC,lo_HCY,s682,s684,s660,s608,s719 |
| s804 | 167 | bary_hi | FYQ | lo | 131963/500000 | hi_OHC,lo_HCY,s682,s684,s771,s703,s788 |
| s821 | 171 | bary_hi | FYP | lo | 137911/1000000 | s757,s562,s607,s684,s662,lo_HFP,lo_FZP |
| s825 | 173 | bary_lo | CYZ | lo | 5187/50000 | s507,s623,lo_OYP,s684,s683,s716,lo_CZP |
| s827 | 174 | bary_lo | OCY | lo | 156347/1000000 | hi_OHQ,s725,s774,s684,s254,lo_OCQ |
| s846 | 177 | bary_hi | OYQ | hi | 617299/1000000 | hi_OCF,s715,lo_OFY,s827,lo_OCQ,hi_OFQ |
| s849 | 178 | bary_hi | CYQ | hi | 271169/500000 | hi_OCF,s715,lo_OFY,s827,hi_OCQ,s125 |
| s854 | 179 | bary_hi | ODY | hi | 261039/500000 | hi_ODF,s791,lo_OFY,s795,hi_ODF |
| s861 | 181 | bary_hi | OPQ | hi | 400561/500000 | hi_ODF,s699,s662,s794,hi_ODQ,hi_OFQ |
| s863 | 182 | bary_hi | CDP | hi | 138193/250000 | hi_ODF,s699,s662,s794,hi_OCD,s799 |
| s865 | 183 | bary_hi | CPQ | hi | 119559/200000 | hi_ODF,s699,s662,s794,hi_OCQ,hi_CDQ,s125 |
| s866 | 184 | bary_lo | DPQ | hi | 501101/1000000 | hi_ODF,s699,s662,s794,hi_ODQ,hi_DFQ |
| s874 | 188 | bary_lo | OFR | hi | 213269/250000 | hi_ODQ,lo_DQR,s710,s763,hi_ODF,hi_OFQ |
| s876 | 190 | bary_lo | OPR | hi | 158407/250000 | hi_ODQ,lo_DQR,s710,s763,s761,s861 |
| s883 | 193 | bary_lo | OZQ | lo | 34377/200000 | s765,s740,lo_OZR,lo_ODZ,lo_ODQ,s710 |
| s889 | 198 | bary_hi | DYQ | lo | 13013/31250 | s773,s802,s607,lo_OFY,lo_ODQ,s208,s792 |
| s890 | 199 | bary_hi | DYR | lo | 22987/125000 | s773,s802,s607,lo_OFY,s763,s586,s740 |
| s895 | 203 | bary_lo | OCY | lo | 162921/1000000 | hi_OFQ,s804,s774,lo_OFY,s758,lo_OCQ |
| s897 | 204 | bary_lo | HDY | hi | 537689/1000000 | hi_OFQ,s804,s774,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s901 | 206 | bary_hi | DFY | hi | 536141/1000000 | hi_OFQ,s804,s774,lo_OFY,hi_ODF,hi_DFQ |
| s903 | 207 | bary_lo | DYQ | hi | 66611/100000 | hi_OFQ,s804,s774,lo_OFY,hi_ODQ,hi_DFQ |
| s906 | 208 | bary_lo | FYQ | hi | 247657/500000 | hi_OFQ,s804,s774,lo_OFY,hi_OFQ |
| s917 | 213 | bary_lo | OCZ | lo | 3361/31250 | s874,s741,lo_OZR,s660,s758,s638 |
| s919 | 215 | bary_lo | OFZ | hi | 1147/2000 | s874,s741,lo_OZR,s660,s874 |
| s924 | 217 | bary_lo | CZQ | lo | 2091/15625 | s874,s741,lo_OZR,s660,lo_OCQ,s788,lo_CQR |
| s946 | 224 | bary_lo | OFP | hi | 524551/1000000 | s255,s787,lo_HDP,s622,lo_OHF,hi_OCF,hi_ODF |
| s952 | 225 | bary_lo | DFP | lo | 105531/1000000 | s255,s787,lo_HDP,s622,lo_HDF,lo_CDF |
| s960 | 226 | bary_hi | DFP | hi | 37337/100000 | s897,lo_DYP,s623,lo_HDP,hi_HDF,s901 |
| s961 | 227 | bary_lo | ZPQ | lo | 78501/500000 | s897,lo_DYP,s623,lo_HDP,s718,s792,lo_YZQ |
| s962 | 228 | bary_lo | ZPR | lo | 111503/1000000 | s897,lo_DYP,s623,lo_HDP,s739,s740,lo_YZR |
| s969 | 229 | bary_lo | HYP | lo | 62047/500000 | s799,s952,s724,s787,lo_HCY,s671,lo_HFY |
| s970 | 231 | bary_hi | DPQ | lo | 187617/1000000 | s799,s952,s724,s787,lo_CDQ,s208 |
| s977 | 232 | bary_lo | HCZ | lo | 36929/250000 | s863,s743,lo_CZP,lo_CDZ,lo_HCD,s622 |
| s979 | 233 | bary_lo | HYZ | lo | 1077/8000 | s863,s743,lo_CZP,lo_CDZ,lo_HCY,s671,s969 |
| s982 | 234 | bary_hi | CFZ | lo | 137909/1000000 | s863,s743,lo_CZP,lo_CDZ,lo_CDF,s724 |
| s983 | 235 | bary_hi | DFZ | hi | 40191/62500 | s863,s743,lo_CZP,lo_CDZ,s799,s960 |
| s985 | 236 | bary_lo | DZQ | hi | 394903/1000000 | s863,s743,lo_CZP,lo_CDZ,hi_CDQ,s866 |
| s986 | 237 | bary_lo | FYZ | lo | 2613/15625 | s863,s743,lo_CZP,lo_CDZ,s715,s791,s821 |
| s994 | 240 | bary_lo | CPR | hi | 455457/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s863,s865 |
| s1000 | 244 | bary_lo | DZP | lo | 19079/125000 | s849,lo_YZQ,s924,s825,s787,lo_DYP,s970 |
| s1003 | 245 | bary_hi | OYZ | lo | 158823/1000000 | s865,s961,s924,lo_CZP,s895,lo_OYP,s774 |
| s1006 | 246 | bary_hi | OHZ | lo | 411517/1000000 | s994,s962,lo_CZR,lo_CZP,s254,s750,lo_OHR |
| s1016 | 251 | bary_lo | HCP | lo | 26421/125000 | s983,lo_FZP,s1000,s952,lo_HCD,s705,s977 |
| s1017 | 252 | bary_lo | HYP | lo | 26223/200000 | s983,lo_FZP,s1000,s952,s671,lo_HFY,s979 |
| s1019 | 254 | bary_lo | OYR | hi | 25891/50000 | s903,lo_YQR,lo_DQR,s890,s854,s846 |
| s1021 | 256 | bary_lo | OCR | lo | 80477/500000 | s985,lo_ZQR,lo_DQR,s740,s202,s917,lo_OCQ |
| s1024 | 258 | bary_lo | OQR | lo | 50979/250000 | s985,lo_ZQR,lo_DQR,s740,lo_ODQ,s883 |
| s1029 | 260 | bary_lo | CQR | lo | 4861/50000 | s985,lo_ZQR,lo_DQR,s740,lo_CDQ,s924 |
| s1037 | 1 | sum | OHQ | lo | 391191/500000 | s718,s1006,s883 |
| s1040 | 3 | sum | OCF | lo | 78351/200000 | s715,s895,lo_OFY |
| s1042 | 8 | sum | OFZ | lo | 83811/200000 | s986,lo_OFY,s1003 |
| s1045 | 9 | sum | OFP | lo | 323911/1000000 | s821,lo_OFY,lo_OYP |
| s1047 | 10 | sum | OFQ | lo | 797057/1000000 | s720,s1042,s883 |
| s1048 | 10 | sub | FZQ | hi | 4943/12500 | hi_OFQ,s1042,s883 |
| s1050 | 11 | sum | OFR | lo | 698631/1000000 | s741,s1042,lo_OZR |
| s1052 | 12 | sum | OYQ | lo | 105927/250000 | s1003,s883,lo_YZQ |
| s1053 | 13 | sum | OYR | lo | 344823/1000000 | s1003,lo_OZR,lo_YZR |
| s1055 | 15 | sum | HCQ | lo | 12013/25000 | s924,s977,s718 |
| s1057 | 16 | sum | HDY | lo | 63423/200000 | lo_DYP,lo_HDP,s1017 |
| s1059 | 20 | sum | CDP | lo | 42329/125000 | lo_CDZ,lo_CZP,s1000 |
| s1060 | 21 | sum | CDQ | lo | 14161/50000 | lo_CDR,s1029,lo_DQR |
| s1061 | 22 | sum | CFQ | lo | 9557/20000 | s982,s924,s720 |
| s1063 | 23 | sum | CYQ | lo | 82641/250000 | s825,s924,lo_YZQ |
| s1067 | 24 | sum | DFY | lo | 168221/500000 | s952,lo_DYP,s821 |
| s1075 | 34 | sumlo | OZQ | lo | 93531/500000 | s1047,lo_OZR,s1042,s1024,s874 |
| s1079 | 44 | sumlo | DFP | lo | 105881/1000000 | lo_CDF,lo_HDP,s1059,lo_HDF,s255 |
| s1084 | 45 | sumlo | HFQ | lo | 1862/15625 | s208,lo_OHF,lo_HDF,s1047,hi_ODF |
| s1085 | 46 | sumlo | CFP | lo | 70709/500000 | s982,s1045,lo_FZP,s1040,s919 |
| s1086 | 47 | sumlo | FYQ | lo | 53169/200000 | s986,s1047,s720,lo_OFY,s919 |
| s1087 | 49 | sumlo | HCF | lo | 17993/125000 | lo_CDF,lo_HFY,s715,lo_HDF,s901 |
| s1089 | 55 | sumlo | OHY | lo | 24001/200000 | lo_HFY,s1052,s725,lo_OFY,s906 |
| s1095 | 62 | sumlo | OYZ | lo | 88831/500000 | s986,s1075,s1042,lo_YZQ,s1048 |
| s1096 | 74 | sumlo | HDQ | lo | 402403/1000000 | s208,s1037,s1084,lo_ODQ,hi_OFQ |
| s1097 | 80 | sumlo | OQR | lo | 20749/100000 | lo_DQR,s1075,lo_ODQ,lo_ZQR,s985 |
| s1098 | 85 | sumlo | CQR | lo | 49107/500000 | s1060,lo_ZQR,s924,lo_DQR,s985 |
| s1099 | 89 | balance_lo | HYQ | lo | 235523/1000000 | lo_HCY,s1047,s1063,lo_OHF,s1055,lo_OFY,hi_OCF |
| s1105 | 95 | balance_lo | CFY | lo | 36907/250000 | s1087,s1053,lo_HFY,s1021,lo_HCY,s1050,s404 |
| s1106 | 96 | balance_lo | HCZ | lo | 79811/500000 | lo_CZP,lo_OHR,s747,s1021,s1016,lo_OZR,s876 |
| s1107 | 98 | balance_lo | HZQ | lo | 44177/200000 | s979,s1097,lo_YZQ,lo_OHR,s1099,lo_OZR,s1019 |
| s1108 | 100 | balance_lo | CFZ | lo | 146921/1000000 | lo_FZP,s1021,lo_CZP,s1050,s1085,lo_OZR,s876 |
| s1110 | 102 | balance_lo | FZQ | lo | 60057/250000 | s986,s1097,lo_YZQ,s1050,s1086,lo_OZR,s1019 |
| s1113 | 105 | balance_lo | FYQ | lo | 28551/100000 | s1067,s1055,s889,s1087,s208,lo_HCY,s255 |
| s1120 | 122 | balance_lo | DYZ | lo | 31929/125000 | lo_ODF,lo_YZQ,s208,s1095,lo_ODQ,s986,hi_OFQ |
| s1123 | 123 | balance_lo | YPQ | lo | 110741/500000 | s208,lo_OYP,s1047,lo_DYP,lo_ODQ,s821,hi_ODF |
| s1125 | 124 | balance_lo | HZR | lo | 50509/250000 | s1006,lo_YQR,lo_OZR,s1099,lo_OHR,lo_YZQ,s846 |
| s1126 | 125 | balance_lo | DZR | lo | 60379/500000 | lo_ODZ,lo_YQR,lo_OZR,s889,s763,lo_YZQ,s846 |
| s1127 | 126 | balance_lo | FZR | lo | 1057/5000 | s1042,lo_YQR,lo_OZR,s1113,s1050,lo_YZQ,s846 |
| s1130 | 127 | balance_lo | DZP | lo | 33491/200000 | lo_CDZ,s1123,lo_CZP,s889,s1059,lo_YZQ,s849 |
| s1136 | 131 | balance_lo | OCY | lo | 193441/1000000 | s1040,lo_YZQ,s1105,s1075,lo_OFY,s924,s1048 |
| s1138 | 134 | balance_lo | CZR | lo | 101921/1000000 | s1040,lo_ZQR,s1061,lo_OZR,lo_OCQ,s1127,hi_OFQ |
| s1139 | 135 | linear | OHC | lo | 203223/500000 | lo_HCY,s1136,s1089 |
| s1140 | 136 | linear | HCQ | hi | 389777/500000 | hi_OCQ,s1139,hi_OHQ |
| s1142 | 137 | linear | OHZ | lo | 108073/250000 | s979,s1089,s1095 |
| s1148 | 139 | linear | OHQ | lo | 840239/1000000 | s1107,s1142,s1075 |
| s1150 | 140 | linear | OHZ | hi | 582683/1000000 | s1125,s404,lo_OZR |
| s1153 | 142 | linear | OCF | lo | 434069/1000000 | s1105,s1136,lo_OFY |
| s1155 | 143 | linear | CFQ | hi | 738311/1000000 | s1153,hi_OCQ,hi_OFQ |
| s1159 | 146 | linear | ODR | lo | 153379/500000 | s1126,lo_ODZ,lo_OZR |
| s1161 | 147 | linear | ODR | hi | 230027/500000 | lo_DQR,hi_ODQ,s1097 |
| s1163 | 148 | linear | OFZ | lo | 218947/500000 | s986,lo_OFY,s1095 |
| s1170 | 149 | linear | OZQ | hi | 154129/500000 | s1110,hi_OFQ,s1163 |
| s1171 | 149 | linear | OFQ | lo | 27037/31250 | s1110,s1163,s1075 |
| s1173 | 150 | linear | OFZ | hi | 137169/250000 | s1127,s874,lo_OZR |
| s1176 | 151 | linear | OYQ | lo | 114431/250000 | s1095,s1075,lo_YZQ |
| s1189 | 152 | linear | CDP | lo | 70691/200000 | lo_CDZ,lo_CZP,s1130 |
| s1190 | 153 | linear | CDQ | lo | 142107/500000 | lo_CDR,s1098,lo_DQR |
| s1191 | 154 | linear | CFQ | lo | 520973/1000000 | s1108,s924,s1110 |
| s1196 | 156 | linear | DFY | lo | 42099/125000 | s1079,lo_DYP,s821 |
| s1197 | 157 | linear | DZQ | lo | 153379/500000 | lo_DQR,s1126,lo_ZQR |
| s1200 | 159 | support_z | ODP | lo | 154461/1000000 | s1189,hi_OCD |
| s1202 | 164 | linear | CDF | hi | 107007/125000 | s1087 |
| s1213 | 170 | bary_hi | HYQ | lo | 239623/1000000 | s1150,s979,s1095,s1089,s1148,s1107 |
| s1219 | 171 | bary_hi | FYP | lo | 2927/20000 | s1150,s979,s1095,s1089,s1045,lo_HFP,lo_FZP |
| s1220 | 172 | bary_hi | FYQ | lo | 158231/500000 | s1150,s979,s1095,s1089,s1171,s1084,s1110 |
| s1236 | 175 | bary_lo | OCZ | lo | 61169/500000 | s404,s1125,lo_OZR,s1142,s1139,s1021 |
| s1239 | 176 | bary_lo | OZQ | lo | 191221/1000000 | s404,s1125,lo_OZR,s1142,s1148,s1097 |
| s1256 | 181 | bary_hi | OPQ | hi | 398269/500000 | hi_ODF,s1079,s1045,s1200,hi_ODQ,hi_OFQ |
| s1258 | 182 | bary_hi | CDP | hi | 263967/500000 | hi_ODF,s1079,s1045,s1200,hi_OCD,s1202 |
| s1260 | 183 | bary_hi | CPQ | hi | 565579/1000000 | hi_ODF,s1079,s1045,s1200,hi_OCQ,hi_CDQ,s1155 |
| s1261 | 184 | bary_lo | DPQ | hi | 4879/10000 | hi_ODF,s1079,s1045,s1200,hi_ODQ,hi_DFQ |
| s1266 | 186 | bary_hi | CZQ | hi | 274261/1000000 | hi_ODQ,s1197,s1239,lo_ODZ,hi_OCQ,hi_CDQ |
| s1268 | 188 | bary_lo | OFR | hi | 26621/31250 | hi_ODQ,lo_DQR,s1097,s1159,hi_ODF,hi_OFQ |
| s1270 | 189 | bary_lo | OZR | hi | 80547/500000 | hi_ODQ,lo_DQR,s1097,s1159,lo_ODZ,s1170 |
| s1286 | 195 | bary_hi | OYQ | hi | 570799/1000000 | s1173,s986,s1095,lo_OFY,hi_OFQ,s1170 |
| s1287 | 196 | bary_hi | OYR | hi | 475143/1000000 | s1173,s986,s1095,lo_OFY,s1268,s1270 |
| s1288 | 197 | bary_hi | CYQ | hi | 122829/250000 | s1173,s986,s1095,lo_OFY,hi_OCQ,s1155,s1266 |
| s1295 | 201 | bary_lo | CYZ | lo | 22149/200000 | s946,s1219,lo_OYP,lo_OFY,s1236,s1108,lo_CZP |
| s1296 | 202 | bary_hi | OHY | lo | 122377/1000000 | hi_OFQ,s1220,s1176,lo_OFY,lo_OHF,s1148 |
| s1297 | 203 | bary_lo | OCY | lo | 42039/200000 | hi_OFQ,s1220,s1176,lo_OFY,s1153,lo_OCQ |
| s1299 | 204 | bary_lo | HDY | hi | 235791/500000 | hi_OFQ,s1220,s1176,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s1302 | 205 | bary_lo | HYQ | hi | 386373/1000000 | hi_OFQ,s1220,s1176,lo_OFY,hi_OHQ,s1084 |
| s1306 | 206 | bary_hi | DFY | hi | 479563/1000000 | hi_OFQ,s1220,s1176,lo_OFY,hi_ODF,hi_DFQ |
| s1311 | 208 | bary_lo | FYQ | hi | 54457/125000 | hi_OFQ,s1220,s1176,lo_OFY,hi_OFQ |
| s1321 | 213 | bary_lo | OCZ | lo | 32531/250000 | s1268,s1127,lo_OZR,s1163,s1153,s1021 |
| s1322 | 214 | bary_lo | ODZ | hi | 109949/500000 | s1268,s1127,lo_OZR,s1163,lo_ODF,s1161 |
| s1323 | 215 | bary_lo | OFZ | hi | 34217/62500 | s1268,s1127,lo_OZR,s1163,s1268 |
| s1325 | 216 | bary_lo | OZQ | lo | 20111/100000 | s1268,s1127,lo_OZR,s1163,s1171,s1097 |
| s1327 | 217 | bary_lo | CZQ | lo | 71201/500000 | s1268,s1127,lo_OZR,s1163,lo_OCQ,s1191,s1098 |
| s1336 | 218 | bary_lo | OZP | hi | 353347/1000000 | s1286,lo_YZQ,s1325,s1095,lo_OYP,s1256 |
| s1341 | 219 | bary_hi | HZQ | lo | 110663/500000 | s1286,lo_YZQ,s1325,s1095,s1148,s1213 |
| s1342 | 220 | bary_lo | CFZ | hi | 235153/1000000 | s1286,lo_YZQ,s1325,s1095,s1153,s1105,s1155 |
| s1345 | 221 | bary_hi | FYZ | hi | 49007/250000 | s1286,lo_YZQ,s1325,s1095,lo_OFY,s1311 |
| s1346 | 222 | bary_hi | FZQ | lo | 252463/1000000 | s1286,lo_YZQ,s1325,s1095,s1171,s1220 |
| s1358 | 225 | bary_lo | DFP | lo | 107401/1000000 | s255,s1189,lo_HDP,s1016,lo_HDF,lo_CDF |
| s1370 | 227 | bary_lo | ZPQ | lo | 88869/500000 | s1299,lo_DYP,s1017,lo_HDP,s1341,s1197,lo_YZQ |
| s1386 | 233 | bary_lo | HYZ | lo | 69597/500000 | s1258,s1130,lo_CZP,lo_CDZ,lo_HCY,s1057,s1017 |
| s1389 | 234 | bary_hi | CFZ | lo | 29433/200000 | s1258,s1130,lo_CZP,lo_CDZ,lo_CDF,s1085 |
| s1392 | 236 | bary_lo | DZQ | hi | 5944/15625 | s1258,s1130,lo_CZP,lo_CDZ,hi_CDQ,s1261 |
| s1393 | 237 | bary_lo | FYZ | lo | 180303/1000000 | s1258,s1130,lo_CZP,lo_CDZ,s1105,s1196,s1219 |
| s1395 | 238 | bary_hi | HCR | hi | 135589/200000 | hi_CDQ,lo_DQR,s1098,lo_CDR,s255,s1140 |
| s1404 | 243 | bary_lo | DFZ | lo | 419019/1000000 | s1288,lo_YZQ,s1327,s1295,lo_CDF,s1196,s208 |
| s1407 | 245 | bary_hi | OYZ | lo | 94901/500000 | s1260,s1370,s1327,lo_CZP,s1297,lo_OYP,s1176 |
| s1421 | 249 | bary_lo | ZPQ | lo | 189157/1000000 | s1306,s1219,lo_DYP,s1358,s1197,s1346,lo_YZQ |
| s1427 | 256 | bary_lo | OCR | lo | 8453/50000 | s1392,lo_ZQR,lo_DQR,s1126,s202,s1321,lo_OCQ |
| s1428 | 257 | bary_lo | ODR | hi | 442443/1000000 | s1392,lo_ZQR,lo_DQR,s1126,s1322,hi_ODQ |
| s1431 | 258 | bary_lo | OQR | lo | 109413/500000 | s1392,lo_ZQR,lo_DQR,s1126,lo_ODQ,s1325 |
| s1435 | 259 | bary_lo | CDR | hi | 191911/1000000 | s1392,lo_ZQR,lo_DQR,s1126,lo_CDZ,hi_CDQ |
| s1437 | 260 | bary_lo | CQR | lo | 52147/500000 | s1392,lo_ZQR,lo_DQR,s1126,s1190,s1327 |
| s1444 | 0 | sum | OHZ | lo | 451373/1000000 | s1386,s1296,s1407 |
| s1447 | 1 | sum | OHQ | lo | 873809/1000000 | s1341,s1444,s1325 |
| s1448 | 1 | sub | OHZ | hi | 144391/250000 | hi_OHQ,s1341,s1325 |
| s1450 | 3 | sum | OCF | lo | 450823/1000000 | s1105,s1297,lo_OFY |
| s1452 | 8 | sum | OFZ | lo | 92621/200000 | s1393,lo_OFY,s1407 |
| s1453 | 8 | sub | OFY | hi | 177367/1000000 | s1323,s1393,s1407 |
| s1454 | 8 | sub | OYZ | hi | 274169/1000000 | s1323,s1393,lo_OFY |
| s1455 | 9 | sum | OFP | lo | 6647/20000 | s1219,lo_OFY,lo_OYP |
| s1457 | 10 | sum | OFQ | lo | 458339/500000 | s1346,s1452,s1325 |
| s1458 | 10 | sub | FZQ | hi | 64433/200000 | hi_OFQ,s1452,s1325 |
| s1459 | 10 | sub | OFZ | hi | 532807/1000000 | hi_OFQ,s1346,s1325 |
| s1461 | 11 | sum | OFR | lo | 153501/200000 | s1127,s1452,lo_OZR |
| s1462 | 11 | sub | FZR | hi | 295767/1000000 | s1268,s1452,lo_OZR |
| s1463 | 12 | sum | OYQ | lo | 60489/125000 | s1407,s1325,lo_YZQ |
| s1464 | 13 | sum | OYR | lo | 187901/500000 | s1407,lo_OZR,lo_YZR |
| s1466 | 15 | sum | HCQ | lo | 10467/20000 | s1327,s1106,s1341 |
| s1468 | 19 | sum | CDY | lo | 459177/1000000 | lo_CDZ,s1295,s1120 |
| s1469 | 21 | sum | CDQ | lo | 145147/500000 | lo_CDR,s1437,lo_DQR |
| s1470 | 22 | sum | CFQ | lo | 54203/100000 | s1389,s1327,s1346 |
| s1472 | 23 | sum | CYQ | lo | 346147/1000000 | s1295,s1327,lo_YZQ |
| s1476 | 24 | sum | DFY | lo | 346751/1000000 | s1358,lo_DYP,s1219 |
| s1479 | 27 | sumlo | OHY | lo | 128011/1000000 | lo_OFY,s1447,lo_OHF,s1463,hi_OFQ |
| s1484 | 29 | sumlo | OCD | lo | 11957/31250 | s1450,lo_ODQ,lo_OCQ,lo_ODF,hi_OFQ |
| s1487 | 30 | sumlo | OCZ | lo | 141123/1000000 | s1450,lo_OZR,s1427,s1452,s1268 |
| s1489 | 31 | sumlo | OCR | lo | 172377/1000000 | s1450,s1431,lo_OCQ,s1461,hi_OFQ |
| s1491 | 32 | diff | ODY | lo | 53509/250000 | lo_ODF,s1464,s1428,s1453,s1268 |
| s1493 | 34 | sumlo | OZQ | lo | 43807/200000 | s1457,lo_OZR,s1452,s1431,s1268 |
| s1495 | 35 | sumlo | HYQ | lo | 64911/250000 | s1386,s1447,s1341,s1479,s1448 |
| s1497 | 36 | sumlo | HCF | lo | 155203/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1299 |
| s1499 | 37 | sumlo | HFQ | lo | 3063/25000 | s1497,s1096,s1466,lo_HDF,s255 |
| s1500 | 38 | sumlo | HCF | lo | 7773/50000 | s1466,lo_HFY,lo_HCY,s1499,s1302 |
| s1502 | 39 | sumlo | CFY | lo | 74931/500000 | lo_CDF,lo_HCY,s1468,s1500,s255 |
| s1512 | 47 | sumlo | FYQ | lo | 11071/31250 | s1393,s1457,s1346,lo_OFY,s1459 |
| s1513 | 48 | sumlo | FYR | lo | 18539/62500 | s1393,s1461,s1127,lo_OFY,s1459 |
| s1514 | 49 | sumlo | HCF | lo | 163647/1000000 | lo_CDF,lo_HFY,s1502,lo_HDF,s1306 |
| s1517 | 50 | sumlo | HFZ | lo | 1816/15625 | s1404,lo_HFY,s1393,lo_HDF,s1306 |
| s1518 | 51 | sumlo | HFQ | lo | 146587/1000000 | s208,lo_HFY,s1512,lo_HDF,s1306 |
| s1519 | 53 | sumlo | CFP | lo | 180967/1000000 | s1502,lo_FZP,s1389,s1219,s1345 |
| s1524 | 55 | sumlo | OHY | lo | 158727/1000000 | lo_HFY,s1463,s1495,lo_OFY,s1311 |
| s1526 | 56 | sumlo | HYQ | lo | 936/3125 | s1386,s1463,s1524,lo_YZQ,s1454 |
| s1530 | 57 | sumlo | OYZ | lo | 220127/1000000 | s1393,s1463,lo_OFY,lo_YZQ,s1311 |
| s1541 | 58 | sumlo | HDY | lo | 1837/5000 | s1476,s1386,s1120,lo_HFY,s1345 |
| s1553 | 59 | sumlo | OHZ | lo | 9187/20000 | s1517,s1530,s1386,s1452,s1345 |
| s1556 | 60 | sumlo | HZQ | lo | 267017/1000000 | s1386,s1493,s1553,lo_YZQ,s1454 |
| s1560 | 61 | sumlo | CFZ | lo | 159031/1000000 | lo_CZP,s1452,lo_FZP,s1487,s1336 |
| s1561 | 61 | sumlo | OZP | lo | 59741/250000 | lo_CZP,s1452,lo_FZP,s1487,s1342 |
| s1564 | 62 | sumlo | FZQ | lo | 301133/1000000 | s1393,s1493,s1452,lo_YZQ,s1454 |
| s1565 | 62 | sumlo | OYZ | lo | 25627/100000 | s1393,s1493,s1452,lo_YZQ,s1458 |
| s1566 | 62 | diffhi | OZQ | hi | 31377/125000 | s1458,s1454,s1452,lo_YZQ,s1393 |
| s1570 | 63 | diffhi | YZR | hi | 138893/1000000 | s1462,s1454,s1393,lo_OZR,s1452 |
| s1571 | 64 | sumlo | FZR | lo | 56629/200000 | s1564,lo_OZR,s1452,lo_ZQR,s1566 |
| s1572 | 64 | sumlo | OZQ | lo | 15019/62500 | s1564,lo_OZR,s1452,lo_ZQR,s1462 |
| s1574 | 64 | diffhi | OFZ | hi | 497171/1000000 | s1462,s1566,s1564,lo_OZR,lo_ZQR |
| s1577 | 65 | sumlo | YZR | lo | 64701/500000 | s1565,lo_ZQR,lo_OZR,lo_YZQ,s1566 |
| s1578 | 66 | sumlo | ZPR | lo | 19827/125000 | s1561,lo_ZQR,lo_OZR,s1421,s1566 |
| s1581 | 67 | sumlo | HCZ | lo | 183181/1000000 | s1560,s1556,s1327,s1517,s1458 |
| s1587 | 68 | sumlo | HZR | lo | 11111/40000 | s1571,s1386,s1517,s1577,s1345 |
| s1590 | 69 | sumlo | HZP | lo | 18709/125000 | lo_FZP,s1587,s1517,s1578,s1462 |
| s1594 | 70 | sumlo | HZQ | lo | 139597/500000 | s1386,lo_ZQR,s1587,lo_YZQ,s1570 |
| s1597 | 71 | sumlo | CYZ | lo | 13171/100000 | s1560,s1577,s1138,s1393,s1462 |
| s1603 | 72 | sumlo | FZQ | lo | 62063/200000 | s1393,lo_ZQR,s1571,lo_YZQ,s1570 |
| s1604 | 72 | sumlo | YZR | lo | 16723/125000 | s1393,lo_ZQR,s1571,lo_YZQ,s1458 |
| s1611 | 75 | sumlo | OHQ | lo | 903749/1000000 | s1518,s1572,s1594,s1457,s1458 |
| s1613 | 75 | diffhi | HZQ | hi | 156511/500000 | s1458,hi_OHQ,s1518,s1572,s1457 |
| s1616 | 78 | sumlo | CZQ | lo | 40327/250000 | s1470,s1572,s1603,lo_OCQ,hi_OFQ |
| s1617 | 79 | sumlo | DZQ | lo | 12647/40000 | s208,s1572,s1603,lo_ODQ,hi_OFQ |
| s1620 | 80 | sumlo | OQR | lo | 28551/125000 | lo_DQR,s1572,lo_ODQ,lo_ZQR,s1392 |
| s1621 | 81 | sumlo | OYQ | lo | 528871/1000000 | s1512,s1572,s1457,lo_YZQ,s1458 |
| s1622 | 81 | diffhi | FYQ | hi | 205241/500000 | s1458,s1286,s1457,lo_YZQ,s1572 |
| s1624 | 82 | sumlo | HCQ | lo | 543129/1000000 | s1470,s1594,s1616,s1518,s1458 |
| s1625 | 83 | sumlo | HDQ | lo | 61489/125000 | s208,s1594,s1617,s1518,s1458 |
| s1626 | 84 | diffhi | HYQ | hi | 92533/250000 | s1622,s1613,s1518,lo_YZQ,s1603 |
| s1628 | 86 | sumlo | DYQ | lo | 463621/1000000 | s208,lo_YZQ,s1617,s1512,s1458 |
| s1636 | 87 | sumlo | OYR | lo | 220217/500000 | s1513,lo_OZR,s1461,s1604,s1462 |
| s1645 | 88 | balance_lo | OHD | lo | 370033/500000 | lo_HFY,lo_ODQ,s1526,lo_ODF,s1518,s1491,s1622 |
| s1649 | 89 | balance_lo | OCF | lo | 453767/1000000 | lo_HCY,s1457,s1472,lo_OHF,s1624,lo_OFY,s1626 |
| s1650 | 90 | balance_lo | HCP | lo | 55291/200000 | s1581,s1455,lo_CZP,lo_OHF,s1590,s1649,s1574 |
| s1653 | 91 | balance_lo | HYQ | lo | 163133/500000 | s1386,s1457,lo_YZQ,lo_OHF,s1594,lo_OFY,s1574 |
| s1657 | 92 | balance_lo | CYQ | lo | 3579/10000 | s1597,s1457,lo_YZQ,s1649,s1616,lo_OFY,s1574 |
| s1685 | 93 | balance_lo | HCZ | lo | 103197/500000 | lo_CZP,s1611,s1590,lo_OCQ,s1650,s1572,s1256 |
| s1690 | 94 | balance_lo | CFZ | lo | 539/3125 | lo_FZP,lo_OCQ,lo_CZP,s1457,s1519,s1572,s1256 |
| s1692 | 95 | balance_lo | CFY | lo | 181703/1000000 | s1514,s1636,lo_HFY,s1489,lo_HCY,s1461,s404 |
| s1695 | 97 | balance_lo | FYQ | lo | 191527/500000 | lo_HFY,s1620,s1653,s1461,s1518,s1636,s404 |
| s1696 | 97 | balance_lo | OHR | lo | 12798/15625 | lo_HFY,s1620,s1653,s1461,s1518,s1636,s1622 |
| s1697 | 97 | balance_hi | HYQ | hi | 5588/15625 | s1622,s404,lo_HFY,s1620,s1518,s1636,s1461 |
| s1698 | 97 | balance_hi | OFR | hi | 84129/100000 | s1622,s404,lo_HFY,s1620,s1518,s1636,s1653 |
| s1700 | 98 | balance_lo | HZQ | lo | 29109/100000 | s1386,s1620,lo_YZQ,s1696,s1653,lo_OZR,s1287 |
| s1701 | 98 | balance_lo | OYR | lo | 110463/250000 | s1386,s1620,lo_YZQ,s1696,s1653,lo_OZR,s1613 |
| s1702 | 99 | balance_lo | CYZ | lo | 147617/1000000 | s1692,lo_OZR,s1393,s1489,s1690,s1701,s1698 |
| s1705 | 101 | balance_lo | CZQ | lo | 174753/1000000 | s1702,s1620,lo_YZQ,s1489,s1657,lo_OZR,s1287 |
| s1708 | 102 | balance_lo | FZQ | lo | 311873/1000000 | s1393,s1620,lo_YZQ,s1461,s1695,lo_OZR,s1287 |
| s1709 | 102 | balance_lo | OYR | lo | 91993/200000 | s1393,s1620,lo_YZQ,s1461,s1695,lo_OZR,s1458 |
| s1714 | 103 | balance_lo | OHC | lo | 541583/1000000 | lo_OFY,s1624,s1621,s1514,s1457,lo_HCY,s1622 |
| s1725 | 104 | balance_lo | OYZ | lo | 16229/62500 | s1604,s1714,lo_OZR,lo_HCY,s1709,s1685,s1395 |
| s1728 | 104 | balance_hi | HCZ | hi | 227773/1000000 | s1454,s1395,s1604,s1714,lo_OZR,lo_HCY,s1709 |
| s1743 | 106 | balance_lo | HDZ | lo | 499029/1000000 | s1725,s1625,lo_YZQ,s1645,s1572,s1541,s1286 |
| s1745 | 107 | balance_hi | HDZ | hi | 554201/1000000 | s1345,s255,s1702,lo_HDF,s1690,s1541,s1692 |
| s1746 | 107 | balance_lo | FYZ | lo | 7399/40000 | s1692,s1743,s1702,lo_HDF,s1690,s1541,s255 |
| s1747 | 107 | balance_lo | HCD | lo | 42793/50000 | s1692,s1743,s1702,lo_HDF,s1690,s1541,s1345 |
| s1752 | 108 | balance_hi | CFQ | hi | 16987/25000 | s1622,s255,s1692,s1625,s1657,lo_HDF,s1541 |
| s1761 | 110 | balance_hi | HDY | hi | 20497/50000 | s1622,s1745,s1746,s1625,lo_YZQ,lo_HDF,s1708 |
| s1765 | 111 | balance_lo | HFZ | lo | 120989/1000000 | s1725,s1518,lo_YZQ,lo_OHF,s1572,lo_HFY,s1286 |
| s1769 | 112 | balance_hi | OHY | hi | 7213/31250 | hi_OCF,s1761,s1484,lo_HFY,lo_ODF,lo_HCY,lo_CDF |
| s1772 | 113 | balance_lo | OCD | lo | 404851/1000000 | s1469,s1524,lo_ODQ,lo_HCY,lo_OCQ,s1541,s1697 |
| s1783 | 114 | balance_lo | HYR | lo | 38293/125000 | lo_ZQR,s1524,s1620,s1386,lo_OZR,s1653,s1566 |
| s1789 | 115 | balance_lo | HYZ | lo | 149423/1000000 | s1690,s1653,s1708,lo_HCY,s1705,lo_HFY,s1752 |
| s1807 | 116 | balance_hi | DFY | hi | 382649/1000000 | s1622,s1745,s1628,s1765,s208,s1789,s1700 |
| s1821 | 117 | balance_lo | CDY | lo | 33709/62500 | s1783,s1772,s1709,s1747,s1769,s1435,s404 |
| s1823 | 118 | balance_lo | CDZ | lo | 5441/50000 | s1604,s1772,lo_OZR,s1821,s1454,s1435,s1287 |
| s1844 | 119 | balance_hi | HDF | hi | 92589/1000000 | s1807,s1728,lo_HFY,s1823,s1541,s1690,s1702 |

## Conclusion

{"triangle":"HDF","lower":"lo_HDF","upper":"s1844"}
