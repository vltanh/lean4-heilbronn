# Leaf rpmmpppmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":1}

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
| 32 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 33 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 34 | plu | ["OHDYZ","OYZ",-1] |
| 35 | plu | ["OHDPR","OPR",-1] |
| 36 | plu | ["OHFYP","OYP",-1] |
| 37 | plu | ["DOHYZ","DYZ",1] |
| 38 | plu | ["FOHYZ","FYZ",1] |
| 39 | plu | ["FOHYP","FYP",1] |
| 40 | plu | ["YODPR","YPR",-1] |
| 41 | plu | ["YOZQR","YZR",1] |
| 42 | plu | ["ZOHYQ","ZHQ",-1] |
| 43 | plu | ["ZOHPQ","ZPQ",-1] |
| 44 | plu | ["ZOCFP","ZCF",-1] |
| 45 | plu | ["ZOFYQ","ZFQ",-1] |
| 46 | plu | ["ZHCYR","ZHR",-1] |
| 47 | plu | ["ZHCPR","ZPR",-1] |
| 48 | plu | ["ZHDFR","ZFR",-1] |
| 49 | plu | ["POCFZ","PCF",-1] |
| 50 | plu | ["QOYZR","QZR",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Z"] |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
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
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
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
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 3 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 4 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 5 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 6 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 7 | ["fan","HCQ","CZQ","HCZ","HZQ"] | ["fan","HCQ","Z"] |
| 8 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 9 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 10 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 11 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 12 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 13 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 14 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 15 | ["fan","CPQ","CZP","CZQ","ZPQ"] | ["fan","CPQ","Z"] |
| 16 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 17 | ["fan","DYQ","DQR","DYR","YQR"] | ["fan","DYQ","R"] |
| 18 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 19 | ["plu","OCD","OHQ","OCQ","OHD","ODQ","OHC"] | ["plu","OHCDQ"] |
| 20 | ["plu","OCY","OHQ","OCQ","OHY","OHC","OYQ"] | ["plu","OHCYQ"] |
| 21 | ["plu","OFZ","OHD","ODF","OHZ","ODZ","OHF"] | ["plu","OHDFZ"] |
| 22 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 23 | ["plu","HFY","OHD","HDF","OHY","HDY","OHF"] | ["plu","HODFY"] |
| 24 | ["plu","HFZ","OHD","HDF","OHZ","HDZ","OHF"] | ["plu","HODFZ"] |
| 25 | ["plu","HFQ","OHD","HDF","OHQ","HDQ","OHF"] | ["plu","HODFQ"] |
| 26 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 27 | ["plu","HCD","OCP","CDP","OHC","HCP","OCD"] | ["plu","COHDP"] |
| 28 | ["plu","CDF","OCZ","CDZ","OCF","CFZ","OCD"] | ["plu","CODFZ"] |
| 29 | ["plu","CDF","OCP","CDP","OCF","CFP","OCD"] | ["plu","CODFP"] |
| 30 | ["plu","CDP","OCZ","CDZ","OCP","CZP","OCD"] | ["plu","CODZP"] |
| 31 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 32 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 33 | ["plu","CDQ","ODR","CDR","ODQ","DQR","OCD"] | ["plu","DOCQR"] |
| 34 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 35 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 36 | ["plu","CDQ","DFR","CDF","DQR","CDR","DFQ"] | ["plu","DCFQR"] |
| 37 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 38 | ["plu","HCF","OFZ","CFZ","OHF","HFZ","OCF"] | ["plu","FOHCZ"] |
| 39 | ["plu","HCF","OFP","CFP","OHF","HFP","OCF"] | ["plu","FOHCP"] |
| 40 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 41 | ["plu","HDY","OCY","CDY","OHY","HCY","ODY"] | ["plu","YOHCD"] |
| 42 | ["plu","HFY","ODY","DFY","OHY","HDY","OFY"] | ["plu","YOHDF"] |
| 43 | ["plu","DYZ","HYQ","DYQ","HYZ","HDY","YZQ"] | ["plu","YHDZQ"] |
| 44 | ["plu","DZP","HCZ","CDZ","HZP","CZP","HDZ"] | ["plu","ZHCDP"] |
| 45 | ["plu","DYZ","HZQ","DZQ","HYZ","HDZ","YZQ"] | ["plu","ZHDYQ"] |
| 46 | ["plu","CFZ","DZP","CDZ","FZP","CZP","DFZ"] | ["plu","ZCDFP"] |
| 47 | ["plu","CZQ","DZP","CDZ","ZPQ","CZP","DZQ"] | ["plu","ZCDPQ"] |
| 48 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 49 | ["plu","CFQ","ODQ","CDQ","OFQ","DFQ","OCQ"] | ["plu","QOCDF"] |
| 50 | ["plu","CYQ","ODQ","CDQ","OYQ","DYQ","OCQ"] | ["plu","QOCDY"] |
| 51 | ["plu","CQR","DZQ","CDQ","ZQR","CZQ","DQR"] | ["plu","QCDZR"] |
| 52 | ["balance",[[1,"HDZ","OFQ"],[-1,"DZQ","OHF"],[-1,"HZQ","ODF"],[-1,"HDQ","OFZ"]]] | ["six","OFHDZQ"] |
| 53 | ["balance",[[-1,"DYZ","OFQ"],[1,"YZQ","ODF"],[1,"DZQ","OFY"],[1,"DYQ","OFZ"]]] | ["six","OFDYZQ"] |
| 54 | ["balance",[[-1,"HCD","OFY"],[-1,"CDF","OHY"],[-1,"HDF","OCY"],[1,"HCF","ODY"]]] | ["six","OYHCDF"] |
| 55 | ["balance",[[-1,"HCF","OYZ"],[1,"CFZ","OHY"],[1,"HFZ","OCY"],[1,"HCZ","OFY"]]] | ["six","OYHCFZ"] |
| 56 | ["balance",[[-1,"HCF","OYP"],[1,"CFP","OHY"],[1,"HFP","OCY"],[1,"HCP","OFY"]]] | ["six","OYHCFP"] |
| 57 | ["balance",[[-1,"HDF","OYZ"],[-1,"DFZ","OHY"],[1,"HFZ","ODY"],[-1,"HDZ","OFY"]]] | ["six","OYHDFZ"] |
| 58 | ["balance",[[1,"HDZ","OYQ"],[-1,"DZQ","OHY"],[-1,"HZQ","ODY"],[-1,"HDQ","OYZ"]]] | ["six","OYHDZQ"] |
| 59 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 60 | ["balance",[[1,"CDF","OZQ"],[1,"DFZ","OCQ"],[-1,"CFZ","ODQ"],[-1,"CDZ","OFQ"]]] | ["six","OQCDFZ"] |
| 61 | ["balance",[[1,"CDZ","OPQ"],[-1,"DZP","OCQ"],[1,"CZP","ODQ"],[-1,"CDP","OZQ"]]] | ["six","OQCDZP"] |
| 62 | ["balance",[[1,"ODF","HCQ"],[1,"DFQ","OHC"],[-1,"OFQ","HCD"],[1,"ODQ","HCF"]]] | ["six","HCODFQ"] |
| 63 | ["balance",[[-1,"OYZ","HCQ"],[1,"YZQ","OHC"],[1,"OZQ","HCY"],[1,"OYQ","HCZ"]]] | ["six","HCOYZQ"] |
| 64 | ["balance",[[1,"DYZ","HCQ"],[-1,"YZQ","HCD"],[-1,"DZQ","HCY"],[-1,"DYQ","HCZ"]]] | ["six","HCDYZQ"] |
| 65 | ["balance",[[-1,"OCF","HDZ"],[-1,"CFZ","OHD"],[1,"OFZ","HCD"],[-1,"OCZ","HDF"]]] | ["six","HDOCFZ"] |
| 66 | ["balance",[[1,"OYZ","HDQ"],[1,"YZQ","OHD"],[1,"OZQ","HDY"],[-1,"OYQ","HDZ"]]] | ["six","HDOYZQ"] |
| 67 | ["balance",[[1,"OCD","HFY"],[1,"CDF","OHY"],[1,"ODF","HCY"],[-1,"OCF","HDY"]]] | ["six","HYOCDF"] |
| 68 | ["balance",[[1,"CDF","HYZ"],[-1,"DFZ","HCY"],[-1,"CFZ","HDY"],[-1,"CDZ","HFY"]]] | ["six","HYCDFZ"] |
| 69 | ["balance",[[1,"ODF","HZQ"],[1,"DFQ","OHZ"],[-1,"OFQ","HDZ"],[1,"ODQ","HFZ"]]] | ["six","HZODFQ"] |
| 70 | ["balance",[[1,"ODY","HZQ"],[1,"DYQ","OHZ"],[-1,"OYQ","HDZ"],[-1,"ODQ","HYZ"]]] | ["six","HZODYQ"] |
| 71 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 72 | ["balance",[[-1,"ODF","CYQ"],[-1,"DFQ","OCY"],[1,"OFQ","CDY"],[-1,"ODQ","CFY"]]] | ["six","CYODFQ"] |
| 73 | ["balance",[[-1,"OHD","CFZ"],[-1,"HDF","OCZ"],[1,"ODF","HCZ"],[-1,"OHF","CDZ"]]] | ["six","CZOHDF"] |
| 74 | ["balance",[[1,"OHF","CZQ"],[1,"HFQ","OCZ"],[-1,"OFQ","HCZ"],[1,"OHQ","CFZ"]]] | ["six","CZOHFQ"] |
| 75 | ["balance",[[1,"ODY","CZP"],[1,"DYP","OCZ"],[1,"OYP","CDZ"],[-1,"ODP","CYZ"]]] | ["six","CZODYP"] |
| 76 | ["balance",[[-1,"OHD","CFP"],[-1,"HDF","OCP"],[1,"ODF","HCP"],[-1,"OHF","CDP"]]] | ["six","CPOHDF"] |
| 77 | ["balance",[[1,"OHF","CPQ"],[1,"HFQ","OCP"],[-1,"OFQ","HCP"],[1,"OHQ","CFP"]]] | ["six","CPOHFQ"] |
| 78 | ["balance",[[-1,"OHC","DFY"],[-1,"HCD","OFY"],[-1,"OCD","HFY"],[1,"OHD","CFY"]]] | ["six","FYOHCD"] |
| 79 | ["balance",[[-1,"OHC","DFP"],[1,"HCD","OFP"],[-1,"OCD","HFP"],[-1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 80 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 81 | ["balance",[[-1,"OHD","FYZ"],[1,"HDF","OYZ"],[1,"ODF","HYZ"],[1,"OHF","DYZ"]]] | ["six","YZOHDF"] |
| 82 | ["balance",[[1,"ODF","YZQ"],[1,"DFQ","OYZ"],[-1,"OFQ","DYZ"],[1,"ODQ","FYZ"]]] | ["six","YZODFQ"] |
| 83 | ["balance",[[1,"OHD","YPQ"],[-1,"HDQ","OYP"],[-1,"ODQ","HYP"],[-1,"OHQ","DYP"]]] | ["six","YPOHDQ"] |
| 84 | ["balance",[[1,"OCD","FYP"],[1,"CDF","OYP"],[-1,"ODF","CYP"],[1,"OCF","DYP"]]] | ["six","YPOCDF"] |
| 85 | ["balance",[[-1,"ODF","YPQ"],[1,"DFQ","OYP"],[1,"OFQ","DYP"],[1,"ODQ","FYP"]]] | ["six","YPODFQ"] |
| 86 | ["balance",[[1,"CDZ","YPQ"],[-1,"DZP","CYQ"],[1,"CZP","DYQ"],[1,"CDP","YZQ"]]] | ["six","YQCDZP"] |
| 87 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 88 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 89 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 90 | ["balance",[[1,"CDF","YZQ"],[1,"DFY","CZQ"],[1,"CFY","DZQ"],[-1,"CDY","FZQ"]]] | ["six","ZQCDFY"] |
| 91 | ["balance",[[1,"CDY","ZPQ"],[-1,"DYP","CZQ"],[-1,"CYP","DZQ"],[-1,"CDP","YZQ"]]] | ["six","ZQCDYP"] |
| 92 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 93 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 94 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 95 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 96 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 97 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 98 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 99 | ["linear",{"ODY":-1,"OYP":1,"ODP":1,"DYP":-1},"0"] | ["affine_quad","ODYP",-1] |
| 100 | ["linear",{"ODY":-1,"OYQ":1,"ODQ":-1,"DYQ":1},"0"] | ["affine_quad","ODYQ",-1] |
| 101 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 102 | ["linear",{"HCD":1,"HDQ":-1,"HCQ":-1,"CDQ":1},"0"] | ["affine_quad","HCDQ",1] |
| 103 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 104 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 105 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 106 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 107 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 108 | ["linear",{"CZP":-1,"CPQ":1,"CZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","CZPQ",-1] |
| 109 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 110 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 111 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 112 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 113 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 114 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 115 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 116 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 117 | ["bary",["OYZ",1],[null,["OHZ",1],["ODZ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OZ"] |
| 118 | ["bary",["OYQ",1],[null,["OHQ",1],["ODQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OQ"] |
| 119 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 120 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CD"] |
| 121 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CQ"] |
| 122 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DQ"] |
| 123 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CD"] |
| 124 | ["bary",["CYZ",1],[["OCZ",1],["HCZ",1],["CFZ",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CZ"] |
| 125 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DF"] |
| 126 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["DFQ",-1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DQ"] |
| 127 | ["bary",["DYR",-1],[["ODR",-1],["HDR",-1],["DFR",-1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DR"] |
| 128 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["FZP",-1]],"OHZ",["HYZ","OYZ","OHY"]] | ["bary","OHZ","Y","FP"] |
| 129 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","CD"] |
| 130 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 131 | ["bary",["HFZ",-1],[["OHF",-1],["HDF",-1],["HFQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","HF"] |
| 132 | ["bary",["DYZ",1],[["ODY",1],null,["DYQ",1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","DY"] |
| 133 | ["bary",["HDZ",-1],[["OHD",-1],["HDY",-1],["HDQ",-1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","HD"] |
| 134 | ["bary",["DFZ",1],[["ODF",1],["DFY",1],["DFQ",1]],"OYQ",["YZQ","OZQ","OYZ"]] | ["bary","OYQ","Z","DF"] |
| 135 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 136 | ["bary",["OYP",-1],[["OHY",1],["OCY",-1],["ODY",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OY"] |
| 137 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 138 | ["bary",["DPQ",-1],[["HDQ",-1],["CDQ",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DQ"] |
| 139 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OC"] |
| 140 | ["bary",["OPQ",1],[["OHQ",1],["ODQ",1],["OYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OQ"] |
| 141 | ["bary",["CPQ",1],[["HCQ",1],["CDQ",1],["CYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CQ"] |
| 142 | ["bary",["DZP",-1],[["HDZ",-1],null,["DYZ",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DZ"] |
| 143 | ["bary",["ZPQ",1],[["HZQ",1],["DZQ",1],["YZQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZQ"] |
| 144 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CYZ",-1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","CY"] |
| 145 | ["bary",["DFZ",1],[["CDF",1],null,null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","DF"] |
| 146 | ["bary",["OHP",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OH"] |
| 147 | ["bary",["OYP",-1],[["OCY",-1],["ODY",-1],["OFY",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OY"] |
| 148 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HC"] |
| 149 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 150 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 151 | ["bary",["CYP",-1],[null,["CDY",-1],["CFY",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CY"] |
| 152 | ["bary",["CPQ",1],[null,["CDQ",1],["CFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CQ"] |
| 153 | ["bary",["DFP",1],[["CDF",1],null,null],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DF"] |
| 154 | ["bary",["DPQ",-1],[["CDQ",-1],null,["DFQ",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","DQ"] |
| 155 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 156 | ["bary",["OYZ",-1],[["OCY",-1],["ODY",-1],["OYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OY"] |
| 157 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 158 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 159 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 160 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 161 | ["bary",["CYZ",-1],[null,["CDY",-1],["CYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CY"] |
| 162 | ["bary",["CZQ",1],[null,["CDQ",1],["CPQ",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CQ"] |
| 163 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 164 | ["bary",["DYZ",1],[["CDY",1],null,["DYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DY"] |
| 165 | ["bary",["DZQ",-1],[["CDQ",-1],null,["DPQ",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DQ"] |
| 166 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPQ",1]],"CYQ",["YZQ","CZQ","CYZ"]] | ["bary","CYQ","Z","DP"] |
| 167 | ["bary",["OYZ",-1],[["OCY",-1],["OYP",-1],["OYQ",-1]],"CPQ",["ZPQ","CZQ","CZP"]] | ["bary","CPQ","Z","OY"] |
| 168 | ["bary",["ZPQ",1],[["DZQ",1],["FZQ",1],["YZQ",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","ZQ"] |
| 169 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 170 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 171 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 172 | ["bary",["HZP",1],[["HDZ",1],["HFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HZ"] |
| 173 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 174 | ["bary",["CQR",1],[["CDQ",1],["CZQ",1],null],"DZQ",["ZQR","DQR","DZR"]] | ["bary","DZQ","R","CQ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s2 | 1 | sub | ODY | hi | 157/250 | hi_OHD,lo_HDY,lo_OHY |
| s39 | 9 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s40 | 10 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s77 | 29 | sumlo | OCP | lo | 58327/500000 | lo_CDP,lo_OCF,lo_CFP,lo_OCD,hi_CDF |
| s85 | 31 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s40 |
| s89 | 32 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s91 | 33 | sumlo | ODR | lo | 4309/20000 | lo_CDR,lo_ODQ,lo_DQR,lo_OCD,hi_CDQ |
| s96 | 35 | sumlo | HDR | lo | 192191/1000000 | lo_CDR,lo_HDQ,lo_DQR,lo_HCD,hi_CDQ |
| s97 | 36 | sumlo | DFR | lo | 187789/1000000 | lo_CDF,lo_DQR,lo_CDR,s89,hi_CDQ |
| s99 | 37 | sumlo | HCF | lo | 117361/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s105 | 40 | sumlo | CFP | lo | 105463/1000000 | lo_CDF,lo_FZP,s85,lo_DFP,s39 |
| s109 | 48 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s112 | 49 | sumhi | CFQ | hi | 392843/500000 | hi_CDQ,hi_OFQ,hi_DFQ,hi_OCQ,lo_ODQ |
| s113 | 50 | sumhi | CYQ | hi | 120911/200000 | hi_CDQ,hi_OYQ,hi_DYQ,hi_OCQ,lo_ODQ |
| s122 | 54 | balance_lo | ODY | lo | 108451/500000 | lo_HCD,lo_OFY,lo_CDF,lo_OHY,lo_HDF,lo_OCY,hi_HCF |
| s127 | 59 | balance_lo | OFQ | lo | 670581/1000000 | lo_CDF,lo_OHQ,lo_HDF,lo_OCQ,s99,lo_ODQ,hi_HCD |
| s152 | 73 | balance_lo | HCZ | lo | 3567/31250 | lo_OHD,s85,lo_HDF,lo_OCZ,lo_OHF,lo_CDZ,hi_ODF |
| s153 | 76 | balance_lo | HCP | lo | 3461/20000 | lo_OHD,s105,lo_HDF,s77,lo_OHF,lo_CDP,hi_ODF |
| s157 | 78 | balance_lo | CFY | lo | 16833/100000 | lo_OHC,lo_DFY,lo_HCD,lo_OFY,lo_OCD,lo_HFY,hi_OHD |
| s162 | 79 | balance_lo | OFP | lo | 128417/1000000 | lo_OHC,lo_DFP,lo_OCD,lo_HFP,lo_OHD,s105,hi_HCD |
| s168 | 85 | balance_lo | YPQ | lo | 7549/50000 | s89,lo_OYP,s127,lo_DYP,lo_ODQ,lo_FYP,hi_ODF |
| s169 | 86 | balance_lo | DZP | lo | 109063/1000000 | lo_CDZ,s168,lo_CZP,lo_DYQ,lo_CDP,lo_YZQ,s113 |
| s170 | 87 | balance_lo | OZP | lo | 62069/500000 | lo_OHC,s169,lo_OCD,lo_HZP,lo_OHD,lo_CZP,hi_HCD |
| s171 | 88 | balance_lo | HZP | lo | 14233/125000 | lo_OHD,lo_FZP,lo_HDF,s170,lo_OHF,s169,hi_ODF |
| s174 | 89 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s175 | 90 | balance_lo | FZQ | lo | 45837/250000 | lo_CDF,lo_YZQ,lo_DFY,lo_CZQ,s157,lo_DZQ,hi_CDY |
| s179 | 93 | linear | HDY | hi | 345049/500000 | s122,hi_OHD,lo_OHY |
| s182 | 94 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s188 | 97 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s202 | 103 | linear | HCQ | lo | 181229/500000 | lo_CZQ,s152,s174 |
| s230 | 110 | quad | CDP | lo | 81/250 | hi_CDQ |
| s234 | 111 | linear | OHC | lo | 367/1000 | s188 |
| s235 | 112 | linear | HCD | hi | 907/1000 | lo_HDF |
| s236 | 113 | linear | HCF | hi | 153/500 | lo_CDF |
| s237 | 113 | linear | CDF | hi | 382639/500000 | s99 |
| s240 | 114 | bary_hi | CDY | hi | 725679/1000000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,hi_OCD,s235 |
| s247 | 115 | bary_hi | FYP | lo | 25003/250000 | hi_OHC,lo_HCY,lo_OCY,lo_OHY,s162,lo_HFP,s105 |
| s251 | 116 | bary_lo | OCY | lo | 56867/500000 | hi_OHD,lo_HDY,s122,lo_OHY,s234,s188 |
| s260 | 121 | bary_hi | CYQ | hi | 601447/1000000 | hi_OHD,lo_HDY,s122,lo_OHY,hi_OCQ,s109,hi_CDQ |
| s287 | 123 | bary_lo | CDY | lo | 231391/500000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,s188,lo_HCD,lo_CDF |
| s288 | 124 | bary_lo | CYZ | lo | 24427/250000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,lo_OCZ,s152,s85 |
| s289 | 125 | bary_hi | DFY | hi | 353133/500000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,hi_ODF,hi_HDF |
| s290 | 127 | bary_hi | DYR | lo | 48121/250000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,s91,s96,s97 |
| s310 | 130 | bary_lo | OHZ | hi | 633157/1000000 | hi_ODQ,lo_DZQ,lo_OZQ,lo_ODZ,hi_OHD,hi_OHQ |
| s344 | 133 | bary_hi | HDZ | lo | 349273/1000000 | hi_OYQ,lo_YZQ,lo_OZQ,lo_OYZ,lo_OHD,lo_HDY,s182 |
| s346 | 135 | bary_lo | HDZ | hi | 43741/62500 | s235,lo_CDZ,s344,s152,s235 |
| s366 | 136 | bary_lo | OYP | hi | 35209/100000 | s235,s230,lo_HDP,s153,lo_OHY,hi_OCY,s2 |
| s374 | 137 | bary_lo | DFP | lo | 104381/1000000 | s235,s230,lo_HDP,s153,lo_HDF,lo_CDF |
| s376 | 138 | bary_hi | DPQ | lo | 167209/1000000 | s235,s230,lo_HDP,s153,s182,lo_CDQ |
| s387 | 141 | bary_lo | CPQ | lo | 290247/1000000 | s179,lo_DYP,lo_HYP,lo_HDP,s202,lo_CDQ,lo_CYQ |
| s388 | 143 | bary_lo | ZPQ | lo | 126463/1000000 | s179,lo_DYP,lo_HYP,lo_HDP,s174,lo_DZQ,lo_YZQ |
| s390 | 144 | bary_hi | CYP | lo | 153787/1000000 | s346,s169,s171,lo_HDP,lo_HCY,s287,s288 |
| s414 | 146 | bary_hi | OHP | lo | 174097/500000 | s237,s374,s105,s230,s234,lo_OHD,lo_OHF |
| s416 | 147 | bary_hi | OYP | lo | 56451/500000 | s237,s374,s105,s230,s251,s122,lo_OFY |
| s420 | 148 | bary_lo | HCP | lo | 39003/200000 | s237,s374,s105,s230,lo_HCD,s99 |
| s423 | 149 | bary_lo | HYP | lo | 14829/125000 | s237,s374,s105,s230,lo_HCY,lo_HDY,lo_HFY |
| s424 | 150 | bary_hi | CDP | hi | 277717/500000 | s237,s374,s105,s230,s237 |
| s427 | 152 | bary_hi | CPQ | hi | 628127/1000000 | s237,s374,s105,s230,hi_CDQ,s112 |
| s429 | 153 | bary_hi | DFP | hi | 67163/200000 | s237,s374,s105,s230,s237 |
| s436 | 155 | bary_hi | OHZ | lo | 409787/1000000 | s424,s169,lo_CZP,lo_CDZ,s234,lo_OHD,s414 |
| s440 | 157 | bary_lo | HCZ | lo | 148853/1000000 | s424,s169,lo_CZP,lo_CDZ,lo_HCD,s420 |
| s441 | 159 | bary_lo | HYZ | lo | 64217/500000 | s424,s169,lo_CZP,lo_CDZ,lo_HCY,lo_HDY,s423 |
| s444 | 160 | bary_hi | CFZ | lo | 133859/1000000 | s424,s169,lo_CZP,lo_CDZ,lo_CDF,s105 |
| s445 | 161 | bary_hi | CYZ | lo | 25809/250000 | s424,s169,lo_CZP,lo_CDZ,s287,s390 |
| s446 | 162 | bary_lo | CZQ | lo | 5957/62500 | s424,s169,lo_CZP,lo_CDZ,lo_CDQ,s387 |
| s447 | 163 | bary_hi | DFZ | hi | 113047/200000 | s424,s169,lo_CZP,lo_CDZ,s237,s429 |
| s497 | 166 | bary_lo | DZP | lo | 8841/62500 | s260,lo_YZQ,s446,s445,s230,lo_DYP,s376 |
| s501 | 167 | bary_hi | OYZ | lo | 137661/1000000 | s427,s388,s446,lo_CZP,s251,s416,lo_OYQ |
| s510 | 168 | bary_lo | ZPQ | lo | 26247/200000 | s289,s247,lo_DYP,s374,lo_DZQ,s175,lo_YZQ |
| s517 | 170 | bary_lo | HCP | lo | 260037/1000000 | s447,lo_FZP,s497,s374,lo_HCD,s99,s440 |
| s518 | 171 | bary_lo | HYP | lo | 65073/500000 | s447,lo_FZP,s497,s374,lo_HDY,lo_HFY,s441 |
| s519 | 173 | bary_hi | CFP | lo | 27781/200000 | s447,lo_FZP,s497,s374,lo_CDF,s444 |
| s557 | 5 | sum | OYQ | lo | 323661/1000000 | s501,lo_OZQ,lo_YZQ |
| s562 | 8 | sum | HDY | lo | 158073/500000 | lo_DYP,lo_HDP,s518 |
| s564 | 9 | sub | DFZ | hi | 538419/1000000 | s237,lo_CDZ,s444 |
| s565 | 10 | sub | CDP | hi | 65249/125000 | s237,s519,s374 |
| s567 | 12 | sum | CDP | lo | 10233/31250 | lo_CDZ,lo_CZP,s497 |
| s569 | 12 | sub | DZP | hi | 41999/125000 | s565,lo_CDZ,lo_CZP |
| s578 | 17 | sum | DYQ | lo | 94621/250000 | lo_DQR,s290,lo_YQR |
| s580 | 20 | sumlo | OCY | lo | 15929/125000 | lo_OCQ,lo_OHY,s234,s557,hi_OHQ |
| s587 | 23 | sumlo | HFY | lo | 96853/1000000 | lo_HDF,lo_OHY,s562,lo_OHF,hi_OHD |
| s590 | 26 | sumlo | OCF | lo | 375789/1000000 | lo_CDF,s234,s99,s188,s235 |
| s598 | 31 | sumlo | CFZ | lo | 148393/1000000 | lo_CDF,lo_CZP,lo_CDZ,s519,s565 |
| s604 | 34 | sumlo | DFP | lo | 20947/200000 | lo_CDF,lo_HDP,s567,lo_HDF,s235 |
| s607 | 37 | sumlo | HCF | lo | 30543/125000 | lo_CDF,lo_OHF,lo_HDF,s590,hi_ODF |
| s608 | 37 | sumlo | ODF | lo | 29879/40000 | lo_CDF,lo_OHF,lo_HDF,s590,s236 |
| s609 | 37 | diffhi | OHF | hi | 362107/1000000 | s236,hi_ODF,lo_HDF,s590,lo_CDF |
| s619 | 40 | sumlo | CFP | lo | 148739/1000000 | lo_CDF,lo_FZP,s598,s604,s564 |
| s621 | 47 | sumlo | CZQ | lo | 113549/1000000 | lo_CDZ,s510,lo_CZP,lo_DZQ,s569 |
| s629 | 54 | balance_lo | ODY | lo | 115143/250000 | lo_HCD,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s580,s236 |
| s632 | 56 | balance_lo | OYP | lo | 32593/200000 | s619,lo_OHY,lo_HFP,s580,s517,lo_OFY,s236 |
| s654 | 80 | balance_lo | FYP | lo | 22007/200000 | s287,lo_HFP,s562,s619,lo_HCY,s604,s235 |
| s661 | 83 | balance_lo | YPQ | lo | 218093/1000000 | s182,s632,lo_ODQ,s518,lo_OHQ,lo_DYP,hi_OHD |
| s662 | 84 | balance_lo | CYP | lo | 201429/1000000 | s188,s654,lo_CDF,s632,s590,lo_DYP,hi_ODF |
| s663 | 86 | balance_lo | DZP | lo | 893/6250 | lo_CDZ,s661,lo_CZP,s578,s567,lo_YZQ,s260 |
| s672 | 89 | balance_lo | HZQ | lo | 174163/1000000 | lo_HCD,lo_YZQ,s562,s621,lo_HCY,lo_DZQ,s240 |
| s674 | 91 | balance_lo | ZPQ | lo | 3349/25000 | lo_DYP,s621,s662,lo_DZQ,s567,lo_YZQ,s240 |
| s678 | 93 | linear | OHD | lo | 434859/500000 | s562,s629,lo_OHY |
| s679 | 93 | linear | ODY | hi | 295427/500000 | s562,hi_OHD,lo_OHY |
| s680 | 93 | linear | HDY | hi | 111607/250000 | s629,hi_OHD,lo_OHY |
| s681 | 94 | linear | OHQ | lo | 788759/1000000 | hi_HDQ,lo_ODQ,s678 |
| s682 | 94 | linear | HDQ | lo | 281859/500000 | lo_ODQ,s678,hi_OHQ |
| s683 | 95 | linear | OHF | lo | 282853/1000000 | s587,lo_OFY,lo_OHY |
| s686 | 96 | linear | OHP | lo | 386111/1000000 | s518,lo_OHY,s632 |
| s693 | 98 | linear | DFQ | lo | 90919/200000 | s608,lo_ODQ,hi_OFQ |
| s694 | 99 | linear | ODP | lo | 100741/500000 | lo_DYP,s629,s366 |
| s695 | 100 | linear | OYQ | lo | 464759/1000000 | hi_DYQ,lo_ODQ,s629 |
| s703 | 102 | linear | HCQ | hi | 381641/500000 | hi_CDQ,s235,s682 |
| s721 | 106 | linear | CDP | lo | 4111/12500 | lo_CDZ,lo_CZP,s663 |
| s729 | 108 | linear | CPQ | lo | 340509/1000000 | lo_CZP,s621,s674 |
| s730 | 109 | linear | DFY | lo | 30777/100000 | s604,lo_DYP,s654 |
| s734 | 113 | linear | CDF | hi | 94457/125000 | s607 |
| s743 | 116 | bary_lo | OCY | lo | 5079/25000 | hi_OHD,s562,s629,lo_OHY,s234,s188 |
| s746 | 117 | bary_lo | OYZ | lo | 39477/200000 | hi_OHD,s562,s629,lo_OHY,s436,lo_ODZ |
| s749 | 118 | bary_hi | OYQ | hi | 132317/200000 | hi_OHD,s562,s629,lo_OHY,hi_OHQ,hi_ODQ |
| s752 | 119 | bary_hi | HFY | lo | 98071/1000000 | hi_OHD,s562,s629,lo_OHY,s683,lo_HDF |
| s756 | 120 | bary_hi | CDY | hi | 179497/250000 | hi_OHD,s562,s629,lo_OHY,hi_OCD,s235 |
| s759 | 121 | bary_hi | CYQ | hi | 137213/250000 | hi_OHD,s562,s629,lo_OHY,hi_OCQ,s703,hi_CDQ |
| s774 | 122 | bary_lo | DPQ | hi | 237199/500000 | hi_OHD,lo_HDP,s694,s686,hi_ODQ,hi_HDQ |
| s779 | 123 | bary_lo | CDY | lo | 267483/500000 | s609,s752,lo_OFY,lo_OHY,s188,lo_HCD,lo_CDF |
| s782 | 126 | bary_hi | DYQ | lo | 27373/50000 | s609,s752,lo_OFY,lo_OHY,lo_ODQ,s682,s693 |
| s798 | 132 | bary_lo | DYZ | lo | 235901/1000000 | hi_ODQ,lo_DZQ,lo_OZQ,lo_ODZ,s629,s782 |
| s810 | 133 | bary_hi | HDZ | lo | 18713/40000 | s749,lo_YZQ,lo_OZQ,s746,s678,s562,s682 |
| s811 | 134 | bary_lo | DFZ | lo | 82663/200000 | s749,lo_YZQ,lo_OZQ,s746,s608,s730,s693 |
| s829 | 137 | bary_lo | DFP | lo | 104881/1000000 | s235,s721,lo_HDP,s517,lo_HDF,lo_CDF |
| s836 | 139 | bary_lo | OCP | lo | 57011/200000 | s680,lo_DYP,s518,lo_HDP,s234,s188,s743 |
| s839 | 140 | bary_lo | OPQ | lo | 149771/250000 | s680,lo_DYP,s518,lo_HDP,s681,lo_ODQ,s695 |
| s841 | 142 | bary_hi | DZP | lo | 733/5000 | s680,lo_DYP,s518,lo_HDP,s810,s798 |
| s844 | 143 | bary_lo | ZPQ | lo | 164131/1000000 | s680,lo_DYP,s518,lo_HDP,s672,lo_DZQ,lo_YZQ |
| s870 | 145 | bary_hi | DFZ | hi | 514263/1000000 | s734,s811,s598,lo_CDZ,s734 |
| s879 | 146 | bary_hi | OHP | lo | 410047/1000000 | s734,s829,s619,s721,s234,s678,s683 |
| s881 | 147 | bary_hi | OYP | lo | 1129/6250 | s734,s829,s619,s721,s743,s629,lo_OFY |
| s885 | 149 | bary_lo | HYP | lo | 139129/1000000 | s734,s829,s619,s721,lo_HCY,s562,s752 |
| s886 | 150 | bary_hi | CDP | hi | 125509/250000 | s734,s829,s619,s721,s734 |
| s891 | 154 | bary_hi | DPQ | lo | 118287/500000 | s734,s829,s619,s721,lo_CDQ,s693 |
| s897 | 155 | bary_hi | OHZ | lo | 4681/10000 | s886,s841,lo_CZP,lo_CDZ,s234,s678,s879 |
| s900 | 156 | bary_hi | OYZ | lo | 7471/31250 | s886,s841,lo_CZP,lo_CDZ,s743,s629,s881 |
| s903 | 157 | bary_lo | HCZ | lo | 176731/1000000 | s886,s841,lo_CZP,lo_CDZ,lo_HCD,s517 |
| s904 | 159 | bary_lo | HYZ | lo | 71441/500000 | s886,s841,lo_CZP,lo_CDZ,lo_HCY,s562,s885 |
| s906 | 160 | bary_hi | CFZ | lo | 156113/1000000 | s886,s841,lo_CZP,lo_CDZ,lo_CDF,s619 |
| s907 | 161 | bary_hi | CYZ | lo | 136413/1000000 | s886,s841,lo_CZP,lo_CDZ,s779,s662 |
| s908 | 162 | bary_lo | CZQ | lo | 114761/1000000 | s886,s841,lo_CZP,lo_CDZ,lo_CDQ,s729 |
| s909 | 164 | bary_hi | DYZ | hi | 6793/15625 | s886,s841,lo_CZP,lo_CDZ,s756,lo_DYP |
| s911 | 165 | bary_lo | DZQ | hi | 185317/500000 | s886,s841,lo_CZP,lo_CDZ,hi_CDQ,s774 |
| s944 | 166 | bary_lo | DZP | lo | 42163/250000 | s759,lo_YZQ,s908,s907,s721,lo_DYP,s891 |
| s947 | 169 | bary_hi | OHP | lo | 213381/500000 | s870,lo_FZP,s944,s829,s678,s683,s897 |
| s949 | 170 | bary_lo | HCP | lo | 9139/31250 | s870,lo_FZP,s944,s829,lo_HCD,s607,s903 |
| s950 | 171 | bary_lo | HYP | lo | 73323/500000 | s870,lo_FZP,s944,s829,s562,s752,s904 |
| s951 | 173 | bary_hi | CFP | lo | 78671/500000 | s870,lo_FZP,s944,s829,lo_CDF,s906 |
| s971 | 174 | bary_lo | CQR | lo | 98803/1000000 | s911,lo_ZQR,lo_DQR,lo_DZR,lo_CDQ,s908 |
| s979 | 0 | sum | OHC | lo | 9729/25000 | lo_HCY,s743,lo_OHY |
| s980 | 2 | sub | ODP | hi | 240119/500000 | hi_OHD,lo_HDP,s947 |
| s981 | 3 | sum | OHF | lo | 284071/1000000 | s752,lo_OFY,lo_OHY |
| s982 | 4 | sum | OHZ | lo | 237477/500000 | s904,lo_OHY,s900 |
| s987 | 6 | sum | HCD | lo | 184389/250000 | lo_CDZ,s903,s810 |
| s990 | 8 | sum | HDY | lo | 166323/500000 | lo_DYP,lo_HDP,s950 |
| s993 | 9 | sub | DFZ | hi | 506543/1000000 | s734,lo_CDZ,s906 |
| s994 | 10 | sub | CDP | hi | 493433/1000000 | s734,s951,s829 |
| s995 | 12 | sum | CDP | lo | 88663/250000 | lo_CDZ,lo_CZP,s944 |
| s996 | 12 | sub | DZP | hi | 307433/1000000 | s994,lo_CDZ,lo_CZP |
| s997 | 13 | sum | CDQ | lo | 284803/1000000 | lo_CDR,s971,lo_DQR |
| s1000 | 14 | sum | CYQ | lo | 172087/500000 | s907,s908,lo_YZQ |
| s1002 | 15 | sum | CPQ | lo | 92973/250000 | lo_CZP,s908,s844 |
| s1007 | 18 | sumlo | OCY | lo | 213367/1000000 | s188,lo_OHY,s629,s979,hi_OHD |
| s1008 | 21 | sumlo | OFZ | lo | 381197/1000000 | s608,s982,lo_ODZ,s981,hi_OHD |
| s1010 | 22 | sumlo | HCF | lo | 24571/100000 | s987,s981,lo_HDF,s979,hi_OHD |
| s1012 | 23 | sumlo | HFY | lo | 12893/125000 | lo_HDF,lo_OHY,s990,s981,hi_OHD |
| s1013 | 24 | sumlo | HFZ | lo | 88533/500000 | lo_HDF,s982,s810,s981,hi_OHD |
| s1014 | 25 | sumlo | HFQ | lo | 23349/100000 | lo_HDF,s681,s682,s981,hi_OHD |
| s1019 | 26 | sumlo | OCF | lo | 397191/1000000 | lo_CDF,s979,s1010,s188,s235 |
| s1020 | 28 | sumlo | OCZ | lo | 62351/500000 | lo_CDZ,s1019,s906,s188,s734 |
| s1025 | 31 | sumlo | CFZ | lo | 160457/1000000 | lo_CDF,lo_CZP,lo_CDZ,s951,s994 |
| s1030 | 34 | sumlo | DFP | lo | 26881/250000 | lo_CDF,lo_HDP,s995,lo_HDF,s235 |
| s1037 | 37 | sumlo | ODF | lo | 38249/50000 | lo_CDF,s981,lo_HDF,s1019,s236 |
| s1040 | 39 | sumlo | OFP | lo | 266781/1000000 | s951,s981,lo_HFP,s1019,s236 |
| s1048 | 40 | sumlo | CFP | lo | 40369/250000 | lo_CDF,lo_FZP,s1025,s1030,s993 |
| s1054 | 43 | sumlo | HYQ | lo | 251081/1000000 | s782,s904,s990,lo_YZQ,s909 |
| s1056 | 45 | sumlo | HZQ | lo | 23971/125000 | lo_DZQ,s904,s810,lo_YZQ,s909 |
| s1060 | 47 | sumlo | CZQ | lo | 134049/1000000 | lo_CDZ,s844,lo_CZP,lo_DZQ,s996 |
| s1061 | 51 | sumlo | CQR | lo | 52549/500000 | s997,lo_ZQR,s1060,lo_DQR,s911 |
| s1069 | 53 | balance_lo | DYZ | lo | 155001/500000 | lo_YZQ,s1037,lo_DZQ,lo_OFY,s782,s1008,hi_OFQ |
| s1077 | 54 | balance_lo | HCF | lo | 258909/1000000 | s987,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s1007,s679 |
| s1078 | 54 | balance_lo | ODY | lo | 499927/1000000 | s987,lo_OFY,lo_CDF,lo_OHY,lo_HDF,s1007,s236 |
| s1079 | 56 | balance_lo | OYP | lo | 50701/250000 | s1048,lo_OHY,lo_HFP,s1007,s949,lo_OFY,s236 |
| s1082 | 59 | balance_lo | HCD | lo | 745889/1000000 | lo_CDF,s681,lo_HDF,lo_OCQ,s1077,lo_ODQ,hi_OFQ |
| s1086 | 61 | balance_lo | OZQ | lo | 127827/1000000 | lo_CDZ,s839,lo_CZP,lo_ODQ,s996,hi_OCQ,s994 |
| s1088 | 62 | balance_hi | HCQ | hi | 175839/250000 | hi_OFQ,s235,s693,s979,lo_ODQ,s1077,s1037 |
| s1091 | 69 | balance_lo | HDZ | lo | 246099/500000 | s1037,s1056,s693,s982,lo_ODQ,s1013,hi_OFQ |
| s1100 | 71 | balance_lo | CFY | lo | 121477/500000 | lo_HDF,s1007,s1037,lo_HCY,s981,s779,hi_OHD |
| s1101 | 72 | balance_lo | CDY | lo | 107239/200000 | s1037,s1000,s693,s1007,lo_ODQ,s1100,hi_OFQ |
| s1102 | 74 | balance_lo | HCZ | lo | 196433/1000000 | s981,s1060,s1014,s1020,s681,s1025,hi_OFQ |
| s1103 | 75 | balance_lo | CYZ | lo | 32047/200000 | s1078,lo_CZP,lo_DYP,s1020,s1079,lo_CDZ,s980 |
| s1104 | 77 | balance_lo | HCP | lo | 303703/1000000 | s981,s1002,s1014,s836,s681,s1048,hi_OFQ |
| s1111 | 80 | balance_lo | FYP | lo | 62613/500000 | s1101,lo_HFP,s990,s1048,lo_HCY,s1030,s235 |
| s1114 | 81 | balance_lo | FYZ | lo | 109799/500000 | lo_HDF,s900,s1037,s904,s981,s1069,hi_OHD |
| s1116 | 82 | balance_lo | DYZ | lo | 84203/250000 | s1037,lo_YZQ,s693,s900,lo_ODQ,s1114,hi_OFQ |
| s1121 | 83 | balance_lo | YPQ | lo | 289451/1000000 | s682,s1079,lo_ODQ,s950,s681,lo_DYP,hi_OHD |
| s1125 | 86 | balance_lo | DZP | lo | 201903/1000000 | lo_CDZ,s1121,lo_CZP,s782,s995,lo_YZQ,s759 |
| s1136 | 89 | balance_lo | HZQ | lo | 194857/1000000 | s1082,lo_YZQ,s990,s1060,lo_HCY,lo_DZQ,s756 |
| s1140 | 92 | linear | OHC | lo | 399367/1000000 | lo_HCY,s1007,lo_OHY |
| s1141 | 93 | linear | OHD | lo | 925573/1000000 | s990,s1078,lo_OHY |
| s1142 | 93 | linear | ODY | hi | 287177/500000 | s990,hi_OHD,lo_OHY |
| s1143 | 93 | linear | HDY | hi | 407073/1000000 | s1078,hi_OHD,lo_OHY |
| s1146 | 94 | linear | HDQ | lo | 619573/1000000 | lo_ODQ,s1141,hi_OHQ |
| s1147 | 95 | linear | OHF | lo | 36143/125000 | s1012,lo_OFY,lo_OHY |
| s1153 | 98 | linear | DFQ | lo | 2363/5000 | s1037,lo_ODQ,hi_OFQ |
| s1154 | 100 | linear | OYQ | lo | 252057/500000 | hi_DYQ,lo_ODQ,s1078 |
| s1156 | 101 | linear | HCD | lo | 781631/1000000 | lo_CDZ,s1102,s1091 |
| s1162 | 104 | linear | HDP | hi | 167427/1000000 | lo_DYP,s1143,s950 |
| s1171 | 105 | linear | CDY | lo | 590047/1000000 | lo_CDZ,s1103,s1116 |
| s1172 | 106 | linear | CDP | lo | 387903/1000000 | lo_CDZ,lo_CZP,s1125 |
| s1174 | 107 | linear | CDQ | lo | 145549/500000 | lo_CDR,s1061,lo_DQR |
| s1180 | 108 | linear | CPQ | lo | 19559/50000 | lo_CZP,s1060,s844 |
| s1182 | 109 | linear | DFY | lo | 1303/4000 | s1030,lo_DYP,s1111 |
| s1189 | 113 | linear | CDF | hi | 741091/1000000 | s1077 |
| s1194 | 116 | bary_lo | OCY | lo | 46757/200000 | hi_OHD,s990,s1078,lo_OHY,s1140,s188 |
| s1196 | 117 | bary_lo | OYZ | lo | 246091/1000000 | hi_OHD,s990,s1078,lo_OHY,s982,lo_ODZ |
| s1199 | 118 | bary_hi | OYQ | hi | 129017/200000 | hi_OHD,s990,s1078,lo_OHY,hi_OHQ,hi_ODQ |
| s1203 | 119 | bary_hi | HFY | lo | 104831/1000000 | hi_OHD,s990,s1078,lo_OHY,s1147,lo_HDF |
| s1210 | 121 | bary_hi | CYQ | hi | 126227/250000 | hi_OHD,s990,s1078,lo_OHY,hi_OCQ,s1088,hi_CDQ |
| s1232 | 128 | bary_hi | FYP | lo | 16527/125000 | s310,s904,s1196,lo_OHY,s1040,lo_HFP,lo_FZP |
| s1234 | 129 | bary_hi | CDY | hi | 89057/125000 | hi_OHQ,s1054,s1154,lo_OHY,hi_OCD,s235,s1174 |
| s1237 | 131 | bary_hi | HFZ | lo | 182133/1000000 | hi_ODQ,lo_DZQ,s1086,lo_ODZ,s1147,lo_HDF,s1014 |
| s1247 | 133 | bary_hi | HDZ | lo | 105517/200000 | s1199,lo_YZQ,s1086,s1196,s1141,s990,s1146 |
| s1249 | 134 | bary_lo | DFZ | lo | 445093/1000000 | s1199,lo_YZQ,s1086,s1196,s1037,s1182,s1153 |
| s1270 | 137 | bary_lo | DFP | lo | 110933/1000000 | s235,s1172,lo_HDP,s1104,lo_HDF,lo_CDF |
| s1271 | 138 | bary_hi | DPQ | lo | 11793/40000 | s235,s1172,lo_HDP,s1104,s1146,s1174 |
| s1321 | 148 | bary_lo | HCP | lo | 305827/1000000 | s1189,s1270,s1048,s1172,s1156,s1077 |
| s1323 | 149 | bary_lo | HYP | lo | 9463/62500 | s1189,s1270,s1048,s1172,lo_HCY,s990,s1203 |
| s1324 | 150 | bary_hi | CDP | hi | 234341/500000 | s1189,s1270,s1048,s1172,s1189 |
| s1325 | 151 | bary_hi | CYP | lo | 63933/250000 | s1189,s1270,s1048,s1172,s1171,s1100 |
| s1328 | 153 | bary_hi | DFP | hi | 5991/31250 | s1189,s1270,s1048,s1172,s1189 |
| s1338 | 156 | bary_hi | OYZ | lo | 68777/250000 | s1324,s1125,lo_CZP,lo_CDZ,s1194,s1078,s1079 |
| s1341 | 157 | bary_lo | HCZ | lo | 107891/500000 | s1324,s1125,lo_CZP,lo_CDZ,s1156,s1321 |
| s1342 | 158 | bary_lo | HDZ | hi | 580273/1000000 | s1324,s1125,lo_CZP,lo_CDZ,s235,s1162 |
| s1343 | 159 | bary_lo | HYZ | lo | 76071/500000 | s1324,s1125,lo_CZP,lo_CDZ,lo_HCY,s990,s1323 |
| s1345 | 160 | bary_hi | CFZ | lo | 169751/1000000 | s1324,s1125,lo_CZP,lo_CDZ,lo_CDF,s1048 |
| s1346 | 161 | bary_hi | CYZ | lo | 83913/500000 | s1324,s1125,lo_CZP,lo_CDZ,s1171,s1325 |
| s1347 | 162 | bary_lo | CZQ | lo | 135383/1000000 | s1324,s1125,lo_CZP,lo_CDZ,s1174,s1180 |
| s1348 | 163 | bary_hi | DFZ | hi | 19401/40000 | s1324,s1125,lo_CZP,lo_CDZ,s1189,s1328 |
| s1349 | 164 | bary_hi | DYZ | hi | 411259/1000000 | s1324,s1125,lo_CZP,lo_CDZ,s1234,lo_DYP |
| s1380 | 166 | bary_lo | DZP | lo | 214403/1000000 | s1210,lo_YZQ,s1347,s1346,s1172,lo_DYP,s1271 |
| s1384 | 170 | bary_lo | HCP | lo | 343343/1000000 | s1348,lo_FZP,s1380,s1270,s1156,s1077,s1341 |
| s1385 | 171 | bary_lo | HYP | lo | 159333/1000000 | s1348,lo_FZP,s1380,s1270,s990,s1203,s1343 |
| s1386 | 172 | bary_lo | HZP | lo | 181671/1000000 | s1348,lo_FZP,s1380,s1270,s1247,s1237 |
| s1388 | 173 | bary_hi | CFP | lo | 85947/500000 | s1348,lo_FZP,s1380,s1270,lo_CDF,s1345 |
| s1422 | 0 | sum | OHC | lo | 83957/200000 | lo_HCY,s1194,lo_OHY |
| s1424 | 3 | sum | OHF | lo | 290831/1000000 | s1203,lo_OFY,lo_OHY |
| s1425 | 4 | sum | OHZ | lo | 2081/4000 | s1343,lo_OHY,s1338 |
| s1436 | 6 | sum | HCD | lo | 836367/1000000 | lo_CDZ,s1341,s1247 |
| s1437 | 7 | sum | HCQ | lo | 273011/500000 | s1347,s1341,s1136 |
| s1439 | 8 | sum | HDY | lo | 345333/1000000 | lo_DYP,lo_HDP,s1385 |
| s1441 | 9 | sum | CDF | lo | 176961/250000 | lo_CDZ,s1345,s1249 |
| s1443 | 9 | sub | DFZ | hi | 23917/50000 | s1189,lo_CDZ,s1345 |
| s1444 | 10 | sub | CDP | hi | 57283/125000 | s1189,s1388,s1270 |
| s1445 | 11 | sum | CDY | lo | 298819/500000 | lo_CDZ,s1346,s1116 |
| s1446 | 12 | sum | CDP | lo | 400403/1000000 | lo_CDZ,lo_CZP,s1380 |
| s1447 | 12 | sub | DZP | hi | 34033/125000 | s1444,lo_CDZ,lo_CZP |
| s1454 | 16 | sum | DFY | lo | 336149/1000000 | s1270,lo_DYP,s1232 |
| s1458 | 19 | sumlo | OCD | lo | 377409/1000000 | lo_OCQ,s1141,lo_ODQ,s1422,hi_OHQ |
| s1462 | 22 | sumlo | HCF | lo | 282281/1000000 | s1436,s1424,lo_HDF,s1422,hi_OHD |
| s1471 | 24 | sumlo | HFZ | lo | 201821/1000000 | lo_HDF,s1425,s1247,s1424,hi_OHD |
| s1481 | 26 | sumlo | OCF | lo | 445069/1000000 | s1441,s1422,s1462,s1458,s235 |
| s1482 | 27 | sumlo | OCP | lo | 65637/200000 | s1446,s1422,s1384,s1458,s235 |
| s1484 | 30 | sumlo | OCZ | lo | 143193/1000000 | lo_CDZ,s1482,lo_CZP,s1458,s1444 |
| s1492 | 31 | sumlo | CFZ | lo | 178533/1000000 | s1441,lo_CZP,lo_CDZ,s1388,s1444 |
| s1508 | 37 | sumlo | ODF | lo | 40401/50000 | s1441,s1424,lo_HDF,s1481,s236 |
| s1509 | 38 | sumlo | OFZ | lo | 231613/500000 | s1492,s1424,s1471,s1481,s236 |
| s1530 | 41 | sumlo | OCY | lo | 250749/1000000 | s1445,lo_OHY,lo_HCY,s1078,s1143 |
| s1531 | 42 | sumlo | HFY | lo | 55173/500000 | s1454,lo_OHY,s1439,lo_OFY,s1142 |
| s1541 | 44 | sumlo | HCZ | lo | 242267/1000000 | lo_CDZ,s1386,lo_CZP,s1247,s1447 |
| s1549 | 45 | sumlo | HZQ | lo | 222519/1000000 | lo_DZQ,s1343,s1247,lo_YZQ,s1349 |
| s1554 | 46 | sumlo | CFZ | lo | 183801/1000000 | lo_CDZ,lo_FZP,lo_CZP,s1249,s1447 |
| s1580 | 52 | balance_lo | HDZ | lo | 55551/100000 | lo_DZQ,s1424,s1549,s1508,s1146,s1509,hi_OFQ |
| s1581 | 52 | balance_lo | OFQ | lo | 472143/500000 | lo_DZQ,s1424,s1549,s1508,s1146,s1509,s1342 |
| s1584 | 52 | balance_hi | OFZ | hi | 10053/20000 | s1342,hi_OFQ,lo_DZQ,s1424,s1549,s1508,s1146 |
| s1602 | 54 | balance_lo | HCF | lo | 290641/1000000 | s1436,lo_OFY,s1441,lo_OHY,lo_HDF,s1530,s1142 |
| s1603 | 54 | balance_lo | ODY | lo | 545527/1000000 | s1436,lo_OFY,s1441,lo_OHY,lo_HDF,s1530,s236 |
| s1607 | 55 | balance_lo | OYZ | lo | 294871/1000000 | s1554,lo_OHY,s1471,s1530,s1541,lo_OFY,s236 |
| s1611 | 57 | balance_lo | HFZ | lo | 52441/250000 | lo_HDF,s1607,s1249,lo_OHY,s1580,lo_OFY,s1142 |
| s1614 | 58 | balance_lo | OYQ | lo | 568751/1000000 | lo_DZQ,lo_OHY,s1549,s1603,s1146,s1607,s1342 |
| s1633 | 60 | balance_lo | OZQ | lo | 85283/500000 | s1554,lo_ODQ,lo_CDZ,s1581,s1443,hi_OCQ,s1189 |
| s1639 | 62 | balance_hi | HCQ | hi | 612053/1000000 | hi_OFQ,s235,s1153,s1422,lo_ODQ,s1602,s1508 |
| s1640 | 62 | balance_lo | HCD | lo | 213227/250000 | s1508,s1437,s1153,s1422,lo_ODQ,s1602,hi_OFQ |
| s1643 | 63 | balance_lo | OYZ | lo | 314829/1000000 | lo_YZQ,s1422,s1633,lo_HCY,s1614,s1541,s1639 |
| s1653 | 64 | balance_hi | DYQ | hi | 302239/500000 | s1349,s1639,lo_YZQ,s1640,lo_DZQ,lo_HCY,s1541 |
| s1660 | 65 | balance_hi | OCF | hi | 245239/500000 | s1584,s235,s1554,s1141,s1484,lo_HDF,s1580 |
| s1665 | 66 | balance_lo | OYQ | lo | 585999/1000000 | s1643,s1146,lo_YZQ,s1141,s1633,s1439,s1342 |
| s1673 | 67 | balance_lo | HDY | lo | 93083/250000 | s1458,s1531,s1441,lo_OHY,s1508,lo_HCY,s1660 |
| s1681 | 68 | balance_lo | HYZ | lo | 32409/200000 | s1249,lo_HCY,s1554,s1673,lo_CDZ,s1531,s1189 |
| s1684 | 69 | balance_hi | HZQ | hi | 22391/100000 | hi_OFQ,s1342,s1153,s1425,lo_ODQ,s1611,s1508 |
| s1686 | 69 | balance_hi | OHZ | hi | 522627/1000000 | hi_OFQ,s1342,s1508,s1549,lo_ODQ,s1611,s1153 |
| s1688 | 69 | balance_lo | HDZ | lo | 289567/500000 | s1508,s1549,s1153,s1425,lo_ODQ,s1611,hi_OFQ |
| s1691 | 70 | balance_lo | ODY | lo | 121401/200000 | s1665,s1688,lo_ODQ,s1681,s1653,s1686,s1684 |

## Conclusion

{"triangle":"ODY","lower":"s1691","upper":"s1142"}
