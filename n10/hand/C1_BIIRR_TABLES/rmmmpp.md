# Leaf rmmmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":1,"FZP":1}

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
| 34 | plu | ["YOHZQ","YZQ",-1] |
| 35 | plu | ["YOHPQ","YPQ",-1] |
| 36 | plu | ["YHDZR","YZR",-1] |
| 37 | plu | ["YHDPR","YPR",-1] |
| 38 | plu | ["ZOHDP","ZDP",1] |
| 39 | plu | ["ZOHFP","ZOF",-1] |
| 40 | plu | ["POHFZ","POF",-1] |
| 41 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 42 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |
| 43 | capacity | ["OCP","Y","Z","CPZ",-1,"115189/200000","C013"] |
| 44 | plu | ["FOCYZ","FYZ",1] |
| 45 | plu | ["FOCYP","FYP",1] |
| 46 | plu | ["ZOCYP","ZYP",-1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","ZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Y"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCZ | OCZ | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_HDZ | HDZ | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CDP | CDP | lo | 279/1000 | ["cost","Z"] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFZ | DFZ | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZP | YZP | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_OFY | OFY | hi | 138233/317500 | "C018" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 1 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 2 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 3 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 4 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 5 | ["fan","HDY","DYZ","HDZ","HYZ"] | ["fan","HDY","Z"] |
| 6 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 7 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 8 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 9 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 10 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 11 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 12 | ["fan","DYP","DYZ","DZP","YZP"] | ["fan","DYP","Z"] |
| 13 | ["plu","CDP","CFZ","CDF","CZP","CDZ","CFP"] | ["plu","CDFZP"] |
| 14 | ["plu","CDZ","ODF","CDF","ODZ","DFZ","OCD"] | ["plu","DOCFZ"] |
| 15 | ["plu","DYZ","ODF","DFY","ODZ","DFZ","ODY"] | ["plu","DOFYZ"] |
| 16 | ["plu","DFP","HCD","CDF","HDP","CDP","HDF"] | ["plu","DHCFP"] |
| 17 | ["plu","DFP","HDY","DFY","HDP","DYP","HDF"] | ["plu","DHFYP"] |
| 18 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 19 | ["plu","HCF","OFP","CFP","OHF","HFP","OCF"] | ["plu","FOHCP"] |
| 20 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 21 | ["plu","CFP","DFZ","CDF","FZP","CFZ","DFP"] | ["plu","FCDZP"] |
| 22 | ["plu","CDY","OFY","CFY","ODY","DFY","OCY"] | ["plu","YOCDF"] |
| 23 | ["plu","CFY","HDY","CDY","HFY","DFY","HCY"] | ["plu","YHCDF"] |
| 24 | ["plu","CDZ","OFZ","CFZ","ODZ","DFZ","OCZ"] | ["plu","ZOCDF"] |
| 25 | ["plu","CFZ","DZP","CDZ","FZP","CZP","DFZ"] | ["plu","ZCDFP"] |
| 26 | ["plu","CFP","OZP","CZP","OFP","FZP","OCP"] | ["plu","POCFZ"] |
| 27 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 28 | ["plu","CFP","DZP","CDP","FZP","CZP","DFP"] | ["plu","PCDFZ"] |
| 29 | ["balance",[[-1,"CFZ","ODP"],[1,"FZP","OCD"],[1,"CZP","ODF"],[1,"CFP","ODZ"]]] | ["six","ODCFZP"] |
| 30 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 31 | ["balance",[[-1,"CFY","HDZ"],[1,"FYZ","HCD"],[-1,"CYZ","HDF"],[-1,"CFZ","HDY"]]] | ["six","HDCFYZ"] |
| 32 | ["balance",[[1,"CFZ","HDP"],[1,"FZP","HCD"],[1,"CZP","HDF"],[-1,"CFP","HDZ"]]] | ["six","HDCFZP"] |
| 33 | ["balance",[[-1,"FYZ","HDP"],[-1,"YZP","HDF"],[-1,"FZP","HDY"],[1,"FYP","HDZ"]]] | ["six","HDFYZP"] |
| 34 | ["balance",[[-1,"HCF","DYP"],[-1,"CFP","HDY"],[-1,"HFP","CDY"],[1,"HCP","DFY"]]] | ["six","DYHCFP"] |
| 35 | ["balance",[[-1,"HCZ","DYP"],[1,"CZP","HDY"],[1,"HZP","CDY"],[1,"HCP","DYZ"]]] | ["six","DYHCZP"] |
| 36 | ["balance",[[1,"CFZ","DYP"],[-1,"FZP","CDY"],[-1,"CZP","DFY"],[-1,"CFP","DYZ"]]] | ["six","DYCFZP"] |
| 37 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 38 | ["balance",[[-1,"HCD","FYZ"],[1,"CDY","HFZ"],[1,"HDY","CFZ"],[1,"HCY","DFZ"]]] | ["six","FZHCDY"] |
| 39 | ["balance",[[1,"HCD","FZP"],[1,"CDP","HFZ"],[1,"HDP","CFZ"],[-1,"HCP","DFZ"]]] | ["six","FZHCDP"] |
| 40 | ["balance",[[-1,"HDY","FZP"],[-1,"DYP","HFZ"],[1,"HYP","DFZ"],[-1,"HDP","FYZ"]]] | ["six","FZHDYP"] |
| 41 | ["balance",[[-1,"OHC","DFP"],[1,"HCD","OFP"],[-1,"OCD","HFP"],[-1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 42 | ["balance",[[-1,"OCD","FZP"],[1,"CDZ","OFP"],[-1,"ODZ","CFP"],[-1,"OCZ","DFP"]]] | ["six","FPOCDZ"] |
| 43 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 44 | ["balance",[[1,"HCD","YZP"],[-1,"CDY","HZP"],[-1,"HDY","CZP"],[-1,"HCY","DZP"]]] | ["six","ZPHCDY"] |
| 45 | ["balance",[[1,"HDF","YZP"],[-1,"DFY","HZP"],[1,"HFY","DZP"],[1,"HDY","FZP"]]] | ["six","ZPHDFY"] |
| 46 | ["balance",[[1,"CDF","YZP"],[-1,"DFY","CZP"],[-1,"CFY","DZP"],[-1,"CDY","FZP"]]] | ["six","ZPCDFY"] |
| 47 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 48 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 49 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 50 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 51 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 52 | ["linear",{"HDZ":1,"HZP":-1,"HDP":-1,"DZP":-1},"0"] | ["affine_quad","HDZP",-1] |
| 53 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 54 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 55 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 56 | ["linear",{"DYZ":-1,"DZP":-1,"DYP":1,"YZP":-1},"0"] | ["affine_quad","DYZP",1] |
| 57 | ["support","HDY","DFY","HFY","897/1000"] | ["support_quad","YDFH","ZP","299/31"] |
| 58 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 59 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 60 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 61 | ["bary",["OCZ",1],[null,["OHC",1],["OCD",1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","OC"] |
| 62 | ["bary",["HDY",-1],[["OHD",-1],["HCD",-1],["HDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","HD"] |
| 63 | ["bary",["HFY",-1],[["OHF",-1],["HCF",-1],["HFZ",-1]],"OCZ",["CYZ","OYZ","OCY"]] | ["bary","OCZ","Y","HF"] |
| 64 | ["bary",["OFZ",-1],[null,["ODF",-1],null],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","OF"] |
| 65 | ["bary",["CDZ",1],[["OCD",1],null,["CDF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CD"] |
| 66 | ["bary",["DYZ",-1],[["ODY",-1],null,["DFY",-1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","DY"] |
| 67 | ["bary",["HDZ",-1],[null,["HCD",-1],null],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","HD"] |
| 68 | ["bary",["CFZ",-1],[["HCF",1],null,["CDF",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","CF"] |
| 69 | ["bary",["HCP",1],[null,null,["HCD",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HC"] |
| 70 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 71 | ["bary",["CFP",-1],[["HCF",1],null,["CDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CF"] |
| 72 | ["bary",["DFP",1],[["HDF",1],null,["DFY",1]],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","DF"] |
| 73 | ["bary",["OCP",1],[["OHC",1],["OCD",1],["OCZ",1]],"HDZ",["DZP","HZP","HDP"]] | ["bary","HDZ","P","OC"] |
| 74 | ["bary",null,[["OCZ",-1],["ODZ",-1],["OFZ",1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OZ"] |
| 75 | ["bary",["OHP",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OH"] |
| 76 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 77 | ["bary",["OHZ",-1],[["OHC",-1],["OHD",-1],["OHP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OH"] |
| 78 | ["bary",["OFZ",-1],[["OCF",-1],["ODF",-1],["OFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OF"] |
| 79 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HF"] |
| 80 | ["bary",["HYZ",1],[["HCY",1],["HDY",1],["HYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HY"] |
| 81 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],["FYP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","FY"] |
| 82 | ["bary",["ODZ",1],[null,["ODF",1],["ODY",-1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","OD"] |
| 83 | ["bary",["HDZ",-1],[null,["HDF",1],["HDY",-1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","HD"] |
| 84 | ["bary",["DFZ",1],[null,null,["DFY",1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","DF"] |
| 85 | ["bary",["OHP",-1],[["OHD",-1],["OHF",-1],["OHZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OH"] |
| 86 | ["bary",["ODP",1],[null,["ODF",1],["ODZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OD"] |
| 87 | ["bary",["OZP",1],[["ODZ",-1],["OFZ",1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","OZ"] |
| 88 | ["bary",["HCP",1],[["HCD",1],["HCF",1],["HCZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HC"] |
| 89 | ["bary",["HYP",1],[["HDY",1],["HFY",1],["HYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","HY"] |
| 90 | ["bary",["CFP",-1],[["CDF",-1],null,["CFZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","CF"] |
| 91 | ["bary",["DZP",-1],[null,["DFZ",-1],null],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","DZ"] |
| 92 | ["bary",["FYP",1],[["DFY",1],null,["FYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","FY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s7 | 1 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s16 | 2 | sub | OFZ | hi | 281729/500000 | hi_ODF,lo_DFZ,lo_ODZ |
| s18 | 3 | sub | ODP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_OFP |
| s32 | 5 | sub | HDZ | hi | 131779/200000 | hi_HDY,lo_DYZ,lo_HYZ |
| s42 | 7 | sub | CDP | hi | 351851/500000 | hi_CDF,lo_CFP,lo_DFP |
| s46 | 9 | sub | DFZ | hi | 147041/250000 | hi_DFY,lo_DYZ,lo_FYZ |
| s50 | 10 | sub | DYP | hi | 147041/250000 | hi_DFY,lo_DFP,lo_FYP |
| s94 | 13 | sumlo | CFZ | lo | 13001/125000 | lo_CDF,lo_CZP,lo_CDZ,lo_CFP,s42 |
| s108 | 15 | sumlo | DYZ | lo | 24183/250000 | lo_DFY,lo_ODZ,lo_DFZ,lo_ODY,hi_ODF |
| s118 | 17 | sumlo | DFP | lo | 1071/10000 | lo_DFY,lo_HDP,lo_DYP,lo_HDF,hi_HDY |
| s124 | 18 | sumlo | HCF | lo | 24183/250000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s135 | 21 | sumlo | CFP | lo | 128673/1000000 | lo_CDF,lo_FZP,s94,s118,s46 |
| s143 | 22 | sumlo | CDY | lo | 42027/250000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,hi_OFY |
| s144 | 22 | sumlo | OFY | lo | 37539/200000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,s7 |
| s147 | 23 | sumlo | CFY | lo | 47447/500000 | s143,lo_HFY,lo_DFY,lo_HCY,hi_HDY |
| s167 | 24 | sumlo | CDZ | lo | 31063/200000 | s94,lo_ODZ,lo_DFZ,lo_OCZ,s16 |
| s185 | 29 | balance_lo | CFZ | lo | 68353/500000 | lo_FZP,lo_OCD,lo_CZP,lo_ODF,s135,lo_ODZ,s18 |
| s202 | 30 | balance_lo | CDY | lo | 3088/15625 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s147,lo_ODQ,hi_OFQ |
| s205 | 31 | balance_lo | FYZ | lo | 133461/1000000 | s147,lo_HDZ,lo_CYZ,lo_HDF,s185,lo_HDY,hi_HCD |
| s206 | 32 | balance_lo | CFP | lo | 16297/125000 | s185,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s32 |
| s207 | 33 | balance_lo | FYP | lo | 64959/500000 | s205,lo_HDP,lo_YZP,lo_HDF,lo_FZP,lo_HDY,s32 |
| s230 | 34 | balance_lo | HCP | lo | 87739/500000 | s124,lo_DYP,s206,lo_HDY,lo_HFP,s202,hi_DFY |
| s231 | 35 | balance_lo | HCZ | lo | 169843/1000000 | lo_CZP,lo_HDY,lo_HZP,s202,s230,s108,s50 |
| s232 | 36 | balance_lo | CFZ | lo | 81213/500000 | lo_FZP,s202,lo_CZP,lo_DFY,s206,s108,s50 |
| s236 | 37 | balance_lo | OFZ | lo | 222279/1000000 | lo_OHC,lo_DFZ,lo_OCD,lo_HFZ,lo_OHD,s232,hi_HCD |
| s238 | 38 | balance_lo | FYZ | lo | 161233/1000000 | s202,lo_HFZ,lo_HDY,s232,lo_HCY,lo_DFZ,hi_HCD |
| s239 | 39 | balance_lo | HCP | lo | 44883/250000 | lo_HCD,lo_FZP,lo_CDP,lo_HFZ,lo_HDP,s232,s46 |
| s240 | 40 | balance_lo | HYP | lo | 179343/1000000 | lo_HDY,lo_FZP,lo_DYP,lo_HFZ,lo_HDP,s238,s46 |
| s248 | 44 | balance_lo | YZP | lo | 9401/100000 | s202,lo_HZP,lo_HDY,lo_CZP,lo_HCY,lo_DZP,hi_HCD |
| s249 | 45 | balance_lo | HZP | lo | 21167/200000 | lo_HDF,s248,lo_HFY,lo_DZP,lo_HDY,lo_FZP,hi_DFY |
| s250 | 46 | balance_lo | YZP | lo | 1289/12500 | lo_DFY,lo_CZP,s147,lo_DZP,s202,lo_FZP,hi_CDF |
| s260 | 47 | linear | OCD | lo | 23977/62500 | s202,lo_OCY,lo_ODY |
| s261 | 48 | linear | OCF | lo | 375589/1000000 | s147,lo_OCY,s144 |
| s284 | 52 | linear | HDZ | lo | 58367/200000 | lo_DZP,lo_HDP,s249 |
| s291 | 54 | linear | CDP | lo | 68263/200000 | s167,lo_CZP,lo_DZP |
| s301 | 55 | linear | DFZ | lo | 2931/10000 | s118,lo_DZP,lo_FZP |
| s305 | 56 | linear | DYP | lo | 73213/250000 | s108,lo_DZP,s250 |
| s308 | 57 | support_z | HFY | lo | 95037/1000000 | lo_HDY,hi_DFY |
| s312 | 58 | linear | OHC | lo | 23977/62500 | s260 |
| s313 | 59 | linear | HCD | hi | 907/1000 | lo_HDF |
| s377 | 62 | bary_lo | HDY | hi | 406217/500000 | hi_OCF,s147,s144,lo_OCY,hi_OHD,s313,lo_HDF |
| s391 | 65 | bary_lo | CDZ | lo | 37839/200000 | hi_ODF,s301,s236,lo_ODZ,s260,lo_CDF |
| s399 | 66 | bary_hi | DYZ | lo | 49067/500000 | hi_ODF,s301,s236,lo_ODZ,lo_ODY,lo_DFY |
| s457 | 68 | bary_lo | CFZ | hi | 397669/1000000 | s313,s391,s284,s231,s124,hi_CDF |
| s472 | 70 | bary_hi | CDP | hi | 158617/250000 | s313,s291,lo_HDP,s239,s313 |
| s494 | 72 | bary_lo | DFP | lo | 22593/200000 | s377,s305,s240,lo_HDP,lo_HDF,lo_DFY |
| s525 | 75 | bary_hi | OHP | lo | 217971/1000000 | hi_CDF,s494,s206,s291,s312,lo_OHD,lo_OHF |
| s533 | 76 | bary_lo | HYP | lo | 181851/1000000 | hi_CDF,s494,s206,s291,lo_HCY,lo_HDY,s308 |
| s538 | 77 | bary_hi | OHZ | lo | 312029/1000000 | s472,lo_DZP,lo_CZP,s391,s312,lo_OHD,s525 |
| s540 | 79 | bary_hi | HFZ | lo | 93547/1000000 | s472,lo_DZP,lo_CZP,s391,s124,lo_HDF,lo_HFP |
| s541 | 80 | bary_lo | HYZ | lo | 207589/1000000 | s472,lo_DZP,lo_CZP,s391,lo_HCY,lo_HDY,s533 |
| s544 | 81 | bary_lo | FYZ | lo | 96577/500000 | s472,lo_DZP,lo_CZP,s391,s147,lo_DFY,s207 |
| s576 | 82 | bary_hi | ODZ | hi | 62537/200000 | hi_DFY,s544,s399,s301,hi_ODF,lo_ODY |
| s578 | 83 | bary_lo | HDZ | hi | 247479/500000 | hi_DFY,s544,s399,s301,lo_HDF,s377 |
| s582 | 84 | bary_hi | DFZ | hi | 120719/250000 | hi_DFY,s544,s399,s301,hi_DFY |
| s601 | 85 | bary_hi | OHP | lo | 25999/100000 | s582,lo_FZP,lo_DZP,s494,lo_OHD,lo_OHF,s538 |
| s603 | 86 | bary_hi | ODP | hi | 381/625 | s582,lo_FZP,lo_DZP,s494,hi_ODF,s576 |
| s608 | 88 | bary_lo | HCP | lo | 228867/1000000 | s582,lo_FZP,lo_DZP,s494,lo_HCD,s124,s231 |
| s610 | 89 | bary_lo | HYP | lo | 9469/40000 | s582,lo_FZP,lo_DZP,s494,lo_HDY,s308,s541 |
| s612 | 90 | bary_hi | CFP | lo | 171659/1000000 | s582,lo_FZP,lo_DZP,s494,lo_CDF,s232 |
| s621 | 92 | bary_lo | FYP | lo | 5589/31250 | s582,lo_FZP,lo_DZP,s494,lo_DFY,s544 |
| s627 | 0 | sum | OHD | lo | 21777/31250 | s284,lo_ODZ,s538 |
| s632 | 4 | sub | CDP | hi | 585133/1000000 | s313,s608,lo_HDP |
| s635 | 8 | sum | CDP | lo | 75039/200000 | s391,lo_CZP,lo_DZP |
| s637 | 10 | sub | DYP | hi | 482351/1000000 | hi_DFY,s494,s621 |
| s638 | 11 | sum | DFZ | lo | 59793/200000 | s494,lo_DZP,lo_FZP |
| s639 | 12 | sum | DYP | lo | 147127/500000 | s399,lo_DZP,s250 |
| s649 | 13 | sumlo | CFZ | lo | 82903/500000 | lo_CDF,lo_CZP,s391,s612,s632 |
| s650 | 14 | sumlo | CDZ | lo | 479/2500 | lo_CDF,lo_ODZ,s638,s260,hi_ODF |
| s651 | 15 | sumlo | DYZ | lo | 98717/1000000 | lo_DFY,lo_ODZ,s638,lo_ODY,hi_ODF |
| s655 | 17 | sumlo | DFP | lo | 56563/500000 | lo_DFY,lo_HDP,s639,lo_HDF,s377 |
| s659 | 18 | sumlo | HCF | lo | 53167/500000 | lo_CDF,lo_OHF,lo_HDF,s261,hi_ODF |
| s665 | 21 | sumlo | CFP | lo | 34501/200000 | lo_CDF,lo_FZP,s649,s655,s582 |
| s667 | 22 | sumlo | OFY | lo | 188147/1000000 | s147,lo_ODY,lo_DFY,lo_OCY,s7 |
| s668 | 23 | sumlo | CFY | lo | 102561/1000000 | s202,s308,lo_DFY,lo_HCY,s377 |
| s673 | 25 | sumlo | DZP | lo | 28681/250000 | s650,lo_FZP,lo_CZP,s638,s457 |
| s676 | 29 | balance_lo | CFZ | lo | 190719/1000000 | lo_FZP,s260,lo_CZP,lo_ODF,s665,lo_ODZ,s603 |
| s678 | 30 | balance_lo | CDY | lo | 101513/500000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s668,lo_ODQ,hi_OFQ |
| s683 | 32 | balance_lo | CFP | lo | 45927/250000 | s676,lo_HDP,lo_FZP,lo_HCD,lo_CZP,lo_HDF,s578 |
| s684 | 33 | balance_lo | FYP | lo | 186067/1000000 | s544,lo_HDP,s250,lo_HDF,lo_FZP,lo_HDY,s578 |
| s691 | 34 | balance_lo | HCP | lo | 229491/1000000 | s659,s639,s683,lo_HDY,lo_HFP,s678,hi_DFY |
| s692 | 35 | balance_lo | HCZ | lo | 225321/1000000 | lo_CZP,lo_HDY,s249,s678,s691,s651,s637 |
| s693 | 36 | balance_lo | CFZ | lo | 52637/250000 | lo_FZP,s678,lo_CZP,lo_DFY,s683,s651,s637 |
| s695 | 37 | balance_lo | OFZ | lo | 327787/1000000 | s312,s638,s260,s540,s627,s693,s313 |
| s697 | 39 | balance_lo | HCP | lo | 123449/500000 | lo_HCD,lo_FZP,s635,s540,lo_HDP,s693,s582 |
| s698 | 41 | balance_lo | OFP | lo | 22833/100000 | s312,s655,s260,lo_HFP,s627,s683,s313 |
| s701 | 43 | balance_lo | OZP | lo | 82371/500000 | s312,s673,s260,s249,s627,lo_CZP,s313 |
| s702 | 44 | balance_lo | YZP | lo | 106613/1000000 | s678,s249,lo_HDY,lo_CZP,lo_HCY,s673,s313 |
| s703 | 45 | balance_lo | HZP | lo | 5513/50000 | lo_HDF,s702,s308,s673,lo_HDY,lo_FZP,hi_DFY |
| s704 | 46 | balance_lo | YZP | lo | 10699/100000 | lo_DFY,lo_CZP,s668,s673,s678,lo_FZP,hi_CDF |
| s706 | 47 | linear | OCD | lo | 194513/500000 | s678,lo_OCY,lo_ODY |
| s707 | 48 | linear | OCF | lo | 95927/250000 | s668,lo_OCY,s667 |
| s709 | 49 | linear | ODF | lo | 89969/125000 | s638,lo_ODZ,s695 |
| s716 | 50 | linear | ODP | lo | 186233/500000 | s673,lo_ODZ,s701 |
| s724 | 51 | linear | HCD | lo | 715093/1000000 | s635,s697,lo_HDP |
| s726 | 51 | linear | CDP | hi | 283551/500000 | s313,s697,lo_HDP |
| s730 | 52 | linear | HDZ | lo | 9937/31250 | s673,lo_HDP,s703 |
| s732 | 53 | linear | CDF | lo | 701113/1000000 | s650,s693,s638 |
| s736 | 54 | linear | CDP | lo | 99831/250000 | s650,lo_CZP,s673 |
| s744 | 55 | linear | DFZ | lo | 6417/20000 | s655,s673,lo_FZP |
| s748 | 56 | linear | DYP | lo | 320431/1000000 | s651,s673,s704 |
| s750 | 58 | linear | OHC | lo | 194513/500000 | s706 |
| s757 | 61 | bary_hi | OCZ | hi | 207327/500000 | hi_OHD,s730,lo_ODZ,s538,hi_OHC,hi_OCD |
| s774 | 62 | bary_lo | HDY | hi | 50773/62500 | hi_OCF,s668,s667,lo_OCY,hi_OHD,s313,lo_HDF |
| s783 | 63 | bary_hi | HFY | lo | 96113/1000000 | s757,lo_CYZ,lo_OYZ,lo_OCY,lo_OHF,s659,s540 |
| s789 | 64 | bary_lo | OFZ | hi | 65201/125000 | hi_ODF,s744,s695,lo_ODZ,hi_ODF |
| s794 | 65 | bary_lo | CDZ | lo | 203133/1000000 | hi_ODF,s744,s695,lo_ODZ,s706,s732 |
| s801 | 66 | bary_hi | DYZ | lo | 25223/250000 | hi_ODF,s744,s695,lo_ODZ,lo_ODY,lo_DFY |
| s834 | 67 | bary_lo | HDZ | hi | 239273/500000 | s313,s794,s730,s692,s313 |
| s843 | 69 | bary_hi | HCP | hi | 103669/250000 | s313,s736,lo_HDP,s697,s313 |
| s848 | 71 | bary_lo | CFP | hi | 22497/62500 | s313,s736,lo_HDP,s697,s659,hi_CDF |
| s860 | 72 | bary_lo | DFP | lo | 29033/250000 | s774,s748,s610,lo_HDP,lo_HDF,lo_DFY |
| s862 | 73 | bary_lo | OCP | lo | 330727/1000000 | s834,s673,s703,lo_HDP,s750,s706,lo_OCZ |
| s893 | 77 | bary_hi | OHZ | lo | 357737/1000000 | s726,s673,lo_CZP,s794,s750,s627,s601 |
| s894 | 78 | bary_hi | OFZ | lo | 340351/1000000 | s726,s673,lo_CZP,s794,s707,s709,s698 |
| s895 | 79 | bary_hi | HFZ | lo | 95697/1000000 | s726,s673,lo_CZP,s794,s659,lo_HDF,lo_HFP |
| s899 | 81 | bary_lo | FYZ | lo | 229463/1000000 | s726,s673,lo_CZP,s794,s668,lo_DFY,s684 |
| s921 | 82 | bary_hi | ODZ | hi | 115973/500000 | hi_DFY,s899,s801,s744,hi_ODF,lo_ODY |
| s923 | 83 | bary_lo | HDZ | hi | 453591/1000000 | hi_DFY,s899,s801,s744,lo_HDF,s774 |
| s924 | 84 | bary_hi | DFZ | hi | 443809/1000000 | hi_DFY,s899,s801,s744,hi_DFY |
| s941 | 86 | bary_hi | ODP | hi | 111069/200000 | s924,lo_FZP,s673,s860,hi_ODF,s921 |
| s943 | 87 | bary_hi | OZP | hi | 32041/125000 | s924,lo_FZP,s673,s860,lo_ODZ,s789 |
| s944 | 88 | bary_lo | HCP | lo | 132517/500000 | s924,lo_FZP,s673,s860,s724,s659,s692 |
| s948 | 90 | bary_hi | CFP | lo | 50503/250000 | s924,lo_FZP,s673,s860,s732,s693 |
| s954 | 91 | bary_lo | DZP | hi | 234677/1000000 | s924,lo_FZP,s673,s860,s924 |
| s957 | 92 | bary_lo | FYP | lo | 205471/1000000 | s924,lo_FZP,s673,s860,lo_DFY,s899 |
| s960 | 0 | sum | OHD | lo | 768721/1000000 | s730,lo_ODZ,s893 |
| s963 | 2 | sum | ODF | lo | 754201/1000000 | s744,lo_ODZ,s894 |
| s964 | 3 | sub | OFP | hi | 22343/50000 | hi_ODF,s860,s716 |
| s968 | 4 | sum | HCD | lo | 378679/500000 | s736,s944,lo_HDP |
| s971 | 6 | sum | CDF | lo | 734531/1000000 | s794,s693,s744 |
| s972 | 8 | sum | CDP | lo | 410857/1000000 | s794,lo_CZP,s673 |
| s974 | 10 | sub | DYP | hi | 452561/1000000 | hi_DFY,s860,s957 |
| s975 | 11 | sum | DFZ | lo | 20241/62500 | s860,s673,lo_FZP |
| s988 | 15 | sumlo | DYZ | lo | 101191/1000000 | lo_DFY,lo_ODZ,s975,lo_ODY,hi_ODF |
| s992 | 16 | sumlo | DFP | lo | 117443/1000000 | s971,lo_HDP,s972,lo_HDF,s313 |
| s999 | 19 | sumlo | HCF | lo | 121899/1000000 | s948,lo_OHF,lo_HFP,s707,s964 |
| s1001 | 20 | sumlo | OFP | lo | 248107/1000000 | s992,s894,lo_FZP,s963,s924 |
| s1007 | 23 | sumlo | CFY | lo | 103469/1000000 | s678,s783,lo_DFY,lo_HCY,s774 |
| s1015 | 26 | sumlo | CFP | lo | 21001/100000 | lo_CZP,s1001,lo_FZP,s862,s943 |
| s1016 | 27 | sumlo | DFP | lo | 69621/500000 | s972,lo_HFP,s1015,lo_HDP,s843 |
| s1017 | 28 | sumlo | CFP | lo | 108999/500000 | s972,lo_FZP,lo_CZP,s1016,s954 |
| s1018 | 28 | sumlo | DZP | lo | 142127/1000000 | s972,lo_FZP,lo_CZP,s1016,s848 |
| s1024 | 29 | balance_lo | CFZ | lo | 45591/200000 | lo_FZP,s706,lo_CZP,s963,s1017,lo_ODZ,s941 |
| s1026 | 30 | balance_lo | CDY | lo | 103743/500000 | s971,lo_OYQ,lo_DFY,lo_OCQ,s1007,lo_ODQ,hi_OFQ |
| s1032 | 32 | balance_lo | CFP | lo | 221087/1000000 | s1024,lo_HDP,lo_FZP,s968,lo_CZP,lo_HDF,s923 |
| s1039 | 36 | balance_lo | CFZ | lo | 234687/1000000 | lo_FZP,s1026,lo_CZP,lo_DFY,s1032,s988,s974 |
| s1040 | 37 | balance_lo | OFZ | lo | 378859/1000000 | s750,s975,s706,s895,s960,s1039,s313 |
| s1047 | 42 | balance_lo | CDZ | lo | 26739/125000 | s706,lo_FZP,lo_ODZ,s1032,lo_OCZ,s1016,s964 |
| s1057 | 47 | linear | OCD | lo | 196743/500000 | s1026,lo_OCY,lo_ODY |
| s1087 | 53 | linear | CDF | lo | 154491/200000 | s1047,s1039,s975 |
| s1104 | 55 | linear | DFZ | lo | 374369/1000000 | s1016,s1018,lo_FZP |
| s1114 | 60 | linear | CDF | hi | 878101/1000000 | s999 |
| s1163 | 64 | bary_lo | OFZ | hi | 468089/1000000 | hi_ODF,s1104,s1040,lo_ODZ,hi_ODF |
| s1170 | 65 | bary_lo | CDZ | lo | 234267/1000000 | hi_ODF,s1104,s1040,lo_ODZ,s1057,s1087 |

## Conclusion

{"kind":"bary_zero","relation":74,"side":"hi","value":"-67567399/175620200000","sources":["s1114","s1104","s1039","s1170","lo_OCZ","lo_ODZ","s1163"]}
