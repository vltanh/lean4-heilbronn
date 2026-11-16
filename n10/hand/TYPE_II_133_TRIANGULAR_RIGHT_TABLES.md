# Fixed geometry and polynomial tables for the triangular-right (1,3,3) child

This is the complete finite appendix to [TYPE_II_133_TRIANGULAR_RIGHT.md](TYPE_II_133_TRIANGULAR_RIGHT.md). All labels, boxes, factors, inference rules and the exact upper-bound formula are defined there. No discovery output is needed to read or check these fixed tables.

## Binary refinement table

Each listed node is split by the sign of the displayed actual determinant. Its negative and positive children append `m` and `p`, respectively. The 24 initial roots are defined in the main proof. Every other node is reached by exactly one of these binary splits.

```text
E1H1p EHX
E1H1pp EHZ
E1H2m EHZ
E1H2mp EHR
E1H2mpm EXZ
E1H2p EHZ
E2H1p EHX
E2H1pp HYR
E2H1ppm EXR
E2H1ppmm EYZ
E2H1ppmmp HXZ
E2H1ppmp EYZ
E2H2m EHR
E2H2mp HZR
E2H2mpp EYZ
E2H2mppp HXY
E2H2mpppm DZR
E2H2mpppmp XYR
E2H2p EXR
E2H2pm EYZ
E2H2pmp XZR
E3H1p HYR
E3H1pm HXZ
E3H2m HZR
E3H2mp HXY
E3H2mpm DZR
E3H2mpmp XYR
E3H2p XZR
```

## Leaf E1H0m

Box: `G`.

Assumptions: `+ECY -ECZ -ECX -DHY -DHX -DHZ -DHR`.

### Sign trace

```text
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P BDECR -BDR
P CDEBR +CER
P XDBHY +XHY
P YDEHZ -YHZ
P YEBCR +YER
P YEBZR +YZR
```

Exclusion: `four DBH XYZR`.

## Leaf E1H0p

Box: `G`.

Assumptions: `+ECY -ECZ -ECX -DHY -DHX -DHZ +DHR`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHYR +DYR
P DEHZR +DZR
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P HDEBR -HER
P HDEYR -HYR
P HDBXR -HXR
P HDBZR -HZR
P CDEBR +CER
P XDBHY +XHY
P XDBYR -XYR
P YDEHZ -YHZ
P YDECR +YER
P YDEZR +YZR
```

### Strengthened triangle witnesses

```text
+EBCo933/125 XZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
6 L7*L12
4 +ECY*L1
6 -DHY
2 +BHCo933/125
1 +EBCo933/125
3 +EBCo933/125*L0
1 +EBCo933/125*L13
4 quad_DEBY_Z
3 quad_DEBY_Z*L1
```

Upper bound: `-14349696615399/15625000000000`.

## Leaf E1H1m

Box: `G`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ -DHR`.

### Sign trace

```text
P DEHYR -DYR
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P BDECR -BDR
P HDBXY -HXY
P HDBYZ +HYZ
P HDBYR +HYR
P CDEBR +CER
P YDEBR +YER
P YDBZR +YZR
```

### Strengthened triangle witnesses

```text
+EBCo933/125 XZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
10 L0*L7
7 +DEB*L2
3 +DEC*L1*L3
1 +BHCo933/125
2 +BHCo933/125*L0
2 +EBCo933/125
2 +EBCo933/125*L0
11 quad_DEBH_XZR
2 quad_DEBH_XZR*L1
```

Upper bound: `-535975970944893/710937500000000`.

## Leaf E1H1pm

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ +DHR -EHX`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHXY +EXY
P EDCYZ -EYZ
P HDEBR -HER
P HDBXY -HXY
P HDBXR -HXR
P HDBYZ +HYZ
P HDBZR -HZR
P CDEBR +CER
P XDEHR -XER
P XDBYR -XYR
P YEBCR +YER
P YEBZR +YZR
```

### Strengthened triangle witnesses

```text
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
4 L7*L8
6 +BCX
4 +BCX*L6
8 -EHX
2 +BHCo933/125
4 +BHCo933/125*L10
10 quad_DEBX_Z
```

Upper bound: `-1880550169/1953125000`.

## Leaf E1H1ppm

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ +DHR +EHX -EHZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHXZ -EXZ
P EDHYZ -EYZ
P EDCXY +EXY
P HDEBR -HER
P HDEXY -HXY
P HDEXZ +HXZ
P HDEXR -HXR
P HDBYZ +HYZ
P HDBZR -HZR
P CDEBR +CER
P XDBYR -XYR
P YEBCR +YER
P YEBZR +YZR
P ZDEHR -ZER
```

### Strengthened triangle witnesses

```text
+EBCo933/125 XZ
+EBXo3 Z
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
53 L0*L7
58 +DEB
98 +DEB*L2
21 +DEC*L5
16 +BCX
55 +BCX*L1
26 +BCX*L2
46 +BCX*L6
67 -DHX
21 +EHX
24 +BHCo933/125
46 +BHCo933/125*L10
55 +EBCo933/125*L0
103 +EBXo3
55 quad_DEBX_Z*L1
98 quad_DEBX_Z*L3
```

Upper bound: `-2165052805589/3125000000000`.

## Leaf E1H1ppp

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY -DHX -DHZ +DHR +EHX +EHZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P HDEBR -HER
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDBYR -XYR
P YEBCR +YER
P YEBZR +YZR
M EHC XZR -EZR
M EHC XZR -HXZ
M EHC XZR +EXR
M EHC XZR +EXZ
M EHC XZR -XZR
```

### Strengthened triangle witnesses

```text
+DEHo933/125 XZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
4 +DEHo933/125
```

Upper bound: `-15822/15625`.

## Leaf E1H2mm

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DHR -EHZ`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHYZ -EYZ
P EDCXY +EXY
P BDECR -BDR
P HDEBX -HEX
P HDBXZ +HXZ
P HDBXR +HXR
P HDBYZ +HYZ
P HDBYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDBZR +XZR
P YDEBR +YER
P YDBZR +YZR
P ZDEHX -ZEX
```

### Strengthened triangle witnesses

```text
+BCZo3 X
+DBHo933/125 ZR
+EBCo933/125 XZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
29 L1*L6
54 L3*L3
3 L1*L1*L19
32 L1*L3*L17
2 L1*L6*L9
4 L2*L5*L9
2 L2*L5*L10
2 L3*L6*L9
21 L3*L8*L18
20 +DEC*L1*L6
9 +DEC*L5*L8
3 -DCX*L1*L3
39 -DCX*L5*L19
2 +DBX*L5
58 +BCX
2 +BCX*L0
3 +BCX*L3
28 +BCX*L7
32 +BCX*L19
123 +DEZ
361 +DEZ*L2
15 +DEZ*L4
5 -DCZ*L5
7 -DCZ*L1*L1
10 +DBZ*L0
14 +DBZ*L2
20 +DBZ*L7
65 +DBZ*L11
94 -CXZ
32 -CXZ*L4
15 -ECZ*L5
20 -ECX*L5
2 +DHX*L0
2 +DHX*L2
18 +DHX*L18
42 -EHZ
32 -EHZ*L9
12 +BHCo933/125*L3
28 +BHCo933/125*L11
32 +BHCo933/125*L16
4 +BHCo933/125*L19
12 +DBHo933/125*L3
4 +EBCo933/125*L7
7 +BCZo3*L3
13 +BCZo3*L6
10 quad_EBHX_ZR
32 quad_EBHX_ZR*L17
21 quad_EBHX_ZR*L18
```

Upper bound: `-4601160420849/7812500000000`.

## Leaf E1H2mpmm

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DHR +EHZ -EHR -EXZ`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCR -ECR
P EDHXZ +EHX
P EDHXR -EXR
P EDHYR -EYR
P EDHZR -EZR
P EDCXY +EXY
P EDCYZ -EYZ
P BDECR -BDR
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR +HZR
P HDBXR +HXR
P HDBYR +HYR
P XDBZR +XZR
P YDBZR +YZR
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
8 L1*L6
1 L1*L17
5 L2*L15
17 L3*L5
5 L5*L18
3 L9*L15
27 L11*L11
1 L15*L17
20 L0*L9*L11
4 L0*L15*L18
13 L1*L2*L18
9 L1*L8*L18
5 L1*L10*L25
4 L2*L2*L17
44 L2*L9*L9
21 L2*L9*L11
45 L2*L9*L16
3 L2*L9*L18
35 L2*L9*L24
44 L2*L11*L16
22 L2*L16*L24
14 L3*L3*L17
1 L3*L5*L8
44 L9*L10*L15
31 L9*L15*L18
19 L10*L13*L18
44 L11*L11*L13
12 L11*L13*L19
21 +DEC*L1*L10
12 +DEC*L1*L25
13 +EBC*L15
18 -DCX*L1*L2
10 -DCX*L1*L17
40 +BCX*L2
20 +BCX*L8
19 +BCX*L17
49 +BCX*L19
26 +BCX*L25
13 +DEZ*L24
6 +EBZ*L6
18 -DCZ*L3*L5
1 -DCZ*L5*L9
45 +DBZ*L11
4 +DBZ*L24
9 -DXZ*L1
44 +DXY*L11
25 +BYZ*L3
31 +BYZ*L10
14 -CXZ
3 -CXZ*L3
44 -CXZ*L8
56 -CXZ*L10
3 -CXZ*L12
4 -CXZ*L15
9 +ECY
3 +ECY*L8
3 +ECY*L17
25 +ECY*L18
29 +EHZ
18 +EHZ*L2
1 +EHZ*L8
68 -EXZ
44 -EXZ*L9
21 -EXZ*L11
3 -EXZ*L13
35 -EXZ*L24
4 +BHCo933/125*L19
6 +DBHo933/125*L2
22 +DBHo933/125*L19
```

Upper bound: `-25905517543/62500000000`.

## Leaf E1H2mpmp

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DHR +EHZ -EHR +EXZ`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCR -ECR
P EDHYR -EYR
P EDHZR -EZR
P EDCXY +EXY
P EDCYZ -EYZ
P BDECR -BDR
P HDEBX -HEX
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR +HZR
P HDBXR +HXR
P HDBYR +HYR
P XDEBR +XER
P XDEZR +XZR
P YDBZR +YZR
```

### Strengthened triangle witnesses

```text
+DEXo3 Z
-ECXo3 Z
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
5 L2*L17
8 -DCX*L1
8 +BCX
5 -DXZ
3 -ECZ
8 -ECZ*L8
13 +EXZ
9 +DEXo3
8 -ECXo3*L17
1 quad_DEXC_YZ
```

Upper bound: `-43378373/62500000`.

