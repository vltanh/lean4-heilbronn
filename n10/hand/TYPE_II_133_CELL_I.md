# The complete nontriangular support cell I in Type-II (1,3,3)

This excludes the entire cell I in the exhaustive support catalogue of [TYPE_II_133_NONTRIANGULAR.md](TYPE_II_133_NONTRIANGULAR.md). All geometric assumptions, rational boxes and nonnegative-factor definitions are proved there. The remaining support cells are separate alternatives.

There are 60 terminal leaves: 36 geometric exclusions and 24 fixed cubic contradictions with 932 positive-integer terms. All root signs, any refinements, complete deduction traces, products and negative rational bounds are printed below. Every leaf is closed.

Counts: `24 36 932`.

The companion [check_type_ii_133_nontriangular.py](check_type_ii_133_nontriangular.py) reads these printed tables and performs only exact geometric replay and rational expansion. Run it with the cell name as argument.

## Binary refinement table

A listed node splits on its displayed actual determinant; append `m` or `p` for its negative or positive child. An empty table means the initial ray roots already close without refinement.

```text
```

## Leaf I_E1H0F0mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECY HCY 1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu YDEHZ YHZ -1
plu YDEFZ YFZ -1
plu YEBFR YER 1
plu YEBZR YZR 1
mesh DBF XYZ FXZ -1
```

Exclusion: `four DBH XYZR`.

## Leaf I_E1H0F0pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEHZ YHZ -1
plu YDEFZ YFZ -1
plu YDEFR YER 1
plu YDEZR YZR 1
mesh DBH XYZ HXZ -1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `cap DEBH XYZ 2`.

## Leaf I_E1H1F0mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu YDEBR YER 1
plu YDEFZ YFZ -1
plu YDBZR YZR 1
mesh DBH XZR XZR 1
mesh DBH XZR DXR -1
mesh DBH XZR HXR 1
mesh DBH XZR HZR 1
mesh DBH XZR DZR 1
mesh DBH XZR HXZ 1
mesh DBF XYZ FXZ -1
line DEBHFC XR E -1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf I_E1H1F0pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEFZ YFZ -1
plu YEBFR YER 1
plu YEBZR YZR 1
mesh DBF XYZ FXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DHFo933/125 YR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
1 L0*L11
6 L5*L10
3 L7*L11
15 +DHC*L0*L11
19 +HFC
5 +DBHo933/125
15 +DBHo933/125*L11
2 +DHFo933/125
```

Upper bound: `-18536818483/25000000000`.

## Leaf I_E1H1F1mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBR FER 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu YDEBR YER 1
plu YDBZR YZR 1
mesh DBH XZR XZR 1
mesh DBH XZR DXR -1
mesh DBH XZR HXR 1
mesh DBH XZR HZR 1
mesh DBH XZR DZR 1
mesh DBH XZR HXZ 1
line DEBHFC XR E -1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf I_E1H1F1pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBYR XYR -1
plu YDEBR YER 1
plu YDBZR YZR 1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DBRo933/125 XZ
+DHCo933/125 YR
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
15 L5*L10
4 +DHC*L0*L11
14 +HFC
1 +HFC*L27
4 +BCX
7 +HFR
3 +FCR
2 -BFR
1 -BFR*L6
1 +HCR*L11
6 -DHX
6 +DBHo933/125*L11
6 +DBHo933/125*L14
7 +DBHo933/125*L26
4 +DBRo933/125
1 +DHCo933/125*L0
2 +EBCo933/125
2 +EBCo933/125*L7
9 quad_DEBX_Z
6 quad_DEBX_Z*L7
```

Upper bound: `-55922921701/125000000000`.

## Leaf I_E1H2F0mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDBFY XFY 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDEFZ YFZ -1
plu YDBZR YZR 1
mesh DBF XYZ FXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+DHFo933/125 XY
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
6 L5*L10
3 L7*L11
15 +DHC*L0*L11
1 +DFC*L0
19 +HFC
5 +DBHo933/125
15 +DBHo933/125*L11
2 +DHFo933/125
```

Upper bound: `-18536818483/25000000000`.

## Leaf I_E1H2F0pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDBFY XFY 1
plu YDEFZ YFZ -1
plu YEBFR YER 1
plu YEBZR YZR 1
mesh DBF XYZ FXZ -1
mesh DHF XYR HYR -1
mesh DHF XYR DXR 1
mesh DHF XYR HXY -1
mesh DHF XYR XYR -1
mesh DHF XYR DYR -1
mesh DHF XYR HXR -1
```

### Strengthened triangle witnesses

```text
+DHFo4427/500 XYR
+EBCo933/125 XZ
+HFZo933/125 XR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
8 L4*L11
2 L6*L30
1 L29*L30
5 L4*L4*L11
1 L10*L30*L30
7 +HFC
6 +HFC*L4
1 +FCY*L4
12 +DEZ
1 +DBZ*L31
1 -ECZ
1 -DFY*L5
2 +DHFo4427/500*L5
6 +DHFo4427/500*L20
1 +EBCo933/125
5 +HFZo933/125
6 +HFZo933/125*L4
1 quad_DBHY_XZ*L11
6 quad_DZHF_XYR*L30
```

Upper bound: `-40499472397/125000000000`.

## Leaf I_E1H2F1mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBR FER 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
```

### Strengthened triangle witnesses

```text
+BHFo3 R
+DBHo933/125 ZR
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
17 L0*L7
26 L5*L10
24 +DEB
1 +DFC*L7
26 +HFC
12 +DBHo933/125
4 +DBHo933/125*L11
6 +EBCo933/125
4 +BHFo3
```

