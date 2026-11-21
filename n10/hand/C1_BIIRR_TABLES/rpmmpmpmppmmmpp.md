# Leaf rpmmpmpmppmmmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":1,"OZR":-1,"HPQ":-1,"HPR":-1,"HQR":1,"CFZ":1}

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
| 16 | extreme | ["CZQ","F","ZQF",1] |
| 17 | extreme | ["DFZ","O","FZO",-1] |
| 18 | extreme | ["DYQ","O","YQO",-1] |
| 19 | extreme | ["DYR","O","YRO",-1] |
| 20 | interior_line | ["OZ","R","ODQ","Q",-1] |
| 21 | interior_line | ["HY","Z","HCDF","Z",1] |
| 22 | interior_line | ["HY","P","HCDF","P",1] |
| 23 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 24 | interior_line | ["CY","P","HCDF","P",-1] |
| 25 | interior_line | ["CZ","R","CDQ","R",-1] |
| 26 | interior_line | ["CP","R","CDQ","R",-1] |
| 27 | interior_line | ["DZ","R","CDQ","R",1] |
| 28 | interior_line | ["DP","R","CDQ","R",1] |
| 29 | interior_line | ["FZ","R","CDQ","R",1] |
| 30 | interior_line | ["ZQ","Y","OHC","H",1] |
| 31 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 32 | interior_line | ["QR","Y","OHC","Y",1] |
| 33 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 34 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 35 | capacity | ["OCF","Z","P","CFP",-1,"127/200","C012"] |
| 36 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 37 | plu | ["OHDYZ","OYZ",-1] |
| 38 | plu | ["OHDPR","OPR",-1] |
| 39 | plu | ["HOZQR","HZR",1] |
| 40 | plu | ["DOHYZ","DYZ",1] |
| 41 | plu | ["DOHZP","DZP",-1] |
| 42 | plu | ["FOHYZ","FYZ",1] |
| 43 | plu | ["FOHYP","FYP",1] |
| 44 | plu | ["YODZP","YZP",1] |
| 45 | plu | ["YODPR","YPR",-1] |
| 46 | plu | ["YOZQR","YZR",1] |
| 47 | plu | ["ZOHPQ","ZPQ",-1] |
| 48 | plu | ["ZOHPR","ZPR",-1] |
| 49 | plu | ["QOHZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OHR | OHR | lo | 347/500 | ["cost","YZ"] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_ODR | ODR | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCF | HCF | lo | 279/1000 | ["cost","Z"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HCQ | HCQ | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 347/500 | ["cost","PR"] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HQR | HQR | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 279/1000 | ["cost","Z"] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CYR | CYR | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YZR | YZR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OHR | OHR | hi | 9197/10000 | "C063" |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_HFQ | HFQ | hi | 65369/100000 | "C037" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 2 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 3 | ["fan","OHQ","HYQ","OHY","OYQ"] | ["fan","OHQ","Y"] |
| 4 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 5 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 6 | ["fan","OCF","CFZ","OCZ","OFZ"] | ["fan","OCF","Z"] |
| 7 | ["fan","ODR","DZR","ODZ","OZR"] | ["fan","ODR","Z"] |
| 8 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 9 | ["fan","HCF","CFZ","HCZ","HFZ"] | ["fan","HCF","Z"] |
| 10 | ["fan","HCP","CZP","HCZ","HZP"] | ["fan","HCP","Z"] |
| 11 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 12 | ["fan","HCR","CZR","HCZ","HZR"] | ["fan","HCR","Z"] |
| 13 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 14 | ["fan","HDQ","DQR","HDR","HQR"] | ["fan","HDQ","R"] |
| 15 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 16 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 17 | ["fan","CFY","CFZ","CYZ","FYZ"] | ["fan","CFY","Z"] |
| 18 | ["fan","CYP","CYZ","CZP","YZP"] | ["fan","CYP","Z"] |
| 19 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 20 | ["fan","CYR","CYZ","CZR","YZR"] | ["fan","CYR","Z"] |
| 21 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 22 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 23 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 24 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 25 | ["plu","HCD","OHZ","HCZ","OHD","HDZ","OHC"] | ["plu","HOCDZ"] |
| 26 | ["plu","HFY","OHC","HCF","OHY","HCY","OHF"] | ["plu","HOCFY"] |
| 27 | ["plu","HFY","OHD","HDF","OHY","HDY","OHF"] | ["plu","HODFY"] |
| 28 | ["plu","HCD","HYZ","HCY","HDZ","HCZ","HDY"] | ["plu","HCDYZ"] |
| 29 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 30 | ["plu","HCD","HYR","HCR","HDY","HCY","HDR"] | ["plu","HCDYR"] |
| 31 | ["plu","HCP","HDQ","HCD","HPQ","HCQ","HDP"] | ["plu","HCDPQ"] |
| 32 | ["plu","HCF","OCZ","CFZ","OHC","HCZ","OCF"] | ["plu","COHFZ"] |
| 33 | ["plu","CDZ","HCF","CDF","HCZ","CFZ","HCD"] | ["plu","CHDFZ"] |
| 34 | ["plu","CDY","CFR","CDF","CYR","CDR","CFY"] | ["plu","CDFYR"] |
| 35 | ["plu","HDY","ODP","DYP","OHD","HDP","ODY"] | ["plu","DOHYP"] |
| 36 | ["plu","DPQ","OHD","HDP","ODQ","HDQ","ODP"] | ["plu","DOHPQ"] |
| 37 | ["plu","HDR","ODQ","DQR","OHD","HDQ","ODR"] | ["plu","DOHQR"] |
| 38 | ["plu","DFR","ODQ","DFQ","ODR","DQR","ODF"] | ["plu","DOFQR"] |
| 39 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 40 | ["plu","CDP","HDY","CDY","HDP","DYP","HCD"] | ["plu","DHCYP"] |
| 41 | ["plu","DYQ","HCD","CDQ","HDY","CDY","HDQ"] | ["plu","DHCYQ"] |
| 42 | ["plu","CDP","HDZ","CDZ","HDP","DZP","HCD"] | ["plu","DHCZP"] |
| 43 | ["plu","DZP","HDY","DYP","HDZ","DYZ","HDP"] | ["plu","DHYZP"] |
| 44 | ["plu","DPQ","HDZ","DZP","HDQ","DZQ","HDP"] | ["plu","DHZPQ"] |
| 45 | ["plu","DPR","HDZ","DZP","HDR","DZR","HDP"] | ["plu","DHZPR"] |
| 46 | ["plu","DYQ","DZP","DPQ","DYZ","DYP","DZQ"] | ["plu","DYZPQ"] |
| 47 | ["plu","CDF","HFP","CFP","HDF","DFP","HCF"] | ["plu","FHCDP"] |
| 48 | ["plu","CDF","FYP","CFP","DFY","CFY","DFP"] | ["plu","FCDYP"] |
| 49 | ["plu","HYR","OCY","CYR","OHY","HCY","OYR"] | ["plu","YOHCR"] |
| 50 | ["plu","CDZ","HFZ","CFZ","HDZ","DFZ","HCZ"] | ["plu","ZHCDF"] |
| 51 | ["plu","CDZ","HZP","CZP","HDZ","DZP","HCZ"] | ["plu","ZHCDP"] |
| 52 | ["plu","DFZ","HZP","DZP","HFZ","FZP","HDZ"] | ["plu","ZHDFP"] |
| 53 | ["plu","CDZ","FYZ","CFZ","DYZ","CYZ","DFZ"] | ["plu","ZCDFY"] |
| 54 | ["plu","CZP","DFZ","CDZ","FZP","CFZ","DZP"] | ["plu","ZCDFP"] |
| 55 | ["plu","CZQ","DYZ","CDZ","YZQ","CYZ","DZQ"] | ["plu","ZCDYQ"] |
| 56 | ["plu","HDQ","OQR","DQR","OHQ","HQR","ODQ"] | ["plu","QOHDR"] |
| 57 | ["plu","DYQ","HCQ","CDQ","HYQ","CYQ","HDQ"] | ["plu","QHCDY"] |
| 58 | ["plu","DYQ","HZQ","DZQ","HYQ","HDQ","YZQ"] | ["plu","QHDYZ"] |
| 59 | ["balance",[[-1,"HCF","ODZ"],[-1,"CFZ","OHD"],[1,"HFZ","OCD"],[-1,"HCZ","ODF"]]] | ["six","ODHCFZ"] |
| 60 | ["balance",[[1,"HCZ","ODP"],[1,"CZP","OHD"],[-1,"HZP","OCD"],[1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 61 | ["balance",[[-1,"CYZ","ODP"],[1,"YZP","OCD"],[-1,"CZP","ODY"],[-1,"CYP","ODZ"]]] | ["six","ODCYZP"] |
| 62 | ["balance",[[1,"HDQ","OZR"],[1,"DQR","OHZ"],[1,"HQR","ODZ"],[-1,"HDR","OZQ"]]] | ["six","OZHDQR"] |
| 63 | ["balance",[[1,"CDF","OZQ"],[1,"DFZ","OCQ"],[1,"CFZ","ODQ"],[-1,"CDZ","OFQ"]]] | ["six","OQCDFZ"] |
| 64 | ["balance",[[1,"ODF","HCZ"],[1,"DFZ","OHC"],[-1,"OFZ","HCD"],[1,"ODZ","HCF"]]] | ["six","HCODFZ"] |
| 65 | ["balance",[[-1,"OYZ","HCQ"],[1,"YZQ","OHC"],[1,"OZQ","HCY"],[1,"OYQ","HCZ"]]] | ["six","HCOYZQ"] |
| 66 | ["balance",[[1,"DFY","HCZ"],[-1,"FYZ","HCD"],[1,"DYZ","HCF"],[1,"DFZ","HCY"]]] | ["six","HCDFYZ"] |
| 67 | ["balance",[[1,"DFZ","HCP"],[-1,"FZP","HCD"],[-1,"DZP","HCF"],[-1,"DFP","HCZ"]]] | ["six","HCDFZP"] |
| 68 | ["balance",[[1,"DYZ","HCQ"],[-1,"YZQ","HCD"],[-1,"DZQ","HCY"],[-1,"DYQ","HCZ"]]] | ["six","HCDYZQ"] |
| 69 | ["balance",[[-1,"CFY","HDP"],[1,"FYP","HCD"],[-1,"CYP","HDF"],[-1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 70 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 71 | ["balance",[[-1,"ODZ","HQR"],[1,"DZR","OHQ"],[-1,"OZR","HDQ"],[-1,"ODR","HZQ"]]] | ["six","HQODZR"] |
| 72 | ["balance",[[-1,"HYZ","CDQ"],[-1,"YZQ","HCD"],[1,"HZQ","CDY"],[-1,"HYQ","CDZ"]]] | ["six","CDHYZQ"] |
| 73 | ["balance",[[1,"ODZ","CFR"],[-1,"DZR","OCF"],[1,"OZR","CDF"],[1,"ODR","CFZ"]]] | ["six","CFODZR"] |
| 74 | ["balance",[[1,"HDY","CFP"],[1,"DYP","HCF"],[-1,"HYP","CDF"],[1,"HDP","CFY"]]] | ["six","CFHDYP"] |
| 75 | ["balance",[[1,"HDZ","CFP"],[1,"DZP","HCF"],[-1,"HZP","CDF"],[1,"HDP","CFZ"]]] | ["six","CFHDZP"] |
| 76 | ["balance",[[1,"HDY","CZP"],[1,"DYP","HCZ"],[-1,"HYP","CDZ"],[1,"HDP","CYZ"]]] | ["six","CZHDYP"] |
| 77 | ["balance",[[-1,"HCZ","DYP"],[-1,"CZP","HDY"],[1,"HZP","CDY"],[-1,"HCP","DYZ"]]] | ["six","DYHCZP"] |
| 78 | ["balance",[[-1,"HCY","DPR"],[-1,"CYR","HDP"],[1,"HYR","CDP"],[-1,"HCR","DYP"]]] | ["six","DPHCYR"] |
| 79 | ["balance",[[1,"HCD","FYQ"],[-1,"CDQ","HFY"],[-1,"HDQ","CFY"],[-1,"HCQ","DFY"]]] | ["six","FYHCDQ"] |
| 80 | ["balance",[[1,"OCD","FZQ"],[-1,"CDQ","OFZ"],[-1,"ODQ","CFZ"],[-1,"OCQ","DFZ"]]] | ["six","FZOCDQ"] |
| 81 | ["balance",[[-1,"HDY","FZP"],[-1,"DYP","HFZ"],[1,"HYP","DFZ"],[-1,"HDP","FYZ"]]] | ["six","FZHDYP"] |
| 82 | ["balance",[[1,"OHD","FZP"],[-1,"HDZ","OFP"],[1,"ODZ","HFP"],[1,"OHZ","DFP"]]] | ["six","FPOHDZ"] |
| 83 | ["balance",[[-1,"OHD","YZQ"],[-1,"HDQ","OYZ"],[-1,"ODQ","HYZ"],[1,"OHQ","DYZ"]]] | ["six","YZOHDQ"] |
| 84 | ["balance",[[1,"HCD","YZQ"],[1,"CDQ","HYZ"],[1,"HDQ","CYZ"],[-1,"HCQ","DYZ"]]] | ["six","YZHCDQ"] |
| 85 | ["balance",[[-1,"HCD","YPQ"],[1,"CDQ","HYP"],[1,"HDQ","CYP"],[1,"HCQ","DYP"]]] | ["six","YPHCDQ"] |
| 86 | ["balance",[[-1,"ODZ","YQR"],[1,"DZR","OYQ"],[-1,"OZR","DYQ"],[-1,"ODR","YZQ"]]] | ["six","YQODZR"] |
| 87 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 88 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDQ","OZR"],[1,"ODQ","CZR"],[-1,"OCQ","DZR"]]] | ["six","ZROCDQ"] |
| 89 | ["balance",[[1,"HDY","ZQR"],[-1,"DYQ","HZR"],[1,"HYQ","DZR"],[1,"HDQ","YZR"]]] | ["six","ZRHDYQ"] |
| 90 | ["balance",[[-1,"OHD","ZQR"],[1,"HDZ","OQR"],[-1,"ODZ","HQR"],[-1,"OHZ","DQR"]]] | ["six","QROHDZ"] |
| 91 | ["balance",[[-1,"HDY","ZQR"],[-1,"DYZ","HQR"],[-1,"HYZ","DQR"],[1,"HDZ","YQR"]]] | ["six","QRHDYZ"] |
| 92 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 93 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 94 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 95 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 96 | ["linear",{"OHZ":-1,"OZR":-1,"OHR":1,"HZR":-1},"0"] | ["affine_quad","OHZR",1] |
| 97 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 98 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 99 | ["linear",{"OCF":1,"OFZ":-1,"OCZ":-1,"CFZ":-1},"0"] | ["affine_quad","OCFZ",1] |
| 100 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 101 | ["linear",{"ODZ":-1,"OZR":-1,"ODR":1,"DZR":-1},"0"] | ["affine_quad","ODZR",1] |
| 102 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 103 | ["linear",{"OFZ":-1,"OZQ":-1,"OFQ":1,"FZQ":-1},"0"] | ["affine_quad","OFZQ",1] |
| 104 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 105 | ["linear",{"OYZ":-1,"OZR":-1,"OYR":1,"YZR":-1},"0"] | ["affine_quad","OYZR",1] |
| 106 | ["linear",{"HCD":1,"HDY":-1,"HCY":1,"CDY":-1},"0"] | ["affine_quad","HCDY",1] |
| 107 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 108 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 109 | ["linear",{"HCF":1,"HFZ":-1,"HCZ":-1,"CFZ":-1},"0"] | ["affine_quad","HCFZ",1] |
| 110 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 111 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 112 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 113 | ["linear",{"CDF":1,"CFP":-1,"CDP":-1,"DFP":-1},"0"] | ["affine_quad","CDFP",1] |
| 114 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 115 | ["linear",{"CFY":1,"CYZ":-1,"CFZ":-1,"FYZ":-1},"0"] | ["affine_quad","CFYZ",1] |
| 116 | ["linear",{"CYZ":-1,"CZP":-1,"CYP":1,"YZP":-1},"0"] | ["affine_quad","CYZP",1] |
| 117 | ["linear",{"CYZ":-1,"CZQ":-1,"CYQ":1,"YZQ":-1},"0"] | ["affine_quad","CYZQ",1] |
| 118 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 119 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 120 | ["support","HDQ","HFQ","DFQ","53103/62500"] | ["support_quad","QHFD","PR","1142/125"] |
| 121 | ["quad","DFZ","DZQ","93/125"] | ["quad","DFZQ","PR"] |
| 122 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 123 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 124 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 125 | ["bary",["HFY",-1],[["OHF",-1],null,["HCF",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HF"] |
| 126 | ["bary",["HYR",-1],[["OHR",-1],null,["HCR",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HR"] |
| 127 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 128 | ["bary",["OYQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OQ"] |
| 129 | ["bary",["OYR",1],[null,["OHR",1],["ODR",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OR"] |
| 130 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 131 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CD"] |
| 132 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CQ"] |
| 133 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 134 | ["bary",["CDP",1],[["OCD",1],["HCD",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CD"] |
| 135 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DZQ",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","DQ"] |
| 136 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["FZP",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FP"] |
| 137 | ["bary",["YQR",1],[["OQR",1],["HQR",1],["ZQR",1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","QR"] |
| 138 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 139 | ["bary",["HDY",-1],[["OHD",-1],null,["HDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HD"] |
| 140 | ["bary",["HDY",-1],[["OHD",-1],null,["HDR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","HD"] |
| 141 | ["bary",["YZP",-1],[["OYP",-1],["CYP",-1],["DYP",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","YP"] |
| 142 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHF",-1]],"OCF",["CFZ","OFZ","OCZ"]] | ["bary","OCF","Z","OH"] |
| 143 | ["bary",["DZR",-1],[["ODR",-1],["CDR",-1],["DPR",-1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","DR"] |
| 144 | ["bary",["OFZ",-1],[null,["ODF",-1],["OFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OF"] |
| 145 | ["bary",["FYZ",1],[["OFY",1],["DFY",1],["FYQ",1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","FY"] |
| 146 | ["bary",["OHR",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","OH"] |
| 147 | ["bary",["HDR",-1],[["OHD",-1],null,["HDQ",-1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","HD"] |
| 148 | ["bary",["DFR",1],[["ODF",1],null,["DFQ",1]],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","DF"] |
| 149 | ["bary",["CZQ",1],[["OCQ",1],["CDQ",1],["CQR",1]],"ODR",["DZR","OZR","ODZ"]] | ["bary","ODR","Z","CQ"] |
| 150 | ["bary",["HZP",-1],[["OHP",-1],["HYP",-1],["HPQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HP"] |
| 151 | ["bary",["HZR",-1],[["OHR",-1],["HYR",-1],["HQR",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HR"] |
| 152 | ["bary",["CZQ",1],[["OCQ",1],["CYQ",1],["CQR",1]],"OYR",["YZR","OZR","OYZ"]] | ["bary","OYR","Z","CQ"] |
| 153 | ["bary",["HFZ",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HF"] |
| 154 | ["bary",["HYZ",1],[null,["HCY",1],["HDY",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HY"] |
| 155 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 156 | ["bary",["OCZ",1],[["OHC",1],null,["OCF",1]],"HCF",["CFZ","HFZ","HCZ"]] | ["bary","HCF","Z","OC"] |
| 157 | ["bary",["HDZ",-1],[null,["HCD",-1],["HDF",1]],"HCF",["CFZ","HFZ","HCZ"]] | ["bary","HCF","Z","HD"] |
| 158 | ["bary",["HFZ",-1],[null,["HCF",-1],null],"HCF",["CFZ","HFZ","HCZ"]] | ["bary","HCF","Z","HF"] |
| 159 | ["bary",["CDZ",1],[["HCD",1],null,["CDF",1]],"HCF",["CFZ","HFZ","HCZ"]] | ["bary","HCF","Z","CD"] |
| 160 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCF",["CFZ","HFZ","HCZ"]] | ["bary","HCF","Z","DF"] |
| 161 | ["bary",["DYZ",1],[["HDY",-1],["CDY",1],["DFY",-1]],"HCF",["CFZ","HFZ","HCZ"]] | ["bary","HCF","Z","DY"] |
| 162 | ["bary",["DZR",-1],[["HDR",-1],["CDR",-1],["DFR",-1]],"HCF",["CFZ","HFZ","HCZ"]] | ["bary","HCF","Z","DR"] |
| 163 | ["bary",["CDP",1],[["HCD",1],null,["CDY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CD"] |
| 164 | ["bary",["DPQ",-1],[["HDQ",-1],null,["DYQ",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DQ"] |
| 165 | ["bary",["CDP",1],[["HCD",1],null,["CDZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CD"] |
| 166 | ["bary",["DPQ",-1],[["HDQ",-1],null,["DZQ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","DQ"] |
| 167 | ["bary",["ODR",-1],[["OHD",1],null,["ODQ",-1]],"HDQ",["DQR","HQR","HDR"]] | ["bary","HDQ","R","OD"] |
| 168 | ["bary",["YZR",1],[["HYZ",1],["DYZ",1],["YZQ",1]],"HDQ",["DQR","HQR","HDR"]] | ["bary","HDQ","R","YZ"] |
| 169 | ["bary",["OYP",-1],[["OCY",-1],["ODY",-1],["OFY",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OY"] |
| 170 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 171 | ["bary",["FYP",1],[["CFY",1],["DFY",1],null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","FY"] |
| 172 | ["bary",["HDZ",-1],[["HCD",-1],["HDY",-1],["HDQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","HD"] |
| 173 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 174 | ["bary",["YZP",-1],[["CYP",-1],null,["YPQ",-1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","YP"] |
| 175 | ["bary",["OYP",-1],[["ODY",-1],["OFY",-1],["OYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OY"] |
| 176 | ["bary",["HDP",-1],[null,["HDF",1],["HDZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HD"] |
| 177 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 178 | ["bary",["HZP",1],[["HDZ",1],["HFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HZ"] |
| 179 | ["bary",["CDP",1],[null,["CDF",1],["CDZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CD"] |
| 180 | ["bary",["DZP",-1],[null,["DFZ",-1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","DZ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 407/500 | hi_OHD,lo_ODY,lo_OHY |
| s13 | 4 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s17 | 5 | sub | CDZ | hi | 77989/200000 | hi_OCD,lo_OCZ,lo_ODZ |
| s38 | 8 | sub | HDZ | hi | 788053/1000000 | hi_HCD,lo_CDZ,lo_HCZ |
| s43 | 9 | sub | HFZ | hi | 449/1000 | hi_HCF,lo_CFZ,lo_HCZ |
| s52 | 14 | sub | HDR | hi | 588959/1000000 | hi_HDQ,lo_DQR,lo_HQR |
| s82 | 24 | sumlo | ODY | lo | 92689/500000 | lo_ODF,lo_OYQ,lo_ODQ,lo_OFY,hi_OFQ |
| s93 | 29 | sumlo | HYQ | lo | 5847/40000 | lo_HCQ,lo_HDY,lo_HCY,lo_HDQ,hi_HCD |
| s98 | 33 | sumlo | CDZ | lo | 155097/1000000 | lo_CDF,lo_HCZ,lo_CFZ,lo_HCD,hi_HCF |
| s103 | 34 | sumlo | CFR | lo | 10653/62500 | lo_CDF,lo_CYR,lo_CDR,lo_CFY,hi_CDY |
| s105 | 35 | sumlo | ODP | lo | 100469/1000000 | lo_DYP,lo_OHD,lo_HDP,s82,s1 |
| s110 | 36 | sumlo | DPQ | lo | 134267/1000000 | lo_HDP,lo_ODQ,lo_HDQ,s105,hi_OHD |
| s115 | 39 | sumlo | ODP | lo | 64823/500000 | s110,s82,lo_DYP,lo_ODQ,hi_DYQ |
| s127 | 49 | sumlo | OCY | lo | 23687/250000 | lo_CYR,lo_OHY,lo_HCY,lo_OYR,s13 |
| s139 | 56 | sumlo | OQR | lo | 20821/125000 | lo_DQR,lo_OHQ,lo_HQR,lo_ODQ,hi_HDQ |
| s148 | 57 | sumlo | HCQ | lo | 67963/200000 | lo_CDQ,s93,lo_CYQ,lo_HDQ,hi_DYQ |
| s155 | 59 | balance_lo | HFZ | lo | 225587/1000000 | lo_HCF,lo_ODZ,lo_CFZ,lo_OHD,lo_HCZ,lo_ODF,hi_OCD |
| s158 | 60 | balance_lo | HZP | lo | 2782/15625 | lo_HCZ,s115,lo_CZP,lo_OHD,lo_HCP,lo_ODZ,hi_OCD |
| s163 | 61 | balance_lo | YZP | lo | 95919/1000000 | lo_CYZ,s115,lo_CZP,s82,lo_CYP,lo_ODZ,hi_OCD |
| s167 | 62 | balance_lo | OZQ | lo | 168327/1000000 | lo_HDQ,lo_OZR,lo_DQR,lo_OHZ,lo_HQR,lo_ODZ,s52 |
| s170 | 64 | balance_lo | OFZ | lo | 919/6250 | lo_ODF,lo_HCZ,lo_DFZ,lo_OHC,lo_ODZ,lo_HCF,hi_HCD |
| s178 | 70 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s182 | 72 | balance_lo | HZQ | lo | 5079/31250 | lo_HYZ,lo_CDQ,lo_YZQ,lo_HCD,s178,s98,hi_CDY |
| s183 | 73 | balance_lo | DZR | lo | 119281/1000000 | lo_ODZ,s103,lo_OZR,lo_CDF,lo_ODR,lo_CFZ,hi_OCF |
| s185 | 76 | balance_lo | HYP | lo | 1109/10000 | lo_HDY,lo_CZP,lo_DYP,lo_HCZ,lo_HDP,lo_CYZ,s17 |
| s192 | 79 | balance_lo | FYQ | lo | 64551/200000 | lo_CDQ,lo_HFY,lo_HDQ,lo_CFY,s148,lo_DFY,hi_HCD |
| s193 | 80 | balance_lo | FZQ | lo | 228343/1000000 | lo_CDQ,s170,lo_ODQ,lo_CFZ,lo_OCQ,lo_DFZ,hi_OCD |
| s196 | 82 | balance_lo | OFP | lo | 125801/1000000 | lo_OHD,lo_FZP,lo_ODZ,lo_HFP,lo_OHZ,lo_DFP,s38 |
| s197 | 83 | balance_lo | DYZ | lo | 96813/500000 | lo_OHD,lo_YZQ,lo_HDQ,lo_OYZ,lo_ODQ,lo_HYZ,hi_OHQ |
| s204 | 89 | balance_lo | HZR | lo | 166137/1000000 | lo_HDY,lo_ZQR,s178,s183,lo_HDQ,lo_YZR,hi_DYQ |
| s211 | 95 | linear | OHP | lo | 2969/10000 | s185,lo_OHY,lo_OYP |
| s215 | 96 | linear | OHZ | hi | 660563/1000000 | s204,hi_OHR,lo_OZR |
| s219 | 98 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s220 | 99 | linear | OCF | lo | 4163/12500 | lo_CFZ,lo_OCZ,s170 |
| s225 | 101 | linear | ODR | lo | 305281/1000000 | s183,lo_ODZ,lo_OZR |
| s228 | 102 | linear | ODR | hi | 31311/62500 | lo_DQR,hi_ODQ,s139 |
| s229 | 103 | linear | OFQ | lo | 54371/100000 | s193,s170,s167 |
| s234 | 104 | linear | OYQ | lo | 354327/1000000 | lo_OYZ,s167,lo_YZQ |
| s239 | 108 | linear | HCQ | hi | 700053/1000000 | hi_CDQ,hi_HCD,lo_HDQ |
| s240 | 109 | linear | HCF | lo | 411587/1000000 | lo_CFZ,lo_HCZ,s155 |
| s243 | 110 | linear | HCP | lo | 22753/62500 | lo_CZP,lo_HCZ,s158 |
| s246 | 111 | linear | HCR | lo | 352137/1000000 | lo_CZR,lo_HCZ,s204 |
| s249 | 112 | linear | HDY | lo | 2969/10000 | lo_DYP,lo_HDP,s185 |
| s258 | 114 | linear | CDY | lo | 441723/1000000 | s98,lo_CYZ,s197 |
| s262 | 116 | linear | CYP | lo | 281919/1000000 | lo_CYZ,lo_CZP,s163 |
| s265 | 119 | linear | DZQ | lo | 305281/1000000 | lo_DQR,s183,lo_ZQR |
| s268 | 120 | support_z | DFQ | lo | 8003/50000 | lo_HDQ,hi_HFQ |
| s269 | 122 | linear | OHC | lo | 367/1000 | s219 |
| s270 | 123 | linear | HCD | hi | 907/1000 | lo_HDF |
| s271 | 124 | linear | CDF | hi | 588413/1000000 | s240 |
| s273 | 125 | bary_hi | HFY | lo | 101141/1000000 | hi_OHC,lo_HCY,s127,lo_OHY,lo_OHF,s240 |
| s275 | 126 | bary_hi | HYR | lo | 153213/1000000 | hi_OHC,lo_HCY,s127,lo_OHY,lo_OHR,s246 |
| s283 | 127 | bary_hi | FYP | lo | 97803/1000000 | hi_OHC,lo_HCY,s127,lo_OHY,s196,lo_HFP,lo_CFP |
| s295 | 128 | bary_hi | OYQ | hi | 680831/1000000 | hi_OHD,s249,s82,lo_OHY,hi_OHQ,hi_ODQ |
| s300 | 132 | bary_hi | CYQ | hi | 260693/500000 | hi_OHD,s249,s82,lo_OHY,hi_OCQ,s239,hi_CDQ |
| s306 | 133 | bary_hi | OCP | hi | 139603/250000 | hi_OHD,lo_HDP,s115,s211,hi_OHC,hi_OCD |
| s316 | 134 | bary_lo | CDP | lo | 24821/200000 | hi_OHD,lo_HDP,s115,s211,s219,lo_HCD |
| s346 | 135 | bary_hi | DYQ | lo | 82947/200000 | s215,lo_HYZ,lo_OYZ,lo_OHY,lo_ODQ,lo_HDQ,s265 |
| s349 | 138 | bary_lo | OCY | lo | 138687/1000000 | hi_OHQ,s178,s234,lo_OHY,s269,lo_OCQ |
| s351 | 139 | bary_lo | HDY | hi | 124949/200000 | hi_OHQ,s178,s234,lo_OHY,hi_OHD,hi_HDQ |
| s377 | 141 | bary_hi | YZP | lo | 24701/200000 | hi_OCD,s98,lo_ODZ,lo_OCZ,lo_OYP,s262,lo_DYP |
| s378 | 142 | bary_lo | OHZ | hi | 271/500 | hi_OCF,lo_CFZ,s170,lo_OCZ,hi_OHC,hi_OHF |
| s385 | 143 | bary_hi | DZR | lo | 64177/500000 | s306,lo_CZP,lo_OZP,lo_OCZ,s225,lo_CDR,lo_DPR |
| s389 | 144 | bary_hi | OFZ | lo | 160339/1000000 | hi_ODQ,s265,s167,lo_ODZ,lo_ODF,s229 |
| s397 | 145 | bary_lo | FYZ | lo | 162261/1000000 | hi_ODQ,s265,s167,lo_ODZ,lo_OFY,lo_DFY,s192 |
| s400 | 146 | bary_lo | OHR | hi | 877719/1000000 | hi_ODQ,lo_DQR,s139,s225,hi_OHD,hi_OHQ |
| s407 | 147 | bary_hi | HDR | lo | 363433/1000000 | hi_ODQ,lo_DQR,s139,s225,lo_OHD,lo_HDQ |
| s419 | 148 | bary_lo | DFR | lo | 116101/1000000 | hi_ODQ,lo_DQR,s139,s225,lo_ODF,s268 |
| s430 | 149 | bary_lo | CZQ | lo | 15941/125000 | s228,s385,lo_OZR,lo_ODZ,lo_OCQ,lo_CDQ,lo_CQR |
| s438 | 151 | bary_hi | HZR | lo | 94991/500000 | s295,lo_YZQ,s167,lo_OYZ,lo_OHR,s275,lo_HQR |
| s459 | 155 | bary_lo | HYP | lo | 2011/15625 | s270,s316,lo_HDP,s243,lo_HCY,s249 |
| s474 | 156 | bary_lo | OCZ | lo | 4101/40000 | hi_HCF,lo_CFZ,s155,lo_HCZ,s269,s220 |
| s479 | 157 | bary_lo | HDZ | hi | 156927/250000 | hi_HCF,lo_CFZ,s155,lo_HCZ,s270,lo_HDF |
| s482 | 160 | bary_hi | DFZ | hi | 3687/8000 | hi_HCF,lo_CFZ,s155,lo_HCZ,hi_HDF,s271 |
| s485 | 162 | bary_hi | DZR | lo | 13599/100000 | hi_HCF,lo_CFZ,s155,lo_HCZ,s407,lo_CDR,s419 |
| s504 | 163 | bary_lo | CDP | lo | 21133/125000 | s351,lo_DYP,s459,lo_HDP,lo_HCD,s258 |
| s510 | 164 | bary_hi | DPQ | lo | 165047/1000000 | s351,lo_DYP,s459,lo_HDP,lo_HDQ,s346 |
| s527 | 167 | bary_lo | ODR | hi | 494719/1000000 | hi_HDQ,lo_DQR,lo_HQR,s407,lo_OHD,hi_ODQ |
| s540 | 168 | bary_lo | YZR | lo | 4203/40000 | hi_HDQ,lo_DQR,lo_HQR,s407,lo_HYZ,s197,lo_YZQ |
| s544 | 169 | bary_hi | OYP | lo | 114821/1000000 | s271,lo_DFP,lo_CFP,s504,s349,s82,lo_OFY |
| s547 | 170 | bary_hi | CDP | hi | 402413/1000000 | s271,lo_DFP,lo_CFP,s504,s271 |
| s572 | 173 | bary_lo | DZP | lo | 59709/500000 | s300,lo_YZQ,s430,lo_CYZ,s504,lo_DYP,s510 |
| s579 | 177 | bary_lo | HYP | lo | 68127/500000 | s482,lo_FZP,s572,lo_DFP,s249,s273,lo_HYZ |
| s595 | 1 | sum | OHF | lo | 287141/1000000 | s273,lo_OFY,lo_OHY |
| s598 | 6 | sum | OCF | lo | 44483/125000 | lo_CFZ,s474,s389 |
| s600 | 7 | sum | ODR | lo | 32199/100000 | s485,lo_ODZ,lo_OZR |
| s606 | 11 | sum | HCQ | lo | 23941/62500 | s430,lo_HCZ,s182 |
| s607 | 12 | sum | HCR | lo | 187991/500000 | lo_CZR,lo_HCZ,s438 |
| s608 | 13 | sum | HDY | lo | 161127/500000 | lo_DYP,lo_HDP,s579 |
| s610 | 17 | sum | CFY | lo | 348261/1000000 | lo_CFZ,lo_CYZ,s397 |
| s611 | 18 | sum | CYP | lo | 61901/200000 | lo_CYZ,lo_CZP,s377 |
| s612 | 19 | sum | CYQ | lo | 39191/125000 | lo_CYZ,s430,lo_YZQ |
| s613 | 20 | sum | CYR | lo | 11643/40000 | lo_CYZ,lo_CZR,s540 |
| s614 | 21 | sum | DFY | lo | 283803/1000000 | lo_DFP,lo_DYP,s283 |
| s615 | 22 | sum | DFZ | lo | 152709/500000 | lo_DFP,s572,lo_FZP |
| s616 | 23 | sum | DZQ | lo | 32199/100000 | lo_DQR,s485,lo_ZQR |
| s617 | 24 | sumlo | ODY | lo | 108881/500000 | lo_ODF,s234,lo_ODQ,lo_OFY,hi_OFQ |
| s620 | 26 | sumlo | HFY | lo | 102333/1000000 | s240,lo_OHY,lo_HCY,s595,hi_OHC |
| s625 | 29 | sumlo | HYQ | lo | 103629/500000 | s606,s608,lo_HCY,lo_HDQ,s270 |
| s627 | 32 | sumlo | OCZ | lo | 26467/250000 | lo_CFZ,s269,lo_HCZ,s598,hi_HCF |
| s632 | 37 | sumlo | HDR | lo | 9467/25000 | lo_DQR,lo_OHD,lo_HDQ,s600,hi_ODQ |
| s633 | 38 | sumlo | DFR | lo | 59809/500000 | s268,s600,lo_DQR,lo_ODF,hi_ODQ |
| s634 | 39 | sumlo | ODP | lo | 145667/1000000 | s510,s617,lo_DYP,lo_ODQ,hi_DYQ |
| s648 | 57 | sumlo | HCQ | lo | 199629/500000 | lo_CDQ,s625,s612,lo_HDQ,hi_DYQ |
| s649 | 58 | sumlo | HZQ | lo | 47577/250000 | s616,s625,lo_HDQ,lo_YZQ,hi_DYQ |
| s650 | 59 | balance_lo | HFZ | lo | 246997/1000000 | s240,lo_ODZ,lo_CFZ,lo_OHD,lo_HCZ,lo_ODF,hi_OCD |
| s651 | 60 | balance_lo | HZP | lo | 3037/15625 | lo_HCZ,s634,lo_CZP,lo_OHD,s243,lo_ODZ,hi_OCD |
| s655 | 63 | balance_lo | CDZ | lo | 156517/1000000 | lo_CDF,s167,s615,lo_OCQ,lo_CFZ,lo_ODQ,hi_OFQ |
| s657 | 64 | balance_lo | OFZ | lo | 13079/62500 | lo_ODF,lo_HCZ,s615,s269,lo_ODZ,s240,s270 |
| s658 | 65 | balance_lo | OYZ | lo | 118187/1000000 | lo_YZQ,s269,s167,lo_HCY,s234,lo_HCZ,s239 |
| s662 | 69 | balance_lo | FYP | lo | 100487/1000000 | s610,lo_HDP,s611,lo_HDF,lo_CFP,s608,s270 |
| s666 | 74 | balance_lo | HYP | lo | 42757/250000 | s608,lo_CFP,lo_DYP,s240,lo_HDP,s610,s271 |
| s667 | 78 | balance_lo | HYR | lo | 175653/1000000 | lo_HCY,lo_DPR,s613,lo_HDP,s607,lo_DYP,s547 |
| s668 | 79 | balance_lo | FYQ | lo | 211441/500000 | lo_CDQ,s620,lo_HDQ,s610,s648,s614,s270 |
| s673 | 82 | balance_lo | OFP | lo | 9871/62500 | lo_OHD,lo_FZP,lo_ODZ,lo_HFP,lo_OHZ,lo_DFP,s479 |
| s675 | 84 | balance_lo | DYZ | lo | 13841/62500 | lo_HCD,lo_YZQ,lo_CDQ,lo_HYZ,lo_HDQ,lo_CYZ,s239 |
| s679 | 88 | balance_lo | CZR | lo | 47811/500000 | s219,lo_ZQR,lo_CDQ,lo_OZR,lo_OCQ,s485,hi_ODQ |
| s683 | 93 | linear | OHF | lo | 288333/1000000 | s620,lo_OFY,lo_OHY |
| s685 | 94 | linear | OHZ | lo | 304187/1000000 | lo_HYZ,lo_OHY,s658 |
| s689 | 99 | linear | OCF | lo | 102033/250000 | lo_CFZ,s627,s657 |
| s699 | 104 | linear | OYQ | lo | 189757/500000 | s658,s167,lo_YZQ |
| s700 | 105 | linear | OYR | lo | 158131/500000 | s658,lo_OZR,s540 |
| s703 | 108 | linear | HCQ | hi | 633/1000 | hi_CDQ,s270,lo_HDQ |
| s704 | 109 | linear | HCF | lo | 432997/1000000 | lo_CFZ,lo_HCZ,s650 |
| s706 | 110 | linear | HCP | lo | 23773/62500 | lo_CZP,lo_HCZ,s651 |
| s710 | 112 | linear | HDY | lo | 89257/250000 | lo_DYP,lo_HDP,s666 |
| s714 | 114 | linear | CDY | lo | 470973/1000000 | s655,lo_CYZ,s675 |
| s717 | 118 | linear | DFY | lo | 286487/1000000 | lo_DFP,lo_DYP,s662 |
| s719 | 124 | linear | CDF | hi | 567003/1000000 | s704 |
| s734 | 128 | bary_hi | OYQ | hi | 620703/1000000 | hi_OHD,s710,s617,lo_OHY,hi_OHQ,hi_ODQ |
| s735 | 129 | bary_hi | OYR | hi | 52873/100000 | hi_OHD,s710,s617,lo_OHY,s400,s527 |
| s736 | 130 | bary_hi | HFY | lo | 111591/1000000 | hi_OHD,s710,s617,lo_OHY,s683,lo_HDF |
| s737 | 131 | bary_hi | CDY | hi | 352227/500000 | hi_OHD,s710,s617,lo_OHY,hi_OCD,s270 |
| s739 | 132 | bary_hi | CYQ | hi | 567/1250 | hi_OHD,s710,s617,lo_OHY,hi_OCQ,s703,hi_CDQ |
| s748 | 135 | bary_hi | DYQ | lo | 466941/1000000 | s378,lo_HYZ,s658,lo_OHY,lo_ODQ,lo_HDQ,s616 |
| s750 | 136 | bary_hi | FYP | lo | 52071/500000 | s378,lo_HYZ,s658,lo_OHY,s673,lo_HFP,lo_FZP |
| s751 | 137 | bary_lo | YQR | lo | 105623/1000000 | s378,lo_HYZ,s658,lo_OHY,s139,lo_HQR,lo_ZQR |
| s763 | 140 | bary_lo | HDY | hi | 4769/8000 | s400,s667,s700,lo_OHY,hi_OHD,s52 |
| s771 | 141 | bary_hi | YZP | lo | 133889/1000000 | hi_OCD,s655,lo_ODZ,s627,s544,s611,lo_DYP |
| s776 | 145 | bary_lo | FYZ | lo | 176161/1000000 | hi_ODQ,s616,s167,lo_ODZ,lo_OFY,s717,s668 |
| s794 | 151 | bary_hi | HZR | lo | 102731/500000 | s734,lo_YZQ,s167,s658,lo_OHR,s667,lo_HQR |
| s795 | 152 | bary_lo | CZQ | lo | 131789/1000000 | s735,s540,lo_OZR,s658,lo_OCQ,s612,lo_CQR |
| s808 | 156 | bary_lo | OCZ | lo | 113523/1000000 | hi_HCF,lo_CFZ,s650,lo_HCZ,s269,s689 |
| s814 | 162 | bary_hi | DZR | lo | 69369/500000 | hi_HCF,lo_CFZ,s650,lo_HCZ,s632,lo_CDR,s633 |
| s825 | 163 | bary_lo | CDP | lo | 11359/62500 | s763,lo_DYP,s666,lo_HDP,lo_HCD,s714 |
| s830 | 164 | bary_hi | DPQ | lo | 36223/200000 | s763,lo_DYP,s666,lo_HDP,lo_HDQ,s748 |
| s849 | 168 | bary_lo | YZR | lo | 21683/200000 | hi_HDQ,lo_DQR,lo_HQR,s632,lo_HYZ,s675,lo_YZQ |
| s866 | 172 | bary_hi | HDZ | lo | 123801/250000 | s739,lo_YZQ,s795,lo_CYZ,lo_HCD,s710,lo_HDQ |
| s869 | 173 | bary_lo | DZP | lo | 6463/50000 | s739,lo_YZQ,s795,lo_CYZ,s825,lo_DYP,s830 |
| s889 | 1 | sum | OHF | lo | 297591/1000000 | s736,lo_OFY,lo_OHY |
| s891 | 6 | sum | OCF | lo | 415787/1000000 | lo_CFZ,s808,s657 |
| s893 | 7 | sum | ODR | lo | 162369/500000 | s814,lo_ODZ,lo_OZR |
| s895 | 8 | sum | HCD | lo | 744721/1000000 | s655,lo_HCZ,s866 |
| s898 | 11 | sum | HCQ | lo | 415097/1000000 | s795,lo_HCZ,s649 |
| s899 | 12 | sum | HCR | lo | 98521/250000 | s679,lo_HCZ,s794 |
| s902 | 17 | sum | CFY | lo | 362161/1000000 | lo_CFZ,lo_CYZ,s776 |
| s903 | 18 | sum | CYP | lo | 319889/1000000 | lo_CYZ,lo_CZP,s771 |
| s904 | 19 | sum | CYQ | lo | 317789/1000000 | lo_CYZ,s795,lo_YZQ |
| s906 | 21 | sum | DFY | lo | 145071/500000 | lo_DFP,lo_DYP,s750 |
| s907 | 22 | sum | DFZ | lo | 15763/50000 | lo_DFP,s869,lo_FZP |
| s908 | 23 | sum | DZQ | lo | 162369/500000 | lo_DQR,s814,lo_ZQR |
| s910 | 24 | sumlo | ODY | lo | 22859/100000 | lo_ODF,s699,lo_ODQ,lo_OFY,hi_OFQ |
| s911 | 27 | sumlo | HFY | lo | 114897/1000000 | lo_HDF,lo_OHY,s710,s889,hi_OHD |
| s913 | 29 | sumlo | HYQ | lo | 234557/1000000 | s898,s710,lo_HCY,lo_HDQ,s270 |
| s914 | 30 | sumlo | HYR | lo | 193953/1000000 | s899,s710,lo_HCY,s632,s270 |
| s915 | 32 | sumlo | OCZ | lo | 28661/250000 | lo_CFZ,s269,lo_HCZ,s891,hi_HCF |
| s922 | 39 | sumlo | ODP | lo | 76791/500000 | s830,s910,lo_DYP,lo_ODQ,hi_DYQ |
| s927 | 40 | sumlo | CDP | lo | 189657/1000000 | s714,lo_HDP,lo_DYP,s895,s763 |
| s933 | 48 | sumlo | FYP | lo | 10699/100000 | lo_CFP,s906,s902,lo_DFP,s719 |
| s934 | 50 | sumlo | CDZ | lo | 41967/250000 | lo_CFZ,s866,s907,lo_HCZ,s43 |
| s936 | 58 | sumlo | HZQ | lo | 40797/200000 | s908,s913,lo_HDQ,lo_YZQ,hi_DYQ |
| s937 | 59 | balance_lo | HFZ | lo | 125227/500000 | s704,lo_ODZ,lo_CFZ,lo_OHD,lo_HCZ,lo_ODF,hi_OCD |
| s938 | 60 | balance_lo | HZP | lo | 198281/1000000 | lo_HCZ,s922,lo_CZP,lo_OHD,s706,lo_ODZ,hi_OCD |
| s940 | 62 | balance_lo | OZQ | lo | 10769/62500 | lo_HDQ,lo_OZR,lo_DQR,s685,lo_HQR,lo_ODZ,s52 |
| s941 | 64 | balance_lo | OFZ | lo | 107721/500000 | lo_ODF,lo_HCZ,s907,s269,lo_ODZ,s704,s270 |
| s942 | 65 | balance_lo | OYZ | lo | 8437/62500 | lo_YZQ,s269,s940,lo_HCY,s699,lo_HCZ,s703 |
| s945 | 71 | balance_lo | DZR | lo | 17429/125000 | lo_ODZ,lo_HQR,lo_OZR,lo_HDQ,s893,s936,hi_OHQ |
| s946 | 74 | balance_lo | HYP | lo | 188981/1000000 | s710,lo_CFP,lo_DYP,s704,lo_HDP,s902,s719 |
| s948 | 79 | balance_lo | FYQ | lo | 11131/25000 | lo_CDQ,s911,lo_HDQ,s902,s898,s906,s270 |
| s953 | 84 | balance_lo | DYZ | lo | 126183/500000 | s895,lo_YZQ,lo_CDQ,lo_HYZ,lo_HDQ,lo_CYZ,s703 |
| s954 | 85 | balance_lo | YPQ | lo | 17273/50000 | lo_CDQ,s946,lo_HDQ,s903,s898,lo_DYP,s270 |
| s956 | 87 | balance_lo | HZQ | lo | 207979/1000000 | s895,lo_YZQ,s710,s795,lo_HCY,s908,s737 |
| s957 | 88 | balance_lo | CZR | lo | 96043/1000000 | s219,lo_ZQR,lo_CDQ,lo_OZR,lo_OCQ,s945,hi_ODQ |
| s960 | 94 | linear | OHZ | lo | 10031/31250 | lo_HYZ,lo_OHY,s942 |
| s964 | 97 | linear | OCD | lo | 46939/125000 | s934,s915,lo_ODZ |
| s965 | 99 | linear | OCF | lo | 211543/500000 | lo_CFZ,s915,s941 |
| s969 | 101 | linear | ODR | lo | 40679/125000 | s945,lo_ODZ,lo_OZR |
| s974 | 104 | linear | OYQ | lo | 50037/125000 | s942,s940,lo_YZQ |
| s975 | 105 | linear | OYR | lo | 336407/1000000 | s942,lo_OZR,s849 |
| s976 | 107 | linear | HCD | lo | 94509/125000 | s934,lo_HCZ,s866 |
| s978 | 109 | linear | HCF | lo | 218227/500000 | lo_CFZ,lo_HCZ,s937 |
| s982 | 112 | linear | HDY | lo | 374981/1000000 | lo_DYP,lo_HDP,s946 |
| s983 | 113 | linear | CDF | lo | 375657/1000000 | s927,lo_CFP,lo_DFP |
| s984 | 114 | linear | CDY | lo | 256617/500000 | s934,lo_CYZ,s953 |
| s987 | 118 | linear | DFY | lo | 29299/100000 | lo_DFP,lo_DYP,s933 |
| s988 | 119 | linear | DZQ | lo | 40679/125000 | lo_DQR,s945,lo_ZQR |
| s989 | 122 | linear | OHC | lo | 46939/125000 | s964 |
| s991 | 124 | linear | HCF | hi | 624343/1000000 | s983 |
| s992 | 124 | linear | CDF | hi | 281773/500000 | s978 |
| s1000 | 128 | bary_hi | OYQ | hi | 2411/4000 | hi_OHD,s982,s910,lo_OHY,hi_OHQ,hi_ODQ |
| s1001 | 129 | bary_hi | OYR | hi | 512973/1000000 | hi_OHD,s982,s910,lo_OHY,s400,s527 |
| s1007 | 132 | bary_hi | CYQ | hi | 17823/40000 | hi_OHD,s982,s910,lo_OHY,hi_OCQ,s703,hi_CDQ |
| s1021 | 140 | bary_lo | HDY | hi | 286587/500000 | s400,s914,s975,lo_OHY,hi_OHD,s52 |
| s1032 | 145 | bary_lo | FYZ | lo | 9069/50000 | hi_ODQ,s988,s940,lo_ODZ,lo_OFY,s987,s948 |
| s1035 | 147 | bary_hi | HDR | lo | 381821/1000000 | hi_ODQ,lo_DQR,s139,s969,lo_OHD,lo_HDQ |
| s1043 | 148 | bary_lo | DFR | lo | 60171/500000 | hi_ODQ,lo_DQR,s139,s969,lo_ODF,s268 |
| s1049 | 151 | bary_hi | HZR | lo | 53647/250000 | s1000,lo_YZQ,s940,s942,lo_OHR,s914,lo_HQR |
| s1051 | 152 | bary_lo | CZQ | lo | 133753/1000000 | s1001,s849,lo_OZR,s942,lo_OCQ,s904,lo_CQR |
| s1064 | 156 | bary_lo | OCZ | lo | 29739/250000 | s991,lo_CFZ,s937,lo_HCZ,s989,s965 |
| s1069 | 157 | bary_lo | HDZ | hi | 31147/50000 | s991,lo_CFZ,s937,lo_HCZ,s270,lo_HDF |
| s1070 | 158 | bary_lo | HFZ | hi | 438343/1000000 | s991,lo_CFZ,s937,lo_HCZ,s991 |
| s1072 | 159 | bary_lo | CDZ | lo | 84289/500000 | s991,lo_CFZ,s937,lo_HCZ,s976,s983 |
| s1076 | 162 | bary_hi | DZR | lo | 70047/500000 | s991,lo_CFZ,s937,lo_HCZ,s1035,lo_CDR,s1043 |
| s1087 | 163 | bary_lo | CDP | lo | 4119/20000 | s1021,lo_DYP,s946,lo_HDP,s976,s984 |
| s1101 | 166 | bary_hi | DPQ | lo | 192589/1000000 | s1069,s869,s938,lo_HDP,lo_HDQ,s988 |
| s1117 | 168 | bary_lo | YZR | lo | 28031/250000 | hi_HDQ,lo_DQR,lo_HQR,s1035,lo_HYZ,s953,lo_YZQ |
| s1122 | 171 | bary_lo | FYP | lo | 108117/1000000 | s992,lo_DFP,lo_CFP,s1087,s902,s987 |
| s1132 | 172 | bary_hi | HDZ | lo | 521107/1000000 | s1007,lo_YZQ,s1051,lo_CYZ,s976,s982,lo_HDQ |
| s1134 | 173 | bary_lo | DZP | lo | 1717/12500 | s1007,lo_YZQ,s1051,lo_CYZ,s1087,lo_DYP,s1101 |
| s1136 | 174 | bary_hi | YZP | lo | 138871/1000000 | s1007,lo_YZQ,s1051,lo_CYZ,s903,s954 |
| s1161 | 3 | sum | OHQ | lo | 727853/1000000 | s913,lo_OHY,s974 |
| s1162 | 5 | sum | OCD | lo | 190267/500000 | s1072,s1064,lo_ODZ |
| s1163 | 6 | sum | OCF | lo | 213699/500000 | lo_CFZ,s1064,s941 |
| s1165 | 7 | sum | ODR | lo | 163047/500000 | s1076,lo_ODZ,lo_OZR |
| s1167 | 8 | sum | HCD | lo | 156537/200000 | s1072,lo_HCZ,s1132 |
| s1168 | 8 | sub | CDZ | hi | 292893/1000000 | s270,lo_HCZ,s1132 |
| s1170 | 11 | sum | HCQ | lo | 108683/250000 | s1051,lo_HCZ,s956 |
| s1171 | 12 | sum | HCR | lo | 403631/1000000 | s957,lo_HCZ,s1049 |
| s1174 | 16 | sum | CDY | lo | 64243/125000 | s1072,lo_CYZ,s953 |
| s1175 | 17 | sum | CFY | lo | 18369/50000 | lo_CFZ,lo_CYZ,s1032 |
| s1176 | 18 | sum | CYP | lo | 324871/1000000 | lo_CYZ,lo_CZP,s1136 |
| s1177 | 19 | sum | CYQ | lo | 319753/1000000 | lo_CYZ,s1051,lo_YZQ |
| s1179 | 21 | sum | DFY | lo | 294117/1000000 | lo_DFP,lo_DYP,s1122 |
| s1180 | 22 | sum | DFZ | lo | 2021/6250 | lo_DFP,s1134,lo_FZP |
| s1183 | 24 | sumlo | ODY | lo | 59381/250000 | lo_ODF,s974,lo_ODQ,lo_OFY,hi_OFQ |
| s1187 | 29 | sumlo | HYQ | lo | 250891/1000000 | s1170,s982,lo_HCY,lo_HDQ,s270 |
| s1188 | 30 | sumlo | HYR | lo | 206023/1000000 | s1171,s982,lo_HCY,s1035,s270 |
| s1189 | 32 | sumlo | OCZ | lo | 59799/500000 | lo_CFZ,s989,lo_HCZ,s1163,s991 |
| s1201 | 40 | sumlo | CDP | lo | 210383/1000000 | s1174,lo_HDP,lo_DYP,s1167,s1021 |
| s1203 | 41 | sumlo | DYQ | lo | 127149/250000 | lo_CDQ,s982,s1174,lo_HDQ,s270 |
| s1213 | 50 | sumlo | CDZ | lo | 44791/250000 | lo_CFZ,s1132,s1180,lo_HCZ,s1070 |
| s1214 | 50 | sumlo | HFZ | lo | 33517/125000 | lo_CFZ,s1132,s1180,lo_HCZ,s1168 |
| s1215 | 51 | sumlo | HZP | lo | 209077/1000000 | lo_CZP,s1132,s1134,lo_HCZ,s1168 |
| s1217 | 56 | sumlo | OQR | lo | 170631/1000000 | lo_DQR,s1161,lo_HQR,lo_ODQ,hi_HDQ |
| s1221 | 62 | balance_lo | OZQ | lo | 87479/500000 | lo_HDQ,lo_OZR,lo_DQR,s960,lo_HQR,lo_ODZ,s52 |
| s1222 | 64 | balance_lo | OFZ | lo | 222109/1000000 | lo_ODF,lo_HCZ,s1180,s989,lo_ODZ,s978,s270 |
| s1223 | 65 | balance_lo | OYZ | lo | 69843/500000 | lo_YZQ,s989,s1221,lo_HCY,s974,lo_HCZ,s703 |
| s1224 | 66 | balance_lo | FYZ | lo | 184753/1000000 | s1179,lo_HCZ,s953,s978,s1180,lo_HCY,s270 |
| s1225 | 69 | balance_lo | FYP | lo | 109429/1000000 | s1175,lo_HDP,s1176,lo_HDF,lo_CFP,s982,s270 |
| s1229 | 74 | balance_lo | HYP | lo | 38907/200000 | s982,lo_CFP,lo_DYP,s978,lo_HDP,s1175,s992 |
| s1236 | 84 | balance_lo | DYZ | lo | 32243/125000 | s1167,lo_YZQ,lo_CDQ,lo_HYZ,lo_HDQ,lo_CYZ,s703 |
| s1238 | 86 | balance_lo | DZR | lo | 145083/1000000 | lo_ODZ,s751,lo_OZR,s1203,s1165,lo_YZQ,s1000 |
| s1244 | 88 | balance_lo | CZR | lo | 98389/1000000 | s1162,lo_ZQR,lo_CDQ,lo_OZR,lo_OCQ,s1238,hi_ODQ |
| s1246 | 91 | balance_lo | YQR | lo | 54187/500000 | s982,lo_ZQR,s1236,lo_HQR,lo_HYZ,lo_DQR,s1069 |
| s1247 | 92 | linear | OHD | lo | 141101/200000 | s982,s1183,lo_OHY |
| s1250 | 94 | linear | OHZ | lo | 162843/500000 | lo_HYZ,lo_OHY,s1223 |
| s1254 | 97 | linear | OCD | lo | 195881/500000 | s1213,s1189,lo_ODZ |
| s1255 | 99 | linear | OCF | lo | 434707/1000000 | lo_CFZ,s1189,s1222 |
| s1258 | 101 | linear | ODR | lo | 331083/1000000 | s1238,lo_ODZ,lo_OZR |
| s1263 | 104 | linear | OYQ | lo | 101911/250000 | s1223,s1221,lo_YZQ |
| s1264 | 105 | linear | OYR | lo | 34481/100000 | s1223,lo_OZR,s1117 |
| s1265 | 107 | linear | HCD | lo | 793271/1000000 | s1213,lo_HCZ,s1132 |
| s1267 | 109 | linear | HCF | lo | 56767/125000 | lo_CFZ,lo_HCZ,s1214 |
| s1271 | 112 | linear | HDY | lo | 76107/200000 | lo_DYP,lo_HDP,s1229 |
| s1272 | 113 | linear | CDF | lo | 396383/1000000 | s1201,lo_CFP,lo_DFP |
| s1273 | 114 | linear | CDY | lo | 132527/250000 | s1213,lo_CYZ,s1236 |
| s1274 | 115 | linear | CFY | lo | 370753/1000000 | lo_CFZ,lo_CYZ,s1224 |
| s1277 | 118 | linear | DFY | lo | 295429/1000000 | lo_DFP,lo_DYP,s1225 |
| s1278 | 119 | linear | DZQ | lo | 331083/1000000 | lo_DQR,s1238,lo_ZQR |
| s1279 | 122 | linear | OHC | lo | 195881/500000 | s1254 |
| s1281 | 124 | linear | HCF | hi | 603617/1000000 | s1272 |
| s1282 | 124 | linear | CDF | hi | 68233/125000 | s1267 |
| s1289 | 128 | bary_hi | OYQ | hi | 149299/250000 | hi_OHD,s1271,s1183,lo_OHY,hi_OHQ,hi_ODQ |
| s1290 | 129 | bary_hi | OYR | hi | 254049/500000 | hi_OHD,s1271,s1183,lo_OHY,s400,s527 |
| s1296 | 132 | bary_hi | CYQ | hi | 110773/250000 | hi_OHD,s1271,s1183,lo_OHY,hi_OCQ,s703,hi_CDQ |
| s1311 | 140 | bary_lo | HDY | hi | 1409/2500 | s400,s1188,s1264,lo_OHY,hi_OHD,s52 |
| s1323 | 147 | bary_hi | HDR | lo | 12137/31250 | hi_ODQ,lo_DQR,s1217,s1258,s1247,lo_HDQ |
| s1337 | 151 | bary_hi | HZR | lo | 27463/125000 | s1289,lo_YZQ,s1221,s1223,lo_OHR,s1188,lo_HQR |
| s1340 | 152 | bary_lo | CZQ | lo | 134503/1000000 | s1290,s1117,lo_OZR,s1223,lo_OCQ,s1177,lo_CQR |
| s1342 | 153 | bary_hi | HFZ | lo | 135227/500000 | s270,s1213,s1132,lo_HCZ,s1267,lo_HDF |
| s1355 | 156 | bary_lo | OCZ | lo | 25467/200000 | s1281,lo_CFZ,s1342,lo_HCZ,s1279,s1255 |
| s1360 | 157 | bary_lo | HDZ | hi | 613187/1000000 | s1281,lo_CFZ,s1342,lo_HCZ,s270,lo_HDF |
| s1361 | 158 | bary_lo | HFZ | hi | 417617/1000000 | s1281,lo_CFZ,s1342,lo_HCZ,s1281 |
| s1363 | 159 | bary_lo | CDZ | lo | 183291/1000000 | s1281,lo_CFZ,s1342,lo_HCZ,s1265,s1272 |
| s1379 | 163 | bary_lo | CDP | lo | 218371/1000000 | s1311,lo_DYP,s1229,lo_HDP,s1265,s1273 |
| s1395 | 166 | bary_hi | DPQ | lo | 205677/1000000 | s1360,s1134,s1215,lo_HDP,lo_HDQ,s1278 |
| s1403 | 167 | bary_lo | ODR | hi | 246669/500000 | hi_HDQ,lo_DQR,lo_HQR,s1323,s1247,hi_ODQ |
| s1414 | 168 | bary_lo | YZR | lo | 56397/500000 | hi_HDQ,lo_DQR,lo_HQR,s1323,lo_HYZ,s1236,lo_YZQ |
| s1420 | 170 | bary_hi | CDP | hi | 44983/125000 | s1282,lo_DFP,lo_CFP,s1379,s1282 |
| s1421 | 171 | bary_lo | FYP | lo | 56749/500000 | s1282,lo_DFP,lo_CFP,s1379,s1274,s1277 |
| s1432 | 172 | bary_hi | HDZ | lo | 133239/250000 | s1296,lo_YZQ,s1340,lo_CYZ,s1265,s1271,lo_HDQ |
| s1433 | 173 | bary_lo | DZP | lo | 142963/1000000 | s1296,lo_YZQ,s1340,lo_CYZ,s1379,lo_DYP,s1395 |
| s1459 | 0 | sum | OHD | lo | 711059/1000000 | s1271,s1183,lo_OHY |
| s1463 | 3 | sum | OHQ | lo | 150307/200000 | s1187,lo_OHY,s1263 |
| s1465 | 6 | sum | OCF | lo | 110611/250000 | lo_CFZ,s1355,s1222 |
| s1468 | 8 | sum | HCD | lo | 809247/1000000 | s1363,lo_HCZ,s1432 |
| s1469 | 8 | sub | CDZ | hi | 70261/250000 | s270,lo_HCZ,s1432 |
| s1471 | 9 | sum | HCF | lo | 228227/500000 | lo_CFZ,lo_HCZ,s1342 |
| s1474 | 12 | sum | HCR | lo | 411093/1000000 | s1244,lo_HCZ,s1337 |
| s1477 | 16 | sum | CDY | lo | 106847/200000 | s1363,lo_CYZ,s1236 |
| s1479 | 19 | sum | CYQ | lo | 320503/1000000 | lo_CYZ,s1340,lo_YZQ |
| s1480 | 20 | sum | CYR | lo | 304183/1000000 | lo_CYZ,s1244,s1414 |
| s1481 | 21 | sum | DFY | lo | 149749/500000 | lo_DFP,lo_DYP,s1421 |
| s1482 | 22 | sum | DFZ | lo | 328963/1000000 | lo_DFP,s1433,lo_FZP |
| s1484 | 24 | sumlo | ODY | lo | 240683/1000000 | lo_ODF,s1263,lo_ODQ,lo_OFY,hi_OFQ |
| s1489 | 28 | sumlo | HYZ | lo | 18733/200000 | lo_HCY,s1432,lo_HCZ,s1271,s270 |
| s1493 | 32 | sumlo | OCZ | lo | 128527/1000000 | lo_CFZ,s1279,lo_HCZ,s1465,s1281 |
| s1498 | 37 | sumlo | HDR | lo | 48633/125000 | lo_DQR,s1459,lo_HDQ,s1258,hi_ODQ |
| s1499 | 39 | sumlo | ODP | lo | 165327/1000000 | s1395,s1484,lo_DYP,lo_ODQ,hi_DYQ |
| s1504 | 40 | sumlo | CDP | lo | 27711/125000 | s1477,lo_HDP,lo_DYP,s1468,s1311 |
| s1506 | 41 | sumlo | DYQ | lo | 52583/100000 | lo_CDQ,s1271,s1477,lo_HDQ,s270 |
| s1510 | 45 | sumlo | DPR | lo | 112713/1000000 | s1433,s1498,s1238,lo_HDP,s1360 |
| s1512 | 47 | sumlo | HFP | lo | 93611/1000000 | lo_CFP,lo_HDF,lo_DFP,s1471,s1282 |
| s1513 | 48 | sumlo | FYP | lo | 7137/62500 | lo_CFP,s1481,s1274,lo_DFP,s1282 |
| s1515 | 50 | sumlo | CDZ | lo | 95971/500000 | lo_CFZ,s1432,s1482,lo_HCZ,s1361 |
| s1516 | 50 | sumlo | HFZ | lo | 8913/31250 | lo_CFZ,s1432,s1482,lo_HCZ,s1469 |
| s1519 | 56 | sumlo | OQR | lo | 173473/1000000 | lo_DQR,s1463,lo_HQR,lo_ODQ,hi_HDQ |
| s1521 | 62 | balance_lo | OZQ | lo | 175699/1000000 | lo_HDQ,lo_OZR,lo_DQR,s1250,lo_HQR,lo_ODZ,s52 |
| s1522 | 64 | balance_lo | OFZ | lo | 232373/1000000 | lo_ODF,lo_HCZ,s1482,s1279,lo_ODZ,s1471,s270 |
| s1523 | 65 | balance_lo | OYZ | lo | 143261/1000000 | lo_YZQ,s1279,s1521,lo_HCY,s1263,lo_HCZ,s703 |
| s1524 | 66 | balance_lo | FYZ | lo | 194251/1000000 | s1481,lo_HCZ,s1236,s1471,s1482,lo_HCY,s270 |
| s1527 | 74 | balance_lo | HYP | lo | 41153/200000 | s1271,lo_CFP,lo_DYP,s1471,lo_HDP,s1274,s1282 |
| s1528 | 75 | balance_lo | HZP | lo | 226191/1000000 | s1432,lo_CFP,s1433,s1471,lo_HDP,lo_CFZ,s1282 |
| s1530 | 78 | balance_lo | HYR | lo | 213977/1000000 | lo_HCY,s1510,s1480,lo_HDP,s1474,lo_DYP,s1420 |
| s1534 | 82 | balance_lo | OFP | lo | 171437/1000000 | s1459,lo_FZP,lo_ODZ,s1512,s1250,lo_DFP,s1360 |
| s1537 | 84 | balance_lo | DYZ | lo | 262139/1000000 | s1468,lo_YZQ,lo_CDQ,s1489,lo_HDQ,lo_CYZ,s703 |
| s1540 | 86 | balance_lo | DZR | lo | 150321/1000000 | lo_ODZ,s1246,lo_OZR,s1506,s1258,lo_YZQ,s1289 |
| s1548 | 92 | linear | OHD | lo | 357109/500000 | s1271,s1484,lo_OHY |
| s1555 | 97 | linear | OCD | lo | 413469/1000000 | s1515,s1493,lo_ODZ |
| s1556 | 99 | linear | OCF | lo | 4539/10000 | lo_CFZ,s1493,s1522 |
| s1560 | 100 | linear | ODF | lo | 107441/250000 | lo_DFP,s1499,s1534 |
| s1561 | 101 | linear | ODR | lo | 336321/1000000 | s1540,lo_ODZ,lo_OZR |
| s1566 | 104 | linear | OYQ | lo | 10299/25000 | s1523,s1521,lo_YZQ |
| s1567 | 105 | linear | OYR | lo | 69811/200000 | s1523,lo_OZR,s1414 |
| s1568 | 107 | linear | HCD | lo | 408949/500000 | s1515,lo_HCZ,s1432 |
| s1571 | 109 | linear | HCF | lo | 29451/62500 | lo_CFZ,lo_HCZ,s1516 |
| s1575 | 112 | linear | HDY | lo | 78353/200000 | lo_DYP,lo_HDP,s1527 |
| s1576 | 113 | linear | CDF | lo | 50961/125000 | s1504,lo_CFP,lo_DFP |
| s1577 | 114 | linear | CDY | lo | 547081/1000000 | s1515,lo_CYZ,s1537 |
| s1578 | 115 | linear | CFY | lo | 380251/1000000 | lo_CFZ,lo_CYZ,s1524 |
| s1582 | 118 | linear | DFY | lo | 9381/31250 | lo_DFP,lo_DYP,s1513 |
| s1583 | 119 | linear | DZQ | lo | 336321/1000000 | lo_DQR,s1540,lo_ZQR |
| s1584 | 122 | linear | OHC | lo | 413469/1000000 | s1555 |
| s1585 | 123 | linear | HDF | hi | 91051/500000 | s1568 |
| s1586 | 124 | linear | HCF | hi | 74039/125000 | s1576 |
| s1587 | 124 | linear | CDF | hi | 33049/62500 | s1571 |
| s1595 | 129 | bary_hi | OYR | hi | 7783/15625 | hi_OHD,s1575,s1484,lo_OHY,s400,s1403 |
| s1597 | 131 | bary_hi | CDY | hi | 346477/500000 | hi_OHD,s1575,s1484,lo_OHY,hi_OCD,s270 |
| s1600 | 132 | bary_hi | CYQ | hi | 438073/1000000 | hi_OHD,s1575,s1484,lo_OHY,hi_OCQ,s703,hi_CDQ |
| s1613 | 140 | bary_lo | HDY | hi | 139691/250000 | s400,s1530,s1567,lo_OHY,hi_OHD,s52 |
| s1625 | 147 | bary_hi | HDR | lo | 39423/100000 | hi_ODQ,lo_DQR,s1519,s1561,s1548,lo_HDQ |
| s1643 | 152 | bary_lo | CZQ | lo | 5419/40000 | s1595,s1414,lo_OZR,s1523,lo_OCQ,s1479,lo_CQR |
| s1646 | 153 | bary_hi | HFZ | lo | 286423/1000000 | s270,s1515,s1432,lo_HCZ,s1571,lo_HDF |
| s1647 | 154 | bary_lo | HYZ | lo | 94817/1000000 | s270,s1515,s1432,lo_HCZ,lo_HCY,s1575 |
| s1660 | 156 | bary_lo | OCZ | lo | 136187/1000000 | s1586,lo_CFZ,s1646,lo_HCZ,s1584,s1556 |
| s1665 | 157 | bary_lo | HDZ | hi | 607579/1000000 | s1586,lo_CFZ,s1646,lo_HCZ,s270,lo_HDF |
| s1666 | 158 | bary_lo | HFZ | hi | 50789/125000 | s1586,lo_CFZ,s1646,lo_HCZ,s1586 |
| s1667 | 159 | bary_lo | CDZ | lo | 192431/1000000 | s1586,lo_CFZ,s1646,lo_HCZ,s1568,s1576 |
| s1668 | 160 | bary_hi | DFZ | hi | 195663/500000 | s1586,lo_CFZ,s1646,lo_HCZ,s1585,s1587 |
| s1669 | 161 | bary_hi | DYZ | hi | 73341/200000 | s1586,lo_CFZ,s1646,lo_HCZ,s1575,s1597,s1582 |
| s1677 | 163 | bary_lo | CDP | lo | 45437/200000 | s1613,lo_DYP,s1527,lo_HDP,s1568,s1577 |
| s1690 | 166 | bary_hi | DPQ | lo | 214777/1000000 | s1665,s1433,s1528,lo_HDP,lo_HDQ,s1583 |
| s1709 | 168 | bary_lo | YZR | lo | 22703/200000 | hi_HDQ,lo_DQR,lo_HQR,s1625,s1647,s1537,lo_YZQ |
| s1716 | 171 | bary_lo | FYP | lo | 119673/1000000 | s1587,lo_DFP,lo_CFP,s1677,s1578,s1582 |
| s1724 | 172 | bary_hi | HDZ | lo | 68299/125000 | s1600,lo_YZQ,s1643,lo_CYZ,s1568,s1575,lo_HDQ |
| s1725 | 173 | bary_lo | DZP | lo | 147339/1000000 | s1600,lo_YZQ,s1643,lo_CYZ,s1677,lo_DYP,s1690 |
| s1758 | 0 | sum | OHD | lo | 90681/125000 | s1575,s1484,lo_OHY |
| s1760 | 2 | sum | OHZ | lo | 165539/500000 | s1647,lo_OHY,s1523 |
| s1765 | 6 | sum | OCF | lo | 11539/25000 | lo_CFZ,s1660,s1522 |
| s1769 | 8 | sum | HCD | lo | 831823/1000000 | s1667,lo_HCZ,s1724 |
| s1770 | 8 | sub | CDZ | hi | 33451/125000 | s270,lo_HCZ,s1724 |
| s1772 | 9 | sum | HCF | lo | 472423/1000000 | lo_CFZ,lo_HCZ,s1646 |
| s1777 | 15 | sum | CDF | lo | 82637/200000 | s1677,lo_CFP,lo_DFP |
| s1782 | 21 | sum | DFY | lo | 305673/1000000 | lo_DFP,lo_DYP,s1716 |
| s1783 | 22 | sum | DFZ | lo | 333339/1000000 | lo_DFP,s1725,lo_FZP |
| s1785 | 24 | sumlo | ODY | lo | 244923/1000000 | s1560,s1566,lo_ODQ,lo_OFY,hi_OFQ |
| s1790 | 28 | sumlo | HYZ | lo | 48097/500000 | lo_HCY,s1724,lo_HCZ,s1575,s270 |
| s1794 | 32 | sumlo | OCZ | lo | 137389/1000000 | lo_CFZ,s1584,lo_HCZ,s1765,s1586 |
| s1795 | 33 | sumlo | CDZ | lo | 195481/1000000 | s1777,lo_HCZ,lo_CFZ,s1769,s1586 |
| s1801 | 39 | sumlo | ODP | lo | 84911/500000 | s1690,s1785,lo_DYP,lo_ODQ,hi_DYQ |
| s1809 | 42 | sumlo | CDP | lo | 5791/25000 | s1795,lo_HDP,s1725,s1769,s1665 |
| s1815 | 47 | sumlo | HFP | lo | 99443/1000000 | lo_CFP,lo_HDF,lo_DFP,s1772,s1587 |
| s1816 | 48 | sumlo | FYP | lo | 120637/1000000 | lo_CFP,s1782,s1578,lo_DFP,s1587 |
| s1818 | 50 | sumlo | CDZ | lo | 201359/1000000 | lo_CFZ,s1724,s1783,lo_HCZ,s1666 |
| s1819 | 50 | sumlo | HFZ | lo | 152863/500000 | lo_CFZ,s1724,s1783,lo_HCZ,s1770 |
| s1821 | 52 | sumlo | HZP | lo | 244961/1000000 | s1725,s1819,lo_FZP,s1724,s1668 |
| s1824 | 55 | sumlo | CZQ | lo | 3409/25000 | s1818,lo_YZQ,lo_CYZ,s1583,s1669 |
| s1826 | 62 | balance_lo | OZQ | lo | 3531/20000 | lo_HDQ,lo_OZR,lo_DQR,s1760,lo_HQR,lo_ODZ,s52 |
| s1828 | 65 | balance_lo | OYZ | lo | 14721/100000 | lo_YZQ,s1584,s1826,lo_HCY,s1566,lo_HCZ,s703 |
| s1835 | 74 | balance_lo | HYP | lo | 43773/200000 | s1575,lo_CFP,lo_DYP,s1772,lo_HDP,s1578,s1587 |
| s1841 | 82 | balance_lo | OFP | lo | 8847/50000 | s1758,lo_FZP,lo_ODZ,s1815,s1760,lo_DFP,s1665 |
| s1845 | 84 | balance_lo | DYZ | lo | 266571/1000000 | s1769,lo_YZQ,lo_CDQ,s1790,lo_HDQ,lo_CYZ,s703 |
| s1855 | 90 | balance_lo | OQR | lo | 175953/1000000 | s1758,lo_ZQR,lo_ODZ,lo_HQR,s1760,lo_DQR,s1665 |
| s1864 | 97 | linear | OCD | lo | 107937/250000 | s1818,s1794,lo_ODZ |
| s1869 | 100 | linear | ODF | lo | 219881/500000 | lo_DFP,s1801,s1841 |
| s1872 | 102 | linear | ODR | hi | 491591/1000000 | lo_DQR,hi_ODQ,s1855 |
| s1876 | 104 | linear | OYQ | lo | 10419/25000 | s1828,s1826,lo_YZQ |
| s1878 | 107 | linear | HCD | lo | 840751/1000000 | s1818,lo_HCZ,s1724 |
| s1881 | 109 | linear | HCF | lo | 245863/500000 | lo_CFZ,lo_HCZ,s1819 |
| s1885 | 112 | linear | HDY | lo | 80973/200000 | lo_DYP,lo_HDP,s1835 |
| s1886 | 113 | linear | CDF | lo | 10441/25000 | s1809,lo_CFP,lo_DFP |
| s1890 | 117 | linear | CYQ | lo | 8059/25000 | lo_CYZ,s1824,lo_YZQ |
| s1893 | 118 | linear | DFY | lo | 306637/1000000 | lo_DFP,lo_DYP,s1816 |
| s1896 | 121 | quad | DZQ | lo | 176337/500000 | s1668 |
| s1898 | 122 | linear | OHC | lo | 107937/250000 | s1864 |
| s1899 | 123 | linear | HDF | hi | 159249/1000000 | s1878 |
| s1900 | 124 | linear | HCF | hi | 14559/25000 | s1886 |
| s1901 | 124 | linear | CDF | hi | 254137/500000 | s1881 |
| s1909 | 129 | bary_hi | OYR | hi | 121613/250000 | hi_OHD,s1885,s1785,lo_OHY,s400,s1872 |
| s1910 | 131 | bary_hi | CDY | hi | 688617/1000000 | hi_OHD,s1885,s1785,lo_OHY,hi_OCD,s270 |
| s1913 | 132 | bary_hi | CYQ | hi | 432217/1000000 | hi_OHD,s1885,s1785,lo_OHY,hi_OCQ,s703,hi_CDQ |
| s1956 | 152 | bary_lo | CZQ | lo | 136849/1000000 | s1909,s1709,lo_OZR,s1828,lo_OCQ,s1890,lo_CQR |
| s1959 | 153 | bary_hi | HFZ | lo | 305759/1000000 | s270,s1818,s1724,lo_HCZ,s1881,lo_HDF |
| s1976 | 157 | bary_lo | HDZ | hi | 301231/500000 | s1900,lo_CFZ,s1959,lo_HCZ,s270,lo_HDF |
| s1977 | 158 | bary_lo | HFZ | hi | 9909/25000 | s1900,lo_CFZ,s1959,lo_HCZ,s1900 |
| s1979 | 160 | bary_hi | DFZ | hi | 46421/125000 | s1900,lo_CFZ,s1959,lo_HCZ,s1899,s1901 |
| s1980 | 161 | bary_hi | DYZ | hi | 355057/1000000 | s1900,lo_CFZ,s1959,lo_HCZ,s1885,s1910,s1893 |
| s1997 | 165 | bary_lo | CDP | lo | 118349/500000 | s1976,s1725,s1821,lo_HDP,s1878,s1818 |
| s2000 | 166 | bary_hi | DPQ | lo | 112083/500000 | s1976,s1725,s1821,lo_HDP,lo_HDQ,s1896 |
| s2034 | 172 | bary_hi | HDZ | lo | 560867/1000000 | s1913,lo_YZQ,s1956,lo_CYZ,s1878,s1885,lo_HDQ |
| s2036 | 173 | bary_lo | DZP | lo | 76071/500000 | s1913,lo_YZQ,s1956,lo_CYZ,s1997,lo_DYP,s2000 |
| s2041 | 175 | bary_hi | OYP | lo | 7231/50000 | s1979,lo_FZP,s2036,lo_DFP,s1785,lo_OFY,s1828 |
| s2044 | 176 | bary_lo | HDP | hi | 83337/500000 | s1979,lo_FZP,s2036,lo_DFP,lo_HDF,s1976 |
| s2046 | 178 | bary_lo | HZP | lo | 132859/500000 | s1979,lo_FZP,s2036,lo_DFP,s2034,s1959 |
| s2052 | 180 | bary_lo | DZP | hi | 23171/125000 | s1979,lo_FZP,s2036,lo_DFP,s1979 |
| s2073 | 0 | sum | OHD | lo | 185697/250000 | s1885,s1785,lo_OHY |
| s2083 | 8 | sum | HCD | lo | 427613/500000 | s1818,lo_HCZ,s2034 |
| s2084 | 8 | sub | CDZ | hi | 253133/1000000 | s270,lo_HCZ,s2034 |
| s2087 | 10 | sum | HCP | lo | 225859/500000 | lo_CZP,lo_HCZ,s2046 |
| s2091 | 15 | sum | CDF | lo | 211349/500000 | s1997,lo_CFP,lo_DFP |
| s2096 | 22 | sum | DFZ | lo | 169071/500000 | lo_DFP,s2036,lo_FZP |
| s2098 | 24 | sumlo | ODY | lo | 251239/1000000 | s1869,s1876,lo_ODQ,lo_OFY,hi_OFQ |
| s2100 | 25 | sumlo | OHZ | lo | 42893/125000 | lo_HCZ,s2073,s2034,s1898,s270 |
| s2105 | 28 | sumlo | HYZ | lo | 49511/500000 | lo_HCY,s2034,lo_HCZ,s1885,s270 |
| s2108 | 31 | diff | HPQ | lo | 229313/1000000 | s2087,lo_HDQ,s703,s2044,s270 |
| s2110 | 33 | sumlo | CDZ | lo | 102039/500000 | s2091,lo_HCZ,lo_CFZ,s2083,s1900 |
| s2128 | 42 | sumlo | CDP | lo | 61869/250000 | s2110,lo_HDP,s2036,s2083,s1976 |
| s2131 | 43 | sumlo | HDY | lo | 415129/1000000 | lo_DYP,s2034,s1845,lo_HDP,s2052 |
| s2139 | 50 | sumlo | CDZ | lo | 210939/1000000 | lo_CFZ,s2034,s2096,lo_HCZ,s1977 |
| s2140 | 50 | sumlo | HFZ | lo | 82573/250000 | lo_CFZ,s2034,s2096,lo_HCZ,s2084 |
| s2148 | 53 | sumlo | FYZ | lo | 222169/1000000 | lo_CFZ,s1845,lo_CYZ,s2096,s2084 |
| s2150 | 55 | sumlo | CZQ | lo | 147627/1000000 | s2139,lo_YZQ,lo_CYZ,s1896,s1980 |
| s2156 | 62 | balance_lo | OZQ | lo | 22307/125000 | lo_HDQ,lo_OZR,lo_DQR,s2100,lo_HQR,lo_ODZ,s52 |
| s2158 | 65 | balance_lo | OYZ | lo | 943/6250 | lo_YZQ,s1898,s2156,lo_HCY,s1876,lo_HCZ,s703 |
| s2173 | 81 | balance_lo | HYP | lo | 242309/1000000 | s2131,lo_FZP,lo_DYP,s2140,lo_HDP,s2148,s1979 |
| s2178 | 84 | balance_lo | DYZ | lo | 33907/125000 | s2083,lo_YZQ,lo_CDQ,s2105,lo_HDQ,lo_CYZ,s703 |
| s2193 | 95 | linear | OHP | lo | 479929/1000000 | s2173,lo_OHY,s2041 |
| s2212 | 107 | linear | HCD | lo | 432403/500000 | s2139,lo_HCZ,s2034 |
| s2215 | 109 | linear | HCF | lo | 129073/250000 | lo_CFZ,lo_HCZ,s2140 |
| s2220 | 112 | linear | HDY | lo | 428309/1000000 | lo_DYP,lo_HDP,s2173 |
| s2224 | 113 | linear | CDF | lo | 108369/250000 | s2128,lo_CFP,lo_DFP |
| s2235 | 121 | quad | DZQ | lo | 46579/125000 | s1979 |
| s2238 | 123 | linear | HDF | hi | 67597/500000 | s2212 |
| s2239 | 124 | linear | HCF | hi | 141631/250000 | s2224 |
| s2240 | 124 | linear | CDF | hi | 120927/250000 | s2215 |
| s2249 | 128 | bary_hi | OYQ | hi | 274711/500000 | hi_OHD,s2220,s2098,lo_OHY,hi_OHQ,hi_ODQ |
| s2254 | 132 | bary_hi | CYQ | hi | 421737/1000000 | hi_OHD,s2220,s2098,lo_OHY,hi_OCQ,s703,hi_CDQ |
| s2298 | 150 | bary_hi | HZP | lo | 55191/200000 | s2249,lo_YZQ,s2156,s2158,s2193,s2173,s2108 |
| s2326 | 157 | bary_lo | HDZ | hi | 593949/1000000 | s2239,lo_CFZ,s2140,lo_HCZ,s270,lo_HDF |
| s2327 | 158 | bary_lo | HFZ | hi | 95131/250000 | s2239,lo_CFZ,s2140,lo_HCZ,s2239 |
| s2328 | 159 | bary_lo | CDZ | lo | 53281/250000 | s2239,lo_CFZ,s2140,lo_HCZ,s2212,s2224 |
| s2330 | 160 | bary_hi | DFZ | hi | 86773/250000 | s2239,lo_CFZ,s2140,lo_HCZ,s2238,s2240 |
| s2354 | 165 | bary_lo | CDP | lo | 254893/1000000 | s2326,s2036,s2298,lo_HDP,s2212,s2328 |
| s2357 | 166 | bary_hi | DPQ | lo | 59029/250000 | s2326,s2036,s2298,lo_HDP,lo_HDQ,s2235 |
| s2393 | 172 | bary_hi | HDZ | lo | 583153/1000000 | s2254,lo_YZQ,s2150,lo_CYZ,s2212,s2220,lo_HDQ |
| s2395 | 173 | bary_lo | DZP | lo | 160259/1000000 | s2254,lo_YZQ,s2150,lo_CYZ,s2354,lo_DYP,s2357 |
| s2407 | 176 | bary_hi | HDP | lo | 1461/15625 | s2330,lo_FZP,s2395,lo_DFP,s2238,s2393 |
| s2410 | 178 | bary_hi | HZP | hi | 42033/125000 | s2330,lo_FZP,s2395,lo_DFP,s2326,s2327 |
| s2413 | 179 | bary_lo | CDP | lo | 8039/31250 | s2330,lo_FZP,s2395,lo_DFP,s2224,s2328 |
| s2421 | 180 | bary_lo | DZP | hi | 40273/250000 | s2330,lo_FZP,s2395,lo_DFP,s2330 |
| s2463 | 8 | sum | HCD | lo | 889277/1000000 | s2328,lo_HCZ,s2393 |
| s2464 | 8 | sub | CDZ | hi | 230847/1000000 | s270,lo_HCZ,s2393 |
| s2469 | 15 | sum | CDF | lo | 27703/62500 | s2413,lo_CFP,lo_DFP |
| s2476 | 22 | sum | DFZ | lo | 346259/1000000 | lo_DFP,s2395,lo_FZP |
| s2501 | 33 | sumlo | HCF | lo | 268413/500000 | s2469,lo_HCZ,lo_CFZ,s2463,s2464 |
| s2543 | 43 | sumlo | HDY | lo | 494107/1000000 | lo_DYP,s2393,s2178,s2407,s2421 |
| s2549 | 44 | sumlo | DPQ | lo | 245917/1000000 | s2395,lo_HDQ,s2235,s2407,s2326 |
| s2561 | 46 | sumlo | DYQ | lo | 629213/1000000 | s2549,s2178,lo_DYP,s2235,s2421 |
| s2563 | 46 | diffhi | DYZ | hi | 310953/1000000 | hi_DYQ,s2421,lo_DYP,s2235,s2549 |
| s2604 | 50 | sumlo | CDZ | lo | 56787/250000 | lo_CFZ,s2393,s2476,lo_HCZ,s2327 |
| s2634 | 54 | sumlo | CZP | lo | 51901/500000 | s2604,lo_FZP,lo_CFZ,s2395,s2330 |
| s2687 | 67 | balance_lo | HCP | lo | 255527/500000 | lo_FZP,s2463,s2395,s2501,lo_DFP,lo_HCZ,s2330 |
| s2689 | 68 | balance_lo | DYZ | lo | 138921/500000 | lo_YZQ,s2463,s2235,lo_HCY,s2561,lo_HCZ,s703 |
| s2692 | 68 | balance_hi | HCY | hi | 74623/500000 | s2563,s703,lo_YZQ,s2463,s2561,lo_HCZ,s2235 |
| s2735 | 77 | balance_lo | CDY | lo | 600511/1000000 | lo_HCZ,lo_DYP,s2634,s2543,s2687,s2689,s2410 |
| s2835 | 106 | linear | HCD | lo | 236343/250000 | s2735,s2692,s2543 |

## Conclusion

{"triangle":"HCD","lower":"s2835","upper":"s270"}
