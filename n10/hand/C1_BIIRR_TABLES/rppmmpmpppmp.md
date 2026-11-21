# Leaf rppmmpmpppmp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":-1,"HZP":1,"CZP":-1,"FZP":1,"QYZ":1,"OFY":1,"HPQ":-1,"HPR":1}

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
| 9 | extreme | ["OHP","Q","POQ",1] |
| 10 | extreme | ["OCY","F","CYF",-1] |
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
| 28 | interior_line | ["PQ","Y","OHC","Y",-1] |
| 29 | capacity | ["OHF","Y","Z","FOZ",1,"127/200","C011"] |
| 30 | capacity | ["OHF","Y","P","FOP",1,"127/200","C011"] |
| 31 | capacity | ["OCP","Z","Y","POY",-1,"115189/200000","C013"] |
| 32 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 33 | plu | ["OHDZP","ODP",1] |
| 34 | plu | ["OHDPR","OPR",-1] |
| 35 | plu | ["OHFYZ","OYZ",-1] |
| 36 | plu | ["HOZPR","HZR",1] |
| 37 | plu | ["HOPQR","HQR",1] |
| 38 | plu | ["FOHYZ","FYZ",1] |
| 39 | plu | ["FOHYP","FYP",1] |
| 40 | plu | ["YODZQ","YDZ",-1] |
| 41 | plu | ["YOZPQ","YZP",1] |
| 42 | plu | ["YOZQR","YZR",1] |
| 43 | plu | ["ZOHDP","ZDP",1] |
| 44 | plu | ["ZOHFQ","ZFQ",-1] |
| 45 | plu | ["ZOHFR","ZFR",-1] |
| 46 | plu | ["ZOHPQ","ZPQ",-1] |
| 47 | plu | ["ZOHPR","ZPR",-1] |
| 48 | plu | ["POHFR","PFR",-1] |
| 49 | plu | ["POHQR","PQR",1] |
| 50 | plu | ["QOHZR","QZR",-1] |
| 51 | capacity | ["ODY","Z","P","DYP",-1,"40801583/63500000","C040"] |
| 52 | capacity | ["OYR","Z","P","YRP",1,"2010130013/3175000000","C059"] |
| 53 | mesh | ["OHDPYZ",1] |
| 54 | mesh | ["OHRPYZ",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_HCR | HCR | lo | 347/500 | ["cost","ZP"] |
| lo_HQR | HQR | lo | 279/1000 | ["cost","P"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| hi_HCD | HCD | hi | 974053/1000000 | "C020" |
| hi_HDQ | HDQ | hi | 19683941/25400000 | "C029" |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","HDQ","DQR","HDR","HQR"] | ["fan","HDQ","R"] |
| 1 | ["plu","CQR","HDR","CDR","HQR","DQR","HCR"] | ["plu","RHCDQ"] |
| 2 | ["linear",{"HCD":1,"HDR":-1,"HCR":-1,"CDR":1},"0"] | ["affine_quad","HCDR",1] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s61 | 0 | sub | HDR | hi | 402959/1000000 | hi_HDQ,lo_DQR,lo_HQR |
| s232 | 1 | sumlo | HDR | lo | 77341/200000 | lo_CDR,lo_HQR,lo_DQR,lo_HCR,hi_CQR |
| s233 | 1 | diffhi | CDR | hi | 106633/1000000 | hi_CQR,s61,lo_DQR,lo_HCR,lo_HQR |
| s500 | 2 | linear | HCD | lo | 121759/125000 | s233,lo_HCR,s232 |

## Conclusion

{"triangle":"HCD","lower":"s500","upper":"hi_HCD"}