Upper bound: `-13519265381/15625000000`.

## Leaf I_E1H2F1pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu YDEBR YER 1
plu YDBZR YZR 1
mesh DHC XYR HYR -1
mesh DHC XYR HXY -1
mesh DHC XYR XYR -1
mesh DHC XYR HXR -1
mesh DHC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
+DHFo933/125 XR
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
16 L0*L27
10 L4*L9
7 L5*L6
10 L6*L25
10 L0*L4*L11
2 +DEB
1 +HFC
7 +HFC*L4
3 +HFC*L27
10 +HFR
17 +FCR
10 +FCR*L4
16 -DCR*L9
7 -DCR*L0*L11
4 -BFR
10 -BFR*L5
3 +DBRo933/125
10 +DBRo933/125*L4
16 +DBRo933/125*L11
7 +DHFo933/125*L5
3 +DHFo933/125*L26
1 +EBCo933/125
```

Upper bound: `-114562557/200000000`.

## Leaf I_E1H2F2mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBX FEX -1
plu FDEBR FER 1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E1H2F2pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf I_E1H3F0mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFY XFY 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDEFZ YFZ -1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
mesh DBF XYZ FXZ -1
mesh DHF XYZ HXY 1
mesh DRF XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+BHFo3 R
-DFRo4427/500 XYZ
-ECRo933/125 XZ
```

### Mesh witnesses

```text
ear_DHF_HFX DHF XYZ
ear_DRF_RFX DRF XYZ
```

### Fixed polynomial

```text
10 L11*L24
1 L26*L30
1 +HFC*L14
1 +BCX
3 +BCX*L10
1 +BCX*L31
1 +BHR
3 -BFR*L15
1 ear_DHF_HFX
1 -DFRo4427/500*L5
3 ear_DRF_RFX
2 -ECRo933/125
1 +BHFo3*L15
3 quad_DERF_XYZ
6 quad_DRFC_XYZ
1 quad_DRFC_XYZ*L4
3 quad_DRFC_XYZ*L14
```

Upper bound: `-8297187844639/11375000000000`.

## Leaf I_E1H3F0pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDBXR FXR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu XDBFY XFY 1
plu YDEFZ YFZ -1
plu YDBHZ YHZ -1
plu YEBFR YER 1
plu YEBZR YZR 1
mesh DBF XYZ FXZ -1
```

Exclusion: `nomesh EHC XZR`.

## Leaf I_E1H3F1mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEBR FER 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHYR FYR 1
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
plu ZDEBR ZER 1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+DHFo933/125 XZ
-DFRo933/125 XZ
-ECRo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
30 L1*L6
15 L5*L26
19 L26*L30
15 +DEB
13 +HFC
4 +HFC*L1
34 +BHR
4 -BFR
4 +DHFo933/125*L0
1 -DFRo933/125
14 -DFRo933/125*L5
19 -DFRo933/125*L25
5 -ECRo933/125
14 quad_DRFC_XYZ*L4
19 quad_DRFC_XYZ*L24
```

Upper bound: `-199179397721/325000000000`.

## Leaf I_E1H3F1pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDBHZ XHZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
mesh DHF XZR XZR 1
mesh DHF XZR HXR -1
mesh DHF XZR HZR -1
mesh DHF XZR DZR 1
mesh DHF XZR DXR -1
mesh DHF XZR FXZ 1
```

Exclusion: `nomesh EHC XZR`.

## Leaf I_E1H3F2mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEBX FEX -1
plu FDEBR FER 1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
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
plu ZDEBR ZER 1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E1H3F2pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
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
```

Exclusion: `nomesh EHC XZR`.

## Leaf I_E1H3F3mm

Box: `I1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEBX FEX -1
plu FDEBZ FEZ -1
plu FDEBR FER 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu FDHZR FZR 1
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
mesh DHC XYZ HXY 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E1H3F3pm

Box: `I1`.

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
plu FDEBR FER 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu FDHZR FZR 1
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
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `nomesh EHC XZR`.

## Leaf I_E2H0F0mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu XDEHY XHY 1
plu XDBFY XFY 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZEBFR ZER 1
mesh DBF XYZ FXZ -1
```

Exclusion: `four DEH XYZR`.

## Leaf I_E2H0F0pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu XDEHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDEFR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDFZR YZR 1
plu ZDEFR ZER 1
mesh DEH XYZ EYZ 1
mesh DEH XYZ HXZ -1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `cap DEBH XYZ 2`.

