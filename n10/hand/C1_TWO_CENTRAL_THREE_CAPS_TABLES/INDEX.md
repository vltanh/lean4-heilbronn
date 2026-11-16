# C1 two-central / three-cap fixed proof index

The main theorem note and these literal tables together form the argument. All fractions, polynomial factors, endpoints and case children are explicit. A JSON row is tuple notation with named fields; no encoded data, solver result or external certificate is a premise.

```c1-proof-metadata
{"format":"c1-two-central-three-caps-v1","threshold":"93/1000","labels":"OHCDFYZPQR","variables":["h","c","d","f","u","v","z","w","p","q","r","t","j","k"],"initialBox":[["93/250","108/125"],["93/250","108/125"],["93/250","79/100"],["93/250","79/100"],["31/288","907/1000"],["31/288","907/1000"],["31/288","907/1000"],["31/288","907/1000"],["13597/19750","1"],["31/288","5039/7850"],["40827/78500","1"],["40827/78500","1"],["31/288","5039/7850"],["13597/19750","1"]],"counts":{"split":57,"linear":24,"area":8,"physical":26},"commonBounds":"common-bounds.md","status":"independent geometric and literal exact-arithmetic review passed"}
```

## Nonzero actual-determinant splits

```c1-tree
["r","HDY",{},"rm","rp"]
["rm","CFY",{"HDY":-1},"rmm","rmp"]
["rmm","HDZ",{"HDY":-1,"CFY":-1},"rmmm","rmmp"]
["rmmm","ODY",{"HDY":-1,"CFY":-1,"HDZ":-1},"rmmmm","rmmmp"]
["rmmmm","OFZ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1},"rmmmmm","rmmmmp"]
["rmmmmm","HYZ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1},"rmmmmmm","rmmmmmp"]
["rmmmmmm","PYZ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1},"rmmmmmmm","rmmmmmmp"]
["rmmmmmmm","OYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":-1},"rmmmmmmmm","rmmmmmmmp"]
["rmmmmmmmm","OZQ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":-1,"OYP":-1},"rmmmmmmmmm","rmmmmmmmmp"]
["rmmmmmmmmm","CYQ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":-1,"OYP":-1,"OZQ":-1},"rmmmmmmmmmm","rmmmmmmmmmp"]
["rmmmmmmmmmm","CZR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":-1,"OYP":-1,"OZQ":-1,"CYQ":-1},"rmmmmmmmmmmm","rmmmmmmmmmmp"]
["rmmmmmmmmmp","CZR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":-1,"OYP":-1,"OZQ":-1,"CYQ":1},"rmmmmmmmmmpm","rmmmmmmmmmpp"]
["rmmmmmmmmp","CYQ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":-1,"OYP":-1,"OZQ":1},"rmmmmmmmmpm","rmmmmmmmmpp"]
["rmmmmmmmmpp","CZR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":-1,"OYP":-1,"OZQ":1,"CYQ":1},"rmmmmmmmmppm","rmmmmmmmmppp"]
["rmmmmmmp","OZQ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1},"rmmmmmmpm","rmmmmmmpp"]
["rmmmmmmpm","HYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":-1},"rmmmmmmpmm","rmmmmmmpmp"]
["rmmmmmmpmm","HZP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":-1,"HYP":-1},"rmmmmmmpmmm","rmmmmmmpmmp"]
["rmmmmmmpmmp","CYQ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":-1,"HYP":-1,"HZP":1},"rmmmmmmpmmpm","rmmmmmmpmmpp"]
["rmmmmmmpmmpm","CZR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":-1,"HYP":-1,"HZP":1,"CYQ":-1},"rmmmmmmpmmpmm","rmmmmmmpmmpmp"]
["rmmmmmmpmmpmm","FYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":-1,"HYP":-1,"HZP":1,"CYQ":-1,"CZR":-1},"rmmmmmmpmmpmmm","rmmmmmmpmmpmmp"]
["rmmmmmmpmmpmmp","YPR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":-1,"HYP":-1,"HZP":1,"CYQ":-1,"CZR":-1,"FYP":1},"rmmmmmmpmmpmmpm","rmmmmmmpmmpmmpp"]
["rmmmmmmpmmpmp","FYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":-1,"HYP":-1,"HZP":1,"CYQ":-1,"CZR":1},"rmmmmmmpmmpmpm","rmmmmmmpmmpmpp"]
["rmmmmmmpp","HYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1},"rmmmmmmppm","rmmmmmmppp"]
["rmmmmmmppm","HZP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1},"rmmmmmmppmm","rmmmmmmppmp"]
["rmmmmmmppmp","CYQ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1},"rmmmmmmppmpm","rmmmmmmppmpp"]
["rmmmmmmppmpm","CZR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":-1},"rmmmmmmppmpmm","rmmmmmmppmpmp"]
["rmmmmmmppmpmp","FYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":-1,"CZR":1},"rmmmmmmppmpmpm","rmmmmmmppmpmpp"]
["rmmmmmmppmpmpp","YPR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":-1,"CZR":1,"FYP":1},"rmmmmmmppmpmppm","rmmmmmmppmpmppp"]
["rmmmmmmppmpp","CZR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":1},"rmmmmmmppmppm","rmmmmmmppmppp"]
["rmmmmmmppmppm","FYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":1,"CZR":-1},"rmmmmmmppmppmm","rmmmmmmppmppmp"]
["rmmmmmmppmppmm","YPQ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":1,"CZR":-1,"FYP":-1},"rmmmmmmppmppmmm","rmmmmmmppmppmmp"]
["rmmmmmmppmppmp","YPR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":1,"CZR":-1,"FYP":1},"rmmmmmmppmppmpm","rmmmmmmppmppmpp"]
["rmmmmmmppmppp","FYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":1,"CZR":1},"rmmmmmmppmpppm","rmmmmmmppmpppp"]
["rmmmmmmppmpppp","YPR",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":-1,"PYZ":1,"OZQ":1,"HYP":-1,"HZP":1,"CYQ":1,"CZR":1,"FYP":1},"rmmmmmmppmppppm","rmmmmmmppmppppp"]
["rmmmmmp","PYZ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":1},"rmmmmmpm","rmmmmmpp"]
["rmmmmmpm","RYZ",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":1,"PYZ":-1},"rmmmmmpmm","rmmmmmpmp"]
["rmmmmmpmm","OYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":1,"PYZ":-1,"RYZ":-1},"rmmmmmpmmm","rmmmmmpmmp"]
["rmmmmmpmp","OYP",{"HDY":-1,"CFY":-1,"HDZ":-1,"ODY":-1,"OFZ":-1,"HYZ":1,"PYZ":-1,"RYZ":1},"rmmmmmpmpm","rmmmmmpmpp"]
["rmmp","CYQ",{"HDY":-1,"CFY":-1,"HDZ":1},"rmmpm","rmmpp"]
["rmmpm","YZP",{"HDY":-1,"CFY":-1,"HDZ":1,"CYQ":-1},"rmmpmm","rmmpmp"]
["rmmpmm","HYP",{"HDY":-1,"CFY":-1,"HDZ":1,"CYQ":-1,"YZP":-1},"rmmpmmm","rmmpmmp"]
["rmmpmp","HZQ",{"HDY":-1,"CFY":-1,"HDZ":1,"CYQ":-1,"YZP":1},"rmmpmpm","rmmpmpp"]
["rmmpp","YZP",{"HDY":-1,"CFY":-1,"HDZ":1,"CYQ":1},"rmmppm","rmmppp"]
["rmp","YZP",{"HDY":-1,"CFY":1},"rmpm","rmpp"]
["rmpm","OYQ",{"HDY":-1,"CFY":1,"YZP":-1},"rmpmm","rmpmp"]
["rmpmm","OFZ",{"HDY":-1,"CFY":1,"YZP":-1,"OYQ":-1},"rmpmmm","rmpmmp"]
["rmpmp","CYR",{"HDY":-1,"CFY":1,"YZP":-1,"OYQ":1},"rmpmpm","rmpmpp"]
["rmpmpp","YZR",{"HDY":-1,"CFY":1,"YZP":-1,"OYQ":1,"CYR":1},"rmpmppm","rmpmppp"]
["rmpmppp","HYP",{"HDY":-1,"CFY":1,"YZP":-1,"OYQ":1,"CYR":1,"YZR":1},"rmpmpppm","rmpmpppp"]
["rmpmpppm","FYZ",{"HDY":-1,"CFY":1,"YZP":-1,"OYQ":1,"CYR":1,"YZR":1,"HYP":-1},"rmpmpppmm","rmpmpppmp"]
["rmpp","OYQ",{"HDY":-1,"CFY":1,"YZP":1},"rmppm","rmppp"]
["rmppp","YZR",{"HDY":-1,"CFY":1,"YZP":1,"OYQ":1},"rmpppm","rmpppp"]
["rp","YZQ",{"HDY":1},"rpm","rpp"]
["rpm","CYQ",{"HDY":1,"YZQ":-1},"rpmm","rpmp"]
["rpmm","HZP",{"HDY":1,"YZQ":-1,"CYQ":-1},"rpmmm","rpmmp"]
["rpp","HZP",{"HDY":1,"YZQ":1},"rppm","rppp"]
["rppp","DYR",{"HDY":1,"YZQ":1,"HZP":1},"rpppm","rpppp"]
```

