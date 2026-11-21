# Leaf rppmmppppmmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYZ":1,"DYP":-1,"QYZ":-1,"OFY":1}

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
| 9 | extreme | ["OCY","F","CYF",-1] |
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
| 26 | interior_line | ["ZP","Y","OHC","Y",1] |
| 27 | interior_line | ["ZP","Z","HCDF","D",-1] |
| 28 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 29 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 30 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 32 | plu | ["OHDZP","ODP",1] |
| 33 | plu | ["OHDPR","OPR",-1] |
| 34 | plu | ["OHFYZ","OYZ",-1] |
| 35 | plu | ["OHFYP","OYP",-1] |
| 36 | plu | ["FOHYZ","FYZ",1] |
| 37 | plu | ["FOHYP","FYP",1] |
| 38 | plu | ["YODPQ","YPQ",-1] |
| 39 | plu | ["YODPR","YPR",-1] |
| 40 | plu | ["YOZQR","YZR",-1] |
| 41 | plu | ["ZOCFP","ZCF",-1] |
| 42 | plu | ["POCFZ","PCF",-1] |
| 43 | plu | ["QOHYR","QHR",1] |
| 44 | plu | ["QOFYR","QFR",1] |
| 45 | plu | ["QOYZR","QZR",1] |
| 46 | plu | ["QOYPR","QPR",1] |
| 47 | mesh | ["OHDPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 823/1000 | ["cost","YZP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YR"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","R"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OZQ | OZQ | lo | 279/1000 | ["cost","R"] |
| lo_OQR | OQR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
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
| lo_CQR | CQR | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| lo_ZQR | ZQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 4 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 5 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 6 | ["fan","OHP","HYP","OHY","OYP"] | ["fan","OHP","Y"] |
| 7 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 8 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 9 | ["fan","OYQ","OQR","OYR","YQR"] | ["fan","OYQ","R"] |
| 10 | ["fan","OZQ","OQR","OZR","ZQR"] | ["fan","OZQ","R"] |
| 11 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 12 | ["fan","HCQ","CQR","HCR","HQR"] | ["fan","HCQ","R"] |
| 13 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 14 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 15 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 16 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 17 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 18 | ["fan","CFQ","CFR","CQR","FQR"] | ["fan","CFQ","R"] |
| 19 | ["fan","CZQ","CQR","CZR","ZQR"] | ["fan","CZQ","R"] |
| 20 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 21 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 22 | ["plu","OCP","OHD","OCD","OHP","ODP","OHC"] | ["plu","OHCDP"] |
| 23 | ["plu","OCD","OHQ","OCQ","OHD","ODQ","OHC"] | ["plu","OHCDQ"] |
| 24 | ["plu","OCY","OHQ","OCQ","OHY","OHC","OYQ"] | ["plu","OHCYQ"] |
| 25 | ["plu","OCZ","OHQ","OCQ","OHZ","OHC","OZQ"] | ["plu","OHCZQ"] |
| 26 | ["plu","ODP","OHZ","ODZ","OHP","OHD","OZP"] | ["plu","OHDZP"] |
| 27 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 28 | ["plu","HDY","OHC","HCD","OHY","HCY","OHD"] | ["plu","HOCDY"] |
| 29 | ["plu","HCF","OHP","HCP","OHF","HFP","OHC"] | ["plu","HOCFP"] |
| 30 | ["plu","HFY","OHD","HDF","OHY","HDY","OHF"] | ["plu","HODFY"] |
| 31 | ["plu","HFZ","OHD","HDF","OHZ","HDZ","OHF"] | ["plu","HODFZ"] |
| 32 | ["plu","HFQ","OHD","HDF","OHQ","HDQ","OHF"] | ["plu","HODFQ"] |
| 33 | ["plu","HFZ","OHP","HFP","OHZ","HZP","OHF"] | ["plu","HOFZP"] |
| 34 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 35 | ["plu","HCZ","OCP","CZP","OHC","HCP","OCZ"] | ["plu","COHZP"] |
| 36 | ["plu","CFQ","OCZ","CFZ","OCQ","CZQ","OCF"] | ["plu","COFZQ"] |
| 37 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 38 | ["plu","CDY","HCQ","CDQ","HCY","CYQ","HCD"] | ["plu","CHDYQ"] |
| 39 | ["plu","CDQ","HCR","CDR","HCQ","CQR","HCD"] | ["plu","CHDQR"] |
| 40 | ["plu","CDY","CFQ","CDF","CYQ","CDQ","CFY"] | ["plu","CDFYQ"] |
| 41 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 42 | ["plu","CDQ","CFR","CDF","CQR","CDR","CFQ"] | ["plu","CDFQR"] |
| 43 | ["plu","CDZ","OHD","HCD","ODZ","HDZ","OCD"] | ["plu","DOHCZ"] |
| 44 | ["plu","CDZ","ODF","CDF","ODZ","DFZ","OCD"] | ["plu","DOCFZ"] |
| 45 | ["plu","CDF","ODR","CDR","ODF","DFR","OCD"] | ["plu","DOCFR"] |
| 46 | ["plu","CDF","DZQ","CDQ","DFZ","CDZ","DFQ"] | ["plu","DCFZQ"] |
| 47 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 48 | ["plu","HCF","OFP","CFP","OHF","HFP","OCF"] | ["plu","FOHCP"] |
| 49 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 50 | ["plu","HDY","OCY","CDY","OHY","HCY","ODY"] | ["plu","YOHCD"] |
| 51 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 52 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 53 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 54 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 55 | ["plu","FYP","HZP","FZP","HYP","HFP","YZP"] | ["plu","PHFYZ"] |
| 56 | ["plu","CFP","DZP","CDP","FZP","CZP","DFP"] | ["plu","PCDFZ"] |
| 57 | ["plu","CFP","YZP","CYP","FZP","CZP","FYP"] | ["plu","PCFYZ"] |
| 58 | ["balance",[[-1,"CDF","OHZ"],[1,"DFZ","OHC"],[1,"CFZ","OHD"],[1,"CDZ","OHF"]]] | ["six","OHCDFZ"] |
| 59 | ["balance",[[-1,"CDF","OHP"],[1,"DFP","OHC"],[1,"CFP","OHD"],[1,"CDP","OHF"]]] | ["six","OHCDFP"] |
| 60 | ["balance",[[-1,"DFZ","OHP"],[1,"FZP","OHD"],[1,"DZP","OHF"],[1,"DFP","OHZ"]]] | ["six","OHDFZP"] |
| 61 | ["balance",[[1,"HCF","ODP"],[1,"CFP","OHD"],[1,"HFP","OCD"],[-1,"HCP","ODF"]]] | ["six","ODHCFP"] |
| 62 | ["balance",[[1,"HCZ","ODP"],[-1,"CZP","OHD"],[-1,"HZP","OCD"],[-1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 63 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[1,"CZP","ODF"],[1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 64 | ["balance",[[-1,"HCZ","OFP"],[-1,"CZP","OHF"],[-1,"HZP","OCF"],[1,"HCP","OFZ"]]] | ["six","OFHCZP"] |
| 65 | ["balance",[[-1,"CDY","OFQ"],[1,"DYQ","OCF"],[1,"CYQ","ODF"],[1,"CDQ","OFY"]]] | ["six","OFCDYQ"] |
| 66 | ["balance",[[-1,"HCD","OFY"],[-1,"CDF","OHY"],[-1,"HDF","OCY"],[1,"HCF","ODY"]]] | ["six","OYHCDF"] |
| 67 | ["balance",[[-1,"HCF","OYZ"],[1,"CFZ","OHY"],[1,"HFZ","OCY"],[1,"HCZ","OFY"]]] | ["six","OYHCFZ"] |
| 68 | ["balance",[[-1,"HCF","OYP"],[1,"CFP","OHY"],[1,"HFP","OCY"],[1,"HCP","OFY"]]] | ["six","OYHCFP"] |
| 69 | ["balance",[[-1,"HCF","OYR"],[1,"CFR","OHY"],[1,"HFR","OCY"],[1,"HCR","OFY"]]] | ["six","OYHCFR"] |
| 70 | ["balance",[[1,"HFZ","OYP"],[-1,"FZP","OHY"],[-1,"HZP","OFY"],[-1,"HFP","OYZ"]]] | ["six","OYHFZP"] |
| 71 | ["balance",[[1,"HCF","OYZ"],[-1,"CFY","OHZ"],[1,"HFY","OCZ"],[1,"HCY","OFZ"]]] | ["six","OZHCFY"] |
| 72 | ["balance",[[1,"HFY","OZP"],[-1,"FYZ","OHP"],[1,"HYZ","OFP"],[1,"HFZ","OYP"]]] | ["six","OPHFYZ"] |
| 73 | ["balance",[[1,"CFY","OZQ"],[1,"FYZ","OCQ"],[-1,"CYZ","OFQ"],[1,"CFZ","OYQ"]]] | ["six","OQCFYZ"] |
| 74 | ["balance",[[-1,"OCF","HDZ"],[-1,"CFZ","OHD"],[1,"OFZ","HCD"],[-1,"OCZ","HDF"]]] | ["six","HDOCFZ"] |
| 75 | ["balance",[[1,"OFZ","HDP"],[1,"FZP","OHD"],[1,"OZP","HDF"],[-1,"OFP","HDZ"]]] | ["six","HDOFZP"] |
| 76 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 77 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 78 | ["balance",[[1,"OCF","HYZ"],[-1,"CFZ","OHY"],[-1,"OFZ","HCY"],[-1,"OCZ","HFY"]]] | ["six","HYOCFZ"] |
| 79 | ["balance",[[1,"OCZ","HYQ"],[-1,"CZQ","OHY"],[-1,"OZQ","HCY"],[-1,"OCQ","HYZ"]]] | ["six","HYOCZQ"] |
| 80 | ["balance",[[1,"CDF","HYZ"],[-1,"DFZ","HCY"],[-1,"CFZ","HDY"],[-1,"CDZ","HFY"]]] | ["six","HYCDFZ"] |
| 81 | ["balance",[[-1,"OCD","HYZ"],[1,"CDY","OHZ"],[-1,"ODY","HCZ"],[-1,"OCY","HDZ"]]] | ["six","HZOCDY"] |
| 82 | ["balance",[[-1,"OCF","HZP"],[-1,"CFZ","OHP"],[1,"OFZ","HCP"],[-1,"OCZ","HFP"]]] | ["six","HPOCFZ"] |
| 83 | ["balance",[[-1,"OHF","CDY"],[1,"HFY","OCD"],[1,"OFY","HCD"],[1,"OHY","CDF"]]] | ["six","CDOHFY"] |
| 84 | ["balance",[[1,"OYQ","CDR"],[1,"YQR","OCD"],[1,"OQR","CDY"],[-1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 85 | ["balance",[[1,"OZQ","CDR"],[1,"ZQR","OCD"],[1,"OQR","CDZ"],[-1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 86 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 87 | ["balance",[[1,"OHF","CYZ"],[1,"HFZ","OCY"],[1,"OFZ","HCY"],[-1,"OHZ","CFY"]]] | ["six","CYOHFZ"] |
| 88 | ["balance",[[1,"OHF","CZQ"],[1,"HFQ","OCZ"],[-1,"OFQ","HCZ"],[1,"OHQ","CFZ"]]] | ["six","CZOHFQ"] |
| 89 | ["balance",[[-1,"OHD","CFP"],[-1,"HDF","OCP"],[1,"ODF","HCP"],[-1,"OHF","CDP"]]] | ["six","CPOHDF"] |
| 90 | ["balance",[[-1,"OHC","DFY"],[-1,"HCD","OFY"],[-1,"OCD","HFY"],[1,"OHD","CFY"]]] | ["six","FYOHCD"] |
| 91 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 92 | ["balance",[[-1,"OHD","FZP"],[-1,"HDP","OFZ"],[-1,"ODP","HFZ"],[1,"OHP","DFZ"]]] | ["six","FZOHDP"] |
| 93 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 94 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 95 | ["balance",[[1,"OCD","FZP"],[-1,"CDF","OZP"],[1,"ODF","CZP"],[1,"OCF","DZP"]]] | ["six","ZPOCDF"] |
| 96 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 97 | ["balance",[[1,"CDF","YZP"],[-1,"DFY","CZP"],[-1,"CFY","DZP"],[-1,"CDY","FZP"]]] | ["six","ZPCDFY"] |
| 98 | ["balance",[[-1,"ODF","YQR"],[-1,"DFY","OQR"],[-1,"OFY","DQR"],[1,"ODY","FQR"]]] | ["six","QRODFY"] |
| 99 | ["balance",[[-1,"HCD","YQR"],[1,"CDY","HQR"],[-1,"HDY","CQR"],[-1,"HCY","DQR"]]] | ["six","QRHCDY"] |
| 100 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 101 | ["linear",{"OHD":1,"ODF":-1,"OHF":-1,"HDF":1},"0"] | ["affine_quad","OHDF",-1] |
| 102 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 103 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 104 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 105 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 106 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 107 | ["linear",{"ODF":-1,"OFY":-1,"ODY":1,"DFY":1},"0"] | ["affine_quad","ODFY",-1] |
| 108 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 109 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 110 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 111 | ["linear",{"OYQ":1,"OQR":-1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",-1] |
| 112 | ["linear",{"OZQ":1,"OQR":-1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",-1] |
| 113 | ["linear",{"HCQ":1,"HQR":-1,"HCR":-1,"CQR":-1},"0"] | ["affine_quad","HCQR",1] |
| 114 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 115 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 116 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 117 | ["linear",{"CFQ":1,"CQR":-1,"CFR":-1,"FQR":-1},"0"] | ["affine_quad","CFQR",-1] |
| 118 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 119 | ["linear",{"DYZ":-1,"DZQ":-1,"DYQ":1,"YZQ":-1},"0"] | ["affine_quad","DYZQ",-1] |
| 120 | ["quad","HDQ","HYQ","93/125"] | ["quad","HYQD","ZP"] |
| 121 | ["quad","CFQ","DFQ","93/91"] | ["quad","CQDF","ZPR"] |
| 122 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 123 | ["support","HZP","HYP","YZP","1023/1000"] | ["support_pent","PZCYH"] |
| 124 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 125 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 126 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HCQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HQ"] |
| 127 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 128 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 129 | ["bary",["OYQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OQ"] |
| 130 | ["bary",["OYR",1],[null,["OHR",1],["ODR",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OR"] |
| 131 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 132 | ["bary",["HYQ",-1],[["OHQ",-1],null,["HDQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HQ"] |
| 133 | ["bary",["OHZ",-1],[null,null,["OHD",-1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OH"] |
| 134 | ["bary",["HCZ",1],[["OHC",-1],null,["HCD",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","HC"] |
| 135 | ["bary",["HYZ",1],[["OHY",-1],null,["HDY",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","HY"] |
| 136 | ["bary",["OHP",-1],[null,null,["OHD",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OH"] |
| 137 | ["bary",["OFP",-1],[null,["OHF",1],["ODF",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OF"] |
| 138 | ["bary",["OYP",-1],[null,["OHY",1],["ODY",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OY"] |
| 139 | ["bary",["CFP",-1],[["OCF",1],["HCF",1],["CDF",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CF"] |
| 140 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CD"] |
| 141 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],["CFZ",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CZ"] |
| 142 | ["bary",["YZP",1],[["OZP",1],["HZP",1],["FZP",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","ZP"] |
| 143 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 144 | ["bary",["CDZ",1],[["OCD",1],null,["CDF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CD"] |
| 145 | ["bary",["CZR",1],[["OCR",1],["CDR",1],["CFR",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CR"] |
| 146 | ["bary",["HFZ",-1],[["OHF",-1],["HDF",-1],["HFY",-1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","HF"] |
| 147 | ["bary",["DQR",-1],[["ODQ",-1],["DYQ",-1],null],"OYQ",["YQR","OQR","OYR"]] | ["bary","OYQ","R","DQ"] |
| 148 | ["bary",["CFP",-1],[["HCF",1],null,["CDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CF"] |
| 149 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 150 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","HY"] |
| 151 | ["bary",["CZQ",1],[null,["CDQ",1],["CFQ",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","CQ"] |
| 152 | ["bary",["DFZ",1],[["CDF",1],null,null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DF"] |
| 153 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DQ"] |
| 154 | ["bary",["OHP",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OH"] |
| 155 | ["bary",["OYP",-1],[["OCY",-1],["ODY",-1],["OFY",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OY"] |
| 156 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 157 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 158 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 159 | ["bary",["OFZ",-1],[["OCF",-1],["ODF",-1],["OFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OF"] |
| 160 | ["bary",["OYZ",-1],[["OCY",-1],["ODY",-1],["OYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OY"] |
| 161 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 162 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 163 | ["bary",["OHR",-1],[["OHC",-1],["OHD",-1],["OHQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OH"] |
| 164 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 165 | ["bary",["OZR",-1],[["OCZ",-1],["ODZ",-1],["OZQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OZ"] |
| 166 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 167 | ["bary",["CFR",-1],[null,["CDF",-1],["CFQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CF"] |
| 168 | ["bary",["HFR",-1],[["HCF",-1],["HFZ",-1],["HFQ",-1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","HF"] |
| 169 | ["bary",["DFR",1],[["CDF",1],["DFZ",1],["DFQ",1]],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","DF"] |
| 170 | ["bary",["DQR",-1],[["CDQ",-1],["DZQ",-1],null],"CZQ",["ZQR","CQR","CZR"]] | ["bary","CZQ","R","DQ"] |
| 171 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 172 | ["bary",["OYP",-1],[["ODY",-1],["OFY",-1],["OYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OY"] |
| 173 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 174 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 175 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 176 | ["bary",["CYP",-1],[["CDY",-1],["CFY",-1],["CYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CY"] |
| 177 | ["linear",{"OHD":1,"OHY":-1},"365211/500000"] | ["mesh_ear","OHDPYZ",1,"OHY"] |
| 178 | ["linear",{"YZP":-1},"-93/625"] | ["mesh_inner","OHDPYZ",1] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s2 | 1 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s4 | 2 | sub | HDZ | hi | 157/250 | hi_OHD,lo_ODZ,lo_OHZ |
| s8 | 3 | sub | ODP | hi | 157/250 | hi_OHD,lo_HDP,lo_OHP |
| s43 | 14 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s44 | 15 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s59 | 21 | sumlo | OCY | lo | 11981/125000 | lo_OCD,lo_OHY,lo_ODY,lo_OHC,hi_OHD |
| s60 | 22 | sumlo | OCP | lo | 65931/500000 | lo_OCD,lo_OHP,lo_ODP,lo_OHC,hi_OHD |
| s67 | 27 | sumlo | HCF | lo | 219573/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s70 | 31 | sumlo | HFZ | lo | 25947/250000 | lo_HDF,lo_OHZ,lo_HDZ,lo_OHF,hi_OHD |
| s72 | 32 | sumlo | HFQ | lo | 113077/1000000 | lo_HDF,lo_OHQ,lo_HDQ,lo_OHF,hi_OHD |
| s78 | 36 | sumlo | OCZ | lo | 13221/125000 | lo_CFZ,lo_OCQ,lo_CZQ,lo_OCF,hi_CFQ |
| s79 | 37 | sumlo | CFY | lo | 64577/500000 | lo_CDF,lo_HCY,lo_CDY,s67,hi_HCD |
| s82 | 38 | sumlo | HCQ | lo | 36611/125000 | lo_CDQ,lo_HCY,lo_CYQ,lo_HCD,hi_CDY |
| s84 | 39 | sumlo | HCR | lo | 8741/40000 | lo_CDR,s82,lo_CQR,lo_HCD,hi_CDQ |
| s86 | 40 | sumlo | CFQ | lo | 306343/1000000 | lo_CDF,lo_CYQ,lo_CDQ,s79,hi_CDY |
| s87 | 41 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s44 |
| s89 | 42 | sumlo | CFR | lo | 3461/15625 | lo_CDF,lo_CQR,lo_CDR,s86,hi_CDQ |
| s95 | 44 | sumlo | CDZ | lo | 126743/1000000 | lo_CDF,lo_ODZ,lo_DFZ,lo_OCD,hi_ODF |
| s100 | 47 | sumlo | HCF | lo | 117361/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s108 | 49 | sumlo | CFP | lo | 105463/1000000 | lo_CDF,lo_FZP,s87,lo_DFP,s43 |
| s129 | 63 | balance_lo | CFZ | lo | 29413/200000 | lo_FZP,lo_OCD,lo_CZP,lo_ODF,s108,lo_ODZ,s8 |
| s130 | 65 | balance_lo | CDY | lo | 3769/12500 | lo_DYQ,lo_OCF,lo_CYQ,lo_ODF,lo_CDQ,lo_OFY,hi_OFQ |
| s140 | 74 | balance_lo | OFZ | lo | 214271/1000000 | lo_OCF,lo_HDZ,s129,lo_OHD,s78,lo_HDF,hi_HCD |
| s144 | 75 | balance_lo | OFP | lo | 8369/50000 | s140,lo_HDP,lo_FZP,lo_OHD,lo_OZP,lo_HDF,s4 |
| s145 | 76 | balance_lo | CFP | lo | 34581/250000 | s129,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s4 |
| s152 | 84 | balance_lo | OYR | lo | 85709/500000 | lo_OYQ,lo_CDR,lo_YQR,lo_OCD,lo_OQR,s130,hi_CDQ |
| s153 | 85 | balance_lo | OZR | lo | 132717/1000000 | lo_OZQ,lo_CDR,lo_ZQR,lo_OCD,lo_OQR,s95,hi_CDQ |
| s156 | 88 | balance_lo | HCZ | lo | 194513/1000000 | lo_OHF,lo_CZQ,s72,s78,lo_OHQ,s129,hi_OFQ |
| s157 | 89 | balance_lo | HCP | lo | 6813/31250 | lo_OHD,s145,lo_HDF,s60,lo_OHF,lo_CDP,hi_ODF |
| s160 | 90 | balance_lo | CFY | lo | 16039/100000 | lo_OHC,lo_DFY,lo_HCD,lo_OFY,lo_OCD,lo_HFY,hi_OHD |
| s163 | 91 | balance_lo | OFZ | lo | 56201/250000 | lo_OHC,lo_DFZ,lo_OCD,s70,lo_OHD,s129,hi_HCD |
| s171 | 93 | balance_lo | OZP | lo | 61851/500000 | lo_OHC,lo_DZP,lo_OCD,lo_HZP,lo_OHD,lo_CZP,hi_HCD |
| s172 | 94 | balance_lo | HZP | lo | 24371/200000 | lo_OHD,lo_FZP,lo_HDF,s171,lo_OHF,lo_DZP,hi_ODF |
| s175 | 98 | balance_lo | FQR | lo | 157863/1000000 | lo_ODF,lo_YQR,lo_DFY,lo_OQR,lo_OFY,lo_DQR,s2 |
| s176 | 99 | balance_lo | HQR | lo | 1653/12500 | lo_HCD,lo_YQR,lo_HDY,lo_CQR,lo_HCY,lo_DQR,hi_CDY |
| s177 | 100 | linear | OHC | lo | 35231/125000 | lo_HCY,s59,lo_OHY |
| s178 | 101 | linear | OHF | hi | 153/250 | hi_HDF,lo_ODF,hi_OHD |
| s193 | 111 | linear | OYQ | lo | 178709/500000 | lo_OQR,s152,lo_YQR |
| s194 | 112 | linear | OZQ | lo | 318717/1000000 | lo_OQR,s153,lo_ZQR |
| s200 | 113 | linear | HCQ | lo | 88753/200000 | lo_CQR,s84,s176 |
| s202 | 115 | linear | HDZ | lo | 61571/200000 | lo_DZP,lo_HDP,s172 |
| s212 | 117 | linear | CFQ | lo | 472367/1000000 | s89,lo_CQR,s175 |
| s221 | 121 | quad | DFQ | lo | 204251/1000000 | hi_CFQ |
| s225 | 122 | quad | CDP | lo | 81/250 | hi_CDQ |
| s227 | 124 | linear | HCD | hi | 907/1000 | lo_HDF |
| s228 | 125 | linear | HCF | hi | 153/500 | lo_CDF |
| s229 | 125 | linear | CDF | hi | 382639/500000 | s100 |
| s232 | 126 | bary_hi | HYQ | lo | 166633/1000000 | hi_OHC,lo_HCY,s59,lo_OHY,lo_OHQ,s200 |
| s240 | 127 | bary_hi | FYP | lo | 110531/1000000 | hi_OHC,lo_HCY,s59,lo_OHY,s144,lo_HFP,s145 |
| s319 | 140 | bary_lo | CDY | lo | 3457/10000 | s178,lo_HFY,lo_OFY,lo_OHY,lo_OCD,lo_HCD,lo_CDF |
| s320 | 141 | bary_lo | CYZ | lo | 125529/1000000 | s178,lo_HFY,lo_OFY,lo_OHY,s78,s156,s129 |
| s336 | 143 | bary_lo | OCY | lo | 54693/500000 | hi_OHQ,s232,s193,lo_OHY,s177,lo_OCQ |
| s355 | 145 | bary_lo | CZR | lo | 4231/40000 | hi_ODF,lo_DFZ,s163,lo_ODZ,lo_OCR,lo_CDR,s89 |
| s363 | 146 | bary_hi | HFZ | lo | 3767/31250 | s2,lo_DYZ,lo_OYZ,lo_ODZ,lo_OHF,lo_HDF,lo_HFY |
| s427 | 148 | bary_lo | CFP | hi | 82397/250000 | s227,s225,lo_HDP,s157,s100,s229 |
| s431 | 149 | bary_lo | DFP | lo | 104381/1000000 | s227,s225,lo_HDP,s157,lo_HDF,lo_CDF |
| s468 | 151 | bary_hi | CZQ | hi | 221587/500000 | s229,lo_DFZ,s129,s95,hi_CDQ,hi_CFQ |
| s470 | 152 | bary_hi | DFZ | hi | 49147/100000 | s229,lo_DFZ,s129,s95,s229 |
| s477 | 154 | bary_hi | OHP | lo | 94429/250000 | s229,s431,s145,s225,s177,lo_OHD,lo_OHF |
| s488 | 156 | bary_lo | HYP | lo | 126619/1000000 | s229,s431,s145,s225,lo_HCY,lo_HDY,lo_HFY |
| s489 | 157 | bary_hi | CDP | hi | 522573/1000000 | s229,s431,s145,s225,s229 |
| s501 | 158 | bary_hi | OHZ | lo | 80281/200000 | s489,lo_DZP,lo_CZP,s95,s177,lo_OHD,s477 |
| s504 | 161 | bary_lo | HYZ | lo | 26851/200000 | s489,lo_DZP,lo_CZP,s95,lo_HCY,lo_HDY,s488 |
| s507 | 162 | bary_hi | CFZ | lo | 2454/15625 | s489,lo_DZP,lo_CZP,s95,lo_CDF,s145 |
| s513 | 163 | bary_hi | OHR | lo | 61617/125000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s177,lo_OHD,lo_OHQ |
| s515 | 164 | bary_hi | OYR | lo | 25233/125000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s336,lo_ODY,s193 |
| s516 | 165 | bary_hi | OZR | lo | 145807/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,s78,lo_ODZ,s194 |
| s518 | 166 | bary_lo | HCR | lo | 251933/1000000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_HCD,s200 |
| s523 | 167 | bary_hi | CFR | lo | 129133/500000 | hi_CDQ,lo_DQR,lo_CQR,lo_CDR,lo_CDF,s212 |
| s545 | 168 | bary_hi | HFR | lo | 140171/1000000 | s468,lo_ZQR,lo_CQR,s355,s100,s363,s72 |
| s547 | 169 | bary_lo | DFR | lo | 32271/100000 | s468,lo_ZQR,lo_CQR,s355,lo_CDF,lo_DFZ,s221 |
| s551 | 171 | bary_hi | OHP | lo | 407937/1000000 | s470,lo_FZP,lo_DZP,s431,lo_OHD,lo_OHF,s501 |
| s556 | 173 | bary_lo | HCP | lo | 148319/500000 | s470,lo_FZP,lo_DZP,s431,lo_HCD,s100,s156 |
| s557 | 174 | bary_lo | HYP | lo | 68479/500000 | s470,lo_FZP,lo_DZP,s431,lo_HDY,lo_HFY,s504 |
| s558 | 175 | bary_hi | CFP | lo | 4117/25000 | s470,lo_FZP,lo_DZP,s431,lo_CDF,s507 |
| s559 | 176 | bary_hi | CYP | lo | 43447/250000 | s470,lo_FZP,lo_DZP,s431,s319,s160,s320 |
| s571 | 177 | linear | OHD | lo | 411711/500000 | lo_OHY |
| s575 | 178 | linear | YZP | hi | 93/625 |  |
| s576 | 0 | sum | OHC | lo | 147693/500000 | lo_HCY,s336,lo_OHY |
| s577 | 2 | sub | HDZ | hi | 101119/200000 | hi_OHD,lo_ODZ,s501 |
| s578 | 3 | sub | ODP | hi | 499063/1000000 | hi_OHD,lo_HDP,s551 |
| s585 | 9 | sum | OYQ | lo | 48483/125000 | lo_OQR,s515,lo_YQR |
| s586 | 10 | sum | OZQ | lo | 331807/1000000 | lo_OQR,s516,lo_ZQR |
| s589 | 11 | sum | HCD | lo | 356819/500000 | s225,s556,lo_HDP |
| s591 | 12 | sum | HCQ | lo | 477173/1000000 | lo_CQR,s518,s176 |
| s592 | 13 | sum | HDY | lo | 161479/500000 | lo_DYP,lo_HDP,s557 |
| s599 | 18 | sum | CFQ | lo | 509129/1000000 | s523,lo_CQR,s175 |
| s604 | 20 | sum | DFZ | lo | 290381/1000000 | s431,lo_DZP,lo_FZP |
| s608 | 24 | sumlo | OCY | lo | 61609/500000 | lo_OCQ,lo_OHY,s576,s585,hi_OHQ |
| s609 | 25 | sumlo | OCZ | lo | 135341/1000000 | lo_OCQ,s501,s576,s586,hi_OHQ |
| s613 | 30 | sumlo | HFY | lo | 49377/500000 | lo_HDF,lo_OHY,s592,lo_OHF,hi_OHD |
| s615 | 31 | sumlo | HFZ | lo | 61611/500000 | lo_HDF,s501,s202,lo_OHF,hi_OHD |
| s622 | 39 | sumlo | HCR | lo | 263679/1000000 | lo_CDR,s591,lo_CQR,s589,hi_CDQ |
| s624 | 42 | sumlo | CFR | lo | 266407/1000000 | lo_CDF,lo_CQR,lo_CDR,s599,hi_CDQ |
| s633 | 44 | sumlo | CDZ | lo | 129099/1000000 | lo_CDF,lo_ODZ,s604,lo_OCD,hi_ODF |
| s634 | 45 | sumlo | ODR | lo | 41497/250000 | lo_CDR,lo_ODF,s547,lo_OCD,s229 |
| s637 | 46 | sumlo | DZQ | lo | 140321/1000000 | lo_CDQ,s604,s633,s221,s229 |
| s639 | 47 | sumlo | ODF | lo | 358779/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,s228 |
| s640 | 47 | diffhi | OHF | hi | 375077/1000000 | s228,hi_ODF,lo_HDF,lo_OCF,lo_CDF |
| s641 | 48 | sumlo | OFP | lo | 234943/1000000 | s558,lo_OHF,lo_HFP,lo_OCF,s228 |
| s652 | 56 | sumlo | DZP | lo | 30219/250000 | s225,lo_FZP,lo_CZP,s431,s427 |
| s653 | 57 | sumlo | CFP | lo | 177699/1000000 | s559,lo_FZP,lo_CZP,s240,s575 |
| s656 | 62 | balance_lo | HCZ | lo | 255999/1000000 | lo_CZP,s571,s172,lo_OCD,s556,lo_ODZ,s578 |
| s657 | 63 | balance_lo | CFZ | lo | 6341/31250 | lo_FZP,lo_OCD,lo_CZP,s639,s653,lo_ODZ,s578 |
| s664 | 66 | balance_lo | ODY | lo | 23263/50000 | s589,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s608,s228 |
| s665 | 67 | balance_lo | OYZ | lo | 189091/1000000 | s657,lo_OHY,s615,s608,s656,lo_OFY,s228 |
| s666 | 68 | balance_lo | OYP | lo | 181609/1000000 | s653,lo_OHY,lo_HFP,s608,s556,lo_OFY,s228 |
| s667 | 69 | balance_lo | OYR | lo | 217547/1000000 | s624,lo_OHY,s545,s608,s622,lo_OFY,s228 |
| s675 | 76 | balance_lo | CFP | lo | 92849/500000 | s657,lo_HDP,lo_FZP,s589,lo_CZP,lo_HDF,s577 |
| s676 | 80 | balance_lo | HYZ | lo | 137579/1000000 | s604,lo_HCY,s657,s592,s633,s613,s229 |
| s677 | 83 | balance_lo | CDY | lo | 200001/500000 | s613,lo_OCD,lo_OFY,s589,lo_OHY,lo_CDF,s640 |
| s679 | 86 | balance_lo | CFY | lo | 5931/31250 | lo_HDF,s608,s639,lo_HCY,lo_OHF,s677,hi_OHD |
| s684 | 91 | balance_lo | OFZ | lo | 4767/15625 | s576,s604,lo_OCD,s615,s571,s657,s227 |
| s696 | 95 | balance_lo | OZP | lo | 154799/1000000 | lo_OCD,lo_FZP,s639,lo_CZP,lo_OCF,s652,s229 |
| s700 | 96 | balance_lo | HZP | lo | 1351/10000 | s589,lo_FZP,lo_HDF,lo_CZP,s100,s652,s229 |
| s713 | 100 | linear | OHC | lo | 154609/500000 | lo_HCY,s608,lo_OHY |
| s714 | 102 | linear | OHD | lo | 440609/500000 | s592,s664,lo_OHY |
| s715 | 102 | linear | ODY | hi | 292021/500000 | s592,hi_OHD,lo_OHY |
| s716 | 102 | linear | HDY | hi | 22087/50000 | s664,hi_OHD,lo_OHY |
| s717 | 103 | linear | OHF | lo | 142377/500000 | s613,lo_OFY,lo_OHY |
| s719 | 104 | linear | OHZ | lo | 41967/100000 | s676,lo_OHY,s665 |
| s721 | 105 | linear | OHP | lo | 411567/1000000 | s557,lo_OHY,s666 |
| s723 | 106 | linear | HYQ | hi | 16223/31250 | hi_OHQ,lo_OHY,s585 |
| s728 | 109 | linear | ODP | lo | 14747/40000 | s652,lo_ODZ,s696 |
| s730 | 110 | linear | ODQ | lo | 87997/250000 | lo_DQR,s634,lo_OQR |
| s733 | 111 | linear | OYQ | lo | 403547/1000000 | lo_OQR,s667,lo_YQR |
| s736 | 114 | linear | HYP | hi | 12787/50000 | lo_DYP,lo_HDP,s716 |
| s739 | 115 | linear | HDZ | lo | 21811/62500 | s652,lo_HDP,s700 |
| s750 | 116 | linear | CDP | lo | 13719/40000 | s633,lo_CZP,s652 |
| s756 | 118 | linear | DFZ | lo | 318257/1000000 | s431,s652,lo_FZP |
| s761 | 119 | linear | DYQ | lo | 326321/1000000 | lo_DYZ,s637,lo_YZQ |
| s763 | 120 | quad | HDQ | lo | 7027/31250 | s723 |
| s768 | 123 | support_x | HZP | hi | 99199/500000 | s575,s736 |
| s774 | 128 | bary_lo | OCY | lo | 161873/1000000 | hi_OHD,s592,s664,lo_OHY,s713,lo_OCD |
| s779 | 129 | bary_hi | OYQ | hi | 654773/1000000 | hi_OHD,s592,s664,lo_OHY,hi_OHQ,hi_ODQ |
| s780 | 130 | bary_lo | OYR | lo | 12239/50000 | hi_OHD,s592,s664,lo_OHY,s513,s634 |
| s783 | 131 | bary_hi | HFY | lo | 25153/250000 | hi_OHD,s592,s664,lo_OHY,s717,lo_HDF |
| s786 | 132 | bary_lo | HYQ | hi | 105207/250000 | hi_OHD,s592,s664,lo_OHY,hi_OHQ,s763 |
| s800 | 133 | bary_lo | OHZ | hi | 69753/125000 | hi_OHD,s739,lo_ODZ,s719,hi_OHD |
| s804 | 134 | bary_hi | HCZ | hi | 398219/1000000 | hi_OHD,s739,lo_ODZ,s719,s713,s227 |
| s807 | 135 | bary_hi | HYZ | hi | 214047/1000000 | hi_OHD,s739,lo_ODZ,s719,lo_OHY,s716 |
| s819 | 136 | bary_lo | OHP | hi | 21533/40000 | hi_OHD,lo_HDP,s728,s721,hi_OHD |
| s822 | 137 | bary_lo | OFP | hi | 398599/1000000 | hi_OHD,lo_HDP,s728,s721,s717,hi_ODF |
| s823 | 138 | bary_lo | OYP | hi | 140059/500000 | hi_OHD,lo_HDP,s728,s721,lo_OHY,s715 |
| s827 | 139 | bary_lo | CFP | hi | 149743/500000 | hi_OHD,lo_HDP,s728,s721,lo_OCF,s100,s229 |
| s840 | 140 | bary_lo | CDY | lo | 446629/1000000 | s640,s783,lo_OFY,lo_OHY,lo_OCD,s589,lo_CDF |
| s841 | 141 | bary_lo | CYZ | lo | 45503/250000 | s640,s783,lo_OFY,lo_OHY,s609,s656,s657 |
| s849 | 142 | bary_lo | YZP | lo | 24003/200000 | s640,s783,lo_OFY,lo_OHY,s696,s700,lo_FZP |
| s860 | 144 | bary_lo | CDZ | lo | 134869/1000000 | hi_ODF,s756,s684,lo_ODZ,lo_OCD,lo_CDF |
| s861 | 145 | bary_lo | CZR | lo | 110239/1000000 | hi_ODF,s756,s684,lo_ODZ,lo_OCR,lo_CDR,s624 |
| s880 | 147 | bary_hi | DQR | lo | 48171/500000 | s779,lo_YQR,lo_OQR,s780,s730,s761 |
| s894 | 149 | bary_lo | DFP | lo | 106327/1000000 | s227,s750,lo_HDP,s556,lo_HDF,lo_CDF |
| s912 | 150 | bary_lo | HYZ | lo | 77657/500000 | s229,s756,s657,s860,lo_HCY,s592,s783 |
| s915 | 151 | bary_hi | CZQ | hi | 186101/500000 | s229,s756,s657,s860,hi_CDQ,hi_CFQ |
| s917 | 152 | bary_hi | DFZ | hi | 427497/1000000 | s229,s756,s657,s860,s229 |
| s919 | 153 | bary_hi | DZQ | lo | 19003/125000 | s229,s756,s657,s860,lo_CDQ,s221 |
| s925 | 154 | bary_hi | OHP | lo | 432887/1000000 | s229,s894,s675,s750,s713,s714,s717 |
| s927 | 155 | bary_hi | OYP | lo | 192899/1000000 | s229,s894,s675,s750,s774,s664,lo_OFY |
| s932 | 157 | bary_hi | CDP | hi | 473253/1000000 | s229,s894,s675,s750,s229 |
| s937 | 158 | bary_hi | OHZ | lo | 228433/500000 | s932,s652,lo_CZP,s860,s713,s714,s925 |
| s938 | 159 | bary_hi | OFZ | lo | 68207/200000 | s932,s652,lo_CZP,s860,lo_OCF,s639,s641 |
| s939 | 160 | bary_hi | OYZ | lo | 115167/500000 | s932,s652,lo_CZP,s860,s774,s664,s927 |
| s946 | 164 | bary_hi | OYR | lo | 56513/200000 | hi_CDQ,s880,lo_CQR,lo_CDR,s774,s664,s733 |
| s947 | 165 | bary_hi | OZR | lo | 155591/1000000 | hi_CDQ,s880,lo_CQR,lo_CDR,s609,lo_ODZ,s586 |
| s977 | 170 | bary_hi | DQR | lo | 107697/1000000 | s915,lo_ZQR,lo_CQR,s861,lo_CDQ,s919 |
| s980 | 171 | bary_hi | OHP | lo | 457319/1000000 | s917,lo_FZP,s652,s894,s714,s717,s937 |
| s982 | 172 | bary_hi | OYP | lo | 208141/1000000 | s917,lo_FZP,s652,s894,s664,lo_OFY,s939 |
| s983 | 173 | bary_lo | HCP | lo | 344199/1000000 | s917,lo_FZP,s652,s894,s589,s100,s656 |
| s984 | 174 | bary_lo | HYP | lo | 162587/1000000 | s917,lo_FZP,s652,s894,s592,s783,s912 |
| s987 | 176 | bary_hi | CYP | lo | 120889/500000 | s917,lo_FZP,s652,s894,s840,s679,s841 |
| s993 | 0 | sum | OHC | lo | 347873/1000000 | lo_HCY,s774,lo_OHY |
| s997 | 3 | sum | OHD | lo | 459497/500000 | lo_HDP,s728,s980 |
| s999 | 3 | sub | ODP | hi | 449681/1000000 | hi_OHD,lo_HDP,s980 |
| s1000 | 4 | sum | OHF | lo | 71653/250000 | s783,lo_OFY,lo_OHY |
| s1001 | 5 | sum | OHZ | lo | 59831/125000 | s912,lo_OHY,s939 |
| s1002 | 5 | sub | OYZ | hi | 30971/100000 | s800,s912,lo_OHY |
| s1003 | 6 | sum | OHP | lo | 28983/62500 | s984,lo_OHY,s982 |
| s1007 | 7 | sum | ODF | lo | 188073/250000 | s756,lo_ODZ,s938 |
| s1010 | 8 | sum | ODQ | lo | 73337/200000 | s977,s634,lo_OQR |
| s1012 | 9 | sum | OYQ | lo | 93713/200000 | lo_OQR,s946,lo_YQR |
| s1013 | 10 | sum | OZQ | lo | 341591/1000000 | lo_OQR,s947,lo_ZQR |
| s1017 | 11 | sum | HCD | lo | 390087/500000 | s750,s983,lo_HDP |
| s1019 | 13 | sum | HDY | lo | 348587/1000000 | lo_DYP,lo_HDP,s984 |
| s1021 | 16 | sum | CDP | lo | 69749/200000 | s860,lo_CZP,s652 |
| s1023 | 17 | sum | CDQ | lo | 293697/1000000 | lo_CDR,lo_CQR,s977 |
| s1026 | 19 | sum | CZQ | lo | 296239/1000000 | lo_CQR,s861,lo_ZQR |
| s1029 | 20 | sum | DFZ | lo | 320203/1000000 | s894,s652,lo_FZP |
| s1034 | 23 | sumlo | OCD | lo | 106513/500000 | lo_OCQ,s997,s1010,s993,hi_OHQ |
| s1035 | 25 | sumlo | OCZ | lo | 10209/62500 | lo_OCQ,s1001,s993,s1013,hi_OHQ |
| s1037 | 26 | diffhi | OZP | hi | 56531/250000 | s999,s800,lo_ODZ,s1003,s997 |
| s1038 | 27 | sumlo | HCF | lo | 255959/1000000 | s1017,s1000,lo_HDF,s993,hi_OHD |
| s1041 | 28 | sumlo | OHC | lo | 357727/1000000 | s1017,lo_OHY,lo_HCY,s997,s716 |
| s1042 | 29 | diffhi | HCP | hi | 91733/200000 | s228,s819,lo_HFP,s1041,s1000 |
| s1045 | 30 | sumlo | HFY | lo | 54279/500000 | lo_HDF,lo_OHY,s1019,s1000,hi_OHD |
| s1049 | 33 | sumlo | HFZ | lo | 154619/1000000 | lo_HFP,s1001,s700,s1000,s819 |
| s1054 | 34 | sumlo | OCF | lo | 66767/200000 | lo_CDF,s1041,s1038,s1034,s227 |
| s1055 | 35 | sumlo | OCP | lo | 224729/1000000 | lo_CZP,s1041,s983,s1035,s804 |
| s1063 | 43 | sumlo | CDZ | lo | 146897/1000000 | s1017,lo_ODZ,s739,s1034,hi_OHD |
| s1084 | 50 | sumlo | OCY | lo | 9599/50000 | s840,lo_OHY,lo_HCY,s664,s716 |
| s1090 | 51 | sumlo | OZP | lo | 167199/1000000 | lo_CZP,s1001,s700,s1035,s804 |
| s1104 | 52 | sumlo | HZP | lo | 73603/500000 | lo_FZP,s1003,lo_HFP,s1090,s822 |
| s1105 | 52 | sumlo | OFP | lo | 1183/4000 | lo_FZP,s1003,lo_HFP,s1090,s768 |
| s1106 | 53 | sumlo | CFP | lo | 214061/1000000 | lo_CZP,s1105,lo_FZP,s1055,s1037 |
| s1108 | 54 | sumlo | DFP | lo | 22823/200000 | s1021,lo_HFP,s1106,lo_HDP,s1042 |
| s1110 | 55 | sumlo | FYP | lo | 132471/1000000 | lo_FZP,s984,lo_HFP,s849,s768 |
| s1111 | 56 | sumlo | DZP | lo | 35933/250000 | s1021,lo_FZP,lo_CZP,s1108,s827 |
| s1112 | 57 | sumlo | CFP | lo | 46781/200000 | s987,lo_FZP,lo_CZP,s1110,s575 |
| s1118 | 58 | balance_hi | CFZ | hi | 294231/1000000 | s229,s800,s1029,s1041,s1063,s1000,s997 |
| s1119 | 59 | balance_lo | OHP | lo | 232421/500000 | s1108,s1041,s1112,s997,s1021,s1000,s229 |
| s1120 | 59 | balance_hi | CFP | hi | 295097/1000000 | s229,s819,s1108,s1041,s1021,s1000,s997 |
| s1122 | 60 | balance_lo | DFZ | lo | 336753/1000000 | lo_FZP,s997,s1111,s1000,s1108,s1001,s819 |
| s1124 | 61 | balance_lo | HCP | lo | 351843/1000000 | s1038,s728,s1112,s997,lo_HFP,s1034,hi_ODF |
| s1125 | 62 | balance_lo | HCZ | lo | 332561/1000000 | lo_CZP,s997,s1104,s1034,s1124,lo_ODZ,s999 |
| s1129 | 63 | balance_lo | CFZ | lo | 49603/200000 | lo_FZP,s1034,lo_CZP,s1007,s1112,lo_ODZ,s999 |
| s1130 | 63 | balance_lo | ODP | lo | 47381/125000 | lo_FZP,s1034,lo_CZP,s1007,s1112,lo_ODZ,s1118 |
| s1133 | 64 | balance_lo | OFZ | lo | 379693/1000000 | s1125,s1105,lo_CZP,s1000,s1104,s1054,s1042 |
| s1138 | 66 | balance_lo | ODY | lo | 25319/50000 | s1017,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s1084,s228 |
| s1140 | 67 | balance_lo | HCF | lo | 270179/1000000 | s1129,lo_OHY,s1049,s1084,s1125,lo_OFY,s1002 |
| s1141 | 67 | balance_lo | OYZ | lo | 54691/200000 | s1129,lo_OHY,s1049,s1084,s1125,lo_OFY,s228 |
| s1144 | 68 | balance_lo | OYP | lo | 14773/62500 | s1112,lo_OHY,lo_HFP,s1084,s1124,lo_OFY,s228 |
| s1149 | 70 | balance_lo | HFZ | lo | 21317/125000 | lo_FZP,lo_OHY,s1104,lo_OFY,lo_HFP,s1141,s823 |
| s1151 | 71 | balance_lo | CFY | lo | 45491/200000 | s1140,s1141,s1045,s1035,lo_HCY,s1133,s800 |
| s1153 | 72 | balance_lo | FYZ | lo | 48481/250000 | s1045,s1090,s912,s1105,s1149,s1144,s819 |
| s1156 | 73 | balance_lo | CYZ | lo | 214869/1000000 | s1151,s1013,s1153,lo_OCQ,s1129,s1012,hi_OFQ |
| s1164 | 74 | balance_lo | OFZ | lo | 396489/1000000 | s1054,s739,s1129,s997,s1035,lo_HDF,s227 |
| s1172 | 76 | balance_lo | HDZ | lo | 353343/1000000 | s1129,lo_HDP,lo_FZP,s1017,lo_CZP,lo_HDF,s1120 |
| s1175 | 77 | balance_lo | OCD | lo | 111487/500000 | s1023,lo_OHY,s1010,lo_HCY,lo_OCQ,s1019,s786 |
| s1176 | 78 | balance_lo | OCF | lo | 362869/1000000 | s1129,lo_OHY,s1164,lo_HCY,s1035,s1045,s807 |
| s1178 | 79 | balance_lo | OCZ | lo | 175279/1000000 | s1026,lo_OHY,s1013,lo_HCY,lo_OCQ,s912,s786 |
| s1180 | 80 | balance_lo | HYZ | lo | 174733/1000000 | s1122,lo_HCY,s1129,s1019,s1063,s1045,s229 |
| s1183 | 81 | balance_lo | CDY | lo | 98633/200000 | s1175,s1180,s1138,s1125,s1084,s1172,s800 |
| s1187 | 82 | balance_lo | OFZ | lo | 80671/200000 | s1176,s1104,s1129,s1119,s1178,lo_HFP,s1042 |
| s1197 | 87 | balance_lo | CFY | lo | 118127/500000 | s1000,s1156,s1149,s1084,s1187,lo_HCY,s800 |
| s1210 | 91 | balance_lo | OFZ | lo | 106509/250000 | s1041,s1122,s1175,s1149,s997,s1129,s227 |
| s1212 | 92 | balance_lo | DFZ | lo | 352443/1000000 | s997,lo_FZP,lo_HDP,s1210,s1130,s1149,s819 |
| s1243 | 97 | balance_hi | DFY | hi | 91537/250000 | s229,s575,s1197,s1111,s1183,lo_FZP,lo_CZP |
| s1272 | 102 | linear | ODY | hi | 558413/1000000 | s1019,hi_OHD,lo_OHY |
| s1310 | 107 | linear | ODF | hi | 831561/1000000 | s1243,s1272,lo_OFY |
| s1314 | 108 | linear | ODF | lo | 871479/1000000 | s1212,lo_ODZ,s1210 |

## Conclusion

{"triangle":"ODF","lower":"s1314","upper":"s1310"}
