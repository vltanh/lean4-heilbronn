# The complete nontriangular support cell II in Type-II (1,3,3)

This excludes the entire cell II in the exhaustive support catalogue of [TYPE_II_133_NONTRIANGULAR.md](TYPE_II_133_NONTRIANGULAR.md). All geometric assumptions, rational boxes and nonnegative-factor definitions are proved there. The remaining support cells are separate alternatives.

There are 133 terminal leaves: 89 geometric exclusions and 44 fixed cubic contradictions with 2219 positive-integer terms. All root signs, any refinements, complete deduction traces, products and negative rational bounds are printed below. Every leaf is closed.

Counts: `44 89 2219`.

The companion [check_type_ii_133_nontriangular.py](check_type_ii_133_nontriangular.py) reads these printed tables and performs only exact geometric replay and rational expansion. Run it with the cell name as argument.

## Binary refinement table

A listed node splits on its displayed actual determinant; append `m` or `p` for its negative or positive child. An empty table means the initial ray roots already close without refinement.

```text
II_E1H2F1pp EHZ
II_E2H1F1pp EFX
II_E2H1F1ppp EXR
II_E2H2F1mm EHR
II_E2H2F1pp EFX
II_E2H2F1ppp EXR
II_E2H2F1pppm EYZ
II_E2H2F1pppmp FXZ
II_E2H2F2mm EHR
II_E2H2F2pp EXR
II_E3H2F1pp FXZ
II_E3H2F2mm EFR
II_E3H2F2mmp HXY
```

## Leaf II_E0H0F0mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDBCX HCX 1
plu HDBCY HCY 1
plu HDBCZ HCZ 1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu YDECZ YEZ 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YBCZR YZR 1
mesh EBC XYZ EXZ -1
```

Exclusion: `four DBH XYZR`.

## Leaf II_E0H0F0pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCY HCY 1
plu HDBCZ HCZ 1
plu HDBXR HXR -1
plu HDBYR HYR -1
plu HDBZR HZR -1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
mesh DBH XYZ HXZ -1
mesh DBR XYZ XZR -1
mesh EBC XYZ EXZ -1
line DEBHFC XZ F -1
chord DEBHFC XZ HE X
chord DEBHFC XZ HE Z
via X EBH EF -1
via Z EBH EF -1
via X EBH ER -1
via Z EBH ER -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E0H0F0pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCY HCY 1
plu HDBCZ HCZ 1
plu HDBXR HXR -1
plu HDBYR HYR -1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDBXR FXR -1
plu FDBYR FYR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
mesh DBH XYZ HXZ -1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
mesh EBC XYZ EXZ -1
chord DEBHFC XZ HE X
chord DEBHFC XZ HE Z
via X EBH EF -1
via Z EBH EF -1
via X EBH ER -1
via Z EBH ER -1
```

Exclusion: `cap DEBH XYZ 2`.

## Leaf II_E0H1F0mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBY HEY -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu CDEBR CER 1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBFY XFY 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBFR YFR -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
mesh DBH XZR DZR 1
mesh DBH XZR DXR -1
mesh DBH XZR XZR 1
mesh DBH XZR HXR 1
mesh DBH XZR HXZ 1
mesh DBH XZR HZR 1
mesh EBC XYZ EXZ -1
line DEBHFC XR E -1
line DEBHFC XR F 1
line DEBHFC ZR F 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E0H1F0pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu CDEBR CER 1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YDFCZ YFZ -1
plu YBCZR YZR 1
mesh EBC XYZ EXZ -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E0H1F0pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDBXR FXR -1
plu FDBYR FYR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
mesh EBC XYZ EXZ -1
plu XDEFZ XEF -1
plu XDEFR XER -1
plu ZDEFX ZEF -1
plu ZDEFR ZER -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
5 +DBHo933/125*L26
6 quad_DEBR_XYZ
```

Upper bound: `-543647907/568750000`.

## Leaf II_E0H1F1mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBY HEY -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBY FEY -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBZR YZR 1
mesh DBH XZR DZR 1
mesh DBH XZR DXR -1
mesh DBH XZR XZR 1
mesh DBH XZR HXR 1
mesh DBH XZR HXZ 1
mesh DBH XZR HZR 1
mesh DBF XZR FZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
mesh EBC XYZ EXZ -1
line DEBHFC XR E -1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf II_E0H1F1pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBY FEY -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBYR XYR -1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBZR YZR 1
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E0H1F1pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBY FEY -1
plu FDEBR FER -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YBCZR YZR 1
mesh EBC XYZ EXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
13 +DBHo933/125
```

Upper bound: `-1287/1250`.

## Leaf II_E0H2F0mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBFY XFY 1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBFR YFR -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
mesh EBC XYZ EXZ -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E0H2F0pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBFY XFY 1
plu YDECZ YEZ 1
plu YDFCZ YFZ -1
plu YBCZR YZR 1
mesh DHF XYR DYR -1
mesh DHF XYR FYR 1
mesh DHC XYR HXY -1
mesh DHC XYR DXR 1
mesh DHC XYR HXR -1
mesh DHC XYR XYR -1
mesh DHC XYR HYR -1
mesh EBC XYZ EXZ -1
mesh EHC XYR EYR -1
mesh EHC XYR EXR 1
via Z EBX ER -1
mesh DHF XYR FXR 1
chord DEBHFC XR FE X
chord DEBHFC XR FE R
via Z EBX EF -1
```

Exclusion: `nomesh EBF XZR`.

## Leaf II_E0H2F0pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBR FER -1
plu FDBXR FXR -1
plu FDBYR FYR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBHR XHR 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E0H2F1mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBY FEY -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBZR YZR 1
mesh DBF XZR DZR 1
mesh DBF XZR FZR 1
mesh DBF XZR FXZ 1
mesh EBC XYZ EXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
13 +DBHo933/125
```

Upper bound: `-1287/1250`.

## Leaf II_E0H2F1pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBY FEY -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBZR YZR 1
mesh DBF XZR DXR -1
mesh DBF XZR FZR 1
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E0H2F1pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBY FEY -1
plu FDEBR FER -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDBHR XHR 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YBCZR YZR 1
mesh DHC XYR HXY -1
mesh DHC XYR DYR -1
mesh DHC XYR HYR -1
mesh EBC XYZ EXZ -1
mesh EHC XYR EYR -1
mesh EHC XYR EXR 1
via Z EBX ER -1
```

### Strengthened triangle witnesses

```text
+EBRo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
27 L0*L27
1 +DEB
18 +EBRo933/125
9 quad_EBRC_XYZ
```

Upper bound: `-45489271/45500000`.

## Leaf II_E0H2F2mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDBXZ FXZ 1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBZR YZR 1
mesh EBC XYZ EXZ -1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
13 +DBHo933/125
```

Upper bound: `-1287/1250`.

## Leaf II_E0H2F2pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDBXZ FXZ 1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBZR YZR 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E0H2F2pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBR HER -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBYZ HYZ 1
plu HDBZR HZR -1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDEBR FER -1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu XDEBY XEY -1
plu YDECZ YEZ 1
plu YBCZR YZR 1
mesh DHC XYR HXY -1
mesh DHC XYR DXR 1
mesh DHC XYR HXR -1
mesh DHC XYR XYR -1
mesh DHC XYR DYR -1
mesh DHC XYR HYR -1
mesh DFC XYR FYR -1
mesh DFC XYR FXY -1
mesh DFC XYR FXR -1
mesh EBC XYZ EXZ -1
mesh EHC XYR EYR -1
mesh EHC XYR EXR 1
via Z EBX ER -1
```

### Strengthened triangle witnesses

```text
+EBRo933/125 XZ
+FCZo933/125 XR
-ECZo3 Y
```

### Mesh witnesses

```text
ear_DFC_CDY DFC RYX
```

### Fixed polynomial

```text
4 L0*L27
5 L10*L21
14 +DEZ
1 +CYZ
1 -ECY
1 ear_DFC_CDY
1 ear_DFC_CDY*L20
3 +EBRo933/125
1 -ECZo3*L16
6 +FCZo933/125
1 quad_EBRC_XYZ
```

Upper bound: `-17390304067/22750000000`.

## Leaf II_E0H3F0mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFY XFY 1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBFR YFR -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZDEBR ZER 1
plu ZDBFR ZFR -1
mesh DHF XYZ FXZ -1
mesh DHF XYZ HXY 1
mesh DRF XYZ XYR 1
mesh EBC XYZ EXZ -1
chord DEBHFC XZ FE X
chord DEBHFC XZ FE Z
via R BHX EF -1
```

Exclusion: `nomesh EBF XZR`.

## Leaf II_E0H3F0pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDBHZ XHZ -1
plu XDBFY XFY 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDFCZ YFZ -1
plu YBCZR YZR 1
mesh EBC XYZ EXZ -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E0H3F0pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu DEFZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBR FER -1
plu FDBXR FXR -1
plu FDBYR FYR -1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDBHZ XHZ -1
plu XDBHR XHR 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBHR YHR 1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDBHR ZHR 1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
mesh DHF XYZ HXY 1
mesh EBC XYZ EXZ -1
chord DEBHFC XZ FE X
chord DEBHFC XZ FE Z
via X EBF ER -1
via Z EBF ER -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E0H3F1mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEBY FEY -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu ZDBFR ZFR -1
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E0H3F1pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFYR DYR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBY FEY -1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDBHZ XHZ -1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
mesh DBF XZR DXR -1
mesh DBF XZR DZR 1
mesh DBF XZR FZR 1
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
mesh DHF XZR HXR -1
mesh DHF XZR HZR -1
mesh EBC XYZ EXZ -1
line DEBHFC XR E -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E0H3F1pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBY FEY -1
plu FDEBR FER -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDBHZ XHZ -1
plu XDBHR XHR 1
plu XDBYR XYR -1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YBCZR YZR 1
plu ZDBHR ZHR 1
mesh EBC XYZ EXZ -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E0H3F2mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDBXZ FXZ 1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu ZDBFR ZFR -1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
mesh EBC XYZ EXZ -1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
ear_EBC_EBZ EBC XYZ
ear_ERC_ERZ ERC XYZ
```

### Fixed polynomial

```text
10 L3*L21
1 L5*L22
1 +DHZ
8 -DZR
2 ear_EBC_EBZ
8 ear_ERC_ERZ
```

Upper bound: `-680571/1000000`.

## Leaf II_E0H3F2pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDBXZ FXZ 1
plu FDBXR FXR 1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
mesh EBC XYZ EXZ -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E0H3F2pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFZR DZR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDEBR FER -1
plu FDBXZ FXZ 1
plu FDBYZ FYZ 1
plu FDBZR FZR -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDBHZ XHZ -1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YBCZR YZR 1
plu ZDBHR ZHR 1
mesh DFC XYR FYR -1
mesh DFC XYR DXR 1
mesh DFC XYR XYR -1
mesh DFC XYR FXY -1
mesh DFC XYR DYR -1
mesh DFC XYR FXR -1
mesh EBC XYZ EXZ -1
mesh EFC XYR EXR 1
mesh EFC XYR EYR -1
line DEBHFC XR H -1
line DEBHFC YR H -1
via Z EBX ER -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E0H3F3mm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDEBZ FEZ -1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFZ XFZ -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
mesh DHC XYZ HXY 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
mesh EBC XYZ EXZ -1
```

### Strengthened triangle witnesses

```text
-ECZo3 Y
```

### Mesh witnesses

```text
ear_EBC_EBZ EBC XYZ
ear_EFC_FCX EFC XYZ
```

### Fixed polynomial

```text
1 L32
1 -DCX*L32
1 +BCX
2 -DCZ*L32
2 +DFZ
3 ear_EBC_EBZ
6 ear_EFC_FCX
1 -ECZo3
```

Upper bound: `-111746071/135500000`.

## Leaf II_E0H3F3pm

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu DEFZR DZR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDEBZ FEZ -1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu FDBZR FZR 1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFZ XFZ -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
mesh EBC XYZ EXZ -1
line DEBHFC XY H 1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E0H3F3pp

Box: `II0`.

Assumptions: `-ECY -ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBY HEY -1
plu HDEBZ HEZ -1
plu HDEBR HER -1
plu FDEBX FEX -1
plu FDEBY FEY -1
plu FDEBZ FEZ -1
plu FDEBR FER -1
plu CDEBR CER 1
plu CDBHX CHX -1
plu CDBHY CHY -1
plu CDBHZ CHZ -1
plu XDEBY XEY -1
plu XDBHZ XHZ -1
plu XDBFZ XFZ -1
plu YDECZ YEZ 1
plu YDBHZ YHZ -1
plu YDBFZ YFZ -1
plu YBCZR YZR 1
mesh EBC XYZ EXZ -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E1H0F0mm

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECY HCY 1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu YDEHZ YHZ -1
plu YDEFZ YFZ -1
plu YEBCR YER 1
plu YEBZR YZR 1
```

Exclusion: `four DBH XYZR`.

## Leaf II_E1H0F0pm

Box: `II1`.

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

## Leaf II_E1H0F0pp

Box: `II1`.

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

Exclusion: `cap DEBH XYZ 2`.

## Leaf II_E1H1F0mm

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu YDEBR YER 1
plu YDEFZ YFZ -1
plu YDEFR YFR -1
plu YDBZR YZR 1
mesh DBH XZR XZR 1
mesh DBH XZR DZR 1
mesh DBH XZR HXR 1
mesh DBH XZR DXR -1
mesh DBH XZR HXZ 1
mesh DBH XZR HZR 1
line DEBHFC XR E -1
line DEBHFC XR F 1
line DEBHFC ZR F 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E1H1F0pm

