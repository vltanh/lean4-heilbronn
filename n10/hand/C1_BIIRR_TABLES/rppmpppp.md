# Leaf rppmpppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":1,"FZP":1,"DYZ":1}

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
| 32 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 33 | interior_line | ["PR","Y","OHC","Y",-1] |
| 34 | plu | ["HODZP","HZP",1] |
| 35 | plu | ["DOHZP","DZP",-1] |
| 36 | plu | ["YOHDZ","YOZ",1] |
| 37 | plu | ["YHDFZ","YFZ",-1] |
| 38 | plu | ["YHDZP","YZP",1] |
| 39 | plu | ["ZOHFP","ZOF",-1] |
| 40 | plu | ["ZOCFP","ZCF",-1] |
| 41 | plu | ["POHFZ","POF",-1] |
| 42 | plu | ["POCFZ","PCF",-1] |
| 43 | plu | ["PHCFY","PFY",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFQ | CFQ | hi | 294790571/360500000 | "C043" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 3 | ["fan","OHZ","HYZ","OHY","OYZ"] | ["fan","OHZ","Y"] |
| 4 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 5 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 6 | ["fan","ODP","DZP","ODZ","OZP"] | ["fan","ODP","Z"] |
| 7 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 8 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 9 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 10 | ["fan","CDY","CDZ","CYZ","DYZ"] | ["fan","CDY","Z"] |
| 11 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 12 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 13 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 14 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 15 | ["plu","OCD","OFQ","OCF","ODQ","OCQ","ODF"] | ["plu","OCDFQ"] |
| 16 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 17 | ["plu","HCP","HDF","HCD","HFP","HCF","HDP"] | ["plu","HCDFP"] |
| 18 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 19 | ["plu","HCD","OCZ","CDZ","OHC","HCZ","OCD"] | ["plu","COHDZ"] |
| 20 | ["plu","HCD","OCP","CDP","OHC","HCP","OCD"] | ["plu","COHDP"] |
| 21 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 22 | ["plu","CFQ","OCD","CDF","OCQ","CDQ","OCF"] | ["plu","CODFQ"] |
| 23 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 24 | ["plu","CYZ","HCD","CDY","HCZ","CDZ","HCY"] | ["plu","CHDYZ"] |
| 25 | ["plu","CYP","HCD","CDP","HCY","CDY","HCP"] | ["plu","CHDYP"] |
| 26 | ["plu","CDP","HCZ","CDZ","HCP","CZP","HCD"] | ["plu","CHDZP"] |
| 27 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 28 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 29 | ["plu","HCD","ODQ","CDQ","OHD","HDQ","OCD"] | ["plu","DOHCQ"] |
| 30 | ["plu","CDY","ODF","CDF","ODY","DFY","OCD"] | ["plu","DOCFY"] |
| 31 | ["plu","CDZ","ODF","CDF","ODZ","DFZ","OCD"] | ["plu","DOCFZ"] |
| 32 | ["plu","CDP","HDF","CDF","HDP","DFP","HCD"] | ["plu","DHCFP"] |
| 33 | ["plu","CDF","HDQ","CDQ","HDF","DFQ","HCD"] | ["plu","DHCFQ"] |
| 34 | ["plu","DYP","HCD","CDP","HDY","CDY","HDP"] | ["plu","DHCYP"] |
| 35 | ["plu","DZP","HDF","DFP","HDZ","DFZ","HDP"] | ["plu","DHFZP"] |
| 36 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 37 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 38 | ["plu","DFY","HCF","CDF","HFY","CFY","HDF"] | ["plu","FHCDY"] |
| 39 | ["plu","CDF","HFZ","CFZ","HDF","DFZ","HCF"] | ["plu","FHCDZ"] |
| 40 | ["plu","CDF","HFP","CFP","HDF","DFP","HCF"] | ["plu","FHCDP"] |
| 41 | ["plu","DFZ","HFP","DFP","HFZ","FZP","HDF"] | ["plu","FHDZP"] |
| 42 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 43 | ["plu","HCZ","OZP","CZP","OHZ","HZP","OCZ"] | ["plu","ZOHCP"] |
| 44 | ["plu","HZP","OFZ","FZP","OHZ","HFZ","OZP"] | ["plu","ZOHFP"] |
| 45 | ["plu","CFZ","OZP","CZP","OFZ","FZP","OCZ"] | ["plu","ZOCFP"] |
| 46 | ["plu","HCP","OZP","CZP","OHP","HZP","OCP"] | ["plu","POHCZ"] |
| 47 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 48 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 49 | ["plu","DZP","OFP","DFP","OZP","FZP","ODP"] | ["plu","PODFZ"] |
| 50 | ["plu","CDP","HFP","CFP","HDP","DFP","HCP"] | ["plu","PHCDF"] |
| 51 | ["plu","CFP","HZP","CZP","HFP","FZP","HCP"] | ["plu","PHCFZ"] |
| 52 | ["plu","DZP","HFP","DFP","HZP","FZP","HDP"] | ["plu","PHDFZ"] |
| 53 | ["balance",[[1,"HDF","OCP"],[-1,"DFP","OHC"],[-1,"HFP","OCD"],[-1,"HDP","OCF"]]] | ["six","OCHDFP"] |
| 54 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 55 | ["balance",[[1,"HCF","ODZ"],[1,"CFZ","OHD"],[1,"HFZ","OCD"],[-1,"HCZ","ODF"]]] | ["six","ODHCFZ"] |
| 56 | ["balance",[[1,"HCF","ODP"],[1,"CFP","OHD"],[1,"HFP","OCD"],[-1,"HCP","ODF"]]] | ["six","ODHCFP"] |
| 57 | ["balance",[[1,"HCZ","ODP"],[-1,"CZP","OHD"],[-1,"HZP","OCD"],[-1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 58 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[1,"CZP","ODF"],[1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 59 | ["balance",[[-1,"CYZ","ODP"],[1,"YZP","OCD"],[1,"CZP","ODY"],[1,"CYP","ODZ"]]] | ["six","ODCYZP"] |
| 60 | ["balance",[[1,"ODF","HCQ"],[1,"DFQ","OHC"],[-1,"OFQ","HCD"],[1,"ODQ","HCF"]]] | ["six","HCODFQ"] |
| 61 | ["balance",[[1,"ODY","HCZ"],[1,"DYZ","OHC"],[-1,"OYZ","HCD"],[1,"ODZ","HCY"]]] | ["six","HCODYZ"] |
| 62 | ["balance",[[1,"OCD","HFY"],[1,"CDF","OHY"],[1,"ODF","HCY"],[-1,"OCF","HDY"]]] | ["six","HYOCDF"] |
| 63 | ["balance",[[1,"OCD","HYZ"],[1,"CDZ","OHY"],[1,"ODZ","HCY"],[-1,"OCZ","HDY"]]] | ["six","HYOCDZ"] |
| 64 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 65 | ["balance",[[1,"ODF","HYQ"],[1,"DFQ","OHY"],[-1,"OFQ","HDY"],[1,"ODQ","HFY"]]] | ["six","HYODFQ"] |
| 66 | ["balance",[[1,"CDF","HYZ"],[-1,"DFZ","HCY"],[-1,"CFZ","HDY"],[-1,"CDZ","HFY"]]] | ["six","HYCDFZ"] |
| 67 | ["balance",[[-1,"ODF","CZP"],[-1,"DFZ","OCP"],[1,"OFZ","CDP"],[-1,"ODZ","CFP"]]] | ["six","CPODFZ"] |
| 68 | ["balance",[[1,"OHC","DYZ"],[1,"HCY","ODZ"],[-1,"OCY","HDZ"],[1,"OHY","CDZ"]]] | ["six","DZOHCY"] |
| 69 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 70 | ["balance",[[-1,"OHC","DFP"],[1,"HCD","OFP"],[-1,"OCD","HFP"],[-1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 71 | ["balance",[[1,"HCD","FYZ"],[-1,"CDF","HYZ"],[-1,"HDF","CYZ"],[-1,"HCF","DYZ"]]] | ["six","YZHCDF"] |
| 72 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 73 | ["balance",[[-1,"OHD","FZP"],[-1,"HDF","OZP"],[1,"ODF","HZP"],[-1,"OHF","DZP"]]] | ["six","ZPOHDF"] |
| 74 | ["balance",[[1,"HCD","FZP"],[-1,"CDF","HZP"],[1,"HDF","CZP"],[1,"HCF","DZP"]]] | ["six","ZPHCDF"] |
| 75 | ["balance",[[1,"HCD","YZP"],[-1,"CDY","HZP"],[-1,"HDY","CZP"],[-1,"HCY","DZP"]]] | ["six","ZPHCDY"] |
| 76 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 77 | ["linear",{"OHD":1,"ODZ":-1,"OHZ":-1,"HDZ":-1},"0"] | ["affine_quad","OHDZ",-1] |
| 78 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 79 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 80 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 81 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 82 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 83 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 84 | ["linear",{"HCD":-1,"HDQ":1,"HCQ":1,"CDQ":-1},"0"] | ["affine_quad","HCDQ",-1] |
| 85 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 86 | ["linear",{"CDY":1,"CYZ":-1,"CDZ":-1,"DYZ":-1},"0"] | ["affine_quad","CDYZ",1] |
| 87 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 88 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 89 | ["quad","HDF","OHD","93/91"] | ["quad","ODFH","YZP"] |
| 90 | ["quad","CFQ","DFQ","93/91"] | ["quad","CQDF","ZPR"] |
| 91 | ["quad","CDQ","CDY","93/125"] | ["quad","CQDY","ZR"] |
| 92 | ["support","DFZ","HDF","HDZ","1023/1000"] | ["support_pent","DZYHF"] |
| 93 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 94 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 95 | ["bary",["HDY",-1],[["OHD",-1],null,["HCD",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HD"] |
| 96 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["CDF",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DF"] |
| 97 | ["bary",["DYP",1],[["ODP",1],["HDP",1],["CDP",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DP"] |
| 98 | ["bary",["FYP",-1],[["OFP",-1],["HFP",-1],["CFP",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","FP"] |
| 99 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 100 | ["bary",["HDY",-1],[["OHD",-1],null,null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HD"] |
| 101 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DF"] |
| 102 | ["bary",["ODZ",1],[null,null,["ODF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OD"] |
| 103 | ["bary",["OFZ",-1],[null,["ODF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OF"] |
| 104 | ["bary",["HCZ",1],[["OHC",-1],["HCD",1],["HCF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","HC"] |
| 105 | ["bary",["CDZ",1],[["OCD",1],null,["CDF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CD"] |
| 106 | ["bary",["HFZ",-1],[["OHF",-1],["HDF",-1],["HFP",-1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","HF"] |
| 107 | ["bary",["CYZ",-1],[["HCY",-1],null,["CDY",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","CY"] |
| 108 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OC"] |
| 109 | ["bary",["ODP",1],[["OHD",1],null,["ODF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OD"] |
| 110 | ["bary",["OFP",-1],[["OHF",1],["ODF",-1],null],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OF"] |
| 111 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HC"] |
| 112 | ["bary",["CDP",1],[["HCD",1],null,["CDF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CD"] |
| 113 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CY"] |
| 114 | ["bary",["DZP",-1],[["HDZ",-1],null,["DFZ",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DZ"] |
| 115 | ["bary",["YZP",1],[["HYZ",1],["DYZ",1],["FYZ",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","YZ"] |
| 116 | ["bary",["CDZ",1],[null,null,["CDF",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","CD"] |
| 117 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 118 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 119 | ["bary",["ODZ",1],[["OCD",-1],null,["ODP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OD"] |
| 120 | ["bary",["OFZ",-1],[["OCF",-1],["ODF",-1],["OFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OF"] |
| 121 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HC"] |
| 122 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 123 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HF"] |
| 124 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 125 | ["bary",["CFZ",-1],[null,["CDF",-1],["CFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CF"] |
| 126 | ["bary",["CYZ",-1],[null,["CDY",-1],["CYP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","CY"] |
| 127 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 128 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 129 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 130 | ["bary",["ODP",1],[null,["ODF",1],["ODZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OD"] |
| 131 | ["bary",["OFP",-1],[["ODF",-1],null,["OFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OF"] |
| 132 | ["bary",["OZP",1],[["ODZ",-1],["OFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OZ"] |
| 133 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 134 | ["bary",["HFP",-1],[["HDF",-1],null,["HFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HF"] |
| 135 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 136 | ["bary",["CDP",1],[null,["CDF",1],["CDZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CD"] |
| 137 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 138 | ["bary",["DYP",-1],[null,["DFY",-1],["DYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","DY"] |
| 139 | ["bary",["FYP",1],[["DFY",1],null,["FYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","FY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 1 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s21 | 7 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s23 | 7 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s26 | 8 | sub | DFZ | hi | 351851/500000 | hi_CDF,lo_CDZ,lo_CFZ |
| s27 | 9 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s35 | 14 | sumlo | OCY | lo | 11981/125000 | lo_OCD,lo_OHY,lo_ODY,lo_OHC,hi_OHD |
| s56 | 16 | sumlo | HCF | lo | 14409/100000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s58 | 17 | sumlo | HCP | lo | 254713/1000000 | lo_HCD,lo_HFP,s56,lo_HDP,hi_HDF |
| s78 | 27 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s27 |
| s94 | 32 | sumlo | CDP | lo | 421843/1000000 | lo_CDF,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s105 | 36 | sumlo | HCF | lo | 76103/500000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s112 | 40 | diffhi | CFP | hi | 331933/1000000 | hi_CDF,s23,lo_DFP,s105,lo_HDF |
| s115 | 41 | sumlo | DFZ | lo | 2883/10000 | lo_DFP,lo_HFZ,lo_FZP,lo_HDF,s23 |
| s117 | 42 | sumlo | CFP | lo | 105463/1000000 | lo_CDF,lo_FZP,s78,lo_DFP,s26 |
| s119 | 51 | sumlo | HZP | lo | 97421/1000000 | lo_CZP,lo_HFP,lo_FZP,s58,s112 |
| s120 | 52 | sumlo | DZP | lo | 18447/125000 | lo_DFP,s119,lo_FZP,lo_HDP,s23 |
| s122 | 53 | balance_lo | OCP | lo | 45687/200000 | lo_DFP,lo_OHC,lo_HFP,lo_OCD,lo_HDP,lo_OCF,hi_HDF |
| s123 | 54 | balance_lo | CFY | lo | 62507/500000 | s105,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s146 | 62 | balance_lo | HDY | lo | 231639/1000000 | lo_OCD,lo_HFY,lo_CDF,lo_OHY,lo_ODF,lo_HCY,hi_OCF |
| s155 | 67 | balance_lo | OFZ | lo | 199243/1000000 | lo_ODF,lo_CZP,s115,s122,lo_ODZ,s117,s27 |
| s172 | 74 | balance_lo | HZP | lo | 126953/1000000 | lo_HCD,lo_FZP,lo_HDF,lo_CZP,s105,s120,hi_CDF |
| s173 | 76 | linear | OHC | lo | 35231/125000 | lo_HCY,s35,lo_OHY |
| s212 | 88 | linear | DFZ | lo | 41697/125000 | lo_DFP,s120,lo_FZP |
| s214 | 89 | quad | OHD | lo | 357989/500000 | hi_HDF |
| s216 | 90 | quad | DFQ | lo | 204251/1000000 | hi_CFQ |
| s217 | 91 | quad | CDY | lo | 81/250 | hi_CDQ |
| s221 | 92 | support_z | HDZ | lo | 58449/250000 | s212,hi_HDF |
| s222 | 93 | linear | HCD | hi | 721/1000 | lo_HDF |
| s223 | 94 | linear | HCF | hi | 153/500 | lo_CDF |
| s224 | 94 | linear | CDF | hi | 423897/500000 | s105 |
| s243 | 99 | bary_lo | OCY | lo | 48321/500000 | hi_OHD,s146,lo_ODY,lo_OHY,s173,lo_OCD |
| s295 | 105 | bary_lo | CDZ | lo | 3451/25000 | hi_ODF,s212,s155,lo_ODZ,lo_OCD,lo_CDF |
| s356 | 109 | bary_hi | ODP | hi | 676463/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,hi_ODF |
| s357 | 110 | bary_lo | OFP | hi | 169291/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_OHF,hi_ODF |
| s361 | 111 | bary_lo | HCP | lo | 12859/50000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCD,s105 |
| s368 | 112 | bary_hi | CDP | hi | 137899/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s222,s224 |
| s370 | 113 | bary_hi | CYP | lo | 34587/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCY,s217,s123 |
| s378 | 114 | bary_hi | DZP | lo | 43109/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s221,s212 |
| s410 | 119 | bary_hi | ODZ | hi | 29041/100000 | s368,s378,lo_CZP,s295,lo_OCD,s356 |
| s414 | 121 | bary_lo | HCZ | lo | 18137/100000 | s368,s378,lo_CZP,s295,lo_HCD,s361 |
| s415 | 122 | bary_lo | HDZ | hi | 395731/1000000 | s368,s378,lo_CZP,s295,s222,lo_HDP |
| s416 | 123 | bary_hi | HFZ | lo | 35717/250000 | s368,s378,lo_CZP,s295,s105,lo_HDF,lo_HFP |
| s420 | 125 | bary_hi | CFZ | lo | 71701/500000 | s368,s378,lo_CZP,s295,lo_CDF,s117 |
| s421 | 126 | bary_hi | CYZ | lo | 6119/62500 | s368,s378,lo_CZP,s295,s217,s370 |
| s424 | 127 | bary_hi | DFZ | hi | 3267/6250 | s368,s378,lo_CZP,s295,s224,s21 |
| s466 | 130 | bary_hi | ODP | hi | 327131/500000 | s424,lo_FZP,s378,lo_DFP,hi_ODF,s410 |
| s470 | 137 | bary_hi | CFP | lo | 74493/500000 | s424,lo_FZP,s378,lo_DFP,lo_CDF,s420 |
| s474 | 0 | sum | OHC | lo | 141321/500000 | lo_HCY,s243,lo_OHY |
| s478 | 10 | sum | CDY | lo | 20559/62500 | s295,s421,lo_DYZ |
| s479 | 13 | sum | DFZ | lo | 89609/250000 | lo_DFP,s378,lo_FZP |
| s484 | 16 | sumlo | HDY | lo | 59143/200000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s223 |
| s488 | 18 | sumlo | OCF | lo | 78233/250000 | lo_CDF,s474,s105,lo_OCD,s222 |
| s492 | 23 | sumlo | CFY | lo | 79479/500000 | lo_CDF,lo_HCY,s478,s105,s222 |
| s494 | 24 | sumlo | CYZ | lo | 12569/125000 | s478,s414,s295,lo_HCY,s222 |
| s496 | 27 | sumlo | CFZ | lo | 77147/500000 | lo_CDF,lo_CZP,s295,s470,s368 |
| s497 | 28 | sumlo | ODF | lo | 191023/250000 | lo_CDF,s214,lo_HDF,lo_OCD,s222 |
| s498 | 28 | diffhi | OHD | hi | 894011/1000000 | s222,hi_ODF,lo_HDF,lo_OCD,lo_CDF |
| s505 | 31 | sumlo | CDZ | lo | 71593/500000 | lo_CDF,lo_ODZ,s479,lo_OCD,hi_ODF |
| s512 | 33 | sumlo | HDQ | lo | 129507/500000 | lo_CDQ,lo_HDF,s216,lo_HCD,s224 |
| s518 | 35 | sumlo | DZP | lo | 22499/125000 | lo_DFP,s221,s479,lo_HDP,hi_HDF |
| s522 | 36 | sumlo | HCF | lo | 81163/500000 | lo_CDF,lo_OHF,lo_HDF,s488,hi_ODF |
| s527 | 42 | sumlo | CFP | lo | 37731/250000 | lo_CDF,lo_FZP,s496,lo_DFP,s424 |
| s535 | 58 | balance_lo | CFZ | lo | 157587/1000000 | lo_FZP,lo_OCD,lo_CZP,s497,s527,lo_ODZ,s466 |
| s545 | 61 | balance_lo | OYZ | lo | 29659/250000 | lo_ODY,s414,lo_DYZ,s474,lo_ODZ,lo_HCY,s222 |
| s564 | 68 | balance_lo | OCY | lo | 15241/125000 | s474,lo_DYZ,lo_HCY,lo_ODZ,lo_OHY,s505,s415 |
| s567 | 69 | balance_lo | OFZ | lo | 41921/125000 | s474,s479,lo_OCD,s416,s214,s535,s222 |
| s570 | 70 | balance_lo | OFP | lo | 42261/200000 | s474,lo_DFP,lo_OCD,lo_HFP,s214,s527,s222 |
| s576 | 72 | balance_lo | OZP | lo | 39401/200000 | s474,s518,lo_OCD,s172,s214,lo_CZP,s222 |
| s577 | 73 | balance_lo | HZP | lo | 14783/100000 | s214,lo_FZP,lo_HDF,s576,lo_OHF,s518,hi_ODF |
| s578 | 75 | balance_lo | YZP | lo | 25761/200000 | s478,s577,s484,lo_CZP,lo_HCY,s518,s222 |
| s579 | 76 | linear | OHC | lo | 38491/125000 | lo_HCY,s564,lo_OHY |
| s590 | 79 | linear | ODF | lo | 196701/250000 | s479,lo_ODZ,s567 |
| s594 | 80 | linear | ODP | hi | 631153/1000000 | lo_DFP,hi_ODF,s570 |
| s595 | 82 | linear | ODY | lo | 76159/250000 | lo_DYZ,lo_ODZ,s545 |
| s599 | 86 | linear | CDY | lo | 168369/500000 | s505,s494,lo_DYZ |
| s603 | 88 | linear | DFZ | lo | 45749/125000 | lo_DFP,s518,lo_FZP |
| s605 | 92 | support_z | HDZ | lo | 64129/250000 | s603,hi_HDF |
| s606 | 94 | linear | CDF | hi | 418837/500000 | s522 |
| s621 | 99 | bary_lo | OCY | lo | 125069/1000000 | s498,s484,s595,lo_OHY,s579,lo_OCD |
| s629 | 100 | bary_lo | HDY | hi | 3971/8000 | s498,s484,s595,lo_OHY,s498 |
| s641 | 101 | bary_hi | DFY | hi | 311829/500000 | s498,s484,s595,lo_OHY,hi_ODF,hi_HDF |
| s670 | 105 | bary_lo | CDZ | lo | 579/4000 | hi_ODF,s603,s567,lo_ODZ,lo_OCD,lo_CDF |
| s681 | 106 | bary_hi | HFZ | lo | 151057/1000000 | s594,s518,s576,lo_ODZ,lo_OHF,lo_HDF,lo_HFP |
| s700 | 112 | bary_hi | CDP | hi | 136907/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s222,s606 |
| s701 | 113 | bary_hi | CYP | lo | 187123/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCY,s599,s492 |
| s706 | 114 | bary_hi | DZP | lo | 189193/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s605,s603 |
| s718 | 117 | bary_lo | HYP | lo | 129523/1000000 | s606,lo_DFP,s527,s94,lo_HCY,s484,lo_HFY |
| s721 | 120 | bary_hi | OFZ | lo | 344147/1000000 | s700,s706,lo_CZP,s670,s488,s590,s570 |
| s723 | 122 | bary_lo | HDZ | hi | 1917/5000 | s700,s706,lo_CZP,s670,s222,lo_HDP |
| s724 | 124 | bary_lo | HYZ | lo | 137079/1000000 | s700,s706,lo_CZP,s670,lo_HCY,s484,s718 |
| s726 | 125 | bary_hi | CFZ | lo | 157749/1000000 | s700,s706,lo_CZP,s670,lo_CDF,s527 |
| s727 | 126 | bary_hi | CYZ | lo | 53323/500000 | s700,s706,lo_CZP,s670,s599,s701 |
| s729 | 127 | bary_hi | DFZ | hi | 505721/1000000 | s700,s706,lo_CZP,s670,s606,s21 |
| s762 | 135 | bary_lo | HYP | lo | 8649/62500 | s729,lo_FZP,s706,lo_DFP,s484,lo_HFY,s724 |
| s763 | 137 | bary_hi | CFP | lo | 156633/1000000 | s729,lo_FZP,s706,lo_DFP,lo_CDF,s726 |
| s766 | 0 | sum | OHC | lo | 311069/1000000 | lo_HCY,s621,lo_OHY |
| s770 | 4 | sum | ODF | lo | 803139/1000000 | s603,lo_ODZ,s721 |
| s771 | 4 | sub | DFZ | hi | 498311/1000000 | hi_ODF,lo_ODZ,s721 |
| s774 | 10 | sum | CDY | lo | 86099/250000 | s670,s727,lo_DYZ |
| s777 | 13 | sum | DFZ | lo | 375193/1000000 | lo_DFP,s706,lo_FZP |
| s782 | 16 | sumlo | HCF | lo | 182299/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s629 |
| s784 | 17 | sumlo | HCP | lo | 133163/500000 | lo_HCD,lo_HFP,s782,lo_HDP,hi_HDF |
| s785 | 18 | sumlo | OCF | lo | 43547/125000 | lo_CDF,s766,s782,lo_OCD,s222 |
| s789 | 22 | sumlo | OCD | lo | 19779/100000 | lo_CDF,lo_OCQ,lo_CDQ,s785,hi_CFQ |
| s790 | 23 | sumlo | CFY | lo | 35319/200000 | lo_CDF,lo_HCY,s774,s782,s222 |
| s799 | 27 | sumlo | CFZ | lo | 79629/500000 | lo_CDF,lo_CZP,s670,s763,s700 |
| s802 | 28 | diffhi | OHD | hi | 892337/1000000 | s222,hi_ODF,lo_HDF,s789,lo_CDF |
| s803 | 29 | sumlo | ODQ | lo | 348111/1000000 | lo_CDQ,s214,s512,s789,s222 |
| s806 | 31 | sumlo | CDZ | lo | 37081/250000 | lo_CDF,lo_ODZ,s777,s789,hi_ODF |
| s809 | 33 | sumlo | HDQ | lo | 262143/1000000 | lo_CDQ,lo_HDF,s216,lo_HCD,s606 |
| s813 | 35 | sumlo | DZP | lo | 191989/1000000 | lo_DFP,s605,s777,lo_HDP,hi_HDF |
| s821 | 38 | sumlo | HCF | lo | 182491/1000000 | lo_CDF,lo_HFY,s790,lo_HDF,s641 |
| s822 | 42 | sumlo | CFP | lo | 159243/1000000 | lo_CDF,lo_FZP,s799,lo_DFP,s771 |
| s825 | 57 | balance_lo | HCZ | lo | 47767/250000 | lo_CZP,s214,s577,s789,s784,lo_ODZ,s594 |
| s827 | 58 | balance_lo | CFZ | lo | 3419/20000 | lo_FZP,s789,lo_CZP,s770,s822,lo_ODZ,s594 |
| s828 | 59 | balance_lo | CYZ | lo | 4513/40000 | s578,s789,lo_CZP,s595,s701,lo_ODZ,s594 |
| s834 | 60 | balance_hi | HCQ | hi | 181823/250000 | hi_OFQ,s222,s216,s766,s803,s821,s770 |
| s835 | 61 | balance_lo | OYZ | lo | 132849/1000000 | s595,s825,lo_DYZ,s766,lo_ODZ,lo_HCY,s222 |
| s847 | 68 | balance_lo | OCY | lo | 16749/125000 | s766,lo_DYZ,lo_HCY,lo_ODZ,lo_OHY,s806,s723 |
| s849 | 69 | balance_lo | OFZ | lo | 23317/62500 | s766,s777,s789,s681,s214,s827,s222 |
| s852 | 70 | balance_lo | OFP | lo | 22377/100000 | s766,lo_DFP,s789,lo_HFP,s214,s822,s222 |
| s856 | 71 | balance_lo | FYZ | lo | 199143/1000000 | lo_CDF,s724,lo_HDF,s828,s821,lo_DYZ,s222 |
| s859 | 72 | balance_lo | OZP | lo | 215737/1000000 | s766,s813,s789,s577,s214,lo_CZP,s222 |
| s860 | 73 | balance_lo | HZP | lo | 15461/100000 | s214,lo_FZP,lo_HDF,s859,lo_OHF,s813,hi_ODF |
| s862 | 76 | linear | OHC | lo | 39999/125000 | lo_HCY,s847,lo_OHY |
| s867 | 78 | linear | OHZ | lo | 22683/62500 | s724,lo_OHY,s835 |
| s870 | 79 | linear | ODF | lo | 168253/200000 | s777,lo_ODZ,s849 |
| s873 | 79 | linear | DFZ | hi | 234693/500000 | hi_ODF,lo_ODZ,s849 |
| s874 | 80 | linear | ODP | hi | 9667/15625 | lo_DFP,hi_ODF,s852 |
| s875 | 82 | linear | ODY | lo | 318849/1000000 | lo_DYZ,lo_ODZ,s835 |
| s878 | 85 | linear | CDF | lo | 694467/1000000 | s806,s827,s777 |
| s879 | 86 | linear | CDY | lo | 354149/1000000 | s806,s828,lo_DYZ |
| s884 | 88 | linear | DFZ | lo | 377989/1000000 | lo_DFP,s813,lo_FZP |
| s887 | 92 | support_z | HDZ | lo | 66231/250000 | s884,hi_HDF |
| s889 | 94 | linear | CDF | hi | 817509/1000000 | s821 |
| s904 | 99 | bary_lo | OCY | lo | 134953/1000000 | s802,s484,s875,lo_OHY,s862,s789 |
| s907 | 100 | bary_lo | HDY | hi | 60061/125000 | s802,s484,s875,lo_OHY,s802 |
| s916 | 101 | bary_hi | DFY | hi | 613047/1000000 | s802,s484,s875,lo_OHY,hi_ODF,hi_HDF |
| s938 | 102 | bary_hi | ODZ | hi | 184397/1000000 | hi_ODF,s884,s849,lo_ODZ,hi_ODF |
| s939 | 103 | bary_lo | OFZ | hi | 464469/1000000 | hi_ODF,s884,s849,lo_ODZ,hi_ODF |
| s942 | 105 | bary_lo | CDZ | lo | 74481/500000 | hi_ODF,s884,s849,lo_ODZ,s789,s878 |
| s951 | 106 | bary_hi | HFZ | lo | 78929/500000 | s874,s813,s859,lo_ODZ,lo_OHF,lo_HDF,lo_HFP |
| s962 | 108 | bary_lo | OCP | lo | 35087/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s862,s789,s785 |
| s964 | 111 | bary_lo | HCP | lo | 16649/62500 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCD,s821 |
| s969 | 112 | bary_hi | CDP | hi | 13493/25000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s222,s889 |
| s970 | 113 | bary_hi | CYP | lo | 7911/40000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCY,s879,s790 |
| s973 | 114 | bary_hi | DZP | lo | 39079/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s887,s884 |
| s975 | 115 | bary_lo | YZP | lo | 27731/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s724,lo_DYZ,s856 |
| s987 | 120 | bary_hi | OFZ | lo | 187641/500000 | s969,s973,lo_CZP,s942,s785,s870,s852 |
| s988 | 121 | bary_lo | HCZ | lo | 38621/200000 | s969,s973,lo_CZP,s942,lo_HCD,s964 |
| s989 | 122 | bary_lo | HDZ | hi | 372101/1000000 | s969,s973,lo_CZP,s942,s222,lo_HDP |
| s990 | 124 | bary_lo | HYZ | lo | 17557/125000 | s969,s973,lo_CZP,s942,lo_HCY,s484,s762 |
| s992 | 126 | bary_hi | CYZ | lo | 115609/1000000 | s969,s973,lo_CZP,s942,s879,s970 |
| s1025 | 130 | bary_hi | ODP | hi | 601307/1000000 | s873,lo_FZP,s973,lo_DFP,hi_ODF,s938 |
| s1027 | 132 | bary_hi | OZP | hi | 32749/125000 | s873,lo_FZP,s973,lo_DFP,lo_ODZ,s939 |
| s1028 | 133 | bary_lo | HCP | lo | 285939/1000000 | s873,lo_FZP,s973,lo_DFP,lo_HCD,s821,s988 |
| s1035 | 0 | sum | OHC | lo | 320953/1000000 | lo_HCY,s904,lo_OHY |
| s1036 | 2 | sum | OHD | lo | 180213/250000 | s887,lo_ODZ,s867 |
| s1037 | 3 | sum | OHZ | lo | 73261/200000 | s990,lo_OHY,s835 |
| s1040 | 4 | sum | ODF | lo | 846271/1000000 | s884,lo_ODZ,s987 |
| s1041 | 4 | sub | DFZ | hi | 58397/125000 | hi_ODF,lo_ODZ,s987 |
| s1043 | 6 | sum | ODP | lo | 126033/250000 | s973,lo_ODZ,s859 |
| s1044 | 8 | sum | CDF | lo | 697901/1000000 | s942,s827,s884 |
| s1045 | 10 | sum | CDY | lo | 357571/1000000 | s942,s992,lo_DYZ |
| s1046 | 11 | sum | CDP | lo | 437357/1000000 | s942,lo_CZP,s973 |
| s1047 | 13 | sum | DFZ | lo | 76279/200000 | lo_DFP,s973,lo_FZP |
| s1051 | 15 | sumlo | OCD | lo | 101369/500000 | s785,s803,lo_OCQ,s1040,hi_OFQ |
| s1053 | 16 | sumlo | HCF | lo | 188327/1000000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s907 |
| s1056 | 18 | sumlo | OCF | lo | 181813/500000 | s1044,s1035,s1053,s1051,s222 |
| s1059 | 21 | sumlo | OCD | lo | 42373/200000 | lo_CDQ,s1035,lo_HCD,lo_OCQ,s834 |
| s1061 | 23 | sumlo | CFY | lo | 91709/500000 | s1044,lo_HCY,s1045,s1053,s222 |
| s1065 | 25 | sumlo | CYP | lo | 198221/1000000 | s1046,lo_HCY,s1045,s1028,s222 |
| s1073 | 28 | diffhi | OHD | hi | 881723/1000000 | s222,hi_ODF,lo_HDF,s1059,s1044 |
| s1074 | 29 | sumlo | ODQ | lo | 355973/1000000 | lo_CDQ,s1036,s809,s1059,s222 |
| s1077 | 31 | sumlo | CDZ | lo | 77881/500000 | s1044,lo_ODZ,s1047,s1059,hi_ODF |
| s1089 | 37 | sumlo | OFP | lo | 60793/250000 | lo_DFP,s987,lo_FZP,s1040,s1041 |
| s1090 | 38 | sumlo | HCF | lo | 94673/500000 | s1044,lo_HFY,s1061,lo_HDF,s916 |
| s1097 | 48 | sumlo | CFP | lo | 92979/500000 | lo_CZP,s1089,lo_FZP,s962,s1027 |
| s1098 | 49 | sumlo | DZP | lo | 197729/1000000 | lo_DFP,s859,lo_FZP,s1043,s357 |
| s1099 | 57 | balance_lo | HCZ | lo | 52547/250000 | lo_CZP,s1036,s860,s1059,s1028,lo_ODZ,s1025 |
| s1102 | 58 | balance_lo | CFZ | lo | 38483/200000 | lo_FZP,s1059,lo_CZP,s1040,s1097,lo_ODZ,s1025 |
| s1103 | 59 | balance_lo | CYZ | lo | 5153/40000 | s975,s1059,lo_CZP,s875,s1065,lo_ODZ,s1025 |
| s1108 | 60 | balance_hi | HCQ | hi | 34163/50000 | hi_OFQ,s222,s216,s1035,s1074,s1090,s1040 |
| s1109 | 61 | balance_lo | OYZ | lo | 73173/500000 | s875,s1099,lo_DYZ,s1035,lo_ODZ,lo_HCY,s222 |
| s1126 | 68 | balance_lo | OCY | lo | 14239/100000 | s1035,lo_DYZ,lo_HCY,lo_ODZ,lo_OHY,s1077,s989 |
| s1128 | 69 | balance_hi | OHC | hi | 106671/250000 | s222,s939,s1059,s951,s1036,s1102,s1047 |
| s1129 | 69 | balance_lo | OFZ | lo | 408539/1000000 | s1035,s1047,s1059,s951,s1036,s1102,s222 |
| s1131 | 70 | balance_lo | OFP | lo | 127323/500000 | s1035,lo_DFP,s1059,lo_HFP,s1036,s1097,s222 |
| s1136 | 72 | balance_lo | OZP | lo | 226431/1000000 | s1035,s1098,s1059,s860,s1036,lo_CZP,s222 |
| s1139 | 73 | balance_lo | HZP | lo | 31771/200000 | s1036,lo_FZP,lo_HDF,s1136,lo_OHF,s1098,hi_ODF |
| s1142 | 76 | linear | OHC | lo | 32839/100000 | lo_HCY,s1126,lo_OHY |
| s1148 | 77 | linear | OHD | lo | 724229/1000000 | s887,lo_ODZ,s1037 |
| s1150 | 78 | linear | OHZ | lo | 189901/500000 | s990,lo_OHY,s1109 |
| s1158 | 79 | linear | ODF | lo | 441467/500000 | s1047,lo_ODZ,s1129 |
| s1161 | 79 | linear | DFZ | hi | 433919/1000000 | hi_ODF,lo_ODZ,s1129 |
| s1163 | 80 | linear | ODP | hi | 146953/250000 | lo_DFP,hi_ODF,s1131 |
| s1164 | 81 | linear | DFQ | lo | 252527/1000000 | s1158,s1074,hi_OFQ |
| s1165 | 82 | linear | ODY | lo | 166173/500000 | lo_DYZ,lo_ODZ,s1109 |
| s1166 | 83 | linear | ODP | lo | 12929/25000 | s1098,lo_ODZ,s1136 |
| s1170 | 84 | linear | HDQ | lo | 14487/50000 | lo_CDQ,lo_HCD,s1108 |
| s1172 | 85 | linear | CDF | lo | 182393/250000 | s1077,s1102,s1047 |
| s1175 | 86 | linear | CDY | lo | 377587/1000000 | s1077,s1103,lo_DYZ |
| s1176 | 87 | linear | CDP | lo | 446491/1000000 | s1077,lo_CZP,s1098 |
| s1179 | 88 | linear | DFZ | lo | 383729/1000000 | lo_DFP,s1098,lo_FZP |
| s1183 | 92 | support_z | HDZ | lo | 268947/1000000 | s1179,hi_HDF |
| s1184 | 94 | linear | HCF | hi | 67607/250000 | s1172 |
| s1185 | 94 | linear | CDF | hi | 405327/500000 | s1090 |
| s1189 | 95 | bary_hi | HDY | lo | 309117/1000000 | s1128,lo_HCY,s1126,lo_OHY,s1148,lo_HCD |
| s1196 | 96 | bary_lo | DFY | lo | 12721/25000 | s1128,lo_HCY,s1126,lo_OHY,s1158,lo_HDF,s1172 |
| s1198 | 97 | bary_lo | DYP | lo | 8203/31250 | s1128,lo_HCY,s1126,lo_OHY,s1166,lo_HDP,s1176 |
| s1204 | 98 | bary_hi | FYP | lo | 148493/1000000 | s1128,lo_HCY,s1126,lo_OHY,s1131,lo_HFP,s1097 |
| s1207 | 99 | bary_lo | OCY | lo | 1169/8000 | s1073,s1189,s1165,lo_OHY,s1142,s1059 |
| s1210 | 100 | bary_lo | HDY | hi | 456377/1000000 | s1073,s1189,s1165,lo_OHY,s1073 |
| s1219 | 101 | bary_hi | DFY | hi | 599531/1000000 | s1073,s1189,s1165,lo_OHY,hi_ODF,hi_HDF |
| s1238 | 102 | bary_hi | ODZ | hi | 14319/100000 | hi_ODF,s1179,s1129,lo_ODZ,hi_ODF |
| s1239 | 103 | bary_lo | OFZ | hi | 458729/1000000 | hi_ODF,s1179,s1129,lo_ODZ,hi_ODF |
| s1240 | 104 | bary_hi | HCZ | hi | 122871/500000 | hi_ODF,s1179,s1129,lo_ODZ,s1142,s222,s1184 |
| s1242 | 105 | bary_lo | CDZ | lo | 159439/1000000 | hi_ODF,s1179,s1129,lo_ODZ,s1059,s1172 |
| s1257 | 106 | bary_hi | HFZ | lo | 164649/1000000 | s1163,s1098,s1136,lo_ODZ,lo_OHF,lo_HDF,lo_HFP |
| s1271 | 107 | bary_hi | CYZ | lo | 1633/12500 | s222,s1242,s1183,s1099,lo_HCY,s1175 |
| s1284 | 114 | bary_hi | DZP | lo | 99181/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s1183,s1179 |
| s1291 | 116 | bary_hi | CDZ | hi | 23451/100000 | s1185,s1179,s1102,s1242,s1185 |
| s1297 | 117 | bary_lo | HYP | lo | 5703/40000 | s1185,lo_DFP,s1097,s1176,lo_HCY,s1189,lo_HFY |
| s1298 | 118 | bary_hi | CDP | hi | 33231/62500 | s1185,lo_DFP,s1097,s1176,s1185 |
| s1303 | 124 | bary_lo | HYZ | lo | 145667/1000000 | s1298,s1284,lo_CZP,s1242,lo_HCY,s1189,s1297 |
| s1305 | 128 | bary_lo | FYZ | lo | 224551/1000000 | s1298,s1284,lo_CZP,s1242,s1061,s1196,s1204 |
| s1339 | 129 | bary_hi | OHP | lo | 289757/1000000 | s1161,lo_FZP,s1284,lo_DFP,s1148,lo_OHF,s1150 |
| s1340 | 130 | bary_hi | ODP | hi | 282581/500000 | s1161,lo_FZP,s1284,lo_DFP,hi_ODF,s1238 |
| s1341 | 131 | bary_hi | OFP | lo | 55359/200000 | s1161,lo_FZP,s1284,lo_DFP,s1158,s1129 |
| s1342 | 132 | bary_hi | OZP | hi | 121081/500000 | s1161,lo_FZP,s1284,lo_DFP,lo_ODZ,s1239 |
| s1344 | 133 | bary_lo | HCP | lo | 301973/1000000 | s1161,lo_FZP,s1284,lo_DFP,lo_HCD,s1090,s1099 |
| s1346 | 134 | bary_hi | HFP | lo | 19017/200000 | s1161,lo_FZP,s1284,lo_DFP,lo_HDF,s1257 |
| s1348 | 136 | bary_hi | CDP | hi | 128357/250000 | s1161,lo_FZP,s1284,lo_DFP,s1185,s1291 |
| s1349 | 137 | bary_hi | CFP | lo | 39521/200000 | s1161,lo_FZP,s1284,lo_DFP,s1172,s1102 |
| s1354 | 138 | bary_lo | DYP | hi | 322609/1000000 | s1161,lo_FZP,s1284,lo_DFP,s1219,lo_DYZ |
| s1357 | 139 | bary_lo | FYP | lo | 2456/15625 | s1161,lo_FZP,s1284,lo_DFP,s1196,s1305 |
| s1359 | 0 | sum | OHC | lo | 2657/8000 | lo_HCY,s1207,lo_OHY |
| s1361 | 2 | sum | OHD | lo | 741749/1000000 | s1183,lo_ODZ,s1150 |
| s1362 | 3 | sum | OHZ | lo | 385013/1000000 | s1303,lo_OHY,s1109 |
| s1368 | 5 | sum | ODF | lo | 177391/200000 | lo_DFP,s1166,s1341 |
| s1369 | 6 | sum | ODP | lo | 517793/1000000 | s1284,lo_ODZ,s1136 |
| s1372 | 7 | sum | HDF | lo | 56217/200000 | lo_DFP,lo_HDP,s1346 |
| s1375 | 9 | sum | CDF | lo | 92137/125000 | s1176,s1349,lo_DFP |
| s1376 | 10 | sum | CDY | lo | 383079/1000000 | s1242,s1271,lo_DYZ |
| s1377 | 11 | sum | CDP | lo | 450801/1000000 | s1242,lo_CZP,s1284 |
| s1379 | 12 | sum | DFY | lo | 12817/25000 | lo_DFP,s1198,s1357 |
| s1380 | 13 | sum | DFZ | lo | 192181/500000 | lo_DFP,s1284,lo_FZP |
| s1383 | 15 | sumlo | OCD | lo | 107427/500000 | s1056,s1074,lo_OCQ,s1368,hi_OFQ |
| s1388 | 16 | sumlo | HCF | lo | 198701/1000000 | lo_HCD,lo_HFY,lo_HCY,s1372,s1210 |
| s1395 | 19 | sumlo | OCZ | lo | 136079/1000000 | s1242,s1359,s1099,s1383,s222 |
| s1396 | 20 | sumlo | OCP | lo | 59529/200000 | s1377,s1359,s1344,s1383,s222 |
| s1398 | 21 | sumlo | OCD | lo | 719/3125 | lo_CDQ,s1359,lo_HCD,lo_OCQ,s1108 |
| s1407 | 23 | sumlo | CFY | lo | 200649/1000000 | s1375,lo_HCY,s1376,s1388,s222 |
| s1413 | 26 | sumlo | CDP | lo | 458563/1000000 | s1242,s1344,lo_CZP,lo_HCD,s1240 |
| s1421 | 27 | sumlo | CFZ | lo | 97439/500000 | s1375,lo_CZP,s1242,s1349,s1348 |
| s1424 | 29 | sumlo | ODQ | lo | 11859/31250 | lo_CDQ,s1361,s1170,s1398,s222 |
| s1430 | 30 | sumlo | CDY | lo | 6062/15625 | s1375,s1165,s1379,s1398,hi_ODF |
| s1431 | 31 | sumlo | CDZ | lo | 33563/200000 | s1375,lo_ODZ,s1380,s1398,hi_ODF |
| s1438 | 34 | diffhi | HDY | hi | 428557/1000000 | s1354,s222,s1430,lo_HDP,s1413 |
| s1452 | 38 | sumlo | HCF | lo | 208411/1000000 | s1375,lo_HFY,s1407,s1372,s1219 |
| s1453 | 39 | sumlo | HFZ | lo | 166387/1000000 | s1421,s1372,s1380,s1452,s1185 |
| s1455 | 41 | sumlo | HFP | lo | 2997/31250 | lo_DFP,s1453,lo_FZP,s1372,s1161 |
| s1462 | 43 | sumlo | OZP | lo | 29209/125000 | lo_CZP,s1362,s1139,s1395,s1240 |
| s1465 | 43 | diffhi | HZP | hi | 174187/1000000 | s1240,s1342,lo_CZP,s1362,s1395 |
| s1466 | 43 | diffhi | OCZ | hi | 149213/1000000 | s1240,s1342,lo_CZP,s1362,s1139 |
| s1467 | 44 | sumlo | HZP | lo | 162811/1000000 | lo_FZP,s1362,s1453,s1462,s1239 |
| s1468 | 44 | sumlo | OFZ | lo | 42877/100000 | lo_FZP,s1362,s1453,s1462,s1465 |
| s1471 | 45 | sumlo | CFZ | lo | 54231/250000 | lo_CZP,s1468,lo_FZP,s1395,s1342 |
| s1477 | 46 | sumlo | HCP | lo | 311391/1000000 | lo_CZP,s1339,s1467,s1396,s1342 |
| s1481 | 47 | sumlo | OFP | lo | 283359/1000000 | lo_FZP,s1339,s1455,s1462,s1465 |
| s1484 | 48 | sumlo | CFP | lo | 223129/1000000 | lo_CZP,s1481,lo_FZP,s1396,s1342 |
| s1486 | 50 | sumlo | HFP | lo | 4841/50000 | s1484,lo_HDP,lo_DFP,s1477,s1348 |
| s1502 | 55 | balance_lo | ODF | lo | 889419/1000000 | s1452,lo_ODZ,s1471,s1361,s1453,s1398,s1240 |
| s1503 | 56 | balance_lo | HCP | lo | 316097/1000000 | s1452,s1369,s1484,s1361,s1486,s1398,hi_ODF |
| s1510 | 57 | balance_hi | OCD | hi | 124391/500000 | s1240,s1340,lo_CZP,s1361,s1503,lo_ODZ,s1467 |
| s1519 | 58 | balance_lo | CFZ | lo | 44187/200000 | lo_FZP,s1398,lo_CZP,s1502,s1484,lo_ODZ,s1340 |
| s1577 | 63 | balance_hi | HYZ | hi | 43127/250000 | s1466,s1438,s1431,lo_OHY,lo_ODZ,lo_HCY,s1398 |
| s1579 | 63 | balance_lo | HDY | lo | 38717/100000 | s1398,s1303,s1431,lo_OHY,lo_ODZ,lo_HCY,s1466 |
| s1582 | 64 | balance_lo | HYQ | lo | 390889/1000000 | lo_CDQ,lo_OHY,s1424,lo_HCY,lo_OCQ,s1579,s1510 |
| s1603 | 65 | balance_lo | HDY | lo | 412053/1000000 | s1502,s1582,s1164,lo_OHY,s1424,lo_HFY,hi_OFQ |
| s1611 | 66 | balance_lo | CDF | lo | 825407/1000000 | s1380,lo_HCY,s1519,s1603,s1431,lo_HFY,s1577 |

## Conclusion

{"triangle":"CDF","lower":"s1611","upper":"s1185"}
