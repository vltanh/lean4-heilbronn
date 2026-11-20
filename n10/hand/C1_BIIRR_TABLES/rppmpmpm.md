# Leaf rppmpmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":-1,"FZP":1,"DYZ":-1}

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
| 34 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 35 | plu | ["OHYZP","OYZ",-1] |
| 36 | plu | ["HODZP","HZP",1] |
| 37 | plu | ["DOHZP","DZP",-1] |
| 38 | plu | ["YODZQ","YZQ",-1] |
| 39 | plu | ["YODZR","YZR",-1] |
| 40 | plu | ["ZOHFP","ZOF",-1] |
| 41 | plu | ["ZOHYP","ZYP",-1] |
| 42 | plu | ["ZOCPQ","ZPQ",-1] |
| 43 | plu | ["ZOCPR","ZPR",-1] |
| 44 | plu | ["ZODFY","ZFY",1] |
| 45 | plu | ["POHFZ","POF",-1] |
| 46 | plu | ["PODFY","PFY",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YZ"] |
| lo_OHF | OHF | lo | 93/1000 | ["cost",""] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_OFP | OFP | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFZ | HFZ | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 347/500 | ["cost","ZP"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_FYZ | FYZ | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| lo_YZP | YZP | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCP | OCP | hi | 115189/200000 | "C013" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCF | HCF | hi | 127/200 | "C027" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CFY | CFY | hi | 271/500 | "C033" |
| hi_DFY | DFY | hi | 245797/317500 | "C023" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHP","HYP","OHY","OYP"] | ["fan","OHP","Y"] |
| 2 | ["fan","OCP","CZP","OCZ","OZP"] | ["fan","OCP","Z"] |
| 3 | ["fan","ODF","DFP","ODP","OFP"] | ["fan","ODF","P"] |
| 4 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 5 | ["fan","DFY","DFZ","DYZ","FYZ"] | ["fan","DFY","Z"] |
| 6 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 7 | ["fan","DFZ","DFP","DZP","FZP"] | ["fan","DFZ","P"] |
| 8 | ["plu","OCY","OHP","OCP","OHY","OHC","OYP"] | ["plu","OHCYP"] |
| 9 | ["plu","ODP","OFZ","ODF","OZP","ODZ","OFP"] | ["plu","ODFZP"] |
| 10 | ["plu","HYP","OHD","HDP","OHY","HDY","OHP"] | ["plu","HODYP"] |
| 11 | ["plu","HCP","HDF","HCD","HFP","HCF","HDP"] | ["plu","HCDFP"] |
| 12 | ["plu","HDF","ODP","DFP","OHD","HDP","ODF"] | ["plu","DOHFP"] |
| 13 | ["plu","DFY","HCD","CDF","HDY","CDY","HDF"] | ["plu","DHCFY"] |
| 14 | ["plu","CDP","HDF","CDF","HDP","DFP","HCD"] | ["plu","DHCFP"] |
| 15 | ["plu","HFP","ODF","DFP","OHF","HDF","OFP"] | ["plu","FOHDP"] |
| 16 | ["plu","DFZ","OFP","DFP","OFZ","FZP","ODF"] | ["plu","FODZP"] |
| 17 | ["plu","DFZ","HFP","DFP","HFZ","FZP","HDF"] | ["plu","FHDZP"] |
| 18 | ["plu","DFZ","FYP","DFP","FYZ","DFY","FZP"] | ["plu","FDYZP"] |
| 19 | ["plu","HYP","ODY","DYP","OHY","HDY","OYP"] | ["plu","YOHDP"] |
| 20 | ["plu","DYP","FYZ","DFY","YZP","DYZ","FYP"] | ["plu","YDFZP"] |
| 21 | ["plu","HZP","OFP","FZP","OHP","HFP","OZP"] | ["plu","POHFZ"] |
| 22 | ["plu","DZP","HFP","DFP","HZP","FZP","HDP"] | ["plu","PHDFZ"] |
| 23 | ["balance",[[1,"DFY","OCZ"],[-1,"FYZ","OCD"],[-1,"DYZ","OCF"],[-1,"DFZ","OCY"]]] | ["six","OCDFYZ"] |
| 24 | ["balance",[[-1,"HCD","OYP"],[-1,"CDP","OHY"],[-1,"HDP","OCY"],[1,"HCP","ODY"]]] | ["six","OYHCDP"] |
| 25 | ["balance",[[-1,"DFY","OZP"],[1,"FYZ","ODP"],[-1,"DYZ","OFP"],[-1,"DFZ","OYP"]]] | ["six","OPDFYZ"] |
| 26 | ["balance",[[-1,"OCZ","DYP"],[1,"CZP","ODY"],[1,"OZP","CDY"],[1,"OCP","DYZ"]]] | ["six","DYOCZP"] |
| 27 | ["balance",[[1,"OFZ","DYP"],[-1,"FZP","ODY"],[-1,"OZP","DFY"],[-1,"OFP","DYZ"]]] | ["six","DYOFZP"] |
| 28 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 29 | ["linear",{"OHD":1,"ODF":-1,"OHF":-1,"HDF":1},"0"] | ["affine_quad","OHDF",-1] |
| 30 | ["linear",{"OHD":1,"ODP":-1,"OHP":-1,"HDP":1},"0"] | ["affine_quad","OHDP",-1] |
| 31 | ["linear",{"OHF":-1,"OFP":-1,"OHP":1,"HFP":1},"0"] | ["affine_quad","OHFP",1] |
| 32 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 33 | ["linear",{"OCZ":-1,"OZP":-1,"OCP":1,"CZP":-1},"0"] | ["affine_quad","OCZP",-1] |
| 34 | ["linear",{"HDF":1,"HFY":-1,"HDY":1,"DFY":-1},"0"] | ["affine_quad","HDFY",1] |
| 35 | ["linear",{"CDF":1,"CFY":1,"CDY":-1,"DFY":-1},"0"] | ["affine_quad","CDFY",1] |
| 36 | ["linear",{"DFZ":1,"DZP":-1,"DFP":-1,"FZP":-1},"0"] | ["affine_quad","DFZP",1] |
| 37 | ["quad","HDF","OHD","93/91"] | ["quad","ODFH","YZP"] |
| 38 | ["quad","HFP","OHP","449/1000"] | ["quad","OPFH","Y"] |
| 39 | ["support","OHP","OFP","OHF","2697/5000"] | ["support_quad","OPFH","Y","29/5"] |
| 40 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 41 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 42 | ["bary",["ODY",1],[null,["OHD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OD"] |
| 43 | ["bary",["HYP",-1],[["OHP",-1],null,["HDP",-1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","HP"] |
| 44 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","CD"] |
| 45 | ["bary",["OCY",1],[null,["OHC",1],["OCP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","OC"] |
| 46 | ["bary",["HDY",-1],[["OHD",-1],null,["HDP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","HD"] |
| 47 | ["bary",["CDY",1],[["OCD",1],["HCD",1],["CDP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","CD"] |
| 48 | ["bary",["DFY",1],[["ODF",1],["HDF",1],["DFP",1]],"OHP",["HYP","OYP","OHY"]] | ["bary","OHP","Y","DF"] |
| 49 | ["bary",["HDZ",-1],[["OHD",-1],["HCD",-1],["HDP",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","HD"] |
| 50 | ["bary",["OHP",-1],[null,["OHD",-1],["OHF",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OH"] |
| 51 | ["bary",["ODP",1],[["OHD",1],null,["ODF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OD"] |
| 52 | ["bary",["OFP",-1],[["OHF",1],["ODF",-1],null],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OF"] |
| 53 | ["bary",["HCP",1],[null,["HCD",1],["HCF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HC"] |
| 54 | ["bary",["HYP",1],[null,["HDY",1],["HFY",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","HY"] |
| 55 | ["bary",["DYP",-1],[["HDY",-1],null,["DFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DY"] |
| 56 | ["bary",["DZP",-1],[["HDZ",-1],null,["DFZ",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DZ"] |
| 57 | ["bary",["DFZ",1],[null,null,["DFY",1]],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","DF"] |
| 58 | ["bary",["DYZ",-1],[null,["DFY",-1],null],"DFY",["FYZ","DYZ","DFZ"]] | ["bary","DFY","Z","DY"] |
| 59 | ["bary",["DYP",-1],[null,["DFY",-1],["DYZ",-1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","DY"] |
| 60 | ["bary",["FYP",1],[["DFY",1],null,["FYZ",1]],"DFZ",["FZP","DZP","DFP"]] | ["bary","DFZ","P","FY"] |
| 61 | ["bary",["OCZ",1],[["OCD",1],["OCY",1],["OCP",1]],"DYP",["YZP","DZP","DYZ"]] | ["bary","DYP","Z","OC"] |
| 62 | ["bary",["DFZ",1],[null,["DFY",1],["DFP",1]],"DYP",["YZP","DZP","DYZ"]] | ["bary","DYP","Z","DF"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s16 | 3 | sub | ODP | hi | 374729/500000 | hi_ODF,lo_DFP,lo_OFP |
| s26 | 4 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s27 | 4 | sub | HDP | hi | 3/25 | hi_HDF,lo_DFP,lo_HFP |
| s28 | 4 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s32 | 5 | sub | DFZ | hi | 147041/250000 | hi_DFY,lo_DYZ,lo_FYZ |
| s35 | 6 | sub | DYP | hi | 147041/250000 | hi_DFY,lo_DFP,lo_FYP |
| s47 | 9 | sumlo | OFZ | lo | 48829/500000 | lo_ODF,lo_OZP,lo_ODZ,lo_OFP,s16 |
| s54 | 11 | sumhi | HCP | hi | 346033/500000 | hi_HCD,s28,hi_HCF,s27,lo_HDF |
| s71 | 12 | sumlo | ODP | lo | 421843/1000000 | lo_DFP,lo_OHD,lo_HDP,lo_ODF,hi_HDF |
| s83 | 14 | sumlo | CDP | lo | 80463/250000 | lo_CDF,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s95 | 15 | diffhi | OFP | hi | 92837/250000 | s28,hi_ODF,lo_DFP,lo_OHF,lo_HDF |
| s96 | 16 | sumlo | OFP | lo | 15647/125000 | lo_DFP,s47,lo_FZP,lo_ODF,s32 |
| s99 | 17 | sumlo | DFZ | lo | 2883/10000 | lo_DFP,lo_HFZ,lo_FZP,lo_HDF,s28 |
| s104 | 18 | sumlo | FYP | lo | 124439/1000000 | lo_DFP,lo_FYZ,lo_DFY,lo_FZP,s32 |
| s106 | 20 | sumlo | FYZ | lo | 12941/100000 | lo_DFY,lo_YZP,lo_DYZ,s104,s35 |
| s108 | 21 | sumlo | HZP | lo | 93163/1000000 | lo_FZP,lo_OHP,lo_HFP,lo_OZP,s95 |
| s111 | 22 | sumlo | DZP | lo | 36069/250000 | lo_DFP,s108,lo_FZP,lo_HDP,s28 |
| s113 | 23 | balance_lo | OCZ | lo | 25129/250000 | s106,lo_OCD,lo_DYZ,lo_OCF,s99,lo_OCY,hi_DFY |
| s116 | 24 | balance_lo | ODY | lo | 149007/1000000 | lo_HCD,lo_OYP,s83,lo_OHY,lo_HDP,lo_OCY,s54 |
| s118 | 25 | balance_lo | FYZ | lo | 68713/500000 | lo_DFY,lo_OZP,lo_DYZ,s96,s99,lo_OYP,s16 |
| s137 | 27 | balance_lo | OFZ | lo | 2392/15625 | lo_FZP,s116,lo_OZP,lo_DFY,s96,lo_DYZ,s35 |
| s148 | 29 | linear | OHF | hi | 153/250 | hi_HDF,lo_ODF,hi_OHD |
| s153 | 30 | linear | OHP | hi | 698157/1000000 | s27,s71,hi_OHD |
| s160 | 33 | linear | OCP | lo | 71629/250000 | lo_CZP,s113,lo_OZP |
| s173 | 34 | linear | HDY | lo | 481/1000 | lo_DFY,hi_HDF,lo_HFY |
| s185 | 36 | linear | DFZ | lo | 82569/250000 | lo_DFP,s111,lo_FZP |
| s193 | 37 | quad | OHD | lo | 357989/500000 | hi_HDF |
| s194 | 38 | quad | OHP | lo | 329/1000 | s28 |
| s195 | 39 | support_z | OHF | lo | 102501/1000000 | s194,s95 |
| s199 | 40 | linear | HCD | hi | 721/1000 | lo_HDF |
| s210 | 42 | bary_hi | ODY | hi | 213/500 | hi_OHD,s173,s116,lo_OHY,hi_OHD |
| s217 | 43 | bary_hi | HYP | lo | 83449/500000 | hi_OHD,s173,s116,lo_OHY,s194,lo_HDP |
| s221 | 44 | bary_hi | CDY | hi | 36511/62500 | hi_OHD,s173,s116,lo_OHY,hi_OCD,s199 |
| s245 | 46 | bary_lo | HDY | hi | 180299/250000 | s153,s217,lo_OYP,lo_OHY,hi_OHD,lo_HDP |
| s248 | 47 | bary_lo | CDY | lo | 3467/12500 | s153,s217,lo_OYP,lo_OHY,lo_OCD,lo_HCD,s83 |
| s250 | 48 | bary_hi | DFY | hi | 92873/125000 | s153,s217,lo_OYP,lo_OHY,hi_ODF,hi_HDF,s26 |
| s262 | 49 | bary_hi | HDZ | lo | 36607/250000 | hi_OCP,lo_CZP,lo_OZP,s113,s193,lo_HCD,s27 |
| s333 | 50 | bary_lo | OHP | hi | 578157/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s148 |
| s335 | 51 | bary_hi | ODP | hi | 676463/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,hi_ODF |
| s336 | 52 | bary_lo | OFP | hi | 67139/200000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s195,hi_ODF |
| s338 | 53 | bary_hi | HCP | hi | 59467/125000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s199,hi_HCF |
| s339 | 54 | bary_lo | HYP | lo | 3489/20000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s173,lo_HFY |
| s348 | 55 | bary_lo | DYP | hi | 255277/500000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s245,s250 |
| s349 | 55 | bary_hi | DYP | lo | 357107/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s173,lo_DFY |
| s350 | 56 | bary_hi | DZP | lo | 1811/12500 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s262,s185 |
| s418 | 57 | bary_hi | DFZ | hi | 256279/500000 | s250,s118,lo_DYZ,s185,s250 |
| s430 | 60 | bary_lo | FYP | lo | 18857/125000 | s418,lo_FZP,s350,lo_DFP,lo_DFY,s118 |
| s432 | 61 | bary_lo | OCZ | lo | 146579/1000000 | s348,lo_YZP,s350,lo_DYZ,lo_OCD,lo_OCY,s160 |
| s441 | 62 | bary_hi | DFZ | hi | 494167/1000000 | s348,lo_YZP,s350,lo_DYZ,s250,s26 |
| s454 | 1 | sum | OHP | lo | 7209/20000 | s339,lo_OHY,lo_OYP |
| s457 | 2 | sum | OCP | lo | 332579/1000000 | lo_CZP,s432,lo_OZP |
| s465 | 6 | sub | DYP | hi | 62391/125000 | s250,lo_DFP,s430 |
| s466 | 7 | sum | DFZ | lo | 1034/3125 | lo_DFP,s350,lo_FZP |
| s468 | 8 | sumlo | OCY | lo | 12297/125000 | s457,lo_OHY,lo_OHC,lo_OYP,s333 |
| s487 | 13 | diff | CDF | lo | 209983/500000 | lo_DFY,lo_HCD,s221,hi_HDF,s245 |
| s488 | 14 | sumlo | CDP | lo | 169279/500000 | s487,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s497 | 16 | sumlo | OFP | lo | 79709/500000 | lo_DFP,s137,lo_FZP,lo_ODF,s441 |
| s500 | 19 | sumlo | HYP | lo | 182967/1000000 | s349,lo_OHY,s173,lo_OYP,s210 |
| s506 | 21 | sumlo | HZP | lo | 62811/500000 | lo_FZP,s454,lo_HFP,lo_OZP,s336 |
| s509 | 22 | sumlo | DZP | lo | 21179/125000 | lo_DFP,s506,lo_FZP,lo_HDP,s28 |
| s511 | 24 | balance_lo | ODY | lo | 110541/500000 | lo_HCD,lo_OYP,s488,lo_OHY,lo_HDP,s468,s338 |
| s514 | 25 | balance_lo | FYZ | lo | 162817/1000000 | lo_DFY,lo_OZP,lo_DYZ,s497,s466,lo_OYP,s335 |
| s522 | 26 | balance_lo | OCZ | lo | 154839/1000000 | lo_CZP,s511,lo_OZP,s248,s457,lo_DYZ,s465 |
| s529 | 28 | linear | OHC | lo | 35547/125000 | lo_HCY,s468,lo_OHY |
| s533 | 31 | linear | OHF | hi | 538739/1000000 | s28,s497,s333 |
| s536 | 32 | linear | OHP | lo | 368967/1000000 | s500,lo_OHY,lo_OYP |
| s537 | 33 | linear | OCP | lo | 340839/1000000 | lo_CZP,s522,lo_OZP |
| s552 | 35 | linear | CDF | lo | 5367/12500 | s248,hi_CFY,lo_DFY |
| s559 | 36 | linear | DFZ | lo | 44429/125000 | lo_DFP,s509,lo_FZP |
| s565 | 41 | linear | HCF | hi | 7133/12500 | s552 |
| s574 | 43 | bary_hi | HYP | lo | 93061/500000 | hi_OHD,s173,s511,lo_OHY,s536,lo_HDP |
| s590 | 45 | bary_lo | OCY | lo | 100569/1000000 | s333,s574,lo_OYP,lo_OHY,s529,s537 |
| s592 | 46 | bary_lo | HDY | hi | 663329/1000000 | s333,s574,lo_OYP,lo_OHY,hi_OHD,lo_HDP |
| s599 | 48 | bary_hi | DFY | hi | 140607/200000 | s333,s574,lo_OYP,lo_OHY,hi_ODF,hi_HDF,s26 |
| s637 | 50 | bary_lo | OHP | hi | 138973/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,s533 |
| s641 | 53 | bary_hi | HCP | hi | 18247/40000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s199,s565 |
| s698 | 57 | bary_hi | DFZ | hi | 223609/500000 | s599,s514,lo_DYZ,s559,s599 |
| s699 | 58 | bary_lo | DYZ | hi | 92393/500000 | s599,s514,lo_DYZ,s559,s599 |
| s716 | 59 | bary_lo | DYP | hi | 449067/1000000 | s698,lo_FZP,s509,lo_DFP,s599,s699 |
| s720 | 61 | bary_lo | OCZ | lo | 169599/1000000 | s716,lo_YZP,s509,lo_DYZ,lo_OCD,s590,s537 |
| s738 | 0 | sum | OHC | lo | 286569/1000000 | lo_HCY,s590,lo_OHY |
| s741 | 1 | sum | OHP | lo | 186061/500000 | s574,lo_OHY,lo_OYP |
| s742 | 2 | sum | OCP | lo | 355599/1000000 | lo_CZP,s720,lo_OZP |
| s757 | 8 | sumlo | OCY | lo | 107433/1000000 | s742,lo_OHY,s738,lo_OYP,s637 |
| s762 | 10 | sumlo | HYP | lo | 187639/1000000 | lo_HDP,lo_OHY,s173,s741,hi_OHD |
| s782 | 13 | diff | CDF | lo | 456603/1000000 | lo_DFY,lo_HCD,s221,hi_HDF,s592 |
| s783 | 14 | sumlo | CDP | lo | 349693/1000000 | s782,lo_HDP,lo_DFP,lo_HCD,hi_HDF |
| s810 | 24 | balance_lo | ODY | lo | 234679/1000000 | lo_HCD,lo_OYP,s783,lo_OHY,lo_HDP,s757,s641 |
| s837 | 32 | linear | OHP | lo | 373639/1000000 | s762,lo_OHY,lo_OYP |
| s873 | 43 | bary_hi | HYP | lo | 188369/1000000 | hi_OHD,s173,s810,lo_OHY,s837,lo_HDP |
| s898 | 48 | bary_hi | DFY | hi | 346863/500000 | s637,s873,lo_OYP,lo_OHY,hi_ODF,hi_HDF,s26 |

## Conclusion

{"triangle":"DFY","lower":"lo_DFY","upper":"s898"}