Box: `II1`.

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
```

Exclusion: `four DBF XYZR`.

## Leaf II_E1H1F0pp

Box: `II1`.

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

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
3 L0*L7
14 L0*L27
1 +HCR
1 contact_height*L3
1 contact_height*L26
4 R_height
3 +DBHo933/125
5 +DBHo933/125*L26
3 +EBCo933/125
16 quad_DEBR_XYZ
1 quad_EBRC_XZ*L7
```

Upper bound: `-473102844161/616525000000`.

## Leaf II_E1H1F1mm

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDBCX HCX 1
plu HDBCZ HCZ 1
plu HDBXY HXY -1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu YDEBR YER 1
plu YDBZR YZR 1
mesh DBH XZR XZR 1
mesh DBH XZR DZR 1
mesh DBH XZR HXR 1
mesh DBH XZR DXR -1
mesh DBH XZR HXZ 1
mesh DBH XZR HZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
line DEBHFC XR E -1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf II_E1H1F1pm

Box: `II1`.

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
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E1H1F1pp

Box: `II1`.

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
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DBRo933/125 XZ
+DFCo933/125 YR
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
33 L0*L33
42 L5*L10
16 L7*L9
2 L19*L24
50 L27*L30
51 +DEB*L1
29 +DEB*L5
2 +DEB*L16
39 +DHC*L9
3 +DHC*L9*L26
4 +BHF*L26
2 +HFC*L27
13 +BCX
9 +BCX*L26
61 +HFR
48 -DCR*L0*L33
7 +HCR*L9
9 -BCR*L14
2 -BCR*L17
12 -BCR*L33
9 +CXR
29 -DHX
7 +DHR*L9
4 +DBHo933/125
29 +DBHo933/125*L3
29 +DBHo933/125*L14
9 +DBHo933/125*L26
2 +DBRo933/125*L16
49 +DBRo933/125*L33
17 +DFCo933/125*L0
20 +DFCo933/125*L4
9 +DFCo933/125*L0*L26
3 +DFCo933/125*L4*L26
51 +EBCo933/125*L0
29 +EBCo933/125*L4
2 +EBCo933/125*L17
41 quad_DEBX_Z
29 quad_DEBX_Z*L7
2 quad_EBRY_XZ
```

Upper bound: `-30739790633/31250000000`.

## Leaf II_E1H2F0mm

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDBFY XFY 1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDEFZ YFZ -1
plu YDEFR YFR -1
plu YDBZR YZR 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E1H2F0pm

Box: `II1`.

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
mesh DHF XYR FYR 1
mesh DHF XYR DYR -1
mesh DHC XYR DXR 1
mesh DHC XYR HXR -1
mesh DHC XYR HYR -1
mesh DHC XYR XYR -1
mesh DHC XYR HXY -1
mesh DHF XYR FXR 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E1H2F0pp

Box: `II1`.

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

Exclusion: `nomesh DHC XYR`.

## Leaf II_E1H2F1mm

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBCZ HCZ 1
plu HDBXZ HXZ 1
plu HDBXR HXR 1
plu HDBYZ HYZ 1
plu HDBYR HYR 1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR DZR 1
mesh DBF XZR FZR 1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
8 quad_DEBF_XZR
22 quad_DEBF_XZR*L1
5 quad_DEBF_XZR*L16
22 quad_EBFC_XZR*L0
5 quad_EBFC_XZR*L17
5 quad_EBFY_XZR
```

Upper bound: `-17580556159/22750000000`.

## Leaf II_E1H2F1pm

Box: `II1`.

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
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR DXR -1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E1H2F1ppm

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR -EHZ`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDHFZ EFZ -1
plu EDHCY EHY 1
plu EDHYZ EYZ -1
plu EDFCY EFY 1
plu EDCXY EXY 1
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
plu ZDEHX ZEX -1
plu ZDEHR ZER -1
mesh DHC XYR HYR -1
mesh DHC XYR HXY -1
mesh DHC XYR DYR -1
```

### Strengthened triangle witnesses

```text
+DECo3 Y
+DFCo933/125 YR
+EBCo933/125 XZ
+HCZo933/125 XR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
23 L1*L6
15 L6*L32
6 L1*L6*L14
30 L3*L5*L23
1 L5*L10*L12
1 L6*L12*L21
1 L12*L22*L34
20 +DEB*L1
5 +DEB*L12
15 +DEB*L34
76 +DEC*L5*L23
7 +HFC
15 +HFC*L4
1 +HFC*L14
33 +BCX
4 +BCX*L7
1 +BCX*L8
2 +BCX*L31
83 +DEZ
9 +DEZ*L1
106 +DEZ*L7
13 +DEZ*L34
1 +EBZ*L12
5 +DBZ
60 +DBZ*L2
38 +DBZ*L7
44 +DBZ*L15
7 -DXZ*L5
40 -CXZ
2 -CXZ*L4
6 -CXZ*L34
11 -ECZ*L5
9 +DHX
1 +DHX*L8
1 +DHX*L11
2 -DFX
1 -DFX*L7
1 -DFX*L34
44 -EHZ
15 -EHZ*L0
1 -EHZ*L12
6 -EXZ*L0
1 -EXZ*L5
106 +DECo3*L6
1 +DFCo933/125*L0*L13
35 +EBCo933/125*L0
9 +HCZo933/125
106 +HCZo933/125*L3
15 +HCZo933/125*L34
5 quad_DEBH_Z*L22
44 quad_DEBX_Z*L22
15 quad_DZHF_X*L5
11 quad_EBHC_XZR*L22
```

Upper bound: `-214640317864783/192664062500000`.

## Leaf II_E1H2F1ppp

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EHZ`.

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
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
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
mesh DHC XYR HYR -1
mesh DHC XYR HXY -1
mesh DHC XYR DYR -1
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H2F2mm

Box: `II1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDFCY EFY 1
plu EDCXY EXY 1
plu EDCYZ EYZ -1
plu BDECR BDR -1
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
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+DFCo933/125 XY
+DHCo933/125 XY
+EBCo933/125 XZ
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
51 L0*L33
57 L5*L10
48 +DEB
88 +DEB*L1
52 +DHC*L9
11 +BHF*L26
41 +HFC
11 +HFC*L27
11 +HFR
1 -BCR
11 -BCR*L31
41 +DBHo933/125
6 +DHCo933/125*L9
41 +DFCo933/125*L0
1 +DFCo933/125*L4
14 +EBCo933/125
88 +EBCo933/125*L0
```

Upper bound: `-192066771/500000000`.

## Leaf II_E1H2F2pm

Box: `II1`.

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
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E1H2F2pp

Box: `II1`.

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
mesh DHC XYR DXR 1
mesh DHC XYR HXR -1
mesh DHC XYR HYR -1
mesh DHC XYR DYR -1
mesh DHC XYR XYR -1
mesh DHC XYR HXY -1
mesh DFC XYR FYR -1
mesh DFC XYR FXY -1
mesh DFC XYR FXR -1
```

### Strengthened triangle witnesses

```text
+EBCo933/125 XZ
+FCZo933/125 XR
```

### Mesh witnesses

```text
ear_DBC_DBZ DBC XYZ
```

### Fixed polynomial

```text
37 L1*L6
42 L5*L10
30 +BHF
7 +BHF*L26
7 +HFC*L27
46 +DEZ
57 +DEZ*L1
26 +DEZ*L2
36 -DCZ*L9
4 +DBZ*L2
8 +DBZ*L11
3 +BCZ*L6
7 +HFR
3 -BCR*L7
1 -BCR*L31
7 -ECZ*L0
4 -ECZ*L2
22 ear_DBC_DBZ*L10
11 +EBCo933/125
50 +EBCo933/125*L20
4 +EBCo933/125*L22
36 +FCZo933/125
3 quad_BRCZ_X*L10
3 quad_BRCZ_X*L33
```

Upper bound: `-427355677/500000000`.

## Leaf II_E1H3F0mm

Box: `II1`.

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
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFY XFY 1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDEFZ YFZ -1
plu YDEFR YFR -1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu ZDBFR ZFR -1
mesh DHF XYZ FXZ -1
mesh DHF XYZ HXY 1
mesh DRF XYZ XYR 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E1H3F0pm

Box: `II1`.

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
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H3F0pp

Box: `II1`.

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

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H3F1mm

Box: `II1`.

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
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDBXY FXY -1
plu FDBYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu CDBHZ CHZ -1
plu XDEBR XER 1
plu XDBHZ XHZ -1
plu XDBFR XFR -1
plu XDBZR XZR 1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu ZDBFR ZFR -1
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E1H3F1pm

Box: `II1`.

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
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR DZR 1
mesh DBF XZR DXR -1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
mesh DHF XZR HXR -1
mesh DHF XZR HZR -1
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H3F1pp

Box: `II1`.

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
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H3F2mm

Box: `II1`.

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
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBZ HEZ -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
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
plu ZDEBR ZER 1
plu ZDBFR ZFR -1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+BCZo3 X
+DFCo933/125 XY
-DCRo4427/500 XYZ
-ECRo933/125 XZ
```

### Mesh witnesses

```text
connect_DRC_XYZ DRC XYZ
ear_DBC_DBZ DBC XYZ
ear_DRC_CDY DRC XYZ
```

### Fixed polynomial

```text
30 L1*L6
1 L1*L10
4 L5*L10
7 L9*L23
29 L9*L26
22 L1*L10*L10
3 +BHF*L21
4 +BCX
15 +BCX*L27
26 +BHR
21 +BHR*L23
2 +HFR
15 -BCR*L15
28 +BFR
14 +XYZ
1 +DXY
1 +BYZ
3 -CXZ*L5
4 +ECY
23 +DHZ
1 +DHZ*L1
3 +DHZ*L32
11 -DFZ
3 -DFZ*L34
21 -DHR*L23
6 +HZR
33 R_width*L10
21 ear_DBC_DBZ*L26
8 ear_DBC_DBZ*L33
11 +DFCo933/125*L0*L10
10 +DFCo933/125*L0*L23
2 +DFCo933/125*L0*L26
17 -DCRo4427/500*L34
1 ear_DRC_CDY*L32
15 connect_DRC_XYZ
11 -ECRo933/125
4 -ECRo933/125*L17
26 -ECRo933/125*L24
3 +BCZo3*L30
4 quad_DERC_XYZ*L16
26 quad_DERC_XYZ*L25
3 quad_DZXC_Y*L4
2 quad_BRCZ_X*L10
```

Upper bound: `-2182495222969/3387500000000`.

## Leaf II_E1H3F2pm

Box: `II1`.

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
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H3F2pp

Box: `II1`.

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
mesh DFC XYR FYR -1
mesh DFC XYR FXY -1
mesh DFC XYR DXR 1
mesh DFC XYR DYR -1
mesh DFC XYR XYR -1
mesh DFC XYR FXR -1
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H3F3mm

Box: `II1`.

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
plu BDECR BDR -1
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
14 -DCX*L32
12 +BCX
14 ear_DFC_FCX
```

Upper bound: `-23678203/27100000`.

## Leaf II_E1H3F3pm

Box: `II1`.

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
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E1H3F3pp

Box: `II1`.

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
```

Exclusion: `nomesh EHC XZR`.

## Leaf II_E2H0F0mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu HDBCX HCX 1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZEBCR ZER 1
```

Exclusion: `four DBH XYZR`.