## Leaf I_E2H1F0mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBFR ZER 1
mesh DEH XZR DZR 1
mesh DBH XZR XZR 1
mesh DBH XZR HXZ 1
mesh DBH XZR DXR -1
mesh DBH XZR HZR 1
mesh DBH XZR HXR 1
mesh DBF XYZ FXZ -1
line DEBHFC XR E -1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf I_E2H1F0pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZDEFR ZER 1
mesh DBF XYZ FXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DEHo933/125 XZ
+DHFo933/125 YR
+EBCo3 X
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
7 L1*L6
36 L6*L30
3 L0*L2*L7
14 +HFC
36 +HFC*L4
2 +BCX
3 -DHX
5 +DEHo933/125
7 +DEHo933/125*L1
8 +DBHo933/125
3 +DBHo933/125*L14
3 +DHFo933/125
36 +DHFo933/125*L5
3 +EBCo3
7 +EBCo3*L4
4 quad_DEBX_Z
3 quad_DEBX_Z*L7
```

Upper bound: `-81939282203/125000000000`.

## Leaf I_E2H1F1mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBFR ZER 1
mesh DEH XZR DZR 1
mesh DBH XZR XZR 1
mesh DBH XZR HXZ 1
mesh DBH XZR DXR -1
mesh DBH XZR HZR 1
mesh DBH XZR HXR 1
line DEBHFC XR E -1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf I_E2H1F1pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBYR XYR -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDEFR ZER 1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DBRo933/125 XZ
+DEHo933/125 XZ
+DFCo3 Y
+DHCo933/125 YR
+EBCo3 X
+EHCo933/125 XR
+HFXo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
6 L1*L6
83 L9*L31
2 L0*L27*L31
1 L1*L6*L6
2 L1*L6*L26
92 L5*L10*L10
1 L9*L10*L14
3 L9*L14*L26
4 L10*L15*L30
5 +DHC*L3*L9
6 +DHC*L9*L31
25 +DFC*L0*L7
60 +HFC
4 +HFC*L3
85 +HFC*L10
1 +HFC*L15
21 +HFC*L27
4 -DCX*L6*L32
1 -DCX*L9*L27
17 +BCX
1 +BCX*L11
7 +BCX*L27
37 +HFR
3 +HFR*L31
21 +FCR*L6
15 -BFR
4 -BFR*L15
3 -BFR*L31
20 +HCR*L11
3 +HCR*L14
5 -ECX
1 -ECX*L2
1 -ECX*L31
18 -DHX
6 -DHX*L11
3 -DHX*L27
9 -HXR
1 -HXR*L10
3 -HXR*L31
1 contact_height*L6
2 +DEHo933/125*L1
5 +DEHo933/125*L11
1 +DEHo933/125*L14
28 +DBHo933/125*L11
26 +DBHo933/125*L14
27 +DBHo933/125*L26
8 +DBRo933/125
24 +DBRo933/125*L7
1 +DBRo933/125*L11
5 +DBRo933/125*L15
35 +DHCo933/125*L0*L2
11 +DFCo3*L0*L2
2 +DFCo3*L11*L11
3 +EBCo3*L7
6 +EBCo3*L11
1 +EBCo3*L14
2 +EHCo933/125*L0
1 +HFXo3*L3
3 +HFXo3*L6
5 +HFXo3*L10
3 quad_DEBH_XZ*L14
32 quad_DEBX_Z
4 quad_DEBX_Z*L2
31 quad_DEBX_Z*L7
5 quad_DEBX_Z*L11
```

Upper bound: `-9337462807921/15625000000000`.

## Leaf I_E2H2F0mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu XDBFY XFY 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBFR ZER 1
mesh DBF XYZ FXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+DEHo933/125 ZR
+DHFo933/125 XY
+EBCo3 X
-DFRo933/125 XY
-ECRo3 X
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
5 L1*L6
23 L6*L30
3 L26*L30
10 +HFC
23 +HFC*L4
3 +HFC*L24
8 +BCX
3 +BCX*L3
3 +EHR
7 -ECX
4 -ECX*L2
1 -ECX*L4
1 +DHX
5 +DEHo933/125
8 +DEHo933/125*L2
1 +DEHo933/125*L13
5 +DBHo933/125
23 +DHFo933/125*L5
3 +DHFo933/125*L25
2 -DFRo933/125
2 -DFRo933/125*L2
8 +EBCo3*L14
1 +EBCo3*L25
1 -ECRo3*L0
2 quad_DBRF_XYZ*L3
```

Upper bound: `-318882482113/15625000000000`.

## Leaf I_E2H2F0pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDBFY XFY 1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZDEFR ZER 1
mesh DBF XYZ FXZ -1
mesh DHF XYR HYR -1
mesh DHF XYR XYR -1
mesh DHF XYR DXR 1
mesh DHF XYR DYR -1
mesh DHF XYR HXR -1
mesh DHF XYR HXY -1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
+DHCo4427/500 XYR
+DHFo4427/500 XYR
+HFZo933/125 XR
```

### Mesh witnesses

```text
ear_DHF_HFR DHF RYX
```

### Fixed polynomial

```text
1 L0*L11
2 L0*L27
1 L5*L29
6 L6*L30
16 L9*L27
6 L29*L30
1 +DEB*L23
5 +HFC*L4
6 +HFC*L16
1 +EBZ
1 +DBZ*L3
17 +FCR
2 +FCR*L4
18 -DCR*L0*L11
2 +HCR*L30
2 -BCR*L11
6 +DHY*L9
1 -DFY
6 -DFY*L5
2 -DFR*L9
2 +DBRo933/125
16 +DBRo933/125*L11
5 +DHFo4427/500*L5
2 ear_DHF_HFR*L30
6 +DHCo4427/500*L20
6 +HFZo933/125
1 quad_DZHY_X
```

Upper bound: `-7019972976011/15625000000000`.

