# Leaf rpmmmpm

Start with the fixed signs and the following branch assumptions.

{"ODY":1,"ODZ":-1,"HDP":-1,"HZP":-1,"DYP":1,"QYZ":-1}

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
| 26 | capacity | ["OCD","Z","P","DOP",-1,"115189/200000","C009"] |
| 27 | capacity | ["OCQ","","Z","QOZ",-1,"93/500",["side_pair_cap","OCQ"]] |
| 28 | capacity | ["OCQ","","P","QOP",-1,"93/500",["side_pair_cap","OCQ"]] |
| 29 | plu | ["OHDYZ","OYZ",-1] |
| 30 | plu | ["OHDPR","OPR",-1] |
| 31 | plu | ["DOHYZ","DYZ",1] |
| 32 | plu | ["DOHZP","DZP",-1] |
| 33 | plu | ["YOHDP","YOP",1] |
| 34 | plu | ["YHDFZ","YFZ",-1] |
| 35 | plu | ["YHDFP","YFP",-1] |
| 36 | plu | ["ZOHCP","ZCP",-1] |
| 37 | plu | ["ZOHFP","ZFP",1] |
| 38 | capacity | ["DYQ","Z","P","YQP",-1,"87606223/127000000","C031"] |
| 39 | capacity | ["DYQ","Z","R","YQR",-1,"87606223/127000000","C031"] |
| 40 | plu | ["YOZPQ","YZP",-1] |
| 41 | plu | ["YOZQR","YZR",-1] |
| 42 | plu | ["ZOCYR","ZOR",1] |
| 43 | plu | ["ZOYPQ","ZPQ",1] |
| 44 | plu | ["ZOYPR","ZPR",1] |
| 45 | plu | ["POHYQ","PHQ",-1] |
| 46 | plu | ["PHDFQ","PFQ",-1] |
| 47 | plu | ["QOHYR","QHR",1] |
| 48 | plu | ["QOFYR","QFR",1] |
| 49 | plu | ["QOYZR","QZR",1] |

## Conclusion

["cluster","OHQ","Y","OQY","PR"]
