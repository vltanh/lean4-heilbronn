# The HCR triangle in the adjacent-cap octagon

Apply the formulas of [the area bound](N6_ADJACENT_CAPS_LINE.md),
Section 9. The initial box is `[.372,.907] × [.372,.907] × [.093,1]`
in order `c,e,t`. A letter halves its coordinate interval at the
rational midpoint. Lowercase chooses the lower half and uppercase
the upper half. Both children retain the cut endpoint. Both siblings
at every cut can be checked by replacing terminal siblings by their
common prefix until the empty prefix remains.

Each trace is the list of up to three new ceilings for \(h\), in
ten-thousandths. A dash keeps the currently established ceiling.
The word **none** denotes an empty trace.
Every strictly improved ceiling has nonnegative polynomial (11)
on the interval for \(f\) of that step. A numerical result is an
integer upper bound for \(10^9[HCR]\) and is strictly less than
694000000. The words `bottom`, `top`, `height` and `gap`
denote the four infeasibility tests in Section 9.

| Path | Ceilings | Result | Path | Ceilings | Result |
| --- | --- | ---: | --- | --- | ---: |
| `CETC` | 9889 · — · — | 674882075 | `CETcTEC` | 9115 · — · — | 651833608 |
| `CETcTEc` | 9115 · — · — | 679562881 | `CETcTe` | 9889 · — · — | 648148286 |
| `CETctCEETE` | none | top | `CETctCEETe` | 8627 · 8581 · 8577 | 682412489 |
| `CETctCEEt` | none | top | `CETctCEe` | 8708 · 8682 · 8680 | 659581279 |
| `CETctCe` | 8882 · — · — | 613801411 | `CETctcTECT` | 8705 · 8677 · 8675 | 692636849 |
| `CETctcTECtE` | 8476 · 8403 | top | `CETctcTECte` | 8558 · 8510 · 8506 | 670785408 |
| `CETctcTEcTEE` | none | top | `CETctcTEcTEe` | 8620 · 8569 · 8563 | 675748454 |
| `CETctcTEcTe` | 8704 · 8675 · 8672 | 657176556 | `CETctcTEctE` | 8472 | top |
| `CETctcTEcte` | 8556 · 8506 · 8501 | 687812116 | `CETctcTe` | 8882 · — · — | 673257240 |
| `CETctctEE` | none | top | `CETctctEeC` | 8381 · 8302 · 8291 | 663753564 |
| `CETctctEec` | 8377 · 8295 · 8283 | 690352693 | `CETctcte` | 8546 · 8517 · 8515 | 670943104 |
| `CEtE` | 7912 | top | `CEteC` | 8069 · 7952 · 7937 | 509309225 |
| `CEtec` | 8059 · 7929 · 7908 | 683519767 | `CeTC` | — · — · — | 434776500 |
| `CeTc` | — · — · — | 655514180 | `Cet` | 8384 · 8373 · — | 647889794 |
| `cTCETECT` | 9115 · — · — | 503148602 | `cTCETECtC` | 8934 · 8927 · 8926 | 669368454 |
| `cTCETECtc` | 8934 · 8925 · — | 682558384 | `cTCETEcT` | 9115 · — · — | 541616053 |
| `cTCETEctCT` | 8933 · 8924 · 8923 | 617409437 | `cTCETEctCt` | 8825 · 8805 · 8803 | 690165795 |
| `cTCETEctcT` | 8932 · 8922 · 8921 | 635104613 | `cTCETEctctEE` | none | top |
| `cTCETEctctEe` | 8733 · 8688 · 8680 | 678878824 | `cTCETEctcte` | 8823 · 8802 · 8798 | 666681892 |
| `cTCETeEC` | 9382 · — · — | 633169941 | `cTCETeEc` | 9382 · — · — | 671629308 |
| `cTCETee` | 9889 · — · — | 680344948 | `cTCEtCTECTEE` | none | top |
| `cTCEtCTECTEe` | 8617 · 8564 · 8557 | 685906211 | `cTCEtCTECTe` | 8702 · 8671 · 8668 | 668895636 |
| `cTCEtCTECtE` | 8468 | top | `cTCEtCTECteC` | 8553 · 8501 · 8494 | 682811771 |
| `cTCEtCTECtec` | 8552 · 8498 · 8491 | 687420046 | `cTCEtCTEcTEE` | none | top |
| `cTCEtCTEcTEeE` | 8592 | top | `cTCEtCTEcTEee` | 8614 · 8557 · 8549 | 685805760 |
| `cTCEtCTEcTe` | 8700 · 8667 · 8663 | 680545227 | `cTCEtCTEctE` | 8464 | top |
| `cTCEtCTEcteC` | 8550 · 8495 · 8487 | 691977223 | `cTCEtCTEctecT` | 8548 · 8491 · 8482 | 681828870 |
| `cTCEtCTEctect` | 8462 · 8388 · 8375 | 691905376 | `cTCEtCTeC` | 8882 · — · — | 669530890 |
| `cTCEtCTec` | 8882 · — · — | 682517309 | `cTCEtCtTEE` | none | top |
| `cTCEtCtTEeCC` | 8374 · 8287 · 8273 | 691669850 | `cTCEtCtTEeCcT` | 8371 · 8283 · 8267 | 691694798 |
| `cTCEtCtTEeCctE` | 8224 · 8091 | top | `cTCEtCtTEeCcte` | 8266 · 8152 · 8129 | 675596656 |
| `cTCEtCtTEecCTT` | 8369 · 8277 · 8260 | 689283926 | `cTCEtCtTEecCTt` | 8318 · 8214 · 8193 | 692651237 |
| `cTCEtCtTEecCtE` | 8221 · 8084 | top | `cTCEtCtTEecCte` | 8264 · 8146 · 8121 | 680355560 |
| `cTCEtCtTEeccTT` | 8367 · 8272 · 8253 | 693137145 | `cTCEtCtTEeccTtE` | 8272 · 8146 · 8117 | 693274763 |
| `cTCEtCtTEeccTte` | 8315 · 8208 · 8185 | 676474731 | `cTCEtCtTEecctE` | 8217 · 8076 | top |
| `cTCEtCtTEeccte` | 8261 · 8139 · 8111 | 683937009 | `cTCEtCtTeC` | 8543 · 8512 · 8508 | 678683482 |
| `cTCEtCtTec` | 8541 · 8508 · 8503 | 689993367 | `cTCEtCttEE` | none | top |
| `cTCEtCttEeCE` | 8110 | top | `cTCEtCttEeCe` | 8152 · 8008 · 7977 | 679148682 |
| `cTCEtCttEecE` | 8103 | top | `cTCEtCttEeceC` | 8146 · 7993 · 7955 | 678327065 |
| `cTCEtCttEecec` | 8143 · 7984 · 7942 | 686591849 | `cTCEtCtteC` | 8322 · 8247 · 8235 | 667928989 |
| `cTCEtCttec` | 8318 · 8239 · 8224 | 688227291 | `cTCEtcTECTEE` | none | top |
| `cTCEtcTECTEeE` | 8588 | top | `cTCEtcTECTEeeC` | 8610 · 8549 · 8539 | 681975147 |
| `cTCEtcTECTEeec` | 8607 · 8545 · 8533 | 687135110 | `cTCEtcTECTe` | 8697 · 8663 · 8657 | 692115301 |
| `cTCEtcTECtE` | 8459 | top | `cTCEtcTECteCT` | 8546 · 8487 · 8477 | 686728797 |
| `cTCEtcTECteCtE` | 8416 · 8323 · 8304 | 693279813 | `cTCEtcTECteCte` | 8460 · 8383 · 8368 | 676974864 |
| `cTCEtcTECtecT` | 8544 · 8483 · 8471 | 691565924 | `cTCEtcTECtectEC` | 8413 · 8317 · 8295 | 690339779 |
| `cTCEtcTECtectEc` | 8411 · 8313 · 8289 | 692260168 | `cTCEtcTECtecte` | 8457 · 8378 · 8361 | 681727128 |
| `cTCEtcTEcTEE` | none | top | `cTCEtcTEcTEeCE` | 8582 | top |
| `cTCEtcTEcTEeCe` | 8605 · 8539 · 8526 | 692227258 | `cTCEtcTEcTEecE` | 8579 | top |
| `cTCEtcTEcTEeceT` | 8602 · 8533 · 8517 | 678149410 | `cTCEtcTEcTEecet` | 8529 · 8445 · 8424 | 692600625 |
| `cTCEtcTEcTeC` | 8694 · 8656 · 8650 | 689134105 | `cTCEtcTEcTecT` | 8693 · 8653 · 8645 | 675740786 |
| `cTCEtcTEcTect` | 8619 · 8567 · 8556 | 690389701 | `cTCEtcTEctE` | 8452 | top |
| `cTCEtcTEcteCTE` | 8497 · 8417 · 8398 | 693183529 | `cTCEtcTEcteCTe` | 8542 · 8477 · 8464 | 678306153 |
| `cTCEtcTEcteCtECT` | 8409 · 8309 · 8283 | 687760550 | `cTCEtcTEcteCtECt` | 8362 · 8249 · 8219 | 691167825 |
| `cTCEtcTEcteCtEcT` | 8408 · 8305 · 8277 | 689760254 | `cTCEtcTEcteCtEct` | 8360 · 8245 · 8212 | 692966898 |
| `cTCEtcTEcteCte` | 8454 · 8371 · 8351 | 686312726 | `cTCEtcTEctecTEC` | 8494 · 8409 · 8388 | 690658972 |
| `cTCEtcTEctecTEc` | 8492 · 8405 · 8382 | 692844830 | `cTCEtcTEctecTe` | 8539 · 8471 · 8455 | 683512241 |
| `cTCEtcTEctectEE` | 8383 · 8268 | top | `cTCEtcTEctectEeC` | 8406 · 8300 · 8270 | 689177533 |
| `cTCEtcTEctectEec` | 8404 · 8295 · 8262 | 691097869 | `cTCEtcTEctecte` | 8451 · 8364 · 8340 | 690815462 |
| `cTCEtcTeCT` | 8882 · — · — | 664189285 | `cTCEtcTeCt` | 8722 · 8712 · 8711 | 687623834 |
| `cTCEtcTecT` | 8882 · — · — | 679004260 | `cTCEtcTectEC` | 8632 · 8596 · 8589 | 679648888 |
| `cTCEtcTectEc` | 8630 · 8592 · 8584 | 685405113 | `cTCEtcTecte` | 8721 · 8710 · 8708 | 663832033 |
| `cTCEtctTEE` | none | top | `cTCEtctTEeCCTTE` | 8320 · 8204 · 8177 | 693902711 |
| `cTCEtctTEeCCTTe` | 8364 · 8266 · 8244 | 677730990 | `cTCEtctTEeCCTtEE` | 8246 | top |
| `cTCEtctTEeCCTtEe` | 8268 · 8138 · 8105 | 686912789 | `cTCEtctTEeCCTte` | 8312 · 8200 · 8174 | 680403462 |
| `cTCEtctTEeCCtE` | 8214 | top | `cTCEtctTEeCCte` | 8257 · 8131 · 8099 | 687396202 |
| `cTCEtctTEeCcTTEE` | 8294 | top | `cTCEtctTEeCcTTEe` | 8316 · 8195 · 8164 | 688023212 |
| `cTCEtctTEeCcTTe` | 8361 · 8258 · 8234 | 681954842 | `cTCEtctTEeCcTtEE` | 8242 | top |
| `cTCEtctTEeCcTtEe` | 8264 · 8129 · 8092 | 690317701 | `cTCEtctTEeCcTte` | 8309 · 8192 · 8163 | 684295412 |
| `cTCEtctTEeCctE` | 8210 | top | `cTCEtctTEeCcte` | 8254 · 8122 · 8086 | 690769188 |
| `cTCEtctTEecCTTEE` | 8290 | top | `cTCEtctTEecCTTEe` | 8313 · 8186 · 8150 | 691626066 |
| `cTCEtctTEecCTTe` | 8357 · 8250 · 8222 | 686049750 | `cTCEtctTEecCTtEE` | 8238 | top |
| `cTCEtctTEecCTtEe` | 8260 · 8118 · 8075 | 693488131 | `cTCEtctTEecCTte` | 8305 · 8183 · 8149 | 688007321 |
| `cTCEtctTEecCtE` | 8205 | top | `cTCEtctTEecCte` | 8250 · 8111 · 8069 | 693907693 |
| `cTCEtctTEeccTTEE` | 8286 | top | `cTCEtctTEeccTTEeC` | 8308 · 8175 · 8133 | 688235153 |
| `cTCEtctTEeccTTEec` | 8306 · 8169 · 8123 | 689850688 | `cTCEtctTEeccTTe` | 8354 · 8241 · 8207 | 689956259 |
| `cTCEtctTEeccTtE` | 8256 · 8106 | top | `cTCEtctTEeccTte` | 8301 · 8173 · 8132 | 691524142 |
| `cTCEtctTEecctE` | 8200 | top | `cTCEtctTEeccteC` | 8245 · 8100 · 8050 | 690161208 |
| `cTCEtctTEecctec` | 8243 · 8093 · 8039 | 691562593 | `cTCEtctTeCT` | 8539 · 8502 · 8496 | 689760382 |
| `cTCEtctTeCtE` | 8345 · 8255 · 8235 | 688056619 | `cTCEtctTeCte` | 8433 · 8375 · 8364 | 655706803 |
| `cTCEtctTecTE` | 8447 · 8375 · 8359 | 693981598 | `cTCEtctTecTe` | 8537 · 8496 · 8488 | 664299259 |
| `cTCEtctTectEC` | 8340 · 8241 · 8215 | 682850567 | `cTCEtctTectEc` | 8336 · 8232 · 8201 | 686883631 |
| `cTCEtctTecte` | 8429 · 8366 · 8351 | 667248656 | `cTCEtcttEE` | none | top |
| `cTCEtcttEeCE` | 8095 | top | `cTCEtcttEeCeCE` | 8117 · 7941 | top |
| `cTCEtcttEeCeCe` | 8139 · 7974 · 7926 | 684428159 | `cTCEtcttEeCecE` | 8112 · 7929 | top |
| `cTCEtcttEeCece` | 8135 · 7963 · 7908 | 689558471 | `cTCEtcttEecE` | 8085 | top |
| `cTCEtcttEeceCE` | 8107 · 7915 | top | `cTCEtcttEeceCe` | 8130 · 7950 · 7886 | 691950341 |
| `cTCEtcttEececE` | 8102 | top | `cTCEtcttEececeT` | 8125 · 7935 · 7860 | 686928047 |
| `cTCEtcttEececet` | 7989 · 7740 | top | `cTCEtctteCTE` | 8227 · 8103 · 8072 | 689492359 |
| `cTCEtctteCTe` | 8314 · 8228 · 8209 | 657511193 | `cTCEtctteCtE` | 8093 · 7925 · 7874 | 688196882 |
| `cTCEtctteCte` | 8181 · 8056 · 8023 | 656768692 | `cTCEtcttecTEC` | 8219 · 8085 · 8043 | 683061569 |
| `cTCEtcttecTEc` | 8215 · 8073 · 8023 | 686249298 | `cTCEtcttecTe` | 8309 · 8214 · 8189 | 667666346 |
| `cTCEtcttectE` | 8084 · 7900 · 7832 | 693451257 | `cTCEtcttecte` | 8174 · 8036 · 7992 | 665301093 |
| `cTCeET` | — · — · — | 668224293 | `cTCeEtC` | 9312 · — · — | 667771862 |
| `cTCeEtcT` | 9312 · — · — | 669867072 | `cTCeEtct` | 8727 · — · — | 680096501 |
| `cTCee` | — · — · — | 686533796 | `cTcETECT` | 9115 · — · — | 574697305 |
| `cTcETECtCT` | 8931 · 8920 · 8918 | 652733644 | `cTcETECtCtEE` | none | top |
| `cTcETECtCtEe` | 8728 · 8679 · 8668 | 691773771 | `cTcETECtCte` | 8820 · 8797 · 8792 | 681406080 |
| `cTcETECtcT` | 8929 · 8916 · 8913 | 670230389 | `cTcETECtctEE` | none | top |
| `cTcETECtctEeC` | 8722 · 8666 · 8648 | 689681192 | `cTcETECtctEecT` | 8719 · 8657 · 8635 | 668968210 |
| `cTcETECtctEect` | 8655 · 8581 · 8551 | 690948866 | `cTcETECtcteC` | 8817 · 8790 · 8782 | 681183287 |
| `cTcETECtctec` | 8816 · 8786 · 8776 | 688340262 | `cTcETEcT` | 9115 · — · — | 606347109 |
| `cTcETEctCEE` | 8779 | top | `cTcETEctCEeT` | 8828 · 8782 · 8763 | 654589475 |
| `cTcETEctCEetCT` | 8715 · 8647 · 8616 | 675538742 | `cTcETEctCEetCtE` | 8626 | top |
| `cTcETEctCEetCte` | 8651 · 8568 · 8528 | 688830797 | `cTcETEctCEetcE` | 8685 · 8597 | top |
| `cTcETEctCEetceT` | 8710 · 8633 · 8588 | 669325399 | `cTcETEctCEetcet` | 8645 · 8552 · 8493 | 693539306 |
| `cTcETEctCeT` | 8927 · 8911 · 8905 | 647370885 | `cTcETEctCetCT` | 8813 · 8780 · 8766 | 669531515 |
| `cTcETEctCetCt` | 8749 · 8704 · 8684 | 690507719 | `cTcETEctCetcT` | 8811 · 8773 · 8752 | 672425466 |
| `cTcETEctCetctE` | 8696 · 8624 · 8582 | 691772988 | `cTcETEctCetcte` | 8746 · 8695 · 8666 | 682651463 |
| `cTcETEctcEE` | 8769 | top | `cTcETEctcEeT` | 8821 · 8760 · 8717 | 619673810 |
| `cTcETEctcEetE` | 8678 · 8577 | top | `cTcETEctcEeteT` | 8704 · 8615 · 8543 | 645470403 |
| `cTcETEctcEetet` | 8639 · 8531 · 8436 | 688168686 | `cTcETEctceT` | 8924 · 8902 · 8887 | 642238399 |
| `cTcETEctcetCE` | 8756 · 8690 · 8639 | 689239304 | `cTcETEctcetCe` | 8808 · 8763 · 8730 | 672956541 |
| `cTcETEctcetc` | 8804 · 8750 · 8687 | gap | `cTcETeTE` | 9382 · — · — | 632648471 |
| `cTcETeTe` | 9889 · — · — | 662572515 | `cTcETetCE` | 9042 · — · — | 691010424 |
| `cTcETetCe` | 9283 · — · — | 670711505 | `cTcETetcCET` | 9042 · — · — | 627783406 |
| `cTcETetcCEt` | 8912 · 8908 · 8905 | 688816347 | `cTcETetcCe` | 9283 · — · — | 677755499 |
| `cTcETetccET` | 9042 · — · — | 637581488 | `cTcETetccEt` | 8912 · 8904 · 8896 | 687970437 |
| `cTcETetcce` | 9283 · — · — | 685819027 | `cTcEtCTECTEE` | none | top |
| `cTcEtCTECTEeCE` | 8576 | top | `cTcEtCTECTEeCeT` | 8599 · 8526 · 8507 | 683647630 |
| `cTcEtCTECTEeCetT` | 8525 · 8437 · 8412 | 688497754 | `cTcEtCTECTEeCett` | 8486 | top |
| `cTcEtCTECTEecTE` | 8572 | top | `cTcEtCTECTEecTe` | 8595 · 8518 · 8494 | 688954106 |
| `cTcEtCTECTEect` | 8521 · 8427 | top | `cTcEtCTECTeCT` | 8691 · 8648 · 8638 | 681885813 |
| `cTcEtCTECTeCtE` | 8571 · 8500 · 8481 | 692301825 | `cTcEtCTECTeCte` | 8617 · 8562 · 8548 | 678814300 |
| `cTcEtCTECTecT` | 8688 · 8643 · 8631 | 688007434 | `cTcEtCTECTectEC` | 8568 · 8491 · 8468 | 690156112 |
| `cTcEtCTECTectEc` | 8566 · 8487 · 8461 | 692585363 | `cTcEtCTECTecte` | 8614 · 8555 · 8538 | 684576660 |
| `cTcEtCTECtE` | 8444 | top | `cTcEtCTECteCTECT` | 8490 · 8401 · 8375 | 687786674 |
| `cTcEtCTECteCTECt` | 8447 · 8347 · 8317 | 692055263 | `cTcEtCTECteCTEcT` | 8488 · 8396 · 8368 | 690019275 |
| `cTcEtCTECteCTEctE` | 8422 · 8309 · 8271 | 692127864 | `cTcEtCTECteCTEcte` | 8445 · 8342 · 8308 | 685702699 |
| `cTcEtCTECteCTe` | 8536 · 8464 · 8445 | 688637139 | `cTcEtCTECteCtEE` | 8379 · 8257 | top |
| `cTcEtCTECteCtEeC` | 8402 · 8290 · 8254 | 693004830 | `cTcEtCTECteCtEecT` | 8399 · 8284 · 8244 | 688883137 |
| `cTcEtCTECteCtEect` | 8351 · 8222 · 8175 | 691270538 | `cTcEtCTECteCteC` | 8448 · 8355 · 8327 | 688218371 |
| `cTcEtCTECteCtec` | 8446 · 8350 · 8319 | 690312739 | `cTcEtCTECtecTECT` | 8486 · 8391 · 8359 | 692136308 |
| `cTcEtCTECtecTECtE` | 8419 · 8303 · 8260 | 693941207 | `cTcEtCTECtecTECte` | 8443 · 8336 · 8299 | 687790595 |
| `cTcEtCTECtecTEcTE` | 8461 · 8352 · 8311 | 692180312 | `cTcEtCTECtecTEcTe` | 8484 · 8385 · 8350 | 686202060 |
| `cTcEtCTECtecTEctEE` | 8405 | top | `cTcEtCTECtecTEctEe` | 8417 · 8296 · 8248 | 691665274 |
| `cTcEtCTECtecTEcte` | 8440 · 8330 · 8288 | 689757908 | `cTcEtCTECtecTe` | 8533 · 8456 · 8432 | 693570293 |
| `cTcEtCTECtectEE` | 8374 · 8243 | top | `cTcEtCTECtectEeCT` | 8397 · 8277 · 8233 | 690705256 |
| `cTcEtCTECtectEeCt` | 8349 · 8215 · 8162 | 692831734 | `cTcEtCTECtectEecT` | 8394 · 8271 · 8221 | 692456215 |
| `cTcEtCTECtectEectE` | 8334 · 8190 | top | `cTcEtCTECtectEecte` | 8346 · 8207 · 8148 | 690300310 |
| `cTcEtCTECtecteC` | 8444 · 8345 · 8310 | 692341799 | `cTcEtCTECtectecT` | 8441 · 8339 · 8300 | 688588714 |
| `cTcEtCTECtectect` | 8393 · 8276 · 8230 | 690609231 | `cTcEtCTEcTETE` | none | top |
| `cTcEtCTEcTETeCE` | none | top | `cTcEtCTEcTETeCeC` | 8591 · 8508 · 8478 | 686966714 |
| `cTcEtCTEcTETeCec` | 8589 · 8502 · 8469 | 689448741 | `cTcEtCTEcTETecE` | none | top |
| `cTcEtCTEcTETeceC` | 8586 · 8496 · 8457 | 691749891 | `cTcEtCTEcTETecec` | 8584 · 8489 · 8444 | 693974867 |
| `cTcEtCTEcTEt` | 8516 · 8415 | top | `cTcEtCTEcTeCT` | 8686 · 8637 · 8622 | 693996767 |
| `cTcEtCTEcTeCtECT` | 8564 · 8482 · 8452 | 686739246 | `cTcEtCTEcTeCtECt` | 8524 · 8432 · 8398 | 692001048 |
| `cTcEtCTEcTeCtEcT` | 8562 · 8476 · 8443 | 689178897 | `cTcEtCTEcTeCtEctE` | 8497 · 8391 · 8347 | 691964693 |
| `cTcEtCTEcTeCtEcte` | 8521 · 8426 · 8387 | 686385602 | `cTcEtCTEcTeCte` | 8611 · 8547 · 8526 | 690196702 |
| `cTcEtCTEcTecTEC` | 8635 · 8563 · 8535 | 688444505 | `cTcEtCTEcTecTEc` | 8632 · 8557 · 8524 | 690986667 |
| `cTcEtCTEcTecTe` | 8683 · 8629 · 8609 | 684497641 | `cTcEtCTEcTectECT` | 8559 · 8470 · 8431 | 691437672 |
| `cTcEtCTEcTectECtE` | 8495 · 8384 · 8332 | 693833028 | `cTcEtCTEcTectECte` | 8519 · 8419 · 8374 | 688537686 |
| `cTcEtCTEcTectEcT` | 8557 · 8463 · 8418 | 693620272 | `cTcEtCTEcTectEctEE` | 8480 · 8358 | top |
| `cTcEtCTEcTectEctEe` | 8492 · 8376 · 8315 | 691825461 | `cTcEtCTEcTectEcte` | 8516 · 8411 · 8358 | 690499699 |
| `cTcEtCTEcTecteC` | 8608 · 8538 · 8509 | 688383064 | `cTcEtCTEcTectec` | 8606 · 8532 · 8499 | 690934361 |
| `cTcEtCTEctE` | 8434 | top | `cTcEtCTEcteCTECTEE` | 8446 · 8328 | top |
| `cTcEtCTEcteCTECTEe` | 8458 · 8345 · 8299 | 690125597 | `cTcEtCTEcteCTECTe` | 8482 · 8379 · 8339 | 688321547 |
| `cTcEtCTEcteCTECtE` | 8414 · 8288 | top | `cTcEtCTEcteCTECte` | 8438 · 8323 · 8275 | 691599620 |
| `cTcEtCTEcteCTEcTEE` | 8443 · 8320 | top | `cTcEtCTEcteCTEcTEe` | 8455 · 8338 · 8285 | 691960055 |
| `cTcEtCTEcteCTEcTe` | 8479 · 8372 · 8326 | 690313763 | `cTcEtCTEcteCTEctE` | 8411 · 8280 | top |
| `cTcEtCTEcteCTEcte` | 8435 · 8315 · 8261 | 693365158 | `cTcEtCTEcteCTeC` | 8529 · 8446 · 8416 | 691261407 |
| `cTcEtCTEcteCTec` | 8527 · 8441 · 8406 | 693502332 | `cTcEtCTEcteCtEE` | 8368 | top |
| `cTcEtCTEcteCtEeCTC` | 8392 · 8263 · 8207 | 690649633 | `cTcEtCTEcteCtEeCTc` | 8390 · 8259 · 8199 | 691402021 |
| `cTcEtCTEcteCtEeCtE` | 8331 · 8181 | top | `cTcEtCTEcteCtEeCte` | 8343 · 8199 · 8132 | 691726265 |
| `cTcEtCTEcteCtEecTC` | 8389 · 8255 · 8190 | 692093698 | `cTcEtCTEcteCtEecTc` | 8387 · 8250 · 8181 | 692777852 |
| `cTcEtCTEcteCtEectE` | 8328 · 8171 | top | `cTcEtCTEcteCtEecte` | 8340 · 8189 · 8113 | 692962149 |
| `cTcEtCTEcteCteCT` | 8439 · 8332 · 8288 | 690525408 | `cTcEtCTEcteCteCt` | 8391 · 8269 · 8216 | 692280822 |
| `cTcEtCTEcteCtecT` | 8437 · 8325 · 8275 | 692387599 | `cTcEtCTEcteCtect` | 8388 · 8261 · 8201 | 693874566 |
| `cTcEtCTEctecTECTEE` | 8440 | top | `cTcEtCTEctecTECTEe` | 8452 · 8329 · 8269 | 693660554 |
| `cTcEtCTEctecTECTe` | 8477 · 8365 · 8312 | 692228967 | `cTcEtCTEctecTECtE` | 8408 · 8271 | top |
| `cTcEtCTEctecTECteC` | 8432 · 8307 · 8244 | 691495725 | `cTcEtCTEctecTECtec` | 8431 · 8302 · 8234 | 692193855 |
| `cTcEtCTEctecTEcTEE` | 8437 | top | `cTcEtCTEctecTEcTEeT` | 8449 · 8320 · 8249 | 691701162 |
| `cTcEtCTEctecTEcTEet` | 8427 · 8291 | top | `cTcEtCTEctecTEcTe` | 8474 · 8356 · 8294 | 693896316 |
| `cTcEtCTEctecTEctE` | 8405 · 8261 | top | `cTcEtCTEctecTEcteC` | 8429 · 8298 · 8224 | 692883626 |
| `cTcEtCTEctecTEctec` | 8427 · 8292 · 8212 | 693452813 | `cTcEtCTEctecTeCT` | 8525 · 8434 · 8394 | 689144687 |
| `cTcEtCTEctecTeCt` | 8481 · 8378 · 8329 | 692023009 | `cTcEtCTEctecTecT` | 8523 · 8427 · 8380 | 691244791 |
| `cTcEtCTEctecTect` | 8478 · 8370 · 8313 | 693837814 | `cTcEtCTEctectEE` | 8361 | top |
| `cTcEtCTEctectEeCTE` | 8374 · 8227 | top | `cTcEtCTEctectEeCTe` | 8386 · 8245 · 8171 | 693006368 |
| `cTcEtCTEctectEeCtE` | 8325 · 8160 | top | `cTcEtCTEctectEeCte` | 8337 · 8179 · 8090 | 693945162 |
| `cTcEtCTEctectEecTE` | 8370 · 8216 | top | `cTcEtCTEctectEecTeC` | 8382 · 8235 · 8147 | 690656712 |
| `cTcEtCTEctectEecTec` | 8380 · 8229 · 8133 | 691062223 | `cTcEtCTEctectEect` | 8333 · 8167 | top |
| `cTcEtCTEctecteCTE` | 8410 · 8281 · 8215 | 691630058 | `cTcEtCTEctecteCTe` | 8434 · 8317 · 8259 | 686445268 |
| `cTcEtCTEctecteCtE` | 8361 · 8216 · 8137 | 692734681 | `cTcEtCTEctecteCte` | 8385 · 8252 · 8182 | 687605168 |
| `cTcEtCTEctectecTE` | 8407 · 8272 · 8194 | 692960591 | `cTcEtCTEctectecTe` | 8431 · 8308 · 8240 | 688064566 |
| `cTcEtCTEctectectE` | 8357 · 8205 · 8112 | 693676183 | `cTcEtCTEctectecte` | 8382 · 8242 · 8159 | 688836271 |
| `cTcEtCTeCT` | 8882 · — · — | 693819234 | `cTcEtCTeCtEC` | 8628 · 8588 · 8578 | 691093522 |
| `cTcEtCTeCtEcT` | 8626 · 8583 · 8571 | 684553167 | `cTcEtCTeCtEct` | 8537 · 8475 · 8456 | 690640694 |
| `cTcEtCTeCte` | 8720 · 8707 · 8704 | 678261697 | `cTcEtCTecTEC` | 8781 · 8761 · 8756 | 686925097 |
| `cTcEtCTecTEc` | 8780 · 8758 · 8750 | 693785253 | `cTcEtCTecTe` | 8882 · — · — | 677048311 |
| `cTcEtCTectECT` | 8624 · 8577 · 8561 | 690397598 | `cTcEtCTectECtE` | 8487 · 8400 · 8367 | 691576470 |
| `cTcEtCTectECte` | 8534 · 8467 · 8442 | 679866567 | `cTcEtCTectEcTE` | 8573 · 8503 · 8473 | 691831816 |
| `cTcEtCTectEcTe` | 8622 · 8570 · 8549 | 680862450 | `cTcEtCTectEctEC` | 8482 · 8388 · 8343 | 688887737 |
| `cTcEtCTectEctEc` | 8480 · 8380 · 8328 | 690842084 | `cTcEtCTectEcte` | 8531 · 8457 · 8424 | 685173160 |
| `cTcEtCTecte` | 8719 · 8703 · 8697 | 692496274 | `cTcEtCtEE` | none | top |
| `cTcEtCtEeCTCTEE` | 8280 | top | `cTcEtCtEeCTCTEeCT` | 8303 · 8163 · 8112 | 691399243 |
| `cTcEtCtEeCTCTEeCt` | 8250 · 8092 | top | `cTcEtCtEeCTCTEecT` | 8301 · 8155 · 8099 | 692827214 |
| `cTcEtCtEeCTCTEect` | 8248 · 8084 | top | `cTcEtCtEeCTCTeC` | 8349 · 8230 · 8189 | 691919797 |
| `cTcEtCtEeCTCTec` | 8347 · 8224 · 8179 | 693620789 | `cTcEtCtEeCTCtE` | 8195 | top |
| `cTcEtCtEeCTCteC` | 8241 · 8086 · 8026 | 692845066 | `cTcEtCtEeCTCtecT` | 8238 · 8078 · 8012 | 689737216 |
| `cTcEtCtEeCTCtect` | 8178 · 7996 · 7914 | 689047214 | `cTcEtCtEeCTcTEE` | 8275 | top |
| `cTcEtCtEeCTcTEeCTE` | 8286 | top | `cTcEtCtEeCTcTEeCTe` | 8298 · 8148 · 8085 | 690093522 |
| `cTcEtCtEeCTcTEeCt` | 8245 · 8075 | top | `cTcEtCtEeCTcTEecTE` | 8283 | top |
| `cTcEtCtEeCTcTEecTe` | 8295 · 8139 · 8068 | 691335993 | `cTcEtCtEeCTcTEect` | 8241 | top |
| `cTcEtCtEeCTcTeCT` | 8345 · 8217 · 8167 | 690264017 | `cTcEtCtEeCTcTeCt` | 8291 · 8146 · 8085 | 690942706 |
| `cTcEtCtEeCTcTecT` | 8342 · 8210 · 8153 | 691803220 | `cTcEtCtEeCTcTect` | 8289 · 8138 · 8069 | 692223429 |
| `cTcEtCtEeCTctE` | 8188 | top | `cTcEtCtEeCTcteCT` | 8235 · 8070 · 7995 | 690840215 |
| `cTcEtCtEeCTcteCt` | 8175 · 7987 · 7895 | 689891863 | `cTcEtCtEeCTctecT` | 8232 · 8060 · 7976 | 691809254 |
| `cTcEtCtEeCTctect` | 8172 · 7976 · 7872 | 690493672 | `cTcEtCtEeCtE` | 8073 | top |
| `cTcEtCtEeCteCE` | 8096 | top | `cTcEtCtEeCteCeT` | 8119 · 7917 · 7826 | 688781512 |
| `cTcEtCtEeCteCet` | 7982 | top | `cTcEtCtEeCtecE` | 8089 | top |
| `cTcEtCtEeCteceT` | 8112 · 7897 · 7783 | 690046371 | `cTcEtCtEeCtecet` | 7974 | top |
| `cTcEtCtEecE` | 8292 · 8130 | top | `cTcEtCtEeceTCTCT` | 8339 · 8201 · 8137 | 693211807 |
| `cTcEtCtEeceTCTCt` | 8286 · 8129 · 8051 | 693370193 | `cTcEtCtEeceTCTcTE` | 8313 · 8156 · 8074 | 692034934 |
| `cTcEtCtEeceTCTcTe` | 8336 · 8192 · 8119 | 686728046 | `cTcEtCtEeceTCTctE` | 8258 · 8081 · 7981 | 691655951 |
| `cTcEtCtEeceTCTcte` | 8282 · 8118 · 8029 | 686512385 | `cTcEtCtEeceTCtCT` | 8229 · 8050 · 7954 | 692585714 |
| `cTcEtCtEeceTCtCt` | 8168 · 7964 · 7846 | 690896213 | `cTcEtCtEeceTCtcE` | 8201 · 8000 | top |
| `cTcEtCtEeceTCtce` | 8225 · 8038 · 7928 | 689378157 | `cTcEtCtEeceTcTCTE` | 8309 · 8145 · 8049 | 692853243 |
| `cTcEtCtEeceTcTCTe` | 8333 · 8182 · 8097 | 687889560 | `cTcEtCtEeceTcTCtE` | 8255 · 8069 · 7953 | 692146293 |
| `cTcEtCtEeceTcTCte` | 8279 · 8107 · 8003 | 687293163 | `cTcEtCtEeceTcTcTE` | 8306 · 8133 · 8020 | 693405305 |
| `cTcEtCtEeceTcTcTe` | 8330 · 8171 · 8070 | 688733730 | `cTcEtCtEeceTcTctE` | 8251 · 8056 · 7918 | 692197035 |
| `cTcEtCtEeceTcTcte` | 8275 · 8095 · 7971 | 687693798 | `cTcEtCtEeceTctE` | 8197 · 7987 | top |
| `cTcEtCtEeceTcteC` | 8221 · 8026 · 7897 | 689647418 | `cTcEtCtEeceTctec` | 8217 · 8011 · 7858 | 689415951 |
| `cTcEtCtEecet` | 8105 · 7871 | top | `cTcEtCteCTTEC` | 8441 · 8361 · 8337 | 689416611 |
| `cTcEtCteCTTEc` | 8438 · 8352 · 8322 | 693855472 | `cTcEtCteCTTe` | 8533 · 8487 · 8475 | 676815089 |
| `cTcEtCteCTtEC` | 8333 · 8222 · 8184 | 690716591 | `cTcEtCteCTtEcE` | 8282 · 8140 · 8081 | 689954595 |
| `cTcEtCteCTtEce` | 8328 · 8210 · 8163 | 677929650 | `cTcEtCteCTte` | 8424 · 8353 · 8331 | 678334191 |
| `cTcEtCteCtECT` | 8211 · 8059 · 7999 | 689165764 | `cTcEtCteCtECt` | 8074 · 7867 · 7767 | 684225622 |
| `cTcEtCteCtEcT` | 8206 · 8043 · 7968 | 691632598 | `cTcEtCteCtEct` | 8067 · 7845 · 7720 | 685231712 |
| `cTcEtCteCte` | 8303 · 8196 · 8158 | 684021625 | `cTcEtCtecTECTE` | 8387 · 8272 · 8222 | 693616724 |
| `cTcEtCtecTECTe` | 8434 · 8341 · 8302 | 682179024 | `cTcEtCtecTECtE` | 8276 · 8123 · 8046 | 692550155 |
| `cTcEtCtecTECte` | 8324 · 8195 · 8134 | 681547981 | `cTcEtCtecTEcTEC` | 8382 · 8256 · 8189 | 689957646 |
| `cTcEtCtecTEcTEc` | 8379 · 8246 · 8167 | 691214648 | `cTcEtCtecTEcTe` | 8430 · 8327 · 8276 | 686451009 |
| `cTcEtCtecTEctEC` | 8270 · 8102 · 7999 | 687668670 | `cTcEtCtecTEctEc` | 8266 · 8090 · 7967 | 688055014 |
| `cTcEtCtecTEcte` | 8318 · 8177 · 8095 | 684508218 | `cTcEtCtecTeC` | 8529 · 8475 · 8454 | 683176031 |
| `cTcEtCtecTec` | 8527 · 8466 · 8438 | 688520889 | `cTcEtCtectECT` | 8200 · 8024 · 7926 | 693396930 |
| `cTcEtCtectECt` | 8060 · 7819 · 7654 | 685046274 | `cTcEtCtectEcTE` | 8145 · 7921 · 7756 | 687838424 |
| `cTcEtCtectEcTe` | 8193 · 8000 · 7866 | 678776883 | `cTcEtCtectEct` | 8052 · 7786 · 7558 | 682956774 |
| `cTcEtCtecte` | 8295 · 8170 · 8108 | 691731982 | `cTcEtcTECTETE` | none | top |
| `cTcEtcTECTETeCTE` | none | top | `cTcEtcTECTETeCTe` | 8581 · 8481 · 8428 | 693640693 |
| `cTcEtcTECTETeCt` | 8544 · 8433 | top | `cTcEtcTECTETec` | 8575 · 8462 | top |
| `cTcEtcTECTEt` | 8505 | top | `cTcEtcTECTeCTEC` | 8630 · 8551 · 8512 | 693453490 |
| `cTcEtcTECTeCTEcT` | 8628 · 8544 · 8497 | 686494316 | `cTcEtcTECTeCTEct` | 8590 · 8497 · 8442 | 692548756 |
| `cTcEtcTECTeCTe` | 8680 · 8620 · 8592 | 690516857 | `cTcEtcTECTeCtECTE` | 8529 · 8419 · 8358 | 693104560 |
| `cTcEtcTECTeCtECTe` | 8554 · 8455 · 8402 | 688272850 | `cTcEtcTECTeCtECtEE` | 8476 · 8348 | top |
| `cTcEtcTECTeCtECtEe` | 8489 · 8366 · 8295 | 693427105 | `cTcEtcTECTeCtECte` | 8513 · 8403 · 8340 | 692321064 |
| `cTcEtcTECTeCtEcTEE` | 8514 · 8391 | top | `cTcEtcTECTeCtEcTEe` | 8526 · 8409 · 8335 | 691027717 |
| `cTcEtcTECTeCtEcTe` | 8551 · 8446 · 8382 | 690144741 | `cTcEtcTECTeCtEctETE` | 8473 · 8337 | top |
| `cTcEtcTECTeCtEctETe` | 8485 · 8355 · 8269 | 691026593 | `cTcEtcTECTeCtEctEt` | 8464 · 8327 | top |
| `cTcEtcTECTeCtEcte` | 8510 · 8393 · 8317 | 693823414 | `cTcEtcTECTeCteC` | 8603 · 8526 · 8486 | 693298095 |
| `cTcEtcTECTeCtecT` | 8601 · 8519 · 8471 | 688089867 | `cTcEtcTECTeCtect` | 8560 · 8466 · 8409 | 691941894 |
| `cTcEtcTECTecTECT` | 8625 · 8536 · 8478 | 688687434 | `cTcEtcTECTecTECtE` | 8562 · 8450 · 8372 | 691526992 |
| `cTcEtcTECTecTECte` | 8587 · 8487 · 8420 | 687282842 | `cTcEtcTECTecTEcT` | 8622 · 8526 · 8453 | 690492049 |
| `cTcEtcTECTecTEctE` | 8559 · 8439 · 8340 | 692647533 | `cTcEtcTECTecTEcte` | 8584 · 8477 · 8391 | 688761636 |
| `cTcEtcTECTecTeC` | 8676 · 8608 · 8566 | 688783483 | `cTcEtcTECTecTec` | 8673 · 8601 · 8548 | 691178100 |
| `cTcEtcTECTectECTEE` | 8510 · 8379 | top | `cTcEtcTECTectECTEe` | 8523 · 8398 · 8307 | 692288040 |
| `cTcEtcTECTectECTe` | 8548 · 8436 · 8357 | 691690093 | `cTcEtcTECTectECtETE` | 8469 · 8324 | top |
| `cTcEtcTECTectECtETe` | 8482 · 8343 · 8236 | 691864612 | `cTcEtcTECTectECtEt` | 8460 · 8314 | top |
| `cTcEtcTECTectECteC` | 8507 · 8382 · 8288 | 691471464 | `cTcEtcTECTectECtec` | 8505 · 8375 · 8270 | 691810260 |
| `cTcEtcTECTectEcTET` | 8519 · 8386 · 8270 | 692562858 | `cTcEtcTECTectEcTEt` | 8499 · 8358 | top |
| `cTcEtcTECTectEcTe` | 8545 · 8425 · 8324 | 692717998 | `cTcEtcTECTectEctE` | 8478 · 8329 | top |
| `cTcEtcTECTectEcteC` | 8503 · 8369 · 8250 | 692015931 | `cTcEtcTECTectEctec` | 8501 · 8362 · 8225 | 691907603 |
| `cTcEtcTECTecteCT` | 8599 · 8511 · 8451 | 690142478 | `cTcEtcTECTecteCt` | 8557 · 8457 · 8386 | 693622455 |
| `cTcEtcTECTectecT` | 8596 · 8501 · 8426 | 691864369 | `cTcEtcTECTectectE` | 8529 · 8408 · 8304 | 691756645 |
| `cTcEtcTECTectecte` | 8554 · 8447 · 8357 | 687989659 | `cTcEtcTECtE` | 8421 | top |
| `cTcEtcTECteCTEE` | 8446 · 8310 | top | `cTcEtcTECteCTEeCTC` | 8471 · 8347 · 8273 | 691904869 |
| `cTcEtcTECteCTEeCTc` | 8469 · 8341 · 8260 | 692486925 | `cTcEtcTECteCTEeCtC` | 8426 · 8287 · 8199 | 693955438 |
| `cTcEtcTECteCTEeCtcT` | 8424 · 8281 · 8185 | 691374816 | `cTcEtcTECteCTEeCtct` | 8401 · 8249 · 8144 | 692055361 |
| `cTcEtcTECteCTEecTC` | 8467 · 8336 · 8246 | 693000748 | `cTcEtcTECteCTEecTc` | 8465 · 8330 · 8230 | 693387299 |
| `cTcEtcTECteCTEectE` | 8410 · 8256 | top | `cTcEtcTECteCTEecteC` | 8422 · 8275 · 8168 | 691042413 |
| `cTcEtcTECteCTEectec` | 8420 · 8268 · 8150 | 691256364 | `cTcEtcTECteCTeCT` | 8520 · 8420 · 8363 | 693150643 |
| `cTcEtcTECteCTeCtE` | 8450 · 8324 · 8247 | 692778447 | `cTcEtcTECteCTeCte` | 8475 · 8361 · 8293 | 688060634 |
| `cTcEtcTECteCTecTE` | 8492 · 8373 · 8295 | 692081070 | `cTcEtcTECteCTecTe` | 8517 · 8411 · 8342 | 687599252 |
| `cTcEtcTECteCTectE` | 8447 · 8313 · 8219 | 693804543 | `cTcEtcTECteCTecte` | 8472 · 8351 · 8268 | 689438294 |
| `cTcEtcTECteCtEE` | 8354 | top | `cTcEtcTECteCtEeCTE` | 8366 · 8204 | top |
| `cTcEtcTECteCtEeCTeC` | 8379 · 8223 · 8118 | 691399501 | `cTcEtcTECteCtEeCTec` | 8377 · 8217 · 8101 | 691610343 |
| `cTcEtcTECteCtEeCt` | 8329 · 8154 | top | `cTcEtcTECteCtEecTE` | 8362 · 8190 | top |
| `cTcEtcTECteCtEecTeC` | 8375 · 8210 · 8082 | 691692241 | `cTcEtcTECteCtEecTec` | 8373 · 8202 | top |
| `cTcEtcTECteCtEect` | 8325 · 8139 | top | `cTcEtcTECteCteCTE` | 8403 · 8261 · 8168 | 693971273 |
| `cTcEtcTECteCteCTe` | 8428 · 8298 · 8216 | 689367356 | `cTcEtcTECteCteCtEC` | 8354 · 8193 · 8081 | 690856592 |
| `cTcEtcTECteCteCtEc` | 8352 · 8186 · 8063 | 690980272 | `cTcEtcTECteCteCte` | 8378 · 8231 · 8132 | 689801127 |
| `cTcEtcTECteCtecTEC` | 8400 · 8249 · 8136 | 691191186 | `cTcEtcTECteCtecTEc` | 8398 · 8242 · 8116 | 691256927 |
| `cTcEtcTECteCtecTe` | 8425 · 8287 · 8187 | 690341100 | `cTcEtcTECteCtectEC` | 8350 · 8179 · 8042 | 690916805 |
| `cTcEtcTECteCtectEc` | 8348 · 8171 · 8019 | 690720215 | `cTcEtcTECteCtecte` | 8375 · 8218 · 8097 | 690258567 |
| `cTcEtcTECtecTEE` | 8438 · 8284 | top | `cTcEtcTECtecTEeCTC` | 8464 · 8323 · 8212 | 693644070 |
| `cTcEtcTECtecTEeCTc` | 8462 · 8317 · 8192 | 693768553 | `cTcEtcTECtecTEeCtE` | 8406 · 8241 | top |
| `cTcEtcTECtecTEeCteC` | 8418 · 8261 · 8128 | 691222459 | `cTcEtcTECtecTEeCtec` | 8416 · 8253 · 8104 | 691052923 |
| `cTcEtcTECtecTEecTE` | 8447 · 8289 | top | `cTcEtcTECtecTEecTe` | 8460 · 8309 · 8167 | 693535594 |
| `cTcEtcTECtecTEectE` | 8401 · 8225 | top | `cTcEtcTECtecTEecte` | 8414 · 8245 · 8075 | 693943230 |
| `cTcEtcTECtecTeCTE` | 8489 · 8362 · 8265 | 693125381 | `cTcEtcTECtecTeCTe` | 8514 · 8400 · 8315 | 688998472 |
| `cTcEtcTECtecTeCtEC` | 8444 · 8301 · 8184 | 690952828 | `cTcEtcTECtecTeCtEc` | 8442 · 8293 · 8161 | 690900258 |
| `cTcEtcTECtecTeCte` | 8469 · 8339 · 8237 | 690422436 | `cTcEtcTECtecTecTE` | 8485 · 8349 · 8224 | 693465517 |
| `cTcEtcTECtecTecTe` | 8511 · 8388 · 8280 | 689876901 | `cTcEtcTECtecTectEC` | 8440 · 8286 · 8136 | 690710385 |
| `cTcEtcTECtecTectEc` | 8437 · 8278 · 8105 | 690142876 | `cTcEtcTECtecTecte` | 8465 · 8326 · 8194 | 690641274 |
| `cTcEtcTECtectE` | 8371 · 8194 | top | `cTcEtcTECtecteCTEC` | 8396 · 8234 · 8093 | 691131342 |
| `cTcEtcTECtecteCTEc` | 8394 · 8227 · 8067 | 690810669 | `cTcEtcTECtecteCTe` | 8421 · 8274 · 8149 | 690738776 |
| `cTcEtcTECtecteCtE` | 8346 · 8163 · 7991 | 693553374 | `cTcEtcTECtecteCte` | 8371 · 8204 · 8051 | 690012668 |
| `cTcEtcTECtectecTE` | 8392 · 8218 · 8036 | 693531868 | `cTcEtcTECtectecTe` | 8417 · 8259 · 8098 | 690299989 |
| `cTcEtcTECtectectE` | 8341 · 8145 · 7922 | 691673161 | `cTcEtcTECtectecte` | 8367 · 8187 · 7989 | 688738563 |
| `cTcEtcTEcE` | 8567 · 8436 | top | `cTcEtcTEceTCTET` | 8619 · 8515 · 8420 | 682947520 |
| `cTcEtcTEceTCTEtE` | 8555 · 8425 · 8296 | 684299389 | `cTcEtcTEceTCTEte` | 8581 · 8465 · 8353 | 676428686 |
| `cTcEtcTEceTCTe` | 8671 · 8592 · 8524 | 686816209 | `cTcEtcTEceTCtEE` | 8515 · 8371 | top |
| `cTcEtcTEceTCtEeT` | 8541 · 8411 · 8279 | 684636308 | `cTcEtcTEceTCtEet` | 8499 · 8354 · 8196 | 689559919 |
| `cTcEtcTEceTCteT` | 8593 · 8490 · 8392 | 686753325 | `cTcEtcTEceTCtet` | 8551 · 8434 · 8316 | 692332893 |
| `cTcEtcTEceTc` | 8665 · 8569 · 8436 | gap | `cTcEtcTEcetCTEE` | 8429 · 8250 | top |
| `cTcEtcTEcetCTEeT` | 8455 · 8292 · 8104 | 690391361 | `cTcEtcTEcetCTEet` | 8409 · 8227 | top |
| `cTcEtcTEcetCTeTE` | 8481 · 8334 · 8169 | 683596227 | `cTcEtcTEcetCTeTe` | 8507 · 8374 · 8231 | 676872475 |
| `cTcEtcTEcetCTet` | 8461 · 8310 · 8135 | 693938705 | `cTcEtcTEcetCtE` | 8361 · 8156 | top |
| `cTcEtcTEcetCteE` | 8387 · 8199 · 7954 | 686712000 | `cTcEtcTEcetCtee` | 8413 · 8241 · 8025 | 681674047 |
| `cTcEtcTEcetc` | 8499 · 8338 · 8037 | gap | `cTcEtcTeCTECT` | 8778 · 8754 · 8742 | 684509630 |
| `cTcEtcTeCTECtE` | 8653 · 8595 · 8567 | 690397512 | `cTcEtcTeCTECte` | 8702 · 8663 · 8644 | 680172026 |
| `cTcEtcTeCTEcT` | 8777 · 8748 · 8731 | 691638555 | `cTcEtcTeCTEctEC` | 8649 · 8583 · 8541 | 688592754 |
| `cTcEtcTeCTEctEc` | 8647 · 8576 · 8522 | 690881774 | `cTcEtcTeCTEcte` | 8700 · 8654 · 8626 | 686670428 |
| `cTcEtcTeCTeC` | 8882 · — · — | 679249824 | `cTcEtcTeCTec` | 8882 · — · 8881 | 687715922 |
| `cTcEtcTeCtECTEC` | 8569 · 8491 · 8449 | 689607149 | `cTcEtcTeCtECTEc` | 8567 · 8484 · 8433 | 691775033 |
| `cTcEtcTeCtECTe` | 8619 · 8561 · 8531 | 686733421 | `cTcEtcTeCtECtEC` | 8477 · 8372 · 8309 | 692543559 |
| `cTcEtcTeCtECtEc` | 8475 · 8363 · 8286 | 693982131 | `cTcEtcTeCtECte` | 8527 · 8444 · 8397 | 689899506 |
| `cTcEtcTeCtEcTEC` | 8565 · 8475 · 8412 | 693623066 | `cTcEtcTeCtEcTEcT` | 8562 · 8466 · 8385 | 689201640 |
| `cTcEtcTeCtEcTEct` | 8516 · 8405 · 8305 | 690322752 | `cTcEtcTeCtEcTe` | 8615 · 8549 · 8503 | 691949641 |
| `cTcEtcTeCtEctECT` | 8472 · 8352 · 8256 | 689953224 | `cTcEtcTeCtEctECt` | 8421 · 8283 · 8165 | 689637459 |
| `cTcEtcTeCtEctEcT` | 8468 · 8339 · 8216 | 690397660 | `cTcEtcTeCtEctEct` | 8418 · 8269 · 8116 | 689371340 |
| `cTcEtcTeCtEcte` | 8522 · 8428 · 8356 | 693703183 | `cTcEtcTeCteC` | 8717 · 8696 · 8684 | 691808739 |
| `cTcEtcTeCtecT` | 8716 · 8690 · 8672 | 687881898 | `cTcEtcTeCtect` | 8623 · 8575 · 8539 | 690467827 |
| `cTcEtcTecTECT` | 8775 · 8740 · 8711 | 685035149 | `cTcEtcTecTECtE` | 8645 · 8568 · 8497 | 686515283 |
| `cTcEtcTecTECte` | 8697 · 8643 · 8595 | 672001332 | `cTcEtcTecTEc` | 8772 · 8729 · 8670 | gap |
| `cTcEtcTecTeC` | 8882 · 8881 · 8878 | 681022748 | `cTcEtcTecTec` | 8882 · 8880 · 8869 | gap |
| `cTcEtcTectECTE` | 8559 · 8454 · 8347 | 693219946 | `cTcEtcTectECTe` | 8611 · 8532 · 8455 | 678218420 |
| `cTcEtcTectECtE` | 8465 · 8324 · 8160 | 688790180 | `cTcEtcTectECte` | 8517 · 8406 · 8282 | 675986132 |
| `cTcEtcTectEc` | 8606 · 8509 · 8350 | gap | `cTcEtcTecteT` | 8715 · 8683 · 8650 | 692741191 |
| `cTcEtcTectet` | 8620 · 8562 · 8500 | 693355610 | `cTcEtctEE` | none | top |
| `cTcEtctEeCE` | 8277 · 8080 | top | `cTcEtctEeCeTCTCTE` | 8302 · 8120 · 7984 | 693510244 |
| `cTcEtctEeCeTCTCTe` | 8326 · 8159 · 8037 | 689191069 | `cTcEtctEeCeTCTCtE` | 8247 · 8040 | top |
| `cTcEtctEeCeTCTCte` | 8271 · 8080 · 7931 | 687585345 | `cTcEtctEeCeTCTcTE` | 8297 · 8104 · 7937 | 692919366 |
| `cTcEtctEeCeTCTcTe` | 8322 · 8144 · 7995 | 689073177 | `cTcEtctEeCeTCTct` | 8267 · 8064 · 7880 | 693972072 |
| `cTcEtctEeCeTCtE` | 8188 · 7954 | top | `cTcEtctEeCeTCteC` | 8213 · 7995 · 7810 | 688606745 |
| `cTcEtctEeCeTCtec` | 8208 · 7977 · 7746 | 686792738 | `cTcEtctEeCeTcTE` | 8293 · 8086 | top |
| `cTcEtctEeCeTcTeC` | 8318 · 8128 · 7940 | 692385022 | `cTcEtctEeCeTcTec` | 8313 · 8108 · 7863 | 689950462 |
| `cTcEtctEeCeTct` | 8203 · 7956 | top | `cTcEtctEeCet` | 8086 · 7801 | top |
| `cTcEtctEecE` | 8256 | top | `cTcEtctEeceTE` | 8282 · 8041 | top |
| `cTcEtctEeceTe` | 8308 · 8086 · 7749 | gap | `cTcEtctEecet` | 8061 | top |
| `cTcEtcteCTECTEC` | 8376 · 8235 · 8140 | 692150127 | `cTcEtcteCTECTEc` | 8372 · 8223 · 8106 | 692635975 |
| `cTcEtcteCTECTe` | 8425 · 8310 · 8237 | 689884860 | `cTcEtcteCTECtEC` | 8262 · 8076 · 7927 | 687932270 |
| `cTcEtcteCTECtEc` | 8258 · 8060 · 7875 | 687049240 | `cTcEtcteCTECte` | 8312 · 8154 · 8036 | 686182361 |
| `cTcEtcteCTEcTEC` | 8369 · 8209 · 8062 | 692478776 | `cTcEtcteCTEcTEc` | 8365 · 8193 · 8001 | 691237258 |
| `cTcEtcteCTEcTe` | 8419 · 8288 · 8174 | 691761354 | `cTcEtcteCTEctE` | 8254 · 8041 · 7806 | 691608054 |
| `cTcEtcteCTEcte` | 8304 · 8124 · 7938 | 685340429 | `cTcEtcteCTeC` | 8524 · 8455 · 8415 | 693407756 |
| `cTcEtcteCTecT` | 8520 · 8441 · 8378 | 689774579 | `cTcEtcteCTect` | 8405 · 8285 · 8174 | 685256255 |
| `cTcEtcteCtECE` | 8136 · 7886 · 7644 | 691063030 | `cTcEtcteCtECe` | 8185 · 7969 · 7773 | 683842331 |
| `cTcEtcteCtEc` | 8176 · 7929 · 7611 | 692381555 | `cTcEtcteCteC` | 8284 · 8129 · 8005 | 682573424 |
| `cTcEtcteCtec` | 8277 · 8099 · 7900 | 681332712 | `cTcEtctecETEE` | 8334 · 8130 · 7832 | gap |
| `cTcEtctecETEe` | 8360 · 8173 · 7911 | gap | `cTcEtctecETe` | 8412 · 8258 · 8057 | 689667236 |
| `cTcEtctecEt` | 8165 · 7873 · 7245 | gap | `cTcEtcteceTE` | 8464 · 8341 · 8189 | gap |
| `cTcEtcteceTe` | 8516 · 8421 · 8310 | gap | `cTcEtctecet` | 8269 · 8057 · 7678 | gap |
| `cTceETC` | — · — · — | 685244303 | `cTceETcET` | — · — · — | 642617722 |
| `cTceETcEtT` | 9664 · — · — | 663452247 | `cTceETcEtt` | 9330 · — · — | 681301173 |
| `cTceETceT` | — · — · — | 638166794 | `cTceETcetC` | — · — · — | 663042634 |
| `cTceETcetc` | — · — · — | gap | `cTceEtTCT` | 9312 · — · — | 680002734 |
| `cTceEtTCt` | 8995 · — · — | 689872404 | `cTceEtTcTC` | 9312 · — · — | 689109572 |
| `cTceEtTcTcE` | 9056 · — · — | 675428599 | `cTceEtTcTce` | 9312 · — · — | gap |
| `cTceEtTctCE` | 8826 · — · — | 685420323 | `cTceEtTctCe` | 8995 · — · — | 659368762 |
| `cTceEtTctcE` | 8826 · — · 8822 | 681593324 | `cTceEtTctce` | 8995 · — · — | gap |
| `cTceEttCTC` | 8727 · — · — | 665408584 | `cTceEttCTc` | 8727 · — · — | 681042877 |
| `cTceEttCt` | 8487 · 8454 · 8444 | 693526081 | `cTceEttcCTE` | 8622 · 8594 · 8577 | 687758731 |
| `cTceEttcCTe` | 8727 · — · 8725 | 664064137 | `cTceEttcCt` | 8481 · 8427 · 8389 | 689438217 |
| `cTceEttccE` | 8620 · 8576 · 8524 | gap | `cTceEttcce` | 8727 · 8724 · 8709 | gap |
| `cTceeTC` | — · — · — | 638009697 | `cTceeTc` | — · — · — | 686756702 |
| `cTceetTEC` | 9642 · — · — | 657358400 | `cTceetTEcC` | 9642 · — · — | gap |
| `cTceetTEcc` | 9642 · — · — | gap | `cTceetTeC` | — · — · — | 642024077 |
| `cTceetTec` | — · — · — | gap | `cTceettC` | 9069 · — · — | 660952331 |
| `cTceettcE` | 8876 · — · — | gap | `cTceettce` | 9069 · — · — | gap |
| `ctCEE` | 7873 | top | `ctCEeTC` | 8043 · 7887 · 7850 | 690822762 |
| `ctCEeTcETC` | 7942 · 7712 · 7626 | 678632182 | `ctCEeTcETc` | 7932 · 7678 · 7562 | 689222970 |
| `ctCEeTcEt` | 7069 | top | `ctCEeTce` | 8030 · 7850 · 7791 | 681810815 |
| `ctCEet` | none | top | `ctCeE` | 8213 · 8132 · 8118 | 689861596 |
| `ctCee` | 8382 · 8362 · 8359 | 616239896 | `ctcEE` | 7827 | top |
| `ctcEeTCETCE` | 7873 · 7554 | top | `ctcEeTCETCe` | 7919 · 7633 · 7461 | 678734096 |
| `ctcEeTCETcE` | 7854 · 7481 | top | `ctcEeTCETce` | 7902 · 7567 · 7273 | 679248552 |
| `ctcEeTCEt` | none | top | `ctcEeTCeTC` | 8011 · 7786 · 7667 | 672693443 |
| `ctcEeTCeTc` | 7997 · 7733 · 7532 | 677988741 | `ctcEeTCet` | 7108 | top |
| `ctcEeTcE` | 7880 · 7465 | top | `ctcEeTceT` | 7979 · 7650 · 7208 | 690672067 |
| `ctcEeTcet` | 7028 | top | `ctcEet` | none | top |
| `ctceETC` | 8195 · 8074 · 8024 | 689851593 | `ctceETcE` | 8077 · 7826 · 7537 | 688991528 |
| `ctceETce` | 8176 · 7993 · 7809 | 676723362 | `ctceEt` | 5360 | top |
| `ctceeTC` | 8378 · 8339 · 8325 | 639097393 | `ctceeTc` | 8373 · 8303 · 8240 | gap |
| `ctceet` | 5544 | top |  | |  |