## Leaf I_E2H2F1mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBFR ZER 1
```

### Strengthened triangle witnesses

```text
+BHFo3 R
+DBHo933/125 ZR
+DEHo933/125 ZR
+DFCo3 Y
-DCRo933/125 XY
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
61 L5*L10
1 L9*L24
2 L9*L31
7 L26*L32
1 L0*L1*L6
4 L0*L2*L13
4 L2*L13*L26
4 L3*L5*L13
1 L3*L24*L30
3 L5*L5*L15
1 L5*L5*L26
2 L5*L10*L10
1 L5*L25*L31
1 L6*L10*L25
3 L6*L15*L24
1 L7*L9*L25
2 L10*L13*L26
3 +DEC*L1*L26
1 +DEC*L5*L10
2 +DEC*L26*L30
3 +DEC*L26*L32
1 +EHC*L9
72 +HFC
2 +HFC*L4
2 +HFC*L10
1 +HFC*L26
5 -DCX*L5*L5
3 -DCX*L5*L26
29 +BCX
1 +BCX*L0
54 +BCX*L4
1 +BCX*L7
8 +BHR*L10
13 -BFR
5 -BFR*L3
2 -BFR*L4
15 +EHR
7 +EHR*L4
8 +EHR*L13
5 +EHR*L31
1 +EHR*L32
19 -ECX
4 -ECX*L1
68 -ECX*L4
8 -ECX*L25
4 -ECX*L27
53 +DHX*L0
8 +DHX*L24
3 +DHX*L27
2 -DFX*L26
8 -DHR*L2
9 -DHR*L10
5 -DHR*L31
1 -DXR*L0
11 +HXR
1 +HXR*L0
8 +HXR*L4
6 +DEHo933/125
6 +DEHo933/125*L5
4 +DEHo933/125*L6
4 +DEHo933/125*L11
63 +DEHo933/125*L13
8 +DEHo933/125*L24
5 +DEHo933/125*L27
2 +DBHo933/125
1 +DBHo933/125*L0
2 +DBHo933/125*L2
2 +DBHo933/125*L4
19 +DBHo933/125*L11
49 +DBHo933/125*L12
3 +DBHo933/125*L15
1 +DBHo933/125*L24
1 +DBHo933/125*L26
5 +DFCo3*L0*L2
3 +DFCo3*L0*L24
1 -DCRo933/125*L0*L6
8 -DCRo933/125*L0*L11
2 +BHFo3*L5
3 +BHFo3*L25
2 quad_DEBX_Z*L6
1 quad_DEHX_ZR*L5
3 quad_DERX_Z*L6
1 quad_DRHC_XY*L9
```

Upper bound: `-1647366084486917/4859375000000000`.

## Leaf I_E2H2F1pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDEFR ZER 1
mesh DHC XYR HYR -1
mesh DHC XYR XYR -1
mesh DHC XYR DXR 1
mesh DHC XYR HXR -1
mesh DHC XYR HXY -1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
+DFCo3 Y
+DHFo933/125 XR
+DHRo3 X
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
3 L3*L6
127 L6*L25
68 L6*L30
189 L0*L2*L27
4 L3*L3*L12
12 L3*L15*L25
17 +DEB
24 +DEB*L2
7 +DEB*L14
186 +DEB*L27
95 +DBH*L9
95 +HFC*L1
68 +HFC*L4
11 +HFC*L13
21 +HFC*L24
27 +BCX
7 +BCX*L3
1 +BCX*L10
89 +HFR
234 +FCR
106 +FCR*L4
1 +FCR*L14
294 -DCR*L9
93 -BFR
95 -BFR*L5
1 -BFR*L15
57 +HCR
7 +HCR*L3
28 +HCR*L10
9 +HCR*L12
13 +HCR*L15
22 +CXR*L0
12 -ECX
4 -ECX*L2
12 -ECX*L27
35 +DHX
9 +DHX*L24
66 +DHX*L27
11 +FXR*L5
11 +HCX*L9
45 +DXR
22 +DXR*L1
12 +DXR*L3
21 +DXR*L4
66 +DXR*L7
3 +DBRo933/125*L2
95 +DBRo933/125*L4
273 +DBRo933/125*L11
68 +DHFo933/125*L5
21 +DHFo933/125*L25
7 +DHRo3*L3
28 +DHRo3*L10
53 +DHRo3*L14
273 +DFCo3*L0*L27
13 quad_DEXC_YZ*L6
```

Upper bound: `-58525870559047/15625000000000`.

## Leaf I_E2H2F2mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBX FEX -1
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBFR ZER 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E2H2F2pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDEFR ZER 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf I_E2H3F0mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEHZ XHZ -1
plu XDEZR XZR 1
plu XDBFY XFY 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZDEBR ZER 1
mesh DBF XYZ FXZ -1
mesh DHF XYZ HXY 1
mesh DRF XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+BHFo3 R
+EHCo933/125 XR
-DFXo3 Y
-ECRo3 X
```

### Mesh witnesses

```text
ear_DHF_HFX DHF XYZ
ear_DRF_RFX DRF XYZ
```

### Fixed polynomial

```text
1 L0*L11
5 L1*L6
1 L4*L11
16 L11*L24
11 L26*L30
2 L3*L6*L24
5 +HFC*L14
3 +BCX
9 +BCX*L10
5 +BCX*L31
7 +BHR
3 -BFR
9 -BFR*L15
1 -BCR*L3
6 +EHR
3 -DHR*L2
5 ear_DHF_HFX
1 -DFXo3*L5
9 ear_DRF_RFX
2 +EHCo933/125*L2
1 +EHCo933/125*L27
1 -ECRo3*L6
5 +BHFo3*L15
1 quad_DXFC_Y*L4
9 quad_DRFC_XYZ
9 quad_DRFC_XYZ*L14
2 quad_EBRC_X*L3
```

Upper bound: `-6517743904699/7109375000000`.

## Leaf I_E2H3F0pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu XDBFY XFY 1
plu YDBHZ YHZ -1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZEBFR ZER 1
mesh DBF XYZ FXZ -1
```

Exclusion: `four DHF XYZR`.

