# Leaf rppmpmppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":-1,"FZP":1,"DYZ":1,"QYZ":1}

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
| 9 | extreme | ["OHP","D","POD",1] |
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DYQ","O","YQO",-1] |
| 16 | extreme | ["DYR","O","YRO",-1] |
| 17 | extreme | ["DZQ","O","ZQO",-1] |
| 18 | extreme | ["DPQ","O","PQO",-1] |
| 19 | extreme | ["DPQ","H","PQH",-1] |
| 20 | interior_line | ["OZ","R","CDQ","R",-1] |
| 21 | interior_line | ["OP","R","CDQ","R",-1] |
| 22 | interior_line | ["HY","Z","HCDF","Z",1] |
| 23 | interior_line | ["HY","P","HCDF","P",1] |
| 24 | interior_line | ["HP","R","CDQ","R",-1] |
| 25 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 26 | interior_line | ["CY","P","HCDF","P",-1] |
| 27 | interior_line | ["CZ","R","CDQ","R",-1] |
| 28 | interior_line | ["CP","R","CDQ","R",-1] |
| 29 | interior_line | ["DZ","R","CDQ","R",1] |
| 30 | interior_line | ["DP","Y","OHC","Y",1] |
| 31 | interior_line | ["DP","R","CDQ","R",1] |
| 32 | interior_line | ["ZQ","Y","OHC","H",1] |
| 33 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 34 | interior_line | ["PR","Y","OHC","Y",-1] |
| 35 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 36 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 37 | plu | ["OHYZP","OYZ",-1] |
| 38 | plu | ["HODZP","HZP",1] |
| 39 | plu | ["DOHZP","DZP",-1] |
| 40 | plu | ["YODZP","YZP",1] |
| 41 | plu | ["YOZQR","YZR",1] |
| 42 | plu | ["YHDFZ","YFZ",-1] |
| 43 | plu | ["ZOHFP","ZOF",-1] |
| 44 | plu | ["ZOHFQ","ZFQ",-1] |
| 45 | plu | ["ZOHYR","ZHR",-1] |
| 46 | plu | ["ZOHPQ","ZPQ",-1] |
| 47 | plu | ["ZOHPR","ZPR",-1] |
| 48 | plu | ["ZOFYR","ZFR",-1] |
| 49 | plu | ["POHFZ","POF",-1] |
| 50 | plu | ["PODFY","PFY",1] |
| 51 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YZ"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OHR | OHR | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 279/1000 | ["cost","R"] |
| lo_OFZ | OFZ | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFQ | CFQ | lo | 21/100 | "C052" |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
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
| hi_OCY | OCY | hi | 449/1000 | "C053" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODY | ODY | hi | 40801583/63500000 | "C040" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_OPQ | OPQ | hi | 70912/79375 | "C050" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CYQ | CYQ | hi | 27769359917/45783500000 | "C032" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 4 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 5 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 6 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 7 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 8 | ["fan","HCP","CZP","HCZ","HZP"] | ["fan","HCP","Z"] |
| 9 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 10 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 11 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 12 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 13 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 14 | ["fan","CYR","CYZ","CZR","YZR"] | ["fan","CYR","Z"] |
| 15 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 16 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 17 | ["fan","DYQ","DQR","DYR","YQR"] | ["fan","DYQ","R"] |
| 18 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 19 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 20 | ["plu","ODP","OFZ","ODF","OZP","ODZ","OFP"] | ["plu","ODFZP"] |
| 21 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 22 | ["plu","HDY","OHC","HCD","OHY","HCY","OHD"] | ["plu","HOCDY"] |
| 23 | ["plu","HCD","OHQ","HCQ","OHD","HDQ","OHC"] | ["plu","HOCDQ"] |
| 24 | ["plu","HYQ","OHC","HCQ","OHY","HCY","OHQ"] | ["plu","HOCYQ"] |
| 25 | ["plu","HFQ","OHD","HDF","OHQ","HDQ","OHF"] | ["plu","HODFQ"] |
| 26 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 27 | ["plu","HCD","HFZ","HCF","HDZ","HCZ","HDF"] | ["plu","HCDFZ"] |
| 28 | ["plu","HCD","HFQ","HCF","HDQ","HCQ","HDF"] | ["plu","HCDFQ"] |
| 29 | ["plu","HCD","HZP","HCP","HDZ","HCZ","HDP"] | ["plu","HCDZP"] |
| 30 | ["plu","HCD","HPQ","HCP","HDQ","HCQ","HDP"] | ["plu","HCDPQ"] |
| 31 | ["plu","HDF","HPQ","HDP","HFQ","HDQ","HFP"] | ["plu","HDFPQ"] |
| 32 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 33 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 34 | ["plu","CDY","HCR","CDR","HCY","CYR","HCD"] | ["plu","CHDYR"] |
| 35 | ["plu","CDZ","HCP","CDP","HCZ","CZP","HCD"] | ["plu","CHDZP"] |
| 36 | ["plu","HCD","ODQ","CDQ","OHD","HDQ","OCD"] | ["plu","DOHCQ"] |
| 37 | ["plu","HCD","ODR","CDR","OHD","HDR","OCD"] | ["plu","DOHCR"] |
| 38 | ["plu","HDF","ODP","DFP","OHD","HDP","ODF"] | ["plu","DOHFP"] |
| 39 | ["plu","DFZ","HCD","CDF","HDZ","CDZ","HDF"] | ["plu","DHCFZ"] |
| 40 | ["plu","CDP","HDF","CDF","HDP","DFP","HCD"] | ["plu","DHCFP"] |
| 41 | ["plu","CDF","HDQ","CDQ","HDF","DFQ","HCD"] | ["plu","DHCFQ"] |
| 42 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 43 | ["plu","DZP","HDF","DFP","HDZ","DFZ","HDP"] | ["plu","DHFZP"] |
| 44 | ["plu","DFZ","HDQ","DFQ","HDZ","DZQ","HDF"] | ["plu","DHFZQ"] |
| 45 | ["plu","DPQ","HDF","DFP","HDQ","DFQ","HDP"] | ["plu","DHFPQ"] |
| 46 | ["plu","CDF","DYQ","CDQ","DFY","CDY","DFQ"] | ["plu","DCFYQ"] |
| 47 | ["plu","CDQ","DYR","CDR","DYQ","CDY","DQR"] | ["plu","DCYQR"] |
| 48 | ["plu","CDQ","DPR","CDP","DQR","CDR","DPQ"] | ["plu","DCPQR"] |
| 49 | ["plu","HFP","ODF","DFP","OHF","HDF","OFP"] | ["plu","FOHDP"] |
| 50 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 51 | ["plu","CDY","HYQ","CYQ","HDY","DYQ","HCY"] | ["plu","YHCDQ"] |
| 52 | ["plu","FYZ","HDY","DFY","HYZ","DYZ","HFY"] | ["plu","YHDFZ"] |
| 53 | ["plu","DYZ","HYQ","DYQ","HYZ","HDY","YZQ"] | ["plu","YHDZQ"] |
| 54 | ["plu","HZP","OCZ","CZP","OHZ","HCZ","OZP"] | ["plu","ZOHCP"] |
| 55 | ["plu","DFZ","OHZ","HDZ","OFZ","HFZ","ODZ"] | ["plu","ZOHDF"] |
| 56 | ["plu","HDZ","OZQ","DZQ","OHZ","HZQ","ODZ"] | ["plu","ZOHDQ"] |
| 57 | ["plu","HZP","OFZ","FZP","OHZ","HFZ","OZP"] | ["plu","ZOHFP"] |
| 58 | ["plu","HZQ","OYZ","HYZ","OZQ","OHZ","YZQ"] | ["plu","ZOHYQ"] |
| 59 | ["plu","FYZ","HDZ","DFZ","HYZ","DYZ","HFZ"] | ["plu","ZHDFY"] |
| 60 | ["plu","FZQ","HDZ","DFZ","HZQ","DZQ","HFZ"] | ["plu","ZHDFQ"] |
| 61 | ["plu","DYZ","HZQ","DZQ","HYZ","HDZ","YZQ"] | ["plu","ZHDYQ"] |
| 62 | ["plu","FYZ","HZQ","FZQ","HYZ","HFZ","YZQ"] | ["plu","ZHFYQ"] |
| 63 | ["plu","CZQ","DYZ","CDZ","YZQ","CYZ","DZQ"] | ["plu","ZCDYQ"] |
| 64 | ["plu","DYZ","FZQ","DFZ","YZQ","DZQ","FYZ"] | ["plu","ZDFYQ"] |
| 65 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 66 | ["plu","DZP","HFP","DFP","HZP","FZP","HDP"] | ["plu","PHDFZ"] |
| 67 | ["plu","HDQ","OFQ","DFQ","OHQ","HFQ","ODQ"] | ["plu","QOHDF"] |
| 68 | ["plu","DZQ","OFQ","DFQ","OZQ","FZQ","ODQ"] | ["plu","QODFZ"] |
| 69 | ["plu","CQR","DYQ","CDQ","YQR","CYQ","DQR"] | ["plu","QCDYR"] |
| 70 | ["plu","CQR","DYR","CDR","YQR","CYR","DQR"] | ["plu","RCDYQ"] |
| 71 | ["balance",[[-1,"HYZ","ODQ"],[-1,"YZQ","OHD"],[1,"HZQ","ODY"],[-1,"HYQ","ODZ"]]] | ["six","ODHYZQ"] |
| 72 | ["balance",[[1,"HDZ","OYQ"],[-1,"DZQ","OHY"],[-1,"HZQ","ODY"],[-1,"HDQ","OYZ"]]] | ["six","OYHDZQ"] |
| 73 | ["balance",[[-1,"HCD","OZR"],[1,"CDR","OHZ"],[1,"HDR","OCZ"],[1,"HCR","ODZ"]]] | ["six","OZHCDR"] |
| 74 | ["balance",[[1,"HDZ","OPQ"],[-1,"DZQ","OHP"],[-1,"HZQ","ODP"],[-1,"HDQ","OZP"]]] | ["six","OPHDZQ"] |
| 75 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 76 | ["balance",[[1,"HCD","OFR"],[-1,"CDF","OHR"],[-1,"HDF","OCR"],[-1,"HCF","ODR"]]] | ["six","ORHCDF"] |
| 77 | ["balance",[[1,"ODF","HCQ"],[1,"DFQ","OHC"],[-1,"OFQ","HCD"],[1,"ODQ","HCF"]]] | ["six","HCODFQ"] |
| 78 | ["balance",[[1,"ODY","HCZ"],[1,"DYZ","OHC"],[-1,"OYZ","HCD"],[1,"ODZ","HCY"]]] | ["six","HCODYZ"] |
| 79 | ["balance",[[1,"ODZ","HCQ"],[1,"DZQ","OHC"],[-1,"OZQ","HCD"],[1,"ODQ","HCZ"]]] | ["six","HCODZQ"] |
| 80 | ["balance",[[1,"DYZ","HCQ"],[-1,"YZQ","HCD"],[-1,"DZQ","HCY"],[-1,"DYQ","HCZ"]]] | ["six","HCDYZQ"] |
| 81 | ["balance",[[1,"ODF","HYQ"],[1,"DFQ","OHY"],[-1,"OFQ","HDY"],[1,"ODQ","HFY"]]] | ["six","HYODFQ"] |
| 82 | ["balance",[[1,"ODF","HZQ"],[1,"DFQ","OHZ"],[-1,"OFQ","HDZ"],[1,"ODQ","HFZ"]]] | ["six","HZODFQ"] |
| 83 | ["balance",[[1,"CDF","HZQ"],[1,"DFQ","HCZ"],[-1,"CFQ","HDZ"],[1,"CDQ","HFZ"]]] | ["six","HZCDFQ"] |
| 84 | ["balance",[[-1,"CDF","HPQ"],[1,"DFQ","HCP"],[1,"CFQ","HDP"],[1,"CDQ","HFP"]]] | ["six","HPCDFQ"] |
| 85 | ["balance",[[-1,"HYZ","CDQ"],[-1,"YZQ","HCD"],[1,"HZQ","CDY"],[-1,"HYQ","CDZ"]]] | ["six","CDHYZQ"] |
| 86 | ["balance",[[-1,"OHD","CZQ"],[1,"HDZ","OCQ"],[1,"ODZ","HCQ"],[1,"OHZ","CDQ"]]] | ["six","CQOHDZ"] |
| 87 | ["balance",[[1,"HDF","CPQ"],[-1,"DFP","HCQ"],[-1,"HFP","CDQ"],[-1,"HDP","CFQ"]]] | ["six","CQHDFP"] |
| 88 | ["balance",[[1,"OHC","DYZ"],[1,"HCY","ODZ"],[-1,"OCY","HDZ"],[1,"OHY","CDZ"]]] | ["six","DZOHCY"] |
| 89 | ["balance",[[-1,"OHC","DZQ"],[-1,"HCQ","ODZ"],[-1,"OCQ","HDZ"],[1,"OHQ","CDZ"]]] | ["six","DZOHCQ"] |
| 90 | ["balance",[[1,"OCP","DZQ"],[1,"CPQ","ODZ"],[-1,"OPQ","CDZ"],[1,"OCQ","DZP"]]] | ["six","DZOCPQ"] |
| 91 | ["balance",[[-1,"OHC","DQR"],[1,"HCQ","ODR"],[-1,"OCQ","HDR"],[-1,"OHQ","CDR"]]] | ["six","DROHCQ"] |
| 92 | ["balance",[[1,"HDY","FZP"],[1,"DYZ","HFP"],[1,"HYZ","DFP"],[-1,"HDZ","FYP"]]] | ["six","FPHDYZ"] |
| 93 | ["balance",[[1,"OHD","YZQ"],[-1,"HDZ","OYQ"],[1,"ODZ","HYQ"],[1,"OHZ","DYQ"]]] | ["six","YQOHDZ"] |
| 94 | ["balance",[[-1,"OHZ","YQR"],[1,"HZR","OYQ"],[-1,"OZR","HYQ"],[-1,"OHR","YZQ"]]] | ["six","YQOHZR"] |
| 95 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 96 | ["balance",[[1,"OHF","ZPQ"],[1,"HFQ","OZP"],[-1,"OFQ","HZP"],[1,"OHQ","FZP"]]] | ["six","ZPOHFQ"] |
| 97 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 98 | ["balance",[[1,"HCD","ZPQ"],[-1,"CDP","HZQ"],[-1,"HDP","CZQ"],[-1,"HCP","DZQ"]]] | ["six","ZQHCDP"] |
| 99 | ["balance",[[1,"OHC","ZQR"],[1,"HCQ","OZR"],[1,"OCQ","HZR"],[-1,"OHQ","CZR"]]] | ["six","ZROHCQ"] |
| 100 | ["balance",[[1,"OCD","ZQR"],[-1,"CDZ","OQR"],[1,"ODZ","CQR"],[1,"OCZ","DQR"]]] | ["six","QROCDZ"] |
| 101 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 102 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 103 | ["linear",{"OHD":1,"ODF":-1,"OHF":-1,"HDF":1},"0"] | ["affine_quad","OHDF",-1] |
| 104 | ["linear",{"OHD":1,"ODZ":-1,"OHZ":-1,"HDZ":-1},"0"] | ["affine_quad","OHDZ",-1] |
| 105 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 106 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 107 | ["linear",{"OHZ":-1,"OZQ":-1,"OHQ":1,"HZQ":-1},"0"] | ["affine_quad","OHZQ",1] |
| 108 | ["linear",{"OCD":-1,"ODZ":-1,"OCZ":1,"CDZ":1},"0"] | ["affine_quad","OCDZ",-1] |
| 109 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 110 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 111 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 112 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 113 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 114 | ["linear",{"HCD":-1,"HDF":-1,"HCF":1,"CDF":1},"0"] | ["affine_quad","HCDF",-1] |
| 115 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 116 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 117 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 118 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 119 | ["linear",{"HFZ":-1,"HZP":1,"HFP":1,"FZP":-1},"0"] | ["affine_quad","HFZP",1] |
| 120 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 121 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 122 | ["linear",{"CYZ":-1,"CZQ":-1,"CYQ":1,"YZQ":-1},"0"] | ["affine_quad","CYZQ",1] |
| 123 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 124 | ["linear",{"DYZ":1,"DZQ":1,"DYQ":-1,"YZQ":-1},"0"] | ["affine_quad","DYZQ",1] |
| 125 | ["linear",{"DYQ":1,"DQR":-1,"DYR":-1,"YQR":-1},"0"] | ["affine_quad","DYQR",1] |
| 126 | ["quad","HDF","OHD","93/91"] | ["quad","ODFH","YZP"] |
| 127 | ["quad","HFP","OHP","449/1000"] | ["quad","OPFH","Y"] |
| 128 | ["support","OHP","OFP","OHF","2697/5000"] | ["support_quad","OPFH","Y","29/5"] |
| 129 | ["quad","DFQ","FZQ","93/125"] | ["quad","DFZQ","PR"] |
| 130 | ["support","OHZ","OHF","OFZ","1023/1000"] | ["support_pent","OZPFH"] |
| 131 | ["support","DZQ","CDQ","CDZ","1023/1000"] | ["support_pent","DZOCQ"] |
| 132 | ["support","DFZ","HDF","HDZ","1023/1000"] | ["support_pent","DZYHF"] |
| 133 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 134 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 135 | ["bary",["HDY",-1],[["OHD",-1],null,["HCD",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HD"] |
| 136 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 137 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CQ"] |
| 138 | ["bary",["DYZ",-1],[["ODZ",1],["HDZ",-1],["CDZ",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DZ"] |
| 139 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 140 | ["bary",["HDY",-1],[["OHD",-1],null,null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HD"] |
| 141 | ["bary",["OZR",1],[null,["OHR",1],["ODR",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OR"] |
| 142 | ["bary",["CZQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CQ"] |
| 143 | ["bary",["DFZ",1],[["ODF",1],["HDF",1],null],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","DF"] |
| 144 | ["bary",["OYQ",1],[null,["OHQ",1],["OZQ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OQ"] |
| 145 | ["bary",["HDY",-1],[["OHD",-1],null,["HDZ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HD"] |
| 146 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","HQ"] |
| 147 | ["bary",["DYZ",-1],[["ODZ",1],["HDZ",-1],null],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DZ"] |
| 148 | ["bary",["DYP",1],[["ODP",1],["HDP",1],["DZP",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DP"] |
| 149 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 150 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CD"] |
| 151 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CQ"] |
| 152 | ["bary",["DYZ",-1],[["ODZ",1],["HDZ",-1],["DZQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DZ"] |
| 153 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DQ"] |
| 154 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["FZQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","FZ"] |
| 155 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OC"] |
| 156 | ["bary",["OPQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OQ"] |
| 157 | ["bary",["HCP",1],[["OHC",-1],["HCD",1],["HCF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","HC"] |
| 158 | ["bary",["HZP",-1],[["OHP",-1],["HDP",-1],["HYP",-1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","HP"] |
| 159 | ["bary",["CZR",1],[["OCR",1],["CDR",1],["CYR",1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","CR"] |
| 160 | ["bary",["OFR",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OF"] |
| 161 | ["bary",["OYR",-1],[null,["ODY",-1],["OYQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OY"] |
| 162 | ["bary",["OHZ",-1],[null,["OHF",-1],["OHQ",-1]],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","OH"] |
| 163 | ["bary",["OCZ",1],[null,["OCF",1],["OCQ",1]],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","OC"] |
| 164 | ["bary",["FZQ",-1],[["OFQ",-1],null,null],"OFQ",["FZQ","OZQ","OFZ"]] | ["bary","OFQ","Z","FQ"] |
| 165 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 166 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDR",-1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","HD"] |
| 167 | ["bary",["HZP",-1],[["OHP",-1],["HYP",-1],["HPR",-1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","HP"] |
| 168 | ["bary",["OCZ",1],[null,["OCP",1],["OCQ",1]],"OPQ",["ZPQ","OZQ","OZP"]] | ["bary","OPQ","Z","OC"] |
| 169 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 170 | ["bary",["HZP",-1],[null,["HCP",-1],["HDP",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HP"] |
| 171 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 172 | ["bary",["DZQ",-1],[["HDQ",-1],["CDQ",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DQ"] |
| 173 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHP",-1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","OH"] |
| 174 | ["bary",["OCZ",1],[["OHC",1],null,["OCP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","OC"] |
| 175 | ["bary",["HDZ",-1],[null,["HCD",-1],["HDP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","HD"] |
| 176 | ["bary",["CDZ",1],[["HCD",1],null,["CDP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","CD"] |
| 177 | ["bary",["DZR",-1],[["HDR",-1],["CDR",-1],["DPR",-1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","DR"] |
| 178 | ["bary",["OHP",-1],[null,["OHD",-1],["OHF",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OH"] |
| 179 | ["bary",["OFP",-1],[["OHF",1],["ODF",-1],null],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OF"] |
| 180 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HC"] |
| 181 | ["bary",["HZP",1],[null,["HDZ",1],["HFZ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HZ"] |
| 182 | ["bary",["DZP",-1],[["HDZ",-1],null,["DFZ",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DZ"] |
| 183 | ["bary",["ZPQ",1],[["HZQ",1],["DZQ",1],["FZQ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","ZQ"] |
| 184 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFY",-1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","HF"] |
| 185 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DYQ",-1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","DQ"] |
| 186 | ["bary",["OZR",-1],[["OCZ",-1],["ODZ",-1],["OZQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OZ"] |
| 187 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 188 | ["bary",["HPR",-1],[["HCP",-1],["HDP",-1],["HPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HP"] |
| 189 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 190 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 191 | ["bary",["OCZ",1],[null,["OCY",1],["OCQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","OC"] |
| 192 | ["bary",["HDZ",-1],[["HCD",-1],["HDY",-1],["HDR",-1]],"CYR",["YZR","CZR","CYZ"]] | ["bary","CYR","Z","HD"] |
| 193 | ["bary",["HZP",-1],[["HCP",-1],["HYP",-1],["HPR",-1]],"CYR",["YZR","CZR","CYZ"]] | ["bary","CYR","Z","HP"] |
| 194 | ["bary",["HFP",-1],[["HDF",-1],null,["HFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HF"] |
| 195 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 196 | ["bary",["OYR",-1],[["ODY",-1],null,["OYQ",-1]],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OY"] |
| 197 | ["bary",["OQR",1],[["ODQ",1],["OYQ",1],null],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","OQ"] |
| 198 | ["bary",["CQR",1],[["CDQ",1],["CYQ",1],null],"DYQ",["YQR","DQR","DYR"]] | ["bary","DYQ","R","CQ"] |
| 199 | ["bary",["OCR",1],[["OCD",1],["OCZ",1],["OCQ",1]],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OC"] |
| 200 | ["bary",["OQR",1],[["ODQ",1],["OZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","OQ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 1 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s17 | 4 | sub | DFZ | hi | 374729/500000 | hi_ODF,lo_ODZ,lo_OFZ |
| s21 | 5 | sub | ODP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_OFP |
| s43 | 10 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s59 | 19 | sumlo | OCY | lo | 11981/125000 | lo_OCD,lo_OHY,lo_ODY,lo_OHC,hi_OHD |
| s62 | 20 | sumlo | OFZ | lo | 48829/500000 | lo_ODF,lo_OZP,lo_ODZ,lo_OFP,s21 |
| s65 | 24 | sumlo | HYQ | lo | 71251/500000 | lo_HCQ,lo_OHY,lo_HCY,lo_OHQ,hi_OHC |
| s68 | 25 | sumlo | HFQ | lo | 52451/250000 | lo_HDF,lo_OHQ,lo_HDQ,lo_OHF,hi_OHD |
| s74 | 26 | sumlo | HCF | lo | 14409/100000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s80 | 31 | sumlo | HPQ | lo | 58317/500000 | lo_HDP,s68,lo_HDQ,lo_HFP,hi_HDF |
| s86 | 33 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s90 | 38 | sumlo | ODP | lo | 421843/1000000 | lo_DFP,lo_OHD,lo_HDP,lo_ODF,hi_HDF |
| s99 | 40 | sumlo | CDP | lo | 80463/250000 | lo_CDF,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s101 | 42 | sumlo | HDR | lo | 192191/1000000 | lo_CDR,lo_HDQ,lo_DQR,lo_HCD,hi_CDQ |
| s108 | 49 | diffhi | OFP | hi | 92837/250000 | s43,hi_ODF,lo_DFP,lo_OHF,lo_HDF |
| s109 | 50 | sumlo | OFP | lo | 24559/250000 | lo_DFP,s62,lo_FZP,lo_ODF,s17 |
| s123 | 65 | sumlo | HZP | lo | 93163/1000000 | lo_FZP,lo_OHP,lo_HFP,lo_OZP,s108 |
| s125 | 66 | sumlo | DZP | lo | 36069/250000 | lo_DFP,s123,lo_FZP,lo_HDP,s43 |
| s129 | 70 | sumlo | DYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CYR,lo_DQR,hi_CQR |
| s135 | 71 | balance_lo | HZQ | lo | 80727/500000 | lo_HYZ,lo_ODQ,lo_YZQ,lo_OHD,s65,lo_ODZ,hi_ODY |
| s143 | 74 | balance_lo | HDZ | lo | 45369/250000 | lo_DZQ,lo_OHP,s135,s90,lo_HDQ,lo_OZP,hi_OPQ |
| s150 | 80 | balance_lo | DYZ | lo | 67219/500000 | lo_YZQ,lo_HCD,lo_DZQ,lo_HCY,lo_DYQ,lo_HCZ,hi_HCQ |
| s153 | 86 | balance_lo | CZQ | lo | 30489/250000 | s143,lo_OCQ,lo_ODZ,s86,lo_OHZ,lo_CDQ,hi_OHD |
| s155 | 87 | balance_lo | CPQ | lo | 3713/15625 | lo_DFP,s86,lo_HFP,lo_CDQ,lo_HDP,lo_CFQ,hi_HDF |
| s163 | 90 | balance_lo | CDZ | lo | 126887/1000000 | lo_OCP,lo_DZQ,s155,lo_ODZ,lo_OCQ,s125,hi_OPQ |
| s164 | 91 | balance_lo | ODR | lo | 125117/1000000 | lo_OHC,lo_DQR,lo_OCQ,s101,lo_OHQ,lo_CDR,hi_HCQ |
| s175 | 95 | balance_lo | HZP | lo | 4443/40000 | lo_OHD,lo_FZP,lo_HDF,lo_OZP,lo_OHF,s125,hi_ODF |
| s182 | 101 | linear | OHC | lo | 35231/125000 | lo_HCY,s59,lo_OHY |
| s185 | 103 | linear | OHF | hi | 153/250 | hi_HDF,lo_ODF,hi_OHD |
| s197 | 110 | linear | ODY | lo | 160219/500000 | s150,lo_ODZ,lo_OYZ |
| s208 | 117 | linear | HCP | lo | 11883/40000 | lo_CZP,lo_HCZ,s175 |
| s209 | 118 | linear | HCQ | lo | 37641/100000 | s153,lo_HCZ,s135 |
| s213 | 120 | linear | CDY | lo | 14173/40000 | s163,lo_CYZ,s150 |
| s219 | 123 | linear | DFZ | lo | 82569/250000 | lo_DFP,s125,lo_FZP |
| s220 | 125 | linear | DYQ | lo | 166923/500000 | lo_DQR,s129,lo_YQR |
| s221 | 126 | quad | OHD | lo | 357989/500000 | hi_HDF |
| s222 | 127 | quad | OHP | lo | 329/1000 | s43 |
| s223 | 128 | support_z | OHF | lo | 102501/1000000 | s222,s108 |
| s225 | 131 | support_z | CDZ | lo | 82227/500000 | lo_DZQ,hi_CDQ |
| s226 | 132 | support_z | HDZ | lo | 231483/1000000 | s219,hi_HDF |
| s227 | 133 | linear | HCD | hi | 721/1000 | lo_HDF |
| s230 | 135 | bary_hi | HDY | lo | 413/2000 | hi_OHC,lo_HCY,s59,lo_OHY,s221,lo_HCD |
| s233 | 136 | bary_hi | CDY | hi | 594161/1000000 | hi_OHC,lo_HCY,s59,lo_OHY,hi_OCD,s227 |
| s244 | 139 | bary_lo | OCY | lo | 54161/500000 | hi_OHD,s230,s197,lo_OHY,s182,lo_OCD |
| s247 | 140 | bary_lo | HDY | hi | 293281/500000 | hi_OHD,s230,s197,lo_OHY,hi_OHD |
| s259 | 141 | bary_lo | OZR | lo | 99449/1000000 | hi_OHD,s226,lo_ODZ,lo_OHZ,lo_OHR,s164 |
| s268 | 142 | bary_lo | CZQ | lo | 171251/1000000 | hi_OHD,s226,lo_ODZ,lo_OHZ,lo_OCQ,s209,lo_CDQ |
| s270 | 143 | bary_hi | DFZ | hi | 307963/500000 | hi_OHD,s226,lo_ODZ,lo_OHZ,hi_ODF,hi_HDF |
| s305 | 157 | bary_hi | HCP | hi | 582519/1000000 | hi_ODF,lo_DFP,s109,s90,s182,s227,hi_HCF |
| s320 | 158 | bary_hi | HZP | lo | 142377/1000000 | hi_ODY,s150,lo_OYZ,lo_ODZ,s222,lo_HDP,lo_HYP |
| s321 | 159 | bary_lo | CZR | lo | 119921/1000000 | hi_ODY,s150,lo_OYZ,lo_ODZ,lo_OCR,lo_CDR,lo_CYR |
| s325 | 160 | bary_lo | OFR | hi | 429769/500000 | hi_ODQ,lo_DQR,lo_OQR,s164,hi_ODF,hi_OFQ |
| s326 | 161 | bary_lo | OYR | hi | 301221/500000 | hi_ODQ,lo_DQR,lo_OQR,s164,hi_ODY,hi_OYQ |
| s348 | 166 | bary_hi | HDZ | lo | 27541/100000 | s326,lo_YZR,s259,lo_OYZ,s221,s230,s101 |
| s354 | 169 | bary_lo | HDZ | hi | 231773/500000 | s227,s225,s348,lo_HCZ,s227 |
| s373 | 177 | bary_hi | DZR | lo | 21767/200000 | s305,lo_CZP,s320,lo_HCZ,s101,lo_CDR,lo_DPR |
| s376 | 178 | bary_lo | OHP | hi | 578157/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s185 |
| s379 | 179 | bary_lo | OFP | hi | 67139/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s223,hi_ODF |
| s382 | 180 | bary_hi | HCP | hi | 59467/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s227,hi_HCF |
| s394 | 182 | bary_hi | DZP | lo | 184081/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s348,s219 |
| s406 | 184 | bary_hi | HFZ | lo | 133673/1000000 | s233,s150,lo_CYZ,s225,s74,lo_HDF,lo_HFY |
| s409 | 185 | bary_lo | DZQ | hi | 65099/125000 | s233,s150,lo_CYZ,s225,hi_CDQ,hi_DYQ |
| s424 | 188 | bary_hi | HPR | lo | 143421/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s208,lo_HDP,s80 |
| s426 | 189 | bary_lo | CYR | hi | 117373/250000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s233,hi_CYQ |
| s430 | 190 | bary_lo | DYR | lo | 7619/50000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s213,s220 |
| s452 | 192 | bary_hi | HDZ | lo | 295247/1000000 | s426,lo_YZR,s321,lo_CYZ,lo_HCD,s230,s101 |
| s453 | 193 | bary_hi | HZP | lo | 35853/250000 | s426,lo_YZR,s321,lo_CYZ,s208,lo_HYP,s424 |
| s467 | 195 | bary_lo | HYP | lo | 110137/1000000 | s270,lo_FZP,s394,lo_DFP,s230,lo_HFY,lo_HYZ |
| s476 | 196 | bary_lo | OYR | hi | 593109/1000000 | hi_DYQ,lo_YQR,lo_DQR,s430,hi_ODY,hi_OYQ |
| s484 | 199 | bary_lo | OCR | lo | 110969/1000000 | s409,lo_ZQR,lo_DQR,s373,lo_OCD,lo_OCZ,lo_OCQ |
| s495 | 0 | sum | OHC | lo | 147161/500000 | lo_HCY,s244,lo_OHY |
| s502 | 7 | sub | CDZ | hi | 332753/1000000 | s227,lo_HCZ,s452 |
| s504 | 8 | sum | HCP | lo | 82353/250000 | lo_CZP,lo_HCZ,s453 |
| s507 | 8 | sub | HZP | hi | 36217/125000 | s382,lo_CZP,lo_HCZ |
| s508 | 9 | sum | HCQ | lo | 85141/200000 | s268,lo_HCZ,s135 |
| s510 | 11 | sum | CDY | lo | 97973/250000 | s225,lo_CYZ,s150 |
| s512 | 13 | sum | CYQ | lo | 357251/1000000 | lo_CYZ,s268,lo_YZQ |
| s513 | 14 | sum | CYR | lo | 305921/1000000 | lo_CYZ,s321,lo_YZR |
| s515 | 16 | sum | DFZ | lo | 370081/1000000 | lo_DFP,s394,lo_FZP |
| s516 | 17 | sum | DYQ | lo | 16919/50000 | lo_DQR,s430,lo_YQR |
| s517 | 18 | sum | DZQ | lo | 58967/200000 | lo_DQR,s373,lo_ZQR |
| s527 | 26 | sumlo | HCF | lo | 15427/100000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s247 |
| s528 | 29 | sumlo | HZP | lo | 18361/125000 | s504,s452,lo_HCZ,lo_HDP,s227 |
| s529 | 30 | sumlo | HPQ | lo | 134391/1000000 | s504,lo_HDQ,s508,lo_HDP,s227 |
| s534 | 33 | sumlo | HCQ | lo | 460951/1000000 | lo_CDQ,lo_HCY,s512,lo_HCD,s233 |
| s535 | 34 | sumlo | HCR | lo | 185941/500000 | lo_CDR,lo_HCY,s513,lo_HCD,s233 |
| s536 | 35 | sumlo | CDZ | lo | 39717/200000 | s99,lo_HCZ,lo_CZP,lo_HCD,s382 |
| s543 | 36 | sumlo | ODQ | lo | 161887/500000 | lo_CDQ,s221,lo_HDQ,lo_OCD,s227 |
| s544 | 37 | sumlo | ODR | lo | 28793/200000 | lo_CDR,s221,s101,lo_OCD,s227 |
| s547 | 43 | sumlo | DZP | lo | 202207/1000000 | lo_DFP,s452,s515,lo_HDP,hi_HDF |
| s548 | 44 | sumlo | HDQ | lo | 178133/1000000 | lo_DFQ,s452,s517,lo_HDF,s270 |
| s549 | 47 | sumlo | DYR | lo | 161703/1000000 | lo_CDR,s516,s510,lo_DQR,hi_CDQ |
| s554 | 51 | sumlo | HYQ | lo | 88563/500000 | s512,s230,s516,lo_HCY,s233 |
| s558 | 54 | sumlo | OCZ | lo | 23881/200000 | lo_CZP,lo_OHZ,lo_HCZ,lo_OZP,s507 |
| s561 | 57 | sumlo | OFZ | lo | 6623/50000 | lo_FZP,lo_OHZ,s406,lo_OZP,s507 |
| s572 | 73 | balance_lo | OZR | lo | 14473/125000 | lo_CDR,lo_OHZ,s101,s558,s535,lo_ODZ,s227 |
| s573 | 76 | balance_hi | CDF | hi | 163273/200000 | s227,s325,lo_HDF,s484,s527,s544,lo_OHR |
| s574 | 78 | balance_lo | OYZ | lo | 108207/1000000 | s197,lo_HCZ,s150,s495,lo_ODZ,lo_HCY,s227 |
| s575 | 79 | balance_lo | OZQ | lo | 8863/40000 | lo_ODZ,s534,s517,s495,s543,lo_HCZ,s227 |
| s580 | 80 | balance_lo | DYZ | lo | 28503/200000 | lo_YZQ,lo_HCD,s517,lo_HCY,s516,lo_HCZ,hi_HCQ |
| s588 | 88 | balance_lo | OCY | lo | 148987/1000000 | s495,s580,lo_HCY,lo_ODZ,lo_OHY,s536,s354 |
| s598 | 97 | balance_lo | HZQ | lo | 214293/1000000 | lo_HCD,lo_YZQ,s230,s268,lo_HCY,s517,s233 |
| s603 | 100 | balance_lo | OQR | lo | 2837/25000 | lo_OCD,lo_ZQR,lo_ODZ,lo_CQR,s558,lo_DQR,s502 |
| s604 | 101 | linear | OHC | lo | 334987/1000000 | lo_HCY,s588,lo_OHY |
| s605 | 102 | linear | HCQ | hi | 851013/1000000 | hi_OCQ,s604,hi_OHQ |
| s608 | 105 | linear | OHZ | lo | 294207/1000000 | lo_HYZ,lo_OHY,s574 |
| s614 | 109 | linear | OCP | lo | 61081/200000 | lo_CZP,s558,lo_OZP |
| s616 | 110 | linear | ODY | lo | 171861/500000 | s580,lo_ODZ,s574 |
| s619 | 112 | linear | FZQ | hi | 126469/200000 | hi_OFQ,s561,s575 |
| s620 | 113 | linear | OYQ | lo | 211391/500000 | s574,s575,lo_YZQ |
| s623 | 114 | linear | HCF | lo | 31327/200000 | s573,lo_HCD,lo_HDF |
| s624 | 115 | linear | HDZ | hi | 85883/200000 | s536,s227,lo_HCZ |
| s627 | 116 | linear | HDQ | hi | 680049/1000000 | hi_CDQ,s227,s534 |
| s628 | 117 | linear | HCP | lo | 41611/125000 | lo_CZP,lo_HCZ,s528 |
| s629 | 118 | linear | HCQ | lo | 29909/62500 | s268,lo_HCZ,s598 |
| s635 | 119 | linear | HFZ | hi | 4949/15625 | lo_FZP,s43,s507 |
| s636 | 120 | linear | CDY | lo | 4341/10000 | s536,lo_CYZ,s580 |
| s641 | 123 | linear | DFZ | lo | 388207/1000000 | lo_DFP,s547,lo_FZP |
| s642 | 125 | linear | DYQ | lo | 347703/1000000 | lo_DQR,s549,lo_YQR |
| s646 | 128 | support_z | OHF | lo | 124247/1000000 | s222,s379 |
| s647 | 129 | quad | DFQ | lo | 22331/200000 | s619 |
| s651 | 138 | bary_lo | DYZ | hi | 26093/100000 | hi_OHC,lo_HCY,s588,lo_OHY,lo_ODZ,s624,s536 |
| s667 | 142 | bary_lo | CZQ | lo | 91789/500000 | hi_OHD,s452,lo_ODZ,s608,lo_OCQ,s629,lo_CDQ |
| s674 | 149 | bary_lo | OCY | lo | 6011/40000 | hi_OHQ,s554,s620,lo_OHY,s604,lo_OCQ |
| s699 | 159 | bary_lo | CZR | lo | 127803/1000000 | hi_ODY,s580,s574,lo_ODZ,s484,lo_CDR,s513 |
| s700 | 160 | bary_lo | OFR | hi | 858167/1000000 | hi_ODQ,lo_DQR,s603,s544,hi_ODF,hi_OFQ |
| s704 | 167 | bary_hi | HZP | lo | 150527/1000000 | s476,lo_YZR,s572,s574,s222,s467,s424 |
| s708 | 171 | bary_hi | DFZ | hi | 114099/200000 | s227,s536,s452,lo_HCZ,hi_HDF,s573 |
| s710 | 172 | bary_lo | DZQ | hi | 485843/1000000 | s227,s536,s452,lo_HCZ,s627,hi_CDQ |
| s714 | 173 | bary_lo | OHZ | hi | 249877/500000 | s382,lo_CZP,s704,lo_HCZ,hi_OHC,s376 |
| s715 | 174 | bary_lo | OCZ | lo | 31297/250000 | s382,lo_CZP,s704,lo_HCZ,s604,s614 |
| s719 | 175 | bary_lo | HDZ | hi | 420929/1000000 | s382,lo_CZP,s704,lo_HCZ,s227,lo_HDP |
| s722 | 177 | bary_hi | DZR | lo | 11239/100000 | s382,lo_CZP,s704,lo_HCZ,s101,lo_CDR,lo_DPR |
| s728 | 179 | bary_lo | OFP | hi | 65817/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s646,hi_ODF |
| s731 | 181 | bary_hi | HZP | hi | 130667/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s719,s635 |
| s737 | 182 | bary_hi | DZP | lo | 51929/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s452,s641 |
| s742 | 184 | bary_hi | HFZ | lo | 4293/31250 | s233,s580,lo_CYZ,s536,s623,lo_HDF,lo_HFY |
| s749 | 187 | bary_hi | HDR | lo | 38623/200000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s548 |
| s752 | 188 | bary_hi | HPR | lo | 155283/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s628,lo_HDP,s529 |
| s755 | 190 | bary_lo | DYR | lo | 173113/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s636,s642 |
| s766 | 192 | bary_hi | HDZ | lo | 295977/1000000 | s426,lo_YZR,s699,lo_CYZ,lo_HCD,s230,s749 |
| s767 | 193 | bary_hi | HZP | lo | 163203/1000000 | s426,lo_YZR,s699,lo_CYZ,s628,s467,s752 |
| s772 | 195 | bary_lo | HYP | lo | 55751/500000 | s708,lo_FZP,s737,lo_DFP,s230,lo_HFY,lo_HYZ |
| s788 | 199 | bary_lo | OCR | lo | 118423/1000000 | s710,lo_ZQR,lo_DQR,s722,lo_OCD,s715,lo_OCQ |
| s800 | 0 | sum | OHC | lo | 13451/40000 | lo_HCY,s674,lo_OHY |
| s806 | 7 | sub | CDZ | hi | 332023/1000000 | s227,lo_HCZ,s766 |
| s808 | 8 | sum | HCP | lo | 349203/1000000 | lo_CZP,lo_HCZ,s767 |
| s810 | 9 | sum | HCQ | lo | 490871/1000000 | s667,lo_HCZ,s598 |
| s812 | 13 | sum | CYQ | lo | 184789/500000 | lo_CYZ,s667,lo_YZQ |
| s813 | 14 | sum | CYR | lo | 313803/1000000 | lo_CYZ,s699,lo_YZR |
| s815 | 16 | sum | DFZ | lo | 98429/250000 | lo_DFP,s737,lo_FZP |
| s816 | 17 | sum | DYQ | lo | 359113/1000000 | lo_DQR,s755,lo_YQR |
| s817 | 18 | sum | DZQ | lo | 29839/100000 | lo_DQR,s722,lo_ZQR |
| s820 | 21 | sumlo | HCF | lo | 11253/62500 | lo_HCD,s646,lo_HDF,s800,hi_OHD |
| s827 | 30 | sumlo | HPQ | lo | 149591/1000000 | s808,s548,s810,lo_HDP,s227 |
| s833 | 37 | sumlo | ODR | lo | 144213/1000000 | lo_CDR,s221,s749,lo_OCD,s227 |
| s836 | 39 | diff | CDF | lo | 101941/250000 | s815,lo_HCD,s806,hi_HDF,s719 |
| s837 | 40 | sumlo | CDP | lo | 334849/1000000 | s836,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s838 | 41 | sumlo | HDQ | lo | 190269/1000000 | lo_CDQ,lo_HDF,s647,lo_HCD,s573 |
| s842 | 42 | sumlo | HDR | lo | 97901/500000 | lo_CDR,s838,lo_DQR,lo_HCD,hi_CDQ |
| s844 | 43 | sumlo | DZP | lo | 52403/250000 | lo_DFP,s766,s815,lo_HDP,hi_HDF |
| s845 | 44 | sumlo | HDQ | lo | 101927/500000 | s647,s766,s817,lo_HDF,s708 |
| s846 | 45 | sumlo | DPQ | lo | 95889/1000000 | lo_DFP,s845,s647,lo_HDP,hi_HDF |
| s848 | 47 | sumlo | DYR | lo | 4391/25000 | lo_CDR,s816,s636,lo_DQR,hi_CDQ |
| s849 | 48 | sumlo | DPR | lo | 95377/1000000 | s837,lo_DQR,lo_CDR,s846,hi_CDQ |
| s852 | 53 | sumlo | HYQ | lo | 100797/500000 | s816,lo_HYZ,s230,lo_YZQ,s651 |
| s855 | 54 | sumlo | OCZ | lo | 137793/1000000 | lo_CZP,s608,lo_HCZ,lo_OZP,s731 |
| s857 | 56 | sumlo | OZQ | lo | 7997/31250 | s817,s608,s598,lo_ODZ,s719 |
| s858 | 57 | sumlo | OFZ | lo | 30717/200000 | lo_FZP,s608,s742,lo_OZP,s731 |
| s865 | 76 | balance_hi | CDF | hi | 201633/250000 | s227,s700,lo_HDF,s788,s820,s833,lo_OHR |
| s867 | 78 | balance_lo | OYZ | lo | 307/2500 | s616,lo_HCZ,s580,s800,lo_ODZ,lo_HCY,s227 |
| s872 | 80 | balance_lo | DYZ | lo | 73847/500000 | lo_YZQ,lo_HCD,s817,lo_HCY,s816,lo_HCZ,s605 |
| s878 | 85 | balance_lo | HZQ | lo | 8787/40000 | lo_HYZ,lo_CDQ,lo_YZQ,lo_HCD,s852,s536,s233 |
| s880 | 88 | balance_lo | OCY | lo | 182413/1000000 | s800,s872,lo_HCY,lo_ODZ,lo_OHY,s536,s719 |
| s892 | 100 | balance_lo | OQR | lo | 743/6250 | lo_OCD,lo_ZQR,lo_ODZ,lo_CQR,s855,lo_DQR,s806 |
| s893 | 101 | linear | OHC | lo | 368413/1000000 | lo_HCY,s880,lo_OHY |
| s894 | 102 | linear | HCQ | hi | 817587/1000000 | hi_OCQ,s893,hi_OHQ |
| s897 | 105 | linear | OHZ | lo | 193/625 | lo_HYZ,lo_OHY,s867 |
| s900 | 107 | linear | OHQ | lo | 784379/1000000 | s878,s897,s857 |
| s903 | 110 | linear | ODY | lo | 181747/500000 | s872,lo_ODZ,s867 |
| s904 | 111 | linear | ODQ | lo | 356093/1000000 | lo_DQR,s833,s892 |
| s906 | 112 | linear | FZQ | hi | 576891/1000000 | hi_OFQ,s858,s857 |
| s907 | 113 | linear | OYQ | lo | 58963/125000 | s867,s857,lo_YZQ |
| s912 | 116 | linear | HDQ | hi | 650129/1000000 | hi_CDQ,s227,s810 |
| s913 | 118 | linear | HCQ | lo | 496253/1000000 | s667,lo_HCZ,s878 |
| s917 | 119 | linear | HFZ | hi | 144167/500000 | lo_FZP,s43,s731 |
| s919 | 120 | linear | CDY | lo | 439279/1000000 | s536,lo_CYZ,s872 |
| s923 | 123 | linear | DFZ | lo | 98903/250000 | lo_DFP,s844,lo_FZP |
| s925 | 125 | linear | DYQ | lo | 9041/25000 | lo_DQR,s848,lo_YQR |
| s926 | 128 | support_z | OHF | lo | 64139/500000 | s222,s728 |
| s927 | 129 | quad | DFQ | lo | 167109/1000000 | s906 |
| s928 | 134 | linear | HCF | hi | 148059/250000 | s836 |
| s931 | 137 | bary_hi | CYQ | hi | 302673/500000 | hi_OHC,lo_HCY,s880,lo_OHY,hi_OCQ,s894 |
| s943 | 142 | bary_lo | CZQ | lo | 187939/1000000 | hi_OHD,s766,lo_ODZ,s897,lo_OCQ,s913,lo_CDQ |
| s949 | 147 | bary_lo | DYZ | hi | 3087/12500 | s714,lo_HYZ,s867,lo_OHY,lo_ODZ,s719 |
| s952 | 149 | bary_lo | OCY | lo | 18243/100000 | hi_OHQ,s852,s907,lo_OHY,s893,lo_OCQ |
| s961 | 153 | bary_lo | DYQ | hi | 63773/100000 | hi_OHQ,s852,s907,lo_OHY,hi_ODQ,s912 |
| s972 | 159 | bary_lo | CZR | lo | 65401/500000 | hi_ODY,s872,s867,lo_ODZ,s788,lo_CDR,s813 |
| s979 | 171 | bary_hi | DFZ | hi | 282319/500000 | s227,s536,s766,lo_HCZ,hi_HDF,s865 |
| s981 | 172 | bary_lo | DZQ | hi | 471801/1000000 | s227,s536,s766,lo_HCZ,s912,hi_CDQ |
| s984 | 176 | bary_lo | CDZ | lo | 100563/500000 | s382,lo_CZP,s767,lo_HCZ,lo_HCD,s837 |
| s986 | 177 | bary_hi | DZR | lo | 113561/1000000 | s382,lo_CZP,s767,lo_HCZ,s842,lo_CDR,s849 |
| s988 | 179 | bary_lo | OFP | hi | 16393/50000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s926,hi_ODF |
| s990 | 180 | bary_hi | HCP | hi | 462739/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s227,s928 |
| s991 | 181 | bary_hi | HZP | hi | 126351/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s719,s917 |
| s998 | 182 | bary_hi | DZP | lo | 52547/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s766,s923 |
| s1001 | 184 | bary_hi | HFZ | lo | 143751/1000000 | s233,s872,lo_CYZ,s984,s820,lo_HDF,lo_HFY |
| s1005 | 187 | bary_hi | HDR | lo | 19881/100000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s845 |
| s1007 | 188 | bary_hi | HPR | lo | 162261/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s808,lo_HDP,s827 |
| s1009 | 189 | bary_lo | CYR | hi | 468829/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s233,s931 |
| s1012 | 190 | bary_lo | DYR | lo | 88673/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s919,s925 |
| s1020 | 191 | bary_hi | OCZ | hi | 67923/200000 | s931,lo_YZQ,s943,lo_CYZ,hi_OCY,hi_OCQ |
| s1024 | 192 | bary_hi | HDZ | lo | 18699/62500 | s1009,lo_YZR,s972,lo_CYZ,lo_HCD,s230,s1005 |
| s1025 | 193 | bary_hi | HZP | lo | 84361/500000 | s1009,lo_YZR,s972,lo_CYZ,s808,s772,s1007 |
| s1030 | 195 | bary_lo | HYP | lo | 55847/500000 | s979,lo_FZP,s998,lo_DFP,s230,lo_HFY,lo_HYZ |
| s1039 | 197 | bary_lo | OQR | lo | 120717/1000000 | s961,lo_YQR,lo_DQR,s1012,s904,s907 |
| s1041 | 198 | bary_lo | CQR | lo | 94581/1000000 | s961,lo_YQR,lo_DQR,s1012,lo_CDQ,s812 |
| s1046 | 199 | bary_lo | OCR | lo | 1901/15625 | s981,lo_ZQR,lo_DQR,s986,lo_OCD,s855,lo_OCQ |
| s1058 | 0 | sum | OHC | lo | 36843/100000 | lo_HCY,s952,lo_OHY |
| s1061 | 6 | sum | ODQ | lo | 35793/100000 | lo_DQR,s833,s1039 |
| s1063 | 7 | sub | CDZ | hi | 20551/62500 | s227,lo_HCZ,s1024 |
| s1064 | 8 | sum | HCP | lo | 177361/500000 | lo_CZP,lo_HCZ,s1025 |
| s1066 | 9 | sum | HCQ | lo | 250307/500000 | s943,lo_HCZ,s878 |
| s1068 | 11 | sum | CDY | lo | 22091/50000 | s984,lo_CYZ,s872 |
| s1069 | 12 | sum | CDQ | lo | 280581/1000000 | lo_CDR,s1041,lo_DQR |
| s1071 | 13 | sum | CYQ | lo | 373939/1000000 | lo_CYZ,s943,lo_YZQ |
| s1072 | 14 | sum | CYR | lo | 158401/500000 | lo_CYZ,s972,lo_YZR |
| s1073 | 16 | sum | DFZ | lo | 99047/250000 | lo_DFP,s998,lo_FZP |
| s1074 | 17 | sum | DYQ | lo | 181673/500000 | lo_DQR,s1012,lo_YQR |
| s1075 | 18 | sum | DZQ | lo | 299561/1000000 | lo_DQR,s986,lo_ZQR |
| s1080 | 21 | sumlo | HCF | lo | 23977/125000 | lo_HCD,s926,lo_HDF,s1058,hi_OHD |
| s1085 | 30 | sumlo | HPQ | lo | 82433/500000 | s1064,s845,s1066,lo_HDP,s227 |
| s1086 | 32 | sumlo | OCD | lo | 10269/50000 | s1069,s1058,lo_HCD,lo_OCQ,s894 |
| s1090 | 35 | sumlo | CDZ | lo | 8271/40000 | s837,lo_HCZ,lo_CZP,lo_HCD,s990 |
| s1096 | 39 | diff | CDF | lo | 414171/1000000 | s1073,lo_HCD,s1063,hi_HDF,s719 |
| s1097 | 40 | sumlo | CDP | lo | 336797/1000000 | s1096,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1098 | 41 | sumlo | HDQ | lo | 240853/1000000 | s1069,lo_HDF,s927,lo_HCD,s865 |
| s1103 | 42 | sumlo | HDR | lo | 207003/1000000 | lo_CDR,s1098,lo_DQR,lo_HCD,hi_CDQ |
| s1104 | 43 | sumlo | DZP | lo | 105669/500000 | lo_DFP,s1024,s1073,lo_HDP,hi_HDF |
| s1105 | 45 | sumlo | DPQ | lo | 30997/250000 | lo_DFP,s1098,s927,lo_HDP,hi_HDF |
| s1108 | 47 | sumlo | DYR | lo | 89143/500000 | lo_CDR,s1074,s1068,lo_DQR,hi_CDQ |
| s1109 | 48 | sumlo | DPR | lo | 10203/100000 | s1097,lo_DQR,lo_CDR,s1105,hi_CDQ |
| s1110 | 53 | sumlo | HYQ | lo | 3353/15625 | s1074,lo_HYZ,s230,lo_YZQ,s949 |
| s1111 | 54 | sumlo | OCZ | lo | 147871/1000000 | lo_CZP,s897,lo_HCZ,lo_OZP,s991 |
| s1113 | 56 | sumlo | OZQ | lo | 268297/1000000 | s1075,s897,s878,lo_ODZ,s719 |
| s1114 | 57 | sumlo | OFZ | lo | 41637/250000 | lo_FZP,s897,s1001,lo_OZP,s991 |
| s1120 | 63 | sumlo | CZQ | lo | 7627/40000 | s1090,lo_YZQ,lo_CYZ,s1075,s949 |
| s1126 | 69 | sumlo | CQR | lo | 11931/125000 | s1069,lo_YQR,s1071,lo_DQR,s961 |
| s1127 | 75 | balance_hi | CDF | hi | 786069/1000000 | s227,hi_OFQ,lo_HDF,lo_OCQ,s1080,s1061,s900 |
| s1128 | 78 | balance_lo | OYZ | lo | 134353/1000000 | s903,lo_HCZ,s872,s1058,lo_ODZ,lo_HCY,s227 |
| s1132 | 80 | balance_lo | DYZ | lo | 154347/1000000 | lo_YZQ,lo_HCD,s1075,lo_HCY,s1074,lo_HCZ,s894 |
| s1133 | 80 | balance_lo | HCQ | lo | 255491/500000 | lo_YZQ,lo_HCD,s1075,lo_HCY,s1074,lo_HCZ,s949 |
| s1136 | 85 | balance_lo | HZQ | lo | 9089/40000 | lo_HYZ,s1069,lo_YZQ,lo_HCD,s1110,s1090,s233 |
| s1138 | 88 | balance_lo | OCY | lo | 12583/62500 | s1058,s1132,lo_HCY,lo_ODZ,lo_OHY,s1090,s719 |
| s1140 | 91 | balance_lo | ODR | lo | 154677/1000000 | s1058,lo_DQR,lo_OCQ,s1103,s900,lo_CDR,s894 |
| s1150 | 100 | balance_lo | OQR | lo | 63453/500000 | s1086,lo_ZQR,lo_ODZ,s1126,s1111,lo_DQR,s1063 |
| s1151 | 101 | linear | OHC | lo | 6052/15625 | lo_HCY,s1138,lo_OHY |
| s1152 | 102 | linear | HCQ | hi | 49917/62500 | hi_OCQ,s1151,hi_OHQ |
| s1155 | 105 | linear | OHZ | lo | 320353/1000000 | lo_HYZ,lo_OHY,s1128 |
| s1159 | 107 | linear | OHQ | lo | 6527/8000 | s1136,s1155,s1113 |
| s1161 | 108 | linear | OCD | hi | 575431/1000000 | s1063,s1020,lo_ODZ |
| s1163 | 110 | linear | ODY | lo | 3817/10000 | s1132,lo_ODZ,s1128 |
| s1164 | 111 | linear | ODQ | lo | 374583/1000000 | lo_DQR,s1140,s1150 |
| s1167 | 112 | linear | FZQ | hi | 110307/200000 | hi_OFQ,s1114,s1113 |
| s1169 | 113 | linear | OYQ | lo | 9913/20000 | s1128,s1113,lo_YZQ |
| s1173 | 116 | linear | HDQ | hi | 315009/500000 | hi_CDQ,s227,s1133 |
| s1177 | 119 | linear | HFZ | hi | 139851/500000 | lo_FZP,s43,s991 |
| s1179 | 120 | linear | CDY | lo | 227061/500000 | s1090,lo_CYZ,s1132 |
| s1180 | 121 | linear | CDQ | lo | 35181/125000 | lo_CDR,s1126,lo_DQR |
| s1184 | 122 | linear | CYQ | lo | 15067/40000 | lo_CYZ,s1120,lo_YZQ |
| s1185 | 123 | linear | DFZ | lo | 198669/500000 | lo_DFP,s1104,lo_FZP |
| s1188 | 125 | linear | DYQ | lo | 182143/500000 | lo_DQR,s1108,lo_YQR |
| s1190 | 128 | support_z | OHF | lo | 64513/500000 | s222,s988 |
| s1191 | 129 | quad | DFQ | lo | 38493/200000 | s1167 |
| s1192 | 134 | linear | HCF | hi | 585829/1000000 | s1096 |
| s1193 | 136 | bary_hi | CDY | hi | 297043/500000 | hi_OHC,lo_HCY,s1138,lo_OHY,s1161,s227 |
| s1194 | 137 | bary_hi | CYQ | hi | 147993/250000 | hi_OHC,lo_HCY,s1138,lo_OHY,hi_OCQ,s1152 |
| s1205 | 142 | bary_lo | CZQ | lo | 96121/500000 | hi_OHD,s1024,lo_ODZ,s1155,lo_OCQ,s1133,s1180 |
| s1222 | 152 | bary_lo | DYZ | hi | 243639/1000000 | hi_OHQ,s1110,s1169,lo_OHY,lo_ODZ,s719,s1075 |
| s1224 | 153 | bary_lo | DYQ | hi | 312559/500000 | hi_OHQ,s1110,s1169,lo_OHY,hi_ODQ,s1173 |
| s1236 | 159 | bary_lo | CZR | lo | 132277/1000000 | hi_ODY,s1132,s1128,lo_ODZ,s1046,lo_CDR,s1072 |
| s1242 | 171 | bary_hi | DFZ | hi | 273499/500000 | s227,s1090,s1024,lo_HCZ,hi_HDF,s1127 |
| s1244 | 172 | bary_lo | DZQ | hi | 230803/500000 | s227,s1090,s1024,lo_HCZ,s1173,hi_CDQ |
| s1247 | 175 | bary_lo | HDZ | hi | 33/80 | s990,lo_CZP,s1025,lo_HCZ,s227,lo_HDP |
| s1248 | 176 | bary_lo | CDZ | lo | 103583/500000 | s990,lo_CZP,s1025,lo_HCZ,lo_HCD,s1097 |
| s1250 | 177 | bary_hi | DZR | lo | 58863/500000 | s990,lo_CZP,s1025,lo_HCZ,s1103,lo_CDR,s1109 |
| s1254 | 180 | bary_hi | HCP | hi | 57599/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s227,s1192 |
| s1256 | 181 | bary_hi | HZP | hi | 246773/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1247,s1177 |
| s1262 | 182 | bary_hi | DZP | lo | 26461/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1024,s1185 |
| s1267 | 184 | bary_hi | HFZ | lo | 147789/1000000 | s1193,s1132,lo_CYZ,s1248,s1080,lo_HDF,lo_HFY |
| s1274 | 188 | bary_hi | HPR | lo | 33373/200000 | hi_CDQ,lo_DQR,s1126,lo_CDR,s1064,lo_HDP,s1085 |
| s1276 | 189 | bary_lo | CYR | hi | 462071/1000000 | hi_CDQ,lo_DQR,s1126,lo_CDR,s1193,s1194 |
| s1279 | 190 | bary_lo | DYR | lo | 90609/500000 | hi_CDQ,lo_DQR,s1126,lo_CDR,s1179,s1188 |
| s1287 | 191 | bary_hi | OCZ | hi | 42143/125000 | s1194,lo_YZQ,s1205,lo_CYZ,hi_OCY,hi_OCQ |
| s1290 | 192 | bary_hi | HDZ | lo | 304719/1000000 | s1276,lo_YZR,s1236,lo_CYZ,lo_HCD,s230,s1103 |
| s1291 | 193 | bary_hi | HZP | lo | 171711/1000000 | s1276,lo_YZR,s1236,lo_CYZ,s1064,s1030,s1274 |
| s1297 | 195 | bary_lo | HYP | lo | 112297/1000000 | s1242,lo_FZP,s1262,lo_DFP,s230,lo_HFY,lo_HYZ |
| s1308 | 198 | bary_lo | CQR | lo | 9791/100000 | s1224,lo_YQR,lo_DQR,s1279,s1180,s1184 |
| s1313 | 199 | bary_lo | OCR | lo | 15837/125000 | s1244,lo_ZQR,lo_DQR,s1250,s1086,s1111,lo_OCQ |
| s1315 | 200 | bary_lo | OQR | lo | 129521/1000000 | s1244,lo_ZQR,lo_DQR,s1250,s1164,s1113 |
| s1326 | 2 | sum | OHD | lo | 89759/125000 | s1290,lo_ODZ,s1155 |
| s1329 | 6 | sum | ODQ | lo | 188599/500000 | lo_DQR,s1140,s1315 |
| s1332 | 7 | sub | CDZ | hi | 323281/1000000 | s227,lo_HCZ,s1290 |
| s1333 | 8 | sum | HCP | lo | 357711/1000000 | lo_CZP,lo_HCZ,s1291 |
| s1335 | 9 | sum | HCQ | lo | 512467/1000000 | s1205,lo_HCZ,s1136 |
| s1337 | 11 | sum | CDY | lo | 454513/1000000 | s1248,lo_CYZ,s1132 |
| s1338 | 12 | sum | CDQ | lo | 28391/100000 | lo_CDR,s1308,lo_DQR |
| s1340 | 13 | sum | CYQ | lo | 189121/500000 | lo_CYZ,s1205,lo_YZQ |
| s1341 | 14 | sum | CYR | lo | 318277/1000000 | lo_CYZ,s1236,lo_YZR |
| s1342 | 16 | sum | DFZ | lo | 49711/125000 | lo_DFP,s1262,lo_FZP |
| s1343 | 17 | sum | DYQ | lo | 183609/500000 | lo_DQR,s1279,lo_YQR |
| s1344 | 18 | sum | DZQ | lo | 151863/500000 | lo_DQR,s1250,lo_ZQR |
| s1348 | 21 | sumlo | HCF | lo | 24701/125000 | lo_HCD,s1190,lo_HDF,s1151,hi_OHD |
| s1349 | 22 | sumlo | HDY | lo | 206807/1000000 | lo_HCD,lo_OHY,lo_HCY,s1326,hi_OHC |
| s1354 | 30 | sumlo | HPQ | lo | 46399/250000 | s1333,s1098,s1335,lo_HDP,s227 |
| s1355 | 32 | sumlo | OCD | lo | 109249/500000 | s1338,s1151,lo_HCD,lo_OCQ,s1152 |
| s1357 | 35 | sumlo | CDZ | lo | 104021/500000 | s1097,lo_HCZ,lo_CZP,lo_HCD,s1254 |
| s1359 | 38 | sumlo | ODP | lo | 429159/1000000 | lo_DFP,s1326,lo_HDP,lo_ODF,hi_HDF |
| s1361 | 39 | diff | CDF | lo | 26829/62500 | s1342,lo_HCD,s1332,hi_HDF,s1247 |
| s1362 | 40 | sumlo | CDP | lo | 42673/125000 | s1361,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1363 | 41 | sumlo | HDQ | lo | 27069/100000 | s1338,lo_HDF,s1191,lo_HCD,s1127 |
| s1368 | 42 | sumlo | HDR | lo | 213609/1000000 | lo_CDR,s1363,lo_DQR,lo_HCD,hi_CDQ |
| s1370 | 43 | sumlo | DZP | lo | 53369/250000 | lo_DFP,s1290,s1342,lo_HDP,hi_HDF |
| s1371 | 45 | sumlo | DPQ | lo | 70381/500000 | lo_DFP,s1363,s1191,lo_HDP,hi_HDF |
| s1374 | 47 | sumlo | DYR | lo | 90977/500000 | lo_CDR,s1343,s1337,lo_DQR,hi_CDQ |
| s1375 | 48 | sumlo | DPR | lo | 2669/25000 | s1362,lo_DQR,lo_CDR,s1371,hi_CDQ |
| s1376 | 53 | sumlo | HYQ | lo | 27389/125000 | s1343,lo_HYZ,s1349,lo_YZQ,s1222 |
| s1377 | 54 | sumlo | OCZ | lo | 77889/500000 | lo_CZP,s1155,lo_HCZ,lo_OZP,s1256 |
| s1379 | 56 | sumlo | OZQ | lo | 143553/500000 | s1344,s1155,s1136,lo_ODZ,s1247 |
| s1380 | 57 | sumlo | OFZ | lo | 88213/500000 | lo_FZP,s1155,s1267,lo_OZP,s1256 |
| s1385 | 61 | sumlo | HZQ | lo | 929/4000 | s1344,lo_HYZ,s1290,lo_YZQ,s1222 |
| s1386 | 63 | sumlo | CZQ | lo | 48837/250000 | s1357,lo_YZQ,lo_CYZ,s1344,s1222 |
| s1389 | 65 | sumlo | OFP | lo | 39759/250000 | lo_FZP,s222,lo_HFP,lo_OZP,s1256 |
| s1392 | 69 | sumlo | CQR | lo | 98509/1000000 | s1338,lo_YQR,s1340,lo_DQR,s1224 |
| s1393 | 75 | balance_hi | CDF | hi | 187129/250000 | s227,hi_OFQ,lo_HDF,lo_OCQ,s1348,s1329,s1159 |
| s1394 | 78 | balance_lo | OYZ | lo | 144147/1000000 | s1163,lo_HCZ,s1132,s1151,lo_ODZ,lo_HCY,s227 |
| s1396 | 80 | balance_lo | DYZ | lo | 79469/500000 | lo_YZQ,lo_HCD,s1344,lo_HCY,s1343,lo_HCZ,s1152 |
| s1397 | 80 | balance_lo | HCQ | lo | 104203/200000 | lo_YZQ,lo_HCD,s1344,lo_HCY,s1343,lo_HCZ,s1222 |
| s1400 | 81 | balance_lo | HDY | lo | 207873/1000000 | lo_ODF,s1376,s1191,lo_OHY,s1329,lo_HFY,hi_OFQ |
| s1404 | 88 | balance_lo | OCY | lo | 21711/100000 | s1151,s1396,lo_HCY,lo_ODZ,lo_OHY,s1357,s1247 |
| s1406 | 91 | balance_lo | ODR | lo | 82489/500000 | s1151,lo_DQR,lo_OCQ,s1368,s1159,lo_CDR,s1152 |
| s1419 | 98 | balance_lo | ZPQ | lo | 71463/250000 | s1362,s1385,lo_HDP,s1386,s1333,s1344,s227 |
| s1420 | 100 | balance_lo | OQR | lo | 17001/125000 | s1355,lo_ZQR,lo_ODZ,s1392,s1377,lo_DQR,s1332 |
| s1421 | 101 | linear | OHC | lo | 40311/100000 | lo_HCY,s1404,lo_OHY |
| s1422 | 102 | linear | HCQ | hi | 78289/100000 | hi_OCQ,s1421,hi_OHQ |
| s1425 | 105 | linear | OHZ | lo | 330147/1000000 | lo_HYZ,lo_OHY,s1394 |
| s1426 | 106 | linear | OYQ | hi | 42993/62500 | s1376,hi_OHQ,lo_OHY |
| s1428 | 107 | linear | OHZ | hi | 120161/250000 | s1385,hi_OHQ,s1379 |
| s1430 | 107 | linear | OHQ | lo | 849503/1000000 | s1385,s1425,s1379 |
| s1432 | 108 | linear | OCD | hi | 22697/40000 | s1332,s1287,lo_ODZ |
| s1434 | 110 | linear | ODY | lo | 79217/200000 | s1396,lo_ODZ,s1394 |
| s1435 | 111 | linear | ODQ | lo | 196993/500000 | lo_DQR,s1406,s1420 |
| s1438 | 112 | linear | FZQ | hi | 16339/31250 | hi_OFQ,s1380,s1379 |
| s1440 | 113 | linear | OYQ | lo | 524253/1000000 | s1394,s1379,lo_YZQ |
| s1443 | 114 | linear | HCF | lo | 56121/250000 | s1393,lo_HCD,lo_HDF |
| s1449 | 119 | linear | HFZ | hi | 273773/1000000 | lo_FZP,s43,s1256 |
| s1451 | 120 | linear | CDY | lo | 22999/50000 | s1357,lo_CYZ,s1396 |
| s1452 | 121 | linear | CDQ | lo | 284509/1000000 | lo_CDR,s1392,lo_DQR |
| s1456 | 122 | linear | CYQ | lo | 95337/250000 | lo_CYZ,s1386,lo_YZQ |
| s1457 | 123 | linear | DFZ | lo | 99869/250000 | lo_DFP,s1370,lo_FZP |
| s1459 | 124 | linear | DYQ | hi | 122449/200000 | s1222,s1244,lo_YZQ |
| s1460 | 125 | linear | DYQ | lo | 183977/500000 | lo_DQR,s1374,lo_YQR |
| s1463 | 129 | quad | DFQ | lo | 6911/31250 | s1438 |
| s1465 | 134 | linear | HCF | hi | 35671/62500 | s1361 |
| s1466 | 136 | bary_hi | CDY | hi | 592913/1000000 | hi_OHC,lo_HCY,s1404,lo_OHY,s1432,s227 |
| s1473 | 142 | bary_lo | CZQ | lo | 196031/1000000 | hi_OHD,s1290,lo_ODZ,s1425,lo_OCQ,s1397,s1452 |
| s1481 | 147 | bary_lo | DYZ | hi | 58719/250000 | s1428,lo_HYZ,s1394,lo_OHY,lo_ODZ,s1247 |
| s1486 | 149 | bary_lo | OCY | lo | 10999/50000 | hi_OHQ,s1376,s1440,lo_OHY,s1421,lo_OCQ |
| s1495 | 151 | bary_hi | CYQ | hi | 18103/31250 | hi_OHQ,s1376,s1440,lo_OHY,hi_OCQ,s1422 |
| s1506 | 155 | bary_hi | OCP | hi | 560383/1000000 | hi_ODF,lo_DFP,s1389,s1359,s1432,hi_OCF |
| s1507 | 156 | bary_hi | OPQ | hi | 849923/1000000 | hi_ODF,lo_DFP,s1389,s1359,hi_ODQ,hi_OFQ |
| s1511 | 159 | bary_lo | CZR | lo | 6697/50000 | hi_ODY,s1396,s1394,lo_ODZ,s1313,lo_CDR,s1341 |
| s1516 | 168 | bary_hi | OCZ | hi | 165473/500000 | s1507,s1419,s1379,lo_OZP,s1506,hi_OCQ |
| s1518 | 171 | bary_hi | DFZ | hi | 524281/1000000 | s227,s1357,s1290,lo_HCZ,hi_HDF,s1393 |
| s1520 | 175 | bary_lo | HDZ | hi | 411197/1000000 | s1254,lo_CZP,s1291,lo_HCZ,s227,lo_HDP |
| s1521 | 176 | bary_lo | CDZ | lo | 208967/1000000 | s1254,lo_CZP,s1291,lo_HCZ,lo_HCD,s1362 |
| s1523 | 177 | bary_hi | DZR | lo | 120119/1000000 | s1254,lo_CZP,s1291,lo_HCZ,s1368,lo_CDR,s1375 |
| s1527 | 180 | bary_hi | HCP | hi | 91241/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s227,s1465 |
| s1529 | 181 | bary_hi | HZP | hi | 12223/50000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1520,s1449 |
| s1534 | 182 | bary_hi | DZP | lo | 10701/50000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1290,s1457 |
| s1539 | 184 | bary_hi | HFZ | lo | 7871/50000 | s1466,s1396,lo_CYZ,s1521,s1443,lo_HDF,lo_HFY |
| s1542 | 186 | bary_hi | OZR | lo | 149881/1000000 | hi_CDQ,lo_DQR,s1392,lo_CDR,s1377,lo_ODZ,s1379 |
| s1546 | 188 | bary_hi | HPR | lo | 172117/1000000 | hi_CDQ,lo_DQR,s1392,lo_CDR,s1333,lo_HDP,s1354 |
| s1548 | 189 | bary_lo | CYR | hi | 45861/100000 | hi_CDQ,lo_DQR,s1392,lo_CDR,s1466,s1495 |
| s1551 | 190 | bary_lo | DYR | lo | 5729/31250 | hi_CDQ,lo_DQR,s1392,lo_CDR,s1451,s1460 |
| s1561 | 192 | bary_hi | HDZ | lo | 9613/31250 | s1548,lo_YZR,s1511,lo_CYZ,lo_HCD,s1400,s1368 |
| s1562 | 193 | bary_hi | HZP | lo | 87097/500000 | s1548,lo_YZR,s1511,lo_CYZ,s1333,s1297,s1546 |
| s1568 | 195 | bary_lo | HYP | lo | 3543/31250 | s1518,lo_FZP,s1534,lo_DFP,s1400,lo_HFY,lo_HYZ |
| s1578 | 197 | bary_lo | OQR | lo | 3487/25000 | s1459,lo_YQR,lo_DQR,s1551,s1435,s1440 |
| s1581 | 198 | bary_lo | CQR | lo | 101143/1000000 | s1459,lo_YQR,lo_DQR,s1551,s1452,s1456 |
| s1599 | 0 | sum | OHC | lo | 20299/50000 | lo_HCY,s1486,lo_OHY |
| s1600 | 2 | sum | OHD | lo | 730763/1000000 | s1561,lo_ODZ,s1425 |
| s1601 | 6 | sum | ODQ | lo | 198729/500000 | lo_DQR,s1406,s1578 |
| s1604 | 7 | sub | CDZ | hi | 5006/15625 | s227,lo_HCZ,s1561 |
| s1605 | 8 | sum | HCP | lo | 180097/500000 | lo_CZP,lo_HCZ,s1562 |
| s1608 | 11 | sum | CDY | lo | 92181/200000 | s1521,lo_CYZ,s1396 |
| s1609 | 12 | sum | CDQ | lo | 287143/1000000 | lo_CDR,s1581,lo_DQR |
| s1611 | 13 | sum | CYQ | lo | 382031/1000000 | lo_CYZ,s1473,lo_YZQ |
| s1613 | 16 | sum | DFZ | lo | 20001/50000 | lo_DFP,s1534,lo_FZP |
| s1614 | 17 | sum | DYQ | lo | 23083/62500 | lo_DQR,s1551,lo_YQR |
| s1615 | 18 | sum | DZQ | lo | 306119/1000000 | lo_DQR,s1523,lo_ZQR |
| s1620 | 22 | sumlo | HDY | lo | 104333/500000 | lo_HCD,lo_OHY,lo_HCY,s1600,hi_OHC |
| s1622 | 27 | diffhi | HCF | hi | 55733/100000 | s227,s1449,lo_HCZ,lo_HDF,s1561 |
| s1625 | 32 | sumlo | OCD | lo | 231343/1000000 | s1609,s1599,lo_HCD,lo_OCQ,s1422 |
| s1627 | 35 | sumlo | CDZ | lo | 52767/250000 | s1362,lo_HCZ,lo_CZP,lo_HCD,s1527 |
| s1630 | 39 | diff | CDF | lo | 109179/250000 | s1613,lo_HCD,s1604,hi_HDF,s1520 |
| s1631 | 40 | sumlo | CDP | lo | 10739/31250 | s1630,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1632 | 41 | sumlo | HDQ | lo | 156037/500000 | s1609,lo_HDF,s1463,lo_HCD,s1393 |
| s1637 | 42 | sumlo | HDR | lo | 222773/1000000 | lo_CDR,s1632,lo_DQR,lo_HCD,hi_CDQ |
| s1638 | 43 | sumlo | DZP | lo | 43013/200000 | lo_DFP,s1561,s1613,lo_HDP,hi_HDF |
| s1639 | 45 | sumlo | DPQ | lo | 81029/500000 | lo_DFP,s1632,s1463,lo_HDP,hi_HDF |
| s1642 | 47 | sumlo | DYR | lo | 183837/1000000 | lo_CDR,s1614,s1608,lo_DQR,hi_CDQ |
| s1643 | 48 | sumlo | DPR | lo | 111977/1000000 | s1631,lo_DQR,lo_CDR,s1639,hi_CDQ |
| s1645 | 53 | sumlo | HYQ | lo | 114429/500000 | s1614,lo_HYZ,s1620,lo_YZQ,s1481 |
| s1646 | 54 | sumlo | OCZ | lo | 160977/1000000 | lo_CZP,s1425,lo_HCZ,lo_OZP,s1529 |
| s1647 | 56 | sumlo | OZQ | lo | 74577/250000 | s1615,s1425,s1385,lo_ODZ,s1520 |
| s1648 | 57 | sumlo | OFZ | lo | 37097/200000 | lo_FZP,s1425,s1539,lo_OZP,s1529 |
| s1651 | 59 | sumlo | FYZ | lo | 75659/500000 | s1613,lo_HYZ,s1396,s1539,s1520 |
| s1654 | 61 | sumlo | HZQ | lo | 24301/100000 | s1615,lo_HYZ,s1561,lo_YZQ,s1481 |
| s1655 | 63 | sumlo | CZQ | lo | 102391/500000 | s1627,lo_YZQ,lo_CYZ,s1615,s1481 |
| s1656 | 64 | sumlo | DYZ | lo | 79873/500000 | s1613,lo_YZQ,s1615,s1651,s1438 |
| s1657 | 64 | sumlo | FZQ | lo | 71121/200000 | s1613,lo_YZQ,s1615,s1651,s1481 |
| s1662 | 69 | sumlo | CQR | lo | 101647/1000000 | s1609,lo_YQR,s1611,lo_DQR,s1459 |
| s1663 | 75 | balance_hi | CDF | hi | 701599/1000000 | s227,hi_OFQ,lo_HDF,lo_OCQ,s1443,s1601,s1430 |
| s1664 | 77 | balance_hi | HCQ | hi | 766821/1000000 | hi_OFQ,s227,s1463,s1599,s1601,s1443,lo_ODF |
| s1665 | 78 | balance_lo | OYZ | lo | 30607/200000 | s1434,lo_HCZ,s1656,s1599,lo_ODZ,lo_HCY,s227 |
| s1668 | 80 | balance_lo | DYZ | lo | 83043/500000 | lo_YZQ,lo_HCD,s1615,lo_HCY,s1614,lo_HCZ,s1664 |
| s1669 | 80 | balance_lo | HCQ | lo | 542237/1000000 | lo_YZQ,lo_HCD,s1615,lo_HCY,s1614,lo_HCZ,s1481 |
| s1673 | 81 | balance_lo | HDY | lo | 43869/200000 | lo_ODF,s1645,s1463,lo_OHY,s1601,lo_HFY,hi_OFQ |
| s1675 | 82 | balance_lo | HDZ | lo | 30843/100000 | lo_ODF,s1654,s1463,s1425,s1601,s1539,hi_OFQ |
| s1676 | 83 | balance_lo | CFQ | lo | 104509/250000 | s1630,s1654,s1463,lo_HCZ,s1609,s1539,s1520 |
| s1677 | 84 | balance_lo | HPQ | lo | 207011/1000000 | s1463,s1605,s1676,lo_HDP,s1609,lo_HFP,s1663 |
| s1679 | 88 | balance_lo | OCY | lo | 232749/1000000 | s1599,s1668,lo_HCY,lo_ODZ,lo_OHY,s1627,s1520 |
| s1681 | 91 | balance_lo | ODR | lo | 89641/500000 | s1599,lo_DQR,lo_OCQ,s1637,s1430,lo_CDR,s1664 |
| s1689 | 93 | balance_hi | DYQ | hi | 117289/200000 | s1520,s1426,s1600,lo_YZQ,lo_ODZ,s1645,s1425 |
| s1690 | 94 | balance_lo | HZR | lo | 7533/40000 | s1425,lo_YQR,s1542,s1645,lo_OHR,lo_YZQ,s1426 |
| s1696 | 99 | balance_lo | CZR | lo | 136541/1000000 | s1599,lo_ZQR,s1669,s1542,lo_OCQ,s1690,hi_OHQ |
| s1697 | 100 | balance_lo | OQR | lo | 143387/1000000 | s1625,lo_ZQR,lo_ODZ,s1662,s1646,lo_DQR,s1604 |
| s1698 | 101 | linear | OHC | lo | 418749/1000000 | lo_HCY,s1679,lo_OHY |
| s1699 | 104 | linear | OHD | lo | 731577/1000000 | s1675,lo_ODZ,s1425 |
| s1702 | 105 | linear | OHZ | lo | 67807/200000 | lo_HYZ,lo_OHY,s1665 |
| s1703 | 106 | linear | OYQ | hi | 339071/500000 | s1645,hi_OHQ,lo_OHY |
| s1704 | 107 | linear | OHZ | hi | 229341/500000 | s1654,hi_OHQ,s1647 |
| s1706 | 107 | linear | OHQ | lo | 880353/1000000 | s1654,s1702,s1647 |
| s1708 | 108 | linear | OCD | hi | 55833/100000 | s1604,s1516,lo_ODZ |
| s1710 | 110 | linear | ODY | lo | 412121/1000000 | s1668,lo_ODZ,s1665 |
| s1711 | 111 | linear | ODQ | lo | 415669/1000000 | lo_DQR,s1681,s1697 |
| s1714 | 112 | linear | FZQ | hi | 502587/1000000 | hi_OFQ,s1648,s1647 |
| s1717 | 113 | linear | OYQ | lo | 544343/1000000 | s1665,s1647,lo_YZQ |
| s1720 | 114 | linear | HCF | lo | 271401/1000000 | s1663,lo_HCD,lo_HDF |
| s1726 | 119 | linear | HFZ | hi | 13573/50000 | lo_FZP,s43,s1529 |
| s1728 | 120 | linear | CDY | lo | 235077/500000 | s1627,lo_CYZ,s1668 |
| s1729 | 121 | linear | CDQ | lo | 287647/1000000 | lo_CDR,s1662,lo_DQR |
| s1733 | 122 | linear | CYQ | lo | 195391/500000 | lo_CYZ,s1655,lo_YZQ |
| s1735 | 123 | linear | DFZ | lo | 80213/200000 | lo_DFP,s1638,lo_FZP |
| s1736 | 125 | linear | DYQ | lo | 369837/1000000 | lo_DQR,s1642,lo_YQR |
| s1741 | 129 | quad | DFQ | lo | 241413/1000000 | s1714 |
| s1754 | 147 | bary_lo | DYZ | hi | 225597/1000000 | s1704,lo_HYZ,s1665,lo_OHY,lo_ODZ,s1520 |
| s1760 | 149 | bary_lo | OCY | lo | 14787/62500 | hi_OHQ,s1645,s1717,lo_OHY,s1698,lo_OCQ |
| s1767 | 150 | bary_hi | CDY | hi | 36873/62500 | hi_OHQ,s1645,s1717,lo_OHY,s1708,s227,s1729 |
| s1770 | 151 | bary_hi | CYQ | hi | 281291/500000 | hi_OHQ,s1645,s1717,lo_OHY,hi_OCQ,s1664 |
| s1788 | 163 | bary_hi | OCZ | hi | 8041/25000 | hi_OFQ,s1657,s1647,s1648,hi_OCF,hi_OCQ |
| s1789 | 165 | bary_hi | HDZ | lo | 155259/500000 | s1703,lo_YZQ,s1647,s1665,s1699,s1673,s1632 |
| s1795 | 175 | bary_lo | HDZ | hi | 204041/500000 | s1527,lo_CZP,s1562,lo_HCZ,s227,lo_HDP |
| s1796 | 176 | bary_lo | CDZ | lo | 21153/100000 | s1527,lo_CZP,s1562,lo_HCZ,lo_HCD,s1631 |
| s1798 | 177 | bary_hi | DZR | lo | 123323/1000000 | s1527,lo_CZP,s1562,lo_HCZ,s1637,lo_CDR,s1643 |
| s1803 | 180 | bary_hi | HCP | hi | 45213/100000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s227,s1622 |
| s1805 | 181 | bary_hi | HZP | hi | 48507/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1795,s1726 |
| s1811 | 182 | bary_hi | DZP | lo | 43253/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1789,s1735 |
| s1815 | 183 | bary_lo | ZPQ | lo | 29641/100000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1654,s1615,s1657 |
| s1817 | 184 | bary_hi | HFZ | lo | 172543/1000000 | s1767,s1668,lo_CYZ,s1796,s1720,lo_HDF,lo_HFY |
| s1825 | 188 | bary_hi | HPR | lo | 177409/1000000 | hi_CDQ,lo_DQR,s1662,lo_CDR,s1605,lo_HDP,s1677 |
| s1827 | 189 | bary_lo | CYR | hi | 453269/1000000 | hi_CDQ,lo_DQR,s1662,lo_CDR,s1767,s1770 |
| s1830 | 190 | bary_lo | DYR | lo | 92999/500000 | hi_CDQ,lo_DQR,s1662,lo_CDR,s1728,s1736 |
| s1840 | 192 | bary_hi | HDZ | lo | 79359/250000 | s1827,lo_YZR,s1696,lo_CYZ,lo_HCD,s1673,s1637 |
| s1841 | 193 | bary_hi | HZP | lo | 35431/200000 | s1827,lo_YZR,s1696,lo_CYZ,s1605,s1568,s1825 |
| s1862 | 197 | bary_lo | OQR | lo | 152241/1000000 | s1689,lo_YQR,lo_DQR,s1830,s1711,s1717 |
| s1866 | 198 | bary_lo | CQR | lo | 107587/1000000 | s1689,lo_YQR,lo_DQR,s1830,s1729,s1733 |
| s1886 | 0 | sum | OHC | lo | 6603/15625 | lo_HCY,s1760,lo_OHY |
| s1887 | 2 | sum | OHD | lo | 749471/1000000 | s1840,lo_ODZ,s1702 |
| s1888 | 6 | sum | ODQ | lo | 424523/1000000 | lo_DQR,s1681,s1862 |
| s1892 | 7 | sub | CDZ | hi | 77641/250000 | s227,lo_HCZ,s1840 |
| s1893 | 8 | sum | HCP | lo | 72631/200000 | lo_CZP,lo_HCZ,s1841 |
| s1894 | 11 | sum | CDY | lo | 58827/125000 | s1796,lo_CYZ,s1668 |
| s1895 | 12 | sum | CDQ | lo | 293587/1000000 | lo_CDR,s1866,lo_DQR |
| s1898 | 16 | sum | DFZ | lo | 80453/200000 | lo_DFP,s1811,lo_FZP |
| s1899 | 17 | sum | DYQ | lo | 185999/500000 | lo_DQR,s1830,lo_YQR |
| s1900 | 18 | sum | DZQ | lo | 309323/1000000 | lo_DQR,s1798,lo_ZQR |
| s1906 | 28 | sumlo | HFQ | lo | 327297/1000000 | s1720,s1632,s1669,lo_HDF,s227 |
| s1909 | 35 | sumlo | CDZ | lo | 53359/250000 | s1631,lo_HCZ,lo_CZP,lo_HCD,s1803 |
| s1912 | 38 | sumlo | ODP | lo | 438701/1000000 | lo_DFP,s1887,lo_HDP,lo_ODF,hi_HDF |
| s1914 | 39 | diff | CDF | lo | 451231/1000000 | s1898,lo_HCD,s1892,hi_HDF,s1795 |
| s1915 | 40 | sumlo | CDP | lo | 17403/50000 | s1914,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1916 | 41 | sumlo | HDQ | lo | 177773/500000 | s1895,lo_HDF,s1741,lo_HCD,s1663 |
| s1921 | 42 | sumlo | HDR | lo | 232399/1000000 | lo_CDR,s1916,lo_DQR,lo_HCD,hi_CDQ |
| s1923 | 43 | sumlo | DZP | lo | 54683/250000 | lo_DFP,s1840,s1898,lo_HDP,hi_HDF |
| s1924 | 45 | sumlo | DPQ | lo | 45357/250000 | lo_DFP,s1916,s1741,lo_HDP,hi_HDF |
| s1927 | 47 | sumlo | DYR | lo | 93289/500000 | lo_CDR,s1899,s1894,lo_DQR,hi_CDQ |
| s1928 | 48 | sumlo | DPR | lo | 117243/1000000 | s1915,lo_DQR,lo_CDR,s1924,hi_CDQ |
| s1931 | 53 | sumlo | HYQ | lo | 121887/500000 | s1899,lo_HYZ,s1673,lo_YZQ,s1754 |
| s1934 | 56 | sumlo | OZQ | lo | 156183/500000 | s1900,s1702,s1654,lo_ODZ,s1795 |
| s1937 | 57 | sumlo | OFZ | lo | 49041/250000 | lo_FZP,s1702,s1817,lo_OZP,s1805 |
| s1941 | 59 | sumlo | FYZ | lo | 161897/1000000 | s1898,lo_HYZ,s1668,s1817,s1795 |
| s1944 | 61 | sumlo | HZQ | lo | 129187/500000 | s1900,lo_HYZ,s1840,lo_YZQ,s1754 |
| s1945 | 63 | sumlo | CZQ | lo | 215501/1000000 | s1909,lo_YZQ,lo_CYZ,s1900,s1754 |
| s1946 | 64 | sumlo | DYZ | lo | 174077/1000000 | s1898,lo_YZQ,s1900,s1941,s1714 |
| s1947 | 64 | sumlo | FZQ | lo | 387811/1000000 | s1898,lo_YZQ,s1900,s1941,s1754 |
| s1949 | 67 | sumlo | HDQ | lo | 356327/1000000 | s1741,s1706,s1906,s1888,hi_OFQ |
| s1952 | 69 | sumlo | CQR | lo | 108529/1000000 | s1895,lo_YQR,s1733,lo_DQR,s1689 |
| s1954 | 75 | balance_hi | CDF | hi | 647487/1000000 | s227,hi_OFQ,lo_HDF,lo_OCQ,s1720,s1888,s1706 |
| s1957 | 77 | balance_hi | HCQ | hi | 88967/125000 | hi_OFQ,s227,s1741,s1886,s1888,s1720,lo_ODF |
| s1958 | 78 | balance_lo | OYZ | lo | 10449/62500 | s1710,lo_HCZ,s1946,s1886,lo_ODZ,lo_HCY,s227 |
| s1964 | 80 | balance_lo | DYZ | lo | 44927/250000 | lo_YZQ,lo_HCD,s1900,lo_HCY,s1899,lo_HCZ,s1957 |
| s1965 | 80 | balance_lo | HCQ | lo | 566961/1000000 | lo_YZQ,lo_HCD,s1900,lo_HCY,s1899,lo_HCZ,s1754 |
| s1969 | 81 | balance_lo | HDY | lo | 117151/500000 | lo_ODF,s1931,s1741,lo_OHY,s1888,lo_HFY,hi_OFQ |
| s1972 | 82 | balance_lo | HDZ | lo | 13561/40000 | lo_ODF,s1944,s1741,s1702,s1888,s1817,hi_OFQ |
| s1976 | 88 | balance_lo | OCY | lo | 255933/1000000 | s1886,s1964,lo_HCY,lo_ODZ,lo_OHY,s1909,s1795 |
| s1977 | 89 | balance_lo | CDZ | lo | 107487/500000 | s1886,s1900,s1965,lo_ODZ,lo_OCQ,s1972,hi_OHQ |
| s1984 | 92 | balance_lo | FYP | lo | 23109/200000 | s1969,lo_FZP,s1964,lo_HFP,lo_HYZ,lo_DFP,s1795 |
| s1992 | 93 | balance_hi | DYQ | hi | 135949/250000 | s1795,s1703,s1887,lo_YZQ,lo_ODZ,s1931,s1702 |
| s1994 | 96 | balance_hi | OHF | hi | 13381/31250 | hi_OFQ,s1805,s1906,lo_OZP,s1706,lo_FZP,s1815 |
| s1999 | 101 | linear | OHC | lo | 441933/1000000 | lo_HCY,s1976,lo_OHY |
| s2001 | 104 | linear | OHD | lo | 38553/50000 | s1972,lo_ODZ,s1702 |
| s2005 | 105 | linear | OHZ | lo | 11037/31250 | lo_HYZ,lo_OHY,s1958 |
| s2009 | 107 | linear | OHZ | hi | 21463/50000 | s1944,hi_OHQ,s1934 |
| s2010 | 107 | linear | OZQ | hi | 194221/500000 | s1944,hi_OHQ,s2005 |
| s2011 | 107 | linear | OHQ | lo | 230981/250000 | s1944,s2005,s1934 |
| s2012 | 107 | linear | HZQ | hi | 6689/20000 | hi_OHQ,s2005,s1934 |
| s2014 | 108 | linear | OCD | hi | 134801/250000 | s1892,s1788,lo_ODZ |
| s2019 | 112 | linear | OFZ | hi | 286203/1000000 | s1947,hi_OFQ,s1934 |
| s2021 | 112 | linear | FZQ | hi | 9557/20000 | hi_OFQ,s1937,s1934 |
| s2025 | 113 | linear | OYQ | lo | 11451/20000 | s1958,s1934,lo_YZQ |
| s2028 | 114 | linear | HCF | lo | 325513/1000000 | s1954,lo_HCD,lo_HDF |
| s2036 | 119 | linear | HFZ | hi | 53907/200000 | lo_FZP,s43,s1805 |
| s2039 | 120 | linear | CDY | lo | 243841/500000 | s1977,lo_CYZ,s1964 |
| s2040 | 121 | linear | CDQ | lo | 294529/1000000 | lo_CDR,s1952,lo_DQR |
| s2043 | 122 | linear | CYQ | lo | 401501/1000000 | lo_CYZ,s1945,lo_YZQ |
| s2047 | 123 | linear | DFZ | lo | 101183/250000 | lo_DFP,s1923,lo_FZP |
| s2048 | 125 | linear | DYQ | lo | 186289/500000 | lo_DQR,s1927,lo_YQR |
| s2054 | 129 | quad | DFQ | lo | 5323/20000 | s2021 |
| s2055 | 130 | support_z | OFZ | lo | 205353/1000000 | s2005,s1994 |
| s2070 | 144 | bary_hi | OYQ | hi | 650853/1000000 | s2009,lo_HYZ,s1958,lo_OHY,hi_OHQ,s2010 |
| s2072 | 145 | bary_hi | HDY | lo | 120251/500000 | s2009,lo_HYZ,s1958,lo_OHY,s2001,s1972 |
| s2074 | 146 | bary_hi | HYQ | lo | 256147/1000000 | s2009,lo_HYZ,s1958,lo_OHY,s2011,s1944 |
| s2078 | 147 | bary_lo | DYZ | hi | 21111/100000 | s2009,lo_HYZ,s1958,lo_OHY,lo_ODZ,s1795 |
| s2079 | 148 | bary_lo | DYP | lo | 3049/15625 | s2009,lo_HYZ,s1958,lo_OHY,s1912,lo_HDP,s1923 |
| s2085 | 149 | bary_lo | OCY | lo | 261677/1000000 | hi_OHQ,s2074,s2025,lo_OHY,s1999,lo_OCQ |
| s2095 | 150 | bary_hi | CDY | hi | 57999/100000 | hi_OHQ,s2074,s2025,lo_OHY,s2014,s227,s2040 |
| s2100 | 154 | bary_lo | FYZ | hi | 213977/1000000 | hi_OHQ,s2074,s2025,lo_OHY,s2019,s2036,s1947 |
| s2128 | 162 | bary_lo | OHZ | hi | 85151/200000 | hi_OFQ,s1947,s1934,s2055,s1994,hi_OHQ |
| s2130 | 164 | bary_lo | FZQ | hi | 468661/1000000 | hi_OFQ,s1947,s1934,s2055,hi_OFQ |
| s2132 | 165 | bary_hi | HDZ | lo | 21629/62500 | s2070,lo_YZQ,s1934,s1958,s2001,s2072,s1949 |
| s2139 | 170 | bary_hi | HZP | lo | 93151/500000 | s227,s1977,s2132,lo_HCZ,s1893,lo_HDP |
| s2143 | 171 | bary_hi | DFZ | hi | 57769/125000 | s227,s1977,s2132,lo_HCZ,hi_HDF,s1954 |
| s2144 | 175 | bary_lo | HDZ | hi | 202631/500000 | s1803,lo_CZP,s2139,lo_HCZ,s227,lo_HDP |
| s2146 | 177 | bary_hi | DZR | lo | 6333/50000 | s1803,lo_CZP,s2139,lo_HCZ,s1921,lo_CDR,s1928 |
| s2160 | 182 | bary_hi | DZP | lo | 228183/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s2132,s2047 |
| s2168 | 184 | bary_hi | HFZ | lo | 48717/250000 | s2095,s1964,lo_CYZ,s1977,s2028,lo_HDF,lo_HFY |
| s2182 | 190 | bary_lo | DYR | lo | 95243/500000 | hi_CDQ,lo_DQR,s1952,lo_CDR,s2039,s2048 |
| s2197 | 194 | bary_hi | HFP | lo | 95357/1000000 | s2143,lo_FZP,s2160,lo_DFP,lo_HDF,s2168 |
| s2226 | 198 | bary_lo | CQR | lo | 23807/200000 | s1992,lo_YQR,lo_DQR,s2182,s2040,s2043 |
| s2247 | 0 | sum | OHC | lo | 447677/1000000 | lo_HCY,s2085,lo_OHY |
| s2249 | 2 | sum | OHD | lo | 99031/125000 | s2132,lo_ODZ,s2005 |
| s2251 | 3 | sub | OYZ | hi | 47951/200000 | s2128,lo_HYZ,lo_OHY |
| s2260 | 10 | sum | HDF | lo | 281357/1000000 | lo_DFP,lo_HDP,s2197 |
| s2262 | 12 | sum | CDQ | lo | 61007/200000 | lo_CDR,s2226,lo_DQR |
| s2263 | 15 | sum | DFY | lo | 403681/1000000 | lo_DFP,s2079,s1984 |
| s2264 | 16 | sum | DFZ | lo | 414183/1000000 | lo_DFP,s2160,lo_FZP |
| s2266 | 18 | sum | DZQ | lo | 15633/50000 | lo_DQR,s2146,lo_ZQR |
| s2273 | 23 | diffhi | HCQ | hi | 708719/1000000 | s227,hi_OHQ,s1949,s2247,s2249 |
| s2281 | 28 | sumlo | HFQ | lo | 191059/500000 | s2028,s1949,s1965,s2260,s227 |
| s2287 | 32 | sumlo | OCD | lo | 227/800 | s2262,s2247,lo_HCD,lo_OCQ,s2273 |
| s2291 | 36 | sumlo | ODQ | lo | 47541/100000 | s2262,s2249,s1949,s2287,s227 |
| s2309 | 46 | sumlo | DYQ | lo | 195319/500000 | s2262,s2263,s2039,s2054,s1954 |
| s2318 | 52 | sumlo | HDY | lo | 63389/250000 | s2263,lo_HYZ,s1964,lo_HFY,s2100 |
| s2319 | 53 | sumlo | HYQ | lo | 56757/200000 | s2309,lo_HYZ,s2318,lo_YZQ,s2078 |
| s2326 | 55 | diff | ODZ | lo | 112399/1000000 | s2264,s2005,s2144,s2019,s2036 |
| s2328 | 56 | sumlo | OZQ | lo | 344141/1000000 | s2266,s2005,s1944,s2326,s2144 |
| s2334 | 58 | sumlo | HZQ | lo | 270489/1000000 | lo_HYZ,s2328,s2005,lo_YZQ,s2251 |
| s2335 | 58 | sumlo | OYZ | lo | 12119/62500 | lo_HYZ,s2328,s2005,lo_YZQ,s2012 |
| s2352 | 60 | sumlo | FZQ | lo | 13337/31250 | s2264,s2334,s2266,s2168,s2144 |
| s2353 | 60 | sumlo | HDZ | lo | 7381/20000 | s2264,s2334,s2266,s2168,s2130 |
| s2354 | 60 | diffhi | HZQ | hi | 38933/125000 | s2130,s2144,s2266,s2168,s2264 |
| s2358 | 61 | sumlo | HZQ | lo | 37539/125000 | s2266,lo_HYZ,s2353,lo_YZQ,s2078 |
| s2361 | 61 | diffhi | HDZ | hi | 98591/250000 | s2078,s2354,s2266,lo_HYZ,lo_YZQ |
| s2370 | 62 | sumlo | FYZ | lo | 92809/500000 | s2352,lo_HYZ,s2168,lo_YZQ,s2354 |
| s2379 | 64 | sumlo | FZQ | lo | 91473/200000 | s2264,lo_YZQ,s2266,s2370,s2078 |
| s2401 | 67 | sumlo | HDQ | lo | 433469/1000000 | s2054,s2011,s2281,s2291,hi_OFQ |
| s2408 | 68 | sumlo | DZQ | lo | 19581/62500 | s2054,s2328,s2379,s2291,hi_OFQ |
| s2433 | 71 | balance_lo | ODY | lo | 12023/25000 | lo_HYZ,s2291,lo_YZQ,s2249,s2319,s2326,s2354 |
| s2460 | 72 | balance_lo | HDZ | lo | 395809/1000000 | s2408,lo_OHY,s2358,s2433,s2401,s2335,s2070 |

## Conclusion

{"triangle":"HDZ","lower":"s2460","upper":"s2361"}
