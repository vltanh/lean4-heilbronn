# CA_+-+_AEG+

```n7-central-e-only-packet
{
  "id": "CA_+-+_AEG+",
  "cell": "CA",
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
          "139/1000",
          "27/250",
          "541/1000",
          "3/25",
          "57/100",
          "27/250",
          "59/500",
          "613/1000",
          "139/1000",
          "27/250",
          "3/25",
          "27/250",
          "3/25"
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
          "773/1000",
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
        "L_ACE": {
          "triangle": "ACE",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACE",
            "points": [
              "P"
            ]
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
        "L_EFP": {
          "triangle": "EFP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFP",
            "points": [
              "O"
            ]
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
        "L_GHP": {
          "triangle": "GHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HGP",
            "points": []
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
              "372171/1000000",
              "519573/1000000",
              "69311/125000",
              "116691/200000",
              "124557/200000",
              "402551/500000",
              "102143/125000",
              "440513/500000"
            ],
            "cell": "CA"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "199761/250000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "48879/200000",
              "2817/8000",
              "36153/100000",
              "23463/50000",
              "480813/1000000",
              "252291/500000",
              "31011/40000",
              "199761/250000"
            ],
            "cell": "CA"
          }
        },
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "760263/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "-7947/125000",
              "-4869/125000",
              "34083/200000",
              "128217/500000",
              "55629/200000",
              "209271/500000",
              "465801/1000000",
              "760263/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "203613/250000",
          "witness": {
            "kind": "cap",
            "cap": "AEF",
            "value": "203613/250000"
          }
        },
        "U_AEH": {
          "triangle": "AEH",
          "side": "hi",
          "value": "861/1000",
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
              "237/500",
              "861/1000"
            ],
            "cell": "CA"
          }
        },
        "U_AFH": {
          "triangle": "AFH",
          "side": "hi",
          "value": "240219/1000000",
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
              "-243/31250",
              "1701/50000",
              "6399/125000",
              "17577/200000",
              "23247/250000",
              "66123/500000",
              "240219/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BEF": {
          "triangle": "BEF",
          "side": "hi",
          "value": "223/250",
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
              "736903/1000000",
              "79453/100000",
              "81847/100000",
              "876097/1000000",
              "223/250"
            ],
            "cell": "CA"
          }
        },
        "U_CDF": {
          "triangle": "CDF",
          "side": "hi",
          "value": "152853/200000",
          "witness": {
            "kind": "vertices",
            "signed": "CDF",
            "used": [
              2,
              3,
              5
            ],
            "values": [
              "4737/25000",
              "21/100",
              "12261/25000",
              "6387/12500",
              "27141/50000",
              "64371/100000",
              "5307/8000",
              "152853/200000"
            ],
            "cell": "CA"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "851731/1000000",
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
              "447/800",
              "30417/50000",
              "166207/250000",
              "348317/500000",
              "70581/100000",
              "32797/40000",
              "851731/1000000"
            ],
            "cell": "CA"
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
            "cell": "CA"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "202261/250000",
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
              "-127557/500000",
              "-6993/50000",
              "351/25000",
              "106119/1000000",
              "221373/1000000",
              "30189/100000",
              "447811/1000000",
              "45579/100000",
              "547869/1000000",
              "663123/1000000",
              "143393/200000",
              "202261/250000"
            ],
            "cell": "CA"
          }
        },
        "U_EFP": {
          "triangle": "EFP",
          "side": "hi",
          "value": "2453/3125",
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
              "-125147/500000",
              "-192667/1000000",
              "10881/1000000",
              "20739/250000",
              "140583/1000000",
              "9369/25000",
              "45171/100000",
              "144577/250000",
              "650383/1000000",
              "70801/100000",
              "142577/200000",
              "2453/3125"
            ],
            "cell": "CA"
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
        "14": {
          "row": [
            "fan",
            "AOP",
            "AGO",
            "AGP",
            "GOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "OAP",
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
        "39": {
          "row": [
            "fan",
            "EHP",
            "EHO",
            "HOP",
            "EOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "EHP",
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
        "469": {
          "row": [
            "plu",
            "AEH",
            "EOP",
            "AEO",
            "EHP",
            "AEP",
            "EHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "EAHOP"
          }
        },
        "566": {
          "row": [
            "plu",
            "AFO",
            "CEF",
            "ACF",
            "EFO",
            "AEF",
            "CFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FACEO"
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
        "2439": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "EFH"
              ],
              [
                -1,
                "ACH",
                "EFG"
              ],
              [
                1,
                "AEF",
                "CGH"
              ],
              [
                1,
                "AGH",
                "CEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACG",
            "point": "H",
            "line": "EF"
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
        "3560": {
          "row": [
            "balance",
            [
              [
                1,
                "CEF",
                "GOP"
              ],
              [
                -1,
                "CEG",
                "FOP"
              ],
              [
                -1,
                "CFG",
                "EOP"
              ],
              [
                -1,
                "COP",
                "EFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEF",
            "point": "G",
            "line": "OP"
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
        "4104": {
          "row": [
            "balance",
            [
              [
                1,
                "AEF",
                "GHP"
              ],
              [
                1,
                "AEG",
                "FHP"
              ],
              [
                -1,
                "AEH",
                "FGP"
              ],
              [
                1,
                "AEP",
                "FGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "FGH",
            "point": "P",
            "line": "AE"
          }
        },
        "4127": {
          "row": [
            "balance",
            [
              [
                1,
                "AEF",
                "HOP"
              ],
              [
                -1,
                "AEH",
                "FOP"
              ],
              [
                -1,
                "AEO",
                "FHP"
              ],
              [
                -1,
                "AEP",
                "FHO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "FHO",
            "point": "P",
            "line": "AE"
          }
        },
        "4994": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "CEH": "489/1000",
              "CHO": "-861/1000"
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
              "value": "861/1000"
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
            "residual": "99/250"
          }
        },
        "6529": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AEG": "-93/1000",
              "AFG": "665731/1000000",
              "AGO": "-851731/1000000"
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
              "value": "851731/1000000"
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
            "residual": "386731/1000000"
          }
        },
        "7000": {
          "row": [
            "linear",
            {
              "CFO": "155761/250000",
              "EFO": "-93/1000",
              "FOP": "-202261/250000"
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
              "value": "202261/250000"
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
            "residual": "132511/250000"
          }
        },
        "7135": {
          "row": [
            "linear",
            {
              "CEP": "-93/1000",
              "CFP": "7487/12500",
              "COP": "-2453/3125"
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
              "value": "2453/3125"
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
            "residual": "12649/25000"
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
          "value": "157113/250000",
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
          "value": "157113/250000",
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
          "value": "110613/250000",
          "sources": [
            "U_AEF",
            "L_AEO",
            "L_EFO"
          ]
        },
        {
          "id": "T0053",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "665731/1000000",
          "sources": [
            "U_CEF",
            "L_EFO",
            "L_CFO"
          ]
        },
        {
          "id": "T0056",
          "relation": 31,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "665731/1000000",
          "sources": [
            "U_CEF",
            "L_CEP",
            "L_CFP"
          ]
        },
        {
          "id": "T0069",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "59441/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "L_ACE",
            "U_ACH"
          ]
        },
        {
          "id": "T0070",
          "relation": 131,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "29073/250000",
          "sources": [
            "L_AEF",
            "L_AGO",
            "L_AEG",
            "L_AFO",
            "T0018"
          ]
        },
        {
          "id": "T0076",
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
          "id": "T0078",
          "relation": 346,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "5489/50000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "T0053"
          ]
        },
        {
          "id": "T0081",
          "relation": 415,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "309049/1000000",
          "sources": [
            "T0069",
            "L_CEF",
            "L_AEF",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0085",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "5471/50000",
          "sources": [
            "T0069",
            "L_EFP",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0088",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "104973/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "L_AEO",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0106",
          "relation": 626,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "116613/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0076",
            "L_EFH",
            "T0016"
          ]
        },
        {
          "id": "T0107",
          "relation": 631,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "57049/500000",
          "sources": [
            "L_CEF",
            "L_FOP",
            "T0078",
            "T0088",
            "T0056"
          ]
        },
        {
          "id": "T0118",
          "relation": 886,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "124837/1000000",
          "sources": [
            "L_AEO",
            "L_FOP",
            "L_AOP",
            "T0088",
            "T0020"
          ]
        },
        {
          "id": "T0123",
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
          "value": "103553/1000000",
          "sources": [
            "L_ABC",
            "L_EFG",
            "L_AEG",
            "L_BCF",
            "T0070",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0145",
          "relation": 2627,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "160779/1000000",
          "sources": [
            "L_ACO",
            "L_EFH",
            "L_AEH",
            "T0107",
            "L_AFH",
            "L_CEO",
            "U_AEF"
          ]
        },
        {
          "id": "T0147",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "100353/1000000",
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
          "id": "T0153",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "2771/20000",
          "sources": [
            "L_AEG",
            "T0145",
            "L_AEO",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T0158",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "137699/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "L_BCF",
            "T0070",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0172",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "60407/500000",
          "sources": [
            "T0081",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0106",
            "U_AEH"
          ]
        },
        {
          "id": "T0174",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "112369/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0172",
            "L_DEP",
            "T0078",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0175",
          "relation": 4104,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "96701/1000000",
          "sources": [
            "L_AEF",
            "L_GHP",
            "L_AEG",
            "L_FHP",
            "T0085",
            "L_FGH",
            "U_AEH"
          ]
        },
        {
          "id": "T0236",
          "relation": 6529,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "151211/1000000",
          "sources": [
            "T0158",
            "L_AEG",
            "L_AGO"
          ]
        },
        {
          "id": "T0253",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "8527/62500",
          "sources": [
            "T0088",
            "L_FOP"
          ]
        },
        {
          "id": "T0256",
          "relation": 7135,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "426/3125",
          "sources": [
            "L_CEP",
            "L_COP"
          ]
        },
        {
          "id": "T0263",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "323699/1000000",
          "sources": [
            "T0158",
            "L_CGO",
            "L_AGO"
          ]
        },
        {
          "id": "T0270",
          "relation": 7,
          "rule": "sub",
          "triangle": "EFG",
          "side": "hi",
          "value": "570241/1000000",
          "sources": [
            "U_AEF",
            "L_AEG",
            "T0236"
          ]
        },
        {
          "id": "T0273",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "430479/1000000",
          "sources": [
            "U_AEF",
            "L_AEO",
            "T0088"
          ]
        },
        {
          "id": "T0276",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "6491/20000",
          "sources": [
            "L_AEG",
            "T0153",
            "L_AGO"
          ]
        },
        {
          "id": "T0279",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "21307/62500",
          "sources": [
            "T0236",
            "L_AGP",
            "T0175"
          ]
        },
        {
          "id": "T0281",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "317367/1000000",
          "sources": [
            "T0138",
            "T0172",
            "L_BFG"
          ]
        },
        {
          "id": "T0294",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "305163/500000",
          "sources": [
            "U_CEF",
            "T0088",
            "T0253"
          ]
        },
        {
          "id": "T0297",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "298369/1000000",
          "sources": [
            "L_CEP",
            "T0174",
            "L_CGP"
          ]
        },
        {
          "id": "T0302",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "336523/1000000",
          "sources": [
            "T0088",
            "L_FGO",
            "T0153"
          ]
        },
        {
          "id": "T0304",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "32281/100000",
          "sources": [
            "T0088",
            "L_FOP",
            "T0118"
          ]
        },
        {
          "id": "T0305",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "331903/1000000",
          "sources": [
            "T0153",
            "L_EHO",
            "T0147"
          ]
        },
        {
          "id": "T0309",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "61279/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0081",
            "U_ACH"
          ]
        },
        {
          "id": "T0321",
          "relation": 415,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "62381/200000",
          "sources": [
            "T0309",
            "L_CEF",
            "L_AEF",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0323",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "116589/1000000",
          "sources": [
            "T0309",
            "T0304",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0324",
          "relation": 442,
          "rule": "sumlo",
          "triangle": "CEO",
          "side": "lo",
          "value": "316293/1000000",
          "sources": [
            "T0321",
            "T0088",
            "T0276",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0326",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "109893/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0276",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0328",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "144367/1000000",
          "sources": [
            "T0276",
            "T0304",
            "T0323",
            "T0326",
            "U_AEF"
          ]
        },
        {
          "id": "T0335",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "93741/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0279",
            "L_FHO",
            "T0273"
          ]
        },
        {
          "id": "T0339",
          "relation": 626,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "132699/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0172",
            "L_EFH",
            "T0270"
          ]
        },
        {
          "id": "T0352",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "1976/15625",
          "sources": [
            "L_ABC",
            "T0302",
            "L_AEG",
            "T0281",
            "T0236",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0356",
          "relation": 2627,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "9457/50000",
          "sources": [
            "T0263",
            "L_EFH",
            "L_AEH",
            "T0253",
            "L_AFH",
            "T0324",
            "U_AEF"
          ]
        },
        {
          "id": "T0358",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "52777/500000",
          "sources": [
            "L_AEH",
            "L_FGO",
            "L_AFH",
            "T0153",
            "L_AGO",
            "L_EFH",
            "U_AEF"
          ]
        },
        {
          "id": "T0363",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "147591/1000000",
          "sources": [
            "L_AEG",
            "T0356",
            "T0276",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T0365",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "152621/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0281",
            "T0236",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0374",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "38461/250000",
          "sources": [
            "T0365",
            "T0326",
            "L_AEG",
            "T0253",
            "L_AGO",
            "L_CEF",
            "T0294"
          ]
        },
        {
          "id": "T0377",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "21741/200000",
          "sources": [
            "T0297",
            "T0335",
            "T0256",
            "T0305",
            "L_CGH",
            "T0304",
            "U_CEH"
          ]
        },
        {
          "id": "T0379",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "6143/50000",
          "sources": [
            "T0321",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0339",
            "U_AEH"
          ]
        },
        {
          "id": "T0380",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "12519/125000",
          "sources": [
            "T0321",
            "L_FGO",
            "L_AEG",
            "T0253",
            "T0276",
            "T0379",
            "U_AEF"
          ]
        },
        {
          "id": "T0381",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "51139/250000",
          "sources": [
            "T0321",
            "L_FHO",
            "L_AEH",
            "T0253",
            "T0276",
            "T0339",
            "U_AEF"
          ]
        },
        {
          "id": "T0382",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "14481/125000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0379",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0401",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "137167/1000000",
          "sources": [
            "T0326",
            "L_FOP"
          ]
        },
        {
          "id": "T0402",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "17173/40000",
          "sources": [
            "T0365",
            "T0379",
            "T0374"
          ]
        },
        {
          "id": "T0406",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "345773/1000000",
          "sources": [
            "T0365",
            "T0380",
            "L_AGO"
          ]
        },
        {
          "id": "T0417",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "380009/1000000",
          "sources": [
            "U_AEF",
            "T0276",
            "T0326"
          ]
        },
        {
          "id": "T0422",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "333591/1000000",
          "sources": [
            "L_AEG",
            "T0363",
            "L_AGO"
          ]
        },
        {
          "id": "T0425",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "355549/1000000",
          "sources": [
            "T0374",
            "L_AGP",
            "T0377"
          ]
        },
        {
          "id": "T0428",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "85581/250000",
          "sources": [
            "T0352",
            "T0379",
            "L_BFG"
          ]
        },
        {
          "id": "T0444",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "604671/1000000",
          "sources": [
            "U_CEF",
            "T0326",
            "T0401"
          ]
        },
        {
          "id": "T0446",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "37731/125000",
          "sources": [
            "L_CEP",
            "T0382",
            "L_CGP"
          ]
        },
        {
          "id": "T0452",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "87621/250000",
          "sources": [
            "T0326",
            "L_FGO",
            "T0363"
          ]
        },
        {
          "id": "T0453",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "17363/50000",
          "sources": [
            "T0326",
            "L_FOP",
            "T0328"
          ]
        },
        {
          "id": "T0454",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "69229/200000",
          "sources": [
            "T0363",
            "L_EHO",
            "T0358"
          ]
        },
        {
          "id": "T0456",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "122907/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0321",
            "U_ACH"
          ]
        },
        {
          "id": "T0463",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "3161/31250",
          "sources": [
            "T0321",
            "L_COP",
            "T0406",
            "L_CEP",
            "T0444"
          ]
        },
        {
          "id": "T0464",
          "relation": 415,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "19511/62500",
          "sources": [
            "T0456",
            "L_CEF",
            "L_AEF",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0466",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "30021/250000",
          "sources": [
            "T0456",
            "T0453",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0468",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "110869/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0422",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0470",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "69319/500000",
          "sources": [
            "T0402",
            "L_FHO",
            "L_AFH",
            "T0401",
            "T0417"
          ]
        },
        {
          "id": "T0473",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "109773/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0425",
            "L_FHO",
            "T0417"
          ]
        },
        {
          "id": "T0475",
          "relation": 886,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "163039/1000000",
          "sources": [
            "T0422",
            "L_FOP",
            "L_AOP",
            "T0468",
            "T0417"
          ]
        },
        {
          "id": "T0483",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "13181/100000",
          "sources": [
            "L_ABC",
            "T0452",
            "L_AEG",
            "T0428",
            "T0374",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0486",
          "relation": 2626,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "61963/500000",
          "sources": [
            "T0365",
            "L_EFH",
            "L_AEF",
            "L_CGH",
            "L_AFH",
            "T0446",
            "U_AEH"
          ]
        },
        {
          "id": "T0488",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "106587/1000000",
          "sources": [
            "L_AEH",
            "L_FGO",
            "L_AFH",
            "T0363",
            "L_AGO",
            "L_EFH",
            "U_AEF"
          ]
        },
        {
          "id": "T0492",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "150583/1000000",
          "sources": [
            "L_AEG",
            "T0381",
            "T0422",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T0495",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "78023/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0428",
            "T0374",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0504",
          "relation": 3560,
          "rule": "balance_lo",
          "triangle": "GOP",
          "side": "lo",
          "value": "94949/1000000",
          "sources": [
            "T0446",
            "L_FOP",
            "T0486",
            "T0475",
            "L_COP",
            "T0452",
            "U_CEF"
          ]
        },
        {
          "id": "T0505",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "15627/100000",
          "sources": [
            "T0495",
            "T0468",
            "L_AEG",
            "T0401",
            "L_AGO",
            "L_CEF",
            "T0444"
          ]
        },
        {
          "id": "T0508",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "59291/500000",
          "sources": [
            "T0446",
            "T0473",
            "T0256",
            "T0454",
            "L_CGH",
            "T0453",
            "U_CEH"
          ]
        },
        {
          "id": "T0509",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "162023/1000000",
          "sources": [
            "T0495",
            "L_EHO",
            "L_AEG",
            "T0381",
            "L_AGO",
            "L_CEH",
            "T0444"
          ]
        },
        {
          "id": "T0510",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "25517/250000",
          "sources": [
            "T0464",
            "L_FGO",
            "L_AEG",
            "T0401",
            "T0422",
            "T0486",
            "U_AEF"
          ]
        },
        {
          "id": "T0511",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "104559/500000",
          "sources": [
            "T0464",
            "L_FHO",
            "L_AEH",
            "T0401",
            "T0422",
            "T0470",
            "U_AEF"
          ]
        },
        {
          "id": "T0512",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "57989/500000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0486",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0529",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "4291/31250",
          "sources": [
            "T0468",
            "L_FOP"
          ]
        },
        {
          "id": "T0531",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "78559/250000",
          "sources": [
            "T0463",
            "L_CEP",
            "T0466"
          ]
        },
        {
          "id": "T0532",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "218121/500000",
          "sources": [
            "T0495",
            "T0486",
            "T0505"
          ]
        },
        {
          "id": "T0533",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "411069/1000000",
          "sources": [
            "T0495",
            "L_CGH",
            "T0509"
          ]
        },
        {
          "id": "T0536",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "175557/500000",
          "sources": [
            "T0495",
            "T0510",
            "L_AGO"
          ]
        },
        {
          "id": "T0547",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "46249/125000",
          "sources": [
            "U_AEF",
            "T0422",
            "T0468"
          ]
        },
        {
          "id": "T0552",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "336583/1000000",
          "sources": [
            "L_AEG",
            "T0492",
            "L_AGO"
          ]
        },
        {
          "id": "T0555",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "91963/250000",
          "sources": [
            "T0505",
            "L_AGP",
            "T0508"
          ]
        },
        {
          "id": "T0558",
          "relation": 14,
          "rule": "sum",
          "triangle": "AOP",
          "side": "lo",
          "value": "280949/1000000",
          "sources": [
            "L_AGO",
            "L_AGP",
            "T0504"
          ]
        },
        {
          "id": "T0559",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "5449/15625",
          "sources": [
            "T0483",
            "T0486",
            "L_BFG"
          ]
        },
        {
          "id": "T0575",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "12071/20000",
          "sources": [
            "U_CEF",
            "T0468",
            "T0529"
          ]
        },
        {
          "id": "T0577",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "150989/500000",
          "sources": [
            "L_CEP",
            "T0512",
            "L_CGP"
          ]
        },
        {
          "id": "T0583",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "88613/250000",
          "sources": [
            "T0468",
            "L_FGO",
            "T0492"
          ]
        },
        {
          "id": "T0584",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "91727/250000",
          "sources": [
            "T0468",
            "L_FOP",
            "T0475"
          ]
        },
        {
          "id": "T0585",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "35017/100000",
          "sources": [
            "T0492",
            "L_EHO",
            "T0488"
          ]
        },
        {
          "id": "T0587",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "15399/125000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0531",
            "U_ACH"
          ]
        },
        {
          "id": "T0594",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "51261/500000",
          "sources": [
            "T0531",
            "L_COP",
            "T0536",
            "L_CEP",
            "T0575"
          ]
        },
        {
          "id": "T0597",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "122909/1000000",
          "sources": [
            "T0587",
            "T0584",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0599",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "111193/1000000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0552",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0603",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "72083/500000",
          "sources": [
            "T0532",
            "L_FHO",
            "L_AFH",
            "T0529",
            "T0547"
          ]
        },
        {
          "id": "T0606",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "57919/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0555",
            "L_FHO",
            "T0547"
          ]
        },
        {
          "id": "T0608",
          "relation": 886,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "33807/200000",
          "sources": [
            "T0552",
            "L_FOP",
            "T0558",
            "T0599",
            "T0547"
          ]
        },
        {
          "id": "T0610",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "89539/500000",
          "sources": [
            "T0531",
            "L_FHO",
            "T0533",
            "T0599",
            "L_AEH",
            "T0529",
            "U_CEH"
          ]
        },
        {
          "id": "T0614",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "133827/1000000",
          "sources": [
            "L_ABC",
            "T0583",
            "L_AEG",
            "T0559",
            "T0505",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0618",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "6683/62500",
          "sources": [
            "L_AEH",
            "L_FGO",
            "L_AFH",
            "T0492",
            "L_AGO",
            "L_EFH",
            "U_AEF"
          ]
        },
        {
          "id": "T0621",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "151507/1000000",
          "sources": [
            "L_AEG",
            "T0511",
            "T0552",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T0624",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "78737/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0559",
            "T0505",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0634",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "156929/1000000",
          "sources": [
            "T0624",
            "T0599",
            "L_AEG",
            "T0529",
            "L_AGO",
            "L_CEF",
            "T0575"
          ]
        },
        {
          "id": "T0637",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "30757/250000",
          "sources": [
            "T0577",
            "T0606",
            "T0256",
            "T0585",
            "L_CGH",
            "T0584",
            "U_CEH"
          ]
        },
        {
          "id": "T0638",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "163247/1000000",
          "sources": [
            "T0624",
            "L_EHO",
            "L_AEG",
            "T0511",
            "L_AGO",
            "L_CEH",
            "T0575"
          ]
        },
        {
          "id": "T0639",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "124351/1000000",
          "sources": [
            "T0531",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0603",
            "U_AEH"
          ]
        },
        {
          "id": "T0640",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "2059/20000",
          "sources": [
            "T0531",
            "L_FGO",
            "L_AEG",
            "T0529",
            "T0552",
            "T0639",
            "U_AEF"
          ]
        },
        {
          "id": "T0641",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "21227/100000",
          "sources": [
            "T0531",
            "L_FHO",
            "L_AEH",
            "T0529",
            "T0552",
            "T0603",
            "U_AEF"
          ]
        },
        {
          "id": "T0642",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "116029/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0639",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0655",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "137361/1000000",
          "sources": [
            "T0599",
            "L_FOP"
          ]
        },
        {
          "id": "T0657",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "318431/1000000",
          "sources": [
            "T0594",
            "L_CEP",
            "T0597"
          ]
        },
        {
          "id": "T0658",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "219377/500000",
          "sources": [
            "T0624",
            "T0639",
            "T0634"
          ]
        },
        {
          "id": "T0660",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "413721/1000000",
          "sources": [
            "T0624",
            "L_CGH",
            "T0638"
          ]
        },
        {
          "id": "T0662",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "22089/62500",
          "sources": [
            "T0624",
            "T0640",
            "L_AGO"
          ]
        },
        {
          "id": "T0673",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "91669/250000",
          "sources": [
            "U_AEF",
            "T0552",
            "T0599"
          ]
        },
        {
          "id": "T0677",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "431417/1000000",
          "sources": [
            "U_AEH",
            "T0552",
            "L_EHO"
          ]
        },
        {
          "id": "T0678",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "337507/1000000",
          "sources": [
            "L_AEG",
            "T0621",
            "L_AGO"
          ]
        },
        {
          "id": "T0681",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "372957/1000000",
          "sources": [
            "T0634",
            "L_AGP",
            "T0637"
          ]
        },
        {
          "id": "T0685",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "175589/500000",
          "sources": [
            "T0614",
            "T0639",
            "L_BFG"
          ]
        },
        {
          "id": "T0701",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "603177/1000000",
          "sources": [
            "U_CEF",
            "T0599",
            "T0655"
          ]
        },
        {
          "id": "T0703",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "302029/1000000",
          "sources": [
            "L_CEP",
            "T0642",
            "L_CGP"
          ]
        },
        {
          "id": "T0706",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "71007/200000",
          "sources": [
            "L_CEP",
            "T0608",
            "L_COP"
          ]
        },
        {
          "id": "T0709",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "3557/10000",
          "sources": [
            "T0599",
            "L_FGO",
            "T0621"
          ]
        },
        {
          "id": "T0710",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "93307/250000",
          "sources": [
            "T0599",
            "L_FOP",
            "T0608"
          ]
        },
        {
          "id": "T0711",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "70287/200000",
          "sources": [
            "T0621",
            "L_EHO",
            "T0618"
          ]
        },
        {
          "id": "T0713",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "61853/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0657",
            "U_ACH"
          ]
        },
        {
          "id": "T0720",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "103589/1000000",
          "sources": [
            "T0657",
            "L_COP",
            "T0662",
            "L_CEP",
            "T0701"
          ]
        },
        {
          "id": "T0723",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "123997/1000000",
          "sources": [
            "T0713",
            "T0710",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0726",
          "relation": 463,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "27823/250000",
          "sources": [
            "L_AEF",
            "L_EHO",
            "T0678",
            "L_EFH",
            "U_AEH"
          ]
        },
        {
          "id": "T0727",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "21451/125000",
          "sources": [
            "T0678",
            "T0710",
            "T0723",
            "T0726",
            "U_AEF"
          ]
        },
        {
          "id": "T0730",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "146119/1000000",
          "sources": [
            "T0658",
            "L_FHO",
            "L_AFH",
            "T0655",
            "T0673"
          ]
        },
        {
          "id": "T0733",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "5909/50000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0681",
            "L_FHO",
            "T0673"
          ]
        },
        {
          "id": "T0735",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "111359/1000000",
          "sources": [
            "T0678",
            "L_FHO",
            "T0610",
            "L_EHO",
            "T0677"
          ]
        },
        {
          "id": "T0737",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "179907/1000000",
          "sources": [
            "T0657",
            "L_FHO",
            "T0660",
            "T0735",
            "L_AEH",
            "T0655",
            "U_CEH"
          ]
        },
        {
          "id": "T0741",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "67237/500000",
          "sources": [
            "L_ABC",
            "T0709",
            "L_AEG",
            "T0685",
            "T0634",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0748",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "30401/200000",
          "sources": [
            "L_AEG",
            "T0641",
            "T0678",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T0750",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "78967/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0685",
            "T0634",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0759",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "78581/500000",
          "sources": [
            "T0750",
            "T0735",
            "L_AEG",
            "T0655",
            "L_AGO",
            "L_CEF",
            "T0701"
          ]
        },
        {
          "id": "T0760",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "53801/500000",
          "sources": [
            "T0706",
            "L_FGH",
            "T0655",
            "T0711",
            "L_CGH",
            "T0735",
            "U_CEF"
          ]
        },
        {
          "id": "T0763",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "124579/1000000",
          "sources": [
            "T0703",
            "T0733",
            "T0256",
            "T0711",
            "L_CGH",
            "T0710",
            "U_CEH"
          ]
        },
        {
          "id": "T0764",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "32781/200000",
          "sources": [
            "T0750",
            "L_EHO",
            "L_AEG",
            "T0641",
            "L_AGO",
            "L_CEH",
            "T0701"
          ]
        },
        {
          "id": "T0765",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "25003/200000",
          "sources": [
            "T0657",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0730",
            "U_AEH"
          ]
        },
        {
          "id": "T0766",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "103851/1000000",
          "sources": [
            "T0657",
            "L_FGO",
            "L_AEG",
            "T0655",
            "T0678",
            "T0765",
            "U_AEF"
          ]
        },
        {
          "id": "T0767",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "53441/250000",
          "sources": [
            "T0657",
            "L_FHO",
            "L_AEH",
            "T0655",
            "T0678",
            "T0730",
            "U_AEF"
          ]
        },
        {
          "id": "T0768",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "11611/100000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0765",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0769",
          "relation": 4127,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "71123/500000",
          "sources": [
            "L_AEH",
            "L_FOP",
            "T0678",
            "T0733",
            "T0723",
            "L_FHO",
            "U_AEF"
          ]
        },
        {
          "id": "T0779",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "27477/200000",
          "sources": [
            "T0735",
            "L_FOP"
          ]
        },
        {
          "id": "T0781",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "160293/500000",
          "sources": [
            "T0720",
            "L_CEP",
            "T0723"
          ]
        },
        {
          "id": "T0782",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "440111/1000000",
          "sources": [
            "T0750",
            "T0765",
            "T0759"
          ]
        },
        {
          "id": "T0784",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "414839/1000000",
          "sources": [
            "T0750",
            "L_CGH",
            "T0764"
          ]
        },
        {
          "id": "T0786",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "70957/200000",
          "sources": [
            "T0750",
            "T0766",
            "L_AGO"
          ]
        },
        {
          "id": "T0797",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "182793/500000",
          "sources": [
            "U_AEF",
            "T0678",
            "T0735"
          ]
        },
        {
          "id": "T0801",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "430493/1000000",
          "sources": [
            "U_AEH",
            "T0678",
            "L_EHO"
          ]
        },
        {
          "id": "T0802",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "67601/200000",
          "sources": [
            "L_AEG",
            "T0748",
            "L_AGO"
          ]
        },
        {
          "id": "T0805",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "374741/1000000",
          "sources": [
            "T0759",
            "L_AGP",
            "T0763"
          ]
        },
        {
          "id": "T0809",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "352489/1000000",
          "sources": [
            "T0741",
            "T0765",
            "L_BFG"
          ]
        },
        {
          "id": "T0825",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "602987/1000000",
          "sources": [
            "U_CEF",
            "T0735",
            "T0779"
          ]
        },
        {
          "id": "T0827",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "30211/100000",
          "sources": [
            "L_CEP",
            "T0768",
            "L_CGP"
          ]
        },
        {
          "id": "T0830",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "44701/125000",
          "sources": [
            "L_CEP",
            "T0727",
            "L_COP"
          ]
        },
        {
          "id": "T0833",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "89091/250000",
          "sources": [
            "T0735",
            "L_FGO",
            "T0748"
          ]
        },
        {
          "id": "T0834",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "375967/1000000",
          "sources": [
            "T0735",
            "L_FOP",
            "T0727"
          ]
        },
        {
          "id": "T0835",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "352607/1000000",
          "sources": [
            "T0748",
            "L_EHO",
            "T0760"
          ]
        },
        {
          "id": "T0836",
          "relation": 39,
          "rule": "sum",
          "triangle": "EHP",
          "side": "lo",
          "value": "203427/500000",
          "sources": [
            "L_EHO",
            "T0769",
            "T0727"
          ]
        },
        {
          "id": "T0837",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "123969/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0781",
            "U_ACH"
          ]
        },
        {
          "id": "T0844",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "104163/1000000",
          "sources": [
            "T0781",
            "L_COP",
            "T0786",
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
          "value": "15561/125000",
          "sources": [
            "T0837",
            "T0834",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0851",
          "relation": 469,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "86583/500000",
          "sources": [
            "T0802",
            "T0836",
            "T0847",
            "L_EHO",
            "U_AEH"
          ]
        },
        {
          "id": "T0854",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "73453/500000",
          "sources": [
            "T0782",
            "L_FHO",
            "L_AFH",
            "T0779",
            "T0797"
          ]
        },
        {
          "id": "T0857",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "59493/500000",
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
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "22377/200000",
          "sources": [
            "T0802",
            "L_FHO",
            "T0737",
            "L_EHO",
            "T0801"
          ]
        },
        {
          "id": "T0861",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "180497/1000000",
          "sources": [
            "T0781",
            "L_FHO",
            "T0784",
            "T0859",
            "L_AEH",
            "T0779",
            "U_CEH"
          ]
        },
        {
          "id": "T0865",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "134779/1000000",
          "sources": [
            "L_ABC",
            "T0833",
            "L_AEG",
            "T0809",
            "T0759",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0870",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "152249/1000000",
          "sources": [
            "L_AEG",
            "T0767",
            "T0802",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T0872",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "2471/15625",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0809",
            "T0759",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T0881",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "9837/62500",
          "sources": [
            "T0872",
            "T0859",
            "L_AEG",
            "T0779",
            "L_AGO",
            "L_CEF",
            "T0825"
          ]
        },
        {
          "id": "T0882",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108139/1000000",
          "sources": [
            "T0830",
            "L_FGH",
            "T0779",
            "T0835",
            "L_CGH",
            "T0859",
            "U_CEF"
          ]
        },
        {
          "id": "T0885",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "62641/500000",
          "sources": [
            "T0827",
            "T0857",
            "T0256",
            "T0835",
            "L_CGH",
            "T0834",
            "U_CEH"
          ]
        },
        {
          "id": "T0886",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "164219/1000000",
          "sources": [
            "T0872",
            "L_EHO",
            "L_AEG",
            "T0767",
            "L_AGO",
            "L_CEH",
            "T0825"
          ]
        },
        {
          "id": "T0887",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "125333/1000000",
          "sources": [
            "T0781",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0854",
            "U_AEH"
          ]
        },
        {
          "id": "T0888",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "26077/250000",
          "sources": [
            "T0781",
            "L_FGO",
            "L_AEG",
            "T0779",
            "T0802",
            "T0887",
            "U_AEF"
          ]
        },
        {
          "id": "T0889",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "107223/500000",
          "sources": [
            "T0781",
            "L_FHO",
            "L_AEH",
            "T0779",
            "T0802",
            "T0854",
            "U_AEF"
          ]
        },
        {
          "id": "T0890",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "116149/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0887",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0900",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "17183/125000",
          "sources": [
            "T0859",
            "L_FOP"
          ]
        },
        {
          "id": "T0902",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "321651/1000000",
          "sources": [
            "T0844",
            "L_CEP",
            "T0847"
          ]
        },
        {
          "id": "T0903",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "440869/1000000",
          "sources": [
            "T0872",
            "T0887",
            "T0881"
          ]
        },
        {
          "id": "T0905",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "415363/1000000",
          "sources": [
            "T0872",
            "L_CGH",
            "T0886"
          ]
        },
        {
          "id": "T0907",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "88863/250000",
          "sources": [
            "T0872",
            "T0888",
            "L_AGO"
          ]
        },
        {
          "id": "T0918",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "182281/500000",
          "sources": [
            "U_AEF",
            "T0802",
            "T0859"
          ]
        },
        {
          "id": "T0922",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "85999/200000",
          "sources": [
            "U_AEH",
            "T0802",
            "L_EHO"
          ]
        },
        {
          "id": "T0923",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "338249/1000000",
          "sources": [
            "L_AEG",
            "T0870",
            "L_AGO"
          ]
        },
        {
          "id": "T0926",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "187837/500000",
          "sources": [
            "T0881",
            "L_AGP",
            "T0885"
          ]
        },
        {
          "id": "T0930",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "44139/125000",
          "sources": [
            "T0865",
            "T0887",
            "L_BFG"
          ]
        },
        {
          "id": "T0946",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "301191/500000",
          "sources": [
            "U_CEF",
            "T0859",
            "T0900"
          ]
        },
        {
          "id": "T0948",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "302149/1000000",
          "sources": [
            "L_CEP",
            "T0890",
            "L_CGP"
          ]
        },
        {
          "id": "T0951",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "179583/500000",
          "sources": [
            "L_CEP",
            "T0851",
            "L_COP"
          ]
        },
        {
          "id": "T0954",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "178567/500000",
          "sources": [
            "T0859",
            "L_FGO",
            "T0870"
          ]
        },
        {
          "id": "T0955",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "378051/1000000",
          "sources": [
            "T0859",
            "L_FOP",
            "T0851"
          ]
        },
        {
          "id": "T0956",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "88347/250000",
          "sources": [
            "T0870",
            "L_EHO",
            "T0882"
          ]
        },
        {
          "id": "T0958",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124099/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0902",
            "U_ACH"
          ]
        },
        {
          "id": "T0965",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "20907/200000",
          "sources": [
            "T0902",
            "L_COP",
            "T0907",
            "L_CEP",
            "T0946"
          ]
        },
        {
          "id": "T0968",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "3901/31250",
          "sources": [
            "T0958",
            "T0955",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T0971",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "43539/250000",
          "sources": [
            "T0923",
            "T0955",
            "T0968",
            "T0859",
            "U_AEF"
          ]
        },
        {
          "id": "T0974",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "147533/1000000",
          "sources": [
            "T0903",
            "L_FHO",
            "L_AFH",
            "T0900",
            "T0918"
          ]
        },
        {
          "id": "T0977",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "119559/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T0926",
            "L_FHO",
            "T0918"
          ]
        },
        {
          "id": "T0979",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "22439/200000",
          "sources": [
            "T0923",
            "L_FHO",
            "T0861",
            "L_EHO",
            "T0922"
          ]
        },
        {
          "id": "T0981",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "22607/125000",
          "sources": [
            "T0902",
            "L_FHO",
            "T0905",
            "T0979",
            "L_AEH",
            "T0900",
            "U_CEH"
          ]
        },
        {
          "id": "T0985",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135017/1000000",
          "sources": [
            "L_ABC",
            "T0954",
            "L_AEG",
            "T0930",
            "T0881",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T0990",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "76181/500000",
          "sources": [
            "L_AEG",
            "T0889",
            "T0923",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T0992",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "158281/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T0930",
            "T0881",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1000",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "157669/1000000",
          "sources": [
            "T0992",
            "T0979",
            "L_AEG",
            "T0900",
            "L_AGO",
            "L_CEF",
            "T0946"
          ]
        },
        {
          "id": "T1001",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "54251/500000",
          "sources": [
            "T0951",
            "L_FGH",
            "T0900",
            "T0956",
            "L_CGH",
            "T0979",
            "U_CEF"
          ]
        },
        {
          "id": "T1004",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "25157/200000",
          "sources": [
            "T0948",
            "T0977",
            "T0256",
            "T0956",
            "L_CGH",
            "T0955",
            "U_CEH"
          ]
        },
        {
          "id": "T1005",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "164511/1000000",
          "sources": [
            "T0992",
            "L_EHO",
            "L_AEG",
            "T0889",
            "L_AGO",
            "L_CEH",
            "T0946"
          ]
        },
        {
          "id": "T1006",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "25103/200000",
          "sources": [
            "T0902",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T0974",
            "U_AEH"
          ]
        },
        {
          "id": "T1007",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "13069/125000",
          "sources": [
            "T0902",
            "L_FGO",
            "L_AEG",
            "T0900",
            "T0923",
            "T1006",
            "U_AEF"
          ]
        },
        {
          "id": "T1008",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "10747/50000",
          "sources": [
            "T0902",
            "L_FHO",
            "L_AEH",
            "T0900",
            "T0923",
            "T0974",
            "U_AEF"
          ]
        },
        {
          "id": "T1009",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "116171/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1006",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1019",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "13751/100000",
          "sources": [
            "T0979",
            "L_FOP"
          ]
        },
        {
          "id": "T1021",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "322367/1000000",
          "sources": [
            "T0965",
            "L_CEP",
            "T0968"
          ]
        },
        {
          "id": "T1022",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "88293/200000",
          "sources": [
            "T0992",
            "T1006",
            "T1000"
          ]
        },
        {
          "id": "T1024",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "25987/62500",
          "sources": [
            "T0992",
            "L_CGH",
            "T1005"
          ]
        },
        {
          "id": "T1026",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "355833/1000000",
          "sources": [
            "T0992",
            "T1007",
            "L_AGO"
          ]
        },
        {
          "id": "T1037",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "45501/125000",
          "sources": [
            "U_AEF",
            "T0923",
            "T0979"
          ]
        },
        {
          "id": "T1041",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "429751/1000000",
          "sources": [
            "U_AEH",
            "T0923",
            "L_EHO"
          ]
        },
        {
          "id": "T1042",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "169181/500000",
          "sources": [
            "L_AEG",
            "T0990",
            "L_AGO"
          ]
        },
        {
          "id": "T1045",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "188227/500000",
          "sources": [
            "T1000",
            "L_AGP",
            "T1004"
          ]
        },
        {
          "id": "T1049",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "88383/250000",
          "sources": [
            "T0985",
            "T1006",
            "L_BFG"
          ]
        },
        {
          "id": "T1065",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "301013/500000",
          "sources": [
            "U_CEF",
            "T0979",
            "T1019"
          ]
        },
        {
          "id": "T1067",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "302171/1000000",
          "sources": [
            "L_CEP",
            "T1009",
            "L_CGP"
          ]
        },
        {
          "id": "T1070",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "90039/250000",
          "sources": [
            "L_CEP",
            "T0971",
            "L_COP"
          ]
        },
        {
          "id": "T1073",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "357557/1000000",
          "sources": [
            "T0979",
            "L_FGO",
            "T0990"
          ]
        },
        {
          "id": "T1074",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "379351/1000000",
          "sources": [
            "T0979",
            "L_FOP",
            "T0971"
          ]
        },
        {
          "id": "T1075",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "44233/125000",
          "sources": [
            "T0990",
            "L_EHO",
            "T1001"
          ]
        },
        {
          "id": "T1077",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124187/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1021",
            "U_ACH"
          ]
        },
        {
          "id": "T1084",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "104767/1000000",
          "sources": [
            "T1021",
            "L_COP",
            "T1026",
            "L_CEP",
            "T1065"
          ]
        },
        {
          "id": "T1087",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "125051/1000000",
          "sources": [
            "T1077",
            "T1074",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1090",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "87413/500000",
          "sources": [
            "T1042",
            "T1074",
            "T1087",
            "T0979",
            "U_AEF"
          ]
        },
        {
          "id": "T1093",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "147921/1000000",
          "sources": [
            "T1022",
            "L_FHO",
            "L_AFH",
            "T1019",
            "T1037"
          ]
        },
        {
          "id": "T1096",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "5997/50000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1045",
            "L_FHO",
            "T1037"
          ]
        },
        {
          "id": "T1098",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "112361/1000000",
          "sources": [
            "T1042",
            "L_FHO",
            "T0981",
            "L_EHO",
            "T1041"
          ]
        },
        {
          "id": "T1100",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181083/1000000",
          "sources": [
            "T1021",
            "L_FHO",
            "T1024",
            "T1098",
            "L_AEH",
            "T1019",
            "U_CEH"
          ]
        },
        {
          "id": "T1104",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "16901/125000",
          "sources": [
            "L_ABC",
            "T1073",
            "L_AEG",
            "T1049",
            "T1000",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1109",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "38109/250000",
          "sources": [
            "L_AEG",
            "T1008",
            "T1042",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1111",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "158411/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1049",
            "T1000",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1119",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "78919/500000",
          "sources": [
            "T1111",
            "T1098",
            "L_AEG",
            "T1019",
            "L_AGO",
            "L_CEF",
            "T1065"
          ]
        },
        {
          "id": "T1120",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "27181/250000",
          "sources": [
            "T1070",
            "L_FGH",
            "T1019",
            "T1075",
            "L_CGH",
            "T1098",
            "U_CEF"
          ]
        },
        {
          "id": "T1123",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "25221/200000",
          "sources": [
            "T1067",
            "T1096",
            "T0256",
            "T1075",
            "L_CGH",
            "T1074",
            "U_CEH"
          ]
        },
        {
          "id": "T1124",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "32941/200000",
          "sources": [
            "T1111",
            "L_EHO",
            "L_AEG",
            "T1008",
            "L_AGO",
            "L_CEH",
            "T1065"
          ]
        },
        {
          "id": "T1125",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "25127/200000",
          "sources": [
            "T1021",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1093",
            "U_AEH"
          ]
        },
        {
          "id": "T1126",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "52353/500000",
          "sources": [
            "T1021",
            "L_FGO",
            "L_AEG",
            "T1019",
            "T1042",
            "T1125",
            "U_AEF"
          ]
        },
        {
          "id": "T1127",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "107621/500000",
          "sources": [
            "T1021",
            "L_FHO",
            "L_AEH",
            "T1019",
            "T1042",
            "T1093",
            "U_AEF"
          ]
        },
        {
          "id": "T1128",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "23237/200000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1125",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1138",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "27507/200000",
          "sources": [
            "T1098",
            "L_FOP"
          ]
        },
        {
          "id": "T1140",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "161409/500000",
          "sources": [
            "T1084",
            "L_CEP",
            "T1087"
          ]
        },
        {
          "id": "T1141",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "110471/250000",
          "sources": [
            "T1111",
            "T1125",
            "T1119"
          ]
        },
        {
          "id": "T1143",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "104029/250000",
          "sources": [
            "T1111",
            "L_CGH",
            "T1124"
          ]
        },
        {
          "id": "T1145",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356117/1000000",
          "sources": [
            "T1111",
            "T1126",
            "L_AGO"
          ]
        },
        {
          "id": "T1156",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363729/1000000",
          "sources": [
            "U_AEF",
            "T1042",
            "T1098"
          ]
        },
        {
          "id": "T1160",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "214819/500000",
          "sources": [
            "U_AEH",
            "T1042",
            "L_EHO"
          ]
        },
        {
          "id": "T1161",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "84609/250000",
          "sources": [
            "L_AEG",
            "T1109",
            "L_AGO"
          ]
        },
        {
          "id": "T1164",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "376943/1000000",
          "sources": [
            "T1119",
            "L_AGP",
            "T1123"
          ]
        },
        {
          "id": "T1168",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "353843/1000000",
          "sources": [
            "T1104",
            "T1125",
            "L_BFG"
          ]
        },
        {
          "id": "T1184",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "120367/200000",
          "sources": [
            "U_CEF",
            "T1098",
            "T1138"
          ]
        },
        {
          "id": "T1186",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "60437/200000",
          "sources": [
            "L_CEP",
            "T1128",
            "L_CGP"
          ]
        },
        {
          "id": "T1189",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "180413/500000",
          "sources": [
            "L_CEP",
            "T1090",
            "L_COP"
          ]
        },
        {
          "id": "T1192",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "357797/1000000",
          "sources": [
            "T1098",
            "L_FGO",
            "T1109"
          ]
        },
        {
          "id": "T1193",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "380187/1000000",
          "sources": [
            "T1098",
            "L_FOP",
            "T1090"
          ]
        },
        {
          "id": "T1194",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "4427/12500",
          "sources": [
            "T1109",
            "L_EHO",
            "T1120"
          ]
        },
        {
          "id": "T1196",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "62121/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1140",
            "U_ACH"
          ]
        },
        {
          "id": "T1203",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "52457/500000",
          "sources": [
            "T1140",
            "L_COP",
            "T1145",
            "L_CEP",
            "T1184"
          ]
        },
        {
          "id": "T1206",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "12519/100000",
          "sources": [
            "T1196",
            "T1193",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1209",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175253/1000000",
          "sources": [
            "T1161",
            "T1193",
            "T1206",
            "T1098",
            "U_AEF"
          ]
        },
        {
          "id": "T1212",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "37037/250000",
          "sources": [
            "T1141",
            "L_FHO",
            "L_AFH",
            "T1138",
            "T1156"
          ]
        },
        {
          "id": "T1215",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "120157/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1164",
            "L_FHO",
            "T1156"
          ]
        },
        {
          "id": "T1217",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "22491/200000",
          "sources": [
            "T1161",
            "L_FHO",
            "T1100",
            "L_EHO",
            "T1160"
          ]
        },
        {
          "id": "T1219",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "7249/40000",
          "sources": [
            "T1140",
            "L_FHO",
            "T1143",
            "T1217",
            "L_AEH",
            "T1138",
            "U_CEH"
          ]
        },
        {
          "id": "T1223",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135329/1000000",
          "sources": [
            "L_ABC",
            "T1192",
            "L_AEG",
            "T1168",
            "T1119",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1228",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "76241/500000",
          "sources": [
            "L_AEG",
            "T1127",
            "T1161",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1230",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "4953/31250",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1168",
            "T1119",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1238",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "39483/250000",
          "sources": [
            "T1230",
            "T1217",
            "L_AEG",
            "T1138",
            "L_AGO",
            "L_CEF",
            "T1184"
          ]
        },
        {
          "id": "T1239",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "21773/200000",
          "sources": [
            "T1189",
            "L_FGH",
            "T1138",
            "T1194",
            "L_CGH",
            "T1217",
            "U_CEF"
          ]
        },
        {
          "id": "T1242",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "1263/10000",
          "sources": [
            "T1186",
            "T1215",
            "T0256",
            "T1194",
            "L_CGH",
            "T1193",
            "U_CEH"
          ]
        },
        {
          "id": "T1243",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "164817/1000000",
          "sources": [
            "T1230",
            "L_EHO",
            "L_AEG",
            "T1127",
            "L_AGO",
            "L_CEH",
            "T1184"
          ]
        },
        {
          "id": "T1244",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "31427/250000",
          "sources": [
            "T1140",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1212",
            "U_AEH"
          ]
        },
        {
          "id": "T1245",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "52401/500000",
          "sources": [
            "T1140",
            "L_FGO",
            "L_AEG",
            "T1138",
            "T1161",
            "T1244",
            "U_AEF"
          ]
        },
        {
          "id": "T1246",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "215423/1000000",
          "sources": [
            "T1140",
            "L_FHO",
            "L_AEH",
            "T1138",
            "T1161",
            "T1212",
            "U_AEF"
          ]
        },
        {
          "id": "T1247",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "58097/500000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1244",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1257",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "137549/1000000",
          "sources": [
            "T1217",
            "L_FOP"
          ]
        },
        {
          "id": "T1259",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "10097/31250",
          "sources": [
            "T1203",
            "L_CEP",
            "T1206"
          ]
        },
        {
          "id": "T1260",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "55267/125000",
          "sources": [
            "T1230",
            "T1244",
            "T1238"
          ]
        },
        {
          "id": "T1262",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "416313/1000000",
          "sources": [
            "T1230",
            "L_CGH",
            "T1243"
          ]
        },
        {
          "id": "T1264",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178149/500000",
          "sources": [
            "T1230",
            "T1245",
            "L_AGO"
          ]
        },
        {
          "id": "T1275",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363561/1000000",
          "sources": [
            "U_AEF",
            "T1161",
            "T1217"
          ]
        },
        {
          "id": "T1279",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "107391/250000",
          "sources": [
            "U_AEH",
            "T1161",
            "L_EHO"
          ]
        },
        {
          "id": "T1280",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "169241/500000",
          "sources": [
            "L_AEG",
            "T1228",
            "L_AGO"
          ]
        },
        {
          "id": "T1283",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "23577/62500",
          "sources": [
            "T1238",
            "L_AGP",
            "T1242"
          ]
        },
        {
          "id": "T1287",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354037/1000000",
          "sources": [
            "T1223",
            "T1244",
            "L_BFG"
          ]
        },
        {
          "id": "T1303",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "601727/1000000",
          "sources": [
            "U_CEF",
            "T1217",
            "T1257"
          ]
        },
        {
          "id": "T1305",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "151097/500000",
          "sources": [
            "L_CEP",
            "T1247",
            "L_CGP"
          ]
        },
        {
          "id": "T1308",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "361253/1000000",
          "sources": [
            "L_CEP",
            "T1209",
            "L_COP"
          ]
        },
        {
          "id": "T1311",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "357937/1000000",
          "sources": [
            "T1217",
            "L_FGO",
            "T1228"
          ]
        },
        {
          "id": "T1312",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "95177/250000",
          "sources": [
            "T1217",
            "L_FOP",
            "T1209"
          ]
        },
        {
          "id": "T1313",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "354347/1000000",
          "sources": [
            "T1228",
            "L_EHO",
            "T1239"
          ]
        },
        {
          "id": "T1315",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124277/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1259",
            "U_ACH"
          ]
        },
        {
          "id": "T1322",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "21001/200000",
          "sources": [
            "T1259",
            "L_COP",
            "T1264",
            "L_CEP",
            "T1303"
          ]
        },
        {
          "id": "T1325",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "62639/500000",
          "sources": [
            "T1315",
            "T1312",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1328",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175517/1000000",
          "sources": [
            "T1280",
            "T1312",
            "T1325",
            "T1217",
            "U_AEF"
          ]
        },
        {
          "id": "T1332",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "29657/200000",
          "sources": [
            "T1260",
            "L_FHO",
            "L_AFH",
            "T1257",
            "T1275"
          ]
        },
        {
          "id": "T1335",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "60143/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1283",
            "L_FHO",
            "T1275"
          ]
        },
        {
          "id": "T1337",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "22503/200000",
          "sources": [
            "T1280",
            "L_FHO",
            "T1219",
            "L_EHO",
            "T1279"
          ]
        },
        {
          "id": "T1338",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "170343/200000",
          "sources": [
            "T1332"
          ]
        },
        {
          "id": "T1340",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181313/1000000",
          "sources": [
            "T1259",
            "L_FHO",
            "T1262",
            "T1337",
            "L_AEH",
            "T1257",
            "U_CEH"
          ]
        },
        {
          "id": "T1344",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135399/1000000",
          "sources": [
            "L_ABC",
            "T1311",
            "L_AEG",
            "T1287",
            "T1238",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1349",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "15251/100000",
          "sources": [
            "L_AEG",
            "T1246",
            "T1280",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1351",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "79273/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1287",
            "T1238",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1359",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "39497/250000",
          "sources": [
            "T1351",
            "T1337",
            "L_AEG",
            "T1257",
            "L_AGO",
            "L_CEF",
            "T1303"
          ]
        },
        {
          "id": "T1360",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "108957/1000000",
          "sources": [
            "T1308",
            "L_FGH",
            "T1257",
            "T1313",
            "L_CGH",
            "T1337",
            "T1338"
          ]
        },
        {
          "id": "T1363",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "6321/50000",
          "sources": [
            "T1305",
            "T1335",
            "T0256",
            "T1313",
            "L_CGH",
            "T1312",
            "U_CEH"
          ]
        },
        {
          "id": "T1364",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "82441/500000",
          "sources": [
            "T1351",
            "L_EHO",
            "L_AEG",
            "T1246",
            "L_AGO",
            "L_CEH",
            "T1303"
          ]
        },
        {
          "id": "T1365",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "62877/500000",
          "sources": [
            "T1259",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1332",
            "U_AEH"
          ]
        },
        {
          "id": "T1366",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "104863/1000000",
          "sources": [
            "T1259",
            "L_FGO",
            "L_AEG",
            "T1257",
            "T1280",
            "T1365",
            "U_AEF"
          ]
        },
        {
          "id": "T1367",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "215533/1000000",
          "sources": [
            "T1259",
            "L_FHO",
            "L_AEH",
            "T1257",
            "T1280",
            "T1332",
            "U_AEF"
          ]
        },
        {
          "id": "T1368",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "581/5000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1365",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1378",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "68779/500000",
          "sources": [
            "T1337",
            "L_FOP"
          ]
        },
        {
          "id": "T1380",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "323283/1000000",
          "sources": [
            "T1322",
            "L_CEP",
            "T1325"
          ]
        },
        {
          "id": "T1381",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "27643/62500",
          "sources": [
            "T1351",
            "T1365",
            "T1359"
          ]
        },
        {
          "id": "T1383",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "104107/250000",
          "sources": [
            "T1351",
            "L_CGH",
            "T1364"
          ]
        },
        {
          "id": "T1385",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356409/1000000",
          "sources": [
            "T1351",
            "T1366",
            "L_AGO"
          ]
        },
        {
          "id": "T1396",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "72691/200000",
          "sources": [
            "U_AEF",
            "T1280",
            "T1337"
          ]
        },
        {
          "id": "T1400",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "214759/500000",
          "sources": [
            "U_AEH",
            "T1280",
            "L_EHO"
          ]
        },
        {
          "id": "T1401",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "33851/100000",
          "sources": [
            "L_AEG",
            "T1349",
            "L_AGO"
          ]
        },
        {
          "id": "T1404",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "5897/15625",
          "sources": [
            "T1359",
            "L_AGP",
            "T1363"
          ]
        },
        {
          "id": "T1408",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354153/1000000",
          "sources": [
            "T1344",
            "T1365",
            "L_BFG"
          ]
        },
        {
          "id": "T1424",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "300821/500000",
          "sources": [
            "T1338",
            "T1337",
            "T1378"
          ]
        },
        {
          "id": "T1427",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "1511/5000",
          "sources": [
            "L_CEP",
            "T1368",
            "L_CGP"
          ]
        },
        {
          "id": "T1430",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "361517/1000000",
          "sources": [
            "L_CEP",
            "T1328",
            "L_COP"
          ]
        },
        {
          "id": "T1433",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "14321/40000",
          "sources": [
            "T1337",
            "L_FGO",
            "T1349"
          ]
        },
        {
          "id": "T1434",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "47629/125000",
          "sources": [
            "T1337",
            "L_FOP",
            "T1328"
          ]
        },
        {
          "id": "T1435",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "354467/1000000",
          "sources": [
            "T1349",
            "L_EHO",
            "T1360"
          ]
        },
        {
          "id": "T1437",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124299/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1380",
            "U_ACH"
          ]
        },
        {
          "id": "T1444",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "13133/125000",
          "sources": [
            "T1380",
            "L_COP",
            "T1385",
            "L_CEP",
            "T1424"
          ]
        },
        {
          "id": "T1447",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "31333/250000",
          "sources": [
            "T1437",
            "T1434",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1450",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "87841/500000",
          "sources": [
            "T1401",
            "T1434",
            "T1447",
            "T1337",
            "U_AEF"
          ]
        },
        {
          "id": "T1456",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "148369/1000000",
          "sources": [
            "T1381",
            "L_FHO",
            "L_AFH",
            "T1378",
            "T1396"
          ]
        },
        {
          "id": "T1459",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "60183/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1404",
            "L_FHO",
            "T1396"
          ]
        },
        {
          "id": "T1461",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "14069/125000",
          "sources": [
            "T1401",
            "L_FHO",
            "T1340",
            "L_EHO",
            "T1400"
          ]
        },
        {
          "id": "T1462",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "851631/1000000",
          "sources": [
            "T1456"
          ]
        },
        {
          "id": "T1464",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181367/1000000",
          "sources": [
            "T1380",
            "L_FHO",
            "T1383",
            "T1461",
            "L_AEH",
            "T1378",
            "U_CEH"
          ]
        },
        {
          "id": "T1468",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "67721/500000",
          "sources": [
            "L_ABC",
            "T1433",
            "L_AEG",
            "T1408",
            "T1359",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1473",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "152527/1000000",
          "sources": [
            "L_AEG",
            "T1367",
            "T1401",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1475",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "9911/62500",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1408",
            "T1359",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1483",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158027/1000000",
          "sources": [
            "T1475",
            "T1461",
            "L_AEG",
            "T1378",
            "L_AGO",
            "L_CEF",
            "T1424"
          ]
        },
        {
          "id": "T1484",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "109023/1000000",
          "sources": [
            "T1430",
            "L_FGH",
            "T1378",
            "T1435",
            "L_CGH",
            "T1461",
            "T1462"
          ]
        },
        {
          "id": "T1487",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "25299/200000",
          "sources": [
            "T1427",
            "T1459",
            "T0256",
            "T1435",
            "L_CGH",
            "T1434",
            "U_CEH"
          ]
        },
        {
          "id": "T1488",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "164927/1000000",
          "sources": [
            "T1475",
            "L_EHO",
            "L_AEG",
            "T1367",
            "L_AGO",
            "L_CEH",
            "T1424"
          ]
        },
        {
          "id": "T1489",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "62891/500000",
          "sources": [
            "T1380",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1456",
            "U_AEH"
          ]
        },
        {
          "id": "T1490",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "1049/10000",
          "sources": [
            "T1380",
            "L_FGO",
            "L_AEG",
            "T1378",
            "T1401",
            "T1489",
            "U_AEF"
          ]
        },
        {
          "id": "T1491",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "215601/1000000",
          "sources": [
            "T1380",
            "L_FHO",
            "L_AEH",
            "T1378",
            "T1401",
            "T1456",
            "U_AEF"
          ]
        },
        {
          "id": "T1492",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "116203/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1489",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1502",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "34391/250000",
          "sources": [
            "T1461",
            "L_FOP"
          ]
        },
        {
          "id": "T1504",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "80849/250000",
          "sources": [
            "T1444",
            "L_CEP",
            "T1447"
          ]
        },
        {
          "id": "T1505",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "88477/200000",
          "sources": [
            "T1475",
            "T1489",
            "T1483"
          ]
        },
        {
          "id": "T1507",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "416503/1000000",
          "sources": [
            "T1475",
            "L_CGH",
            "T1488"
          ]
        },
        {
          "id": "T1509",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "89119/250000",
          "sources": [
            "T1475",
            "T1490",
            "L_AGO"
          ]
        },
        {
          "id": "T1520",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "36339/100000",
          "sources": [
            "U_AEF",
            "T1401",
            "T1461"
          ]
        },
        {
          "id": "T1524",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "42949/100000",
          "sources": [
            "U_AEH",
            "T1401",
            "L_EHO"
          ]
        },
        {
          "id": "T1525",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "338527/1000000",
          "sources": [
            "L_AEG",
            "T1473",
            "L_AGO"
          ]
        },
        {
          "id": "T1528",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "188761/500000",
          "sources": [
            "T1483",
            "L_AGP",
            "T1487"
          ]
        },
        {
          "id": "T1532",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "22139/62500",
          "sources": [
            "T1468",
            "T1489",
            "L_BFG"
          ]
        },
        {
          "id": "T1548",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "120303/200000",
          "sources": [
            "T1462",
            "T1461",
            "T1502"
          ]
        },
        {
          "id": "T1551",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "302203/1000000",
          "sources": [
            "L_CEP",
            "T1492",
            "L_CGP"
          ]
        },
        {
          "id": "T1554",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "180841/500000",
          "sources": [
            "L_CEP",
            "T1450",
            "L_COP"
          ]
        },
        {
          "id": "T1557",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "358079/1000000",
          "sources": [
            "T1461",
            "L_FGO",
            "T1473"
          ]
        },
        {
          "id": "T1558",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "190617/500000",
          "sources": [
            "T1461",
            "L_FOP",
            "T1450"
          ]
        },
        {
          "id": "T1559",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "7091/20000",
          "sources": [
            "T1473",
            "L_EHO",
            "T1484"
          ]
        },
        {
          "id": "T1561",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124313/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1504",
            "U_ACH"
          ]
        },
        {
          "id": "T1568",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "52557/500000",
          "sources": [
            "T1504",
            "L_COP",
            "T1509",
            "L_CEP",
            "T1548"
          ]
        },
        {
          "id": "T1571",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "125367/1000000",
          "sources": [
            "T1561",
            "T1558",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1574",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "21973/125000",
          "sources": [
            "T1525",
            "T1558",
            "T1571",
            "T1461",
            "U_AEF"
          ]
        },
        {
          "id": "T1580",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "74211/500000",
          "sources": [
            "T1505",
            "L_FHO",
            "L_AFH",
            "T1502",
            "T1520"
          ]
        },
        {
          "id": "T1583",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "120417/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1528",
            "L_FHO",
            "T1520"
          ]
        },
        {
          "id": "T1585",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "4503/40000",
          "sources": [
            "T1525",
            "L_FHO",
            "T1464",
            "L_EHO",
            "T1524"
          ]
        },
        {
          "id": "T1586",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "425789/500000",
          "sources": [
            "T1580"
          ]
        },
        {
          "id": "T1588",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181401/1000000",
          "sources": [
            "T1504",
            "L_FHO",
            "T1507",
            "T1585",
            "L_AEH",
            "T1502",
            "U_CEH"
          ]
        },
        {
          "id": "T1592",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135469/1000000",
          "sources": [
            "L_ABC",
            "T1557",
            "L_AEG",
            "T1532",
            "T1483",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1597",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "152537/1000000",
          "sources": [
            "L_AEG",
            "T1491",
            "T1525",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1599",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "31719/200000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1532",
            "T1483",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1607",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158071/1000000",
          "sources": [
            "T1599",
            "T1585",
            "L_AEG",
            "T1502",
            "L_AGO",
            "L_CEF",
            "T1548"
          ]
        },
        {
          "id": "T1608",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "109067/1000000",
          "sources": [
            "T1554",
            "L_FGH",
            "T1502",
            "T1559",
            "L_CGH",
            "T1585",
            "T1586"
          ]
        },
        {
          "id": "T1611",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "7909/62500",
          "sources": [
            "T1551",
            "T1583",
            "T0256",
            "T1559",
            "L_CGH",
            "T1558",
            "U_CEH"
          ]
        },
        {
          "id": "T1612",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "6599/40000",
          "sources": [
            "T1599",
            "L_EHO",
            "L_AEG",
            "T1491",
            "L_AGO",
            "L_CEH",
            "T1548"
          ]
        },
        {
          "id": "T1613",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "629/5000",
          "sources": [
            "T1504",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1580",
            "U_AEH"
          ]
        },
        {
          "id": "T1614",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "26231/250000",
          "sources": [
            "T1504",
            "L_FGO",
            "L_AEG",
            "T1502",
            "T1525",
            "T1613",
            "U_AEF"
          ]
        },
        {
          "id": "T1615",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "53911/250000",
          "sources": [
            "T1504",
            "L_FHO",
            "L_AEH",
            "T1502",
            "T1525",
            "T1580",
            "U_AEF"
          ]
        },
        {
          "id": "T1616",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "58103/500000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1613",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1626",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "137567/1000000",
          "sources": [
            "T1585",
            "L_FOP"
          ]
        },
        {
          "id": "T1628",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "323481/1000000",
          "sources": [
            "T1568",
            "L_CEP",
            "T1571"
          ]
        },
        {
          "id": "T1629",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "221233/500000",
          "sources": [
            "T1599",
            "T1613",
            "T1607"
          ]
        },
        {
          "id": "T1631",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "41657/100000",
          "sources": [
            "T1599",
            "L_CGH",
            "T1612"
          ]
        },
        {
          "id": "T1633",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356519/1000000",
          "sources": [
            "T1599",
            "T1614",
            "L_AGO"
          ]
        },
        {
          "id": "T1644",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "7267/20000",
          "sources": [
            "U_AEF",
            "T1525",
            "T1585"
          ]
        },
        {
          "id": "T1648",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "429473/1000000",
          "sources": [
            "U_AEH",
            "T1525",
            "L_EHO"
          ]
        },
        {
          "id": "T1649",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "338537/1000000",
          "sources": [
            "L_AEG",
            "T1597",
            "L_AGO"
          ]
        },
        {
          "id": "T1652",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "75523/200000",
          "sources": [
            "T1607",
            "L_AGP",
            "T1611"
          ]
        },
        {
          "id": "T1656",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354269/1000000",
          "sources": [
            "T1592",
            "T1613",
            "L_BFG"
          ]
        },
        {
          "id": "T1672",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "150359/250000",
          "sources": [
            "T1586",
            "T1585",
            "T1626"
          ]
        },
        {
          "id": "T1675",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "151103/500000",
          "sources": [
            "L_CEP",
            "T1616",
            "L_CGP"
          ]
        },
        {
          "id": "T1678",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "45223/125000",
          "sources": [
            "L_CEP",
            "T1574",
            "L_COP"
          ]
        },
        {
          "id": "T1681",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "11191/31250",
          "sources": [
            "T1585",
            "L_FGO",
            "T1597"
          ]
        },
        {
          "id": "T1682",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "381359/1000000",
          "sources": [
            "T1585",
            "L_FOP",
            "T1574"
          ]
        },
        {
          "id": "T1683",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "88651/250000",
          "sources": [
            "T1597",
            "L_EHO",
            "T1608"
          ]
        },
        {
          "id": "T1685",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124323/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1628",
            "U_ACH"
          ]
        },
        {
          "id": "T1692",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "26287/250000",
          "sources": [
            "T1628",
            "L_COP",
            "T1633",
            "L_CEP",
            "T1672"
          ]
        },
        {
          "id": "T1695",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "31347/250000",
          "sources": [
            "T1685",
            "T1682",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1698",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175847/1000000",
          "sources": [
            "T1649",
            "T1682",
            "T1695",
            "T1585",
            "U_AEF"
          ]
        },
        {
          "id": "T1704",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "7423/50000",
          "sources": [
            "T1629",
            "L_FHO",
            "L_AFH",
            "T1626",
            "T1644"
          ]
        },
        {
          "id": "T1707",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "60227/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1652",
            "L_FHO",
            "T1644"
          ]
        },
        {
          "id": "T1709",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "112589/1000000",
          "sources": [
            "T1649",
            "L_FHO",
            "T1588",
            "L_EHO",
            "T1648"
          ]
        },
        {
          "id": "T1710",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "42577/50000",
          "sources": [
            "T1704"
          ]
        },
        {
          "id": "T1712",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "90713/500000",
          "sources": [
            "T1628",
            "L_FHO",
            "T1631",
            "T1709",
            "L_AEH",
            "T1626",
            "U_CEH"
          ]
        },
        {
          "id": "T1716",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135493/1000000",
          "sources": [
            "L_ABC",
            "T1681",
            "L_AEG",
            "T1656",
            "T1607",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1721",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "4767/31250",
          "sources": [
            "L_AEG",
            "T1615",
            "T1649",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1723",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "79307/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1656",
            "T1607",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1731",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158099/1000000",
          "sources": [
            "T1723",
            "T1709",
            "L_AEG",
            "T1626",
            "L_AGO",
            "L_CEF",
            "T1672"
          ]
        },
        {
          "id": "T1732",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "54547/500000",
          "sources": [
            "T1678",
            "L_FGH",
            "T1626",
            "T1683",
            "L_CGH",
            "T1709",
            "T1710"
          ]
        },
        {
          "id": "T1735",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "7911/62500",
          "sources": [
            "T1675",
            "T1707",
            "T0256",
            "T1683",
            "L_CGH",
            "T1682",
            "U_CEH"
          ]
        },
        {
          "id": "T1736",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "82503/500000",
          "sources": [
            "T1723",
            "L_EHO",
            "L_AEG",
            "T1615",
            "L_AGO",
            "L_CEH",
            "T1672"
          ]
        },
        {
          "id": "T1737",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "125813/1000000",
          "sources": [
            "T1628",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1704",
            "U_AEH"
          ]
        },
        {
          "id": "T1738",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "104941/1000000",
          "sources": [
            "T1628",
            "L_FGO",
            "L_AEG",
            "T1626",
            "T1649",
            "T1737",
            "U_AEF"
          ]
        },
        {
          "id": "T1739",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "107837/500000",
          "sources": [
            "T1628",
            "L_FHO",
            "L_AEH",
            "T1626",
            "T1649",
            "T1704",
            "U_AEF"
          ]
        },
        {
          "id": "T1740",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "116207/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1737",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1750",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "137569/1000000",
          "sources": [
            "T1709",
            "L_FOP"
          ]
        },
        {
          "id": "T1752",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "20221/62500",
          "sources": [
            "T1692",
            "L_CEP",
            "T1695"
          ]
        },
        {
          "id": "T1753",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "221263/500000",
          "sources": [
            "T1723",
            "T1737",
            "T1731"
          ]
        },
        {
          "id": "T1755",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "20831/50000",
          "sources": [
            "T1723",
            "L_CGH",
            "T1736"
          ]
        },
        {
          "id": "T1757",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "71311/200000",
          "sources": [
            "T1723",
            "T1738",
            "L_AGO"
          ]
        },
        {
          "id": "T1768",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "181663/500000",
          "sources": [
            "U_AEF",
            "T1649",
            "T1709"
          ]
        },
        {
          "id": "T1772",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "429463/1000000",
          "sources": [
            "U_AEH",
            "T1649",
            "L_EHO"
          ]
        },
        {
          "id": "T1773",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "21159/62500",
          "sources": [
            "L_AEG",
            "T1721",
            "L_AGO"
          ]
        },
        {
          "id": "T1776",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "15107/40000",
          "sources": [
            "T1731",
            "L_AGP",
            "T1735"
          ]
        },
        {
          "id": "T1780",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "177153/500000",
          "sources": [
            "T1716",
            "T1737",
            "L_BFG"
          ]
        },
        {
          "id": "T1796",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "300691/500000",
          "sources": [
            "T1710",
            "T1709",
            "T1750"
          ]
        },
        {
          "id": "T1799",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "302207/1000000",
          "sources": [
            "L_CEP",
            "T1740",
            "L_CGP"
          ]
        },
        {
          "id": "T1802",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "361847/1000000",
          "sources": [
            "L_CEP",
            "T1698",
            "L_COP"
          ]
        },
        {
          "id": "T1805",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "358133/1000000",
          "sources": [
            "T1709",
            "L_FGO",
            "T1721"
          ]
        },
        {
          "id": "T1806",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "95359/250000",
          "sources": [
            "T1709",
            "L_FOP",
            "T1698"
          ]
        },
        {
          "id": "T1807",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "177319/500000",
          "sources": [
            "T1721",
            "L_EHO",
            "T1732"
          ]
        },
        {
          "id": "T1809",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "12433/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1752",
            "U_ACH"
          ]
        },
        {
          "id": "T1816",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "105171/1000000",
          "sources": [
            "T1752",
            "L_COP",
            "T1757",
            "L_CEP",
            "T1796"
          ]
        },
        {
          "id": "T1819",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "62701/500000",
          "sources": [
            "T1809",
            "T1806",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1822",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175887/1000000",
          "sources": [
            "T1773",
            "T1806",
            "T1819",
            "T1709",
            "U_AEF"
          ]
        },
        {
          "id": "T1828",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "74243/500000",
          "sources": [
            "T1753",
            "L_FHO",
            "L_AFH",
            "T1750",
            "T1768"
          ]
        },
        {
          "id": "T1831",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "120477/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1776",
            "L_FHO",
            "T1768"
          ]
        },
        {
          "id": "T1833",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "112599/1000000",
          "sources": [
            "T1773",
            "L_FHO",
            "T1712",
            "L_EHO",
            "T1772"
          ]
        },
        {
          "id": "T1834",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "425757/500000",
          "sources": [
            "T1828"
          ]
        },
        {
          "id": "T1836",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181443/1000000",
          "sources": [
            "T1752",
            "L_FHO",
            "T1755",
            "T1833",
            "L_AEH",
            "T1750",
            "U_CEH"
          ]
        },
        {
          "id": "T1840",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "13551/100000",
          "sources": [
            "L_ABC",
            "T1805",
            "L_AEG",
            "T1780",
            "T1731",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1845",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "38137/250000",
          "sources": [
            "L_AEG",
            "T1739",
            "T1773",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1847",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "79313/500000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1780",
            "T1731",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1855",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158119/1000000",
          "sources": [
            "T1847",
            "T1833",
            "L_AEG",
            "T1750",
            "L_AGO",
            "L_CEF",
            "T1796"
          ]
        },
        {
          "id": "T1856",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "13639/125000",
          "sources": [
            "T1802",
            "L_FGH",
            "T1750",
            "T1807",
            "L_CGH",
            "T1833",
            "T1834"
          ]
        },
        {
          "id": "T1859",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "31649/250000",
          "sources": [
            "T1799",
            "T1831",
            "T0256",
            "T1807",
            "L_CGH",
            "T1806",
            "U_CEH"
          ]
        },
        {
          "id": "T1860",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "41257/250000",
          "sources": [
            "T1847",
            "L_EHO",
            "L_AEG",
            "T1739",
            "L_AGO",
            "L_CEH",
            "T1796"
          ]
        },
        {
          "id": "T1861",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "62911/500000",
          "sources": [
            "T1752",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1828",
            "U_AEH"
          ]
        },
        {
          "id": "T1862",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "13119/125000",
          "sources": [
            "T1752",
            "L_FGO",
            "L_AEG",
            "T1750",
            "T1773",
            "T1861",
            "U_AEF"
          ]
        },
        {
          "id": "T1863",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "107847/500000",
          "sources": [
            "T1752",
            "L_FHO",
            "L_AEH",
            "T1750",
            "T1773",
            "T1828",
            "U_AEF"
          ]
        },
        {
          "id": "T1864",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "7263/62500",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1861",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1874",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "137571/1000000",
          "sources": [
            "T1833",
            "L_FOP"
          ]
        },
        {
          "id": "T1876",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "323573/1000000",
          "sources": [
            "T1816",
            "L_CEP",
            "T1819"
          ]
        },
        {
          "id": "T1877",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "442567/1000000",
          "sources": [
            "T1847",
            "T1861",
            "T1855"
          ]
        },
        {
          "id": "T1879",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "208327/500000",
          "sources": [
            "T1847",
            "L_CGH",
            "T1860"
          ]
        },
        {
          "id": "T1881",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178289/500000",
          "sources": [
            "T1847",
            "T1862",
            "L_AGO"
          ]
        },
        {
          "id": "T1892",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363309/1000000",
          "sources": [
            "U_AEF",
            "T1773",
            "T1833"
          ]
        },
        {
          "id": "T1896",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "26841/62500",
          "sources": [
            "U_AEH",
            "T1773",
            "L_EHO"
          ]
        },
        {
          "id": "T1897",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "84637/250000",
          "sources": [
            "L_AEG",
            "T1845",
            "L_AGO"
          ]
        },
        {
          "id": "T1900",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "75543/200000",
          "sources": [
            "T1855",
            "L_AGP",
            "T1859"
          ]
        },
        {
          "id": "T1904",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "88583/250000",
          "sources": [
            "T1840",
            "T1861",
            "L_BFG"
          ]
        },
        {
          "id": "T1920",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "9396/15625",
          "sources": [
            "T1834",
            "T1833",
            "T1874"
          ]
        },
        {
          "id": "T1923",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "4722/15625",
          "sources": [
            "L_CEP",
            "T1864",
            "L_CGP"
          ]
        },
        {
          "id": "T1926",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "361887/1000000",
          "sources": [
            "L_CEP",
            "T1822",
            "L_COP"
          ]
        },
        {
          "id": "T1929",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "358147/1000000",
          "sources": [
            "T1833",
            "L_FGO",
            "T1845"
          ]
        },
        {
          "id": "T1930",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "190743/500000",
          "sources": [
            "T1833",
            "L_FOP",
            "T1822"
          ]
        },
        {
          "id": "T1931",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "17733/50000",
          "sources": [
            "T1845",
            "L_EHO",
            "T1856"
          ]
        },
        {
          "id": "T1933",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "24867/200000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1876",
            "U_ACH"
          ]
        },
        {
          "id": "T1940",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "105187/1000000",
          "sources": [
            "T1876",
            "L_COP",
            "T1881",
            "L_CEP",
            "T1920"
          ]
        },
        {
          "id": "T1943",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "125411/1000000",
          "sources": [
            "T1933",
            "T1930",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T1946",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "21989/125000",
          "sources": [
            "T1897",
            "T1930",
            "T1943",
            "T1833",
            "U_AEF"
          ]
        },
        {
          "id": "T1952",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "148503/1000000",
          "sources": [
            "T1877",
            "L_FHO",
            "L_AFH",
            "T1874",
            "T1892"
          ]
        },
        {
          "id": "T1955",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "120493/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T1900",
            "L_FHO",
            "T1892"
          ]
        },
        {
          "id": "T1957",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "22521/200000",
          "sources": [
            "T1897",
            "L_FHO",
            "T1836",
            "L_EHO",
            "T1896"
          ]
        },
        {
          "id": "T1958",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "851497/1000000",
          "sources": [
            "T1952"
          ]
        },
        {
          "id": "T1960",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "36291/200000",
          "sources": [
            "T1876",
            "L_FHO",
            "T1879",
            "T1957",
            "L_AEH",
            "T1874",
            "U_CEH"
          ]
        },
        {
          "id": "T1964",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135521/1000000",
          "sources": [
            "L_ABC",
            "T1929",
            "L_AEG",
            "T1904",
            "T1855",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T1968",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "152551/1000000",
          "sources": [
            "L_AEG",
            "T1863",
            "T1897",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T1970",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "31727/200000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T1904",
            "T1855",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T1978",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "39533/250000",
          "sources": [
            "T1970",
            "T1957",
            "L_AEG",
            "T1874",
            "L_AGO",
            "L_CEF",
            "T1920"
          ]
        },
        {
          "id": "T1979",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "109123/1000000",
          "sources": [
            "T1926",
            "L_FGH",
            "T1874",
            "T1931",
            "L_CGH",
            "T1957",
            "T1958"
          ]
        },
        {
          "id": "T1982",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "126609/1000000",
          "sources": [
            "T1923",
            "T1955",
            "T0256",
            "T1931",
            "L_CGH",
            "T1930",
            "U_CEH"
          ]
        },
        {
          "id": "T1983",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "165043/1000000",
          "sources": [
            "T1970",
            "L_EHO",
            "L_AEG",
            "T1863",
            "L_AGO",
            "L_CEH",
            "T1920"
          ]
        },
        {
          "id": "T1984",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "31457/250000",
          "sources": [
            "T1876",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T1952",
            "U_AEH"
          ]
        },
        {
          "id": "T1985",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "328/3125",
          "sources": [
            "T1876",
            "L_FGO",
            "L_AEG",
            "T1874",
            "T1897",
            "T1984",
            "U_AEF"
          ]
        },
        {
          "id": "T1986",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "215707/1000000",
          "sources": [
            "T1876",
            "L_FHO",
            "L_AEH",
            "T1874",
            "T1897",
            "T1952",
            "U_AEF"
          ]
        },
        {
          "id": "T1987",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "116209/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T1984",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T1998",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "161799/500000",
          "sources": [
            "T1940",
            "L_CEP",
            "T1943"
          ]
        },
        {
          "id": "T1999",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "88519/200000",
          "sources": [
            "T1970",
            "T1984",
            "T1978"
          ]
        },
        {
          "id": "T2001",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "208339/500000",
          "sources": [
            "T1970",
            "L_CGH",
            "T1983"
          ]
        },
        {
          "id": "T2003",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "71319/200000",
          "sources": [
            "T1970",
            "T1985",
            "L_AGO"
          ]
        },
        {
          "id": "T2014",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363299/1000000",
          "sources": [
            "U_AEF",
            "T1897",
            "T1957"
          ]
        },
        {
          "id": "T2018",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "107363/250000",
          "sources": [
            "U_AEH",
            "T1897",
            "L_EHO"
          ]
        },
        {
          "id": "T2019",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "338551/1000000",
          "sources": [
            "L_AEG",
            "T1968",
            "L_AGO"
          ]
        },
        {
          "id": "T2022",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "377741/1000000",
          "sources": [
            "T1978",
            "L_AGP",
            "T1982"
          ]
        },
        {
          "id": "T2026",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354349/1000000",
          "sources": [
            "T1964",
            "T1984",
            "L_BFG"
          ]
        },
        {
          "id": "T2042",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "601321/1000000",
          "sources": [
            "T1958",
            "T1957",
            "T1874"
          ]
        },
        {
          "id": "T2045",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "302209/1000000",
          "sources": [
            "L_CEP",
            "T1987",
            "L_CGP"
          ]
        },
        {
          "id": "T2048",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "45239/125000",
          "sources": [
            "L_CEP",
            "T1946",
            "L_COP"
          ]
        },
        {
          "id": "T2051",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "89539/250000",
          "sources": [
            "T1957",
            "L_FGO",
            "T1968"
          ]
        },
        {
          "id": "T2052",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "381517/1000000",
          "sources": [
            "T1957",
            "L_FOP",
            "T1946"
          ]
        },
        {
          "id": "T2053",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "177337/500000",
          "sources": [
            "T1968",
            "L_EHO",
            "T1979"
          ]
        },
        {
          "id": "T2055",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "62169/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T1998",
            "U_ACH"
          ]
        },
        {
          "id": "T2062",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "52599/500000",
          "sources": [
            "T1998",
            "L_COP",
            "T2003",
            "L_CEP",
            "T2042"
          ]
        },
        {
          "id": "T2065",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "125417/1000000",
          "sources": [
            "T2055",
            "T2052",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T2068",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "21991/125000",
          "sources": [
            "T2019",
            "T2052",
            "T2065",
            "T1957",
            "U_AEF"
          ]
        },
        {
          "id": "T2074",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "29703/200000",
          "sources": [
            "T1999",
            "L_FHO",
            "L_AFH",
            "T1874",
            "T2014"
          ]
        },
        {
          "id": "T2077",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "120503/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2022",
            "L_FHO",
            "T2014"
          ]
        },
        {
          "id": "T2079",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "112609/1000000",
          "sources": [
            "T2019",
            "L_FHO",
            "T1960",
            "L_EHO",
            "T2018"
          ]
        },
        {
          "id": "T2080",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "170297/200000",
          "sources": [
            "T2074"
          ]
        },
        {
          "id": "T2082",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "90731/500000",
          "sources": [
            "T1998",
            "L_FHO",
            "T2001",
            "T2079",
            "L_AEH",
            "T1874",
            "U_CEH"
          ]
        },
        {
          "id": "T2086",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "16941/125000",
          "sources": [
            "L_ABC",
            "T2051",
            "L_AEG",
            "T2026",
            "T1978",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T2091",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "152553/1000000",
          "sources": [
            "L_AEG",
            "T1986",
            "T2019",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T2093",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "158641/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T2026",
            "T1978",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T2101",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158141/1000000",
          "sources": [
            "T2093",
            "T2079",
            "L_AEG",
            "T1874",
            "L_AGO",
            "L_CEF",
            "T2042"
          ]
        },
        {
          "id": "T2102",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "10913/100000",
          "sources": [
            "T2048",
            "L_FGH",
            "T1874",
            "T2053",
            "L_CGH",
            "T2079",
            "T2080"
          ]
        },
        {
          "id": "T2105",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "126617/1000000",
          "sources": [
            "T2045",
            "T2077",
            "T0256",
            "T2053",
            "L_CGH",
            "T2052",
            "U_CEH"
          ]
        },
        {
          "id": "T2106",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "41263/250000",
          "sources": [
            "T2093",
            "L_EHO",
            "L_AEG",
            "T1986",
            "L_AGO",
            "L_CEH",
            "T2042"
          ]
        },
        {
          "id": "T2107",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "15729/125000",
          "sources": [
            "T1998",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T2074",
            "U_AEH"
          ]
        },
        {
          "id": "T2108",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "20993/200000",
          "sources": [
            "T1998",
            "L_FGO",
            "L_AEG",
            "T1874",
            "T2019",
            "T2107",
            "U_AEF"
          ]
        },
        {
          "id": "T2109",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "53929/250000",
          "sources": [
            "T1998",
            "L_FHO",
            "L_AEH",
            "T1874",
            "T2019",
            "T2074",
            "U_AEF"
          ]
        },
        {
          "id": "T2119",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "34393/250000",
          "sources": [
            "T2079",
            "L_FOP"
          ]
        },
        {
          "id": "T2121",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "64723/200000",
          "sources": [
            "T2062",
            "L_CEP",
            "T2065"
          ]
        },
        {
          "id": "T2122",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "221307/500000",
          "sources": [
            "T2093",
            "T2107",
            "T2101"
          ]
        },
        {
          "id": "T2124",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "416693/1000000",
          "sources": [
            "T2093",
            "L_CGH",
            "T2106"
          ]
        },
        {
          "id": "T2126",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178303/500000",
          "sources": [
            "T2093",
            "T2108",
            "L_AGO"
          ]
        },
        {
          "id": "T2137",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "90823/250000",
          "sources": [
            "U_AEF",
            "T2019",
            "T2079"
          ]
        },
        {
          "id": "T2141",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "429449/1000000",
          "sources": [
            "U_AEH",
            "T2019",
            "L_EHO"
          ]
        },
        {
          "id": "T2142",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "338553/1000000",
          "sources": [
            "L_AEG",
            "T2091",
            "L_AGO"
          ]
        },
        {
          "id": "T2145",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "188879/500000",
          "sources": [
            "T2101",
            "L_AGP",
            "T2105"
          ]
        },
        {
          "id": "T2149",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "8859/25000",
          "sources": [
            "T2086",
            "T2107",
            "L_BFG"
          ]
        },
        {
          "id": "T2165",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "75163/125000",
          "sources": [
            "T2080",
            "T2079",
            "T2119"
          ]
        },
        {
          "id": "T2170",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "45241/125000",
          "sources": [
            "L_CEP",
            "T2068",
            "L_COP"
          ]
        },
        {
          "id": "T2173",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "179081/500000",
          "sources": [
            "T2079",
            "L_FGO",
            "T2091"
          ]
        },
        {
          "id": "T2174",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "381537/1000000",
          "sources": [
            "T2079",
            "L_FOP",
            "T2068"
          ]
        },
        {
          "id": "T2175",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "354683/1000000",
          "sources": [
            "T2091",
            "L_EHO",
            "T2102"
          ]
        },
        {
          "id": "T2177",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "6217/50000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T2121",
            "U_ACH"
          ]
        },
        {
          "id": "T2184",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "21041/200000",
          "sources": [
            "T2121",
            "L_COP",
            "T2126",
            "L_CEP",
            "T2165"
          ]
        },
        {
          "id": "T2187",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "6271/50000",
          "sources": [
            "T2177",
            "T2174",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T2189",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175939/1000000",
          "sources": [
            "T2142",
            "T2174",
            "T2187",
            "T2079",
            "U_AEF"
          ]
        },
        {
          "id": "T2195",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "148523/1000000",
          "sources": [
            "T2122",
            "L_FHO",
            "L_AFH",
            "T2119",
            "T2137"
          ]
        },
        {
          "id": "T2198",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "12051/100000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2145",
            "L_FHO",
            "T2137"
          ]
        },
        {
          "id": "T2200",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "28153/250000",
          "sources": [
            "T2142",
            "L_FHO",
            "T2082",
            "L_EHO",
            "T2141"
          ]
        },
        {
          "id": "T2201",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "851477/1000000",
          "sources": [
            "T2195"
          ]
        },
        {
          "id": "T2203",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181467/1000000",
          "sources": [
            "T2121",
            "L_FHO",
            "T2124",
            "T2200",
            "L_AEH",
            "T2119",
            "U_CEH"
          ]
        },
        {
          "id": "T2207",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135533/1000000",
          "sources": [
            "L_ABC",
            "T2173",
            "L_AEG",
            "T2149",
            "T2101",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T2211",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "30511/200000",
          "sources": [
            "L_AEG",
            "T2109",
            "T2142",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T2213",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "31729/200000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T2149",
            "T2101",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T2221",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158147/1000000",
          "sources": [
            "T2213",
            "T2200",
            "L_AEG",
            "T2119",
            "L_AGO",
            "L_CEF",
            "T2165"
          ]
        },
        {
          "id": "T2222",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "21827/200000",
          "sources": [
            "T2170",
            "L_FGH",
            "T2119",
            "T2175",
            "L_CGH",
            "T2200",
            "T2201"
          ]
        },
        {
          "id": "T2225",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "126623/1000000",
          "sources": [
            "T2045",
            "T2198",
            "T0256",
            "T2175",
            "L_CGH",
            "T2174",
            "U_CEH"
          ]
        },
        {
          "id": "T2226",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "82529/500000",
          "sources": [
            "T2213",
            "L_EHO",
            "L_AEG",
            "T2109",
            "L_AGO",
            "L_CEH",
            "T2165"
          ]
        },
        {
          "id": "T2227",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "62917/500000",
          "sources": [
            "T2121",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T2195",
            "U_AEH"
          ]
        },
        {
          "id": "T2228",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "13121/125000",
          "sources": [
            "T2121",
            "L_FGO",
            "L_AEG",
            "T2119",
            "T2142",
            "T2227",
            "U_AEF"
          ]
        },
        {
          "id": "T2229",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "107861/500000",
          "sources": [
            "T2121",
            "L_FHO",
            "L_AEH",
            "T2119",
            "T2142",
            "T2195",
            "U_AEF"
          ]
        },
        {
          "id": "T2230",
          "relation": 3865,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "11621/100000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T2227",
            "L_DEP",
            "T0256",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T2241",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "2589/8000",
          "sources": [
            "T2184",
            "L_CEP",
            "T2187"
          ]
        },
        {
          "id": "T2242",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "221313/500000",
          "sources": [
            "T2213",
            "T2227",
            "T2221"
          ]
        },
        {
          "id": "T2244",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "416703/1000000",
          "sources": [
            "T2213",
            "L_CGH",
            "T2226"
          ]
        },
        {
          "id": "T2246",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356613/1000000",
          "sources": [
            "T2213",
            "T2228",
            "L_AGO"
          ]
        },
        {
          "id": "T2257",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363287/1000000",
          "sources": [
            "U_AEF",
            "T2142",
            "T2200"
          ]
        },
        {
          "id": "T2261",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "429447/1000000",
          "sources": [
            "U_AEH",
            "T2142",
            "L_EHO"
          ]
        },
        {
          "id": "T2262",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "67711/200000",
          "sources": [
            "L_AEG",
            "T2211",
            "L_AGO"
          ]
        },
        {
          "id": "T2265",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "37777/100000",
          "sources": [
            "T2221",
            "L_AGP",
            "T2225"
          ]
        },
        {
          "id": "T2269",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354367/1000000",
          "sources": [
            "T2207",
            "T2227",
            "L_BFG"
          ]
        },
        {
          "id": "T2285",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "601293/1000000",
          "sources": [
            "T2201",
            "T2200",
            "T2119"
          ]
        },
        {
          "id": "T2288",
          "relation": 32,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "30221/100000",
          "sources": [
            "L_CEP",
            "T2230",
            "L_CGP"
          ]
        },
        {
          "id": "T2291",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "361939/1000000",
          "sources": [
            "L_CEP",
            "T2189",
            "L_COP"
          ]
        },
        {
          "id": "T2294",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "358167/1000000",
          "sources": [
            "T2200",
            "L_FGO",
            "T2211"
          ]
        },
        {
          "id": "T2295",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "381551/1000000",
          "sources": [
            "T2200",
            "L_FOP",
            "T2189"
          ]
        },
        {
          "id": "T2296",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "35469/100000",
          "sources": [
            "T2211",
            "L_EHO",
            "T2222"
          ]
        },
        {
          "id": "T2298",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124341/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T2241",
            "U_ACH"
          ]
        },
        {
          "id": "T2303",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "10521/100000",
          "sources": [
            "T2241",
            "L_COP",
            "T2246",
            "L_CEP",
            "T2285"
          ]
        },
        {
          "id": "T2306",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "125423/1000000",
          "sources": [
            "T2298",
            "T2295",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T2309",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "87973/500000",
          "sources": [
            "T2262",
            "T2295",
            "T2306",
            "T2200",
            "U_AEF"
          ]
        },
        {
          "id": "T2315",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "9283/62500",
          "sources": [
            "T2242",
            "L_FHO",
            "L_AFH",
            "T2119",
            "T2257"
          ]
        },
        {
          "id": "T2318",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "24103/200000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2265",
            "L_FHO",
            "T2257"
          ]
        },
        {
          "id": "T2320",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "56307/500000",
          "sources": [
            "T2262",
            "L_FHO",
            "T2203",
            "L_EHO",
            "T2261"
          ]
        },
        {
          "id": "T2321",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "53217/62500",
          "sources": [
            "T2315"
          ]
        },
        {
          "id": "T2323",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "18147/100000",
          "sources": [
            "T2241",
            "L_FHO",
            "T2244",
            "T2320",
            "L_AEH",
            "T2119",
            "U_CEH"
          ]
        },
        {
          "id": "T2327",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135537/1000000",
          "sources": [
            "L_ABC",
            "T2294",
            "L_AEG",
            "T2269",
            "T2221",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T2331",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "38139/250000",
          "sources": [
            "L_AEG",
            "T2229",
            "T2262",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T2333",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "19831/125000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T2269",
            "T2221",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T2341",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158151/1000000",
          "sources": [
            "T2333",
            "T2320",
            "L_AEG",
            "T2119",
            "L_AGO",
            "L_CEF",
            "T2285"
          ]
        },
        {
          "id": "T2342",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "109139/1000000",
          "sources": [
            "T2291",
            "L_FGH",
            "T2119",
            "T2296",
            "L_CGH",
            "T2320",
            "T2321"
          ]
        },
        {
          "id": "T2345",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "126627/1000000",
          "sources": [
            "T2288",
            "T2318",
            "T0256",
            "T2296",
            "L_CGH",
            "T2295",
            "U_CEH"
          ]
        },
        {
          "id": "T2346",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "165063/1000000",
          "sources": [
            "T2333",
            "L_EHO",
            "L_AEG",
            "T2229",
            "L_AGO",
            "L_CEH",
            "T2285"
          ]
        },
        {
          "id": "T2347",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "31459/250000",
          "sources": [
            "T2241",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T2315",
            "U_AEH"
          ]
        },
        {
          "id": "T2348",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "10497/100000",
          "sources": [
            "T2241",
            "L_FGO",
            "L_AEG",
            "T2119",
            "T2262",
            "T2347",
            "U_AEF"
          ]
        },
        {
          "id": "T2357",
          "relation": 7000,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "137573/1000000",
          "sources": [
            "T2320",
            "L_FOP"
          ]
        },
        {
          "id": "T2359",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "323633/1000000",
          "sources": [
            "T2303",
            "L_CEP",
            "T2306"
          ]
        },
        {
          "id": "T2360",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "88527/200000",
          "sources": [
            "T2333",
            "T2347",
            "T2341"
          ]
        },
        {
          "id": "T2362",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "416711/1000000",
          "sources": [
            "T2333",
            "L_CGH",
            "T2346"
          ]
        },
        {
          "id": "T2364",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178309/500000",
          "sources": [
            "T2333",
            "T2348",
            "L_AGO"
          ]
        },
        {
          "id": "T2375",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363283/1000000",
          "sources": [
            "U_AEF",
            "T2262",
            "T2320"
          ]
        },
        {
          "id": "T2379",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "85889/200000",
          "sources": [
            "U_AEH",
            "T2262",
            "L_EHO"
          ]
        },
        {
          "id": "T2380",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "84639/250000",
          "sources": [
            "L_AEG",
            "T2331",
            "L_AGO"
          ]
        },
        {
          "id": "T2383",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "188889/500000",
          "sources": [
            "T2341",
            "L_AGP",
            "T2345"
          ]
        },
        {
          "id": "T2387",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354373/1000000",
          "sources": [
            "T2327",
            "T2347",
            "L_BFG"
          ]
        },
        {
          "id": "T2403",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "120257/200000",
          "sources": [
            "T2321",
            "T2320",
            "T2357"
          ]
        },
        {
          "id": "T2408",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "180973/500000",
          "sources": [
            "L_CEP",
            "T2309",
            "L_COP"
          ]
        },
        {
          "id": "T2411",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "35817/100000",
          "sources": [
            "T2320",
            "L_FGO",
            "T2331"
          ]
        },
        {
          "id": "T2412",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "9539/25000",
          "sources": [
            "T2320",
            "L_FOP",
            "T2309"
          ]
        },
        {
          "id": "T2413",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "70939/200000",
          "sources": [
            "T2331",
            "L_EHO",
            "T2342"
          ]
        },
        {
          "id": "T2415",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "62171/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T2359",
            "U_ACH"
          ]
        },
        {
          "id": "T2421",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "105213/1000000",
          "sources": [
            "T2359",
            "L_COP",
            "T2364",
            "L_CEP",
            "T2403"
          ]
        },
        {
          "id": "T2424",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "7839/62500",
          "sources": [
            "T2415",
            "T2412",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T2426",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175951/1000000",
          "sources": [
            "T2380",
            "T2412",
            "T2424",
            "T2320",
            "U_AEF"
          ]
        },
        {
          "id": "T2432",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "37133/250000",
          "sources": [
            "T2360",
            "L_FHO",
            "L_AFH",
            "T2357",
            "T2375"
          ]
        },
        {
          "id": "T2435",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "60259/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2383",
            "L_FHO",
            "T2375"
          ]
        },
        {
          "id": "T2437",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "14077/125000",
          "sources": [
            "T2380",
            "L_FHO",
            "T2323",
            "L_EHO",
            "T2379"
          ]
        },
        {
          "id": "T2438",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "212867/250000",
          "sources": [
            "T2432"
          ]
        },
        {
          "id": "T2440",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "90737/500000",
          "sources": [
            "T2359",
            "L_FHO",
            "T2362",
            "T2437",
            "L_AEH",
            "T2357",
            "U_CEH"
          ]
        },
        {
          "id": "T2444",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135539/1000000",
          "sources": [
            "L_ABC",
            "T2411",
            "L_AEG",
            "T2387",
            "T2341",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T2449",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "3173/20000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T2387",
            "T2341",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T2456",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "79077/500000",
          "sources": [
            "T2449",
            "T2437",
            "L_AEG",
            "T2357",
            "L_AGO",
            "L_CEF",
            "T2403"
          ]
        },
        {
          "id": "T2457",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "109141/1000000",
          "sources": [
            "T2408",
            "L_FGH",
            "T2357",
            "T2413",
            "L_CGH",
            "T2437",
            "T2438"
          ]
        },
        {
          "id": "T2460",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "126629/1000000",
          "sources": [
            "T2288",
            "T2435",
            "T0256",
            "T2413",
            "L_CGH",
            "T2412",
            "U_CEH"
          ]
        },
        {
          "id": "T2462",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "125837/1000000",
          "sources": [
            "T2359",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T2432",
            "U_AEH"
          ]
        },
        {
          "id": "T2463",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "26243/250000",
          "sources": [
            "T2359",
            "L_FGO",
            "L_AEG",
            "T2357",
            "T2380",
            "T2462",
            "U_AEF"
          ]
        },
        {
          "id": "T2464",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "215729/1000000",
          "sources": [
            "T2359",
            "L_FHO",
            "L_AEH",
            "T2357",
            "T2380",
            "T2432",
            "U_AEF"
          ]
        },
        {
          "id": "T2474",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "323637/1000000",
          "sources": [
            "T2421",
            "L_CEP",
            "T2424"
          ]
        },
        {
          "id": "T2475",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "442641/1000000",
          "sources": [
            "T2449",
            "T2462",
            "T2456"
          ]
        },
        {
          "id": "T2479",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178311/500000",
          "sources": [
            "T2449",
            "T2463",
            "L_AGO"
          ]
        },
        {
          "id": "T2490",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "4541/12500",
          "sources": [
            "U_AEF",
            "T2380",
            "T2437"
          ]
        },
        {
          "id": "T2494",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "107361/250000",
          "sources": [
            "U_AEH",
            "T2380",
            "L_EHO"
          ]
        },
        {
          "id": "T2497",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "377783/1000000",
          "sources": [
            "T2456",
            "L_AGP",
            "T2460"
          ]
        },
        {
          "id": "T2501",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "44297/125000",
          "sources": [
            "T2444",
            "T2462",
            "L_BFG"
          ]
        },
        {
          "id": "T2516",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "601279/1000000",
          "sources": [
            "T2438",
            "T2437",
            "T2357"
          ]
        },
        {
          "id": "T2521",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "361951/1000000",
          "sources": [
            "L_CEP",
            "T2426",
            "L_COP"
          ]
        },
        {
          "id": "T2524",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "89543/250000",
          "sources": [
            "T2437",
            "L_FGO",
            "T2331"
          ]
        },
        {
          "id": "T2525",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "381567/1000000",
          "sources": [
            "T2437",
            "L_FOP",
            "T2426"
          ]
        },
        {
          "id": "T2526",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "354697/1000000",
          "sources": [
            "T2331",
            "L_EHO",
            "T2457"
          ]
        },
        {
          "id": "T2533",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "21043/200000",
          "sources": [
            "T2474",
            "L_COP",
            "T2479",
            "L_CEP",
            "T2516"
          ]
        },
        {
          "id": "T2535",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "5017/40000",
          "sources": [
            "T2415",
            "T2525",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T2537",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "87977/500000",
          "sources": [
            "T2380",
            "T2525",
            "T2535",
            "T2437",
            "U_AEF"
          ]
        },
        {
          "id": "T2543",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "29707/200000",
          "sources": [
            "T2475",
            "L_FHO",
            "L_AFH",
            "T2357",
            "T2490"
          ]
        },
        {
          "id": "T2546",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "3013/25000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2497",
            "L_FHO",
            "T2490"
          ]
        },
        {
          "id": "T2548",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "112617/1000000",
          "sources": [
            "T2380",
            "L_FHO",
            "T2440",
            "L_EHO",
            "T2494"
          ]
        },
        {
          "id": "T2549",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "170293/200000",
          "sources": [
            "T2543"
          ]
        },
        {
          "id": "T2554",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135541/1000000",
          "sources": [
            "L_ABC",
            "T2524",
            "L_AEG",
            "T2501",
            "T2456",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T2558",
          "relation": 2677,
          "rule": "balance_lo",
          "triangle": "EGO",
          "side": "lo",
          "value": "152557/1000000",
          "sources": [
            "L_AEG",
            "T2464",
            "T2380",
            "L_CGH",
            "L_AGO",
            "L_CEH",
            "U_ACH"
          ]
        },
        {
          "id": "T2560",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "158651/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T2501",
            "T2456",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T2568",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "39539/250000",
          "sources": [
            "T2560",
            "T2548",
            "L_AEG",
            "T2357",
            "L_AGO",
            "L_CEF",
            "T2516"
          ]
        },
        {
          "id": "T2569",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "109143/1000000",
          "sources": [
            "T2521",
            "L_FGH",
            "T2357",
            "T2526",
            "L_CGH",
            "T2548",
            "T2549"
          ]
        },
        {
          "id": "T2571",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "126631/1000000",
          "sources": [
            "T2288",
            "T2546",
            "T0256",
            "T2526",
            "L_CGH",
            "T2525",
            "U_CEH"
          ]
        },
        {
          "id": "T2572",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "41267/250000",
          "sources": [
            "T2560",
            "L_EHO",
            "L_AEG",
            "T2464",
            "L_AGO",
            "L_CEH",
            "T2516"
          ]
        },
        {
          "id": "T2573",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "62919/500000",
          "sources": [
            "T2474",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T2543",
            "U_AEH"
          ]
        },
        {
          "id": "T2574",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "104973/1000000",
          "sources": [
            "T2474",
            "L_FGO",
            "L_AEG",
            "T2357",
            "T2380",
            "T2573",
            "U_AEF"
          ]
        },
        {
          "id": "T2575",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "215731/1000000",
          "sources": [
            "T2474",
            "L_FHO",
            "L_AEH",
            "T2357",
            "T2380",
            "T2543",
            "U_AEF"
          ]
        },
        {
          "id": "T2581",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "8091/25000",
          "sources": [
            "T2533",
            "L_CEP",
            "T2535"
          ]
        },
        {
          "id": "T2582",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "88529/200000",
          "sources": [
            "T2560",
            "T2573",
            "T2568"
          ]
        },
        {
          "id": "T2584",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "416719/1000000",
          "sources": [
            "T2560",
            "L_CGH",
            "T2572"
          ]
        },
        {
          "id": "T2586",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "22289/62500",
          "sources": [
            "T2560",
            "T2574",
            "L_AGO"
          ]
        },
        {
          "id": "T2597",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363279/1000000",
          "sources": [
            "U_AEF",
            "T2380",
            "T2548"
          ]
        },
        {
          "id": "T2601",
          "relation": 11,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "338557/1000000",
          "sources": [
            "L_AEG",
            "T2558",
            "L_AGO"
          ]
        },
        {
          "id": "T2604",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "377787/1000000",
          "sources": [
            "T2568",
            "L_AGP",
            "T2571"
          ]
        },
        {
          "id": "T2608",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354379/1000000",
          "sources": [
            "T2554",
            "T2573",
            "L_BFG"
          ]
        },
        {
          "id": "T2624",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "24051/40000",
          "sources": [
            "T2549",
            "T2548",
            "T2357"
          ]
        },
        {
          "id": "T2629",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "180977/500000",
          "sources": [
            "L_CEP",
            "T2537",
            "L_COP"
          ]
        },
        {
          "id": "T2632",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "179087/500000",
          "sources": [
            "T2548",
            "L_FGO",
            "T2558"
          ]
        },
        {
          "id": "T2633",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "381571/1000000",
          "sources": [
            "T2548",
            "L_FOP",
            "T2537"
          ]
        },
        {
          "id": "T2634",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "3547/10000",
          "sources": [
            "T2558",
            "L_EHO",
            "T2569"
          ]
        },
        {
          "id": "T2636",
          "relation": 47,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "124343/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T2581",
            "U_ACH"
          ]
        },
        {
          "id": "T2639",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "105217/1000000",
          "sources": [
            "T2581",
            "L_COP",
            "T2586",
            "L_CEP",
            "T2624"
          ]
        },
        {
          "id": "T2642",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "62713/500000",
          "sources": [
            "T2636",
            "T2633",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T2644",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175957/1000000",
          "sources": [
            "T2601",
            "T2633",
            "T2642",
            "T2548",
            "U_AEF"
          ]
        },
        {
          "id": "T2650",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "18567/125000",
          "sources": [
            "T2582",
            "L_FHO",
            "L_AFH",
            "T2357",
            "T2597"
          ]
        },
        {
          "id": "T2653",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "60261/500000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2604",
            "L_FHO",
            "T2597"
          ]
        },
        {
          "id": "T2655",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "106433/125000",
          "sources": [
            "T2650"
          ]
        },
        {
          "id": "T2657",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "45369/250000",
          "sources": [
            "T2581",
            "L_FHO",
            "T2584",
            "T2548",
            "L_AEH",
            "T2357",
            "U_CEH"
          ]
        },
        {
          "id": "T2661",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "67771/500000",
          "sources": [
            "L_ABC",
            "T2632",
            "L_AEG",
            "T2608",
            "T2568",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T2666",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "39663/250000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T2608",
            "T2568",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T2672",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158157/1000000",
          "sources": [
            "T2666",
            "T2548",
            "L_AEG",
            "T2357",
            "L_AGO",
            "L_CEF",
            "T2624"
          ]
        },
        {
          "id": "T2673",
          "relation": 3585,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "13643/125000",
          "sources": [
            "T2629",
            "L_FGH",
            "T2357",
            "T2634",
            "L_CGH",
            "T2548",
            "T2655"
          ]
        },
        {
          "id": "T2675",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "126633/1000000",
          "sources": [
            "T2288",
            "T2653",
            "T0256",
            "T2634",
            "L_CGH",
            "T2633",
            "U_CEH"
          ]
        },
        {
          "id": "T2676",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "16507/100000",
          "sources": [
            "T2666",
            "L_EHO",
            "L_AEG",
            "T2575",
            "L_AGO",
            "L_CEH",
            "T2624"
          ]
        },
        {
          "id": "T2677",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "125839/1000000",
          "sources": [
            "T2581",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T2650",
            "U_AEH"
          ]
        },
        {
          "id": "T2678",
          "relation": 3688,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "52487/500000",
          "sources": [
            "T2581",
            "L_FGO",
            "L_AEG",
            "T2357",
            "T2601",
            "T2677",
            "U_AEF"
          ]
        },
        {
          "id": "T2681",
          "relation": 4994,
          "rule": "linear",
          "triangle": "CHO",
          "side": "hi",
          "value": "247179/500000",
          "sources": [
            "T2584",
            "U_CEH"
          ]
        },
        {
          "id": "T2687",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "323643/1000000",
          "sources": [
            "T2639",
            "L_CEP",
            "T2642"
          ]
        },
        {
          "id": "T2690",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "208361/500000",
          "sources": [
            "T2666",
            "L_CGH",
            "T2676"
          ]
        },
        {
          "id": "T2692",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "178313/500000",
          "sources": [
            "T2666",
            "T2678",
            "L_AGO"
          ]
        },
        {
          "id": "T2703",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "181639/500000",
          "sources": [
            "U_AEF",
            "T2601",
            "T2548"
          ]
        },
        {
          "id": "T2707",
          "relation": 10,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "429443/1000000",
          "sources": [
            "U_AEH",
            "T2601",
            "L_EHO"
          ]
        },
        {
          "id": "T2710",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "37779/100000",
          "sources": [
            "T2672",
            "L_AGP",
            "T2675"
          ]
        },
        {
          "id": "T2714",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "354381/1000000",
          "sources": [
            "T2661",
            "T2677",
            "L_BFG"
          ]
        },
        {
          "id": "T2728",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "300637/500000",
          "sources": [
            "T2655",
            "T2548",
            "T2357"
          ]
        },
        {
          "id": "T2736",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "190787/500000",
          "sources": [
            "T2548",
            "L_FOP",
            "T2644"
          ]
        },
        {
          "id": "T2737",
          "relation": 38,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "354701/1000000",
          "sources": [
            "T2558",
            "L_EHO",
            "T2673"
          ]
        },
        {
          "id": "T2742",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "52609/500000",
          "sources": [
            "T2687",
            "L_COP",
            "T2692",
            "L_CEP",
            "T2728"
          ]
        },
        {
          "id": "T2743",
          "relation": 428,
          "rule": "sumlo",
          "triangle": "AEP",
          "side": "lo",
          "value": "125427/1000000",
          "sources": [
            "T2636",
            "T2736",
            "L_AEF",
            "L_BEP",
            "U_BEF"
          ]
        },
        {
          "id": "T2744",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "87979/500000",
          "sources": [
            "T2601",
            "T2736",
            "T2743",
            "T2548",
            "U_AEF"
          ]
        },
        {
          "id": "T2752",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "120523/1000000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2710",
            "L_FHO",
            "T2703"
          ]
        },
        {
          "id": "T2753",
          "relation": 885,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "56309/500000",
          "sources": [
            "T2601",
            "L_FHO",
            "T2657",
            "L_EHO",
            "T2707"
          ]
        },
        {
          "id": "T2755",
          "relation": 2353,
          "rule": "balance_lo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181477/1000000",
          "sources": [
            "T2687",
            "L_FHO",
            "T2690",
            "T2753",
            "L_AEH",
            "T2357",
            "U_CEH"
          ]
        },
        {
          "id": "T2758",
          "relation": 2608,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "135543/1000000",
          "sources": [
            "L_ABC",
            "T2632",
            "L_AEG",
            "T2714",
            "T2672",
            "L_BCE",
            "U_AEF"
          ]
        },
        {
          "id": "T2764",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "79079/500000",
          "sources": [
            "T2666",
            "T2753",
            "L_AEG",
            "T2357",
            "L_AGO",
            "L_CEF",
            "T2728"
          ]
        },
        {
          "id": "T2770",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "64729/200000",
          "sources": [
            "T2742",
            "L_CEP",
            "T2743"
          ]
        },
        {
          "id": "T2771",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "442649/1000000",
          "sources": [
            "T2666",
            "T2677",
            "T2764"
          ]
        },
        {
          "id": "T2777",
          "relation": 8,
          "rule": "sub",
          "triangle": "AEO",
          "side": "hi",
          "value": "520357/1000000",
          "sources": [
            "U_AEF",
            "T2753",
            "T2755"
          ]
        },
        {
          "id": "T2778",
          "relation": 8,
          "rule": "sub",
          "triangle": "EFO",
          "side": "hi",
          "value": "147209/500000",
          "sources": [
            "U_AEF",
            "T2601",
            "T2755"
          ]
        },
        {
          "id": "T2779",
          "relation": 8,
          "rule": "sub",
          "triangle": "AFO",
          "side": "hi",
          "value": "363277/1000000",
          "sources": [
            "U_AEF",
            "T2601",
            "T2753"
          ]
        },
        {
          "id": "T2782",
          "relation": 11,
          "rule": "sub",
          "triangle": "AEG",
          "side": "hi",
          "value": "687/2500",
          "sources": [
            "T2777",
            "T2558",
            "L_AGO"
          ]
        },
        {
          "id": "T2783",
          "relation": 11,
          "rule": "sub",
          "triangle": "EGO",
          "side": "hi",
          "value": "334357/1000000",
          "sources": [
            "T2777",
            "L_AEG",
            "L_AGO"
          ]
        },
        {
          "id": "T2786",
          "relation": 16,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "177191/500000",
          "sources": [
            "T2758",
            "T2677",
            "L_BFG"
          ]
        },
        {
          "id": "T2799",
          "relation": 36,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "14327/40000",
          "sources": [
            "T2753",
            "L_FGO",
            "T2558"
          ]
        },
        {
          "id": "T2800",
          "relation": 37,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "47697/125000",
          "sources": [
            "T2753",
            "L_FOP",
            "T2744"
          ]
        },
        {
          "id": "T2807",
          "relation": 465,
          "rule": "sumlo",
          "triangle": "EOP",
          "side": "lo",
          "value": "175959/1000000",
          "sources": [
            "T2601",
            "T2800",
            "T2743",
            "T2753",
            "U_AEF"
          ]
        },
        {
          "id": "T2812",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "74269/500000",
          "sources": [
            "T2771",
            "L_FHO",
            "L_AFH",
            "T2357",
            "T2779"
          ]
        },
        {
          "id": "T2816",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "425731/500000",
          "sources": [
            "T2812"
          ]
        },
        {
          "id": "T2821",
          "relation": 2917,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "158653/1000000",
          "sources": [
            "L_ABG",
            "L_CEF",
            "L_AEG",
            "T2786",
            "T2764",
            "L_BCE",
            "U_BEF"
          ]
        },
        {
          "id": "T2828",
          "relation": 3611,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "63317/500000",
          "sources": [
            "T2288",
            "T2752",
            "T0256",
            "T2737",
            "L_CGH",
            "T2800",
            "U_CEH"
          ]
        },
        {
          "id": "T2830",
          "relation": 3713,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "107867/500000",
          "sources": [
            "T2770",
            "L_FHO",
            "L_AEH",
            "T2357",
            "T2601",
            "T2812",
            "U_AEF"
          ]
        },
        {
          "id": "T2836",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "356627/1000000",
          "sources": [
            "T2821",
            "T2678",
            "L_AGO"
          ]
        },
        {
          "id": "T2839",
          "relation": 7,
          "rule": "sub",
          "triangle": "AFG",
          "side": "hi",
          "value": "363277/1000000",
          "sources": [
            "U_AEF",
            "L_AEG",
            "T2799"
          ]
        },
        {
          "id": "T2842",
          "relation": 12,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "5903/15625",
          "sources": [
            "T2764",
            "L_AGP",
            "T2828"
          ]
        },
        {
          "id": "T2855",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "601271/1000000",
          "sources": [
            "T2816",
            "T2753",
            "T2357"
          ]
        },
        {
          "id": "T2856",
          "relation": 31,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "311071/500000",
          "sources": [
            "T2816",
            "L_CEP",
            "T0256"
          ]
        },
        {
          "id": "T2860",
          "relation": 35,
          "rule": "sum",
          "triangle": "CEO",
          "side": "lo",
          "value": "361959/1000000",
          "sources": [
            "L_CEP",
            "T2807",
            "L_COP"
          ]
        },
        {
          "id": "T2866",
          "relation": 131,
          "rule": "diffhi",
          "triangle": "AGO",
          "side": "hi",
          "value": "62119/250000",
          "sources": [
            "T2777",
            "T2839",
            "L_AEG",
            "T2755",
            "L_AEF"
          ]
        },
        {
          "id": "T2867",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACP",
          "side": "lo",
          "value": "105219/1000000",
          "sources": [
            "T2770",
            "L_COP",
            "T2836",
            "L_CEP",
            "T2855"
          ]
        },
        {
          "id": "T2871",
          "relation": 589,
          "rule": "sumlo",
          "triangle": "FHP",
          "side": "lo",
          "value": "30131/250000",
          "sources": [
            "L_AFH",
            "L_FOP",
            "T2842",
            "L_FHO",
            "T2779"
          ]
        },
        {
          "id": "T2873",
          "relation": 2705,
          "rule": "balance_lo",
          "triangle": "AHO",
          "side": "lo",
          "value": "22563/100000",
          "sources": [
            "L_AEH",
            "L_FOP",
            "T2601",
            "T2871",
            "T2842",
            "L_EHO",
            "T2856"
          ]
        },
        {
          "id": "T2875",
          "relation": 3577,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158159/1000000",
          "sources": [
            "T2821",
            "T2753",
            "L_AEG",
            "T2357",
            "L_AGO",
            "L_CEF",
            "T2855"
          ]
        },
        {
          "id": "T2877",
          "relation": 3641,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "10317/62500",
          "sources": [
            "T2821",
            "L_EHO",
            "L_AEG",
            "T2830",
            "L_AGO",
            "L_CEH",
            "T2855"
          ]
        },
        {
          "id": "T2881",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "161823/500000",
          "sources": [
            "T2867",
            "L_CEP",
            "T2743"
          ]
        },
        {
          "id": "T2882",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "442651/1000000",
          "sources": [
            "T2821",
            "T2677",
            "T2875"
          ]
        },
        {
          "id": "T2884",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "16669/40000",
          "sources": [
            "T2821",
            "L_CGH",
            "T2877"
          ]
        },
        {
          "id": "T2891",
          "relation": 7,
          "rule": "sub",
          "triangle": "EFG",
          "side": "hi",
          "value": "563293/1000000",
          "sources": [
            "U_AEF",
            "L_AEG",
            "T2875"
          ]
        },
        {
          "id": "T2894",
          "relation": 10,
          "rule": "sub",
          "triangle": "EHO",
          "side": "hi",
          "value": "296813/1000000",
          "sources": [
            "U_AEH",
            "T2601",
            "T2873"
          ]
        },
        {
          "id": "T2904",
          "relation": 571,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "148539/1000000",
          "sources": [
            "T2882",
            "L_FHO",
            "L_AFH",
            "T2357",
            "T2779"
          ]
        },
        {
          "id": "T2905",
          "relation": 571,
          "rule": "diffhi",
          "triangle": "FHO",
          "side": "hi",
          "value": "22317/100000",
          "sources": [
            "T2779",
            "T0123",
            "L_AFH",
            "T2357",
            "T2882"
          ]
        },
        {
          "id": "T2906",
          "relation": 1461,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "851461/1000000",
          "sources": [
            "T2904"
          ]
        },
        {
          "id": "T2907",
          "relation": 2439,
          "rule": "balance_hi",
          "triangle": "CGH",
          "side": "hi",
          "value": "431733/1000000",
          "sources": [
            "T2821",
            "L_EFH",
            "U_ACH",
            "T2891",
            "T2877",
            "L_CEF",
            "L_AEF"
          ]
        },
        {
          "id": "T2911",
          "relation": 3675,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "1573/12500",
          "sources": [
            "T2881",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "L_AEG",
            "T2904",
            "U_AEH"
          ]
        },
        {
          "id": "T2914",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "110663/250000",
          "sources": [
            "T2821",
            "T2911",
            "T2875"
          ]
        },
        {
          "id": "T2921",
          "relation": 30,
          "rule": "sub",
          "triangle": "CEO",
          "side": "hi",
          "value": "60127/100000",
          "sources": [
            "T2906",
            "T2753",
            "T2357"
          ]
        },
        {
          "id": "T2931",
          "relation": 566,
          "rule": "diffhi",
          "triangle": "CFO",
          "side": "hi",
          "value": "374491/1000000",
          "sources": [
            "T2779",
            "T2906",
            "T2914",
            "T2753",
            "L_AEF"
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
          "11"
        ],
        [
          22,
          "50"
        ],
        [
          60,
          "8"
        ],
        [
          66,
          "3"
        ],
        [
          2367,
          "1"
        ],
        [
          2371,
          "2"
        ],
        [
          2375,
          "5"
        ],
        [
          2518,
          "9"
        ],
        [
          2587,
          "79"
        ],
        [
          2648,
          "28"
        ],
        [
          2947,
          "65"
        ],
        [
          2962,
          "38"
        ],
        [
          3118,
          "100"
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
          "index": 2367,
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
          "index": 2371,
          "coefficients": {
            "ACE": "1",
            "ACH": "-1",
            "AEH": "1",
            "CEH": "-1"
          },
          "constant": "0",
          "origin": {
            "kind": "four_point",
            "vertices": "ACEH",
            "direction": 1
          }
        },
        {
          "index": 2375,
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
          "index": 2518,
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
          "index": 2587,
          "coefficients": {
            "CEF": "-93/1000",
            "CEO": "137573/1000000",
            "CFO": "50827/100000"
          },
          "constant": "-8271851771/100000000000",
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
                  "ref": "T2921",
                  "value": "60127/100000"
                },
                {
                  "triangle": "CFO",
                  "side": "lo",
                  "ref": "T2357",
                  "value": "137573/1000000"
                }
              ]
            }
          }
        },
        {
          "index": 2648,
          "coefficients": {
            "ACE": "-93/1000",
            "ACH": "-56309/500000",
            "AEH": "-137573/1000000",
            "AFO": "949687/1000000",
            "CEH": "181477/1000000",
            "CFO": "-13857/20000",
            "EFO": "-16669/40000",
            "FHO": "-161823/500000"
          },
          "constant": "919401/1000000000000",
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
                    "ref": "T2881",
                    "value": "161823/500000"
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
                    "ref": "T2884",
                    "value": "16669/40000"
                  },
                  {
                    "triangle": "EFO",
                    "side": "lo",
                    "ref": "T2753",
                    "value": "56309/500000"
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
                    "ref": "T2357",
                    "value": "137573/1000000"
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
                    "ref": "T2755",
                    "value": "181477/1000000"
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
          "index": 2947,
          "coefficients": {
            "ACH": "152557/1000000",
            "AEG": "-107867/500000",
            "AEO": "-93/1000",
            "AGO": "-13857/20000",
            "CEH": "-93/1000",
            "CGH": "-338557/1000000",
            "CHO": "-93/1000",
            "EGO": "760263/1000000"
          },
          "constant": "670509/1000000000000",
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
                    "ref": "U_ACH",
                    "value": "760263/1000000"
                  },
                  {
                    "triangle": "EGO",
                    "side": "lo",
                    "ref": "T2558",
                    "value": "152557/1000000"
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
                    "ref": "T2830",
                    "value": "107867/500000"
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
                    "ref": "T2601",
                    "value": "338557/1000000"
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
          "index": 2962,
          "coefficients": {
            "ACF": "-93/1000",
            "AFH": "-137573/1000000",
            "AFO": "148539/1000000",
            "CFH": "363277/1000000",
            "CFO": "-93/1000",
            "FHO": "-110663/250000"
          },
          "constant": "122697/1000000000000",
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
                    "ref": "T2779",
                    "value": "363277/1000000"
                  },
                  {
                    "triangle": "CFH",
                    "side": "lo",
                    "ref": "T2904",
                    "value": "148539/1000000"
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
                    "ref": "T2914",
                    "value": "110663/250000"
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
                    "ref": "T2357",
                    "value": "137573/1000000"
                  }
                ]
              }
            ]
          }
        },
        {
          "index": 3118,
          "coefficients": {
            "AEO": "-93/1000",
            "AFO": "-93/1000",
            "AHO": "56309/500000",
            "EFO": "429443/1000000",
            "EHO": "-181477/1000000",
            "FHO": "-338557/1000000"
          },
          "constant": "75113/500000000000",
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
                    "ref": "T2707",
                    "value": "429443/1000000"
                  },
                  {
                    "triangle": "EFO",
                    "side": "lo",
                    "ref": "T2753",
                    "value": "56309/500000"
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
                    "ref": "T2601",
                    "value": "338557/1000000"
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
                    "ref": "T2755",
                    "value": "181477/1000000"
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
        "constant": "-6534673887691/1000000000000",
        "coefficients": {
          "AEF": "24",
          "AEO": "131/200",
          "AFO": "-32141/500000",
          "EFO": "69/250",
          "AEH": "2286989/250000",
          "AHO": "1309/5000",
          "EHO": "-321477/10000",
          "AEG": "-6402271/100000",
          "AGO": "-380141/4000",
          "EGO": "-116581/200000",
          "CEF": "-347/1000",
          "CEO": "-131733/1000000",
          "CFO": "21953/100000",
          "CEH": "9089/250000",
          "CHO": "-9/200",
          "ACE": "99/250",
          "ACF": "233/500",
          "ACH": "-237099/1000000",
          "AFH": "-113887/500000",
          "CFH": "-97737/500000",
          "FHO": "-12684641/250000",
          "CGH": "-4401241/200000"
        }
      },
      "upper": "-177109318831/62500000000",
      "scale": 100,
      "threshold": 0,
      "box": {
        "AEF": {
          "lo": {
            "triangle": "AEF",
            "side": "lo",
            "ref": "L_AEF",
            "value": "13857/20000"
          },
          "hi": {
            "triangle": "AEF",
            "side": "hi",
            "ref": "U_AEF",
            "value": "203613/250000"
          }
        },
        "AEO": {
          "lo": {
            "triangle": "AEO",
            "side": "lo",
            "ref": "T2601",
            "value": "338557/1000000"
          },
          "hi": {
            "triangle": "AEO",
            "side": "hi",
            "ref": "T2777",
            "value": "520357/1000000"
          }
        },
        "AFO": {
          "lo": {
            "triangle": "AFO",
            "side": "lo",
            "ref": "T2755",
            "value": "181477/1000000"
          },
          "hi": {
            "triangle": "AFO",
            "side": "hi",
            "ref": "T2779",
            "value": "363277/1000000"
          }
        },
        "EFO": {
          "lo": {
            "triangle": "EFO",
            "side": "lo",
            "ref": "T2753",
            "value": "56309/500000"
          },
          "hi": {
            "triangle": "EFO",
            "side": "hi",
            "ref": "T2778",
            "value": "147209/500000"
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
            "value": "861/1000"
          }
        },
        "AHO": {
          "lo": {
            "triangle": "AHO",
            "side": "lo",
            "ref": "T2873",
            "value": "22563/100000"
          },
          "hi": {
            "triangle": "AHO",
            "side": "hi",
            "ref": "T2707",
            "value": "429443/1000000"
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
            "ref": "T2894",
            "value": "296813/1000000"
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
            "ref": "T2782",
            "value": "687/2500"
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
            "ref": "T2866",
            "value": "62119/250000"
          }
        },
        "EGO": {
          "lo": {
            "triangle": "EGO",
            "side": "lo",
            "ref": "T2558",
            "value": "152557/1000000"
          },
          "hi": {
            "triangle": "EGO",
            "side": "hi",
            "ref": "T2783",
            "value": "334357/1000000"
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
            "ref": "T2906",
            "value": "851461/1000000"
          }
        },
        "CEO": {
          "lo": {
            "triangle": "CEO",
            "side": "lo",
            "ref": "T2860",
            "value": "361959/1000000"
          },
          "hi": {
            "triangle": "CEO",
            "side": "hi",
            "ref": "T2921",
            "value": "60127/100000"
          }
        },
        "CFO": {
          "lo": {
            "triangle": "CFO",
            "side": "lo",
            "ref": "T2357",
            "value": "137573/1000000"
          },
          "hi": {
            "triangle": "CFO",
            "side": "hi",
            "ref": "T2931",
            "value": "374491/1000000"
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
            "ref": "T2830",
            "value": "107867/500000"
          },
          "hi": {
            "triangle": "CHO",
            "side": "hi",
            "ref": "T2681",
            "value": "247179/500000"
          }
        },
        "ACE": {
          "lo": {
            "triangle": "ACE",
            "side": "lo",
            "ref": "T2881",
            "value": "161823/500000"
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
            "ref": "T2914",
            "value": "110663/250000"
          },
          "hi": {
            "triangle": "ACF",
            "side": "hi",
            "ref": "U_ACF",
            "value": "199761/250000"
          }
        },
        "ACH": {
          "lo": {
            "triangle": "ACH",
            "side": "lo",
            "ref": "T2884",
            "value": "16669/40000"
          },
          "hi": {
            "triangle": "ACH",
            "side": "hi",
            "ref": "U_ACH",
            "value": "760263/1000000"
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
            "value": "240219/1000000"
          }
        },
        "CFH": {
          "lo": {
            "triangle": "CFH",
            "side": "lo",
            "ref": "T2904",
            "value": "148539/1000000"
          },
          "hi": {
            "triangle": "CFH",
            "side": "hi",
            "ref": "T0123",
            "value": "6143/20000"
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
            "ref": "T2905",
            "value": "22317/100000"
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
            "ref": "T2907",
            "value": "431733/1000000"
          }
        }
      }
    }
  }
}
```
