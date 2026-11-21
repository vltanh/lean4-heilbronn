# CB3_geom

```n7-central-cef-packet
{
  "id": "CB3_geom",
  "cell": "CB",
  "given": [
    "AGO-",
    "AGP+",
    "DGP-"
  ],
  "stages": [],
  "terminal": {
    "kind": "geometry",
    "stage": -1,
    "geometry": {
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": -1,
        "AGP": 1,
        "DGP": -1,
        "ACP": 1,
        "AOP": 1,
        "ACO": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "ADG": 1,
        "GHO": -1,
        "GOP": 1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHP": -1,
        "BOP": 1,
        "ADO": 1,
        "AEO": 1,
        "DOP": 1,
        "AFO": 1,
        "EGO": -1,
        "FGO": -1,
        "BDO": 1,
        "BEO": 1,
        "BFO": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "AEP": 1,
        "EGP": -1,
        "AFP": 1,
        "FGP": -1,
        "BDP": 1,
        "BEP": 1,
        "BFP": 1,
        "CFP": 1,
        "DFP": 1,
        "AEG": 1,
        "AFG": 1,
        "BEG": 1,
        "BFG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABGOP"
          ],
          "target": "AOP",
          "sign": 1,
          "deps": [
            "ABG",
            "ABO",
            "AGP",
            "ABP",
            "AGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACOP"
          ],
          "target": "GOP",
          "sign": 1,
          "deps": [
            "ACG",
            "AGO",
            "CGP",
            "AGP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OABCP"
          ],
          "target": "BOP",
          "sign": 1,
          "deps": [
            "ABO",
            "COP",
            "ACO",
            "AOP",
            "BCO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OACEP"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ACO",
            "EOP",
            "COP",
            "AOP",
            "CEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OADEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "ADO",
            "EOP",
            "AEO",
            "AOP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OAEFP"
          ],
          "target": "AFO",
          "sign": 1,
          "deps": [
            "AEO",
            "FOP",
            "EOP",
            "AOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OAEGP"
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "AEO",
            "GOP",
            "AGO",
            "EOP",
            "AOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OAFGP"
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "AFO",
            "GOP",
            "AGO",
            "FOP",
            "AOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCEG"
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "EGO",
            "CGO",
            "BGO",
            "CEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBEFG"
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BEO",
            "FGO",
            "EGO",
            "BGO",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFG"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FGO",
            "EGO",
            "CGO",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFG"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FGO",
            "EGO",
            "DGO",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PACDO"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DOP",
            "COP",
            "AOP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PACEO"
          ],
          "target": "AEP",
          "sign": 1,
          "deps": [
            "ACP",
            "EOP",
            "COP",
            "AOP",
            "CEP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PADEG"
          ],
          "target": "EGP",
          "sign": -1,
          "deps": [
            "ADP",
            "AEP",
            "DGP",
            "AGP",
            "DEP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PAEFO"
          ],
          "target": "AFP",
          "sign": 1,
          "deps": [
            "AEP",
            "FOP",
            "EOP",
            "AOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PAFGH"
          ],
          "target": "FGP",
          "sign": -1,
          "deps": [
            "AFP",
            "GHP",
            "AGP",
            "FHP",
            "AHP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDO"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DOP",
            "COP",
            "BOP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCEO"
          ],
          "target": "BEP",
          "sign": 1,
          "deps": [
            "BCP",
            "EOP",
            "COP",
            "BOP",
            "CEP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBEFO"
          ],
          "target": "BFP",
          "sign": 1,
          "deps": [
            "BEP",
            "FOP",
            "EOP",
            "BOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFG"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FGP",
            "EGP",
            "CGP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABEGO"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABE",
            "AGO",
            "ABG",
            "AEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABFGO"
          ],
          "target": "AFG",
          "sign": 1,
          "deps": [
            "ABF",
            "AGO",
            "ABG",
            "AFO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAFGO"
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "ABF",
            "BGO",
            "ABG",
            "BFO",
            "ABO"
          ],
          "area_stage": null
        }
      ],
      "contradiction": {
        "kind": "nomesh",
        "outer": "AFH",
        "points": "GOP"
      },
      "mesh_table": [
        {
          "order": "GOP",
          "opposite": "APO"
        },
        {
          "order": "GPO",
          "opposite": "FGO"
        },
        {
          "order": "OGP",
          "opposite": "APG"
        },
        {
          "order": "OPG",
          "opposite": "AGO"
        },
        {
          "order": "PGO",
          "opposite": "FPO"
        },
        {
          "order": "POG",
          "opposite": "AGO"
        }
      ]
    }
  },
  "word": "CEF"
}
```
