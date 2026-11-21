# CA_+--

```n7-central-e-only-packet
{
  "id": "CA_+--",
  "cell": "CA",
  "given": [
    "AGO+",
    "AGP-",
    "DGP-"
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
        "DGP": -1,
        "COP": -1,
        "EOP": 1,
        "FOP": -1,
        "ACO": 1,
        "AOP": -1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGP": -1,
        "ADG": 1,
        "GHP": -1,
        "GOP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "BOP": -1,
        "AFO": -1,
        "BFO": -1,
        "CFO": -1,
        "FGO": 1,
        "ADP": 1,
        "AFP": -1,
        "BDP": 1,
        "BFP": -1,
        "CFP": -1,
        "FGP": 1,
        "ADO": 1,
        "AFG": -1,
        "BDO": 1,
        "BEO": 1,
        "DFP": 1,
        "EGP": 1,
        "EHO": 1,
        "BFG": -1,
        "DOP": 1,
        "BEG": 1
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
            "GACDP"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGP",
            "CGP",
            "AGP",
            "CDG"
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
            "GBCDP"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGP",
            "CGP",
            "BGP",
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PAFHO"
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "HOP",
            "AHP",
            "FOP",
            "AOP",
            "FHP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBFHO"
          ],
          "target": "BFP",
          "sign": -1,
          "deps": [
            "HOP",
            "BHP",
            "FOP",
            "BOP",
            "FHP"
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
            "PCFGH"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CFP",
            "GHP",
            "CGP",
            "FHP",
            "CHP"
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
            "plu",
            "BADOP"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BOP",
            "ABO",
            "BDP",
            "ABP"
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
            "DEF",
            "OP",
            "FDE",
            [
              "fixed",
              "DEF"
            ]
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEO",
            "EFO",
            "DEP",
            "EFP",
            "FOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "EFG",
            "OP",
            "GEF",
            [
              "CEF2-EFG-cap1"
            ]
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "EFO",
            "FGO",
            "EFP",
            "FGP",
            "GOP"
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
        },
        {
          "rule": [
            "plu",
            "PADFO"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "ADP",
            "FOP",
            "AFP",
            "AOP",
            "DFP"
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
        "L_ACH": {
          "triangle": "ACH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACH",
            "points": [
              "G"
            ]
          }
        },
        "L_ADF": {
          "triangle": "ADF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADF",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ADO": {
          "triangle": "ADO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ADP": {
          "triangle": "ADP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADP",
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
        "L_BDF": {
          "triangle": "BDF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "BDF",
            "points": [
              "G",
              "P"
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
        "L_BEG": {
          "triangle": "BEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BEG",
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
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEG",
            "points": [
              "P"
            ]
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
        "L_DFG": {
          "triangle": "DFG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DFG",
            "points": [
              "P"
            ]
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
        "L_DGO": {
          "triangle": "DGO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDO",
            "points": [
              "P"
            ]
          }
        },
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "L_EFG": {
          "triangle": "EFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFG",
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
        "L_FGP": {
          "triangle": "FGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGP",
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
        "L_GOP": {
          "triangle": "GOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OGP",
            "points": []
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
        "U_ADF": {
          "triangle": "ADF",
          "side": "hi",
          "value": "866301/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ADF",
            "used": [
              0,
              3,
              5
            ],
            "values": [
              "15471/50000",
              "7821/25000",
              "18801/50000",
              "94527/200000",
              "351543/500000",
              "12498/15625",
              "215763/250000",
              "866301/1000000"
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
              "-9/125",
              "63/200",
              "237/500",
              "861/1000"
            ],
            "cell": "CA"
          }
        },
        "U_ADO": {
          "triangle": "ADO",
          "side": "hi",
          "value": "784777/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ADO",
            "used": [
              0,
              3,
              9,
              10
            ],
            "values": [
              "-29133/50000",
              "-14179/25000",
              "-259389/500000",
              "-25199/50000",
              "-1252/15625",
              "-13221/200000",
              "-4237/250000",
              "-2223/1000000",
              "10217/50000",
              "687/3125",
              "134111/500000",
              "14151/50000",
              "88359/125000",
              "144179/200000",
              "192513/250000",
              "784777/1000000"
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
        "U_AOP": {
          "triangle": "AOP",
          "side": "hi",
          "value": "694921/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "OAP",
            "used": [
              0,
              9,
              10,
              11,
              12
            ],
            "values": [
              "-694921/1000000",
              "-170049/250000",
              "-372/625",
              "-522871/1000000",
              "-3503/8000",
              "-128523/500000",
              "-3441/20000",
              "-99721/1000000",
              "-21249/250000",
              "-589/40000",
              "0",
              "589/40000",
              "21249/250000",
              "99721/1000000",
              "3441/20000",
              "128523/500000",
              "3503/8000",
              "522871/1000000",
              "372/625",
              "170049/250000",
              "694921/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "31/40",
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
              "433/1000",
              "151/250",
              "31/40"
            ],
            "cell": "CA"
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
        "U_BDF": {
          "triangle": "BDF",
          "side": "hi",
          "value": "223/250",
          "witness": {
            "kind": "vertices",
            "signed": "BDF",
            "used": [
              1,
              3,
              5
            ],
            "values": [
              "721/1000",
              "9269/12500",
              "154289/200000",
              "168311/200000",
              "21787/25000",
              "223/250"
            ],
            "cell": "CA"
          }
        },
        "U_BDO": {
          "triangle": "BDO",
          "side": "hi",
          "value": "202261/250000",
          "witness": {
            "kind": "vertices",
            "signed": "BDO",
            "used": [
              1,
              3,
              9,
              10
            ],
            "values": [
              "-87867/200000",
              "-3393/10000",
              "351/25000",
              "669/6250",
              "8283/40000",
              "228127/1000000",
              "262669/1000000",
              "581467/1000000",
              "674467/1000000",
              "179011/250000",
              "387251/500000",
              "202261/250000"
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
        "U_DGO": {
          "triangle": "DGO",
          "side": "hi",
          "value": "691911/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "GDO",
            "used": [
              3,
              6,
              8,
              9,
              10
            ],
            "values": [
              "-145619/250000",
              "-288313/500000",
              "-261963/500000",
              "-112437/250000",
              "-334571/1000000",
              "-244931/1000000",
              "-192231/1000000",
              "-118053/1000000",
              "-76401/1000000",
              "-4237/250000",
              "-5549/500000",
              "-2223/1000000",
              "1487/500000",
              "27837/500000",
              "55829/500000",
              "29377/250000",
              "32463/250000",
              "5319/31250",
              "10719/62500",
              "230957/1000000",
              "122193/500000",
              "122841/500000",
              "320597/1000000",
              "284251/500000",
              "617733/1000000",
              "338593/500000",
              "170759/250000",
              "691911/1000000"
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
        "2": {
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
            "ADO",
            "ADP",
            "DOP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ADO",
            "point": "P"
          }
        },
        "8": {
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
        "11": {
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
        "16": {
          "row": [
            "fan",
            "BDO",
            "BDP",
            "DOP",
            "BOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BDO",
            "point": "P"
          }
        },
        "21": {
          "row": [
            "fan",
            "BFP",
            "BFG",
            "BGP",
            "FGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FBP",
            "point": "G"
          }
        },
        "26": {
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
        "34": {
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
        "35": {
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
        "102": {
          "row": [
            "plu",
            "ADO",
            "AFG",
            "ADF",
            "AGO",
            "ADG",
            "AFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "ADFGO"
          }
        },
        "109": {
          "row": [
            "plu",
            "ADG",
            "AOP",
            "ADO",
            "AGP",
            "ADP",
            "AGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "ADGOP"
          }
        },
        "117": {
          "row": [
            "plu",
            "ABD",
            "BCF",
            "ABC",
            "BDF",
            "ABF",
            "BCD"
          ],
          "witness": {
            "kind": "plu",
            "word": "BACDF"
          }
        },
        "166": {
          "row": [
            "plu",
            "BCO",
            "BDF",
            "BCD",
            "BFO",
            "BCF",
            "BDO"
          ],
          "witness": {
            "kind": "plu",
            "word": "BCDFO"
          }
        },
        "331": {
          "row": [
            "plu",
            "ACD",
            "BDO",
            "ABD",
            "CDO",
            "ADO",
            "BCD"
          ],
          "witness": {
            "kind": "plu",
            "word": "DABCO"
          }
        },
        "439": {
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
        "460": {
          "row": [
            "plu",
            "AFG",
            "BDF",
            "ABF",
            "DFG",
            "ADF",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FABDG"
          }
        },
        "478": {
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
        "484": {
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
        "528": {
          "row": [
            "plu",
            "BFO",
            "EFP",
            "BEF",
            "FOP",
            "BFP",
            "EFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FBEOP"
          }
        },
        "539": {
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
        "660": {
          "row": [
            "plu",
            "AHO",
            "CFH",
            "ACH",
            "FHO",
            "AFH",
            "CHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "HACFO"
          }
        },
        "707": {
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
        "905": {
          "row": [
            "quad",
            "ABP",
            "AOP",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ABPO",
            "occupants": [
              "G"
            ]
          }
        },
        "977": {
          "row": [
            "quad",
            "ADE",
            "AEF",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ADEF",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "1188": {
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
        "1223": {
          "row": [
            "quad",
            "DFH",
            "DGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "DFHG",
            "occupants": [
              "P"
            ]
          }
        },
        "1237": {
          "row": [
            "quad",
            "EFH",
            "EHP",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHP",
            "occupants": [
              "O"
            ]
          }
        },
        "1540": {
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
        "1659": {
          "row": [
            "balance",
            [
              [
                1,
                "ABD",
                "FGP"
              ],
              [
                1,
                "ABF",
                "DGP"
              ],
              [
                -1,
                "ADF",
                "BGP"
              ],
              [
                1,
                "AGP",
                "BDF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABD",
            "point": "F",
            "line": "GP"
          }
        },
        "2262": {
          "row": [
            "balance",
            [
              [
                1,
                "BCD",
                "FOP"
              ],
              [
                1,
                "BCF",
                "DOP"
              ],
              [
                1,
                "BDF",
                "COP"
              ],
              [
                -1,
                "BOP",
                "CDF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCD",
            "point": "F",
            "line": "OP"
          }
        },
        "2837": {
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
        "2886": {
          "row": [
            "balance",
            [
              [
                1,
                "CEH",
                "FOP"
              ],
              [
                1,
                "CEO",
                "FHP"
              ],
              [
                1,
                "CFP",
                "EHO"
              ],
              [
                -1,
                "CHO",
                "EFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEH",
            "point": "O",
            "line": "FP"
          }
        },
        "2911": {
          "row": [
            "balance",
            [
              [
                1,
                "ACD",
                "FGH"
              ],
              [
                1,
                "ADF",
                "CGH"
              ],
              [
                1,
                "ADG",
                "CFH"
              ],
              [
                -1,
                "ADH",
                "CFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "H",
            "line": "AD"
          }
        },
        "2921": {
          "row": [
            "balance",
            [
              [
                1,
                "ACD",
                "FGO"
              ],
              [
                -1,
                "ADF",
                "CGO"
              ],
              [
                1,
                "ADG",
                "CFO"
              ],
              [
                1,
                "ADO",
                "CFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "O",
            "line": "AD"
          }
        },
        "3365": {
          "row": [
            "linear",
            {
              "ACF": "-93/1000",
              "CFH": "-93/1000",
              "CFG": "760263/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACH",
            "point": "G",
            "line": "CF",
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
        "3369": {
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
        "3573": {
          "row": [
            "linear",
            {
              "ABF": "-93/1000",
              "BDF": "680301/1000000",
              "BFP": "-866301/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ADF",
            "point": "P",
            "line": "BF",
            "side": "lower",
            "outer_upper": {
              "triangle": "ADF",
              "ref": "U_ADF",
              "value": "866301/1000000"
            },
            "fan_lower": [
              {
                "triangle": "DFP",
                "ref": "L_DFP",
                "value": "93/1000"
              },
              {
                "triangle": "AFP",
                "ref": "L_AFP",
                "value": "279/1000"
              },
              {
                "triangle": "ADP",
                "ref": "L_ADP",
                "value": "93/1000"
              }
            ],
            "residual": "401301/1000000"
          }
        },
        "3597": {
          "row": [
            "linear",
            {
              "ADE": "-93/1000",
              "DEF": "-93/1000",
              "DEP": "866301/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ADF",
            "point": "P",
            "line": "DE",
            "side": "lower",
            "outer_upper": {
              "triangle": "ADF",
              "ref": "U_ADF",
              "value": "866301/1000000"
            },
            "fan_lower": [
              {
                "triangle": "DFP",
                "ref": "L_DFP",
                "value": "93/1000"
              },
              {
                "triangle": "AFP",
                "ref": "L_AFP",
                "value": "279/1000"
              },
              {
                "triangle": "ADP",
                "ref": "L_ADP",
                "value": "93/1000"
              }
            ],
            "residual": "401301/1000000"
          }
        },
        "4020": {
          "row": [
            "linear",
            {
              "DOP": "-93/1000",
              "ADP": "508921/1000000",
              "DGP": "-694921/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "OAP",
            "point": "G",
            "line": "DP",
            "side": "upper",
            "outer_upper": {
              "triangle": "AOP",
              "ref": "U_AOP",
              "value": "694921/1000000"
            },
            "fan_lower": [
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              }
            ],
            "residual": "415921/1000000"
          }
        },
        "4163": {
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
        "4526": {
          "row": [
            "linear",
            {
              "BDP": "353/500",
              "DEP": "-93/1000",
              "DFP": "-93/1000",
              "DGP": "-223/250"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BEF",
            "point": "G",
            "line": "DP",
            "side": "upper",
            "outer_upper": {
              "triangle": "BEF",
              "ref": "U_BEF",
              "value": "223/250"
            },
            "fan_lower": [
              {
                "triangle": "EFG",
                "ref": "L_EFG",
                "value": "93/1000"
              },
              {
                "triangle": "BFG",
                "ref": "L_BFG",
                "value": "93/1000"
              },
              {
                "triangle": "BEG",
                "ref": "L_BEG",
                "value": "93/1000"
              }
            ],
            "residual": "613/1000"
          }
        },
        "5071": {
          "row": [
            "linear",
            {
              "CEF": "479731/1000000",
              "CFO": "-851731/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "O",
            "line": "CF",
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
        "5077": {
          "row": [
            "linear",
            {
              "CEO": "479731/1000000",
              "CFO": "-279/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "O",
            "line": "CO",
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
        "5081": {
          "row": [
            "linear",
            {
              "CDE": "-93/1000",
              "DEF": "-279/1000",
              "DEO": "851731/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEF",
            "point": "O",
            "line": "DE",
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
        "5281": {
          "row": [
            "linear",
            {
              "CEF": "577687/1000000",
              "CFH": "-279/1000",
              "CFO": "-949687/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEH",
            "point": "O",
            "line": "CF",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEH",
              "ref": "U_CEH",
              "value": "949687/1000000"
            },
            "fan_lower": [
              {
                "triangle": "EHO",
                "ref": "L_EHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "93/1000"
              },
              {
                "triangle": "CEO",
                "ref": "L_CEO",
                "value": "279/1000"
              }
            ],
            "residual": "484687/1000000"
          }
        },
        "5287": {
          "row": [
            "linear",
            {
              "CEO": "577687/1000000",
              "CHO": "-279/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEH",
            "point": "O",
            "line": "CO",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEH",
              "ref": "U_CEH",
              "value": "949687/1000000"
            },
            "fan_lower": [
              {
                "triangle": "EHO",
                "ref": "L_EHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "93/1000"
              },
              {
                "triangle": "CEO",
                "ref": "L_CEO",
                "value": "279/1000"
              }
            ],
            "residual": "484687/1000000"
          }
        },
        "5291": {
          "row": [
            "linear",
            {
              "CDE": "-93/1000",
              "DEH": "-279/1000",
              "DEO": "949687/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEH",
            "point": "O",
            "line": "DE",
            "side": "lower",
            "outer_upper": {
              "triangle": "CEH",
              "ref": "U_CEH",
              "value": "949687/1000000"
            },
            "fan_lower": [
              {
                "triangle": "EHO",
                "ref": "L_EHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "93/1000"
              },
              {
                "triangle": "CEO",
                "ref": "L_CEO",
                "value": "279/1000"
              }
            ],
            "residual": "484687/1000000"
          }
        },
        "5420": {
          "row": [
            "linear",
            {
              "CEO": "-93/1000",
              "COP": "202261/250000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEO",
            "point": "P",
            "line": "CO",
            "side": "upper",
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
        "5445": {
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
        "5603": {
          "row": [
            "linear",
            {
              "ADG": "505911/1000000",
              "AGO": "-93/1000",
              "AGP": "-691911/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GDO",
            "point": "P",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "DGO",
              "ref": "U_DGO",
              "value": "691911/1000000"
            },
            "fan_lower": [
              {
                "triangle": "DOP",
                "ref": "L_DOP",
                "value": "93/1000"
              },
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "DGP",
                "ref": "L_DGP",
                "value": "93/1000"
              }
            ],
            "residual": "412911/1000000"
          }
        },
        "5694": {
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
          "id": "T0020",
          "relation": 7,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "598777/1000000",
          "sources": [
            "U_ADO",
            "L_ADP",
            "L_DOP"
          ]
        },
        {
          "id": "T0070",
          "relation": 109,
          "rule": "sumlo",
          "triangle": "ADG",
          "side": "lo",
          "value": "24411/200000",
          "sources": [
            "L_ADO",
            "L_AGP",
            "L_ADP",
            "L_AGO",
            "T0020"
          ]
        },
        {
          "id": "T0072",
          "relation": 117,
          "rule": "sumlo",
          "triangle": "ABD",
          "side": "lo",
          "value": "47151/500000",
          "sources": [
            "L_ABC",
            "L_BDF",
            "L_ABF",
            "L_BCD",
            "U_BCF"
          ]
        },
        {
          "id": "T0092",
          "relation": 331,
          "rule": "sumlo",
          "triangle": "ACD",
          "side": "lo",
          "value": "112163/1000000",
          "sources": [
            "T0072",
            "L_CDO",
            "L_ADO",
            "L_BCD",
            "U_BDO"
          ]
        },
        {
          "id": "T0103",
          "relation": 439,
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
          "id": "T0105",
          "relation": 460,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "4053/40000",
          "sources": [
            "L_ABF",
            "L_DFG",
            "L_ADF",
            "L_BFG",
            "U_BDF"
          ]
        },
        {
          "id": "T0107",
          "relation": 478,
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
          "id": "T0121",
          "relation": 977,
          "rule": "quad",
          "triangle": "ADE",
          "side": "lo",
          "value": "103763/500000",
          "sources": [
            "U_AEF"
          ]
        },
        {
          "id": "T0126",
          "relation": 1188,
          "rule": "linear",
          "triangle": "CFH",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CEF"
          ]
        },
        {
          "id": "T0128",
          "relation": 1659,
          "rule": "balance_lo",
          "triangle": "BGP",
          "side": "lo",
          "value": "47243/500000",
          "sources": [
            "T0072",
            "L_FGP",
            "L_ABF",
            "L_DGP",
            "L_AGP",
            "L_BDF",
            "U_ADF"
          ]
        },
        {
          "id": "T0149",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "102683/1000000",
          "sources": [
            "T0092",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0070",
            "T0107",
            "U_ADH"
          ]
        },
        {
          "id": "T0179",
          "relation": 4020,
          "rule": "linear",
          "triangle": "ADP",
          "side": "lo",
          "value": "8999/62500",
          "sources": [
            "L_DGP",
            "L_DOP"
          ]
        },
        {
          "id": "T0188",
          "relation": 4526,
          "rule": "linear",
          "triangle": "BDP",
          "side": "lo",
          "value": "71001/500000",
          "sources": [
            "L_DEP",
            "L_DFP",
            "L_DGP"
          ]
        },
        {
          "id": "T0207",
          "relation": 5445,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "134969/1000000",
          "sources": [
            "T0103",
            "L_FOP"
          ]
        },
        {
          "id": "T0213",
          "relation": 5603,
          "rule": "linear",
          "triangle": "ADG",
          "side": "lo",
          "value": "144287/1000000",
          "sources": [
            "L_AGO",
            "L_AGP"
          ]
        },
        {
          "id": "T0215",
          "relation": 5694,
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
          "id": "T0218",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "18563/62500",
          "sources": [
            "L_ACG",
            "T0149",
            "T0105"
          ]
        },
        {
          "id": "T0242",
          "relation": 21,
          "rule": "sum",
          "triangle": "BFP",
          "side": "lo",
          "value": "140243/500000",
          "sources": [
            "L_BFG",
            "T0128",
            "L_FGP"
          ]
        },
        {
          "id": "T0250",
          "relation": 26,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "622411/1000000",
          "sources": [
            "U_CEF",
            "L_CEP",
            "T0215"
          ]
        },
        {
          "id": "T0258",
          "relation": 34,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "28117/100000",
          "sources": [
            "T0103",
            "L_FOP",
            "L_EOP"
          ]
        },
        {
          "id": "T0268",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "113029/1000000",
          "sources": [
            "T0218",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0269",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "26159/200000",
          "sources": [
            "T0218",
            "L_FHO",
            "L_AFH",
            "T0207",
            "T0126"
          ]
        },
        {
          "id": "T0272",
          "relation": 528,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "36603/250000",
          "sources": [
            "L_BEF",
            "L_FOP",
            "T0242",
            "T0103",
            "T0250"
          ]
        },
        {
          "id": "T0277",
          "relation": 707,
          "rule": "sumlo",
          "triangle": "EGH",
          "side": "lo",
          "value": "118971/500000",
          "sources": [
            "L_CEH",
            "L_FGH",
            "L_CGH",
            "L_EFH",
            "T0126"
          ]
        },
        {
          "id": "T0288",
          "relation": 2886,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "165581/1000000",
          "sources": [
            "L_CEH",
            "L_FOP",
            "L_CEO",
            "L_FHP",
            "T0215",
            "L_EHO",
            "T0250"
          ]
        },
        {
          "id": "T0289",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "52947/500000",
          "sources": [
            "T0092",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0213",
            "T0268",
            "U_ADH"
          ]
        },
        {
          "id": "T0301",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "300219/1000000",
          "sources": [
            "L_ACG",
            "T0289",
            "T0105"
          ]
        },
        {
          "id": "T0315",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "106153/1000000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0213",
            "T0269",
            "U_ADO"
          ]
        },
        {
          "id": "T0320",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "22679/200000",
          "sources": [
            "T0301",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0321",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "131767/1000000",
          "sources": [
            "T0301",
            "L_FHO",
            "L_AFH",
            "T0207",
            "T0126"
          ]
        },
        {
          "id": "T0324",
          "relation": 660,
          "rule": "sumlo",
          "triangle": "AHO",
          "side": "lo",
          "value": "134611/1000000",
          "sources": [
            "L_ACH",
            "L_FHO",
            "L_AFH",
            "T0288",
            "T0126"
          ]
        },
        {
          "id": "T0328",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "21191/200000",
          "sources": [
            "T0092",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0213",
            "T0320",
            "U_ADH"
          ]
        },
        {
          "id": "T0332",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "76277/250000",
          "sources": [
            "L_ACG",
            "T0328",
            "T0315"
          ]
        },
        {
          "id": "T0344",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "26583/250000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0213",
            "T0321",
            "U_ADO"
          ]
        },
        {
          "id": "T0346",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "56977/500000",
          "sources": [
            "T0332",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0347",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "2082/15625",
          "sources": [
            "T0332",
            "L_FHO",
            "L_AFH",
            "T0207",
            "T0126"
          ]
        },
        {
          "id": "T0353",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "106049/1000000",
          "sources": [
            "T0092",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0213",
            "T0346",
            "U_ADH"
          ]
        },
        {
          "id": "T0357",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "305381/1000000",
          "sources": [
            "L_ACG",
            "T0353",
            "T0344"
          ]
        },
        {
          "id": "T0368",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "26651/250000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0213",
            "T0347",
            "U_ADO"
          ]
        },
        {
          "id": "T0370",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "22797/200000",
          "sources": [
            "T0357",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0371",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "13333/100000",
          "sources": [
            "T0357",
            "L_FHO",
            "L_AFH",
            "T0207",
            "T0126"
          ]
        },
        {
          "id": "T0377",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "53027/500000",
          "sources": [
            "T0092",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0213",
            "T0370",
            "U_ADH"
          ]
        },
        {
          "id": "T0381",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "152829/500000",
          "sources": [
            "L_ACG",
            "T0377",
            "T0368"
          ]
        },
        {
          "id": "T0392",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "106619/1000000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0213",
            "T0371",
            "U_ADO"
          ]
        },
        {
          "id": "T0394",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "3563/31250",
          "sources": [
            "T0381",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0395",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "66707/500000",
          "sources": [
            "T0381",
            "L_FHO",
            "L_AFH",
            "T0207",
            "T0126"
          ]
        },
        {
          "id": "T0401",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "106059/1000000",
          "sources": [
            "T0092",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0213",
            "T0394",
            "U_ADH"
          ]
        },
        {
          "id": "T0403",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "152839/500000",
          "sources": [
            "L_ACG",
            "T0401",
            "T0392"
          ]
        },
        {
          "id": "T0414",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "21327/200000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0213",
            "T0395",
            "U_ADO"
          ]
        },
        {
          "id": "T0416",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "114019/1000000",
          "sources": [
            "T0403",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0418",
          "relation": 539,
          "rule": "sumlo",
          "triangle": "EFG",
          "side": "lo",
          "value": "30237/125000",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0401",
            "L_EFH",
            "T0126"
          ]
        },
        {
          "id": "T0421",
          "relation": 2837,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "6141/62500",
          "sources": [
            "L_CEH",
            "L_FOP",
            "T0416",
            "L_EOP",
            "L_COP",
            "L_EFH",
            "U_CEF"
          ]
        },
        {
          "id": "T0422",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "5303/50000",
          "sources": [
            "T0092",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0213",
            "T0416",
            "U_ADH"
          ]
        },
        {
          "id": "T0423",
          "relation": 2921,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "23869/200000",
          "sources": [
            "T0092",
            "L_FGO",
            "T0213",
            "T0207",
            "L_ADO",
            "T0422",
            "U_ADF"
          ]
        },
        {
          "id": "T0424",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "61139/200000",
          "sources": [
            "L_ACG",
            "T0422",
            "T0414"
          ]
        },
        {
          "id": "T0425",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "61069/200000",
          "sources": [
            "L_ACG",
            "T0423",
            "L_AGO"
          ]
        },
        {
          "id": "T0428",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "14603/50000",
          "sources": [
            "L_BCG",
            "T0422",
            "L_BFG"
          ]
        },
        {
          "id": "T0433",
          "relation": 35,
          "rule": "sum",
          "triangle": "EHP",
          "side": "lo",
          "value": "8883/31250",
          "sources": [
            "L_EHO",
            "T0421",
            "L_EOP"
          ]
        },
        {
          "id": "T0436",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "5337/40000",
          "sources": [
            "T0424",
            "L_FHO",
            "L_AFH",
            "T0207",
            "T0126"
          ]
        },
        {
          "id": "T0438",
          "relation": 2262,
          "rule": "balance_lo",
          "triangle": "BOP",
          "side": "lo",
          "value": "65583/500000",
          "sources": [
            "L_BCD",
            "L_FOP",
            "T0428",
            "L_DOP",
            "L_BDF",
            "L_COP",
            "U_CDF"
          ]
        },
        {
          "id": "T0442",
          "relation": 16,
          "rule": "sum",
          "triangle": "BDO",
          "side": "lo",
          "value": "45771/125000",
          "sources": [
            "T0188",
            "L_DOP",
            "T0438"
          ]
        },
        {
          "id": "T0446",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "106637/1000000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0213",
            "T0436",
            "U_ADO"
          ]
        },
        {
          "id": "T0447",
          "relation": 166,
          "rule": "sumlo",
          "triangle": "BCO",
          "side": "lo",
          "value": "33789/250000",
          "sources": [
            "L_BCD",
            "T0272",
            "T0428",
            "T0442",
            "U_BDF"
          ]
        },
        {
          "id": "T0451",
          "relation": 8,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "292637/1000000",
          "sources": [
            "T0446",
            "L_AGP",
            "L_FGP"
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
        "18": {
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
              "-103763/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADE",
            "side": "lo",
            "reference": "T0121",
            "value": "103763/500000"
          }
        },
        "20": {
          "name": "AREA_LO_ADF",
          "terms": [
            [
              [],
              "6143/20000"
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
                5
              ],
              "-1"
            ],
            [
              [
                0,
                5
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADF",
            "side": "lo",
            "reference": "L_ADF",
            "value": "13857/20000"
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
        "68": {
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
        "76": {
          "name": "AREA_LO_DEG",
          "terms": [
            [
              [
                4,
                6
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
                6
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEG",
            "side": "lo",
            "reference": "L_DEG",
            "value": "279/1000"
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
              "94763/125000"
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
            "reference": "T0418",
            "value": "30237/125000"
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
              "-33789/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0447",
            "value": "33789/250000"
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
            "reference": "T0103",
            "value": "9517/100000"
          }
        },
        "96": {
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
              "-134611/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "T0324",
            "value": "134611/1000000"
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
            "reference": "T0258",
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
              "-8883/31250"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EHP",
            "side": "lo",
            "reference": "T0433",
            "value": "8883/31250"
          }
        },
        "130": {
          "name": "AREA_LO_DGO",
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
                3,
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
                3,
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
            "triangle": "DGO",
            "side": "lo",
            "reference": "L_DGO",
            "value": "279/1000"
          }
        },
        "134": {
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
        "142": {
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
        "144": {
          "name": "AREA_LO_ACO",
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
                0,
                2
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
              "-61069/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "T0425",
            "value": "61069/200000"
          }
        },
        "146": {
          "name": "AREA_LO_AOP",
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
                0,
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
            "triangle": "AOP",
            "side": "lo",
            "reference": "L_AOP",
            "value": "279/1000"
          }
        },
        "162": {
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
              "-144287/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADG",
            "side": "lo",
            "reference": "T0213",
            "value": "144287/1000000"
          }
        },
        "172": {
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
            "reference": "T0277",
            "value": "118971/500000"
          }
        },
        "184": {
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
              "-36603/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0272",
            "value": "36603/250000"
          }
        },
        "186": {
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
              "-134969/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0207",
            "value": "134969/1000000"
          }
        },
        "190": {
          "name": "AREA_LO_ADP",
          "terms": [
            [
              [
                12
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
                11
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-8999/62500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADP",
            "side": "lo",
            "reference": "T0179",
            "value": "8999/62500"
          }
        },
        "192": {
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
              "-292637/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFP",
            "side": "lo",
            "reference": "T0451",
            "value": "292637/1000000"
          }
        },
        "196": {
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
              "-140243/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFP",
            "side": "lo",
            "reference": "T0242",
            "value": "140243/500000"
          }
        },
        "202": {
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADO",
            "side": "lo",
            "reference": "L_ADO",
            "value": "13857/20000"
          }
        },
        "204": {
          "name": "AREA_LO_AFG",
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
                0,
                5
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
                0,
                6
              ],
              "-1"
            ],
            [
              [],
              "-106637/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFG",
            "side": "lo",
            "reference": "T0446",
            "value": "106637/1000000"
          }
        },
        "214": {
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
        "216": {
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
        "245": {
          "name": "Central_endpoint_tangent_4",
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
              "-4/5"
            ],
            [
              [
                2
              ],
              "4/25"
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
            "t": "2/5"
          }
        },
        "360": {
          "name": "QUAD_905",
          "terms": [
            [
              [
                1,
                12
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
                9,
                12
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
              [
                10,
                11
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
            "index": 905
          }
        },
        "886": {
          "name": "QUAD_1223",
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
                3,
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
                3,
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
            "index": 1223
          }
        },
        "908": {
          "name": "QUAD_1237",
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
                4,
                11
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1237
          }
        },
        "1510": {
          "name": "SUPPORT_YCAP_1540",
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
            "relation": 1540,
            "which": "Y",
            "value": "6143/20000",
            "reference": "T0126"
          }
        },
        "1672": {
          "name": "LINEAR_3365",
          "terms": [
            [
              [
                2
              ],
              "574263/1000000"
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
                0,
                5
              ],
              "-93/1000"
            ],
            [
              [
                5,
                7
              ],
              "-93/1000"
            ],
            [
              [
                2,
                7
              ],
              "93/1000"
            ],
            [
              [
                5,
                8
              ],
              "760263/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-760263/1000000"
            ],
            [
              [
                6
              ],
              "-760263/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3365
          }
        },
        "1676": {
          "name": "LINEAR_3369",
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
            "index": 3369
          }
        },
        "1880": {
          "name": "LINEAR_3573",
          "terms": [
            [
              [
                1
              ],
              "93/1000"
            ],
            [
              [
                0,
                1
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
              [],
              "680301/1000000"
            ],
            [
              [
                3,
                5
              ],
              "-680301/1000000"
            ],
            [
              [
                1,
                3
              ],
              "680301/1000000"
            ],
            [
              [
                5,
                12
              ],
              "866301/1000000"
            ],
            [
              [
                1,
                12
              ],
              "-866301/1000000"
            ],
            [
              [
                11
              ],
              "-866301/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3573
          }
        },
        "1904": {
          "name": "LINEAR_3597",
          "terms": [
            [
              [
                4
              ],
              "680301/1000000"
            ],
            [
              [
                3
              ],
              "-680301/1000000"
            ],
            [
              [
                4,
                5
              ],
              "93/1000"
            ],
            [
              [
                3,
                5
              ],
              "-93/1000"
            ],
            [
              [
                4,
                11
              ],
              "-866301/1000000"
            ],
            [
              [
                3,
                11
              ],
              "866301/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3597
          }
        },
        "2470": {
          "name": "LINEAR_4163",
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
            "index": 4163
          }
        },
        "3378": {
          "name": "LINEAR_5071",
          "terms": [
            [
              [],
              "479731/1000000"
            ],
            [
              [
                2
              ],
              "93/250"
            ],
            [
              [
                4,
                5
              ],
              "-479731/1000000"
            ],
            [
              [
                2,
                4
              ],
              "479731/1000000"
            ],
            [
              [
                5,
                10
              ],
              "851731/1000000"
            ],
            [
              [
                2,
                10
              ],
              "-851731/1000000"
            ],
            [
              [
                9
              ],
              "-851731/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5071
          }
        },
        "3384": {
          "name": "LINEAR_5077",
          "terms": [
            [
              [
                10
              ],
              "479731/1000000"
            ],
            [
              [
                2,
                10
              ],
              "-758731/1000000"
            ],
            [
              [
                4,
                9
              ],
              "-479731/1000000"
            ],
            [
              [
                2,
                4
              ],
              "479731/1000000"
            ],
            [
              [
                5,
                10
              ],
              "279/1000"
            ],
            [
              [
                9
              ],
              "-279/1000"
            ],
            [
              [
                2
              ],
              "279/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5077
          }
        },
        "3388": {
          "name": "LINEAR_5081",
          "terms": [
            [
              [
                4
              ],
              "479731/1000000"
            ],
            [
              [
                2,
                4
              ],
              "93/1000"
            ],
            [
              [
                3
              ],
              "-479731/1000000"
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
                4,
                5
              ],
              "279/1000"
            ],
            [
              [
                3,
                5
              ],
              "-279/1000"
            ],
            [
              [
                4,
                9
              ],
              "-851731/1000000"
            ],
            [
              [
                3,
                9
              ],
              "851731/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5081
          }
        },
        "3588": {
          "name": "LINEAR_5281",
          "terms": [
            [
              [],
              "577687/1000000"
            ],
            [
              [
                2
              ],
              "93/1000"
            ],
            [
              [
                4,
                5
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
                5,
                7
              ],
              "-279/1000"
            ],
            [
              [
                2,
                7
              ],
              "279/1000"
            ],
            [
              [
                5,
                10
              ],
              "949687/1000000"
            ],
            [
              [
                2,
                10
              ],
              "-949687/1000000"
            ],
            [
              [
                9
              ],
              "-949687/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5281
          }
        },
        "3594": {
          "name": "LINEAR_5287",
          "terms": [
            [
              [
                10
              ],
              "577687/1000000"
            ],
            [
              [
                2,
                10
              ],
              "-856687/1000000"
            ],
            [
              [
                4,
                9
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
                9
              ],
              "-279/1000"
            ],
            [
              [
                2,
                7
              ],
              "279/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5287
          }
        },
        "3598": {
          "name": "LINEAR_5291",
          "terms": [
            [
              [
                4
              ],
              "577687/1000000"
            ],
            [
              [
                2,
                4
              ],
              "93/1000"
            ],
            [
              [
                3
              ],
              "-577687/1000000"
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
                4,
                9
              ],
              "-949687/1000000"
            ],
            [
              [
                3,
                9
              ],
              "949687/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5291
          }
        },
        "3727": {
          "name": "LINEAR_5420",
          "terms": [
            [
              [
                10
              ],
              "-93/1000"
            ],
            [
              [
                2,
                10
              ],
              "-179011/250000"
            ],
            [
              [
                4,
                9
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
              "-202261/250000"
            ],
            [
              [
                2,
                12
              ],
              "202261/250000"
            ],
            [
              [
                10,
                11
              ],
              "202261/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5420
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "271921/500000",
          "120183/1000000",
          "2132/3125",
          "108013/1000000",
          "201013/1000000",
          "455589/500000",
          "271023/1000000",
          "283249/1000000",
          "163399/200000",
          "222867/500000",
          "26623/100000"
        ],
        "high": [
          "37957/100000",
          "279/1000",
          "881803/1000000",
          "80863/200000",
          "224051/250000",
          "279/1000",
          "273901/500000",
          "496987/500000",
          "619629/1000000",
          "694647/1000000",
          "174583/200000",
          "407623/500000",
          "275199/500000"
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
            "factor": 18,
            "target": "d",
            "old": [
              "3/25",
              "141/200"
            ],
            "lines": [
              [
                "-1/1",
                "181237/500000"
              ],
              [
                "-1/1",
                "349737/500000"
              ]
            ],
            "raw": [
              "3/25",
              "349737/500000"
            ],
            "new": [
              "3/25",
              "349737/500000"
            ]
          },
          {
            "factor": 20,
            "target": "a",
            "old": [
              "139/1000",
              "666667/1000000"
            ],
            "lines": [
              [
                "-223/250",
                "29419/100000"
              ],
              [
                "-223/250",
                "28950851/125000000"
              ],
              [
                "-721/1000",
                "27367/100000"
              ],
              [
                "-721/1000",
                "55998377/500000000"
              ]
            ],
            "raw": [
              "139/1000",
              "27367/72100"
            ],
            "new": [
              "139/1000",
              "379571/1000000"
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
                "233429/1000000",
                "-93/1000"
              ],
              [
                "861/1000",
                "-93/1000"
              ],
              [
                "620429/1000000",
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
              "349737/500000"
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
              "349737/500000"
            ],
            "new": [
              "60001/500000",
              "349737/500000"
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
                "64737/500000",
                "-111237/500000"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ],
              [
                "-103763/500000",
                "57263/500000"
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
            "factor": 76,
            "target": "d",
            "old": [
              "60001/500000",
              "349737/500000"
            ],
            "lines": [
              [
                "-441/500",
                "11187/50000"
              ],
              [
                "-441/500",
                "260487/500000"
              ],
              [
                "-63/200",
                "-1989/20000"
              ],
              [
                "-63/200",
                "1341/200000"
              ]
            ],
            "raw": [
              "60001/500000",
              "28943/49000"
            ],
            "new": [
              "60001/500000",
              "295337/500000"
            ]
          },
          {
            "factor": 76,
            "target": "g",
            "old": [
              "59/500",
              "137/200"
            ],
            "lines": [
              [
                "-224999/500000",
                "85499/500000"
              ],
              [
                "10337/500000",
                "-149837/500000"
              ],
              [
                "-393499/500000",
                "253999/500000"
              ],
              [
                "-158163/500000",
                "18663/500000"
              ]
            ],
            "raw": [
              "59/500",
              "253999/393499"
            ],
            "new": [
              "59/500",
              "645489/1000000"
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
                "64579659/100000000"
              ],
              [
                "-891987/1000000",
                "649162209/1000000000"
              ],
              [
                "-721/1000",
                "274167/500000"
              ],
              [
                "-721/1000",
                "494077/1000000"
              ],
              [
                "-891987/1000000",
                "1309301/3125000"
              ],
              [
                "-891987/1000000",
                "150026433/250000000"
              ],
              [
                "-721/1000",
                "32151373/100000000"
              ],
              [
                "-721/1000",
                "445020523/1000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "274167/360500"
            ],
            "new": [
              "139/1000",
              "760519/1000000"
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
                "-33789/250000"
              ],
              [
                "131/500",
                "-33789/250000"
              ],
              [
                "773817/1000000",
                "-33789/250000"
              ],
              [
                "60283/100000",
                "-33789/250000"
              ]
            ],
            "raw": [
              "45052/257939",
              "907/1000"
            ],
            "new": [
              "174661/1000000",
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
                "10337/500000",
                "-56837/500000"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ],
              [
                "-158163/500000",
                "111663/500000"
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
                "-134611/1000000"
              ],
              [
                "233429/1000000",
                "-134611/1000000"
              ],
              [
                "861/1000",
                "-134611/1000000"
              ],
              [
                "620429/1000000",
                "-134611/1000000"
              ]
            ],
            "raw": [
              "134611/861000",
              "88183/100000"
            ],
            "new": [
              "78171/500000",
              "88183/100000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "78171/500000",
              "88183/100000"
            ],
            "lines": [
              [
                "-57/100",
                "109539399/1000000000"
              ],
              [
                "-57/100",
                "24428279037/100000000000"
              ],
              [
                "-907/1000",
                "291856399/1000000000"
              ],
              [
                "-907/1000",
                "54145950037/100000000000"
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
              "78171/500000",
              "7819/10000"
            ],
            "new": [
              "78171/500000",
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
                "10337/500000",
                "-56837/500000"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ],
              [
                "-158163/500000",
                "111663/500000"
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
                "233429/1000000",
                "-279/1000"
              ],
              [
                "861/1000",
                "-279/1000"
              ],
              [
                "620429/1000000",
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
                "314810237/1000000000"
              ],
              [
                "-1/1",
                "212006027/500000000"
              ],
              [
                "-1/1",
                "57640637/100000000"
              ],
              [
                "-1/1",
                "685608187/1000000000"
              ],
              [
                "-1/1",
                "29082531/100000000"
              ],
              [
                "-1/1",
                "29400101/50000000"
              ],
              [
                "-1/1",
                "3365571/10000000"
              ],
              [
                "-1/1",
                "63373381/100000000"
              ]
            ],
            "raw": [
              "120183/1000000",
              "685608187/1000000000"
            ],
            "new": [
              "120183/1000000",
              "685609/1000000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "174661/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "441/500",
                "-100217394671/250000000000"
              ],
              [
                "441/500",
                "-104729021127/250000000000"
              ],
              [
                "354511/1000000",
                "-168784921853/500000000000"
              ],
              [
                "354511/1000000",
                "-53671023461/500000000000"
              ],
              [
                "441/500",
                "-462609527593/500000000000"
              ],
              [
                "441/500",
                "-94326556101/100000000000"
              ],
              [
                "354511/1000000",
                "-53869957513/62500000000"
              ],
              [
                "354511/1000000",
                "-19740360107/31250000000"
              ],
              [
                "441/500",
                "-1944926139/5000000000"
              ],
              [
                "441/500",
                "-3507321843/5000000000"
              ],
              [
                "354511/1000000",
                "-162842746411/500000000000"
              ],
              [
                "354511/1000000",
                "-194945165507/500000000000"
              ],
              [
                "441/500",
                "-5245385217/10000000000"
              ],
              [
                "441/500",
                "-66961413/80000000"
              ],
              [
                "354511/1000000",
                "-230619393361/500000000000"
              ],
              [
                "354511/1000000",
                "-262721812457/500000000000"
              ]
            ],
            "raw": [
              "53671023461/177255500000",
              "907/1000"
            ],
            "new": [
              "302789/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 134,
            "target": "z",
            "old": [
              "139/1000",
              "760519/1000000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-135821293/1000000000"
              ],
              [
                "324041/1000000",
                "-185388782411/1000000000000"
              ],
              [
                "324041/1000000",
                "-125895532487/1000000000000"
              ],
              [
                "324041/1000000",
                "-48564465679/1000000000000"
              ],
              [
                "88183/100000",
                "-53338491/250000000"
              ],
              [
                "88183/100000",
                "-39710931093/100000000000"
              ],
              [
                "88183/100000",
                "-203428203487/1000000000000"
              ],
              [
                "88183/100000",
                "-130142497099/500000000000"
              ],
              [
                "324041/1000000",
                "-202541561/1000000000"
              ],
              [
                "324041/1000000",
                "-252109050411/1000000000000"
              ],
              [
                "324041/1000000",
                "-490871795801/1000000000000"
              ],
              [
                "324041/1000000",
                "-413540728993/1000000000000"
              ],
              [
                "88183/100000",
                "-35009279/125000000"
              ],
              [
                "88183/100000",
                "-46382957893/100000000000"
              ],
              [
                "88183/100000",
                "-568404466801/1000000000000"
              ],
              [
                "88183/100000",
                "-78157657189/125000000000"
              ]
            ],
            "raw": [
              "48564465679/324041000000",
              "760519/1000000"
            ],
            "new": [
              "149871/1000000",
              "760519/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "x",
            "old": [
              "78171/500000",
              "7819/10000"
            ],
            "lines": [
              [
                "879817/1000000",
                "-338648771529/1000000000000"
              ],
              [
                "879817/1000000",
                "-369872023651/1000000000000"
              ],
              [
                "879817/1000000",
                "-208122277621/1000000000000"
              ],
              [
                "879817/1000000",
                "-85664439/250000000"
              ],
              [
                "879817/1000000",
                "-90943174751/125000000000"
              ],
              [
                "879817/1000000",
                "-75876865013/100000000000"
              ],
              [
                "879817/1000000",
                "-259996654621/1000000000000"
              ],
              [
                "879817/1000000",
                "-394532133/1000000000"
              ],
              [
                "314391/1000000",
                "-277575412991/1000000000000"
              ],
              [
                "314391/1000000",
                "-212118169651/1000000000000"
              ],
              [
                "314391/1000000",
                "-147048919083/1000000000000"
              ],
              [
                "314391/1000000",
                "-92451951/500000000"
              ],
              [
                "314391/1000000",
                "-66647203947/100000000000"
              ],
              [
                "314391/1000000",
                "-60101479613/100000000000"
              ],
              [
                "314391/1000000",
                "-198923296083/1000000000000"
              ],
              [
                "314391/1000000",
                "-236778279/1000000000"
              ]
            ],
            "raw": [
              "208122277621/879817000000",
              "7819/10000"
            ],
            "new": [
              "236551/1000000",
              "7819/10000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "302789/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "541/1000",
                "-347663411/1000000000"
              ],
              [
                "541/1000",
                "-420905011379/1000000000000"
              ],
              [
                "88183/100000",
                "-395038781/1000000000"
              ],
              [
                "88183/100000",
                "-550274195309/1000000000000"
              ],
              [
                "541/1000",
                "-2718599/10000000"
              ],
              [
                "541/1000",
                "-2139063461/10000000000"
              ],
              [
                "88183/100000",
                "-31923527/100000000"
              ],
              [
                "88183/100000",
                "-34327553003/100000000000"
              ]
            ],
            "raw": [
              "31923527/88183000",
              "907/1000"
            ],
            "new": [
              "181007/500000",
              "907/1000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "181007/500000",
              "907/1000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-319590518833/1000000000000"
              ],
              [
                "324041/1000000",
                "-340638075623/1000000000000"
              ],
              [
                "324041/1000000",
                "-3093286867/10000000000"
              ],
              [
                "324041/1000000",
                "-199181089211/1000000000000"
              ],
              [
                "88183/100000",
                "-397123189833/1000000000000"
              ],
              [
                "88183/100000",
                "-276179302071/500000000000"
              ],
              [
                "88183/100000",
                "-3868613577/10000000000"
              ],
              [
                "88183/100000",
                "-41090161773/100000000000"
              ],
              [
                "324041/1000000",
                "-453342604559/1000000000000"
              ],
              [
                "324041/1000000",
                "-474390161349/1000000000000"
              ],
              [
                "324041/1000000",
                "-7514352761/10000000000"
              ],
              [
                "324041/1000000",
                "-641287678611/1000000000000"
              ],
              [
                "88183/100000",
                "-530875275559/1000000000000"
              ],
              [
                "88183/100000",
                "-171527672467/250000000000"
              ],
              [
                "88183/100000",
                "-8289679471/10000000000"
              ],
              [
                "88183/100000",
                "-85300820713/100000000000"
              ]
            ],
            "raw": [
              "3868613577/8818300000",
              "907/1000"
            ],
            "new": [
              "219351/500000",
              "907/1000"
            ]
          },
          {
            "factor": 162,
            "target": "z",
            "old": [
              "149871/1000000",
              "760519/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-70261309/250000000"
              ],
              [
                "1/1",
                "-246614429/500000000"
              ],
              [
                "1/1",
                "-84146133/250000000"
              ],
              [
                "1/1",
                "-274384077/500000000"
              ],
              [
                "1/1",
                "-135511999989/500000000000"
              ],
              [
                "1/1",
                "-356309065759/1000000000000"
              ],
              [
                "1/1",
                "-287418799293/500000000000"
              ],
              [
                "1/1",
                "-660122664367/1000000000000"
              ]
            ],
            "raw": [
              "135511999989/500000000000",
              "760519/1000000"
            ],
            "new": [
              "271023/1000000",
              "760519/1000000"
            ]
          },
          {
            "factor": 172,
            "target": "z",
            "old": [
              "271023/1000000",
              "760519/1000000"
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
                "347301973/1000000000"
              ],
              [
                "-1/1",
                "282415883/500000000"
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
                "48449773/100000000"
              ],
              [
                "-1/1",
                "702027523/1000000000"
              ]
            ],
            "raw": [
              "271023/1000000",
              "187771/250000"
            ],
            "new": [
              "271023/1000000",
              "187771/250000"
            ]
          },
          {
            "factor": 184,
            "target": "x",
            "old": [
              "236551/1000000",
              "7819/10000"
            ],
            "lines": [
              [
                "1/1",
                "-10177/40000"
              ],
              [
                "1/1",
                "-175199830563/500000000000"
              ],
              [
                "1/1",
                "-164718669437/500000000000"
              ],
              [
                "1/1",
                "-106353/250000"
              ],
              [
                "1/1",
                "-270326791/1000000000"
              ],
              [
                "1/1",
                "-409510209/1000000000"
              ]
            ],
            "raw": [
              "10177/40000",
              "7819/10000"
            ],
            "new": [
              "10177/40000",
              "7819/10000"
            ]
          },
          {
            "factor": 186,
            "target": "x",
            "old": [
              "10177/40000",
              "7819/10000"
            ],
            "lines": [
              [
                "1/1",
                "-243008368563/500000000000"
              ],
              [
                "1/1",
                "-338661967233/500000000000"
              ],
              [
                "1/1",
                "-140257269/250000000"
              ],
              [
                "1/1",
                "-37616813667/50000000000"
              ],
              [
                "1/1",
                "-283249791/1000000000"
              ],
              [
                "1/1",
                "-314946981/1000000000"
              ],
              [
                "1/1",
                "-87667/200000"
              ],
              [
                "1/1",
                "-47003219/100000000"
              ]
            ],
            "raw": [
              "283249791/1000000000",
              "7819/10000"
            ],
            "new": [
              "283249/1000000",
              "7819/10000"
            ]
          },
          {
            "factor": 190,
            "target": "v",
            "old": [
              "120183/1000000",
              "685609/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-138413934541/500000000000"
              ],
              [
                "1/1",
                "-439444001671/1000000000000"
              ],
              [
                "1/1",
                "-214672447317/500000000000"
              ],
              [
                "1/1",
                "-591961027223/1000000000000"
              ],
              [
                "1/1",
                "-13311549683/50000000000"
              ],
              [
                "1/1",
                "-29465926873/100000000000"
              ],
              [
                "1/1",
                "-34064184171/50000000000"
              ],
              [
                "1/1",
                "-70971195849/100000000000"
              ]
            ],
            "raw": [
              "13311549683/50000000000",
              "685609/1000000"
            ],
            "new": [
              "26623/100000",
              "685609/1000000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "861/1000",
                "-30637949399/100000000000"
              ],
              [
                "620429/1000000",
                "-280394698567/1000000000000"
              ],
              [
                "861/1000",
                "-32813417/100000000"
              ],
              [
                "620429/1000000",
                "-261014861/1000000000"
              ],
              [
                "861/1000",
                "-351677877917/1000000000000"
              ],
              [
                "620429/1000000",
                "-162846541247/500000000000"
              ],
              [
                "861/1000",
                "-445140911/1000000000"
              ],
              [
                "620429/1000000",
                "-189010801/500000000"
              ]
            ],
            "raw": [
              "30637949399/86100000000",
              "88183/100000"
            ],
            "new": [
              "355841/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "355841/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "1/1",
                "-388499/1000000"
              ],
              [
                "1/1",
                "-51396413099/100000000000"
              ],
              [
                "1/1",
                "-43402086901/100000000000"
              ],
              [
                "1/1",
                "-279743/500000"
              ],
              [
                "1/1",
                "-442255773917/1000000000000"
              ],
              [
                "1/1",
                "-505729226083/1000000000000"
              ]
            ],
            "raw": [
              "388499/1000000",
              "88183/100000"
            ],
            "new": [
              "388499/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 202,
            "target": "d",
            "old": [
              "60001/500000",
              "295337/500000"
            ],
            "lines": [
              [
                "-283249/1000000",
                "-353776389/1000000000"
              ],
              [
                "-283249/1000000",
                "-526205893821/1000000000000"
              ],
              [
                "-7819/10000",
                "-2844639/10000000"
              ],
              [
                "-7819/10000",
                "-3369324351/10000000000"
              ],
              [
                "-283249/1000000",
                "114521611/1000000000"
              ],
              [
                "-283249/1000000",
                "-57907893821/1000000000000"
              ],
              [
                "-7819/10000",
                "1838341/10000000"
              ],
              [
                "-7819/10000",
                "1313655649/10000000000"
              ]
            ],
            "raw": [
              "60001/500000",
              "114521611/283249000"
            ],
            "new": [
              "60001/500000",
              "80863/200000"
            ]
          },
          {
            "factor": 202,
            "target": "y",
            "old": [
              "219351/500000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-413234417749/500000000000"
              ],
              [
                "1/1",
                "-998898340319/1000000000000"
              ],
              [
                "1/1",
                "-181400041687/200000000000"
              ],
              [
                "1/1",
                "-134928714157/125000000000"
              ],
              [
                "1/1",
                "-4084977319/5000000000"
              ],
              [
                "1/1",
                "-8694639989/10000000000"
              ],
              [
                "1/1",
                "-2078599597/2000000000"
              ],
              [
                "1/1",
                "-1364710417/1250000000"
              ]
            ],
            "raw": [
              "4084977319/5000000000",
              "907/1000"
            ],
            "new": [
              "163399/200000",
              "907/1000"
            ]
          },
          {
            "factor": 204,
            "target": "g",
            "old": [
              "59/500",
              "645489/1000000"
            ],
            "lines": [
              [
                "861/1000",
                "-120897200299/1000000000000"
              ],
              [
                "620429/1000000",
                "-23728101219/250000000000"
              ],
              [
                "861/1000",
                "-143471417/1000000000"
              ],
              [
                "620429/1000000",
                "-19088027/250000000"
              ],
              [
                "861/1000",
                "-43187507273/250000000000"
              ],
              [
                "620429/1000000",
                "-146765233669/1000000000000"
              ],
              [
                "861/1000",
                "-69352109/250000000"
              ],
              [
                "620429/1000000",
                "-210289127/1000000000"
              ]
            ],
            "raw": [
              "19088027/155107250",
              "645489/1000000"
            ],
            "new": [
              "123063/1000000",
              "645489/1000000"
            ]
          },
          {
            "factor": 214,
            "target": "e",
            "old": [
              "57/100",
              "907/1000"
            ],
            "lines": [
              [
                "283249/1000000",
                "-470626637/1000000000"
              ],
              [
                "283249/1000000",
                "-48311/250000"
              ],
              [
                "7819/10000",
                "-7762997/10000000"
              ],
              [
                "7819/10000",
                "-138379/200000"
              ],
              [
                "283249/1000000",
                "-560631637/1000000000"
              ],
              [
                "283249/1000000",
                "-283249/1000000"
              ],
              [
                "7819/10000",
                "-8663047/10000000"
              ],
              [
                "7819/10000",
                "-7819/10000"
              ]
            ],
            "raw": [
              "193244/283249",
              "907/1000"
            ],
            "new": [
              "2132/3125",
              "907/1000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "613/1000",
              "1/1"
            ],
            "lines": [
              [
                "716751/1000000",
                "-2239847507/3125000000"
              ],
              [
                "716751/1000000",
                "-653088157/1000000000"
              ],
              [
                "2181/10000",
                "-47068943/125000000"
              ],
              [
                "2181/10000",
                "-2008117/10000000"
              ],
              [
                "716751/1000000",
                "-630278283/781250000"
              ],
              [
                "716751/1000000",
                "-743093157/1000000000"
              ],
              [
                "2181/10000",
                "-3644973/7812500"
              ],
              [
                "2181/10000",
                "-2908167/10000000"
              ]
            ],
            "raw": [
              "653088157/716751000",
              "1/1"
            ],
            "new": [
              "455589/500000",
              "1/1"
            ]
          },
          {
            "factor": 214,
            "target": "y",
            "old": [
              "163399/200000",
              "907/1000"
            ],
            "lines": [
              [
                "-1/1",
                "376665770219/500000000000"
              ],
              [
                "-1/1",
                "408497292839/500000000000"
              ],
              [
                "-1/1",
                "2553108743/3125000000"
              ],
              [
                "-1/1",
                "880657843/1000000000"
              ],
              [
                "-1/1",
                "3195856889/5000000000"
              ],
              [
                "-1/1",
                "4074556109/5000000000"
              ],
              [
                "-1/1",
                "20579483/31250000"
              ],
              [
                "-1/1",
                "8342833/10000000"
              ]
            ],
            "raw": [
              "163399/200000",
              "880657843/1000000000"
            ],
            "new": [
              "163399/200000",
              "440329/500000"
            ]
          },
          {
            "factor": 216,
            "target": "g",
            "old": [
              "123063/1000000",
              "645489/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-201013/1000000"
              ],
              [
                "1/1",
                "-325658590299/1000000000000"
              ],
              [
                "1/1",
                "-247354409701/1000000000000"
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
              "645489/1000000"
            ],
            "new": [
              "201013/1000000",
              "645489/1000000"
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
                "455589/500000",
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
            "factor": 236,
            "target": "g",
            "old": [
              "201013/1000000",
              "645489/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "550686691/883000000"
              ],
              [
                "-1/1",
                "31698207/220750000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "550686691/883000000"
            ],
            "new": [
              "201013/1000000",
              "124731/200000"
            ]
          },
          {
            "factor": 236,
            "target": "z",
            "old": [
              "271023/1000000",
              "187771/250000"
            ],
            "lines": [
              [
                "-1/1",
                "612505521/883000000"
              ],
              [
                "-1/1",
                "47862527/176600000"
              ]
            ],
            "raw": [
              "271023/1000000",
              "612505521/883000000"
            ],
            "new": [
              "271023/1000000",
              "138733/200000"
            ]
          },
          {
            "factor": 245,
            "target": "c",
            "old": [
              "270723/500000",
              "88183/100000"
            ],
            "lines": [
              [
                "87726871/500000000",
                "-48833277/500000000"
              ],
              [
                "101099972319/500000000000",
                "-120039657/1000000000"
              ],
              [
                "939/5000",
                "-105927/1000000"
              ],
              [
                "1179571/5000000",
                "-128300103/1000000000"
              ]
            ],
            "raw": [
              "128300103/235914200",
              "88183/100000"
            ],
            "new": [
              "271921/500000",
              "88183/100000"
            ]
          },
          {
            "factor": 360,
            "target": "u",
            "old": [
              "388499/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "163399/200000",
                "-11782381907/25000000000"
              ],
              [
                "163399/200000",
                "-107284644131/250000000000"
              ],
              [
                "163399/200000",
                "-44954060027/100000000000"
              ],
              [
                "163399/200000",
                "-448518414091/1000000000000"
              ],
              [
                "163399/200000",
                "-53473864301/100000000000"
              ],
              [
                "163399/200000",
                "-372620973533/1000000000000"
              ],
              [
                "163399/200000",
                "-512983967/1000000000"
              ],
              [
                "163399/200000",
                "-3920008111/10000000000"
              ],
              [
                "440329/500000",
                "-11782381907/25000000000"
              ],
              [
                "440329/500000",
                "-107284644131/250000000000"
              ],
              [
                "440329/500000",
                "-44954060027/100000000000"
              ],
              [
                "440329/500000",
                "-448518414091/1000000000000"
              ],
              [
                "440329/500000",
                "-53473864301/100000000000"
              ],
              [
                "440329/500000",
                "-372620973533/1000000000000"
              ],
              [
                "440329/500000",
                "-512983967/1000000000"
              ],
              [
                "440329/500000",
                "-3920008111/10000000000"
              ],
              [
                "163399/200000",
                "-136196393681/250000000000"
              ],
              [
                "163399/200000",
                "-62828609371/125000000000"
              ],
              [
                "163399/200000",
                "-451322541641/1000000000000"
              ],
              [
                "163399/200000",
                "-225150177731/500000000000"
              ],
              [
                "163399/200000",
                "-817352699183/1000000000000"
              ],
              [
                "163399/200000",
                "-327617514853/500000000000"
              ],
              [
                "163399/200000",
                "-7238896661/10000000000"
              ],
              [
                "163399/200000",
                "-3014532551/5000000000"
              ],
              [
                "440329/500000",
                "-136196393681/250000000000"
              ],
              [
                "440329/500000",
                "-62828609371/125000000000"
              ],
              [
                "440329/500000",
                "-451322541641/1000000000000"
              ],
              [
                "440329/500000",
                "-225150177731/500000000000"
              ],
              [
                "440329/500000",
                "-817352699183/1000000000000"
              ],
              [
                "440329/500000",
                "-327617514853/500000000000"
              ],
              [
                "440329/500000",
                "-7238896661/10000000000"
              ],
              [
                "440329/500000",
                "-3014532551/5000000000"
              ]
            ],
            "raw": [
              "372620973533/880658000000",
              "88183/100000"
            ],
            "new": [
              "105779/250000",
              "88183/100000"
            ]
          },
          {
            "factor": 886,
            "target": "z",
            "old": [
              "271023/1000000",
              "138733/200000"
            ],
            "lines": [
              [
                "-1/1",
                "59677579/125000000"
              ],
              [
                "-1/1",
                "503861741/1000000000"
              ],
              [
                "-1/1",
                "76587680339/125000000000"
              ],
              [
                "-1/1",
                "590528724781/1000000000000"
              ],
              [
                "-1/1",
                "8939776563/62500000000"
              ],
              [
                "-1/1",
                "144820074477/500000000000"
              ],
              [
                "-1/1",
                "6957930893/25000000000"
              ],
              [
                "-1/1",
                "75261426547/200000000000"
              ],
              [
                "-1/1",
                "234580093/500000000"
              ],
              [
                "-1/1",
                "99120259/200000000"
              ],
              [
                "-1/1",
                "309814202013/500000000000"
              ],
              [
                "-1/1",
                "119491137219/200000000000"
              ],
              [
                "-1/1",
                "24309017821/250000000000"
              ],
              [
                "-1/1",
                "24383979523/100000000000"
              ],
              [
                "-1/1",
                "24770428931/100000000000"
              ],
              [
                "-1/1",
                "13827767453/40000000000"
              ]
            ],
            "raw": [
              "271023/1000000",
              "309814202013/500000000000"
            ],
            "new": [
              "271023/1000000",
              "619629/1000000"
            ]
          },
          {
            "factor": 908,
            "target": "v",
            "old": [
              "26623/100000",
              "685609/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "239430474693/500000000000"
              ],
              [
                "-1/1",
                "274841749833/500000000000"
              ],
              [
                "-1/1",
                "64750796399/125000000000"
              ],
              [
                "-1/1",
                "68799735419/125000000000"
              ],
              [
                "-1/1",
                "1408977721/3125000000"
              ],
              [
                "-1/1",
                "521695421/1000000000"
              ],
              [
                "-1/1",
                "394691953/781250000"
              ],
              [
                "-1/1",
                "134399303/250000000"
              ],
              [
                "-1/1",
                "186921941827/500000000000"
              ],
              [
                "-1/1",
                "273883496287/500000000000"
              ],
              [
                "-1/1",
                "20649465273/50000000000"
              ],
              [
                "-1/1",
                "27424068813/50000000000"
              ],
              [
                "-1/1",
                "953474719/3125000000"
              ],
              [
                "-1/1",
                "479035019/1000000000"
              ],
              [
                "-1/1",
                "112326481/312500000"
              ],
              [
                "-1/1",
                "49493681/100000000"
              ]
            ],
            "raw": [
              "26623/100000",
              "68799735419/125000000000"
            ],
            "new": [
              "26623/100000",
              "275199/500000"
            ]
          },
          {
            "factor": 1510,
            "target": "u",
            "old": [
              "105779/250000",
              "88183/100000"
            ],
            "lines": [
              [
                "3707332287/10000000000",
                "-233208315411833/1250000000000000"
              ],
              [
                "3707332287/10000000000",
                "-35528987007607/125000000000000"
              ],
              [
                "3707332287/10000000000",
                "-582838810816741/2500000000000000"
              ],
              [
                "3707332287/10000000000",
                "-165400384029043/500000000000000"
              ],
              [
                "6143/20000",
                "-151987422066801/1000000000000000"
              ],
              [
                "6143/20000",
                "-45632459499267/200000000000000"
              ],
              [
                "6143/20000",
                "-198556294064031/1000000000000000"
              ],
              [
                "6143/20000",
                "-54946233898713/200000000000000"
              ],
              [
                "3707332287/10000000000",
                "-5328085060209/31250000000000"
              ],
              [
                "3707332287/10000000000",
                "-59665907259723/250000000000000"
              ],
              [
                "3707332287/10000000000",
                "-133387087758843/500000000000000"
              ],
              [
                "3707332287/10000000000",
                "-33493908262989/100000000000000"
              ],
              [
                "6143/20000",
                "-679597458320113/5000000000000000"
              ],
              [
                "6143/20000",
                "-182594030474371/1000000000000000"
              ],
              [
                "6143/20000",
                "-1160974726275103/5000000000000000"
              ],
              [
                "6143/20000",
                "-278869484065369/1000000000000000"
              ]
            ],
            "raw": [
              "679597458320113/1535750000000000",
              "88183/100000"
            ],
            "new": [
              "221259/500000",
              "88183/100000"
            ]
          },
          {
            "factor": 1672,
            "target": "g",
            "old": [
              "201013/1000000",
              "124731/200000"
            ],
            "lines": [
              [
                "-760263/1000000",
                "265072230401699379/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "274823077509086379/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "422534348525597967/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "439847035969748967/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "141802089248206371/500000000000000000"
              ],
              [
                "-760263/1000000",
                "144764757920569371/500000000000000000"
              ],
              [
                "-760263/1000000",
                "44106629662031133/100000000000000000"
              ],
              [
                "-760263/1000000",
                "45455347430180133/100000000000000000"
              ],
              [
                "-760263/1000000",
                "268672372321433379/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "278423219428820379/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "428926422067979967/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "446239109512130967/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "142895945767972371/500000000000000000"
              ],
              [
                "-760263/1000000",
                "145858614440335371/500000000000000000"
              ],
              [
                "-760263/1000000",
                "44604594128249133/100000000000000000"
              ],
              [
                "-760263/1000000",
                "45953311896398133/100000000000000000"
              ],
              [
                "-760263/1000000",
                "149563492802509017/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "159314339909896017/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "217447893051564141/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "234760580495715141/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "106706254547848233/500000000000000000"
              ],
              [
                "-760263/1000000",
                "109668923220211233/500000000000000000"
              ],
              [
                "-760263/1000000",
                "28129690934475159/100000000000000000"
              ],
              [
                "-760263/1000000",
                "29478408702624159/100000000000000000"
              ],
              [
                "-760263/1000000",
                "153163634722243017/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "162914481829630017/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "223839966593946141/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "241152654038097141/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "107800111067614233/500000000000000000"
              ],
              [
                "-760263/1000000",
                "110762779739977233/500000000000000000"
              ],
              [
                "-760263/1000000",
                "28627655400693159/100000000000000000"
              ],
              [
                "-760263/1000000",
                "29976373168842159/100000000000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "15317770632132711/25342100000000000"
            ],
            "new": [
              "201013/1000000",
              "15111/25000"
            ]
          },
          {
            "factor": 1676,
            "target": "g",
            "old": [
              "201013/1000000",
              "15111/25000"
            ],
            "lines": [
              [
                "-346367459907/500000000000",
                "22562569205029113/100000000000000000"
              ],
              [
                "-346367459907/500000000000",
                "23779312513201713/100000000000000000"
              ],
              [
                "-346367459907/500000000000",
                "7316959853071599/20000000000000000"
              ],
              [
                "-346367459907/500000000000",
                "7711545321441399/20000000000000000"
              ],
              [
                "-760263/1000000",
                "128928960380636871/500000000000000000"
              ],
              [
                "-760263/1000000",
                "135012676921499871/500000000000000000"
              ],
              [
                "-760263/1000000",
                "41811197050782033/100000000000000000"
              ],
              [
                "-760263/1000000",
                "43784124392631033/100000000000000000"
              ],
              [
                "-346367459907/500000000000",
                "40745013373556427/500000000000000000"
              ],
              [
                "-346367459907/500000000000",
                "46828729914419427/500000000000000000"
              ],
              [
                "-346367459907/500000000000",
                "13213460947555821/100000000000000000"
              ],
              [
                "-346367459907/500000000000",
                "15186388289404821/100000000000000000"
              ],
              [
                "-760263/1000000",
                "56861127729047733/500000000000000000"
              ],
              [
                "-760263/1000000",
                "62944844269910733/500000000000000000"
              ],
              [
                "-760263/1000000",
                "18439858732979859/100000000000000000"
              ],
              [
                "-760263/1000000",
                "20412786074828859/100000000000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "14594708130877011/25342100000000000"
            ],
            "new": [
              "201013/1000000",
              "143977/250000"
            ]
          },
          {
            "factor": 1880,
            "target": "u",
            "old": [
              "221259/500000",
              "88183/100000"
            ],
            "lines": [
              [
                "-866301/1000000",
                "690346209/1000000000"
              ],
              [
                "-866301/1000000",
                "170745414049865541/250000000000000000"
              ],
              [
                "-866301/1000000",
                "171701791490530791/250000000000000000"
              ],
              [
                "-866301/1000000",
                "143210738254889679/200000000000000000"
              ],
              [
                "-866301/1000000",
                "143975840207421879/200000000000000000"
              ],
              [
                "-866301/1000000",
                "178403138200134459/250000000000000000"
              ],
              [
                "-866301/1000000",
                "177446760759469209/250000000000000000"
              ],
              [
                "-866301/1000000",
                "88281/125000"
              ],
              [
                "-866301/1000000",
                "136108103545110321/200000000000000000"
              ],
              [
                "-866301/1000000",
                "135343001592578121/200000000000000000"
              ],
              [
                "-866301/1000000",
                "160222231903906887/250000000000000000"
              ],
              [
                "-866301/1000000",
                "161178609344572137/250000000000000000"
              ],
              [
                "-866301/1000000",
                "673960962690613779/1000000000000000000"
              ],
              [
                "-866301/1000000",
                "677786472453274779/1000000000000000000"
              ],
              [
                "-866301/1000000",
                "188926320346093113/250000000000000000"
              ],
              [
                "-866301/1000000",
                "187969942905427863/250000000000000000"
              ],
              [
                "-866301/1000000",
                "722633246309386221/1000000000000000000"
              ],
              [
                "-866301/1000000",
                "718807736546725221/1000000000000000000"
              ]
            ],
            "raw": [
              "221259/500000",
              "62975440115364371/72191750000000000"
            ],
            "new": [
              "221259/500000",
              "54521/62500"
            ]
          },
          {
            "factor": 1904,
            "target": "u",
            "old": [
              "221259/500000",
              "54521/62500"
            ],
            "lines": [
              [
                "-243533670819/500000000000",
                "194069435927871/500000000000000"
              ],
              [
                "-9630668217/40000000000",
                "7674578805453/40000000000000"
              ],
              [
                "-340888577199/500000000000",
                "271650542895291/500000000000000"
              ],
              [
                "-87095303637/200000000000",
                "69405336814233/200000000000000"
              ],
              [
                "-243533670819/500000000000",
                "24817466439/62500000000"
              ],
              [
                "-9630668217/40000000000",
                "981419877/5000000000"
              ],
              [
                "-340888577199/500000000000",
                "34738485219/62500000000"
              ],
              [
                "-87095303637/200000000000",
                "8875506897/25000000000"
              ]
            ],
            "raw": [
              "221259/500000",
              "235416/288767"
            ],
            "new": [
              "221259/500000",
              "407623/500000"
            ]
          },
          {
            "factor": 2470,
            "target": "g",
            "old": [
              "201013/1000000",
              "143977/250000"
            ],
            "lines": [
              [
                "-14123259/20000000",
                "14554937871249/62500000000000"
              ],
              [
                "-14123259/20000000",
                "123684184029891/500000000000000"
              ],
              [
                "-14123259/20000000",
                "92980175592783/250000000000000"
              ],
              [
                "-14123259/20000000",
                "38641006449093/100000000000000"
              ],
              [
                "-31/40",
                "5334306859327/20000000000000"
              ],
              [
                "-31/40",
                "5652342679327/20000000000000"
              ],
              [
                "-31/40",
                "1704924818521/4000000000000"
              ],
              [
                "-31/40",
                "1768531982521/4000000000000"
              ],
              [
                "-14123259/20000000",
                "21487350786171/250000000000000"
              ],
              [
                "-14123259/20000000",
                "50219382632241/500000000000000"
              ],
              [
                "-14123259/20000000",
                "8354812494477/62500000000000"
              ],
              [
                "-14123259/20000000",
                "14816636203143/100000000000000"
              ],
              [
                "-31/40",
                "2395714803421/20000000000000"
              ],
              [
                "-31/40",
                "2713750623421/20000000000000"
              ],
              [
                "-31/40",
                "751950008683/4000000000000"
              ],
              [
                "-31/40",
                "815557172683/4000000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "57049418791/100000000000"
            ],
            "new": [
              "201013/1000000",
              "114099/200000"
            ]
          },
          {
            "factor": 3378,
            "target": "x",
            "old": [
              "283249/1000000",
              "7819/10000"
            ],
            "lines": [
              [
                "-851731/1000000",
                "104281494868632951/200000000000000000"
              ],
              [
                "-851731/1000000",
                "104513470167353123/200000000000000000"
              ],
              [
                "-851731/1000000",
                "113680089685851999/200000000000000000"
              ],
              [
                "-851731/1000000",
                "121200731560413227/200000000000000000"
              ],
              [
                "-851731/1000000",
                "58442786070013799/100000000000000000"
              ],
              [
                "-851731/1000000",
                "11711754743874777/20000000000000000"
              ],
              [
                "-851731/1000000",
                "61298427443788751/100000000000000000"
              ],
              [
                "-851731/1000000",
                "13011749676213873/20000000000000000"
              ],
              [
                "-851731/1000000",
                "248887595659909209/500000000000000000"
              ],
              [
                "-851731/1000000",
                "240304045388856557/500000000000000000"
              ],
              [
                "-851731/1000000",
                "272384082702956829/500000000000000000"
              ],
              [
                "-851731/1000000",
                "282022198871506817/500000000000000000"
              ],
              [
                "-851731/1000000",
                "142516783532424041/250000000000000000"
              ],
              [
                "-851731/1000000",
                "27645001679379543/50000000000000000"
              ],
              [
                "-851731/1000000",
                "149655886966861421/250000000000000000"
              ],
              [
                "-851731/1000000",
                "30894989010227283/50000000000000000"
              ]
            ],
            "raw": [
              "283249/1000000",
              "13011749676213873/17034620000000000"
            ],
            "new": [
              "283249/1000000",
              "381921/500000"
            ]
          },
          {
            "factor": 3384,
            "target": "x",
            "old": [
              "283249/1000000",
              "381921/500000"
            ],
            "lines": [
              [
                "-473665373/781250000",
                "40916889257897799/100000000000000000"
              ],
              [
                "-473665373/781250000",
                "8091527882723177/20000000000000000"
              ],
              [
                "-714116017/1000000000",
                "46780829705396751/100000000000000000"
              ],
              [
                "-714116017/1000000000",
                "9993182629807073/20000000000000000"
              ],
              [
                "-473665373/781250000",
                "44814394379311299/100000000000000000"
              ],
              [
                "-473665373/781250000",
                "8871028907005877/20000000000000000"
              ],
              [
                "-714116017/1000000000",
                "50678334826810251/100000000000000000"
              ],
              [
                "-714116017/1000000000",
                "10772683654089773/20000000000000000"
              ],
              [
                "-473665373/781250000",
                "103839820420732041/250000000000000000"
              ],
              [
                "-473665373/781250000",
                "19722045894924743/50000000000000000"
              ],
              [
                "-714116017/1000000000",
                "118499671539479421/250000000000000000"
              ],
              [
                "-714116017/1000000000",
                "24476182762634483/50000000000000000"
              ],
              [
                "-473665373/781250000",
                "114342850014590541/250000000000000000"
              ],
              [
                "-473665373/781250000",
                "21822651813696443/50000000000000000"
              ],
              [
                "-714116017/1000000000",
                "129002701133337921/250000000000000000"
              ],
              [
                "-714116017/1000000000",
                "26576788681406183/50000000000000000"
              ]
            ],
            "raw": [
              "283249/1000000",
              "114342850014590541/151572919360000000"
            ],
            "new": [
              "283249/1000000",
              "94297/125000"
            ]
          },
          {
            "factor": 3388,
            "target": "x",
            "old": [
              "283249/1000000",
              "94297/125000"
            ],
            "lines": [
              [
                "-239437766989/500000000000",
                "157551438001027/500000000000000"
              ],
              [
                "-239437766989/500000000000",
                "166387818918223/500000000000000"
              ],
              [
                "-9468693527/40000000000",
                "6230455203161/40000000000000"
              ],
              [
                "-9468693527/40000000000",
                "6579894574589/40000000000000"
              ],
              [
                "-335155296769/500000000000",
                "220534127191567/500000000000000"
              ],
              [
                "-335155296769/500000000000",
                "232902935612683/500000000000000"
              ],
              [
                "-85630479547/200000000000",
                "56345351692021/200000000000000"
              ],
              [
                "-85630479547/200000000000",
                "59505519550729/200000000000000"
              ],
              [
                "-239437766989/500000000000",
                "85481162376707/250000000000000"
              ],
              [
                "-239437766989/500000000000",
                "17979870567061/50000000000000"
              ],
              [
                "-9468693527/40000000000",
                "3380397917401/20000000000000"
              ],
              [
                "-9468693527/40000000000",
                "711023520623/4000000000000"
              ],
              [
                "-335155296769/500000000000",
                "119653071880847/250000000000000"
              ],
              [
                "-335155296769/500000000000",
                "25167495218281/50000000000000"
              ],
              [
                "-85630479547/200000000000",
                "30570753388661/100000000000000"
              ],
              [
                "-85630479547/200000000000",
                "6430167463603/20000000000000"
              ]
            ],
            "raw": [
              "283249/1000000",
              "63958219/85173100"
            ],
            "new": [
              "283249/1000000",
              "750921/1000000"
            ]
          },
          {
            "factor": 3588,
            "target": "x",
            "old": [
              "283249/1000000",
              "750921/1000000"
            ],
            "lines": [
              [
                "-949687/1000000",
                "114534890458855227/200000000000000000"
              ],
              [
                "-949687/1000000",
                "112199414355404471/200000000000000000"
              ],
              [
                "-949687/1000000",
                "125852579005509123/200000000000000000"
              ],
              [
                "-949687/1000000",
                "132294038159938079/200000000000000000"
              ],
              [
                "-949687/1000000",
                "59448379108444523/100000000000000000"
              ],
              [
                "-949687/1000000",
                "11656128211343829/20000000000000000"
              ],
              [
                "-949687/1000000",
                "62887112269928627/100000000000000000"
              ],
              [
                "-949687/1000000",
                "13221568369428621/20000000000000000"
              ],
              [
                "-949687/1000000",
                "116694975610695627/200000000000000000"
              ],
              [
                "-949687/1000000",
                "116034658480833671/200000000000000000"
              ],
              [
                "-949687/1000000",
                "128012664157349523/200000000000000000"
              ],
              [
                "-949687/1000000",
                "136129282285367279/200000000000000000"
              ],
              [
                "-949687/1000000",
                "60104693020304123/100000000000000000"
              ],
              [
                "-949687/1000000",
                "11954906891074629/20000000000000000"
              ],
              [
                "-949687/1000000",
                "63543426181788227/100000000000000000"
              ],
              [
                "-949687/1000000",
                "13520347049159421/20000000000000000"
              ],
              [
                "-949687/1000000",
                "273162132151737693/500000000000000000"
              ],
              [
                "-949687/1000000",
                "257106077584362689/500000000000000000"
              ],
              [
                "-949687/1000000",
                "301456353518372433/500000000000000000"
              ],
              [
                "-949687/1000000",
                "307342637095696709/500000000000000000"
              ],
              [
                "-949687/1000000",
                "144617866007472557/250000000000000000"
              ],
              [
                "-949687/1000000",
                "27317967744757011/50000000000000000"
              ],
              [
                "-949687/1000000",
                "153214698911182817/250000000000000000"
              ],
              [
                "-949687/1000000",
                "31231568139968991/50000000000000000"
              ],
              [
                "-949687/1000000",
                "278562345031338693/500000000000000000"
              ],
              [
                "-949687/1000000",
                "266694187897935689/500000000000000000"
              ],
              [
                "-949687/1000000",
                "306856566397973433/500000000000000000"
              ],
              [
                "-949687/1000000",
                "316930747409269709/500000000000000000"
              ],
              [
                "-949687/1000000",
                "146258650787121557/250000000000000000"
              ],
              [
                "-949687/1000000",
                "28064914444084011/50000000000000000"
              ],
              [
                "-949687/1000000",
                "154855483690831817/250000000000000000"
              ],
              [
                "-949687/1000000",
                "31978514839295991/50000000000000000"
              ]
            ],
            "raw": [
              "283249/1000000",
              "136129282285367279/189937400000000000"
            ],
            "new": [
              "283249/1000000",
              "716707/1000000"
            ]
          },
          {
            "factor": 3594,
            "target": "x",
            "old": [
              "283249/1000000",
              "716707/1000000"
            ],
            "lines": [
              [
                "-8104248011/12500000000",
                "44392191834280023/100000000000000000"
              ],
              [
                "-8104248011/12500000000",
                "8529843257782529/20000000000000000"
              ],
              [
                "-778180771/1000000000",
                "51453486946112127/100000000000000000"
              ],
              [
                "-778180771/1000000000",
                "10819795805936921/20000000000000000"
              ],
              [
                "-525875921/781250000",
                "45739905076339623/100000000000000000"
              ],
              [
                "-525875921/781250000",
                "8966901803553329/20000000000000000"
              ],
              [
                "-802962109/1000000000",
                "52801200188171727/100000000000000000"
              ],
              [
                "-802962109/1000000000",
                "11256854351707721/20000000000000000"
              ],
              [
                "-8104248011/12500000000",
                "112759615787481057/250000000000000000"
              ],
              [
                "-8104248011/12500000000",
                "20758754538642311/50000000000000000"
              ],
              [
                "-778180771/1000000000",
                "130412853567061317/250000000000000000"
              ],
              [
                "-778180771/1000000000",
                "26483635909028291/50000000000000000"
              ],
              [
                "-525875921/781250000",
                "116128898892630057/250000000000000000"
              ],
              [
                "-525875921/781250000",
                "21851400903069311/50000000000000000"
              ],
              [
                "-802962109/1000000000",
                "133782136672210317/250000000000000000"
              ],
              [
                "-802962109/1000000000",
                "27576282273455291/50000000000000000"
              ]
            ],
            "raw": [
              "283249/1000000",
              "11256854351707721/16059242180000000"
            ],
            "new": [
              "283249/1000000",
              "700959/1000000"
            ]
          },
          {
            "factor": 3598,
            "target": "x",
            "old": [
              "283249/1000000",
              "700959/1000000"
            ],
            "lines": [
              [
                "-266975059753/500000000000",
                "88308516719207/250000000000000"
              ],
              [
                "-266975059753/500000000000",
                "18545341435561/50000000000000"
              ],
              [
                "-10557670379/40000000000",
                "3492207144901/20000000000000"
              ],
              [
                "-10557670379/40000000000",
                "733385366123/4000000000000"
              ],
              [
                "-373700884813/500000000000",
                "123610688073347/250000000000000"
              ],
              [
                "-373700884813/500000000000",
                "25959018456781/50000000000000"
              ],
              [
                "-95478681919/200000000000",
                "31581904266161/100000000000000"
              ],
              [
                "-95478681919/200000000000",
                "6632397639103/20000000000000"
              ]
            ],
            "raw": [
              "283249/1000000",
              "65969719/94968700"
            ],
            "new": [
              "283249/1000000",
              "694647/1000000"
            ]
          },
          {
            "factor": 3727,
            "target": "u",
            "old": [
              "221259/500000",
              "407623/500000"
            ],
            "lines": [
              [
                "33049245139/50000000000",
                "-886337693091969/2500000000000000"
              ],
              [
                "33049245139/50000000000",
                "-1565326456071949/3125000000000000"
              ],
              [
                "33049245139/50000000000",
                "-899955423315069/2500000000000000"
              ],
              [
                "33049245139/50000000000",
                "-401106572687581/781250000000000"
              ],
              [
                "33049245139/50000000000",
                "-2606526965555171/6250000000000000"
              ],
              [
                "33049245139/50000000000",
                "-7042671289938293/12500000000000000"
              ],
              [
                "33049245139/50000000000",
                "-2586825536446421/6250000000000000"
              ],
              [
                "33049245139/50000000000",
                "-7091579119318793/12500000000000000"
              ],
              [
                "89061383869/125000000000",
                "-48155881339488303/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-13675594862404211/25000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-48836767850643303/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-13988393539831211/25000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-55969535995993273/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-3047665158741041/5000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-55575507413818273/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-3067228290493241/5000000000000000"
              ],
              [
                "33049245139/50000000000",
                "-18413974744783759/62500000000000000"
              ],
              [
                "33049245139/50000000000",
                "-11352751596039529/31250000000000000"
              ],
              [
                "33049245139/50000000000",
                "-18754418000361259/62500000000000000"
              ],
              [
                "33049245139/50000000000",
                "-11743749942823279/31250000000000000"
              ],
              [
                "33049245139/50000000000",
                "-352902382696889/781250000000000"
              ],
              [
                "33049245139/50000000000",
                "-32523719063046419/62500000000000000"
              ],
              [
                "33049245139/50000000000",
                "-1401758816233181/3125000000000000"
              ],
              [
                "33049245139/50000000000",
                "-32768258209948919/62500000000000000"
              ],
              [
                "89061383869/125000000000",
                "-40666946174457371/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-51175922453301211/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-41347832685612371/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-52739915840436211/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-60303377916392093/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-70812354195235933/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-59909349334217093/125000000000000000"
              ],
              [
                "89061383869/125000000000",
                "-71301432489040933/125000000000000000"
              ]
            ],
            "raw": [
              "18413974744783759/41311556423750000",
              "407623/500000"
            ],
            "new": [
              "222867/500000",
              "407623/500000"
            ]
          },
          {
            "factor": 20,
            "target": "a",
            "old": [
              "139/1000",
              "379571/1000000"
            ],
            "lines": [
              [
                "-891987/1000000",
                "147094111987/500000000000"
              ],
              [
                "-891987/1000000",
                "52695744781/200000000000"
              ],
              [
                "-721/1000",
                "136834721/500000000"
              ],
              [
                "-721/1000",
                "38869223/200000000"
              ]
            ],
            "raw": [
              "139/1000",
              "136834721/360500000"
            ],
            "new": [
              "139/1000",
              "37957/100000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "60001/500000",
              "80863/200000"
            ],
            "lines": [
              [
                "435829/1000000",
                "-93/1000"
              ],
              [
                "132421/500000",
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
              "80863/200000"
            ],
            "new": [
              "120183/1000000",
              "80863/200000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "271921/500000",
              "88183/100000"
            ],
            "lines": [
              [
                "-562057/1000000",
                "469057/1000000"
              ],
              [
                "-11117/40000",
                "7397/40000"
              ],
              [
                "-786817/1000000",
                "693817/1000000"
              ],
              [
                "-100537/200000",
                "81937/200000"
              ]
            ],
            "raw": [
              "271921/500000",
              "693817/786817"
            ],
            "new": [
              "271921/500000",
              "881803/1000000"
            ]
          },
          {
            "factor": 68,
            "target": "e",
            "old": [
              "2132/3125",
              "907/1000"
            ],
            "lines": [
              [
                "-108013/1000000",
                "47120534657/500000000000"
              ],
              [
                "-279/1000",
                "125020331/500000000"
              ],
              [
                "-108013/1000000",
                "15013/1000000"
              ],
              [
                "-279/1000",
                "93/500"
              ]
            ],
            "raw": [
              "2132/3125",
              "125020331/139500000"
            ],
            "new": [
              "2132/3125",
              "224051/250000"
            ]
          },
          {
            "factor": 68,
            "target": "h",
            "old": [
              "455589/500000",
              "1/1"
            ],
            "lines": [
              [
                "-891987/1000000",
                "651022821/781250000"
              ],
              [
                "-891987/1000000",
                "202549579337/250000000000"
              ],
              [
                "-721/1000",
                "2239547/3125000"
              ],
              [
                "-721/1000",
                "164239771/250000000"
              ]
            ],
            "raw": [
              "455589/500000",
              "2239547/2253125"
            ],
            "new": [
              "455589/500000",
              "496987/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "201013/1000000",
              "114099/200000"
            ],
            "lines": [
              [
                "-455589/500000",
                "25514317551/100000000000"
              ],
              [
                "-455589/500000",
                "94298119893/200000000000"
              ],
              [
                "-496987/500000",
                "150085558871/500000000000"
              ],
              [
                "-496987/500000",
                "544500360653/1000000000000"
              ],
              [
                "-455589/500000",
                "32778295629/500000000000"
              ],
              [
                "-455589/500000",
                "164088782847/1000000000000"
              ],
              [
                "-496987/500000",
                "11058453349/100000000000"
              ],
              [
                "-496987/500000",
                "47419708807/200000000000"
              ]
            ],
            "raw": [
              "201013/1000000",
              "544500360653/993974000000"
            ],
            "new": [
              "201013/1000000",
              "273901/500000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "163399/200000",
              "440329/500000"
            ],
            "lines": [
              [
                "-891987/1000000",
                "2316043777/3125000000"
              ],
              [
                "-891987/1000000",
                "48664262759/62500000000"
              ],
              [
                "-721/1000",
                "1951499493/3125000000"
              ],
              [
                "-721/1000",
                "156347242699/250000000000"
              ],
              [
                "-891987/1000000",
                "1907525563/3125000000"
              ],
              [
                "-891987/1000000",
                "91990842167/125000000000"
              ],
              [
                "-721/1000",
                "1542981279/3125000000"
              ],
              [
                "-721/1000",
                "145671875997/250000000000"
              ]
            ],
            "raw": [
              "163399/200000",
              "48664262759/55749187500"
            ],
            "new": [
              "163399/200000",
              "174583/200000"
            ]
          }
        ],
        "contradiction": {
          "factor": 96,
          "target": "f",
          "old": [
            "108013/1000000",
            "279/1000"
          ],
          "lines": [
            [
              "94183/1000000",
              "-33920628661/500000000000"
            ],
            [
              "176979/1000000",
              "-45646570763/500000000000"
            ],
            [
              "94183/1000000",
              "-15650032083/500000000000"
            ],
            [
              "176979/1000000",
              "-44407028589/500000000000"
            ],
            [
              "38263/1000000",
              "-33920628661/500000000000"
            ],
            [
              "121059/1000000",
              "-45646570763/500000000000"
            ],
            [
              "38263/1000000",
              "-15650032083/500000000000"
            ],
            [
              "121059/1000000",
              "-44407028589/500000000000"
            ]
          ]
        }
      }
    }
  ],
  "terminal": {
    "kind": "box",
    "stage": 0,
    "contradiction": {
      "factor": 96,
      "target": "f",
      "old": [
        "108013/1000000",
        "279/1000"
      ],
      "lines": [
        [
          "94183/1000000",
          "-33920628661/500000000000"
        ],
        [
          "176979/1000000",
          "-45646570763/500000000000"
        ],
        [
          "94183/1000000",
          "-15650032083/500000000000"
        ],
        [
          "176979/1000000",
          "-44407028589/500000000000"
        ],
        [
          "38263/1000000",
          "-33920628661/500000000000"
        ],
        [
          "121059/1000000",
          "-45646570763/500000000000"
        ],
        [
          "38263/1000000",
          "-15650032083/500000000000"
        ],
        [
          "121059/1000000",
          "-44407028589/500000000000"
        ]
      ]
    }
  }
}
```