## Terminal arguments

```c1-leaves
["rmmmmmmmmmmm","linear","rmmmmmmmmmmm.md"]
["rmmmmmmmmmmp","area","rmmmmmmmmmmp.md"]
["rmmmmmmmmmpm","linear","rmmmmmmmmmpm.md"]
["rmmmmmmmmmpp","area","rmmmmmmmmmpp.md"]
["rmmmmmmmmpm","area","rmmmmmmmmpm.md"]
["rmmmmmmmmppm","linear","rmmmmmmmmppm.md"]
["rmmmmmmmmppp","linear","rmmmmmmmmppp.md"]
["rmmmmmmmp","linear","rmmmmmmmp.md"]
["rmmmmmmpmmm","linear","rmmmmmmpmmm.md"]
["rmmmmmmpmmpmmm","linear","rmmmmmmpmmpmmm.md"]
["rmmmmmmpmmpmmpm","linear","rmmmmmmpmmpmmpm.md"]
["rmmmmmmpmmpmmpp","linear","rmmmmmmpmmpmmpp.md"]
["rmmmmmmpmmpmpm","linear","rmmmmmmpmmpmpm.md"]
["rmmmmmmpmmpmpp","linear","rmmmmmmpmmpmpp.md"]
["rmmmmmmpmmpp","linear","rmmmmmmpmmpp.md"]
["rmmmmmmpmp","linear","rmmmmmmpmp.md"]
["rmmmmmmppmm","linear","rmmmmmmppmm.md"]
["rmmmmmmppmpmm","linear","rmmmmmmppmpmm.md"]
["rmmmmmmppmpmpm","linear","rmmmmmmppmpmpm.md"]
["rmmmmmmppmpmppm","area","rmmmmmmppmpmppm.md"]
["rmmmmmmppmpmppp","area","rmmmmmmppmpmppp.md"]
["rmmmmmmppmppmmm","area","rmmmmmmppmppmmm.md"]
["rmmmmmmppmppmmp","linear","rmmmmmmppmppmmp.md"]
["rmmmmmmppmppmpm","linear","rmmmmmmppmppmpm.md"]
["rmmmmmmppmppmpp","linear","rmmmmmmppmppmpp.md"]
["rmmmmmmppmpppm","area","rmmmmmmppmpppm.md"]
["rmmmmmmppmppppm","linear","rmmmmmmppmppppm.md"]
["rmmmmmmppmppppp","area","rmmmmmmppmppppp.md"]
["rmmmmmmppp","linear","rmmmmmmppp.md"]
["rmmmmmpmmm","physical","rmmmmmpmmm.md"]
["rmmmmmpmmp","linear","rmmmmmpmmp.md"]
["rmmmmmpmpm","physical","rmmmmmpmpm.md"]
["rmmmmmpmpp","linear","rmmmmmpmpp.md"]
["rmmmmmpp","linear","rmmmmmpp.md"]
["rmmmmp","physical","rmmmmp.md"]
["rmmmp","physical","rmmmp.md"]
["rmmpmmm","physical","rmmpmmm.md"]
["rmmpmmp","physical","rmmpmmp.md"]
["rmmpmpm","physical","rmmpmpm.md"]
["rmmpmpp","physical","rmmpmpp.md"]
["rmmppm","physical","rmmppm.md"]
["rmmppp","physical","rmmppp.md"]
["rmpmmm","physical","rmpmmm.md"]
["rmpmmp","physical","rmpmmp.md"]
["rmpmpm","physical","rmpmpm.md"]
["rmpmppm","physical","rmpmppm.md"]
["rmpmpppmm","physical","rmpmpppmm.md"]
["rmpmpppmp","physical","rmpmpppmp.md"]
["rmpmpppp","physical","rmpmpppp.md"]
["rmppm","physical","rmppm.md"]
["rmpppm","physical","rmpppm.md"]
["rmpppp","physical","rmpppp.md"]
["rpmmm","physical","rpmmm.md"]
["rpmmp","physical","rpmmp.md"]
["rpmp","physical","rpmp.md"]
["rppm","physical","rppm.md"]
["rpppm","physical","rpppm.md"]
["rpppp","physical","rpppp.md"]
```

