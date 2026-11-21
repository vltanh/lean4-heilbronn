# Leaf rpmmpppmmm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYP":-1,"QYZ":-1,"OFY":-1}

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
| 32 | plu | ["OHDYZ","OYZ",-1] |
| 33 | plu | ["OHDPR","OPR",-1] |
| 34 | plu | ["DOHYZ","DYZ",1] |
| 35 | plu | ["FOHZP","FOP",1] |
| 36 | plu | ["FOCYZ","FYZ",1] |
| 37 | plu | ["FOCZP","FCP",1] |
| 38 | plu | ["FOYZP","FYP",1] |
| 39 | plu | ["YHDPQ","YPQ",-1] |
| 40 | plu | ["YHDPR","YPR",-1] |
| 41 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 42 | plu | ["YOZQR","YZR",-1] |
| 43 | plu | ["ZOCYR","ZOR",1] |
| 44 | plu | ["QOHYR","QHR",1] |
| 45 | plu | ["QOFYR","QFR",1] |
| 46 | plu | ["QOYZR","QZR",1] |
| 47 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","YP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OFQ | OFQ | lo | 347/500 | ["cost","YR"] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HFR | HFR | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","R"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 279/1000 | ["cost","R"] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","Z"] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 93/1000 | ["cost",""] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
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
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHQ","HYQ","OHY","OYQ"] | ["fan","OHQ","Y"] |
| 1 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 2 | ["fan","ODF","DFY","ODY","OFY"] | ["fan","ODF","Y"] |
| 3 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 4 | ["fan","OFQ","FYQ","OFY","OYQ"] | ["fan","OFQ","Y"] |
| 5 | ["fan","OFQ","FQR","OFR","OQR"] | ["fan","OFQ","R"] |
| 6 | ["fan","OFR","FYR","OFY","OYR"] | ["fan","OFR","Y"] |
| 7 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 8 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 9 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 10 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 11 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 12 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 13 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 14 | ["fan","CFQ","CFR","CQR","FQR"] | ["fan","CFQ","R"] |
| 15 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 16 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 17 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 18 | ["plu","ODQ","OFZ","ODF","OZQ","ODZ","OFQ"] | ["plu","ODFZQ"] |
| 19 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 20 | ["plu","HCD","HFQ","HCF","HDQ","HCQ","HDF"] | ["plu","HCDFQ"] |
| 21 | ["plu","HCD","HYQ","HCQ","HDY","HCY","HDQ"] | ["plu","HCDYQ"] |
| 22 | ["plu","HCF","HYQ","HCQ","HFY","HCY","HFQ"] | ["plu","HCFYQ"] |
| 23 | ["plu","HDY","HFR","HDF","HYR","HDR","HFY"] | ["plu","HDFYR"] |
| 24 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 25 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 26 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 27 | ["plu","CFY","HCQ","CFQ","HCY","CYQ","HCF"] | ["plu","CHFYQ"] |
| 28 | ["plu","CDY","CFQ","CDF","CYQ","CDQ","CFY"] | ["plu","CDFYQ"] |
| 29 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 30 | ["plu","CDQ","CFR","CDF","CQR","CDR","CFQ"] | ["plu","CDFQR"] |
| 31 | ["plu","CDQ","CYR","CDR","CYQ","CDY","CQR"] | ["plu","CDYQR"] |
| 32 | ["plu","CFZ","CPQ","CFP","CZQ","CFQ","CZP"] | ["plu","CFZPQ"] |
| 33 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 34 | ["plu","DZQ","OCD","CDQ","ODZ","CDZ","ODQ"] | ["plu","DOCZQ"] |
| 35 | ["plu","FYQ","OCF","CFQ","OFY","CFY","OFQ"] | ["plu","FOCYQ"] |
| 36 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 37 | ["plu","FYQ","OFR","FQR","OFY","FYR","OFQ"] | ["plu","FOYQR"] |
| 38 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 39 | ["plu","CDF","HFQ","CFQ","HDF","DFQ","HCF"] | ["plu","FHCDQ"] |
| 40 | ["plu","DFY","HFQ","DFQ","HFY","FYQ","HDF"] | ["plu","FHDYQ"] |
| 41 | ["plu","DFY","HFR","DFR","HFY","FYR","HDF"] | ["plu","FHDYR"] |
| 42 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 43 | ["plu","FYQ","OHY","HFY","OYQ","HYQ","OFY"] | ["plu","YOHFQ"] |
| 44 | ["plu","FYR","OHY","HFY","OYR","HYR","OFY"] | ["plu","YOHFR"] |
| 45 | ["plu","FYQ","OYR","FYR","OYQ","OFY","YQR"] | ["plu","YOFQR"] |
| 46 | ["plu","CFY","HYQ","CYQ","HFY","FYQ","HCY"] | ["plu","YHCFQ"] |
| 47 | ["plu","CFY","HYR","CYR","HFY","FYR","HCY"] | ["plu","YHCFR"] |
| 48 | ["plu","FYR","HDY","DFY","HYR","DYR","HFY"] | ["plu","YHDFR"] |
| 49 | ["plu","DYR","HYQ","DYQ","HYR","HDY","YQR"] | ["plu","YHDQR"] |
| 50 | ["plu","CDY","FYQ","CFY","DYQ","CYQ","DFY"] | ["plu","YCDFQ"] |
| 51 | ["plu","CFP","DZP","CDP","FZP","CZP","DFP"] | ["plu","PCDFZ"] |
| 52 | ["plu","HDQ","OFQ","DFQ","OHQ","HFQ","ODQ"] | ["plu","QOHDF"] |
| 53 | ["plu","DQR","OHQ","HDQ","OQR","HQR","ODQ"] | ["plu","QOHDR"] |
| 54 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 55 | ["plu","DQR","OFQ","DFQ","OQR","FQR","ODQ"] | ["plu","QODFR"] |
| 56 | ["plu","DQR","OYQ","DYQ","OQR","ODQ","YQR"] | ["plu","QODYR"] |
| 57 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 58 | ["plu","FQR","OYQ","FYQ","OQR","OFQ","YQR"] | ["plu","QOFYR"] |
| 59 | ["plu","FQR","OYR","FYR","OQR","OFR","YQR"] | ["plu","ROFYQ"] |
| 60 | ["plu","FYR","HCR","CFR","HYR","CYR","HFR"] | ["plu","RHCFY"] |
| 61 | ["plu","FYR","HDR","DFR","HYR","DYR","HFR"] | ["plu","RHDFY"] |
| 62 | ["plu","FYR","HQR","FQR","HYR","HFR","YQR"] | ["plu","RHFYQ"] |
| 63 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 64 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 65 | ["balance",[[1,"HCF","OYQ"],[-1,"CFY","OHQ"],[1,"HFY","OCQ"],[1,"HCY","OFQ"]]] | ["six","OQHCFY"] |
| 66 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 67 | ["balance",[[-1,"CFZ","OPQ"],[1,"FZP","OCQ"],[1,"CZP","OFQ"],[1,"CFP","OZQ"]]] | ["six","OQCFZP"] |
| 68 | ["balance",[[-1,"OFY","HCQ"],[1,"FYQ","OHC"],[-1,"OYQ","HCF"],[-1,"OFQ","HCY"]]] | ["six","HCOFYQ"] |
| 69 | ["balance",[[1,"OFZ","HDP"],[1,"FZP","OHD"],[1,"OZP","HDF"],[-1,"OFP","HDZ"]]] | ["six","HDOFZP"] |
| 70 | ["balance",[[-1,"CFY","HDR"],[1,"FYR","HCD"],[-1,"CYR","HDF"],[-1,"CFR","HDY"]]] | ["six","HDCFYR"] |
| 71 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 72 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 73 | ["balance",[[-1,"CDQ","HYR"],[1,"DQR","HCY"],[1,"CQR","HDY"],[1,"CDR","HYQ"]]] | ["six","HYCDQR"] |
| 74 | ["balance",[[-1,"CFY","HQR"],[1,"FYR","HCQ"],[-1,"CYR","HFQ"],[-1,"CFR","HYQ"]]] | ["six","HQCFYR"] |
| 75 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 76 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 77 | ["balance",[[-1,"HDF","CQR"],[-1,"DFQ","HCR"],[-1,"HFQ","CDR"],[1,"HDQ","CFR"]]] | ["six","CRHDFQ"] |
| 78 | ["balance",[[-1,"OHY","DFR"],[-1,"HYR","ODF"],[-1,"OYR","HDF"],[1,"OHR","DFY"]]] | ["six","DFOHYR"] |
| 79 | ["balance",[[-1,"OFQ","DZR"],[-1,"FQR","ODZ"],[-1,"OQR","DFZ"],[1,"OFR","DZQ"]]] | ["six","DZOFQR"] |
| 80 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 81 | ["balance",[[1,"HCD","FYQ"],[-1,"CDQ","HFY"],[-1,"HDQ","CFY"],[-1,"HCQ","DFY"]]] | ["six","FYHCDQ"] |
| 82 | ["balance",[[-1,"CDQ","FYR"],[1,"DQR","CFY"],[1,"CQR","DFY"],[1,"CDR","FYQ"]]] | ["six","FYCDQR"] |
| 83 | ["balance",[[1,"HCD","FZP"],[1,"CDP","HFZ"],[1,"HDP","CFZ"],[-1,"HCP","DFZ"]]] | ["six","FZHCDP"] |
| 84 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 85 | ["balance",[[-1,"HCD","FYR"],[1,"CDY","HFR"],[1,"HDY","CFR"],[1,"HCY","DFR"]]] | ["six","FRHCDY"] |
| 86 | ["balance",[[1,"HCF","YZQ"],[1,"CFZ","HYQ"],[1,"HFZ","CYQ"],[-1,"HCZ","FYQ"]]] | ["six","YQHCFZ"] |
| 87 | ["balance",[[1,"ODF","YQR"],[1,"DFQ","OYR"],[-1,"OFQ","DYR"],[1,"ODQ","FYR"]]] | ["six","YRODFQ"] |
| 88 | ["balance",[[1,"OHC","YQR"],[1,"HCY","OQR"],[-1,"OCY","HQR"],[1,"OHY","CQR"]]] | ["six","QROHCY"] |
| 89 | ["balance",[[1,"OHD","ZQR"],[1,"HDZ","OQR"],[1,"ODZ","HQR"],[-1,"OHZ","DQR"]]] | ["six","QROHDZ"] |
| 90 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDZ","OQR"],[-1,"ODZ","CQR"],[1,"OCZ","DQR"]]] | ["six","QROCDZ"] |
| 91 | ["balance",[[-1,"OCF","YQR"],[-1,"CFY","OQR"],[-1,"OFY","CQR"],[1,"OCY","FQR"]]] | ["six","QROCFY"] |
| 92 | ["balance",[[-1,"ODF","ZQR"],[-1,"DFZ","OQR"],[1,"OFZ","DQR"],[-1,"ODZ","FQR"]]] | ["six","QRODFZ"] |
| 93 | ["balance",[[-1,"ODY","ZQR"],[-1,"DYZ","OQR"],[1,"OYZ","DQR"],[-1,"ODZ","YQR"]]] | ["six","QRODYZ"] |
| 94 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 95 | ["balance",[[-1,"HCF","YQR"],[1,"CFY","HQR"],[-1,"HFY","CQR"],[-1,"HCY","FQR"]]] | ["six","QRHCFY"] |
| 96 | ["balance",[[-1,"CDF","YQR"],[-1,"DFY","CQR"],[-1,"CFY","DQR"],[1,"CDY","FQR"]]] | ["six","QRCDFY"] |
| 97 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 98 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 99 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 100 | ["linear",{"OHY":-1,"OYR":-1,"OHR":1,"HYR":-1},"0"] | ["affine_quad","OHYR",1] |
| 101 | ["linear",{"OHQ":1,"OQR":-1,"OHR":-1,"HQR":-1},"0"] | ["affine_quad","OHQR",-1] |
| 102 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 103 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 104 | ["linear",{"OCF":-1,"OFQ":1,"OCQ":1,"CFQ":-1},"0"] | ["affine_quad","OCFQ",-1] |
| 105 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 106 | ["linear",{"OFY":-1,"OYR":-1,"OFR":1,"FYR":-1},"0"] | ["affine_quad","OFYR",1] |
| 107 | ["linear",{"OFQ":1,"OQR":-1,"OFR":-1,"FQR":-1},"0"] | ["affine_quad","OFQR",-1] |
| 108 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 109 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 110 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 111 | ["linear",{"HDQ":-1,"HQR":-1,"HDR":1,"DQR":1},"0"] | ["affine_quad","HDQR",1] |
| 112 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 113 | ["linear",{"CFQ":1,"CQR":-1,"CFR":-1,"FQR":-1},"0"] | ["affine_quad","CFQR",-1] |
| 114 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 115 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 116 | ["linear",{"DFQ":-1,"DQR":1,"DFR":1,"FQR":-1},"0"] | ["affine_quad","DFQR",-1] |
| 117 | ["quad","HDR","HYR","93/125"] | ["quad","HYRD","ZP"] |
| 118 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 119 | ["quad","DFR","FYR","93/125"] | ["quad","DFYR","ZP"] |
| 120 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 121 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 122 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 123 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 124 | ["bary",["FYQ",-1],[["OFQ",-1],["HFQ",-1],["CFQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FQ"] |
| 125 | ["bary",["FYR",-1],[["OFR",-1],["HFR",-1],["CFR",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FR"] |
| 126 | ["bary",["OHY",-1],[null,null,["OHQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OH"] |
| 127 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 128 | ["bary",["OFR",-1],[null,["OHF",1],["OFQ",-1]],"OHQ",["HQR","OQR","OHR"]] | ["bary","OHQ","R","OF"] |
| 129 | ["bary",["OZQ",1],[null,["OCQ",-1],["ODQ",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","OQ"] |
| 130 | ["bary",["HFZ",-1],[["OHF",-1],["HCF",-1],["HDF",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","HF"] |
| 131 | ["bary",["CZQ",1],[["OCQ",1],null,["CDQ",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","CQ"] |
| 132 | ["bary",["DZQ",-1],[["ODQ",-1],["CDQ",-1],null],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","DQ"] |
| 133 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DFQ",-1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","DQ"] |
| 134 | ["bary",["HDZ",-1],[["OHD",-1],null,["HDQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","HD"] |
| 135 | ["bary",["CDZ",1],[["OCD",1],null,["CDQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","CD"] |
| 136 | ["bary",["DFZ",1],[["ODF",1],null,["DFQ",1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","DF"] |
| 137 | ["bary",["OFY",-1],[null,null,["OFQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OF"] |
| 138 | ["bary",["OYQ",1],[null,["OFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","OQ"] |
| 139 | ["bary",["HDY",-1],[["OHD",-1],["HDF",1],["HDQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HD"] |
| 140 | ["bary",["HYQ",-1],[["OHQ",-1],["HFQ",1],null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","HQ"] |
| 141 | ["bary",["CFY",1],[["OCF",1],null,["CFQ",-1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","CF"] |
| 142 | ["bary",["DFY",1],[["ODF",1],null,["DFQ",1]],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","DF"] |
| 143 | ["bary",["FYQ",-1],[["OFQ",-1],null,null],"OFQ",["FYQ","OYQ","OFY"]] | ["bary","OFQ","Y","FQ"] |
| 144 | ["bary",["CDY",1],[["OCD",1],["CDF",1],["CDR",-1]],"OFR",["FYR","OYR","OFY"]] | ["bary","OFR","Y","CD"] |
| 145 | ["bary",["OHR",-1],[null,["OHY",-1],["OHQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OH"] |
| 146 | ["bary",["OFR",-1],[null,["OFY",-1],["OFQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OF"] |
| 147 | ["bary",["HYR",1],[["OHY",-1],null,["HYQ",1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HY"] |
| 148 | ["bary",["HQR",-1],[["OHQ",-1],["HYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","HQ"] |
| 149 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 150 | ["bary",["FYR",1],[["OFY",-1],null,["FYQ",1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","FY"] |
| 151 | ["bary",["FQR",-1],[["OFQ",-1],["FYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","FQ"] |
| 152 | ["bary",["DQR",-1],[["ODQ",-1],["DZQ",-1],null],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DQ"] |
| 153 | ["bary",["CFP",-1],[["HCF",1],null,["CDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CF"] |
| 154 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 155 | ["bary",["OZP",1],[["OHZ",1],["ODZ",1],["OYZ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OZ"] |
| 156 | ["bary",["CDP",1],[["HCD",1],null,["CDZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CD"] |
| 157 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 158 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 159 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HF"] |
| 160 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 161 | ["bary",["OFR",-1],[["OCF",-1],["ODF",-1],["OFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OF"] |
| 162 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 163 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 164 | ["bary",["HYR",1],[["HCY",1],["HDY",1],["HYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HY"] |
| 165 | ["bary",["CFR",-1],[null,["CDF",-1],["CFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CF"] |
| 166 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 167 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 168 | ["bary",["FYR",1],[["CFY",1],["DFY",1],["FYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","FY"] |
| 169 | ["bary",["DFR",1],[["CDF",1],["DFZ",1],["DFQ",1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","DF"] |
| 170 | ["bary",["OZP",1],[["ODZ",1],["OFZ",1],["OYZ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OZ"] |
| 171 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 172 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 173 | ["bary",["CDP",1],[null,["CDF",1],["CDZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CD"] |
| 174 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 175 | ["bary",["CPQ",1],[["CDQ",1],["CFQ",1],["CZQ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CQ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s17 | 2 | sub | DFY | hi | 374729/500000 | hi_ODF,lo_ODY,lo_OFY |
| s24 | 3 | sub | OZQ | hi | 35909/62500 | hi_ODQ,lo_DZQ,lo_ODZ |
| s37 | 7 | sub | HDZ | hi | 788053/1000000 | hi_HCD,lo_CDZ,lo_HCZ |
| s47 | 11 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s48 | 12 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s70 | 18 | sumlo | OFZ | lo | 84863/250000 | lo_ODF,lo_OZQ,lo_ODZ,lo_OFQ,hi_ODQ |
| s82 | 25 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s84 | 26 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s82,lo_CQR,lo_HCD,hi_CDQ |
| s85 | 28 | sumlo | CFQ | lo | 36611/125000 | lo_CDF,lo_CYQ,lo_CDQ,lo_CFY,hi_CDY |
| s86 | 29 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s48 |
| s89 | 30 | sumlo | CFR | lo | 8741/40000 | lo_CDF,lo_CQR,lo_CDR,s85,hi_CDQ |
| s93 | 33 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s94 | 34 | sumlo | DZQ | lo | 157113/1000000 | lo_CDQ,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s104 | 35 | sumlo | FYQ | lo | 18067/125000 | s85,lo_OFY,lo_CFY,lo_OFQ,hi_OCF |
| s105 | 36 | sumlo | OFP | lo | 136579/1000000 | lo_DFP,s70,lo_FZP,lo_ODF,s47 |
| s106 | 38 | sumlo | HCF | lo | 48829/500000 | lo_CDF,lo_HFY,lo_CFY,lo_HDF,s17 |
| s107 | 42 | sumlo | CFP | lo | 105463/1000000 | lo_CDF,lo_FZP,s86,lo_DFP,s47 |
| s114 | 54 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s119 | 55 | diffhi | FQR | hi | 4874/15625 | hi_DQR,hi_OFQ,s93,lo_OQR,lo_ODQ |
| s121 | 56 | sumlo | OYQ | lo | 77341/200000 | lo_DYQ,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s124 | 57 | sumlo | DQR | lo | 137767/1000000 | s94,lo_OQR,lo_ODQ,lo_ZQR,s24 |
| s125 | 57 | sumlo | OZQ | lo | 169131/500000 | s94,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s129 | 58 | sumlo | FQR | lo | 22491/200000 | s104,lo_OQR,lo_OFQ,lo_YQR,hi_OYQ |
| s135 | 63 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s150 | 65 | balance_lo | CFY | lo | 22191/200000 | s106,s121,lo_HFY,lo_OCQ,lo_HCY,lo_OFQ,hi_OHQ |
| s153 | 66 | balance_lo | CDY | lo | 7529/20000 | lo_CDF,s121,lo_DFY,lo_OCQ,s150,lo_ODQ,hi_OFQ |
| s154 | 67 | balance_lo | CFZ | lo | 121857/1000000 | lo_FZP,lo_OCQ,lo_CZP,lo_OFQ,s107,s125,hi_OPQ |
| s159 | 71 | balance_lo | CFP | lo | 13407/125000 | s154,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s37 |
| s161 | 72 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s164 | 73 | balance_lo | HYR | lo | 137049/1000000 | s124,lo_HCY,lo_CQR,lo_HDY,lo_CDR,s161,hi_CDQ |
| s167 | 75 | balance_lo | OYR | lo | 115381/500000 | s121,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s153,hi_CDQ |
| s168 | 76 | balance_lo | OZR | lo | 19659/125000 | s125,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,lo_CDZ,hi_CDQ |
| s175 | 80 | balance_lo | FYQ | lo | 1119/5000 | lo_CDQ,lo_OFY,lo_ODQ,s150,lo_OCQ,lo_DFY,hi_OCD |
| s177 | 82 | balance_lo | FYR | lo | 147729/1000000 | s124,s150,lo_CQR,lo_DFY,lo_CDR,s175,hi_CDQ |
| s180 | 83 | balance_lo | HCP | lo | 72347/500000 | lo_HCD,lo_FZP,lo_CDP,lo_HFZ,lo_HDP,s154,s47 |
| s189 | 90 | balance_lo | OCZ | lo | 184807/1000000 | lo_OCD,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s190 | 91 | balance_lo | OCY | lo | 143987/1000000 | lo_OCF,lo_YQR,s150,lo_OQR,lo_OFY,lo_CQR,s119 |
| s191 | 92 | balance_lo | OFZ | lo | 215699/500000 | lo_ODF,lo_ZQR,lo_DFZ,lo_OQR,lo_ODZ,s129,hi_DQR |
| s192 | 93 | balance_lo | OYZ | lo | 27721/250000 | lo_ODY,lo_ZQR,lo_DYZ,lo_OQR,lo_ODZ,lo_YQR,hi_DQR |
| s193 | 94 | balance_lo | HQR | lo | 137793/1000000 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,s124,hi_CDY |
| s195 | 96 | balance_lo | FQR | lo | 141093/1000000 | lo_CDF,lo_YQR,lo_DFY,lo_CQR,s150,s124,hi_CDY |
| s201 | 99 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s204 | 100 | linear | OHR | lo | 460811/1000000 | s164,lo_OHY,s167 |
| s207 | 102 | linear | OCD | lo | 370807/1000000 | lo_CDZ,s189,lo_ODZ |
| s215 | 105 | linear | DFQ | lo | 20081/50000 | lo_ODF,lo_ODQ,hi_OFQ |
| s227 | 106 | linear | OFR | lo | 471491/1000000 | s177,lo_OFY,s167 |
| s229 | 107 | linear | OFQ | lo | 44099/62500 | s195,s227,lo_OQR |
| s231 | 108 | linear | OYQ | lo | 208381/500000 | lo_OQR,s167,lo_YQR |
| s233 | 109 | linear | OZQ | lo | 42909/125000 | lo_OQR,s168,lo_ZQR |
| s240 | 110 | linear | HCQ | lo | 224659/500000 | lo_CQR,s84,s193 |
| s249 | 112 | linear | CDQ | lo | 323767/1000000 | lo_CDR,lo_CQR,s124 |
| s252 | 113 | linear | CFQ | lo | 226309/500000 | s89,lo_CQR,s195 |
| s254 | 114 | linear | CYQ | lo | 166923/500000 | lo_CQR,s135,lo_YQR |
| s266 | 118 | quad | CDP | lo | 81/250 | hi_CDQ |
| s269 | 120 | linear | OHC | lo | 370807/1000000 | s207 |
| s270 | 121 | linear | HCD | hi | 907/1000 | lo_HDF |
| s284 | 123 | bary_hi | FYP | lo | 10147/100000 | hi_OHC,lo_HCY,s190,lo_OHY,s105,lo_HFP,s159 |
| s285 | 124 | bary_hi | FYQ | lo | 47077/200000 | hi_OHC,lo_HCY,s190,lo_OHY,s229,lo_HFQ,s252 |
| s286 | 125 | bary_hi | FYR | lo | 5213/31250 | hi_OHC,lo_HCY,s190,lo_OHY,s227,lo_HFR,s89 |
| s312 | 127 | bary_lo | OCY | lo | 163187/1000000 | hi_OHQ,s161,s231,lo_OHY,s269,lo_OCQ |
| s326 | 128 | bary_lo | OFR | hi | 375041/500000 | hi_OHQ,s193,lo_OQR,s204,lo_OHF,hi_OFQ |
| s342 | 129 | bary_hi | OZQ | hi | 499911/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s189,lo_OCQ,hi_ODQ |
| s346 | 130 | bary_hi | HFZ | lo | 11719/125000 | hi_OCD,lo_CDZ,lo_ODZ,s189,lo_OHF,s106,lo_HDF |
| s351 | 131 | bary_hi | CZQ | hi | 314397/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s189,hi_OCQ,hi_CDQ |
| s355 | 132 | bary_hi | DZQ | lo | 82171/500000 | hi_OCD,lo_CDZ,lo_ODZ,s189,lo_ODQ,s249 |
| s368 | 133 | bary_hi | DYQ | lo | 81693/200000 | hi_OCF,s150,lo_OFY,s312,lo_ODQ,s249,s215 |
| s394 | 134 | bary_lo | HDZ | hi | 521131/1000000 | hi_ODQ,s355,s233,lo_ODZ,hi_OHD,hi_HDQ |
| s395 | 135 | bary_hi | CDZ | hi | 102987/500000 | hi_ODQ,s355,s233,lo_ODZ,hi_OCD,s249 |
| s397 | 136 | bary_hi | DFZ | hi | 121241/250000 | hi_ODQ,s355,s233,lo_ODZ,hi_ODF,hi_DFQ |
| s418 | 139 | bary_lo | HDY | hi | 129243/250000 | hi_OFQ,s285,s231,lo_OFY,hi_OHD,lo_HDF,hi_HDQ |
| s426 | 142 | bary_hi | DFY | hi | 51841/100000 | hi_OFQ,s285,s231,lo_OFY,hi_ODF,hi_DFQ |
| s429 | 143 | bary_lo | FYQ | hi | 238309/500000 | hi_OFQ,s285,s231,lo_OFY,hi_OFQ |
| s436 | 144 | bary_hi | CDY | hi | 349041/500000 | s326,s286,s167,lo_OFY,hi_OCD,hi_CDF,lo_CDR |
| s460 | 152 | bary_hi | DQR | lo | 499/3125 | s342,lo_ZQR,lo_OQR,s168,lo_ODQ,s355 |
| s489 | 154 | bary_lo | DFP | lo | 104381/1000000 | s270,s266,lo_HDP,s180,lo_HDF,lo_CDF |
| s521 | 156 | bary_hi | CDP | hi | 124007/200000 | s394,lo_DZP,lo_HZP,lo_HDP,s270,s395 |
| s539 | 157 | bary_hi | OPQ | hi | 832521/1000000 | hi_CDF,s489,s159,s266,lo_OCQ,hi_ODQ,hi_OFQ |
| s542 | 158 | bary_lo | HYP | lo | 57711/500000 | hi_CDF,s489,s159,s266,lo_HCY,lo_HDY,lo_HFY |
| s550 | 160 | bary_lo | HYZ | lo | 124261/1000000 | s521,lo_DZP,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,s542 |
| s554 | 162 | bary_lo | HCR | lo | 253163/1000000 | hi_CDQ,s460,lo_CQR,lo_CDR,lo_HCD,s240 |
| s555 | 163 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,s460,lo_CQR,lo_CDR,s270,hi_HDQ |
| s560 | 165 | bary_hi | CFR | lo | 253893/1000000 | hi_CDQ,s460,lo_CQR,lo_CDR,lo_CDF,s252 |
| s561 | 166 | bary_hi | CYR | lo | 157279/1000000 | hi_CDQ,s460,lo_CQR,lo_CDR,s153,s254 |
| s568 | 168 | bary_lo | FYR | lo | 175717/1000000 | hi_CDQ,s460,lo_CQR,lo_CDR,s150,lo_DFY,s285 |
| s583 | 169 | bary_lo | DFR | lo | 43803/100000 | s351,lo_ZQR,lo_CQR,lo_CZR,lo_CDF,lo_DFZ,s215 |
| s589 | 170 | bary_lo | OZP | lo | 157307/1000000 | s426,s284,lo_DYP,s489,lo_ODZ,s191,s192 |
| s606 | 172 | bary_lo | HYP | lo | 135397/1000000 | s397,lo_FZP,lo_DZP,s489,lo_HDY,lo_HFY,s550 |
| s607 | 173 | bary_hi | CDP | hi | 22877/40000 | s397,lo_FZP,lo_DZP,s489,hi_CDF,s395 |
| s608 | 174 | bary_hi | CFP | lo | 79657/500000 | s397,lo_FZP,lo_DZP,s489,lo_CDF,s154 |
| s611 | 175 | bary_hi | CPQ | hi | 307061/500000 | s397,lo_FZP,lo_DZP,s489,hi_CDQ,s114,s351 |
| s626 | 1 | sum | OCF | lo | 183571/500000 | s150,s312,lo_OFY |
| s628 | 4 | sum | OFQ | lo | 745147/1000000 | s285,lo_OFY,s231 |
| s629 | 9 | sum | HCQ | lo | 120989/250000 | lo_CQR,s554,s193 |
| s630 | 10 | sum | HDY | lo | 321397/1000000 | lo_DYP,lo_HDP,s606 |
| s632 | 13 | sum | CDQ | lo | 4321/12500 | lo_CDR,lo_CQR,s460 |
| s633 | 14 | sum | CFQ | lo | 243993/500000 | s560,lo_CQR,s195 |
| s634 | 15 | sum | CYQ | lo | 343279/1000000 | lo_CQR,s561,lo_YQR |
| s636 | 16 | sum | DFY | lo | 298851/1000000 | s489,lo_DYP,s284 |
| s637 | 17 | sum | DFZ | lo | 290381/1000000 | s489,lo_DZP,lo_FZP |
| s643 | 19 | sumlo | HCF | lo | 17697/125000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s418 |
| s646 | 21 | sumlo | HYQ | lo | 105637/500000 | s629,s630,lo_HCY,s201,s270 |
| s649 | 24 | sumlo | CFY | lo | 406/3125 | lo_CDF,lo_HCY,s153,s643,s270 |
| s651 | 26 | sumlo | HCR | lo | 260833/1000000 | lo_CDR,s629,lo_CQR,lo_HCD,hi_CDQ |
| s654 | 30 | sumlo | CFR | lo | 10469/40000 | lo_CDF,lo_CQR,lo_CDR,s633,hi_CDQ |
| s655 | 31 | sumlo | CYR | lo | 19921/125000 | lo_CDR,s634,s153,lo_CQR,hi_CDQ |
| s658 | 32 | sumlo | CFZ | lo | 5851/40000 | s608,lo_CZQ,s633,lo_CZP,s611 |
| s660 | 34 | sumlo | DZQ | lo | 167881/1000000 | s632,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s664 | 38 | sumlo | HCF | lo | 73903/500000 | lo_CDF,lo_HFY,s649,lo_HDF,s426 |
| s666 | 39 | sumlo | HFQ | lo | 117729/1000000 | s633,lo_HDF,s215,s664,hi_CDF |
| s667 | 41 | sumlo | HFR | lo | 55051/500000 | s583,lo_HFY,s568,lo_HDF,s426 |
| s668 | 42 | sumlo | CFP | lo | 164569/1000000 | lo_CDF,lo_FZP,s658,s489,s397 |
| s670 | 43 | sumlo | OHY | lo | 24509/200000 | lo_HFY,s231,s646,lo_OFY,s429 |
| s675 | 55 | diffhi | FQR | hi | 69691/250000 | hi_DQR,hi_OFQ,s215,lo_OQR,lo_ODQ |
| s676 | 56 | sumlo | OYQ | lo | 438159/1000000 | s368,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s678 | 57 | sumlo | DQR | lo | 80169/500000 | s660,lo_OQR,lo_ODQ,lo_ZQR,s342 |
| s684 | 65 | balance_lo | CFY | lo | 14271/100000 | s664,s676,lo_HFY,lo_OCQ,lo_HCY,s628,hi_OHQ |
| s687 | 66 | balance_lo | CDY | lo | 218433/500000 | lo_CDF,s676,s636,lo_OCQ,s684,lo_ODQ,hi_OFQ |
| s689 | 67 | balance_lo | CFZ | lo | 40371/250000 | lo_FZP,lo_OCQ,lo_CZP,s628,s668,s233,s539 |
| s693 | 69 | balance_lo | OFP | lo | 57227/250000 | s191,lo_HDP,lo_FZP,lo_OHD,s589,lo_HDF,s394 |
| s695 | 71 | balance_lo | CFP | lo | 10579/62500 | s689,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s394 |
| s697 | 72 | balance_lo | HYQ | lo | 237511/1000000 | s632,s670,lo_ODQ,lo_HCY,lo_OCQ,s630,hi_OCD |
| s698 | 73 | balance_lo | HYR | lo | 159261/1000000 | s678,lo_HCY,lo_CQR,s630,lo_CDR,s697,hi_CDQ |
| s699 | 75 | balance_lo | OYR | lo | 137931/500000 | s676,lo_CDR,lo_YQR,s207,lo_OQR,s687,hi_CDQ |
| s700 | 76 | balance_lo | OZR | lo | 17871/100000 | s233,lo_CDR,lo_ZQR,s207,lo_OQR,lo_CDZ,hi_CDQ |
| s705 | 83 | balance_lo | HCP | lo | 3542/15625 | lo_HCD,lo_FZP,s266,s346,lo_HDP,s689,s397 |
| s706 | 84 | balance_lo | FYP | lo | 28869/250000 | s687,lo_HFP,s630,s695,lo_HCY,s489,s270 |
| s707 | 85 | balance_lo | FYR | lo | 5959/31250 | s687,s667,s630,s654,lo_HCY,s583,s270 |
| s715 | 89 | balance_lo | OHZ | lo | 441469/1000000 | lo_OHD,lo_ZQR,lo_HDZ,lo_OQR,lo_ODZ,s193,hi_DQR |
| s716 | 90 | balance_lo | OCZ | lo | 44259/200000 | s207,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s717 | 91 | balance_lo | OCY | lo | 1257/6250 | s626,lo_YQR,s684,lo_OQR,lo_OFY,lo_CQR,s675 |
| s718 | 92 | balance_lo | OFZ | lo | 447303/1000000 | lo_ODF,lo_ZQR,s637,lo_OQR,lo_ODZ,s195,hi_DQR |
| s720 | 94 | balance_lo | HQR | lo | 156633/1000000 | lo_HCD,lo_YQR,s630,lo_CQR,lo_HCY,s678,s436 |
| s721 | 96 | balance_lo | FQR | lo | 165047/1000000 | lo_CDF,lo_YQR,s636,lo_CQR,s684,s678,s436 |
| s723 | 97 | linear | OHC | lo | 83333/200000 | lo_HCY,s717,s670 |
| s731 | 100 | linear | OHR | lo | 139417/250000 | s698,s670,s699 |
| s732 | 101 | linear | OHQ | lo | 807301/1000000 | s720,s731,lo_OQR |
| s734 | 102 | linear | OCD | lo | 81459/200000 | lo_CDZ,s716,lo_ODZ |
| s735 | 103 | linear | OCF | lo | 43683/100000 | s684,s717,lo_OFY |
| s738 | 104 | linear | CFQ | hi | 14711/20000 | s735,hi_OCQ,hi_OFQ |
| s750 | 106 | linear | OFR | lo | 11191/20000 | s707,lo_OFY,s699 |
| s751 | 107 | linear | OFQ | lo | 817597/1000000 | s721,s750,lo_OQR |
| s752 | 107 | linear | OFR | hi | 728333/1000000 | s721,hi_OFQ,lo_OQR |
| s753 | 108 | linear | OYQ | lo | 230931/500000 | lo_OQR,s699,lo_YQR |
| s755 | 109 | linear | OZQ | lo | 36471/100000 | lo_OQR,s700,lo_ZQR |
| s757 | 110 | linear | HCQ | lo | 255233/500000 | lo_CQR,s651,s720 |
| s759 | 111 | linear | HDQ | hi | 377147/500000 | hi_DQR,s555,s720 |
| s763 | 112 | linear | CDQ | lo | 173169/500000 | lo_CDR,lo_CQR,s678 |
| s764 | 113 | linear | CFQ | lo | 129943/250000 | s654,lo_CQR,s721 |
| s765 | 114 | linear | CYQ | lo | 43171/125000 | lo_CQR,s655,lo_YQR |
| s767 | 115 | linear | DFY | lo | 312857/1000000 | s489,lo_DYP,s706 |
| s770 | 122 | linear | CDF | hi | 426097/500000 | s664 |
| s777 | 123 | bary_hi | FYP | lo | 63811/500000 | hi_OHC,lo_HCY,s717,s670,s693,lo_HFP,s695 |
| s778 | 124 | bary_hi | FYQ | lo | 297817/1000000 | hi_OHC,lo_HCY,s717,s670,s751,s666,s764 |
| s779 | 125 | bary_hi | FYR | lo | 205187/1000000 | hi_OHC,lo_HCY,s717,s670,s750,s667,s654 |
| s784 | 127 | bary_lo | OCY | lo | 101919/500000 | hi_OHQ,s697,s753,s670,s723,lo_OCQ |
| s808 | 132 | bary_hi | DZQ | lo | 167987/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s716,lo_ODQ,s763 |
| s816 | 133 | bary_hi | DYQ | lo | 442217/1000000 | hi_OCF,s684,lo_OFY,s784,lo_ODQ,s763,s215 |
| s827 | 134 | bary_lo | HDZ | hi | 490417/1000000 | hi_ODQ,s808,s755,lo_ODZ,hi_OHD,s759 |
| s829 | 136 | bary_hi | DFZ | hi | 91719/200000 | hi_ODQ,s808,s755,lo_ODZ,hi_ODF,hi_DFQ |
| s843 | 137 | bary_lo | OFY | hi | 226701/1000000 | hi_OFQ,s778,s753,lo_OFY,hi_OFQ |
| s845 | 138 | bary_hi | OYQ | hi | 595563/1000000 | hi_OFQ,s778,s753,lo_OFY,hi_OFQ |
| s847 | 139 | bary_lo | HDY | hi | 58131/125000 | hi_OFQ,s778,s753,lo_OFY,hi_OHD,lo_HDF,s759 |
| s849 | 140 | bary_lo | HYQ | hi | 382351/1000000 | hi_OFQ,s778,s753,lo_OFY,hi_OHQ,s666 |
| s852 | 141 | bary_hi | CFY | hi | 28599/125000 | hi_OFQ,s778,s753,lo_OFY,hi_OCF,s764 |
| s856 | 142 | bary_hi | DFY | hi | 475639/1000000 | hi_OFQ,s778,s753,lo_OFY,hi_ODF,hi_DFQ |
| s860 | 143 | bary_lo | FYQ | hi | 215759/500000 | hi_OFQ,s778,s753,lo_OFY,hi_OFQ |
| s867 | 144 | bary_hi | CDY | hi | 653679/1000000 | s752,s779,s699,lo_OFY,hi_OCD,s770,lo_CDR |
| s873 | 146 | bary_lo | OFR | hi | 28549/40000 | s845,lo_YQR,lo_OQR,s699,s843,hi_OFQ |
| s876 | 147 | bary_hi | HYR | hi | 60951/250000 | s845,lo_YQR,lo_OQR,s699,s670,s849 |
| s877 | 148 | bary_hi | HQR | lo | 10197/62500 | s845,lo_YQR,lo_OQR,s699,s732,s697 |
| s881 | 149 | bary_hi | DQR | lo | 7097/40000 | s845,lo_YQR,lo_OQR,s699,lo_ODQ,s816 |
| s882 | 150 | bary_hi | FYR | hi | 282229/1000000 | s845,lo_YQR,lo_OQR,s699,lo_OFY,s860 |
| s883 | 151 | bary_hi | FQR | lo | 174177/1000000 | s845,lo_YQR,lo_OQR,s699,s751,s778 |
| s892 | 153 | bary_lo | CFP | hi | 50949/125000 | s270,s266,lo_HDP,s705,s664,s770 |
| s903 | 155 | bary_lo | OZP | lo | 166263/1000000 | s847,lo_DYP,s606,lo_HDP,s715,lo_ODZ,s192 |
| s922 | 157 | bary_hi | OPQ | hi | 202329/250000 | s770,s489,s695,s266,lo_OCQ,hi_ODQ,hi_OFQ |
| s925 | 158 | bary_lo | HYP | lo | 34591/250000 | s770,s489,s695,s266,lo_HCY,s630,lo_HFY |
| s933 | 159 | bary_hi | HFZ | lo | 101911/1000000 | s607,lo_DZP,lo_CZP,lo_CDZ,s664,lo_HDF,lo_HFP |
| s934 | 160 | bary_lo | HYZ | lo | 27503/200000 | s607,lo_DZP,lo_CZP,lo_CDZ,lo_HCY,s630,s925 |
| s939 | 162 | bary_lo | HCR | lo | 266703/1000000 | hi_CDQ,s881,lo_CQR,lo_CDR,lo_HCD,s757 |
| s940 | 163 | bary_lo | HDR | hi | 672351/1000000 | hi_CDQ,s881,lo_CQR,lo_CDR,s270,s759 |
| s943 | 164 | bary_lo | HYR | lo | 43893/250000 | hi_CDQ,s881,lo_CQR,lo_CDR,lo_HCY,s630,s697 |
| s944 | 165 | bary_hi | CFR | lo | 268763/1000000 | hi_CDQ,s881,lo_CQR,lo_CDR,lo_CDF,s764 |
| s945 | 166 | bary_hi | CYR | lo | 21651/125000 | hi_CDQ,s881,lo_CQR,lo_CDR,s687,s765 |
| s947 | 167 | bary_hi | DFR | hi | 63073/100000 | hi_CDQ,s881,lo_CQR,lo_CDR,s770,hi_DFQ |
| s949 | 168 | bary_lo | FYR | lo | 21473/100000 | hi_CDQ,s881,lo_CQR,lo_CDR,s684,s767,s778 |
| s965 | 172 | bary_lo | HYP | lo | 149449/1000000 | s829,lo_FZP,lo_DZP,s489,s630,lo_HFY,s934 |
| s967 | 174 | bary_hi | CFP | lo | 88747/500000 | s829,lo_FZP,lo_DZP,s489,lo_CDF,s689 |
| s970 | 175 | bary_hi | CPQ | hi | 5757/10000 | s829,lo_FZP,lo_DZP,s489,hi_CDQ,s738,s351 |
| s979 | 0 | sum | OHQ | lo | 410959/500000 | s697,s670,s753 |
| s986 | 4 | sum | OFQ | lo | 852679/1000000 | s778,lo_OFY,s753 |
| s987 | 6 | sum | OFR | lo | 72949/125000 | s949,lo_OFY,s699 |
| s989 | 6 | sub | OYR | hi | 81199/200000 | s873,s949,lo_OFY |
| s990 | 9 | sum | HCQ | lo | 104571/200000 | lo_CQR,s939,s877 |
| s991 | 10 | sum | HDY | lo | 335449/1000000 | lo_DYP,lo_HDP,s965 |
| s994 | 13 | sum | CDQ | lo | 14537/40000 | lo_CDR,lo_CQR,s881 |
| s995 | 14 | sum | CFQ | lo | 26797/50000 | s944,lo_CQR,s883 |
| s996 | 15 | sum | CYQ | lo | 44901/125000 | lo_CQR,s945,lo_YQR |
| s998 | 16 | sum | DFY | lo | 325003/1000000 | s489,lo_DYP,s777 |
| s1002 | 19 | sumlo | HCF | lo | 157383/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s847 |
| s1007 | 24 | sumlo | CFY | lo | 29393/200000 | lo_CDF,lo_HCY,s687,s1002,s270 |
| s1008 | 26 | sumlo | HCR | lo | 134723/500000 | lo_CDR,s990,lo_CQR,lo_HCD,hi_CDQ |
| s1010 | 30 | sumlo | CFR | lo | 272343/1000000 | lo_CDF,lo_CQR,lo_CDR,s995,hi_CDQ |
| s1011 | 31 | sumlo | CYR | lo | 176273/1000000 | lo_CDR,s996,s687,lo_CQR,hi_CDQ |
| s1013 | 32 | sumlo | CFZ | lo | 34519/200000 | s967,lo_CZQ,s995,lo_CZP,s970 |
| s1020 | 38 | sumlo | HCF | lo | 16443/100000 | lo_CDF,lo_HFY,s1007,lo_HDF,s856 |
| s1023 | 40 | sumlo | HFQ | lo | 68379/500000 | s215,lo_HFY,s778,lo_HDF,s856 |
| s1025 | 42 | sumlo | CFP | lo | 90011/500000 | lo_CDF,lo_FZP,s1013,s489,s829 |
| s1028 | 43 | sumlo | OHY | lo | 150727/1000000 | lo_HFY,s753,s697,lo_OFY,s860 |
| s1034 | 46 | sumlo | HYQ | lo | 267069/1000000 | s996,lo_HFY,s778,lo_HCY,s852 |
| s1037 | 51 | sumlo | DZP | lo | 97743/1000000 | s266,lo_FZP,lo_CZP,s489,s892 |
| s1038 | 52 | sumlo | HDQ | lo | 430877/1000000 | s215,s979,s1023,lo_ODQ,hi_OFQ |
| s1039 | 53 | diffhi | HQR | hi | 69859/250000 | hi_DQR,hi_OHQ,s1038,lo_OQR,lo_ODQ |
| s1045 | 59 | sumlo | FQR | lo | 182869/1000000 | s949,lo_OQR,s987,lo_YQR,s989 |
| s1047 | 64 | balance_lo | HCD | lo | 351373/500000 | lo_CDF,s979,lo_HDF,lo_OCQ,s1020,lo_ODQ,hi_OFQ |
| s1049 | 65 | balance_lo | CFY | lo | 40973/250000 | s1020,s753,lo_HFY,lo_OCQ,lo_HCY,s986,hi_OHQ |
| s1052 | 66 | balance_lo | CDY | lo | 7358/15625 | lo_CDF,s753,s998,lo_OCQ,s1049,lo_ODQ,hi_OFQ |
| s1053 | 67 | balance_lo | CFZ | lo | 94897/500000 | lo_FZP,lo_OCQ,lo_CZP,s986,s1025,s755,s922 |
| s1055 | 68 | balance_lo | OHC | lo | 94489/200000 | lo_OFY,s990,s753,s1020,s986,lo_HCY,s860 |
| s1056 | 69 | balance_lo | OFP | lo | 247959/1000000 | s718,lo_HDP,lo_FZP,lo_OHD,s903,lo_HDF,s827 |
| s1057 | 71 | balance_lo | CFP | lo | 46723/250000 | s1053,lo_HDP,lo_FZP,s1047,lo_CZP,lo_HDF,s827 |
| s1064 | 75 | balance_lo | OYR | lo | 296729/1000000 | s753,lo_CDR,lo_YQR,s734,lo_OQR,s1052,hi_CDQ |
| s1065 | 76 | balance_lo | OZR | lo | 11971/62500 | s755,lo_CDR,lo_ZQR,s734,lo_OQR,lo_CDZ,hi_CDQ |
| s1072 | 79 | balance_lo | DZQ | lo | 172771/1000000 | s986,lo_DZR,s1045,lo_ODZ,lo_OQR,s637,s873 |
| s1075 | 84 | balance_lo | FYP | lo | 128109/1000000 | s1052,lo_HFP,s991,s1057,lo_HCY,s489,s270 |
| s1080 | 86 | balance_lo | HCZ | lo | 47547/200000 | s1020,lo_YZQ,s1053,s1034,s933,s996,s860 |
| s1084 | 87 | balance_lo | DYR | lo | 337331/1000000 | lo_ODF,lo_YQR,s215,s1064,lo_ODQ,s949,hi_OFQ |
| s1089 | 88 | balance_lo | OCY | lo | 238351/1000000 | s1055,lo_YQR,lo_HCY,lo_OQR,s1028,lo_CQR,s1039 |
| s1095 | 95 | balance_lo | HQR | lo | 178973/1000000 | s1020,lo_YQR,lo_HFY,lo_CQR,lo_HCY,s1045,s852 |
| s1096 | 96 | balance_lo | FQR | lo | 189459/1000000 | lo_CDF,lo_YQR,s998,lo_CQR,s1049,s881,s867 |
| s1099 | 97 | linear | OHC | lo | 241039/500000 | lo_HCY,s1089,s1028 |
| s1101 | 98 | linear | HCQ | hi | 351961/500000 | hi_OCQ,s1099,hi_OHQ |
| s1106 | 100 | linear | OHR | lo | 155757/250000 | s943,s1028,s1064 |
| s1107 | 101 | linear | OHQ | lo | 895001/1000000 | s1095,s1106,lo_OQR |
| s1110 | 103 | linear | OCF | lo | 495243/1000000 | s1049,s1089,lo_OFY |
| s1112 | 104 | linear | CFQ | hi | 677137/1000000 | s1110,hi_OCQ,hi_OFQ |
| s1120 | 106 | linear | OFR | lo | 604459/1000000 | s949,lo_OFY,s1064 |
| s1121 | 107 | linear | OFQ | lo | 443459/500000 | s1096,s1120,lo_OQR |
| s1123 | 108 | linear | OYQ | lo | 482729/1000000 | lo_OQR,s1064,lo_YQR |
| s1125 | 109 | linear | OZQ | lo | 5899/15625 | lo_OQR,s1065,lo_ZQR |
| s1127 | 110 | linear | HCQ | lo | 541419/1000000 | lo_CQR,s1008,s1095 |
| s1130 | 111 | linear | HDQ | hi | 363689/500000 | hi_DQR,s940,s1095 |
| s1132 | 113 | linear | CFQ | lo | 277401/500000 | s1010,lo_CQR,s1096 |
| s1134 | 114 | linear | CYQ | lo | 362273/1000000 | lo_CQR,s1011,lo_YQR |
| s1136 | 115 | linear | DFY | lo | 32549/100000 | s489,lo_DYP,s1075 |
| s1139 | 116 | linear | DFQ | hi | 675271/1000000 | s947,hi_DQR,s1096 |
| s1142 | 117 | quad | HDR | lo | 125049/250000 | s876 |
| s1143 | 119 | quad | DFR | lo | 461771/1000000 | s882 |
| s1153 | 123 | bary_hi | FYP | lo | 137981/1000000 | hi_OHC,lo_HCY,s1089,s1028,s1056,lo_HFP,s1057 |
| s1154 | 124 | bary_hi | FYQ | lo | 345853/1000000 | hi_OHC,lo_HCY,s1089,s1028,s1121,s1023,s1132 |
| s1161 | 126 | bary_lo | OHY | hi | 125101/500000 | hi_OHQ,s1034,s1123,s1028,hi_OHQ |
| s1162 | 127 | bary_lo | OCY | lo | 24673/100000 | hi_OHQ,s1034,s1123,s1028,s1099,lo_OCQ |
| s1197 | 133 | bary_hi | DYQ | lo | 231793/500000 | hi_OCF,s1049,lo_OFY,s1162,lo_ODQ,s994,s215 |
| s1204 | 136 | bary_hi | DFZ | hi | 219639/500000 | hi_ODQ,s1072,s1125,lo_ODZ,hi_ODF,s1139 |
| s1222 | 137 | bary_lo | OFY | hi | 78899/500000 | hi_OFQ,s1154,s1123,lo_OFY,hi_OFQ |
| s1225 | 138 | bary_hi | OYQ | hi | 547527/1000000 | hi_OFQ,s1154,s1123,lo_OFY,hi_OFQ |
| s1228 | 139 | bary_lo | HDY | hi | 109847/250000 | hi_OFQ,s1154,s1123,lo_OFY,hi_OHD,lo_HDF,s1130 |
| s1230 | 140 | bary_lo | HYQ | hi | 349393/1000000 | hi_OFQ,s1154,s1123,lo_OFY,hi_OHQ,s1023 |
| s1232 | 141 | bary_hi | CFY | hi | 42411/200000 | hi_OFQ,s1154,s1123,lo_OFY,hi_OCF,s1132 |
| s1235 | 142 | bary_hi | DFY | hi | 453119/1000000 | hi_OFQ,s1154,s1123,lo_OFY,hi_ODF,s1139 |
| s1238 | 143 | bary_lo | FYQ | hi | 410651/1000000 | hi_OFQ,s1154,s1123,lo_OFY,hi_OFQ |
| s1251 | 145 | bary_lo | OHR | hi | 702789/1000000 | s1225,lo_YQR,lo_OQR,s1064,s1161,hi_OHQ |
| s1254 | 146 | bary_lo | OFR | hi | 6781/10000 | s1225,lo_YQR,lo_OQR,s1064,s1222,hi_OFQ |
| s1259 | 147 | bary_hi | HYR | hi | 2051/10000 | s1225,lo_YQR,lo_OQR,s1064,s1028,s1230 |
| s1260 | 148 | bary_hi | HQR | lo | 98691/500000 | s1225,lo_YQR,lo_OQR,s1064,s1107,s1034 |
| s1266 | 149 | bary_hi | DQR | lo | 196621/1000000 | s1225,lo_YQR,lo_OQR,s1064,lo_ODQ,s1197 |
| s1267 | 150 | bary_hi | FYR | hi | 255353/1000000 | s1225,lo_YQR,lo_OQR,s1064,lo_OFY,s1238 |
| s1268 | 151 | bary_hi | FQR | lo | 209391/1000000 | s1225,lo_YQR,lo_OQR,s1064,s1121,s1154 |
| s1322 | 161 | bary_hi | OFR | lo | 625981/1000000 | hi_CDQ,s1266,lo_CQR,lo_CDR,s1110,lo_ODF,s1121 |
| s1323 | 162 | bary_lo | HCR | lo | 275493/1000000 | hi_CDQ,s1266,lo_CQR,lo_CDR,s1047,s1127 |
| s1326 | 164 | bary_lo | HYR | lo | 46307/250000 | hi_CDQ,s1266,lo_CQR,lo_CDR,lo_HCY,s991,s1034 |
| s1327 | 165 | bary_hi | CFR | lo | 6913/25000 | hi_CDQ,s1266,lo_CQR,lo_CDR,lo_CDF,s1132 |
| s1328 | 166 | bary_hi | CYR | lo | 18449/100000 | hi_CDQ,s1266,lo_CQR,lo_CDR,s1052,s1134 |
| s1334 | 168 | bary_lo | FYR | lo | 47993/200000 | hi_CDQ,s1266,lo_CQR,lo_CDR,s1049,s1136,s1154 |
| s1346 | 171 | bary_lo | HCP | lo | 36977/125000 | s1204,lo_FZP,s1037,s489,s1047,s1020,s1080 |
| s1373 | 5 | sum | OFQ | lo | 232093/250000 | s1268,s1322,lo_OQR |
| s1376 | 6 | sum | OFR | lo | 314847/500000 | s1334,lo_OFY,s1064 |
| s1378 | 6 | sub | OYR | hi | 69027/200000 | s1254,s1334,lo_OFY |
| s1379 | 8 | sum | HCD | lo | 44551/62500 | s266,s1346,lo_HDP |
| s1380 | 9 | sum | HCQ | lo | 4527/8000 | lo_CQR,s1323,s1260 |
| s1384 | 13 | sum | CDQ | lo | 382621/1000000 | lo_CDR,lo_CQR,s1266 |
| s1385 | 14 | sum | CFQ | lo | 578911/1000000 | s1327,lo_CQR,s1268 |
| s1386 | 15 | sum | CYQ | lo | 37049/100000 | lo_CQR,s1328,lo_YQR |
| s1388 | 16 | sum | DFY | lo | 167681/500000 | s489,lo_DYP,s1153 |
| s1400 | 19 | sumlo | HCF | lo | 170557/1000000 | s1379,lo_HFY,lo_HCY,lo_HDF,s1228 |
| s1401 | 20 | sumlo | HFQ | lo | 69523/500000 | s1400,s1038,s1380,lo_HDF,s270 |
| s1402 | 22 | sumlo | HCF | lo | 11727/62500 | s1380,lo_HFY,lo_HCY,s1401,s1230 |
| s1404 | 23 | sumlo | HFR | lo | 5803/40000 | lo_HDF,s1326,s1142,lo_HFY,s1228 |
| s1409 | 27 | sumlo | CFY | lo | 87619/500000 | s1385,lo_HCY,s1386,s1402,s1101 |
| s1414 | 28 | sumlo | CDY | lo | 95747/200000 | lo_CDF,s1386,s1384,s1409,s1112 |
| s1415 | 30 | sumlo | CFR | lo | 140929/500000 | lo_CDF,lo_CQR,lo_CDR,s1385,hi_CDQ |
| s1417 | 31 | sumlo | CYR | lo | 94021/500000 | lo_CDR,s1386,s1414,lo_CQR,hi_CDQ |
| s1432 | 37 | sumlo | FYQ | lo | 5582/15625 | s1268,lo_OFY,s1334,s1373,s1254 |
| s1440 | 40 | sumlo | HFQ | lo | 155753/1000000 | s215,lo_HFY,s1432,lo_HDF,s1235 |
| s1448 | 44 | sumlo | OHY | lo | 175529/1000000 | lo_HFY,s1064,s1326,lo_OFY,s1267 |
| s1452 | 45 | sumlo | FYQ | lo | 36069/100000 | s1334,s1123,lo_OFY,lo_YQR,s1378 |
| s1459 | 46 | sumlo | CFY | lo | 97311/500000 | s1386,lo_HFY,s1452,lo_HCY,s1230 |
| s1460 | 46 | sumlo | HYQ | lo | 32067/100000 | s1386,lo_HFY,s1452,lo_HCY,s1232 |
| s1464 | 47 | sumlo | HYR | lo | 187709/1000000 | s1417,lo_HFY,s1334,lo_HCY,s1232 |
| s1471 | 48 | sumlo | HDY | lo | 369379/1000000 | s1388,s1464,s1084,lo_HFY,s1267 |
| s1473 | 49 | sumlo | DYR | lo | 173689/500000 | s1197,s1464,s1471,lo_YQR,s1230 |
| s1479 | 50 | sumlo | CDY | lo | 522273/1000000 | s1459,s1197,s1386,s1388,s1238 |
| s1502 | 59 | sumlo | FQR | lo | 117169/500000 | s1334,lo_OQR,s1376,lo_YQR,s1378 |
| s1506 | 60 | sumlo | HCR | lo | 12561/40000 | s1415,s1464,s1417,s1404,s1267 |
| s1507 | 61 | sumlo | HDR | lo | 536803/1000000 | s1143,s1464,s1473,s1404,s1267 |
| s1508 | 62 | sumlo | HQR | lo | 225097/1000000 | s1502,s1464,s1404,lo_YQR,s1267 |
| s1560 | 70 | balance_hi | CFR | hi | 296833/1000000 | s1267,s270,s1459,s1507,s1417,lo_HDF,s1471 |
| s1577 | 72 | balance_lo | OCD | lo | 118817/250000 | s1384,s1448,lo_ODQ,lo_HCY,lo_OCQ,s1471,s1230 |
| s1586 | 73 | balance_lo | CDQ | lo | 402049/1000000 | s1266,lo_HCY,lo_CQR,s1471,lo_CDR,s1460,s1259 |
| s1587 | 73 | balance_lo | HYR | lo | 98167/500000 | s1266,lo_HCY,lo_CQR,s1471,lo_CDR,s1460,hi_CDQ |
| s1595 | 74 | balance_lo | HCQ | lo | 640213/1000000 | s1459,s1508,s1417,s1440,s1415,s1460,s1267 |
| s1617 | 75 | balance_lo | OYR | lo | 163887/500000 | s1123,lo_CDR,lo_YQR,s1577,lo_OQR,s1479,hi_CDQ |
| s1653 | 77 | balance_lo | HDQ | lo | 502817/1000000 | lo_HDF,lo_CQR,s215,s1506,s1440,lo_CDR,s1560 |
| s1660 | 78 | balance_lo | DFY | lo | 70517/200000 | s1448,s1143,s1587,lo_ODF,s1617,lo_HDF,s1251 |
| s1705 | 81 | balance_lo | FYQ | lo | 49749/125000 | s1586,lo_HFY,s1653,s1459,s1595,s1660,s270 |
| s1710 | 82 | balance_lo | CDQ | lo | 423219/1000000 | s1266,s1459,lo_CQR,s1660,lo_CDR,s1705,s1267 |

## Conclusion

{"triangle":"CDQ","lower":"s1710","upper":"hi_CDQ"}
