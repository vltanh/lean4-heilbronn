# Two lower points, one upper point and one side-cap point: complete tables

Read this appendix with N6_TWO_LOWER_SIDE.md. Every node inherits its
parent signs, adds its printed assumptions, and applies each elementary
deduction in order. Every leaf has a complete exact contradiction.
No external certificate or numerical discovery data is a premise.

## Node X0000

Case: `IR/CS--`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ-, HPQ-, EPQ-, FPQ-`.

```n6x-trace
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu ECFPS EPS 1
plu ECFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FCEPS FPS 1
plu FCEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
plu PCEQS PQS -1
plu PCHQR PQR -1
```

Polynomial: `C`; `6` terms; upper bound `-32509817911/44815000000`.

```n6x-witnesses
right_py_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 11 T_BCS+; 2 10 T_CES-; 3 76 right_py_S
4 3 L26*L5; 5 8 L27*L4; 6 86 L4*right_y_S
```

## Node X0001

Case: `IR/CO--`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ+, HPQ-, EPQ-, FPQ-`.

```n6x-trace
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu ECFPS EPS 1
plu ECFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FCEPS FPS 1
plu FCEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
```

Polynomial: `C`; `5` terms; upper bound `-89371891609/89630000000`.

```n6x-witnesses
right_py_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 10 T_BCS+; 2 10 T_CES-; 3 77 right_py_S
4 10 L26*L5; 5 87 L4*right_y_S
```

## Node X0002

Case: `IR/CO+-`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ+, HPQ-, EPQ+, FPQ-`.

```n6x-trace
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu ECFPS EPS 1
plu ECFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FCEPS FPS 1
plu FCEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
plu PACEQ PAE 1
plu PACES PAS 1
plu PAEQS PQS 1
plu PBCEQ PBE 1
plu PBCES PBS 1
plu QACEP QAE 1
plu QACES QAS 1
plu QBCEP QBE 1
plu QBCES QBS 1
```

Polynomial: `C`; `5` terms; upper bound `-89371891609/89630000000`.

```n6x-witnesses
right_py_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 10 T_BCS+; 2 10 T_CES-; 3 77 right_py_S
4 10 L26*L5; 5 87 L4*right_y_S
```

## Node X0003

Case: `IR/CO++`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ+, HPQ-, EPQ+, FPQ+`.

```n6x-trace
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu ECFPS EPS 1
plu ECFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FCEPS FPS 1
plu FCEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
plu PACEQ PAE 1
plu PACES PAS 1
plu PACFQ PAF 1
plu PAEQS PQS 1
plu PBCEQ PBE 1
plu PBCES PBS 1
plu PBCFQ PBF 1
plu QACEP QAE 1
plu QACES QAS 1
plu QACFP QAF 1
plu QBCEP QBE 1
plu QBCES QBS 1
plu QBCFP QBF 1
```

Polynomial: `C`; `19` terms; upper bound `-896257557075093/1606707380000000`.

```n6x-witnesses
right_py_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 2 DX_PQ; 2 5 T_AFQ+; 3 5 T_APQ+
4 8 T_CHP+; 5 5 T_EPQ+; 6 5 T_FPQ+
7 18 right_py_S; 8 5 DX_PQ*L0; 9 15 DX_PQ*L19
10 5 DX_PQ*L6; 11 1 L0*low_Q; 12 3 L1*L16
13 8 L11*L13; 14 8 L11*L4; 15 5 L14*cf
16 15 L16*low_Q; 17 8 L26*L5; 18 10 L4*right_y_S
19 8 L5*L7
```

## Node X0004

Case: `IR/MH--`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ-, HPQ+, EPQ-, FPQ-`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu EBCPQ EBQ -1
plu EBFPS EPS 1
plu EBFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FBCPQ FBQ -1
plu FBEPS FPS 1
plu FBEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu PABEQ PAE 1
plu PABFQ PAF 1
plu PACES PAS 1
plu PAEQS PQS -1
plu PBCES PBS 1
plu PBCHR PBR 1
plu QABEP QAE 1
plu QABFP QAF 1
plu QACES QAS 1
plu QBCES QBS 1
```

Polynomial: `M1`; `54` terms; upper bound `-3433623018549568978622940532691405035828837/50194093738762603402042373967637200000000000`.

```n6x-witnesses
C_AEH_2 PQ
C_AHQ_1 P
C_CHP_1 Q
Q_BCEH_1 Q
Q_EFHP_1 Q
right_py_S -
right_x_S -
```

```n6x-squares
```

```n6x-sum
1 2 C_AHQ_1; 2 4 T_ABC+; 3 7 T_APQ-
4 5 T_CES-; 5 7 T_CHQ+; 6 2 T_EPQ-
7 3 T_FPQ-; 8 1 right_py_S; 9 2 C_AEH_2*L12
10 1 C_CHP_1*DX_PQ; 11 5 C_CHP_1*L12; 12 9 DX_PQ*L0
13 10 DX_PQ*L15; 14 3 DX_PQ*L6; 15 1 DX_PQ*Q_BCEH_1
16 3 DX_PQ*Q_EFHP_1; 17 2 DX_PQ*T_EHP+; 18 1 DX_PQ*low_P
19 2 L0*L5; 20 6 L1*T_FPQ-; 21 2 L11*L4
22 1 L11*L8; 23 1 L11*T_BCF+; 24 1 L12*L3
25 6 L12*T_EPQ-; 26 1 L12*ea; 27 8 L12*low_P
28 1 L13*T_CHQ+; 29 6 L14*T_AFQ+; 30 6 L14*T_APQ-
31 6 L16*T_FPQ-; 32 6 L18*T_FPQ-; 33 3 L18*cf
34 3 L19*L25; 35 1 L19*Px; 36 3 L19*right_x_S
37 6 L26*L5; 38 1 L4*T_AFQ+; 39 1 L5*T_BHQ-
40 9 L8*T_APQ-; 41 2 L9*T_EPQ-; 42 6 T_AFQ+*low_Q
43 6 T_APQ-*low_P; 44 6 T_APQ-*low_Q; 45 1 T_CHQ+*fb
46 1 T_EPQ-*cf; 47 5 he*right_x_S; 48 2 C_AEH_2*L12*Px
49 2 DX_PQ*T_AEH+*cf; 50 5 L0*L2*low_P; 51 7 L1*L12*fb
52 4 L11*L12*L2; 53 1 L4*L9*ea; 54 1 L5*L8*he
```

## Node X0005

Case: `IR/MH-+`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ-, HPQ+, EPQ-, FPQ+`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu EBCPQ EBQ -1
plu EBFPS EPS 1
plu EBFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FBEPS FPS 1
plu FCEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu PABEQ PAE 1
plu PACES PAS 1
plu PAEQS PQS -1
plu PBCES PBS 1
plu PBCHR PBR 1
plu QABEP QAE 1
plu QACES QAS 1
plu QBCES QBS 1
```

Polynomial: `M1`; `40` terms; upper bound `-1802639950171877296666547882180565861369/2060386008199930357409944952800000000000`.

```n6x-witnesses
C_ABH_1 P
Q_CSHP_1 Q
Q_EHPS_1 Q
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 2 C_ABH_1; 2 9 T_ABC+; 3 32 T_APQ-
4 1 T_BCS+; 5 15 T_CES-; 6 17 T_CHQ+
7 6 T_EPQ-; 8 22 right_py_S; 9 31 DX_PQ*L0
10 22 DX_PQ*L15; 11 12 DX_PQ*L26; 12 1 DX_PQ*Px
13 4 DX_PQ*Q_CSHP_1; 14 18 DX_PQ*Q_EHPS_1; 15 6 DX_PQ*Right_support
16 4 DX_PS*T_CHQ+; 17 11 DX_QS*L14; 18 7 L0*L5
19 9 L11*L4; 20 2 L11*Px; 21 21 L12*L15
22 4 L12*Q_CSHP_1; 23 1 L12*T_BCF+; 24 18 L12*T_HPQ+
25 18 L12*T_PQS-; 26 1 L12*low_P; 27 4 L13*T_ABC+
28 1 L14*right_x_S; 29 13 L18*L25; 30 18 L24*T_EPQ-
31 32 L26*L5; 32 29 L4*Right_support; 33 4 L4*T_APS-
34 4 L4*T_EHS+; 35 4 L4*T_PQS-; 36 11 he*right_x_S
37 6 DX_PQ*L2*L26; 38 6 DX_PQ*L2*right_y_S; 39 4 L0*L12*L3
40 4 L25*L4*ea
```

## Node X0006

Case: `IR/MH++`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ-, HPQ+, EPQ+, FPQ+`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu EBFPS EPS 1
plu ECFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FBEPS FPS 1
plu FCEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu PBCES PBS 1
plu PBCHR PBR 1
```

Split: `upper`.
Children: `HCEF---+=X0007; HCEF--+-=X0008; HCEF--++=X0013; HCEF-+--=X0018; HCEF-++-=X0019; HCEF-+++=X0020; HCEF+---=X0021; HCEF+--+=X0022; HCEF+-++=X0023; HCEF++--=X0036; HCEF++-+=X0037; HCEF+++-=X0038`.

## Node X0007

Case: `IR/MH++/HCEF---+`.
Parent: `X0006`.
Assumptions: `HRS-, CRS-, ERS-, FRS+`.

```n6x-trace
```

Exclusion: `given ERS -1`.

## Node X0008

Case: `IR/MH++/HCEF--+-`.
Parent: `X0006`.
Assumptions: `HRS-, CRS-, ERS+, FRS-`.

```n6x-trace
plu FAERS FAR 1
plu FBERS FBR 1
plu FBHPR FPR 1
plu FCERS FCR 1
plu FCHQR FQR 1
plu RACFS RAS 1
plu RBCFS RBS 1
plu RBFPS RPS 1
plu RCFQS RQS 1
```

Split: `sign PQR`.
Children: `PQR+=X0009; PQR-=X0012`.

## Node X0009

Case: `IR/MH++/HCEF--+-/PQR+`.
Parent: `X0008`.
Assumptions: `PQR+`.

```n6x-trace
```

Split: `sign PQS`.
Children: `PQS+=X0010; PQS-=X0011`.

## Node X0010

Case: `IR/MH++/HCEF--+-/PQR+/PQS+`.
Parent: `X0009`.
Assumptions: `PQS+`.

```n6x-trace
```

Polynomial: `M1`; `102` terms; upper bound `-4079404488507563069131748109613947622552172241133/2769710092504920455724698195534220696000000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_CHP_1 Q
C_CPS_1 Q
C_EFS_1 R
Q_BCSP_1 Q
Q_CSEF_1 R
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 4 C_EFS_1; 2 7 T_AHP-; 3 2 T_BHP+
4 23 T_CHQ+; 5 41 T_CPQ-; 6 36 T_EFH+
7 25 T_PQS+; 8 4 Vlow; 9 45 right_py_S
10 9 C_ACH_2*DX_PQ; 11 11 C_ACH_2*L11; 12 11 C_CHP_1*DX_PQ
13 60 C_CPS_1*L17; 14 1 DX_PQ*L7; 15 3 DX_PQ*T_ABC+
16 11 L1*Vlow; 17 16 L10*L25; 18 15 L10*T_CPQ-
19 11 L11*L12; 20 9 L11*L17; 21 10 L11*L2
22 7 L11*L4; 23 15 L11*L8; 24 5 L11*Vlow
25 2 L12*L3; 26 12 L12*T_CPQ-; 27 86 L12*T_CQS-
28 11 L12*T_HPQ+; 29 56 L14*L25; 30 15 L14*T_BCQ+
31 15 L14*T_CHQ+; 32 15 L16*T_CES-; 33 15 L16*Vlow
34 26 L17*Q_BCSP_1; 35 31 L17*T_ABP+; 36 3 L17*T_AHP-
37 15 L18*T_ABP+; 38 1 L18*right_py_S; 39 4 L19*L25
40 15 L19*T_ABC+; 41 1 L2*L25; 42 72 L2*T_PQS+
43 24 L24*T_AHP-; 44 21 L24*T_CHQ+; 45 94 L24*T_CPQ-
46 181 L24*right_py_S; 47 42 L25*L26; 48 13 L25*L6
49 8 L25*T_APQ-; 50 1 L25*ea; 51 70 L26*right_x_S
52 21 L27*T_EFH+; 53 8 L4*L5; 54 10 L4*T_CHQ+
55 1 L4*fb; 56 23 L4*right_y_S; 57 20 L6*T_EFH+
58 138 L6*right_py_S; 59 6 L7*L9; 60 9 L7*cf
61 1 L7*he; 62 14 L7*right_x_S; 63 3 Px*T_CHQ+
64 15 Px*right_py_S; 65 1 Px*right_x_S; 66 41 Q_CSEF_1*he
67 72 T_PQS+*cf; 68 72 T_PQS+*fb; 69 14 Vlow*right_y_S
70 15 fb*right_py_S; 71 5 DX_PQ*L10*right_x_S; 72 6 DX_PQ*ha*right_x_S
73 15 DX_PQ*he*right_x_S; 74 2 L0*L16*L25; 75 28 L0*L17*Px
76 15 L1*L12*L18; 77 3 L10*L12*L3; 78 2 L10*L14*L25
79 5 L10*L16*L25; 80 21 L11*L11*fb; 81 13 L11*L18*L24
82 21 L11*L2*right_y_S; 83 10 L11*L4*L4; 84 14 L11*L4*right_y_S
85 21 L11*L4*up_S; 86 21 L11*fb*right_y_S; 87 2 L11*low_P*right_x_S
88 3 L12*L2*T_AEH+; 89 15 L12*L25*ea; 90 2 L18*L24*L25
91 2 L18*L25*L26; 92 2 L18*L5*he; 93 13 L18*T_AEH+*right_x_S
94 2 L18*right_x_S*up_S; 95 15 L2*L4*right_y_S; 96 181 L24*L4*right_y_S
97 41 L25*L6*he; 98 20 L26*L5*he; 99 21 L27*L7*cf
100 138 L4*L6*right_y_S; 101 15 L4*fb*right_y_S; 102 21 L9*he*he
```

## Node X0011

Case: `IR/MH++/HCEF--+-/PQR+/PQS-`.
Parent: `X0009`.
Assumptions: `PQS-`.

```n6x-trace
plu PABQS PAS 1
plu QACPS QAS 1
plu QBCPS QBS 1
```

Polynomial: `M1`; `153` terms; upper bound `-10356298038809941164280079567235405647163272388487/1602697413078689926627213000786655796000000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_AHQ_1 P
C_EFS_1 R
Q_BCFH_1 Q
Q_CSEF_1 R
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 97 T_ABC+; 2 314 T_AHP-; 3 242 T_APQ-
4 87 T_BCS+; 5 3 T_BHP+; 6 123 T_CES-
7 77 T_EFH+; 8 393 T_PQS-; 9 13 right_py_S
10 52 C_ACH_2*L4; 11 893 C_AHQ_1*DX_PQ; 12 266 C_EFS_1*L4
13 5 C_EFS_1*right_y_S; 14 360 DX_PQ*L11; 15 168 DX_PQ*L12
16 269 DX_PQ*L25; 17 90 DX_PQ*L26; 18 782 DX_PQ*T_ABC+
19 231 DX_PQ*T_AHP-; 20 704 DX_PQ*T_BHP+; 21 778 DX_PQ*T_CHQ+
22 47 DX_PQ*T_EFH+; 23 701 DX_PQ*T_PQS-; 24 156 DX_PS*T_CHQ+
25 449 DX_QS*T_ABP+; 26 701 DX_QS*T_APQ-; 27 47 DX_QS*T_EFH+
28 221 L1*T_CHQ+; 29 258 L10*T_BCS+; 30 145 L11*L16
31 24 L11*L18; 32 45 L11*L2; 33 243 L11*L4
34 96 L11*L8; 35 16 L11*T_EFH+; 36 8 L11*ea
37 9 L11*right_y_S; 38 62 L12*L15; 39 34 L12*L5
40 18 L12*L7; 41 864 L12*T_BHP+; 42 156 L12*T_CHQ+
43 47 L12*T_EFH+; 44 1150 L12*T_PQS-; 45 111 L12*low_Q
46 266 L13*T_CES-; 47 15 L16*L25; 48 81 L16*T_CES-
49 303 L16*right_py_S; 50 48 L18*L25; 51 40 L18*T_ABP+
52 40 L18*T_BHP+; 53 317 L19*T_ABC+; 54 368 L19*T_BCS+
55 565 L2*T_APQ-; 56 214 L24*T_ABC+; 57 203 L25*L26
58 127 L25*Px; 59 37 L25*Q_BCFH_1; 60 19 L25*Right_support
61 213 L25*T_ACQ+; 62 81 L25*T_EPQ+; 63 48 L25*ha
64 44 L25*low_P; 65 20 L26*L7; 66 52 L26*Q_CSEF_1
67 248 L26*T_BHP+; 68 5 L27*T_BCS+; 69 116 L3*T_AHP-
70 437 L4*T_AQS-; 71 266 L5*T_BCS+; 72 159 L6*T_CES-
73 2 L7*Px; 74 164 L7*Q_CSEF_1; 75 297 L7*T_CHQ+
76 16 L7*T_EFH+; 77 159 L7*right_py_S; 78 238 L7*right_x_S
79 1012 Px*T_ABC+; 80 160 Px*T_BHP+; 81 588 Px*T_CHQ+
82 588 Px*T_CPQ-; 83 414 Px*right_py_S; 84 62 T_ABC+*up_S
85 156 T_AHP-*up_S; 86 368 T_APQ-*up_S; 87 166 T_CES-*up_S
88 297 T_CHQ+*right_y_S; 89 266 cf*right_py_S; 90 192 DX_PQ*DX_PQ*L0
91 701 DX_PQ*DX_PQ*L26; 92 2086 DX_PQ*L0*L12; 93 1174 DX_PQ*L0*Px
94 1219 DX_PQ*L0*right_x_S; 95 116 DX_PQ*L11*L2; 96 219 DX_PQ*L11*L25
97 778 DX_PQ*L11*L4; 98 781 DX_PQ*L12*L26; 99 368 DX_PQ*L15*L26
100 77 DX_PQ*L18*L4; 101 701 DX_PQ*L19*right_x_S; 102 63 DX_PQ*L25*T_AEH+
103 384 DX_PQ*L5*L7; 104 161 DX_PS*L0*L12; 105 166 DX_PS*L25*L6
106 149 L0*L12*L27; 107 40 L0*L12*low_Q; 108 277 L0*L2*low_Q
109 437 L0*L2*right_x_S; 110 62 L0*L25*L26; 111 62 L0*L26*Px
112 62 L0*L26*right_x_S; 113 334 L0*L5*Px; 114 52 L0*L5*right_x_S
115 650 L0*Px*Px; 116 241 L0*Px*right_x_S; 117 221 L1*L11*L17
118 16 L11*L11*L2; 119 16 L11*L11*fb; 120 115 L11*L16*L16
121 297 L11*L16*L26; 122 40 L11*L19*L3; 123 748 L11*L2*Px
124 209 L11*L24*L4; 125 197 L11*L26*L5; 126 11 L11*L26*L9
127 588 L11*Px*T_BCF+; 128 11 L11*fb*up_S; 129 139 L12*L18*Px
130 369 L12*L26*low_P; 131 449 L14*L16*L25; 132 116 L15*L26*L3
133 588 L15*Px*right_x_S; 134 68 L19*L25*L5; 135 368 L19*L26*Px
136 139 L2*L2*L25; 137 47 L2*L25*ha; 138 47 L25*L26*L9
139 139 L25*L5*Px; 140 139 L25*Px*T_BCF+; 141 139 L25*Px*low_P
142 47 L25*cf*right_y_S; 143 5 L26*L26*fb; 144 679 L26*L5*Px
145 159 L26*L5*he; 146 53 L26*L5*low_Q; 147 213 L26*L5*up_S
148 42 L26*L7*cf; 149 213 L26*L7*right_x_S; 150 52 L4*he*right_x_S
151 395 L5*L7*Px; 152 175 L7*L7*L9; 153 19 L7*Px*right_x_S
```

## Node X0012

Case: `IR/MH++/HCEF--+-/PQR-`.
Parent: `X0008`.
Assumptions: `PQR-`.

```n6x-trace
plu PABQR PAR 1
plu PABRS PAS 1
plu PAQRS PQS -1
plu PBEQR PER -1
plu QACPR QAR 1
plu QACPS QAS 1
plu QBCPR QBR 1
plu QBCPS QBS 1
plu QCEPR QER -1
plu RCEHP REH 1
```

Polynomial: `M1`; `208` terms; upper bound `-7978638261622910145626402690443189685432764941534383/9610094228302440538042094595316945483975200000000000`.

```n6x-witnesses
C_ABH_1 P
C_ACH_2 PQ
C_AHQ_1 P
C_AHR_2 PQ
C_EPR_1 Q
C_EPS_2 QR
Q_ABQH_1 P
Q_EHPR_1 Q
Q_FHPR_1 Q
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 30 C_ABH_1; 2 258 C_EPS_2; 3 16 T_ABC+
4 11 T_AHP-; 5 288 T_BCS+; 6 15 T_BHP+
7 1 T_CER+; 8 5 T_CHQ+; 9 56 T_CRS-
10 18 T_EFH+; 11 3 T_FRS-; 12 8 T_PQR-
13 1 C_ACH_2*DX_PQ; 14 1 C_AHQ_1*L15; 15 3 C_AHR_2*L14
16 13 C_EPR_1*low_Q; 17 1 C_EPS_2*L13; 18 2 C_EPS_2*L14
19 3 C_EPS_2*L24; 20 3 C_EPS_2*L6; 21 1 C_EPS_2*he
22 57 DX_PQ*L26; 23 67 DX_PQ*L7; 24 1 DX_PQ*T_PQS-
25 6 DX_PQ*T_QRS-; 26 4 DX_PQ*he; 27 1 DX_PQ*right_x_S
28 1 DX_PR*T_CHQ+; 29 1 DX_PS*L12; 30 4 DX_PS*T_AHP-
31 3 DX_PS*T_CRS-; 32 8 DX_PS*T_EFH+; 33 4 DX_QR*L0
34 1 DX_QR*L11; 35 57 DX_QR*L26; 36 2 DX_QR*T_APQ-
37 4 DX_QR*T_EPQ+; 38 6 DX_QR*T_PQR-; 39 68 DX_QS*L7
40 1 L0*L25; 41 15 L0*L5; 42 4 L1*T_ERS+
43 44 L11*L2; 44 1 L11*L4; 45 1 L11*L7
46 20 L11*L8; 47 3 L11*T_AQR-; 48 1 L11*up_R
49 10 L12*L23; 50 5 L12*L3; 51 1 L12*low_Q
52 3 L12*right_x_S; 53 10 L14*T_AQR-; 54 1 L14*T_CRS-
55 12 L14*T_EQR+; 56 5 L14*T_FRS-; 57 258 L15*L25
58 5 L15*T_CER+; 59 4 L16*T_CER+; 60 5 L18*T_ERS+
61 6 L2*L25; 62 8 L20*T_AHP-; 63 8 L20*T_BCS+
64 15 L20*T_EPQ+; 65 2 L21*L7; 66 4 L21*T_EFH+
67 6 L21*T_PQR-; 68 5 L22*L25; 69 1 L22*Px
70 1 L22*T_BCS+; 71 3 L22*T_BHP+; 72 18 L22*T_EPQ+
73 5 L22*T_PQS-; 74 8 L23*T_CES-; 75 52 L23*right_x_S
76 3 L24*T_ABC+; 77 7 L24*T_APQ-; 78 1 L24*T_PQR-
79 1 L25*Px; 80 7 L25*Right_support; 81 5 L25*T_ACR+
82 1 L25*T_BPQ-; 83 3 L25*T_PRS-; 84 2 L25*low_Q
85 343 L26*L5; 86 5 L26*L9; 87 202 L26*Px
88 1 L26*Q_EHPR_1; 89 1 L26*T_ABC+; 90 3 L26*T_APQ-
91 1 L26*T_BQR-; 92 68 L27*L7; 93 3 L27*T_CHQ+
94 5 L27*T_PQR-; 95 5 L3*T_FRS-; 96 2 L4*Px
97 1 L4*T_APR-; 98 8 L4*T_ARS-; 99 3 L5*T_APQ-
100 3 L6*T_CRS-; 101 1 L6*T_FRS-; 102 10 L6*T_PQR-
103 1 L7*L7; 104 9 L7*L9; 105 3 L7*T_ACE+
106 3 L7*T_AEH+; 107 3 L7*T_BCQ+; 108 1 L7*T_BHS-
109 3 L7*T_BPQ-; 110 5 L7*cf; 111 1 L7*low_P
112 66 L7*up_S; 113 5 L8*T_FRS-; 114 6 L8*T_HRS-
115 4 Px*T_CER+; 116 1 Q_ABQH_1*right_x_S; 117 2 Q_FHPR_1*right_x_S
118 1 T_ABC+*right_y_S; 119 11 T_APQ-*up_R; 120 11 T_APR-*low_Q
121 2 T_BHP+*right_y_S; 122 2 T_BHP+*up_S; 123 2 T_CER+*fb
124 3 T_CER+*right_y_S; 125 2 T_CHQ+*right_y_S; 126 4 T_CRS-*ha
127 2 T_EFH+*cf; 128 1 T_EPQ+*low_P; 129 3 T_EPQ+*right_x_S
130 9 T_ERS+*fb; 131 5 T_FRS-*low_P; 132 11 T_PQR-*ea
133 3 T_PQR-*he; 134 4 DX_PQ*DX_PQ*ea; 135 3 DX_PQ*L0*up_S
136 1 DX_PQ*L10*up_R; 137 1 DX_PQ*L20*L7; 138 2 DX_PQ*L26*L6
139 2 DX_PR*L11*L7; 140 2 DX_PR*L11*fb; 141 6 DX_PR*L12*right_y_S
142 1 DX_PR*L14*L26; 143 3 DX_PR*L7*L7; 144 4 DX_PS*L11*L8
145 2 DX_QR*DX_QS*L14; 146 4 DX_QR*L0*up_S; 147 2 DX_QR*L11*L6
148 5 DX_QR*L12*T_AEH+; 149 4 DX_QR*L16*L26; 150 4 DX_QR*L26*ha
151 3 DX_QR*L26*low_P; 152 6 DX_QR*L7*Px; 153 1 DX_QR*L7*low_P
154 1 DX_QS*L11*L15; 155 7 DX_QS*L13*L7; 156 2 DX_QS*L14*L14
157 3 L0*L11*L20; 158 4 L0*L20*L7; 159 1 L0*L5*Px
160 7 L0*L5*up_R; 161 4 L0*L6*right_x_S; 162 2 L1*L17*right_x_S
163 12 L11*L12*L20; 164 2 L11*L14*L2; 165 1 L11*L16*L22
166 4 L11*L16*L26; 167 2 L11*L2*up_R; 168 1 L11*L22*Px
169 2 L11*L4*right_y_S; 170 3 L11*L6*Px; 171 4 L12*L12*L27
172 2 L12*L14*L25; 173 2 L12*L17*L23; 174 3 L12*L18*L27
175 2 L12*L18*low_Q; 176 5 L12*L2*L23; 177 1 L12*cf*right_y_S
178 7 L13*L7*L9; 179 1 L14*L26*L5; 180 4 L14*right_x_S*up_R
181 2 L15*L20*L26; 182 1 L15*L3*he; 183 4 L16*L19*L25
184 5 L16*L22*L25; 185 4 L16*L25*ha; 186 6 L16*L7*Px
187 3 L16*he*up_S; 188 1 L18*L21*right_x_S; 189 5 L18*L25*L6
190 1 L18*L4*Px; 191 5 L18*L4*right_y_S; 192 5 L20*L26*Px
193 6 L20*L7*L9; 194 1 L21*L7*fb; 195 2 L22*L3*L4
196 1 L22*L7*L9; 197 5 L22*Px*fb; 198 5 L22*fb*fb
199 4 L23*L26*L5; 200 4 L23*Px*right_x_S; 201 4 L23*he*right_x_S
202 3 L24*L26*L5; 203 1 L26*L5*ha; 204 5 L26*L8*L9
205 2 L3*he*right_x_S; 206 1 L5*L7*low_Q; 207 1 L7*fb*up_S
208 2 L9*L9*he
```

## Node X0013

Case: `IR/MH++/HCEF--++`.
Parent: `X0006`.
Assumptions: `HRS-, CRS-, ERS+, FRS+`.

```n6x-trace
plu RACHS RAS 1
plu RBCHS RBS 1
plu RBHPS RPS 1
plu RCHQS RQS 1
```

Split: `sign PQR`.
Children: `PQR+=X0014; PQR-=X0017`.

## Node X0014

Case: `IR/MH++/HCEF--++/PQR+`.
Parent: `X0013`.
Assumptions: `PQR+`.

```n6x-trace
```

Split: `sign PQS`.
Children: `PQS+=X0015; PQS-=X0016`.

## Node X0015

Case: `IR/MH++/HCEF--++/PQR+/PQS+`.
Parent: `X0014`.
Assumptions: `PQS+`.

```n6x-trace
```

Polynomial: `M1`; `32` terms; upper bound `-5656735242495210363740721928483747881/58552747810020851681228817400000000000`.

```n6x-witnesses
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 2 T_ABC+; 2 7 T_AHP-; 3 9 T_CHQ+
4 7 T_CPQ-; 5 16 T_EFH+; 6 16 T_PQS+
7 95 right_py_S; 8 2 L1*L4; 9 7 L11*L12
10 9 L11*L17; 11 10 L11*L4; 12 26 L12*T_CQS-
13 18 L14*L25; 14 13 L14*T_CHQ+; 15 13 L14*T_CPQ-
16 26 L17*T_CQS-; 17 1 L18*L25; 18 26 L18*T_CPQ-
19 26 L18*T_PQS+; 20 1 L18*right_x_S; 21 26 L24*T_CPQ-
22 14 L25*L26; 23 14 L26*right_x_S; 24 5 L27*L4
25 26 L4*T_PQS+; 26 95 L4*right_y_S; 27 16 L9*he
28 26 T_CPQ-*low_Q; 29 26 T_PQS+*low_Q; 30 13 L11*L14*L17
31 13 L11*L14*L4; 32 13 L14*L14*L17
```

## Node X0016

Case: `IR/MH++/HCEF--++/PQR+/PQS-`.
Parent: `X0014`.
Assumptions: `PQS-`.

```n6x-trace
plu PABQS PAS 1
plu QACPS QAS 1
plu QBCPS QBS 1
```

Polynomial: `M1`; `138` terms; upper bound `-500264006019512919035307906380168740943903419521/373962729718360982879683033516886352400000000000`.

```n6x-witnesses
C_ABH_1 P
Q_ABQH_1 P
right_py_S -
right_x_S -
```

```n6x-squares
```