## Leaf II_E2H0F0pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu HDEYR HYR -1
plu HDEZR HZR -1
plu HDBCX HCX 1
plu HDBXR HXR -1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DBH XYZ HXZ -1
mesh DBR XYZ XZR -1
line DEBHFC XZ F -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E2H0F0pp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHYR DYR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu HDEYR HYR -1
plu HDEZR HZR -1
plu HDBCX HCX 1
plu HDBXR HXR -1
plu FDEBR FER -1
plu FDEYR FYR -1
plu FDEZR FZR -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu XDBHY XHY 1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDECR YER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YDCZR YZR 1
plu ZDECR ZER 1
mesh DBH XYZ HXZ -1
mesh DBF XYZ FXZ -1
mesh DBR XYZ XZR -1
```

Exclusion: `cap DEBH XYZ 2`.

## Leaf II_E2H1F0mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEYZ HYZ 1
plu HDBCX HCX 1
plu HDBXY HXY -1
plu HDBYR HYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu YDEBR YER 1
plu YDEFR YFR -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBCR ZER 1
mesh DBH XZR DXR -1
mesh DBH XZR HXZ 1
mesh DBH XZR HXR 1
mesh DBH XZR HZR 1
mesh DBH XZR DZR 1
mesh DBH XZR XZR 1
line DEBHFC XR E -1
line DEBHFC XR F 1
line DEBHFC ZR F 1
via X DHZ EH 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E2H1F0pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECZ HCZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu HDBCX HCX 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBFY XFY 1
plu XDBYR XYR -1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E2H1F0pp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECZ HCZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu HDBCX HCX 1
plu HDBXY HXY -1
plu HDBXR HXR -1
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

### Strengthened triangle witnesses

```text
+BFCo3 R
+DBHo933/125 XZ
+DBXo3 Z
+DHCo933/125 YR
+EBCo3 X
-DFXo3 Y
```

### Mesh witnesses

```text
ear_DBC_CDY DBC XYZ
ear_DBF_BFX DBF XYZ
ear_DBF_FDY DBF XYZ
ear_DBR_BRX DBR XYZ
ear_DBR_RDY DBR XYZ
```

### Fixed polynomial

```text
2 L5*L10
1 L6*L25
18 L10*L25
1 L14*L32
42 L0*L2*L11
6 +DHC*L9
1 +DHC*L0*L27
42 +DFC*L0*L27
1 +HFC
13 +BCX
5 +HFR
82 +FCR
1 +FCR*L4
3 +FCR*L15
40 -DCR*L9
1 -BCR*L0
1 -BCR*L5
11 -BCR*L11
6 +BFR*L14
12 -DFY
20 -DFY*L24
20 +DFR*L16
9 R_width*L14
3 +DBHo933/125*L3
3 +DBHo933/125*L26
8 ear_DBF_BFX
21 ear_DBF_BFX*L26
8 ear_DBF_FDY*L14
1 ear_DBF_FDY*L25
3 ear_DBC_CDY*L13
5 +DBXo3*L27
21 ear_DBR_BRX*L11
14 ear_DBR_RDY
20 ear_DBR_RDY*L8
1 +DHCo933/125*L0*L2
8 -DFXo3*L18
2 +EBCo3*L27
3 +BFCo3*L14
4 quad_DEBF_XYZ*L5
13 quad_DEBR_XYZ
21 quad_DEBR_XYZ*L1
4 quad_DEBR_XYZ*L7
37 quad_DEBR_XYZ*L11
1 quad_DEBR_XYZ*L34
3 quad_DBFR_XYZ*L14
1 quad_DBFR_XYZ*L34
20 quad_DBRC_XYZ*L9
6 quad_DBXY_Z
8 quad_DBXY_Z*L11
1 quad_EBFC_XR*L0
3 quad_EBFC_XR*L4
2 quad_EBFC_XR*L26
21 quad_EBRC_X*L0
4 quad_EBRC_X*L11
9 quad_BFCX_R*L26
```

Upper bound: `-508530652049827/203125000000000`.

## Leaf II_E2H1F1mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEYZ HYZ 1
plu HDBCX HCX 1
plu HDBXY HXY -1
plu HDBYR HYR 1
plu FDEYZ FYZ 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBCR ZER 1
mesh DBH XZR DXR -1
mesh DBH XZR HXZ 1
mesh DBH XZR HXR 1
mesh DBH XZR HZR 1
mesh DBH XZR DZR 1
mesh DBH XZR XZR 1
mesh DBF XZR FZR 1
mesh DBF XZR FXR 1
mesh DBF XZR FXZ 1
chord DEBHFC XZ EF X
line DEBHFC XR E -1
via X DEF EH 1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf II_E2H1F1pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECZ HCZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu HDBCX HCX 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu FDEYZ FYZ 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDBYR XYR -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZDECR ZER 1
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E2H1F1ppm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR +DFR -EFX`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDFXY EXY 1
plu EDFXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBR HER -1
plu HDECZ HCZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu HDBCX HCX 1
plu HDBXY HXY -1
plu HDBXR HXR -1
plu FDEBR FER -1
plu FDEXZ FXZ -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu FDBXY FXY -1
plu FDBXR FXR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEFR XER -1
plu XDEZR XZR -1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
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
2 L3*L8
4 -DFX*L3
6 -EFX
4 -EFX*L2
2 +DFCo933/125
7 +DFCo933/125*L12
```

Upper bound: `-853823776983/1953125000000`.

## Leaf II_E2H1F1pppm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDHFX EHX 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
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
plu HDEBR HER -1
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
plu CDEHY CHY -1
plu XDEYR XYR -1
plu YBCZR YZR 1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DBRo933/125 XZ
+DEFo933/125 XZ
+DEHo933/125 XZ
+DERo933/125 XZ
+DFCo933/125 YR
+DHCo933/125 YR
+EBCo3 X
-ECRo3 X
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
1 L1*L9
34 L6*L25
69 L6*L30
8 L6*L33
55 L9*L26
5 L0*L2*L25
2 L0*L6*L25
37 L0*L6*L27
75 L0*L6*L33
46 L0*L14*L27
6 L2*L3*L25
7 L3*L5*L25
27 L3*L5*L27
12 L3*L6*L12
14 L3*L12*L25
20 L3*L14*L25
40 L5*L10*L26
10 L5*L14*L25
13 L6*L6*L13
10 L6*L12*L25
35 +DEC*L5*L25
8 +DEC*L6*L25
13 +DEC*L6*L30
41 +DEC*L9*L26
19 +DHC*L9
40 +DHC*L9*L26
48 +HFC*L27
13 -DCX*L5*L6
38 +BCX
20 +BCX*L2
21 +BCX*L4
10 +BCX*L26
161 +HFR
41 +HFR*L3
38 +FCR*L0
88 +FCR*L6
10 -DCR*L1*L9
5 +HCR*L14
4 +CXR*L6
50 -ECX
13 -ECX*L7
51 -ECX*L24
20 -ECX*L26
7 -DHX
21 -DHX*L1
13 -DHX*L6
10 -DHX*L24
5 -DHX*L27
48 +DFR*L0
64 -EXR
20 -EXR*L3
2 -EXR*L7
9 contact_height*L6
13 +DEHo933/125*L6
15 +DEHo933/125*L26
12 +DEFo933/125*L6
26 +DERo933/125*L2
10 +DERo933/125*L10
37 +DERo933/125*L13
32 +DERo933/125*L33
5 +DERo933/125*L34
66 +DBHo933/125*L6
21 +DBHo933/125*L12
2 +DBHo933/125*L24
81 +DBHo933/125*L26
33 +DBRo933/125*L2
44 +DBRo933/125*L33
10 +DFCo933/125*L0*L25
44 +DFCo933/125*L0*L26
12 +EBCo3*L2
47 -ECRo3*L5
56 quad_DEBX_Z*L26
16 +DEC*+DHCo933/125*L9
88 +HCR*+DFCo933/125
41 +DEHo933/125*+DFCo933/125
86 +DBHo933/125*+DFCo933/125
```

Upper bound: `-3776749503271/7812500000000`.

## Leaf II_E2H1F1pppp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX +EXR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHXR DXR 1
plu DEHZR DZR 1
plu EDHFX EHX 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDHXR EHR 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDFXR EFR 1
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
plu FDEXY FXY -1
plu FDEXR FXR -1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEZR XZR -1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 XZ
+DBRo933/125 XZ
+DEHo933/125 XZ
+DFCo933/125 YR
+DHCo933/125 YR
+EBCo3 X
+EFCo933/125 XR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
4 L3*L5
24 L5*L10
19 L6*L25
2 L6*L27
15 L6*L32
17 L0*L6*L27
2 L2*L2*L25
2 L2*L10*L25
10 L2*L12*L27
37 L3*L5*L26
1 L3*L26*L30
27 L5*L10*L26
9 +DHC*L9
27 +DHC*L9*L26
5 +HFC
21 +HFC*L27
33 +BCX*L3
4 +BCX*L7
10 +BCX*L23
36 +BCX*L26
7 +DBZ
6 +DBZ*L3
49 +HFR
2 +FCR*L2
49 +FCR*L6
10 +HCR*L11
43 -BCR*L3
7 -BCR*L14
10 -DXZ
36 +CXR
2 +CXR*L3
10 -ECX*L27
47 +EXR
2 +EXR*L2
6 +EXZ
38 +DEHo933/125*L26
5 +DBHo933/125
4 +DBHo933/125*L3
17 +DBHo933/125*L26
12 +DBRo933/125*L14
5 +EBCo3*L27
3 +EFCo933/125*L27
18 quad_DEBX_Z*L2
6 quad_DEBX_Z*L23
38 quad_DEBX_Z*L27
16 quad_DEBR_XZ*L14
35 quad_EBRC_X*L14
4 quad_BRCZ_X*L14
38 +HCR*+DFCo933/125
4 quad_DEBX_Z*+DHCo933/125
```

Upper bound: `-8441398471943/15625000000000`.

## Leaf II_E2H2F0mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu XDBFY XFY 1
plu XDBFR XFR -1
plu YDEBR YER 1
plu YDEFR YFR -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBCR ZER 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E2H2F0pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
mesh DHF XYR FYR 1
mesh DHF XYR DYR -1
mesh DHC XYR DXR 1
mesh DHC XYR XYR -1
mesh DHC XYR HXR -1
mesh DHC XYR HYR -1
mesh DHC XYR HXY -1
mesh DHF XYR FXR 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E2H2F0pp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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

Exclusion: `nomesh DHC XYR`.

## Leaf II_E2H2F1mmm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR -EHR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHFR EFR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDHCR ECR -1
plu EDHYR EYR -1
plu EDHZR EZR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR 1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu XDBFR XFR -1
plu YDBZR YZR 1
mesh DBF XZR FXZ 1
mesh DBF XZR DZR 1
chord DEBHFC XZ EF X
```

### Strengthened triangle witnesses

```text
+DBFo4427/500 XZR
+DBRo3 Z
+DFCo3 Y
+DHCo933/125 XY
+DHFo3 X
+EBFo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
6 L1*L3
9 L3*L25
9 L3*L34
1 L5*L10
8 L0*L11*L26
9 +BHR
1 -BCR*L10
8 +BFR
20 +BFR*L4
20 -EHR
3 -EHR*L1
21 -EHR*L32
8 R_width
1 +DBFo4427/500*L3
9 +DBRo3*L10
18 +DHFo3*L1
3 +DHCo933/125*L0
20 +EBFo3*L5
4 quad_DEBR_Z
18 quad_DHFC_XY*L0
20 quad_EBHF_R*L24
1 quad_DEBR_Z*+DFCo3
```

Upper bound: `-83328474985611/67750000000000`.

