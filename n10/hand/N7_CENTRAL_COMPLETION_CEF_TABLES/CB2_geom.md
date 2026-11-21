# CB2_geom

```n7-central-cef-packet
{
  "id": "CB2_geom",
  "cell": "CB",
  "given": [
    "AGO-",
    "AGP-",
    "DGP+",
    "AFG-"
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
        "AGP": -1,
        "DGP": 1,
        "AFG": -1,
        "AFO": -1,
        "AFP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "FGO": 1,
        "FGP": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "AOP": -1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "DHP": 1,
        "BEG": 1,
        "BEO": 1,
        "AEO": -1,
        "AEP": -1,
        "BFG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABFGO"
          ],
          "target": "AFO",
          "sign": -1,
          "deps": [
            "ABF",
            "AGO",
            "ABG",
            "ABO",
            "AFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABFGP"
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "ABF",
            "AGP",
            "ABG",
            "ABP",
            "AFG"
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
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
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
            "GACFO"
          ],
          "target": "FGO",
          "sign": 1,
          "deps": [
            "ACG",
            "AFG",
            "CGO",
            "AGO",
            "CFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "ACG",
            "AFG",
            "CGP",
            "AGP",
            "CFG"
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
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
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
            "OAFGP"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AFO",
            "GOP",
            "AGO",
            "FOP",
            "FGO"
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
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PACFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "ACP",
            "FOP",
            "AFP",
            "COP",
            "AOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCDEF"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "CDP",
            "EFP",
            "CEP",
            "CFP",
            "DEP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "GP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "BCG",
            "CEG",
            "BCP",
            "CEP",
            "EGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "GO",
            "AEF",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AEO",
          "sign": -1,
          "deps": [
            "EFG",
            "AFG",
            "EFO",
            "AFO",
            "AGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "GP",
            "AEF",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "EFG",
            "AFG",
            "EFP",
            "AFP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BEF",
            "GO",
            "FBE",
            [
              "HCF2-BEF-cap1"
            ]
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "BEG",
            "EFG",
            "BEO",
            "EFO",
            "FGO"
          ],
          "area_stage": null
        }
      ],
      "contradiction": {
        "kind": "nomesh",
        "outer": "ACF",
        "points": "GOP"
      },
      "mesh_table": [
        {
          "order": "GOP",
          "opposite": "CGP"
        },
        {
          "order": "GPO",
          "opposite": "AOP"
        },
        {
          "order": "OGP",
          "opposite": "CGP"
        },
        {
          "order": "OPG",
          "opposite": "AGP"
        },
        {
          "order": "PGO",
          "opposite": "CPO"
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