```n6x-sum
1 217 T_AHP-; 2 152 T_BCS+; 3 10 T_BHP+
4 184 T_CES-; 5 77 T_CHQ+; 6 25 T_EFH+
7 230 T_PQS-; 8 117 C_ABH_1*Px; 9 96 DX_PQ*DX_PQ
10 71 DX_PQ*L11; 11 171 DX_PQ*L12; 12 119 DX_PQ*L26
13 10 DX_PQ*L7; 14 104 DX_PQ*T_ABC+; 15 648 DX_PQ*T_AHP-
16 468 DX_PQ*T_BHP+; 17 422 DX_PQ*T_CHQ+; 18 8 DX_PQ*T_EFH+
19 307 DX_PQ*T_HPQ+; 20 383 DX_PQ*T_PQS-; 21 235 DX_PS*T_ABC+
22 164 DX_PS*T_CHQ+; 23 322 DX_QS*T_ABP+; 24 76 DX_QS*T_APQ-
25 89 L0*L25; 26 53 L0*right_x_S; 27 160 L11*L16
28 16 L11*L25; 29 37 L11*L26; 30 95 L11*L4
31 5 L11*L6; 32 24 L11*L8; 33 128 L11*Px
34 80 L12*L25; 35 2 L12*L7; 36 399 L12*T_BHP+
37 69 L12*T_BPQ-; 38 180 L12*T_CPQ-; 39 220 L12*T_PQS-
40 6 L13*cf; 41 26 L14*L25; 42 22 L15*T_BCS+
43 71 L16*L25; 44 385 L16*T_ABC+; 45 182 L16*T_CES-
46 5 L18*L25; 47 8 L19*right_py_S; 48 345 L2*T_CHQ+
49 396 L2*T_PQS-; 50 177 L2*right_py_S; 51 377 L24*T_APQ-
52 43 L25*L7; 53 329 L25*Px; 54 162 L25*T_BCF+
55 74 L25*T_BPQ-; 56 45 L25*T_CPQ-; 57 247 L25*T_HPQ+
58 1 L26*L7; 59 93 L26*Q_ABQH_1; 60 69 L26*T_ABC+
61 111 L26*T_APQ-; 62 125 L26*T_BHP+; 63 18 L26*T_EPQ+
64 481 L26*right_py_S; 65 107 L3*T_CES-; 66 148 L4*T_AQS-
67 45 L4*T_PQS-; 68 43 L5*T_ABC+; 69 45 L5*T_APQ-
70 8 L6*T_CHQ+; 71 24 L7*L9; 72 227 L7*right_x_S
73 742 Px*T_ABC+; 74 394 Px*T_APQ-; 75 45 Px*T_BCS+
76 163 T_BHP+*right_x_S; 77 1 T_CHQ+*he; 78 8 T_EFH+*low_Q
79 76 DX_PQ*DX_PQ*T_AEH+; 80 91 DX_PQ*L0*L12; 81 562 DX_PQ*L0*L2
82 340 DX_PQ*L0*L5; 83 111 DX_PQ*L0*up_S; 84 247 DX_PQ*L11*L25
85 242 DX_PQ*L11*L4; 86 93 DX_PQ*L15*L26; 87 383 DX_PQ*L16*L26
88 422 DX_PQ*L19*right_x_S; 89 258 L0*L12*low_P; 90 342 L0*L16*right_x_S
91 687 L0*L2*Px; 92 43 L0*L24*L25; 93 69 L0*L26*L5
94 285 L0*L5*Px; 95 172 L0*Px*Px; 96 501 L0*Px*right_x_S
97 43 L0*right_x_S*right_x_S; 98 1 L10*L25*low_Q; 99 39 L11*L16*L17
100 140 L11*L16*L2; 101 93 L11*L16*L26; 102 8 L11*L16*L7
103 17 L11*L16*T_BCF+; 104 1 L11*L17*he; 105 164 L11*L17*right_x_S
106 125 L11*L2*L26; 107 299 L11*L2*Px; 108 164 L11*L24*L4
109 8 L11*L4*L6; 110 1 L11*L4*he; 111 182 L11*Px*T_BCF+
112 93 L12*L15*L26; 113 351 L12*L26*L3; 114 18 L12*L27*L7
115 8 L12*L6*L9; 116 198 L14*L16*L25; 117 163 L14*Px*right_x_S
118 18 L16*L26*L7; 119 163 L16*L26*Px; 120 182 L16*L7*right_x_S
121 39 L18*L25*low_Q; 122 23 L18*L4*Px; 123 39 L19*L19*L25
124 1 L19*L25*L7; 125 8 L19*L25*up_S; 126 93 L19*L26*Px
127 8 L19*L26*right_x_S; 128 8 L19*L9*he; 129 322 L19*Px*right_x_S
130 1 L19*he*right_x_S; 131 8 L19*right_x_S*right_x_S; 132 115 L2*L26*L5
133 70 L2*L5*L7; 134 107 L25*L3*ea; 135 163 L25*Px*ha
136 481 L26*L26*L5; 137 481 L26*L5*L7; 138 45 L26*Px*Px
```

## Node X0017

Case: `IR/MH++/HCEF--++/PQR-`.
Parent: `X0013`.
Assumptions: `PQR-`.

```n6x-trace
plu PABQR PAR 1
plu PABRS PAS 1
plu PAQRS PQS -1
plu PBEQR PER -1
plu PBFQR PFR -1
plu QACPR QAR 1
plu QACPS QAS 1
plu QBCPR QBR 1
plu QBCPS QBS 1
plu QCEPR QER -1
plu QCFPR QFR -1
plu RCEHP REH 1
```

Polynomial: `M1`; `18` terms; upper bound `-59808325077756279/176822446340000000`.

```n6x-witnesses
C_EPS_2 QR
right_py_S -
right_x_S -
```

```n6x-squares
```

```n6x-sum
1 35 C_EPS_2; 2 3 T_ABC+; 3 7 T_ABP+
4 7 T_AHP-; 5 43 T_BCS+; 6 7 T_BHP+
7 13 T_EFH+; 8 8 right_py_S; 9 19 DX_PS*L7
10 3 L0*L5; 11 7 L11*L2; 12 35 L15*L25
13 51 L26*L5; 14 35 L26*Px; 15 8 L7*right_x_S
16 13 L9*he; 17 1 cf*he; 18 1 he*right_x_S
```

## Node X0018

Case: `IR/MH++/HCEF-+--`.
Parent: `X0006`.
Assumptions: `HRS-, CRS+, ERS-, FRS-`.

```n6x-trace
```

Exclusion: `given CRS 1`.

## Node X0019

Case: `IR/MH++/HCEF-++-`.
Parent: `X0006`.
Assumptions: `HRS-, CRS+, ERS+, FRS-`.

```n6x-trace
```

Exclusion: `given CRS 1`.

## Node X0020

Case: `IR/MH++/HCEF-+++`.
Parent: `X0006`.
Assumptions: `HRS-, CRS+, ERS+, FRS+`.

```n6x-trace
```

Exclusion: `given CRS 1`.

## Node X0021

Case: `IR/MH++/HCEF+---`.
Parent: `X0006`.
Assumptions: `HRS+, CRS-, ERS-, FRS-`.

```n6x-trace
```

Exclusion: `given ERS -1`.

## Node X0022

Case: `IR/MH++/HCEF+--+`.
Parent: `X0006`.
Assumptions: `HRS+, CRS-, ERS-, FRS+`.

```n6x-trace
```

Exclusion: `given ERS -1`.

## Node X0023

Case: `IR/MH++/HCEF+-++`.
Parent: `X0006`.
Assumptions: `HRS+, CRS-, ERS+, FRS+`.

```n6x-trace
plu HAERS HER -1
```

Split: `sign PQR`.
Children: `PQR+=X0024; PQR-=X0031`.

## Node X0024

Case: `IR/MH++/HCEF+-++/PQR+`.
Parent: `X0023`.
Assumptions: `PQR+`.

```n6x-trace
```

Split: `sign PQS`.
Children: `PQS+=X0025; PQS-=X0030`.

## Node X0025

Case: `IR/MH++/HCEF+-++/PQR+/PQS+`.
Parent: `X0024`.
Assumptions: `PQS+`.

```n6x-trace
```

Split: `sign PRS`.
Children: `PRS+=X0026; PRS-=X0029`.

## Node X0026

Case: `IR/MH++/HCEF+-++/PQR+/PQS+/PRS+`.
Parent: `X0025`.
Assumptions: `PRS+`.

```n6x-trace
plu PBERS PER -1
plu PBFRS PFR -1
```

Split: `sign QRS`.
Children: `QRS+=X0027; QRS-=X0028`.

## Node X0027

Case: `IR/MH++/HCEF+-++/PQR+/PQS+/PRS+/QRS+`.
Parent: `X0026`.
Assumptions: `QRS+`.

```n6x-trace
plu QCERS QER -1
plu QCFRS QFR -1
```

Polynomial: `M1`; `6` terms; upper bound `-106670399551627/119692718000000`.

```n6x-witnesses
C_CPS_2 QR
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 C_CPS_2; 2 13 right_py_S; 3 1 L14*L25
4 2 L15*right_x_S; 5 3 L27*L4; 6 13 L4*right_y_S
```

## Node X0028

Case: `IR/MH++/HCEF+-++/PQR+/PQS+/PRS+/QRS-`.
Parent: `X0026`.
Assumptions: `QRS-`.

```n6x-trace
```

Polynomial: `M1`; `6` terms; upper bound `-106670399551627/119692718000000`.

```n6x-witnesses
C_CPS_2 QR
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 C_CPS_2; 2 13 right_py_S; 3 1 L14*L25
4 2 L15*right_x_S; 5 3 L27*L4; 6 13 L4*right_y_S
```

## Node X0029

Case: `IR/MH++/HCEF+-++/PQR+/PQS+/PRS-`.
Parent: `X0025`.
Assumptions: `PRS-`.

```n6x-trace
plu RBCPS RBS 1
plu RCPQS RQS 1
```

Polynomial: `M1`; `59` terms; upper bound `-457328253842389695762071049709371033/670807751326690658443739200000000000`.

```n6x-witnesses
C_ABH_1 P
C_ACH_2 PQ
right_px_S -
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 5 T_ABC+; 2 13 T_AHP-; 3 12 T_CHQ+
4 17 T_CPQ-; 5 26 T_EFH+; 6 32 T_PQS+
7 130 right_py_S; 8 1 C_ABH_1*DX_PQ; 9 3 C_ABH_1*L14
10 5 C_ACH_2*DX_PQ; 11 1 L1*L4; 12 1 L10*L25
13 20 L10*T_CPQ-; 14 5 L11*L12; 15 7 L11*L17
16 14 L11*L18; 17 1 L11*L2; 18 50 L11*L4
19 1 L11*T_ABC+; 20 3 L11*T_ABP+; 21 6 L11*T_ACQ+
22 5 L11*T_CHQ+; 23 1 L12*T_ABC+; 24 1 L12*T_CHQ+
25 43 L12*T_CQS-; 26 30 L14*L25; 27 20 L14*T_BCQ+
28 20 L14*T_CHQ+; 29 5 L17*L4; 30 1 L17*T_ABC+
31 43 L17*T_CPQ-; 32 43 L17*T_CQS-; 33 43 L17*T_PQS+
34 5 L18*L25; 35 20 L18*T_ABP+; 36 20 L18*T_AHP-
37 5 L18*right_x_S; 38 1 L2*L25; 39 1 L2*right_x_S
40 43 L24*T_CPQ-; 41 10 L25*L6; 42 36 L26*right_py_S
43 43 L4*T_PQS+; 44 162 L4*right_y_S; 45 36 L6*T_CES-
46 36 L7*right_px_S; 47 18 L7*right_x_S; 48 1 Px*T_CHQ+
49 1 Py*right_x_S; 50 5 T_CHQ+*ha; 51 26 cf*he
52 6 DX_PQ*L0*L4; 53 1 L0*L11*L17; 54 4 L0*L11*L2
55 5 L1*L18*L4; 56 1 L11*L25*L3; 57 14 L11*L5*low_Q
58 1 L15*L3*right_x_S; 59 36 L26*L26*L5
```

## Node X0030

Case: `IR/MH++/HCEF+-++/PQR+/PQS-`.
Parent: `X0024`.
Assumptions: `PQS-`.

```n6x-trace
plu PABQS PAS 1
plu PBQRS PRS -1
plu QACPS QAS 1
plu QBCPS QBS 1
plu QCPRS QRS -1
plu RBCPS RBS 1
plu SABPR SAR -1
```

Exclusion: `cluster AHS P SHP QR`.

## Node X0031

Case: `IR/MH++/HCEF+-++/PQR-`.
Parent: `X0023`.
Assumptions: `PQR-`.

```n6x-trace
plu PABQR PAR 1
plu PBEQR PER -1
plu PBFQR PFR -1
plu QACPR QAR 1
plu QBCPR QBR 1
plu QCEPR QER -1
plu QCFPR QFR -1
```

Split: `sign PQS`.
Children: `PQS+=X0032; PQS-=X0033`.

## Node X0032

Case: `IR/MH++/HCEF+-++/PQR-/PQS+`.
Parent: `X0031`.
Assumptions: `PQS+`.

```n6x-trace
plu PBQRS PRS 1
plu QCPRS QRS 1
```

Polynomial: `M1`; `6` terms; upper bound `-106670399551627/119692718000000`.

```n6x-witnesses
C_CPS_2 QR
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 C_CPS_2; 2 13 right_py_S; 3 1 L14*L25
4 2 L15*right_x_S; 5 3 L27*L4; 6 13 L4*right_y_S
```

## Node X0033

Case: `IR/MH++/HCEF+-++/PQR-/PQS-`.
Parent: `X0031`.
Assumptions: `PQS-`.

```n6x-trace
plu PABQS PAS 1
plu QACPS QAS 1
plu QBCPS QBS 1
```

Split: `sign PRS`.
Children: `PRS+=X0034; PRS-=X0035`.

## Node X0034

Case: `IR/MH++/HCEF+-++/PQR-/PQS-/PRS+`.
Parent: `X0033`.
Assumptions: `PRS+`.

```n6x-trace
plu RCPQS RQS -1
```

Polynomial: `M1`; `50` terms; upper bound `-48107491246682968859177000764340474946190900727/149585091887344393151873213406754540960000000000`.

```n6x-witnesses
C_CEQ_1 R
C_CQS_1 R
Q_CSHP_2 QR
Q_CSQP_1 R
right_py_S -
right_x_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 14 C_CQS_1; 2 9 Q_CSQP_1; 3 12 T_CES-
4 3 T_CHQ+; 5 6 T_EPQ+; 6 77 right_py_S
7 5 C_CEQ_1*L4; 8 5 C_CQS_1*L5; 9 5 C_CQS_1*right_y_S
10 1 DX_PQ*L0; 11 19 DX_PQ*L26; 12 5 DX_PQ*L7
13 5 DX_PQ*Q_CSHP_2; 14 1 DX_PS*T_AHP-; 15 1 DX_PS*T_APQ-
16 1 L11*L17; 17 6 L11*L4; 18 5 L12*T_CPQ-
19 3 L12*low_P; 20 4 L13*T_PQS-; 21 4 L13*right_py_S
22 1 L14*L7; 23 5 L14*right_py_S; 24 4 L16*L7
25 4 L16*Q_CSQP_1; 26 19 L18*L25; 27 4 L18*T_PQS-
28 4 L24*T_CHQ+; 29 5 L24*T_EPQ+; 30 14 L25*L26
31 1 L25*T_AHQ-; 32 4 L26*L7; 33 5 L26*Q_CSQP_1
34 5 L26*T_EPQ+; 35 5 L26*right_py_S; 36 14 L26*right_x_S
37 1 L4*L5; 38 8 L4*L7; 39 8 L4*T_PQS-
40 5 L4*right_py_S; 41 98 L4*right_y_S; 42 5 T_CES-*low_Q
43 4 T_PQS-*low_Q; 44 1 right_x_S*right_x_S; 45 4 DX_PS*L10*L12
46 1 L0*L12*low_Q; 47 4 L11*L25*L5; 48 4 L12*L15*up_S
49 4 L12*L5*L6; 50 5 L26*L26*L5
```

## Node X0035

Case: `IR/MH++/HCEF+-++/PQR-/PQS-/PRS-`.
Parent: `X0033`.
Assumptions: `PRS-`.

```n6x-trace
plu RACPS RAS 1
plu RBCPS RBS 1
```

Exclusion: `cluster AHS P SHP QR`.

## Node X0036

Case: `IR/MH++/HCEF++--`.
Parent: `X0006`.
Assumptions: `HRS+, CRS+, ERS-, FRS-`.

```n6x-trace
```

Exclusion: `given CRS 1`.

## Node X0037

Case: `IR/MH++/HCEF++-+`.
Parent: `X0006`.
Assumptions: `HRS+, CRS+, ERS-, FRS+`.

```n6x-trace
```

Exclusion: `given CRS 1`.

## Node X0038

Case: `IR/MH++/HCEF+++-`.
Parent: `X0006`.
Assumptions: `HRS+, CRS+, ERS+, FRS-`.

```n6x-trace
```

Exclusion: `given CRS 1`.

## Node X0039

Case: `IR/MHC++`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ+, HPQ+, EPQ+, FPQ+`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABES CAS -1
plu CABHR CAR -1
plu CAERS CRS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACFS EAS 1
plu EBCFS EBS 1
plu EBFPS EPS 1
plu ECFQS EQS 1
plu ECFRS ERS 1
plu FACES FAS 1
plu FBCES FBS 1
plu FBEPS FPS 1
plu FCEQS FQS 1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu PBCES PBS 1
plu PBCHR PBR 1
plu PBCQR PQR 1
plu PBCQS PQS 1
```

Polynomial: `M2`; `3` terms; upper bound `-1164116849/1150000000`.

```n6x-witnesses
right_px_S -
right_py_S -
right_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 right_px_S; 2 31 right_py_S; 3 31 L4*right_y_S
```

## Node X0040

Case: `IL/CO--`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ+, HPQ-, EPQ-, FPQ-`.

```n6x-trace
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FCHPS FPS -1
plu FCHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PCEFS PES 1
plu PCEQS PQS -1
plu QCEFS QES 1
```

Polynomial: `C`; `5` terms; upper bound `-89371891609/89630000000`.

```n6x-witnesses
left_px_S -
left_x_S -
```

```n6x-squares
```

```n6x-sum
1 10 T_AHS-; 2 10 T_FHS-; 3 77 left_px_S
4 87 L10*left_x_S; 5 10 L11*L24
```

## Node X0041

Case: `IL/CS--`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ-, HPQ-, EPQ-, FPQ-`.

```n6x-trace
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FCHPS FPS -1
plu FCHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PCEFS PES 1
plu PCHQR PQR -1
plu PCHQS PQS -1
plu QCEFS QES 1
```

Polynomial: `C`; `5` terms; upper bound `-89371891609/89630000000`.

```n6x-witnesses
left_px_S -
left_x_S -
```

```n6x-squares
```

```n6x-sum
1 10 T_AHS-; 2 10 T_FHS-; 3 77 left_px_S
4 87 L10*left_x_S; 5 10 L11*L24
```

## Node X0042