## Leaf II_E2H2F1mmp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR +EHR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEYZ FYZ 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu XDBFR XFR -1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBCR ZER 1
mesh DBF XZR FXZ 1
mesh DBF XZR DZR 1
mesh DBF XZR FZR 1
chord DEBHFC XZ EF X
```

### Strengthened triangle witnesses

```text
+BFYo933/125 XR
+DBHo933/125 ZR
+DEHo933/125 ZR
+DFCo3 Y
+DHCo933/125 XY
```

### Mesh witnesses

```text
ear_DBF_DBZ DBF RXZ
```

### Fixed polynomial

```text
20 L5*L5
210 L9*L31
7 L0*L3*L10
5 L0*L3*L20
3 L0*L5*L22
1 L0*L19*L33
2 L1*L5*L6
1 L1*L6*L19
2 L1*L6*L20
17 L1*L6*L33
9 L2*L5*L6
25 L3*L5*L14
2 L3*L10*L16
248 L5*L10*L10
8 L5*L14*L20
10 L5*L14*L23
5 L5*L15*L22
206 L6*L10*L30
1 L6*L11*L20
7 L6*L12*L23
7 L6*L15*L20
4 L6*L19*L20
1 +DEF*L19
3 +DEC*L9
2 +DEC*L1*L19
196 +DEC*L5*L5
8 +DEC*L7*L9
2 +DEC*L9*L15
9 +DEC*L9*L22
1 +DEC*L9*L28
4 +DBF*L19
36 +DHC*L9
41 +DHC*L9*L10
1 +DHC*L9*L22
87 +HFC
8 +HFC*L3
237 +HFC*L4
169 +HFC*L6
221 +HFC*L10
13 +HFC*L15
7 -DCX*L3*L9
104 +BCX
13 +BCX*L2
322 +BCX*L4
5 +BCX*L6
5 +BCX*L8
3 +BCX*L20
22 +BCX*L22
31 +EBZ
5 +EBZ*L13
9 +EBZ*L14
4 +DBZ
33 +DBZ*L3
3 +DBZ*L4
5 +DBZ*L8
42 +DBZ*L10
13 +DBZ*L14
10 +BYZ
72 +BYZ*L10
4 +BYZ*L31
113 -ECX
338 -ECX*L4
8 -ECX*L7
5 -ECX*L21
9 -ECX*L22
9 +DHX
322 +DHX*L0
8 +DHX*L2
13 +DHX*L10
8 +DHX*L20
14 +DHX*L23
7 -DFX*L6
76 +BFZ*L19
26 +FXZ
5 +FXZ*L0
9 +FXZ*L2
7 +FXZ*L7
39 +DEHo933/125*L4
9 +DEHo933/125*L7
338 +DEHo933/125*L13
33 +DEHo933/125*L14
231 +DBHo933/125*L3
147 +DBHo933/125*L10
322 +DBHo933/125*L12
2 +DBHo933/125*L20
8 +DBHo933/125*L23
82 +DBHo933/125*L33
1 ear_DBF_DBZ*L19
46 +DHCo933/125*L6*L9
30 +BFYo933/125
2 +BFYo933/125*L3
2 +BFYo933/125*L7
77 +BFYo933/125*L22
125 quad_DEBF_XZR
231 quad_DEBF_XZR*L7
5 quad_DEBF_XZR*L12
22 quad_DEBF_XZR*L15
5 quad_DEBF_XZR*L21
33 quad_DEBF_XZR*L23
235 quad_DEHF_XZR*L5
2 quad_DBHF_XZR*L5
38 quad_DBHF_XZR*L6
26 quad_DBHF_XZR*L10
1 quad_DBFY_XZR*L23
6 quad_DBFY_XZR*L33
8 quad_DZFY_X*L6
22 +BCX*+DFCo3
9 +EBZ*+DFCo3
9 -ECX*+DFCo3
8 +DEHo933/125*+DFCo3
6 +BFYo933/125*+DFCo3
```

Upper bound: `-576474898031/11375000000000`.

## Leaf II_E2H2F1pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
mesh DBF XZR DXR -1
mesh DBF XZR FZR 1
mesh DBF XZR FXR 1
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E2H2F1ppm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR -EFX`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDFXY EXY 1
plu EDFXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
mesh DHC XYR HYR -1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
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
2 L3*L8
5 -DFX*L3
7 -EFX
5 -EFX*L2
2 +DFCo933/125
1 +DFCo933/125*L0
8 +DFCo933/125*L12
1 quad_BFCX_R
```

Upper bound: `-1358009204233/1562500000000`.

## Leaf II_E2H2F1pppmm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR -EYZ`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDHFX EHX 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
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
plu HDEBR HER -1
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
mesh DHC XYR HYR -1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
```

### Strengthened triangle witnesses

```text
+DHRo3 X
+DHYo3 X
-DCRo3 Y
-EYRo933/125 XZ
```

### Mesh witnesses

```text
ear_DHC_HCR DHC RYX
```

### Fixed polynomial

```text
2 L1*L6
7 L2*L17
1 L3*L25
1 L5*L10
5 +DEC*L6*L25
2 +EBH
2 +FCR*L6
6 +HCR
5 +HCR*L3
2 +HCR*L11
2 ear_DHC_HCR*L2
3 +DHYo3*L3
3 +DHYo3*L26
1 +DHRo3*L2
9 -EYRo933/125
3 -EYRo933/125*L7
3 quad_DEHR_XZ*L19
2 quad_DHFR_X
8 +DEC*-DCRo3*L5
2 +HFC*-DCRo3
```

Upper bound: `-22666656091/31250000000`.

## Leaf II_E2H2F1pppmpm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR +EYZ -FXZ`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDHFX EHX 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
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
plu HDEBR HER -1
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
mesh DHC XYR HYR -1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
+DERo933/125 XZ
+DEXo3 Z
+DFCo933/125 YR
+DHFo3 X
+DHRo3 X
+EFCo933/125 XR
+HCZo933/125 XR
-DCRo3 Y
-ECRo3 X
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
1 L0*L9
14 L1*L6
32 L6*L25
3 L6*L32
1 L23*L30
10 L1*L6*L12
3 L2*L13*L30
10 L3*L5*L14
2 L3*L5*L25
6 L3*L12*L30
1 L3*L25*L30
8 L4*L9*L15
2 L4*L9*L26
1 L6*L8*L25
35 L14*L23*L32
10 +DHC*L9*L15
15 +EBH
8 +EBH*L15
13 +HFC*L23
10 -DCX*L0*L9
14 -DCX*L5*L23
16 +BCX
9 +BCX*L2
8 +BCX*L7
2 +BCX*L21
73 +BCX*L23
10 +BCX*L30
1 +DBZ*L3
2 +DBZ*L13
121 +DBZ*L15
6 +DBZ*L26
6 -DCR*L3*L9
32 +HCR
47 -DXZ
30 -DXZ*L7
34 -DXZ*L11
5 -DXZ*L25
4 -DXZ*L26
27 -DXZ*L30
3 -DXZ*L32
23 -CXZ*L9
6 -BXR*L23
5 +CXR*L5
6 +CXR*L30
10 -ECX*L0
12 -ECX*L24
13 +DHX
1 +DHX*L3
57 +DHX*L22
12 +DHX*L32
20 -DHZ*L8
2 -DHZ*L24
35 -DFX*L23
1 +DHR*L9
6 +DFR*L2
3 +DFR*L4
5 +DFR*L12
4 +DFR*L15
10 +DFR*L21
18 -EXR
9 -EXR*L30
66 -FXZ
25 -FXZ*L4
13 -FXZ*L7
5 -FXZ*L24
2 +DXR*L23
3 -EZR*L9
5 +HXZ*L8
2 -XZR*L4
2 -XZR*L9
1 +DEXo3*L6
3 +DERo933/125
21 +DERo933/125*L2
24 +DERo933/125*L4
2 +DBRo933/125
19 +DHFo3*L20
2 +DHRo3*L20
44 +DFCo933/125*L12
15 +DFCo933/125*L21
6 +DFCo933/125*L2*L25
25 +DFCo933/125*L4*L12
3 +DFCo933/125*L4*L25
7 -DCRo3*L0*L2
12 +EFCo933/125*L12
3 +EFCo933/125*L21
5 +EFCo933/125*L25
18 -ECRo3*L5
12 -ECRo3*L13
40 +HCZo933/125*L14
12 quad_DEXC_YZ*L9
5 quad_DHFR_X*L20
7 quad_EBRC_X*L2
4 quad_HFRZ_X*L14
4 -CXZ*+DFCo933/125
6 +ECZ*+DFCo933/125
7 -DHZ*+DFCo933/125
4 +HXZ*+DFCo933/125
3 +HCZo933/125*+DFCo933/125
```

Upper bound: `-23914871677289513/8468750000000000`.

## Leaf II_E2H2F1pppmpp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX -EXR +EYZ +FXZ`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDHFX EHX 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
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
plu HDEBR HER -1
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
mesh DHC XYR HYR -1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
```

### Strengthened triangle witnesses

```text
+BCYo3 X
+DBRo933/125 XZ
+DERo933/125 XZ
+DFCo933/125 YR
+FCZo933/125 XR
+HCZo933/125 XR
-DCRo3 Y
-DFZo3 X
-ECRo3 X
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
4 L0*L9
17 L1*L6
3 L5*L6
5 L6*L17
1 L6*L19
4 L6*L27
5 L6*L30
3 L9*L20
99 L9*L23
3 L9*L31
6 L10*L19
51 L0*L0*L19
40 L0*L2*L17
2 L0*L3*L25
3 L0*L5*L19
4 L0*L9*L14
1 L0*L9*L26
8 L0*L13*L19
17 L0*L15*L19
6 L0*L17*L28
22 L0*L19*L20
60 L0*L19*L22
3 L0*L19*L28
1 L0*L22*L33
3 L0*L29*L29
1 L0*L29*L34
14 L1*L6*L16
9 L1*L10*L14
30 L1*L12*L19
1 L1*L25*L33
23 L2*L25*L33
4 L3*L3*L25
20 L3*L5*L12
9 L3*L5*L17
1 L3*L5*L20
47 L3*L5*L25
10 L3*L6*L20
130 L3*L14*L20
63 L3*L17*L17
2 L3*L17*L20
5 L3*L17*L30
45 L3*L20*L23
5 L3*L20*L30
1 L4*L19*L22
14 L5*L5*L14
14 L5*L6*L12
30 L5*L6*L25
8 L5*L10*L10
16 L5*L10*L26
18 L6*L12*L27
1 L6*L24*L34
18 L9*L14*L19
20 L9*L15*L17
15 L9*L16*L23
5 L9*L21*L28
15 L10*L10*L21
18 L10*L12*L19
26 L10*L12*L23
60 L10*L13*L17
2 L10*L13*L33
2 L10*L14*L30
23 L10*L15*L25
21 L10*L17*L20
1 L12*L19*L20
12 L12*L19*L32
4 L12*L19*L34
5 L13*L16*L19
5 L16*L16*L19
63 L16*L19*L20
63 L17*L17*L22
5 L17*L17*L28
1 L17*L20*L28
1 +DEC*L6*L25
8 +DHC*L9*L10
14 +DFC*L6*L25
12 +EBH
80 +EBH*L12
14 +EBH*L16
6 +EBH*L21
10 +EBH*L22
2 +EBH*L24
26 +BHF*L13
2 +BHF*L26
3 +DEX*L9
28 -DCX*L9*L17
23 -DCX*L9*L27
112 +BCX
14 +BCX*L3
14 +BCX*L4
24 +BCX*L8
9 +BCX*L11
53 +BCX*L16
20 +BCX*L18
86 +BCX*L21
57 +BCX*L22
1 +BCX*L27
45 +BCX*L34
79 +EBZ*L29
75 -DCZ*L0*L9
7 -DCZ*L5*L10
7 -DCZ*L9*L10
26 -DCZ*L9*L14
84 -DCZ*L9*L20
7 -DCZ*L9*L31
123 +DBZ
69 +DBZ*L3
9 +DBZ*L7
30 +DBZ*L11
28 +DBZ*L13
40 +DBZ*L17
43 +DBZ*L18
76 +DBZ*L22
17 +DBZ*L28
1 +DBZ*L34
34 +HCR
35 +HCR*L3
31 +HCR*L5
14 +HCR*L11
128 +HCR*L12
18 +HCR*L15
96 -DXZ*L9
86 -DXZ*L10
48 +BXY*L1
73 +BXY*L3
5 +BXY*L17
63 +BXY*L21
74 +BXY*L22
4 +BXY*L34
95 +CYZ*L0
61 +CYZ*L20
39 -ECX
80 -ECX*L1
4 -ECX*L3
24 -ECX*L5
62 -ECX*L10
64 -ECX*L16
64 -ECX*L21
57 -ECX*L23
149 -ECX*L24
4 -ECX*L26
3 -ECX*L30
55 +DHX*L0
2 +DHX*L10
4 +DHX*L16
128 +DHX*L24
18 +DHX*L27
14 +DHX*L30
83 -DFX
57 -DFX*L3
26 -DFX*L4
4 -DFX*L16
18 -DFX*L18
137 -DFX*L21
113 -DFX*L22
23 -DFX*L27
6 -EXR
4 -EXR*L3
128 -EXR*L5
23 -EXR*L11
42 +EYZ
50 +EYZ*L1
64 +EYZ*L13
73 +EYZ*L14
63 +EYZ*L17
61 +EYZ*L21
5 +EYZ*L32
150 +FXZ
28 +FXZ*L0
57 +FXZ*L3
2 +FXZ*L11
64 +FXZ*L16
73 +EXZ*L19
7 +DERo933/125
83 +DERo933/125*L4
6 +DERo933/125*L7
149 +DERo933/125*L13
4 +DERo933/125*L15
2 +DBRo933/125*L33
75 +DFCo933/125*L0*L20
84 +DFCo933/125*L20*L20
46 -DFZo3*L0
2 -DCRo3*L9
1 -DCRo3*L0*L14
35 -DCRo3*L3*L5
31 -DCRo3*L5*L5
1 -ECRo3*L5
1 +BCYo3*L17
10 +HCZo933/125*L2
1 +HCZo933/125*L19
57 +FCZo933/125*L2
9 +FCZo933/125*L10
131 +FCZo933/125*L12
87 +FCZo933/125*L15
43 +FCZo933/125*L17
84 +FCZo933/125*L20
7 +FCZo933/125*L33
13 quad_DEXC_YZ*L6
7 quad_DZHF_X*L10
1 quad_DZFR_X*L0
35 quad_DZXC_Y*L9
5 quad_EBCZ_X*L19
1 quad_ERCZ_X*L5
12 quad_HCYX_R*L9
```

Upper bound: `-115201565243851/846875000000000`.

## Leaf II_E2H2F1pppp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +EFX +EXR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR 1
plu EDHFX EHX 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDHXR EHR 1
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
mesh DHC XYR HYR -1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
-DCRo3 Y
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
37 L3*L13
8 L3*L24
3 L5*L10
6 L5*L25
13 L6*L25
4 L0*L3*L14
8 L1*L3*L13
6 L1*L5*L15
1 L2*L5*L14
2 L3*L4*L14
2 L3*L5*L15
17 L3*L13*L34
1 L3*L14*L24
8 L3*L24*L34
9 +EBH*L25
8 +EBX*L25
3 -DCX*L6
4 +BCX*L3
3 +BCX*L4
41 +BCX*L26
3 +HFR
3 +FCR*L6
23 -DCR*L6
12 -DCR*L0*L3
9 +HCR
18 +HCR*L2
3 +HCR*L11
42 +HCR*L15
25 -BCR*L0
9 -BXR*L4
23 +CXR
17 +CXR*L0
39 +CXR*L7
8 -ECX*L25
8 +DHX
18 +DHX*L0
5 +DHX*L2
8 +DHX*L24
41 +DHX*L27
45 +EXR
8 +EXR*L1
3 +EXR*L7
17 +EXR*L34
1 +DXR*L3
15 -ECR*L6
15 R_height
15 R_height*L0
8 R_height*L12
39 +DBRo933/125*L1
12 +DBRo933/125*L3
33 +DBRo933/125*L14
11 -DCRo3*L5
6 -DCRo3*L0*L5
8 -DCRo3*L0*L15
18 -DCRo3*L2*L5
1 quad_HFCX_R*L26
4 +HFC*-DCRo3
1 -ECX*-DCRo3
```

Upper bound: `-12367247517/62500000000`.

## Leaf II_E2H2F2mmm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR -EHR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHFR EFR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDHCR ECR -1
plu EDHYR EYR -1
plu EDHZR EZR -1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR 1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu FDEBX FEX -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEZR XZR 1
plu YDBZR YZR 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 XY
+DHCo933/125 XY
+EBHo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
3 L0*L5
1 L1*L3
4 L3*L32
1 L3*L34
2 L5*L10
5 +BFR
14 +BFR*L4
7 -EHR
2 -EHR*L1
14 -EHR*L32
7 R_width
8 R_width*L10
10 +DHCo933/125*L0
1 +DHCo933/125*L9
8 +DFCo933/125*L0
13 +DFCo933/125*L0*L4
4 +DFCo933/125*L0*L10
9 +EBHo3
1 quad_DEBF_ZR*L5
5 quad_EBHF_R
14 quad_EBHF_R*L24
4 +DFCo933/125*+DFCo933/125*L1
```

Upper bound: `-424033245428143/2117187500000000`.

## Leaf II_E2H2F2mmp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR +EHR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
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
plu ZEBCR ZER 1
```

