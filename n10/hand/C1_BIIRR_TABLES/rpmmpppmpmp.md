# Leaf rpmmpppmpmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":-1,"OYP":1}

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
| 26 | interior_line | ["ZP","Y","OHC","Y",1] |
| 27 | interior_line | ["ZP","Z","HCDF","D",-1] |
| 28 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 29 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 30 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 33 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 34 | plu | ["OHDYZ","OYZ",-1] |
| 35 | plu | ["OHDPR","OPR",-1] |
| 36 | plu | ["DOHYZ","DYZ",1] |
| 37 | plu | ["FOHZP","FOP",1] |
| 38 | plu | ["FOCYZ","FYZ",1] |
| 39 | plu | ["FOCZP","FCP",1] |
| 40 | plu | ["FOYZP","FYP",1] |
| 41 | plu | ["YOHPR","YPR",-1] |
| 42 | plu | ["YOZQR","YZR",1] |
| 43 | plu | ["ZOHYQ","ZHQ",-1] |
| 44 | plu | ["ZOHPQ","ZPQ",-1] |
| 45 | plu | ["ZOFYQ","ZFQ",-1] |
| 46 | plu | ["ZHCYR","ZHR",-1] |
| 47 | plu | ["ZHCPR","ZPR",-1] |
| 48 | plu | ["ZHDFR","ZFR",-1] |
| 49 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","YP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Y"] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 279/1000 | ["cost","Y"] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YZ"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OZP | OZP | lo | 279/1000 | ["cost","Y"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OPQ | OPQ | lo | 347/500 | ["cost","YZ"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCF | HCF | lo | 93/1000 | ["cost",""] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCP | OCP | hi | 115189/200000 | "C013" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_OPQ | OPQ | hi | 70912/79375 | "C050" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 3 | ["fan","OHQ","HYQ","OHY","OYQ"] | ["fan","OHQ","Y"] |
| 4 | ["fan","OHQ","HZQ","OHZ","OZQ"] | ["fan","OHQ","Z"] |
| 5 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 6 | ["fan","OCP","CYP","OCY","OYP"] | ["fan","OCP","Y"] |
| 7 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 8 | ["fan","OFZ","FYZ","OFY","OYZ"] | ["fan","OFZ","Y"] |
| 9 | ["fan","OFQ","FYQ","OFY","OYQ"] | ["fan","OFQ","Y"] |
| 10 | ["fan","OFQ","FZQ","OFZ","OZQ"] | ["fan","OFQ","Z"] |
| 11 | ["fan","OZP","OYP","OYZ","YZP"] | ["fan","OZP","Y"] |
| 12 | ["fan","OPQ","OYP","OYQ","YPQ"] | ["fan","OPQ","Y"] |
| 13 | ["fan","OPQ","OZP","OZQ","ZPQ"] | ["fan","OPQ","Z"] |
| 14 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 15 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 16 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 17 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 18 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 19 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 20 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 21 | ["fan","CFQ","CFZ","CZQ","FZQ"] | ["fan","CFQ","Z"] |
| 22 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 23 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 24 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 25 | ["plu","OHY","OPQ","OHP","OYQ","OHQ","OYP"] | ["plu","OHYPQ"] |
| 26 | ["plu","OCD","OPQ","OCP","ODQ","OCQ","ODP"] | ["plu","OCDPQ"] |
| 27 | ["plu","ODQ","OZP","ODP","OZQ","ODZ","OPQ"] | ["plu","ODZPQ"] |
| 28 | ["plu","OFY","OPQ","OFP","OYQ","OFQ","OYP"] | ["plu","OFYPQ"] |
| 29 | ["plu","HCF","OHP","HCP","OHF","HFP","OHC"] | ["plu","HOCFP"] |
| 30 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 31 | ["plu","CDP","OCZ","CDZ","OCP","CZP","OCD"] | ["plu","CODZP"] |
| 32 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 33 | ["plu","CDF","HCP","CDP","HCF","CFP","HCD"] | ["plu","CHDFP"] |
| 34 | ["plu","CYP","HCD","CDP","HCY","CDY","HCP"] | ["plu","CHDYP"] |
| 35 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 36 | ["plu","CDP","HCZ","CDZ","HCP","CZP","HCD"] | ["plu","CHDZP"] |
| 37 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 38 | ["plu","CDP","CYZ","CDY","CZP","CDZ","CYP"] | ["plu","CDYZP"] |
| 39 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 40 | ["plu","DPQ","ODF","DFP","ODQ","DFQ","ODP"] | ["plu","DOFPQ"] |
| 41 | ["plu","DZP","ODQ","DPQ","ODZ","DZQ","ODP"] | ["plu","DOZPQ"] |
| 42 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 43 | ["plu","HFQ","ODF","DFQ","OHF","HDF","OFQ"] | ["plu","FOHDQ"] |
| 44 | ["plu","HFZ","OFP","FZP","OHF","HFP","OFZ"] | ["plu","FOHZP"] |
| 45 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 46 | ["plu","FYZ","HCF","CFY","HFZ","CFZ","HFY"] | ["plu","FHCYZ"] |
| 47 | ["plu","DFZ","HFQ","DFQ","HFZ","FZQ","HDF"] | ["plu","FHDZQ"] |
| 48 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 49 | ["plu","HYQ","OYZ","HYZ","OYQ","OHY","YZQ"] | ["plu","YOHZQ"] |
| 50 | ["plu","OHY","YPQ","HYP","OYQ","HYQ","OYP"] | ["plu","YOHPQ"] |
| 51 | ["plu","FYQ","OCY","CFY","OYQ","CYQ","OFY"] | ["plu","YOCFQ"] |
| 52 | ["plu","OCY","YPQ","CYP","OYQ","CYQ","OYP"] | ["plu","YOCPQ"] |
| 53 | ["plu","FYQ","OYZ","FYZ","OYQ","OFY","YZQ"] | ["plu","YOFZQ"] |
| 54 | ["plu","OYZ","YPQ","OYP","YZQ","OYQ","YZP"] | ["plu","YOZPQ"] |
| 55 | ["plu","CFY","HYQ","CYQ","HFY","FYQ","HCY"] | ["plu","YHCFQ"] |
| 56 | ["plu","CYP","HYQ","CYQ","HYP","HCY","YPQ"] | ["plu","YHCPQ"] |
| 57 | ["plu","DYZ","FYQ","DFY","YZQ","DYQ","FYZ"] | ["plu","YDFZQ"] |
| 58 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 59 | ["plu","DZP","OCZ","CDZ","OZP","CZP","ODZ"] | ["plu","ZOCDP"] |
| 60 | ["plu","CFZ","OZP","CZP","OFZ","FZP","OCZ"] | ["plu","ZOCFP"] |
| 61 | ["plu","FZQ","OYZ","FYZ","OZQ","OFZ","YZQ"] | ["plu","ZOFYQ"] |
| 62 | ["plu","OYZ","ZPQ","OZP","YZQ","OZQ","YZP"] | ["plu","ZOYPQ"] |
| 63 | ["plu","FYZ","HCZ","CFZ","HYZ","CYZ","HFZ"] | ["plu","ZHCFY"] |
| 64 | ["plu","CFZ","DZP","CDZ","FZP","CZP","DFZ"] | ["plu","ZCDFP"] |
| 65 | ["plu","CYZ","DZP","CDZ","YZP","CZP","DYZ"] | ["plu","ZCDYP"] |
| 66 | ["plu","CZQ","DYZ","CDZ","YZQ","CYZ","DZQ"] | ["plu","ZCDYQ"] |
| 67 | ["plu","CZQ","DZP","CDZ","ZPQ","CZP","DZQ"] | ["plu","ZCDPQ"] |
| 68 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 69 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 70 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 71 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 72 | ["plu","CYQ","ODQ","CDQ","OYQ","DYQ","OCQ"] | ["plu","QOCDY"] |
| 73 | ["balance",[[-1,"DFZ","OHP"],[1,"FZP","OHD"],[1,"DZP","OHF"],[1,"DFP","OHZ"]]] | ["six","OHDFZP"] |
| 74 | ["balance",[[1,"HCF","ODP"],[1,"CFP","OHD"],[1,"HFP","OCD"],[-1,"HCP","ODF"]]] | ["six","ODHCFP"] |
| 75 | ["balance",[[1,"HFY","ODQ"],[-1,"FYQ","OHD"],[1,"HYQ","ODF"],[1,"HFQ","ODY"]]] | ["six","ODHFYQ"] |
| 76 | ["balance",[[1,"HCD","OYP"],[-1,"CDP","OHY"],[1,"HDP","OCY"],[1,"HCP","ODY"]]] | ["six","OYHCDP"] |
| 77 | ["balance",[[1,"HCF","OYP"],[1,"CFP","OHY"],[1,"HFP","OCY"],[-1,"HCP","OFY"]]] | ["six","OYHCFP"] |
| 78 | ["balance",[[-1,"HFZ","OYP"],[-1,"FZP","OHY"],[1,"HZP","OFY"],[-1,"HFP","OYZ"]]] | ["six","OYHFZP"] |
| 79 | ["balance",[[1,"CDF","OYP"],[1,"DFP","OCY"],[1,"CFP","ODY"],[-1,"CDP","OFY"]]] | ["six","OYCDFP"] |
| 80 | ["balance",[[1,"DFZ","OYP"],[1,"FZP","ODY"],[-1,"DZP","OFY"],[1,"DFP","OYZ"]]] | ["six","OYDFZP"] |
| 81 | ["balance",[[1,"HCY","OPQ"],[1,"CYQ","OHP"],[-1,"HYQ","OCP"],[1,"HCQ","OYP"]]] | ["six","OPHCYQ"] |
| 82 | ["balance",[[-1,"HYZ","OPQ"],[-1,"YZQ","OHP"],[-1,"HZQ","OYP"],[1,"HYQ","OZP"]]] | ["six","OPHYZQ"] |
| 83 | ["balance",[[-1,"CFY","OPQ"],[1,"FYQ","OCP"],[-1,"CYQ","OFP"],[-1,"CFQ","OYP"]]] | ["six","OPCFYQ"] |
| 84 | ["balance",[[1,"HCD","OZQ"],[-1,"CDZ","OHQ"],[1,"HDZ","OCQ"],[-1,"HCZ","ODQ"]]] | ["six","OQHCDZ"] |
| 85 | ["balance",[[1,"HCF","OYQ"],[-1,"CFY","OHQ"],[1,"HFY","OCQ"],[1,"HCY","OFQ"]]] | ["six","OQHCFY"] |
| 86 | ["balance",[[1,"HCF","OPQ"],[1,"CFP","OHQ"],[1,"HFP","OCQ"],[-1,"HCP","OFQ"]]] | ["six","OQHCFP"] |
| 87 | ["balance",[[-1,"HCY","OPQ"],[1,"CYP","OHQ"],[-1,"HYP","OCQ"],[-1,"HCP","OYQ"]]] | ["six","OQHCYP"] |
| 88 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 89 | ["balance",[[1,"ODY","HCP"],[-1,"DYP","OHC"],[1,"OYP","HCD"],[1,"ODP","HCY"]]] | ["six","HCODYP"] |
| 90 | ["balance",[[-1,"OFY","HCQ"],[1,"FYQ","OHC"],[-1,"OYQ","HCF"],[-1,"OFQ","HCY"]]] | ["six","HCOFYQ"] |
| 91 | ["balance",[[-1,"OYZ","HCQ"],[1,"YZQ","OHC"],[1,"OZQ","HCY"],[1,"OYQ","HCZ"]]] | ["six","HCOYZQ"] |
| 92 | ["balance",[[1,"OYP","HCQ"],[-1,"YPQ","OHC"],[1,"OPQ","HCY"],[1,"OYQ","HCP"]]] | ["six","HCOYPQ"] |
| 93 | ["balance",[[1,"DFY","HCQ"],[-1,"FYQ","HCD"],[1,"DYQ","HCF"],[1,"DFQ","HCY"]]] | ["six","HCDFYQ"] |
| 94 | ["balance",[[1,"DYZ","HCQ"],[-1,"YZQ","HCD"],[-1,"DZQ","HCY"],[-1,"DYQ","HCZ"]]] | ["six","HCDYZQ"] |
| 95 | ["balance",[[1,"OFZ","HDP"],[1,"FZP","OHD"],[1,"OZP","HDF"],[-1,"OFP","HDZ"]]] | ["six","HDOFZP"] |
| 96 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 97 | ["balance",[[1,"OCF","HYP"],[-1,"CFP","OHY"],[-1,"OFP","HCY"],[-1,"OCP","HFY"]]] | ["six","HYOCFP"] |
| 98 | ["balance",[[1,"ODF","HYQ"],[1,"DFQ","OHY"],[-1,"OFQ","HDY"],[1,"ODQ","HFY"]]] | ["six","HYODFQ"] |
| 99 | ["balance",[[1,"OYP","HZQ"],[-1,"YPQ","OHZ"],[1,"OPQ","HYZ"],[1,"OYQ","HZP"]]] | ["six","HZOYPQ"] |
| 100 | ["balance",[[-1,"CFY","HZP"],[1,"FYZ","HCP"],[-1,"CYZ","HFP"],[-1,"CFZ","HYP"]]] | ["six","HPCFYZ"] |
| 101 | ["balance",[[-1,"HYZ","CDQ"],[-1,"YZQ","HCD"],[1,"HZQ","CDY"],[-1,"HYQ","CDZ"]]] | ["six","CDHYZQ"] |
| 102 | ["balance",[[-1,"ODY","CFP"],[1,"DYP","OCF"],[-1,"OYP","CDF"],[-1,"ODP","CFY"]]] | ["six","CFODYP"] |
| 103 | ["balance",[[1,"OYZ","CFQ"],[-1,"YZQ","OCF"],[-1,"OZQ","CFY"],[-1,"OYQ","CFZ"]]] | ["six","CFOYZQ"] |
| 104 | ["balance",[[-1,"OYP","CFQ"],[1,"YPQ","OCF"],[-1,"OPQ","CFY"],[-1,"OYQ","CFP"]]] | ["six","CFOYPQ"] |
| 105 | ["balance",[[-1,"DYZ","CFQ"],[1,"YZQ","CDF"],[1,"DZQ","CFY"],[1,"DYQ","CFZ"]]] | ["six","CFDYZQ"] |
| 106 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 107 | ["balance",[[1,"OYZ","CPQ"],[-1,"YZQ","OCP"],[-1,"OZQ","CYP"],[-1,"OYQ","CZP"]]] | ["six","CPOYZQ"] |
| 108 | ["balance",[[-1,"HCF","DYZ"],[1,"CFY","HDZ"],[-1,"HFY","CDZ"],[-1,"HCY","DFZ"]]] | ["six","DZHCFY"] |
| 109 | ["balance",[[1,"HCY","DZP"],[-1,"CYP","HDZ"],[1,"HYP","CDZ"],[1,"HCP","DYZ"]]] | ["six","DZHCYP"] |
| 110 | ["balance",[[-1,"ODZ","FYQ"],[1,"DZQ","OFY"],[-1,"OZQ","DFY"],[1,"ODQ","FYZ"]]] | ["six","FYODZQ"] |
| 111 | ["balance",[[-1,"OHD","FZP"],[-1,"HDP","OFZ"],[-1,"ODP","HFZ"],[1,"OHP","DFZ"]]] | ["six","FZOHDP"] |
| 112 | ["balance",[[1,"OHD","FZP"],[-1,"HDZ","OFP"],[1,"ODZ","HFP"],[1,"OHZ","DFP"]]] | ["six","FPOHDZ"] |
| 113 | ["balance",[[1,"HDY","FZP"],[1,"DYZ","HFP"],[1,"HYZ","DFP"],[-1,"HDZ","FYP"]]] | ["six","FPHDYZ"] |
| 114 | ["balance",[[1,"ODF","YZQ"],[1,"DFQ","OYZ"],[-1,"OFQ","DYZ"],[1,"ODQ","FYZ"]]] | ["six","YZODFQ"] |
| 115 | ["balance",[[-1,"OHC","FYP"],[-1,"HCF","OYP"],[1,"OCF","HYP"],[-1,"OHF","CYP"]]] | ["six","YPOHCF"] |
| 116 | ["balance",[[-1,"OHD","FYP"],[-1,"HDF","OYP"],[1,"ODF","HYP"],[-1,"OHF","DYP"]]] | ["six","YPOHDF"] |
| 117 | ["balance",[[-1,"OHF","YPQ"],[-1,"HFP","OYQ"],[-1,"OFP","HYQ"],[1,"OHP","FYQ"]]] | ["six","YQOHFP"] |
| 118 | ["balance",[[1,"HCD","FYQ"],[-1,"CDF","HYQ"],[-1,"HDF","CYQ"],[-1,"HCF","DYQ"]]] | ["six","YQHCDF"] |
| 119 | ["balance",[[-1,"HFZ","YPQ"],[-1,"FZP","HYQ"],[1,"HZP","FYQ"],[-1,"HFP","YZQ"]]] | ["six","YQHFZP"] |
| 120 | ["balance",[[1,"CDZ","YPQ"],[-1,"DZP","CYQ"],[1,"CZP","DYQ"],[1,"CDP","YZQ"]]] | ["six","YQCDZP"] |
| 121 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 122 | ["balance",[[1,"HCY","ZPQ"],[1,"CYQ","HZP"],[1,"HYQ","CZP"],[-1,"HCQ","YZP"]]] | ["six","ZPHCYQ"] |
| 123 | ["balance",[[-1,"OHC","YZQ"],[-1,"HCY","OZQ"],[1,"OCY","HZQ"],[-1,"OHY","CZQ"]]] | ["six","ZQOHCY"] |
| 124 | ["balance",[[-1,"OHY","ZPQ"],[1,"HYP","OZQ"],[1,"OYP","HZQ"],[1,"OHP","YZQ"]]] | ["six","ZQOHYP"] |
| 125 | ["balance",[[1,"OCF","YZQ"],[1,"CFY","OZQ"],[1,"OFY","CZQ"],[-1,"OCY","FZQ"]]] | ["six","ZQOCFY"] |
| 126 | ["balance",[[1,"OCY","ZPQ"],[-1,"CYP","OZQ"],[-1,"OYP","CZQ"],[-1,"OCP","YZQ"]]] | ["six","ZQOCYP"] |
| 127 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 128 | ["balance",[[1,"CDF","YZQ"],[1,"DFY","CZQ"],[1,"CFY","DZQ"],[-1,"CDY","FZQ"]]] | ["six","ZQCDFY"] |
| 129 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 130 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 131 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 132 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 133 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 134 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 135 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 136 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 137 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 138 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 139 | ["linear",{"OCY":-1,"OYP":-1,"OCP":1,"CYP":-1},"0"] | ["affine_quad","OCYP",-1] |
| 140 | ["linear",{"OCP":-1,"OPQ":1,"OCQ":1,"CPQ":-1},"0"] | ["affine_quad","OCPQ",-1] |
| 141 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 142 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 143 | ["linear",{"ODY":-1,"OYP":-1,"ODP":1,"DYP":-1},"0"] | ["affine_quad","ODYP",-1] |
| 144 | ["linear",{"ODP":-1,"OPQ":1,"ODQ":-1,"DPQ":1},"0"] | ["affine_quad","ODPQ",-1] |
| 145 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 146 | ["linear",{"OFY":-1,"OYQ":-1,"OFQ":1,"FYQ":-1},"0"] | ["affine_quad","OFYQ",1] |
| 147 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 148 | ["linear",{"OYZ":-1,"OZP":1,"OYP":-1,"YZP":-1},"0"] | ["affine_quad","OYZP",1] |
| 149 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 150 | ["linear",{"OYP":-1,"OPQ":1,"OYQ":-1,"YPQ":-1},"0"] | ["affine_quad","OYPQ",-1] |
| 151 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 152 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 153 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 154 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 155 | ["linear",{"CDF":1,"CFP":-1,"CDP":-1,"DFP":-1},"0"] | ["affine_quad","CDFP",1] |
| 156 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 157 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 158 | ["linear",{"CFZ":-1,"CZQ":-1,"CFQ":1,"FZQ":-1},"0"] | ["affine_quad","CFZQ",1] |
| 159 | ["linear",{"CYZ":-1,"CZQ":-1,"CYQ":1,"YZQ":-1},"0"] | ["affine_quad","CYZQ",1] |
| 160 | ["linear",{"CZP":-1,"CPQ":1,"CZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","CZPQ",-1] |
| 161 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 162 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 163 | ["support","OZP","OHZ","HZP","1023/1000"] | ["support_pent","ZPFHO"] |
| 164 | ["support","OHZ","OZP","OHP","1023/1000"] | ["support_pent","OHFPZ"] |
| 165 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 166 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 167 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 168 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 169 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 170 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["CFQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FQ"] |
| 171 | ["bary",["YZP",1],[["OZP",1],["HZP",1],["CZP",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","ZP"] |
| 172 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 173 | ["bary",["OPQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OQ"] |
| 174 | ["bary",["DFP",1],[["ODF",1],["HDF",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DF"] |
| 175 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["FZP",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FP"] |
| 176 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 177 | ["bary",["YZP",1],[["OZP",1],["CZP",1],["FZP",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","ZP"] |
| 178 | ["bary",["OYQ",1],[null,["OCQ",-1],["OPQ",1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","OQ"] |
| 179 | ["bary",["HFY",-1],[["OHF",-1],["HCF",-1],["HFP",-1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","HF"] |
| 180 | ["bary",["CDY",1],[["OCD",1],null,["CDP",1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","CD"] |
| 181 | ["bary",["CYQ",1],[["OCQ",1],null,["CPQ",1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","CQ"] |
| 182 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OC"] |
| 183 | ["bary",["OZP",1],[null,["ODZ",1],["OFZ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OZ"] |
| 184 | ["bary",["OPQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OQ"] |
| 185 | ["bary",["CPQ",1],[["OCQ",1],["CDQ",1],["CFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CQ"] |
| 186 | ["bary",["DPQ",-1],[["ODQ",-1],null,["DFQ",-1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","DQ"] |
| 187 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 188 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OF"] |
| 189 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],["DZQ",-1]],"OFZ",["FYZ","OYZ","OFY"]] | ["bary","OFZ","Y","DQ"] |
| 190 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 191 | ["bary",["HYQ",-1],[["OHQ",-1],["HFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HQ"] |
| 192 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 193 | ["bary",["OCZ",1],[null,["OCY",1],["OCQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","OC"] |
| 194 | ["bary",["OZQ",1],[null,["OYQ",1],null],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","OQ"] |
| 195 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 196 | ["bary",["DFZ",1],[["ODF",1],["DFY",1],["DFQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DF"] |
| 197 | ["bary",["DZP",1],[["ODP",1],["DYP",1],["DPQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DP"] |
| 198 | ["bary",["ZPQ",-1],[["OPQ",-1],["YPQ",-1],null],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","PQ"] |
| 199 | ["bary",["OCY",1],[null,["OCZ",1],["OCP",1]],"OZP",["YZP","OYP","OYZ"]] | ["bary","OZP","Y","OC"] |
| 200 | ["bary",["OYQ",1],[null,["OZQ",1],["OPQ",1]],"OZP",["YZP","OYP","OYZ"]] | ["bary","OZP","Y","OQ"] |
| 201 | ["bary",["OHY",-1],[null,["OHP",-1],["OHQ",-1]],"OPQ",["YPQ","OYQ","OYP"]] | ["bary","OPQ","Y","OH"] |
| 202 | ["bary",["OCY",1],[null,["OCP",1],["OCQ",1]],"OPQ",["YPQ","OYQ","OYP"]] | ["bary","OPQ","Y","OC"] |
| 203 | ["bary",["OFY",-1],[null,["OFP",-1],["OFQ",-1]],"OPQ",["YPQ","OYQ","OYP"]] | ["bary","OPQ","Y","OF"] |
| 204 | ["bary",["CYP",1],[["OCP",1],null,["CPQ",-1]],"OPQ",["YPQ","OYQ","OYP"]] | ["bary","OPQ","Y","CP"] |
| 205 | ["bary",["CYQ",1],[["OCQ",1],["CPQ",1],null],"OPQ",["YPQ","OYQ","OYP"]] | ["bary","OPQ","Y","CQ"] |
| 206 | ["bary",["FYZ",-1],[["OFZ",-1],["FZP",1],["FZQ",1]],"OPQ",["YPQ","OYQ","OYP"]] | ["bary","OPQ","Y","FZ"] |
| 207 | ["bary",["ODZ",-1],[null,["ODP",1],["ODQ",-1]],"OPQ",["ZPQ","OZQ","OZP"]] | ["bary","OPQ","Z","OD"] |
| 208 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 209 | ["bary",["OHP",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OH"] |
| 210 | ["bary",["OFP",-1],[["OHF",1],["OCF",-1],["ODF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OF"] |
| 211 | ["bary",["HCP",1],[null,null,["HCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HC"] |
| 212 | ["bary",["HDP",-1],[null,["HCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HD"] |
| 213 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 214 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 215 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 216 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HD"] |
| 217 | ["bary",["DFZ",1],[["CDF",1],null,null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DF"] |
| 218 | ["bary",["OHP",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OH"] |
| 219 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OC"] |
| 220 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 221 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 222 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 223 | ["bary",["CPQ",1],[null,["CDQ",1],["CFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CQ"] |
| 224 | ["bary",["DFP",1],[["CDF",1],null,null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DF"] |
| 225 | ["bary",["ODZ",-1],[["OCD",-1],null,["ODY",1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","OD"] |
| 226 | ["bary",["CZQ",1],[null,["CDQ",1],["CYQ",1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","CQ"] |
| 227 | ["bary",["DYZ",1],[["CDY",1],null,null],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","DY"] |
| 228 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 229 | ["bary",["ODZ",-1],[["OCD",-1],null,["ODP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OD"] |
| 230 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 231 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 232 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 233 | ["bary",["HZP",-1],[["HCP",-1],["HDP",1],null],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HP"] |
| 234 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 235 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 236 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 237 | ["bary",["OCZ",1],[null,["OCY",1],["OCQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","OC"] |
| 238 | ["bary",["OZQ",1],[["OCQ",-1],["OYQ",1],null],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","OQ"] |
| 239 | ["bary",["HFZ",-1],[["HCF",-1],["HFY",-1],["HFQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HF"] |
| 240 | ["bary",["DFZ",1],[["CDF",1],["DFY",1],["DFQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DF"] |
| 241 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 242 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 243 | ["bary",["ODP",1],[null,["ODF",1],["ODZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OD"] |
| 244 | ["bary",["OZP",1],[["ODZ",1],["OFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OZ"] |
| 245 | ["bary",["OPQ",1],[["ODQ",1],["OFQ",1],["OZQ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OQ"] |
| 246 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 247 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 248 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s19 | 7 | sub | DFY | hi | 374729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s34 | 12 | sub | YPQ | hi | 26069/50000 | hi_OPQ,lo_OYP,lo_OYQ |
| s39 | 14 | sub | HDZ | hi | 788053/1000000 | hi_HCD,lo_CDZ,lo_HCZ |
| s50 | 18 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s51 | 19 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s84 | 33 | sumlo | HCP | lo | 101707/1000000 | lo_CDP,lo_HCF,lo_CFP,lo_HCD,hi_CDF |
| s85 | 35 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s86 | 36 | sumlo | HCZ | lo | 105159/1000000 | lo_CDZ,s84,lo_CZP,lo_HCD,s51 |
| s88 | 37 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s51 |
| s91 | 39 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s94 | 40 | sumlo | DPQ | lo | 2299/20000 | lo_DFP,lo_ODQ,s91,lo_ODP,hi_ODF |
| s96 | 41 | sumlo | DZP | lo | 23281/200000 | s94,lo_ODZ,lo_DZQ,lo_ODP,hi_ODQ |
| s105 | 45 | sumlo | HCF | lo | 48829/500000 | lo_CDF,lo_HFY,lo_CFY,lo_HDF,s19 |
| s107 | 48 | sumlo | CFP | lo | 105463/1000000 | lo_CDF,lo_FZP,s88,lo_DFP,s50 |
| s109 | 52 | sumlo | OCY | lo | 24883/250000 | lo_CYP,lo_OYQ,lo_CYQ,lo_OYP,s34 |
| s117 | 71 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s118 | 72 | sumhi | CYQ | hi | 120911/200000 | hi_CDQ,hi_OYQ,hi_DYQ,hi_OCQ,lo_ODQ |
| s126 | 73 | balance_lo | OHP | lo | 143973/1000000 | lo_FZP,lo_OHD,s96,lo_OHF,lo_DFP,lo_OHZ,s50 |
| s128 | 74 | balance_lo | HCP | lo | 2111/15625 | s105,lo_ODP,s107,lo_OHD,lo_HFP,lo_OCD,hi_ODF |
| s135 | 76 | balance_lo | OHY | lo | 61363/500000 | lo_HCD,lo_OYP,lo_HDP,s109,s128,lo_ODY,s51 |
| s136 | 79 | balance_lo | OFY | lo | 118809/1000000 | lo_CDF,lo_OYP,lo_DFP,s109,s107,lo_ODY,s51 |
| s139 | 81 | balance_lo | HYQ | lo | 2291/10000 | lo_HCY,lo_OPQ,lo_CYQ,s126,s85,lo_OYP,hi_OCP |
| s147 | 85 | balance_lo | CFY | lo | 100437/1000000 | s105,lo_OYQ,lo_HFY,lo_OCQ,lo_HCY,lo_OFQ,hi_OHQ |
| s148 | 86 | balance_lo | HCP | lo | 474/3125 | s105,lo_OPQ,s107,lo_OHQ,lo_HFP,lo_OCQ,hi_OFQ |
| s149 | 87 | balance_lo | CYP | lo | 115509/1000000 | lo_HCY,lo_OPQ,lo_HYP,lo_OCQ,s148,lo_OYQ,hi_OHQ |
| s150 | 88 | balance_lo | CDY | lo | 29327/100000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s147,lo_ODQ,hi_OFQ |
| s152 | 89 | balance_lo | DYP | lo | 41179/250000 | lo_ODY,s148,lo_OYP,lo_HCD,lo_ODP,lo_HCY,hi_OHC |
| s153 | 92 | balance_lo | YPQ | lo | 10559/50000 | lo_OYP,s85,lo_OPQ,lo_HCY,lo_OYQ,s148,hi_OHC |
| s157 | 95 | balance_lo | OFP | lo | 147751/1000000 | lo_OFZ,lo_HDP,lo_FZP,lo_OHD,lo_OZP,lo_HDF,s39 |
| s166 | 105 | balance_lo | DYZ | lo | 77373/500000 | lo_YZQ,lo_CDF,lo_DZQ,s147,lo_DYQ,s88,s117 |
| s167 | 106 | balance_lo | CFY | lo | 6317/62500 | lo_HDF,s109,lo_ODF,lo_HCY,lo_OHF,s150,hi_OHD |
| s168 | 111 | balance_lo | OHP | lo | 82731/500000 | lo_OHD,lo_FZP,lo_HDP,lo_OFZ,lo_ODP,lo_HFZ,s50 |
| s170 | 116 | balance_lo | HYP | lo | 11827/125000 | lo_OHD,lo_FYP,lo_HDF,lo_OYP,lo_OHF,s152,hi_ODF |
| s173 | 120 | balance_lo | DZP | lo | 29581/250000 | lo_CDZ,s153,lo_CZP,lo_DYQ,lo_CDP,lo_YZQ,s118 |
| s174 | 121 | balance_lo | HZP | lo | 21699/200000 | lo_OHD,lo_FZP,lo_HDF,lo_OZP,lo_OHF,s173,hi_ODF |
| s177 | 128 | balance_lo | FZQ | lo | 79159/500000 | lo_CDF,lo_YZQ,lo_DFY,lo_CZQ,s167,lo_DZQ,hi_CDY |
| s186 | 132 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s193 | 136 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s204 | 142 | linear | DFQ | lo | 20081/50000 | lo_ODF,lo_ODQ,hi_OFQ |
| s206 | 143 | linear | ODP | lo | 87679/250000 | s152,lo_ODY,lo_OYP |
| s211 | 145 | linear | OFZ | lo | 304809/1000000 | lo_FYZ,s136,lo_OYZ |
| s232 | 153 | linear | HDY | lo | 88083/250000 | s152,lo_HDP,s170 |
| s237 | 154 | linear | DFZ | hi | 346347/500000 | hi_CDF,lo_CDZ,s88 |
| s238 | 155 | linear | CDP | hi | 691239/1000000 | hi_CDF,s107,lo_DFP |
| s240 | 156 | linear | CDY | lo | 170373/500000 | lo_CDZ,lo_CYZ,s166 |
| s244 | 158 | linear | CFQ | lo | 177663/500000 | s88,lo_CZQ,s177 |
| s249 | 161 | linear | DFY | lo | 87679/250000 | lo_DFP,s152,lo_FYP |
| s256 | 162 | quad | CDP | lo | 81/250 | hi_CDQ |
| s257 | 165 | linear | OHC | lo | 367/1000 | s193 |
| s258 | 166 | linear | HCD | hi | 907/1000 | lo_HDF |
| s268 | 168 | bary_hi | FYZ | lo | 31537/250000 | hi_OHC,lo_HCY,s109,s135,s211,lo_HFZ,s88 |
| s269 | 169 | bary_hi | FYP | lo | 103427/1000000 | hi_OHC,lo_HCY,s109,s135,s157,lo_HFP,s107 |
| s270 | 170 | bary_hi | FYQ | lo | 5793/25000 | hi_OHC,lo_HCY,s109,s135,lo_OFQ,lo_HFQ,s244 |
| s272 | 171 | bary_lo | YZP | lo | 122669/1000000 | hi_OHC,lo_HCY,s109,s135,lo_OZP,s174,lo_CZP |
| s284 | 172 | bary_hi | OCP | hi | 283087/500000 | hi_OHD,lo_HDP,s206,s168,hi_OHC,hi_OCD |
| s288 | 173 | bary_hi | OPQ | hi | 43369/50000 | hi_OHD,lo_HDP,s206,s168,hi_OHQ,hi_ODQ |
| s299 | 174 | bary_lo | DFP | lo | 48579/500000 | hi_OHD,lo_HDP,s206,s168,lo_ODF,lo_HDF |
| s309 | 176 | bary_lo | OCY | lo | 56903/500000 | hi_OHQ,s139,lo_OYQ,s135,s257,lo_OCQ |
| s345 | 178 | bary_hi | OYQ | hi | 133167/250000 | s284,s149,lo_OYP,s309,lo_OCQ,s288 |
| s347 | 179 | bary_hi | HFY | lo | 18753/200000 | s284,s149,lo_OYP,s309,lo_OHF,s105,lo_HFP |
| s348 | 180 | bary_hi | CDY | hi | 277087/500000 | s284,s149,lo_OYP,s309,hi_OCD,s238 |
| s365 | 184 | bary_hi | OPQ | hi | 106033/125000 | hi_ODF,s299,s157,s206,hi_ODQ,hi_OFQ |
| s371 | 185 | bary_hi | CPQ | hi | 166411/250000 | hi_ODF,s299,s157,s206,hi_OCQ,hi_CDQ,s117 |
| s376 | 186 | bary_hi | DPQ | lo | 55663/250000 | hi_ODF,s299,s157,s206,lo_ODQ,s204 |
| s388 | 187 | bary_lo | OHZ | hi | 633157/1000000 | hi_ODQ,lo_DZQ,lo_OZQ,lo_ODZ,hi_OHD,hi_OHQ |
| s390 | 188 | bary_lo | OFZ | hi | 618307/1000000 | hi_ODQ,lo_DZQ,lo_OZQ,lo_ODZ,hi_ODF,hi_OFQ |
| s428 | 189 | bary_hi | DYQ | lo | 11941/31250 | s390,s268,lo_OYZ,s136,lo_ODQ,s204,lo_DZQ |
| s430 | 190 | bary_lo | HDY | hi | 82967/125000 | hi_OFQ,s270,lo_OYQ,s136,hi_OHD,lo_HDF,hi_HDQ |
| s434 | 192 | bary_hi | DFY | hi | 64301/100000 | hi_OFQ,s270,lo_OYQ,s136,hi_ODF,hi_DFQ |
| s441 | 195 | bary_hi | HDZ | lo | 104553/250000 | s345,lo_YZQ,lo_OZQ,lo_OYZ,lo_OHD,s232,s186 |
| s445 | 197 | bary_lo | DZP | lo | 41461/200000 | s345,lo_YZQ,lo_OZQ,lo_OYZ,s206,s152,s376 |
| s454 | 203 | bary_hi | OFY | lo | 124683/1000000 | s365,s153,lo_OYQ,lo_OYP,s157,lo_OFQ |
| s459 | 205 | bary_hi | CYQ | hi | 59157/125000 | s365,s153,lo_OYQ,lo_OYP,hi_OCQ,s371 |
| s473 | 208 | bary_lo | HDZ | hi | 708841/1000000 | s258,lo_CDZ,s441,s86,s258 |
| s484 | 213 | bary_hi | CDP | hi | 8279/12500 | s258,s256,lo_HDP,s148,s258 |
| s487 | 214 | bary_lo | DFP | lo | 104381/1000000 | s258,s256,lo_HDP,s148,lo_HDF,lo_CDF |
| s497 | 215 | bary_hi | CYP | lo | 130919/1000000 | s473,s445,s174,lo_HDP,lo_HCY,s240,lo_CYZ |
| s511 | 218 | bary_hi | OHP | lo | 196387/1000000 | hi_CDF,s487,s107,s256,s257,lo_OHD,lo_OHF |
| s512 | 219 | bary_hi | OCP | hi | 553501/1000000 | hi_CDF,s487,s107,s256,hi_OCD,hi_OCF |
| s516 | 220 | bary_hi | OPQ | hi | 52061/62500 | hi_CDF,s487,s107,s256,lo_OCQ,hi_ODQ,hi_OFQ |
| s519 | 221 | bary_lo | HYP | lo | 124019/1000000 | hi_CDF,s487,s107,s256,lo_HCY,s232,s347 |
| s520 | 223 | bary_hi | CPQ | hi | 650161/1000000 | hi_CDF,s487,s107,s256,hi_CDQ,s117 |
| s526 | 226 | bary_lo | CZQ | lo | 46821/500000 | s348,s166,lo_CYZ,lo_CDZ,lo_CDQ,lo_CYQ |
| s528 | 227 | bary_hi | DYZ | hi | 184087/500000 | s348,s166,lo_CYZ,lo_CDZ,s348 |
| s536 | 228 | bary_hi | OHZ | lo | 319661/1000000 | s484,s445,lo_CZP,lo_CDZ,s257,lo_OHD,s511 |
| s540 | 230 | bary_lo | HCZ | lo | 59373/500000 | s484,s445,lo_CZP,lo_CDZ,lo_HCD,s148 |
| s542 | 232 | bary_lo | HYZ | lo | 133769/1000000 | s484,s445,lo_CZP,lo_CDZ,lo_HCY,s232,s519 |
| s544 | 234 | bary_hi | CFZ | lo | 112257/1000000 | s484,s445,lo_CZP,lo_CDZ,lo_CDF,s107 |
| s547 | 236 | bary_lo | FYZ | lo | 17057/125000 | s484,s445,lo_CZP,lo_CDZ,s167,s249,s269 |
| s595 | 241 | bary_lo | DZP | lo | 103701/500000 | s459,lo_YZQ,s526,lo_CYZ,s256,s152,s376 |
| s615 | 242 | bary_hi | OHP | lo | 51961/250000 | s237,lo_FZP,s595,s487,lo_OHD,lo_OHF,s536 |
| s618 | 246 | bary_lo | HCP | lo | 180899/1000000 | s237,lo_FZP,s595,s487,lo_HCD,s105,s540 |
| s619 | 247 | bary_lo | HYP | lo | 134507/1000000 | s237,lo_FZP,s595,s487,s232,s347,s542 |
| s620 | 248 | bary_hi | CFP | lo | 110091/1000000 | s237,lo_FZP,s595,s487,lo_CDF,s544 |
| s651 | 6 | sum | OCP | lo | 13509/40000 | s497,s309,lo_OYP |
| s655 | 8 | sum | OFZ | lo | 354139/1000000 | s547,s454,lo_OYZ |
| s659 | 11 | sum | OZP | lo | 308669/1000000 | lo_OYP,lo_OYZ,s272 |
| s662 | 12 | sub | YPQ | hi | 28811/62500 | s516,lo_OYP,lo_OYQ |
| s664 | 14 | sub | HDZ | hi | 347627/500000 | s258,lo_CDZ,s540 |
| s665 | 15 | sub | CDP | hi | 633101/1000000 | s258,s618,lo_HDP |
| s669 | 18 | sub | DFZ | hi | 136889/200000 | hi_CDF,lo_CDZ,s544 |
| s670 | 20 | sum | CDP | lo | 196701/500000 | lo_CDZ,lo_CZP,s595 |
| s674 | 22 | sum | CYQ | lo | 139821/500000 | lo_CYZ,s526,lo_YZQ |
| s677 | 23 | sum | DFY | lo | 93131/250000 | s487,s152,s269 |
| s685 | 30 | sumlo | HCF | lo | 111071/1000000 | lo_HCD,s347,lo_HCY,lo_HDF,s430 |
| s688 | 32 | sumlo | CFY | lo | 112887/1000000 | lo_CDF,lo_HCY,s240,s685,s258 |
| s689 | 35 | sumlo | HCQ | lo | 19851/50000 | lo_CDQ,lo_HCY,s674,lo_HCD,s348 |
| s691 | 36 | sumlo | HCZ | lo | 128519/1000000 | lo_CDZ,s618,lo_CZP,lo_HCD,s665 |
| s694 | 37 | sumlo | CFZ | lo | 118117/1000000 | lo_CDF,lo_CZP,lo_CDZ,s620,s665 |
| s697 | 42 | sumlo | DFP | lo | 111497/1000000 | lo_CDF,lo_HDP,s670,lo_HDF,s258 |
| s700 | 43 | sumlo | HFQ | lo | 54461/500000 | s204,lo_OHF,lo_HDF,lo_OFQ,hi_ODF |
| s703 | 45 | sumlo | HCF | lo | 117527/1000000 | lo_CDF,s347,s688,lo_HDF,s434 |
| s705 | 48 | sumlo | CFP | lo | 113539/1000000 | lo_CDF,lo_FZP,s694,s697,s669 |
| s706 | 52 | sumlo | OCY | lo | 135653/1000000 | s497,lo_OYQ,s674,lo_OYP,s662 |
| s716 | 66 | sumlo | CZQ | lo | 46983/500000 | lo_CDZ,lo_YZQ,lo_CYZ,lo_DZQ,s528 |
| s722 | 76 | balance_lo | OHY | lo | 74223/500000 | lo_HCD,lo_OYP,lo_HDP,s706,s618,lo_ODY,s665 |
| s723 | 79 | balance_lo | OFY | lo | 71257/500000 | lo_CDF,lo_OYP,s697,s706,s705,lo_ODY,s665 |
| s724 | 81 | balance_lo | HYQ | lo | 144161/500000 | lo_HCY,lo_OPQ,s674,s615,s689,lo_OYP,s512 |
| s730 | 92 | balance_lo | YPQ | lo | 59817/250000 | lo_OYP,s689,lo_OPQ,lo_HCY,lo_OYQ,s618,hi_OHC |
| s733 | 95 | balance_lo | OFP | lo | 45373/250000 | s655,lo_HDP,lo_FZP,lo_OHD,s659,lo_HDF,s664 |
| s734 | 96 | balance_lo | CFP | lo | 7567/62500 | s694,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s664 |
| s737 | 101 | balance_lo | HZQ | lo | 58049/250000 | s542,lo_CDQ,lo_YZQ,lo_HCD,s724,lo_CDZ,s348 |
| s743 | 102 | balance_lo | DYP | lo | 181721/1000000 | lo_ODY,s734,lo_OYP,lo_CDF,s206,s688,hi_OCF |
| s745 | 107 | balance_lo | OYZ | lo | 1671/15625 | lo_YZQ,s651,lo_OZQ,s497,lo_OYQ,lo_CZP,s520 |
| s748 | 114 | balance_lo | DYZ | lo | 40997/200000 | lo_ODF,lo_YZQ,s204,s745,lo_ODQ,s547,hi_OFQ |
| s750 | 118 | balance_lo | FYQ | lo | 149399/500000 | lo_CDF,s724,lo_HDF,s674,s703,s428,s258 |
| s754 | 128 | balance_lo | FZQ | lo | 236463/1000000 | lo_CDF,lo_YZQ,s677,s716,s688,lo_DZQ,s348 |
| s761 | 133 | linear | OHZ | lo | 389159/1000000 | s542,s722,s745 |
| s762 | 134 | linear | OHQ | lo | 89471/125000 | s724,s722,lo_OYQ |
| s765 | 137 | linear | OCF | lo | 195527/500000 | s688,s706,s723 |
| s767 | 138 | linear | CFQ | hi | 390663/500000 | s765,hi_OCQ,hi_OFQ |
| s768 | 139 | linear | OCP | lo | 89893/250000 | s497,s706,lo_OYP |
| s771 | 143 | linear | ODP | lo | 367721/1000000 | s743,lo_ODY,lo_OYP |
| s775 | 146 | linear | OFQ | lo | 90039/125000 | s750,s723,lo_OYQ |
| s779 | 148 | linear | OZP | lo | 322613/1000000 | lo_OYP,s745,s272 |
| s780 | 149 | linear | OYQ | lo | 18309/62500 | s745,lo_OZQ,lo_YZQ |
| s784 | 151 | linear | HDZ | hi | 685481/1000000 | lo_CDZ,s258,s691 |
| s786 | 152 | linear | HCP | hi | 210299/500000 | s670,s258,lo_HDP |
| s789 | 153 | linear | HDY | lo | 102307/250000 | s743,lo_HDP,s619 |
| s793 | 156 | linear | CDY | lo | 78197/200000 | lo_CDZ,lo_CYZ,s748 |
| s798 | 159 | linear | CYQ | lo | 139983/500000 | lo_CYZ,s716,lo_YZQ |
| s801 | 161 | linear | DFY | lo | 79329/200000 | s697,s743,s269 |
| s804 | 163 | support_z | HZP | lo | 6147/50000 | s779,s388 |
| s808 | 167 | linear | CDF | hi | 882473/1000000 | s703 |
| s810 | 169 | bary_hi | FYP | lo | 56261/500000 | hi_OHC,lo_HCY,s706,s722,s733,lo_HFP,s734 |
| s824 | 177 | bary_lo | YZP | lo | 133819/1000000 | hi_OCF,s688,s723,s706,s779,lo_CZP,lo_FZP |
| s827 | 178 | bary_hi | OYQ | hi | 48037/100000 | s512,s497,lo_OYP,s706,lo_OCQ,s516 |
| s829 | 179 | bary_hi | HFY | lo | 97121/1000000 | s512,s497,lo_OYP,s706,lo_OHF,s703,lo_HFP |
| s830 | 180 | bary_hi | CDY | hi | 64151/125000 | s512,s497,lo_OYP,s706,hi_OCD,s665 |
| s832 | 181 | bary_hi | CYQ | hi | 431133/1000000 | s512,s497,lo_OYP,s706,hi_OCQ,s520 |
| s840 | 184 | bary_hi | OPQ | hi | 412499/500000 | hi_ODF,s697,s733,s771,hi_ODQ,hi_OFQ |
| s844 | 186 | bary_hi | DPQ | lo | 240591/1000000 | hi_ODF,s697,s733,s771,lo_ODQ,s204 |
| s861 | 190 | bary_lo | HDY | hi | 642877/1000000 | hi_OFQ,s750,s780,s723,hi_OHD,lo_HDF,hi_HDQ |
| s864 | 192 | bary_hi | DFY | hi | 624229/1000000 | hi_OFQ,s750,s780,s723,hi_ODF,hi_DFQ |
| s872 | 196 | bary_lo | DFZ | lo | 11383/25000 | s827,lo_YZQ,lo_OZQ,s745,lo_ODF,s801,s204 |
| s873 | 197 | bary_lo | DZP | lo | 57709/250000 | s827,lo_YZQ,lo_OZQ,s745,s771,s743,s844 |
| s878 | 201 | bary_hi | OHY | lo | 19311/125000 | s840,s730,s780,lo_OYP,s615,s762 |
| s879 | 202 | bary_lo | OCY | lo | 69081/500000 | s840,s730,s780,lo_OYP,s768,lo_OCQ |
| s881 | 203 | bary_hi | OFY | lo | 145643/1000000 | s840,s730,s780,lo_OYP,s733,s775 |
| s910 | 215 | bary_hi | CYP | lo | 146443/1000000 | s784,s873,s804,lo_HDP,lo_HCY,s793,lo_CYZ |
| s912 | 216 | bary_lo | HDZ | hi | 136043/200000 | s808,s872,s694,lo_CDZ,s258,lo_HDF |
| s918 | 217 | bary_hi | DFZ | hi | 167839/250000 | s808,s872,s694,lo_CDZ,s808 |
| s921 | 219 | bary_hi | OCP | hi | 546669/1000000 | s808,s697,s734,s670,hi_OCD,hi_OCF |
| s922 | 220 | bary_hi | OPQ | hi | 819021/1000000 | s808,s697,s734,s670,lo_OCQ,hi_ODQ,hi_OFQ |
| s925 | 221 | bary_lo | HYP | lo | 69111/500000 | s808,s697,s734,s670,lo_HCY,s789,s829 |
| s926 | 223 | bary_hi | CPQ | hi | 158259/250000 | s808,s697,s734,s670,hi_CDQ,s767 |
| s931 | 226 | bary_lo | CZQ | lo | 101291/1000000 | s830,s748,lo_CYZ,lo_CDZ,lo_CDQ,s798 |
| s934 | 227 | bary_hi | DYZ | hi | 40901/125000 | s830,s748,lo_CYZ,lo_CDZ,s830 |
| s941 | 232 | bary_lo | HYZ | lo | 29219/200000 | s665,s873,lo_CZP,lo_CDZ,lo_HCY,s789,s925 |
| s942 | 233 | bary_lo | HZP | hi | 283369/1000000 | s665,s873,lo_CZP,lo_CDZ,s786,lo_HDP |
| s943 | 234 | bary_hi | CFZ | lo | 11973/100000 | s665,s873,lo_CZP,lo_CDZ,lo_CDF,s734 |
| s944 | 236 | bary_lo | FYZ | lo | 154391/1000000 | s665,s873,lo_CZP,lo_CDZ,s688,s801,s810 |
| s970 | 239 | bary_hi | HFZ | lo | 26017/250000 | s832,lo_YZQ,s931,lo_CYZ,s703,s829,s700 |
| s973 | 241 | bary_lo | DZP | lo | 240081/1000000 | s832,lo_YZQ,s931,lo_CYZ,s670,s743,s844 |
| s988 | 242 | bary_hi | OHP | lo | 225439/1000000 | s918,lo_FZP,s973,s697,lo_OHD,lo_OHF,s761 |
| s991 | 246 | bary_lo | HCP | lo | 24901/125000 | s918,lo_FZP,s973,s697,lo_HCD,s703,s691 |
| s993 | 247 | bary_lo | HYP | lo | 148489/1000000 | s918,lo_FZP,s973,s697,s789,s829,s941 |
| s1019 | 3 | sum | OHQ | lo | 367877/500000 | s724,s878,s780 |
| s1023 | 6 | sum | OCP | lo | 75521/200000 | s910,s879,lo_OYP |
| s1026 | 8 | sum | OFZ | lo | 203489/500000 | s944,s881,s745 |
| s1032 | 11 | sum | OZP | lo | 333763/1000000 | lo_OYP,s745,s824 |
| s1034 | 12 | sub | YPQ | hi | 433077/1000000 | s922,lo_OYP,s780 |
| s1036 | 15 | sub | CDP | hi | 76849/125000 | s258,s991,lo_HDP |
| s1037 | 16 | sum | HCQ | lo | 231003/500000 | s931,s691,s737 |
| s1040 | 20 | sum | CDP | lo | 426081/1000000 | lo_CDZ,lo_CZP,s973 |
| s1042 | 21 | sum | CFQ | lo | 114371/250000 | s943,s931,s754 |
| s1044 | 22 | sum | CYQ | lo | 287291/1000000 | lo_CYZ,s931,lo_YZQ |
| s1047 | 23 | sum | DFY | lo | 20287/50000 | s697,s743,s810 |
| s1048 | 25 | sumlo | OHY | lo | 164179/1000000 | s988,s780,s1019,lo_OYP,s922 |
| s1051 | 30 | sumlo | HCF | lo | 118297/1000000 | lo_HCD,s829,lo_HCY,lo_HDF,s861 |
| s1053 | 32 | sumlo | CFY | lo | 61077/500000 | lo_CDF,lo_HCY,s793,s1051,s258 |
| s1054 | 36 | sumlo | HCZ | lo | 33779/250000 | lo_CDZ,s991,lo_CZP,lo_HCD,s1036 |
| s1055 | 37 | sumlo | CFZ | lo | 3853/31250 | lo_CDF,lo_CZP,lo_CDZ,s734,s1036 |
| s1061 | 45 | sumlo | HCF | lo | 5047/40000 | lo_CDF,s829,s1053,lo_HDF,s864 |
| s1064 | 52 | sumlo | OCY | lo | 160751/1000000 | s910,s780,s1044,lo_OYP,s1034 |
| s1072 | 66 | sumlo | CZQ | lo | 10573/100000 | lo_CDZ,lo_YZQ,lo_CYZ,lo_DZQ,s934 |
| s1075 | 68 | sumlo | OFP | lo | 91763/500000 | lo_FZP,s988,lo_HFP,s1032,s942 |
| s1077 | 70 | sumlo | DFP | lo | 120983/1000000 | s1040,lo_HFP,s734,lo_HDP,s786 |
| s1079 | 79 | balance_lo | OFY | lo | 15493/100000 | lo_CDF,lo_OYP,s1077,s1064,s734,lo_ODY,s1036 |
| s1080 | 81 | balance_lo | HYQ | lo | 4924/15625 | lo_HCY,lo_OPQ,s1044,s988,s1037,lo_OYP,s921 |
| s1081 | 83 | balance_lo | FYQ | lo | 329351/1000000 | s1053,lo_OPQ,s1044,s1075,s1042,lo_OYP,s921 |
| s1083 | 92 | balance_lo | YPQ | lo | 52241/200000 | lo_OYP,s1037,lo_OPQ,lo_HCY,s780,s991,hi_OHC |
| s1084 | 95 | balance_lo | OFP | lo | 196159/1000000 | s1026,lo_HDP,lo_FZP,lo_OHD,s1032,lo_HDF,s912 |
| s1085 | 96 | balance_lo | CFP | lo | 124457/1000000 | s1055,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s912 |
| s1092 | 102 | balance_lo | DYP | lo | 95303/500000 | lo_ODY,s1085,lo_OYP,lo_CDF,s771,s1053,hi_OCF |
| s1093 | 107 | balance_lo | OYZ | lo | 4801/40000 | lo_YZQ,s1023,lo_OZQ,s910,s780,lo_CZP,s926 |
| s1096 | 114 | balance_lo | DYZ | lo | 22293/100000 | lo_ODF,lo_YZQ,s204,s1093,lo_ODQ,s944,hi_OFQ |
| s1101 | 128 | balance_lo | FZQ | lo | 275759/1000000 | lo_CDF,lo_YZQ,s1047,s1072,s1053,lo_DZQ,s830 |
| s1107 | 133 | linear | OHZ | lo | 430299/1000000 | s941,s1048,s1093 |
| s1112 | 137 | linear | OCF | lo | 87567/200000 | s1053,s1064,s1079 |
| s1114 | 138 | linear | CFQ | hi | 146909/200000 | s1112,hi_OCQ,hi_OFQ |
| s1115 | 139 | linear | OCP | lo | 200097/500000 | s910,s1064,lo_OYP |
| s1116 | 140 | linear | CPQ | hi | 604827/1000000 | s1115,hi_OCQ,s922 |
| s1119 | 143 | linear | ODP | lo | 188303/500000 | s1092,lo_ODY,lo_OYP |
| s1120 | 144 | linear | DPQ | lo | 50317/200000 | s1119,lo_ODQ,s922 |
| s1122 | 145 | linear | OFZ | lo | 214673/500000 | s944,s1079,s1093 |
| s1126 | 147 | linear | OFZ | hi | 617621/1000000 | s1101,hi_OFQ,lo_OZQ |
| s1127 | 147 | linear | OFQ | lo | 159621/200000 | s1101,s1122,lo_OZQ |
| s1129 | 148 | linear | OZP | lo | 86711/250000 | lo_OYP,s1093,s824 |
| s1130 | 149 | linear | OYQ | lo | 12241/40000 | s1093,lo_OZQ,lo_YZQ |
| s1134 | 151 | linear | HDZ | hi | 169721/250000 | lo_CDZ,s258,s1054 |
| s1135 | 152 | linear | HCD | lo | 718289/1000000 | s1040,s991,lo_HDP |
| s1137 | 152 | linear | HCP | hi | 387919/1000000 | s1040,s258,lo_HDP |
| s1140 | 153 | linear | HDY | lo | 86419/200000 | s1092,lo_HDP,s993 |
| s1146 | 156 | linear | CDY | lo | 40893/100000 | lo_CDZ,lo_CYZ,s1096 |
| s1151 | 159 | linear | CYQ | lo | 29173/100000 | lo_CYZ,s1072,lo_YZQ |
| s1154 | 161 | linear | DFY | lo | 424111/1000000 | s1077,s1092,s810 |
| s1157 | 163 | support_z | HZP | lo | 66087/500000 | s1129,s388 |
| s1161 | 167 | linear | CDF | hi | 34953/40000 | s1061 |
| s1163 | 168 | bary_hi | FYZ | lo | 78339/500000 | hi_OHC,lo_HCY,s1064,s1048,s1122,s970,s1055 |
| s1167 | 175 | bary_hi | FYP | lo | 58401/500000 | s388,s941,s1093,s1048,s1084,lo_HFP,lo_FZP |
| s1170 | 177 | bary_lo | YZP | lo | 141831/1000000 | hi_OCF,s1053,s1079,s1064,s1129,lo_CZP,lo_FZP |
| s1173 | 178 | bary_hi | OYQ | hi | 222233/500000 | s921,s910,lo_OYP,s1064,lo_OCQ,s922 |
| s1175 | 179 | bary_hi | HFY | lo | 98643/1000000 | s921,s910,lo_OYP,s1064,lo_OHF,s1061,lo_HFP |
| s1176 | 180 | bary_hi | CDY | hi | 499797/1000000 | s921,s910,lo_OYP,s1064,hi_OCD,s1036 |
| s1178 | 181 | bary_hi | CYQ | hi | 389737/1000000 | s921,s910,lo_OYP,s1064,hi_OCQ,s1116 |
| s1185 | 184 | bary_hi | OPQ | hi | 162291/200000 | hi_ODF,s1077,s1084,s1119,hi_ODQ,hi_OFQ |
| s1200 | 189 | bary_hi | DYQ | lo | 204053/500000 | s1126,s1163,s1093,s1079,lo_ODQ,s204,lo_DZQ |
| s1202 | 190 | bary_lo | HDY | hi | 625549/1000000 | hi_OFQ,s1081,s1130,s1079,hi_OHD,lo_HDF,hi_HDQ |
| s1205 | 192 | bary_hi | DFY | hi | 608913/1000000 | hi_OFQ,s1081,s1130,s1079,hi_ODF,hi_DFQ |
| s1216 | 196 | bary_lo | DFZ | lo | 467503/1000000 | s1173,lo_YZQ,lo_OZQ,s1093,lo_ODF,s1154,s204 |
| s1217 | 197 | bary_lo | DZP | lo | 245991/1000000 | s1173,lo_YZQ,lo_OZQ,s1093,s1119,s1092,s1120 |
| s1224 | 202 | bary_lo | OCY | lo | 10099/62500 | s1185,s1083,s1130,lo_OYP,s1115,lo_OCQ |
| s1226 | 203 | bary_hi | OFY | lo | 165447/1000000 | s1185,s1083,s1130,lo_OYP,s1084,s1127 |
| s1246 | 210 | bary_lo | OFP | hi | 421513/1000000 | s258,s1040,lo_HDP,s991,lo_OHF,hi_OCF,hi_ODF |
| s1254 | 215 | bary_hi | CYP | lo | 154509/1000000 | s1134,s1217,s1157,lo_HDP,lo_HCY,s1146,lo_CYZ |
| s1256 | 216 | bary_lo | HDZ | hi | 134519/200000 | s1161,s1216,s1055,lo_CDZ,s258,lo_HDF |
| s1259 | 217 | bary_hi | DFZ | hi | 657529/1000000 | s1161,s1216,s1055,lo_CDZ,s1161 |
| s1261 | 219 | bary_hi | OCP | hi | 33667/62500 | s1161,s1077,s1085,s1040,hi_OCD,hi_OCF |
| s1263 | 220 | bary_hi | OPQ | hi | 201193/250000 | s1161,s1077,s1085,s1040,lo_OCQ,hi_ODQ,hi_OFQ |
| s1266 | 223 | bary_hi | CPQ | hi | 294023/500000 | s1161,s1077,s1085,s1040,hi_CDQ,s1114 |
| s1267 | 225 | bary_lo | ODZ | hi | 172151/500000 | s1176,s1096,lo_CYZ,lo_CDZ,hi_OCD,lo_ODY |
| s1274 | 226 | bary_lo | CZQ | lo | 53099/500000 | s1176,s1096,lo_CYZ,lo_CDZ,lo_CDQ,s1151 |
| s1277 | 227 | bary_hi | DYZ | hi | 313797/1000000 | s1176,s1096,lo_CYZ,lo_CDZ,s1176 |
| s1283 | 230 | bary_lo | HCZ | lo | 13879/100000 | s1036,s1217,lo_CZP,lo_CDZ,s1135,s991 |
| s1284 | 232 | bary_lo | HYZ | lo | 9543/62500 | s1036,s1217,lo_CZP,lo_CDZ,lo_HCY,s1140,s993 |
| s1285 | 233 | bary_lo | HZP | hi | 25649/100000 | s1036,s1217,lo_CZP,lo_CDZ,s1137,lo_HDP |
| s1286 | 234 | bary_hi | CFZ | lo | 3869/31250 | s1036,s1217,lo_CZP,lo_CDZ,lo_CDF,s1085 |
| s1287 | 236 | bary_lo | FYZ | lo | 16543/100000 | s1036,s1217,lo_CZP,lo_CDZ,s1053,s1154,s1167 |
| s1316 | 240 | bary_lo | DFZ | lo | 119379/250000 | s1178,lo_YZQ,s1274,lo_CYZ,lo_CDF,s1154,s204 |
| s1317 | 241 | bary_lo | DZP | lo | 130673/500000 | s1178,lo_YZQ,s1274,lo_CYZ,s1040,s1092,s1120 |
| s1330 | 242 | bary_hi | OHP | lo | 120033/500000 | s1259,lo_FZP,s1317,s1077,lo_OHD,lo_OHF,s1107 |
| s1332 | 244 | bary_hi | OZP | hi | 116331/250000 | s1259,lo_FZP,s1317,s1077,s1267,s1126 |
| s1333 | 246 | bary_lo | HCP | lo | 212243/1000000 | s1259,lo_FZP,s1317,s1077,s1135,s1061,s1283 |
| s1335 | 247 | bary_lo | HYP | lo | 623/4000 | s1259,lo_FZP,s1317,s1077,s1140,s1175,s1284 |
| s1366 | 6 | sum | OCP | lo | 409093/1000000 | s1254,s1224,lo_OYP |
| s1367 | 6 | sub | OCY | hi | 291163/1000000 | s1261,s1254,lo_OYP |
| s1369 | 8 | sum | OFZ | lo | 225451/500000 | s1287,s1226,s1093 |
| s1373 | 10 | sum | OFQ | lo | 819661/1000000 | s1101,s1369,lo_OZQ |
| s1374 | 10 | sub | FZQ | hi | 221239/500000 | hi_OFQ,s1369,lo_OZQ |
| s1376 | 11 | sum | OZP | lo | 44357/125000 | lo_OYP,s1093,s1170 |
| s1378 | 12 | sub | YPQ | hi | 405747/1000000 | s1263,lo_OYP,s1130 |
| s1380 | 15 | sum | HCD | lo | 182831/250000 | s1040,s1333,lo_HDP |
| s1381 | 15 | sub | CDP | hi | 601757/1000000 | s258,s1333,lo_HDP |
| s1385 | 17 | sum | HDY | lo | 109839/250000 | s1092,lo_HDP,s1335 |
| s1387 | 18 | sum | CDF | lo | 173581/250000 | lo_CDZ,s1286,s1316 |
| s1389 | 20 | sum | CDP | lo | 223673/500000 | lo_CDZ,lo_CZP,s1317 |
| s1390 | 20 | sub | DZP | hi | 415757/1000000 | s1381,lo_CDZ,lo_CZP |
| s1391 | 21 | sum | CFQ | lo | 101153/200000 | s1286,s1274,s1101 |
| s1393 | 22 | sum | CYQ | lo | 146099/500000 | lo_CYZ,s1274,lo_YZQ |
| s1395 | 23 | sum | DFY | lo | 428391/1000000 | s1077,s1092,s1167 |
| s1404 | 30 | sumlo | HCF | lo | 32287/250000 | s1380,s1175,lo_HCY,lo_HDF,s1202 |
| s1407 | 32 | sumlo | CFY | lo | 6471/50000 | s1387,lo_HCY,s1146,s1404,s258 |
| s1408 | 36 | sumlo | HCZ | lo | 5833/40000 | lo_CDZ,s1333,lo_CZP,s1380,s1381 |
| s1416 | 43 | sumlo | HFQ | lo | 24283/200000 | s204,lo_OHF,lo_HDF,s1373,hi_ODF |
| s1417 | 44 | sumlo | HFZ | lo | 120003/1000000 | lo_FZP,lo_OHF,lo_HFP,s1369,s1246 |
| s1418 | 45 | sumlo | HCF | lo | 26449/200000 | s1387,s1175,s1407,lo_HDF,s1205 |
| s1420 | 50 | sumlo | OHY | lo | 94851/500000 | s1335,s1130,s1080,lo_OYP,s1378 |
| s1422 | 52 | sumlo | OCY | lo | 45877/250000 | s1254,s1130,s1393,lo_OYP,s1378 |
| s1430 | 61 | sumlo | OYZ | lo | 6477/50000 | s1287,lo_OZQ,s1369,lo_YZQ,s1374 |
| s1433 | 64 | sumlo | CFZ | lo | 127617/1000000 | lo_CDZ,lo_FZP,lo_CZP,s1316,s1390 |
| s1434 | 66 | sumlo | CZQ | lo | 110249/1000000 | lo_CDZ,lo_YZQ,lo_CYZ,lo_DZQ,s1277 |
| s1437 | 68 | sumlo | OFP | lo | 215711/1000000 | lo_FZP,s1330,lo_HFP,s1376,s1285 |
| s1438 | 69 | sumlo | CFP | lo | 124873/1000000 | lo_CZP,s1437,lo_FZP,s1366,s1332 |
| s1441 | 70 | sumlo | DFP | lo | 4287/31250 | s1389,lo_HFP,s1438,lo_HDP,s1137 |
| s1445 | 80 | balance_lo | OFY | lo | 170361/1000000 | s1316,lo_OYP,lo_FZP,lo_ODY,s1441,s1430,s1390 |
| s1448 | 83 | balance_lo | FYQ | lo | 92767/250000 | s1407,lo_OPQ,s1393,s1437,s1391,lo_OYP,s1261 |
| s1453 | 96 | balance_lo | CFP | lo | 1053/8000 | s1433,lo_HDP,lo_FZP,s1380,lo_CZP,lo_HDF,s1256 |
| s1458 | 102 | balance_lo | DYP | lo | 98861/500000 | lo_ODY,s1453,lo_OYP,s1387,s1119,s1407,hi_OCF |
| s1459 | 104 | balance_lo | YPQ | lo | 278951/1000000 | lo_OYP,s1391,lo_OPQ,s1407,s1130,s1453,hi_OCF |
| s1462 | 107 | balance_lo | OYZ | lo | 34383/250000 | lo_YZQ,s1366,lo_OZQ,s1254,s1130,lo_CZP,s1266 |
| s1465 | 113 | balance_lo | FYP | lo | 122717/1000000 | s1385,lo_FZP,s1096,lo_HFP,s1284,s1441,s1256 |
| s1467 | 114 | balance_lo | DYZ | lo | 9513/40000 | lo_ODF,lo_YZQ,s204,s1462,lo_ODQ,s1287,hi_OFQ |
| s1471 | 120 | balance_lo | DZP | lo | 135347/500000 | lo_CDZ,s1459,lo_CZP,s1200,s1389,lo_YZQ,s1178 |
| s1475 | 126 | balance_lo | ZPQ | lo | 215233/1000000 | s1254,lo_OZQ,lo_OYP,s1434,s1366,lo_YZQ,s1367 |
| s1476 | 127 | balance_lo | HZQ | lo | 284913/1000000 | s1380,lo_YZQ,s1385,s1434,lo_HCY,lo_DZQ,s1176 |
| s1477 | 128 | balance_lo | FZQ | lo | 14797/50000 | s1387,lo_YZQ,s1395,s1434,s1407,lo_DZQ,s1176 |
| s1483 | 131 | linear | OHD | lo | 361029/500000 | s1385,lo_ODY,s1420 |
| s1486 | 133 | linear | OHZ | lo | 239961/500000 | s1284,s1420,s1462 |
| s1489 | 135 | linear | OHZ | hi | 622087/1000000 | s1476,hi_OHQ,lo_OZQ |
| s1490 | 135 | linear | OHQ | lo | 171567/200000 | s1476,s1486,lo_OZQ |
| s1495 | 139 | linear | OCP | lo | 431017/1000000 | s1254,s1422,lo_OYP |
| s1496 | 140 | linear | CPQ | hi | 111951/200000 | s1495,hi_OCQ,s1263 |
| s1497 | 141 | linear | ODF | lo | 729501/1000000 | s1441,s1119,s1437 |
| s1498 | 141 | linear | ODP | hi | 582563/1000000 | s1441,hi_ODF,s1437 |
| s1499 | 142 | linear | DFQ | lo | 437121/1000000 | s1497,lo_ODQ,hi_OFQ |
| s1500 | 143 | linear | ODP | lo | 191861/500000 | s1458,lo_ODY,lo_OYP |
| s1503 | 145 | linear | OFZ | lo | 473323/1000000 | s1287,s1445,s1462 |
| s1508 | 147 | linear | OFZ | hi | 1867/3125 | s1477,hi_OFQ,lo_OZQ |
| s1509 | 147 | linear | OFQ | lo | 862263/1000000 | s1477,s1503,lo_OZQ |
| s1511 | 148 | linear | OZP | lo | 372363/1000000 | lo_OYP,s1462,s1170 |
| s1513 | 149 | linear | OYQ | lo | 80883/250000 | s1462,lo_OZQ,lo_YZQ |
| s1514 | 150 | linear | OPQ | lo | 695483/1000000 | lo_OYP,s1513,s1459 |
| s1518 | 151 | linear | HDZ | hi | 26727/40000 | lo_CDZ,s258,s1408 |
| s1519 | 152 | linear | HCD | lo | 752589/1000000 | s1389,s1333,lo_HDP |
| s1524 | 153 | linear | HDY | lo | 55809/125000 | s1458,lo_HDP,s1335 |
| s1530 | 155 | linear | CDF | lo | 143231/200000 | s1389,s1453,s1441 |
| s1533 | 156 | linear | CDY | lo | 16953/40000 | lo_CDZ,lo_CYZ,s1467 |
| s1535 | 157 | linear | CDP | lo | 228347/500000 | lo_CDZ,lo_CZP,s1471 |
| s1541 | 159 | linear | CYQ | lo | 296249/1000000 | lo_CYZ,s1434,lo_YZQ |
| s1542 | 160 | linear | CPQ | lo | 209241/500000 | lo_CZP,s1434,s1475 |
| s1544 | 161 | linear | DFY | lo | 457623/1000000 | s1441,s1458,s1465 |
| s1550 | 163 | support_z | HZP | lo | 18241/125000 | s1511,s1489 |
| s1551 | 164 | support_z | OHP | lo | 261623/1000000 | s1486,s1332 |
| s1554 | 167 | linear | CDF | hi | 173551/200000 | s1418 |
| s1556 | 168 | bary_hi | FYZ | lo | 174023/1000000 | hi_OHC,lo_HCY,s1422,s1420,s1503,s1417,s1433 |
| s1561 | 175 | bary_hi | FYP | lo | 61559/500000 | s1489,s1284,s1462,s1420,s1437,lo_HFP,lo_FZP |
| s1567 | 177 | bary_lo | YZP | lo | 149937/1000000 | hi_OCF,s1407,s1445,s1422,s1511,lo_CZP,lo_FZP |
| s1570 | 178 | bary_hi | OYQ | hi | 20947/50000 | s1261,s1254,lo_OYP,s1422,lo_OCQ,s1263 |
| s1572 | 179 | bary_hi | HFY | lo | 3991/40000 | s1261,s1254,lo_OYP,s1422,lo_OHF,s1418,lo_HFP |
| s1575 | 181 | bary_hi | CYQ | hi | 35591/100000 | s1261,s1254,lo_OYP,s1422,hi_OCQ,s1496 |
| s1580 | 182 | bary_hi | OCP | hi | 528261/1000000 | hi_ODF,s1441,s1437,s1500,hi_OCD,hi_OCF |
| s1583 | 183 | bary_hi | OZP | hi | 225727/500000 | hi_ODF,s1441,s1437,s1500,s1267,s1508 |
| s1584 | 184 | bary_hi | OPQ | hi | 197413/250000 | hi_ODF,s1441,s1437,s1500,hi_ODQ,hi_OFQ |
| s1587 | 186 | bary_hi | DPQ | lo | 7027/25000 | hi_ODF,s1441,s1437,s1500,lo_ODQ,s1499 |
| s1600 | 189 | bary_hi | DYQ | lo | 436281/1000000 | s1508,s1556,s1462,s1445,lo_ODQ,s1499,lo_DZQ |
| s1605 | 191 | bary_lo | HYQ | hi | 459463/1000000 | hi_OFQ,s1448,s1513,s1445,hi_OHQ,s1416 |
| s1615 | 193 | bary_hi | OCZ | hi | 38401/200000 | s1570,lo_YZQ,lo_OZQ,s1462,s1367,hi_OCQ |
| s1616 | 194 | bary_hi | OZQ | hi | 23551/125000 | s1570,lo_YZQ,lo_OZQ,s1462,s1570 |
| s1625 | 198 | bary_hi | ZPQ | lo | 216313/1000000 | s1570,lo_YZQ,lo_OZQ,s1462,s1514,s1459 |
| s1626 | 199 | bary_hi | OCY | hi | 141773/500000 | s1583,s1567,lo_OYP,s1462,s1615,s1580 |
| s1629 | 200 | bary_hi | OYQ | hi | 25221/62500 | s1583,s1567,lo_OYP,s1462,s1616,s1584 |
| s1633 | 201 | bary_hi | OHY | lo | 10411/50000 | s1584,s1459,s1513,lo_OYP,s1551,s1490 |
| s1634 | 202 | bary_lo | OCY | lo | 93773/500000 | s1584,s1459,s1513,lo_OYP,s1495,lo_OCQ |
| s1636 | 203 | bary_hi | OFY | lo | 189931/1000000 | s1584,s1459,s1513,lo_OYP,s1437,s1509 |
| s1642 | 204 | bary_hi | CYP | hi | 50081/250000 | s1584,s1459,s1513,lo_OYP,s1580,s1542 |
| s1646 | 206 | bary_lo | FYZ | hi | 209341/1000000 | s1584,s1459,s1513,lo_OYP,s1508,lo_FZP,s1477 |
| s1649 | 207 | bary_hi | ODZ | lo | 44747/250000 | s1584,s1625,lo_OZQ,s1511,s1498,lo_ODQ |
| s1657 | 209 | bary_lo | OHP | hi | 459053/1000000 | s258,s1535,lo_HDP,s1333,hi_OHC,hi_OHD |
| s1658 | 210 | bary_lo | OFP | hi | 967/2500 | s258,s1535,lo_HDP,s1333,lo_OHF,hi_OCF,hi_ODF |
| s1659 | 211 | bary_hi | HCP | hi | 178653/500000 | s258,s1535,lo_HDP,s1333,s258 |
| s1660 | 212 | bary_lo | HDP | hi | 238063/1000000 | s258,s1535,lo_HDP,s1333,s258 |
| s1670 | 215 | bary_hi | CYP | lo | 165251/1000000 | s1518,s1471,s1550,lo_HDP,lo_HCY,s1533,lo_CYZ |
| s1676 | 219 | bary_hi | OCP | hi | 105131/200000 | s1554,s1441,s1453,s1535,hi_OCD,hi_OCF |
| s1682 | 222 | bary_hi | CDP | hi | 299473/500000 | s1554,s1441,s1453,s1535,s1554 |
| s1686 | 224 | bary_hi | DFP | hi | 69859/250000 | s1554,s1441,s1453,s1535,s1554 |
| s1695 | 229 | bary_lo | ODZ | hi | 337507/1000000 | s1682,s1471,lo_CZP,lo_CDZ,hi_OCD,s1500 |
| s1696 | 230 | bary_lo | HCZ | lo | 37453/250000 | s1682,s1471,lo_CZP,lo_CDZ,s1519,s1333 |
| s1697 | 231 | bary_lo | HDZ | hi | 6623/10000 | s1682,s1471,lo_CZP,lo_CDZ,s258,s1660 |
| s1698 | 232 | bary_lo | HYZ | lo | 157627/1000000 | s1682,s1471,lo_CZP,lo_CDZ,lo_HCY,s1524,s1335 |
| s1699 | 233 | bary_lo | HZP | hi | 115953/500000 | s1682,s1471,lo_CZP,lo_CDZ,s1659,lo_HDP |
| s1700 | 234 | bary_hi | CFZ | lo | 131637/1000000 | s1682,s1471,lo_CZP,lo_CDZ,s1530,s1453 |
| s1701 | 235 | bary_hi | DFZ | hi | 641667/1000000 | s1682,s1471,lo_CZP,lo_CDZ,s1554,s1686 |
| s1703 | 236 | bary_lo | FYZ | lo | 35581/200000 | s1682,s1471,lo_CZP,lo_CDZ,s1407,s1544,s1561 |
| s1729 | 237 | bary_hi | OCZ | hi | 91983/500000 | s1575,lo_YZQ,s1434,lo_CYZ,s1626,hi_OCQ |
| s1730 | 238 | bary_hi | OZQ | hi | 84173/500000 | s1575,lo_YZQ,s1434,lo_CYZ,lo_OCQ,s1629 |
| s1733 | 240 | bary_lo | DFZ | lo | 516383/1000000 | s1575,lo_YZQ,s1434,lo_CYZ,s1530,s1544,s1499 |
| s1734 | 241 | bary_lo | DZP | lo | 287173/1000000 | s1575,lo_YZQ,s1434,lo_CYZ,s1535,s1458,s1587 |
| s1746 | 242 | bary_hi | OHP | lo | 266893/1000000 | s1701,lo_FZP,s1734,s1441,s1483,lo_OHF,s1486 |
| s1747 | 243 | bary_hi | ODP | hi | 561617/1000000 | s1701,lo_FZP,s1734,s1441,hi_ODF,s1649 |
| s1748 | 244 | bary_hi | OZP | hi | 432039/1000000 | s1701,lo_FZP,s1734,s1441,s1695,s1508 |
| s1749 | 245 | bary_hi | OPQ | hi | 778759/1000000 | s1701,lo_FZP,s1734,s1441,hi_ODQ,hi_OFQ,s1730 |
| s1750 | 246 | bary_lo | HCP | lo | 22591/100000 | s1701,lo_FZP,s1734,s1441,s1519,s1418,s1696 |
| s1752 | 247 | bary_lo | HYP | lo | 162391/1000000 | s1701,lo_FZP,s1734,s1441,s1524,s1572,s1698 |
| s1754 | 248 | bary_hi | CFP | lo | 131939/1000000 | s1701,lo_FZP,s1734,s1441,s1530,s1700 |
| s1782 | 0 | sum | OHC | lo | 244383/500000 | lo_HCY,s1634,s1633 |
| s1783 | 1 | sum | OHD | lo | 186923/250000 | s1524,lo_ODY,s1633 |
| s1784 | 2 | sum | OHZ | lo | 503379/1000000 | s1698,s1633,s1462 |
| s1787 | 4 | sum | OHQ | lo | 220323/250000 | s1476,s1784,lo_OZQ |
| s1791 | 5 | sum | OCF | lo | 506897/1000000 | s1407,s1634,s1636 |
| s1792 | 6 | sum | OCP | lo | 445797/1000000 | s1670,s1634,lo_OYP |
| s1793 | 6 | sub | OCY | hi | 66851/250000 | s1676,s1670,lo_OYP |
| s1794 | 7 | sum | ODF | lo | 370277/500000 | s1544,lo_ODY,s1636 |
| s1795 | 8 | sum | OFZ | lo | 63171/125000 | s1703,s1636,s1462 |
| s1798 | 9 | sub | FYQ | hi | 472917/1000000 | hi_OFQ,s1636,s1513 |
| s1799 | 10 | sum | OFQ | lo | 223577/250000 | s1477,s1795,lo_OZQ |
| s1800 | 10 | sub | FZQ | hi | 97003/250000 | hi_OFQ,s1795,lo_OZQ |
| s1802 | 11 | sum | OZP | lo | 380469/1000000 | lo_OYP,s1462,s1567 |
| s1803 | 11 | sub | OYZ | hi | 94551/500000 | s1748,lo_OYP,s1567 |
| s1804 | 12 | sub | YPQ | hi | 362227/1000000 | s1749,lo_OYP,s1513 |
| s1805 | 13 | sub | ZPQ | hi | 30529/100000 | s1749,s1802,lo_OZQ |
| s1808 | 15 | sub | CDP | hi | 58809/100000 | s258,s1750,lo_HDP |
| s1810 | 16 | sum | HCQ | lo | 272487/500000 | s1434,s1696,s1476 |
| s1814 | 18 | sum | CDF | lo | 37051/50000 | lo_CDZ,s1700,s1733 |
| s1815 | 20 | sum | CDP | lo | 473173/1000000 | lo_CDZ,lo_CZP,s1734 |
| s1816 | 20 | sub | DZP | hi | 40209/100000 | s1808,lo_CDZ,lo_CZP |
| s1818 | 21 | sum | CFQ | lo | 268913/500000 | s1700,s1434,s1477 |
| s1822 | 23 | sum | DFY | lo | 57253/125000 | s1441,s1458,s1561 |
| s1823 | 24 | sum | DFZ | lo | 517357/1000000 | s1441,s1734,lo_FZP |
| s1826 | 25 | sumlo | OHY | lo | 54031/250000 | s1746,s1513,s1787,lo_OYP,s1749 |
| s1828 | 26 | sumlo | OCD | lo | 443101/1000000 | s1792,lo_ODQ,lo_OCQ,s1500,s1749 |
| s1831 | 27 | diff | ODZ | lo | 217653/1000000 | lo_ODQ,s1802,s1747,s1730,s1749 |
| s1832 | 28 | sumlo | OFY | lo | 39283/200000 | s1437,s1513,s1799,lo_OYP,s1749 |
| s1834 | 29 | sumlo | HCF | lo | 72393/500000 | s1750,lo_OHF,lo_HFP,s1782,s1657 |
| s1840 | 31 | sumlo | OCZ | lo | 140569/1000000 | lo_CDZ,s1792,lo_CZP,s1828,s1808 |
| s1842 | 32 | sumlo | CFY | lo | 143637/1000000 | s1814,lo_HCY,s1533,s1834,s258 |
| s1845 | 34 | diffhi | HCP | hi | 40609/125000 | s1642,s258,s1815,lo_HCY,s1533 |
| s1849 | 37 | sumlo | CFZ | lo | 2157/15625 | s1814,lo_CZP,lo_CDZ,s1754,s1808 |
| s1850 | 38 | sumlo | CYZ | lo | 18631/200000 | s1533,lo_CZP,lo_CDZ,s1670,s1808 |
| s1866 | 44 | sumlo | HFZ | lo | 35967/250000 | lo_FZP,lo_OHF,lo_HFP,s1795,s1658 |
| s1870 | 46 | sumlo | HCF | lo | 164509/1000000 | s1842,s1866,s1849,s1572,s1646 |
| s1872 | 47 | sumlo | HFQ | lo | 70449/500000 | s1499,s1866,s1477,lo_HDF,s1701 |
| s1879 | 49 | sumlo | HYQ | lo | 375971/1000000 | s1698,s1513,s1826,lo_YZQ,s1803 |
| s1881 | 50 | sumlo | OHY | lo | 60393/250000 | s1752,s1513,s1879,lo_OYP,s1804 |
| s1887 | 51 | diffhi | OFY | hi | 135003/500000 | s1798,s1793,s1842,s1513,s1541 |
| s1890 | 52 | sumlo | OCY | lo | 111829/500000 | s1670,s1513,s1541,lo_OYP,s1804 |
| s1891 | 52 | sumlo | YPQ | lo | 302969/1000000 | s1670,s1513,s1541,lo_OYP,s1793 |
| s1893 | 53 | sumlo | FYQ | lo | 400971/1000000 | s1703,s1513,s1832,lo_YZQ,s1803 |
| s1899 | 54 | diffhi | YZP | hi | 92493/500000 | s1803,s1804,lo_OYP,lo_YZQ,s1513 |
| s1904 | 55 | sumlo | CFY | lo | 36373/250000 | s1541,s1572,s1893,lo_HCY,s1605 |
| s1909 | 56 | sumlo | HYQ | lo | 95201/250000 | s1541,s1752,lo_HCY,s1891,s1642 |
| s1921 | 57 | sumlo | DYZ | lo | 127097/500000 | s1822,lo_YZQ,s1600,s1703,s1798 |
| s1925 | 58 | sumlo | HZQ | lo | 325081/1000000 | s1698,lo_OZQ,s1784,lo_YZQ,s1803 |
| s1928 | 59 | sumlo | DZP | lo | 302367/1000000 | lo_CDZ,s1802,lo_CZP,s1831,s1729 |
| s1930 | 60 | sumlo | CFZ | lo | 139043/1000000 | lo_CZP,s1795,lo_FZP,s1840,s1748 |
| s1933 | 61 | sumlo | OYZ | lo | 163769/1000000 | s1703,lo_OZQ,s1795,lo_YZQ,s1800 |
| s1934 | 61 | diffhi | OZQ | hi | 37063/250000 | s1800,s1803,s1795,lo_YZQ,s1703 |
| s1937 | 62 | sumlo | ZPQ | lo | 65213/250000 | s1802,lo_YZQ,lo_OZQ,s1567,s1803 |
| s1939 | 63 | sumlo | HCZ | lo | 84357/500000 | s1930,s1698,s1850,s1866,s1646 |
| s1949 | 64 | sumlo | CFZ | lo | 14117/100000 | lo_CDZ,lo_FZP,lo_CZP,s1823,s1816 |
| s1950 | 65 | sumlo | CYZ | lo | 2921/31250 | lo_CDZ,s1567,lo_CZP,s1921,s1816 |
| s1951 | 67 | sumlo | CZQ | lo | 124863/1000000 | lo_CDZ,s1937,lo_CZP,lo_DZQ,s1816 |
| s1957 | 68 | sumlo | OFP | lo | 32451/125000 | lo_FZP,s1746,lo_HFP,s1802,s1699 |
| s1959 | 69 | sumlo | CFP | lo | 37961/250000 | lo_CZP,s1957,lo_FZP,s1792,s1748 |
| s1961 | 70 | sumlo | DFP | lo | 178921/1000000 | s1815,lo_HFP,s1959,lo_HDP,s1845 |
| s1971 | 73 | balance_lo | OHP | lo | 292551/1000000 | lo_FZP,s1783,s1928,lo_OHF,s1961,s1784,s1701 |
| s1972 | 75 | balance_lo | OHD | lo | 385219/500000 | s1572,lo_ODQ,s1909,s1794,s1872,lo_ODY,s1798 |
| s1976 | 77 | balance_lo | HCP | lo | 16847/62500 | s1870,lo_OYP,s1959,s1881,lo_HFP,s1890,s1887 |
| s1977 | 77 | balance_lo | OFY | lo | 224029/1000000 | s1870,lo_OYP,s1959,s1881,lo_HFP,s1890,s1845 |
| s1979 | 78 | balance_lo | HZP | lo | 189167/1000000 | s1866,lo_OYP,lo_FZP,s1881,lo_HFP,s1933,s1887 |
| s1981 | 80 | balance_lo | DZP | lo | 318751/1000000 | s1823,lo_OYP,lo_FZP,lo_ODY,s1961,s1933,s1887 |
| s1986 | 82 | balance_lo | HYQ | lo | 386693/1000000 | s1698,s1514,lo_YZQ,s1971,s1925,lo_OYP,s1748 |
| s1989 | 83 | balance_lo | OCP | lo | 241177/500000 | s1904,s1514,s1541,s1957,s1818,lo_OYP,s1798 |
| s1995 | 84 | balance_lo | OCQ | lo | 97513/1000000 | lo_CDZ,s1787,s1939,lo_ODQ,s258,s1934,s1697 |
| s1997 | 85 | balance_lo | CFY | lo | 146123/1000000 | s1870,s1513,s1572,s1995,lo_HCY,s1799,hi_OHQ |
| s2004 | 90 | balance_lo | OHC | lo | 273287/500000 | s1977,s1810,s1513,s1870,s1799,lo_HCY,s1798 |
| s2006 | 91 | balance_lo | HCQ | lo | 603191/1000000 | lo_YZQ,s2004,lo_OZQ,lo_HCY,s1513,s1939,s1803 |
| s2009 | 92 | balance_lo | YPQ | lo | 20471/62500 | lo_OYP,s2006,s1514,lo_HCY,s1513,s1976,hi_OHC |
| s2010 | 92 | balance_lo | OHC | lo | 114837/200000 | lo_OYP,s2006,s1514,lo_HCY,s1513,s1976,s1804 |
| s2015 | 93 | balance_hi | DFY | hi | 524729/1000000 | s1798,s258,s1600,s1870,s1499,lo_HCY,s2006 |
| s2016 | 93 | balance_hi | HCQ | hi | 691037/1000000 | s1798,s258,s1600,s1870,s1499,lo_HCY,s1822 |
| s2017 | 93 | balance_lo | HCD | lo | 5137/6250 | s1822,s2006,s1600,s1870,s1499,lo_HCY,s1798 |
| s2018 | 94 | balance_lo | DYZ | lo | 127339/500000 | lo_YZQ,s2017,lo_DZQ,lo_HCY,s1600,s1939,s2016 |
| s2024 | 97 | balance_lo | HYP | lo | 171577/1000000 | s1959,s1881,s1957,lo_HCY,s1989,s1572,hi_OCF |
| s2026 | 98 | balance_lo | HDY | lo | 18703/40000 | s1794,s1986,s1499,s1881,lo_ODQ,s1572,hi_OFQ |
| s2033 | 99 | balance_lo | OHZ | lo | 555069/1000000 | lo_OYP,s1925,s1514,s1698,s1513,s1979,s1804 |
| s2039 | 100 | balance_lo | FYZ | lo | 186399/1000000 | s1997,s1979,s1950,lo_HFP,s1949,s2024,s1845 |
| s2040 | 100 | balance_lo | HCP | lo | 289269/1000000 | s1997,s1979,s1950,lo_HFP,s1949,s2024,s1646 |
| s2045 | 103 | balance_lo | CFQ | lo | 562679/1000000 | lo_YZQ,s1791,lo_OZQ,s1997,s1513,s1949,s1803 |
| s2046 | 104 | balance_lo | OCF | lo | 560647/1000000 | lo_OYP,s2045,s1514,s1997,s1513,s1959,s1804 |
| s2075 | 108 | balance_lo | CFY | lo | 149917/1000000 | s1870,s2018,s1572,lo_CDZ,lo_HCY,s1823,s1697 |
| s2076 | 109 | balance_lo | CYP | lo | 36017/200000 | lo_HCY,s1981,s2024,lo_CDZ,s2040,s2018,s1697 |
| s2086 | 110 | balance_lo | ODZ | lo | 241211/1000000 | lo_DZQ,s1977,lo_ODQ,s2039,s1934,s2015,s1798 |
| s2106 | 112 | balance_lo | OFP | lo | 292007/1000000 | s1972,lo_FZP,s2086,lo_HFP,s2033,s1961,s1697 |
| s2110 | 113 | balance_lo | FYP | lo | 144001/1000000 | s2026,lo_FZP,s2018,lo_HFP,s1698,s1961,s1697 |
| s2121 | 115 | balance_lo | HYP | lo | 180677/1000000 | s2010,s2110,s1870,lo_OYP,lo_OHF,s2076,hi_OCF |
| s2123 | 117 | balance_lo | OHP | lo | 917/2500 | lo_OHF,s2009,lo_HFP,s1513,s2106,s1986,s1798 |
| s2132 | 119 | balance_lo | HZP | lo | 193973/1000000 | s1866,s2009,lo_FZP,s1986,lo_HFP,lo_YZQ,s1798 |
| s2146 | 122 | balance_lo | HCQ | lo | 159047/250000 | lo_HCY,s1937,s1541,s2132,s1986,lo_CZP,s1899 |
| s2153 | 123 | balance_lo | HZQ | lo | 8621/25000 | s2010,lo_YZQ,lo_HCY,lo_OZQ,s1881,s1951,s1793 |
| s2155 | 124 | balance_lo | OHY | lo | 10873/40000 | s2121,lo_OZQ,lo_OYP,s2153,s2123,lo_YZQ,s1805 |
| s2159 | 125 | balance_lo | OCY | lo | 242403/1000000 | s2046,lo_YZQ,s2075,lo_OZQ,s1977,s1951,s1800 |
| s2191 | 129 | linear | OHC | lo | 151807/250000 | lo_HCY,s2159,s2155 |
| s2197 | 130 | linear | OHC | hi | 137453/250000 | s2146,hi_OCQ,hi_OHQ |

## Conclusion

{"triangle":"OHC","lower":"s2191","upper":"s2197"}
