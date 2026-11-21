# Leaf rpmmppmmppm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":1,"CZP":1,"FZP":-1,"DYP":-1,"FYP":1,"QYZ":1,"OFY":-1}

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
| 10 | extreme | ["HFY","C","FYC",1] |
| 11 | extreme | ["CYQ","H","YQH",1] |
| 12 | extreme | ["CYR","D","YRD",1] |
| 13 | extreme | ["CYR","F","YRF",1] |
| 14 | extreme | ["CYR","H","YRH",1] |
| 15 | extreme | ["DFZ","O","FZO",-1] |
| 16 | extreme | ["DYQ","O","YQO",-1] |
| 17 | extreme | ["DYR","O","YRO",-1] |
| 18 | interior_line | ["HY","Z","HCDF","Z",1] |
| 19 | interior_line | ["HY","P","HCDF","P",1] |
| 20 | interior_line | ["CY","Z","HCDF","Z",-1] |
| 21 | interior_line | ["CY","P","HCDF","P",-1] |
| 22 | interior_line | ["CZ","R","CDQ","R",-1] |
| 23 | interior_line | ["CP","R","CDQ","R",-1] |
| 24 | interior_line | ["DZ","R","CDQ","R",1] |
| 25 | interior_line | ["DP","R","CDQ","R",1] |
| 26 | interior_line | ["ZP","Y","OHC","Y",1] |
| 27 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 28 | capacity | ["OCF","Y","Z","CFZ",-1,"127/200","C012"] |
| 29 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 30 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 31 | capacity | ["CYQ","Z","P","YQP",1,"27769359917/45783500000","C032"] |
| 32 | capacity | ["CYQ","Z","R","YQR",1,"27769359917/45783500000","C032"] |
| 33 | plu | ["OHDYZ","OYZ",-1] |
| 34 | plu | ["OHDPR","OPR",-1] |
| 35 | plu | ["DOHYZ","DYZ",1] |
| 36 | plu | ["DOHZP","DZP",-1] |
| 37 | plu | ["FOHYP","FOP",1] |
| 38 | plu | ["FOCYZ","FYZ",1] |
| 39 | plu | ["YOZQR","YZR",1] |
| 40 | plu | ["YHDPR","YPR",-1] |
| 41 | plu | ["ZOHYQ","ZHQ",-1] |
| 42 | plu | ["ZOHPQ","ZPQ",-1] |
| 43 | plu | ["ZOFYQ","ZFQ",-1] |
| 44 | plu | ["ZHCYR","ZHR",-1] |
| 45 | plu | ["ZHCPR","ZPR",-1] |
| 46 | plu | ["ZHDFR","ZFR",-1] |
| 47 | plu | ["POFZQ","PFQ",-1] |
| 48 | plu | ["POFZR","PFR",-1] |
| 49 | plu | ["QOYZR","QZR",-1] |
| 50 | capacity | ["OCF","Y","P","CFP",-1,"127/200","C012"] |

## Conclusion

["cluster","OFQ","Z","OFZ","YP"]
