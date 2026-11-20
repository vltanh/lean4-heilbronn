# BITT triangular: literal proof index

The theorem note, this index, and all linked tables form the written argument.

## Hypotheses and format

| Property | Value |
| --- | --- |
| Format | n6-bitt-proof-v1 |
| Status | Complete lower-central reduction, independently checked. |
| Threshold | 93/1000 |
| Proof conclusion | lower-central |
| Locations | BITT |
| Top word | `-` |
| Normalized e <= f | yes |
| Lower-central residual | no |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |
| Actual labels | ABCEFHPQRS |
| Terminal stage order | 5, 23, 30, 32, 33, 36, 68, 74, 75, 90, 91, 92, 94, 108, 118, 124, 151, 152, 153, 157, 197, 212, 213, 215, 216, 218, 227, 230, 248, 249, 250, 251, 255, 267, 273, 53, 55, 67, 73, 117, 130, 137, 150, 165, 173, 179, 182, 211, 236, 266, 276 |

## Table files

| Kind | File |
| --- | --- |
| contexts | contexts.md |
| stages | stages_000.md |
| stages | stages_001.md |
| stages | stages_002.md |
| stages | stages_003.md |
| stages | stages_004.md |
| stages | stages_005.md |
| stages | stages_006.md |
| stages | stages_007.md |
| stages | stages_008.md |
| stages | stages_009.md |
| stages | stages_010.md |
| stages | stages_011.md |
| stages | stages_012.md |
| stages | stages_013.md |
| stages | stages_014.md |
| stages | stages_015.md |
| stages | stages_016.md |
| stages | stages_017.md |
| stages | stages_018.md |
| stages | stages_019.md |
| stages | stages_020.md |
| stages | stages_021.md |
| stages | stages_022.md |
| stages | stages_023.md |
| stages | stages_024.md |
| stages | stages_025.md |
| stages | stages_026.md |
| stages | stages_027.md |
| stages | stages_028.md |
| stages | stages_029.md |
| stages | stages_030.md |
| stages | stages_031.md |
| stages | stages_032.md |
| stages | stages_033.md |
| stages | stages_034.md |
| stages | stages_035.md |
| stages | stages_036.md |
| stages | stages_037.md |
| stages | stages_038.md |
| stages | stages_039.md |
| stages | stages_040.md |
| stages | stages_041.md |
| stages | stages_042.md |
| stages | stages_043.md |
| stages | stages_044.md |
| stages | stages_045.md |
| stages | stages_046.md |
| stages | stages_047.md |
| stages | stages_048.md |
| stages | stages_049.md |
| stages | stages_050.md |
| stages | stages_051.md |
| stages | stages_052.md |
| stages | stages_053.md |
| stages | stages_054.md |
| stages | stages_055.md |

## Actual-sign case tree

