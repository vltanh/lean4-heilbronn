# Fixed N6 IRRT proof index

The companion tables are literal parts of N6_IRRT.md. All rational values, polynomials, endpoint lines, identities, weights and sources are printed. No discovery program is a premise.

## Metadata

| Property | Value |
| --- | --- |
| Format | n6-irrt-fixed-v1 |
| Status | Complete fixed hand proof; independent geometric and exact arithmetic reviews passed |
| Threshold | 93/1000 |
| Locations | IRRT |
| Actual labels | ABCEFHPQRS |
| Variables | a, b, c, e, f, h, p, q, u, v, r, w, j, k |

## Original coordinate box

| Coordinate | Lower | Upper |
| --- | --- | --- |
| a | 30/163 | 119579/203000 |
| b | 1037/10000 | 203/897 |
| c | 93/250 | 609/1000 |
| e | 6940/8963 | 897/1000 |
| f | 1037/10000 | 1189441/2023000 |
| h | 6940/8963 | 1 |
| p | 15159/133000 | 907/1000 |
| q | 30/163 | 907/1000 |
| u | 10433441/20230000 | 1 |
| v | 7870/8963 | 1 |
| r | 23/25 | 1 |
| w | 30/163 | 71079/157000 |
| j | 381/550 | 9827/11000 |
| k | 4200330/16070659 | 458691/863500 |

## Initial actual signs

| Triple | Sign |
| --- | --- |
| ABC | + |
| ABE | + |
| ABF | + |
| ABH | + |
| ACE | + |
| ACF | + |
| ACH | + |
| AEF | + |
| AEH | + |
| AFH | + |
| BCE | + |
| BCF | + |
| BCH | + |
| BEF | + |
| BEH | + |
| BFH | + |
| CEF | + |
| CEH | + |
| CFH | + |
| EFH | + |
| ABP | + |
| ACP | + |
| AHP | - |
| BCP | + |
| BHP | - |
| CHP | - |
| ABQ | + |
| ACQ | + |
| AHQ | - |
| BCQ | + |
| BHQ | - |
| CHQ | - |
| ABR | + |
| ACR | + |
| AHR | - |
| BCR | + |
| BHR | - |
| CHR | - |
| ABS | + |
| ACS | + |
| AHS | - |
| BCS | + |
| BHS | - |
| CHS | - |
| EFP | + |
| EHP | + |
| FHP | + |
| EFR | + |
| EHR | + |
| FHR | + |
| EFS | + |
| EHS | + |
| FHS | + |
| EFQ | - |
| EHQ | - |
| FHQ | + |
| AEQ | + |
| AFQ | - |
| BEQ | + |
| BFQ | - |
| CEQ | + |
| CFQ | - |
| CEP | + |
| BEP | + |
| AER | - |
| AFR | - |
| BER | - |
| BFR | - |
| CER | - |
| CFR | - |
| AES | - |
| AFS | - |
| BES | - |
| BFS | - |
| CES | - |
| CFS | - |
| ERS | - |
| CRS | + |
| BRS | + |
| EQR | + |
| EQS | + |

## Exhaustive case tree

| Node | Kind | Actual-sign assumptions | Split | Table file |
| --- | --- | --- | --- | --- |
| r | split | none | PRS | none |
| rm | split | PRS- | APQ | none |
| rmm | split | PRS-, APQ- | ARS | none |
| rmmm | physical | PRS-, APQ-, ARS- | none | case_rmmm.md |
| rmmp | split | PRS-, APQ-, ARS+ | CFP | none |
| rmmpm | split | PRS-, APQ-, ARS+, CFP- | FPR | none |
| rmmpmm | linear | PRS-, APQ-, ARS+, CFP-, FPR- | none | case_rmmpmm.md |
| rmmpmp | physical | PRS-, APQ-, ARS+, CFP-, FPR+ | none | case_rmmpmp.md |
| rmmpp | physical | PRS-, APQ-, ARS+, CFP+ | none | case_rmmpp.md |
| rmp | split | PRS-, APQ+ | ARS | none |
| rmpm | physical | PRS-, APQ+, ARS- | none | case_rmpm.md |
| rmpp | area | PRS-, APQ+, ARS+ | none | case_rmpp.md |
| rp | split | PRS+ | APQ | none |
| rpm | split | PRS+, APQ- | CFP | none |
| rpmm | physical | PRS+, APQ-, CFP- | none | case_rpmm.md |
| rpmp | linear | PRS+, APQ-, CFP+ | none | case_rpmp.md |
| rpp | split | PRS+, APQ+ | ARS | none |
| rppm | geometry | PRS+, APQ+, ARS- | none | case_rppm.md |
| rppp | split | PRS+, APQ+, ARS+ | CFP | none |
| rpppm | split | PRS+, APQ+, ARS+, CFP- | AEP | none |
| rpppmm | linear | PRS+, APQ+, ARS+, CFP-, AEP- | none | case_rpppmm.md |
| rpppmp | physical | PRS+, APQ+, ARS+, CFP-, AEP+ | none | case_rpppmp.md |
| rpppp | split | PRS+, APQ+, ARS+, CFP+ | AEP | none |
| rppppm | area | PRS+, APQ+, ARS+, CFP+, AEP- | none | case_rppppm.md |
| rppppp | physical | PRS+, APQ+, ARS+, CFP+, AEP+ | none | case_rppppp.md |