## Table files

[Common coordinate bounds](common-bounds.md).

- [rmmmmmmmmmmm](rmmmmmmmmmmm.md): linear.
- [rmmmmmmmmmmp](rmmmmmmmmmmp.md): area.
- [rmmmmmmmmmpm](rmmmmmmmmmpm.md): linear.
- [rmmmmmmmmmpp](rmmmmmmmmmpp.md): area.
- [rmmmmmmmmpm](rmmmmmmmmpm.md): area.
- [rmmmmmmmmppm](rmmmmmmmmppm.md): linear.
- [rmmmmmmmmppp](rmmmmmmmmppp.md): linear.
- [rmmmmmmmp](rmmmmmmmp.md): linear.
- [rmmmmmmpmmm](rmmmmmmpmmm.md): linear.
- [rmmmmmmpmmpmmm](rmmmmmmpmmpmmm.md): linear.
- [rmmmmmmpmmpmmpm](rmmmmmmpmmpmmpm.md): linear.
- [rmmmmmmpmmpmmpp](rmmmmmmpmmpmmpp.md): linear.
- [rmmmmmmpmmpmpm](rmmmmmmpmmpmpm.md): linear.
- [rmmmmmmpmmpmpp](rmmmmmmpmmpmpp.md): linear.
- [rmmmmmmpmmpp](rmmmmmmpmmpp.md): linear.
- [rmmmmmmpmp](rmmmmmmpmp.md): linear.
- [rmmmmmmppmm](rmmmmmmppmm.md): linear.
- [rmmmmmmppmpmm](rmmmmmmppmpmm.md): linear.
- [rmmmmmmppmpmpm](rmmmmmmppmpmpm.md): linear.
- [rmmmmmmppmpmppm](rmmmmmmppmpmppm.md): area.
- [rmmmmmmppmpmppp](rmmmmmmppmpmppp.md): area.
- [rmmmmmmppmppmmm](rmmmmmmppmppmmm.md): area.
- [rmmmmmmppmppmmp](rmmmmmmppmppmmp.md): linear.
- [rmmmmmmppmppmpm](rmmmmmmppmppmpm.md): linear.
- [rmmmmmmppmppmpp](rmmmmmmppmppmpp.md): linear.
- [rmmmmmmppmpppm](rmmmmmmppmpppm.md): area.
- [rmmmmmmppmppppm](rmmmmmmppmppppm.md): linear.
- [rmmmmmmppmppppp](rmmmmmmppmppppp.md): area.
- [rmmmmmmppp](rmmmmmmppp.md): linear.
- [rmmmmmpmmm](rmmmmmpmmm.md): physical.
- [rmmmmmpmmp](rmmmmmpmmp.md): linear.
- [rmmmmmpmpm](rmmmmmpmpm.md): physical.
- [rmmmmmpmpp](rmmmmmpmpp.md): linear.
- [rmmmmmpp](rmmmmmpp.md): linear.
- [rmmmmp](rmmmmp.md): physical.
- [rmmmp](rmmmp.md): physical.
- [rmmpmmm](rmmpmmm.md): physical.
- [rmmpmmp](rmmpmmp.md): physical.
- [rmmpmpm](rmmpmpm.md): physical.
- [rmmpmpp](rmmpmpp.md): physical.
- [rmmppm](rmmppm.md): physical.
- [rmmppp](rmmppp.md): physical.
- [rmpmmm](rmpmmm.md): physical.
- [rmpmmp](rmpmmp.md): physical.
- [rmpmpm](rmpmpm.md): physical.
- [rmpmppm](rmpmppm.md): physical.
- [rmpmpppmm](rmpmpppmm.md): physical.
- [rmpmpppmp](rmpmpppmp.md): physical.
- [rmpmpppp](rmpmpppp.md): physical.
- [rmppm](rmppm.md): physical.
- [rmpppm](rmpppm.md): physical.
- [rmpppp](rmpppp.md): physical.
- [rpmmm](rpmmm.md): physical.
- [rpmmp](rpmmp.md): physical.
- [rpmp](rpmp.md): physical.
- [rppm](rppm.md): physical.
- [rpppm](rpppm.md): physical.
- [rpppp](rpppp.md): physical.