| Node | Depth | Given premises | Stages | Split | Children | Terminal | Metric |
| --- | --- | --- | --- | --- | --- | --- | --- |
| root | 0 | none | 0, 1 | ACP | root/ACP-, root/ACP+ | none | none |
| root/ACP+ | 1 | ACP+ | 2, 3 | HBP | root/ACP+/HBP-, root/ACP+/HBP+ | none | none |
| root/ACP+/HBP+ | 2 | ACP+, HBP+ | 4, 5 | none | none | 5 | none |
| root/ACP+/HBP- | 2 | ACP+, HBP- | 6, 7, 8 | HEQ | root/ACP+/HBP-/HEQ-, root/ACP+/HBP-/HEQ+ | none | none |
| root/ACP+/HBP-/HEQ+ | 3 | ACP+, HBP-, HEQ+ | 9, 10 | CFQ | root/ACP+/HBP-/HEQ+/CFQ-, root/ACP+/HBP-/HEQ+/CFQ+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+ | 4 | ACP+, HBP-, HEQ+, CFQ+ | 11, 12, 13 | PQR | root/ACP+/HBP-/HEQ+/CFQ+/PQR-, root/ACP+/HBP-/HEQ+/CFQ+/PQR+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+ | 5 | ACP+, HBP-, HEQ+, CFQ+, PQR+ | 14, 15, 16 | PQS | root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+ | 6 | ACP+, HBP-, HEQ+, CFQ+, PQR+, PQS+ | 17, 18, 19 | PRS | root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS+ | 7 | ACP+, HBP-, HEQ+, CFQ+, PQR+, PQS+, PRS+ | 20, 21, 22 | HRS | root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS+/HRS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS+/HRS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS+/HRS+ | 8 | ACP+, HBP-, HEQ+, CFQ+, PQR+, PQS+, PRS+, HRS+ | 23 | none | none | 23 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS+/HRS- | 8 | ACP+, HBP-, HEQ+, CFQ+, PQR+, PQS+, PRS+, HRS- | 24, 25, 26, 27, 28, 29, 30 | none | none | 30 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS- | 7 | ACP+, HBP-, HEQ+, CFQ+, PQR+, PQS+, PRS- | 31, 32 | none | none | 32 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS- | 6 | ACP+, HBP-, HEQ+, CFQ+, PQR+, PQS- | 33 | none | none | 33 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR- | 5 | ACP+, HBP-, HEQ+, CFQ+, PQR- | 34, 35 | PQS | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS+ | 6 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS+ | 36 | none | none | 36 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS- | 6 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS- | 37, 38 | PRS | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+ | 7 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS+ | 39, 40, 41 | QRS | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+/QRS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+/QRS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+/QRS+ | 8 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS+, BFQ+, FPQ-, QRS+ | 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53 | none | none | 53 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+/QRS- | 8 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS+, BFQ+, FPQ-, QRS- | 54, 55 | none | none | 55 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS- | 7 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS- | 56, 57, 58 | HQR | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR-, root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+ | 8 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR+ | 59, 60, 61 | BRS | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS+ | 9 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR+, BRS+ | 62, 63, 64 | HQS | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS+/HQS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS+/HQS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS+/HQS+ | 10 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR+, BRS+, BFQ+, HQS+ | 65, 66, 67 | none | none | 67 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS+/HQS- | 10 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR+, BRS+, BFQ+, HQS- | 68 | none | none | 68 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS- | 9 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR+, BRS- | 69, 70 | CRS | root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS-/CRS-, root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS-/CRS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS-/CRS+ | 10 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR+, BRS-, CRS+ | 71, 72, 73 | none | none | 73 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS-/CRS- | 10 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR+, BRS-, CRS- | 74 | none | none | 74 | none |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR- | 8 | ACP+, HBP-, HEQ+, CFQ+, PQR-, PQS-, PRS-, HQR- | 75 | none | none | 75 | none |
| root/ACP+/HBP-/HEQ+/CFQ- | 4 | ACP+, HBP-, HEQ+, CFQ- | 76, 77, 78, 79, 80, 81, 82, 83, 84 | PQR | root/ACP+/HBP-/HEQ+/CFQ-/PQR-, root/ACP+/HBP-/HEQ+/CFQ-/PQR+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR+ | 5 | ACP+, HBP-, HEQ+, CFQ-, PQR+ | 85, 86 | PQS | root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS-, root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+ | 6 | ACP+, HBP-, HEQ+, CFQ-, PQR+, PQS+ | 87, 88 | PRS | root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+/PRS-, root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+/PRS+ | none | none |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+/PRS+ | 7 | ACP+, HBP-, HEQ+, CFQ-, PQR+, PQS+, PRS+ | 89, 90 | none | none | 90 | none |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+/PRS- | 7 | ACP+, HBP-, HEQ+, CFQ-, PQR+, PQS+, PRS- | 91 | none | none | 91 | none |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS- | 6 | ACP+, HBP-, HEQ+, CFQ-, PQR+, PQS- | 92 | none | none | 92 | none |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR- | 5 | ACP+, HBP-, HEQ+, CFQ-, PQR- | 93, 94 | none | none | 94 | none |
| root/ACP+/HBP-/HEQ- | 3 | ACP+, HBP-, HEQ- | 95, 96 | CFQ | root/ACP+/HBP-/HEQ-/CFQ-, root/ACP+/HBP-/HEQ-/CFQ+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+ | 4 | ACP+, HBP-, HEQ-, CFQ+ | 97, 98 | PQR | root/ACP+/HBP-/HEQ-/CFQ+/PQR-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+ | 5 | ACP+, HBP-, HEQ-, CFQ+, PQR+ | 99, 100, 101 | PQS | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+ | 6 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+ | 102, 103, 104 | PRS | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+ | 7 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+ | 105, 106, 107 | HRS | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS+ | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS+ | 108 | none | none | 108 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS- | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS- | 109, 110, 111 | BQR | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR+ | 9 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS-, BQR+ | 112, 113, 114 | ARS | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR+/ARS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR+/ARS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR+/ARS+ | 10 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS-, BQR+, ARS+ | 115, 116, 117 | none | none | 117 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR+/ARS- | 10 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS-, BQR+, ARS- | 118 | none | none | 118 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR- | 9 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS-, BQR- | 119, 120, 121, 122, 123 | EPQ | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR-/EPQ-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR-/EPQ+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR-/EPQ+ | 10 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS-, BQR-, BFQ+, EPQ+ | 124 | none | none | 124 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR-/EPQ- | 10 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS+, HRS-, BQR-, BFQ+, EPQ- | 125, 126, 127, 128, 129, 130 | none | none | 130 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS- | 7 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS- | 131, 132, 133 | QRS | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS+ | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS-, QRS+ | 134, 135, 136, 137 | none | none | 137 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS- | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS-, QRS- | 138, 139, 140 | CRS | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+ | 9 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS-, QRS-, CRS+ | 141, 142, 143 | EPQ | root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ-, root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ+ | 10 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS-, QRS-, CRS+, EPQ+ | 144, 145, 146, 147, 148, 149, 150 | none | none | 150 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS+/EPQ- | 10 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS-, QRS-, CRS+, EPQ- | 151 | none | none | 151 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS-/QRS-/CRS- | 9 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS+, PRS-, QRS-, CRS- | 152 | none | none | 152 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS- | 6 | ACP+, HBP-, HEQ-, CFQ+, PQR+, PQS- | 153 | none | none | 153 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR- | 5 | ACP+, HBP-, HEQ-, CFQ+, PQR- | 154, 155, 156 | PQS | root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS+ | 6 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS+ | 157 | none | none | 157 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS- | 6 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS- | 158, 159, 160 | PRS | root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+ | 7 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS-, PRS+ | 161, 162, 163 | QRS | root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+/QRS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+/QRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+/QRS+ | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS-, PRS+, BFQ+, FPQ-, QRS+ | 164, 165 | none | none | 165 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+/QRS- | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS-, PRS+, BFQ+, FPQ-, QRS- | 166, 167, 168, 169, 170, 171, 172, 173 | none | none | 173 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS- | 7 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS-, PRS- | 174, 175, 176 | BRS | root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS-/BRS-, root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS-/BRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS-/BRS+ | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS-, PRS-, BRS+ | 177, 178, 179 | none | none | 179 | none |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS-/BRS- | 8 | ACP+, HBP-, HEQ-, CFQ+, PQR-, PQS-, PRS-, BRS- | 180, 181, 182 | none | none | 182 | none |
| root/ACP+/HBP-/HEQ-/CFQ- | 4 | ACP+, HBP-, HEQ-, CFQ- | 183, 184, 185, 186, 187, 188, 189, 190, 191 | PQR | root/ACP+/HBP-/HEQ-/CFQ-/PQR-, root/ACP+/HBP-/HEQ-/CFQ-/PQR+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+ | 5 | ACP+, HBP-, HEQ-, CFQ-, PQR+ | 192, 193 | PQS | root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS-, root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+ | 6 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+ | 194, 195 | PRS | root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-, root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS+ | 7 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS+ | 196, 197 | none | none | 197 | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS- | 7 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS- | 198, 199 | QRS | root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS-, root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+ | 8 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS-, QRS+ | 200, 201, 202 | EPQ | root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ-, root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ+ | 9 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS-, QRS+, EPQ+ | 203, 204, 205, 206, 207, 208 | BEQ | root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ+/BEQ-, root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ+/BEQ+ | none | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ+/BEQ+ | 10 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS-, QRS+, EPQ+, BEQ+ | 209, 210, 211 | none | none | 211 | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ+/BEQ- | 10 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS-, QRS+, EPQ+, BEQ- | 212 | none | none | 212 | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS+/EPQ- | 9 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS-, QRS+, EPQ- | 213 | none | none | 213 | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS- | 8 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS+, PRS-, QRS- | 214, 215 | none | none | 215 | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS- | 6 | ACP+, HBP-, HEQ-, CFQ-, PQR+, PQS- | 216 | none | none | 216 | none |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR- | 5 | ACP+, HBP-, HEQ-, CFQ-, PQR- | 217, 218 | none | none | 218 | none |
| root/ACP- | 1 | ACP- | 219, 220, 221, 222, 223 | HEQ | root/ACP-/HEQ-, root/ACP-/HEQ+ | none | none |
| root/ACP-/HEQ+ | 2 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ+ | 224, 225, 226, 227 | none | none | 227 | none |
| root/ACP-/HEQ- | 2 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ- | 228, 229 | HRS | root/ACP-/HEQ-/HRS-, root/ACP-/HEQ-/HRS+ | none | none |
| root/ACP-/HEQ-/HRS+ | 3 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS+ | 230 | none | none | 230 | none |
| root/ACP-/HEQ-/HRS- | 3 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS- | 231, 232 | ARS | root/ACP-/HEQ-/HRS-/ARS-, root/ACP-/HEQ-/HRS-/ARS+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS+ | 4 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS+ | 233, 234, 235, 236 | none | none | 236 | none |
| root/ACP-/HEQ-/HRS-/ARS- | 4 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS- | 237, 238 | PQR | root/ACP-/HEQ-/HRS-/ARS-/PQR-, root/ACP-/HEQ-/HRS-/ARS-/PQR+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+ | 5 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR+ | 239, 240, 241 | PQS | root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS-, root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+ | 6 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR+, AEQ-, PQS+ | 242, 243 | PRS | root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS-, root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+ | 7 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR+, AEQ-, PQS+, PRS+ | 244, 245, 246 | BRS | root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+/BRS-, root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+/BRS+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+/BRS+ | 8 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR+, AEQ-, PQS+, PRS+, BRS+ | 247, 248 | none | none | 248 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+/BRS- | 8 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR+, AEQ-, PQS+, PRS+, BRS- | 249 | none | none | 249 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS- | 7 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR+, AEQ-, PQS+, PRS- | 250 | none | none | 250 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS- | 6 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR+, AEQ-, PQS- | 251 | none | none | 251 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR- | 5 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR- | 252, 253, 254 | PQS | root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-, root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS+ | 6 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS+ | 255 | none | none | 255 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS- | 6 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS- | 256, 257, 258 | PRS | root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-, root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+ | 7 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS-, PRS+ | 259, 260, 261, 262 | BRS | root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+/BRS-, root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+/BRS+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+/BRS+ | 8 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS-, PRS+, AQR-, FPQ-, BRS+ | 263, 264, 265, 266 | none | none | 266 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+/BRS- | 8 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS-, PRS+, AQR-, FPQ-, BRS- | 267 | none | none | 267 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS- | 7 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS-, PRS- | 268, 269, 270, 271 | AQR | root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR-, root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR+ | none | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR+ | 8 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS-, PRS-, AQR+ | 272, 273 | none | none | 273 | none |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR- | 8 | ACP-, BHP-, CQR-, CRS+, CFQ+, HEQ-, HRS-, ARS-, PQR-, PQS-, PRS-, AQR- | 274, 275, 276 | none | none | 276 | none |

