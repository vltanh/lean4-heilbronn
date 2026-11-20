# Leaf rpmmpmpmppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":1,"OZR":1}

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
| 26 | interior_line | ["ZR","R","ODQ","Q",-1] |
| 27 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 28 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 29 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 30 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["OCR","Z","P","ROP",-1,"2849236491/7210000000","C045"] |
| 33 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 34 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 35 | capacity | ["DZQ","R","Y","DZY",-1,"87606223/127000000","C065"] |
| 36 | plu | ["OHDYZ","OYZ",-1] |
| 37 | plu | ["DOHZP","DZP",-1] |
| 38 | plu | ["FOHYZ","FYZ",1] |
| 39 | plu | ["FOHYP","FYP",1] |
| 40 | plu | ["YODZP","YZP",1] |
| 41 | plu | ["YODPR","YPR",-1] |
| 42 | plu | ["YOZQR","YZR",1] |
| 43 | plu | ["ZOHCR","ZHR",-1] |
| 44 | plu | ["ZOHYQ","ZHQ",-1] |
| 45 | plu | ["ZOHPQ","ZPQ",-1] |
| 46 | plu | ["ZODFR","ZFR",-1] |
| 47 | plu | ["ZODPR","ZPR",-1] |
| 48 | plu | ["ZOFYQ","ZFQ",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 347/500 | ["cost","YZ"] |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 279/1000 | ["cost","Z"] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OQR | OQR | lo | 279/1000 | ["cost","Z"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HDQ | HDQ | lo | 125427/721000 | "C036" |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDY | CDY | lo | 279/1000 | ["cost","Z"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_CZQ | CZQ | lo | 93/1000 | ["cost",""] |
| lo_CZR | CZR | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DZR | DZR | lo | 93/1000 | ["cost",""] |
| lo_DPQ | DPQ | lo | 93/1000 | ["cost",""] |
| lo_DPR | DPR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OHR | OHR | hi | 9197/10000 | "C063" |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_OCR | OCR | hi | 2849236491/7210000000 | "C045" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OPQ | OPQ | hi | 70912/79375 | "C050" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 1 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 2 | ["fan","OHF","HFY","OFY","OHY"] | ["fan","OHF","Y"] |
| 3 | ["fan","OCD","CDZ","OCZ","ODZ"] | ["fan","OCD","Z"] |
| 4 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 5 | ["fan","OCR","CZR","OCZ","OZR"] | ["fan","OCR","Z"] |
| 6 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 7 | ["fan","OYQ","OYZ","OZQ","YZQ"] | ["fan","OYQ","Z"] |
| 8 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 9 | ["fan","HCR","CZR","HCZ","HZR"] | ["fan","HCR","Z"] |
| 10 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 11 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 12 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 13 | ["fan","CYP","CYZ","CZP","YZP"] | ["fan","CYP","Z"] |
| 14 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 15 | ["fan","CYR","CYZ","CZR","YZR"] | ["fan","CYR","Z"] |
| 16 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 17 | ["fan","DZQ","DQR","DZR","ZQR"] | ["fan","DZQ","R"] |
| 18 | ["plu","OCD","OHR","OCR","OHD","ODR","OHC"] | ["plu","OHCDR"] |
| 19 | ["plu","OCD","OPQ","OCP","ODQ","OCQ","ODP"] | ["plu","OCDPQ"] |
| 20 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 21 | ["plu","ODZ","OQR","ODQ","OZR","ODR","OZQ"] | ["plu","ODZQR"] |
| 22 | ["plu","HCF","OHD","HCD","OHF","HDF","OHC"] | ["plu","HOCDF"] |
| 23 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 24 | ["plu","HCR","OCD","CDR","OHC","HCD","OCR"] | ["plu","COHDR"] |
| 25 | ["plu","HCP","OCZ","CZP","OHC","HCZ","OCP"] | ["plu","COHZP"] |
| 26 | ["plu","CDZ","HCP","CDP","HCZ","CZP","HCD"] | ["plu","CHDZP"] |
| 27 | ["plu","CZR","HCP","CPR","HCZ","CZP","HCR"] | ["plu","CHZPR"] |
| 28 | ["plu","CYP","CZQ","CPQ","CYZ","CYQ","CZP"] | ["plu","CYZPQ"] |
| 29 | ["plu","HDY","ODP","DYP","OHD","HDP","ODY"] | ["plu","DOHYP"] |
| 30 | ["plu","CDQ","ODR","CDR","ODQ","DQR","OCD"] | ["plu","DOCQR"] |
| 31 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 32 | ["plu","CDP","HDY","CDY","HDP","DYP","HCD"] | ["plu","DHCYP"] |
| 33 | ["plu","CDQ","HDR","CDR","HDQ","DQR","HCD"] | ["plu","DHCQR"] |
| 34 | ["plu","DPQ","HDZ","DZP","HDQ","DZQ","HDP"] | ["plu","DHZPQ"] |
| 35 | ["plu","CFY","OYP","CYP","OFY","FYP","OCY"] | ["plu","YOCFP"] |
| 36 | ["plu","CZQ","OYZ","CYZ","OZQ","OCZ","YZQ"] | ["plu","ZOCYQ"] |
| 37 | ["plu","ODZ","ZQR","DZQ","OZR","DZR","OZQ"] | ["plu","ZODQR"] |
| 38 | ["plu","CZQ","DYZ","CDZ","YZQ","CYZ","DZQ"] | ["plu","ZCDYQ"] |
| 39 | ["plu","CDP","HYP","CYP","HDP","DYP","HCP"] | ["plu","PHCDY"] |
| 40 | ["plu","DZP","FYP","DFP","YZP","DYP","FZP"] | ["plu","PDFYZ"] |
| 41 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 42 | ["plu","CQR","ODR","CDR","OQR","DQR","OCR"] | ["plu","ROCDQ"] |
| 43 | ["balance",[[1,"CDQ","OHR"],[-1,"DQR","OHC"],[-1,"CQR","OHD"],[-1,"CDR","OHQ"]]] | ["six","OHCDQR"] |
| 44 | ["balance",[[1,"CZP","ODQ"],[-1,"ZPQ","OCD"],[1,"CPQ","ODZ"],[1,"CZQ","ODP"]]] | ["six","ODCZPQ"] |
| 45 | ["balance",[[1,"CDQ","OYR"],[-1,"DQR","OCY"],[-1,"CQR","ODY"],[-1,"CDR","OYQ"]]] | ["six","OYCDQR"] |
| 46 | ["balance",[[-1,"CDQ","OZR"],[-1,"DQR","OCZ"],[1,"CQR","ODZ"],[-1,"CDR","OZQ"]]] | ["six","OZCDQR"] |
| 47 | ["balance",[[1,"CDQ","OPR"],[-1,"DQR","OCP"],[-1,"CQR","ODP"],[-1,"CDR","OPQ"]]] | ["six","OPCDQR"] |
| 48 | ["balance",[[1,"CDZ","OPQ"],[-1,"DZP","OCQ"],[-1,"CZP","ODQ"],[-1,"CDP","OZQ"]]] | ["six","OQCDZP"] |
| 49 | ["balance",[[1,"HCZ","OPR"],[1,"CZP","OHR"],[-1,"HZP","OCR"],[1,"HCP","OZR"]]] | ["six","ORHCZP"] |
| 50 | ["balance",[[-1,"CYZ","OPR"],[1,"YZP","OCR"],[-1,"CZP","OYR"],[-1,"CYP","OZR"]]] | ["six","ORCYZP"] |
| 51 | ["balance",[[-1,"ODZ","HCR"],[1,"DZR","OHC"],[1,"OZR","HCD"],[1,"ODR","HCZ"]]] | ["six","HCODZR"] |
| 52 | ["balance",[[1,"ODP","HCR"],[1,"DPR","OHC"],[-1,"OPR","HCD"],[1,"ODR","HCP"]]] | ["six","HCODPR"] |
| 53 | ["balance",[[1,"OZP","HCR"],[-1,"ZPR","OHC"],[-1,"OPR","HCZ"],[-1,"OZR","HCP"]]] | ["six","HCOZPR"] |
| 54 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 55 | ["balance",[[1,"OCD","HYR"],[-1,"CDR","OHY"],[-1,"ODR","HCY"],[-1,"OCR","HDY"]]] | ["six","HYOCDR"] |
| 56 | ["balance",[[1,"OYZ","CDR"],[-1,"YZR","OCD"],[1,"OZR","CDY"],[1,"OYR","CDZ"]]] | ["six","CDOYZR"] |
| 57 | ["balance",[[1,"OZQ","CDR"],[-1,"ZQR","OCD"],[1,"OQR","CDZ"],[1,"OZR","CDQ"]]] | ["six","CDOZQR"] |
| 58 | ["balance",[[1,"ODZ","CYP"],[1,"DZP","OCY"],[-1,"OZP","CDY"],[1,"ODP","CYZ"]]] | ["six","CYODZP"] |
| 59 | ["balance",[[1,"OHD","CZP"],[1,"HDP","OCZ"],[1,"ODP","HCZ"],[-1,"OHP","CDZ"]]] | ["six","CZOHDP"] |
| 60 | ["balance",[[1,"HDY","CZP"],[1,"DYP","HCZ"],[-1,"HYP","CDZ"],[1,"HDP","CYZ"]]] | ["six","CZHDYP"] |
| 61 | ["balance",[[1,"OYZ","CPR"],[-1,"YZR","OCP"],[1,"OZR","CYP"],[1,"OYR","CZP"]]] | ["six","CPOYZR"] |
| 62 | ["balance",[[1,"OHC","DFZ"],[1,"HCF","ODZ"],[-1,"OCF","HDZ"],[1,"OHF","CDZ"]]] | ["six","DZOHCF"] |
| 63 | ["balance",[[-1,"OHF","DYP"],[1,"HFY","ODP"],[-1,"OFY","HDP"],[-1,"OHY","DFP"]]] | ["six","DPOHFY"] |
| 64 | ["balance",[[1,"OCF","DYP"],[-1,"CFY","ODP"],[1,"OFY","CDP"],[1,"OCY","DFP"]]] | ["six","DPOCFY"] |
| 65 | ["balance",[[-1,"HCY","DPQ"],[-1,"CYQ","HDP"],[1,"HYQ","CDP"],[-1,"HCQ","DYP"]]] | ["six","DPHCYQ"] |
| 66 | ["balance",[[1,"HCD","YZQ"],[-1,"CDY","HZQ"],[1,"HDY","CZQ"],[1,"HCY","DZQ"]]] | ["six","ZQHCDY"] |
| 67 | ["balance",[[-1,"OHC","DZR"],[-1,"HCD","OZR"],[1,"OCD","HZR"],[-1,"OHD","CZR"]]] | ["six","ZROHCD"] |
| 68 | ["balance",[[1,"OCD","FZR"],[-1,"CDF","OZR"],[-1,"ODF","CZR"],[-1,"OCF","DZR"]]] | ["six","ZROCDF"] |
| 69 | ["balance",[[-1,"ODY","ZQR"],[-1,"DYQ","OZR"],[-1,"OYQ","DZR"],[1,"ODQ","YZR"]]] | ["six","ZRODYQ"] |
| 70 | ["linear",{"OHC":-1,"OCZ":1,"OHZ":1,"HCZ":-1},"0"] | ["affine_quad","OHCZ",1] |
| 71 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 72 | ["linear",{"OHD":1,"ODY":-1,"OHY":-1,"HDY":-1},"0"] | ["affine_quad","OHDY",-1] |
| 73 | ["linear",{"OHD":-1,"ODZ":-1,"OHZ":1,"HDZ":1},"0"] | ["affine_quad","OHDZ",1] |
| 74 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 75 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 76 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 77 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 78 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 79 | ["linear",{"OCZ":-1,"OZR":-1,"OCR":1,"CZR":-1},"0"] | ["affine_quad","OCZR",-1] |
| 80 | ["linear",{"OCP":-1,"OPQ":1,"OCQ":1,"CPQ":-1},"0"] | ["affine_quad","OCPQ",-1] |
| 81 | ["linear",{"OCQ":1,"OQR":1,"OCR":-1,"CQR":-1},"0"] | ["affine_quad","OCQR",1] |
| 82 | ["linear",{"ODZ":-1,"OZQ":-1,"ODQ":1,"DZQ":-1},"0"] | ["affine_quad","ODZQ",1] |
| 83 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 84 | ["linear",{"OYZ":-1,"OZQ":-1,"OYQ":1,"YZQ":-1},"0"] | ["affine_quad","OYZQ",1] |
| 85 | ["linear",{"OZP":-1,"OPQ":1,"OZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","OZPQ",-1] |
| 86 | ["linear",{"OZQ":-1,"OQR":1,"OZR":-1,"ZQR":-1},"0"] | ["affine_quad","OZQR",1] |
| 87 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 88 | ["linear",{"HCY":1,"HYP":-1,"HCP":1,"CYP":-1},"0"] | ["affine_quad","HCYP",-1] |
| 89 | ["linear",{"HCZ":-1,"HZP":-1,"HCP":1,"CZP":-1},"0"] | ["affine_quad","HCZP",-1] |
| 90 | ["linear",{"HCZ":-1,"HZQ":-1,"HCQ":1,"CZQ":-1},"0"] | ["affine_quad","HCZQ",-1] |
| 91 | ["linear",{"HCZ":-1,"HZR":-1,"HCR":1,"CZR":-1},"0"] | ["affine_quad","HCZR",-1] |
| 92 | ["linear",{"HDY":1,"HYP":-1,"HDP":-1,"DYP":-1},"0"] | ["affine_quad","HDYP",-1] |
| 93 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 94 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 95 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 96 | ["linear",{"CYZ":-1,"CZP":-1,"CYP":1,"YZP":-1},"0"] | ["affine_quad","CYZP",1] |
| 97 | ["linear",{"CYZ":-1,"CZQ":-1,"CYQ":1,"YZQ":-1},"0"] | ["affine_quad","CYZQ",1] |
| 98 | ["linear",{"CYZ":-1,"CZR":-1,"CYR":1,"YZR":-1},"0"] | ["affine_quad","CYZR",1] |
| 99 | ["linear",{"DZQ":1,"DQR":-1,"DZR":-1,"ZQR":-1},"0"] | ["affine_quad","DZQR",1] |
| 100 | ["quad","DFZ","DZQ","93/125"] | ["quad","DFZQ","PR"] |
| 101 | ["support","CYP","CYR","YPR","1023/1000"] | ["support_pent","YPDRC"] |
| 102 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 103 | ["linear",{"OHC":1,"OHF":-1},"0"] | ["c1_norm","c_ge_f"] |
| 104 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 105 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 106 | ["bary",["CFY",1],[["OCF",1],["HCF",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CF"] |
| 107 | ["bary",["HFY",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HF"] |
| 108 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CD"] |
| 109 | ["bary",["CYP",1],[["OCP",1],["HCP",1],["CDP",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CP"] |
| 110 | ["bary",["CYQ",1],[["OCQ",1],["HCQ",1],["CDQ",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CQ"] |
| 111 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 112 | ["bary",["HCP",1],[["OHC",-1],null,["HCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","HC"] |
| 113 | ["bary",["CDP",1],[["OCD",1],["HCD",1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CD"] |
| 114 | ["bary",["CPR",1],[["OCR",1],["HCR",1],["CDR",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","CR"] |
| 115 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DQ"] |
| 116 | ["bary",["HDY",-1],[["OHD",-1],null,["HDF",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","HD"] |
| 117 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","CD"] |
| 118 | ["bary",["DYZ",-1],[["ODZ",-1],["HDZ",-1],["DFZ",-1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","DZ"] |
| 119 | ["bary",["YZR",1],[["OZR",1],["HZR",1],["FZR",1]],"OHF",["HFY","OFY","OHY"]] | ["bary","OHF","Y","ZR"] |
| 120 | ["bary",["OCY",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","OC"] |
| 121 | ["bary",["HDY",-1],[["OHD",-1],null,["HDQ",-1]],"OHQ",["HYQ","OYQ","OHY"]] | ["bary","OHQ","Y","HD"] |
| 122 | ["bary",["CYP",1],[["OCP",1],["HCP",1],["CPR",-1]],"OHR",["HYR","OYR","OHY"]] | ["bary","OHR","Y","CP"] |
| 123 | ["bary",["OZP",-1],[null,["OCP",-1],["ODP",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","OP"] |
| 124 | ["bary",["YZP",-1],[["OYP",-1],["CYP",-1],["DYP",-1]],"OCD",["CDZ","ODZ","OCZ"]] | ["bary","OCD","Z","YP"] |
| 125 | ["bary",["CZR",1],[["OCR",1],null,["CPR",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","CR"] |
| 126 | ["bary",["DZR",-1],[["ODR",-1],["CDR",-1],["DPR",-1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","DR"] |
| 127 | ["bary",["HDZ",-1],[["OHD",-1],["HCD",-1],["HDR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","HD"] |
| 128 | ["bary",["CDZ",1],[["OCD",1],null,["CDR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","CD"] |
| 129 | ["bary",["CZQ",1],[["OCQ",1],null,["CQR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","CQ"] |
| 130 | ["bary",["DZP",1],[["ODP",1],["CDP",1],["DPR",1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","DP"] |
| 131 | ["bary",["YZP",-1],[["OYP",-1],["CYP",-1],["YPR",-1]],"OCR",["CZR","OZR","OCZ"]] | ["bary","OCR","Z","YP"] |
| 132 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHQ",-1]],"ODQ",["DZQ","OZQ","ODZ"]] | ["bary","ODQ","Z","OH"] |
| 133 | ["bary",["CQR",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","CQ"] |
| 134 | ["bary",["ODZ",-1],[null,["ODQ",-1],["ODR",-1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","OD"] |
| 135 | ["bary",["OYZ",-1],[null,["OYQ",-1],["OYR",-1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","OY"] |
| 136 | ["bary",["CDZ",1],[["OCD",1],["CDQ",-1],["CDR",-1]],"OQR",["ZQR","OZR","OZQ"]] | ["bary","OQR","Z","CD"] |
| 137 | ["bary",["OHZ",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","OH"] |
| 138 | ["bary",["DFZ",1],[["HDF",1],["CDF",1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","DF"] |
| 139 | ["bary",["OCP",1],[["OHC",1],null,["OCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OC"] |
| 140 | ["bary",["ODP",1],[["OHD",1],["OCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OD"] |
| 141 | ["bary",["HDP",-1],[null,["HCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HD"] |
| 142 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 143 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 144 | ["bary",["OCZ",1],[["OHC",1],null,["OCP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","OC"] |
| 145 | ["bary",["ODZ",-1],[["OHD",1],["OCD",-1],["ODP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","OD"] |
| 146 | ["bary",["HDZ",-1],[null,["HCD",-1],["HDP",-1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","HD"] |
| 147 | ["bary",["CDZ",1],[["HCD",1],null,["CDP",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","CD"] |
| 148 | ["bary",["CZR",1],[["HCR",1],null,["CPR",1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","CR"] |
| 149 | ["bary",["DYZ",1],[["HDY",-1],["CDY",1],["DYP",-1]],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","DY"] |
| 150 | ["bary",["DZP",1],[["HDP",-1],["CDP",1],null],"HCP",["CZP","HZP","HCZ"]] | ["bary","HCP","Z","DP"] |
| 151 | ["bary",["ODP",1],[["OHD",1],null,["ODY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OD"] |
| 152 | ["bary",["OZP",1],[["OHZ",1],["ODZ",1],["OYZ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OZ"] |
| 153 | ["bary",["OPQ",1],[["OHQ",1],["ODQ",1],["OYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","OQ"] |
| 154 | ["bary",["HCP",1],[null,["HCD",1],["HCY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HC"] |
| 155 | ["bary",["CDP",1],[["HCD",1],null,["CDY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CD"] |
| 156 | ["bary",["CZP",-1],[["HCZ",1],["CDZ",-1],["CYZ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CZ"] |
| 157 | ["bary",["CPQ",1],[["HCQ",1],["CDQ",1],["CYQ",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CQ"] |
| 158 | ["bary",["CPR",1],[["HCR",1],["CDR",1],["CYR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","CR"] |
| 159 | ["bary",["ZPR",1],[["HZR",1],["DZR",1],["YZR",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","ZR"] |
| 160 | ["bary",["OHR",-1],[["OHC",-1],["OHD",-1],["OHQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OH"] |
| 161 | ["bary",["OCR",1],[null,["OCD",1],["OCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OC"] |
| 162 | ["bary",["ODR",-1],[["OCD",-1],null,["ODQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OD"] |
| 163 | ["bary",["OYR",-1],[["OCY",-1],["ODY",-1],["OYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OY"] |
| 164 | ["bary",["OPR",-1],[["OCP",-1],["ODP",-1],["OPQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OP"] |
| 165 | ["bary",["OQR",1],[["OCQ",-1],["ODQ",1],null],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OQ"] |
| 166 | ["bary",["HCR",1],[null,["HCD",1],["HCQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","HC"] |
| 167 | ["bary",["CYR",-1],[null,["CDY",-1],["CYQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","CY"] |
| 168 | ["bary",["CZQ",1],[null,["CYQ",1],["CPQ",1]],"CYP",["YZP","CZP","CYZ"]] | ["bary","CYP","Z","CQ"] |
| 169 | ["bary",["DZP",1],[["CDP",1],["DYP",1],["DPR",1]],"CYR",["YZR","CZR","CYZ"]] | ["bary","CYR","Z","DP"] |
| 170 | ["bary",["OYP",-1],[["ODY",-1],["OFY",-1],["OYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 0 | sub | HDY | hi | 407/500 | hi_OHD,lo_ODY,lo_OHY |
| s5 | 1 | sub | OHP | hi | 407/500 | hi_OHD,lo_HDP,lo_ODP |
| s14 | 3 | sub | CDZ | hi | 77989/200000 | hi_OCD,lo_OCZ,lo_ODZ |
| s27 | 6 | sub | ODR | hi | 6071/15625 | hi_ODQ,lo_DQR,lo_OQR |
| s65 | 19 | sumlo | OPQ | lo | 70241/200000 | lo_OCP,lo_ODQ,lo_OCQ,lo_ODP,hi_OCD |
| s66 | 20 | sumlo | ODY | lo | 92689/500000 | lo_ODF,lo_OYQ,lo_ODQ,lo_OFY,hi_OFQ |
| s69 | 22 | sumlo | HCF | lo | 219573/1000000 | lo_HCD,lo_OHF,lo_HDF,lo_OHC,hi_OHD |
| s91 | 31 | sumlo | ODP | lo | 118557/1000000 | lo_DPQ,s66,lo_DYP,lo_ODQ,hi_DYQ |
| s95 | 32 | sumlo | CDP | lo | 22233/200000 | lo_CDY,lo_HDP,lo_DYP,lo_HCD,s1 |
| s96 | 33 | sumlo | HDR | lo | 192191/1000000 | lo_CDR,lo_HDQ,lo_DQR,lo_HCD,hi_CDQ |
| s109 | 41 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s116 | 42 | sumlo | CQR | lo | 3339/25000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,s27 |
| s117 | 42 | sumlo | ODR | lo | 221769/1000000 | lo_CDR,lo_OQR,lo_DQR,lo_OCR,hi_CQR |
| s122 | 43 | balance_lo | OHR | lo | 218071/500000 | lo_DQR,lo_OHC,s116,lo_OHD,lo_CDR,lo_OHQ,hi_CDQ |
| s127 | 45 | balance_lo | OYR | lo | 141321/1000000 | lo_DQR,lo_OCY,s116,s66,lo_CDR,lo_OYQ,hi_CDQ |
| s128 | 46 | balance_lo | ODZ | lo | 184807/1000000 | lo_CDQ,lo_OZR,lo_DQR,lo_OCZ,lo_CDR,lo_OZQ,hi_CQR |
| s130 | 47 | balance_lo | OPR | lo | 88623/500000 | lo_DQR,lo_OCP,s116,s91,lo_CDR,s65,hi_CDQ |
| s132 | 48 | balance_lo | CDZ | lo | 46749/500000 | lo_DZP,lo_OCQ,lo_CZP,lo_ODQ,s95,lo_OZQ,hi_OPQ |
| s135 | 49 | balance_lo | HZP | lo | 210011/1000000 | lo_HCZ,s130,lo_CZP,s122,lo_HCP,lo_OZR,hi_OCR |
| s137 | 50 | balance_lo | YZP | lo | 140629/1000000 | lo_CYZ,s130,lo_CZP,s127,lo_CYP,lo_OZR,hi_OCR |
| s149 | 54 | balance_lo | HYQ | lo | 40433/200000 | lo_CDQ,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s151 | 55 | balance_lo | HYR | lo | 9299/50000 | lo_CDR,lo_OHY,s117,lo_HCY,lo_OCR,lo_HDY,hi_OCD |
| s154 | 57 | balance_lo | ZQR | lo | 1317/12500 | lo_OZQ,lo_CDR,lo_OQR,s132,lo_OZR,lo_CDQ,hi_OCD |
| s158 | 58 | balance_lo | OZP | lo | 95021/1000000 | s128,lo_CYP,lo_DZP,lo_OCY,s91,lo_CYZ,hi_CDY |
| s159 | 59 | balance_lo | CDZ | lo | 5173/50000 | lo_OHD,lo_CZP,lo_HDP,lo_OCZ,s91,lo_HCZ,s5 |
| s160 | 60 | balance_lo | HYP | lo | 1109/10000 | lo_HDY,lo_CZP,lo_DYP,lo_HCZ,lo_HDP,lo_CYZ,s14 |
| s179 | 66 | balance_lo | HZQ | lo | 77657/500000 | lo_HCD,lo_YZQ,lo_HDY,lo_CZQ,lo_HCY,lo_DZQ,hi_CDY |
| s180 | 67 | balance_lo | HZR | lo | 33647/125000 | lo_OHC,lo_DZR,lo_HCD,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s181 | 68 | balance_lo | FZR | lo | 86231/500000 | lo_CDF,lo_OZR,lo_ODF,lo_CZR,lo_OCF,lo_DZR,hi_OCD |
| s182 | 69 | balance_lo | YZR | lo | 93913/1000000 | s66,s154,lo_DYQ,lo_OZR,lo_OYQ,lo_DZR,hi_ODQ |
| s185 | 74 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s188 | 76 | linear | OHP | lo | 2969/10000 | s160,lo_OHY,lo_OYP |
| s192 | 77 | linear | OCD | lo | 381267/1000000 | s159,lo_OCZ,s128 |
| s195 | 78 | linear | OCP | lo | 281021/1000000 | lo_CZP,lo_OCZ,s158 |
| s202 | 83 | linear | OQR | hi | 17831/40000 | lo_DQR,hi_ODQ,s117 |
| s207 | 86 | linear | OQR | lo | 1821/6250 | lo_OZQ,lo_OZR,s154 |
| s214 | 89 | linear | HCP | lo | 396011/1000000 | lo_CZP,lo_HCZ,s135 |
| s216 | 90 | linear | HCQ | lo | 170657/500000 | lo_CZQ,lo_HCZ,s179 |
| s218 | 91 | linear | HCR | lo | 56897/125000 | lo_CZR,lo_HCZ,s180 |
| s219 | 92 | linear | HDY | lo | 2969/10000 | lo_DYP,lo_HDP,s160 |
| s223 | 93 | linear | HDZ | lo | 396011/1000000 | lo_DZP,lo_HDP,s135 |
| s228 | 95 | linear | CDQ | lo | 7989/25000 | lo_CDR,s116,lo_DQR |
| s231 | 96 | linear | CYP | lo | 326629/1000000 | lo_CYZ,lo_CZP,s137 |
| s234 | 98 | linear | CYR | lo | 279913/1000000 | lo_CYZ,lo_CZR,s182 |
| s242 | 102 | linear | OHC | lo | 381267/1000000 | s192 |
| s243 | 104 | linear | HCD | hi | 907/1000 | lo_HDF |
| s244 | 105 | linear | CDF | hi | 780427/1000000 | s69 |
| s266 | 108 | bary_hi | CDY | hi | 724359/1000000 | hi_OHD,s219,s66,lo_OHY,hi_OCD,s243 |
| s268 | 110 | bary_hi | CYQ | hi | 295113/500000 | hi_OHD,s219,s66,lo_OHY,hi_OCQ,s109,hi_CDQ |
| s274 | 111 | bary_hi | OCP | hi | 139603/250000 | hi_OHD,lo_HDP,s91,s188,hi_OHC,hi_OCD |
| s279 | 112 | bary_hi | HCP | hi | 33983/50000 | hi_OHD,lo_HDP,s91,s188,s242,s243 |
| s281 | 113 | bary_lo | CDP | lo | 14717/125000 | hi_OHD,lo_HDP,s91,s188,s192,lo_HCD |
| s286 | 114 | bary_lo | CPR | lo | 38309/250000 | hi_OHD,lo_HDP,s91,s188,lo_OCR,s218,lo_CDR |
| s291 | 115 | bary_hi | DPQ | lo | 55271/500000 | hi_OHD,lo_HDP,s91,s188,lo_ODQ,s185 |
| s299 | 116 | bary_lo | HDY | hi | 693467/1000000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,hi_OHD,lo_HDF |
| s301 | 117 | bary_lo | CDY | lo | 207783/500000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,s192,lo_HCD,lo_CDF |
| s303 | 118 | bary_hi | DYZ | lo | 114767/500000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,s128,s223,lo_DFZ |
| s307 | 119 | bary_lo | YZR | lo | 130439/1000000 | hi_OHF,lo_HFY,lo_OFY,lo_OHY,lo_OZR,s180,s181 |
| s311 | 120 | bary_lo | OCY | lo | 57511/500000 | hi_OHQ,s149,lo_OYQ,lo_OHY,s242,lo_OCQ |
| s318 | 122 | bary_hi | CYP | hi | 14273/25000 | hi_OHR,s151,s127,lo_OHY,s274,s279,s286 |
| s323 | 123 | bary_hi | OZP | lo | 27329/250000 | hi_OCD,s159,s128,lo_OCZ,s195,s91 |
| s334 | 124 | bary_hi | YZP | lo | 33593/200000 | hi_OCD,s159,s128,lo_OCZ,lo_OYP,s231,lo_DYP |
| s342 | 126 | bary_hi | DZR | lo | 22889/200000 | s274,lo_CZP,s323,lo_OCZ,s117,lo_CDR,lo_DPR |
| s346 | 127 | bary_hi | HDZ | lo | 428379/1000000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,lo_OHD,lo_HCD,s96 |
| s350 | 129 | bary_hi | CZQ | hi | 41909/250000 | hi_OCR,lo_CZR,lo_OZR,lo_OCZ,hi_OCQ,hi_CQR |
| s386 | 133 | bary_lo | CQR | lo | 133793/1000000 | hi_ODQ,lo_DQR,s207,s117,lo_OCQ,s228 |
| s397 | 134 | bary_hi | ODZ | lo | 47763/250000 | s202,s154,lo_OZR,lo_OZQ,lo_ODQ,s117 |
| s399 | 136 | bary_hi | CDZ | hi | 249561/1000000 | s202,s154,lo_OZR,lo_OZQ,hi_OCD,s228,lo_CDR |
| s407 | 138 | bary_hi | DFZ | hi | 646289/1000000 | s243,s159,s346,lo_HCZ,hi_HDF,s244 |
| s412 | 139 | bary_hi | OCP | hi | 272053/500000 | s243,s281,lo_HDP,s214,hi_OHC,hi_OCD |
| s413 | 140 | bary_hi | ODP | hi | 84351/200000 | s243,s281,lo_HDP,s214,hi_OHD,s192 |
| s418 | 142 | bary_lo | HYP | lo | 139167/1000000 | s243,s281,lo_HDP,s214,lo_HCY,s219 |
| s433 | 145 | bary_lo | ODZ | hi | 38393/125000 | s279,lo_CZP,s135,lo_HCZ,lo_OHD,hi_OCD,s91 |
| s439 | 147 | bary_lo | CDZ | lo | 3471/31250 | s279,lo_CZP,s135,lo_HCZ,lo_HCD,s281 |
| s449 | 152 | bary_lo | OZP | lo | 137621/1000000 | s299,lo_DYP,s418,lo_HDP,lo_OHZ,s397,lo_OYZ |
| s450 | 153 | bary_lo | OPQ | lo | 208969/500000 | s299,lo_DYP,s418,lo_HDP,lo_OHQ,lo_ODQ,lo_OYQ |
| s452 | 154 | bary_hi | HCP | hi | 130251/200000 | s299,lo_DYP,s418,lo_HDP,s243,lo_HCY |
| s455 | 155 | bary_lo | CDP | lo | 74401/500000 | s299,lo_DYP,s418,lo_HDP,lo_HCD,s301 |
| s457 | 157 | bary_lo | CPQ | lo | 36937/125000 | s299,lo_DYP,s418,lo_HDP,s216,s228,lo_CYQ |
| s458 | 158 | bary_lo | CPR | lo | 166637/1000000 | s299,lo_DYP,s418,lo_HDP,s218,lo_CDR,s234 |
| s461 | 159 | bary_lo | ZPR | lo | 6867/50000 | s299,lo_DYP,s418,lo_HDP,s180,s342,s307 |
| s464 | 160 | bary_hi | OHR | lo | 550137/1000000 | hi_CDQ,lo_DQR,s386,lo_CDR,s242,lo_OHD,lo_OHQ |
| s465 | 161 | bary_hi | OCR | hi | 36207/100000 | hi_CDQ,lo_DQR,s386,lo_CDR,hi_OCD,hi_OCQ |
| s466 | 162 | bary_hi | ODR | lo | 119047/500000 | hi_CDQ,lo_DQR,s386,lo_CDR,s192,lo_ODQ |
| s468 | 163 | bary_hi | OYR | lo | 173743/1000000 | hi_CDQ,lo_DQR,s386,lo_CDR,s311,s66,lo_OYQ |
| s470 | 164 | bary_hi | OPR | lo | 110411/500000 | hi_CDQ,lo_DQR,s386,lo_CDR,s195,s91,s450 |
| s471 | 165 | bary_hi | OQR | hi | 403139/1000000 | hi_CDQ,lo_DQR,s386,lo_CDR,lo_OCQ,hi_ODQ |
| s472 | 166 | bary_hi | HCR | hi | 27413/40000 | hi_CDQ,lo_DQR,s386,lo_CDR,s243,s109 |
| s477 | 167 | bary_lo | CYR | hi | 106853/200000 | hi_CDQ,lo_DQR,s386,lo_CDR,s266,s268 |
| s491 | 168 | bary_lo | CZQ | lo | 46791/500000 | s318,s334,lo_CZP,lo_CYZ,lo_CYQ,s457 |
| s495 | 169 | bary_lo | DZP | lo | 106623/1000000 | s477,s307,lo_CZR,lo_CYZ,s455,lo_DYP,lo_DPR |
| s498 | 170 | bary_hi | OYP | lo | 106293/1000000 | s407,lo_FZP,s495,lo_DFP,s66,lo_OFY,lo_OYZ |
| s504 | 3 | sum | OCD | lo | 98781/250000 | s439,lo_OCZ,s397 |
| s505 | 4 | sum | OCP | lo | 323621/1000000 | lo_CZP,lo_OCZ,s449 |
| s517 | 10 | sum | HDY | lo | 325167/1000000 | lo_DYP,lo_HDP,s418 |
| s518 | 11 | sum | CDY | lo | 216803/500000 | s439,lo_CYZ,s303 |
| s519 | 12 | sum | CDQ | lo | 319793/1000000 | lo_CDR,s386,lo_DQR |
| s520 | 13 | sum | CYP | lo | 70793/200000 | lo_CYZ,lo_CZP,s334 |
| s521 | 14 | sum | CYQ | lo | 139791/500000 | lo_CYZ,s491,lo_YZQ |
| s522 | 15 | sum | CYR | lo | 316439/1000000 | lo_CYZ,lo_CZR,s307 |
| s524 | 16 | sum | DFZ | lo | 292623/1000000 | lo_DFP,s495,lo_FZP |
| s525 | 17 | sum | DZQ | lo | 62561/200000 | lo_DQR,s342,s154 |
| s529 | 21 | sumlo | ODZ | lo | 13439/62500 | lo_ODQ,lo_OZR,s466,lo_OZQ,s471 |
| s539 | 25 | sumlo | OCZ | lo | 50329/500000 | lo_CZP,s242,lo_HCZ,s505,s452 |
| s542 | 26 | sumlo | CDZ | lo | 120353/1000000 | s455,lo_HCZ,lo_CZP,lo_HCD,s452 |
| s543 | 28 | sumlo | CZQ | lo | 93677/1000000 | s457,lo_CYZ,s521,lo_CZP,s318 |
| s545 | 30 | sumlo | ODR | lo | 241163/1000000 | lo_CDR,lo_ODQ,lo_DQR,s504,hi_CDQ |
| s546 | 31 | sumlo | ODP | lo | 123271/1000000 | s291,s66,lo_DYP,lo_ODQ,hi_DYQ |
| s547 | 32 | sumlo | CDP | lo | 151221/1000000 | s518,lo_HDP,lo_DYP,lo_HCD,s299 |
| s551 | 36 | sumlo | OYZ | lo | 26859/250000 | lo_CYZ,lo_OZQ,s539,lo_YZQ,s350 |
| s552 | 37 | sumlo | ZQR | lo | 64683/500000 | s525,lo_OZR,s342,lo_OZQ,s433 |
| s553 | 38 | sumlo | DYZ | lo | 15019/62500 | s542,lo_YZQ,lo_CYZ,s525,s350 |
| s562 | 44 | balance_lo | ZPQ | lo | 242433/1000000 | lo_CZP,lo_ODQ,s457,s529,s543,s546,hi_OCD |
| s563 | 46 | balance_lo | CQR | lo | 155467/1000000 | s519,lo_OZR,lo_DQR,s539,lo_CDR,lo_OZQ,s433 |
| s564 | 49 | balance_lo | HZP | lo | 299743/1000000 | lo_HCZ,s470,lo_CZP,s464,s214,lo_OZR,s465 |
| s565 | 50 | balance_lo | YZP | lo | 24033/125000 | lo_CYZ,s470,lo_CZP,s468,s520,lo_OZR,s465 |
| s568 | 53 | balance_lo | OZP | lo | 160111/1000000 | s461,s242,s470,lo_HCZ,lo_OZR,s214,s472 |
| s571 | 54 | balance_lo | HYQ | lo | 108103/500000 | s519,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,s517,hi_OCD |
| s577 | 60 | balance_lo | HYP | lo | 23811/125000 | s517,lo_CZP,lo_DYP,lo_HCZ,lo_HDP,lo_CYZ,s399 |
| s578 | 63 | balance_lo | HFY | lo | 20507/200000 | lo_OHF,lo_DYP,lo_OFY,lo_HDP,lo_OHY,lo_DFP,s413 |
| s587 | 66 | balance_lo | HZQ | lo | 85657/500000 | lo_HCD,lo_YZQ,s517,s543,lo_HCY,s525,s266 |
| s589 | 67 | balance_lo | HZR | lo | 149943/500000 | s242,s342,lo_HCD,lo_OZR,lo_OHD,lo_CZR,hi_OCD |
| s590 | 68 | balance_lo | FZR | lo | 182851/1000000 | lo_CDF,lo_OZR,lo_ODF,lo_CZR,lo_OCF,s342,hi_OCD |
| s592 | 71 | linear | HCQ | hi | 804733/1000000 | hi_OCQ,s242,hi_OHQ |
| s595 | 75 | linear | OHF | lo | 57707/200000 | s578,lo_OFY,lo_OHY |
| s597 | 76 | linear | OHP | lo | 389781/1000000 | s577,lo_OHY,s498 |
| s598 | 77 | linear | OCD | lo | 87207/200000 | s542,s539,s529 |
| s599 | 78 | linear | OCP | lo | 353769/1000000 | lo_CZP,s539,s568 |
| s604 | 84 | linear | OYQ | lo | 73359/250000 | s551,lo_OZQ,lo_YZQ |
| s605 | 85 | linear | OPQ | lo | 61943/125000 | s568,lo_OZQ,s562 |
| s610 | 89 | linear | HCP | lo | 485743/1000000 | lo_CZP,lo_HCZ,s564 |
| s611 | 90 | linear | HCQ | lo | 357991/1000000 | s543,lo_HCZ,s587 |
| s612 | 91 | linear | HCR | lo | 242943/500000 | lo_CZR,lo_HCZ,s589 |
| s613 | 92 | linear | HDY | lo | 47061/125000 | lo_DYP,lo_HDP,s577 |
| s614 | 93 | linear | HDZ | lo | 249683/500000 | s495,lo_HDP,s564 |
| s616 | 94 | linear | CDY | lo | 453657/1000000 | s542,lo_CYZ,s553 |
| s617 | 95 | linear | CDQ | lo | 341467/1000000 | lo_CDR,s563,lo_DQR |
| s619 | 96 | linear | CYP | lo | 47283/125000 | lo_CYZ,lo_CZP,s565 |
| s620 | 97 | linear | CYQ | lo | 279677/1000000 | lo_CYZ,s543,lo_YZQ |
| s626 | 102 | linear | OHC | lo | 87207/200000 | s598 |
| s640 | 107 | bary_hi | HFY | lo | 58639/500000 | hi_OHD,s613,s66,lo_OHY,s595,lo_HDF |
| s641 | 108 | bary_hi | CDY | hi | 698011/1000000 | hi_OHD,s613,s66,lo_OHY,hi_OCD,s243 |
| s643 | 109 | bary_hi | CYP | hi | 107257/200000 | hi_OHD,s613,s66,lo_OHY,s412,s452,s547 |
| s649 | 115 | bary_hi | DPQ | lo | 112371/1000000 | hi_OHD,lo_HDP,s546,s597,lo_ODQ,s185 |
| s651 | 118 | bary_hi | DYZ | lo | 4188/15625 | hi_OHF,s640,lo_OFY,lo_OHY,s529,s614,s524 |
| s655 | 119 | bary_lo | YZR | lo | 136459/1000000 | hi_OHF,s640,lo_OFY,lo_OHY,lo_OZR,s589,s590 |
| s658 | 120 | bary_lo | OCY | lo | 136597/1000000 | hi_OHQ,s571,s604,lo_OHY,s626,lo_OCQ |
| s660 | 121 | bary_lo | HDY | hi | 171409/250000 | hi_OHQ,s571,s604,lo_OHY,hi_OHD,hi_HDQ |
| s666 | 124 | bary_hi | YZP | lo | 101139/500000 | hi_OCD,s542,s529,s539,s498,s619,lo_DYP |
| s670 | 126 | bary_hi | DZR | lo | 29581/250000 | s412,lo_CZP,s568,s539,s545,lo_CDR,lo_DPR |
| s677 | 129 | bary_hi | CZQ | hi | 161567/1000000 | s465,lo_CZR,lo_OZR,s539,hi_OCQ,hi_CQR |
| s678 | 130 | bary_lo | DZP | lo | 115729/1000000 | s465,lo_CZR,lo_OZR,s539,s546,s547,lo_DPR |
| s704 | 134 | bary_hi | ODZ | lo | 53933/250000 | s471,s552,lo_OZR,lo_OZQ,lo_ODQ,s545 |
| s705 | 135 | bary_hi | OYZ | lo | 107773/1000000 | s471,s552,lo_OZR,lo_OZQ,s604,s468 |
| s707 | 136 | bary_hi | CDZ | hi | 209989/1000000 | s471,s552,lo_OZR,lo_OZQ,hi_OCD,s617,lo_CDR |
| s712 | 137 | bary_hi | OHZ | lo | 311227/1000000 | s243,s542,s614,lo_HCZ,s626,lo_OHD |
| s717 | 139 | bary_hi | OCP | hi | 538263/1000000 | s243,s547,lo_HDP,s610,hi_OHC,hi_OCD |
| s718 | 140 | bary_hi | ODP | hi | 158603/500000 | s243,s547,lo_HDP,s610,hi_OHD,s598 |
| s721 | 141 | bary_lo | HDP | hi | 67509/250000 | s243,s547,lo_HDP,s610,s243 |
| s723 | 142 | bary_lo | HYP | lo | 211163/1000000 | s243,s547,lo_HDP,s610,lo_HCY,s613 |
| s737 | 144 | bary_lo | OCZ | lo | 7049/62500 | s452,lo_CZP,s564,lo_HCZ,s626,s599 |
| s738 | 145 | bary_lo | ODZ | hi | 294747/1000000 | s452,lo_CZP,s564,lo_HCZ,lo_OHD,hi_OCD,s546 |
| s741 | 146 | bary_lo | HDZ | hi | 686521/1000000 | s452,lo_CZP,s564,lo_HCZ,s243,s721 |
| s743 | 147 | bary_lo | CDZ | lo | 60349/500000 | s452,lo_CZP,s564,lo_HCZ,lo_HCD,s547 |
| s744 | 148 | bary_lo | CZR | lo | 93181/1000000 | s452,lo_CZP,s564,lo_HCZ,s612,s458 |
| s752 | 152 | bary_lo | OZP | lo | 84309/500000 | s660,lo_DYP,s723,lo_HDP,s712,s704,s705 |
| s754 | 154 | bary_hi | HCP | hi | 324167/500000 | s660,lo_DYP,s723,lo_HDP,s243,lo_HCY |
| s757 | 155 | bary_lo | CDP | lo | 38917/250000 | s660,lo_DYP,s723,lo_HDP,lo_HCD,s616 |
| s759 | 157 | bary_lo | CPQ | lo | 309329/1000000 | s660,lo_DYP,s723,lo_HDP,s611,s617,s620 |
| s760 | 158 | bary_lo | CPR | lo | 88299/500000 | s660,lo_DYP,s723,lo_HDP,s612,lo_CDR,s522 |
| s763 | 159 | bary_lo | ZPR | lo | 14541/100000 | s660,lo_DYP,s723,lo_HDP,s589,s670,s655 |
| s769 | 160 | bary_hi | OHR | lo | 147161/250000 | hi_CDQ,lo_DQR,s563,lo_CDR,s626,lo_OHD,lo_OHQ |
| s770 | 162 | bary_hi | ODR | lo | 125111/500000 | hi_CDQ,lo_DQR,s563,lo_CDR,s598,lo_ODQ |
| s772 | 163 | bary_hi | OYR | lo | 94691/500000 | hi_CDQ,lo_DQR,s563,lo_CDR,s658,s66,s604 |
| s774 | 164 | bary_hi | OPR | lo | 256741/1000000 | hi_CDQ,lo_DQR,s563,lo_CDR,s599,s546,s605 |
| s775 | 166 | bary_hi | HCR | hi | 2136/3125 | hi_CDQ,lo_DQR,s563,lo_CDR,s243,s592 |
| s789 | 168 | bary_lo | CZQ | lo | 51071/500000 | s643,s666,lo_CZP,lo_CYZ,s620,s759 |
| s795 | 2 | sum | OHF | lo | 151639/500000 | s640,lo_OFY,lo_OHY |
| s797 | 3 | sum | OCD | lo | 224607/500000 | s743,s737,s704 |
| s798 | 4 | sum | OCP | lo | 187201/500000 | lo_CZP,s737,s752 |
| s801 | 7 | sum | OYQ | lo | 293773/1000000 | s705,lo_OZQ,lo_YZQ |
| s804 | 8 | sum | HCD | lo | 734411/1000000 | s757,s610,lo_HDP |
| s808 | 9 | sum | HCR | lo | 486067/1000000 | s744,lo_HCZ,s589 |
| s809 | 10 | sum | HDY | lo | 397163/1000000 | lo_DYP,lo_HDP,s723 |
| s811 | 11 | sum | CDY | lo | 48173/100000 | s743,lo_CYZ,s651 |
| s812 | 13 | sum | CYP | lo | 194139/500000 | lo_CYZ,lo_CZP,s666 |
| s813 | 14 | sum | CYQ | lo | 144071/500000 | lo_CYZ,s789,lo_YZQ |
| s816 | 16 | sum | DFZ | lo | 301729/1000000 | lo_DFP,s678,lo_FZP |
| s817 | 17 | sum | DZQ | lo | 34069/100000 | lo_DQR,s670,s552 |
| s821 | 20 | sumlo | ODY | lo | 191729/1000000 | lo_ODF,s801,lo_ODQ,lo_OFY,hi_OFQ |
| s822 | 21 | sumlo | ODZ | lo | 108911/500000 | lo_ODQ,lo_OZR,s770,lo_OZQ,s471 |
| s824 | 22 | sumlo | HCF | lo | 263281/1000000 | s804,s795,lo_HDF,s626,hi_OHD |
| s831 | 25 | sumlo | OCZ | lo | 29063/250000 | lo_CZP,s626,lo_HCZ,s798,s754 |
| s836 | 26 | sumlo | CDZ | lo | 127677/1000000 | s757,lo_HCZ,lo_CZP,s804,s754 |
| s837 | 27 | sumlo | CZR | lo | 19011/200000 | s760,lo_HCZ,lo_CZP,s808,s754 |
| s839 | 28 | sumlo | CZQ | lo | 10361/100000 | s759,lo_CYZ,s813,lo_CZP,s643 |
| s840 | 30 | sumlo | ODR | lo | 12657/50000 | lo_CDR,lo_ODQ,lo_DQR,s797,hi_CDQ |
| s841 | 31 | sumlo | ODP | lo | 124797/1000000 | s649,s821,lo_DYP,lo_ODQ,hi_DYQ |
| s842 | 32 | sumlo | CDP | lo | 164957/1000000 | s811,lo_HDP,lo_DYP,s804,s660 |
| s847 | 36 | sumlo | OYZ | lo | 1882/15625 | lo_CYZ,lo_OZQ,s831,lo_YZQ,s677 |
| s849 | 37 | sumlo | ZQR | lo | 14483/100000 | s817,lo_OZR,s670,lo_OZQ,s738 |
| s851 | 38 | sumlo | DYZ | lo | 269597/1000000 | s836,lo_YZQ,lo_CYZ,s817,s677 |
| s860 | 44 | balance_lo | ZPQ | lo | 251501/1000000 | lo_CZP,lo_ODQ,s759,s822,s839,s841,hi_OCD |
| s861 | 46 | balance_lo | CQR | lo | 34753/200000 | s617,lo_OZR,lo_DQR,s831,lo_CDR,lo_OZQ,s738 |
| s862 | 46 | balance_lo | ODZ | lo | 1751/8000 | s617,lo_OZR,lo_DQR,s831,lo_CDR,lo_OZQ,hi_CQR |
| s863 | 49 | balance_lo | HZP | lo | 85477/250000 | lo_HCZ,s774,lo_CZP,s769,s610,lo_OZR,s465 |
| s864 | 50 | balance_lo | YZP | lo | 214321/1000000 | lo_CYZ,s774,lo_CZP,s772,s812,lo_OZR,s465 |
| s868 | 53 | balance_lo | OZP | lo | 193783/1000000 | s763,s626,s774,lo_HCZ,lo_OZR,s610,s775 |
| s870 | 54 | balance_lo | HYQ | lo | 57833/250000 | s617,lo_OHY,lo_ODQ,lo_HCY,lo_OCQ,s809,hi_OCD |
| s876 | 60 | balance_lo | HYP | lo | 258271/1000000 | s809,lo_CZP,lo_DYP,lo_HCZ,lo_HDP,lo_CYZ,s707 |
| s878 | 61 | balance_lo | YZR | lo | 34831/250000 | s847,s760,lo_OZR,s812,s772,lo_CZP,s717 |
| s879 | 62 | balance_lo | OCF | lo | 16599/50000 | s626,s816,s824,s862,s795,s836,s741 |
| s880 | 63 | balance_lo | HFY | lo | 17931/125000 | s795,lo_DYP,lo_OFY,lo_HDP,lo_OHY,lo_DFP,s718 |
| s887 | 66 | balance_lo | HZQ | lo | 40439/200000 | s804,lo_YZQ,s809,s839,lo_HCY,s817,s641 |
| s889 | 67 | balance_lo | HZR | lo | 322707/1000000 | s626,s670,s804,lo_OZR,lo_OHD,s837,hi_OCD |
| s890 | 68 | balance_lo | FZR | lo | 197127/1000000 | lo_CDF,lo_OZR,lo_ODF,s837,s879,s670,hi_OCD |
| s892 | 71 | linear | HCQ | hi | 149993/200000 | hi_OCQ,s626,hi_OHQ |
| s894 | 75 | linear | OHF | lo | 41181/125000 | s880,lo_OFY,lo_OHY |
| s898 | 77 | linear | OCD | lo | 115701/250000 | s836,s831,s862 |
| s899 | 78 | linear | OCP | lo | 80607/200000 | lo_CZP,s831,s868 |
| s906 | 84 | linear | OYQ | lo | 19153/62500 | s847,lo_OZQ,lo_YZQ |
| s907 | 85 | linear | OPQ | lo | 134571/250000 | s868,lo_OZQ,s860 |
| s909 | 86 | linear | OQR | lo | 33083/100000 | lo_OZQ,lo_OZR,s849 |
| s911 | 87 | linear | HCD | lo | 7437/10000 | s842,s610,lo_HDP |
| s913 | 89 | linear | HCP | lo | 131977/250000 | lo_CZP,lo_HCZ,s863 |
| s914 | 90 | linear | HCQ | lo | 79761/200000 | s839,lo_HCZ,s887 |
| s915 | 91 | linear | HCR | lo | 255381/500000 | s837,lo_HCZ,s889 |
| s916 | 92 | linear | HDY | lo | 444271/1000000 | lo_DYP,lo_HDP,s876 |
| s917 | 93 | linear | HDZ | lo | 550637/1000000 | s678,lo_HDP,s863 |
| s919 | 94 | linear | CDY | lo | 245137/500000 | s836,lo_CYZ,s851 |
| s920 | 95 | linear | CDQ | lo | 71953/200000 | lo_CDR,s861,lo_DQR |
| s922 | 96 | linear | CYP | lo | 400321/1000000 | lo_CYZ,lo_CZP,s864 |
| s923 | 97 | linear | CYQ | lo | 28961/100000 | lo_CYZ,s839,lo_YZQ |
| s924 | 98 | linear | CYR | lo | 327379/1000000 | lo_CYZ,s837,s878 |
| s928 | 99 | linear | DZQ | lo | 178077/500000 | lo_DQR,s670,s849 |
| s932 | 102 | linear | OHC | lo | 115701/250000 | s898 |
| s933 | 104 | linear | HDF | hi | 2563/10000 | s911 |
| s934 | 105 | linear | CDF | hi | 736719/1000000 | s824 |
| s944 | 107 | bary_hi | HFY | lo | 155013/1000000 | hi_OHD,s916,s821,lo_OHY,s894,lo_HDF |
| s945 | 108 | bary_hi | CDY | hi | 675571/1000000 | hi_OHD,s916,s821,lo_OHY,hi_OCD,s243 |
| s947 | 109 | bary_hi | CYP | hi | 523797/1000000 | hi_OHD,s916,s821,lo_OHY,s717,s754,s842 |
| s948 | 110 | bary_hi | CYQ | hi | 18749/40000 | hi_OHD,s916,s821,lo_OHY,hi_OCQ,s892,hi_CDQ |
| s957 | 118 | bary_hi | DYZ | lo | 139799/500000 | hi_OHF,s944,lo_OFY,lo_OHY,s862,s917,s816 |
| s960 | 119 | bary_lo | YZR | lo | 35473/250000 | hi_OHF,s944,lo_OFY,lo_OHY,lo_OZR,s889,s890 |
| s964 | 120 | bary_lo | OCY | lo | 75237/500000 | hi_OHQ,s870,s906,lo_OHY,s932,lo_OCQ |
| s966 | 121 | bary_lo | HDY | hi | 42039/62500 | hi_OHQ,s870,s906,lo_OHY,hi_OHD,hi_HDQ |
| s972 | 126 | bary_hi | DZR | lo | 30167/250000 | s717,lo_CZP,s868,s831,s840,lo_CDR,lo_DPR |
| s974 | 129 | bary_hi | CZQ | hi | 32259/200000 | s465,s837,lo_OZR,s831,hi_OCQ,hi_CQR |
| s975 | 130 | bary_lo | DZP | lo | 11983/100000 | s465,s837,lo_OZR,s831,s841,s842,lo_DPR |
| s976 | 132 | bary_lo | OHZ | hi | 8308/15625 | hi_ODQ,s928,lo_OZQ,s862,hi_OHD,hi_OHQ |
| s1000 | 138 | bary_hi | DFZ | hi | 37097/62500 | s243,s836,s917,lo_HCZ,s933,s934 |
| s1001 | 139 | bary_hi | OCP | hi | 267759/500000 | s243,s842,lo_HDP,s913,hi_OHC,hi_OCD |
| s1002 | 140 | bary_hi | ODP | hi | 267973/1000000 | s243,s842,lo_HDP,s913,hi_OHD,s898 |
| s1005 | 141 | bary_lo | HDP | hi | 42827/200000 | s243,s842,lo_HDP,s913,s243 |
| s1007 | 142 | bary_lo | HYP | lo | 134059/500000 | s243,s842,lo_HDP,s913,lo_HCY,s916 |
| s1008 | 143 | bary_hi | CDP | hi | 71523/250000 | s243,s842,lo_HDP,s913,s243 |
| s1019 | 144 | bary_lo | OCZ | lo | 124199/1000000 | s754,lo_CZP,s863,lo_HCZ,s932,s899 |
| s1020 | 145 | bary_lo | ODZ | hi | 293261/1000000 | s754,lo_CZP,s863,lo_HCZ,lo_OHD,hi_OCD,s841 |
| s1023 | 146 | bary_lo | HDZ | hi | 677509/1000000 | s754,lo_CZP,s863,lo_HCZ,s243,s1005 |
| s1025 | 147 | bary_lo | CDZ | lo | 130341/1000000 | s754,lo_CZP,s863,lo_HCZ,s911,s842 |
| s1026 | 148 | bary_lo | CZR | lo | 49299/500000 | s754,lo_CZP,s863,lo_HCZ,s915,s760 |
| s1027 | 149 | bary_hi | DYZ | hi | 404689/1000000 | s754,lo_CZP,s863,lo_HCZ,s916,s945,lo_DYP |
| s1028 | 150 | bary_hi | DZP | hi | 7627/40000 | s754,lo_CZP,s863,lo_HCZ,lo_HDP,s1008 |
| s1035 | 154 | bary_hi | HCP | hi | 64333/100000 | s966,lo_DYP,s1007,lo_HDP,s243,lo_HCY |
| s1037 | 155 | bary_lo | CDP | lo | 85307/500000 | s966,lo_DYP,s1007,lo_HDP,s911,s919 |
| s1039 | 157 | bary_lo | CPQ | lo | 5198/15625 | s966,lo_DYP,s1007,lo_HDP,s914,s920,s923 |
| s1040 | 158 | bary_lo | CPR | lo | 183167/1000000 | s966,lo_DYP,s1007,lo_HDP,s915,lo_CDR,s924 |
| s1044 | 159 | bary_lo | ZPR | lo | 151537/1000000 | s966,lo_DYP,s1007,lo_HDP,s889,s972,s960 |
| s1053 | 160 | bary_hi | OHR | lo | 609649/1000000 | hi_CDQ,lo_DQR,s861,lo_CDR,s932,lo_OHD,lo_OHQ |
| s1056 | 163 | bary_hi | OYR | lo | 202079/1000000 | hi_CDQ,lo_DQR,s861,lo_CDR,s964,s821,s906 |
| s1058 | 164 | bary_hi | OPR | lo | 69491/250000 | hi_CDQ,lo_DQR,s861,lo_CDR,s899,s841,s907 |
| s1059 | 166 | bary_hi | HCR | hi | 671393/1000000 | hi_CDQ,lo_DQR,s861,lo_CDR,s243,s892 |
| s1064 | 167 | bary_lo | CYR | hi | 480179/1000000 | hi_CDQ,lo_DQR,s861,lo_CDR,s945,s948 |
| s1073 | 168 | bary_lo | CZQ | lo | 22097/200000 | s947,s864,lo_CZP,lo_CYZ,s923,s1039 |
| s1075 | 170 | bary_hi | OYP | lo | 112769/1000000 | s1000,lo_FZP,s975,lo_DFP,s821,lo_OFY,s847 |
| s1080 | 0 | sum | OHD | lo | 729/1000 | s916,s821,lo_OHY |
| s1081 | 2 | sum | OHF | lo | 341013/1000000 | s944,lo_OFY,lo_OHY |
| s1084 | 3 | sum | OCD | lo | 94683/200000 | s1025,s1019,s862 |
| s1085 | 4 | sum | OCP | lo | 205491/500000 | lo_CZP,s1019,s868 |
| s1088 | 5 | sub | OCZ | hi | 21309/125000 | s465,s1026,lo_OZR |
| s1090 | 8 | sum | HCD | lo | 395761/500000 | s1037,s913,lo_HDP |
| s1094 | 9 | sum | HCR | lo | 102861/200000 | s1026,lo_HCZ,s889 |
| s1095 | 10 | sum | HDY | lo | 227059/500000 | lo_DYP,lo_HDP,s1007 |
| s1097 | 11 | sum | CDY | lo | 502939/1000000 | s1025,lo_CYZ,s957 |
| s1098 | 14 | sum | CYQ | lo | 59297/200000 | lo_CYZ,s1073,lo_YZQ |
| s1100 | 16 | sum | DFZ | lo | 30583/100000 | lo_DFP,s975,lo_FZP |
| s1101 | 17 | sum | DZQ | lo | 179249/500000 | lo_DQR,s972,s849 |
| s1104 | 20 | sumlo | ODY | lo | 98589/500000 | lo_ODF,s906,lo_ODQ,lo_OFY,hi_OFQ |
| s1106 | 22 | sumlo | HCF | lo | 978/3125 | s1090,s1081,lo_HDF,s932,hi_OHD |
| s1114 | 23 | sumlo | HCQ | lo | 416901/1000000 | s920,s932,s1090,lo_OCQ,hi_OCD |
| s1115 | 25 | sumlo | OCZ | lo | 63157/500000 | lo_CZP,s932,lo_HCZ,s1085,s1035 |
| s1120 | 26 | sumlo | CDZ | lo | 69543/500000 | s1037,lo_HCZ,lo_CZP,s1090,s1035 |
| s1121 | 27 | sumlo | CZR | lo | 50413/500000 | s1040,lo_HCZ,lo_CZP,s1094,s1035 |
| s1125 | 29 | sumlo | ODP | lo | 128057/1000000 | lo_DYP,s1080,lo_HDP,s1104,s966 |
| s1126 | 30 | sumlo | ODR | lo | 258499/1000000 | lo_CDR,lo_ODQ,lo_DQR,s1084,hi_CDQ |
| s1128 | 32 | sumlo | CDP | lo | 178977/1000000 | s1097,lo_HDP,lo_DYP,s1090,s966 |
| s1130 | 34 | sumlo | DPQ | lo | 23567/200000 | s975,s185,s1101,lo_HDP,s1023 |
| s1134 | 36 | sumlo | OYZ | lo | 31613/250000 | lo_CYZ,lo_OZQ,s1115,lo_YZQ,s974 |
| s1138 | 38 | sumlo | CZQ | lo | 114347/1000000 | s1120,lo_YZQ,lo_CYZ,s1101,s1027 |
| s1139 | 38 | sumlo | DYZ | lo | 143449/500000 | s1120,lo_YZQ,lo_CYZ,s1101,s974 |
| s1144 | 39 | sumlo | HYP | lo | 301739/1000000 | s922,lo_HDP,lo_DYP,s913,s1008 |
| s1145 | 40 | sumlo | FYP | lo | 149893/1000000 | lo_DFP,s864,lo_DYP,lo_FZP,s1028 |
| s1150 | 46 | balance_lo | CQR | lo | 183639/1000000 | s920,lo_OZR,lo_DQR,s1115,lo_CDR,lo_OZQ,s1020 |
| s1151 | 46 | balance_lo | ODZ | lo | 115073/500000 | s920,lo_OZR,lo_DQR,s1115,lo_CDR,lo_OZQ,hi_CQR |
| s1152 | 49 | balance_lo | HZP | lo | 72717/200000 | lo_HCZ,s1058,lo_CZP,s1053,s913,lo_OZR,s465 |
| s1153 | 50 | balance_lo | YZP | lo | 226127/1000000 | lo_CYZ,s1058,lo_CZP,s1056,s922,lo_OZR,s465 |
| s1157 | 53 | balance_lo | OZP | lo | 43217/200000 | s1044,s932,s1058,lo_HCZ,lo_OZR,s913,s1059 |
| s1164 | 56 | balance_lo | YZR | lo | 15043/100000 | s1134,lo_CDR,lo_OZR,s1097,s1056,s1120,hi_OCD |
| s1165 | 57 | balance_lo | ZQR | lo | 76501/500000 | lo_OZQ,lo_CDR,s909,s1120,lo_OZR,s920,hi_OCD |
| s1166 | 62 | balance_lo | OCF | lo | 96307/250000 | s932,s1100,s1106,s1151,s1081,s1120,s1023 |
| s1167 | 63 | balance_lo | HFY | lo | 182899/1000000 | s1081,lo_DYP,lo_OFY,lo_HDP,lo_OHY,lo_DFP,s1002 |
| s1169 | 65 | balance_lo | HYQ | lo | 54041/200000 | lo_HCY,s1130,s1098,lo_HDP,s1114,lo_DYP,s1008 |
| s1180 | 66 | balance_lo | HZQ | lo | 235177/1000000 | s1090,lo_YZQ,s1095,s1138,lo_HCY,s1101,s945 |
| s1182 | 67 | balance_lo | HZR | lo | 352393/1000000 | s932,s972,s1090,lo_OZR,s1080,s1121,hi_OCD |
| s1183 | 68 | balance_lo | FZR | lo | 53471/250000 | lo_CDF,lo_OZR,lo_ODF,s1121,s1166,s972,hi_OCD |
| s1184 | 70 | linear | OHC | hi | 19037/31250 | lo_HCZ,s1088,s976 |
| s1186 | 71 | linear | HCQ | hi | 180799/250000 | hi_OCQ,s932,hi_OHQ |
| s1188 | 72 | linear | OHD | lo | 93037/125000 | s1095,s1104,lo_OHY |
| s1190 | 73 | linear | OHD | hi | 39163/40000 | s1023,s1151,s976 |
| s1192 | 74 | linear | HDQ | lo | 54787/125000 | lo_ODQ,s1188,hi_OHQ |
| s1193 | 75 | linear | OHF | lo | 368899/1000000 | s1167,lo_OFY,lo_OHY |
| s1195 | 76 | linear | OHP | lo | 126877/250000 | s1144,lo_OHY,s1075 |
| s1199 | 77 | linear | OCD | lo | 247773/500000 | s1120,s1115,s1151 |
| s1201 | 78 | linear | OCP | lo | 435399/1000000 | lo_CZP,s1115,s1157 |
| s1203 | 79 | linear | OCR | lo | 16007/50000 | s1121,s1115,lo_OZR |
| s1205 | 80 | linear | OPQ | lo | 582071/1000000 | s1039,s1201,hi_OCQ |
| s1206 | 81 | linear | OCQ | lo | 629/6250 | s1150,s1203,s471 |
| s1209 | 82 | linear | DZQ | hi | 218699/500000 | hi_ODQ,s1151,lo_OZQ |
| s1211 | 84 | linear | OYQ | lo | 78113/250000 | s1134,lo_OZQ,lo_YZQ |
| s1213 | 86 | linear | OQR | lo | 169501/500000 | lo_OZQ,lo_OZR,s1165 |
| s1215 | 87 | linear | HCD | lo | 159977/200000 | s1128,s913,lo_HDP |
| s1217 | 87 | linear | HCP | hi | 635023/1000000 | s1128,s243,lo_HDP |
| s1219 | 89 | linear | HCP | lo | 109917/200000 | lo_CZP,lo_HCZ,s1152 |
| s1221 | 90 | linear | HCQ | lo | 110631/250000 | s1138,lo_HCZ,s1180 |
| s1222 | 91 | linear | HCR | lo | 546219/1000000 | s1121,lo_HCZ,s1182 |
| s1223 | 92 | linear | HDY | lo | 487739/1000000 | lo_DYP,lo_HDP,s1144 |
| s1224 | 93 | linear | HDZ | lo | 115283/200000 | s975,lo_HDP,s1152 |
| s1227 | 94 | linear | CDY | lo | 64873/125000 | s1120,lo_CYZ,s1139 |
| s1228 | 95 | linear | CDQ | lo | 369639/1000000 | lo_CDR,s1150,lo_DQR |
| s1230 | 96 | linear | CYP | lo | 412127/1000000 | lo_CYZ,lo_CZP,s1153 |
| s1231 | 97 | linear | CYQ | lo | 300347/1000000 | lo_CYZ,s1138,lo_YZQ |
| s1232 | 98 | linear | CYR | lo | 5379/15625 | lo_CYZ,s1121,s1164 |
| s1235 | 99 | linear | DZQ | lo | 36667/100000 | lo_DQR,s972,s1165 |
| s1236 | 100 | quad | DFZ | lo | 153301/500000 | s1209 |
| s1239 | 101 | support_z | YPR | lo | 218681/1000000 | s1230,s1064 |
| s1240 | 102 | linear | OHC | lo | 247773/500000 | s1199 |
| s1241 | 103 | linear | OHF | hi | 19037/31250 | s1184 |
| s1244 | 106 | bary_hi | CFY | hi | 538059/1000000 | s1184,lo_HCY,s964,lo_OHY,hi_OCF,hi_HCF |
| s1258 | 107 | bary_hi | HFY | lo | 38521/200000 | s1190,s1223,s1104,lo_OHY,s1193,lo_HDF |
| s1261 | 109 | bary_hi | CYP | hi | 254067/500000 | s1190,s1223,s1104,lo_OHY,s1001,s1217,s1128 |
| s1269 | 111 | bary_hi | OCP | hi | 53409/100000 | s1190,lo_HDP,s1125,s1195,s1184,hi_OCD |
| s1274 | 118 | bary_hi | DYZ | lo | 7367/25000 | s1241,s1258,lo_OFY,lo_OHY,s1151,s1224,s1236 |
| s1278 | 119 | bary_lo | YZR | lo | 75527/500000 | s1241,s1258,lo_OFY,lo_OHY,lo_OZR,s1182,s1183 |
| s1284 | 120 | bary_lo | OCY | lo | 164193/1000000 | hi_OHQ,s1169,s1211,lo_OHY,s1240,s1206 |
| s1286 | 121 | bary_lo | HDY | hi | 654179/1000000 | hi_OHQ,s1169,s1211,lo_OHY,s1190,hi_HDQ |
| s1291 | 126 | bary_hi | DZR | lo | 60909/500000 | s1269,lo_CZP,s1157,s1115,s1126,lo_CDR,lo_DPR |
| s1294 | 129 | bary_hi | CZQ | hi | 160529/1000000 | s465,s1121,lo_OZR,s1115,hi_OCQ,hi_CQR |
| s1295 | 130 | bary_lo | DZP | lo | 62423/500000 | s465,s1121,lo_OZR,s1115,s1125,s1128,lo_DPR |
| s1296 | 131 | bary_hi | YZP | lo | 22661/100000 | s465,s1121,lo_OZR,s1115,s1075,s1230,s1239 |
| s1297 | 132 | bary_lo | OHZ | hi | 257663/500000 | hi_ODQ,s1235,lo_OZQ,s1151,s1190,hi_OHQ |
| s1335 | 141 | bary_lo | HDP | hi | 89219/500000 | s243,s1128,lo_HDP,s1219,s243 |
| s1337 | 142 | bary_lo | HYP | lo | 12203/40000 | s243,s1128,lo_HDP,s1219,lo_HCY,s1223 |
| s1338 | 143 | bary_hi | CDP | hi | 52883/200000 | s243,s1128,lo_HDP,s1219,s243 |
| s1353 | 144 | bary_lo | OCZ | lo | 68169/500000 | s1217,lo_CZP,s1152,lo_HCZ,s1240,s1201 |
| s1354 | 145 | bary_lo | ODZ | hi | 69873/250000 | s1217,lo_CZP,s1152,lo_HCZ,s1188,hi_OCD,s1125 |
| s1357 | 146 | bary_lo | HDZ | hi | 66747/100000 | s1217,lo_CZP,s1152,lo_HCZ,s243,s1335 |
| s1359 | 147 | bary_lo | CDZ | lo | 28671/200000 | s1217,lo_CZP,s1152,lo_HCZ,s1215,s1128 |
| s1360 | 148 | bary_lo | CZR | lo | 106819/1000000 | s1217,lo_CZP,s1152,lo_HCZ,s1222,s1040 |
| s1368 | 151 | bary_lo | ODP | lo | 66921/500000 | s1286,lo_DYP,s1337,lo_HDP,s1188,s1104 |
| s1373 | 155 | bary_lo | CDP | lo | 93747/500000 | s1286,lo_DYP,s1337,lo_HDP,s1215,s1227 |
| s1375 | 157 | bary_lo | CPQ | lo | 352873/1000000 | s1286,lo_DYP,s1337,lo_HDP,s1221,s1228,s1231 |
| s1376 | 158 | bary_lo | CPR | lo | 3863/20000 | s1286,lo_DYP,s1337,lo_HDP,s1222,lo_CDR,s1232 |
| s1381 | 159 | bary_lo | ZPR | lo | 158753/1000000 | s1286,lo_DYP,s1337,lo_HDP,s1182,s1291,s1278 |
| s1393 | 162 | bary_hi | ODR | lo | 263399/1000000 | hi_CDQ,lo_DQR,s1150,lo_CDR,s1199,lo_ODQ |
| s1397 | 164 | bary_hi | OPR | lo | 149933/500000 | hi_CDQ,lo_DQR,s1150,lo_CDR,s1201,s1368,s1205 |
| s1399 | 166 | bary_hi | HCR | hi | 133093/200000 | hi_CDQ,lo_DQR,s1150,lo_CDR,s243,s1186 |
| s1412 | 168 | bary_lo | CZQ | lo | 59777/500000 | s1261,s1296,lo_CZP,lo_CYZ,s1231,s1375 |
| s1416 | 0 | sum | OHD | lo | 777917/1000000 | s1223,s1104,lo_OHY |
| s1417 | 2 | sum | OHF | lo | 75721/200000 | s1258,lo_OFY,lo_OHY |
| s1422 | 4 | sum | OCP | lo | 445423/1000000 | lo_CZP,s1353,s1157 |
| s1424 | 5 | sum | OCR | lo | 336157/1000000 | s1360,s1353,lo_OZR |
| s1426 | 5 | sub | OCZ | hi | 162251/1000000 | s465,s1360,lo_OZR |
| s1427 | 6 | sum | ODQ | lo | 695401/1000000 | lo_DQR,s1393,s1213 |
| s1431 | 8 | sum | HCD | lo | 830079/1000000 | s1373,s1219,lo_HDP |
| s1432 | 8 | sub | HCP | hi | 313253/500000 | s243,s1373,lo_HDP |
| s1439 | 11 | sum | CDY | lo | 106207/200000 | s1359,lo_CYZ,s1274 |
| s1440 | 13 | sum | CYP | lo | 41261/100000 | lo_CYZ,lo_CZP,s1296 |
| s1441 | 14 | sum | CYQ | lo | 152777/500000 | lo_CYZ,s1412,lo_YZQ |
| s1443 | 16 | sum | DFZ | lo | 155423/500000 | lo_DFP,s1295,lo_FZP |
| s1444 | 17 | sum | DZQ | lo | 18391/50000 | lo_DQR,s1291,s1165 |
| s1447 | 18 | sumlo | OHR | lo | 68067/100000 | s1424,s1416,s1393,s1240,hi_OCD |
| s1449 | 20 | sumlo | ODY | lo | 199891/1000000 | lo_ODF,s1211,s1427,lo_OFY,hi_OFQ |
| s1450 | 22 | sumlo | HCF | lo | 368059/1000000 | s1431,s1417,lo_HDF,s1240,s1190 |
| s1462 | 23 | sumlo | HCQ | lo | 231543/500000 | s1228,s1240,s1431,s1206,hi_OCD |
| s1463 | 24 | sumlo | HCR | lo | 282251/500000 | lo_CDR,s1240,s1431,s1424,hi_OCD |
| s1464 | 25 | sumlo | OCZ | lo | 139679/1000000 | lo_CZP,s1240,lo_HCZ,s1422,s1432 |
| s1473 | 26 | sumlo | CDZ | lo | 3021/20000 | s1373,lo_HCZ,lo_CZP,s1431,s1432 |
| s1475 | 27 | sumlo | CZR | lo | 112467/1000000 | s1376,lo_HCZ,lo_CZP,s1463,s1432 |
| s1479 | 29 | sumlo | ODP | lo | 2172/15625 | lo_DYP,s1416,lo_HDP,s1449,s1286 |
| s1485 | 32 | sumlo | CDP | lo | 193499/1000000 | s1439,lo_HDP,lo_DYP,s1431,s1286 |
| s1489 | 34 | sumlo | DPQ | lo | 133229/1000000 | s1295,s1192,s1444,lo_HDP,s1357 |
| s1493 | 35 | sumlo | OYP | lo | 58529/500000 | s1440,lo_OFY,s1145,s1284,s1244 |
| s1499 | 36 | sumlo | OYZ | lo | 67399/500000 | lo_CYZ,lo_OZQ,s1464,lo_YZQ,s1294 |
| s1516 | 39 | sumlo | HYP | lo | 338423/1000000 | s1440,lo_HDP,lo_DYP,s1219,s1338 |
| s1520 | 42 | sumlo | ODR | lo | 67083/250000 | lo_CDR,s1213,lo_DQR,s1424,hi_CQR |
| s1527 | 49 | balance_lo | HZP | lo | 393021/1000000 | lo_HCZ,s1397,lo_CZP,s1447,s1219,lo_OZR,s465 |
| s1530 | 51 | balance_lo | ODZ | lo | 122109/500000 | s1291,s1240,lo_OZR,s1431,s1520,lo_HCZ,s1399 |
| s1531 | 51 | balance_lo | HCR | lo | 290739/500000 | s1291,s1240,lo_OZR,s1431,s1520,lo_HCZ,s1354 |
| s1532 | 52 | balance_lo | OPR | lo | 302521/1000000 | s1479,s1531,lo_DPR,s1240,s1520,s1219,s243 |
| s1533 | 53 | balance_lo | OZP | lo | 2373/10000 | s1381,s1240,s1532,lo_HCZ,lo_OZR,s1219,s1399 |
| s1547 | 62 | balance_lo | OCF | lo | 225563/500000 | s1240,s1443,s1450,s1530,s1417,s1473,s1357 |
| s1551 | 64 | balance_lo | ODP | lo | 69899/500000 | s1547,lo_DYP,lo_OFY,s1485,s1284,lo_DFP,s1244 |
| s1554 | 65 | balance_lo | HYQ | lo | 63441/200000 | lo_HCY,s1489,s1441,lo_HDP,s1462,lo_DYP,s1338 |
| s1573 | 70 | linear | OHC | hi | 584577/1000000 | lo_HCZ,s1426,s1297 |
| s1581 | 73 | linear | OHD | hi | 469289/500000 | s1357,s1530,s1297 |
| s1588 | 76 | linear | OHP | lo | 548481/1000000 | s1516,lo_OHY,s1493 |
| s1600 | 79 | linear | OCR | lo | 172573/500000 | s1475,s1464,lo_OZR |
| s1617 | 84 | linear | OYQ | lo | 160399/500000 | s1499,lo_OZQ,lo_YZQ |
| s1625 | 87 | linear | HCP | hi | 620501/1000000 | s1485,s243,lo_HDP |
| s1628 | 88 | linear | HCY | lo | 32633/250000 | s1440,s1625,s1516 |
| s1630 | 89 | linear | HCP | lo | 579021/1000000 | lo_CZP,lo_HCZ,s1527 |
| s1637 | 92 | linear | HDY | lo | 524423/1000000 | lo_DYP,lo_HDP,s1516 |
| s1698 | 111 | bary_hi | OCP | hi | 52161/100000 | s1581,lo_HDP,s1551,s1588,s1573,hi_OCD |
| s1718 | 121 | bary_lo | HDY | hi | 155567/250000 | hi_OHQ,s1554,s1617,lo_OHY,s1581,hi_HDQ |
| s1731 | 125 | bary_lo | CZR | lo | 5663/50000 | s1698,lo_CZP,s1533,s1464,s1600,s1376 |
| s1738 | 128 | bary_hi | CDZ | hi | 33989/200000 | s465,s1731,lo_OZR,s1464,hi_OCD,lo_CDR |
| s1793 | 142 | bary_lo | HYP | lo | 348171/1000000 | s243,s1485,lo_HDP,s1630,s1628,s1637 |
| s1833 | 156 | bary_lo | CZP | hi | 1827/20000 | s1718,lo_DYP,s1793,lo_HDP,lo_HCZ,s1738,lo_CYZ |

## Conclusion

{"triangle":"CZP","lower":"lo_CZP","upper":"s1833"}
