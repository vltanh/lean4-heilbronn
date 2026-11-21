# The complete nontriangular support cell III in Type-II (1,3,3)

This excludes the entire cell III in the exhaustive support catalogue of [TYPE_II_133_NONTRIANGULAR.md](TYPE_II_133_NONTRIANGULAR.md). All geometric assumptions, rational boxes and nonnegative-factor definitions are proved there. The remaining support cells are separate alternatives.

There are 65 terminal leaves: 27 geometric exclusions and 38 fixed cubic contradictions with 1117 positive-integer terms. All root signs, any refinements, complete deduction traces, products and negative rational bounds are printed below. Every leaf is closed.

Counts: `38 27 1117`.

The companion [check_type_ii_133_nontriangular.py](check_type_ii_133_nontriangular.py) reads these printed tables and performs only exact geometric replay and rational expansion. Run it with the cell name as argument.

## Binary refinement table

A listed node splits on its displayed actual determinant; append `m` or `p` for its negative or positive child. An empty table means the initial ray roots already close without refinement.

```text
III_E2H2F1pp EFX
III_E2H2F1ppp EXR
III_E2H2F1pppm EYZ
III_E2H2F1pppmp HXY
III_E2H2F1pppmpm FXZ
```

## Leaf III_E1H0F0pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECY HCY 1
plu HDEYR HYR -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXR HXR -1
plu HDBZR HZR -1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEHZ YHZ -1
plu YDEFZ YFZ -1
plu YDECR YER 1
plu YDEZR YZR 1
mesh DBH XYZ HXZ -1
mesh DBR XYZ XZR -1
line DEBHFC XZ F -1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E1H0F0pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECY HCY 1
plu HDEYR HYR -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXR HXR -1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDBXR FXR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEHZ YHZ -1
plu YDEFZ YFZ -1
plu YDECR YER 1
plu YDEZR YZR 1
mesh DBH XYZ HXZ -1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `cap DEBH XY 1`.

## Leaf III_E1H1F0pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEFZ YFZ -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu REHCY RHY -1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E1H1F0pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDBXR FXR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEFZ YFZ -1
plu YDECR YER 1
plu YDEZR YZR 1
plu YDBHR YHR 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `cap DEBH XZ 1`.

## Leaf III_E1H1F1pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBYR XYR -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu RDHCY RHY -1
```

Exclusion: `nomesh DBF XZR`.

## Leaf III_E1H1F1pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu REHCY RHY -1
```

Exclusion: `cap DEBH XZ 1`.

## Leaf III_E1H2F0pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDBFY XFY 1
plu YDEFZ YFZ -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu REHCY RHY -1
plu RBHCX RHX -1
mesh DHF XYR DYR -1
mesh DHF XYR HXY -1
mesh DHF XYR XYR -1
mesh DHF XYR FXR 1
mesh DHF XYR FYR 1
mesh DHF XYR DXR 1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E1H2F0pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDBXR FXR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDBHR XHR 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEFZ YFZ -1
plu YDECR YER 1
plu YDEZR YZR 1
plu YDBHR YHR 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
8 L0*L27
11 quad_DEBR_XYZ
```

Upper bound: `-10880855733/11375000000`.

## Leaf III_E1H2F1pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu RDHCY RHY -1
plu RBHCX RHX -1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR DXR -1
mesh DBF XZR XZR 1
line DEBHFC XR E -1
```

### Strengthened triangle witnesses

```text
+BFYo933/125 XR
+HFCo3 R
-DCRo933/125 XY
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
20 L0*L11
3 L2*L17
1 -HCR
1 -HCR*L10
1 +BFR
1 contact_height*L10
1 -DCRo933/125*L34
9 +BFYo933/125
1 +HFCo3*L27
1 quad_DEBH_Z
7 quad_DEBF_XZR
3 quad_EBFY_XZR
```

Upper bound: `-5242993932497/11375000000000`.

## Leaf III_E1H2F1pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDBHR XHR 1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu REHCY RHY -1
```

### Strengthened triangle witnesses

```text
+EBCo933/125 XZ
+HFCo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
1885 L1*L6
460 L5*L6
319 L6*L30
1347 L9*L31
85 L9*L34
966 L0*L2*L15
1457 L0*L2*L27
170 L0*L5*L10
300 L0*L5*L33
759 L0*L14*L27
470 L0*L30*L33
527 L1*L6*L10
470 L5*L5*L33
1540 L5*L10*L10
470 L5*L10*L30
470 L6*L30*L30
1058 L9*L15*L26
154 L10*L10*L13
1058 L10*L14*L25
857 L10*L25*L33
216 +DEB
1028 +DEB*L1
170 +DEB*L5
1861 +DEB*L10
763 +DEB*L15
632 +DEB*L27
1215 +BHF
470 +BHF*L5
527 +BHF*L10
470 +BHF*L30
154 -DCX*L9*L10
407 +BCX*L10
159 +BCX*L27
1493 +FCR
108 +FCR*L12
1058 +FCR*L14
857 +FCR*L31
996 -DCR*L9
857 -DCR*L9*L31
1119 -HCR
154 -DFX*L10
108 +DFR*L12
867 -FXR
216 +EBCo933/125
1028 +EBCo933/125*L0
435 +EBCo933/125*L10
203 +EBCo933/125*L15
306 +EBCo933/125*L27
1013 +HFCo3*L10
170 quad_DEBH_Z*L4
1119 quad_DEBH_Z*L27
226 quad_DEBX_Z*L11
600 quad_DEBX_Z*L26
```

Upper bound: `-3645510023523/7812500000000`.

## Leaf III_E1H2F2pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBX FEX -1
plu FDBXZ FXZ 1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu RDHCX RHX -1
plu RDHCY RHY -1
```

### Strengthened triangle witnesses

```text
+EBCo933/125 XZ
-DCRo933/125 XY
```

### Mesh witnesses

```text
ear_DBC_DBZ DBC XYZ
```

### Fixed polynomial

```text
18 L1*L6
6 L5*L10
7 L6*L25
4 L9*L14
2 L9*L26
3 L15*L25
13 L5*L10*L26
3 +DEB
2 +DEB*L31
18 +DFC*L0*L2
7 +BHF
3 +BHF*L24
5 -DCX*L9*L23
7 +BCX*L11
4 +BCX*L23
9 +BCX*L26
17 +DEZ
7 +DBZ*L15
1 +DBZ*L33
3 +BHR*L9
27 +HFR
3 +HFR*L1
6 +FCR*L6
4 +FCR*L13
9 +FCR*L15
13 -HCR
13 -HCR*L10
3 +BFR*L4
9 +BFR*L15
2 +BXZ*L10
7 -CXZ
1 -CXZ*L10
6 -DHZ
5 +DFX*L22
4 -DFR*L12
12 +FXR
4 ear_DBC_DBZ*L6
12 -DCRo933/125*L30
4 +EBCo933/125
4 +EBCo933/125*L11
1 +EBCo933/125*L22
16 quad_DEBH_Z*L11
6 quad_DEBH_Z*L22
1 quad_DRFC_XY*L6
```

