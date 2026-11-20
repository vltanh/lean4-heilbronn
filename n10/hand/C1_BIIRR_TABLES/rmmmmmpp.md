# Leaf rmmmmmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":-1,"DZP":-1,"FYZ":1,"FYP":1}

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
| 41 | plu | ["ZOHFP","ZFP",1] |
| 42 | plu | ["ZOHYP","ZYP",-1] |
| 43 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 44 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","ZP"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OCD | OCD | lo | 279/1000 | ["cost","Y"] |
| lo_OCF | OCF | lo | 279/1000 | ["cost","Y"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Y"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_HDZ | HDZ | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HZP | HZP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 347/500 | ["cost","ZP"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CFY | CFY | lo | 93/1000 | ["cost",""] |
| lo_CFP | CFP | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFZ | DFZ | lo | 93/1000 | ["cost",""] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 279/1000 | ["cost","Z"] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_YZP | YZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCF | OCF | hi | 127/200 | "C012" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFY | OFY | hi | 138233/317500 | "C018" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDY | HDY | hi | 107301577/127000000 | "C021" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDF | CDF | hi | 444851/500000 | "C022" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |
| hi_DFQ | DFQ | hi | 1397452/1984375 | "C035" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHD","HDZ","ODZ","OHZ"] | ["fan","OHD","Z"] |
| 1 | ["fan","OHD","HDP","ODP","OHP"] | ["fan","OHD","P"] |
| 2 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 3 | ["fan","OCF","CFY","OCY","OFY"] | ["fan","OCF","Y"] |
| 4 | ["fan","OCZ","CYZ","OCY","OYZ"] | ["fan","OCZ","Y"] |
| 5 | ["fan","OCP","CYP","OCY","OYP"] | ["fan","OCP","Y"] |
| 6 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 7 | ["fan","ODP","DZP","ODZ","OZP"] | ["fan","ODP","Z"] |
| 8 | ["fan","HCD","CDZ","HCZ","HDZ"] | ["fan","HCD","Z"] |
| 9 | ["fan","HCD","CDP","HCP","HDP"] | ["fan","HCD","P"] |
| 10 | ["fan","HDY","DYZ","HDZ","HYZ"] | ["fan","HDY","Z"] |
| 11 | ["fan","HDY","DYP","HDP","HYP"] | ["fan","HDY","P"] |
| 12 | ["fan","HYZ","HYP","HZP","YZP"] | ["fan","HYZ","P"] |
| 13 | ["fan","CDF","CDP","CFP","DFP"] | ["fan","CDF","P"] |
| 14 | ["fan","CDP","CDZ","CZP","DZP"] | ["fan","CDP","Z"] |
| 15 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 16 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 17 | ["plu","OCD","OYP","OCP","ODY","OCY","ODP"] | ["plu","OCDYP"] |
| 18 | ["plu","OFY","OZQ","OFQ","OYZ","OFZ","OYQ"] | ["plu","OFYZQ"] |
| 19 | ["plu","HCZ","HDP","HCD","HZP","HCP","HDZ"] | ["plu","HCDZP"] |
| 20 | ["plu","HDP","HYZ","HDY","HZP","HDZ","HYP"] | ["plu","HDYZP"] |
| 21 | ["plu","HCQ","OCD","CDQ","OHC","HCD","OCQ"] | ["plu","COHDQ"] |
| 22 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 23 | ["plu","HDQ","ODF","DFQ","OHD","HDF","ODQ"] | ["plu","DOHFQ"] |
| 24 | ["plu","CDZ","ODF","CDF","ODZ","DFZ","OCD"] | ["plu","DOCFZ"] |
| 25 | ["plu","DFP","HDY","DFY","HDP","DYP","HDF"] | ["plu","DHFYP"] |
| 26 | ["plu","DYP","HDZ","DYZ","HDP","DZP","HDY"] | ["plu","DHYZP"] |
| 27 | ["plu","DFZ","DYP","DFP","DYZ","DFY","DZP"] | ["plu","DFYZP"] |
| 28 | ["plu","HCF","ODF","CDF","OHF","HDF","OCF"] | ["plu","FOHCD"] |
| 29 | ["plu","HCF","OFP","CFP","OHF","HFP","OCF"] | ["plu","FOHCP"] |
| 30 | ["plu","CDY","OHY","HCY","ODY","HDY","OCY"] | ["plu","YOHCD"] |
| 31 | ["plu","CDY","OFY","CFY","ODY","DFY","OCY"] | ["plu","YOCDF"] |
| 32 | ["plu","CFY","HDY","CDY","HFY","DFY","HCY"] | ["plu","YHCDF"] |
| 33 | ["plu","DFY","HYP","DYP","HFY","FYP","HDY"] | ["plu","YHDFP"] |
| 34 | ["plu","HDY","YZQ","DYQ","HYZ","DYZ","HYQ"] | ["plu","YHDZQ"] |
| 35 | ["plu","CDZ","OZP","CZP","ODZ","DZP","OCZ"] | ["plu","ZOCDP"] |
| 36 | ["plu","CZP","HDZ","CDZ","HZP","DZP","HCZ"] | ["plu","ZHCDP"] |
| 37 | ["plu","DFP","OHP","HDP","OFP","HFP","ODP"] | ["plu","POHDF"] |
| 38 | ["plu","HDP","OZP","DZP","OHP","HZP","ODP"] | ["plu","POHDZ"] |
| 39 | ["plu","DFP","HCP","CDP","HFP","CFP","HDP"] | ["plu","PHCDF"] |
| 40 | ["plu","CZP","HDP","CDP","HZP","DZP","HCP"] | ["plu","PHCDZ"] |
| 41 | ["plu","DFP","HYP","DYP","HFP","FYP","HDP"] | ["plu","PHDFY"] |
| 42 | ["plu","HDP","YZP","DYP","HZP","DZP","HYP"] | ["plu","PHDYZ"] |
| 43 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 44 | ["balance",[[1,"HCF","ODP"],[1,"CFP","OHD"],[1,"HFP","OCD"],[-1,"HCP","ODF"]]] | ["six","ODHCFP"] |
| 45 | ["balance",[[-1,"HCY","OZQ"],[1,"CYZ","OHQ"],[-1,"HYZ","OCQ"],[-1,"HCZ","OYQ"]]] | ["six","OQHCYZ"] |
| 46 | ["balance",[[1,"CDF","OYQ"],[1,"DFY","OCQ"],[1,"CFY","ODQ"],[-1,"CDY","OFQ"]]] | ["six","OQCDFY"] |
| 47 | ["balance",[[-1,"DYZ","HCQ"],[1,"YZQ","HCD"],[-1,"DZQ","HCY"],[-1,"DYQ","HCZ"]]] | ["six","HCDYZQ"] |
| 48 | ["balance",[[1,"OCD","HYQ"],[-1,"CDQ","OHY"],[-1,"ODQ","HCY"],[-1,"OCQ","HDY"]]] | ["six","HYOCDQ"] |
| 49 | ["balance",[[-1,"CDF","HZP"],[1,"DFP","HCZ"],[-1,"CFP","HDZ"],[-1,"CDP","HFZ"]]] | ["six","HZCDFP"] |
| 50 | ["balance",[[-1,"DFY","HZP"],[-1,"FYP","HDZ"],[-1,"DYP","HFZ"],[1,"DFP","HYZ"]]] | ["six","HZDFYP"] |
| 51 | ["balance",[[-1,"HCF","DYP"],[-1,"CFP","HDY"],[-1,"HFP","CDY"],[1,"HCP","DFY"]]] | ["six","DYHCFP"] |
| 52 | ["balance",[[-1,"HDZ","FYP"],[-1,"DZP","HFY"],[-1,"HZP","DFY"],[1,"HDP","FYZ"]]] | ["six","FYHDZP"] |
| 53 | ["balance",[[-1,"OHC","DFP"],[1,"HCD","OFP"],[-1,"OCD","HFP"],[-1,"OHD","CFP"]]] | ["six","FPOHCD"] |
| 54 | ["balance",[[-1,"HCD","FYP"],[1,"CDY","HFP"],[1,"HDY","CFP"],[1,"HCY","DFP"]]] | ["six","FPHCDY"] |
| 55 | ["balance",[[1,"HDF","YZP"],[1,"DFY","HZP"],[1,"HFY","DZP"],[-1,"HDY","FZP"]]] | ["six","ZPHDFY"] |
| 56 | ["linear",{"OHD":1,"ODP":-1,"OHP":-1,"HDP":-1},"0"] | ["affine_quad","OHDP",-1] |
| 57 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 58 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 59 | ["linear",{"OCF":1,"OFY":-1,"OCY":-1,"CFY":-1},"0"] | ["affine_quad","OCFY",1] |
| 60 | ["linear",{"OCY":-1,"OYP":-1,"OCP":1,"CYP":-1},"0"] | ["affine_quad","OCYP",-1] |
| 61 | ["linear",{"ODF":1,"OFP":-1,"ODP":-1,"DFP":-1},"0"] | ["affine_quad","ODFP",1] |
| 62 | ["linear",{"ODF":-1,"OFQ":1,"ODQ":-1,"DFQ":1},"0"] | ["affine_quad","ODFQ",-1] |
| 63 | ["linear",{"ODZ":-1,"OZP":-1,"ODP":1,"DZP":-1},"0"] | ["affine_quad","ODZP",-1] |
| 64 | ["linear",{"ODP":-1,"OPQ":1,"ODQ":-1,"DPQ":1},"0"] | ["affine_quad","ODPQ",-1] |
| 65 | ["linear",{"OFZ":1,"OZP":-1,"OFP":-1,"FZP":-1},"0"] | ["affine_quad","OFZP",-1] |
| 66 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 67 | ["linear",{"HCD":1,"HDP":-1,"HCP":-1,"CDP":-1},"0"] | ["affine_quad","HCDP",1] |
| 68 | ["linear",{"HCZ":1,"HZP":-1,"HCP":-1,"CZP":-1},"0"] | ["affine_quad","HCZP",1] |
| 69 | ["linear",{"HYZ":1,"HZP":-1,"HYP":-1,"YZP":-1},"0"] | ["affine_quad","HYZP",1] |
| 70 | ["linear",{"CDF":1,"CFP":-1,"CDP":-1,"DFP":-1},"0"] | ["affine_quad","CDFP",1] |
| 71 | ["linear",{"CDZ":-1,"CZP":-1,"CDP":1,"DZP":-1},"0"] | ["affine_quad","CDZP",-1] |
| 72 | ["linear",{"DYZ":-1,"DZP":-1,"DYP":1,"YZP":-1},"0"] | ["affine_quad","DYZP",1] |
| 73 | ["linear",{"FYZ":1,"FZP":-1,"FYP":-1,"YZP":-1},"0"] | ["affine_quad","FYZP",1] |
| 74 | ["support","ODQ","OZQ","DZQ","53103/62500"] | ["support_quad","QOZD","YR","1142/125"] |
| 75 | ["support","HDY","DFY","HFY","897/1000"] | ["support_quad","YDFH","ZP","299/31"] |
| 76 | ["quad","CDP","CDQ","93/125"] | ["quad","CQDP","ZR"] |
| 77 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 78 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 79 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 80 | ["bary",["OHP",-1],[null,null,["OHD",-1]],"OHD",["HDP","ODP","OHP"]] | ["bary","OHD","P","OH"] |
| 81 | ["bary",["HCP",1],[["OHC",-1],null,["HCZ",1]],"OHZ",["HZP","OZP","OHP"]] | ["bary","OHZ","P","HC"] |
| 82 | ["bary",["OHY",-1],[null,["OHC",-1],["OHD",-1]],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","OH"] |
| 83 | ["bary",["OYP",-1],[null,["OCP",-1],["ODP",-1]],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","OP"] |
| 84 | ["bary",["DFY",1],[["ODF",1],["CDF",1],null],"OCD",["CDY","ODY","OCY"]] | ["bary","OCD","Y","DF"] |
| 85 | ["bary",["HDY",-1],[["OHD",-1],["HCD",-1],["HDF",1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","HD"] |
| 86 | ["bary",["DYP",1],[["ODP",1],["CDP",1],["DFP",-1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","DP"] |
| 87 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DFQ",-1]],"OCF",["CFY","OFY","OCY"]] | ["bary","OCF","Y","DQ"] |
| 88 | ["bary",["HFY",-1],[["OHF",-1],["HCF",-1],["HFZ",-1]],"OCZ",["CYZ","OYZ","OCY"]] | ["bary","OCZ","Y","HF"] |
| 89 | ["bary",["DYQ",-1],[["ODQ",-1],["CDQ",-1],["DPQ",-1]],"OCP",["CYP","OYP","OCY"]] | ["bary","OCP","Y","DQ"] |
| 90 | ["bary",["CDZ",1],[["OCD",1],null,["CDF",1]],"ODF",["DFZ","OFZ","ODZ"]] | ["bary","ODF","Z","CD"] |
| 91 | ["bary",["OHZ",-1],[null,["OHD",-1],["OHP",-1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","OH"] |
| 92 | ["bary",["OCZ",1],[null,["OCD",1],["OCP",1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","OC"] |
| 93 | ["bary",["HCZ",1],[["OHC",-1],["HCD",1],["HCP",1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","HC"] |
| 94 | ["bary",["HDZ",-1],[["OHD",-1],null,["HDP",-1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","HD"] |
| 95 | ["bary",["HYZ",1],[["OHY",-1],["HDY",1],["HYP",1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","HY"] |
| 96 | ["bary",["CDZ",1],[["OCD",1],null,["CDP",1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","CD"] |
| 97 | ["bary",["CZP",-1],[["OCP",1],["CDP",-1],null],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","CP"] |
| 98 | ["bary",["DFZ",1],[["ODF",1],null,["DFP",1]],"ODP",["DZP","OZP","ODZ"]] | ["bary","ODP","Z","DF"] |
| 99 | ["bary",["OFY",-1],[null,["OFZ",-1],["OFQ",-1]],"OZQ",["YZQ","OYQ","OYZ"]] | ["bary","OZQ","Y","OF"] |
| 100 | ["bary",["CYZ",-1],[["HCY",-1],null,["CDY",-1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","CY"] |
| 101 | ["bary",["HYP",1],[null,["HCY",1],["HDY",1]],"HCD",["CDP","HDP","HCP"]] | ["bary","HCD","P","HY"] |
| 102 | ["bary",["HDP",-1],[null,["HCD",-1],["HDZ",-1]],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","HD"] |
| 103 | ["bary",["CZP",1],[["HCZ",1],null,null],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","CZ"] |
| 104 | ["bary",["DFP",1],[["HDF",1],["CDF",1],["DFZ",1]],"HCZ",["CZP","HZP","HCP"]] | ["bary","HCZ","P","DF"] |
| 105 | ["bary",["OZQ",1],[["OHQ",1],["ODQ",1],["OYQ",1]],"HDY",["DYZ","HYZ","HDZ"]] | ["bary","HDY","Z","OQ"] |
| 106 | ["bary",["HYZ",1],[null,["HDY",1],null],"HDY",["DYZ","HYZ","HDZ"]] | ["bary","HDY","Z","HY"] |
| 107 | ["bary",["HYP",1],[null,["HDY",1],null],"HDY",["DYP","HYP","HDP"]] | ["bary","HDY","P","HY"] |
| 108 | ["bary",["DFP",1],[["HDF",1],["DFY",1],["DFZ",1]],"HYZ",["YZP","HZP","HYP"]] | ["bary","HYZ","P","DF"] |
| 109 | ["bary",["OHP",-1],[["OHC",-1],["OHD",-1],["OHF",-1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OH"] |
| 110 | ["bary",["OCP",1],[null,["OCD",1],["OCF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OC"] |
| 111 | ["bary",["ODP",1],[["OCD",-1],null,["ODF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OD"] |
| 112 | ["bary",["OPQ",1],[["OCQ",-1],["ODQ",1],["OFQ",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","OQ"] |
| 113 | ["bary",["HYP",1],[["HCY",1],["HDY",1],["HFY",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","HY"] |
| 114 | ["bary",["CDP",1],[null,null,["CDF",1]],"CDF",["DFP","CFP","CDP"]] | ["bary","CDF","P","CD"] |
| 115 | ["bary",["OCZ",1],[null,["OCD",1],["OCP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OC"] |
| 116 | ["bary",["OZQ",1],[["OCQ",-1],["ODQ",1],["OPQ",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","OQ"] |
| 117 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 118 | ["bary",["HFZ",-1],[["HCF",-1],["HDF",-1],["HFP",-1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HF"] |
| 119 | ["bary",["DFZ",1],[["CDF",1],null,["DFP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","DF"] |
| 120 | ["bary",["OZQ",1],[["ODQ",1],["OFQ",1],["OYQ",1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","OQ"] |
| 121 | ["bary",["ODP",1],[null,["ODF",1],["ODY",-1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","OD"] |
| 122 | ["bary",["HDP",-1],[null,["HDF",1],["HDY",-1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","HD"] |
| 123 | ["bary",["DFP",1],[null,null,["DFY",1]],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","DF"] |
| 124 | ["bary",["DYP",-1],[null,["DFY",-1],null],"DFY",["FYP","DYP","DFP"]] | ["bary","DFY","P","DY"] |
| 125 | ["bary",["HDZ",-1],[null,["HDY",-1],["HDP",-1]],"DYP",["YZP","DZP","DYZ"]] | ["bary","DYP","Z","HD"] |
| 126 | ["bary",["HYZ",1],[["HDY",1],null,["HYP",1]],"DYP",["YZP","DZP","DYZ"]] | ["bary","DYP","Z","HY"] |
| 127 | ["bary",["DFZ",1],[null,["DFY",1],["DFP",1]],"DYP",["YZP","DZP","DYZ"]] | ["bary","DYP","Z","DF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s9 | 2 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s38 | 10 | sub | HYZ | hi | 131779/200000 | hi_HDY,lo_DYZ,lo_HDZ |
| s55 | 15 | sub | FYZ | hi | 147041/250000 | hi_DFY,lo_DFZ,lo_DYZ |
| s57 | 16 | sub | DYP | hi | 147041/250000 | hi_DFY,lo_DFP,lo_FYP |
| s77 | 20 | sumlo | HDP | lo | 111081/1000000 | lo_HDY,lo_HZP,lo_HDZ,lo_HYP,s38 |
| s117 | 25 | sumlo | DFP | lo | 3811/31250 | lo_DFY,s77,lo_DYP,lo_HDF,hi_HDY |
| s120 | 26 | sumlo | HDZ | lo | 63649/500000 | lo_DYZ,s77,lo_DZP,lo_HDY,s57 |
| s128 | 27 | sumlo | DFZ | lo | 129017/1000000 | s117,lo_DYZ,lo_DFY,lo_DZP,s57 |
| s130 | 28 | sumlo | HCF | lo | 24183/250000 | lo_CDF,lo_OHF,lo_HDF,lo_OCF,hi_ODF |
| s142 | 30 | sumlo | OHY | lo | 37539/200000 | lo_HCY,lo_ODY,lo_HDY,lo_OCY,s9 |
| s147 | 31 | sumlo | CDY | lo | 42027/250000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,hi_OFY |
| s148 | 31 | sumlo | OFY | lo | 37539/200000 | lo_CFY,lo_ODY,lo_DFY,lo_OCY,s9 |
| s152 | 32 | sumlo | CFY | lo | 47447/500000 | s147,lo_HFY,lo_DFY,lo_HCY,hi_HDY |
| s157 | 33 | sumlo | HYP | lo | 58443/500000 | lo_DYP,lo_HFY,lo_FYP,lo_HDY,hi_DFY |
| s193 | 46 | balance_lo | CDY | lo | 3088/15625 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s152,lo_ODQ,hi_OFQ |
| s195 | 48 | balance_lo | HYQ | lo | 315049/1000000 | lo_CDQ,s142,lo_ODQ,lo_HCY,lo_OCQ,lo_HDY,hi_OCD |
| s201 | 50 | balance_lo | DFP | lo | 77651/500000 | lo_DFY,lo_HZP,lo_FYP,s120,lo_DYP,lo_HFZ,s38 |
| s210 | 51 | balance_lo | HCP | lo | 35493/250000 | s130,lo_DYP,lo_CFP,lo_HDY,lo_HFP,s193,hi_DFY |
| s212 | 52 | balance_lo | HDP | lo | 18071/125000 | s120,lo_FYP,lo_DZP,lo_HFY,lo_HZP,lo_DFY,s55 |
| s214 | 53 | balance_lo | OFP | lo | 68691/500000 | lo_OHC,s201,lo_OCD,lo_HFP,lo_OHD,lo_CFP,hi_HCD |
| s215 | 54 | balance_lo | FYP | lo | 49979/500000 | s193,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s201,hi_HCD |
| s219 | 55 | balance_lo | FZP | lo | 3027/31250 | lo_HDF,lo_YZP,lo_DFY,lo_HZP,lo_HFY,lo_DZP,hi_HDY |
| s227 | 57 | linear | OHQ | lo | 613041/1000000 | hi_HDQ,lo_ODQ,lo_OHD |
| s232 | 58 | linear | OCD | lo | 23977/62500 | s193,lo_OCY,lo_ODY |
| s233 | 59 | linear | OCF | lo | 375589/1000000 | s152,lo_OCY,s148 |
| s240 | 62 | linear | OFQ | lo | 170943/250000 | hi_DFQ,lo_ODF,lo_ODQ |
| s246 | 65 | linear | OFZ | lo | 163623/500000 | s219,s214,lo_OZP |
| s253 | 68 | linear | HCZ | lo | 81993/250000 | lo_CZP,s210,lo_HZP |
| s260 | 69 | linear | HYZ | lo | 151443/500000 | s157,lo_HZP,lo_YZP |
| s279 | 73 | linear | FYZ | lo | 144911/500000 | s215,s219,lo_YZP |
| s281 | 75 | support_z | HFY | lo | 95037/1000000 | lo_HDY,hi_DFY |
| s283 | 76 | quad | CDP | lo | 81/250 | hi_CDQ |
| s287 | 77 | linear | OHC | lo | 23977/62500 | s232 |
| s288 | 78 | linear | HCD | hi | 907/1000 | lo_HDF |
| s350 | 85 | bary_lo | HDY | hi | 406217/500000 | hi_OCF,s152,s148,lo_OCY,hi_OHD,s288,lo_HDF |
| s358 | 90 | bary_lo | CDZ | lo | 24381/200000 | hi_ODF,s128,s246,lo_ODZ,s232,lo_CDF |
| s441 | 101 | bary_lo | HYP | lo | 61727/500000 | s288,s283,s212,s210,lo_HCY,lo_HDY |
| s450 | 106 | bary_hi | HYZ | hi | 74017/125000 | s350,lo_DYZ,s260,s120,s350 |
| s462 | 108 | bary_lo | DFP | lo | 194901/1000000 | s450,lo_YZP,lo_HZP,s441,lo_HDF,lo_DFY,s128 |
| s466 | 109 | bary_hi | OHP | lo | 6859/31250 | hi_CDF,s462,lo_CFP,s283,s287,lo_OHD,lo_OHF |
| s467 | 110 | bary_hi | OCP | hi | 244861/500000 | hi_CDF,s462,lo_CFP,s283,hi_OCD,hi_OCF |
| s475 | 113 | bary_lo | HYP | lo | 156563/1000000 | hi_CDF,s462,lo_CFP,s283,lo_HCY,lo_HDY,s281 |
| s476 | 114 | bary_hi | CDP | hi | 601801/1000000 | hi_CDF,s462,lo_CFP,s283,hi_CDF |
| s487 | 115 | bary_hi | OCZ | hi | 18779/40000 | s476,lo_DZP,lo_CZP,s358,hi_OCD,s467 |
| s493 | 118 | bary_hi | HFZ | lo | 11697/125000 | s476,lo_DZP,lo_CZP,s358,s130,lo_HDF,lo_HFP |
| s499 | 119 | bary_lo | DFZ | lo | 18341/125000 | s476,lo_DZP,lo_CZP,s358,lo_CDF,s462 |
| s536 | 120 | bary_lo | OZQ | lo | 97241/250000 | hi_DFY,s279,lo_DYZ,s499,lo_ODQ,s240,lo_OYQ |
| s555 | 124 | bary_lo | DYP | hi | 95861/200000 | hi_DFY,s215,lo_DYP,s462,hi_DFY |
| s564 | 125 | bary_hi | HDZ | lo | 40677/250000 | s555,lo_YZP,lo_DZP,lo_DYZ,lo_HDY,s212 |
| s570 | 127 | bary_lo | DFZ | lo | 86237/500000 | s555,lo_YZP,lo_DZP,lo_DYZ,lo_DFY,s462 |
| s587 | 10 | sub | HYZ | hi | 278363/500000 | s350,lo_DYZ,s564 |
| s588 | 11 | sub | HDP | hi | 376871/1000000 | s350,lo_DYP,s475 |
| s589 | 12 | sum | HYZ | lo | 342563/1000000 | s475,lo_HZP,lo_YZP |
| s591 | 15 | sub | FYZ | hi | 50869/100000 | hi_DFY,s570,lo_DYZ |
| s596 | 20 | sumlo | HDP | lo | 20211/125000 | lo_HDY,lo_HZP,s564,s475,s587 |
| s601 | 24 | sumlo | CDZ | lo | 69863/500000 | lo_CDF,lo_ODZ,s570,s232,hi_ODF |
| s605 | 26 | sumlo | HDZ | lo | 166029/1000000 | lo_DYZ,s596,lo_DZP,lo_HDY,s555 |
| s608 | 28 | sumlo | HCF | lo | 53167/500000 | lo_CDF,lo_OHF,lo_HDF,s233,hi_ODF |
| s613 | 31 | sumlo | OFY | lo | 188147/1000000 | s152,lo_ODY,lo_DFY,lo_OCY,s9 |
| s615 | 32 | sumlo | CFY | lo | 102561/1000000 | s193,s281,lo_DFY,lo_HCY,s350 |
| s621 | 38 | sumlo | OZP | lo | 123011/1000000 | lo_DZP,s466,lo_HZP,lo_ODP,s588 |
| s622 | 40 | sumlo | CZP | lo | 114987/1000000 | s283,lo_HZP,lo_DZP,s210,s588 |
| s623 | 42 | sumlo | YZP | lo | 107483/1000000 | lo_DYP,lo_HZP,lo_DZP,s475,s588 |
| s624 | 45 | balance_lo | CYZ | lo | 98533/1000000 | lo_HCY,s536,s589,lo_OCQ,s253,lo_OYQ,hi_OHQ |
| s625 | 46 | balance_lo | CDY | lo | 101513/500000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s615,lo_ODQ,hi_OFQ |
| s631 | 51 | balance_lo | HCP | lo | 913/6250 | s608,lo_DYP,lo_CFP,lo_HDY,lo_HFP,s625,hi_DFY |
| s633 | 52 | balance_lo | HDP | lo | 88439/500000 | s605,s215,lo_DZP,s281,lo_HZP,lo_DFY,s591 |
| s634 | 53 | balance_lo | OFP | lo | 48233/250000 | s287,s462,s232,lo_HFP,lo_OHD,lo_CFP,s288 |
| s635 | 54 | balance_lo | FYP | lo | 111961/1000000 | s625,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s462,s288 |
| s636 | 55 | balance_lo | FZP | lo | 821/8000 | lo_HDF,s623,lo_DFY,lo_HZP,s281,lo_DZP,s350 |
| s641 | 58 | linear | OCD | lo | 194513/500000 | s625,lo_OCY,lo_ODY |
| s642 | 59 | linear | OCF | lo | 95927/250000 | s615,lo_OCY,s613 |
| s646 | 63 | linear | ODP | lo | 309011/1000000 | lo_DZP,lo_ODZ,s621 |
| s649 | 65 | linear | OFZ | lo | 52321/125000 | s636,s634,s621 |
| s655 | 68 | linear | HCZ | lo | 354067/1000000 | s622,s631,lo_HZP |
| s661 | 69 | linear | HYZ | lo | 178523/500000 | s475,lo_HZP,s623 |
| s665 | 71 | linear | CDP | lo | 347713/1000000 | s601,s622,lo_DZP |
| s671 | 72 | linear | DYP | lo | 293483/1000000 | lo_DYZ,lo_DZP,s623 |
| s679 | 77 | linear | OHC | lo | 194513/500000 | s641 |
| s689 | 83 | bary_hi | OYP | lo | 23737/250000 | hi_OCD,s625,lo_ODY,lo_OCY,lo_OCP,s646 |
| s691 | 85 | bary_lo | HDY | hi | 50773/62500 | hi_OCF,s615,s613,lo_OCY,hi_OHD,s288,lo_HDF |
| s697 | 88 | bary_hi | HFY | lo | 19151/200000 | s487,s624,lo_OYZ,lo_OCY,lo_OHF,s608,s493 |
| s698 | 90 | bary_lo | CDZ | lo | 140721/1000000 | hi_ODF,s570,s649,lo_ODZ,s641,lo_CDF |
| s736 | 105 | bary_lo | OZQ | lo | 416681/1000000 | s691,lo_DYZ,s661,s605,s227,lo_ODQ,lo_OYQ |
| s738 | 106 | bary_hi | HYZ | hi | 553339/1000000 | s691,lo_DYZ,s661,s605,s691 |
| s751 | 108 | bary_lo | DFP | lo | 13531/62500 | s738,s623,lo_HZP,s475,lo_HDF,lo_DFY,s570 |
| s754 | 109 | bary_hi | OHP | lo | 45571/200000 | hi_CDF,s751,lo_CFP,s665,s679,lo_OHD,lo_OHF |
| s755 | 110 | bary_hi | OCP | hi | 47431/100000 | hi_CDF,s751,lo_CFP,s665,hi_OCD,hi_OCF |
| s762 | 113 | bary_lo | HYP | lo | 78449/500000 | hi_CDF,s751,lo_CFP,s665,lo_HCY,lo_HDY,s697 |
| s763 | 114 | bary_hi | CDP | hi | 290103/500000 | hi_CDF,s751,lo_CFP,s665,hi_CDF |
| s769 | 115 | bary_hi | OCZ | hi | 229489/500000 | s763,lo_DZP,s622,s698,hi_OCD,s755 |
| s774 | 118 | bary_hi | HFZ | lo | 95137/1000000 | s763,lo_DZP,s622,s698,s608,lo_HDF,lo_HFP |
| s805 | 121 | bary_hi | ODP | hi | 512561/1000000 | hi_DFY,s635,s671,s751,hi_ODF,lo_ODY |
| s808 | 122 | bary_lo | HDP | hi | 17583/50000 | hi_DFY,s635,s671,s751,lo_HDF,s691 |
| s813 | 124 | bary_lo | DYP | hi | 445707/1000000 | hi_DFY,s635,s671,s751,hi_DFY |
| s822 | 125 | bary_hi | HDZ | lo | 36343/200000 | s813,s623,lo_DZP,lo_DYZ,lo_HDY,s633 |
| s828 | 127 | bary_lo | DFZ | lo | 189981/1000000 | s813,s623,lo_DZP,lo_DYZ,lo_DFY,s751 |
| s837 | 1 | sum | OHD | lo | 44609/62500 | s633,s646,s754 |
| s842 | 5 | sum | OCP | lo | 70237/250000 | lo_CYP,lo_OCY,s689 |
| s847 | 6 | sub | OFP | hi | 409951/1000000 | hi_ODF,s751,s646 |
| s852 | 12 | sum | HYZ | lo | 357381/1000000 | s762,lo_HZP,s623 |
| s854 | 14 | sum | CDP | lo | 87177/250000 | s698,s622,lo_DZP |
| s855 | 15 | sub | FYZ | hi | 491183/1000000 | hi_DFY,s828,lo_DYZ |
| s856 | 17 | sumlo | OYP | lo | 47631/500000 | s842,lo_ODY,lo_OCY,s646,hi_OCD |
| s859 | 24 | sumlo | CDZ | lo | 148001/1000000 | lo_CDF,lo_ODZ,s828,s641,hi_ODF |
| s864 | 29 | sumlo | HCF | lo | 6759/62500 | lo_CFP,lo_OHF,lo_HFP,s642,s847 |
| s866 | 31 | sumlo | OFY | lo | 7599/40000 | s615,lo_ODY,lo_DFY,lo_OCY,s9 |
| s868 | 32 | sumlo | CFY | lo | 5169/50000 | s625,s697,lo_DFY,lo_HCY,s691 |
| s874 | 38 | sumlo | OZP | lo | 141979/1000000 | lo_DZP,s754,lo_HZP,s646,s808 |
| s875 | 40 | sumlo | CZP | lo | 130851/1000000 | s854,lo_HZP,lo_DZP,s631,s808 |
| s876 | 42 | sumlo | YZP | lo | 119107/1000000 | s671,lo_HZP,lo_DZP,s762,s808 |
| s877 | 45 | balance_lo | CYZ | lo | 20983/200000 | lo_HCY,s736,s852,lo_OCQ,s655,lo_OYQ,hi_OHQ |
| s878 | 46 | balance_lo | CDY | lo | 101801/500000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s868,lo_ODQ,hi_OFQ |
| s882 | 51 | balance_lo | HCP | lo | 5953/40000 | s864,s671,lo_CFP,lo_HDY,lo_HFP,s878,hi_DFY |
| s883 | 52 | balance_lo | HDP | lo | 190951/1000000 | s822,s635,lo_DZP,s697,lo_HZP,lo_DFY,s855 |
| s884 | 53 | balance_lo | OFP | lo | 205931/1000000 | s679,s751,s641,lo_HFP,s837,lo_CFP,s288 |
| s885 | 54 | balance_lo | FYP | lo | 57117/500000 | s878,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s751,s288 |
| s887 | 55 | balance_lo | FZP | lo | 52023/500000 | lo_HDF,s876,lo_DFY,lo_HZP,s697,lo_DZP,s691 |
| s890 | 56 | linear | OHD | lo | 727817/1000000 | s883,s646,s754 |
| s896 | 58 | linear | OCD | lo | 194801/500000 | s878,lo_OCY,lo_ODY |
| s897 | 59 | linear | OCF | lo | 77271/200000 | s868,lo_OCY,s866 |
| s899 | 60 | linear | OCP | lo | 140631/500000 | lo_CYP,lo_OCY,s856 |
| s900 | 61 | linear | ODF | lo | 365719/500000 | s751,s646,s884 |
| s901 | 62 | linear | OFQ | lo | 72121/100000 | hi_DFQ,s900,lo_ODQ |
| s902 | 62 | linear | DFQ | lo | 219529/500000 | s900,lo_ODQ,hi_OFQ |
| s903 | 63 | linear | ODP | lo | 327979/1000000 | lo_DZP,lo_ODZ,s874 |
| s906 | 65 | linear | OFZ | lo | 112989/250000 | s887,s884,s874 |
| s909 | 67 | linear | CDP | hi | 70903/125000 | s288,s882,s883 |
| s910 | 68 | linear | HCZ | lo | 93169/250000 | s875,s882,lo_HZP |
| s914 | 69 | linear | HYZ | lo | 73801/200000 | s762,lo_HZP,s876 |
| s918 | 71 | linear | CDP | lo | 92963/250000 | s859,s875,lo_DZP |
| s924 | 72 | linear | DYP | lo | 305107/1000000 | lo_DYZ,lo_DZP,s876 |
| s926 | 73 | linear | FYZ | lo | 337387/1000000 | s885,s887,s876 |
| s929 | 77 | linear | OHC | lo | 194801/500000 | s896 |
| s933 | 83 | bary_hi | OYP | lo | 12297/125000 | hi_OCD,s878,lo_ODY,lo_OCY,s899,s903 |
| s934 | 85 | bary_lo | HDY | hi | 8121/10000 | hi_OCF,s868,s866,lo_OCY,hi_OHD,s288,lo_HDF |
| s936 | 87 | bary_hi | DYQ | lo | 92501/250000 | hi_OCF,s868,s866,lo_OCY,lo_ODQ,lo_CDQ,s902 |
| s939 | 88 | bary_hi | HFY | lo | 96501/1000000 | s769,s877,lo_OYZ,lo_OCY,lo_OHF,s864,s774 |
| s941 | 90 | bary_lo | CDZ | lo | 74059/500000 | hi_ODF,s828,s906,lo_ODZ,s896,lo_CDF |
| s950 | 92 | bary_hi | OCZ | hi | 113251/250000 | s805,lo_DZP,s874,lo_ODZ,hi_OCD,s755 |
| s972 | 106 | bary_hi | HYZ | hi | 107477/200000 | s934,lo_DYZ,s914,s822,s934 |
| s980 | 108 | bary_lo | DFP | lo | 56331/250000 | s972,s876,lo_HZP,s762,lo_HDF,lo_DFY,s828 |
| s982 | 109 | bary_hi | OHP | lo | 234473/1000000 | hi_CDF,s980,lo_CFP,s918,s929,s890,lo_OHF |
| s983 | 110 | bary_hi | OCP | hi | 468009/1000000 | hi_CDF,s980,lo_CFP,s918,hi_OCD,hi_OCF |
| s986 | 112 | bary_hi | OPQ | hi | 172353/250000 | hi_CDF,s980,lo_CFP,s918,lo_OCQ,hi_ODQ,hi_OFQ |
| s989 | 113 | bary_lo | HYP | lo | 31457/200000 | hi_CDF,s980,lo_CFP,s918,lo_HCY,lo_HDY,s939 |
| s995 | 116 | bary_hi | OZQ | hi | 301013/500000 | s909,lo_DZP,s875,s941,lo_OCQ,hi_ODQ,s986 |
| s997 | 118 | bary_hi | HFZ | lo | 47741/500000 | s909,lo_DZP,s875,s941,s864,lo_HDF,lo_HFP |
| s1020 | 120 | bary_lo | OZQ | lo | 430387/1000000 | hi_DFY,s926,lo_DYZ,s828,lo_ODQ,s901,lo_OYQ |
| s1029 | 122 | bary_lo | HDP | hi | 167779/500000 | hi_DFY,s885,s924,s980,lo_HDF,s934 |
| s1033 | 124 | bary_lo | DYP | hi | 217303/500000 | hi_DFY,s885,s924,s980,hi_DFY |
| s1039 | 125 | bary_hi | HDZ | lo | 189367/1000000 | s1033,s876,lo_DZP,lo_DYZ,lo_HDY,s883 |
| s1043 | 127 | bary_lo | DFZ | lo | 196723/1000000 | s1033,s876,lo_DZP,lo_DYZ,lo_DFY,s980 |
| s1049 | 0 | sub | OHZ | hi | 717633/1000000 | hi_OHD,s1039,lo_ODZ |
| s1050 | 1 | sum | OHD | lo | 753403/1000000 | s883,s903,s982 |
| s1053 | 5 | sum | OCP | lo | 35547/125000 | lo_CYP,lo_OCY,s933 |
| s1058 | 6 | sub | OFP | hi | 76431/200000 | hi_ODF,s980,s903 |
| s1064 | 12 | sum | HYZ | lo | 23087/62500 | s989,lo_HZP,s876 |
| s1065 | 14 | sum | CDP | lo | 371969/1000000 | s941,s875,lo_DZP |
| s1066 | 15 | sub | FYZ | hi | 484441/1000000 | hi_DFY,s1043,lo_DYZ |
| s1067 | 17 | sumlo | OYP | lo | 98879/1000000 | s1053,lo_ODY,lo_OCY,s903,hi_OCD |
| s1070 | 24 | sumlo | CDZ | lo | 75463/500000 | lo_CDF,lo_ODZ,s1043,s896,hi_ODF |
| s1075 | 29 | sumlo | HCF | lo | 58327/500000 | lo_CFP,lo_OHF,lo_HFP,s897,s1058 |
| s1078 | 31 | sumlo | OFY | lo | 190171/1000000 | s868,lo_ODY,lo_DFY,lo_OCY,s9 |
| s1080 | 32 | sumlo | CFY | lo | 103669/1000000 | s878,s939,lo_DFY,lo_HCY,s934 |
| s1081 | 34 | sumlo | YZQ | lo | 102189/500000 | s936,s1064,lo_DYZ,s195,s934 |
| s1086 | 38 | sumlo | OZP | lo | 155883/1000000 | lo_DZP,s982,lo_HZP,s903,s1029 |
| s1087 | 40 | sumlo | CZP | lo | 72169/500000 | s1065,lo_HZP,lo_DZP,s882,s1029 |
| s1088 | 42 | sumlo | YZP | lo | 16019/125000 | s924,lo_HZP,lo_DZP,s989,s1029 |
| s1090 | 44 | balance_lo | HCP | lo | 154533/1000000 | s1075,s903,lo_CFP,s1050,lo_HFP,s896,hi_ODF |
| s1091 | 45 | balance_lo | CYZ | lo | 54519/500000 | lo_HCY,s1020,s1064,lo_OCQ,s910,lo_OYQ,hi_OHQ |
| s1092 | 46 | balance_lo | CDY | lo | 101903/500000 | lo_CDF,lo_OYQ,lo_DFY,lo_OCQ,s1080,lo_ODQ,hi_OFQ |
| s1097 | 52 | balance_lo | HDP | lo | 196409/1000000 | s1039,s885,lo_DZP,s939,lo_HZP,lo_DFY,s1066 |
| s1098 | 53 | balance_lo | OFP | lo | 106993/500000 | s929,s980,s896,lo_HFP,s1050,lo_CFP,s288 |
| s1099 | 54 | balance_lo | FYP | lo | 115161/1000000 | s1092,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s980,s288 |
| s1101 | 55 | balance_lo | FZP | lo | 52601/500000 | lo_HDF,s1088,lo_DFY,lo_HZP,s939,lo_DZP,s934 |
| s1102 | 56 | linear | OHD | lo | 758861/1000000 | s1097,s903,s982 |
| s1108 | 58 | linear | OCD | lo | 194903/500000 | s1092,lo_OCY,lo_ODY |
| s1112 | 60 | linear | OCP | lo | 284879/1000000 | lo_CYP,lo_OCY,s1067 |
| s1113 | 61 | linear | ODF | lo | 767289/1000000 | s980,s903,s1098 |
| s1114 | 61 | linear | ODP | hi | 124037/250000 | s980,hi_ODF,s1098 |
| s1115 | 62 | linear | OFQ | lo | 757061/1000000 | hi_DFQ,s1113,lo_ODQ |
| s1116 | 62 | linear | DFQ | lo | 474909/1000000 | s1113,lo_ODQ,hi_OFQ |
| s1118 | 63 | linear | ODP | lo | 341883/1000000 | lo_DZP,lo_ODZ,s1086 |
| s1121 | 65 | linear | OFZ | lo | 475071/1000000 | s1101,s1098,s1086 |
| s1123 | 66 | linear | HCZ | hi | 566707/1000000 | s1070,s288,s1039 |
| s1125 | 67 | linear | CDP | hi | 278029/500000 | s288,s1090,s1097 |
| s1126 | 68 | linear | HCZ | lo | 391871/1000000 | s1087,s1090,lo_HZP |
| s1128 | 69 | linear | HYZ | lo | 378437/1000000 | s989,lo_HZP,s1088 |
| s1131 | 71 | linear | CDP | lo | 48533/125000 | s1070,s1087,lo_DZP |
| s1137 | 72 | linear | DYP | lo | 39269/125000 | lo_DYZ,lo_DZP,s1088 |
| s1139 | 73 | linear | FYZ | lo | 69703/200000 | s1099,s1101,s1088 |
| s1140 | 74 | support_z | DZQ | lo | 202259/1000000 | lo_ODQ,s995 |
| s1142 | 77 | linear | OHC | lo | 194903/500000 | s1108 |
| s1144 | 79 | linear | CDF | hi | 441673/500000 | s1075 |
| s1146 | 80 | bary_lo | OHP | hi | 115427/250000 | hi_OHD,s1097,s1118,s982,hi_OHD |
| s1147 | 81 | bary_hi | HCP | hi | 319651/1000000 | s1049,lo_HZP,s1086,s982,s1142,s1123 |
| s1148 | 83 | bary_hi | OYP | lo | 20241/200000 | hi_OCD,s1092,lo_ODY,lo_OCY,s1112,s1118 |
| s1151 | 85 | bary_lo | HDY | hi | 101509/125000 | hi_OCF,s1080,s1078,lo_OCY,hi_OHD,s288,lo_HDF |
| s1154 | 87 | bary_hi | DYQ | lo | 93861/250000 | hi_OCF,s1080,s1078,lo_OCY,lo_ODQ,lo_CDQ,s1116 |
| s1157 | 88 | bary_hi | HFY | lo | 19673/200000 | s950,s1091,lo_OYZ,lo_OCY,lo_OHF,s1075,s997 |
| s1159 | 90 | bary_lo | CDZ | lo | 150969/1000000 | hi_ODF,s1043,s1121,lo_ODZ,s1108,lo_CDF |
| s1168 | 91 | bary_lo | OHZ | hi | 711657/1000000 | s1114,lo_DZP,s1086,lo_ODZ,hi_OHD,s1146 |
| s1169 | 92 | bary_hi | OCZ | hi | 111939/250000 | s1114,lo_DZP,s1086,lo_ODZ,hi_OCD,s983 |
| s1170 | 93 | bary_hi | HCZ | hi | 553827/1000000 | s1114,lo_DZP,s1086,lo_ODZ,s1142,s288,s1147 |
| s1186 | 99 | bary_hi | OFY | lo | 190337/1000000 | s995,s1081,lo_OYQ,lo_OYZ,s1121,s1115 |
| s1192 | 106 | bary_hi | HYZ | hi | 105941/200000 | s1151,lo_DYZ,s1128,s1039,s1151 |
| s1196 | 107 | bary_hi | HYP | hi | 301511/1000000 | s1151,s1137,s989,s1097,s1151 |
| s1198 | 108 | bary_lo | DFP | lo | 45863/200000 | s1192,s1088,lo_HZP,s989,lo_HDF,lo_DFY,s1043 |
| s1200 | 109 | bary_hi | OHP | lo | 240153/1000000 | s1144,s1198,lo_CFP,s1131,s1142,s1102,lo_OHF |
| s1201 | 110 | bary_hi | OCP | hi | 231969/500000 | s1144,s1198,lo_CFP,s1131,hi_OCD,hi_OCF |
| s1204 | 112 | bary_hi | OPQ | hi | 682399/1000000 | s1144,s1198,lo_CFP,s1131,lo_OCQ,hi_ODQ,hi_OFQ |
| s1207 | 113 | bary_lo | HYP | lo | 19829/125000 | s1144,s1198,lo_CFP,s1131,lo_HCY,lo_HDY,s1157 |
| s1212 | 116 | bary_hi | OZQ | hi | 298287/500000 | s1125,lo_DZP,s1087,s1159,lo_OCQ,hi_ODQ,s1204 |
| s1214 | 118 | bary_hi | HFZ | lo | 24239/250000 | s1125,lo_DZP,s1087,s1159,s1075,lo_HDF,lo_HFP |
| s1238 | 120 | bary_lo | OZQ | lo | 443333/1000000 | hi_DFY,s1139,lo_DYZ,s1043,lo_ODQ,s1115,lo_OYQ |
| s1247 | 122 | bary_lo | HDP | hi | 323999/1000000 | hi_DFY,s1099,s1137,s1198,lo_HDF,s1151 |
| s1250 | 123 | bary_hi | DFP | hi | 344851/1000000 | hi_DFY,s1099,s1137,s1198,hi_DFY |
| s1251 | 124 | bary_lo | DYP | hi | 53711/125000 | hi_DFY,s1099,s1137,s1198,hi_DFY |
| s1255 | 125 | bary_hi | HDZ | lo | 48179/250000 | s1251,s1088,lo_DZP,lo_DYZ,lo_HDY,s1097 |
| s1256 | 126 | bary_hi | HYZ | hi | 525807/1000000 | s1251,s1088,lo_DZP,lo_DYZ,s1151,s1196 |
| s1258 | 127 | bary_lo | DFZ | lo | 99919/500000 | s1251,s1088,lo_DZP,lo_DYZ,lo_DFY,s1198 |
| s1264 | 1 | sum | OHD | lo | 155689/200000 | s1097,s1118,s1200 |
| s1266 | 3 | sum | OCF | lo | 193503/500000 | s1080,lo_OCY,s1186 |
| s1268 | 5 | sum | OCP | lo | 57441/200000 | lo_CYP,lo_OCY,s1148 |
| s1273 | 6 | sub | OFP | hi | 18213/50000 | hi_ODF,s1198,s1118 |
| s1278 | 9 | sum | HCD | lo | 369603/500000 | s1131,s1090,s1097 |
| s1279 | 12 | sum | HYZ | lo | 47473/125000 | s1207,lo_HZP,s1088 |
| s1280 | 13 | sum | CDF | lo | 710579/1000000 | s1131,lo_CFP,s1198 |
| s1281 | 14 | sum | CDP | lo | 388307/1000000 | s1159,s1087,lo_DZP |
| s1282 | 15 | sub | FYZ | hi | 240663/500000 | hi_DFY,s1258,lo_DYZ |
| s1284 | 17 | sumlo | OYP | lo | 101581/1000000 | s1268,lo_ODY,lo_OCY,s1118,hi_OCD |
| s1285 | 18 | sumlo | OFY | lo | 192077/1000000 | s1115,lo_OYZ,s1121,lo_OYQ,s1212 |
| s1286 | 21 | sumlo | HCQ | lo | 9631/31250 | lo_CDQ,s1142,s1278,lo_OCQ,hi_OCD |
| s1288 | 24 | sumlo | CDZ | lo | 30783/200000 | s1280,lo_ODZ,s1258,s1108,hi_ODF |
| s1294 | 29 | sumlo | HCF | lo | 122551/1000000 | lo_CFP,lo_OHF,lo_HFP,s1266,s1273 |
| s1298 | 32 | sumlo | CFY | lo | 26041/250000 | s1092,s1157,lo_DFY,lo_HCY,s1151 |
| s1303 | 38 | sumlo | OZP | lo | 83533/500000 | lo_DZP,s1200,lo_HZP,s1118,s1247 |
| s1304 | 39 | sumlo | HCP | lo | 157687/1000000 | s1281,lo_HFP,lo_CFP,s1097,s1250 |
| s1305 | 40 | sumlo | CZP | lo | 1959/12500 | s1281,lo_HZP,lo_DZP,s1304,s1247 |
| s1306 | 42 | sumlo | YZP | lo | 67853/500000 | s1137,lo_HZP,lo_DZP,s1207,s1247 |
| s1308 | 44 | balance_lo | HCP | lo | 40233/250000 | s1294,s1118,lo_CFP,s1264,lo_HFP,s1108,hi_ODF |
| s1309 | 45 | balance_lo | CYZ | lo | 112993/1000000 | lo_HCY,s1238,s1279,lo_OCQ,s1126,lo_OYQ,hi_OHQ |
| s1310 | 46 | balance_lo | CDY | lo | 205717/1000000 | s1280,lo_OYQ,lo_DFY,lo_OCQ,s1298,lo_ODQ,hi_OFQ |
| s1312 | 47 | balance_lo | YZQ | lo | 4291/20000 | lo_DYZ,s1286,s1140,lo_HCY,s1154,s1126,s288 |
| s1316 | 52 | balance_lo | HDP | lo | 99603/500000 | s1255,s1099,lo_DZP,s1157,lo_HZP,lo_DFY,s1282 |
| s1317 | 53 | balance_lo | OFP | lo | 218341/1000000 | s1142,s1198,s1108,lo_HFP,s1264,lo_CFP,s288 |
| s1318 | 54 | balance_lo | FYP | lo | 57883/500000 | s1310,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s1198,s288 |
| s1320 | 55 | balance_lo | FZP | lo | 26571/250000 | lo_HDF,s1306,lo_DFY,lo_HZP,s1157,lo_DZP,s1151 |
| s1321 | 56 | linear | OHD | lo | 390621/500000 | s1316,s1118,s1200 |
| s1323 | 57 | linear | OHQ | lo | 700283/1000000 | hi_HDQ,lo_ODQ,s1321 |
| s1327 | 58 | linear | OCD | lo | 391717/1000000 | s1310,lo_OCY,lo_ODY |
| s1331 | 60 | linear | OCP | lo | 287581/1000000 | lo_CYP,lo_OCY,s1284 |
| s1332 | 61 | linear | ODF | lo | 789539/1000000 | s1198,s1118,s1317 |
| s1333 | 61 | linear | ODP | hi | 243901/500000 | s1198,hi_ODF,s1317 |
| s1334 | 62 | linear | OFQ | lo | 779311/1000000 | hi_DFQ,s1332,lo_ODQ |
| s1335 | 62 | linear | DFQ | lo | 497159/1000000 | s1332,lo_ODQ,hi_OFQ |
| s1337 | 63 | linear | ODP | lo | 176533/500000 | lo_DZP,lo_ODZ,s1303 |
| s1339 | 64 | linear | DPQ | lo | 364667/1000000 | s1337,lo_ODQ,s1204 |
| s1340 | 65 | linear | OFZ | lo | 491691/1000000 | s1320,s1317,s1303 |
| s1343 | 67 | linear | CDP | hi | 273431/500000 | s288,s1308,s1316 |
| s1344 | 68 | linear | HCZ | lo | 102663/250000 | s1305,s1308,lo_HZP |
| s1349 | 69 | linear | HYP | hi | 297101/1000000 | s1256,lo_HZP,s1306 |
| s1350 | 70 | linear | CDF | lo | 355311/500000 | s1281,lo_CFP,s1198 |
| s1352 | 71 | linear | CDP | lo | 80727/200000 | s1288,s1305,lo_DZP |
| s1358 | 72 | linear | DYP | lo | 160853/500000 | lo_DYZ,lo_DZP,s1306 |
| s1360 | 73 | linear | FYZ | lo | 89439/250000 | s1318,s1320,s1306 |
| s1361 | 74 | support_z | DZQ | lo | 206713/1000000 | lo_ODQ,s1212 |
| s1363 | 77 | linear | OHC | lo | 391717/1000000 | s1327 |
| s1366 | 79 | linear | CDF | hi | 877449/1000000 | s1294 |
| s1371 | 81 | bary_hi | HCP | hi | 300249/1000000 | s1168,lo_HZP,s1303,s1200,s1363,s1170 |
| s1372 | 82 | bary_hi | OHY | lo | 94701/500000 | hi_OCD,s1310,lo_ODY,lo_OCY,s1363,s1321 |
| s1373 | 83 | bary_hi | OYP | lo | 103447/1000000 | hi_OCD,s1310,lo_ODY,lo_OCY,s1331,s1337 |
| s1375 | 85 | bary_lo | HDY | hi | 50737/62500 | hi_OCF,s1298,s1285,lo_OCY,hi_OHD,s288,lo_HDF |
| s1377 | 86 | bary_hi | DYP | hi | 211749/500000 | hi_OCF,s1298,s1285,lo_OCY,s1333,s1343,s1198 |
| s1381 | 88 | bary_hi | HFY | lo | 99959/1000000 | s1169,s1309,lo_OYZ,lo_OCY,lo_OHF,s1294,s1214 |
| s1383 | 89 | bary_hi | DYQ | lo | 189681/500000 | s1201,lo_CYP,s1373,lo_OCY,lo_ODQ,lo_CDQ,s1339 |
| s1384 | 90 | bary_lo | CDZ | lo | 19291/125000 | hi_ODF,s1258,s1340,lo_ODZ,s1327,s1350 |
| s1393 | 92 | bary_hi | OCZ | hi | 444787/1000000 | s1333,lo_DZP,s1303,lo_ODZ,hi_OCD,s1201 |
| s1394 | 93 | bary_hi | HCZ | hi | 543721/1000000 | s1333,lo_DZP,s1303,lo_ODZ,s1363,s288,s1371 |
| s1395 | 95 | bary_hi | HYZ | hi | 522787/1000000 | s1333,lo_DZP,s1303,lo_ODZ,s1372,s1375,s1349 |
| s1410 | 99 | bary_hi | OFY | lo | 24767/125000 | s1212,s1312,lo_OYQ,lo_OYZ,s1340,s1334 |
| s1423 | 108 | bary_lo | DFP | lo | 232331/1000000 | s1395,s1306,lo_HZP,s1207,lo_HDF,lo_DFY,s1258 |
| s1424 | 109 | bary_hi | OHP | lo | 3063/12500 | s1366,s1423,lo_CFP,s1352,s1363,s1321,lo_OHF |
| s1428 | 112 | bary_hi | OPQ | hi | 338323/500000 | s1366,s1423,lo_CFP,s1352,lo_OCQ,hi_ODQ,hi_OFQ |
| s1431 | 113 | bary_lo | HYP | lo | 1599/10000 | s1366,s1423,lo_CFP,s1352,lo_HCY,lo_HDY,s1381 |
| s1435 | 116 | bary_hi | OZQ | hi | 591713/1000000 | s1343,lo_DZP,s1305,s1384,lo_OCQ,hi_ODQ,s1428 |
| s1437 | 118 | bary_hi | HFZ | lo | 3921/40000 | s1343,lo_DZP,s1305,s1384,s1294,lo_HDF,lo_HFP |
| s1463 | 120 | bary_lo | OZQ | lo | 453179/1000000 | hi_DFY,s1360,lo_DYZ,s1258,lo_ODQ,s1334,lo_OYQ |
| s1470 | 122 | bary_lo | HDP | hi | 314411/1000000 | hi_DFY,s1318,s1358,s1423,lo_HDF,s1375 |
| s1473 | 123 | bary_hi | DFP | hi | 84173/250000 | hi_DFY,s1318,s1358,s1423,hi_DFY |
| s1476 | 125 | bary_hi | HDZ | lo | 196147/1000000 | s1377,s1306,lo_DZP,lo_DYZ,lo_HDY,s1316 |
| s1479 | 127 | bary_lo | DFZ | lo | 203421/1000000 | s1377,s1306,lo_DZP,lo_DYZ,lo_DFY,s1423 |
| s1484 | 1 | sum | OHD | lo | 12458/15625 | s1316,s1337,s1424 |
| s1487 | 3 | sum | OCF | lo | 3953/10000 | s1298,lo_OCY,s1410 |
| s1489 | 5 | sum | OCP | lo | 289447/1000000 | lo_CYP,lo_OCY,s1373 |
| s1494 | 6 | sub | OFP | hi | 350061/1000000 | hi_ODF,s1423,s1337 |
| s1500 | 12 | sum | HYZ | lo | 194303/500000 | s1431,lo_HZP,s1306 |
| s1503 | 13 | sum | CDF | lo | 364483/500000 | s1352,lo_CFP,s1423 |
| s1504 | 14 | sum | CDP | lo | 25253/62500 | s1384,s1305,lo_DZP |
| s1505 | 15 | sub | FYZ | hi | 477743/1000000 | hi_DFY,s1479,lo_DYZ |
| s1507 | 17 | sumlo | OYP | lo | 25937/250000 | s1489,lo_ODY,lo_OCY,s1337,hi_OCD |
| s1508 | 18 | sumlo | OFY | lo | 49941/250000 | s1334,lo_OYZ,s1340,lo_OYQ,s1435 |
| s1512 | 23 | sumlo | HDQ | lo | 246367/500000 | s1335,s1484,lo_HDF,lo_ODQ,hi_ODF |
| s1513 | 24 | sumlo | CDZ | lo | 39413/250000 | s1503,lo_ODZ,s1479,s1327,hi_ODF |
| s1518 | 29 | sumlo | HCF | lo | 5189/40000 | lo_CFP,lo_OHF,lo_HFP,s1487,s1494 |
| s1522 | 32 | sumlo | CFY | lo | 26209/250000 | s1310,s1381,lo_DFY,lo_HCY,s1375 |
| s1527 | 38 | sumlo | OZP | lo | 88457/500000 | lo_DZP,s1424,lo_HZP,s1337,s1470 |
| s1528 | 39 | sumlo | HCP | lo | 41657/250000 | s1504,lo_HFP,lo_CFP,s1316,s1473 |
| s1529 | 40 | sumlo | CZP | lo | 211/1250 | s1504,lo_HZP,lo_DZP,s1528,s1470 |
| s1530 | 42 | sumlo | YZP | lo | 71227/500000 | s1358,lo_HZP,lo_DZP,s1431,s1470 |
| s1531 | 43 | sumlo | HCQ | lo | 63429/200000 | lo_CDQ,s1323,s1512,lo_OCQ,hi_ODQ |
| s1533 | 44 | balance_lo | HCP | lo | 16717/100000 | s1518,s1337,lo_CFP,s1484,lo_HFP,s1327,hi_ODF |
| s1534 | 45 | balance_lo | CYZ | lo | 29119/250000 | lo_HCY,s1463,s1500,lo_OCQ,s1344,lo_OYQ,hi_OHQ |
| s1535 | 46 | balance_lo | CDY | lo | 51981/250000 | s1503,lo_OYQ,lo_DFY,lo_OCQ,s1522,lo_ODQ,hi_OFQ |
| s1538 | 47 | balance_lo | YZQ | lo | 225473/1000000 | lo_DYZ,s1531,s1361,lo_HCY,s1383,s1344,s288 |
| s1543 | 52 | balance_lo | HDP | lo | 101043/500000 | s1476,s1318,lo_DZP,s1381,lo_HZP,lo_DFY,s1505 |
| s1544 | 53 | balance_lo | OFP | lo | 222257/1000000 | s1363,s1423,s1327,lo_HFP,s1484,lo_CFP,s288 |
| s1545 | 54 | balance_lo | FYP | lo | 116301/1000000 | s1535,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s1423,s288 |
| s1546 | 55 | balance_lo | FZP | lo | 26819/250000 | lo_HDF,s1530,lo_DFY,lo_HZP,s1381,lo_DZP,s1375 |
| s1547 | 56 | linear | OHD | lo | 12503/15625 | s1543,s1337,s1424 |
| s1552 | 58 | linear | OCD | lo | 98481/250000 | s1535,lo_OCY,lo_ODY |
| s1556 | 60 | linear | OCP | lo | 72437/250000 | lo_CYP,lo_OCY,s1507 |
| s1557 | 61 | linear | ODF | lo | 403827/500000 | s1423,s1337,s1544 |
| s1558 | 61 | linear | ODP | hi | 48087/100000 | s1423,hi_ODF,s1544 |
| s1559 | 62 | linear | OFQ | lo | 398713/500000 | hi_DFQ,s1557,lo_ODQ |
| s1562 | 63 | linear | ODP | lo | 181457/500000 | lo_DZP,lo_ODZ,s1527 |
| s1565 | 65 | linear | OFZ | lo | 506447/1000000 | s1546,s1544,s1527 |
| s1569 | 67 | linear | CDP | hi | 33609/62500 | s288,s1533,s1543 |
| s1570 | 68 | linear | HCZ | lo | 42897/100000 | s1529,s1533,lo_HZP |
| s1571 | 68 | linear | HCP | hi | 281921/1000000 | s1529,s1394,lo_HZP |
| s1577 | 70 | linear | CDF | lo | 729379/1000000 | s1504,lo_CFP,s1423 |
| s1579 | 71 | linear | CDP | lo | 104863/250000 | s1513,s1529,lo_DZP |
| s1584 | 72 | linear | DYP | lo | 164227/500000 | lo_DYZ,lo_DZP,s1530 |
| s1588 | 77 | linear | OHC | lo | 98481/250000 | s1552 |
| s1591 | 79 | linear | CDF | hi | 34811/40000 | s1518 |
| s1597 | 84 | bary_hi | DFY | hi | 773881/1000000 | hi_OCD,s1535,lo_ODY,lo_OCY,hi_ODF,s1591 |
| s1599 | 85 | bary_lo | HDY | hi | 810667/1000000 | hi_OCF,s1522,s1508,lo_OCY,hi_OHD,s288,lo_HDF |
| s1601 | 86 | bary_hi | DYP | hi | 103893/250000 | hi_OCF,s1522,s1508,lo_OCY,s1558,s1569,s1423 |
| s1605 | 88 | bary_hi | HFY | lo | 101729/1000000 | s1393,s1534,lo_OYZ,lo_OCY,lo_OHF,s1518,s1437 |
| s1611 | 90 | bary_lo | CDZ | lo | 158173/1000000 | hi_ODF,s1479,s1565,lo_ODZ,s1552,s1577 |
| s1623 | 93 | bary_hi | HCZ | hi | 534513/1000000 | s1558,lo_DZP,s1527,lo_ODZ,s1588,s288,s1571 |
| s1626 | 97 | bary_lo | CZP | hi | 273709/1000000 | s1558,lo_DZP,s1527,lo_ODZ,s1556,s1569 |
| s1642 | 99 | bary_hi | OFY | lo | 20493/100000 | s1435,s1538,lo_OYQ,lo_OYZ,s1565,s1559 |
| s1653 | 104 | bary_lo | DFP | lo | 119129/500000 | s1623,s1529,lo_HZP,s1533,lo_HDF,s1577,s1479 |
| s1658 | 109 | bary_hi | OHP | lo | 250957/1000000 | s1591,s1653,lo_CFP,s1579,s1588,s1547,lo_OHF |
| s1662 | 112 | bary_hi | OPQ | hi | 666741/1000000 | s1591,s1653,lo_CFP,s1579,lo_OCQ,hi_ODQ,hi_OFQ |
| s1670 | 116 | bary_hi | OZQ | hi | 585337/1000000 | s1569,lo_DZP,s1529,s1611,lo_OCQ,hi_ODQ,s1662 |
| s1672 | 118 | bary_hi | HFZ | lo | 99351/1000000 | s1569,lo_DZP,s1529,s1611,s1518,lo_HDF,lo_HFP |
| s1705 | 122 | bary_lo | HDP | hi | 3053/10000 | s1597,s1545,s1584,s1653,lo_HDF,s1599 |
| s1708 | 123 | bary_hi | DFP | hi | 164563/500000 | s1597,s1545,s1584,s1653,s1597 |
| s1713 | 127 | bary_lo | DFZ | lo | 52157/250000 | s1601,s1530,lo_DZP,lo_DYZ,lo_DFY,s1653 |
| s1719 | 1 | sum | OHD | lo | 815957/1000000 | s1543,s1562,s1658 |
| s1722 | 3 | sum | OCF | lo | 201383/500000 | s1522,lo_OCY,s1642 |
| s1729 | 6 | sub | OFP | hi | 167143/500000 | hi_ODF,s1653,s1562 |
| s1738 | 13 | sum | CDF | lo | 75071/100000 | s1579,lo_CFP,s1653 |
| s1739 | 14 | sum | CDP | lo | 419973/1000000 | s1611,s1529,lo_DZP |
| s1740 | 15 | sub | FYZ | hi | 472253/1000000 | s1597,s1713,lo_DYZ |
| s1743 | 18 | sumlo | OFY | lo | 207163/1000000 | s1559,lo_OYZ,s1565,lo_OYQ,s1670 |
| s1748 | 22 | sumlo | CFY | lo | 106713/1000000 | s1738,lo_HCY,s1535,s1518,s288 |
| s1751 | 24 | sumlo | CDZ | lo | 81243/500000 | s1738,lo_ODZ,s1713,s1552,hi_ODF |
| s1758 | 29 | sumlo | HCF | lo | 34481/250000 | lo_CFP,lo_OHF,lo_HFP,s1722,s1729 |
| s1764 | 36 | sumlo | HDZ | lo | 200963/1000000 | s1751,lo_HZP,lo_DZP,s1570,s1626 |
| s1766 | 38 | sumlo | OZP | lo | 46749/250000 | lo_DZP,s1658,lo_HZP,s1562,s1705 |
| s1767 | 39 | sumlo | HCP | lo | 175773/1000000 | s1739,lo_HFP,lo_CFP,s1543,s1708 |
| s1768 | 40 | sumlo | CZP | lo | 7259/40000 | s1739,lo_HZP,lo_DZP,s1767,s1705 |
| s1769 | 40 | sumlo | HDP | lo | 10121/50000 | s1739,lo_HZP,lo_DZP,s1767,s1626 |
| s1770 | 41 | sumlo | HYP | lo | 164337/1000000 | s1584,lo_HFP,s1545,s1769,s1708 |
| s1771 | 42 | sumlo | YZP | lo | 150113/1000000 | s1584,lo_HZP,lo_DZP,s1770,s1705 |
| s1776 | 46 | balance_lo | CDY | lo | 105647/500000 | s1738,lo_OYQ,lo_DFY,lo_OCQ,s1748,lo_ODQ,hi_OFQ |
| s1781 | 49 | balance_lo | DFP | lo | 121821/500000 | s1738,lo_HZP,lo_CFP,s1764,s1739,s1672,s1623 |
| s1784 | 52 | balance_lo | HDP | lo | 12887/62500 | s1764,s1545,lo_DZP,s1605,lo_HZP,lo_DFY,s1740 |
| s1785 | 53 | balance_lo | OFP | lo | 229873/1000000 | s1588,s1781,s1552,lo_HFP,s1719,lo_CFP,s288 |
| s1786 | 54 | balance_lo | FYP | lo | 117807/1000000 | s1776,lo_HFP,lo_HDY,lo_CFP,lo_HCY,s1781,s288 |
| s1788 | 56 | linear | OHD | lo | 820063/1000000 | s1784,s1562,s1658 |
| s1792 | 58 | linear | OCD | lo | 198647/500000 | s1776,lo_OCY,lo_ODY |
| s1800 | 61 | linear | ODF | lo | 836429/1000000 | s1781,s1562,s1785 |
| s1802 | 61 | linear | ODP | hi | 461943/1000000 | s1781,hi_ODF,s1785 |
| s1806 | 63 | linear | ODP | lo | 93249/250000 | lo_DZP,lo_ODZ,s1766 |
| s1813 | 67 | linear | HCD | lo | 400969/500000 | s1739,s1767,s1784 |
| s1815 | 68 | linear | HCZ | lo | 56281/125000 | s1768,s1767,lo_HZP |
| s1816 | 68 | linear | HCP | hi | 130019/500000 | s1768,s1623,lo_HZP |
| s1824 | 70 | linear | CDF | lo | 151323/200000 | s1739,lo_CFP,s1781 |
| s1827 | 71 | linear | CDP | lo | 436961/1000000 | s1751,s1768,lo_DZP |
| s1835 | 72 | linear | DYP | lo | 336113/1000000 | lo_DYZ,lo_DZP,s1771 |
| s1840 | 77 | linear | OHC | lo | 198647/500000 | s1792 |
| s1843 | 79 | linear | CDF | hi | 215519/250000 | s1758 |
| s1847 | 84 | bary_hi | DFY | hi | 772557/1000000 | hi_OCD,s1776,lo_ODY,lo_OCY,hi_ODF,s1843 |
| s1849 | 85 | bary_lo | HDY | hi | 809583/1000000 | hi_OCF,s1748,s1743,lo_OCY,hi_OHD,s288,lo_HDF |
| s1879 | 93 | bary_hi | HCZ | hi | 514167/1000000 | s1802,lo_DZP,s1766,lo_ODZ,s1840,s288,s1816 |
| s1880 | 94 | bary_hi | HDZ | lo | 206609/1000000 | s1802,lo_DZP,s1766,lo_ODZ,s1788,s1784 |
| s1883 | 96 | bary_lo | CDZ | lo | 33591/200000 | s1802,lo_DZP,s1766,lo_ODZ,s1792,s1827 |
| s1886 | 98 | bary_lo | DFZ | lo | 217443/1000000 | s1802,lo_DZP,s1766,lo_ODZ,s1800,s1781 |
| s1915 | 100 | bary_hi | CYZ | lo | 12211/100000 | s288,s1883,s1880,s1815,lo_HCY,s1776 |
| s1930 | 102 | bary_hi | HDP | lo | 215681/1000000 | s1879,s1768,lo_HZP,s1767,s1813,s1880 |
| s1933 | 103 | bary_hi | CZP | hi | 122697/500000 | s1879,s1768,lo_HZP,s1767,s1879 |
| s1935 | 104 | bary_lo | DFP | lo | 255573/1000000 | s1879,s1768,lo_HZP,s1767,lo_HDF,s1824,s1886 |
| s1943 | 111 | bary_hi | ODP | hi | 439431/1000000 | s1843,s1935,lo_CFP,s1827,s1792,hi_ODF |
| s1949 | 114 | bary_hi | CDP | hi | 513503/1000000 | s1843,s1935,lo_CFP,s1827,s1843 |
| s1959 | 117 | bary_hi | HDZ | lo | 107891/500000 | s1949,lo_DZP,s1768,s1883,s1813,s1930 |
| s1995 | 122 | bary_lo | HDP | hi | 36681/125000 | s1847,s1786,s1835,s1935,lo_HDF,s1849 |
| s1998 | 123 | bary_hi | DFP | hi | 318637/1000000 | s1847,s1786,s1835,s1935,s1847 |
| s2014 | 4 | sum | OCZ | lo | 30811/100000 | s1915,lo_OCY,lo_OYZ |
| s2023 | 7 | sub | OZP | hi | 253431/1000000 | s1943,lo_DZP,lo_ODZ |
| s2028 | 8 | sum | HCD | lo | 166797/200000 | s1883,s1815,s1959 |
| s2033 | 14 | sum | CDP | lo | 44243/100000 | s1883,s1768,lo_DZP |
| s2042 | 19 | sumlo | HDP | lo | 112307/500000 | s2028,lo_HZP,s1767,s1959,s1879 |
| s2063 | 35 | sumlo | CDZ | lo | 179659/1000000 | s1768,lo_ODZ,lo_DZP,s2014,s2023 |
| s2065 | 36 | sumlo | HDZ | lo | 238723/1000000 | s2063,lo_HZP,lo_DZP,s1815,s1933 |
| s2067 | 37 | sumlo | OHP | lo | 67727/250000 | s2042,s1785,lo_HFP,s1806,s1998 |
| s2068 | 38 | sumlo | HDP | lo | 236289/1000000 | lo_DZP,s2067,lo_HZP,s1806,s2023 |
| s2071 | 39 | sumlo | HCP | lo | 12381/62500 | s2033,lo_HFP,lo_CFP,s2068,s1998 |
| s2074 | 40 | sumlo | CZP | lo | 50749/250000 | s2033,lo_HZP,lo_DZP,s2071,s1995 |
| s2143 | 66 | linear | HCZ | hi | 244309/500000 | s2063,s288,s2065 |
| s2153 | 68 | linear | HCZ | lo | 123523/250000 | s2074,s2071,lo_HZP |

## Conclusion

{"triangle":"HCZ","lower":"s2153","upper":"s2143"}