## Leaf E1H2mpp

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ -DHR +EHZ +EHR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P BDECR -BDR
P HDEBX -HEX
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDBZR +XZR
P YDEBR +YER
P YDBZR +YZR
```

Exclusion: `nomesh EHC XZR`.

## Leaf E1H2pm

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DHR -EHZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCY +EHY
P EDHYZ -EYZ
P EDCXY +EXY
P HDEBX -HEX
P HDEBR -HER
P HDBXZ +HXZ
P HDBYZ +HYZ
P HDBZR -HZR
P CDEBR +CER
P YEBCR +YER
P YEBZR +YZR
P ZDEHX -ZEX
P ZDEHR -ZER
M DHC XYR -HXR
M DHC XYR -HXY
M DHC XYR -XYR
M DHC XYR -DYR
M DHC XYR +DXR
M DHC XYR -HYR
```

### Strengthened triangle witnesses

```text
+BCZo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
23 L1*L3
48 L1*L6
56 L2*L5
2 L5*L10
3 L15*L18
70 -DCX*L5*L19
77 +BCX
21 +BCX*L7
55 +BCX*L19
176 +DEZ
16 +DEZ*L4
3 +EBZ*L15
250 -DCZ*L1*L3
174 +DBZ*L2
64 +DBZ*L7
122 +DBZ*L11
3 +DBZ*L24
23 -DXZ*L5
1 +BYZ
3 +BYZ*L3
123 -CXZ
23 -CXZ*L4
1 +ECY
3 +ECY*L18
16 -ECZ*L5
21 +DHX
70 +DHX*L18
72 -EHZ
8 +BHCo933/125
21 +BHCo933/125*L11
40 +BHCo933/125*L18
73 +BCZo3*L3
8 +BCZo3*L6
```

Upper bound: `-74314712889/125000000000`.

## Leaf E1H2pp

Box: `E1`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX -DHZ +DHR +EHZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P HDEBX -HEX
P HDEBR -HER
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P YEBCR +YER
P YEBZR +YZR
M DHC XYR -HXR
M DHC XYR -HXY
M DHC XYR -XYR
M DHC XYR -DYR
M DHC XYR +DXR
M DHC XYR -HYR
```

Exclusion: `nomesh EHC XZR`.

## Leaf E1H3m

Box: `G`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ -DHR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P DEHZR -DZR
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P BDECR -BDR
P HDEBX -HEX
P HDEBZ -HEZ
P HDBXR +HXR
P HDBYR +HYR
P HDBZR +HZR
P CDEBR +CER
P XDEBR +XER
P XDBHZ -XHZ
P XDBZR +XZR
P YDEBR +YER
P YDBHZ -YHZ
P YDBZR +YZR
P ZDEBR +ZER
```

### Strengthened triangle witnesses

```text
+DHXo3 Z
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
11 L1*L6
14 L6*L19
9 L9*L19
3 L11*L19
2 L1*L10*L19
7 L1*L11*L18
5 +BCX
4 -DXZ
3 -DXZ*L4
1 -ECZ
4 -ECZ*L16
17 +DHZ
5 +DHZ*L8
6 +BHCo933/125
16 +BHCo933/125*L19
13 ear_DBC_DBZ
9 ear_DBC_DBZ*L10
5 +DHXo3*L17
2 quad_DEZC_Y
4 quad_DEZC_Y*L17
9 quad_DZXC_Y
3 quad_DZXC_Y*L4
```

Upper bound: `-1043704049/6250000000`.

## Leaf E1H3p

Box: `G`.

Assumptions: `+ECY -ECZ -ECX +DHY +DHX +DHZ +DHR`.

### Sign trace

```text
P DEBHR +DBR
P EDHCY +EHY
P EDCXY +EXY
P EDCYZ -EYZ
P HDEBX -HEX
P HDEBZ -HEZ
P HDEBR -HER
P CDEBR +CER
P XDBHZ -XHZ
P YDBHZ -YHZ
P YEBCR +YER
P YEBZR +YZR
```

Exclusion: `four DHC XYZR`.

## Leaf E2H0m

Box: `G`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ -DHR`.

### Sign trace

```text
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P CDEBR +CER
P XDBHY +XHY
P YDHCZ -YHZ
P YEBCR +YER
P YBCZR +YZR
P ZEBCR +ZER
```

Exclusion: `four DBH XYZR`.

## Leaf E2H0p

Box: `G`.

Assumptions: `+ECY +ECZ -ECX -DHY -DHX -DHZ +DHR`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHYR +DYR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P HDEBR -HER
P HDEYR -HYR
P HDEZR -HZR
P HDBXR -HXR
P CDEBR +CER
P XDBHY +XHY
P XDBYR -XYR
P YDECR +YER
P YDHCZ -YHZ
P YDCZR +YZR
P ZDECR +ZER
```

### Strengthened triangle witnesses

```text
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
4 L0*L7
12 L7*L12
12 -DHY
4 +BHCo933/125
4 ear_DBC_CDY*L1
4 quad_DEBY_Z
```

Upper bound: `-13902429241/15625000000`.

## Leaf E2H1m

Box: `G`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ -DHR`.

### Sign trace

```text
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P HDEYZ +HYZ
P HDBXY -HXY
P HDBYR +HYR
P CDEBR +CER
P YDEBR +YER
P YDBZR +YZR
P ZEBCR +ZER
```

### Strengthened triangle witnesses

```text
+DBHo4427/500 XZR
+EBCo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
11 +DEC*L3*L5
2 +DHC*L0*L2
73 +BHCo933/125*L0
18 +BHCo933/125*L3
19 +DBHo4427/500*L1
7 +EBCo3
54 +EBCo3*L0
2 +EBCo3*L3
18 +EBCo3*L7
63 quad_DEBH_XZR
54 quad_DEBH_XZR*L1
2 quad_DEBH_XZR*L2
```

Upper bound: `-581160002627/812500000000`.

## Leaf E2H1pm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DHR -EHX`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDHXY +EXY
P EDHXZ +EXZ
P HDEBR -HER
P HDEXZ -HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P HDBXY -HXY
P HDBXR -HXR
P CDEBR +CER
P XDEHR -XER
P XDEZR -XZR
P XDBYR -XYR
P YEBCR +YER
P YBCZR +YZR
P ZDECR +ZER
```

### Strengthened triangle witnesses

```text
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
2 L7*L8
1 +BCX
6 -EHX
2 +BHCo933/125
4 quad_DEBX_Z*L7
```

Upper bound: `-3823843559831/3906250000000`.

## Leaf E2H1ppmmm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DHR +EHX -HYR -EXR -EYZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P EDCXR -ECR
P EDCYR -EYR
P EDCZR -EZR
P HDEBR -HER
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P XDEYR -XYR
P YEBZR +YZR
```

### Strengthened triangle witnesses

```text
+EBYo3 Z
+ECYo3 Z
-EYRo933/125 XZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
12 L1*L6
23 L0*L2*L13
2 L2*L2*L13
20 L2*L5*L13
14 L2*L15*L16
8 +DEC*L21
14 +DEC*L1*L25
2 +EBH*L3
30 +EBH*L13
2 +EBZ*L15
5 +DBZ
4 +HCR
13 +HCR*L12
15 +BYZ
16 +BYZ*L3
4 +ECZ
20 +DHR*L12
6 -HYR
19 -EYZ
8 +BHCo933/125*L12
2 +EBYo3*L18
7 +ECYo3*L1
13 -EYRo933/125
7 -EYRo933/125*L4
7 quad_DEHY_XZ*L21
2 quad_EBCY_XZ*L2
```

Upper bound: `-36286608010501/61035156250000`.

## Leaf E2H1ppmmpm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DHR +EHX -HYR -EXR +EYZ -HXZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P EDCXR -ECR
P EDCYR -EYR
P EDCZR -EZR
P HDEBR -HER
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P XDEYR -XYR
P XDHZR -XZR
P YECZR +YZR
```

### Strengthened triangle witnesses

```text
+BCZo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
15 L0*L7
19 L5*L18
5 L6*L16*L19
13 L11*L19*L19
3 +DEB*L19
4 +BCX
17 +BCX*L6
24 +BCX*L19
5 -DCZ*L5*L11
5 -DCZ*L5*L18
1 +DBZ*L3
34 +DBZ*L11
28 -DXZ
1 -DXZ*L3
4 -DXZ*L7
5 -DXZ*L17
5 -DXZ*L18
1 -CXZ*L7
5 -CXZ*L16
2 -ECX*L18
18 -HXZ
5 -HXZ*L19
5 +BHCo933/125
17 +BHCo933/125*L10
11 +BCZo3*L10
1 quad_DEBX_Z*L2
20 quad_DEBX_Z*L18
2 quad_EBCZ_X*L10
```

Upper bound: `-4796092731011/15625000000000`.

## Leaf E2H1ppmmpp

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DHR +EHX -HYR -EXR +EYZ +HXZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P EDCXR -ECR
P EDCYR -EYR
P EDCZR -EZR
P HDEBR -HER
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P XDEYR -XYR
P YECZR +YZR
```

### Strengthened triangle witnesses

```text
+HCXo3 R
+HCZo933/125 XR
-DHZo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
19 L5*L10
12 L5*L25
6 L0*L0*L7
14 L0*L2*L9
1 L0*L2*L13
9 L0*L5*L10
1 L0*L5*L19
14 L0*L7*L9
63 L0*L7*L16
40 L0*L7*L25
4 L0*L13*L24
66 L0*L15*L16
39 L0*L15*L18
32 L0*L15*L24
47 L0*L25*L25
97 L1*L8*L15
40 L1*L16*L25
15 L2*L3*L13
15 L2*L3*L16
7 L3*L5*L8
4 L3*L7*L7
21 L3*L7*L13
25 L3*L7*L16
45 L3*L10*L16
43 L3*L13*L13
1 L3*L13*L16
17 L3*L15*L16
85 L3*L16*L19
5 L5*L9*L15
52 L5*L10*L12
24 L5*L10*L15
99 L5*L10*L16
142 L5*L12*L19
5 L5*L17*L24
10 L6*L8*L15
8 L6*L12*L15
8 L6*L13*L16
8 L7*L7*L7
130 L7*L8*L13
103 L7*L9*L16
75 L7*L10*L16
6 L7*L11*L13
139 L7*L12*L16
8 L7*L13*L24
5 L7*L16*L25
4 L8*L13*L15
43 L8*L15*L16
4 L12*L12*L15
43 L13*L13*L18
4 L13*L13*L24
43 L13*L16*L24
4 +DEC*L5*L19
42 -DCX*L3*L5
22 -DCX*L5*L7
73 -DCX*L5*L13
16 +BCX
7 +BCX*L0
35 +BCX*L3
40 +BCX*L7
97 +BCX*L12
32 +BCX*L14
139 +BCX*L17
75 +BCX*L18
17 +EBZ
14 +EBZ*L9
8 +EBZ*L11
40 +EBZ*L12
40 +EBZ*L17
35 +EBZ*L19
54 +EBZ*L25
75 -DCZ*L5
75 -DCZ*L5*L10
5 -DCZ*L5*L25
52 +DBZ
89 +DBZ*L3
58 +DBZ*L4
40 +DBZ*L7
97 +DBZ*L9
26 +DBZ*L10
37 +DBZ*L13
136 +DBZ*L14
42 +DBZ*L18
5 -DXZ*L5
50 -DXZ*L6
16 +BXY
49 +BXY*L3
40 +BXY*L7
4 +BXY*L13
104 +BXY*L17
58 +BXY*L18
135 +CYZ*L0
6 +CYZ*L3
5 +CYZ*L7
3 +CYZ*L16
3 +ECZ*L15
1 -ECX
11 -ECX*L2
7 -ECX*L4
147 -ECX*L12
5 -ECX*L14
161 -ECX*L17
60 -DHX
46 -DHX*L3
2 -DHX*L4
22 -DHX*L7
17 -DHX*L12
28 -DHX*L14
103 -DHX*L17
71 -DHX*L18
80 +EYZ
40 +EYZ*L1
15 +EYZ*L2
21 +EYZ*L7
147 +EYZ*L9
53 +EYZ*L10
43 +EYZ*L13
3 +EYZ*L17
5 +EYZ*L18
143 +HXZ
14 +HXZ*L0
4 +HXZ*L3
147 +HXZ*L12
5 +HXZ*L25
58 +EXZ*L15
6 +BHCo933/125*L0
15 ear_DBC_CDY*L0*L15
97 center_ZXY*L0
4 center_ZXY*L2
26 center_ZXY*L7
5 center_ZXY*L18
5 connect_DBC_XYZ*L5
49 -DHZo3*L0
2 +HCXo3*L5
1 +HCZo933/125*L13
5 quad_EBCZ_X*L15
```