Upper bound: `-693228701/25000000000`.

## Leaf III_E1H2F2pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBX FEX -1
plu FDEBR FER -1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu REHCY RHY -1
plu RBHCX RHX -1
mesh DFC XYR DYR -1
mesh DFC XYR FXR -1
mesh DFC XYR XYR -1
mesh DFC XYR FYR -1
mesh DFC XYR FXY -1
mesh DFC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DFCo4427/500 XYR
+DFRo3 X
+EBCo933/125 XZ
+FCZo933/125 XR
```

### Mesh witnesses

```text
ear_DFC_FCR DFC RYX
```

### Fixed polynomial

```text
3 L22*L32
3 +BHF
26 +DEZ
15 -DCZ*L9
5 +DBZ*L11
1 +FCR
1 -HCR
1 -ECZ
3 +DFCo4427/500*L4
13 +DFCo4427/500*L20
1 ear_DFC_FCR*L4
1 +DFRo3*L5
4 +EBCo933/125
17 +FCZo933/125
```

Upper bound: `-890211507/1562500000`.

## Leaf III_E1H3F0pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu XDBFY XFY 1
plu YDEFZ YFZ -1
plu YDBHZ YHZ -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu REHCY RHY -1
plu RBHCX RHX -1
plu RBHCZ RHZ -1
mesh DHC XYZ HXY 1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E1H3F0pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu DEFZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDBXR FXR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu XDBHR XHR 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEFZ YFZ -1
plu YDECR YER 1
plu YDEZR YZR 1
plu YDBHZ YHZ -1
plu YDBHR YHR 1
plu ZDBHR ZHR 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
mesh DHF XYZ HXY 1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
8 L0*L27
11 quad_DEBR_XYZ
```

Upper bound: `-10880855733/11375000000`.

## Leaf III_E1H3F1pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu RDHCY RHY -1
plu RBHCX RHX -1
plu RBHCZ RHZ -1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
mesh DBF XZR DZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR DXR -1
mesh DBF XZR XZR 1
mesh DHC XYZ HXY 1
line DEBHFC XR E -1
```

### Strengthened triangle witnesses

```text
+DFCo3 Y
+HFYo933/125 XR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
12 L4*L11
2 L19*L31
1 +DFCo3*L0
8 +HFYo933/125
8 quad_DEBY_Z*L33
2 quad_DBHF_XZR
2 quad_DHFY_XZR
```

Upper bound: `-610294271297/710937500000`.

## Leaf III_E1H3F1pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBR FER -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu XDBHR XHR 1
plu XDBYR XYR -1
plu YDBHZ YHZ -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu ZDBHR ZHR 1
plu REHCY RHY -1
mesh DHC XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 YR
+DHFo933/125 XZ
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
35 L1*L6
19 +DEB
35 +BHF
15 +DHFo933/125
8 +DFCo933/125
15 +DFCo933/125*L4
35 +DFCo933/125*L34
5 +EBCo933/125
```

Upper bound: `-1124491/1250000`.

## Leaf III_E1H3F2pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDBXZ FXZ 1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu RDHCX RHX -1
plu RDHCY RHY -1
plu RBHCZ RHZ -1
mesh DHC XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 XY
+DHFo933/125 ZR
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
35 L1*L6
19 +DEB
35 +BHF
15 +DHFo933/125
8 +DFCo933/125
15 +DFCo933/125*L4
35 +DFCo933/125*L34
5 +EBCo933/125
```

Upper bound: `-1124491/1250000`.

## Leaf III_E1H3F2pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFZR DZR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDEBR FER -1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu YDBHZ YHZ -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu ZDBHR ZHR 1
plu REHCY RHY -1
plu RBHCX RHX -1
mesh DHC XYZ HXY 1
mesh DFC XYR DYR -1
mesh DFC XYR FXR -1
mesh DFC XYR XYR -1
mesh DFC XYR FYR -1
mesh DFC XYR FXY -1
mesh DFC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DFCo4427/500 XYR
+FCZo933/125 XR
```

### Mesh witnesses

```text
ear_DBC_DBZ DBC XYZ
```

### Fixed polynomial

```text
1 L4*L9
7 L9*L23
10 +BHF
1 +BCZ*L33
5 +DHZ
4 ear_DBC_DBZ*L33
9 +DFCo4427/500*L4
2 +DFCo4427/500*L20
2 +DFCo4427/500*L4*L20
7 +FCZo933/125
1 quad_DEZC_Y
3 quad_DEZC_Y*L4
2 quad_DZFC_XYR*L4
```

Upper bound: `-22363298577/25000000000`.

## Leaf III_E1H3F3pm

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu DEFZR DZR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDEBZ FEZ -1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFZ XFZ -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu RDHCX RHX -1
plu RDHCY RHY -1
plu RDHCZ RHZ -1
mesh DHC XYZ HXY 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
ear_DFC_FCX DFC XYZ
```

### Fixed polynomial

```text
1 L32
1 +BCX
10 ear_DFC_FCX
```

Upper bound: `-109626727/116625000`.

## Leaf III_E1H3F3pp

Box: `III1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDEBZ FEZ -1
plu FDEBR FER -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu XDBFZ XFZ -1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YEBCR YER 1
plu YEBZR YZR 1
plu REHCY RHY -1
plu RBHCX RHX -1
plu RBHCZ RHZ -1
mesh DHC XYZ HXY 1
```

Exclusion: `nomesh EFC XZR`.

## Leaf III_E2H0F0pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu HDEXR HXR -1
plu HDEYR HYR -1
plu HDEZR HZR -1
plu CDEBR CER 1
plu XDEHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DEH XYZ EYZ 1
mesh DEH XYZ HXZ -1
mesh DBR XYZ XZR -1
line DEBHFC XZ F -1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E2H0F0pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu HDEXR HXR -1
plu HDEYR HYR -1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu XDEHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DEH XYZ EYZ 1
mesh DEH XYZ HXZ -1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `cap DEBH XY 1`.

## Leaf III_E2H1F0pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E2H1F0pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECR YER 1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `cap DEBH XZ 1`.

## Leaf III_E2H1F1pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEYZ FYZ 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBYR XYR -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDECR ZER 1
plu RDHCY RHY -1
```

Exclusion: `nomesh DBF XZR`.