### Strengthened triangle witnesses

```text
+DBFo933/125 ZR
+DBHo933/125 ZR
+DEHo933/125 ZR
+DFCo933/125 XY
-DCRo933/125 XY
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
4 L1*L9
30 L5*L10
32 L6*L32
2 L6*L33
1 L10*L30
1 L10*L33
34 L0*L12*L33
4 L0*L15*L30
14 L0*L15*L33
4 L1*L3*L5
3 L1*L6*L6
4 L2*L6*L13
18 L3*L13*L32
30 +DEC*L5
141 +DEC*L5*L13
4 +DEC*L6*L30
5 +DHC*L3*L5
37 +BHF*L26
25 +HFC
12 +HFC*L15
40 +HFC*L27
4 +HFX*L3
32 -DCX*L5
17 -DCX*L0*L30
17 -DCX*L1*L9
14 -DCX*L6*L32
12 -DCX*L10*L30
12 +DBX*L9
105 +BCX
21 +BCX*L4
14 +BCX*L11
7 +BCX*L27
42 +HFR
7 -BCR*L15
40 -BCR*L33
7 -BXR
1 -BXR*L7
128 -ECX
8 -ECX*L7
18 -ECX*L32
23 +DFX
50 +DFX*L0
4 +DFX*L2
12 +DFX*L10
2 -DFR*L6
1 -DXR*L6
33 +DEHo933/125
4 +DEHo933/125*L1
1 +DEHo933/125*L7
4 +DEHo933/125*L11
141 +DEHo933/125*L13
4 +DEHo933/125*L14
3 +DBHo933/125*L6
54 +DBHo933/125*L11
34 +DBHo933/125*L12
65 +DBHo933/125*L15
1 +DBHo933/125*L26
51 +DBFo933/125*L6
2 -DCRo933/125*L30
2 -DCRo933/125*L0*L33
3 quad_DBFX_ZR*L6
2 -DHR*+DFCo933/125
```

Upper bound: `-173238348363/3387500000000`.

## Leaf II_E2H2F2pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E2H2F2ppm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR +DFR -EXR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
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
plu HDEBX HEX -1
plu HDEBR HER -1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEYZ HYZ 1
plu HDEZR HZR -1
plu FDEBX FEX -1
plu FDEBR FER -1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR -1
plu CDEHY CHY -1
plu CDBHX CHX -1
plu YBCZR YZR 1
mesh DHC XYR HXR -1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
mesh DHC XYR DXR 1
mesh DHC XYR XYR -1
mesh DHC XYR HYR -1
mesh DFC XYR FXY -1
mesh DFC XYR FYR -1
mesh DFC XYR FXR -1
```

### Strengthened triangle witnesses

```text
+DERo933/125 XZ
+DFCo4427/500 XYR
+FCXo3 R
-DCRo3 Y
-ECRo3 X
```

### Mesh witnesses

```text
connect_DHC_RYX DHC RYX
ear_DFC_DFX DFC RYX
ear_DFC_FCR DFC RYX
ear_DHC_DHX DHC RYX
```

### Fixed polynomial

```text
44 L1*L6
1 L1*L9
116 L5*L10
44 L6*L25
1 L9*L19
1 L10*L17
10 L10*L19
11 L13*L19
5 L17*L33
1 L25*L25
25 L0*L0*L33
7 L0*L2*L13
25 L0*L5*L10
4 L0*L17*L33
49 L0*L24*L33
1 L1*L9*L28
4 L2*L17*L30
6 L3*L12*L17
68 L3*L25*L30
4 L3*L25*L32
59 L5*L10*L26
5 L9*L26*L31
5 L10*L12*L17
4 L10*L13*L33
1 L13*L19*L32
55 +DEC*L5*L25
96 +DEC*L6*L25
8 +DEC*L25*L25
52 +DEC*L25*L30
2 +DHC*L9*L15
4 +DFC*L0*L33
3 +DFC*L5*L25
5 +DFC*L6*L25
53 +BHF
25 +BHF*L0
4 +BHF*L11
4 +BHF*L17
58 +BHF*L24
50 +HFC*L25
68 -DCX*L9
12 -DCX*L1*L9
9 -DCX*L5*L10
4 -DCX*L9*L16
11 -DCX*L9*L31
24 +BCX
5 +BCX*L0
55 +BCX*L10
153 +HFR
35 +HFR*L18
156 +HFR*L28
29 +FCR*L6
36 -DCR*L9*L15
8 +HCR*L1
96 +HCR*L3
224 +HCR*L11
104 +HCR*L14
2 +HCR*L32
56 -ECX
7 -ECX*L1
6 -ECX*L16
171 -ECX*L24
56 +DFX
13 +DFX*L0
11 +DFX*L11
5 +DFX*L17
4 +DFX*L26
111 -EXR
1 -DYR*L5
3 -DYR*L30
187 -HXY*L26
1 -HXY*L32
11 +DXR*L33
3 -HYR*L9
6 -HYR*L10
16 -FYR
4 -FYR*L4
191 -FYR*L7
187 -FYR*L14
187 -FXR*L19
27 +DERo933/125
71 +DERo933/125*L13
3 +DERo933/125*L16
12 +DERo933/125*L27
2 +DERo933/125*L34
27 ear_DHC_DHX*L10
6 connect_DHC_RYX*L10
7 +DFCo4427/500*L10*L12
36 +DFCo4427/500*L14*L25
40 ear_DFC_DFX*L6
3 ear_DFC_FCR*L19
5 ear_DFC_FCR*L33
1 ear_DFC_FCR*L34
9 -DCRo3*L1*L5
96 -DCRo3*L3*L5
12 -DCRo3*L3*L25
38 -DCRo3*L5*L15
3 -DCRo3*L5*L28
3 -DCRo3*L6*L16
1 -ECRo3*L1
19 -ECRo3*L5
101 -ECRo3*L13
11 -ECRo3*L17
108 -ECRo3*L30
104 +FCXo3*L6
14 quad_DEFC_XYZR*L6
34 quad_DERC_XYZ*L5
12 quad_DERC_XYZ*L30
8 quad_ERCY_X*L25
4 quad_ERCY_X*L30
1 quad_BRCY_X*L30
4 quad_HFCY_R*L10
181 -HXY*+DFCo4427/500
177 quad_HFCX_R*-DCRo3
1 quad_HFCY_R*-DCRo3
```

Upper bound: `-373638142373269/352300000000000`.

## Leaf II_E2H2F2ppp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DFY +DFX -DFZ +DHR +DFR +EXR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEHZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
plu XDEBR XDR -1
plu XDEZR XZR -1
plu XDBHR XHR 1
plu XDBFR XFR 1
plu XDBYR XYR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
mesh DHC XYR HYR -1
mesh DFC XYR FXY -1
mesh DFC XYR FYR -1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
+DFCo4427/500 XYR
+EBCo3 X
+HCXo3 R
-DCRo3 Y
```

### Mesh witnesses

```text
ear_DFC_DFX DFC RYX
```

### Fixed polynomial

```text
3 L0*L33
3 L2*L25
11 L3*L13
4 L5*L10
1 L15*L30
1 L1*L3*L13
3 L2*L12*L25
1 L3*L13*L30
2 L6*L13*L26
3 +BHF
1 +HFC*L15
2 -DCX*L1*L9
6 +BCX*L24
4 +BCX*L26
3 -DCR*L12*L30
3 +HCR*L15
6 -BCR*L12
4 -BCR*L14
5 +CXR
2 +CXR*L7
3 -ECX*L25
1 -ECX*L30
4 +DFX
2 +DFX*L0
2 +DFX*L24
11 +EXR
1 +EXR*L1
2 +DXR*L1
3 +DXR*L32
2 R_height
3 R_height*L12
3 +DBRo933/125*L3
1 ear_DFC_DFX*L6
1 ear_DFC_DFX*L25
1 -DCRo3*L30
4 -DCRo3*L0*L12
1 +EBCo3*L25
1 quad_DEBR_XZ*L3
3 quad_HFCX_R*L26
3 +HFC*-DCRo3
4 -DCX*-DCRo3*L0
1 +HCXo3*+DFCo4427/500
4 quad_DEBX_Z*-DCRo3
```

Upper bound: `-17114036920911/16937500000000000`.

## Leaf II_E2H3F0mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEHZ XHZ -1
plu XDEZR XZR 1
plu XDBFY XFY 1
plu XDBFR XFR -1
plu YDEBR YER 1
plu YDEFR YFR -1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZDEBR ZER 1
plu ZDEFR ZFR -1
mesh DHF XYZ HXY 1
mesh DHF XYZ FXZ -1
mesh DRF XYZ XYR 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E2H3F0pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
```

Exclusion: `four DBF XYZR`.

## Leaf II_E2H3F0pp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ -DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFYR DYR 1
plu DEFZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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

Exclusion: `four DHC XYZR`.

## Leaf II_E2H3F1mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
plu FDEYZ FYZ 1
plu FDBXY FXY -1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu CDBHX CHX -1
plu XDEBR XER 1
plu XDEHZ XHZ -1
plu XDEZR XZR 1
plu XDBFR XFR -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu ZDEFR ZFR -1
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E2H3F1pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
mesh DBF XZR DXR -1
mesh DBF XZR FZR 1
mesh DBF XZR FXR 1
mesh DBF XZR DZR 1
mesh DBF XZR XZR 1
mesh DBF XZR FXZ 1
mesh DHF XZR HXR -1
mesh DHF XZR HZR -1
chord DEBHFC XZ EF X
line DEBHFC XR E -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E2H3F1pp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY -DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR 1
plu DEFZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
```

Exclusion: `four DHC XYZR`.

## Leaf II_E2H3F2mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
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
plu ZDEBR ZER 1
plu ZDEFR ZFR -1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 XY
-DCRo4427/500 XYZ
```

### Mesh witnesses

```text
connect_DRC_XYZ DRC XYZ
ear_DBC_DBZ DBC XYZ
```

### Fixed polynomial

```text
52 L1*L6
3 L3*L13
3 L9*L26
3 L15*L23
6 L1*L6*L26
2 L1*L10*L10
2 +DFC*L0*L23
12 +BCX
1 +BCX*L23
41 +BCX*L27
2 -DCZ*L9
3 +DBZ*L15
58 +BHR
8 -DCR*L6*L20
6 -BCR*L6
41 -BCR*L15
3 +BFR
40 +XYZ
2 -DXZ*L0
1 +CYZ
1 +DXY
1 -BXR
3 -ECX
12 +DHZ
41 +DHZ*L27
2 -DFZ
41 -DHR*L23
33 -DZR*L6
3 R_width*L10
2 ear_DBC_DBZ*L33
1 +DFCo933/125*L0
2 +DFCo933/125*L0*L10
69 -DCRo4427/500*L34
41 connect_DRC_XYZ
3 quad_DZXC_Y
2 quad_DZXC_Y*L1
3 quad_BHCX_R*L23
```

Upper bound: `-15291985571/15625000000`.

## Leaf II_E2H3F2pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
```

Exclusion: `four DHC XYZR`.

## Leaf II_E2H3F2pp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX -DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFZR DZR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
mesh DFC XYR DXR 1
mesh DFC XYR XYR -1
mesh DFC XYR FXR -1
mesh DFC XYR FYR -1
mesh DFC XYR DYR -1
mesh DFC XYR FXY -1
line DEBHFC XR H -1
line DEBHFC YR H -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E2H3F3mm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDBXR HXR 1
plu HDBYR HYR 1
plu HDBZR HZR 1
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
16 -DCX*L32
13 +BCX
16 ear_DFC_FCX
```

Upper bound: `-425161/500000`.

## Leaf II_E2H3F3pm

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR -DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu DEFXR DXR -1
plu DEFYR DYR -1
plu DEFZR DZR -1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
line DEBHFC XY H 1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E2H3F3pp

Box: `II2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DFY +DFX +DFZ +DHR +DFR`.

### Sign trace

```text
plu DEBHR DBR 1
plu EDHCY EHY 1
plu EDHCZ EHZ 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDCXY EXY 1
plu EDCXZ EXZ 1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEBX HEX -1
plu HDEBR HER -1
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
```

Exclusion: `four DHC XYZR`.

## Leaf II_E3H0F0mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX -DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECY HCY 1
plu HDECZ HCZ 1
plu CDEBR CER 1
plu XDEBY XEY -1
plu XDEHY XHY 1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XEBCR XER 1
plu YDHCZ YHZ -1
plu YDFCZ YFZ -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZEBCR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

Exclusion: `four DEH XYZR`.

## Leaf II_E3H0F0pm

Box: `II3`.

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
mesh DEH XYZ EYZ 1
mesh DEH XYZ HXZ -1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E3H0F0pp

Box: `II3`.

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
mesh DEH XYZ EYZ 1
mesh DEH XYZ HXZ -1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
```

Exclusion: `cap DEBH XYZ 2`.

## Leaf II_E3H1F0mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEFY XFY 1
plu XDECZ XEZ -1
plu XEBCR XER 1
plu YDEBR YER 1
plu YDEFR YFR -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBCR ZER 1
mesh DEH XZR DXR -1
mesh DEH XZR HXR 1
mesh DEH XZR DZR 1
mesh DEH XZR XZR 1
mesh DEH XZR HZR 1
mesh DEH XZR HXZ 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
line DEBHFC XR F 1
line DEBHFC ZR F 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E3H1F0pm

Box: `II3`.

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
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E3H1F0pp