Upper bound: `-9044339257123/15625000000000`.

## Leaf E2H1ppmpm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DHR +EHX -HYR +EXR -EYZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDHXR +EHR
P EDCXY +EXY
P EDCXZ +EXZ
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEZR -XZR
P XDBYR -XYR
P YEBCR +YER
P YEBZR +YZR
P ZDECR +ZER
```

### Strengthened triangle witnesses

```text
+DBYo3 Z
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
14 L1*L3
1 L1*L13
9 L2*L21
11 L15*L16
2 L1*L3*L24
2 L1*L3*L25
14 L2*L15*L16
12 L3*L12*L16
8 L3*L15*L17
16 +DEC*L1*L25
9 +BCX*L3
1 +BCX*L14
13 +BCX*L22
4 -DCZ*L1*L3
8 -DCZ*L1*L13
22 -DCZ*L3*L12
1 +DBZ
8 +DBZ*L12
7 -BCR*L10
1 +CYZ*L2
14 +BYZ
22 +BYZ*L3
4 +CXR
8 +ECZ
12 +ECZ*L12
9 +EXR
28 -EYZ
4 +DBYo3*L3
6 quad_DEBX_Z*L15
6 quad_EBRC_X*L10
6 quad_EBXY_Z
```

Upper bound: `-3428037460443/7812500000000`.

## Leaf E2H1ppmpp

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DHR +EHX -HYR +EXR +EYZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDHXR +EHR
P EDCXY +EXY
P EDCXZ +EXZ
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEZR -XZR
P XDBYR -XYR
P YEBCR +YER
P YECZR +YZR
P ZDECR +ZER
```

### Strengthened triangle witnesses

```text
+EBCo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
14 L3*L9
45 L3*L15
1 L3*L16
1 L0*L3*L25
1 L0*L19*L25
1 L1*L3*L11
1 L1*L18*L18
2 L3*L13*L16
44 +DEB*L25
49 +EBC*L23
1 -DCX*L3*L5
10 +BCX
38 +BCX*L3
6 +BCX*L4
58 +BCX*L22
37 +DBZ
45 +DBZ*L3
1 +DBZ*L13
1 +DBZ*L14
28 +DBZ*L24
7 -BCR*L3
21 -BCR*L10
28 -DYZ*L19
42 -DXZ
28 -DXZ*L18
14 +BXY
28 +BXY*L18
7 +CYZ
1 +CYZ*L0
5 +CXR
2 +ECZ*L13
4 -DHX
7 -DHX*L1
1 -DHX*L3
52 +EXR
46 +EYZ
2 +BHCo933/125
7 +BHCo933/125*L8
14 center_ZXY
28 center_ZXY*L18
3 +EBCo3*L23
36 quad_EBRC_X*L10
45 quad_BRCY_X*L3
```

Upper bound: `-10841731480319/15625000000000`.

## Leaf E2H1ppp

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY -DHX -DHZ +DHR +EHX +HYR`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P HDEBR -HER
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDBYR -XYR
P YDBHR +YDR
P YDBZR +YZR
P YEBHR +YER
P ZDECR +ZER
```

### Strengthened triangle witnesses

```text
+DBRo933/125 XZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
5 L0*L7
1 L5*L12
1 L5*L23
12 L5*L24
6 L8*L15
22 L15*L21
24 L0*L12*L23
6 L5*L11*L13
23 L6*L12*L21
2 L7*L11*L13
1 L7*L13*L21
1 +DEB
5 +DEB*L9
3 +DHC*L0*L23
12 +DHC*L0*L24
1 +DHC*L5*L23
2 +DHC*L8*L15
3 -DCX*L0*L7
6 +DBX*L15
12 +BCX
9 +BCX*L12
1 +BCX*L14
4 -DCR*L5
3 -DCR*L0*L7
24 -DCR*L5*L12
13 +BXY
15 +BXY*L7
12 +BXY*L22
1 -ECX
5 -ECX*L0
6 -DHX*L13
1 +DHR
1 +DHR*L6
12 +DHR*L10
24 +DHR*L13
26 +HYR
12 +HYR*L10
9 -HXR
12 -HXR*L14
4 +DBRo933/125
6 +DBRo933/125*L7
24 +DBRo933/125*L12
12 +DBRo933/125*L24
3 quad_DEBX_Z*L12
12 quad_DBHR_XZ*L15
```

Upper bound: `-442576524429/3125000000000`.

## Leaf E2H2mm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DHR -EHR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDHCR -ECR
P EDHYR -EYR
P EDHZR -EZR
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P HDEBX -HEX
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR +HZR
P HDBXR +HXR
P HDBYR +HYR
P XDEBR +XER
P XDEZR +XZR
P YDBZR +YZR
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+EBHo3 R
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
64 L1*L3
81 L3*L6
81 L3*L9
347 L5*L22
1692 L0*L7*L22
12 L0*L11*L22
820 L1*L3*L9
1466 L1*L3*L22
600 L2*L5*L22
914 L3*L9*L20
85 L3*L9*L22
553 L5*L10*L22
2698 +DEB*L7
262 +DEB*L10
2448 +DEB*L22
801 +DBH*L3
89 +DHC*L3*L21
781 +HCX*L3
622 -DCX*L3
519 -DCX*L1*L3
781 +BCX*L7
1191 +BCX*L23
1235 +EBR*L6
722 +EBR*L11
2658 +BHR
260 +BHR*L3
635 +BHR*L8
457 +BHR*L10
546 -DCR*L3*L5
836 -BXR
722 -BXR*L2
281 -BXR*L4
457 -BXR*L6
396 -ECX
820 -ECX*L1
353 -ECX*L4
781 -ECX*L7
561 -ECX*L20
637 -ECX*L23
635 +DHX*L0
281 +DHX*L21
96 +DHX*L22
1406 -DHR*L3
2024 -EHR
353 -EHR*L8
281 +DBR*L5
402 +DBHo933/125*L3
353 ear_DBC_BCX*L5
781 +EBHo3*L11
```

Upper bound: `-1321692005411/15625000000000`.

## Leaf E2H2mpm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DHR +EHR -HZR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P HDEBX -HEX
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDEZR +XZR
P YDEBR +YER
P YDBZR +YZR
P ZDBHR -ZDR
P ZEBCR +ZER
```

### Strengthened triangle witnesses

```text
+CZRo3 X
+HXZo3 R
-DCRo933/125 XY
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
7 L1*L6
5 L5*L19
4 L5*L22
3 L6*L17
12 L0*L0*L3
2 L0*L3*L10
10 L0*L5*L10
5 L0*L5*L19
13 L1*L3*L11
5 L1*L6*L16
1 L2*L3*L16
5 L2*L5*L10
4 L3*L5*L8
5 -DCX*L3*L5
25 +BCX
13 +BCX*L0
14 +BCX*L3
1 +EBZ*L0
8 +EBZ*L4
47 -DCZ*L5*L22
16 +DBZ
1 +DBZ*L1
9 +DBZ*L3
15 +DBZ*L7
30 +DBZ*L22
2 +ECZ*L1
23 +ECZ*L9
15 -ECX
4 -ECX*L4
23 -ECX*L17
10 +DHX*L2
17 -DHR
47 -DHR*L18
49 -HZR
5 -HZR*L10
19 +EXZ
2 +HXR
5 +HXR*L18
5 +XZR*L6
22 +DZR*L6
2 +BHCo933/125*L18
8 EBHcap*L16
8 -DCRo933/125*L1
7 -DCRo933/125*L17
38 -DCRo933/125*L19
30 -DCRo933/125*L1*L19
47 -DCRo933/125*L7*L17
5 +HXZo3*L23
4 +CZRo3*L6
3 quad_DEBX_Z*L5
13 quad_DZHX_R*L0
21 quad_DZRC_XY*L6
13 quad_EBCZ_X*L1
1 quad_EBCZ_X*L2
```

Upper bound: `-1861345674888833/1953125000000000`.

## Leaf E2H2mppm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DHR +EHR +HZR -EYZ`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P HDEBX -HEX
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDEZR +XZR
P YDEBR +YER
P YDBZR +YZR
P ZEBHR +ZER
```

### Strengthened triangle witnesses

```text
+DBHo933/125 ZR
+ECYo3 Z
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
3 L1*L3
8 L1*L6
13 L15*L16
9 L0*L2*L13
3 L1*L3*L25
6 L1*L12*L18
3 L1*L13*L19
6 L2*L2*L13
14 L2*L5*L13
37 L2*L15*L16
13 L3*L12*L16
12 L3*L12*L19
35 +DEC*L1*L25
14 +EBH*L13
4 +DBZ
9 +DBZ*L12
1 +CYZ*L2
26 +BYZ
38 +BYZ*L3
3 +ECY*L1
13 +ECZ
13 +ECZ*L12
47 -EYZ
2 +BHCo933/125
1 +DBHo933/125*L12
2 +ECYo3*L1
4 +ECYo3*L2
2 quad_EBCY_XZ*L2
```

Upper bound: `-9408795111503/15625000000000`.

## Leaf E2H2mpppmm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DHR +EHR +HZR +EYZ -HXY -DZR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P HDEBX -HEX
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDEZR +XZR
P YDEBR +YER
P YDEZR +YZR
P ZDEBR +ZER
M DRC XYZ +XYR
```

### Strengthened triangle witnesses