## Leaf III_E2H1F1pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
```

Exclusion: `cap DEBH XZ 1`.

## Leaf III_E2H2F0pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDBFY XFY 1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
plu RBHCX RHX -1
mesh DHF XYR FYR 1
mesh DHF XYR XYR -1
mesh DHF XYR DYR -1
mesh DHF XYR FXR 1
mesh DHF XYR DXR 1
mesh DHF XYR HXY -1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E2H2F0pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDBHR XHR 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECR YER 1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

### Strengthened triangle witnesses

```text
+DBFo4427/500 XYZ
+DBHo3 Z
+DFCo3 R
+DHFo933/125 XY
+HFCo3 R
```

### Mesh witnesses

```text
ear_DBF_BFX DBF XYZ
```

### Fixed polynomial

```text
4 L1*L6
4 L10*L25
6 L25*L33
6 +DHC*L0*L27
10 +DFC*L0*L27
3 +EBH
1 +BHF*L15
3 +BHF*L27
6 +BCX
5 +BCX*L31
30 +FCR
20 -DCR*L9
4 -DCR*L0*L2
6 -HCR
4 +DFR*L27
5 +BFX*L6
2 +DBHo3*L3
5 +DBFo4427/500*L14
10 ear_DBF_BFX
2 +DHFo933/125*L26
17 +DFCo3*L0*L2
5 +HFCo3*L14
1 +HFCo3*L26
4 quad_DEBH_Z*L27
7 quad_DEBR_XYZ
15 quad_DEBR_XYZ*L11
2 quad_DBHX_Z
5 quad_DBHX_Z*L11
1 quad_DBHR_XYZ*L11
1 quad_DBFR_XYZ*L6
4 quad_DBFR_XYZ*L26
2 quad_EBRC_X*L11
```

Upper bound: `-398607968787591/710937500000000`.

## Leaf III_E2H2F1pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEYZ FYZ 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDECR ZER 1
plu RDHCY RHY -1
plu RBHCX RHX -1
mesh DBF XZR FZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
mesh DBF XZR DXR -1
mesh DBF XZR XZR 1
chord DEBHFC XZ EF X
line DEBHFC XR E -1
```

### Strengthened triangle witnesses

```text
+DHFo933/125 XR
-DFRo3 X
```

### Mesh witnesses

```text
ear_DBF_BFR DBF RXZ
```

### Fixed polynomial

```text
7 L0*L11
6 L6*L32
2 L9*L26
2 L0*L2*L27
2 L5*L10*L26
5 +DHC*L0*L11
5 +DFC*L0*L2
1 +BCX
3 +HFR
11 +HFR*L11
3 +FCR*L0
13 -HCR
1 -HCR*L10
14 +BFR
1 -ECX
10 ear_DBF_BFR*L6
11 +DHFo933/125*L10
4 -DFRo3
3 -DFRo3*L1
11 -DFRo3*L11
6 quad_DEBH_Z
5 quad_DEBH_Z*L11
3 quad_DEBH_Z*L27
10 quad_DBHF_XZR*L27
```

Upper bound: `-138267753261/1562500000000`.

