# Leaf rppmmpmpppp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"QYZ":1,"OFY":1,"HPQ":1}

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
| 10 | extreme | ["HFP","Q","FPQ",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DYQ","O","YQO",-1] |
| 16 | extreme | ["DYR","O","YRO",-1] |
| 17 | extreme | ["DZQ","O","ZQO",-1] |
| 18 | interior_line | ["OZ","R","CDQ","R",-1] |
| 19 | interior_line | ["HY","Z","HCDF","Z",1] |
| 20 | interior_line | ["HY","P","HCDF","P",1] |
| 21 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 22 | interior_line | ["CY","P","HCDF","P",-1] |
| 23 | interior_line | ["CZ","R","CDQ","R",-1] |
| 24 | interior_line | ["CP","R","CDQ","R",-1] |
| 25 | interior_line | ["DZ","R","CDQ","R",1] |
| 26 | interior_line | ["DP","R","CDQ","R",1] |
| 27 | interior_line | ["ZQ","Y","OHC","H",1] |
| 28 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 29 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 30 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 31 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 32 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 33 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 34 | plu | ["OHDZP","ODP",1] |
| 35 | plu | ["OHDPR","OPR",-1] |
| 36 | plu | ["OHFYZ","OYZ",-1] |
| 37 | plu | ["FOHYZ","FYZ",1] |
| 38 | plu | ["FOHYP","FYP",1] |
| 39 | plu | ["FOZPQ","FZQ",1] |
| 40 | plu | ["YODZQ","YDZ",-1] |
| 41 | plu | ["YOZPQ","YZP",1] |
| 42 | plu | ["YOZQR","YZR",1] |
| 43 | plu | ["ZOHDP","ZDP",1] |
| 44 | plu | ["ZOHYR","ZHR",-1] |
| 45 | plu | ["ZOHPQ","ZPQ",-1] |
| 46 | plu | ["ZOHPR","ZPR",-1] |
| 47 | plu | ["ZOFYR","ZFR",-1] |
| 48 | plu | ["QOYZR","QZR",-1] |
| 49 | capacity | ["OHQ","YZP","R","HQR",1,"1",["unit"]] |
| 50 | capacity | ["ODY","Z","P","DYP",-1,"40801583/63500000","C040"] |
| 51 | capacity | ["OYR","Z","P","YRP",1,"2010130013/3175000000","C059"] |
| 52 | plu | ["HOPQR","HPR",1] |
| 53 | plu | ["POHFR","PFR",-1] |
| 54 | plu | ["QOHPR","QPR",-1] |
| 55 | mesh | ["OHDPYZ",1] |
| 56 | mesh | ["OHQPYZ",1] |
| 57 | mesh | ["OHRPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHF | OHF | lo | 279/1000 | ["cost","Y"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 823/1000 | ["cost","YZP"] |
| lo_OHR | OHR | lo | 823/1000 | ["cost","YZP"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_OCF | OCF | lo | 279/1000 | "C042" |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_ODF | ODF | lo | 347/500 | ["cost","ZP"] |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OPR | OPR | lo | 279/1000 | ["cost","Z"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HCQ | HCQ | lo | 347/500 | ["cost","ZP"] |
| lo_HCR | HCR | lo | 347/500 | ["cost","ZP"] |
| lo_HDF | HDF | lo | 93/1000 | ["cost",""] |
| lo_HYR | HYR | lo | 279/1000 | ["cost","P"] |
| lo_HPQ | HPQ | lo | 93/1000 | ["cost",""] |
| lo_HPR | HPR | lo | 93/1000 | ["cost",""] |
| lo_HQR | HQR | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DYQ | DYQ | lo | 279/1000 | ["cost","R"] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DPQ | DPQ | lo | 279/1000 | ["cost","R"] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OHR | OHR | hi | 9197/10000 | "C063" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_HCR | HCR | hi | 29356581307/36050000000 | "C071" |
| hi_CDY | CDY | hi | 47604719/63500000 | "C038" |
| hi_CYQ | CYQ | hi | 27769359917/45783500000 | "C032" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHQ","HPQ","OHP","OPQ"] | ["fan","OHQ","P"] |
| 1 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 2 | ["fan","OHR","HZR","OHZ","OZR"] | ["fan","OHR","Z"] |
| 3 | ["fan","OHR","HPR","OHP","OPR"] | ["fan","OHR","P"] |
| 4 | ["fan","HCQ","CPQ","HCP","HPQ"] | ["fan","HCQ","P"] |
| 5 | ["fan","CYQ","CYZ","CZQ","YZQ"] | ["fan","CYQ","Z"] |
| 6 | ["plu","HCR","OHP","HCP","OHR","HPR","OHC"] | ["plu","HOCPR"] |
| 7 | ["plu","HYR","OHP","HPR","OHY","HYP","OHR"] | ["plu","HOYPR"] |
| 8 | ["plu","HZR","OHP","HPR","OHZ","HZP","OHR"] | ["plu","HOZPR"] |
| 9 | ["plu","HPR","OHQ","HPQ","OHR","HQR","OHP"] | ["plu","HOPQR"] |
| 10 | ["plu","CPQ","HCD","CDP","HCQ","CDQ","HCP"] | ["plu","CHDPQ"] |
| 11 | ["plu","HYP","OCY","CYP","OHY","HCY","OYP"] | ["plu","YOHCP"] |
| 12 | ["plu","HZP","OCZ","CZP","OHZ","HCZ","OZP"] | ["plu","ZOHCP"] |
| 13 | ["plu","CQR","HDQ","CDQ","HQR","DQR","HCQ"] | ["plu","QHCDR"] |
| 14 | ["plu","CQR","HDR","CDR","HQR","DQR","HCR"] | ["plu","RHCDQ"] |
| 15 | ["balance",[[-1,"CDY","OFQ"],[1,"DYQ","OCF"],[1,"CYQ","ODF"],[1,"CDQ","OFY"]]] | ["six","OFCDYQ"] |
| 16 | ["balance",[[-1,"HCD","OZQ"],[1,"CDQ","OHZ"],[1,"HDQ","OCZ"],[1,"HCQ","ODZ"]]] | ["six","OZHCDQ"] |
| 17 | ["balance",[[-1,"HCD","OPQ"],[1,"CDQ","OHP"],[1,"HDQ","OCP"],[1,"HCQ","ODP"]]] | ["six","OPHCDQ"] |
| 18 | ["balance",[[-1,"DYP","HCQ"],[1,"YPQ","HCD"],[-1,"DPQ","HCY"],[-1,"DYQ","HCP"]]] | ["six","HCDYPQ"] |
| 19 | ["balance",[[-1,"CDY","HPQ"],[-1,"DYP","HCQ"],[-1,"CYP","HDQ"],[1,"CDP","HYQ"]]] | ["six","HQCDYP"] |
| 20 | ["balance",[[-1,"OCD","HYR"],[1,"CDY","OHR"],[-1,"ODY","HCR"],[-1,"OCY","HDR"]]] | ["six","HROCDY"] |
| 21 | ["balance",[[-1,"CDY","HPR"],[-1,"DYP","HCR"],[-1,"CYP","HDR"],[1,"CDP","HYR"]]] | ["six","HRCDYP"] |
| 22 | ["balance",[[1,"OHP","CZQ"],[-1,"HPQ","OCZ"],[-1,"OPQ","HCZ"],[-1,"OHQ","CZP"]]] | ["six","CZOHPQ"] |
| 23 | ["balance",[[-1,"HYP","CZQ"],[1,"YPQ","HCZ"],[1,"HPQ","CYZ"],[1,"HYQ","CZP"]]] | ["six","CZHYPQ"] |
| 24 | ["balance",[[-1,"HCD","YPQ"],[1,"CDQ","HYP"],[1,"HDQ","CYP"],[1,"HCQ","DYP"]]] | ["six","YPHCDQ"] |
| 25 | ["balance",[[1,"CDY","ZPQ"],[-1,"DYP","CZQ"],[-1,"CYP","DZQ"],[-1,"CDP","YZQ"]]] | ["six","ZQCDYP"] |
| 26 | ["balance",[[-1,"OHD","FPQ"],[1,"HDF","OPQ"],[1,"ODF","HPQ"],[1,"OHF","DPQ"]]] | ["six","PQOHDF"] |
| 27 | ["balance",[[1,"OHF","YPQ"],[-1,"HFY","OPQ"],[1,"OFY","HPQ"],[1,"OHY","FPQ"]]] | ["six","PQOHFY"] |
| 28 | ["linear",{"OHC":-1,"OCQ":1,"OHQ":1,"HCQ":-1},"0"] | ["affine_quad","OHCQ",1] |
| 29 | ["linear",{"OHF":1,"OFY":-1,"OHY":-1,"HFY":-1},"0"] | ["affine_quad","OHFY",-1] |
| 30 | ["linear",{"OHY":-1,"OYP":-1,"OHP":1,"HYP":-1},"0"] | ["affine_quad","OHYP",1] |
| 31 | ["linear",{"OZP":-1,"OPQ":1,"OZQ":-1,"ZPQ":-1},"0"] | ["affine_quad","OZPQ",-1] |
| 32 | ["linear",{"OHC":1,"OHF":-1},"0"] | ["c1_norm","c_ge_f"] |
| 33 | ["bary",["OCP",1],[null,["OHC",1],["OCQ",1]],"OHQ",["HPQ","OPQ","OHP"]] | ["bary","OHQ","P","OC"] |
| 34 | ["bary",["HCP",1],[["OHC",-1],null,["HCQ",1]],"OHQ",["HPQ","OPQ","OHP"]] | ["bary","OHQ","P","HC"] |
| 35 | ["bary",["HCZ",1],[["OHC",-1],null,["HCP",1]],"OCP",["CZP","OZP","OCZ"]] | ["bary","OCP","Z","HC"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s20 | 0 | sub | OPQ | hi | 157/250 | hi_OHQ,lo_HPQ,lo_OHP |
| s21 | 1 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s24 | 2 | sub | HZR | hi | 5477/10000 | hi_OHR,lo_OHZ,lo_OZR |
| s28 | 3 | sub | OHP | hi | 5477/10000 | hi_OHR,lo_HPR,lo_OPR |
| s57 | 4 | sub | CPQ | hi | 494091/1000000 | hi_HCQ,lo_HCP,lo_HPQ |
| s75 | 5 | sub | CZQ | hi | 420537/1000000 | hi_CYQ,lo_CYZ,lo_YZQ |
| s113 | 6 | sumlo | OHP | lo | 313833/1000000 | lo_HCP,lo_OHR,lo_HPR,lo_OHC,hi_HCR |
| s126 | 7 | diffhi | HYP | hi | 353981/1000000 | s21,s28,lo_HPR,lo_OHY,lo_OHR |
| s127 | 8 | diffhi | HZP | hi | 332963/1000000 | s24,s28,lo_HPR,lo_OHZ,lo_OHR |
| s128 | 9 | sumlo | HPR | lo | 4229/40000 | lo_HPQ,lo_OHR,lo_HQR,s113,hi_OHQ |
| s146 | 10 | diffhi | CDP | hi | 581311/1000000 | s57,hi_HCD,lo_CDQ,lo_HCP,lo_HCQ |
| s172 | 11 | sumlo | OCY | lo | 48867/500000 | lo_CYP,lo_OHY,lo_HCY,lo_OYP,s126 |
| s174 | 12 | sumlo | OCZ | lo | 103903/1000000 | lo_CZP,lo_OHZ,lo_HCZ,lo_OZP,s127 |
| s194 | 13 | sumlo | HDQ | lo | 77341/200000 | lo_CDQ,lo_HQR,lo_DQR,lo_HCQ,hi_CQR |
| s213 | 14 | sumlo | HDR | lo | 156391/500000 | lo_CDR,lo_HQR,lo_DQR,lo_HCR,hi_CQR |
| s242 | 15 | balance_lo | CDY | lo | 3769/12500 | lo_DYQ,lo_OCF,lo_CYQ,lo_ODF,lo_CDQ,lo_OFY,hi_OFQ |
| s247 | 16 | balance_lo | OZQ | lo | 7497/40000 | lo_CDQ,lo_OHZ,s194,s174,lo_HCQ,lo_ODZ,hi_HCD |
| s251 | 17 | balance_lo | OPQ | lo | 4993/12500 | lo_CDQ,s113,s194,lo_OCP,lo_HCQ,lo_ODP,hi_HCD |
| s264 | 18 | balance_lo | YPQ | lo | 86407/500000 | lo_DYP,lo_HCQ,lo_DPQ,lo_HCY,lo_DYQ,lo_HCP,hi_HCD |
| s278 | 19 | balance_lo | HYQ | lo | 68973/200000 | s242,lo_HPQ,lo_DYP,lo_HCQ,lo_CYP,s194,s146 |
| s280 | 20 | balance_lo | CDY | lo | 75627/250000 | lo_OCD,lo_HYR,lo_ODY,lo_HCR,s172,s213,hi_OHR |
| s292 | 21 | balance_lo | CDP | lo | 20973/62500 | s280,s128,lo_DYP,lo_HCR,lo_CYP,s213,s21 |
| s298 | 22 | balance_lo | CZQ | lo | 112607/500000 | lo_HPQ,s174,s251,lo_HCZ,lo_OHQ,lo_CZP,s28 |
| s303 | 23 | balance_lo | HYP | lo | 135049/1000000 | s264,lo_HCZ,lo_HPQ,lo_CYZ,s278,lo_CZP,s75 |
| s336 | 24 | balance_lo | YPQ | lo | 53927/250000 | lo_CDQ,s303,s194,lo_CYP,lo_HCQ,lo_DYP,hi_HCD |
| s356 | 25 | balance_lo | ZPQ | lo | 86699/500000 | lo_DYP,s298,lo_CYP,lo_DZQ,s292,lo_YZQ,hi_CDY |
| s360 | 26 | balance_lo | FPQ | lo | 17953/100000 | lo_HDF,s251,lo_ODF,lo_HPQ,lo_OHF,lo_DPQ,hi_OHD |
| s363 | 27 | balance_lo | HFY | lo | 13619/100000 | lo_OHF,s336,lo_OFY,lo_HPQ,lo_OHY,s360,s20 |
| s375 | 28 | linear | OHC | hi | 123/250 | lo_HCQ,hi_OCQ,hi_OHQ |
| s384 | 29 | linear | OHF | lo | 32219/100000 | s363,lo_OFY,lo_OHY |
| s390 | 30 | linear | OHP | lo | 321049/1000000 | s303,lo_OHY,lo_OYP |
| s440 | 31 | linear | OPQ | lo | 453823/1000000 | lo_OZP,s247,s356 |
| s515 | 32 | linear | OHC | lo | 32219/100000 | s384 |
| s680 | 33 | bary_hi | OCP | hi | 87001/250000 | hi_OHQ,lo_HPQ,s440,s390,s375,hi_OCQ |
| s685 | 34 | bary_hi | HCP | hi | 362529/1000000 | hi_OHQ,lo_HPQ,s440,s390,s515,hi_HCQ |
| s722 | 35 | bary_hi | HCZ | hi | 16533/200000 | s680,lo_CZP,lo_OZP,s174,s515,s685 |

## Conclusion

{"triangle":"HCZ","lower":"lo_HCZ","upper":"s722"}
