# Leaf rmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":1,"FZP":-1,"FYZ":1,"FYP":-1}

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
| 9 | extreme | ["OHZ","D","ZOD",1] |
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFY","O","FYO",-1] |
| 16 | extreme | ["DZQ","O","ZQO",-1] |
| 17 | extreme | ["DZQ","H","ZQH",-1] |
| 18 | interior_line | ["OZ","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["HZ","R","CDQ","R",-1] |
| 22 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 23 | interior_line | ["CY","P","HCDF","P",-1] |
| 24 | interior_line | ["CZ","R","CDQ","R",-1] |
| 25 | interior_line | ["CP","R","CDQ","R",-1] |
| 26 | interior_line | ["DZ","Y","OHC","Y",1] |
| 27 | interior_line | ["DZ","R","CDQ","R",1] |
| 28 | interior_line | ["DP","R","CDQ","R",1] |
| 29 | interior_line | ["ZQ","Y","OHC","Y",-1] |
| 30 | interior_line | ["ZR","Y","OHC","Y",-1] |
| 31 | capacity | ["OCD","Y","P","DOP",-1,"115189/200000","C009"] |
| 32 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 33 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 34 | capacity | ["HDF","Z","P","HDP",-1,"153/500","C010"] |
| 35 | plu | ["OHDYZ","OYZ",1] |
| 36 | plu | ["OHDYP","OYP",1] |
| 37 | plu | ["OHDPR","OPR",-1] |
| 38 | plu | ["HODZP","HZP",-1] |
| 39 | plu | ["DOHYP","DYP",-1] |
| 40 | plu | ["DOHZP","DZP",1] |
| 41 | plu | ["FOHYZ","FOZ",1] |
| 42 | plu | ["FHCYP","FCP",-1] |
| 43 | plu | ["FHCPQ","FPQ",1] |
| 44 | plu | ["FHCPR","FPR",1] |
| 45 | plu | ["YOHPQ","YPQ",-1] |
| 46 | plu | ["YOFZP","YZP",1] |
| 47 | plu | ["YHDPR","YPR",-1] |
| 48 | plu | ["ZOHCP","ZCP",-1] |
| 49 | plu | ["ZOHPQ","ZPQ",1] |
| 50 | plu | ["ZOHPR","ZPR",1] |
| 51 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 52 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | "C014" |
| lo_OHF | OHF | lo | 279/1000 | ["cost","P"] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OFZ | OFZ | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","Z"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 279/1000 | ["cost","P"] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFZ | CFZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 93/1000 | ["cost",""] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHZ","HZP","OHP","OZP"] | ["fan","OHZ","P"] |
| 1 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 2 | ["fan","ODF","DFZ","ODZ","OFZ"] | ["fan","ODF","Z"] |
| 3 | ["fan","HCF","CFP","HCP","HFP"] | ["fan","HCF","P"] |
| 4 | ["fan","HCZ","CZP","HCP","HZP"] | ["fan","HCZ","P"] |
| 5 | ["fan","HDF","DFZ","HDZ","HFZ"] | ["fan","HDF","Z"] |
| 6 | ["fan","CDF","CDZ","CFZ","DFZ"] | ["fan","CDF","Z"] |
| 7 | ["plu","OCD","OHY","OCY","OHD","ODY","OHC"] | ["plu","OHCDY"] |
| 8 | ["plu","OCF","ODP","OCD","OFP","OCP","ODF"] | ["plu","OCDFP"] |
| 9 | ["plu","OCD","OYP","OCP","ODY","OCY","ODP"] | ["plu","OCDYP"] |
| 10 | ["plu","HCZ","OHD","HCD","OHZ","HDZ","OHC"] | ["plu","HOCDZ"] |
| 11 | ["plu","HCD","OHP","HCP","OHD","HDP","OHC"] | ["plu","HOCDP"] |
| 12 | ["plu","HDY","OHP","HDP","OHY","HYP","OHD"] | ["plu","HODYP"] |
| 13 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 14 | ["plu","HCD","HFP","HCF","HDP","HCP","HDF"] | ["plu","HCDFP"] |
| 15 | ["plu","HCD","OCF","CDF","OHC","HCF","OCD"] | ["plu","COHDF"] |
| 16 | ["plu","HCD","OCZ","CDZ","OHC","HCZ","OCD"] | ["plu","COHDZ"] |
| 17 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 18 | ["plu","HDF","ODZ","DFZ","OHD","HDZ","ODF"] | ["plu","DOHFZ"] |
| 19 | ["plu","HDQ","ODF","DFQ","OHD","HDF","ODQ"] | ["plu","DOHFQ"] |
| 20 | ["plu","CDZ","HDF","CDF","HDZ","DFZ","HCD"] | ["plu","DHCFZ"] |
| 21 | ["plu","HFZ","ODF","DFZ","OHF","HDF","OFZ"] | ["plu","FOHDZ"] |
| 22 | ["plu","DFY","HFZ","DFZ","HFY","FYZ","HDF"] | ["plu","FHDYZ"] |
| 23 | ["plu","DFP","HFZ","DFZ","HFP","FZP","HDF"] | ["plu","FHDZP"] |
| 24 | ["plu","CDY","OFY","CFY","ODY","DFY","OCY"] | ["plu","YOCDF"] |
| 25 | ["plu","CZP","OFZ","CFZ","OZP","FZP","OCZ"] | ["plu","ZOCFP"] |
| 26 | ["plu","DZP","HFZ","DFZ","HZP","FZP","HDZ"] | ["plu","ZHDFP"] |
| 27 | ["plu","CFP","ODP","CDP","OFP","DFP","OCP"] | ["plu","POCDF"] |
| 28 | ["plu","CDP","HFP","CFP","HDP","DFP","HCP"] | ["plu","PHCDF"] |
| 29 | ["plu","CFP","DYP","CDP","FYP","CYP","DFP"] | ["plu","PCDFY"] |
| 30 | ["plu","DFP","YZP","DYP","FZP","DZP","FYP"] | ["plu","PDFYZ"] |
| 31 | ["balance",[[1,"HDF","OCZ"],[-1,"DFZ","OHC"],[-1,"HFZ","OCD"],[-1,"HDZ","OCF"]]] | ["six","OCHDFZ"] |
| 32 | ["balance",[[1,"CDZ","OFP"],[1,"DZP","OCF"],[-1,"CZP","ODF"],[1,"CDP","OFZ"]]] | ["six","OFCDZP"] |
| 33 | ["balance",[[1,"HCD","OFY"],[-1,"CDF","OHY"],[-1,"HDF","OCY"],[-1,"HCF","ODY"]]] | ["six","OYHCDF"] |
| 34 | ["balance",[[-1,"HCD","OFP"],[-1,"CDF","OHP"],[-1,"HDF","OCP"],[1,"HCF","ODP"]]] | ["six","OPHCDF"] |
| 35 | ["balance",[[-1,"HCD","OPQ"],[1,"CDQ","OHP"],[1,"HDQ","OCP"],[1,"HCQ","ODP"]]] | ["six","OPHCDQ"] |
| 36 | ["balance",[[1,"HCD","OFQ"],[-1,"CDF","OHQ"],[-1,"HDF","OCQ"],[-1,"HCF","ODQ"]]] | ["six","OQHCDF"] |
| 37 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 38 | ["balance",[[1,"HDF","OZQ"],[-1,"DFZ","OHQ"],[-1,"HFZ","ODQ"],[-1,"HDZ","OFQ"]]] | ["six","OQHDFZ"] |
| 39 | ["balance",[[1,"CDF","OPQ"],[1,"DFP","OCQ"],[1,"CFP","ODQ"],[-1,"CDP","OFQ"]]] | ["six","OQCDFP"] |
| 40 | ["balance",[[-1,"CFZ","OPQ"],[-1,"FZP","OCQ"],[1,"CZP","OFQ"],[-1,"CFP","OZQ"]]] | ["six","OQCFZP"] |
| 41 | ["balance",[[-1,"CYZ","OPQ"],[1,"YZP","OCQ"],[1,"CZP","OYQ"],[1,"CYP","OZQ"]]] | ["six","OQCYZP"] |
| 42 | ["balance",[[1,"ODF","HCP"],[1,"DFP","OHC"],[1,"OFP","HCD"],[-1,"ODP","HCF"]]] | ["six","HCODFP"] |
| 43 | ["balance",[[1,"ODP","HCQ"],[1,"DPQ","OHC"],[-1,"OPQ","HCD"],[1,"ODQ","HCP"]]] | ["six","HCODPQ"] |
| 44 | ["balance",[[-1,"OFZ","HCP"],[-1,"FZP","OHC"],[1,"OZP","HCF"],[-1,"OFP","HCZ"]]] | ["six","HCOFZP"] |
| 45 | ["balance",[[-1,"OFP","HDQ"],[1,"FPQ","OHD"],[-1,"OPQ","HDF"],[-1,"OFQ","HDP"]]] | ["six","HDOFPQ"] |
| 46 | ["balance",[[-1,"OZP","HDQ"],[1,"ZPQ","OHD"],[-1,"OPQ","HDZ"],[-1,"OZQ","HDP"]]] | ["six","HDOZPQ"] |
| 47 | ["balance",[[1,"CYZ","HDP"],[1,"YZP","HCD"],[-1,"CZP","HDY"],[1,"CYP","HDZ"]]] | ["six","HDCYZP"] |
| 48 | ["balance",[[1,"OHD","CFY"],[-1,"HDF","OCY"],[-1,"ODF","HCY"],[-1,"OHF","CDY"]]] | ["six","CYOHDF"] |
| 49 | ["balance",[[-1,"ODP","CYQ"],[-1,"DPQ","OCY"],[1,"OPQ","CDY"],[-1,"ODQ","CYP"]]] | ["six","CYODPQ"] |
| 50 | ["balance",[[-1,"OFP","CYQ"],[-1,"FPQ","OCY"],[1,"OPQ","CFY"],[-1,"OFQ","CYP"]]] | ["six","CYOFPQ"] |
| 51 | ["balance",[[-1,"OZP","CYQ"],[-1,"ZPQ","OCY"],[1,"OPQ","CYZ"],[-1,"OZQ","CYP"]]] | ["six","CYOZPQ"] |
| 52 | ["balance",[[1,"ODF","CZP"],[-1,"DFP","OCZ"],[-1,"OFP","CDZ"],[-1,"ODP","CFZ"]]] | ["six","CZODFP"] |
| 53 | ["balance",[[-1,"ODY","CZP"],[1,"DYP","OCZ"],[-1,"OYP","CDZ"],[-1,"ODP","CYZ"]]] | ["six","CZODYP"] |
| 54 | ["balance",[[1,"DFY","CZP"],[-1,"FYP","CDZ"],[-1,"DYP","CFZ"],[-1,"DFP","CYZ"]]] | ["six","CZDFYP"] |
| 55 | ["balance",[[1,"OCD","FYQ"],[-1,"CDQ","OFY"],[-1,"ODQ","CFY"],[-1,"OCQ","DFY"]]] | ["six","FYOCDQ"] |
| 56 | ["balance",[[-1,"OHC","DFZ"],[1,"HCD","OFZ"],[-1,"OCD","HFZ"],[-1,"OHD","CFZ"]]] | ["six","FZOHCD"] |
| 57 | ["balance",[[-1,"OHC","DFP"],[-1,"HCD","OFP"],[-1,"OCD","HFP"],[1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 58 | ["balance",[[1,"OCD","YZP"],[-1,"CDY","OZP"],[-1,"ODY","CZP"],[-1,"OCY","DZP"]]] | ["six","ZPOCDY"] |
| 59 | ["linear",{"OHC":1,"OCD":-1,"OHD":-1,"HCD":1},"0"] | ["affine_quad","OHCD",-1] |
| 60 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 61 | ["linear",{"OCD":1,"ODQ":-1,"OCQ":-1,"CDQ":1},"0"] | ["affine_quad","OCDQ",1] |
| 62 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 63 | ["linear",{"ODF":1,"OFZ":-1,"ODZ":-1,"DFZ":-1},"0"] | ["affine_quad","ODFZ",1] |
| 64 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 65 | ["linear",{"HCF":1,"HFP":-1,"HCP":-1,"CFP":-1},"0"] | ["affine_quad","HCFP",1] |
| 66 | ["linear",{"CDF":1,"CFZ":-1,"CDZ":-1,"DFZ":-1},"0"] | ["affine_quad","CDFZ",1] |
| 67 | ["linear",{"DFZ":-1,"DZP":-1,"DFP":1,"FZP":-1},"0"] | ["affine_quad","DFZP",-1] |
| 68 | ["quad","HDF","HDP","449/1000"] | ["quad","HPDF","Z"] |
| 69 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 70 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 71 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 72 | ["bary",["OCP",1],[null,["OHC",1],["OCD",1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OC"] |
| 73 | ["bary",["CDP",1],[["OCD",1],["HCD",1],["CDF",1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","CD"] |
| 74 | ["bary",["DPQ",-1],[["ODQ",-1],["HDQ",-1],["DFQ",-1]],"OHF",["HFP","OFP","OHP"]] | ["bary","OHF","P","DQ"] |
| 75 | ["bary",["OHY",-1],[null,["OHC",-1],["OHD",-1]],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","OH"] |
| 76 | ["bary",["OFY",-1],[null,["OCF",-1],["ODF",-1]],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","OF"] |
| 77 | ["bary",["FYP",1],[["OFP",1],["CFP",1],["DFP",1]],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","FP"] |
| 78 | ["bary",["HDY",-1],[["OHD",-1],["HCD",-1],["HDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","HD"] |
| 79 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DPQ",-1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","DQ"] |
| 80 | ["bary",["FYQ",-1],[["OFQ",-1],["DFQ",1],null],"ODQ",["DYQ","OYQ","ODY"]] | ["bary","ODQ","Y","FQ"] |
| 81 | ["bary",["OHP",-1],[null,["OHC",-1],["OHD",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OH"] |
| 82 | ["bary",["ODP",1],[["OHD",1],["OCD",-1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","OD"] |
| 83 | ["bary",["HFP",-1],[null,["HCF",-1],["HDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HF"] |
| 84 | ["bary",["CDP",1],[["HCD",1],null,null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CD"] |
| 85 | ["bary",["CFP",1],[["HCF",1],null,["CDF",-1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","CF"] |
| 86 | ["bary",["DFP",1],[["HDF",1],["CDF",1],null],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","DF"] |
| 87 | ["bary",["ODZ",1],[["OHD",1],null,["ODF",1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","OD"] |
| 88 | ["bary",["HCZ",1],[null,["HCD",1],["HCF",1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","HC"] |
| 89 | ["bary",["CDZ",1],[["HCD",1],null,["CDF",1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","CD"] |
| 90 | ["bary",["CZP",-1],[["HCP",1],["CDP",-1],["CFP",-1]],"HDF",["DFZ","HFZ","HDZ"]] | ["bary","HDF","Z","CP"] |
| 91 | ["bary",["OFZ",-1],[["OCF",-1],["ODF",-1],null],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OF"] |
| 92 | ["bary",["OZP",-1],[["OCP",-1],["ODP",-1],["OFP",-1]],"CDF",["DFZ","CFZ","CDZ"]] | ["bary","CDF","Z","OP"] |
| 93 | ["bary",["HFZ",-1],[["HDF",-1],null,["HFP",-1]],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","HF"] |
| 94 | ["bary",["CZP",-1],[["CDP",-1],["CFP",-1],null],"DFP",["FZP","DZP","DFZ"]] | ["bary","DFP","Z","CP"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s9 | 1 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s31 | 5 | sub | HFZ | hi | 3/25 | hi_HDF,lo_DFZ,lo_HDZ |
| s46 | 7 | sumlo | OHY | lo | 157113/1000000 | lo_OCY,lo_OHD,lo_ODY,lo_OHC,hi_OCD |
| s62 | 12 | sumlo | OHP | lo | 23421/250000 | lo_HDP,s46,lo_HYP,lo_OHD,hi_HDY |
| s64 | 13 | sumlo | HDY | lo | 43223/125000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,hi_HCF |
| s86 | 18 | sumlo | ODZ | lo | 339801/1000000 | lo_DFZ,lo_OHD,lo_HDZ,lo_ODF,hi_HDF |
| s101 | 20 | sumlo | CDZ | lo | 80463/250000 | lo_CDF,lo_HDZ,lo_DFZ,lo_HCD,hi_HDF |
| s113 | 21 | sumlo | ODF | lo | 8649/20000 | lo_DFZ,lo_OHF,lo_HDF,lo_OFZ,s31 |
| s127 | 22 | sumlo | DFY | lo | 8649/20000 | lo_DFZ,lo_HFY,lo_FYZ,lo_HDF,s31 |
| s129 | 23 | sumlo | DFP | lo | 2883/10000 | lo_DFZ,lo_HFP,lo_FZP,lo_HDF,s31 |
| s131 | 24 | sumlo | OFY | lo | 125317/1000000 | lo_CFY,lo_ODY,s127,lo_OCY,s9 |
| s142 | 26 | sumlo | DZP | lo | 2883/20000 | lo_DFZ,lo_HZP,lo_FZP,lo_HDZ,s31 |
| s171 | 37 | balance_lo | CDY | lo | 161241/1000000 | lo_HCD,lo_OYQ,s64,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s182 | 42 | balance_lo | ODP | lo | 145823/500000 | s113,lo_HCP,s129,lo_OHC,lo_OFP,lo_HCD,hi_HCF |
| s199 | 48 | balance_lo | CFY | lo | 111151/1000000 | lo_HDF,lo_OCY,s113,lo_HCY,lo_OHF,s171,hi_OHD |
| s211 | 56 | balance_lo | OFZ | lo | 119537/1000000 | lo_OHC,lo_DFZ,lo_OCD,lo_HFZ,lo_OHD,lo_CFZ,hi_HCD |
| s212 | 57 | balance_lo | CFP | lo | 42731/250000 | lo_OHC,s129,lo_HCD,lo_OFP,lo_OCD,lo_HFP,hi_OHD |
| s231 | 60 | linear | OHQ | lo | 613041/1000000 | hi_HDQ,lo_ODQ,lo_OHD |
| s232 | 60 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s237 | 61 | linear | OCD | lo | 367/1000 | hi_CDQ,lo_OCQ,lo_ODQ |
| s238 | 62 | linear | OCF | lo | 82367/250000 | s199,lo_OCY,s131 |
| s245 | 63 | linear | ODF | lo | 276169/500000 | lo_DFZ,s86,s211 |
| s248 | 64 | linear | DFQ | lo | 129979/500000 | s245,lo_ODQ,hi_OFQ |
| s256 | 65 | linear | HCF | lo | 89231/250000 | s212,lo_HCP,lo_HFP |
| s268 | 66 | linear | CDF | lo | 126963/250000 | s101,lo_CFZ,lo_DFZ |
| s270 | 67 | linear | DFP | lo | 6603/20000 | lo_DFZ,s142,lo_FZP |
| s273 | 68 | quad | HDP | lo | 143/1000 | hi_HDF |
| s276 | 69 | linear | OHC | lo | 367/1000 | s237 |
| s277 | 70 | linear | HCD | hi | 721/1000 | lo_HDF |
| s278 | 71 | linear | HCF | hi | 123037/250000 | s268 |
| s279 | 71 | linear | CDF | hi | 160769/250000 | s256 |
| s289 | 72 | bary_hi | OCP | hi | 538663/1000000 | hi_OHD,s273,s182,s62,hi_OHC,hi_OCD |
| s309 | 73 | bary_lo | CDP | lo | 435671/1000000 | hi_OHF,lo_HFP,lo_OFP,s62,s237,lo_HCD,s268 |
| s311 | 74 | bary_hi | DPQ | lo | 171139/500000 | hi_OHF,lo_HFP,lo_OFP,s62,lo_ODQ,s232,s248 |
| s314 | 75 | bary_hi | OHY | lo | 171323/1000000 | hi_OCD,s171,lo_ODY,lo_OCY,s276,lo_OHD |
| s315 | 76 | bary_hi | OFY | lo | 35597/250000 | hi_OCD,s171,lo_ODY,lo_OCY,s238,s245 |
| s329 | 77 | bary_lo | FYP | lo | 35969/250000 | hi_OCD,s171,lo_ODY,lo_OCY,lo_OFP,s212,s270 |
| s332 | 78 | bary_lo | HDY | hi | 750121/1000000 | hi_OCF,s199,s315,lo_OCY,hi_OHD,s277,lo_HDF |
| s339 | 79 | bary_hi | DYQ | lo | 180787/500000 | s289,lo_CYP,lo_OYP,lo_OCY,lo_ODQ,lo_CDQ,s311 |
| s366 | 80 | bary_lo | FYQ | hi | 713361/1000000 | hi_ODQ,s339,lo_OYQ,lo_ODY,hi_OFQ,s248 |
| s390 | 81 | bary_hi | OHP | lo | 81153/500000 | s277,s309,s273,lo_HCP,s276,lo_OHD |
| s392 | 82 | bary_hi | ODP | hi | 37493/62500 | s277,s309,s273,lo_HCP,hi_OHD,s237 |
| s402 | 83 | bary_hi | HFP | lo | 53389/500000 | s277,s309,s273,lo_HCP,s256,lo_HDF |
| s405 | 84 | bary_hi | CDP | hi | 97/200 | s277,s309,s273,lo_HCP,s277 |
| s406 | 85 | bary_hi | CFP | hi | 5311/20000 | s277,s309,s273,lo_HCP,s278,s268 |
| s413 | 86 | bary_hi | DFP | hi | 178223/500000 | s277,s309,s273,lo_HCP,hi_HDF,s279 |
| s434 | 87 | bary_lo | ODZ | lo | 378789/1000000 | hi_HDF,lo_DFZ,lo_HFZ,lo_HDZ,lo_OHD,s245 |
| s441 | 88 | bary_hi | HCZ | hi | 1351/3125 | hi_HDF,lo_DFZ,lo_HFZ,lo_HDZ,s277,s278 |
| s447 | 89 | bary_lo | CDZ | lo | 91317/250000 | hi_HDF,lo_DFZ,lo_HFZ,lo_HDZ,lo_HCD,s268 |
| s451 | 90 | bary_lo | CZP | hi | 121319/500000 | hi_HDF,lo_DFZ,lo_HFZ,lo_HDZ,lo_HCP,s405,s406 |
| s478 | 91 | bary_hi | OFZ | lo | 31881/250000 | s279,lo_DFZ,lo_CFZ,s447,s238,s245 |
| s480 | 92 | bary_hi | OZP | lo | 74313/500000 | s279,lo_DFZ,lo_CFZ,s447,lo_OCP,s182,lo_OFP |
| s532 | 93 | bary_hi | HFZ | lo | 25163/250000 | s413,lo_FZP,s142,lo_DFZ,lo_HDF,s402 |
| s534 | 94 | bary_hi | CZP | lo | 182793/1000000 | s413,lo_FZP,s142,lo_DFZ,s309,s212 |
| s544 | 0 | sum | OHZ | lo | 100983/250000 | lo_HZP,s390,s480 |
| s547 | 2 | sum | ODF | lo | 599313/1000000 | lo_DFZ,s434,s478 |
| s549 | 3 | sum | HCF | lo | 185351/500000 | s212,lo_HCP,s402 |
| s550 | 4 | sum | HCZ | lo | 368793/1000000 | s534,lo_HCP,lo_HZP |
| s551 | 5 | sum | HDF | lo | 71663/250000 | lo_DFZ,lo_HDZ,s532 |
| s555 | 6 | sum | CDF | lo | 137817/250000 | s447,lo_CFZ,lo_DFZ |
| s560 | 8 | sumlo | ODP | lo | 317069/1000000 | s237,lo_OFP,lo_OCP,s547,hi_OCF |
| s561 | 9 | sumlo | OYP | lo | 96249/1000000 | lo_OCP,lo_ODY,lo_OCY,s560,hi_OCD |
| s565 | 10 | sumlo | OHD | lo | 727377/1000000 | lo_HCD,s544,lo_HDZ,s276,s441 |
| s567 | 11 | sumlo | OHP | lo | 166611/1000000 | lo_HCP,s565,s273,s276,s277 |
| s573 | 14 | sumlo | HFP | lo | 110497/1000000 | s549,s273,lo_HCP,s551,s277 |
| s576 | 15 | sumlo | OCF | lo | 29331/62500 | s555,s276,s549,s237,s277 |
| s579 | 16 | sumlo | OCZ | lo | 23353/62500 | s447,s276,s550,s237,s277 |
| s580 | 17 | sumlo | HCQ | lo | 57969/200000 | lo_CDQ,s276,lo_HCD,lo_OCQ,hi_OCD |
| s603 | 19 | sumlo | HDQ | lo | 82959/200000 | s248,s565,s551,lo_ODQ,hi_ODF |
| s605 | 20 | sumlo | CDZ | lo | 378463/1000000 | s555,lo_HDZ,lo_DFZ,lo_HCD,hi_HDF |
| s636 | 23 | sumlo | HFZ | lo | 103619/1000000 | lo_DFZ,s573,lo_FZP,s551,s413 |
| s650 | 25 | sumlo | OFZ | lo | 10009/50000 | lo_CFZ,s480,lo_FZP,s579,s451 |
| s660 | 27 | sumlo | CFP | lo | 22109/100000 | s309,lo_OFP,s270,lo_OCP,s392 |
| s661 | 27 | sumlo | ODP | lo | 499451/1000000 | s309,lo_OFP,s270,lo_OCP,s406 |
| s671 | 28 | sumlo | HFP | lo | 64247/500000 | s660,s273,s270,lo_HCP,s405 |
| s675 | 29 | sumlo | DYP | lo | 43959/125000 | s309,s329,lo_CYP,s270,s406 |
| s686 | 30 | sumlo | YZP | lo | 149939/1000000 | s675,lo_FZP,s142,s329,s413 |
| s688 | 31 | balance_lo | OCZ | lo | 378443/1000000 | lo_DFZ,s276,s636,s237,lo_HDZ,s576,hi_HDF |
| s700 | 32 | balance_lo | ODF | lo | 783301/1000000 | s605,lo_OFP,s142,s576,s309,s650,s451 |
| s707 | 33 | balance_lo | OFY | lo | 215781/1000000 | s555,s314,s551,lo_OCY,s549,lo_ODY,s277 |
| s713 | 34 | balance_lo | HCF | lo | 78803/200000 | lo_HCD,lo_OFP,s555,s567,s551,lo_OCP,s392 |
| s714 | 35 | balance_lo | OPQ | lo | 425763/1000000 | lo_CDQ,s567,s603,lo_OCP,s580,s661,s277 |
| s716 | 36 | balance_lo | OFQ | lo | 442479/500000 | s555,s231,s551,lo_OCQ,s713,lo_ODQ,s277 |
| s726 | 38 | balance_lo | OZQ | lo | 690279/1000000 | lo_DFZ,s231,s636,lo_ODQ,lo_HDZ,s716,hi_HDF |
| s728 | 39 | balance_hi | OPQ | hi | 533777/1000000 | s405,hi_OFQ,s270,lo_OCQ,s660,lo_ODQ,s555 |
| s732 | 40 | balance_lo | CZP | lo | 12727/62500 | lo_CFZ,s714,lo_FZP,lo_OCQ,s660,s726,hi_OFQ |
| s733 | 41 | balance_lo | CYZ | lo | 18187/100000 | s686,lo_OCQ,s732,lo_OYQ,lo_CYP,s726,s728 |
| s740 | 42 | balance_lo | ODP | lo | 262679/500000 | s700,lo_HCP,s270,s276,lo_OFP,lo_HCD,s278 |
| s748 | 43 | balance_lo | OPQ | lo | 237469/500000 | s740,s580,s311,s276,lo_ODQ,lo_HCP,s277 |
| s750 | 44 | balance_lo | OZP | lo | 44217/250000 | s650,lo_HCP,lo_FZP,s276,lo_OFP,s550,s278 |
| s766 | 45 | balance_lo | FPQ | lo | 150633/500000 | lo_OFP,s603,s748,s551,s716,s273,hi_OHD |
| s768 | 46 | balance_lo | ZPQ | lo | 216243/1000000 | s750,s603,s748,lo_HDZ,s726,s273,hi_OHD |
| s773 | 47 | balance_hi | YZP | hi | 106161/500000 | s451,s332,s733,s273,lo_CYP,lo_HDZ,lo_HCD |
| s806 | 49 | balance_lo | CDY | lo | 272083/1000000 | s740,lo_CYQ,s311,lo_OCY,lo_ODQ,lo_CYP,s728 |
| s807 | 50 | balance_lo | CFY | lo | 222879/1000000 | lo_OFP,lo_CYQ,s766,lo_OCY,s716,lo_CYP,s728 |
| s809 | 51 | balance_lo | CYZ | lo | 188759/1000000 | s750,lo_CYQ,s768,lo_OCY,s726,lo_CYP,s728 |
| s812 | 52 | balance_lo | CZP | lo | 111709/500000 | s270,s688,lo_OFP,s605,s740,lo_CFZ,hi_ODF |
| s813 | 52 | balance_hi | OCZ | hi | 216451/500000 | hi_ODF,s451,lo_OFP,s605,s740,lo_CFZ,s270 |
| s817 | 53 | balance_lo | DYP | lo | 180607/500000 | lo_ODY,s812,s561,s605,s740,s809,s813 |
| s825 | 54 | balance_lo | DFY | lo | 309851/500000 | s329,s605,s817,lo_CFZ,s270,s809,s451 |
| s875 | 55 | balance_lo | OCD | lo | 382013/1000000 | lo_CDQ,s707,lo_ODQ,s807,lo_OCQ,s825,s366 |
| s886 | 57 | balance_hi | OHC | hi | 1438/3125 | hi_OHD,s406,lo_HCD,lo_OFP,s875,s671,s270 |
| s888 | 57 | balance_lo | OHD | lo | 884177/1000000 | s276,s270,lo_HCD,lo_OFP,s875,s671,s406 |
| s923 | 58 | balance_lo | OCD | lo | 387649/1000000 | s806,s750,lo_ODY,s812,lo_OCY,s142,s773 |
| s932 | 59 | linear | OHC | lo | 275413/500000 | s277,s923,s888 |

## Conclusion

{"triangle":"OHC","lower":"s932","upper":"s886"}