## Leaf III_E2H2F1ppm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR -EFX`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDFXY EXY 1
plu EDFXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXZ FXZ -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEFR XER -1
plu XDEZR XZR -1
plu XDBHR XHR 1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 YR
+HFCo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
1 +DEC*L32
1 +BCX
8 -EFX
2 +DFCo933/125
1 +DFCo933/125*L4
8 +DFCo933/125*L12
1 +HFCo3
1 quad_DEBH_Z
```

Upper bound: `-3116105997021/4859375000000`.

## Leaf III_E2H2F1pppmm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR -EYZ`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu EDCXR ECR -1
plu EDCYR EYR -1
plu EDCZR EZR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEHR XHR 1
plu XDEYR XYR -1
plu YEBZR YZR 1
plu REHCY RHY -1
```

### Strengthened triangle witnesses

```text
-EYRo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
15 L2*L17
3 L3*L16
7 +DEC*L25
5 +FCR
5 +DFR
17 -EYRo933/125
```

Upper bound: `-107573859/125000000`.

## Leaf III_E2H2F1pppmpmm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR +EYZ -HXY -FXZ`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu EDCXR ECR -1
plu EDCYR EYR -1
plu EDCZR EZR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEHR XHR 1
plu XDEYR XYR -1
plu XDFZR XZR -1
plu YECZR YZR 1
plu REHCY RHY -1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 YR
+EFCo933/125 XR
+HFCo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
4 L6*L32
3 L9*L12
24 L20*L33
6 L0*L14*L33
17 L1*L6*L12
15 L1*L6*L14
3 L2*L5*L22
34 L5*L15*L23
11 L6*L9*L22
15 +DEB*L23
1 +EBH*L13
3 +EBH*L22
16 +BHF*L20
1 -DCX*L0*L2
3 -DCX*L0*L9
34 -DCX*L0*L23
3 -DCX*L4*L9
28 +BCX
1 +BCX*L3
21 +BCX*L23
19 +BCX*L30
7 +BCX*L31
22 -DCZ*L7*L9
27 +DBZ
86 +DBZ*L15
16 +DBZ*L30
4 +DBZ*L31
14 +BXZ*L6
52 -DXZ
12 -DXZ*L8
1 -DXZ*L11
25 -DXZ*L30
18 -CXZ*L9
8 -ECX*L0
1 -ECX*L5
3 -ECX*L9
34 +DHX*L22
3 +DHX*L32
15 -DHZ
7 -DHZ*L8
24 -DHZ*L11
16 -DHZ*L14
53 -FXZ
9 -FXZ*L4
1 -FXZ*L7
16 -FXZ*L34
15 +HXZ
1 +HXZ*L11
18 +HXZ*L32
3 +DFCo933/125*L7
36 +DFCo933/125*L12
5 +DFCo933/125*L21
31 +DFCo933/125*L22
9 +DFCo933/125*L4*L12
5 +DFCo933/125*L5*L22
16 +DFCo933/125*L12*L34
4 +DFCo933/125*L23*L34
9 +EFCo933/125*L12
4 +EFCo933/125*L14
1 +HFCo3*L14
9 +HFCo3*L20
35 +HFCo3*L23
31 quad_DEBX_Z*L22
6 quad_DEXC_YZ*L9
16 quad_DBHX_Z*L22
```

Upper bound: `-377043195505611/607421875000000`.

## Leaf III_E2H2F1pppmpmp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR +EYZ -HXY +FXZ`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu EDCXR ECR -1
plu EDCYR EYR -1
plu EDCZR EZR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEHR XHR 1
plu XDEYR XYR -1
plu YECZR YZR 1
plu REHCY RHY -1
```

### Strengthened triangle witnesses

```text
+DERo933/125 XZ
+DFCo933/125 YR
+FCZo933/125 XR
+HFCo3 R
-DFZo3 X
```

### Mesh witnesses

```text
center_ZXY DBC XYZ
```

### Fixed polynomial

```text
3 L0*L9
130 L1*L6
58 L5*L10
2 L9*L20
1 L10*L19
10 L25*L33
9 L0*L0*L19
10 L0*L2*L17
9 L0*L13*L19
4 L0*L14*L27
1 L0*L16*L19
12 L0*L19*L20
69 L0*L23*L23
1 L0*L23*L29
1 L2*L3*L17
80 L2*L3*L20
3 L2*L10*L25
10 L2*L17*L20
4 L2*L20*L28
5 L2*L22*L25
35 L3*L14*L20
10 L3*L17*L17
11 L3*L23*L25
86 L5*L10*L10
27 L5*L10*L26
3 L9*L16*L23
9 L10*L10*L13
10 L10*L10*L21
3 L10*L12*L19
10 L10*L13*L17
1 L10*L14*L32
1 L12*L17*L19
1 L16*L16*L19
10 L16*L19*L20
10 L17*L17*L22
1 L17*L17*L28
1 +DEC*L9
13 +DEC*L9*L23
3 +DEC*L9*L26
5 +DEC*L14*L25
3 +DHC*L10*L25
13 +EFC*L6
130 +BHF
5 -DCX*L0*L19
8 -DCX*L9*L10
10 -DCX*L9*L17
3 -DCX*L9*L18
7 +BCX*L1
1 +BCX*L11
8 +BCX*L16
4 +BCX*L18
7 +BCX*L22
4 +BCX*L27
103 +EBZ
75 +EBZ*L2
17 +EBZ*L16
99 +EBZ*L23
3 +EBZ*L29
9 -DCZ*L9
32 -DCZ*L0*L9
10 -DCZ*L9*L10
16 -DCZ*L9*L20
177 +DBZ*L3
85 +DBZ*L11
5 +DBZ*L17
6 +DBZ*L18
32 +DBZ*L22
34 +FCR
2 +FCR*L0
2 +FCR*L3
8 +FCR*L14
8 +FCR*L31
23 -HCR
20 -DXZ*L9
15 -DXZ*L10
6 +BXY
9 +BXY*L1
2 +BXY*L3
1 +BXY*L17
7 +BXY*L22
14 +CYZ*L0
13 +CYZ*L20
2 -ECX
1 -ECX*L0
30 -ECX*L10
10 -ECX*L16
39 -ECX*L23
4 -ECX*L24
5 -ECX*L26
11 -DFX
32 -DFX*L3
15 -DFX*L11
3 -DFX*L18
28 -DFX*L21
39 -DFX*L22
8 -DFX*L27
88 -DFZ*L9
6 +EYZ
27 +EYZ*L1
5 +EYZ*L2
10 +EYZ*L17
13 +EYZ*L21
7 +EYZ*L22
44 +FXZ
37 +FXZ*L3
32 +FXZ*L11
10 +FXZ*L16
7 +FXZ*L23
10 +EXZ*L17
10 -FXR
5 -FXR*L3
8 -FXR*L11
4 +DERo933/125*L13
16 +DERo933/125*L23
2 center_ZXY*L3
7 center_ZXY*L22
32 +DFCo933/125*L0*L20
3 +DFCo933/125*L16*L20
16 +DFCo933/125*L20*L20
106 -DFZo3*L0
12 -DFZo3*L25
86 +HFCo3*L10
27 +HFCo3*L26
36 +FCZo933/125
24 +FCZo933/125*L2
26 +FCZo933/125*L10
28 +FCZo933/125*L12
47 +FCZo933/125*L15
7 +FCZo933/125*L17
16 +FCZo933/125*L20
7 +FCZo933/125*L22
12 +FCZo933/125*L24
88 +FCZo933/125*L32
1 quad_DEBX_Z*L19
3 quad_DEFC_XYZR*L6
4 quad_DZFC_XYR*L6
2 quad_DZFR_X*L0
12 quad_DZFR_X*L10
4 quad_DZFR_X*L33
8 quad_DZXC_Y*L9
```

Upper bound: `-270652767882379/2429687500000000`.

## Leaf III_E2H2F1pppmpp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR +EYZ +HXY`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu EDCXR ECR -1
plu EDCYR EYR -1
plu EDCZR EZR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEHR XHR 1
plu XDEYR XYR -1
plu YEHXR YHR 1
plu YECZR YZR 1
```

### Strengthened triangle witnesses

```text
+DBHo3 Z
+DEHo3 Z
+DERo933/125 XZ
+DEYo3 Z
+DFCo933/125 YR
+EBCo3 X
+EFCo933/125 XR
+HFCo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
4 L5*L19
15 L7*L20
2 L0*L2*L29
3 L0*L2*L33
7 L0*L3*L14
3 L0*L5*L14
6 L0*L5*L23
8 L0*L7*L16
2 L0*L7*L20
7 L1*L2*L16
4 L1*L3*L28
3 L2*L5*L12
1 L2*L7*L20
1 L2*L10*L25
4 L3*L23*L30
1 L5*L10*L19
25 L5*L10*L23
4 L9*L14*L19
13 L9*L15*L18
1 +DEC*L9*L15
3 +DEC*L17*L25
3 +DHC*L0*L29
3 +DHC*L9*L15
25 +DHC*L9*L23
3 +EBH*L12
6 +EBH*L21
4 +EBH*L22
1 +BHF
3 +BHF*L13
4 +BHF*L28
6 -DCX*L3*L9
1 -DCX*L4*L9
23 -DCX*L9*L17
2 -DCX*L9*L31
27 +BCX
3 +BCX*L7
16 +BCX*L16
21 +BCX*L18
5 +BCX*L29
3 +BCX*L30
3 +BCX*L31
6 +EBZ*L3
35 +DBZ
24 +DBZ*L3
1 +DBZ*L4
3 +DBZ*L7
28 +DBZ*L18
5 +DBZ*L28
1 +FCR
1 -DCR*L9
6 -DYZ*L2
2 +XYZ*L6
4 -DXZ*L6
5 -DXZ*L19
24 +BXY*L6
7 +CYZ*L0
5 +CYZ*L15
26 +DXY*L7
3 +ECY*L9
1 +ECZ*L6
15 -ECX
3 -ECX*L1
9 -ECX*L2
24 -DHZ
7 -DHZ*L0
5 -DHZ*L28
4 -DFX
7 -DFX*L3
1 -DFX*L4
24 -DFX*L17
18 -DFX*L18
2 -DFX*L31
3 -DFX*L34
28 +EYZ
7 +EYZ*L1
6 +EYZ*L2
36 +HXY
5 +HXY*L23
3 +HCX*L9
8 contact_height*L16
4 +DEHo3*L25
15 +DEYo3*L2
4 +DERo933/125*L4
1 +DERo933/125*L11
3 +DERo933/125*L17
16 +DBHo3*L28
1 +DFCo933/125*L3
3 +DFCo933/125*L4
4 +DFCo933/125*L17
9 +DFCo933/125*L18
4 +DFCo933/125*L22
1 +DFCo933/125*L33
1 +DFCo933/125*L3*L12
1 +DFCo933/125*L4*L12
3 +DFCo933/125*L4*L15
24 +DFCo933/125*L12*L17
18 +DFCo933/125*L12*L18
2 +DFCo933/125*L12*L31
1 +DFCo933/125*L28*L34
1 +EBCo3*L23
1 +EBCo3*L29
4 +EFCo933/125*L22
4 +HFCo3*L19
26 +HFCo3*L23
11 quad_DEBH_Z*L28
6 quad_DEBY_Z*L2
33 quad_DEBY_Z*L23
3 quad_DEBY_Z*L33
3 quad_BCYZ_X*L6
```

Upper bound: `-345184937311/1562500000000`.

## Leaf III_E2H2F1pppp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX +EXR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDFXR EFR 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEZR XZR -1
plu XDBHR XHR 1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
```

