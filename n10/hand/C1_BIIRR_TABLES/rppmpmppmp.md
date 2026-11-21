# Leaf rppmpmppmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":-1,"FZP":1,"DYZ":1,"QYZ":-1,"OFY":1}

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
| 10 | extreme | ["OCY","F","CYF",-1] |
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
| 32 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 33 | interior_line | ["PR","Y","OHC","Y",-1] |
| 34 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 35 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 36 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 37 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 38 | plu | ["OHFYZ","OYZ",-1] |
| 39 | plu | ["HODZP","HZP",1] |
| 40 | plu | ["DOHZP","DZP",-1] |
| 41 | plu | ["FOHYZ","FYZ",1] |
| 42 | plu | ["FOHYP","FYP",1] |
| 43 | plu | ["YODZP","YZP",1] |
| 44 | plu | ["YOZQR","YZR",-1] |
| 45 | plu | ["ZOCPQ","ZPQ",-1] |
| 46 | plu | ["ZOCPR","ZPR",-1] |
| 47 | plu | ["QOHYR","QHR",1] |
| 48 | plu | ["QOHPR","QPR",1] |
| 49 | plu | ["QOFYR","QFR",1] |
| 50 | plu | ["QOYZR","QZR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YZ"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 279/1000 | ["cost","R"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFZ | OFZ | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","R"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OPQ | OPQ | lo | 347/500 | ["cost","ZR"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
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
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","R"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 279/1000 | ["cost","R"] |
| lo_CPQ | CPQ | lo | 279/1000 | ["cost","R"] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DFQ | DFQ | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","Z"] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZP | YZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YZR | YZR | lo | 93/1000 | ["cost",""] |
| lo_YPQ | YPQ | lo | 279/1000 | ["cost","Z"] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCP | OCP | hi | 115189/200000 | "C013" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODY | ODY | hi | 40801583/63500000 | "C040" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_OPQ | OPQ | hi | 70912/79375 | "C050" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_HFR | HFR | hi | 755883/1250000 | "C060" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CYP | CYP | hi | 43429019/63500000 | "C061" |
| hi_CYQ | CYQ | hi | 27769359917/45783500000 | "C032" |
| hi_CPQ | CPQ | hi | 541235929/721000000 | "C058" |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |
| hi_FYQ | FYQ | hi | 245797/317500 | "C044" |
| hi_YPQ | YPQ | hi | 87606223/127000000 | "C062" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 2 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 3 | ["fan","OHQ","HQR","OHR","OQR"] | ["fan","OHQ","R"] |
| 4 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 5 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 6 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 7 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 8 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 9 | ["fan","OFQ","FQR","OFR","OQR"] | ["fan","OFQ","R"] |
| 10 | ["fan","OYQ","OQR","OYR","YQR"] | ["fan","OYQ","R"] |
| 11 | ["fan","OZQ","OQR","OZR","ZQR"] | ["fan","OZQ","R"] |
| 12 | ["fan","OPQ","OZP","OZQ","ZPQ"] | ["fan","OPQ","Z"] |
| 13 | ["fan","OPQ","OPR","OQR","PQR"] | ["fan","OPQ","R"] |
| 14 | ["fan","HCP","CZP","HCZ","HZP"] | ["fan","HCP","Z"] |
| 15 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 16 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 17 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 18 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 19 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 20 | ["fan","CZQ","CQR","CZR","ZQR"] | ["fan","CZQ","R"] |
| 21 | ["fan","CPQ","CPR","CQR","PQR"] | ["fan","CPQ","R"] |
| 22 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 23 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 24 | ["fan","DYQ","DYZ","DZQ","YZQ"] | ["fan","DYQ","Z"] |
| 25 | ["fan","DYR","DYZ","DZR","YZR"] | ["fan","DYR","Z"] |
| 26 | ["fan","YPR","YZP","YZR","ZPR"] | ["fan","YPR","Z"] |
| 27 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 28 | ["plu","OCY","OHQ","OCQ","OHY","OHC","OYQ"] | ["plu","OHCYQ"] |
| 29 | ["plu","OCZ","OHQ","OCQ","OHZ","OHC","OZQ"] | ["plu","OHCZQ"] |
| 30 | ["plu","OFQ","OHD","ODF","OHQ","ODQ","OHF"] | ["plu","OHDFQ"] |
| 31 | ["plu","OFQ","OHP","OFP","OHQ","OHF","OPQ"] | ["plu","OHFPQ"] |
| 32 | ["plu","OCD","OPQ","OCP","ODQ","OCQ","ODP"] | ["plu","OCDPQ"] |
| 33 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 34 | ["plu","ODP","OFZ","ODF","OZP","ODZ","OFP"] | ["plu","ODFZP"] |
| 35 | ["plu","OFQ","OYP","OFP","OYQ","OFY","OPQ"] | ["plu","OFYPQ"] |
| 36 | ["plu","OFZ","OPQ","OFP","OZQ","OFQ","OZP"] | ["plu","OFZPQ"] |
| 37 | ["plu","OPQ","OYR","OPR","OYQ","OQR","OYP"] | ["plu","OYPQR"] |
| 38 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 39 | ["plu","HDY","OHC","HCD","OHY","HCY","OHD"] | ["plu","HOCDY"] |
| 40 | ["plu","HDF","OHP","HDP","OHF","HFP","OHD"] | ["plu","HODFP"] |
| 41 | ["plu","HFY","OHR","HFR","OHY","HYR","OHF"] | ["plu","HOFYR"] |
| 42 | ["plu","HCD","HFQ","HCF","HDQ","HCQ","HDF"] | ["plu","HCDFQ"] |
| 43 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 44 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 45 | ["plu","CDZ","HCP","CDP","HCZ","CZP","HCD"] | ["plu","CHDZP"] |
| 46 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 47 | ["plu","CDQ","CYR","CDR","CYQ","CDY","CQR"] | ["plu","CDYQR"] |
| 48 | ["plu","CDQ","CZR","CDR","CZQ","CDZ","CQR"] | ["plu","CDZQR"] |
| 49 | ["plu","CDQ","CPR","CDP","CQR","CDR","CPQ"] | ["plu","CDPQR"] |
| 50 | ["plu","HCD","ODR","CDR","OHD","HDR","OCD"] | ["plu","DOHCR"] |
| 51 | ["plu","HDF","ODP","DFP","OHD","HDP","ODF"] | ["plu","DOHFP"] |
| 52 | ["plu","CDY","ODR","CDR","ODY","DYR","OCD"] | ["plu","DOCYR"] |
| 53 | ["plu","DFZ","HCD","CDF","HDZ","CDZ","HDF"] | ["plu","DHCFZ"] |
| 54 | ["plu","CDP","HDF","CDF","HDP","DFP","HCD"] | ["plu","DHCFP"] |
| 55 | ["plu","CDF","HDQ","CDQ","HDF","DFQ","HCD"] | ["plu","DHCFQ"] |
| 56 | ["plu","DYP","HDF","DFP","HDY","DFY","HDP"] | ["plu","DHFYP"] |
| 57 | ["plu","DZP","HDF","DFP","HDZ","DFZ","HDP"] | ["plu","DHFZP"] |
| 58 | ["plu","HFP","ODF","DFP","OHF","HDF","OFP"] | ["plu","FOHDP"] |
| 59 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 60 | ["plu","DFY","HFP","DFP","HFY","FYP","HDF"] | ["plu","FHDYP"] |
| 61 | ["plu","DFZ","HFP","DFP","HFZ","FZP","HDF"] | ["plu","FHDZP"] |
| 62 | ["plu","HFY","OYR","FYR","OHY","HYR","OFY"] | ["plu","YOHFR"] |
| 63 | ["plu","HYP","OYR","HYR","OYP","OHY","YPR"] | ["plu","YOHPR"] |
| 64 | ["plu","DYQ","OYZ","DYZ","OYQ","ODY","YZQ"] | ["plu","YODZQ"] |
| 65 | ["plu","DYR","OYZ","DYZ","OYR","ODY","YZR"] | ["plu","YODZR"] |
| 66 | ["plu","HZP","OFZ","FZP","OHZ","HFZ","OZP"] | ["plu","ZOHFP"] |
| 67 | ["plu","FYZ","HDZ","DFZ","HYZ","DYZ","HFZ"] | ["plu","ZHDFY"] |
| 68 | ["plu","CDZ","YZP","CYZ","DZP","CZP","DYZ"] | ["plu","ZCDYP"] |
| 69 | ["plu","CYZ","DZQ","CDZ","YZQ","CZQ","DYZ"] | ["plu","ZCDYQ"] |
| 70 | ["plu","CDZ","ZPQ","CZP","DZQ","CZQ","DZP"] | ["plu","ZCDPQ"] |
| 71 | ["plu","CDZ","ZPR","CZP","DZR","CZR","DZP"] | ["plu","ZCDPR"] |
| 72 | ["plu","DZQ","YZP","DYZ","ZPQ","DZP","YZQ"] | ["plu","ZDYPQ"] |
| 73 | ["plu","DZR","YZP","DYZ","ZPR","DZP","YZR"] | ["plu","ZDYPR"] |
| 74 | ["plu","HFP","ODP","DFP","OHP","HDP","OFP"] | ["plu","POHDF"] |
| 75 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 76 | ["plu","CYP","OPR","CPR","OYP","OCP","YPR"] | ["plu","POCYR"] |
| 77 | ["plu","OCP","ZPQ","CPQ","OZP","CZP","OPQ"] | ["plu","POCZQ"] |
| 78 | ["plu","DZP","HFP","DFP","HZP","FZP","HDP"] | ["plu","PHDFZ"] |
| 79 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 80 | ["plu","OYQ","PQR","OPQ","YQR","OQR","YPQ"] | ["plu","QOYPR"] |
| 81 | ["plu","CYQ","DQR","CDQ","YQR","CQR","DYQ"] | ["plu","QCDYR"] |
| 82 | ["plu","OYR","PQR","OPR","YQR","OQR","YPR"] | ["plu","ROYPQ"] |
| 83 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 84 | ["plu","CZR","DQR","CDR","ZQR","CQR","DZR"] | ["plu","RCDZQ"] |
| 85 | ["balance",[[-1,"HCD","OFQ"],[1,"CDQ","OHF"],[1,"HDQ","OCF"],[1,"HCQ","ODF"]]] | ["six","OFHCDQ"] |
| 86 | ["balance",[[-1,"CDY","OFQ"],[1,"DYQ","OCF"],[1,"CYQ","ODF"],[1,"CDQ","OFY"]]] | ["six","OFCDYQ"] |
| 87 | ["balance",[[1,"CDQ","OFR"],[-1,"DQR","OCF"],[-1,"CQR","ODF"],[-1,"CDR","OFQ"]]] | ["six","OFCDQR"] |
| 88 | ["balance",[[1,"CYZ","OFQ"],[-1,"YZQ","OCF"],[-1,"CZQ","OFY"],[-1,"CYQ","OFZ"]]] | ["six","OFCYZQ"] |
| 89 | ["balance",[[-1,"HDF","OYZ"],[-1,"DFZ","OHY"],[1,"HFZ","ODY"],[-1,"HDZ","OFY"]]] | ["six","OYHDFZ"] |
| 90 | ["balance",[[1,"CYZ","OPQ"],[-1,"YZQ","OCP"],[-1,"CZQ","OYP"],[-1,"CYQ","OZP"]]] | ["six","OPCYZQ"] |
| 91 | ["balance",[[1,"CDZ","OPQ"],[-1,"DZP","OCQ"],[-1,"CZP","ODQ"],[-1,"CDP","OZQ"]]] | ["six","OQCDZP"] |
| 92 | ["balance",[[1,"CDP","OQR"],[1,"DPR","OCQ"],[-1,"CPR","ODQ"],[1,"CDR","OPQ"]]] | ["six","OQCDPR"] |
| 93 | ["balance",[[1,"DFY","HCQ"],[-1,"FYQ","HCD"],[1,"DYQ","HCF"],[1,"DFQ","HCY"]]] | ["six","HCDFYQ"] |
| 94 | ["balance",[[1,"OCP","HYQ"],[-1,"CPQ","OHY"],[-1,"OPQ","HCY"],[-1,"OCQ","HYP"]]] | ["six","HYOCPQ"] |
| 95 | ["balance",[[1,"ODF","HYR"],[1,"DFR","OHY"],[-1,"OFR","HDY"],[1,"ODR","HFY"]]] | ["six","HYODFR"] |
| 96 | ["balance",[[1,"OHF","CDQ"],[1,"HFQ","OCD"],[-1,"OFQ","HCD"],[1,"OHQ","CDF"]]] | ["six","CDOHFQ"] |
| 97 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 98 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 99 | ["balance",[[-1,"ODP","CZQ"],[-1,"DPQ","OCZ"],[1,"OPQ","CDZ"],[-1,"ODQ","CZP"]]] | ["six","CZODPQ"] |
| 100 | ["balance",[[-1,"DYZ","CPQ"],[-1,"YZQ","CDP"],[1,"DZQ","CYP"],[-1,"DYQ","CZP"]]] | ["six","CPDYZQ"] |
| 101 | ["balance",[[-1,"DYZ","CPR"],[-1,"YZR","CDP"],[1,"DZR","CYP"],[-1,"DYR","CZP"]]] | ["six","CPDYZR"] |
| 102 | ["balance",[[-1,"ODF","CQR"],[-1,"DFQ","OCR"],[-1,"OFQ","CDR"],[1,"ODQ","CFR"]]] | ["six","CRODFQ"] |
| 103 | ["balance",[[-1,"ODP","CQR"],[-1,"DPQ","OCR"],[-1,"OPQ","CDR"],[1,"ODQ","CPR"]]] | ["six","CRODPQ"] |
| 104 | ["balance",[[1,"HDF","CPR"],[-1,"DFP","HCR"],[-1,"HFP","CDR"],[-1,"HDP","CFR"]]] | ["six","CRHDFP"] |
| 105 | ["balance",[[1,"OHC","DYZ"],[1,"HCY","ODZ"],[-1,"OCY","HDZ"],[1,"OHY","CDZ"]]] | ["six","DZOHCY"] |
| 106 | ["balance",[[1,"OFY","DZQ"],[-1,"FYQ","ODZ"],[1,"OYQ","DFZ"],[-1,"OFQ","DYZ"]]] | ["six","DZOFYQ"] |
| 107 | ["balance",[[-1,"OYQ","DPR"],[1,"YQR","ODP"],[1,"OQR","DYP"],[1,"OYR","DPQ"]]] | ["six","DPOYQR"] |
| 108 | ["balance",[[1,"OCP","DQR"],[-1,"CPQ","ODR"],[1,"OPQ","CDR"],[1,"OCQ","DPR"]]] | ["six","DROCPQ"] |
| 109 | ["balance",[[1,"HCD","FYZ"],[-1,"CDF","HYZ"],[-1,"HDF","CYZ"],[-1,"HCF","DYZ"]]] | ["six","YZHCDF"] |
| 110 | ["balance",[[-1,"HDF","YZQ"],[-1,"DFQ","HYZ"],[-1,"HFQ","DYZ"],[1,"HDQ","FYZ"]]] | ["six","YZHDFQ"] |
| 111 | ["balance",[[1,"OCZ","YPQ"],[-1,"CZP","OYQ"],[-1,"OZP","CYQ"],[-1,"OCP","YZQ"]]] | ["six","YQOCZP"] |
| 112 | ["balance",[[1,"ODF","YZQ"],[1,"DFZ","OYQ"],[-1,"OFZ","DYQ"],[-1,"ODZ","FYQ"]]] | ["six","YQODFZ"] |
| 113 | ["balance",[[-1,"OZP","YQR"],[-1,"ZPR","OYQ"],[-1,"OPR","YZQ"],[1,"OZR","YPQ"]]] | ["six","YQOZPR"] |
| 114 | ["balance",[[1,"CDZ","YPQ"],[-1,"DZP","CYQ"],[-1,"CZP","DYQ"],[-1,"CDP","YZQ"]]] | ["six","YQCDZP"] |
| 115 | ["balance",[[1,"CDZ","YPR"],[-1,"DZP","CYR"],[-1,"CZP","DYR"],[-1,"CDP","YZR"]]] | ["six","YRCDZP"] |
| 116 | ["balance",[[-1,"OHC","FZP"],[-1,"HCF","OZP"],[1,"OCF","HZP"],[-1,"OHF","CZP"]]] | ["six","ZPOHCF"] |
| 117 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 118 | ["balance",[[1,"OHF","ZPQ"],[1,"HFQ","OZP"],[-1,"OFQ","HZP"],[1,"OHQ","FZP"]]] | ["six","ZPOHFQ"] |
| 119 | ["balance",[[-1,"OCD","ZPQ"],[1,"CDQ","OZP"],[1,"ODQ","CZP"],[1,"OCQ","DZP"]]] | ["six","ZPOCDQ"] |
| 120 | ["balance",[[-1,"HCD","ZPQ"],[1,"CDQ","HZP"],[1,"HDQ","CZP"],[1,"HCQ","DZP"]]] | ["six","ZPHCDQ"] |
| 121 | ["balance",[[-1,"CDY","ZPQ"],[1,"DYQ","CZP"],[1,"CYQ","DZP"],[1,"CDQ","YZP"]]] | ["six","ZPCDYQ"] |
| 122 | ["balance",[[-1,"ODF","YQR"],[-1,"DFY","OQR"],[-1,"OFY","DQR"],[1,"ODY","FQR"]]] | ["six","QRODFY"] |
| 123 | ["balance",[[-1,"HCD","FQR"],[1,"CDF","HQR"],[1,"HDF","CQR"],[1,"HCF","DQR"]]] | ["six","QRHCDF"] |
| 124 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 125 | ["balance",[[-1,"CDZ","PQR"],[1,"DZP","CQR"],[1,"CZP","DQR"],[1,"CDP","ZQR"]]] | ["six","QRCDZP"] |
| 126 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 127 | ["linear",{"OHD":1,"ODF":-1,"OHF":-1,"HDF":1},"0"] | ["affine_quad","OHDF",-1] |
| 128 | ["linear",{"OHD":1,"ODP":-1,"OHP":-1,"HDP":1},"0"] | ["affine_quad","OHDP",-1] |
| 129 | ["linear",{"OHD":-1,"ODR":-1,"OHR":1,"HDR":1},"0"] | ["affine_quad","OHDR",1] |
| 130 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 131 | ["linear",{"OHF":-1,"OFP":-1,"OHP":1,"HFP":1},"0"] | ["affine_quad","OHFP",1] |
| 132 | ["linear",{"OHF":1,"OFQ":1,"OHQ":-1,"HFQ":-1},"0"] | ["affine_quad","OHFQ",-1] |
| 133 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 134 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 135 | ["linear",{"OHQ":1,"OQR":-1,"OHR":-1,"HQR":-1},"0"] | ["affine_quad","OHQR",-1] |
| 136 | ["linear",{"OCD":-1,"ODZ":-1,"OCZ":1,"CDZ":1},"0"] | ["affine_quad","OCDZ",-1] |
| 137 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 138 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 139 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 140 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 141 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 142 | ["linear",{"ODF":-1,"OFR":1,"ODR":-1,"DFR":1},"0"] | ["affine_quad","ODFR",-1] |
| 143 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 144 | ["linear",{"OFQ":1,"OQR":-1,"OFR":-1,"FQR":-1},"0"] | ["affine_quad","OFQR",-1] |
| 145 | ["linear",{"OYZ":1,"OZQ":1,"OYQ":-1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",-1] |
| 146 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 147 | ["linear",{"OZP":-1,"OPQ":1,"OZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","OZPQ",-1] |
| 148 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 149 | ["linear",{"OPQ":1,"OQR":-1,"OPR":-1,"PQR":-1},"0"] | ["affine_quad","OPQR",-1] |
| 150 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 151 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 152 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 153 | ["linear",{"HDF":1,"HFP":-1,"HDP":-1,"DFP":-1},"0"] | ["affine_quad","HDFP",1] |
| 154 | ["linear",{"HDF":1,"HFR":-1,"HDR":1,"DFR":-1},"0"] | ["affine_quad","HDFR",1] |
| 155 | ["linear",{"HDY":-1,"HYZ":1,"HDZ":1,"DYZ":-1},"0"] | ["affine_quad","HDYZ",1] |
| 156 | ["linear",{"HDY":1,"HYZ":-1,"HDZ":-1,"DYZ":1},"0"] | ["affine_quad","HDYZ",-1] |
| 157 | ["linear",{"HDY":-1,"HYR":1,"HDR":1,"DYR":-1},"0"] | ["affine_quad","HDYR",1] |
| 158 | ["linear",{"HDQ":-1,"HQR":-1,"HDR":1,"DQR":1},"0"] | ["affine_quad","HDQR",1] |
| 159 | ["linear",{"HFZ":-1,"HZP":1,"HFP":1,"FZP":-1},"0"] | ["affine_quad","HFZP",1] |
| 160 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 161 | ["linear",{"CDY":1,"CYQ":-1,"CDQ":1,"DYQ":-1},"0"] | ["affine_quad","CDYQ",1] |
| 162 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 163 | ["linear",{"CFQ":1,"CQR":-1,"CFR":-1,"FQR":-1},"0"] | ["affine_quad","CFQR",-1] |
| 164 | ["linear",{"CYZ":-1,"CZP":-1,"CYP":1,"YZP":-1},"0"] | ["affine_quad","CYZP",1] |
| 165 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 166 | ["linear",{"CZQ":1,"CQR":-1,"CZR":-1,"ZQR":-1},"0"] | ["affine_quad","CZQR",-1] |
| 167 | ["linear",{"CPQ":1,"CQR":-1,"CPR":-1,"PQR":-1},"0"] | ["affine_quad","CPQR",-1] |
| 168 | ["linear",{"DFY":1,"DYZ":1,"DFZ":-1,"FYZ":-1},"0"] | ["affine_quad","DFYZ",1] |
| 169 | ["linear",{"DFY":-1,"DYZ":-1,"DFZ":1,"FYZ":1},"0"] | ["affine_quad","DFYZ",-1] |
| 170 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 171 | ["linear",{"DYZ":1,"DZP":-1,"DYP":1,"YZP":-1},"0"] | ["affine_quad","DYZP",1] |
| 172 | ["linear",{"DYZ":-1,"DZQ":-1,"DYQ":1,"YZQ":-1},"0"] | ["affine_quad","DYZQ",-1] |
| 173 | ["linear",{"DYZ":-1,"DZR":-1,"DYR":1,"YZR":-1},"0"] | ["affine_quad","DYZR",-1] |
| 174 | ["linear",{"DYQ":-1,"DQR":1,"DYR":1,"YQR":-1},"0"] | ["affine_quad","DYQR",-1] |
| 175 | ["linear",{"DZP":-1,"DPR":1,"DZR":-1,"ZPR":1},"0"] | ["affine_quad","DZPR",1] |
| 176 | ["linear",{"YZP":-1,"YPQ":1,"YZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","YZPQ",-1] |
| 177 | ["quad","HDF","OHD","93/91"] | ["quad","ODFH","YZP"] |
| 178 | ["support","OHZ","OHF","OFZ","1023/1000"] | ["support_pent","OZPFH"] |
| 179 | ["support","DFZ","HDF","HDZ","1023/1000"] | ["support_pent","DZYHF"] |
| 180 | ["support","DYQ","HYQ","HDQ","1023/1000"] | ["support_pent","QDFHY"] |
| 181 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 182 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 183 | ["bary",["HDY",-1],[["OHD",-1],null,["HCD",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HD"] |
| 184 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 185 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["CDF",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DF"] |
| 186 | ["bary",["DYP",1],[["ODP",1],["HDP",1],["CDP",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DP"] |
| 187 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 188 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DF"] |
| 189 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["DFZ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","FZ"] |
| 190 | ["bary",["OHZ",-1],[null,null,["OHD",-1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OH"] |
| 191 | ["bary",["CZR",1],[["OCR",1],["HCR",1],["CDR",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","CR"] |
| 192 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DF"] |
| 193 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],null],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","FQ"] |
| 194 | ["bary",["FYR",-1],[["OFR",-1],["HFR",-1],null],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","FR"] |
| 195 | ["bary",["OFY",1],[null,["OHF",1],["OFZ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","OF"] |
| 196 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["DFZ",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DF"] |
| 197 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["FZP",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FP"] |
| 198 | ["bary",["HFY",-1],[["OHF",-1],null,["HFP",-1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","HF"] |
| 199 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["FZP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","FZ"] |
| 200 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 201 | ["bary",["OFY",1],[null,["OHF",1],["OFQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OF"] |
| 202 | ["bary",["HCY",-1],[["OHC",-1],null,["HCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HC"] |
| 203 | ["bary",["HDY",-1],[["OHD",-1],null,["HDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HD"] |
| 204 | ["bary",["HYP",-1],[["OHP",-1],null,["HPQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HP"] |
| 205 | ["bary",["CFY",1],[["OCF",1],["HCF",1],["CFQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CF"] |
| 206 | ["bary",["CYP",1],[["OCP",1],["HCP",1],["CPQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CP"] |
| 207 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["DFQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DF"] |
| 208 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DQ"] |
| 209 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","FQ"] |
| 210 | ["bary",["YPQ",-1],[["OPQ",-1],["HPQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","PQ"] |
| 211 | ["bary",["YPR",-1],[["OPR",-1],["HPR",-1],["PQR",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","PR"] |
| 212 | ["bary",["OFY",1],[null,["OHF",1],["OFR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","OF"] |
| 213 | ["bary",["HFY",-1],[["OHF",-1],null,["HFR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","HF"] |
| 214 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","CD"] |
| 215 | ["bary",["DYR",-1],[["ODR",-1],["HDR",-1],null],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","DR"] |
| 216 | ["bary",["OZQ",1],[null,["OCQ",-1],["OPQ",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","OQ"] |
| 217 | ["bary",["HYZ",1],[["OHY",-1],["HCY",1],["HYP",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","HY"] |
| 218 | ["bary",["ZPQ",-1],[["OPQ",-1],["CPQ",-1],null],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","PQ"] |
| 219 | ["bary",["OZQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OQ"] |
| 220 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OC"] |
| 221 | ["bary",["OPQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OQ"] |
| 222 | ["bary",["HCP",1],[["OHC",-1],["HCD",1],["HCF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","HC"] |
| 223 | ["bary",["YPQ",1],[["OYQ",-1],["DYQ",1],["FYQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","YQ"] |
| 224 | ["bary",["YPR",1],[["OYR",-1],["DYR",1],["FYR",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","YR"] |
| 225 | ["bary",["HFZ",-1],[["OHF",-1],["HDF",-1],["HFP",-1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","HF"] |
| 226 | ["bary",["FYZ",1],[["OFY",1],["DFY",1],["FYP",1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","FY"] |
| 227 | ["bary",["OFR",-1],[null,["OFY",1],["OFQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OF"] |
| 228 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 229 | ["bary",["PQR",-1],[["OPQ",-1],["YPQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","PQ"] |
| 230 | ["bary",["OHR",-1],[null,["OHZ",-1],["OHQ",-1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","OH"] |
| 231 | ["bary",["ODR",-1],[null,["ODZ",1],["ODQ",-1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","OD"] |
| 232 | ["bary",["OFR",-1],[null,["OFZ",-1],["OFQ",-1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","OF"] |
| 233 | ["bary",["OYR",-1],[null,["OYZ",-1],["OYQ",-1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","OY"] |
| 234 | ["bary",["OPR",-1],[null,["OZP",-1],["OPQ",-1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","OP"] |
| 235 | ["bary",["HFR",-1],[["OHF",-1],["HFZ",-1],["HFQ",-1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","HF"] |
| 236 | ["bary",["HYR",1],[["OHY",-1],["HYZ",1],["HYQ",1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","HY"] |
| 237 | ["bary",["DFR",1],[["ODF",1],["DFZ",1],["DFQ",1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DF"] |
| 238 | ["bary",["DPR",1],[["ODP",1],["DZP",1],["DPQ",1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DP"] |
| 239 | ["bary",["DQR",-1],[["ODQ",-1],["DZQ",-1],null],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DQ"] |
| 240 | ["bary",["FYR",1],[["OFY",1],["FYZ",1],["FYQ",1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","FY"] |
| 241 | ["bary",["PQR",-1],[["OPQ",-1],["ZPQ",-1],null],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","PQ"] |
| 242 | ["bary",["OCZ",1],[null,["OCP",1],["OCQ",1]],"OPQ",["ZPQ","OZQ","OZP"]] | ["bary","OPQ","Z","OC"] |
| 243 | ["bary",["ODZ",1],[null,["ODP",1],["ODQ",-1]],"OPQ",["ZPQ","OZQ","OZP"]] | ["bary","OPQ","Z","OD"] |
| 244 | ["bary",["OZQ",1],[null,["OPQ",1],null],"OPQ",["ZPQ","OZQ","OZP"]] | ["bary","OPQ","Z","OQ"] |
| 245 | ["bary",["FYZ",1],[["OFY",1],["FYP",1],["FYQ",1]],"OPQ",["ZPQ","OZQ","OZP"]] | ["bary","OPQ","Z","FY"] |
| 246 | ["bary",["OCR",1],[null,["OCP",1],["OCQ",1]],"OPQ",["PQR","OQR","OPR"]] | ["bary","OPQ","R","OC"] |
| 247 | ["bary",["OPR",-1],[null,null,["OPQ",-1]],"OPQ",["PQR","OQR","OPR"]] | ["bary","OPQ","R","OP"] |
| 248 | ["bary",["OHZ",-1],[null,["OHP",-1],["OHR",-1]],"OPR",["ZPR","OZR","OZP"]] | ["bary","OPR","Z","OH"] |
| 249 | ["bary",["CZQ",1],[["HCQ",1],null,["CDQ",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","CQ"] |
| 250 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 251 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHP",-1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","OH"] |
| 252 | ["bary",["HDZ",-1],[null,["HCD",-1],["HDP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","HD"] |
| 253 | ["bary",["OHP",-1],[null,["OHD",-1],["OHF",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OH"] |
| 254 | ["bary",["ODP",1],[["OHD",1],null,["ODF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OD"] |
| 255 | ["bary",["OFP",-1],[["OHF",1],["ODF",-1],null],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OF"] |
| 256 | ["bary",["OYP",-1],[["OHY",1],["ODY",-1],["OFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OY"] |
| 257 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HC"] |
| 258 | ["bary",["HYP",1],[null,["HDY",1],["HFY",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HY"] |
| 259 | ["bary",["HZP",1],[null,["HDZ",1],["HFZ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HZ"] |
| 260 | ["bary",["HPQ",1],[null,["HDQ",1],["HFQ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HQ"] |
| 261 | ["bary",["HPR",1],[null,["HDR",1],["HFR",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HR"] |
| 262 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CY"] |
| 263 | ["bary",["CPR",1],[["HCR",1],["CDR",1],["CFR",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CR"] |
| 264 | ["bary",["DYP",-1],[["HDY",-1],null,["DFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DY"] |
| 265 | ["bary",["DZP",-1],[["HDZ",-1],null,["DFZ",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DZ"] |
| 266 | ["bary",["YZP",1],[["HYZ",1],["DYZ",1],["FYZ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","YZ"] |
| 267 | ["bary",["CZQ",1],[null,["CDQ",1],["CYQ",1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","CQ"] |
| 268 | ["bary",["OHR",-1],[["OHC",-1],["OHD",-1],["OHQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OH"] |
| 269 | ["bary",["OFR",-1],[["OCF",-1],["ODF",-1],["OFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OF"] |
| 270 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 271 | ["bary",["OZR",-1],[["OCZ",-1],["ODZ",-1],["OZQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OZ"] |
| 272 | ["bary",["OPR",-1],[["OCP",-1],["ODP",-1],["OPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OP"] |
| 273 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 274 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 275 | ["bary",["HFR",-1],[["HCF",-1],["HDF",-1],["HFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HF"] |
| 276 | ["bary",["HYR",1],[["HCY",1],["HDY",1],["HYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HY"] |
| 277 | ["bary",["HPR",-1],[["HCP",-1],["HDP",-1],["HPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HP"] |
| 278 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 279 | ["bary",["CZR",-1],[null,["CDZ",-1],["CZQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CZ"] |
| 280 | ["bary",["CPR",-1],[null,["CDP",-1],["CPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CP"] |
| 281 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 282 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 283 | ["bary",["FYR",1],[["CFY",1],["DFY",1],["FYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","FY"] |
| 284 | ["bary",["ZPR",-1],[["CZP",-1],["DZP",-1],["ZPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","ZP"] |
| 285 | ["bary",["DFZ",1],[["CDF",1],["DFY",1],["DFP",1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","DF"] |
| 286 | ["bary",["DZQ",-1],[["CDQ",-1],["DYQ",-1],["DPQ",-1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","DQ"] |
| 287 | ["bary",["DZR",-1],[["CDR",-1],["DYR",-1],["DPR",-1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","DR"] |
| 288 | ["bary",["YZR",1],[["CYR",-1],null,["YPR",1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","YR"] |
| 289 | ["bary",["DQR",-1],[["CDQ",-1],["DYQ",-1],null],"CYQ",["YQR","CQR","CYR"]] | ["bary","CYQ","R","DQ"] |
| 290 | ["bary",["HDR",-1],[["HCD",-1],["HDZ",-1],["HDQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","HD"] |
| 291 | ["bary",["YPR",1],[["DYR",1],["FYR",1],null],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","YR"] |
| 292 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 293 | ["bary",["ODP",1],[null,["ODF",1],["ODZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OD"] |
| 294 | ["bary",["OFP",-1],[["ODF",-1],null,["OFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OF"] |
| 295 | ["bary",["OYP",-1],[["ODY",-1],["OFY",-1],["OYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OY"] |
| 296 | ["bary",["OPQ",1],[["ODQ",1],["OFQ",1],["OZQ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OQ"] |
| 297 | ["bary",["OPR",1],[["ODR",1],["OFR",1],["OZR",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OR"] |
| 298 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 299 | ["bary",["CPQ",1],[["CDQ",1],["CFQ",1],["CZQ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CQ"] |
| 300 | ["bary",["YPR",1],[["DYR",1],["FYR",1],["YZR",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","YR"] |
| 301 | ["bary",["ODZ",1],[null,["ODY",1],["ODR",-1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","OD"] |
| 302 | ["bary",["OYZ",-1],[["ODY",-1],null,["OYR",-1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","OY"] |
| 303 | ["bary",["CDZ",1],[null,["CDY",1],["CDR",-1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","CD"] |
| 304 | ["bary",["CYZ",-1],[["CDY",-1],null,["CYR",-1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","CY"] |
| 305 | ["bary",["DFZ",1],[null,["DFY",1],["DFR",1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","DF"] |
| 306 | ["bary",["DZR",-1],[null,["DYR",-1],null],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","DR"] |
| 307 | ["bary",["OHZ",-1],[["OHY",-1],["OHP",-1],["OHR",-1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","OH"] |
| 308 | ["bary",["OCZ",1],[["OCY",1],["OCP",1],["OCR",1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","OC"] |
| 309 | ["bary",["OFZ",-1],[["OFY",1],["OFP",-1],["OFR",-1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","OF"] |
| 310 | ["bary",["OYZ",-1],[null,["OYP",-1],["OYR",-1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","OY"] |
| 311 | ["bary",["OZP",-1],[["OYP",1],null,["OPR",-1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","OP"] |
| 312 | ["bary",["OZR",1],[["OYR",1],["OPR",1],null],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","OR"] |
| 313 | ["bary",["HDZ",-1],[["HDY",-1],["HDP",1],["HDR",-1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","HD"] |
| 314 | ["bary",["HYZ",1],[null,["HYP",1],["HYR",1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","HY"] |
| 315 | ["bary",["CYZ",-1],[null,["CYP",-1],["CYR",-1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","CY"] |
| 316 | ["bary",["DYZ",1],[null,["DYP",-1],["DYR",1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","DY"] |
| 317 | ["bary",["YZP",-1],[null,null,["YPR",-1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","YP"] |
| 318 | ["bary",["ZPR",-1],[["YPR",-1],null,null],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","PR"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s17 | 6 | sub | DFZ | hi | 374729/500000 | hi_ODF,lo_ODZ,lo_OFZ |
| s21 | 7 | sub | ODP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_OFP |
| s43 | 16 | sub | HDP | hi | 3/25 | hi_HDF,lo_DFP,lo_HFP |
| s44 | 16 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s65 | 27 | sumlo | OCY | lo | 11981/125000 | lo_OCD,lo_OHY,lo_ODY,lo_OHC,hi_OHD |
| s66 | 29 | sumlo | OCZ | lo | 25947/250000 | lo_OCQ,lo_OHZ,lo_OHC,lo_OZQ,hi_OHQ |
| s67 | 30 | sumlo | OFQ | lo | 559477/1000000 | lo_ODF,lo_OHQ,lo_ODQ,lo_OHF,hi_OHD |
| s70 | 34 | sumlo | OFZ | lo | 48829/500000 | lo_ODF,lo_OZP,lo_ODZ,lo_OFP,s21 |
| s71 | 38 | sumlo | HCF | lo | 271467/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s72 | 39 | sumlo | HDY | lo | 203281/1000000 | lo_HCD,lo_OHY,lo_HCY,lo_OHD,hi_OHC |
| s75 | 40 | sumlo | OHP | lo | 59143/200000 | lo_HDP,lo_OHF,lo_HFP,lo_OHD,hi_HDF |
| s93 | 44 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s95 | 46 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s93,lo_CQR,lo_HCD,hi_CDQ |
| s100 | 51 | sumlo | ODP | lo | 421843/1000000 | lo_DFP,lo_OHD,lo_HDP,lo_ODF,hi_HDF |
| s106 | 54 | sumlo | CDP | lo | 80463/250000 | lo_CDF,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s109 | 56 | sumlo | DYP | lo | 5863/40000 | lo_DFP,s72,lo_DFY,lo_HDP,hi_HDF |
| s116 | 58 | diffhi | OFP | hi | 77337/250000 | s44,hi_ODF,lo_DFP,lo_OHF,lo_HDF |
| s123 | 59 | sumlo | OFP | lo | 24559/250000 | lo_DFP,s70,lo_FZP,lo_ODF,s17 |
| s125 | 60 | sumlo | DFY | lo | 2883/10000 | lo_DFP,lo_HFY,lo_FYP,lo_HDF,s44 |
| s131 | 75 | sumlo | HZP | lo | 5843/50000 | lo_FZP,s75,lo_HFP,lo_OZP,s116 |
| s132 | 77 | sumlo | ZPQ | lo | 157113/1000000 | lo_CPQ,lo_OZP,lo_CZP,lo_OPQ,hi_OCP |
| s135 | 78 | sumlo | DZP | lo | 162641/1000000 | lo_DFP,s131,lo_FZP,lo_HDP,s44 |
| s139 | 80 | sumlo | PQR | lo | 130487/1000000 | lo_OPQ,lo_YQR,lo_OQR,lo_YPQ,hi_OYQ |
| s143 | 83 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s147 | 86 | balance_lo | CDY | lo | 3769/12500 | lo_DYQ,lo_OCF,lo_CYQ,lo_ODF,lo_CDQ,lo_OFY,hi_OFQ |
| s148 | 87 | balance_lo | OFR | lo | 169667/500000 | lo_DQR,lo_OCF,lo_CQR,lo_ODF,lo_CDR,s67,hi_CDQ |
| s153 | 91 | balance_lo | CDZ | lo | 146487/1000000 | s135,lo_OCQ,lo_CZP,lo_ODQ,s106,lo_OZQ,hi_OPQ |
| s154 | 92 | balance_lo | CPR | lo | 135591/1000000 | s106,lo_OQR,lo_DPR,lo_OCQ,lo_CDR,lo_OPQ,hi_ODQ |
| s160 | 94 | balance_lo | HYQ | lo | 172131/1000000 | lo_CPQ,lo_OHY,lo_OPQ,lo_HCY,lo_OCQ,lo_HYP,hi_OCP |
| s165 | 97 | balance_lo | OYR | lo | 85709/500000 | lo_OYQ,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s147,hi_CDQ |
| s166 | 98 | balance_lo | OZR | lo | 137089/1000000 | lo_OZQ,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,s153,hi_CDQ |
| s168 | 99 | balance_lo | CDZ | lo | 42897/250000 | s100,lo_CZQ,lo_DPQ,s66,lo_ODQ,lo_CZP,hi_OPQ |
| s169 | 100 | balance_lo | DZQ | lo | 59821/500000 | lo_DYZ,lo_CPQ,lo_YZQ,s106,lo_DYQ,lo_CZP,hi_CYP |
| s170 | 101 | balance_lo | DZR | lo | 100141/1000000 | lo_DYZ,s154,lo_YZR,s106,lo_DYR,lo_CZP,hi_CYP |
| s171 | 102 | balance_lo | CFR | lo | 20581/125000 | lo_ODF,lo_CQR,lo_DFQ,lo_OCR,s67,lo_CDR,hi_ODQ |
| s172 | 103 | balance_lo | CPR | lo | 73909/500000 | s100,lo_CQR,lo_DPQ,lo_OCR,lo_OPQ,lo_CDR,hi_ODQ |
| s175 | 107 | balance_lo | DPR | lo | 49609/500000 | lo_YQR,s100,lo_OQR,s109,s165,lo_DPQ,hi_OYQ |
| s177 | 108 | balance_lo | ODR | lo | 26567/200000 | lo_OCP,lo_DQR,lo_OPQ,lo_CDR,lo_OCQ,s175,hi_CPQ |
| s182 | 111 | balance_lo | OCZ | lo | 112843/1000000 | lo_CZP,lo_OYQ,lo_OZP,lo_CYQ,lo_OCP,lo_YZQ,hi_YPQ |
| s185 | 117 | balance_lo | HZP | lo | 145239/1000000 | lo_OHD,lo_FZP,lo_HDF,lo_OZP,lo_OHF,s135,hi_ODF |
| s187 | 122 | balance_lo | FQR | lo | 31127/200000 | lo_ODF,lo_YQR,s125,lo_OQR,lo_OFY,lo_DQR,hi_ODY |
| s188 | 124 | balance_lo | HQR | lo | 122847/1000000 | lo_HCD,lo_YQR,s72,lo_CQR,lo_HCY,lo_DQR,hi_CDY |
| s189 | 126 | linear | OHC | lo | 35231/125000 | lo_HCY,s65,lo_OHY |
| s192 | 127 | linear | OHF | hi | 153/250 | hi_HDF,lo_ODF,hi_OHD |
| s194 | 128 | linear | OHP | hi | 698157/1000000 | s43,s100,hi_OHD |
| s202 | 138 | linear | OCP | lo | 298843/1000000 | lo_CZP,s182,lo_OZP |
| s206 | 140 | linear | ODP | hi | 372111/500000 | lo_DFP,hi_ODF,s123 |
| s208 | 143 | linear | ODQ | lo | 63767/200000 | lo_DQR,s177,lo_OQR |
| s209 | 144 | linear | OFQ | lo | 587969/1000000 | s187,s148,lo_OQR |
| s210 | 144 | linear | OFR | hi | 147549/200000 | s187,hi_OFQ,lo_OQR |
| s211 | 146 | linear | OYQ | lo | 178709/500000 | lo_OQR,s165,lo_YQR |
| s214 | 148 | linear | OZQ | lo | 323089/1000000 | lo_OQR,s166,lo_ZQR |
| s223 | 152 | linear | HCQ | lo | 108593/250000 | lo_CQR,s95,s188 |
| s227 | 160 | linear | CDY | lo | 89397/250000 | s168,lo_CYZ,lo_DYZ |
| s229 | 163 | linear | CFQ | lo | 413283/1000000 | s171,lo_CQR,s187 |
| s231 | 165 | linear | CYQ | lo | 166923/500000 | lo_CQR,s143,lo_YQR |
| s233 | 167 | linear | CPQ | lo | 74261/200000 | s172,lo_CQR,s139 |
| s236 | 170 | linear | DFZ | lo | 348641/1000000 | lo_DFP,s135,lo_FZP |
| s237 | 172 | linear | DYQ | lo | 152821/500000 | lo_DYZ,s169,lo_YZQ |
| s240 | 173 | linear | DYR | lo | 286141/1000000 | lo_DYZ,s170,lo_YZR |
| s243 | 176 | linear | YPQ | lo | 343113/1000000 | lo_YZP,lo_YZQ,s132 |
| s245 | 177 | quad | OHD | lo | 357989/500000 | hi_HDF |
| s247 | 178 | support_z | OFZ | lo | 11209/100000 | lo_OHZ,s192 |
| s249 | 179 | support_z | HDZ | lo | 48871/200000 | s236,hi_HDF |
| s250 | 181 | linear | HCD | hi | 721/1000 | lo_HDF |
| s251 | 182 | linear | CDF | hi | 728533/1000000 | s71 |
| s252 | 183 | bary_hi | HDY | lo | 413/2000 | hi_OHC,lo_HCY,s65,lo_OHY,s245,lo_HCD |
| s254 | 184 | bary_hi | CDY | hi | 594161/1000000 | hi_OHC,lo_HCY,s65,lo_OHY,hi_OCD,s250 |
| s257 | 185 | bary_lo | DFY | lo | 176187/500000 | hi_OHC,lo_HCY,s65,lo_OHY,lo_ODF,lo_HDF,lo_CDF |
| s259 | 186 | bary_lo | DYP | lo | 87339/500000 | hi_OHC,lo_HCY,s65,lo_OHY,s100,lo_HDP,s106 |
| s271 | 188 | bary_hi | DFY | hi | 336421/500000 | hi_OHD,s252,lo_ODY,lo_OHY,hi_ODF,hi_HDF |
| s277 | 190 | bary_lo | OHZ | hi | 132529/200000 | hi_OHD,s249,lo_ODZ,lo_OHZ,hi_OHD |
| s286 | 191 | bary_lo | CZR | lo | 104673/1000000 | hi_OHD,s249,lo_ODZ,lo_OHZ,lo_OCR,s95,lo_CDR |
| s297 | 194 | bary_lo | FYR | hi | 605421/1000000 | s192,lo_HFY,lo_OFY,lo_OHY,s210,hi_HFR |
| s300 | 197 | bary_hi | FYP | lo | 46867/500000 | s277,lo_HYZ,lo_OYZ,lo_OHY,s123,lo_HFP,lo_FZP |
| s305 | 200 | bary_lo | OCY | lo | 54693/500000 | hi_OHQ,s160,s211,lo_OHY,s189,lo_OCQ |
| s306 | 202 | bary_lo | HCY | hi | 77147/250000 | hi_OHQ,s160,s211,lo_OHY,hi_OHC,s223 |
| s311 | 205 | bary_hi | CFY | hi | 53751/100000 | hi_OHQ,s160,s211,lo_OHY,hi_OCF,hi_HCF,s229 |
| s329 | 216 | bary_hi | OZQ | hi | 73731/125000 | hi_OCP,lo_CZP,lo_OZP,s182,lo_OCQ,hi_OPQ |
| s339 | 218 | bary_hi | ZPQ | lo | 86009/500000 | hi_OCP,lo_CZP,lo_OZP,s182,lo_OPQ,s233 |
| s347 | 220 | bary_hi | OCP | hi | 565669/1000000 | hi_ODF,lo_DFP,s123,s100,hi_OCD,hi_OCF |
| s349 | 221 | bary_hi | OPQ | hi | 432301/500000 | hi_ODF,lo_DFP,s123,s100,hi_ODQ,hi_OFQ |
| s351 | 222 | bary_hi | HCP | hi | 582519/1000000 | hi_ODF,lo_DFP,s123,s100,s189,s250,hi_HCF |
| s361 | 223 | bary_hi | YPQ | hi | 81601/125000 | hi_ODF,lo_DFP,s123,s100,s211,hi_DYQ,hi_FYQ |
| s366 | 225 | bary_hi | HFZ | lo | 156891/1000000 | s206,s135,lo_OZP,lo_ODZ,lo_OHF,lo_HDF,lo_HFP |
| s367 | 226 | bary_lo | FYZ | lo | 125503/1000000 | s206,s135,lo_OZP,lo_ODZ,lo_OFY,s257,s300 |
| s382 | 227 | bary_lo | OFR | hi | 709343/1000000 | hi_OYQ,lo_YQR,lo_OQR,s165,lo_OFY,hi_OFQ |
| s396 | 229 | bary_hi | PQR | lo | 69543/500000 | hi_OYQ,lo_YQR,lo_OQR,s165,lo_OPQ,s243 |
| s407 | 238 | bary_lo | DPR | lo | 38957/250000 | s329,lo_ZQR,lo_OQR,s166,s100,s135,lo_DPQ |
| s410 | 242 | bary_lo | OCZ | lo | 30419/250000 | s349,s339,s214,lo_OZP,s202,lo_OCQ |
| s430 | 250 | bary_hi | DFZ | hi | 106801/200000 | s250,s168,s249,lo_HCZ,hi_HDF,s251 |
| s437 | 251 | bary_lo | OHZ | hi | 570949/1000000 | s351,lo_CZP,s185,lo_HCZ,hi_OHC,s194 |
| s452 | 253 | bary_lo | OHP | hi | 578157/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s192 |
| s453 | 254 | bary_lo | ODP | lo | 214261/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s245,lo_ODF |
| s454 | 254 | bary_hi | ODP | hi | 676463/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,hi_ODF |
| s455 | 255 | bary_lo | OFP | hi | 282053/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHF,hi_ODF |
| s458 | 257 | bary_hi | HCP | hi | 59467/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s250,hi_HCF |
| s461 | 260 | bary_hi | HPQ | hi | 31411/62500 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_HDQ,hi_HFQ |
| s464 | 262 | bary_lo | CYP | hi | 61269/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s306,s254,s311 |
| s468 | 265 | bary_hi | DZP | lo | 2816/15625 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s249,s236 |
| s472 | 266 | bary_lo | YZP | lo | 51439/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HYZ,lo_DYZ,s367 |
| s474 | 267 | bary_hi | CZQ | hi | 482403/1000000 | s254,lo_DYZ,lo_CYZ,s168,hi_CDQ,hi_CYQ |
| s477 | 268 | bary_hi | OHR | lo | 469239/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s189,s245,lo_OHQ |
| s478 | 269 | bary_hi | OFR | lo | 439307/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_OCF,lo_ODF,s209 |
| s479 | 270 | bary_hi | OYR | lo | 25233/125000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s305,lo_ODY,s211 |
| s480 | 271 | bary_hi | OZR | lo | 150297/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s410,lo_ODZ,s214 |
| s482 | 273 | bary_lo | HCR | lo | 249853/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s223 |
| s483 | 274 | bary_lo | HDR | hi | 591413/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s250,hi_HDQ |
| s486 | 276 | bary_lo | HYR | lo | 67827/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCY,s252,s160 |
| s487 | 277 | bary_lo | HPR | hi | 5149/12500 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s458,s43,s461 |
| s490 | 278 | bary_hi | CYR | lo | 153103/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s227,s231 |
| s491 | 280 | bary_hi | CPR | lo | 38371/250000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s106,s233 |
| s492 | 281 | bary_hi | DFR | hi | 280917/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s251,hi_DFQ |
| s493 | 282 | bary_hi | DYR | hi | 515889/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s254,hi_DYQ |
| s500 | 284 | bary_hi | ZPR | lo | 12981/100000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CZP,s468,s339 |
| s508 | 286 | bary_hi | DZQ | lo | 34477/200000 | s464,s472,lo_CZP,lo_CYZ,lo_CDQ,s237,lo_DPQ |
| s509 | 287 | bary_hi | DZR | lo | 70783/500000 | s464,s472,lo_CZP,lo_CYZ,lo_CDR,s240,s407 |
| s515 | 290 | bary_hi | HDR | lo | 71947/250000 | s474,lo_ZQR,lo_CQR,s286,lo_HCD,s249,lo_HDQ |
| s520 | 291 | bary_hi | YPR | hi | 127317/250000 | s271,s300,s259,lo_DFP,s493,s297 |
| s521 | 292 | bary_hi | OHP | lo | 177551/500000 | s430,lo_FZP,s468,lo_DFP,s245,lo_OHF,lo_OHZ |
| s522 | 294 | bary_hi | OFP | lo | 28077/200000 | s430,lo_FZP,s468,lo_DFP,lo_ODF,s247 |
| s523 | 295 | bary_hi | OYP | lo | 7837/62500 | s430,lo_FZP,s468,lo_DFP,lo_ODY,lo_OFY,lo_OYZ |
| s525 | 298 | bary_lo | HYP | lo | 56383/500000 | s430,lo_FZP,s468,lo_DFP,s252,lo_HFY,lo_HYZ |
| s535 | 303 | bary_hi | CDZ | hi | 45397/125000 | s493,lo_YZR,s509,lo_DYZ,s254,lo_CDR |
| s537 | 305 | bary_hi | DFZ | hi | 531537/1000000 | s493,lo_YZR,s509,lo_DYZ,s271,s492 |
| s545 | 308 | bary_lo | OCZ | lo | 67383/500000 | s520,s500,lo_YZR,s472,s305,s202,lo_OCR |
| s550 | 0 | sum | OHC | lo | 147693/500000 | lo_HCY,s305,lo_OHY |
| s555 | 5 | sum | OCP | lo | 160383/500000 | lo_CZP,s545,lo_OZP |
| s557 | 9 | sum | OFQ | lo | 343971/500000 | s187,s478,lo_OQR |
| s558 | 10 | sum | OYQ | lo | 48483/125000 | lo_OQR,s479,lo_YQR |
| s559 | 11 | sum | OZQ | lo | 336297/1000000 | lo_OQR,s480,lo_ZQR |
| s565 | 14 | sub | HZP | hi | 36217/125000 | s458,lo_CZP,lo_HCZ |
| s566 | 15 | sum | HCQ | lo | 4657/10000 | lo_CQR,s482,s188 |
| s570 | 19 | sum | CYQ | lo | 339103/1000000 | lo_CQR,s490,lo_YQR |
| s571 | 20 | sum | CZQ | lo | 290673/1000000 | lo_CQR,s286,lo_ZQR |
| s572 | 21 | sum | CPQ | lo | 38557/100000 | s491,lo_CQR,s396 |
| s573 | 22 | sum | DFY | lo | 90353/250000 | lo_DFP,s259,s300 |
| s575 | 24 | sum | DYQ | lo | 71677/200000 | lo_DYZ,s508,lo_YZQ |
| s576 | 25 | sum | DYR | lo | 163783/500000 | lo_DYZ,s509,lo_YZR |
| s580 | 28 | sumlo | OCY | lo | 61609/500000 | lo_OCQ,lo_OHY,s550,s558,hi_OHQ |
| s583 | 33 | sumlo | ODY | lo | 60591/200000 | lo_ODF,s558,s208,lo_OFY,hi_OFQ |
| s585 | 36 | sumlo | OFZ | lo | 64301/500000 | s522,s559,s557,lo_OZP,s349 |
| s586 | 38 | sumlo | HCF | lo | 138019/500000 | lo_HCD,lo_OHF,lo_HDF,s550,hi_OHD |
| s590 | 45 | sumlo | CDZ | lo | 39717/200000 | s106,lo_HCZ,lo_CZP,lo_HCD,s458 |
| s593 | 46 | sumlo | HCR | lo | 25679/100000 | lo_CDR,s566,lo_CQR,lo_HCD,hi_CDQ |
| s596 | 48 | sumlo | CZR | lo | 21667/200000 | lo_CDR,s571,s590,lo_CQR,hi_CDQ |
| s597 | 49 | sumlo | CPR | lo | 156643/1000000 | s106,lo_CQR,lo_CDR,s572,hi_CDQ |
| s599 | 50 | sumlo | ODR | lo | 84819/500000 | lo_CDR,s245,s515,lo_OCD,s250 |
| s600 | 55 | sumlo | HDQ | lo | 195437/1000000 | lo_CDQ,lo_HDF,lo_DFQ,lo_HCD,s251 |
| s604 | 59 | sumlo | OFP | lo | 5757/40000 | lo_DFP,s585,lo_FZP,lo_ODF,s537 |
| s606 | 64 | sumlo | OYZ | lo | 18627/200000 | lo_DYZ,s558,s583,lo_YZQ,hi_DYQ |
| s610 | 66 | sumlo | OFZ | lo | 139913/1000000 | lo_FZP,lo_OHZ,s366,lo_OZP,s565 |
| s613 | 75 | sumlo | HZP | lo | 591/4000 | lo_FZP,s521,lo_HFP,lo_OZP,s455 |
| s614 | 78 | sumlo | DZP | lo | 186581/1000000 | lo_DFP,s613,lo_FZP,lo_HDP,s44 |
| s616 | 81 | sumlo | DQR | lo | 9773/100000 | lo_CDQ,lo_YQR,lo_CQR,s575,hi_CYQ |
| s617 | 83 | sumlo | CYR | lo | 41787/250000 | lo_CDR,lo_YQR,lo_CQR,s576,hi_DQR |
| s619 | 86 | balance_lo | CDY | lo | 183131/500000 | s575,lo_OCF,s570,lo_ODF,lo_CDQ,lo_OFY,hi_OFQ |
| s621 | 90 | balance_lo | CYZ | lo | 56567/500000 | lo_YZQ,s555,s571,s523,s570,lo_OZP,s349 |
| s629 | 94 | balance_lo | HYQ | lo | 49007/250000 | s572,lo_OHY,lo_OPQ,lo_HCY,lo_OCQ,s525,s347 |
| s630 | 97 | balance_lo | OYR | lo | 209859/1000000 | s558,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s619,hi_CDQ |
| s631 | 98 | balance_lo | OZR | lo | 5041/31250 | s559,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,s590,hi_CDQ |
| s634 | 100 | balance_lo | DZQ | lo | 202223/1000000 | lo_DYZ,s572,lo_YZQ,s106,s575,lo_CZP,s464 |
| s635 | 101 | balance_lo | DZR | lo | 152939/1000000 | lo_DYZ,s597,lo_YZR,s106,s576,lo_CZP,s464 |
| s636 | 102 | balance_lo | CFR | lo | 180357/1000000 | lo_ODF,lo_CQR,lo_DFQ,lo_OCR,s557,lo_CDR,hi_ODQ |
| s637 | 104 | balance_lo | CPR | lo | 161123/1000000 | lo_DFP,s593,lo_HFP,lo_CDR,lo_HDP,s636,hi_HDF |
| s639 | 111 | balance_lo | OCZ | lo | 149261/1000000 | lo_CZP,s558,lo_OZP,s570,s555,lo_YZQ,s361 |
| s640 | 117 | balance_lo | HZP | lo | 38641/250000 | s245,lo_FZP,lo_HDF,lo_OZP,lo_OHF,s614,hi_ODF |
| s642 | 121 | balance_lo | ZPQ | lo | 21089/100000 | s575,lo_CZP,s570,s614,lo_CDQ,s472,s254 |
| s643 | 122 | balance_lo | FQR | lo | 83451/500000 | lo_ODF,lo_YQR,s573,lo_OQR,lo_OFY,s616,hi_ODY |
| s644 | 124 | balance_lo | HQR | lo | 78123/500000 | lo_HCD,lo_YQR,s252,lo_CQR,lo_HCY,s616,s254 |
| s645 | 125 | balance_lo | PQR | lo | 77611/500000 | s614,lo_CQR,lo_CZP,s616,s106,lo_ZQR,s535 |
| s646 | 126 | linear | OHC | lo | 154609/500000 | lo_HCY,s580,lo_OHY |
| s648 | 131 | linear | OHF | hi | 69279/125000 | s44,s604,s452 |
| s649 | 133 | linear | OHZ | lo | 55827/200000 | lo_HYZ,lo_OHY,s606 |
| s651 | 135 | linear | OHQ | lo | 143697/200000 | s644,s477,lo_OQR |
| s652 | 135 | linear | OHR | hi | 375377/500000 | s644,hi_OHQ,lo_OQR |
| s653 | 138 | linear | OCP | lo | 335261/1000000 | lo_CZP,s639,lo_OZP |
| s654 | 143 | linear | ODQ | lo | 22523/62500 | s616,s599,lo_OQR |
| s655 | 144 | linear | OFQ | lo | 699209/1000000 | s643,s478,lo_OQR |
| s656 | 146 | linear | OYQ | lo | 395859/1000000 | lo_OQR,s630,lo_YQR |
| s662 | 149 | linear | OPR | hi | 30819/50000 | s349,lo_OQR,s645 |
| s667 | 152 | linear | HCQ | lo | 126509/250000 | lo_CQR,s593,s644 |
| s669 | 158 | linear | HDQ | hi | 669167/1000000 | hi_DQR,s483,s644 |
| s671 | 159 | linear | HFZ | hi | 4949/15625 | lo_FZP,s44,s565 |
| s672 | 160 | linear | CDY | lo | 404719/1000000 | s590,s621,lo_DYZ |
| s674 | 162 | linear | CDQ | lo | 28373/100000 | lo_CDR,lo_CQR,s616 |
| s679 | 165 | linear | CYQ | lo | 88287/250000 | lo_CQR,s617,lo_YQR |
| s680 | 166 | linear | CZQ | lo | 58867/200000 | lo_CQR,s596,lo_ZQR |
| s681 | 167 | linear | CPQ | lo | 81869/200000 | s637,lo_CQR,s645 |
| s682 | 170 | linear | DFZ | lo | 372581/1000000 | lo_DFP,s614,lo_FZP |
| s684 | 172 | linear | DYQ | lo | 388223/1000000 | lo_DYZ,s634,lo_YZQ |
| s685 | 173 | linear | DYR | lo | 338939/1000000 | lo_DYZ,s635,lo_YZR |
| s690 | 179 | support_z | HDZ | lo | 130567/500000 | s682,hi_HDF |
| s691 | 182 | linear | CDF | hi | 361981/500000 | s586 |
| s694 | 186 | bary_lo | DYP | lo | 21957/125000 | hi_OHC,lo_HCY,s580,lo_OHY,s453,lo_HDP,s106 |
| s709 | 196 | bary_lo | DFY | lo | 361841/1000000 | s437,lo_HYZ,s606,lo_OHY,lo_ODF,lo_HDF,s682 |
| s710 | 197 | bary_hi | FYP | lo | 20259/200000 | s437,lo_HYZ,s606,lo_OHY,s604,lo_HFP,lo_FZP |
| s715 | 200 | bary_lo | OCY | lo | 26211/200000 | hi_OHQ,s629,s656,lo_OHY,s646,lo_OCQ |
| s722 | 206 | bary_hi | CYP | hi | 13731/31250 | hi_OHQ,s629,s656,lo_OHY,s347,s458,s681 |
| s723 | 208 | bary_lo | DYQ | hi | 653641/1000000 | hi_OHQ,s629,s656,lo_OHY,hi_ODQ,s669 |
| s725 | 209 | bary_lo | FYQ | hi | 762949/1000000 | hi_OHQ,s629,s656,lo_OHY,hi_OFQ,hi_HFQ |
| s727 | 211 | bary_lo | YPR | hi | 115921/250000 | hi_OHQ,s629,s656,lo_OHY,s662,s487,s645 |
| s730 | 214 | bary_hi | CDY | hi | 148489/250000 | s652,s486,s630,lo_OHY,hi_OCD,s250,lo_CDR |
| s737 | 219 | bary_hi | OZQ | hi | 27987/50000 | hi_ODF,s682,s610,lo_ODZ,hi_ODQ,hi_OFQ |
| s740 | 220 | bary_hi | OCP | hi | 112557/200000 | hi_ODF,lo_DFP,s604,s453,hi_OCD,hi_OCF |
| s741 | 221 | bary_hi | OPQ | hi | 213393/250000 | hi_ODF,lo_DFP,s604,s453,hi_ODQ,hi_OFQ |
| s743 | 223 | bary_hi | YPQ | hi | 630927/1000000 | hi_ODF,lo_DFP,s604,s453,s656,s723,s725 |
| s745 | 225 | bary_hi | HFZ | lo | 169873/1000000 | s454,s614,lo_OZP,lo_ODZ,lo_OHF,lo_HDF,lo_HFP |
| s746 | 226 | bary_lo | FYZ | lo | 1311/10000 | s454,s614,lo_OZP,lo_ODZ,lo_OFY,s709,s710 |
| s754 | 228 | bary_hi | DQR | lo | 12549/125000 | hi_OYQ,lo_YQR,lo_OQR,s630,s654,s684 |
| s757 | 231 | bary_lo | ODR | hi | 246183/500000 | s737,lo_ZQR,lo_OQR,s631,lo_ODZ,hi_ODQ |
| s765 | 238 | bary_lo | DPR | lo | 82147/500000 | s737,lo_ZQR,lo_OQR,s631,s453,s614,lo_DPQ |
| s778 | 250 | bary_hi | DFZ | hi | 515461/1000000 | s250,s590,s690,lo_HCZ,hi_HDF,s691 |
| s783 | 251 | bary_lo | OHZ | hi | 249877/500000 | s458,lo_CZP,s640,lo_HCZ,hi_OHC,s452 |
| s786 | 252 | bary_lo | HDZ | hi | 420929/1000000 | s458,lo_CZP,s640,lo_HCZ,s250,lo_HDP |
| s790 | 253 | bary_lo | OHP | hi | 2803/5000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s648 |
| s793 | 259 | bary_hi | HZP | hi | 130667/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s786,s671 |
| s794 | 260 | bary_hi | HPQ | hi | 461089/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s669,hi_HFQ |
| s797 | 263 | bary_lo | CPR | lo | 10583/62500 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s593,lo_CDR,s636 |
| s799 | 265 | bary_hi | DZP | lo | 192599/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s690,s682 |
| s802 | 266 | bary_lo | YZP | lo | 104579/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HYZ,lo_DYZ,s746 |
| s803 | 267 | bary_hi | CZQ | hi | 476037/1000000 | s730,lo_DYZ,s621,s590,hi_CDQ,hi_CYQ |
| s805 | 268 | bary_hi | OHR | lo | 489909/1000000 | hi_CDQ,s754,lo_CQR,lo_CDR,s646,s245,s651 |
| s806 | 269 | bary_hi | OFR | lo | 463939/1000000 | hi_CDQ,s754,lo_CQR,lo_CDR,lo_OCF,lo_ODF,s655 |
| s807 | 270 | bary_hi | OYR | lo | 227753/1000000 | hi_CDQ,s754,lo_CQR,lo_CDR,s715,s583,s656 |
| s809 | 272 | bary_hi | OPR | lo | 217673/500000 | hi_CDQ,s754,lo_CQR,lo_CDR,s653,s453,lo_OPQ |
| s810 | 273 | bary_lo | HCR | lo | 132861/500000 | hi_CDQ,s754,lo_CQR,lo_CDR,lo_HCD,s667 |
| s811 | 274 | bary_lo | HDR | hi | 549873/1000000 | hi_CDQ,s754,lo_CQR,lo_CDR,s250,s669 |
| s814 | 276 | bary_lo | HYR | lo | 28189/200000 | hi_CDQ,s754,lo_CQR,lo_CDR,lo_HCY,s252,s629 |
| s815 | 277 | bary_lo | HPR | hi | 393723/1000000 | hi_CDQ,s754,lo_CQR,lo_CDR,s458,s43,s794 |
| s816 | 278 | bary_hi | CYR | lo | 167813/1000000 | hi_CDQ,s754,lo_CQR,lo_CDR,s672,s679 |
| s817 | 279 | bary_hi | CZR | lo | 54573/500000 | hi_CDQ,s754,lo_CQR,lo_CDR,s590,s680 |
| s820 | 282 | bary_hi | DYR | hi | 6183/12500 | hi_CDQ,s754,lo_CQR,lo_CDR,s730,s723 |
| s823 | 284 | bary_hi | ZPR | lo | 70579/500000 | hi_CDQ,s754,lo_CQR,lo_CDR,lo_CZP,s799,s642 |
| s826 | 287 | bary_hi | DZR | lo | 163411/1000000 | s722,s802,lo_CZP,s621,lo_CDR,s685,s765 |
| s827 | 289 | bary_hi | DQR | lo | 10303/100000 | hi_CYQ,lo_YQR,lo_CQR,s816,s674,s684 |
| s828 | 290 | bary_hi | HDR | lo | 38209/125000 | s803,lo_ZQR,lo_CQR,s817,lo_HCD,s690,s600 |
| s832 | 292 | bary_hi | OHP | lo | 44733/125000 | s778,lo_FZP,s799,lo_DFP,s245,lo_OHF,s649 |
| s837 | 298 | bary_lo | HYP | lo | 113477/1000000 | s778,lo_FZP,s799,lo_DFP,s252,lo_HFY,lo_HYZ |
| s845 | 302 | bary_hi | OYZ | lo | 99781/1000000 | s820,lo_YZR,s826,lo_DYZ,s583,s807 |
| s846 | 303 | bary_hi | CDZ | hi | 113/320 | s820,lo_YZR,s826,lo_DYZ,s730,lo_CDR |
| s854 | 308 | bary_lo | OCZ | lo | 76587/500000 | s727,s823,lo_YZR,s802,s715,s653,lo_OCR |
| s855 | 309 | bary_lo | OFZ | hi | 94847/250000 | s727,s823,lo_YZR,s802,lo_OFY,s455,s382 |
| s861 | 0 | sum | OHC | lo | 63411/200000 | lo_HCY,s715,lo_OHY |
| s862 | 2 | sum | OHZ | lo | 285781/1000000 | lo_HYZ,lo_OHY,s845 |
| s864 | 2 | sub | OYZ | hi | 156877/500000 | s783,lo_HYZ,lo_OHY |
| s866 | 5 | sum | OCP | lo | 169587/500000 | lo_CZP,s854,lo_OZP |
| s867 | 8 | sum | ODQ | lo | 91417/250000 | s827,s599,lo_OQR |
| s868 | 9 | sum | OFQ | lo | 723841/1000000 | s643,s806,lo_OQR |
| s870 | 10 | sum | OYQ | lo | 413753/1000000 | lo_OQR,s807,lo_YQR |
| s876 | 15 | sum | HCQ | lo | 64371/125000 | lo_CQR,s810,s644 |
| s877 | 18 | sum | CDQ | lo | 28903/100000 | lo_CDR,lo_CQR,s827 |
| s880 | 19 | sum | CYQ | lo | 353813/1000000 | lo_CQR,s816,lo_YQR |
| s881 | 20 | sum | CZQ | lo | 147573/500000 | lo_CQR,s817,lo_ZQR |
| s882 | 21 | sum | CPQ | lo | 8351/20000 | s797,lo_CQR,s645 |
| s883 | 22 | sum | DFY | lo | 369951/1000000 | lo_DFP,s694,s710 |
| s884 | 23 | sum | DFZ | lo | 378599/1000000 | lo_DFP,s799,lo_FZP |
| s885 | 25 | sum | DYR | lo | 349411/1000000 | lo_DYZ,s826,lo_YZR |
| s888 | 28 | sumlo | OCY | lo | 139831/1000000 | lo_OCQ,lo_OHY,s861,s870,hi_OHQ |
| s889 | 33 | sumlo | ODY | lo | 162793/500000 | lo_ODF,s870,s867,lo_OFY,hi_OFQ |
| s891 | 38 | sumlo | HCF | lo | 70521/250000 | lo_HCD,lo_OHF,lo_HDF,s861,hi_OHD |
| s896 | 46 | sumlo | HCR | lo | 2677/10000 | lo_CDR,s876,lo_CQR,lo_HCD,hi_CDQ |
| s898 | 48 | sumlo | CZR | lo | 54663/500000 | lo_CDR,s881,s590,lo_CQR,hi_CDQ |
| s899 | 50 | sumlo | ODR | lo | 174441/1000000 | lo_CDR,s245,s828,lo_OCD,s250 |
| s900 | 53 | diff | CDF | lo | 147/400 | s884,lo_HCD,s846,hi_HDF,s786 |
| s901 | 54 | sumlo | CDP | lo | 80653/250000 | s900,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s902 | 55 | sumlo | HDQ | lo | 200537/1000000 | s877,lo_HDF,lo_DFQ,lo_HCD,s691 |
| s906 | 57 | sumlo | DZP | lo | 48607/250000 | lo_DFP,s690,s884,lo_HDP,hi_HDF |
| s909 | 64 | sumlo | OYZ | lo | 105193/1000000 | lo_DYZ,s870,s889,lo_YZQ,s723 |
| s910 | 66 | sumlo | OFZ | lo | 162151/1000000 | lo_FZP,s862,s745,lo_OZP,s793 |
| s912 | 75 | sumlo | OFP | lo | 160447/1000000 | lo_FZP,s832,lo_HFP,lo_OZP,s793 |
| s913 | 81 | sumlo | DQR | lo | 51921/500000 | s877,lo_YQR,lo_CQR,s684,hi_CYQ |
| s915 | 83 | sumlo | CYR | lo | 17583/100000 | lo_CDR,lo_YQR,lo_CQR,s885,hi_DQR |
| s916 | 85 | balance_hi | HCQ | hi | 827941/1000000 | s250,hi_OFQ,s877,lo_OHF,s902,lo_OCF,lo_ODF |
| s919 | 93 | balance_lo | FYQ | lo | 214059/500000 | s883,s876,s684,s891,lo_DFQ,lo_HCY,s250 |
| s921 | 94 | balance_lo | HYQ | lo | 40487/200000 | s882,lo_OHY,lo_OPQ,lo_HCY,lo_OCQ,s837,s740 |
| s924 | 100 | balance_lo | DZQ | lo | 238829/1000000 | lo_DYZ,s882,lo_YZQ,s901,s684,lo_CZP,s722 |
| s925 | 101 | balance_lo | DZR | lo | 178077/1000000 | lo_DYZ,s797,lo_YZR,s901,s885,lo_CZP,s722 |
| s926 | 102 | balance_lo | CFR | lo | 184747/1000000 | lo_ODF,lo_CQR,lo_DFQ,lo_OCR,s868,lo_CDR,hi_ODQ |
| s927 | 111 | balance_lo | OCZ | lo | 32627/200000 | lo_CZP,s870,lo_OZP,s880,s866,lo_YZQ,s743 |
| s928 | 113 | balance_lo | OZR | lo | 10653/62500 | lo_OZP,lo_YQR,s823,s870,s809,lo_YZQ,s743 |
| s929 | 114 | balance_lo | CDZ | lo | 21381/100000 | s906,s880,lo_CZP,s684,s901,lo_YZQ,s743 |
| s930 | 116 | balance_lo | OCF | lo | 5/16 | s861,lo_FZP,s891,lo_OZP,lo_OHF,lo_CZP,s793 |
| s931 | 117 | balance_lo | HZP | lo | 31381/200000 | s245,lo_FZP,lo_HDF,lo_OZP,lo_OHF,s906,hi_ODF |
| s932 | 120 | balance_lo | ZPQ | lo | 113817/500000 | s877,s931,s902,lo_CZP,s876,s906,s250 |
| s933 | 122 | balance_lo | FQR | lo | 84511/500000 | lo_ODF,lo_YQR,s883,lo_OQR,lo_OFY,s913,hi_ODY |
| s934 | 124 | balance_lo | HQR | lo | 157257/1000000 | lo_HCD,lo_YQR,s252,lo_CQR,lo_HCY,s913,s730 |
| s935 | 125 | balance_lo | PQR | lo | 163517/1000000 | s906,lo_CQR,lo_CZP,s913,s901,lo_ZQR,s846 |
| s936 | 126 | linear | OHC | lo | 325831/1000000 | lo_HCY,s888,lo_OHY |
| s937 | 131 | linear | OHF | hi | 520153/1000000 | s44,s912,s790 |
| s939 | 133 | linear | OHZ | lo | 291193/1000000 | lo_HYZ,lo_OHY,s909 |
| s940 | 134 | linear | HYQ | hi | 493247/1000000 | hi_OHQ,lo_OHY,s870 |
| s941 | 135 | linear | OHQ | lo | 370083/500000 | s934,s805,lo_OQR |
| s942 | 135 | linear | OHR | hi | 749743/1000000 | s934,hi_OHQ,lo_OQR |
| s943 | 138 | linear | OCP | lo | 69827/200000 | lo_CZP,s927,lo_OZP |
| s944 | 143 | linear | ODQ | lo | 371283/1000000 | s913,s899,lo_OQR |
| s945 | 144 | linear | OFQ | lo | 725961/1000000 | s933,s806,lo_OQR |
| s946 | 147 | linear | OZQ | hi | 266469/500000 | s741,lo_OZP,s932 |
| s947 | 148 | linear | OZQ | lo | 11139/31250 | lo_OQR,s928,lo_ZQR |
| s950 | 149 | linear | OPR | hi | 119411/200000 | s741,lo_OQR,s935 |
| s951 | 150 | linear | HDZ | hi | 41419/100000 | s929,s250,lo_HCZ |
| s953 | 151 | linear | HDQ | hi | 39127/62500 | hi_CDQ,s250,s876 |
| s956 | 152 | linear | HCQ | lo | 517957/1000000 | lo_CQR,s896,s934 |
| s960 | 159 | linear | HFZ | hi | 144167/500000 | lo_FZP,s44,s793 |
| s962 | 162 | linear | CDQ | lo | 144921/500000 | lo_CDR,lo_CQR,s913 |
| s967 | 165 | linear | CYQ | lo | 36183/100000 | lo_CQR,s915,lo_YQR |
| s968 | 166 | linear | CZQ | lo | 147663/500000 | lo_CQR,s898,lo_ZQR |
| s969 | 167 | linear | CPQ | lo | 85169/200000 | s797,lo_CQR,s935 |
| s970 | 170 | linear | DFZ | lo | 95107/250000 | lo_DFP,s906,lo_FZP |
| s971 | 172 | linear | DYQ | lo | 424829/1000000 | lo_DYZ,s924,lo_YZQ |
| s972 | 173 | linear | DYR | lo | 364077/1000000 | lo_DYZ,s925,lo_YZR |
| s976 | 179 | support_z | HDZ | lo | 133317/500000 | s970,hi_HDF |
| s977 | 180 | support_z | HDQ | lo | 109997/500000 | s971,s940 |
| s978 | 182 | linear | HCF | hi | 253/400 | s900 |
| s979 | 182 | linear | CDF | hi | 179479/250000 | s891 |
| s985 | 187 | bary_lo | HFY | hi | 330883/1000000 | hi_OHD,s252,s889,lo_OHY,s937,hi_HDF |
| s994 | 195 | bary_hi | OFY | hi | 148193/500000 | s783,lo_HYZ,s909,lo_OHY,s937,s910 |
| s995 | 196 | bary_lo | DFY | lo | 187551/500000 | s783,lo_HYZ,s909,lo_OHY,lo_ODF,lo_HDF,s970 |
| s996 | 197 | bary_hi | FYP | lo | 105551/1000000 | s783,lo_HYZ,s909,lo_OHY,s912,lo_HFP,lo_FZP |
| s999 | 200 | bary_lo | OCY | lo | 71731/500000 | hi_OHQ,s921,s870,lo_OHY,s936,lo_OCQ |
| s1000 | 202 | bary_lo | HCY | hi | 132521/500000 | hi_OHQ,s921,s870,lo_OHY,hi_OHC,s956 |
| s1001 | 203 | bary_lo | HDY | hi | 137867/250000 | hi_OHQ,s921,s870,lo_OHY,hi_OHD,s953 |
| s1002 | 204 | bary_lo | HYP | hi | 79849/250000 | hi_OHQ,s921,s870,lo_OHY,s790,s794 |
| s1004 | 206 | bary_hi | CYP | hi | 217413/500000 | hi_OHQ,s921,s870,lo_OHY,s740,s458,s969 |
| s1008 | 210 | bary_lo | YPQ | hi | 611799/1000000 | hi_OHQ,s921,s870,lo_OHY,s741,s794 |
| s1009 | 211 | bary_lo | YPR | hi | 442193/1000000 | hi_OHQ,s921,s870,lo_OHY,s950,s815,s935 |
| s1011 | 214 | bary_hi | CDY | hi | 592761/1000000 | s942,s814,s807,lo_OHY,hi_OCD,s250,lo_CDR |
| s1012 | 215 | bary_lo | DYR | hi | 94171/200000 | s942,s814,s807,lo_OHY,s757,s811 |
| s1013 | 217 | bary_hi | HYZ | hi | 121133/500000 | s740,lo_CZP,lo_OZP,s927,lo_OHY,s1000,s1002 |
| s1016 | 220 | bary_hi | OCP | hi | 280871/500000 | hi_ODF,lo_DFP,s912,s453,hi_OCD,hi_OCF |
| s1017 | 221 | bary_hi | OPQ | hi | 849583/1000000 | hi_ODF,lo_DFP,s912,s453,hi_ODQ,hi_OFQ |
| s1024 | 228 | bary_hi | DQR | lo | 21353/200000 | hi_OYQ,lo_YQR,lo_OQR,s807,s944,s971 |
| s1025 | 230 | bary_lo | OHR | hi | 738201/1000000 | s946,lo_ZQR,lo_OQR,s928,s783,hi_OHQ |
| s1027 | 231 | bary_lo | ODR | hi | 478879/1000000 | s946,lo_ZQR,lo_OQR,s928,lo_ODZ,hi_ODQ |
| s1028 | 232 | bary_lo | OFR | hi | 70833/100000 | s946,lo_ZQR,lo_OQR,s928,s855,hi_OFQ |
| s1029 | 233 | bary_lo | OYR | hi | 31637/62500 | s946,lo_ZQR,lo_OQR,s928,s864,hi_OYQ |
| s1033 | 235 | bary_lo | HFR | hi | 70829/125000 | s946,lo_ZQR,lo_OQR,s928,s937,s960,hi_HFQ |
| s1034 | 236 | bary_hi | HYR | hi | 86787/250000 | s946,lo_ZQR,lo_OQR,s928,lo_OHY,s1013,s940 |
| s1045 | 245 | bary_lo | FYZ | lo | 134949/1000000 | s1017,s932,s947,lo_OZP,lo_OFY,s996,s919 |
| s1057 | 249 | bary_hi | CZQ | hi | 23457/50000 | s250,s929,s976,lo_HCZ,s916,hi_CDQ |
| s1058 | 250 | bary_hi | DFZ | hi | 251581/500000 | s250,s929,s976,lo_HCZ,hi_HDF,s979 |
| s1060 | 251 | bary_lo | OHZ | hi | 248161/500000 | s458,lo_CZP,s931,lo_HCZ,hi_OHC,s790 |
| s1061 | 253 | bary_lo | OHP | hi | 550243/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s937 |
| s1062 | 256 | bary_lo | OYP | hi | 4903/15625 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHY,hi_ODY,s994 |
| s1063 | 257 | bary_hi | HCP | hi | 14843/31250 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s250,s978 |
| s1064 | 258 | bary_hi | HYP | hi | 12673/40000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1001,s985 |
| s1065 | 259 | bary_hi | HZP | hi | 250059/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s951,s960 |
| s1066 | 260 | bary_hi | HPQ | hi | 223307/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s953,hi_HFQ |
| s1067 | 261 | bary_hi | HPR | hi | 389327/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s811,s1033 |
| s1068 | 263 | bary_lo | CPR | lo | 86989/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s896,lo_CDR,s926 |
| s1069 | 264 | bary_hi | DYP | lo | 176761/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s252,s995 |
| s1070 | 265 | bary_hi | DZP | lo | 12291/62500 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s976,s970 |
| s1076 | 266 | bary_lo | YZP | lo | 105749/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HYZ,lo_DYZ,s1045 |
| s1077 | 268 | bary_hi | OHR | lo | 251983/500000 | hi_CDQ,s1024,lo_CQR,lo_CDR,s936,s245,s941 |
| s1078 | 269 | bary_hi | OFR | lo | 488527/1000000 | hi_CDQ,s1024,lo_CQR,lo_CDR,s930,lo_ODF,s945 |
| s1079 | 270 | bary_hi | OYR | lo | 243639/1000000 | hi_CDQ,s1024,lo_CQR,lo_CDR,s999,s889,s870 |
| s1080 | 272 | bary_hi | OPR | lo | 110769/250000 | hi_CDQ,s1024,lo_CQR,lo_CDR,s943,s453,lo_OPQ |
| s1081 | 273 | bary_lo | HCR | lo | 268361/1000000 | hi_CDQ,s1024,lo_CQR,lo_CDR,lo_HCD,s956 |
| s1082 | 274 | bary_lo | HDR | hi | 270161/500000 | hi_CDQ,s1024,lo_CQR,lo_CDR,s250,s953 |
| s1084 | 276 | bary_lo | HYR | lo | 35591/250000 | hi_CDQ,s1024,lo_CQR,lo_CDR,lo_HCY,s252,s921 |
| s1085 | 279 | bary_hi | CZR | lo | 112737/1000000 | hi_CDQ,s1024,lo_CQR,lo_CDR,s929,s968 |
| s1090 | 284 | bary_hi | ZPR | lo | 36441/250000 | hi_CDQ,s1024,lo_CQR,lo_CDR,lo_CZP,s1070,s932 |
| s1092 | 289 | bary_hi | DQR | lo | 5479/50000 | hi_CYQ,lo_YQR,lo_CQR,s915,s962,s971 |
| s1093 | 290 | bary_hi | HDR | lo | 80801/250000 | s1057,lo_ZQR,lo_CQR,s1085,lo_HCD,s976,s977 |
| s1095 | 292 | bary_hi | OHP | lo | 18101/50000 | s1058,lo_FZP,s1070,lo_DFP,s245,lo_OHF,s939 |
| s1097 | 295 | bary_hi | OYP | lo | 69121/500000 | s1058,lo_FZP,s1070,lo_DFP,s889,lo_OFY,s909 |
| s1099 | 298 | bary_lo | HYP | lo | 56989/500000 | s1058,lo_FZP,s1070,lo_DFP,s252,lo_HFY,lo_HYZ |
| s1106 | 301 | bary_hi | ODZ | hi | 354269/1000000 | s1012,lo_YZR,s925,lo_DYZ,hi_ODY,s899 |
| s1108 | 303 | bary_hi | CDZ | hi | 340237/1000000 | s1012,lo_YZR,s925,lo_DYZ,s1011,lo_CDR |
| s1114 | 306 | bary_lo | DZR | hi | 56971/200000 | s1012,lo_YZR,s925,lo_DYZ,s1012 |
| s1116 | 308 | bary_lo | OCZ | lo | 163503/1000000 | s1009,s1090,lo_YZR,s1076,s999,s943,lo_OCR |
| s1117 | 309 | bary_lo | OFZ | hi | 11079/31250 | s1009,s1090,lo_YZR,s1076,lo_OFY,s455,s1028 |
| s1118 | 310 | bary_lo | OYZ | hi | 298867/1000000 | s1009,s1090,lo_YZR,s1076,s1062,s1029 |
| s1120 | 313 | bary_lo | HDZ | hi | 413261/1000000 | s1009,s1090,lo_YZR,s1076,s1001,lo_HDP,s1082 |
| s1121 | 314 | bary_hi | HYZ | hi | 113169/500000 | s1009,s1090,lo_YZR,s1076,s1064,s1034 |
| s1125 | 0 | sum | OHC | lo | 164731/500000 | lo_HCY,s999,lo_OHY |
| s1128 | 3 | sum | OHQ | lo | 754223/1000000 | s934,s1077,lo_OQR |
| s1130 | 5 | sum | OCP | lo | 349503/1000000 | lo_CZP,s1116,lo_OZP |
| s1131 | 8 | sum | ODQ | lo | 377021/1000000 | s1092,s899,lo_OQR |
| s1132 | 9 | sum | OFQ | lo | 750549/1000000 | s933,s1078,lo_OQR |
| s1134 | 10 | sum | OYQ | lo | 429639/1000000 | lo_OQR,s1079,lo_YQR |
| s1138 | 13 | sum | OPQ | lo | 699593/1000000 | s1080,lo_OQR,s935 |
| s1142 | 15 | sum | HCQ | lo | 259309/500000 | lo_CQR,s1081,s934 |
| s1143 | 18 | sum | CDQ | lo | 14779/50000 | lo_CDR,lo_CQR,s1092 |
| s1146 | 20 | sum | CZQ | lo | 298737/1000000 | lo_CQR,s1085,lo_ZQR |
| s1147 | 21 | sum | CPQ | lo | 86099/200000 | s1068,lo_CQR,s935 |
| s1148 | 22 | sum | DFY | lo | 23457/62500 | lo_DFP,s1069,s996 |
| s1149 | 23 | sum | DFZ | lo | 5979/15625 | lo_DFP,s1070,lo_FZP |
| s1152 | 28 | sumlo | OCY | lo | 75099/500000 | lo_OCQ,lo_OHY,s1125,s1134,hi_OHQ |
| s1153 | 32 | sumlo | OCD | lo | 202007/1000000 | s1130,s1131,lo_OCQ,s453,s1017 |
| s1154 | 33 | sumlo | ODY | lo | 337833/1000000 | lo_ODF,s1134,s1131,lo_OFY,hi_OFQ |
| s1155 | 38 | sumlo | HCF | lo | 57109/200000 | lo_HCD,lo_OHF,lo_HDF,s1125,hi_OHD |
| s1156 | 42 | sumlo | HFQ | lo | 71953/250000 | s1155,s977,s1142,lo_HDF,s250 |
| s1159 | 46 | sumlo | HCR | lo | 67127/250000 | lo_CDR,s1142,lo_CQR,lo_HCD,hi_CDQ |
| s1160 | 48 | sumlo | CZR | lo | 28373/250000 | lo_CDR,s1146,s929,lo_CQR,hi_CDQ |
| s1161 | 50 | sumlo | ODR | lo | 91453/500000 | lo_CDR,s245,s1093,s1153,s250 |
| s1162 | 53 | diff | CDF | lo | 15627/40000 | s1149,lo_HCD,s1108,hi_HDF,s1120 |
| s1163 | 54 | sumlo | CDP | lo | 41207/125000 | s1162,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1164 | 55 | diffhi | DFQ | hi | 264389/500000 | s979,s953,s1143,lo_HDF,lo_HCD |
| s1168 | 57 | sumlo | DZP | lo | 197333/1000000 | lo_DFP,s976,s1149,lo_HDP,hi_HDF |
| s1172 | 65 | sumlo | OYZ | lo | 3589/31250 | lo_DYZ,s1079,s1154,lo_YZR,s1012 |
| s1174 | 70 | sumlo | ZPQ | lo | 14909/62500 | lo_CZP,s924,s1146,s1168,s1108 |
| s1175 | 73 | sumlo | YZP | lo | 56007/500000 | lo_DYZ,s1090,s1168,lo_YZR,s1114 |
| s1176 | 75 | sumlo | OFP | lo | 169227/1000000 | lo_FZP,s1095,lo_HFP,lo_OZP,s1065 |
| s1178 | 81 | sumlo | DQR | lo | 5523/50000 | s1143,lo_YQR,lo_CQR,s971,hi_CYQ |
| s1180 | 83 | sumlo | CYR | lo | 90829/500000 | lo_CDR,lo_YQR,lo_CQR,s972,hi_DQR |
| s1181 | 85 | balance_hi | HCQ | hi | 403433/500000 | s250,hi_OFQ,s1143,lo_OHF,s977,s930,lo_ODF |
| s1186 | 94 | balance_lo | HYQ | lo | 205963/1000000 | s1147,lo_OHY,s1138,lo_HCY,lo_OCQ,s1099,s1016 |
| s1188 | 100 | balance_lo | DZQ | lo | 253441/1000000 | lo_DYZ,s1147,lo_YZQ,s1163,s971,lo_CZP,s1004 |
| s1189 | 101 | balance_lo | DZR | lo | 11599/62500 | lo_DYZ,s1068,lo_YZR,s1163,s972,lo_CZP,s1004 |
| s1190 | 102 | balance_lo | CFR | lo | 188013/1000000 | lo_ODF,lo_CQR,lo_DFQ,lo_OCR,s1132,lo_CDR,hi_ODQ |
| s1194 | 111 | balance_lo | OCZ | lo | 173439/1000000 | lo_CZP,s1134,lo_OZP,s967,s1130,lo_YZQ,s1008 |
| s1195 | 113 | balance_lo | OZR | lo | 45963/250000 | lo_OZP,lo_YQR,s1090,s1134,s1080,lo_YZQ,s1008 |
| s1196 | 114 | balance_lo | CDZ | lo | 57849/250000 | s1168,s967,lo_CZP,s971,s1163,lo_YZQ,s1008 |
| s1197 | 116 | balance_lo | OCF | lo | 83123/250000 | s1125,lo_FZP,s1155,lo_OZP,lo_OHF,lo_CZP,s1065 |
| s1199 | 118 | balance_lo | HZP | lo | 4143/25000 | lo_OHF,s1174,s1156,lo_OZP,s1128,lo_FZP,hi_OFQ |
| s1201 | 121 | balance_lo | ZPQ | lo | 242963/1000000 | s971,lo_CZP,s967,s1168,s1143,s1175,s1011 |
| s1202 | 122 | balance_lo | FQR | lo | 42689/250000 | lo_ODF,lo_YQR,s1148,lo_OQR,lo_OFY,s1178,hi_ODY |
| s1203 | 124 | balance_lo | HQR | lo | 39653/250000 | lo_HCD,lo_YQR,s252,lo_CQR,lo_HCY,s1178,s1011 |
| s1204 | 125 | balance_lo | PQR | lo | 174239/1000000 | s1168,lo_CQR,lo_CZP,s1178,s1163,lo_ZQR,s1108 |
| s1205 | 126 | linear | OHC | lo | 168099/500000 | lo_HCY,s1152,lo_OHY |
| s1206 | 131 | linear | OHF | hi | 62627/125000 | s44,s1176,s1061 |
| s1208 | 133 | linear | OHZ | lo | 18803/62500 | lo_HYZ,lo_OHY,s1172 |
| s1209 | 134 | linear | HYQ | hi | 477361/1000000 | hi_OHQ,lo_OHY,s1134 |
| s1210 | 135 | linear | OHQ | lo | 377789/500000 | s1203,s1077,lo_OQR |
| s1211 | 138 | linear | OCP | lo | 359439/1000000 | lo_CZP,s1194,lo_OZP |
| s1213 | 143 | linear | ODQ | lo | 193183/500000 | s1178,s1161,lo_OQR |
| s1214 | 144 | linear | OFQ | lo | 752283/1000000 | s1202,s1078,lo_OQR |
| s1215 | 147 | linear | OZQ | hi | 25681/50000 | s1017,lo_OZP,s1201 |
| s1216 | 148 | linear | OZQ | lo | 92463/250000 | lo_OQR,s1195,lo_ZQR |
| s1219 | 149 | linear | OPQ | lo | 142063/200000 | s1080,lo_OQR,s1204 |
| s1221 | 149 | linear | OPR | hi | 72793/125000 | s1017,lo_OQR,s1204 |
| s1222 | 150 | linear | HDZ | hi | 99151/250000 | s1196,s250,lo_HCZ |
| s1228 | 152 | linear | HCQ | lo | 13003/25000 | lo_CQR,s1159,s1203 |
| s1230 | 157 | linear | HDY | hi | 523393/1000000 | s972,s1082,s1034 |
| s1231 | 158 | linear | HDQ | hi | 61571/100000 | hi_DQR,s1082,s1203 |
| s1232 | 159 | linear | HFZ | hi | 277059/1000000 | lo_FZP,s44,s1065 |
| s1234 | 161 | linear | CYQ | hi | 146983/250000 | hi_CDQ,s1011,s971 |
| s1235 | 162 | linear | CDQ | lo | 14823/50000 | lo_CDR,lo_CQR,s1178 |
| s1240 | 165 | linear | CYQ | lo | 183829/500000 | lo_CQR,s1180,lo_YQR |
| s1242 | 166 | linear | CZQ | lo | 74873/250000 | lo_CQR,s1160,lo_ZQR |
| s1243 | 167 | linear | CPQ | lo | 441217/1000000 | s1068,lo_CQR,s1204 |
| s1245 | 170 | linear | DFZ | lo | 383333/1000000 | lo_DFP,s1168,lo_FZP |
| s1246 | 172 | linear | DYQ | lo | 439441/1000000 | lo_DYZ,s1188,lo_YZQ |
| s1247 | 173 | linear | DYR | lo | 5806/15625 | lo_DYZ,s1189,lo_YZR |
| s1252 | 179 | support_z | HDZ | lo | 26867/100000 | s1245,hi_HDF |
| s1253 | 180 | support_z | HDQ | lo | 46877/200000 | s1246,s1209 |
| s1254 | 182 | linear | HCF | hi | 24373/40000 | s1162 |
| s1255 | 182 | linear | CDF | hi | 142891/200000 | s1155 |
| s1268 | 198 | bary_lo | HFY | hi | 38843/125000 | s1061,s1099,s1097,lo_OHY,s1206,s44 |
| s1272 | 200 | bary_lo | OCY | lo | 38273/250000 | hi_OHQ,s1186,s1134,lo_OHY,s1205,lo_OCQ |
| s1276 | 206 | bary_hi | CYP | hi | 431189/1000000 | hi_OHQ,s1186,s1134,lo_OHY,s1016,s1063,s1243 |
| s1277 | 207 | bary_hi | DFY | hi | 313599/500000 | hi_OHQ,s1186,s1134,lo_OHY,hi_ODF,hi_HDF,s1164 |
| s1279 | 210 | bary_lo | YPQ | hi | 597441/1000000 | hi_OHQ,s1186,s1134,lo_OHY,s1017,s1066 |
| s1280 | 211 | bary_lo | YPR | hi | 85811/200000 | hi_OHQ,s1186,s1134,lo_OHY,s1221,s1067,s1204 |
| s1281 | 212 | bary_hi | OFY | hi | 27973/100000 | s1025,s1084,s1079,lo_OHY,s1206,s1078 |
| s1282 | 214 | bary_hi | CDY | hi | 590477/1000000 | s1025,s1084,s1079,lo_OHY,hi_OCD,s250,lo_CDR |
| s1283 | 215 | bary_lo | DYR | hi | 230201/500000 | s1025,s1084,s1079,lo_OHY,s1027,s1082 |
| s1287 | 220 | bary_hi | OCP | hi | 140297/250000 | hi_ODF,lo_DFP,s1176,s453,hi_OCD,hi_OCF |
| s1288 | 221 | bary_hi | OPQ | hi | 847463/1000000 | hi_ODF,lo_DFP,s1176,s453,hi_ODQ,hi_OFQ |
| s1294 | 230 | bary_lo | OHR | hi | 727733/1000000 | s1215,lo_ZQR,lo_OQR,s1195,s1060,hi_OHQ |
| s1296 | 231 | bary_lo | ODR | hi | 93657/200000 | s1215,lo_ZQR,lo_OQR,s1195,lo_ODZ,hi_ODQ |
| s1297 | 232 | bary_lo | OFR | hi | 693371/1000000 | s1215,lo_ZQR,lo_OQR,s1195,s1117,hi_OFQ |
| s1298 | 233 | bary_lo | OYR | hi | 496453/1000000 | s1215,lo_ZQR,lo_OQR,s1195,s1118,hi_OYQ |
| s1302 | 235 | bary_lo | HFR | hi | 11157/20000 | s1215,lo_ZQR,lo_OQR,s1195,s1206,s1232,hi_HFQ |
| s1303 | 236 | bary_hi | HYR | hi | 65727/200000 | s1215,lo_ZQR,lo_OQR,s1195,lo_OHY,s1121,s1209 |
| s1311 | 239 | bary_hi | DQR | lo | 14481/125000 | s1215,lo_ZQR,lo_OQR,s1195,s1213,s1188 |
| s1313 | 244 | bary_hi | OZQ | hi | 1023/2000 | s1288,s1201,s1216,lo_OZP,s1288 |
| s1318 | 247 | bary_lo | OPR | hi | 9066/15625 | s1288,s1204,lo_OQR,s1080,s1288 |
| s1324 | 248 | bary_lo | OHZ | hi | 15271/31250 | s1318,s1090,s1195,lo_OZP,s1061,s1294 |
| s1328 | 249 | bary_hi | CZQ | hi | 456299/1000000 | s250,s1196,s1252,lo_HCZ,s1181,hi_CDQ |
| s1329 | 250 | bary_hi | DFZ | hi | 491211/1000000 | s250,s1196,s1252,lo_HCZ,hi_HDF,s1255 |
| s1331 | 253 | bary_lo | OHP | hi | 544427/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s1206 |
| s1332 | 256 | bary_lo | OYP | hi | 30873/100000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHY,hi_ODY,s1281 |
| s1333 | 257 | bary_hi | HCP | hi | 467933/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s250,s1254 |
| s1334 | 258 | bary_hi | HYP | hi | 149847/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1230,s1268 |
| s1335 | 259 | bary_hi | HZP | hi | 29967/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1222,s1232 |
| s1336 | 260 | bary_hi | HPQ | hi | 443477/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1231,hi_HFQ |
| s1337 | 261 | bary_hi | HPR | hi | 382981/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1082,s1302 |
| s1338 | 263 | bary_lo | CPR | lo | 175217/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1159,lo_CDR,s1190 |
| s1340 | 265 | bary_hi | DZP | lo | 198157/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1252,s1245 |
| s1346 | 268 | bary_hi | OHR | lo | 256577/500000 | hi_CDQ,s1311,lo_CQR,lo_CDR,s1205,s245,s1210 |
| s1347 | 269 | bary_hi | OFR | lo | 505493/1000000 | hi_CDQ,s1311,lo_CQR,lo_CDR,s1197,lo_ODF,s1214 |
| s1348 | 270 | bary_hi | OYR | lo | 127617/500000 | hi_CDQ,s1311,lo_CQR,lo_CDR,s1272,s1154,s1134 |
| s1349 | 272 | bary_hi | OPR | lo | 452429/1000000 | hi_CDQ,s1311,lo_CQR,lo_CDR,s1211,s453,s1219 |
| s1350 | 273 | bary_lo | HCR | lo | 6721/25000 | hi_CDQ,s1311,lo_CQR,lo_CDR,lo_HCD,s1228 |
| s1351 | 274 | bary_lo | HDR | hi | 134509/250000 | hi_CDQ,s1311,lo_CQR,lo_CDR,s250,s1231 |
| s1353 | 276 | bary_lo | HYR | lo | 28629/200000 | hi_CDQ,s1311,lo_CQR,lo_CDR,lo_HCY,s252,s1186 |
| s1354 | 279 | bary_hi | CZR | lo | 117553/1000000 | hi_CDQ,s1311,lo_CQR,lo_CDR,s1196,s1242 |
| s1356 | 281 | bary_hi | DFR | hi | 515141/1000000 | hi_CDQ,s1311,lo_CQR,lo_CDR,s1255,s1164 |
| s1359 | 284 | bary_hi | ZPR | lo | 14949/100000 | hi_CDQ,s1311,lo_CQR,lo_CDR,lo_CZP,s1340,s1201 |
| s1361 | 289 | bary_hi | DQR | lo | 23281/200000 | s1234,lo_YQR,lo_CQR,s1180,s1235,s1246 |
| s1362 | 290 | bary_hi | HDR | lo | 41881/125000 | s1328,lo_ZQR,lo_CQR,s1354,lo_HCD,s1252,s1253 |
| s1364 | 292 | bary_hi | OHP | lo | 91467/250000 | s1329,lo_FZP,s1340,lo_DFP,s245,lo_OHF,s1208 |
| s1365 | 293 | bary_hi | ODP | hi | 129663/200000 | s1329,lo_FZP,s1340,lo_DFP,hi_ODF,s1106 |
| s1366 | 295 | bary_hi | OYP | lo | 14349/100000 | s1329,lo_FZP,s1340,lo_DFP,s1154,lo_OFY,s1172 |
| s1368 | 298 | bary_lo | HYP | lo | 14311/125000 | s1329,lo_FZP,s1340,lo_DFP,s252,lo_HFY,lo_HYZ |
| s1375 | 303 | bary_hi | CDZ | hi | 166571/500000 | s1283,lo_YZR,s1189,lo_DYZ,s1282,lo_CDR |
| s1378 | 305 | bary_hi | DFZ | hi | 477871/1000000 | s1283,lo_YZR,s1189,lo_DYZ,s1277,s1356 |
| s1381 | 306 | bary_lo | DZR | hi | 137201/500000 | s1283,lo_YZR,s1189,lo_DYZ,s1283 |
| s1384 | 309 | bary_lo | OFZ | hi | 330231/1000000 | s1280,s1359,lo_YZR,s1175,lo_OFY,s455,s1297 |
| s1385 | 310 | bary_lo | OYZ | hi | 282791/1000000 | s1280,s1359,lo_YZR,s1175,s1332,s1298 |
| s1386 | 311 | bary_lo | OZP | hi | 3161/15625 | s1280,s1359,lo_YZR,s1175,s1366,s1318 |
| s1388 | 313 | bary_lo | HDZ | hi | 198077/500000 | s1280,s1359,lo_YZR,s1175,s1230,lo_HDP,s1351 |
| s1389 | 314 | bary_hi | HYZ | hi | 10393/50000 | s1280,s1359,lo_YZR,s1175,s1334,s1303 |
| s1393 | 0 | sum | OHC | lo | 84773/250000 | lo_HCY,s1272,lo_OHY |
| s1396 | 3 | sum | OHQ | lo | 382383/500000 | s1203,s1346,lo_OQR |
| s1398 | 8 | sum | ODQ | lo | 392311/1000000 | s1361,s1161,lo_OQR |
| s1399 | 9 | sum | OFQ | lo | 769249/1000000 | s1202,s1347,lo_OQR |
| s1401 | 10 | sum | OYQ | lo | 220617/500000 | lo_OQR,s1348,lo_YQR |
| s1405 | 13 | sum | OPQ | lo | 179917/250000 | s1349,lo_OQR,s1204 |
| s1409 | 15 | sum | HCQ | lo | 130113/250000 | lo_CQR,s1350,s1203 |
| s1411 | 18 | sum | CDQ | lo | 60481/200000 | lo_CDR,lo_CQR,s1361 |
| s1414 | 20 | sum | CZQ | lo | 303553/1000000 | lo_CQR,s1354,lo_ZQR |
| s1415 | 21 | sum | CPQ | lo | 55307/125000 | s1338,lo_CQR,s1204 |
| s1417 | 23 | sum | DFZ | lo | 384157/1000000 | lo_DFP,s1340,lo_FZP |
| s1419 | 28 | sumlo | OCY | lo | 158267/1000000 | lo_OCQ,lo_OHY,s1393,s1401,hi_OHQ |
| s1420 | 32 | sumlo | OCD | lo | 106709/500000 | s1211,s1398,lo_OCQ,s453,s1288 |
| s1421 | 33 | sumlo | ODY | lo | 347433/1000000 | lo_ODF,s1401,s1398,lo_OFY,hi_OFQ |
| s1422 | 35 | sumlo | OYP | lo | 143553/1000000 | s1176,s1401,lo_OFY,s1405,hi_OFQ |
| s1423 | 38 | sumlo | HCF | lo | 36029/125000 | lo_HCD,lo_OHF,lo_HDF,s1393,hi_OHD |
| s1424 | 42 | sumlo | HFQ | lo | 147547/500000 | s1423,s1253,s1409,lo_HDF,s250 |
| s1427 | 46 | sumlo | HCR | lo | 134457/500000 | lo_CDR,s1409,lo_CQR,lo_HCD,hi_CDQ |
| s1428 | 48 | sumlo | CZR | lo | 29613/250000 | lo_CDR,s1414,s1196,lo_CQR,hi_CDQ |
| s1429 | 50 | sumlo | ODR | lo | 191527/1000000 | lo_CDR,s245,s1362,s1420,s250 |
| s1430 | 53 | diff | CDF | lo | 83131/200000 | s1417,lo_HCD,s1375,hi_HDF,s1388 |
| s1431 | 54 | sumlo | CDP | lo | 10539/31250 | s1430,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1432 | 55 | diffhi | DFQ | hi | 256143/500000 | s1255,s1231,s1411,lo_HDF,lo_HCD |
| s1435 | 57 | sumlo | DZP | lo | 24801/125000 | lo_DFP,s1252,s1417,lo_HDP,hi_HDF |
| s1438 | 65 | sumlo | OYZ | lo | 121737/1000000 | lo_DYZ,s1348,s1421,lo_YZR,s1283 |
| s1442 | 70 | sumlo | ZPQ | lo | 15721/62500 | lo_CZP,s1188,s1414,s1435,s1375 |
| s1443 | 73 | sumlo | YZP | lo | 117909/1000000 | lo_DYZ,s1359,s1435,lo_YZR,s1381 |
| s1444 | 75 | sumlo | OFP | lo | 178007/1000000 | lo_FZP,s1364,lo_HFP,lo_OZP,s1335 |
| s1445 | 78 | sumlo | DZP | lo | 50127/250000 | lo_DFP,s1199,lo_FZP,lo_HDP,s44 |
| s1446 | 79 | sumlo | DQR | lo | 117409/1000000 | s1188,lo_OQR,s1398,lo_ZQR,s1313 |
| s1448 | 83 | sumlo | CYR | lo | 92321/500000 | lo_CDR,lo_YQR,lo_CQR,s1247,hi_DQR |
| s1451 | 90 | balance_lo | CYZ | lo | 13121/100000 | lo_YZQ,s1211,s1414,s1422,s1240,lo_OZP,s1288 |
| s1455 | 94 | balance_lo | HYQ | lo | 211559/1000000 | s1415,lo_OHY,s1405,lo_HCY,lo_OCQ,s1368,s1287 |
| s1457 | 100 | balance_lo | DZQ | lo | 65737/250000 | lo_DYZ,s1415,lo_YZQ,s1431,s1246,lo_CZP,s1276 |
| s1458 | 101 | balance_lo | DZR | lo | 95337/500000 | lo_DYZ,s1338,lo_YZR,s1431,s1247,lo_CZP,s1276 |
| s1459 | 102 | balance_lo | CFR | lo | 190299/1000000 | lo_ODF,lo_CQR,lo_DFQ,lo_OCR,s1399,lo_CDR,hi_ODQ |
| s1463 | 111 | balance_lo | OCZ | lo | 90933/500000 | lo_CZP,s1401,lo_OZP,s1240,s1211,lo_YZQ,s1279 |
| s1464 | 113 | balance_lo | OZR | lo | 195307/1000000 | lo_OZP,lo_YQR,s1359,s1401,s1349,lo_YZQ,s1279 |
| s1465 | 114 | balance_lo | CDZ | lo | 61073/250000 | s1445,s1240,lo_CZP,s1246,s1431,lo_YZQ,s1279 |
| s1467 | 116 | balance_lo | OCF | lo | 351587/1000000 | s1393,lo_FZP,s1423,lo_OZP,lo_OHF,lo_CZP,s1335 |
| s1468 | 118 | balance_lo | HZP | lo | 6843/40000 | lo_OHF,s1442,s1424,lo_OZP,s1396,lo_FZP,hi_OFQ |
| s1470 | 121 | balance_lo | ZPQ | lo | 127221/500000 | s1246,lo_CZP,s1240,s1445,s1411,s1443,s1282 |
| s1472 | 123 | balance_lo | FQR | lo | 174363/1000000 | s1430,s1203,lo_HDF,lo_CQR,s1423,s1446,s250 |
| s1473 | 124 | balance_lo | HQR | lo | 501/3125 | lo_HCD,lo_YQR,s252,lo_CQR,lo_HCY,s1446,s1282 |
| s1474 | 125 | balance_lo | PQR | lo | 11431/62500 | s1445,lo_CQR,lo_CZP,s1446,s1431,lo_ZQR,s1375 |
| s1475 | 126 | linear | OHC | lo | 344267/1000000 | lo_HCY,s1419,lo_OHY |
| s1476 | 131 | linear | OHF | hi | 24321/50000 | s44,s1444,s1331 |
| s1478 | 133 | linear | OHZ | lo | 307737/1000000 | lo_HYZ,lo_OHY,s1438 |
| s1479 | 134 | linear | HYQ | hi | 232883/500000 | hi_OHQ,lo_OHY,s1401 |
| s1480 | 135 | linear | OHQ | lo | 383237/500000 | s1473,s1346,lo_OQR |
| s1481 | 138 | linear | OCP | lo | 183933/500000 | lo_CZP,s1463,lo_OZP |
| s1483 | 140 | linear | ODF | lo | 699529/1000000 | lo_DFP,s453,s1444 |
| s1484 | 141 | linear | DFQ | lo | 5273/50000 | s1483,s1398,hi_OFQ |
| s1485 | 143 | linear | ODQ | lo | 25121/62500 | s1446,s1429,lo_OQR |
| s1486 | 144 | linear | OFQ | lo | 96607/125000 | s1472,s1347,lo_OQR |
| s1488 | 147 | linear | OZQ | hi | 500021/1000000 | s1288,lo_OZP,s1470 |
| s1489 | 148 | linear | OZQ | lo | 381307/1000000 | lo_OQR,s1464,lo_ZQR |
| s1491 | 148 | linear | OZR | hi | 314021/1000000 | lo_OQR,s1488,lo_ZQR |
| s1492 | 149 | linear | OPQ | lo | 29133/40000 | s1349,lo_OQR,s1474 |
| s1493 | 149 | linear | OPR | hi | 571567/1000000 | s1288,lo_OQR,s1474 |
| s1494 | 150 | linear | HDZ | hi | 95927/250000 | s1465,s250,lo_HCZ |
| s1499 | 152 | linear | HCQ | lo | 261117/500000 | lo_CQR,s1427,s1473 |
| s1501 | 157 | linear | HDY | hi | 495087/1000000 | s1247,s1351,s1303 |
| s1502 | 158 | linear | HDQ | hi | 152929/250000 | hi_DQR,s1351,s1473 |
| s1503 | 159 | linear | HFZ | hi | 16671/62500 | lo_FZP,s44,s1335 |
| s1504 | 160 | linear | CDY | lo | 234251/500000 | s1465,s1451,lo_DYZ |
| s1511 | 165 | linear | CYQ | lo | 185321/500000 | lo_CQR,s1448,lo_YQR |
| s1512 | 166 | linear | CZQ | lo | 76113/250000 | lo_CQR,s1428,lo_ZQR |
| s1513 | 167 | linear | CPQ | lo | 451113/1000000 | s1338,lo_CQR,s1474 |
| s1515 | 170 | linear | DFZ | lo | 96627/250000 | lo_DFP,s1445,lo_FZP |
| s1516 | 172 | linear | DYQ | lo | 112237/250000 | lo_DYZ,s1457,lo_YZQ |
| s1517 | 173 | linear | DYR | lo | 188337/500000 | lo_DYZ,s1458,lo_YZR |
| s1522 | 179 | support_z | HDZ | lo | 54179/200000 | s1515,hi_HDF |
| s1523 | 180 | support_z | HDQ | lo | 3821/15625 | s1516,s1479 |
| s1524 | 182 | linear | HCF | hi | 116869/200000 | s1430 |
| s1525 | 182 | linear | CDF | hi | 88971/125000 | s1423 |
| s1538 | 196 | bary_lo | DFY | lo | 379491/1000000 | s1324,lo_HYZ,s1438,lo_OHY,s1483,lo_HDF,s1515 |
| s1540 | 198 | bary_lo | HFY | hi | 29557/100000 | s1331,s1368,s1422,lo_OHY,s1476,s44 |
| s1541 | 199 | bary_lo | FYZ | hi | 30149/125000 | s1331,s1368,s1422,lo_OHY,s1384,s1503,lo_FZP |
| s1544 | 200 | bary_lo | OCY | lo | 160551/1000000 | hi_OHQ,s1455,s1401,lo_OHY,s1475,lo_OCQ |
| s1548 | 206 | bary_hi | CYP | hi | 425897/1000000 | hi_OHQ,s1455,s1401,lo_OHY,s1287,s1333,s1513 |
| s1549 | 207 | bary_hi | DFY | hi | 123673/200000 | hi_OHQ,s1455,s1401,lo_OHY,hi_ODF,hi_HDF,s1432 |
| s1550 | 210 | bary_lo | YPQ | hi | 590397/1000000 | hi_OHQ,s1455,s1401,lo_OHY,s1288,s1336 |
| s1551 | 211 | bary_lo | YPR | hi | 26137/62500 | hi_OHQ,s1455,s1401,lo_OHY,s1493,s1337,s1474 |
| s1552 | 212 | bary_hi | OFY | hi | 263981/1000000 | s1294,s1353,s1348,lo_OHY,s1476,s1347 |
| s1553 | 214 | bary_hi | CDY | hi | 147111/250000 | s1294,s1353,s1348,lo_OHY,hi_OCD,s250,lo_CDR |
| s1555 | 215 | bary_lo | DYR | hi | 455559/1000000 | s1294,s1353,s1348,lo_OHY,s1296,s1351 |
| s1558 | 220 | bary_hi | OCP | hi | 280317/500000 | hi_ODF,lo_DFP,s1444,s453,hi_OCD,hi_OCF |
| s1559 | 221 | bary_hi | OPQ | hi | 26417/31250 | hi_ODF,lo_DFP,s1444,s453,hi_ODQ,hi_OFQ |
| s1560 | 225 | bary_hi | HFZ | lo | 88603/500000 | s1365,s1445,lo_OZP,lo_ODZ,lo_OHF,lo_HDF,lo_HFP |
| s1562 | 230 | bary_lo | OHR | hi | 143781/200000 | s1488,lo_ZQR,lo_OQR,s1464,s1324,hi_OHQ |
| s1564 | 231 | bary_lo | ODR | hi | 28771/62500 | s1488,lo_ZQR,lo_OQR,s1464,lo_ODZ,hi_ODQ |
| s1565 | 232 | bary_lo | OFR | hi | 680883/1000000 | s1488,lo_ZQR,lo_OQR,s1464,s1384,hi_OFQ |
| s1566 | 233 | bary_lo | OYR | hi | 97621/200000 | s1488,lo_ZQR,lo_OQR,s1464,s1385,hi_OYQ |
| s1567 | 234 | bary_lo | OPR | hi | 568517/1000000 | s1488,lo_ZQR,lo_OQR,s1464,s1386,s1559 |
| s1570 | 235 | bary_lo | HFR | hi | 550609/1000000 | s1488,lo_ZQR,lo_OQR,s1464,s1476,s1503,hi_HFQ |
| s1571 | 236 | bary_hi | HYR | hi | 19617/62500 | s1488,lo_ZQR,lo_OQR,s1464,lo_OHY,s1389,s1479 |
| s1577 | 237 | bary_lo | DFR | lo | 4191/15625 | s1488,lo_ZQR,lo_OQR,s1464,s1483,s1515,s1484 |
| s1579 | 239 | bary_hi | DQR | lo | 123663/1000000 | s1488,lo_ZQR,lo_OQR,s1464,s1485,s1457 |
| s1581 | 243 | bary_hi | ODZ | hi | 67527/200000 | s1559,s1470,s1489,lo_OZP,s1365,s1485 |
| s1582 | 244 | bary_hi | OZQ | hi | 248951/500000 | s1559,s1470,s1489,lo_OZP,s1559 |
| s1592 | 248 | bary_lo | OHZ | hi | 117483/250000 | s1567,s1359,s1464,lo_OZP,s1331,s1562 |
| s1598 | 253 | bary_lo | OHP | hi | 539991/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s1476 |
| s1599 | 254 | bary_lo | ODP | lo | 430203/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s245,s1483 |
| s1600 | 256 | bary_lo | OYP | hi | 37993/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHY,hi_ODY,s1552 |
| s1601 | 257 | bary_hi | HCP | hi | 460341/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s250,s1524 |
| s1602 | 258 | bary_hi | HYP | hi | 141991/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1501,s1540 |
| s1603 | 259 | bary_hi | HZP | hi | 231541/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1494,s1503 |
| s1605 | 261 | bary_hi | HPR | hi | 189723/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1351,s1570 |
| s1606 | 263 | bary_lo | CPR | lo | 35207/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1427,lo_CDR,s1459 |
| s1607 | 264 | bary_hi | DYP | lo | 35619/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s252,s1538 |
| s1612 | 268 | bary_hi | OHR | lo | 520063/1000000 | hi_CDQ,s1579,lo_CQR,lo_CDR,s1475,s245,s1480 |
| s1613 | 269 | bary_hi | OFR | lo | 65239/125000 | hi_CDQ,s1579,lo_CQR,lo_CDR,s1467,s1483,s1486 |
| s1614 | 270 | bary_hi | OYR | lo | 264083/1000000 | hi_CDQ,s1579,lo_CQR,lo_CDR,s1544,s1421,s1401 |
| s1615 | 272 | bary_hi | OPR | lo | 92297/200000 | hi_CDQ,s1579,lo_CQR,lo_CDR,s1481,s1599,s1492 |
| s1616 | 273 | bary_lo | HCR | lo | 67327/250000 | hi_CDQ,s1579,lo_CQR,lo_CDR,lo_HCD,s1499 |
| s1617 | 274 | bary_lo | HDR | hi | 8393/15625 | hi_CDQ,s1579,lo_CQR,lo_CDR,s250,s1502 |
| s1619 | 276 | bary_lo | HYR | lo | 2256/15625 | hi_CDQ,s1579,lo_CQR,lo_CDR,lo_HCY,s252,s1455 |
| s1621 | 278 | bary_hi | CYR | lo | 18581/100000 | hi_CDQ,s1579,lo_CQR,lo_CDR,s1504,s1511 |
| s1622 | 279 | bary_hi | CZR | lo | 121507/1000000 | hi_CDQ,s1579,lo_CQR,lo_CDR,s1465,s1512 |
| s1624 | 281 | bary_hi | DFR | hi | 63749/125000 | hi_CDQ,s1579,lo_CQR,lo_CDR,s1525,s1432 |
| s1627 | 284 | bary_hi | ZPR | lo | 152553/1000000 | hi_CDQ,s1579,lo_CQR,lo_CDR,lo_CZP,s1445,s1470 |
| s1631 | 292 | bary_hi | OHP | lo | 184817/500000 | s1378,lo_FZP,s1445,lo_DFP,s245,lo_OHF,s1478 |
| s1632 | 293 | bary_hi | ODP | hi | 318531/500000 | s1378,lo_FZP,s1445,lo_DFP,hi_ODF,s1581 |
| s1633 | 295 | bary_hi | OYP | lo | 37027/250000 | s1378,lo_FZP,s1445,lo_DFP,s1421,lo_OFY,s1438 |
| s1635 | 297 | bary_hi | OPR | hi | 283283/500000 | s1378,lo_FZP,s1445,lo_DFP,s1564,s1565,s1491 |
| s1641 | 302 | bary_hi | OYZ | lo | 124837/1000000 | s1555,lo_YZR,s1458,lo_DYZ,s1421,s1614 |
| s1642 | 303 | bary_hi | CDZ | hi | 329203/1000000 | s1555,lo_YZR,s1458,lo_DYZ,s1553,lo_CDR |
| s1645 | 305 | bary_hi | DFZ | hi | 235003/500000 | s1555,lo_YZR,s1458,lo_DYZ,s1549,s1624 |
| s1648 | 306 | bary_lo | DZR | hi | 269559/1000000 | s1555,lo_YZR,s1458,lo_DYZ,s1555 |
| s1651 | 309 | bary_lo | OFZ | hi | 309883/1000000 | s1551,s1627,lo_YZR,s1443,lo_OFY,s455,s1565 |
| s1652 | 310 | bary_lo | OYZ | hi | 134547/500000 | s1551,s1627,lo_YZR,s1443,s1600,s1566 |
| s1653 | 311 | bary_lo | OZP | hi | 179863/1000000 | s1551,s1627,lo_YZR,s1443,s1633,s1635 |
| s1655 | 313 | bary_lo | HDZ | hi | 381671/1000000 | s1551,s1627,lo_YZR,s1443,s1501,lo_HDP,s1617 |
| s1656 | 314 | bary_hi | HYZ | hi | 192727/1000000 | s1551,s1627,lo_YZR,s1443,s1602,s1571 |
| s1657 | 316 | bary_hi | DYZ | hi | 7423/50000 | s1551,s1627,lo_YZR,s1443,s1607,s1555 |
| s1662 | 0 | sum | OHC | lo | 346551/1000000 | lo_HCY,s1544,lo_OHY |
| s1663 | 2 | sum | OHZ | lo | 310837/1000000 | lo_HYZ,lo_OHY,s1641 |
| s1665 | 3 | sum | OHQ | lo | 773383/1000000 | s1473,s1612,lo_OQR |
| s1666 | 4 | sub | OYR | hi | 481521/1000000 | s1562,s1619,lo_OHY |
| s1667 | 7 | sum | ODF | lo | 70121/100000 | lo_DFP,s1599,s1444 |
| s1668 | 8 | sum | ODQ | lo | 40819/100000 | s1579,s1429,lo_OQR |
| s1671 | 10 | sum | OYQ | lo | 450083/1000000 | lo_OQR,s1614,lo_YQR |
| s1677 | 13 | sum | OPQ | lo | 737381/1000000 | s1615,lo_OQR,s1474 |
| s1681 | 15 | sum | HCQ | lo | 130657/250000 | lo_CQR,s1616,s1473 |
| s1683 | 18 | sum | CDQ | lo | 309663/1000000 | lo_CDR,lo_CQR,s1579 |
| s1686 | 19 | sum | CYQ | lo | 37181/100000 | lo_CQR,s1621,lo_YQR |
| s1687 | 20 | sum | CZQ | lo | 307507/1000000 | lo_CQR,s1622,lo_ZQR |
| s1688 | 21 | sum | CPQ | lo | 451931/1000000 | s1606,lo_CQR,s1474 |
| s1690 | 26 | sum | YPR | lo | 181731/500000 | s1443,lo_YZR,s1627 |
| s1692 | 32 | sumlo | OCD | lo | 224959/1000000 | s1481,s1668,lo_OCQ,s1599,s1559 |
| s1693 | 33 | sumlo | ODY | lo | 179223/500000 | s1667,s1671,s1668,lo_OFY,hi_OFQ |
| s1694 | 35 | sumlo | OYP | lo | 150747/1000000 | s1444,s1671,lo_OFY,s1677,hi_OFQ |
| s1695 | 38 | sumlo | HCF | lo | 290313/1000000 | lo_HCD,lo_OHF,lo_HDF,s1662,hi_OHD |
| s1696 | 42 | sumlo | HFQ | lo | 300703/1000000 | s1695,s1523,s1681,lo_HDF,s250 |
| s1699 | 46 | sumlo | HCR | lo | 67349/250000 | lo_CDR,s1681,lo_CQR,lo_HCD,hi_CDQ |
| s1702 | 48 | sumlo | CZR | lo | 15273/125000 | lo_CDR,s1687,s1465,lo_CQR,hi_CDQ |
| s1704 | 51 | sumlo | ODP | lo | 215357/500000 | lo_DFP,s245,lo_HDP,s1667,hi_HDF |
| s1705 | 52 | sumlo | ODR | lo | 4013/20000 | lo_CDR,s1693,s1517,s1692,s1553 |
| s1706 | 53 | diff | CDF | lo | 21943/50000 | s1515,lo_HCD,s1642,hi_HDF,s1655 |
| s1707 | 54 | sumlo | CDP | lo | 3443/10000 | s1706,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1708 | 55 | diffhi | DFQ | hi | 62861/125000 | s1525,s1502,s1683,lo_HDF,lo_HCD |
| s1712 | 63 | sumlo | HYP | lo | 115399/1000000 | s1619,s1694,lo_OHY,s1690,s1666 |
| s1714 | 65 | sumlo | OYZ | lo | 63543/500000 | lo_DYZ,s1614,s1693,lo_YZR,s1555 |
| s1717 | 66 | sumlo | OFZ | lo | 7841/40000 | lo_FZP,s1663,s1560,lo_OZP,s1603 |
| s1718 | 70 | sumlo | ZPQ | lo | 32697/125000 | lo_CZP,s1457,s1687,s1445,s1642 |
| s1719 | 73 | sumlo | YZP | lo | 7613/62500 | lo_DYZ,s1627,s1445,lo_YZR,s1648 |
| s1720 | 75 | sumlo | OFP | lo | 9291/50000 | lo_FZP,s1631,lo_HFP,lo_OZP,s1603 |
| s1721 | 78 | sumlo | DZP | lo | 102329/500000 | lo_DFP,s1468,lo_FZP,lo_HDP,s44 |
| s1722 | 79 | sumlo | DQR | lo | 125357/1000000 | s1457,lo_OQR,s1668,lo_ZQR,s1582 |
| s1724 | 83 | sumlo | CYR | lo | 37333/200000 | lo_CDR,lo_YQR,lo_CQR,s1517,hi_DQR |
| s1728 | 89 | balance_lo | ODY | lo | 181069/500000 | lo_HDF,s1714,s1515,lo_OHY,s1522,lo_OFY,s1503 |
| s1729 | 90 | balance_lo | CYZ | lo | 136211/1000000 | lo_YZQ,s1481,s1687,s1694,s1686,lo_OZP,s1559 |
| s1733 | 94 | balance_lo | HYQ | lo | 21643/100000 | s1688,lo_OHY,s1677,lo_HCY,lo_OCQ,s1712,s1558 |
| s1734 | 95 | balance_lo | HDY | lo | 3324/15625 | s1667,s1619,s1577,lo_OHY,s1705,lo_HFY,s1565 |
| s1735 | 100 | balance_lo | DZQ | lo | 2719/10000 | lo_DYZ,s1688,lo_YZQ,s1707,s1516,lo_CZP,s1548 |
| s1736 | 101 | balance_lo | DZR | lo | 195873/1000000 | lo_DYZ,s1606,lo_YZR,s1707,s1517,lo_CZP,s1548 |
| s1738 | 105 | balance_lo | OCY | lo | 41657/250000 | s1662,lo_DYZ,lo_HCY,lo_ODZ,lo_OHY,s1465,s1655 |
| s1741 | 110 | balance_lo | HDQ | lo | 66047/250000 | lo_HDF,lo_YZQ,s1484,lo_HYZ,s1696,lo_DYZ,s1541 |
| s1742 | 111 | balance_lo | OCZ | lo | 46853/250000 | lo_CZP,s1671,lo_OZP,s1686,s1481,lo_YZQ,s1550 |
| s1743 | 113 | balance_lo | OZR | lo | 5091/25000 | lo_OZP,lo_YQR,s1627,s1671,s1615,lo_YZQ,s1550 |
| s1744 | 114 | balance_lo | CDZ | lo | 253839/1000000 | s1721,s1686,lo_CZP,s1516,s1707,lo_YZQ,s1550 |
| s1746 | 116 | balance_lo | OCF | lo | 183931/500000 | s1662,lo_FZP,s1695,lo_OZP,lo_OHF,lo_CZP,s1603 |
| s1747 | 118 | balance_lo | HZP | lo | 21907/125000 | lo_OHF,s1718,s1696,lo_OZP,s1665,lo_FZP,hi_OFQ |
| s1749 | 121 | balance_lo | ZPQ | lo | 264367/1000000 | s1516,lo_CZP,s1686,s1721,s1683,s1719,s1553 |
| s1751 | 123 | balance_lo | FQR | lo | 92023/500000 | s1706,s1473,lo_HDF,lo_CQR,s1695,s1722,s250 |
| s1752 | 124 | balance_lo | HQR | lo | 40779/250000 | lo_HCD,lo_YQR,s1734,lo_CQR,lo_HCY,s1722,s1553 |
| s1753 | 125 | balance_lo | PQR | lo | 95247/500000 | s1721,lo_CQR,lo_CZP,s1722,s1707,lo_ZQR,s1642 |
| s1754 | 126 | linear | OHC | lo | 88157/250000 | lo_HCY,s1738,lo_OHY |
| s1755 | 131 | linear | OHF | hi | 474171/1000000 | s44,s1720,s1598 |
| s1757 | 133 | linear | OHZ | lo | 156543/500000 | lo_HYZ,lo_OHY,s1714 |
| s1760 | 135 | linear | OHQ | lo | 776179/1000000 | s1752,s1612,lo_OQR |
| s1762 | 138 | linear | OCP | lo | 93353/250000 | lo_CZP,s1742,lo_OZP |
| s1764 | 140 | linear | ODF | lo | 354767/500000 | lo_DFP,s1704,s1720 |
| s1765 | 141 | linear | DFQ | lo | 8209/62500 | s1764,s1668,hi_OFQ |
| s1766 | 143 | linear | ODQ | lo | 419007/1000000 | s1722,s1705,lo_OQR |
| s1767 | 144 | linear | OFQ | lo | 399479/500000 | s1751,s1613,lo_OQR |
| s1768 | 145 | linear | OYQ | hi | 168499/250000 | s1652,s1582,lo_YZQ |
| s1770 | 147 | linear | OZQ | hi | 487977/1000000 | s1559,lo_OZP,s1749 |
| s1771 | 148 | linear | OZQ | lo | 9741/25000 | lo_OQR,s1743,lo_ZQR |
| s1773 | 148 | linear | OZR | hi | 301977/1000000 | lo_OQR,s1770,lo_ZQR |
| s1774 | 149 | linear | OPQ | lo | 744979/1000000 | s1615,lo_OQR,s1753 |
| s1775 | 149 | linear | OPR | hi | 11237/20000 | s1559,lo_OQR,s1753 |
| s1776 | 150 | linear | HDZ | hi | 374161/1000000 | s1744,s250,lo_HCZ |
| s1780 | 152 | linear | HCQ | lo | 65689/125000 | lo_CQR,s1699,s1752 |
| s1781 | 155 | linear | HDY | hi | 14809/31250 | lo_DYZ,s1776,s1656 |
| s1782 | 156 | linear | HDY | lo | 43087/200000 | s1657,s1522,lo_HYZ |
| s1783 | 158 | linear | HDQ | hi | 152009/250000 | hi_DQR,s1617,s1752 |
| s1785 | 159 | linear | HFZ | hi | 258541/1000000 | lo_FZP,s44,s1603 |
| s1786 | 160 | linear | CDY | lo | 9661/20000 | s1744,s1729,lo_DYZ |
| s1793 | 165 | linear | CYQ | lo | 74533/200000 | lo_CQR,s1724,lo_YQR |
| s1794 | 166 | linear | CZQ | lo | 38523/125000 | lo_CQR,s1702,lo_ZQR |
| s1795 | 167 | linear | CPQ | lo | 459529/1000000 | s1606,lo_CQR,s1753 |
| s1798 | 170 | linear | DFZ | lo | 195329/500000 | lo_DFP,s1721,lo_FZP |
| s1800 | 172 | linear | DYQ | lo | 4579/10000 | lo_DYZ,s1735,lo_YZQ |
| s1801 | 173 | linear | DYR | lo | 381873/1000000 | lo_DYZ,s1736,lo_YZR |
| s1802 | 174 | linear | DYQ | hi | 596559/1000000 | hi_DQR,s1555,lo_YQR |
| s1809 | 179 | support_z | HDZ | lo | 68451/250000 | s1798,hi_HDF |
| s1810 | 182 | linear | HCF | hi | 28057/50000 | s1706 |
| s1811 | 182 | linear | CDF | hi | 709687/1000000 | s1695 |
| s1815 | 189 | bary_lo | FYZ | hi | 11307/50000 | hi_OHD,s1782,s1728,lo_OHY,s1651,s1785,s1798 |
| s1818 | 193 | bary_lo | FYQ | hi | 727669/1000000 | s1755,lo_HFY,lo_OFY,lo_OHY,hi_OFQ,hi_HFQ |
| s1820 | 195 | bary_hi | OFY | hi | 2477/10000 | s1592,lo_HYZ,s1714,lo_OHY,s1755,s1717 |
| s1821 | 196 | bary_lo | DFY | lo | 3863/10000 | s1592,lo_HYZ,s1714,lo_OHY,s1764,lo_HDF,s1798 |
| s1823 | 197 | bary_hi | FYP | lo | 111369/1000000 | s1592,lo_HYZ,s1714,lo_OHY,s1720,lo_HFP,lo_FZP |
| s1828 | 200 | bary_lo | OCY | lo | 523/3125 | hi_OHQ,s1733,s1671,lo_OHY,s1754,lo_OCQ |
| s1832 | 206 | bary_hi | CYP | hi | 420619/1000000 | hi_OHQ,s1733,s1671,lo_OHY,s1558,s1601,s1795 |
| s1833 | 207 | bary_hi | DFY | hi | 611921/1000000 | hi_OHQ,s1733,s1671,lo_OHY,hi_ODF,hi_HDF,s1708 |
| s1835 | 211 | bary_lo | YPR | hi | 204893/500000 | hi_OHQ,s1733,s1671,lo_OHY,s1775,s1605,s1753 |
| s1837 | 214 | bary_hi | CDY | hi | 293283/500000 | s1562,s1619,s1614,lo_OHY,hi_OCD,s250,lo_CDR |
| s1838 | 215 | bary_lo | DYR | hi | 452237/1000000 | s1562,s1619,s1614,lo_OHY,s1564,s1617 |
| s1840 | 220 | bary_hi | OCP | hi | 28007/50000 | hi_ODF,lo_DFP,s1720,s1704,hi_OCD,hi_OCF |
| s1841 | 221 | bary_hi | OPQ | hi | 843457/1000000 | hi_ODF,lo_DFP,s1720,s1704,hi_ODQ,hi_OFQ |
| s1842 | 223 | bary_hi | YPQ | hi | 292269/500000 | hi_ODF,lo_DFP,s1720,s1704,s1671,s1802,s1818 |
| s1843 | 225 | bary_hi | HFZ | lo | 35981/200000 | s1632,s1721,lo_OZP,lo_ODZ,lo_OHF,lo_HDF,lo_HFP |
| s1844 | 230 | bary_lo | OHR | hi | 177099/250000 | s1770,lo_ZQR,lo_OQR,s1743,s1592,hi_OHQ |
| s1846 | 231 | bary_lo | ODR | hi | 452927/1000000 | s1770,lo_ZQR,lo_OQR,s1743,lo_ODZ,hi_ODQ |
| s1847 | 232 | bary_lo | OFR | hi | 133893/200000 | s1770,lo_ZQR,lo_OQR,s1743,s1651,hi_OFQ |
| s1848 | 233 | bary_lo | OYR | hi | 468377/1000000 | s1770,lo_ZQR,lo_OQR,s1743,s1652,s1768 |
| s1849 | 234 | bary_lo | OPR | hi | 6953/12500 | s1770,lo_ZQR,lo_OQR,s1743,s1653,s1841 |
| s1852 | 235 | bary_lo | HFR | hi | 544169/1000000 | s1770,lo_ZQR,lo_OQR,s1743,s1755,s1785,hi_HFQ |
| s1858 | 237 | bary_lo | DFR | lo | 290957/1000000 | s1770,lo_ZQR,lo_OQR,s1743,s1764,s1798,s1765 |
| s1859 | 239 | bary_hi | DQR | lo | 65837/500000 | s1770,lo_ZQR,lo_OQR,s1743,s1766,s1735 |
| s1860 | 241 | bary_hi | PQR | lo | 192363/1000000 | s1770,lo_ZQR,lo_OQR,s1743,s1774,s1749 |
| s1861 | 242 | bary_hi | OCZ | hi | 343321/1000000 | s1841,s1749,s1771,lo_OZP,s1840,hi_OCQ |
| s1862 | 243 | bary_hi | ODZ | hi | 20059/62500 | s1841,s1749,s1771,lo_OZP,s1632,s1766 |
| s1863 | 244 | bary_hi | OZQ | hi | 48609/100000 | s1841,s1749,s1771,lo_OZP,s1841 |
| s1873 | 248 | bary_lo | OHZ | hi | 22623/50000 | s1849,s1627,s1743,lo_OZP,s1598,s1844 |
| s1880 | 254 | bary_lo | ODP | lo | 433243/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s245,s1764 |
| s1881 | 256 | bary_lo | OYP | hi | 59799/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHY,hi_ODY,s1820 |
| s1882 | 257 | bary_hi | HCP | hi | 56661/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s250,s1810 |
| s1884 | 259 | bary_hi | HZP | hi | 112653/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1776,s1785 |
| s1886 | 261 | bary_hi | HPR | hi | 94163/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1617,s1852 |
| s1888 | 264 | bary_hi | DYP | lo | 1143/6250 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1782,s1821 |
| s1892 | 268 | bary_hi | OHR | lo | 52687/100000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1754,s245,s1760 |
| s1893 | 269 | bary_hi | OFR | lo | 269487/500000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1746,s1764,s1767 |
| s1894 | 270 | bary_hi | OYR | lo | 68273/250000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1828,s1728,s1671 |
| s1895 | 272 | bary_hi | OPR | lo | 93787/200000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1762,s1880,s1774 |
| s1896 | 273 | bary_lo | HCR | lo | 135017/500000 | hi_CDQ,s1859,lo_CQR,lo_CDR,lo_HCD,s1780 |
| s1897 | 274 | bary_lo | HDR | hi | 536337/1000000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s250,s1783 |
| s1898 | 275 | bary_hi | HFR | lo | 35919/125000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1695,lo_HDF,s1696 |
| s1899 | 276 | bary_lo | HYR | lo | 147441/1000000 | hi_CDQ,s1859,lo_CQR,lo_CDR,lo_HCY,s1782,s1733 |
| s1901 | 278 | bary_hi | CYR | lo | 189479/1000000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1786,s1793 |
| s1902 | 279 | bary_hi | CZR | lo | 124447/1000000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1744,s1794 |
| s1903 | 280 | bary_hi | CPR | lo | 17799/100000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1707,s1795 |
| s1904 | 281 | bary_hi | DFR | hi | 506751/1000000 | hi_CDQ,s1859,lo_CQR,lo_CDR,s1811,s1708 |
| s1907 | 284 | bary_hi | ZPR | lo | 155669/1000000 | hi_CDQ,s1859,lo_CQR,lo_CDR,lo_CZP,s1721,s1749 |
| s1913 | 292 | bary_hi | OHP | lo | 372209/1000000 | s1645,lo_FZP,s1721,lo_DFP,s245,lo_OHF,s1757 |
| s1914 | 293 | bary_hi | ODP | hi | 314383/500000 | s1645,lo_FZP,s1721,lo_DFP,hi_ODF,s1862 |
| s1917 | 296 | bary_hi | OPQ | hi | 421351/500000 | s1645,lo_FZP,s1721,lo_DFP,hi_ODQ,hi_OFQ,s1863 |
| s1918 | 297 | bary_hi | OPR | hi | 34619/62500 | s1645,lo_FZP,s1721,lo_DFP,s1846,s1847,s1773 |
| s1924 | 302 | bary_hi | OYZ | lo | 130631/1000000 | s1838,lo_YZR,s1736,lo_DYZ,s1728,s1894 |
| s1925 | 303 | bary_hi | CDZ | hi | 163097/500000 | s1838,lo_YZR,s1736,lo_DYZ,s1837,lo_CDR |
| s1926 | 304 | bary_hi | CYZ | lo | 138301/1000000 | s1838,lo_YZR,s1736,lo_DYZ,s1786,s1901 |
| s1928 | 305 | bary_hi | DFZ | hi | 58057/125000 | s1838,lo_YZR,s1736,lo_DYZ,s1833,s1904 |
| s1930 | 306 | bary_lo | DZR | hi | 266237/1000000 | s1838,lo_YZR,s1736,lo_DYZ,s1838 |
| s1933 | 309 | bary_lo | OFZ | hi | 291899/1000000 | s1835,s1907,lo_YZR,s1719,lo_OFY,s455,s1847 |
| s1934 | 310 | bary_lo | OYZ | hi | 25201/100000 | s1835,s1907,lo_YZR,s1719,s1881,s1848 |
| s1936 | 312 | bary_lo | OZR | lo | 42033/200000 | s1835,s1907,lo_YZR,s1719,s1894,s1895 |
| s1937 | 313 | bary_lo | HDZ | hi | 92447/250000 | s1835,s1907,lo_YZR,s1719,s1781,lo_HDP,s1897 |
| s1940 | 316 | bary_hi | DYZ | hi | 8519/62500 | s1835,s1907,lo_YZR,s1719,s1888,s1838 |
| s1942 | 317 | bary_lo | YZP | hi | 161117/1000000 | s1835,s1907,lo_YZR,s1719,s1835 |
| s1945 | 318 | bary_lo | ZPR | hi | 97489/500000 | s1835,s1907,lo_YZR,s1719,s1835 |
| s1946 | 0 | sum | OHC | lo | 4417/12500 | lo_HCY,s1828,lo_OHY |
| s1947 | 2 | sum | OHZ | lo | 316631/1000000 | lo_HYZ,lo_OHY,s1924 |
| s1949 | 3 | sum | OHQ | lo | 391493/500000 | s1752,s1892,lo_OQR |
| s1950 | 4 | sub | OYR | hi | 93591/200000 | s1844,s1899,lo_OHY |
| s1951 | 7 | sum | ODF | lo | 712063/1000000 | lo_DFP,s1880,s1720 |
| s1952 | 8 | sum | ODQ | lo | 106331/250000 | s1859,s1705,lo_OQR |
| s1955 | 10 | sum | OYQ | lo | 114773/250000 | lo_OQR,s1894,lo_YQR |
| s1956 | 11 | sum | OZQ | lo | 79233/200000 | lo_OQR,s1936,lo_ZQR |
| s1960 | 12 | sub | OZQ | hi | 97067/200000 | s1917,lo_OZP,s1749 |
| s1961 | 12 | sub | ZPQ | hi | 353537/1000000 | s1917,lo_OZP,s1956 |
| s1962 | 13 | sum | OPQ | lo | 377149/500000 | s1895,lo_OQR,s1860 |
| s1964 | 13 | sub | PQR | hi | 280767/1000000 | s1917,s1895,lo_OQR |
| s1966 | 15 | sum | HCQ | lo | 10523/20000 | lo_CQR,s1896,s1752 |
| s1967 | 17 | sum | CDY | lo | 24257/50000 | s1744,s1926,lo_DYZ |
| s1968 | 18 | sum | CDQ | lo | 158837/500000 | lo_CDR,lo_CQR,s1859 |
| s1971 | 19 | sum | CYQ | lo | 375479/1000000 | lo_CQR,s1901,lo_YQR |
| s1972 | 20 | sum | CZQ | lo | 310447/1000000 | lo_CQR,s1902,lo_ZQR |
| s1973 | 21 | sum | CPQ | lo | 463353/1000000 | s1903,lo_CQR,s1860 |
| s1974 | 22 | sum | DFY | lo | 387249/1000000 | lo_DFP,s1888,s1823 |
| s1975 | 26 | sum | YPR | lo | 370477/1000000 | s1719,lo_YZR,s1907 |
| s1977 | 32 | sumlo | OCD | lo | 118139/500000 | s1762,s1952,lo_OCQ,s1880,s1917 |
| s1978 | 33 | sumlo | ODY | lo | 371517/1000000 | s1951,s1955,s1952,lo_OFY,hi_OFQ |
| s1979 | 35 | sumlo | OYP | lo | 39401/250000 | s1720,s1955,lo_OFY,s1962,hi_OFQ |
| s1980 | 38 | sumlo | HCF | lo | 292213/1000000 | lo_HCD,lo_OHF,lo_HDF,s1946,hi_OHD |
| s1982 | 41 | sumlo | HFY | lo | 95793/1000000 | s1898,lo_OHY,s1899,lo_OHF,s1844 |
| s1983 | 42 | sumlo | HFQ | lo | 19417/62500 | s1980,s1741,s1966,lo_HDF,s250 |
| s1985 | 43 | sumlo | CFY | lo | 253229/1000000 | s1706,lo_HCY,s1967,s1980,s250 |
| s1987 | 46 | sumlo | HCR | lo | 8443/31250 | lo_CDR,s1966,lo_CQR,lo_HCD,hi_CDQ |
| s1989 | 47 | sumlo | CYR | lo | 38113/200000 | lo_CDR,s1971,s1967,lo_CQR,hi_CDQ |
| s1990 | 48 | sumlo | CZR | lo | 124949/1000000 | lo_CDR,s1972,s1744,lo_CQR,hi_CDQ |
| s1991 | 49 | sumlo | CPR | lo | 178837/1000000 | s1707,lo_CQR,lo_CDR,s1973,hi_CDQ |
| s1993 | 51 | sumlo | ODP | lo | 108503/250000 | lo_DFP,s245,lo_HDP,s1951,hi_HDF |
| s1994 | 52 | sumlo | ODR | lo | 26591/125000 | lo_CDR,s1978,s1801,s1977,s1837 |
| s1995 | 53 | diff | CDF | lo | 463241/1000000 | s1798,lo_HCD,s1925,hi_HDF,s1937 |
| s1996 | 54 | sumlo | CDP | lo | 35171/100000 | s1995,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s1997 | 55 | diffhi | DFQ | hi | 49407/100000 | s1811,s1783,s1968,lo_HDF,lo_HCD |
| s2002 | 63 | sumlo | HYP | lo | 30821/250000 | s1899,s1979,lo_OHY,s1975,s1950 |
| s2003 | 65 | sumlo | OYZ | lo | 1657/12500 | lo_DYZ,s1894,s1978,lo_YZR,s1838 |
| s2006 | 66 | sumlo | OFZ | lo | 51239/250000 | lo_FZP,s1947,s1843,lo_OZP,s1884 |
| s2007 | 67 | diffhi | HYZ | hi | 171231/1000000 | s1815,s1937,lo_DYZ,s1843,s1798 |
| s2008 | 70 | sumlo | ZPQ | lo | 136149/500000 | lo_CZP,s1735,s1972,s1721,s1925 |
| s2010 | 72 | sumlo | DZQ | lo | 68827/250000 | lo_DYZ,s2008,s1721,lo_YZQ,s1942 |
| s2011 | 73 | sumlo | DZR | lo | 51997/250000 | lo_DYZ,s1907,s1721,lo_YZR,s1942 |
| s2012 | 73 | sumlo | YZP | lo | 62933/500000 | lo_DYZ,s1907,s1721,lo_YZR,s1930 |
| s2013 | 75 | sumlo | OFP | lo | 7681/40000 | lo_FZP,s1913,lo_HFP,lo_OZP,s1884 |
| s2014 | 76 | diffhi | OCP | hi | 276397/500000 | s1832,s1918,s1991,s1979,s1975 |
| s2015 | 78 | sumlo | DZP | lo | 103949/500000 | lo_DFP,s1747,lo_FZP,lo_HDP,s44 |
| s2016 | 79 | sumlo | DQR | lo | 26851/200000 | s2010,lo_OQR,s1952,lo_ZQR,s1960 |
| s2018 | 82 | sumlo | OYR | lo | 278043/1000000 | s1895,lo_YQR,lo_OQR,s1975,s1964 |
| s2020 | 85 | balance_hi | HCQ | hi | 368903/500000 | s250,hi_OFQ,s1968,lo_OHF,s1741,s1746,s1951 |
| s2024 | 88 | balance_lo | CYZ | lo | 141973/1000000 | lo_YZQ,s1746,s1972,lo_OFY,s1971,s2006,hi_OFQ |
| s2025 | 89 | balance_lo | ODY | lo | 382063/1000000 | lo_HDF,s2003,s1798,lo_OHY,s1809,lo_OFY,s1785 |
| s2026 | 93 | balance_lo | FYQ | lo | 242559/500000 | s1974,s1966,s1800,s1980,s1765,lo_HCY,s250 |
| s2030 | 94 | balance_lo | HYQ | lo | 225593/1000000 | s1973,lo_OHY,s1962,lo_HCY,lo_OCQ,s2002,s2014 |
| s2032 | 95 | balance_lo | HDY | lo | 1423/6250 | s1951,s1899,s1858,lo_OHY,s1994,s1982,s1847 |
| s2033 | 96 | balance_hi | CDF | hi | 350673/500000 | hi_OFQ,s250,lo_OHF,s1968,s1983,s1977,s1949 |
| s2035 | 100 | balance_lo | DZQ | lo | 56291/200000 | lo_DYZ,s1973,lo_YZQ,s1996,s1800,lo_CZP,s1832 |
| s2036 | 105 | balance_lo | OCY | lo | 5503/31250 | s1946,lo_DYZ,lo_HCY,lo_ODZ,lo_OHY,s1744,s1937 |
| s2039 | 109 | balance_lo | FYZ | lo | 76191/500000 | s1995,lo_HYZ,lo_HDF,s2024,s1980,lo_DYZ,s250 |
| s2040 | 110 | balance_lo | HDQ | lo | 296517/1000000 | lo_HDF,lo_YZQ,s1765,lo_HYZ,s1983,lo_DYZ,s1815 |
| s2041 | 111 | balance_lo | OCZ | lo | 19219/100000 | lo_CZP,s1955,lo_OZP,s1971,s1762,lo_YZQ,s1842 |
| s2042 | 112 | balance_lo | ODZ | lo | 98169/1000000 | s1951,lo_YZQ,s1798,s1955,s1933,s1802,s1818 |
| s2043 | 113 | balance_lo | OZR | lo | 42333/200000 | lo_OZP,lo_YQR,s1907,s1955,s1895,lo_YZQ,s1842 |
| s2045 | 115 | balance_lo | CDZ | lo | 65791/250000 | s2015,s1989,lo_CZP,s1801,s1996,lo_YZR,s1835 |
| s2047 | 116 | balance_lo | OCF | lo | 381637/1000000 | s1946,lo_FZP,s1980,lo_OZP,lo_OHF,lo_CZP,s1884 |
| s2048 | 118 | balance_hi | OHF | hi | 44263/100000 | hi_OFQ,s1884,s1983,lo_OZP,s1949,lo_FZP,s2008 |
| s2049 | 118 | balance_lo | HZP | lo | 90067/500000 | lo_OHF,s2008,s1983,lo_OZP,s1949,lo_FZP,hi_OFQ |
| s2050 | 119 | balance_lo | OCD | lo | 125069/500000 | s1968,lo_OZP,s1952,lo_CZP,lo_OCQ,s2015,s1961 |
| s2052 | 121 | balance_lo | ZPQ | lo | 34231/125000 | s1800,lo_CZP,s1971,s2015,s1968,s2012,s1837 |
| s2054 | 123 | balance_lo | FQR | lo | 195201/1000000 | s1995,s1752,lo_HDF,lo_CQR,s1980,s2016,s250 |
| s2055 | 124 | balance_lo | HQR | lo | 83709/500000 | lo_HCD,lo_YQR,s2032,lo_CQR,lo_HCY,s2016,s1837 |
| s2056 | 125 | balance_lo | PQR | lo | 3091/15625 | s2015,lo_CQR,lo_CZP,s2016,s1996,lo_ZQR,s1925 |
| s2057 | 126 | linear | OHC | lo | 22631/62500 | lo_HCY,s2036,lo_OHY |
| s2058 | 130 | linear | OHF | lo | 281793/1000000 | s1982,lo_OFY,lo_OHY |
| s2060 | 132 | linear | HFQ | hi | 80753/125000 | hi_OFQ,s2048,s1949 |
| s2065 | 135 | linear | OHQ | lo | 98411/125000 | s2055,s1892,lo_OQR |
| s2066 | 136 | linear | OCD | hi | 285673/500000 | s1925,s1861,s2042 |
| s2067 | 137 | linear | CFQ | hi | 790743/1000000 | s2047,hi_OCQ,hi_OFQ |
| s2068 | 138 | linear | OCP | lo | 37819/100000 | lo_CZP,s2041,lo_OZP |
| s2070 | 140 | linear | ODF | lo | 719037/1000000 | lo_DFP,s1993,s2013 |
| s2071 | 141 | linear | DFQ | lo | 157981/1000000 | s2070,s1952,hi_OFQ |
| s2072 | 143 | linear | ODQ | lo | 439983/1000000 | s2016,s1994,lo_OQR |
| s2073 | 144 | linear | OFQ | lo | 33087/40000 | s2054,s1893,lo_OQR |
| s2074 | 145 | linear | OYQ | hi | 128869/200000 | s1934,s1960,lo_YZQ |
| s2076 | 146 | linear | OYQ | lo | 464043/1000000 | lo_OQR,s2018,lo_YQR |
| s2078 | 147 | linear | OPQ | lo | 763013/1000000 | lo_OZP,s1956,s2052 |
| s2079 | 147 | linear | OZQ | hi | 237927/500000 | s1917,lo_OZP,s2052 |
| s2080 | 148 | linear | OZQ | lo | 79533/200000 | lo_OQR,s2043,lo_ZQR |
| s2082 | 148 | linear | OZR | hi | 144927/500000 | lo_OQR,s2079,lo_ZQR |
| s2083 | 149 | linear | OPR | hi | 275939/500000 | s1917,lo_OQR,s2056 |
| s2084 | 150 | linear | HDZ | hi | 91209/250000 | s2045,s250,lo_HCZ |
| s2089 | 152 | linear | HCQ | lo | 265297/500000 | lo_CQR,s1987,s2055 |
| s2090 | 155 | linear | HDY | hi | 443067/1000000 | lo_DYZ,s2084,s2007 |
| s2091 | 156 | linear | HDY | lo | 461/2000 | s1940,s1809,lo_HYZ |
| s2092 | 158 | linear | HDQ | hi | 602919/1000000 | hi_DQR,s1897,s2055 |
| s2093 | 159 | linear | HFZ | hi | 126153/500000 | lo_FZP,s44,s1884 |
| s2095 | 160 | linear | CDY | lo | 498137/1000000 | s2045,s2024,lo_DYZ |
| s2099 | 164 | linear | CYP | lo | 360839/1000000 | s2024,lo_CZP,s2012 |
| s2100 | 165 | linear | CYQ | lo | 75313/200000 | lo_CQR,s1989,lo_YQR |
| s2101 | 166 | linear | CZQ | lo | 310949/1000000 | lo_CQR,s1990,lo_ZQR |
| s2102 | 167 | linear | CPQ | lo | 469661/1000000 | s1991,lo_CQR,s2056 |
| s2103 | 168 | linear | DFY | lo | 25421/62500 | s1798,s1940,s2039 |
| s2104 | 169 | linear | DFY | hi | 149399/250000 | s1928,lo_DYZ,s1815 |
| s2105 | 170 | linear | DFZ | lo | 196949/500000 | lo_DFP,s2015,lo_FZP |
| s2106 | 171 | linear | DYP | lo | 9873/50000 | s1940,s2015,s2012 |
| s2108 | 172 | linear | DYQ | lo | 93491/200000 | lo_DYZ,s2035,lo_YZQ |
| s2109 | 173 | linear | DYR | lo | 98497/250000 | lo_DYZ,s2011,lo_YZR |
| s2110 | 174 | linear | DYQ | hi | 593237/1000000 | hi_DQR,s1838,lo_YQR |
| s2112 | 175 | linear | DPR | lo | 55227/250000 | s2015,s2011,s1945 |
| s2118 | 179 | support_z | HDZ | lo | 11043/40000 | s2105,hi_HDF |
| s2120 | 182 | linear | HCF | hi | 536759/1000000 | s1995 |
| s2126 | 193 | bary_lo | FYQ | hi | 707623/1000000 | s2048,s1982,lo_OFY,lo_OHY,hi_OFQ,s2060 |
| s2134 | 200 | bary_lo | OCY | lo | 176677/1000000 | hi_OHQ,s2030,s2076,lo_OHY,s2057,lo_OCQ |
| s2140 | 206 | bary_hi | CYP | hi | 411531/1000000 | hi_OHQ,s2030,s2076,lo_OHY,s2014,s1882,s2102 |
| s2142 | 211 | bary_lo | YPR | hi | 100211/250000 | hi_OHQ,s2030,s2076,lo_OHY,s2083,s1886,s2056 |
| s2145 | 213 | bary_hi | HFY | lo | 48187/500000 | s1844,s1899,s2018,lo_OHY,s2058,s1898 |
| s2146 | 214 | bary_hi | CDY | hi | 582989/1000000 | s1844,s1899,s2018,lo_OHY,s2066,s250,lo_CDR |
| s2147 | 215 | bary_lo | DYR | hi | 89713/200000 | s1844,s1899,s2018,lo_OHY,s1846,s1897 |
| s2149 | 221 | bary_hi | OPQ | hi | 841959/1000000 | hi_ODF,lo_DFP,s2013,s1993,hi_ODQ,hi_OFQ |
| s2150 | 223 | bary_hi | YPQ | hi | 28383/50000 | hi_ODF,lo_DFP,s2013,s1993,s2076,s2110,s2126 |
| s2151 | 225 | bary_hi | HFZ | lo | 91467/500000 | s1914,s2015,lo_OZP,s2042,s2058,lo_HDF,lo_HFP |
| s2153 | 230 | bary_lo | OHR | hi | 43597/62500 | s2079,lo_ZQR,lo_OQR,s2043,s1873,hi_OHQ |
| s2155 | 231 | bary_lo | ODR | hi | 5551/12500 | s2079,lo_ZQR,lo_OQR,s2043,s2042,hi_ODQ |
| s2156 | 232 | bary_lo | OFR | hi | 164469/250000 | s2079,lo_ZQR,lo_OQR,s2043,s1933,hi_OFQ |
| s2157 | 233 | bary_lo | OYR | hi | 441739/1000000 | s2079,lo_ZQR,lo_OQR,s2043,s1934,s2074 |
| s2166 | 237 | bary_lo | DFR | lo | 313739/1000000 | s2079,lo_ZQR,lo_OQR,s2043,s2070,s2105,s2071 |
| s2167 | 239 | bary_hi | DQR | lo | 35249/250000 | s2079,lo_ZQR,lo_OQR,s2043,s2072,s2035 |
| s2168 | 241 | bary_hi | PQR | lo | 101321/500000 | s2079,lo_ZQR,lo_OQR,s2043,s2078,s2052 |
| s2171 | 244 | bary_hi | OZQ | hi | 475111/1000000 | s2149,s2052,s2080,lo_OZP,s2149 |
| s2175 | 246 | bary_lo | OCR | lo | 9357/100000 | s2149,s2168,lo_OQR,s1895,s2068,lo_OCQ |
| s2186 | 249 | bary_hi | CZQ | hi | 414303/1000000 | s250,s2045,s2118,lo_HCZ,s2020,hi_CDQ |
| s2188 | 254 | bary_lo | ODP | lo | 109033/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s245,s2070 |
| s2189 | 255 | bary_lo | OFP | hi | 70301/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s2058,hi_ODF |
| s2191 | 257 | bary_hi | HCP | hi | 222939/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s250,s2120 |
| s2193 | 259 | bary_hi | HZP | hi | 43951/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s2084,s2093 |
| s2199 | 268 | bary_hi | OHR | lo | 106921/200000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s2057,s245,s2065 |
| s2200 | 269 | bary_hi | OFR | lo | 555001/1000000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s2047,s2070,s2073 |
| s2201 | 270 | bary_hi | OYR | lo | 142893/500000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s2134,s2025,s2076 |
| s2202 | 272 | bary_hi | OPR | lo | 47623/100000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s2068,s2188,s2078 |
| s2203 | 273 | bary_lo | HCR | lo | 6779/25000 | hi_CDQ,s2167,lo_CQR,lo_CDR,lo_HCD,s2089 |
| s2204 | 274 | bary_lo | HDR | hi | 133801/250000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s250,s2092 |
| s2206 | 276 | bary_lo | HYR | lo | 76403/500000 | hi_CDQ,s2167,lo_CQR,lo_CDR,lo_HCY,s2091,s2030 |
| s2208 | 278 | bary_hi | CYR | lo | 48421/250000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s2095,s2100 |
| s2209 | 279 | bary_hi | CZR | lo | 1017/8000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s2045,s2101 |
| s2210 | 280 | bary_hi | CPR | lo | 291/1600 | hi_CDQ,s2167,lo_CQR,lo_CDR,s1996,s2102 |
| s2211 | 281 | bary_hi | DFR | hi | 62519/125000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s2033,s1997 |
| s2213 | 283 | bary_lo | FYR | lo | 169283/500000 | hi_CDQ,s2167,lo_CQR,lo_CDR,s1985,s2103,s2026 |
| s2215 | 284 | bary_hi | ZPR | lo | 79243/500000 | hi_CDQ,s2167,lo_CQR,lo_CDR,lo_CZP,s2015,s2052 |
| s2225 | 296 | bary_hi | OPQ | hi | 419393/500000 | s1928,lo_FZP,s2015,lo_DFP,hi_ODQ,hi_OFQ,s2171 |
| s2226 | 297 | bary_hi | OPR | hi | 541377/1000000 | s1928,lo_FZP,s2015,lo_DFP,s2155,s2156,s2082 |
| s2227 | 299 | bary_hi | CPQ | hi | 160283/250000 | s1928,lo_FZP,s2015,lo_DFP,hi_CDQ,s2067,s2186 |
| s2232 | 302 | bary_hi | OYZ | lo | 138463/1000000 | s2147,lo_YZR,s2011,lo_DYZ,s2025,s2201 |
| s2233 | 303 | bary_hi | CDZ | hi | 20123/62500 | s2147,lo_YZR,s2011,lo_DYZ,s2146,lo_CDR |
| s2236 | 305 | bary_hi | DFZ | hi | 90699/200000 | s2147,lo_YZR,s2011,lo_DYZ,s2104,s2211 |
| s2239 | 306 | bary_lo | DZR | hi | 52513/200000 | s2147,lo_YZR,s2011,lo_DYZ,s2147 |
| s2243 | 308 | bary_lo | OCZ | lo | 192463/1000000 | s2142,s2215,lo_YZR,s2012,s2134,s2068,s2175 |
| s2244 | 309 | bary_lo | OFZ | hi | 273603/1000000 | s2142,s2215,lo_YZR,s2012,lo_OFY,s2189,s2156 |
| s2247 | 312 | bary_lo | OZR | lo | 55871/250000 | s2142,s2215,lo_YZR,s2012,s2201,s2202 |
| s2248 | 313 | bary_lo | HDZ | hi | 14121/40000 | s2142,s2215,lo_YZR,s2012,s2090,lo_HDP,s2204 |
| s2250 | 315 | bary_hi | CYZ | lo | 28907/200000 | s2142,s2215,lo_YZR,s2012,s2099,s2208 |
| s2253 | 316 | bary_hi | DYZ | hi | 121327/1000000 | s2142,s2215,lo_YZR,s2012,s2106,s2147 |
| s2255 | 317 | bary_lo | YZP | hi | 74679/500000 | s2142,s2215,lo_YZR,s2012,s2142 |
| s2259 | 318 | bary_lo | ZPR | hi | 90989/500000 | s2142,s2215,lo_YZR,s2012,s2142 |
| s2260 | 0 | sum | OHC | lo | 362677/1000000 | lo_HCY,s2134,lo_OHY |
| s2261 | 1 | sum | OHF | lo | 141187/500000 | s2145,lo_OFY,lo_OHY |
| s2262 | 2 | sum | OHZ | lo | 324463/1000000 | lo_HYZ,lo_OHY,s2232 |
| s2264 | 3 | sum | OHQ | lo | 795023/1000000 | s2055,s2199,lo_OQR |
| s2265 | 5 | sum | OCP | lo | 378463/1000000 | lo_CZP,s2243,lo_OZP |
| s2266 | 7 | sum | ODF | lo | 721157/1000000 | lo_DFP,s2188,s2013 |
| s2267 | 8 | sum | ODQ | lo | 111681/250000 | s2167,s1994,lo_OQR |
| s2270 | 10 | sum | OYQ | lo | 235893/500000 | lo_OQR,s2201,lo_YQR |
| s2271 | 11 | sum | OZQ | lo | 102371/250000 | lo_OQR,s2247,lo_ZQR |
| s2274 | 12 | sum | OPQ | lo | 194083/250000 | lo_OZP,s2271,s2052 |
| s2276 | 12 | sub | ZPQ | hi | 168151/500000 | s2225,lo_OZP,s2271 |
| s2277 | 13 | sub | PQR | hi | 67389/250000 | s2225,s2202,lo_OQR |
| s2279 | 15 | sum | HCQ | lo | 265789/500000 | lo_CQR,s2203,s2055 |
| s2280 | 17 | sum | CDY | lo | 500699/1000000 | s2045,s2250,lo_DYZ |
| s2281 | 18 | sum | CDQ | lo | 81749/250000 | lo_CDR,lo_CQR,s2167 |
| s2284 | 19 | sum | CYQ | lo | 94921/250000 | lo_CQR,s2208,lo_YQR |
| s2285 | 20 | sum | CZQ | lo | 501/1600 | lo_CQR,s2209,lo_ZQR |
| s2286 | 21 | sum | CPQ | lo | 477517/1000000 | s2210,lo_CQR,s2168 |
| s2287 | 26 | sum | YPR | lo | 47169/125000 | s2012,lo_YZR,s2215 |
| s2289 | 31 | sumlo | OHP | lo | 75403/200000 | s2013,s2264,s2261,s2274,hi_OFQ |
| s2293 | 33 | sumlo | ODY | lo | 48381/125000 | s2266,s2270,s2267,lo_OFY,hi_OFQ |
| s2294 | 35 | sumlo | OYP | lo | 165041/1000000 | s2013,s2270,lo_OFY,s2274,hi_OFQ |
| s2295 | 37 | sumlo | OYR | lo | 3577/12500 | s2202,s2270,lo_OQR,s2294,s2225 |
| s2296 | 38 | sumlo | HCF | lo | 148577/500000 | lo_HCD,s2261,lo_HDF,s2260,hi_OHD |
| s2299 | 42 | sumlo | HFQ | lo | 327907/1000000 | s2296,s2040,s2279,lo_HDF,s250 |
| s2305 | 47 | sumlo | CYR | lo | 194941/1000000 | lo_CDR,s2284,s2280,lo_CQR,hi_CDQ |
| s2307 | 49 | sumlo | CPR | lo | 91807/500000 | s1996,lo_CQR,lo_CDR,s2286,hi_CDQ |
| s2310 | 52 | sumlo | ODR | lo | 230787/1000000 | lo_CDR,s2293,s2109,s2050,s2146 |
| s2312 | 53 | diff | CDF | lo | 49527/100000 | s2105,lo_HCD,s2233,hi_HDF,s2248 |
| s2313 | 54 | sumlo | CDP | lo | 90361/250000 | s2312,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s2316 | 61 | sumlo | HFP | lo | 9473/100000 | lo_DFP,s2151,lo_FZP,lo_HDF,s2236 |
| s2321 | 62 | sumlo | HFY | lo | 103449/1000000 | s2213,lo_OHY,s2206,lo_OFY,s2157 |
| s2323 | 63 | sumlo | HYP | lo | 27307/200000 | s2206,s2294,lo_OHY,s2287,s2157 |
| s2326 | 65 | sumlo | OYZ | lo | 69787/500000 | lo_DYZ,s2295,s2293,lo_YZR,s2147 |
| s2331 | 66 | sumlo | OFZ | lo | 214729/1000000 | lo_FZP,s2262,s2151,lo_OZP,s2193 |
| s2336 | 68 | diffhi | CYZ | hi | 94853/500000 | s2233,s2255,lo_CZP,lo_DYZ,s2015 |
| s2337 | 69 | sumlo | DZQ | lo | 56503/200000 | s2045,lo_YZQ,s2285,lo_DYZ,s2336 |
| s2339 | 70 | sumlo | ZPQ | lo | 17737/62500 | lo_CZP,s2337,s2285,s2015,s2233 |
| s2341 | 70 | diffhi | DZP | hi | 261891/1000000 | s2233,s2276,lo_CZP,s2337,s2285 |
| s2342 | 71 | diffhi | CZR | hi | 94393/500000 | s2233,s2259,lo_CZP,s2011,s2015 |
| s2343 | 72 | sumlo | DZQ | lo | 153079/500000 | lo_DYZ,s2339,s2015,lo_YZQ,s2255 |
| s2344 | 73 | sumlo | DZR | lo | 114067/500000 | lo_DYZ,s2215,s2015,lo_YZR,s2255 |
| s2345 | 73 | sumlo | YZP | lo | 32443/250000 | lo_DYZ,s2215,s2015,lo_YZR,s2239 |
| s2346 | 74 | sumlo | ODP | lo | 220503/500000 | lo_DFP,s2289,lo_HDP,s2013,s44 |
| s2347 | 75 | sumlo | OFP | lo | 199641/1000000 | lo_FZP,s2289,s2316,lo_OZP,s2193 |
| s2349 | 76 | diffhi | OCP | hi | 510107/1000000 | s2140,s2226,s2307,s2294,s2287 |
| s2351 | 78 | sumlo | DZP | lo | 105839/500000 | lo_DFP,s2049,lo_FZP,lo_HDP,s44 |
| s2352 | 78 | sumlo | HFP | lo | 3031/31250 | lo_DFP,s2049,lo_FZP,lo_HDP,s2341 |
| s2358 | 82 | sumlo | OYR | lo | 58899/200000 | s2202,lo_YQR,lo_OQR,s2287,s2277 |
| s2361 | 84 | sumlo | DQR | lo | 158197/1000000 | lo_CDR,lo_ZQR,lo_CQR,s2344,s2342 |
| s2367 | 88 | balance_lo | CYZ | lo | 463/3125 | lo_YZQ,s2047,s2285,lo_OFY,s2284,s2331,hi_OFQ |
| s2369 | 89 | balance_lo | ODY | lo | 401293/1000000 | lo_HDF,s2326,s2105,lo_OHY,s2118,lo_OFY,s2093 |
| s2378 | 94 | balance_lo | HYQ | lo | 253487/1000000 | s2286,lo_OHY,s2274,lo_HCY,lo_OCQ,s2323,s2349 |
| s2381 | 95 | balance_lo | HDY | lo | 124073/500000 | s2266,s2206,s2166,lo_OHY,s2310,s2321,s2156 |
| s2382 | 96 | balance_hi | CDF | hi | 675229/1000000 | hi_OFQ,s250,s2261,s2281,s2299,s2050,s2264 |
| s2389 | 106 | balance_lo | ODZ | lo | 66867/500000 | lo_OFY,s2343,s2270,s2105,hi_OFQ,s2253,s2126 |
| s2392 | 108 | balance_lo | ODR | lo | 238039/1000000 | s2265,s2361,s2274,lo_CDR,lo_OCQ,s2112,s2227 |
| s2400 | 113 | balance_lo | OZR | lo | 8999/40000 | lo_OZP,lo_YQR,s2215,s2270,s2202,lo_YZQ,s2150 |
| s2404 | 115 | balance_lo | CDZ | lo | 69553/250000 | s2351,s2305,lo_CZP,s2109,s2313,lo_YZR,s2142 |
| s2407 | 118 | balance_hi | OHF | hi | 49477/125000 | hi_OFQ,s2193,s2299,lo_OZP,s2264,lo_FZP,s2339 |
| s2416 | 121 | balance_lo | ZPQ | lo | 142609/500000 | s2108,lo_CZP,s2284,s2351,s2281,s2345,s2146 |
| s2424 | 123 | balance_lo | FQR | lo | 216189/1000000 | s2312,s2055,lo_HDF,lo_CQR,s2296,s2361,s250 |
| s2426 | 125 | balance_lo | PQR | lo | 5281/25000 | s2351,lo_CQR,lo_CZP,s2361,s2313,lo_ZQR,s2233 |
| s2429 | 129 | linear | OHD | hi | 994717/1000000 | s2204,s2392,s2153 |
| s2433 | 132 | linear | HFQ | hi | 587173/1000000 | hi_OFQ,s2407,s2264 |
| s2444 | 139 | linear | ODF | lo | 742361/1000000 | s2105,s2389,s2331 |
| s2447 | 142 | linear | ODF | hi | 919989/1000000 | s2211,s2392,s2156 |
| s2448 | 142 | linear | ODR | hi | 415667/1000000 | s2211,s2444,s2156 |
| s2449 | 142 | linear | DFR | lo | 80631/250000 | s2444,s2392,s2156 |
| s2450 | 143 | linear | ODQ | lo | 122309/250000 | s2361,s2392,lo_OQR |
| s2451 | 144 | linear | OFQ | lo | 86419/100000 | s2424,s2200,lo_OQR |
| s2455 | 146 | linear | OYQ | lo | 96099/200000 | lo_OQR,s2358,lo_YQR |
| s2458 | 147 | linear | OZQ | hi | 57571/125000 | s2225,lo_OZP,s2416 |
| s2477 | 153 | linear | DFP | hi | 14501/125000 | hi_HDF,lo_HDP,s2352 |
| s2478 | 154 | linear | HFR | hi | 12967/25000 | s2449,hi_HDF,s2204 |
| s2482 | 159 | linear | HFZ | hi | 49351/200000 | lo_FZP,s44,s2193 |
| s2485 | 160 | linear | CDY | lo | 129843/250000 | s2404,s2367,lo_DYZ |
| s2491 | 165 | linear | CYQ | lo | 380941/1000000 | lo_CQR,s2305,lo_YQR |
| s2494 | 167 | linear | CPQ | lo | 243927/500000 | s2307,lo_CQR,s2426 |
| s2498 | 170 | linear | DFZ | lo | 198839/500000 | lo_DFP,s2351,lo_FZP |
| s2523 | 189 | bary_lo | FYZ | hi | 50003/250000 | s2429,s2381,s2369,lo_OHY,s2244,s2482,s2498 |
| s2527 | 192 | bary_hi | DFY | hi | 55957/100000 | s2407,s2321,lo_OFY,lo_OHY,s2447,hi_HDF |
| s2529 | 193 | bary_lo | FYQ | hi | 330413/500000 | s2407,s2321,lo_OFY,lo_OHY,hi_OFQ,s2433 |
| s2530 | 194 | bary_lo | FYR | hi | 235299/500000 | s2407,s2321,lo_OFY,lo_OHY,s2156,s2478 |
| s2536 | 201 | bary_hi | OFY | hi | 89151/500000 | hi_OHQ,s2378,s2455,lo_OHY,s2407,s2451 |
| s2544 | 206 | bary_hi | CYP | hi | 77287/200000 | hi_OHQ,s2378,s2455,lo_OHY,s2349,s2191,s2494 |
| s2549 | 215 | bary_lo | DYR | hi | 437663/1000000 | s2153,s2206,s2358,lo_OHY,s2448,s2204 |
| s2556 | 224 | bary_hi | YPR | hi | 38611/100000 | s2447,lo_DFP,s2347,s2346,s2358,s2549,s2530 |
| s2571 | 239 | bary_hi | DQR | lo | 160609/1000000 | s2458,lo_ZQR,lo_OQR,s2400,s2450,s2343 |
| s2572 | 240 | bary_hi | FYR | hi | 470343/1000000 | s2458,lo_ZQR,lo_OQR,s2400,s2536,s2523,s2529 |
| s2630 | 278 | bary_hi | CYR | lo | 39871/200000 | hi_CDQ,s2571,lo_CQR,lo_CDR,s2485,s2491 |
| s2637 | 284 | bary_hi | ZPR | lo | 161841/1000000 | hi_CDQ,s2571,lo_CQR,lo_CDR,lo_CZP,s2351,s2416 |
| s2643 | 285 | bary_hi | DFZ | hi | 108247/250000 | s2544,s2345,lo_CZP,s2367,s2382,s2527,s2477 |
| s2649 | 288 | bary_hi | YZR | hi | 96579/1000000 | s2544,s2345,lo_CZP,s2367,s2630,s2556 |
| s2671 | 300 | bary_hi | YPR | hi | 76609/200000 | s2643,lo_FZP,s2351,lo_DFP,s2549,s2572,s2649 |

## Conclusion

{"kind":"bary_budget","relation":307,"value":"-49/31250","sources":["s2671","s2637","lo_YZR","s2345"]}