```text
+BHYo933/125 XR
-DCRo4427/500 XYZ
-DHRo3 Z
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L1*L6
3 L5*L22
5 L8*L15
5 L15*L17
2 L1*L2*L6
3 L2*L6*L17
4 L3*L19*L20
1 L3*L20*L25
3 +DEC*L5
8 +DEC*L1*L11
13 +DEC*L1*L22
5 +DEC*L5*L11
1 +DEC*L5*L19
6 +DEC*L5*L22
5 +DEC*L6*L9
8 +DEC*L6*L20
8 +BCX
23 +BCX*L23
10 +DEZ*L5
3 -DCZ*L5
1 +DBZ*L22
10 +EBR
10 +EBR*L13
3 -DCR*L5*L19
10 -BCR*L3
20 -BCR*L11
4 -BCR*L24
2 -DXZ
1 -DXZ*L0
5 -DXZ*L12
10 +CYZ*L20
3 +CYZ*L22
5 -CXZ*L13
4 -BXR
8 -BXR*L3
13 -ECX
5 -DHZ
3 -DHZ*L2
1 -DHZ*L18
10 -DHZ*L20
8 -DHZ*L23
13 +EHR
10 +EHR*L16
4 +EHR*L19
1 +EHR*L25
2 +EYZ
10 +EYZ*L21
4 +EYZ*L23
4 -HXY
22 -DZR
10 -DZR*L4
7 -DZR*L7
1 -DZR*L14
13 +XYR
1 ear_DBC_DBZ*L15
2 -DHRo3*L2
4 -DCRo4427/500*L0*L14
4 -DCRo4427/500*L2*L12
8 ear_DRC_RCX*L2
5 ear_DRC_CDY*L0
2 ear_DRC_CDY*L3*L4
4 connect_DRC_XYZ
2 +BHYo933/125*L2
1 +BHYo933/125*L18
1 +BHYo933/125*L23
1 quad_DERY_Z*L6
1 quad_DBRY_Z*L19
5 quad_DRHX_Z*L2
1 quad_DZHY_X*L19
1 quad_DRHY_XZ*L2
1 quad_DZXC_Y*L1
10 quad_EBRC_X*L12
2 quad_BRCY_X*L3
1 quad_BRCZ_X*L6
```

Upper bound: `-7337567893419/15625000000000`.

## Leaf E2H2mpppmpm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DHR +EHR +HZR +EYZ -HXY +DZR -XYR`.

### Sign trace

```text
P DEBZR +DBR
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P HDEBX -HEX
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDEZR +XZR
P YDEBR +YER
P YDEZR +YZR
P ZDEHR +ZER
```

### Strengthened triangle witnesses

```text
+DEYo3 Z
-BYRo3 X
-DCRo933/125 XY
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L0*L5
10 L1*L6
11 L3*L5
27 L5*L18
5 L5*L21
21 L5*L22
8 L6*L15
1 L6*L21
26 L9*L15
6 L0*L0*L24
11 L0*L2*L11
8 L0*L3*L9
1 L0*L10*L13
17 L0*L10*L25
2 L0*L16*L24
2 L1*L1*L1
2 L1*L2*L6
7 L1*L6*L8
6 L1*L8*L22
11 L1*L11*L22
4 L1*L13*L15
3 L2*L2*L21
3 L2*L3*L5
12 L2*L6*L21
2 L2*L9*L13
4 L2*L9*L22
11 L2*L17*L22
10 L3*L5*L9
28 L3*L8*L13
40 L3*L10*L13
5 L3*L13*L16
27 L3*L16*L20
22 L4*L9*L15
6 L5*L9*L22
22 L5*L15*L21
5 L5*L18*L24
22 L6*L8*L13
2 L6*L8*L17
6 L6*L8*L21
5 L6*L9*L18
1 L6*L10*L17
36 L6*L15*L20
4 L6*L16*L24
6 L6*L21*L21
6 L6*L21*L22
36 L9*L15*L22
2 L12*L15*L21
4 L13*L15*L20
27 L13*L18*L20
27 L15*L17*L20
15 L15*L20*L20
2 L15*L20*L22
18 L17*L21*L22
27 L17*L22*L22
9 L19*L21*L21
9 L21*L21*L25
27 L21*L22*L25
26 +DEC*L5*L21
37 +DEC*L5*L24
5 +DHC*L9*L15
7 -DCX*L0*L5
80 -DCX*L1*L22
2 -DCX*L5*L16
8 -DCX*L5*L18
41 +BCX
11 +BCX*L3
1 +BCX*L13
43 +BCX*L15
2 +BCX*L17
114 +BCX*L18
5 +DEZ*L5
24 +DEZ*L6
3 -DCZ*L6*L8
3 +DBZ*L13
2 +BHR*L2
6 -DCR*L5*L21
6 -DCR*L5*L22
61 +BXZ*L15
6 +BXY*L0
131 +BXY*L18
6 +BXY*L20
90 +BXY*L23
29 +CYZ
4 +CYZ*L0
1 +CYZ*L7
102 +CYZ*L10
5 +CYZ*L12
24 +CYZ*L23
30 +DXY*L22
17 +CXR*L15
23 -BZR*L15
5 +ECZ*L5
21 -ECX
9 -ECX*L0
58 -ECX*L4
30 -ECX*L12
40 -ECX*L14
94 -ECX*L21
4 -ECX*L23
7 +DHX*L1
3 +DHX*L3
22 +DHX*L13
25 +DHX*L14
2 +DHX*L17
21 +DHX*L18
94 +DHX*L20
29 +DHX*L23
34 -DHZ*L22
17 -DHR*L19
57 -DHR*L25
57 +EHR
3 +EHR*L2
94 +EHR*L9
22 +EHR*L12
37 +EHR*L14
9 +EHR*L23
81 +HZR
69 +HZR*L23
5 +HZR*L24
27 +EYZ*L20
11 +EYZ*L22
39 +DZR*L7
5 +DZR*L10
18 +DZR*L21
2 +DZR*L22
145 -XYR
6 -XYR*L0
40 -XYR*L3
22 -XYR*L4
5 -XYR*L7
28 -XYR*L18
6 -XYR*L20
24 -XYR*L23
62 +DBR*L15
40 -DXR*L5
40 +HXR*L2
11 +HXR*L19
6 +HXR*L21
24 +HXR*L22
17 +HXR*L25
3 -ECR*L15
26 -EXR*L5
24 -EZR*L6
22 +DEYo3*L5
10 -DCRo933/125*L0*L13
29 -DCRo933/125*L3*L13
40 -DCRo933/125*L6*L16
36 -DCRo933/125*L11*L13
6 -DCRo933/125*L13*L13
6 -DCRo933/125*L13*L20
1 -BYRo3*L13
52 quad_DZRY_X*L22
5 quad_ERYZ_X*L13
42 quad_BHXZ_R*L15
3 quad_BRCY_X*L13
5 quad_BRCZ_X*L15
42 quad_HYZR_X*L22
```

Upper bound: `-6324202320754593/1953125000000000`.

## Leaf E2H2mpppmpp

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DHR +EHR +HZR +EYZ -HXY +DZR +XYR`.

### Sign trace

```text
P DEBZR +DBR
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P HDEBX -HEX
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDEZR +XZR
P YDEBR +YER
P YDEZR +YZR
P ZDEHR +ZER
```

### Strengthened triangle witnesses

```text
+BHYo933/125 XR
+DBRo3 Z
+HYRo3 X
-DCRo933/125 XY
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L1*L5
51 L8*L15
17 L15*L21
4 L0*L3*L10
1 L0*L6*L25
1 L0*L11*L19
13 L1*L3*L9
15 L1*L3*L24
1 L1*L6*L22
4 L1*L10*L15
6 L1*L11*L24
8 L1*L24*L24
10 L2*L5*L12
5 L3*L5*L13
33 L3*L9*L13
66 L3*L13*L20
2 L4*L8*L15
2 L5*L9*L22
14 L5*L10*L11
16 L5*L13*L22
1 L5*L18*L22
1 L5*L19*L23
14 L6*L9*L10
15 L6*L9*L13
2 L6*L9*L20
3 L6*L11*L21
3 L6*L12*L19
44 L6*L12*L21
2 L6*L13*L20
20 L8*L15*L21
1 L8*L15*L22
6 L12*L15*L21
20 L13*L13*L22
4 L13*L22*L24
3 L15*L21*L25
7 +DEB*L25
19 +DEC*L5*L11
14 +DEC*L5*L13
5 +DEC*L15*L21
8 -DCX*L1*L5
39 -DCX*L3*L5
35 -DCX*L5*L13
46 +BCX
19 +BCX*L3
1 +BCX*L4
10 +BCX*L10
4 +BCX*L14
115 +BCX*L23
1 +BCX*L25
1 -DCZ*L5*L24
31 +DBZ
37 +DBZ*L3
3 +DBZ*L7
34 +DBZ*L14
56 +DBZ*L23
75 -DCR*L1*L15
14 -DCR*L5*L11
30 -DCR*L5*L12
1 -DCR*L12*L15
31 -BCR*L11
4 -BCR*L18
60 -BCR*L24
32 -CXY*L22
36 +DXY*L6
5 +DXY*L13
1 -CXZ*L15
2 -BXR*L11
3 -BXR*L18
21 -BXR*L24
44 +CXR*L3
25 +CXR*L12
19 +ECY*L5
32 -ECX
13 -ECX*L1
4 -ECX*L6
33 -ECX*L13
18 -ECX*L20
44 -ECX*L23
9 +DHX*L0
14 +DHX*L2
10 +DHX*L10
37 +DHX*L12
9 +DHX*L15
1 +DHX*L19
1 +DHX*L23
51 -DHR*L15
18 +EHR*L8
39 +EHR*L11
66 +EHR*L13
5 +EHR*L24
37 +EYZ
24 -HXY
23 -HXY*L10
20 -HXY*L20
73 -HXY*L23
3 -HXY*L25
55 +DZR
2 +DZR*L7
141 +XYR
20 +XYR*L4
72 +XYR*L7
23 +XYR*L10
6 +XYR*L12
3 +XYR*L25
18 +EXY*L5
3 +HXZ*L15
13 +HXR*L15
1 center_ZXY*L6
44 +DBRo3*L18
14 -DCRo933/125*L12
1 -DCRo933/125*L0*L6
5 -DCRo933/125*L0*L25
3 -DCRo933/125*L5*L19
20 -DCRo933/125*L8*L12
3 -DCRo933/125*L9*L15
25 -DCRo933/125*L12*L12
3 -DCRo933/125*L12*L19
4 +BHYo933/125*L18
1 +BHYo933/125*L22
13 +HYRo3*L10
23 quad_DEBY_Z*L19
8 quad_DEBY_Z*L25
5 quad_DEHX_ZR*L15
4 quad_DBHX_ZR*L15
1 quad_DRHC_XY*L15
3 quad_DRHY_X*L15
5 quad_DRHY_X*L19
2 quad_DZXC_Y*L15
```

Upper bound: `-39235795260681/15625000000000`.

## Leaf E2H2mpppp

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ -DHR +EHR +HZR +EYZ +HXY`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P HDEBX -HEX
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBR +XER
P XDEZR +XZR
P XDHYR +XYR
P YDEBR +YER
P YDEZR +YZR
P ZEBHR +ZER
```

### Strengthened triangle witnesses

```text
+BCYo3 X
+DBHo933/125 ZR
+DEHo933/125 ZR
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L1*L2
6 L1*L6
1 L1*L9
3 L1*L15
25 L5*L15
36 L6*L13
73 L8*L15
1 L9*L9
9 L12*L25
2 L13*L15
9 L15*L17
8 L0*L12*L19
8 L0*L15*L24
1 L1*L2*L6
1 L1*L2*L10
2 L1*L3*L24
6 L1*L9*L15
4 L1*L24*L24
2 L2*L5*L10
59 L3*L9*L13
11 L3*L12*L16
42 L3*L13*L13
12 L4*L9*L24
67 L4*L11*L24
23 L5*L9*L15
23 L5*L12*L15
23 L6*L12*L13
9 L11*L13*L13
1 +DEC*L15
12 +DHC*L9*L9
67 +DHC*L9*L24
39 +BCX
3 +BCX*L3
39 +BCX*L7
6 +BCX*L13
2 +BCX*L14
4 +BCX*L24
1 -DCZ*L1*L2
5 +DBZ
12 +DBZ*L3
8 +DBZ*L12
12 +DBZ*L14
11 -DYZ*L12
7 -CXY*L6
12 -CXY*L9
56 -CXY*L11
8 +CYZ
69 +DXY
6 +DXY*L0
23 +DXY*L4
60 +DXY*L7
11 +DXY*L10
23 +DXY*L13
3 -ECX
59 -ECX*L13
13 +EYZ
11 +EYZ*L12
51 +HXY
12 +HXY*L9
67 +HXY*L11
23 +HXY*L12
10 +BHCo933/125
1 +BHCo933/125*L2
2 +DEHo933/125*L11
45 +DBHo933/125*L11
2 +DBHo933/125*L13
9 +DBHo933/125*L24
9 +BCYo3*L6
10 quad_DEBX_Z*L15
12 quad_DEBY_Z*L25
```

Upper bound: `-2054636869497/15625000000000`.

## Leaf E2H2pmm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DHR -EXR -EYZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P EDCXR -ECR
P EDCYR -EYR
P EDCZR -EZR
P HDEBX -HEX
P HDEBR -HER
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P YEBZR +YZR
M DHC XYR +DXR
M DHC XYR -DYR
M DHC XYR -XYR
M DHC XYR -HYR
M DHC XYR -HXY
M DHC XYR -HXR
```