### Strengthened triangle witnesses

```text
+DBHo3 Z
+DBRo933/125 XZ
+DEFo933/125 XZ
+DFCo933/125 YR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
5 L1*L6
30 L3*L13
7 L6*L32
12 L25*L33
11 L0*L2*L27
9 L0*L3*L26
1 L0*L4*L27
12 L0*L7*L27
6 L0*L27*L27
1 L2*L26*L32
6 L5*L14*L26
7 L26*L26*L32
1 +DEC*L25*L26
7 +BHF
25 -DCX*L25
21 +BCX
3 +BCX*L3
7 +BCX*L7
7 +BCX*L26
2 +DBZ
2 +DBZ*L7
12 +FCR
1 -DCR*L9
7 -DCR*L9*L27
28 -HCR
6 -HCR*L14
1 -HCR*L26
3 +DHX*L10
7 +DHX*L14
2 -DHZ
33 +EXR
1 R_height*L0
1 +DEFo933/125*L26
2 +DBHo3*L22
34 +DBRo933/125*L3
17 +DBRo933/125*L6
4 +DFCo933/125*L34
28 quad_DEBH_Z*L27
25 quad_DEBX_Z*L27
8 quad_DBHX_Z
3 quad_DBHX_Z*L11
7 quad_DBHX_Z*L15
1 quad_EBHR_X*L27
3 quad_EBRC_X*L14
```

Upper bound: `-422942880441601/607421875000000`.

## Leaf III_E2H2F2pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBX FEX -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDECR ZER 1
plu RDHCX RHX -1
plu RDHCY RHY -1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 XY
+HFXo3 R
-DCRo933/125 XY
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
97 L1*L6
1 L1*L9
75 L3*L5
10 L3*L10
144 L3*L13
2 L3*L25
9 L3*L30
49 L6*L21
18 L6*L25
22 L9*L26
17 L9*L31
17 L0*L5*L10
37 L0*L12*L33
55 L1*L6*L20
1 L3*L13*L21
8 L3*L13*L25
53 L3*L13*L30
80 L3*L13*L32
79 L3*L20*L34
50 L5*L10*L10
46 L5*L10*L14
6 L5*L10*L23
26 L5*L10*L25
5 L5*L15*L25
42 L9*L10*L26
81 L9*L14*L31
35 L10*L12*L33
14 L10*L15*L20
70 +DEB*L23
7 +DFC*L3*L13
12 +DFC*L3*L20
11 +BHF
54 +BHF*L11
37 +BHF*L12
107 +BHF*L14
44 +BHF*L24
8 -DCX*L1*L9
1 -DCX*L9*L21
9 -DCX*L9*L26
32 +DBX*L9
65 +BCX
7 +BCX*L7
20 +BCX*L8
116 +BCX*L11
4 +BCX*L24
123 +BCX*L26
64 +EBZ
20 +DBZ
62 +DBZ*L3
55 +DBZ*L4
149 +DBZ*L11
44 +BHR*L9
114 +BHR*L15
146 +HFR
48 +HFR*L1
42 +HFR*L10
4 +HFR*L12
2 -DCR*L5*L9
58 -HCR
4 -HCR*L1
42 -HCR*L10
9 -HCR*L12
114 -HCR*L14
65 +BFR*L4
4 +BFR*L13
9 +BFR*L15
7 +ECZ*L13
79 +ECZ*L34
144 -ECX
7 -ECX*L10
8 -ECX*L21
8 -ECX*L25
53 -ECX*L30
80 -ECX*L32
36 +DHX*L9
39 -DHZ
55 -DHZ*L0
144 -DHZ*L11
63 +DFX*L0
46 +DFX*L4
19 +DFX*L10
1 +DFX*L20
28 -DFZ*L6
2 +EXZ
14 +EXZ*L11
127 +FXR
4 +FXR*L1
5 +FXR*L5
54 +DFCo933/125*L0*L10
14 +DFCo933/125*L13*L22
9 +DFCo933/125*L15*L25
149 +DFCo933/125*L22*L34
24 -DCRo933/125*L4*L32
62 +HFXo3*L10
8 quad_DEBH_Z*L22
4 quad_DBHX_Z*L9
27 quad_DZXC_Y*L6
28 quad_BFCZ_XR*L6
27 quad_BFXZ_R*L6
```

Upper bound: `-7638466851679451/2429687500000000`.

## Leaf III_E2H2F2pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBX FEX -1
plu FDEBR FER -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
plu RBHCX RHX -1
mesh DFC XYR FXY -1
mesh DFC XYR XYR -1
mesh DFC XYR FYR -1
mesh DFC XYR DYR -1
mesh DFC XYR FXR -1
mesh DFC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DFCo4427/500 XYR
+DFRo3 X
```

### Mesh witnesses

```text
ear_DFC_FCR DFC RYX
```

### Fixed polynomial

```text
38 L0*L33
68 L1*L6
5 L3*L13
38 L5*L10
3 L10*L30
3 L25*L31
15 +DEB
8 +DEB*L14
106 +BHF
1 -DCX*L25
1 -DCX*L3*L9
7 +BCX
1 +BCX*L26
32 +FCR
3 +FCR*L30
39 -HCR
1 +CXR*L0
6 -ECX
6 +DFX
1 +DFX*L2
14 +DFX*L24
1 +DFX*L27
13 +DXR
14 +DXR*L8
1 +DXR*L11
1 +DXR*L32
68 +DFCo4427/500*L34
36 ear_DFC_FCR*L4
1 ear_DFC_FCR*L14
36 +DFRo3*L5
14 +DFRo3*L13
3 +DFRo3*L30
```

Upper bound: `-25809869828509/19437500000000`.

## Leaf III_E2H3F0pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu XDBFY XFY 1
plu YDBHZ YHZ -1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZEBCR ZER 1
plu REHCY RHY -1
plu REHCZ RHZ -1
plu RBHCX RHX -1
mesh DHC XYZ HXY 1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E2H3F0pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu DEFZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu XDBHR XHR 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECR YER 1
plu YDBHZ YHZ -1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
plu ZDBHR ZHR 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
mesh DHF XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+HFCo3 R
```

### Mesh witnesses

```text
ear_DHF_HFX DHF XYZ
```

### Fixed polynomial

```text
1 L0*L11
4 L0*L27
5 L1*L6
4 L3*L34
3 L4*L11
5 L4*L27
4 +EBH
4 +BHF*L15
1 +BCX
4 +BCX*L31
2 +FCR
3 -HCR
4 ear_DHF_HFX
4 +HFCo3*L14
4 quad_DEBR_XYZ
2 quad_DBHR_XYZ
2 quad_DHFR_XYZ
```

Upper bound: `-80013690737/113750000000`.

## Leaf III_E2H3F1pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEYZ FYZ 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZEBCR ZER 1
plu RDHCY RHY -1
plu REHCZ RHZ -1
plu RBHCX RHX -1
mesh DBF XZR FZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
mesh DBF XZR DXR -1
mesh DBF XZR DZR 1
mesh DBF XZR XZR 1
mesh DHC XYZ HXY 1
chord DEBHFC XZ EF X
line DEBHFC XR E -1
```

