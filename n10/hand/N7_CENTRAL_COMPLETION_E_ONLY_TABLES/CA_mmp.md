# CA_--+

```n7-central-e-only-packet
{
  "id": "CA_--+",
  "cell": "CA",
  "given": [
    "AGO-",
    "AGP-",
    "DGP+"
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
        "AGO": -1,
        "AGP": -1,
        "DGP": 1,
        "COP": -1,
        "EOP": 1,
        "FOP": -1,
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
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "AOP": -1,
        "AFO": -1,
        "BDO": 1,
        "BOP": -1,
        "BFO": -1,
        "CFO": -1,
        "FGO": 1,
        "AFP": -1,
        "BFP": -1,
        "DHP": 1,
        "CFP": -1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "EHO": 1,
        "AFG": -1,
        "BFG": -1
      },
      "trace": [
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
            "OACDP"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACO",
            "DOP",
            "ADO",
            "COP",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OAFHP"
          ],
          "target": "AFO",
          "sign": -1,
          "deps": [
            "HOP",
            "AHO",
            "FOP",
            "AOP",
            "FHO"
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
            "OBCDP"
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "BCO",
            "DOP",
            "BDO",
            "COP",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBFHP"
          ],
          "target": "BFO",
          "sign": -1,
          "deps": [
            "HOP",
            "BHO",
            "FOP",
            "BOP",
            "FHO"
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
            "OCFGH"
          ],
          "target": "FGO",
          "sign": 1,
          "deps": [
            "CFO",
            "GHO",
            "CGO",
            "FHO",
            "CHO"
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
            "AFH",
            [],
            "G",
            [
              "CEF2-AFH-empty"
            ]
          ],
          "target": "AFG",
          "sign": -1,
          "deps": [
            "FGH",
            "AGH"
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
        "L_ACF": {
          "triangle": "ACF",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACF",
            "points": [
              "G"
            ]
          }
        },
        "L_ACG": {
          "triangle": "ACG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACG",
            "points": []
          }
        },
        "L_ADG": {
          "triangle": "ADG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADG",
            "points": []
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FAO",
            "points": [
              "G"
            ]
          }
        },
        "L_AGH": {
          "triangle": "AGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGH",
            "points": []
          }
        },
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
            "points": []
          }
        },
        "L_AHO": {
          "triangle": "AHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAO",
            "points": [
              "G"
            ]
          }
        },
        "L_AHP": {
          "triangle": "AHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAP",
            "points": [
              "G"
            ]
          }
        },
        "L_BCD": {
          "triangle": "BCD",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCD",
            "points": []
          }
        },
        "L_BCG": {
          "triangle": "BCG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCG",
            "points": []
          }
        },
        "L_BCP": {
          "triangle": "BCP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCP",
            "points": []
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
        "L_BEO": {
          "triangle": "BEO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BEO",
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
        "L_BFH": {
          "triangle": "BFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BFH",
            "points": []
          }
        },
        "L_BFO": {
          "triangle": "BFO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FBO",
            "points": [
              "G"
            ]
          }
        },
        "L_BFP": {
          "triangle": "BFP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FBP",
            "points": [
              "G"
            ]
          }
        },
        "L_BGH": {
          "triangle": "BGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGH",
            "points": []
          }
        },
        "L_CDE": {
          "triangle": "CDE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDE",
            "points": []
          }
        },
        "L_CDO": {
          "triangle": "CDO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDO",
            "points": [
              "P"
            ]
          }
        },
        "L_CDP": {
          "triangle": "CDP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDP",
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
        "L_CHP": {
          "triangle": "CHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCP",
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
        "L_DEO": {
          "triangle": "DEO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEO",
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
        "L_DFP": {
          "triangle": "DFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DFP",
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
        "L_EHP": {
          "triangle": "EHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EHP",
            "points": [
              "O"
            ]
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
        "L_GHO": {
          "triangle": "GHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HGO",
            "points": []
          }
        },
        "U_ACD": {
          "triangle": "ACD",
          "side": "hi",
          "value": "27/40",
          "witness": {
            "kind": "central_ACD_cap"
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
        "U_AFO": {
          "triangle": "AFO",
          "side": "hi",
          "value": "191391/250000",
          "witness": {
            "kind": "vertices",
            "signed": "FAO",
            "used": [
              0,
              5,
              9,
              10
            ],
            "values": [
              "-30321/250000",
              "-13959/500000",
              "2511/250000",
              "297/3125",
              "98289/1000000",
              "38331/200000",
              "216207/1000000",
              "254169/1000000",
              "67833/200000",
              "21789/50000",
              "545991/1000000",
              "677319/1000000",
              "152463/200000",
              "191391/250000"
            ],
            "cell": "CA"
          }
        },
        "U_AHO": {
          "triangle": "AHO",
          "side": "hi",
          "value": "760263/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "HAO",
            "used": [
              0,
              7,
              9,
              10
            ],
            "values": [
              "-7947/125000",
              "-243/31250",
              "1701/50000",
              "6399/125000",
              "23247/250000",
              "55629/200000",
              "209271/500000",
              "760263/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCD": {
          "triangle": "BCD",
          "side": "hi",
          "value": "357/1000",
          "witness": {
            "kind": "cap",
            "cap": "BCD",
            "value": "357/1000"
          }
        },
        "U_BCH": {
          "triangle": "BCH",
          "side": "hi",
          "value": "31/40",
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
              "131/500",
              "265429/1000000",
              "92563/250000",
              "433/1000",
              "19003/40000",
              "151/250",
              "31/40"
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
        "U_BEH": {
          "triangle": "BEH",
          "side": "hi",
          "value": "247489/250000",
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
              "152089/250000",
              "40297/62500",
              "347513/500000",
              "88003/100000",
              "23839/25000",
              "974053/1000000",
              "247489/250000"
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
        "8": {
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
        "13": {
          "row": [
            "fan",
            "BEF",
            "BEO",
            "EFO",
            "BFO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BEF",
            "point": "O"
          }
        },
        "24": {
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
        "26": {
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
        "30": {
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
        "31": {
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
        "250": {
          "row": [
            "plu",
            "BCO",
            "CDF",
            "BCD",
            "CFO",
            "BCF",
            "CDO"
          ],
          "witness": {
            "kind": "plu",
            "word": "CBDFO"
          }
        },
        "298": {
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
        "303": {
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
        "408": {
          "row": [
            "plu",
            "CEH",
            "EFO",
            "CEF",
            "EHO",
            "CEO",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "ECFHO"
          }
        },
        "447": {
          "row": [
            "plu",
            "AEF",
            "CFH",
            "ACF",
            "EFH",
            "AFH",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FACEH"
          }
        },
        "508": {
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
        "703": {
          "row": [
            "plu",
            "CFH",
            "EGH",
            "CEH",
            "FGH",
            "CGH",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HCEFG"
          }
        },
        "951": {
          "row": [
            "support",
            "ACF",
            "CFH",
            "ACH",
            "13857/20000"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "CFHA",
            "occupants": [
              "G"
            ],
            "rate": "149/20"
          }
        },
        "996": {
          "row": [
            "quad",
            "AFO",
            "AFH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "AOFH",
            "occupants": [
              "G"
            ]
          }
        },
        "1188": {
          "row": [
            "quad",
            "CDO",
            "CGO",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "CDOG",
            "occupants": [
              "P"
            ]
          }
        },
        "1200": {
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
        "1285": {
          "row": [
            "support",
            "CDO",
            "BCD",
            "BDO",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "DOABC"
          }
        },
        "1300": {
          "row": [
            "support",
            "CFH",
            "BCF",
            "BFH",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "FHABC"
          }
        },
        "1409": {
          "row": [
            "support",
            "CDO",
            "ACD",
            "ADO",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "DOGAC"
          }
        },
        "1497": {
          "row": [
            "support",
            "BCF",
            "BFO",
            "BCO",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "BCPOF"
          }
        },
        "1562": {
          "row": [
            "support",
            "CHP",
            "CFH",
            "CFP",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "CPOFH"
          }
        },
        "2561": {
          "row": [
            "balance",
            [
              [
                1,
                "BCG",
                "EFH"
              ],
              [
                1,
                "BEF",
                "CGH"
              ],
              [
                -1,
                "BEH",
                "CFG"
              ],
              [
                1,
                "BFH",
                "CEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BEF",
            "point": "H",
            "line": "CG"
          }
        },
        "2870": {
          "row": [
            "balance",
            [
              [
                1,
                "CEF",
                "HOP"
              ],
              [
                -1,
                "CEH",
                "FOP"
              ],
              [
                -1,
                "CFH",
                "EOP"
              ],
              [
                -1,
                "COP",
                "EFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEF",
            "point": "H",
            "line": "OP"
          }
        },
        "3101": {
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
        "3437": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "CGH": "760263/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACH",
            "point": "G",
            "line": "CH",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACH",
              "ref": "U_ACH",
              "value": "760263/1000000"
            },
            "fan_lower": [
              {
                "triangle": "CGH",
                "ref": "L_CGH",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "481263/1000000"
          }
        },
        "3619": {
          "row": [
            "linear",
            {
              "ADF": "-93/1000",
              "ADO": "-93/1000",
              "ADG": "191391/250000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FAO",
            "point": "G",
            "line": "AD",
            "side": "lower",
            "outer_upper": {
              "triangle": "AFO",
              "ref": "U_AFO",
              "value": "191391/250000"
            },
            "fan_lower": [
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "AFG",
                "ref": "L_AFG",
                "value": "93/1000"
              }
            ],
            "residual": "121641/250000"
          }
        },
        "3771": {
          "row": [
            "linear",
            {
              "AHO": "574263/1000000",
              "AGH": "-760263/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HAO",
            "point": "G",
            "line": "AH",
            "side": "lower",
            "outer_upper": {
              "triangle": "AHO",
              "ref": "U_AHO",
              "value": "760263/1000000"
            },
            "fan_lower": [
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              }
            ],
            "residual": "481263/1000000"
          }
        },
        "4027": {
          "row": [
            "linear",
            {
              "BCH": "-93/1000",
              "CGH": "31/40"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "CH",
            "side": "lower",
            "outer_upper": {
              "triangle": "BCH",
              "ref": "U_BCH",
              "value": "31/40"
            },
            "fan_lower": [
              {
                "triangle": "CGH",
                "ref": "L_CGH",
                "value": "93/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              },
              {
                "triangle": "BCG",
                "ref": "L_BCG",
                "value": "93/1000"
              }
            ],
            "residual": "62/125"
          }
        },
        "4791": {
          "row": [
            "linear",
            {
              "BCD": "-93/1000",
              "BCF": "-93/1000",
              "BCP": "152853/200000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDF",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CDF",
              "ref": "U_CDF",
              "value": "152853/200000"
            },
            "fan_lower": [
              {
                "triangle": "DFP",
                "ref": "L_DFP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              },
              {
                "triangle": "CDP",
                "ref": "L_CDP",
                "value": "93/1000"
              }
            ],
            "residual": "97053/200000"
          }
        },
        "5073": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-279/1000",
              "BCO": "851731/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "O",
            "line": "BC",
            "side": "lower",
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
        "5141": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-93/1000",
              "BCP": "851731/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEF",
              "ref": "U_CEF",
              "value": "851731/1000000"
            },
            "fan_lower": [
              {
                "triangle": "EFP",
                "ref": "L_EFP",
                "value": "279/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              },
              {
                "triangle": "CEP",
                "ref": "L_CEP",
                "value": "93/1000"
              }
            ],
            "residual": "386731/1000000"
          }
        },
        "5373": {
          "row": [
            "linear",
            {
              "CEP": "577687/1000000",
              "CHP": "-93/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEH",
            "point": "P",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEH",
              "ref": "U_CEH",
              "value": "949687/1000000"
            },
            "fan_lower": [
              {
                "triangle": "EHP",
                "ref": "L_EHP",
                "value": "279/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              },
              {
                "triangle": "CEP",
                "ref": "L_CEP",
                "value": "93/1000"
              }
            ],
            "residual": "484687/1000000"
          }
        },
        "5465": {
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
        "5508": {
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
          "id": "T0036",
          "relation": 24,
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
          "id": "T0060",
          "relation": 303,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "5489/50000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "T0036"
          ]
        },
        {
          "id": "T0064",
          "relation": 408,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "9517/100000",
          "sources": [
            "L_CEF",
            "L_EHO",
            "L_CEO",
            "L_EFH",
            "U_CEH"
          ]
        },
        {
          "id": "T0067",
          "relation": 447,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "27743/250000",
          "sources": [
            "L_ACF",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0078",
          "relation": 1200,
          "rule": "linear",
          "triangle": "CFH",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CEF"
          ]
        },
        {
          "id": "T0080",
          "relation": 1285,
          "rule": "support_z",
          "triangle": "BDO",
          "side": "lo",
          "value": "45409/250000",
          "sources": [
            "L_CDO",
            "U_BCD"
          ]
        },
        {
          "id": "T0081",
          "relation": 1409,
          "rule": "support_z",
          "triangle": "ADO",
          "side": "lo",
          "value": "94909/1000000",
          "sources": [
            "L_CDO",
            "U_ACD"
          ]
        },
        {
          "id": "T0090",
          "relation": 2561,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "20007/200000",
          "sources": [
            "L_BCG",
            "L_EFH",
            "L_BEF",
            "L_CGH",
            "L_BFH",
            "L_CEG",
            "U_BEH"
          ]
        },
        {
          "id": "T0104",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "109841/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0090",
            "L_DEP",
            "T0060",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0154",
          "relation": 5465,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "134969/1000000",
          "sources": [
            "T0064",
            "L_FOP"
          ]
        },
        {
          "id": "T0156",
          "relation": 5508,
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
          "id": "T0159",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "57207/200000",
          "sources": [
            "L_ACG",
            "T0090",
            "L_AFG"
          ]
        },
        {
          "id": "T0170",
          "relation": 13,
          "rule": "sub",
          "triangle": "BFO",
          "side": "hi",
          "value": "70383/100000",
          "sources": [
            "U_BEF",
            "L_BEO",
            "T0064"
          ]
        },
        {
          "id": "T0182",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "295841/1000000",
          "sources": [
            "L_CEP",
            "T0104",
            "L_CGP"
          ]
        },
        {
          "id": "T0186",
          "relation": 30,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "28117/100000",
          "sources": [
            "T0064",
            "L_FOP",
            "L_EOP"
          ]
        },
        {
          "id": "T0194",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "51209/500000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0182",
            "T0067",
            "U_CEH"
          ]
        },
        {
          "id": "T0196",
          "relation": 447,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "3493/31250",
          "sources": [
            "T0159",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0202",
          "relation": 703,
          "rule": "sumlo",
          "triangle": "EGH",
          "side": "lo",
          "value": "118971/500000",
          "sources": [
            "L_CEH",
            "L_FGH",
            "L_CGH",
            "L_EFH",
            "T0078"
          ]
        },
        {
          "id": "T0208",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "1417/12500",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0194",
            "L_DEP",
            "T0156",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0219",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "144209/500000",
          "sources": [
            "L_ACG",
            "T0194",
            "L_AFG"
          ]
        },
        {
          "id": "T0232",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "1871/6250",
          "sources": [
            "L_CEP",
            "T0208",
            "L_CGP"
          ]
        },
        {
          "id": "T0237",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "51541/500000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0232",
            "T0196",
            "U_CEH"
          ]
        },
        {
          "id": "T0239",
          "relation": 447,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "7003/62500",
          "sources": [
            "T0219",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0247",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "113441/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0237",
            "L_DEP",
            "T0156",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0254",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "144541/500000",
          "sources": [
            "L_ACG",
            "T0237",
            "L_AFG"
          ]
        },
        {
          "id": "T0264",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "299441/1000000",
          "sources": [
            "L_CEP",
            "T0247",
            "L_CGP"
          ]
        },
        {
          "id": "T0269",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "51589/500000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0264",
            "T0239",
            "U_CEH"
          ]
        },
        {
          "id": "T0271",
          "relation": 447,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "28031/250000",
          "sources": [
            "T0254",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0278",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "113453/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0269",
            "L_DEP",
            "T0156",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0285",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "144589/500000",
          "sources": [
            "L_ACG",
            "T0269",
            "L_AFG"
          ]
        },
        {
          "id": "T0293",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "299453/1000000",
          "sources": [
            "L_CEP",
            "T0278",
            "L_CGP"
          ]
        },
        {
          "id": "T0298",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "103203/1000000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0293",
            "T0271",
            "U_CEH"
          ]
        },
        {
          "id": "T0300",
          "relation": 447,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "22427/200000",
          "sources": [
            "T0285",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0306",
          "relation": 2870,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "1961/20000",
          "sources": [
            "L_CEH",
            "L_FOP",
            "T0300",
            "L_EOP",
            "L_COP",
            "L_EFH",
            "U_CEF"
          ]
        },
        {
          "id": "T0307",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "7091/62500",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0298",
            "L_DEP",
            "T0156",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0321",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "4679/15625",
          "sources": [
            "L_CEP",
            "T0307",
            "L_CGP"
          ]
        },
        {
          "id": "T0323",
          "relation": 31,
          "rule": "sum",
          "triangle": "EHP",
          "side": "lo",
          "value": "5681/20000",
          "sources": [
            "L_EHO",
            "T0306",
            "L_EOP"
          ]
        },
        {
          "id": "T0326",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "103207/1000000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0321",
            "T0300",
            "U_CEH"
          ]
        },
        {
          "id": "T0330",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "EFG",
          "side": "lo",
          "value": "241033/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0326",
            "L_EFH",
            "T0078"
          ]
        },
        {
          "id": "T0337",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "289207/1000000",
          "sources": [
            "L_ACG",
            "T0326",
            "L_AFG"
          ]
        },
        {
          "id": "T0348",
          "relation": 447,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "56069/500000",
          "sources": [
            "T0337",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0351",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "12901/125000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0321",
            "T0348",
            "U_CEH"
          ]
        },
        {
          "id": "T0353",
          "relation": 8,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "36151/125000",
          "sources": [
            "L_BCG",
            "T0351",
            "L_BFG"
          ]
        },
        {
          "id": "T0355",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "BCO",
          "side": "lo",
          "value": "122001/1000000",
          "sources": [
            "L_BCD",
            "T0154",
            "T0353",
            "L_CDO",
            "U_CDF"
          ]
        }
      ],
      "physical": {
        "8": {
          "name": "AREA_LO_ABH",
          "terms": [
            [
              [
                1,
                7
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABH",
            "side": "lo",
            "reference": "L_ABH",
            "value": "93/1000"
          }
        },
        "28": {
          "name": "AREA_LO_AFH",
          "terms": [
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                0,
                5
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFH",
            "side": "lo",
            "reference": "L_AFH",
            "value": "93/1000"
          }
        },
        "30": {
          "name": "AREA_LO_BCD",
          "terms": [
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [
                1,
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCD",
            "side": "lo",
            "reference": "L_BCD",
            "value": "93/1000"
          }
        },
        "50": {
          "name": "AREA_LO_CDE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDE",
            "side": "lo",
            "reference": "L_CDE",
            "value": "93/1000"
          }
        },
        "78": {
          "name": "AREA_LO_EFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "-1"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [],
              "758967/1000000"
            ],
            [
              [
                4,
                6
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFG",
            "side": "lo",
            "reference": "T0330",
            "value": "241033/1000000"
          }
        },
        "84": {
          "name": "AREA_LO_CGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "-1"
            ],
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGH",
            "side": "lo",
            "reference": "L_CGH",
            "value": "93/1000"
          }
        },
        "88": {
          "name": "AREA_LO_BCO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                1,
                10
              ],
              "-1"
            ],
            [
              [],
              "-122001/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0355",
            "value": "122001/1000000"
          }
        },
        "92": {
          "name": "AREA_LO_DEO",
          "terms": [
            [
              [
                4,
                9
              ],
              "-1"
            ],
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3,
                9
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEO",
            "side": "lo",
            "reference": "L_DEO",
            "value": "93/1000"
          }
        },
        "94": {
          "name": "AREA_LO_EFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                10
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [],
              "90483/100000"
            ],
            [
              [
                4,
                9
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFO",
            "side": "lo",
            "reference": "T0064",
            "value": "9517/100000"
          }
        },
        "98": {
          "name": "AREA_LO_AHO",
          "terms": [
            [
              [
                7,
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "L_AHO",
            "value": "279/1000"
          }
        },
        "102": {
          "name": "AREA_LO_CEO",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                2,
                10
              ],
              "-1"
            ],
            [
              [
                4,
                9
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEO",
            "side": "lo",
            "reference": "L_CEO",
            "value": "279/1000"
          }
        },
        "106": {
          "name": "AREA_LO_BCP",
          "terms": [
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                1,
                12
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCP",
            "side": "lo",
            "reference": "L_BCP",
            "value": "93/1000"
          }
        },
        "110": {
          "name": "AREA_LO_DEP",
          "terms": [
            [
              [
                4,
                11
              ],
              "-1"
            ],
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEP",
            "side": "lo",
            "reference": "L_DEP",
            "value": "93/1000"
          }
        },
        "112": {
          "name": "AREA_LO_EFP",
          "terms": [
            [
              [
                5,
                12
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                11
              ],
              "-1"
            ],
            [
              [],
              "71883/100000"
            ],
            [
              [
                4,
                11
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFP",
            "side": "lo",
            "reference": "T0186",
            "value": "28117/100000"
          }
        },
        "116": {
          "name": "AREA_LO_AHP",
          "terms": [
            [
              [
                7,
                11
              ],
              "1"
            ],
            [
              [
                0,
                11
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "L_AHP",
            "value": "279/1000"
          }
        },
        "120": {
          "name": "AREA_LO_CEP",
          "terms": [
            [
              [
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                4,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEP",
            "side": "lo",
            "reference": "L_CEP",
            "value": "93/1000"
          }
        },
        "124": {
          "name": "AREA_LO_EHP",
          "terms": [
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                7,
                11
              ],
              "-1"
            ],
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                4,
                11
              ],
              "1"
            ],
            [
              [],
              "-5681/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EHP",
            "side": "lo",
            "reference": "T0323",
            "value": "5681/20000"
          }
        },
        "132": {
          "name": "AREA_LO_AGO",
          "terms": [
            [
              [
                6,
                10
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [
                8,
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "136": {
          "name": "AREA_LO_DGP",
          "terms": [
            [
              [
                6,
                12
              ],
              "1"
            ],
            [
              [
                3,
                6
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                8,
                11
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "148": {
          "name": "AREA_LO_CEG",
          "terms": [
            [
              [
                8
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [
                4,
                6
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [],
              "-4679/15625"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEG",
            "side": "lo",
            "reference": "T0321",
            "value": "4679/15625"
          }
        },
        "164": {
          "name": "AREA_LO_ADG",
          "terms": [
            [
              [
                8
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [
                3,
                6
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADG",
            "side": "lo",
            "reference": "L_ADG",
            "value": "93/1000"
          }
        },
        "180": {
          "name": "AREA_LO_EGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "-1"
            ],
            [
              [
                4,
                6
              ],
              "1"
            ],
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                8
              ],
              "-1"
            ],
            [
              [],
              "-118971/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EGH",
            "side": "lo",
            "reference": "T0202",
            "value": "118971/500000"
          }
        },
        "186": {
          "name": "AREA_LO_ADO",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-94909/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADO",
            "side": "lo",
            "reference": "T0081",
            "value": "94909/1000000"
          }
        },
        "190": {
          "name": "AREA_LO_AFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                0,
                5
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFO",
            "side": "lo",
            "reference": "L_AFO",
            "value": "279/1000"
          }
        },
        "192": {
          "name": "AREA_LO_BDO",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                1,
                10
              ],
              "-1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [
                1,
                3
              ],
              "1"
            ],
            [
              [],
              "-45409/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BDO",
            "side": "lo",
            "reference": "T0080",
            "value": "45409/250000"
          }
        },
        "196": {
          "name": "AREA_LO_BFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                1,
                10
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "L_BFO",
            "value": "279/1000"
          }
        },
        "204": {
          "name": "AREA_LO_BFP",
          "terms": [
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFP",
            "side": "lo",
            "reference": "L_BFP",
            "value": "279/1000"
          }
        },
        "208": {
          "name": "AREA_LO_CFP",
          "terms": [
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [
                2
              ],
              "-1"
            ],
            [
              [],
              "-426/3125"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0156",
            "value": "426/3125"
          }
        },
        "216": {
          "name": "AREA_LO_EHO",
          "terms": [
            [
              [
                10
              ],
              "-1"
            ],
            [
              [
                7,
                9
              ],
              "-1"
            ],
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                4,
                9
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EHO",
            "side": "lo",
            "reference": "L_EHO",
            "value": "93/1000"
          }
        },
        "220": {
          "name": "AREA_LO_BFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "-1"
            ],
            [
              [
                1,
                8
              ],
              "1"
            ],
            [
              [
                6
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFG",
            "side": "lo",
            "reference": "L_BFG",
            "value": "93/1000"
          }
        },
        "232": {
          "name": "EL",
          "terms": [
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [],
              "-270723/500000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "EL"
          }
        },
        "236": {
          "name": "Gsum",
          "terms": [
            [
              [],
              "790/883"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "Gsum"
          }
        },
        "426": {
          "name": "SUPPORT_YCAP_951",
          "terms": [
            [
              [
                2
              ],
              "-3857/10000"
            ],
            [
              [
                0,
                2
              ],
              "-6143/20000"
            ],
            [
              [
                0,
                5
              ],
              "-3857/10000"
            ],
            [
              [
                2,
                7
              ],
              "13857/20000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 951,
            "which": "Y",
            "value": "6143/20000",
            "reference": "T0078"
          }
        },
        "501": {
          "name": "QUAD_996",
          "terms": [
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 996
          }
        },
        "821": {
          "name": "QUAD_1188",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [
                6,
                10
              ],
              "-1"
            ],
            [
              [
                8,
                9
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1188
          }
        },
        "1015": {
          "name": "SUPPORT_XCAP_1300",
          "terms": [
            [
              [
                2
              ],
              "-14317/20000"
            ],
            [
              [
                1
              ],
              "14317/20000"
            ],
            [
              [
                2,
                7
              ],
              "1023/1000"
            ],
            [
              [
                1,
                7
              ],
              "-1023/1000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 1300,
            "which": "X",
            "value": "6143/20000",
            "reference": "T0078"
          }
        },
        "1410": {
          "name": "SUPPORT_YCAP_1497",
          "terms": [
            [
              [
                2
              ],
              "-31917/100000"
            ],
            [
              [
                1
              ],
              "31917/100000"
            ],
            [
              [
                2,
                10
              ],
              "1023/1000"
            ],
            [
              [
                1,
                10
              ],
              "-1023/1000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 1497,
            "which": "Y",
            "value": "70383/100000",
            "reference": "T0170"
          }
        },
        "1540": {
          "name": "SUPPORT_YCAP_1562",
          "terms": [
            [
              [
                2,
                12
              ],
              "6143/20000"
            ],
            [
              [
                7,
                11
              ],
              "-14317/20000"
            ],
            [
              [
                2,
                7
              ],
              "14317/20000"
            ],
            [
              [
                5,
                12
              ],
              "-1023/1000"
            ],
            [
              [
                11
              ],
              "1023/1000"
            ],
            [
              [
                2
              ],
              "-1023/1000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 1562,
            "which": "Y",
            "value": "6143/20000",
            "reference": "T0078"
          }
        },
        "1748": {
          "name": "LINEAR_3437",
          "terms": [
            [
              [
                2,
                7
              ],
              "667263/1000000"
            ],
            [
              [
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "-760263/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-760263/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3437
          }
        },
        "1930": {
          "name": "LINEAR_3619",
          "terms": [
            [
              [],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "-144891/250000"
            ],
            [
              [
                3,
                5
              ],
              "93/1000"
            ],
            [
              [
                0,
                5
              ],
              "-93/1000"
            ],
            [
              [
                10
              ],
              "-93/1000"
            ],
            [
              [
                3,
                9
              ],
              "93/1000"
            ],
            [
              [
                0,
                9
              ],
              "-93/1000"
            ],
            [
              [
                8
              ],
              "191391/250000"
            ],
            [
              [
                3,
                6
              ],
              "-191391/250000"
            ],
            [
              [
                0,
                6
              ],
              "191391/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3619
          }
        },
        "2082": {
          "name": "LINEAR_3771",
          "terms": [
            [
              [
                7,
                9
              ],
              "574263/1000000"
            ],
            [
              [
                0,
                9
              ],
              "-574263/1000000"
            ],
            [
              [
                6,
                7
              ],
              "-760263/1000000"
            ],
            [
              [
                0,
                6
              ],
              "760263/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3771
          }
        },
        "2338": {
          "name": "LINEAR_4027",
          "terms": [
            [
              [
                2,
                7
              ],
              "341/500"
            ],
            [
              [
                1,
                7
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "-31/40"
            ],
            [
              [
                2,
                8
              ],
              "-31/40"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4027
          }
        },
        "3102": {
          "name": "LINEAR_4791",
          "terms": [
            [
              [
                2,
                3
              ],
              "-93/1000"
            ],
            [
              [
                1,
                3
              ],
              "93/1000"
            ],
            [
              [
                2
              ],
              "-93/1000"
            ],
            [
              [
                1
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "152853/200000"
            ],
            [
              [
                1,
                12
              ],
              "-152853/200000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4791
          }
        },
        "3384": {
          "name": "LINEAR_5073",
          "terms": [
            [
              [
                2,
                4
              ],
              "-93/1000"
            ],
            [
              [
                1,
                4
              ],
              "93/1000"
            ],
            [
              [
                2
              ],
              "-279/1000"
            ],
            [
              [
                1
              ],
              "279/1000"
            ],
            [
              [
                2,
                10
              ],
              "851731/1000000"
            ],
            [
              [
                1,
                10
              ],
              "-851731/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5073
          }
        },
        "3452": {
          "name": "LINEAR_5141",
          "terms": [
            [
              [
                2,
                4
              ],
              "-93/1000"
            ],
            [
              [
                1,
                4
              ],
              "93/1000"
            ],
            [
              [
                2
              ],
              "-93/1000"
            ],
            [
              [
                1
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "851731/1000000"
            ],
            [
              [
                1,
                12
              ],
              "-851731/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5141
          }
        },
        "3684": {
          "name": "LINEAR_5373",
          "terms": [
            [
              [
                12
              ],
              "577687/1000000"
            ],
            [
              [
                2,
                12
              ],
              "-670687/1000000"
            ],
            [
              [
                4,
                11
              ],
              "-577687/1000000"
            ],
            [
              [
                2,
                4
              ],
              "577687/1000000"
            ],
            [
              [
                7,
                11
              ],
              "-93/1000"
            ],
            [
              [
                2,
                7
              ],
              "93/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5373
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "270723/500000",
          "120187/1000000",
          "57/100",
          "108013/1000000",
          "201013/1000000",
          "139951/200000",
          "82733/250000",
          "387013/1000000",
          "194903/500000",
          "87177/200000",
          "171427/1000000"
        ],
        "high": [
          "78327/125000",
          "279/1000",
          "440901/500000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "248493/500000",
          "1/1",
          "333289/500000",
          "747219/1000000",
          "864217/1000000",
          "855141/1000000",
          "580973/1000000"
        ],
        "steps": [
          {
            "factor": 8,
            "target": "a",
            "old": [
              "139/1000",
              "137/200"
            ],
            "lines": [
              [
                "-27/250",
                "-6699/250000"
              ],
              [
                "-279/1000",
                "78027/1000000"
              ],
              [
                "-27/250",
                "3/200"
              ],
              [
                "-279/1000",
                "93/500"
              ]
            ],
            "raw": [
              "139/1000",
              "2/3"
            ],
            "new": [
              "139/1000",
              "666667/1000000"
            ]
          },
          {
            "factor": 8,
            "target": "b",
            "old": [
              "27/250",
              "279/1000"
            ],
            "lines": [
              [
                "237/500",
                "-93/1000"
              ],
              [
                "-53667/1000000",
                "-93/1000"
              ],
              [
                "861/1000",
                "-93/1000"
              ],
              [
                "333333/1000000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31/287",
              "279/1000"
            ],
            "new": [
              "108013/1000000",
              "279/1000"
            ]
          },
          {
            "factor": 28,
            "target": "f",
            "old": [
              "27/250",
              "279/1000"
            ],
            "lines": [
              [
                "237/500",
                "-93/1000"
              ],
              [
                "-53667/1000000",
                "-93/1000"
              ],
              [
                "861/1000",
                "-93/1000"
              ],
              [
                "333333/1000000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31/287",
              "279/1000"
            ],
            "new": [
              "108013/1000000",
              "279/1000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "3/25",
              "141/200"
            ],
            "lines": [
              [
                "432987/1000000",
                "-93/1000"
              ],
              [
                "131/500",
                "-93/1000"
              ],
              [
                "774987/1000000",
                "-93/1000"
              ],
              [
                "151/250",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/258329",
              "141/200"
            ],
            "new": [
              "60001/500000",
              "141/200"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "541/1000",
              "883/1000"
            ],
            "lines": [
              [
                "-224999/500000",
                "178499/500000"
              ],
              [
                "27/200",
                "-57/250"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ],
              [
                "-101/500",
                "109/1000"
              ]
            ],
            "raw": [
              "541/1000",
              "346999/393499"
            ],
            "new": [
              "541/1000",
              "88183/100000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "60001/500000",
              "141/200"
            ],
            "lines": [
              [
                "-459/1000",
                "16863/100000"
              ],
              [
                "-11817/100000",
                "-256431/10000000"
              ],
              [
                "-459/1000",
                "323313/1000000"
              ],
              [
                "-11817/100000",
                "1418019/100000000"
              ]
            ],
            "raw": [
              "60001/500000",
              "107771/153000"
            ],
            "new": [
              "60001/500000",
              "352193/500000"
            ]
          },
          {
            "factor": 78,
            "target": "z",
            "old": [
              "139/1000",
              "773/1000"
            ],
            "lines": [
              [
                "-891987/1000000",
                "64665959/100000000"
              ],
              [
                "-891987/1000000",
                "650025209/1000000000"
              ],
              [
                "-721/1000",
                "549197/1000000"
              ],
              [
                "-721/1000",
                "24747/50000"
              ],
              [
                "-891987/1000000",
                "40284959/100000000"
              ],
              [
                "-891987/1000000",
                "597294209/1000000000"
              ],
              [
                "-721/1000",
                "305387/1000000"
              ],
              [
                "-721/1000",
                "442209/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "549197/721000"
            ],
            "new": [
              "139/1000",
              "190429/250000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "59/500",
              "137/200"
            ],
            "lines": [
              [
                "-613/1000",
                "81717/500000"
              ],
              [
                "-613/1000",
                "16249371/50000000"
              ],
              [
                "-1/1",
                "372801/1000000"
              ],
              [
                "-1/1",
                "66625563/100000000"
              ],
              [
                "-613/1000",
                "-43363839/250000000"
              ],
              [
                "-613/1000",
                "-5603555757/25000000000"
              ],
              [
                "-1/1",
                "8977911/250000000"
              ],
              [
                "-1/1",
                "2928149493/25000000000"
              ]
            ],
            "raw": [
              "59/500",
              "66625563/100000000"
            ],
            "new": [
              "59/500",
              "41641/62500"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "139/1000",
              "190429/250000"
            ],
            "lines": [
              [
                "-541/1000",
                "166299/1000000"
              ],
              [
                "-88183/100000",
                "37522779/100000000"
              ],
              [
                "-541/1000",
                "-21222741/125000000"
              ],
              [
                "-88183/100000",
                "19573431/500000000"
              ],
              [
                "-541/1000",
                "33/100"
              ],
              [
                "-88183/100000",
                "67083/100000"
              ],
              [
                "-541/1000",
                "-13641/62500"
              ],
              [
                "-88183/100000",
                "61287/500000"
              ]
            ],
            "raw": [
              "139/1000",
              "67083/88183"
            ],
            "new": [
              "139/1000",
              "30429/40000"
            ]
          },
          {
            "factor": 88,
            "target": "y",
            "old": [
              "3/25",
              "907/1000"
            ],
            "lines": [
              [
                "432987/1000000",
                "-122001/1000000"
              ],
              [
                "131/500",
                "-122001/1000000"
              ],
              [
                "773817/1000000",
                "-122001/1000000"
              ],
              [
                "60283/100000",
                "-122001/1000000"
              ]
            ],
            "raw": [
              "3697/23449",
              "907/1000"
            ],
            "new": [
              "157661/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 92,
            "target": "x",
            "old": [
              "27/250",
              "883/1000"
            ],
            "lines": [
              [
                "-224999/500000",
                "178499/500000"
              ],
              [
                "67193/500000",
                "-113693/500000"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ],
              [
                "-101307/500000",
                "54807/500000"
              ]
            ],
            "raw": [
              "27/250",
              "346999/393499"
            ],
            "new": [
              "27/250",
              "88183/100000"
            ]
          },
          {
            "factor": 98,
            "target": "x",
            "old": [
              "27/250",
              "88183/100000"
            ],
            "lines": [
              [
                "237/500",
                "-279/1000"
              ],
              [
                "-53667/1000000",
                "-279/1000"
              ],
              [
                "861/1000",
                "-279/1000"
              ],
              [
                "333333/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "93/287",
              "88183/100000"
            ],
            "new": [
              "324041/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-57/100",
                "101736399/1000000000"
              ],
              [
                "-57/100",
                "24227390037/100000000000"
              ],
              [
                "-907/1000",
                "284053399/1000000000"
              ],
              [
                "-907/1000",
                "53945061037/100000000000"
              ],
              [
                "-57/100",
                "445683/1000000"
              ],
              [
                "-57/100",
                "33082329/100000000"
              ],
              [
                "-907/1000",
                "157/250"
              ]
            ],
            "raw": [
              "324041/1000000",
              "7819/10000"
            ],
            "new": [
              "324041/1000000",
              "7819/10000"
            ]
          },
          {
            "factor": 106,
            "target": "v",
            "old": [
              "3/25",
              "907/1000"
            ],
            "lines": [
              [
                "432987/1000000",
                "-93/1000"
              ],
              [
                "131/500",
                "-93/1000"
              ],
              [
                "773817/1000000",
                "-93/1000"
              ],
              [
                "60283/100000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/257939",
              "907/1000"
            ],
            "new": [
              "120183/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 110,
            "target": "u",
            "old": [
              "27/250",
              "883/1000"
            ],
            "lines": [
              [
                "-224999/500000",
                "178499/500000"
              ],
              [
                "67193/500000",
                "-113693/500000"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ],
              [
                "-101307/500000",
                "54807/500000"
              ]
            ],
            "raw": [
              "27/250",
              "346999/393499"
            ],
            "new": [
              "27/250",
              "88183/100000"
            ]
          },
          {
            "factor": 112,
            "target": "v",
            "old": [
              "120183/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-891987/1000000",
                "61082259/100000000"
              ],
              [
                "-891987/1000000",
                "610818209/1000000000"
              ],
              [
                "-721/1000",
                "6417/12500"
              ],
              [
                "-721/1000",
                "455733/1000000"
              ],
              [
                "-891987/1000000",
                "27807569/100000000"
              ],
              [
                "-891987/1000000",
                "538852019/1000000000"
              ],
              [
                "-721/1000",
                "1806131/10000000"
              ],
              [
                "-721/1000",
                "38376681/100000000"
              ]
            ],
            "raw": [
              "120183/1000000",
              "12834/18025"
            ],
            "new": [
              "120183/1000000",
              "178003/250000"
            ]
          },
          {
            "factor": 116,
            "target": "u",
            "old": [
              "27/250",
              "88183/100000"
            ],
            "lines": [
              [
                "237/500",
                "-279/1000"
              ],
              [
                "-53667/1000000",
                "-279/1000"
              ],
              [
                "861/1000",
                "-279/1000"
              ],
              [
                "333333/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "93/287",
              "88183/100000"
            ],
            "new": [
              "324041/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 124,
            "target": "v",
            "old": [
              "120183/1000000",
              "178003/250000"
            ],
            "lines": [
              [
                "-1/1",
                "315016237/1000000000"
              ],
              [
                "-1/1",
                "212109027/500000000"
              ],
              [
                "-1/1",
                "57661237/100000000"
              ],
              [
                "-1/1",
                "685814187/1000000000"
              ],
              [
                "-1/1",
                "29103131/100000000"
              ],
              [
                "-1/1",
                "29410401/50000000"
              ],
              [
                "-1/1",
                "3367631/10000000"
              ],
              [
                "-1/1",
                "63393981/100000000"
              ]
            ],
            "raw": [
              "120183/1000000",
              "685814187/1000000000"
            ],
            "new": [
              "120183/1000000",
              "137163/200000"
            ]
          },
          {
            "factor": 148,
            "target": "g",
            "old": [
              "59/500",
              "41641/62500"
            ],
            "lines": [
              [
                "-57/100",
                "14543/200000"
              ],
              [
                "-57/100",
                "21961273/100000000"
              ],
              [
                "-907/1000",
                "31879/125000"
              ],
              [
                "-907/1000",
                "1614967/3125000"
              ],
              [
                "-57/100",
                "14323471/40000000"
              ],
              [
                "-57/100",
                "1172327893/4000000000"
              ],
              [
                "-907/1000",
                "21616151/40000000"
              ],
              [
                "-907/1000",
                "2361034733/4000000000"
              ]
            ],
            "raw": [
              "59/500",
              "2361034733/3628000000"
            ],
            "new": [
              "59/500",
              "325391/500000"
            ]
          },
          {
            "factor": 164,
            "target": "z",
            "old": [
              "139/1000",
              "30429/40000"
            ],
            "lines": [
              [
                "1/1",
                "-57439559/250000000"
              ],
              [
                "1/1",
                "-69516053/100000000"
              ],
              [
                "1/1",
                "-74678887/250000000"
              ],
              [
                "1/1",
                "-382058921/500000000"
              ],
              [
                "1/1",
                "-54909110891/250000000000"
              ],
              [
                "1/1",
                "-40390725797/100000000000"
              ],
              [
                "1/1",
                "-149985757963/250000000000"
              ],
              [
                "1/1",
                "-392106923129/500000000000"
              ]
            ],
            "raw": [
              "54909110891/250000000000",
              "30429/40000"
            ],
            "new": [
              "54909/250000",
              "30429/40000"
            ]
          },
          {
            "factor": 180,
            "target": "z",
            "old": [
              "54909/250000",
              "30429/40000"
            ],
            "lines": [
              [
                "-1/1",
                "5781/15625"
              ],
              [
                "-1/1",
                "1639/4000"
              ],
              [
                "-1/1",
                "173537187/500000000"
              ],
              [
                "-1/1",
                "141596977/250000000"
              ],
              [
                "-1/1",
                "355659/500000"
              ],
              [
                "-1/1",
                "187771/250000"
              ],
              [
                "-1/1",
                "24111087/50000000"
              ],
              [
                "-1/1",
                "350767637/500000000"
              ]
            ],
            "raw": [
              "54909/250000",
              "187771/250000"
            ],
            "new": [
              "54909/250000",
              "187771/250000"
            ]
          },
          {
            "factor": 186,
            "target": "y",
            "old": [
              "157661/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-113876434541/500000000000"
              ],
              [
                "1/1",
                "-116886825347/200000000000"
              ],
              [
                "1/1",
                "-208558622413/500000000000"
              ],
              [
                "1/1",
                "-773798502479/1000000000000"
              ],
              [
                "1/1",
                "-1095272319/5000000000"
              ],
              [
                "1/1",
                "-668277273/2000000000"
              ],
              [
                "1/1",
                "-3379921567/5000000000"
              ],
              [
                "1/1",
                "-7910684861/10000000000"
              ]
            ],
            "raw": [
              "1095272319/5000000000",
              "907/1000"
            ],
            "new": [
              "109527/500000",
              "907/1000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "7819/10000"
            ],
            "lines": [
              [
                "861/1000",
                "-143823436351/500000000000"
              ],
              [
                "333333/1000000",
                "-230651977031/1000000000000"
              ],
              [
                "861/1000",
                "-150667533/500000000"
              ],
              [
                "333333/1000000",
                "-154115973/1000000000"
              ],
              [
                "861/1000",
                "-5655531/15625000"
              ],
              [
                "333333/1000000",
                "-304959088329/1000000000000"
              ],
              [
                "861/1000",
                "-61659/125000"
              ],
              [
                "333333/1000000",
                "-346052907/1000000000"
              ]
            ],
            "raw": [
              "20546205193/61500000000",
              "7819/10000"
            ],
            "new": [
              "83521/250000",
              "7819/10000"
            ]
          },
          {
            "factor": 192,
            "target": "y",
            "old": [
              "109527/500000",
              "907/1000"
            ],
            "lines": [
              [
                "891987/1000000",
                "-104382486071/500000000000"
              ],
              [
                "721/1000",
                "-23530773771/125000000000"
              ],
              [
                "891987/1000000",
                "-170438623703/500000000000"
              ],
              [
                "721/1000",
                "-27554549803/125000000000"
              ],
              [
                "891987/1000000",
                "-131251893887/500000000000"
              ],
              [
                "721/1000",
                "-1209925029/5000000000"
              ],
              [
                "891987/1000000",
                "-328156284191/500000000000"
              ],
              [
                "721/1000",
                "-2679358597/5000000000"
              ]
            ],
            "raw": [
              "104382486071/445993500000",
              "907/1000"
            ],
            "new": [
              "58511/250000",
              "907/1000"
            ]
          },
          {
            "factor": 196,
            "target": "x",
            "old": [
              "83521/250000",
              "7819/10000"
            ],
            "lines": [
              [
                "1/1",
                "-387013/1000000"
              ],
              [
                "1/1",
                "-129495379643/250000000000"
              ],
              [
                "1/1",
                "-106757870357/250000000000"
              ],
              [
                "1/1",
                "-279/500"
              ],
              [
                "1/1",
                "-402914791/1000000000"
              ],
              [
                "1/1",
                "-542098209/1000000000"
              ]
            ],
            "raw": [
              "387013/1000000",
              "7819/10000"
            ],
            "new": [
              "387013/1000000",
              "7819/10000"
            ]
          },
          {
            "factor": 204,
            "target": "u",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "1/1",
                "-387013/1000000"
              ],
              [
                "1/1",
                "-537450269379/1000000000000"
              ],
              [
                "1/1",
                "-407562730621/1000000000000"
              ],
              [
                "1/1",
                "-279/500"
              ],
              [
                "1/1",
                "-88146910119/200000000000"
              ],
              [
                "1/1",
                "-100855689881/200000000000"
              ]
            ],
            "raw": [
              "387013/1000000",
              "88183/100000"
            ],
            "new": [
              "387013/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "58511/250000",
              "907/1000"
            ],
            "lines": [
              [
                "-1/1",
                "503358441/1000000000"
              ],
              [
                "-1/1",
                "316890911/500000000"
              ],
              [
                "-1/1",
                "74058441/100000000"
              ],
              [
                "-1/1",
                "871007791/1000000000"
              ],
              [
                "-1/1",
                "4863783/10000000"
              ],
              [
                "-1/1",
                "3749393/5000000"
              ],
              [
                "-1/1",
                "570783/1000000"
              ],
              [
                "-1/1",
                "8342833/10000000"
              ]
            ],
            "raw": [
              "58511/250000",
              "871007791/1000000000"
            ],
            "new": [
              "58511/250000",
              "27219/31250"
            ]
          },
          {
            "factor": 220,
            "target": "g",
            "old": [
              "59/500",
              "325391/500000"
            ],
            "lines": [
              [
                "1/1",
                "-201013/1000000"
              ],
              [
                "1/1",
                "-83611274817/250000000000"
              ],
              [
                "1/1",
                "-59641975183/250000000000"
              ],
              [
                "1/1",
                "-93/250"
              ],
              [
                "1/1",
                "-60893600023/250000000000"
              ],
              [
                "1/1",
                "-82359649977/250000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "325391/500000"
            ],
            "new": [
              "201013/1000000",
              "325391/500000"
            ]
          },
          {
            "factor": 232,
            "target": "c",
            "old": [
              "541/1000",
              "88183/100000"
            ],
            "lines": [
              [
                "613/1000",
                "-270723/500000"
              ],
              [
                "1/1",
                "-270723/500000"
              ]
            ],
            "raw": [
              "270723/500000",
              "88183/100000"
            ],
            "new": [
              "270723/500000",
              "88183/100000"
            ]
          },
          {
            "factor": 232,
            "target": "h",
            "old": [
              "613/1000",
              "1/1"
            ],
            "lines": [
              [
                "270723/500000",
                "-270723/500000"
              ],
              [
                "88183/100000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "270723/440915",
              "1/1"
            ],
            "new": [
              "307001/500000",
              "1/1"
            ]
          },
          {
            "factor": 236,
            "target": "z",
            "old": [
              "54909/250000",
              "187771/250000"
            ],
            "lines": [
              [
                "-1/1",
                "612505521/883000000"
              ],
              [
                "-1/1",
                "107679747/441500000"
              ]
            ],
            "raw": [
              "54909/250000",
              "612505521/883000000"
            ],
            "new": [
              "54909/250000",
              "138733/200000"
            ]
          },
          {
            "factor": 426,
            "target": "h",
            "old": [
              "307001/500000",
              "1/1"
            ],
            "lines": [
              [
                "3751408611/10000000000",
                "-237742961867/1000000000000"
              ],
              [
                "3751408611/10000000000",
                "-347479626855251/1000000000000000"
              ],
              [
                "1221951831/2000000000",
                "-1917806870527/5000000000000"
              ],
              [
                "1221951831/2000000000",
                "-2742325337857831/5000000000000000"
              ],
              [
                "3751408611/10000000000",
                "-2469099682071/10000000000000"
              ],
              [
                "3751408611/10000000000",
                "-3914461061051463/10000000000000000"
              ],
              [
                "1221951831/2000000000",
                "-785456760891/2000000000000"
              ],
              [
                "1221951831/2000000000",
                "-1184863093642923/2000000000000000"
              ]
            ],
            "raw": [
              "1917806870527/3054879577500",
              "1/1"
            ],
            "new": [
              "78473/125000",
              "1/1"
            ]
          },
          {
            "factor": 821,
            "target": "y",
            "old": [
              "58511/250000",
              "27219/31250"
            ],
            "lines": [
              [
                "798987/1000000",
                "-232193388761/500000000000"
              ],
              [
                "798987/1000000",
                "-249150298489/500000000000"
              ],
              [
                "798987/1000000",
                "-1496554413/4000000000"
              ],
              [
                "798987/1000000",
                "-836549837/4000000000"
              ],
              [
                "174609/500000",
                "-232193388761/500000000000"
              ],
              [
                "174609/500000",
                "-249150298489/500000000000"
              ],
              [
                "174609/500000",
                "-1496554413/4000000000"
              ],
              [
                "174609/500000",
                "-836549837/4000000000"
              ],
              [
                "798987/1000000",
                "-537592498079/1000000000000"
              ],
              [
                "798987/1000000",
                "-732858204671/1000000000000"
              ],
              [
                "798987/1000000",
                "-447344323807/1000000000000"
              ],
              [
                "798987/1000000",
                "-443695066943/1000000000000"
              ],
              [
                "174609/500000",
                "-537592498079/1000000000000"
              ],
              [
                "174609/500000",
                "-732858204671/1000000000000"
              ],
              [
                "174609/500000",
                "-447344323807/1000000000000"
              ],
              [
                "174609/500000",
                "-443695066943/1000000000000"
              ],
              [
                "798987/1000000",
                "-106260651541/250000000000"
              ],
              [
                "798987/1000000",
                "-22947821281/50000000000"
              ],
              [
                "798987/1000000",
                "-1131120153/2000000000"
              ],
              [
                "798987/1000000",
                "-160223573/400000000"
              ],
              [
                "174609/500000",
                "-106260651541/250000000000"
              ],
              [
                "174609/500000",
                "-22947821281/50000000000"
              ],
              [
                "174609/500000",
                "-1131120153/2000000000"
              ],
              [
                "174609/500000",
                "-160223573/400000000"
              ],
              [
                "798987/1000000",
                "-155530218499/500000000000"
              ],
              [
                "798987/1000000",
                "-50632614359/100000000000"
              ],
              [
                "798987/1000000",
                "-225788953667/500000000000"
              ],
              [
                "798987/1000000",
                "-44792865047/100000000000"
              ],
              [
                "174609/500000",
                "-155530218499/500000000000"
              ],
              [
                "174609/500000",
                "-50632614359/100000000000"
              ],
              [
                "174609/500000",
                "-225788953667/500000000000"
              ],
              [
                "174609/500000",
                "-44792865047/100000000000"
              ]
            ],
            "raw": [
              "836549837/3195948000",
              "27219/31250"
            ],
            "new": [
              "261753/1000000",
              "27219/31250"
            ]
          },
          {
            "factor": 1015,
            "target": "h",
            "old": [
              "78473/125000",
              "1/1"
            ],
            "lines": [
              [
                "443401959/1000000000",
                "-6205460261/20000000000"
              ],
              [
                "134241129/500000000",
                "-1878719691/10000000000"
              ],
              [
                "791614791/1000000000",
                "-11078737989/20000000000"
              ],
              [
                "61669509/100000000",
                "-863071711/2000000000"
              ]
            ],
            "raw": [
              "14317/20460",
              "1/1"
            ],
            "new": [
              "139951/200000",
              "1/1"
            ]
          },
          {
            "factor": 1410,
            "target": "y",
            "old": [
              "261753/1000000",
              "27219/31250"
            ],
            "lines": [
              [
                "443401959/1000000000",
                "-13833881061/100000000000"
              ],
              [
                "134241129/500000000",
                "-4188244491/50000000000"
              ],
              [
                "791614791/1000000000",
                "-24697917189/100000000000"
              ],
              [
                "61669509/100000000",
                "-1924052511/10000000000"
              ]
            ],
            "raw": [
              "10639/34100",
              "27219/31250"
            ],
            "new": [
              "155997/500000",
              "27219/31250"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "387013/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-1379855907832389/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-441113984809601/1000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-371241944989701/1250000000000000"
              ],
              [
                "2088321533/4000000000",
                "-115534089808721/250000000000000"
              ],
              [
                "6143/20000",
                "-1595979852772983/10000000000000000"
              ],
              [
                "6143/20000",
                "-503163849896507/2000000000000000"
              ],
              [
                "6143/20000",
                "-1806203597025813/10000000000000000"
              ],
              [
                "6143/20000",
                "-545208598747073/2000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-244404481468161/1000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-70082211102733/200000000000000"
              ],
              [
                "2088321533/4000000000",
                "-91091759052369/250000000000000"
              ],
              [
                "2088321533/4000000000",
                "-23518680512749/50000000000000"
              ],
              [
                "6143/20000",
                "-256062570357963/2000000000000000"
              ],
              [
                "6143/20000",
                "-64351598260927/400000000000000"
              ],
              [
                "6143/20000",
                "-495987679840593/2000000000000000"
              ],
              [
                "6143/20000",
                "-112336620157453/400000000000000"
              ]
            ],
            "raw": [
              "256062570357963/614300000000000",
              "88183/100000"
            ],
            "new": [
              "104209/250000",
              "88183/100000"
            ]
          },
          {
            "factor": 1930,
            "target": "z",
            "old": [
              "54909/250000",
              "138733/200000"
            ],
            "lines": [
              [
                "191391/250000",
                "-25065735829186083/125000000000000000"
              ],
              [
                "191391/250000",
                "-22471666192566861/50000000000000000"
              ],
              [
                "191391/250000",
                "-32944028250542019/125000000000000000"
              ],
              [
                "191391/250000",
                "-128114915805546177/250000000000000000"
              ],
              [
                "191391/250000",
                "-25103498607363333/125000000000000000"
              ],
              [
                "191391/250000",
                "-22906313821417611/50000000000000000"
              ],
              [
                "191391/250000",
                "-31820196999751269/125000000000000000"
              ],
              [
                "191391/250000",
                "-127964965891863927/250000000000000000"
              ],
              [
                "191391/250000",
                "-12124022696737131/62500000000000000"
              ],
              [
                "191391/250000",
                "-6530045728787877/25000000000000000"
              ],
              [
                "191391/250000",
                "-28639366601462283/62500000000000000"
              ],
              [
                "191391/250000",
                "-65680916453389689/125000000000000000"
              ],
              [
                "191391/250000",
                "-3035726021456439/15625000000000000"
              ],
              [
                "191391/250000",
                "-1686842385803313/6250000000000000"
              ],
              [
                "191391/250000",
                "-7019362744016727/15625000000000000"
              ],
              [
                "191391/250000",
                "-16401485374137141/31250000000000000"
              ],
              [
                "191391/250000",
                "-25152947314188333/125000000000000000"
              ],
              [
                "191391/250000",
                "-23475465886192611/50000000000000000"
              ],
              [
                "191391/250000",
                "-30348589116976269/125000000000000000"
              ],
              [
                "191391/250000",
                "-127768613036538927/250000000000000000"
              ],
              [
                "191391/250000",
                "-25190710092365583/125000000000000000"
              ],
              [
                "191391/250000",
                "-23910113515043361/50000000000000000"
              ],
              [
                "191391/250000",
                "-29224757866185519/125000000000000000"
              ],
              [
                "191391/250000",
                "-127618663122856677/250000000000000000"
              ],
              [
                "191391/250000",
                "-760476777452391/3906250000000000"
              ],
              [
                "191391/250000",
                "-439496598475047/1562500000000000"
              ],
              [
                "191391/250000",
                "-1708852939667463/3906250000000000"
              ],
              [
                "191391/250000",
                "-4094235316805379/7812500000000000"
              ],
              [
                "191391/250000",
                "-12186509828326881/62500000000000000"
              ],
              [
                "191391/250000",
                "-7249269390026127/25000000000000000"
              ],
              [
                "191391/250000",
                "-26779731409284033/62500000000000000"
              ],
              [
                "191391/250000",
                "-65432790112044939/125000000000000000"
              ],
              [
                "191391/250000",
                "-31564273579186083/125000000000000000"
              ],
              [
                "191391/250000",
                "-25071081292566861/50000000000000000"
              ],
              [
                "191391/250000",
                "-39442566000542019/125000000000000000"
              ],
              [
                "191391/250000",
                "-141111991305546177/250000000000000000"
              ],
              [
                "191391/250000",
                "-31602036357363333/125000000000000000"
              ],
              [
                "191391/250000",
                "-25505728921417611/50000000000000000"
              ],
              [
                "191391/250000",
                "-38318734749751269/125000000000000000"
              ],
              [
                "191391/250000",
                "-140962041391863927/250000000000000000"
              ],
              [
                "191391/250000",
                "-15373291571737131/62500000000000000"
              ],
              [
                "191391/250000",
                "-7829753278787877/25000000000000000"
              ],
              [
                "191391/250000",
                "-31888635476462283/62500000000000000"
              ],
              [
                "191391/250000",
                "-72179454203389689/125000000000000000"
              ],
              [
                "191391/250000",
                "-3848043240206439/15625000000000000"
              ],
              [
                "191391/250000",
                "-2011769273303313/6250000000000000"
              ],
              [
                "191391/250000",
                "-7831679962766727/15625000000000000"
              ],
              [
                "191391/250000",
                "-18026119811637141/31250000000000000"
              ],
              [
                "191391/250000",
                "-31651485064188333/125000000000000000"
              ],
              [
                "191391/250000",
                "-26074880986192611/50000000000000000"
              ],
              [
                "191391/250000",
                "-36847126866976269/125000000000000000"
              ],
              [
                "191391/250000",
                "-140765688536538927/250000000000000000"
              ],
              [
                "191391/250000",
                "-31689247842365583/125000000000000000"
              ],
              [
                "191391/250000",
                "-26509528615043361/50000000000000000"
              ],
              [
                "191391/250000",
                "-35723295616185519/125000000000000000"
              ],
              [
                "191391/250000",
                "-140615738622856677/250000000000000000"
              ],
              [
                "191391/250000",
                "-963556082139891/3906250000000000"
              ],
              [
                "191391/250000",
                "-520728320350047/1562500000000000"
              ],
              [
                "191391/250000",
                "-1911932244354963/3906250000000000"
              ],
              [
                "191391/250000",
                "-4500393926180379/7812500000000000"
              ],
              [
                "191391/250000",
                "-15435778703326881/62500000000000000"
              ],
              [
                "191391/250000",
                "-8548976940026127/25000000000000000"
              ],
              [
                "191391/250000",
                "-30029000284284033/62500000000000000"
              ],
              [
                "191391/250000",
                "-71931327862044939/125000000000000000"
              ]
            ],
            "raw": [
              "4041340898912377/15949250000000000",
              "138733/200000"
            ],
            "new": [
              "253387/1000000",
              "138733/200000"
            ]
          },
          {
            "factor": 2082,
            "target": "g",
            "old": [
              "201013/1000000",
              "325391/500000"
            ],
            "lines": [
              [
                "-85264255713/200000000000",
                "24925250933137269/200000000000000000"
              ],
              [
                "-393055971/15625000000",
                "114901826398623/15625000000000000"
              ],
              [
                "-654586443/1000000000",
                "191354879166759/1000000000000000"
              ],
              [
                "-253420746579/1000000000000",
                "74082341390584527/1000000000000000000"
              ],
              [
                "-85264255713/200000000000",
                "503576202985947/2000000000000000"
              ],
              [
                "-393055971/15625000000",
                "2321413959249/156250000000000"
              ],
              [
                "-654586443/1000000000",
                "3866029823817/10000000000000"
              ],
              [
                "-253420746579/1000000000000",
                "1496719302279201/10000000000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "213817257/362030000"
            ],
            "new": [
              "201013/1000000",
              "590607/1000000"
            ]
          },
          {
            "factor": 2338,
            "target": "g",
            "old": [
              "201013/1000000",
              "590607/1000000"
            ],
            "lines": [
              [
                "-4338481/8000000",
                "31819723554021/200000000000000"
              ],
              [
                "-4338481/8000000",
                "17022597553131/100000000000000"
              ],
              [
                "-4338481/8000000",
                "50939636427269/200000000000000"
              ],
              [
                "-4338481/8000000",
                "5316510797951/20000000000000"
              ],
              [
                "-31/40",
                "5459699267169/20000000000000"
              ],
              [
                "-31/40",
                "5777735087169/20000000000000"
              ],
              [
                "-31/40",
                "1753135875549/4000000000000"
              ],
              [
                "-31/40",
                "1816743039549/4000000000000"
              ],
              [
                "-4338481/8000000",
                "-5130224554119/200000000000000"
              ],
              [
                "-4338481/8000000",
                "-1452376500939/100000000000000"
              ],
              [
                "-4338481/8000000",
                "-9239167627431/200000000000000"
              ],
              [
                "-4338481/8000000",
                "-701369607519/20000000000000"
              ],
              [
                "-31/40",
                "352940891271/4000000000000"
              ],
              [
                "-31/40",
                "416548055271/4000000000000"
              ],
              [
                "-31/40",
                "109911958891/800000000000"
              ],
              [
                "-31/40",
                "122633391691/800000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "58604614179/100000000000"
            ],
            "new": [
              "201013/1000000",
              "586047/1000000"
            ]
          },
          {
            "factor": 2338,
            "target": "z",
            "old": [
              "253387/1000000",
              "138733/200000"
            ],
            "lines": [
              [
                "-8392413/20000000",
                "15641365025503/100000000000000"
              ],
              [
                "-8392413/20000000",
                "33508201603247/200000000000000"
              ],
              [
                "-2733673/4000000",
                "31885609709247/100000000000000"
              ],
              [
                "-2733673/4000000",
                "13199338194147/40000000000000"
              ],
              [
                "-8392413/20000000",
                "-2619709320711/50000000000000"
              ],
              [
                "-8392413/20000000",
                "-8253365730603/200000000000000"
              ],
              [
                "-2733673/4000000",
                "5502413021161/50000000000000"
              ],
              [
                "-2733673/4000000",
                "4847024727377/40000000000000"
              ],
              [
                "-8392413/20000000",
                "111763153/500000000"
              ],
              [
                "-8392413/20000000",
                "239428097/1000000000"
              ],
              [
                "-2733673/4000000",
                "227834097/500000000"
              ],
              [
                "-2733673/4000000",
                "94313997/200000000"
              ],
              [
                "-8392413/20000000",
                "-18718761/250000000"
              ],
              [
                "-8392413/20000000",
                "-58973253/1000000000"
              ],
              [
                "-2733673/4000000",
                "39316711/250000000"
              ],
              [
                "-2733673/4000000",
                "34633727/200000000"
              ]
            ],
            "raw": [
              "253387/1000000",
              "3042387/4409150"
            ],
            "new": [
              "253387/1000000",
              "690017/1000000"
            ]
          },
          {
            "factor": 3102,
            "target": "v",
            "old": [
              "120183/1000000",
              "137163/200000"
            ],
            "lines": [
              [
                "66251534349/200000000000",
                "-22573230949269/500000000000000"
              ],
              [
                "20057829219/100000000000",
                "-6834106043739/250000000000000"
              ],
              [
                "118280249901/200000000000",
                "-40300461324981/500000000000000"
              ],
              [
                "9214437399/20000000000",
                "-3139544246319/50000000000000"
              ],
              [
                "66251534349/200000000000",
                "-34351276876917/500000000000000"
              ],
              [
                "20057829219/100000000000",
                "-10399940949627/250000000000000"
              ],
              [
                "118280249901/200000000000",
                "-61328053053333/500000000000000"
              ],
              [
                "9214437399/20000000000",
                "-4777665807567/50000000000000"
              ]
            ],
            "raw": [
              "17360031/127377500",
              "137163/200000"
            ],
            "new": [
              "4259/31250",
              "137163/200000"
            ]
          },
          {
            "factor": 3384,
            "target": "y",
            "old": [
              "155997/500000",
              "27219/31250"
            ],
            "lines": [
              [
                "369168322523/1000000000000",
                "-14390409033/100000000000"
              ],
              [
                "111766697013/500000000000",
                "-4356734823/50000000000"
              ],
              [
                "659083927227/1000000000000",
                "-25691498217/100000000000"
              ],
              [
                "51344899873/100000000000",
                "-2001455883/10000000000"
              ],
              [
                "369168322523/1000000000000",
                "-157488313983/1000000000000"
              ],
              [
                "111766697013/500000000000",
                "-47680008273/500000000000"
              ],
              [
                "659083927227/1000000000000",
                "-281167180767/1000000000000"
              ],
              [
                "51344899873/100000000000",
                "-21903888333/100000000000"
              ]
            ],
            "raw": [
              "332010/851731",
              "27219/31250"
            ],
            "new": [
              "194903/500000",
              "27219/31250"
            ]
          },
          {
            "factor": 3452,
            "target": "v",
            "old": [
              "4259/31250",
              "137163/200000"
            ],
            "lines": [
              [
                "369168322523/1000000000000",
                "-6328555233/100000000000"
              ],
              [
                "111766697013/500000000000",
                "-1915987023/50000000000"
              ],
              [
                "659083927227/1000000000000",
                "-11298502017/100000000000"
              ],
              [
                "51344899873/100000000000",
                "-880192083/10000000000"
              ],
              [
                "369168322523/1000000000000",
                "-76869775983/1000000000000"
              ],
              [
                "111766697013/500000000000",
                "-23272530273/500000000000"
              ],
              [
                "659083927227/1000000000000",
                "-137237218767/1000000000000"
              ],
              [
                "51344899873/100000000000",
                "-10691250333/100000000000"
              ]
            ],
            "raw": [
              "146010/851731",
              "137163/200000"
            ],
            "new": [
              "171427/1000000",
              "137163/200000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "60001/500000",
              "352193/500000"
            ],
            "lines": [
              [
                "433433/1000000",
                "-93/1000"
              ],
              [
                "131223/500000",
                "-93/1000"
              ],
              [
                "773817/1000000",
                "-93/1000"
              ],
              [
                "60283/100000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/257939",
              "352193/500000"
            ],
            "new": [
              "120183/1000000",
              "352193/500000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "270723/500000",
              "88183/100000"
            ],
            "lines": [
              [
                "-449817/1000000",
                "356817/1000000"
              ],
              [
                "67193/500000",
                "-113693/500000"
              ],
              [
                "-786817/1000000",
                "693817/1000000"
              ],
              [
                "-101307/500000",
                "54807/500000"
              ]
            ],
            "raw": [
              "270723/500000",
              "693817/786817"
            ],
            "new": [
              "270723/500000",
              "881803/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120183/1000000",
              "352193/500000"
            ],
            "lines": [
              [
                "-229277/500000",
                "8418789/50000000"
              ],
              [
                "-118197/1000000",
                "-2562771/100000000"
              ],
              [
                "-229277/500000",
                "161454239/500000000"
              ],
              [
                "-118197/1000000",
                "14204679/1000000000"
              ]
            ],
            "raw": [
              "120183/1000000",
              "161454239/229277000"
            ],
            "new": [
              "120183/1000000",
              "704189/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "201013/1000000",
              "586047/1000000"
            ],
            "lines": [
              [
                "-139951/200000",
                "2323190127/15625000000"
              ],
              [
                "-139951/200000",
                "9394020047/31250000000"
              ],
              [
                "-1/1",
                "155625311199/500000000000"
              ],
              [
                "-1/1",
                "565365583239/1000000000000"
              ],
              [
                "-139951/200000",
                "-21931849713/250000000000"
              ],
              [
                "-139951/200000",
                "-42206501193/500000000000"
              ],
              [
                "-1/1",
                "37419527709/500000000000"
              ],
              [
                "-1/1",
                "180343939349/1000000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "565365583239/1000000000000"
            ],
            "new": [
              "201013/1000000",
              "282683/500000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "253387/1000000",
              "690017/1000000"
            ],
            "lines": [
              [
                "-270723/500000",
                "29043938783/200000000000"
              ],
              [
                "-881803/1000000",
                "7667724129/20000000000"
              ],
              [
                "-270723/500000",
                "-274345349/2500000000"
              ],
              [
                "-881803/1000000",
                "25685674587/200000000000"
              ],
              [
                "-270723/500000",
                "247433/1000000"
              ],
              [
                "-881803/1000000",
                "58779/100000"
              ],
              [
                "-270723/500000",
                "-2923/25000"
              ],
              [
                "-881803/1000000",
                "223437/1000000"
              ]
            ],
            "raw": [
              "253387/1000000",
              "587790/881803"
            ],
            "new": [
              "253387/1000000",
              "333289/500000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "194903/500000",
              "27219/31250"
            ],
            "lines": [
              [
                "-891987/1000000",
                "676847/1000000"
              ],
              [
                "-891987/1000000",
                "77087/100000"
              ],
              [
                "-721/1000",
                "57938441/100000000"
              ],
              [
                "-721/1000",
                "615784791/1000000000"
              ],
              [
                "-891987/1000000",
                "50704559/100000000"
              ],
              [
                "-891987/1000000",
                "734145509/1000000000"
              ],
              [
                "-721/1000",
                "409583/1000000"
              ],
              [
                "-721/1000",
                "5790603/10000000"
              ]
            ],
            "raw": [
              "194903/500000",
              "770870/891987"
            ],
            "new": [
              "194903/500000",
              "864217/1000000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "666667/1000000"
            ],
            "lines": [
              [
                "-387013/1000000",
                "-1637143637/200000000000"
              ],
              [
                "-387013/1000000",
                "108013/1000000"
              ],
              [
                "-7819/10000",
                "536276869/2000000000"
              ],
              [
                "-7819/10000",
                "5029/10000"
              ]
            ],
            "raw": [
              "139/1000",
              "5029/7819"
            ],
            "new": [
              "139/1000",
              "643177/1000000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "387013/1000000",
              "7819/10000"
            ],
            "lines": [
              [
                "-57/100",
                "52092830131/250000000000"
              ],
              [
                "-57/100",
                "134850804891/500000000000"
              ],
              [
                "-907/1000",
                "97709655631/250000000000"
              ],
              [
                "-907/1000",
                "283434610391/500000000000"
              ],
              [
                "-57/100",
                "212957191109/500000000000"
              ],
              [
                "-57/100",
                "325775566749/1000000000000"
              ],
              [
                "-907/1000",
                "304190842109/500000000000"
              ],
              [
                "-907/1000",
                "622943177749/1000000000000"
              ]
            ],
            "raw": [
              "387013/1000000",
              "212957191109/285000000000"
            ],
            "new": [
              "387013/1000000",
              "747219/1000000"
            ]
          },
          {
            "factor": 110,
            "target": "u",
            "old": [
              "104209/250000",
              "88183/100000"
            ],
            "lines": [
              [
                "-449817/1000000",
                "356817/1000000"
              ],
              [
                "134189/1000000",
                "-227189/1000000"
              ],
              [
                "-786817/1000000",
                "693817/1000000"
              ],
              [
                "-202811/1000000",
                "109811/1000000"
              ]
            ],
            "raw": [
              "104209/250000",
              "693817/786817"
            ],
            "new": [
              "104209/250000",
              "881803/1000000"
            ]
          },
          {
            "factor": 112,
            "target": "v",
            "old": [
              "171427/1000000",
              "137163/200000"
            ],
            "lines": [
              [
                "-891987/1000000",
                "47802311/100000000"
              ],
              [
                "-891987/1000000",
                "582096461/1000000000"
              ],
              [
                "-721/1000",
                "9514013/25000000"
              ],
              [
                "-721/1000",
                "106752813/250000000"
              ],
              [
                "-891987/1000000",
                "2780873/10000000"
              ],
              [
                "-891987/1000000",
                "53885453/100000000"
              ],
              [
                "-721/1000",
                "18062471/100000000"
              ],
              [
                "-721/1000",
                "383769321/1000000000"
              ]
            ],
            "raw": [
              "171427/1000000",
              "582096461/891987000"
            ],
            "new": [
              "171427/1000000",
              "130517/200000"
            ]
          },
          {
            "factor": 132,
            "target": "z",
            "old": [
              "253387/1000000",
              "333289/500000"
            ],
            "lines": [
              [
                "387013/1000000",
                "-98605036739/500000000000"
              ],
              [
                "387013/1000000",
                "-145493497739/500000000000"
              ],
              [
                "387013/1000000",
                "-72147997999/250000000000"
              ],
              [
                "387013/1000000",
                "-39734102303/200000000000"
              ],
              [
                "747219/1000000",
                "-123639353739/500000000000"
              ],
              [
                "747219/1000000",
                "-26133160497/50000000000"
              ],
              [
                "747219/1000000",
                "-84665156499/250000000000"
              ],
              [
                "747219/1000000",
                "-430346725977/1000000000000"
              ],
              [
                "387013/1000000",
                "-292572851821/1000000000000"
              ],
              [
                "387013/1000000",
                "-386349773821/1000000000000"
              ],
              [
                "387013/1000000",
                "-278403920711/500000000000"
              ],
              [
                "387013/1000000",
                "-466886360941/1000000000000"
              ],
              [
                "747219/1000000",
                "-342641485821/1000000000000"
              ],
              [
                "747219/1000000",
                "-618025988283/1000000000000"
              ],
              [
                "747219/1000000",
                "-303438237711/500000000000"
              ],
              [
                "747219/1000000",
                "-698562575403/1000000000000"
              ]
            ],
            "raw": [
              "3746647083/11321500000",
              "333289/500000"
            ],
            "new": [
              "82733/250000",
              "333289/500000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "171427/1000000",
              "130517/200000"
            ],
            "lines": [
              [
                "-798987/1000000",
                "125925884457/1000000000000"
              ],
              [
                "-798987/1000000",
                "50393562279/200000000000"
              ],
              [
                "-217317/500000",
                "41068423929/500000000000"
              ],
              [
                "-217317/500000",
                "-2302781661/500000000000"
              ],
              [
                "-798987/1000000",
                "321662548401/1000000000000"
              ],
              [
                "-798987/1000000",
                "447704475339/1000000000000"
              ],
              [
                "-217317/500000",
                "138936755901/500000000000"
              ],
              [
                "-217317/500000",
                "95565550311/500000000000"
              ],
              [
                "-798987/1000000",
                "13967277087/500000000000"
              ],
              [
                "-798987/1000000",
                "212759999457/500000000000"
              ],
              [
                "-217317/500000",
                "-634179297/40000000000"
              ],
              [
                "-217317/500000",
                "168946624197/1000000000000"
              ],
              [
                "-798987/1000000",
                "16901726109/250000000000"
              ],
              [
                "-798987/1000000",
                "58149043647/125000000000"
              ],
              [
                "-217317/500000",
                "23817867837/1000000000000"
              ],
              [
                "-217317/500000",
                "208618974459/1000000000000"
              ]
            ],
            "raw": [
              "171427/1000000",
              "46312251967/72439000000"
            ],
            "new": [
              "171427/1000000",
              "19979/31250"
            ]
          },
          {
            "factor": 236,
            "target": "g",
            "old": [
              "201013/1000000",
              "282683/500000"
            ],
            "lines": [
              [
                "-1/1",
                "124446761/220750000"
              ],
              [
                "-1/1",
                "100705813/441500000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "124446761/220750000"
            ],
            "new": [
              "201013/1000000",
              "281873/500000"
            ]
          },
          {
            "factor": 501,
            "target": "a",
            "old": [
              "139/1000",
              "643177/1000000"
            ],
            "lines": [
              [
                "-387013/1000000",
                "-28508478663/1000000000000"
              ],
              [
                "-387013/1000000",
                "24488771/1000000000"
              ],
              [
                "-387013/1000000",
                "1960942261/500000000000"
              ],
              [
                "-387013/1000000",
                "54128563/500000000"
              ],
              [
                "-747219/1000000",
                "331697521337/1000000000000"
              ],
              [
                "-747219/1000000",
                "384694771/1000000000"
              ],
              [
                "-747219/1000000",
                "182063942261/500000000000"
              ],
              [
                "-747219/1000000",
                "234231563/500000000"
              ],
              [
                "-387013/1000000",
                "-39875517003/500000000000"
              ],
              [
                "-387013/1000000",
                "-53935949/500000000"
              ],
              [
                "-387013/1000000",
                "-47320670821/1000000000000"
              ],
              [
                "-387013/1000000",
                "-24103543/1000000000"
              ],
              [
                "-747219/1000000",
                "140227482997/500000000000"
              ],
              [
                "-747219/1000000",
                "126167051/500000000"
              ],
              [
                "-747219/1000000",
                "312885329179/1000000000000"
              ],
              [
                "-747219/1000000",
                "336102457/1000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "234231563/373609500"
            ],
            "new": [
              "139/1000",
              "626943/1000000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "104209/250000",
              "881803/1000000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-1365556823093211/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-541104983969717/1250000000000000"
              ],
              [
                "2088321533/4000000000",
                "-757743310504923/2500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2314349733795503/5000000000000000"
              ],
              [
                "6143/20000",
                "-1567381683294627/10000000000000000"
              ],
              [
                "6143/20000",
                "-4867154608695477/20000000000000000"
              ],
              [
                "6143/20000",
                "-1867241279127897/10000000000000000"
              ],
              [
                "6143/20000",
                "-5466873800362017/20000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2469988205215923/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-7157135344198523/20000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-3588298831225203/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-9393756596217083/20000000000000000"
              ],
              [
                "6143/20000",
                "-40820507572629/312500000000000"
              ],
              [
                "6143/20000",
                "-105206569043079/625000000000000"
              ],
              [
                "6143/20000",
                "-75767714635419/312500000000000"
              ],
              [
                "6143/20000",
                "-175100983168659/625000000000000"
              ]
            ],
            "raw": [
              "40820507572629/95984375000000",
              "881803/1000000"
            ],
            "new": [
              "212641/500000",
              "881803/1000000"
            ]
          },
          {
            "factor": 1748,
            "target": "g",
            "old": [
              "201013/1000000",
              "281873/500000"
            ],
            "lines": [
              [
                "-106399567113/200000000000",
                "61793138059149627/500000000000000000"
              ],
              [
                "-106399567113/200000000000",
                "74078195588526627/500000000000000000"
              ],
              [
                "-106399567113/200000000000",
                "201273532429724547/1000000000000000000"
              ],
              [
                "-106399567113/200000000000",
                "241288605344021547/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "29007607011732783/125000000000000000"
              ],
              [
                "-760263/1000000",
                "32078871394077033/125000000000000000"
              ],
              [
                "-760263/1000000",
                "94484010910661463/250000000000000000"
              ],
              [
                "-760263/1000000",
                "104487779139235713/250000000000000000"
              ],
              [
                "-106399567113/200000000000",
                "-7289749950141627/500000000000000000"
              ],
              [
                "-106399567113/200000000000",
                "4995307579235373/500000000000000000"
              ],
              [
                "-106399567113/200000000000",
                "-23744282441036547/1000000000000000000"
              ],
              [
                "-106399567113/200000000000",
                "16270790473260453/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "23473770018819939/250000000000000000"
              ],
              [
                "-760263/1000000",
                "29616298783508439/250000000000000000"
              ],
              [
                "-760263/1000000",
                "76459114385942379/500000000000000000"
              ],
              [
                "-760263/1000000",
                "96466650843090879/500000000000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "34829259713078571/63355250000000000"
            ],
            "new": [
              "201013/1000000",
              "274873/500000"
            ]
          },
          {
            "factor": 2338,
            "target": "g",
            "old": [
              "201013/1000000",
              "274873/500000"
            ],
            "lines": [
              [
                "-4338481/8000000",
                "25311826893171/200000000000000"
              ],
              [
                "-4338481/8000000",
                "6884324611353/50000000000000"
              ],
              [
                "-4338481/8000000",
                "1613572427229/8000000000000"
              ],
              [
                "-4338481/8000000",
                "21282391116483/100000000000000"
              ],
              [
                "-31/40",
                "1202227400271/5000000000000"
              ],
              [
                "-31/40",
                "1281736355271/5000000000000"
              ],
              [
                "-31/40",
                "3852768114431/10000000000000"
              ],
              [
                "-31/40",
                "4011786024431/10000000000000"
              ],
              [
                "-4338481/8000000",
                "-2856971644809/200000000000000"
              ],
              [
                "-4338481/8000000",
                "-78937511571/25000000000000"
              ],
              [
                "-4338481/8000000",
                "-1107321005733/40000000000000"
              ],
              [
                "-4338481/8000000",
                "-413891684553/25000000000000"
              ],
              [
                "-31/40",
                "996014873643/10000000000000"
              ],
              [
                "-31/40",
                "1155032783643/10000000000000"
              ],
              [
                "-31/40",
                "3117944657923/20000000000000"
              ],
              [
                "-31/40",
                "3435980477923/20000000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "129412452401/250000000000"
            ],
            "new": [
              "201013/1000000",
              "10353/20000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "120183/1000000",
              "704189/1000000"
            ],
            "lines": [
              [
                "433433/1000000",
                "-93/1000"
              ],
              [
                "131223/500000",
                "-93/1000"
              ],
              [
                "77379/100000",
                "-93/1000"
              ],
              [
                "602803/1000000",
                "-93/1000"
              ]
            ],
            "raw": [
              "3100/25793",
              "704189/1000000"
            ],
            "new": [
              "120187/1000000",
              "704189/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "270723/500000",
              "881803/1000000"
            ],
            "lines": [
              [
                "-449813/1000000",
                "356813/1000000"
              ],
              [
                "134189/1000000",
                "-227189/1000000"
              ],
              [
                "-786813/1000000",
                "693813/1000000"
              ],
              [
                "-202811/1000000",
                "109811/1000000"
              ]
            ],
            "raw": [
              "270723/500000",
              "231271/262271"
            ],
            "new": [
              "270723/500000",
              "440901/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "201013/1000000",
              "10353/20000"
            ],
            "lines": [
              [
                "-139951/200000",
                "53348869029/500000000000"
              ],
              [
                "-139951/200000",
                "116114429523/500000000000"
              ],
              [
                "-1/1",
                "33658024041/125000000000"
              ],
              [
                "-1/1",
                "62123187567/125000000000"
              ],
              [
                "-139951/200000",
                "-37518223029/500000000000"
              ],
              [
                "-139951/200000",
                "-31872227523/500000000000"
              ],
              [
                "-1/1",
                "21882502053/250000000000"
              ],
              [
                "-1/1",
                "50253046611/250000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "62123187567/125000000000"
            ],
            "new": [
              "201013/1000000",
              "248493/500000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "626943/1000000"
            ],
            "lines": [
              [
                "-387013/1000000",
                "-1637143637/200000000000"
              ],
              [
                "-387013/1000000",
                "108013/1000000"
              ],
              [
                "-747219/1000000",
                "48774046269/200000000000"
              ],
              [
                "-747219/1000000",
                "468219/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "156073/249073"
            ],
            "new": [
              "139/1000",
              "78327/125000"
            ]
          },
          {
            "factor": 110,
            "target": "u",
            "old": [
              "212641/500000",
              "881803/1000000"
            ],
            "lines": [
              [
                "-449813/1000000",
                "356813/1000000"
              ],
              [
                "134189/1000000",
                "-227189/1000000"
              ],
              [
                "-786813/1000000",
                "693813/1000000"
              ],
              [
                "-202811/1000000",
                "109811/1000000"
              ]
            ],
            "raw": [
              "212641/500000",
              "231271/262271"
            ],
            "new": [
              "212641/500000",
              "440901/500000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "171427/1000000",
              "19979/31250"
            ],
            "lines": [
              [
                "-798987/1000000",
                "124146795479/1000000000000"
              ],
              [
                "-798987/1000000",
                "255120340017/1000000000000"
              ],
              [
                "-251507/500000",
                "5535918033/62500000000"
              ],
              [
                "-251507/500000",
                "291871307/6250000000"
              ],
              [
                "-798987/1000000",
                "317048593307/1000000000000"
              ],
              [
                "-798987/1000000",
                "89604427569/200000000000"
              ],
              [
                "-251507/500000",
                "70369121589/250000000000"
              ],
              [
                "-251507/500000",
                "59900301737/250000000000"
              ],
              [
                "-798987/1000000",
                "27937488079/1000000000000"
              ],
              [
                "-798987/1000000",
                "425519625657/1000000000000"
              ],
              [
                "-251507/500000",
                "-954327359/125000000000"
              ],
              [
                "-251507/500000",
                "5427467369/25000000000"
              ],
              [
                "-798987/1000000",
                "67610173987/1000000000000"
              ],
              [
                "-798987/1000000",
                "93038462313/200000000000"
              ],
              [
                "-251507/500000",
                "8009516759/250000000000"
              ],
              [
                "-251507/500000",
                "64192845167/250000000000"
              ]
            ],
            "raw": [
              "171427/1000000",
              "31012820771/53265800000"
            ],
            "new": [
              "171427/1000000",
              "145557/250000"
            ]
          },
          {
            "factor": 208,
            "target": "u",
            "old": [
              "212641/500000",
              "440901/500000"
            ],
            "lines": [
              [
                "1/1",
                "-603463881109/1000000000000"
              ],
              [
                "1/1",
                "-885473673097/1000000000000"
              ],
              [
                "1/1",
                "-316387834779/500000000000"
              ],
              [
                "1/1",
                "-457392730773/500000000000"
              ],
              [
                "1/1",
                "-106352292819/250000000000"
              ],
              [
                "1/1",
                "-141900094527/250000000000"
              ],
              [
                "1/1",
                "-65620323789/125000000000"
              ],
              [
                "1/1",
                "-83394224643/125000000000"
              ]
            ],
            "raw": [
              "106352292819/250000000000",
              "440901/500000"
            ],
            "new": [
              "425409/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "425409/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-1365556823093211/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2164417588745967/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-757743310504923/2500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-1157173693331301/2500000000000000"
              ],
              [
                "6143/20000",
                "-1567381683294627/10000000000000000"
              ],
              [
                "6143/20000",
                "-2433574759385769/10000000000000000"
              ],
              [
                "6143/20000",
                "-1867241279127897/10000000000000000"
              ],
              [
                "6143/20000",
                "-2733434355219039/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2501854481798823/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-3670123228797681/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-3520285958537103/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-4688554705535961/10000000000000000"
              ],
              [
                "6143/20000",
                "-334530629726757/2500000000000000"
              ],
              [
                "6143/20000",
                "-443715702672879/2500000000000000"
              ],
              [
                "6143/20000",
                "-589138498911327/2500000000000000"
              ],
              [
                "6143/20000",
                "-698323571857449/2500000000000000"
              ]
            ],
            "raw": [
              "334530629726757/767875000000000",
              "440901/500000"
            ],
            "new": [
              "435657/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 3684,
            "target": "u",
            "old": [
              "435657/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "-78871761/200000000",
                "125151505045252673/500000000000000000"
              ],
              [
                "-78871761/200000000",
                "172696676156070551/500000000000000000"
              ],
              [
                "-147259831/250000000",
                "177855999190489673/500000000000000000"
              ],
              [
                "-147259831/250000000",
                "258531511663689551/500000000000000000"
              ],
              [
                "-42228159/100000000",
                "132710845168807673/500000000000000000"
              ],
              [
                "-42228159/100000000",
                "185007859985355551/500000000000000000"
              ],
              [
                "-616962109/1000000000",
                "185415339314044673/500000000000000000"
              ],
              [
                "-616962109/1000000000",
                "270842695492974551/500000000000000000"
              ],
              [
                "-78871761/200000000",
                "42304850788396293/125000000000000000"
              ],
              [
                "-78871761/200000000",
                "42469330138285491/125000000000000000"
              ],
              [
                "-147259831/250000000",
                "55480974324705543/125000000000000000"
              ],
              [
                "-147259831/250000000",
                "63928039015190241/125000000000000000"
              ],
              [
                "-42228159/100000000",
                "44194685819285043/125000000000000000"
              ],
              [
                "-42228159/100000000",
                "45547126095606741/125000000000000000"
              ],
              [
                "-616962109/1000000000",
                "57370809355594293/125000000000000000"
              ],
              [
                "-616962109/1000000000",
                "67005834972511491/125000000000000000"
              ]
            ],
            "raw": [
              "435657/1000000",
              "270842695492974551/308481054500000000"
            ],
            "new": [
              "435657/1000000",
              "877989/1000000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "435657/1000000",
              "877989/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "147116378279/500000000000"
              ],
              [
                "-57/100",
                "214944734273/500000000000"
              ],
              [
                "-907/1000",
                "238350029279/500000000000"
              ],
              [
                "-907/1000",
                "363528371273/500000000000"
              ],
              [
                "-57/100",
                "60325899789/125000000000"
              ],
              [
                "-57/100",
                "59805665643/125000000000"
              ],
              [
                "-907/1000",
                "83134312539/125000000000"
              ],
              [
                "-907/1000",
                "96951574893/125000000000"
              ]
            ],
            "raw": [
              "435657/1000000",
              "96951574893/113375000000"
            ],
            "new": [
              "435657/1000000",
              "855141/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "171427/1000000",
              "145557/250000"
            ],
            "lines": [
              [
                "-798987/1000000",
                "15245039513/125000000000"
              ],
              [
                "-798987/1000000",
                "16187055087/62500000000"
              ],
              [
                "-251507/500000",
                "86388209153/1000000000000"
              ],
              [
                "-251507/500000",
                "10114390099/200000000000"
              ],
              [
                "-798987/1000000",
                "155689893341/500000000000"
              ],
              [
                "-798987/1000000",
                "44841235197/100000000000"
              ],
              [
                "-251507/500000",
                "275807679731/1000000000000"
              ],
              [
                "-251507/500000",
                "239991421073/1000000000000"
              ],
              [
                "-798987/1000000",
                "8389040131/250000000000"
              ],
              [
                "-798987/1000000",
                "20778411039/50000000000"
              ],
              [
                "-251507/500000",
                "-2015946427/1000000000000"
              ],
              [
                "-251507/500000",
                "207147289883/1000000000000"
              ],
              [
                "-798987/1000000",
                "41088752219/500000000000"
              ],
              [
                "-798987/1000000",
                "232094782347/500000000000"
              ],
              [
                "-251507/500000",
                "46605397487/1000000000000"
              ],
              [
                "-251507/500000",
                "255768633797/1000000000000"
              ]
            ],
            "raw": [
              "171427/1000000",
              "77364927449/133164500000"
            ],
            "new": [
              "171427/1000000",
              "580973/1000000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "435657/1000000",
              "855141/1000000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-1365556823093211/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2164417588745967/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-757743310504923/2500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-1157173693331301/2500000000000000"
              ],
              [
                "6143/20000",
                "-1567381683294627/10000000000000000"
              ],
              [
                "6143/20000",
                "-2433574759385769/10000000000000000"
              ],
              [
                "6143/20000",
                "-1867241279127897/10000000000000000"
              ],
              [
                "6143/20000",
                "-2733434355219039/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-4887802480839/19531250000000"
              ],
              [
                "2088321533/4000000000",
                "-918033899630799/2500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-1759395552340149/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2344185916506963/5000000000000000"
              ],
              [
                "6143/20000",
                "-1338822907297773/10000000000000000"
              ],
              [
                "6143/20000",
                "-1776875180417031/10000000000000000"
              ],
              [
                "6143/20000",
                "-2355059141788503/10000000000000000"
              ],
              [
                "6143/20000",
                "-2793111414907761/10000000000000000"
              ]
            ],
            "raw": [
              "1338822907297773/3071500000000000",
              "855141/1000000"
            ],
            "new": [
              "87177/200000",
              "855141/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 1,
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "270723/500000",
          "120187/1000000",
          "57/100",
          "108013/1000000",
          "201013/1000000",
          "139951/200000",
          "82733/250000",
          "387013/1000000",
          "194903/500000",
          "87177/200000",
          "171427/1000000"
        ],
        "high": [
          "78327/125000",
          "279/1000",
          "440901/500000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "248493/500000",
          "1",
          "333289/500000",
          "747219/1000000",
          "864217/1000000",
          "855141/1000000",
          "580973/1000000"
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
        "AGO": -1,
        "AGP": -1,
        "DGP": 1,
        "COP": -1,
        "EOP": 1,
        "FOP": -1,
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
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "AOP": -1,
        "AFO": -1,
        "BDO": 1,
        "BOP": -1,
        "BFO": -1,
        "CFO": -1,
        "FGO": 1,
        "AFP": -1,
        "BFP": -1,
        "DHP": 1,
        "CFP": -1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "EHO": 1,
        "AFG": -1,
        "BFG": -1
      },
      "trace": [
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
            "OACDP"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACO",
            "DOP",
            "ADO",
            "COP",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OAFHP"
          ],
          "target": "AFO",
          "sign": -1,
          "deps": [
            "HOP",
            "AHO",
            "FOP",
            "AOP",
            "FHO"
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
            "OBCDP"
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "BCO",
            "DOP",
            "BDO",
            "COP",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBFHP"
          ],
          "target": "BFO",
          "sign": -1,
          "deps": [
            "HOP",
            "BHO",
            "FOP",
            "BOP",
            "FHO"
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
            "OCFGH"
          ],
          "target": "FGO",
          "sign": 1,
          "deps": [
            "CFO",
            "GHO",
            "CGO",
            "FHO",
            "CHO"
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
            "AFH",
            [],
            "G",
            [
              "CEF2-AFH-empty"
            ]
          ],
          "target": "AFG",
          "sign": -1,
          "deps": [
            "FGH",
            "AGH"
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
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
            "points": []
          }
        },
        "L_AHO": {
          "triangle": "AHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAO",
            "points": [
              "G"
            ]
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
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "851677731/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "23089757/50000000",
              "55925773/100000000",
              "30407411/50000000",
              "332469707/500000000",
              "348296261/500000000",
              "70561081/100000000",
              "820024623/1000000000",
              "851677731/1000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "474822761/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "58533678149/100000000000",
              "31041257/50000000",
              "62949967427/100000000000",
              "38358911/50000000",
              "81196697627/100000000000",
              "88250405549/100000000000",
              "458996207/500000000",
              "474822761/500000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "408": {
          "row": [
            "plu",
            "CEH",
            "EFO",
            "CEF",
            "EHO",
            "CEO",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "ECFHO"
          }
        },
        "1200": {
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
        "1562": {
          "row": [
            "support",
            "CHP",
            "CFH",
            "CFP",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "CPOFH"
          }
        },
        "5073": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-279/1000",
              "BCO": "851677731/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "O",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEF",
              "ref": "U_CEF",
              "value": "851677731/1000000000"
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
            "residual": "386677731/1000000000"
          }
        },
        "5141": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-93/1000",
              "BCP": "851677731/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEF",
              "ref": "U_CEF",
              "value": "851677731/1000000000"
            },
            "fan_lower": [
              {
                "triangle": "EFP",
                "ref": "L_EFP",
                "value": "279/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              },
              {
                "triangle": "CEP",
                "ref": "L_CEP",
                "value": "93/1000"
              }
            ],
            "residual": "386677731/1000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0036",
          "relation": 408,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "47587/500000",
          "sources": [
            "L_CEF",
            "L_EHO",
            "L_CEO",
            "L_EFH",
            "U_CEH"
          ]
        },
        {
          "id": "T0051",
          "relation": 1200,
          "rule": "linear",
          "triangle": "CFH",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CEF"
          ]
        }
      ],
      "physical": {
        "84": {
          "name": "AREA_LO_CGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "-1"
            ],
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGH",
            "side": "lo",
            "reference": "L_CGH",
            "value": "93/1000"
          }
        },
        "94": {
          "name": "AREA_LO_EFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                10
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [],
              "452413/500000"
            ],
            [
              [
                4,
                9
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFO",
            "side": "lo",
            "reference": "T0036",
            "value": "47587/500000"
          }
        },
        "98": {
          "name": "AREA_LO_AHO",
          "terms": [
            [
              [
                7,
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "L_AHO",
            "value": "279/1000"
          }
        },
        "102": {
          "name": "AREA_LO_CEO",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                2,
                10
              ],
              "-1"
            ],
            [
              [
                4,
                9
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEO",
            "side": "lo",
            "reference": "L_CEO",
            "value": "279/1000"
          }
        },
        "120": {
          "name": "AREA_LO_CEP",
          "terms": [
            [
              [
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                4,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEP",
            "side": "lo",
            "reference": "L_CEP",
            "value": "93/1000"
          }
        },
        "132": {
          "name": "AREA_LO_AGO",
          "terms": [
            [
              [
                6,
                10
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [
                8,
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "136": {
          "name": "AREA_LO_DGP",
          "terms": [
            [
              [
                6,
                12
              ],
              "1"
            ],
            [
              [
                3,
                6
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                8,
                11
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "1540": {
          "name": "SUPPORT_YCAP_1562",
          "terms": [
            [
              [
                2,
                12
              ],
              "6143/20000"
            ],
            [
              [
                7,
                11
              ],
              "-14317/20000"
            ],
            [
              [
                2,
                7
              ],
              "14317/20000"
            ],
            [
              [
                5,
                12
              ],
              "-1023/1000"
            ],
            [
              [
                11
              ],
              "1023/1000"
            ],
            [
              [
                2
              ],
              "-1023/1000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 1562,
            "which": "Y",
            "value": "6143/20000",
            "reference": "T0051"
          }
        },
        "3384": {
          "name": "LINEAR_5073",
          "terms": [
            [
              [
                2,
                4
              ],
              "-93/1000"
            ],
            [
              [
                1,
                4
              ],
              "93/1000"
            ],
            [
              [
                2
              ],
              "-279/1000"
            ],
            [
              [
                1
              ],
              "279/1000"
            ],
            [
              [
                2,
                10
              ],
              "851677731/1000000000"
            ],
            [
              [
                1,
                10
              ],
              "-851677731/1000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5073
          }
        },
        "3452": {
          "name": "LINEAR_5141",
          "terms": [
            [
              [
                2,
                4
              ],
              "-93/1000"
            ],
            [
              [
                1,
                4
              ],
              "93/1000"
            ],
            [
              [
                2
              ],
              "-93/1000"
            ],
            [
              [
                1
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "851677731/1000000000"
            ],
            [
              [
                1,
                12
              ],
              "-851677731/1000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5141
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "270723/500000",
          "120187/1000000",
          "57/100",
          "108013/1000000",
          "201013/1000000",
          "139951/200000",
          "330939/1000000",
          "387013/1000000",
          "38983/100000",
          "435887/1000000",
          "85719/500000"
        ],
        "high": [
          "313307/500000",
          "279/1000",
          "440901/500000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "24849/50000",
          "1/1",
          "333289/500000",
          "149443/200000",
          "864213/1000000",
          "854977/1000000",
          "116193/200000"
        ],
        "steps": [
          {
            "factor": 94,
            "target": "y",
            "old": [
              "194903/500000",
              "864217/1000000"
            ],
            "lines": [
              [
                "-891987/1000000",
                "676843/1000000"
              ],
              [
                "-891987/1000000",
                "385433/500000"
              ],
              [
                "-721/1000",
                "57938041/100000000"
              ],
              [
                "-721/1000",
                "615780791/1000000000"
              ],
              [
                "-891987/1000000",
                "26097721/50000000"
              ],
              [
                "-891987/1000000",
                "368683421/500000000"
              ],
              [
                "-721/1000",
                "42449183/100000000"
              ],
              [
                "-721/1000",
                "582281633/1000000000"
              ]
            ],
            "raw": [
              "194903/500000",
              "770866/891987"
            ],
            "new": [
              "194903/500000",
              "864213/1000000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "387013/1000000",
              "747219/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "52092830131/250000000000"
              ],
              [
                "-57/100",
                "67425357397/250000000000"
              ],
              [
                "-907/1000",
                "97709655631/250000000000"
              ],
              [
                "-907/1000",
                "141717175897/250000000000"
              ],
              [
                "-57/100",
                "212956274001/500000000000"
              ],
              [
                "-57/100",
                "162887694087/500000000000"
              ],
              [
                "-907/1000",
                "304189925001/500000000000"
              ],
              [
                "-907/1000",
                "311471331087/500000000000"
              ]
            ],
            "raw": [
              "387013/1000000",
              "70985424667/95000000000"
            ],
            "new": [
              "387013/1000000",
              "149443/200000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "87177/200000",
              "855141/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "147116378279/500000000000"
              ],
              [
                "-57/100",
                "214944734273/500000000000"
              ],
              [
                "-907/1000",
                "238350029279/500000000000"
              ],
              [
                "-907/1000",
                "363528371273/500000000000"
              ],
              [
                "-57/100",
                "241015856521/500000000000"
              ],
              [
                "-57/100",
                "239148493327/500000000000"
              ],
              [
                "-907/1000",
                "332249507521/500000000000"
              ],
              [
                "-907/1000",
                "387732130327/500000000000"
              ]
            ],
            "raw": [
              "87177/200000",
              "387732130327/453500000000"
            ],
            "new": [
              "87177/200000",
              "427489/500000"
            ]
          },
          {
            "factor": 132,
            "target": "z",
            "old": [
              "82733/250000",
              "333289/500000"
            ],
            "lines": [
              [
                "387013/1000000",
                "-98605036739/500000000000"
              ],
              [
                "387013/1000000",
                "-143953324739/500000000000"
              ],
              [
                "387013/1000000",
                "-67860469429/250000000000"
              ],
              [
                "387013/1000000",
                "-54454320837/250000000000"
              ],
              [
                "149443/200000",
                "-123639075739/500000000000"
              ],
              [
                "149443/200000",
                "-51361498591/100000000000"
              ],
              [
                "149443/200000",
                "-80377488929/250000000000"
              ],
              [
                "149443/200000",
                "-22176280989/50000000000"
              ],
              [
                "387013/1000000",
                "-292572047769/1000000000000"
              ],
              [
                "387013/1000000",
                "-383268623769/1000000000000"
              ],
              [
                "387013/1000000",
                "-253607757509/500000000000"
              ],
              [
                "387013/1000000",
                "-9071818413/20000000000"
              ],
              [
                "149443/200000",
                "-342640125769/1000000000000"
              ],
              [
                "149443/200000",
                "-608976960201/1000000000000"
              ],
              [
                "149443/200000",
                "-278641796509/500000000000"
              ],
              [
                "149443/200000",
                "-339649628541/500000000000"
              ]
            ],
            "raw": [
              "123639075739/373607500000",
              "333289/500000"
            ],
            "new": [
              "330933/1000000",
              "333289/500000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "171427/1000000",
              "580973/1000000"
            ],
            "lines": [
              [
                "-798987/1000000",
                "121912830359/1000000000000"
              ],
              [
                "-798987/1000000",
                "259078548103/1000000000000"
              ],
              [
                "-251507/500000",
                "5396295213/62500000000"
              ],
              [
                "-251507/500000",
                "25328808603/500000000000"
              ],
              [
                "-798987/1000000",
                "155627604767/500000000000"
              ],
              [
                "-798987/1000000",
                "224210463639/500000000000"
              ],
              [
                "-251507/500000",
                "275683102583/1000000000000"
              ],
              [
                "-251507/500000",
                "239999996381/1000000000000"
              ],
              [
                "-798987/1000000",
                "33590656981/1000000000000"
              ],
              [
                "-798987/1000000",
                "415507524911/1000000000000"
              ],
              [
                "-251507/500000",
                "-198144997/100000000000"
              ],
              [
                "-251507/500000",
                "103543297007/500000000000"
              ],
              [
                "-798987/1000000",
                "82266566171/1000000000000"
              ],
              [
                "-798987/1000000",
                "464183434101/1000000000000"
              ],
              [
                "-251507/500000",
                "2334722961/50000000000"
              ],
              [
                "-251507/500000",
                "63940625801/250000000000"
              ]
            ],
            "raw": [
              "171427/1000000",
              "154727811367/266329000000"
            ],
            "new": [
              "171427/1000000",
              "116193/200000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "87177/200000",
              "427489/500000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-1365556823093211/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2164417588745967/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-757743310504923/2500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-1157173693331301/2500000000000000"
              ],
              [
                "6143/20000",
                "-1567381683294627/10000000000000000"
              ],
              [
                "6143/20000",
                "-2433574759385769/10000000000000000"
              ],
              [
                "6143/20000",
                "-1867241279127897/10000000000000000"
              ],
              [
                "6143/20000",
                "-2733434355219039/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-62563983370419/250000000000000"
              ],
              [
                "2088321533/4000000000",
                "-183607421318901/500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-351878157573141/1000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-468837066729267/1000000000000000"
              ],
              [
                "6143/20000",
                "-267765474384993/2000000000000000"
              ],
              [
                "6143/20000",
                "-355377601654371/2000000000000000"
              ],
              [
                "6143/20000",
                "-471009922567923/2000000000000000"
              ],
              [
                "6143/20000",
                "-558622049837301/2000000000000000"
              ]
            ],
            "raw": [
              "267765474384993/614300000000000",
              "427489/500000"
            ],
            "new": [
              "435887/1000000",
              "427489/500000"
            ]
          },
          {
            "factor": 3384,
            "target": "y",
            "old": [
              "194903/500000",
              "864213/1000000"
            ],
            "lines": [
              [
                "369145233980523/1000000000000000",
                "-14390409033/100000000000"
              ],
              [
                "111759706895013/500000000000000",
                "-4356734823/50000000000"
              ],
              [
                "659018859792759/1000000000000000",
                "-25690568589/100000000000"
              ],
              [
                "256696519801131/500000000000000",
                "-10006814601/50000000000"
              ],
              [
                "369145233980523/1000000000000000",
                "-157488313983/1000000000000"
              ],
              [
                "111759706895013/500000000000000",
                "-47680008273/500000000000"
              ],
              [
                "659018859792759/1000000000000000",
                "-281157006939/1000000000000"
              ],
              [
                "256696519801131/500000000000000",
                "-109514354751/500000000000"
              ]
            ],
            "raw": [
              "36890000/94630859",
              "864213/1000000"
            ],
            "new": [
              "38983/100000",
              "864213/1000000"
            ]
          },
          {
            "factor": 3452,
            "target": "v",
            "old": [
              "171427/1000000",
              "116193/200000"
            ],
            "lines": [
              [
                "369145233980523/1000000000000000",
                "-6328555233/100000000000"
              ],
              [
                "111759706895013/500000000000000",
                "-1915987023/50000000000"
              ],
              [
                "659018859792759/1000000000000000",
                "-11298093189/100000000000"
              ],
              [
                "256696519801131/500000000000000",
                "-4400756001/50000000000"
              ],
              [
                "369145233980523/1000000000000000",
                "-76869775983/1000000000000"
              ],
              [
                "111759706895013/500000000000000",
                "-23272530273/500000000000"
              ],
              [
                "659018859792759/1000000000000000",
                "-137232252939/1000000000000"
              ],
              [
                "256696519801131/500000000000000",
                "-53453768751/500000000000"
              ]
            ],
            "raw": [
              "48670000/283892577",
              "116193/200000"
            ],
            "new": [
              "85719/500000",
              "116193/200000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "201013/1000000",
              "248493/500000"
            ],
            "lines": [
              [
                "-139951/200000",
                "26674299153/250000000000"
              ],
              [
                "-139951/200000",
                "58056994311/250000000000"
              ],
              [
                "-1/1",
                "134631825441/500000000000"
              ],
              [
                "-1/1",
                "248492309367/500000000000"
              ],
              [
                "-139951/200000",
                "-37518223029/500000000000"
              ],
              [
                "-139951/200000",
                "-31872227523/500000000000"
              ],
              [
                "-1/1",
                "21882502053/250000000000"
              ],
              [
                "-1/1",
                "50253046611/250000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "248492309367/500000000000"
            ],
            "new": [
              "201013/1000000",
              "99397/200000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "78327/125000"
            ],
            "lines": [
              [
                "-387013/1000000",
                "-1637143637/200000000000"
              ],
              [
                "-387013/1000000",
                "108013/1000000"
              ],
              [
                "-149443/200000",
                "9754697293/40000000000"
              ],
              [
                "-149443/200000",
                "93643/200000"
              ]
            ],
            "raw": [
              "139/1000",
              "93643/149443"
            ],
            "new": [
              "139/1000",
              "313307/500000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "435887/1000000",
              "427489/500000"
            ],
            "lines": [
              [
                "-57/100",
                "73559450163/250000000000"
              ],
              [
                "-57/100",
                "107472692181/250000000000"
              ],
              [
                "-907/1000",
                "119176275663/250000000000"
              ],
              [
                "-907/1000",
                "181764510681/250000000000"
              ],
              [
                "-57/100",
                "48202804461/100000000000"
              ],
              [
                "-57/100",
                "47829604107/100000000000"
              ],
              [
                "-907/1000",
                "66449534661/100000000000"
              ],
              [
                "-907/1000",
                "77546331507/100000000000"
              ]
            ],
            "raw": [
              "435887/1000000",
              "77546331507/90700000000"
            ],
            "new": [
              "435887/1000000",
              "854977/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "z",
            "old": [
              "330933/1000000",
              "333289/500000"
            ],
            "lines": [
              [
                "387013/1000000",
                "-19721489779/100000000000"
              ],
              [
                "387013/1000000",
                "-28791110179/100000000000"
              ],
              [
                "387013/1000000",
                "-5429071091/20000000000"
              ],
              [
                "387013/1000000",
                "-108914833871/500000000000"
              ],
              [
                "149443/200000",
                "-24728297579/100000000000"
              ],
              [
                "149443/200000",
                "-256809358909/500000000000"
              ],
              [
                "149443/200000",
                "-6430432651/20000000000"
              ],
              [
                "149443/200000",
                "-44353728377/100000000000"
              ],
              [
                "387013/1000000",
                "-292572047769/1000000000000"
              ],
              [
                "387013/1000000",
                "-383268251769/1000000000000"
              ],
              [
                "387013/1000000",
                "-101442957961/200000000000"
              ],
              [
                "387013/1000000",
                "-453590902997/1000000000000"
              ],
              [
                "149443/200000",
                "-342640125769/1000000000000"
              ],
              [
                "149443/200000",
                "-608975867797/1000000000000"
              ],
              [
                "149443/200000",
                "-111456573561/200000000000"
              ],
              [
                "149443/200000",
                "-27171940761/40000000000"
              ]
            ],
            "raw": [
              "668332367/2019500000",
              "333289/500000"
            ],
            "new": [
              "330939/1000000",
              "333289/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "201013/1000000",
              "99397/200000"
            ],
            "lines": [
              [
                "-139951/200000",
                "3334185873/31250000000"
              ],
              [
                "-139951/200000",
                "7256958951/31250000000"
              ],
              [
                "-1/1",
                "134630201103/500000000000"
              ],
              [
                "-1/1",
                "248489663961/500000000000"
              ],
              [
                "-139951/200000",
                "-37518223029/500000000000"
              ],
              [
                "-139951/200000",
                "-31872227523/500000000000"
              ],
              [
                "-1/1",
                "21882502053/250000000000"
              ],
              [
                "-1/1",
                "50253046611/250000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "248489663961/500000000000"
            ],
            "new": [
              "201013/1000000",
              "24849/50000"
            ]
          }
        ]
      }
    },
    {
      "id": 2,
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "270723/500000",
          "120187/1000000",
          "57/100",
          "108013/1000000",
          "201013/1000000",
          "139951/200000",
          "330939/1000000",
          "387013/1000000",
          "38983/100000",
          "435887/1000000",
          "85719/500000"
        ],
        "high": [
          "313307/500000",
          "279/1000",
          "440901/500000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "24849/50000",
          "1",
          "333289/500000",
          "149443/200000",
          "864213/1000000",
          "854977/1000000",
          "116193/200000"
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
        "AGO": -1,
        "AGP": -1,
        "DGP": 1,
        "COP": -1,
        "EOP": 1,
        "FOP": -1,
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
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "AOP": -1,
        "AFO": -1,
        "BDO": 1,
        "BOP": -1,
        "BFO": -1,
        "CFO": -1,
        "FGO": 1,
        "AFP": -1,
        "BFP": -1,
        "DHP": 1,
        "CFP": -1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "EHO": 1,
        "AFG": -1,
        "BFG": -1
      },
      "trace": [
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
            "OACDP"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACO",
            "DOP",
            "ADO",
            "COP",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OAFHP"
          ],
          "target": "AFO",
          "sign": -1,
          "deps": [
            "HOP",
            "AHO",
            "FOP",
            "AOP",
            "FHO"
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
            "OBCDP"
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "BCO",
            "DOP",
            "BDO",
            "COP",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBFHP"
          ],
          "target": "BFO",
          "sign": -1,
          "deps": [
            "HOP",
            "BHO",
            "FOP",
            "BOP",
            "FHO"
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
            "OCFGH"
          ],
          "target": "FGO",
          "sign": 1,
          "deps": [
            "CFO",
            "GHO",
            "CGO",
            "FHO",
            "CHO"
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
            "AFH",
            [],
            "G",
            [
              "CEF2-AFH-empty"
            ]
          ],
          "target": "AFG",
          "sign": -1,
          "deps": [
            "FGH",
            "AGH"
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
        "L_ADE": {
          "triangle": "ADE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADE",
            "points": []
          }
        },
        "L_ADG": {
          "triangle": "ADG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADG",
            "points": []
          }
        },
        "L_AGH": {
          "triangle": "AGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGH",
            "points": []
          }
        },
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
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
        "L_BCG": {
          "triangle": "BCG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCG",
            "points": []
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
        "L_BFH": {
          "triangle": "BFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BFH",
            "points": []
          }
        },
        "L_CDE": {
          "triangle": "CDE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDE",
            "points": []
          }
        },
        "L_CDO": {
          "triangle": "CDO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDO",
            "points": [
              "P"
            ]
          }
        },
        "L_CDP": {
          "triangle": "CDP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDP",
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
        "L_DFH": {
          "triangle": "DFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DFH",
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
        "L_DOP": {
          "triangle": "DOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DOP",
            "points": []
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
        "U_ADE": {
          "triangle": "ADE",
          "side": "hi",
          "value": "786813/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ADE",
            "used": [
              0,
              3,
              4
            ],
            "values": [
              "-134189/1000000",
              "202811/1000000",
              "449813/1000000",
              "786813/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_ADH": {
          "triangle": "ADH",
          "side": "hi",
          "value": "861/1000",
          "witness": {
            "kind": "vertices",
            "signed": "ADH",
            "used": [
              0,
              3,
              7
            ],
            "values": [
              "73141/1000000",
              "186693/500000",
              "112151/200000",
              "861/1000"
            ],
            "cell": "CA"
          }
        },
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "773789/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCF",
            "used": [
              1,
              2,
              5
            ],
            "values": [
              "131223/500000",
              "433433/1000000",
              "301401/500000",
              "773789/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BEH": {
          "triangle": "BEH",
          "side": "hi",
          "value": "989954791/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BEH",
            "used": [
              1,
              4,
              7
            ],
            "values": [
              "132710671/200000000",
              "137147954637/200000000000",
              "144428030837/200000000000",
              "151515271/200000000",
              "88003/100000",
              "95355441/100000000",
              "974053/1000000",
              "989954791/1000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDF": {
          "triangle": "CDF",
          "side": "hi",
          "value": "763772750837/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDF",
            "used": [
              2,
              3,
              5
            ],
            "values": [
              "95323481987/500000000000",
              "211197378543/1000000000000",
              "245048298701/500000000000",
              "510647011971/1000000000000",
              "271342268789/500000000000",
              "321682793147/500000000000",
              "663091702121/1000000000000",
              "763772750837/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "851677731/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "23089757/50000000",
              "55925773/100000000",
              "30407411/50000000",
              "332469707/500000000",
              "348296261/500000000",
              "70561081/100000000",
              "820024623/1000000000",
              "851677731/1000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEG": {
          "triangle": "CEG",
          "side": "hi",
          "value": "174065952361/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEG",
            "used": [
              2,
              4,
              6,
              8
            ],
            "values": [
              "88549511103/500000000000",
              "96042032103/500000000000",
              "129232433961/500000000000",
              "74534181611/250000000000",
              "82751907053/250000000000",
              "172900106103/500000000000",
              "86498167553/250000000000",
              "194074940961/500000000000",
              "213583028961/500000000000",
              "106955435111/250000000000",
              "230263066603/500000000000",
              "116709479111/250000000000",
              "124927204553/250000000000",
              "153608684803/250000000000",
              "328295975461/500000000000",
              "174065952361/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "474822761/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "58533678149/100000000000",
              "31041257/50000000",
              "62949967427/100000000000",
              "38358911/50000000",
              "81196697627/100000000000",
              "88250405549/100000000000",
              "458996207/500000000",
              "474822761/500000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "275460935587/500000000000",
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
              "-393718859/50000000000",
              "3073488791/50000000000",
              "6139585817/50000000000",
              "8407376767/50000000000",
              "89431419087/500000000000",
              "104827922501/500000000000",
              "112109328587/500000000000",
              "13339245791/50000000000",
              "139499999001/500000000000",
              "15941441841/50000000000",
              "16405342817/50000000000",
              "192088989087/500000000000",
              "242157569001/500000000000",
              "24742537467/50000000000",
              "268179529501/500000000000",
              "275460935587/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "588144714207/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "EFG",
            "used": [
              4,
              5,
              6,
              8
            ],
            "values": [
              "65076139757/500000000000",
              "73332931/500000000",
              "110062561/500000000",
              "247650053/1000000000",
              "128709044757/500000000000",
              "130617079257/500000000000",
              "34241459/125000000",
              "144379544757/500000000000",
              "388661581/1000000000",
              "429537904207/1000000000000",
              "462120841/1000000000",
              "122411443/250000000",
              "515927391/1000000000",
              "556803714207/1000000000000",
              "560619783207/1000000000000",
              "588144714207/1000000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3": {
          "row": [
            "fan",
            "ADH",
            "ADG",
            "DGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ADH",
            "point": "G"
          }
        },
        "8": {
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
        "22": {
          "row": [
            "fan",
            "CDH",
            "CDP",
            "DHP",
            "CHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CDH",
            "point": "P"
          }
        },
        "26": {
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
        "298": {
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
        "301": {
          "row": [
            "plu",
            "CEF",
            "CHO",
            "CEH",
            "CFO",
            "CEO",
            "CFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "CEFHO"
          }
        },
        "303": {
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
        "307": {
          "row": [
            "plu",
            "CEO",
            "CHP",
            "CEH",
            "COP",
            "CEP",
            "CHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "CEHOP"
          }
        },
        "408": {
          "row": [
            "plu",
            "CEH",
            "EFO",
            "CEF",
            "EHO",
            "CEO",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "ECFHO"
          }
        },
        "508": {
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
        "700": {
          "row": [
            "plu",
            "CFH",
            "DGH",
            "CDH",
            "FGH",
            "CGH",
            "DFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HCDFG"
          }
        },
        "703": {
          "row": [
            "plu",
            "CFH",
            "EGH",
            "CEH",
            "FGH",
            "CGH",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HCEFG"
          }
        },
        "886": {
          "row": [
            "quad",
            "ABO",
            "AFO",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ABOF",
            "occupants": [
              "G"
            ]
          }
        },
        "1164": {
          "row": [
            "quad",
            "CDE",
            "CEO",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "CDEO",
            "occupants": [
              "P"
            ]
          }
        },
        "1200": {
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
        "2561": {
          "row": [
            "balance",
            [
              [
                1,
                "BCG",
                "EFH"
              ],
              [
                1,
                "BEF",
                "CGH"
              ],
              [
                -1,
                "BEH",
                "CFG"
              ],
              [
                1,
                "BFH",
                "CEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BEF",
            "point": "H",
            "line": "CG"
          }
        },
        "2858": {
          "row": [
            "balance",
            [
              [
                1,
                "CDP",
                "EFG"
              ],
              [
                1,
                "CEF",
                "DGP"
              ],
              [
                -1,
                "CEG",
                "DFP"
              ],
              [
                1,
                "CFG",
                "DEP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEF",
            "point": "G",
            "line": "DP"
          }
        },
        "2898": {
          "row": [
            "balance",
            [
              [
                1,
                "CDP",
                "EGH"
              ],
              [
                -1,
                "CEG",
                "DHP"
              ],
              [
                1,
                "CEH",
                "DGP"
              ],
              [
                1,
                "CGH",
                "DEP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEG",
            "point": "H",
            "line": "DP"
          }
        },
        "3101": {
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
        "5465": {
          "row": [
            "linear",
            {
              "CFO": "182460935587/500000000000",
              "EFO": "-93/1000",
              "FOP": "-275460935587/500000000000"
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
              "value": "275460935587/500000000000"
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
            "residual": "135960935587/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0031",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "47587/500000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "L_CEG",
            "L_CFH",
            "U_CEH"
          ]
        },
        {
          "id": "T0033",
          "relation": 303,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "132657/1000000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "U_CEO"
          ]
        },
        {
          "id": "T0036",
          "relation": 408,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "47587/500000",
          "sources": [
            "L_CEF",
            "L_EHO",
            "L_CEO",
            "L_EFH",
            "U_CEH"
          ]
        },
        {
          "id": "T0041",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "24921/200000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0031",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0051",
          "relation": 1200,
          "rule": "linear",
          "triangle": "CFH",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CEF"
          ]
        },
        {
          "id": "T0060",
          "relation": 2561,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "20007/200000",
          "sources": [
            "L_BCG",
            "L_EFH",
            "L_BEF",
            "L_CGH",
            "L_BFH",
            "L_CEG",
            "U_BEH"
          ]
        },
        {
          "id": "T0073",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "112697/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0060",
            "L_DEP",
            "T0033",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0091",
          "relation": 5465,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "10291/62500",
          "sources": [
            "T0036",
            "L_FOP"
          ]
        },
        {
          "id": "T0110",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "298697/1000000",
          "sources": [
            "L_CEP",
            "T0073",
            "L_CGP"
          ]
        },
        {
          "id": "T0120",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "26761/250000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0110",
            "T0041",
            "U_CEH"
          ]
        },
        {
          "id": "T0122",
          "relation": 303,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "144753/1000000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "T0091",
            "U_CEO"
          ]
        },
        {
          "id": "T0126",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "63241/500000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0120",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0131",
          "relation": 703,
          "rule": "sumlo",
          "triangle": "EGH",
          "side": "lo",
          "value": "118971/500000",
          "sources": [
            "L_CEH",
            "L_FGH",
            "L_CGH",
            "L_EFH",
            "T0051"
          ]
        },
        {
          "id": "T0137",
          "relation": 2898,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "136747/1000000",
          "sources": [
            "L_CDP",
            "T0131",
            "L_CEH",
            "L_DGP",
            "L_CGH",
            "L_DEP",
            "U_CEG"
          ]
        },
        {
          "id": "T0139",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "115023/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0120",
            "L_DEP",
            "T0122",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0157",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "301023/1000000",
          "sources": [
            "L_CEP",
            "T0139",
            "L_CGP"
          ]
        },
        {
          "id": "T0164",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "13493/125000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0157",
            "T0126",
            "U_CEH"
          ]
        },
        {
          "id": "T0168",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "1013/8000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0164",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0177",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "115133/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0164",
            "L_DEP",
            "T0122",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0190",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "301133/1000000",
          "sources": [
            "L_CEP",
            "T0177",
            "L_CGP"
          ]
        },
        {
          "id": "T0197",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "27001/250000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0190",
            "T0168",
            "U_CEH"
          ]
        },
        {
          "id": "T0198",
          "relation": 301,
          "rule": "sumlo",
          "triangle": "CHO",
          "side": "lo",
          "value": "17543/100000",
          "sources": [
            "L_CEH",
            "T0091",
            "L_CEO",
            "T0168",
            "U_CEF"
          ]
        },
        {
          "id": "T0199",
          "relation": 307,
          "rule": "sumlo",
          "triangle": "CHP",
          "side": "lo",
          "value": "36643/250000",
          "sources": [
            "L_CEH",
            "L_COP",
            "L_CEP",
            "T0198",
            "U_CEO"
          ]
        },
        {
          "id": "T0201",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "63317/500000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0197",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0210",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "5757/50000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0197",
            "L_DEP",
            "T0122",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0221",
          "relation": 22,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "376319/1000000",
          "sources": [
            "L_CDP",
            "T0137",
            "T0199"
          ]
        },
        {
          "id": "T0223",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "15057/50000",
          "sources": [
            "L_CEP",
            "T0210",
            "L_CGP"
          ]
        },
        {
          "id": "T0230",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "13501/125000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0223",
            "T0201",
            "U_CEH"
          ]
        },
        {
          "id": "T0235",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "EFG",
          "side": "lo",
          "value": "121243/500000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0230",
            "L_EFH",
            "T0051"
          ]
        },
        {
          "id": "T0237",
          "relation": 700,
          "rule": "sumlo",
          "triangle": "DGH",
          "side": "lo",
          "value": "71051/500000",
          "sources": [
            "T0221",
            "L_FGH",
            "L_CGH",
            "L_DFH",
            "T0051"
          ]
        },
        {
          "id": "T0240",
          "relation": 2858,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "139359/1000000",
          "sources": [
            "L_CDP",
            "T0235",
            "L_CEF",
            "L_DGP",
            "T0230",
            "L_DEP",
            "U_CEG"
          ]
        },
        {
          "id": "T0244",
          "relation": 3,
          "rule": "sum",
          "triangle": "ADH",
          "side": "lo",
          "value": "164051/500000",
          "sources": [
            "L_ADG",
            "T0237",
            "L_AGH"
          ]
        },
        {
          "id": "T0245",
          "relation": 8,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "36751/125000",
          "sources": [
            "L_BCG",
            "T0230",
            "L_BFG"
          ]
        }
      ],
      "physical": {
        "AREA_HI_ADE": {
          "name": "AREA_HI_ADE",
          "terms": [
            [
              [],
              "786813/1000000"
            ],
            [
              [
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADE",
            "side": "hi",
            "reference": "U_ADE",
            "value": "786813/1000000"
          }
        },
        "AREA_HI_ADH": {
          "name": "AREA_HI_ADH",
          "terms": [
            [
              [],
              "861/1000"
            ],
            [
              [
                7
              ],
              "-1"
            ],
            [
              [
                0
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADH",
            "side": "hi",
            "reference": "U_ADH",
            "value": "861/1000"
          }
        },
        "AREA_HI_BCF": {
          "name": "AREA_HI_BCF",
          "terms": [
            [
              [],
              "773789/1000000"
            ],
            [
              [
                2
              ],
              "-1"
            ],
            [
              [
                1
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "hi",
            "reference": "U_BCF",
            "value": "773789/1000000"
          }
        },
        "AREA_LO_ABC": {
          "name": "AREA_LO_ABC",
          "terms": [
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                0,
                2
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABC",
            "side": "lo",
            "reference": "L_ABC",
            "value": "93/1000"
          }
        },
        "AREA_LO_ABG": {
          "name": "AREA_LO_ABG",
          "terms": [
            [
              [
                1,
                8
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABG",
            "side": "lo",
            "reference": "L_ABG",
            "value": "93/1000"
          }
        },
        "AREA_LO_ABH": {
          "name": "AREA_LO_ABH",
          "terms": [
            [
              [
                1,
                7
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABH",
            "side": "lo",
            "reference": "L_ABH",
            "value": "93/1000"
          }
        },
        "AREA_LO_ADE": {
          "name": "AREA_LO_ADE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADE",
            "side": "lo",
            "reference": "L_ADE",
            "value": "93/1000"
          }
        },
        "AREA_LO_ADH": {
          "name": "AREA_LO_ADH",
          "terms": [
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [],
              "-164051/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADH",
            "side": "lo",
            "reference": "T0244",
            "value": "164051/500000"
          }
        },
        "AREA_LO_AGO": {
          "name": "AREA_LO_AGO",
          "terms": [
            [
              [
                6,
                10
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [
                8,
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "AREA_LO_AGP": {
          "name": "AREA_LO_AGP",
          "terms": [
            [
              [
                6,
                12
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [
                8,
                11
              ],
              "1"
            ],
            [
              [
                0,
                11
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AGP",
            "side": "lo",
            "reference": "L_AGP",
            "value": "93/1000"
          }
        },
        "AREA_LO_BCF": {
          "name": "AREA_LO_BCF",
          "terms": [
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ],
            [
              [],
              "-36751/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T0245",
            "value": "36751/125000"
          }
        },
        "AREA_LO_BFG": {
          "name": "AREA_LO_BFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "-1"
            ],
            [
              [
                1,
                8
              ],
              "1"
            ],
            [
              [
                6
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFG",
            "side": "lo",
            "reference": "L_BFG",
            "value": "93/1000"
          }
        },
        "AREA_LO_CDE": {
          "name": "AREA_LO_CDE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDE",
            "side": "lo",
            "reference": "L_CDE",
            "value": "93/1000"
          }
        },
        "AREA_LO_CDO": {
          "name": "AREA_LO_CDO",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                2,
                10
              ],
              "-1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDO",
            "side": "lo",
            "reference": "L_CDO",
            "value": "279/1000"
          }
        },
        "AREA_LO_CDP": {
          "name": "AREA_LO_CDP",
          "terms": [
            [
              [
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                3,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDP",
            "side": "lo",
            "reference": "L_CDP",
            "value": "93/1000"
          }
        },
        "AREA_LO_CEF": {
          "name": "AREA_LO_CEF",
          "terms": [
            [
              [],
              "6143/20000"
            ],
            [
              [
                2
              ],
              "-1"
            ],
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEF",
            "side": "lo",
            "reference": "L_CEF",
            "value": "13857/20000"
          }
        },
        "AREA_LO_CEO": {
          "name": "AREA_LO_CEO",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                2,
                10
              ],
              "-1"
            ],
            [
              [
                4,
                9
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEO",
            "side": "lo",
            "reference": "L_CEO",
            "value": "279/1000"
          }
        },
        "AREA_LO_CEP": {
          "name": "AREA_LO_CEP",
          "terms": [
            [
              [
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                4,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEP",
            "side": "lo",
            "reference": "L_CEP",
            "value": "93/1000"
          }
        },
        "AREA_LO_CFO": {
          "name": "AREA_LO_CFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [
                2
              ],
              "-1"
            ],
            [
              [],
              "-10291/62500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0091",
            "value": "10291/62500"
          }
        },
        "AREA_LO_CGH": {
          "name": "AREA_LO_CGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "-1"
            ],
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGH",
            "side": "lo",
            "reference": "L_CGH",
            "value": "93/1000"
          }
        },
        "AREA_LO_COP": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "-1"
            ],
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                10,
                11
              ],
              "1"
            ],
            [
              [
                2,
                10
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "AREA_LO_DEP": {
          "name": "AREA_LO_DEP",
          "terms": [
            [
              [
                4,
                11
              ],
              "-1"
            ],
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEP",
            "side": "lo",
            "reference": "L_DEP",
            "value": "93/1000"
          }
        },
        "AREA_LO_DFP": {
          "name": "AREA_LO_DFP",
          "terms": [
            [
              [
                5,
                12
              ],
              "1"
            ],
            [
              [
                3,
                5
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                11
              ],
              "-1"
            ],
            [
              [],
              "860641/1000000"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DFP",
            "side": "lo",
            "reference": "T0240",
            "value": "139359/1000000"
          }
        },
        "AREA_LO_DGP": {
          "name": "AREA_LO_DGP",
          "terms": [
            [
              [
                6,
                12
              ],
              "1"
            ],
            [
              [
                3,
                6
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                8,
                11
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "AREA_LO_DHP": {
          "name": "AREA_LO_DHP",
          "terms": [
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                7,
                11
              ],
              "-1"
            ],
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [],
              "-136747/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DHP",
            "side": "lo",
            "reference": "T0137",
            "value": "136747/1000000"
          }
        },
        "AREA_LO_DOP": {
          "name": "AREA_LO_DOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DOP",
            "side": "lo",
            "reference": "L_DOP",
            "value": "93/1000"
          }
        },
        "AREA_LO_EFH": {
          "name": "AREA_LO_EFH",
          "terms": [
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                7
              ],
              "-1"
            ],
            [
              [],
              "907/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFH",
            "side": "lo",
            "reference": "L_EFH",
            "value": "93/1000"
          }
        },
        "AREA_LO_EOP": {
          "name": "AREA_LO_EOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                4,
                9
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                4,
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EOP",
            "side": "lo",
            "reference": "L_EOP",
            "value": "93/1000"
          }
        },
        "AREA_LO_FGH": {
          "name": "AREA_LO_FGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "-1"
            ],
            [
              [
                6
              ],
              "1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                5,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGH",
            "side": "lo",
            "reference": "L_FGH",
            "value": "93/1000"
          }
        },
        "AREA_LO_FGO": {
          "name": "AREA_LO_FGO",
          "terms": [
            [
              [
                6,
                10
              ],
              "1"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                8,
                9
              ],
              "-1"
            ],
            [
              [
                5,
                8
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGO",
            "side": "lo",
            "reference": "L_FGO",
            "value": "93/1000"
          }
        },
        "AREA_LO_FHO": {
          "name": "AREA_LO_FHO",
          "terms": [
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                7,
                9
              ],
              "-1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "lo",
            "reference": "L_FHO",
            "value": "93/1000"
          }
        },
        "AREA_LO_FOP": {
          "name": "AREA_LO_FOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [
                5,
                12
              ],
              "1"
            ],
            [
              [
                10,
                11
              ],
              "1"
            ],
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                11
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FOP",
            "side": "lo",
            "reference": "L_FOP",
            "value": "93/1000"
          }
        },
        "Central_endpoint_tangent_2": {
          "name": "Central_endpoint_tangent_2",
          "terms": [
            [
              [
                0,
                2,
                7
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-2/5"
            ],
            [
              [
                2
              ],
              "1/25"
            ],
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "central_endpoint_tangent",
            "cell": "CA",
            "t": "1/5"
          }
        },
        "Central_order": {
          "name": "Central_order",
          "terms": [
            [
              [
                0,
                2
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "central_order",
            "cell": "CA"
          }
        },
        "Gsum": {
          "name": "Gsum",
          "terms": [
            [
              [],
              "790/883"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "Gsum"
          }
        },
        "QUAD_1164": {
          "name": "QUAD_1164",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                2,
                10
              ],
              "-1"
            ],
            [
              [
                4,
                9
              ],
              "-1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1164
          }
        },
        "QUAD_886": {
          "name": "QUAD_886",
          "terms": [
            [
              [
                1,
                10
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                0,
                5
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 886
          }
        },
        "overlap_ae": {
          "name": "overlap_ae",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_ae"
          }
        },
        "overlap_bf": {
          "name": "overlap_bf",
          "terms": [
            [
              [
                5
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_bf"
          }
        },
        "overlap_eh": {
          "name": "overlap_eh",
          "terms": [
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                4
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_eh"
          }
        },
        "overlap_fc": {
          "name": "overlap_fc",
          "terms": [
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                5
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_fc"
          }
        },
        "span_AH": {
          "name": "span_AH",
          "terms": [
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_AH"
          }
        },
        "span_AH_hi": {
          "name": "span_AH_hi",
          "terms": [
            [
              [
                0
              ],
              "1"
            ],
            [
              [
                7
              ],
              "-1"
            ],
            [
              [],
              "697/790"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_AH_hi"
          }
        },
        "span_BC": {
          "name": "span_BC",
          "terms": [
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ],
            [
              [],
              "-117/1000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_BC"
          }
        },
        "span_BC_hi": {
          "name": "span_BC_hi",
          "terms": [
            [
              [
                1
              ],
              "1"
            ],
            [
              [
                2
              ],
              "-1"
            ],
            [
              [],
              "79/100"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_BC_hi"
          }
        },
        "span_DE_hi": {
          "name": "span_DE_hi",
          "terms": [
            [
              [
                3
              ],
              "1"
            ],
            [
              [
                4
              ],
              "-1"
            ],
            [
              [],
              "697/790"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_DE_hi"
          }
        }
      }
    }
  ],
  "terminal": {
    "kind": "polynomial",
    "stage": 2,
    "sum": {
      "factors": [
        {
          "weight": 63,
          "atoms": [
            "L0",
            "L0",
            "L3"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "L0",
            "L2",
            "L15"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "L0",
            "L2",
            "L19"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "L0",
            "L12",
            "L5"
          ]
        },
        {
          "weight": 35,
          "atoms": [
            "L0",
            "L16",
            "L11"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L0",
            "L18",
            "L15"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L0",
            "L18",
            "L17"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L18",
            "L23"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "L0",
            "L18",
            "Gsum"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "L0",
            "L20",
            "L5"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "L0",
            "L11",
            "L21"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L11",
            "L23"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L0",
            "L11",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L0",
            "L11",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "L0",
            "L17",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "L2",
            "L4",
            "L15"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L2",
            "L6",
            "L5"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L2",
            "L10",
            "L9"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L2",
            "L10",
            "L15"
          ]
        },
        {
          "weight": 66,
          "atoms": [
            "L2",
            "L12",
            "L21"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L2",
            "L12",
            "L25"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L2",
            "L5",
            "L21"
          ]
        },
        {
          "weight": 25,
          "atoms": [
            "L2",
            "L5",
            "overlap_eh"
          ]
        },
        {
          "weight": 39,
          "atoms": [
            "L4",
            "L10",
            "L25"
          ]
        },
        {
          "weight": 33,
          "atoms": [
            "L4",
            "L20",
            "overlap_bf"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "L4",
            "L20",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L4",
            "L5",
            "L9"
          ]
        },
        {
          "weight": 42,
          "atoms": [
            "L4",
            "L9",
            "L11"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L4",
            "L9",
            "L25"
          ]
        },
        {
          "weight": 91,
          "atoms": [
            "L4",
            "L19",
            "overlap_eh"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L4",
            "L25",
            "overlap_bf"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L4",
            "L25",
            "overlap_eh"
          ]
        },
        {
          "weight": 34,
          "atoms": [
            "L6",
            "L12",
            "L5"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L6",
            "L12",
            "L23"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L6",
            "L16",
            "overlap_bf"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "L6",
            "L18",
            "L5"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L6",
            "L5",
            "L9"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L6",
            "L5",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L8",
            "overlap_bf",
            "overlap_bf"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L10",
            "L10",
            "L15"
          ]
        },
        {
          "weight": 66,
          "atoms": [
            "L10",
            "L20",
            "L15"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L10",
            "L24",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L10",
            "L24",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 52,
          "atoms": [
            "L10",
            "AREA_HI_ADH",
            "Gsum"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L12",
            "L22",
            "overlap_eh"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L12",
            "L5",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "L12",
            "L5",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L12",
            "L15",
            "L19"
          ]
        },
        {
          "weight": 57,
          "atoms": [
            "L12",
            "L15",
            "L21"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L12",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "L12",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L12",
            "L15",
            "overlap_eh"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L12",
            "AREA_HI_ADH",
            "overlap_eh"
          ]
        },
        {
          "weight": 51,
          "atoms": [
            "L14",
            "L5",
            "L5"
          ]
        },
        {
          "weight": 63,
          "atoms": [
            "L16",
            "L20",
            "overlap_bf"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L16",
            "L9",
            "L11"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "L16",
            "AREA_LO_ADH",
            "overlap_bf"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "L18",
            "L5",
            "L17"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L20",
            "L11",
            "overlap_eh"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L22",
            "L9",
            "L9"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L22",
            "L9",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L24",
            "L5",
            "L21"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L24",
            "L9",
            "L19"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "L5",
            "L5",
            "L25"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L5",
            "L9",
            "L17"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "L5",
            "L9",
            "L19"
          ]
        },
        {
          "weight": 33,
          "atoms": [
            "L5",
            "L11",
            "L17"
          ]
        },
        {
          "weight": 25,
          "atoms": [
            "L5",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "L5",
            "L17",
            "L23"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "L5",
            "L17",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L5",
            "L21",
            "L23"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L5",
            "L21",
            "overlap_eh"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L7",
            "L9",
            "L19"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L9",
            "L9",
            "L11"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L9",
            "L11",
            "L19"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L9",
            "L11",
            "L25"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L9",
            "L11",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L9",
            "L17",
            "overlap_bf"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L9",
            "L19",
            "overlap_eh"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "L11",
            "L15",
            "overlap_eh"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L11",
            "L21",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L11",
            "L21",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L11",
            "L23",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L11",
            "L25",
            "overlap_eh"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L15",
            "L17",
            "overlap_bf"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L17",
            "L23",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "L17",
            "AREA_HI_BCF",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "L19",
            "AREA_LO_BCF",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_HI_BCF",
            "AREA_HI_BCF",
            "overlap_eh"
          ]
        },
        {
          "weight": 48,
          "atoms": [
            "AREA_LO_ABC",
            "L15"
          ]
        },
        {
          "weight": 76,
          "atoms": [
            "AREA_LO_ABH",
            "L17"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_ABH",
            "overlap_bf"
          ]
        },
        {
          "weight": 62,
          "atoms": [
            "AREA_LO_CDE",
            "L24"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CDE",
            "L11"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_CEF",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_EFH",
            "L2"
          ]
        },
        {
          "weight": 61,
          "atoms": [
            "AREA_LO_EFH",
            "L4"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_EFH",
            "L10"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_EFH",
            "L17"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "AREA_LO_EFH",
            "L19"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_EFH",
            "L21"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_EFH",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "AREA_LO_EFH",
            "span_BC"
          ]
        },
        {
          "weight": 37,
          "atoms": [
            "AREA_LO_ABG"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_ABG",
            "L18"
          ]
        },
        {
          "weight": 57,
          "atoms": [
            "AREA_LO_ABG",
            "L20"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_ABG",
            "L22"
          ]
        },
        {
          "weight": 33,
          "atoms": [
            "AREA_LO_ABG",
            "L1"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_ABG",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 30,
          "atoms": [
            "AREA_LO_ABG",
            "span_AH"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_ABG",
            "overlap_fc"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_ABG",
            "overlap_ae"
          ]
        },
        {
          "weight": 56,
          "atoms": [
            "AREA_LO_FGH",
            "L4"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "AREA_LO_FGH",
            "L18"
          ]
        },
        {
          "weight": 100,
          "atoms": [
            "AREA_LO_FGH",
            "L20"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FGH",
            "L22"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_FGH",
            "L15"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "AREA_LO_FGH",
            "L25"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "AREA_LO_FGH",
            "span_BC"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_LO_FGH",
            "overlap_ae"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_CGH"
          ]
        },
        {
          "weight": 34,
          "atoms": [
            "AREA_LO_CGH",
            "L14"
          ]
        },
        {
          "weight": 70,
          "atoms": [
            "AREA_LO_CGH",
            "L18"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_CGH",
            "L22"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "AREA_LO_CGH",
            "L24"
          ]
        },
        {
          "weight": 88,
          "atoms": [
            "AREA_LO_CGH",
            "L11"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_CGH",
            "L21"
          ]
        },
        {
          "weight": 59,
          "atoms": [
            "AREA_LO_CGH",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "AREA_LO_CGH",
            "span_AH_hi"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_CGH",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CGH",
            "overlap_eh"
          ]
        },
        {
          "weight": 34,
          "atoms": [
            "AREA_LO_CDO",
            "L23"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_FHO",
            "L0"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_FHO",
            "L8"
          ]
        },
        {
          "weight": 30,
          "atoms": [
            "AREA_LO_FHO",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FHO",
            "L11"
          ]
        },
        {
          "weight": 85,
          "atoms": [
            "AREA_LO_FHO",
            "L13"
          ]
        },
        {
          "weight": 21,
          "atoms": [
            "AREA_LO_FHO",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "AREA_LO_FHO",
            "Gsum"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "AREA_LO_CEO",
            "overlap_bf"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_CDP",
            "L8"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "AREA_LO_CDP",
            "L18"
          ]
        },
        {
          "weight": 88,
          "atoms": [
            "AREA_LO_CDP",
            "L5"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_CDP",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_DEP",
            "L11"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CEP",
            "L10"
          ]
        },
        {
          "weight": 72,
          "atoms": [
            "AREA_LO_CEP",
            "L20"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_CEP",
            "L7"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_CEP",
            "L13"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CEP",
            "L15"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_CEP",
            "AREA_LO_ADE"
          ]
        },
        {
          "weight": 43,
          "atoms": [
            "AREA_LO_AGO"
          ]
        },
        {
          "weight": 57,
          "atoms": [
            "AREA_LO_AGO",
            "L10"
          ]
        },
        {
          "weight": 52,
          "atoms": [
            "AREA_LO_AGO",
            "L14"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "AREA_LO_AGO",
            "L3"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_AGO",
            "L23"
          ]
        },
        {
          "weight": 33,
          "atoms": [
            "AREA_LO_AGO",
            "span_BC"
          ]
        },
        {
          "weight": 68,
          "atoms": [
            "AREA_LO_AGO",
            "span_AH_hi"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_AGP",
            "overlap_bf"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_DGP"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_DGP",
            "L10"
          ]
        },
        {
          "weight": 34,
          "atoms": [
            "AREA_LO_DGP",
            "L3"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_DGP",
            "L19"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "AREA_LO_DGP",
            "span_BC_hi"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_COP"
          ]
        },
        {
          "weight": 46,
          "atoms": [
            "AREA_LO_COP",
            "L8"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "AREA_LO_COP",
            "L12"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "AREA_LO_COP",
            "L16"
          ]
        },
        {
          "weight": 79,
          "atoms": [
            "AREA_LO_COP",
            "L3"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_COP",
            "L21"
          ]
        },
        {
          "weight": 82,
          "atoms": [
            "AREA_LO_COP",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_COP",
            "span_AH_hi"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_COP",
            "overlap_ae"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_EOP",
            "L9"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_EOP",
            "overlap_eh"
          ]
        },
        {
          "weight": 47,
          "atoms": [
            "AREA_LO_FOP",
            "L4"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_FOP",
            "L8"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_FOP",
            "L14"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_FOP",
            "L20"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_FOP",
            "L17"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FOP",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FOP",
            "span_BC"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FOP",
            "Gsum"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "AREA_LO_DOP",
            "L12"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_DOP",
            "L9"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "AREA_LO_CFO",
            "L0"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_CFO",
            "L12"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_CFO",
            "L24"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_CFO",
            "L17"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_CFO",
            "L21"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CFO",
            "overlap_bf"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_FGO",
            "L0"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_DHP",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_DFP",
            "L5"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_BFG",
            "L18"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_BFG",
            "L20"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_BFG",
            "L1"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BFG",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BFG",
            "L23"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_BFG",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 96,
          "atoms": [
            "AREA_LO_BFG",
            "span_AH"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_BFG",
            "span_DE_hi"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_BFG",
            "overlap_ae"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "Central_order",
            "L18"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "Central_order",
            "L11"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "Central_endpoint_tangent_2"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "QUAD_886",
            "L0"
          ]
        },
        {
          "weight": 93,
          "atoms": [
            "QUAD_1164",
            "L4"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "QUAD_1164",
            "L9"
          ]
        },
        {
          "weight": 71,
          "atoms": [
            "QUAD_1164",
            "L25"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "QUAD_1164",
            "overlap_eh"
          ]
        }
      ],
      "sum": {
        "0,0": "-109148379214732029/62500000000000000",
        "0,1": "-366499077487131117/250000000000000000",
        "0,6": "-1006547293438978557/39500000000000000000",
        "0,2,6": "-6139922376911841/125000000000000000",
        "0,8": "7687298904139293/250000000000000000",
        "0,9": "466873354051823664747/8719625000000000000000",
        "0,10": "6545195997119871/100000000000000000",
        "0": "-220855429338635667/9875000000000000000",
        "0,5": "-6643557744354482559/441500000000000000000",
        "0,5,10": "-19775996677201947/500000000000000000",
        "0,11": "-321724958036181/25000000000000000",
        "0,5,11": "1747095163074681/50000000000000000",
        "0,7": "-6042855211722879/100000000000000000",
        "0,5,7": "2503312354087941/100000000000000000",
        "0,2": "-2197071832912461/25000000000000000",
        "0,2,5": "3547175554913301/125000000000000000",
        "0,1,8": "-1217309284144512837/500000000000000000",
        "1,2": "7995130333275261/250000000000000000",
        "1,2,7": "873659677109307/50000000000000000",
        "1,3": "-14069466572711691/500000000000000000",
        "1,2,3": "-4248355499268843/125000000000000000",
        "1,5": "-4410889690922861/1000000000000000000",
        "1,4,5": "9852718754953/1000000000000000",
        "1,5,7": "-1755625841294281/200000000000000000",
        "1,6": "897202805666741/125000000000000000",
        "1,6,10": "-24006867762457307/1000000000000000000",
        "1,6,12": "-20724731986930083/1000000000000000000",
        "1": "-170449634451760591/4937500000000000000",
        "1,10": "-31521368511694789/1000000000000000000",
        "1,2,10": "-6901851797800869/250000000000000000",
        "1,7": "3233708231238309/200000000000000000",
        "1,4": "4200055076291/200000000000000",
        "2,5": "-2087259375795309/125000000000000000",
        "2,5,12": "5958254535255261/250000000000000000",
        "2,5,10": "6901851797800869/250000000000000000",
        "2,10": "399083019549736431/9875000000000000000",
        "2,4,10": "13602929204319/250000000000000",
        "2": "2736372580161784431/19750000000000000000",
        "2,4": "-4399862250927/125000000000000",
        "2,2": "-827685326990799/15625000000000000",
        "2,4,5": "-4903051028091/250000000000000",
        "2,12": "4050271259698111659/19750000000000000000",
        "2,7": "-42438414674822331/1975000000000000000",
        "2,9": "-914220496741773/12500000000000000",
        "2,7,9": "920227745425461/25000000000000000",
        "1,2,12": "5958254535255261/125000000000000000",
        "3,6": "50390719614938591/250000000000000000",
        "2,3,6": "-7353617713932063/125000000000000000",
        "3,9": "-5644291737584027/125000000000000000",
        "3": "-18974928950318849/250000000000000000",
        "3,4": "6792949787447/500000000000000",
        "2,3": "875650153875627/15625000000000000",
        "3,7": "-1036263617327851/25000000000000000",
        "5,5": "-204655879183/50000000000000",
        "5,10": "-25040535189265942437/441500000000000000000",
        "5,12": "111472766956308123/44150000000000000000",
        "1,5,12": "-11973158319168063/1000000000000000000",
        "5": "-31555894376583186567/4359812500000000000000",
        "5,6": "-313102473837223/500000000000000000",
        "5,8": "-543572107335308159/39500000000000000000",
        "5,7": "8776734548318160347/176600000000000000000",
        "5,7,8": "-3446206446958957/200000000000000000",
        "6,11": "9209596704236467/100000000000000000",
        "6,7,11": "-744828640549147/20000000000000000",
        "6": "-4934244594975253313/39500000000000000000",
        "4,6": "-2132759215657/40000000000000",
        "2,6": "119042574969801/62500000000000000",
        "6,7": "130328092654792109/7900000000000000000",
        "6,9": "-56878355820991019/500000000000000000",
        "6,10": "1319165498541993011/79000000000000000000",
        "7": "-1308303823214741781813/13951400000000000000000",
        "8": "-994677582413068159/3950000000000000000",
        "4,8": "-9205259044369/1000000000000000",
        "4,5,8": "19340398218541/1000000000000000",
        "1,8": "-864626046377618953/79000000000000000000",
        "9": "28469449151642219391/17439250000000000000000",
        "8,9": "-1687612391649526149/39500000000000000000",
        "2,8,9": "-5143538114653971/125000000000000000",
        "10": "7674610494582505819163/69757000000000000000000",
        "7,10": "10199692181397719/200000000000000000",
        "4,10": "33351308484949/1000000000000000",
        "11": "142750353971223131973/1743925000000000000000",
        "4,11": "796513611201/12500000000000",
        "7,11": "-276641578181507/4000000000000000",
        "12": "20875388436630543681/136244140625000000000",
        "10,12": "-12248307565384527/200000000000000000",
        "2,10,12": "-16530465247053849/250000000000000000",
        "9,12": "-1234054010379812170743/8719625000000000000000",
        "4,12": "-35216026536231/250000000000000",
        "4,9,12": "24855846890499/500000000000000",
        "": "-48371379755464612212511/13951400000000000000000",
        "2,2,12": "-2965031962373367/62500000000000000",
        "4": "39812511161829/500000000000000",
        "2,8": "-2570073698316762327/19750000000000000000",
        "4,9": "8356537096271/250000000000000",
        "2,11": "97989973884579/6250000000000000",
        "2,7,11": "214134427810149/5000000000000000",
        "8,11": "12276401030094803/100000000000000000",
        "2,8,11": "-1196886962576739/25000000000000000",
        "2,2,8": "2430072651666519/62500000000000000",
        "1,2,8": "-4883249685511677/125000000000000000",
        "10,11": "-181791065775454268679/1743925000000000000000",
        "4,5": "-4885418506677/125000000000000",
        "4,4": "-26857819241/1000000000000",
        "5,9": "-247929978910037/31250000000000000",
        "4,7": "1044871875729/200000000000000",
        "0,4": "-7641155187/500000000000",
        "7,9": "3470506648791987519/88300000000000000000",
        "7,7": "196300632028039/8000000000000000",
        "1,5,10": "-41607972829058181/250000000000000000",
        "5,11": "3798361036535163/100000000000000000",
        "7,12": "815681660232087/25000000000000000",
        "1,11": "-1997127542907917/100000000000000000",
        "1,8,11": "2405153557687937/100000000000000000",
        "1,1": "-2659853988633113/250000000000000000",
        "1,9": "9370312000090047/250000000000000000",
        "7,8": "5548834374067721/200000000000000000",
        "0,1,1": "-7128076562281383/125000000000000000",
        "3,12": "27417469512989979/250000000000000000",
        "2,3,12": "-10175137773918903/125000000000000000",
        "3,5": "3069446709075799/500000000000000000",
        "5,7,9": "-1849204732774663/100000000000000000",
        "0,1,10": "-257087956803625311/125000000000000000",
        "0,1,6": "-37014663733068609/25000000000000000",
        "0,1,4": "-14048797870533/100000000000000",
        "5,8,9": "10335979405214993/500000000000000000",
        "5,8,11": "-2405153557687937/100000000000000000",
        "6,12": "-12016288983678651/125000000000000000",
        "9,11": "1956305326006283/50000000000000000",
        "3,11": "-4770887781252831/25000000000000000",
        "3,9,11": "2203980568080809/25000000000000000",
        "2,3,11": "-1041274077086901/12500000000000000",
        "2,9,12": "6275843193073203/125000000000000000",
        "2,2,3": "2114127513069921/31250000000000000",
        "1,12": "-488135862041679/50000000000000000",
        "4,10,11": "-6699869078539/100000000000000",
        "2,6,12": "-216580097438716221/250000000000000000",
        "0,5,9": "-427957107065309313/250000000000000000",
        "0,2,9": "-3736248162816123/2500000000000000",
        "0,0,9": "-181994132603968533/31250000000000000",
        "3,5,6": "-14777151359777429/250000000000000000",
        "1,3,6": "-14777151359777429/125000000000000000",
        "3,6,9": "-171212882309883337/250000000000000000",
        "1,9,12": "-12611355169928049/500000000000000000",
        "1,10,11": "3399378380214089/100000000000000000",
        "2,2,10": "-37780581821155173/62500000000000000",
        "5,10,12": "33218097065402067/1000000000000000000"
      },
      "upper": "-36661798069521500342797/69757000000000000000000"
    }
  }
}
```
