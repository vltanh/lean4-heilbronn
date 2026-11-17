# CB_+-+_AEG+

```n7-central-e-only-packet
{
  "id": "CB_+-+_AEG+",
  "cell": "CB",
  "given": [
    "AGO+",
    "AGP-",
    "DGP+",
    "AEG+"
  ],
  "stages": [
    {
      "id": 0,
      "initial_box": {
        "low": [
          "61/500",
          "123/1000",
          "541/1000",
          "61/500",
          "57/100",
          "123/1000",
          "123/1000",
          "613/1000",
          "67/500",
          "7347/69700",
          "61/500",
          "7347/69700",
          "61/500"
        ],
        "high": [
          "137/200",
          "279/1000",
          "883/1000",
          "141/200",
          "907/1000",
          "279/1000",
          "137/200",
          "1",
          "31/40",
          "883/1000",
          "907/1000",
          "883/1000",
          "907/1000"
        ]
      },
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
        "AGO": 1,
        "AGP": -1,
        "DGP": 1,
        "COP": -1,
        "EOP": 1,
        "FOP": -1,
        "AEG": 1,
        "ACO": 1,
        "ADG": 1,
        "ADO": 1,
        "AEO": 1,
        "AOP": -1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "BDO": 1,
        "DOP": 1,
        "BEG": 1,
        "BEO": 1,
        "DFG": 1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "EGO": -1,
        "GHP": -1,
        "GOP": -1,
        "EGP": 1,
        "FGP": 1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "BOP": -1,
        "AFO": -1,
        "FGO": 1,
        "BFO": -1,
        "CFO": -1,
        "AFP": -1,
        "BFP": -1,
        "DHP": 1,
        "CFP": -1,
        "DFP": 1,
        "AFG": -1,
        "AEP": -1,
        "BEP": -1,
        "EHO": 1,
        "BFG": -1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABDEG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AEG",
            "ABE",
            "ABG",
            "ADE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABDGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ABD",
            "AGO",
            "ABG",
            "ABO",
            "ADG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABEGO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "AGO",
            "ABG",
            "ABO",
            "AEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABGOP"
          ],
          "target": "AOP",
          "sign": -1,
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "CDO",
            "ACD",
            "ADO",
            "BCD"
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
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCO"
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "ABE",
            "CEO",
            "ACE",
            "AEO",
            "BCE"
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEO"
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGO",
            "AGO",
            "CEG"
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
            "GACOP"
          ],
          "target": "GOP",
          "sign": -1,
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
            "GADEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "ADG",
            "AEG",
            "DGP",
            "AGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
            "DFG"
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
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
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
          "sign": -1,
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
            "OAEFP"
          ],
          "target": "AFO",
          "sign": -1,
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
            "OAFGP"
          ],
          "target": "FGO",
          "sign": 1,
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
            "OBEFP"
          ],
          "target": "BFO",
          "sign": -1,
          "deps": [
            "BEO",
            "FOP",
            "EOP",
            "BOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": -1,
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
            "PAFGO"
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "GOP",
            "AGP",
            "FOP",
            "AOP",
            "FGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBFGO"
          ],
          "target": "BFP",
          "sign": -1,
          "deps": [
            "GOP",
            "BGP",
            "FOP",
            "BOP",
            "FGP"
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
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": -1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
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
            "ABFGO"
          ],
          "target": "AFG",
          "sign": -1,
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
            "CEF2-E-only-AEP-transfer"
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "COP",
            "EOP",
            "FOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "CEF2-E-only-ABEF-quad-transfer"
          ],
          "target": "BEP",
          "sign": -1,
          "deps": [
            "COP",
            "EOP",
            "FOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "HEF",
            [],
            "O",
            [
              "CEF2-HEF-empty"
            ]
          ],
          "target": "EHO",
          "sign": 1,
          "deps": [
            "EFO",
            "FHO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "BFH",
            [],
            "G",
            [
              "CEF2-BFH-empty"
            ]
          ],
          "target": "BFG",
          "sign": -1,
          "deps": [
            "FGH",
            "BGH"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_ABC": {
          "triangle": "ABC",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABC",
            "points": []
          }
        },
        "L_ABF": {
          "triangle": "ABF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABF",
            "points": []
          }
        },
        "L_ABG": {
          "triangle": "ABG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABG",
            "points": []
          }
        },
        "L_ABH": {
          "triangle": "ABH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABH",
            "points": []
          }
        },
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G"
            ]
          }
        },
        "L_AEF": {
          "triangle": "AEF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEF",
            "points": [
              "G",
              "O"
            ]
          }
        },
        "L_AEG": {
          "triangle": "AEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEG",
            "points": []
          }
        },
        "L_AEH": {
          "triangle": "AEH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEH",
            "points": [
              "G",
              "O"
            ]
          }
        },
        "L_AEO": {
          "triangle": "AEO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEO",
            "points": [
              "G"
            ]
          }
        },
        "L_AFG": {
          "triangle": "AFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FAG",
            "points": []
          }
        },
        "L_AFH": {
          "triangle": "AFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AFH",
            "points": []
          }
        },
        "L_AFO": {
          "triangle": "AFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FAO",
            "points": []
          }
        },
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGO",
            "points": []
          }
        },
        "L_AGP": {
          "triangle": "AGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAP",
            "points": []
          }
        },
        "L_AHO": {
          "triangle": "AHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAO",
            "points": []
          }
        },
        "L_AOP": {
          "triangle": "AOP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OAP",
            "points": [
              "G"
            ]
          }
        },
        "L_BCE": {
          "triangle": "BCE",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCE",
            "points": [
              "P"
            ]
          }
        },
        "L_BCF": {
          "triangle": "BCF",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCF",
            "points": [
              "G"
            ]
          }
        },
        "L_BEF": {
          "triangle": "BEF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "BEF",
            "points": [
              "G",
              "O"
            ]
          }
        },
        "L_BEH": {
          "triangle": "BEH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "BEH",
            "points": [
              "G",
              "O"
            ]
          }
        },
        "L_BEP": {
          "triangle": "BEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EBP",
            "points": []
          }
        },
        "L_BFG": {
          "triangle": "BFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FBG",
            "points": []
          }
        },
        "L_CEF": {
          "triangle": "CEF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEF",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CEG": {
          "triangle": "CEG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEG",
            "points": [
              "P"
            ]
          }
        },
        "L_CEH": {
          "triangle": "CEH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CEO": {
          "triangle": "CEO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEO",
            "points": [
              "P"
            ]
          }
        },
        "L_CEP": {
          "triangle": "CEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEP",
            "points": []
          }
        },
        "L_CFH": {
          "triangle": "CFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": []
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FCO",
            "points": []
          }
        },
        "L_CFP": {
          "triangle": "CFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FCP",
            "points": []
          }
        },
        "L_CGH": {
          "triangle": "CGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCH",
            "points": []
          }
        },
        "L_CGO": {
          "triangle": "CGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
            "points": []
          }
        },
        "L_CGP": {
          "triangle": "CGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCP",
            "points": []
          }
        },
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OCP",
            "points": []
          }
        },
        "L_DEG": {
          "triangle": "DEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEG",
            "points": []
          }
        },
        "L_DEP": {
          "triangle": "DEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEP",
            "points": []
          }
        },
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DGP",
            "points": []
          }
        },
        "L_EFG": {
          "triangle": "EFG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFG",
            "points": [
              "O"
            ]
          }
        },
        "L_EFH": {
          "triangle": "EFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFH",
            "points": []
          }
        },
        "L_EFO": {
          "triangle": "EFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFO",
            "points": []
          }
        },
        "L_EGO": {
          "triangle": "EGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEO",
            "points": []
          }
        },
        "L_EHO": {
          "triangle": "EHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EHO",
            "points": []
          }
        },
        "L_EOP": {
          "triangle": "EOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EOP",
            "points": []
          }
        },
        "L_FGH": {
          "triangle": "FGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GFH",
            "points": []
          }
        },
        "L_FGO": {
          "triangle": "FGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGO",
            "points": []
          }
        },
        "L_FHO": {
          "triangle": "FHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHO",
            "points": []
          }
        },
        "L_FHP": {
          "triangle": "FHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHP",
            "points": []
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OFP",
            "points": []
          }
        },
        "U_ABF": {
          "triangle": "ABF",
          "side": "hi",
          "value": "279/1000",
          "witness": {
            "kind": "cap",
            "cap": "ABF",
            "value": "279/1000"
          }
        },
        "U_ABH": {
          "triangle": "ABH",
          "side": "hi",
          "value": "122481/500000",
          "witness": {
            "kind": "vertices",
            "signed": "ABH",
            "used": [
              0,
              1,
              7
            ],
            "values": [
              "-2511/125000",
              "-1107/125000",
              "7749/200000",
              "60393/1000000",
              "17577/200000",
              "53997/500000",
              "136989/1000000",
              "122481/500000"
            ],
            "cell": "CB"
          }
        },
        "U_ACE": {
          "triangle": "ACE",
          "side": "hi",
          "value": "440513/500000",
          "witness": {
            "kind": "vertices",
            "signed": "ACE",
            "used": [
              0,
              2,
              4
            ],
            "values": [
              "22773/62500",
              "32349/62500",
              "109337/200000",
              "116691/200000",
              "124557/200000",
              "402551/500000",
              "163031/200000",
              "440513/500000"
            ],
            "cell": "CB"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "25291/31250",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "25467/100000",
              "36153/100000",
              "453/1250",
              "23463/50000",
              "122501/250000",
              "127259/250000",
              "19757/25000",
              "25291/31250"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "51431/62500",
          "witness": {
            "kind": "cap",
            "cap": "AEF",
            "value": "51431/62500"
          }
        },
        "U_AEH": {
          "triangle": "AEH",
          "side": "hi",
          "value": "439/500",
          "witness": {
            "kind": "vertices",
            "signed": "AEH",
            "used": [
              0,
              4,
              7
            ],
            "values": [
              "-9/125",
              "63/200",
              "491/1000",
              "439/500"
            ],
            "cell": "CB"
          }
        },
        "U_AFH": {
          "triangle": "AFH",
          "side": "hi",
          "value": "122481/500000",
          "witness": {
            "kind": "vertices",
            "signed": "AFH",
            "used": [
              0,
              5,
              7
            ],
            "values": [
              "-2511/125000",
              "-1107/125000",
              "7749/200000",
              "60393/1000000",
              "17577/200000",
              "53997/500000",
              "136989/1000000",
              "122481/500000"
            ],
            "cell": "CB"
          }
        },
        "U_BCE": {
          "triangle": "BCE",
          "side": "hi",
          "value": "17233/25000",
          "witness": {
            "kind": "vertices",
            "signed": "BCE",
            "used": [
              1,
              2,
              4
            ],
            "values": [
              "7467/50000",
              "118817/500000",
              "11913/50000",
              "8607/25000",
              "189563/500000",
              "1083/2500",
              "136957/250000",
              "17233/25000"
            ],
            "cell": "CB"
          }
        },
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "19/25",
          "witness": {
            "kind": "vertices",
            "signed": "BCF",
            "used": [
              1,
              2,
              5
            ],
            "values": [
              "131/500",
              "209/500",
              "151/250",
              "19/25"
            ],
            "cell": "CB"
          }
        },
        "U_BCH": {
          "triangle": "BCH",
          "side": "hi",
          "value": "19/25",
          "witness": {
            "kind": "vertices",
            "signed": "BCH",
            "used": [
              1,
              2,
              7
            ],
            "values": [
              "80303/500000",
              "128117/500000",
              "131/500",
              "92563/250000",
              "209/500",
              "11647/25000",
              "151/250",
              "19/25"
            ],
            "cell": "CB"
          }
        },
        "U_BEF": {
          "triangle": "BEF",
          "side": "hi",
          "value": "877/1000",
          "witness": {
            "kind": "vertices",
            "signed": "BEF",
            "used": [
              1,
              4,
              5
            ],
            "values": [
              "721/1000",
              "183877/250000",
              "9851/12500",
              "2531/3125",
              "215623/250000",
              "877/1000"
            ],
            "cell": "CB"
          }
        },
        "U_BEH": {
          "triangle": "BEH",
          "side": "hi",
          "value": "988561/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "BEH",
            "used": [
              1,
              4,
              7
            ],
            "values": [
              "601003/1000000",
              "607711/1000000",
              "324581/500000",
              "347513/500000",
              "88003/100000",
              "94711/100000",
              "974053/1000000",
              "988561/1000000"
            ],
            "cell": "CB"
          }
        },
        "U_CDF": {
          "triangle": "CDF",
          "side": "hi",
          "value": "75369/100000",
          "witness": {
            "kind": "vertices",
            "signed": "CDF",
            "used": [
              2,
              3,
              5
            ],
            "values": [
              "5959/31250",
              "5243/25000",
              "122741/250000",
              "127499/250000",
              "27141/50000",
              "64371/100000",
              "408/625",
              "75369/100000"
            ],
            "cell": "CB"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "419063/500000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "2883/6250",
              "2751/5000",
              "30417/50000",
              "166207/250000",
              "348317/500000",
              "34863/50000",
              "10079/12500",
              "419063/500000"
            ],
            "cell": "CB"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "949687/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "575031/1000000",
              "589737/1000000",
              "62031/100000",
              "76737/100000",
              "386027/500000",
              "436301/500000",
              "917881/1000000",
              "949687/1000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "56554171/69700000",
          "witness": {
            "kind": "vertices",
            "signed": "CEO",
            "used": [
              2,
              4,
              9,
              10
            ],
            "values": [
              "-63549/250000",
              "-69471/500000",
              "7137/500000",
              "106119/1000000",
              "221373/1000000",
              "53021649/174250000",
              "62880431/139400000",
              "79719537/174250000",
              "382894113/697000000",
              "463226151/697000000",
              "100305149/139400000",
              "56554171/69700000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "13857/20000",
          "witness": {
            "kind": "cap",
            "cap": "EFG",
            "value": "13857/20000"
          }
        },
        "U_EFP": {
          "triangle": "EFP",
          "side": "hi",
          "value": "135491603/174250000",
          "witness": {
            "kind": "vertices",
            "signed": "EFP",
            "used": [
              4,
              5,
              11,
              12
            ],
            "values": [
              "-245239/1000000",
              "-192667/1000000",
              "10881/1000000",
              "5798829/69700000",
              "62120247/697000000",
              "98762931/697000000",
              "186659/500000",
              "221603/500000",
              "288433/500000",
              "90495967/139400000",
              "349663/500000",
              "123313619/174250000",
              "107566891/139400000",
              "135491603/174250000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "0": {
          "row": [
            "fan",
            "ACE",
            "ACP",
            "CEP",
            "AEP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACE",
            "point": "P"
          }
        },
        "1": {
          "row": [
            "fan",
            "ACF",
            "ACG",
            "CFG",
            "AFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACF",
            "point": "G"
          }
        },
        "2": {
          "row": [
            "fan",
            "ACH",
            "ACG",
            "CGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACH",
            "point": "G"
          }
        },
        "3": {
          "row": [
            "fan",
            "ACO",
            "ACG",
            "CGO",
            "AGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "G"
          }
        },
        "7": {
          "row": [
            "fan",
            "AEF",
            "AEG",
            "EFG",
            "AFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEF",
            "point": "G"
          }
        },
        "8": {
          "row": [
            "fan",
            "AEF",
            "AEO",
            "EFO",
            "AFO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEF",
            "point": "O"
          }
        },
        "10": {
          "row": [
            "fan",
            "AEH",
            "AEO",
            "EHO",
            "AHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEH",
            "point": "O"
          }
        },
        "11": {
          "row": [
            "fan",
            "AEO",
            "AEG",
            "EGO",
            "AGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEO",
            "point": "G"
          }
        },
        "12": {
          "row": [
            "fan",
            "AFP",
            "AFG",
            "AGP",
            "FGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FAP",
            "point": "G"
          }
        },
        "16": {
          "row": [
            "fan",
            "BCF",
            "BCG",
            "CFG",
            "BFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCF",
            "point": "G"
          }
        },
        "17": {
          "row": [
            "fan",
            "BCH",
            "BCG",
            "CGH",
            "BGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCH",
            "point": "G"
          }
        },
        "20": {
          "row": [
            "fan",
            "BEF",
            "BEG",
            "EFG",
            "BFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BEF",
            "point": "G"
          }
        },
        "30": {
          "row": [
            "fan",
            "CEF",
            "CEO",
            "EFO",
            "CFO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CEF",
            "point": "O"
          }
        },
        "31": {
          "row": [
            "fan",
            "CEF",
            "CEP",
            "EFP",
            "CFP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CEF",
            "point": "P"
          }
        },
        "32": {
          "row": [
            "fan",
            "CEG",
            "CEP",
            "EGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CEG",
            "point": "P"
          }
        },
        "33": {
          "row": [
            "fan",
            "CEH",
            "CEO",
            "EHO",
            "CHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CEH",
            "point": "O"
          }
        },
        "35": {
          "row": [
            "fan",
            "CEO",
            "CEP",
            "EOP",
            "COP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CEO",
            "point": "P"
          }
        },
        "36": {
          "row": [
            "fan",
            "EFG",
            "EFO",
            "FGO",
            "EGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "EFG",
            "point": "O"
          }
        },
        "37": {
          "row": [
            "fan",
            "EFP",
            "EFO",
            "FOP",
            "EOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "EFP",
            "point": "O"
          }
        },
        "38": {
          "row": [
            "fan",
            "EGH",
            "EGO",
            "EHO",
            "GHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GEH",
            "point": "O"
          }
        },
        "47": {
          "row": [
            "plu",
            "ABE",
            "ACH",
            "ABC",
            "AEH",
            "ABH",
            "ACE"
          ],
          "witness": {
            "kind": "plu",
            "word": "ABCEH"
          }
        },
        "70": {
          "row": [
            "plu",
            "ABG",
            "AEF",
            "ABE",
            "AFG",
            "ABF",
            "AEG"
          ],
          "witness": {
            "kind": "plu",
            "word": "ABEFG"
          }
        },
        "131": {
          "row": [
            "plu",
            "AEO",
            "AFG",
            "AEF",
            "AGO",
            "AEG",
            "AFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "AEFGO"
          }
        },
        "150": {
          "row": [
            "plu",
            "ABE",
            "BCF",
            "ABC",
            "BEF",
            "ABF",
            "BCE"
          ],
          "witness": {
            "kind": "plu",
            "word": "BACEF"
          }
        },
        "152": {
          "row": [
            "plu",
            "ABE",
            "BCH",
            "ABC",
            "BEH",
            "ABH",
            "BCE"
          ],
          "witness": {
            "kind": "plu",
            "word": "BACEH"
          }
        },
        "275": {
          "row": [
            "plu",
            "ACP",
            "CEO",
            "ACE",
            "COP",
            "ACO",
            "CEP"
          ],
          "witness": {
            "kind": "plu",
            "word": "CAEOP"
          }
        },
        "341": {
          "row": [
            "plu",
            "CEH",
            "CFG",
            "CEF",
            "CGH",
            "CEG",
            "CFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "CEFGH"
          }
        },
        "346": {
          "row": [
            "plu",
            "CEO",
            "CFP",
            "CEF",
            "COP",
            "CEP",
            "CFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "CEFOP"
          }
        },
        "415": {
          "row": [
            "plu",
            "ACE",
            "BEF",
            "ABE",
            "CEF",
            "AEF",
            "BCE"
          ],
          "witness": {
            "kind": "plu",
            "word": "EABCF"
          }
        },
        "428": {
          "row": [
            "plu",
            "AEP",
            "BEF",
            "ABE",
            "EFP",
            "AEF",
            "BEP"
          ],
          "witness": {
            "kind": "plu",
            "word": "EABFP"
          }
        },
        "442": {
          "row": [
            "plu",
            "AEF",
            "CEO",
            "ACE",
            "EFO",
            "AEO",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "EACFO"
          }
        },
        "463": {
          "row": [
            "plu",
            "AEH",
            "EFO",
            "AEF",
            "EHO",
            "AEO",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "EAFHO"
          }
        },
        "465": {
          "row": [
            "plu",
            "AEF",
            "EOP",
            "AEO",
            "EFP",
            "AEP",
            "EFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "EAFOP"
          }
        },
        "571": {
          "row": [
            "plu",
            "AFO",
            "CFH",
            "ACF",
            "FHO",
            "AFH",
            "CFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FACHO"
          }
        },
        "589": {
          "row": [
            "plu",
            "AFO",
            "FHP",
            "AFH",
            "FOP",
            "AFP",
            "FHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FAHOP"
          }
        },
        "626": {
          "row": [
            "plu",
            "CFH",
            "EFG",
            "CEF",
            "FGH",
            "CFG",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCEGH"
          }
        },
        "631": {
          "row": [
            "plu",
            "CFO",
            "EFP",
            "CEF",
            "FOP",
            "CFP",
            "EFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCEOP"
          }
        },
        "885": {
          "row": [
            "plu",
            "AHO",
            "EFO",
            "AEO",
            "FHO",
            "AFO",
            "EHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OAEFH"
          }
        },
        "886": {
          "row": [
            "plu",
            "AFO",
            "EOP",
            "AEO",
            "FOP",
            "AOP",
            "EFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OAEFP"
          }
        },
        "1029": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-433997/500000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "433997/500000"
          }
        },
        "1060": {
          "row": [
            "linear",
            {
              "ABE": "-1",
              "AEF": "-1"
            },
            "-1"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABEF",
            "container": "ABEF",
            "cap": "1"
          }
        },
        "1461": {
          "row": [
            "linear",
            {
              "CEF": "-1",
              "CFH": "-1"
            },
            "-1"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "CEFH",
            "container": "HCEF",
            "cap": "1"
          }
        },
        "2088": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CFG"
              ],
              [
                1,
                "ABG",
                "CEF"
              ],
              [
                -1,
                "ACF",
                "BEG"
              ],
              [
                1,
                "AEG",
                "BCF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "G",
            "line": "CF"
          }
        },
        "2089": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CGH"
              ],
              [
                1,
                "ABG",
                "CEH"
              ],
              [
                -1,
                "ACH",
                "BEG"
              ],
              [
                1,
                "AEG",
                "BCH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "G",
            "line": "CH"
          }
        },
        "2353": {
          "row": [
            "balance",
            [
              [
                1,
                "ACE",
                "FHO"
              ],
              [
                1,
                "ACH",
                "EFO"
              ],
              [
                1,
                "AEH",
                "CFO"
              ],
              [
                -1,
                "AFO",
                "CEH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACE",
            "point": "H",
            "line": "FO"
          }
        },
        "2608": {
          "row": [
            "balance",
            [
              [
                1,
                "ABC",
                "EFG"
              ],
              [
                -1,
                "AEF",
                "BCG"
              ],
              [
                1,
                "AEG",
                "BCF"
              ],
              [
                1,
                "AFG",
                "BCE"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEF",
            "point": "G",
            "line": "BC"
          }
        },
        "2622": {
          "row": [
            "balance",
            [
              [
                1,
                "ABG",
                "EFH"
              ],
              [
                -1,
                "AEF",
                "BGH"
              ],
              [
                1,
                "AEH",
                "BFG"
              ],
              [
                1,
                "AFH",
                "BEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEF",
            "point": "H",
            "line": "BG"
          }
        },
        "2626": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "EFH"
              ],
              [
                1,
                "AEF",
                "CGH"
              ],
              [
                -1,
                "AEH",
                "CFG"
              ],
              [
                1,
                "AFH",
                "CEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEF",
            "point": "H",
            "line": "CG"
          }
        },
        "2627": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "EFH"
              ],
              [
                -1,
                "AEF",
                "CHO"
              ],
              [
                1,
                "AEH",
                "CFO"
              ],
              [
                1,
                "AFH",
                "CEO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEF",
            "point": "H",
            "line": "CO"
          }
        },
        "2630": {
          "row": [
            "balance",
            [
              [
                1,
                "AEF",
                "GHO"
              ],
              [
                -1,
                "AEH",
                "FGO"
              ],
              [
                -1,
                "AFH",
                "EGO"
              ],
              [
                -1,
                "AGO",
                "EFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEF",
            "point": "H",
            "line": "GO"
          }
        },
        "2677": {
          "row": [
            "balance",
            [
              [
                1,
                "ACH",
                "EGO"
              ],
              [
                -1,
                "AEG",
                "CHO"
              ],
              [
                -1,
                "AEO",
                "CGH"
              ],
              [
                -1,
                "AGO",
                "CEH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEG",
            "point": "O",
            "line": "CH"
          }
        },
        "2700": {
          "row": [
            "balance",
            [
              [
                1,
                "ACF",
                "EHO"
              ],
              [
                1,
                "AEH",
                "CFO"
              ],
              [
                1,
                "AEO",
                "CFH"
              ],
              [
                -1,
                "AHO",
                "CEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEH",
            "point": "O",
            "line": "CF"
          }
        },
        "2705": {
          "row": [
            "balance",
            [
              [
                1,
                "AEH",
                "FOP"
              ],
              [
                1,
                "AEO",
                "FHP"
              ],
              [
                1,
                "AFP",
                "EHO"
              ],
              [
                -1,
                "AHO",
                "EFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEH",
            "point": "O",
            "line": "FP"
          }
        },
        "2917": {
          "row": [
            "balance",
            [
              [
                1,
                "ABG",
                "CEF"
              ],
              [
                -1,
                "ACG",
                "BEF"
              ],
              [
                1,
                "AEG",
                "BCF"
              ],
              [
                1,
                "AFG",
                "BCE"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCE",
            "point": "F",
            "line": "AG"
          }
        },
        "3577": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "EFO"
              ],
              [
                1,
                "AEG",
                "CFO"
              ],
              [
                -1,
                "AFG",
                "CEO"
              ],
              [
                1,
                "AGO",
                "CEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEF",
            "point": "O",
            "line": "AG"
          }
        },
        "3585": {
          "row": [
            "balance",
            [
              [
                1,
                "CEF",
                "GHO"
              ],
              [
                -1,
                "CEO",
                "FGH"
              ],
              [
                -1,
                "CFO",
                "EGH"
              ],
              [
                -1,
                "CGH",
                "EFO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEF",
            "point": "O",
            "line": "GH"
          }
        },
        "3611": {
          "row": [
            "balance",
            [
              [
                1,
                "CEG",
                "FHP"
              ],
              [
                -1,
                "CEH",
                "FGP"
              ],
              [
                1,
                "CFP",
                "EGH"
              ],
              [
                1,
                "CGH",
                "EFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEG",
            "point": "H",
            "line": "FP"
          }
        },
        "3641": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "EHO"
              ],
              [
                1,
                "AEG",
                "CHO"
              ],
              [
                -1,
                "AGH",
                "CEO"
              ],
              [
                1,
                "AGO",
                "CEH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEH",
            "point": "O",
            "line": "AG"
          }
        },
        "3675": {
          "row": [
            "balance",
            [
              [
                1,
                "ACE",
                "FGH"
              ],
              [
                1,
                "AEF",
                "CGH"
              ],
              [
                1,
                "AEG",
                "CFH"
              ],
              [
                -1,
                "AEH",
                "CFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "H",
            "line": "AE"
          }
        },
        "3688": {
          "row": [
            "balance",
            [
              [
                1,
                "ACE",
                "FGO"
              ],
              [
                -1,
                "AEF",
                "CGO"
              ],
              [
                1,
                "AEG",
                "CFO"
              ],
              [
                1,
                "AEO",
                "CFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "O",
            "line": "AE"
          }
        },
        "3713": {
          "row": [
            "balance",
            [
              [
                1,
                "ACE",
                "FHO"
              ],
              [
                -1,
                "AEF",
                "CHO"
              ],
              [
                1,
                "AEH",
                "CFO"
              ],
              [
                1,
                "AEO",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFH",
            "point": "O",
            "line": "AE"
          }
        },
        "3865": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "EGP"
              ],
              [
                -1,
                "CEF",
                "DGP"
              ],
              [
                -1,
                "CFG",
                "DEP"
              ],
              [
                -1,
                "CFP",
                "DEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DEG",
            "point": "P",
            "line": "CF"
          }
        },
        "4994": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "CEH": "253/500",
              "CHO": "-439/500"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "AEH",
            "point": "O",
            "line": "CH",
            "side": "lower",
            "outer_upper": {
              "triangle": "AEH",
              "ref": "U_AEH",
              "value": "439/500"
            },
            "fan_lower": [
              {
                "triangle": "EHO",
                "ref": "L_EHO",
                "value": "93/1000"
              },
              {
                "triangle": "AHO",
                "ref": "L_AHO",
                "value": "93/1000"
              },
              {
                "triangle": "AEO",
                "ref": "L_AEO",
                "value": "279/1000"
              }
            ],
            "residual": "413/1000"
          }
        },
        "6529": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AEG": "-93/1000",
              "AFG": "326063/500000",
              "AGO": "-419063/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "O",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "CEF",
              "ref": "U_CEF",
              "value": "419063/500000"
            },
            "fan_lower": [
              {
                "triangle": "EFO",
                "ref": "L_EFO",
                "value": "93/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              },
              {
                "triangle": "CEO",
                "ref": "L_CEO",
                "value": "279/1000"
              }
            ],
            "residual": "186563/500000"
          }
        },
        "7000": {
          "row": [
            "linear",
            {
              "CFO": "43589971/69700000",
              "EFO": "-93/1000",
              "FOP": "-56554171/69700000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "FO",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "56554171/69700000"
            },
            "fan_lower": [
              {
                "triangle": "EOP",
                "ref": "L_EOP",
                "value": "93/1000"
              },
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "CEP",
                "ref": "L_CEP",
                "value": "93/1000"
              }
            ],
            "residual": "37107871/69700000"
          }
        },
        "7025": {
          "row": [
            "linear",
            {
              "AEG": "-93/1000",
              "AFG": "10137/20000",
              "AGO": "-13857/20000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "O",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "13857/20000"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "EGO",
                "ref": "L_EGO",
                "value": "93/1000"
              },
              {
                "triangle": "EFO",
                "ref": "L_EFO",
                "value": "93/1000"
              }
            ],
            "residual": "8277/20000"
          }
        },
        "7135": {
          "row": [
            "linear",
            {
              "CEP": "-93/1000",
              "CFP": "103081103/174250000",
              "COP": "-135491603/174250000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFP",
            "point": "O",
            "line": "CP",
            "side": "upper",
            "outer_upper": {
              "triangle": "EFP",
              "ref": "U_EFP",
              "value": "135491603/174250000"
            },
            "fan_lower": [
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "EOP",
                "ref": "L_EOP",
                "value": "93/1000"
              },
              {
                "triangle": "EFO",
                "ref": "L_EFO",
                "value": "93/1000"
              }
            ],
            "residual": "86875853/174250000"
          }
        }
      },
      "updates": [
        {
          "id": "T0016",
          "relation": 7,
          "rule": "sub",
          "triangle": "EFG",
          "side": "hi",
          "value": "19903/31250",
          "sources": [
            "U_AEF",
            "L_AEG",
            "L_AFG"
          ]
        },
        {
          "id": "T0018",
          "relation": 8,
          "rule": "sub",
          "triangle": "AEO",
          "side": "hi",
          "value": "19903/31250",
          "sources": [
            "U_AEF",
            "L_EFO",
            "L_AFO"
          ]
        },
        {
          "id": "T0020",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "28181/62500",
          "sources": [
            "U_AEF",
            "L_AEO",
            "L_EFO"
          ]
        },
        {
          "id": "T0056",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "326063/500000",
          "sources": [
            "U_CEF",
            "L_EFO",
            "L_CFO"
          ]
        },
        {
          "id": "T0059",
          "relation": 31,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "326063/500000",
          "sources": [
            "U_CEF",
            "L_CEP",
            "L_CFP"
          ]
        },
        {
          "id": "T0073",
          "relation": 131,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "459/4000",
          "sources": [
            "L_AEF",
            "L_AGO",
            "L_AEG",
            "L_AFO",
            "T0018"
          ]
        },
        {
          "id": "T0077",
          "relation": 150,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "118923/1000000",
          "sources": [
            "L_ABC",
            "L_BEF",
            "L_ABF",
            "L_BCE",
            "U_BCF"
          ]
        },
        {
          "id": "T0080",
          "relation": 341,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "9517/100000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "L_CEG",
            "L_CFH",
            "U_CEH"
          ]
        },
        {
          "id": "T0082",
          "relation": 346,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "11207/100000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "T0056"
          ]
        },
        {
          "id": "T0085",
          "relation": 415,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "4912/15625",
          "sources": [
            "T0077",
            "L_CEF",
            "L_AEF",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0092",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "5147/50000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "L_AEO",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0110",
          "relation": 626,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "115067/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0080",
            "L_EFH",
            "T0016"
          ]
        },
        {
          "id": "T0111",
          "relation": 631,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "58249/500000",
          "sources": [
            "L_CEF",
            "L_FOP",
            "T0082",
            "T0092",
            "T0059"
          ]
        },
        {
          "id": "T0120",
          "relation": 886,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "121241/1000000",
          "sources": [
            "L_AEO",
            "L_FOP",
            "L_AOP",
            "T0092",
            "T0020"
          ]
        },
        {
          "id": "T0122",
          "relation": 1029,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "387497/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0123",
          "relation": 1060,
          "rule": "linear",
          "triangle": "ABE",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_AEF"
          ]
        },
        {
          "id": "T0126",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CFH",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CEF"
          ]
        },
        {
          "id": "T0138",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "6373/62500",
          "sources": [
            "L_ABC",
            "L_EFG",
            "L_AEG",
            "L_BCF",
            "T0073",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0144",
          "relation": 2627,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "161149/1000000",
          "sources": [
            "L_ACO",
            "L_EFH",
            "L_AEH",
            "T0111",
            "L_AFH",
            "L_CEO",
            "U_AEF"
          ]
        },
        {
          "id": "T0146",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "99323/1000000",
          "sources": [
            "L_AEH",
            "L_FGO",
            "L_AFH",
            "L_EGO",
            "L_AGO",
            "L_EFH",
            "U_AEF"
          ]
        },
        {
          "id": "T0152",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "3399/25000",
          "sources": [
            "L_AEG",
            "T0144",
            "L_AEO",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T0157",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "139563/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "L_BCF",
            "T0073",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0173",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "951/8000",
          "sources": [
            "T0085",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0110",
            "U_AEH"
          ]
        },
        {
          "id": "T0175",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "113989/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0173",
            "L_DEP",
            "T0082",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0240",
          "relation": 6529,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "152691/1000000",
          "sources": [
            "T0157",
            "L_AEG",
            "L_AGO"
          ]
        },
        {
          "id": "T0257",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "135967/1000000",
          "sources": [
            "T0092",
            "L_FOP"
          ]
        },
        {
          "id": "T0260",
          "relation": 7135,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "136861/1000000",
          "sources": [
            "L_CEP",
            "L_COP"
          ]
        },
        {
          "id": "T0266",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "325563/1000000",
          "sources": [
            "T0157",
            "L_CGO",
            "L_AGO"
          ]
        },
        {
          "id": "T0272",
          "relation": 7,
          "rule": "sub",
          "triangle": "EFG",
          "side": "hi",
          "value": "115441/200000",
          "sources": [
            "U_AEF",
            "L_AEG",
            "T0240"
          ]
        },
        {
          "id": "T0278",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "8049/25000",
          "sources": [
            "L_AEG",
            "T0152",
            "L_AGO"
          ]
        },
        {
          "id": "T0284",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "313843/1000000",
          "sources": [
            "T0138",
            "T0173",
            "L_BFG"
          ]
        },
        {
          "id": "T0297",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "599219/1000000",
          "sources": [
            "U_CEF",
            "T0092",
            "T0257"
          ]
        },
        {
          "id": "T0299",
          "relation": 31,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "121653/200000",
          "sources": [
            "U_CEF",
            "L_CEP",
            "T0260"
          ]
        },
        {
          "id": "T0300",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "299989/1000000",
          "sources": [
            "L_CEP",
            "T0175",
            "L_CGP"
          ]
        },
        {
          "id": "T0305",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "3319/10000",
          "sources": [
            "T0092",
            "L_FGO",
            "T0152"
          ]
        },
        {
          "id": "T0308",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "317181/1000000",
          "sources": [
            "T0092",
            "L_FOP",
            "T0120"
          ]
        },
        {
          "id": "T0310",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "328283/1000000",
          "sources": [
            "T0152",
            "L_EHO",
            "T0146"
          ]
        },
        {
          "id": "T0314",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "120867/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0085",
            "T0122"
          ]
        },
        {
          "id": "T0318",
          "relation": 150,
          "rule": "diffhi",
          "triangle": "ABC",
          "side": "hi",
          "value": "299469/1000000",
          "sources": [
            "T0123",
            "U_BCF",
            "L_ABF",
            "L_BCE",
            "L_BEF"
          ]
        },
        {
          "id": "T0328",
          "relation": 415,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "4936/15625",
          "sources": [
            "T0314",
            "L_CEF",
            "L_AEF",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0330",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "23437/200000",
          "sources": [
            "T0314",
            "T0308",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0331",
          "relation": 442,
          "rule": "sumlo",
          "triangle": "CEO",
          "side": "lo",
          "value": "310597/1000000",
          "sources": [
            "T0328",
            "T0092",
            "T0278",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0333",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "107491/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0278",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0335",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "27881/200000",
          "sources": [
            "T0278",
            "T0308",
            "T0330",
            "T0333",
            "U_AEF"
          ]
        },
        {
          "id": "T0346",
          "relation": 626,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "65393/500000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0173",
            "L_EFH",
            "T0272"
          ]
        },
        {
          "id": "T0359",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "31187/250000",
          "sources": [
            "L_ABC",
            "T0305",
            "L_AEG",
            "T0284",
            "T0240",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0362",
          "relation": 2627,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "1491/8000",
          "sources": [
            "T0266",
            "L_EFH",
            "L_AEH",
            "T0257",
            "L_AFH",
            "T0331",
            "U_AEF"
          ]
        },
        {
          "id": "T0364",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "52089/500000",
          "sources": [
            "L_AEH",
            "L_FGO",
            "L_AFH",
            "T0152",
            "L_AGO",
            "L_EFH",
            "U_AEF"
          ]
        },
        {
          "id": "T0369",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "144143/1000000",
          "sources": [
            "L_AEG",
            "T0362",
            "T0278",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T0371",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "2427/15625",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0284",
            "T0240",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0381",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "156497/1000000",
          "sources": [
            "T0371",
            "T0333",
            "L_AEG",
            "T0257",
            "L_AGO",
            "L_CEF",
            "T0297"
          ]
        },
        {
          "id": "T0384",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "107747/1000000",
          "sources": [
            "T0300",
            "L_FHP",
            "T0260",
            "T0310",
            "L_CGH",
            "T0308",
            "U_CEH"
          ]
        },
        {
          "id": "T0386",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "60351/500000",
          "sources": [
            "T0328",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0346",
            "U_AEH"
          ]
        },
        {
          "id": "T0387",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "98293/1000000",
          "sources": [
            "T0328",
            "L_FGO",
            "L_AEG",
            "T0257",
            "T0278",
            "T0386",
            "U_AEF"
          ]
        },
        {
          "id": "T0388",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "201351/1000000",
          "sources": [
            "T0328",
            "L_FHO",
            "L_AEH",
            "T0257",
            "T0278",
            "T0346",
            "U_AEF"
          ]
        },
        {
          "id": "T0389",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "58637/500000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0386",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0409",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "136643/1000000",
          "sources": [
            "T0333",
            "L_FOP"
          ]
        },
        {
          "id": "T0410",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "432527/1000000",
          "sources": [
            "T0371",
            "T0386",
            "T0381"
          ]
        },
        {
          "id": "T0416",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "346621/1000000",
          "sources": [
            "T0371",
            "T0387",
            "L_AGO"
          ]
        },
        {
          "id": "T0427",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "78689/200000",
          "sources": [
            "U_AEF",
            "T0278",
            "T0333"
          ]
        },
        {
          "id": "T0432",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "330143/1000000",
          "sources": [
            "L_AEG",
            "T0369",
            "L_AGO"
          ]
        },
        {
          "id": "T0435",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "89311/250000",
          "sources": [
            "T0381",
            "L_AGP",
            "T0384"
          ]
        },
        {
          "id": "T0438",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "6769/20000",
          "sources": [
            "T0359",
            "T0386",
            "L_BFG"
          ]
        },
        {
          "id": "T0453",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "74249/125000",
          "sources": [
            "U_CEF",
            "T0333",
            "T0409"
          ]
        },
        {
          "id": "T0456",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "151637/500000",
          "sources": [
            "L_CEP",
            "T0389",
            "L_CGP"
          ]
        },
        {
          "id": "T0462",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "172317/500000",
          "sources": [
            "T0333",
            "L_FGO",
            "T0369"
          ]
        },
        {
          "id": "T0463",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "42487/125000",
          "sources": [
            "T0333",
            "L_FOP",
            "T0335"
          ]
        },
        {
          "id": "T0465",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "341321/1000000",
          "sources": [
            "T0369",
            "L_EHO",
            "T0364"
          ]
        },
        {
          "id": "T0467",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "121051/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0328",
            "T0122"
          ]
        },
        {
          "id": "T0473",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "10373/100000",
          "sources": [
            "T0328",
            "L_COP",
            "T0416",
            "L_CEP",
            "T0453"
          ]
        },
        {
          "id": "T0475",
          "relation": 415,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "316049/1000000",
          "sources": [
            "T0467",
            "L_CEF",
            "L_AEF",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0477",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "120387/1000000",
          "sources": [
            "T0467",
            "T0463",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0479",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "54179/500000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0432",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0481",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "16817/125000",
          "sources": [
            "T0410",
            "L_FHO",
            "L_AFH",
            "T0409",
            "T0427"
          ]
        },
        {
          "id": "T0483",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "4257/40000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0435",
            "L_FHO",
            "T0427"
          ]
        },
        {
          "id": "T0486",
          "relation": 886,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "1239/8000",
          "sources": [
            "T0432",
            "L_FOP",
            "L_AOP",
            "T0479",
            "T0427"
          ]
        },
        {
          "id": "T0492",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "65129/500000",
          "sources": [
            "L_ABC",
            "T0462",
            "L_AEG",
            "T0438",
            "T0381",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0495",
          "relation": 2626,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "30491/250000",
          "sources": [
            "T0371",
            "L_EFH",
            "L_AEF",
            "L_CGH",
            "L_AFH",
            "T0456",
            "U_AEH"
          ]
        },
        {
          "id": "T0496",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "105103/1000000",
          "sources": [
            "L_AEH",
            "L_FGO",
            "L_AFH",
            "T0369",
            "L_AGO",
            "L_EFH",
            "U_AEF"
          ]
        },
        {
          "id": "T0500",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "73461/500000",
          "sources": [
            "L_AEG",
            "T0388",
            "T0432",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T0503",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "39787/250000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0438",
            "T0381",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0514",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "19863/125000",
          "sources": [
            "T0503",
            "T0479",
            "L_AEG",
            "T0409",
            "L_AGO",
            "L_CEF",
            "T0453"
          ]
        },
        {
          "id": "T0517",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "116459/1000000",
          "sources": [
            "T0456",
            "T0483",
            "T0260",
            "T0465",
            "L_CGH",
            "T0463",
            "U_CEH"
          ]
        },
        {
          "id": "T0519",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "25023/250000",
          "sources": [
            "T0475",
            "L_FGO",
            "L_AEG",
            "T0409",
            "T0432",
            "T0495",
            "U_AEF"
          ]
        },
        {
          "id": "T0520",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "102371/500000",
          "sources": [
            "T0475",
            "L_FHO",
            "L_AEH",
            "T0409",
            "T0432",
            "T0481",
            "U_AEF"
          ]
        },
        {
          "id": "T0521",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "117429/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0495",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0537",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "34193/250000",
          "sources": [
            "T0479",
            "L_FOP"
          ]
        },
        {
          "id": "T0539",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "317117/1000000",
          "sources": [
            "T0473",
            "L_CEP",
            "T0477"
          ]
        },
        {
          "id": "T0540",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "27501/62500",
          "sources": [
            "T0503",
            "T0495",
            "T0514"
          ]
        },
        {
          "id": "T0545",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "4403/12500",
          "sources": [
            "T0503",
            "T0519",
            "L_AGO"
          ]
        },
        {
          "id": "T0555",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "76879/200000",
          "sources": [
            "U_AEF",
            "T0432",
            "T0479"
          ]
        },
        {
          "id": "T0560",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "166461/500000",
          "sources": [
            "L_AEG",
            "T0500",
            "L_AGO"
          ]
        },
        {
          "id": "T0563",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "368363/1000000",
          "sources": [
            "T0514",
            "L_AGP",
            "T0517"
          ]
        },
        {
          "id": "T0569",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "172611/500000",
          "sources": [
            "T0492",
            "T0495",
            "L_BFG"
          ]
        },
        {
          "id": "T0585",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "148249/250000",
          "sources": [
            "U_CEF",
            "T0479",
            "T0537"
          ]
        },
        {
          "id": "T0588",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "303429/1000000",
          "sources": [
            "L_CEP",
            "T0521",
            "L_CGP"
          ]
        },
        {
          "id": "T0591",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "2727/8000",
          "sources": [
            "L_CEP",
            "T0486",
            "L_COP"
          ]
        },
        {
          "id": "T0594",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "8707/25000",
          "sources": [
            "T0479",
            "L_FGO",
            "T0500"
          ]
        },
        {
          "id": "T0595",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "356233/1000000",
          "sources": [
            "T0479",
            "L_FOP",
            "T0486"
          ]
        },
        {
          "id": "T0597",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "13801/40000",
          "sources": [
            "T0500",
            "L_EHO",
            "T0496"
          ]
        },
        {
          "id": "T0599",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "30299/250000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0539",
            "T0122"
          ]
        },
        {
          "id": "T0604",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "4199/40000",
          "sources": [
            "T0539",
            "L_COP",
            "T0545",
            "L_CEP",
            "T0585"
          ]
        },
        {
          "id": "T0607",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "122701/1000000",
          "sources": [
            "T0599",
            "T0595",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0609",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "27163/250000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0560",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0610",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "160323/1000000",
          "sources": [
            "T0560",
            "T0595",
            "T0607",
            "T0609",
            "U_AEF"
          ]
        },
        {
          "id": "T0611",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "139547/1000000",
          "sources": [
            "T0540",
            "L_FHO",
            "L_AFH",
            "T0537",
            "T0555"
          ]
        },
        {
          "id": "T0613",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "111621/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0563",
            "L_FHO",
            "T0555"
          ]
        },
        {
          "id": "T0619",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "33063/250000",
          "sources": [
            "L_ABC",
            "T0594",
            "L_AEG",
            "T0569",
            "T0514",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0621",
          "relation": 2626,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "24477/200000",
          "sources": [
            "T0503",
            "L_EFH",
            "L_AEF",
            "L_CGH",
            "L_AFH",
            "T0588",
            "U_AEH"
          ]
        },
        {
          "id": "T0625",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "73831/500000",
          "sources": [
            "L_AEG",
            "T0520",
            "T0560",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T0627",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "20079/125000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0569",
            "T0514",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0636",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "79771/500000",
          "sources": [
            "T0627",
            "T0609",
            "L_AEG",
            "T0537",
            "L_AGO",
            "L_CEF",
            "T0585"
          ]
        },
        {
          "id": "T0637",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "13273/125000",
          "sources": [
            "T0591",
            "L_FGH",
            "T0537",
            "T0597",
            "L_CGH",
            "T0609",
            "U_CEF"
          ]
        },
        {
          "id": "T0640",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "12027/100000",
          "sources": [
            "T0588",
            "T0613",
            "T0260",
            "T0597",
            "L_CGH",
            "T0595",
            "U_CEH"
          ]
        },
        {
          "id": "T0642",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "10081/100000",
          "sources": [
            "T0539",
            "L_FGO",
            "L_AEG",
            "T0537",
            "T0560",
            "T0621",
            "U_AEF"
          ]
        },
        {
          "id": "T0643",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "207453/1000000",
          "sources": [
            "T0539",
            "L_FHO",
            "L_AEH",
            "T0537",
            "T0560",
            "T0611",
            "U_AEF"
          ]
        },
        {
          "id": "T0644",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "117481/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0621",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0660",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "8551/62500",
          "sources": [
            "T0609",
            "L_FOP"
          ]
        },
        {
          "id": "T0663",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "80169/250000",
          "sources": [
            "T0604",
            "L_CEP",
            "T0607"
          ]
        },
        {
          "id": "T0664",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "442559/1000000",
          "sources": [
            "T0627",
            "T0621",
            "T0636"
          ]
        },
        {
          "id": "T0669",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "177221/500000",
          "sources": [
            "T0627",
            "T0642",
            "L_AGO"
          ]
        },
        {
          "id": "T0679",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "190661/500000",
          "sources": [
            "U_AEF",
            "T0560",
            "T0609"
          ]
        },
        {
          "id": "T0684",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "166831/500000",
          "sources": [
            "L_AEG",
            "T0625",
            "L_AGO"
          ]
        },
        {
          "id": "T0687",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "93203/250000",
          "sources": [
            "T0636",
            "L_AGP",
            "T0640"
          ]
        },
        {
          "id": "T0692",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "347637/1000000",
          "sources": [
            "T0619",
            "T0621",
            "L_BFG"
          ]
        },
        {
          "id": "T0708",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "296329/500000",
          "sources": [
            "U_CEF",
            "T0609",
            "T0660"
          ]
        },
        {
          "id": "T0712",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "303481/1000000",
          "sources": [
            "L_CEP",
            "T0644",
            "L_CGP"
          ]
        },
        {
          "id": "T0715",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "346323/1000000",
          "sources": [
            "L_CEP",
            "T0610",
            "L_COP"
          ]
        },
        {
          "id": "T0718",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "174657/500000",
          "sources": [
            "T0609",
            "L_FGO",
            "T0625"
          ]
        },
        {
          "id": "T0719",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "14479/40000",
          "sources": [
            "T0609",
            "L_FOP",
            "T0610"
          ]
        },
        {
          "id": "T0721",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "173423/500000",
          "sources": [
            "T0625",
            "L_EHO",
            "T0637"
          ]
        },
        {
          "id": "T0723",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "15203/125000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0663",
            "T0122"
          ]
        },
        {
          "id": "T0727",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "105939/1000000",
          "sources": [
            "T0663",
            "L_COP",
            "T0669",
            "L_CEP",
            "T0708"
          ]
        },
        {
          "id": "T0730",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "123671/1000000",
          "sources": [
            "T0723",
            "T0719",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0732",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "10873/100000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0684",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0733",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "163111/1000000",
          "sources": [
            "T0684",
            "T0719",
            "T0730",
            "T0732",
            "U_AEF"
          ]
        },
        {
          "id": "T0734",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "70651/500000",
          "sources": [
            "T0664",
            "L_FHO",
            "L_AFH",
            "T0660",
            "T0679"
          ]
        },
        {
          "id": "T0736",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "56803/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0687",
            "L_FHO",
            "T0679"
          ]
        },
        {
          "id": "T0742",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "66429/500000",
          "sources": [
            "L_ABC",
            "T0718",
            "L_AEG",
            "T0692",
            "T0636",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0744",
          "relation": 2626,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "30637/250000",
          "sources": [
            "T0627",
            "L_EFH",
            "L_AEF",
            "L_CGH",
            "L_AFH",
            "T0712",
            "U_AEH"
          ]
        },
        {
          "id": "T0747",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "37019/250000",
          "sources": [
            "L_AEG",
            "T0643",
            "T0684",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T0749",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "161091/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0692",
            "T0636",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0757",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "31949/200000",
          "sources": [
            "T0749",
            "T0732",
            "L_AEG",
            "T0660",
            "L_AGO",
            "L_CEF",
            "T0708"
          ]
        },
        {
          "id": "T0758",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "13389/125000",
          "sources": [
            "T0715",
            "L_FGH",
            "T0660",
            "T0721",
            "L_CGH",
            "T0732",
            "U_CEF"
          ]
        },
        {
          "id": "T0761",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "24347/200000",
          "sources": [
            "T0712",
            "T0736",
            "T0260",
            "T0721",
            "L_CGH",
            "T0719",
            "U_CEH"
          ]
        },
        {
          "id": "T0763",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "101393/1000000",
          "sources": [
            "T0663",
            "L_FGO",
            "L_AEG",
            "T0660",
            "T0684",
            "T0744",
            "U_AEF"
          ]
        },
        {
          "id": "T0764",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "208729/1000000",
          "sources": [
            "T0663",
            "L_FHO",
            "L_AEH",
            "T0660",
            "T0684",
            "T0734",
            "U_AEF"
          ]
        },
        {
          "id": "T0765",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "58751/500000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0744",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0778",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "34207/250000",
          "sources": [
            "T0732",
            "L_FOP"
          ]
        },
        {
          "id": "T0781",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "32261/100000",
          "sources": [
            "T0727",
            "L_CEP",
            "T0730"
          ]
        },
        {
          "id": "T0782",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "55423/125000",
          "sources": [
            "T0749",
            "T0744",
            "T0757"
          ]
        },
        {
          "id": "T0787",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "88871/250000",
          "sources": [
            "T0749",
            "T0763",
            "L_AGO"
          ]
        },
        {
          "id": "T0797",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "47563/125000",
          "sources": [
            "U_AEF",
            "T0684",
            "T0732"
          ]
        },
        {
          "id": "T0802",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "83519/250000",
          "sources": [
            "L_AEG",
            "T0747",
            "L_AGO"
          ]
        },
        {
          "id": "T0805",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "4681/12500",
          "sources": [
            "T0757",
            "L_AGP",
            "T0761"
          ]
        },
        {
          "id": "T0809",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "174203/500000",
          "sources": [
            "T0742",
            "T0744",
            "L_BFG"
          ]
        },
        {
          "id": "T0825",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "74071/125000",
          "sources": [
            "U_CEF",
            "T0732",
            "T0778"
          ]
        },
        {
          "id": "T0829",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "151751/500000",
          "sources": [
            "L_CEP",
            "T0765",
            "L_CGP"
          ]
        },
        {
          "id": "T0832",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "349111/1000000",
          "sources": [
            "L_CEP",
            "T0733",
            "L_COP"
          ]
        },
        {
          "id": "T0835",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "174903/500000",
          "sources": [
            "T0732",
            "L_FGO",
            "T0747"
          ]
        },
        {
          "id": "T0836",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "364841/1000000",
          "sources": [
            "T0732",
            "L_FOP",
            "T0733"
          ]
        },
        {
          "id": "T0838",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "87047/250000",
          "sources": [
            "T0747",
            "L_EHO",
            "T0758"
          ]
        },
        {
          "id": "T0840",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "1904/15625",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0781",
            "T0122"
          ]
        },
        {
          "id": "T0844",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "53211/500000",
          "sources": [
            "T0781",
            "L_COP",
            "T0787",
            "L_CEP",
            "T0825"
          ]
        },
        {
          "id": "T0847",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "24833/200000",
          "sources": [
            "T0840",
            "T0836",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0849",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "54387/500000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0802",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0850",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "164529/1000000",
          "sources": [
            "T0802",
            "T0836",
            "T0847",
            "T0849",
            "U_AEF"
          ]
        },
        {
          "id": "T0851",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "141811/1000000",
          "sources": [
            "T0782",
            "L_FHO",
            "L_AFH",
            "T0778",
            "T0797"
          ]
        },
        {
          "id": "T0853",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "57129/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0805",
            "L_FHO",
            "T0797"
          ]
        },
        {
          "id": "T0859",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "133069/1000000",
          "sources": [
            "L_ABC",
            "T0835",
            "L_AEG",
            "T0809",
            "T0757",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0861",
          "relation": 2626,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "122599/1000000",
          "sources": [
            "T0749",
            "L_EFH",
            "L_AEF",
            "L_CGH",
            "L_AFH",
            "T0829",
            "U_AEH"
          ]
        },
        {
          "id": "T0864",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "148279/1000000",
          "sources": [
            "L_AEG",
            "T0764",
            "T0802",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T0866",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "161237/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0809",
            "T0757",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0874",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "15981/100000",
          "sources": [
            "T0866",
            "T0849",
            "L_AEG",
            "T0778",
            "L_AGO",
            "L_CEF",
            "T0825"
          ]
        },
        {
          "id": "T0875",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "107651/1000000",
          "sources": [
            "T0832",
            "L_FGH",
            "T0778",
            "T0838",
            "L_CGH",
            "T0849",
            "U_CEF"
          ]
        },
        {
          "id": "T0878",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "6121/50000",
          "sources": [
            "T0829",
            "T0853",
            "T0260",
            "T0838",
            "L_CGH",
            "T0836",
            "U_CEH"
          ]
        },
        {
          "id": "T0880",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "20339/200000",
          "sources": [
            "T0781",
            "L_FGO",
            "L_AEG",
            "T0778",
            "T0802",
            "T0861",
            "U_AEF"
          ]
        },
        {
          "id": "T0881",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "52309/250000",
          "sources": [
            "T0781",
            "L_FHO",
            "L_AEH",
            "T0778",
            "T0802",
            "T0851",
            "U_AEF"
          ]
        },
        {
          "id": "T0882",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "29377/250000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0861",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0893",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "68417/500000",
          "sources": [
            "T0849",
            "L_FOP"
          ]
        },
        {
          "id": "T0896",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "323587/1000000",
          "sources": [
            "T0844",
            "L_CEP",
            "T0847"
          ]
        },
        {
          "id": "T0897",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "221823/500000",
          "sources": [
            "T0866",
            "T0861",
            "T0874"
          ]
        },
        {
          "id": "T0902",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "88983/250000",
          "sources": [
            "T0866",
            "T0880",
            "L_AGO"
          ]
        },
        {
          "id": "T0912",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "190023/500000",
          "sources": [
            "U_AEF",
            "T0802",
            "T0849"
          ]
        },
        {
          "id": "T0917",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "334279/1000000",
          "sources": [
            "L_AEG",
            "T0864",
            "L_AGO"
          ]
        },
        {
          "id": "T0920",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "37523/100000",
          "sources": [
            "T0874",
            "L_AGP",
            "T0878"
          ]
        },
        {
          "id": "T0924",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "87167/250000",
          "sources": [
            "T0859",
            "T0861",
            "L_BFG"
          ]
        },
        {
          "id": "T0940",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "296259/500000",
          "sources": [
            "U_CEF",
            "T0849",
            "T0893"
          ]
        },
        {
          "id": "T0944",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "75877/250000",
          "sources": [
            "L_CEP",
            "T0882",
            "L_CGP"
          ]
        },
        {
          "id": "T0947",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "350529/1000000",
          "sources": [
            "L_CEP",
            "T0850",
            "L_COP"
          ]
        },
        {
          "id": "T0950",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "350053/1000000",
          "sources": [
            "T0849",
            "L_FGO",
            "T0864"
          ]
        },
        {
          "id": "T0951",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "366303/1000000",
          "sources": [
            "T0849",
            "L_FOP",
            "T0850"
          ]
        },
        {
          "id": "T0953",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "34893/100000",
          "sources": [
            "T0864",
            "L_EHO",
            "T0875"
          ]
        },
        {
          "id": "T0955",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "121973/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0896",
            "T0122"
          ]
        },
        {
          "id": "T0959",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "21331/200000",
          "sources": [
            "T0896",
            "L_COP",
            "T0902",
            "L_CEP",
            "T0940"
          ]
        },
        {
          "id": "T0962",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "124417/1000000",
          "sources": [
            "T0955",
            "T0951",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0964",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "27199/250000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0917",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0965",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "165249/1000000",
          "sources": [
            "T0917",
            "T0951",
            "T0962",
            "T0964",
            "U_AEF"
          ]
        },
        {
          "id": "T0966",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "142047/1000000",
          "sources": [
            "T0897",
            "L_FHO",
            "L_AFH",
            "T0893",
            "T0912"
          ]
        },
        {
          "id": "T0968",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "114579/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0920",
            "L_FHO",
            "T0912"
          ]
        },
        {
          "id": "T0974",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "133149/1000000",
          "sources": [
            "L_ABC",
            "T0950",
            "L_AEG",
            "T0924",
            "T0874",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0979",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "37091/250000",
          "sources": [
            "L_AEG",
            "T0881",
            "T0917",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T0981",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "80643/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0924",
            "T0874",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0989",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "159839/1000000",
          "sources": [
            "T0981",
            "T0964",
            "L_AEG",
            "T0893",
            "L_AGO",
            "L_CEF",
            "T0940"
          ]
        },
        {
          "id": "T0990",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "53967/500000",
          "sources": [
            "T0947",
            "L_FGH",
            "T0893",
            "T0953",
            "L_CGH",
            "T0964",
            "U_CEF"
          ]
        },
        {
          "id": "T0993",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "122773/1000000",
          "sources": [
            "T0944",
            "T0968",
            "T0260",
            "T0953",
            "L_CGH",
            "T0951",
            "U_CEH"
          ]
        },
        {
          "id": "T0995",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "122709/1000000",
          "sources": [
            "T0896",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0966",
            "U_AEH"
          ]
        },
        {
          "id": "T0996",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "101881/1000000",
          "sources": [
            "T0896",
            "L_FGO",
            "L_AEG",
            "T0893",
            "T0917",
            "T0995",
            "U_AEF"
          ]
        },
        {
          "id": "T0997",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "104741/500000",
          "sources": [
            "T0896",
            "L_FHO",
            "L_AEH",
            "T0893",
            "T0917",
            "T0966",
            "U_AEF"
          ]
        },
        {
          "id": "T0998",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "117521/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0995",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1009",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "68419/500000",
          "sources": [
            "T0964",
            "L_FOP"
          ]
        },
        {
          "id": "T1012",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "40509/125000",
          "sources": [
            "T0959",
            "L_CEP",
            "T0962"
          ]
        },
        {
          "id": "T1013",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "221917/500000",
          "sources": [
            "T0981",
            "T0995",
            "T0989"
          ]
        },
        {
          "id": "T1018",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356167/1000000",
          "sources": [
            "T0981",
            "T0996",
            "L_AGO"
          ]
        },
        {
          "id": "T1028",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "379821/1000000",
          "sources": [
            "U_AEF",
            "T0917",
            "T0964"
          ]
        },
        {
          "id": "T1033",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "83591/250000",
          "sources": [
            "L_AEG",
            "T0979",
            "L_AGO"
          ]
        },
        {
          "id": "T1036",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "93903/250000",
          "sources": [
            "T0989",
            "L_AGP",
            "T0993"
          ]
        },
        {
          "id": "T1040",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "174429/500000",
          "sources": [
            "T0974",
            "T0995",
            "L_BFG"
          ]
        },
        {
          "id": "T1056",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "148123/250000",
          "sources": [
            "U_CEF",
            "T0964",
            "T1009"
          ]
        },
        {
          "id": "T1060",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "303521/1000000",
          "sources": [
            "L_CEP",
            "T0998",
            "L_CGP"
          ]
        },
        {
          "id": "T1063",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "351249/1000000",
          "sources": [
            "L_CEP",
            "T0965",
            "L_COP"
          ]
        },
        {
          "id": "T1065",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "4377/12500",
          "sources": [
            "T0964",
            "L_FGO",
            "T0979"
          ]
        },
        {
          "id": "T1066",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "73409/200000",
          "sources": [
            "T0964",
            "L_FOP",
            "T0965"
          ]
        },
        {
          "id": "T1068",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "174649/500000",
          "sources": [
            "T0979",
            "L_EHO",
            "T0990"
          ]
        },
        {
          "id": "T1070",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "122031/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1012",
            "T0122"
          ]
        },
        {
          "id": "T1074",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "106773/1000000",
          "sources": [
            "T1012",
            "L_COP",
            "T1018",
            "L_CEP",
            "T1056"
          ]
        },
        {
          "id": "T1077",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "1946/15625",
          "sources": [
            "T1070",
            "T1066",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1079",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "21761/200000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T1033",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T1080",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "165607/1000000",
          "sources": [
            "T1033",
            "T1066",
            "T1077",
            "T1079",
            "U_AEF"
          ]
        },
        {
          "id": "T1081",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "71089/500000",
          "sources": [
            "T1013",
            "L_FHO",
            "L_AFH",
            "T1009",
            "T1028"
          ]
        },
        {
          "id": "T1083",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "5737/50000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1036",
            "L_FHO",
            "T1028"
          ]
        },
        {
          "id": "T1089",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "16649/125000",
          "sources": [
            "L_ABC",
            "T1065",
            "L_AEG",
            "T1040",
            "T0989",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1093",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "37101/250000",
          "sources": [
            "L_AEG",
            "T0997",
            "T1033",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T1095",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "32263/200000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1040",
            "T0989",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1103",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "31971/200000",
          "sources": [
            "T1095",
            "T1079",
            "L_AEG",
            "T1009",
            "L_AGO",
            "L_CEF",
            "T1056"
          ]
        },
        {
          "id": "T1104",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108077/1000000",
          "sources": [
            "T1063",
            "L_FGH",
            "T1009",
            "T1068",
            "L_CGH",
            "T1079",
            "U_CEF"
          ]
        },
        {
          "id": "T1107",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "15369/125000",
          "sources": [
            "T1060",
            "T1083",
            "T0260",
            "T1068",
            "L_CGH",
            "T1066",
            "U_CEH"
          ]
        },
        {
          "id": "T1109",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "61387/500000",
          "sources": [
            "T1012",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1081",
            "U_AEH"
          ]
        },
        {
          "id": "T1110",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "12747/125000",
          "sources": [
            "T1012",
            "L_FGO",
            "L_AEG",
            "T1009",
            "T1033",
            "T1109",
            "U_AEF"
          ]
        },
        {
          "id": "T1111",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "26201/125000",
          "sources": [
            "T1012",
            "L_FHO",
            "L_AEH",
            "T1009",
            "T1033",
            "T1081",
            "U_AEF"
          ]
        },
        {
          "id": "T1112",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "117529/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1109",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1123",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "136839/1000000",
          "sources": [
            "T1079",
            "L_FOP"
          ]
        },
        {
          "id": "T1126",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "324317/1000000",
          "sources": [
            "T1074",
            "L_CEP",
            "T1077"
          ]
        },
        {
          "id": "T1127",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "55493/125000",
          "sources": [
            "T1095",
            "T1109",
            "T1103"
          ]
        },
        {
          "id": "T1132",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356291/1000000",
          "sources": [
            "T1095",
            "T1110",
            "L_AGO"
          ]
        },
        {
          "id": "T1142",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "379727/1000000",
          "sources": [
            "U_AEF",
            "T1033",
            "T1079"
          ]
        },
        {
          "id": "T1147",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "83601/250000",
          "sources": [
            "L_AEG",
            "T1093",
            "L_AGO"
          ]
        },
        {
          "id": "T1150",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "375807/1000000",
          "sources": [
            "T1103",
            "L_AGP",
            "T1107"
          ]
        },
        {
          "id": "T1154",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "174483/500000",
          "sources": [
            "T1089",
            "T1109",
            "L_BFG"
          ]
        },
        {
          "id": "T1170",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "296241/500000",
          "sources": [
            "U_CEF",
            "T1079",
            "T1123"
          ]
        },
        {
          "id": "T1174",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "303529/1000000",
          "sources": [
            "L_CEP",
            "T1112",
            "L_CGP"
          ]
        },
        {
          "id": "T1177",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "351607/1000000",
          "sources": [
            "L_CEP",
            "T1080",
            "L_COP"
          ]
        },
        {
          "id": "T1179",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "350209/1000000",
          "sources": [
            "T1079",
            "L_FGO",
            "T1093"
          ]
        },
        {
          "id": "T1180",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "91853/250000",
          "sources": [
            "T1079",
            "L_FOP",
            "T1080"
          ]
        },
        {
          "id": "T1182",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "349481/1000000",
          "sources": [
            "T1093",
            "L_EHO",
            "T1104"
          ]
        },
        {
          "id": "T1184",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "6103/50000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1126",
            "T0122"
          ]
        },
        {
          "id": "T1188",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "6677/62500",
          "sources": [
            "T1126",
            "L_COP",
            "T1132",
            "L_CEP",
            "T1170"
          ]
        },
        {
          "id": "T1191",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "1947/15625",
          "sources": [
            "T1184",
            "T1180",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1193",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "108809/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T1147",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T1194",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "165783/1000000",
          "sources": [
            "T1147",
            "T1180",
            "T1191",
            "T1193",
            "U_AEF"
          ]
        },
        {
          "id": "T1195",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "142241/1000000",
          "sources": [
            "T1127",
            "L_FHO",
            "L_AFH",
            "T1123",
            "T1142"
          ]
        },
        {
          "id": "T1197",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "1794/15625",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1150",
            "L_FHO",
            "T1142"
          ]
        },
        {
          "id": "T1203",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "26643/200000",
          "sources": [
            "L_ABC",
            "T1179",
            "L_AEG",
            "T1154",
            "T1103",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1207",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "18553/125000",
          "sources": [
            "L_AEG",
            "T1111",
            "T1147",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T1209",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "40333/250000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1154",
            "T1103",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1217",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "79931/500000",
          "sources": [
            "T1209",
            "T1193",
            "L_AEG",
            "T1123",
            "L_AGO",
            "L_CEF",
            "T1170"
          ]
        },
        {
          "id": "T1218",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108147/1000000",
          "sources": [
            "T1177",
            "L_FGH",
            "T1123",
            "T1182",
            "L_CGH",
            "T1193",
            "U_CEF"
          ]
        },
        {
          "id": "T1221",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "769/6250",
          "sources": [
            "T1174",
            "T1197",
            "T0260",
            "T1182",
            "L_CGH",
            "T1180",
            "U_CEH"
          ]
        },
        {
          "id": "T1223",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "122807/1000000",
          "sources": [
            "T1126",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1195",
            "U_AEH"
          ]
        },
        {
          "id": "T1224",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "102023/1000000",
          "sources": [
            "T1126",
            "L_FGO",
            "L_AEG",
            "T1123",
            "T1147",
            "T1223",
            "U_AEF"
          ]
        },
        {
          "id": "T1225",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "209669/1000000",
          "sources": [
            "T1126",
            "L_FHO",
            "L_AEH",
            "T1123",
            "T1147",
            "T1195",
            "U_AEF"
          ]
        },
        {
          "id": "T1226",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "117533/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1223",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1239",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "8111/25000",
          "sources": [
            "T1188",
            "L_CEP",
            "T1191"
          ]
        },
        {
          "id": "T1240",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "444001/1000000",
          "sources": [
            "T1209",
            "T1223",
            "T1217"
          ]
        },
        {
          "id": "T1245",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "71271/200000",
          "sources": [
            "T1209",
            "T1224",
            "L_AGO"
          ]
        },
        {
          "id": "T1255",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "379683/1000000",
          "sources": [
            "U_AEF",
            "T1147",
            "T1193"
          ]
        },
        {
          "id": "T1260",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "41803/125000",
          "sources": [
            "L_AEG",
            "T1207",
            "L_AGO"
          ]
        },
        {
          "id": "T1263",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "187951/500000",
          "sources": [
            "T1217",
            "L_AGP",
            "T1221"
          ]
        },
        {
          "id": "T1267",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "174511/500000",
          "sources": [
            "T1203",
            "T1223",
            "L_BFG"
          ]
        },
        {
          "id": "T1283",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "296239/500000",
          "sources": [
            "U_CEF",
            "T1193",
            "T1123"
          ]
        },
        {
          "id": "T1287",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "303533/1000000",
          "sources": [
            "L_CEP",
            "T1226",
            "L_CGP"
          ]
        },
        {
          "id": "T1290",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "351783/1000000",
          "sources": [
            "L_CEP",
            "T1194",
            "L_COP"
          ]
        },
        {
          "id": "T1292",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "350233/1000000",
          "sources": [
            "T1193",
            "L_FGO",
            "T1207"
          ]
        },
        {
          "id": "T1293",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "45949/125000",
          "sources": [
            "T1193",
            "L_FOP",
            "T1194"
          ]
        },
        {
          "id": "T1295",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "349571/1000000",
          "sources": [
            "T1207",
            "L_EHO",
            "T1218"
          ]
        },
        {
          "id": "T1297",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "4883/40000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1239",
            "T0122"
          ]
        },
        {
          "id": "T1301",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "53431/500000",
          "sources": [
            "T1239",
            "L_COP",
            "T1245",
            "L_CEP",
            "T1283"
          ]
        },
        {
          "id": "T1304",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "124639/1000000",
          "sources": [
            "T1297",
            "T1293",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1306",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "108811/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T1260",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T1307",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "165869/1000000",
          "sources": [
            "T1260",
            "T1293",
            "T1304",
            "T1306",
            "U_AEF"
          ]
        },
        {
          "id": "T1309",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "142271/1000000",
          "sources": [
            "T1240",
            "L_FHO",
            "L_AFH",
            "T1123",
            "T1255"
          ]
        },
        {
          "id": "T1311",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "114853/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1263",
            "L_FHO",
            "T1255"
          ]
        },
        {
          "id": "T1317",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "133227/1000000",
          "sources": [
            "L_ABC",
            "T1292",
            "L_AEG",
            "T1267",
            "T1217",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1321",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "74217/500000",
          "sources": [
            "L_AEG",
            "T1225",
            "T1260",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T1323",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "8067/50000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1267",
            "T1217",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1331",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "31973/200000",
          "sources": [
            "T1323",
            "T1306",
            "L_AEG",
            "T1123",
            "L_AGO",
            "L_CEF",
            "T1283"
          ]
        },
        {
          "id": "T1332",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "54091/500000",
          "sources": [
            "T1290",
            "L_FGH",
            "T1123",
            "T1295",
            "L_CGH",
            "T1306",
            "U_CEF"
          ]
        },
        {
          "id": "T1335",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "123083/1000000",
          "sources": [
            "T1287",
            "T1311",
            "T0260",
            "T1295",
            "L_CGH",
            "T1293",
            "U_CEH"
          ]
        },
        {
          "id": "T1337",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "122823/1000000",
          "sources": [
            "T1239",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1309",
            "U_AEH"
          ]
        },
        {
          "id": "T1338",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "51023/500000",
          "sources": [
            "T1239",
            "L_FGO",
            "L_AEG",
            "T1123",
            "T1260",
            "T1337",
            "U_AEF"
          ]
        },
        {
          "id": "T1339",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "209699/1000000",
          "sources": [
            "T1239",
            "L_FHO",
            "L_AEH",
            "T1123",
            "T1260",
            "T1309",
            "U_AEF"
          ]
        },
        {
          "id": "T1340",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "23507/200000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1337",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1351",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "3421/25000",
          "sources": [
            "T1306",
            "L_FOP"
          ]
        },
        {
          "id": "T1354",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "324501/1000000",
          "sources": [
            "T1301",
            "L_CEP",
            "T1304"
          ]
        },
        {
          "id": "T1355",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "111007/250000",
          "sources": [
            "T1323",
            "T1337",
            "T1331"
          ]
        },
        {
          "id": "T1360",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178193/500000",
          "sources": [
            "T1323",
            "T1338",
            "L_AGO"
          ]
        },
        {
          "id": "T1370",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "379661/1000000",
          "sources": [
            "U_AEF",
            "T1260",
            "T1306"
          ]
        },
        {
          "id": "T1375",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "167217/500000",
          "sources": [
            "L_AEG",
            "T1321",
            "L_AGO"
          ]
        },
        {
          "id": "T1378",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "93987/250000",
          "sources": [
            "T1331",
            "L_AGP",
            "T1335"
          ]
        },
        {
          "id": "T1382",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "6981/20000",
          "sources": [
            "T1317",
            "T1337",
            "L_BFG"
          ]
        },
        {
          "id": "T1398",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "23699/40000",
          "sources": [
            "U_CEF",
            "T1306",
            "T1351"
          ]
        },
        {
          "id": "T1402",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "60707/200000",
          "sources": [
            "L_CEP",
            "T1340",
            "L_CGP"
          ]
        },
        {
          "id": "T1405",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "351869/1000000",
          "sources": [
            "L_CEP",
            "T1307",
            "L_COP"
          ]
        },
        {
          "id": "T1407",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "70049/200000",
          "sources": [
            "T1306",
            "L_FGO",
            "T1321"
          ]
        },
        {
          "id": "T1408",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "1149/3125",
          "sources": [
            "T1306",
            "L_FOP",
            "T1307"
          ]
        },
        {
          "id": "T1410",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "21851/62500",
          "sources": [
            "T1321",
            "L_EHO",
            "T1332"
          ]
        },
        {
          "id": "T1412",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "122083/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1354",
            "T0122"
          ]
        },
        {
          "id": "T1416",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "106877/1000000",
          "sources": [
            "T1354",
            "L_COP",
            "T1360",
            "L_CEP",
            "T1398"
          ]
        },
        {
          "id": "T1419",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "24931/200000",
          "sources": [
            "T1412",
            "T1408",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1421",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "27203/250000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T1375",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T1422",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "20739/125000",
          "sources": [
            "T1375",
            "T1408",
            "T1419",
            "T1421",
            "U_AEF"
          ]
        },
        {
          "id": "T1424",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "71143/500000",
          "sources": [
            "T1355",
            "L_FHO",
            "L_AFH",
            "T1351",
            "T1370"
          ]
        },
        {
          "id": "T1426",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "114871/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1378",
            "L_FHO",
            "T1370"
          ]
        },
        {
          "id": "T1428",
          "relation": 2088,
          "rule": "balance_lo",
          "triangle": "BEG",
          "side": "lo",
          "value": "69127/500000",
          "sources": [
            "T1412",
            "T1337",
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1382",
            "U_ACF"
          ]
        },
        {
          "id": "T1432",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "8327/62500",
          "sources": [
            "L_ABC",
            "T1407",
            "L_AEG",
            "T1382",
            "T1331",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1433",
          "relation": 2622,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "52219/500000",
          "sources": [
            "L_ABG",
            "L_EFH",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T1428",
            "U_AEF"
          ]
        },
        {
          "id": "T1436",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "148439/1000000",
          "sources": [
            "L_AEG",
            "T1339",
            "T1375",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T1438",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "2521/15625",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1382",
            "T1331",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1446",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "159867/1000000",
          "sources": [
            "T1438",
            "T1421",
            "L_AEG",
            "T1351",
            "L_AGO",
            "L_CEF",
            "T1398"
          ]
        },
        {
          "id": "T1447",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108199/1000000",
          "sources": [
            "T1405",
            "L_FGH",
            "T1351",
            "T1410",
            "L_CGH",
            "T1421",
            "U_CEF"
          ]
        },
        {
          "id": "T1450",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "3847/31250",
          "sources": [
            "T1402",
            "T1426",
            "T0260",
            "T1410",
            "L_CGH",
            "T1408",
            "U_CEH"
          ]
        },
        {
          "id": "T1452",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "122831/1000000",
          "sources": [
            "T1354",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1424",
            "U_AEH"
          ]
        },
        {
          "id": "T1453",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "51029/500000",
          "sources": [
            "T1354",
            "L_FGO",
            "L_AEG",
            "T1351",
            "T1375",
            "T1452",
            "U_AEF"
          ]
        },
        {
          "id": "T1454",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "104857/500000",
          "sources": [
            "T1354",
            "L_FHO",
            "L_AEH",
            "T1351",
            "T1375",
            "T1424",
            "U_AEF"
          ]
        },
        {
          "id": "T1455",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "3673/31250",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1452",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1468",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "81133/250000",
          "sources": [
            "T1416",
            "L_CEP",
            "T1419"
          ]
        },
        {
          "id": "T1469",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "222021/500000",
          "sources": [
            "T1438",
            "T1452",
            "T1446"
          ]
        },
        {
          "id": "T1474",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178201/500000",
          "sources": [
            "T1438",
            "T1453",
            "L_AGO"
          ]
        },
        {
          "id": "T1484",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "7593/20000",
          "sources": [
            "U_AEF",
            "T1375",
            "T1421"
          ]
        },
        {
          "id": "T1489",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "334439/1000000",
          "sources": [
            "L_AEG",
            "T1436",
            "L_AGO"
          ]
        },
        {
          "id": "T1492",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "375971/1000000",
          "sources": [
            "T1446",
            "L_AGP",
            "T1450"
          ]
        },
        {
          "id": "T1496",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "349063/1000000",
          "sources": [
            "T1432",
            "T1452",
            "L_BFG"
          ]
        },
        {
          "id": "T1512",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "296237/500000",
          "sources": [
            "U_CEF",
            "T1421",
            "T1351"
          ]
        },
        {
          "id": "T1516",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "18971/62500",
          "sources": [
            "L_CEP",
            "T1455",
            "L_CGP"
          ]
        },
        {
          "id": "T1519",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "43989/125000",
          "sources": [
            "L_CEP",
            "T1422",
            "L_COP"
          ]
        },
        {
          "id": "T1521",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "350251/1000000",
          "sources": [
            "T1421",
            "L_FGO",
            "T1436"
          ]
        },
        {
          "id": "T1522",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "91931/250000",
          "sources": [
            "T1421",
            "L_FOP",
            "T1422"
          ]
        },
        {
          "id": "T1524",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "174819/500000",
          "sources": [
            "T1436",
            "L_EHO",
            "T1447"
          ]
        },
        {
          "id": "T1526",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "61043/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1468",
            "T0122"
          ]
        },
        {
          "id": "T1529",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "21377/200000",
          "sources": [
            "T1468",
            "L_COP",
            "T1474",
            "L_CEP",
            "T1512"
          ]
        },
        {
          "id": "T1532",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "62331/500000",
          "sources": [
            "T1526",
            "T1522",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1534",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "108813/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T1489",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T1535",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "165933/1000000",
          "sources": [
            "T1489",
            "T1522",
            "T1532",
            "T1534",
            "U_AEF"
          ]
        },
        {
          "id": "T1537",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "71147/500000",
          "sources": [
            "T1469",
            "L_FHO",
            "L_AFH",
            "T1351",
            "T1484"
          ]
        },
        {
          "id": "T1539",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "359/3125",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1492",
            "L_FHO",
            "T1484"
          ]
        },
        {
          "id": "T1545",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "26647/200000",
          "sources": [
            "L_ABC",
            "T1521",
            "L_AEG",
            "T1496",
            "T1446",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1548",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "148441/1000000",
          "sources": [
            "L_AEG",
            "T1454",
            "T1489",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T1550",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "80673/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1496",
            "T1446",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1558",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "39967/250000",
          "sources": [
            "T1550",
            "T1534",
            "L_AEG",
            "T1351",
            "L_AGO",
            "L_CEF",
            "T1512"
          ]
        },
        {
          "id": "T1559",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108207/1000000",
          "sources": [
            "T1519",
            "L_FGH",
            "T1351",
            "T1524",
            "L_CGH",
            "T1534",
            "U_CEF"
          ]
        },
        {
          "id": "T1562",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "61557/500000",
          "sources": [
            "T1516",
            "T1539",
            "T0260",
            "T1524",
            "L_CGH",
            "T1522",
            "U_CEH"
          ]
        },
        {
          "id": "T1563",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "167/1000",
          "sources": [
            "T1550",
            "L_EHO",
            "L_AEG",
            "T1454",
            "L_AGO",
            "L_CEH",
            "T1512"
          ]
        },
        {
          "id": "T1564",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "24567/200000",
          "sources": [
            "T1468",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1537",
            "U_AEH"
          ]
        },
        {
          "id": "T1565",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "6379/62500",
          "sources": [
            "T1468",
            "L_FGO",
            "L_AEG",
            "T1351",
            "T1489",
            "T1564",
            "U_AEF"
          ]
        },
        {
          "id": "T1566",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "104861/500000",
          "sources": [
            "T1468",
            "L_FHO",
            "L_AEH",
            "T1351",
            "T1489",
            "T1537",
            "U_AEF"
          ]
        },
        {
          "id": "T1567",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "117537/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1564",
            "L_DEP",
            "T0260",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1579",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "324547/1000000",
          "sources": [
            "T1529",
            "L_CEP",
            "T1532"
          ]
        },
        {
          "id": "T1580",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "444049/1000000",
          "sources": [
            "T1550",
            "T1564",
            "T1558"
          ]
        },
        {
          "id": "T1582",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "210673/500000",
          "sources": [
            "T1550",
            "L_CGH",
            "T1563"
          ]
        },
        {
          "id": "T1585",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "35641/100000",
          "sources": [
            "T1550",
            "T1565",
            "L_AGO"
          ]
        },
        {
          "id": "T1595",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "94911/250000",
          "sources": [
            "U_AEF",
            "T1489",
            "T1534"
          ]
        },
        {
          "id": "T1600",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "334441/1000000",
          "sources": [
            "L_AEG",
            "T1548",
            "L_AGO"
          ]
        },
        {
          "id": "T1603",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "187991/500000",
          "sources": [
            "T1558",
            "L_AGP",
            "T1562"
          ]
        },
        {
          "id": "T1607",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "34907/100000",
          "sources": [
            "T1545",
            "T1564",
            "L_BFG"
          ]
        },
        {
          "id": "T1623",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "592473/1000000",
          "sources": [
            "U_CEF",
            "T1534",
            "T1351"
          ]
        },
        {
          "id": "T1627",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "303537/1000000",
          "sources": [
            "L_CEP",
            "T1567",
            "L_CGP"
          ]
        },
        {
          "id": "T1630",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "351933/1000000",
          "sources": [
            "L_CEP",
            "T1535",
            "L_COP"
          ]
        },
        {
          "id": "T1632",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "175127/500000",
          "sources": [
            "T1534",
            "L_FGO",
            "T1548"
          ]
        },
        {
          "id": "T1633",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "183873/500000",
          "sources": [
            "T1534",
            "L_FOP",
            "T1535"
          ]
        },
        {
          "id": "T1635",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "21853/62500",
          "sources": [
            "T1548",
            "L_EHO",
            "T1559"
          ]
        },
        {
          "id": "T1637",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "15261/125000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1579",
            "T0122"
          ]
        },
        {
          "id": "T1640",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "106889/1000000",
          "sources": [
            "T1579",
            "L_COP",
            "T1585",
            "L_CEP",
            "T1623"
          ]
        },
        {
          "id": "T1643",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "62333/500000",
          "sources": [
            "T1637",
            "T1633",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1645",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "165943/1000000",
          "sources": [
            "T1600",
            "T1633",
            "T1643",
            "T1534",
            "U_AEF"
          ]
        },
        {
          "id": "T1647",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "71149/500000",
          "sources": [
            "T1580",
            "L_FHO",
            "L_AFH",
            "T1351",
            "T1595"
          ]
        },
        {
          "id": "T1649",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "28721/250000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1603",
            "L_FHO",
            "T1595"
          ]
        },
        {
          "id": "T1655",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "133237/1000000",
          "sources": [
            "L_ABC",
            "T1632",
            "L_AEG",
            "T1607",
            "T1558",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1658",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "74221/500000",
          "sources": [
            "L_AEG",
            "T1566",
            "T1600",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T1660",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "161347/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1607",
            "T1558",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1667",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108211/1000000",
          "sources": [
            "T1630",
            "L_FGH",
            "T1351",
            "T1635",
            "L_CGH",
            "T1534",
            "U_CEF"
          ]
        },
        {
          "id": "T1670",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "123119/1000000",
          "sources": [
            "T1627",
            "T1649",
            "T0260",
            "T1635",
            "L_CGH",
            "T1633",
            "U_CEH"
          ]
        },
        {
          "id": "T1671",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "83501/500000",
          "sources": [
            "T1660",
            "L_EHO",
            "L_AEG",
            "T1566",
            "L_AGO",
            "L_CEH",
            "T1623"
          ]
        },
        {
          "id": "T1672",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "122837/1000000",
          "sources": [
            "T1579",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1647",
            "U_AEH"
          ]
        },
        {
          "id": "T1673",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "102067/1000000",
          "sources": [
            "T1579",
            "L_FGO",
            "L_AEG",
            "T1351",
            "T1600",
            "T1672",
            "U_AEF"
          ]
        },
        {
          "id": "T1674",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "104863/500000",
          "sources": [
            "T1579",
            "L_FHO",
            "L_AEH",
            "T1351",
            "T1600",
            "T1647",
            "U_AEF"
          ]
        },
        {
          "id": "T1676",
          "relation": 4994,
          "rule": "linear",
          "triangle": "CHO",
          "side": "hi",
          "value": "125671/250000",
          "sources": [
            "T1582",
            "U_CEH"
          ]
        },
        {
          "id": "T1687",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "64911/200000",
          "sources": [
            "T1640",
            "L_CEP",
            "T1643"
          ]
        },
        {
          "id": "T1688",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "111013/250000",
          "sources": [
            "T1660",
            "T1672",
            "T1558"
          ]
        },
        {
          "id": "T1690",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "421349/1000000",
          "sources": [
            "T1660",
            "L_CGH",
            "T1671"
          ]
        },
        {
          "id": "T1693",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178207/500000",
          "sources": [
            "T1660",
            "T1673",
            "L_AGO"
          ]
        },
        {
          "id": "T1702",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "189821/500000",
          "sources": [
            "U_AEF",
            "T1600",
            "T1534"
          ]
        },
        {
          "id": "T1707",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "167221/500000",
          "sources": [
            "L_AEG",
            "T1658",
            "L_AGO"
          ]
        },
        {
          "id": "T1710",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "375987/1000000",
          "sources": [
            "T1558",
            "L_AGP",
            "T1670"
          ]
        },
        {
          "id": "T1734",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "351943/1000000",
          "sources": [
            "L_CEP",
            "T1645",
            "L_COP"
          ]
        },
        {
          "id": "T1736",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "91939/250000",
          "sources": [
            "T1534",
            "L_FOP",
            "T1645"
          ]
        },
        {
          "id": "T1737",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "349653/1000000",
          "sources": [
            "T1658",
            "L_EHO",
            "T1667"
          ]
        },
        {
          "id": "T1739",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "122089/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1687",
            "T0122"
          ]
        },
        {
          "id": "T1742",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "106891/1000000",
          "sources": [
            "T1687",
            "L_COP",
            "T1693",
            "L_CEP",
            "T1623"
          ]
        },
        {
          "id": "T1745",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "31167/250000",
          "sources": [
            "T1739",
            "T1736",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1746",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "41487/250000",
          "sources": [
            "T1707",
            "T1736",
            "T1745",
            "T1534",
            "U_AEF"
          ]
        },
        {
          "id": "T1748",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "142299/1000000",
          "sources": [
            "T1688",
            "L_FHO",
            "L_AFH",
            "T1351",
            "T1702"
          ]
        },
        {
          "id": "T1750",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "57443/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1710",
            "L_FHO",
            "T1702"
          ]
        },
        {
          "id": "T1752",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "44973/250000",
          "sources": [
            "T1687",
            "L_FHO",
            "T1690",
            "T1534",
            "L_AEH",
            "T1351",
            "U_CEH"
          ]
        },
        {
          "id": "T1756",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "148443/1000000",
          "sources": [
            "L_AEG",
            "T1674",
            "T1707",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "T0122"
          ]
        },
        {
          "id": "T1765",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108213/1000000",
          "sources": [
            "T1734",
            "L_FGH",
            "T1351",
            "T1737",
            "L_CGH",
            "T1534",
            "U_CEF"
          ]
        },
        {
          "id": "T1767",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "123121/1000000",
          "sources": [
            "T1627",
            "T1750",
            "T0260",
            "T1737",
            "L_CGH",
            "T1736",
            "U_CEH"
          ]
        },
        {
          "id": "T1768",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "167003/1000000",
          "sources": [
            "T1660",
            "L_EHO",
            "L_AEG",
            "T1674",
            "L_AGO",
            "L_CEH",
            "T1623"
          ]
        },
        {
          "id": "T1769",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "61419/500000",
          "sources": [
            "T1687",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1748",
            "U_AEH"
          ]
        },
        {
          "id": "T1780",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "324559/1000000",
          "sources": [
            "T1742",
            "L_CEP",
            "T1745"
          ]
        },
        {
          "id": "T1781",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "444053/1000000",
          "sources": [
            "T1660",
            "T1769",
            "T1558"
          ]
        },
        {
          "id": "T1792",
          "relation": 8,
          "rule": "sub",
          "triangle": "AEO",
          "side": "hi",
          "value": "534191/1000000",
          "sources": [
            "U_AEF",
            "T1534",
            "T1752"
          ]
        },
        {
          "id": "T1794",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "379641/1000000",
          "sources": [
            "U_AEF",
            "T1707",
            "T1534"
          ]
        },
        {
          "id": "T1799",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "334443/1000000",
          "sources": [
            "L_AEG",
            "T1756",
            "L_AGO"
          ]
        },
        {
          "id": "T1800",
          "relation": 11,
          "rule": "sub",
          "triangle": "AEG",
          "side": "hi",
          "value": "73187/250000",
          "sources": [
            "T1792",
            "T1756",
            "L_AGO"
          ]
        },
        {
          "id": "T1802",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "375989/1000000",
          "sources": [
            "T1558",
            "L_AGP",
            "T1767"
          ]
        },
        {
          "id": "T1806",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "13963/40000",
          "sources": [
            "T1655",
            "T1769",
            "L_BFG"
          ]
        },
        {
          "id": "T1827",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "21891/62500",
          "sources": [
            "T1534",
            "L_FGO",
            "T1756"
          ]
        },
        {
          "id": "T1828",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "367761/1000000",
          "sources": [
            "T1534",
            "L_FOP",
            "T1746"
          ]
        },
        {
          "id": "T1829",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "43707/125000",
          "sources": [
            "T1756",
            "L_EHO",
            "T1765"
          ]
        },
        {
          "id": "T1831",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "12209/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1780",
            "T0122"
          ]
        },
        {
          "id": "T1835",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "124669/1000000",
          "sources": [
            "T1831",
            "T1828",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1836",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "165951/1000000",
          "sources": [
            "T1799",
            "T1828",
            "T1835",
            "T1534",
            "U_AEF"
          ]
        },
        {
          "id": "T1838",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "1423/10000",
          "sources": [
            "T1781",
            "L_FHO",
            "L_AFH",
            "T1351",
            "T1794"
          ]
        },
        {
          "id": "T1840",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "114887/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1802",
            "L_FHO",
            "T1794"
          ]
        },
        {
          "id": "T1842",
          "relation": 2088,
          "rule": "balance_lo",
          "triangle": "BEG",
          "side": "lo",
          "value": "138261/1000000",
          "sources": [
            "T1831",
            "T1769",
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1806",
            "U_ACF"
          ]
        },
        {
          "id": "T1846",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "40337/250000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1806",
            "T1558",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1854",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "123123/1000000",
          "sources": [
            "T1627",
            "T1840",
            "T0260",
            "T1829",
            "L_CGH",
            "T1828",
            "U_CEH"
          ]
        },
        {
          "id": "T1855",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "122839/1000000",
          "sources": [
            "T1780",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1838",
            "U_AEH"
          ]
        },
        {
          "id": "T1856",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "102069/1000000",
          "sources": [
            "T1780",
            "L_FGO",
            "L_AEG",
            "T1351",
            "T1799",
            "T1855",
            "U_AEF"
          ]
        },
        {
          "id": "T1866",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "4057/12500",
          "sources": [
            "T1742",
            "L_CEP",
            "T1835"
          ]
        },
        {
          "id": "T1867",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "88811/200000",
          "sources": [
            "T1846",
            "T1855",
            "T1558"
          ]
        },
        {
          "id": "T1869",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "421351/1000000",
          "sources": [
            "T1846",
            "L_CGH",
            "T1768"
          ]
        },
        {
          "id": "T1870",
          "relation": 2,
          "rule": "sub",
          "triangle": "CGH",
          "side": "hi",
          "value": "446643/1000000",
          "sources": [
            "T0122",
            "T1846",
            "T1768"
          ]
        },
        {
          "id": "T1871",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356417/1000000",
          "sources": [
            "T1846",
            "T1856",
            "L_AGO"
          ]
        },
        {
          "id": "T1874",
          "relation": 7,
          "rule": "sub",
          "triangle": "AFG",
          "side": "hi",
          "value": "9491/25000",
          "sources": [
            "U_AEF",
            "L_AEG",
            "T1827"
          ]
        },
        {
          "id": "T1876",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "9491/25000",
          "sources": [
            "U_AEF",
            "T1799",
            "T1534"
          ]
        },
        {
          "id": "T1879",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "450557/1000000",
          "sources": [
            "U_AEH",
            "T1799",
            "L_EHO"
          ]
        },
        {
          "id": "T1880",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "375991/1000000",
          "sources": [
            "T1558",
            "L_AGP",
            "T1854"
          ]
        },
        {
          "id": "T1884",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "87269/250000",
          "sources": [
            "T1655",
            "T1855",
            "L_BFG"
          ]
        },
        {
          "id": "T1888",
          "relation": 20,
          "rule": "sub",
          "triangle": "BEG",
          "side": "hi",
          "value": "27109/62500",
          "sources": [
            "U_BEF",
            "T1827",
            "L_BFG"
          ]
        },
        {
          "id": "T1900",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "91941/250000",
          "sources": [
            "T1534",
            "L_FOP",
            "T1836"
          ]
        },
        {
          "id": "T1903",
          "relation": 70,
          "rule": "sumhi",
          "triangle": "ABG",
          "side": "hi",
          "value": "57237/200000",
          "sources": [
            "T0123",
            "T1874",
            "U_ABF",
            "T1800",
            "L_AEF"
          ]
        },
        {
          "id": "T1904",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "26723/250000",
          "sources": [
            "T1866",
            "L_COP",
            "T1871",
            "L_CEP",
            "T1623"
          ]
        },
        {
          "id": "T1905",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "2593/15625",
          "sources": [
            "T1799",
            "T1900",
            "T1835",
            "T1534",
            "U_AEF"
          ]
        },
        {
          "id": "T1907",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "142301/1000000",
          "sources": [
            "T1867",
            "L_FHO",
            "L_AFH",
            "T1351",
            "T1876"
          ]
        },
        {
          "id": "T1908",
          "relation": 571,
          "rule": "diffhi",
          "triangle": "FHO",
          "side": "hi",
          "value": "14621/62500",
          "sources": [
            "T1876",
            "T0126",
            "L_AFH",
            "T1351",
            "T1867"
          ]
        },
        {
          "id": "T1909",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "14361/125000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1880",
            "L_FHO",
            "T1876"
          ]
        },
        {
          "id": "T1910",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "179893/1000000",
          "sources": [
            "T1866",
            "L_FHO",
            "T1869",
            "T1534",
            "L_AEH",
            "T1351",
            "U_CEH"
          ]
        },
        {
          "id": "T1911",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "66619/500000",
          "sources": [
            "L_ABC",
            "T1827",
            "L_AEG",
            "T1884",
            "T1558",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1913",
          "relation": 2705,
          "rule": "balance_lo",
          "triangle": "AHO",
          "side": "lo",
          "value": "56647/250000",
          "sources": [
            "L_AEH",
            "L_FOP",
            "T1799",
            "T1909",
            "T1880",
            "L_EHO",
            "T0299"
          ]
        },
        {
          "id": "T1918",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "209729/1000000",
          "sources": [
            "T1866",
            "L_FHO",
            "L_AEH",
            "T1351",
            "T1799",
            "T1907",
            "U_AEF"
          ]
        },
        {
          "id": "T1921",
          "relation": 7025,
          "rule": "linear",
          "triangle": "AGO",
          "side": "hi",
          "value": "6631/25000",
          "sources": [
            "L_AEG",
            "T1874"
          ]
        },
        {
          "id": "T1923",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "324561/1000000",
          "sources": [
            "T1904",
            "L_CEP",
            "T1835"
          ]
        },
        {
          "id": "T1925",
          "relation": 8,
          "rule": "sub",
          "triangle": "AEO",
          "side": "hi",
          "value": "53419/100000",
          "sources": [
            "U_AEF",
            "T1534",
            "T1910"
          ]
        },
        {
          "id": "T1926",
          "relation": 8,
          "rule": "sub",
          "triangle": "EFO",
          "side": "hi",
          "value": "3857/12500",
          "sources": [
            "U_AEF",
            "T1799",
            "T1910"
          ]
        },
        {
          "id": "T1928",
          "relation": 10,
          "rule": "sub",
          "triangle": "EHO",
          "side": "hi",
          "value": "316969/1000000",
          "sources": [
            "U_AEH",
            "T1799",
            "T1913"
          ]
        },
        {
          "id": "T1929",
          "relation": 11,
          "rule": "sub",
          "triangle": "AEG",
          "side": "hi",
          "value": "292747/1000000",
          "sources": [
            "T1925",
            "T1756",
            "L_AGO"
          ]
        },
        {
          "id": "T1930",
          "relation": 11,
          "rule": "sub",
          "triangle": "EGO",
          "side": "hi",
          "value": "34819/100000",
          "sources": [
            "T1925",
            "L_AEG",
            "L_AGO"
          ]
        },
        {
          "id": "T1933",
          "relation": 17,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "82669/250000",
          "sources": [
            "T1911",
            "L_CGH",
            "T1433"
          ]
        },
        {
          "id": "T1941",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "21997/62500",
          "sources": [
            "L_CEP",
            "T1905",
            "L_COP"
          ]
        },
        {
          "id": "T1964",
          "relation": 30,
          "rule": "sub",
          "triangle": "CFO",
          "side": "hi",
          "value": "377361/1000000",
          "sources": [
            "U_CEF",
            "T1941",
            "T1534"
          ]
        }
      ],
      "physical": {}
    }
  ],
  "terminal": {
    "kind": "area_linear",
    "stage": 0,
    "sum": {
      "weights": [
        [
          16,
          "23"
        ],
        [
          20,
          "17"
        ],
        [
          22,
          "56"
        ],
        [
          60,
          "7"
        ],
        [
          66,
          "6"
        ],
        [
          117,
          "25"
        ],
        [
          455,
          "1"
        ],
        [
          2358,
          "2"
        ],
        [
          2375,
          "21"
        ],
        [
          2411,
          "2"
        ],
        [
          2419,
          "10"
        ],
        [
          2481,
          "1"
        ],
        [
          2562,
          "13"
        ],
        [
          2631,
          "100"
        ],
        [
          2712,
          "12"
        ],
        [
          2729,
          "21"
        ],
        [
          2817,
          "27"
        ],
        [
          3020,
          "8"
        ],
        [
          3032,
          "73"
        ],
        [
          3100,
          "75"
        ],
        [
          3232,
          "86"
        ]
      ],
      "factors": [
        {
          "index": 16,
          "coefficients": {
            "AEF": "1",
            "AEO": "-1",
            "AFO": "-1",
            "EFO": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "fan",
            "relation": 8,
            "direction": 1
          }
        },
        {
          "index": 20,
          "coefficients": {
            "AEH": "1",
            "AEO": "-1",
            "AHO": "-1",
            "EHO": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "fan",
            "relation": 10,
            "direction": 1
          }
        },
        {
          "index": 22,
          "coefficients": {
            "AEG": "-1",
            "AEO": "1",
            "AGO": "-1",
            "EGO": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "fan",
            "relation": 11,
            "direction": 1
          }
        },
        {
          "index": 60,
          "coefficients": {
            "CEF": "1",
            "CEO": "-1",
            "CFO": "-1",
            "EFO": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "fan",
            "relation": 30,
            "direction": 1
          }
        },
        {
          "index": 66,
          "coefficients": {
            "CEH": "1",
            "CEO": "-1",
            "CHO": "-1",
            "EHO": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "fan",
            "relation": 33,
            "direction": 1
          }
        },
        {
          "index": 117,
          "coefficients": {
            "ABE": "-1",
            "AEF": "-1"
          },
          "constant": "1",
          "origin": {
            "kind": "linear",
            "relation": 1060
          }
        },
        {
          "index": 455,
          "coefficients": {
            "CEF": "-1",
            "CFH": "-1"
          },
          "constant": "1",
          "origin": {
            "kind": "linear",
            "relation": 1461
          }
        },
        {
          "index": 2358,
          "coefficients": {
            "ABC": "-1",
            "ABH": "1",
            "ACH": "-1",
            "BCH": "1"
          },
          "constant": "0",
          "origin": {
            "kind": "four_point",
            "vertices": "ABCH",
            "direction": -1
          }
        },
        {
          "index": 2375,
          "coefficients": {
            "ABE": "1",
            "ABG": "-1",
            "AEG": "1",
            "BEG": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "four_point",
            "vertices": "ABEG",
            "direction": 1
          }
        },
        {
          "index": 2411,
          "coefficients": {
            "ACE": "1",
            "ACF": "-1",
            "AEF": "1",
            "CEF": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "four_point",
            "vertices": "ACEF",
            "direction": 1
          }
        },
        {
          "index": 2419,
          "coefficients": {
            "ACF": "1",
            "ACH": "-1",
            "AFH": "1",
            "CFH": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "four_point",
            "vertices": "ACFH",
            "direction": 1
          }
        },
        {
          "index": 2481,
          "coefficients": {
            "BCE": "1",
            "BCH": "-1",
            "BEH": "1",
            "CEH": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "four_point",
            "vertices": "BCEH",
            "direction": 1
          }
        },
        {
          "index": 2562,
          "coefficients": {
            "CFH": "-1",
            "CFO": "-1",
            "CHO": "1",
            "FHO": "1"
          },
          "constant": "0",
          "origin": {
            "kind": "four_point",
            "vertices": "CFHO",
            "direction": -1
          }
        },
        {
          "index": 2631,
          "coefficients": {
            "CEF": "-93/1000",
            "CEO": "3421/25000",
            "CFO": "499473/1000000"
          },
          "constant": "-2026850133/25000000000",
          "origin": {
            "kind": "nested_fan_product",
            "outer": "CEF",
            "first": "O",
            "second": "P",
            "line_sign": -1,
            "T": "CEO",
            "S": "CEF",
            "face": "CFO",
            "beta": "COP",
            "gamma": "CEP",
            "d": "FOP",
            "lower": [
              {
                "triangle": "FOP",
                "side": "lo",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "COP",
                "side": "lo",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "CEP",
                "side": "lo",
                "ref": "L_CEP",
                "value": "93/1000"
              }
            ],
            "envelope": {
              "type": "upper",
              "choice": 0,
              "bounds": [
                {
                  "triangle": "CEO",
                  "side": "hi",
                  "ref": "T1623",
                  "value": "592473/1000000"
                },
                {
                  "triangle": "CFO",
                  "side": "lo",
                  "ref": "T1351",
                  "value": "3421/25000"
                }
              ]
            }
          }
        },
        {
          "index": 2712,
          "coefficients": {
            "ACF": "-93/1000",
            "AEH": "-3421/25000",
            "AEO": "-142301/1000000",
            "AHO": "13857/20000",
            "CEF": "450557/1000000",
            "CFH": "-334443/1000000",
            "CFO": "-13857/20000",
            "EHO": "-88811/200000"
          },
          "constant": "-128470135107/1000000000000",
          "origin": {
            "kind": "product_linear_envelope",
            "relation": 2700,
            "orientation": -1,
            "products": [
              {
                "sign": -1,
                "X": "ACF",
                "Y": "EHO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ACF",
                    "side": "lo",
                    "ref": "T1867",
                    "value": "88811/200000"
                  },
                  {
                    "triangle": "EHO",
                    "side": "lo",
                    "ref": "L_EHO",
                    "value": "93/1000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AEH",
                "Y": "CFO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AEH",
                    "side": "lo",
                    "ref": "L_AEH",
                    "value": "13857/20000"
                  },
                  {
                    "triangle": "CFO",
                    "side": "lo",
                    "ref": "T1351",
                    "value": "3421/25000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AEO",
                "Y": "CFH",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AEO",
                    "side": "lo",
                    "ref": "T1799",
                    "value": "334443/1000000"
                  },
                  {
                    "triangle": "CFH",
                    "side": "lo",
                    "ref": "T1907",
                    "value": "142301/1000000"
                  }
                ]
              },
              {
                "sign": 1,
                "X": "AHO",
                "Y": "CEF",
                "type": "upper",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AHO",
                    "side": "hi",
                    "ref": "T1879",
                    "value": "450557/1000000"
                  },
                  {
                    "triangle": "CEF",
                    "side": "lo",
                    "ref": "L_CEF",
                    "value": "13857/20000"
                  }
                ]
              }
            ]
          }
        },
        {
          "index": 2729,
          "coefficients": {
            "ACE": "-93/1000",
            "ACH": "-108813/1000000",
            "AEH": "-3421/25000",
            "AFO": "949687/1000000",
            "CEH": "179893/1000000",
            "CFO": "-13857/20000",
            "EFO": "-421351/1000000",
            "FHO": "-324561/1000000"
          },
          "constant": "11867/62500000000",
          "origin": {
            "kind": "product_linear_envelope",
            "relation": 2353,
            "orientation": -1,
            "products": [
              {
                "sign": -1,
                "X": "ACE",
                "Y": "FHO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ACE",
                    "side": "lo",
                    "ref": "T1923",
                    "value": "324561/1000000"
                  },
                  {
                    "triangle": "FHO",
                    "side": "lo",
                    "ref": "L_FHO",
                    "value": "93/1000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "ACH",
                "Y": "EFO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ACH",
                    "side": "lo",
                    "ref": "T1869",
                    "value": "421351/1000000"
                  },
                  {
                    "triangle": "EFO",
                    "side": "lo",
                    "ref": "T1534",
                    "value": "108813/1000000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AEH",
                "Y": "CFO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AEH",
                    "side": "lo",
                    "ref": "L_AEH",
                    "value": "13857/20000"
                  },
                  {
                    "triangle": "CFO",
                    "side": "lo",
                    "ref": "T1351",
                    "value": "3421/25000"
                  }
                ]
              },
              {
                "sign": 1,
                "X": "AFO",
                "Y": "CEH",
                "type": "upper",
                "choice": 1,
                "bounds": [
                  {
                    "triangle": "AFO",
                    "side": "lo",
                    "ref": "T1910",
                    "value": "179893/1000000"
                  },
                  {
                    "triangle": "CEH",
                    "side": "hi",
                    "ref": "U_CEH",
                    "value": "949687/1000000"
                  }
                ]
              }
            ]
          }
        },
        {
          "index": 2817,
          "coefficients": {
            "ABE": "-93/1000",
            "ABG": "-13857/20000",
            "ACH": "138261/1000000",
            "AEG": "-82669/250000",
            "BCH": "-93/1000",
            "BEG": "387497/500000",
            "CEH": "-93/1000",
            "CGH": "-12209/100000"
          },
          "constant": "-304578717/500000000000",
          "origin": {
            "kind": "product_linear_envelope",
            "relation": 2089,
            "orientation": -1,
            "products": [
              {
                "sign": -1,
                "X": "ABE",
                "Y": "CGH",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ABE",
                    "side": "lo",
                    "ref": "T1831",
                    "value": "12209/100000"
                  },
                  {
                    "triangle": "CGH",
                    "side": "lo",
                    "ref": "L_CGH",
                    "value": "93/1000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "ABG",
                "Y": "CEH",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ABG",
                    "side": "lo",
                    "ref": "L_ABG",
                    "value": "93/1000"
                  },
                  {
                    "triangle": "CEH",
                    "side": "lo",
                    "ref": "L_CEH",
                    "value": "13857/20000"
                  }
                ]
              },
              {
                "sign": 1,
                "X": "ACH",
                "Y": "BEG",
                "type": "upper",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ACH",
                    "side": "hi",
                    "ref": "T0122",
                    "value": "387497/500000"
                  },
                  {
                    "triangle": "BEG",
                    "side": "lo",
                    "ref": "T1842",
                    "value": "138261/1000000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AEG",
                "Y": "BCH",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AEG",
                    "side": "lo",
                    "ref": "L_AEG",
                    "value": "93/1000"
                  },
                  {
                    "triangle": "BCH",
                    "side": "lo",
                    "ref": "T1933",
                    "value": "82669/250000"
                  }
                ]
              }
            ]
          }
        },
        {
          "index": 3020,
          "coefficients": {
            "ABC": "-13857/20000",
            "ABE": "19/25",
            "ABH": "-279/1000",
            "BCE": "-93/1000",
            "BCH": "12209/100000",
            "BEH": "-93/1000"
          },
          "constant": "-48127/20000000",
          "origin": {
            "kind": "product_linear_envelope",
            "relation": 152,
            "orientation": 1,
            "products": [
              {
                "sign": 1,
                "X": "ABE",
                "Y": "BCH",
                "type": "upper",
                "choice": 1,
                "bounds": [
                  {
                    "triangle": "ABE",
                    "side": "lo",
                    "ref": "T1831",
                    "value": "12209/100000"
                  },
                  {
                    "triangle": "BCH",
                    "side": "hi",
                    "ref": "U_BCH",
                    "value": "19/25"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "ABC",
                "Y": "BEH",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ABC",
                    "side": "lo",
                    "ref": "L_ABC",
                    "value": "93/1000"
                  },
                  {
                    "triangle": "BEH",
                    "side": "lo",
                    "ref": "L_BEH",
                    "value": "13857/20000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "ABH",
                "Y": "BCE",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ABH",
                    "side": "lo",
                    "ref": "L_ABH",
                    "value": "93/1000"
                  },
                  {
                    "triangle": "BCE",
                    "side": "lo",
                    "ref": "L_BCE",
                    "value": "279/1000"
                  }
                ]
              }
            ]
          }
        },
        {
          "index": 3032,
          "coefficients": {
            "ACH": "148443/1000000",
            "AEG": "-209729/1000000",
            "AEO": "-93/1000",
            "AGO": "-13857/20000",
            "CEH": "-93/1000",
            "CGH": "-334443/1000000",
            "CHO": "-93/1000",
            "EGO": "387497/500000"
          },
          "constant": "305829/500000000000",
          "origin": {
            "kind": "product_linear_envelope",
            "relation": 2677,
            "orientation": 1,
            "products": [
              {
                "sign": 1,
                "X": "ACH",
                "Y": "EGO",
                "type": "upper",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ACH",
                    "side": "hi",
                    "ref": "T0122",
                    "value": "387497/500000"
                  },
                  {
                    "triangle": "EGO",
                    "side": "lo",
                    "ref": "T1756",
                    "value": "148443/1000000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AEG",
                "Y": "CHO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AEG",
                    "side": "lo",
                    "ref": "L_AEG",
                    "value": "93/1000"
                  },
                  {
                    "triangle": "CHO",
                    "side": "lo",
                    "ref": "T1918",
                    "value": "209729/1000000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AEO",
                "Y": "CGH",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AEO",
                    "side": "lo",
                    "ref": "T1799",
                    "value": "334443/1000000"
                  },
                  {
                    "triangle": "CGH",
                    "side": "lo",
                    "ref": "L_CGH",
                    "value": "93/1000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AGO",
                "Y": "CEH",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AGO",
                    "side": "lo",
                    "ref": "L_AGO",
                    "value": "93/1000"
                  },
                  {
                    "triangle": "CEH",
                    "side": "lo",
                    "ref": "L_CEH",
                    "value": "13857/20000"
                  }
                ]
              }
            ]
          }
        },
        {
          "index": 3100,
          "coefficients": {
            "ACF": "-93/1000",
            "AFH": "-3421/25000",
            "AFO": "142301/1000000",
            "CFH": "9491/25000",
            "CFO": "-93/1000",
            "FHO": "-88811/200000"
          },
          "constant": "521/6250000000",
          "origin": {
            "kind": "product_linear_envelope",
            "relation": 571,
            "orientation": 1,
            "products": [
              {
                "sign": 1,
                "X": "AFO",
                "Y": "CFH",
                "type": "upper",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AFO",
                    "side": "hi",
                    "ref": "T1876",
                    "value": "9491/25000"
                  },
                  {
                    "triangle": "CFH",
                    "side": "lo",
                    "ref": "T1907",
                    "value": "142301/1000000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "ACF",
                "Y": "FHO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "ACF",
                    "side": "lo",
                    "ref": "T1867",
                    "value": "88811/200000"
                  },
                  {
                    "triangle": "FHO",
                    "side": "lo",
                    "ref": "L_FHO",
                    "value": "93/1000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AFH",
                "Y": "CFO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AFH",
                    "side": "lo",
                    "ref": "L_AFH",
                    "value": "93/1000"
                  },
                  {
                    "triangle": "CFO",
                    "side": "lo",
                    "ref": "T1351",
                    "value": "3421/25000"
                  }
                ]
              }
            ]
          }
        },
        {
          "index": 3232,
          "coefficients": {
            "AEO": "-93/1000",
            "AFO": "-93/1000",
            "AHO": "108813/1000000",
            "EFO": "450557/1000000",
            "EHO": "-179893/1000000",
            "FHO": "-334443/1000000"
          },
          "constant": "-1193210841/1000000000000",
          "origin": {
            "kind": "product_linear_envelope",
            "relation": 885,
            "orientation": 1,
            "products": [
              {
                "sign": 1,
                "X": "AHO",
                "Y": "EFO",
                "type": "upper",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AHO",
                    "side": "hi",
                    "ref": "T1879",
                    "value": "450557/1000000"
                  },
                  {
                    "triangle": "EFO",
                    "side": "lo",
                    "ref": "T1534",
                    "value": "108813/1000000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AEO",
                "Y": "FHO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AEO",
                    "side": "lo",
                    "ref": "T1799",
                    "value": "334443/1000000"
                  },
                  {
                    "triangle": "FHO",
                    "side": "lo",
                    "ref": "L_FHO",
                    "value": "93/1000"
                  }
                ]
              },
              {
                "sign": -1,
                "X": "AFO",
                "Y": "EHO",
                "type": "lower",
                "choice": 0,
                "bounds": [
                  {
                    "triangle": "AFO",
                    "side": "lo",
                    "ref": "T1910",
                    "value": "179893/1000000"
                  },
                  {
                    "triangle": "EHO",
                    "side": "lo",
                    "ref": "L_EHO",
                    "value": "93/1000"
                  }
                ]
              }
            ]
          }
        }
      ],
      "sum": {
        "constant": "8106349277009/500000000000",
        "coefficients": {
          "AEO": "-123653/250000",
          "AFO": "-190999/500000",
          "EFO": "-100469/1000000",
          "AEH": "312107/25000",
          "AHO": "336059/500000",
          "EHO": "-21899729/500000",
          "AEG": "-59238469/1000000",
          "AGO": "-2131561/20000",
          "EGO": "287281/500000",
          "CEF": "26671/250000",
          "CEO": "171/250",
          "CFO": "433/4000",
          "CEH": "-522247/1000000",
          "CHO": "211/1000",
          "ABE": "-431/1000",
          "CFH": "114921/250000",
          "ABC": "-18857/2500",
          "ABH": "-29/125",
          "ACH": "284313/1000000",
          "BCH": "-13357/25000",
          "ABG": "-794139/20000",
          "BEG": "-37581/500000",
          "ACE": "47/1000",
          "ACF": "-91/1000",
          "AFH": "-263/1000",
          "BCE": "32/125",
          "BEH": "32/125",
          "FHO": "-13970501/250000",
          "CGH": "-27710769/1000000"
        }
      },
      "upper": "-3444839303459/1000000000000",
      "scale": 100,
      "threshold": 0,
      "box": {
        "AEO": {
          "lo": {
            "triangle": "AEO",
            "side": "lo",
            "ref": "T1799",
            "value": "334443/1000000"
          },
          "hi": {
            "triangle": "AEO",
            "side": "hi",
            "ref": "T1925",
            "value": "53419/100000"
          }
        },
        "AFO": {
          "lo": {
            "triangle": "AFO",
            "side": "lo",
            "ref": "T1910",
            "value": "179893/1000000"
          },
          "hi": {
            "triangle": "AFO",
            "side": "hi",
            "ref": "T1876",
            "value": "9491/25000"
          }
        },
        "EFO": {
          "lo": {
            "triangle": "EFO",
            "side": "lo",
            "ref": "T1534",
            "value": "108813/1000000"
          },
          "hi": {
            "triangle": "EFO",
            "side": "hi",
            "ref": "T1926",
            "value": "3857/12500"
          }
        },
        "AEH": {
          "lo": {
            "triangle": "AEH",
            "side": "lo",
            "ref": "L_AEH",
            "value": "13857/20000"
          },
          "hi": {
            "triangle": "AEH",
            "side": "hi",
            "ref": "U_AEH",
            "value": "439/500"
          }
        },
        "AHO": {
          "lo": {
            "triangle": "AHO",
            "side": "lo",
            "ref": "T1913",
            "value": "56647/250000"
          },
          "hi": {
            "triangle": "AHO",
            "side": "hi",
            "ref": "T1879",
            "value": "450557/1000000"
          }
        },
        "EHO": {
          "lo": {
            "triangle": "EHO",
            "side": "lo",
            "ref": "L_EHO",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "EHO",
            "side": "hi",
            "ref": "T1928",
            "value": "316969/1000000"
          }
        },
        "AEG": {
          "lo": {
            "triangle": "AEG",
            "side": "lo",
            "ref": "L_AEG",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "AEG",
            "side": "hi",
            "ref": "T1929",
            "value": "292747/1000000"
          }
        },
        "AGO": {
          "lo": {
            "triangle": "AGO",
            "side": "lo",
            "ref": "L_AGO",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "AGO",
            "side": "hi",
            "ref": "T1921",
            "value": "6631/25000"
          }
        },
        "EGO": {
          "lo": {
            "triangle": "EGO",
            "side": "lo",
            "ref": "T1756",
            "value": "148443/1000000"
          },
          "hi": {
            "triangle": "EGO",
            "side": "hi",
            "ref": "T1930",
            "value": "34819/100000"
          }
        },
        "CEF": {
          "lo": {
            "triangle": "CEF",
            "side": "lo",
            "ref": "L_CEF",
            "value": "13857/20000"
          },
          "hi": {
            "triangle": "CEF",
            "side": "hi",
            "ref": "U_CEF",
            "value": "419063/500000"
          }
        },
        "CEO": {
          "lo": {
            "triangle": "CEO",
            "side": "lo",
            "ref": "T1941",
            "value": "21997/62500"
          },
          "hi": {
            "triangle": "CEO",
            "side": "hi",
            "ref": "T1623",
            "value": "592473/1000000"
          }
        },
        "CFO": {
          "lo": {
            "triangle": "CFO",
            "side": "lo",
            "ref": "T1351",
            "value": "3421/25000"
          },
          "hi": {
            "triangle": "CFO",
            "side": "hi",
            "ref": "T1964",
            "value": "377361/1000000"
          }
        },
        "CEH": {
          "lo": {
            "triangle": "CEH",
            "side": "lo",
            "ref": "L_CEH",
            "value": "13857/20000"
          },
          "hi": {
            "triangle": "CEH",
            "side": "hi",
            "ref": "U_CEH",
            "value": "949687/1000000"
          }
        },
        "CHO": {
          "lo": {
            "triangle": "CHO",
            "side": "lo",
            "ref": "T1918",
            "value": "209729/1000000"
          },
          "hi": {
            "triangle": "CHO",
            "side": "hi",
            "ref": "T1676",
            "value": "125671/250000"
          }
        },
        "ABE": {
          "lo": {
            "triangle": "ABE",
            "side": "lo",
            "ref": "T1831",
            "value": "12209/100000"
          },
          "hi": {
            "triangle": "ABE",
            "side": "hi",
            "ref": "T0123",
            "value": "6143/20000"
          }
        },
        "CFH": {
          "lo": {
            "triangle": "CFH",
            "side": "lo",
            "ref": "T1907",
            "value": "142301/1000000"
          },
          "hi": {
            "triangle": "CFH",
            "side": "hi",
            "ref": "T0126",
            "value": "6143/20000"
          }
        },
        "ABC": {
          "lo": {
            "triangle": "ABC",
            "side": "lo",
            "ref": "L_ABC",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "ABC",
            "side": "hi",
            "ref": "T0318",
            "value": "299469/1000000"
          }
        },
        "ABH": {
          "lo": {
            "triangle": "ABH",
            "side": "lo",
            "ref": "L_ABH",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "ABH",
            "side": "hi",
            "ref": "U_ABH",
            "value": "122481/500000"
          }
        },
        "ACH": {
          "lo": {
            "triangle": "ACH",
            "side": "lo",
            "ref": "T1869",
            "value": "421351/1000000"
          },
          "hi": {
            "triangle": "ACH",
            "side": "hi",
            "ref": "T0122",
            "value": "387497/500000"
          }
        },
        "BCH": {
          "lo": {
            "triangle": "BCH",
            "side": "lo",
            "ref": "T1933",
            "value": "82669/250000"
          },
          "hi": {
            "triangle": "BCH",
            "side": "hi",
            "ref": "U_BCH",
            "value": "19/25"
          }
        },
        "ABG": {
          "lo": {
            "triangle": "ABG",
            "side": "lo",
            "ref": "L_ABG",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "ABG",
            "side": "hi",
            "ref": "T1903",
            "value": "57237/200000"
          }
        },
        "BEG": {
          "lo": {
            "triangle": "BEG",
            "side": "lo",
            "ref": "T1842",
            "value": "138261/1000000"
          },
          "hi": {
            "triangle": "BEG",
            "side": "hi",
            "ref": "T1888",
            "value": "27109/62500"
          }
        },
        "ACE": {
          "lo": {
            "triangle": "ACE",
            "side": "lo",
            "ref": "T1923",
            "value": "324561/1000000"
          },
          "hi": {
            "triangle": "ACE",
            "side": "hi",
            "ref": "U_ACE",
            "value": "440513/500000"
          }
        },
        "ACF": {
          "lo": {
            "triangle": "ACF",
            "side": "lo",
            "ref": "T1867",
            "value": "88811/200000"
          },
          "hi": {
            "triangle": "ACF",
            "side": "hi",
            "ref": "U_ACF",
            "value": "25291/31250"
          }
        },
        "AFH": {
          "lo": {
            "triangle": "AFH",
            "side": "lo",
            "ref": "L_AFH",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "AFH",
            "side": "hi",
            "ref": "U_AFH",
            "value": "122481/500000"
          }
        },
        "BCE": {
          "lo": {
            "triangle": "BCE",
            "side": "lo",
            "ref": "L_BCE",
            "value": "279/1000"
          },
          "hi": {
            "triangle": "BCE",
            "side": "hi",
            "ref": "U_BCE",
            "value": "17233/25000"
          }
        },
        "BEH": {
          "lo": {
            "triangle": "BEH",
            "side": "lo",
            "ref": "L_BEH",
            "value": "13857/20000"
          },
          "hi": {
            "triangle": "BEH",
            "side": "hi",
            "ref": "U_BEH",
            "value": "988561/1000000"
          }
        },
        "FHO": {
          "lo": {
            "triangle": "FHO",
            "side": "lo",
            "ref": "L_FHO",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "FHO",
            "side": "hi",
            "ref": "T1908",
            "value": "14621/62500"
          }
        },
        "CGH": {
          "lo": {
            "triangle": "CGH",
            "side": "lo",
            "ref": "L_CGH",
            "value": "93/1000"
          },
          "hi": {
            "triangle": "CGH",
            "side": "hi",
            "ref": "T1870",
            "value": "446643/1000000"
          }
        }
      }
    }
  }
}
```