Case: `IL/CO++`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ+, HPQ-, EPQ+, FPQ+`.

```n6x-trace
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FCHPS FPS -1
plu FCHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PACEQ PAE 1
plu PACFQ PAF 1
plu PBCEQ PBE 1
plu PBCFQ PBF 1
plu PCEFS PES 1
plu QACEP QAE 1
plu QACFP QAF 1
plu QBCEP QBE 1
plu QBCFP QBF 1
plu QCEFS QES 1
```

Polynomial: `C`; `44` terms; upper bound `-238036816823881863478536187/64588118337525900000000000`.

```n6x-witnesses
C_CHQ_1 P
Q_ABPH_1 Q
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 10 DX_PQ; 2 19 Q_ABPH_1; 3 24 T_AFP+
4 24 T_APQ+; 5 33 T_BHQ-; 6 27 T_CHP+
7 3 T_FHS-; 8 3 T_FPQ+; 9 27 T_HPQ-
10 1 T_HPS+; 11 5 T_HQS+; 12 56 left_px_S
13 33 left_y_S; 14 37 C_CHQ_1*L2; 15 18 DX_PQ*L2
16 1 DX_PQ*L27; 17 1 DX_PQ*L8; 18 1 DX_PQ*T_FHP+
19 24 L0*L17; 20 1 L1*L24; 21 19 L1*L9
22 24 L10*L5; 23 55 L10*left_x_S; 24 19 L10*low_P
25 10 L11*L24; 26 1 L12*T_FPQ+; 27 1 L12*T_HPQ-
28 28 L14*L9; 29 27 L15*L5; 30 6 L16*L27
31 2 L19*L9; 32 29 L2*L5; 33 18 L2*low_P
34 1 L4*L9; 35 1 L8*T_CHP+; 36 1 L9*low_Q
37 1 T_AFP+*fb; 38 1 T_APQ+*left_x_S; 39 3 cf*left_y_S
40 1 L0*L17*L8; 41 1 L0*L24*low_P; 42 1 L0*L3*L8
43 1 L14*L24*low_Q; 44 1 L14*cf*fb
```

## Node X0043

Case: `IL/CO+-`.
Parent: `ROOT`.
Assumptions: `APQ+, BPQ+, CPQ+, HPQ-, EPQ+, FPQ-`.

```n6x-trace
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FCHPS FPS -1
plu FCHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HACEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PACEQ PAE 1
plu PBCEQ PBE 1
plu PCEFS PES 1
plu PCFQS PQS -1
plu QACEP QAE 1
plu QBCEP QBE 1
plu QCEFS QES 1
```

Polynomial: `C`; `3` terms; upper bound `-8925607969/8963000000`.

```n6x-witnesses
left_px_S -
left_x_S -
```

```n6x-squares
```

```n6x-sum
1 11 T_FHS-; 2 86 left_px_S; 3 97 L10*left_x_S
```

## Node X0044

Case: `IL/MH--`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ-, HPQ+, EPQ-, FPQ-`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu EBCPQ EBQ -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FBCPQ FBQ -1
plu FBHPS FPS -1
plu FBHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PABEQ PAE 1
plu PABFQ PAF 1
plu PBCHR PBR 1
plu PBCHS PBS 1
plu PBEFS PES 1
plu QABEP QAE 1
plu QABFP QAF 1
plu QCEFS QES 1
```

Polynomial: `M1`; `25` terms; upper bound `-1324257221414595341087746351531/2652550139696007459552000000000`.

```n6x-witnesses
C_AHQ_1 P
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 4 C_AHQ_1; 2 4 T_APQ-; 3 3 T_CHQ+
4 4 T_FPQ-; 5 2 left_px_S; 6 2 left_y_S
7 3 DX_PQ*L0; 8 4 DX_PQ*L15; 9 2 DX_PQ*L24
10 2 DX_PQ*left_x_S; 11 5 L1*T_FPQ-; 12 2 L11*L24
13 4 L12*L15; 14 5 L12*T_AFQ+; 15 5 L14*T_AFQ+
16 1 L15*L9; 17 2 L18*L9; 18 2 L19*L5
19 5 L2*T_APQ-; 20 2 L2*T_CHQ+; 21 2 L5*T_FHQ+
22 5 T_AFP+*low_Q; 23 5 T_APQ-*fb; 24 2 T_CHQ+*fb
25 2 L11*L16*cf
```

## Node X0045

Case: `IL/MH-+`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ-, HPQ+, EPQ-, FPQ+`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu EBCPQ EBQ -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FBHPS FPS -1
plu FCHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PABEQ PAE 1
plu PBCHR PBR 1
plu PBCHS PBS 1
plu PBEFS PES 1
plu PBFQS PQS 1
plu QABEP QAE 1
plu QCEFS QES 1
```

Polynomial: `M1`; `144` terms; upper bound `-20650620062778449868372783031382810923549849002329/11218881891550829486390491005506590572000000000000`.

```n6x-witnesses
C_AEH_2 PQ
C_AHQ_1 P
C_CHP_1 Q
Q_ABQH_1 P
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 89 T_ABC+; 2 88 T_AHP-; 3 56 T_APQ-
4 71 T_CHQ+; 5 65 T_EPQ-; 6 127 T_FHS-
7 15 T_HPS+; 8 41 Vlow; 9 2 C_AEH_2*L14
10 2 C_AEH_2*left_y_S; 11 5 C_AEH_2*low_Q; 12 203 C_AHQ_1*DX_PQ
13 5 C_CHP_1*L12; 14 114 DX_PQ*L0; 15 33 DX_PQ*L27
16 45 DX_PQ*L6; 17 17 DX_PQ*Py; 18 5 DX_PQ*T_CEF+
19 174 DX_PQ*T_CHQ+; 20 4 DX_PQ*T_CPQ-; 21 70 DX_PQ*left_px_S
22 35 DX_PQ*left_y_S; 23 72 L0*L5; 24 48 L0*Px
25 7 L0*T_APQ-; 26 1 L0*T_EPQ-; 27 1 L1*T_AHP-
28 2 L1*T_CHQ+; 29 33 L10*L5; 30 2 L10*T_CHQ+
31 63 L12*T_EPQ-; 32 7 L12*ea; 33 7 L13*T_AHP-
34 4 L13*T_CHQ+; 35 15 L16*L27; 36 39 L16*T_BHP+
37 68 L16*T_CEF+; 38 170 L16*T_EPQ-; 39 58 L17*T_ABP+
40 33 L17*T_AEP+; 41 174 L17*T_APQ-; 42 2 L18*left_px_S
43 4 L2*T_AHP-; 44 55 L2*T_APQ-; 45 43 L2*left_px_S
46 128 L24*L27; 47 1 L24*ea; 48 128 L24*left_y_S
49 7 L25*T_AHP-; 50 69 L25*T_CEF+; 51 2 L26*left_px_S
52 6 L27*Px; 53 7 L27*T_CEH+; 54 4 L4*T_EPQ-
55 50 L5*L6; 56 10 L5*T_BHP+; 57 68 L5*T_EHQ+
58 3 L6*Q_ABQH_1; 59 9 L6*T_BHP+; 60 508 L6*left_px_S
61 1 L9*L9; 62 3 L9*Px; 63 4 L9*left_px_S
64 53 L9*left_y_S; 65 1 L9*low_Q; 66 47 Px*T_CHQ+
67 59 Px*T_EPQ-; 68 2 T_ABC+*left_x_S; 69 2 T_ABC+*up_S
70 1 T_AEQ+*cf; 71 5 T_AHP-*fb; 72 8 T_APQ-*ea
73 4 T_CEF+*left_x_S; 74 71 T_CEF+*up_S; 75 10 T_EPQ-*ha
76 3 Vlow*left_x_S; 77 16 cf*left_y_S; 78 94 C_AEH_2*DX_PQ*L5
79 1 C_AEH_2*L0*L16; 80 2 C_AEH_2*L10*L16; 81 37 C_AEH_2*L12*L12
82 29 C_AEH_2*L12*L17; 83 10 C_AEH_2*L12*L18; 84 8 C_AEH_2*L12*Px
85 10 C_AEH_2*L14*L17; 86 2 C_AEH_2*L9*low_Q; 87 4 C_AEH_2*cf*left_x_S
88 22 DX_PQ*L0*Px; 89 73 DX_PQ*L0*fb; 90 1 DX_PQ*L10*ea
91 30 DX_PQ*L10*fb; 92 8 DX_PQ*L15*L6; 93 28 DX_PQ*L16*L27
94 170 DX_PQ*L16*L6; 95 28 DX_PQ*L16*left_y_S; 96 170 DX_PQ*L19*L5
97 17 DX_PQ*L27*Px; 98 47 DX_PQ*L5*Px; 99 32 DX_PQ*L6*Px
100 72 DX_PQ*L8*ea; 101 38 DX_PQ*L9*left_y_S; 102 17 DX_PQ*Px*left_y_S
103 38 DX_PQ*T_BCF+*left_y_S; 104 70 L0*L12*fb; 105 93 L0*L12*low_P
106 93 L0*L16*L5; 107 3 L0*L19*Px; 108 2 L0*L26*L5
109 93 L0*Px*low_P; 110 2 L0*cf*low_Q; 111 7 L1*L12*up_S
112 4 L1*L24*cf; 113 2 L10*L10*L5; 114 7 L10*L5*left_x_S
115 5 L10*L5*up_S; 116 9 L10*L6*fb; 117 508 L10*L6*left_x_S
118 70 L11*L16*L24; 119 2 L11*L18*L24; 120 2 L11*L24*L26
121 43 L11*L24*Px; 122 7 L11*L9*Px; 123 17 L12*L15*L2
124 38 L12*L2*L27; 125 47 L12*L2*L5; 126 36 L12*L6*Px
127 63 L12*ea*fb; 128 1 L13*L27*cf; 129 10 L14*L2*L5
130 8 L14*L6*Px; 131 38 L16*L27*T_BCF+; 132 38 L16*L27*cf
133 111 L16*L4*left_y_S; 134 73 L17*L27*L5; 135 37 L2*cf*left_y_S
136 2 L24*L6*cf; 137 37 L27*Px*cf; 138 2 L27*cf*he
139 4 L5*L6*left_x_S; 140 66 L5*L6*up_S; 141 47 L5*Px*low_Q
142 73 L7*L9*left_y_S; 143 4 L8*L8*ea; 144 3 Px*ea*low_Q
```

## Node X0046

Case: `IL/MH++`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ-, HPQ+, EPQ+, FPQ+`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FBHPS FPS -1
plu FCHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PBCHR PBR 1
plu PBCHS PBS 1
plu PBEFS PES 1
plu PBEQS PQS 1
plu QCEFS QES 1
```

Split: `upper`.
Children: `HCEF---+=X0047; HCEF--+-=X0048; HCEF--++=X0049; HCEF-+--=X0050; HCEF-++-=X0051; HCEF-+++=X0052; HCEF+---=X0053; HCEF+--+=X0060; HCEF+-++=X0061; HCEF++--=X0062; HCEF++-+=X0090; HCEF+++-=X0091`.

## Node X0047

Case: `IL/MH++/HCEF---+`.
Parent: `X0046`.
Assumptions: `HRS-, CRS-, ERS-, FRS+`.

```n6x-trace
```

Exclusion: `given HRS -1`.

## Node X0048

Case: `IL/MH++/HCEF--+-`.
Parent: `X0046`.
Assumptions: `HRS-, CRS-, ERS+, FRS-`.

```n6x-trace
```

Exclusion: `given HRS -1`.

## Node X0049

Case: `IL/MH++/HCEF--++`.
Parent: `X0046`.
Assumptions: `HRS-, CRS-, ERS+, FRS+`.

```n6x-trace
```

Exclusion: `given HRS -1`.

## Node X0050

Case: `IL/MH++/HCEF-+--`.
Parent: `X0046`.
Assumptions: `HRS-, CRS+, ERS-, FRS-`.

```n6x-trace
```

Exclusion: `given HRS -1`.

## Node X0051

Case: `IL/MH++/HCEF-++-`.
Parent: `X0046`.
Assumptions: `HRS-, CRS+, ERS+, FRS-`.

```n6x-trace
```

Exclusion: `given HRS -1`.

## Node X0052

Case: `IL/MH++/HCEF-+++`.
Parent: `X0046`.
Assumptions: `HRS-, CRS+, ERS+, FRS+`.

```n6x-trace
```

Exclusion: `given HRS -1`.

## Node X0053

Case: `IL/MH++/HCEF+---`.
Parent: `X0046`.
Assumptions: `HRS+, CRS-, ERS-, FRS-`.

```n6x-trace
plu CAFRS CFR 1
```

Split: `sign PQR`.
Children: `PQR+=X0054; PQR-=X0059`.

## Node X0054

Case: `IL/MH++/HCEF+---/PQR+`.
Parent: `X0053`.
Assumptions: `PQR+`.

```n6x-trace
```

Split: `sign PRS`.
Children: `PRS+=X0055; PRS-=X0058`.

## Node X0055

Case: `IL/MH++/HCEF+---/PQR+/PRS+`.
Parent: `X0054`.
Assumptions: `PRS+`.

```n6x-trace
```

Split: `sign QRS`.
Children: `QRS+=X0056; QRS-=X0057`.

## Node X0056

Case: `IL/MH++/HCEF+---/PQR+/PRS+/QRS+`.
Parent: `X0055`.
Assumptions: `QRS+`.

```n6x-trace
```

Polynomial: `M1`; `92` terms; upper bound `-4896900614099530236708130988976079646603975315489/2243776378310165897278098201101318114400000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_CHS_1 R
C_CPS_2 QR
C_CQS_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 8 C_CPS_2; 2 36 T_ABC+; 3 83 T_AHP-
4 24 T_APQ-; 5 22 T_CEF+; 6 132 left_px_S
7 5 C_ACH_2*L17; 8 3 C_CHS_1*L12; 9 32 C_CPS_2*L16
10 75 C_CPS_2*L19; 11 67 C_CPS_2*L2; 12 26 C_CQS_1*L13
13 75 C_CQS_1*L14; 14 36 DX_PQ*L0; 15 1 DX_PQ*L12
16 23 DX_PQ*L5; 17 28 DX_PQ*T_ABC+; 18 5 DX_PQ*T_BHP+
19 27 DX_PQ*left_px_S; 20 1 L0*L27; 21 27 L0*L5
22 18 L0*L9; 23 1 L10*Px; 24 131 L10*left_x_S
25 21 L11*L12; 26 5 L12*T_BHP+; 27 6 L12*T_HQS+
28 54 L12*left_y_S; 29 1 L14*L3; 30 45 L14*L9
31 298 L14*left_px_S; 32 12 L15*L5; 33 36 L16*L5
34 11 L16*T_AHP-; 35 9 L19*L5; 36 26 L2*L27
37 18 L2*L5; 38 9 L2*L9; 39 32 L2*T_AHP-
40 4 L2*T_APQ-; 41 1 L2*T_CPQ-; 42 78 L2*left_px_S
43 1 L24*L7; 44 67 L25*T_ABP+; 45 37 L26*T_APQ-
46 27 L26*T_CPQ-; 47 16 L27*L4; 48 46 L27*T_ABP+
49 49 L27*T_BCP+; 50 39 L27*low_Q; 51 5 L4*T_AHP-
52 7 L4*he; 53 13 L5*L6; 54 12 L5*T_EHQ+
55 3 L5*left_x_S; 56 23 L7*L9; 57 25 T_ABC+*left_x_S
58 32 T_APQ-*cf; 59 32 T_APQ-*left_x_S; 60 1 he*left_x_S
61 32 DX_PQ*L0*L9; 62 32 DX_PQ*L0*left_x_S; 63 37 DX_PQ*L1*L27
64 27 DX_PQ*L10*L25; 65 27 DX_PQ*L11*L9; 66 2 DX_PQ*L27*Px
67 67 L0*L2*L25; 68 25 L0*L2*left_x_S; 69 46 L0*L27*Px
70 25 L0*L5*left_x_S; 71 298 L10*L14*left_x_S; 72 78 L10*L2*left_x_S
73 5 L10*L2*low_Q; 74 34 L11*L12*L2; 75 9 L11*L12*L27
76 9 L11*L12*up_S; 77 5 L11*L16*L5; 78 2 L12*T_BCF+*left_y_S
79 67 L15*L2*L5; 80 12 L16*L2*L27; 81 68 L16*L27*L8
82 68 L16*L27*cf; 83 12 L16*L27*low_P; 84 12 L16*L5*he
85 13 L19*L27*T_BCF+; 86 1 L19*L3*L5; 87 67 L2*L27*Px
88 45 L2*L27*T_BCF+; 89 35 L26*L5*low_Q; 90 3 L27*L3*low_P
91 22 L27*Px*T_BCF+; 92 13 L27*Px*low_Q
```

## Node X0057

Case: `IL/MH++/HCEF+---/PQR+/PRS+/QRS-`.
Parent: `X0055`.
Assumptions: `QRS-`.

```n6x-trace
plu QCERS QER 1
plu QCFRS QFR 1
```

Polynomial: `M1`; `128` terms; upper bound `-55777764130005213321516516408695095665370243/42340596078956209672471118176782400000000000`.

```n6x-witnesses
C_CPS_2 QR
C_HQS_1 R
C_PQS_1 R
Q_CEFP_1 Q
Q_FSPQ_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 49 C_CPS_2; 2 24 T_ABC+; 3 35 T_ABP+
4 94 T_AHP-; 5 4 T_BCQ+; 6 1 T_CEF+
7 19 T_CHQ+; 8 24 T_FHS-; 9 91 left_px_S
10 81 C_CPS_2*L16; 11 20 C_CPS_2*L19; 12 10 C_CPS_2*L2
13 82 C_CPS_2*Px; 14 20 C_HQS_1*L15; 15 82 C_PQS_1*L12
16 16 DX_PQ*L10; 17 12 DX_PQ*T_CEF+; 18 1 DX_PQ*he
19 12 L0*L27; 20 20 L0*T_CPQ-; 21 14 L10*L5
22 20 L10*Q_FSPQ_1; 23 129 L10*left_x_S; 24 2 L11*he
25 45 L12*L5; 26 4 L12*L7; 27 22 L12*L9
28 82 L12*T_CPQ-; 29 57 L12*left_y_S; 30 49 L13*left_px_S
31 3 L14*L9; 32 20 L14*T_CHQ+; 33 20 L14*T_FHS-
34 8 L15*L5; 35 37 L16*L27; 36 40 L16*L5
37 43 L16*T_ABC+; 38 74 L16*left_px_S; 39 43 L17*T_BCP+
40 12 L18*L9; 41 9 L18*T_ABP+; 42 6 L19*L5
43 19 L19*T_CEF+; 44 33 L2*L27; 45 18 L2*L9
46 100 L2*T_AHP-; 47 120 L2*left_px_S; 48 39 L24*T_AHP-
49 6 L24*T_CPQ-; 50 11 L24*left_y_S; 51 6 L25*L5
52 48 L25*T_ABC+; 53 27 L26*T_CEF+; 54 20 L26*T_CPQ-
55 72 L26*left_px_S; 56 15 L27*Px; 57 20 L27*Q_CEFP_1
58 11 L27*T_AEH+; 59 20 L27*T_CFH+; 60 2 L27*cf
61 1 L27*ea; 62 14 L5*ea; 63 18 L6*left_px_S
64 7 L7*L9; 65 5 L9*T_ACQ+; 66 11 L9*left_y_S
67 1 Px*he; 68 92 T_ABP+*cf; 69 92 T_ABP+*left_x_S
70 9 T_ABP+*low_Q; 71 25 T_AHP-*left_x_S; 72 120 T_APQ-*cf
73 33 T_APQ-*fb; 74 87 T_APQ-*left_x_S; 75 1 T_BCQ+*left_y_S
76 20 T_CPQ-*ha; 77 82 DX_PQ*L0*L9; 78 87 DX_PQ*L0*left_x_S
79 109 DX_PQ*L1*L5; 80 74 DX_PQ*L10*left_x_S; 81 82 DX_PQ*L12*L27
82 1 DX_PQ*L5*cf; 83 12 DX_PQ*L5*ea; 84 30 L0*L12*left_x_S
85 43 L0*L16*L5; 86 44 L0*L25*L5; 87 141 L0*L25*Px
88 88 L0*L4*Px; 89 20 L10*L14*left_x_S; 90 1 L10*L18*fb
91 120 L10*L2*left_x_S; 92 20 L10*L26*L5; 93 72 L10*L26*left_x_S
94 5 L10*L5*left_x_S; 95 18 L10*L6*left_x_S; 96 5 L10*Px*cf
97 100 L11*L12*L2; 98 20 L11*L12*L27; 99 33 L12*L18*L9
100 33 L12*L18*fb; 101 44 L12*L24*L27; 102 5 L12*L24*ea
103 44 L12*L24*left_y_S; 104 7 L12*L26*L5; 105 78 L13*L27*Px
106 1 L13*L4*cf; 107 16 L13*L7*L9; 108 3 L14*L17*L5
109 81 L16*L27*Px; 110 81 L16*L27*T_BCF+; 111 1 L16*L5*L5
112 12 L16*L7*L9; 113 1 L18*L27*T_BCF+; 114 6 L19*L5*left_x_S
115 19 L19*cf*he; 116 4 L2*L27*T_BCF+; 117 5 L2*L7*L9
118 5 L24*L5*ea; 119 5 L25*T_BCF+*he; 120 7 L26*L5*L6
121 89 L26*L5*Px; 122 7 L26*L7*L9; 123 4 L27*Px*Px
124 5 L5*L5*T_AEH+; 125 1 L5*L9*low_Q; 126 5 L5*Px*ha
127 5 L5*cf*ha; 128 5 Px*he*left_x_S
```

## Node X0058

Case: `IL/MH++/HCEF+---/PQR+/PRS-`.
Parent: `X0054`.
Assumptions: `PRS-`.

```n6x-trace
plu PBERS PER 1
plu PBFRS PFR 1
plu RBCEP RBE 1
plu RBCFP RBF 1
plu RBCPS RBS 1
plu RCEPQ REQ -1
plu RCFPQ RFQ -1
plu RCPQS RQS 1
```

Polynomial: `M1`; `66` terms; upper bound `-870198866650922643238827815489200148427812811/747925459436721965759366067033772704800000000`.

```n6x-witnesses
C_ACH_2 PQ
C_HPS_1 R
Q_ABSH_2 PR
Q_HPQS_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 2 C_ACH_2; 2 61 C_HPS_1; 3 7 Q_HPQS_1
4 7 S_CSHP_QR_1+; 5 21 T_APQ-; 6 3 T_BHP+
7 34 T_CEF+; 8 4 T_CPQ-; 9 31 T_FHS-
10 7 T_PRS-; 11 328 left_px_S; 12 5 C_ACH_2*L12
13 3 C_ACH_2*L15; 14 2 C_HPS_1*L16; 15 1 DX_PQ*L0
16 4 L0*L27; 17 1 L0*L5; 18 22 L0*Px
19 37 L10*L5; 20 2 L10*T_FQS-; 21 392 L10*left_x_S
22 2 L11*S_CSHP_QR_1+; 23 2 L11*T_PRS-; 24 64 L12*L27
25 13 L12*T_BCQ+; 26 9 L13*T_ABC+; 27 5 L13*T_CHQ+
28 11 L14*L17; 29 6 L14*Q_ABSH_2; 30 1 L16*L5
31 27 L16*T_ABC+; 32 3 L16*T_BHP+; 33 1 L17*Q_ABSH_2
34 15 L17*T_ABP+; 35 18 L17*T_BCP+; 36 1 L18*L5
37 2 L2*L27; 38 39 L24*L27; 39 1 L24*T_ABC+
40 39 L24*left_y_S; 41 6 L26*T_ABC+; 42 1 L26*T_CPQ-
43 6 L27*T_ABP+; 44 2 L27*T_CFH+; 45 2 L27*T_HQS+
46 18 L4*T_APQ-; 47 4 Px*left_y_S; 48 2 Q_HPQS_1*left_y_S
49 3 T_ABC+*low_P; 50 2 T_APQ-*up_S; 51 34 cf*he
52 11 DX_PQ*L0*L2; 53 2 DX_PQ*L0*L24; 54 3 DX_PQ*L10*T_BCF+
55 1 DX_PQ*L10*left_x_S; 56 10 L0*L16*L5; 57 2 L0*L17*L27
58 5 L0*L26*L5; 59 1 L0*L5*up_S; 60 4 L10*L11*L12
61 3 L10*L12*T_BCF+; 62 1 L10*L16*L9; 63 2 L10*L18*left_x_S
64 8 L11*L14*L24; 65 2 L17*L27*Px; 66 1 L17*L27*T_BCF+
```

## Node X0059

Case: `IL/MH++/HCEF+---/PQR-`.
Parent: `X0053`.
Assumptions: `PQR-`.

```n6x-trace
plu PABQR PAR 1
plu PBEQR PER -1
plu PBERS PRS 1
plu PBFQR PFR -1
plu QACPR QAR 1
plu QBCPR QBR 1
plu QCEPR QER -1
plu QCERS QRS 1
plu QCFPR QFR -1
plu RCEHP REH 1
```

Polynomial: `M1`; `14` terms; upper bound `-132716447870989/161192528000000`.

```n6x-witnesses
C_AHR_2 PQ
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 13 C_AHR_2; 2 1 T_CHR-; 3 11 T_CRS-
4 10 left_px_S; 5 3 L10*L21; 6 7 L10*left_x_S
7 3 L11*L9; 8 11 L20*left_y_S; 9 1 L22*L9
10 10 L22*cf; 11 11 L22*left_x_S; 12 3 L24*L27
13 3 L24*left_y_S; 14 1 L5*left_y_S
```

## Node X0060

Case: `IL/MH++/HCEF+--+`.
Parent: `X0046`.
Assumptions: `HRS+, CRS-, ERS-, FRS+`.

```n6x-trace
```

Exclusion: `given FRS 1`.

## Node X0061

Case: `IL/MH++/HCEF+-++`.
Parent: `X0046`.
Assumptions: `HRS+, CRS-, ERS+, FRS+`.

```n6x-trace
```

Exclusion: `given FRS 1`.

## Node X0062

Case: `IL/MH++/HCEF++--`.
Parent: `X0046`.
Assumptions: `HRS+, CRS+, ERS-, FRS-`.

```n6x-trace
plu RACHS RAS -1
plu RBCHS RBS -1
plu RBHPS RPS -1
plu RCHQS RQS -1
```

Split: `sign PQR`.
Children: `PQR+=X0063; PQR-=X0089`.

## Node X0063

Case: `IL/MH++/HCEF++--/PQR+`.
Parent: `X0062`.
Assumptions: `PQR+`.

```n6x-trace
```

Split: `cross PS`.
Children: `PS+---=X0064; PS----=X0088`.

## Node X0064

Case: `IL/MH++/HCEF++--/PQR+/PS+---`.
Parent: `X0063`.
Assumptions: `APS+, BPS-, EPS-, FPS-`.

```n6x-trace
plu ABPQS AQS 1
```

Split: `cross QS`.
Children: `QS++--=X0065; QS+---=X0087`.

## Node X0065

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--`.
Parent: `X0064`.
Assumptions: `AQS+, BQS+, EQS-, FQS-`.

```n6x-trace
```

Split: `cross PR`.
Children: `PR+-++=X0066; PR+--+=X0067; PR+---=X0068; PR--++=X0069; PR---+=X0079; PR----=X0086`.

## Node X0066

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR+-++`.
Parent: `X0065`.
Assumptions: `APR+, BPR-, EPR+, FPR+`.

```n6x-trace
plu ABPQR AQR 1
plu ECHPR EHR 1
plu PABER PAE -1
plu PABFR PAF -1
plu RACEP RAE -1
plu RAEFH RAF -1
via Q ACR AE -1
via Q ACE AF -1
```

Exclusion: `cluster ACE P CEP QR`.

## Node X0067

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR+--+`.
Parent: `X0065`.
Assumptions: `APR+, BPR-, EPR-, FPR+`.

```n6x-trace
plu ABPQR AQR 1
plu EBCPR EBR -1
plu ECPQR EQR -1
plu PABFR PAF -1
plu RAFHP RAF -1
via Q ACR AF -1
```

Polynomial: `M1`; `256` terms; upper bound `-7005915580263521005410209439720147007519659535571/747925459436721965759366067033772704800000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_ACR_2 PQ
C_CHP_1 Q
C_EFP_1 R
Q_ABES_2 PR
Q_ABQS_1 P
Q_BCFH_1 Q
Q_EFPQ_1 R
left_px_S -
left_py_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 53 C_ACH_2; 2 83 T_ABC+; 3 2 T_AHS-
4 311 T_CPQ-; 5 35 T_EFR+; 6 3 T_EQR-
7 4 T_ERS-; 8 171 T_FHS-; 9 10 T_FPR+
10 28 left_px_S; 11 104 C_ACH_2*L3; 12 74 C_ACH_2*low_Q
13 126 C_ACR_2*L13; 14 9 C_ACR_2*Px; 15 10 C_ACR_2*fb
16 39 C_ACR_2*he; 17 267 C_CHP_1*DX_PQ; 18 20 C_CHP_1*L5
19 10 C_EFP_1*DX_PQ; 20 7 C_EFP_1*fb; 21 61 DX_PQ*L0
22 59 DX_PQ*T_EPR-; 23 66 DX_PQ*T_ERS-; 24 30 DX_PQ*T_FPR+
25 176 DY_QS*T_ABC+; 26 31 DY_QS*T_BHP+; 27 46 L0*L21
28 36 L0*L5; 29 271 L0*Px; 30 30 L0*T_AFP-
31 35 L0*T_CER+; 32 30 L1*T_AFR-; 33 176 L1*T_CHQ+
34 30 L10*L23; 35 104 L10*L5; 36 234 L10*Left_support
37 13 L10*Q_ABQS_1; 38 303 L10*T_CPQ-; 39 264 L11*T_AHS-
40 71 L11*T_BCQ+; 41 64 L11*T_FPR+; 42 13 L12*Px
43 43 L12*T_ABP+; 44 140 L12*T_ACQ+; 45 80 L12*T_AFR-
46 38 L12*T_BPQ-; 47 466 L12*T_CPQ-; 48 7 L12*T_EFS+
49 29 L12*T_EQR-; 50 41 L12*T_ERS-; 51 56 L12*T_FPR+
52 5 L12*he; 53 22 L13*L27; 54 61 L13*L5
55 162 L13*T_APR+; 56 50 L13*T_CHQ+; 57 149 L13*left_px_S
58 25 L14*T_AFP-; 59 504 L14*T_APQ-; 60 320 L14*T_BCQ+
61 320 L14*T_CHQ+; 62 2 L14*T_EFS+; 63 25 L14*T_FPR+
64 7 L14*left_px_S; 65 1 L14*left_y_S; 66 27 L15*L27
67 109 L16*T_ABC+; 68 315 L16*T_APR+; 69 137 L16*T_BHP+
70 114 L16*left_px_S; 71 6 L17*L24; 72 23 L17*L27
73 18 L17*L5; 74 329 L17*T_ABP+; 75 289 L18*T_ABP+
76 1 L18*fb; 77 113 L19*T_ABC+; 78 249 L2*T_APQ-
79 27 L2*T_BHP+; 80 115 L2*T_CHQ+; 81 135 L2*T_CPQ-
82 7 L2*T_EFR+; 83 7 L2*T_FPR+; 84 356 L20*T_APQ-
85 6 L21*L27; 86 13 L21*L5; 87 7 L21*Q_EFPQ_1
88 136 L21*T_AFP-; 89 29 L21*T_CHQ+; 90 5 L22*T_ABC+
91 53 L22*T_FHS-; 92 13 L23*L24; 93 42 L23*L5
94 25 L23*T_AFP-; 95 276 L24*L27; 96 15 L24*L5
97 119 L24*T_APR+; 98 293 L24*left_y_S; 99 176 L26*T_CHQ+
100 19 L26*T_CPQ-; 101 11 L26*T_EFR+; 102 19 L26*T_ERS-
103 53 L26*T_FHS-; 104 64 L26*T_FPR+; 105 5 L27*Px
106 40 L27*Q_BCFH_1; 107 19 L27*S_CESP_QR_0+; 108 11 L27*T_CEF+
109 13 L27*T_CHS-; 110 2 L27*T_HPR+; 111 23 L27*ha
112 20 L4*T_CHQ+; 113 13 L5*L5; 114 6 L5*Px
115 10 L5*Q_ABES_2; 116 20 L5*T_BPS-; 117 20 L5*T_CFS+
118 230 L5*T_HPQ+; 119 13 L5*cf; 120 6 L5*he
121 25 L6*T_EPR-; 122 30 L6*T_ERS-; 123 7 L9*T_EFR+
124 136 L9*left_y_S; 125 177 Px*T_ABC+; 126 20 Px*T_ABP+
127 7 Px*T_EPR-; 128 27 Px*T_FHS-; 129 1 Px*up_R
130 176 T_ACQ+*left_y_S; 131 34 T_AFP-*he; 132 10 T_AFR-*cf
133 40 T_AFR-*he; 134 36 T_APQ-*cf; 135 78 T_APQ-*left_x_S
136 504 T_APQ-*low_P; 137 74 T_APQ-*up_S; 138 30 T_APR+*ea
139 121 T_APR+*left_x_S; 140 25 T_APR+*low_P; 141 2 T_APR+*up_S
142 22 T_BCP+*fb; 143 23 T_BPR-*left_y_S; 144 5 T_EPR-*ea
145 7 T_PQS+*left_y_S; 146 31 cf*left_py_S; 147 278 ha*left_px_S
148 11 left_y_S*left_y_S; 149 30 DX_PQ*L0*L2; 150 91 DX_PQ*L0*L20
151 191 DX_PQ*L10*L12; 152 92 DX_PQ*L10*left_x_S; 153 64 DX_PQ*L10*left_y_S
154 257 DX_PQ*L12*L23; 155 98 DX_PQ*L12*he; 156 29 DX_PQ*L20*left_y_S
157 66 DX_PQ*L23*L24; 158 16 DX_PQ*L23*L9; 159 10 DX_PQ*L7*cf
160 85 DY_QS*L12*L27; 161 20 DY_QS*L5*T_BCF+; 162 53 DY_QS*L9*left_y_S
163 146 L0*L12*L5; 164 5 L0*L15*L9; 165 49 L0*L16*L21
166 102 L0*L16*L27; 167 87 L0*L16*L9; 168 129 L0*L17*cf
169 4 L0*L2*L21; 170 104 L0*L2*left_y_S; 171 21 L0*L20*L5
172 293 L0*L5*Px; 173 74 L0*L7*cf; 174 10 L0*L9*L9
175 197 L0*Px*Px; 176 117 L1*L10*fb; 177 289 L1*L12*L18
178 5 L1*fb*up_R; 179 64 L10*L10*Px; 180 64 L10*L10*fb
181 13 L10*L10*left_x_S; 182 23 L10*L14*fb; 183 23 L10*L16*fb
184 53 L10*L18*fb; 185 53 L10*L22*left_x_S; 186 24 L10*L23*L8
187 189 L10*L26*L5; 188 40 L10*L26*left_x_S; 189 27 L10*Px*fb
190 18 L11*L14*cf; 191 27 L11*L2*L24; 192 39 L11*L23*L5
193 161 L12*L12*L23; 194 22 L12*L12*he; 195 96 L12*L14*L21
196 390 L12*L18*L5; 197 4 L12*L18*left_x_S; 198 12 L12*L23*he
199 41 L12*L23*up_S; 200 30 L12*L6*L7; 201 12 L12*he*up_R
202 37 L13*L21*L27; 203 134 L13*L22*L5; 204 29 L13*L24*L6
205 74 L13*L26*L27; 206 37 L13*L27*cf; 207 57 L13*cf*left_y_S
208 85 L14*L16*L27; 209 77 L14*L17*L20; 210 82 L14*L17*fb
211 8 L14*L20*L3; 212 8 L14*L21*fb; 213 54 L14*L27*fb
214 12 L14*L27*left_x_S; 215 134 L14*L3*L5; 216 19 L14*L5*Px
217 28 L14*L5*fb; 218 15 L14*Px*fb; 219 7 L14*cf*fb
220 2 L15*L24*L5; 221 20 L15*L5*L5; 222 33 L15*L9*he
223 23 L16*L24*L27; 224 4 L16*L24*ea; 225 23 L16*L24*left_y_S
226 10 L16*L5*he; 227 37 L17*L20*L27; 228 14 L17*L22*L9
229 44 L17*L24*L7; 230 53 L17*left_y_S*left_y_S; 231 29 L18*L20*L5
232 53 L18*L27*left_x_S; 233 65 L18*L27*up_S; 234 23 L2*L22*L27
235 1 L2*L23*L5; 236 7 L2*L27*left_x_S; 237 2 L21*L27*ha
238 30 L21*L5*L6; 239 41 L21*left_y_S*low_P; 240 19 L22*L26*L5
241 69 L22*L5*L7; 242 30 L23*L24*L6; 243 40 L23*L7*L9
244 3 L23*L9*L9; 245 10 L24*L5*ea; 246 2 L24*L6*low_P
247 7 L25*L27*L3; 248 13 L26*L27*L5; 249 65 L26*L27*low_Q
250 30 L27*L5*L6; 251 20 L27*L9*T_BCF+; 252 72 L27*Px*ha
253 10 L5*Px*he; 254 18 L5*T_AEH+*low_Q; 255 30 L5*ea*up_R
256 31 L9*cf*left_y_S
```

## Node X0068

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR+---`.
Parent: `X0065`.
Assumptions: `APR+, BPR-, EPR-, FPR-`.

```n6x-trace
plu ABPQR AQR 1
plu EBCPR EBR -1
plu ECPQR EQR -1
plu FBEPR FBR -1
plu FCEPR FCR -1
plu FCPQR FQR -1
```

Polynomial: `M1`; `249` terms; upper bound `-224912539766039913397234469569848847183135948444460053/17014329098257726359516821015166717735528000000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_ACR_2 PQ
C_CHP_1 Q
C_CPR_1 Q
C_FPS_1 R
Q_ABCR_2 PQ
Q_BEFH_1 R
Q_EFHQ_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 1 C_ACH_2; 2 196 T_ABC+; 3 261 T_APQ-
4 163 T_APR+; 5 16 T_CEF+; 6 102 T_CHQ+
7 190 T_CPQ-; 8 1 T_CRS+; 9 354 T_HRS+
10 251 left_px_S; 11 502 C_ACH_2*L20; 12 349 C_ACH_2*fb
13 15 C_ACR_2*DX_PQ; 14 139 C_CHP_1*DX_PQ; 15 30 C_CPR_1*L5
16 85 C_FPS_1*L10; 17 28 DX_PQ*L9; 18 223 DX_PQ*T_APQ-
19 104 DX_PQ*T_APR+; 20 864 DX_PQ*T_BHP+; 21 104 DX_PQ*T_FHR+
22 104 DX_PQ*T_FPR-; 23 83 DY_QS*T_HRS+; 24 31 L0*L27
25 35 L0*L5; 26 42 L1*L9; 27 9 L1*T_CRS+
28 36 L10*L5; 29 9 L10*T_FPR-; 30 83 L10*T_QRS+
31 12 L10*left_y_S; 32 29 L11*L27; 33 832 L12*T_BHP+
34 33 L12*T_BPQ-; 35 405 L12*T_CHQ+; 36 424 L12*T_CPQ-
37 16 L12*T_ERS-; 38 63 L12*T_FQR-; 39 274 L12*T_FRS-
40 211 L12*T_HRS+; 41 1 L12*he; 42 409 L13*T_FHS-
43 1 L14*L23; 44 2 L14*L9; 45 33 L14*T_BCQ+
46 33 L14*T_CHQ+; 47 16 L14*T_CRS+; 48 16 L14*T_ERS-
49 9 L14*T_HRS+; 50 1 L14*he; 51 9 L15*L27
52 16 L15*T_CEF+; 53 32 L16*L27; 54 419 L16*T_ABC+
55 518 L16*T_APR+; 56 104 L16*left_px_S; 57 3 L17*L5
58 911 L17*T_ABP+; 59 223 L17*T_APQ-; 60 8 L18*T_ABC+
61 33 L18*T_ABP+; 62 68 L18*T_AHS-; 63 83 L18*T_CRS+
64 6 L19*L27; 65 92 L2*L27; 66 28 L2*L5
67 85 L2*T_ABC+; 68 761 L2*T_APQ-; 69 1014 L2*T_CPQ-
70 199 L2*T_FHS-; 71 92 L2*left_px_S; 72 254 L20*L27
73 264 L20*L5; 74 450 L20*T_ABC+; 75 637 L20*T_APQ-
76 104 L21*T_CHQ+; 77 119 L21*T_CPQ-; 78 83 L22*T_CHQ+
79 19 L22*T_ERS-; 80 79 L22*T_FHS-; 81 19 L22*T_HRS+
82 7 L23*L5; 83 1 L23*L9; 84 9 L23*T_APS+
85 19 L23*T_EFR+; 86 19 L23*T_FHR+; 87 5 L23*he
88 25 L24*L27; 89 2 L24*L9; 90 390 L24*Q_ABCR_2
91 2 L24*T_ABP+; 92 10 L24*T_BHP+; 93 16 L24*T_EFR+
94 63 L24*T_FPR-; 95 1106 L24*left_px_S; 96 11 L25*T_CHQ+
97 59 L26*T_APR+; 98 75 L26*T_CPQ-; 99 19 L26*T_ERS-
100 148 L27*L5; 101 9 L27*L7; 102 38 L27*Q_BEFH_1
103 50 L27*S_CFHP_QR_1+; 104 34 L27*T_ABR+; 105 19 L27*T_CEH+
106 38 L27*T_CEP+; 107 48 L27*T_CRS+; 108 50 L27*T_FHQ+
109 44 L27*up_R; 110 27 L3*L9; 111 59 L3*Q_ABCR_2
112 502 L4*T_APQ-; 113 43 L4*T_APR+; 114 15 L4*T_HRS+
115 14 L5*L5; 116 38 L5*Q_EFHQ_1; 117 83 L5*S_CFHP_QR_0-
118 150 L5*T_ABE+; 119 230 L5*T_AHP-; 120 265 L5*T_AHQ-
121 83 L5*T_BCQ+; 122 652 L5*T_BHP+; 123 362 L5*T_BPQ-
124 15 L5*T_QRS+; 125 55 L5*fb; 126 42 L5*he
127 73 L5*left_x_S; 128 8 L6*T_APQ-; 129 57 L7*T_CRS+
130 38 L7*T_FRS-; 131 16 L7*T_HRS+; 132 63 L8*T_HRS+
133 16 L9*T_EHS-; 134 16 L9*T_ERS-; 135 111 L9*left_y_S
136 1097 Px*T_ABC+; 137 826 Px*T_CHQ+; 138 67 Px*T_CRS+
139 15 Px*left_px_S; 140 426 T_ABC+*left_x_S; 141 9 T_ABC+*up_R
142 34 T_ABC+*up_S; 143 8 T_ABP+*left_y_S; 144 8 T_APQ-*he
145 8 T_BCP+*left_y_S; 146 8 T_CHQ+*ha; 147 16 T_ERS-*left_x_S
148 16 T_HRS+*ea; 149 16 T_HRS+*left_x_S; 150 78 left_px_S*low_P
151 834 DX_PQ*L0*L12; 152 269 DX_PQ*L0*L2; 153 167 DX_PQ*L0*L5
154 139 DX_PQ*L10*L12; 155 33 DX_PQ*L11*L27; 156 455 DX_PQ*L12*L23
157 13 DX_PQ*L12*L9; 158 104 DX_PQ*L15*L9; 159 9 DX_PQ*L27*T_BCF+
160 33 DX_PQ*Px*left_y_S; 161 15 DY_QS*L1*L5; 162 33 L0*L18*Px
163 1531 L0*L2*L5; 164 509 L0*L20*Px; 165 374 L0*L21*L24
166 172 L0*L26*L5; 167 226 L0*L5*left_x_S; 168 794 L0*Px*Px
169 9 L0*Px*up_R; 170 16 L1*L10*L20; 171 51 L1*L12*L27
172 426 L1*L2*L9; 173 16 L1*L24*up_R; 174 8 L1*T_BCF+*left_y_S
175 9 L10*L12*up_R; 176 204 L10*L2*L9; 177 301 L10*L20*L5
178 63 L10*L24*L27; 179 117 L10*L5*left_x_S; 180 68 L11*L18*L24
181 79 L11*L20*L9; 182 1106 L11*L24*L24; 183 990 L11*L24*L9
184 315 L11*L24*Px; 185 53 L11*L9*up_S; 186 455 L12*L12*L23
187 33 L12*L12*L27; 188 13 L12*L12*L9; 189 233 L12*L14*L17
190 705 L12*L18*L5; 191 16 L12*L23*L24; 192 211 L12*L23*L9
193 2 L12*L24*ea; 194 14 L12*L25*he; 195 33 L12*L27*low_Q
196 13 L12*L9*low_Q; 197 63 L12*L9*up_S; 198 284 L13*L14*L5
199 42 L13*L2*L27; 200 25 L14*L17*left_y_S; 201 16 L14*L20*L27
202 46 L14*L20*L5; 203 63 L14*L21*L24; 204 16 L14*L22*L27
205 29 L14*L27*L4; 206 25 L14*L4*left_y_S; 207 16 L14*he*left_x_S
208 16 L14*left_y_S*up_R; 209 16 L15*L23*L5; 210 113 L15*L5*L5
211 16 L15*L5*L6; 212 47 L16*L2*L27; 213 115 L16*L24*L27
214 115 L16*L24*left_y_S; 215 38 L16*L5*L7; 216 6 L17*T_BCF+*left_y_S
217 92 L18*L3*L5; 218 8 L18*Px*left_y_S; 219 8 L19*L27*T_BCF+
220 16 L20*L24*L27; 221 16 L20*L26*L27; 222 146 L20*L27*Px
223 79 L20*L27*fb; 224 16 L21*he*low_P; 225 390 L22*L24*L5
226 67 L22*L24*Px; 227 34 L22*L27*L3; 228 113 L22*L5*L5
229 8 L22*L5*Px; 230 57 L22*L5*he; 231 90 L22*L9*left_y_S
232 40 L23*L27*L9; 233 48 L23*L5*left_y_S; 234 57 L23*L7*L9
235 16 L24*L24*he; 236 19 L24*L27*he; 237 63 L24*L9*low_P
238 16 L24*left_y_S*up_R; 239 9 L27*L3*L5; 240 76 L27*L5*Px
241 198 L27*L9*Px; 242 38 L27*Px*he; 243 115 L3*L3*L3
244 112 L3*L6*L9; 245 121 L5*T_AEH+*up_S; 246 150 L5*ea*fb
247 48 L5*left_y_S*left_y_S; 248 397 L9*Px*left_y_S; 249 112 L9*T_BCF+*he
```

## Node X0069

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++`.
Parent: `X0065`.
Assumptions: `APR-, BPR-, EPR+, FPR+`.

