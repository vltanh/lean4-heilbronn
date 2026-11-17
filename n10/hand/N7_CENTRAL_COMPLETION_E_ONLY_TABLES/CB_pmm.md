# CB_+--

```n7-central-e-only-packet
{
  "id": "CB_+--",
  "cell": "CB",
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
        "L_BDP": {
          "triangle": "BDP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BDP",
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
        "U_ADF": {
          "triangle": "ADF",
          "side": "hi",
          "value": "439/500",
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
              "15627/50000",
              "384249/1000000",
              "472077/1000000",
              "715343/1000000",
              "806291/1000000",
              "439/500"
            ],
            "cell": "CB"
          }
        },
        "U_ADH": {
          "triangle": "ADH",
          "side": "hi",
          "value": "439/500",
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
              "491/1000",
              "439/500"
            ],
            "cell": "CB"
          }
        },
        "U_ADO": {
          "triangle": "ADO",
          "side": "hi",
          "value": "157/200",
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
              "-29033/50000",
              "-984701/1742500",
              "-514789/1000000",
              "-35104739/69700000",
              "-65871/1000000",
              "-4283301/69700000",
              "0",
              "10217/50000",
              "766323/3485000",
              "270211/1000000",
              "19609761/69700000",
              "719129/1000000",
              "50431199/69700000",
              "157/200"
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
        "U_AOP": {
          "triangle": "AOP",
          "side": "hi",
          "value": "138631/200000",
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
              "-138631/200000",
              "-85091017/139400000",
              "-362809253/697000000",
              "-305135303/697000000",
              "-44498433/174250000",
              "-60159891/348500000",
              "-1153479/13940000",
              "0",
              "1153479/13940000",
              "60159891/348500000",
              "44498433/174250000",
              "305135303/697000000",
              "362809253/697000000",
              "85091017/139400000",
              "138631/200000"
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
        "U_BDF": {
          "triangle": "BDF",
          "side": "hi",
          "value": "877/1000",
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
              "11563/15625",
              "38351/50000",
              "41549/50000",
              "53623/62500",
              "877/1000"
            ],
            "cell": "CB"
          }
        },
        "U_BDO": {
          "triangle": "BDO",
          "side": "hi",
          "value": "140766247/174250000",
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
              "-214403/500000",
              "-168929/500000",
              "7137/500000",
              "3803533/34850000",
              "83218823/697000000",
              "146609579/697000000",
              "228127/1000000",
              "259639/1000000",
              "580259/1000000",
              "94112441/139400000",
              "702719/1000000",
              "135275281/174250000",
              "22236673/27880000",
              "140766247/174250000"
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
        "U_DGO": {
          "triangle": "DGO",
          "side": "hi",
          "value": "14984749/21781250",
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
              "-40716509/69700000",
              "-400016927/697000000",
              "-519481/1000000",
              "-111121/250000",
              "-46962883/139400000",
              "-34329533/139400000",
              "-38367/200000",
              "-58419/500000",
              "-76401/1000000",
              "-187059/17425000",
              "-351/250000",
              "-334197/697000000",
              "70301/69700000",
              "693/12500",
              "2907243/27880000",
              "39914619/348500000",
              "130437/1000000",
              "42241/250000",
              "85437/500000",
              "32973663/139400000",
              "243961/1000000",
              "245871/1000000",
              "45607013/139400000",
              "20019287/34850000",
              "153011/250000",
              "94472761/139400000",
              "687041/1000000",
              "14984749/21781250"
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
        "1": {
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
        "6": {
          "row": [
            "fan",
            "ADO",
            "ADG",
            "DGO",
            "AGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ADO",
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
        "14": {
          "row": [
            "fan",
            "BDF",
            "BDP",
            "DFP",
            "BFP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BDF",
            "point": "P"
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
        "22": {
          "row": [
            "fan",
            "BHP",
            "BGH",
            "BGP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HBP",
            "point": "G"
          }
        },
        "23": {
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
        "366": {
          "row": [
            "plu",
            "ADP",
            "DGO",
            "ADG",
            "DOP",
            "ADO",
            "DGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "DAGOP"
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
        "2100": {
          "row": [
            "balance",
            [
              [
                1,
                "ABF",
                "DGP"
              ],
              [
                -1,
                "ADG",
                "BFP"
              ],
              [
                1,
                "ADP",
                "BFG"
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
            "outer": "ADG",
            "point": "P",
            "line": "BF"
          }
        },
        "2253": {
          "row": [
            "balance",
            [
              [
                1,
                "ABG",
                "CDF"
              ],
              [
                -1,
                "ACG",
                "BDF"
              ],
              [
                1,
                "ADG",
                "BCF"
              ],
              [
                1,
                "AFG",
                "BCD"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCD",
            "point": "F",
            "line": "AG"
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
              "CFG": "387637/500000"
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
        "3369": {
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
        "3573": {
          "row": [
            "linear",
            {
              "ABF": "-93/1000",
              "BDF": "173/250",
              "BFP": "-439/500"
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
              "value": "439/500"
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
            "residual": "413/1000"
          }
        },
        "3597": {
          "row": [
            "linear",
            {
              "ADE": "-93/1000",
              "DEF": "-93/1000",
              "DEP": "439/500"
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
              "value": "439/500"
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
            "residual": "413/1000"
          }
        },
        "4020": {
          "row": [
            "linear",
            {
              "DOP": "-93/1000",
              "ADP": "101431/200000",
              "DGP": "-138631/200000"
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
              "value": "138631/200000"
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
            "residual": "82831/200000"
          }
        },
        "4163": {
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
        "4526": {
          "row": [
            "linear",
            {
              "BDP": "691/1000",
              "DEP": "-93/1000",
              "DFP": "-93/1000",
              "DGP": "-877/1000"
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
              "value": "877/1000"
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
            "residual": "299/500"
          }
        },
        "5071": {
          "row": [
            "linear",
            {
              "CEF": "233063/500000",
              "CFO": "-419063/500000"
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
        "5077": {
          "row": [
            "linear",
            {
              "CEO": "233063/500000",
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
        "5081": {
          "row": [
            "linear",
            {
              "CDE": "-93/1000",
              "DEF": "-279/1000",
              "DEO": "419063/500000"
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
        "5445": {
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
        "5603": {
          "row": [
            "linear",
            {
              "ADG": "21866873/43562500",
              "AGO": "-93/1000",
              "AGP": "-14984749/21781250"
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
              "value": "14984749/21781250"
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
            "residual": "35631121/87125000"
          }
        },
        "5694": {
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
          "relation": 6,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "599/1000",
          "sources": [
            "U_ADO",
            "L_ADG",
            "L_AGO"
          ]
        },
        {
          "id": "T0020",
          "relation": 7,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "599/1000",
          "sources": [
            "U_ADO",
            "L_ADP",
            "L_DOP"
          ]
        },
        {
          "id": "T0035",
          "relation": 14,
          "rule": "sub",
          "triangle": "BFP",
          "side": "hi",
          "value": "691/1000",
          "sources": [
            "U_BDF",
            "L_BDP",
            "L_DFP"
          ]
        },
        {
          "id": "T0075",
          "relation": 109,
          "rule": "sumlo",
          "triangle": "ADG",
          "side": "lo",
          "value": "12201/100000",
          "sources": [
            "L_ADO",
            "L_AGP",
            "L_ADP",
            "L_AGO",
            "T0020"
          ]
        },
        {
          "id": "T0077",
          "relation": 117,
          "rule": "sumlo",
          "triangle": "ABD",
          "side": "lo",
          "value": "96163/1000000",
          "sources": [
            "L_ABC",
            "L_BDF",
            "L_ABF",
            "L_BCD",
            "U_BCF"
          ]
        },
        {
          "id": "T0098",
          "relation": 331,
          "rule": "sumlo",
          "triangle": "ACD",
          "side": "lo",
          "value": "112973/1000000",
          "sources": [
            "T0077",
            "L_CDO",
            "L_ADO",
            "L_BCD",
            "U_BDO"
          ]
        },
        {
          "id": "T0104",
          "relation": 366,
          "rule": "sumlo",
          "triangle": "ADP",
          "side": "lo",
          "value": "63257/500000",
          "sources": [
            "T0075",
            "L_DOP",
            "L_ADO",
            "L_DGP",
            "T0016"
          ]
        },
        {
          "id": "T0109",
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
          "id": "T0111",
          "relation": 460,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "51529/500000",
          "sources": [
            "L_ABF",
            "L_DFG",
            "L_ADF",
            "L_BFG",
            "U_BDF"
          ]
        },
        {
          "id": "T0113",
          "relation": 478,
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
          "id": "T0134",
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
          "id": "T0137",
          "relation": 1659,
          "rule": "balance_lo",
          "triangle": "BGP",
          "side": "lo",
          "value": "3737/40000",
          "sources": [
            "T0077",
            "L_FGP",
            "L_ABF",
            "L_DGP",
            "L_AGP",
            "L_BDF",
            "U_ADF"
          ]
        },
        {
          "id": "T0142",
          "relation": 2100,
          "rule": "balance_lo",
          "triangle": "ADG",
          "side": "lo",
          "value": "15349/125000",
          "sources": [
            "L_ABF",
            "L_DGP",
            "T0104",
            "L_BFG",
            "L_AGP",
            "L_BDF",
            "T0035"
          ]
        },
        {
          "id": "T0160",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "20143/200000",
          "sources": [
            "T0098",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0142",
            "T0113",
            "U_ADH"
          ]
        },
        {
          "id": "T0190",
          "relation": 4020,
          "rule": "linear",
          "triangle": "ADP",
          "side": "lo",
          "value": "144161/1000000",
          "sources": [
            "L_DGP",
            "L_DOP"
          ]
        },
        {
          "id": "T0202",
          "relation": 4526,
          "rule": "linear",
          "triangle": "BDP",
          "side": "lo",
          "value": "71533/500000",
          "sources": [
            "L_DEP",
            "L_DFP",
            "L_DGP"
          ]
        },
        {
          "id": "T0219",
          "relation": 5445,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "134811/1000000",
          "sources": [
            "T0109",
            "L_FOP"
          ]
        },
        {
          "id": "T0225",
          "relation": 5603,
          "rule": "linear",
          "triangle": "ADG",
          "side": "lo",
          "value": "14469/100000",
          "sources": [
            "L_AGO",
            "L_AGP"
          ]
        },
        {
          "id": "T0227",
          "relation": 5694,
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
          "id": "T0230",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "296773/1000000",
          "sources": [
            "L_ACG",
            "T0160",
            "T0111"
          ]
        },
        {
          "id": "T0255",
          "relation": 21,
          "rule": "sum",
          "triangle": "BFP",
          "side": "lo",
          "value": "11177/40000",
          "sources": [
            "L_BFG",
            "T0137",
            "L_FGP"
          ]
        },
        {
          "id": "T0256",
          "relation": 22,
          "rule": "sum",
          "triangle": "BHP",
          "side": "lo",
          "value": "11177/40000",
          "sources": [
            "L_BGH",
            "T0137",
            "L_GHP"
          ]
        },
        {
          "id": "T0257",
          "relation": 23,
          "rule": "sum",
          "triangle": "CDF",
          "side": "lo",
          "value": "322861/1000000",
          "sources": [
            "L_CDP",
            "L_DFP",
            "T0227"
          ]
        },
        {
          "id": "T0263",
          "relation": 26,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "121653/200000",
          "sources": [
            "U_CEF",
            "L_CEP",
            "T0227"
          ]
        },
        {
          "id": "T0271",
          "relation": 34,
          "rule": "sum",
          "triangle": "EFP",
          "side": "lo",
          "value": "28117/100000",
          "sources": [
            "T0109",
            "L_FOP",
            "L_EOP"
          ]
        },
        {
          "id": "T0282",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "55921/500000",
          "sources": [
            "T0230",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0283",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "32669/250000",
          "sources": [
            "T0230",
            "L_FHO",
            "L_AFH",
            "T0219",
            "T0134"
          ]
        },
        {
          "id": "T0286",
          "relation": 528,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "149651/1000000",
          "sources": [
            "L_BEF",
            "L_FOP",
            "T0255",
            "T0109",
            "T0263"
          ]
        },
        {
          "id": "T0291",
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
            "T0134"
          ]
        },
        {
          "id": "T0300",
          "relation": 2886,
          "rule": "balance_lo",
          "triangle": "CHO",
          "side": "lo",
          "value": "33903/200000",
          "sources": [
            "L_CEH",
            "L_FOP",
            "L_CEO",
            "L_FHP",
            "T0227",
            "L_EHO",
            "T0263"
          ]
        },
        {
          "id": "T0301",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "20757/200000",
          "sources": [
            "T0098",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0225",
            "T0282",
            "U_ADH"
          ]
        },
        {
          "id": "T0314",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "299843/1000000",
          "sources": [
            "L_ACG",
            "T0301",
            "T0111"
          ]
        },
        {
          "id": "T0317",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "57957/200000",
          "sources": [
            "L_BCG",
            "T0301",
            "L_BFG"
          ]
        },
        {
          "id": "T0331",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "13271/125000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0225",
            "T0283",
            "U_ADO"
          ]
        },
        {
          "id": "T0335",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "112189/1000000",
          "sources": [
            "T0314",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0336",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "65803/500000",
          "sources": [
            "T0314",
            "L_FHO",
            "L_AFH",
            "T0219",
            "T0134"
          ]
        },
        {
          "id": "T0340",
          "relation": 2253,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "18661/200000",
          "sources": [
            "L_ABG",
            "T0257",
            "T0225",
            "T0317",
            "T0331",
            "L_BCD",
            "U_BDF"
          ]
        },
        {
          "id": "T0344",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "103843/1000000",
          "sources": [
            "T0098",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0225",
            "T0335",
            "U_ADH"
          ]
        },
        {
          "id": "T0351",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "75829/250000",
          "sources": [
            "T0340",
            "T0344",
            "T0331"
          ]
        },
        {
          "id": "T0356",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "289843/1000000",
          "sources": [
            "L_BCG",
            "T0344",
            "L_BFG"
          ]
        },
        {
          "id": "T0362",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "5317/50000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0225",
            "T0336",
            "U_ADO"
          ]
        },
        {
          "id": "T0364",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "56291/500000",
          "sources": [
            "T0351",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0365",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "132657/1000000",
          "sources": [
            "T0351",
            "L_FHO",
            "L_AFH",
            "T0219",
            "T0134"
          ]
        },
        {
          "id": "T0370",
          "relation": 2253,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "93333/1000000",
          "sources": [
            "L_ABG",
            "T0257",
            "T0225",
            "T0356",
            "T0362",
            "L_BCD",
            "U_BDF"
          ]
        },
        {
          "id": "T0374",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "103907/1000000",
          "sources": [
            "T0098",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0225",
            "T0364",
            "U_ADH"
          ]
        },
        {
          "id": "T0380",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "15179/50000",
          "sources": [
            "T0370",
            "T0374",
            "T0362"
          ]
        },
        {
          "id": "T0385",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "289907/1000000",
          "sources": [
            "L_BCG",
            "T0374",
            "L_BFG"
          ]
        },
        {
          "id": "T0390",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "53267/500000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0225",
            "T0365",
            "U_ADO"
          ]
        },
        {
          "id": "T0392",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "28153/250000",
          "sources": [
            "T0380",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0393",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "132737/1000000",
          "sources": [
            "T0380",
            "L_FHO",
            "L_AFH",
            "T0219",
            "T0134"
          ]
        },
        {
          "id": "T0398",
          "relation": 2253,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "23341/250000",
          "sources": [
            "L_ABG",
            "T0257",
            "T0225",
            "T0385",
            "T0390",
            "L_BCD",
            "U_BDF"
          ]
        },
        {
          "id": "T0402",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "12989/125000",
          "sources": [
            "T0098",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0225",
            "T0392",
            "U_ADH"
          ]
        },
        {
          "id": "T0406",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "30381/100000",
          "sources": [
            "T0398",
            "T0402",
            "T0390"
          ]
        },
        {
          "id": "T0411",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "36239/125000",
          "sources": [
            "L_BCG",
            "T0402",
            "L_BFG"
          ]
        },
        {
          "id": "T0416",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "26637/250000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0225",
            "T0393",
            "U_ADO"
          ]
        },
        {
          "id": "T0418",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "56319/500000",
          "sources": [
            "T0406",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0419",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "132807/1000000",
          "sources": [
            "T0406",
            "L_FHO",
            "L_AFH",
            "T0219",
            "T0134"
          ]
        },
        {
          "id": "T0424",
          "relation": 2253,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "46683/500000",
          "sources": [
            "L_ABG",
            "T0257",
            "T0225",
            "T0411",
            "T0416",
            "L_BCD",
            "U_BDF"
          ]
        },
        {
          "id": "T0426",
          "relation": 2262,
          "rule": "balance_lo",
          "triangle": "BOP",
          "side": "lo",
          "value": "132741/1000000",
          "sources": [
            "L_BCD",
            "L_FOP",
            "T0411",
            "L_DOP",
            "L_BDF",
            "L_COP",
            "U_CDF"
          ]
        },
        {
          "id": "T0428",
          "relation": 2911,
          "rule": "balance_lo",
          "triangle": "CFG",
          "side": "lo",
          "value": "103917/1000000",
          "sources": [
            "T0098",
            "L_FGH",
            "L_ADF",
            "L_CGH",
            "T0225",
            "T0418",
            "U_ADH"
          ]
        },
        {
          "id": "T0429",
          "relation": 2921,
          "rule": "balance_lo",
          "triangle": "CGO",
          "side": "lo",
          "value": "23237/200000",
          "sources": [
            "T0098",
            "L_FGO",
            "T0225",
            "T0219",
            "L_ADO",
            "T0428",
            "U_ADF"
          ]
        },
        {
          "id": "T0431",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "303831/1000000",
          "sources": [
            "T0424",
            "T0428",
            "T0416"
          ]
        },
        {
          "id": "T0436",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "289917/1000000",
          "sources": [
            "L_BCG",
            "T0428",
            "L_BFG"
          ]
        },
        {
          "id": "T0438",
          "relation": 16,
          "rule": "sum",
          "triangle": "BDO",
          "side": "lo",
          "value": "368807/1000000",
          "sources": [
            "T0202",
            "L_DOP",
            "T0426"
          ]
        },
        {
          "id": "T0441",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "106561/1000000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0225",
            "T0419",
            "U_ADO"
          ]
        },
        {
          "id": "T0442",
          "relation": 166,
          "rule": "sumlo",
          "triangle": "BCO",
          "side": "lo",
          "value": "137789/1000000",
          "sources": [
            "L_BCD",
            "T0286",
            "T0436",
            "T0438",
            "U_BDF"
          ]
        },
        {
          "id": "T0443",
          "relation": 478,
          "rule": "sumlo",
          "triangle": "CFH",
          "side": "lo",
          "value": "352/3125",
          "sources": [
            "T0431",
            "L_EFH",
            "L_AFH",
            "L_CEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0445",
          "relation": 539,
          "rule": "sumlo",
          "triangle": "EFG",
          "side": "lo",
          "value": "7539/31250",
          "sources": [
            "L_CEF",
            "L_FGH",
            "T0428",
            "L_EFH",
            "T0134"
          ]
        },
        {
          "id": "T0447",
          "relation": 2253,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "11671/125000",
          "sources": [
            "L_ABG",
            "T0257",
            "T0225",
            "T0436",
            "T0441",
            "L_BCD",
            "U_BDF"
          ]
        },
        {
          "id": "T0450",
          "relation": 2837,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "49849/500000",
          "sources": [
            "L_CEH",
            "L_FOP",
            "T0443",
            "L_EOP",
            "L_COP",
            "L_EFH",
            "U_CEF"
          ]
        },
        {
          "id": "T0452",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "151923/500000",
          "sources": [
            "T0447",
            "T0428",
            "T0441"
          ]
        },
        {
          "id": "T0453",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "34921/125000",
          "sources": [
            "T0447",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0455",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "302553/1000000",
          "sources": [
            "T0447",
            "T0429",
            "L_AGO"
          ]
        },
        {
          "id": "T0459",
          "relation": 35,
          "rule": "sum",
          "triangle": "EHP",
          "side": "lo",
          "value": "142849/500000",
          "sources": [
            "L_EHO",
            "T0450",
            "L_EOP"
          ]
        },
        {
          "id": "T0462",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "66409/500000",
          "sources": [
            "T0452",
            "L_FHO",
            "L_AFH",
            "T0219",
            "T0134"
          ]
        },
        {
          "id": "T0463",
          "relation": 660,
          "rule": "sumlo",
          "triangle": "AHO",
          "side": "lo",
          "value": "67957/500000",
          "sources": [
            "T0453",
            "L_FHO",
            "L_AFH",
            "T0300",
            "T0134"
          ]
        },
        {
          "id": "T0468",
          "relation": 102,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "106563/1000000",
          "sources": [
            "L_ADF",
            "L_AGO",
            "T0225",
            "T0462",
            "U_ADO"
          ]
        },
        {
          "id": "T0470",
          "relation": 8,
          "rule": "sum",
          "triangle": "AFP",
          "side": "lo",
          "value": "292563/1000000",
          "sources": [
            "T0468",
            "L_AGP",
            "L_FGP"
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
              "23711/31250"
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
            "reference": "T0445",
            "value": "7539/31250"
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
              "-137789/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0442",
            "value": "137789/1000000"
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
            "reference": "T0109",
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
              "-67957/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "T0463",
            "value": "67957/500000"
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
            "reference": "T0271",
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
              "-142849/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EHP",
            "side": "lo",
            "reference": "T0459",
            "value": "142849/500000"
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
              "-302553/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "T0455",
            "value": "302553/1000000"
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
              "-14469/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADG",
            "side": "lo",
            "reference": "T0225",
            "value": "14469/100000"
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
            "reference": "T0291",
            "value": "118971/500000"
          }
        },
        "176": {
          "name": "AREA_LO_BHP",
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
                7,
                11
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-1"
            ],
            [
              [],
              "-11177/40000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BHP",
            "side": "lo",
            "reference": "T0256",
            "value": "11177/40000"
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
              "-149651/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0286",
            "value": "149651/1000000"
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
              "-134811/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0219",
            "value": "134811/1000000"
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
              "-144161/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADP",
            "side": "lo",
            "reference": "T0190",
            "value": "144161/1000000"
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
              "-292563/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFP",
            "side": "lo",
            "reference": "T0470",
            "value": "292563/1000000"
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
              "-11177/40000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFP",
            "side": "lo",
            "reference": "T0255",
            "value": "11177/40000"
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
            "reference": "T0134"
          }
        },
        "1672": {
          "name": "LINEAR_3365",
          "terms": [
            [
              [
                2
              ],
              "294637/500000"
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
              "387637/500000"
            ],
            [
              [
                2,
                8
              ],
              "-387637/500000"
            ],
            [
              [
                6
              ],
              "-387637/500000"
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
              "173/250"
            ],
            [
              [
                3,
                5
              ],
              "-173/250"
            ],
            [
              [
                1,
                3
              ],
              "173/250"
            ],
            [
              [
                5,
                12
              ],
              "439/500"
            ],
            [
              [
                1,
                12
              ],
              "-439/500"
            ],
            [
              [
                11
              ],
              "-439/500"
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
              "173/250"
            ],
            [
              [
                3
              ],
              "-173/250"
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
              "-439/500"
            ],
            [
              [
                3,
                11
              ],
              "439/500"
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
            "index": 4163
          }
        },
        "3378": {
          "name": "LINEAR_5071",
          "terms": [
            [
              [],
              "233063/500000"
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
                10
              ],
              "419063/500000"
            ],
            [
              [
                2,
                10
              ],
              "-419063/500000"
            ],
            [
              [
                9
              ],
              "-419063/500000"
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
              "233063/500000"
            ],
            [
              [
                2,
                10
              ],
              "-372563/500000"
            ],
            [
              [
                4,
                9
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
              "233063/500000"
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
              "-233063/500000"
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
              "-419063/500000"
            ],
            [
              [
                3,
                9
              ],
              "419063/500000"
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
        }
      },
      "coordinate": {
        "low": [
          "61307/500000",
          "123/1000",
          "270723/500000",
          "61307/500000",
          "690641/1000000",
          "123/1000",
          "27/125",
          "908731/1000000",
          "133529/500000",
          "59337/200000",
          "407609/500000",
          "117217/250000",
          "266529/1000000"
        ],
        "high": [
          "189327/500000",
          "279/1000",
          "220359/250000",
          "431727/1000000",
          "902527/1000000",
          "279/1000",
          "549967/1000000",
          "990723/1000000",
          "606291/1000000",
          "694613/1000000",
          "872179/1000000",
          "204427/250000",
          "110149/200000"
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
            "factor": 20,
            "target": "a",
            "old": [
              "1912/15625",
              "666667/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "18259/62500"
              ],
              [
                "-877/1000",
                "44087/200000"
              ],
              [
                "-721/1000",
                "34139/125000"
              ],
              [
                "-721/1000",
                "22091/200000"
              ]
            ],
            "raw": [
              "1912/15625",
              "4877/12875"
            ],
            "new": [
              "1912/15625",
              "378797/1000000"
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
            "factor": 76,
            "target": "d",
            "old": [
              "1912/15625",
              "352193/500000"
            ],
            "lines": [
              [
                "-877/1000",
                "22089/100000"
              ],
              [
                "-877/1000",
                "516439/1000000"
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
              "1912/15625",
              "516439/877000"
            ],
            "new": [
              "1912/15625",
              "588871/1000000"
            ]
          },
          {
            "factor": 76,
            "target": "g",
            "old": [
              "123/1000",
              "137/200"
            ],
            "lines": [
              [
                "-27977/62500",
                "21079/125000"
              ],
              [
                "18871/1000000",
                "-297871/1000000"
              ],
              [
                "-98079/125000",
                "15801/31250"
              ],
              [
                "-318129/1000000",
                "39129/1000000"
              ]
            ],
            "raw": [
              "123/1000",
              "21068/32693"
            ],
            "new": [
              "123/1000",
              "32221/50000"
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
                "79469/125000"
              ],
              [
                "-721/1000",
                "34177/62500"
              ],
              [
                "-721/1000",
                "24713/50000"
              ],
              [
                "-877/1000",
                "2057707/5000000"
              ],
              [
                "-877/1000",
                "29362997/50000000"
              ],
              [
                "-721/1000",
                "1613107/5000000"
              ],
              [
                "-721/1000",
                "22288397/50000000"
              ]
            ],
            "raw": [
              "67/500",
              "68354/90125"
            ],
            "new": [
              "67/500",
              "189609/250000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "67/500",
              "189609/250000"
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
                "-7819823/50000000"
              ],
              [
                "-440737/500000",
                "26157051/500000000"
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
                "-9821/50000"
              ],
              [
                "-440737/500000",
                "72027/500000"
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
                "-137789/1000000"
              ],
              [
                "131/500",
                "-137789/1000000"
              ],
              [
                "379237/500000",
                "-137789/1000000"
              ],
              [
                "301237/500000",
                "-137789/1000000"
              ]
            ],
            "raw": [
              "137789/758474",
              "907/1000"
            ],
            "new": [
              "90833/500000",
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
                "18871/1000000",
                "-111871/1000000"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ],
              [
                "-318129/1000000",
                "225129/1000000"
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
                "-67957/500000"
              ],
              [
                "234203/1000000",
                "-67957/500000"
              ],
              [
                "13713/15625",
                "-67957/500000"
              ],
              [
                "621203/1000000",
                "-67957/500000"
              ]
            ],
            "raw": [
              "67957/438816",
              "440737/500000"
            ],
            "new": [
              "9679/62500",
              "440737/500000"
            ]
          },
          {
            "factor": 102,
            "target": "x",
            "old": [
              "9679/62500",
              "440737/500000"
            ],
            "lines": [
              [
                "-57/100",
                "56377347/500000000"
              ],
              [
                "-57/100",
                "61243081079/250000000000"
              ],
              [
                "-907/1000",
                "147535847/500000000"
              ],
              [
                "-907/1000",
                "135507265579/250000000000"
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
              "9679/62500",
              "7819/10000"
            ],
            "new": [
              "9679/62500",
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
                "18871/1000000",
                "-111871/1000000"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ],
              [
                "-318129/1000000",
                "225129/1000000"
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
                "234203/1000000",
                "-279/1000"
              ],
              [
                "13713/15625",
                "-279/1000"
              ],
              [
                "621203/1000000",
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
                "3136323/10000000"
              ],
              [
                "-1/1",
                "2103823/5000000"
              ],
              [
                "-1/1",
                "115521/200000"
              ],
              [
                "-1/1",
                "6847373/10000000"
              ],
              [
                "-1/1",
                "144699309/500000000"
              ],
              [
                "-1/1",
                "146613839/250000000"
              ],
              [
                "-1/1",
                "16763409/50000000"
              ],
              [
                "-1/1",
                "316162459/500000000"
              ]
            ],
            "raw": [
              "61307/500000",
              "6847373/10000000"
            ],
            "new": [
              "61307/500000",
              "342369/500000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "90833/500000",
              "907/1000"
            ],
            "lines": [
              [
                "877/1000",
                "-1547450617/3906250000"
              ],
              [
                "877/1000",
                "-51376501193/125000000000"
              ],
              [
                "17779/50000",
                "-1298211857/3906250000"
              ],
              [
                "17779/50000",
                "-25990723181/250000000000"
              ],
              [
                "877/1000",
                "-14389681687/15625000000"
              ],
              [
                "877/1000",
                "-23395106989/25000000000"
              ],
              [
                "17779/50000",
                "-13392726647/15625000000"
              ],
              [
                "17779/50000",
                "-31437758137/50000000000"
              ],
              [
                "877/1000",
                "-243033547/625000000"
              ],
              [
                "877/1000",
                "-6962325019/10000000000"
              ],
              [
                "17779/50000",
                "-1015776727/3125000000"
              ],
              [
                "17779/50000",
                "-9729584627/25000000000"
              ],
              [
                "877/1000",
                "-1310710447/2500000000"
              ],
              [
                "877/1000",
                "-1663326011/2000000000"
              ],
              [
                "17779/50000",
                "-5755988203/12500000000"
              ],
              [
                "17779/50000",
                "-13115347217/25000000000"
              ]
            ],
            "raw": [
              "25990723181/88895000000",
              "907/1000"
            ],
            "new": [
              "2339/8000",
              "907/1000"
            ]
          },
          {
            "factor": 134,
            "target": "z",
            "old": [
              "67/500",
              "188739/250000"
            ],
            "lines": [
              [
                "3179/10000",
                "-329827613/2500000000"
              ],
              [
                "3179/10000",
                "-1819090573/10000000000"
              ],
              [
                "3179/10000",
                "-3301482863/25000000000"
              ],
              [
                "3179/10000",
                "-151031617/3125000000"
              ],
              [
                "440737/500000",
                "-12555904277/62500000000"
              ],
              [
                "440737/500000",
                "-197694598889/500000000000"
              ],
              [
                "440737/500000",
                "-25127842219/125000000000"
              ],
              [
                "440737/500000",
                "-130905128959/500000000000"
              ],
              [
                "3179/10000",
                "-502680743/2500000000"
              ],
              [
                "3179/10000",
                "-2510503093/10000000000"
              ],
              [
                "3179/10000",
                "-2471516313/5000000000"
              ],
              [
                "3179/10000",
                "-5132175819/12500000000"
              ],
              [
                "440737/500000",
                "-16877232527/62500000000"
              ],
              [
                "440737/500000",
                "-232265224889/500000000000"
              ],
              [
                "440737/500000",
                "-70408335729/125000000000"
              ],
              [
                "440737/500000",
                "-312027102999/500000000000"
              ]
            ],
            "raw": [
              "13730147/90312500",
              "188739/250000"
            ],
            "new": [
              "152029/1000000",
              "188739/250000"
            ]
          },
          {
            "factor": 142,
            "target": "x",
            "old": [
              "9679/62500",
              "7819/10000"
            ],
            "lines": [
              [
                "438693/500000",
                "-677669181/2000000000"
              ],
              [
                "438693/500000",
                "-730634613/2000000000"
              ],
              [
                "438693/500000",
                "-109522089/500000000"
              ],
              [
                "438693/500000",
                "-170704197/500000000"
              ],
              [
                "438693/500000",
                "-2950534569/4000000000"
              ],
              [
                "438693/500000",
                "-3056465433/4000000000"
              ],
              [
                "438693/500000",
                "-3393207/12500000"
              ],
              [
                "438693/500000",
                "-49227597/125000000"
              ],
              [
                "157631/500000",
                "-539386677/2000000000"
              ],
              [
                "157631/500000",
                "-416969421/2000000000"
              ],
              [
                "157631/500000",
                "-74951463/500000000"
              ],
              [
                "157631/500000",
                "-92287899/500000000"
              ],
              [
                "157631/500000",
                "-2673969561/4000000000"
              ],
              [
                "157631/500000",
                "-2429135049/4000000000"
              ],
              [
                "157631/500000",
                "-50578827/250000000"
              ],
              [
                "157631/500000",
                "-11849409/50000000"
              ]
            ],
            "raw": [
              "36507363/146231000",
              "7819/10000"
            ],
            "new": [
              "49931/200000",
              "7819/10000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "2339/8000",
              "907/1000"
            ],
            "lines": [
              [
                "541/1000",
                "-1056888453/3125000000"
              ],
              [
                "541/1000",
                "-82582722393/200000000000"
              ],
              [
                "440737/500000",
                "-5935428553/15625000000"
              ],
              [
                "440737/500000",
                "-541884141743/1000000000000"
              ],
              [
                "541/1000",
                "-170671593/625000000"
              ],
              [
                "541/1000",
                "-2113008027/10000000000"
              ],
              [
                "440737/500000",
                "-4917776113/15625000000"
              ],
              [
                "440737/500000",
                "-170135666239/500000000000"
              ]
            ],
            "raw": [
              "4917776113/13773031250",
              "907/1000"
            ],
            "new": [
              "178529/500000",
              "907/1000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "178529/500000",
              "907/1000"
            ],
            "lines": [
              [
                "3179/10000",
                "-31796220233/100000000000"
              ],
              [
                "3179/10000",
                "-67092439887/200000000000"
              ],
              [
                "3179/10000",
                "-1590465673/5000000000"
              ],
              [
                "3179/10000",
                "-995550393/5000000000"
              ],
              [
                "440737/500000",
                "-193462812781/500000000000"
              ],
              [
                "440737/500000",
                "-548942339913/1000000000000"
              ],
              [
                "440737/500000",
                "-48382069729/125000000000"
              ],
              [
                "440737/500000",
                "-206295109539/500000000000"
              ],
              [
                "3179/10000",
                "-9165985391/20000000000"
              ],
              [
                "3179/10000",
                "-95159853331/200000000000"
              ],
              [
                "3179/10000",
                "-3788089451/5000000000"
              ],
              [
                "3179/10000",
                "-3193174171/5000000000"
              ],
              [
                "440737/500000",
                "-263631346391/500000000000"
              ],
              [
                "440737/500000",
                "-689279407133/1000000000000"
              ],
              [
                "440737/500000",
                "-103322664179/125000000000"
              ],
              [
                "440737/500000",
                "-426057487339/500000000000"
              ]
            ],
            "raw": [
              "193462812781/440737000000",
              "907/1000"
            ],
            "new": [
              "54869/125000",
              "907/1000"
            ]
          },
          {
            "factor": 162,
            "target": "z",
            "old": [
              "152029/1000000",
              "188739/250000"
            ],
            "lines": [
              [
                "1/1",
                "-133529/500000"
              ],
              [
                "1/1",
                "-491946233/1000000000"
              ],
              [
                "1/1",
                "-324437869/1000000000"
              ],
              [
                "1/1",
                "-274663051/500000000"
              ],
              [
                "1/1",
                "-17911951191/50000000000"
              ],
              [
                "1/1",
                "-28384093163/50000000000"
              ],
              [
                "1/1",
                "-16471572177/25000000000"
              ]
            ],
            "raw": [
              "133529/500000",
              "188739/250000"
            ],
            "new": [
              "133529/500000",
              "188739/250000"
            ]
          },
          {
            "factor": 172,
            "target": "z",
            "old": [
              "133529/500000",
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
                "17367397/50000000"
              ],
              [
                "-1/1",
                "14112937/25000000"
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
                "2424787/5000000"
              ],
              [
                "-1/1",
                "35106347/50000000"
              ]
            ],
            "raw": [
              "133529/500000",
              "750619/1000000"
            ],
            "new": [
              "133529/500000",
              "750619/1000000"
            ]
          },
          {
            "factor": 176,
            "target": "u",
            "old": [
              "3179/10000",
              "440737/500000"
            ],
            "lines": [
              [
                "613/1000",
                "-169871239/500000000"
              ],
              [
                "613/1000",
                "-208121347/500000000"
              ],
              [
                "1/1",
                "-193671739/500000000"
              ],
              [
                "1/1",
                "-262107847/500000000"
              ],
              [
                "613/1000",
                "-135300613/500000000"
              ],
              [
                "613/1000",
                "-129705049/500000000"
              ],
              [
                "1/1",
                "-159101113/500000000"
              ],
              [
                "1/1",
                "-183691549/500000000"
              ]
            ],
            "raw": [
              "159101113/500000000",
              "440737/500000"
            ],
            "new": [
              "159101/500000",
              "440737/500000"
            ]
          },
          {
            "factor": 184,
            "target": "x",
            "old": [
              "49931/200000",
              "7819/10000"
            ],
            "lines": [
              [
                "1/1",
                "-272651/1000000"
              ],
              [
                "1/1",
                "-45021811/125000000"
              ],
              [
                "1/1",
                "-42640939/125000000"
              ],
              [
                "1/1",
                "-428651/1000000"
              ],
              [
                "1/1",
                "-287159/1000000"
              ],
              [
                "1/1",
                "-414143/1000000"
              ]
            ],
            "raw": [
              "272651/1000000",
              "7819/10000"
            ],
            "new": [
              "272651/1000000",
              "7819/10000"
            ]
          },
          {
            "factor": 186,
            "target": "x",
            "old": [
              "272651/1000000",
              "7819/10000"
            ],
            "lines": [
              [
                "1/1",
                "-61541133/125000000"
              ],
              [
                "1/1",
                "-42709457547/62500000000"
              ],
              [
                "1/1",
                "-70100697/125000000"
              ],
              [
                "1/1",
                "-46989239547/62500000000"
              ],
              [
                "1/1",
                "-59337/200000"
              ],
              [
                "1/1",
                "-164174541/500000000"
              ],
              [
                "1/1",
                "-438177/1000000"
              ],
              [
                "1/1",
                "-234920541/500000000"
              ]
            ],
            "raw": [
              "59337/200000",
              "7819/10000"
            ],
            "new": [
              "59337/200000",
              "7819/10000"
            ]
          },
          {
            "factor": 190,
            "target": "v",
            "old": [
              "61307/500000",
              "342369/500000"
            ],
            "lines": [
              [
                "1/1",
                "-266529/1000000"
              ],
              [
                "1/1",
                "-220680889671/500000000000"
              ],
              [
                "1/1",
                "-207485593803/500000000000"
              ],
              [
                "1/1",
                "-147450991737/250000000000"
              ],
              [
                "1/1",
                "-148461251827/500000000000"
              ],
              [
                "1/1",
                "-338869632711/500000000000"
              ],
              [
                "1/1",
                "-177033192269/250000000000"
              ]
            ],
            "raw": [
              "266529/1000000",
              "342369/500000"
            ],
            "new": [
              "266529/1000000",
              "342369/500000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "159101/500000",
              "440737/500000"
            ],
            "lines": [
              [
                "13713/15625",
                "-310294803/1000000000"
              ],
              [
                "621203/1000000",
                "-69688509/250000000"
              ],
              [
                "13713/15625",
                "-332783919/1000000000"
              ],
              [
                "621203/1000000",
                "-65310057/250000000"
              ],
              [
                "13713/15625",
                "-36173451/100000000"
              ],
              [
                "621203/1000000",
                "-330193743/1000000000"
              ],
              [
                "13713/15625",
                "-44946423/100000000"
              ],
              [
                "621203/1000000",
                "-377920539/1000000000"
              ]
            ],
            "raw": [
              "14775943/41792000",
              "440737/500000"
            ],
            "new": [
              "353559/1000000",
              "440737/500000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "353559/1000000",
              "440737/500000"
            ],
            "lines": [
              [
                "1/1",
                "-16097/40000"
              ],
              [
                "1/1",
                "-129211619/250000000"
              ],
              [
                "1/1",
                "-111000881/250000000"
              ],
              [
                "1/1",
                "-22337/40000"
              ],
              [
                "1/1",
                "-28225367/62500000"
              ],
              [
                "1/1",
                "-15913879/31250000"
              ]
            ],
            "raw": [
              "16097/40000",
              "440737/500000"
            ],
            "new": [
              "16097/40000",
              "440737/500000"
            ]
          },
          {
            "factor": 202,
            "target": "d",
            "old": [
              "1912/15625",
              "588871/1000000"
            ],
            "lines": [
              [
                "-59337/200000",
                "-531189453/1562500000"
              ],
              [
                "-59337/200000",
                "-104062322411/200000000000"
              ],
              [
                "-7819/10000",
                "-87683269/312500000"
              ],
              [
                "-7819/10000",
                "-3365136257/10000000000"
              ],
              [
                "-59337/200000",
                "200135547/1562500000"
              ],
              [
                "-59337/200000",
                "-10452722411/200000000000"
              ],
              [
                "-7819/10000",
                "58581731/312500000"
              ],
              [
                "-7819/10000",
                "1315343743/10000000000"
              ]
            ],
            "raw": [
              "1912/15625",
              "44474566/103015625"
            ],
            "new": [
              "1912/15625",
              "431727/1000000"
            ]
          },
          {
            "factor": 202,
            "target": "y",
            "old": [
              "54869/125000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-407609/500000"
              ],
              [
                "1/1",
                "-199113672427/200000000000"
              ],
              [
                "1/1",
                "-181400034983/200000000000"
              ],
              [
                "1/1",
                "-21747010741/20000000000"
              ],
              [
                "1/1",
                "-8711451649/10000000000"
              ],
              [
                "1/1",
                "-10571058021/10000000000"
              ],
              [
                "1/1",
                "-1113032967/1000000000"
              ]
            ],
            "raw": [
              "407609/500000",
              "907/1000"
            ],
            "new": [
              "407609/500000",
              "907/1000"
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
                "59337/200000",
                "-95417181/200000000"
              ],
              [
                "59337/200000",
                "-204903/1000000"
              ],
              [
                "7819/10000",
                "-7745227/10000000"
              ],
              [
                "7819/10000",
                "-345059/500000"
              ],
              [
                "59337/200000",
                "-113773581/200000000"
              ],
              [
                "59337/200000",
                "-59337/200000"
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
              "22767/32965",
              "907/1000"
            ],
            "new": [
              "690641/1000000",
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
                "140663/200000",
                "-140663034983/200000000000"
              ],
              [
                "140663/200000",
                "-127824941/200000000"
              ],
              [
                "2181/10000",
                "-3682058021/10000000000"
              ],
              [
                "2181/10000",
                "-1990347/10000000"
              ],
              [
                "140663/200000",
                "-159019434983/200000000000"
              ],
              [
                "140663/200000",
                "-146181341/200000000"
              ],
              [
                "2181/10000",
                "-4599878021/10000000000"
              ],
              [
                "2181/10000",
                "-2908167/10000000"
              ]
            ],
            "raw": [
              "127824941/140663000",
              "1/1"
            ],
            "new": [
              "908731/1000000",
              "1/1"
            ]
          },
          {
            "factor": 214,
            "target": "y",
            "old": [
              "407609/500000",
              "907/1000"
            ],
            "lines": [
              [
                "-1/1",
                "15020539367/20000000000"
              ],
              [
                "-1/1",
                "163043487653/200000000000"
              ],
              [
                "-1/1",
                "163043565017/200000000000"
              ],
              [
                "-1/1",
                "175881659/200000000"
              ],
              [
                "-1/1",
                "645206429/1000000000"
              ],
              [
                "-1/1",
                "8143775311/10000000000"
              ],
              [
                "-1/1",
                "6651121979/10000000000"
              ],
              [
                "-1/1",
                "8342833/10000000"
              ]
            ],
            "raw": [
              "407609/500000",
              "175881659/200000000"
            ],
            "new": [
              "407609/500000",
              "879409/1000000"
            ]
          },
          {
            "factor": 216,
            "target": "g",
            "old": [
              "123/1000",
              "32221/50000"
            ],
            "lines": [
              [
                "1/1",
                "-27/125"
              ],
              [
                "1/1",
                "-41292369/125000000"
              ],
              [
                "1/1",
                "-32207631/125000000"
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
              "32221/50000"
            ],
            "new": [
              "27/125",
              "32221/50000"
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
                "908731/1000000",
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
            "factor": 236,
            "target": "g",
            "old": [
              "27/125",
              "32221/50000"
            ],
            "lines": [
              [
                "-1/1",
                "277093893/441500000"
              ],
              [
                "-1/1",
                "127203423/883000000"
              ]
            ],
            "raw": [
              "27/125",
              "277093893/441500000"
            ],
            "new": [
              "27/125",
              "31381/50000"
            ]
          },
          {
            "factor": 236,
            "target": "z",
            "old": [
              "133529/500000",
              "750619/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "74909/110375"
              ],
              [
                "-1/1",
                "11790577/44150000"
              ]
            ],
            "raw": [
              "133529/500000",
              "74909/110375"
            ],
            "new": [
              "133529/500000",
              "339339/500000"
            ]
          },
          {
            "factor": 360,
            "target": "u",
            "old": [
              "16097/40000",
              "440737/500000"
            ],
            "lines": [
              [
                "407609/500000",
                "-94807720657/200000000000"
              ],
              [
                "407609/500000",
                "-21475036621/50000000000"
              ],
              [
                "407609/500000",
                "-90309897457/200000000000"
              ],
              [
                "407609/500000",
                "-22350727021/50000000000"
              ],
              [
                "407609/500000",
                "-5439876829/10000000000"
              ],
              [
                "407609/500000",
                "-937566537/2500000000"
              ],
              [
                "407609/500000",
                "-5214985669/10000000000"
              ],
              [
                "407609/500000",
                "-981351057/2500000000"
              ],
              [
                "879409/1000000",
                "-94807720657/200000000000"
              ],
              [
                "879409/1000000",
                "-21475036621/50000000000"
              ],
              [
                "879409/1000000",
                "-90309897457/200000000000"
              ],
              [
                "879409/1000000",
                "-22350727021/50000000000"
              ],
              [
                "879409/1000000",
                "-5439876829/10000000000"
              ],
              [
                "879409/1000000",
                "-937566537/2500000000"
              ],
              [
                "879409/1000000",
                "-5214985669/10000000000"
              ],
              [
                "879409/1000000",
                "-981351057/2500000000"
              ],
              [
                "407609/500000",
                "-10933504669/20000000000"
              ],
              [
                "407609/500000",
                "-100427472517/200000000000"
              ],
              [
                "407609/500000",
                "-9178910269/20000000000"
              ],
              [
                "407609/500000",
                "-90882113317/200000000000"
              ],
              [
                "407609/500000",
                "-819545593/1000000000"
              ],
              [
                "407609/500000",
                "-6505845249/10000000000"
              ],
              [
                "407609/500000",
                "-731815873/1000000000"
              ],
              [
                "407609/500000",
                "-6028577289/10000000000"
              ],
              [
                "879409/1000000",
                "-10933504669/20000000000"
              ],
              [
                "879409/1000000",
                "-100427472517/200000000000"
              ],
              [
                "879409/1000000",
                "-9178910269/20000000000"
              ],
              [
                "879409/1000000",
                "-90882113317/200000000000"
              ],
              [
                "879409/1000000",
                "-819545593/1000000000"
              ],
              [
                "879409/1000000",
                "-6505845249/10000000000"
              ],
              [
                "879409/1000000",
                "-731815873/1000000000"
              ],
              [
                "879409/1000000",
                "-6028577289/10000000000"
              ]
            ],
            "raw": [
              "937566537/2198522500",
              "440737/500000"
            ],
            "new": [
              "426453/1000000",
              "440737/500000"
            ]
          },
          {
            "factor": 886,
            "target": "z",
            "old": [
              "133529/500000",
              "339339/500000"
            ],
            "lines": [
              [
                "-1/1",
                "477868241/1000000000"
              ],
              [
                "-1/1",
                "126659657/250000000"
              ],
              [
                "-1/1",
                "600540869/1000000000"
              ],
              [
                "-1/1",
                "145262813/250000000"
              ],
              [
                "-1/1",
                "7709275147/50000000000"
              ],
              [
                "-1/1",
                "3878678019/12500000000"
              ],
              [
                "-1/1",
                "13842906547/50000000000"
              ],
              [
                "-1/1",
                "4808835819/12500000000"
              ],
              [
                "-1/1",
                "3667033/7812500"
              ],
              [
                "-1/1",
                "498150611/1000000000"
              ],
              [
                "-1/1",
                "4736647/7812500"
              ],
              [
                "-1/1",
                "586801199/1000000000"
              ],
              [
                "-1/1",
                "84476047/781250000"
              ],
              [
                "-1/1",
                "13211903937/50000000000"
              ],
              [
                "-1/1",
                "191437447/781250000"
              ],
              [
                "-1/1",
                "17644433337/50000000000"
              ]
            ],
            "raw": [
              "133529/500000",
              "4736647/7812500"
            ],
            "new": [
              "133529/500000",
              "606291/1000000"
            ]
          },
          {
            "factor": 908,
            "target": "v",
            "old": [
              "266529/1000000",
              "342369/500000"
            ],
            "lines": [
              [
                "-1/1",
                "48481993523/100000000000"
              ],
              [
                "-1/1",
                "550474722857/1000000000000"
              ],
              [
                "-1/1",
                "51884197523/100000000000"
              ],
              [
                "-1/1",
                "550744758857/1000000000000"
              ],
              [
                "-1/1",
                "457124083373/1000000000000"
              ],
              [
                "-1/1",
                "522778871/1000000000"
              ],
              [
                "-1/1",
                "505384087373/1000000000000"
              ],
              [
                "-1/1",
                "537286871/1000000000"
              ],
              [
                "-1/1",
                "19279220267/50000000000"
              ],
              [
                "-1/1",
                "274843540753/500000000000"
              ],
              [
                "-1/1",
                "20980322267/50000000000"
              ],
              [
                "-1/1",
                "274978558753/500000000000"
              ],
              [
                "-1/1",
                "158179620917/500000000000"
              ],
              [
                "-1/1",
                "240230959/500000000"
              ],
              [
                "-1/1",
                "182309622917/500000000000"
              ],
              [
                "-1/1",
                "247484959/500000000"
              ]
            ],
            "raw": [
              "266529/1000000",
              "550744758857/1000000000000"
            ],
            "new": [
              "266529/1000000",
              "110149/200000"
            ]
          },
          {
            "factor": 1510,
            "target": "u",
            "old": [
              "426453/1000000",
              "440737/500000"
            ],
            "lines": [
              [
                "7449698273/20000000000",
                "-954462008656299/5000000000000000"
              ],
              [
                "7449698273/20000000000",
                "-1448557598740681/5000000000000000"
              ],
              [
                "7449698273/20000000000",
                "-1167136158916299/5000000000000000"
              ],
              [
                "7449698273/20000000000",
                "-1661231749000681/5000000000000000"
              ],
              [
                "6143/20000",
                "-1555170740751219/10000000000000000"
              ],
              [
                "6143/20000",
                "-2321204920734161/10000000000000000"
              ],
              [
                "6143/20000",
                "-1980519041271219/10000000000000000"
              ],
              [
                "6143/20000",
                "-2746553221254161/10000000000000000"
              ],
              [
                "7449698273/20000000000",
                "-896942177188287/5000000000000000"
              ],
              [
                "7449698273/20000000000",
                "-1242620740220453/5000000000000000"
              ],
              [
                "7449698273/20000000000",
                "-1336403642488287/5000000000000000"
              ],
              [
                "7449698273/20000000000",
                "-1682082205520453/5000000000000000"
              ],
              [
                "6143/20000",
                "-288026215563039/2000000000000000"
              ],
              [
                "6143/20000",
                "-381866240738741/2000000000000000"
              ],
              [
                "6143/20000",
                "-463810801683039/2000000000000000"
              ],
              [
                "6143/20000",
                "-557650826858741/2000000000000000"
              ]
            ],
            "raw": [
              "288026215563039/614300000000000",
              "440737/500000"
            ],
            "new": [
              "117217/250000",
              "440737/500000"
            ]
          },
          {
            "factor": 1672,
            "target": "g",
            "old": [
              "27/125",
              "31381/50000"
            ],
            "lines": [
              [
                "-387637/500000",
                "34068674204276271/125000000000000000"
              ],
              [
                "-387637/500000",
                "35316056342784021/125000000000000000"
              ],
              [
                "-387637/500000",
                "54390578667157149/125000000000000000"
              ],
              [
                "-387637/500000",
                "56651579895804399/125000000000000000"
              ],
              [
                "-387637/500000",
                "36236117083670271/125000000000000000"
              ],
              [
                "-387637/500000",
                "37018465230678021/125000000000000000"
              ],
              [
                "-387637/500000",
                "56558021546551149/125000000000000000"
              ],
              [
                "-387637/500000",
                "58353988783698399/125000000000000000"
              ],
              [
                "-387637/500000",
                "34512646299474021/125000000000000000"
              ],
              [
                "-387637/500000",
                "35760028437981771/125000000000000000"
              ],
              [
                "-387637/500000",
                "55195321192914399/125000000000000000"
              ],
              [
                "-387637/500000",
                "57456322421561649/125000000000000000"
              ],
              [
                "-387637/500000",
                "36514572847368021/125000000000000000"
              ],
              [
                "-387637/500000",
                "37296920994375771/125000000000000000"
              ],
              [
                "-387637/500000",
                "57197247740808399/125000000000000000"
              ],
              [
                "-387637/500000",
                "58993214977955649/125000000000000000"
              ],
              [
                "-387637/500000",
                "40624678227043659/250000000000000000"
              ],
              [
                "-387637/500000",
                "43119442504059159/250000000000000000"
              ],
              [
                "-387637/500000",
                "58911771551561521/250000000000000000"
              ],
              [
                "-387637/500000",
                "63433774008856021/250000000000000000"
              ],
              [
                "-387637/500000",
                "55216506454669659/250000000000000000"
              ],
              [
                "-387637/500000",
                "56781202748685159/250000000000000000"
              ],
              [
                "-387637/500000",
                "73503599779187521/250000000000000000"
              ],
              [
                "-387637/500000",
                "77095534253482021/250000000000000000"
              ],
              [
                "-387637/500000",
                "41512622417439159/250000000000000000"
              ],
              [
                "-387637/500000",
                "44007386694454659/250000000000000000"
              ],
              [
                "-387637/500000",
                "60521256603076021/250000000000000000"
              ],
              [
                "-387637/500000",
                "65043259060370521/250000000000000000"
              ],
              [
                "-387637/500000",
                "55773417982065159/250000000000000000"
              ],
              [
                "-387637/500000",
                "57338114276080659/250000000000000000"
              ],
              [
                "-387637/500000",
                "74782052167702021/250000000000000000"
              ],
              [
                "-387637/500000",
                "78373986641996521/250000000000000000"
              ]
            ],
            "raw": [
              "27/125",
              "58993214977955649/96909250000000000"
            ],
            "new": [
              "27/125",
              "608747/1000000"
            ]
          },
          {
            "factor": 1676,
            "target": "g",
            "old": [
              "27/125",
              "608747/1000000"
            ],
            "lines": [
              [
                "-352257758647/500000000000",
                "57439384783606323/250000000000000000"
              ],
              [
                "-352257758647/500000000000",
                "60667471893371823/250000000000000000"
              ],
              [
                "-352257758647/500000000000",
                "93511309092217137/250000000000000000"
              ],
              [
                "-352257758647/500000000000",
                "98766634382261637/250000000000000000"
              ],
              [
                "-387637/500000",
                "32934204213634521/125000000000000000"
              ],
              [
                "-387637/500000",
                "34548247768517271/125000000000000000"
              ],
              [
                "-387637/500000",
                "53616879107074899/125000000000000000"
              ],
              [
                "-387637/500000",
                "56244541752097149/125000000000000000"
              ],
              [
                "-352257758647/500000000000",
                "1091975498160297/12500000000000000"
              ],
              [
                "-352257758647/500000000000",
                "313344963412143/3125000000000000"
              ],
              [
                "-352257758647/500000000000",
                "1777735933528643/12500000000000000"
              ],
              [
                "-352257758647/500000000000",
                "510125549507717/3125000000000000"
              ],
              [
                "-387637/500000",
                "30268533606868659/250000000000000000"
              ],
              [
                "-387637/500000",
                "33496620716634159/250000000000000000"
              ],
              [
                "-387637/500000",
                "49277167792505521/250000000000000000"
              ],
              [
                "-387637/500000",
                "54532493082550021/250000000000000000"
              ]
            ],
            "raw": [
              "27/125",
              "56244541752097149/96909250000000000"
            ],
            "new": [
              "27/125",
              "18137/31250"
            ]
          },
          {
            "factor": 1880,
            "target": "u",
            "old": [
              "117217/250000",
              "440737/500000"
            ],
            "lines": [
              [
                "-439/500",
                "703439/1000000"
              ],
              [
                "-439/500",
                "87053280151/125000000000"
              ],
              [
                "-439/500",
                "35007325657/50000000000"
              ],
              [
                "-439/500",
                "91227770497/125000000000"
              ],
              [
                "-439/500",
                "183385608977/250000000000"
              ],
              [
                "-439/500",
                "90619969849/125000000000"
              ],
              [
                "-439/500",
                "36061974343/50000000000"
              ],
              [
                "-439/500",
                "717947/1000000"
              ],
              [
                "-439/500",
                "86445479503/125000000000"
              ],
              [
                "-439/500",
                "171960891023/250000000000"
              ],
              [
                "-439/500",
                "16437443603/25000000000"
              ],
              [
                "-439/500",
                "165304504013/250000000000"
              ],
              [
                "-439/500",
                "86361708361/125000000000"
              ],
              [
                "-439/500",
                "34730696941/50000000000"
              ],
              [
                "-439/500",
                "19097206397/25000000000"
              ],
              [
                "-439/500",
                "190041995987/250000000000"
              ],
              [
                "-439/500",
                "91311541639/125000000000"
              ],
              [
                "-439/500",
                "36338603059/50000000000"
              ]
            ],
            "raw": [
              "117217/250000",
              "19097206397/21950000000"
            ],
            "new": [
              "117217/250000",
              "870033/1000000"
            ]
          },
          {
            "factor": 1904,
            "target": "u",
            "old": [
              "117217/250000",
              "870033/1000000"
            ],
            "lines": [
              [
                "-249471847/500000000",
                "399745390847/1000000000000"
              ],
              [
                "-56831623/250000000",
                "91065102623/500000000000"
              ],
              [
                "-43056681/62500000",
                "68992593681/125000000000"
              ],
              [
                "-208644847/500000000",
                "334325563847/1000000000000"
              ],
              [
                "-249471847/500000000",
                "407989895531/1000000000000"
              ],
              [
                "-56831623/250000000",
                "92943264779/500000000000"
              ],
              [
                "-43056681/62500000",
                "70415523813/125000000000"
              ],
              [
                "-208644847/500000000",
                "341220824531/1000000000000"
              ]
            ],
            "raw": [
              "117217/250000",
              "717947/878000"
            ],
            "new": [
              "117217/250000",
              "204427/250000"
            ]
          },
          {
            "factor": 2470,
            "target": "g",
            "old": [
              "27/125",
              "18137/31250"
            ],
            "lines": [
              [
                "-17265889/25000000",
                "114342035460831/500000000000000"
              ],
              [
                "-17265889/25000000",
                "120933970134831/500000000000000"
              ],
              [
                "-17265889/25000000",
                "182884794183789/500000000000000"
              ],
              [
                "-17265889/25000000",
                "189476728857789/500000000000000"
              ],
              [
                "-19/25",
                "1641808704627/6250000000000"
              ],
              [
                "-19/25",
                "1732483704627/6250000000000"
              ],
              [
                "-19/25",
                "2627966240913/6250000000000"
              ],
              [
                "-19/25",
                "2718641240913/6250000000000"
              ],
              [
                "-17265889/25000000",
                "44545022111991/500000000000000"
              ],
              [
                "-17265889/25000000",
                "51136956785991/500000000000000"
              ],
              [
                "-17265889/25000000",
                "69255267795829/500000000000000"
              ],
              [
                "-17265889/25000000",
                "75847202469829/500000000000000"
              ],
              [
                "-19/25",
                "1538692075533/12500000000000"
              ],
              [
                "-19/25",
                "1720042075533/12500000000000"
              ],
              [
                "-19/25",
                "2415194322127/12500000000000"
              ],
              [
                "-19/25",
                "2596544322127/12500000000000"
              ]
            ],
            "raw": [
              "27/125",
              "2718641240913/4750000000000"
            ],
            "new": [
              "27/125",
              "286173/500000"
            ]
          },
          {
            "factor": 3378,
            "target": "x",
            "old": [
              "59337/200000",
              "7819/10000"
            ],
            "lines": [
              [
                "-419063/500000",
                "129086738734911727/250000000000000000"
              ],
              [
                "-419063/500000",
                "129993791077518813/250000000000000000"
              ],
              [
                "-419063/500000",
                "69818433296886659/125000000000000000"
              ],
              [
                "-419063/500000",
                "74558461042578521/125000000000000000"
              ],
              [
                "-419063/500000",
                "143178596048289727/250000000000000000"
              ],
              [
                "-419063/500000",
                "144085648390896813/250000000000000000"
              ],
              [
                "-419063/500000",
                "74897776126512659/125000000000000000"
              ],
              [
                "-419063/500000",
                "79637803872204521/125000000000000000"
              ],
              [
                "-419063/500000",
                "7716164047170523/15625000000000000"
              ],
              [
                "-419063/500000",
                "7487018005043937/15625000000000000"
              ],
              [
                "-419063/500000",
                "134008752613589959/250000000000000000"
              ],
              [
                "-419063/500000",
                "138915419088341221/250000000000000000"
              ],
              [
                "-419063/500000",
                "8728042985292523/15625000000000000"
              ],
              [
                "-419063/500000",
                "8498896943165937/15625000000000000"
              ],
              [
                "-419063/500000",
                "146265643969415959/250000000000000000"
              ],
              [
                "-419063/500000",
                "151172310444167221/250000000000000000"
              ]
            ],
            "raw": [
              "59337/200000",
              "79637803872204521/104765750000000000"
            ],
            "new": [
              "59337/200000",
              "95019/125000"
            ]
          },
          {
            "factor": 3384,
            "target": "x",
            "old": [
              "59337/200000",
              "95019/125000"
            ],
            "lines": [
              [
                "-300462863383/500000000000",
                "101110736342876227/250000000000000000"
              ],
              [
                "-300462863383/500000000000",
                "100556966682401313/250000000000000000"
              ],
              [
                "-350888141/500000000",
                "57381009387591659/125000000000000000"
              ],
              [
                "-350888141/500000000",
                "61390626131742521/125000000000000000"
              ],
              [
                "-300462863383/500000000000",
                "109981123400876227/250000000000000000"
              ],
              [
                "-300462863383/500000000000",
                "109427353740401313/250000000000000000"
              ],
              [
                "-350888141/500000000",
                "61816202916591659/125000000000000000"
              ],
              [
                "-350888141/500000000",
                "65825819660742521/125000000000000000"
              ],
              [
                "-300462863383/500000000000",
                "25666832024684467/62500000000000000"
              ],
              [
                "-300462863383/500000000000",
                "24511910266242873/62500000000000000"
              ],
              [
                "-350888141/500000000",
                "116318610531044959/250000000000000000"
              ],
              [
                "-350888141/500000000",
                "120271926646055221/250000000000000000"
              ],
              [
                "-300462863383/500000000000",
                "28059044356934467/62500000000000000"
              ],
              [
                "-300462863383/500000000000",
                "26904122598492873/62500000000000000"
              ],
              [
                "-350888141/500000000",
                "125887459860044959/250000000000000000"
              ],
              [
                "-350888141/500000000",
                "129840775975055221/250000000000000000"
              ]
            ],
            "raw": [
              "59337/200000",
              "65825819660742521/87722035250000000"
            ],
            "new": [
              "59337/200000",
              "750391/1000000"
            ]
          },
          {
            "factor": 3388,
            "target": "x",
            "old": [
              "59337/200000",
              "750391/1000000"
            ],
            "lines": [
              [
                "-238142188199/500000000000",
                "156501667607747/500000000000000"
              ],
              [
                "-238142188199/500000000000",
                "165486803629193/500000000000000"
              ],
              [
                "-54250638791/250000000000",
                "35652294554723/250000000000000"
              ],
              [
                "-54250638791/250000000000",
                "37699178277737/250000000000000"
              ],
              [
                "-41101279977/62500000000",
                "27010832922381/62500000000000"
              ],
              [
                "-41101279977/62500000000",
                "28561589611239/62500000000000"
              ],
              [
                "-199169329199/500000000000",
                "130889584880747/500000000000000"
              ],
              [
                "-199169329199/500000000000",
                "138404269816193/500000000000000"
              ],
              [
                "-238142188199/500000000000",
                "168868424633747/500000000000000"
              ],
              [
                "-238142188199/500000000000",
                "177853560655193/500000000000000"
              ],
              [
                "-54250638791/250000000000",
                "38469537788723/250000000000000"
              ],
              [
                "-54250638791/250000000000",
                "40516421511737/250000000000000"
              ],
              [
                "-41101279977/62500000000",
                "29145228120381/62500000000000"
              ],
              [
                "-41101279977/62500000000",
                "30695984809239/62500000000000"
              ],
              [
                "-199169329199/500000000000",
                "141232475906747/500000000000000"
              ],
              [
                "-199169329199/500000000000",
                "148747160842193/500000000000000"
              ]
            ],
            "raw": [
              "59337/200000",
              "312972041/419063000"
            ],
            "new": [
              "59337/200000",
              "373419/500000"
            ]
          },
          {
            "factor": 3588,
            "target": "x",
            "old": [
              "59337/200000",
              "373419/500000"
            ],
            "lines": [
              [
                "-949687/1000000",
                "288560044736340023/500000000000000000"
              ],
              [
                "-949687/1000000",
                "283682060785264437/500000000000000000"
              ],
              [
                "-949687/1000000",
                "157355181686470591/250000000000000000"
              ],
              [
                "-949687/1000000",
                "165541026064209229/250000000000000000"
              ],
              [
                "-949687/1000000",
                "298051994247462023/500000000000000000"
              ],
              [
                "-949687/1000000",
                "293174010296386437/500000000000000000"
              ],
              [
                "-949687/1000000",
                "157226632958344591/250000000000000000"
              ],
              [
                "-949687/1000000",
                "165412477336083229/250000000000000000"
              ],
              [
                "-949687/1000000",
                "293887709878713023/500000000000000000"
              ],
              [
                "-949687/1000000",
                "293338971094351437/500000000000000000"
              ],
              [
                "-949687/1000000",
                "160019014257657091/250000000000000000"
              ],
              [
                "-949687/1000000",
                "170369481218752729/250000000000000000"
              ],
              [
                "-949687/1000000",
                "301393463411835023/500000000000000000"
              ],
              [
                "-949687/1000000",
                "300844724627473437/500000000000000000"
              ],
              [
                "-949687/1000000",
                "158897367540531091/250000000000000000"
              ],
              [
                "-949687/1000000",
                "169247834501626729/250000000000000000"
              ],
              [
                "-949687/1000000",
                "34475690810763079/62500000000000000"
              ],
              [
                "-949687/1000000",
                "32570407272390501/62500000000000000"
              ],
              [
                "-949687/1000000",
                "301955845122705791/500000000000000000"
              ],
              [
                "-949687/1000000",
                "307963249522278029/500000000000000000"
              ],
              [
                "-949687/1000000",
                "36256557742269079/62500000000000000"
              ],
              [
                "-949687/1000000",
                "34351274203896501/62500000000000000"
              ],
              [
                "-949687/1000000",
                "306453733607379791/500000000000000000"
              ],
              [
                "-949687/1000000",
                "312461138006952029/500000000000000000"
              ],
              [
                "-949687/1000000",
                "4392706119194963/7812500000000000"
              ],
              [
                "-949687/1000000",
                "4222190132628297/7812500000000000"
              ],
              [
                "-949687/1000000",
                "307283510265078791/500000000000000000"
              ],
              [
                "-949687/1000000",
                "317620159831365029/500000000000000000"
              ],
              [
                "-949687/1000000",
                "4584280173476963/7812500000000000"
              ],
              [
                "-949687/1000000",
                "4413764186910297/7812500000000000"
              ],
              [
                "-949687/1000000",
                "309795202771752791/500000000000000000"
              ],
              [
                "-949687/1000000",
                "320131852338039029/500000000000000000"
              ]
            ],
            "raw": [
              "59337/200000",
              "170369481218752729/237421750000000000"
            ],
            "new": [
              "59337/200000",
              "358791/500000"
            ]
          },
          {
            "factor": 3594,
            "target": "x",
            "old": [
              "59337/200000",
              "358791/500000"
            ],
            "lines": [
              [
                "-652510276367/1000000000000",
                "223050627427903523/500000000000000000"
              ],
              [
                "-652510276367/1000000000000",
                "215250999470663937/500000000000000000"
              ],
              [
                "-388749029/500000000",
                "128443847317467091/250000000000000000"
              ],
              [
                "-388749029/500000000",
                "135168869692123729/250000000000000000"
              ],
              [
                "-677974327367/1000000000000",
                "229944331706776523/500000000000000000"
              ],
              [
                "-677974327367/1000000000000",
                "226473948916250937/500000000000000000"
              ],
              [
                "-802962109/1000000000",
                "131890699456903591/250000000000000000"
              ],
              [
                "-802962109/1000000000",
                "140780344414917229/250000000000000000"
              ],
              [
                "-652510276367/1000000000000",
                "14169018181529477/31250000000000000"
              ],
              [
                "-652510276367/1000000000000",
                "13097207617375563/31250000000000000"
              ],
              [
                "-388749029/500000000",
                "260541358111502291/500000000000000000"
              ],
              [
                "-388749029/500000000",
                "264642061791592529/500000000000000000"
              ],
              [
                "-677974327367/1000000000000",
                "29199749397918079/62500000000000000"
              ],
              [
                "-677974327367/1000000000000",
                "27597283915449501/62500000000000000"
              ],
              [
                "-802962109/1000000000",
                "267435062390375291/500000000000000000"
              ],
              [
                "-802962109/1000000000",
                "275865011237179529/500000000000000000"
              ]
            ],
            "raw": [
              "59337/200000",
              "140780344414917229/200740527250000000"
            ],
            "new": [
              "59337/200000",
              "350653/500000"
            ]
          },
          {
            "factor": 3598,
            "target": "x",
            "old": [
              "59337/200000",
              "350653/500000"
            ],
            "lines": [
              [
                "-539681480551/1000000000000",
                "178449507413747/500000000000000"
              ],
              [
                "-539681480551/1000000000000",
                "187434643435193/500000000000000"
              ],
              [
                "-122943629959/500000000000",
                "40652182808723/250000000000000"
              ],
              [
                "-122943629959/500000000000",
                "42699066531737/250000000000000"
              ],
              [
                "-93144351273/125000000000",
                "30798840060381/62500000000000"
              ],
              [
                "-93144351273/125000000000",
                "32349596749239/62500000000000"
              ],
              [
                "-451360589551/1000000000000",
                "149245578686747/500000000000000"
              ],
              [
                "-451360589551/1000000000000",
                "156760263622193/500000000000000"
              ]
            ],
            "raw": [
              "59337/200000",
              "329832041/474843500"
            ],
            "new": [
              "59337/200000",
              "694613/1000000"
            ]
          },
          {
            "factor": 0,
            "target": "a",
            "old": [
              "1912/15625",
              "378797/1000000"
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
              "378797/1000000"
            ],
            "new": [
              "61307/500000",
              "378797/1000000"
            ]
          },
          {
            "factor": 20,
            "target": "a",
            "old": [
              "61307/500000",
              "378797/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "18256171/62500000"
              ],
              [
                "-877/1000",
                "254047579/1000000000"
              ],
              [
                "-721/1000",
                "17063083/62500000"
              ],
              [
                "-721/1000",
                "186698167/1000000000"
              ]
            ],
            "raw": [
              "61307/500000",
              "165661/437500"
            ],
            "new": [
              "61307/500000",
              "189327/500000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "1912/15625",
              "431727/1000000"
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
              "431727/1000000"
            ],
            "new": [
              "61307/500000",
              "431727/1000000"
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
                "-568027/1000000",
                "475027/1000000"
              ],
              [
                "-129457/500000",
                "82957/500000"
              ],
              [
                "-392193/500000",
                "345693/500000"
              ],
              [
                "-475273/1000000",
                "382273/1000000"
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
            "factor": 68,
            "target": "e",
            "old": [
              "690641/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-123/1000",
                "110042913/1000000000"
              ],
              [
                "-279/1000",
                "251804949/1000000000"
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
              "690641/1000000",
              "83934983/93000000"
            ],
            "new": [
              "690641/1000000",
              "902527/1000000"
            ]
          },
          {
            "factor": 68,
            "target": "h",
            "old": [
              "908731/1000000",
              "1/1"
            ],
            "lines": [
              [
                "-877/1000",
                "822051157/1000000000"
              ],
              [
                "-877/1000",
                "795989179/1000000000"
              ],
              [
                "-721/1000",
                "714311161/1000000000"
              ],
              [
                "-721/1000",
                "655194967/1000000000"
              ]
            ],
            "raw": [
              "908731/1000000",
              "714311161/721000000"
            ],
            "new": [
              "908731/1000000",
              "990723/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "27/125",
              "286173/500000"
            ],
            "lines": [
              [
                "-908731/1000000",
                "127215639579/500000000000"
              ],
              [
                "-908731/1000000",
                "118148420607/250000000000"
              ],
              [
                "-990723/1000000",
                "29882551959/100000000000"
              ],
              [
                "-990723/1000000",
                "27243219147/50000000000"
              ],
              [
                "-908731/1000000",
                "884436603/12500000000"
              ],
              [
                "-908731/1000000",
                "1084884399/6250000000"
              ],
              [
                "-990723/1000000",
                "3598411521/31250000000"
              ],
              [
                "-990723/1000000",
                "3841440693/15625000000"
              ]
            ],
            "raw": [
              "27/125",
              "9081073049/16512050000"
            ],
            "new": [
              "27/125",
              "549967/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "y",
            "old": [
              "407609/500000",
              "879409/1000000"
            ],
            "lines": [
              [
                "-877/1000",
                "145619796417/200000000000"
              ],
              [
                "-877/1000",
                "152980080399/200000000000"
              ],
              [
                "-721/1000",
                "124071797217/200000000000"
              ],
              [
                "-721/1000",
                "124821237999/200000000000"
              ],
              [
                "-877/1000",
                "604996373933/1000000000000"
              ],
              [
                "-877/1000",
                "726113166051/1000000000000"
              ],
              [
                "-721/1000",
                "497256377933/1000000000000"
              ],
              [
                "-721/1000",
                "585318954051/1000000000000"
              ]
            ],
            "raw": [
              "407609/500000",
              "152980080399/175400000000"
            ],
            "new": [
              "407609/500000",
              "872179/1000000"
            ]
          }
        ],
        "contradiction": {
          "factor": 96,
          "target": "f",
          "old": [
            "123/1000",
            "279/1000"
          ],
          "lines": [
            [
              "93513/1000000",
              "-13184371347/200000000000"
            ],
            [
              "35101/200000",
              "-18049530651/200000000000"
            ],
            [
              "93513/1000000",
              "-29603366103/1000000000000"
            ],
            [
              "35101/200000",
              "-86556075199/1000000000000"
            ],
            [
              "4569/125000",
              "-13184371347/200000000000"
            ],
            [
              "7409/62500",
              "-18049530651/200000000000"
            ],
            [
              "4569/125000",
              "-29603366103/1000000000000"
            ],
            [
              "7409/62500",
              "-86556075199/1000000000000"
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
        "123/1000",
        "279/1000"
      ],
      "lines": [
        [
          "93513/1000000",
          "-13184371347/200000000000"
        ],
        [
          "35101/200000",
          "-18049530651/200000000000"
        ],
        [
          "93513/1000000",
          "-29603366103/1000000000000"
        ],
        [
          "35101/200000",
          "-86556075199/1000000000000"
        ],
        [
          "4569/125000",
          "-13184371347/200000000000"
        ],
        [
          "7409/62500",
          "-18049530651/200000000000"
        ],
        [
          "4569/125000",
          "-29603366103/1000000000000"
        ],
        [
          "7409/62500",
          "-86556075199/1000000000000"
        ]
      ]
    }
  }
}
```