## Leaf I_E2H3F1mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBR FER 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDHYR FYR 1
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
plu ZDEBR ZER 1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+BCYo3 X
+DFCo3 Y
-DFRo933/125 XZ
```

### Mesh witnesses

```text
connect_DRC_XYZ DRC XYZ
ear_DHC_HCX DHC XYZ
ear_DRC_CDY DRC XYZ
```

### Fixed polynomial

```text
8 L1*L6
4 L5*L26
4 L6*L17
35 L26*L30
3 L6*L20*L27
8 +DEC*L1*L15
7 +DHC*L1*L3
5 +EBH*L12
6 -DCX*L3*L5
17 +BCX
8 +BCX*L3
5 +BCX*L4
5 +BCX*L7
1 +BCX*L14
3 +BCX*L18
3 +BCX*L27
1 +DEZ*L6
25 +DER*L6
9 +BHR
7 +BHR*L2
9 -BFR
2 -BFR*L11
3 -BCR*L15
3 +XYZ
2 -DXZ*L0
1 -DXZ*L5
1 +CYZ*L15
1 +BYZ*L14
34 +EHR
15 -ECX
5 -ECX*L1
5 -ECX*L4
2 +DHZ
3 +DHZ*L27
12 +DFY
3 -DHR*L1
28 -DHR*L2
3 -DHR*L23
1 -EZR*L6
6 +HXY
2 ear_DHC_HCX*L0
2 +DFCo3*L32
2 +DFCo3*L1*L11
1 -DFRo933/125
7 -DFRo933/125*L0
12 -DFRo933/125*L16
34 -DFRo933/125*L25
1 -DFRo933/125*L31
4 ear_DRC_CDY*L4
3 connect_DRC_XYZ
2 +BCYo3*L6
1 quad_DERF_XZ*L6
3 quad_DRHX_Z*L0
6 quad_DRHX_Z*L2
7 quad_DRFC_XYZ*L1
1 quad_DRFC_XYZ*L10
12 quad_DRFC_XYZ*L17
34 quad_DRFC_XYZ*L24
2 quad_DZXC_Y*L1
1 quad_DZXC_Y*L4
1 quad_BHCX_R*L28
1 quad_BHCX_R*L29
4 quad_BHCY_XR*L15
```

Upper bound: `-123237502983113/142187500000000`.

## Leaf I_E2H3F1pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXY FXY -1
plu FDBXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEHZ XHZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZEBFR ZER 1
mesh DHF XZR FXZ 1
mesh DHF XZR XZR 1
mesh DHF XZR DXR -1
mesh DHF XZR HZR -1
mesh DHF XZR DZR 1
mesh DHF XZR HXR -1
chord DEBHFC XZ EF X
line DEBHFC XR E -1
```

Exclusion: `four DHC XYZR`.

## Leaf I_E2H3F2mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBX FEX -1
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
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
plu ZDEBR ZER 1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E2H3F2pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
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
plu ZEBFR ZER 1
```

Exclusion: `four DHC XYZR`.

## Leaf I_E2H3F3mm

Box: `I2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBX FEX -1
plu FDEBR FER 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu FDHZR FZR 1
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
mesh DHC XYZ HXY 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E2H3F3pm

Box: `I2`.

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
plu FDEBR FER 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu FDHZR FZR 1
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
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
line DEBHFC XY H 1
```

Exclusion: `four DHC XYZR`.

## Leaf I_E3H0F0mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX -DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDEHY XHY 1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XEBFR XER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZEBFR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

Exclusion: `four DEH XYZR`.

## Leaf I_E3H0F0pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDEHY XHY 1
plu XDEFY XFY 1
plu XDEFR XER 1
plu XDECZ XEZ -1
plu XDEYR XYR -1
plu YDEFR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDFZR YZR 1
plu ZDEFR ZER 1
mesh DEH XYZ EYZ 1
mesh DEH XYZ HXZ -1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
```

Exclusion: `cap DEBH XYZ 2`.

## Leaf I_E3H1F0mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XEBFR XER 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBFR ZER 1
mesh DEH XZR XZR 1
mesh DEH XZR HXR 1
mesh DEH XZR HXZ 1
mesh DEH XZR DXR -1
mesh DEH XZR DZR 1
mesh DEH XZR HZR 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf I_E3H1F0pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDEFR XER 1
plu XDECZ XEZ -1
plu XDEYR XYR -1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZDEFR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DHFo933/125 YR
```

### Mesh witnesses

```text
ear_DBF_BFX DBF XYZ
```

### Fixed polynomial

```text
1 L0*L11
2 L6*L30
2 L5*L6*L10
1 +DHC*L9
15 +DHC*L0*L11
12 +DHC*L7*L9
4 +EBH*L13
15 +HFC
3 +HFC*L4
5 +ECX
2 +ECX*L1
4 +ECX*L32
2 +ECX*L34
4 -DHX
2 -DHX*L0
2 contact_height*L0
2 contact_height*L12
2 +DBHo933/125*L1
15 +DBHo933/125*L11
2 +DBHo933/125*L14
4 ear_DBF_BFX
2 +DHFo933/125
3 +DHFo933/125*L5
2 +DHFo933/125*L6
5 quad_DEBX_Z
2 quad_DEBX_Z*L7
2 quad_DEBX_Z*L34
4 quad_DEFC_XYZ*L12
1 quad_DXHC_YR*L0
```

Upper bound: `-5306281347412537411/41456542968750000000`.

## Leaf I_E3H1F1mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEXY FXY -1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XEBFR XER 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBFR ZER 1
mesh DEH XZR XZR 1
mesh DEH XZR HXR 1
mesh DEH XZR HXZ 1
mesh DEH XZR DXR -1
mesh DEH XZR DZR 1
mesh DEH XZR HZR 1
mesh DEC XYZ EYZ 1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf I_E3H1F1pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXY FXY -1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFR XER 1
plu XDECZ XEZ -1
plu XDEYR XYR -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDEFR ZER 1
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DBRo933/125 XZ
+DBXo3 Z
+DFCo3 Y
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
17 L0*L7
1 L2*L7
4 L2*L13
14 L9*L31
4 L0*L6*L33
51 L5*L10*L10
1 +DHC*L0*L27
7 +DHC*L9*L10
31 +DHC*L9*L31
7 +DFC*L0*L7
6 +EBH
14 +EBH*L13
1 +BHC*L9
29 +HFC
49 +HFC*L10
8 +HFC*L27
19 +HFR
8 +FCR*L6
1 +FCR*L34
10 -BFR
1 -BFR*L0
1 -BFR*L5
8 +HCR*L11
6 +ECX
7 +ECX*L1
7 +ECX*L34
12 -DHX
1 -DHX*L0
6 -DHX*L24
6 +DXR*L5
8 -HXR
4 contact_height*L6
7 contact_height*L12
7 +DBHo933/125*L3
11 +DBHo933/125*L11
12 +DBHo933/125*L14
10 +DBHo933/125*L26
3 +DBXo3*L26
11 +DBRo933/125*L7
3 +DBRo933/125*L15
1 +DBRo933/125*L34
1 +DFCo3*L0*L34
2 +DFCo3*L4*L11
2 +DFCo3*L11*L11
22 quad_DEBX_Z
12 quad_DEBX_Z*L7
1 quad_DEBX_Z*L34
6 quad_DBHR_XZ*L12
```

