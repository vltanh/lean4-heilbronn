# C1 BIIRL literal cover

```c1-proof-metadata
{"count":[1,2,1,0,1],"threshold":"93/1000","complete":true,"openCount":0,"counts":{"split":152,"physical":113,"area":26,"geometry":14},"commonBounds":[["root-coordinate-lp.json","global-coordinate-1.md",20],["global-coordinate-2.json","global-coordinate-2.md",17]],"domain":"BIIRL"}
```

```c1-tree
["root",{"kind":"split","triangle":"CZR","id":"root","assign":{}},"rootm","rootp"]
["rootm",{"kind":"split","triangle":"HZQ","id":"rootm","assign":{"CZR":-1}},"rootmm","rootmp"]
["rootmm",{"kind":"split","triangle":"DZP","id":"rootmm","assign":{"CZR":-1,"HZQ":-1}},"rootmmm","rootmmp"]
["rootmmm",{"kind":"split","triangle":"HZP","id":"rootmmm","assign":{"CZR":-1,"HZQ":-1,"DZP":-1}},"rootmmmm","rootmmmp"]
["rootmmmp",{"kind":"split","triangle":"FZP","id":"rootmmmp","assign":{"CZR":-1,"HZQ":-1,"DZP":-1,"HZP":1}},"rootmmmpm","rootmmmpp"]
["rootmmp",{"kind":"split","triangle":"OYZ","id":"rootmmp","assign":{"CZR":-1,"HZQ":-1,"DZP":1}},"rootmmpm","rootmmpp"]
["rootmmpm",{"kind":"split","triangle":"HZP","id":"rootmmpm","assign":{"CZR":-1,"HZQ":-1,"DZP":1,"OYZ":-1}},"rootmmpmm","rootmmpmp"]
["rootmmpp",{"kind":"split","triangle":"HZP","id":"rootmmpp","assign":{"CZR":-1,"HZQ":-1,"DZP":1,"OYZ":1}},"rootmmppm","rootmmppp"]
["rootmp",{"kind":"split","triangle":"YPR","id":"rootmp","assign":{"CZR":-1,"HZQ":1}},"rootmpm","rootmpp"]
["rootmpp",{"kind":"split","triangle":"CZP","id":"rootmpp","assign":{"CZR":-1,"HZQ":1,"YPR":1}},"rootmppm","rootmppp"]
["rootmppm",{"kind":"split","triangle":"FZP","id":"rootmppm","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1}},"rootmppmm","rootmppmp"]
["rootmppmm",{"kind":"split","triangle":"HDP","id":"rootmppmm","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":-1}},"rootmppmmm","rootmppmmp"]
["rootmppmmm",{"kind":"split","triangle":"OFP","id":"rootmppmmm","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":-1,"HDP":-1}},"rootmppmmmm","rootmppmmmp"]
["rootmppmmmp",{"kind":"split","triangle":"OYZ","id":"rootmppmmmp","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":-1,"HDP":-1,"OFP":1}},"rootmppmmmpm","rootmppmmmpp"]
["rootmppmmp",{"kind":"split","triangle":"OYZ","id":"rootmppmmp","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":-1,"HDP":1}},"rootmppmmpm","rootmppmmpp"]
["rootmppmmpm",{"kind":"split","triangle":"DYZ","id":"rootmppmmpm","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":-1,"HDP":1,"OYZ":-1}},"rootmppmmpmm","rootmppmmpmp"]
["rootmppmmpmp",{"kind":"split","triangle":"FYP","id":"rootmppmmpmp","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":-1,"HDP":1,"OYZ":-1,"DYZ":1}},"rootmppmmpmpm","rootmppmmpmpp"]
["rootmppmp",{"kind":"split","triangle":"DYZ","id":"rootmppmp","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":1}},"rootmppmpm","rootmppmpp"]
["rootmppmpm",{"kind":"split","triangle":"ODY","id":"rootmppmpm","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":1,"DYZ":-1}},"rootmppmpmm","rootmppmpmp"]
["rootmppmpp",{"kind":"split","triangle":"OYR","id":"rootmppmpp","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":1,"DYZ":1}},"rootmppmppm","rootmppmppp"]
["rootmppmppp",{"kind":"split","triangle":"HDP","id":"rootmppmppp","assign":{"CZR":-1,"HZQ":1,"YPR":1,"CZP":-1,"FZP":1,"DYZ":1,"OYR":1}},"rootmppmpppm","rootmppmpppp"]
["rootp",{"kind":"split","triangle":"CPR","id":"rootp","assign":{"CZR":1}},"rootpm","rootpp"]
["rootpm",{"kind":"split","triangle":"HDZ","id":"rootpm","assign":{"CZR":1,"CPR":-1}},"rootpmm","rootpmp"]
["rootpmm",{"kind":"split","triangle":"OYP","id":"rootpmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1}},"rootpmmm","rootpmmp"]
["rootpmmm",{"kind":"split","triangle":"HPQ","id":"rootpmmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":-1}},"rootpmmmm","rootpmmmp"]
["rootpmmmm",{"kind":"split","triangle":"ZPQ","id":"rootpmmmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":-1,"HPQ":-1}},"rootpmmmmm","rootpmmmmp"]
["rootpmmmmm",{"kind":"split","triangle":"YZQ","id":"rootpmmmmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":-1,"HPQ":-1,"ZPQ":-1}},"rootpmmmmmm","rootpmmmmmp"]
["rootpmmmmmp",{"kind":"split","triangle":"HDP","id":"rootpmmmmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":-1,"HPQ":-1,"ZPQ":-1,"YZQ":1}},"rootpmmmmmpm","rootpmmmmmpp"]
["rootpmmmmp",{"kind":"split","triangle":"HZP","id":"rootpmmmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":-1,"HPQ":-1,"ZPQ":1}},"rootpmmmmpm","rootpmmmmpp"]
["rootpmmmmpp",{"kind":"split","triangle":"OFP","id":"rootpmmmmpp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":-1,"HPQ":-1,"ZPQ":1,"HZP":1}},"rootpmmmmppm","rootpmmmmppp"]
["rootpmmmp",{"kind":"split","triangle":"ZPQ","id":"rootpmmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":-1,"HPQ":1}},"rootpmmmpm","rootpmmmpp"]
["rootpmmp",{"kind":"split","triangle":"ODY","id":"rootpmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1}},"rootpmmpm","rootpmmpp"]
["rootpmmpm",{"kind":"split","triangle":"YPR","id":"rootpmmpm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1}},"rootpmmpmm","rootpmmpmp"]
["rootpmmpmm",{"kind":"split","triangle":"HPQ","id":"rootpmmpmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1}},"rootpmmpmmm","rootpmmpmmp"]
["rootpmmpmmm",{"kind":"split","triangle":"HZP","id":"rootpmmpmmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":-1}},"rootpmmpmmmm","rootpmmpmmmp"]
["rootpmmpmmmp",{"kind":"split","triangle":"DYZ","id":"rootpmmpmmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":-1,"HZP":1}},"rootpmmpmmmpm","rootpmmpmmmpp"]
["rootpmmpmmmpm",{"kind":"split","triangle":"ODZ","id":"rootpmmpmmmpm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":-1,"HZP":1,"DYZ":-1}},"rootpmmpmmmpmm","rootpmmpmmmpmp"]
["rootpmmpmmmpmp",{"kind":"split","triangle":"OFZ","id":"rootpmmpmmmpmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":-1,"HZP":1,"DYZ":-1,"ODZ":1}},"rootpmmpmmmpmpm","rootpmmpmmmpmpp"]
["rootpmmpmmmpmpm",{"kind":"split","triangle":"OFP","id":"rootpmmpmmmpmpm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":-1,"HZP":1,"DYZ":-1,"ODZ":1,"OFZ":-1}},"rootpmmpmmmpmpmm","rootpmmpmmmpmpmp"]
["rootpmmpmmmpmpmp",{"kind":"split","triangle":"ZPQ","id":"rootpmmpmmmpmpmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":-1,"HZP":1,"DYZ":-1,"ODZ":1,"OFZ":-1,"OFP":1}},"rootpmmpmmmpmpmpm","rootpmmpmmmpmpmpp"]
["rootpmmpmmp",{"kind":"split","triangle":"HZP","id":"rootpmmpmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":1}},"rootpmmpmmpm","rootpmmpmmpp"]
["rootpmmpmmpm",{"kind":"split","triangle":"DZP","id":"rootpmmpmmpm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":1,"HZP":-1}},"rootpmmpmmpmm","rootpmmpmmpmp"]
["rootpmmpmmpmm",{"kind":"split","triangle":"ODZ","id":"rootpmmpmmpmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":-1,"HPQ":1,"HZP":-1,"DZP":-1}},"rootpmmpmmpmmm","rootpmmpmmpmmp"]
["rootpmmpmp",{"kind":"split","triangle":"CFZ","id":"rootpmmpmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1}},"rootpmmpmpm","rootpmmpmpp"]
["rootpmmpmpm",{"kind":"split","triangle":"FYP","id":"rootpmmpmpm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":-1}},"rootpmmpmpmm","rootpmmpmpmp"]
["rootpmmpmpmm",{"kind":"split","triangle":"HZP","id":"rootpmmpmpmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":-1,"FYP":-1}},"rootpmmpmpmmm","rootpmmpmpmmp"]
["rootpmmpmpmmm",{"kind":"split","triangle":"ODZ","id":"rootpmmpmpmmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":-1,"FYP":-1,"HZP":-1}},"rootpmmpmpmmmm","rootpmmpmpmmmp"]
["rootpmmpmpp",{"kind":"split","triangle":"HPQ","id":"rootpmmpmpp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":1}},"rootpmmpmppm","rootpmmpmppp"]
["rootpmmpmppm",{"kind":"split","triangle":"HZP","id":"rootpmmpmppm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":1,"HPQ":-1}},"rootpmmpmppmm","rootpmmpmppmp"]
["rootpmmpmppmp",{"kind":"split","triangle":"ODZ","id":"rootpmmpmppmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":1,"HPQ":-1,"HZP":1}},"rootpmmpmppmpm","rootpmmpmppmpp"]
["rootpmmpmppp",{"kind":"split","triangle":"DZP","id":"rootpmmpmppp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":1,"HPQ":1}},"rootpmmpmpppm","rootpmmpmpppp"]
["rootpmmpmpppm",{"kind":"split","triangle":"ODZ","id":"rootpmmpmpppm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":-1,"YPR":1,"CFZ":1,"HPQ":1,"DZP":-1}},"rootpmmpmpppmm","rootpmmpmpppmp"]
["rootpmmpp",{"kind":"split","triangle":"OYZ","id":"rootpmmpp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1}},"rootpmmppm","rootpmmppp"]
["rootpmmppm",{"kind":"split","triangle":"ZPQ","id":"rootpmmppm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1}},"rootpmmppmm","rootpmmppmp"]
["rootpmmppmm",{"kind":"split","triangle":"YZQ","id":"rootpmmppmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":-1}},"rootpmmppmmm","rootpmmppmmp"]
["rootpmmppmmp",{"kind":"split","triangle":"HZP","id":"rootpmmppmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":-1,"YZQ":1}},"rootpmmppmmpm","rootpmmppmmpp"]
["rootpmmppmmpp",{"kind":"split","triangle":"ODZ","id":"rootpmmppmmpp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":-1,"YZQ":1,"HZP":1}},"rootpmmppmmppm","rootpmmppmmppp"]
["rootpmmppmmppm",{"kind":"split","triangle":"OFY","id":"rootpmmppmmppm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":-1,"YZQ":1,"HZP":1,"ODZ":-1}},"rootpmmppmmppmm","rootpmmppmmppmp"]
["rootpmmppmmppmm",{"kind":"split","triangle":"OFP","id":"rootpmmppmmppmm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":-1,"YZQ":1,"HZP":1,"ODZ":-1,"OFY":-1}},"rootpmmppmmppmmm","rootpmmppmmppmmp"]
["rootpmmppmmppmmp",{"kind":"split","triangle":"HPQ","id":"rootpmmppmmppmmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":-1,"YZQ":1,"HZP":1,"ODZ":-1,"OFY":-1,"OFP":1}},"rootpmmppmmppmmpm","rootpmmppmmppmmpp"]
["rootpmmppmp",{"kind":"split","triangle":"HZP","id":"rootpmmppmp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":1}},"rootpmmppmpm","rootpmmppmpp"]
["rootpmmppmpm",{"kind":"split","triangle":"DZP","id":"rootpmmppmpm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":1,"HZP":-1}},"rootpmmppmpmm","rootpmmppmpmp"]
["rootpmmppmpp",{"kind":"split","triangle":"FZQ","id":"rootpmmppmpp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":1,"HZP":1}},"rootpmmppmppm","rootpmmppmppp"]
["rootpmmppmppm",{"kind":"split","triangle":"ODZ","id":"rootpmmppmppm","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":1,"HZP":1,"FZQ":-1}},"rootpmmppmppmm","rootpmmppmppmp"]
["rootpmmppmppp",{"kind":"split","triangle":"ODZ","id":"rootpmmppmppp","assign":{"CZR":1,"CPR":-1,"HDZ":-1,"OYP":1,"ODY":1,"OYZ":-1,"ZPQ":1,"HZP":1,"FZQ":1}},"rootpmmppmpppm","rootpmmppmpppp"]
["rootpmp",{"kind":"split","triangle":"HPQ","id":"rootpmp","assign":{"CZR":1,"CPR":-1,"HDZ":1}},"rootpmpm","rootpmpp"]
["rootpmpm",{"kind":"split","triangle":"OYP","id":"rootpmpm","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":-1}},"rootpmpmm","rootpmpmp"]
["rootpmpmp",{"kind":"split","triangle":"CFZ","id":"rootpmpmp","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":-1,"OYP":1}},"rootpmpmpm","rootpmpmpp"]
["rootpmpmpm",{"kind":"split","triangle":"ODY","id":"rootpmpmpm","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":-1,"OYP":1,"CFZ":-1}},"rootpmpmpmm","rootpmpmpmp"]
["rootpmpmpp",{"kind":"split","triangle":"ODY","id":"rootpmpmpp","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":-1,"OYP":1,"CFZ":1}},"rootpmpmppm","rootpmpmppp"]
["rootpmpmppm",{"kind":"split","triangle":"FYZ","id":"rootpmpmppm","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":-1,"OYP":1,"CFZ":1,"ODY":-1}},"rootpmpmppmm","rootpmpmppmp"]
["rootpmpmppp",{"kind":"split","triangle":"OFY","id":"rootpmpmppp","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":-1,"OYP":1,"CFZ":1,"ODY":1}},"rootpmpmpppm","rootpmpmpppp"]
["rootpmpmpppm",{"kind":"split","triangle":"OFZ","id":"rootpmpmpppm","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":-1,"OYP":1,"CFZ":1,"ODY":1,"OFY":-1}},"rootpmpmpppmm","rootpmpmpppmp"]
["rootpmpp",{"kind":"split","triangle":"ZQR","id":"rootpmpp","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":1}},"rootpmppm","rootpmppp"]
["rootpmppm",{"kind":"split","triangle":"OYP","id":"rootpmppm","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":1,"ZQR":-1}},"rootpmppmm","rootpmppmp"]
["rootpmppmp",{"kind":"split","triangle":"ODY","id":"rootpmppmp","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":1,"ZQR":-1,"OYP":1}},"rootpmppmpm","rootpmppmpp"]
["rootpmppmpm",{"kind":"split","triangle":"OFP","id":"rootpmppmpm","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":1,"ZQR":-1,"OYP":1,"ODY":-1}},"rootpmppmpmm","rootpmppmpmp"]
["rootpmppmpp",{"kind":"split","triangle":"DZR","id":"rootpmppmpp","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":1,"ZQR":-1,"OYP":1,"ODY":1}},"rootpmppmppm","rootpmppmppp"]
["rootpmppp",{"kind":"split","triangle":"OFP","id":"rootpmppp","assign":{"CZR":1,"CPR":-1,"HDZ":1,"HPQ":1,"ZQR":1}},"rootpmpppm","rootpmpppp"]
["rootpp",{"kind":"split","triangle":"DYZ","id":"rootpp","assign":{"CZR":1,"CPR":1}},"rootppm","rootppp"]
["rootppm",{"kind":"split","triangle":"HDP","id":"rootppm","assign":{"CZR":1,"CPR":1,"DYZ":-1}},"rootppmm","rootppmp"]
["rootppmm",{"kind":"split","triangle":"HZQ","id":"rootppmm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1}},"rootppmmm","rootppmmp"]
["rootppmmm",{"kind":"split","triangle":"FZP","id":"rootppmmm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1}},"rootppmmmm","rootppmmmp"]
["rootppmmmm",{"kind":"split","triangle":"HZP","id":"rootppmmmm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":-1}},"rootppmmmmm","rootppmmmmp"]
["rootppmmmmm",{"kind":"split","triangle":"DZP","id":"rootppmmmmm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":-1,"HZP":-1}},"rootppmmmmmm","rootppmmmmmp"]
["rootppmmmmmp",{"kind":"split","triangle":"FZQ","id":"rootppmmmmmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":-1,"HZP":-1,"DZP":1}},"rootppmmmmmpm","rootppmmmmmpp"]
["rootppmmmmmpp",{"kind":"split","triangle":"ODY","id":"rootppmmmmmpp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":-1,"HZP":-1,"DZP":1,"FZQ":1}},"rootppmmmmmppm","rootppmmmmmppp"]
["rootppmmmmmppp",{"kind":"split","triangle":"OYP","id":"rootppmmmmmppp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":-1,"HZP":-1,"DZP":1,"FZQ":1,"ODY":1}},"rootppmmmmmpppm","rootppmmmmmpppp"]
["rootppmmmmp",{"kind":"split","triangle":"CZP","id":"rootppmmmmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":-1,"HZP":1}},"rootppmmmmpm","rootppmmmmpp"]
["rootppmmmp",{"kind":"split","triangle":"ZQR","id":"rootppmmmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":1}},"rootppmmmpm","rootppmmmpp"]
["rootppmmmpm",{"kind":"split","triangle":"CFZ","id":"rootppmmmpm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":1,"ZQR":-1}},"rootppmmmpmm","rootppmmmpmp"]
["rootppmmmpp",{"kind":"split","triangle":"CFZ","id":"rootppmmmpp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":-1,"FZP":1,"ZQR":1}},"rootppmmmppm","rootppmmmppp"]
["rootppmmp",{"kind":"split","triangle":"ZPR","id":"rootppmmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":1}},"rootppmmpm","rootppmmpp"]
["rootppmmpp",{"kind":"split","triangle":"ZPQ","id":"rootppmmpp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":1,"ZPR":1}},"rootppmmppm","rootppmmppp"]
["rootppmmppm",{"kind":"split","triangle":"CZP","id":"rootppmmppm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":-1,"HZQ":1,"ZPR":1,"ZPQ":-1}},"rootppmmppmm","rootppmmppmp"]
["rootppmp",{"kind":"split","triangle":"OYZ","id":"rootppmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1}},"rootppmpm","rootppmpp"]
["rootppmpm",{"kind":"split","triangle":"ZQR","id":"rootppmpm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":-1}},"rootppmpmm","rootppmpmp"]
["rootppmpmm",{"kind":"split","triangle":"CFZ","id":"rootppmpmm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":-1,"ZQR":-1}},"rootppmpmmm","rootppmpmmp"]
["rootppmpmmp",{"kind":"split","triangle":"CZP","id":"rootppmpmmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":-1,"ZQR":-1,"CFZ":1}},"rootppmpmmpm","rootppmpmmpp"]
["rootppmpmp",{"kind":"split","triangle":"FYP","id":"rootppmpmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":-1,"ZQR":1}},"rootppmpmpm","rootppmpmpp"]
["rootppmpmpm",{"kind":"split","triangle":"CZP","id":"rootppmpmpm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":-1,"ZQR":1,"FYP":-1}},"rootppmpmpmm","rootppmpmpmp"]
["rootppmpmpmp",{"kind":"split","triangle":"PQR","id":"rootppmpmpmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":-1,"ZQR":1,"FYP":-1,"CZP":1}},"rootppmpmpmpm","rootppmpmpmpp"]
["rootppmpmpmpm",{"kind":"split","triangle":"OFY","id":"rootppmpmpmpm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":-1,"ZQR":1,"FYP":-1,"CZP":1,"PQR":-1}},"rootppmpmpmpmm","rootppmpmpmpmp"]
["rootppmpp",{"kind":"split","triangle":"OFP","id":"rootppmpp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1}},"rootppmppm","rootppmppp"]
["rootppmppm",{"kind":"split","triangle":"FYP","id":"rootppmppm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1,"OFP":-1}},"rootppmppmm","rootppmppmp"]
["rootppmppmp",{"kind":"split","triangle":"CZP","id":"rootppmppmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1,"OFP":-1,"FYP":1}},"rootppmppmpm","rootppmppmpp"]
["rootppmppp",{"kind":"split","triangle":"PQR","id":"rootppmppp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1,"OFP":1}},"rootppmpppm","rootppmpppp"]
["rootppmpppm",{"kind":"split","triangle":"CZP","id":"rootppmpppm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1,"OFP":1,"PQR":-1}},"rootppmpppmm","rootppmpppmp"]
["rootppmpppmp",{"kind":"split","triangle":"ZPQ","id":"rootppmpppmp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1,"OFP":1,"PQR":-1,"CZP":1}},"rootppmpppmpm","rootppmpppmpp"]
["rootppmpppmpm",{"kind":"split","triangle":"ODY","id":"rootppmpppmpm","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1,"OFP":1,"PQR":-1,"CZP":1,"ZPQ":-1}},"rootppmpppmpmm","rootppmpppmpmp"]
["rootppmpppmpp",{"kind":"split","triangle":"ODY","id":"rootppmpppmpp","assign":{"CZR":1,"CPR":1,"DYZ":-1,"HDP":1,"OYZ":1,"OFP":1,"PQR":-1,"CZP":1,"ZPQ":1}},"rootppmpppmppm","rootppmpppmppp"]
["rootppp",{"kind":"split","triangle":"ZPR","id":"rootppp","assign":{"CZR":1,"CPR":1,"DYZ":1}},"rootpppm","rootpppp"]
["rootpppm",{"kind":"split","triangle":"ZQR","id":"rootpppm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1}},"rootpppmm","rootpppmp"]
["rootpppmm",{"kind":"split","triangle":"OFY","id":"rootpppmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1}},"rootpppmmm","rootpppmmp"]
["rootpppmmm",{"kind":"split","triangle":"OYP","id":"rootpppmmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1,"OFY":-1}},"rootpppmmmm","rootpppmmmp"]
["rootpppmmmp",{"kind":"split","triangle":"HZP","id":"rootpppmmmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1,"OFY":-1,"OYP":1}},"rootpppmmmpm","rootpppmmmpp"]
["rootpppmmmpm",{"kind":"split","triangle":"FYP","id":"rootpppmmmpm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1,"OFY":-1,"OYP":1,"HZP":-1}},"rootpppmmmpmm","rootpppmmmpmp"]
["rootpppmmmpmm",{"kind":"split","triangle":"ODY","id":"rootpppmmmpmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1,"OFY":-1,"OYP":1,"HZP":-1,"FYP":-1}},"rootpppmmmpmmm","rootpppmmmpmmp"]
["rootpppmmmpmp",{"kind":"split","triangle":"ODY","id":"rootpppmmmpmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1,"OFY":-1,"OYP":1,"HZP":-1,"FYP":1}},"rootpppmmmpmpm","rootpppmmmpmpp"]
["rootpppmmp",{"kind":"split","triangle":"YZP","id":"rootpppmmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1,"OFY":1}},"rootpppmmpm","rootpppmmpp"]
["rootpppmmpp",{"kind":"split","triangle":"HZP","id":"rootpppmmpp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":-1,"OFY":1,"YZP":1}},"rootpppmmppm","rootpppmmppp"]
["rootpppmp",{"kind":"split","triangle":"HZP","id":"rootpppmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":-1,"ZQR":1}},"rootpppmpm","rootpppmpp"]
["rootpppp",{"kind":"split","triangle":"PQR","id":"rootpppp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1}},"rootppppm","rootppppp"]
["rootppppm",{"kind":"split","triangle":"HDP","id":"rootppppm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1}},"rootppppmm","rootppppmp"]
["rootppppmm",{"kind":"split","triangle":"CFP","id":"rootppppmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1}},"rootppppmmm","rootppppmmp"]
["rootppppmmm",{"kind":"split","triangle":"DZP","id":"rootppppmmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":-1}},"rootppppmmmm","rootppppmmmp"]
["rootppppmmmm",{"kind":"split","triangle":"ODY","id":"rootppppmmmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":-1,"DZP":-1}},"rootppppmmmmm","rootppppmmmmp"]
["rootppppmmmmp",{"kind":"split","triangle":"ODZ","id":"rootppppmmmmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":-1,"DZP":-1,"ODY":1}},"rootppppmmmmpm","rootppppmmmmpp"]
["rootppppmmp",{"kind":"split","triangle":"CZP","id":"rootppppmmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":1}},"rootppppmmpm","rootppppmmpp"]
["rootppppmmpm",{"kind":"split","triangle":"DZP","id":"rootppppmmpm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":1,"CZP":-1}},"rootppppmmpmm","rootppppmmpmp"]
["rootppppmmpp",{"kind":"split","triangle":"ODY","id":"rootppppmmpp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":1,"CZP":1}},"rootppppmmppm","rootppppmmppp"]
["rootppppmmppm",{"kind":"split","triangle":"OFP","id":"rootppppmmppm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":1,"CZP":1,"ODY":-1}},"rootppppmmppmm","rootppppmmppmp"]
["rootppppmmppp",{"kind":"split","triangle":"ODZ","id":"rootppppmmppp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":1,"CZP":1,"ODY":1}},"rootppppmmpppm","rootppppmmpppp"]
["rootppppmmpppm",{"kind":"split","triangle":"OYP","id":"rootppppmmpppm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":1,"CZP":1,"ODY":1,"ODZ":-1}},"rootppppmmpppmm","rootppppmmpppmp"]
["rootppppmmpppmm",{"kind":"split","triangle":"ZQR","id":"rootppppmmpppmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":-1,"CFP":1,"CZP":1,"ODY":1,"ODZ":-1,"OYP":-1}},"rootppppmmpppmmm","rootppppmmpppmmp"]
["rootppppmp",{"kind":"split","triangle":"CZP","id":"rootppppmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1}},"rootppppmpm","rootppppmpp"]
["rootppppmpm",{"kind":"split","triangle":"FZP","id":"rootppppmpm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":-1}},"rootppppmpmm","rootppppmpmp"]
["rootppppmpmp",{"kind":"split","triangle":"ODY","id":"rootppppmpmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":-1,"FZP":1}},"rootppppmpmpm","rootppppmpmpp"]
["rootppppmpmpp",{"kind":"split","triangle":"ODZ","id":"rootppppmpmpp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":-1,"FZP":1,"ODY":1}},"rootppppmpmppm","rootppppmpmppp"]
["rootppppmpp",{"kind":"split","triangle":"FZP","id":"rootppppmpp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1}},"rootppppmppm","rootppppmppp"]
["rootppppmppm",{"kind":"split","triangle":"FYP","id":"rootppppmppm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1}},"rootppppmppmm","rootppppmppmp"]
["rootppppmppmm",{"kind":"split","triangle":"ODY","id":"rootppppmppmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":-1}},"rootppppmppmmm","rootppppmppmmp"]
["rootppppmppmmp",{"kind":"split","triangle":"HZQ","id":"rootppppmppmmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":-1,"ODY":1}},"rootppppmppmmpm","rootppppmppmmpp"]
["rootppppmppmmpm",{"kind":"split","triangle":"ZPQ","id":"rootppppmppmmpm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":-1,"ODY":1,"HZQ":-1}},"rootppppmppmmpmm","rootppppmppmmpmp"]
["rootppppmppmmpp",{"kind":"split","triangle":"DPR","id":"rootppppmppmmpp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":-1,"ODY":1,"HZQ":1}},"rootppppmppmmppm","rootppppmppmmppp"]
["rootppppmppmp",{"kind":"split","triangle":"ODY","id":"rootppppmppmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":1}},"rootppppmppmpm","rootppppmppmpp"]
["rootppppmppmpp",{"kind":"split","triangle":"HZQ","id":"rootppppmppmpp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":1,"ODY":1}},"rootppppmppmppm","rootppppmppmppp"]
["rootppppmppmppm",{"kind":"split","triangle":"ZQR","id":"rootppppmppmppm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":-1,"HDP":1,"CZP":1,"FZP":-1,"FYP":1,"ODY":1,"HZQ":-1}},"rootppppmppmppmm","rootppppmppmppmp"]
["rootppppp",{"kind":"split","triangle":"DYP","id":"rootppppp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":1}},"rootpppppm","rootpppppp"]
["rootpppppm",{"kind":"split","triangle":"FZP","id":"rootpppppm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":1,"DYP":-1}},"rootpppppmm","rootpppppmp"]
["rootpppppmm",{"kind":"split","triangle":"CZP","id":"rootpppppmm","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":1,"DYP":-1,"FZP":-1}},"rootpppppmmm","rootpppppmmp"]
["rootpppppmp",{"kind":"split","triangle":"CZP","id":"rootpppppmp","assign":{"CZR":1,"CPR":1,"DYZ":1,"ZPR":1,"PQR":1,"DYP":-1,"FZP":1}},"rootpppppmpm","rootpppppmpp"]
```

