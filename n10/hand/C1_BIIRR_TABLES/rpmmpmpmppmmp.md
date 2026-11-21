# Leaf rpmmpmpmppmmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"DYP":-1,"QYZ":1,"OFY":1,"OZR":-1,"HPQ":-1,"HPR":1}

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
| 10 | extreme | ["OHP","Q","POQ",1] |
| 11 | extreme | ["OCY","F","CYF",-1] |
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
| 29 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 30 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 31 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 32 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 33 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 34 | plu | ["OHDYZ","OYZ",-1] |
| 35 | plu | ["OHDPR","OPR",-1] |
| 36 | plu | ["HOZPR","HZR",1] |
| 37 | plu | ["HOPQR","HQR",1] |
| 38 | plu | ["DOHYZ","DYZ",1] |
| 39 | plu | ["DOHZP","DZP",-1] |
| 40 | plu | ["FOHYZ","FYZ",1] |
| 41 | plu | ["FOHYP","FYP",1] |
| 42 | plu | ["YODZP","YZP",1] |
| 43 | plu | ["YODPR","YPR",-1] |
| 44 | plu | ["YOZQR","YZR",1] |
| 45 | plu | ["ZOHFQ","ZFQ",-1] |
| 46 | plu | ["ZOHFR","ZFR",-1] |
| 47 | plu | ["ZOHPQ","ZPQ",-1] |
| 48 | plu | ["ZOHPR","ZPR",-1] |
| 49 | plu | ["POHFR","PFR",-1] |
| 50 | plu | ["POHQR","PQR",1] |
| 51 | plu | ["QOHZR","QZR",-1] |
| 52 | mesh | ["OHRPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YP"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OHR | OHR | lo | 823/1000 | ["cost","YZP"] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","ZR"] |
| lo_ODR | ODR | lo | 279/1000 | ["cost","Z"] |
| lo_OFY | OFY | lo | 93/1000 | ["cost",""] |
| lo_OYP | OYP | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 279/1000 | ["cost","Z"] |
| lo_OYR | OYR | lo | 279/1000 | ["cost","Z"] |
| lo_OZR | OZR | lo | 93/1000 | ["cost",""] |
| lo_OPR | OPR | lo | 279/1000 | ["cost","Z"] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HCZ | HCZ | lo | 93/1000 | ["cost",""] |
| lo_HCP | HCP | lo | 279/1000 | ["cost","Z"] |
| lo_HCR | HCR | lo | 347/500 | ["cost","ZP"] |
| lo_HDQ | HDQ | lo | 347/500 | ["cost","PR"] |
| lo_HYZ | HYZ | lo | 93/1000 | ["cost",""] |
| lo_HYR | HYR | lo | 279/1000 | ["cost","P"] |
| lo_HZR | HZR | lo | 279/1000 | ["cost","P"] |
| lo_HPQ | HPQ | lo | 93/1000 | ["cost",""] |
| lo_HPR | HPR | lo | 93/1000 | ["cost",""] |
| lo_HQR | HQR | lo | 279/1000 | ["cost","P"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_CYQ | CYQ | lo | 279/1000 | ["cost","Z"] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DYP | DYP | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| lo_YZQ | YZQ | lo | 93/1000 | ["cost",""] |
| lo_YQR | YQR | lo | 93/1000 | ["cost",""] |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OHR | OHR | hi | 9197/10000 | "C063" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OFQ | OFQ | hi | 626351/635000 | "C019" |
| hi_HCR | HCR | hi | 29356581307/36050000000 | "C071" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CYR | CYR | hi | 1302044845163/2289175000000 | "C051" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHR","HYR","OHY","OYR"] | ["fan","OHR","Y"] |
| 1 | ["fan","OHR","HZR","OHZ","OZR"] | ["fan","OHR","Z"] |
| 2 | ["fan","OHR","HPR","OHP","OPR"] | ["fan","OHR","P"] |
| 3 | ["fan","ODQ","DQR","ODR","OQR"] | ["fan","ODQ","R"] |
| 4 | ["fan","HDQ","DQR","HDR","HQR"] | ["fan","HDQ","R"] |
| 5 | ["plu","ODY","OFQ","ODF","OYQ","ODQ","OFY"] | ["plu","ODFYQ"] |
| 6 | ["plu","HCR","OHP","HCP","OHR","HPR","OHC"] | ["plu","HOCPR"] |
| 7 | ["plu","CYR","HYQ","CYQ","HYR","HCY","YQR"] | ["plu","YHCQR"] |
| 8 | ["plu","HDR","OQR","DQR","OHR","HQR","ODR"] | ["plu","ROHDQ"] |
| 9 | ["plu","CQR","ODR","CDR","OQR","DQR","OCR"] | ["plu","ROCDQ"] |
| 10 | ["plu","CQR","HDR","CDR","HQR","DQR","HCR"] | ["plu","RHCDQ"] |
| 11 | ["balance",[[-1,"HCD","OZR"],[1,"CDR","OHZ"],[1,"HDR","OCZ"],[-1,"HCR","ODZ"]]] | ["six","OZHCDR"] |
| 12 | ["balance",[[1,"HDQ","OZR"],[1,"DQR","OHZ"],[1,"HQR","ODZ"],[-1,"HDR","OZQ"]]] | ["six","OZHDQR"] |
| 13 | ["balance",[[-1,"HYZ","OQR"],[-1,"YZQ","OHR"],[1,"HZQ","OYR"],[-1,"HYQ","OZR"]]] | ["six","ORHYZQ"] |
| 14 | ["balance",[[-1,"ODQ","HPR"],[-1,"DQR","OHP"],[1,"OQR","HDP"],[-1,"ODR","HPQ"]]] | ["six","HPODQR"] |
| 15 | ["balance",[[-1,"ODZ","HQR"],[1,"DZR","OHQ"],[-1,"OZR","HDQ"],[-1,"ODR","HZQ"]]] | ["six","HQODZR"] |
| 16 | ["balance",[[-1,"ODY","HPR"],[-1,"DYP","OHR"],[-1,"OYP","HDR"],[1,"ODP","HYR"]]] | ["six","HRODYP"] |
| 17 | ["balance",[[1,"OHD","CZP"],[1,"HDP","OCZ"],[1,"ODP","HCZ"],[-1,"OHP","CDZ"]]] | ["six","CZOHDP"] |
| 18 | ["balance",[[1,"OCQ","DZR"],[1,"CQR","ODZ"],[1,"OQR","CDZ"],[-1,"OCR","DZQ"]]] | ["six","DZOCQR"] |
| 19 | ["linear",{"ODZ":-1,"OZQ":-1,"ODQ":1,"DZQ":-1},"0"] | ["affine_quad","ODZQ",1] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s13 | 0 | sub | HYR | hi | 5477/10000 | hi_OHR,lo_OHY,lo_OYR |
| s15 | 0 | sub | OYR | hi | 5477/10000 | hi_OHR,lo_HYR,lo_OHY |
| s17 | 1 | sub | OHZ | hi | 5477/10000 | hi_OHR,lo_HZR,lo_OZR |
| s20 | 2 | sub | OHP | hi | 5477/10000 | hi_OHR,lo_HPR,lo_OPR |
| s33 | 3 | sub | OQR | hi | 6071/15625 | hi_ODQ,lo_DQR,lo_ODR |
| s61 | 4 | sub | HDR | hi | 402959/1000000 | hi_HDQ,lo_DQR,lo_HQR |
| s104 | 5 | sumlo | ODY | lo | 92689/500000 | lo_ODF,lo_OYQ,lo_ODQ,lo_OFY,hi_OFQ |
| s112 | 6 | sumlo | OHP | lo | 313833/1000000 | lo_HCP,lo_OHR,lo_HPR,lo_OHC,hi_HCR |
| s195 | 7 | sumlo | HYQ | lo | 152061/1000000 | lo_CYQ,lo_HYR,lo_HCY,lo_YQR,hi_CYR |
| s242 | 8 | sumlo | HDR | lo | 397329/1000000 | lo_DQR,lo_OHR,lo_HQR,lo_ODR,s33 |
| s243 | 8 | sumlo | OQR | lo | 76623/200000 | lo_DQR,lo_OHR,lo_HQR,lo_ODR,s61 |
| s247 | 8 | diffhi | ODR | hi | 7171/25000 | s61,s33,lo_DQR,lo_OHR,lo_HQR |
| s257 | 9 | diffhi | OCR | hi | 84653/250000 | hi_CQR,s247,lo_CDR,s243,lo_DQR |
| s262 | 10 | sumlo | CQR | lo | 224561/1000000 | lo_CDR,lo_HQR,lo_DQR,lo_HCR,s61 |
| s263 | 10 | diffhi | CDR | hi | 106633/1000000 | hi_CQR,s61,lo_DQR,lo_HCR,lo_HQR |
| s304 | 11 | balance_lo | OCZ | lo | 35081/200000 | lo_HCD,lo_OZR,lo_HCR,lo_ODZ,s263,s17,s61 |
| s309 | 12 | balance_lo | OZQ | lo | 36119/125000 | lo_HDQ,lo_OZR,lo_DQR,lo_OHZ,lo_HQR,lo_ODZ,s61 |
| s331 | 13 | balance_lo | HZQ | lo | 230619/1000000 | lo_HYZ,s243,lo_YZQ,lo_OHR,s195,lo_OZR,s15 |
| s359 | 14 | balance_lo | HDP | lo | 30801/100000 | lo_ODQ,lo_HPR,lo_DQR,s112,lo_ODR,lo_HPQ,s33 |
| s364 | 15 | balance_lo | DZR | lo | 154831/1000000 | lo_ODZ,lo_HQR,lo_OZR,lo_HDQ,lo_ODR,s331,hi_OHQ |
| s373 | 16 | balance_lo | ODP | lo | 23869/100000 | s104,lo_HPR,lo_DYP,lo_OHR,lo_OYP,s242,s13 |
| s404 | 17 | balance_lo | CDZ | lo | 128507/500000 | lo_OHD,lo_CZP,s359,s304,s373,lo_HCZ,s20 |
| s429 | 18 | balance_lo | DZQ | lo | 394993/1000000 | lo_OCQ,s364,s262,lo_ODZ,s243,s404,s257 |
| s557 | 19 | linear | ODZ | hi | 76599/1000000 | s429,hi_ODQ,s309 |

## Conclusion

{"triangle":"ODZ","lower":"lo_ODZ","upper":"s557"}