Upper bound: `-216261821407321573/455566406250000000`.

## Leaf I_E3H2F0mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBFR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+DHFo933/125 XY
-DCRo933/125 XY
-DFRo933/125 XY
```

### Mesh witnesses

```text
ear_DBF_BFX DBF XYZ
ear_DEF_EFX DEF XYZ
```

### Fixed polynomial

```text
3 L0*L7
2 L0*L11
1 L0*L15
6 L2*L25
1 L2*L5*L10
1 L2*L10*L13
1 L2*L10*L25
2 L2*L11*L12
1 L5*L6*L10
4 L6*L11*L12
10 +DHC*L9
16 +DHC*L0*L11
4 +DHC*L7*L9
1 +DHC*L9*L27
1 +EBH
15 +HFC
3 +HFC*L14
3 -DCX*L9
6 +EBR
1 +EHR*L10
4 +ECX
3 +ECX*L10
1 -DHR*L10
5 ear_DEF_EFX
2 +DBHo933/125
15 +DBHo933/125*L11
1 ear_DBF_BFX
1 +DHFo933/125*L6
1 -DFRo933/125
6 -DCRo933/125*L0
2 quad_DEHX_ZR*L11
1 quad_DBHX_ZR*L11
```

Upper bound: `-109909093367/500000000000`.

## Leaf I_E3H2F0pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XEBFR XER 1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZDEFR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DHF XYR HYR -1
mesh DHF XYR DYR -1
mesh DHF XYR XYR -1
mesh DHF XYR HXY -1
mesh DHF XYR HXR -1
mesh DHF XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
+DERo933/125 XZ
+DHFo4427/500 XYR
+HFZo933/125 XR
```

### Mesh witnesses

```text
ear_DEC_CDY DEC XYZ
ear_DHF_HFR DHF RYX
```

### Fixed polynomial

```text
4 L1*L6
1 L2*L5
1 L5*L29
7 L6*L30
4 L20*L31
4 L29*L30
5 +EBH
6 +HFC*L4
14 +FCR
1 +FCR*L4
1 +FCR*L16
14 -DCR*L9
14 -DCR*L0*L11
1 +HCR*L30
1 -BCR*L11
3 -DFY
1 -DFY*L25
1 -DFR*L9
1 -DYR*L9
3 ear_DEC_CDY*L4
1 ear_DEC_CDY*L25
1 ear_DEC_CDY*L34
2 ear_DEC_CDY*L0*L10
2 +DERo933/125
1 +DERo933/125*L2
13 +DBRo933/125*L11
6 +DHFo4427/500*L5
1 ear_DHF_HFR*L30
4 +HFZo933/125
2 quad_DEBY_Z*L11
```

Upper bound: `-97174608337/500000000000`.