```n6x-trace
plu ECHPR EHR 1
```

Split: `cross QR`.
Children: `QR++++=X0070; QR++-+=X0071; QR++--=X0072; QR+-++=X0073; QR+--+=X0074; QR+---=X0075; QR--++=X0076; QR---+=X0077; QR----=X0078`.

## Node X0070

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR++++`.
Parent: `X0069`.
Assumptions: `AQR+, BQR+, EQR+, FQR+`.

```n6x-trace
plu QACER QAE -1
plu QACFR QAF -1
plu QBCER QBE -1
plu QBCFR QBF -1
plu RACEQ RAE -1
plu RAEFH RAF -1
plu RBCEQ RBE -1
plu RBEFH RBF -1
```

Polynomial: `M1`; `1` terms; upper bound `-505739/500000`.

```n6x-witnesses
C_BCE_2 QR
```

```n6x-squares
```

```n6x-sum
1 26 C_BCE_2
```

## Node X0071

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR++-+`.
Parent: `X0069`.
Assumptions: `AQR+, BQR+, EQR-, FQR+`.

```n6x-trace
plu QACFR QAF -1
plu QBCFR QBF -1
plu RAFHQ RAF -1
plu RBFHQ RBF -1
```

Polynomial: `M1`; `222` terms; upper bound `-8432813201830685476387326921707933647085735493039/3739627297183609828796830335168863524000000000000`.

```n6x-witnesses
C_ABH_1 P
C_ABS_1 P
C_BCF_1 Q
C_CEP_2 QR
C_EFQ_1 R
Q_ABSH_1 P
Q_BCEF_2 QR
left_px_S -
left_py_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 8 T_ABC+; 2 50 T_APR-; 3 29 T_APS+
4 49 T_BQR+; 5 63 T_CHQ+; 6 51 T_CPQ-
7 63 T_EPR+; 8 119 T_EQR-; 9 49 T_FHS-
10 18 T_FQR+; 11 45 T_HPS+; 12 325 left_px_S
13 74 C_ABH_1*DY_QR; 14 33 C_ABH_1*L14; 15 4 C_ABS_1*L5
16 10 C_CEP_2*DY_QR; 17 39 C_CEP_2*L8; 18 9 C_CEP_2*low_Q
19 8 C_EFQ_1*DX_PQ; 20 10 C_EFQ_1*L18; 21 77 C_EFQ_1*L23
22 12 DX_PQ*Q_ABSH_1; 23 86 DX_PQ*he; 24 29 DX_PR*L0
25 1 DY_QR*L18; 26 7 DY_QR*L24; 27 2 DY_QR*Px
28 6 DY_QR*T_AHS-; 29 188 DY_QR*left_px_S; 30 4 DY_QR*left_y_S
31 9 DY_QS*T_CHQ+; 32 3 L0*L1; 33 6 L0*L17
34 26 L0*L5; 35 17 L0*T_HQR+; 36 6 L0*left_x_S
37 12 L0*low_Q; 38 8 L0*up_R; 39 88 L1*T_AHS-
40 12 L10*L27; 41 60 L10*L5; 42 7 L10*L7
43 290 L10*left_x_S; 44 11 L11*Q_ABSH_1; 45 33 L11*T_ABP+
46 3 L11*T_EQR-; 47 3 L11*T_FQR+; 48 41 L12*L27
49 13 L12*L5; 50 1 L12*T_CHR-; 51 42 L12*he
52 31 L13*T_BQR+; 53 24 L14*T_ACQ+; 54 88 L14*T_AHS-
55 25 L14*T_CHQ+; 56 104 L14*T_CQS-; 57 24 L16*L27
58 14 L16*T_APS+; 59 42 L16*T_BHP+; 60 1 L16*T_BQR+
61 9 L16*T_CPQ-; 62 11 L16*T_EQR-; 63 44 L16*left_px_S
64 2 L17*L5; 65 58 L17*T_ABP+; 66 19 L17*T_APR-
67 9 L17*T_BPQ-; 68 76 L18*L27; 69 1 L18*L5
70 44 L18*L9; 71 20 L18*Q_BCEF_2; 72 26 L18*T_APQ-
73 104 L18*T_APS+; 74 10 L18*T_CQR-; 75 70 L18*T_EFR+
76 3 L19*T_EPR+; 77 7 L2*L27; 78 49 L2*T_CPQ-
79 3 L2*T_FQR+; 80 13 L20*T_APR-; 81 11 L20*T_BQR+
82 12 L20*T_CHQ+; 83 13 L20*T_EPR+; 84 13 L20*T_EQR-
85 2 L20*T_FQR+; 86 4 L22*L27; 87 4 L22*T_FQR+
88 4 L23*T_BQR+; 89 29 L23*T_CPQ-; 90 130 L24*L27
91 2 L24*ea; 92 130 L24*left_y_S; 93 11 L24*low_Q
94 12 L26*T_CHQ+; 95 104 L26*T_CPQ-; 96 21 L26*T_EQR-
97 6 L27*L7; 98 88 L27*T_AHP-; 99 21 L27*T_CER+
100 21 L27*T_CQR-; 101 4 L3*T_AHP-; 102 12 L4*T_APR-
103 10 L5*L6; 104 1 L5*T_APS+; 105 1 L5*T_EPS-
106 39 L5*T_FHP+; 107 12 L5*T_HPR+; 108 4 L5*fb
109 47 L5*low_P; 110 11 L6*T_FHS-; 111 89 L6*T_FQR+
112 22 L7*L9; 113 26 L7*Px; 114 32 L7*T_BFQ-
115 8 L7*T_BQR+; 116 6 L8*T_EPR+; 117 4 L9*T_ABC+
118 44 L9*left_y_S; 119 49 Px*T_CHQ+; 120 4 Px*left_py_S
121 12 Px*left_y_S; 122 11 Q_BCEF_2*left_y_S; 123 11 T_ABC+*ha
124 88 T_APS+*ha; 125 3 T_AQR+*he; 126 21 T_CHQ+*ea
127 35 T_CPQ-*ea; 128 25 T_CPQ-*he; 129 19 T_CPQ-*up_R
130 6 T_EPR+*cf; 131 3 T_EQR-*ha; 132 10 T_EQR-*low_P
133 10 T_EQR-*low_Q; 134 39 Vlow*fb; 135 3 left_px_S*up_R
136 4 C_BCF_1*L11*left_y_S; 137 4 C_BCF_1*L12*L7; 138 9 C_BCF_1*L17*L18
139 17 C_BCF_1*L18*left_y_S; 140 12 DX_PQ*DX_PR*he; 141 2 DX_PQ*L10*L4
142 1 DX_PQ*L10*left_x_S; 143 9 DX_PQ*L16*he; 144 8 DX_PQ*L18*L9
145 13 DX_PR*DX_PR*L0; 146 13 DX_PR*DY_QR*L2; 147 13 DX_PR*L0*L12
148 13 DX_PR*L0*L4; 149 3 DX_PR*L10*left_x_S; 150 2 DY_QR*DY_QR*fb
151 32 DY_QR*L0*L2; 152 95 DY_QR*L0*L24; 153 188 DY_QR*L10*left_x_S
154 57 DY_QR*L11*L2; 155 18 DY_QR*L12*L4; 156 2 DY_QR*L17*Px
157 4 DY_QR*L18*Px; 158 9 DY_QR*L18*fb; 159 8 DY_QR*L2*L7
160 3 DY_QR*L2*L8; 161 10 DY_QR*L7*cf; 162 2 DY_QR*fb*up_R
163 2 DY_QS*L19*L5; 164 10 DY_QS*L5*he; 165 88 L0*L1*L12
166 11 L0*L1*L2; 167 21 L0*L11*L20; 168 33 L0*L11*Px
169 15 L0*L13*L2; 170 11 L0*L14*L5; 171 21 L0*L17*up_R
172 4 L0*L18*Px; 173 4 L0*L2*L3; 174 1 L0*L20*L5
175 14 L0*L24*low_Q; 176 35 L0*L4*L9; 177 4 L0*L5*left_x_S
178 7 L0*L5*low_Q; 179 46 L0*Px*low_Q; 180 4 L0*T_BCF+*fb
181 89 L1*L22*L24; 182 4 L10*L11*L4; 183 10 L10*L14*L21
184 9 L10*L16*low_Q; 185 6 L10*L19*left_x_S; 186 17 L10*L2*L23
187 6 L10*L2*L5; 188 11 L10*L24*he; 189 7 L10*L26*L5
190 10 L10*L5*ea; 191 54 L11*L16*L24; 192 9 L11*L22*L24
193 22 L12*L16*L27; 194 31 L12*L18*L5; 195 18 L12*L2*L23
196 9 L12*L20*he; 197 12 L12*L6*low_Q; 198 12 L12*Px*he
199 12 L13*L2*L27; 200 8 L13*L2*he; 201 26 L14*L17*L18
202 42 L14*L17*L3; 203 10 L15*L21*he; 204 5 L16*L27*L8
205 17 L16*L7*L9; 206 21 L16*he*left_y_S; 207 5 L17*L27*fb
208 7 L17*L5*T_AEH+; 209 7 L17*Px*left_y_S; 210 3 L18*L18*cf
211 3 L18*L2*low_Q; 212 6 L18*L20*L5; 213 106 L18*L26*L5
214 17 L18*L27*T_BCF+; 215 3 L18*Px*up_R; 216 4 L2*cf*left_y_S
217 6 L20*L5*L6; 218 1 L22*L7*L9; 219 40 L24*L5*ea
220 10 L5*L6*low_P; 221 39 L5*ea*left_x_S; 222 9 cf*he*low_Q
```

## Node X0072

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR++--`.
Parent: `X0069`.
Assumptions: `AQR+, BQR+, EQR-, FQR-`.

```n6x-trace
plu FCEQR FCR -1
```

Polynomial: `M1`; `279` terms; upper bound `-26844611161396939148796219342316780946172961544237620953821377/4306179338583715655714446353118947895188605348088000000000000`.

```n6x-witnesses
C_ABH_1 P
C_BCR_1 Q
Q_ABSH_1 P
Q_EFPQ_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 33 Q_ABSH_1; 2 76 T_ABP+; 3 17 T_AHS-
4 142 T_APR-; 5 227 T_APS+; 6 84 T_BQR+
7 60 T_CEF+; 8 376 T_CHQ+; 9 360 T_CPQ-
10 74 T_CRS+; 11 87 T_EFR+; 12 207 T_EPR+
13 407 T_FHS-; 14 199 T_FQR-; 15 103 C_ABH_1*DY_QR
16 2 C_ABH_1*L2; 17 34 C_BCR_1*L14; 18 1 DX_PQ*L5
19 97 DX_PQ*T_ABC+; 20 18 DX_PQ*T_EPR+; 21 9 DX_PQ*he
22 49 DX_PR*L0; 23 279 DX_PR*he; 24 172 DY_QR*L12
25 291 DY_QR*L9; 26 207 DY_QR*Px; 27 80 DY_QR*Q_ABSH_1
28 20 DY_QR*Q_EFPQ_1; 29 1 DY_QR*T_EFQ+; 30 21 DY_QR*left_y_S
31 212 DY_QS*T_BHP+; 32 10 DY_QS*T_CHQ+; 33 159 L0*L5
34 213 L0*T_APS+; 35 184 L0*T_QRS+; 36 5 L0*he
37 7 L0*up_R; 38 65 L1*L24; 39 3 L1*L9
40 411 L10*L5; 41 103 L10*T_ABC+; 42 26 L10*T_APR-
43 452 L10*T_CPQ-; 44 371 L10*T_FQR-; 45 25 L11*L9
46 98 L11*Q_ABSH_1; 47 374 L11*T_CQR-; 48 147 L12*L27
49 2 L12*L9; 50 206 L12*T_CQR-; 51 83 L12*he
52 34 L13*T_APS+; 53 103 L13*T_CHQ+; 54 7 L13*T_FQR-
55 31 L14*L27; 56 39 L14*L5; 57 197 L14*Q_ABSH_1
58 18 L14*T_APR-; 59 880 L14*T_BCQ+; 60 926 L14*T_CHQ+
61 15 L14*T_FHS-; 62 6 L14*left_y_S; 63 34 L15*T_BQR+
64 15 L15*T_CRS+; 65 26 L15*T_EPR+; 66 34 L15*T_FQR-
67 7 L15*he; 68 160 L16*L27; 69 34 L16*L5
70 35 L16*T_APS+; 71 7 L16*T_BHP+; 72 6 L16*T_EFR+
73 77 L16*T_EPR+; 74 6 L17*L9; 75 104 L17*T_APR-
76 48 L17*left_px_S; 77 673 L18*L27; 78 79 L18*L9
79 778 L18*T_ABP+; 80 722 L18*T_AHP-; 81 13 L18*T_APQ-
82 389 L18*left_y_S; 83 33 L19*T_CPQ-; 84 144 L2*L27
85 2 L2*L9; 86 43 L2*T_ABC+; 87 82 L2*T_CPQ-
88 22 L2*T_CRS+; 89 113 L20*T_ABC+; 90 110 L20*T_CHQ+
91 199 L20*T_CPQ-; 92 8 L20*T_EFR+; 93 110 L22*L5
94 98 L22*T_APS+; 95 20 L22*T_CPQ-; 96 73 L23*T_AHP-
97 405 L24*L27; 98 2 L24*L9; 99 22 L24*Px
100 244 L24*T_ACP+; 101 394 L24*left_y_S; 102 15 L25*L5
103 195 L25*T_ABC+; 104 158 L26*T_APR-; 105 162 L26*T_BQR+
106 468 L26*T_CPQ-; 107 37 L26*T_FQR-; 108 58 L27*L6
109 2 L27*ea; 110 66 L27*he; 111 60 L27*up_R
112 1 L3*L5; 113 2 L3*T_AHP-; 114 62 L3*T_AHS-
115 9 L3*T_EPR+; 116 113 L4*T_APR-; 117 16 L5*L5
118 55 L5*L6; 119 63 L5*T_CQR-; 120 16 L5*T_CRS+
121 86 L5*T_PRS+; 122 13 L6*T_FQR-; 123 184 L7*T_BQR+
124 90 L7*T_CHQ+; 125 13 L8*T_APR-; 126 142 L9*he
127 430 L9*left_y_S; 128 4 Px*Px; 129 3 Px*left_y_S
130 2 Q_ABSH_1*ea; 131 4 Q_ABSH_1*low_Q; 132 8 T_ABC+*ea
133 15 T_ABP+*left_y_S; 134 75 T_ABP+*low_Q; 135 16 T_AHS-*left_x_S
136 9 T_APR-*fb; 137 18 T_APR-*low_P; 138 16 T_APS+*cf
139 213 T_APS+*ha; 140 32 T_APS+*left_x_S; 141 9 T_APS+*up_R
142 6 T_BQR+*cf; 143 184 T_BQR+*ea; 144 14 T_CEQ+*left_y_S
145 103 T_CHQ+*ea; 146 7 T_CPQ-*ha; 147 3 T_EHP+*he
148 8 T_EHS-*left_y_S; 149 11 T_EPR+*he; 150 9 T_EPR+*left_x_S
151 4 T_EQR-*he; 152 125 DX_PQ*DY_QR*L27; 153 1 DX_PQ*DY_QR*he
154 9 DX_PQ*DY_QS*he; 155 9 DX_PQ*L0*up_R; 156 80 DX_PQ*L1*L27
157 1 DX_PQ*L10*left_y_S; 158 26 DX_PQ*L12*L27; 159 34 DX_PQ*L14*L24
160 125 DX_PQ*L18*L27; 161 1 DX_PQ*L2*left_y_S; 162 4 DX_PQ*L7*he
163 8 DX_PR*DX_PR*he; 164 8 DX_PR*DX_PR*left_y_S; 165 104 DX_PR*L0*L17
166 7 DX_PR*L1*L9; 167 8 DX_PR*L13*L7; 168 15 DX_PR*L15*he
169 102 DX_PR*L16*he; 170 9 DX_PR*L18*L7; 171 14 DX_PR*L18*L9
172 1 DX_PR*L18*left_y_S; 173 9 DX_PR*L24*ea; 174 8 DX_PR*L27*up_R
175 103 DX_PR*L4*left_y_S; 176 9 DX_PR*L7*fb; 177 37 DY_QR*DY_QS*L9
178 77 DY_QR*L0*L24; 179 363 DY_QR*L10*cf; 180 80 DY_QR*L11*L24
181 7 DY_QR*L12*he; 182 11 DY_QR*L16*L7; 183 69 DY_QR*L17*L4
184 38 DY_QR*L18*L9; 185 8 DY_QR*L20*L9; 186 79 DY_QR*L5*L5
187 15 DY_QR*L9*low_P; 188 6 DY_QR*Px*cf; 189 8 DY_QR*cf*he
190 11 DY_QS*L24*L27; 191 16 DY_QS*L4*L5; 192 6 DY_QS*T_BCF+*he
193 10 L0*L1*L2; 194 211 L0*L11*L24; 195 158 L0*L12*L25
196 7 L0*L14*L5; 197 103 L0*L16*left_y_S; 198 9 L0*L17*up_R
199 107 L0*L18*L25; 200 257 L0*L2*L25; 201 43 L0*L2*L5
202 26 L0*L21*left_y_S; 203 8 L0*L26*L5; 204 97 L0*L4*low_Q
205 44 L0*Px*Px; 206 60 L1*L12*L12; 207 92 L1*L12*up_S
208 35 L1*L16*L24; 209 10 L1*L2*he; 210 15 L1*L20*L9
211 15 L1*L24*left_x_S; 212 4 L10*L13*up_R; 213 15 L10*L14*L5
214 15 L10*L14*Px; 215 459 L10*L18*L5; 216 17 L10*L18*Px
217 15 L11*L14*L9; 218 52 L11*L17*L24; 219 42 L11*L17*L9
220 11 L11*L22*L5; 221 99 L11*L27*L3; 222 15 L11*L27*L5
223 5 L12*L15*L6; 224 469 L12*L18*left_y_S; 225 24 L12*L20*L27
226 1 L12*L22*L5; 227 22 L12*L23*he; 228 5 L12*he*up_R
229 9 L13*L17*L27; 230 3 L13*L7*L7; 231 26 L14*L14*L21
232 3 L14*L15*L7; 233 468 L14*L17*left_y_S; 234 143 L14*L20*L27
235 14 L14*L20*L9; 236 141 L14*L24*L5; 237 15 L14*L24*left_x_S
238 454 L14*L4*left_y_S; 239 13 L15*L18*L5; 240 69 L16*L18*L5
241 6 L16*L5*L6; 242 6 L16*L9*he; 243 3 L17*L2*L27
244 22 L17*L27*L6; 245 6 L17*L7*T_BCF+; 246 124 L18*L21*L27
247 6 L18*L24*L27; 248 290 L18*L26*L5; 249 77 L18*L3*left_y_S
250 82 L18*L5*Px; 251 20 L18*L5*up_R; 252 4 L19*L24*left_y_S
253 155 L19*L27*L5; 254 2 L2*L2*left_y_S; 255 32 L2*L25*L27
256 22 L2*L27*L5; 257 2 L2*L27*Px; 258 17 L2*L27*ea
259 8 L20*L7*cf; 260 6 L20*L7*he; 261 8 L21*L22*L27
262 102 L22*L24*L5; 263 103 L22*Px*left_y_S; 264 22 L23*L3*L5
265 16 L24*L24*low_P; 266 11 L24*L26*left_y_S; 267 32 L24*L27*Px
268 11 L24*L6*left_y_S; 269 16 L24*L9*ha; 270 2 L25*L27*he
271 8 L27*L4*ea; 272 15 L27*L9*low_P; 273 9 L27*Px*he
274 22 L27*Px*up_R; 275 8 L5*L6*L6; 276 8 L5*L7*ea
277 8 L5*he*up_R; 278 3 L7*low_P*low_P; 279 6 Px*he*low_Q
```

## Node X0073

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR+-++`.
Parent: `X0069`.
Assumptions: `AQR+, BQR-, EQR+, FQR+`.

```n6x-trace
plu QACER QAE -1
plu QACFR QAF -1
plu RACEQ RAE -1
plu RAEFH RAF -1
```

Polynomial: `M1`; `352` terms; upper bound `-18297791215096496828780671242969175331570404484490853/1996960976696047648577507398980173121816000000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_AHQ_1 P
C_CEP_2 QR
C_CEQ_1 R
Q_ABRP_1 Q
Q_BCRP_1 Q
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 1027 C_ACH_2; 2 3544 T_ABC+; 3 160 T_APQ-
4 26 T_AQR+; 5 1428 T_BQR-; 6 132 T_CPQ-
7 1729 T_EFR+; 8 251 T_FHS-; 9 125 T_HPS+
10 6022 left_px_S; 11 42 C_ACH_2*L1; 12 513 C_ACH_2*L12
13 560 C_ACH_2*L15; 14 1234 C_ACH_2*L17; 15 73 C_ACH_2*L23
16 9126 C_ACH_2*L3; 17 29 C_ACH_2*L6; 18 271 C_ACH_2*L9
19 651 C_ACH_2*left_y_S; 20 969 C_AHQ_1*L27; 21 1802 C_CEP_2*L21
22 145 C_CEQ_1*L5; 23 295 DX_PQ*T_AER-; 24 168 DX_PQ*T_APS+
25 234 DX_PQ*T_AQR+; 26 4469 DX_PQ*T_BHP+; 27 234 DX_PQ*T_BQS+
28 369 DX_PQ*T_CER+; 29 291 DX_PQ*T_CHQ+; 30 3938 DX_PQ*left_px_S
31 701 DX_PR*T_CPQ-; 32 218 DX_PR*T_HPS+; 33 1217 DX_PR*left_px_S
34 77 DY_QS*L5; 35 1016 DY_QS*T_BQR-; 36 47 DY_QS*T_EQR+
37 676 DY_QS*left_px_S; 38 233 L0*L5; 39 47 L0*Q_ABRP_1
40 639 L0*T_BHP+; 41 269 L0*T_BQR-; 42 144 L0*T_CER+
43 47 L1*T_ABC+; 44 47 L1*T_CPQ-; 45 3067 L1*T_HPS+
46 487 L10*L27; 47 8561 L10*T_ABP+; 48 13363 L10*T_APS+
49 8561 L10*T_BHP+; 50 154 L10*T_ERS-; 51 41353 L10*left_px_S
52 609 L11*T_ABC+; 53 42 L11*T_AQR+; 54 445 L11*T_CPQ-
55 206 L11*T_FHS-; 56 10249 L11*T_HPS+; 57 1275 L12*L27
58 651 L12*L5; 59 548 L12*T_BHP+; 60 4227 L12*T_BPQ-
61 5337 L12*T_CER+; 62 871 L12*T_CPQ-; 63 3840 L12*T_EQR+
64 648 L12*he; 65 1564 L13*T_EFR+; 66 2761 L14*T_AHS-
67 47 L14*T_EQR+; 68 306 L14*T_HPS+; 69 43 L15*L27
70 153 L15*L5; 71 306 L15*T_APS+; 72 106 L15*T_CER+
73 93 L16*L27; 74 280 L16*L5; 75 3557 L16*T_ABC+
76 2737 L16*T_APS+; 77 234 L16*T_BQR-; 78 277 L16*T_CPQ-
79 506 L16*T_FHS-; 80 996 L16*T_HPS+; 81 748 L17*Q_ABRP_1
82 230 L17*T_APQ-; 83 17 L17*T_EFR+; 84 176 L18*T_ABC+
85 47 L18*T_AQR+; 86 1016 L18*T_BQR-; 87 47 L18*T_CPQ-
88 28 L19*L27; 89 933 L2*T_ABC+; 90 930 L2*T_APQ-
91 1011 L2*T_CPQ-; 92 75 L20*T_APS+; 93 225 L20*T_EFR+
94 16 L21*L27; 95 2888 L21*T_ABC+; 96 70 L21*T_BQR-
97 127 L21*T_CER+; 98 90 L21*T_EQR+; 99 225 L22*T_EFR+
100 129 L23*T_ABC+; 101 21 L23*T_CHQ+; 102 47 L23*T_CPQ-
103 21 L23*T_EQR+; 104 183 L23*T_FHS-; 105 293 L24*Q_ABRP_1
106 3669 L24*T_APQ-; 107 700 L24*T_BHP+; 108 82 L24*T_CER+
109 82 L24*T_EQR+; 110 969 L26*T_AQR+; 111 696 L27*T_ACR+
112 3067 L27*T_AHP-; 113 442 L27*T_EFR+; 114 86 L27*he
115 1577 L3*L5; 116 2874 L3*T_AQR+; 117 313 L3*T_HPS+
118 387 L3*left_px_S; 119 362 L4*T_APQ-; 120 602 L4*T_BQR-
121 801 L5*L5; 122 397 L5*L6; 123 925 L5*Q_BCRP_1
124 1585 L5*T_AER-; 125 122 L5*T_BHQ-; 126 85 L5*T_BPQ-
127 3353 L5*T_CER+; 128 1703 L5*T_EHP+; 129 22 L5*fb
130 70 L5*up_S; 131 597 L6*T_ABC+; 132 597 L6*T_APQ-
133 442 L6*T_EFR+; 134 101 L6*left_px_S; 135 445 L7*T_BQR-
136 106 L7*T_CPQ-; 137 397 L7*he; 138 1564 L9*Q_ABRP_1
139 454 L9*T_AHP-; 140 462 L9*T_AHS-; 141 649 L9*T_AQR+
142 305 L9*T_BPQ-; 143 305 L9*T_BQR-; 144 63 L9*T_CHQ+
145 1564 L9*T_CPQ-; 146 661 L9*T_CQR-; 147 630 Px*T_ABC+
148 4397 Px*T_APQ-; 149 3269 Px*T_APS+; 150 304 Px*T_AQR+
151 305 Px*T_BHP+; 152 3265 Px*T_CER+; 153 548 Px*T_CHQ+
154 4002 Px*T_EQR+; 155 597 Q_ABRP_1*he; 156 1564 T_ABC+*fb
157 639 T_ABC+*low_P; 158 2976 T_ABC+*up_S; 159 442 T_AEQ-*he
160 1869 T_APQ-*fb; 161 47 T_APQ-*low_Q; 162 47 T_APQ-*up_R
163 1302 T_AQR+*cf; 164 82 T_AQR+*left_x_S; 165 47 T_AQR+*low_P
166 21 T_AQR+*up_R; 167 305 T_BHP+*fb; 168 445 T_BQR-*ha
169 279 T_CER+*fb; 170 232 T_CPQ-*up_S; 171 620 T_CQR-*he
172 162 T_EFR+*cf; 173 1364 T_EFR+*left_y_S; 174 919 T_EQR+*fb
175 442 T_EQR+*he; 176 1027 T_FHS-*ha; 177 670 T_FQR+*he
178 4517 cf*left_px_S; 179 42 DX_PQ*DX_PQ*L1; 180 291 DX_PQ*DX_PQ*L10
181 234 DX_PQ*DX_PQ*L27; 182 47 DX_PQ*DY_QS*L10; 183 556 DX_PQ*L0*L10
184 2560 DX_PQ*L0*L12; 185 108 DX_PQ*L0*L23; 186 682 DX_PQ*L0*L24
187 3697 DX_PQ*L0*Px; 188 4737 DX_PQ*L10*L12; 189 838 DX_PQ*L10*fb
190 5121 DX_PQ*L10*left_x_S; 191 3904 DX_PQ*L12*L27; 192 445 DX_PQ*L14*he
193 234 DX_PQ*L18*L24; 194 47 DX_PQ*L18*he; 195 26 DX_PQ*L23*he
196 236 DX_PQ*L24*L27; 197 236 DX_PQ*L24*left_y_S; 198 969 DX_PQ*L27*L7
199 974 DX_PQ*L3*he; 200 840 DX_PQ*L5*fb; 201 1564 DX_PQ*L9*he
202 58 DX_PR*DX_PR*he; 203 186 DX_PR*L0*L10; 204 262 DX_PR*L10*L21
205 445 DX_PR*L15*he; 206 535 DX_PR*L27*L3; 207 969 DX_PR*L27*L6
208 840 DX_PR*L5*cf; 209 97 DX_PR*Px*he; 210 204 DX_PR*he*up_R
211 15 DY_QS*L16*L5; 212 47 L0*L1*L12; 213 306 L0*L12*L15
214 108 L0*L12*L23; 215 7706 L0*L12*L5; 216 759 L0*L12*L9
217 136 L0*L12*Px; 218 3126 L0*L16*L5; 219 155 L0*L17*he
220 1869 L0*L21*L9; 221 319 L0*L21*Px; 222 144 L0*L21*he
223 129 L0*L21*low_Q; 224 21 L0*L21*up_R; 225 200 L0*L23*L5
226 2394 L0*L24*L5; 227 462 L0*L24*L9; 228 2439 L0*L27*T_BCF+
229 708 L0*L5*L6; 230 641 L0*L5*L8; 231 9126 L0*L5*Px
232 5 L0*L5*ea; 233 582 L0*L5*up_S; 234 9269 L1*L10*L24
235 33 L1*L14*L5; 236 129 L1*L19*L5; 237 537 L1*L2*L27
238 1027 L1*L9*left_y_S; 239 821 L10*L10*L25; 240 1688 L10*L10*Px
241 10249 L10*L10*fb; 242 31104 L10*L10*left_x_S; 243 1572 L10*L13*L21
244 153 L10*L14*L21; 245 204 L10*L21*L22; 246 1435 L10*L21*L24
247 768 L10*L21*L7; 248 97 L10*L21*Px; 249 2260 L10*L3*L5
250 3499 L10*L5*L5; 251 115 L10*L5*low_P; 252 550 L10*L5*low_Q
253 651 L10*L5*up_S; 254 118 L11*L21*L27; 255 1166 L11*L24*L9
256 2225 L11*L25*L5; 257 676 L11*L27*left_x_S; 258 3657 L11*L5*L8
259 1492 L11*L5*Px; 260 3159 L11*L9*L9; 261 678 L12*L13*L27
262 170 L12*L15*L5; 263 1947 L12*L17*he; 264 733 L12*L18*L5
265 476 L12*L18*Px; 266 232 L12*L19*L27; 267 3347 L12*L2*L27
268 70 L12*L21*L23; 269 176 L12*L21*L5; 270 1505 L12*L21*he
271 778 L12*L23*L5; 272 267 L12*L23*he; 273 692 L12*L27*L8
274 840 L12*L3*L5; 275 1032 L12*L3*he; 276 155 L12*Px*he
277 293 L13*L21*L27; 278 1564 L14*L21*L9; 279 153 L14*L22*L5
280 3656 L14*L24*Px; 281 232 L14*L27*L5; 282 47 L15*L18*L5
283 232 L15*L24*L5; 284 724 L15*L5*L9; 285 840 L15*L5*cf
286 234 L16*L27*L3; 287 358 L17*L23*L5; 288 82 L17*L24*he
289 506 L17*L27*L9; 290 922 L17*L27*he; 291 232 L17*L27*low_P
292 2109 L17*Px*he; 293 444 L18*L21*L3; 294 17 L18*L21*L9
295 1186 L18*L3*L5; 296 232 L18*L5*up_S; 297 1331 L18*L9*he
298 445 L18*Px*he; 299 47 L19*L19*L5; 300 1016 L19*L2*L27
301 15 L19*L27*L5; 302 145 L19*L5*L5; 303 429 L2*L21*L27
304 127 L20*L21*L5; 305 127 L20*L5*up_R; 306 70 L21*L23*Px
307 82 L21*L25*L5; 308 964 L21*L27*fb; 309 273 L21*L27*ha
310 840 L21*L5*cf; 311 176 L21*L5*low_P; 312 253 L21*L9*he
313 3162 L22*L3*L5; 314 1869 L22*L3*L9; 315 620 L22*L5*he
316 94 L22*L5*left_y_S; 317 26 L22*L5*low_Q; 318 162 L22*L9*L9
319 225 L22*L9*up_R; 320 293 L23*L24*Px; 321 791 L23*L27*cf
322 1016 L23*L27*fb; 323 2428 L23*L5*L5; 324 778 L23*L5*fb
325 887 L23*L9*he; 326 1042 L23*Px*he; 327 1640 L24*L27*cf
328 1256 L24*L7*L9; 329 1640 L24*cf*left_y_S; 330 82 L25*L5*up_R
331 692 L27*Px*Px; 332 692 L27*Px*fb; 333 15 L27*cf*low_Q
334 1206 L3*L5*he; 335 692 L3*L9*left_y_S; 336 29 L4*L7*he
337 840 L5*L5*low_P; 338 29 L5*L6*L6; 339 1719 L5*L6*fb
340 82 L5*L7*left_x_S; 341 1193 L5*L9*ha; 342 3499 L5*T_BCF+*he
343 840 L5*fb*low_Q; 344 515 L5*he*low_Q; 345 442 L6*L9*he
346 1520 L7*L9*cf; 347 661 L7*L9*low_Q; 348 101 L7*L9*up_S
349 1357 L9*he*left_x_S; 350 821 L9*he*left_y_S; 351 15 L9*left_y_S*low_Q
352 964 L9*left_y_S*up_R
```