### Strengthened triangle witnesses

```text
+DHFo4427/500 XZR
+HFYo933/125 XR
-DCRo933/125 XY
```

### Mesh witnesses

```text
ear_DHF_HFR DHF RXZ
```

### Fixed polynomial

```text
3 L0*L11
9 L1*L6
6 L3*L34
5 L5*L19
1 L19*L31
5 L0*L19*L31
5 +DBH*L3
6 +DHC*L0*L11
12 +EBH
5 +BHR*L11
5 +BFR*L10
1 +DFY*L4
1 +DHFo4427/500*L10
1 +DHFo4427/500*L16
5 ear_DHF_HFR*L10
3 -DCRo933/125*L34
6 +HFYo933/125
5 quad_DEBF_XZR*L11
5 quad_DEBY_Z*L31
1 quad_DEHY_Z*L9
1 quad_DEFC_XYZ*L4
1 quad_DBHF_XZR*L11
1 quad_DHFY_XZR
```

Upper bound: `-31079139363/45500000000`.

## Leaf III_E2H3F1pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBR FER -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu XDBHR XHR 1
plu XDBYR XYR -1
plu YDBHZ YHZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu ZDBHR ZHR 1
plu REHCY RHY -1
mesh DHC XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 YR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
17 L1*L3
99 L1*L6
97 L3*L34
1 L4*L9
11 L0*L4*L15
16 +DEB
3 +DEB*L4
97 +EBH
19 +BHF
14 +BHF*L13
71 +BHX*L29
38 -DCX*L9
16 -DCX*L4*L9
26 +BCX
11 +BCX*L5
14 +BCX*L30
65 -DXZ
17 +BYZ
71 +BYZ*L7
71 +BYZ*L14
65 +DHZ
39 -DFX
16 -DFX*L4
14 -DFX*L34
14 +HCX*L0
14 +HCX*L9
71 +HXZ*L19
27 +HXY
71 +HXY*L22
14 +DFCo933/125
5 +DFCo933/125*L4
38 +DFCo933/125*L12
29 +DFCo933/125*L34
16 +DFCo933/125*L4*L12
```

Upper bound: `-152480847749/125000000000`.

## Leaf III_E2H3F2pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBX FEX -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEHZ XHZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZEBCR ZER 1
plu RDHCX RHX -1
plu RDHCY RHY -1
plu REHCZ RHZ -1
mesh DHC XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 XY
+DHFo933/125 ZR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
5 L1*L3
43 L1*L6
40 L3*L13
4 L3*L34
22 L3*L13*L32
4 +EBH
39 +BHF
4 -DCX*L1*L9
3 +DBX*L9
35 +BCX
12 +BCX*L8
40 -ECX
22 -ECX*L32
10 +DFX
19 +DFX*L0
19 +DHFo933/125
5 +DFCo933/125*L4
10 +DFCo933/125*L13
52 +DFCo933/125*L34
19 +DFCo933/125*L0*L13
```

Upper bound: `-192851455388921/607421875000000`.

## Leaf III_E2H3F2pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFZR DZR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBX FEX -1
plu FDEBR FER -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu YDBHZ YHZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu ZDBHR ZHR 1
plu REHCY RHY -1
plu RBHCX RHX -1
mesh DHC XYZ HXY 1
mesh DFC XYR FXY -1
mesh DFC XYR XYR -1
mesh DFC XYR FYR -1
mesh DFC XYR DYR -1
mesh DFC XYR FXR -1
mesh DFC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DFCo4427/500 XYR
+DHCo4427/500 XYZ
+FCZo933/125 XR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
2 L0*L33
5 L5*L10
7 L10*L30
15 +BHF
2 -DCZ*L9
7 +DHZ
7 -DFZ*L9
13 +DHCo4427/500*L0
9 +DFCo4427/500*L20
3 +DFCo4427/500*L34
4 +FCZo933/125
7 +FCZo933/125*L30
1 quad_DZFC_XYR
7 quad_DZFC_XYR*L4
```

Upper bound: `-1606474489/1750000000`.

## Leaf III_E2H3F3pm

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu DEFZR DZR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBX FEX -1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEHZ XHZ -1
plu XDEFZ XFZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu RDHCX RHX -1
plu RDHCY RHY -1
plu RDHCZ RHZ -1
mesh DHC XYZ HXY 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
ear_DFC_FCX DFC XYZ
```

### Fixed polynomial

```text
1 L32
8 -DCX*L32
7 +BCX
8 ear_DFC_FCX
```

Upper bound: `-54613511/62500000`.

## Leaf III_E2H3F3pp

Box: `III2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBX FEX -1
plu FDEBR FER -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu XDEFZ XFZ -1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZEBCR ZER 1
plu REHCY RHY -1
plu REHCZ RHZ -1
plu RBHCX RHX -1
mesh DHC XYZ HXY 1
```

Exclusion: `four DFC XYZR`.

## Leaf III_E3H0F0pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu HDEXR HXR -1
plu HDEYR HYR -1
plu HDEZR HZR -1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDEHY XHY 1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu YDECR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DEH XYZ HXZ -1
mesh DEH XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E3H0F0pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu HDEXR HXR -1
plu HDEYR HYR -1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXR FXR -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDEHY XHY 1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu YDECR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DEH XYZ HXZ -1
mesh DEH XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
```

Exclusion: `cap DEBH XY 1`.

## Leaf III_E3H1F0pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
mesh DEF XYZ FXZ -1
mesh DEF XYZ EYZ 1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E3H1F0pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXR FXR -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu YDECR YER 1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DEF XYZ FXZ -1
mesh DEF XYZ EYZ 1
mesh DER XYZ XZR -1
```

Exclusion: `cap DEBH XZ 1`.

## Leaf III_E3H1F1pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEXY FXY -1
plu FDEYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDECR ZER 1
plu RDHCY RHY -1
mesh DEC XYZ EYZ 1
```

Exclusion: `nomesh DBF XZR`.

## Leaf III_E3H1F1pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEXR HXR -1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
mesh DEC XYZ EYZ 1
```

Exclusion: `cap DEBH XZ 1`.