Box: `II3`.

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
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
```

### Strengthened triangle witnesses

```text
```

### Mesh witnesses

```text
ear_DBF_BFX DBF XYZ
ear_DBR_BRX DBR XYZ
```

### Fixed polynomial

```text
4 L0*L27
1 L6*L25
7 L10*L25
2 L11*L12
1 L0*L15*L26
1 +EBH*L13
2 +EBF*L13
8 +FCR
5 -DCR*L9
1 +HCR
1 -BCR*L12
1 +CXR*L5
2 +ECX
1 +ECX*L1
4 +ECX*L24
2 +ECX*L32
1 +ECX*L34
2 ear_DBF_BFX
1 ear_DBF_BFX*L26
4 ear_DBR_BRX
1 ear_DBR_BRX*L4
2 ear_DBR_BRX*L8
1 ear_DBR_BRX*L11
4 quad_DEBR_XYZ
1 quad_DEBR_XYZ*L13
4 quad_DERC_XYZ*L12
1 quad_DBFR_XYZ*L14
1 quad_DXHC_YR*L0
2 quad_DXFC_YR*L0
2 quad_DXRC_Y*L9
```

Upper bound: `-29545755157787/246610000000000`.

## Leaf II_E3H1F1mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECX HCX 1
plu HDECZ HCZ 1
plu HDEXY HXY -1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEXY FXY -1
plu FDEYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XEBCR XER 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBCR ZER 1
mesh DEH XZR DXR -1
mesh DEH XZR HXR 1
mesh DEH XZR DZR 1
mesh DEH XZR XZR 1
mesh DEH XZR HZR 1
mesh DEH XZR HXZ 1
mesh DEC XYZ EYZ 1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
```

Exclusion: `cap DEBH XZR 2`.

## Leaf II_E3H1F1pm

Box: `II3`.

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
mesh DEC XYZ EYZ 1
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E3H1F1pp

Box: `II3`.

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
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+DFCo933/125 YR
+DHCo933/125 YR
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
52 L0*L33
33 L5*L10
14 L0*L2*L7
1 L2*L5*L12
1 L5*L5*L10
1 L5*L10*L13
36 +DEB*L23
2 +DEC*L5*L15
28 +DHC*L9
41 +EBH
30 +BHF*L26
13 +HFC
30 +HFC*L27
39 +EBX*L0
39 +EBX*L5
3 +EBX*L7
10 +EBX*L29
1 -DCX*L5*L9
7 +EBZ
41 +EBZ*L28
38 +DBZ
47 +DBZ*L3
1 +DBZ*L14
30 +HFR
3 -BCR
30 -BCR*L31
10 +BXZ*L19
44 -DXZ
10 -DXZ*L3
10 +BXY
51 +BXY*L3
51 +BXY*L22
15 +ECX
1 +ECX*L3
1 +ECX*L4
4 +ECX*L6
39 +ECX*L34
43 -DHX
2 -DHX*L3
1 -DFX*L5
41 +EXZ*L19
19 +EYZ
51 +EYZ*L14
35 +DHCo933/125*L9
28 +DHCo933/125*L0*L2
4 +DHCo933/125*L0*L15
26 +DFCo933/125*L0
28 +DFCo933/125*L4
1 +DFCo933/125*L4*L4
10 quad_DEBX_Z*L2
39 quad_DEBX_Z*L7
1 quad_DEBX_Z*L23
39 quad_DEBX_Z*L34
```

Upper bound: `-4815937408071/5000000000000`.

## Leaf II_E3H2F0mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDEFY XFY 1
plu XDEFR XFR -1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDEFR YFR -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZEBCR ZER 1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
via R EHX FZ 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E3H2F0pm

Box: `II3`.

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
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DHF XYR FYR 1
mesh DHF XYR DYR -1
mesh DHC XYR DXR 1
mesh DHC XYR HXR -1
mesh DHC XYR XYR -1
mesh DHC XYR HYR -1
mesh DHC XYR HXY -1
mesh DHF XYR FXR 1
via R BFX FZ 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E3H2F0pp

Box: `II3`.

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
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E3H2F1mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEXY FXY -1
plu FDEYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDEFR XFR -1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBCR ZER 1
mesh DEC XYZ EYZ 1
mesh DBF XZR FXZ 1
mesh DBF XZR DZR 1
mesh DBF XZR FZR 1
```

### Strengthened triangle witnesses

```text
+BFYo933/125 XR
+DBHo933/125 ZR
+DBXo3 Z
+DFCo3 Y
+ECZo3 X
-DCRo933/125 XY
-DFZo3 X
```

### Mesh witnesses

```text
ear_DBC_BCX DBC XYZ
ear_DBC_CDY DBC XYZ
ear_DEC_CDY DEC XYZ
ear_DEC_DEZ DEC XYZ
ear_DEC_ECX DEC XYZ
```

### Fixed polynomial

```text
17 L1*L6
5 L6*L25
1 L6*L32
98 L12*L19
10 L0*L11*L20
22 L0*L12*L19
249 L0*L23*L23
23 L0*L23*L29
3 L1*L2*L6
2 L1*L6*L10
20 L2*L5*L10
8 L2*L16*L30
3 L3*L5*L12
54 L3*L5*L23
9 L3*L9*L26
16 L3*L9*L28
24 L3*L9*L29
27 L3*L12*L16
9 L3*L16*L20
3 L3*L19*L25
340 L3*L20*L23
2 L3*L20*L30
1 L4*L9*L29
18 L5*L10*L15
9 L5*L10*L17
9 L5*L10*L20
1 L5*L10*L26
6 L5*L10*L28
1 L5*L12*L26
7 L9*L14*L20
6 L9*L20*L29
48 L9*L22*L28
11 L9*L23*L23
7 L9*L29*L34
1 L10*L12*L19
48 L10*L20*L28
26 L11*L20*L23
7 L19*L21*L34
339 +DEC*L9
1 +DHC*L0*L9
6 +DFC*L19*L34
37 +EBH
4 +EBH*L10
7 +EBH*L12
54 +EBH*L22
9 +EBH*L25
48 +EBH*L26
25 -DCX*L6*L32
12 +BCX*L9
1 +BCY*L9
150 +EBZ
1 +EBZ*L2
54 +EBZ*L7
382 +EBZ*L11
35 +EBZ*L13
9 +EBZ*L16
9 +EBZ*L24
74 +EBZ*L27
138 +EBZ*L28
348 +EBZ*L29
8 -DCZ*L0*L9
1 -DCZ*L4*L9
3 -DCZ*L9*L11
11 -DCZ*L9*L20
15 -DCZ*L9*L23
3 -DCZ*L9*L27
107 +DBZ
519 +DBZ*L3
7 +DBZ*L8
149 +DBZ*L10
29 +DBZ*L12
42 +DBZ*L14
40 +DBZ*L18
76 +DBZ*L22
16 +DBZ*L26
11 +BCZ*L19
64 +EBR
9 +EBR*L4
54 +EBR*L7
9 +EBR*L11
1 +EBR*L13
9 +EBR*L21
3 +EBR*L28
2 -DCR*L0*L19
3 -DCR*L9*L14
2 -DCR*L9*L23
26 -BCR*L3
28 +BXZ*L19
3 -CXY*L9
115 +XYZ
8 +XYZ*L2
9 +XYZ*L4
10 +XYZ*L8
45 +XYZ*L10
8 +XYZ*L23
4 +XYZ*L27
85 -DXZ*L9
70 -DXZ*L16
96 +BXY*L3
17 +BXY*L11
96 +BXY*L22
4 +BXY*L26
9 +BXY*L30
16 -CXZ*L2
70 -CXZ*L17
37 +ECZ*L19
25 +ECX
28 +ECX*L1
10 +ECX*L5
7 +ECX*L10
27 +ECX*L16
35 +ECX*L20
48 +ECX*L22
1 +ECX*L24
3 +ECX*L26
9 +ECX*L31
55 +DHX
24 +DHX*L11
1 +DHX*L24
10 +DHX*L27
190 -DFX
19 -DFX*L0
41 -DFX*L3
9 -DFX*L4
25 -DFX*L7
3 -DFX*L11
22 -DFX*L17
102 -DFX*L21
40 -DFX*L22
1 -DFX*L27
38 -DHR*L2
10 -DHR*L15
3 -DXR*L2
1 -DXR*L5
10 -DXR*L6
1 -DXR*L23
352 +EFZ*L19
11 +BFZ*L19
11 +HXR
9 +HXR*L0
1 +HXR*L11
88 +EXZ*L19
9 +XZR*L0
59 +EYZ
9 +EYZ*L1
394 +EYZ*L10
89 +EYZ*L14
8 +EYZ*L22
5 +EYZ*L26
8 +EYZ*L30
233 +FXZ
24 +FXZ*L3
6 +FXZ*L4
3 +FXZ*L11
19 +FXZ*L18
5 +FXZ*L27
8 +FXZ*L29
3 +FXZ*L34
9 +DZR*L3
1 ear_DEC_DEZ*L3
1 ear_DEC_ECX*L19
1 ear_DEC_CDY*L5*L20
1 ear_DEC_CDY*L9*L15
6 ear_DEC_CDY*L20*L30
105 +DBHo933/125*L3
1 +DBHo933/125*L11
67 +DBHo933/125*L15
6 +DBHo933/125*L26
6 ear_DBC_BCX*L6
1 ear_DBC_CDY*L9*L34
40 +DBXo3*L6
17 +DFCo3*L20*L20
11 -DFZo3*L0
95 -DFZo3*L12
18 -DFZo3*L16
24 -DCRo933/125*L0
9 -DCRo933/125*L0*L11
1 -DCRo933/125*L0*L13
1 -DCRo933/125*L0*L14
59 -DCRo933/125*L0*L23
6 -DCRo933/125*L2*L5
5 -DCRo933/125*L3*L16
69 -DCRo933/125*L3*L20
3 -DCRo933/125*L10*L12
5 -DCRo933/125*L11*L20
1 -DCRo933/125*L17*L23
1 -DCRo933/125*L19*L20
1 +ECZo3*L5
48 +BFYo933/125
394 +BFYo933/125*L3
9 +BFYo933/125*L4
22 +BFYo933/125*L13
28 +BFYo933/125*L15
2 +BFYo933/125*L20
457 +BFYo933/125*L22
7 quad_DEBF_XZR*L2
9 quad_DEBF_XZR*L5
45 quad_DEBF_XZR*L14
224 quad_DEBF_XZR*L23
1 quad_DEBF_XZR*L29
16 quad_DRHF_X*L2
17 quad_DZFY_X*L20
19 quad_DZFY_X*L23
9 quad_DZRF_X*L2
1 quad_DZRF_X*L15
20 quad_DZXC_Y*L9
2 quad_EFCZ_X*L19
1 quad_ECYZ_X*L5
1 quad_BHCX_R*L9
```

Upper bound: `-3373246701004542643/3082625000000000000`.

## Leaf II_E3H2F1pm

Box: `II3`.

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
mesh DEC XYZ EYZ 1
mesh DBF XZR DXR -1
mesh DBF XZR FXZ 1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
mesh DBF XZR XZR 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E3H2F1ppm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR -FXZ`.

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
plu XDEFZ XEZ -1
plu XDECR XER 1
plu XDEYR XYR -1
plu XDBHR XHR 1
plu XDFZR XZR -1
plu YEBCR YER 1
plu YBCZR YZR 1
plu ZDECR ZER 1
mesh DEC XYZ EYZ 1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
mesh DHC XYR HYR -1
```

### Strengthened triangle witnesses

```text
+DEXo3 Z
+DFCo933/125 YR
+DHFo3 X
+ECZo3 X
```

### Mesh witnesses

```text
ear_DEC_DEZ DEC XYZ
ear_DEC_ECX DEC XYZ
ear_DHC_DHX DHC RYX
```

### Fixed polynomial

```text
3 L2*L5
2 L9*L22
11 L15*L20
1 L23*L30
2 L0*L1*L2
1 L2*L5*L5
5 L2*L13*L30
1 L4*L9*L15
1 +DHC*L0*L5
10 +EBH
2 +EBH*L13
7 +EBH*L21
1 +EBH*L30
1 +EBF*L5
1 +EHF*L20
1 -DCX*L4*L9
10 -DCX*L5*L23
8 +BCX*L23
6 +DBZ*L4
15 +DBZ*L15
1 +DBZ*L34
16 -DXZ
10 -DXZ*L8
2 -DXZ*L32
11 -CXZ*L9
6 +ECX
3 +ECX*L1
4 +ECX*L21
1 +ECX*L23
4 +ECX*L32
4 +DHX*L8
5 +DHX*L21
7 +DHX*L22
1 -DHZ
5 -DHZ*L13
6 -DHZ*L32
18 -FXZ
6 -FXZ*L4
1 +EXZ*L34
7 ear_DEC_DEZ*L34
5 ear_DEC_ECX*L20
1 +DEXo3*L34
5 +DHFo3*L20
2 ear_DHC_DHX*L0
3 ear_DHC_DHX*L23
3 +DFCo933/125
1 +DFCo933/125*L4
18 +DFCo933/125*L12
6 +DFCo933/125*L4*L12
9 +ECZo3*L12
8 quad_DEBX_Z*L22
2 quad_DEBX_Z*L34
1 quad_DHFC_XYR*L0
13 quad_DZHC_XYR*L0
1 quad_EBCZ_X*L9
```

Upper bound: `-53712335078671/110093750000000`.

