# Leaf rppmppmpp

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":1,"HDZ":-1,"HDP":1,"CZP":1,"FZP":-1,"DYZ":1,"FYP":1}

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
| 34 | plu | ["HODZP","HZP",1] |
| 35 | plu | ["DOHZP","DZP",-1] |
| 36 | plu | ["FHYZP","FYZ",1] |
| 37 | plu | ["YOHDZ","YOZ",1] |
| 38 | plu | ["YHDZP","YZP",1] |

## Bounds

| Reference | Triangle | Side | Value | Witness |
| --- | --- | --- | --- | --- |
| lo_OHC | OHC | lo | 279/1000 | ["cost","Y"] |
| lo_OHD | OHD | lo | 347/500 | ["cost","YZ"] |
| lo_OHY | OHY | lo | 93/1000 | ["cost",""] |
| lo_OHZ | OHZ | lo | 279/1000 | ["cost","Y"] |
| lo_OCD | OCD | lo | 96813/500000 | "C041" |
| lo_ODF | ODF | lo | 84811/200000 | "C025" |
| lo_ODY | ODY | lo | 279/1000 | ["cost","Z"] |
| lo_ODZ | ODZ | lo | 93/1000 | ["cost",""] |
| lo_OYZ | OYZ | lo | 93/1000 | ["cost",""] |
| lo_HCD | HCD | lo | 347/500 | "C015" |
| lo_HCY | HCY | lo | 93/1000 | ["cost",""] |
| lo_HDF | HDF | lo | 279/1000 | ["cost","P"] |
| lo_HDP | HDP | lo | 93/1000 | ["cost",""] |
| lo_HFY | HFY | lo | 93/1000 | ["cost",""] |
| lo_HFP | HFP | lo | 93/1000 | ["cost",""] |
| lo_CDF | CDF | lo | 73/200 | "C026" |
| lo_CDZ | CDZ | lo | 93/1000 | ["cost",""] |
| lo_CYZ | CYZ | lo | 93/1000 | ["cost",""] |
| lo_CZP | CZP | lo | 93/1000 | ["cost",""] |
| lo_DFY | DFY | lo | 279/1000 | ["cost","P"] |
| lo_DFP | DFP | lo | 93/1000 | ["cost",""] |
| lo_DYZ | DYZ | lo | 93/1000 | ["cost",""] |
| lo_DZP | DZP | lo | 93/1000 | ["cost",""] |
| lo_FYP | FYP | lo | 93/1000 | ["cost",""] |
| lo_FZP | FZP | lo | 93/1000 | ["cost",""] |
| hi_OHC | OHC | hi | 127/200 | "C028" |
| hi_OHD | OHD | hi | 1 | ["unit"] |
| hi_OHF | OHF | hi | 127/200 | "C011" |
| hi_OCD | OCD | hi | 115189/200000 | "C009" |
| hi_ODF | ODF | hi | 467729/500000 | "C016" |
| hi_ODY | ODY | hi | 40801583/63500000 | "C040" |
| hi_HDF | HDF | hi | 153/500 | "C010" |
| hi_CDQ | CDQ | hi | 21/50 | ["side_pair_cap","CDQ"] |
| hi_CFY | CFY | hi | 271/500 | "C033" |

## Relations

