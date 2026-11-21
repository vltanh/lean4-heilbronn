# Leaf rppmmpmpmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"QYZ":-1,"OFY":-1}

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
| 26 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 27 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | plu | ["OHDZP","ODP",1] |
| 29 | plu | ["OHDPR","OPR",-1] |
| 30 | plu | ["OHFYP","OFP",-1] |
| 31 | plu | ["OHFZP","OFZ",-1] |
| 32 | plu | ["OHYZP","OYZ",-1] |
| 33 | plu | ["YOHFZ","YFZ",-1] |
| 34 | plu | ["YOHFP","YFP",-1] |
| 35 | plu | ["ZOHDP","ZDP",1] |
| 36 | plu | ["ZOHYP","ZYP",-1] |
| 37 | plu | ["ZOCPQ","ZPQ",-1] |
| 38 | plu | ["ZOCPR","ZPR",-1] |
| 39 | plu | ["QOYZP","QYP",-1] |
| 40 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 41 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 42 | mesh | ["OHDPYZ",1] |
| 43 | mesh | ["ODFPZY",-1] |
| 44 | interior_line | ["YP","R","CDQ","R",-1] |
| 45 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 46 | plu | ["YOZQR","YZR",-1] |
| 47 | plu | ["QOHYR","QHR",1] |
| 48 | plu | ["QOFYR","QFR",1] |
| 49 | plu | ["QOYZR","QZR",1] |
| 50 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 823/1000 | ["cost","YZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_ODQ | ODQ | lo | 279/1000 | ["cost","R"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YR"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","R"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OPQ | OPQ | lo | 347/500 | ["cost","ZR"] |
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
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 279/1000 | ["cost","Z"] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","R"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 279/1000 | ["cost","R"] |
| lo_CPQ | CPQ | lo | 279/1000 | ["cost","R"] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
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
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OYQ | OYQ | hi | 440351/635000 | "C054" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |
| hi_CPQ | CPQ | hi | 541235929/721000000 | "C058" |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 2 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 3 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 4 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 5 | ["fan","ODY","DYZ","ODZ","OYZ"] | ["fan","ODY","Z"] |
| 6 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 7 | ["fan","OFP","FYP","OFY","OYP"] | ["fan","OFP","Y"] |
| 8 | ["fan","OFQ","FYQ","OFY","OYQ"] | ["fan","OFQ","Y"] |
| 9 | ["fan","OFQ","FQR","OFR","OQR"] | ["fan","OFQ","R"] |
| 10 | ["fan","OFR","FYR","OFY","OYR"] | ["fan","OFR","Y"] |
| 11 | ["fan","OYQ","OQR","OYR","YQR"] | ["fan","OYQ","R"] |
| 12 | ["fan","OZQ","OQR","OZR","ZQR"] | ["fan","OZQ","R"] |
| 13 | ["fan","OPQ","OZP","OZQ","ZPQ"] | ["fan","OPQ","Z"] |
| 14 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 15 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 16 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 17 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 18 | ["fan","CFP","CFZ","CZP","FZP"] | ["fan","CFP","Z"] |
| 19 | ["fan","CFQ","CFR","CQR","FQR"] | ["fan","CFQ","R"] |
| 20 | ["fan","CYP","CYZ","CZP","YZP"] | ["fan","CYP","Z"] |
| 21 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 22 | ["fan","CZQ","CQR","CZR","ZQR"] | ["fan","CZQ","R"] |
| 23 | ["fan","CPQ","CPR","CQR","PQR"] | ["fan","CPQ","R"] |
| 24 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 25 | ["fan","DYQ","DYZ","DZQ","YZQ"] | ["fan","DYQ","Z"] |
| 26 | ["fan","DYR","DYZ","DZR","YZR"] | ["fan","DYR","Z"] |
| 27 | ["fan","YPQ","YZP","YZQ","ZPQ"] | ["fan","YPQ","Z"] |
| 28 | ["fan","YPR","YZP","YZR","ZPR"] | ["fan","YPR","Z"] |
| 29 | ["plu","ODF","OHY","ODY","OHF","OFY","OHD"] | ["plu","OHDFY"] |
| 30 | ["plu","OCY","ODF","OCD","OFY","OCF","ODY"] | ["plu","OCDFY"] |
| 31 | ["plu","OCD","OFQ","OCF","ODQ","OCQ","ODF"] | ["plu","OCDFQ"] |
| 32 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 33 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 34 | ["plu","CFQ","OCD","CDF","OCQ","CDQ","OCF"] | ["plu","CODFQ"] |
| 35 | ["plu","CFQ","OCZ","CFZ","OCQ","CZQ","OCF"] | ["plu","COFZQ"] |
| 36 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 37 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 38 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 39 | ["plu","CDY","CFQ","CDF","CYQ","CDQ","CFY"] | ["plu","CDFYQ"] |
| 40 | ["plu","CDQ","CFR","CDF","CQR","CDR","CFQ"] | ["plu","CDFQR"] |
| 41 | ["plu","CDQ","CPR","CDP","CQR","CDR","CPQ"] | ["plu","CDPQR"] |
| 42 | ["plu","DFP","OHD","HDF","ODP","HDP","ODF"] | ["plu","DOHFP"] |
| 43 | ["plu","CDZ","ODF","CDF","ODZ","DFZ","OCD"] | ["plu","DOCFZ"] |
| 44 | ["plu","CDP","ODF","CDF","ODP","DFP","OCD"] | ["plu","DOCFP"] |
| 45 | ["plu","CDF","ODR","CDR","ODF","DFR","OCD"] | ["plu","DOCFR"] |
| 46 | ["plu","HFQ","ODF","DFQ","OHF","HDF","OFQ"] | ["plu","FOHDQ"] |
| 47 | ["plu","CDF","OFP","CFP","ODF","DFP","OCF"] | ["plu","FOCDP"] |
| 48 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 49 | ["plu","FYQ","OHY","HFY","OYQ","HYQ","OFY"] | ["plu","YOHFQ"] |
| 50 | ["plu","FYR","OHY","HFY","OYR","HYR","OFY"] | ["plu","YOHFR"] |
| 51 | ["plu","FYQ","OCY","CFY","OYQ","CYQ","OFY"] | ["plu","YOCFQ"] |
| 52 | ["plu","DYQ","OYZ","DYZ","OYQ","ODY","YZQ"] | ["plu","YODZQ"] |
| 53 | ["plu","CDY","HYQ","CYQ","HDY","DYQ","HCY"] | ["plu","YHCDQ"] |
| 54 | ["plu","FYR","HYP","FYP","HYR","HFY","YPR"] | ["plu","YHFPR"] |
| 55 | ["plu","CYZ","YPQ","CYP","YZQ","CYQ","YZP"] | ["plu","YCZPQ"] |
| 56 | ["plu","OCZ","ZPQ","CZP","OZQ","CZQ","OZP"] | ["plu","ZOCPQ"] |
| 57 | ["plu","FZP","OCP","CFP","OZP","CZP","OFP"] | ["plu","POCFZ"] |
| 58 | ["plu","OCP","ZPQ","CPQ","OZP","CZP","OPQ"] | ["plu","POCZQ"] |
| 59 | ["plu","OYQ","PQR","OPQ","YQR","OQR","YPQ"] | ["plu","QOYPR"] |
| 60 | ["plu","OZQ","PQR","OPQ","ZQR","OQR","ZPQ"] | ["plu","QOZPR"] |
| 61 | ["plu","CYQ","DQR","CDQ","YQR","CQR","DYQ"] | ["plu","QCDYR"] |
| 62 | ["plu","HQR","OYR","HYR","OQR","OHR","YQR"] | ["plu","ROHYQ"] |
| 63 | ["plu","DQR","OYR","DYR","OQR","ODR","YQR"] | ["plu","RODYQ"] |
| 64 | ["plu","FQR","OYR","FYR","OQR","OFR","YQR"] | ["plu","ROFYQ"] |
| 65 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 66 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 67 | ["balance",[[1,"HCY","OFQ"],[1,"CYQ","OHF"],[-1,"HYQ","OCF"],[1,"HCQ","OFY"]]] | ["six","OFHCYQ"] |
| 68 | ["balance",[[-1,"HYQ","OFR"],[1,"YQR","OHF"],[1,"HQR","OFY"],[1,"HYR","OFQ"]]] | ["six","OFHYQR"] |
| 69 | ["balance",[[-1,"ODF","HCY"],[1,"DFY","OHC"],[-1,"OFY","HCD"],[-1,"ODY","HCF"]]] | ["six","HCODFY"] |
| 70 | ["balance",[[-1,"CFY","HDP"],[1,"FYP","HCD"],[-1,"CYP","HDF"],[-1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 71 | ["balance",[[1,"OCF","HYP"],[-1,"CFP","OHY"],[-1,"OFP","HCY"],[-1,"OCP","HFY"]]] | ["six","HYOCFP"] |
| 72 | ["balance",[[1,"OCP","HYQ"],[-1,"CPQ","OHY"],[-1,"OPQ","HCY"],[-1,"OCQ","HYP"]]] | ["six","HYOCPQ"] |
| 73 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 74 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 75 | ["balance",[[-1,"ODF","CZP"],[-1,"DFP","OCZ"],[1,"OFP","CDZ"],[-1,"ODP","CFZ"]]] | ["six","CZODFP"] |
| 76 | ["balance",[[-1,"DYZ","CPQ"],[-1,"YZQ","CDP"],[1,"DZQ","CYP"],[-1,"DYQ","CZP"]]] | ["six","CPDYZQ"] |
| 77 | ["balance",[[-1,"ODP","CQR"],[-1,"DPQ","OCR"],[-1,"OPQ","CDR"],[1,"ODQ","CPR"]]] | ["six","CRODPQ"] |
| 78 | ["balance",[[-1,"OCZ","DPQ"],[-1,"CZP","ODQ"],[-1,"OZP","CDQ"],[1,"OCP","DZQ"]]] | ["six","DQOCZP"] |
| 79 | ["balance",[[1,"OCP","DQR"],[-1,"CPQ","ODR"],[1,"OPQ","CDR"],[1,"OCQ","DPR"]]] | ["six","DROCPQ"] |
| 80 | ["balance",[[1,"OCZ","FYQ"],[-1,"CZQ","OFY"],[-1,"OZQ","CFY"],[-1,"OCQ","FYZ"]]] | ["six","FYOCZQ"] |
| 81 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 82 | ["balance",[[-1,"OHD","FYZ"],[1,"HDF","OYZ"],[1,"ODF","HYZ"],[1,"OHF","DYZ"]]] | ["six","YZOHDF"] |
| 83 | ["balance",[[1,"OCZ","YPQ"],[-1,"CZP","OYQ"],[-1,"OZP","CYQ"],[-1,"OCP","YZQ"]]] | ["six","YQOCZP"] |
| 84 | ["balance",[[-1,"OZP","YQR"],[-1,"ZPR","OYQ"],[-1,"OPR","YZQ"],[1,"OZR","YPQ"]]] | ["six","YQOZPR"] |
| 85 | ["balance",[[1,"HCF","YPQ"],[1,"CFP","HYQ"],[1,"HFP","CYQ"],[-1,"HCP","FYQ"]]] | ["six","YQHCFP"] |
| 86 | ["balance",[[-1,"OCF","YQR"],[-1,"CFY","OQR"],[-1,"OFY","CQR"],[1,"OCY","FQR"]]] | ["six","QROCFY"] |
| 87 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 88 | ["balance",[[-1,"CDF","YQR"],[-1,"DFY","CQR"],[-1,"CFY","DQR"],[1,"CDY","FQR"]]] | ["six","QRCDFY"] |
| 89 | ["balance",[[-1,"CFY","ZQR"],[-1,"FYZ","CQR"],[1,"CYZ","FQR"],[-1,"CFZ","YQR"]]] | ["six","QRCFYZ"] |
| 90 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 91 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 92 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 93 | ["linear",{"OHY":-1,"OYR":-1,"OHR":1,"HYR":-1},"0"] | ["affine_quad","OHYR",1] |
| 94 | ["linear",{"OHQ":1,"OQR":-1,"OHR":-1,"HQR":-1},"0"] | ["affine_quad","OHQR",-1] |
| 95 | ["linear",{"OCD":1,"ODZ":1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 96 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 97 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 98 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 99 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 100 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 101 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 102 | ["linear",{"OFY":-1,"OYZ":-1,"OFZ":1,"FYZ":-1},"0"] | ["affine_quad","OFYZ",1] |
| 103 | ["linear",{"OFY":-1,"OYP":-1,"OFP":1,"FYP":-1},"0"] | ["affine_quad","OFYP",1] |
| 104 | ["linear",{"OFY":-1,"OYQ":-1,"OFQ":1,"FYQ":-1},"0"] | ["affine_quad","OFYQ",1] |
| 105 | ["linear",{"OFY":-1,"OYR":-1,"OFR":1,"FYR":-1},"0"] | ["affine_quad","OFYR",1] |
| 106 | ["linear",{"OFQ":1,"OQR":-1,"OFR":-1,"FQR":-1},"0"] | ["affine_quad","OFQR",-1] |
| 107 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 108 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 109 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 110 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 111 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 112 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 113 | ["linear",{"CFZ":-1,"CZP":-1,"CFP":1,"FZP":-1},"0"] | ["affine_quad","CFZP",1] |
| 114 | ["linear",{"CFQ":1,"CQR":-1,"CFR":-1,"FQR":-1},"0"] | ["affine_quad","CFQR",-1] |
| 115 | ["linear",{"CYZ":-1,"CZP":-1,"CYP":1,"YZP":-1},"0"] | ["affine_quad","CYZP",1] |
| 116 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 117 | ["linear",{"CPQ":1,"CQR":-1,"CPR":-1,"PQR":-1},"0"] | ["affine_quad","CPQR",-1] |
| 118 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 119 | ["linear",{"DYZ":-1,"DZQ":-1,"DYQ":1,"YZQ":-1},"0"] | ["affine_quad","DYZQ",-1] |
| 120 | ["linear",{"YZP":-1,"YPQ":1,"YZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","YZPQ",-1] |
| 121 | ["quad","HDQ","HYQ","93/125"] | ["quad","HYQD","ZP"] |
| 122 | ["quad","CFQ","DFQ","93/91"] | ["quad","CQDF","ZPR"] |
| 123 | ["quad","DFQ","FYQ","93/125"] | ["quad","DFYQ","ZP"] |
| 124 | ["quad","DFR","FYR","93/125"] | ["quad","DFYR","ZP"] |
| 125 | ["support","CFP","CYP","FYP","1023/1000"] | ["support_pent","PFHYC"] |
| 126 | ["support","CYP","CFP","CFY","1023/1000"] | ["support_pent","CYHFP"] |
| 127 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 128 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 129 | ["bary",["FYZ",-1],[["OFZ",-1],["HFZ",-1],["CFZ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FZ"] |
| 130 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 131 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["CFQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FQ"] |
| 132 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 133 | ["bary",["OPQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OQ"] |
| 134 | ["bary",["HCP",1],[["OHC",-1],null,["HCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","HC"] |
| 135 | ["bary",["CFP",-1],[["OCF",1],["HCF",1],["CDF",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CF"] |
| 136 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 137 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["FQR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","FQ"] |
| 138 | ["bary",["OYQ",1],[null,["OCQ",-1],["OFQ",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","OQ"] |
| 139 | ["bary",["CDY",1],[["OCD",1],null,["CDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","CD"] |
| 140 | ["bary",["YQR",-1],[["OQR",1],["CQR",1],["FQR",-1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","QR"] |
| 141 | ["bary",["OZQ",1],[null,["OCQ",-1],["OPQ",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","OQ"] |
| 142 | ["bary",["DFZ",1],[["ODF",1],["CDF",1],["DFP",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","DF"] |
| 143 | ["bary",["FZP",-1],[["OFP",-1],["CFP",-1],null],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","FP"] |
| 144 | ["bary",["ZPQ",-1],[["OPQ",-1],["CPQ",-1],null],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","PQ"] |
| 145 | ["bary",["OHY",-1],[null,["OHD",-1],["OHF",-1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","OH"] |
| 146 | ["bary",["CYQ",1],[["OCQ",1],["CDQ",1],["CFQ",1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","CQ"] |
| 147 | ["bary",["DYQ",-1],[["ODQ",-1],null,["DFQ",-1]],"ODF",["DFY","OFY","ODY"]] | ["bary","ODF","Y","DQ"] |
| 148 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OC"] |
| 149 | ["bary",["OPQ",1],[null,["ODQ",1],["OFQ",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OQ"] |
| 150 | ["bary",["CDP",1],[["OCD",1],null,["CDF",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CD"] |
| 151 | ["bary",["CFP",-1],[["OCF",1],["CDF",-1],null],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CF"] |
| 152 | ["bary",["CPR",1],[["OCR",1],["CDR",1],["CFR",1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","CR"] |
| 153 | ["bary",["DPQ",-1],[["ODQ",-1],null,["DFQ",-1]],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","DQ"] |
| 154 | ["bary",["OCY",1],[null,["OCF",1],["OCQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OC"] |
| 155 | ["bary",["CYP",1],[["OCP",1],["CFP",1],["CPQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","CP"] |
| 156 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 157 | ["bary",["DYQ",-1],[["ODQ",-1],["DFQ",-1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DQ"] |
| 158 | ["bary",["FYQ",-1],[["OFQ",-1],null,null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","FQ"] |
| 159 | ["bary",["OYQ",1],[null,["OFQ",1],["OQR",1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","OQ"] |
| 160 | ["bary",["CDY",1],[["OCD",1],["CDF",1],["CDR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","CD"] |
| 161 | ["bary",["OHR",-1],[null,["OHY",-1],["OHQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OH"] |
| 162 | ["bary",["OFR",-1],[null,["OFY",-1],["OFQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OF"] |
| 163 | ["bary",["HQR",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HQ"] |
| 164 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 165 | ["bary",["FYR",1],[["OFY",-1],null,["FYQ",1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","FY"] |
| 166 | ["bary",["FQR",-1],[["OFQ",-1],["FYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","FQ"] |
| 167 | ["bary",["PQR",-1],[["OPQ",-1],["YPQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","PQ"] |
| 168 | ["bary",["DFR",1],[["ODF",1],["DFZ",1],["DFQ",1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DF"] |
| 169 | ["bary",["DPR",1],[["ODP",1],["DZP",1],["DPQ",1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DP"] |
| 170 | ["bary",["OCZ",1],[null,["OCP",1],["OCQ",1]],"OPQ",["ZPQ","OZQ","OZP"]] | ["bary","OPQ","Z","OC"] |
| 171 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OC"] |
| 172 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 173 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 174 | ["bary",["CPQ",1],[null,["CDQ",1],["CFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CQ"] |
| 175 | ["bary",["YPQ",1],[["CYQ",-1],["DYQ",1],["FYQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","YQ"] |
| 176 | ["bary",["OHR",-1],[["OHC",-1],["OHD",-1],["OHQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OH"] |
| 177 | ["bary",["OFR",-1],[["OCF",-1],["ODF",-1],["OFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OF"] |
| 178 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 179 | ["bary",["OZR",-1],[["OCZ",-1],["ODZ",-1],["OZQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OZ"] |
| 180 | ["bary",["OPR",-1],[["OCP",-1],["ODP",-1],["OPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OP"] |
| 181 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 182 | ["bary",["HYR",1],[["HCY",1],["HDY",1],["HYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HY"] |
| 183 | ["bary",["CFR",-1],[null,["CDF",-1],["CFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CF"] |
| 184 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 185 | ["bary",["CZR",-1],[null,["CDZ",-1],["CZQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CZ"] |
| 186 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 187 | ["bary",["FYR",1],[["CFY",1],["DFY",1],["FYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","FY"] |
| 188 | ["bary",["ZPR",-1],[["CZP",-1],["DZP",-1],["ZPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","ZP"] |
| 189 | ["bary",["DZR",-1],[["CDR",-1],["DFR",-1],["DPR",-1]],"CFP",["FZP","CZP","CFZ"]] | ["bary","CFP","Z","DR"] |
| 190 | ["bary",["HFZ",-1],[["HCF",-1],["HFY",-1],["HFP",-1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","HF"] |
| 191 | ["bary",["DZQ",-1],[["CDQ",-1],["DYQ",-1],["DPQ",-1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","DQ"] |
| 192 | ["bary",["DQR",-1],[["CDQ",-1],["DYQ",-1],null],"CYQ",["YQR","CQR","CYR"]] | ["bary","CYQ","R","DQ"] |
| 193 | ["bary",["CPR",1],[["CDR",1],["CFR",1],["CYR",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","CR"] |
| 194 | ["bary",["YPR",1],[["DYR",1],["FYR",1],null],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","YR"] |
| 195 | ["bary",["OYZ",-1],[["ODY",-1],null,["OYQ",-1]],"DYQ",["YZQ","DZQ","DYZ"]] | ["bary","DYQ","Z","OY"] |
| 196 | ["bary",["CYZ",-1],[null,["CYP",-1],["CYQ",-1]],"YPQ",["ZPQ","YZQ","YZP"]] | ["bary","YPQ","Z","CY"] |
| 197 | ["bary",["ZPQ",-1],[["YPQ",-1],null,null],"YPQ",["ZPQ","YZQ","YZP"]] | ["bary","YPQ","Z","PQ"] |
| 198 | ["bary",["OCZ",1],[["OCY",1],["OCP",1],["OCR",1]],"YPR",["ZPR","YZR","YZP"]] | ["bary","YPR","Z","OC"] |
| 199 | ["linear",{"OHD":1,"OHY":-1},"365211/500000"] | ["mesh_ear","OHDPYZ",1,"OHY"] |
| 200 | ["linear",{"ODF":1,"ODZ":-1},"365211/500000"] | ["mesh_ear","ODFPZY",-1,"ODZ"] |
| 201 | ["linear",{"ODF":1,"OFY":-1},"365211/500000"] | ["mesh_ear","ODFPZY",-1,"OFY"] |
| 202 | ["linear",{"ODF":1,"DFP":-1},"365211/500000"] | ["mesh_ear","ODFPZY",-1,"DFP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s24 | 3 | sub | DFY | hi | 281729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s32 | 4 | sub | OFP | hi | 281729/500000 | hi_ODF,lo_DFP,lo_ODP |
| s41 | 8 | sub | FYQ | hi | 30719/50000 | hi_OFQ,lo_OFY,lo_OYQ |
| s85 | 29 | sumlo | OHY | lo | 109557/1000000 | lo_ODY,lo_OHF,lo_OFY,lo_OHD,hi_ODF |
| s89 | 30 | sumlo | OCY | lo | 102461/1000000 | lo_OCD,lo_OFY,lo_OCF,lo_ODY,hi_ODF |
| s100 | 32 | sumlo | HCF | lo | 58273/500000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s103 | 35 | sumlo | OCZ | lo | 13221/125000 | lo_CFZ,lo_OCQ,lo_CZQ,lo_OCF,hi_CFQ |
| s104 | 36 | sumlo | CFY | lo | 99643/1000000 | lo_CDF,lo_HCY,lo_CDY,s100,hi_HCD |
| s105 | 37 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s107 | 38 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s105,lo_CQR,lo_HCD,hi_CDQ |
| s108 | 39 | sumlo | CFQ | lo | 923/3125 | lo_CDF,lo_CYQ,lo_CDQ,s104,hi_CDY |
| s110 | 40 | sumlo | CFR | lo | 3423/15625 | lo_CDF,lo_CQR,lo_CDR,s108,hi_CDQ |
| s115 | 42 | sumlo | DFP | lo | 51243/500000 | lo_HDF,lo_ODP,lo_HDP,lo_ODF,hi_OHD |
| s118 | 43 | sumlo | CDZ | lo | 126743/1000000 | lo_CDF,lo_ODZ,lo_DFZ,lo_OCD,hi_ODF |
| s119 | 44 | sumlo | CDP | lo | 114099/500000 | lo_CDF,lo_ODP,s115,lo_OCD,hi_ODF |
| s131 | 47 | sumlo | OFP | lo | 290221/1000000 | lo_CFP,lo_ODF,s115,lo_OCF,hi_CDF |
| s138 | 48 | sumlo | HCF | lo | 8187/62500 | lo_CDF,lo_HFY,s104,lo_HDF,s24 |
| s143 | 58 | sumlo | ZPQ | lo | 157113/1000000 | lo_CPQ,lo_OZP,lo_CZP,lo_OPQ,hi_OCP |
| s150 | 59 | sumlo | PQR | lo | 130487/1000000 | lo_OPQ,lo_YQR,lo_OQR,lo_YPQ,hi_OYQ |
| s154 | 65 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s159 | 66 | balance_lo | CFY | lo | 32773/250000 | s138,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s180 | 69 | balance_lo | DFY | lo | 17483/62500 | lo_ODF,lo_HCY,lo_OFY,lo_HCD,lo_ODY,s138,hi_OHC |
| s181 | 69 | balance_lo | OHC | lo | 63049/200000 | lo_ODF,lo_HCY,lo_OFY,lo_HCD,lo_ODY,s138,s24 |
| s186 | 70 | balance_lo | FYP | lo | 119069/1000000 | s159,lo_HDP,lo_CYP,lo_HDF,lo_CFP,lo_HDY,hi_HCD |
| s188 | 71 | balance_lo | HYP | lo | 65751/500000 | lo_CFP,s85,s131,lo_HCY,lo_OCP,lo_HFY,hi_OCF |
| s190 | 72 | balance_lo | HYQ | lo | 2912/15625 | lo_CPQ,s85,lo_OPQ,lo_HCY,lo_OCQ,s188,hi_OCP |
| s199 | 73 | balance_lo | OYR | lo | 166431/1000000 | lo_OYQ,lo_CDR,lo_YQR,lo_OCD,lo_OQR,lo_CDY,hi_CDQ |
| s200 | 74 | balance_lo | OZR | lo | 132717/1000000 | lo_OZQ,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,s118,hi_CDQ |
| s207 | 75 | balance_lo | CDZ | lo | 1609/8000 | lo_ODF,lo_CZP,s115,s103,lo_ODP,lo_CFZ,s32 |
| s209 | 77 | balance_lo | CPR | lo | 130351/1000000 | lo_ODP,lo_CQR,lo_DPQ,lo_OCR,lo_OPQ,lo_CDR,hi_ODQ |
| s213 | 78 | balance_lo | DZQ | lo | 107181/1000000 | s103,lo_DPQ,lo_CZP,lo_ODQ,lo_OZP,lo_CDQ,hi_OCP |
| s216 | 79 | balance_lo | ODR | lo | 26413/200000 | lo_OCP,lo_DQR,lo_OPQ,lo_CDR,lo_OCQ,lo_DPR,hi_CPQ |
| s217 | 80 | balance_lo | OCZ | lo | 115841/1000000 | lo_CZQ,lo_OFY,lo_OZQ,s159,lo_OCQ,lo_FYZ,s41 |
| s220 | 82 | balance_lo | FYZ | lo | 93837/1000000 | lo_HDF,lo_OYZ,lo_ODF,lo_HYZ,lo_OHF,lo_DYZ,hi_OHD |
| s225 | 87 | balance_lo | HQR | lo | 1653/12500 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,lo_DQR,hi_CDY |
| s226 | 88 | balance_lo | FQR | lo | 4283/31250 | lo_CDF,lo_YQR,s180,lo_CQR,s159,lo_DQR,hi_CDY |
| s232 | 91 | linear | OHP | lo | 334059/1000000 | s188,s85,lo_OYP |
| s238 | 96 | linear | OCF | lo | 326553/1000000 | s159,s89,lo_OFY |
| s240 | 98 | linear | OCP | lo | 301841/1000000 | lo_CZP,s217,lo_OZP |
| s242 | 99 | linear | OFP | hi | 138493/250000 | s115,hi_ODF,lo_ODP |
| s250 | 101 | linear | ODQ | lo | 63613/200000 | lo_DQR,s216,lo_OQR |
| s251 | 102 | linear | OFZ | lo | 279837/1000000 | s220,lo_OFY,lo_OYZ |
| s254 | 103 | linear | OFP | lo | 305069/1000000 | s186,lo_OFY,lo_OYP |
| s260 | 107 | linear | OYQ | lo | 352431/1000000 | lo_OQR,s199,lo_YQR |
| s264 | 108 | linear | OZQ | lo | 318717/1000000 | lo_OQR,s200,lo_ZQR |
| s272 | 109 | linear | HCQ | lo | 88753/200000 | lo_CQR,s107,s225 |
| s274 | 110 | linear | HDY | lo | 158751/500000 | lo_DYP,lo_HDP,s188 |
| s281 | 111 | linear | CDY | lo | 3097/8000 | s207,lo_CYZ,lo_DYZ |
| s285 | 114 | linear | CFQ | lo | 56141/125000 | s110,lo_CQR,s226 |
| s287 | 116 | linear | CYQ | lo | 166923/500000 | lo_CQR,s154,lo_YQR |
| s289 | 117 | linear | CPQ | lo | 176919/500000 | s209,lo_CQR,s150 |
| s291 | 118 | linear | DFY | lo | 62911/200000 | s115,lo_DYP,s186 |
| s295 | 119 | linear | DYQ | lo | 293181/1000000 | lo_DYZ,s213,lo_YZQ |
| s297 | 120 | linear | YPQ | lo | 343113/1000000 | lo_YZP,lo_YZQ,s143 |
| s300 | 122 | quad | DFQ | lo | 204251/1000000 | hi_CFQ |
| s301 | 127 | linear | HCD | hi | 907/1000 | lo_HDF |
| s303 | 128 | linear | CDF | hi | 54313/62500 | s138 |
| s309 | 129 | bary_hi | FYZ | lo | 120363/1000000 | hi_OHC,lo_HCY,s89,s85,s251,lo_HFZ,lo_CFZ |
| s310 | 130 | bary_hi | FYP | lo | 156149/1000000 | hi_OHC,lo_HCY,s89,s85,s254,lo_HFP,lo_CFP |
| s311 | 131 | bary_hi | FYQ | lo | 242463/1000000 | hi_OHC,lo_HCY,s89,s85,lo_OFQ,lo_HFQ,s285 |
| s350 | 132 | bary_hi | OCP | hi | 278109/500000 | hi_OHD,lo_HDP,lo_ODP,s232,hi_OHC,hi_OCD |
| s352 | 133 | bary_hi | OPQ | hi | 12922/15625 | hi_OHD,lo_HDP,lo_ODP,s232,hi_OHQ,hi_ODQ |
| s354 | 134 | bary_hi | HCP | hi | 540279/1000000 | hi_OHD,lo_HDP,lo_ODP,s232,s181,s301 |
| s356 | 135 | bary_lo | CFP | hi | 478821/1000000 | hi_OHD,lo_HDP,lo_ODP,s232,s238,s138,s303 |
| s371 | 136 | bary_lo | OCY | lo | 12129/100000 | hi_OHQ,s190,s260,s85,s181,lo_OCQ |
| s393 | 138 | bary_hi | OYQ | hi | 124933/200000 | hi_OCF,s159,lo_OFY,s371,lo_OCQ,hi_OFQ |
| s395 | 139 | bary_hi | CDY | hi | 136247/200000 | hi_OCF,s159,lo_OFY,s371,hi_OCD,s303 |
| s405 | 141 | bary_hi | OZQ | hi | 267453/500000 | s350,lo_CZP,lo_OZP,s217,lo_OCQ,s352 |
| s417 | 142 | bary_lo | DFZ | lo | 321857/1000000 | s350,lo_CZP,lo_OZP,s217,lo_ODF,lo_CDF,s115 |
| s421 | 143 | bary_hi | FZP | lo | 12207/125000 | s350,lo_CZP,lo_OZP,s217,s254,lo_CFP |
| s424 | 144 | bary_hi | ZPQ | lo | 175199/1000000 | s350,lo_CZP,lo_OZP,s217,lo_OPQ,s289 |
| s435 | 146 | bary_hi | CYQ | hi | 141441/250000 | hi_ODF,s291,lo_OFY,lo_ODY,hi_OCQ,hi_CDQ,hi_CFQ |
| s438 | 147 | bary_lo | DYQ | hi | 668137/1000000 | hi_ODF,s291,lo_OFY,lo_ODY,hi_ODQ,hi_DFQ |
| s451 | 148 | bary_hi | OCP | hi | 546173/1000000 | hi_ODF,s115,s254,lo_ODP,hi_OCD,hi_OCF |
| s454 | 149 | bary_hi | OPQ | hi | 402333/500000 | hi_ODF,s115,s254,lo_ODP,hi_ODQ,hi_OFQ |
| s464 | 153 | bary_hi | DPQ | lo | 23941/250000 | hi_ODF,s115,s254,lo_ODP,s250,s300 |
| s479 | 154 | bary_lo | OCY | lo | 25089/200000 | hi_OFQ,s311,s260,lo_OFY,s238,lo_OCQ |
| s485 | 155 | bary_hi | CYP | hi | 109313/250000 | hi_OFQ,s311,s260,lo_OFY,s451,s356,s289 |
| s486 | 158 | bary_lo | FYQ | hi | 540949/1000000 | hi_OFQ,s311,s260,lo_OFY,hi_OFQ |
| s521 | 165 | bary_hi | FYR | hi | 366031/1000000 | s393,lo_YQR,lo_OQR,s199,lo_OFY,s486 |
| s522 | 166 | bary_hi | FQR | lo | 6971/50000 | s393,lo_YQR,lo_OQR,s199,lo_OFQ,s311 |
| s525 | 167 | bary_hi | PQR | lo | 30881/200000 | s393,lo_YQR,lo_OQR,s199,lo_OPQ,s297 |
| s537 | 168 | bary_lo | DFR | lo | 13291/40000 | s405,lo_ZQR,lo_OQR,s200,lo_ODF,s417,s300 |
| s539 | 169 | bary_lo | DPR | lo | 15753/125000 | s405,lo_ZQR,lo_OQR,s200,lo_ODP,lo_DZP,s464 |
| s542 | 170 | bary_lo | OCZ | lo | 130303/1000000 | s454,s424,s264,lo_OZP,s240,lo_OCQ |
| s580 | 171 | bary_hi | OCP | hi | 16911/31250 | s303,s115,lo_CFP,s119,hi_OCD,hi_OCF |
| s583 | 172 | bary_hi | OPQ | hi | 393289/500000 | s303,s115,lo_CFP,s119,lo_OCQ,hi_ODQ,hi_OFQ |
| s585 | 173 | bary_lo | HYP | lo | 165077/1000000 | s303,s115,lo_CFP,s119,lo_HCY,s274,lo_HFY |
| s587 | 174 | bary_hi | CPQ | hi | 593597/1000000 | s303,s115,lo_CFP,s119,hi_CDQ,hi_CFQ |
| s593 | 175 | bary_hi | YPQ | hi | 51657/100000 | s303,s115,lo_CFP,s119,s287,s438,s486 |
| s595 | 176 | bary_hi | OHR | lo | 511543/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s181,lo_OHD,lo_OHQ |
| s596 | 177 | bary_hi | OFR | lo | 517843/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s238,lo_ODF,lo_OFQ |
| s597 | 178 | bary_hi | OYR | lo | 209707/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s479,lo_ODY,s260 |
| s598 | 179 | bary_hi | OZR | lo | 3781/25000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s542,lo_ODZ,s264 |
| s599 | 180 | bary_hi | OPR | lo | 7519/20000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s240,lo_ODP,lo_OPQ |
| s600 | 181 | bary_lo | HCR | lo | 251933/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s272 |
| s606 | 183 | bary_hi | CFR | lo | 253121/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s285 |
| s607 | 184 | bary_hi | CYR | lo | 159643/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s281,s287 |
| s608 | 185 | bary_hi | CZR | lo | 106313/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s207,lo_CZQ |
| s610 | 186 | bary_hi | DYR | hi | 52749/100000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s395,s438 |
| s613 | 187 | bary_lo | FYR | lo | 24547/125000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s159,s291,s311 |
| s617 | 188 | bary_hi | ZPR | lo | 111201/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CZP,lo_DZP,s424 |
| s622 | 189 | bary_hi | DZR | lo | 145887/1000000 | s356,s421,lo_CZP,lo_CFZ,lo_CDR,s537,s539 |
| s625 | 190 | bary_hi | HFZ | lo | 2527/25000 | s485,lo_YZP,lo_CZP,lo_CYZ,s138,lo_HFY,lo_HFP |
| s629 | 191 | bary_hi | DZQ | lo | 7069/40000 | s485,lo_YZP,lo_CZP,lo_CYZ,lo_CDQ,s295,s464 |
| s631 | 192 | bary_hi | DQR | lo | 47027/500000 | s435,lo_YQR,lo_CQR,s607,lo_CDQ,s295 |
| s639 | 193 | bary_lo | CPR | lo | 131549/1000000 | s24,s310,lo_DYP,s115,lo_CDR,s606,s607 |
| s642 | 194 | bary_hi | YPR | hi | 404897/1000000 | s24,s310,lo_DYP,s115,s610,s521 |
| s659 | 196 | bary_hi | CYZ | lo | 27583/250000 | s593,s424,lo_YZQ,lo_YZP,lo_CYP,s287 |
| s661 | 197 | bary_lo | ZPQ | hi | 33057/100000 | s593,s424,lo_YZQ,lo_YZP,s593 |
| s663 | 198 | bary_lo | OCZ | lo | 74939/500000 | s642,s617,lo_YZR,lo_YZP,s479,s240,lo_OCR |
| s670 | 199 | linear | OHD | lo | 839979/1000000 | s85 |
| s671 | 199 | linear | OHY | hi | 134789/500000 | hi_OHD |
| s676 | 200 | linear | ODZ | hi | 51259/250000 | hi_ODF |
| s677 | 201 | linear | OFY | hi | 51259/250000 | hi_ODF |
| s678 | 202 | linear | ODF | lo | 208227/250000 | s115 |
| s685 | 1 | sum | OCF | lo | 349537/1000000 | s159,s479,lo_OFY |
| s686 | 2 | sum | OCP | lo | 167939/500000 | lo_CZP,s663,lo_OZP |
| s691 | 7 | sum | OFP | lo | 342149/1000000 | s310,lo_OFY,lo_OYP |
| s692 | 9 | sum | OFQ | lo | 750263/1000000 | s522,s596,lo_OQR |
| s694 | 11 | sum | OYQ | lo | 395707/1000000 | lo_OQR,s597,lo_YQR |
| s695 | 12 | sum | OZQ | lo | 8431/25000 | lo_OQR,s598,lo_ZQR |
| s696 | 13 | sub | OZQ | hi | 518379/1000000 | s583,lo_OZP,s424 |
| s701 | 14 | sum | HCQ | lo | 477173/1000000 | lo_CQR,s600,s225 |
| s702 | 15 | sum | HDY | lo | 351077/1000000 | lo_DYP,lo_HDP,s585 |
| s703 | 16 | sum | CDY | lo | 404457/1000000 | s207,s659,lo_DYZ |
| s704 | 17 | sum | CDQ | lo | 140027/500000 | lo_CDR,lo_CQR,s631 |
| s706 | 18 | sum | CFP | lo | 35457/125000 | lo_CFZ,lo_CZP,s421 |
| s707 | 19 | sum | CFQ | lo | 485541/1000000 | s606,lo_CQR,s522 |
| s708 | 20 | sum | CYP | lo | 74083/250000 | s659,lo_CZP,lo_YZP |
| s709 | 21 | sum | CYQ | lo | 345643/1000000 | lo_CQR,s607,lo_YQR |
| s710 | 22 | sum | CZQ | lo | 292313/1000000 | lo_CQR,s608,lo_ZQR |
| s711 | 23 | sum | CPQ | lo | 189477/500000 | s639,lo_CQR,s525 |
| s712 | 24 | sum | DFY | lo | 70327/200000 | s115,lo_DYP,s310 |
| s713 | 25 | sum | DYQ | lo | 14509/40000 | lo_DYZ,s629,lo_YZQ |
| s714 | 26 | sum | DYR | lo | 331887/1000000 | lo_DYZ,s622,lo_YZR |
| s715 | 27 | sum | YPQ | lo | 361199/1000000 | lo_YZP,lo_YZQ,s424 |
| s718 | 29 | sumlo | OHY | lo | 22249/200000 | lo_ODY,lo_OHF,lo_OFY,s670,hi_ODF |
| s725 | 34 | sumlo | OCD | lo | 198637/1000000 | lo_CDF,lo_OCQ,s704,s685,hi_CFQ |
| s726 | 38 | sumlo | HCR | lo | 259331/1000000 | lo_CDR,s701,lo_CQR,lo_HCD,hi_CDQ |
| s727 | 40 | sumlo | CFR | lo | 4081/15625 | lo_CDF,lo_CQR,lo_CDR,s707,hi_CDQ |
| s730 | 41 | sumlo | CPR | lo | 3361/25000 | s119,lo_CQR,lo_CDR,s711,hi_CDQ |
| s732 | 42 | sumlo | DFP | lo | 103407/1000000 | lo_HDF,lo_ODP,lo_HDP,s678,hi_OHD |
| s736 | 44 | sumlo | CDP | lo | 114471/500000 | lo_CDF,lo_ODP,s732,s725,hi_ODF |
| s742 | 48 | sumlo | HCF | lo | 136183/1000000 | lo_CDF,lo_HFY,s159,lo_HDF,s24 |
| s744 | 51 | sumlo | OCY | lo | 155317/1000000 | s159,s694,s709,lo_OFY,s486 |
| s745 | 52 | sumlo | OYZ | lo | 46957/500000 | lo_DYZ,s694,lo_ODY,lo_YZQ,s438 |
| s748 | 55 | sumlo | CYZ | lo | 115577/1000000 | s708,lo_YZQ,s709,lo_YZP,s593 |
| s752 | 56 | sumlo | OCZ | lo | 177113/1000000 | lo_CZP,s695,s710,lo_OZP,s661 |
| s755 | 57 | sumlo | FZP | lo | 26887/250000 | s706,lo_OZP,lo_CZP,s691,s580 |
| s756 | 58 | sumlo | ZPQ | lo | 184393/1000000 | s711,lo_OZP,lo_CZP,lo_OPQ,s580 |
| s763 | 60 | sumlo | PQR | lo | 39397/250000 | lo_OPQ,lo_ZQR,lo_OQR,s756,s696 |
| s764 | 61 | sumlo | DQR | lo | 105659/1000000 | s704,lo_YQR,lo_CQR,s713,s435 |
| s766 | 65 | sumlo | CYR | lo | 33773/200000 | lo_CDR,lo_YQR,lo_CQR,s714,hi_DQR |
| s767 | 66 | balance_lo | CFY | lo | 16741/125000 | s742,lo_ODY,lo_HFY,s725,lo_HCY,s678,hi_OHD |
| s770 | 67 | balance_lo | HYQ | lo | 230387/1000000 | lo_HCY,s692,s709,lo_OHF,s701,lo_OFY,hi_OCF |
| s774 | 73 | balance_lo | OYR | lo | 221163/1000000 | s694,lo_CDR,lo_YQR,s725,lo_OQR,s703,hi_CDQ |
| s777 | 75 | balance_lo | CDZ | lo | 109863/500000 | s678,lo_CZP,s732,s752,lo_ODP,lo_CFZ,s242 |
| s780 | 76 | balance_lo | DZQ | lo | 206443/1000000 | lo_DYZ,s711,lo_YZQ,s736,s713,lo_CZP,s485 |
| s783 | 79 | balance_lo | ODR | lo | 9413/50000 | s686,s764,lo_OPQ,lo_CDR,lo_OCQ,s539,s587 |
| s784 | 81 | balance_lo | FYP | lo | 16187/100000 | s703,lo_HFP,s702,s706,lo_HCY,s732,s301 |
| s785 | 83 | balance_lo | OCZ | lo | 193937/1000000 | lo_CZP,s694,lo_OZP,s709,s686,lo_YZQ,s593 |
| s786 | 84 | balance_lo | OZR | lo | 169609/1000000 | lo_OZP,lo_YQR,s617,s694,s599,lo_YZQ,s593 |
| s789 | 85 | balance_lo | FYQ | lo | 271497/1000000 | s742,s715,s706,s770,lo_HFP,s709,s354 |
| s792 | 87 | balance_lo | HQR | lo | 78547/500000 | lo_HCD,lo_YQR,s702,lo_CQR,lo_HCY,s764,s395 |
| s793 | 88 | balance_lo | FQR | lo | 81759/500000 | lo_CDF,lo_YQR,s712,lo_CQR,s767,s764,s395 |
| s794 | 90 | linear | OHC | lo | 179781/500000 | lo_HCY,s744,s718 |
| s800 | 92 | linear | HYQ | hi | 61631/125000 | hi_OHQ,s718,s694 |
| s801 | 94 | linear | OHQ | lo | 761637/1000000 | s792,s595,lo_OQR |
| s802 | 95 | linear | OCD | lo | 208627/1000000 | s777,s785,s676 |
| s803 | 96 | linear | OCF | lo | 76449/200000 | s767,s744,lo_OFY |
| s805 | 97 | linear | CFQ | hi | 158027/200000 | s803,hi_OCQ,hi_OFQ |
| s806 | 98 | linear | OCP | lo | 379937/1000000 | lo_CZP,s785,lo_OZP |
| s811 | 100 | linear | ODY | lo | 139957/500000 | lo_DYZ,lo_ODZ,s745 |
| s812 | 101 | linear | ODQ | lo | 386919/1000000 | s764,s783,lo_OQR |
| s813 | 102 | linear | OFZ | lo | 307277/1000000 | s309,lo_OFY,s745 |
| s814 | 103 | linear | OFP | lo | 34787/100000 | s784,lo_OFY,lo_OYP |
| s817 | 104 | linear | FYQ | hi | 497673/1000000 | hi_OFQ,lo_OFY,s694 |
| s818 | 106 | linear | OFQ | lo | 774361/1000000 | s793,s596,lo_OQR |
| s819 | 106 | linear | OFR | hi | 364931/500000 | s793,hi_OFQ,lo_OQR |
| s820 | 107 | linear | OYQ | lo | 407163/1000000 | lo_OQR,s774,lo_YQR |
| s828 | 109 | linear | HCQ | lo | 20377/40000 | lo_CQR,s726,s792 |
| s835 | 111 | linear | CDY | lo | 428303/1000000 | s777,s748,lo_DYZ |
| s836 | 112 | linear | CDQ | lo | 291659/1000000 | lo_CDR,lo_CQR,s764 |
| s838 | 113 | linear | CFP | lo | 73387/250000 | lo_CFZ,lo_CZP,s755 |
| s839 | 114 | linear | CFQ | lo | 258851/500000 | s727,lo_CQR,s793 |
| s840 | 115 | linear | CYP | lo | 301577/1000000 | s748,lo_CZP,lo_YZP |
| s841 | 116 | linear | CYQ | lo | 70973/200000 | lo_CQR,s766,lo_YQR |
| s843 | 117 | linear | CPQ | lo | 96257/250000 | s730,lo_CQR,s763 |
| s844 | 118 | linear | DFY | lo | 358277/1000000 | s732,lo_DYP,s784 |
| s846 | 119 | linear | DYQ | lo | 392443/1000000 | lo_DYZ,s780,lo_YZQ |
| s848 | 120 | linear | YPQ | lo | 370393/1000000 | lo_YZP,lo_YZQ,s756 |
| s849 | 121 | quad | HDQ | lo | 31369/125000 | s800 |
| s852 | 123 | quad | DFQ | lo | 246327/1000000 | s817 |
| s853 | 124 | quad | DFR | lo | 377969/1000000 | s521 |
| s854 | 125 | support_z | FYP | lo | 168079/1000000 | s838,s485 |
| s855 | 126 | support_z | CFY | lo | 80211/500000 | s840,s356 |
| s856 | 128 | linear | CDF | hi | 863817/1000000 | s742 |
| s857 | 129 | bary_hi | FYZ | lo | 63179/500000 | hi_OHC,lo_HCY,s744,s718,s813,s625,lo_CFZ |
| s872 | 136 | bary_lo | OCY | lo | 78373/500000 | hi_OHQ,s770,s820,s718,s794,lo_OCQ |
| s884 | 138 | bary_hi | OYQ | hi | 289553/500000 | hi_OCF,s855,lo_OFY,s872,lo_OCQ,hi_OFQ |
| s891 | 141 | bary_hi | OZQ | hi | 6253/12500 | s580,lo_CZP,lo_OZP,s785,lo_OCQ,s583 |
| s900 | 143 | bary_hi | FZP | lo | 110231/1000000 | s580,lo_CZP,lo_OZP,s785,s814,s838 |
| s902 | 144 | bary_hi | ZPQ | lo | 185437/1000000 | s580,lo_CZP,lo_OZP,s785,lo_OPQ,s843 |
| s904 | 145 | bary_hi | OHY | lo | 22267/200000 | hi_ODF,s844,lo_OFY,s811,s670,lo_OHF |
| s917 | 150 | bary_lo | CDP | lo | 230047/1000000 | hi_ODF,s732,s814,lo_ODP,s802,lo_CDF |
| s918 | 151 | bary_lo | CFP | hi | 468443/1000000 | hi_ODF,s732,s814,lo_ODP,s803,s856 |
| s921 | 152 | bary_lo | CPR | lo | 3579/25000 | hi_ODF,s732,s814,lo_ODP,lo_OCR,lo_CDR,s727 |
| s923 | 153 | bary_hi | DPQ | lo | 116237/1000000 | hi_ODF,s732,s814,lo_ODP,s812,s852 |
| s928 | 154 | bary_lo | OCY | lo | 166553/1000000 | hi_OFQ,s789,s820,lo_OFY,s803,lo_OCQ |
| s935 | 155 | bary_hi | CYP | hi | 84763/200000 | hi_OFQ,s789,s820,lo_OFY,s580,s918,s843 |
| s936 | 156 | bary_hi | DFY | hi | 263757/500000 | hi_OFQ,s789,s820,lo_OFY,hi_ODF,hi_DFQ |
| s938 | 157 | bary_lo | DYQ | hi | 66559/100000 | hi_OFQ,s789,s820,lo_OFY,hi_ODQ,hi_DFQ |
| s939 | 158 | bary_lo | FYQ | hi | 486217/1000000 | hi_OFQ,s789,s820,lo_OFY,hi_OFQ |
| s945 | 160 | bary_hi | CDY | hi | 166111/250000 | s819,s613,s774,lo_OFY,hi_OCD,s856,lo_CDR |
| s946 | 161 | bary_lo | OHR | hi | 180527/250000 | s884,lo_YQR,lo_OQR,s774,s671,hi_OHQ |
| s949 | 162 | bary_lo | OFR | hi | 702497/1000000 | s884,lo_YQR,lo_OQR,s774,s677,hi_OFQ |
| s954 | 163 | bary_hi | HQR | lo | 159311/1000000 | s884,lo_YQR,lo_OQR,s774,s801,s770 |
| s961 | 164 | bary_hi | DQR | lo | 125159/1000000 | s884,lo_YQR,lo_OQR,s774,s812,s846 |
| s962 | 165 | bary_hi | FYR | hi | 315117/1000000 | s884,lo_YQR,lo_OQR,s774,lo_OFY,s939 |
| s963 | 166 | bary_hi | FQR | lo | 41989/250000 | s884,lo_YQR,lo_OQR,s774,s818,s789 |
| s966 | 167 | bary_hi | PQR | lo | 170933/1000000 | s884,lo_YQR,lo_OQR,s774,lo_OPQ,s848 |
| s975 | 169 | bary_lo | DPR | lo | 67729/500000 | s891,lo_ZQR,lo_OQR,s786,lo_ODP,lo_DZP,s923 |
| s1005 | 173 | bary_lo | HYP | lo | 180701/1000000 | s856,s732,s838,s917,lo_HCY,s702,lo_HFY |
| s1007 | 174 | bary_hi | CPQ | hi | 569767/1000000 | s856,s732,s838,s917,hi_CDQ,s805 |
| s1011 | 175 | bary_hi | YPQ | hi | 495663/1000000 | s856,s732,s838,s917,s841,s938,s939 |
| s1012 | 176 | bary_hi | OHR | lo | 55497/100000 | hi_CDQ,s961,lo_CQR,lo_CDR,s794,s670,s801 |
| s1013 | 177 | bary_hi | OFR | lo | 28443/50000 | hi_CDQ,s961,lo_CQR,lo_CDR,s803,s678,s818 |
| s1014 | 178 | bary_hi | OYR | lo | 61233/250000 | hi_CDQ,s961,lo_CQR,lo_CDR,s928,s811,s820 |
| s1017 | 181 | bary_lo | HCR | lo | 33309/125000 | hi_CDQ,s961,lo_CQR,lo_CDR,lo_HCD,s828 |
| s1021 | 182 | bary_lo | HYR | lo | 180567/1000000 | hi_CDQ,s961,lo_CQR,lo_CDR,lo_HCY,s702,s770 |
| s1022 | 183 | bary_hi | CFR | lo | 53661/200000 | hi_CDQ,s961,lo_CQR,lo_CDR,lo_CDF,s839 |
| s1023 | 184 | bary_hi | CYR | lo | 34683/200000 | hi_CDQ,s961,lo_CQR,lo_CDR,s835,s841 |
| s1028 | 187 | bary_lo | FYR | lo | 228827/1000000 | hi_CDQ,s961,lo_CQR,lo_CDR,s855,s844,s789 |
| s1030 | 188 | bary_hi | ZPR | lo | 28367/250000 | hi_CDQ,s961,lo_CQR,lo_CDR,lo_CZP,lo_DZP,s902 |
| s1031 | 189 | bary_hi | DZR | lo | 39501/250000 | s918,s900,lo_CZP,lo_CFZ,lo_CDR,s853,s975 |
| s1033 | 190 | bary_hi | HFZ | lo | 4099/40000 | s935,lo_YZP,lo_CZP,s748,s742,lo_HFY,lo_HFP |
| s1036 | 191 | bary_hi | DZQ | lo | 10767/50000 | s935,lo_YZP,lo_CZP,s748,s836,s846,s923 |
| s1044 | 195 | bary_hi | OYZ | lo | 48001/500000 | s938,lo_YZQ,s1036,lo_DYZ,s811,s820 |
| s1052 | 196 | bary_hi | CYZ | lo | 61583/500000 | s1011,s902,lo_YZQ,lo_YZP,s840,s841 |
| s1061 | 199 | linear | OHD | lo | 841757/1000000 | s904 |
| s1062 | 202 | linear | ODF | lo | 833829/1000000 | s732 |
| s1068 | 1 | sum | OCF | lo | 16799/40000 | s855,s928,lo_OFY |
| s1070 | 5 | sum | ODY | lo | 141001/500000 | lo_DYZ,lo_ODZ,s1044 |
| s1071 | 6 | sum | ODQ | lo | 406419/1000000 | s961,s783,lo_OQR |
| s1074 | 9 | sum | OFQ | lo | 103727/125000 | s963,s1013,lo_OQR |
| s1076 | 10 | sub | OYR | hi | 38067/100000 | s949,s1028,lo_OFY |
| s1077 | 11 | sum | OYQ | lo | 107733/250000 | lo_OQR,s1014,lo_YQR |
| s1084 | 14 | sum | HCQ | lo | 518783/1000000 | lo_CQR,s1017,s954 |
| s1085 | 15 | sum | HDY | lo | 366701/1000000 | lo_DYP,lo_HDP,s1005 |
| s1086 | 16 | sum | CDY | lo | 108973/250000 | s777,s1052,lo_DYZ |
| s1088 | 18 | sum | CFP | lo | 296231/1000000 | lo_CFZ,lo_CZP,s900 |
| s1089 | 19 | sum | CFQ | lo | 529261/1000000 | s1022,lo_CQR,s963 |
| s1090 | 20 | sum | CYP | lo | 154583/500000 | s1052,lo_CZP,lo_YZP |
| s1091 | 21 | sum | CYQ | lo | 71883/200000 | lo_CQR,s1023,lo_YQR |
| s1093 | 23 | sum | CPQ | lo | 407093/1000000 | s921,lo_CQR,s966 |
| s1095 | 25 | sum | DYQ | lo | 20067/50000 | lo_DYZ,s1036,lo_YZQ |
| s1096 | 26 | sum | DYR | lo | 86001/250000 | lo_DYZ,s1031,lo_YZR |
| s1098 | 28 | sum | YPR | lo | 74867/250000 | lo_YZP,lo_YZR,s1030 |
| s1103 | 31 | sumlo | OCD | lo | 251659/1000000 | s1068,s1071,lo_OCQ,s1062,hi_OFQ |
| s1109 | 33 | sumlo | HYQ | lo | 58869/250000 | s1084,s1085,lo_HCY,s849,s301 |
| s1111 | 40 | sumlo | CFR | lo | 16929/62500 | lo_CDF,lo_CQR,lo_CDR,s1089,hi_CDQ |
| s1116 | 42 | sumlo | DFP | lo | 103493/1000000 | lo_HDF,lo_ODP,lo_HDP,s1062,hi_OHD |
| s1119 | 44 | sumlo | CDP | lo | 234827/1000000 | lo_CDF,lo_ODP,s1116,s1103,hi_ODF |
| s1120 | 45 | sumlo | ODR | lo | 99943/500000 | lo_CDR,s1062,s853,s1103,s856 |
| s1123 | 46 | sumlo | HFQ | lo | 53493/500000 | s852,lo_OHF,lo_HDF,s1074,hi_ODF |
| s1126 | 48 | sumlo | HCF | lo | 150633/1000000 | lo_CDF,lo_HFY,s855,lo_HDF,s936 |
| s1129 | 49 | sumlo | OHY | lo | 25493/200000 | lo_HFY,s1077,s1109,lo_OFY,s939 |
| s1131 | 51 | sumlo | OCY | lo | 210927/1000000 | s855,s1077,s1091,lo_OFY,s939 |
| s1132 | 52 | sumlo | OYZ | lo | 19923/200000 | lo_DYZ,s1077,s1070,lo_YZQ,s938 |
| s1133 | 53 | sumlo | HYQ | lo | 63633/250000 | s1091,s1085,s1095,lo_HCY,s945 |
| s1134 | 54 | sumlo | HYP | lo | 184693/1000000 | s854,s1021,lo_HFY,s1098,s962 |
| s1137 | 55 | sumlo | CYZ | lo | 31361/250000 | s1090,lo_YZQ,s1091,lo_YZP,s1011 |
| s1147 | 62 | sumlo | HQR | lo | 11231/62500 | s1021,lo_OQR,s1012,lo_YQR,s1076 |
| s1148 | 63 | sumlo | DQR | lo | 1063/8000 | s1096,lo_OQR,s1120,lo_YQR,s1076 |
| s1149 | 63 | diffhi | OQR | hi | 204903/1000000 | hi_DQR,s1076,s1120,lo_YQR,s1096 |
| s1150 | 64 | sumlo | FQR | lo | 194879/1000000 | s1028,lo_OQR,s1013,lo_YQR,s1076 |
| s1160 | 73 | balance_lo | OYR | lo | 15479/62500 | s1077,lo_CDR,lo_YQR,s1103,lo_OQR,s1086,hi_CDQ |
| s1166 | 76 | balance_lo | DZQ | lo | 3577/15625 | lo_DYZ,s1093,lo_YZQ,s1119,s1095,lo_CZP,s935 |
| s1169 | 79 | balance_lo | ODR | lo | 27999/125000 | s806,s1148,lo_OPQ,lo_CDR,lo_OCQ,s975,s1007 |
| s1173 | 81 | balance_lo | FYP | lo | 5471/31250 | s1086,lo_HFP,s1085,s1088,lo_HCY,s1116,s301 |
| s1181 | 90 | linear | OHC | lo | 13481/31250 | lo_HCY,s1131,s1129 |
| s1184 | 91 | linear | OHP | lo | 202579/500000 | s1134,s1129,lo_OYP |
| s1187 | 93 | linear | OHR | lo | 34731/62500 | s1021,s1129,s1160 |
| s1188 | 94 | linear | OHQ | lo | 103549/125000 | s1147,s1187,lo_OQR |
| s1190 | 96 | linear | OCF | lo | 464349/1000000 | s855,s1131,lo_OFY |
| s1198 | 100 | linear | ODY | lo | 57123/200000 | lo_DYZ,lo_ODZ,s1132 |
| s1199 | 101 | linear | ODQ | lo | 449867/1000000 | s1148,s1169,lo_OQR |
| s1200 | 102 | linear | OFZ | lo | 318973/1000000 | s857,lo_OFY,s1132 |
| s1204 | 105 | linear | OFR | lo | 569491/1000000 | s1028,lo_OFY,s1160 |
| s1205 | 106 | linear | OFQ | lo | 85737/100000 | s1150,s1204,lo_OQR |
| s1206 | 106 | linear | OFR | hi | 698501/1000000 | s1150,hi_OFQ,lo_OQR |
| s1208 | 107 | linear | OYQ | lo | 6776/15625 | lo_OQR,s1160,lo_YQR |
| s1218 | 110 | linear | HDY | lo | 370693/1000000 | lo_DYP,lo_HDP,s1134 |
| s1228 | 114 | linear | CFQ | lo | 558743/1000000 | s1111,lo_CQR,s1150 |
| s1230 | 115 | linear | CYP | lo | 77861/250000 | s1137,lo_CZP,lo_YZP |
| s1234 | 118 | linear | DFY | lo | 74313/200000 | s1116,lo_DYP,s1173 |
| s1238 | 119 | linear | DYQ | lo | 25933/62500 | lo_DYZ,s1166,lo_YZQ |
| s1246 | 126 | support_z | CFY | lo | 16883/100000 | s1230,s918 |
| s1248 | 128 | linear | CDF | hi | 849367/1000000 | s1126 |
| s1250 | 129 | bary_hi | FYZ | lo | 64621/500000 | hi_OHC,lo_HCY,s1131,s1129,s1200,s1033,lo_CFZ |
| s1259 | 135 | bary_lo | CFP | hi | 7003/15625 | hi_OHD,lo_HDP,lo_ODP,s1184,s1190,s1126,s1248 |
| s1276 | 137 | bary_hi | FYQ | lo | 155069/500000 | s946,s1021,s1160,s1129,s1205,s1123,s1150 |
| s1311 | 154 | bary_lo | OCY | lo | 5323/25000 | hi_OFQ,s1276,s1208,lo_OFY,s1190,lo_OCQ |
| s1321 | 158 | bary_lo | FYQ | hi | 114929/250000 | hi_OFQ,s1276,s1208,lo_OFY,hi_OFQ |
| s1332 | 159 | bary_hi | OYQ | hi | 559197/1000000 | s1206,s1028,s1160,lo_OFY,hi_OFQ,s1149 |
| s1340 | 162 | bary_lo | OFR | hi | 69239/100000 | s1332,lo_YQR,lo_OQR,s1160,s677,hi_OFQ |
| s1351 | 164 | bary_hi | DQR | lo | 143823/1000000 | s1332,lo_YQR,lo_OQR,s1160,s1199,s1238 |
| s1352 | 165 | bary_hi | FYR | hi | 291339/1000000 | s1332,lo_YQR,lo_OQR,s1160,lo_OFY,s1321 |
| s1404 | 176 | bary_hi | OHR | lo | 122033/200000 | hi_CDQ,s1351,lo_CQR,lo_CDR,s1181,s1061,s1188 |
| s1405 | 177 | bary_hi | OFR | lo | 158297/250000 | hi_CDQ,s1351,lo_CQR,lo_CDR,s1190,s1062,s1205 |
| s1406 | 178 | bary_hi | OYR | lo | 55579/200000 | hi_CDQ,s1351,lo_CQR,lo_CDR,s1311,s1198,s1208 |
| s1412 | 182 | bary_lo | HYR | lo | 11891/62500 | hi_CDQ,s1351,lo_CQR,lo_CDR,lo_HCY,s1218,s1133 |
| s1413 | 183 | bary_hi | CFR | lo | 277393/1000000 | hi_CDQ,s1351,lo_CQR,lo_CDR,lo_CDF,s1228 |
| s1418 | 187 | bary_lo | FYR | lo | 24501/100000 | hi_CDQ,s1351,lo_CQR,lo_CDR,s1246,s1234,s1276 |
| s1465 | 1 | sum | OCF | lo | 1899/4000 | s1246,s1311,lo_OFY |
| s1469 | 9 | sum | OFQ | lo | 921067/1000000 | s1150,s1405,lo_OQR |
| s1470 | 9 | sub | FQR | hi | 8131/31250 | hi_OFQ,s1405,lo_OQR |
| s1473 | 10 | sub | OYR | hi | 17719/50000 | s1340,s1418,lo_OFY |
| s1487 | 19 | sum | CFQ | lo | 70659/125000 | s1413,lo_CQR,s1150 |
| s1531 | 50 | sumlo | OHY | lo | 149441/1000000 | lo_HFY,s1406,s1412,lo_OFY,s1352 |
| s1557 | 62 | sumlo | HQR | lo | 105027/500000 | s1412,lo_OQR,s1404,lo_YQR,s1473 |
| s1562 | 64 | sumlo | OYR | lo | 78473/250000 | s1418,lo_OQR,s1405,lo_YQR,s1470 |
| s1570 | 68 | balance_lo | HYQ | lo | 293797/1000000 | lo_YQR,lo_OHF,s1557,lo_OFY,s1412,s1469,s1340 |
| s1623 | 86 | balance_lo | OCY | lo | 131637/500000 | s1465,lo_YQR,s1246,lo_OQR,lo_OFY,lo_CQR,s1470 |
| s1626 | 89 | balance_lo | CYZ | lo | 6989/50000 | s1246,lo_ZQR,s1250,lo_CQR,lo_CFZ,lo_YQR,s1470 |
| s1627 | 90 | linear | OHC | lo | 101143/200000 | lo_HCY,s1623,s1531 |
| s1642 | 96 | linear | OCF | lo | 32819/62500 | s1246,s1623,lo_OFY |
| s1643 | 97 | linear | OCF | hi | 151777/250000 | s1487,hi_OCQ,hi_OFQ |
| s1644 | 97 | linear | OCQ | lo | 25999/250000 | s1487,s1642,hi_OFQ |
| s1657 | 105 | linear | OFR | lo | 325951/500000 | s1418,lo_OFY,s1562 |
| s1662 | 106 | linear | FQR | hi | 120739/500000 | hi_OFQ,s1657,lo_OQR |
| s1665 | 107 | linear | OYQ | lo | 124973/250000 | lo_OQR,s1562,lo_YQR |
| s1696 | 115 | linear | CYP | lo | 16289/50000 | s1626,lo_CZP,lo_YZP |
| s1710 | 126 | support_z | CFY | lo | 3661/20000 | s1696,s1259 |
| s1739 | 136 | bary_lo | OCY | lo | 33543/125000 | hi_OHQ,s1570,s1665,s1531,s1627,s1644 |
| s1784 | 140 | bary_lo | YQR | hi | 5587/62500 | s1643,s1710,lo_OFY,s1739,lo_OQR,lo_CQR,s1662 |

## Conclusion

{"triangle":"YQR","lower":"lo_YQR","upper":"s1784"}