## Leaf II_E3H2F1ppp

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY -DFX -DFZ +DHR +DFR +FXZ`.

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
mesh DEC XYZ EYZ 1
mesh DHC XYR DYR -1
mesh DHC XYR HXY -1
mesh DHC XYR HYR -1
```

### Strengthened triangle witnesses

```text
+DBXo3 Z
+DFCo933/125 YR
+DHCo4427/500 XYR
+FCZo933/125 XR
-DFZo3 X
```

### Mesh witnesses

```text
ear_DEC_CDY DEC XYZ
ear_DEC_DEZ DEC XYZ
```

### Fixed polynomial

```text
2 L0*L9
1 L4*L9
2 L12*L19
2 L0*L0*L7
6 L0*L0*L31
29 L0*L2*L5
21 L0*L5*L33
92 L0*L11*L20
159 L0*L23*L23
15 L1*L6*L10
15 L1*L6*L12
2 L2*L3*L5
67 L2*L3*L20
19 L2*L5*L5
21 L2*L5*L30
15 L2*L6*L9
3 L2*L9*L12
7 L3*L3*L34
1 L3*L12*L16
103 L3*L14*L20
3 L5*L5*L14
2 L5*L5*L33
14 L5*L10*L12
2 L6*L9*L34
3 L6*L12*L30
7 L10*L13*L33
22 +DEC*L9*L23
2 +DFC*L9*L23
83 +EBH
11 +EBH*L3
22 +EBH*L5
15 +EBH*L10
16 +EBH*L12
94 +EBH*L15
74 +EBH*L21
1 +EBH*L28
18 +EBH*L30
6 +EBC*L9
11 +EHF*L0
8 +BHF*L0
15 +BHF*L3
2 +BHF*L5
1 +EBX*L9
11 -DCX*L4*L9
1 -DCX*L9*L17
7 -DCX*L9*L31
130 +EBZ
64 +EBZ*L2
26 +EBZ*L7
52 +EBZ*L13
61 +EBZ*L15
36 +EBZ*L28
159 +EBZ*L29
48 -DCZ*L9
92 -DCZ*L0*L9
16 -DCZ*L4*L9
1 -DCZ*L9*L20
15 -DCZ*L9*L23
100 +DBZ
326 +DBZ*L3
86 +DBZ*L4
10 +DBZ*L6
66 +DBZ*L11
2 +DBZ*L12
1 -DYZ*L9
3 +XYZ*L23
177 -DXZ*L9
38 +BXY
193 +BXY*L3
1 +BXY*L6
195 +BXY*L22
8 -CXZ*L2
1 -CXZ*L10
40 +ECX
52 +ECX*L1
4 +ECX*L3
10 +ECX*L5
1 +ECX*L16
8 +ECX*L22
6 +ECX*L30
37 +DHX
95 +DHX*L2
3 +DHX*L30
45 -DFX
49 -DFX*L0
14 -DFX*L4
9 -DFX*L7
1 -DFX*L17
261 -DFX*L21
6 -DFX*L22
107 +FXZ
49 +FXZ*L0
2 +FXZ*L7
7 +FXZ*L11
3 +FXZ*L23
193 +EXZ*L19
72 +EYZ
3 +EYZ*L2
2 +EYZ*L6
193 +EYZ*L14
3 +EYZ*L22
74 ear_DEC_DEZ*L34
1 ear_DEC_CDY*L3*L34
22 +DBXo3*L6
21 +DHCo4427/500*L0*L5
72 +DHCo4427/500*L0*L15
11 +DHCo4427/500*L0*L20
16 +DHCo4427/500*L0*L23
66 +DFCo933/125*L0*L23
16 +DFCo933/125*L4*L20
1 +DFCo933/125*L20*L20
19 -DFZo3*L3
8 -DFZo3*L4
171 -DFZo3*L12
1 -DFZo3*L16
13 -DFZo3*L23
35 +FCZo933/125
3 +FCZo933/125*L3
2 +FCZo933/125*L6
5 +FCZo933/125*L10
90 +FCZo933/125*L12
8 +FCZo933/125*L15
8 +FCZo933/125*L34
98 quad_DEBX_Z*L23
86 quad_DZHC_XYR*L0
51 quad_DZFC_XYR*L0
1 quad_DZFY_X*L20
84 quad_DZXC_Y*L9
3 quad_EHCX_R*L9
15 -DCZ*+DFCo933/125*L20
2 +XYZ*+DHCo4427/500
```

Upper bound: `-57111800218696427/22750000000000000`.

## Leaf II_E3H2F2mmm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR -EFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu EDFCR ECR -1
plu EDFXR EXR -1
plu EDFYR EYR -1
plu EDFZR EZR -1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEXZ FXZ 1
plu FDEYZ FYZ 1
plu FDEZR FZR 1
plu FDBXR FXR 1
plu FDBYR FYR 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu YDBZR YZR 1
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+DFCo933/125 XY
+EBFo3 R
```

### Mesh witnesses

```text
```

### Fixed polynomial

```text
14 L1*L3
2 L1*L6
1 L6*L32
1 +DBHo933/125
2 +DFCo933/125
13 +DFCo933/125*L0
1 +DFCo933/125*L4
13 +EBFo3
1 quad_EBHF_R
```

Upper bound: `-25772881397/33875000000`.

## Leaf II_E3H2F2mmpm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR +EFR -HXY`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEXZ FXZ 1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu XDHFY XFY 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBCR ZER 1
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+BFXo3 R
+BHYo933/125 XR
+DBFo933/125 ZR
+DEYo3 Z
+DFCo933/125 XY
+ECZo3 X
-DCRo933/125 XY
```

### Mesh witnesses

```text
connect_DEC_XYZ DEC XYZ
ear_DBC_DBZ DBC XYZ
ear_DEC_CDY DEC XYZ
ear_DEC_DEZ DEC XYZ
```

### Fixed polynomial

```text
442 L5*L10
52 L6*L19
3 L6*L25
386 L6*L32
5 L9*L20
31 L9*L22
30 L12*L19
14 L19*L26
14 L0*L2*L28
1 L0*L5*L28
57 L0*L14*L29
17 L0*L15*L15
17 L0*L17*L28
7 L0*L23*L23
5 L1*L6*L12
5 L1*L12*L19
26 L1*L14*L19
325 L2*L3*L20
19 L2*L6*L25
53 L3*L5*L26
22 L3*L12*L15
63 L3*L12*L16
59 L3*L13*L20
17 L3*L20*L28
7 L3*L20*L29
1 L5*L10*L16
2 L5*L10*L22
1 L5*L13*L33
5 L5*L14*L16
4 L5*L14*L22
116 L5*L15*L29
23 L5*L22*L22
14 L5*L28*L29
1 L6*L10*L13
131 L6*L13*L29
1 L6*L13*L30
50 L6*L16*L17
6 L9*L12*L29
76 L9*L14*L16
6 L10*L10*L21
66 L10*L12*L33
55 L10*L13*L20
84 L10*L15*L20
30 L10*L16*L23
2 L10*L21*L33
1 L12*L19*L32
48 L12*L19*L34
82 L13*L23*L23
6 L13*L28*L33
6 L14*L28*L30
28 L15*L16*L23
53 L15*L16*L29
62 L15*L17*L17
82 L15*L20*L29
114 L15*L23*L30
50 L17*L19*L34
30 L20*L28*L33
58 +DEB*L23
301 +DEB*L29
308 +DEH*L19
28 +DHC*L9
1 +DHC*L9*L14
57 +DHC*L9*L17
1 +DFC*L9*L11
8 +DFC*L9*L19
8 +DFC*L9*L22
342 +HFC
8 +HFC*L22
94 +HFC*L27
66 +HFC*L28
1 +DEX*L19
46 -DCX*L9*L17
49 -DCX*L9*L20
66 -DCX*L10*L30
127 +DEZ*L5
477 +EBZ
317 +EBZ*L2
225 +EBZ*L7
45 +EBZ*L21
88 +EBZ*L28
7 +EBZ*L29
10 -DCZ*L5*L28
1 -DCZ*L9*L12
683 +DBZ*L3
45 +DBZ*L20
83 +DBZ*L28
280 +EBR
83 +EBR*L7
197 +HFR
20 +FCR*L6
205 -BCR*L3
104 -BCR*L33
22 +BFR*L6
57 +BXZ*L19
301 +XYZ
20 +XYZ*L2
14 +XYZ*L7
23 +XYZ*L14
45 +XYZ*L17
82 +XYZ*L29
35 +XYZ*L31
6 +XYZ*L32
43 +XYZ*L34
73 +BXY*L3
17 +BXY*L15
67 +BXY*L17
228 +BXY*L22
48 +CYZ*L0
20 +CYZ*L3
95 +CYZ*L7
5 +CYZ*L11
45 +CYZ*L13
111 +CYZ*L14
45 +CYZ*L16
45 +CYZ*L20
82 +CYZ*L22
144 +DXY*L23
46 +DXY*L29
43 -CXZ*L5
63 +ECX
124 +ECX*L16
100 +ECX*L21
19 +ECX*L22
22 +ECX*L28
1 +DHX*L9
1 -DHZ*L19
12 +DFX
45 +DFX*L7
6 +DFX*L14
129 +DFX*L16
55 +DFX*L21
107 +DFX*L23
7 +DFX*L29
66 +DFX*L31
103 -DHR*L2
22 -DFR*L6
113 -HXY
1 -HXY*L0
6 -HXY*L14
50 -HXY*L17
119 -HXY*L23
140 -HXY*L29
1 +HCY*L9
17 +EXZ*L19
1 -FXY*L5
82 +EYZ*L6
40 ear_DEC_DEZ*L1
8 ear_DEC_DEZ*L2
85 ear_DEC_DEZ*L12
51 ear_DEC_DEZ*L14
41 ear_DEC_DEZ*L19
6 ear_DEC_DEZ*L32
71 ear_DEC_CDY*L5
62 ear_DEC_CDY*L13*L17
53 ear_DEC_CDY*L15*L17
13 connect_DEC_XYZ*L19
45 connect_DEC_XYZ*L20
226 +DEYo3*L6
6 +DBFo933/125*L6
17 ear_DBC_DBZ*L19
35 +DFCo933/125*L0*L28
101 -DCRo933/125*L30
101 -DCRo933/125*L0*L31
84 +ECZo3*L5
249 +BHYo933/125
308 +BHYo933/125*L3
72 +BHYo933/125*L11
4 +BHYo933/125*L12
44 +BHYo933/125*L14
225 +BHYo933/125*L22
49 +BHYo933/125*L26
44 +BFXo3*L6
6 quad_DZHY_X*L10
31 quad_DZHY_X*L19
23 quad_DZHY_X*L23
8 quad_DZFY_X*L33
74 quad_DRFY_X*L6
48 quad_DZXC_Y*L0
1 quad_DZXC_Y*L3
23 quad_DZXC_Y*L15
45 quad_DZXC_Y*L20
79 quad_DZXC_Y*L33
43 quad_ECYZ_X*L5
6 quad_ECYZ_X*L9
35 quad_BHXZ_R*L19
94 quad_BHYZ_XR*L19
59 quad_BFCZ_XR*L19
13 quad_BFXZ_R*L19
108 +DEB*-DCRo933/125
59 +DHC*-DCRo933/125*L0
144 +EBC*-DCRo933/125
35 +BXY*+DFCo933/125
94 -DHR*+DFCo933/125
49 ear_DEC_CDY*-DCRo933/125*L34
3 quad_DEBF_ZR*-DCRo933/125
```

Upper bound: `-91037593641266253/67750000000000000`.

## Leaf II_E3H2F2mmpp

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DFY +DFX -DFZ -DHR -DFR +EFR +HXY`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDECZ HCZ 1
plu HDEXZ HXZ 1
plu HDEXR HXR 1
plu HDEYZ HYZ 1
plu HDEYR HYR 1
plu FDEXZ FXZ 1
plu FDEXR FXR 1
plu FDEYZ FYZ 1
plu FDEYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu XDHYR XYR 1
plu YDEBR YER 1
plu YDBZR YZR 1
plu ZEBCR ZER 1
mesh DEC XYZ EYZ 1
```

### Strengthened triangle witnesses

```text
+BCYo3 X
+DBHo933/125 ZR
+DEHo933/125 ZR
+DEYo3 Z
+DFCo933/125 XY
+DHCo933/125 XY
+HCYo3 X
-DCRo933/125 XY
```

### Mesh witnesses

```text
ear_DBC_BCX DBC XYZ
ear_DEC_CDY DEC XYZ
ear_DEC_ECX DEC XYZ
```

### Fixed polynomial

```text
6 L0*L15
27 L2*L28
85 L12*L19
4 L16*L33
9 L17*L19
1 L4*L6*L28
1 L6*L6*L17
1 L6*L24*L33
11 L8*L12*L19
13 L9*L15*L17
56 L15*L17*L17
2 +DEC*L6*L30
4 +DBF*L19
1 +DHC*L0*L15
33 +EBH
6 +EBH*L7
1 +HFC*L14
1 +HFC*L27
26 +BCX*L2
1 +EBZ
2 +EBR
1 +EBR*L7
1 +HFR
1 -DCR*L6*L30
1 -BCR*L3
1 -BCR*L33
39 +BXY*L6
111 +DXY
70 +DXY*L7
12 +DXY*L8
31 +DXY*L17
47 +ECX
14 +ECX*L7
1 +ECX*L9
31 +ECX*L16
27 +ECX*L18
19 +DHX*L19
26 +DFX*L16
1 -DHR*L2
1 -DHR*L6
70 +HXY
33 +HXY*L3
1 +HXY*L6
10 +EXY*L6
4 +DEHo933/125*L16
33 +DEHo933/125*L28
9 ear_DEC_ECX*L6
7 ear_DEC_ECX*L19
2 ear_DEC_CDY*L6
6 ear_DEC_CDY*L0*L14
1 ear_DEC_CDY*L9*L12
31 ear_DEC_CDY*L12*L16
4 +DEYo3*L30
7 +DBHo933/125
41 +DBHo933/125*L3
2 +DBHo933/125*L6
1 +DBHo933/125*L11
1 +DBHo933/125*L26
37 +DBHo933/125*L28
85 ear_DBC_BCX*L19
5 +DHCo933/125*L0
4 +DHCo933/125*L2*L5
3 +DFCo933/125*L0
1 -DCRo933/125*L0
1 -DCRo933/125*L2*L5
60 +BCYo3*L15
18 +HCYo3*L15
1 quad_DEBY_Z*L14
4 quad_DEBY_Z*L33
33 quad_EBCY_X*L15
4 quad_BHCY_XR*L15
1 quad_HFCY_X*L15
20 +DEB*+DHCo933/125
4 +DHC*+DHCo933/125*L0
1 +DHC*+DFCo933/125*L0
1 +EBC*-DCRo933/125
1 -DCR*+DHCo933/125*L0
1 -DHR*+DFCo933/125
1 quad_DEBF_ZR*-DCRo933/125
10 quad_DEBY_Z*+DHCo933/125
```

Upper bound: `-37352895609503/12500000000000`.

## Leaf II_E3H2F2pm

Box: `II3`.

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
mesh DEC XYZ EYZ 1
```