## Node X0074

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR+--+`.
Parent: `X0069`.
Assumptions: `AQR+, BQR-, EQR-, FQR+`.

```n6x-trace
plu QACFR QAF -1
plu QBCER QBE 1
plu RAFHQ RAF -1
plu RBCEQ RBE 1
```

Polynomial: `M1`; `84` terms; upper bound `-68371764742890441050999887312946138119161517/39643742825519508419447480076350400000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_BEP_2 QR
C_CHP_1 Q
C_EFQ_1 R
C_EPQ_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 4 C_ACH_2; 2 60 C_BEP_2; 3 8 C_CHP_1
4 6 C_EFQ_1; 5 23 T_ABC+; 6 21 T_AHP-
7 53 T_APS+; 8 3 T_BCQ+; 9 1 T_BQS+
10 1 T_CHQ+; 11 2 T_CPQ-; 12 8 T_EFS+
13 6 T_FHS-; 14 26 left_px_S; 15 2 C_BEP_2*L14
16 6 C_BEP_2*L2; 17 1 C_BEP_2*L8; 18 1 C_CHP_1*L14
19 7 C_CHP_1*left_x_S; 20 5 C_EFQ_1*L13; 21 5 C_EPQ_1*fb
22 4 DX_PQ*he; 23 1 DY_QS*T_CPQ-; 24 18 L0*L5
25 53 L1*L24; 26 23 L1*L3; 27 1 L1*cf
28 13 L10*L5; 29 9 L10*fb; 30 4 L12*L17
31 51 L12*L27; 32 2 L12*L9; 33 60 L15*L3
34 10 L15*L5; 35 3 L15*L9; 36 1 L15*T_BQS+
37 2 L16*L27; 38 4 L16*T_EFH+; 39 4 L16*left_px_S
40 1 L18*L27; 41 3 L18*L5; 42 1 L18*T_CPQ-
43 2 L19*fb; 44 7 L2*L7; 45 25 L24*L27
46 8 L24*L7; 47 1 L24*T_CHQ+; 48 25 L24*left_y_S
49 1 L3*Py; 50 5 L3*T_BEQ+; 51 5 L3*T_BPQ-
52 1 L5*left_x_S; 53 15 L7*L9; 54 45 L7*Px
55 14 L9*left_y_S; 56 9 Px*he; 57 1 Px*left_px_S
58 2 Px*left_y_S; 59 7 T_AHP-*left_x_S; 60 1 T_BCP+*left_y_S
61 1 T_CHQ+*left_x_S; 62 5 DX_PQ*L15*L9; 63 1 DX_PQ*L24*L7
64 1 DX_PQ*L5*left_x_S; 65 7 L0*L12*left_x_S; 66 3 L10*L17*L24
67 8 L10*L5*left_x_S; 68 1 L11*L12*fb; 69 1 L11*L24*Px
70 1 L12*L5*fb; 71 1 L12*L6*left_x_S; 72 2 L14*L3*low_P
73 4 L14*L7*Px; 74 1 L15*L18*L24; 75 2 L15*L3*Px
76 1 L15*L3*fb; 77 7 L15*L5*left_x_S; 78 1 L15*Px*he
79 1 L16*he*left_x_S; 80 1 L18*L26*L5; 81 1 L2*L8*he
82 1 L2*Px*he; 83 1 L3*L5*Px; 84 1 L5*left_x_S*low_Q
```

## Node X0075

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR+---`.
Parent: `X0069`.
Assumptions: `AQR+, BQR-, EQR-, FQR-`.

```n6x-trace
plu FCEQR FCR -1
plu QBCER QBE 1
plu QBCFR QBF 1
plu RBCEQ RBE 1
plu RBCFQ RBF 1
```

Polynomial: `M1`; `23` terms; upper bound `-1723564835776008200167939561/3156078912757726060000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_BEP_2 QR
C_BFP_2 QR
C_CHP_1 Q
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 C_ACH_2; 2 11 C_BEP_2; 3 4 C_BFP_2
4 9 T_ABC+; 5 15 T_APS+; 6 3 T_EFS+
7 3 T_FHS-; 8 4 C_CHP_1*left_x_S; 9 7 L0*L5
10 15 L1*L24; 11 9 L1*L3; 12 3 L11*L24
13 15 L12*L27; 14 4 L12*left_x_S; 15 4 L14*left_px_S
16 15 L15*L3; 17 3 L24*L7; 18 3 L7*L9
19 11 L7*Px; 20 3 cf*left_y_S; 21 4 left_px_S*low_P
22 4 L10*L5*left_x_S; 23 4 L15*L5*left_x_S
```

## Node X0076

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR--++`.
Parent: `X0069`.
Assumptions: `AQR-, BQR-, EQR+, FQR+`.

```n6x-trace
```

Polynomial: `M1`; `94` terms; upper bound `-11231814395197109321495083796409483184513909/7137692228906608740657401802737400000000000`.

```n6x-witnesses
C_AHR_2 PQ
C_APR_1 Q
C_CEP_2 QR
C_CHP_1 Q
C_CPR_1 Q
Q_ABRP_1 Q
Q_BCRP_1 Q
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 58 C_AHR_2; 2 5 C_APR_1; 3 36 T_ABC+
4 13 T_APS+; 5 13 T_AQR-; 6 4 T_BHP+
7 52 T_CER+; 8 7 T_CHQ+; 9 11 T_EFR+
10 91 T_FHS-; 11 15 T_HPS+; 12 36 T_PQR+
13 24 C_APR_1*L24; 14 28 C_APR_1*Px; 15 6 C_CEP_2*DX_QR
16 9 C_CEP_2*L12; 17 1 C_CHP_1*DX_QR; 18 3 C_CPR_1*L2
19 1 DX_PQ*DX_PQ; 20 7 DX_PQ*L10; 21 7 DX_PQ*L23
22 4 DX_PQ*L5; 23 12 DX_PQ*T_APQ-; 24 6 DX_PQ*T_CER+
25 7 DX_PQ*T_EPQ+; 26 7 DX_PQ*T_EQR+; 27 5 DX_PQ*T_PQR+
28 94 DX_PR*T_ABC+; 29 10 DX_QR*L0; 30 4 DX_QR*L5
31 1 DX_QR*T_CQR-; 32 36 L0*L5; 33 13 L1*L24
34 38 L10*L21; 35 4 L10*L5; 36 12 L11*L24
37 9 L12*L3; 38 20 L12*Q_ABRP_1; 39 13 L12*Q_BCRP_1
40 10 L12*T_APQ-; 41 4 L13*L24; 42 17 L13*T_AQR-
43 8 L14*L21; 44 8 L14*T_CPQ-; 45 13 L16*T_AQR-
46 1 L16*T_CHQ+; 47 7 L18*L5; 48 28 L2*L27
49 3 L20*L27; 50 24 L20*T_APS+; 51 24 L20*T_BHP+
52 3 L20*T_CHQ+; 53 20 L20*T_CPQ-; 54 1 L20*T_PQR+
55 1 L21*Q_BCRP_1; 56 8 L21*T_ABP+; 57 24 L21*T_APQ-
58 26 L21*he; 59 11 L22*L9; 60 31 L23*L5
61 94 L24*L27; 62 94 L24*left_y_S; 63 16 L4*T_BHP+
64 8 L4*T_PQR+; 65 13 L4*he; 66 7 L5*L6
67 19 L5*Py; 68 22 L5*T_EHP+; 69 20 L5*T_EPR+
70 11 L7*cf; 71 91 L9*left_y_S; 72 6 Px*T_CER+
73 28 Px*left_y_S; 74 8 T_CPQ-*low_P; 75 1 DX_PQ*DX_PQ*L1
76 1 DX_PQ*DX_PR*he; 77 10 DX_PQ*L0*L21; 78 1 DX_PQ*L22*L5
79 102 DX_PR*L0*L2; 80 94 DX_PR*L0*L5; 81 1 DX_PR*L10*L12
82 1 DX_QR*L14*L5; 83 24 L1*L12*L24; 84 25 L10*L21*Px
85 3 L11*L21*L5; 86 1 L12*L14*low_Q; 87 24 L12*L20*L27
88 6 L13*L4*he; 89 8 L18*L21*L4; 90 20 L2*L21*L7
91 3 L2*L4*he; 92 4 L2*L5*L6; 93 13 L21*L7*T_BCF+
94 1 L21*T_BCF+*he
```

## Node X0077

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR---+`.
Parent: `X0069`.
Assumptions: `AQR-, BQR-, EQR-, FQR+`.

```n6x-trace
plu QACER QAE 1
plu QBCER QBE 1
plu RACEQ RAE 1
plu RBCEQ RBE 1
via P AHQ AE 1
```

Exclusion: `cluster AEH P AEP QR`.

## Node X0078

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR--++/QR----`.
Parent: `X0069`.
Assumptions: `AQR-, BQR-, EQR-, FQR-`.

```n6x-trace
plu FCEQR FCR -1
plu QACER QAE 1
plu QACFR QAF 1
plu QBCER QBE 1
plu QBCFR QBF 1
plu RACEQ RAE 1
plu RACFQ RAF 1
plu RBCEQ RBE 1
plu RBCFQ RBF 1
via P AHQ AE 1
via P AHQ AF 1
```

Exclusion: `cluster AEH P AEP QR`.

## Node X0079

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR---+`.
Parent: `X0065`.
Assumptions: `APR-, BPR-, EPR-, FPR+`.

```n6x-trace
plu EBCPR EBR -1
plu ECPQR EQR -1
plu PABER PAE 1
plu RABEP RAE 1
```

Split: `cross QR`.
Children: `QR++-+=X0080; QR++--=X0081; QR+--+=X0082; QR+---=X0083; QR---+=X0084; QR----=X0085`.

## Node X0080

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR---+/QR++-+`.
Parent: `X0079`.
Assumptions: `AQR+, BQR+, EQR-, FQR+`.

```n6x-trace
plu QACFR QAF -1
plu QBCFR QBF -1
plu RAEFQ RAF -1
plu RBEFQ RBF -1
```

Polynomial: `M1`; `306` terms; upper bound `-4378019623299562838343145646219623226891588698117/1288361920449062999082262838051724594720000000000`.

```n6x-witnesses
C_ABH_1 P
C_ACH_2 PQ
C_AEH_1 P
C_AHR_1 P
C_BCF_1 Q
C_EFP_1 R
C_EFQ_1 R
C_EQS_1 R
Q_ABSH_1 P
Q_BCEF_2 QR
Q_BCER_1 Q
Q_CEFP_2 QR
Q_CEFQ_1 R
Q_CERP_1 Q
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 89 T_ABC+; 2 40 T_ABP+; 3 36 T_BQR+
4 52 T_CHQ+; 5 43 T_CPQ-; 6 8 T_ERS-
7 44 T_FHS-; 8 16 T_FQR+; 9 14 T_HPS+
10 268 C_ABH_1*DX_PQ; 11 166 C_ABH_1*L10; 12 340 C_ABH_1*L12
13 17 C_ACH_2*fb; 14 40 C_ACH_2*he; 15 17 C_ACH_2*left_y_S
16 25 C_AHR_1*L5; 17 23 C_EFP_1*L5; 18 39 C_EFQ_1*L22
19 1 C_EFQ_1*he; 20 45 C_EQS_1*L10; 21 12 DX_PQ*L5
22 8 DX_PQ*T_AHS-; 23 7 DX_PR*T_ABP+; 24 39 DX_PR*T_BHP+
25 89 DX_PR*T_FHS-; 26 26 DY_QR*L0; 27 51 DY_QR*L12
28 24 DY_QR*L27; 29 42 DY_QR*L5; 30 131 DY_QR*Q_ABSH_1
31 74 DY_QR*T_ABP+; 32 44 DY_QR*T_BHP+; 33 261 DY_QR*T_CHQ+
34 287 DY_QR*T_CPQ-; 35 31 DY_QR*T_EPR-; 36 750 DY_QR*left_px_S
37 179 DY_QS*T_CPQ-; 38 10 L0*L1; 39 60 L0*L21
40 75 L0*L27; 41 33 L0*L5; 42 117 L0*Px
43 32 L0*T_BQR+; 44 343 L0*left_px_S; 45 1 L0*low_Q
46 49 L1*L24; 47 160 L1*T_EPR-; 48 16 L10*L27
49 73 L10*L5; 50 189 L10*T_BQR+; 51 3 L10*fb
52 180 L11*Q_ABSH_1; 53 1 L11*Q_CEFQ_1; 54 141 L11*T_AHS-
55 2 L12*Px; 56 5 L12*T_BPQ-; 57 51 L12*T_CEQ+
58 24 L12*T_CPQ-; 59 189 L12*T_CQR-; 60 51 L12*T_EQR-
61 59 L13*T_APS+; 62 149 L13*T_ERS-; 63 9 L14*L27
64 66 L14*Q_BCER_1; 65 160 L14*T_AER+; 66 44 L14*T_BER+
67 103 L14*T_CQS-; 68 135 L14*T_ERS-; 69 33 L14*T_FQR+
70 14 L14*left_px_S; 71 66 L15*T_EQR-; 72 268 L17*T_AHP-
73 371 L17*T_APR-; 74 166 L18*T_FQR+; 75 166 L19*T_BQR+
76 110 L19*T_ERS-; 77 109 L2*L27; 78 19 L2*T_APQ-
79 31 L2*T_EFS+; 80 33 L2*T_EPR-; 81 57 L2*T_HPS+
82 147 L20*left_px_S; 83 166 L21*L27; 84 149 L21*T_AEP+
85 56 L21*T_APQ-; 86 139 L21*T_CHQ+; 87 238 L22*T_APS+
88 39 L22*T_EQR-; 89 71 L22*T_ERS-; 90 78 L22*T_FHS-
91 260 L22*T_FQR+; 92 1177 L22*left_px_S; 93 31 L23*T_APR-
94 193 L23*T_BFR-; 95 110 L23*T_BHP+; 96 221 L23*T_BQR+
97 216 L23*T_CPQ-; 98 70 L24*L27; 99 14 L24*Px
100 26 L24*Q_CEFP_2; 101 92 L24*Q_CERP_1; 102 90 L24*left_y_S
103 22 L25*T_EFR+; 104 255 L25*T_EPR-; 105 200 L26*T_ABC+
106 76 L26*T_APR-; 107 6 L26*T_ERS-; 108 78 L26*T_FQR+
109 5 L27*L6; 110 10 L27*L9; 111 89 L27*T_AEP+
112 23 L27*T_BCF+; 113 98 L27*T_BCQ+; 114 87 L27*T_BHR-
115 39 L27*T_CER+; 116 16 L27*low_Q; 117 47 L3*T_CPQ-
118 285 L4*T_APR-; 119 92 L4*left_px_S; 120 4 L5*L6
121 12 L5*low_Q; 122 69 L6*T_APR-; 123 45 L6*T_CHQ+
124 66 L6*T_CPQ-; 125 6 L6*left_px_S; 126 4 L7*Q_BCEF_2
127 44 L7*T_ABP+; 128 1 L7*T_AEP+; 129 79 L7*T_BQR+
130 135 L7*T_ERS-; 131 57 L8*T_ABP+; 132 33 L8*T_AHS-
133 33 L8*T_APS+; 134 33 L8*T_ERS-; 135 33 L9*T_EFR+
136 33 L9*T_FQR+; 137 58 L9*left_y_S; 138 25 Px*T_BFQ-
139 268 Px*T_CHQ+; 140 33 Px*T_EFR+; 141 31 Q_ABSH_1*cf
142 39 Q_ABSH_1*ea; 143 13 Q_BCEF_2*fb; 144 18 Q_CEFQ_1*fb
145 23 T_ABC+*left_x_S; 146 129 T_AHP-*cf; 147 123 T_AHP-*fb
148 23 T_AHP-*left_y_S; 149 104 T_APR-*up_S; 150 135 T_APS+*he
151 23 T_APS+*left_y_S; 152 40 T_BFR-*he; 153 57 T_BHP+*left_x_S
154 33 T_BQR+*left_x_S; 155 97 T_BQR+*low_P; 156 33 T_BQR+*up_S
157 18 T_CHQ+*left_x_S; 158 203 T_CHQ+*up_R; 159 23 T_CHQ+*up_S
160 427 T_CPQ-*up_R; 161 135 T_ERS-*ea; 162 1 T_FQR+*ea
163 33 T_FQR+*low_P; 164 321 ha*left_px_S; 165 31 C_AEH_1*L1*L5
166 40 C_AEH_1*L20*L5; 167 65 C_BCF_1*DY_QR*L12; 168 127 C_BCF_1*DY_QR*L14
169 58 C_BCF_1*L10*fb; 170 25 C_BCF_1*L18*Px; 171 130 DX_PQ*L0*L12
172 77 DX_PQ*L0*Px; 173 65 DX_PQ*L10*L20; 174 28 DX_PQ*L14*Px
175 110 DX_PQ*L18*L27; 176 23 DX_PQ*L27*L27; 177 1 DX_PQ*he*he
178 220 DX_PR*L0*L4; 179 3 DX_PR*L10*L8; 180 59 DX_PR*L14*L24
181 203 DX_PR*L18*L5; 182 46 DX_PR*L27*ea; 183 57 DX_PR*L9*left_y_S
184 27 DY_QR*DY_QR*fb; 185 39 DY_QR*DY_QR*left_x_S; 186 39 DY_QR*DY_QS*L5
187 31 DY_QR*L0*L21; 188 1 DY_QR*L0*L9; 189 189 DY_QR*L10*L12
190 260 DY_QR*L10*L5; 191 204 DY_QR*L10*Px; 192 797 DY_QR*L10*left_x_S
193 165 DY_QR*L11*L17; 194 273 DY_QR*L12*L18; 195 90 DY_QR*L12*L24
196 69 DY_QR*L12*L27; 197 2 DY_QR*L12*L7; 198 467 DY_QR*L14*L17
199 103 DY_QR*L14*L24; 200 110 DY_QR*L17*left_y_S; 201 86 DY_QR*L18*L4
202 13 DY_QR*L2*L5; 203 33 DY_QR*L24*L7; 204 103 DY_QR*L24*ea
205 78 DY_QR*L25*L27; 206 39 DY_QR*Px*he; 207 98 DY_QS*L18*L5
208 188 DY_QS*L5*Px; 209 44 L0*L1*L2; 210 235 L0*L10*left_x_S
211 12 L0*L11*cf; 212 30 L0*L12*L9; 213 36 L0*L12*up_R
214 106 L0*L16*L21; 215 34 L0*L16*Px; 216 321 L0*L17*L20
217 31 L0*L17*L22; 218 154 L0*L19*L2; 219 239 L0*L2*left_y_S
220 44 L0*L21*L7; 221 183 L0*L26*L5; 222 17 L0*L27*up_S
223 36 L0*L5*ea; 224 6 L0*L5*fb; 225 83 L0*Px*low_Q
226 4 L0*ea*fb; 227 9 L1*L12*L18; 228 8 L1*L17*L24
229 103 L1*L18*L24; 230 37 L1*L24*L9; 231 53 L1*L24*Px
232 4 L1*L7*L9; 233 112 L10*L10*Px; 234 1 L10*L12*he
235 82 L10*L13*left_y_S; 236 3 L10*L16*left_x_S; 237 139 L10*L18*Px
238 106 L10*L20*left_x_S; 239 204 L10*L22*L5; 240 1209 L10*L22*left_x_S
241 53 L10*Px*left_y_S; 242 226 L10*T_AEH+*fb; 243 40 L10*fb*up_R
244 91 L11*L12*L21; 245 87 L11*L20*L27; 246 128 L11*L24*L4
247 2 L11*L24*L8; 248 131 L11*L24*up_R; 249 17 L11*L26*L27
250 58 L11*Px*Px; 251 28 L12*L12*L15; 252 33 L12*L2*he
253 104 L12*L20*L27; 254 84 L12*L21*L7; 255 106 L12*L24*ea
256 59 L12*L27*Px; 257 28 L12*L5*ea; 258 23 L12*L5*left_x_S
259 188 L12*L5*up_S; 260 3 L13*L2*L27; 261 76 L14*L16*L27
262 236 L14*L18*L5; 263 142 L14*L21*L5; 264 75 L14*L27*L5
265 23 L14*L27*left_x_S; 266 24 L14*L5*Px; 267 371 L15*L22*L5
268 46 L15*L24*L5; 269 1 L15*L5*he; 270 1 L15*L5*left_y_S
271 23 L15*L9*left_y_S; 272 11 L17*L26*L27; 273 34 L17*left_y_S*left_y_S
274 193 L18*L18*Px; 275 233 L18*L18*cf; 276 39 L18*L24*he
277 78 L18*L27*left_x_S; 278 21 L18*L5*L6; 279 159 L18*L5*up_R
280 15 L18*L9*L9; 281 35 L19*L5*fb; 282 40 L19*Px*he
283 158 L2*L27*L5; 284 163 L2*L5*L6; 285 194 L2*L5*he
286 71 L21*L22*L27; 287 141 L21*L24*L6; 288 6 L21*L26*L27
289 46 L21*L27*low_P; 290 31 L22*L23*L24; 291 84 L22*L24*L27
292 13 L22*L3*L5; 293 10 L23*L24*L8; 294 11 L23*Px*left_y_S
295 118 L24*L5*L6; 296 31 L24*ea*fb; 297 6 L24*ea*left_x_S
298 6 L24*ea*up_S; 299 17 L26*L27*T_AEH+; 300 39 L27*T_BCF+*he
301 54 L5*L6*L8; 302 4 L5*ea*he; 303 23 L5*fb*low_P
304 2 L7*L9*L9; 305 4 L7*L9*he; 306 33 L9*Px*he
```

## Node X0081

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR---+/QR++--`.
Parent: `X0079`.
Assumptions: `AQR+, BQR+, EQR-, FQR-`.

```n6x-trace
plu FCEQR FCR -1
```

Polynomial: `M1`; `298` terms; upper bound `-777687743031361912239592742335547306636920175273/1121888189155082948639049100550659057200000000000`.

```n6x-witnesses
C_ABH_1 P
C_AEH_1 P
C_BCR_1 Q
C_EFP_1 R
Q_ABSH_1 P
Q_ARSH_1 P
Q_BCEP_1 Q
Q_BCRH_1 Q
Q_BCRP_1 Q
Q_CERP_1 Q
Q_EFHQ_1 R
left_px_S -
left_py_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 58 T_ABC+; 2 128 T_APR-; 3 7 T_CEF+
4 130 T_CHQ+; 5 238 T_CPQ-; 6 102 T_FHS-
7 34 T_FQR-; 8 82 C_ABH_1*DY_QR; 9 27 C_BCR_1*L14
10 1 C_EFP_1*L23; 11 331 DX_PQ*T_BHP+; 12 50 DX_PQ*T_FPR+
13 7 DX_PR*L5; 14 212 DX_PR*T_ABC+; 15 73 DX_PR*T_BHP+
16 294 DX_PR*T_CPQ-; 17 11 DY_QR*L9; 18 45 DY_QR*Q_ABSH_1
19 75 DY_QR*T_ABP+; 20 56 DY_QR*left_y_S; 21 61 DY_QS*T_APR-
22 56 DY_QS*T_FPR+; 23 32 L0*L5; 24 15 L0*L9
25 86 L0*Px; 26 60 L0*T_CRS+; 27 1 L0*T_ERS-
28 4 L0*T_FPR+; 29 6 L1*T_FHS-; 30 2 L10*L15
31 4 L10*L27; 32 64 L10*L5; 33 20 L10*Q_ARSH_1
34 167 L10*T_BQR+; 35 25 L11*T_AHS-; 36 2 L11*T_APR-
37 32 L11*T_CHQ+; 38 114 L12*L27; 39 27 L12*Q_BCRP_1
40 376 L12*T_BHP+; 41 383 L12*T_CPQ-; 42 3 L12*T_EPR-
43 66 L12*left_px_S; 44 294 L13*T_BQR+; 45 8 L14*L27
46 39 L14*T_AHP-; 47 2 L14*T_EFR+; 48 3 L14*T_EPR-
49 5 L15*T_APR-; 50 111 L15*T_BQR+; 51 2 L15*T_CEF+
52 55 L15*T_FPR+; 53 376 L16*T_APS+; 54 2 L17*L24
55 56 L17*T_ABC+; 56 268 L17*T_ABP+; 57 21 L17*T_CRS+
58 61 L17*left_py_S; 59 25 L17*left_y_S; 60 2 L18*L27
61 27 L18*T_ABP+; 62 149 L18*T_AHP-; 63 240 L18*T_APR-
64 146 L18*left_py_S; 65 26 L18*left_y_S; 66 3 L19*L5
67 32 L2*L27; 68 367 L2*T_ABC+; 69 131 L2*T_APR-
70 45 L2*T_APS+; 71 295 L2*T_CHQ+; 72 481 L2*T_CPQ-
73 148 L2*left_px_S; 74 9 L20*L5; 75 91 L20*T_APS+
76 67 L20*T_CHQ+; 77 3 L21*T_ABC+; 78 138 L21*T_ABP+
79 84 L22*L27; 80 182 L22*T_APS+; 81 151 L22*T_CHQ+
82 111 L22*T_CPQ-; 83 45 L23*T_HPS+; 84 177 L24*L27
85 1 L24*Q_BCEP_1; 86 376 L24*T_APQ-; 87 91 L24*T_APR-
88 72 L24*T_CPQ-; 89 2 L24*T_FQR-; 90 165 L24*left_y_S
91 61 L25*T_ABC+; 92 36 L26*T_APS+; 93 74 L26*T_CHQ+
94 14 L26*T_FHS-; 95 26 L26*T_FQR-; 96 17 L27*L5
97 1 L27*L9; 98 20 L27*Q_BCRH_1; 99 4 L27*Q_CERP_1
100 14 L27*Q_EFHQ_1; 101 19 L27*S_CESP_QR_0-; 102 23 L27*T_ABP+
103 46 L27*T_ABS+; 104 14 L27*T_CEQ+; 105 6 L27*ea
106 10 L27*he; 107 101 L3*T_HPS+; 108 294 L4*T_APR-
109 10 L5*L5; 110 40 L5*L6; 111 4 L5*L9
112 410 L5*Py; 113 12 L5*T_ABF+; 114 125 L5*T_BHP+
115 18 L5*T_CPQ-; 116 12 L5*low_P; 117 19 L5*low_Q
118 7 L5*up_R; 119 2 L6*T_APR-; 120 16 L6*T_FQR-
121 4 L7*T_APS+; 122 1 L7*T_EFR+; 123 26 L8*T_BQR+
124 15 L8*T_CHQ+; 125 2 L9*L9; 126 17 L9*Px
127 28 L9*T_APQ-; 128 91 L9*left_y_S; 129 69 Px*Q_ABSH_1
130 89 Px*T_APQ-; 131 80 Px*T_APR-; 132 55 Px*T_APS+
133 48 Px*T_BQR+; 134 125 Px*T_CHQ+; 135 18 Px*T_CRS+
136 31 Px*T_FHS-; 137 48 Px*T_FQR-; 138 51 Px*left_y_S
139 63 T_ABC+*low_Q; 140 60 T_ABC+*up_S; 141 244 T_APR-*low_Q
142 2 T_BER+*left_y_S; 143 18 T_BQR+*left_x_S; 144 8 T_CEF+*he
145 8 T_CEF+*left_y_S; 146 72 T_CPQ-*left_x_S; 147 1 T_EPR-*ha
148 1 T_EPR-*he; 149 3 T_FHS-*fb; 150 6 T_FQR-*cf
151 16 T_FQR-*he; 152 3 cf*left_py_S; 153 6 ha*left_px_S
154 1 left_y_S*left_y_S; 155 4 C_AEH_1*L5*up_R; 156 21 DX_PQ*DY_QS*L5
157 50 DX_PQ*L14*L9; 158 6 DX_PQ*L23*L5; 159 6 DX_PR*L0*L10
160 126 DX_PR*L0*L12; 161 180 DX_PR*L0*L17; 162 65 DX_PR*L0*low_Q
163 82 DX_PR*L1*L5; 164 101 DX_PR*L10*L12; 165 37 DX_PR*L10*L18
166 1 DX_PR*L14*L27; 167 45 DX_PR*L27*L5; 168 2 DX_PR*L27*ea
169 73 DX_PR*Px*left_y_S; 170 102 DY_QR*L0*L12; 171 63 DY_QR*L0*L5
172 106 DY_QR*L12*L15; 173 89 DY_QR*L12*L2; 174 113 DY_QR*L12*L27
175 225 DY_QR*L12*T_BCF+; 176 73 DY_QR*L12*up_S; 177 56 DY_QR*L13*left_y_S
178 38 DY_QR*L14*L5; 179 56 DY_QR*L14*cf; 180 159 DY_QR*L15*Px
181 21 DY_QR*L17*L5; 182 42 DY_QR*L18*L9; 183 48 DY_QR*L2*L2
184 18 DY_QR*L4*L5; 185 4 DY_QR*L9*Px; 186 6 DY_QR*L9*cf
187 84 DY_QR*T_BCF+*left_y_S; 188 19 DY_QR*left_x_S*left_y_S; 189 14 DY_QS*L23*L9
190 24 DY_QS*L27*T_BCF+; 191 3 DY_QS*L5*fb; 192 45 DY_QS*L5*up_R
193 56 DY_QS*Px*left_y_S; 194 1 L0*L0*L13; 195 6 L0*L11*L2
196 8 L0*L13*left_y_S; 197 4 L0*L14*cf; 198 119 L0*L17*L5
199 28 L0*L17*L8; 200 380 L0*L2*L5; 201 202 L0*L2*up_R
202 4 L0*L23*L9; 203 9 L0*L26*L27; 204 9 L0*L27*Px
205 240 L0*Px*Px; 206 298 L0*Px*low_Q; 207 9 L0*left_y_S*up_S
208 9 L1*L10*L27; 209 6 L1*L10*fb; 210 512 L1*L12*L24
211 3 L1*L12*L6; 212 123 L1*L22*L24; 213 101 L1*L24*Px
214 5 L1*L24*he; 215 2 L10*L10*Px; 216 16 L10*L18*L5
217 58 L10*L18*fb; 218 64 L10*L5*up_R; 219 39 L11*L12*L14
220 130 L11*L12*L9; 221 101 L11*L12*up_R; 222 54 L11*L13*L27
223 21 L11*L17*left_y_S; 224 31 L11*L18*L9; 225 178 L11*L2*L24
226 11 L11*L24*L5; 227 14 L11*L27*left_x_S; 228 6 L11*L9*he
229 46 L11*L9*low_Q; 230 55 L12*L14*L25; 231 1 L12*L14*L27
232 225 L12*L16*L27; 233 45 L12*L18*L5; 234 6 L12*L22*L9
235 1 L12*L24*ea; 236 128 L12*L27*Px; 237 124 L12*L27*fb
238 54 L12*L5*fb; 239 3 L12*L6*low_P; 240 2 L12*L6*up_R
241 146 L12*Px*left_y_S; 242 1 L12*ea*ea; 243 21 L13*L27*cf
244 53 L14*L14*L21; 245 55 L14*L15*L9; 246 16 L14*L16*L9
247 28 L14*L17*fb; 248 102 L14*L18*L21; 249 4 L14*L24*L7
250 23 L14*L27*T_BCF+; 251 56 L14*L27*left_x_S; 252 18 L14*L5*cf
253 18 L14*L5*low_Q; 254 2 L15*L5*ea; 255 90 L17*L2*left_y_S
256 26 L17*L22*L27; 257 61 L17*L27*fb; 258 19 L17*left_y_S*left_y_S
259 42 L18*L18*L9; 260 110 L18*L2*L27; 261 273 L18*L20*L5
262 21 L18*L21*L24; 263 50 L18*L21*L9; 264 47 L18*L21*left_y_S
265 58 L18*L5*Px; 266 5 L18*L5*up_R; 267 100 L18*cf*left_y_S
268 60 L19*L5*L9; 269 69 L2*L2*L27; 270 91 L2*L20*L27
271 148 L2*L27*L9; 272 14 L20*L27*L27; 273 88 L20*L27*low_Q
274 67 L20*left_y_S*low_Q; 275 5 L21*L26*L27; 276 2 L22*L24*L9
277 66 L22*L5*low_P; 278 3 L22*L9*left_y_S; 279 41 L23*L27*Px
280 18 L23*L5*T_BCF+; 281 31 L24*L27*T_BCF+; 282 3 L24*L27*fb
283 1 L24*L5*ea; 284 3 L24*L8*left_y_S; 285 19 L25*L27*L7
286 29 L26*L5*he; 287 14 L26*cf*left_y_S; 288 16 L27*L5*Px
289 151 L27*Px*low_Q; 290 3 L3*left_y_S*up_S; 291 8 L5*L6*L7
292 12 L5*L8*ha; 293 54 L5*fb*low_P; 294 10 L7*L7*L9
295 176 L9*Px*left_y_S; 296 6 L9*ea*left_y_S; 297 2 Px*he*left_y_S
298 31 T_BCF+*left_y_S*up_S
```

