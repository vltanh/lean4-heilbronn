# The left-side cap in the adjacent-cap octagon

Use the definitions of [the cap proof](N6_ADJACENT_CAPS_LINE.md), Section 5.
Start with the closed square `[.372,.907] × [.372,.907]` in the
coordinate order `c,e`. Each letter halves the current interval of
the indicated coordinate at its rational midpoint. Lowercase takes
the lower half and uppercase the upper half. In particular, `c`
and `C` are a split in the first coordinate, and `e` and `E` a
split in the second. Both halves include the midpoint.

These are all the terminal paths. At each proper prefix both halves
of its split occur. This can be checked by deleting pairs of terminal
siblings and replacing each pair by its common prefix, until only
the empty prefix remains. The numerical entry is an integer upper bound
for one million times the right side of (10). The two entries marked
`right ear` have the strict contradiction \((1-c_0)D_1<s\) from
the preceding test. All other integers are below 787000.

| Path | Upper bound | Path | Upper bound | Path | Upper bound |
| --- | ---: | --- | ---: | --- | ---: |
| `CECE` | 786464 | `CECeE` | 782966 | `CECeeC` | 763974 |
| `CECeec` | 780570 | `CEcECE` | 785882 | `CEcECe` | 786276 |
| `CEcEcE` | 777701 | `CEcEce` | 782289 | `CEceEC` | 776604 |
| `CEceEcE` | 781530 | `CEceEce` | 774441 | `CEceeCE` | 778852 |
| `CEceeCe` | 784880 | `CEceecCE` | 774872 | `CEceecCe` | 783656 |
| `CEceeccE` | 775757 | `CEceecceC` | 781217 | `CEceeccec` | 782293 |
| `CeECEC` | right ear | `CeECEc` | 783728 | `CeECe` | 772857 |
| `CeEcECEC` | 772658 | `CeEcECEc` | 782965 | `CeEcECeC` | 769883 |
| `CeEcECec` | 783771 | `CeEcEcECE` | 781841 | `CeEcEcECe` | 783938 |
| `CeEcEcEcEC` | 780546 | `CeEcEcEcEc` | 782652 | `CeEcEcEceC` | 783406 |
| `CeEcEcEcec` | 786195 | `CeEcEceCE` | 784810 | `CeEcEceCe` | 783958 |
| `CeEcEcecEC` | 785061 | `CeEcEcecEcE` | 783093 | `CeEcEcecEce` | 783518 |
| `CeEcEceceC` | 784995 | `CeEcEcececE` | 783454 | `CeEcEcecece` | 782817 |
| `CeEceCE` | 783345 | `CeEceCe` | 764013 | `CeEcecECE` | 780796 |
| `CeEcecECe` | 774640 | `CeEcecEcEC` | 782597 | `CeEcecEcEcE` | 781521 |
| `CeEcecEcEce` | 779469 | `CeEcecEce` | 786968 | `CeEceceC` | 776175 |
| `CeEcececE` | 778009 | `CeEcecece` | 764049 | `CeeC` | right ear |
| `CeecEC` | 746866 | `CeecEcE` | 763070 | `CeecEce` | 697217 |
| `Ceece` | 615799 | `cECEC` | 781226 | `cECEc` | 761666 |
| `cECeCEC` | 783205 | `cECeCEc` | 778011 | `cECeCeEC` | 774285 |
| `cECeCeEc` | 785746 | `cECeCeeCC` | 782670 | `cECeCeeCc` | 782249 |
| `cECeCeec` | 784922 | `cECecE` | 780814 | `cECeceCE` | 779335 |
| `cECeceCe` | 777385 | `cECececE` | 768068 | `cECecece` | 780397 |
| `cEcE` | 739181 | `cEceCE` | 749863 | `cEceCeC` | 775844 |
| `cEceCec` | 746720 | `cEcec` | 730973 | `ceCECEECEC` | 783972 |
| `ceCECEECEc` | 784386 | `ceCECEECeCE` | 782837 | `ceCECEECeCe` | 784327 |
| `ceCECEECecE` | 783639 | `ceCECEECece` | 785387 | `ceCECEEcEC` | 783750 |
| `ceCECEEcEc` | 781892 | `ceCECEEceCE` | 783309 | `ceCECEEceCe` | 785261 |
| `ceCECEEcecE` | 781658 | `ceCECEEcece` | 783748 | `ceCECEeCECE` | 785467 |
| `ceCECEeCECe` | 786184 | `ceCECEeCEcE` | 786777 | `ceCECEeCEceC` | 784392 |
| `ceCECEeCEcec` | 784908 | `ceCECEeCeCE` | 786401 | `ceCECEeCeCe` | 786032 |
| `ceCECEeCecEC` | 784742 | `ceCECEeCecEc` | 785363 | `ceCECEeCeceC` | 784499 |
| `ceCECEeCecec` | 785214 | `ceCECEecECE` | 786843 | `ceCECEecECeC` | 785092 |
| `ceCECEecECec` | 784915 | `ceCECEecEcE` | 785449 | `ceCECEecEce` | 786678 |
| `ceCECEeceCEC` | 785634 | `ceCECEeceCEc` | 785526 | `ceCECEeceCeC` | 785561 |
| `ceCECEeceCec` | 785508 | `ceCECEececEC` | 785005 | `ceCECEececEc` | 784035 |
| `ceCECEececeC` | 785018 | `ceCECEececec` | 784054 | `ceCECeECECE` | 784984 |
| `ceCECeECECe` | 783157 | `ceCECeECEcEC` | 783567 | `ceCECeECEcEc` | 784364 |
| `ceCECeECEce` | 785471 | `ceCECeECeC` | 786583 | `ceCECeECecE` | 782872 |
| `ceCECeECece` | 779226 | `ceCECeEcECEC` | 784773 | `ceCECeEcECEc` | 784758 |
| `ceCECeEcECe` | 786157 | `ceCECeEcEcE` | 786572 | `ceCECeEcEce` | 784908 |
| `ceCECeEceCE` | 783575 | `ceCECeEceCe` | 779894 | `ceCECeEcecE` | 782222 |
| `ceCECeEcece` | 778374 | `ceCECeeCE` | 785798 | `ceCECeeCe` | 771748 |
| `ceCECeecE` | 785725 | `ceCECeece` | 770486 | `ceCEcECEE` | 781160 |
| `ceCEcECEe` | 786758 | `ceCEcECeECE` | 782330 | `ceCEcECeECe` | 783558 |
| `ceCEcECeEc` | 783369 | `ceCEcECeeCE` | 784186 | `ceCEcECeeCe` | 784106 |
| `ceCEcECeec` | 785198 | `ceCEcEcEC` | 778452 | `ceCEcEcEc` | 781321 |
| `ceCEcEceCEC` | 775756 | `ceCEcEceCEc` | 778498 | `ceCEcEceCeC` | 785072 |
| `ceCEcEceCec` | 773055 | `ceCEcEcec` | 780122 | `ceCEceCECEE` | 783204 |
| `ceCEceCECEe` | 781351 | `ceCEceCECe` | 785070 | `ceCEceCEcE` | 783866 |
| `ceCEceCEceC` | 778443 | `ceCEceCEcec` | 784280 | `ceCEceCeCE` | 775241 |
| `ceCEceCeCe` | 781459 | `ceCEceCecEC` | 778778 | `ceCEceCecEc` | 764393 |
| `ceCEceCece` | 752110 | `ceCEcecECEC` | 784682 | `ceCEcecECEc` | 771425 |
| `ceCEcecECe` | 770489 | `ceCEcecEc` | 780002 | `ceCEcece` | 773435 |
| `ceCeCECE` | 763165 | `ceCeCECe` | 693850 | `ceCeCEcE` | 760258 |
| `ceCeCEce` | 743010 | `ceCeCe` | 727837 | `ceCecECEC` | 774399 |
| `ceCecECEc` | 740581 | `ceCecECe` | 672915 | `ceCecEc` | 754732 |
| `ceCece` | 563261 | `cecECE` | 786103 | `cecECeE` | 765877 |
| `cecECee` | 741929 | `cecEc` | 761109 | `cece` | 765744 |