| Index | Relation | Witness |
| --- | --- | --- |
| 0 | ["fan","OHC","HCY","OCY","OHY"] | ["fan","OHC","Y"] |
| 1 | ["fan","OHD","HDY","ODY","OHY"] | ["fan","OHD","Y"] |
| 2 | ["fan","HDF","DFP","HDP","HFP"] | ["fan","HDF","P"] |
| 3 | ["fan","DFY","DFP","DYP","FYP"] | ["fan","DFY","P"] |
| 4 | ["plu","OCY","OHD","OCD","OHY","ODY","OHC"] | ["plu","OHCDY"] |
| 5 | ["plu","HDY","OHC","HCD","OHY","HCY","OHD"] | ["plu","HOCDY"] |
| 6 | ["plu","HCF","HDY","HCD","HFY","HCY","HDF"] | ["plu","HCDFY"] |
| 7 | ["plu","HCD","HFZ","HCF","HDZ","HCZ","HDF"] | ["plu","HCDFZ"] |
| 8 | ["plu","HCP","HDF","HCD","HFP","HCF","HDP"] | ["plu","HCDFP"] |
| 9 | ["plu","CFY","HCD","CDF","HCY","CDY","HCF"] | ["plu","CHDFY"] |
| 10 | ["plu","HCD","ODF","CDF","OHD","HDF","OCD"] | ["plu","DOHCF"] |
| 11 | ["plu","HDZ","ODY","DYZ","OHD","HDY","ODZ"] | ["plu","DOHYZ"] |
| 12 | ["plu","DFZ","ODY","DFY","ODZ","DYZ","ODF"] | ["plu","DOFYZ"] |
| 13 | ["plu","DYP","HDF","DFP","HDY","DFY","HDP"] | ["plu","DHFYP"] |
| 14 | ["plu","DFY","HFP","DFP","HFY","FYP","HDF"] | ["plu","FHDYP"] |
| 15 | ["plu","DFP","FYZ","DFY","FZP","DFZ","FYP"] | ["plu","FDYZP"] |
| 16 | ["plu","DZP","OYZ","DYZ","OZP","ODZ","YZP"] | ["plu","ZODYP"] |
| 17 | ["plu","DFP","HZP","DZP","HFP","FZP","HDP"] | ["plu","PHDFZ"] |
| 18 | ["plu","DFP","YZP","DYP","FZP","DZP","FYP"] | ["plu","PDFYZ"] |
| 19 | ["balance",[[1,"HCF","ODY"],[-1,"CFY","OHD"],[1,"HFY","OCD"],[1,"HCY","ODF"]]] | ["six","ODHCFY"] |
| 20 | ["balance",[[1,"HCZ","ODP"],[-1,"CZP","OHD"],[-1,"HZP","OCD"],[-1,"HCP","ODZ"]]] | ["six","ODHCZP"] |
| 21 | ["balance",[[-1,"CYZ","ODP"],[1,"YZP","OCD"],[1,"CZP","ODY"],[1,"CYP","ODZ"]]] | ["six","ODCYZP"] |
| 22 | ["balance",[[1,"ODY","HCZ"],[1,"DYZ","OHC"],[-1,"OYZ","HCD"],[1,"ODZ","HCY"]]] | ["six","HCODYZ"] |
| 23 | ["balance",[[1,"FYZ","HDP"],[-1,"YZP","HDF"],[1,"FZP","HDY"],[1,"FYP","HDZ"]]] | ["six","HDFYZP"] |
| 24 | ["balance",[[1,"OHC","DYZ"],[1,"HCY","ODZ"],[-1,"OCY","HDZ"],[1,"OHY","CDZ"]]] | ["six","DZOHCY"] |
| 25 | ["balance",[[1,"HCD","FYZ"],[1,"CDZ","HFY"],[-1,"HDZ","CFY"],[-1,"HCZ","DFY"]]] | ["six","FYHCDZ"] |
| 26 | ["balance",[[1,"OHC","DZP"],[-1,"HCD","OZP"],[1,"OCD","HZP"],[1,"OHD","CZP"]]] | ["six","ZPOHCD"] |
| 27 | ["linear",{"OHC":1,"OCY":-1,"OHY":-1,"HCY":-1},"0"] | ["affine_quad","OHCY",-1] |
| 28 | ["linear",{"ODY":1,"OYZ":-1,"ODZ":-1,"DYZ":-1},"0"] | ["affine_quad","ODYZ",1] |
| 29 | ["linear",{"HCD":-1,"HDY":1,"HCY":-1,"CDY":1},"0"] | ["affine_quad","HCDY",-1] |
| 30 | ["linear",{"HCD":1,"HDZ":-1,"HCZ":-1,"CDZ":-1},"0"] | ["affine_quad","HCDZ",1] |
| 31 | ["linear",{"HDF":1,"HFP":-1,"HDP":-1,"DFP":-1},"0"] | ["affine_quad","HDFP",1] |
| 32 | ["linear",{"HFZ":1,"HZP":-1,"HFP":-1,"FZP":-1},"0"] | ["affine_quad","HFZP",-1] |
| 33 | ["linear",{"DFY":1,"DYP":-1,"DFP":-1,"FYP":-1},"0"] | ["affine_quad","DFYP",1] |
| 34 | ["linear",{"DFZ":-1,"DZP":1,"DFP":1,"FZP":-1},"0"] | ["affine_quad","DFZP",-1] |
| 35 | ["linear",{"FYZ":1,"FZP":-1,"FYP":-1,"YZP":-1},"0"] | ["affine_quad","FYZP",1] |
| 36 | ["quad","HDF","OHD","93/91"] | ["quad","ODFH","YZP"] |
| 37 | ["quad","HDF","HDZ","449/1000"] | ["quad","HZDF","P"] |
| 38 | ["quad","CDQ","CDY","93/125"] | ["quad","CQDY","ZR"] |
| 39 | ["linear",{"HCD":-1,"HDF":-1},"-1"] | ["c1_central_quad_cap","HCD","HDF"] |
| 40 | ["linear",{"HCF":-1,"CDF":-1},"-1"] | ["c1_central_quad_cap","HCF","CDF"] |
| 41 | ["bary",["HDY",-1],[["OHD",-1],null,["HCD",-1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","HD"] |
| 42 | ["bary",["CDY",1],[["OCD",1],["HCD",1],null],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","CD"] |
| 43 | ["bary",["DYZ",-1],[["ODZ",1],["HDZ",-1],["CDZ",1]],"OHC",["HCY","OCY","OHY"]] | ["bary","OHC","Y","DZ"] |
| 44 | ["bary",["OCY",1],[null,["OHC",1],["OCD",1]],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","OC"] |
| 45 | ["bary",["DFY",1],[["ODF",1],["HDF",1],null],"OHD",["HDY","ODY","OHY"]] | ["bary","OHD","Y","DF"] |
| 46 | ["bary",["HFZ",-1],[["OHF",-1],null,["HDF",-1]],"OHD",["HDZ","ODZ","OHZ"]] | ["bary","OHD","Z","HF"] |
| 47 | ["bary",["HCZ",1],[["OHC",-1],["HCD",1],["HCY",-1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","HC"] |
| 48 | ["bary",["CDZ",1],[["OCD",1],null,["CDY",1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","CD"] |
| 49 | ["bary",["DFZ",1],[["ODF",1],null,["DFY",1]],"ODY",["DYZ","OYZ","ODZ"]] | ["bary","ODY","Z","DF"] |
| 50 | ["bary",["FYZ",1],[["HFY",-1],["CFY",1],["DFY",1]],"HCD",["CDZ","HDZ","HCZ"]] | ["bary","HCD","Z","FY"] |
| 51 | ["bary",["ODP",1],[["OHD",1],null,["ODF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","OD"] |
| 52 | ["bary",["CDP",1],[["HCD",1],null,["CDF",1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CD"] |
| 53 | ["bary",["CYP",-1],[["HCY",-1],["CDY",-1],["CFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","CY"] |
| 54 | ["bary",["DYP",-1],[["HDY",-1],null,["DFY",-1]],"HDF",["DFP","HFP","HDP"]] | ["bary","HDF","P","DY"] |
| 55 | ["bary",["HZP",1],[null,["HFZ",1],null],"HFZ",["FZP","HZP","HFP"]] | ["bary","HFZ","P","HZ"] |
| 56 | ["bary",["FYZ",1],[["CFY",1],["DFY",1],null],"CDY",["DYZ","CYZ","CDZ"]] | ["bary","CDY","Z","FY"] |
| 57 | ["bary",["HDZ",-1],[["HCD",-1],null,["HDP",1]],"CDP",["DZP","CZP","CDZ"]] | ["bary","CDP","Z","HD"] |
| 58 | ["bary",["HDP",1],[["HDF",1],["HDY",-1],["HDZ",-1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","HD"] |
| 59 | ["bary",["DFP",1],[null,["DFY",1],["DFZ",1]],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","DF"] |
| 60 | ["bary",["DZP",-1],[["DFZ",-1],["DYZ",-1],null],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","DZ"] |
| 61 | ["bary",["YZP",1],[["FYZ",1],null,null],"FYZ",["YZP","FZP","FYP"]] | ["bary","FYZ","P","YZ"] |

## Arithmetic

| Reference | Index | Rule | Triangle | Side | Value | Sources |
| --- | --- | --- | --- | --- | --- | --- |
| s1 | 1 | sub | HDY | hi | 157/250 | hi_OHD,lo_ODY,lo_OHY |
| s15 | 2 | sub | DFP | hi | 3/25 | hi_HDF,lo_HDP,lo_HFP |
| s17 | 2 | sub | HFP | hi | 3/25 | hi_HDF,lo_DFP,lo_HDP |
| s28 | 4 | sumlo | OCY | lo | 11981/125000 | lo_OCD,lo_OHY,lo_ODY,lo_OHC,hi_OHD |
| s37 | 5 | sumlo | HDY | lo | 203281/1000000 | lo_HCD,lo_OHY,lo_HCY,lo_OHD,hi_OHC |
| s45 | 6 | sumlo | HCF | lo | 14409/100000 | lo_HCD,lo_HFY,lo_HCY,lo_HDF,s1 |
| s69 | 11 | sumlo | HDZ | lo | 129869/1000000 | lo_DYZ,lo_OHD,s37,lo_ODZ,hi_ODY |
| s74 | 12 | sumlo | DFZ | lo | 50879/500000 | lo_DFY,lo_ODZ,lo_DYZ,lo_ODF,hi_ODY |
| s79 | 13 | sumlo | DYP | lo | 5863/40000 | lo_DFP,s37,lo_DFY,lo_HDP,hi_HDF |
| s85 | 14 | sumlo | DFY | lo | 2883/10000 | lo_DFP,lo_HFY,lo_FYP,lo_HDF,s17 |
| s92 | 15 | sumlo | FYZ | lo | 151147/500000 | s85,lo_FZP,s74,lo_FYP,s15 |
| s93 | 17 | sumlo | HZP | lo | 2883/20000 | lo_DZP,lo_HFP,lo_FZP,lo_HDP,s15 |
| s100 | 19 | balance_lo | CFY | lo | 19529/200000 | s45,lo_ODY,lo_HFY,lo_OCD,lo_HCY,lo_ODF,hi_OHD |
| s115 | 23 | balance_lo | YZP | lo | 309/1600 | s92,lo_HDP,lo_FZP,s37,lo_FYP,s69,hi_HDF |
| s131 | 27 | linear | OHC | lo | 35231/125000 | lo_HCY,s28,lo_OHY |
| s144 | 32 | linear | HFZ | lo | 6603/20000 | lo_FZP,lo_HFP,s93 |
| s146 | 33 | linear | DFY | lo | 13303/40000 | lo_DFP,s79,lo_FYP |
| s148 | 35 | linear | FYZ | lo | 3033/8000 | lo_FYP,lo_FZP,s115 |
| s149 | 36 | quad | OHD | lo | 357989/500000 | hi_HDF |
| s150 | 37 | quad | HDZ | lo | 143/1000 | hi_HDF |
| s151 | 38 | quad | CDY | lo | 81/250 | hi_CDQ |
| s154 | 39 | linear | HCD | hi | 721/1000 | lo_HDF |
| s155 | 40 | linear | CDF | hi | 85591/100000 | s45 |
| s156 | 41 | bary_hi | HDY | lo | 413/2000 | hi_OHC,lo_HCY,s28,lo_OHY,s149,lo_HCD |
| s157 | 42 | bary_hi | CDY | hi | 594161/1000000 | hi_OHC,lo_HCY,s28,lo_OHY,hi_OCD,s154 |
| s167 | 44 | bary_lo | OCY | lo | 48321/500000 | hi_OHD,s156,lo_ODY,lo_OHY,s131,lo_OCD |
| s178 | 45 | bary_hi | DFY | hi | 336421/500000 | hi_OHD,s156,lo_ODY,lo_OHY,hi_ODF,hi_HDF |
| s187 | 46 | bary_lo | HFZ | hi | 242077/500000 | hi_OHD,s150,lo_ODZ,lo_OHZ,hi_OHF,hi_HDF |
| s204 | 47 | bary_hi | HCZ | hi | 91607/200000 | hi_ODY,lo_DYZ,lo_OYZ,lo_ODZ,s131,s154,lo_HCY |
| s235 | 51 | bary_hi | ODP | hi | 676463/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,hi_OHD,hi_ODF |
| s243 | 52 | bary_hi | CDP | hi | 554779/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s154,s155 |
| s245 | 53 | bary_hi | CYP | lo | 164617/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCY,s151,s100 |
| s251 | 54 | bary_hi | DYP | lo | 40959/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s156,s146 |
| s262 | 55 | bary_hi | HZP | hi | 149077/500000 | s187,lo_FZP,s93,lo_HFP,s187 |
| s278 | 56 | bary_hi | FYZ | hi | 547047/1000000 | s157,lo_DYZ,lo_CYZ,lo_CDZ,hi_CFY,s178 |
| s283 | 57 | bary_lo | HDZ | hi | 231841/500000 | s243,lo_DZP,lo_CZP,lo_CDZ,s154,lo_HDP |
| s328 | 0 | sum | OHC | lo | 141321/500000 | lo_HCY,s167,lo_OHY |
| s331 | 3 | sum | DFY | lo | 87459/250000 | lo_DFP,s251,lo_FYP |
| s332 | 4 | sumlo | OCY | lo | 3027/31250 | lo_OCD,lo_OHY,lo_ODY,s328,hi_OHD |
| s334 | 7 | diff | HCF | lo | 191867/1000000 | lo_HCD,s144,s204,hi_HDF,s283 |
| s335 | 8 | sumlo | HCP | lo | 134617/500000 | lo_HCD,lo_HFP,s334,lo_HDP,hi_HDF |
| s337 | 9 | sumlo | CFY | lo | 1333/10000 | lo_CDF,lo_HCY,s151,s334,s154 |
| s342 | 10 | sumlo | ODF | lo | 437383/1000000 | lo_CDF,s149,lo_HDF,lo_OCD,s154 |
| s347 | 12 | sumlo | DFZ | lo | 113939/1000000 | s331,lo_ODZ,lo_DYZ,s342,hi_ODY |
| s350 | 13 | sumlo | DYP | lo | 84541/500000 | lo_DFP,s156,s331,lo_HDP,hi_HDF |
| s354 | 15 | diffhi | DFY | hi | 591929/1000000 | s15,s278,s347,lo_FYP,lo_FZP |
| s356 | 17 | diffhi | DZP | hi | 58343/200000 | s15,s262,lo_FZP,lo_HDP,lo_HFP |
| s358 | 18 | sumlo | YZP | lo | 203113/1000000 | s350,lo_FZP,lo_DZP,lo_FYP,s15 |
| s360 | 20 | balance_lo | HCZ | lo | 176707/1000000 | lo_CZP,s149,s93,lo_OCD,s335,lo_ODZ,s235 |
| s361 | 21 | balance_lo | CYZ | lo | 59563/500000 | s358,lo_OCD,lo_CZP,lo_ODY,s245,lo_ODZ,s235 |
| s363 | 22 | balance_lo | OYZ | lo | 3651/31250 | lo_ODY,s360,lo_DYZ,s328,lo_ODZ,lo_HCY,s154 |
| s365 | 23 | balance_lo | YZP | lo | 55361/250000 | s148,lo_HDP,lo_FZP,s156,lo_FYP,s150,hi_HDF |
| s369 | 26 | balance_lo | OZP | lo | 167521/1000000 | s328,lo_DZP,lo_OCD,s93,s149,lo_CZP,s154 |
| s370 | 27 | linear | OHC | lo | 17679/62500 | lo_HCY,s332,lo_OHY |
| s372 | 28 | linear | ODY | lo | 18927/62500 | lo_DYZ,lo_ODZ,s363 |
| s376 | 30 | linear | HDZ | hi | 451293/1000000 | lo_CDZ,s154,s360 |
| s379 | 33 | linear | DFY | lo | 177541/500000 | lo_DFP,s350,lo_FYP |
| s380 | 34 | linear | DFZ | hi | 63743/200000 | s15,s356,lo_FZP |
| s381 | 35 | linear | FYZ | lo | 101861/250000 | lo_FYP,lo_FZP,s365 |
| s385 | 43 | bary_lo | DYZ | hi | 291863/1000000 | hi_OHC,lo_HCY,s332,lo_OHY,lo_ODZ,s376,lo_CDZ |
| s387 | 44 | bary_lo | OCY | lo | 103667/1000000 | hi_OHD,s156,s372,lo_OHY,s370,lo_OCD |
| s410 | 53 | bary_hi | CYP | lo | 175453/1000000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,lo_HCY,s151,s337 |
| s413 | 54 | bary_hi | DYP | lo | 42669/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s156,s379 |
| s426 | 56 | bary_hi | FYZ | hi | 61433/125000 | s157,lo_DYZ,s361,lo_CDZ,hi_CFY,s354 |
| s462 | 60 | bary_lo | DZP | hi | 63331/250000 | s426,s365,lo_FZP,lo_FYP,s380,s385 |
| s464 | 61 | bary_hi | YZP | hi | 38183/125000 | s426,s365,lo_FZP,lo_FYP,s426 |
| s465 | 0 | sum | OHC | lo | 289667/1000000 | lo_HCY,s387,lo_OHY |
| s467 | 3 | sum | DFY | lo | 89169/250000 | lo_DFP,s413,lo_FYP |
| s479 | 12 | sumlo | DFZ | lo | 114929/1000000 | s467,lo_ODZ,lo_DYZ,s342,hi_ODY |
| s482 | 13 | sumlo | DYP | lo | 171161/1000000 | lo_DFP,s156,s467,lo_HDP,hi_HDF |
| s486 | 15 | diffhi | DFY | hi | 519219/1000000 | s15,s426,s479,lo_FYP,lo_FZP |
| s489 | 16 | sumlo | OYZ | lo | 35699/250000 | lo_DYZ,s369,lo_ODZ,s365,s462 |
| s492 | 18 | diffhi | DZP | hi | 222987/1000000 | s15,s464,s482,lo_FZP,lo_FYP |
| s494 | 21 | balance_lo | CYZ | lo | 129139/1000000 | s365,lo_OCD,lo_CZP,s372,s410,lo_ODZ,s235 |
| s496 | 23 | balance_lo | YZP | lo | 230051/1000000 | s381,lo_HDP,lo_FZP,s156,lo_FYP,s150,hi_HDF |
| s498 | 23 | balance_hi | HDZ | hi | 97783/250000 | s464,hi_HDF,s381,lo_HDP,lo_FZP,s156,lo_FYP |
| s500 | 24 | balance_lo | OCY | lo | 1131/10000 | s465,lo_DYZ,lo_HCY,lo_ODZ,lo_OHY,lo_CDZ,s498 |
| s502 | 26 | balance_lo | OZP | lo | 168427/1000000 | s465,lo_DZP,lo_OCD,s93,s149,lo_CZP,s154 |
| s503 | 27 | linear | OHC | lo | 2991/10000 | lo_HCY,s500,lo_OHY |
| s512 | 33 | linear | DFY | lo | 357161/1000000 | lo_DFP,s482,lo_FYP |
| s513 | 34 | linear | DFZ | hi | 249987/1000000 | s15,s492,lo_FZP |
| s514 | 35 | linear | FYZ | lo | 416051/1000000 | lo_FYP,lo_FZP,s496 |
| s518 | 43 | bary_lo | DYZ | hi | 62331/250000 | hi_OHC,lo_HCY,s500,lo_OHY,lo_ODZ,s498,lo_CDZ |
| s534 | 47 | bary_hi | HCZ | hi | 227769/500000 | hi_ODY,lo_DYZ,s489,lo_ODZ,s503,s154,lo_HCY |
| s536 | 49 | bary_lo | DFZ | lo | 114999/1000000 | hi_ODY,lo_DYZ,s489,lo_ODZ,s342,s512 |
| s548 | 54 | bary_hi | DYP | lo | 42827/250000 | hi_HDF,lo_DFP,lo_HFP,lo_HDP,s156,s512 |
| s556 | 56 | bary_hi | FYZ | hi | 226107/500000 | s157,lo_DYZ,s494,lo_CDZ,hi_CFY,s486 |
| s589 | 59 | bary_lo | DFP | lo | 97101/1000000 | s556,s496,lo_FZP,lo_FYP,s512,s536 |
| s591 | 60 | bary_lo | DZP | hi | 4961/25000 | s556,s496,lo_FZP,lo_FYP,s513,s518 |
| s595 | 61 | bary_hi | YZP | hi | 133107/500000 | s556,s496,lo_FZP,lo_FYP,s556 |
| s599 | 2 | sum | HDF | lo | 283101/1000000 | s589,lo_HDP,lo_HFP |
| s601 | 3 | sum | DFY | lo | 361409/1000000 | s589,s548,lo_FYP |
| s616 | 10 | sumlo | ODF | lo | 109621/250000 | lo_CDF,s149,s599,lo_OCD,s154 |
| s620 | 12 | sumlo | DFZ | lo | 57887/500000 | s601,lo_ODZ,lo_DYZ,s616,hi_ODY |
| s629 | 15 | sumlo | DFP | lo | 49067/500000 | s601,lo_FZP,s620,lo_FYP,s556 |
| s630 | 15 | diffhi | DFY | hi | 29233/62500 | s15,s556,s620,lo_FYP,lo_FZP |
| s636 | 16 | sumlo | OYZ | lo | 46687/250000 | lo_DYZ,s502,lo_ODZ,s496,s591 |
| s647 | 23 | balance_lo | YZP | lo | 232667/1000000 | s514,lo_HDP,lo_FZP,s156,lo_FYP,s150,hi_HDF |
| s648 | 23 | balance_hi | HDY | hi | 316879/1000000 | s595,hi_HDF,s514,lo_HDP,lo_FYP,s150,lo_FZP |
| s649 | 23 | balance_hi | HDZ | hi | 253379/1000000 | s595,hi_HDF,s514,lo_HDP,lo_FZP,s156,lo_FYP |
| s662 | 25 | balance_lo | HDZ | lo | 38893/250000 | lo_HCD,s514,lo_CDZ,lo_HFY,s534,s630,hi_CFY |
| s664 | 25 | balance_lo | HCZ | lo | 1711/5000 | lo_HCD,s514,lo_CDZ,lo_HFY,s649,hi_CFY,s630 |
| s680 | 29 | linear | CDY | lo | 470121/1000000 | lo_HCD,lo_HCY,s648 |
| s684 | 31 | linear | HDF | lo | 142067/500000 | s629,lo_HDP,lo_HFP |
| s696 | 39 | linear | HCD | hi | 357933/500000 | s684 |
| s714 | 48 | bary_lo | CDZ | lo | 24017/250000 | hi_ODY,lo_DYZ,s636,lo_ODZ,lo_OCD,s680 |
| s734 | 50 | bary_hi | FYZ | hi | 421281/1000000 | s696,s714,s662,s664,lo_HFY,hi_CFY,s630 |
| s803 | 58 | bary_hi | HDP | hi | 90969/1000000 | s734,s647,lo_FZP,lo_FYP,hi_HDF,s156,s662 |

## Conclusion

{"triangle":"HDP","lower":"lo_HDP","upper":"s803"}