### Strengthened triangle witnesses

```text
+DHRo3 X
-EYRo933/125 XZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
3 L1*L6
3 L2*L5
15 L2*L13
6 L3*L21
8 +DEC*L21
3 +EBH
6 +HCR
20 +HCR*L12
1 +DHX
1 -HXY
20 +DHRo3*L12
14 -EYRo933/125
6 quad_DHRY_X
```

Upper bound: `-31905419/125000000`.

## Leaf E2H2pmpm

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DHR -EXR +EYZ -XZR`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P EDCXR -ECR
P EDCYR -EYR
P EDCZR -EZR
P HDEBX -HEX
P HDEBR -HER
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P XDEZR -XDR
P XDBHR +XHR
P XDBYR -XYR
P YECZR +YZR
M DHC XYR -DYR
M DHC XYR -HYR
M DHC XYR -HXY
```

### Strengthened triangle witnesses

```text
+DERo933/125 XZ
-ECRo3 X
-HZRo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
169 L1*L6
2 L5*L15
53 L6*L17
7 L15*L19
10 L15*L22
27 L0*L5*L19
10 L0*L15*L17
8 L0*L19*L24
58 L1*L2*L6
1 L1*L2*L12
51 L1*L2*L16
60 L1*L3*L21
27 L1*L5*L23
27 L1*L6*L21
1 L1*L6*L24
2 L1*L9*L15
114 L1*L10*L19
10 L1*L10*L21
33 L1*L10*L23
6 L1*L10*L25
441 L1*L11*L11
2 L1*L11*L13
10 L1*L11*L24
4 L1*L12*L19
2 L1*L13*L23
16 L1*L17*L23
16 L1*L18*L21
341 L1*L19*L23
1 L2*L3*L21
314 L2*L5*L11
1 L2*L5*L13
17 L2*L5*L24
190 L2*L9*L11
2 L2*L17*L23
51 L3*L5*L16
45 L3*L5*L21
268 L3*L5*L23
20 L3*L6*L8
45 L3*L6*L16
14 L3*L8*L21
322 L3*L9*L16
817 L3*L9*L19
22 L3*L9*L25
349 L3*L11*L21
14 L3*L13*L21
94 L3*L17*L21
196 L3*L18*L21
1 L3*L21*L24
65 L5*L8*L19
64 L5*L9*L23
152 L5*L10*L10
64 L5*L10*L21
145 L5*L11*L16
429 L5*L11*L19
3 L5*L11*L25
14 L5*L16*L24
298 L5*L18*L23
35 L5*L19*L24
10 L5*L23*L24
160 L6*L8*L17
64 L6*L9*L16
3 L6*L9*L25
18 L6*L12*L19
18 L6*L13*L18
65 L6*L17*L21
298 L6*L18*L21
9 L6*L21*L24
14 L9*L13*L23
2 L9*L15*L20
12 L10*L13*L21
26 L11*L12*L19
9 L15*L17*L22
23 +DEC*L1*L21
31 +DEC*L5*L21
181 +DEC*L6*L21
1 +DHC*L15*L21
311 +EBH*L11
1 +EBH*L13
51 +EBH*L17
160 +BCX
311 +BCX*L2
60 +BCX*L6
448 +BCX*L11
4 +BCX*L13
844 +BCX*L19
8 +BCX*L20
33 +BCX*L22
4 +BCX*L24
65 -DCZ*L5*L21
26 -DCZ*L9*L15
9 -DCZ*L15*L21
27 +DBZ*L5
965 +DBZ*L11
14 +DBZ*L13
341 +DBZ*L22
8 +DBZ*L24
107 +HCR
27 +HCR*L1
268 +HCR*L3
32 +HCR*L11
39 +HCR*L15
65 +HCR*L17
257 +HCR*L18
2 -DYZ*L6
227 -DXZ
16 -DXZ*L0
19 -DXZ*L3
779 -DXZ*L9
373 -DXZ*L10
14 -DXZ*L13
274 -DXZ*L20
373 -DXZ*L23
2 +BXY*L21
10 +CYZ*L0
69 +CYZ*L7
63 +CYZ*L22
181 -CXZ*L21
1 +CXR*L5
45 +ECZ*L6
18 -ECX*L1
1 -ECX*L2
779 -ECX*L8
161 -ECX*L11
471 -ECX*L17
422 -ECX*L19
79 -ECX*L21
1 -ECX*L22
3 +DHX*L3
130 +DHX*L10
210 +DHX*L17
320 +DHX*L18
18 -EXR*L1
1 -EXR*L2
779 -EXR*L8
340 -EXR*L11
793 -EXR*L17
385 -EXR*L18
11 -EXR*L24
33 +EYZ*L10
14 +EYZ*L21
16 +EYZ*L23
690 -XZR
16 -XZR*L1
14 -XZR*L3
65 -XZR*L4
779 -XZR*L8
340 -XZR*L11
14 -XZR*L12
33 -XZR*L24
686 +EXZ*L21
77 +DXR*L19
41 -HXR*L19
17 -HXY*L2
22 -HXY*L11
14 -HXY*L16
106 -HXY*L19
22 -HXY*L22
58 +BHCo933/125*L2
1 +BHCo933/125*L24
197 +DERo933/125*L19
6 +DERo933/125*L25
20 ear_DHC_DHX*L15
2 center_XRY*L0
16 center_XRY*L3
22 center_XRY*L6
22 center_XRY*L11
14 center_XRY*L16
47 center_XRY*L19
65 -ECRo3*L1
76 -ECRo3*L5
71 -HZRo3*L15
```

Upper bound: `-45228977441019/15625000000000`.

## Leaf E2H2pmpp

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DHR -EXR +EYZ +XZR`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P EDCXR -ECR
P EDCYR -EYR
P EDCZR -EZR
P HDEBX -HEX
P HDEBR -HER
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P YECZR +YZR
M DHC XYR +DXR
M DHC XYR -DYR
M DHC XYR -XYR
M DHC XYR -HYR
M DHC XYR -HXY
M DHC XYR -HXR
```

### Strengthened triangle witnesses

```text
+BCYo3 X
+DBRo933/125 XZ
+DERo933/125 XZ
+DHRo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L1*L6
1 L5*L13
2 L6*L19
5 L6*L21
32 L19*L21
2 L0*L1*L2
1 L0*L9*L23
10 L0*L10*L23
37 L0*L19*L23
3 L1*L1*L18
7 L1*L11*L18
8 L1*L18*L24
1 L2*L16*L24
1 L3*L5*L11
16 L3*L9*L13
7 L3*L13*L16
5 L5*L9*L15
7 L5*L11*L18
2 L5*L18*L22
6 L6*L8*L19
9 L6*L10*L21
5 L9*L18*L22
5 L10*L19*L21
3 +DEB*L25
7 -DCX*L5*L13
12 +BCX
1 +BCX*L3
10 +BCX*L14
3 +BCX*L17
16 +BCX*L18
10 +BCX*L23
1 +EBZ*L10
1 -DCZ*L6*L8
2 -DCZ*L6*L21
10 +DBZ
3 +DBZ*L1
3 +DBZ*L3
8 +DBZ*L13
9 +DBZ*L14
38 +DBZ*L23
9 +HCR
1 +HCR*L1
1 +HCR*L4
9 +HCR*L10
2 +HCR*L19
18 -DYZ*L21
11 -CXY*L16
7 -DXZ*L0
5 -DXZ*L21
3 +BXY
3 +BXY*L17
8 +CYZ*L0
7 -CXZ*L1
14 -CXZ*L13
4 +CXR*L0
11 +CXR*L5
7 +ECZ*L13
26 -ECX*L12
42 -ECX*L17
8 -ECX*L20
1 +DHX*L2
7 +DHX*L12
7 +DHX*L19
5 +DHX*L20
9 +DHX*L22
15 +EYZ
42 +EYZ*L9
5 +EYZ*L20
46 +XZR
27 +XZR*L12
16 +DXR
4 +DXR*L1
16 +DXR*L4
23 +DXR*L12
27 +DXR*L17
5 +DXR*L18
27 -XYR*L16
5 -HYR*L9
8 +DERo933/125*L9
5 +DERo933/125*L13
5 +DERo933/125*L16
5 center_ZXY*L21
1 +DBRo933/125*L18
1 +DHRo3*L1
1 +DHRo3*L4
10 +BCYo3*L11
1 +BCYo3*L18
2 quad_EBCZ_X*L1
3 quad_EBCZ_X*L15
```

Upper bound: `-4537577383421/7812500000000`.

## Leaf E2H2pp

