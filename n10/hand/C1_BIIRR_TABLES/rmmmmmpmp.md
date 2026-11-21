# Leaf rmmmmmpmp

Start with the fixed signs and the following branch assumptions.

{"ODY":-1,"HDZ":-1,"HDP":-1,"HZP":-1,"DZP":-1,"FYZ":1,"FYP":-1,"OYR":1}

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
| 23 | interior_line | ["YR","R","ODQ","Q",-1] |
| 24 | capacity | ["OCD","Y","Z","DOZ",-1,"115189/200000","C009"] |
| 25 | capacity | ["OCD","Y","P","DOP",-1,"115189/200000","C009"] |
| 26 | capacity | ["OCQ","","Y","QOY",-1,"93/500",["side_pair_cap","OCQ"]] |
| 27 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | capacity | ["OCR","Y","Z","ROZ",-1,"2849236491/7210000000","C045"] |
| 30 | capacity | ["OCR","Y","P","ROP",-1,"2849236491/7210000000","C045"] |
| 31 | plu | ["OHDYZ","OYZ",1] |
| 32 | plu | ["OHDYP","OYP",1] |
| 33 | plu | ["DOHYZ","DYZ",-1] |
| 34 | plu | ["DOHYP","DYP",-1] |
| 35 | plu | ["FOHYZ","FOZ",1] |
| 36 | plu | ["FHCYP","FCP",-1] |
| 37 | plu | ["FHCPQ","FPQ",1] |
| 38 | plu | ["FHCPR","FPR",1] |
| 39 | plu | ["FHYZP","FZP",-1] |
| 40 | plu | ["YOHZQ","YZQ",-1] |
| 41 | plu | ["YOHPQ","YPQ",-1] |
| 42 | plu | ["YODZR","YZR",-1] |
| 43 | plu | ["YODPR","YPR",-1] |
| 44 | plu | ["YOFZP","YZP",1] |
| 45 | plu | ["ZOHCP","ZCP",-1] |
| 46 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 47 | capacity | ["OCF","Y","P","FOP",-1,"127/200","C012"] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHD | OHD | lo | 347/500 | ["cost","ZP"] |
| lo_OCY | OCY | lo | 93/1000 | ["cost",""] |
| lo_OCQ | OCQ | lo | 93/1000 | ["cost",""] |
| lo_OCR | OCR | lo | 279/1000 | ["cost","Y"] |
| lo_ODY | ODY | lo | 93/1000 | ["cost",""] |
| lo_ODQ | ODQ | lo | 347/500 | ["cost","YR"] |
| lo_ODR | ODR | lo | 93/1000 | ["cost",""] |
| lo_OYQ | OYQ | lo | 93/1000 | ["cost",""] |
| lo_OYR | OYR | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | ["cost","ZP"] |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDY | HDY | lo | 347/500 | ["cost","ZP"] |
| lo_CDQ | CDQ | lo | 279/1000 | ["cost","R"] |
| lo_CDR | CDR | lo | 93/1000 | ["cost",""] |
| lo_DQR | DQR | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHQ | OHQ | hi | 1 | ["unit"] |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODY | ODY | hi | 33119861/127000000 | "C046" |
| hi_ODQ | ODQ | hi | 96589/127000 | "C017" |
| hi_OQR | OQR | hi | 1545190473/2861468750 | "C047" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CQR | CQR | hi | 117/500 | ["side_pair_cap","CQR"] |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OCD","CDY","OCY","ODY"] | ["fan","OCD","Y"] |
| 1 | ["fan","OQR","OYQ","OYR","YQR"] | ["fan","OQR","Y"] |
| 2 | ["fan","CDQ","CDR","CQR","DQR"] | ["fan","CDQ","R"] |
| 3 | ["plu","ODY","OQR","ODQ","OYR","ODR","OYQ"] | ["plu","ODYQR"] |
| 4 | ["plu","CDY","OHY","HCY","ODY","HDY","OCY"] | ["plu","YOHCD"] |
| 5 | ["plu","ODY","YQR","DYQ","OYR","DYR","OYQ"] | ["plu","YODQR"] |
| 6 | ["plu","CQR","ODR","CDR","OQR","DQR","OCR"] | ["plu","ROCDQ"] |
| 7 | ["balance",[[-1,"CDQ","OYR"],[-1,"DQR","OCY"],[1,"CQR","ODY"],[-1,"CDR","OYQ"]]] | ["six","OYCDQR"] |
| 8 | ["balance",[[1,"HCD","OYQ"],[-1,"CDY","OHQ"],[1,"HDY","OCQ"],[1,"HCY","ODQ"]]] | ["six","OQHCDY"] |
| 9 | ["balance",[[1,"OYQ","CDR"],[-1,"YQR","OCD"],[1,"OQR","CDY"],[1,"OYR","CDQ"]]] | ["six","CDOYQR"] |
| 10 | ["linear",{"OHD":-1,"ODQ":-1,"OHQ":1,"HDQ":1},"0"] | ["affine_quad","OHDQ",1] |
| 11 | ["linear",{"OHY":-1,"OYQ":-1,"OHQ":1,"HYQ":-1},"0"] | ["affine_quad","OHYQ",1] |
| 12 | ["linear",{"OCD":1,"ODY":-1,"OCY":-1,"CDY":-1},"0"] | ["affine_quad","OCDY",1] |
| 13 | ["linear",{"ODY":-1,"OYQ":-1,"ODQ":1,"DYQ":-1},"0"] | ["affine_quad","ODYQ",1] |
| 14 | ["linear",{"ODQ":1,"OQR":-1,"ODR":-1,"DQR":-1},"0"] | ["affine_quad","ODQR",-1] |
| 15 | ["linear",{"OYQ":-1,"OQR":1,"OYR":-1,"YQR":-1},"0"] | ["affine_quad","OYQR",1] |
| 16 | ["linear",{"HDY":-1,"HYQ":1,"HDQ":1,"DYQ":-1},"0"] | ["affine_quad","HDYQ",1] |
| 17 | ["linear",{"CDQ":1,"CQR":-1,"CDR":-1,"DQR":-1},"0"] | ["affine_quad","CDQR",-1] |
| 18 | ["bary",["DYQ",-1],[["ODQ",-1],["HDQ",-1],["CDQ",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DQ"] |
| 19 | ["bary",["ODY",-1],[null,null,["ODQ",-1]],"ODQ",["DYQ","OYQ","ODY"]] | ["bary","ODQ","Y","OD"] |
| 20 | ["bary",["CQR",1],[["OCQ",1],["CDQ",1],null],"ODQ",["DQR","OQR","ODR"]] | ["bary","ODQ","R","CQ"] |
| 21 | ["bary",["CDY",1],[["OCD",1],["CDQ",-1],["CDR",-1]],"OQR",["YQR","OYR","OYQ"]] | ["bary","OQR","Y","CD"] |
| 22 | ["bary",["ODR",-1],[["OCD",-1],null,["ODQ",-1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OD"] |
| 23 | ["bary",["OQR",1],[["OCQ",-1],["ODQ",1],null],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","OQ"] |
| 24 | ["bary",["DYR",1],[["CDY",1],null,["DYQ",1]],"CDQ",["DQR","CQR","CDR"]] | ["bary","CDQ","R","DY"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s12 | 0 | sub | CDY | hi | 77989/200000 | hi_OCD,lo_OCY,lo_ODY |
| s69 | 3 | sumlo | ODY | lo | 135539/1000000 | lo_ODQ,lo_OYR,lo_ODR,lo_OYQ,hi_OQR |
| s70 | 3 | sumlo | OQR | lo | 56131/200000 | lo_ODQ,lo_OYR,lo_ODR,lo_OYQ,hi_ODY |
| s110 | 4 | sumlo | OHY | lo | 197841/1000000 | lo_HCY,s69,lo_HDY,lo_OCY,s12 |
| s130 | 6 | sumlo | ODR | lo | 111213/500000 | lo_CDR,s70,lo_DQR,lo_OCR,hi_CQR |
| s143 | 7 | balance_lo | CQR | lo | 6633/40000 | lo_CDQ,lo_OYR,lo_DQR,lo_OCY,lo_CDR,lo_OYQ,hi_ODY |
| s144 | 7 | balance_lo | ODY | lo | 184807/1000000 | lo_CDQ,lo_OYR,lo_DQR,lo_OCY,lo_CDR,lo_OYQ,hi_CQR |
| s150 | 8 | balance_lo | CDY | lo | 96813/500000 | lo_HCD,lo_OYQ,lo_HDY,lo_OCQ,lo_HCY,lo_ODQ,hi_OHQ |
| s166 | 9 | balance_lo | YQR | lo | 154421/1000000 | lo_OYQ,lo_CDR,s70,s150,lo_OYR,lo_CDQ,hi_OCD |
| s193 | 10 | linear | HDQ | lo | 97/250 | lo_ODQ,lo_OHD,hi_OHQ |
| s200 | 12 | linear | OCD | lo | 471433/1000000 | s150,lo_OCY,s144 |
| s211 | 14 | linear | OQR | hi | 222559/500000 | lo_DQR,hi_ODQ,s130 |
| s217 | 15 | linear | OQR | lo | 340421/1000000 | lo_OYQ,lo_OYR,s166 |
| s239 | 17 | linear | CDQ | lo | 14073/40000 | lo_CDR,s143,lo_DQR |
| s262 | 18 | bary_hi | DYQ | lo | 101809/250000 | hi_OHC,lo_HCY,lo_OCY,s110,lo_ODQ,s193,s239 |
| s372 | 19 | bary_lo | ODY | hi | 65077/250000 | hi_ODQ,s262,lo_OYQ,s144,hi_ODQ |
| s400 | 20 | bary_lo | CQR | lo | 168849/1000000 | hi_ODQ,lo_DQR,s217,s130,lo_OCQ,s239 |
| s413 | 21 | bary_hi | CDY | hi | 121169/500000 | s211,s166,lo_OYR,lo_OYQ,hi_OCD,s239,lo_CDR |
| s531 | 22 | bary_hi | ODR | lo | 12903/50000 | hi_CDQ,lo_DQR,s400,lo_CDR,s200,lo_ODQ |
| s536 | 23 | bary_hi | OQR | hi | 403139/1000000 | hi_CDQ,lo_DQR,s400,lo_CDR,lo_OCQ,hi_ODQ |
| s546 | 24 | bary_lo | DYR | lo | 16631/125000 | hi_CDQ,lo_DQR,s400,lo_CDR,s150,s262 |
| s586 | 1 | sub | YQR | hi | 217139/1000000 | s536,lo_OYQ,lo_OYR |
| s596 | 2 | sum | CDQ | lo | 354849/1000000 | lo_CDR,s400,lo_DQR |
| s612 | 3 | sumlo | ODY | lo | 21963/100000 | lo_ODQ,lo_OYR,s531,lo_OYQ,s536 |
| s646 | 4 | sumlo | OHY | lo | 43827/125000 | lo_HCY,s612,lo_HDY,lo_OCY,s413 |
| s658 | 5 | sumlo | ODY | lo | 115701/500000 | s262,lo_OYR,s546,lo_OYQ,s586 |
| s682 | 7 | balance_lo | CQR | lo | 48307/250000 | s596,lo_OYR,lo_DQR,lo_OCY,lo_CDR,lo_OYQ,s372 |
| s740 | 11 | linear | HYQ | hi | 17387/31250 | hi_OHQ,s646,lo_OYQ |
| s758 | 13 | linear | ODQ | lo | 365819/500000 | s262,s658,lo_OYQ |
| s759 | 13 | linear | DYQ | hi | 218071/500000 | hi_ODQ,s658,lo_OYQ |
| s784 | 16 | linear | HDQ | lo | 136213/250000 | s262,lo_HDY,s740 |
| s791 | 17 | linear | CDQ | lo | 94807/250000 | lo_CDR,s682,lo_DQR |
| s822 | 18 | bary_hi | DYQ | lo | 455097/1000000 | hi_OHC,lo_HCY,lo_OCY,s646,s758,s784,s791 |

## Conclusion

{"triangle":"DYQ","lower":"s822","upper":"s759"}
