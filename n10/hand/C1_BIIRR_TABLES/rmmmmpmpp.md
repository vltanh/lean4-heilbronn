# Leaf rmmmmpmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":-1,"DZP":1,"FZP":-1,"FYZ":1,"FYP":1}

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
| 14 | extreme | ["DFY","O","FYO",-1] |
| 15 | interior_line | ["HY","Z","HCDF","Z",1] |
| 16 | interior_line | ["HY","P","HCDF","P",1] |
| 17 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 18 | interior_line | ["CY","P","HCDF","P",-1] |
| 19 | interior_line | ["CZ","R","CDQ","R",-1] |
| 20 | interior_line | ["CP","R","CDQ","R",-1] |
| 21 | interior_line | ["DZ","R","CDQ","R",1] |
| 22 | interior_line | ["DP","R","CDQ","R",1] |
| 23 | capacity | ["OCD","Y","Z","DOZ",-1,"115189/200000","C009"] |
| 24 | capacity | ["OCD","Y","P","DOP",-1,"115189/200000","C009"] |
| 25 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 26 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 27 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | plu | ["OHDYZ","OYZ",1] |
| 29 | plu | ["OHDYP","OYP",1] |
| 30 | plu | ["OHDZR","OZR",-1] |
| 31 | plu | ["OHDPR","OPR",-1] |
| 32 | plu | ["DOHYZ","DYZ",-1] |
| 33 | plu | ["DOHYP","DYP",-1] |
| 34 | plu | ["FOHYZ","FOZ",1] |
| 35 | plu | ["FOHYP","FOP",1] |
| 36 | plu | ["YOHZQ","YZQ",-1] |
| 37 | plu | ["YOHPQ","YPQ",-1] |
| 38 | plu | ["YHDZR","YZR",-1] |
| 39 | plu | ["YHDPR","YPR",-1] |
| 40 | plu | ["ZOHCP","ZCP",-1] |
| 41 | plu | ["ZOHYP","ZYP",-1] |
| 42 | plu | ["ZODPQ","ZPQ",1] |
| 43 | plu | ["ZODPR","ZPR",1] |
| 44 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 45 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","ZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHQ | OHQ | lo | 58643/100000 | "C048" |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Y"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 279/1000 | ["cost","Y"] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HDP | HDP | lo | 279/1000 | ["cost","Z"] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HFQ | HFQ | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 279/1000 | ["cost","Z"] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODY | ODY | hi | 33119861/127000000 | "C046" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFY | OFY | hi | 138233/317500 | "C018" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_OZQ | OZQ | hi | 70912/79375 | "C049" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 1 | ["fan","OHZ","HZP","OHP","OZP"] | ["fan","OHZ","P"] |
| 2 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 3 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 4 | ["fan","OFZ","FZP","OFP","OZP"] | ["fan","OFZ","P"] |
| 5 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 6 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 7 | ["fan","HDP","DZP","HDZ","HZP"] | ["fan","HDP","Z"] |
| 8 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 9 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 10 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 11 | ["fan","DFP","DFZ","DZP","FZP"] | ["fan","DFP","Z"] |
| 12 | ["plu","OCD","OPQ","OCP","ODQ","OCQ","ODP"] | ["plu","OCDPQ"] |
| 13 | ["plu","ODP","OFZ","ODF","OZP","ODZ","OFP"] | ["plu","ODFZP"] |
| 14 | ["plu","ODP","OZQ","ODQ","OZP","ODZ","OPQ"] | ["plu","ODZPQ"] |
| 15 | ["plu","CDP","ODF","CDF","ODP","DFP","OCD"] | ["plu","DOCFP"] |
| 16 | ["plu","CDF","ODQ","CDQ","ODF","DFQ","OCD"] | ["plu","DOCFQ"] |
| 17 | ["plu","DYP","ODF","DFP","ODY","DFY","ODP"] | ["plu","DOFYP"] |
| 18 | ["plu","DFY","ODQ","DFQ","ODY","DYQ","ODF"] | ["plu","DOFYQ"] |
| 19 | ["plu","DFP","ODZ","DFZ","ODP","DZP","ODF"] | ["plu","DOFZP"] |
| 20 | ["plu","DPQ","ODF","DFP","ODQ","DFQ","ODP"] | ["plu","DOFPQ"] |
| 21 | ["plu","CDZ","HDP","CDP","HDZ","DZP","HCD"] | ["plu","DHCZP"] |
| 22 | ["plu","DFZ","HDY","DFY","HDZ","DYZ","HDF"] | ["plu","DHFYZ"] |
| 23 | ["plu","DYZ","HDP","DYP","HDZ","DZP","HDY"] | ["plu","DHYZP"] |
| 24 | ["plu","CDZ","DFP","CDF","DZP","CDP","DFZ"] | ["plu","DCFZP"] |
| 25 | ["plu","DFP","DYZ","DFY","DZP","DFZ","DYP"] | ["plu","DFYZP"] |
| 26 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 27 | ["plu","HCF","OFZ","CFZ","OHF","HFZ","OCF"] | ["plu","FOHCZ"] |
| 28 | ["plu","CDF","OFP","CFP","ODF","DFP","OCF"] | ["plu","FOCDP"] |
| 29 | ["plu","CDF","FYP","CFP","DFY","CFY","DFP"] | ["plu","FCDYP"] |
| 30 | ["plu","CDY","OFY","CFY","ODY","DFY","OCY"] | ["plu","YOCDF"] |
| 31 | ["plu","CFY","HDY","CDY","HFY","DFY","HCY"] | ["plu","YHCDF"] |
| 32 | ["plu","HZP","ODZ","DZP","OHZ","HDZ","OZP"] | ["plu","ZOHDP"] |
| 33 | ["plu","CZP","ODZ","CDZ","OZP","DZP","OCZ"] | ["plu","ZOCDP"] |
| 34 | ["plu","CDZ","HZP","CZP","HDZ","DZP","HCZ"] | ["plu","ZHCDP"] |
| 35 | ["plu","CDP","OHP","HCP","ODP","HDP","OCP"] | ["plu","POHCD"] |
| 36 | ["plu","HCP","OFP","CFP","OHP","HFP","OCP"] | ["plu","POHCF"] |
| 37 | ["plu","CZP","OHP","HCP","OZP","HZP","OCP"] | ["plu","POHCZ"] |
| 38 | ["plu","HZP","ODP","DZP","OHP","HDP","OZP"] | ["plu","POHDZ"] |
| 39 | ["plu","CDP","OFP","CFP","ODP","DFP","OCP"] | ["plu","POCDF"] |
| 40 | ["plu","CZP","ODP","CDP","OZP","DZP","OCP"] | ["plu","POCDZ"] |
| 41 | ["plu","FZP","ODP","DFP","OZP","DZP","OFP"] | ["plu","PODFZ"] |
| 42 | ["balance",[[1,"HCF","ODP"],[1,"CFP","OHD"],[1,"HFP","OCD"],[-1,"HCP","ODF"]]] | ["six","ODHCFP"] |
| 43 | ["balance",[[1,"CDF","OZP"],[1,"DFP","OCZ"],[1,"CFP","ODZ"],[-1,"CDP","OFZ"]]] | ["six","OZCDFP"] |
| 44 | ["balance",[[1,"DFY","OZP"],[1,"FYP","ODZ"],[-1,"DYP","OFZ"],[1,"DFP","OYZ"]]] | ["six","OZDFYP"] |
| 45 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 46 | ["balance",[[1,"ODZ","HCP"],[1,"DZP","OHC"],[1,"OZP","HCD"],[-1,"ODP","HCZ"]]] | ["six","HCODZP"] |
| 47 | ["balance",[[-1,"OCF","HDP"],[-1,"CFP","OHD"],[1,"OFP","HCD"],[-1,"OCP","HDF"]]] | ["six","HDOCFP"] |
| 48 | ["balance",[[-1,"CFY","HDP"],[1,"FYP","HCD"],[-1,"CYP","HDF"],[-1,"CFP","HDY"]]] | ["six","HDCFYP"] |
| 49 | ["balance",[[1,"CDF","HYP"],[-1,"DFP","HCY"],[-1,"CFP","HDY"],[-1,"CDP","HFY"]]] | ["six","HYCDFP"] |
| 50 | ["balance",[[-1,"ODP","CYQ"],[-1,"DPQ","OCY"],[1,"OPQ","CDY"],[-1,"ODQ","CYP"]]] | ["six","CYODPQ"] |
| 51 | ["balance",[[-1,"OHF","DYQ"],[-1,"HFQ","ODY"],[1,"OFQ","HDY"],[-1,"OHQ","DFY"]]] | ["six","DYOHFQ"] |
| 52 | ["balance",[[-1,"HCF","DYP"],[-1,"CFP","HDY"],[-1,"HFP","CDY"],[1,"HCP","DFY"]]] | ["six","DYHCFP"] |
| 53 | ["balance",[[1,"ODZ","FYP"],[1,"DZP","OFY"],[1,"OZP","DFY"],[-1,"ODP","FYZ"]]] | ["six","FYODZP"] |
| 54 | ["balance",[[-1,"OHC","DFP"],[1,"HCD","OFP"],[-1,"OCD","HFP"],[-1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 55 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 56 | ["balance",[[-1,"OCD","FZP"],[-1,"CDF","OZP"],[1,"ODF","CZP"],[-1,"OCF","DZP"]]] | ["six","ZPOCDF"] |
| 57 | ["balance",[[1,"ODF","YZP"],[-1,"DFY","OZP"],[-1,"OFY","DZP"],[-1,"ODY","FZP"]]] | ["six","ZPODFY"] |
| 58 | ["balance",[[1,"ODF","ZPQ"],[-1,"DFQ","OZP"],[-1,"OFQ","DZP"],[-1,"ODQ","FZP"]]] | ["six","ZPODFQ"] |
| 59 | ["linear",{"OHD":1,"ODP":-1,"OHP":-1,"HDP":-1},"0"] | ["affine_quad","OHDP",-1] |
| 60 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 61 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 62 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 63 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 64 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 65 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 66 | ["linear",{"OFZ":1,"OZP":-1,"OFP":-1,"FZP":-1},"0"] | ["affine_quad","OFZP",-1] |
| 67 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 68 | ["linear",{"HCZ":1,"HZP":-1,"HCP":-1,"CZP":-1},"0"] | ["affine_quad","HCZP",1] |
| 69 | ["linear",{"HDZ":-1,"HZP":-1,"HDP":1,"DZP":-1},"0"] | ["affine_quad","HDZP",1] |
| 70 | ["linear",{"HYZ":1,"HZP":-1,"HYP":-1,"YZP":-1},"0"] | ["affine_quad","HYZP",1] |
| 71 | ["linear",{"CDF":1,"CFP":-1,"CDP":-1,"DFP":-1},"0"] | ["affine_quad","CDFP",1] |
| 72 | ["linear",{"CFZ":1,"CZP":-1,"CFP":-1,"FZP":-1},"0"] | ["affine_quad","CFZP",-1] |
| 73 | ["linear",{"DFZ":-1,"DZP":-1,"DFP":1,"FZP":-1},"0"] | ["affine_quad","DFZP",-1] |
| 74 | ["linear",{"FYZ":1,"FZP":-1,"FYP":-1,"YZP":-1},"0"] | ["affine_quad","FYZP",1] |
| 75 | ["support","HDY","DFY","HFY","897/1000"] | ["support_quad","YDFH","ZP","299/31"] |
| 76 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 77 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 78 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 79 | ["bary",["OHP",-1],[null,null,["OHD",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OH"] |
| 80 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 81 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],null],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","DQ"] |
| 82 | ["bary",["OFY",-1],[null,["OCF",-1],["ODF",-1]],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","OF"] |
| 83 | ["bary",["HDY",-1],[["OHD",-1],["HCD",-1],["HDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","HD"] |
| 84 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DFQ",-1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","DQ"] |
| 85 | ["bary",["HFY",-1],[["OHF",-1],["HCF",-1],["HFP",-1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","HF"] |
| 86 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DPQ",-1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","DQ"] |
| 87 | ["bary",["OFP",-1],[null,["ODF",-1],null],"ODF",["DFP","OFP","ODP"]] | ["bary","ODF","P","OF"] |
| 88 | ["bary",["YZP",1],[["OZP",1],["DZP",1],["ZPQ",1]],"ODQ",["DYQ","OYQ","ODY"]] | ["bary","ODQ","Y","ZP"] |
| 89 | ["bary",["CDP",1],[["OCD",1],["CDF",1],["CDZ",1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","CD"] |
| 90 | ["bary",["DYP",-1],[["ODY",-1],["DFY",-1],["DYZ",-1]],"OFZ",["FZP","OZP","OFP"]] | ["bary","OFZ","P","DY"] |
| 91 | ["bary",["ODZ",1],[["OHD",1],["OCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","OD"] |
| 92 | ["bary",["OCP",1],[["OHC",1],null,["OCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OC"] |
| 93 | ["bary",["ODP",1],[["OHD",1],["OCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OD"] |
| 94 | ["bary",["HCP",1],[null,null,["HCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HC"] |
| 95 | ["bary",["HDP",-1],[null,["HCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HD"] |
| 96 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 97 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 98 | ["bary",["FZP",-1],[["HFZ",-1],["CFZ",-1],["DFZ",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","FZ"] |
| 99 | ["bary",["DFZ",1],[["HDF",1],null,["DFY",1]],"HDY",["DYZ","HYZ","HDZ"]] | ["bary","HDY","Z","DF"] |
| 100 | ["bary",["HCP",1],[null,["HCD",1],["HCY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HC"] |
| 101 | ["bary",["HDP",-1],[null,null,["HDY",-1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HD"] |
| 102 | ["bary",["HYP",1],[null,["HDY",1],null],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HY"] |
| 103 | ["bary",["FYP",1],[["HFY",-1],["DFY",1],null],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","FY"] |
| 104 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHP",-1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","OH"] |
| 105 | ["bary",["OCZ",1],[["OHC",1],["OCD",1],["OCP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","OC"] |
| 106 | ["bary",["ODZ",1],[["OHD",1],null,["ODP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","OD"] |
| 107 | ["bary",["OFZ",-1],[["OHF",1],["ODF",-1],["OFP",-1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","OF"] |
| 108 | ["bary",["HCZ",1],[null,["HCD",1],["HCP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","HC"] |
| 109 | ["bary",["HYZ",1],[null,["HDY",1],["HYP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","HY"] |
| 110 | ["bary",["CDZ",1],[["HCD",1],null,["CDP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","CD"] |
| 111 | ["bary",["CZP",-1],[["HCP",1],["CDP",-1],null],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","CP"] |
| 112 | ["bary",["DYZ",-1],[["HDY",-1],null,["DYP",-1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","DY"] |
| 113 | ["bary",["FYZ",1],[["HFY",-1],["DFY",1],["FYP",1]],"HDP",["DZP","HZP","HDZ"]] | ["bary","HDP","Z","FY"] |
| 114 | ["bary",["CDP",1],[["HCD",1],["CDY",1],["CDZ",1]],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","CD"] |
| 115 | ["bary",["OHP",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OH"] |
| 116 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OC"] |
| 117 | ["bary",["ODP",1],[["OCD",-1],null,["ODF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OD"] |
| 118 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 119 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 120 | ["bary",["FYZ",1],[["DFY",1],null,null],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","FY"] |
| 121 | ["bary",["HDP",-1],[null,["HDF",1],["HDY",-1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","HD"] |
| 122 | ["bary",["DFP",1],[null,null,["DFY",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","DF"] |
| 123 | ["bary",["HDZ",-1],[null,["HDF",1],["HDP",-1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","HD"] |
| 124 | ["bary",["CDZ",1],[null,["CDF",1],["CDP",1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","CD"] |
| 125 | ["bary",["CZP",-1],[["CDP",-1],["CFP",1],null],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","CP"] |
| 126 | ["bary",["DYZ",-1],[null,["DFY",-1],["DYP",-1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","DY"] |
| 127 | ["bary",["HDP",-1],[["HDF",1],["HDY",-1],["HDZ",-1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","HD"] |
| 128 | ["bary",["CDP",1],[["CDF",1],["CDY",1],["CDZ",1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","CD"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s9 | 2 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s18 | 3 | sub | OFZ | hi | 374729/500000 | hi_ODF,lo_DFZ,lo_ODZ |
| s54 | 9 | sub | FYZ | hi | 147041/250000 | hi_DFY,lo_DFZ,lo_DYZ |
| s55 | 10 | sub | DFP | hi | 147041/250000 | hi_DFY,lo_DYP,lo_FYP |
| s69 | 12 | sumlo | OPQ | lo | 70241/200000 | lo_OCP,lo_ODQ,lo_OCQ,lo_ODP,hi_OCD |
| s72 | 14 | sumlo | ODP | lo | 27201/250000 | lo_ODQ,lo_OZP,lo_ODZ,s69,hi_OZQ |
| s102 | 15 | sumlo | CDP | lo | 163931/1000000 | lo_CDF,s72,lo_DFP,lo_OCD,hi_ODF |
| s103 | 16 | diff | DFQ | lo | 154083/1000000 | lo_CDF,lo_ODQ,hi_CDQ,hi_ODF,hi_OCD |
| s108 | 17 | sumlo | DYP | lo | 108457/1000000 | lo_DFP,lo_ODY,lo_DFY,s72,hi_ODF |
| s110 | 18 | diff | DYQ | lo | 159271/500000 | lo_DFY,lo_ODQ,hi_DFQ,hi_ODY,hi_ODF |
| s112 | 19 | sumlo | ODZ | lo | 63469/500000 | lo_DFZ,s72,lo_DZP,lo_ODF,s55 |
| s123 | 24 | sumlo | CDZ | lo | 27131/200000 | lo_CDF,lo_DZP,s102,lo_DFZ,s55 |
| s127 | 25 | sumlo | DYZ | lo | 126883/1000000 | lo_DFY,lo_DZP,lo_DFZ,s108,s55 |
| s129 | 26 | sumlo | HCF | lo | 24183/250000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s133 | 29 | sumlo | FYP | lo | 101707/1000000 | lo_CFP,lo_DFY,lo_CFY,lo_DFP,hi_CDF |
| s143 | 30 | sumlo | CDY | lo | 42027/250000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,hi_OFY |
| s144 | 30 | sumlo | OFY | lo | 37539/200000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,s9 |
| s148 | 31 | sumlo | CFY | lo | 47447/500000 | s143,lo_HFY,lo_DFY,lo_HCY,hi_HDY |
| s189 | 43 | balance_lo | CDP | lo | 51433/250000 | lo_CDF,lo_OZP,lo_DFP,lo_OCZ,lo_CFP,s112,s18 |
| s194 | 44 | balance_lo | DYP | lo | 27593/200000 | lo_DFY,lo_OZP,s133,s112,lo_DFP,lo_OYZ,s18 |
| s201 | 45 | balance_lo | CDY | lo | 3088/15625 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s148,lo_ODQ,hi_OFQ |
| s203 | 47 | balance_lo | OFP | lo | 86407/500000 | lo_OCF,lo_HDP,lo_CFP,lo_OHD,lo_OCP,lo_HDF,hi_HCD |
| s204 | 48 | balance_lo | FYP | lo | 102321/1000000 | s148,lo_HDP,lo_CYP,lo_HDF,lo_CFP,lo_HDY,hi_HCD |
| s207 | 49 | balance_lo | HYP | lo | 30803/250000 | lo_DFP,lo_HCY,lo_CFP,lo_HDY,s189,lo_HFY,hi_CDF |
| s218 | 51 | balance_lo | OFQ | lo | 105399/200000 | lo_OHF,s110,lo_HFQ,lo_ODY,lo_OHQ,lo_DFY,hi_HDY |
| s221 | 52 | balance_lo | HCP | lo | 2487/20000 | s129,s194,lo_CFP,lo_HDY,lo_HFP,s201,hi_DFY |
| s223 | 53 | balance_lo | ODP | lo | 32299/200000 | s112,s204,lo_DZP,s144,lo_OZP,lo_DFY,s54 |
| s226 | 55 | balance_lo | FYP | lo | 13971/125000 | s201,lo_HFP,lo_HDY,lo_CFP,lo_HCY,lo_DFP,hi_HCD |
| s232 | 57 | balance_lo | YZP | lo | 969/10000 | lo_DFY,lo_OZP,s144,lo_DZP,lo_ODY,lo_FZP,hi_ODF |
| s233 | 58 | balance_lo | ZPQ | lo | 27341/200000 | s103,lo_OZP,s218,lo_DZP,lo_ODQ,lo_FZP,hi_ODF |
| s244 | 61 | linear | OCD | lo | 23977/62500 | s201,lo_OCY,lo_ODY |
| s245 | 62 | linear | OCF | lo | 375589/1000000 | s148,lo_OCY,s144 |
| s248 | 63 | linear | OFZ | hi | 2236/3125 | lo_DFZ,hi_ODF,s112 |
| s249 | 64 | linear | OFP | hi | 494963/1000000 | lo_DFP,hi_ODF,s223 |
| s251 | 65 | linear | OFQ | lo | 170943/250000 | hi_DFQ,lo_ODF,lo_ODQ |
| s252 | 65 | linear | DFQ | lo | 20081/50000 | lo_ODF,lo_ODQ,hi_OFQ |
| s270 | 70 | linear | HYZ | lo | 39139/125000 | s207,lo_HZP,s232 |
| s284 | 74 | linear | FYZ | lo | 75417/250000 | s226,lo_FZP,s232 |
| s285 | 75 | support_z | HFY | lo | 95037/1000000 | lo_HDY,hi_DFY |
| s290 | 76 | linear | OHC | lo | 23977/62500 | s244 |
| s291 | 77 | linear | HCD | hi | 907/1000 | lo_HDF |
| s356 | 83 | bary_lo | HDY | hi | 406217/500000 | hi_OCF,s148,s144,lo_OCY,hi_OHD,s291,lo_HDF |
| s358 | 84 | bary_hi | DYQ | lo | 14359/40000 | hi_OCF,s148,s144,lo_OCY,lo_ODQ,lo_CDQ,s252 |
| s405 | 88 | bary_lo | YZP | lo | 12293/125000 | hi_ODQ,s358,lo_OYQ,lo_ODY,lo_OZP,lo_DZP,s233 |
| s425 | 89 | bary_lo | CDP | lo | 240457/1000000 | s248,lo_FZP,lo_OZP,s203,s244,lo_CDF,s123 |
| s426 | 90 | bary_hi | DYP | lo | 89649/500000 | s248,lo_FZP,lo_OZP,s203,lo_ODY,lo_DFY,s127 |
| s449 | 96 | bary_lo | HYP | lo | 24751/200000 | s291,s425,lo_HDP,s221,lo_HCY,lo_HDY |
| s468 | 99 | bary_lo | DFZ | lo | 93967/1000000 | s356,s127,s270,lo_HDZ,lo_HDF,lo_DFY |
| s474 | 101 | bary_lo | HDP | hi | 509381/1000000 | s356,s426,s449,lo_HDP,s356 |
| s475 | 102 | bary_hi | HYP | hi | 44267/125000 | s356,s426,s449,lo_HDP,s356 |
| s484 | 107 | bary_lo | OFZ | hi | 133453/200000 | s474,lo_DZP,lo_HZP,lo_HDZ,lo_OHF,hi_ODF,s249 |
| s492 | 109 | bary_hi | HYZ | hi | 580431/1000000 | s474,lo_DZP,lo_HZP,lo_HDZ,s356,s475 |
| s494 | 110 | bary_lo | CDZ | lo | 10663/62500 | s474,lo_DZP,lo_HZP,lo_HDZ,lo_HCD,s425 |
| s500 | 112 | bary_hi | DYZ | lo | 159441/1000000 | s474,lo_DZP,lo_HZP,lo_HDZ,lo_HDY,s426 |
| s506 | 114 | bary_lo | CDP | lo | 263617/1000000 | s492,s405,lo_HZP,s449,lo_HCD,s201,s494 |
| s516 | 115 | bary_hi | OHP | lo | 3087/12500 | hi_CDF,lo_DFP,lo_CFP,s506,s290,lo_OHD,lo_OHF |
| s518 | 117 | bary_hi | ODP | hi | 16961/40000 | hi_CDF,lo_DFP,lo_CFP,s506,s244,hi_ODF |
| s524 | 119 | bary_lo | HYP | lo | 6257/40000 | hi_CDF,lo_DFP,lo_CFP,s506,lo_HCY,lo_HDY,s285 |
| s570 | 120 | bary_hi | FYZ | hi | 130189/250000 | hi_DFY,s284,s500,s468,hi_DFY |
| s578 | 122 | bary_hi | DFP | hi | 241549/500000 | hi_DFY,s226,s426,lo_DFP,hi_DFY |
| s591 | 124 | bary_lo | CDZ | lo | 46219/250000 | s578,lo_FZP,lo_DZP,s468,lo_CDF,s506 |
| s597 | 126 | bary_hi | DYZ | lo | 6739/40000 | s578,lo_FZP,lo_DZP,s468,lo_DFY,s426 |
| s603 | 128 | bary_lo | CDP | lo | 283301/1000000 | s570,s405,lo_FZP,s226,lo_CDF,s201,s591 |
| s607 | 1 | sum | OHZ | lo | 1353/3125 | lo_HZP,s516,lo_OZP |
| s616 | 6 | sub | HDP | hi | 476711/1000000 | s356,s426,s524 |
| s617 | 7 | sub | HZP | hi | 290711/1000000 | s616,lo_DZP,lo_HDZ |
| s620 | 9 | sub | FYZ | hi | 255861/500000 | hi_DFY,s468,s597 |
| s621 | 11 | sum | DFP | lo | 279967/1000000 | s468,lo_DZP,lo_FZP |
| s634 | 22 | sumlo | DFZ | lo | 12341/125000 | lo_DFY,lo_HDZ,s597,lo_HDF,s356 |
| s636 | 23 | sumlo | DYZ | lo | 2662/15625 | s426,lo_HDZ,lo_DZP,lo_HDY,s616 |
| s638 | 24 | sumlo | CDZ | lo | 23937/125000 | lo_CDF,lo_DZP,s603,s634,s578 |
| s639 | 26 | sumlo | HCF | lo | 53167/500000 | lo_CDF,lo_OHF,lo_HDF,s245,hi_ODF |
| s642 | 28 | sumlo | OFP | lo | 190731/1000000 | lo_CFP,lo_ODF,s621,s245,hi_CDF |
| s645 | 30 | sumlo | OFY | lo | 188147/1000000 | s148,lo_ODY,lo_DFY,lo_OCY,s9 |
| s647 | 31 | sumlo | CFY | lo | 102561/1000000 | s201,s285,lo_DFY,lo_HCY,s356 |
| s649 | 32 | sumlo | ODZ | lo | 168257/1000000 | lo_DZP,s607,lo_HDZ,lo_OZP,s617 |
| s653 | 38 | sumlo | HZP | lo | 115357/1000000 | lo_DZP,s516,lo_HDP,lo_OZP,s518 |
| s657 | 41 | sumlo | FZP | lo | 25809/250000 | s621,lo_OZP,lo_DZP,s642,s518 |
| s661 | 45 | balance_lo | CDY | lo | 101513/500000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s647,lo_ODQ,hi_OFQ |
| s665 | 48 | balance_lo | FYP | lo | 28061/250000 | s647,lo_HDP,lo_CYP,lo_HDF,lo_CFP,lo_HDY,s291 |
| s671 | 52 | balance_lo | HCP | lo | 66193/500000 | s639,s426,lo_CFP,lo_HDY,lo_HFP,s661,hi_DFY |
| s673 | 53 | balance_lo | ODP | lo | 197227/1000000 | s649,s665,lo_DZP,s645,lo_OZP,lo_DFY,s620 |
| s675 | 54 | balance_lo | OFP | lo | 14307/62500 | s290,s621,s244,lo_HFP,lo_OHD,lo_CFP,s291 |
| s676 | 55 | balance_lo | FYP | lo | 120683/1000000 | s661,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s621,s291 |
| s680 | 56 | balance_lo | CZP | lo | 148671/1000000 | s244,s657,lo_CDF,lo_OZP,s245,lo_DZP,hi_ODF |
| s681 | 58 | balance_lo | ZPQ | lo | 92247/500000 | s252,lo_OZP,s251,lo_DZP,lo_ODQ,s657,hi_ODF |
| s683 | 59 | linear | OHD | lo | 723187/1000000 | lo_HDP,s673,s516 |
| s686 | 60 | linear | HDQ | lo | 417187/1000000 | lo_ODQ,s683,hi_OHQ |
| s688 | 61 | linear | OCD | lo | 194513/500000 | s661,lo_OCY,lo_ODY |
| s689 | 62 | linear | OCF | lo | 95927/250000 | s647,lo_OCY,s645 |
| s690 | 64 | linear | ODF | lo | 353053/500000 | s621,s673,s675 |
| s692 | 65 | linear | OFQ | lo | 347939/500000 | hi_DFQ,s690,lo_ODQ |
| s693 | 65 | linear | DFQ | lo | 206863/500000 | s690,lo_ODQ,hi_OFQ |
| s697 | 67 | linear | HCD | lo | 694687/1000000 | s603,s671,lo_HDP |
| s703 | 69 | linear | HDP | lo | 301357/1000000 | lo_DZP,lo_HDZ,s653 |
| s704 | 70 | linear | HYZ | lo | 185063/500000 | s524,s653,s405 |
| s707 | 72 | linear | CFZ | lo | 344907/1000000 | lo_CFP,s680,s657 |
| s714 | 73 | linear | DFP | lo | 73741/250000 | s634,lo_DZP,s657 |
| s716 | 74 | linear | FYZ | lo | 322263/1000000 | s676,s657,s405 |
| s718 | 76 | linear | OHC | lo | 194513/500000 | s688 |
| s730 | 80 | bary_hi | OCP | hi | 85811/200000 | hi_OHD,s703,s673,s516,hi_OHC,hi_OCD |
| s735 | 81 | bary_hi | DPQ | lo | 145711/500000 | hi_OHD,s703,s673,s516,lo_ODQ,s686 |
| s743 | 83 | bary_lo | HDY | hi | 50773/62500 | hi_OCF,s647,s645,lo_OCY,hi_OHD,s291,lo_HDF |
| s751 | 85 | bary_hi | HFY | lo | 9589/100000 | s730,lo_CYP,lo_OYP,lo_OCY,lo_OHF,s639,lo_HFP |
| s752 | 86 | bary_hi | DYQ | lo | 185823/500000 | s730,lo_CYP,lo_OYP,lo_OCY,lo_ODQ,lo_CDQ,s735 |
| s770 | 87 | bary_lo | OFP | hi | 443267/1000000 | hi_ODF,s714,s675,s673,hi_ODF |
| s784 | 88 | bary_lo | YZP | lo | 104187/1000000 | hi_ODQ,s752,lo_OYQ,lo_ODY,lo_OZP,lo_DZP,s681 |
| s792 | 89 | bary_lo | CDP | lo | 292093/1000000 | s484,s657,lo_OZP,s675,s688,lo_CDF,s638 |
| s794 | 90 | bary_hi | DYP | lo | 101653/500000 | s484,s657,lo_OZP,s675,lo_ODY,lo_DFY,s636 |
| s802 | 92 | bary_hi | OCP | hi | 207699/500000 | s291,s792,s703,s671,hi_OHC,hi_OCD |
| s803 | 93 | bary_hi | ODP | hi | 392527/1000000 | s291,s792,s703,s671,hi_OHD,s688 |
| s809 | 97 | bary_hi | CDP | hi | 473257/1000000 | s291,s792,s703,s671,s291 |
| s820 | 99 | bary_lo | DFZ | lo | 12369/125000 | s743,s636,s704,lo_HDZ,lo_HDF,lo_DFY |
| s826 | 100 | bary_hi | HCP | hi | 6181/20000 | s743,s794,s524,s703,s291,lo_HCY |
| s827 | 101 | bary_lo | HDP | hi | 452637/1000000 | s743,s794,s524,s703,s743 |
| s828 | 102 | bary_hi | HYP | hi | 61541/200000 | s743,s794,s524,s703,s743 |
| s836 | 105 | bary_lo | OCZ | lo | 164823/500000 | s827,lo_DZP,s653,lo_HDZ,s718,s688,lo_OCP |
| s838 | 107 | bary_lo | OFZ | hi | 311511/500000 | s827,lo_DZP,s653,lo_HDZ,lo_OHF,hi_ODF,s770 |
| s843 | 108 | bary_hi | HCZ | hi | 597789/1000000 | s827,lo_DZP,s653,lo_HDZ,s291,s826 |
| s846 | 109 | bary_hi | HYZ | hi | 67721/125000 | s827,lo_DZP,s653,lo_HDZ,s743,s828 |
| s848 | 110 | bary_lo | CDZ | lo | 101373/500000 | s827,lo_DZP,s653,lo_HDZ,s697,s792 |
| s851 | 111 | bary_lo | CZP | hi | 3931/15625 | s827,lo_DZP,s653,lo_HDZ,s671,s809 |
| s854 | 112 | bary_hi | DYZ | lo | 92181/500000 | s827,lo_DZP,s653,lo_HDZ,lo_HDY,s794 |
| s861 | 114 | bary_lo | CDP | lo | 29741/100000 | s846,s784,s653,s524,s697,s661,s848 |
| s865 | 115 | bary_hi | OHP | lo | 128507/500000 | hi_CDF,s714,lo_CFP,s861,s718,s683,lo_OHF |
| s867 | 119 | bary_lo | HYP | lo | 39197/250000 | hi_CDF,s714,lo_CFP,s861,lo_HCY,lo_HDY,s751 |
| s894 | 120 | bary_hi | FYZ | hi | 9817/20000 | hi_DFY,s716,s854,s820,hi_DFY |
| s896 | 121 | bary_lo | HDP | hi | 13999/31250 | hi_DFY,s676,s794,s714,lo_HDF,s743 |
| s898 | 122 | bary_hi | DFP | hi | 18007/40000 | hi_DFY,s676,s794,s714,hi_DFY |
| s907 | 124 | bary_lo | CDZ | lo | 208743/1000000 | s898,s657,lo_DZP,s820,lo_CDF,s861 |
| s911 | 126 | bary_hi | DYZ | lo | 188059/1000000 | s898,s657,lo_DZP,s820,lo_DFY,s794 |
| s916 | 128 | bary_lo | CDP | lo | 77161/250000 | s894,s784,s657,s676,lo_CDF,s661,s907 |
| s919 | 0 | sum | OHD | lo | 377799/500000 | s703,s673,s865 |
| s929 | 5 | sum | HCD | lo | 742387/1000000 | s916,s671,s703 |
| s935 | 8 | sum | CDF | lo | 21769/31250 | s916,lo_CFP,s714 |
| s937 | 11 | sum | DFP | lo | 73797/250000 | s820,lo_DZP,s657 |
| s945 | 21 | sumlo | CDZ | lo | 109099/500000 | s916,lo_HDZ,lo_DZP,s929,s896 |
| s947 | 22 | sumlo | DFZ | lo | 50489/500000 | lo_DFY,lo_HDZ,s911,lo_HDF,s743 |
| s949 | 25 | sumlo | DYZ | lo | 94487/500000 | lo_DFY,lo_DZP,s947,s794,s898 |
| s952 | 27 | sumlo | HCF | lo | 54381/500000 | s707,lo_OHF,lo_HFZ,s689,s838 |
| s955 | 30 | sumlo | OFY | lo | 7599/40000 | s647,lo_ODY,lo_DFY,lo_OCY,s9 |
| s956 | 31 | sumlo | CFY | lo | 103413/1000000 | s661,s751,lo_DFY,lo_HCY,s743 |
| s959 | 33 | sumlo | ODZ | lo | 101257/500000 | s945,lo_OZP,lo_DZP,s836,s851 |
| s963 | 38 | sumlo | HZP | lo | 33073/250000 | lo_DZP,s865,s703,lo_OZP,s803 |
| s965 | 40 | sumlo | ODP | lo | 217227/1000000 | s916,lo_OZP,lo_DZP,lo_OCP,s851 |
| s967 | 41 | sumlo | FZP | lo | 124173/1000000 | s937,lo_OZP,lo_DZP,s675,s803 |
| s968 | 42 | balance_lo | HCP | lo | 2781/20000 | s952,s965,lo_CFP,s919,lo_HFP,s688,hi_ODF |
| s969 | 45 | balance_lo | CDY | lo | 203871/1000000 | s935,lo_OYQ,lo_DFY,lo_OCQ,s956,lo_ODQ,hi_OFQ |
| s970 | 46 | balance_lo | ODP | lo | 223123/1000000 | s959,s968,lo_DZP,s718,lo_OZP,s929,s843 |
| s977 | 54 | balance_lo | OFP | lo | 9759/40000 | s718,s937,s688,lo_HFP,s919,lo_CFP,s291 |
| s978 | 55 | balance_lo | FYP | lo | 122331/1000000 | s969,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s937,s291 |
| s982 | 56 | balance_lo | CZP | lo | 497/3125 | s688,s967,s935,lo_OZP,s689,lo_DZP,hi_ODF |
| s983 | 58 | balance_lo | ZPQ | lo | 101217/500000 | s693,lo_OZP,s692,lo_DZP,lo_ODQ,s967,hi_ODF |
| s985 | 59 | linear | OHD | lo | 390747/500000 | s703,s970,s865 |
| s988 | 60 | linear | HDQ | lo | 237747/500000 | lo_ODQ,s985,hi_OHQ |
| s991 | 61 | linear | OCD | lo | 389871/1000000 | s969,lo_OCY,lo_ODY |
| s992 | 62 | linear | OCF | lo | 96597/250000 | s956,lo_OCY,s955 |
| s995 | 64 | linear | ODF | lo | 381143/500000 | s937,s970,s977 |
| s997 | 65 | linear | OFQ | lo | 376029/500000 | hi_DFQ,s995,lo_ODQ |
| s998 | 65 | linear | DFQ | lo | 234953/500000 | s995,lo_ODQ,hi_OFQ |
| s1010 | 69 | linear | HDP | lo | 79573/250000 | lo_DZP,lo_HDZ,s963 |
| s1011 | 70 | linear | HYZ | lo | 393267/1000000 | s867,s963,s784 |
| s1013 | 71 | linear | CDF | lo | 10888/15625 | s916,lo_CFP,s937 |
| s1014 | 72 | linear | CFZ | lo | 376213/1000000 | lo_CFP,s982,s967 |
| s1020 | 73 | linear | DFP | lo | 318151/1000000 | s947,lo_DZP,s967 |
| s1024 | 76 | linear | OHC | lo | 389871/1000000 | s991 |
| s1036 | 81 | bary_hi | DPQ | lo | 81747/250000 | hi_OHD,s1010,s970,s865,lo_ODQ,s988 |
| s1044 | 83 | bary_lo | HDY | hi | 8121/10000 | hi_OCF,s956,s955,lo_OCY,hi_OHD,s291,lo_HDF |
| s1052 | 85 | bary_hi | HFY | lo | 6033/62500 | s802,lo_CYP,lo_OYP,lo_OCY,lo_OHF,s952,lo_HFP |
| s1053 | 86 | bary_hi | DYQ | lo | 191327/500000 | s802,lo_CYP,lo_OYP,lo_OCY,lo_ODQ,lo_CDQ,s1036 |
| s1070 | 87 | bary_lo | OFP | hi | 49273/125000 | hi_ODF,s1020,s977,s970,hi_ODF |
| s1083 | 88 | bary_lo | YZP | lo | 106381/1000000 | hi_ODQ,s1053,lo_OYQ,lo_ODY,lo_OZP,lo_DZP,s983 |
| s1089 | 89 | bary_lo | CDP | lo | 16193/50000 | s838,s967,lo_OZP,s977,s991,s1013,s945 |
| s1091 | 90 | bary_hi | DYP | lo | 27537/125000 | s838,s967,lo_OZP,s977,lo_ODY,lo_DFY,s949 |
| s1101 | 93 | bary_hi | ODP | hi | 89737/250000 | s291,s1089,s1010,s968,hi_OHD,s991 |
| s1104 | 94 | bary_hi | HCP | hi | 16553/62500 | s291,s1089,s1010,s968,s291 |
| s1107 | 97 | bary_hi | CDP | hi | 224829/500000 | s291,s1089,s1010,s968,s291 |
| s1119 | 99 | bary_lo | DFZ | lo | 25279/250000 | s1044,s949,s1011,lo_HDZ,lo_HDF,lo_DFY |
| s1122 | 101 | bary_lo | HDP | hi | 54377/125000 | s1044,s1091,s867,s1010,s1044 |
| s1127 | 105 | bary_lo | OCZ | lo | 336419/1000000 | s1122,lo_DZP,s963,lo_HDZ,s1024,s991,lo_OCP |
| s1129 | 107 | bary_lo | OFZ | hi | 599873/1000000 | s1122,lo_DZP,s963,lo_HDZ,lo_OHF,hi_ODF,s1070 |
| s1134 | 108 | bary_hi | HCZ | hi | 115163/200000 | s1122,lo_DZP,s963,lo_HDZ,s291,s1104 |
| s1151 | 115 | bary_hi | OHP | lo | 135563/500000 | hi_CDF,s1020,lo_CFP,s1089,s1024,s985,lo_OHF |
| s1152 | 116 | bary_hi | OCP | hi | 100439/250000 | hi_CDF,s1020,lo_CFP,s1089,hi_OCD,hi_OCF |
| s1154 | 118 | bary_hi | OPQ | hi | 115359/200000 | hi_CDF,s1020,lo_CFP,s1089,lo_OCQ,hi_ODQ,hi_OFQ |
| s1156 | 119 | bary_lo | HYP | lo | 78553/500000 | hi_CDF,s1020,lo_CFP,s1089,lo_HCY,lo_HDY,s1052 |
| s1186 | 121 | bary_lo | HDP | hi | 21311/50000 | hi_DFY,s978,s1091,s1020,lo_HDF,s1044 |
| s1187 | 122 | bary_hi | DFP | hi | 431537/1000000 | hi_DFY,s978,s1091,s1020,hi_DFY |
| s1196 | 125 | bary_lo | CZP | hi | 227349/1000000 | s1187,s967,lo_DZP,s1119,s1107,lo_CFP |
| s1200 | 126 | bary_hi | DYZ | lo | 201181/1000000 | s1187,s967,lo_DZP,s1119,lo_DFY,s1091 |
| s1206 | 0 | sum | OHD | lo | 812541/1000000 | s1010,s970,s1151 |
| s1216 | 5 | sum | HCD | lo | 390601/500000 | s1089,s968,s1010 |
| s1218 | 6 | sum | HDY | lo | 347847/500000 | s1091,s1010,s1156 |
| s1219 | 7 | sub | HZP | hi | 12011/50000 | s1186,lo_DZP,lo_HDZ |
| s1222 | 8 | sum | CDF | lo | 735011/1000000 | s1089,lo_CFP,s1020 |
| s1224 | 11 | sum | DFP | lo | 318289/1000000 | s1119,lo_DZP,s967 |
| s1236 | 20 | sumlo | DPQ | lo | 348213/1000000 | s1224,lo_ODQ,s998,s970,hi_ODF |
| s1237 | 21 | sumlo | CDZ | lo | 241121/1000000 | s1089,lo_HDZ,lo_DZP,s1216,s1186 |
| s1239 | 22 | sumlo | DFZ | lo | 51257/500000 | lo_DFY,lo_HDZ,s1200,lo_HDF,s1044 |
| s1244 | 25 | sumlo | DYZ | lo | 40379/200000 | lo_DFY,lo_DZP,s1239,s1091,s1187 |
| s1246 | 27 | sumlo | HCF | lo | 29557/250000 | s1014,lo_OHF,lo_HFZ,s992,s1129 |
| s1249 | 30 | sumlo | OFY | lo | 190179/1000000 | s956,lo_ODY,lo_DFY,lo_OCY,s9 |
| s1250 | 31 | sumlo | CFY | lo | 103707/1000000 | s969,s1052,lo_DFY,lo_HCY,s1044 |
| s1253 | 33 | sumlo | ODZ | lo | 189/800 | s1237,lo_OZP,lo_DZP,s1127,s1196 |
| s1256 | 38 | sumlo | HZP | lo | 19089/125000 | lo_DZP,s1151,s1010,lo_OZP,s1101 |
| s1257 | 38 | sumlo | ODP | lo | 22819/100000 | lo_DZP,s1151,s1010,lo_OZP,s1219 |
| s1258 | 39 | sumlo | OFP | lo | 61171/250000 | lo_CFP,s1257,s1224,lo_OCP,s1107 |
| s1259 | 40 | sumlo | ODP | lo | 246607/1000000 | s1089,lo_OZP,lo_DZP,lo_OCP,s1196 |
| s1262 | 41 | sumlo | FZP | lo | 7293/50000 | s1224,lo_OZP,lo_DZP,s1258,s1101 |
| s1265 | 42 | balance_lo | HCP | lo | 150707/1000000 | s1246,s1259,lo_CFP,s1206,lo_HFP,s991,hi_ODF |
| s1266 | 43 | balance_lo | CDP | lo | 329079/1000000 | s1222,lo_OZP,s1224,s1127,lo_CFP,s1253,s1129 |
| s1270 | 46 | balance_lo | ODP | lo | 250973/1000000 | s1253,s1265,lo_DZP,s1024,lo_OZP,s1216,s1134 |
| s1275 | 50 | balance_lo | CDY | lo | 208507/1000000 | s1270,lo_CYQ,s1236,lo_OCY,lo_ODQ,lo_CYP,s1154 |
| s1278 | 54 | balance_lo | OFP | lo | 52021/200000 | s1024,s1224,s991,lo_HFP,s1206,lo_CFP,s291 |
| s1279 | 55 | balance_lo | FYP | lo | 125349/1000000 | s1275,lo_HFP,s1218,lo_CFP,lo_HCY,s1224,s291 |
| s1283 | 56 | balance_lo | CZP | lo | 6891/40000 | s991,s1262,s1222,lo_OZP,s992,lo_DZP,hi_ODF |
| s1284 | 58 | balance_lo | ZPQ | lo | 114847/500000 | s998,lo_OZP,s997,lo_DZP,lo_ODQ,s1262,hi_ODF |
| s1286 | 59 | linear | OHD | lo | 840391/1000000 | s1010,s1270,s1151 |
| s1289 | 60 | linear | HDQ | lo | 534391/1000000 | lo_ODQ,s1286,hi_OHQ |
| s1292 | 61 | linear | OCD | lo | 394507/1000000 | s1275,lo_OCY,lo_ODY |
| s1293 | 62 | linear | OCF | lo | 193443/500000 | s1250,lo_OCY,s1249 |
| s1298 | 63 | linear | OFZ | hi | 298347/500000 | s1239,hi_ODF,s1253 |
| s1300 | 64 | linear | ODF | lo | 829367/1000000 | s1224,s1270,s1278 |
| s1303 | 64 | linear | DFP | hi | 21219/50000 | hi_ODF,s1270,s1278 |
| s1309 | 66 | linear | OFZ | lo | 99793/200000 | s1262,s1278,lo_OZP |
| s1312 | 67 | linear | HCD | lo | 399039/500000 | s1266,s1265,s1010 |
| s1315 | 68 | linear | HCZ | lo | 237847/500000 | s1283,s1265,s1256 |
| s1320 | 69 | linear | HDP | lo | 42339/125000 | lo_DZP,lo_HDZ,s1256 |
| s1321 | 70 | linear | HYZ | lo | 416199/1000000 | s1156,s1256,s1083 |
| s1323 | 71 | linear | CDF | lo | 46273/62500 | s1266,lo_CFP,s1224 |
| s1325 | 72 | linear | CFZ | lo | 82227/200000 | lo_CFP,s1283,s1262 |
| s1331 | 73 | linear | DFZ | hi | 2319/12500 | s1303,lo_DZP,s1262 |
| s1332 | 73 | linear | DFP | lo | 170687/500000 | s1239,lo_DZP,s1262 |
| s1336 | 76 | linear | OHC | lo | 394507/1000000 | s1292 |
| s1339 | 78 | linear | CDF | hi | 220443/250000 | s1246 |
| s1348 | 79 | bary_lo | OHP | hi | 82063/200000 | hi_OHD,s1320,s1270,s1151,hi_OHD |
| s1355 | 81 | bary_hi | DPQ | lo | 369183/1000000 | hi_OHD,s1320,s1270,s1151,lo_ODQ,s1289 |
| s1362 | 82 | bary_hi | OFY | lo | 24549/125000 | hi_OCD,s1275,lo_ODY,lo_OCY,s1293,s1300 |
| s1366 | 83 | bary_lo | HDY | hi | 20279/25000 | hi_OCF,s1250,s1362,lo_OCY,hi_OHD,s291,lo_HDF |
| s1377 | 85 | bary_hi | HFY | lo | 98839/1000000 | s1152,lo_CYP,lo_OYP,lo_OCY,lo_OHF,s1246,lo_HFP |
| s1378 | 86 | bary_hi | DYQ | lo | 395941/1000000 | s1152,lo_CYP,lo_OYP,lo_OCY,lo_ODQ,lo_CDQ,s1355 |
| s1402 | 87 | bary_lo | OFP | hi | 343111/1000000 | hi_ODF,s1332,s1278,s1270,hi_ODF |
| s1419 | 88 | bary_lo | YZP | lo | 21943/200000 | hi_ODQ,s1378,lo_OYQ,lo_ODY,lo_OZP,lo_DZP,s1284 |
| s1430 | 89 | bary_lo | CDP | lo | 356427/1000000 | s1298,s1262,lo_OZP,s1278,s1292,s1323,s1237 |
| s1432 | 90 | bary_hi | DYP | lo | 234139/1000000 | s1298,s1262,lo_OZP,s1278,lo_ODY,lo_DFY,s1244 |
| s1435 | 91 | bary_hi | ODZ | hi | 5196/15625 | s291,s1237,lo_HDZ,s1315,hi_OHD,s1292 |
| s1444 | 93 | bary_hi | ODP | hi | 313073/1000000 | s291,s1430,s1320,s1265,hi_OHD,s1292 |
| s1450 | 95 | bary_lo | HDP | hi | 199933/500000 | s291,s1430,s1320,s1265,s291 |
| s1453 | 97 | bary_hi | CDP | hi | 417581/1000000 | s291,s1430,s1320,s1265,s291 |
| s1461 | 98 | bary_hi | FZP | lo | 146747/1000000 | s291,s1430,s1320,s1265,lo_HFZ,s1325,s1331 |
| s1468 | 99 | bary_lo | DFZ | lo | 51357/500000 | s1366,s1244,s1321,lo_HDZ,lo_HDF,lo_DFY |
| s1471 | 102 | bary_hi | HYP | hi | 238309/1000000 | s1366,s1432,s1156,s1320,s1366 |
| s1472 | 103 | bary_hi | FYP | hi | 198911/1000000 | s1366,s1432,s1156,s1320,s1377,hi_DFY |
| s1473 | 104 | bary_lo | OHZ | hi | 25211/40000 | s1450,lo_DZP,s1256,lo_HDZ,hi_OHD,s1348 |
| s1474 | 105 | bary_lo | OCZ | lo | 349977/1000000 | s1450,lo_DZP,s1256,lo_HDZ,s1336,s1292,lo_OCP |
| s1475 | 106 | bary_lo | ODZ | lo | 253827/1000000 | s1450,lo_DZP,s1256,lo_HDZ,s1286,s1270 |
| s1476 | 107 | bary_lo | OFZ | hi | 111699/200000 | s1450,lo_DZP,s1256,lo_HDZ,lo_OHF,hi_ODF,s1402 |
| s1484 | 109 | bary_hi | HYZ | hi | 48927/100000 | s1450,lo_DZP,s1256,lo_HDZ,s1366,s1471 |
| s1486 | 110 | bary_lo | CDZ | lo | 8391/31250 | s1450,lo_DZP,s1256,lo_HDZ,s1312,s1430 |
| s1488 | 111 | bary_lo | CZP | hi | 18829/100000 | s1450,lo_DZP,s1256,lo_HDZ,s1265,s1453 |
| s1494 | 113 | bary_hi | FYZ | hi | 109333/250000 | s1450,lo_DZP,s1256,lo_HDZ,s1377,hi_DFY,s1472 |
| s1498 | 114 | bary_lo | CDP | lo | 359981/1000000 | s1484,s1419,s1256,s1156,s1312,s1275,s1486 |
| s1508 | 118 | bary_hi | OPQ | hi | 136171/250000 | s1339,s1332,lo_CFP,s1498,lo_OCQ,hi_ODQ,hi_OFQ |
| s1545 | 122 | bary_hi | DFP | hi | 103669/250000 | hi_DFY,s1279,s1432,s1332,hi_DFY |
| s1548 | 123 | bary_lo | HDZ | hi | 5913/40000 | s1545,s1461,lo_DZP,s1468,lo_HDF,s1450 |
| s1555 | 127 | bary_lo | HDP | hi | 98551/250000 | s1494,s1419,s1461,s1279,lo_HDF,s1366,s1548 |
| s1565 | 1 | sub | OHP | hi | 384563/1000000 | s1473,s1256,lo_OZP |
| s1569 | 3 | sum | ODF | lo | 427753/500000 | s1468,s1475,s1309 |
| s1571 | 4 | sub | OFP | hi | 79687/250000 | s1476,s1461,lo_OZP |
| s1575 | 5 | sum | HCD | lo | 4247/5000 | s1498,s1265,s1320 |
| s1581 | 8 | sum | CDF | lo | 158871/200000 | s1498,lo_CFP,s1332 |
| s1585 | 11 | sum | DFP | lo | 342461/1000000 | s1468,lo_DZP,s1461 |
| s1590 | 12 | sumlo | OCD | lo | 199167/500000 | lo_OCP,lo_ODQ,lo_OCQ,s1270,s1508 |
| s1592 | 13 | sumlo | ODP | lo | 260671/1000000 | s1569,lo_OZP,s1475,s1278,s1476 |
| s1612 | 15 | sumlo | CDP | lo | 367177/1000000 | s1581,s1592,s1585,s1590,hi_ODF |
| s1620 | 21 | sumlo | CDZ | lo | 71753/250000 | s1612,lo_HDZ,lo_DZP,s1575,s1555 |
| s1644 | 33 | sumlo | CZP | lo | 178141/1000000 | s1620,lo_OZP,lo_DZP,s1474,s1435 |
| s1646 | 33 | diffhi | CDZ | hi | 3233/10000 | s1488,s1435,lo_DZP,s1474,lo_OZP |
| s1661 | 34 | sumlo | HZP | lo | 188081/1000000 | s1644,lo_HDZ,lo_DZP,s1315,s1646 |
| s1686 | 35 | sumlo | OHP | lo | 160191/500000 | s1265,s1592,s1320,lo_OCP,s1453 |
| s1688 | 36 | sumlo | HCP | lo | 174879/1000000 | lo_CFP,s1686,lo_HFP,lo_OCP,s1571 |
| s1693 | 37 | sumlo | OHP | lo | 182533/500000 | s1688,lo_OZP,s1661,lo_OCP,s1488 |
| s1694 | 37 | diffhi | HZP | hi | 201239/1000000 | s1488,s1565,s1688,lo_OZP,lo_OCP |
| s1696 | 38 | sumlo | HZP | lo | 10453/50000 | lo_DZP,s1693,s1320,lo_OZP,s1444 |

## Conclusion

{"triangle":"HZP","lower":"s1696","upper":"s1694"}