## Leaf III_E3H2F0pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XEBCR XER 1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCX RHX -1
plu REHCY RHY -1
mesh DEF XYZ FXZ -1
mesh DEF XYZ EYZ 1
mesh DHF XYR DYR -1
mesh DHF XYR FXR 1
mesh DHF XYR XYR -1
mesh DHF XYR FYR 1
mesh DHF XYR HXY -1
mesh DHF XYR DXR 1
via R BFX FZ 1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E3H2F0pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXR FXR -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu XDBHR XHR 1
plu YDECR YER 1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DEF XYZ FXZ -1
mesh DEF XYZ EYZ 1
mesh DER XYZ XZR -1
```

### Strengthened triangle witnesses

```text
+DERo4427/500 XYZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
23 +DERo4427/500
```

Upper bound: `-493419/500000`.

## Leaf III_E3H2F1pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEXY FXY -1
plu FDEYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XEBCR XER 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDECR ZER 1
plu RDHCY RHY -1
plu REHCX RHX -1
mesh DEC XYZ EYZ 1
mesh DBF XZR DXR -1
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FZR 1
mesh DBF XZR FXR 1
```

### Strengthened triangle witnesses

```text
+DHFo933/125 XR
-DCRo933/125 XY
-DFRo3 X
```

### Mesh witnesses

```text
ear_DBF_BFR DBF RXZ
```

### Fixed polynomial

```text
20 L0*L7
3 L0*L11
20 L3*L34
3 +DHC*L9
3 +DHC*L0*L11
20 +EBH
2 +HFR
5 +HFR*L11
5 -HCR
3 -HCR*L8
2 -HCR*L10
6 +BFR
3 +DHR*L9
3 ear_DBF_BFR*L6
1 +DHFo933/125
5 +DHFo933/125*L10
2 -DFRo3
5 -DFRo3*L11
1 -DCRo933/125*L34
1 -DCRo933/125*L4*L10
2 -DCRo933/125*L5*L11
3 quad_DEBH_Z*L11
3 quad_DBHF_XZR*L27
```

Upper bound: `-1077985398657591/5687500000000000`.

## Leaf III_E3H2F1pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu XDBHR XHR 1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCY RHY -1
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+DHCo933/125 XY
+HFCo3 R
```

### Mesh witnesses

```text
ear_DEC_CDY DEC XYZ
ear_DEC_DEZ DEC XYZ
ear_DEC_ECX DEC XYZ
```

### Fixed polynomial

```text
146 L0*L7
18 L0*L33
46 L9*L31
7 L10*L33
1 L12*L19
2 L25*L33
4 L2*L10*L13
50 L5*L10*L10
15 L5*L10*L22
3 L5*L10*L26
3 L9*L22*L31
1 L9*L26*L31
3 L10*L10*L13
3 L10*L22*L30
24 +DEB*L23
3 +DHC*L9*L10
9 +DHC*L9*L22
2 +DHC*L9*L26
10 +DFC*L0*L23
14 +DFC*L15*L20
72 +EBH
153 +EBH*L21
20 +BHF
7 -DCX*L9
9 -DCX*L0*L23
3 -DCX*L9*L10
57 +EBZ
12 +EBZ*L7
10 +EBZ*L15
6 +EBZ*L28
5 +EBZ*L29
14 -DCZ*L9*L15
59 +DBZ*L3
153 +DBZ*L4
12 +DBZ*L6
10 +DBZ*L11
9 +DBZ*L15
5 +DBZ*L22
1 +DBZ*L28
30 +HFR*L10
39 +FCR
30 +FCR*L31
28 -HCR
4 +BXZ*L19
5 +XYZ
1 +XYZ*L3
26 -DXZ
14 -DXZ*L11
2 -DXZ*L16
1 -DXZ*L18
10 +BXY*L3
17 +BXY*L22
1 +CYZ*L2
2 +DXY*L20
8 +ECX
4 +ECX*L10
2 +ECX*L16
12 +ECX*L23
1 +ECX*L29
3 -DHZ
153 -DHZ*L0
6 -DHZ*L11
2 -DFX
2 -DFX*L10
14 -DFX*L23
13 -DFX*L24
13 +DFR*L12
13 +DXR*L9
1 +DXR*L10
13 -FXR
1 -FXR*L10
11 +EXZ*L19
1 +EYZ
2 +EYZ*L12
17 +EYZ*L14
7 ear_DEC_DEZ
1 ear_DEC_DEZ*L12
5 ear_DEC_DEZ*L22
153 ear_DEC_DEZ*L34
3 ear_DEC_ECX*L20
4 ear_DEC_CDY*L1*L15
12 +DHCo933/125*L0*L2
19 +HFCo3*L10
12 +HFCo3*L22
33 +HFCo3*L26
1 quad_DBXY_Z*L3
```

Upper bound: `-26710534305937/31250000000000`.

## Leaf III_E3H2F2pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDECR ZER 1
plu RDHCX RHX -1
plu RDHCY RHY -1
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+DBHo3 Z
+HFCo3 R
-DCRo933/125 XY
```

### Mesh witnesses

```text
ear_DEC_DEZ DEC XYZ
ear_DEC_ECX DEC XYZ
```

### Fixed polynomial

```text
62 L0*L7
1 L0*L33
2 L3*L20
1 L5*L9
9 L5*L10
1 L9*L25
4 L15*L25
2 L0*L5*L31
1 L0*L24*L33
3 L5*L5*L23
1 L5*L10*L10
4 L5*L10*L26
4 L5*L25*L33
1 L6*L10*L30
2 L9*L10*L14
18 +DEB*L23
2 +DEB*L33
2 +DEC*L5*L10
6 +DHC*L9
21 +DHC*L9*L26
30 +EBH
2 +EBH*L11
59 +EBH*L21
3 +BHF
2 +BHF*L5
2 +BHF*L24
21 +EBZ
1 -DCZ*L0*L1
7 +DBZ
18 +DBZ*L3
55 +DBZ*L4
1 +DBZ*L34
1 +BHR*L9
32 +HFR
6 +HFR*L24
2 +HFR*L34
24 +FCR*L6
9 -HCR
25 -HCR*L10
6 -HCR*L24
2 -HCR*L30
1 -HCR*L32
2 +BFR*L4
2 +BFR*L6
1 -CXZ*L12
1 -CXZ*L34
2 +ECX*L11
9 -DHZ
55 -DHZ*L0
3 -DHZ*L5
2 +DFX*L10
10 +DHR*L9
1 -DFR*L1
9 -DFR*L5
2 -DFR*L6
6 -DFR*L24
4 +FXR
3 contact_height*L20
6 ear_DEC_DEZ
2 ear_DEC_DEZ*L4
1 ear_DEC_DEZ*L12
58 ear_DEC_DEZ*L34
1 ear_DEC_ECX*L20
2 +DBHo3*L3
3 -DCRo933/125*L12
6 -DCRo933/125*L25
4 -DCRo933/125*L4*L30
20 -DCRo933/125*L5*L11
6 -DCRo933/125*L11*L11
1 +HFCo3*L6
1 +HFCo3*L10
1 quad_DEHC_XYZ*L20
1 quad_DZHF_R*L0
1 quad_DZXC_Y*L0
1 quad_DZXC_Y*L5
1 quad_DZXC_Y*L13
```

Upper bound: `-1439716589704323/4859375000000000`.

