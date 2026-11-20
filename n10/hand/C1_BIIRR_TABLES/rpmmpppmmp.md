# Leaf rpmmpppmmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYP":-1,"QYZ":-1,"OFY":1}

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
| 10 | extreme | ["OCY","F","CYF",-1] |
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
| 28 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 29 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 30 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | plu | ["OHDYZ","OYZ",-1] |
| 33 | plu | ["OHDPR","OPR",-1] |
| 34 | plu | ["OHFYP","OYP",-1] |
| 35 | plu | ["DOHYZ","DYZ",1] |
| 36 | plu | ["FOHYZ","FYZ",1] |
| 37 | plu | ["FOHYP","FYP",1] |
| 38 | plu | ["YODPQ","YPQ",-1] |
| 39 | plu | ["YODPR","YPR",-1] |
| 40 | plu | ["ZOCFP","ZCF",-1] |
| 41 | plu | ["POCFZ","PCF",-1] |
| 42 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 43 | plu | ["YOZQR","YZR",-1] |
| 44 | plu | ["ZOCYR","ZOR",1] |
| 45 | plu | ["QOHYR","QHR",1] |
| 46 | plu | ["QOFYR","QFR",1] |
| 47 | plu | ["QOYZR","QZR",1] |
| 48 | plu | ["QOYPR","QPR",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
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
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","Z"] |
| lo_DYR | DYR | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 93/1000 | ["cost",""] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YZR | YZR | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCY | OCY | hi | 449/1000 | "C053" |
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
| hi_DQR | DQR | hi | 117/500 | ["side_pair_cap","DQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 3 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 4 | ["fan","OHQ","HQR","OHR","OQR"] | ["fan","OHQ","R"] |
| 5 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 6 | ["fan","ODR","DZR","ODZ","OZR"] | ["fan","ODR","Z"] |
| 7 | ["fan","OYQ","OQR","OYR","YQR"] | ["fan","OYQ","R"] |
| 8 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 9 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 10 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 11 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 12 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 13 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 14 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 15 | ["fan","CFQ","CFR","CQR","FQR"] | ["fan","CFQ","R"] |
| 16 | ["fan","CYQ","CQR","CYR","YQR"] | ["fan","CYQ","R"] |
| 17 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 18 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 19 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 20 | ["plu","OCY","OHQ","OCQ","OHY","OHC","OYQ"] | ["plu","OHCYQ"] |
| 21 | ["plu","OFQ","OHD","ODF","OHQ","ODQ","OHF"] | ["plu","OHDFQ"] |
| 22 | ["plu","ODQ","OHZ","ODZ","OHQ","OHD","OZQ"] | ["plu","OHDZQ"] |
| 23 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 24 | ["plu","HCD","OHQ","HCQ","OHD","HDQ","OHC"] | ["plu","HOCDQ"] |
| 25 | ["plu","HCF","OHP","HCP","OHF","HFP","OHC"] | ["plu","HOCFP"] |
| 26 | ["plu","HFY","OHD","HDF","OHY","HDY","OHF"] | ["plu","HODFY"] |
| 27 | ["plu","HFQ","OHD","HDF","OHQ","HDQ","OHF"] | ["plu","HODFQ"] |
| 28 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 29 | ["plu","CDF","OCP","CDP","OCF","CFP","OCD"] | ["plu","CODFP"] |
| 30 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 31 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 32 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 33 | ["plu","CDY","CFQ","CDF","CYQ","CDQ","CFY"] | ["plu","CDFYQ"] |
| 34 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 35 | ["plu","CDQ","CFR","CDF","CQR","CDR","CFQ"] | ["plu","CDFQR"] |
| 36 | ["plu","CDQ","CYR","CDR","CYQ","CDY","CQR"] | ["plu","CDYQR"] |
| 37 | ["plu","CFZ","CPQ","CFP","CZQ","CFQ","CZP"] | ["plu","CFZPQ"] |
| 38 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 39 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 40 | ["plu","DZQ","OCD","CDQ","ODZ","CDZ","ODQ"] | ["plu","DOCZQ"] |
| 41 | ["plu","CDF","DZQ","CDQ","DFZ","CDZ","DFQ"] | ["plu","DCFZQ"] |
| 42 | ["plu","CDF","DZR","CDR","DFZ","CDZ","DFR"] | ["plu","DCFZR"] |
| 43 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 44 | ["plu","HCF","OFP","CFP","OHF","HFP","OCF"] | ["plu","FOHCP"] |
| 45 | ["plu","HCF","OFQ","CFQ","OHF","HFQ","OCF"] | ["plu","FOHCQ"] |
| 46 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 47 | ["plu","CDY","HYQ","CYQ","HDY","DYQ","HCY"] | ["plu","YHCDQ"] |
| 48 | ["plu","DZQ","OCZ","CDZ","OZQ","CZQ","ODZ"] | ["plu","ZOCDQ"] |
| 49 | ["plu","CFP","DZP","CDP","FZP","CZP","DFP"] | ["plu","PCDFZ"] |
| 50 | ["plu","HDQ","OFQ","DFQ","OHQ","HFQ","ODQ"] | ["plu","QOHDF"] |
| 51 | ["plu","DQR","OHQ","HDQ","OQR","HQR","ODQ"] | ["plu","QOHDR"] |
| 52 | ["plu","DQR","OFQ","DFQ","OQR","FQR","ODQ"] | ["plu","QODFR"] |
| 53 | ["plu","DQR","OYQ","DYQ","OQR","ODQ","YQR"] | ["plu","QODYR"] |
| 54 | ["plu","DQR","OZQ","DZQ","OQR","ODQ","ZQR"] | ["plu","QODZR"] |
| 55 | ["plu","CYR","DQR","CDR","YQR","CQR","DYR"] | ["plu","RCDYQ"] |
| 56 | ["balance",[[1,"CYZ","ODQ"],[-1,"YZQ","OCD"],[-1,"CZQ","ODY"],[-1,"CYQ","ODZ"]]] | ["six","ODCYZQ"] |
| 57 | ["balance",[[-1,"HCD","OFQ"],[1,"CDQ","OHF"],[1,"HDQ","OCF"],[1,"HCQ","ODF"]]] | ["six","OFHCDQ"] |
| 58 | ["balance",[[-1,"CDY","OFQ"],[1,"DYQ","OCF"],[1,"CYQ","ODF"],[1,"CDQ","OFY"]]] | ["six","OFCDYQ"] |
| 59 | ["balance",[[-1,"HCD","OFY"],[-1,"CDF","OHY"],[-1,"HDF","OCY"],[1,"HCF","ODY"]]] | ["six","OYHCDF"] |
| 60 | ["balance",[[-1,"HCF","OYP"],[1,"CFP","OHY"],[1,"HFP","OCY"],[1,"HCP","OFY"]]] | ["six","OYHCFP"] |
| 61 | ["balance",[[-1,"HDF","OYQ"],[-1,"DFQ","OHY"],[1,"HFQ","ODY"],[-1,"HDQ","OFY"]]] | ["six","OYHDFQ"] |
| 62 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 63 | ["balance",[[1,"HCF","OYQ"],[-1,"CFY","OHQ"],[1,"HFY","OCQ"],[1,"HCY","OFQ"]]] | ["six","OQHCFY"] |
| 64 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 65 | ["balance",[[-1,"CFZ","OPQ"],[1,"FZP","OCQ"],[1,"CZP","OFQ"],[1,"CFP","OZQ"]]] | ["six","OQCFZP"] |
| 66 | ["balance",[[-1,"OCF","HDY"],[1,"CFY","OHD"],[-1,"OFY","HCD"],[-1,"OCY","HDF"]]] | ["six","HDOCFY"] |
| 67 | ["balance",[[-1,"OFY","HDQ"],[1,"FYQ","OHD"],[-1,"OYQ","HDF"],[-1,"OFQ","HDY"]]] | ["six","HDOFYQ"] |
| 68 | ["balance",[[-1,"CFY","HDQ"],[1,"FYQ","HCD"],[-1,"CYQ","HDF"],[-1,"CFQ","HDY"]]] | ["six","HDCFYQ"] |
| 69 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 70 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 71 | ["balance",[[-1,"CDQ","HYR"],[1,"DQR","HCY"],[1,"CQR","HDY"],[1,"CDR","HYQ"]]] | ["six","HYCDQR"] |
| 72 | ["balance",[[1,"OHF","CDQ"],[1,"HFQ","OCD"],[-1,"OFQ","HCD"],[1,"OHQ","CDF"]]] | ["six","CDOHFQ"] |
| 73 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 74 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 75 | ["balance",[[1,"HDY","CFP"],[1,"DYP","HCF"],[-1,"HYP","CDF"],[1,"HDP","CFY"]]] | ["six","CFHDYP"] |
| 76 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 77 | ["balance",[[-1,"ODF","CYQ"],[-1,"DFQ","OCY"],[1,"OFQ","CDY"],[-1,"ODQ","CFY"]]] | ["six","CYODFQ"] |
| 78 | ["balance",[[1,"OHF","CZQ"],[1,"HFQ","OCZ"],[-1,"OFQ","HCZ"],[1,"OHQ","CFZ"]]] | ["six","CZOHFQ"] |
| 79 | ["balance",[[-1,"OHD","CFP"],[-1,"HDF","OCP"],[1,"ODF","HCP"],[-1,"OHF","CDP"]]] | ["six","CPOHDF"] |
| 80 | ["balance",[[1,"OHD","CQR"],[1,"HDQ","OCR"],[-1,"ODQ","HCR"],[1,"OHQ","CDR"]]] | ["six","CROHDQ"] |
| 81 | ["balance",[[1,"OFY","DZQ"],[1,"FYQ","ODZ"],[1,"OYQ","DFZ"],[-1,"OFQ","DYZ"]]] | ["six","DZOFYQ"] |
| 82 | ["balance",[[1,"OHD","FZP"],[-1,"HDZ","OFP"],[1,"ODZ","HFP"],[1,"OHZ","DFP"]]] | ["six","FPOHDZ"] |
| 83 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 84 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 85 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 86 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 87 | ["balance",[[1,"OHC","YQR"],[1,"HCY","OQR"],[-1,"OCY","HQR"],[1,"OHY","CQR"]]] | ["six","QROHCY"] |
| 88 | ["balance",[[-1,"OCD","ZQR"],[-1,"CDZ","OQR"],[-1,"ODZ","CQR"],[1,"OCZ","DQR"]]] | ["six","QROCDZ"] |
| 89 | ["balance",[[-1,"ODF","YQR"],[-1,"DFY","OQR"],[-1,"OFY","DQR"],[1,"ODY","FQR"]]] | ["six","QRODFY"] |
| 90 | ["balance",[[-1,"ODF","ZQR"],[-1,"DFZ","OQR"],[1,"OFZ","DQR"],[-1,"ODZ","FQR"]]] | ["six","QRODFZ"] |
| 91 | ["balance",[[-1,"ODY","ZQR"],[-1,"DYZ","OQR"],[1,"OYZ","DQR"],[-1,"ODZ","YQR"]]] | ["six","QRODYZ"] |
| 92 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 93 | ["balance",[[-1,"CDF","YQR"],[-1,"DFY","CQR"],[-1,"CFY","DQR"],[1,"CDY","FQR"]]] | ["six","QRCDFY"] |
| 94 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 95 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 96 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 97 | ["linear",{"OHD":-1,"ODR":-1,"OHR":1,"HDR":1},"0"] | ["affine_quad","OHDR",1] |
| 98 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 99 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 100 | ["linear",{"OHY":-1,"OYR":-1,"OHR":1,"HYR":-1},"0"] | ["affine_quad","OHYR",1] |
| 101 | ["linear",{"OHQ":1,"OQR":-1,"OHR":-1,"HQR":-1},"0"] | ["affine_quad","OHQR",-1] |
| 102 | ["linear",{"OCD":-1,"ODF":-1,"OCF":1,"CDF":1},"0"] | ["affine_quad","OCDF",-1] |
| 103 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 104 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 105 | ["linear",{"ODF":-1,"OFR":1,"ODR":-1,"DFR":1},"0"] | ["affine_quad","ODFR",-1] |
| 106 | ["linear",{"ODY":-1,"OYP":1,"ODP":1,"DYP":-1},"0"] | ["affine_quad","ODYP",-1] |
| 107 | ["linear",{"ODY":-1,"OYQ":1,"ODQ":-1,"DYQ":1},"0"] | ["affine_quad","ODYQ",-1] |
| 108 | ["linear",{"ODZ":-1,"OZR":-1,"ODR":1,"DZR":-1},"0"] | ["affine_quad","ODZR",1] |
| 109 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 110 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 111 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 112 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 113 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 114 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 115 | ["linear",{"HDQ":-1,"HQR":-1,"HDR":1,"DQR":1},"0"] | ["affine_quad","HDQR",1] |
| 116 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 117 | ["linear",{"CFQ":1,"CQR":-1,"CFR":-1,"FQR":-1},"0"] | ["affine_quad","CFQR",-1] |
| 118 | ["linear",{"CYQ":1,"CQR":-1,"CYR":-1,"YQR":-1},"0"] | ["affine_quad","CYQR",-1] |
| 119 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 120 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 121 | ["linear",{"DFQ":-1,"DQR":1,"DFR":1,"FQR":-1},"0"] | ["affine_quad","DFQR",-1] |
| 122 | ["support","DFY","HDY","HDF","2697/5000"] | ["support_quad","DYHF","P","29/5"] |
| 123 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 124 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 125 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 126 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 127 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 128 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 129 | ["bary",["OYQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OQ"] |
| 130 | ["bary",["OYR",1],[null,["OHR",1],["ODR",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OR"] |
| 131 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 132 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DF"] |
| 133 | ["bary",["CPQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CQ"] |
| 134 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CD"] |
| 135 | ["bary",["DYZ",-1],[["ODZ",-1],["HDZ",-1],["DFZ",-1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DZ"] |
| 136 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DFQ",-1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DQ"] |
| 137 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 138 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CD"] |
| 139 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","DQ"] |
| 140 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","CD"] |
| 141 | ["bary",["OZQ",1],[null,["OCQ",-1],["ODQ",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","OQ"] |
| 142 | ["bary",["CZQ",1],[["OCQ",1],null,["CDQ",1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","CQ"] |
| 143 | ["bary",["DZQ",-1],[["ODQ",-1],["CDQ",-1],null],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","DQ"] |
| 144 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 145 | ["bary",["OZQ",1],[null,["ODQ",1],null],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OQ"] |
| 146 | ["bary",["HDZ",-1],[["OHD",-1],null,["HDQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","HD"] |
| 147 | ["bary",["CDZ",1],[["OCD",1],null,["CDQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","CD"] |
| 148 | ["bary",["DFZ",1],[["ODF",1],null,["DFQ",1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","DF"] |
| 149 | ["bary",["OFR",-1],[null,["OFY",1],["OFQ",-1]],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","OF"] |
| 150 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 151 | ["bary",["DFR",1],[["ODF",1],["DFZ",1],["DFQ",1]],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DF"] |
| 152 | ["bary",["DQR",-1],[["ODQ",-1],["DZQ",-1],null],"OZQ",["ZQR","OQR","OZR"]] | ["bary","OZQ","R","DQ"] |
| 153 | ["bary",["OYP",-1],[["OHY",1],["OCY",-1],["ODY",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OY"] |
| 154 | ["bary",["CFP",-1],[["HCF",1],null,["CDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CF"] |
| 155 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 156 | ["bary",["OHP",-1],[null,["OHD",-1],["OHY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OH"] |
| 157 | ["bary",["ODP",1],[["OHD",1],null,["ODY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OD"] |
| 158 | ["bary",["DFP",1],[["HDF",1],null,["DFY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DF"] |
| 159 | ["bary",["DZP",-1],[["HDZ",-1],null,["DYZ",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DZ"] |
| 160 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DQ"] |
| 161 | ["bary",["DZR",-1],[["CDR",-1],null,["DFR",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DR"] |
| 162 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 163 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 164 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 165 | ["bary",["DFZ",1],[["CDF",1],null,["DFY",1]],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","DF"] |
| 166 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 167 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 168 | ["bary",["OHR",-1],[["OHC",-1],["OHD",-1],["OHQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OH"] |
| 169 | ["bary",["OCR",1],[null,["OCD",1],["OCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OC"] |
| 170 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 171 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 172 | ["bary",["HDR",-1],[["HCD",-1],null,["HDQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HD"] |
| 173 | ["bary",["HYR",1],[["HCY",1],["HDY",1],["HYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HY"] |
| 174 | ["bary",["CFR",-1],[null,["CDF",-1],["CFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CF"] |
| 175 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 176 | ["bary",["DFR",1],[["CDF",1],null,["DFQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DF"] |
| 177 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |
| 178 | ["bary",["ODR",-1],[["OCD",-1],["ODZ",-1],["ODQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","OD"] |
| 179 | ["bary",["OYR",-1],[["OCY",-1],["OYZ",-1],["OYQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","OY"] |
| 180 | ["bary",["DFR",1],[["CDF",1],["DFZ",1],["DFQ",1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","DF"] |
| 181 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 182 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 183 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 184 | ["bary",["CDP",1],[null,["CDF",1],["CDZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CD"] |
| 185 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 186 | ["bary",["OFZ",-1],[["ODF",-1],["OFY",1],["OFQ",-1]],"DYQ",["YZQ","DZQ","DYZ"]] | ["bary","DYQ","Z","OF"] |
| 187 | ["bary",["OFZ",-1],[["ODF",-1],["OFY",1],["OFR",-1]],"DYR",["YZR","DZR","DYZ"]] | ["bary","DYR","Z","OF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s2 | 1 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s20 | 5 | sub | DZQ | hi | 6071/15625 | hi_ODQ,lo_ODZ,lo_OZQ |
| s22 | 5 | sub | OZQ | hi | 35909/62500 | hi_ODQ,lo_DZQ,lo_ODZ |
| s32 | 8 | sub | HDZ | hi | 788053/1000000 | hi_HCD,lo_CDZ,lo_HCZ |
| s41 | 12 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s42 | 13 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s65 | 22 | sumlo | OHZ | lo | 84863/250000 | lo_ODZ,lo_OHQ,lo_OHD,lo_OZQ,hi_ODQ |
| s72 | 23 | sumlo | HCF | lo | 219573/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s75 | 27 | sumlo | HFQ | lo | 113077/1000000 | lo_HDF,lo_OHQ,lo_HDQ,lo_OHF,hi_OHD |
| s79 | 29 | sumlo | OCP | lo | 58327/500000 | lo_CDP,lo_OCF,lo_CFP,lo_OCD,hi_CDF |
| s81 | 30 | sumlo | CFY | lo | 64577/500000 | lo_CDF,lo_HCY,lo_CDY,s72,hi_HCD |
| s84 | 31 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s86 | 32 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s84,lo_CQR,lo_HCD,hi_CDQ |
| s88 | 33 | sumlo | CFQ | lo | 306343/1000000 | lo_CDF,lo_CYQ,lo_CDQ,s81,hi_CDY |
| s89 | 34 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s42 |
| s92 | 35 | sumlo | CFR | lo | 3461/15625 | lo_CDF,lo_CQR,lo_CDR,s88,hi_CDQ |
| s95 | 38 | sumlo | ODF | lo | 32569/62500 | lo_CDF,lo_OHD,lo_HDF,lo_OCD,hi_HCD |
| s98 | 39 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s100 | 40 | sumlo | DZQ | lo | 157113/1000000 | lo_CDQ,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s107 | 43 | sumlo | HCF | lo | 117361/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s112 | 46 | sumlo | CFP | lo | 105463/1000000 | lo_CDF,lo_FZP,s89,lo_DFP,s41 |
| s115 | 48 | sumlo | OCZ | lo | 3339/25000 | lo_CDZ,lo_OZQ,lo_CZQ,lo_ODZ,s20 |
| s117 | 50 | sumlo | HDQ | lo | 187969/1000000 | s98,lo_OHQ,s75,lo_ODQ,hi_OFQ |
| s118 | 51 | diffhi | HQR | hi | 311987/1000000 | hi_DQR,hi_OHQ,s117,lo_OQR,lo_ODQ |
| s126 | 52 | diffhi | FQR | hi | 4874/15625 | hi_DQR,hi_OFQ,s98,lo_OQR,lo_ODQ |
| s128 | 53 | sumlo | OYQ | lo | 77341/200000 | lo_DYQ,lo_OQR,lo_ODQ,lo_YQR,hi_DQR |
| s131 | 54 | sumlo | DQR | lo | 137767/1000000 | s100,lo_OQR,lo_ODQ,lo_ZQR,s22 |
| s132 | 54 | sumlo | OZQ | lo | 169131/500000 | s100,lo_OQR,lo_ODQ,lo_ZQR,hi_DQR |
| s141 | 55 | sumlo | CYR | lo | 73923/500000 | lo_CDR,lo_YQR,lo_CQR,lo_DYR,hi_DQR |
| s149 | 62 | balance_lo | OFQ | lo | 670581/1000000 | lo_CDF,lo_OHQ,lo_HDF,lo_OCQ,s107,lo_ODQ,hi_HCD |
| s151 | 63 | balance_lo | CFY | lo | 161781/1000000 | s107,s128,lo_HFY,lo_OCQ,lo_HCY,s149,hi_OHQ |
| s155 | 64 | balance_lo | CDY | lo | 41221/100000 | lo_CDF,s128,lo_DFY,lo_OCQ,s151,lo_ODQ,hi_OFQ |
| s157 | 65 | balance_lo | CFZ | lo | 119419/1000000 | lo_FZP,lo_OCQ,lo_CZP,s149,s112,s132,hi_OPQ |
| s163 | 67 | balance_lo | FYQ | lo | 30067/125000 | lo_OFY,s117,s128,lo_HDF,s149,lo_HDY,hi_OHD |
| s166 | 69 | balance_lo | CFP | lo | 13371/125000 | s157,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s32 |
| s171 | 70 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s174 | 71 | balance_lo | HYR | lo | 137049/1000000 | s131,lo_HCY,lo_CQR,lo_HDY,lo_CDR,s171,hi_CDQ |
| s178 | 73 | balance_lo | OYR | lo | 238681/1000000 | s128,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s155,hi_CDQ |
| s179 | 74 | balance_lo | OZR | lo | 19659/125000 | s132,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,lo_CDZ,hi_CDQ |
| s182 | 76 | balance_lo | CFY | lo | 86059/500000 | lo_HDF,lo_OCY,s95,lo_HCY,lo_OHF,s155,hi_OHD |
| s183 | 78 | balance_lo | HCZ | lo | 22281/125000 | lo_OHF,lo_CZQ,s75,s115,lo_OHQ,s157,hi_OFQ |
| s184 | 79 | balance_lo | HCP | lo | 87083/500000 | lo_OHD,s166,lo_HDF,s79,lo_OHF,lo_CDP,hi_ODF |
| s187 | 81 | balance_lo | DYZ | lo | 18359/125000 | lo_OFY,s100,s163,lo_ODZ,s128,lo_DFZ,hi_OFQ |
| s196 | 82 | balance_lo | OFP | lo | 26587/200000 | lo_OHD,lo_FZP,lo_ODZ,lo_HFP,s65,lo_DFP,s32 |
| s202 | 84 | balance_lo | OZP | lo | 119537/1000000 | lo_OHC,lo_DZP,lo_OCD,lo_HZP,lo_OHD,lo_CZP,hi_HCD |
| s203 | 85 | balance_lo | HZP | lo | 13577/125000 | lo_OHD,lo_FZP,lo_HDF,s202,lo_OHF,lo_DZP,hi_ODF |
| s205 | 87 | balance_lo | OCY | lo | 138611/1000000 | lo_OHC,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s118 |
| s208 | 88 | balance_lo | OCZ | lo | 184807/1000000 | lo_OCD,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s209 | 89 | balance_lo | ODY | lo | 55923/200000 | s95,lo_YQR,lo_DFY,lo_OQR,lo_OFY,s131,s126 |
| s212 | 91 | balance_lo | OYZ | lo | 103231/500000 | s209,lo_ZQR,s187,lo_OQR,lo_ODZ,lo_YQR,hi_DQR |
| s215 | 92 | balance_lo | HQR | lo | 137793/1000000 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,s131,hi_CDY |
| s216 | 93 | balance_lo | FQR | lo | 152333/1000000 | lo_CDF,lo_YQR,lo_DFY,lo_CQR,s182,s131,hi_CDY |
| s224 | 96 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s230 | 100 | linear | OHR | lo | 46873/100000 | s174,lo_OHY,s178 |
| s232 | 101 | linear | OHQ | lo | 699523/1000000 | s215,s230,lo_OQR |
| s234 | 103 | linear | OCD | lo | 370807/1000000 | lo_CDZ,s208,lo_ODZ |
| s246 | 109 | linear | OYQ | lo | 424681/1000000 | lo_OQR,s178,lo_YQR |
| s247 | 110 | linear | OZQ | lo | 42909/125000 | lo_OQR,s179,lo_ZQR |
| s254 | 112 | linear | HCQ | lo | 224659/500000 | lo_CQR,s86,s215 |
| s259 | 114 | linear | HDZ | lo | 36827/125000 | lo_DZP,lo_HDP,s203 |
| s268 | 116 | linear | CDQ | lo | 323767/1000000 | lo_CDR,lo_CQR,s131 |
| s271 | 117 | linear | CFQ | lo | 466837/1000000 | s92,lo_CQR,s216 |
| s273 | 118 | linear | CYQ | lo | 166923/500000 | lo_CQR,s141,lo_YQR |
| s288 | 123 | quad | CDP | lo | 81/250 | hi_CDQ |
| s292 | 124 | linear | OHC | lo | 370807/1000000 | s234 |
| s293 | 125 | linear | HCD | hi | 907/1000 | lo_HDF |
| s294 | 126 | linear | HCF | hi | 153/500 | lo_CDF |
| s295 | 126 | linear | CDF | hi | 382639/500000 | s107 |
| s305 | 127 | bary_hi | FYP | lo | 50447/500000 | hi_OHC,lo_HCY,s205,lo_OHY,s196,lo_HFP,s166 |
| s351 | 134 | bary_lo | CDY | lo | 232737/500000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,s234,lo_HCD,lo_CDF |
| s352 | 135 | bary_hi | DYZ | lo | 18721/125000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,lo_ODZ,s259,lo_DFZ |
| s354 | 137 | bary_lo | OCY | lo | 166123/1000000 | hi_OHQ,s171,s246,lo_OHY,s292,lo_OCQ |
| s360 | 138 | bary_hi | CDY | hi | 725611/1000000 | hi_OHQ,s171,s246,lo_OHY,hi_OCD,s293,s268 |
| s384 | 141 | bary_hi | OZQ | hi | 499911/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s208,lo_OCQ,hi_ODQ |
| s393 | 142 | bary_hi | CZQ | hi | 314397/1000000 | hi_OCD,lo_CDZ,lo_ODZ,s208,hi_OCQ,hi_CDQ |
| s397 | 143 | bary_hi | DZQ | lo | 82171/500000 | hi_OCD,lo_CDZ,lo_ODZ,s208,lo_ODQ,s268 |
| s407 | 146 | bary_lo | HDZ | hi | 521131/1000000 | hi_ODQ,s397,s247,lo_ODZ,hi_OHD,hi_HDQ |
| s408 | 147 | bary_hi | CDZ | hi | 102987/500000 | hi_ODQ,s397,s247,lo_ODZ,hi_OCD,s268 |
| s410 | 148 | bary_hi | DFZ | hi | 121241/250000 | hi_ODQ,s397,s247,lo_ODZ,hi_ODF,hi_DFQ |
| s439 | 149 | bary_lo | OFR | hi | 709343/1000000 | hi_OYQ,lo_YQR,lo_OQR,s178,lo_OFY,hi_OFQ |
| s463 | 152 | bary_hi | DQR | lo | 499/3125 | s384,lo_ZQR,lo_OQR,s179,lo_ODQ,s397 |
| s482 | 153 | bary_lo | OYP | hi | 35209/100000 | s293,s288,lo_HDP,s184,lo_OHY,hi_OCY,s2 |
| s488 | 154 | bary_lo | CFP | hi | 82397/250000 | s293,s288,lo_HDP,s184,s107,s295 |
| s491 | 155 | bary_lo | DFP | lo | 104381/1000000 | s293,s288,lo_HDP,s184,lo_HDF,lo_CDF |
| s542 | 162 | bary_hi | OPQ | hi | 80759/100000 | s295,s491,s166,s288,lo_OCQ,hi_ODQ,hi_OFQ |
| s546 | 163 | bary_lo | HYP | lo | 59499/500000 | s295,s491,s166,s288,lo_HCY,lo_HDY,lo_HFY |
| s547 | 164 | bary_hi | CDP | hi | 553929/1000000 | s295,s491,s166,s288,s295 |
| s557 | 166 | bary_lo | HYZ | lo | 8037/62500 | s547,lo_DZP,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,s546 |
| s558 | 167 | bary_hi | CFZ | lo | 5379/40000 | s547,lo_DZP,lo_CZP,lo_CDZ,lo_CDF,s166 |
| s559 | 168 | bary_hi | OHR | lo | 257579/500000 | hi_CDQ,s463,lo_CQR,lo_CDR,s292,lo_OHD,s232 |
| s563 | 171 | bary_lo | HCR | lo | 253163/1000000 | hi_CDQ,s463,lo_CQR,lo_CDR,lo_HCD,s254 |
| s564 | 172 | bary_lo | HDR | hi | 676927/1000000 | hi_CDQ,s463,lo_CQR,lo_CDR,s293,hi_HDQ |
| s567 | 173 | bary_lo | HYR | lo | 158357/1000000 | hi_CDQ,s463,lo_CQR,lo_CDR,lo_HCY,lo_HDY,s171 |
| s570 | 174 | bary_hi | CFR | lo | 128521/500000 | hi_CDQ,s463,lo_CQR,lo_CDR,lo_CDF,s271 |
| s571 | 175 | bary_hi | CYR | lo | 5531/31250 | hi_CDQ,s463,lo_CQR,lo_CDR,s351,s273 |
| s576 | 176 | bary_hi | DFR | hi | 291153/500000 | hi_CDQ,s463,lo_CQR,lo_CDR,s295,hi_DFQ |
| s577 | 177 | bary_hi | DYR | hi | 278507/500000 | hi_CDQ,s463,lo_CQR,lo_CDR,s360,hi_DYQ |
| s586 | 178 | bary_hi | ODR | lo | 176477/500000 | s393,lo_ZQR,lo_CQR,lo_CZR,s234,lo_ODZ,lo_ODQ |
| s588 | 179 | bary_hi | OYR | lo | 127269/500000 | s393,lo_ZQR,lo_CQR,lo_CZR,s354,s212,s246 |
| s610 | 182 | bary_lo | HCP | lo | 287981/1000000 | s410,lo_FZP,lo_DZP,s491,lo_HCD,s107,s183 |
| s612 | 183 | bary_lo | HYP | lo | 136329/1000000 | s410,lo_FZP,lo_DZP,s491,lo_HDY,lo_HFY,s557 |
| s613 | 184 | bary_hi | CDP | hi | 249071/500000 | s410,lo_FZP,lo_DZP,s491,s295,s408 |
| s614 | 185 | bary_hi | CFP | lo | 162029/1000000 | s410,lo_FZP,lo_DZP,s491,lo_CDF,s558 |
| s626 | 187 | bary_lo | OFZ | hi | 175737/250000 | s577,lo_YZR,lo_DZR,s352,hi_ODF,lo_OFY,s439 |
| s632 | 4 | sum | OHQ | lo | 745951/1000000 | s215,s559,lo_OQR |
| s634 | 7 | sum | OYQ | lo | 220269/500000 | lo_OQR,s588,lo_YQR |
| s635 | 9 | sum | HCD | lo | 704981/1000000 | s288,s610,lo_HDP |
| s637 | 10 | sum | HCQ | lo | 120989/250000 | lo_CQR,s563,s215 |
| s638 | 11 | sum | HDY | lo | 322329/1000000 | lo_DYP,lo_HDP,s612 |
| s640 | 14 | sum | CDQ | lo | 4321/12500 | lo_CDR,lo_CQR,s463 |
| s641 | 15 | sum | CFQ | lo | 4019/8000 | s570,lo_CQR,s216 |
| s642 | 16 | sum | CYQ | lo | 22687/62500 | lo_CQR,s571,lo_YQR |
| s644 | 17 | sum | DFY | lo | 11931/40000 | s491,lo_DYP,s305 |
| s645 | 18 | sum | DFZ | lo | 290381/1000000 | s491,lo_DZP,lo_FZP |
| s649 | 20 | sumlo | OCY | lo | 172003/1000000 | lo_OCQ,lo_OHY,s292,s634,hi_OHQ |
| s655 | 26 | sumlo | HFY | lo | 49289/500000 | lo_HDF,lo_OHY,s638,lo_OHF,hi_OHD |
| s656 | 27 | sumlo | HFQ | lo | 1421/8000 | lo_HDF,s632,s224,lo_OHF,hi_OHD |
| s660 | 28 | sumlo | OCF | lo | 379687/1000000 | lo_CDF,s292,s107,s234,s293 |
| s663 | 32 | sumlo | HCR | lo | 8227/31250 | lo_CDR,s637,lo_CQR,s635,hi_CDQ |
| s665 | 34 | sumlo | CFZ | lo | 31963/200000 | lo_CDF,lo_CZP,lo_CDZ,s614,s613 |
| s666 | 35 | sumlo | CFR | lo | 264911/1000000 | lo_CDF,lo_CQR,lo_CDR,s641,hi_CDQ |
| s667 | 36 | sumlo | CYR | lo | 91723/500000 | lo_CDR,s642,s351,lo_CQR,hi_CDQ |
| s674 | 40 | sumlo | DZQ | lo | 167881/1000000 | s640,lo_ODZ,lo_CDZ,lo_ODQ,hi_OCD |
| s676 | 43 | sumlo | HCF | lo | 61183/250000 | lo_CDF,lo_OHF,lo_HDF,s660,hi_ODF |
| s677 | 43 | sumlo | ODF | lo | 748159/1000000 | lo_CDF,lo_OHF,lo_HDF,s660,s294 |
| s678 | 43 | diffhi | OHF | hi | 22599/62500 | s294,hi_ODF,lo_HDF,s660,lo_CDF |
| s680 | 44 | sumlo | OFP | lo | 263127/1000000 | s614,lo_OHF,lo_HFP,s660,s294 |
| s686 | 46 | sumlo | CFP | lo | 167483/1000000 | lo_CDF,lo_FZP,s665,s491,s410 |
| s690 | 49 | sumlo | DZP | lo | 30219/250000 | s288,lo_FZP,lo_CZP,s491,s488 |
| s691 | 51 | diffhi | HQR | hi | 142591/500000 | hi_DQR,hi_OHQ,s224,lo_OQR,lo_ODQ |
| s694 | 54 | sumlo | DQR | lo | 80169/500000 | s674,lo_OQR,lo_ODQ,lo_ZQR,s384 |
| s705 | 59 | balance_lo | ODY | lo | 95491/200000 | s635,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s649,s294 |
| s706 | 60 | balance_lo | OYP | lo | 1907/10000 | s686,lo_OHY,lo_HFP,s649,s610,lo_OFY,s294 |
| s708 | 62 | balance_lo | HCD | lo | 176449/250000 | lo_CDF,s632,lo_HDF,lo_OCQ,s676,lo_ODQ,hi_OFQ |
| s709 | 62 | balance_lo | OFQ | lo | 383783/500000 | lo_CDF,s632,lo_HDF,lo_OCQ,s676,lo_ODQ,s293 |
| s713 | 65 | balance_lo | CFZ | lo | 17029/100000 | lo_FZP,lo_OCQ,lo_CZP,s709,s686,s247,s542 |
| s720 | 69 | balance_lo | CFP | lo | 172941/1000000 | s713,lo_HDP,lo_FZP,s708,lo_CZP,lo_HDF,s407 |
| s722 | 70 | balance_lo | HYQ | lo | 27491/125000 | s640,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,s638,hi_OCD |
| s724 | 74 | balance_lo | OZR | lo | 17871/100000 | s247,lo_CDR,lo_ZQR,s234,lo_OQR,lo_CDZ,hi_CDQ |
| s727 | 78 | balance_lo | HCZ | lo | 240977/1000000 | lo_OHF,lo_CZQ,s656,s208,s632,s713,hi_OFQ |
| s750 | 86 | balance_lo | HZP | lo | 8483/62500 | s708,lo_FZP,lo_HDF,lo_CZP,s676,s690,s295 |
| s752 | 87 | balance_lo | OCY | lo | 90789/500000 | s292,lo_YQR,lo_HCY,lo_OQR,lo_OHY,lo_CQR,s691 |
| s755 | 88 | balance_lo | OCZ | lo | 44259/200000 | s234,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s756 | 89 | balance_lo | FQR | lo | 178709/1000000 | s677,lo_YQR,s644,lo_OQR,lo_OFY,s694,s2 |
| s758 | 90 | balance_lo | DQR | lo | 80521/500000 | s677,lo_ZQR,s645,lo_OQR,lo_ODZ,s756,s626 |
| s760 | 92 | balance_lo | HQR | lo | 38103/250000 | s708,lo_YQR,s638,lo_CQR,lo_HCY,s758,s360 |
| s762 | 95 | linear | OHD | lo | 55799/62500 | s638,s705,lo_OHY |
| s763 | 95 | linear | ODY | hi | 584671/1000000 | s638,hi_OHD,lo_OHY |
| s764 | 95 | linear | HDY | hi | 85909/200000 | s705,hi_OHD,lo_OHY |
| s766 | 96 | linear | HDQ | lo | 18337/31250 | lo_ODQ,s762,hi_OHQ |
| s767 | 97 | linear | OHR | lo | 568811/1000000 | s564,s586,s762 |
| s769 | 98 | linear | OHF | lo | 142289/500000 | s655,lo_OFY,lo_OHY |
| s774 | 99 | linear | OHP | lo | 420029/1000000 | s612,lo_OHY,s706 |
| s778 | 101 | linear | OHQ | lo | 814223/1000000 | s760,s767,lo_OQR |
| s779 | 101 | linear | OHR | hi | 188647/250000 | s760,hi_OHQ,lo_OQR |
| s780 | 103 | linear | OCD | lo | 81459/200000 | lo_CDZ,s755,lo_ODZ |
| s782 | 104 | linear | DFQ | lo | 455779/1000000 | s677,lo_ODQ,hi_OFQ |
| s785 | 106 | linear | ODP | lo | 43673/200000 | lo_DYP,s705,s482 |
| s786 | 107 | linear | OYQ | lo | 240821/500000 | hi_DYQ,lo_ODQ,s705 |
| s791 | 108 | linear | ODR | lo | 36471/100000 | lo_DZR,lo_ODZ,s724 |
| s796 | 110 | linear | OZQ | lo | 36471/100000 | lo_OQR,s724,lo_ZQR |
| s798 | 111 | linear | HCQ | hi | 92527/125000 | hi_CDQ,s293,s766 |
| s799 | 112 | linear | HCQ | lo | 127169/250000 | lo_CQR,s663,s760 |
| s804 | 114 | linear | HDZ | lo | 87401/250000 | s690,lo_HDP,s750 |
| s805 | 115 | linear | HDQ | hi | 151703/200000 | hi_DQR,s564,s760 |
| s813 | 116 | linear | CDQ | lo | 173521/500000 | lo_CDR,lo_CQR,s758 |
| s814 | 117 | linear | CFQ | lo | 26831/50000 | s666,lo_CQR,s756 |
| s815 | 118 | linear | CYQ | lo | 184723/500000 | lo_CQR,s667,lo_YQR |
| s818 | 120 | linear | DFZ | lo | 318257/1000000 | s491,s690,lo_FZP |
| s819 | 121 | linear | DFQ | hi | 637597/1000000 | s576,hi_DQR,s756 |
| s824 | 124 | linear | OHC | lo | 81459/200000 | s780 |
| s825 | 126 | linear | CDF | hi | 188817/250000 | s676 |
| s829 | 127 | bary_hi | FYP | lo | 16203/125000 | hi_OHC,lo_HCY,s752,lo_OHY,s680,lo_HFP,s720 |
| s831 | 128 | bary_lo | OCY | lo | 232343/1000000 | hi_OHD,s638,s705,lo_OHY,s824,s780 |
| s836 | 129 | bary_hi | OYQ | hi | 327701/500000 | hi_OHD,s638,s705,lo_OHY,hi_OHQ,hi_ODQ |
| s837 | 130 | bary_lo | OYR | lo | 305499/1000000 | hi_OHD,s638,s705,lo_OHY,s767,s791 |
| s840 | 131 | bary_hi | HFY | lo | 12547/125000 | hi_OHD,s638,s705,lo_OHY,s769,lo_HDF |
| s864 | 133 | bary_hi | CPQ | hi | 277087/500000 | hi_OHD,lo_HDP,s785,s774,hi_OCQ,s798,hi_CDQ |
| s873 | 134 | bary_lo | CDY | lo | 55781/100000 | s678,s840,lo_OFY,lo_OHY,s780,s708,lo_CDF |
| s877 | 135 | bary_hi | DYZ | lo | 43387/200000 | s678,s840,lo_OFY,lo_OHY,lo_ODZ,s804,s818 |
| s878 | 136 | bary_hi | DYQ | lo | 138901/250000 | s678,s840,lo_OFY,lo_OHY,lo_ODQ,s766,s782 |
| s885 | 139 | bary_lo | DYQ | hi | 172209/250000 | hi_OHQ,s722,s786,lo_OHY,hi_ODQ,s805 |
| s891 | 140 | bary_hi | CDY | hi | 17857/25000 | s779,s567,s837,lo_OHY,hi_OCD,s293,lo_CDR |
| s896 | 143 | bary_hi | DZQ | lo | 1681/10000 | hi_OCD,lo_CDZ,lo_ODZ,s755,lo_ODQ,s813 |
| s901 | 145 | bary_hi | OZQ | hi | 124861/250000 | hi_ODQ,s896,s796,lo_ODZ,hi_ODQ |
| s903 | 146 | bary_lo | HDZ | hi | 490933/1000000 | hi_ODQ,s896,s796,lo_ODZ,hi_OHD,s805 |
| s905 | 148 | bary_hi | DFZ | hi | 450447/1000000 | hi_ODQ,s896,s796,lo_ODZ,hi_ODF,s819 |
| s927 | 149 | bary_lo | OFR | hi | 346627/500000 | s836,lo_YQR,lo_OQR,s837,lo_OFY,hi_OFQ |
| s935 | 150 | bary_hi | DQR | lo | 35463/200000 | s836,lo_YQR,lo_OQR,s837,lo_ODQ,s878 |
| s940 | 151 | bary_lo | DFR | lo | 89503/200000 | s901,lo_ZQR,lo_OQR,s724,s677,s818,s782 |
| s960 | 154 | bary_lo | CFP | hi | 64121/200000 | s293,s288,lo_HDP,s610,s676,s825 |
| s979 | 159 | bary_hi | DZP | lo | 6133/50000 | s764,lo_DYP,s612,lo_HDP,s804,s877 |
| s999 | 160 | bary_hi | DZQ | lo | 202359/1000000 | s825,s818,s713,lo_CDZ,s813,s782 |
| s1000 | 161 | bary_hi | DZR | lo | 94293/1000000 | s825,s818,s713,lo_CDZ,lo_CDR,s940 |
| s1008 | 162 | bary_hi | OPQ | hi | 392747/500000 | s825,s491,s720,s288,lo_OCQ,hi_ODQ,hi_OFQ |
| s1011 | 163 | bary_lo | HYP | lo | 5947/40000 | s825,s491,s720,s288,lo_HCY,s638,s840 |
| s1012 | 164 | bary_hi | CDP | hi | 238973/500000 | s825,s491,s720,s288,s825 |
| s1020 | 166 | bary_lo | HYZ | lo | 18557/125000 | s1012,s979,lo_CZP,lo_CDZ,lo_HCY,s638,s1011 |
| s1021 | 168 | bary_hi | OHR | lo | 604901/1000000 | hi_CDQ,s935,lo_CQR,lo_CDR,s824,s762,s778 |
| s1022 | 169 | bary_lo | OCR | lo | 110779/1000000 | hi_CDQ,s935,lo_CQR,lo_CDR,s780,lo_OCQ |
| s1024 | 170 | bary_hi | OYR | lo | 341819/1000000 | hi_CDQ,s935,lo_CQR,lo_CDR,s831,s705,s786 |
| s1025 | 171 | bary_lo | HCR | lo | 134459/500000 | hi_CDQ,s935,lo_CQR,lo_CDR,s708,s799 |
| s1026 | 172 | bary_lo | HDR | hi | 336643/500000 | hi_CDQ,s935,lo_CQR,lo_CDR,s293,s805 |
| s1031 | 174 | bary_hi | CFR | lo | 136247/500000 | hi_CDQ,s935,lo_CQR,lo_CDR,lo_CDF,s814 |
| s1032 | 175 | bary_hi | CYR | lo | 5133/25000 | hi_CDQ,s935,lo_CQR,lo_CDR,s873,s815 |
| s1035 | 176 | bary_hi | DFR | hi | 22479/40000 | hi_CDQ,s935,lo_CQR,lo_CDR,s825,s819 |
| s1048 | 180 | bary_lo | DFR | lo | 470083/1000000 | s393,lo_ZQR,lo_CQR,lo_CZR,lo_CDF,s818,s782 |
| s1056 | 182 | bary_lo | HCP | lo | 168983/500000 | s905,lo_FZP,s979,s491,s708,s676,s727 |
| s1057 | 183 | bary_lo | HYP | lo | 78671/500000 | s905,lo_FZP,s979,s491,s638,s840,s1020 |
| s1059 | 185 | bary_hi | CFP | lo | 36549/200000 | s905,lo_FZP,s979,s491,lo_CDF,s713 |
| s1069 | 186 | bary_lo | OFZ | hi | 41401/62500 | s885,lo_YZQ,s999,s877,hi_ODF,lo_OFY,hi_OFQ |
| s1076 | 0 | sum | OHC | lo | 418343/1000000 | lo_HCY,s831,lo_OHY |
| s1078 | 3 | sum | OHF | lo | 35797/125000 | s840,lo_OFY,lo_OHY |
| s1081 | 4 | sum | OHQ | lo | 850313/1000000 | s760,s1021,lo_OQR |
| s1084 | 5 | sub | OZQ | hi | 93037/200000 | hi_ODQ,s999,lo_ODZ |
| s1085 | 6 | sum | ODR | lo | 366003/1000000 | s1000,lo_ODZ,s724 |
| s1087 | 7 | sum | OYQ | lo | 527819/1000000 | lo_OQR,s1024,lo_YQR |
| s1089 | 9 | sum | HCD | lo | 377483/500000 | s288,s1056,lo_HDP |
| s1090 | 10 | sum | HCQ | lo | 51433/100000 | lo_CQR,s1025,s760 |
| s1091 | 11 | sum | HDY | lo | 171671/500000 | lo_DYP,lo_HDP,s1057 |
| s1094 | 14 | sum | CDQ | lo | 72663/200000 | lo_CDR,lo_CQR,s935 |
| s1095 | 15 | sum | CFQ | lo | 544203/1000000 | s1031,lo_CQR,s756 |
| s1096 | 16 | sum | CYQ | lo | 9783/25000 | lo_CQR,s1032,lo_YQR |
| s1097 | 17 | sum | DFY | lo | 65401/200000 | s491,lo_DYP,s829 |
| s1098 | 18 | sum | DFZ | lo | 320041/1000000 | s491,s979,lo_FZP |
| s1100 | 19 | sumlo | OCY | lo | 118809/500000 | s780,lo_OHY,s705,s1076,hi_OHD |
| s1102 | 21 | diffhi | ODF | hi | 57893/62500 | hi_OFQ,hi_OHD,lo_ODQ,s1078,s1081 |
| s1104 | 23 | sumlo | HCF | lo | 25511/100000 | s1089,s1078,lo_HDF,s1076,hi_OHD |
| s1108 | 26 | sumlo | HFY | lo | 106973/1000000 | lo_HDF,lo_OHY,s1091,s1078,hi_OHD |
| s1110 | 27 | sumlo | HFQ | lo | 247119/1000000 | lo_HDF,s1081,s766,s1078,hi_OHD |
| s1115 | 28 | sumlo | OCF | lo | 217329/500000 | lo_CDF,s1076,s1104,s780,s293 |
| s1120 | 35 | sumlo | CFR | lo | 274173/1000000 | lo_CDF,lo_CQR,lo_CDR,s1095,hi_CDQ |
| s1122 | 37 | sumlo | CFZ | lo | 18333/100000 | s1059,lo_CZQ,s1095,lo_CZP,s864 |
| s1126 | 41 | sumlo | DZQ | lo | 8403/40000 | s1094,s1098,lo_CDZ,s782,s825 |
| s1127 | 42 | sumlo | DZR | lo | 97291/1000000 | lo_CDR,s1098,lo_CDZ,s1048,s825 |
| s1129 | 43 | sumlo | ODF | lo | 156319/200000 | lo_CDF,s1078,lo_HDF,s1115,s294 |
| s1130 | 43 | diffhi | OHF | hi | 14007/40000 | s294,s1102,lo_HDF,s1115,lo_CDF |
| s1137 | 45 | diffhi | OCF | hi | 2363/4000 | s294,hi_OFQ,s1095,s1078,s1110 |
| s1144 | 46 | sumlo | CFP | lo | 92883/500000 | lo_CDF,lo_FZP,s1122,s491,s905 |
| s1149 | 47 | sumlo | HYQ | lo | 6511/25000 | s1096,s1091,s878,lo_HCY,s891 |
| s1156 | 49 | sumlo | DZP | lo | 124263/1000000 | s288,lo_FZP,lo_CZP,s491,s960 |
| s1162 | 54 | sumlo | DQR | lo | 180743/1000000 | s1126,lo_OQR,lo_ODQ,lo_ZQR,s1084 |
| s1168 | 56 | balance_lo | CYZ | lo | 136403/500000 | lo_YZQ,s780,lo_CZQ,s705,s1096,lo_ODZ,hi_ODQ |
| s1171 | 57 | balance_lo | HCD | lo | 385801/500000 | s1094,s1078,s766,s1115,s1090,s1129,hi_OFQ |
| s1173 | 58 | balance_lo | CDY | lo | 147291/250000 | s878,s1115,s1096,s1129,s1094,lo_OFY,hi_OFQ |
| s1178 | 59 | balance_hi | OHY | hi | 61277/500000 | s294,s763,s1171,lo_OFY,lo_HDF,s1100,lo_CDF |
| s1179 | 59 | balance_hi | HDF | hi | 35863/200000 | s294,s763,s1171,lo_OFY,lo_CDF,lo_OHY,s1100 |
| s1180 | 59 | balance_lo | HCF | lo | 6773/25000 | s1171,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s1100,s763 |
| s1181 | 59 | balance_lo | ODY | lo | 103529/200000 | s1171,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s1100,s294 |
| s1184 | 61 | balance_lo | HFQ | lo | 24979/100000 | lo_HDF,s1087,s782,lo_OHY,s766,lo_OFY,s763 |
| s1187 | 62 | balance_lo | HCD | lo | 797649/1000000 | lo_CDF,s1081,lo_HDF,lo_OCQ,s1180,lo_ODQ,hi_OFQ |
| s1188 | 62 | balance_lo | OFQ | lo | 433729/500000 | lo_CDF,s1081,lo_HDF,lo_OCQ,s1180,lo_ODQ,s293 |
| s1193 | 65 | balance_lo | CFZ | lo | 199967/1000000 | lo_FZP,lo_OCQ,lo_CZP,s1188,s1144,s796,s1008 |
| s1199 | 66 | balance_lo | CFY | lo | 61379/250000 | s1115,s1091,lo_OFY,s1187,s1100,lo_HDF,hi_OHD |
| s1204 | 68 | balance_lo | FYQ | lo | 404967/1000000 | s1199,s766,s1096,lo_HDF,s1095,s1091,s293 |
| s1206 | 69 | balance_lo | CFP | lo | 206601/1000000 | s1193,lo_HDP,lo_FZP,s1187,lo_CZP,lo_HDF,s903 |
| s1209 | 71 | balance_lo | HYR | lo | 43429/250000 | s1162,lo_HCY,lo_CQR,s1091,lo_CDR,s1149,hi_CDQ |
| s1212 | 72 | balance_lo | HCD | lo | 80689/100000 | s1078,s1094,s1184,s780,s1081,lo_CDF,hi_OFQ |
| s1213 | 72 | balance_hi | OHQ | hi | 992599/1000000 | hi_OFQ,s293,s1078,s1094,s1184,s780,lo_CDF |
| s1215 | 74 | balance_lo | OZR | lo | 11971/62500 | s796,lo_CDR,lo_ZQR,s780,lo_OQR,lo_CDZ,hi_CDQ |
| s1217 | 75 | balance_lo | HYP | lo | 157511/1000000 | s1091,s1206,lo_DYP,s1180,lo_HDP,s1199,s825 |
| s1220 | 76 | balance_lo | CFY | lo | 263509/1000000 | lo_HDF,s1100,s1129,lo_HCY,s1078,s1173,hi_OHD |
| s1222 | 77 | balance_lo | CDY | lo | 302637/500000 | s1129,s1096,s782,s1100,lo_ODQ,s1220,hi_OFQ |
| s1223 | 78 | balance_lo | HCZ | lo | 12377/40000 | s1078,lo_CZQ,s1184,s755,s1081,s1193,hi_OFQ |
| s1225 | 80 | balance_lo | HCR | lo | 298617/1000000 | s762,lo_CQR,s766,s1022,s1081,lo_CDR,hi_ODQ |
| s1227 | 81 | balance_lo | DYZ | lo | 45849/200000 | lo_OFY,s1126,s1204,lo_ODZ,s1087,s1098,hi_OFQ |
| s1232 | 83 | balance_lo | FYP | lo | 150973/1000000 | s1222,lo_HFP,s1091,s1206,lo_HCY,s491,s293 |
| s1246 | 86 | balance_lo | HZP | lo | 77691/500000 | s1212,lo_FZP,lo_HDF,lo_CZP,s1180,s1156,s825 |
| s1251 | 88 | balance_lo | OCZ | lo | 58949/250000 | s780,lo_ZQR,lo_CDZ,lo_OQR,lo_ODZ,lo_CQR,hi_DQR |
| s1253 | 89 | balance_lo | FQR | lo | 205087/1000000 | s1129,lo_YQR,s1097,lo_OQR,lo_OFY,s1162,s763 |
| s1255 | 90 | balance_lo | DQR | lo | 183457/1000000 | s1129,lo_ZQR,s1098,lo_OQR,lo_ODZ,s1253,s1069 |
| s1258 | 92 | balance_lo | HQR | lo | 173647/1000000 | s1212,lo_YQR,s1091,lo_CQR,lo_HCY,s1255,s891 |
| s1261 | 94 | linear | OHC | lo | 211809/500000 | lo_HCY,s1100,lo_OHY |
| s1263 | 95 | linear | OHD | lo | 953987/1000000 | s1091,s1181,lo_OHY |
| s1265 | 95 | linear | HDY | hi | 77871/200000 | s1181,hi_OHD,lo_OHY |
| s1268 | 96 | linear | HDQ | lo | 163847/250000 | lo_ODQ,s1263,s1213 |
| s1270 | 97 | linear | OHR | lo | 40419/62500 | s1026,s1085,s1263 |
| s1272 | 98 | linear | OHF | lo | 292973/1000000 | s1108,lo_OFY,lo_OHY |
| s1277 | 101 | linear | OHQ | lo | 913351/1000000 | s1258,s1270,lo_OQR |
| s1278 | 101 | linear | OHR | hi | 11343/15625 | s1258,s1213,lo_OQR |
| s1280 | 102 | linear | OCD | hi | 564423/1000000 | s825,s1137,s1129 |
| s1281 | 103 | linear | OCD | lo | 105449/250000 | lo_CDZ,s1251,lo_ODZ |
| s1283 | 104 | linear | DFQ | lo | 97843/200000 | s1129,lo_ODQ,hi_OFQ |
| s1284 | 105 | linear | ODF | hi | 444613/500000 | s1035,s1085,s927 |
| s1291 | 108 | linear | ODR | lo | 381827/1000000 | s1127,lo_ODZ,s1215 |
| s1296 | 110 | linear | OZQ | lo | 5899/15625 | lo_OQR,s1215,lo_ZQR |
| s1299 | 112 | linear | HCQ | lo | 35329/62500 | lo_CQR,s1225,s1258 |
| s1302 | 113 | linear | HDY | lo | 343511/1000000 | lo_DYP,lo_HDP,s1217 |
| s1306 | 114 | linear | HDZ | lo | 74529/200000 | s1156,lo_HDP,s1246 |
| s1317 | 117 | linear | CFQ | lo | 28613/50000 | s1120,lo_CQR,s1253 |
| s1321 | 119 | linear | DFY | lo | 174177/500000 | s491,lo_DYP,s1232 |
| s1326 | 122 | support_z | HDF | lo | 96901/1000000 | s1321,s1265 |
| s1330 | 125 | linear | HCD | hi | 903099/1000000 | s1326 |
| s1331 | 126 | linear | CDF | hi | 18227/25000 | s1180 |
| s1334 | 128 | bary_lo | OCY | lo | 25851/100000 | hi_OHD,s1302,s1181,lo_OHY,s1261,s1281 |
| s1339 | 129 | bary_hi | OYQ | hi | 12601/20000 | hi_OHD,s1302,s1181,lo_OHY,s1213,hi_ODQ |
| s1340 | 130 | bary_lo | OYR | lo | 370273/1000000 | hi_OHD,s1302,s1181,lo_OHY,s1270,s1291 |
| s1344 | 131 | bary_hi | HFY | lo | 109651/1000000 | hi_OHD,s1302,s1181,lo_OHY,s1272,s1326 |
| s1354 | 132 | bary_hi | DFY | hi | 439047/1000000 | hi_OHD,s1302,s1181,lo_OHY,s1284,s1179 |
| s1381 | 136 | bary_hi | DYQ | lo | 18671/31250 | s1130,s1344,lo_OFY,lo_OHY,lo_ODQ,s1268,s1283 |
| s1394 | 140 | bary_hi | CDY | hi | 43403/62500 | s1278,s1209,s1340,lo_OHY,s1280,s1330,lo_CDR |
| s1402 | 144 | bary_hi | OHZ | lo | 585247/1000000 | hi_ODQ,s1126,s1296,lo_ODZ,s1263,s1277 |
| s1443 | 150 | bary_hi | DQR | lo | 19063/100000 | s1339,lo_YQR,lo_OQR,s1340,lo_ODQ,s1381 |
| s1485 | 156 | bary_lo | OHP | hi | 13789/25000 | s1265,lo_DYP,s1217,lo_HDP,hi_OHD,s1178 |
| s1487 | 157 | bary_lo | ODP | lo | 87877/250000 | s1265,lo_DYP,s1217,lo_HDP,s1263,s1181 |
| s1501 | 158 | bary_lo | DFP | lo | 6647/62500 | s1265,lo_DYP,s1217,lo_HDP,s1326,s1321 |
| s1503 | 159 | bary_hi | DZP | lo | 28753/200000 | s1265,lo_DYP,s1217,lo_HDP,s1306,s1227 |
| s1544 | 165 | bary_hi | DFZ | hi | 403829/1000000 | s1394,s1227,s1168,lo_CDZ,s1331,s1354 |
| s1551 | 171 | bary_lo | HCR | lo | 151917/500000 | hi_CDQ,s1443,lo_CQR,lo_CDR,s1212,s1299 |
| s1556 | 174 | bary_hi | CFR | lo | 140193/500000 | hi_CDQ,s1443,lo_CQR,lo_CDR,lo_CDF,s1317 |
| s1586 | 181 | bary_hi | OHP | lo | 261087/500000 | s1544,lo_FZP,s1503,s1501,s1263,s1272,s1402 |
| s1590 | 182 | bary_lo | HCP | lo | 101123/250000 | s1544,lo_FZP,s1503,s1501,s1212,s1180,s1223 |
| s1615 | 0 | sum | OHC | lo | 44451/100000 | lo_HCY,s1334,lo_OHY |
| s1617 | 2 | sum | OHD | lo | 483341/500000 | lo_HDP,s1487,s1586 |
| s1620 | 3 | sum | OHF | lo | 295651/1000000 | s1344,lo_OFY,lo_OHY |
| s1637 | 10 | sum | HCQ | lo | 570481/1000000 | lo_CQR,s1551,s1258 |
| s1644 | 15 | sum | CFQ | lo | 578473/1000000 | s1556,lo_CQR,s1253 |
| s1662 | 23 | diffhi | HCD | hi | 444657/500000 | s294,hi_OHD,s1326,s1615,s1620 |
| s1667 | 24 | sumlo | OHQ | lo | 947697/1000000 | s1637,s1617,s1268,s1615,s1662 |
| s1671 | 25 | sumlo | HCF | lo | 36471/125000 | s1590,s1620,lo_HFP,s1615,s1485 |
| s1682 | 27 | sumlo | HFQ | lo | 142799/500000 | s1326,s1667,s1268,s1620,hi_OHD |
| s1701 | 28 | sumlo | OCF | lo | 121317/250000 | lo_CDF,s1615,s1671,s1281,s1662 |
| s1767 | 45 | sumlo | HCF | lo | 313893/1000000 | s1644,s1620,s1682,s1701,hi_OFQ |

## Conclusion

{"triangle":"HCF","lower":"s1767","upper":"s294"}