Box: `E2`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX -DHZ +DHR +EXR`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P HDEBX -HEX
P HDEBR -HER
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEBR -XDR
P XDEZR -XZR
P XDBHR +XHR
P XDBYR -XYR
P YEBCR +YER
P YBCZR +YZR
P ZDECR +ZER
M DHC XYR -DYR
M DHC XYR -HYR
M DHC XYR -HXY
```

### Strengthened triangle witnesses

```text
+EBCo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L1*L6
5 L2*L21
18 L3*L9
2 L6*L11
11 L8*L23
5 L11*L21
3 L2*L8*L21
3 -DCX*L5*L21
5 +BCX*L7
8 +BCX*L20
10 +BCX*L22
4 -BCR*L3
8 -BCR*L8
10 -BCR*L10
8 +CXR
3 -ECX*L21
5 +DHX
3 +DHX*L20
18 +EXR
8 +DXR*L1
2 +BHCo933/125
7 +BHCo933/125*L11
5 +EBCo3*L23
1 quad_DEBR_XZ*L3
1 quad_DERC_YZ*L3
```

Upper bound: `-2806749431351/7812500000000`.

## Leaf E2H3m

Box: `G`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ -DHR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P DEHZR -DZR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P BDECR -BDR
P HDEBX -HEX
P HDBXR +HXR
P HDBYR +HYR
P HDBZR +HZR
P CDEBR +CER
P XDEBR +XER
P XDEHZ -XHZ
P XDEZR +XZR
P YDEBR +YER
P YDBHZ -YHZ
P YDBZR +YZR
P ZDEBR +ZER
```

### Strengthened triangle witnesses

```text
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
9 L1*L6
12 L4*L19
8 L6*L19
19 L9*L19
6 L11*L19
19 L1*L10*L19
5 +BCX
8 -DXZ
20 +DHZ
6 +BHCo933/125
9 +BHCo933/125*L19
9 ear_DBC_DBZ
19 ear_DBC_DBZ*L10
10 quad_DZXC_Y
```

Upper bound: `-49844229011/125000000000`.

## Leaf E2H3p

Box: `G`.

Assumptions: `+ECY +ECZ -ECX +DHY +DHX +DHZ +DHR`.

### Sign trace

```text
P DEBHR +DBR
P EDHCY +EHY
P EDHCZ +EHZ
P EDCXY +EXY
P EDCXZ +EXZ
P HDEBX -HEX
P HDEBR -HER
P CDEBR +CER
P XDEHZ -XHZ
P YDBHZ -YHZ
P YEBCR +YER
P YBCZR +YZR
P ZEBCR +ZER
```

Exclusion: `four DHC XYZR`.

## Leaf E3H0m

Box: `G`.

Assumptions: `+ECY +ECZ +ECX -DHY -DHX -DHZ -DHR`.

### Sign trace

```text
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P BDECR -BDR
P CDEBR +CER
P XDEBY -XEY
P XDEHY +XHY
P XDECZ -XEZ
P XEBCR +XER
P YDHCZ -YHZ
P YEBCR +YER
P YBCZR +YZR
P ZEBCR +ZER
```

Exclusion: `four DBH XYZR`.

## Leaf E3H0p

Box: `G`.

Assumptions: `+ECY +ECZ +ECX -DHY -DHX -DHZ +DHR`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHYR +DYR
P DEHZR +DZR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEBR -HER
P HDEXR -HXR
P HDEYR -HYR
P HDEZR -HZR
P CDEBR +CER
P XDEBY -XEY
P XDEHY +XHY
P XDECZ -XEZ
P XDECR +XER
P XDEYR -XYR
P YDECR +YER
P YDHCZ -YHZ
P YDCZR +YZR
P ZDECR +ZER
```

### Strengthened triangle witnesses

```text
-DHXo3 Y
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L0*L7
1 L0*L11
7 L7*L12
3 +ECX
7 -DHY
2 +BHCo933/125*L10
2 ear_DBC_BCX*L7
2 ear_DBC_CDY*L1
6 ear_DBC_CDY*L9
2 -DHXo3
2 quad_DEBY_Z
3 quad_DEXY_Z
3 quad_DBXY_Z
```

Upper bound: `-53303812659/62500000000`.

## Leaf E3H1m

Box: `G`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ -DHR`.

### Sign trace

```text
P DEHYR -DYR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P BDECR -BDR
P HDEXY -HXY
P HDEYZ +HYZ
P HDBYR +HYR
P CDEBR +CER
P XDEBY -XEY
P XDECZ -XEZ
P XEBCR +XER
P YDEBR +YER
P YDBZR +YZR
P ZEBCR +ZER
```

### Strengthened triangle witnesses

```text
+DBHo4427/500 XZR
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
3 L7*L7
415 L0*L2*L7
10 L7*L7*L8
60 L7*L9*L19
60 L7*L11*L16
3 +DHC*L5
10 +DHC*L5*L11
2 +HCX*L2
6 +BCX*L5
16 +EBZ*L0
458 +EBZ*L7
35 +HCZ*L2
458 -DCZ*L0*L7
16 +DBZ*L1
6 +BXZ*L15
2 +XYZ
3 -DXZ
3 -DXZ*L0
60 -DXZ*L7
6 +BXY*L18
6 +BYZ*L10
3 -CXZ*L1
2 +ECX
3 +ECX*L7
1 -DHX
6 -DHX*L0
1 -DHX*L2
10 -DHX*L7
21 +BHCo933/125
75 +BHCo933/125*L0
43 +BHCo933/125*L3
6 +BHCo933/125*L9
16 +BHCo933/125*L17
3 +BHCo933/125*L19
59 +DBHo4427/500*L1
68 ear_DBC_DBZ*L2
382 quad_DEBH_XZR
16 quad_DEBH_XZR*L1
16 quad_DEBH_XZR*L16
3 quad_DEBH_XZR*L18
```

Upper bound: `-4605772787087/14218750000000`.

## Leaf E3H1pmm

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ +DHR +EHR -HYR -HXZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEBY -XEY
P XDEHZ -XEZ
P XDECR +XER
P XDEYR -XYR
P XDHZR -XZR
P YEBCR +YER
P YBCZR +YZR
P ZDECR +ZER
M DEC XYZ +EYZ
```

### Strengthened triangle witnesses

```text
+ECZo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L0*L7
1 L0*L11
5 L0*L19
6 L5*L18
5 L11*L16
2 +BCX*L19
3 -DCZ*L5*L11
12 +DBZ*L11
2 +BCZ*L5
15 -DXZ
4 +ECX
4 +ECX*L17
2 +ECX*L19
4 -DHX*L19
9 -HXZ
8 +BHCo933/125*L10
2 +BHCo933/125*L17
4 ear_DEC_ECX*L16
1 ear_DBC_DBZ*L2
5 ear_DBC_BCX*L7
8 +ECZo3*L8
3 quad_DEBX_Z*L7
11 quad_DEBX_Z*L18
2 quad_DZHC_YR*L0
4 quad_DZXC_Y*L7
```

Upper bound: `-23142614819567/62500000000000`.

## Leaf E3H1pmp

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ +DHR +EHR -HYR +HXZ`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEBY -XEY
P XDECZ -XEZ
P XDECR +XER
P XDEYR -XYR
P YEBCR +YER
P YBCZR +YZR
P ZDECR +ZER
M DEC XYZ +EYZ
```

### Strengthened triangle witnesses

```text
+HCZo933/125 XR
-DHZo3 X
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
6 L0*L5
3 L8*L15
1 L0*L0*L7
1 L0*L0*L15
1 L0*L2*L13
6 L0*L7*L16
10 L0*L11*L15
1 L0*L12*L15
100 L0*L15*L16
266 L0*L19*L19
41 L1*L2*L10
1 L1*L8*L15
2 L2*L2*L17
15 L2*L5*L10
6 L2*L8*L13
1 L2*L12*L13
91 L2*L13*L16
28 L5*L10*L16
8 L5*L11*L13
25 L5*L11*L18
2 L5*L12*L19
15 L5*L19*L19
52 L7*L7*L9
17 L7*L7*L16
8 L7*L8*L13
25 L7*L8*L18
28 L7*L9*L16
21 L7*L12*L16
15 L7*L16*L19
3 +DEC*L5*L11
17 +DHC*L5*L19
14 +EBH*L8
93 +EBH*L17
50 +EBH*L18
14 +EBX*L5
6 -DCX*L0*L15
52 -DCX*L5*L6
137 +EBZ
14 +EBZ*L4
56 +EBZ*L7
14 +EBZ*L9
257 +EBZ*L11
92 +EBZ*L12
72 +EBZ*L19
229 +EBZ*L25
61 -DCZ*L0*L5
51 -DCZ*L2*L8
19 -DCZ*L5*L12
145 +DBZ
312 +DBZ*L3
23 +DBZ*L4
40 +DBZ*L7
1 +DBZ*L12
12 +DBZ*L14
34 +DBZ*L18
16 +BXZ*L15
1 +XYZ*L12
27 +XYZ*L19
219 -DXZ*L5
39 +BXY
1 +BXY*L1
216 +BXY*L3
1 +BXY*L13
7 +BXY*L17
257 +BXY*L18
13 +BYZ*L2
27 -CXZ*L2
7 -CXZ*L5
37 +ECX
1 +ECX*L1
2 +ECX*L13
2 +ECX*L14
22 +ECX*L16
77 +ECX*L18
28 -DHX
18 -DHX*L3
292 -DHX*L17
51 -DHX*L18
144 +HXZ
14 +HXZ*L0
52 +HXZ*L7
9 +HXZ*L12
27 +HXZ*L19
214 +EXZ*L15
65 +EYZ
93 +EYZ*L1
7 +EYZ*L9
230 +EYZ*L10
1 +EYZ*L13
27 +EYZ*L18
1 +BHCo933/125*L0
56 +BHCo933/125*L3
47 +BHCo933/125*L18
25 -DHZo3*L0
245 -DHZo3*L8
12 -DHZo3*L12
59 +HCZo933/125*L0
50 +HCZo933/125*L2
35 +HCZo933/125*L6
18 +HCZo933/125*L8
52 +HCZo933/125*L11
11 +HCZo933/125*L18
37 quad_DZXC_Y*L5
2 quad_ECYZ_X*L2
```

Upper bound: `-50691971551241/62500000000000`.