## Leaf III_E3H2F2pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBR FER -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XEBCR XER 1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu REHCX RHX -1
plu REHCY RHY -1
mesh DEC XYZ EYZ 1
mesh DFC XYR DYR -1
mesh DFC XYR FXY -1
mesh DFC XYR XYR -1
mesh DFC XYR FYR -1
mesh DFC XYR FXR -1
mesh DFC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DBHo3 Z
+DBXo3 Z
+DFCo4427/500 XYR
+DFRo3 X
```

### Mesh witnesses

```text
ear_DEC_DEZ DEC XYZ
ear_DFC_FCR DFC RYX
```

### Fixed polynomial

```text
22 L0*L23
33 L0*L33
47 L1*L6
23 L3*L20
33 L5*L10
3 L5*L23
2 L10*L30
2 L25*L31
12 +EBH
68 +BHF
2 -DCX*L25
22 +EBZ
25 +FCR
2 +FCR*L30
2 -DCR*L0*L28
31 -HCR
2 +BXY*L27
3 +ECX
3 -DHZ
4 +DFX
9 +DFX*L24
2 +DFX*L27
9 +DXR
8 +DXR*L8
2 +DXR*L11
2 +DXR*L18
1 ear_DEC_DEZ
3 ear_DEC_DEZ*L4
9 +DBHo3*L3
2 +DBXo3*L3
35 +DFCo4427/500*L34
30 ear_DFC_FCR*L4
30 +DFRo3*L5
9 +DFRo3*L13
2 +DFRo3*L30
3 quad_DEHC_XYZ*L20
1 quad_DFRY_X
2 quad_DFRY_X*L14
```

Upper bound: `-303399504571949/406250000000000`.

## Leaf III_E3H3F0pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDBHZ XHZ -1
plu XEBCR XER 1
plu YDBHZ YHZ -1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZEBCR ZER 1
plu REHCX RHX -1
plu REHCY RHY -1
plu REHCZ RHZ -1
mesh DEF XYZ FXZ -1
mesh DEF XYZ EYZ 1
mesh DHC XYZ HXY 1
```

Exclusion: `four DBF XYZR`.

## Leaf III_E3H3F0pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu DEFZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBR FER -1
plu FDEXR FXR -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu XDBHZ XHZ -1
plu XDBHR XHR 1
plu YDECR YER 1
plu YDBHZ YHZ -1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
plu ZDBHR ZHR 1
mesh DEF XYZ FXZ -1
mesh DEF XYZ EYZ 1
mesh DER XYZ XZR -1
mesh DHF XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DERo4427/500 XYZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
23 +DERo4427/500
```

Upper bound: `-493419/500000`.

## Leaf III_E3H3F1pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEXY FXY -1
plu FDEYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDBHZ XHZ -1
plu XEBCR XER 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZEBCR ZER 1
plu RDHCY RHY -1
plu REHCX RHX -1
plu REHCZ RHZ -1
mesh DEC XYZ EYZ 1
mesh DBF XZR DXR -1
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FZR 1
mesh DBF XZR DZR 1
mesh DBF XZR FXR 1
mesh DHC XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DHFo4427/500 XZR
+HFYo933/125 XR
-DFZo3 X
```

### Mesh witnesses

```text
ear_DBC_DBZ DBC XYZ
ear_DEC_CDY DEC XYZ
ear_DEC_DEZ DEC XYZ
```

### Fixed polynomial

```text
8 L0*L7
3 L1*L6
1 L2*L5
6 L3*L4
1 L4*L11
3 +DBH*L3
12 +EBH
2 +DHZ
2 +DHZ*L8
2 ear_DEC_DEZ
3 ear_DEC_CDY*L34
2 ear_DBC_DBZ*L2
2 +DHFo4427/500*L21
1 -DFZo3*L5
3 +HFYo933/125
3 quad_DEBY_Z*L7
3 quad_DZFC_XY*L4
```

Upper bound: `-24411639589/31250000000`.

## Leaf III_E3H3F1pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBR FER -1
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu XDBHZ XHZ -1
plu XDBHR XHR 1
plu YDBHZ YHZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu ZDBHR ZHR 1
plu REHCY RHY -1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 YR
```

### Mesh witnesses

```text
ear_DEC_DEZ DEC XYZ
```

### Fixed polynomial

```text
13 L0*L7
1 L0*L31
12 L2*L5
9 L3*L20
1 L3*L34
7 L4*L23
13 +EBH
1 +BHF
7 +DHZ
9 ear_DEC_DEZ
1 +DFCo933/125*L4
```

Upper bound: `-229074157/250000000`.

## Leaf III_E3H3F2pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu XDBHZ XHZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZEBCR ZER 1
plu RDHCX RHX -1
plu RDHCY RHY -1
plu REHCZ RHZ -1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 XY
```

### Mesh witnesses

```text
ear_DEC_DEZ DEC XYZ
```

### Fixed polynomial

```text
14 L0*L7
12 L2*L5
9 L3*L20
1 L3*L34
7 L4*L23
13 +EBH
1 +BHF
7 +DHZ
9 ear_DEC_DEZ
1 +DFCo933/125*L34
```

Upper bound: `-229074157/250000000`.

## Leaf III_E3H3F2pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFZR DZR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBR FER -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDBHZ XHZ -1
plu XEBCR XER 1
plu YDBHZ YHZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
plu ZDBHR ZHR 1
plu REHCX RHX -1
plu REHCY RHY -1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
mesh DFC XYR DYR -1
mesh DFC XYR FXY -1
mesh DFC XYR XYR -1
mesh DFC XYR FYR -1
mesh DFC XYR FXR -1
mesh DFC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DFCo4427/500 XYR
```

### Mesh witnesses

```text
ear_DEC_DEZ DEC XYZ
```

### Fixed polynomial

```text
12 L0*L7
2 L0*L33
9 L2*L5
7 L3*L20
2 L3*L34
7 L4*L23
2 L5*L10
12 +EBH
2 +BHF
1 -DCZ*L9
7 +DHZ
7 ear_DEC_DEZ
1 +DFCo4427/500*L20
1 quad_DZFC_XYR
```

Upper bound: `-3020271627/4550000000`.

## Leaf III_E3H3F3pm

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu DEFZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu XDBHZ XHZ -1
plu XDBFZ XFZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu RDHCX RHX -1
plu RDHCY RHY -1
plu RDHCZ RHZ -1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
ear_DFC_FCX DFC XYZ
```

### Fixed polynomial

```text
6 -DCX*L8
6 +ECX
6 ear_DFC_FCX
```

Upper bound: `-123633999/125000000`.

## Leaf III_E3H3F3pp

Box: `III3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu FDEBR FER -1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDBHZ XHZ -1
plu XDBFZ XFZ -1
plu XEBCR XER 1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZEBCR ZER 1
plu REHCX RHX -1
plu REHCY RHY -1
plu REHCZ RHZ -1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
```

Exclusion: `four DFC XYZR`.