## Node X0082

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR---+/QR+--+`.
Parent: `X0079`.
Assumptions: `AQR+, BQR-, EQR-, FQR+`.

```n6x-trace
plu BAEQR BEQ 1
plu QACFR QAF -1
plu RAEFQ RAF -1
```

Polynomial: `M1`; `412` terms; upper bound `-57574863186998638301870693262013820327494638832375477/1996960976696047648577507398980173121816000000000000`.

```n6x-witnesses
C_ABH_1 P
C_ACH_2 PQ
C_AEH_1 P
C_BES_2 QR
C_EFQ_1 R
Q_ABEP_1 Q
Q_ABRP_1 Q
Q_BCEP_1 Q
Q_BERP_1 Q
Q_CEFS_1 R
Q_EFPQ_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 3279 T_ABC+; 2 1576 T_APQ-; 3 41 T_APS+
4 37 T_BHP+; 5 88 T_BQR-; 6 16 T_EPR-
7 26 T_EQR-; 8 853 T_ERS-; 9 410 T_FQR+
10 19 T_HPS+; 11 154 C_ABH_1*L0; 12 1471 C_ACH_2*DX_PR
13 1753 C_ACH_2*L12; 14 893 C_ACH_2*L17; 15 3527 C_ACH_2*L3
16 1089 C_ACH_2*ea; 17 484 C_ACH_2*fb; 18 35 C_ACH_2*low_Q
19 565 C_ACH_2*up_R; 20 144 C_BES_2*up_S; 21 313 C_EFQ_1*L12
22 102 C_EFQ_1*L21; 23 313 C_EFQ_1*Px; 24 216 C_EFQ_1*he
25 8 DX_PQ*L5; 26 114 DX_PQ*Q_EFPQ_1; 27 2423 DX_PQ*T_APS+
28 568 DX_PQ*T_AQR+; 29 2947 DX_PQ*T_BHP+; 30 500 DX_PQ*T_BQR-
31 500 DX_PQ*T_BQS+; 32 908 DX_PQ*T_CHQ+; 33 1165 DX_PQ*T_CPQ-
34 225 DX_PQ*T_EQR-; 35 1022 DX_PQ*T_FHS-; 36 23 DX_PR*L5
37 570 DX_PR*T_APS+; 38 241 DX_PR*T_AQR+; 39 500 DX_PR*T_EPR-
40 160 DX_PR*T_HPS+; 41 255 DY_QS*T_ERS-; 42 7 L0*L27
43 697 L0*L5; 44 1557 L0*T_APS+; 45 337 L0*T_CPQ-
46 173 L0*T_PQR+; 47 885 L1*T_EQR-; 48 656 L1*T_ERS-
49 750 L1*T_FQR+; 50 63 L1*T_HPS+; 51 2187 L10*L5
52 3073 L10*S_ABRS_PQ_1+; 53 279 L10*T_AER+; 54 3073 L10*T_BHP+
55 969 L10*T_EQR-; 56 742 L10*T_FHS-; 57 14861 L10*left_px_S
58 3748 L11*T_BQR-; 59 4027 L11*T_FQR+; 60 5614 L11*T_HPS+
61 331 L12*L27; 62 724 L12*Q_ABRP_1; 63 114 L12*Q_EFPQ_1
64 604 L12*S_CESP_QR_0+; 65 1603 L12*T_AER+; 66 1332 L12*T_APQ-
67 3567 L12*T_APS+; 68 608 L12*T_AQR+; 69 1914 L12*T_BHP+
70 1033 L12*T_BPQ-; 71 1808 L12*T_BQR-; 72 1360 L12*T_CPQ-
73 706 L12*T_ERS-; 74 1339 L12*left_px_S; 75 1902 L13*T_ABC+
76 1157 L13*T_FHS-; 77 114 L13*T_FQR+; 78 59 L14*L27
79 210 L14*L5; 80 56 L14*L9; 81 224 L14*T_EPR-
82 710 L14*T_EQR-; 83 710 L14*T_ERS-; 84 482 L15*T_BQR-
85 1027 L15*T_BQS+; 86 238 L16*L5; 87 1961 L16*T_ABC+
88 75 L16*T_ERS-; 89 157 L16*T_FQR+; 90 1052 L17*T_APQ-
91 47 L17*T_HPS+; 92 173 L18*Q_BERP_1; 93 194 L18*T_ABC+
94 273 L18*T_AEP+; 95 308 L18*T_AER+; 96 210 L18*T_APS+
97 60 L18*T_CEF+; 98 311 L18*T_ERS-; 99 781 L18*T_HPS+
100 194 L19*L5; 101 718 L19*T_BHP+; 102 173 L19*T_EPR-
103 3854 L19*left_px_S; 104 501 L2*S_CESP_QR_0+; 105 3239 L2*T_ABC+
106 131 L2*T_CHQ+; 107 863 L2*T_EPR-; 108 188 L2*T_EQR-
109 1657 L2*T_FQR+; 110 500 L20*T_BQR-; 111 260 L20*T_ERS-
112 1153 L20*T_FHS-; 113 260 L20*T_FQR+; 114 108 L21*L27
115 500 L21*Q_ABRP_1; 116 863 L21*T_ABP+; 117 385 L21*T_AEP+
118 265 L21*T_AER+; 119 23 L21*left_px_S; 120 1047 L22*T_APS+
121 62 L22*T_CHQ+; 122 282 L22*T_ERS-; 123 4027 L22*left_px_S
124 647 L23*L27; 125 228 L23*S_CESP_QR_0+; 126 129 L23*T_ABC+
127 482 L23*T_BHP+; 128 258 L23*T_EFR+; 129 565 L23*T_HPS+
130 157 L24*L27; 131 94 L24*L5; 132 15 L24*L9
133 357 L24*Q_ABEP_1; 134 23 L24*S_CESP_QR_0+; 135 2157 L24*T_APQ-
136 2305 L24*T_APR-; 137 937 L24*T_BER+; 138 20 L24*T_CPQ-
139 356 L24*T_EQR-; 140 29 L24*left_y_S; 141 116 L27*L27
142 156 L27*L5; 143 76 L27*L9; 144 144 L27*T_ABE+
145 995 L27*T_AER+; 146 52 L27*T_BCQ+; 147 24 L27*T_BHS-
148 738 L27*T_CEF+; 149 810 L27*T_EHQ+; 150 33 L27*he
151 2244 L3*L5; 152 180 L3*T_AQR+; 153 90 L3*T_BQS+
154 313 L3*T_CEF+; 155 388 L3*T_EPQ+; 156 23 L4*S_CESP_QR_0+
157 2719 L4*T_APQ-; 158 99 L4*T_FQR+; 159 990 L5*L6
160 514 L5*Q_BCEP_1; 161 108 L5*Q_CEFS_1; 162 21 L5*S_ABRH_PQ_0+
163 346 L5*T_APR-; 164 254 L5*T_APS+; 165 6 L5*T_BCF+
166 15 L5*T_BFP+; 167 768 L5*T_BPQ-; 168 23 L5*T_CPQ-
169 254 L5*T_CQS-; 170 51 L5*T_FHQ+; 171 99 L5*T_FPR+
172 102 L5*fb; 173 1 L5*up_R; 174 18 L6*T_ABC+
175 173 L6*T_BQR-; 176 160 L6*T_FQR+; 177 956 L6*left_px_S
178 173 L7*Q_ABRP_1; 179 337 L7*S_CESP_QR_0+; 180 874 L7*T_APQ-
181 11 L7*T_AQR+; 182 217 L7*T_EFR+; 183 114 L9*T_CPQ-
184 1576 L9*T_EPR-; 185 23 L9*T_ERS-; 186 915 L9*T_FHS-
187 356 Px*T_ABP+; 188 2559 Px*T_APQ-; 189 501 Px*T_APS+
190 356 Px*T_BHP+; 191 1169 Px*T_BQR-; 192 937 Px*T_ERS-
193 36 S_CESP_QR_0+*low_Q; 194 1476 T_ABC+*ea; 195 144 T_ABC+*up_S
196 2541 T_APS+*he; 197 2 T_APS+*left_x_S; 198 2036 T_AQR+*fb
199 24 T_AQR+*up_R; 200 1302 T_BQR-*fb; 201 356 T_BQR-*left_x_S
202 43 T_BQS+*fb; 203 738 T_CEF+*left_y_S; 204 32 T_CHQ+*low_Q
205 164 T_CPQ-*ea; 206 228 T_CPQ-*up_R; 207 234 T_CPQ-*up_S
208 108 T_EFR+*cf; 209 173 T_EPR-*ea; 210 1576 T_EPR-*left_x_S
211 224 T_EPR-*low_P; 212 228 T_EPR-*low_Q; 213 114 T_EQR-*fb
214 1248 T_EQR-*left_y_S; 215 24 T_EQR-*up_R; 216 390 T_ERS-*ea
217 23 T_ERS-*left_x_S; 218 24 T_FHS-*up_S; 219 108 T_FQR+*cf
220 1494 T_HPS+*ea; 221 24 T_HPS+*left_x_S; 222 49 C_AEH_1*L27*low_Q
223 484 DX_PQ*DX_PQ*L1; 224 538 DX_PQ*DX_PQ*L10; 225 338 DX_PQ*DX_PQ*he
226 32 DX_PQ*DY_QS*L10; 227 1142 DX_PQ*L0*L12; 228 3591 DX_PQ*L0*L2
229 303 DX_PQ*L0*L21; 230 284 DX_PQ*L0*L23; 231 1286 DX_PQ*L0*fb
232 792 DX_PQ*L10*L12; 233 975 DX_PQ*L11*L24; 234 130 DX_PQ*L12*L7
235 798 DX_PQ*L14*L5; 236 465 DX_PQ*L18*L24; 237 264 DX_PQ*L22*L5
238 62 DX_PQ*L23*left_y_S; 239 793 DX_PQ*L27*low_Q; 240 757 DX_PQ*L27*up_S
241 216 DX_PQ*L7*L7; 242 1065 DX_PQ*L9*left_y_S; 243 185 DX_PQ*Px*left_y_S
244 24 DX_PR*L0*L23; 245 1735 DX_PR*L0*L24; 246 434 DX_PR*L0*L9
247 757 DX_PR*L1*L5; 248 160 DX_PR*L10*L12; 249 228 DX_PR*L21*L5
250 206 DX_PR*L23*L24; 251 824 DX_PR*L5*ha; 252 1130 DX_PR*L9*left_y_S
253 757 DY_QS*L17*L27; 254 36 DY_QS*L18*L24; 255 36 DY_QS*L27*left_x_S
256 36 DY_QS*L5*low_P; 257 9 L0*L1*L24; 258 387 L0*L1*L5
259 279 L0*L10*L21; 260 1579 L0*L10*L25; 261 855 L0*L12*left_x_S
262 63 L0*L12*low_Q; 263 610 L0*L12*up_R; 264 173 L0*L15*L5
265 49 L0*L17*L27; 266 2081 L0*L18*L27; 267 253 L0*L18*L5
268 7271 L0*L2*L5; 269 853 L0*L21*fb; 270 585 L0*L23*L5
271 129 L0*L23*Px; 272 1548 L0*L24*ea; 273 265 L0*L24*low_Q
274 405 L0*L5*L6; 275 110 L0*L5*left_x_S; 276 750 L0*L9*low_Q
277 750 L0*L9*up_R; 278 982 L0*Px*Px; 279 1321 L0*Px*ea
280 2479 L1*L10*L24; 281 3 L1*L12*L21; 282 2 L1*L24*left_x_S
283 594 L1*L5*L8; 284 3073 L10*L10*L3; 285 9989 L10*L10*left_x_S
286 2541 L10*L11*L12; 287 514 L10*L12*L23; 288 83 L10*L12*fb
289 2674 L10*L17*Px; 290 63 L10*L18*he; 291 1290 L10*L21*up_S
292 470 L10*L22*Px; 293 389 L10*L23*L24; 294 1250 L10*L23*L5
295 687 L10*L23*T_BCF+; 296 144 L10*L26*L5; 297 742 L10*L27*Px
298 718 L10*L27*fb; 299 2081 L10*L27*low_Q; 300 1784 L10*L27*up_R
301 351 L10*L5*L6; 302 541 L10*L5*L8; 303 1190 L10*L5*up_R
304 43 L10*fb*low_Q; 305 63 L10*he*low_Q; 306 66 L11*L18*L5
307 3692 L11*L2*L5; 308 1784 L11*L22*L27; 309 915 L11*L24*L9
310 690 L12*L15*L24; 311 2330 L12*L16*L27; 312 258 L12*L16*L5
313 93 L12*L16*he; 314 36 L12*L18*L7; 315 2553 L12*L18*Px
316 133 L12*L2*L21; 317 1081 L12*L21*L27; 318 114 L12*L21*L9
319 772 L12*L22*L27; 320 708 L12*L24*L27; 321 2305 L12*L24*ea
322 757 L12*L26*L27; 323 546 L12*L27*L3; 324 149 L12*L27*Px
325 710 L12*L27*he; 326 319 L12*L3*ea; 327 1118 L12*L5*ea
328 258 L12*L5*low_Q; 329 43 L12*L7*he; 330 932 L12*Px*he
331 114 L12*cf*up_R; 332 697 L14*L2*L27; 333 710 L14*L21*L27
334 340 L14*L21*L5; 335 26 L14*L9*L9; 336 26 L14*L9*left_x_S
337 49 L15*L24*L24; 338 330 L15*L27*L3; 339 796 L15*L3*L5
340 26 L15*L5*L6; 341 198 L15*L5*he; 342 1257 L16*L16*L27
343 258 L16*L18*L5; 344 157 L16*L18*L9; 345 1499 L16*L23*L27
346 734 L16*L25*L27; 347 793 L16*L27*low_P; 348 112 L16*L5*L6
349 39 L17*L22*L24; 350 329 L17*L27*L5; 351 101 L17*L27*he
352 39 L17*L27*up_R; 353 356 L18*L2*L9; 354 249 L18*L23*L24
355 234 L18*L26*L5; 356 2130 L18*L27*ha; 357 254 L18*L5*T_BCF+
358 145 L18*L5*fb; 359 4 L18*L5*low_Q; 360 116 L18*L7*L9
361 108 L18*L9*L9; 362 1228 L19*L21*L27; 363 27 L19*L22*L5
364 36 L19*L27*L9; 365 545 L2*L20*L5; 366 133 L2*L21*Px
367 24 L2*L24*L27; 368 43 L2*L27*L5; 369 457 L20*L23*L5
370 1 L20*L23*L9; 371 255 L20*L27*L27; 372 115 L20*L5*low_P
373 1438 L21*L27*Px; 374 23 L21*L27*cf; 375 51 L21*L27*ea
376 260 L21*L27*up_R; 377 206 L22*L23*L27; 378 255 L22*L24*L27
379 206 L22*L27*up_R; 380 145 L23*L24*Px; 381 53 L23*L24*up_R
382 23 L23*L5*T_BCF+; 383 258 L23*L9*up_R; 384 2051 L24*L27*L6
385 24 L24*L27*left_x_S; 386 36 L24*L27*up_S; 387 53 L24*L6*ea
388 2450 L24*L6*left_y_S; 389 316 L24*L6*low_Q; 390 254 L26*L5*L5
391 11 L27*L27*L8; 392 489 L27*L3*L3; 393 168 L27*L3*up_S
394 144 L27*L5*ha; 395 43 L27*Px*cf; 396 52 L27*T_BCF+*low_Q
397 108 L27*cf*cf; 398 133 L3*L3*up_R; 399 188 L3*L5*he
400 545 L3*L5*up_R; 401 599 L5*L5*L6; 402 337 L5*L6*L7
403 148 L5*ea*low_Q; 404 108 L5*ea*up_R; 405 198 L5*left_y_S*low_P
406 228 L5*up_R*up_R; 407 433 L7*L9*he; 408 119 L7*L9*up_R
409 108 L9*L9*he; 410 915 L9*L9*left_y_S; 411 108 L9*cf*left_y_S
412 356 Px*Px*left_y_S
```

## Node X0083

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR---+/QR+---`.
Parent: `X0079`.
Assumptions: `AQR+, BQR-, EQR-, FQR-`.

```n6x-trace
plu BAEQR BEQ 1
plu FCEQR FCR -1
plu QBCFR QBF 1
plu RBCFQ RBF 1
```

Polynomial: `M1`; `27` terms; upper bound `-49228605869596593776543971353/480074251289408615504000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_BCS_1 Q
C_BFP_2 QR
C_CHP_1 Q
left_px_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 C_ACH_2; 2 10 C_BFP_2; 3 1 C_CHP_1
4 4 T_ABC+; 5 15 T_APS+; 6 3 T_CEF+
7 4 T_FHS-; 8 1 left_px_S; 9 8 C_BCS_1*L1
10 3 C_BFP_2*L26; 11 7 L1*L24; 12 3 L1*L3
13 4 L10*L5; 14 4 L11*L24; 15 12 L12*L27
16 1 L13*left_y_S; 17 13 L14*L9; 18 13 L15*L3
19 1 L15*L5; 20 9 L24*T_AEP+; 21 1 L24*ea
22 8 L26*T_ABC+; 23 3 L5*L6; 24 3 L7*L9
25 4 L9*left_y_S; 26 9 L12*L24*ea; 27 3 L14*L27*fb
```

## Node X0084

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR---+/QR---+`.
Parent: `X0079`.
Assumptions: `AQR-, BQR-, EQR-, FQR+`.

```n6x-trace
plu ABEQR AEQ 1
plu BAEQR BEQ 1
```

Exclusion: `cluster AES R SAR PQ`.

## Node X0085

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR---+/QR----`.
Parent: `X0079`.
Assumptions: `AQR-, BQR-, EQR-, FQR-`.

```n6x-trace
plu ABEQR AEQ 1
plu BAEQR BEQ 1
plu FCEQR FCR -1
plu QACFR QAF 1
plu QBCFR QBF 1
plu RACFQ RAF 1
plu RBCFQ RBF 1
via P AHQ AF 1
```

Exclusion: `cluster AES R SAR PQ`.

## Node X0086

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS++--/PR----`.
Parent: `X0065`.
Assumptions: `APR-, BPR-, EPR-, FPR-`.

```n6x-trace
plu EBCPR EBR -1
plu ECPQR EQR -1
plu FBEPR FBR -1
plu FCEPR FCR -1
plu FCPQR FQR -1
plu PABER PAE 1
plu PABFR PAF 1
plu RABEP RAE 1
plu RABFP RAF 1
```

Polynomial: `M1`; `67` terms; upper bound `-4009830700582411394140629459686748496038019/3037897203923639421750761417859600000000000`.

```n6x-witnesses
C_AFH_2 PR
C_AFS_2 PR
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 7 C_AFH_2; 2 176 C_AFS_2; 3 37 T_ABC+
4 2 T_APR-; 5 7 T_BHP+; 6 5 T_CEF+
7 2 T_EFR+; 8 2 T_ERS-; 9 4 T_FPR-
10 185 T_HPS+; 11 3 T_HRS+; 12 10 left_px_S
13 1 C_AFH_2*L25; 14 1 C_AFS_2*low_P; 15 4 DX_PR*he
16 38 L0*L5; 17 26 L0*Px; 18 2 L0*T_CER+
19 2 L0*T_EFH+; 20 1 L0*T_PRS+; 21 174 L0*left_x_S
22 9 L1*L9; 23 198 L11*L24; 24 2 L11*T_APR-
25 179 L12*L27; 26 28 L12*T_AFR+; 27 4 L12*he
28 2 L14*L27; 29 22 L14*L9; 30 3 L14*T_AFP+
31 3 L14*T_ERS-; 32 3 L14*T_FPR-; 33 3 L15*T_APR-
34 7 L2*L27; 35 1 L2*T_AFP+; 36 28 L2*T_APR-
37 28 L21*T_AFP+; 38 1 L22*L27; 39 5 L22*L9
40 1 L22*T_APS+; 41 2 L22*T_HPS+; 42 1 L24*T_AFP+
43 2 L24*ea; 44 1 L26*T_APR-; 45 2 L26*T_FPR-
46 5 L5*L6; 47 8 L7*L9; 48 1 L8*T_HPS+
49 1 L9*left_y_S; 50 7 Px*left_y_S; 51 1 T_ABC+*left_x_S
52 28 T_APR-*fb; 53 2 T_APR-*he; 54 2 L0*L15*L20
55 2 L0*L26*L9; 56 1 L0*L5*left_x_S; 57 2 L0*L7*cf
58 1 L0*Px*left_x_S; 59 2 L1*L9*left_y_S; 60 1 L11*L12*L22
61 2 L12*L22*he; 62 3 L14*L22*L9; 63 3 L15*L27*L8
64 2 L22*L24*L27; 65 2 L22*L24*left_y_S; 66 2 L22*L27*L8
67 1 L3*L9*low_P
```

## Node X0087

Case: `IL/MH++/HCEF++--/PQR+/PS+---/QS+---`.
Parent: `X0064`.
Assumptions: `AQS+, BQS-, EQS-, FQS-`.

```n6x-trace
plu BAEQS BEQ 1
plu BAFQS BFQ 1
plu BAQRS BQR -1
```

Polynomial: `M1`; `12` terms; upper bound `-110847364937679/161192528000000`.

```n6x-witnesses
C_ABS_2 PQ
C_ACH_2 PQ
left_px_S -
left_x_S -
```

```n6x-squares
```

```n6x-sum
1 7 C_ABS_2; 2 1 C_ACH_2; 3 17 T_ABC+
4 14 left_px_S; 5 15 L0*L5; 6 1 L0*L9
7 1 L0*left_x_S; 8 7 L1*L24; 9 24 L1*L3
10 1 L10*L5; 11 14 L10*left_x_S; 12 7 L2*L27
```

## Node X0088

Case: `IL/MH++/HCEF++--/PQR+/PS----`.
Parent: `X0063`.
Assumptions: `APS-, BPS-, EPS-, FPS-`.

```n6x-trace
plu ABEPS AEP 1
plu ABFPS AFP 1
plu ABPRS APR -1
```

Polynomial: `M1`; `12` terms; upper bound `-2705638886975678659655939266273/5028504785802978745972560000000`.

```n6x-witnesses
C_CHP_1 Q
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 C_CHP_1; 2 9 T_AHP-; 3 9 T_APS-
4 3 T_FHS-; 5 35 left_px_S; 6 9 DX_PS*L15
7 3 L10*L5; 8 37 L10*left_x_S; 9 4 L12*L15
10 6 L12*left_y_S; 11 5 L12*low_P; 12 3 L15*L5
```

## Node X0089

Case: `IL/MH++/HCEF++--/PQR-`.
Parent: `X0062`.
Assumptions: `PQR-`.

```n6x-trace
plu PABQR PAR 1
plu PBEQR PER -1
plu PBFQR PFR -1
plu QACPR QAR 1
plu QBCPR QBR 1
plu QCEPR QER -1
plu QCFPR QFR -1
plu RCEHP REH 1
```

Polynomial: `M1`; `67` terms; upper bound `-544994797417030317422685770951/199517199928822632640000000000`.

```n6x-witnesses
C_ABH_1 P
C_AHR_2 PQ
Q_ABSH_1 P
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 24 C_ABH_1; 2 139 C_AHR_2; 3 2 Q_ABSH_1
4 31 T_ABC+; 5 92 T_CER+; 6 2 T_CRS+
7 21 T_EFR+; 8 182 T_FHS-; 9 22 left_px_S
10 3 C_ABH_1*L11; 11 6 C_AHR_2*L0; 12 7 C_AHR_2*ea
13 30 C_AHR_2*left_x_S; 14 31 L0*L5; 15 3 L0*left_x_S
16 56 L10*L21; 17 183 L11*L24; 18 2 L11*T_CEF+
19 25 L2*L27; 20 3 L2*L5; 21 2 L2*L7
22 22 L2*left_y_S; 23 2 L20*L27; 24 17 L20*L5
25 159 L20*T_ABC+; 26 7 L20*left_px_S; 27 17 L21*L9
28 63 L21*he; 29 24 L22*L9; 30 3 L24*T_CEF+
31 3 L25*T_EFR+; 32 1 L27*up_R; 33 23 L3*T_CER+
34 3 L5*L6; 35 20 L5*L9; 36 101 L5*T_EHR+
37 23 L5*T_FHR+; 38 8 L6*T_ABC+; 39 8 L6*left_px_S
40 21 L7*L9; 41 19 L8*T_CER+; 42 174 L9*left_y_S
43 1 T_ABC+*ea; 44 6 T_CEF+*left_y_S; 45 8 T_CER+*ha
46 26 T_CER+*left_x_S; 47 3 cf*left_y_S; 48 1 left_y_S*up_R
49 1 L0*L0*L21; 50 1 L0*L1*L12; 51 1 L0*L1*Px
52 3 L0*L11*L2; 53 159 L0*L20*L5; 54 30 L0*L20*left_x_S
55 8 L0*L22*L5; 56 1 L0*L5*ea; 57 23 L10*L20*L5
58 8 L11*L24*L6; 59 101 L21*L4*he; 60 23 L21*L7*fb
61 1 L21*T_AEH+*he; 62 23 L21*he*left_x_S; 63 26 L22*L24*L5
64 23 L23*L5*fb; 65 6 L26*L7*cf; 66 23 L4*fb*he
67 23 L5*L6*left_x_S
```

## Node X0090

Case: `IL/MH++/HCEF++-+`.
Parent: `X0046`.
Assumptions: `HRS+, CRS+, ERS-, FRS+`.

```n6x-trace
```

Exclusion: `given FRS 1`.

## Node X0091

Case: `IL/MH++/HCEF+++-`.
Parent: `X0046`.
Assumptions: `HRS+, CRS+, ERS+, FRS-`.

```n6x-trace
plu EACRS EAR -1
plu EAHRS EHR -1
plu EBCHR EBR -1
plu EBHPR EPR -1
plu ECHQR EQR -1
plu PBEQR PQR 1
plu RACHS RAS -1
plu RBCHS RBS -1
plu RBHPS RPS -1
plu RCHQS RQS -1
```

Split: `cross PS`.
Children: `PS+---=X0092; PS----=X0105`.

## Node X0092

Case: `IL/MH++/HCEF+++-/PS+---`.
Parent: `X0091`.
Assumptions: `APS+, BPS-, EPS-, FPS-`.

```n6x-trace
plu ABPQS AQS 1
```

Split: `cross QS`.
Children: `QS++--=X0093; QS+---=X0104`.

## Node X0093

Case: `IL/MH++/HCEF+++-/PS+---/QS++--`.
Parent: `X0092`.
Assumptions: `AQS+, BQS+, EQS-, FQS-`.

```n6x-trace
```

Split: `cross PR`.
Children: `PR+--+=X0094; PR+---=X0095; PR---+=X0096; PR----=X0103`.

## Node X0094

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR+--+`.
Parent: `X0093`.
Assumptions: `APR+, BPR-, EPR-, FPR+`.