## Leaf E3H1pp

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY -DHX -DHZ +DHR +EHR +HYR`.

### Sign trace

```text
P DEBHR +DBR
P DEHXR +DXR
P DEHZR +DZR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEXY -HXY
P HDEXR -HXR
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEBY -XEY
P XDECZ -XEZ
P XDECR +XER
P XDEYR -XYR
P YDBHR +YDR
P YDBZR +YZR
P YEBHR +YER
P ZDECR +ZER
M DEC XYZ +EYZ
```

### Strengthened triangle witnesses

```text
+BCZo3 X
+DBRo933/125 XZ
+DERo933/125 XZ
-HXYo3 R
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L0*L5
4 L0*L7
7 L0*L25
6 L2*L9
1 L5*L24
13 L15*L21
2 L2*L9*L12
1 L5*L6*L24
17 L5*L12*L23
1 L6*L7*L8
17 L6*L12*L21
2 L7*L11*L13
5 +DHC*L0*L23
9 +DHC*L0*L24
2 +DHC*L8*L15
3 +EBH
7 +EBH*L9
1 +EBH*L12
1 +EBC*L5
1 -DCX*L5
2 -DCX*L5*L13
4 +DBX*L15
7 +EBZ
2 +DBZ*L3
1 -DXZ
1 -DXZ*L12
17 +BXY
5 +BXY*L4
9 +BXY*L7
1 +CYZ*L9
10 +ECX
7 +ECX*L1
7 +ECX*L4
5 +ECX*L12
6 -DHX*L24
5 +DHR
15 +DHR*L13
20 +HYR
9 +HYR*L9
2 +DXR*L13
3 -HXR
11 -HXR*L13
4 -XYR*L5
5 -DYR*L5
2 +EYZ*L8
1 ear_DEC_ECX*L16
1 +DERo933/125*L1
18 +DERo933/125*L12
4 +DERo933/125*L14
4 ear_DBC_DBZ*L2
4 +DBRo933/125
1 +DBRo933/125*L4
5 +DBRo933/125*L7
1 +BCZo3*L2
9 -HXYo3*L20
1 quad_DEBX_Z*L4
1 quad_DEBX_Z*L7
1 quad_DEXY_Z*L16
6 quad_DXHC_YR*L0
1 quad_DXHY_R*L0
1 quad_DXHY_R*L6
6 quad_DXHY_R*L10
5 quad_DXRC_Y*L5
1 quad_EBRY_X*L5
1 quad_ERCY_X*L0
1 quad_BRCY_X*L7
```

Upper bound: `-27909295742349/62500000000000`.

## Leaf E3H2mm

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DHR +EHR -HZR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P BDECR -BDR
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBY -XEY
P XDEBR +XER
P XDECZ -XEZ
P XDEZR +XZR
P YDEBR +YER
P YDBZR +YZR
P ZDBHR -ZDR
P ZEBCR +ZER
M DEC XYZ +EYZ
```

### Strengthened triangle witnesses

```text
+ECZo3 X
+HXZo3 R
-DCRo933/125 XY
-DHZo3 R
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
4 L1*L6
1 L5*L10
2 L5*L22
17 L7*L16*L22
1 +EBH
9 +EBH*L17
3 +EBC*L5
7 +EBZ
3 +EBZ*L4
3 -DCZ*L0*L5
17 -DCZ*L5*L22
7 +DBZ
1 +DBZ*L3
1 -DXZ*L5
6 -CXZ
1 -CXZ*L4
4 +ECX
6 -DHR
17 -DHR*L18
17 -HZR
2 -HZR*L10
1 +HXR
2 +HXR*L18
2 +XZR*L6
15 +DZR*L6
2 +BHCo933/125*L16
4 ear_DEC_ECX*L16
4 -DHZo3*L0
8 -DCRo933/125*L17
17 -DCRo933/125*L19
9 +ECZo3*L1
2 +ECZo3*L4
4 +ECZo3*L8
2 +HXZo3*L23
2 quad_DZHC_XYR*L0
2 quad_DZRC_XY*L6
```

Upper bound: `-65515269155933/710937500000000`.

## Leaf E3H2mpmm

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DHR +EHR +HZR -HXY -DZR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P BDECR -BDR
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBY -XEY
P XDEBR +XER
P XDECZ -XEZ
P XDEZR +XZR
P YDEBR +YER
P YDBZR +YZR
P ZDEBR +ZER
M DEC XYZ +EYZ
M DRC XYZ +XYR
```

### Strengthened triangle witnesses

```text
-DCRo4427/500 XYZ
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L2*L9
1 L3*L20
2 L9*L19
2 L11*L20
4 L19*L20
8 +DEC*L1*L22
13 +EBR
4 +EBR*L23
4 -DCR*L2*L21
9 -BCR*L3
3 +CXR*L2
5 +ECX
4 -DZR
3 +DBR*L3
3 -ECR*L11
3 ear_DEC_DEZ
2 ear_DEC_DEZ*L8
2 ear_DEC_ECX*L16
3 ear_DEC_ECX*L22
2 ear_DBC_DBZ*L2
9 -DCRo4427/500*L0
5 ear_DRC_RCX
2 quad_DZXC_Y
```

Upper bound: `-24221553605331/62500000000000`.

## Leaf E3H2mpmpm

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DHR +EHR +HZR -HXY +DZR -XYR`.

### Sign trace

```text
P DEBZR +DBR
P DEHXR -DXR
P DEHYR -DYR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBY -XEY
P XDEBR +XER
P XDECZ -XEZ
P XDEZR +XZR
P YDEBR +YER
P YDBZR +YZR
P ZDEHR +ZER
M DEC XYZ +EYZ
```

### Strengthened triangle witnesses

```text
+DHCo933/125 XY
-DCRo933/125 XY
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
12 L1*L6
2 L2*L5
7 L5*L21
23 L0*L2*L9
8 L0*L2*L17
8 L0*L2*L21
4 L0*L7*L21
1 L0*L20*L25
7 L1*L6*L22
4 L1*L21*L22
1 L2*L2*L9
1 L2*L5*L18
4 L2*L9*L22
5 L2*L17*L21
6 L2*L21*L21
7 L3*L16*L24
6 L5*L10*L22
13 L6*L21*L25
3 L12*L19*L21
1 L15*L20*L20
2 L17*L22*L22
1 L21*L21*L25
4 L21*L22*L25
2 +DEB*L16
2 +DEB*L25
27 +DHC*L0*L25
10 +EBH*L9
28 +EBH*L21
24 -DCX*L5*L21
10 +BCX*L5
11 +EBZ*L7
2 +EBZ*L20
35 +EBZ*L23
7 +EBZ*L24
4 +DBZ*L3
15 +DBZ*L6
4 +DER*L15
9 +EBR
24 +EBR*L4
24 +EBR*L9
3 +EBR*L10
10 +EBR*L17
8 +EBR*L18
6 +EBR*L21
9 +BHR*L2
1 +BHR*L19
27 +BHR*L25
10 -DCR*L0*L2
1 -DCR*L0*L5
51 -DCR*L0*L11
16 -DCR*L0*L24
1 -DCR*L5*L21
15 -DCR*L6*L16
17 +XYZ
13 +XYZ*L7
33 +BXY
4 +BXY*L3
7 +BXY*L18
1 +BXY*L20
70 +BXY*L23
9 +CYZ
15 +CYZ*L7
3 +CYZ*L21
3 +CYZ*L23
6 +DXY*L19
70 +DXY*L22
3 -BZR*L6
10 +ECX
11 +ECX*L1
1 +ECX*L2
5 +ECX*L5
43 +ECX*L20
1 +ECX*L22
10 +DHX*L1
7 +DHX*L3
13 +DHX*L18
43 +DHX*L20
7 +DHX*L23
2 -DHZ*L2
21 -DHR*L25
23 +EHR
24 +EHR*L1
19 +EHR*L9
48 +HZR
3 +HZR*L2
12 +HZR*L11
1 +HZR*L24
1 +DZR*L0
5 +DZR*L2
3 +DZR*L7
13 +DZR*L10
95 -XYR
4 -XYR*L3
13 -XYR*L7
1 -XYR*L18
1 -XYR*L20
43 +DBR*L15
14 -DXR*L5
1 +HXR*L0
7 +HXR*L2
1 +HXR*L19
1 +HXR*L21
5 -EXR*L5
4 +EYZ*L22
6 ear_DEC_DEZ*L8
24 ear_DEC_DEZ*L22
6 ear_DEC_ECX*L16
1 ear_DEC_CDY*L6
6 ear_DEC_CDY*L16
15 ear_DEC_CDY*L0*L22
3 ear_DEC_CDY*L16*L21
20 +DHCo933/125*L0*L2
2 -DCRo933/125*L0*L21
2 -DCRo933/125*L16*L22
4 quad_DBRY_XZ*L6
27 quad_DZHY_X*L15
22 quad_DZHY_X*L22
1 quad_DRHY_X*L19
27 quad_DRHY_X*L25
1 quad_DZRY_X*L21
4 quad_DZRY_X*L22
```

Upper bound: `-5400680465673/15625000000000`.