```c1-leaves
["rootmmmm","physical","rootmmmm.md"]
["rootmmmpm","physical","rootmmmpm.md"]
["rootmmmpp","physical","rootmmmpp.md"]
["rootmmpmm","area","rootmmpmm.md"]
["rootmmpmp","physical","rootmmpmp.md"]
["rootmmppm","physical","rootmmppm.md"]
["rootmmppp","physical","rootmmppp.md"]
["rootmpm","physical","rootmpm.md"]
["rootmppmmmm","physical","rootmppmmmm.md"]
["rootmppmmmpm","physical","rootmppmmmpm.md"]
["rootmppmmmpp","geometry","rootmppmmmpp.md"]
["rootmppmmpmm","physical","rootmppmmpmm.md"]
["rootmppmmpmpm","physical","rootmppmmpmpm.md"]
["rootmppmmpmpp","physical","rootmppmmpmpp.md"]
["rootmppmmpp","physical","rootmppmmpp.md"]
["rootmppmpmm","physical","rootmppmpmm.md"]
["rootmppmpmp","physical","rootmppmpmp.md"]
["rootmppmppm","physical","rootmppmppm.md"]
["rootmppmpppm","physical","rootmppmpppm.md"]
["rootmppmpppp","physical","rootmppmpppp.md"]
["rootmppp","physical","rootmppp.md"]
["rootpmmmmmm","physical","rootpmmmmmm.md"]
["rootpmmmmmpm","physical","rootpmmmmmpm.md"]
["rootpmmmmmpp","physical","rootpmmmmmpp.md"]
["rootpmmmmpm","physical","rootpmmmmpm.md"]
["rootpmmmmppm","physical","rootpmmmmppm.md"]
["rootpmmmmppp","physical","rootpmmmmppp.md"]
["rootpmmmpm","physical","rootpmmmpm.md"]
["rootpmmmpp","physical","rootpmmmpp.md"]
["rootpmmpmmmm","physical","rootpmmpmmmm.md"]
["rootpmmpmmmpmm","physical","rootpmmpmmmpmm.md"]
["rootpmmpmmmpmpmm","area","rootpmmpmmmpmpmm.md"]
["rootpmmpmmmpmpmpm","physical","rootpmmpmmmpmpmpm.md"]
["rootpmmpmmmpmpmpp","physical","rootpmmpmmmpmpmpp.md"]
["rootpmmpmmmpmpp","area","rootpmmpmmmpmpp.md"]
["rootpmmpmmmpp","physical","rootpmmpmmmpp.md"]
["rootpmmpmmpmmm","physical","rootpmmpmmpmmm.md"]
["rootpmmpmmpmmp","physical","rootpmmpmmpmmp.md"]
["rootpmmpmmpmp","area","rootpmmpmmpmp.md"]
["rootpmmpmmpp","physical","rootpmmpmmpp.md"]
["rootpmmpmpmmmm","physical","rootpmmpmpmmmm.md"]
["rootpmmpmpmmmp","physical","rootpmmpmpmmmp.md"]
["rootpmmpmpmmp","physical","rootpmmpmpmmp.md"]
["rootpmmpmpmp","physical","rootpmmpmpmp.md"]
["rootpmmpmppmm","physical","rootpmmpmppmm.md"]
["rootpmmpmppmpm","physical","rootpmmpmppmpm.md"]
["rootpmmpmppmpp","physical","rootpmmpmppmpp.md"]
["rootpmmpmpppmm","physical","rootpmmpmpppmm.md"]
["rootpmmpmpppmp","physical","rootpmmpmpppmp.md"]
["rootpmmpmpppp","area","rootpmmpmpppp.md"]
["rootpmmppmmm","physical","rootpmmppmmm.md"]
["rootpmmppmmpm","area","rootpmmppmmpm.md"]
["rootpmmppmmppmmm","physical","rootpmmppmmppmmm.md"]
["rootpmmppmmppmmpm","physical","rootpmmppmmppmmpm.md"]
["rootpmmppmmppmmpp","physical","rootpmmppmmppmmpp.md"]
["rootpmmppmmppmp","physical","rootpmmppmmppmp.md"]
["rootpmmppmmppp","area","rootpmmppmmppp.md"]
["rootpmmppmpmm","physical","rootpmmppmpmm.md"]
["rootpmmppmpmp","geometry","rootpmmppmpmp.md"]
["rootpmmppmppmm","physical","rootpmmppmppmm.md"]
["rootpmmppmppmp","physical","rootpmmppmppmp.md"]
["rootpmmppmpppm","physical","rootpmmppmpppm.md"]
["rootpmmppmpppp","physical","rootpmmppmpppp.md"]
["rootpmmppp","physical","rootpmmppp.md"]
["rootpmpmm","physical","rootpmpmm.md"]
["rootpmpmpmm","physical","rootpmpmpmm.md"]
["rootpmpmpmp","physical","rootpmpmpmp.md"]
["rootpmpmppmm","physical","rootpmpmppmm.md"]
["rootpmpmppmp","physical","rootpmpmppmp.md"]
["rootpmpmpppmm","area","rootpmpmpppmm.md"]
["rootpmpmpppmp","geometry","rootpmpmpppmp.md"]
["rootpmpmpppp","geometry","rootpmpmpppp.md"]
["rootpmppmm","physical","rootpmppmm.md"]
["rootpmppmpmm","physical","rootpmppmpmm.md"]
["rootpmppmpmp","physical","rootpmppmpmp.md"]
["rootpmppmppm","physical","rootpmppmppm.md"]
["rootpmppmppp","physical","rootpmppmppp.md"]
["rootpmpppm","physical","rootpmpppm.md"]
["rootpmpppp","physical","rootpmpppp.md"]
["rootppmmmmmm","physical","rootppmmmmmm.md"]
["rootppmmmmmpm","physical","rootppmmmmmpm.md"]
["rootppmmmmmppm","physical","rootppmmmmmppm.md"]
["rootppmmmmmpppm","physical","rootppmmmmmpppm.md"]
["rootppmmmmmpppp","physical","rootppmmmmmpppp.md"]
["rootppmmmmpm","geometry","rootppmmmmpm.md"]
["rootppmmmmpp","physical","rootppmmmmpp.md"]
["rootppmmmpmm","geometry","rootppmmmpmm.md"]
["rootppmmmpmp","physical","rootppmmmpmp.md"]
["rootppmmmppm","geometry","rootppmmmppm.md"]
["rootppmmmppp","physical","rootppmmmppp.md"]
["rootppmmpm","physical","rootppmmpm.md"]
["rootppmmppmm","geometry","rootppmmppmm.md"]
["rootppmmppmp","area","rootppmmppmp.md"]
["rootppmmppp","geometry","rootppmmppp.md"]
["rootppmpmmm","physical","rootppmpmmm.md"]
["rootppmpmmpm","geometry","rootppmpmmpm.md"]
["rootppmpmmpp","area","rootppmpmmpp.md"]
["rootppmpmpmm","physical","rootppmpmpmm.md"]
["rootppmpmpmpmm","area","rootppmpmpmpmm.md"]
["rootppmpmpmpmp","area","rootppmpmpmpmp.md"]
["rootppmpmpmpp","area","rootppmpmpmpp.md"]
["rootppmpmpp","physical","rootppmpmpp.md"]
["rootppmppmm","physical","rootppmppmm.md"]
["rootppmppmpm","physical","rootppmppmpm.md"]
["rootppmppmpp","physical","rootppmppmpp.md"]
["rootppmpppmm","physical","rootppmpppmm.md"]
["rootppmpppmpmm","physical","rootppmpppmpmm.md"]
["rootppmpppmpmp","area","rootppmpppmpmp.md"]
["rootppmpppmppm","physical","rootppmpppmppm.md"]
["rootppmpppmppp","area","rootppmpppmppp.md"]
["rootppmpppp","physical","rootppmpppp.md"]
["rootpppmmmm","physical","rootpppmmmm.md"]
["rootpppmmmpmmm","physical","rootpppmmmpmmm.md"]
["rootpppmmmpmmp","area","rootpppmmmpmmp.md"]
["rootpppmmmpmpm","physical","rootpppmmmpmpm.md"]
["rootpppmmmpmpp","area","rootpppmmmpmpp.md"]
["rootpppmmmpp","physical","rootpppmmmpp.md"]
["rootpppmmpm","area","rootpppmmpm.md"]
["rootpppmmppm","physical","rootpppmmppm.md"]
["rootpppmmppp","physical","rootpppmmppp.md"]
["rootpppmpm","physical","rootpppmpm.md"]
["rootpppmpp","physical","rootpppmpp.md"]
["rootppppmmmmm","geometry","rootppppmmmmm.md"]
["rootppppmmmmpm","physical","rootppppmmmmpm.md"]
["rootppppmmmmpp","area","rootppppmmmmpp.md"]
["rootppppmmmp","area","rootppppmmmp.md"]
["rootppppmmpmm","area","rootppppmmpmm.md"]
["rootppppmmpmp","area","rootppppmmpmp.md"]
["rootppppmmppmm","physical","rootppppmmppmm.md"]
["rootppppmmppmp","physical","rootppppmmppmp.md"]
["rootppppmmpppmmm","physical","rootppppmmpppmmm.md"]
["rootppppmmpppmmp","physical","rootppppmmpppmmp.md"]
["rootppppmmpppmp","physical","rootppppmmpppmp.md"]
["rootppppmmpppp","area","rootppppmmpppp.md"]
["rootppppmpmm","physical","rootppppmpmm.md"]
["rootppppmpmpm","area","rootppppmpmpm.md"]
["rootppppmpmppm","physical","rootppppmpmppm.md"]
["rootppppmpmppp","physical","rootppppmpmppp.md"]
["rootppppmppmmm","area","rootppppmppmmm.md"]
["rootppppmppmmpmm","physical","rootppppmppmmpmm.md"]
["rootppppmppmmpmp","physical","rootppppmppmmpmp.md"]
["rootppppmppmmppm","physical","rootppppmppmmppm.md"]
["rootppppmppmmppp","physical","rootppppmppmmppp.md"]
["rootppppmppmpm","area","rootppppmppmpm.md"]
["rootppppmppmppmm","physical","rootppppmppmppmm.md"]
["rootppppmppmppmp","physical","rootppppmppmppmp.md"]
["rootppppmppmppp","physical","rootppppmppmppp.md"]
["rootppppmppp","geometry","rootppppmppp.md"]
["rootpppppmmm","geometry","rootpppppmmm.md"]
["rootpppppmmp","physical","rootpppppmmp.md"]
["rootpppppmpm","physical","rootpppppmpm.md"]
["rootpppppmpp","geometry","rootpppppmpp.md"]
["rootpppppp","physical","rootpppppp.md"]
```