## Leaf I_E3H2F1mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEXY FXY -1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBFR ZER 1
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+DFCo3 Y
-DCRo933/125 XY
```

### Mesh witnesses

```text
connect_DEC_XYZ DEC XYZ
ear_DBC_BCX DBC XYZ
ear_DEC_CDY DEC XYZ
ear_DEC_DEZ DEC XYZ
```

### Fixed polynomial

```text
9 L0*L9
15 L5*L9
9 L6*L19
1133 L6*L30
53 L9*L22
871 L9*L31
108 L0*L1*L23
89 L0*L2*L15
84 L0*L2*L28
2266 L0*L3*L10
112 L0*L3*L12
39 L0*L3*L30
765 L0*L3*L33
57 L0*L5*L10
18 L0*L5*L23
1363 L0*L6*L33
351 L0*L13*L23
257 L0*L15*L20
128 L0*L15*L23
58 L0*L15*L26
8 L0*L16*L19
95 L0*L20*L28
2028 L0*L23*L23
566 L0*L23*L28
117 L0*L29*L29
756 L1*L6*L24
596 L1*L10*L26
1829 L2*L3*L5
188 L2*L5*L23
55 L2*L5*L29
137 L2*L9*L24
457 L2*L9*L26
526 L2*L16*L23
77 L2*L20*L33
628 L3*L5*L5
183 L3*L5*L10
21 L3*L5*L20
184 L3*L5*L30
38 L3*L5*L33
8 L3*L12*L16
466 L3*L12*L23
321 L3*L12*L26
595 L3*L12*L29
74 L3*L12*L33
129 L3*L17*L20
2281 L3*L20*L23
265 L3*L26*L30
515 L5*L5*L26
326 L5*L6*L14
515 L5*L6*L24
2161 L5*L10*L10
103 L5*L23*L23
241 L5*L26*L30
441 L6*L10*L25
34 L6*L10*L30
76 L6*L14*L25
241 L6*L24*L30
48 L6*L28*L32
71 L9*L19*L22
188 L9*L26*L28
164 L9*L29*L29
58 L10*L12*L23
286 L10*L13*L26
223 L10*L13*L33
235 L10*L16*L23
164 L10*L16*L29
50 L13*L16*L23
76 L13*L26*L33
58 L13*L33*L33
23 L15*L16*L20
27 L16*L16*L23
27 L16*L20*L28
164 L23*L23*L30
55 +DEH*L19
156 +DEC*L9*L15
47 +DEC*L9*L25
86 +DEC*L9*L27
395 +DHC*L9*L10
11 +DHC*L9*L28
1057 +DHC*L9*L31
35 +EBC*L9
2986 +HFC
34 +HFC*L6
2161 +HFC*L10
112 +HFC*L12
57 +HFC*L24
441 +HFC*L26
58 +HFC*L28
14 -DCX*L9
366 -DCX*L0*L9
862 -DCX*L1*L6
112 -DCX*L5*L9
366 -DCX*L9*L25
281 -DCX*L9*L31
215 +EBZ*L1
1640 +EBZ*L2
18 +EBZ*L5
27 +EBZ*L7
2809 +EBZ*L11
1 +EBZ*L16
1928 +EBZ*L23
2116 +EBZ*L27
173 +EBZ*L28
217 +EBZ*L29
292 -DCZ*L19
108 +DBZ*L0
4027 +DBZ*L3
5 +DBZ*L6
111 +DBZ*L15
96 +DBZ*L17
180 +DBZ*L26
409 +DBZ*L28
1054 +EBR
756 +EBR*L0
1829 +EBR*L3
812 +EBR*L4
443 +EBR*L13
243 +EBR*L23
717 +EBR*L31
37 +BHR*L6
121 +BHR*L10
77 -DCR*L0*L9
770 -BFR
996 -BFR*L3
57 -BFR*L5
443 -BFR*L12
58 -BFR*L14
110 -DYZ*L23
751 +XYZ
8 +XYZ*L1
104 +XYZ*L7
58 +XYZ*L11
519 -DXZ*L16
595 -DXZ*L19
96 +BXY*L6
58 +BXY*L10
8 +BXY*L17
103 +CYZ*L0
390 +CYZ*L2
151 +CYZ*L11
1130 +CYZ*L15
20 +CYZ*L16
26 +CYZ*L22
1130 +DXY*L23
104 -CXZ*L6
77 -BXR*L9
824 +EHR
756 +EHR*L1
1829 +EHR*L2
628 +EHR*L5
242 +EHR*L10
35 +EHR*L15
243 +EHR*L22
184 +EHR*L30
38 +EHR*L31
323 +ECX*L1
25 +ECX*L10
158 +ECX*L21
466 +ECX*L23
443 +ECX*L24
356 +ECX*L26
595 +ECX*L29
205 +ECX*L33
328 +DHX*L6
267 -DHZ*L23
444 +DFY*L23
164 +DFY*L29
443 -DFX*L0
156 -DFX*L3
112 -DFX*L5
443 -DFX*L25
303 -DFX*L26
281 -DFX*L33
2317 -DHR*L2
57 -DHR*L5
783 -DHR*L10
35 -DHR*L15
75 -DXR*L6
934 +HXR
35 +HXR*L3
57 +HXR*L10
1 +HXR*L31
104 +EYZ*L6
136 +EYZ*L23
195 contact_height*L6
1640 ear_DEC_DEZ*L3
556 ear_DEC_DEZ*L11
158 ear_DEC_DEZ*L12
173 ear_DEC_DEZ*L14
122 ear_DEC_DEZ*L17
4 ear_DEC_DEZ*L30
189 ear_DEC_CDY*L0*L2
58 ear_DEC_CDY*L0*L10
8 ear_DEC_CDY*L0*L12
58 ear_DEC_CDY*L5*L10
188 ear_DEC_CDY*L26*L30
8 connect_DEC_XYZ*L17
1508 +DBHo933/125*L3
1130 +DBHo933/125*L6
2252 +DBHo933/125*L11
932 +DBHo933/125*L15
23 +DBHo933/125*L22
753 +DBHo933/125*L26
124 +DBHo933/125*L28
61 ear_DBC_BCX*L6
2809 +DFCo3*L0*L23
2917 +DFCo3*L3*L20
58 +DFCo3*L15*L20
756 -DCRo933/125*L0*L0
2179 -DCRo933/125*L0*L23
54 -DCRo933/125*L5*L23
188 -DCRo933/125*L5*L29
366 -DCRo933/125*L9*L12
174 -DCRo933/125*L9*L14
117 quad_DEBY_Z*L19
9 quad_DBXY_Z*L6
209 quad_DZFC_Y*L19
359 quad_DZXC_Y*L0
477 quad_DZXC_Y*L17
536 quad_DZXC_Y*L19
4 quad_EBCZ_X*L9
```

Upper bound: `-1719825158692869/777500000000000`.

## Leaf I_E3H2F1pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXY FXY -1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XEBFR XER 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDEFR ZER 1
mesh DEC XYZ EYZ 1
mesh DHC XYR HYR -1
mesh DHC XYR XYR -1
mesh DHC XYR HXY -1
mesh DHC XYR HXR -1
mesh DHC XYR DXR 1
```