```n6x-trace
plu ABPQR AQR 1
plu PABFR PAF -1
plu RAEFP RAF -1
via Q ACR AF -1
```

Polynomial: `M1`; `139` terms; upper bound `-234021455962006477530781159868900995953023119/39643742825519508419447480076350400000000000`.

```n6x-witnesses
C_ABH_1 P
C_ACH_2 PQ
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 8 C_ACH_2; 2 111 T_ABC+; 3 20 T_AHS-
4 129 T_APQ-; 5 62 T_APR+; 6 23 T_CHQ+
7 96 T_CPQ-; 8 13 T_FHS-; 9 7 T_FRS-
10 156 left_px_S; 11 15 C_ABH_1*L10; 12 62 C_ACH_2*L3
13 154 DX_PQ*T_ABC+; 14 209 DX_PQ*T_AFP-; 15 362 DX_PQ*T_BHP+
16 2 L0*L21; 17 35 L0*L5; 18 19 L0*L9
19 14 L0*Px; 20 66 L1*T_FPR+; 21 44 L10*L5
22 42 L10*fb; 23 15 L11*T_AHS-; 24 12 L12*L27
25 7 L12*L9; 26 57 L12*T_AFP-; 27 11 L12*T_AFR-
28 193 L12*T_BHP+; 29 256 L12*T_CPQ-; 30 17 L12*T_FHR+
31 68 L13*T_ABC+; 32 66 L14*T_AFR-; 33 101 L14*T_CHQ+
34 8 L16*L27; 35 75 L16*T_APR+; 36 65 L16*T_CPQ-
37 33 L16*left_px_S; 38 8 L17*L24; 39 211 L17*T_ABP+
40 65 L17*T_ACQ+; 41 8 L18*L5; 42 65 L18*T_APQ-
43 8 L18*T_CRS+; 44 13 L2*L27; 45 14 L2*T_APR+
46 179 L2*T_CHQ+; 47 220 L2*T_CPQ-; 48 15 L2*left_px_S
49 10 L21*L27; 50 14 L21*T_AFP-; 51 1 L22*L27
52 6 L22*L5; 53 8 L22*T_CHQ+; 54 8 L22*T_FHS-
55 13 L23*L9; 56 66 L23*T_AFP-; 57 75 L23*T_APQ-
58 8 L23*T_HQS+; 59 195 L24*L27; 60 1 L24*L9
61 96 L24*T_APQ-; 62 9 L24*T_CHQ+; 63 42 L24*T_CPQ-
64 189 L24*left_y_S; 65 8 L26*T_CPQ-; 66 6 L3*L3
67 395 L4*T_APQ-; 68 150 L5*Py; 69 31 L5*T_BFP+
70 39 L5*T_BPQ-; 71 17 L5*fb; 72 5 L5*left_x_S
73 123 L9*left_px_S; 74 13 L9*left_y_S; 75 15 Px*Px
76 279 Px*T_ABC+; 77 256 Px*T_APQ-; 78 113 T_APQ-*fb
79 96 T_APQ-*left_x_S; 80 65 T_APQ-*low_Q; 81 75 T_APQ-*up_R
82 14 T_APR+*fb; 83 2 T_BCQ+*fb; 84 2 T_BHQ-*fb
85 17 T_CHQ+*left_x_S; 86 100 T_CHQ+*low_P; 87 42 T_CPQ-*left_x_S
88 15 ha*left_px_S; 89 176 DX_PQ*L0*L12; 90 21 DX_PQ*L0*L2
91 64 DX_PQ*L1*L3; 92 176 DX_PQ*L1*L5; 93 167 DX_PQ*L10*L12
94 125 DX_PQ*L10*L3; 95 256 DX_PQ*L14*L5; 96 169 DX_PQ*L15*L3
97 8 DX_PQ*L2*left_y_S; 98 8 DX_PQ*L23*L27; 99 8 DX_PQ*L27*Px
100 78 L0*L12*L21; 101 54 L0*L12*cf; 102 342 L0*L5*Px
103 279 L0*Px*Px; 104 129 L1*L12*L17; 105 7 L10*L15*L5
106 48 L10*L16*fb; 107 17 L10*L5*left_x_S; 108 15 L10*fb*ha
109 41 L11*L16*L24; 110 8 L11*L2*L24; 111 115 L11*L24*L9
112 13 L11*L5*Px; 113 123 L11*L9*L9; 114 152 L12*L14*L9
115 75 L12*L16*L23; 116 8 L12*L21*left_y_S; 117 14 L12*L23*L9
118 113 L13*L5*ha; 119 35 L14*L16*L5; 120 42 L14*L17*fb
121 8 L14*L4*left_y_S; 122 73 L14*L5*L9; 123 24 L15*L3*L3
124 8 L17*L27*low_P; 125 8 L18*L20*L27; 126 8 L18*L24*L5
127 27 L19*L5*L9; 128 8 L2*L24*left_y_S; 129 8 L20*L27*L3
130 8 L22*L27*L3; 131 8 L22*L9*left_y_S; 132 9 L24*cf*left_y_S
133 9 L25*L27*L5; 134 9 L25*L27*fb; 135 17 L27*L9*Px
136 2 L27*Px*Px; 137 8 L27*Px*up_R; 138 17 L9*Px*left_y_S
139 2 Px*Px*left_y_S
```

## Node X0095

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR+---`.
Parent: `X0093`.
Assumptions: `APR+, BPR-, EPR-, FPR-`.

```n6x-trace
plu ABPQR AQR 1
plu FBEPR FBR -1
plu FCEPR FCR -1
plu FCPQR FQR -1
```

Polynomial: `M1`; `274` terms; upper bound `-9922737558262900093455952220250134125926985538985713/11486265243299457589149464374471164313966000000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_ACR_2 PQ
C_EFS_1 R
C_FPS_1 R
Q_BCEP_1 Q
Q_CEFS_1 R
Q_EFSH_1 R
Q_EFSQ_1 R
Q_FHPQ_1 R
Q_FSHP_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 46 C_ACH_2; 2 260 T_ABC+; 3 220 T_APQ-
4 146 T_APR+; 5 17 T_CEF+; 6 53 T_CHQ+
7 68 T_CPQ-; 8 15 T_ERS+; 9 158 T_FHS-
10 37 T_FPR-; 11 56 T_HRS+; 12 40 left_px_S
13 110 C_ACH_2*L20; 14 200 C_ACH_2*L3; 15 1 C_ACH_2*L7
16 50 C_ACH_2*left_x_S; 17 54 C_ACH_2*up_R; 18 54 C_ACR_2*L24
19 3 C_ACR_2*left_y_S; 20 4 C_EFS_1*L12; 21 2 C_FPS_1*L10
22 3 DX_PQ*L24; 23 14 DX_PQ*L5; 24 64 DX_PQ*T_APR+
25 414 DX_PQ*T_BHP+; 26 19 DX_PQ*T_CEF+; 27 79 DX_PQ*T_CHQ+
28 146 DX_PQ*T_CPQ-; 29 107 DX_PQ*T_FPR-; 30 23 L0*L5
31 293 L0*Px; 32 4 L0*T_EPQ+; 33 7 L0*left_px_S
34 11 L1*L27; 35 1 L1*T_APQ-; 36 16 L1*T_CEF+
37 122 L1*T_HRS+; 38 11 L10*L23; 39 221 L10*L5
40 3 L10*Q_CEFS_1; 41 60 L10*T_AHP-; 42 58 L10*T_BRS+
43 1 L11*L27; 44 36 L11*T_AHS-; 45 60 L11*T_APR+
46 14 L12*L27; 47 414 L12*T_BHP+; 48 156 L12*T_CPQ-
49 6 L12*T_EQR-; 50 38 L12*T_FHR+; 51 63 L12*T_FPR-
52 2 L12*T_FQR-; 53 145 L13*L5; 54 6 L14*L27
55 61 L14*T_HRS+; 56 9 L14*left_y_S; 57 5 L15*Q_EFSH_1
58 85 L15*T_CEF+; 59 7 L16*L27; 60 303 L16*T_ABC+
61 71 L16*T_APR+; 62 111 L16*T_FHR+; 63 36 L16*left_px_S
64 5 L17*Q_BCEP_1; 65 436 L17*T_ABP+; 66 67 L17*T_ABQ+
67 67 L17*T_BCQ+; 68 14 L18*L5; 69 5 L18*T_ABC+
70 146 L18*T_APQ-; 71 198 L2*T_APQ-; 72 20 L2*T_APR+
73 481 L2*T_CPQ-; 74 80 L2*left_px_S; 75 18 L20*L27
76 86 L20*L5; 77 53 L20*Q_BCEP_1; 78 73 L20*T_ABP+
79 135 L20*T_APQ-; 80 106 L21*T_CHQ+; 81 102 L21*T_CPQ-
82 192 L21*T_FHS-; 83 50 L22*T_ABC+; 84 51 L22*left_px_S
85 45 L23*L27; 86 2 L23*L9; 87 61 L23*T_APS+
88 390 L24*L27; 89 19 L24*L5; 90 45 L24*T_ABC+
91 7 L24*T_APR+; 92 43 L24*T_EFR+; 93 101 L24*T_EHR-
94 74 L24*T_FPR-; 95 133 L24*T_HRS+; 96 345 L24*left_y_S
97 76 L25*T_FHR+; 98 3 L26*T_ABC+; 99 61 L26*T_APR+
100 9 L26*T_CPQ-; 101 5 L26*T_ERS+; 102 5 L26*T_FHS-
103 51 L26*T_HRS+; 104 5 L27*S_CFHP_QR_1+; 105 3 L27*T_ABR+
106 4 L27*T_APQ-; 107 23 L27*T_BCF+; 108 58 L27*T_BFH+
109 56 L27*T_BRS+; 110 4 L27*T_EHQ+; 111 5 L27*T_FPR-
112 5 L27*T_HQS+; 113 2 L27*ea; 114 303 L4*T_APQ-
115 54 L4*T_FHS-; 116 59 L4*T_HRS+; 117 41 L5*L6
118 53 L5*Px; 119 13 L5*Q_EFSQ_1; 120 52 L5*Q_FHPQ_1
121 63 L5*Q_FSHP_1; 122 200 L5*T_BPQ-; 123 4 L5*T_CQR-
124 71 L5*low_P; 125 35 L5*up_R; 126 4 L6*T_APQ-
127 59 L6*T_HRS+; 128 15 L7*L9; 129 4 L7*T_CHQ+
130 4 L7*T_CPQ-; 131 63 L8*T_CPQ-; 132 220 L9*left_y_S
133 303 Px*T_ABC+; 134 166 Px*T_APQ-; 135 435 Px*T_CHQ+
136 59 Px*T_ERS+; 137 9 Px*T_HRS+; 138 15 Px*left_px_S
139 50 T_ABC+*left_x_S; 140 10 T_ABC+*up_R; 141 9 T_ABP+*up_R
142 146 T_APQ-*low_Q; 143 9 T_BHP+*up_R; 144 4 T_CEF+*low_P
145 44 T_CHQ+*fb; 146 12 T_CHQ+*left_x_S; 147 12 T_CHQ+*up_S
148 59 T_ERS+*fb; 149 5 T_FHS-*ha; 150 7 T_FRS-*he
151 133 T_HRS+*left_x_S; 152 7 ha*left_px_S; 153 3 he*left_px_S
154 79 DX_PQ*DX_PQ*L1; 155 76 DX_PQ*DX_PQ*L10; 156 78 DX_PQ*DX_PQ*L15
157 4 DX_PQ*L0*L11; 158 163 DX_PQ*L0*L2; 159 92 DX_PQ*L10*L5
160 3 DX_PQ*L10*up_S; 161 19 DX_PQ*L12*L23; 162 9 DX_PQ*L12*L9
163 10 DX_PQ*L14*L5; 164 44 DX_PQ*L15*L9; 165 13 DX_PQ*L5*left_y_S
166 19 DX_PQ*L9*he; 167 23 DX_PQ*Px*left_y_S; 168 4 DX_PQ*ea*left_y_S
169 5 DY_QS*L27*left_x_S; 170 60 DY_QS*L5*Px; 171 46 DY_QS*L5*cf
172 1 L0*L1*L16; 173 83 L0*L12*L21; 174 123 L0*L12*Px
175 5 L0*L18*L5; 176 5 L0*L18*Px; 177 552 L0*L2*L5
178 154 L0*L21*L5; 179 16 L0*L24*L9; 180 303 L0*Px*Px
181 70 L0*Px*up_R; 182 5 L0*left_x_S*left_y_S; 183 61 L1*L12*L27
184 5 L1*L14*L17; 185 50 L1*L2*L9; 186 5 L1*L24*Px
187 2 L1*L24*up_R; 188 16 L1*L7*L9; 189 60 L10*L11*L12
190 52 L10*L12*L13; 191 134 L10*L12*left_x_S; 192 3 L10*L17*L17
193 23 L10*L2*Px; 194 59 L10*L20*ea; 195 44 L10*L22*L5
196 51 L10*L23*L9; 197 67 L10*L23*Px; 198 9 L10*L27*L4
199 58 L11*L14*L24; 200 88 L11*L14*L5; 201 2 L11*L14*L9
202 51 L11*L27*left_x_S; 203 70 L11*L3*L9; 204 17 L11*L5*L6
205 23 L12*L12*L27; 206 9 L12*L12*L9; 207 19 L12*L14*L21
208 23 L12*L17*L27; 209 12 L12*L17*ea; 210 308 L12*L18*L5
211 156 L12*L18*Px; 212 20 L12*L2*L23; 213 80 L12*L23*L9
214 23 L12*L27*T_BCF+; 215 57 L12*L27*left_x_S; 216 22 L12*L5*he
217 9 L12*L9*low_Q; 218 55 L13*L24*L7; 219 10 L13*L27*cf
220 4 L13*L7*left_y_S; 221 40 L13*L9*left_y_S; 222 78 L14*L17*L17
223 5 L14*L17*L20; 224 67 L14*L21*L24; 225 282 L14*L3*L5
226 4 L14*L4*left_y_S; 227 84 L14*L5*he; 228 102 L15*L21*L5
229 74 L15*L24*L9; 230 93 L15*L7*L9; 231 3 L16*L23*L9
232 39 L16*L24*L27; 233 39 L16*L24*left_y_S; 234 5 L16*L27*L27
235 4 L17*L23*L5; 236 23 L17*L27*L3; 237 3 L18*L27*L5
238 49 L18*L5*T_BCF+; 239 13 L18*L5*left_x_S; 240 56 L2*L26*L27
241 49 L2*L5*ha; 242 68 L20*L27*Px; 243 61 L20*L27*ea
244 39 L20*L5*L6; 245 59 L20*L9*he; 246 4 L21*L5*L5
247 2 L22*L24*Px; 248 56 L22*L27*L5; 249 7 L23*L5*ea
250 7 L23*cf*he; 251 5 L24*L26*L27; 252 57 L24*L27*L8
253 104 L24*L27*Px; 254 62 L24*L27*ea; 255 16 L24*L9*ea
256 161 L24*Px*left_y_S; 257 56 L24*ea*left_y_S; 258 58 L24*ea*up_R
259 57 L24*fb*left_y_S; 260 46 L26*L5*L5; 261 50 L26*L5*Px
262 7 L27*L7*L8; 263 87 L27*L9*Px; 264 55 L27*Px*cf
265 23 L27*T_BCF+*fb; 266 59 L27*T_BCF+*up_R; 267 30 L3*L3*L3
268 23 L3*T_BCF+*left_y_S; 269 19 L4*L7*L9; 270 4 L5*L5*up_R
271 32 L5*L6*L8; 272 14 L5*L6*ha; 273 14 L5*L6*up_R
274 165 Px*cf*left_y_S
```

## Node X0096

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR---+`.
Parent: `X0093`.
Assumptions: `APR-, BPR-, EPR-, FPR+`.

```n6x-trace
plu ABEPR AEP 1
```

Split: `cross QR`.
Children: `QR++-+=X0097; QR++--=X0098; QR+--+=X0099; QR+---=X0100; QR---+=X0101; QR----=X0102`.

## Node X0097

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR---+/QR++-+`.
Parent: `X0096`.
Assumptions: `AQR+, BQR+, EQR-, FQR+`.

```n6x-trace
plu QACFR QAF -1
plu QBCFR QBF -1
plu RAEFQ RAF -1
plu RBEFQ RBF -1
```

Polynomial: `M1`; `342` terms; upper bound `-4108385091387057759156279766093194224433876588018562560589/603247163938881483406179736603168045088294001600000000000`.

```n6x-witnesses
C_ABH_1 P
C_AEH_1 P
C_EFQ_1 R
Q_ABCR_1 Q
Q_ABFH_1 P
Q_ABSH_1 P
Q_BCEF_2 QR
Q_BCEP_1 Q
Q_BCER_1 Q
Q_CEFQ_1 R
left_px_S -
left_py_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 161 T_ABC+; 2 62 T_ABP+; 3 47 T_APR-
4 364 T_APS+; 5 15 T_BHP+; 6 23 T_BQR+
7 168 T_CPQ-; 8 79 T_EFR+; 9 174 T_FHS-
10 7 T_FQR+; 11 100 T_HPS+; 12 153 left_px_S
13 227 C_ABH_1*DY_QR; 14 12 C_ABH_1*L0; 15 46 C_ABH_1*cf
16 39 C_EFQ_1*L18; 17 34 C_EFQ_1*L9; 18 33 C_EFQ_1*Px
19 24 DX_PQ*T_APS+; 20 557 DX_PQ*T_BHP+; 21 41 DX_PQ*T_CHQ+
22 80 DX_PR*T_ABC+; 23 57 DX_PR*T_CHQ+; 24 21 DY_QR*L24
25 79 DY_QR*T_ABP+; 26 302 DY_QR*T_AHP-; 27 55 DY_QR*T_CER+
28 92 DY_QR*T_CHQ+; 29 198 DY_QR*T_CPQ-; 30 6 DY_QR*T_ERS+
31 226 DY_QR*left_px_S; 32 87 DY_QS*T_ABC+; 33 241 DY_QS*T_BHP+
34 87 DY_QS*T_BQR+; 35 57 DY_QS*T_CHQ+; 36 57 DY_QS*T_CPQ-
37 113 DY_QS*left_px_S; 38 7 L0*L11; 39 75 L0*L27
40 34 L0*L5; 41 5 L0*L7; 42 87 L0*T_QRS+
43 31 L1*T_AHS-; 44 45 L10*L5; 45 8 L10*Py
46 6 L10*T_BPQ-; 47 52 L10*T_CPQ-; 48 6 L10*T_EPQ+
49 63 L10*fb; 50 41 L10*left_px_S; 51 101 L11*T_FQR+
52 120 L12*L27; 53 176 L12*T_ABP+; 54 122 L12*T_ABQ+
55 98 L12*T_APQ-; 56 343 L12*T_APR-; 57 651 L12*T_BHP+
58 33 L12*T_EFR+; 59 91 L12*T_EHR-; 60 300 L13*T_BQR+
61 394 L13*T_CHQ+; 62 55 L14*Q_ABSH_1; 63 37 L14*Q_BCER_1
64 16 L14*Q_CEFQ_1; 65 107 L14*T_CHQ+; 66 24 L14*left_y_S
67 40 L15*T_FQR+; 68 68 L16*T_EFR+; 69 6 L16*left_px_S
70 18 L17*L27; 71 14 L17*L5; 72 34 L17*Q_CEFQ_1
73 259 L17*T_APR-; 74 6 L17*T_HPS+; 75 120 L18*T_APQ-
76 63 L18*T_BPQ-; 77 32 L18*T_ERS+; 78 87 L18*T_FQR+
79 158 L19*T_APS+; 80 8 L19*T_CPQ-; 81 104 L2*L27
82 41 L2*T_BHP+; 83 590 L2*T_CHQ+; 84 557 L2*T_CPQ-
85 110 L2*left_px_S; 86 24 L20*L27; 87 378 L20*T_CPQ-
88 37 L21*L5; 89 343 L21*T_ABP+; 90 43 L22*Q_CEFQ_1
91 11 L22*T_APS+; 92 138 L22*T_CHQ+; 93 61 L22*T_EFR+
94 153 L22*T_FHS-; 95 55 L22*T_FQR+; 96 21 L22*left_px_S
97 167 L23*T_BFQ-; 98 55 L23*T_BQR+; 99 394 L24*L27
100 6 L24*L5; 101 3 L24*L9; 102 16 L24*T_ABQ+
103 479 L24*T_AEP+; 104 32 L24*T_BPQ-; 105 16 L24*T_CPQ-
106 26 L24*T_EPQ+; 107 18 L24*ea; 108 388 L24*left_y_S
109 49 L26*T_ABC+; 110 45 L26*T_APS+; 111 23 L27*L6
112 9 L27*Q_ABCR_1; 113 127 L27*Q_ABFH_1; 114 32 L27*T_AEH+
115 87 L27*T_AQR+; 116 6 L27*T_ARS+; 117 57 L27*T_BPQ-
118 36 L27*T_CEQ+; 119 57 L27*T_CPR-; 120 36 L27*T_EFQ+
121 26 L27*low_Q; 122 17 L27*up_R; 123 10 L3*T_FHS-
124 10 L4*Q_ABSH_1; 125 17 L4*T_FQR+; 126 2 L5*L5
127 27 L5*L6; 128 24 L5*Q_BCEP_1; 129 144 L5*T_ABH+
130 65 L5*T_AFR-; 131 533 L5*T_BHP+; 132 12 L5*fb
133 24 L5*low_P; 134 88 L6*T_CER+; 135 25 L6*T_CHQ+
136 53 L6*T_CPQ-; 137 95 L6*T_EFR+; 138 6 L6*T_ERS+
139 31 L7*T_BHP+; 140 29 L7*T_FQR+; 141 8 L8*Q_BCEF_2
142 347 L8*T_APR-; 143 3 L9*L9; 144 16 L9*T_APQ-
145 7 L9*T_EFR+; 146 209 L9*T_EHR-; 147 46 L9*left_y_S
148 267 Px*T_ABC+; 149 98 Px*T_APQ-; 150 343 Px*T_APR-
151 48 Px*T_ERS+; 152 287 Px*T_FHS-; 153 87 Q_BCEF_2*he
154 85 Q_BCEF_2*left_y_S; 155 19 Q_BCEF_2*up_R; 156 33 Q_CEFQ_1*fb
157 36 Q_CEFQ_1*left_y_S; 158 10 T_ABC+*cf; 159 143 T_ABC+*up_R
160 31 T_ABP+*he; 161 16 T_ABP+*left_x_S; 162 98 T_ABP+*low_Q
163 80 T_AHS-*up_R; 164 347 T_APR-*cf; 165 118 T_APR-*low_Q
166 76 T_APR-*up_S; 167 31 T_APS+*ha; 168 156 T_APS+*up_R
169 24 T_BHP+*left_x_S; 170 91 T_BQR+*ea; 171 101 T_BQR+*he
172 48 T_CER+*fb; 173 56 T_CPQ-*ha; 174 16 T_CPQ-*left_x_S
175 68 T_EFR+*low_Q; 176 6 T_ERS+*left_y_S; 177 9 T_ERS+*low_P
178 78 T_FQR+*low_P; 179 17 cf*left_px_S; 180 24 ea*left_py_S
181 349 left_px_S*up_R; 182 21 C_AEH_1*L14*L24; 183 57 DX_PQ*DX_PR*L10
184 4 DX_PQ*DY_QR*L0; 185 124 DX_PQ*L0*L18; 186 57 DX_PQ*L11*L27
187 33 DX_PQ*L7*Px; 188 423 DX_PR*L0*L12; 189 255 DX_PR*L0*L17
190 223 DX_PR*L0*Px; 191 122 DX_PR*L0*low_Q; 192 37 DX_PR*L10*Px
193 6 DX_PR*L10*he; 194 6 DX_PR*L10*left_y_S; 195 26 DX_PR*L18*L27
196 55 DY_QR*DY_QR*fb; 197 286 DY_QR*L0*L12; 198 143 DY_QR*L0*L5
199 292 DY_QR*L11*L12; 200 231 DY_QR*L11*L17; 201 42 DY_QR*L12*L15
202 43 DY_QR*L12*L2; 203 66 DY_QR*L12*L4; 204 10 DY_QR*L12*L7
205 111 DY_QR*L12*cf; 206 79 DY_QR*L14*L17; 207 158 DY_QR*L14*L24
208 90 DY_QR*L14*L9; 209 28 DY_QR*L14*cf; 210 39 DY_QR*L17*L7
211 48 DY_QR*L2*L24; 212 6 DY_QR*L22*L24; 213 55 DY_QR*L23*L5
214 139 DY_QR*L5*low_P; 215 10 DY_QR*Px*he; 216 45 DY_QS*L1*L24
217 1 DY_QS*L10*L12; 218 223 DY_QS*L10*fb; 219 120 DY_QS*L11*L24
220 31 L0*L1*L12; 221 18 L0*L11*L24; 222 3 L0*L12*L19
223 56 L0*L14*L5; 224 16 L0*L16*L9; 225 66 L0*L17*L24
226 344 L0*L2*L5; 227 31 L0*L2*L7; 228 40 L0*L2*L9
229 267 L0*L2*Px; 230 401 L0*L2*low_Q; 231 72 L0*L21*L27
232 6 L0*L26*L27; 233 221 L0*L26*L5; 234 62 L0*L27*L9
235 24 L1*L10*left_x_S; 236 6 L1*L24*L6; 237 8 L10*L10*L3
238 34 L10*L10*left_x_S; 239 146 L10*L12*fb; 240 16 L10*L14*fb
241 41 L10*L16*L5; 242 37 L10*L20*fb; 243 165 L10*L22*L5
244 136 L10*L22*fb; 245 57 L10*L5*up_S; 246 17 L10*fb*up_S
247 446 L10*left_x_S*up_R; 248 6 L10*left_y_S*up_S; 249 41 L10*low_Q*low_Q
250 6 L11*L18*L5; 251 83 L11*L2*L24; 252 390 L11*L22*L24
253 263 L11*L24*Px; 254 6 L11*L27*ea; 255 41 L11*L5*Px
256 122 L11*L9*Px; 257 41 L12*L12*low_P; 258 42 L12*L15*L18
259 18 L12*L17*left_y_S; 260 176 L12*L18*L5; 261 53 L12*L18*ea
262 132 L12*L18*left_y_S; 263 33 L12*L2*L7; 264 89 L12*L20*L27
265 30 L12*L20*L5; 266 148 L12*L22*L27; 267 514 L12*L24*ea
268 45 L12*L26*L27; 269 31 L12*L27*L6; 270 129 L12*L27*low_P
271 58 L12*L5*L7; 272 53 L14*L17*ea; 273 16 L14*L18*L9
274 28 L14*L21*L7; 275 42 L14*L23*Px; 276 24 L14*L24*Px
277 9 L14*L24*ea; 278 45 L14*L24*left_y_S; 279 16 L14*L5*L5
280 16 L14*L5*cf; 281 16 L14*L9*he; 282 41 L14*Px*Px
283 41 L16*L19*L5; 284 17 L16*L22*L5; 285 34 L17*L18*cf
286 30 L17*L2*L27; 287 8 L17*L5*L6; 288 41 L18*L18*L27
289 182 L18*L18*L9; 290 79 L18*L18*Px; 291 41 L18*L18*left_y_S
292 113 L18*L19*L5; 293 254 L18*L20*L5; 294 76 L18*L23*L5
295 50 L19*L21*L5; 296 129 L2*L2*L27; 297 31 L2*L27*L7
298 10 L2*L27*cf; 299 129 L2*Px*left_y_S; 300 30 L2*left_y_S*low_Q
301 6 L20*L22*L27; 302 106 L20*L26*L5; 303 7 L20*L27*L27
304 7 L20*L27*T_AEH+; 305 7 L21*L24*L27; 306 48 L21*L27*T_BCF+
307 9 L21*L27*low_P; 308 19 L21*L5*L7; 309 58 L21*L7*L9
310 76 L21*L9*he; 311 57 L21*L9*left_y_S; 312 7 L21*left_y_S*up_S
313 87 L22*L27*fb; 314 29 L22*L5*L6; 315 7 L22*L9*L9
316 9 L22*cf*left_y_S; 317 61 L23*L23*L9; 318 48 L23*L3*L5
319 17 L24*L27*L5; 320 48 L24*L7*Px; 321 6 L24*ea*he
322 26 L24*ea*low_Q; 323 17 L27*L5*left_x_S; 324 17 L27*L9*L9
325 38 L27*L9*ea; 326 129 L27*Px*low_P; 327 6 L27*ea*up_S
328 6 L27*he*left_y_S; 329 24 L5*L5*ea; 330 2 L5*L6*L6
331 26 L5*L6*low_Q; 332 15 L5*L7*L9; 333 82 L5*L7*Px
334 75 L5*ea*left_x_S; 335 10 L5*ea*left_y_S; 336 75 L5*ea*up_S
337 30 L5*low_P*up_R; 338 23 L7*L9*left_y_S; 339 31 L7*Px*left_y_S
340 287 L9*Px*left_y_S; 341 17 L9*cf*left_y_S; 342 57 cf*left_y_S*up_R
```

## Node X0098

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR---+/QR++--`.
Parent: `X0096`.
Assumptions: `AQR+, BQR+, EQR-, FQR-`.

```n6x-trace
plu FCEQR FCR -1
```

Polynomial: `M1`; `308` terms; upper bound `-78664696348455421645896692215739791799891957997738063847/8552983863189172078857464189832081480737928000000000000`.