Exclusion: `nomesh DHC XYR`.

## Leaf II_E3H2F2pp

Box: `II3`.

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
mesh DEC XYZ EYZ 1
mesh DHC XYR DXR 1
mesh DHC XYR HXR -1
mesh DHC XYR XYR -1
mesh DHC XYR DYR -1
mesh DHC XYR HYR -1
mesh DHC XYR HXY -1
mesh DFC XYR FYR -1
mesh DFC XYR FXY -1
mesh DFC XYR FXR -1
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
+DERo933/125 XZ
+DFCo4427/500 XYR
+DFYo3 X
-DCRo3 Y
```

### Mesh witnesses

```text
connect_DEC_XYZ DEC XYZ
connect_DFC_RYX DFC RYX
ear_DBC_BCX DBC XYZ
ear_DEC_CDY DEC XYZ
ear_DEC_DEZ DEC XYZ
ear_DFC_CDY DFC RYX
ear_DFC_DFX DFC RYX
ear_DFC_FCR DFC RYX
ear_DHC_CDY DHC RYX
```

### Fixed polynomial

```text
68 L1*L6
1 L2*L9
26 L5*L9
281 L5*L10
41 L5*L33
285 L6*L32
23 L9*L25
68 L9*L26
1 L10*L19
65 L10*L30
15 L10*L33
77 L0*L2*L5
130 L0*L2*L17
212 L0*L2*L23
158 L0*L2*L29
54 L0*L14*L23
29 L0*L14*L29
3 L0*L16*L23
255 L0*L23*L23
111 L0*L23*L29
86 L0*L24*L33
142 L1*L2*L6
33 L1*L5*L6
21 L1*L6*L28
9 L1*L6*L29
28 L1*L6*L30
7 L1*L19*L19
252 L2*L3*L20
49 L2*L5*L5
130 L2*L5*L17
28 L2*L5*L30
38 L3*L3*L13
19 L3*L5*L23
38 L3*L13*L23
365 L3*L20*L29
43 L3*L25*L33
1 L4*L5*L33
71 L4*L19*L26
11 L5*L10*L16
1 L5*L10*L24
15 L5*L15*L23
26 L5*L15*L29
10 L5*L28*L29
36 L6*L13*L29
10 L6*L21*L28
18 L6*L24*L30
31 L6*L24*L32
16 L6*L25*L28
1 L6*L30*L34
308 L8*L19*L34
35 L9*L14*L26
51 L9*L14*L33
112 L10*L12*L33
19 L10*L15*L25
72 L10*L24*L33
119 L13*L19*L26
278 L13*L23*L23
278 L15*L16*L23
138 L15*L20*L29
140 L16*L23*L29
79 L19*L24*L28
51 L19*L26*L34
140 L20*L28*L29
72 +DHC*L9*L26
138 +EBH
49 +EBH*L5
345 +EBH*L13
130 +EBH*L17
19 +EBH*L22
28 +EBH*L30
28 +EBC*L9
1 +BHF*L5
345 +BHF*L12
41 +BHF*L16
129 +BHF*L24
90 +BHF*L26
283 -DCX*L1*L6
38 -DCX*L2*L9
61 -DCX*L10*L30
37 +BCX*L9
293 +EBZ
407 +EBZ*L2
142 +EBZ*L7
165 +EBZ*L23
103 +EBZ*L28
200 +EBZ*L29
1 -DCZ*L0*L9
383 +DBZ*L3
114 +DBZ*L6
285 +DBZ*L15
122 +DBZ*L28
365 +HFR
1 +HFR*L4
61 +HFR*L15
30 +HFR*L17
90 +HFR*L27
44 +HFR*L28
1 +HFR*L34
73 -DCR*L6*L25
17 -DCR*L9*L26
333 -DCR*L12*L19
190 +HCR*L15
5 +HCR*L16
17 +HCR*L26
207 +HCR*L28
17 +HCR*L34
1 -BCR*L5
18 -BCR*L33
86 +BXZ*L19
401 +XYZ
103 +XYZ*L2
6 +XYZ*L4
274 +XYZ*L29
6 -DXZ*L5
170 +BXY
103 +BXY*L3
465 +BXY*L7
308 +BXY*L8
11 +BXY*L11
594 +BXY*L22
66 +BXY*L27
3 +CYZ*L0
103 +CYZ*L3
6 +CYZ*L5
31 +CYZ*L7
86 +CYZ*L14
134 +CYZ*L22
8 +DXY*L23
6 +CXR*L5
93 +ECZ*L19
160 +ECX
38 +ECX*L2
38 +ECX*L11
141 +ECX*L22
345 +ECX*L34
37 +DHX*L9
64 +DFX
38 +DFX*L3
262 +DFX*L26
112 +DFX*L31
345 +DFX*L34
2 +DHR*L9
91 +DXR*L10
15 -HXR*L19
202 -XYR
6 -XYR*L4
450 -XYR*L7
223 -XYR*L18
33 -XYR*L31
54 -DYR*L5
74 -DYR*L11
158 -DYR*L14
10 -DYR*L27
78 -DYR*L30
142 -HXY
308 -HXY*L8
44 -HXY*L11
623 -HXY*L26
52 -HXY*L29
94 ear_DEC_DEZ*L6
155 ear_DEC_CDY*L2*L20
20 connect_DEC_XYZ*L6
43 +DERo933/125*L33
161 ear_DBC_BCX*L6
72 +DBRo933/125*L33
16 ear_DHC_CDY*L0*L5
78 ear_DHC_CDY*L9*L24
43 +DFCo4427/500*L0*L25
11 +DFCo4427/500*L0*L28
116 +DFCo4427/500*L9*L27
30 +DFCo4427/500*L17*L25
80 +DFCo4427/500*L25*L27
41 ear_DFC_DFX*L6
1 ear_DFC_FCR*L0
74 ear_DFC_FCR*L33
1 ear_DFC_CDY*L0*L20
126 ear_DFC_CDY*L5*L25
10 ear_DFC_CDY*L25*L27
3 connect_DFC_RYX*L6
44 +DFYo3*L6
41 -DCRo3*L5
66 -DCRo3*L0*L28
18 -DCRo3*L4*L5
43 -DCRo3*L5*L17
138 -DCRo3*L13*L33
122 -DCRo3*L14*L30
452 -DCRo3*L15*L17
10 -DCRo3*L17*L27
79 -DCRo3*L17*L28
108 -DCRo3*L17*L30
73 -DCRo3*L27*L30
43 quad_DEBH_Z*L19
187 quad_DBHR_XZ*L19
1 quad_DZFC_XYR*L0
42 quad_DFRY_X*L10
44 quad_DFRY_X*L19
5 quad_DZXC_Y*L6
4 quad_DZXC_Y*L29
57 quad_BHCX_R*L19
100 quad_BHCZ_XR*L19
42 quad_BHYZ_X*L19
7 quad_BHRY_X*L19
16 quad_BRCY_X*L5
51 quad_BRYZ_X*L19
42 quad_HRYZ_X*L19
```

Upper bound: `-6504413638266154341/6165250000000000000`.

## Leaf II_E3H3F0mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ -DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDEFY XFY 1
plu XDEFR XFR -1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu XDBHZ XHZ -1
plu YDEBR YER 1
plu YDEFR YFR -1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu YDFCZ YFZ -1
plu ZDEBR ZER 1
plu ZDEFR ZFR -1
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DHF XYZ HXY 1
mesh DRF XYZ XYR 1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E3H3F0pm

Box: `II3`.

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
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
```

Exclusion: `four DBF XYZR`.

## Leaf II_E3H3F0pp

Box: `II3`.

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
mesh DEF XYZ EYZ 1
mesh DEF XYZ FXZ -1
mesh DER XYZ XZR -1
mesh DHF XYZ HXY 1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E3H3F1mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY -DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
plu FDEXY FXY -1
plu FDEYZ FYZ 1
plu FDBYR FYR 1
plu CDEBR CER 1
plu CDEHX CHX -1
plu CDEHY CHY -1
plu CDEHZ CHZ -1
plu XDEBY XEY -1
plu XDEBR XER 1
plu XDEFR XFR -1
plu XDECZ XEZ -1
plu XDEZR XZR 1
plu XDBHZ XHZ -1
plu YDEBR YER 1
plu YDBHZ YHZ -1
plu YDBZR YZR 1
plu ZDEBR ZER 1
plu ZDEFR ZFR -1
mesh DEC XYZ EYZ 1
```

Exclusion: `nomesh DBF XZR`.

## Leaf II_E3H3F1pm

Box: `II3`.

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
mesh DEC XYZ EYZ 1
mesh DBF XZR DXR -1
mesh DBF XZR FXZ 1
mesh DBF XZR DZR 1
mesh DBF XZR FXR 1
mesh DBF XZR FZR 1
mesh DBF XZR XZR 1
mesh DHF XZR HXR -1
mesh DHF XZR HZR -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E3H3F1pp

Box: `II3`.

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
mesh DEC XYZ EYZ 1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E3H3F2mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX -DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
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
plu ZDEBR ZER 1
plu ZDEFR ZFR -1
mesh DEC XYZ EYZ 1
mesh DHC XYZ HXY 1
mesh DRC XYZ XYR 1
```

### Strengthened triangle witnesses

```text
+DEHo3 R
+DHCo4427/500 XYZ
-DCRo4427/500 XYZ
```

### Mesh witnesses

```text
ear_DBC_DBZ DBC XYZ
ear_DEC_DEZ DEC XYZ
ear_DRC_RCX DRC XYZ
```

### Fixed polynomial

```text
2 L1*L6
3 L2*L13
4 L3*L24
3 L4*L23
2 L13*L23
4 L15*L24
2 +EBH
3 +EBH*L27
7 +EBR
3 +BHR
3 -DCR*L2*L5
3 -BCR*L3
3 -BCR*L6
4 +ECX
2 +ECX*L21
4 +DHZ
1 +DEHo3*L23
3 ear_DEC_DEZ
2 ear_DEC_DEZ*L12
3 ear_DBC_DBZ*L2
1 +DHCo4427/500*L0
5 -DCRo4427/500*L0
3 -DCRo4427/500*L4
4 ear_DRC_RCX
1 quad_DBHZ_R*L3
1 quad_DBHZ_R*L6
2 quad_DZXC_Y
1 quad_EBHZ_R*L7
```

Upper bound: `-21380748297/62500000000`.

## Leaf II_E3H3F2pm

Box: `II3`.

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
mesh DEC XYZ EYZ 1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E3H3F2pp

Box: `II3`.

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
mesh DEC XYZ EYZ 1
mesh DFC XYR DXR 1
mesh DFC XYR FYR -1
mesh DFC XYR XYR -1
mesh DFC XYR FXY -1
mesh DFC XYR DYR -1
mesh DFC XYR FXR -1
line DEBHFC XR H -1
line DEBHFC YR H -1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E3H3F3mm

Box: `II3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DFY +DFX +DFZ -DHR -DFR`.

### Sign trace

```text
plu DEHXR DXR -1
plu DEHYR DYR -1
plu DEHZR DZR -1
plu EDFCX EFX 1
plu EDFCY EFY 1
plu EDFCZ EFZ 1
plu BDECR BDR -1
plu BDFCX BFX 1
plu BDFCY BFY 1
plu BDFCZ BFZ 1
plu HDEXR HXR 1
plu HDEYR HYR 1
plu HDEZR HZR 1
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
9 L2*L13
9 -DCX*L8
9 +ECX
9 ear_DFC_FCX
```

Upper bound: `-381393/500000`.

## Leaf II_E3H3F3pm

Box: `II3`.

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
mesh DEC XYZ EYZ 1
mesh DFC XYZ FXY 1
mesh DRC XYZ XYR 1
line DEBHFC XY H 1
```

Exclusion: `four DHC XYZR`.

## Leaf II_E3H3F3pp

Box: `II3`.

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
mesh DEC XYZ EYZ 1
```

Exclusion: `four DHC XYZR`.