### Strengthened triangle witnesses

```text
+DERo933/125 XZ
+DHFo933/125 XR
+DHRo3 X
```

### Mesh witnesses

```text
ear_DEC_ECX DEC XYZ
ear_DHC_HCR DHC RYX
```

### Fixed polynomial

```text
19 L1*L6
1 L4*L19
45 L6*L25
35 L6*L30
2 L2*L5*L26
3 L2*L13*L26
1 L3*L12*L26
2 +DEB*L23
1 +DEC*L9*L34
16 +EBH
45 +EBH*L24
16 +HFC
35 +HFC*L34
2 +EBZ
2 +DBZ*L3
40 +HFR
11 +HFR*L1
10 +FCR
31 +FCR*L4
15 +FCR*L34
8 -BFR
45 -BFR*L5
6 +HCR*L1
3 +HCR*L12
4 +HCR*L15
1 +ECX*L7
4 +ECX*L26
2 +DHX
3 +DHX*L24
4 +DHX*L27
1 +DFY*L4
3 -DFR*L0
1 -EFR*L0
1 -EFR*L5
5 +DXR
3 +DXR*L4
4 +DXR*L7
2 ear_DEC_ECX*L6
13 +DERo933/125
2 +DERo933/125*L7
46 +DERo933/125*L34
35 +DHFo933/125*L5
1 +DHFo933/125*L16
28 ear_DHC_HCR*L0
2 +DHRo3*L2
44 quad_DBHC_XYZR*L9
1 quad_DBHY_XZ*L9
```

Upper bound: `-63457438684147/62500000000000`.

## Leaf I_E3H2F2mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBFR ZER 1
mesh DEC XYZ EYZ 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E3H2F2pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDEFR ZER 1
mesh DEC XYZ EYZ 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf I_E3H3F0mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu XDBHZ XHZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZDEBR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DHF XYZ HXY 1
mesh DRF XYZ XYR 1
```

### Strengthened triangle witnesses

```text
-DCRo4427/500 XYZ
```

### Mesh witnesses

```text
ear_DHF_HFX DHF XYZ
ear_DRF_RFX DRF XYZ
```

### Fixed polynomial

```text
3 L1*L6
4 L3*L24
1 L4*L15
1 L5*L26
4 L15*L24
1 L26*L30
1 +DER*L9
5 +EBR
3 +BHR
4 +ECX
6 +ECX*L8
1 ear_DHF_HFX
4 ear_DRF_RFX
2 -DCRo4427/500*L0
6 quad_DEFC_XYZ*L12
1 quad_DEFC_XYZ*L24
1 quad_DXFC_Y
1 quad_DRFC_XYZ
```

Upper bound: `-4102861599/9100000000`.

## Leaf I_E3H3F0pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXR FXR 1
plu FDEYR FYR 1
plu FDEZR FZR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XDBHZ XHZ -1
plu XEBFR XER 1
plu YDBHZ YHZ -1
plu YDFCZ YFZ -1
plu YEBFR YER 1
plu YBFZR YZR 1
plu ZEBFR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

Exclusion: `four DHF XYZR`.

## Leaf I_E3H3F1mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBR FER 1
plu FDEXY FXY -1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHYR FYR 1
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
plu ZDEBR ZER 1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+DEHo3 R
+DFCo3 Y
-DCRo4427/500 XYZ
```

### Mesh witnesses

```text
ear_DBC_DBZ DBC XYZ
ear_DEC_DEZ DEC XYZ
ear_DEC_ECX DEC XYZ
ear_DRC_RCX DRC XYZ
```

### Fixed polynomial

```text
1 L0*L33
7 L1*L6
5 L2*L13
8 L2*L25
9 L3*L24
5 L4*L23
4 L13*L23
7 L15*L24
2 +EBH
18 +EBR
6 +BHR
1 -BFR
9 +ECX
7 +DHZ
1 -DZR
1 +HZR
3 +DEHo3*L23
7 ear_DEC_DEZ
4 ear_DEC_DEZ*L12
4 ear_DEC_ECX*L20
2 ear_DBC_DBZ*L2
1 +DFCo3*L24
13 -DCRo4427/500*L0
5 -DCRo4427/500*L4
7 ear_DRC_RCX
3 quad_DBHZ_R*L3
4 quad_DZXC_Y
```

Upper bound: `-87189535612029/62500000000000`.

## Leaf I_E3H3F1pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXY FXY -1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDBHZ XHZ -1
plu XEBFR XER 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZEBFR ZER 1
mesh DEC XYZ EYZ 1
mesh DHF XZR XZR 1
mesh DHF XZR FXZ 1
mesh DHF XZR HXR -1
mesh DHF XZR DXR -1
mesh DHF XZR DZR 1
mesh DHF XZR HZR -1
```

Exclusion: `four DHC XYZR`.

## Leaf I_E3H3F2mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
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
plu ZDEBR ZER 1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E3H3F2pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDHXR FXR 1
plu FDHYR FYR 1
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
plu ZEBFR ZER 1
mesh DEC XYZ EYZ 1
```

Exclusion: `four DHC XYZR`.

## Leaf I_E3H3F3mm

Box: `I3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX +DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDEFR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEBR FER 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu FDHZR FZR 1
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
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `cap DFC XY 1`.

## Leaf I_E3H3F3pm

Box: `I3`.

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
plu FDEBR FER 1
plu FDHXR FXR 1
plu FDHYR FYR 1
plu FDHZR FZR 1
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
mesh DEC XYZ EYZ 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
line DEBHFC XY H 1
```

Exclusion: `four DHC XYZR`.