## Capacity-forced signs

| Node | Stage | Forced sign | Outer triangle | Occupants | Excluded point | Upper reference | Upper bound | Cost with extra point |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS- | 31 | AEP+ | ABE | none | P | 31:3 | 202211/1000000 | 279/1000 |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR+/PQS+/PRS- | 31 | CRS+ | CER | none | S | 31:111 | 1654662717/10000000000 | 279/1000 |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+ | 39 | BFQ+ | BFR | S | Q | 39:85 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS+ | 39 | FPQ- | FPR | S | Q | 39:189 | 330767538381/500000000000 | 13857/20000 |
| root/ACP+/HBP-/HEQ+/CFQ+/PQR-/PQS-/PRS-/HQR+/BRS+ | 62 | BFQ+ | BFR | S | Q | 62:85 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+/PRS+ | 89 | BQR+ | BFR | S | Q | 89:89 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR+/PQS+/PRS+ | 89 | CQR+ | CFR | S | Q | 89:127 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR- | 93 | BRS- | BFR | Q | S | 93:89 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR- | 93 | CRS- | CFR | Q | S | 93:127 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ+/CFQ-/PQR- | 93 | PRS- | FPR | Q | S | 93:187 | 311701400829/500000000000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR+/PQS+/PRS+/HRS-/BQR- | 119 | BFQ+ | BFR | S | Q | 119:83 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+ | 161 | BFQ+ | BFR | S | Q | 161:83 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS+ | 161 | FPQ- | FPR | S | Q | 161:187 | 330767538381/500000000000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ+/PQR-/PQS-/PRS-/BRS+ | 177 | BFQ+ | BFR | S | Q | 177:83 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS+ | 196 | BQR+ | BFR | S | Q | 196:85 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS+ | 196 | CQR+ | CFR | S | Q | 196:123 | 84567/125000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS- | 214 | BEQ+ | BCE | none | Q | 214:55 | 116092678023/500000000000 | 279/1000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR+/PQS+/PRS-/QRS- | 214 | CQS- | CES | none | Q | 214:301 | 50153/250000 | 279/1000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR- | 217 | BRS- | BFR | Q | S | 217:87 | 2111/3125 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR- | 217 | CRS+ | CER | none | S | 217:115 | 237972842451/1000000000000 | 279/1000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR- | 217 | CRS- | CFR | Q | S | 217:125 | 65321556487/100000000000 | 13857/20000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR- | 217 | QRS+ | EQR | none | S | 217:169 | 6831684711/25000000000 | 279/1000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR- | 217 | HRS- | FHR | none | S | 217:179 | 50912958951/200000000000 | 279/1000 |
| root/ACP+/HBP-/HEQ-/CFQ-/PQR- | 217 | PRS- | FPR | Q | S | 217:185 | 368130549/625000000 | 13857/20000 |
| root/ACP- | 219 | BHP- | ABH | none | P | 219:7 | 34579361733/125000000000 | 279/1000 |
| root/ACP- | 219 | CQR- | CER | none | Q | 219:105 | 33634497131/125000000000 | 279/1000 |
| root/ACP- | 219 | CRS+ | CER | none | S | 219:105 | 33634497131/125000000000 | 279/1000 |
| root/ACP- | 220 | CFQ+ | CFR | S | Q | 220:115 | 84567/125000 | 13857/20000 |
| root/ACP-/HEQ+ | 226 | HQR+ | FHR | none | Q | 226:179 | 6920348219/25000000000 | 279/1000 |
| root/ACP-/HEQ+ | 226 | HRS- | FHR | none | S | 226:179 | 6920348219/25000000000 | 279/1000 |
| root/ACP-/HEQ-/HRS-/ARS+ | 233 | AQR+ | AHR | S | Q | 233:53 | 84567/125000 | 13857/20000 |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+ | 239 | AEQ- | AER | S | Q | 239:37 | 84567/125000 | 13857/20000 |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+/BRS+ | 247 | BPR+ | ABR | S | P | 247:13 | 42993667/62500000 | 13857/20000 |
| root/ACP-/HEQ-/HRS-/ARS-/PQR+/PQS+/PRS+/BRS+ | 247 | BQR+ | ABR | S | Q | 247:13 | 42993667/62500000 | 13857/20000 |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+ | 259 | AQR- | APR | S | Q | 259:59 | 83441487/125000000 | 13857/20000 |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+ | 259 | FPQ- | FPR | S | Q | 259:181 | 7754975489/12500000000 | 13857/20000 |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS+/BRS+ | 263 | BPR+ | ABR | S | P | 263:13 | 42993667/62500000 | 13857/20000 |
| root/ACP-/HEQ-/HRS-/ARS-/PQR-/PQS-/PRS-/AQR+ | 272 | AEQ- | AER | S | Q | 272:37 | 84567/125000 | 13857/20000 |

## Coordinate continuations

| Metric scope | Address | Packet | Stages | Split coordinate | Cut | Has continuation | Forced-source forest | Forced-source node | Forced-source stage | Forced-source sign |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |


## Exact totals

| Object | Count |
| --- | --- |
| contexts | 121 |
| signNodes | 101 |
| signSplits | 50 |
| signLeaves | 51 |
| coordinateSplits | 0 |
| terminals | 51 |
| stages | 277 |
| boxStages | 272 |
| intervalSteps | 4725 |
| physicalFactors | 2010 |
| areaBounds | 27856 |
| areaUpdates | 17386 |
| scalarRelations | 3542 |
| linearFactors | 0 |
| linearWeights | 0 |
| linearTerminals | 0 |
| affineBounds | 0 |
| coordinateSources | 2643 |
| coordinateProducts | 7630 |
| coordinateMonomials | 7705 |
| coordinateShifted | 8368 |
| coordinateTerminals | 16 |