```n6x-witnesses
C_AEH_1 P
C_BCR_1 Q
C_CEP_1 Q
C_CHP_1 Q
C_EFH_1 R
C_EFS_1 R
Q_ACER_1 Q
Q_BCER_1 Q
Q_EFHQ_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 32 T_ABC+; 2 261 T_APR-; 3 325 T_APS+
4 34 T_BQR+; 5 26 T_CEF+; 6 199 T_CHQ+
7 336 T_CPQ-; 8 4 T_ERS+; 9 82 T_FHS-
10 68 T_FPR+; 11 34 T_FQR-; 12 51 T_HPS+
13 70 left_px_S; 14 1 C_BCR_1*left_y_S; 15 3 C_CEP_1*up_R
16 7 C_CHP_1*L5; 17 46 C_EFH_1*L24; 18 31 C_EFS_1*L12
19 1 C_EFS_1*L24; 20 317 DX_PQ*T_BHP+; 21 28 DX_PQ*T_FPR+
22 157 DX_PR*T_APS+; 23 63 DX_PR*T_BHP+; 24 167 DX_PR*T_EPQ+
25 75 DX_PR*T_FHS-; 26 23 DY_QR*L9; 27 43 DY_QR*T_ABP+
28 97 DY_QR*T_BHP+; 29 8 DY_QR*left_y_S; 30 30 L0*L27
31 111 L0*L5; 32 20 L0*Px; 33 12 L0*T_ABP+
34 45 L0*T_CRS+; 35 55 L0*cf; 36 12 L1*T_ABC+
37 12 L1*T_APR-; 38 25 L1*T_BQR+; 39 21 L1*T_ERS+
40 24 L1*T_HPS+; 41 353 L10*L5; 42 56 L10*T_BQS+
43 28 L10*T_CER+; 44 16 L10*T_FQR-; 45 19 L10*left_y_S
46 1 L11*T_AHP-; 47 191 L12*L27; 48 60 L12*L9
49 176 L12*T_ACQ+; 50 427 L12*T_BHP+; 51 255 L12*T_CPQ-
52 182 L12*T_CQR-; 53 167 L12*T_EPQ+; 54 105 L12*left_px_S
55 35 L14*L27; 56 42 L14*T_AHS-; 57 180 L14*T_BCQ+
58 290 L14*T_CHQ+; 59 21 L14*T_ERS+; 60 21 L14*left_px_S
61 24 L14*left_y_S; 62 133 L15*T_BQR+; 63 4 L15*T_FPR+
64 101 L16*T_APS+; 65 19 L16*T_BQR+; 66 45 L16*T_CEF+
67 29 L16*T_CHQ+; 68 45 L16*T_CPQ-; 69 167 L16*T_ERS+
70 86 L17*L27; 71 45 L17*T_APQ-; 72 21 L17*T_APR-
73 99 L17*T_HRS+; 74 116 L17*left_y_S; 75 20 L18*L27
76 42 L18*L5; 77 259 L18*T_ABP+; 78 56 L18*T_FHS-
79 130 L2*L27; 80 73 L2*L5; 81 37 L2*L9
82 26 L2*T_FHS-; 83 330 L20*T_ABC+; 84 66 L20*T_CEF+
85 142 L20*T_CHQ+; 86 216 L20*T_CPQ-; 87 187 L21*T_ABP+
88 21 L21*T_AHS-; 89 40 L21*left_px_S; 90 2 L22*L27
91 6 L22*T_ABC+; 92 32 L22*T_AHS-; 93 63 L22*T_CHQ+
94 51 L22*left_px_S; 95 218 L24*L27; 96 21 L24*L5
97 10 L24*L9; 98 240 L24*T_AEP+; 99 101 L24*T_APQ-
100 234 L24*T_APR-; 101 69 L24*T_EHR-; 102 50 L24*T_FQR-
103 21 L24*T_HPS+; 104 216 L24*left_y_S; 105 46 L25*T_CHQ+
106 45 L25*T_CPQ-; 107 58 L26*T_CPQ-; 108 3 L26*T_ERS+
109 175 L26*T_FQR-; 110 7 L27*L5; 111 23 L27*Q_ACER_1
112 2 L27*Q_EFHQ_1; 113 4 L27*T_ACE+; 114 21 L27*T_APS+
115 7 L27*T_BER+; 116 3 L27*T_CHR-; 117 21 L27*T_EPS-
118 22 L27*ha; 119 62 L27*up_R; 120 79 L3*T_FPR+
121 330 L4*T_APR-; 122 112 L4*T_FPR+; 123 151 L4*T_FQR-
124 23 L4*T_HPS+; 125 79 L5*L5; 126 20 L5*L6
127 374 L5*T_BHP+; 128 45 L5*T_EHP+; 129 45 L5*T_EPQ+
130 10 L5*cf; 131 1 L5*up_R; 132 21 L6*T_APR-
133 84 L6*T_APS+; 134 41 L6*T_BQR+; 135 4 L6*T_FHS-
136 50 L8*T_CHQ+; 137 285 L8*T_CPQ-; 138 4 L9*T_ABP+
139 75 L9*T_AEP+; 140 83 L9*T_BPQ-; 141 63 L9*T_BQR+
142 44 L9*T_EHS-; 143 63 L9*T_FQR-; 144 26 L9*T_FRS-
145 10 L9*he; 146 122 L9*left_y_S; 147 252 Px*T_APR-
148 290 Px*T_CHQ+; 149 201 Px*T_CPQ-; 150 150 Px*left_y_S
151 28 Q_BCER_1*left_y_S; 152 70 T_ABC+*cf; 153 70 T_ABC+*left_x_S
154 75 T_AHP-*left_x_S; 155 39 T_AHP-*low_Q; 156 12 T_APR-*low_P
157 69 T_APR-*low_Q; 158 63 T_APS+*he; 159 56 T_APS+*up_R
160 80 T_BHP+*up_R; 161 41 T_BQR+*he; 162 118 T_BQR+*up_S
163 50 T_CHQ+*cf; 164 58 T_CHQ+*left_y_S; 165 46 T_CHQ+*low_P
166 24 T_EHS-*left_y_S; 167 45 T_EPQ+*left_x_S; 168 2 T_EPQ+*left_y_S
169 69 T_ERS+*cf; 170 3 T_ERS+*left_x_S; 171 130 T_FPR+*low_P
172 69 T_FPR+*low_Q; 173 21 T_FPR+*up_S; 174 25 T_FQR-*ha
175 133 T_FQR-*low_P; 176 21 T_HPS+*left_x_S; 177 26 cf*left_px_S
178 25 C_AEH_1*DY_QR*L9; 179 12 C_AEH_1*L0*L5; 180 2 C_AEH_1*L22*L5
181 84 C_AEH_1*L3*L5; 182 135 DX_PQ*DX_PR*L5; 183 19 DX_PQ*DY_QR*L2
184 29 DX_PQ*L10*L16; 185 21 DX_PQ*L10*L4; 186 43 DX_PQ*L10*up_R
187 57 DX_PQ*L12*L27; 188 21 DX_PR*L0*L17; 189 252 DX_PR*L0*Px
190 69 DX_PR*L0*low_Q; 191 101 DX_PR*L12*L27; 192 12 DX_PR*L16*L27
193 67 DX_PR*L24*L6; 194 243 DY_QR*L12*L2; 195 107 DY_QR*L12*Px
196 166 DY_QR*L12*cf; 197 56 DY_QR*L13*left_y_S; 198 15 DY_QR*L17*L5
199 20 DY_QR*L17*left_y_S; 200 118 DY_QR*L2*L24; 201 3 DY_QR*L24*L25
202 69 DY_QR*L24*cf; 203 119 DY_QR*L27*fb; 204 142 DY_QR*L9*Px
205 20 DY_QR*cf*cf; 206 1 DY_QS*L2*L27; 207 12 L0*L0*L21
208 17 L0*L11*L2; 209 39 L0*L11*L24; 210 14 L0*L12*L19
211 12 L0*L15*Px; 212 45 L0*L16*L17; 213 70 L0*L16*Px
214 70 L0*L17*L2; 215 241 L0*L18*Px; 216 53 L0*L22*L5
217 70 L0*L25*L5; 218 70 L0*L4*L5; 219 154 L0*Px*cf
220 17 L0*T_BCF+*left_y_S; 221 145 L1*L12*L12; 222 493 L1*L12*L24
223 70 L1*L2*L24; 224 58 L10*L10*L17; 225 3 L10*L21*left_y_S
226 61 L10*L26*L5; 227 1 L10*Px*left_y_S; 228 2 L10*left_x_S*left_y_S
229 47 L11*L12*Px; 230 242 L11*L14*L17; 231 20 L11*L17*L18
232 52 L11*L17*L24; 233 26 L11*L17*L3; 234 58 L11*L18*L4
235 72 L11*L18*L9; 236 26 L11*L2*L24; 237 26 L11*L2*L9
238 107 L11*L21*L5; 239 28 L11*L24*L6; 240 81 L11*L24*up_R
241 57 L11*L27*Px; 242 223 L11*L5*low_P; 243 3 L11*L6*L9
244 130 L12*L13*L5; 245 54 L12*L14*L17; 246 157 L12*L14*left_x_S
247 107 L12*L14*up_R; 248 135 L12*L16*L5; 249 174 L12*L18*L5
250 52 L12*L18*Px; 251 113 L12*L20*L27; 252 5 L12*L27*ha
253 135 L12*L5*up_R; 254 2 L12*ea*left_y_S; 255 1 L13*L9*left_y_S
256 23 L13*cf*left_y_S; 257 121 L14*L14*L21; 258 133 L14*L15*L9
259 116 L14*L17*fb; 260 64 L14*L18*cf; 261 3 L14*L23*L5
262 37 L14*L27*L5; 263 21 L14*cf*left_y_S; 264 22 L15*L25*L5
265 174 L15*L5*fb; 266 76 L16*L23*L27; 267 19 L17*L17*L23
268 19 L17*L18*L21; 269 20 L17*L19*L27; 270 123 L17*L24*L6
271 19 L17*L24*cf; 272 56 L17*L27*low_P; 273 135 L17*L5*up_R
274 225 L18*L20*L5; 275 63 L18*L23*L5; 276 3 L18*L24*L25
277 89 L18*L5*T_BCF+; 278 53 L18*L5*left_x_S; 279 4 L18*L9*fb
280 28 L19*L23*L9; 281 159 L19*L5*cf; 282 39 L19*L9*cf
283 1 L2*left_y_S*left_y_S; 284 70 L20*L26*L5; 285 57 L21*L27*low_Q
286 18 L21*L9*L9; 287 3 L21*left_y_S*left_y_S; 288 20 L22*L4*L5
289 21 L22*Px*left_y_S; 290 3 L23*L5*he; 291 41 L23*L9*low_Q
292 2 L24*L27*cf; 293 21 L24*L27*ha; 294 2 L24*L4*left_y_S
295 14 L24*L5*low_Q; 296 69 L24*L7*cf; 297 19 L24*L8*low_Q
298 3 L24*L9*left_y_S; 299 3 L24*left_y_S*up_R; 300 33 L27*L4*up_R
301 7 L27*L6*fb; 302 26 L27*L9*T_BCF+; 303 143 L27*Px*up_R
304 7 L5*L5*low_P; 305 18 L9*L9*up_R; 306 26 L9*cf*left_y_S
307 143 Px*left_y_S*up_R; 308 35 cf*left_y_S*up_R
```

## Node X0099

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR---+/QR+--+`.
Parent: `X0096`.
Assumptions: `AQR+, BQR-, EQR-, FQR+`.

```n6x-trace
plu BAEQR BEQ 1
plu QACFR QAF -1
plu RAEFQ RAF -1
```

Polynomial: `M1`; `304` terms; upper bound `-4609326354949107702888497231970751480721093233/486219291546399337876056068237639300000000000`.

```n6x-witnesses
C_ABH_1 P
C_ACH_2 PQ
C_EFQ_1 R
C_EFS_1 R
Q_ABEP_1 Q
Q_ABRP_1 Q
Q_ABSH_1 P
Q_AQSH_1 P
Q_BCHP_1 Q
Q_CEFQ_1 R
Q_EFPQ_1 R
Q_EFSH_1 R
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 352 C_ACH_2; 2 1130 T_ABC+; 3 1 T_APR-
4 506 T_APS+; 5 153 T_BQR-; 6 115 T_CPQ-
7 1329 T_EFR+; 8 339 T_ERS+; 9 148 T_FHS-
10 531 T_FQR+; 11 100 T_HPS+; 12 8 C_ABH_1*L10
13 209 C_ACH_2*L13; 14 8 C_ACH_2*L15; 15 1 C_ACH_2*L18
16 85 C_ACH_2*L22; 17 547 C_ACH_2*L3; 18 378 C_ACH_2*left_x_S
19 390 C_EFQ_1*L12; 20 59 C_EFQ_1*L24; 21 218 C_EFQ_1*L9
22 27 C_EFS_1*L12; 23 18 DX_PQ*L10; 24 192 DX_PQ*Q_AQSH_1
25 293 DX_PQ*Q_EFPQ_1; 26 728 DX_PQ*Q_EFSH_1; 27 106 DX_PQ*T_ABC+
28 445 DX_PQ*T_AFR-; 29 428 DX_PQ*T_APS+; 30 421 DX_PQ*T_BHP+
31 257 DX_PQ*T_CHQ+; 32 910 DX_PQ*T_EFR+; 33 543 DX_PQ*T_ERS+
34 101 DX_PR*L27; 35 47 DX_PR*T_APQ-; 36 40 DX_PR*T_CHQ+
37 155 DY_QS*T_ABC+; 38 685 L0*L5; 39 8 L0*T_BHP+
40 49 L0*T_FHS-; 41 38 L10*L5; 42 8 L10*T_APQ-
43 45 L10*T_AQR+; 44 45 L10*T_CPQ-; 45 54 L10*T_EPQ+
46 1 L10*left_y_S; 47 29 L11*L27; 48 777 L12*L27
49 318 L12*L5; 50 137 L12*T_BHP+; 51 79 L12*T_CEF+
52 786 L12*T_CER+; 53 42 L12*T_CPQ-; 54 1173 L12*T_EPQ+
55 658 L12*T_HPS+; 56 4644 L12*left_px_S; 57 218 L14*T_EFR+
58 136 L15*L5; 59 8 L15*T_ABC+; 60 278 L16*T_CPQ-
61 74 L17*L27; 62 278 L17*T_APQ-; 63 155 L17*T_APR-
64 570 L17*T_CER+; 65 293 L17*T_EPQ+; 66 11 L18*Q_ABEP_1
67 82 L18*T_CEF+; 68 74 L18*T_CER+; 69 447 L18*T_HPS+
70 762 L18*left_px_S; 71 302 L2*L27; 72 1418 L2*T_ABC+
73 41 L2*T_APR-; 74 114 L2*T_BQR-; 75 81 L2*T_CER+
76 69 L2*T_EFR+; 77 77 L20*L27; 78 594 L20*T_APS+
79 22 L20*left_px_S; 80 830 L21*T_CPQ-; 81 937 L21*T_EPQ+
82 253 L21*T_HPS+; 83 128 L22*T_HPS+; 84 309 L22*left_px_S
85 128 L23*T_APS+; 86 185 L23*T_FHS-; 87 24 L24*L27
88 377 L24*Q_ABEP_1; 89 354 L24*T_AEP+; 90 329 L24*T_AHP-
91 428 L24*T_APQ-; 92 594 L24*T_APR-; 93 326 L24*T_BCQ+
94 276 L24*T_BEQ+; 95 599 L24*T_EHR-; 96 1830 L24*left_px_S
97 670 L25*T_CPQ-; 98 59 L25*T_FQR+; 99 302 L26*T_FHS-
100 16 L27*L27; 101 238 L27*L5; 102 49 L27*Q_ABSH_1
103 53 L27*T_ABQ+; 104 45 L27*T_AQR+; 105 102 L27*T_BQR-
106 54 L27*T_CEQ+; 107 57 L27*T_FQR+; 108 253 L27*T_FRS-
109 9 L27*ea; 110 33 L27*low_Q; 111 58 L27*up_R
112 602 L3*T_ERS+; 113 41 L3*T_PQR+; 114 455 L3*left_px_S
115 992 L4*T_APQ-; 116 422 L4*T_BQR-; 117 151 L4*T_EFR+
118 866 L4*T_EPQ+; 119 475 L4*T_ERS+; 120 435 L4*T_HPS+
121 228 L5*L6; 122 608 L5*Py; 123 341 L5*Q_ABRP_1
124 387 L5*Q_BCHP_1; 125 489 L5*T_APR-; 126 405 L5*T_BEQ+
127 324 L5*T_CER+; 128 297 L5*T_CPQ-; 129 448 L5*T_FQR+
130 448 L5*T_HPQ+; 131 156 L6*T_BQR-; 132 115 L6*T_CER+
133 115 L6*T_EFR+; 134 54 L6*T_FHS-; 135 82 L6*T_FQR+
136 115 L7*T_CEF+; 137 302 L8*T_APQ-; 138 51 L8*T_APS+
139 81 L8*T_BQR-; 140 995 L8*T_CPQ-; 141 218 L8*T_FQR+
142 275 L9*Q_EFSH_1; 143 526 L9*T_ABC+; 144 496 L9*T_AEP+
145 8 L9*T_EFR+; 146 735 L9*T_EHR-; 147 22 L9*T_ERS+
148 316 L9*left_px_S; 149 243 Px*T_APQ-; 150 230 Px*T_APS+
151 94 Px*T_BQR-; 152 1128 Px*T_EPQ+; 153 434 Px*T_EQR-
154 275 Px*T_FHS-; 155 683 Px*T_FQR+; 156 54 Q_CEFQ_1*left_y_S
157 526 T_ABC+*left_x_S; 158 210 T_ABC+*up_R; 159 602 T_BQR-*left_x_S
160 69 T_CEF+*fb; 161 629 T_CER+*left_x_S; 162 54 T_CHQ+*ea
163 459 T_CHQ+*fb; 164 164 T_CHQ+*left_x_S; 165 442 T_CPQ-*fb
166 30 T_EFR+*left_x_S; 167 218 T_EFR+*low_P; 168 1707 T_EPQ+*fb
169 326 T_EPQ+*left_x_S; 170 275 T_FHS-*fb; 171 49 T_FHS-*ha
172 235 T_HPS+*cf; 173 239 T_HPS+*fb; 174 344 T_HPS+*low_Q
175 815 left_px_S*low_Q; 176 86 DX_PQ*DX_PQ*L1; 177 257 DX_PQ*DX_PQ*L10
178 337 DX_PQ*DX_PR*L0; 179 202 DX_PQ*DX_PR*L27; 180 126 DX_PQ*L0*L12
181 493 DX_PQ*L0*L2; 182 142 DX_PQ*L0*L9; 183 192 DX_PQ*L18*L24
184 20 DX_PQ*L18*L5; 185 28 DX_PQ*L23*L7; 186 45 DX_PQ*L23*he
187 192 DX_PQ*L27*L5; 188 116 DX_PQ*L7*L9; 189 534 DX_PR*L0*L12
190 698 DX_PR*L0*L5; 191 41 DX_PR*L0*Px; 192 115 DX_PR*L24*left_y_S
193 443 DX_PR*L9*left_y_S; 194 425 DY_QS*L21*L24; 195 465 DY_QS*L21*L9
196 49 DY_QS*L27*fb; 197 964 L0*L12*L5; 198 275 L0*L12*left_x_S
199 8 L0*L17*L27; 200 1 L0*L18*Px; 201 102 L0*L19*L5
202 102 L0*L2*L27; 203 1913 L0*L2*L5; 204 160 L0*L2*Px
205 124 L0*L22*L5; 206 155 L0*L27*T_BCF+; 207 133 L0*L5*L9
208 147 L0*L5*left_x_S; 209 54 L0*Px*up_R; 210 186 L1*L16*L5
211 45 L1*L21*left_y_S; 212 128 L1*L23*L24; 213 430 L1*L24*Px
214 49 L10*L10*left_x_S; 215 586 L10*L12*L17; 216 253 L10*L12*L21
217 1120 L10*L12*L25; 218 16 L10*L12*L27; 219 3432 L10*L12*left_x_S
220 54 L10*L15*L5; 221 880 L10*L17*Px; 222 163 L10*L21*L9
223 40 L10*L21*low_Q; 224 8 L10*L27*Px; 225 428 L10*L5*L5
226 1084 L10*L5*fb; 227 85 L10*L5*up_R; 228 455 L10*Px*cf
229 8 L10*Px*left_y_S; 230 49 L11*L18*L24; 231 1830 L11*L24*L24
232 2015 L11*L24*L9; 233 127 L11*L24*cf; 234 253 L11*L27*left_x_S
235 100 L11*L5*low_Q; 236 114 L12*L12*L23; 237 283 L12*L14*fb
238 42 L12*L15*L5; 239 94 L12*L16*L27; 240 103 L12*L18*L27
241 82 L12*L18*L5; 242 208 L12*L18*Px; 243 10 L12*L18*ea
244 43 L12*L22*L5; 245 74 L12*L22*ea; 246 322 L12*L23*Px
247 922 L12*L24*ea; 248 106 L12*L26*L27; 249 211 L12*L27*L3
250 202 L12*L27*Px; 251 478 L12*L27*cf; 252 534 L12*L3*ea
253 297 L12*L5*L5; 254 44 L12*Px*he; 255 115 L13*L27*up_S
256 8 L13*left_y_S*left_y_S; 257 253 L14*L21*L24; 258 9 L14*L24*fb
259 1437 L15*L5*fb; 260 341 L16*L20*L27; 261 226 L16*L23*L5
262 54 L16*L27*L6; 263 920 L16*L27*L8; 264 701 L16*L5*ea
265 192 L17*L17*L27; 266 192 L17*cf*left_y_S; 267 46 L18*L24*L27
268 46 L18*L27*left_x_S; 269 102 L18*L5*L6; 270 55 L18*L5*left_x_S
271 208 L18*Px*Px; 272 125 L19*L24*L5; 273 14 L19*L5*L9
274 297 L19*L5*cf; 275 127 L2*L21*L27; 276 102 L2*L23*L27
277 475 L20*L27*T_BCF+; 278 253 L20*L27*up_S; 279 310 L21*L24*L27
280 150 L21*L9*he; 281 154 L22*L24*L5; 282 51 L22*L24*L9
283 30 L22*L5*L9; 284 74 L22*L5*low_Q; 285 126 L22*L9*L9
286 125 L22*L9*left_y_S; 287 324 L23*L5*L5; 288 115 L23*L5*L6
289 33 L23*L7*L9; 290 69 L23*L9*fb; 291 208 L23*Px*Px
292 54 L24*L27*L6; 293 54 L24*L6*left_y_S; 294 51 L24*ea*fb
295 253 L24*left_y_S*up_R; 296 41 L27*cf*cf; 297 145 L3*ea*low_Q
298 156 L3*ea*up_R; 299 324 L5*L5*L6; 300 297 L5*L5*low_P
301 154 L5*L6*left_x_S; 302 393 L5*ea*fb; 303 401 L7*L9*L9
304 41 cf*cf*left_y_S
```

## Node X0100

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR---+/QR+---`.
Parent: `X0096`.
Assumptions: `AQR+, BQR-, EQR-, FQR-`.

```n6x-trace
plu BAEQR BEQ 1
plu FCEQR FCR -1
plu QBCFR QBF 1
plu RBCFQ RBF 1
```

Polynomial: `M1`; `31` terms; upper bound `-661535881062911113517499/605864430139376000000000`.

```n6x-witnesses
C_ACH_2 PQ
C_BFP_2 QR
C_CHP_1 Q
C_FPQ_1 R
Q_EFSH_1 R
left_px_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 4 C_ACH_2; 2 27 C_BFP_2; 3 2 C_FPQ_1
4 1 Q_EFSH_1; 5 24 T_ABC+; 6 28 T_AHP-
7 10 T_APS+; 8 5 T_CEF+; 9 3 T_CHQ+
10 7 T_CPQ-; 11 13 left_px_S; 12 5 C_CHP_1*L16
13 19 L0*L5; 14 10 L1*L24; 15 24 L1*L3
16 23 L11*L12; 17 4 L11*L9; 18 10 L12*L27
19 5 L13*T_CHQ+; 20 29 L14*L9; 21 27 L15*L3
22 6 L15*L5; 23 1 L18*L5; 24 2 L19*L9
25 13 L24*L27; 26 13 L24*left_y_S; 27 8 L27*cf
28 5 L5*L6; 29 5 L5*T_HPQ+; 30 6 L7*L9
31 9 cf*left_y_S
```

## Node X0101

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR---+/QR---+`.
Parent: `X0096`.
Assumptions: `AQR-, BQR-, EQR-, FQR+`.

```n6x-trace
plu ABEQR AEQ 1
plu BAEQR BEQ 1
```

Polynomial: `M1`; `96` terms; upper bound `-7660757757569445533424248065610620751986759/1833743547297938018094851007992000000000000`.

```n6x-witnesses
C_AEH_2 PQ
C_AEP_1 Q
C_AHR_2 PQ
C_APR_1 Q
C_CHP_1 Q
Q_AERP_1 Q
Q_AQSH_1 P
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 6 Q_AQSH_1; 2 39 T_ABC+; 3 37 T_APS+
4 55 T_AQR-; 5 13 T_BHP+; 6 1 T_BQS+
7 17 T_CER+; 8 4 T_CHQ+; 9 32 T_CPQ-
10 19 T_EFR+; 11 36 T_EPQ+; 12 21 T_ERS+
13 18 T_FHS-; 14 28 left_px_S; 15 10 C_AEH_2*L3
16 13 C_AEP_1*L2; 17 38 C_AEP_1*L24; 18 10 C_AHR_2*L5
19 32 C_AHR_2*L8; 20 55 C_APR_1*DX_PQ; 21 13 C_CHP_1*L17
22 40 C_CHP_1*L20; 23 17 DX_PQ*L7; 24 80 DX_PQ*T_EPR-
25 9 DX_PQ*he; 26 80 DX_PR*T_EPQ+; 27 42 DX_PR*left_px_S
28 40 DX_QR*L0; 29 9 DX_QR*L12; 30 5 DX_QR*left_y_S
31 16 L0*L5; 32 9 L0*left_x_S; 33 9 L1*L21
34 12 L10*L5; 35 43 L11*L24; 36 36 L12*L27
37 41 L12*T_APQ-; 38 13 L12*T_CQR-; 39 13 L12*T_EQR-
40 134 L12*T_PQR+; 41 8 L13*L24; 42 26 L13*T_AQR-
43 25 L15*L5; 44 2 L16*L27; 45 16 L18*L5
46 3 L2*L27; 47 1 L2*T_APQ-; 48 3 L2*left_y_S
49 28 L20*L27; 50 4 L20*T_ABC+; 51 26 L20*T_APS+
52 4 L20*left_px_S; 53 10 L21*L24; 54 55 L21*T_APQ-
55 10 L21*he; 56 8 L22*L9; 57 1 L22*cf
58 3 L23*L24; 59 2 L23*L5; 60 5 L24*T_APR-
61 16 L24*T_EFR+; 62 22 L24*T_EPR-; 63 18 L27*L4
64 4 L27*up_R; 65 1 L3*T_EFR+; 66 40 L4*Q_AERP_1
67 9 L7*L9; 68 1 L9*T_BER+; 69 28 L9*T_EHR-
70 13 Px*T_EPQ+; 71 1 Px*left_y_S; 72 28 T_CER+*left_x_S
73 23 T_EFR+*cf; 74 23 T_EFR+*left_x_S; 75 13 T_EPQ+*cf
76 13 T_EPQ+*fb; 77 18 cf*left_y_S; 78 4 left_y_S*up_R
79 42 C_AEH_2*L12*L24; 80 10 DX_PQ*L4*he; 81 42 DX_PR*L11*L9
82 22 DX_QR*L0*left_x_S; 83 13 DX_QR*L10*L12; 84 3 DX_QR*L5*he
85 1 DX_QR*L6*Px; 86 22 L0*L16*left_x_S; 87 40 L1*L12*L4
88 27 L10*L5*up_R; 89 46 L11*L20*L24; 90 26 L12*L20*L27
91 13 L12*Px*ea; 92 14 L21*L5*ea; 93 28 L22*L24*L5
94 5 L22*L5*L9; 95 7 L24*L6*cf; 96 5 L5*L6*left_x_S
```

## Node X0102

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR---+/QR----`.
Parent: `X0096`.
Assumptions: `AQR-, BQR-, EQR-, FQR-`.

```n6x-trace
plu ABEQR AEQ 1
plu BAEQR BEQ 1
plu FCEQR FCR -1
plu QACFR QAF 1
plu QBCFR QBF 1
plu RACFQ RAF 1
plu RBCFQ RBF 1
via P AHQ AF 1
```

Exclusion: `cluster AFH P AFP QR`.

## Node X0103

Case: `IL/MH++/HCEF+++-/PS+---/QS++--/PR----`.
Parent: `X0093`.
Assumptions: `APR-, BPR-, EPR-, FPR-`.

```n6x-trace
plu ABEPR AEP 1
plu FBEPR FBR -1
plu FCEPR FCR -1
plu FCPQR FQR -1
plu PABFR PAF 1
plu RABFP RAF 1
```

Polynomial: `M1`; `16` terms; upper bound `-73943964171002153/141457957072000000`.

```n6x-witnesses
C_AFH_2 PR
C_AFS_2 PR
Q_ABSH_1 P
Q_EFSH_1 R
left_px_S -
```

```n6x-squares
```

```n6x-sum
1 13 C_AFH_2; 2 18 C_AFS_2; 3 6 Q_ABSH_1
4 1 Q_EFSH_1; 5 40 T_ABC+; 6 9 T_AHS-
7 6 T_CEF+; 8 16 left_px_S; 9 40 L0*L5
10 9 L1*L24; 11 31 L1*L9; 12 32 L11*L24
13 3 L11*L9; 14 6 L2*L27; 15 6 L5*L6
16 7 L7*L9
```

## Node X0104

Case: `IL/MH++/HCEF+++-/PS+---/QS+---`.
Parent: `X0092`.
Assumptions: `AQS+, BQS-, EQS-, FQS-`.

```n6x-trace
plu BAEQS BEQ 1
plu BAFQS BFQ 1
plu BAQRS BQR -1
```

Polynomial: `M1`; `17` terms; upper bound `-1389838728115555150039/2475514248760000000000`.

```n6x-witnesses
C_ABS_2 PQ
C_ACH_2 PQ
left_px_S -
left_x_S -
```

```n6x-squares
```

```n6x-sum
1 7 C_ABS_2; 2 1 C_ACH_2; 3 15 T_ABC+
4 2 T_CEF+; 5 11 left_px_S; 6 14 L0*L5
7 1 L0*L9; 8 1 L0*left_x_S; 9 6 L1*L24
10 22 L1*L3; 11 1 L10*L5; 12 11 L10*left_x_S
13 7 L2*L27; 14 2 L5*L6; 15 2 L6*left_px_S
16 2 L7*L9; 17 2 L10*L6*left_x_S
```

## Node X0105

Case: `IL/MH++/HCEF+++-/PS----`.
Parent: `X0091`.
Assumptions: `APS-, BPS-, EPS-, FPS-`.

```n6x-trace
plu ABEPS AEP 1
plu ABFPS AFP 1
plu ABPRS APR -1
```

Polynomial: `M1`; `14` terms; upper bound `-24136499973576283470754910573/167616826193432624865752000000`.

```n6x-witnesses
C_CHP_1 Q
left_px_S -
left_x_S -
left_y_S -
```

```n6x-squares
```

```n6x-sum
1 3 C_CHP_1; 2 1 T_ABC+; 3 9 T_AHP-
4 9 T_APS-; 5 4 T_FHS-; 6 32 left_px_S
7 9 DX_PS*L15; 8 1 L0*L5; 9 3 L10*L5
10 35 L10*left_x_S; 11 7 L12*left_y_S; 12 9 L12*low_P
13 3 L15*L5; 14 1 L7*L9
```

## Node X0106

Case: `IL/MHC++`.
Parent: `ROOT`.
Assumptions: `APQ-, BPQ-, CPQ+, HPQ+, EPQ+, FPQ+`.

```n6x-trace
plu BAEHP BEP 1
plu BAFHP BFP 1
plu CABHR CAR -1
plu CABHS CAS -1
plu CAFHP CFP 1
plu CAFHQ CFQ 1
plu EACHS EAS -1
plu EBCHS EBS -1
plu FACHS FAS -1
plu FBCHS FBS -1
plu FBHPS FPS -1
plu FCHQS FQS -1
plu FEHRS FRS -1
plu HABCR HBR 1
plu HABCS HBS 1
plu HABEP HEP -1
plu HACEQ HEQ -1
plu HAFRS HRS 1
plu PBCHR PBR 1
plu PBCHS PBS 1
plu PBCQR PQR 1
plu PBCQS PQS 1
plu PBEFS PES 1
plu QCEFS QES 1
```

Polynomial: `M2`; `3` terms; upper bound `-491338901/500000000`.

```n6x-witnesses
left_px_S -
left_py_S -
left_x_S -
```

```n6x-squares
```

```n6x-sum
1 32 left_px_S; 2 3 left_py_S; 3 32 L10*left_x_S
```