## Leaf E3H2mpmpp

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DHR +EHR +HZR -HXY +DZR +XYR`.

### Sign trace

```text
P DEBZR +DBR
P DEHXR -DXR
P DEHYR -DYR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBY -XEY
P XDEBR +XER
P XDECZ -XEZ
P XDEZR +XZR
P YDEBR +YER
P YDBZR +YZR
P ZDEHR +ZER
M DEC XYZ +EYZ
```

### Strengthened triangle witnesses

```text
+BHYo933/125 XR
+DBRo3 Z
+DHYo3 X
+ECZo3 X
-DCRo933/125 XY
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L5*L24
10 L6*L15
5 L8*L15
3 L0*L2*L7
9 L0*L2*L24
1 L1*L6*L6
1 L2*L5*L24
9 L2*L6*L9
2 L2*L9*L12
2 L2*L13*L21
1 L3*L16*L22
7 L4*L6*L15
4 L4*L15*L21
4 L6*L12*L21
4 L7*L7*L13
7 L7*L11*L20
14 L7*L20*L24
5 -DCX*L5
2 -DCX*L5*L13
1 +BCX*L2
6 +DBZ
6 +DBZ*L3
1 +DBZ*L20
4 +DBZ*L22
27 +EBR
2 +EBR*L17
6 +EBR*L19
25 -DCR*L0*L24
13 -DCR*L2*L9
10 -DCR*L5*L11
13 -DCR*L5*L24
1 -DCR*L15*L17
7 -BCR*L3
1 -BCR*L7
5 -BCR*L18
23 -BCR*L24
23 -CXY*L22
1 -DXZ*L12
5 +BXY*L22
7 +DXY*L6
1 +DXY*L20
1 -CXZ*L13
1 -CXZ*L20
6 -CXZ*L22
9 +ECX
6 +ECX*L6
2 +ECX*L12
3 +ECX*L21
10 +ECX*L23
2 +DHX*L3
2 +DHX*L12
6 +DHX*L15
4 +DHX*L21
4 +EHR*L8
4 +EHR*L13
13 -HXY
24 -HXY*L23
5 +DZR
1 +DZR*L0
6 +DZR*L3
42 +XYR
4 +XYR*L4
21 +XYR*L7
7 -DXR*L15
7 +HXR*L15
4 +EXY*L5
1 +EYZ
1 connect_DEC_XYZ*L20
3 connect_DEC_XYZ*L22
3 connect_DBC_XYZ*L22
21 +DBRo3*L3
7 +DHYo3*L6
14 +DHYo3*L10
29 -DCRo933/125*L0
14 -DCRo933/125*L12
1 -DCRo933/125*L12*L19
1 +ECZo3*L1
3 +BHYo933/125*L22
3 quad_DEBR_Z*L7
1 quad_DEBR_Z*L16
10 quad_DEBR_Z*L24
1 quad_DBHY_XZR*L6
1 quad_ECYZ_X*L20
5 quad_ECYZ_X*L22
```

Upper bound: `-296117009879059/710937500000000`.

## Leaf E3H2mpp

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ -DHR +EHR +HZR +HXY`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P BDECR -BDR
P HDEXZ +HXZ
P HDEXR +HXR
P HDEYZ +HYZ
P HDEYR +HYR
P CDEBR +CER
P XDEBY -XEY
P XDEBR +XER
P XDECZ -XEZ
P XDEZR +XZR
P XDHYR +XYR
P YDEBR +YER
P YDBZR +YZR
P ZEBHR +ZER
M DEC XYZ +EYZ
```

### Strengthened triangle witnesses

```text
+BCYo3 X
+DBHo933/125 ZR
-DCRo933/125 XY
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
1 L1*L6
2 L4*L24
19 L8*L15
4 L13*L15
4 L0*L2*L21
1 L1*L6*L21
1 L2*L5*L21
3 L4*L12*L24
3 L7*L12*L12
14 L11*L13*L13
1 +DEB*L7
1 +DEB*L12
6 +DEC*L4*L24
1 +EBH
1 +EBH*L13
4 +EBH*L21
1 +EBH*L24
1 +DBX*L15
5 +BCX*L2
4 +EBR
2 +EBR*L7
1 -DCR*L0*L7
1 -DXZ*L12
6 +BXY*L6
21 +DXY
11 +DXY*L7
7 +DXY*L13
9 +ECX
4 +ECX*L12
5 +ECX*L14
1 -DHZ*L22
2 -DHR*L2
1 -DHR*L19
1 +HZR
12 +HXY
5 +HXY*L3
3 +HXY*L12
5 +EXY*L6
1 +BHCo933/125
1 +BHCo933/125*L12
4 ear_DEC_CDY*L8*L12
5 +DBHo933/125*L3
1 +DBHo933/125*L22
5 +DBHo933/125*L24
14 ear_DBC_BCX*L15
4 -DCRo933/125*L0
1 -DCRo933/125*L6*L16
14 +BCYo3*L11
1 quad_DEBY_Z*L7
1 quad_DEBY_Z*L10
1 quad_DZXC_Y*L13
5 quad_EBCY_X*L11
```

Upper bound: `-336627921179/781250000000`.

## Leaf E3H2pm

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DHR +EHR -XZR`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEBY -XEY
P XDECZ -XEZ
P XDBZR -XDR
P XDHCR +XHR
P XDCYR -XYR
P XEBCR +XER
P YEBCR +YER
P YBCZR +YZR
P ZDECR +ZER
M DEC XYZ +EYZ
M DHC XYR -DYR
M DHC XYR -HXY
M DHC XYR -HYR
```

### Strengthened triangle witnesses

```text
+DERo933/125 XZ
+ECZo3 X
+HCZo933/125 XR
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
5 L1*L6
2 L3*L6
1 L16*L21
4 L0*L2*L17
2 L1*L6*L20
6 L2*L5*L9
4 L2*L8*L21
6 L2*L8*L23
1 L2*L12*L19
10 L2*L17*L23
3 L4*L8*L23
21 L4*L11*L18
4 L5*L11*L21
3 L5*L19*L21
2 L6*L9*L16
7 L8*L21*L25
7 L9*L16*L22
10 L13*L17*L23
2 L13*L18*L23
2 L15*L16*L21
5 L15*L17*L20
4 +DEC*L1*L6
6 +DEC*L11*L16
3 +DEC*L16*L24
6 +DHC*L0*L19
21 +EBH
7 +EBH*L9
4 +EBH*L17
2 +EBH*L20
2 +EBH*L23
6 -DCX*L0*L5
29 -DCX*L0*L23
10 -DCX*L3*L4
1 +BCX*L2
12 +BCX*L19
4 +EBZ
16 +EBZ*L7
3 +EBZ*L22
4 +EBZ*L24
2 +DBZ*L3
10 +DBZ*L6
28 +DBZ*L11
4 +DBZ*L22
15 +DBZ*L24
12 +HCR*L11
8 -DCR*L0*L11
3 -DCR*L0*L24
2 -BCR*L6
3 -DXZ*L5
1 -DXZ*L7
31 -DXZ*L20
25 -DXZ*L23
2 +BXY*L3
18 +BXY*L18
30 +BXY*L23
14 +CYZ
2 +CYZ*L9
3 +CYZ*L22
13 +DXY*L19
24 -CXZ*L21
17 -BXR*L19
7 +CXR*L2
21 +ECX
7 +ECX*L1
2 +ECX*L12
5 +ECX*L19
14 +ECX*L20
4 +DHX
8 +DHX*L3
2 +DHX*L17
16 +DHX*L18
7 +DHX*L20
2 +DHX*L23
52 -XZR
6 -XZR*L3
3 -XZR*L4
12 -XZR*L7
10 +HXZ*L23
1 -ECR*L15
7 +DXR*L16
7 +DXR*L19
15 +DXR*L25
2 +EYZ*L8
21 -DYR
15 -DYR*L10
7 -DYR*L17
7 -DYR*L18
20 +BHCo933/125*L3
4 ear_DEC_DEZ*L4
13 ear_DEC_DEZ*L6
7 ear_DEC_DEZ*L8
10 ear_DEC_ECX*L6
17 ear_DEC_ECX*L16
7 ear_DEC_CDY*L9*L21
6 ear_DEC_CDY*L18*L21
6 connect_DEC_XYZ*L23
2 +DERo933/125*L4
3 +DERo933/125*L8
1 +DERo933/125*L19
1 ear_DBC_BCX*L4
1 connect_DBC_XYZ*L3
10 connect_DBC_XYZ*L23
7 ear_DHC_DHX*L0
2 connect_DHC_RYX*L2
5 connect_DHC_RYX*L19
3 +ECZo3*L6
2 +HCZo933/125*L23
27 quad_DBRC_XYZ*L15
6 quad_DHRY_X*L19
1 quad_DZRC_Y*L2
1 quad_EBCY_X*L23
14 quad_ECYZ_X*L23
```

Upper bound: `-1522778693261/31250000000000`.

## Leaf E3H2pp

Box: `E3`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX -DHZ +DHR +EHR +XZR`.

### Sign trace

```text
P DEBHR +DBR
P DEHZR +DZR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEXZ +HXZ
P HDEYZ +HYZ
P HDEZR -HZR
P CDEBR +CER
P XDEBY -XEY
P XDECZ -XEZ
P XEBCR +XER
P YEBCR +YER
P YBCZR +YZR
P ZDECR +ZER
M DEC XYZ +EYZ
M DHC XYR -DYR
M DHC XYR -HXY
M DHC XYR +DXR
M DHC XYR -HYR
M DHC XYR -HXR
M DHC XYR -XYR
```

### Strengthened triangle witnesses

```text
-DCRo3 Y
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
2 L0*L21
13 L1*L6
12 L2*L5
2 L6*L19
14 L6*L21
50 L19*L21
26 L0*L16*L23
82 L0*L19*L23
10 L2*L2*L9
6 L2*L2*L17
16 L2*L9*L18
9 L2*L9*L23
1 L5*L18*L22
9 L6*L8*L19
11 L10*L16*L21
8 L10*L16*L23
8 L10*L19*L21
11 +EBH
3 +EBH*L23
10 +DEX*L6
10 -DCX*L2*L5
9 -DCX*L5*L18
16 -DCX*L5*L23
18 +EBZ
12 +EBZ*L9
8 +EBZ*L19
1 -DCZ*L6
19 -DCZ*L0*L21
1 -DCZ*L6*L21
9 +DBZ
13 +DBZ*L3
8 +DBZ*L18
7 +DBZ*L20
82 +DBZ*L23
19 +HCR
15 +HCR*L8
1 +HCR*L19
3 -DCR*L2*L5
1 -DXZ*L0
42 -DXZ*L21
34 -CXZ
13 -CXZ*L1
7 -CXZ*L17
42 -CXZ*L20
8 -CXZ*L22
13 +CXR*L5
18 +ECX
12 +ECX*L1
10 +ECX*L2
10 +ECX*L16
16 +ECX*L18
9 +ECX*L23
4 +DHX
10 +DHX*L3
9 +DHX*L19
15 +DHX*L20
16 +DHX*L22
95 +XZR
7 +XZR*L17
55 +DXR
31 +DXR*L4
19 +DXR*L17
8 +DXR*L18
3 -DCRo3*L0*L2
3 quad_DXRC_Y*L5
26 quad_DZRC_XY*L0
7 quad_DZRC_XY*L16
6 quad_EBCZ_X*L2
```

Upper bound: `-45805067531329/62500000000000`.

## Leaf E3H3m

Box: `G`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ -DHR`.

### Sign trace

```text
P DEHXR -DXR
P DEHYR -DYR
P DEHZR -DZR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P BDECR -BDR
P HDBXR +HXR
P HDBYR +HYR
P HDBZR +HZR
P CDEBR +CER
P XDEBY -XEY
P XDEBR +XER
P XDECZ -XEZ
P XDEZR +XZR
P XDBHZ -XHZ
P YDEBR +YER
P YDBHZ -YHZ
P YDBZR +YZR
P ZDEBR +ZER
```

### Strengthened triangle witnesses

```text
+DECo4427/500 XYZ
+DHXo3 Z
```

The factor `+BHCo933/125`, when present, uses the two original right interior points R,S. The point S is not otherwise modeled. Quad factors encode their witnesses in their names; mesh factors use the four mesh types in the main proof.

### Fixed polynomial

```text
4 L0*L11
5 L1*L6
8 L2*L9
2 L9*L19
3 L11*L16
1 L4*L10*L19
1 L6*L11*L16
3 +EBH
3 -DCZ*L4
4 +XYZ
8 +ECX
6 +DHZ
3 +DHZ*L8
1 +DHZ*L11
1 +BHCo933/125
3 +DECo4427/500*L4
1 ear_DBC_DBZ*L10
4 connect_DBC_XYZ
3 +DHXo3*L17
2 +DHXo3*L18
8 quad_DZXC_Y
3 quad_DZXC_Y*L4
1 quad_BHCX_R*L19
```

Upper bound: `-62049117567/125000000000`.

## Leaf E3H3p

Box: `G`.

Assumptions: `+ECY +ECZ +ECX +DHY +DHX +DHZ +DHR`.

### Sign trace

```text
P DEBHR +DBR
P EDHCX +EHX
P EDHCY +EHY
P EDHCZ +EHZ
P HDEBR -HER
P CDEBR +CER
P XDEBY -XEY
P XDECZ -XEZ
P XDBHZ -XHZ
P XEBCR +XER
P YDBHZ -YHZ
P YEBCR +YER
P YBCZR +YZR
P ZEBCR +ZER
```

Exclusion: `four DHC XYZR`.
