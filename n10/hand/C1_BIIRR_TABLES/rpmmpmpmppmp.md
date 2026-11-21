# Leaf rpmmpmpmppmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":1,"OZR":-1,"HPQ":1}

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
| 11 | extreme | ["HFP","Q","FPQ",1] |
| 12 | extreme | ["CYQ","H","YQH",1] |
| 13 | extreme | ["CYR","D","YRD",1] |
| 14 | extreme | ["CYR","F","YRF",1] |
| 15 | extreme | ["CYR","H","YRH",1] |
| 16 | extreme | ["DFZ","O","FZO",-1] |
| 17 | extreme | ["DYQ","O","YQO",-1] |
| 18 | extreme | ["DYR","O","YRO",-1] |
| 19 | interior_line | ["OZ","R","ODQ","Q",-1] |
| 20 | interior_line | ["HY","Z","HCDF","Z",1] |
| 21 | interior_line | ["HY","P","HCDF","P",1] |
| 22 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 23 | interior_line | ["CY","P","HCDF","P",-1] |
| 24 | interior_line | ["CZ","R","CDQ","R",-1] |
| 25 | interior_line | ["CP","R","CDQ","R",-1] |
| 26 | interior_line | ["DZ","R","CDQ","R",1] |
| 27 | interior_line | ["DP","R","CDQ","R",1] |
| 28 | interior_line | ["ZQ","Y","OHC","H",1] |
| 29 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 30 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 31 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 32 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 33 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 34 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 35 | plu | ["OHDYZ","OYZ",-1] |
| 36 | plu | ["OHDPR","OPR",-1] |
| 37 | plu | ["DOHYZ","DYZ",1] |
| 38 | plu | ["DOHZP","DZP",-1] |
| 39 | plu | ["FOHYZ","FYZ",1] |
| 40 | plu | ["FOHYP","FYP",1] |
| 41 | plu | ["FOZPQ","FZQ",1] |
| 42 | plu | ["YODZP","YZP",1] |
| 43 | plu | ["YODPR","YPR",-1] |
| 44 | plu | ["YOZQR","YZR",1] |
| 45 | plu | ["ZOHYR","ZHR",-1] |
| 46 | plu | ["ZOHPQ","ZPQ",-1] |
| 47 | plu | ["ZOHPR","ZPR",-1] |
| 48 | plu | ["ZOFYR","ZFR",-1] |
| 49 | plu | ["QOYZR","QZR",-1] |
| 50 | capacity | ["OHQ","YZP","R","HQR",1,"1",["unit"]] |
| 51 | plu | ["HOPQR","HPR",1] |
| 52 | plu | ["POHFR","PFR",-1] |
| 53 | plu | ["QOHPR","QPR",-1] |
| 54 | mesh | ["OHQPYZ",1] |
| 55 | mesh | ["OHRPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHP | OHP | lo | 279/1000 | ["cost","Y"] |
| lo_OHQ | OHQ | lo | 823/1000 | ["cost","YZP"] |
| lo_OHR | OHR | lo | 823/1000 | ["cost","YZP"] |
| lo_OCP | OCP | lo | 279/1000 | ["cost","Z"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODP | ODP | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZP | OZP | lo | 93/1000 | ["cost",""] |
| lo_OZQ | OZQ | lo | 93/1000 | ["cost",""] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OPR | OPR | lo | 279/1000 | ["cost","Z"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HCQ | HCQ | lo | 347/500 | ["cost","ZP"] |
| lo_HCR | HCR | lo | 347/500 | ["cost","ZP"] |
| lo_HYP | HYP | lo | 93/1000 | ["cost",""] |
| lo_HPQ | HPQ | lo | 93/1000 | ["cost",""] |
| lo_HPR | HPR | lo | 93/1000 | ["cost",""] |
| lo_HQR | HQR | lo | 93/1000 | ["cost",""] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CYP | CYP | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DZQ | DZQ | lo | 279/1000 | ["cost","R"] |
| lo_DPQ | DPQ | lo | 279/1000 | ["cost","R"] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OHR | OHR | hi | 9197/10000 | "C063" |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_OCQ | OCQ | hi | 93/500 | ["side_pair_cap","OCQ"] |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HCQ | HCQ | hi | 624451213/721000000 | "C055" |
| hi_HCR | HCR | hi | 29356581307/36050000000 | "C071" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |
| hi_DYQ | DYQ | hi | 87606223/127000000 | "C031" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHQ","HYQ","OHY","OYQ"] | ["fan","OHQ","Y"] |
| 1 | ["fan","OHQ","HPQ","OHP","OPQ"] | ["fan","OHQ","P"] |
| 2 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 3 | ["fan","OHR","HZR","OHZ","OZR"] | ["fan","OHR","Z"] |
| 4 | ["fan","OHR","HPR","OHP","OPR"] | ["fan","OHR","P"] |
| 5 | ["fan","ODQ","DZQ","ODZ","OZQ"] | ["fan","ODQ","Z"] |
| 6 | ["fan","HCQ","CPQ","HCP","HPQ"] | ["fan","HCQ","P"] |
| 7 | ["fan","HYQ","HPQ","HYP","YPQ"] | ["fan","HYQ","P"] |
| 8 | ["plu","OCD","OPQ","OCP","ODQ","OCQ","ODP"] | ["plu","OCDPQ"] |
| 9 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 10 | ["plu","HCR","OHP","HCP","OHR","HPR","OHC"] | ["plu","HOCPR"] |
| 11 | ["plu","HZR","OHP","HPR","OHZ","HZP","OHR"] | ["plu","HOZPR"] |
| 12 | ["plu","HPR","OHQ","HPQ","OHR","HQR","OHP"] | ["plu","HOPQR"] |
| 13 | ["plu","HCQ","OCP","CPQ","OHC","HCP","OCQ"] | ["plu","COHPQ"] |
| 14 | ["plu","CPQ","HCD","CDP","HCQ","CDQ","HCP"] | ["plu","CHDPQ"] |
| 15 | ["plu","CZQ","HCP","CPQ","HCZ","CZP","HCQ"] | ["plu","CHZPQ"] |
| 16 | ["plu","DYQ","ODP","DPQ","ODY","DYP","ODQ"] | ["plu","DOYPQ"] |
| 17 | ["plu","HZP","OCZ","CZP","OHZ","HCZ","OZP"] | ["plu","ZOHCP"] |
| 18 | ["plu","CPQ","OHP","HCP","OPQ","HPQ","OCP"] | ["plu","POHCQ"] |
| 19 | ["plu","CDP","YPQ","CPQ","DYP","CYP","DPQ"] | ["plu","PCDYQ"] |
| 20 | ["plu","HCQ","ODQ","CDQ","OHQ","HDQ","OCQ"] | ["plu","QOHCD"] |
| 21 | ["plu","CZQ","ODQ","CDQ","OZQ","DZQ","OCQ"] | ["plu","QOCDZ"] |
| 22 | ["plu","DYQ","OPQ","DPQ","OYQ","ODQ","YPQ"] | ["plu","QODYP"] |
| 23 | ["plu","CQR","HDQ","CDQ","HQR","DQR","HCQ"] | ["plu","QHCDR"] |
| 24 | ["plu","CQR","HDR","CDR","HQR","DQR","HCR"] | ["plu","RHCDQ"] |
| 25 | ["balance",[[1,"HCZ","ODP"],[1,"CZP","OHD"],[-1,"HZP","OCD"],[1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 26 | ["balance",[[-1,"HCP","ODQ"],[1,"CPQ","OHD"],[-1,"HPQ","OCD"],[-1,"HCQ","ODP"]]] | ["six","ODHCPQ"] |
| 27 | ["balance",[[1,"CZP","ODQ"],[-1,"ZPQ","OCD"],[1,"CPQ","ODZ"],[1,"CZQ","ODP"]]] | ["six","ODCZPQ"] |
| 28 | ["balance",[[1,"CDY","OPQ"],[-1,"DYP","OCQ"],[-1,"CYP","ODQ"],[-1,"CDP","OYQ"]]] | ["six","OQCDYP"] |
| 29 | ["balance",[[1,"ODP","HCQ"],[1,"DPQ","OHC"],[-1,"OPQ","HCD"],[1,"ODQ","HCP"]]] | ["six","HCODPQ"] |
| 30 | ["balance",[[-1,"DYP","HCQ"],[1,"YPQ","HCD"],[-1,"DPQ","HCY"],[-1,"DYQ","HCP"]]] | ["six","HCDYPQ"] |
| 31 | ["balance",[[-1,"CDY","HPQ"],[-1,"DYP","HCQ"],[-1,"CYP","HDQ"],[1,"CDP","HYQ"]]] | ["six","HQCDYP"] |
| 32 | ["balance",[[-1,"ODY","HPR"],[-1,"DYP","OHR"],[-1,"OYP","HDR"],[1,"ODP","HYR"]]] | ["six","HRODYP"] |
| 33 | ["balance",[[1,"OHP","CZQ"],[-1,"HPQ","OCZ"],[-1,"OPQ","HCZ"],[-1,"OHQ","CZP"]]] | ["six","CZOHPQ"] |
| 34 | ["balance",[[-1,"ODP","CZQ"],[-1,"DPQ","OCZ"],[1,"OPQ","CDZ"],[-1,"ODQ","CZP"]]] | ["six","CZODPQ"] |
| 35 | ["balance",[[-1,"HYP","CZQ"],[1,"YPQ","HCZ"],[1,"HPQ","CYZ"],[1,"HYQ","CZP"]]] | ["six","CZHYPQ"] |
| 36 | ["balance",[[-1,"HCD","YPQ"],[1,"CDQ","HYP"],[1,"HDQ","CYP"],[1,"HCQ","DYP"]]] | ["six","YPHCDQ"] |
| 37 | ["balance",[[1,"HCY","ZPQ"],[1,"CYZ","HPQ"],[-1,"HYZ","CPQ"],[1,"HCZ","YPQ"]]] | ["six","PQHCYZ"] |
| 38 | ["linear",{"OHY":-1,"OYZ":-1,"OHZ":1,"HYZ":-1},"0"] | ["affine_quad","OHYZ",1] |
| 39 | ["linear",{"OCD":1,"ODZ":-1,"OCZ":-1,"CDZ":-1},"0"] | ["affine_quad","OCDZ",1] |
| 40 | ["linear",{"OCZ":-1,"OZQ":1,"OCQ":1,"CZQ":-1},"0"] | ["affine_quad","OCZQ",-1] |
| 41 | ["linear",{"HZP":-1,"HPQ":-1,"HZQ":1,"ZPQ":-1},"0"] | ["affine_quad","HZPQ",-1] |
| 42 | ["linear",{"OHC":1,"OCD":-1},"0"] | ["c1_norm","h_ge_d"] |
| 43 | ["bary",["HCZ",1],[["OHC",-1],null,["HCQ",1]],"OHQ",["HZQ","OZQ","OHZ"]] | ["bary","OHQ","Z","HC"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s9 | 0 | sub | HYQ | hi | 157/250 | hi_OHQ,lo_OHY,lo_OYQ |
| s17 | 1 | sub | OPQ | hi | 157/250 | hi_OHQ,lo_HPQ,lo_OHP |
| s18 | 2 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s21 | 3 | sub | HZR | hi | 5477/10000 | hi_OHR,lo_OHZ,lo_OZR |
| s25 | 4 | sub | OHP | hi | 5477/10000 | hi_OHR,lo_HPR,lo_OPR |
| s34 | 5 | sub | DZQ | hi | 35909/62500 | hi_ODQ,lo_ODZ,lo_OZQ |
| s36 | 5 | sub | OZQ | hi | 6071/15625 | hi_ODQ,lo_DZQ,lo_ODZ |
| s61 | 6 | sub | CPQ | hi | 494091/1000000 | hi_HCQ,lo_HCP,lo_HPQ |
| s71 | 7 | sub | YPQ | hi | 221/500 | s9,lo_HPQ,lo_HYP |
| s112 | 8 | sumlo | OCD | lo | 322093/1000000 | lo_OCP,lo_ODQ,lo_OCQ,lo_ODP,s17 |
| s113 | 8 | sumlo | OPQ | lo | 70241/200000 | lo_OCP,lo_ODQ,lo_OCQ,lo_ODP,hi_OCD |
| s115 | 9 | sumlo | ODY | lo | 92689/500000 | lo_ODF,lo_OYQ,lo_ODQ,lo_OFY,hi_OFQ |
| s126 | 10 | sumlo | OHP | lo | 313833/1000000 | lo_HCP,lo_OHR,lo_HPR,lo_OHC,hi_HCR |
| s127 | 10 | diffhi | HCP | hi | 510403/1000000 | hi_HCR,s25,lo_HPR,lo_OHC,lo_OHR |
| s139 | 11 | diffhi | HZP | hi | 332963/1000000 | s21,s25,lo_HPR,lo_OHZ,lo_OHR |
| s140 | 12 | sumlo | HPR | lo | 4229/40000 | lo_HPQ,lo_OHR,lo_HQR,s126,hi_OHQ |
| s148 | 13 | diff | CPQ | lo | 77709/500000 | lo_HCQ,lo_OCP,s127,hi_OCQ,hi_OHC |
| s158 | 14 | diffhi | CDP | hi | 581311/1000000 | s61,hi_HCD,lo_CDQ,lo_HCP,lo_HCQ |
| s162 | 15 | sumlo | CZQ | lo | 154771/1000000 | s148,lo_HCZ,lo_CZP,lo_HCQ,s127 |
| s176 | 16 | sumlo | ODP | lo | 84271/500000 | lo_DPQ,s115,lo_DYP,lo_ODQ,hi_DYQ |
| s190 | 17 | sumlo | OCZ | lo | 103903/1000000 | lo_CZP,lo_OHZ,lo_HCZ,lo_OZP,s139 |
| s196 | 18 | sumlo | CPQ | lo | 226279/1000000 | lo_HCP,s113,lo_HPQ,lo_OCP,s25 |
| s204 | 19 | sumlo | CDP | lo | 223721/1000000 | s196,lo_DYP,lo_CYP,lo_DPQ,s71 |
| s205 | 19 | sumlo | YPQ | lo | 85053/500000 | s196,lo_DYP,lo_CYP,lo_DPQ,s158 |
| s206 | 20 | sumhi | HCQ | hi | 406443/500000 | hi_CDQ,hi_OHQ,hi_HDQ,hi_OCQ,lo_ODQ |
| s207 | 20 | diff | CDQ | lo | 337493/1000000 | lo_HCQ,lo_ODQ,hi_HDQ,hi_OCQ,hi_OHQ |
| s219 | 21 | sumhi | CZQ | hi | 389127/1000000 | hi_CDQ,s36,s34,hi_OCQ,lo_ODQ |
| s220 | 22 | sumlo | DYQ | lo | 155967/500000 | lo_DPQ,lo_OYQ,lo_ODQ,s205,s17 |
| s225 | 23 | sumlo | HDQ | lo | 12811/31250 | s207,lo_HQR,lo_DQR,lo_HCQ,hi_CQR |
| s244 | 24 | sumlo | HDR | lo | 156391/500000 | lo_CDR,lo_HQR,lo_DQR,lo_HCR,hi_CQR |
| s258 | 25 | balance_lo | HZP | lo | 184329/1000000 | lo_HCZ,s176,lo_CZP,lo_OHD,lo_HCP,lo_ODZ,hi_OCD |
| s260 | 26 | balance_lo | CPQ | lo | 85137/250000 | lo_HCP,lo_ODQ,lo_HPQ,s112,lo_HCQ,s176,hi_OHD |
| s267 | 27 | balance_lo | ZPQ | lo | 212343/1000000 | lo_CZP,lo_ODQ,s260,lo_ODZ,s162,s176,hi_OCD |
| s281 | 28 | balance_lo | CDY | lo | 84297/200000 | lo_DYP,lo_OCQ,lo_CYP,lo_ODQ,s204,lo_OYQ,s17 |
| s289 | 29 | balance_lo | OPQ | lo | 199391/500000 | s176,lo_HCQ,lo_DPQ,lo_OHC,lo_ODQ,lo_HCP,hi_HCD |
| s291 | 30 | balance_lo | YPQ | lo | 182247/1000000 | lo_DYP,lo_HCQ,lo_DPQ,lo_HCY,s220,lo_HCP,hi_HCD |
| s323 | 31 | balance_lo | HYQ | lo | 75043/200000 | s281,lo_HPQ,lo_DYP,lo_HCQ,lo_CYP,s225,s158 |
| s332 | 32 | balance_lo | ODP | lo | 228641/1000000 | s115,s140,lo_DYP,lo_OHR,lo_OYP,s244,s18 |
| s352 | 33 | balance_lo | CZQ | lo | 112551/500000 | lo_HPQ,s190,s289,lo_HCZ,lo_OHQ,lo_CZP,s25 |
| s356 | 34 | balance_lo | CDZ | lo | 230889/1000000 | s332,s352,lo_DPQ,s190,lo_ODQ,lo_CZP,s17 |
| s359 | 35 | balance_lo | HYP | lo | 77729/500000 | s291,lo_HCZ,lo_HPQ,lo_CYZ,s323,lo_CZP,s219 |
| s396 | 36 | balance_lo | YPQ | lo | 59387/250000 | s207,s359,s225,lo_CYP,lo_HCQ,lo_DYP,hi_HCD |
| s413 | 37 | balance_lo | HYZ | lo | 20437/200000 | lo_HCY,s267,lo_CYZ,lo_HPQ,lo_HCZ,s396,s61 |
| s430 | 38 | linear | OHZ | lo | 57637/200000 | s413,lo_OHY,lo_OYZ |
| s447 | 39 | linear | OCD | lo | 26737/62500 | s356,s190,lo_ODZ |
| s453 | 40 | linear | OZQ | lo | 28601/200000 | s352,hi_OCQ,s190 |
| s529 | 41 | linear | HZQ | lo | 61209/125000 | lo_HPQ,s258,s267 |
| s585 | 42 | linear | OHC | lo | 26737/62500 | s447 |
| s711 | 43 | bary_hi | HCZ | hi | 44557/500000 | hi_OHQ,s529,s453,s430,s585,s206 |

## Conclusion

{"triangle":"HCZ","lower":"lo_HCZ","upper":"s711"}
