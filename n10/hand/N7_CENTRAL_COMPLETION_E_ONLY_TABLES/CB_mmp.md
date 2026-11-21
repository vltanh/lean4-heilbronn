# CB_--+

```n7-central-e-only-packet
{
  "id": "CB_--+",
  "cell": "CB",
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
        "L_AFP": {
          "triangle": "AFP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FAP",
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
        "L_BGO": {
          "triangle": "BGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GBO",
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
          "value": "387637/500000",
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
              "265631/1000000",
              "55629/200000",
              "433553/1000000",
              "237499/500000",
              "387637/500000"
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
        "U_AFO": {
          "triangle": "AFO",
          "side": "hi",
          "value": "387637/500000",
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
              "-17629359/139400000",
              "-2503467/87125000",
              "-111687/27880000",
              "256923/43562500",
              "3225333/34850000",
              "71409603/697000000",
              "132625719/697000000",
              "216207/1000000",
              "250839/1000000",
              "173697/500000",
              "217611/500000",
              "556259/1000000",
              "678719/1000000",
              "387637/500000"
            ],
            "cell": "CB"
          }
        },
        "U_AHO": {
          "triangle": "AHO",
          "side": "hi",
          "value": "387637/500000",
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
              "-66123/8712500",
              "462861/13940000",
              "3607377/69700000",
              "3225333/34850000",
              "55629/200000",
              "433553/1000000",
              "387637/500000"
            ],
            "cell": "CB"
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
        "12": {
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
              "CGH": "387637/500000"
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
              "value": "387637/500000"
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
            "residual": "248137/500000"
          }
        },
        "3619": {
          "row": [
            "linear",
            {
              "ADF": "-93/1000",
              "ADO": "-93/1000",
              "ADG": "387637/500000"
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
              "value": "387637/500000"
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
            "residual": "248137/500000"
          }
        },
        "3627": {
          "row": [
            "linear",
            {
              "AFO": "-93/1000",
              "AGO": "387637/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FAO",
            "point": "G",
            "line": "AO",
            "side": "lower",
            "outer_upper": {
              "triangle": "AFO",
              "ref": "U_AFO",
              "value": "387637/500000"
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
            "residual": "248137/500000"
          }
        },
        "3771": {
          "row": [
            "linear",
            {
              "AHO": "294637/500000",
              "AGH": "-387637/500000"
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
              "value": "387637/500000"
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
            "residual": "248137/500000"
          }
        },
        "4027": {
          "row": [
            "linear",
            {
              "BCH": "-93/1000",
              "CGH": "19/25"
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
              "value": "19/25"
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
            "residual": "481/1000"
          }
        },
        "4299": {
          "row": [
            "linear",
            {
              "BEG": "691/1000",
              "BFG": "-93/1000",
              "BGO": "-877/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BEF",
            "point": "O",
            "line": "BG",
            "side": "lower",
            "outer_upper": {
              "triangle": "BEF",
              "ref": "U_BEF",
              "value": "877/1000"
            },
            "fan_lower": [
              {
                "triangle": "EFO",
                "ref": "L_EFO",
                "value": "93/1000"
              },
              {
                "triangle": "BFO",
                "ref": "L_BFO",
                "value": "279/1000"
              },
              {
                "triangle": "BEO",
                "ref": "L_BEO",
                "value": "93/1000"
              }
            ],
            "residual": "103/250"
          }
        },
        "4791": {
          "row": [
            "linear",
            {
              "BCD": "-93/1000",
              "BCF": "-93/1000",
              "BCP": "75369/100000"
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
              "value": "75369/100000"
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
            "residual": "47469/100000"
          }
        },
        "5073": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-279/1000",
              "BCO": "419063/500000"
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
        "5141": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-93/1000",
              "BCP": "419063/500000"
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
              "value": "419063/500000"
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
            "residual": "186563/500000"
          }
        },
        "5163": {
          "row": [
            "linear",
            {
              "CEP": "233063/500000",
              "CFP": "-93/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "P",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEF",
              "ref": "U_CEF",
              "value": "419063/500000"
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
            "residual": "186563/500000"
          }
        },
        "5175": {
          "row": [
            "linear",
            {
              "CEF": "-279/1000",
              "EFP": "419063/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "P",
            "line": "EF",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEF",
              "ref": "U_CEF",
              "value": "419063/500000"
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
            "residual": "186563/500000"
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
        "5508": {
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
          "id": "T0041",
          "relation": 24,
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
          "id": "T0065",
          "relation": 303,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "11207/100000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "T0041"
          ]
        },
        {
          "id": "T0069",
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
          "id": "T0072",
          "relation": 447,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "54917/500000",
          "sources": [
            "L_ACF",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0084",
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
          "id": "T0086",
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
          "id": "T0087",
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
          "id": "T0097",
          "relation": 2561,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "6261/62500",
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
          "id": "T0111",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "55841/500000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0097",
            "L_DEP",
            "T0065",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0139",
          "relation": 4299,
          "rule": "linear",
          "triangle": "BEG",
          "side": "lo",
          "value": "130549/1000000",
          "sources": [
            "L_BFG",
            "L_BGO"
          ]
        },
        {
          "id": "T0160",
          "relation": 5465,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "134811/1000000",
          "sources": [
            "T0069",
            "L_FOP"
          ]
        },
        {
          "id": "T0161",
          "relation": 5508,
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
          "id": "T0174",
          "relation": 12,
          "rule": "sub",
          "triangle": "EFG",
          "side": "hi",
          "value": "653451/1000000",
          "sources": [
            "U_BEF",
            "T0139",
            "L_BFG"
          ]
        },
        {
          "id": "T0176",
          "relation": 13,
          "rule": "sub",
          "triangle": "BFO",
          "side": "hi",
          "value": "68883/100000",
          "sources": [
            "U_BEF",
            "L_BEO",
            "T0069"
          ]
        },
        {
          "id": "T0189",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "148841/500000",
          "sources": [
            "L_CEP",
            "T0111",
            "L_CGP"
          ]
        },
        {
          "id": "T0193",
          "relation": 30,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "28117/100000",
          "sources": [
            "T0069",
            "L_FOP",
            "L_EOP"
          ]
        },
        {
          "id": "T0201",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "25569/250000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0189",
            "T0072",
            "U_CEH"
          ]
        },
        {
          "id": "T0205",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "113163/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0201",
            "L_EFH",
            "T0174"
          ]
        },
        {
          "id": "T0210",
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
            "T0084"
          ]
        },
        {
          "id": "T0216",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "23/200",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0201",
            "L_DEP",
            "T0161",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0240",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "301/1000",
          "sources": [
            "L_CEP",
            "T0216",
            "L_CGP"
          ]
        },
        {
          "id": "T0245",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "20743/200000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0240",
            "T0205",
            "U_CEH"
          ]
        },
        {
          "id": "T0249",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "14171/125000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0245",
            "L_EFH",
            "T0174"
          ]
        },
        {
          "id": "T0256",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "57589/500000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0245",
            "L_DEP",
            "T0161",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0276",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "150589/500000",
          "sources": [
            "L_CEP",
            "T0256",
            "L_CGP"
          ]
        },
        {
          "id": "T0282",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "103801/1000000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0276",
            "T0249",
            "U_CEH"
          ]
        },
        {
          "id": "T0285",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "5669/50000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0282",
            "L_EFH",
            "T0174"
          ]
        },
        {
          "id": "T0291",
          "relation": 2870,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "4989/50000",
          "sources": [
            "L_CEH",
            "L_FOP",
            "T0285",
            "L_EOP",
            "L_COP",
            "L_EFH",
            "U_CEF"
          ]
        },
        {
          "id": "T0292",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "28797/250000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0282",
            "L_DEP",
            "T0161",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0309",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "75297/250000",
          "sources": [
            "L_CEP",
            "T0292",
            "L_CGP"
          ]
        },
        {
          "id": "T0311",
          "relation": 31,
          "rule": "sum",
          "triangle": "EHP",
          "side": "lo",
          "value": "14289/50000",
          "sources": [
            "L_EHO",
            "T0291",
            "L_EOP"
          ]
        },
        {
          "id": "T0314",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "51903/500000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0309",
            "T0285",
            "U_CEH"
          ]
        },
        {
          "id": "T0317",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "113381/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0314",
            "L_EFH",
            "T0174"
          ]
        },
        {
          "id": "T0318",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "EFG",
          "side": "lo",
          "value": "120607/500000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0314",
            "L_EFH",
            "T0084"
          ]
        },
        {
          "id": "T0321",
          "relation": 3101,
          "rule": "balance_lo",
          "triangle": "EGP",
          "side": "lo",
          "value": "115189/1000000",
          "sources": [
            "L_CEF",
            "L_DGP",
            "T0314",
            "L_DEP",
            "T0161",
            "L_DEG",
            "U_CDF"
          ]
        },
        {
          "id": "T0333",
          "relation": 26,
          "rule": "sum",
          "triangle": "CEG",
          "side": "lo",
          "value": "301189/1000000",
          "sources": [
            "L_CEP",
            "T0321",
            "L_CGP"
          ]
        },
        {
          "id": "T0337",
          "relation": 298,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "103807/1000000",
          "sources": [
            "L_CEF",
            "L_CGH",
            "T0333",
            "T0317",
            "U_CEH"
          ]
        },
        {
          "id": "T0345",
          "relation": 8,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "289807/1000000",
          "sources": [
            "L_BCG",
            "T0337",
            "L_BFG"
          ]
        },
        {
          "id": "T0349",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "BCO",
          "side": "lo",
          "value": "24783/200000",
          "sources": [
            "L_BCD",
            "T0160",
            "T0345",
            "L_CDO",
            "U_CDF"
          ]
        }
      ],
      "physical": {
        "0": {
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
              "379393/500000"
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
            "reference": "T0318",
            "value": "120607/500000"
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
              "-24783/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0349",
            "value": "24783/200000"
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
            "reference": "T0069",
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
            "reference": "T0193",
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
              "-14289/50000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EHP",
            "side": "lo",
            "reference": "T0311",
            "value": "14289/50000"
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
              "-301189/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEG",
            "side": "lo",
            "reference": "T0333",
            "value": "301189/1000000"
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
            "reference": "T0210",
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
            "reference": "T0087",
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
            "reference": "T0086",
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
        "202": {
          "name": "AREA_LO_AFP",
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
                0,
                5
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
            "triangle": "AFP",
            "side": "lo",
            "reference": "L_AFP",
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
        "240": {
          "name": "Central_order",
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
                2
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "central_order",
            "cell": "CB"
          }
        },
        "243": {
          "name": "Central_endpoint_tangent_2",
          "terms": [
            [
              [
                1,
                2,
                7
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-2/5"
            ],
            [
              [
                7
              ],
              "1/25"
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
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "central_endpoint_tangent",
            "cell": "CB",
            "t": "1/5"
          }
        },
        "244": {
          "name": "Central_endpoint_tangent_3",
          "terms": [
            [
              [
                1,
                2,
                7
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-3/5"
            ],
            [
              [
                7
              ],
              "9/100"
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
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "central_endpoint_tangent",
            "cell": "CB",
            "t": "3/10"
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
            "reference": "T0084"
          }
        },
        "1410": {
          "name": "SUPPORT_YCAP_1497",
          "terms": [
            [
              [
                2
              ],
              "-33417/100000"
            ],
            [
              [
                1
              ],
              "33417/100000"
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
            "value": "68883/100000",
            "reference": "T0176"
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
            "reference": "T0084"
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
              "341137/500000"
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
              "-387637/500000"
            ],
            [
              [
                2,
                8
              ],
              "-387637/500000"
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
              "-294637/500000"
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
              "387637/500000"
            ],
            [
              [
                3,
                6
              ],
              "-387637/500000"
            ],
            [
              [
                0,
                6
              ],
              "387637/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3619
          }
        },
        "1938": {
          "name": "LINEAR_3627",
          "terms": [
            [
              [
                5,
                10
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
                9
              ],
              "-93/1000"
            ],
            [
              [
                0,
                9
              ],
              "-341137/500000"
            ],
            [
              [
                6,
                10
              ],
              "-387637/500000"
            ],
            [
              [
                0,
                6
              ],
              "387637/500000"
            ],
            [
              [
                8,
                9
              ],
              "387637/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3627
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
              "294637/500000"
            ],
            [
              [
                0,
                9
              ],
              "-294637/500000"
            ],
            [
              [
                6,
                7
              ],
              "-387637/500000"
            ],
            [
              [
                0,
                6
              ],
              "387637/500000"
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
              "667/1000"
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
              "-19/25"
            ],
            [
              [
                2,
                8
              ],
              "-19/25"
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
              "75369/100000"
            ],
            [
              [
                1,
                12
              ],
              "-75369/100000"
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
              "419063/500000"
            ],
            [
              [
                1,
                10
              ],
              "-419063/500000"
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
              "419063/500000"
            ],
            [
              [
                1,
                12
              ],
              "-419063/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5141
          }
        },
        "3474": {
          "name": "LINEAR_5163",
          "terms": [
            [
              [
                12
              ],
              "233063/500000"
            ],
            [
              [
                2,
                12
              ],
              "-279563/500000"
            ],
            [
              [
                4,
                11
              ],
              "-233063/500000"
            ],
            [
              [
                2,
                4
              ],
              "233063/500000"
            ],
            [
              [
                5,
                12
              ],
              "93/1000"
            ],
            [
              [
                11
              ],
              "-93/1000"
            ],
            [
              [
                2
              ],
              "93/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5163
          }
        },
        "3486": {
          "name": "LINEAR_5175",
          "terms": [
            [
              [],
              "279563/500000"
            ],
            [
              [
                2
              ],
              "279/1000"
            ],
            [
              [
                4,
                5
              ],
              "-279563/500000"
            ],
            [
              [
                2,
                4
              ],
              "-279/1000"
            ],
            [
              [
                5,
                12
              ],
              "419063/500000"
            ],
            [
              [
                12
              ],
              "-419063/500000"
            ],
            [
              [
                11
              ],
              "-419063/500000"
            ],
            [
              [
                4,
                11
              ],
              "419063/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5175
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
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "139951/200000",
          "5104/15625",
          "201/500",
          "396133/1000000",
          "232811/500000",
          "17421/100000"
        ],
        "high": [
          "515287/1000000",
          "279/1000",
          "220359/250000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "50051/100000",
          "1/1",
          "162359/250000",
          "93169/125000",
          "861897/1000000",
          "854117/1000000",
          "575379/1000000"
        ],
        "steps": [
          {
            "factor": 0,
            "target": "a",
            "old": [
              "61/500",
              "137/200"
            ],
            "lines": [
              [
                "209/500",
                "-93/1000"
              ],
              [
                "131/500",
                "-93/1000"
              ],
              [
                "19/25",
                "-93/1000"
              ],
              [
                "151/250",
                "-93/1000"
              ]
            ],
            "raw": [
              "93/760",
              "137/200"
            ],
            "new": [
              "1912/15625",
              "137/200"
            ]
          },
          {
            "factor": 8,
            "target": "a",
            "old": [
              "1912/15625",
              "137/200"
            ],
            "lines": [
              [
                "-123/1000",
                "-17601/1000000"
              ],
              [
                "-279/1000",
                "78027/1000000"
              ],
              [
                "-123/1000",
                "3/100"
              ],
              [
                "-279/1000",
                "93/500"
              ]
            ],
            "raw": [
              "1912/15625",
              "2/3"
            ],
            "new": [
              "1912/15625",
              "666667/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "61/500",
              "141/200"
            ],
            "lines": [
              [
                "209/500",
                "-93/1000"
              ],
              [
                "131/500",
                "-93/1000"
              ],
              [
                "19/25",
                "-93/1000"
              ],
              [
                "151/250",
                "-93/1000"
              ]
            ],
            "raw": [
              "93/760",
              "141/200"
            ],
            "new": [
              "1912/15625",
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
                "-27977/62500",
                "44329/125000"
              ],
              [
                "27/200",
                "-57/250"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ],
              [
                "-101/500",
                "109/1000"
              ]
            ],
            "raw": [
              "541/1000",
              "28818/32693"
            ],
            "new": [
              "541/1000",
              "440737/500000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "1912/15625",
              "141/200"
            ],
            "lines": [
              [
                "-459/1000",
                "16863/100000"
              ],
              [
                "-59263/500000",
                "-1272009/50000000"
              ],
              [
                "-459/1000",
                "323313/1000000"
              ],
              [
                "-59263/500000",
                "7251541/500000000"
              ]
            ],
            "raw": [
              "1912/15625",
              "107771/153000"
            ],
            "new": [
              "1912/15625",
              "352193/500000"
            ]
          },
          {
            "factor": 78,
            "target": "z",
            "old": [
              "67/500",
              "31/40"
            ],
            "lines": [
              [
                "-877/1000",
                "317893/500000"
              ],
              [
                "-721/1000",
                "273433/500000"
              ],
              [
                "-721/1000",
                "247147/500000"
              ],
              [
                "-877/1000",
                "197063/500000"
              ],
              [
                "-877/1000",
                "3647/6250"
              ],
              [
                "-721/1000",
                "152603/500000"
              ],
              [
                "-721/1000",
                "110507/250000"
              ]
            ],
            "raw": [
              "67/500",
              "273433/360500"
            ],
            "new": [
              "67/500",
              "758483/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "123/1000",
              "137/200"
            ],
            "lines": [
              [
                "-613/1000",
                "166139/1000000"
              ],
              [
                "-613/1000",
                "164613023/500000000"
              ],
              [
                "-1/1",
                "187753/500000"
              ],
              [
                "-1/1",
                "167589121/250000000"
              ],
              [
                "-613/1000",
                "-171706303/1000000000"
              ],
              [
                "-613/1000",
                "-110619740971/500000000000"
              ],
              [
                "-1/1",
                "37660697/1000000000"
              ],
              [
                "-1/1",
                "59945478029/500000000000"
              ]
            ],
            "raw": [
              "123/1000",
              "167589121/250000000"
            ],
            "new": [
              "123/1000",
              "670357/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "67/500",
              "758483/1000000"
            ],
            "lines": [
              [
                "-541/1000",
                "81617/500000"
              ],
              [
                "-440737/500000",
                "185972281/500000000"
              ],
              [
                "-541/1000",
                "-172295841/1000000000"
              ],
              [
                "-440737/500000",
                "36414721/1000000000"
              ],
              [
                "-541/1000",
                "13/40"
              ],
              [
                "-440737/500000",
                "332737/500000"
              ],
              [
                "-541/1000",
                "-222357/1000000"
              ],
              [
                "-440737/500000",
                "118117/1000000"
              ]
            ],
            "raw": [
              "67/500",
              "332737/440737"
            ],
            "new": [
              "67/500",
              "188739/250000"
            ]
          },
          {
            "factor": 88,
            "target": "y",
            "old": [
              "61/500",
              "907/1000"
            ],
            "lines": [
              [
                "209/500",
                "-24783/200000"
              ],
              [
                "131/500",
                "-24783/200000"
              ],
              [
                "379237/500000",
                "-24783/200000"
              ],
              [
                "301237/500000",
                "-24783/200000"
              ]
            ],
            "raw": [
              "123915/758474",
              "907/1000"
            ],
            "new": [
              "81687/500000",
              "907/1000"
            ]
          },
          {
            "factor": 92,
            "target": "x",
            "old": [
              "7347/69700",
              "883/1000"
            ],
            "lines": [
              [
                "-27977/62500",
                "44329/125000"
              ],
              [
                "67193/500000",
                "-113693/500000"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ],
              [
                "-101307/500000",
                "54807/500000"
              ]
            ],
            "raw": [
              "7347/69700",
              "28818/32693"
            ],
            "new": [
              "7347/69700",
              "440737/500000"
            ]
          },
          {
            "factor": 98,
            "target": "x",
            "old": [
              "7347/69700",
              "440737/500000"
            ],
            "lines": [
              [
                "61329/125000",
                "-279/1000"
              ],
              [
                "-53667/1000000",
                "-279/1000"
              ],
              [
                "13713/15625",
                "-279/1000"
              ],
              [
                "333333/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "11625/36568",
              "440737/500000"
            ],
            "new": [
              "3179/10000",
              "440737/500000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "3179/10000",
              "440737/500000"
            ],
            "lines": [
              [
                "-57/100",
                "52179333/500000000"
              ],
              [
                "-57/100",
                "60701061681/250000000000"
              ],
              [
                "-907/1000",
                "143337833/500000000"
              ],
              [
                "-907/1000",
                "134965246181/250000000000"
              ],
              [
                "-57/100",
                "445683/1000000"
              ],
              [
                "-57/100",
                "165471631/500000000"
              ],
              [
                "-907/1000",
                "157/250"
              ]
            ],
            "raw": [
              "3179/10000",
              "7819/10000"
            ],
            "new": [
              "3179/10000",
              "7819/10000"
            ]
          },
          {
            "factor": 106,
            "target": "v",
            "old": [
              "61/500",
              "907/1000"
            ],
            "lines": [
              [
                "209/500",
                "-93/1000"
              ],
              [
                "131/500",
                "-93/1000"
              ],
              [
                "379237/500000",
                "-93/1000"
              ],
              [
                "301237/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/379237",
              "907/1000"
            ],
            "new": [
              "61307/500000",
              "907/1000"
            ]
          },
          {
            "factor": 110,
            "target": "u",
            "old": [
              "7347/69700",
              "883/1000"
            ],
            "lines": [
              [
                "-27977/62500",
                "44329/125000"
              ],
              [
                "67193/500000",
                "-113693/500000"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ],
              [
                "-101307/500000",
                "54807/500000"
              ]
            ],
            "raw": [
              "7347/69700",
              "28818/32693"
            ],
            "new": [
              "7347/69700",
              "440737/500000"
            ]
          },
          {
            "factor": 112,
            "target": "v",
            "old": [
              "61307/500000",
              "907/1000"
            ],
            "lines": [
              [
                "-877/1000",
                "21028287/34850000"
              ],
              [
                "-877/1000",
                "416433783/697000000"
              ],
              [
                "-721/1000",
                "717177/1394000"
              ],
              [
                "-721/1000",
                "317813859/697000000"
              ],
              [
                "-877/1000",
                "13484309/50000000"
              ],
              [
                "-877/1000",
                "262645959/500000000"
              ],
              [
                "-721/1000",
                "9038309/50000000"
              ],
              [
                "-721/1000",
                "191899959/500000000"
              ]
            ],
            "raw": [
              "61307/500000",
              "717177/1005074"
            ],
            "new": [
              "61307/500000",
              "713557/1000000"
            ]
          },
          {
            "factor": 116,
            "target": "u",
            "old": [
              "7347/69700",
              "440737/500000"
            ],
            "lines": [
              [
                "61329/125000",
                "-279/1000"
              ],
              [
                "-53667/1000000",
                "-279/1000"
              ],
              [
                "13713/15625",
                "-279/1000"
              ],
              [
                "333333/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "11625/36568",
              "440737/500000"
            ],
            "new": [
              "3179/10000",
              "440737/500000"
            ]
          },
          {
            "factor": 124,
            "target": "v",
            "old": [
              "61307/500000",
              "713557/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "3135503/10000000"
              ],
              [
                "-1/1",
                "2103413/5000000"
              ],
              [
                "-1/1",
                "577523/1000000"
              ],
              [
                "-1/1",
                "6846553/10000000"
              ],
              [
                "-1/1",
                "144658309/500000000"
              ],
              [
                "-1/1",
                "146593339/250000000"
              ],
              [
                "-1/1",
                "16759309/50000000"
              ],
              [
                "-1/1",
                "316121459/500000000"
              ]
            ],
            "raw": [
              "61307/500000",
              "6846553/10000000"
            ],
            "new": [
              "61307/500000",
              "42791/62500"
            ]
          },
          {
            "factor": 148,
            "target": "g",
            "old": [
              "123/1000",
              "670357/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "68687/1000000"
              ],
              [
                "-57/100",
                "6785427/31250000"
              ],
              [
                "-907/1000",
                "62751/250000"
              ],
              [
                "-907/1000",
                "257095201/500000000"
              ],
              [
                "-57/100",
                "88426451/250000000"
              ],
              [
                "-57/100",
                "36341636857/125000000000"
              ],
              [
                "-907/1000",
                "134005701/250000000"
              ],
              [
                "-907/1000",
                "73473729107/125000000000"
              ]
            ],
            "raw": [
              "123/1000",
              "73473729107/113375000000"
            ],
            "new": [
              "123/1000",
              "32403/50000"
            ]
          },
          {
            "factor": 164,
            "target": "z",
            "old": [
              "67/500",
              "188739/250000"
            ],
            "lines": [
              [
                "1/1",
                "-26921/125000"
              ],
              [
                "1/1",
                "-692718223/1000000000"
              ],
              [
                "1/1",
                "-143478107/500000000"
              ],
              [
                "1/1",
                "-764306437/1000000000"
              ],
              [
                "1/1",
                "-20346429503/50000000000"
              ],
              [
                "1/1",
                "-14813764627/25000000000"
              ],
              [
                "1/1",
                "-39205558757/50000000000"
              ]
            ],
            "raw": [
              "26921/125000",
              "188739/250000"
            ],
            "new": [
              "26921/125000",
              "188739/250000"
            ]
          },
          {
            "factor": 180,
            "target": "z",
            "old": [
              "26921/125000",
              "188739/250000"
            ],
            "lines": [
              [
                "-1/1",
                "369769/1000000"
              ],
              [
                "-1/1",
                "20561/50000"
              ],
              [
                "-1/1",
                "17359571/50000000"
              ],
              [
                "-1/1",
                "14139691/25000000"
              ],
              [
                "-1/1",
                "44323/62500"
              ],
              [
                "-1/1",
                "750619/1000000"
              ],
              [
                "-1/1",
                "2416961/5000000"
              ],
              [
                "-1/1",
                "35089421/50000000"
              ]
            ],
            "raw": [
              "26921/125000",
              "750619/1000000"
            ],
            "new": [
              "26921/125000",
              "750619/1000000"
            ]
          },
          {
            "factor": 186,
            "target": "y",
            "old": [
              "81687/500000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-217277/1000000"
              ],
              [
                "1/1",
                "-5885433479/10000000000"
              ],
              [
                "1/1",
                "-2011502611/5000000000"
              ],
              [
                "1/1",
                "-7735668701/10000000000"
              ],
              [
                "1/1",
                "-3359886119/10000000000"
              ],
              [
                "1/1",
                "-3361784371/5000000000"
              ],
              [
                "1/1",
                "-7910684861/10000000000"
              ]
            ],
            "raw": [
              "217277/1000000",
              "907/1000"
            ],
            "new": [
              "217277/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "3179/10000",
              "7819/10000"
            ],
            "lines": [
              [
                "13713/15625",
                "-290673807/1000000000"
              ],
              [
                "333333/1000000",
                "-22372503/100000000"
              ],
              [
                "13713/15625",
                "-305479611/1000000000"
              ],
              [
                "333333/1000000",
                "-15362019/100000000"
              ],
              [
                "13713/15625",
                "-46938717/125000000"
              ],
              [
                "333333/1000000",
                "-308560959/1000000000"
              ],
              [
                "13713/15625",
                "-62239041/125000000"
              ],
              [
                "333333/1000000",
                "-346052907/1000000000"
              ]
            ],
            "raw": [
              "96891269/292544000",
              "7819/10000"
            ],
            "new": [
              "165601/500000",
              "7819/10000"
            ]
          },
          {
            "factor": 192,
            "target": "y",
            "old": [
              "217277/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "877/1000",
                "-809036181/3906250000"
              ],
              [
                "721/1000",
                "-734468181/3906250000"
              ],
              [
                "877/1000",
                "-82072643493/250000000000"
              ],
              [
                "721/1000",
                "-54601589493/250000000000"
              ],
              [
                "877/1000",
                "-40978793/156250000"
              ],
              [
                "721/1000",
                "-37996073/156250000"
              ],
              [
                "877/1000",
                "-3228779677/5000000000"
              ],
              [
                "721/1000",
                "-2679358597/5000000000"
              ]
            ],
            "raw": [
              "809036181/3425781250",
              "907/1000"
            ],
            "new": [
              "236161/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 196,
            "target": "x",
            "old": [
              "165601/500000",
              "7819/10000"
            ],
            "lines": [
              [
                "1/1",
                "-201/500"
              ],
              [
                "1/1",
                "-130289721/250000000"
              ],
              [
                "1/1",
                "-109710279/250000000"
              ],
              [
                "1/1",
                "-279/500"
              ],
              [
                "1/1",
                "-104127/250000"
              ],
              [
                "1/1",
                "-135873/250000"
              ]
            ],
            "raw": [
              "201/500",
              "7819/10000"
            ],
            "new": [
              "201/500",
              "7819/10000"
            ]
          },
          {
            "factor": 202,
            "target": "u",
            "old": [
              "3179/10000",
              "440737/500000"
            ],
            "lines": [
              [
                "13713/15625",
                "-139515129/500000000"
              ],
              [
                "333333/1000000",
                "-212081481/1000000000"
              ],
              [
                "13713/15625",
                "-139534317/500000000"
              ],
              [
                "333333/1000000",
                "-127209213/1000000000"
              ],
              [
                "13713/15625",
                "-21760089/62500000"
              ],
              [
                "333333/1000000",
                "-281212647/1000000000"
              ],
              [
                "13713/15625",
                "-27242397/62500000"
              ],
              [
                "333333/1000000",
                "-284018931/1000000000"
              ]
            ],
            "raw": [
              "46505043/146272000",
              "440737/500000"
            ],
            "new": [
              "63587/200000",
              "440737/500000"
            ]
          },
          {
            "factor": 204,
            "target": "u",
            "old": [
              "63587/200000",
              "440737/500000"
            ],
            "lines": [
              [
                "1/1",
                "-201/500"
              ],
              [
                "1/1",
                "-67359027/125000000"
              ],
              [
                "1/1",
                "-52640973/125000000"
              ],
              [
                "1/1",
                "-279/500"
              ],
              [
                "1/1",
                "-7049901/15625000"
              ],
              [
                "1/1",
                "-7950099/15625000"
              ]
            ],
            "raw": [
              "201/500",
              "440737/500000"
            ],
            "new": [
              "201/500",
              "440737/500000"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "236161/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-1/1",
                "251357/500000"
              ],
              [
                "-1/1",
                "159547/250000"
              ],
              [
                "-1/1",
                "36707/50000"
              ],
              [
                "-1/1",
                "434807/500000"
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
              "236161/1000000",
              "434807/500000"
            ],
            "new": [
              "236161/1000000",
              "434807/500000"
            ]
          },
          {
            "factor": 220,
            "target": "g",
            "old": [
              "123/1000",
              "32403/50000"
            ],
            "lines": [
              [
                "1/1",
                "-27/125"
              ],
              [
                "1/1",
                "-10575081/31250000"
              ],
              [
                "1/1",
                "-7799919/31250000"
              ],
              [
                "1/1",
                "-93/250"
              ],
              [
                "1/1",
                "-63725859/250000000"
              ],
              [
                "1/1",
                "-83274141/250000000"
              ]
            ],
            "raw": [
              "27/125",
              "32403/50000"
            ],
            "new": [
              "27/125",
              "32403/50000"
            ]
          },
          {
            "factor": 232,
            "target": "c",
            "old": [
              "541/1000",
              "440737/500000"
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
              "440737/500000"
            ],
            "new": [
              "270723/500000",
              "440737/500000"
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
                "440737/500000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "270723/440737",
              "1/1"
            ],
            "new": [
              "2457/4000",
              "1/1"
            ]
          },
          {
            "factor": 236,
            "target": "z",
            "old": [
              "26921/125000",
              "750619/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "74909/110375"
              ],
              [
                "-1/1",
                "10888151/44150000"
              ]
            ],
            "raw": [
              "26921/125000",
              "74909/110375"
            ],
            "new": [
              "26921/125000",
              "339339/500000"
            ]
          },
          {
            "factor": 240,
            "target": "a",
            "old": [
              "1912/15625",
              "666667/1000000"
            ],
            "lines": [
              [
                "-270723/500000",
                "302211/4000000"
              ],
              [
                "-270723/500000",
                "685503/4000000"
              ],
              [
                "-440737/500000",
                "302211/4000000"
              ],
              [
                "-440737/500000",
                "685503/4000000"
              ],
              [
                "-270723/500000",
                "123/1000"
              ],
              [
                "-270723/500000",
                "279/1000"
              ],
              [
                "-440737/500000",
                "123/1000"
              ],
              [
                "-440737/500000",
                "279/1000"
              ]
            ],
            "raw": [
              "1912/15625",
              "1500/2911"
            ],
            "new": [
              "1912/15625",
              "515287/1000000"
            ]
          },
          {
            "factor": 243,
            "target": "h",
            "old": [
              "2457/4000",
              "1/1"
            ],
            "lines": [
              [
                "28698929/500000000",
                "-30896739/500000000"
              ],
              [
                "39731717/500000000",
                "-38150739/500000000"
              ],
              [
                "49610651/500000000",
                "-46708041/500000000"
              ],
              [
                "87165623/500000000",
                "-53962041/500000000"
              ]
            ],
            "raw": [
              "53962041/87165623",
              "1/1"
            ],
            "new": [
              "309537/500000",
              "1/1"
            ]
          },
          {
            "factor": 244,
            "target": "h",
            "old": [
              "309537/500000",
              "1/1"
            ],
            "lines": [
              [
                "41398929/500000000",
                "-30896739/500000000"
              ],
              [
                "36831717/500000000",
                "-38150739/500000000"
              ],
              [
                "62310651/500000000",
                "-46708041/500000000"
              ],
              [
                "84265623/500000000",
                "-53962041/500000000"
              ]
            ],
            "raw": [
              "17987347/28088541",
              "1/1"
            ],
            "new": [
              "32019/50000",
              "1/1"
            ]
          },
          {
            "factor": 821,
            "target": "y",
            "old": [
              "236161/1000000",
              "434807/500000"
            ],
            "lines": [
              [
                "98/125",
                "-230984239/500000000"
              ],
              [
                "98/125",
                "-246795541/500000000"
              ],
              [
                "98/125",
                "-95202098993/250000000000"
              ],
              [
                "98/125",
                "-53632145867/250000000000"
              ],
              [
                "17597/50000",
                "-230984239/500000000"
              ],
              [
                "17597/50000",
                "-246795541/500000000"
              ],
              [
                "17597/50000",
                "-95202098993/250000000000"
              ],
              [
                "17597/50000",
                "-53632145867/250000000000"
              ],
              [
                "98/125",
                "-26328760213/50000000000"
              ],
              [
                "98/125",
                "-35786809047/50000000000"
              ],
              [
                "98/125",
                "-55676890279/125000000000"
              ],
              [
                "98/125",
                "-54584210301/125000000000"
              ],
              [
                "17597/50000",
                "-26328760213/50000000000"
              ],
              [
                "17597/50000",
                "-35786809047/50000000000"
              ],
              [
                "17597/50000",
                "-55676890279/125000000000"
              ],
              [
                "17597/50000",
                "-54584210301/125000000000"
              ],
              [
                "98/125",
                "-213318889/500000000"
              ],
              [
                "98/125",
                "-229130191/500000000"
              ],
              [
                "98/125",
                "-141646583543/250000000000"
              ],
              [
                "98/125",
                "-100076630417/250000000000"
              ],
              [
                "17597/50000",
                "-213318889/500000000"
              ],
              [
                "17597/50000",
                "-229130191/500000000"
              ],
              [
                "17597/50000",
                "-141646583543/250000000000"
              ],
              [
                "17597/50000",
                "-100076630417/250000000000"
              ],
              [
                "98/125",
                "-15761651763/50000000000"
              ],
              [
                "98/125",
                "-25219700597/50000000000"
              ],
              [
                "98/125",
                "-56897698929/125000000000"
              ],
              [
                "98/125",
                "-55805018951/125000000000"
              ],
              [
                "17597/50000",
                "-15761651763/50000000000"
              ],
              [
                "17597/50000",
                "-25219700597/50000000000"
              ],
              [
                "17597/50000",
                "-56897698929/125000000000"
              ],
              [
                "17597/50000",
                "-55805018951/125000000000"
              ]
            ],
            "raw": [
              "53632145867/196000000000",
              "434807/500000"
            ],
            "new": [
              "273633/1000000",
              "434807/500000"
            ]
          },
          {
            "factor": 1015,
            "target": "h",
            "old": [
              "32019/50000",
              "1/1"
            ],
            "lines": [
              [
                "214035129/500000000",
                "-2995445691/10000000000"
              ],
              [
                "134241129/500000000",
                "-1878719691/10000000000"
              ],
              [
                "387959451/500000000",
                "-5429536129/10000000000"
              ],
              [
                "308165451/500000000",
                "-4312810129/10000000000"
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
              "273633/1000000",
              "434807/500000"
            ],
            "lines": [
              [
                "214035129/500000000",
                "-6991604991/50000000000"
              ],
              [
                "134241129/500000000",
                "-4385078991/50000000000"
              ],
              [
                "387959451/500000000",
                "-12672962829/50000000000"
              ],
              [
                "308165451/500000000",
                "-10066436829/50000000000"
              ]
            ],
            "raw": [
              "11139/34100",
              "434807/500000"
            ],
            "new": [
              "5104/15625",
              "434807/500000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "201/500",
              "440737/500000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-2777153938940949/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-4424315853109031/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2972831169260949/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-4619993083429031/10000000000000000"
              ],
              [
                "6143/20000",
                "-806710988024577/5000000000000000"
              ],
              [
                "6143/20000",
                "-1264880203329963/5000000000000000"
              ],
              [
                "6143/20000",
                "-904549603184577/5000000000000000"
              ],
              [
                "6143/20000",
                "-1362718818489963/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2549661038344611/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-3609828534756609/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-3642289855624611/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-4702457352036609/10000000000000000"
              ],
              [
                "6143/20000",
                "-86620567215801/625000000000000"
              ],
              [
                "6143/20000",
                "-107204568019219/625000000000000"
              ],
              [
                "6143/20000",
                "-154909868295801/625000000000000"
              ],
              [
                "6143/20000",
                "-175493869099219/625000000000000"
              ]
            ],
            "raw": [
              "86620567215801/191968750000000",
              "440737/500000"
            ],
            "new": [
              "225611/500000",
              "440737/500000"
            ]
          },
          {
            "factor": 1748,
            "target": "g",
            "old": [
              "27/125",
              "32403/50000"
            ],
            "lines": [
              [
                "-54250185787/100000000000",
                "43564157154787737/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "48510464940108237/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "70922440767610003/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "78975029038199503/250000000000000000"
              ],
              [
                "-387637/500000",
                "8911609176242529/31250000000000000"
              ],
              [
                "-387637/500000",
                "19059795298815183/62500000000000000"
              ],
              [
                "-387637/500000",
                "14508098290539051/31250000000000000"
              ],
              [
                "-387637/500000",
                "31029343648725477/62500000000000000"
              ],
              [
                "-54250185787/100000000000",
                "-5056637411306073/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "-110329625985573/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "-8232204883762387/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "-179616613172887/250000000000000000"
              ],
              [
                "-387637/500000",
                "11336039421923211/125000000000000000"
              ],
              [
                "-387637/500000",
                "13809193314583461/125000000000000000"
              ],
              [
                "-387637/500000",
                "18455070336470009/125000000000000000"
              ],
              [
                "-387637/500000",
                "22481364471764759/125000000000000000"
              ]
            ],
            "raw": [
              "27/125",
              "31029343648725477/48454625000000000"
            ],
            "new": [
              "27/125",
              "32019/50000"
            ]
          },
          {
            "factor": 1930,
            "target": "z",
            "old": [
              "26921/125000",
              "339339/500000"
            ],
            "lines": [
              [
                "387637/500000",
                "-381811111/1953125000"
              ],
              [
                "387637/500000",
                "-47551326836863/125000000000000"
              ],
              [
                "387637/500000",
                "-16533407458457/62500000000000"
              ],
              [
                "387637/500000",
                "-56182230649777/125000000000000"
              ],
              [
                "387637/500000",
                "-48263885443363/125000000000000"
              ],
              [
                "387637/500000",
                "-16005662636957/62500000000000"
              ],
              [
                "387637/500000",
                "-55839299613277/125000000000000"
              ],
              [
                "387637/500000",
                "-6278400699523343/25000000000000000"
              ],
              [
                "387637/500000",
                "-5700308944489927/12500000000000000"
              ],
              [
                "387637/500000",
                "-12791836367703197/25000000000000000"
              ],
              [
                "387637/500000",
                "-6420912420823343/25000000000000000"
              ],
              [
                "387637/500000",
                "-5594759980189927/12500000000000000"
              ],
              [
                "387637/500000",
                "-12723250160403197/25000000000000000"
              ],
              [
                "387637/500000",
                "-98573179502051/250000000000000"
              ],
              [
                "387637/500000",
                "-30496426997839/125000000000000"
              ],
              [
                "387637/500000",
                "-110694211289729/250000000000000"
              ],
              [
                "387637/500000",
                "-99998296715051/250000000000000"
              ],
              [
                "387637/500000",
                "-29440937354839/125000000000000"
              ],
              [
                "387637/500000",
                "-110008349216729/250000000000000"
              ],
              [
                "387637/500000",
                "-6625453282355843/25000000000000000"
              ],
              [
                "387637/500000",
                "-5443270152582427/12500000000000000"
              ],
              [
                "387637/500000",
                "-12624811366720697/25000000000000000"
              ],
              [
                "387637/500000",
                "-6767965003655843/25000000000000000"
              ],
              [
                "387637/500000",
                "-5337721188282427/12500000000000000"
              ],
              [
                "387637/500000",
                "-12556225159420697/25000000000000000"
              ],
              [
                "387637/500000",
                "-15373898927/62500000000"
              ],
              [
                "387637/500000",
                "-53863213586863/125000000000000"
              ],
              [
                "387637/500000",
                "-19689350833457/62500000000000"
              ],
              [
                "387637/500000",
                "-62494117399777/125000000000000"
              ],
              [
                "387637/500000",
                "-54575772193363/125000000000000"
              ],
              [
                "387637/500000",
                "-19161606011957/62500000000000"
              ],
              [
                "387637/500000",
                "-62151186363277/125000000000000"
              ],
              [
                "387637/500000",
                "-7540778049523343/25000000000000000"
              ],
              [
                "387637/500000",
                "-6331497619489927/12500000000000000"
              ],
              [
                "387637/500000",
                "-14054213717703197/25000000000000000"
              ],
              [
                "387637/500000",
                "-7683289770823343/25000000000000000"
              ],
              [
                "387637/500000",
                "-6225948655189927/12500000000000000"
              ],
              [
                "387637/500000",
                "-13985627510403197/25000000000000000"
              ],
              [
                "387637/500000",
                "-111196953002051/250000000000000"
              ],
              [
                "387637/500000",
                "-36808313747839/125000000000000"
              ],
              [
                "387637/500000",
                "-123317984789729/250000000000000"
              ],
              [
                "387637/500000",
                "-112622070215051/250000000000000"
              ],
              [
                "387637/500000",
                "-35752824104839/125000000000000"
              ],
              [
                "387637/500000",
                "-122632122716729/250000000000000"
              ],
              [
                "387637/500000",
                "-7887830632355843/25000000000000000"
              ],
              [
                "387637/500000",
                "-6074458827582427/12500000000000000"
              ],
              [
                "387637/500000",
                "-13887188716720697/25000000000000000"
              ],
              [
                "387637/500000",
                "-8030342353655843/25000000000000000"
              ],
              [
                "387637/500000",
                "-5968909863282427/12500000000000000"
              ],
              [
                "387637/500000",
                "-13818602509420697/25000000000000000"
              ]
            ],
            "raw": [
              "1527244444/6056828125",
              "339339/500000"
            ],
            "new": [
              "31519/125000",
              "339339/500000"
            ]
          },
          {
            "factor": 1938,
            "target": "z",
            "old": [
              "31519/125000",
              "339339/500000"
            ],
            "lines": [
              [
                "77915037/250000000",
                "-100411553019/976562500000"
              ],
              [
                "77915037/250000000",
                "-37321414893093/250000000000000"
              ],
              [
                "77915037/250000000",
                "-97517207019/976562500000"
              ],
              [
                "77915037/250000000",
                "-38005579530093/250000000000000"
              ],
              [
                "77915037/250000000",
                "-8302460182647/48828125000000"
              ],
              [
                "77915037/250000000",
                "-2180600677688907/25000000000000000"
              ],
              [
                "77915037/250000000",
                "-8157742882647/48828125000000"
              ],
              [
                "77915037/250000000",
                "-2249017141388907/25000000000000000"
              ],
              [
                "3030933703/5000000000",
                "-3317761978069/19531250000000"
              ],
              [
                "3030933703/5000000000",
                "-1590883167412741/5000000000000000"
              ],
              [
                "3030933703/5000000000",
                "-3259875058069/19531250000000"
              ],
              [
                "3030933703/5000000000",
                "-1604566460152741/5000000000000000"
              ],
              [
                "3030933703/5000000000",
                "-23152574953739/97656250000000"
              ],
              [
                "3030933703/5000000000",
                "-400179689090207/1562500000000000"
              ],
              [
                "3030933703/5000000000",
                "-22863140353739/97656250000000"
              ],
              [
                "3030933703/5000000000",
                "-404455718071457/1562500000000000"
              ],
              [
                "77915037/250000000",
                "-11720864834733/62500000000000"
              ],
              [
                "77915037/250000000",
                "-58499516659161/250000000000000"
              ],
              [
                "77915037/250000000",
                "-11043299524233/62500000000000"
              ],
              [
                "77915037/250000000",
                "-57214372630161/250000000000000"
              ],
              [
                "77915037/250000000",
                "-5417322834465969/12500000000000000"
              ],
              [
                "77915037/250000000",
                "-8764386733105581/25000000000000000"
              ],
              [
                "77915037/250000000",
                "-5281809772365969/12500000000000000"
              ],
              [
                "77915037/250000000",
                "-8635872330205581/25000000000000000"
              ],
              [
                "3030933703/5000000000",
                "-79556818856689/312500000000000"
              ],
              [
                "3030933703/5000000000",
                "-2014445202734101/5000000000000000"
              ],
              [
                "3030933703/5000000000",
                "-76168992304189/312500000000000"
              ],
              [
                "3030933703/5000000000",
                "-1988742322154101/5000000000000000"
              ],
              [
                "3030933703/5000000000",
                "-6255422621786929/12500000000000000"
              ],
              [
                "3030933703/5000000000",
                "-6493330540429993/12500000000000000"
              ],
              [
                "3030933703/5000000000",
                "-6119909559686929/12500000000000000"
              ],
              [
                "3030933703/5000000000",
                "-6429073338979993/12500000000000000"
              ]
            ],
            "raw": [
              "1862785747468/6765477015625",
              "339339/500000"
            ],
            "new": [
              "34417/125000",
              "339339/500000"
            ]
          },
          {
            "factor": 2082,
            "target": "g",
            "old": [
              "27/125",
              "32019/50000"
            ],
            "lines": [
              [
                "-223816564519/500000000000",
                "34194034277319/250000000000000"
              ],
              [
                "-17876655529/125000000000",
                "2731142680329/62500000000000"
              ],
              [
                "-5315666181/7812500000",
                "812111793381/3906250000000"
              ],
              [
                "-187892693181/500000000000",
                "28705691220381/250000000000000"
              ],
              [
                "-223816564519/500000000000",
                "1330164945345061/5000000000000000"
              ],
              [
                "-17876655529/125000000000",
                "106242809042251/1250000000000000"
              ],
              [
                "-5315666181/7812500000",
                "31591552798239/78125000000000"
              ],
              [
                "-187892693181/500000000000",
                "1116665669911239/5000000000000000"
              ]
            ],
            "raw": [
              "27/125",
              "2303766703/3876370000"
            ],
            "new": [
              "27/125",
              "594311/1000000"
            ]
          },
          {
            "factor": 2338,
            "target": "g",
            "old": [
              "27/125",
              "594311/1000000"
            ],
            "lines": [
              [
                "-2659069/5000000",
                "2948333535927/20000000000000"
              ],
              [
                "-2659069/5000000",
                "3151374446727/20000000000000"
              ],
              [
                "-2659069/5000000",
                "4699350055413/20000000000000"
              ],
              [
                "-2659069/5000000",
                "4902390966213/20000000000000"
              ],
              [
                "-19/25",
                "50641211787/195312500000"
              ],
              [
                "-19/25",
                "53474805537/195312500000"
              ],
              [
                "-19/25",
                "40520410039/97656250000"
              ],
              [
                "-19/25",
                "20968603457/48828125000"
              ],
              [
                "-2659069/5000000",
                "-1855813672797/100000000000000"
              ],
              [
                "-2659069/5000000",
                "-840609118797/100000000000000"
              ],
              [
                "-2659069/5000000",
                "-3523946667143/100000000000000"
              ],
              [
                "-2659069/5000000",
                "-2508742113143/100000000000000"
              ],
              [
                "-19/25",
                "583176192657/6250000000000"
              ],
              [
                "-19/25",
                "673851192657/6250000000000"
              ],
              [
                "-19/25",
                "904512683483/6250000000000"
              ],
              [
                "-19/25",
                "995187683483/6250000000000"
              ]
            ],
            "raw": [
              "27/125",
              "20968603457/37109375000"
            ],
            "new": [
              "27/125",
              "565049/1000000"
            ]
          },
          {
            "factor": 2338,
            "target": "z",
            "old": [
              "34417/125000",
              "339339/500000"
            ],
            "lines": [
              [
                "-5143737/12500000",
                "14584537364691/100000000000000"
              ],
              [
                "-5143737/12500000",
                "15599741918691/100000000000000"
              ],
              [
                "-8374003/12500000",
                "30454888117129/100000000000000"
              ],
              [
                "-8374003/12500000",
                "31470092671129/100000000000000"
              ],
              [
                "-5143737/12500000",
                "-3978370142929/100000000000000"
              ],
              [
                "-5143737/12500000",
                "-2963165588929/100000000000000"
              ],
              [
                "-8374003/12500000",
                "11891980609509/100000000000000"
              ],
              [
                "-8374003/12500000",
                "12907185163509/100000000000000"
              ],
              [
                "-5143737/12500000",
                "104211741/500000000"
              ],
              [
                "-5143737/12500000",
                "111465741/500000000"
              ],
              [
                "-8374003/12500000",
                "217611079/500000000"
              ],
              [
                "-8374003/12500000",
                "224865079/500000000"
              ],
              [
                "-5143737/12500000",
                "-28426879/500000000"
              ],
              [
                "-5143737/12500000",
                "-21172879/500000000"
              ],
              [
                "-8374003/12500000",
                "84972459/500000000"
              ],
              [
                "-8374003/12500000",
                "92226459/500000000"
              ]
            ],
            "raw": [
              "34417/125000",
              "224865079/334960120"
            ],
            "new": [
              "34417/125000",
              "671319/1000000"
            ]
          },
          {
            "factor": 3102,
            "target": "v",
            "old": [
              "61307/500000",
              "42791/62500"
            ],
            "lines": [
              [
                "15768928287/50000000000",
                "-341230368843/7812500000000"
              ],
              [
                "9890146287/50000000000",
                "-214016970843/7812500000000"
              ],
              [
                "28582713453/50000000000",
                "-618513172017/7812500000000"
              ],
              [
                "22703931453/50000000000",
                "-491299774017/7812500000000"
              ],
              [
                "15768928287/50000000000",
                "-16581748971627/250000000000000"
              ],
              [
                "9890146287/50000000000",
                "-10399940949627/250000000000000"
              ],
              [
                "28582713453/50000000000",
                "-30056029856913/250000000000000"
              ],
              [
                "22703931453/50000000000",
                "-23874221834913/250000000000000"
              ]
            ],
            "raw": [
              "2174588/15701875",
              "42791/62500"
            ],
            "new": [
              "34623/250000",
              "42791/62500"
            ]
          },
          {
            "factor": 3384,
            "target": "y",
            "old": [
              "5104/15625",
              "434807/500000"
            ],
            "lines": [
              [
                "87677618049/250000000000",
                "-6946412823/50000000000"
              ],
              [
                "54990704049/250000000000",
                "-4356734823/50000000000"
              ],
              [
                "158924194931/250000000000",
                "-12591047637/50000000000"
              ],
              [
                "126237280931/250000000000",
                "-10001369637/50000000000"
              ],
              [
                "87677618049/250000000000",
                "-76021386273/500000000000"
              ],
              [
                "54990704049/250000000000",
                "-47680008273/500000000000"
              ],
              [
                "158924194931/250000000000",
                "-137796143187/500000000000"
              ],
              [
                "126237280931/250000000000",
                "-109454765187/500000000000"
              ]
            ],
            "raw": [
              "166005/419063",
              "434807/500000"
            ],
            "new": [
              "396133/1000000",
              "434807/500000"
            ]
          },
          {
            "factor": 3452,
            "target": "v",
            "old": [
              "34623/250000",
              "42791/62500"
            ],
            "lines": [
              [
                "87677618049/250000000000",
                "-3054865023/50000000000"
              ],
              [
                "54990704049/250000000000",
                "-1915987023/50000000000"
              ],
              [
                "158924194931/250000000000",
                "-5537239437/50000000000"
              ],
              [
                "126237280931/250000000000",
                "-4398361437/50000000000"
              ],
              [
                "87677618049/250000000000",
                "-37105908273/500000000000"
              ],
              [
                "54990704049/250000000000",
                "-23272530273/500000000000"
              ],
              [
                "158924194931/250000000000",
                "-67258061187/500000000000"
              ],
              [
                "126237280931/250000000000",
                "-53424683187/500000000000"
              ]
            ],
            "raw": [
              "73005/419063",
              "42791/62500"
            ],
            "new": [
              "17421/100000",
              "42791/62500"
            ]
          },
          {
            "factor": 3486,
            "target": "v",
            "old": [
              "17421/100000",
              "42791/62500"
            ],
            "lines": [
              [
                "-367518251/500000000",
                "10556629251801/25000000000000"
              ],
              [
                "-367518251/500000000",
                "11576458230801/25000000000000"
              ],
              [
                "-367518251/500000000",
                "118906855227151/250000000000000"
              ],
              [
                "-367518251/500000000",
                "121112531856151/250000000000000"
              ],
              [
                "-302144423/500000000",
                "9313692153801/25000000000000"
              ],
              [
                "-302144423/500000000",
                "10333521132801/25000000000000"
              ],
              [
                "-302144423/500000000",
                "99128891229151/250000000000000"
              ],
              [
                "-302144423/500000000",
                "101334567858151/250000000000000"
              ],
              [
                "-367518251/500000000",
                "6680121333467/25000000000000"
              ],
              [
                "-367518251/500000000",
                "7699950312467/25000000000000"
              ],
              [
                "-367518251/500000000",
                "110522779961917/250000000000000"
              ],
              [
                "-367518251/500000000",
                "112728456590917/250000000000000"
              ],
              [
                "-302144423/500000000",
                "5437184235467/25000000000000"
              ],
              [
                "-302144423/500000000",
                "6457013214467/25000000000000"
              ],
              [
                "-302144423/500000000",
                "90744815963917/250000000000000"
              ],
              [
                "-302144423/500000000",
                "92950492592917/250000000000000"
              ]
            ],
            "raw": [
              "17421/100000",
              "10333521132801/15107221150000"
            ],
            "new": [
              "17421/100000",
              "684013/1000000"
            ]
          },
          {
            "factor": 0,
            "target": "a",
            "old": [
              "1912/15625",
              "515287/1000000"
            ],
            "lines": [
              [
                "209223/500000",
                "-93/1000"
              ],
              [
                "131223/500000",
                "-93/1000"
              ],
              [
                "379237/500000",
                "-93/1000"
              ],
              [
                "301237/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/379237",
              "515287/1000000"
            ],
            "new": [
              "61307/500000",
              "515287/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "1912/15625",
              "352193/500000"
            ],
            "lines": [
              [
                "209223/500000",
                "-93/1000"
              ],
              [
                "131223/500000",
                "-93/1000"
              ],
              [
                "379237/500000",
                "-93/1000"
              ],
              [
                "301237/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/379237",
              "352193/500000"
            ],
            "new": [
              "61307/500000",
              "352193/500000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "270723/500000",
              "440737/500000"
            ],
            "lines": [
              [
                "-223693/500000",
                "177193/500000"
              ],
              [
                "67193/500000",
                "-113693/500000"
              ],
              [
                "-392193/500000",
                "345693/500000"
              ],
              [
                "-101307/500000",
                "54807/500000"
              ]
            ],
            "raw": [
              "270723/500000",
              "115231/130731"
            ],
            "new": [
              "270723/500000",
              "220359/250000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "61307/500000",
              "352193/500000"
            ],
            "lines": [
              [
                "-229277/500000",
                "8418789/50000000"
              ],
              [
                "-29641/250000",
                "-635463/25000000"
              ],
              [
                "-229277/500000",
                "161454239/500000000"
              ],
              [
                "-29641/250000",
                "3634387/250000000"
              ]
            ],
            "raw": [
              "61307/500000",
              "161454239/229277000"
            ],
            "new": [
              "61307/500000",
              "704189/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "565049/1000000"
            ],
            "lines": [
              [
                "-139951/200000",
                "68399984937/500000000000"
              ],
              [
                "-139951/200000",
                "70274546421/250000000000"
              ],
              [
                "-1/1",
                "18710401509/62500000000"
              ],
              [
                "-1/1",
                "17054529297/31250000000"
              ],
              [
                "-139951/200000",
                "-9700430193/125000000000"
              ],
              [
                "-139951/200000",
                "-4245967869/62500000000"
              ],
              [
                "-1/1",
                "42481506363/500000000000"
              ],
              [
                "-1/1",
                "49177816479/250000000000"
              ]
            ],
            "raw": [
              "27/125",
              "17054529297/31250000000"
            ],
            "new": [
              "27/125",
              "109149/200000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "34417/125000",
              "671319/1000000"
            ],
            "lines": [
              [
                "-270723/500000",
                "13473246573/100000000000"
              ],
              [
                "-220359/250000",
                "18632108409/50000000000"
              ],
              [
                "-270723/500000",
                "-19201649349/200000000000"
              ],
              [
                "-220359/250000",
                "28380291141/200000000000"
              ],
              [
                "-270723/500000",
                "116223/500000"
              ],
              [
                "-220359/250000",
                "143109/250000"
              ],
              [
                "-270723/500000",
                "-97299/1000000"
              ],
              [
                "-220359/250000",
                "242691/1000000"
              ]
            ],
            "raw": [
              "34417/125000",
              "47703/73453"
            ],
            "new": [
              "34417/125000",
              "162359/250000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "396133/1000000",
              "434807/500000"
            ],
            "lines": [
              [
                "-877/1000",
                "33093/50000"
              ],
              [
                "-877/1000",
                "755883/1000000"
              ],
              [
                "-721/1000",
                "28647/50000"
              ],
              [
                "-721/1000",
                "614391/1000000"
              ],
              [
                "-877/1000",
                "498503/1000000"
              ],
              [
                "-877/1000",
                "7205523/10000000"
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
              "396133/1000000",
              "755883/877000"
            ],
            "new": [
              "396133/1000000",
              "861897/1000000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "201/500",
              "7819/10000"
            ],
            "lines": [
              [
                "-57/100",
                "105636295841/500000000000"
              ],
              [
                "-57/100",
                "67596408253/250000000000"
              ],
              [
                "-907/1000",
                "196869946841/500000000000"
              ],
              [
                "-907/1000",
                "141857391253/250000000000"
              ],
              [
                "-57/100",
                "212425268469/500000000000"
              ],
              [
                "-57/100",
                "81402118977/250000000000"
              ],
              [
                "-907/1000",
                "303658919469/500000000000"
              ],
              [
                "-907/1000",
                "155663101977/250000000000"
              ]
            ],
            "raw": [
              "201/500",
              "70808422823/95000000000"
            ],
            "new": [
              "201/500",
              "93169/125000"
            ]
          },
          {
            "factor": 110,
            "target": "u",
            "old": [
              "225611/500000",
              "440737/500000"
            ],
            "lines": [
              [
                "-223693/500000",
                "177193/500000"
              ],
              [
                "134189/1000000",
                "-227189/1000000"
              ],
              [
                "-392193/500000",
                "345693/500000"
              ],
              [
                "-202811/1000000",
                "109811/1000000"
              ]
            ],
            "raw": [
              "225611/500000",
              "115231/130731"
            ],
            "new": [
              "225611/500000",
              "220359/250000"
            ]
          },
          {
            "factor": 112,
            "target": "v",
            "old": [
              "17421/100000",
              "684013/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "22734727/50000000"
              ],
              [
                "-877/1000",
                "282652677/500000000"
              ],
              [
                "-721/1000",
                "18288727/50000000"
              ],
              [
                "-721/1000",
                "211906677/500000000"
              ],
              [
                "-877/1000",
                "6742563/25000000"
              ],
              [
                "-877/1000",
                "131323863/250000000"
              ],
              [
                "-721/1000",
                "4519563/25000000"
              ],
              [
                "-721/1000",
                "95950863/250000000"
              ]
            ],
            "raw": [
              "17421/100000",
              "282652677/438500000"
            ],
            "new": [
              "17421/100000",
              "64459/100000"
            ]
          },
          {
            "factor": 132,
            "target": "z",
            "old": [
              "34417/125000",
              "162359/250000"
            ],
            "lines": [
              [
                "201/500",
                "-50342733/250000000"
              ],
              [
                "201/500",
                "-27440811/100000000"
              ],
              [
                "201/500",
                "-58312490931/200000000000"
              ],
              [
                "201/500",
                "-23511767427/100000000000"
              ],
              [
                "93169/125000",
                "-15216918383/62500000000"
              ],
              [
                "93169/125000",
                "-56416616503/125000000000"
              ],
              [
                "93169/125000",
                "-333662216783/1000000000000"
              ],
              [
                "93169/125000",
                "-206021248147/500000000000"
              ],
              [
                "201/500",
                "-75493989/250000000"
              ],
              [
                "201/500",
                "-187506567/500000000"
              ],
              [
                "201/500",
                "-109150165767/200000000000"
              ],
              [
                "201/500",
                "-9786120969/20000000000"
              ],
              [
                "93169/125000",
                "-21504732383/62500000000"
              ],
              [
                "93169/125000",
                "-68992244503/125000000000"
              ],
              [
                "93169/125000",
                "-587850590963/1000000000000"
              ],
              [
                "93169/125000",
                "-333115435237/500000000000"
              ]
            ],
            "raw": [
              "15216918383/46584500000",
              "162359/250000"
            ],
            "new": [
              "326651/1000000",
              "162359/250000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "17421/100000",
              "64459/100000"
            ],
            "lines": [
              [
                "-98/125",
                "57550196393/500000000000"
              ],
              [
                "-98/125",
                "62974906859/250000000000"
              ],
              [
                "-90851/200000",
                "18667259839/250000000000"
              ],
              [
                "-90851/200000",
                "19696825631/1000000000000"
              ],
              [
                "-98/125",
                "73059424879/250000000000"
              ],
              [
                "-98/125",
                "214518467083/500000000000"
              ],
              [
                "-90851/200000",
                "125903173043/500000000000"
              ],
              [
                "-90851/200000",
                "196834132361/1000000000000"
              ],
              [
                "-98/125",
                "6830204717/250000000000"
              ],
              [
                "-98/125",
                "51790220071/125000000000"
              ],
              [
                "-90851/200000",
                "-6555267281/500000000000"
              ],
              [
                "-90851/200000",
                "182118958763/1000000000000"
              ],
              [
                "-98/125",
                "8198937451/125000000000"
              ],
              [
                "-98/125",
                "113148110327/250000000000"
              ],
              [
                "-90851/200000",
                "12580073089/500000000000"
              ],
              [
                "-90851/200000",
                "220389639503/1000000000000"
              ]
            ],
            "raw": [
              "17421/100000",
              "16164015761/28000000000"
            ],
            "new": [
              "17421/100000",
              "577287/1000000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "225611/500000",
              "220359/250000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-551253974062821/2000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-434936707108593/1000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-606857625022821/2000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-462738532588593/1000000000000000"
              ],
              [
                "6143/20000",
                "-159253790742231/1000000000000000"
              ],
              [
                "6143/20000",
                "-122744664909123/500000000000000"
              ],
              [
                "6143/20000",
                "-187055616222231/1000000000000000"
              ],
              [
                "6143/20000",
                "-136645577649123/500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-324139982990019/1250000000000000"
              ],
              [
                "2088321533/4000000000",
                "-58832689114563/156250000000000"
              ],
              [
                "2088321533/4000000000",
                "-439300080185019/1250000000000000"
              ],
              [
                "2088321533/4000000000",
                "-36613850631969/78125000000000"
              ],
              [
                "6143/20000",
                "-1429387901028357/10000000000000000"
              ],
              [
                "6143/20000",
                "-935409165214281/5000000000000000"
              ],
              [
                "6143/20000",
                "-2350668678588357/10000000000000000"
              ],
              [
                "6143/20000",
                "-1396049553994281/5000000000000000"
              ]
            ],
            "raw": [
              "1429387901028357/3071500000000000",
              "220359/250000"
            ],
            "new": [
              "465371/1000000",
              "220359/250000"
            ]
          },
          {
            "factor": 1748,
            "target": "g",
            "old": [
              "27/125",
              "109149/200000"
            ],
            "lines": [
              [
                "-54250185787/100000000000",
                "7972241343958701/62500000000000000"
              ],
              [
                "-54250185787/100000000000",
                "1151005511273697/7812500000000000"
              ],
              [
                "-54250185787/100000000000",
                "6489124050462633/31250000000000000"
              ],
              [
                "-54250185787/100000000000",
                "936878002455501/3906250000000000"
              ],
              [
                "-387637/500000",
                "59617681630987299/250000000000000000"
              ],
              [
                "-387637/500000",
                "64560892615910799/250000000000000000"
              ],
              [
                "-387637/500000",
                "48526695945755367/125000000000000000"
              ],
              [
                "-387637/500000",
                "52550295822480867/125000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "-1984819291054731/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "2958391693868769/250000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "-1615573091896623/125000000000000000"
              ],
              [
                "-54250185787/100000000000",
                "2408026784828877/125000000000000000"
              ],
              [
                "-387637/500000",
                "6435974241024441/62500000000000000"
              ],
              [
                "-387637/500000",
                "1917944246813829/15625000000000000"
              ],
              [
                "-387637/500000",
                "5238656663002053/31250000000000000"
              ],
              [
                "-387637/500000",
                "1561139158045857/7812500000000000"
              ]
            ],
            "raw": [
              "27/125",
              "52550295822480867/96909250000000000"
            ],
            "new": [
              "27/125",
              "542263/1000000"
            ]
          },
          {
            "factor": 2338,
            "target": "g",
            "old": [
              "27/125",
              "542263/1000000"
            ],
            "lines": [
              [
                "-2659069/5000000",
                "2526012153279/20000000000000"
              ],
              [
                "-2659069/5000000",
                "2729053064079/20000000000000"
              ],
              [
                "-2659069/5000000",
                "2005822433457/10000000000000"
              ],
              [
                "-2659069/5000000",
                "2107342888857/10000000000000"
              ],
              [
                "-19/25",
                "2977086690213/12500000000000"
              ],
              [
                "-19/25",
                "3158436690213/12500000000000"
              ],
              [
                "-19/25",
                "2378350808529/6250000000000"
              ],
              [
                "-19/25",
                "2469025808529/6250000000000"
              ],
              [
                "-2659069/5000000",
                "-130501682793/20000000000000"
              ],
              [
                "-2659069/5000000",
                "72539228007/20000000000000"
              ],
              [
                "-2659069/5000000",
                "-156486392919/10000000000000"
              ],
              [
                "-2659069/5000000",
                "-54965937519/10000000000000"
              ],
              [
                "-19/25",
                "329191385667/3125000000000"
              ],
              [
                "-19/25",
                "374528885667/3125000000000"
              ],
              [
                "-19/25",
                "256726948011/1562500000000"
              ],
              [
                "-19/25",
                "279395698011/1562500000000"
              ]
            ],
            "raw": [
              "27/125",
              "2469025808529/4750000000000"
            ],
            "new": [
              "27/125",
              "103959/200000"
            ]
          },
          {
            "factor": 3474,
            "target": "u",
            "old": [
              "465371/1000000",
              "220359/250000"
            ],
            "lines": [
              [
                "-17934591/50000000",
                "5616727946275371/25000000000000000"
              ],
              [
                "-17934591/50000000",
                "3918798850372743/12500000000000000"
              ],
              [
                "-257888141/500000000",
                "7743046786576671/25000000000000000"
              ],
              [
                "-257888141/500000000",
                "5649547598465643/12500000000000000"
              ],
              [
                "-17934591/50000000",
                "5679913913275371/25000000000000000"
              ],
              [
                "-17934591/50000000",
                "3950391833872743/12500000000000000"
              ],
              [
                "-257888141/500000000",
                "7806232753576671/25000000000000000"
              ],
              [
                "-257888141/500000000",
                "5681140581965643/12500000000000000"
              ],
              [
                "-17934591/50000000",
                "73784612638934937/250000000000000000"
              ],
              [
                "-17934591/50000000",
                "38418676500521421/125000000000000000"
              ],
              [
                "-257888141/500000000",
                "95047801041947937/250000000000000000"
              ],
              [
                "-257888141/500000000",
                "55726163981450421/125000000000000000"
              ],
              [
                "-17934591/50000000",
                "75878432587934937/250000000000000000"
              ],
              [
                "-17934591/50000000",
                "39465586475021421/125000000000000000"
              ],
              [
                "-257888141/500000000",
                "97141620990947937/250000000000000000"
              ],
              [
                "-257888141/500000000",
                "56773073955950421/125000000000000000"
              ]
            ],
            "raw": [
              "465371/1000000",
              "5681140581965643/6447203525000000"
            ],
            "new": [
              "465371/1000000",
              "44059/50000"
            ]
          },
          {
            "factor": 3684,
            "target": "u",
            "old": [
              "465371/1000000",
              "44059/50000"
            ],
            "lines": [
              [
                "-78871761/200000000",
                "12545004609173379/50000000000000000"
              ],
              [
                "-78871761/200000000",
                "8631339518186007/25000000000000000"
              ],
              [
                "-147259831/250000000",
                "17815454023697079/50000000000000000"
              ],
              [
                "-147259831/250000000",
                "12921299966818107/25000000000000000"
              ],
              [
                "-42228159/100000000",
                "13300938621528879/50000000000000000"
              ],
              [
                "-42228159/100000000",
                "9246643216167507/25000000000000000"
              ],
              [
                "-616962109/1000000000",
                "18571388036052579/50000000000000000"
              ],
              [
                "-616962109/1000000000",
                "13536603664799607/25000000000000000"
              ],
              [
                "-78871761/200000000",
                "168689366750184813/500000000000000000"
              ],
              [
                "-78871761/200000000",
                "84954958525930329/250000000000000000"
              ],
              [
                "-147259831/250000000",
                "221393860895421813/500000000000000000"
              ],
              [
                "-147259831/250000000",
                "127854563012251329/250000000000000000"
              ],
              [
                "-42228159/100000000",
                "176248706873739813/500000000000000000"
              ],
              [
                "-42228159/100000000",
                "91107995505745329/250000000000000000"
              ],
              [
                "-616962109/1000000000",
                "228953201018976813/500000000000000000"
              ],
              [
                "-616962109/1000000000",
                "134007599992066329/250000000000000000"
              ]
            ],
            "raw": [
              "465371/1000000",
              "13536603664799607/15424052725000000"
            ],
            "new": [
              "465371/1000000",
              "87763/100000"
            ]
          },
          {
            "factor": 0,
            "target": "a",
            "old": [
              "61307/500000",
              "515287/1000000"
            ],
            "lines": [
              [
                "209223/500000",
                "-93/1000"
              ],
              [
                "131223/500000",
                "-93/1000"
              ],
              [
                "189609/250000",
                "-93/1000"
              ],
              [
                "150609/250000",
                "-93/1000"
              ]
            ],
            "raw": [
              "7750/63203",
              "515287/1000000"
            ],
            "new": [
              "6131/50000",
              "515287/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "61307/500000",
              "704189/1000000"
            ],
            "lines": [
              [
                "209223/500000",
                "-93/1000"
              ],
              [
                "131223/500000",
                "-93/1000"
              ],
              [
                "189609/250000",
                "-93/1000"
              ],
              [
                "150609/250000",
                "-93/1000"
              ]
            ],
            "raw": [
              "7750/63203",
              "704189/1000000"
            ],
            "new": [
              "6131/50000",
              "704189/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "103959/200000"
            ],
            "lines": [
              [
                "-139951/200000",
                "3406739637/31250000000"
              ],
              [
                "-139951/200000",
                "3685426521/15625000000"
              ],
              [
                "-1/1",
                "135791061327/500000000000"
              ],
              [
                "-1/1",
                "125128512291/250000000000"
              ],
              [
                "-139951/200000",
                "-32877489363/500000000000"
              ],
              [
                "-139951/200000",
                "-12161755479/250000000000"
              ],
              [
                "-1/1",
                "12101434443/125000000000"
              ],
              [
                "-1/1",
                "13499983119/62500000000"
              ]
            ],
            "raw": [
              "27/125",
              "125128512291/250000000000"
            ],
            "new": [
              "27/125",
              "100103/200000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "465371/1000000",
              "87763/100000"
            ],
            "lines": [
              [
                "-57/100",
                "14775445617/50000000000"
              ],
              [
                "-57/100",
                "10751838861/25000000000"
              ],
              [
                "-907/1000",
                "23898810717/50000000000"
              ],
              [
                "-907/1000",
                "18177937161/25000000000"
              ],
              [
                "-57/100",
                "240170741499/500000000000"
              ],
              [
                "-57/100",
                "119465993967/250000000000"
              ],
              [
                "-907/1000",
                "331404392499/500000000000"
              ],
              [
                "-907/1000",
                "193726976967/250000000000"
              ]
            ],
            "raw": [
              "465371/1000000",
              "193726976967/226750000000"
            ],
            "new": [
              "465371/1000000",
              "213591/250000"
            ]
          },
          {
            "factor": 132,
            "target": "z",
            "old": [
              "326651/1000000",
              "162359/250000"
            ],
            "lines": [
              [
                "201/500",
                "-12585753/62500000"
              ],
              [
                "201/500",
                "-27440811/100000000"
              ],
              [
                "201/500",
                "-55838119839/200000000000"
              ],
              [
                "201/500",
                "-24050700969/100000000000"
              ],
              [
                "93169/125000",
                "-1521711689/6250000000"
              ],
              [
                "93169/125000",
                "-56416616503/125000000000"
              ],
              [
                "93169/125000",
                "-64258484287/200000000000"
              ],
              [
                "93169/125000",
                "-208715915857/500000000000"
              ],
              [
                "201/500",
                "-18873567/62500000"
              ],
              [
                "201/500",
                "-187506567/500000000"
              ],
              [
                "201/500",
                "-102462493531/200000000000"
              ],
              [
                "201/500",
                "-9472577563/20000000000"
              ],
              [
                "93169/125000",
                "-2150493089/6250000000"
              ],
              [
                "93169/125000",
                "-68992244503/125000000000"
              ],
              [
                "93169/125000",
                "-110882857979/200000000000"
              ],
              [
                "93169/125000",
                "-325276850087/500000000000"
              ]
            ],
            "raw": [
              "1521711689/4658450000",
              "162359/250000"
            ],
            "new": [
              "5104/15625",
              "162359/250000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "17421/100000",
              "577287/1000000"
            ],
            "lines": [
              [
                "-98/125",
                "28054410661/250000000000"
              ],
              [
                "-98/125",
                "257244085743/1000000000000"
              ],
              [
                "-99897/200000",
                "2416575417/31250000000"
              ],
              [
                "-99897/200000",
                "7111469051/125000000000"
              ],
              [
                "-98/125",
                "8899537227/31250000000"
              ],
              [
                "-98/125",
                "429811634363/1000000000000"
              ],
              [
                "-99897/200000",
                "62474490491/250000000000"
              ],
              [
                "-99897/200000",
                "57364825257/250000000000"
              ],
              [
                "-98/125",
                "2053066681/62500000000"
              ],
              [
                "-98/125",
                "101025445003/250000000000"
              ],
              [
                "-99897/200000",
                "-509540601/250000000000"
              ],
              [
                "-99897/200000",
                "203749446677/1000000000000"
              ],
              [
                "-98/125",
                "623886367/7812500000"
              ],
              [
                "-98/125",
                "112777542023/250000000000"
              ],
              [
                "-99897/200000",
                "11242556419/250000000000"
              ],
              [
                "-99897/200000",
                "250757834757/1000000000000"
              ]
            ],
            "raw": [
              "17421/100000",
              "112777542023/196000000000"
            ],
            "new": [
              "17421/100000",
              "143849/250000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "465371/1000000",
              "213591/250000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-551253974062821/2000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-434936707108593/1000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-606857625022821/2000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-462738532588593/1000000000000000"
              ],
              [
                "6143/20000",
                "-159253790742231/1000000000000000"
              ],
              [
                "6143/20000",
                "-122744664909123/500000000000000"
              ],
              [
                "6143/20000",
                "-187055616222231/1000000000000000"
              ],
              [
                "6143/20000",
                "-136645577649123/500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2593885267706751/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-1884016119623283/5000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-3512148236186751/10000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-2343147603863283/5000000000000000"
              ],
              [
                "6143/20000",
                "-357538326203739/2500000000000000"
              ],
              [
                "6143/20000",
                "-234194808292887/1250000000000000"
              ],
              [
                "6143/20000",
                "-587104068323739/2500000000000000"
              ],
              [
                "6143/20000",
                "-348977679352887/1250000000000000"
              ]
            ],
            "raw": [
              "357538326203739/767875000000000",
              "213591/250000"
            ],
            "new": [
              "23281/50000",
              "213591/250000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "100103/200000"
            ],
            "lines": [
              [
                "-139951/200000",
                "54506480577/500000000000"
              ],
              [
                "-139951/200000",
                "58965722541/250000000000"
              ],
              [
                "-1/1",
                "2121714183/7812500000"
              ],
              [
                "-1/1",
                "1955115789/3906250000"
              ],
              [
                "-139951/200000",
                "-32877489363/500000000000"
              ],
              [
                "-139951/200000",
                "-12161755479/250000000000"
              ],
              [
                "-1/1",
                "12101434443/125000000000"
              ],
              [
                "-1/1",
                "13499983119/62500000000"
              ]
            ],
            "raw": [
              "27/125",
              "1955115789/3906250000"
            ],
            "new": [
              "27/125",
              "50051/100000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "23281/50000",
              "213591/250000"
            ],
            "lines": [
              [
                "-57/100",
                "14775445617/50000000000"
              ],
              [
                "-57/100",
                "10751838861/25000000000"
              ],
              [
                "-907/1000",
                "23898810717/50000000000"
              ],
              [
                "-907/1000",
                "18177937161/25000000000"
              ],
              [
                "-57/100",
                "59934294673/125000000000"
              ],
              [
                "-57/100",
                "29852485709/62500000000"
              ],
              [
                "-907/1000",
                "82742707423/125000000000"
              ],
              [
                "-907/1000",
                "48417731459/62500000000"
              ]
            ],
            "raw": [
              "23281/50000",
              "48417731459/56687500000"
            ],
            "new": [
              "23281/50000",
              "854117/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "17421/100000",
              "143849/250000"
            ],
            "lines": [
              [
                "-98/125",
                "1402085471/12500000000"
              ],
              [
                "-98/125",
                "12866904573/50000000000"
              ],
              [
                "-49949/100000",
                "1932005537/25000000000"
              ],
              [
                "-49949/100000",
                "5698927907/100000000000"
              ],
              [
                "-98/125",
                "444771897/1562500000"
              ],
              [
                "-98/125",
                "21491263393/50000000000"
              ],
              [
                "-49949/100000",
                "6244184947/25000000000"
              ],
              [
                "-49949/100000",
                "22947645547/100000000000"
              ],
              [
                "-98/125",
                "8224865947/250000000000"
              ],
              [
                "-98/125",
                "404008529361/1000000000000"
              ],
              [
                "-49949/100000",
                "-496788103/250000000000"
              ],
              [
                "-49949/100000",
                "203659716971/1000000000000"
              ],
              [
                "-98/125",
                "2499611829/31250000000"
              ],
              [
                "-98/125",
                "451096644101/1000000000000"
              ],
              [
                "-49949/100000",
                "5637620291/125000000000"
              ],
              [
                "-49949/100000",
                "250747831711/1000000000000"
              ]
            ],
            "raw": [
              "17421/100000",
              "451096644101/784000000000"
            ],
            "new": [
              "17421/100000",
              "575379/1000000"
            ]
          },
          {
            "factor": 1540,
            "target": "u",
            "old": [
              "23281/50000",
              "854117/1000000"
            ],
            "lines": [
              [
                "2088321533/4000000000",
                "-551253974062821/2000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-434936707108593/1000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-606857625022821/2000000000000000"
              ],
              [
                "2088321533/4000000000",
                "-462738532588593/1000000000000000"
              ],
              [
                "6143/20000",
                "-159253790742231/1000000000000000"
              ],
              [
                "6143/20000",
                "-122744664909123/500000000000000"
              ],
              [
                "6143/20000",
                "-187055616222231/1000000000000000"
              ],
              [
                "6143/20000",
                "-136645577649123/500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-648473037162591/2500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-471007109117253/1250000000000000"
              ],
              [
                "2088321533/4000000000",
                "-878031996792591/2500000000000000"
              ],
              [
                "2088321533/4000000000",
                "-585786588932253/1250000000000000"
              ],
              [
                "6143/20000",
                "-1430160185758569/10000000000000000"
              ],
              [
                "6143/20000",
                "-936791550017277/5000000000000000"
              ],
              [
                "6143/20000",
                "-2348396024278569/10000000000000000"
              ],
              [
                "6143/20000",
                "-1395909469277277/5000000000000000"
              ]
            ],
            "raw": [
              "1430160185758569/3071500000000000",
              "854117/1000000"
            ],
            "new": [
              "232811/500000",
              "854117/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 1,
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "139951/200000",
          "5104/15625",
          "201/500",
          "396133/1000000",
          "232811/500000",
          "17421/100000"
        ],
        "high": [
          "515287/1000000",
          "279/1000",
          "220359/250000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "50051/100000",
          "1",
          "162359/250000",
          "93169/125000",
          "861897/1000000",
          "854117/1000000",
          "575379/1000000"
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
          "value": "419042261/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "11548813/25000000",
              "13771813/25000000",
              "30407411/50000000",
              "166243363/250000000",
              "348296261/500000000",
              "34853411/50000000",
              "201616363/250000000",
              "419042261/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEG": {
          "triangle": "CEG",
          "side": "hi",
          "value": "42534386369/62500000000",
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
              "1352522933/7812500000",
              "2920599491/15625000000",
              "7995545687/31250000000",
              "18382971869/62500000000",
              "40141874443/125000000000",
              "41866303443/125000000000",
              "10477926107/31250000000",
              "24014345249/62500000000",
              "6531690031/15625000000",
              "1650389109/3906250000",
              "27810558589/62500000000",
              "28518640619/62500000000",
              "60413211943/125000000000",
              "74122624693/125000000000",
              "20071252937/31250000000",
              "42534386369/62500000000"
            ],
            "cell": "CB"
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
              "29269213591/50000000000",
              "15524563/25000000",
              "62949967427/100000000000",
              "38358911/50000000",
              "81196697627/100000000000",
              "44121410191/50000000000",
              "229506613/250000000",
              "474822761/500000000"
            ],
            "cell": "CB"
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
        "5073": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-279/1000",
              "BCO": "419042261/500000000"
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
              "value": "419042261/500000000"
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
            "residual": "186542261/500000000"
          }
        },
        "5141": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCF": "-93/1000",
              "BCP": "419042261/500000000"
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
              "value": "419042261/500000000"
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
            "residual": "186542261/500000000"
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
              "419042261/500000000"
            ],
            [
              [
                1,
                10
              ],
              "-419042261/500000000"
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
              "419042261/500000000"
            ],
            [
              [
                1,
                12
              ],
              "-419042261/500000000"
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
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "139951/200000",
          "326663/1000000",
          "201/500",
          "396153/1000000",
          "232811/500000",
          "87109/500000"
        ],
        "high": [
          "515287/1000000",
          "279/1000",
          "220359/250000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "62563/125000",
          "1/1",
          "162359/250000",
          "186337/250000",
          "215473/250000",
          "170823/200000",
          "575379/1000000"
        ],
        "steps": [
          {
            "factor": 94,
            "target": "y",
            "old": [
              "396133/1000000",
              "861897/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "20683/31250"
              ],
              [
                "-877/1000",
                "755879/1000000"
              ],
              [
                "-721/1000",
                "71617/125000"
              ],
              [
                "-721/1000",
                "614387/1000000"
              ],
              [
                "-877/1000",
                "6427683/12500000"
              ],
              [
                "-877/1000",
                "2827919/3906250"
              ],
              [
                "-721/1000",
                "5316183/12500000"
              ],
              [
                "-721/1000",
                "18201727/31250000"
              ]
            ],
            "raw": [
              "396133/1000000",
              "755879/877000"
            ],
            "new": [
              "396133/1000000",
              "215473/250000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "201/500",
              "93169/125000"
            ],
            "lines": [
              [
                "-57/100",
                "105636295841/500000000000"
              ],
              [
                "-57/100",
                "67596408253/250000000000"
              ],
              [
                "-907/1000",
                "196869946841/500000000000"
              ],
              [
                "-907/1000",
                "141857391253/250000000000"
              ],
              [
                "-57/100",
                "53106030521/125000000000"
              ],
              [
                "-57/100",
                "20350492693/62500000000"
              ],
              [
                "-907/1000",
                "75914443271/125000000000"
              ],
              [
                "-907/1000",
                "38915738443/62500000000"
              ]
            ],
            "raw": [
              "201/500",
              "53106030521/71250000000"
            ],
            "new": [
              "201/500",
              "186337/250000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "232811/500000",
              "854117/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "14775445617/50000000000"
              ],
              [
                "-57/100",
                "10751838861/25000000000"
              ],
              [
                "-907/1000",
                "23898810717/50000000000"
              ],
              [
                "-907/1000",
                "18177937161/25000000000"
              ],
              [
                "-57/100",
                "239733280983/500000000000"
              ],
              [
                "-57/100",
                "119409438939/250000000000"
              ],
              [
                "-907/1000",
                "330966931983/500000000000"
              ],
              [
                "-907/1000",
                "193670421939/250000000000"
              ]
            ],
            "raw": [
              "232811/500000",
              "193670421939/226750000000"
            ],
            "new": [
              "232811/500000",
              "170823/200000"
            ]
          },
          {
            "factor": 132,
            "target": "z",
            "old": [
              "5104/15625",
              "162359/250000"
            ],
            "lines": [
              [
                "201/500",
                "-12585753/62500000"
              ],
              [
                "201/500",
                "-27440811/100000000"
              ],
              [
                "201/500",
                "-27918923163/100000000000"
              ],
              [
                "201/500",
                "-12025380273/50000000000"
              ],
              [
                "186337/250000",
                "-3043417247/12500000000"
              ],
              [
                "186337/250000",
                "-112832717719/250000000000"
              ],
              [
                "186337/250000",
                "-32129056339/100000000000"
              ],
              [
                "186337/250000",
                "-3261174737/7812500000"
              ],
              [
                "201/500",
                "-37746999/125000000"
              ],
              [
                "201/500",
                "-187506027/500000000"
              ],
              [
                "201/500",
                "-6403828359/12500000000"
              ],
              [
                "201/500",
                "-9472492851/20000000000"
              ],
              [
                "186337/250000",
                "-4300966547/12500000000"
              ],
              [
                "186337/250000",
                "-137983703719/250000000000"
              ],
              [
                "186337/250000",
                "-3465047503/6250000000"
              ],
              [
                "186337/250000",
                "-325273701713/500000000000"
              ]
            ],
            "raw": [
              "3043417247/9316850000",
              "162359/250000"
            ],
            "new": [
              "326657/1000000",
              "162359/250000"
            ]
          },
          {
            "factor": 3384,
            "target": "y",
            "old": [
              "396133/1000000",
              "215473/250000"
            ],
            "lines": [
              [
                "87673278973203/250000000000000",
                "-6946412823/50000000000"
              ],
              [
                "54987982615203/250000000000000",
                "-4356734823/50000000000"
              ],
              [
                "79454184065949/125000000000000",
                "-6295208409/25000000000"
              ],
              [
                "63111535886949/125000000000000",
                "-5000369409/25000000000"
              ],
              [
                "87673278973203/250000000000000",
                "-76021386273/500000000000"
              ],
              [
                "54987982615203/250000000000000",
                "-47680008273/500000000000"
              ],
              [
                "79454184065949/125000000000000",
                "-68894619759/250000000000"
              ],
              [
                "63111535886949/125000000000000",
                "-54723930759/250000000000"
              ]
            ],
            "raw": [
              "166005000/419042261",
              "215473/250000"
            ],
            "new": [
              "396153/1000000",
              "215473/250000"
            ]
          },
          {
            "factor": 3452,
            "target": "v",
            "old": [
              "17421/100000",
              "575379/1000000"
            ],
            "lines": [
              [
                "87673278973203/250000000000000",
                "-3054865023/50000000000"
              ],
              [
                "54987982615203/250000000000000",
                "-1915987023/50000000000"
              ],
              [
                "79454184065949/125000000000000",
                "-2768481009/25000000000"
              ],
              [
                "63111535886949/125000000000000",
                "-2199042009/25000000000"
              ],
              [
                "87673278973203/250000000000000",
                "-37105908273/500000000000"
              ],
              [
                "54987982615203/250000000000000",
                "-23272530273/500000000000"
              ],
              [
                "79454184065949/125000000000000",
                "-33627345759/250000000000"
              ],
              [
                "63111535886949/125000000000000",
                "-26710656759/250000000000"
              ]
            ],
            "raw": [
              "73005000/419042261",
              "575379/1000000"
            ],
            "new": [
              "87109/500000",
              "575379/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "50051/100000"
            ],
            "lines": [
              [
                "-139951/200000",
                "27253104927/250000000000"
              ],
              [
                "-139951/200000",
                "29482751091/125000000000"
              ],
              [
                "-1/1",
                "135789436989/500000000000"
              ],
              [
                "-1/1",
                "125127190137/250000000000"
              ],
              [
                "-139951/200000",
                "-32877489363/500000000000"
              ],
              [
                "-139951/200000",
                "-12161755479/250000000000"
              ],
              [
                "-1/1",
                "12101434443/125000000000"
              ],
              [
                "-1/1",
                "13499983119/62500000000"
              ]
            ],
            "raw": [
              "27/125",
              "125127190137/250000000000"
            ],
            "new": [
              "27/125",
              "500509/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "z",
            "old": [
              "326657/1000000",
              "162359/250000"
            ],
            "lines": [
              [
                "201/500",
                "-12586023/62500000"
              ],
              [
                "201/500",
                "-27441243/100000000"
              ],
              [
                "201/500",
                "-279198968297/1000000000000"
              ],
              [
                "201/500",
                "-120258867397/500000000000"
              ],
              [
                "186337/250000",
                "-3043471247/12500000000"
              ],
              [
                "186337/250000",
                "-112833797719/250000000000"
              ],
              [
                "186337/250000",
                "-321300300057/1000000000000"
              ],
              [
                "186337/250000",
                "-41744049567/100000000000"
              ],
              [
                "201/500",
                "-37746999/125000000"
              ],
              [
                "201/500",
                "-187506027/500000000"
              ],
              [
                "201/500",
                "-64038191181/125000000000"
              ],
              [
                "201/500",
                "-94724859189/200000000000"
              ],
              [
                "186337/250000",
                "-4300966547/12500000000"
              ],
              [
                "186337/250000",
                "-137983703719/250000000000"
              ],
              [
                "186337/250000",
                "-69300857651/125000000000"
              ],
              [
                "186337/250000",
                "-650547056821/1000000000000"
              ]
            ],
            "raw": [
              "3043471247/9316850000",
              "162359/250000"
            ],
            "new": [
              "326663/1000000",
              "162359/250000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "500509/1000000"
            ],
            "lines": [
              [
                "-139951/200000",
                "13626146379/125000000000"
              ],
              [
                "-139951/200000",
                "14741045007/62500000000"
              ],
              [
                "-1/1",
                "135787812651/500000000000"
              ],
              [
                "-1/1",
                "125125867983/250000000000"
              ],
              [
                "-139951/200000",
                "-32877489363/500000000000"
              ],
              [
                "-139951/200000",
                "-12161755479/250000000000"
              ],
              [
                "-1/1",
                "12101434443/125000000000"
              ],
              [
                "-1/1",
                "13499983119/62500000000"
              ]
            ],
            "raw": [
              "27/125",
              "125125867983/250000000000"
            ],
            "new": [
              "27/125",
              "62563/125000"
            ]
          }
        ]
      }
    },
    {
      "id": 2,
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "139951/200000",
          "326663/1000000",
          "201/500",
          "396153/1000000",
          "232811/500000",
          "87109/500000"
        ],
        "high": [
          "515287/1000000",
          "279/1000",
          "220359/250000",
          "704189/1000000",
          "907/1000",
          "279/1000",
          "62563/125000",
          "1",
          "162359/250000",
          "186337/250000",
          "215473/250000",
          "170823/200000",
          "575379/1000000"
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
        "BFG": -1,
        "EGO": -1,
        "AEG": 1,
        "AEO": 1,
        "AEP": -1
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
        },
        {
          "rule": [
            "cap",
            "CEG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CEG",
              "U_CEG",
              "42534386369/62500000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEO",
            "CGO"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "GABEO"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABG",
            "EGO",
            "BGO",
            "AGO",
            "BEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OABEG"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABO",
            "EGO",
            "BGO",
            "AGO",
            "BEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "AEF",
            [
              "G",
              "O"
            ],
            "P",
            [
              "CEF2-AEF-cap2"
            ]
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "EFP",
            "AFP"
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
        "L_AEP": {
          "triangle": "AEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAP",
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
        "L_DEF": {
          "triangle": "DEF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEF",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "12484932591/125000000000",
              "10162296003/62500000000",
              "131222957499/500000000000",
              "31248743721/100000000000",
              "106810871967/250000000000",
              "11876347287/25000000000",
              "25435378293/50000000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_ADF": {
          "triangle": "ADF",
          "side": "hi",
          "value": "43869/50000",
          "witness": {
            "kind": "vertices",
            "signed": "ADF",
            "used": [
              0,
              3,
              5
            ],
            "values": [
              "216004671/500000000",
              "230739027/500000000",
              "533011041/1000000000",
              "594267093/1000000000",
              "715122249/1000000000",
              "805847013/1000000000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "41117613/50000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEF",
            "used": [
              0,
              4,
              5
            ],
            "values": [
              "375425073/1000000000",
              "436532301/1000000000",
              "469448073/1000000000",
              "477983301/1000000000",
              "32926899/50000000",
              "37628049/50000000",
              "39045063/50000000",
              "41117613/50000000"
            ],
            "cell": "CB"
          }
        },
        "U_AFO": {
          "triangle": "AFO",
          "side": "hi",
          "value": "15507721731/25000000000",
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
              "98151831/1000000000",
              "9153117/62500000",
              "152222211/1000000000",
              "52377027/250000000",
              "57023253/250000000",
              "16361019/62500000",
              "66144267531/250000000000",
              "276391053/1000000000",
              "79661862531/250000000000",
              "319062201/1000000000",
              "93983336781/250000000000",
              "98629562781/250000000000",
              "5596206753/12500000000",
              "7037787153/12500000000",
              "14440943031/25000000000",
              "15507721731/25000000000"
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
        "U_CDG": {
          "triangle": "CDG",
          "side": "hi",
          "value": "136398110327/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDG",
            "used": [
              2,
              3,
              6,
              8
            ],
            "values": [
              "21360088443/250000000000",
              "30081558563/250000000000",
              "3865925367/31250000000",
              "77406466671/500000000000",
              "1239027283/7812500000",
              "8931176567/50000000000",
              "94849406911/500000000000",
              "9463180737/31250000000",
              "3837232451/12500000000",
              "163316190791/500000000000",
              "5276682251/15625000000",
              "86311963513/250000000000",
              "94742029649/250000000000",
              "63415397917/125000000000",
              "263488484419/500000000000",
              "136398110327/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "419042261/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "11548813/25000000",
              "13771813/25000000",
              "30407411/50000000",
              "166243363/250000000",
              "348296261/500000000",
              "34853411/50000000",
              "201616363/250000000",
              "419042261/500000000"
            ],
            "cell": "CB"
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
              "29269213591/50000000000",
              "15524563/25000000",
              "62949967427/100000000000",
              "38358911/50000000",
              "81196697627/100000000000",
              "44121410191/50000000000",
              "229506613/250000000",
              "474822761/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "33564863443/62500000000",
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
              "-1640785619/500000000000",
              "32716701381/500000000000",
              "31134911073/250000000000",
              "42600325073/250000000000",
              "11234970193/62500000000",
              "26285613771/125000000000",
              "14101323693/62500000000",
              "130570881381/500000000000",
              "34874985521/125000000000",
              "154067532381/500000000000",
              "80062001073/250000000000",
              "23466742693/62500000000",
              "59338530521/125000000000",
              "120454484073/250000000000",
              "65212693271/125000000000",
              "33564863443/62500000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "581867549/1000000000",
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
              "36279477/250000000",
              "39377481/250000000",
              "58039193/250000000",
              "64653911/250000000",
              "66863657/250000000",
              "68084189/250000000",
              "69961661/250000000",
              "74698907/250000000",
              "390229257/1000000000",
              "428189829/1000000000",
              "92975221/200000000",
              "491334977/1000000000",
              "512565977/1000000000",
              "550526549/1000000000",
              "555408677/1000000000",
              "581867549/1000000000"
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
        "21": {
          "row": [
            "fan",
            "BFO",
            "BFG",
            "BGO",
            "FGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FBO",
            "point": "G"
          }
        },
        "30": {
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
        "35": {
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
        "46": {
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
        "59": {
          "row": [
            "plu",
            "ABE",
            "ADF",
            "ABD",
            "AEF",
            "ABF",
            "ADE"
          ],
          "witness": {
            "kind": "plu",
            "word": "ABDEF"
          }
        },
        "350": {
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
        "451": {
          "row": [
            "plu",
            "ADE",
            "EFP",
            "AEF",
            "DEP",
            "AEP",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "EADFP"
          }
        },
        "501": {
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
        "533": {
          "row": [
            "plu",
            "AFG",
            "BEF",
            "ABF",
            "EFG",
            "AEF",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FABEG"
          }
        },
        "1037": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-43317687/50000000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "43317687/50000000"
          }
        },
        "1056": {
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
        "1476": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O"
            ]
          }
        },
        "1625": {
          "row": [
            "support",
            "BEO",
            "ABE",
            "AEO",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "EOGAB"
          }
        },
        "2081": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CFP"
              ],
              [
                1,
                "ABF",
                "CEP"
              ],
              [
                -1,
                "ACP",
                "BEF"
              ],
              [
                1,
                "AEF",
                "BCP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "CP"
          }
        },
        "2085": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "FGO"
              ],
              [
                1,
                "ABF",
                "EGO"
              ],
              [
                -1,
                "AEF",
                "BGO"
              ],
              [
                1,
                "AGO",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "GO"
          }
        },
        "4376": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "CGH": "9666928971/12500000000"
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
              "value": "9666928971/12500000000"
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
            "residual": "6179428971/12500000000"
          }
        },
        "4961": {
          "row": [
            "linear",
            {
              "EFO": "-93/1000",
              "AEO": "10857721731/25000000000",
              "EGO": "-15507721731/25000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FAO",
            "point": "G",
            "line": "EO",
            "side": "upper",
            "outer_upper": {
              "triangle": "AFO",
              "ref": "U_AFO",
              "value": "15507721731/25000000000"
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
            "residual": "8532721731/25000000000"
          }
        },
        "6300": {
          "row": [
            "linear",
            {
              "CDG": "-93/1000",
              "DGP": "136398110327/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "DG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "136398110327/250000000000"
            },
            "fan_lower": [
              {
                "triangle": "DGP",
                "ref": "L_DGP",
                "value": "93/1000"
              },
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "CDP",
                "ref": "L_CDP",
                "value": "93/1000"
              }
            ],
            "residual": "66648110327/250000000000"
          }
        },
        "6902": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCO": "-93/1000",
              "BCP": "33564863443/62500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "33564863443/62500000000"
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
            "residual": "16127363443/62500000000"
          }
        },
        "6923": {
          "row": [
            "linear",
            {
              "CEP": "-93/1000",
              "COP": "21939863443/62500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "CP",
            "side": "upper",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "33564863443/62500000000"
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
            "residual": "16127363443/62500000000"
          }
        },
        "6948": {
          "row": [
            "linear",
            {
              "CFO": "21939863443/62500000000",
              "EFO": "-93/1000",
              "FOP": "-33564863443/62500000000"
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
              "value": "33564863443/62500000000"
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
            "residual": "16127363443/62500000000"
          }
        },
        "6974": {
          "row": [
            "linear",
            {
              "AEG": "395867549/1000000000",
              "AFG": "-93/1000",
              "AGO": "-581867549/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "581867549/1000000000"
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
            "residual": "302867549/1000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0031",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "11687/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "L_ACE",
            "U_ACH"
          ]
        },
        {
          "id": "T0042",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "136087/1000000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "U_CEO"
          ]
        },
        {
          "id": "T0050",
          "relation": 501,
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
          "id": "T0060",
          "relation": 1037,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "386677/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0061",
          "relation": 1056,
          "rule": "linear",
          "triangle": "ABE",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_AEF"
          ]
        },
        {
          "id": "T0072",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "101469/1000000",
          "sources": [
            "T0031",
            "T0042",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0118",
          "relation": 4961,
          "rule": "linear",
          "triangle": "AEO",
          "side": "lo",
          "value": "19151/125000",
          "sources": [
            "T0050",
            "L_EGO"
          ]
        },
        {
          "id": "T0141",
          "relation": 6948,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "167491/1000000",
          "sources": [
            "T0050",
            "L_FOP"
          ]
        },
        {
          "id": "T0151",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "287469/1000000",
          "sources": [
            "T0072",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0187",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "140587/500000",
          "sources": [
            "T0050",
            "L_FGO",
            "L_EGO"
          ]
        },
        {
          "id": "T0196",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "1842/15625",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0151",
            "T0060"
          ]
        },
        {
          "id": "T0204",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "148987/1000000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "T0141",
            "U_CEO"
          ]
        },
        {
          "id": "T0209",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "12911/125000",
          "sources": [
            "L_ABF",
            "T0187",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0219",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "103361/1000000",
          "sources": [
            "T0196",
            "T0204",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0250",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "160961/1000000",
          "sources": [
            "T0209",
            "L_AGO"
          ]
        },
        {
          "id": "T0253",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "289361/1000000",
          "sources": [
            "T0219",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0281",
          "relation": 30,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "298049/500000",
          "sources": [
            "U_CEF",
            "L_CEP",
            "T0204"
          ]
        },
        {
          "id": "T0290",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "29529/250000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0253",
            "T0060"
          ]
        },
        {
          "id": "T0296",
          "relation": 451,
          "rule": "sumlo",
          "triangle": "ADE",
          "side": "lo",
          "value": "30651/250000",
          "sources": [
            "L_AEF",
            "L_DEP",
            "L_AEP",
            "L_DEF",
            "T0281"
          ]
        },
        {
          "id": "T0301",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "103399/1000000",
          "sources": [
            "T0290",
            "T0204",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0324",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "289399/1000000",
          "sources": [
            "T0301",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0351",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "2953/25000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0324",
            "T0060"
          ]
        },
        {
          "id": "T0353",
          "relation": 59,
          "rule": "diffhi",
          "triangle": "ABD",
          "side": "hi",
          "value": "186249/500000",
          "sources": [
            "T0061",
            "U_ADF",
            "L_ABF",
            "T0296",
            "L_AEF"
          ]
        },
        {
          "id": "T0362",
          "relation": 2085,
          "rule": "balance_lo",
          "triangle": "BGO",
          "side": "lo",
          "value": "10223/100000",
          "sources": [
            "T0351",
            "L_FGO",
            "L_ABF",
            "L_EGO",
            "L_AGO",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0392",
          "relation": 21,
          "rule": "sum",
          "triangle": "BFO",
          "side": "lo",
          "value": "28823/100000",
          "sources": [
            "L_BFG",
            "T0362",
            "L_FGO"
          ]
        }
      ],
      "physical": {
        "3": {
          "name": "AREA_HI_ABD",
          "terms": [
            [
              [],
              "186249/500000"
            ],
            [
              [
                1,
                3
              ],
              "-1"
            ],
            [
              [
                0,
                1
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
            "kind": "area",
            "triangle": "ABD",
            "side": "hi",
            "reference": "T0353",
            "value": "186249/500000"
          }
        },
        "5": {
          "name": "AREA_HI_ABE",
          "terms": [
            [
              [],
              "6143/20000"
            ],
            [
              [
                1,
                4
              ],
              "-1"
            ],
            [
              [
                0,
                1
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
            "kind": "area",
            "triangle": "ABE",
            "side": "hi",
            "reference": "T0061",
            "value": "6143/20000"
          }
        },
        "26": {
          "name": "AREA_LO_AEH",
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEH",
            "side": "lo",
            "reference": "L_AEH",
            "value": "13857/20000"
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
            "reference": "T0050",
            "value": "47587/500000"
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
        "138": {
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
              "-28823/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0392",
            "value": "28823/100000"
          }
        },
        "222": {
          "name": "AREA_LO_EGO",
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
                4,
                6
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
                8,
                9
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
              [
                4,
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
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "224": {
          "name": "AREA_LO_AEG",
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
                4,
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
              "-160961/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "T0250",
            "value": "160961/1000000"
          }
        },
        "226": {
          "name": "AREA_LO_AEO",
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
                4,
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
              "-19151/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEO",
            "side": "lo",
            "reference": "T0118",
            "value": "19151/125000"
          }
        },
        "1002": {
          "name": "QUAD_1476",
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
              [],
              "551/1000"
            ],
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
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1476
          }
        },
        "1290": {
          "name": "SUPPORT_YCAP_1625",
          "terms": [
            [
              [
                10
              ],
              "6143/20000"
            ],
            [
              [
                1,
                10
              ],
              "14317/20000"
            ],
            [
              [
                4,
                9
              ],
              "-6143/20000"
            ],
            [
              [
                1,
                4
              ],
              "-14317/20000"
            ],
            [
              [
                0
              ],
              "-1023/1000"
            ],
            [
              [
                0,
                9
              ],
              "1023/1000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 1625,
            "which": "Y",
            "value": "6143/20000",
            "reference": "T0061"
          }
        },
        "2094": {
          "name": "LINEAR_4376",
          "terms": [
            [
              [
                2,
                7
              ],
              "8504428971/12500000000"
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
              "-9666928971/12500000000"
            ],
            [
              [
                2,
                8
              ],
              "-9666928971/12500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4376
          }
        },
        "4018": {
          "name": "LINEAR_6300",
          "terms": [
            [
              [
                8
              ],
              "113148110327/250000000000"
            ],
            [
              [
                2,
                8
              ],
              "93/1000"
            ],
            [
              [
                3,
                6
              ],
              "-113148110327/250000000000"
            ],
            [
              [
                2,
                3
              ],
              "-93/1000"
            ],
            [
              [
                6,
                12
              ],
              "136398110327/250000000000"
            ],
            [
              [
                12
              ],
              "-136398110327/250000000000"
            ],
            [
              [
                8,
                11
              ],
              "-136398110327/250000000000"
            ],
            [
              [
                3,
                11
              ],
              "136398110327/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6300
          }
        },
        "4620": {
          "name": "LINEAR_6902",
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
                2,
                10
              ],
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "33564863443/62500000000"
            ],
            [
              [
                1,
                12
              ],
              "-33564863443/62500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6902
          }
        },
        "4641": {
          "name": "LINEAR_6923",
          "terms": [
            [
              [
                12
              ],
              "-93/1000"
            ],
            [
              [
                2,
                12
              ],
              "27752363443/62500000000"
            ],
            [
              [
                4,
                11
              ],
              "93/1000"
            ],
            [
              [
                2,
                4
              ],
              "-93/1000"
            ],
            [
              [
                9,
                12
              ],
              "-21939863443/62500000000"
            ],
            [
              [
                10,
                11
              ],
              "21939863443/62500000000"
            ],
            [
              [
                2,
                10
              ],
              "-21939863443/62500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6923
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "76043/200000",
          "41123/100000",
          "127447/250000",
          "68291/125000",
          "186989/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "175641/250000",
          "907/1000",
          "279/1000",
          "453301/1000000",
          "1/1",
          "581233/1000000",
          "744561/1000000",
          "860913/1000000",
          "106553/125000",
          "561103/1000000"
        ],
        "steps": [
          {
            "factor": 3,
            "target": "a",
            "old": [
              "6131/50000",
              "515287/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "17870787/50000000"
              ],
              [
                "-721/1000",
                "16914351/50000000"
              ],
              [
                "-877/1000",
                "285882753/1000000000"
              ],
              [
                "-721/1000",
                "176029269/1000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "164217/350000"
            ],
            "new": [
              "6131/50000",
              "58649/125000"
            ]
          },
          {
            "factor": 5,
            "target": "a",
            "old": [
              "6131/50000",
              "58649/125000"
            ],
            "lines": [
              [
                "-877/1000",
                "2963/12500"
              ],
              [
                "-721/1000",
                "3703/25000"
              ],
              [
                "-877/1000",
                "195589/1000000"
              ],
              [
                "-721/1000",
                "54097/1000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "5926/21925"
            ],
            "new": [
              "6131/50000",
              "135143/500000"
            ]
          },
          {
            "factor": 26,
            "target": "h",
            "old": [
              "139951/200000",
              "1/1"
            ],
            "lines": [
              [
                "1/1",
                "-81547/100000"
              ],
              [
                "1/1",
                "-15049/15625"
              ]
            ],
            "raw": [
              "81547/100000",
              "1/1"
            ],
            "new": [
              "81547/100000",
              "1/1"
            ]
          },
          {
            "factor": 196,
            "target": "x",
            "old": [
              "201/500",
              "186337/250000"
            ],
            "lines": [
              [
                "1/1",
                "-41123/100000"
              ],
              [
                "1/1",
                "-126357533/250000000"
              ],
              [
                "1/1",
                "-118257467/250000000"
              ],
              [
                "1/1",
                "-56723/100000"
              ],
              [
                "1/1",
                "-6762107/15625000"
              ],
              [
                "1/1",
                "-17052661/31250000"
              ]
            ],
            "raw": [
              "41123/100000",
              "186337/250000"
            ],
            "new": [
              "41123/100000",
              "186337/250000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "396153/1000000",
              "215473/250000"
            ],
            "lines": [
              [
                "98/125",
                "-39661047451/100000000000"
              ],
              [
                "98/125",
                "-46240298451/100000000000"
              ],
              [
                "62437/125000",
                "-23444319451/100000000000"
              ],
              [
                "62437/125000",
                "-20435785651/100000000000"
              ],
              [
                "98/125",
                "-14666238343/25000000000"
              ],
              [
                "98/125",
                "-16311051093/25000000000"
              ],
              [
                "62437/125000",
                "-10612056343/25000000000"
              ],
              [
                "62437/125000",
                "-9859922893/25000000000"
              ],
              [
                "98/125",
                "-119478436569/250000000000"
              ],
              [
                "98/125",
                "-164076005569/250000000000"
              ],
              [
                "62437/125000",
                "-78936616569/250000000000"
              ],
              [
                "62437/125000",
                "-99564723569/250000000000"
              ],
              [
                "98/125",
                "-35006783517/62500000000"
              ],
              [
                "98/125",
                "-46156175767/62500000000"
              ],
              [
                "62437/125000",
                "-24871328517/62500000000"
              ],
              [
                "62437/125000",
                "-30028355267/62500000000"
              ]
            ],
            "raw": [
              "20435785651/49949600000",
              "215473/250000"
            ],
            "new": [
              "51141/125000",
              "215473/250000"
            ]
          },
          {
            "factor": 224,
            "target": "z",
            "old": [
              "326663/1000000",
              "162359/250000"
            ],
            "lines": [
              [
                "1/1",
                "-9505377/25000000"
              ],
              [
                "1/1",
                "-61998153/125000000"
              ],
              [
                "1/1",
                "-11325177/25000000"
              ],
              [
                "1/1",
                "-71097153/125000000"
              ],
              [
                "1/1",
                "-3171852997/6250000000"
              ],
              [
                "1/1",
                "-36328440991/62500000000"
              ],
              [
                "1/1",
                "-4226039547/6250000000"
              ],
              [
                "1/1",
                "-46870306491/62500000000"
              ]
            ],
            "raw": [
              "9505377/25000000",
              "162359/250000"
            ],
            "new": [
              "76043/200000",
              "162359/250000"
            ]
          },
          {
            "factor": 226,
            "target": "y",
            "old": [
              "51141/125000",
              "215473/250000"
            ],
            "lines": [
              [
                "1/1",
                "-2299020387/5000000000"
              ],
              [
                "1/1",
                "-27337269411/50000000000"
              ],
              [
                "1/1",
                "-2991942937/5000000000"
              ],
              [
                "1/1",
                "-34266494911/50000000000"
              ],
              [
                "1/1",
                "-7616022353/12500000000"
              ],
              [
                "1/1",
                "-80860653809/125000000000"
              ],
              [
                "1/1",
                "-10755800803/12500000000"
              ],
              [
                "1/1",
                "-112258438309/125000000000"
              ]
            ],
            "raw": [
              "2299020387/5000000000",
              "215473/250000"
            ],
            "new": [
              "114951/250000",
              "215473/250000"
            ]
          },
          {
            "factor": 1002,
            "target": "z",
            "old": [
              "76043/200000",
              "162359/250000"
            ],
            "lines": [
              [
                "-1/1",
                "52817129/100000000"
              ],
              [
                "-1/1",
                "55951229/100000000"
              ],
              [
                "-1/1",
                "56646461/100000000"
              ],
              [
                "-1/1",
                "54523361/100000000"
              ],
              [
                "-1/1",
                "1432294041/3125000000"
              ],
              [
                "-1/1",
                "1829852941/3125000000"
              ],
              [
                "-1/1",
                "775980333/1562500000"
              ],
              [
                "-1/1",
                "892616033/1562500000"
              ],
              [
                "-1/1",
                "51101/100000"
              ],
              [
                "-1/1",
                "542351/1000000"
              ],
              [
                "-1/1",
                "57809/100000"
              ],
              [
                "-1/1",
                "556859/1000000"
              ],
              [
                "-1/1",
                "303651/781250"
              ],
              [
                "-1/1",
                "16121629/31250000"
              ],
              [
                "-1/1",
                "1424229/3125000"
              ],
              [
                "-1/1",
                "4143751/7812500"
              ]
            ],
            "raw": [
              "76043/200000",
              "1829852941/3125000000"
            ],
            "new": [
              "76043/200000",
              "585553/1000000"
            ]
          },
          {
            "factor": 1290,
            "target": "y",
            "old": [
              "114951/250000",
              "215473/250000"
            ],
            "lines": [
              [
                "7903991/20000000",
                "-490100008113/2500000000000"
              ],
              [
                "7903991/20000000",
                "-14249048210703/50000000000000"
              ],
              [
                "10137443/20000000",
                "-649233463113/2500000000000"
              ],
              [
                "10137443/20000000",
                "-17431717310703/50000000000000"
              ],
              [
                "7903991/20000000",
                "-2682789338417/10000000000000"
              ],
              [
                "7903991/20000000",
                "-1116312171283/3125000000000"
              ],
              [
                "10137443/20000000",
                "-3695659820417/10000000000000"
              ],
              [
                "10137443/20000000",
                "-358208549227/781250000000"
              ],
              [
                "7903991/20000000",
                "-332225047443/1562500000000"
              ],
              [
                "7903991/20000000",
                "-31386543970857/125000000000000"
              ],
              [
                "10137443/20000000",
                "-215841728409/781250000000"
              ],
              [
                "10137443/20000000",
                "-39343216720857/125000000000000"
              ],
              [
                "7903991/20000000",
                "-7986184119673/25000000000000"
              ],
              [
                "7903991/20000000",
                "-22369730386891/62500000000000"
              ],
              [
                "10137443/20000000",
                "-10518360324673/25000000000000"
              ],
              [
                "10137443/20000000",
                "-28700170899391/62500000000000"
              ]
            ],
            "raw": [
              "490100008113/987998875000",
              "215473/250000"
            ],
            "new": [
              "496053/1000000",
              "215473/250000"
            ]
          },
          {
            "factor": 2094,
            "target": "g",
            "old": [
              "27/125",
              "62563/125000"
            ],
            "lines": [
              [
                "-788309056798137/1250000000000000",
                "184207565985722488683/1250000000000000000000"
              ],
              [
                "-788309056798137/1250000000000000",
                "193502121421157488683/1250000000000000000000"
              ],
              [
                "-788309056798137/1250000000000000",
                "149938479674973393039/625000000000000000000"
              ],
              [
                "-788309056798137/1250000000000000",
                "157503920886828393039/625000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "269177893000130002581/1250000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "278472448435565002581/1250000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "219101337247354850673/625000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "226666778459209850673/625000000000000000000"
              ],
              [
                "-788309056798137/1250000000000000",
                "383655961222331859261/6250000000000000000000"
              ],
              [
                "-788309056798137/1250000000000000",
                "430128738399506859261/6250000000000000000000"
              ],
              [
                "-788309056798137/1250000000000000",
                "312282458302367461113/3125000000000000000000"
              ],
              [
                "-788309056798137/1250000000000000",
                "350109664361642461113/3125000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "808507596294369428751/6250000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "854980373471544428751/6250000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "658096746164274749283/3125000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "695923952223549749283/3125000000000000000000"
              ]
            ],
            "raw": [
              "27/125",
              "342875003152749/731150000000000"
            ],
            "new": [
              "27/125",
              "234477/500000"
            ]
          },
          {
            "factor": 4018,
            "target": "v",
            "old": [
              "87109/500000",
              "575379/1000000"
            ],
            "lines": [
              [
                "-6683507406023/15625000000000",
                "2690669402490298825757/25000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "2894292260906548825757/25000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "10576856507031523392439/62500000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "9936621720520273392439/62500000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "2339715425314317468761/25000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "2543338283730567468761/25000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "11076322285243232080847/125000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "9795852712220732080847/125000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "19842107148678613095199/125000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "21671796015217363095199/125000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "6885618287572541437823/31250000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "6768394537931291437823/31250000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "18087337262798706310219/125000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "19917026129337456310219/125000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "17465082421470351047261/125000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "16996187422905351047261/125000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "530272376018781241601/10000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "611721519385281241601/10000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "5947471468402471298627/25000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "5691377553797971298627/25000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "1949453925741943494013/50000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "2356699642574443494013/50000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "1228747913324533861819/7812500000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "1148718565010627611819/7812500000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "3030705676030110080107/50000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "3762581222645610080107/50000000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "3068571683185286617339/12500000000000000000000"
              ],
              [
                "-6683507406023/15625000000000",
                "3021682183328786617339/12500000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "465759544335629473223/10000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "612134653658729473223/10000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "20608326103033051469359/125000000000000000000000"
              ],
              [
                "-36216835448356021/125000000000000000",
                "20139431104468051469359/125000000000000000000000"
              ]
            ],
            "raw": [
              "87109/500000",
              "62623911901740543211/109118488261600000000"
            ],
            "new": [
              "87109/500000",
              "143477/250000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "87109/500000",
              "143477/250000"
            ],
            "lines": [
              [
                "7022541424134789/31250000000000000",
                "-20742981034167/500000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-13009832572167/500000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-18798391624761/250000000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-14931817393761/250000000000000"
              ],
              [
                "7022541424134789/31250000000000000",
                "-27300239077167/500000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-17122492615167/500000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-24740927293761/250000000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-19652054062761/250000000000000"
              ],
              [
                "7022541424134789/31250000000000000",
                "-6965345203047/125000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-4368609061047/125000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-6312365937801/62500000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-5013997866801/62500000000000"
              ],
              [
                "7022541424134789/31250000000000000",
                "-8604659713797/125000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-5396774071797/125000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-7797999855051/62500000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-6194057034051/62500000000000"
              ]
            ],
            "raw": [
              "12392866125/67129726886",
              "143477/250000"
            ],
            "new": [
              "18461/100000",
              "143477/250000"
            ]
          },
          {
            "factor": 4641,
            "target": "u",
            "old": [
              "232811/500000",
              "170823/200000"
            ],
            "lines": [
              [
                "14196460080490479/62500000000000000",
                "-3825624827405411075477/31250000000000000000000"
              ],
              [
                "14196460080490479/62500000000000000",
                "-671000728377673376779/3906250000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-4355920423842911075477/31250000000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-778911219299548376779/3906250000000000000000"
              ],
              [
                "14196460080490479/62500000000000000",
                "-4502266933944076007047/31250000000000000000000"
              ],
              [
                "14196460080490479/62500000000000000",
                "-3022323966780025972901/15625000000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-5032562530381576007047/31250000000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-3453965930467525972901/15625000000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-1499642883974359820987/7812500000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-4452705106292964847159/15625000000000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-1632216783083734820987/7812500000000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-4884347069980464847159/15625000000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-3337606821218052107759/15625000000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-299439134972643582059/976562500000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-3602754619436802107759/15625000000000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-326416757703112332059/976562500000000000000"
              ],
              [
                "14196460080490479/62500000000000000",
                "-757666944934971559993/6250000000000000000000"
              ],
              [
                "14196460080490479/62500000000000000",
                "-349410001477113952379/3125000000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-863726064222471559993/6250000000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-435738394214613952379/3125000000000000000000"
              ],
              [
                "14196460080490479/62500000000000000",
                "-5891851966857795417361/31250000000000000000000"
              ],
              [
                "14196460080490479/62500000000000000",
                "-2798808628477038570593/15625000000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-6422147563295295417361/31250000000000000000000"
              ],
              [
                "16155272580490479/62500000000000000",
                "-3230450592164538570593/15625000000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-1490320358291721502109/7812500000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-1757876100083920550969/7812500000000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-1622894257401096502109/7812500000000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-1973697081927670550969/7812500000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-1008099834418727953229/3906250000000000000000"
              ],
              [
                "5555729445653539/15625000000000000",
                "-1141877705314827477659/3906250000000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-1074386783973415453229/3906250000000000000000"
              ],
              [
                "6045432570653539/15625000000000000",
                "-1249788196236702477659/3906250000000000000000"
              ]
            ],
            "raw": [
              "349410001477113952379/709823004024523950000",
              "170823/200000"
            ],
            "new": [
              "492249/1000000",
              "170823/200000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "234477/500000"
            ],
            "lines": [
              [
                "-81547/100000",
                "14266707873/100000000000"
              ],
              [
                "-81547/100000",
                "14532471309/50000000000"
              ],
              [
                "-1/1",
                "24258010911/100000000000"
              ],
              [
                "-1/1",
                "22665040563/50000000000"
              ],
              [
                "-81547/100000",
                "15743819991/500000000000"
              ],
              [
                "-81547/100000",
                "27414280203/250000000000"
              ],
              [
                "-1/1",
                "65700335181/500000000000"
              ],
              [
                "-1/1",
                "68077126473/250000000000"
              ]
            ],
            "raw": [
              "27/125",
              "22665040563/50000000000"
            ],
            "new": [
              "27/125",
              "453301/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "496053/1000000",
              "215473/250000"
            ],
            "lines": [
              [
                "-877/1000",
                "6578871/10000000"
              ],
              [
                "-877/1000",
                "75502061/100000000"
              ],
              [
                "-721/1000",
                "5689671/10000000"
              ],
              [
                "-721/1000",
                "61352861/100000000"
              ],
              [
                "-877/1000",
                "12855409/25000000"
              ],
              [
                "-877/1000",
                "180986909/250000000"
              ],
              [
                "-721/1000",
                "10632409/25000000"
              ],
              [
                "-721/1000",
                "145613909/250000000"
              ]
            ],
            "raw": [
              "496053/1000000",
              "75502061/87700000"
            ],
            "new": [
              "496053/1000000",
              "860913/1000000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "41123/100000",
              "186337/250000"
            ],
            "lines": [
              [
                "-57/100",
                "128545653681/500000000000"
              ],
              [
                "-57/100",
                "70558136973/250000000000"
              ],
              [
                "-907/1000",
                "219779304681/500000000000"
              ],
              [
                "-907/1000",
                "144819119973/250000000000"
              ],
              [
                "-57/100",
                "212199659901/500000000000"
              ],
              [
                "-57/100",
                "81372952233/250000000000"
              ],
              [
                "-907/1000",
                "303433310901/500000000000"
              ],
              [
                "-907/1000",
                "155633935233/250000000000"
              ]
            ],
            "raw": [
              "41123/100000",
              "70733219967/95000000000"
            ],
            "new": [
              "41123/100000",
              "744561/1000000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "492249/1000000",
              "170823/200000"
            ],
            "lines": [
              [
                "-57/100",
                "15013893697/50000000000"
              ],
              [
                "-57/100",
                "10782665501/25000000000"
              ],
              [
                "-907/1000",
                "24137258797/50000000000"
              ],
              [
                "-907/1000",
                "18208763801/25000000000"
              ],
              [
                "-57/100",
                "59849003629/125000000000"
              ],
              [
                "-57/100",
                "29841459257/62500000000"
              ],
              [
                "-907/1000",
                "82657416379/125000000000"
              ],
              [
                "-907/1000",
                "48406705007/62500000000"
              ]
            ],
            "raw": [
              "492249/1000000",
              "48406705007/56687500000"
            ],
            "new": [
              "492249/1000000",
              "853923/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "18461/100000",
              "143477/250000"
            ],
            "lines": [
              [
                "-98/125",
                "26785639769/200000000000"
              ],
              [
                "-98/125",
                "147293026763/500000000000"
              ],
              [
                "-546699/1000000",
                "4193214009/40000000000"
              ],
              [
                "-546699/1000000",
                "127481299637/1000000000000"
              ],
              [
                "-98/125",
                "238188773683/1000000000000"
              ],
              [
                "-98/125",
                "99711657091/250000000000"
              ],
              [
                "-546699/1000000",
                "209090925063/1000000000000"
              ],
              [
                "-546699/1000000",
                "9269674979/40000000000"
              ],
              [
                "-98/125",
                "8152556963/200000000000"
              ],
              [
                "-98/125",
                "205879513001/500000000000"
              ],
              [
                "-546699/1000000",
                "2332987239/200000000000"
              ],
              [
                "-546699/1000000",
                "244654272113/1000000000000"
              ],
              [
                "-98/125",
                "70757943841/1000000000000"
              ],
              [
                "-98/125",
                "110438546257/250000000000"
              ],
              [
                "-546699/1000000",
                "41660095221/1000000000000"
              ],
              [
                "-546699/1000000",
                "274649431139/1000000000000"
              ]
            ],
            "raw": [
              "18461/100000",
              "110438546257/196000000000"
            ],
            "new": [
              "18461/100000",
              "281731/500000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "492249/1000000",
              "853923/1000000"
            ],
            "lines": [
              [
                "496053/1000000",
                "-168773368439/500000000000"
              ],
              [
                "496053/1000000",
                "-27714640153/62500000000"
              ],
              [
                "496053/1000000",
                "-99770743197/250000000000"
              ],
              [
                "496053/1000000",
                "-252485239179/500000000000"
              ],
              [
                "860913/1000000",
                "-267549362219/500000000000"
              ],
              [
                "860913/1000000",
                "-23907343169/31250000000"
              ],
              [
                "860913/1000000",
                "-149158740087/250000000000"
              ],
              [
                "860913/1000000",
                "-413285608659/500000000000"
              ],
              [
                "496053/1000000",
                "-144107072423/500000000000"
              ],
              [
                "496053/1000000",
                "-33161969867/125000000000"
              ],
              [
                "496053/1000000",
                "-7438023387/15625000000"
              ],
              [
                "496053/1000000",
                "-226557555429/500000000000"
              ],
              [
                "860913/1000000",
                "-242883066203/500000000000"
              ],
              [
                "860913/1000000",
                "-73362062237/125000000000"
              ],
              [
                "860913/1000000",
                "-84198185541/125000000000"
              ],
              [
                "860913/1000000",
                "-387357924909/500000000000"
              ]
            ],
            "raw": [
              "33161969867/62006625000",
              "853923/1000000"
            ],
            "new": [
              "534813/1000000",
              "853923/1000000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "496053/1000000",
              "860913/1000000"
            ],
            "lines": [
              [
                "98/125",
                "-8562805711/20000000000"
              ],
              [
                "98/125",
                "-9878655911/20000000000"
              ],
              [
                "546699/1000000",
                "-5857574311/20000000000"
              ],
              [
                "546699/1000000",
                "-5574015771/20000000000"
              ],
              [
                "98/125",
                "-54903713981/100000000000"
              ],
              [
                "98/125",
                "-61482964981/100000000000"
              ],
              [
                "546699/1000000",
                "-41377556981/100000000000"
              ],
              [
                "546699/1000000",
                "-39959764281/100000000000"
              ],
              [
                "98/125",
                "-98280301877/200000000000"
              ],
              [
                "98/125",
                "-133905313277/200000000000"
              ],
              [
                "546699/1000000",
                "-71227987877/200000000000"
              ],
              [
                "546699/1000000",
                "-90858911877/200000000000"
              ],
              [
                "98/125",
                "-543852842767/1000000000000"
              ],
              [
                "98/125",
                "-721977899767/1000000000000"
              ],
              [
                "546699/1000000",
                "-408591272767/1000000000000"
              ],
              [
                "546699/1000000",
                "-506745892767/1000000000000"
              ]
            ],
            "raw": [
              "1858005257/3644660000",
              "860913/1000000"
            ],
            "new": [
              "127447/250000",
              "860913/1000000"
            ]
          },
          {
            "factor": 1002,
            "target": "z",
            "old": [
              "76043/200000",
              "585553/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "52817129/100000000"
              ],
              [
                "-1/1",
                "55951229/100000000"
              ],
              [
                "-1/1",
                "56646461/100000000"
              ],
              [
                "-1/1",
                "54523361/100000000"
              ],
              [
                "-1/1",
                "46992101353/100000000000"
              ],
              [
                "-1/1",
                "58123245053/100000000000"
              ],
              [
                "-1/1",
                "50821433353/100000000000"
              ],
              [
                "-1/1",
                "56695377053/100000000000"
              ],
              [
                "-1/1",
                "51101/100000"
              ],
              [
                "-1/1",
                "542351/1000000"
              ],
              [
                "-1/1",
                "57809/100000"
              ],
              [
                "-1/1",
                "556859/1000000"
              ],
              [
                "-1/1",
                "40897057/100000000"
              ],
              [
                "-1/1",
                "520282007/1000000000"
              ],
              [
                "-1/1",
                "47605057/100000000"
              ],
              [
                "-1/1",
                "534790007/1000000000"
              ]
            ],
            "raw": [
              "76043/200000",
              "58123245053/100000000000"
            ],
            "new": [
              "76043/200000",
              "581233/1000000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "18461/100000",
              "281731/500000"
            ],
            "lines": [
              [
                "7022541424134789/31250000000000000",
                "-5252558269833/125000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-3294362731833/125000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-4760147407239/62500000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-3781049638239/62500000000000"
              ],
              [
                "7022541424134789/31250000000000000",
                "-6891872780583/125000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-4322527742583/125000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-6245781324489/62500000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-4961108805489/62500000000000"
              ],
              [
                "7022541424134789/31250000000000000",
                "-27842331685707/500000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-17462488783707/500000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-25232200420581/250000000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-20042278969581/250000000000000"
              ],
              [
                "7022541424134789/31250000000000000",
                "-34399589728707/500000000000000"
              ],
              [
                "4404482075580789/31250000000000000",
                "-21575148826707/500000000000000"
              ],
              [
                "6364200192563787/15625000000000000",
                "-31174736089581/250000000000000"
              ],
              [
                "5055170518286787/15625000000000000",
                "-24762515638581/250000000000000"
              ]
            ],
            "raw": [
              "6276267750/33564863443",
              "281731/500000"
            ],
            "new": [
              "186989/1000000",
              "281731/500000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "534813/1000000",
              "853923/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "150684386953/500000000000"
              ],
              [
                "-57/100",
                "107897170949/250000000000"
              ],
              [
                "-907/1000",
                "241918037953/500000000000"
              ],
              [
                "-907/1000",
                "182158153949/250000000000"
              ],
              [
                "-57/100",
                "118500493487/250000000000"
              ],
              [
                "-57/100",
                "59528103571/125000000000"
              ],
              [
                "-907/1000",
                "164117318987/250000000000"
              ],
              [
                "-907/1000",
                "96658595071/125000000000"
              ]
            ],
            "raw": [
              "534813/1000000",
              "96658595071/113375000000"
            ],
            "new": [
              "534813/1000000",
              "852557/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "186989/1000000",
              "281731/500000"
            ],
            "lines": [
              [
                "-98/125",
                "24592785053/200000000000"
              ],
              [
                "-98/125",
                "154187841431/500000000000"
              ],
              [
                "-546699/1000000",
                "18773215329/200000000000"
              ],
              [
                "-546699/1000000",
                "141270928973/1000000000000"
              ],
              [
                "-98/125",
                "216474885631/1000000000000"
              ],
              [
                "-98/125",
                "100471660807/250000000000"
              ],
              [
                "-546699/1000000",
                "187377037011/1000000000000"
              ],
              [
                "-546699/1000000",
                "234781889339/1000000000000"
              ],
              [
                "-98/125",
                "8222931917/200000000000"
              ],
              [
                "-98/125",
                "205658238759/500000000000"
              ],
              [
                "-546699/1000000",
                "2403362193/200000000000"
              ],
              [
                "-546699/1000000",
                "244211723629/1000000000000"
              ],
              [
                "-98/125",
                "70753356559/1000000000000"
              ],
              [
                "-98/125",
                "110238793623/250000000000"
              ],
              [
                "-546699/1000000",
                "41655507939/1000000000000"
              ],
              [
                "-546699/1000000",
                "273850420603/1000000000000"
              ]
            ],
            "raw": [
              "186989/1000000",
              "15748399089/28000000000"
            ],
            "new": [
              "186989/1000000",
              "562443/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "534813/1000000",
              "852557/1000000"
            ],
            "lines": [
              [
                "127447/250000",
                "-10771053557/31250000000"
              ],
              [
                "127447/250000",
                "-227211072917/500000000000"
              ],
              [
                "127447/250000",
                "-407002944183/1000000000000"
              ],
              [
                "127447/250000",
                "-516751376193/1000000000000"
              ],
              [
                "860913/1000000",
                "-267394470287/500000000000"
              ],
              [
                "860913/1000000",
                "-381958180667/500000000000"
              ],
              [
                "860913/1000000",
                "-597118170933/1000000000000"
              ],
              [
                "860913/1000000",
                "-826245591693/1000000000000"
              ],
              [
                "127447/250000",
                "-3697294947/12500000000"
              ],
              [
                "127447/250000",
                "-27788142231/100000000000"
              ],
              [
                "127447/250000",
                "-483263283393/1000000000000"
              ],
              [
                "127447/250000",
                "-465361109943/1000000000000"
              ],
              [
                "860913/1000000",
                "-48589882251/100000000000"
              ],
              [
                "860913/1000000",
                "-58737563781/100000000000"
              ],
              [
                "860913/1000000",
                "-673378510143/1000000000000"
              ],
              [
                "860913/1000000",
                "-774855325443/1000000000000"
              ]
            ],
            "raw": [
              "27788142231/50978800000",
              "852557/1000000"
            ],
            "new": [
              "136273/250000",
              "852557/1000000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "704189/1000000"
            ],
            "lines": [
              [
                "-113727/250000",
                "4157439/25000000"
              ],
              [
                "-113727/250000",
                "79900389/250000000"
              ],
              [
                "-147443/1000000",
                "-895749/100000000"
              ],
              [
                "-147443/1000000",
                "40730801/1000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "26633463/37909000"
            ],
            "new": [
              "6131/50000",
              "175641/250000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "136273/250000",
              "852557/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "150684386953/500000000000"
              ],
              [
                "-57/100",
                "107897170949/250000000000"
              ],
              [
                "-907/1000",
                "241918037953/500000000000"
              ],
              [
                "-907/1000",
                "182158153949/250000000000"
              ],
              [
                "-57/100",
                "236767353711/500000000000"
              ],
              [
                "-57/100",
                "119026002963/250000000000"
              ],
              [
                "-907/1000",
                "328001004711/500000000000"
              ],
              [
                "-907/1000",
                "193286985963/250000000000"
              ]
            ],
            "raw": [
              "136273/250000",
              "193286985963/226750000000"
            ],
            "new": [
              "136273/250000",
              "106553/125000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "186989/1000000",
              "562443/1000000"
            ],
            "lines": [
              [
                "-98/125",
                "6015805313/50000000000"
              ],
              [
                "-98/125",
                "77792759277/250000000000"
              ],
              [
                "-546699/1000000",
                "2280456441/25000000000"
              ],
              [
                "-546699/1000000",
                "70533153/488281250"
              ],
              [
                "-98/125",
                "52940200651/250000000000"
              ],
              [
                "-98/125",
                "100653933363/250000000000"
              ],
              [
                "-546699/1000000",
                "178381791/976562500"
              ],
              [
                "-546699/1000000",
                "29487074211/125000000000"
              ],
              [
                "-98/125",
                "1028722993/25000000000"
              ],
              [
                "-98/125",
                "51279899997/125000000000"
              ],
              [
                "-546699/1000000",
                "120510711/10000000000"
              ],
              [
                "-546699/1000000",
                "60880015053/250000000000"
              ],
              [
                "-98/125",
                "8851794011/125000000000"
              ],
              [
                "-98/125",
                "54988079043/125000000000"
              ],
              [
                "-546699/1000000",
                "10429125867/250000000000"
              ],
              [
                "-546699/1000000",
                "13659274629/50000000000"
              ]
            ],
            "raw": [
              "186989/1000000",
              "54988079043/98000000000"
            ],
            "new": [
              "186989/1000000",
              "561103/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "136273/250000",
              "106553/125000"
            ],
            "lines": [
              [
                "127447/250000",
                "-10771053557/31250000000"
              ],
              [
                "127447/250000",
                "-227211072917/500000000000"
              ],
              [
                "127447/250000",
                "-407002944183/1000000000000"
              ],
              [
                "127447/250000",
                "-516751376193/1000000000000"
              ],
              [
                "860913/1000000",
                "-267394470287/500000000000"
              ],
              [
                "860913/1000000",
                "-381958180667/500000000000"
              ],
              [
                "860913/1000000",
                "-597118170933/1000000000000"
              ],
              [
                "860913/1000000",
                "-826245591693/1000000000000"
              ],
              [
                "127447/250000",
                "-739895213/2500000000"
              ],
              [
                "127447/250000",
                "-5570229967/20000000000"
              ],
              [
                "127447/250000",
                "-482991109293/1000000000000"
              ],
              [
                "127447/250000",
                "-465544522443/1000000000000"
              ],
              [
                "860913/1000000",
                "-9721466239/20000000000"
              ],
              [
                "860913/1000000",
                "-11760114277/20000000000"
              ],
              [
                "860913/1000000",
                "-673106336043/1000000000000"
              ],
              [
                "860913/1000000",
                "-775038737943/1000000000000"
              ]
            ],
            "raw": [
              "5570229967/10195760000",
              "106553/125000"
            ],
            "new": [
              "68291/125000",
              "106553/125000"
            ]
          }
        ]
      }
    },
    {
      "id": 3,
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "76043/200000",
          "41123/100000",
          "127447/250000",
          "68291/125000",
          "186989/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "175641/250000",
          "907/1000",
          "279/1000",
          "453301/1000000",
          "1",
          "581233/1000000",
          "744561/1000000",
          "860913/1000000",
          "106553/125000",
          "561103/1000000"
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
        "BFG": -1,
        "EGO": -1,
        "AEG": 1,
        "AEO": 1,
        "AEP": -1
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
        },
        {
          "rule": [
            "cap",
            "CEG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CEG",
              "U_CEG",
              "42534386369/62500000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEO",
            "CGO"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "GABEO"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABG",
            "EGO",
            "BGO",
            "AGO",
            "BEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OABEG"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABO",
            "EGO",
            "BGO",
            "AGO",
            "BEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "AEF",
            [
              "G",
              "O"
            ],
            "P",
            [
              "CEF2-AEF-cap2"
            ]
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "EFP",
            "AFP"
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
        "L_AEP": {
          "triangle": "AEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAP",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "4612307751/15625000000",
              "3751408611/10000000000",
              "98775181611/250000000000",
              "11876347287/25000000000",
              "3754256283/7812500000",
              "3053514663/5000000000",
              "80399523663/125000000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "41117613/50000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEF",
            "used": [
              0,
              4,
              5
            ],
            "values": [
              "276035397/500000000",
              "323046897/500000000",
              "325699089/500000000",
              "32926899/50000000",
              "346424589/500000000",
              "37628049/50000000",
              "39045063/50000000",
              "41117613/50000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEG": {
          "triangle": "AEG",
          "side": "hi",
          "value": "9049473/25000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEG",
            "used": [
              0,
              4,
              6,
              8
            ],
            "values": [
              "-89347046457/500000000000",
              "-4898261919/50000000000",
              "-3450153/125000000",
              "-12965827957/500000000000",
              "11161953543/500000000000",
              "5648847/125000000",
              "2739859931/50000000000",
              "2204223/25000000",
              "5152638081/50000000000",
              "4024023/25000000",
              "21677097/125000000",
              "87543172043/500000000000",
              "30776097/125000000",
              "12790759931/50000000000",
              "7229673/25000000",
              "9049473/25000000"
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
              "14977597627/25000000000",
              "15524563/25000000",
              "34128062519/50000000000",
              "38358911/50000000",
              "43251427619/50000000000",
              "22403695927/25000000000",
              "229506613/250000000",
              "474822761/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "132137532733/250000000000",
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
              "3096251347/62500000000",
              "14748722069/125000000000",
              "4326914201/31250000000",
              "45023009733/250000000000",
              "23073516179/125000000000",
              "105274897401/500000000000",
              "56554728483/250000000000",
              "139499774901/500000000000",
              "38498555819/125000000000",
              "20528745277/62500000000",
              "43983904819/125000000000",
              "92522677233/250000000000",
              "234499109901/500000000000",
              "1902028697/3906250000",
              "256440505901/500000000000",
              "132137532733/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "106980489/200000000",
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
              "225229229/1000000000",
              "226981577/1000000000",
              "142860507/500000000",
              "307790007/1000000000",
              "327268659/1000000000",
              "329021007/1000000000",
              "168270333/500000000",
              "358609659/1000000000",
              "74383111/200000000",
              "80304403/200000000",
              "26915937/62500000",
              "90544797/200000000",
              "94790997/200000000",
              "100712289/200000000",
              "128208363/250000000",
              "106980489/200000000"
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
        "21": {
          "row": [
            "fan",
            "BFO",
            "BFG",
            "BGO",
            "FGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FBO",
            "point": "G"
          }
        },
        "35": {
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
        "46": {
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
        "350": {
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
        "501": {
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
        "533": {
          "row": [
            "plu",
            "AFG",
            "BEF",
            "ABF",
            "EFG",
            "AEF",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FABEG"
          }
        },
        "675": {
          "row": [
            "plu",
            "AEG",
            "FGO",
            "AFG",
            "EGO",
            "AGO",
            "EFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEFO"
          }
        },
        "1037": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-43317687/50000000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "43317687/50000000"
          }
        },
        "1476": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O"
            ]
          }
        },
        "2081": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CFP"
              ],
              [
                1,
                "ABF",
                "CEP"
              ],
              [
                -1,
                "ACP",
                "BEF"
              ],
              [
                1,
                "AEF",
                "BCP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "CP"
          }
        },
        "2085": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "FGO"
              ],
              [
                1,
                "ABF",
                "EGO"
              ],
              [
                -1,
                "AEF",
                "BGO"
              ],
              [
                1,
                "AGO",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "GO"
          }
        },
        "6902": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCO": "-93/1000",
              "BCP": "132137532733/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "132137532733/250000000000"
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
            "residual": "62387532733/250000000000"
          }
        },
        "6948": {
          "row": [
            "linear",
            {
              "CFO": "85637532733/250000000000",
              "EFO": "-93/1000",
              "FOP": "-132137532733/250000000000"
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
              "value": "132137532733/250000000000"
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
            "residual": "62387532733/250000000000"
          }
        },
        "6974": {
          "row": [
            "linear",
            {
              "AEG": "69780489/200000000",
              "AFG": "-93/1000",
              "AGO": "-106980489/200000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "106980489/200000000"
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
            "residual": "51180489/200000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0022",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "11687/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "L_ACE",
            "U_ACH"
          ]
        },
        {
          "id": "T0033",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "4321/31250",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "U_CEO"
          ]
        },
        {
          "id": "T0041",
          "relation": 501,
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
          "id": "T0043",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51529/500000",
          "sources": [
            "L_ABF",
            "L_EFG",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0052",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "49079/500000",
          "sources": [
            "T0043",
            "L_EGO",
            "L_AGO",
            "L_EFG",
            "U_AEG"
          ]
        },
        {
          "id": "T0058",
          "relation": 1037,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "386677/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0070",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "318/3125",
          "sources": [
            "T0022",
            "T0033",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0129",
          "relation": 6948,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "21167/125000",
          "sources": [
            "T0041",
            "L_FOP"
          ]
        },
        {
          "id": "T0139",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "3597/12500",
          "sources": [
            "T0070",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0169",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "71583/250000",
          "sources": [
            "T0041",
            "T0052",
            "L_EGO"
          ]
        },
        {
          "id": "T0177",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "117923/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0139",
            "T0058"
          ]
        },
        {
          "id": "T0183",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "18963/125000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "T0129",
            "U_CEO"
          ]
        },
        {
          "id": "T0189",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "20767/200000",
          "sources": [
            "L_ABF",
            "T0169",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0194",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "50121/500000",
          "sources": [
            "T0189",
            "L_EGO",
            "L_AGO",
            "T0169",
            "U_AEG"
          ]
        },
        {
          "id": "T0202",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "25933/250000",
          "sources": [
            "T0177",
            "T0183",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0235",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "72433/250000",
          "sources": [
            "T0202",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0264",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "9013/31250",
          "sources": [
            "T0041",
            "T0194",
            "L_EGO"
          ]
        },
        {
          "id": "T0269",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "1477/12500",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0235",
            "T0058"
          ]
        },
        {
          "id": "T0277",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "13007/125000",
          "sources": [
            "L_ABF",
            "T0264",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0279",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "50417/500000",
          "sources": [
            "T0277",
            "L_EGO",
            "L_AGO",
            "T0264",
            "U_AEG"
          ]
        },
        {
          "id": "T0283",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "103773/1000000",
          "sources": [
            "T0269",
            "T0183",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0308",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "289773/1000000",
          "sources": [
            "T0283",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0334",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "18063/62500",
          "sources": [
            "T0041",
            "T0279",
            "L_EGO"
          ]
        },
        {
          "id": "T0338",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "23633/200000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0308",
            "T0058"
          ]
        },
        {
          "id": "T0345",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104119/1000000",
          "sources": [
            "L_ABF",
            "T0334",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0347",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "50501/500000",
          "sources": [
            "T0345",
            "L_EGO",
            "L_AGO",
            "T0334",
            "U_AEG"
          ]
        },
        {
          "id": "T0401",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "36147/125000",
          "sources": [
            "T0041",
            "T0347",
            "L_EGO"
          ]
        },
        {
          "id": "T0410",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104137/1000000",
          "sources": [
            "L_ABF",
            "T0401",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0412",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "2021/20000",
          "sources": [
            "T0410",
            "L_EGO",
            "L_AGO",
            "T0401",
            "U_AEG"
          ]
        },
        {
          "id": "T0458",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "36153/125000",
          "sources": [
            "T0041",
            "T0412",
            "L_EGO"
          ]
        },
        {
          "id": "T0467",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "52071/500000",
          "sources": [
            "L_ABF",
            "T0458",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0469",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "12633/125000",
          "sources": [
            "T0467",
            "L_EGO",
            "L_AGO",
            "T0458",
            "U_AEG"
          ]
        },
        {
          "id": "T0488",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "170337/1000000",
          "sources": [
            "T0467",
            "L_AGO"
          ]
        },
        {
          "id": "T0513",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "144619/500000",
          "sources": [
            "T0041",
            "T0469",
            "L_EGO"
          ]
        },
        {
          "id": "T0521",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104143/1000000",
          "sources": [
            "L_ABF",
            "T0513",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0522",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101067/1000000",
          "sources": [
            "T0521",
            "L_EGO",
            "L_AGO",
            "T0513",
            "U_AEG"
          ]
        },
        {
          "id": "T0526",
          "relation": 2085,
          "rule": "balance_lo",
          "triangle": "BGO",
          "side": "lo",
          "value": "51697/500000",
          "sources": [
            "T0338",
            "T0522",
            "L_ABF",
            "L_EGO",
            "L_AGO",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0562",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289241/1000000",
          "sources": [
            "T0041",
            "T0522",
            "L_EGO"
          ]
        },
        {
          "id": "T0571",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "6509/62500",
          "sources": [
            "L_ABF",
            "T0562",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0572",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "25267/250000",
          "sources": [
            "T0571",
            "L_EGO",
            "L_AGO",
            "T0562",
            "U_AEG"
          ]
        },
        {
          "id": "T0608",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "144621/500000",
          "sources": [
            "T0041",
            "T0572",
            "L_EGO"
          ]
        },
        {
          "id": "T0615",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101069/1000000",
          "sources": [
            "T0571",
            "L_EGO",
            "L_AGO",
            "T0608",
            "U_AEG"
          ]
        },
        {
          "id": "T0640",
          "relation": 21,
          "rule": "sum",
          "triangle": "BFO",
          "side": "lo",
          "value": "297463/1000000",
          "sources": [
            "L_BFG",
            "T0526",
            "T0615"
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
            "reference": "T0041",
            "value": "47587/500000"
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
        "138": {
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
              "-297463/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0640",
            "value": "297463/1000000"
          }
        },
        "222": {
          "name": "AREA_LO_EGO",
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
                4,
                6
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
                8,
                9
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
              [
                4,
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
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "224": {
          "name": "AREA_LO_AEG",
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
                4,
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
              "-170337/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "T0488",
            "value": "170337/1000000"
          }
        },
        "1002": {
          "name": "QUAD_1476",
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
              [],
              "551/1000"
            ],
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
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1476
          }
        },
        "4620": {
          "name": "LINEAR_6902",
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
                2,
                10
              ],
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "132137532733/250000000000"
            ],
            [
              [
                1,
                12
              ],
              "-132137532733/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6902
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "389591/1000000",
          "420463/1000000",
          "267129/500000",
          "572139/1000000",
          "194297/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "344953/500000",
          "907/1000",
          "279/1000",
          "445037/1000000",
          "1/1",
          "580477/1000000",
          "743773/1000000",
          "429967/500000",
          "170271/200000",
          "550537/1000000"
        ],
        "steps": [
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "175641/250000"
            ],
            "lines": [
              [
                "-56709/125000",
                "2069913/12500000"
              ],
              [
                "-56709/125000",
                "39810063/125000000"
              ],
              [
                "-18447/125000",
                "-111021/12500000"
              ],
              [
                "-18447/125000",
                "5106429/125000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "13270021/18903000"
            ],
            "new": [
              "6131/50000",
              "702007/1000000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "68291/125000",
              "106553/125000"
            ],
            "lines": [
              [
                "-57/100",
                "150684386953/500000000000"
              ],
              [
                "-57/100",
                "107897170949/250000000000"
              ],
              [
                "-907/1000",
                "241918037953/500000000000"
              ],
              [
                "-907/1000",
                "182158153949/250000000000"
              ],
              [
                "-57/100",
                "236460122531/500000000000"
              ],
              [
                "-57/100",
                "118986284023/250000000000"
              ],
              [
                "-907/1000",
                "327693773531/500000000000"
              ],
              [
                "-907/1000",
                "193247267023/250000000000"
              ]
            ],
            "raw": [
              "68291/125000",
              "193247267023/226750000000"
            ],
            "new": [
              "68291/125000",
              "852249/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "186989/1000000",
              "561103/1000000"
            ],
            "lines": [
              [
                "-98/125",
                "2999942971/25000000000"
              ],
              [
                "-98/125",
                "2432698967/7812500000"
              ],
              [
                "-546699/1000000",
                "4544993511/50000000000"
              ],
              [
                "-546699/1000000",
                "144798504669/1000000000000"
              ],
              [
                "-98/125",
                "26399244617/125000000000"
              ],
              [
                "-98/125",
                "25161356617/62500000000"
              ],
              [
                "-546699/1000000",
                "45524027079/250000000000"
              ],
              [
                "-546699/1000000",
                "47198948553/200000000000"
              ],
              [
                "-98/125",
                "8238799769/200000000000"
              ],
              [
                "-98/125",
                "3201784361/7812500000"
              ],
              [
                "-546699/1000000",
                "483846009/40000000000"
              ],
              [
                "-546699/1000000",
                "243241435101/1000000000000"
              ],
              [
                "-98/125",
                "70894609363/1000000000000"
              ],
              [
                "-98/125",
                "219764504363/500000000000"
              ],
              [
                "-546699/1000000",
                "41796760743/1000000000000"
              ],
              [
                "-546699/1000000",
                "272942045619/1000000000000"
              ]
            ],
            "raw": [
              "186989/1000000",
              "219764504363/392000000000"
            ],
            "new": [
              "186989/1000000",
              "35039/62500"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "68291/125000",
              "852249/1000000"
            ],
            "lines": [
              [
                "127447/250000",
                "-10771053557/31250000000"
              ],
              [
                "127447/250000",
                "-227211072917/500000000000"
              ],
              [
                "127447/250000",
                "-407002944183/1000000000000"
              ],
              [
                "127447/250000",
                "-516751376193/1000000000000"
              ],
              [
                "860913/1000000",
                "-267394470287/500000000000"
              ],
              [
                "860913/1000000",
                "-381958180667/500000000000"
              ],
              [
                "860913/1000000",
                "-597118170933/1000000000000"
              ],
              [
                "860913/1000000",
                "-826245591693/1000000000000"
              ],
              [
                "127447/250000",
                "-37002557333/125000000000"
              ],
              [
                "127447/250000",
                "-17421045439/62500000000"
              ],
              [
                "127447/250000",
                "-60361727151/125000000000"
              ],
              [
                "127447/250000",
                "-7275157587/15625000000"
              ],
              [
                "860913/1000000",
                "-243067842707/500000000000"
              ],
              [
                "860913/1000000",
                "-147057735631/250000000000"
              ],
              [
                "860913/1000000",
                "-336504521979/500000000000"
              ],
              [
                "860913/1000000",
                "-193776075267/250000000000"
              ]
            ],
            "raw": [
              "17421045439/31861750000",
              "852249/1000000"
            ],
            "new": [
              "546769/1000000",
              "852249/1000000"
            ]
          },
          {
            "factor": 196,
            "target": "x",
            "old": [
              "41123/100000",
              "744561/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-420463/1000000"
              ],
              [
                "1/1",
                "-62117009/125000000"
              ],
              [
                "1/1",
                "-62498741/125000000"
              ],
              [
                "1/1",
                "-576463/1000000"
              ],
              [
                "1/1",
                "-110540143/250000000"
              ],
              [
                "1/1",
                "-138691357/250000000"
              ]
            ],
            "raw": [
              "420463/1000000",
              "744561/1000000"
            ],
            "new": [
              "420463/1000000",
              "744561/1000000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "127447/250000",
              "860913/1000000"
            ],
            "lines": [
              [
                "98/125",
                "-85978514091/200000000000"
              ],
              [
                "98/125",
                "-99759320291/200000000000"
              ],
              [
                "546699/1000000",
                "-58926200091/200000000000"
              ],
              [
                "546699/1000000",
                "-56712918891/200000000000"
              ],
              [
                "98/125",
                "-546389939121/1000000000000"
              ],
              [
                "98/125",
                "-615293970121/1000000000000"
              ],
              [
                "546699/1000000",
                "-411128369121/1000000000000"
              ],
              [
                "546699/1000000",
                "-400061963121/1000000000000"
              ],
              [
                "98/125",
                "-98280301877/200000000000"
              ],
              [
                "98/125",
                "-133905313277/200000000000"
              ],
              [
                "546699/1000000",
                "-71227987877/200000000000"
              ],
              [
                "546699/1000000",
                "-90858911877/200000000000"
              ],
              [
                "98/125",
                "-542749346287/1000000000000"
              ],
              [
                "98/125",
                "-720874403287/1000000000000"
              ],
              [
                "546699/1000000",
                "-407487776287/1000000000000"
              ],
              [
                "546699/1000000",
                "-505642396287/1000000000000"
              ]
            ],
            "raw": [
              "18904306297/36446600000",
              "860913/1000000"
            ],
            "new": [
              "103737/200000",
              "860913/1000000"
            ]
          },
          {
            "factor": 224,
            "target": "z",
            "old": [
              "76043/200000",
              "581233/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-9739777/25000000"
              ],
              [
                "1/1",
                "-63170153/125000000"
              ],
              [
                "1/1",
                "-11559577/25000000"
              ],
              [
                "1/1",
                "-72269153/125000000"
              ],
              [
                "1/1",
                "-24787740069/50000000000"
              ],
              [
                "1/1",
                "-288241827957/500000000000"
              ],
              [
                "1/1",
                "-32425861919/50000000000"
              ],
              [
                "1/1",
                "-364623046457/500000000000"
              ]
            ],
            "raw": [
              "9739777/25000000",
              "581233/1000000"
            ],
            "new": [
              "389591/1000000",
              "581233/1000000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "186989/1000000",
              "35039/62500"
            ],
            "lines": [
              [
                "27646211010996459/125000000000000000",
                "-4236669716643/100000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-2657205518643/100000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-3839495219469/50000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-3049763120469/50000000000000"
              ],
              [
                "27646211010996459/125000000000000000",
                "-5548121325243/100000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-3479737527243/100000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-5028002353269/50000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-3993810454269/50000000000000"
              ],
              [
                "27646211010996459/125000000000000000",
                "-27842331685707/500000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-17462488783707/500000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-25232200420581/250000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-20042278969581/250000000000000"
              ],
              [
                "27646211010996459/125000000000000000",
                "-34399589728707/500000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-21575148826707/500000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-31174736089581/250000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-24762515638581/250000000000000"
              ]
            ],
            "raw": [
              "25311926250/132137532733",
              "35039/62500"
            ],
            "new": [
              "191557/1000000",
              "35039/62500"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "453301/1000000"
            ],
            "lines": [
              [
                "-81547/100000",
                "68795240517/500000000000"
              ],
              [
                "-81547/100000",
                "70596270561/250000000000"
              ],
              [
                "-1/1",
                "118751755707/500000000000"
              ],
              [
                "-1/1",
                "111259116831/250000000000"
              ],
              [
                "-81547/100000",
                "16913343351/500000000000"
              ],
              [
                "-81547/100000",
                "28366231083/250000000000"
              ],
              [
                "-1/1",
                "66869858541/500000000000"
              ],
              [
                "-1/1",
                "69029077353/250000000000"
              ]
            ],
            "raw": [
              "27/125",
              "111259116831/250000000000"
            ],
            "new": [
              "27/125",
              "445037/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "103737/200000",
              "860913/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "65391691/100000000"
              ],
              [
                "-877/1000",
                "754161941/1000000000"
              ],
              [
                "-721/1000",
                "56499691/100000000"
              ],
              [
                "-721/1000",
                "612669941/1000000000"
              ],
              [
                "-877/1000",
                "51455477/100000000"
              ],
              [
                "-877/1000",
                "724020827/1000000000"
              ],
              [
                "-721/1000",
                "42563477/100000000"
              ],
              [
                "-721/1000",
                "582528827/1000000000"
              ]
            ],
            "raw": [
              "103737/200000",
              "754161941/877000000"
            ],
            "new": [
              "103737/200000",
              "429967/500000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "420463/1000000",
              "744561/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "26746930149/100000000000"
              ],
              [
                "-57/100",
                "14245794417/50000000000"
              ],
              [
                "-907/1000",
                "44993660349/100000000000"
              ],
              [
                "-907/1000",
                "29097991017/50000000000"
              ],
              [
                "-57/100",
                "105987598859/250000000000"
              ],
              [
                "-57/100",
                "40671966847/125000000000"
              ],
              [
                "-907/1000",
                "151604424359/250000000000"
              ],
              [
                "-907/1000",
                "77802458347/125000000000"
              ]
            ],
            "raw": [
              "420463/1000000",
              "105987598859/142500000000"
            ],
            "new": [
              "420463/1000000",
              "743773/1000000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "702007/1000000"
            ],
            "lines": [
              [
                "-453231/1000000",
                "16534167/100000000"
              ],
              [
                "-453231/1000000",
                "318080517/1000000000"
              ],
              [
                "-147751/1000000",
                "-878193/100000000"
              ],
              [
                "-147751/1000000",
                "41010157/1000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "106026839/151077000"
            ],
            "new": [
              "6131/50000",
              "701807/1000000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "546769/1000000",
              "852249/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "151731724289/500000000000"
              ],
              [
                "-57/100",
                "108032571037/250000000000"
              ],
              [
                "-907/1000",
                "242965375289/500000000000"
              ],
              [
                "-907/1000",
                "182293554037/250000000000"
              ],
              [
                "-57/100",
                "7385946839/15625000000"
              ],
              [
                "-57/100",
                "3717877687/7812500000"
              ],
              [
                "-907/1000",
                "40947993731/62500000000"
              ],
              [
                "-907/1000",
                "24154133623/31250000000"
              ]
            ],
            "raw": [
              "546769/1000000",
              "24154133623/28343750000"
            ],
            "new": [
              "546769/1000000",
              "426093/500000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "191557/1000000",
              "35039/62500"
            ],
            "lines": [
              [
                "-98/125",
                "124133613301/1000000000000"
              ],
              [
                "-98/125",
                "39463839763/125000000000"
              ],
              [
                "-554963/1000000",
                "96049096361/1000000000000"
              ],
              [
                "-554963/1000000",
                "30994189649/200000000000"
              ],
              [
                "-98/125",
                "210991708603/1000000000000"
              ],
              [
                "-98/125",
                "201284406703/500000000000"
              ],
              [
                "-554963/1000000",
                "182907191663/1000000000000"
              ],
              [
                "-554963/1000000",
                "241829043547/1000000000000"
              ],
              [
                "-98/125",
                "21298065697/500000000000"
              ],
              [
                "-98/125",
                "25691674511/62500000000"
              ],
              [
                "-554963/1000000",
                "7255807227/500000000000"
              ],
              [
                "-554963/1000000",
                "250327022317/1000000000000"
              ],
              [
                "-98/125",
                "35461750991/500000000000"
              ],
              [
                "-98/125",
                "109848540691/250000000000"
              ],
              [
                "-554963/1000000",
                "21419492521/500000000000"
              ],
              [
                "-554963/1000000",
                "55730878581/200000000000"
              ]
            ],
            "raw": [
              "191557/1000000",
              "109848540691/196000000000"
            ],
            "new": [
              "191557/1000000",
              "140113/250000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "546769/1000000",
              "426093/500000"
            ],
            "lines": [
              [
                "103737/200000",
                "-350664777979/1000000000000"
              ],
              [
                "103737/200000",
                "-461885026699/1000000000000"
              ],
              [
                "103737/200000",
                "-412597071649/1000000000000"
              ],
              [
                "103737/200000",
                "-523817320369/1000000000000"
              ],
              [
                "429967/500000",
                "-535432684033/1000000000000"
              ],
              [
                "429967/500000",
                "-762674180263/1000000000000"
              ],
              [
                "429967/500000",
                "-597364977703/1000000000000"
              ],
              [
                "429967/500000",
                "-824606473933/1000000000000"
              ],
              [
                "103737/200000",
                "-153017377097/500000000000"
              ],
              [
                "103737/200000",
                "-36479298983/125000000000"
              ],
              [
                "103737/200000",
                "-243617245157/500000000000"
              ],
              [
                "103737/200000",
                "-29564632999/62500000000"
              ],
              [
                "429967/500000",
                "-61350332531/125000000000"
              ],
              [
                "429967/500000",
                "-148155886357/250000000000"
              ],
              [
                "429967/500000",
                "-42000149773/62500000000"
              ],
              [
                "429967/500000",
                "-193455820387/250000000000"
              ]
            ],
            "raw": [
              "36479298983/64835625000",
              "426093/500000"
            ],
            "new": [
              "281321/500000",
              "426093/500000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "103737/200000",
              "429967/500000"
            ],
            "lines": [
              [
                "98/125",
                "-435326309367/1000000000000"
              ],
              [
                "98/125",
                "-504230340367/1000000000000"
              ],
              [
                "554963/1000000",
                "-304775219367/1000000000000"
              ],
              [
                "554963/1000000",
                "-296493781367/1000000000000"
              ],
              [
                "98/125",
                "-546389939121/1000000000000"
              ],
              [
                "98/125",
                "-615293970121/1000000000000"
              ],
              [
                "554963/1000000",
                "-415838849121/1000000000000"
              ],
              [
                "554963/1000000",
                "-407557411121/1000000000000"
              ],
              [
                "98/125",
                "-493654343157/1000000000000"
              ],
              [
                "98/125",
                "-671513844157/1000000000000"
              ],
              [
                "554963/1000000",
                "-363103253157/1000000000000"
              ],
              [
                "554963/1000000",
                "-463777285157/1000000000000"
              ],
              [
                "98/125",
                "-542758197891/1000000000000"
              ],
              [
                "98/125",
                "-720617698891/1000000000000"
              ],
              [
                "554963/1000000",
                "-412207107891/1000000000000"
              ],
              [
                "554963/1000000",
                "-512881139891/1000000000000"
              ]
            ],
            "raw": [
              "296493781367/554963000000",
              "429967/500000"
            ],
            "new": [
              "267129/500000",
              "429967/500000"
            ]
          },
          {
            "factor": 1002,
            "target": "z",
            "old": [
              "389591/1000000",
              "581233/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "52817129/100000000"
              ],
              [
                "-1/1",
                "55951229/100000000"
              ],
              [
                "-1/1",
                "56646461/100000000"
              ],
              [
                "-1/1",
                "54523361/100000000"
              ],
              [
                "-1/1",
                "47194957761/100000000000"
              ],
              [
                "-1/1",
                "58047604661/100000000000"
              ],
              [
                "-1/1",
                "51024289761/100000000000"
              ],
              [
                "-1/1",
                "56619736661/100000000000"
              ],
              [
                "-1/1",
                "51101/100000"
              ],
              [
                "-1/1",
                "542351/1000000"
              ],
              [
                "-1/1",
                "57809/100000"
              ],
              [
                "-1/1",
                "556859/1000000"
              ],
              [
                "-1/1",
                "41252409/100000000"
              ],
              [
                "-1/1",
                "521050559/1000000000"
              ],
              [
                "-1/1",
                "47960409/100000000"
              ],
              [
                "-1/1",
                "535558559/1000000000"
              ]
            ],
            "raw": [
              "389591/1000000",
              "58047604661/100000000000"
            ],
            "new": [
              "389591/1000000",
              "580477/1000000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "191557/1000000",
              "140113/250000"
            ],
            "lines": [
              [
                "27646211010996459/125000000000000000",
                "-10743181976331/250000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-6738038210331/250000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-9736042363173/125000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-7733470480173/125000000000000"
              ],
              [
                "27646211010996459/125000000000000000",
                "-14021810997831/250000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-8794368231831/250000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-12707310197673/125000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-10093588814673/125000000000000"
              ],
              [
                "27646211010996459/125000000000000000",
                "-13911641279613/250000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-8725270661613/250000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-12607468544979/125000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-10014283235979/125000000000000"
              ],
              [
                "27646211010996459/125000000000000000",
                "-17190270301113/250000000000000"
              ],
              [
                "17339483457822459/125000000000000000",
                "-10781600683113/250000000000000"
              ],
              [
                "25054465443971397/62500000000000000",
                "-15578736379479/125000000000000"
              ],
              [
                "19901101667384397/62500000000000000",
                "-12374401570479/125000000000000"
              ]
            ],
            "raw": [
              "25673998500/132137532733",
              "140113/250000"
            ],
            "new": [
              "194297/1000000",
              "140113/250000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "701807/1000000"
            ],
            "lines": [
              [
                "-218679/500000",
                "7814703/50000000"
              ],
              [
                "-218679/500000",
                "151841853/500000000"
              ],
              [
                "-73907/500000",
                "-437301/50000000"
              ],
              [
                "-73907/500000",
                "20533649/500000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "50613951/72893000"
            ],
            "new": [
              "6131/50000",
              "17359/25000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "281321/500000",
              "426093/500000"
            ],
            "lines": [
              [
                "-57/100",
                "152359943269/500000000000"
              ],
              [
                "-57/100",
                "108113787377/250000000000"
              ],
              [
                "-907/1000",
                "243593594269/500000000000"
              ],
              [
                "-907/1000",
                "182374770377/250000000000"
              ],
              [
                "-57/100",
                "59077715801/125000000000"
              ],
              [
                "-57/100",
                "29741746933/62500000000"
              ],
              [
                "-907/1000",
                "81886128551/125000000000"
              ],
              [
                "-907/1000",
                "48306992683/62500000000"
              ]
            ],
            "raw": [
              "281321/500000",
              "48306992683/56687500000"
            ],
            "new": [
              "281321/500000",
              "213041/250000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "194297/1000000",
              "140113/250000"
            ],
            "lines": [
              [
                "-98/125",
                "59947991309/500000000000"
              ],
              [
                "-98/125",
                "159042539849/500000000000"
              ],
              [
                "-554963/1000000",
                "45905732839/500000000000"
              ],
              [
                "-554963/1000000",
                "79525474189/500000000000"
              ],
              [
                "-98/125",
                "101690750903/500000000000"
              ],
              [
                "-98/125",
                "200785299443/500000000000"
              ],
              [
                "-554963/1000000",
                "87648492433/500000000000"
              ],
              [
                "-554963/1000000",
                "121268233783/500000000000"
              ],
              [
                "-98/125",
                "10650501189/250000000000"
              ],
              [
                "-98/125",
                "101580602529/250000000000"
              ],
              [
                "-554963/1000000",
                "1814685977/125000000000"
              ],
              [
                "-554963/1000000",
                "61822069699/250000000000"
              ],
              [
                "-98/125",
                "17705456863/250000000000"
              ],
              [
                "-98/125",
                "108635558203/250000000000"
              ],
              [
                "-554963/1000000",
                "2671081907/62500000000"
              ],
              [
                "-554963/1000000",
                "68877025373/250000000000"
              ]
            ],
            "raw": [
              "194297/1000000",
              "108635558203/196000000000"
            ],
            "new": [
              "194297/1000000",
              "69283/125000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "281321/500000",
              "213041/250000"
            ],
            "lines": [
              [
                "267129/500000",
                "-358765223117/1000000000000"
              ],
              [
                "267129/500000",
                "-474348563507/1000000000000"
              ],
              [
                "267129/500000",
                "-421583386187/1000000000000"
              ],
              [
                "267129/500000",
                "-537166726577/1000000000000"
              ],
              [
                "429967/500000",
                "-535101190613/1000000000000"
              ],
              [
                "429967/500000",
                "-761411114243/1000000000000"
              ],
              [
                "429967/500000",
                "-597919353683/1000000000000"
              ],
              [
                "429967/500000",
                "-824229277313/1000000000000"
              ],
              [
                "267129/500000",
                "-78803833889/250000000000"
              ],
              [
                "267129/500000",
                "-4818960869/15625000000"
              ],
              [
                "267129/500000",
                "-123603607349/250000000000"
              ],
              [
                "267129/500000",
                "-30475786841/62500000000"
              ],
              [
                "429967/500000",
                "-122887825763/250000000000"
              ],
              [
                "429967/500000",
                "-37217252897/62500000000"
              ],
              [
                "429967/500000",
                "-167687599223/250000000000"
              ],
              [
                "429967/500000",
                "-24208598131/31250000000"
              ]
            ],
            "raw": [
              "2997264043/5243500000",
              "213041/250000"
            ],
            "new": [
              "114323/200000",
              "213041/250000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "17359/25000"
            ],
            "lines": [
              [
                "-85677/200000",
                "3023589/20000000"
              ],
              [
                "-85677/200000",
                "59109039/200000000"
              ],
              [
                "-36959/250000",
                "-218337/25000000"
              ],
              [
                "-36959/250000",
                "10271813/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "19703013/28559000"
            ],
            "new": [
              "6131/50000",
              "344953/500000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "114323/200000",
              "213041/250000"
            ],
            "lines": [
              [
                "-57/100",
                "152359943269/500000000000"
              ],
              [
                "-57/100",
                "108113787377/250000000000"
              ],
              [
                "-907/1000",
                "243593594269/500000000000"
              ],
              [
                "-907/1000",
                "182374770377/250000000000"
              ],
              [
                "-57/100",
                "29361512141/62500000000"
              ],
              [
                "-57/100",
                "14847946153/31250000000"
              ],
              [
                "-907/1000",
                "10191429629/15625000000"
              ],
              [
                "-907/1000",
                "6032642257/7812500000"
              ]
            ],
            "raw": [
              "114323/200000",
              "6032642257/7085937500"
            ],
            "new": [
              "114323/200000",
              "170271/200000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "194297/1000000",
              "69283/125000"
            ],
            "lines": [
              [
                "-98/125",
                "23500090367/200000000000"
              ],
              [
                "-98/125",
                "12769434509/40000000000"
              ],
              [
                "-554963/1000000",
                "17883186979/200000000000"
              ],
              [
                "-554963/1000000",
                "161221862203/1000000000000"
              ],
              [
                "-98/125",
                "39854630189/200000000000"
              ],
              [
                "-98/125",
                "80201712367/200000000000"
              ],
              [
                "-554963/1000000",
                "34237726801/200000000000"
              ],
              [
                "-554963/1000000",
                "242994561313/1000000000000"
              ],
              [
                "-98/125",
                "8563596859/200000000000"
              ],
              [
                "-98/125",
                "16129839233/40000000000"
              ],
              [
                "-554963/1000000",
                "2946693471/200000000000"
              ],
              [
                "-554963/1000000",
                "245231980303/1000000000000"
              ],
              [
                "-98/125",
                "14238446753/200000000000"
              ],
              [
                "-98/125",
                "86324046059/200000000000"
              ],
              [
                "-554963/1000000",
                "1724308673/40000000000"
              ],
              [
                "-554963/1000000",
                "273606229773/1000000000000"
              ]
            ],
            "raw": [
              "194297/1000000",
              "86324046059/156800000000"
            ],
            "new": [
              "194297/1000000",
              "550537/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "114323/200000",
              "170271/200000"
            ],
            "lines": [
              [
                "267129/500000",
                "-358765223117/1000000000000"
              ],
              [
                "267129/500000",
                "-474348563507/1000000000000"
              ],
              [
                "267129/500000",
                "-421583386187/1000000000000"
              ],
              [
                "267129/500000",
                "-537166726577/1000000000000"
              ],
              [
                "429967/500000",
                "-535101190613/1000000000000"
              ],
              [
                "429967/500000",
                "-761411114243/1000000000000"
              ],
              [
                "429967/500000",
                "-597919353683/1000000000000"
              ],
              [
                "429967/500000",
                "-824229277313/1000000000000"
              ],
              [
                "267129/500000",
                "-315666239197/1000000000000"
              ],
              [
                "267129/500000",
                "-310131541987/1000000000000"
              ],
              [
                "267129/500000",
                "-493660356667/1000000000000"
              ],
              [
                "267129/500000",
                "-488125659457/1000000000000"
              ],
              [
                "429967/500000",
                "-492002206693/1000000000000"
              ],
              [
                "429967/500000",
                "-597194092723/1000000000000"
              ],
              [
                "429967/500000",
                "-669996324163/1000000000000"
              ],
              [
                "429967/500000",
                "-775188210193/1000000000000"
              ]
            ],
            "raw": [
              "492002206693/859934000000",
              "170271/200000"
            ],
            "new": [
              "572139/1000000",
              "170271/200000"
            ]
          }
        ]
      }
    },
    {
      "id": 4,
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "389591/1000000",
          "420463/1000000",
          "267129/500000",
          "572139/1000000",
          "194297/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "344953/500000",
          "907/1000",
          "279/1000",
          "445037/1000000",
          "1",
          "580477/1000000",
          "743773/1000000",
          "429967/500000",
          "170271/200000",
          "550537/1000000"
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
        "BFG": -1,
        "EGO": -1,
        "AEG": 1,
        "AEO": 1,
        "AEP": -1
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
        },
        {
          "rule": [
            "cap",
            "CEG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CEG",
              "U_CEG",
              "42534386369/62500000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEO",
            "CGO"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "GABEO"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABG",
            "EGO",
            "BGO",
            "AGO",
            "BEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OABEG"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABO",
            "EGO",
            "BGO",
            "AGO",
            "BEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "AEF",
            [
              "G",
              "O"
            ],
            "P",
            [
              "CEF2-AEF-cap2"
            ]
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "EFP",
            "AFP"
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
        "L_AEP": {
          "triangle": "AEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAP",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "4612307751/15625000000",
              "3751408611/10000000000",
              "98775181611/250000000000",
              "11876347287/25000000000",
              "3754256283/7812500000",
              "3053514663/5000000000",
              "80399523663/125000000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "41117613/50000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEF",
            "used": [
              0,
              4,
              5
            ],
            "values": [
              "276035397/500000000",
              "323046897/500000000",
              "325699089/500000000",
              "32926899/50000000",
              "346424589/500000000",
              "37628049/50000000",
              "39045063/50000000",
              "41117613/50000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEG": {
          "triangle": "AEG",
          "side": "hi",
          "value": "9030573/25000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEG",
            "used": [
              0,
              4,
              6,
              8
            ],
            "values": [
              "-82028144209/500000000000",
              "-4105356103/50000000000",
              "-2278153/125000000",
              "-7039409709/500000000000",
              "13414855791/500000000000",
              "6820847/125000000",
              "3393517347/50000000000",
              "2438623/25000000",
              "5438943897/50000000000",
              "4258423/25000000",
              "21582597/125000000",
              "88403590291/500000000000",
              "30681597/125000000",
              "12937817347/50000000000",
              "7210773/25000000",
              "9030573/25000000"
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
              "14977597627/25000000000",
              "15524563/25000000",
              "34128062519/50000000000",
              "38358911/50000000",
              "43251427619/50000000000",
              "22403695927/25000000000",
              "229506613/250000000",
              "474822761/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "32503732861/62500000000",
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
              "15368888483/250000000000",
              "32414938233/250000000000",
              "17726459439/125000000000",
              "22553140597/125000000000",
              "11762756657/62500000000",
              "52703896609/250000000000",
              "3544024309/15625000000",
              "69749946359/250000000000",
              "78486613233/250000000000",
              "40762296939/125000000000",
              "88679430983/250000000000",
              "45588978097/125000000000",
              "115821621359/250000000000",
              "15045196141/31250000000",
              "126014439109/250000000000",
              "32503732861/62500000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "526679693/1000000000",
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
              "229445761/1000000000",
              "231080173/1000000000",
              "143517321/500000000",
              "308335083/1000000000",
              "327931671/1000000000",
              "329566083/1000000000",
              "33797223/100000000",
              "359272671/1000000000",
              "368708979/1000000000",
              "396852783/1000000000",
              "53082931/125000000",
              "445963889/1000000000",
              "467194889/1000000000",
              "495338693/1000000000",
              "126344813/250000000",
              "526679693/1000000000"
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
        "21": {
          "row": [
            "fan",
            "BFO",
            "BFG",
            "BGO",
            "FGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FBO",
            "point": "G"
          }
        },
        "35": {
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
        "46": {
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
        "350": {
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
        "501": {
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
        "533": {
          "row": [
            "plu",
            "AFG",
            "BEF",
            "ABF",
            "EFG",
            "AEF",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FABEG"
          }
        },
        "675": {
          "row": [
            "plu",
            "AEG",
            "FGO",
            "AFG",
            "EGO",
            "AGO",
            "EFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEFO"
          }
        },
        "1037": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-43317687/50000000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "43317687/50000000"
          }
        },
        "1476": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O"
            ]
          }
        },
        "2081": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CFP"
              ],
              [
                1,
                "ABF",
                "CEP"
              ],
              [
                -1,
                "ACP",
                "BEF"
              ],
              [
                1,
                "AEF",
                "BCP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "CP"
          }
        },
        "2085": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "FGO"
              ],
              [
                1,
                "ABF",
                "EGO"
              ],
              [
                -1,
                "AEF",
                "BGO"
              ],
              [
                1,
                "AGO",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "GO"
          }
        },
        "6902": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCO": "-93/1000",
              "BCP": "32503732861/62500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "32503732861/62500000000"
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
            "residual": "15066232861/62500000000"
          }
        },
        "6948": {
          "row": [
            "linear",
            {
              "CFO": "20878732861/62500000000",
              "EFO": "-93/1000",
              "FOP": "-32503732861/62500000000"
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
              "value": "32503732861/62500000000"
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
            "residual": "15066232861/62500000000"
          }
        },
        "6974": {
          "row": [
            "linear",
            {
              "AEG": "340679693/1000000000",
              "AFG": "-93/1000",
              "AGO": "-526679693/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "526679693/1000000000"
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
            "residual": "247679693/1000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0021",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "11687/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "L_ACE",
            "U_ACH"
          ]
        },
        {
          "id": "T0032",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "14053/100000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "U_CEO"
          ]
        },
        {
          "id": "T0040",
          "relation": 501,
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
          "id": "T0042",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51529/500000",
          "sources": [
            "L_ABF",
            "L_EFG",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0051",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "24591/250000",
          "sources": [
            "T0042",
            "L_EGO",
            "L_AGO",
            "L_EFG",
            "U_AEG"
          ]
        },
        {
          "id": "T0058",
          "relation": 1037,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "386677/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0072",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "102061/1000000",
          "sources": [
            "T0021",
            "T0032",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0131",
          "relation": 6948,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "42819/250000",
          "sources": [
            "T0040",
            "L_FOP"
          ]
        },
        {
          "id": "T0140",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "288061/1000000",
          "sources": [
            "T0072",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0170",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "143269/500000",
          "sources": [
            "T0040",
            "T0051",
            "L_EGO"
          ]
        },
        {
          "id": "T0178",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "117959/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0140",
            "T0058"
          ]
        },
        {
          "id": "T0184",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "154527/1000000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "T0131",
            "U_CEO"
          ]
        },
        {
          "id": "T0190",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "103857/1000000",
          "sources": [
            "L_ABF",
            "T0170",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0195",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "10051/100000",
          "sources": [
            "T0190",
            "L_EGO",
            "L_AGO",
            "T0170",
            "U_AEG"
          ]
        },
        {
          "id": "T0202",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "52059/500000",
          "sources": [
            "T0178",
            "T0184",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0237",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "145059/500000",
          "sources": [
            "T0202",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0264",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "72171/250000",
          "sources": [
            "T0040",
            "T0195",
            "L_EGO"
          ]
        },
        {
          "id": "T0269",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "118207/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0237",
            "T0058"
          ]
        },
        {
          "id": "T0277",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "20817/200000",
          "sources": [
            "L_ABF",
            "T0264",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0279",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101121/1000000",
          "sources": [
            "T0277",
            "L_EGO",
            "L_AGO",
            "T0264",
            "U_AEG"
          ]
        },
        {
          "id": "T0283",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "52081/500000",
          "sources": [
            "T0269",
            "T0184",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0308",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "145081/500000",
          "sources": [
            "T0283",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0333",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "57859/200000",
          "sources": [
            "T0040",
            "T0279",
            "L_EGO"
          ]
        },
        {
          "id": "T0337",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "29553/250000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0308",
            "T0058"
          ]
        },
        {
          "id": "T0344",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104149/1000000",
          "sources": [
            "L_ABF",
            "T0333",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0346",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "20259/200000",
          "sources": [
            "T0344",
            "L_EGO",
            "L_AGO",
            "T0333",
            "U_AEG"
          ]
        },
        {
          "id": "T0400",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289469/1000000",
          "sources": [
            "T0040",
            "T0346",
            "L_EGO"
          ]
        },
        {
          "id": "T0409",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "13021/125000",
          "sources": [
            "L_ABF",
            "T0400",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0411",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "20269/200000",
          "sources": [
            "T0409",
            "L_EGO",
            "L_AGO",
            "T0400",
            "U_AEG"
          ]
        },
        {
          "id": "T0460",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289519/1000000",
          "sources": [
            "T0040",
            "T0411",
            "L_EGO"
          ]
        },
        {
          "id": "T0469",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104173/1000000",
          "sources": [
            "L_ABF",
            "T0460",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0471",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101359/1000000",
          "sources": [
            "T0469",
            "L_EGO",
            "L_AGO",
            "T0460",
            "U_AEG"
          ]
        },
        {
          "id": "T0475",
          "relation": 2085,
          "rule": "balance_lo",
          "triangle": "BGO",
          "side": "lo",
          "value": "51721/500000",
          "sources": [
            "T0337",
            "T0471",
            "L_ABF",
            "L_EGO",
            "L_AGO",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0514",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289533/1000000",
          "sources": [
            "T0040",
            "T0471",
            "L_EGO"
          ]
        },
        {
          "id": "T0522",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "4167/40000",
          "sources": [
            "L_ABF",
            "T0514",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0523",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101363/1000000",
          "sources": [
            "T0522",
            "L_EGO",
            "L_AGO",
            "T0514",
            "U_AEG"
          ]
        },
        {
          "id": "T0542",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "172213/1000000",
          "sources": [
            "T0522",
            "L_AGO"
          ]
        },
        {
          "id": "T0567",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289537/1000000",
          "sources": [
            "T0040",
            "T0523",
            "L_EGO"
          ]
        },
        {
          "id": "T0576",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "25341/250000",
          "sources": [
            "T0522",
            "L_EGO",
            "L_AGO",
            "T0567",
            "U_AEG"
          ]
        },
        {
          "id": "T0607",
          "relation": 21,
          "rule": "sum",
          "triangle": "BFO",
          "side": "lo",
          "value": "148903/500000",
          "sources": [
            "L_BFG",
            "T0475",
            "T0576"
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
            "reference": "T0040",
            "value": "47587/500000"
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
        "138": {
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
              "-148903/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0607",
            "value": "148903/500000"
          }
        },
        "222": {
          "name": "AREA_LO_EGO",
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
                4,
                6
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
                8,
                9
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
              [
                4,
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
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "224": {
          "name": "AREA_LO_AEG",
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
                4,
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
              "-172213/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "T0542",
            "value": "172213/1000000"
          }
        },
        "1002": {
          "name": "QUAD_1476",
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
              [],
              "551/1000"
            ],
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
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1476
          }
        },
        "4620": {
          "name": "LINEAR_6902",
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
                2,
                10
              ],
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "32503732861/62500000000"
            ],
            [
              [
                1,
                12
              ],
              "-32503732861/62500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6902
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "391467/1000000",
          "210403/500000",
          "537637/1000000",
          "572421/1000000",
          "198073/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "689497/1000000",
          "907/1000",
          "279/1000",
          "443383/1000000",
          "1/1",
          "23213/40000",
          "11621/15625",
          "429949/500000",
          "212703/250000",
          "550101/1000000"
        ],
        "steps": [
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "344953/500000"
            ],
            "lines": [
              [
                "-427861/1000000",
                "15088077/100000000"
              ],
              [
                "-427861/1000000",
                "295069927/1000000000"
              ],
              [
                "-29729/200000",
                "-165447/20000000"
              ],
              [
                "-29729/200000",
                "8364203/200000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "295069927/427861000"
            ],
            "new": [
              "6131/50000",
              "17241/25000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "572139/1000000",
              "170271/200000"
            ],
            "lines": [
              [
                "-57/100",
                "152359943269/500000000000"
              ],
              [
                "-57/100",
                "108113787377/250000000000"
              ],
              [
                "-907/1000",
                "243593594269/500000000000"
              ],
              [
                "-907/1000",
                "182374770377/250000000000"
              ],
              [
                "-57/100",
                "234037581749/500000000000"
              ],
              [
                "-57/100",
                "118673097217/250000000000"
              ],
              [
                "-907/1000",
                "325271232749/500000000000"
              ],
              [
                "-907/1000",
                "192934080217/250000000000"
              ]
            ],
            "raw": [
              "572139/1000000",
              "192934080217/226750000000"
            ],
            "new": [
              "572139/1000000",
              "850867/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "194297/1000000",
              "550537/1000000"
            ],
            "lines": [
              [
                "-98/125",
                "117360559031/1000000000000"
              ],
              [
                "-98/125",
                "319298494811/1000000000000"
              ],
              [
                "-554963/1000000",
                "89276042091/1000000000000"
              ],
              [
                "-554963/1000000",
                "161345418131/1000000000000"
              ],
              [
                "-98/125",
                "199033233877/1000000000000"
              ],
              [
                "-98/125",
                "400971169657/1000000000000"
              ],
              [
                "-554963/1000000",
                "170948716937/1000000000000"
              ],
              [
                "-554963/1000000",
                "243018092977/1000000000000"
              ],
              [
                "-98/125",
                "42948266143/1000000000000"
              ],
              [
                "-98/125",
                "402930552483/1000000000000"
              ],
              [
                "-554963/1000000",
                "14863749203/1000000000000"
              ],
              [
                "-554963/1000000",
                "244977475803/1000000000000"
              ],
              [
                "-98/125",
                "71415667981/1000000000000"
              ],
              [
                "-98/125",
                "431397954321/1000000000000"
              ],
              [
                "-554963/1000000",
                "43331151041/1000000000000"
              ],
              [
                "-554963/1000000",
                "273444877641/1000000000000"
              ]
            ],
            "raw": [
              "194297/1000000",
              "431397954321/784000000000"
            ],
            "new": [
              "194297/1000000",
              "550253/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "572139/1000000",
              "850867/1000000"
            ],
            "lines": [
              [
                "267129/500000",
                "-358765223117/1000000000000"
              ],
              [
                "267129/500000",
                "-474348563507/1000000000000"
              ],
              [
                "267129/500000",
                "-421583386187/1000000000000"
              ],
              [
                "267129/500000",
                "-537166726577/1000000000000"
              ],
              [
                "429967/500000",
                "-535101190613/1000000000000"
              ],
              [
                "429967/500000",
                "-761411114243/1000000000000"
              ],
              [
                "429967/500000",
                "-597919353683/1000000000000"
              ],
              [
                "429967/500000",
                "-824229277313/1000000000000"
              ],
              [
                "267129/500000",
                "-315700598369/1000000000000"
              ],
              [
                "267129/500000",
                "-310262458319/1000000000000"
              ],
              [
                "267129/500000",
                "-493602895799/1000000000000"
              ],
              [
                "267129/500000",
                "-488164755749/1000000000000"
              ],
              [
                "429967/500000",
                "-98407313173/200000000000"
              ],
              [
                "429967/500000",
                "-119465001811/200000000000"
              ],
              [
                "429967/500000",
                "-133987772659/200000000000"
              ],
              [
                "429967/500000",
                "-155045461297/200000000000"
              ]
            ],
            "raw": [
              "98407313173/171986800000",
              "850867/1000000"
            ],
            "new": [
              "572179/1000000",
              "850867/1000000"
            ]
          },
          {
            "factor": 196,
            "target": "x",
            "old": [
              "420463/1000000",
              "743773/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-210403/500000"
              ],
              [
                "1/1",
                "-61682719/125000000"
              ],
              [
                "1/1",
                "-63018781/125000000"
              ],
              [
                "1/1",
                "-288403/500000"
              ],
              [
                "1/1",
                "-55332037/125000000"
              ],
              [
                "1/1",
                "-69369463/125000000"
              ]
            ],
            "raw": [
              "210403/500000",
              "743773/1000000"
            ],
            "new": [
              "210403/500000",
              "743773/1000000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "267129/500000",
              "429967/500000"
            ],
            "lines": [
              [
                "98/125",
                "-217694094827/500000000000"
              ],
              [
                "98/125",
                "-252203905827/500000000000"
              ],
              [
                "554963/1000000",
                "-152418549827/500000000000"
              ],
              [
                "554963/1000000",
                "-148335626327/500000000000"
              ],
              [
                "98/125",
                "-272974107769/500000000000"
              ],
              [
                "98/125",
                "-307483918769/500000000000"
              ],
              [
                "554963/1000000",
                "-207698562769/500000000000"
              ],
              [
                "554963/1000000",
                "-203615639269/500000000000"
              ],
              [
                "98/125",
                "-493654343157/1000000000000"
              ],
              [
                "98/125",
                "-671513844157/1000000000000"
              ],
              [
                "554963/1000000",
                "-363103253157/1000000000000"
              ],
              [
                "554963/1000000",
                "-463777285157/1000000000000"
              ],
              [
                "98/125",
                "-542564490279/1000000000000"
              ],
              [
                "98/125",
                "-720423991279/1000000000000"
              ],
              [
                "554963/1000000",
                "-412013400279/1000000000000"
              ],
              [
                "554963/1000000",
                "-512687432279/1000000000000"
              ]
            ],
            "raw": [
              "148335626327/277481500000",
              "429967/500000"
            ],
            "new": [
              "267289/500000",
              "429967/500000"
            ]
          },
          {
            "factor": 224,
            "target": "z",
            "old": [
              "389591/1000000",
              "580477/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-9786677/25000000"
              ],
              [
                "1/1",
                "-63404653/125000000"
              ],
              [
                "1/1",
                "-11606477/25000000"
              ],
              [
                "1/1",
                "-72503653/125000000"
              ],
              [
                "1/1",
                "-24696682653/50000000000"
              ],
              [
                "1/1",
                "-287941409709/500000000000"
              ],
              [
                "1/1",
                "-32195556103/50000000000"
              ],
              [
                "1/1",
                "-362930144209/500000000000"
              ]
            ],
            "raw": [
              "9786677/25000000",
              "580477/1000000"
            ],
            "new": [
              "391467/1000000",
              "580477/1000000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "194297/1000000",
              "550253/1000000"
            ],
            "lines": [
              [
                "6800528500377003/31250000000000000",
                "-10746295214571/250000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-6739990808571/250000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-9738863745093/125000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-7735711542093/125000000000000"
              ],
              [
                "6800528500377003/31250000000000000",
                "-14024924236071/250000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-8796320830071/250000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-12710131579593/125000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-10095829876593/125000000000000"
              ],
              [
                "6800528500377003/31250000000000000",
                "-13911641279613/250000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-8725270661613/250000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-12607468544979/125000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-10014283235979/125000000000000"
              ],
              [
                "6800528500377003/31250000000000000",
                "-17190270301113/250000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-10781600683113/250000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-15578736379479/125000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-12374401570479/125000000000000"
              ]
            ],
            "raw": [
              "6420359625/32503732861",
              "550253/1000000"
            ],
            "new": [
              "98763/500000",
              "550253/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "445037/1000000"
            ],
            "lines": [
              [
                "-81547/100000",
                "68287364169/500000000000"
              ],
              [
                "-81547/100000",
                "70182877077/250000000000"
              ],
              [
                "-1/1",
                "118243879359/500000000000"
              ],
              [
                "-1/1",
                "110845723347/250000000000"
              ],
              [
                "-81547/100000",
                "17118009939/500000000000"
              ],
              [
                "-81547/100000",
                "28532822487/250000000000"
              ],
              [
                "-1/1",
                "67074525129/500000000000"
              ],
              [
                "-1/1",
                "69195668757/250000000000"
              ]
            ],
            "raw": [
              "27/125",
              "110845723347/250000000000"
            ],
            "new": [
              "27/125",
              "443383/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "267289/500000",
              "429967/500000"
            ],
            "lines": [
              [
                "-877/1000",
                "32688471/50000000"
              ],
              [
                "-877/1000",
                "377065021/500000000"
              ],
              [
                "-721/1000",
                "28242471/50000000"
              ],
              [
                "-721/1000",
                "306319021/500000000"
              ],
              [
                "-877/1000",
                "51489361/100000000"
              ],
              [
                "-877/1000",
                "724094111/1000000000"
              ],
              [
                "-721/1000",
                "42597361/100000000"
              ],
              [
                "-721/1000",
                "582602111/1000000000"
              ]
            ],
            "raw": [
              "267289/500000",
              "377065021/438500000"
            ],
            "new": [
              "267289/500000",
              "429949/500000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "210403/500000",
              "743773/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "68689275053/250000000000"
              ],
              [
                "-57/100",
                "35850028249/125000000000"
              ],
              [
                "-907/1000",
                "114306100553/250000000000"
              ],
              [
                "-907/1000",
                "72980519749/125000000000"
              ],
              [
                "-57/100",
                "105983471873/250000000000"
              ],
              [
                "-57/100",
                "40671433309/125000000000"
              ],
              [
                "-907/1000",
                "151600297373/250000000000"
              ],
              [
                "-907/1000",
                "77801924809/125000000000"
              ]
            ],
            "raw": [
              "210403/500000",
              "5578077467/7500000000"
            ],
            "new": [
              "210403/500000",
              "11621/15625"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "17241/25000"
            ],
            "lines": [
              [
                "-427821/1000000",
                "15085797/100000000"
              ],
              [
                "-427821/1000000",
                "295033647/1000000000"
              ],
              [
                "-149133/1000000",
                "-799419/100000000"
              ],
              [
                "-149133/1000000",
                "42263631/1000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "98344549/142607000"
            ],
            "new": [
              "6131/50000",
              "34481/50000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "572179/1000000",
              "850867/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "76550139351/250000000000"
              ],
              [
                "-57/100",
                "54104749083/125000000000"
              ],
              [
                "-907/1000",
                "122166964851/250000000000"
              ],
              [
                "-907/1000",
                "91235240583/125000000000"
              ],
              [
                "-57/100",
                "233972467081/500000000000"
              ],
              [
                "-57/100",
                "118664679173/250000000000"
              ],
              [
                "-907/1000",
                "325206118081/500000000000"
              ],
              [
                "-907/1000",
                "192925662173/250000000000"
              ]
            ],
            "raw": [
              "572179/1000000",
              "192925662173/226750000000"
            ],
            "new": [
              "572179/1000000",
              "85083/100000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "98763/500000",
              "550253/1000000"
            ],
            "lines": [
              [
                "-98/125",
                "118152472387/1000000000000"
              ],
              [
                "-98/125",
                "320105965387/1000000000000"
              ],
              [
                "-556617/1000000",
                "90270768927/1000000000000"
              ],
              [
                "-556617/1000000",
                "163298100927/1000000000000"
              ],
              [
                "-98/125",
                "199014919597/1000000000000"
              ],
              [
                "-98/125",
                "400968412597/1000000000000"
              ],
              [
                "-556617/1000000",
                "171133216137/1000000000000"
              ],
              [
                "-556617/1000000",
                "244160548137/1000000000000"
              ],
              [
                "-98/125",
                "4323798699/100000000000"
              ],
              [
                "-98/125",
                "40318659699/100000000000"
              ],
              [
                "-556617/1000000",
                "1535628353/100000000000"
              ],
              [
                "-556617/1000000",
                "24637873253/100000000000"
              ],
              [
                "-98/125",
                "7143260869/100000000000"
              ],
              [
                "-98/125",
                "43138121869/100000000000"
              ],
              [
                "-556617/1000000",
                "4355090523/100000000000"
              ],
              [
                "-556617/1000000",
                "27457335423/100000000000"
              ]
            ],
            "raw": [
              "98763/500000",
              "43138121869/78400000000"
            ],
            "new": [
              "98763/500000",
              "68779/125000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "572179/1000000",
              "85083/100000"
            ],
            "lines": [
              [
                "267289/500000",
                "-89653895787/250000000000"
              ],
              [
                "267289/500000",
                "-118302473157/250000000000"
              ],
              [
                "267289/500000",
                "-52800529317/125000000000"
              ],
              [
                "267289/500000",
                "-33562409001/62500000000"
              ],
              [
                "429949/500000",
                "-133689698967/250000000000"
              ],
              [
                "429949/500000",
                "-189989663037/250000000000"
              ],
              [
                "429949/500000",
                "-74818430907/125000000000"
              ],
              [
                "429949/500000",
                "-51484206471/62500000000"
              ],
              [
                "267289/500000",
                "-79016282827/250000000000"
              ],
              [
                "267289/500000",
                "-38842865981/125000000000"
              ],
              [
                "267289/500000",
                "-123438988231/250000000000"
              ],
              [
                "267289/500000",
                "-61054218683/125000000000"
              ],
              [
                "429949/500000",
                "-123052086007/250000000000"
              ],
              [
                "429949/500000",
                "-74686460921/125000000000"
              ],
              [
                "429949/500000",
                "-167474791411/250000000000"
              ],
              [
                "429949/500000",
                "-96897813623/125000000000"
              ]
            ],
            "raw": [
              "123052086007/214974500000",
              "85083/100000"
            ],
            "new": [
              "572403/1000000",
              "85083/100000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "267289/500000",
              "429949/500000"
            ],
            "lines": [
              [
                "98/125",
                "-218237378799/500000000000"
              ],
              [
                "98/125",
                "-252747189799/500000000000"
              ],
              [
                "556617/1000000",
                "-153433223799/500000000000"
              ],
              [
                "556617/1000000",
                "-149628999299/500000000000"
              ],
              [
                "98/125",
                "-272974107769/500000000000"
              ],
              [
                "98/125",
                "-307483918769/500000000000"
              ],
              [
                "556617/1000000",
                "-208169952769/500000000000"
              ],
              [
                "556617/1000000",
                "-204365728269/500000000000"
              ],
              [
                "98/125",
                "-1930194717/3906250000"
              ],
              [
                "98/125",
                "-2624920217/3906250000"
              ],
              [
                "556617/1000000",
                "-22782596097/62500000000"
              ],
              [
                "556617/1000000",
                "-58217899319/125000000000"
              ],
              [
                "98/125",
                "-2119393727/3906250000"
              ],
              [
                "98/125",
                "-2814119227/3906250000"
              ],
              [
                "556617/1000000",
                "-25809780257/62500000000"
              ],
              [
                "556617/1000000",
                "-64272267639/125000000000"
              ]
            ],
            "raw": [
              "149628999299/278308500000",
              "429949/500000"
            ],
            "new": [
              "537637/1000000",
              "429949/500000"
            ]
          },
          {
            "factor": 1002,
            "target": "z",
            "old": [
              "391467/1000000",
              "580477/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "52817129/100000000"
              ],
              [
                "-1/1",
                "55951229/100000000"
              ],
              [
                "-1/1",
                "56646461/100000000"
              ],
              [
                "-1/1",
                "54523361/100000000"
              ],
              [
                "-1/1",
                "47235558499/100000000000"
              ],
              [
                "-1/1",
                "58032465599/100000000000"
              ],
              [
                "-1/1",
                "51064890499/100000000000"
              ],
              [
                "-1/1",
                "56604597599/100000000000"
              ],
              [
                "-1/1",
                "51101/100000"
              ],
              [
                "-1/1",
                "542351/1000000"
              ],
              [
                "-1/1",
                "57809/100000"
              ],
              [
                "-1/1",
                "556859/1000000"
              ],
              [
                "-1/1",
                "41323531/100000000"
              ],
              [
                "-1/1",
                "521204381/1000000000"
              ],
              [
                "-1/1",
                "48031531/100000000"
              ],
              [
                "-1/1",
                "535712381/1000000000"
              ]
            ],
            "raw": [
              "391467/1000000",
              "58032465599/100000000000"
            ],
            "new": [
              "391467/1000000",
              "23213/40000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "98763/500000",
              "68779/125000"
            ],
            "lines": [
              [
                "6800528500377003/31250000000000000",
                "-21552111652743/500000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-13517312854743/500000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-19531668785769/250000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-15514269386769/250000000000000"
              ],
              [
                "6800528500377003/31250000000000000",
                "-28109369695743/500000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-17629972897743/500000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-25474204454769/250000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-20234506055769/250000000000000"
              ],
              [
                "6800528500377003/31250000000000000",
                "-13911291040311/250000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-8725050994311/250000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-12607151139513/125000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-10014031116513/125000000000000"
              ],
              [
                "6800528500377003/31250000000000000",
                "-17189920061811/250000000000000"
              ],
              [
                "4265237337219003/31250000000000000",
                "-10781381015811/250000000000000"
              ],
              [
                "6163000284041349/15625000000000000",
                "-15578418974013/125000000000000"
              ],
              [
                "4895354702462349/15625000000000000",
                "-12374149451013/125000000000000"
              ]
            ],
            "raw": [
              "12876280125/65007465722",
              "68779/125000"
            ],
            "new": [
              "198073/1000000",
              "68779/125000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "34481/50000"
            ],
            "lines": [
              [
                "-427597/1000000",
                "15073029/100000000"
              ],
              [
                "-427597/1000000",
                "294830479/1000000000"
              ],
              [
                "-14917/100000",
                "-79731/10000000"
              ],
              [
                "-14917/100000",
                "4229719/100000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "294830479/427597000"
            ],
            "new": [
              "6131/50000",
              "344753/500000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "572403/1000000",
              "85083/100000"
            ],
            "lines": [
              [
                "-57/100",
                "153225693221/500000000000"
              ],
              [
                "-57/100",
                "108225711793/250000000000"
              ],
              [
                "-907/1000",
                "244459344221/500000000000"
              ],
              [
                "-907/1000",
                "182486694793/250000000000"
              ],
              [
                "-57/100",
                "29245956533/62500000000"
              ],
              [
                "-57/100",
                "14833007089/31250000000"
              ],
              [
                "-907/1000",
                "10162540727/15625000000"
              ],
              [
                "-907/1000",
                "6028907491/7812500000"
              ]
            ],
            "raw": [
              "572403/1000000",
              "6028907491/7085937500"
            ],
            "new": [
              "572403/1000000",
              "212707/250000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "198073/1000000",
              "68779/125000"
            ],
            "lines": [
              [
                "-98/125",
                "118092250659/1000000000000"
              ],
              [
                "-98/125",
                "320132121717/1000000000000"
              ],
              [
                "-556617/1000000",
                "90210547199/1000000000000"
              ],
              [
                "-556617/1000000",
                "163350178919/1000000000000"
              ],
              [
                "-98/125",
                "39769472977/200000000000"
              ],
              [
                "-98/125",
                "400887235943/1000000000000"
              ],
              [
                "-556617/1000000",
                "6838626457/40000000000"
              ],
              [
                "-556617/1000000",
                "48821058629/200000000000"
              ],
              [
                "-98/125",
                "10809631171/250000000000"
              ],
              [
                "-98/125",
                "100778407573/250000000000"
              ],
              [
                "-556617/1000000",
                "1919602653/125000000000"
              ],
              [
                "-556617/1000000",
                "123165843747/500000000000"
              ],
              [
                "-98/125",
                "3570542513/50000000000"
              ],
              [
                "-98/125",
                "107821488967/250000000000"
              ],
              [
                "-556617/1000000",
                "108822867/2500000000"
              ],
              [
                "-556617/1000000",
                "27450401307/100000000000"
              ]
            ],
            "raw": [
              "198073/1000000",
              "107821488967/196000000000"
            ],
            "new": [
              "198073/1000000",
              "55011/100000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "572403/1000000",
              "212707/250000"
            ],
            "lines": [
              [
                "537637/1000000",
                "-180102938191/500000000000"
              ],
              [
                "537637/1000000",
                "-237827120371/500000000000"
              ],
              [
                "537637/1000000",
                "-53021396857/125000000000"
              ],
              [
                "537637/1000000",
                "-33726221201/62500000000"
              ],
              [
                "429949/500000",
                "-133673201447/250000000000"
              ],
              [
                "429949/500000",
                "-379853343769/500000000000"
              ],
              [
                "429949/500000",
                "-299329052131/500000000000"
              ],
              [
                "429949/500000",
                "-205917996503/250000000000"
              ],
              [
                "537637/1000000",
                "-158868066351/500000000000"
              ],
              [
                "537637/1000000",
                "-39186929679/125000000000"
              ],
              [
                "537637/1000000",
                "-247693777941/500000000000"
              ],
              [
                "537637/1000000",
                "-122786715153/250000000000"
              ],
              [
                "429949/500000",
                "-123055765527/250000000000"
              ],
              [
                "429949/500000",
                "-149386971057/250000000000"
              ],
              [
                "429949/500000",
                "-83734310661/125000000000"
              ],
              [
                "429949/500000",
                "-48449956713/62500000000"
              ]
            ],
            "raw": [
              "123055765527/214974500000",
              "212707/250000"
            ],
            "new": [
              "28621/50000",
              "212707/250000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "344753/500000"
            ],
            "lines": [
              [
                "-21379/50000",
                "753603/5000000"
              ],
              [
                "-21379/50000",
                "14740753/50000000"
              ],
              [
                "-37293/250000",
                "-199299/25000000"
              ],
              [
                "-37293/250000",
                "10574751/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "14740753/21379000"
            ],
            "new": [
              "6131/50000",
              "689497/1000000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "28621/50000",
              "212707/250000"
            ],
            "lines": [
              [
                "-57/100",
                "153225693221/500000000000"
              ],
              [
                "-57/100",
                "108225711793/250000000000"
              ],
              [
                "-907/1000",
                "244459344221/500000000000"
              ],
              [
                "-907/1000",
                "182486694793/250000000000"
              ],
              [
                "-57/100",
                "23393968047/50000000000"
              ],
              [
                "-57/100",
                "11866044051/25000000000"
              ],
              [
                "-907/1000",
                "32517333147/50000000000"
              ],
              [
                "-907/1000",
                "19292142351/25000000000"
              ]
            ],
            "raw": [
              "28621/50000",
              "19292142351/22675000000"
            ],
            "new": [
              "28621/50000",
              "212703/250000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "198073/1000000",
              "55011/100000"
            ],
            "lines": [
              [
                "-98/125",
                "5904384013/50000000000"
              ],
              [
                "-98/125",
                "1600669903/5000000000"
              ],
              [
                "-556617/1000000",
                "112757471/1250000000"
              ],
              [
                "-556617/1000000",
                "163354084249/1000000000000"
              ],
              [
                "-98/125",
                "1988395839/10000000000"
              ],
              [
                "-98/125",
                "5011073553/12500000000"
              ],
              [
                "-556617/1000000",
                "4273947011/25000000000"
              ],
              [
                "-556617/1000000",
                "244105987889/1000000000000"
              ],
              [
                "-98/125",
                "10810706559/250000000000"
              ],
              [
                "-98/125",
                "10077578709/25000000000"
              ],
              [
                "-556617/1000000",
                "1920140347/125000000000"
              ],
              [
                "-556617/1000000",
                "246323252009/1000000000000"
              ],
              [
                "-98/125",
                "3570908677/50000000000"
              ],
              [
                "-98/125",
                "26954905979/62500000000"
              ],
              [
                "-556617/1000000",
                "136051469/3125000000"
              ],
              [
                "-556617/1000000",
                "274498599313/1000000000000"
              ]
            ],
            "raw": [
              "198073/1000000",
              "26954905979/49000000000"
            ],
            "new": [
              "198073/1000000",
              "550101/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "28621/50000",
              "212703/250000"
            ],
            "lines": [
              [
                "537637/1000000",
                "-180102938191/500000000000"
              ],
              [
                "537637/1000000",
                "-237827120371/500000000000"
              ],
              [
                "537637/1000000",
                "-53021396857/125000000000"
              ],
              [
                "537637/1000000",
                "-33726221201/62500000000"
              ],
              [
                "429949/500000",
                "-133673201447/250000000000"
              ],
              [
                "429949/500000",
                "-379853343769/500000000000"
              ],
              [
                "429949/500000",
                "-299329052131/500000000000"
              ],
              [
                "429949/500000",
                "-205917996503/250000000000"
              ],
              [
                "537637/1000000",
                "-158868609231/500000000000"
              ],
              [
                "537637/1000000",
                "-156749791551/500000000000"
              ],
              [
                "537637/1000000",
                "-619232169/1250000000"
              ],
              [
                "537637/1000000",
                "-383709453/781250000"
              ],
              [
                "429949/500000",
                "-123056036967/250000000000"
              ],
              [
                "429949/500000",
                "-298776014949/500000000000"
              ],
              [
                "429949/500000",
                "-334936332303/500000000000"
              ],
              [
                "429949/500000",
                "-193800136659/250000000000"
              ]
            ],
            "raw": [
              "123056036967/214974500000",
              "212703/250000"
            ],
            "new": [
              "572421/1000000",
              "212703/250000"
            ]
          }
        ]
      }
    },
    {
      "id": 5,
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "391467/1000000",
          "210403/500000",
          "537637/1000000",
          "572421/1000000",
          "198073/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "689497/1000000",
          "907/1000",
          "279/1000",
          "443383/1000000",
          "1",
          "23213/40000",
          "11621/15625",
          "429949/500000",
          "212703/250000",
          "550101/1000000"
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
        "BFG": -1,
        "EGO": -1,
        "AEG": 1,
        "AEO": 1,
        "AEP": -1
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
        },
        {
          "rule": [
            "cap",
            "CEG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CEG",
              "U_CEG",
              "42534386369/62500000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEO",
            "CGO"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "GABEO"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABG",
            "EGO",
            "BGO",
            "AGO",
            "BEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OABEG"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABO",
            "EGO",
            "BGO",
            "AGO",
            "BEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "AEF",
            [
              "G",
              "O"
            ],
            "P",
            [
              "CEF2-AEF-cap2"
            ]
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "EFP",
            "AFP"
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
        "L_AEP": {
          "triangle": "AEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAP",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "4612307751/15625000000",
              "3751408611/10000000000",
              "98775181611/250000000000",
              "11876347287/25000000000",
              "3754256283/7812500000",
              "3053514663/5000000000",
              "80399523663/125000000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "41117613/50000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEF",
            "used": [
              0,
              4,
              5
            ],
            "values": [
              "276035397/500000000",
              "323046897/500000000",
              "325699089/500000000",
              "32926899/50000000",
              "346424589/500000000",
              "37628049/50000000",
              "39045063/50000000",
              "41117613/50000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEG": {
          "triangle": "AEG",
          "side": "hi",
          "value": "9026773/25000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEG",
            "used": [
              0,
              4,
              6,
              8
            ],
            "values": [
              "-80563581731/500000000000",
              "-3946687877/50000000000",
              "-2043653/125000000",
              "-5853546231/500000000000",
              "13865418269/500000000000",
              "7055347/125000000",
              "3524315673/50000000000",
              "2485523/25000000",
              "5496212123/50000000000",
              "4305323/25000000",
              "21563597/125000000",
              "88575453769/500000000000",
              "30662597/125000000",
              "12967215673/50000000000",
              "7206973/25000000",
              "9026773/25000000"
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
              "14977597627/25000000000",
              "15524563/25000000",
              "34128062519/50000000000",
              "38358911/50000000",
              "43251427619/50000000000",
              "22403695927/25000000000",
              "229506613/250000000",
              "474822761/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "64968044559/125000000000",
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
              "31525655449/500000000000",
              "65612868449/500000000000",
              "35557208317/250000000000",
              "22554673309/125000000000",
              "47157759317/250000000000",
              "52706345373/250000000000",
              "28354948809/125000000000",
              "69749951873/250000000000",
              "157650198449/500000000000",
              "81575873317/250000000000",
              "177978038449/500000000000",
              "45564005809/125000000000",
              "115768616873/250000000000",
              "120383950817/250000000000",
              "125932536873/250000000000",
              "64968044559/125000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "525034441/1000000000",
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
              "46058057/200000000",
              "46380197/200000000",
              "35912257/125000000",
              "12337787/40000000",
              "13122599/40000000",
              "13187027/40000000",
              "84564839/250000000",
              "14376239/40000000",
              "368067603/1000000000",
              "395918751/1000000000",
              "211732337/500000000",
              "444611293/1000000000",
              "465842293/1000000000",
              "493693441/1000000000",
              "251943911/500000000",
              "525034441/1000000000"
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
        "21": {
          "row": [
            "fan",
            "BFO",
            "BFG",
            "BGO",
            "FGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FBO",
            "point": "G"
          }
        },
        "35": {
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
        "46": {
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
        "350": {
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
        "501": {
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
        "533": {
          "row": [
            "plu",
            "AFG",
            "BEF",
            "ABF",
            "EFG",
            "AEF",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FABEG"
          }
        },
        "675": {
          "row": [
            "plu",
            "AEG",
            "FGO",
            "AFG",
            "EGO",
            "AGO",
            "EFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEFO"
          }
        },
        "1037": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-43317687/50000000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "43317687/50000000"
          }
        },
        "1476": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O"
            ]
          }
        },
        "2081": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CFP"
              ],
              [
                1,
                "ABF",
                "CEP"
              ],
              [
                -1,
                "ACP",
                "BEF"
              ],
              [
                1,
                "AEF",
                "BCP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "CP"
          }
        },
        "2085": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "FGO"
              ],
              [
                1,
                "ABF",
                "EGO"
              ],
              [
                -1,
                "AEF",
                "BGO"
              ],
              [
                1,
                "AGO",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "GO"
          }
        },
        "6902": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCO": "-93/1000",
              "BCP": "64968044559/125000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "64968044559/125000000000"
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
            "residual": "30093044559/125000000000"
          }
        },
        "6948": {
          "row": [
            "linear",
            {
              "CFO": "41718044559/125000000000",
              "EFO": "-93/1000",
              "FOP": "-64968044559/125000000000"
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
              "value": "64968044559/125000000000"
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
            "residual": "30093044559/125000000000"
          }
        },
        "6974": {
          "row": [
            "linear",
            {
              "AEG": "339034441/1000000000",
              "AFG": "-93/1000",
              "AGO": "-525034441/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "525034441/1000000000"
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
            "residual": "246034441/1000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0021",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "11687/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "L_ACE",
            "U_ACH"
          ]
        },
        {
          "id": "T0032",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "28123/200000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "U_CEO"
          ]
        },
        {
          "id": "T0040",
          "relation": 501,
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
          "id": "T0042",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51529/500000",
          "sources": [
            "L_ABF",
            "L_EFG",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0051",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "19681/200000",
          "sources": [
            "T0042",
            "L_EGO",
            "L_AGO",
            "L_EFG",
            "U_AEG"
          ]
        },
        {
          "id": "T0058",
          "relation": 1037,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "386677/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0072",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "12759/125000",
          "sources": [
            "T0021",
            "T0032",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0131",
          "relation": 6948,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "3427/20000",
          "sources": [
            "T0040",
            "L_FOP"
          ]
        },
        {
          "id": "T0141",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "36009/125000",
          "sources": [
            "T0072",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0171",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "286579/1000000",
          "sources": [
            "T0040",
            "T0051",
            "L_EGO"
          ]
        },
        {
          "id": "T0179",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "117961/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0141",
            "T0058"
          ]
        },
        {
          "id": "T0185",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "77317/500000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "T0131",
            "U_CEO"
          ]
        },
        {
          "id": "T0191",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "103861/1000000",
          "sources": [
            "L_ABF",
            "T0171",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0196",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "25141/250000",
          "sources": [
            "T0191",
            "L_EGO",
            "L_AGO",
            "T0171",
            "U_AEG"
          ]
        },
        {
          "id": "T0203",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "104133/1000000",
          "sources": [
            "T0179",
            "T0185",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0238",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "290133/1000000",
          "sources": [
            "T0203",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0265",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "144369/500000",
          "sources": [
            "T0040",
            "T0196",
            "L_EGO"
          ]
        },
        {
          "id": "T0270",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "118209/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0238",
            "T0058"
          ]
        },
        {
          "id": "T0278",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "10409/100000",
          "sources": [
            "L_ABF",
            "T0265",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0280",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101179/1000000",
          "sources": [
            "T0278",
            "L_EGO",
            "L_AGO",
            "T0265",
            "U_AEG"
          ]
        },
        {
          "id": "T0284",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "6511/62500",
          "sources": [
            "T0270",
            "T0185",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0309",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "4534/15625",
          "sources": [
            "T0284",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0334",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289353/1000000",
          "sources": [
            "T0040",
            "T0280",
            "L_EGO"
          ]
        },
        {
          "id": "T0338",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "59107/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0309",
            "T0058"
          ]
        },
        {
          "id": "T0345",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "26039/250000",
          "sources": [
            "L_ABF",
            "T0334",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0347",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "50677/500000",
          "sources": [
            "T0345",
            "L_EGO",
            "L_AGO",
            "T0334",
            "U_AEG"
          ]
        },
        {
          "id": "T0401",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "36191/125000",
          "sources": [
            "T0040",
            "T0347",
            "L_EGO"
          ]
        },
        {
          "id": "T0410",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "52087/500000",
          "sources": [
            "L_ABF",
            "T0401",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0412",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "25351/250000",
          "sources": [
            "T0410",
            "L_EGO",
            "L_AGO",
            "T0401",
            "U_AEG"
          ]
        },
        {
          "id": "T0460",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "144789/500000",
          "sources": [
            "T0040",
            "T0412",
            "L_EGO"
          ]
        },
        {
          "id": "T0469",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104179/1000000",
          "sources": [
            "L_ABF",
            "T0460",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0471",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "50709/500000",
          "sources": [
            "T0469",
            "L_EGO",
            "L_AGO",
            "T0460",
            "U_AEG"
          ]
        },
        {
          "id": "T0514",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "36199/125000",
          "sources": [
            "T0040",
            "T0471",
            "L_EGO"
          ]
        },
        {
          "id": "T0522",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104181/1000000",
          "sources": [
            "L_ABF",
            "T0514",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0523",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "50711/500000",
          "sources": [
            "T0522",
            "L_EGO",
            "L_AGO",
            "T0514",
            "U_AEG"
          ]
        },
        {
          "id": "T0527",
          "relation": 2085,
          "rule": "balance_lo",
          "triangle": "BGO",
          "side": "lo",
          "value": "103451/1000000",
          "sources": [
            "T0338",
            "T0523",
            "L_ABF",
            "L_EGO",
            "L_AGO",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0540",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "172599/1000000",
          "sources": [
            "T0522",
            "L_AGO"
          ]
        },
        {
          "id": "T0563",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "72399/250000",
          "sources": [
            "T0040",
            "T0523",
            "L_EGO"
          ]
        },
        {
          "id": "T0571",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "6339/62500",
          "sources": [
            "T0522",
            "L_EGO",
            "L_AGO",
            "T0563",
            "U_AEG"
          ]
        },
        {
          "id": "T0603",
          "relation": 21,
          "rule": "sum",
          "triangle": "BFO",
          "side": "lo",
          "value": "2383/8000",
          "sources": [
            "L_BFG",
            "T0527",
            "T0571"
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
            "reference": "T0040",
            "value": "47587/500000"
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
        "138": {
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
              "-2383/8000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0603",
            "value": "2383/8000"
          }
        },
        "222": {
          "name": "AREA_LO_EGO",
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
                4,
                6
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
                8,
                9
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
              [
                4,
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
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "224": {
          "name": "AREA_LO_AEG",
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
                4,
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
              "-172599/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "T0540",
            "value": "172599/1000000"
          }
        },
        "1002": {
          "name": "QUAD_1476",
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
              [],
              "551/1000"
            ],
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
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1476
          }
        },
        "4620": {
          "name": "LINEAR_6902",
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
                2,
                10
              ],
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "64968044559/125000000000"
            ],
            [
              [
                1,
                12
              ],
              "-64968044559/125000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6902
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "391853/1000000",
          "3367/8000",
          "538327/1000000",
          "572469/1000000",
          "198317/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "10773/15625",
          "907/1000",
          "279/1000",
          "443043/1000000",
          "1/1",
          "290147/500000",
          "743739/1000000",
          "859891/1000000",
          "850807/1000000",
          "275037/500000"
        ],
        "steps": [
          {
            "factor": 120,
            "target": "u",
            "old": [
              "572421/1000000",
              "212703/250000"
            ],
            "lines": [
              [
                "-57/100",
                "153225693221/500000000000"
              ],
              [
                "-57/100",
                "108225711793/250000000000"
              ],
              [
                "-907/1000",
                "244459344221/500000000000"
              ],
              [
                "-907/1000",
                "182486694793/250000000000"
              ],
              [
                "-57/100",
                "233937616977/500000000000"
              ],
              [
                "-57/100",
                "118660173741/250000000000"
              ],
              [
                "-907/1000",
                "325171267977/500000000000"
              ],
              [
                "-907/1000",
                "192921156741/250000000000"
              ]
            ],
            "raw": [
              "572421/1000000",
              "192921156741/226750000000"
            ],
            "new": [
              "572421/1000000",
              "85081/100000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "198073/1000000",
              "550101/1000000"
            ],
            "lines": [
              [
                "-98/125",
                "118087411413/1000000000000"
              ],
              [
                "-98/125",
                "32013427863/100000000000"
              ],
              [
                "-556617/1000000",
                "90205707953/1000000000000"
              ],
              [
                "-556617/1000000",
                "163354382279/1000000000000"
              ],
              [
                "-98/125",
                "39767825239/200000000000"
              ],
              [
                "-98/125",
                "100221498353/250000000000"
              ],
              [
                "-556617/1000000",
                "34191484547/200000000000"
              ],
              [
                "-556617/1000000",
                "244106097061/1000000000000"
              ],
              [
                "-98/125",
                "4324336393/100000000000"
              ],
              [
                "-98/125",
                "4031025523/10000000000"
              ],
              [
                "-556617/1000000",
                "1536166047/100000000000"
              ],
              [
                "-556617/1000000",
                "246322655949/1000000000000"
              ],
              [
                "-98/125",
                "1428381779/20000000000"
              ],
              [
                "-98/125",
                "10781956933/25000000000"
              ],
              [
                "-556617/1000000",
                "4353738549/100000000000"
              ],
              [
                "-556617/1000000",
                "274498380969/1000000000000"
              ]
            ],
            "raw": [
              "198073/1000000",
              "10781956933/19600000000"
            ],
            "new": [
              "198073/1000000",
              "5501/10000"
            ]
          },
          {
            "factor": 196,
            "target": "x",
            "old": [
              "210403/500000",
              "11621/15625"
            ],
            "lines": [
              [
                "1/1",
                "-3367/8000"
              ],
              [
                "1/1",
                "-123250907/250000000"
              ],
              [
                "1/1",
                "-126186593/250000000"
              ],
              [
                "1/1",
                "-923/1600"
              ],
              [
                "1/1",
                "-13835341/31250000"
              ],
              [
                "1/1",
                "-34688693/62500000"
              ]
            ],
            "raw": [
              "3367/8000",
              "11621/15625"
            ],
            "new": [
              "3367/8000",
              "11621/15625"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "537637/1000000",
              "429949/500000"
            ],
            "lines": [
              [
                "98/125",
                "-3491896611/8000000000"
              ],
              [
                "98/125",
                "-4044239611/8000000000"
              ],
              [
                "556617/1000000",
                "-2455030131/8000000000"
              ],
              [
                "556617/1000000",
                "-2394348563/8000000000"
              ],
              [
                "98/125",
                "-174675029/320000000"
              ],
              [
                "98/125",
                "-196768749/320000000"
              ],
              [
                "556617/1000000",
                "-666001849/1600000000"
              ],
              [
                "556617/1000000",
                "-3269327677/8000000000"
              ],
              [
                "98/125",
                "-1930194717/3906250000"
              ],
              [
                "98/125",
                "-2624920217/3906250000"
              ],
              [
                "556617/1000000",
                "-22782596097/62500000000"
              ],
              [
                "556617/1000000",
                "-58217899319/125000000000"
              ],
              [
                "98/125",
                "-84769663/156250000"
              ],
              [
                "98/125",
                "-112558683/156250000"
              ],
              [
                "556617/1000000",
                "-1032293833/2500000000"
              ],
              [
                "556617/1000000",
                "-2570695951/5000000000"
              ]
            ],
            "raw": [
              "2394348563/4452936000",
              "429949/500000"
            ],
            "new": [
              "537701/1000000",
              "429949/500000"
            ]
          },
          {
            "factor": 224,
            "target": "z",
            "old": [
              "391467/1000000",
              "23213/40000"
            ],
            "lines": [
              [
                "1/1",
                "-9796327/25000000"
              ],
              [
                "1/1",
                "-63452903/125000000"
              ],
              [
                "1/1",
                "-11616127/25000000"
              ],
              [
                "1/1",
                "-72551903/125000000"
              ],
              [
                "1/1",
                "-24678984327/50000000000"
              ],
              [
                "1/1",
                "-287886546231/500000000000"
              ],
              [
                "1/1",
                "-32149987877/50000000000"
              ],
              [
                "1/1",
                "-362596581731/500000000000"
              ]
            ],
            "raw": [
              "9796327/25000000",
              "23213/40000"
            ],
            "new": [
              "391853/1000000",
              "23213/40000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "198073/1000000",
              "5501/10000"
            ],
            "lines": [
              [
                "13592809186767657/62500000000000000",
                "-21553356948039/500000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-13518093894039/500000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-19532797338537/250000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-15515165811537/250000000000000"
              ],
              [
                "13592809186767657/62500000000000000",
                "-28110614991039/500000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-17630753937039/500000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-25475333007537/250000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-20235402480537/250000000000000"
              ],
              [
                "13592809186767657/62500000000000000",
                "-13911291040311/250000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-8725050994311/250000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-12607151139513/125000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-10014031116513/125000000000000"
              ],
              [
                "13592809186767657/62500000000000000",
                "-17189920061811/250000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-10781381015811/250000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-15578418974013/125000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-12374149451013/125000000000000"
              ]
            ],
            "raw": [
              "4292341375/21656014853",
              "5501/10000"
            ],
            "new": [
              "39641/200000",
              "5501/10000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "443383/1000000"
            ],
            "lines": [
              [
                "-81547/100000",
                "68182865091/500000000000"
              ],
              [
                "-81547/100000",
                "70097818503/250000000000"
              ],
              [
                "-1/1",
                "118139380281/500000000000"
              ],
              [
                "-1/1",
                "110760664773/250000000000"
              ],
              [
                "-81547/100000",
                "3431831967/100000000000"
              ],
              [
                "-81547/100000",
                "5713263411/50000000000"
              ],
              [
                "-1/1",
                "2684627001/20000000000"
              ],
              [
                "-1/1",
                "2769166533/10000000000"
              ]
            ],
            "raw": [
              "27/125",
              "110760664773/250000000000"
            ],
            "new": [
              "27/125",
              "443043/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "537701/1000000",
              "429949/500000"
            ],
            "lines": [
              [
                "-877/1000",
                "2614959/4000000"
              ],
              [
                "-877/1000",
                "6032989/8000000"
              ],
              [
                "-721/1000",
                "2259279/4000000"
              ],
              [
                "-721/1000",
                "4901053/8000000"
              ],
              [
                "-877/1000",
                "3218163/6250000"
              ],
              [
                "-877/1000",
                "90512101/125000000"
              ],
              [
                "-721/1000",
                "2662413/6250000"
              ],
              [
                "-721/1000",
                "72825601/125000000"
              ]
            ],
            "raw": [
              "537701/1000000",
              "6032989/7016000"
            ],
            "new": [
              "537701/1000000",
              "859891/1000000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "3367/8000",
              "11621/15625"
            ],
            "lines": [
              [
                "-57/100",
                "138094582177/500000000000"
              ],
              [
                "-57/100",
                "71792625341/250000000000"
              ],
              [
                "-907/1000",
                "229328233177/500000000000"
              ],
              [
                "-907/1000",
                "146053608341/250000000000"
              ],
              [
                "-57/100",
                "211965338807/500000000000"
              ],
              [
                "-57/100",
                "81342659131/250000000000"
              ],
              [
                "-907/1000",
                "303198989807/500000000000"
              ],
              [
                "-907/1000",
                "155603642131/250000000000"
              ]
            ],
            "raw": [
              "3367/8000",
              "211965338807/285000000000"
            ],
            "new": [
              "3367/8000",
              "743739/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "572421/1000000",
              "85081/100000"
            ],
            "lines": [
              [
                "537701/1000000",
                "-360238280591/1000000000000"
              ],
              [
                "537701/1000000",
                "-475663525631/1000000000000"
              ],
              [
                "537701/1000000",
                "-424231539711/1000000000000"
              ],
              [
                "537701/1000000",
                "-539656784751/1000000000000"
              ],
              [
                "859891/1000000",
                "-534686767331/1000000000000"
              ],
              [
                "859891/1000000",
                "-759653390471/1000000000000"
              ],
              [
                "859891/1000000",
                "-598680026451/1000000000000"
              ],
              [
                "859891/1000000",
                "-823646649591/1000000000000"
              ],
              [
                "537701/1000000",
                "-158904974273/500000000000"
              ],
              [
                "537701/1000000",
                "-39199301567/125000000000"
              ],
              [
                "537701/1000000",
                "-247708717473/500000000000"
              ],
              [
                "537701/1000000",
                "-61400237367/125000000000"
              ],
              [
                "859891/1000000",
                "-246129217643/500000000000"
              ],
              [
                "859891/1000000",
                "-4668627167/7812500000"
              ],
              [
                "859891/1000000",
                "-334932960843/500000000000"
              ],
              [
                "859891/1000000",
                "-12112371309/15625000000"
              ]
            ],
            "raw": [
              "246129217643/429945500000",
              "85081/100000"
            ],
            "new": [
              "286233/500000",
              "85081/100000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "537701/1000000",
              "859891/1000000"
            ],
            "lines": [
              [
                "98/125",
                "-3493684949/8000000000"
              ],
              [
                "98/125",
                "-4046027949/8000000000"
              ],
              [
                "556957/1000000",
                "-2458368869/8000000000"
              ],
              [
                "556957/1000000",
                "-2398603941/8000000000"
              ],
              [
                "98/125",
                "-174675029/320000000"
              ],
              [
                "98/125",
                "-196768749/320000000"
              ],
              [
                "556957/1000000",
                "-666311929/1600000000"
              ],
              [
                "556957/1000000",
                "-3271794717/8000000000"
              ],
              [
                "98/125",
                "-494227871633/1000000000000"
              ],
              [
                "98/125",
                "-672075914633/1000000000000"
              ],
              [
                "556957/1000000",
                "-364813361633/1000000000000"
              ],
              [
                "556957/1000000",
                "-466147913633/1000000000000"
              ],
              [
                "98/125",
                "-21701035793/40000000000"
              ],
              [
                "98/125",
                "-28814957513/40000000000"
              ],
              [
                "556957/1000000",
                "-16524455393/40000000000"
              ],
              [
                "556957/1000000",
                "-20577837473/40000000000"
              ]
            ],
            "raw": [
              "2398603941/4455656000",
              "859891/1000000"
            ],
            "new": [
              "538327/1000000",
              "859891/1000000"
            ]
          },
          {
            "factor": 1002,
            "target": "z",
            "old": [
              "391853/1000000",
              "23213/40000"
            ],
            "lines": [
              [
                "-1/1",
                "52817129/100000000"
              ],
              [
                "-1/1",
                "55951229/100000000"
              ],
              [
                "-1/1",
                "56646461/100000000"
              ],
              [
                "-1/1",
                "54523361/100000000"
              ],
              [
                "-1/1",
                "47243904479/100000000000"
              ],
              [
                "-1/1",
                "58029353579/100000000000"
              ],
              [
                "-1/1",
                "51073236479/100000000000"
              ],
              [
                "-1/1",
                "56601485579/100000000000"
              ],
              [
                "-1/1",
                "51101/100000"
              ],
              [
                "-1/1",
                "542351/1000000"
              ],
              [
                "-1/1",
                "57809/100000"
              ],
              [
                "-1/1",
                "556859/1000000"
              ],
              [
                "-1/1",
                "41338151/100000000"
              ],
              [
                "-1/1",
                "521236001/1000000000"
              ],
              [
                "-1/1",
                "48046151/100000000"
              ],
              [
                "-1/1",
                "535744001/1000000000"
              ]
            ],
            "raw": [
              "391853/1000000",
              "58029353579/100000000000"
            ],
            "new": [
              "391853/1000000",
              "290147/500000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "39641/200000",
              "5501/10000"
            ],
            "lines": [
              [
                "13592809186767657/62500000000000000",
                "-21565537492653/500000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-13525733434653/500000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-19543835995299/250000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-15523933966299/250000000000000"
              ],
              [
                "13592809186767657/62500000000000000",
                "-28122795535653/500000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-17638393477653/500000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-25486371664299/250000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-20244170635299/250000000000000"
              ],
              [
                "13592809186767657/62500000000000000",
                "-27822445876449/500000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-17450016562449/500000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-25214178843567/250000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-20027964186567/250000000000000"
              ],
              [
                "13592809186767657/62500000000000000",
                "-34379703919449/500000000000000"
              ],
              [
                "8525301711165657/62500000000000000",
                "-21562676605449/500000000000000"
              ],
              [
                "12318525960787431/31250000000000000",
                "-31156714512567/250000000000000"
              ],
              [
                "9784772222986431/31250000000000000",
                "-24748200855567/250000000000000"
              ]
            ],
            "raw": [
              "390433375/1968728623",
              "5501/10000"
            ],
            "new": [
              "198317/1000000",
              "5501/10000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "689497/1000000"
            ],
            "lines": [
              [
                "-213767/500000",
                "7534719/50000000"
              ],
              [
                "-213767/500000",
                "147386669/500000000"
              ],
              [
                "-14919/100000",
                "-79617/10000000"
              ],
              [
                "-14919/100000",
                "4231533/100000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "147386669/213767000"
            ],
            "new": [
              "6131/50000",
              "344737/500000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "198317/1000000",
              "5501/10000"
            ],
            "lines": [
              [
                "-98/125",
                "59120170711/500000000000"
              ],
              [
                "-98/125",
                "160152259693/500000000000"
              ],
              [
                "-556957/1000000",
                "45200164381/500000000000"
              ],
              [
                "-556957/1000000",
                "40941068501/250000000000"
              ],
              [
                "-98/125",
                "49701318979/250000000000"
              ],
              [
                "-98/125",
                "10021736347/25000000000"
              ],
              [
                "-556957/1000000",
                "21370657907/125000000000"
              ],
              [
                "-556957/1000000",
                "122164604249/500000000000"
              ],
              [
                "-98/125",
                "4330095127/100000000000"
              ],
              [
                "-98/125",
                "40314553901/100000000000"
              ],
              [
                "-556957/1000000",
                "1546093861/100000000000"
              ],
              [
                "-556957/1000000",
                "61651323407/250000000000"
              ],
              [
                "-98/125",
                "3570723203/50000000000"
              ],
              [
                "-98/125",
                "2156295259/5000000000"
              ],
              [
                "-556957/1000000",
                "217872257/5000000000"
              ],
              [
                "-556957/1000000",
                "137359403209/500000000000"
              ]
            ],
            "raw": [
              "198317/1000000",
              "2156295259/3920000000"
            ],
            "new": [
              "198317/1000000",
              "137519/250000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "286233/500000",
              "85081/100000"
            ],
            "lines": [
              [
                "538327/1000000",
                "-72112744367/200000000000"
              ],
              [
                "538327/1000000",
                "-95232744347/200000000000"
              ],
              [
                "538327/1000000",
                "-424593141723/1000000000000"
              ],
              [
                "538327/1000000",
                "-540193141623/1000000000000"
              ],
              [
                "859891/1000000",
                "-534673263379/1000000000000"
              ],
              [
                "859891/1000000",
                "-759601807639/1000000000000"
              ],
              [
                "859891/1000000",
                "-598702683267/1000000000000"
              ],
              [
                "859891/1000000",
                "-823631227527/1000000000000"
              ],
              [
                "538327/1000000",
                "-159075893723/500000000000"
              ],
              [
                "538327/1000000",
                "-39269655617/125000000000"
              ],
              [
                "538327/1000000",
                "-49575152511/100000000000"
              ],
              [
                "538327/1000000",
                "-2458784913/5000000000"
              ],
              [
                "859891/1000000",
                "-49226132899/100000000000"
              ],
              [
                "859891/1000000",
                "-14939883271/25000000000"
              ],
              [
                "859891/1000000",
                "-334930533327/500000000000"
              ],
              [
                "859891/1000000",
                "-96899383563/125000000000"
              ]
            ],
            "raw": [
              "49226132899/85989100000",
              "85081/100000"
            ],
            "new": [
              "572469/1000000",
              "85081/100000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "344737/500000"
            ],
            "lines": [
              [
                "-427531/1000000",
                "15069267/100000000"
              ],
              [
                "-427531/1000000",
                "294770617/1000000000"
              ],
              [
                "-14919/100000",
                "-79617/10000000"
              ],
              [
                "-14919/100000",
                "4231533/100000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "294770617/427531000"
            ],
            "new": [
              "6131/50000",
              "10773/15625"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "572469/1000000",
              "85081/100000"
            ],
            "lines": [
              [
                "-57/100",
                "153281636809/500000000000"
              ],
              [
                "-57/100",
                "108232944197/250000000000"
              ],
              [
                "-907/1000",
                "244515287809/500000000000"
              ],
              [
                "-907/1000",
                "182493927197/250000000000"
              ],
              [
                "-57/100",
                "58482971263/125000000000"
              ],
              [
                "-57/100",
                "29664858179/62500000000"
              ],
              [
                "-907/1000",
                "81291384013/125000000000"
              ],
              [
                "-907/1000",
                "48230103929/62500000000"
              ]
            ],
            "raw": [
              "572469/1000000",
              "48230103929/56687500000"
            ],
            "new": [
              "572469/1000000",
              "850807/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "198317/1000000",
              "137519/250000"
            ],
            "lines": [
              [
                "-98/125",
                "118239533723/1000000000000"
              ],
              [
                "-98/125",
                "320304699311/1000000000000"
              ],
              [
                "-556957/1000000",
                "90399521063/1000000000000"
              ],
              [
                "-556957/1000000",
                "32752981603/200000000000"
              ],
              [
                "-98/125",
                "99401951447/500000000000"
              ],
              [
                "-98/125",
                "200434534241/500000000000"
              ],
              [
                "-556957/1000000",
                "85481945117/500000000000"
              ],
              [
                "-556957/1000000",
                "122164638593/500000000000"
              ],
              [
                "-98/125",
                "43301758969/1000000000000"
              ],
              [
                "-98/125",
                "403143376533/1000000000000"
              ],
              [
                "-556957/1000000",
                "15461746309/1000000000000"
              ],
              [
                "-556957/1000000",
                "246603585237/1000000000000"
              ],
              [
                "-98/125",
                "35707918541/500000000000"
              ],
              [
                "-98/125",
                "215628727323/500000000000"
              ],
              [
                "-556957/1000000",
                "21787912211/500000000000"
              ],
              [
                "-556957/1000000",
                "5494353267/20000000000"
              ]
            ],
            "raw": [
              "198317/1000000",
              "215628727323/392000000000"
            ],
            "new": [
              "198317/1000000",
              "275037/500000"
            ]
          }
        ]
      }
    },
    {
      "id": 6,
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "391853/1000000",
          "3367/8000",
          "538327/1000000",
          "572469/1000000",
          "198317/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "10773/15625",
          "907/1000",
          "279/1000",
          "443043/1000000",
          "1",
          "290147/500000",
          "743739/1000000",
          "859891/1000000",
          "850807/1000000",
          "275037/500000"
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
        "BFG": -1,
        "EGO": -1,
        "AEG": 1,
        "AEO": 1,
        "AEP": -1
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
        },
        {
          "rule": [
            "cap",
            "CEG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CEG",
              "U_CEG",
              "42534386369/62500000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEO",
            "CGO"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "GABEO"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABG",
            "EGO",
            "BGO",
            "AGO",
            "BEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OABEG"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABO",
            "EGO",
            "BGO",
            "AGO",
            "BEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "AEF",
            [
              "G",
              "O"
            ],
            "P",
            [
              "CEF2-AEF-cap2"
            ]
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "EFP",
            "AFP"
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
        "L_AEP": {
          "triangle": "AEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAP",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "4612307751/15625000000",
              "3751408611/10000000000",
              "98775181611/250000000000",
              "11876347287/25000000000",
              "3754256283/7812500000",
              "3053514663/5000000000",
              "80399523663/125000000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "41117613/50000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEF",
            "used": [
              0,
              4,
              5
            ],
            "values": [
              "276035397/500000000",
              "323046897/500000000",
              "325699089/500000000",
              "32926899/50000000",
              "346424589/500000000",
              "37628049/50000000",
              "39045063/50000000",
              "41117613/50000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEG": {
          "triangle": "AEG",
          "side": "hi",
          "value": "4512999/12500000",
          "witness": {
            "kind": "vertices",
            "signed": "AEG",
            "used": [
              0,
              4,
              6,
              8
            ],
            "values": [
              "-80262340351/500000000000",
              "-3914053417/50000000000",
              "-1995403/125000000",
              "-5609594851/500000000000",
              "13958159649/500000000000",
              "7103597/125000000",
              "3551221133/50000000000",
              "2495173/25000000",
              "5507996583/50000000000",
              "10779861/62500000",
              "4314973/25000000",
              "88610905149/500000000000",
              "15329361/62500000",
              "12973271133/50000000000",
              "3603099/12500000",
              "4512999/12500000"
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
              "14977597627/25000000000",
              "15524563/25000000",
              "34128062519/50000000000",
              "38358911/50000000",
              "43251427619/50000000000",
              "22403695927/25000000000",
              "229506613/250000000",
              "474822761/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "129920235881/250000000000",
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
              "31686124079/500000000000",
              "65772494579/500000000000",
              "35578373107/250000000000",
              "45109851631/250000000000",
              "47179345357/250000000000",
              "105413353307/500000000000",
              "56710823881/250000000000",
              "139499723807/500000000000",
              "157788734579/500000000000",
              "81586493107/250000000000",
              "178104948079/500000000000",
              "91117971631/250000000000",
              "231515963807/500000000000",
              "120388757357/250000000000",
              "251832177307/500000000000",
              "129920235881/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "524695919/1000000000",
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
              "28807959/125000000",
              "7252173/31250000",
              "287352027/1000000000",
              "154233513/500000000",
              "164046081/500000000",
              "164849013/500000000",
              "338318163/1000000000",
              "179716581/500000000",
              "367935497/1000000000",
              "395726429/1000000000",
              "105804497/250000000",
              "444332987/1000000000",
              "465563987/1000000000",
              "493354919/1000000000",
              "12589523/25000000",
              "524695919/1000000000"
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
        "21": {
          "row": [
            "fan",
            "BFO",
            "BFG",
            "BGO",
            "FGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FBO",
            "point": "G"
          }
        },
        "35": {
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
        "46": {
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
        "350": {
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
        "501": {
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
        "533": {
          "row": [
            "plu",
            "AFG",
            "BEF",
            "ABF",
            "EFG",
            "AEF",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FABEG"
          }
        },
        "675": {
          "row": [
            "plu",
            "AEG",
            "FGO",
            "AFG",
            "EGO",
            "AGO",
            "EFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEFO"
          }
        },
        "1037": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-43317687/50000000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "43317687/50000000"
          }
        },
        "1476": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O"
            ]
          }
        },
        "2081": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CFP"
              ],
              [
                1,
                "ABF",
                "CEP"
              ],
              [
                -1,
                "ACP",
                "BEF"
              ],
              [
                1,
                "AEF",
                "BCP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "CP"
          }
        },
        "2085": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "FGO"
              ],
              [
                1,
                "ABF",
                "EGO"
              ],
              [
                -1,
                "AEF",
                "BGO"
              ],
              [
                1,
                "AGO",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "GO"
          }
        },
        "6902": {
          "row": [
            "linear",
            {
              "BCE": "-93/1000",
              "BCO": "-93/1000",
              "BCP": "129920235881/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "129920235881/250000000000"
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
            "residual": "60170235881/250000000000"
          }
        },
        "6948": {
          "row": [
            "linear",
            {
              "CFO": "83420235881/250000000000",
              "EFO": "-93/1000",
              "FOP": "-129920235881/250000000000"
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
              "value": "129920235881/250000000000"
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
            "residual": "60170235881/250000000000"
          }
        },
        "6974": {
          "row": [
            "linear",
            {
              "AEG": "338695919/1000000000",
              "AFG": "-93/1000",
              "AGO": "-524695919/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "524695919/1000000000"
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
            "residual": "245695919/1000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0021",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "11687/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "L_ACE",
            "U_ACH"
          ]
        },
        {
          "id": "T0032",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "17579/125000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "U_CEO"
          ]
        },
        {
          "id": "T0040",
          "relation": 501,
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
          "id": "T0042",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51529/500000",
          "sources": [
            "L_ABF",
            "L_EFG",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0051",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "49207/500000",
          "sources": [
            "T0042",
            "L_EGO",
            "L_AGO",
            "L_EFG",
            "U_AEG"
          ]
        },
        {
          "id": "T0058",
          "relation": 1037,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "386677/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0072",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "51037/500000",
          "sources": [
            "T0021",
            "T0032",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0131",
          "relation": 6948,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "34273/200000",
          "sources": [
            "T0040",
            "L_FOP"
          ]
        },
        {
          "id": "T0141",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "144037/500000",
          "sources": [
            "T0072",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0171",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "71647/250000",
          "sources": [
            "T0040",
            "T0051",
            "L_EGO"
          ]
        },
        {
          "id": "T0179",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "117961/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0141",
            "T0058"
          ]
        },
        {
          "id": "T0185",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "4833/31250",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "T0131",
            "U_CEO"
          ]
        },
        {
          "id": "T0191",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51931/500000",
          "sources": [
            "L_ABF",
            "T0171",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0196",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "4023/40000",
          "sources": [
            "T0191",
            "L_EGO",
            "L_AGO",
            "T0171",
            "U_AEG"
          ]
        },
        {
          "id": "T0203",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "13017/125000",
          "sources": [
            "T0179",
            "T0185",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0238",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "36267/125000",
          "sources": [
            "T0203",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0265",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "288749/1000000",
          "sources": [
            "T0040",
            "T0196",
            "L_EGO"
          ]
        },
        {
          "id": "T0270",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "118209/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0238",
            "T0058"
          ]
        },
        {
          "id": "T0278",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "26023/250000",
          "sources": [
            "L_ABF",
            "T0265",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0280",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101191/1000000",
          "sources": [
            "T0278",
            "L_EGO",
            "L_AGO",
            "T0265",
            "U_AEG"
          ]
        },
        {
          "id": "T0284",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "104179/1000000",
          "sources": [
            "T0270",
            "T0185",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0309",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "290179/1000000",
          "sources": [
            "T0284",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0334",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "57873/200000",
          "sources": [
            "T0040",
            "T0280",
            "L_EGO"
          ]
        },
        {
          "id": "T0338",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "59107/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0309",
            "T0058"
          ]
        },
        {
          "id": "T0345",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104157/1000000",
          "sources": [
            "L_ABF",
            "T0334",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0347",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101367/1000000",
          "sources": [
            "T0345",
            "L_EGO",
            "L_AGO",
            "T0334",
            "U_AEG"
          ]
        },
        {
          "id": "T0401",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289541/1000000",
          "sources": [
            "T0040",
            "T0347",
            "L_EGO"
          ]
        },
        {
          "id": "T0410",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "6511/62500",
          "sources": [
            "L_ABF",
            "T0401",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0412",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101417/1000000",
          "sources": [
            "T0410",
            "L_EGO",
            "L_AGO",
            "T0401",
            "U_AEG"
          ]
        },
        {
          "id": "T0458",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289591/1000000",
          "sources": [
            "T0040",
            "T0412",
            "L_EGO"
          ]
        },
        {
          "id": "T0467",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104181/1000000",
          "sources": [
            "L_ABF",
            "T0458",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0469",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101431/1000000",
          "sources": [
            "T0467",
            "L_EGO",
            "L_AGO",
            "T0458",
            "U_AEG"
          ]
        },
        {
          "id": "T0513",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "57921/200000",
          "sources": [
            "T0040",
            "T0469",
            "L_EGO"
          ]
        },
        {
          "id": "T0522",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "52091/500000",
          "sources": [
            "L_ABF",
            "T0513",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0523",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "20287/200000",
          "sources": [
            "T0522",
            "L_EGO",
            "L_AGO",
            "T0513",
            "U_AEG"
          ]
        },
        {
          "id": "T0527",
          "relation": 2085,
          "rule": "balance_lo",
          "triangle": "BGO",
          "side": "lo",
          "value": "103453/1000000",
          "sources": [
            "T0338",
            "T0523",
            "L_ABF",
            "L_EGO",
            "L_AGO",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0562",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289609/1000000",
          "sources": [
            "T0040",
            "T0523",
            "L_EGO"
          ]
        },
        {
          "id": "T0569",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104183/1000000",
          "sources": [
            "L_ABF",
            "T0562",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0570",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "25359/250000",
          "sources": [
            "T0569",
            "L_EGO",
            "L_AGO",
            "T0562",
            "U_AEG"
          ]
        },
        {
          "id": "T0583",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "172679/1000000",
          "sources": [
            "T0569",
            "L_AGO"
          ]
        },
        {
          "id": "T0600",
          "relation": 21,
          "rule": "sum",
          "triangle": "BFO",
          "side": "lo",
          "value": "297889/1000000",
          "sources": [
            "L_BFG",
            "T0527",
            "T0570"
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
            "reference": "T0040",
            "value": "47587/500000"
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
        "138": {
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
              "-297889/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0600",
            "value": "297889/1000000"
          }
        },
        "222": {
          "name": "AREA_LO_EGO",
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
                4,
                6
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
                8,
                9
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
              [
                4,
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
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "224": {
          "name": "AREA_LO_AEG",
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
                4,
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
              "-172679/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "T0583",
            "value": "172679/1000000"
          }
        },
        "1002": {
          "name": "QUAD_1476",
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
              [],
              "551/1000"
            ],
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
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1476
          }
        },
        "4620": {
          "name": "LINEAR_6902",
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
                2,
                10
              ],
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "129920235881/250000000000"
            ],
            [
              [
                1,
                12
              ],
              "-129920235881/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6902
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "391933/1000000",
          "420889/1000000",
          "53847/100000",
          "572479/1000000",
          "198367/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "689467/1000000",
          "907/1000",
          "279/1000",
          "442973/1000000",
          "1/1",
          "9067/15625",
          "743737/1000000",
          "859889/1000000",
          "425403/500000",
          "137517/250000"
        ],
        "steps": [
          {
            "factor": 196,
            "target": "x",
            "old": [
              "3367/8000",
              "743739/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-420889/1000000"
              ],
              [
                "1/1",
                "-123227497/250000000"
              ],
              [
                "1/1",
                "-126217003/250000000"
              ],
              [
                "1/1",
                "-576889/1000000"
              ],
              [
                "1/1",
                "-110686501/250000000"
              ],
              [
                "1/1",
                "-138757999/250000000"
              ]
            ],
            "raw": [
              "420889/1000000",
              "743739/1000000"
            ],
            "new": [
              "420889/1000000",
              "743739/1000000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "538327/1000000",
              "859891/1000000"
            ],
            "lines": [
              [
                "98/125",
                "-436713112683/1000000000000"
              ],
              [
                "98/125",
                "-505760705683/1000000000000"
              ],
              [
                "556957/1000000",
                "-307298602683/1000000000000"
              ],
              [
                "556957/1000000",
                "-299832704683/1000000000000"
              ],
              [
                "98/125",
                "-272920684317/500000000000"
              ],
              [
                "98/125",
                "-307444480817/500000000000"
              ],
              [
                "556957/1000000",
                "-208213429317/500000000000"
              ],
              [
                "556957/1000000",
                "-204480480317/500000000000"
              ],
              [
                "98/125",
                "-494227871633/1000000000000"
              ],
              [
                "98/125",
                "-672075914633/1000000000000"
              ],
              [
                "556957/1000000",
                "-364813361633/1000000000000"
              ],
              [
                "556957/1000000",
                "-466147913633/1000000000000"
              ],
              [
                "98/125",
                "-271258975367/500000000000"
              ],
              [
                "98/125",
                "-360182996867/500000000000"
              ],
              [
                "556957/1000000",
                "-206551720367/500000000000"
              ],
              [
                "556957/1000000",
                "-257218996367/500000000000"
              ]
            ],
            "raw": [
              "299832704683/556957000000",
              "859891/1000000"
            ],
            "new": [
              "26917/50000",
              "859891/1000000"
            ]
          },
          {
            "factor": 224,
            "target": "z",
            "old": [
              "391853/1000000",
              "290147/500000"
            ],
            "lines": [
              [
                "1/1",
                "-9798327/25000000"
              ],
              [
                "1/1",
                "-63462903/125000000"
              ],
              [
                "1/1",
                "-11618127/25000000"
              ],
              [
                "1/1",
                "-72561903/125000000"
              ],
              [
                "1/1",
                "-24675378867/50000000000"
              ],
              [
                "1/1",
                "-287875594851/500000000000"
              ],
              [
                "1/1",
                "-32140653417/50000000000"
              ],
              [
                "1/1",
                "-362528340351/500000000000"
              ]
            ],
            "raw": [
              "9798327/25000000",
              "290147/500000"
            ],
            "new": [
              "391933/1000000",
              "290147/500000"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "198317/1000000",
              "275037/500000"
            ],
            "lines": [
              [
                "27182301511730463/125000000000000000",
                "-1078289522163/25000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-676294604163/25000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-977203261629/12500000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-776205802629/12500000000000"
              ],
              [
                "27182301511730463/125000000000000000",
                "-1406152424313/25000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-881927606313/25000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-1274330045079/12500000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-1012217636079/12500000000000"
              ],
              [
                "27182301511730463/125000000000000000",
                "-27822445876449/500000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-17450016562449/500000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-25214178843567/250000000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-20027964186567/250000000000000"
              ],
              [
                "27182301511730463/125000000000000000",
                "-34379703919449/500000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-21562676605449/500000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-31156714512567/250000000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-24748200855567/250000000000000"
              ]
            ],
            "raw": [
              "831255000/4190975351",
              "275037/500000"
            ],
            "new": [
              "24793/125000",
              "275037/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "443043/1000000"
            ],
            "lines": [
              [
                "-81547/100000",
                "68161207251/500000000000"
              ],
              [
                "-81547/100000",
                "70080189783/250000000000"
              ],
              [
                "-1/1",
                "118117722441/500000000000"
              ],
              [
                "-1/1",
                "110743036053/250000000000"
              ],
              [
                "-81547/100000",
                "2145944031/62500000000"
              ],
              [
                "-81547/100000",
                "3571643523/31250000000"
              ],
              [
                "-1/1",
                "33562033719/250000000000"
              ],
              [
                "-1/1",
                "34617997227/125000000000"
              ]
            ],
            "raw": [
              "27/125",
              "110743036053/250000000000"
            ],
            "new": [
              "27/125",
              "442973/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "26917/50000",
              "859891/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "65373373/100000000"
              ],
              [
                "-877/1000",
                "754122323/1000000000"
              ],
              [
                "-721/1000",
                "56481373/100000000"
              ],
              [
                "-721/1000",
                "612630323/1000000000"
              ],
              [
                "-877/1000",
                "51490823/100000000"
              ],
              [
                "-877/1000",
                "724097273/1000000000"
              ],
              [
                "-721/1000",
                "42598823/100000000"
              ],
              [
                "-721/1000",
                "582605273/1000000000"
              ]
            ],
            "raw": [
              "26917/50000",
              "754122323/877000000"
            ],
            "new": [
              "26917/50000",
              "859889/1000000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "420889/1000000",
              "743739/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "6912054509/25000000000"
              ],
              [
                "-57/100",
                "3590578297/12500000000"
              ],
              [
                "-907/1000",
                "11473737059/25000000000"
              ],
              [
                "-907/1000",
                "7303627447/12500000000"
              ],
              [
                "-57/100",
                "211964880253/500000000000"
              ],
              [
                "-57/100",
                "81342599849/250000000000"
              ],
              [
                "-907/1000",
                "303198531253/500000000000"
              ],
              [
                "-907/1000",
                "155603582849/250000000000"
              ]
            ],
            "raw": [
              "420889/1000000",
              "211964880253/285000000000"
            ],
            "new": [
              "420889/1000000",
              "743737/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "572469/1000000",
              "850807/1000000"
            ],
            "lines": [
              [
                "26917/50000",
                "-22535642627/62500000000"
              ],
              [
                "26917/50000",
                "-59520690259/125000000000"
              ],
              [
                "26917/50000",
                "-26537827859/62500000000"
              ],
              [
                "26917/50000",
                "-67525060723/125000000000"
              ],
              [
                "859889/1000000",
                "-267335850943/500000000000"
              ],
              [
                "859889/1000000",
                "-189897596609/250000000000"
              ],
              [
                "859889/1000000",
                "-299353332799/500000000000"
              ],
              [
                "859889/1000000",
                "-205906337537/250000000000"
              ],
              [
                "26917/50000",
                "-159083384211/500000000000"
              ],
              [
                "26917/50000",
                "-157088662881/500000000000"
              ],
              [
                "26917/50000",
                "-247878529587/500000000000"
              ],
              [
                "26917/50000",
                "-245883808257/500000000000"
              ],
              [
                "859889/1000000",
                "-123067047069/250000000000"
              ],
              [
                "859889/1000000",
                "-298801095063/500000000000"
              ],
              [
                "859889/1000000",
                "-167464619757/250000000000"
              ],
              [
                "859889/1000000",
                "-387596240439/500000000000"
              ]
            ],
            "raw": [
              "123067047069/214972250000",
              "850807/1000000"
            ],
            "new": [
              "286239/500000",
              "850807/1000000"
            ]
          },
          {
            "factor": 222,
            "target": "y",
            "old": [
              "26917/50000",
              "859889/1000000"
            ],
            "lines": [
              [
                "98/125",
                "-436759441563/1000000000000"
              ],
              [
                "98/125",
                "-505807034563/1000000000000"
              ],
              [
                "557027/1000000",
                "-307384831563/1000000000000"
              ],
              [
                "557027/1000000",
                "-299942523563/1000000000000"
              ],
              [
                "98/125",
                "-272920684317/500000000000"
              ],
              [
                "98/125",
                "-307444480817/500000000000"
              ],
              [
                "557027/1000000",
                "-208233379317/500000000000"
              ],
              [
                "557027/1000000",
                "-204512225317/500000000000"
              ],
              [
                "98/125",
                "-494248016379/1000000000000"
              ],
              [
                "98/125",
                "-672095385379/1000000000000"
              ],
              [
                "557027/1000000",
                "-364873406379/1000000000000"
              ],
              [
                "557027/1000000",
                "-466230874379/1000000000000"
              ],
              [
                "98/125",
                "-271258985661/500000000000"
              ],
              [
                "98/125",
                "-360182670161/500000000000"
              ],
              [
                "557027/1000000",
                "-206571680661/500000000000"
              ],
              [
                "557027/1000000",
                "-257250414661/500000000000"
              ]
            ],
            "raw": [
              "299942523563/557027000000",
              "859889/1000000"
            ],
            "new": [
              "53847/100000",
              "859889/1000000"
            ]
          },
          {
            "factor": 1002,
            "target": "z",
            "old": [
              "391933/1000000",
              "290147/500000"
            ],
            "lines": [
              [
                "-1/1",
                "52817129/100000000"
              ],
              [
                "-1/1",
                "55951229/100000000"
              ],
              [
                "-1/1",
                "56646461/100000000"
              ],
              [
                "-1/1",
                "54523361/100000000"
              ],
              [
                "-1/1",
                "47245622769/100000000000"
              ],
              [
                "-1/1",
                "58028712869/100000000000"
              ],
              [
                "-1/1",
                "51074954769/100000000000"
              ],
              [
                "-1/1",
                "56600844869/100000000000"
              ],
              [
                "-1/1",
                "51101/100000"
              ],
              [
                "-1/1",
                "542351/1000000"
              ],
              [
                "-1/1",
                "57809/100000"
              ],
              [
                "-1/1",
                "556859/1000000"
              ],
              [
                "-1/1",
                "41341161/100000000"
              ],
              [
                "-1/1",
                "521242511/1000000000"
              ],
              [
                "-1/1",
                "48049161/100000000"
              ],
              [
                "-1/1",
                "535750511/1000000000"
              ]
            ],
            "raw": [
              "391933/1000000",
              "58028712869/100000000000"
            ],
            "new": [
              "391933/1000000",
              "9067/15625"
            ]
          },
          {
            "factor": 4620,
            "target": "v",
            "old": [
              "24793/125000",
              "275037/500000"
            ],
            "lines": [
              [
                "27182301511730463/125000000000000000",
                "-2156831994933/50000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-1352747856933/50000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-1954635760539/25000000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-1552593691539/25000000000000"
              ],
              [
                "27182301511730463/125000000000000000",
                "-2812557799233/50000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-1764013861233/50000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-2548889327439/25000000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-2024617358439/25000000000000"
              ],
              [
                "27182301511730463/125000000000000000",
                "-27822406960971/500000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-17449992154971/500000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-25214143576293/250000000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-20027936173293/250000000000000"
              ],
              [
                "27182301511730463/125000000000000000",
                "-34379665003971/500000000000000"
              ],
              [
                "17048523113012463/125000000000000000",
                "-21562652197971/500000000000000"
              ],
              [
                "24634046005160529/62500000000000000",
                "-31156679245293/250000000000000"
              ],
              [
                "19567156805801529/62500000000000000",
                "-24748172842293/250000000000000"
              ]
            ],
            "raw": [
              "831352500/4190975351",
              "275037/500000"
            ],
            "new": [
              "198367/1000000",
              "275037/500000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "10773/15625"
            ],
            "lines": [
              [
                "-213761/500000",
                "7534377/50000000"
              ],
              [
                "-213761/500000",
                "147381227/500000000"
              ],
              [
                "-149193/1000000",
                "-795999/100000000"
              ],
              [
                "-149193/1000000",
                "42318051/1000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "147381227/213761000"
            ],
            "new": [
              "6131/50000",
              "172367/250000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "198367/1000000",
              "275037/500000"
            ],
            "lines": [
              [
                "-98/125",
                "59135656193/500000000000"
              ],
              [
                "-98/125",
                "32034015373/100000000000"
              ],
              [
                "-557027/1000000",
                "45219941563/500000000000"
              ],
              [
                "-557027/1000000",
                "81924766683/500000000000"
              ],
              [
                "-98/125",
                "24849652337/125000000000"
              ],
              [
                "-98/125",
                "10021651501/25000000000"
              ],
              [
                "-557027/1000000",
                "42741447359/250000000000"
              ],
              [
                "-557027/1000000",
                "61093859919/250000000000"
              ],
              [
                "-98/125",
                "43313694409/1000000000000"
              ],
              [
                "-98/125",
                "80630554549/200000000000"
              ],
              [
                "-557027/1000000",
                "15482265149/1000000000000"
              ],
              [
                "-557027/1000000",
                "246662152381/1000000000000"
              ],
              [
                "-98/125",
                "17853735481/250000000000"
              ],
              [
                "-98/125",
                "21562701013/50000000000"
              ],
              [
                "-557027/1000000",
                "5447939083/125000000000"
              ],
              [
                "-557027/1000000",
                "34345424987/125000000000"
              ]
            ],
            "raw": [
              "198367/1000000",
              "3080385859/5600000000"
            ],
            "new": [
              "198367/1000000",
              "550069/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "u",
            "old": [
              "286239/500000",
              "850807/1000000"
            ],
            "lines": [
              [
                "53847/100000",
                "-360637897201/1000000000000"
              ],
              [
                "53847/100000",
                "-476269516171/1000000000000"
              ],
              [
                "53847/100000",
                "-424680286417/1000000000000"
              ],
              [
                "53847/100000",
                "-540311905387/1000000000000"
              ],
              [
                "859889/1000000",
                "-21386757163/40000000000"
              ],
              [
                "859889/1000000",
                "-151915958771/200000000000"
              ],
              [
                "859889/1000000",
                "-598711318291/1000000000000"
              ],
              [
                "859889/1000000",
                "-823622183071/1000000000000"
              ],
              [
                "53847/100000",
                "-318237759187/1000000000000"
              ],
              [
                "53847/100000",
                "-314294215177/1000000000000"
              ],
              [
                "53847/100000",
                "-495826435699/1000000000000"
              ],
              [
                "53847/100000",
                "-491882891689/1000000000000"
              ],
              [
                "859889/1000000",
                "-492268791061/1000000000000"
              ],
              [
                "859889/1000000",
                "-597604492861/1000000000000"
              ],
              [
                "859889/1000000",
                "-669857467573/1000000000000"
              ],
              [
                "859889/1000000",
                "-775193169373/1000000000000"
              ]
            ],
            "raw": [
              "492268791061/859889000000",
              "850807/1000000"
            ],
            "new": [
              "572479/1000000",
              "850807/1000000"
            ]
          },
          {
            "factor": 110,
            "target": "d",
            "old": [
              "6131/50000",
              "172367/250000"
            ],
            "lines": [
              [
                "-427521/1000000",
                "15068697/100000000"
              ],
              [
                "-427521/1000000",
                "294761547/1000000000"
              ],
              [
                "-149193/1000000",
                "-795999/100000000"
              ],
              [
                "-149193/1000000",
                "42318051/1000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "3169479/4597000"
            ],
            "new": [
              "6131/50000",
              "689467/1000000"
            ]
          },
          {
            "factor": 120,
            "target": "u",
            "old": [
              "572479/1000000",
              "850807/1000000"
            ],
            "lines": [
              [
                "-57/100",
                "153293100659/500000000000"
              ],
              [
                "-57/100",
                "108234426247/250000000000"
              ],
              [
                "-907/1000",
                "244526751659/500000000000"
              ],
              [
                "-907/1000",
                "182495409247/250000000000"
              ],
              [
                "-57/100",
                "233930280113/500000000000"
              ],
              [
                "-57/100",
                "118659225229/250000000000"
              ],
              [
                "-907/1000",
                "325163931113/500000000000"
              ],
              [
                "-907/1000",
                "192920208229/250000000000"
              ]
            ],
            "raw": [
              "572479/1000000",
              "192920208229/226750000000"
            ],
            "new": [
              "572479/1000000",
              "425403/500000"
            ]
          },
          {
            "factor": 136,
            "target": "v",
            "old": [
              "198367/1000000",
              "550069/1000000"
            ],
            "lines": [
              [
                "-98/125",
                "118271043073/1000000000000"
              ],
              [
                "-98/125",
                "160170047393/500000000000"
              ],
              [
                "-557027/1000000",
                "90439613813/1000000000000"
              ],
              [
                "-557027/1000000",
                "32769940279/200000000000"
              ],
              [
                "-98/125",
                "49699190257/250000000000"
              ],
              [
                "-98/125",
                "400865812741/1000000000000"
              ],
              [
                "-557027/1000000",
                "21370666471/125000000000"
              ],
              [
                "-557027/1000000",
                "4887508387/20000000000"
              ],
              [
                "-98/125",
                "21656981861/500000000000"
              ],
              [
                "-98/125",
                "100787960101/250000000000"
              ],
              [
                "-557027/1000000",
                "7741267231/500000000000"
              ],
              [
                "-557027/1000000",
                "246661447013/1000000000000"
              ],
              [
                "-98/125",
                "8926924949/125000000000"
              ],
              [
                "-98/125",
                "215626638137/500000000000"
              ],
              [
                "-557027/1000000",
                "10895992583/250000000000"
              ],
              [
                "-557027/1000000",
                "274762882883/1000000000000"
              ]
            ],
            "raw": [
              "198367/1000000",
              "215626638137/392000000000"
            ],
            "new": [
              "198367/1000000",
              "137517/250000"
            ]
          }
        ]
      }
    },
    {
      "id": 7,
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "270723/500000",
          "6131/50000",
          "57/100",
          "123/1000",
          "27/125",
          "81547/100000",
          "391933/1000000",
          "420889/1000000",
          "53847/100000",
          "572479/1000000",
          "198367/1000000"
        ],
        "high": [
          "135143/500000",
          "279/1000",
          "220359/250000",
          "689467/1000000",
          "907/1000",
          "279/1000",
          "442973/1000000",
          "1",
          "9067/15625",
          "743737/1000000",
          "859889/1000000",
          "425403/500000",
          "137517/250000"
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
        "BFG": -1,
        "EGO": -1,
        "AEG": 1,
        "AEO": 1,
        "AEP": -1
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
        },
        {
          "rule": [
            "cap",
            "CEG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CEG",
              "U_CEG",
              "42534386369/62500000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEO",
            "CGO"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "GABEO"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABG",
            "EGO",
            "BGO",
            "AGO",
            "BEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OABEG"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABO",
            "EGO",
            "BGO",
            "AGO",
            "BEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "AEF",
            [
              "G",
              "O"
            ],
            "P",
            [
              "CEF2-AEF-cap2"
            ]
          ],
          "target": "AEP",
          "sign": -1,
          "deps": [
            "EFP",
            "AFP"
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEO",
            "points": []
          }
        },
        "L_AEP": {
          "triangle": "AEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAP",
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
        "L_CDG": {
          "triangle": "CDG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDG",
            "points": [
              "P"
            ]
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
        "L_DEF": {
          "triangle": "DEF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEF",
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
        "L_EGH": {
          "triangle": "EGH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEH",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "4612307751/15625000000",
              "3751408611/10000000000",
              "98775181611/250000000000",
              "11876347287/25000000000",
              "3754256283/7812500000",
              "3053514663/5000000000",
              "80399523663/125000000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_ADH": {
          "triangle": "ADH",
          "side": "hi",
          "value": "43869/50000",
          "witness": {
            "kind": "vertices",
            "signed": "ADH",
            "used": [
              0,
              3,
              7
            ],
            "values": [
              "17037/31250",
              "13857/20000",
              "364857/500000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "41117613/50000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEF",
            "used": [
              0,
              4,
              5
            ],
            "values": [
              "276035397/500000000",
              "323046897/500000000",
              "325699089/500000000",
              "32926899/50000000",
              "346424589/500000000",
              "37628049/50000000",
              "39045063/50000000",
              "41117613/50000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEG": {
          "triangle": "AEG",
          "side": "hi",
          "value": "1128231/3125000",
          "witness": {
            "kind": "vertices",
            "signed": "AEG",
            "used": [
              0,
              4,
              6,
              8
            ],
            "values": [
              "-80200055361/500000000000",
              "-3907308087/50000000000",
              "-1985403/125000000",
              "-5559104861/500000000000",
              "13977444639/500000000000",
              "7113597/125000000",
              "3556786963/50000000000",
              "2497173/25000000",
              "5510441913/50000000000",
              "5389743/31250000",
              "4316973/25000000",
              "88618395139/500000000000",
              "7664493/31250000",
              "12974536963/50000000000",
              "225189/781250",
              "1128231/3125000"
            ],
            "cell": "CB"
          }
        },
        "U_AEH": {
          "triangle": "AEH",
          "side": "hi",
          "value": "43869/50000",
          "witness": {
            "kind": "vertices",
            "signed": "AEH",
            "used": [
              0,
              4,
              7
            ],
            "values": [
              "17037/31250",
              "13857/20000",
              "364857/500000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_AFO": {
          "triangle": "AFO",
          "side": "hi",
          "value": "30069520953/50000000000",
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
              "71314679373/500000000000",
              "8179076991/50000000000",
              "116152629873/500000000000",
              "117303713373/500000000000",
              "12662872041/50000000000",
              "137070981873/500000000000",
              "13929775191/50000000000",
              "15906502041/50000000000",
              "189108032109/500000000000",
              "22342095903/50000000000",
              "233945982609/500000000000",
              "235097066109/500000000000",
              "254864334609/500000000000",
              "26825890953/50000000000",
              "28092794103/50000000000",
              "30069520953/50000000000"
            ],
            "cell": "CB"
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
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "189609/250000",
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
              "209223/500000",
              "150609/250000",
              "189609/250000"
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
        "U_BFO": {
          "triangle": "BFO",
          "side": "hi",
          "value": "620737/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "FBO",
            "used": [
              1,
              5,
              9,
              10
            ],
            "values": [
              "141889/1000000",
              "40936579/250000000",
              "668399/3125000",
              "2823629/12500000",
              "69007921/250000000",
              "297889/1000000",
              "464737/1000000",
              "121648579/250000000",
              "1677299/3125000",
              "6859229/12500000",
              "149719921/250000000",
              "620737/1000000"
            ],
            "cell": "CB"
          }
        },
        "U_CDG": {
          "triangle": "CDG",
          "side": "hi",
          "value": "131899357261/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDG",
            "used": [
              2,
              3,
              6,
              8
            ],
            "values": [
              "12529184659/125000000000",
              "30641399873/250000000000",
              "32016226633/250000000000",
              "9399814297/62500000000",
              "95898602071/500000000000",
              "109814316701/500000000000",
              "247616328773/1000000000000",
              "69542035703/250000000000",
              "38249946509/125000000000",
              "333987267443/1000000000000",
              "348774913433/1000000000000",
              "371107035653/1000000000000",
              "101026680541/250000000000",
              "245238830417/500000000000",
              "63158163353/125000000000",
              "131899357261/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "419042261/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "11548813/25000000",
              "13771813/25000000",
              "30407411/50000000",
              "166243363/250000000",
              "348296261/500000000",
              "34853411/50000000",
              "201616363/250000000",
              "419042261/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEG": {
          "triangle": "CEG",
          "side": "hi",
          "value": "21010991201/31250000000",
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
              "117926027441/500000000000",
              "134518727941/500000000000",
              "74098263553/250000000000",
              "19920323527/62500000000",
              "20138937097/62500000000",
              "44426049319/125000000000",
              "182613332441/500000000000",
              "106441916053/250000000000",
              "111038771303/250000000000",
              "7001559163/15625000000",
              "14112425111/31250000000",
              "58310900929/125000000000",
              "237450983441/500000000000",
              "35079556597/62500000000",
              "162504899053/250000000000",
              "21010991201/31250000000"
            ],
            "cell": "CB"
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
              "14977597627/25000000000",
              "15524563/25000000",
              "34128062519/50000000000",
              "38358911/50000000",
              "43251427619/50000000000",
              "22403695927/25000000000",
              "229506613/250000000",
              "474822761/500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "129917002099/250000000000",
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
              "3171981769/50000000000",
              "6580585119/50000000000",
              "3558289677/25000000000",
              "45110077349/250000000000",
              "589800469/3125000000",
              "105413801753/500000000000",
              "56711218099/250000000000",
              "139499835253/500000000000",
              "15781753119/50000000000",
              "8158873677/25000000000",
              "17813138569/50000000000",
              "91115917349/250000000000",
              "231511515253/500000000000",
              "1504872769/3125000000",
              "251825369753/500000000000",
              "129917002099/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "524625759/1000000000",
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
              "115249517/500000000",
              "116051981/500000000",
              "287362863/1000000000",
              "38558919/125000000",
              "20506089/62500000",
              "20606397/62500000",
              "67665987/200000000",
              "44929803/125000000",
              "367907917/1000000000",
              "395686369/1000000000",
              "211583409/500000000",
              "444275307/1000000000",
              "465506307/1000000000",
              "493284759/1000000000",
              "50351727/100000000",
              "524625759/1000000000"
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
        "4": {
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
        "13": {
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
        "15": {
          "row": [
            "fan",
            "BDF",
            "BDG",
            "DFG",
            "BFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BDF",
            "point": "G"
          }
        },
        "25": {
          "row": [
            "fan",
            "CDF",
            "CDP",
            "DFP",
            "CFP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CDF",
            "point": "P"
          }
        },
        "27": {
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
        "30": {
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
        "35": {
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
        "46": {
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
        "130": {
          "row": [
            "plu",
            "AEG",
            "AFO",
            "AEF",
            "AGO",
            "AEO",
            "AFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "AEFGO"
          }
        },
        "345": {
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
        "350": {
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
        "427": {
          "row": [
            "plu",
            "AEF",
            "BEG",
            "ABE",
            "EFG",
            "AEG",
            "BEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "EABFG"
          }
        },
        "451": {
          "row": [
            "plu",
            "ADE",
            "EFP",
            "AEF",
            "DEP",
            "AEP",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "EADFP"
          }
        },
        "459": {
          "row": [
            "plu",
            "AEO",
            "EFG",
            "AEF",
            "EGO",
            "AEG",
            "EFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "EAFGO"
          }
        },
        "501": {
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
        "533": {
          "row": [
            "plu",
            "AFG",
            "BEF",
            "ABF",
            "EFG",
            "AEF",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FABEG"
          }
        },
        "609": {
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
        "675": {
          "row": [
            "plu",
            "AEG",
            "FGO",
            "AFG",
            "EGO",
            "AGO",
            "EFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEFO"
          }
        },
        "677": {
          "row": [
            "plu",
            "AEG",
            "GHO",
            "AGH",
            "EGO",
            "AGO",
            "EGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEHO"
          }
        },
        "837": {
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
        "1037": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-43317687/50000000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "43317687/50000000"
          }
        },
        "1193": {
          "row": [
            "quad",
            "ADE",
            "AEH",
            "93/125"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ADEH",
            "occupants": [
              "G",
              "O"
            ]
          }
        },
        "1272": {
          "row": [
            "quad",
            "BCE",
            "BEF",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "BCEF",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "1393": {
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
        "1429": {
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
        "1476": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O"
            ]
          }
        },
        "1516": {
          "row": [
            "support",
            "CDG",
            "BCD",
            "BDG",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "DGABC"
          }
        },
        "1849": {
          "row": [
            "support",
            "CDF",
            "CDG",
            "DFG",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "DFHGC"
          }
        },
        "2081": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "CFP"
              ],
              [
                1,
                "ABF",
                "CEP"
              ],
              [
                -1,
                "ACP",
                "BEF"
              ],
              [
                1,
                "AEF",
                "BCP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "CP"
          }
        },
        "2085": {
          "row": [
            "balance",
            [
              [
                1,
                "ABE",
                "FGO"
              ],
              [
                1,
                "ABF",
                "EGO"
              ],
              [
                -1,
                "AEF",
                "BGO"
              ],
              [
                1,
                "AGO",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABE",
            "point": "F",
            "line": "GO"
          }
        },
        "2333": {
          "row": [
            "balance",
            [
              [
                1,
                "ABF",
                "CEG"
              ],
              [
                1,
                "ACE",
                "BFG"
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
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACE",
            "point": "G",
            "line": "BF"
          }
        },
        "2521": {
          "row": [
            "balance",
            [
              [
                1,
                "ABF",
                "DEG"
              ],
              [
                1,
                "ADE",
                "BFG"
              ],
              [
                -1,
                "ADG",
                "BEF"
              ],
              [
                1,
                "AEG",
                "BDF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ADE",
            "point": "G",
            "line": "BF"
          }
        },
        "2613": {
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
        "2630": {
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
        "2639": {
          "row": [
            "balance",
            [
              [
                1,
                "ABG",
                "EFO"
              ],
              [
                1,
                "AEF",
                "BGO"
              ],
              [
                1,
                "AEO",
                "BFG"
              ],
              [
                -1,
                "AFO",
                "BEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEF",
            "point": "O",
            "line": "BG"
          }
        },
        "2676": {
          "row": [
            "balance",
            [
              [
                1,
                "ABF",
                "EGO"
              ],
              [
                -1,
                "AEG",
                "BFO"
              ],
              [
                1,
                "AEO",
                "BFG"
              ],
              [
                1,
                "AGO",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEG",
            "point": "O",
            "line": "BF"
          }
        },
        "2973": {
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
                "ACE",
                "BFG"
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
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCF",
            "point": "G",
            "line": "AE"
          }
        },
        "3199": {
          "row": [
            "balance",
            [
              [
                1,
                "ABH",
                "EFG"
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
              ],
              [
                -1,
                "AGH",
                "BEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BEF",
            "point": "G",
            "line": "AH"
          }
        },
        "3572": {
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
        "3623": {
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
        "3690": {
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
        "3729": {
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
        "4146": {
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
        "4961": {
          "row": [
            "linear",
            {
              "EFO": "-93/1000",
              "AEO": "20769520953/50000000000",
              "EGO": "-30069520953/50000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FAO",
            "point": "G",
            "line": "EO",
            "side": "upper",
            "outer_upper": {
              "triangle": "AFO",
              "ref": "U_AFO",
              "value": "30069520953/50000000000"
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
            "residual": "16119520953/50000000000"
          }
        },
        "6919": {
          "row": [
            "linear",
            {
              "CEH": "-93/1000",
              "CHO": "-93/1000",
              "CHP": "129917002099/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "CH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CEO",
              "ref": "U_CEO",
              "value": "129917002099/250000000000"
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
            "residual": "60167002099/250000000000"
          }
        },
        "6948": {
          "row": [
            "linear",
            {
              "CFO": "83417002099/250000000000",
              "EFO": "-93/1000",
              "FOP": "-129917002099/250000000000"
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
              "value": "129917002099/250000000000"
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
            "residual": "60167002099/250000000000"
          }
        },
        "6974": {
          "row": [
            "linear",
            {
              "AEG": "338625759/1000000000",
              "AFG": "-93/1000",
              "AGO": "-524625759/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "524625759/1000000000"
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
            "residual": "245625759/1000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0021",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "11687/100000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "L_ACE",
            "U_ACH"
          ]
        },
        {
          "id": "T0023",
          "relation": 130,
          "rule": "sumlo",
          "triangle": "AEG",
          "side": "lo",
          "value": "4861/40000",
          "sources": [
            "L_AEF",
            "L_AGO",
            "L_AEO",
            "L_AFG",
            "U_AFO"
          ]
        },
        {
          "id": "T0030",
          "relation": 345,
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
          "id": "T0032",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "35159/250000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "L_CFO",
            "U_CEO"
          ]
        },
        {
          "id": "T0037",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "AEO",
          "side": "lo",
          "value": "144363/1000000",
          "sources": [
            "L_AEF",
            "L_EGO",
            "T0023",
            "L_EFO",
            "U_EFG"
          ]
        },
        {
          "id": "T0040",
          "relation": 501,
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
          "id": "T0042",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51529/500000",
          "sources": [
            "L_ABF",
            "L_EFG",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0047",
          "relation": 609,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "34923/250000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0030",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0051",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "19683/200000",
          "sources": [
            "T0042",
            "L_EGO",
            "L_AGO",
            "L_EFG",
            "U_AEG"
          ]
        },
        {
          "id": "T0052",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "5989/62500",
          "sources": [
            "L_AGH",
            "L_EGO",
            "L_AGO",
            "L_EGH",
            "U_AEG"
          ]
        },
        {
          "id": "T0058",
          "relation": 1037,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "386677/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0062",
          "relation": 1272,
          "rule": "quad",
          "triangle": "BCE",
          "side": "lo",
          "value": "72489/500000",
          "sources": [
            "U_BEF"
          ]
        },
        {
          "id": "T0063",
          "relation": 1429,
          "rule": "linear",
          "triangle": "CFH",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CEF"
          ]
        },
        {
          "id": "T0064",
          "relation": 1516,
          "rule": "support_z",
          "triangle": "BDG",
          "side": "lo",
          "value": "45409/250000",
          "sources": [
            "L_CDG",
            "U_BCD"
          ]
        },
        {
          "id": "T0072",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "4083/40000",
          "sources": [
            "T0021",
            "T0032",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0073",
          "relation": 2085,
          "rule": "balance_lo",
          "triangle": "BGO",
          "side": "lo",
          "value": "51429/500000",
          "sources": [
            "T0021",
            "T0051",
            "L_ABF",
            "L_EGO",
            "L_AGO",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0078",
          "relation": 2333,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "12229/125000",
          "sources": [
            "L_ABF",
            "L_CEG",
            "L_ACE",
            "L_BFG",
            "T0023",
            "L_BCF",
            "U_BEF"
          ]
        },
        {
          "id": "T0085",
          "relation": 2630,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "113383/1000000",
          "sources": [
            "T0078",
            "L_EFH",
            "L_AEF",
            "L_CGH",
            "L_AFH",
            "L_CEG",
            "U_AEH"
          ]
        },
        {
          "id": "T0088",
          "relation": 2639,
          "rule": "balance_lo",
          "triangle": "BEG",
          "side": "lo",
          "value": "155543/1000000",
          "sources": [
            "L_ABG",
            "T0040",
            "L_AEF",
            "T0073",
            "T0037",
            "L_BFG",
            "U_AFO"
          ]
        },
        {
          "id": "T0090",
          "relation": 2676,
          "rule": "balance_lo",
          "triangle": "AEG",
          "side": "lo",
          "value": "69683/500000",
          "sources": [
            "L_ABF",
            "L_EGO",
            "T0037",
            "L_BFG",
            "L_AGO",
            "L_BEF",
            "U_BFO"
          ]
        },
        {
          "id": "T0095",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "23737/250000",
          "sources": [
            "T0021",
            "T0085",
            "L_ACE",
            "L_BFG",
            "T0090",
            "L_BCF",
            "U_AEF"
          ]
        },
        {
          "id": "T0096",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "1868/15625",
          "sources": [
            "L_ABH",
            "L_EFG",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0088",
            "U_BEF"
          ]
        },
        {
          "id": "T0106",
          "relation": 3690,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "62601/500000",
          "sources": [
            "L_ACE",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "T0090",
            "T0047",
            "U_AEH"
          ]
        },
        {
          "id": "T0111",
          "relation": 4961,
          "rule": "linear",
          "triangle": "AEO",
          "side": "lo",
          "value": "3119/20000",
          "sources": [
            "T0040",
            "L_EGO"
          ]
        },
        {
          "id": "T0131",
          "relation": 6948,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "21421/125000",
          "sources": [
            "T0040",
            "L_FOP"
          ]
        },
        {
          "id": "T0135",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "86193/500000",
          "sources": [
            "T0042",
            "L_AGO"
          ]
        },
        {
          "id": "T0141",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "11523/40000",
          "sources": [
            "T0072",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0154",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "6263/20000",
          "sources": [
            "T0095",
            "T0106",
            "L_BFG"
          ]
        },
        {
          "id": "T0171",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "286589/1000000",
          "sources": [
            "T0040",
            "T0051",
            "L_EGO"
          ]
        },
        {
          "id": "T0175",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "8807/31250",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0052"
          ]
        },
        {
          "id": "T0179",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "117961/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0141",
            "T0058"
          ]
        },
        {
          "id": "T0185",
          "relation": 350,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "7733/50000",
          "sources": [
            "L_CEF",
            "L_COP",
            "L_CEP",
            "T0131",
            "U_CEO"
          ]
        },
        {
          "id": "T0187",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "BEG",
          "side": "lo",
          "value": "46587/250000",
          "sources": [
            "T0179",
            "T0171",
            "T0135",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0191",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51931/500000",
          "sources": [
            "L_ABF",
            "T0171",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0195",
          "relation": 609,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "29003/200000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0106",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0196",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "100577/1000000",
          "sources": [
            "T0191",
            "L_EGO",
            "L_AGO",
            "T0171",
            "U_AEG"
          ]
        },
        {
          "id": "T0197",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "103391/1000000",
          "sources": [
            "T0096",
            "L_EGO",
            "L_AGO",
            "T0175",
            "U_AEG"
          ]
        },
        {
          "id": "T0203",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "13017/125000",
          "sources": [
            "T0179",
            "T0185",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0211",
          "relation": 2613,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "23273/200000",
          "sources": [
            "L_ABC",
            "T0171",
            "T0135",
            "T0154",
            "T0191",
            "T0062",
            "U_AEF"
          ]
        },
        {
          "id": "T0218",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "123623/1000000",
          "sources": [
            "L_ABH",
            "T0171",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0187",
            "U_BEF"
          ]
        },
        {
          "id": "T0226",
          "relation": 3690,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "132467/1000000",
          "sources": [
            "T0141",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "T0135",
            "T0195",
            "U_AEH"
          ]
        },
        {
          "id": "T0229",
          "relation": 4146,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "26627/250000",
          "sources": [
            "L_AEH",
            "L_FOP",
            "T0111",
            "L_FHP",
            "L_AEP",
            "L_FHO",
            "U_AEF"
          ]
        },
        {
          "id": "T0235",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "172607/1000000",
          "sources": [
            "T0191",
            "L_AGO"
          ]
        },
        {
          "id": "T0238",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "36267/125000",
          "sources": [
            "T0203",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0249",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "42729/125000",
          "sources": [
            "T0211",
            "T0226",
            "L_BFG"
          ]
        },
        {
          "id": "T0262",
          "relation": 30,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "23617/40000",
          "sources": [
            "U_CEF",
            "L_CEP",
            "T0185"
          ]
        },
        {
          "id": "T0265",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "288751/1000000",
          "sources": [
            "T0040",
            "T0196",
            "L_EGO"
          ]
        },
        {
          "id": "T0267",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "289391/1000000",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0197"
          ]
        },
        {
          "id": "T0270",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "118209/1000000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0238",
            "T0058"
          ]
        },
        {
          "id": "T0275",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "BEG",
          "side": "lo",
          "value": "186931/1000000",
          "sources": [
            "T0270",
            "T0265",
            "T0235",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0276",
          "relation": 451,
          "rule": "sumlo",
          "triangle": "ADE",
          "side": "lo",
          "value": "61891/500000",
          "sources": [
            "L_AEF",
            "L_DEP",
            "L_AEP",
            "L_DEF",
            "T0262"
          ]
        },
        {
          "id": "T0278",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "26023/250000",
          "sources": [
            "L_ABF",
            "T0265",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0279",
          "relation": 609,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "146303/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0226",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0280",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101193/1000000",
          "sources": [
            "T0278",
            "L_EGO",
            "L_AGO",
            "T0265",
            "U_AEG"
          ]
        },
        {
          "id": "T0281",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "106389/1000000",
          "sources": [
            "T0218",
            "L_EGO",
            "L_AGO",
            "T0267",
            "U_AEG"
          ]
        },
        {
          "id": "T0284",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "5209/50000",
          "sources": [
            "T0270",
            "T0185",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0293",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "123601/1000000",
          "sources": [
            "T0270",
            "T0226",
            "T0238",
            "L_BFG",
            "T0235",
            "T0249",
            "U_AEF"
          ]
        },
        {
          "id": "T0294",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "24783/200000",
          "sources": [
            "L_ABH",
            "T0265",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0275",
            "U_BEF"
          ]
        },
        {
          "id": "T0300",
          "relation": 3690,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "8311/62500",
          "sources": [
            "T0238",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "T0235",
            "T0279",
            "U_AEH"
          ]
        },
        {
          "id": "T0306",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "17267/100000",
          "sources": [
            "T0278",
            "L_AGO"
          ]
        },
        {
          "id": "T0309",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "14509/50000",
          "sources": [
            "T0284",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0320",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "349577/1000000",
          "sources": [
            "T0293",
            "T0300",
            "L_BFG"
          ]
        },
        {
          "id": "T0334",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289367/1000000",
          "sources": [
            "T0040",
            "T0280",
            "L_EGO"
          ]
        },
        {
          "id": "T0336",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "292389/1000000",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0281"
          ]
        },
        {
          "id": "T0338",
          "relation": 46,
          "rule": "sumlo",
          "triangle": "ABE",
          "side": "lo",
          "value": "59107/500000",
          "sources": [
            "L_ABC",
            "L_AEH",
            "L_ABH",
            "T0309",
            "T0058"
          ]
        },
        {
          "id": "T0343",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "BEG",
          "side": "lo",
          "value": "7483/40000",
          "sources": [
            "T0338",
            "T0334",
            "T0306",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0345",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104157/1000000",
          "sources": [
            "L_ABF",
            "T0334",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0346",
          "relation": 609,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "146393/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0300",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0347",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101369/1000000",
          "sources": [
            "T0345",
            "L_EGO",
            "L_AGO",
            "T0334",
            "U_AEG"
          ]
        },
        {
          "id": "T0348",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "107237/1000000",
          "sources": [
            "T0294",
            "L_EGO",
            "L_AGO",
            "T0336",
            "U_AEG"
          ]
        },
        {
          "id": "T0351",
          "relation": 2081,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "104181/1000000",
          "sources": [
            "T0338",
            "T0185",
            "L_ABF",
            "L_CEP",
            "L_AEF",
            "L_BCP",
            "U_BEF"
          ]
        },
        {
          "id": "T0360",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "31333/250000",
          "sources": [
            "T0338",
            "T0300",
            "T0309",
            "L_BFG",
            "T0306",
            "T0320",
            "U_AEF"
          ]
        },
        {
          "id": "T0361",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "24799/200000",
          "sources": [
            "L_ABH",
            "T0334",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0343",
            "U_BEF"
          ]
        },
        {
          "id": "T0367",
          "relation": 3690,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "133009/1000000",
          "sources": [
            "T0309",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "T0306",
            "T0346",
            "U_AEH"
          ]
        },
        {
          "id": "T0368",
          "relation": 3729,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "204959/1000000",
          "sources": [
            "T0309",
            "L_FHO",
            "L_AEH",
            "T0131",
            "T0111",
            "T0346",
            "U_AEF"
          ]
        },
        {
          "id": "T0372",
          "relation": 6919,
          "rule": "linear",
          "triangle": "CHP",
          "side": "lo",
          "value": "5021/31250",
          "sources": [
            "L_CEH",
            "T0368"
          ]
        },
        {
          "id": "T0373",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "10793/62500",
          "sources": [
            "T0345",
            "L_AGO"
          ]
        },
        {
          "id": "T0376",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACE",
          "side": "lo",
          "value": "290181/1000000",
          "sources": [
            "T0351",
            "L_CEP",
            "L_AEP"
          ]
        },
        {
          "id": "T0387",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "351341/1000000",
          "sources": [
            "T0360",
            "T0367",
            "L_BFG"
          ]
        },
        {
          "id": "T0401",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289543/1000000",
          "sources": [
            "T0040",
            "T0347",
            "L_EGO"
          ]
        },
        {
          "id": "T0403",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "293237/1000000",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0348"
          ]
        },
        {
          "id": "T0408",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "BEG",
          "side": "lo",
          "value": "37423/200000",
          "sources": [
            "T0338",
            "T0401",
            "T0373",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0410",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "6511/62500",
          "sources": [
            "L_ABF",
            "T0401",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0411",
          "relation": 609,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "146399/1000000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0367",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0412",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101419/1000000",
          "sources": [
            "T0410",
            "L_EGO",
            "L_AGO",
            "T0401",
            "U_AEG"
          ]
        },
        {
          "id": "T0413",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "26869/250000",
          "sources": [
            "T0361",
            "L_EGO",
            "L_AGO",
            "T0403",
            "U_AEG"
          ]
        },
        {
          "id": "T0423",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "25143/200000",
          "sources": [
            "T0338",
            "T0367",
            "T0376",
            "L_BFG",
            "T0373",
            "T0387",
            "U_AEF"
          ]
        },
        {
          "id": "T0424",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "62009/500000",
          "sources": [
            "L_ABH",
            "T0401",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0408",
            "U_BEF"
          ]
        },
        {
          "id": "T0430",
          "relation": 3690,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "133013/1000000",
          "sources": [
            "T0376",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "T0373",
            "T0411",
            "U_AEH"
          ]
        },
        {
          "id": "T0433",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "172693/1000000",
          "sources": [
            "T0410",
            "L_AGO"
          ]
        },
        {
          "id": "T0446",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "21983/62500",
          "sources": [
            "T0423",
            "T0430",
            "L_BFG"
          ]
        },
        {
          "id": "T0457",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289593/1000000",
          "sources": [
            "T0040",
            "T0412",
            "L_EGO"
          ]
        },
        {
          "id": "T0459",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "73369/250000",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0413"
          ]
        },
        {
          "id": "T0464",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "BEG",
          "side": "lo",
          "value": "93563/500000",
          "sources": [
            "T0338",
            "T0457",
            "T0433",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0466",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104181/1000000",
          "sources": [
            "L_ABF",
            "T0457",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0467",
          "relation": 609,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "183/1250",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0430",
            "L_EFH",
            "U_EFG"
          ]
        },
        {
          "id": "T0468",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101433/1000000",
          "sources": [
            "T0466",
            "L_EGO",
            "L_AGO",
            "T0457",
            "U_AEG"
          ]
        },
        {
          "id": "T0469",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "107543/1000000",
          "sources": [
            "T0424",
            "L_EGO",
            "L_AGO",
            "T0459",
            "U_AEG"
          ]
        },
        {
          "id": "T0479",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "125799/1000000",
          "sources": [
            "T0338",
            "T0430",
            "T0376",
            "L_BFG",
            "T0433",
            "T0446",
            "U_AEF"
          ]
        },
        {
          "id": "T0480",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "15503/125000",
          "sources": [
            "L_ABH",
            "T0457",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0464",
            "U_BEF"
          ]
        },
        {
          "id": "T0482",
          "relation": 3572,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "15429/100000",
          "sources": [
            "L_CDP",
            "T0457",
            "L_CEF",
            "L_DGP",
            "T0430",
            "L_DEP",
            "U_CEG"
          ]
        },
        {
          "id": "T0486",
          "relation": 3690,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "66507/500000",
          "sources": [
            "T0376",
            "L_FGH",
            "L_AEF",
            "L_CGH",
            "T0433",
            "T0467",
            "U_AEH"
          ]
        },
        {
          "id": "T0489",
          "relation": 6974,
          "rule": "linear",
          "triangle": "AEG",
          "side": "lo",
          "value": "34539/200000",
          "sources": [
            "T0466",
            "L_AGO"
          ]
        },
        {
          "id": "T0502",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "351813/1000000",
          "sources": [
            "T0479",
            "T0486",
            "L_BFG"
          ]
        },
        {
          "id": "T0511",
          "relation": 25,
          "rule": "sum",
          "triangle": "CDF",
          "side": "lo",
          "value": "8039/20000",
          "sources": [
            "L_CDP",
            "T0482",
            "T0185"
          ]
        },
        {
          "id": "T0513",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289607/1000000",
          "sources": [
            "T0040",
            "T0468",
            "L_EGO"
          ]
        },
        {
          "id": "T0515",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "293543/1000000",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0469"
          ]
        },
        {
          "id": "T0520",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "BEG",
          "side": "lo",
          "value": "18713/100000",
          "sources": [
            "T0338",
            "T0513",
            "T0489",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0521",
          "relation": 533,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "104183/1000000",
          "sources": [
            "L_ABF",
            "T0513",
            "L_AEF",
            "L_BFG",
            "U_BEF"
          ]
        },
        {
          "id": "T0522",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "101437/1000000",
          "sources": [
            "T0521",
            "L_EGO",
            "L_AGO",
            "T0513",
            "U_AEG"
          ]
        },
        {
          "id": "T0523",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "53781/500000",
          "sources": [
            "T0480",
            "L_EGO",
            "L_AGO",
            "T0515",
            "U_AEG"
          ]
        },
        {
          "id": "T0525",
          "relation": 1849,
          "rule": "support_z",
          "triangle": "DFG",
          "side": "lo",
          "value": "3893/20000",
          "sources": [
            "T0511",
            "U_CDG"
          ]
        },
        {
          "id": "T0532",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "62909/500000",
          "sources": [
            "T0338",
            "T0486",
            "T0376",
            "L_BFG",
            "T0489",
            "T0502",
            "U_AEF"
          ]
        },
        {
          "id": "T0533",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "62013/500000",
          "sources": [
            "L_ABH",
            "T0513",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0520",
            "U_BEF"
          ]
        },
        {
          "id": "T0549",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "43979/125000",
          "sources": [
            "T0532",
            "T0486",
            "L_BFG"
          ]
        },
        {
          "id": "T0551",
          "relation": 15,
          "rule": "sum",
          "triangle": "BDF",
          "side": "lo",
          "value": "234643/500000",
          "sources": [
            "T0064",
            "T0525",
            "L_BFG"
          ]
        },
        {
          "id": "T0560",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "289611/1000000",
          "sources": [
            "T0040",
            "T0522",
            "L_EGO"
          ]
        },
        {
          "id": "T0562",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "146781/500000",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0523"
          ]
        },
        {
          "id": "T0567",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "BEG",
          "side": "lo",
          "value": "187131/1000000",
          "sources": [
            "T0338",
            "T0560",
            "T0489",
            "L_BEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0570",
          "relation": 677,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "107567/1000000",
          "sources": [
            "T0533",
            "L_EGO",
            "L_AGO",
            "T0562",
            "U_AEG"
          ]
        },
        {
          "id": "T0575",
          "relation": 2521,
          "rule": "balance_lo",
          "triangle": "ADG",
          "side": "lo",
          "value": "57699/500000",
          "sources": [
            "L_ABF",
            "L_DEG",
            "T0276",
            "L_BFG",
            "T0489",
            "T0551",
            "U_BEF"
          ]
        },
        {
          "id": "T0579",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "62911/500000",
          "sources": [
            "T0338",
            "T0486",
            "T0376",
            "L_BFG",
            "T0489",
            "T0549",
            "U_AEF"
          ]
        },
        {
          "id": "T0580",
          "relation": 3199,
          "rule": "balance_lo",
          "triangle": "AGH",
          "side": "lo",
          "value": "124027/1000000",
          "sources": [
            "L_ABH",
            "T0560",
            "L_AEH",
            "L_BFG",
            "L_AFH",
            "T0567",
            "U_BEF"
          ]
        },
        {
          "id": "T0581",
          "relation": 3572,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "154293/1000000",
          "sources": [
            "L_CDP",
            "T0560",
            "L_CEF",
            "L_DGP",
            "T0486",
            "L_DEP",
            "U_CEG"
          ]
        },
        {
          "id": "T0583",
          "relation": 3623,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "18663/125000",
          "sources": [
            "L_CDP",
            "T0562",
            "L_CEH",
            "L_DGP",
            "L_CGH",
            "L_DEP",
            "U_CEG"
          ]
        },
        {
          "id": "T0596",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "87959/250000",
          "sources": [
            "T0579",
            "T0486",
            "L_BFG"
          ]
        },
        {
          "id": "T0605",
          "relation": 25,
          "rule": "sum",
          "triangle": "CDF",
          "side": "lo",
          "value": "401953/1000000",
          "sources": [
            "L_CDP",
            "T0581",
            "T0185"
          ]
        },
        {
          "id": "T0606",
          "relation": 27,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "12593/31250",
          "sources": [
            "L_CDP",
            "T0583",
            "T0372"
          ]
        },
        {
          "id": "T0609",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "293567/1000000",
          "sources": [
            "L_EGO",
            "L_EHO",
            "T0570"
          ]
        },
        {
          "id": "T0616",
          "relation": 837,
          "rule": "sumlo",
          "triangle": "DGH",
          "side": "lo",
          "value": "150173/1000000",
          "sources": [
            "T0606",
            "L_FGH",
            "L_CGH",
            "L_DFH",
            "T0063"
          ]
        },
        {
          "id": "T0619",
          "relation": 2973,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "125823/1000000",
          "sources": [
            "T0338",
            "T0486",
            "T0376",
            "L_BFG",
            "T0489",
            "T0596",
            "U_AEF"
          ]
        },
        {
          "id": "T0621",
          "relation": 3623,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "29861/200000",
          "sources": [
            "L_CDP",
            "T0609",
            "L_CEH",
            "L_DGP",
            "L_CGH",
            "L_DEP",
            "U_CEG"
          ]
        },
        {
          "id": "T0626",
          "relation": 4,
          "rule": "sum",
          "triangle": "ADH",
          "side": "lo",
          "value": "194799/500000",
          "sources": [
            "T0575",
            "T0616",
            "T0580"
          ]
        },
        {
          "id": "T0632",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "351837/1000000",
          "sources": [
            "T0619",
            "T0486",
            "L_BFG"
          ]
        }
      ],
      "physical": {
        "AREA_HI_ADH": {
          "name": "AREA_HI_ADH",
          "terms": [
            [
              [],
              "43869/50000"
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
            "value": "43869/50000"
          }
        },
        "AREA_HI_BCF": {
          "name": "AREA_HI_BCF",
          "terms": [
            [
              [],
              "189609/250000"
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
            "value": "189609/250000"
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
              "-194799/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADH",
            "side": "lo",
            "reference": "T0626",
            "value": "194799/500000"
          }
        },
        "AREA_LO_AEG": {
          "name": "AREA_LO_AEG",
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
                4,
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
              "-34539/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "T0489",
            "value": "34539/200000"
          }
        },
        "AREA_LO_AEH": {
          "name": "AREA_LO_AEH",
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEH",
            "side": "lo",
            "reference": "L_AEH",
            "value": "13857/20000"
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
              "-351837/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T0632",
            "value": "351837/1000000"
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
        "AREA_LO_CDF": {
          "name": "AREA_LO_CDF",
          "terms": [
            [
              [],
              "598047/1000000"
            ],
            [
              [
                2
              ],
              "-1"
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
                2,
                3
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDF",
            "side": "lo",
            "reference": "T0605",
            "value": "401953/1000000"
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
              "-21421/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0131",
            "value": "21421/125000"
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
              "-29861/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DHP",
            "side": "lo",
            "reference": "T0621",
            "value": "29861/200000"
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
        "AREA_LO_EGO": {
          "name": "AREA_LO_EGO",
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
                4,
                6
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
                8,
                9
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
              [
                4,
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
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "AREA_LO_EHO": {
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
        "AREA_LO_HOP": {
          "name": "AREA_LO_HOP",
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
                7,
                9
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
                7,
                11
              ],
              "-1"
            ],
            [
              [],
              "-26627/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "HOP",
            "side": "lo",
            "reference": "T0229",
            "value": "26627/250000"
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
        "QUAD_1193": {
          "name": "QUAD_1193",
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
              "-93/125"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1193
          }
        },
        "QUAD_1393": {
          "name": "QUAD_1393",
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
            "index": 1393
          }
        },
        "QUAD_1476": {
          "name": "QUAD_1476",
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
              [],
              "551/1000"
            ],
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
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1476
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
    "stage": 7,
    "sum": {
      "factors": [
        {
          "weight": 27,
          "atoms": [
            "L0",
            "L0",
            "L3"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L0",
            "L0",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L2",
            "L7"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L0",
            "L2",
            "L9"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "L0",
            "L2",
            "L11"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L6",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L8",
            "L23"
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
          "weight": 10,
          "atoms": [
            "L0",
            "L18",
            "Gsum"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L0",
            "L20",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L22",
            "Gsum"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L24",
            "L5"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "L0",
            "L3",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L0",
            "L5",
            "overlap_ae"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L0",
            "L5",
            "Gsum"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "L0",
            "L11",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L0",
            "L13",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L0",
            "AREA_HI_BCF",
            "Gsum"
          ]
        },
        {
          "weight": 72,
          "atoms": [
            "L2",
            "L12",
            "L21"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "L2",
            "L12",
            "overlap_eh"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "L2",
            "L14",
            "L5"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "L2",
            "L5",
            "L21"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L2",
            "L5",
            "overlap_eh"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "L2",
            "L9",
            "L17"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "L2",
            "L17",
            "L19"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "L2",
            "L17",
            "L21"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L2",
            "L17",
            "AREA_LO_ADH"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "L2",
            "L17",
            "span_BC"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L2",
            "L17",
            "overlap_bf"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L2",
            "L21",
            "overlap_eh"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "L4",
            "L12",
            "L9"
          ]
        },
        {
          "weight": 39,
          "atoms": [
            "L4",
            "L20",
            "overlap_bf"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "L4",
            "L5",
            "L21"
          ]
        },
        {
          "weight": 33,
          "atoms": [
            "L4",
            "L9",
            "L19"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L4",
            "L19",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L4",
            "L21",
            "L23"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L6",
            "L16",
            "overlap_bf"
          ]
        },
        {
          "weight": 24,
          "atoms": [
            "L6",
            "L18",
            "L5"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L6",
            "L18",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L6",
            "L5",
            "L23"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L8",
            "L12",
            "L5"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L8",
            "L12",
            "L23"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L8",
            "L18",
            "L17"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L8",
            "L20",
            "overlap_bf"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L8",
            "L5",
            "L17"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L8",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 80,
          "atoms": [
            "L10",
            "L20",
            "L15"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L12",
            "L14",
            "L15"
          ]
        },
        {
          "weight": 46,
          "atoms": [
            "L12",
            "L20",
            "AREA_LO_AEH"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L12",
            "L24",
            "L11"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L12",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L12",
            "L15",
            "overlap_eh"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L12",
            "AREA_HI_ADH",
            "overlap_bf"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L12",
            "AREA_HI_ADH",
            "overlap_eh"
          ]
        },
        {
          "weight": 40,
          "atoms": [
            "L14",
            "L18",
            "L5"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L14",
            "L18",
            "L17"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L14",
            "L24",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L14",
            "L17",
            "L23"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L14",
            "L17",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L14",
            "AREA_HI_BCF",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L14",
            "AREA_HI_BCF",
            "overlap_eh"
          ]
        },
        {
          "weight": 91,
          "atoms": [
            "L16",
            "L20",
            "overlap_bf"
          ]
        },
        {
          "weight": 30,
          "atoms": [
            "L16",
            "L1",
            "overlap_bf"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "L16",
            "L11",
            "overlap_bf"
          ]
        },
        {
          "weight": 44,
          "atoms": [
            "L16",
            "AREA_LO_AEH",
            "overlap_bf"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L18",
            "L24",
            "L17"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L20",
            "L5",
            "L17"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L20",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L22",
            "L5",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L22",
            "overlap_eh",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L24",
            "L5",
            "overlap_eh"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L1",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "L5",
            "L11",
            "L17"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L5",
            "L17",
            "L23"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "L9",
            "L11",
            "L21"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "L9",
            "L19",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L11",
            "L15",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
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
            "AREA_HI_ADH",
            "overlap_eh"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "L11",
            "AREA_HI_BCF",
            "overlap_eh"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L13",
            "L19",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L13",
            "overlap_eh",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L15",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "L15",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L15",
            "AREA_LO_BCF",
            "overlap_bf"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L17",
            "AREA_HI_BCF",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L21",
            "L23",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L21",
            "AREA_HI_BCF",
            "overlap_eh"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_ABC",
            "L18"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "AREA_LO_ABC",
            "L11"
          ]
        },
        {
          "weight": 83,
          "atoms": [
            "AREA_LO_ABC",
            "L13"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_ABC",
            "Gsum"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CDE",
            "L22"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_CDE",
            "L24"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_CDE",
            "L17"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "AREA_LO_CDF",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CDF",
            "L17"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_CEF",
            "L0"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "AREA_LO_CEF",
            "L18"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_CEF",
            "L17"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_EFH",
            "L19"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_EFH",
            "L21"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_ABG"
          ]
        },
        {
          "weight": 41,
          "atoms": [
            "AREA_LO_ABG",
            "L18"
          ]
        },
        {
          "weight": 68,
          "atoms": [
            "AREA_LO_ABG",
            "L20"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_LO_ABG",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_ABG",
            "L7"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_ABG",
            "L9"
          ]
        },
        {
          "weight": 31,
          "atoms": [
            "AREA_LO_ABG",
            "L15"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_ABG",
            "span_AH"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_ABG",
            "span_BC"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "AREA_LO_ABG",
            "overlap_fc"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_FGH",
            "L2"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_FGH",
            "L4"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_FGH",
            "L18"
          ]
        },
        {
          "weight": 91,
          "atoms": [
            "AREA_LO_FGH",
            "L20"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "AREA_LO_FGH",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "AREA_LO_FGH",
            "span_BC"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_FGH",
            "overlap_fc"
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
          "weight": 100,
          "atoms": [
            "AREA_LO_CGH",
            "L18"
          ]
        },
        {
          "weight": 56,
          "atoms": [
            "AREA_LO_CGH",
            "L11"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_CGH",
            "L23"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CGH",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "AREA_LO_CGH",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 28,
          "atoms": [
            "AREA_LO_CGH",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CGH",
            "QUAD_1193"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CDO",
            "L0"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "AREA_LO_CDO",
            "L5"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_CDO",
            "L23"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_CDO",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_FHO",
            "L2"
          ]
        },
        {
          "weight": 57,
          "atoms": [
            "AREA_LO_FHO",
            "L10"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_FHO",
            "L1"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_FHO",
            "L9"
          ]
        },
        {
          "weight": 79,
          "atoms": [
            "AREA_LO_FHO",
            "L13"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FHO",
            "AREA_LO_ADH"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_FHO",
            "span_BC"
          ]
        },
        {
          "weight": 46,
          "atoms": [
            "AREA_LO_FHO",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CEO",
            "L9"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CDP",
            "L0"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_CDP",
            "L18"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CDP",
            "AREA_LO_ADH"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_CDP",
            "span_BC_hi"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_CDP",
            "overlap_ae"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_DEP",
            "L2"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_CEP",
            "L20"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_CEP",
            "L3"
          ]
        },
        {
          "weight": 3,
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
          "weight": 2,
          "atoms": [
            "AREA_LO_CEP",
            "L15"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CEP",
            "overlap_ae"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_HOP",
            "L12"
          ]
        },
        {
          "weight": 50,
          "atoms": [
            "AREA_LO_AGO",
            "L0"
          ]
        },
        {
          "weight": 25,
          "atoms": [
            "AREA_LO_AGO",
            "L10"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_AGO",
            "L22"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_AGO",
            "L24"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_AGO",
            "L3"
          ]
        },
        {
          "weight": 81,
          "atoms": [
            "AREA_LO_AGO",
            "AREA_LO_ADH"
          ]
        },
        {
          "weight": 78,
          "atoms": [
            "AREA_LO_AGO",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_AGO",
            "span_BC"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_AGO",
            "overlap_ae"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "AREA_LO_DGP",
            "span_AH"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_DGP",
            "span_AH_hi"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_COP",
            "L0"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_COP",
            "L5"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_COP",
            "L13"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_COP",
            "AREA_LO_ADH"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_COP",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_COP",
            "overlap_ae"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FOP",
            "L12"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_CFO",
            "L0"
          ]
        },
        {
          "weight": 53,
          "atoms": [
            "AREA_LO_CFO",
            "L12"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_DHP",
            "L5"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_EHO",
            "L13"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_EHO",
            "L15"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_EHO",
            "Gsum"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_BFG"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BFG",
            "L10"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_BFG",
            "L18"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_BFG",
            "L9"
          ]
        },
        {
          "weight": 67,
          "atoms": [
            "AREA_LO_BFG",
            "AREA_LO_ADH"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "AREA_LO_BFG",
            "span_BC"
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
          "weight": 6,
          "atoms": [
            "AREA_LO_BFG",
            "overlap_fc"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_BFG",
            "overlap_ae"
          ]
        },
        {
          "weight": 41,
          "atoms": [
            "AREA_LO_EGO",
            "L10"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_EGO",
            "L23"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_EGO",
            "AREA_LO_ADH"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_EGO",
            "span_BC"
          ]
        },
        {
          "weight": 41,
          "atoms": [
            "AREA_LO_EGO",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_EGO",
            "overlap_ae"
          ]
        },
        {
          "weight": 31,
          "atoms": [
            "AREA_LO_AEG",
            "L19"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "QUAD_1393",
            "L4"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "QUAD_1393",
            "L16"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "QUAD_1393",
            "L22"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "QUAD_1393",
            "L25"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "QUAD_1393",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "QUAD_1393",
            "span_BC"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "QUAD_1393",
            "overlap_fc"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "QUAD_1476",
            "AREA_HI_BCF"
          ]
        }
      ],
      "sum": {
        "0,0": "-22737383729835777/250000000000000000",
        "0,0,2": "185339152914111/25000000000000000",
        "0,1": "-77946575989222161/110375000000000000",
        "0,3": "8106358550397741/500000000000000000",
        "0,2,3": "-1422926642719449/50000000000000000",
        "0,4": "543740249013/50000000000000",
        "0,9": "67762137579471657/2759375000000000000",
        "0,8,9": "-28061170731927/3125000000000000",
        "0,10": "-17289008867369337/500000000000000000",
        "0,2,10": "806841455588973/50000000000000000",
        "0,11": "-7926632440418625801/441500000000000000000",
        "0,6,11": "4664231005387443/500000000000000000",
        "0,12": "-724664974110231/20000000000000000",
        "0": "13417920011482943073/441500000000000000000",
        "0,2": "1583672894341461/50000000000000000",
        "0,1,2": "-293699035539/3125000000000",
        "0,2,4": "-845953632279/50000000000000",
        "0,6": "-7445807062321299/250000000000000000",
        "0,8": "4280517569277/312500000000000",
        "0,5": "653364238761/62500000000000",
        "0,1,6": "653565802851/125000000000000",
        "0,1,8": "-108473154777/3125000000000",
        "1,6": "-2735366698311/62500000000000",
        "1,6,10": "-2845183952793/250000000000000",
        "1,6,7": "-163344977991/1000000000000",
        "1,4,6": "2983106139/250000000000",
        "1,7": "149249580129/25000000000000",
        "1": "-620040674350766097/17439250000000000000",
        "1,10": "1903729702329/250000000000000",
        "1,2": "-566512859367/25000000000000",
        "1,4": "-5338962603/250000000000",
        "1,8": "129425145778773/3950000000000000",
        "1,9": "1191823659/156250000000",
        "1,8,9": "14822446041/781250000000",
        "1,7,8": "-27110575557/5000000000000",
        "1,1": "93828969/15625000000",
        "1,5": "110131047/12500000000",
        "2,6": "79321552822533/2000000000000000",
        "2,4,6": "-2600580144099/100000000000000",
        "2,5,10": "426189058659/25000000000000",
        "2": "-58906835142668247/2207500000000000000",
        "2,10": "-11030439441494361/100000000000000000",
        "2,2": "98357098033089/5000000000000000",
        "2,9": "-112692046288563/3125000000000000",
        "2,4": "1247407228473/25000000000000",
        "2,7": "-119749324999437/10000000000000000",
        "2,11": "1636342624774179/50000000000000000",
        "3,9": "159975331900659/31250000000000000",
        "3": "-3847254715557074817/79000000000000000000",
        "3,11": "-288645480415559043/15800000000000000000",
        "2,3": "565466534260173/20000000000000000",
        "2,3,11": "-5363982280121031/100000000000000000",
        "4,6": "15566689222213/500000000000000",
        "4,6,11": "-21289204675627/1000000000000000",
        "4,9": "-2208853674550719/27593750000000000",
        "4,5,10": "4224409917/250000000000",
        "4": "45981183435912347/441500000000000000",
        "4,8": "-203845654239/8000000000000",
        "2,4,8": "431621622873/20000000000000",
        "4,5": "-5187266097/250000000000",
        "5,10": "-162696190839/31250000000000",
        "6,7": "72252928598019/12500000000000000",
        "6,7,10": "-71349115704798183/100000000000000000",
        "0,6,10": "5386370943245271/500000000000000000",
        "6,12": "3907132897819762863/79000000000000000000",
        "5,6": "-2585768794011/250000000000000",
        "6": "5316348925027671841/79000000000000000000",
        "4,6,7": "1411468143153/100000000000000",
        "0,6,7": "-309237173333577/50000000000000000",
        "0,4,6": "-5647478860533/500000000000000",
        "7,9": "-9829924587896697/344921875000000000",
        "7,8,9": "7013297353707/625000000000000",
        "7,12": "-104312782362369/5000000000000000",
        "2,7,12": "220651420863447/10000000000000000",
        "7": "5486135909424811161/88300000000000000000",
        "7,11": "4220548579234953/100000000000000000",
        "7,8": "-224150933848239/10000000000000000",
        "2,7,8": "23634165599037/2000000000000000",
        "7,7": "18635947415361/1000000000000000",
        "4,7": "-33201431079/6250000000000",
        "2,7,7": "-11577108592791/1000000000000000",
        "1,7,7": "-13280015151/250000000000",
        "5,8": "-21161944066887/3950000000000000",
        "5,5,8": "57297591/12500000000",
        "9,12": "-3790409126760081/31250000000000000",
        "10": "128279966704494447423/883000000000000000000",
        "8,10": "26989122407121/1250000000000000",
        "11": "-281510427412479559/79000000000000000000",
        "4,11": "-2372012076511/125000000000000",
        "2,4,11": "3188976969801/100000000000000",
        "12": "3503167846449451131/39500000000000000000",
        "4,12": "3513147267917/250000000000000",
        "2,12": "1817286202319721/100000000000000000",
        "5": "-250520087030811/19750000000000000",
        "5,7": "-325080060903/12500000000000",
        "0,5,7": "53135173611/12500000000000",
        "": "-35198253789906935494259/8719625000000000000000",
        "8": "-1696158250369499199/15800000000000000000",
        "2,8": "-254845031615433/20000000000000000",
        "2,5": "-416581145253/12500000000000",
        "8,11": "-92854402186916433/15800000000000000000",
        "4,10": "-3183580304373/250000000000000",
        "9": "-1575000815155903773/13796875000000000000",
        "5,7,7": "-13280015151/2500000000000",
        "7,10": "1348760122546221/100000000000000000",
        "0,7": "77659099893/10000000000000",
        "2,5,7": "-24467958333/2500000000000",
        "1,5,7": "-28067013/6250000000",
        "6,9": "89529416550909/31250000000000000",
        "6,7,9": "-42256089306441/3125000000000000",
        "4,6,9": "-771706611189/31250000000000",
        "4,4": "-7353933457/500000000000",
        "10,11": "-2799458825104809/200000000000000000",
        "7,10,11": "1650797740697889/100000000000000000",
        "0,10,11": "-6605069614097829/500000000000000000",
        "2,7,10": "-201652992293193/10000000000000000",
        "0,1,9": "-203358010401/976562500000",
        "3,5": "-76645083411/62500000000000",
        "5,9": "-35805861/15625000000",
        "4,5,9": "-928198089/3906250000",
        "8,9": "81890973874773/6250000000000000",
        "0,1,10": "-15733871144901/31250000000000",
        "6,10": "12140399926567731/250000000000000000",
        "1,3": "1824029185797/125000000000000",
        "3,6": "3631913898453999/79000000000000000",
        "5,5": "264469959/31250000000",
        "2,8,9": "-12921752383281/625000000000000",
        "6,11": "608416410180901/25000000000000000",
        "0,3,9": "-422244974805039/7812500000000000",
        "9,11": "-1444885973671959/31250000000000000",
        "3,9,11": "1591729675112241/31250000000000000",
        "5,5,10": "-5377661289/62500000000",
        "0,3,11": "11648545653936177/500000000000000000",
        "10,12": "-3052171360413/125000000000000",
        "6,9,12": "805370880895497/31250000000000000",
        "0,0,9": "-1484953712499267/7812500000000000",
        "0,5,9": "-29051144343/156250000000",
        "8,9,11": "-105781716391113/6250000000000000",
        "0,9,11": "-207326098757799/7812500000000000",
        "6,10,12": "-25657795932852587/1000000000000000000",
        "8,12": "5576328213141819/200000000000000000",
        "0,9,12": "261982474784037/15625000000000000",
        "2,6,10": "-101694096862855833/100000000000000000",
        "4,6,10": "-516291457279899/1000000000000000",
        "0,4,9": "-1757221782183/7812500000000",
        "6,7,12": "1473040823190069/100000000000000000",
        "7,9,12": "-65476990061217/1562500000000000"
      },
      "upper": "-83562113968465242497751/34878500000000000000000"
    }
  }
}
```