```c1-open-frontier

```


## Literal contexts

- [global-coordinate-1](global-coordinate-1.md)
- [global-coordinate-2](global-coordinate-2.md)
- [global-final](global-final.md)
- [global-first-metric-0](global-first-metric-0.md)
- [global-first-metric-1](global-first-metric-1.md)
- [global-second-metric-0](global-second-metric-0.md)
- [global-second-metric-1](global-second-metric-1.md)
- [root](root.md)
- [rootm](rootm.md)
- [rootmm](rootmm.md)
- [rootmmm](rootmmm.md)
- [rootmmmm](rootmmmm.md)
- [rootmmmp](rootmmmp.md)
- [rootmmmpm](rootmmmpm.md)
- [rootmmmpp](rootmmmpp.md)
- [rootmmp](rootmmp.md)
- [rootmmpm](rootmmpm.md)
- [rootmmpmm](rootmmpmm.md)
- [rootmmpmp](rootmmpmp.md)
- [rootmmpp](rootmmpp.md)
- [rootmmppm](rootmmppm.md)
- [rootmmppp](rootmmppp.md)
- [rootmp](rootmp.md)
- [rootmpm](rootmpm.md)
- [rootmpp](rootmpp.md)
- [rootmppm](rootmppm.md)
- [rootmppmm](rootmppmm.md)
- [rootmppmmm](rootmppmmm.md)
- [rootmppmmmm](rootmppmmmm.md)
- [rootmppmmmp](rootmppmmmp.md)
- [rootmppmmmpm](rootmppmmmpm.md)
- [rootmppmmmpp](rootmppmmmpp.md)
- [rootmppmmp](rootmppmmp.md)
- [rootmppmmpm](rootmppmmpm.md)
- [rootmppmmpmm](rootmppmmpmm.md)
- [rootmppmmpmp](rootmppmmpmp.md)
- [rootmppmmpmpm](rootmppmmpmpm.md)
- [rootmppmmpmpp](rootmppmmpmpp.md)
- [rootmppmmpp](rootmppmmpp.md)
- [rootmppmp](rootmppmp.md)
- [rootmppmpm](rootmppmpm.md)
- [rootmppmpmm](rootmppmpmm.md)
- [rootmppmpmp](rootmppmpmp.md)
- [rootmppmpp](rootmppmpp.md)
- [rootmppmppm](rootmppmppm.md)
- [rootmppmppp](rootmppmppp.md)
- [rootmppmpppm-metric-0](rootmppmpppm-metric-0.md)
- [rootmppmpppm-metric-1](rootmppmpppm-metric-1.md)
- [rootmppmpppm-metric-2](rootmppmpppm-metric-2.md)
- [rootmppmpppm](rootmppmpppm.md)
- [rootmppmpppp](rootmppmpppp.md)
- [rootmppp](rootmppp.md)
- [rootp](rootp.md)
- [rootpm](rootpm.md)
- [rootpmm](rootpmm.md)
- [rootpmmm](rootpmmm.md)
- [rootpmmmm](rootpmmmm.md)
- [rootpmmmmm](rootpmmmmm.md)
- [rootpmmmmmm](rootpmmmmmm.md)
- [rootpmmmmmp](rootpmmmmmp.md)
- [rootpmmmmmpm](rootpmmmmmpm.md)
- [rootpmmmmmpp](rootpmmmmmpp.md)
- [rootpmmmmp](rootpmmmmp.md)
- [rootpmmmmpm](rootpmmmmpm.md)
- [rootpmmmmpp](rootpmmmmpp.md)
- [rootpmmmmppm](rootpmmmmppm.md)
- [rootpmmmmppp](rootpmmmmppp.md)
- [rootpmmmp](rootpmmmp.md)
- [rootpmmmpm](rootpmmmpm.md)
- [rootpmmmpp](rootpmmmpp.md)
- [rootpmmp](rootpmmp.md)
- [rootpmmpm](rootpmmpm.md)
- [rootpmmpmm](rootpmmpmm.md)
- [rootpmmpmmm](rootpmmpmmm.md)
- [rootpmmpmmmm](rootpmmpmmmm.md)
- [rootpmmpmmmp](rootpmmpmmmp.md)
- [rootpmmpmmmpm](rootpmmpmmmpm.md)
- [rootpmmpmmmpmm](rootpmmpmmmpmm.md)
- [rootpmmpmmmpmp](rootpmmpmmmpmp.md)
- [rootpmmpmmmpmpm](rootpmmpmmmpmpm.md)
- [rootpmmpmmmpmpmm](rootpmmpmmmpmpmm.md)
- [rootpmmpmmmpmpmp](rootpmmpmmmpmpmp.md)
- [rootpmmpmmmpmpmpm](rootpmmpmmmpmpmpm.md)
- [rootpmmpmmmpmpmpp](rootpmmpmmmpmpmpp.md)
- [rootpmmpmmmpmpp](rootpmmpmmmpmpp.md)
- [rootpmmpmmmpp](rootpmmpmmmpp.md)
- [rootpmmpmmp](rootpmmpmmp.md)
- [rootpmmpmmpm](rootpmmpmmpm.md)
- [rootpmmpmmpmm](rootpmmpmmpmm.md)
- [rootpmmpmmpmmm](rootpmmpmmpmmm.md)
- [rootpmmpmmpmmp](rootpmmpmmpmmp.md)
- [rootpmmpmmpmp](rootpmmpmmpmp.md)
- [rootpmmpmmpp](rootpmmpmmpp.md)
- [rootpmmpmp](rootpmmpmp.md)
- [rootpmmpmpm](rootpmmpmpm.md)
- [rootpmmpmpmm](rootpmmpmpmm.md)
- [rootpmmpmpmmm](rootpmmpmpmmm.md)
- [rootpmmpmpmmmm](rootpmmpmpmmmm.md)
- [rootpmmpmpmmmp](rootpmmpmpmmmp.md)
- [rootpmmpmpmmp](rootpmmpmpmmp.md)
- [rootpmmpmpmp](rootpmmpmpmp.md)
- [rootpmmpmpp](rootpmmpmpp.md)
- [rootpmmpmppm](rootpmmpmppm.md)
- [rootpmmpmppmm](rootpmmpmppmm.md)
- [rootpmmpmppmp](rootpmmpmppmp.md)
- [rootpmmpmppmpm](rootpmmpmppmpm.md)
- [rootpmmpmppmpp](rootpmmpmppmpp.md)
- [rootpmmpmppp](rootpmmpmppp.md)
- [rootpmmpmpppm](rootpmmpmpppm.md)
- [rootpmmpmpppmm](rootpmmpmpppmm.md)
- [rootpmmpmpppmp](rootpmmpmpppmp.md)
- [rootpmmpmpppp](rootpmmpmpppp.md)
- [rootpmmpp](rootpmmpp.md)
- [rootpmmppm](rootpmmppm.md)
- [rootpmmppmm](rootpmmppmm.md)
- [rootpmmppmmm](rootpmmppmmm.md)
- [rootpmmppmmp](rootpmmppmmp.md)
- [rootpmmppmmpm](rootpmmppmmpm.md)
- [rootpmmppmmpp](rootpmmppmmpp.md)
- [rootpmmppmmppm](rootpmmppmmppm.md)
- [rootpmmppmmppmm](rootpmmppmmppmm.md)
- [rootpmmppmmppmmm](rootpmmppmmppmmm.md)
- [rootpmmppmmppmmp](rootpmmppmmppmmp.md)
- [rootpmmppmmppmmpm](rootpmmppmmppmmpm.md)
- [rootpmmppmmppmmpp](rootpmmppmmppmmpp.md)
- [rootpmmppmmppmp](rootpmmppmmppmp.md)
- [rootpmmppmmppp](rootpmmppmmppp.md)
- [rootpmmppmp](rootpmmppmp.md)
- [rootpmmppmpm](rootpmmppmpm.md)
- [rootpmmppmpmm](rootpmmppmpmm.md)
- [rootpmmppmpmp](rootpmmppmpmp.md)
- [rootpmmppmpp](rootpmmppmpp.md)
- [rootpmmppmppm](rootpmmppmppm.md)
- [rootpmmppmppmm](rootpmmppmppmm.md)
- [rootpmmppmppmp](rootpmmppmppmp.md)
- [rootpmmppmppp](rootpmmppmppp.md)
- [rootpmmppmpppm](rootpmmppmpppm.md)
- [rootpmmppmpppp](rootpmmppmpppp.md)
- [rootpmmppp](rootpmmppp.md)
- [rootpmp](rootpmp.md)
- [rootpmpm](rootpmpm.md)
- [rootpmpmm](rootpmpmm.md)
- [rootpmpmp](rootpmpmp.md)
- [rootpmpmpm](rootpmpmpm.md)
- [rootpmpmpmm](rootpmpmpmm.md)
- [rootpmpmpmp](rootpmpmpmp.md)
- [rootpmpmpp](rootpmpmpp.md)
- [rootpmpmppm](rootpmpmppm.md)
- [rootpmpmppmm](rootpmpmppmm.md)
- [rootpmpmppmp](rootpmpmppmp.md)
- [rootpmpmppp](rootpmpmppp.md)
- [rootpmpmpppm](rootpmpmpppm.md)
- [rootpmpmpppmm](rootpmpmpppmm.md)
- [rootpmpmpppmp](rootpmpmpppmp.md)
- [rootpmpmpppp](rootpmpmpppp.md)
- [rootpmpp](rootpmpp.md)
- [rootpmppm](rootpmppm.md)
- [rootpmppmm](rootpmppmm.md)
- [rootpmppmp](rootpmppmp.md)
- [rootpmppmpm](rootpmppmpm.md)
- [rootpmppmpmm](rootpmppmpmm.md)
- [rootpmppmpmp](rootpmppmpmp.md)
- [rootpmppmpp](rootpmppmpp.md)
- [rootpmppmppm](rootpmppmppm.md)
- [rootpmppmppp](rootpmppmppp.md)
- [rootpmppp](rootpmppp.md)
- [rootpmpppm](rootpmpppm.md)
- [rootpmpppp](rootpmpppp.md)
- [rootpp](rootpp.md)
- [rootppm](rootppm.md)
- [rootppmm](rootppmm.md)
- [rootppmmm](rootppmmm.md)
- [rootppmmmm](rootppmmmm.md)
- [rootppmmmmm](rootppmmmmm.md)
- [rootppmmmmmm](rootppmmmmmm.md)
- [rootppmmmmmp](rootppmmmmmp.md)
- [rootppmmmmmpm](rootppmmmmmpm.md)
- [rootppmmmmmpp](rootppmmmmmpp.md)
- [rootppmmmmmppm](rootppmmmmmppm.md)
- [rootppmmmmmppp](rootppmmmmmppp.md)
- [rootppmmmmmpppm](rootppmmmmmpppm.md)
- [rootppmmmmmpppp](rootppmmmmmpppp.md)
- [rootppmmmmp](rootppmmmmp.md)
- [rootppmmmmpm](rootppmmmmpm.md)
- [rootppmmmmpp](rootppmmmmpp.md)
- [rootppmmmp](rootppmmmp.md)
- [rootppmmmpm](rootppmmmpm.md)
- [rootppmmmpmm](rootppmmmpmm.md)
- [rootppmmmpmp](rootppmmmpmp.md)
- [rootppmmmpp](rootppmmmpp.md)
- [rootppmmmppm](rootppmmmppm.md)
- [rootppmmmppp](rootppmmmppp.md)
- [rootppmmp](rootppmmp.md)
- [rootppmmpm](rootppmmpm.md)
- [rootppmmpp](rootppmmpp.md)
- [rootppmmppm](rootppmmppm.md)
- [rootppmmppmm](rootppmmppmm.md)
- [rootppmmppmp](rootppmmppmp.md)
- [rootppmmppp](rootppmmppp.md)
- [rootppmp](rootppmp.md)
- [rootppmpm](rootppmpm.md)
- [rootppmpmm](rootppmpmm.md)
- [rootppmpmmm](rootppmpmmm.md)
- [rootppmpmmp](rootppmpmmp.md)
- [rootppmpmmpm](rootppmpmmpm.md)
- [rootppmpmmpp](rootppmpmmpp.md)
- [rootppmpmp](rootppmpmp.md)
- [rootppmpmpm](rootppmpmpm.md)
- [rootppmpmpmm](rootppmpmpmm.md)
- [rootppmpmpmp](rootppmpmpmp.md)
- [rootppmpmpmpm](rootppmpmpmpm.md)
- [rootppmpmpmpmm](rootppmpmpmpmm.md)
- [rootppmpmpmpmp](rootppmpmpmpmp.md)
- [rootppmpmpmpp](rootppmpmpmpp.md)
- [rootppmpmpp](rootppmpmpp.md)
- [rootppmpp](rootppmpp.md)
- [rootppmppm](rootppmppm.md)
- [rootppmppmm](rootppmppmm.md)
- [rootppmppmp](rootppmppmp.md)
- [rootppmppmpm](rootppmppmpm.md)
- [rootppmppmpp](rootppmppmpp.md)
- [rootppmppp](rootppmppp.md)
- [rootppmpppm](rootppmpppm.md)
- [rootppmpppmm](rootppmpppmm.md)
- [rootppmpppmp](rootppmpppmp.md)
- [rootppmpppmpm](rootppmpppmpm.md)
- [rootppmpppmpmm](rootppmpppmpmm.md)
- [rootppmpppmpmp](rootppmpppmpmp.md)
- [rootppmpppmpp](rootppmpppmpp.md)
- [rootppmpppmppm](rootppmpppmppm.md)
- [rootppmpppmppp](rootppmpppmppp.md)
- [rootppmpppp](rootppmpppp.md)
- [rootppp](rootppp.md)
- [rootpppm](rootpppm.md)
- [rootpppmm](rootpppmm.md)
- [rootpppmmm](rootpppmmm.md)
- [rootpppmmmm](rootpppmmmm.md)
- [rootpppmmmp](rootpppmmmp.md)
- [rootpppmmmpm](rootpppmmmpm.md)
- [rootpppmmmpmm](rootpppmmmpmm.md)
- [rootpppmmmpmmm](rootpppmmmpmmm.md)
- [rootpppmmmpmmp](rootpppmmmpmmp.md)
- [rootpppmmmpmp](rootpppmmmpmp.md)
- [rootpppmmmpmpm](rootpppmmmpmpm.md)
- [rootpppmmmpmpp](rootpppmmmpmpp.md)
- [rootpppmmmpp](rootpppmmmpp.md)
- [rootpppmmp](rootpppmmp.md)
- [rootpppmmpm](rootpppmmpm.md)
- [rootpppmmpp](rootpppmmpp.md)
- [rootpppmmppm](rootpppmmppm.md)
- [rootpppmmppp](rootpppmmppp.md)
- [rootpppmp](rootpppmp.md)
- [rootpppmpm](rootpppmpm.md)
- [rootpppmpp](rootpppmpp.md)
- [rootpppp](rootpppp.md)
- [rootppppm](rootppppm.md)
- [rootppppmm](rootppppmm.md)
- [rootppppmmm](rootppppmmm.md)
- [rootppppmmmm](rootppppmmmm.md)
- [rootppppmmmmm](rootppppmmmmm.md)
- [rootppppmmmmp](rootppppmmmmp.md)
- [rootppppmmmmpm](rootppppmmmmpm.md)
- [rootppppmmmmpp](rootppppmmmmpp.md)
- [rootppppmmmp](rootppppmmmp.md)
- [rootppppmmp](rootppppmmp.md)
- [rootppppmmpm](rootppppmmpm.md)
- [rootppppmmpmm](rootppppmmpmm.md)
- [rootppppmmpmp](rootppppmmpmp.md)
- [rootppppmmpp](rootppppmmpp.md)
- [rootppppmmppm](rootppppmmppm.md)
- [rootppppmmppmm](rootppppmmppmm.md)
- [rootppppmmppmp](rootppppmmppmp.md)
- [rootppppmmppp](rootppppmmppp.md)
- [rootppppmmpppm](rootppppmmpppm.md)
- [rootppppmmpppmm](rootppppmmpppmm.md)
- [rootppppmmpppmmm](rootppppmmpppmmm.md)
- [rootppppmmpppmmp](rootppppmmpppmmp.md)
- [rootppppmmpppmp](rootppppmmpppmp.md)
- [rootppppmmpppp](rootppppmmpppp.md)
- [rootppppmp](rootppppmp.md)
- [rootppppmpm](rootppppmpm.md)
- [rootppppmpmm](rootppppmpmm.md)
- [rootppppmpmp](rootppppmpmp.md)
- [rootppppmpmpm](rootppppmpmpm.md)
- [rootppppmpmpp](rootppppmpmpp.md)
- [rootppppmpmppm](rootppppmpmppm.md)
- [rootppppmpmppp](rootppppmpmppp.md)
- [rootppppmpp](rootppppmpp.md)
- [rootppppmppm](rootppppmppm.md)
- [rootppppmppmm](rootppppmppmm.md)
- [rootppppmppmmm](rootppppmppmmm.md)
- [rootppppmppmmp](rootppppmppmmp.md)
- [rootppppmppmmpm](rootppppmppmmpm.md)
- [rootppppmppmmpmm](rootppppmppmmpmm.md)
- [rootppppmppmmpmp](rootppppmppmmpmp.md)
- [rootppppmppmmpp](rootppppmppmmpp.md)
- [rootppppmppmmppm](rootppppmppmmppm.md)
- [rootppppmppmmppp](rootppppmppmmppp.md)
- [rootppppmppmp](rootppppmppmp.md)
- [rootppppmppmpm](rootppppmppmpm.md)
- [rootppppmppmpp](rootppppmppmpp.md)
- [rootppppmppmppm](rootppppmppmppm.md)
- [rootppppmppmppmm](rootppppmppmppmm.md)
- [rootppppmppmppmp](rootppppmppmppmp.md)
- [rootppppmppmppp](rootppppmppmppp.md)
- [rootppppmppp](rootppppmppp.md)
- [rootppppp](rootppppp.md)
- [rootpppppm](rootpppppm.md)
- [rootpppppmm](rootpppppmm.md)
- [rootpppppmmm](rootpppppmmm.md)
- [rootpppppmmp](rootpppppmmp.md)
- [rootpppppmp](rootpppppmp.md)
- [rootpppppmpm](rootpppppmpm.md)
- [rootpppppmpp](rootpppppmpp.md)
- [rootpppppp](rootpppppp.md)
