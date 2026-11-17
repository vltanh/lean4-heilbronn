# CA5

```n7-central-cef-packet
{
  "id": "CA5",
  "cell": "CA",
  "given": [
    "AGO+",
    "AGP-",
    "DGP+"
  ],
  "stages": [
    {
      "id": 0,
      "assumptions": [
        "AGO+",
        "AGP-",
        "DGP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "27/250",
          "13857/20000",
          "3/25",
          "129642/311765",
          "617/1000",
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
          "535/907",
          "883/1000",
          "141/200",
          "907/1000",
          "883/1000",
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
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": -1,
        "DGP": 1,
        "ACO": 1,
        "AOP": -1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGP": -1,
        "GHP": -1,
        "GOP": -1,
        "EGP": 1,
        "DGH": -1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADG": 1,
        "BEG": 1,
        "BEO": 1,
        "BDG": 1,
        "BDO": 1
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
          "sign": 1,
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
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
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
            "plu",
            "BADEG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BEG",
            "ABE",
            "ABG",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
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
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEF",
            "points": []
          }
        },
        "L_CFH": {
          "triangle": "CFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
            "points": []
          }
        },
        "L_CFP": {
          "triangle": "CFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFP",
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
            "points": [
              "P"
            ]
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
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
            "points": [
              "P"
            ]
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
            "triangle": "COP",
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
        "L_DGO": {
          "triangle": "DGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDO",
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHP",
            "points": [
              "O"
            ]
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FOP",
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
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "883/1000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "2563571/4000000",
              "13646137/20000000",
              "70079/100000",
              "14385617/20000000",
              "3292411/4000000",
              "423013/500000",
              "883/1000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "800881/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "-84983/200000",
              "-1269921/4000000",
              "-353/200000",
              "36957/20000000",
              "2649/25000",
              "2191457/20000000",
              "853579/4000000",
              "2277927/10000000",
              "135003/500000",
              "683901/1250000",
              "3274229/5000000",
              "173289/250000",
              "7586677/10000000",
              "800881/1000000"
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
              "1145267287/18140000000",
              "1868299/18140000",
              "162985053/907000000",
              "265881/907000",
              "7170261/20000000",
              "19003/40000",
              "11697/20000",
              "31/40"
            ],
            "cell": "CA"
          }
        },
        "U_BFH": {
          "triangle": "BFH",
          "side": "hi",
          "value": "883/1000",
          "witness": {
            "kind": "vertices",
            "signed": "BFH",
            "used": [
              1,
              5,
              7
            ],
            "values": [
              "420017/1000000",
              "23323/40000",
              "550091447/907000000",
              "617/1000",
              "697985053/907000000",
              "883/1000"
            ],
            "cell": "CA"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "3182437/4000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "177681/1000000",
              "2787/12500",
              "5428499/20000000",
              "97573/250000",
              "3383711/5000000",
              "173559/250000",
              "147903/200000",
              "3182437/4000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "18711299/20000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "27366796713/62353000000",
              "594089974427/1247060000000",
              "150950391/311765000",
              "3711621589/6235300000",
              "8166979/10000000",
              "436301/500000",
              "917881/1000000",
              "18711299/20000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "153/200",
          "witness": {
            "kind": "vertices",
            "signed": "CFG",
            "used": [
              2,
              5,
              6,
              8
            ],
            "values": [
              "-1015641/20000000",
              "-3809/500000",
              "-53863/20000000",
              "685617/20000000",
              "3096719/20000000",
              "80513/500000",
              "99/500",
              "10324359/20000000",
              "279691/500000",
              "11286137/20000000",
              "12025617/20000000",
              "14436719/20000000",
              "364013/500000",
              "153/200"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "883/1000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "617/1000",
              "12927079/20000000",
              "359971/500000",
              "16188239/20000000",
              "883/1000"
            ],
            "cell": "CA"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "16371299/20000000",
          "witness": {
            "kind": "vertices",
            "signed": "HCO",
            "used": [
              2,
              7,
              9,
              10
            ],
            "values": [
              "-8363/12500",
              "-125427/250000",
              "-73823/200000",
              "-5507421/20000000",
              "25881/1000000",
              "871299/20000000",
              "2649/25000",
              "3994079/20000000",
              "2699019/10000000",
              "68323/250000",
              "162903/500000",
              "7449769/10000000",
              "800881/1000000",
              "16371299/20000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "9713/12500",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "-108903/500000",
              "-69801/500000",
              "57381/1000000",
              "82119/1000000",
              "160323/1000000",
              "345977/1000000",
              "95423/200000",
              "6787/12500",
              "322951/500000",
              "9713/12500"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "0": {
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
        "1": {
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
        "2": {
          "row": [
            "fan",
            "ACO",
            "ACP",
            "COP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "P"
          }
        },
        "4": {
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
        "12": {
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
        "15": {
          "row": [
            "fan",
            "CFG",
            "CFP",
            "FGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "P"
          }
        },
        "16": {
          "row": [
            "fan",
            "CFH",
            "CFO",
            "FHO",
            "CHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFH",
            "point": "O"
          }
        },
        "19": {
          "row": [
            "fan",
            "CHO",
            "CHP",
            "COP",
            "HOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HCO",
            "point": "P"
          }
        },
        "20": {
          "row": [
            "fan",
            "FHP",
            "FHO",
            "HOP",
            "FOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FHP",
            "point": "O"
          }
        },
        "55": {
          "row": [
            "plu",
            "ACG",
            "AOP",
            "ACO",
            "AGP",
            "ACP",
            "AGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACGOP"
          }
        },
        "112": {
          "row": [
            "plu",
            "ACF",
            "BCO",
            "ABC",
            "CFO",
            "ACO",
            "BCF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CABFO"
          }
        },
        "191": {
          "row": [
            "plu",
            "CDF",
            "CEH",
            "CDE",
            "CFH",
            "CDH",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CDEFH"
          }
        },
        "353": {
          "row": [
            "plu",
            "CEF",
            "DFH",
            "CDF",
            "EFH",
            "CFH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEH"
          }
        },
        "384": {
          "row": [
            "plu",
            "ACG",
            "DGO",
            "ADG",
            "CGO",
            "AGO",
            "CDG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GACDO"
          }
        },
        "535": {
          "row": [
            "plu",
            "ACP",
            "HOP",
            "AHP",
            "COP",
            "AOP",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PACHO"
          }
        },
        "637": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "697": {
          "row": [
            "quad",
            "BCF",
            "BFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "BCFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "775": {
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
        "1290": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "FHO"
              ],
              [
                -1,
                "ACO",
                "FGH"
              ],
              [
                1,
                "AFH",
                "CGO"
              ],
              [
                1,
                "AGO",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACG",
            "point": "O",
            "line": "FH"
          }
        },
        "1638": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CDH",
                "FGP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGP",
                "DFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDF",
            "point": "H",
            "line": "GP"
          }
        },
        "1656": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "DGH"
              ],
              [
                -1,
                "ADO",
                "CGH"
              ],
              [
                -1,
                "AGO",
                "CDH"
              ],
              [
                -1,
                "AHO",
                "CDG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDG",
            "point": "H",
            "line": "AO"
          }
        },
        "1760": {
          "row": [
            "balance",
            [
              [
                1,
                "CDP",
                "FGH"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGH",
                "DFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "H",
            "line": "DP"
          }
        },
        "1932": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CFP",
                "DGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DGH",
            "point": "P",
            "line": "CF"
          }
        },
        "2285": {
          "row": [
            "linear",
            {
              "ACP": "598777/1000000",
              "CDP": "-93/1000",
              "COP": "-93/1000",
              "CGP": "-784777/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ADO",
            "point": "G",
            "line": "CP",
            "side": "upper",
            "outer_upper": {
              "triangle": "ADO",
              "ref": "U_ADO",
              "value": "784777/1000000"
            },
            "fan_lower": [
              {
                "triangle": "DGO",
                "ref": "L_DGO",
                "value": "93/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ADG",
                "ref": "L_ADG",
                "value": "93/1000"
              }
            ],
            "residual": "505777/1000000"
          }
        },
        "2437": {
          "row": [
            "linear",
            {
              "BCH": "589/1000",
              "BCG": "-31/40"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "BC",
            "side": "upper",
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
        "2916": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCG": "-93/1000",
              "BCP": "153/200"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "153/200"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "93/1000"
              },
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "243/500"
          }
        },
        "2989": {
          "row": [
            "linear",
            {
              "CFH": "511/1000",
              "CFO": "-883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "883/1000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "209/500"
          }
        },
        "3034": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCP": "883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "883/1000"
            },
            "fan_lower": [
              {
                "triangle": "FHP",
                "ref": "L_FHP",
                "value": "279/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "209/500"
          }
        },
        "3152": {
          "row": [
            "linear",
            {
              "AGH": "-93/1000",
              "ACG": "12651299/20000000",
              "AGO": "-93/1000",
              "AGP": "-16371299/20000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "16371299/20000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "10791299/20000000"
          }
        },
        "3191": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "12651299/20000000",
              "FOP": "-16371299/20000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "16371299/20000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "10791299/20000000"
          }
        },
        "3230": {
          "row": [
            "linear",
            {
              "CFP": "1847/3125",
              "CHP": "-93/1000",
              "COP": "-9713/12500"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "9713/12500"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "12451/25000"
          }
        }
      },
      "updates": [
        {
          "id": "T0004",
          "relation": 1,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "428881/1000000",
          "sources": [
            "U_ACO",
            "L_CGO",
            "L_AGO"
          ]
        },
        {
          "id": "T0007",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "428881/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0009",
          "relation": 2,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "614881/1000000",
          "sources": [
            "U_ACO",
            "L_ACP",
            "L_COP"
          ]
        },
        {
          "id": "T0041",
          "relation": 55,
          "rule": "sumlo",
          "triangle": "ACG",
          "side": "lo",
          "value": "59429/500000",
          "sources": [
            "L_ACO",
            "L_AGP",
            "L_ACP",
            "L_AGO",
            "T0009"
          ]
        },
        {
          "id": "T0063",
          "relation": 384,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "60499/500000",
          "sources": [
            "L_ADG",
            "L_CGO",
            "L_AGO",
            "L_CDG",
            "T0004"
          ]
        },
        {
          "id": "T0068",
          "relation": 535,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "60499/500000",
          "sources": [
            "L_AHP",
            "L_COP",
            "L_AOP",
            "L_CHP",
            "T0007"
          ]
        },
        {
          "id": "T0070",
          "relation": 637,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "69489/500000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0072",
          "relation": 697,
          "rule": "quad",
          "triangle": "BCF",
          "side": "lo",
          "value": "69489/500000",
          "sources": [
            "U_BFH"
          ]
        },
        {
          "id": "T0074",
          "relation": 775,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CFH"
          ]
        },
        {
          "id": "T0078",
          "relation": 1290,
          "rule": "balance_lo",
          "triangle": "FGH",
          "side": "lo",
          "value": "8917/62500",
          "sources": [
            "T0041",
            "L_FHO",
            "T0070",
            "L_CGO",
            "L_AGO",
            "L_CFH",
            "U_ACO"
          ]
        },
        {
          "id": "T0086",
          "relation": 1760,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "112879/1000000",
          "sources": [
            "L_CDP",
            "T0078",
            "L_CFH",
            "L_DGP",
            "L_CGH",
            "L_DFP",
            "U_CFG"
          ]
        },
        {
          "id": "T0100",
          "relation": 2285,
          "rule": "linear",
          "triangle": "ACP",
          "side": "lo",
          "value": "150777/1000000",
          "sources": [
            "L_CDP",
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0129",
          "relation": 3152,
          "rule": "linear",
          "triangle": "ACG",
          "side": "lo",
          "value": "147691/1000000",
          "sources": [
            "L_AGH",
            "L_AGO",
            "L_AGP"
          ]
        },
        {
          "id": "T0131",
          "relation": 3191,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "67009/500000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0133",
          "relation": 3230,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "1369/10000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0135",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "333691/1000000",
          "sources": [
            "T0129",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0142",
          "relation": 4,
          "rule": "sum",
          "triangle": "ADO",
          "side": "lo",
          "value": "153499/500000",
          "sources": [
            "L_ADG",
            "T0063",
            "L_AGO"
          ]
        },
        {
          "id": "T0145",
          "relation": 12,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "298879/1000000",
          "sources": [
            "L_CDP",
            "T0086",
            "L_CHP"
          ]
        },
        {
          "id": "T0151",
          "relation": 19,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "153499/500000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0068"
          ]
        },
        {
          "id": "T0153",
          "relation": 20,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "153499/500000",
          "sources": [
            "L_FHO",
            "T0068",
            "L_FOP"
          ]
        },
        {
          "id": "T0156",
          "relation": 112,
          "rule": "sumlo",
          "triangle": "BCO",
          "side": "lo",
          "value": "30791/250000",
          "sources": [
            "L_ABC",
            "T0131",
            "L_ACO",
            "T0072",
            "U_ACF"
          ]
        },
        {
          "id": "T0158",
          "relation": 191,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "49291/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0145",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0172",
          "relation": 1656,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "102753/1000000",
          "sources": [
            "T0142",
            "L_CGH",
            "L_AGO",
            "T0145",
            "L_AHO",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0174",
          "relation": 1932,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "114601/1000000",
          "sources": [
            "T0158",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0133",
            "T0172",
            "U_CFG"
          ]
        },
        {
          "id": "T0183",
          "relation": 12,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "300601/1000000",
          "sources": [
            "L_CDP",
            "T0174",
            "L_CHP"
          ]
        },
        {
          "id": "T0186",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFO",
          "side": "hi",
          "value": "241501/500000",
          "sources": [
            "U_CFH",
            "L_FHO",
            "T0151"
          ]
        },
        {
          "id": "T0189",
          "relation": 191,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "49377/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0183",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0198",
          "relation": 1656,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "102953/1000000",
          "sources": [
            "T0142",
            "L_CGH",
            "L_AGO",
            "T0183",
            "L_AHO",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0199",
          "relation": 1932,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "57329/500000",
          "sources": [
            "T0189",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0133",
            "T0198",
            "U_CFG"
          ]
        },
        {
          "id": "T0204",
          "relation": 12,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "150329/500000",
          "sources": [
            "L_CDP",
            "T0199",
            "L_CHP"
          ]
        },
        {
          "id": "T0209",
          "relation": 191,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "98759/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0204",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0212",
          "relation": 353,
          "rule": "sumlo",
          "triangle": "DFH",
          "side": "lo",
          "value": "119843/500000",
          "sources": [
            "T0209",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "T0074"
          ]
        },
        {
          "id": "T0217",
          "relation": 1638,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "120549/1000000",
          "sources": [
            "T0209",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "L_CGP",
            "T0212",
            "U_CDH"
          ]
        },
        {
          "id": "T0223",
          "relation": 15,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "350449/1000000",
          "sources": [
            "T0133",
            "T0217",
            "L_CGP"
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
        "16": {
          "name": "AREA_LO_ACH",
          "terms": [
            [
              [
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
              "-1"
            ],
            [
              [],
              "-333691/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACH",
            "side": "lo",
            "reference": "T0135",
            "value": "333691/1000000"
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
        "62": {
          "name": "AREA_LO_DEF",
          "terms": [
            [
              [
                4,
                5
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
                5
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
            "triangle": "DEF",
            "side": "lo",
            "reference": "L_DEF",
            "value": "93/1000"
          }
        },
        "74": {
          "name": "AREA_LO_CDG",
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
                3,
                6
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
            "triangle": "CDG",
            "side": "lo",
            "reference": "L_CDG",
            "value": "279/1000"
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
              "-30791/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0156",
            "value": "30791/250000"
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
              "907/1000"
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
            "reference": "L_EFO",
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
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "L_AHO",
            "value": "93/1000"
          }
        },
        "100": {
          "name": "AREA_LO_CHO",
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
                7,
                9
              ],
              "1"
            ],
            [
              [
                2,
                7
              ],
              "-1"
            ],
            [
              [],
              "-153499/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CHO",
            "side": "lo",
            "reference": "T0151",
            "value": "153499/500000"
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
        "114": {
          "name": "AREA_LO_FHP",
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
                7,
                11
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
                11
              ],
              "1"
            ],
            [
              [],
              "-153499/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHP",
            "side": "lo",
            "reference": "T0153",
            "value": "153499/500000"
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
        "126": {
          "name": "AREA_LO_ACG",
          "terms": [
            [
              [
                2,
                8
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
                6
              ],
              "1"
            ],
            [
              [],
              "-147691/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACG",
            "side": "lo",
            "reference": "T0129",
            "value": "147691/1000000"
          }
        },
        "132": {
          "name": "AREA_LO_COP",
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
                2,
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
                2,
                10
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
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "148": {
          "name": "AREA_LO_ACP",
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
                0,
                2
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
              "-150777/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "T0100",
            "value": "150777/1000000"
          }
        },
        "152": {
          "name": "AREA_LO_CFG",
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
                2,
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
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-350449/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0223",
            "value": "350449/1000000"
          }
        },
        "182": {
          "name": "AREA_LO_CFO",
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
                2,
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
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-67009/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0131",
            "value": "67009/500000"
          }
        },
        "183": {
          "name": "AREA_HI_CFO",
          "terms": [
            [
              [],
              "241501/500000"
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
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "hi",
            "reference": "T0186",
            "value": "241501/500000"
          }
        },
        "188": {
          "name": "AREA_LO_CFP",
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
                2,
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
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-1369/10000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0133",
            "value": "1369/10000"
          }
        },
        "194": {
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
        "214": {
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
        "219": {
          "name": "Central_g",
          "terms": [
            [
              [
                2,
                6,
                7
              ],
              "1"
            ],
            [
              [
                1,
                6,
                7
              ],
              "-1"
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
            "kind": "setup",
            "name": "Central_g"
          }
        },
        "1521": {
          "name": "LINEAR_2437",
          "terms": [
            [
              [
                2,
                7
              ],
              "589/1000"
            ],
            [
              [
                1,
                7
              ],
              "-589/1000"
            ],
            [
              [
                2,
                8
              ],
              "-31/40"
            ],
            [
              [
                1,
                8
              ],
              "31/40"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2437
          }
        },
        "2000": {
          "name": "LINEAR_2916",
          "terms": [
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
                8
              ],
              "-93/1000"
            ],
            [
              [
                1,
                8
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "153/200"
            ],
            [
              [
                1,
                12
              ],
              "-153/200"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2916
          }
        },
        "2073": {
          "name": "LINEAR_2989",
          "terms": [
            [
              [
                5,
                7
              ],
              "511/1000"
            ],
            [
              [
                2,
                7
              ],
              "-511/1000"
            ],
            [
              [
                2
              ],
              "-93/250"
            ],
            [
              [
                5,
                10
              ],
              "-883/1000"
            ],
            [
              [
                2,
                10
              ],
              "883/1000"
            ],
            [
              [
                9
              ],
              "883/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2989
          }
        },
        "2118": {
          "name": "LINEAR_3034",
          "terms": [
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
                7
              ],
              "-93/1000"
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
                2,
                12
              ],
              "883/1000"
            ],
            [
              [
                1,
                12
              ],
              "-883/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3034
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "386043/500000",
          "79609/500000",
          "27987/50000",
          "617/1000",
          "119161/1000000",
          "123623/200000",
          "46881/200000",
          "226789/1000000",
          "407963/500000",
          "324041/1000000",
          "96849/500000"
        ],
        "high": [
          "621581/1000000",
          "535/907",
          "875963/1000000",
          "100897/200000",
          "907/1000",
          "875963/1000000",
          "262757/500000",
          "1/1",
          "758023/1000000",
          "718617/1000000",
          "907/1000",
          "739063/1000000",
          "649531/1000000"
        ],
        "steps": [
          {
            "factor": 8,
            "target": "b",
            "old": [
              "27/250",
              "535/907"
            ],
            "lines": [
              [
                "237/500",
                "-93/1000"
              ],
              [
                "-9/125",
                "-93/1000"
              ],
              [
                "861/1000",
                "-93/1000"
              ],
              [
                "63/200",
                "-93/1000"
              ]
            ],
            "raw": [
              "31/287",
              "535/907"
            ],
            "new": [
              "108013/1000000",
              "535/907"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "137/200"
            ],
            "lines": [
              [
                "-13857/20000",
                "1820521/20000000"
              ],
              [
                "-883/1000",
                "51897/250000"
              ],
              [
                "-13857/20000",
                "359159/1000000"
              ],
              [
                "-883/1000",
                "549309/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "549309/883000"
            ],
            "new": [
              "139/1000",
              "311047/500000"
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
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "774987/1000000",
                "-93/1000"
              ],
              [
                "265881/907000",
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
              "13857/20000",
              "883/1000"
            ],
            "lines": [
              [
                "-9222957647/31176500000",
                "6323543147/31176500000"
              ],
              [
                "3606093/12470600",
                "-11914647/31176500"
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
              "13857/20000",
              "346999/393499"
            ],
            "new": [
              "13857/20000",
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
                "-6143/20000",
                "108253953/3117650000"
              ],
              [
                "-11817/100000",
                "-683717493/15588250000"
              ],
              [
                "-6143/20000",
                "3711701/20000000"
              ],
              [
                "-11817/100000",
                "1418019/100000000"
              ]
            ],
            "raw": [
              "60001/500000",
              "3711701/6143000"
            ],
            "new": [
              "60001/500000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "129642/311765",
              "907/1000"
            ],
            "lines": [
              [
                "6143/20000",
                "-1298586143/10000000000"
              ],
              [
                "11817/100000",
                "-5359031817/50000000000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "11817/100000",
                "-16440032289/100000000000"
              ]
            ],
            "raw": [
              "1298586143/3071500000",
              "907/1000"
            ],
            "new": [
              "84557/200000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "883/1000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ]
            ],
            "raw": [
              "617/1000",
              "346999/393499"
            ],
            "new": [
              "617/1000",
              "88183/100000"
            ]
          },
          {
            "factor": 74,
            "target": "g",
            "old": [
              "59/500",
              "137/200"
            ],
            "lines": [
              [
                "-60001/500000",
                "-1531627643/10000000000"
              ],
              [
                "-60001/500000",
                "-7837650317/50000000000"
              ],
              [
                "-604217/1000000",
                "3646511969/20000000000"
              ],
              [
                "-604217/1000000",
                "27024230711/100000000000"
              ],
              [
                "-60001/500000",
                "415703357/10000000000"
              ],
              [
                "-60001/500000",
                "-4091661317/50000000000"
              ],
              [
                "-604217/1000000",
                "7541173969/20000000000"
              ],
              [
                "-604217/1000000",
                "34516208711/100000000000"
              ]
            ],
            "raw": [
              "59/500",
              "7541173969/12084340000"
            ],
            "new": [
              "59/500",
              "312023/500000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "139/1000",
              "773/1000"
            ],
            "lines": [
              [
                "-13857/20000",
                "5187661/20000000"
              ],
              [
                "-88183/100000",
                "37522779/100000000"
              ],
              [
                "-13857/20000",
                "-12705787/250000000"
              ],
              [
                "-88183/100000",
                "8127699/125000000"
              ],
              [
                "-13857/20000",
                "9637/20000"
              ],
              [
                "-88183/100000",
                "67083/100000"
              ],
              [
                "-13857/20000",
                "-6049/250000"
              ],
              [
                "-88183/100000",
                "10299/62500"
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
                "584837/1000000",
                "-30791/250000"
              ],
              [
                "1868299/18140000",
                "-30791/250000"
              ],
              [
                "773817/1000000",
                "-30791/250000"
              ],
              [
                "26481981/90700000",
                "-30791/250000"
              ]
            ],
            "raw": [
              "123164/773817",
              "907/1000"
            ],
            "new": [
              "39791/250000",
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
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-393499/500000",
                "346999/500000"
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
                "-93/1000"
              ],
              [
                "-4547/500000",
                "-93/1000"
              ],
              [
                "861/1000",
                "-93/1000"
              ],
              [
                "188953/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31/287",
              "88183/100000"
            ],
            "new": [
              "108013/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 100,
            "target": "y",
            "old": [
              "39791/250000",
              "907/1000"
            ],
            "lines": [
              [
                "13857/20000",
                "-665503081/1000000000"
              ],
              [
                "88183/100000",
                "-781347821/1000000000"
              ],
              [
                "13857/20000",
                "-178367/200000"
              ],
              [
                "88183/100000",
                "-216163/200000"
              ],
              [
                "13857/20000",
                "-9557663/50000000"
              ],
              [
                "88183/100000",
                "-153499/500000"
              ],
              [
                "13857/20000",
                "-59009/500000"
              ]
            ],
            "raw": [
              "59009/346425",
              "907/1000"
            ],
            "new": [
              "170337/1000000",
              "907/1000"
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
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "773817/1000000",
                "-93/1000"
              ],
              [
                "26481981/90700000",
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
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-393499/500000",
                "346999/500000"
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
            "factor": 114,
            "target": "v",
            "old": [
              "120183/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-617/1000",
                "113019/1000000"
              ],
              [
                "-88183/100000",
                "27535979/100000000"
              ],
              [
                "-617/1000",
                "155001/500000"
              ],
              [
                "-88183/100000",
                "35927/62500"
              ],
              [
                "-617/1000",
                "41249121/100000000"
              ]
            ],
            "raw": [
              "120183/1000000",
              "41249121/61700000"
            ],
            "new": [
              "120183/1000000",
              "10446/15625"
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
                "-4547/500000",
                "-279/1000"
              ],
              [
                "861/1000",
                "-279/1000"
              ],
              [
                "188953/500000",
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
            "factor": 126,
            "target": "z",
            "old": [
              "139/1000",
              "30429/40000"
            ],
            "lines": [
              [
                "13857/20000",
                "-4551903/20000000"
              ],
              [
                "13857/20000",
                "-5053017359/10000000000"
              ],
              [
                "88183/100000",
                "-25386337/100000000"
              ],
              [
                "88183/100000",
                "-31143253001/50000000000"
              ],
              [
                "13857/20000",
                "-39313689/250000000"
              ],
              [
                "13857/20000",
                "-23811694447/125000000000"
              ],
              [
                "88183/100000",
                "-5735093/31250000"
              ],
              [
                "88183/100000",
                "-19253554981/62500000000"
              ]
            ],
            "raw": [
              "11470186/55114375",
              "30429/40000"
            ],
            "new": [
              "52029/250000",
              "30429/40000"
            ]
          },
          {
            "factor": 144,
            "target": "x",
            "old": [
              "108013/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "139/1000",
                "-13422763191/20000000000"
              ],
              [
                "311047/500000",
                "-20116996749/20000000000"
              ],
              [
                "139/1000",
                "-66521609329/100000000000"
              ],
              [
                "311047/500000",
                "-109122287531/100000000000"
              ],
              [
                "139/1000",
                "-401853/2500000"
              ],
              [
                "311047/500000",
                "-4954528779/10000000000"
              ],
              [
                "139/1000",
                "-195057/12500000"
              ],
              [
                "311047/500000",
                "-22080567101/50000000000"
              ]
            ],
            "raw": [
              "195057/1737500",
              "88183/100000"
            ],
            "new": [
              "112263/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "170337/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "13857/20000",
                "-773551593/1000000000"
              ],
              [
                "13857/20000",
                "-527014844589/500000000000"
              ],
              [
                "88183/100000",
                "-799819813/1000000000"
              ],
              [
                "88183/100000",
                "-585796506649/500000000000"
              ],
              [
                "13857/20000",
                "-33329089/50000000"
              ],
              [
                "13857/20000",
                "-14382166897/25000000000"
              ],
              [
                "88183/100000",
                "-13857/20000"
              ]
            ],
            "raw": [
              "69285/88183",
              "907/1000"
            ],
            "new": [
              "157139/200000",
              "907/1000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "59/500",
              "312023/500000"
            ],
            "lines": [
              [
                "-1/1",
                "1633077007/5000000000"
              ],
              [
                "-1/1",
                "11906640993/25000000000"
              ],
              [
                "-1/1",
                "4771634521/12500000000"
              ],
              [
                "-1/1",
                "531381/1000000"
              ],
              [
                "-1/1",
                "227760007/800000000"
              ],
              [
                "-1/1",
                "1319672793/4000000000"
              ],
              [
                "-1/1",
                "972325621/2000000000"
              ]
            ],
            "raw": [
              "59/500",
              "531381/1000000"
            ],
            "new": [
              "59/500",
              "531381/1000000"
            ]
          },
          {
            "factor": 182,
            "target": "x",
            "old": [
              "112263/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "1996948137/4000000000"
              ],
              [
                "-1/1",
                "10794727863/20000000000"
              ],
              [
                "-1/1",
                "7073126411/10000000000"
              ],
              [
                "-1/1",
                "186953/250000"
              ],
              [
                "-1/1",
                "9800721/20000000"
              ],
              [
                "-1/1",
                "50761119/100000000"
              ],
              [
                "-1/1",
                "36511843/50000000"
              ]
            ],
            "raw": [
              "112263/1000000",
              "186953/250000"
            ],
            "new": [
              "112263/1000000",
              "186953/250000"
            ]
          },
          {
            "factor": 183,
            "target": "x",
            "old": [
              "112263/1000000",
              "186953/250000"
            ],
            "lines": [
              [
                "1/1",
                "-601012137/4000000000"
              ],
              [
                "1/1",
                "-3815047863/20000000000"
              ],
              [
                "1/1",
                "-3583286411/10000000000"
              ],
              [
                "1/1",
                "-99707/250000"
              ],
              [
                "1/1",
                "-2821041/20000000"
              ],
              [
                "1/1",
                "-15862719/100000000"
              ],
              [
                "1/1",
                "-19062643/50000000"
              ]
            ],
            "raw": [
              "2821041/20000000",
              "186953/250000"
            ],
            "new": [
              "35263/250000",
              "186953/250000"
            ]
          },
          {
            "factor": 188,
            "target": "u",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "10936682389/20000000000"
              ],
              [
                "-1/1",
                "71310193611/100000000000"
              ],
              [
                "-1/1",
                "28933109167/50000000000"
              ],
              [
                "-1/1",
                "74493/100000"
              ],
              [
                "-1/1",
                "157887793/312500000"
              ],
              [
                "-1/1",
                "887311707/1562500000"
              ],
              [
                "-1/1",
                "1066080383/1562500000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "74493/100000"
            ],
            "new": [
              "324041/1000000",
              "74493/100000"
            ]
          },
          {
            "factor": 194,
            "target": "z",
            "old": [
              "52029/250000",
              "30429/40000"
            ],
            "lines": [
              [
                "1/1",
                "-57439559/250000000"
              ],
              [
                "1/1",
                "-81980893/125000000"
              ],
              [
                "1/1",
                "-143447803/500000000"
              ],
              [
                "1/1",
                "-356492257/500000000"
              ],
              [
                "1/1",
                "-110952411881/500000000000"
              ],
              [
                "1/1",
                "-112072962737/250000000000"
              ],
              [
                "1/1",
                "-479207474677/1000000000000"
              ],
              [
                "1/1",
                "-705594501863/1000000000000"
              ]
            ],
            "raw": [
              "110952411881/500000000000",
              "30429/40000"
            ],
            "new": [
              "13869/62500",
              "30429/40000"
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
                "13857/20000",
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
            "factor": 219,
            "target": "g",
            "old": [
              "59/500",
              "531381/1000000"
            ],
            "lines": [
              [
                "179545543837/500000000000",
                "-74480259/1000000000"
              ],
              [
                "573569661299/9070000000000",
                "-2163951807/18140000000"
              ],
              [
                "237562592817/500000000000",
                "-92055399/1000000000"
              ],
              [
                "8129994648981/45350000000000",
                "-12413824233/90700000000"
              ],
              [
                "584837/1000000",
                "-74480259/1000000000"
              ],
              [
                "1868299/18140000",
                "-2163951807/18140000000"
              ],
              [
                "773817/1000000",
                "-92055399/1000000000"
              ],
              [
                "26481981/90700000",
                "-12413824233/90700000000"
              ]
            ],
            "raw": [
              "30685133/257939000",
              "531381/1000000"
            ],
            "new": [
              "59481/500000",
              "531381/1000000"
            ]
          },
          {
            "factor": 1521,
            "target": "z",
            "old": [
              "13869/62500",
              "30429/40000"
            ],
            "lines": [
              [
                "-18129947/40000000",
                "105752325319993/500000000000000"
              ],
              [
                "-57917269/725600000",
                "337832530505111/9070000000000000"
              ],
              [
                "-23988327/40000000",
                "139924367169213/500000000000000"
              ],
              [
                "-820941411/3628000000",
                "4788566848249809/45350000000000000"
              ],
              [
                "-18129947/40000000",
                "344468993/1000000000"
              ],
              [
                "-57917269/725600000",
                "1100428111/18140000000"
              ],
              [
                "-23988327/40000000",
                "455778213/1000000000"
              ],
              [
                "-820941411/3628000000",
                "15597886809/90700000000"
              ]
            ],
            "raw": [
              "13869/62500",
              "19/25"
            ],
            "new": [
              "13869/62500",
              "19/25"
            ]
          },
          {
            "factor": 2000,
            "target": "v",
            "old": [
              "120183/1000000",
              "10446/15625"
            ],
            "lines": [
              [
                "89480061/200000000",
                "-4153697767329/62500000000000"
              ],
              [
                "285849747/3628000000",
                "-13269251748783/1133750000000000"
              ],
              [
                "118394001/200000000",
                "-5495893633989/62500000000000"
              ],
              [
                "4051743093/18140000000",
                "-188083423849977/5668750000000000"
              ],
              [
                "89480061/200000000",
                "-598288251/6250000000"
              ],
              [
                "285849747/3628000000",
                "-1911269877/113375000000"
              ],
              [
                "118394001/200000000",
                "-791614791/6250000000"
              ],
              [
                "4051743093/18140000000",
                "-27091066563/566875000000"
              ]
            ],
            "raw": [
              "2367439/15937500",
              "10446/15625"
            ],
            "new": [
              "29709/200000",
              "10446/15625"
            ]
          },
          {
            "factor": 2073,
            "target": "x",
            "old": [
              "35263/250000",
              "186953/250000"
            ],
            "lines": [
              [
                "883/1000",
                "-4578323273229/20000000000000"
              ],
              [
                "883/1000",
                "-22740174162771/100000000000000"
              ],
              [
                "883/1000",
                "-16477759101687/50000000000000"
              ],
              [
                "883/1000",
                "-8201019/25000000"
              ],
              [
                "883/1000",
                "-975508780971/4000000000000"
              ],
              [
                "883/1000",
                "-5592762583029/20000000000000"
              ],
              [
                "883/1000",
                "-2922798260913/10000000000000"
              ],
              [
                "883/1000",
                "-2207916945687/10000000000000"
              ],
              [
                "883/1000",
                "-9951759362313/50000000000000"
              ],
              [
                "883/1000",
                "-8744931683061/25000000000000"
              ],
              [
                "883/1000",
                "-4715054523/20000000000"
              ],
              [
                "883/1000",
                "-25127157477/100000000000"
              ],
              [
                "883/1000",
                "-15626095569/50000000000"
              ]
            ],
            "raw": [
              "9951759362313/44150000000000",
              "186953/250000"
            ],
            "new": [
              "225407/1000000",
              "186953/250000"
            ]
          },
          {
            "factor": 2118,
            "target": "v",
            "old": [
              "29709/200000",
              "10446/15625"
            ],
            "lines": [
              [
                "516411071/1000000000",
                "-43892656076841/500000000000000"
              ],
              [
                "1649708017/18140000000",
                "-140217882000807/9070000000000000"
              ],
              [
                "683280411/1000000000",
                "-58075811631981/500000000000000"
              ],
              [
                "23383589223/90700000000",
                "-1987501618855233/45350000000000000"
              ],
              [
                "516411071/1000000000",
                "-54389841/500000000"
              ],
              [
                "1649708017/18140000000",
                "-173751807/9070000000"
              ],
              [
                "683280411/1000000000",
                "-71964981/500000000"
              ],
              [
                "23383589223/90700000000",
                "-2462824233/45350000000"
              ]
            ],
            "raw": [
              "75051093/441500000",
              "10446/15625"
            ],
            "new": [
              "169991/1000000",
              "10446/15625"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "311047/500000"
            ],
            "lines": [
              [
                "-13857/20000",
                "917202857/10000000000"
              ],
              [
                "-88183/100000",
                "10387719183/50000000000"
              ],
              [
                "-13857/20000",
                "359159/1000000"
              ],
              [
                "-88183/100000",
                "548139/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "548139/881830"
            ],
            "new": [
              "139/1000",
              "621593/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "60001/500000",
              "604217/1000000"
            ],
            "lines": [
              [
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "773817/1000000",
                "-93/1000"
              ],
              [
                "26481981/90700000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/257939",
              "604217/1000000"
            ],
            "new": [
              "120183/1000000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "13857/20000",
              "88183/100000"
            ],
            "lines": [
              [
                "-151301/500000",
                "104801/500000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-786817/1000000",
                "693817/1000000"
              ],
              [
                "-302783/1000000",
                "209783/1000000"
              ]
            ],
            "raw": [
              "13857/20000",
              "693817/786817"
            ],
            "new": [
              "13857/20000",
              "881803/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "84557/200000",
              "907/1000"
            ],
            "lines": [
              [
                "6143/20000",
                "-2598284169/20000000000"
              ],
              [
                "118197/1000000",
                "-107205270051/1000000000000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "118197/1000000",
                "-164416636749/1000000000000"
              ]
            ],
            "raw": [
              "2598284169/6143000000",
              "907/1000"
            ],
            "new": [
              "211483/500000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "88183/100000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "181251/1000000",
                "-274251/1000000"
              ],
              [
                "-786817/1000000",
                "693817/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "693817/786817"
            ],
            "new": [
              "617/1000",
              "881803/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "13869/62500",
              "19/25"
            ],
            "lines": [
              [
                "-13857/20000",
                "2026315467/7812500000"
              ],
              [
                "-881803/1000000",
                "187692949841/500000000000"
              ],
              [
                "-13857/20000",
                "3071144469/500000000000"
              ],
              [
                "-881803/1000000",
                "30539952211/250000000000"
              ],
              [
                "-13857/20000",
                "60111/125000"
              ],
              [
                "-881803/1000000",
                "669841/1000000"
              ],
              [
                "-13857/20000",
                "68469/1000000"
              ],
              [
                "-881803/1000000",
                "128711/500000"
              ]
            ],
            "raw": [
              "13869/62500",
              "669841/881803"
            ],
            "new": [
              "13869/62500",
              "759627/1000000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "169991/1000000",
              "10446/15625"
            ],
            "lines": [
              [
                "-617/1000",
                "98460205959/500000000000"
              ],
              [
                "-881803/1000000",
                "89877495881/250000000000"
              ],
              [
                "-617/1000",
                "155001/500000"
              ],
              [
                "-881803/1000000",
                "114961/200000"
              ],
              [
                "-617/1000",
                "17969136207/50000000000"
              ],
              [
                "-881803/1000000",
                "260986147873/500000000000"
              ]
            ],
            "raw": [
              "169991/1000000",
              "574805/881803"
            ],
            "new": [
              "169991/1000000",
              "162963/250000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "13869/62500",
              "759627/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-28432679/125000000"
              ],
              [
                "13857/20000",
                "-3940748153/7812500000"
              ],
              [
                "881803/1000000",
                "-253725899/1000000000"
              ],
              [
                "881803/1000000",
                "-621867625713/1000000000000"
              ],
              [
                "13857/20000",
                "-170135191/1000000000"
              ],
              [
                "13857/20000",
                "-248059000117/1000000000000"
              ],
              [
                "881803/1000000",
                "-98199829/500000000"
              ],
              [
                "881803/1000000",
                "-182755431123/500000000000"
              ]
            ],
            "raw": [
              "260477/1169500",
              "759627/1000000"
            ],
            "new": [
              "8909/40000",
              "759627/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "13857/20000",
              "881803/1000000"
            ],
            "lines": [
              [
                "129339/200000",
                "-661518427/1000000000"
              ],
              [
                "82051/500000",
                "-552738586649/1000000000000"
              ],
              [
                "129339/200000",
                "-147226033/250000000"
              ],
              [
                "82051/500000",
                "-57003823871/250000000000"
              ],
              [
                "96/125",
                "-661518427/1000000000"
              ],
              [
                "285407/1000000",
                "-552738586649/1000000000000"
              ],
              [
                "96/125",
                "-147226033/250000000"
              ],
              [
                "285407/1000000",
                "-57003823871/250000000000"
              ]
            ],
            "raw": [
              "147226033/192000000",
              "881803/1000000"
            ],
            "new": [
              "383401/500000",
              "881803/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "157139/200000",
              "907/1000"
            ],
            "lines": [
              [
                "383401/500000",
                "-153620781/200000000"
              ],
              [
                "383401/500000",
                "-205875468447/200000000000"
              ],
              [
                "881803/1000000",
                "-196022261/250000000"
              ],
              [
                "881803/1000000",
                "-275215289707/250000000000"
              ],
              [
                "383401/500000",
                "-69548961/100000000"
              ],
              [
                "383401/500000",
                "-70465405107/100000000000"
              ],
              [
                "881803/1000000",
                "-711474749/1000000000"
              ],
              [
                "881803/1000000",
                "-776137867663/1000000000000"
              ]
            ],
            "raw": [
              "711474749/881803000",
              "907/1000"
            ],
            "new": [
              "20171/25000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "169991/1000000",
              "162963/250000"
            ],
            "lines": [
              [
                "383401/500000",
                "-212320779/1000000000"
              ],
              [
                "383401/500000",
                "-425994138273/1000000000000"
              ],
              [
                "881803/1000000",
                "-114152959/500000000"
              ],
              [
                "881803/1000000",
                "-248738977433/500000000000"
              ],
              [
                "383401/500000",
                "-19227151/125000000"
              ],
              [
                "383401/500000",
                "-10273280131/62500000000"
              ],
              [
                "881803/1000000",
                "-169802347/1000000000"
              ],
              [
                "881803/1000000",
                "-235856298689/1000000000000"
              ]
            ],
            "raw": [
              "13061719/67831000",
              "162963/250000"
            ],
            "new": [
              "96281/500000",
              "162963/250000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "59481/500000",
              "531381/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "7659766991/20000000000"
              ],
              [
                "-1/1",
                "18895030073/40000000000"
              ],
              [
                "-1/1",
                "17678663909/40000000000"
              ],
              [
                "-1/1",
                "265677/500000"
              ],
              [
                "-1/1",
                "151279678073/500000000000"
              ],
              [
                "-1/1",
                "330202491519/1000000000000"
              ],
              [
                "-1/1",
                "503710864627/1000000000000"
              ]
            ],
            "raw": [
              "59481/500000",
              "265677/500000"
            ],
            "new": [
              "59481/500000",
              "265677/500000"
            ]
          },
          {
            "factor": 182,
            "target": "x",
            "old": [
              "225407/1000000",
              "186953/250000"
            ],
            "lines": [
              [
                "-1/1",
                "6398971929/12500000000"
              ],
              [
                "-1/1",
                "13353283687/25000000000"
              ],
              [
                "-1/1",
                "18139285171/25000000000"
              ],
              [
                "-1/1",
                "149557/200000"
              ],
              [
                "-1/1",
                "248456793/500000000"
              ],
              [
                "-1/1",
                "507608679/1000000000"
              ],
              [
                "-1/1",
                "737089907/1000000000"
              ]
            ],
            "raw": [
              "225407/1000000",
              "149557/200000"
            ],
            "new": [
              "225407/1000000",
              "149557/200000"
            ]
          },
          {
            "factor": 188,
            "target": "u",
            "old": [
              "324041/1000000",
              "74493/100000"
            ],
            "lines": [
              [
                "-1/1",
                "150263956819/250000000000"
              ],
              [
                "-1/1",
                "346956002357/500000000000"
              ],
              [
                "-1/1",
                "326023411281/500000000000"
              ],
              [
                "-1/1",
                "744903/1000000"
              ],
              [
                "-1/1",
                "66531658337/125000000000"
              ],
              [
                "-1/1",
                "143072658711/250000000000"
              ],
              [
                "-1/1",
                "176216407963/250000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "744903/1000000"
            ],
            "new": [
              "324041/1000000",
              "744903/1000000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "307001/500000",
              "1/1"
            ],
            "lines": [
              [
                "383401/500000",
                "-270723/500000"
              ],
              [
                "881803/1000000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "541446/881803",
              "1/1"
            ],
            "new": [
              "614021/1000000",
              "1/1"
            ]
          },
          {
            "factor": 219,
            "target": "g",
            "old": [
              "59481/500000",
              "265677/500000"
            ],
            "lines": [
              [
                "404510280569/1000000000000",
                "-16271559/200000000"
              ],
              [
                "49271935236847/453500000000000",
                "-57217757751/453500000000"
              ],
              [
                "47512330959/100000000000",
                "-11506611/125000000"
              ],
              [
                "162589887795741/907000000000000",
                "-124135964853/907000000000"
              ],
              [
                "658789/1000000",
                "-16271559/200000000"
              ],
              [
                "80244707/453500000",
                "-57217757751/453500000000"
              ],
              [
                "77379/100000",
                "-11506611/125000000"
              ],
              [
                "264795321/907000000",
                "-124135964853/907000000000"
              ]
            ],
            "raw": [
              "3835537/32241250",
              "265677/500000"
            ],
            "new": [
              "118963/1000000",
              "265677/500000"
            ]
          },
          {
            "factor": 2073,
            "target": "x",
            "old": [
              "225407/1000000",
              "149557/200000"
            ],
            "lines": [
              [
                "883/1000",
                "-112764016648911/500000000000000"
              ],
              [
                "883/1000",
                "-222460382887833/1000000000000000"
              ],
              [
                "883/1000",
                "-331098366409989/1000000000000000"
              ],
              [
                "883/1000",
                "-82007679/250000000"
              ],
              [
                "883/1000",
                "-3188428388307/12500000000000"
              ],
              [
                "883/1000",
                "-6867221845621/25000000000000"
              ],
              [
                "883/1000",
                "-7710402830993/25000000000000"
              ],
              [
                "883/1000",
                "-106139676335631/500000000000000"
              ],
              [
                "883/1000",
                "-199040866619993/1000000000000000"
              ],
              [
                "883/1000",
                "-341269202051269/1000000000000000"
              ],
              [
                "883/1000",
                "-120912795219/500000000000"
              ],
              [
                "883/1000",
                "-251269357557/1000000000000"
              ],
              [
                "883/1000",
                "-318586948881/1000000000000"
              ]
            ],
            "raw": [
              "199040866619993/883000000000000",
              "149557/200000"
            ],
            "new": [
              "112707/500000",
              "149557/200000"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "621593/1000000"
            ],
            "lines": [
              [
                "-383401/500000",
                "68570765421/500000000000"
              ],
              [
                "-881803/1000000",
                "207754559863/1000000000000"
              ],
              [
                "-383401/500000",
                "433111/1000000"
              ],
              [
                "-881803/1000000",
                "34257/62500"
              ]
            ],
            "raw": [
              "139/1000",
              "548112/881803"
            ],
            "new": [
              "139/1000",
              "310791/500000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "120183/1000000",
              "604217/1000000"
            ],
            "lines": [
              [
                "658789/1000000",
                "-93/1000"
              ],
              [
                "80244707/453500000",
                "-93/1000"
              ],
              [
                "77379/100000",
                "-93/1000"
              ],
              [
                "264795321/907000000",
                "-93/1000"
              ]
            ],
            "raw": [
              "3100/25793",
              "604217/1000000"
            ],
            "new": [
              "120187/1000000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "383401/500000",
              "881803/1000000"
            ],
            "lines": [
              [
                "-302779/1000000",
                "209779/1000000"
              ],
              [
                "181251/1000000",
                "-274251/1000000"
              ],
              [
                "-786813/1000000",
                "693813/1000000"
              ],
              [
                "-302783/1000000",
                "209783/1000000"
              ]
            ],
            "raw": [
              "383401/500000",
              "231271/262271"
            ],
            "new": [
              "383401/500000",
              "440901/500000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "604217/1000000"
            ],
            "lines": [
              [
                "-116599/500000",
                "1408706317/250000000000"
              ],
              [
                "-59099/500000",
                "-10751566183/250000000000"
              ],
              [
                "-116599/500000",
                "59255293/500000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "59255293/116599000"
            ],
            "new": [
              "120187/1000000",
              "254099/500000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "211483/500000",
              "907/1000"
            ],
            "lines": [
              [
                "116599/500000",
                "-60513684013/500000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "116599/500000",
                "-52877689301/250000000000"
              ],
              [
                "59099/500000",
                "-38266996801/250000000000"
              ]
            ],
            "raw": [
              "60513684013/116599000000",
              "907/1000"
            ],
            "new": [
              "518989/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "881803/1000000"
            ],
            "lines": [
              [
                "-199401/500000",
                "152901/500000"
              ],
              [
                "-10791/1000000",
                "-82209/1000000"
              ],
              [
                "-786813/1000000",
                "693813/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "231271/262271"
            ],
            "new": [
              "617/1000",
              "440901/500000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "120187/1000000",
              "254099/500000"
            ],
            "lines": [
              [
                "647839/1000000",
                "-4541219509/20000000000"
              ],
              [
                "762839/1000000",
                "-5053487009/20000000000"
              ],
              [
                "29431/125000",
                "-4541219509/20000000000"
              ],
              [
                "21903/62500",
                "-5053487009/20000000000"
              ],
              [
                "647839/1000000",
                "-50928251427/500000000000"
              ],
              [
                "762839/1000000",
                "-94606803927/500000000000"
              ],
              [
                "29431/125000",
                "-50928251427/500000000000"
              ],
              [
                "21903/62500",
                "-94606803927/500000000000"
              ]
            ],
            "raw": [
              "50928251427/323919500000",
              "254099/500000"
            ],
            "new": [
              "6289/40000",
              "254099/500000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "8909/40000",
              "759627/1000000"
            ],
            "lines": [
              [
                "-383401/500000",
                "304786750619/1000000000000"
              ],
              [
                "-440901/500000",
                "375399165619/1000000000000"
              ],
              [
                "-383401/500000",
                "6446252051/125000000000"
              ],
              [
                "-440901/500000",
                "7636401963/62500000000"
              ],
              [
                "-383401/500000",
                "554839/1000000"
              ],
              [
                "-440901/500000",
                "669839/1000000"
              ],
              [
                "-383401/500000",
                "8903/62500"
              ],
              [
                "-440901/500000",
                "32181/125000"
              ]
            ],
            "raw": [
              "8909/40000",
              "669839/881802"
            ],
            "new": [
              "8909/40000",
              "379813/500000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "112707/500000",
              "149557/200000"
            ],
            "lines": [
              [
                "-481011/1000000",
                "277764067/1000000000"
              ],
              [
                "-93/1000",
                "119879/3125000"
              ],
              [
                "-481011/1000000",
                "176993793751/500000000000"
              ],
              [
                "-93/1000",
                "18497987/1562500000"
              ],
              [
                "-481011/1000000",
                "239402787/1000000000"
              ],
              [
                "-93/1000",
                "0/1"
              ],
              [
                "-481011/1000000",
                "171074437911/500000000000"
              ]
            ],
            "raw": [
              "112707/500000",
              "176993793751/240505500000"
            ],
            "new": [
              "112707/500000",
              "29437/40000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "8909/40000",
              "379813/500000"
            ],
            "lines": [
              [
                "383401/500000",
                "-237740621/1000000000"
              ],
              [
                "383401/500000",
                "-275188030649/500000000000"
              ],
              [
                "440901/500000",
                "-253725621/1000000000"
              ],
              [
                "440901/500000",
                "-310928995649/500000000000"
              ],
              [
                "383401/500000",
                "-5638071/31250000"
              ],
              [
                "383401/500000",
                "-18377577421/62500000000"
              ],
              [
                "440901/500000",
                "-24550409/125000000"
              ],
              [
                "440901/500000",
                "-11422599023/31250000000"
              ]
            ],
            "raw": [
              "24550409/110225250",
              "379813/500000"
            ],
            "new": [
              "222729/1000000",
              "379813/500000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "383401/500000",
              "440901/500000"
            ],
            "lines": [
              [
                "2087/3125",
                "-330758727/500000000"
              ],
              [
                "92629/500000",
                "-138184178763/250000000000"
              ],
              [
                "2087/3125",
                "-23622257/40000000"
              ],
              [
                "92629/500000",
                "-4708245333/20000000000"
              ],
              [
                "96/125",
                "-330758727/500000000"
              ],
              [
                "142709/500000",
                "-138184178763/250000000000"
              ],
              [
                "96/125",
                "-23622257/40000000"
              ],
              [
                "142709/500000",
                "-4708245333/20000000000"
              ]
            ],
            "raw": [
              "23622257/30720000",
              "440901/500000"
            ],
            "new": [
              "768953/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "20171/25000",
              "907/1000"
            ],
            "lines": [
              [
                "768953/1000000",
                "-768401921/1000000000"
              ],
              [
                "768953/1000000",
                "-515352029349/500000000000"
              ],
              [
                "440901/500000",
                "-196021983/250000000"
              ],
              [
                "440901/500000",
                "-137606120727/125000000000"
              ],
              [
                "768953/1000000",
                "-174360223/250000000"
              ],
              [
                "768953/1000000",
                "-89172451287/125000000000"
              ],
              [
                "440901/500000",
                "-713126903/1000000000"
              ],
              [
                "440901/500000",
                "-391762258707/500000000000"
              ]
            ],
            "raw": [
              "713126903/881802000",
              "907/1000"
            ],
            "new": [
              "161743/200000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "96281/500000",
              "162963/250000"
            ],
            "lines": [
              [
                "768953/1000000",
                "-26577471/125000000"
              ],
              [
                "768953/1000000",
                "-13353946587/31250000000"
              ],
              [
                "440901/500000",
                "-228305779/1000000000"
              ],
              [
                "440901/500000",
                "-248735598951/500000000000"
              ],
              [
                "768953/1000000",
                "-3082399/20000000"
              ],
              [
                "768953/1000000",
                "-1657260471/10000000000"
              ],
              [
                "440901/500000",
                "-169805961/1000000000"
              ],
              [
                "440901/500000",
                "-117935477109/500000000000"
              ]
            ],
            "raw": [
              "18867329/97978000",
              "162963/250000"
            ],
            "new": [
              "96283/500000",
              "162963/250000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "118963/1000000",
              "265677/500000"
            ],
            "lines": [
              [
                "-1/1",
                "384659660263/1000000000000"
              ],
              [
                "-1/1",
                "236186957671/500000000000"
              ],
              [
                "-1/1",
                "443638744921/1000000000000"
              ],
              [
                "-1/1",
                "531353/1000000"
              ],
              [
                "-1/1",
                "151538275211/500000000000"
              ],
              [
                "-1/1",
                "82550628987/250000000000"
              ],
              [
                "-1/1",
                "252113517237/500000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "531353/1000000"
            ],
            "new": [
              "118963/1000000",
              "531353/1000000"
            ]
          },
          {
            "factor": 188,
            "target": "u",
            "old": [
              "324041/1000000",
              "744903/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "301396009301/500000000000"
              ],
              [
                "-1/1",
                "173477534517/250000000000"
              ],
              [
                "-1/1",
                "326891940267/500000000000"
              ],
              [
                "-1/1",
                "372451/500000"
              ],
              [
                "-1/1",
                "133250533261/250000000000"
              ],
              [
                "-1/1",
                "71536285837/125000000000"
              ],
              [
                "-1/1",
                "176403461587/250000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "372451/500000"
            ],
            "new": [
              "324041/1000000",
              "372451/500000"
            ]
          },
          {
            "factor": 194,
            "target": "z",
            "old": [
              "222729/1000000",
              "379813/500000"
            ],
            "lines": [
              [
                "1/1",
                "-9366724027/40000000000"
              ],
              [
                "1/1",
                "-659340698209/1000000000000"
              ],
              [
                "1/1",
                "-137960450837/500000000000"
              ],
              [
                "1/1",
                "-87636687401/125000000000"
              ],
              [
                "1/1",
                "-9667356337/40000000000"
              ],
              [
                "1/1",
                "-467844514979/1000000000000"
              ],
              [
                "1/1",
                "-214087232447/500000000000"
              ],
              [
                "1/1",
                "-81791883931/125000000000"
              ]
            ],
            "raw": [
              "9366724027/40000000000",
              "379813/500000"
            ],
            "new": [
              "29271/125000",
              "379813/500000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "614021/1000000",
              "1/1"
            ],
            "lines": [
              [
                "768953/1000000",
                "-270723/500000"
              ],
              [
                "440901/500000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "90241/146967",
              "1/1"
            ],
            "new": [
              "307011/500000",
              "1/1"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "310791/500000"
            ],
            "lines": [
              [
                "-768953/1000000",
                "69231529483/500000000000"
              ],
              [
                "-440901/500000",
                "51938706911/250000000000"
              ],
              [
                "-768953/1000000",
                "217631/500000"
              ],
              [
                "-440901/500000",
                "548111/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "548111/881802"
            ],
            "new": [
              "139/1000",
              "621581/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "768953/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "-90441/250000",
                "67191/250000"
              ],
              [
                "-10791/1000000",
                "-82209/1000000"
              ],
              [
                "-29991/40000",
                "26271/40000"
              ],
              [
                "-199401/500000",
                "152901/500000"
              ]
            ],
            "raw": [
              "768953/1000000",
              "8757/9997"
            ],
            "new": [
              "768953/1000000",
              "875963/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "6289/40000",
              "254099/500000"
            ],
            "lines": [
              [
                "-231047/1000000",
                "26910851483/1000000000000"
              ],
              [
                "-124037/1000000",
                "-28626161407/1000000000000"
              ],
              [
                "-231047/1000000",
                "116559629/1000000000"
              ],
              [
                "-124037/1000000",
                "19501559/1000000000"
              ]
            ],
            "raw": [
              "6289/40000",
              "116559629/231047000"
            ],
            "new": [
              "6289/40000",
              "100897/200000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "518989/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "231047/1000000",
                "-5173054583/40000000000"
              ],
              [
                "124037/1000000",
                "-4500068693/40000000000"
              ],
              [
                "231047/1000000",
                "-41911949159/200000000000"
              ],
              [
                "124037/1000000",
                "-31114961189/200000000000"
              ]
            ],
            "raw": [
              "5173054583/9241880000",
              "907/1000"
            ],
            "new": [
              "27987/50000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "440901/500000"
            ],
            "lines": [
              [
                "-80503/200000",
                "61903/200000"
              ],
              [
                "-11051/200000",
                "-7549/200000"
              ],
              [
                "-29991/40000",
                "26271/40000"
              ]
            ],
            "raw": [
              "617/1000",
              "8757/9997"
            ],
            "new": [
              "617/1000",
              "875963/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "6289/40000",
              "100897/200000"
            ],
            "lines": [
              [
                "64999/100000",
                "-28112023263/125000000000"
              ],
              [
                "757/1000",
                "-31244312973/125000000000"
              ],
              [
                "297/1250",
                "-28112023263/125000000000"
              ],
              [
                "34461/100000",
                "-31244312973/125000000000"
              ],
              [
                "64999/100000",
                "-51745345789/500000000000"
              ],
              [
                "757/1000",
                "-92389134919/500000000000"
              ],
              [
                "297/1250",
                "-51745345789/500000000000"
              ],
              [
                "34461/100000",
                "-92389134919/500000000000"
              ]
            ],
            "raw": [
              "51745345789/324995000000",
              "100897/200000"
            ],
            "new": [
              "79609/500000",
              "100897/200000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "29271/125000",
              "379813/500000"
            ],
            "lines": [
              [
                "-768953/1000000",
                "15305407989/50000000000"
              ],
              [
                "-875963/1000000",
                "185907327/500000000"
              ],
              [
                "-768953/1000000",
                "33057267/625000000"
              ],
              [
                "-875963/1000000",
                "5929906071/50000000000"
              ],
              [
                "-768953/1000000",
                "55699/100000"
              ],
              [
                "-875963/1000000",
                "83/125"
              ],
              [
                "-768953/1000000",
                "723/5000"
              ],
              [
                "-875963/1000000",
                "25161/100000"
              ]
            ],
            "raw": [
              "29271/125000",
              "664000/875963"
            ],
            "new": [
              "29271/125000",
              "758023/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "112707/500000",
              "29437/40000"
            ],
            "lines": [
              [
                "-22013/50000",
                "10076103/40000000"
              ],
              [
                "-93/1000",
                "7528631/200000000"
              ],
              [
                "-22013/50000",
                "12655115517/40000000000"
              ],
              [
                "-93/1000",
                "2438195309/200000000000"
              ],
              [
                "-22013/50000",
                "10712971/50000000"
              ],
              [
                "-93/1000",
                "0/1"
              ],
              [
                "-22013/50000",
                "15209345569/50000000000"
              ]
            ],
            "raw": [
              "112707/500000",
              "12655115517/17610400000"
            ],
            "new": [
              "112707/500000",
              "718617/1000000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "96283/500000",
              "162963/250000"
            ],
            "lines": [
              [
                "-617/1000",
                "98463135549/500000000000"
              ],
              [
                "-875963/1000000",
                "88983812571/250000000000"
              ],
              [
                "-617/1000",
                "155001/500000"
              ],
              [
                "-875963/1000000",
                "113793/200000"
              ],
              [
                "-617/1000",
                "89842339539/250000000000"
              ],
              [
                "-875963/1000000",
                "259189168671/500000000000"
              ]
            ],
            "raw": [
              "96283/500000",
              "568965/875963"
            ],
            "new": [
              "96283/500000",
              "649531/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "372451/500000"
            ],
            "lines": [
              [
                "-161743/200000",
                "424196694321/1000000000000"
              ],
              [
                "-161743/200000",
                "490130798811/1000000000000"
              ],
              [
                "-161743/200000",
                "519170823219/1000000000000"
              ],
              [
                "-161743/200000",
                "585104927709/1000000000000"
              ],
              [
                "-907/1000",
                "249886619963/500000000000"
              ],
              [
                "-907/1000",
                "288112411133/500000000000"
              ],
              [
                "-907/1000",
                "74343421103/125000000000"
              ],
              [
                "-907/1000",
                "167799737791/250000000000"
              ],
              [
                "-161743/200000",
                "87909197593/500000000000"
              ],
              [
                "-161743/200000",
                "96426337513/500000000000"
              ],
              [
                "-161743/200000",
                "496169032979/1000000000000"
              ],
              [
                "-161743/200000",
                "513203312819/1000000000000"
              ],
              [
                "-907/1000",
                "251394940791/1000000000000"
              ],
              [
                "-907/1000",
                "278946698481/1000000000000"
              ],
              [
                "-907/1000",
                "71468197323/125000000000"
              ],
              [
                "-907/1000",
                "299648668137/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "167799737791/226750000000"
            ],
            "new": [
              "324041/1000000",
              "740021/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "768953/1000000",
              "875963/1000000"
            ],
            "lines": [
              [
                "133943/200000",
                "-330758727/500000000"
              ],
              [
                "93567/500000",
                "-276368470233/500000000000"
              ],
              [
                "133943/200000",
                "-592962237/1000000000"
              ],
              [
                "93567/500000",
                "-246171326523/1000000000000"
              ],
              [
                "96/125",
                "-330758727/500000000"
              ],
              [
                "285419/1000000",
                "-276368470233/500000000000"
              ],
              [
                "96/125",
                "-592962237/1000000000"
              ],
              [
                "285419/1000000",
                "-246171326523/1000000000000"
              ]
            ],
            "raw": [
              "197654079/256000000",
              "875963/1000000"
            ],
            "new": [
              "386043/500000",
              "875963/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "161743/200000",
              "907/1000"
            ],
            "lines": [
              [
                "386043/500000",
                "-24026169/31250000"
              ],
              [
                "386043/500000",
                "-64540683027/62500000000"
              ],
              [
                "875963/1000000",
                "-783276311/1000000000"
              ],
              [
                "875963/1000000",
                "-1097218897969/1000000000000"
              ],
              [
                "386043/500000",
                "-700282191/1000000000"
              ],
              [
                "386043/500000",
                "-726085314489/1000000000000"
              ],
              [
                "875963/1000000",
                "-357360547/500000000"
              ],
              [
                "875963/1000000",
                "-395326642013/500000000000"
              ]
            ],
            "raw": [
              "357360547/437981500",
              "907/1000"
            ],
            "new": [
              "407963/500000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "96283/500000",
              "649531/1000000"
            ],
            "lines": [
              [
                "386043/500000",
                "-42611051/200000000"
              ],
              [
                "386043/500000",
                "-85854651829/200000000000"
              ],
              [
                "875963/1000000",
                "-113747079/500000000"
              ],
              [
                "875963/1000000",
                "-246920614341/500000000000"
              ],
              [
                "386043/500000",
                "-31046807/200000000"
              ],
              [
                "386043/500000",
                "-34141598953/200000000000"
              ],
              [
                "875963/1000000",
                "-84836469/500000000"
              ],
              [
                "875963/1000000",
                "-117637982151/500000000000"
              ]
            ],
            "raw": [
              "84836469/437981500",
              "649531/1000000"
            ],
            "new": [
              "96849/500000",
              "649531/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "118963/1000000",
              "531353/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "24082551347/62500000000"
              ],
              [
                "-1/1",
                "58109144027/125000000000"
              ],
              [
                "-1/1",
                "55745208667/125000000000"
              ],
              [
                "-1/1",
                "262757/500000"
              ],
              [
                "-1/1",
                "152039122511/500000000000"
              ],
              [
                "-1/1",
                "329214089851/1000000000000"
              ],
              [
                "-1/1",
                "500378155171/1000000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "262757/500000"
            ],
            "new": [
              "118963/1000000",
              "262757/500000"
            ]
          },
          {
            "factor": 188,
            "target": "u",
            "old": [
              "324041/1000000",
              "740021/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "151286537993/250000000000"
              ],
              [
                "-1/1",
                "344451192413/500000000000"
              ],
              [
                "-1/1",
                "327653383573/500000000000"
              ],
              [
                "-1/1",
                "739063/1000000"
              ],
              [
                "-1/1",
                "267226417667/500000000000"
              ],
              [
                "-1/1",
                "570858503647/1000000000000"
              ],
              [
                "-1/1",
                "702657331687/1000000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "739063/1000000"
            ],
            "new": [
              "324041/1000000",
              "739063/1000000"
            ]
          },
          {
            "factor": 194,
            "target": "z",
            "old": [
              "29271/125000",
              "758023/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-117202596967/500000000000"
              ],
              [
                "1/1",
                "-659576910431/1000000000000"
              ],
              [
                "1/1",
                "-55095838411/200000000000"
              ],
              [
                "1/1",
                "-87581363569/125000000000"
              ],
              [
                "1/1",
                "-60656210513/250000000000"
              ],
              [
                "1/1",
                "-235801385209/500000000000"
              ],
              [
                "1/1",
                "-42406748429/100000000000"
              ],
              [
                "1/1",
                "-40815338291/62500000000"
              ]
            ],
            "raw": [
              "117202596967/500000000000",
              "758023/1000000"
            ],
            "new": [
              "46881/200000",
              "758023/1000000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "307011/500000",
              "1/1"
            ],
            "lines": [
              [
                "386043/500000",
                "-270723/500000"
              ],
              [
                "875963/1000000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "541446/875963",
              "1/1"
            ],
            "new": [
              "123623/200000",
              "1/1"
            ]
          },
          {
            "factor": 219,
            "target": "g",
            "old": [
              "118963/1000000",
              "262757/500000"
            ],
            "lines": [
              [
                "82094696479/200000000000",
                "-81849207/1000000000"
              ],
              [
                "10216328466623/90700000000000",
                "-57440613093/453500000000"
              ],
              [
                "1898725657/4000000000",
                "-11438721/125000000"
              ],
              [
                "32079975771743/181400000000000",
                "-123643355013/907000000000"
              ],
              [
                "664073/1000000",
                "-81849207/1000000000"
              ],
              [
                "82641001/453500000",
                "-57440613093/453500000000"
              ],
              [
                "15359/20000",
                "-11438721/125000000"
              ],
              [
                "259498441/907000000",
                "-123643355013/907000000000"
              ]
            ],
            "raw": [
              "11438721/95993750",
              "262757/500000"
            ],
            "new": [
              "119161/1000000",
              "262757/500000"
            ]
          },
          {
            "factor": 2073,
            "target": "x",
            "old": [
              "112707/500000",
              "718617/1000000"
            ],
            "lines": [
              [
                "883/1000",
                "-112233641239101/500000000000000"
              ],
              [
                "883/1000",
                "-221080280131041/1000000000000000"
              ],
              [
                "883/1000",
                "-329245238347161/1000000000000000"
              ],
              [
                "883/1000",
                "-81464559/250000000"
              ],
              [
                "883/1000",
                "-63682816555353/250000000000000"
              ],
              [
                "883/1000",
                "-135807578848173/500000000000000"
              ],
              [
                "883/1000",
                "-154487172262533/500000000000000"
              ],
              [
                "883/1000",
                "-21199552349079/100000000000000"
              ],
              [
                "883/1000",
                "-40050981006339/200000000000000"
              ],
              [
                "883/1000",
                "-67519770891819/200000000000000"
              ],
              [
                "883/1000",
                "-121129753617/500000000000"
              ],
              [
                "883/1000",
                "-250789782597/1000000000000"
              ],
              [
                "883/1000",
                "-317327960637/1000000000000"
              ]
            ],
            "raw": [
              "40050981006339/176600000000000",
              "718617/1000000"
            ],
            "new": [
              "226789/1000000",
              "718617/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 1,
      "assumptions": [
        "AGO+",
        "AGP-",
        "DGP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "386043/500000",
          "79609/500000",
          "27987/50000",
          "617/1000",
          "119161/1000000",
          "123623/200000",
          "46881/200000",
          "226789/1000000",
          "407963/500000",
          "324041/1000000",
          "96849/500000"
        ],
        "high": [
          "621581/1000000",
          "535/907",
          "875963/1000000",
          "100897/200000",
          "907/1000",
          "875963/1000000",
          "262757/500000",
          "1",
          "758023/1000000",
          "718617/1000000",
          "907/1000",
          "739063/1000000",
          "649531/1000000"
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
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": -1,
        "DGP": 1,
        "ACO": 1,
        "AOP": -1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGP": -1,
        "GHP": -1,
        "GOP": -1,
        "EGP": 1,
        "DGH": -1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADG": 1,
        "BEG": 1,
        "BEO": 1,
        "BDG": 1,
        "BDO": 1
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
          "sign": 1,
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
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
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
            "plu",
            "BADEG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BEG",
            "ABE",
            "ABG",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
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
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
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
        "L_CDH": {
          "triangle": "CDH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDH",
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEF",
            "points": []
          }
        },
        "L_CFH": {
          "triangle": "CFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
            "points": [
              "P"
            ]
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
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
            "points": [
              "P"
            ]
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
            "triangle": "COP",
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDO",
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
            "triangle": "FOP",
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
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ABO": {
          "triangle": "ABO",
          "side": "hi",
          "value": "557836721843639/907000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ABO",
            "used": [
              0,
              1,
              9,
              10
            ],
            "values": [
              "52320239519/500000000000",
              "22895531/200000000",
              "80979759947/500000000000",
              "10737293491/62500000000",
              "86502285519/500000000000",
              "182841747/1000000000",
              "231832309201963/907000000000000",
              "280556899201963/907000000000000",
              "390747379597/907000000000",
              "233835229981/500000000000",
              "119376908981/250000000000",
              "439471969597/907000000000",
              "452753611041/907000000000",
              "501478201041/907000000000",
              "509112131843639/907000000000000",
              "557836721843639/907000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "875963/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "337843744517/500000000000",
              "714996519497/1000000000000",
              "375264523/500000000",
              "786524903/1000000000",
              "836653969537/1000000000000",
              "839967143/1000000000",
              "875963/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "772627347/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "291018787079/1000000000000",
              "77801690661/250000000000",
              "361335747443/1000000000000",
              "195492108453/500000000000",
              "138542189659/250000000000",
              "596729727147/1000000000000",
              "77114712839/125000000000",
              "155633212659/250000000000",
              "624485719/1000000000",
              "312242900369/500000000000",
              "667046687511/1000000000000",
              "692849811/1000000000",
              "346424946369/500000000000",
              "348347578487/500000000000",
              "140852651/200000000",
              "772627347/1000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ADO": {
          "triangle": "ADO",
          "side": "hi",
          "value": "381707389999/500000000000",
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
              "27612635593/125000000000",
              "34811522029/125000000000",
              "299203842407/1000000000000",
              "38996885593/125000000000",
              "46195772029/125000000000",
              "390277842407/1000000000000",
              "82856453151/200000000000",
              "101071253151/200000000000",
              "526606911971/1000000000000",
              "118807604467/200000000000",
              "617680911971/1000000000000",
              "331198500747/500000000000",
              "336170389999/500000000000",
              "137022404467/200000000000",
              "376735500747/500000000000",
              "381707389999/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_AOP": {
          "triangle": "AOP",
          "side": "hi",
          "value": "277597739639/500000000000",
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
              "-147524477661/1000000000000",
              "-118012767627/1000000000000",
              "8578080599/200000000000",
              "11327399119/200000000000",
              "72402113029/1000000000000",
              "86148705629/1000000000000",
              "103568963007/1000000000000",
              "24709570717/200000000000",
              "133080673041/1000000000000",
              "133414704711/1000000000000",
              "27458889237/200000000000",
              "20001863229/125000000000",
              "1800448653/10000000000",
              "94763307933/500000000000",
              "190857277247/1000000000000",
              "200724128373/1000000000000",
              "204603869847/1000000000000",
              "51736718311/250000000000",
              "104778287667/500000000000",
              "118229291639/500000000000",
              "120336178211/500000000000",
              "76995445021/250000000000",
              "92614936489/250000000000",
              "384508145379/1000000000000",
              "39997145599/100000000000",
              "225558598273/500000000000",
              "451817569041/1000000000000",
              "57623005959/125000000000",
              "7623219619/15625000000",
              "32401663763/62500000000",
              "264146735667/500000000000",
              "277597739639/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDG": {
          "triangle": "CDG",
          "side": "hi",
          "value": "502154922647/1000000000000",
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
              "84872681867/1000000000000",
              "46341440933/500000000000",
              "149571393821/1000000000000",
              "149820687733/1000000000000",
              "7869079691/50000000000",
              "17781605659/100000000000",
              "823484627/4000000000",
              "106011377359/500000000000",
              "214519399687/1000000000000",
              "33852395327/125000000000",
              "17295091667/62500000000",
              "148577964721/500000000000",
              "76563009959/200000000000",
              "82174029991/200000000000",
              "475818155821/1000000000000",
              "502154922647/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "61741980571/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "216138207189/1000000000000",
              "131753038467/500000000000",
              "131903525429/500000000000",
              "87710997187/250000000000",
              "51857932431/100000000000",
              "26519143391/50000000000",
              "113189438811/200000000000",
              "61741980571/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "464098001/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "4535845279/8000000000",
              "2292177919/4000000000",
              "30717426481/50000000000",
              "16502035441/25000000000",
              "84115906411/100000000000",
              "174233514251/200000000000",
              "918535441/1000000000",
              "464098001/500000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "378401/500000",
          "witness": {
            "kind": "vertices",
            "signed": "CFG",
            "used": [
              2,
              5,
              6,
              8
            ],
            "values": [
              "64506622511/500000000000",
              "154149089851/1000000000000",
              "21021906617/100000000000",
              "54184257637/200000000000",
              "57949355597/200000000000",
              "325313155171/1000000000000",
              "350449/1000000",
              "267683122511/500000000000",
              "560502089851/1000000000000",
              "61657206617/100000000000",
              "135454857637/200000000000",
              "139219955597/200000000000",
              "731666155171/1000000000000",
              "378401/500000"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "875963/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "617/1000",
              "67622501711/100000000000",
              "143178817051/200000000000",
              "167258786371/200000000000",
              "875963/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "69724051821/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HCO",
            "used": [
              2,
              7,
              9,
              10
            ],
            "values": [
              "32773493369/500000000000",
              "21167010409/250000000000",
              "145324441/1000000000",
              "77492501/500000000",
              "292908786481/1000000000000",
              "19591049983/62500000000",
              "72645149369/200000000000",
              "39323425399/100000000000",
              "278687493369/500000000000",
              "144124010409/250000000000",
              "596915050701/1000000000000",
              "154365765987/250000000000",
              "637152441/1000000000",
              "323406501/500000000",
              "133446402213/200000000000",
              "69724051821/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_DFH": {
          "triangle": "DFH",
          "side": "hi",
          "value": "783861792811/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DFH",
            "used": [
              3,
              5,
              7
            ],
            "values": [
              "61146551/200000000",
              "86810561189/200000000000",
              "45199471/100000000",
              "48142067569/100000000000",
              "259381247/500000000",
              "665024449/1000000000",
              "368246961533/500000000000",
              "783861792811/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "353145359413/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "96227143677/1000000000000",
              "20872545057/200000000000",
              "216239373/1000000000",
              "254717820147/1000000000000",
              "52570680351/200000000000",
              "306997876647/1000000000000",
              "77122337257/200000000000",
              "7742499779/15625000000",
              "248744167/500000000",
              "108820472551/200000000000",
              "327005331163/500000000000",
              "353145359413/500000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "0": {
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
        "1": {
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
        "2": {
          "row": [
            "fan",
            "ACO",
            "ACP",
            "COP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "P"
          }
        },
        "4": {
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
        "12": {
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
        "15": {
          "row": [
            "fan",
            "CFG",
            "CFP",
            "FGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "P"
          }
        },
        "20": {
          "row": [
            "fan",
            "FHP",
            "FHO",
            "HOP",
            "FOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FHP",
            "point": "O"
          }
        },
        "55": {
          "row": [
            "plu",
            "ACG",
            "AOP",
            "ACO",
            "AGP",
            "ACP",
            "AGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACGOP"
          }
        },
        "191": {
          "row": [
            "plu",
            "CDF",
            "CEH",
            "CDE",
            "CFH",
            "CDH",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CDEFH"
          }
        },
        "353": {
          "row": [
            "plu",
            "CEF",
            "DFH",
            "CDF",
            "EFH",
            "CFH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEH"
          }
        },
        "384": {
          "row": [
            "plu",
            "ACG",
            "DGO",
            "ADG",
            "CGO",
            "AGO",
            "CDG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GACDO"
          }
        },
        "535": {
          "row": [
            "plu",
            "ACP",
            "HOP",
            "AHP",
            "COP",
            "AOP",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PACHO"
          }
        },
        "637": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "651": {
          "row": [
            "support",
            "ACH",
            "ACP",
            "AHP",
            "13857/20000"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "ACPH",
            "occupants": [
              "G"
            ],
            "rate": "149/20"
          }
        },
        "775": {
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
        "1290": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "FHO"
              ],
              [
                -1,
                "ACO",
                "FGH"
              ],
              [
                1,
                "AFH",
                "CGO"
              ],
              [
                1,
                "AGO",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACG",
            "point": "O",
            "line": "FH"
          }
        },
        "1638": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CDH",
                "FGP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGP",
                "DFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDF",
            "point": "H",
            "line": "GP"
          }
        },
        "1656": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "DGH"
              ],
              [
                -1,
                "ADO",
                "CGH"
              ],
              [
                -1,
                "AGO",
                "CDH"
              ],
              [
                -1,
                "AHO",
                "CDG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDG",
            "point": "H",
            "line": "AO"
          }
        },
        "1760": {
          "row": [
            "balance",
            [
              [
                1,
                "CDP",
                "FGH"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGH",
                "DFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "H",
            "line": "DP"
          }
        },
        "1932": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CFP",
                "DGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DGH",
            "point": "P",
            "line": "CF"
          }
        },
        "2087": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "AHO": "-93/1000",
              "AGH": "772627347/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "G",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "772627347/1000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "307627347/1000000000"
          }
        },
        "2261": {
          "row": [
            "linear",
            {
              "ADH": "-93/1000",
              "AHO": "-93/1000",
              "AGH": "381707389999/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ADO",
            "point": "G",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ADO",
              "ref": "U_ADO",
              "value": "381707389999/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "DGO",
                "ref": "L_DGO",
                "value": "93/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ADG",
                "ref": "L_ADG",
                "value": "93/1000"
              }
            ],
            "residual": "242207389999/500000000000"
          }
        },
        "2397": {
          "row": [
            "linear",
            {
              "COP": "-93/1000",
              "ACP": "184597739639/500000000000",
              "CGP": "-277597739639/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "OAP",
            "point": "G",
            "line": "CP",
            "side": "upper",
            "outer_upper": {
              "triangle": "AOP",
              "ref": "U_AOP",
              "value": "277597739639/500000000000"
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
            "residual": "138097739639/500000000000"
          }
        },
        "2663": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "ADH": "-93/1000",
              "AGH": "-93/1000",
              "AHP": "502154922647/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "502154922647/1000000000000"
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
            "residual": "223154922647/1000000000000"
          }
        },
        "2702": {
          "row": [
            "linear",
            {
              "CEG": "-93/1000",
              "DEG": "-93/1000",
              "EGP": "502154922647/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "EG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "502154922647/1000000000000"
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
            "residual": "223154922647/1000000000000"
          }
        },
        "2975": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "AFH": "-279/1000",
              "AHO": "875963/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "875963/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "410963/1000000"
          }
        },
        "3152": {
          "row": [
            "linear",
            {
              "AGH": "-93/1000",
              "ACG": "51124051821/100000000000",
              "AGO": "-93/1000",
              "AGP": "-69724051821/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "69724051821/100000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "41824051821/100000000000"
          }
        },
        "3230": {
          "row": [
            "linear",
            {
              "CFP": "260145359413/500000000000",
              "CHP": "-93/1000",
              "COP": "-353145359413/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "353145359413/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "213645359413/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0002",
          "relation": 1,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "100157/250000",
          "sources": [
            "U_ACO",
            "L_CGO",
            "L_AGO"
          ]
        },
        {
          "id": "T0005",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "100157/250000",
          "sources": [
            "U_ACO",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0033",
          "relation": 55,
          "rule": "sumlo",
          "triangle": "ACG",
          "side": "lo",
          "value": "32909/250000",
          "sources": [
            "L_ACO",
            "L_AGP",
            "L_ACP",
            "L_AGO",
            "U_AOP"
          ]
        },
        {
          "id": "T0045",
          "relation": 191,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "97373/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "L_CDH",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0052",
          "relation": 353,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "46877/500000",
          "sources": [
            "T0045",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0056",
          "relation": 384,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "129531/1000000",
          "sources": [
            "L_ADG",
            "L_CGO",
            "L_AGO",
            "L_CDG",
            "T0002"
          ]
        },
        {
          "id": "T0061",
          "relation": 535,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "129531/1000000",
          "sources": [
            "L_AHP",
            "L_COP",
            "L_AOP",
            "L_CHP",
            "T0005"
          ]
        },
        {
          "id": "T0064",
          "relation": 637,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "29203/200000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0068",
          "relation": 775,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CFH"
          ]
        },
        {
          "id": "T0074",
          "relation": 1290,
          "rule": "balance_lo",
          "triangle": "FGH",
          "side": "lo",
          "value": "4749/31250",
          "sources": [
            "T0033",
            "L_FHO",
            "T0064",
            "L_CGO",
            "L_AGO",
            "L_CFH",
            "U_ACO"
          ]
        },
        {
          "id": "T0083",
          "relation": 1760,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "28811/250000",
          "sources": [
            "L_CDP",
            "T0074",
            "L_CFH",
            "L_DGP",
            "L_CGH",
            "L_DFP",
            "U_CFG"
          ]
        },
        {
          "id": "T0099",
          "relation": 2397,
          "rule": "linear",
          "triangle": "ACP",
          "side": "lo",
          "value": "163279/1000000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0113",
          "relation": 3152,
          "rule": "linear",
          "triangle": "ACG",
          "side": "lo",
          "value": "16067/100000",
          "sources": [
            "L_AGH",
            "L_AGO",
            "L_AGP"
          ]
        },
        {
          "id": "T0118",
          "relation": 3230,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "14287/100000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0120",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "34667/100000",
          "sources": [
            "T0113",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0125",
          "relation": 4,
          "rule": "sum",
          "triangle": "ADO",
          "side": "lo",
          "value": "315531/1000000",
          "sources": [
            "L_ADG",
            "T0056",
            "L_AGO"
          ]
        },
        {
          "id": "T0129",
          "relation": 12,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "75311/250000",
          "sources": [
            "L_CDP",
            "T0083",
            "L_CHP"
          ]
        },
        {
          "id": "T0136",
          "relation": 20,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "315531/1000000",
          "sources": [
            "L_FHO",
            "T0061",
            "L_FOP"
          ]
        },
        {
          "id": "T0143",
          "relation": 191,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "99847/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0129",
            "T0052",
            "U_CEH"
          ]
        },
        {
          "id": "T0148",
          "relation": 353,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "2939/31250",
          "sources": [
            "T0143",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0160",
          "relation": 1656,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "107823/1000000",
          "sources": [
            "T0125",
            "L_CGH",
            "L_AGO",
            "T0129",
            "L_AHO",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0162",
          "relation": 1932,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "23553/200000",
          "sources": [
            "T0143",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0118",
            "T0160",
            "U_CFG"
          ]
        },
        {
          "id": "T0172",
          "relation": 12,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "60753/200000",
          "sources": [
            "L_CDP",
            "T0162",
            "L_CHP"
          ]
        },
        {
          "id": "T0180",
          "relation": 191,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "50099/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0172",
            "T0148",
            "U_CEH"
          ]
        },
        {
          "id": "T0184",
          "relation": 353,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "94089/1000000",
          "sources": [
            "T0180",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0192",
          "relation": 1656,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "54063/500000",
          "sources": [
            "T0125",
            "L_CGH",
            "L_AGO",
            "T0172",
            "L_AHO",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0193",
          "relation": 1932,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "58933/500000",
          "sources": [
            "T0180",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0118",
            "T0192",
            "U_CFG"
          ]
        },
        {
          "id": "T0199",
          "relation": 12,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "151933/500000",
          "sources": [
            "L_CDP",
            "T0193",
            "L_CHP"
          ]
        },
        {
          "id": "T0206",
          "relation": 191,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "100221/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0199",
            "T0184",
            "U_CEH"
          ]
        },
        {
          "id": "T0211",
          "relation": 353,
          "rule": "sumlo",
          "triangle": "DFH",
          "side": "lo",
          "value": "3752/15625",
          "sources": [
            "T0206",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "T0068"
          ]
        },
        {
          "id": "T0217",
          "relation": 1638,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "155627/1000000",
          "sources": [
            "T0206",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "L_CGP",
            "T0211",
            "U_CDH"
          ]
        },
        {
          "id": "T0226",
          "relation": 15,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "391497/1000000",
          "sources": [
            "T0118",
            "T0217",
            "L_CGP"
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
        "16": {
          "name": "AREA_LO_ACH",
          "terms": [
            [
              [
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
              "-1"
            ],
            [
              [],
              "-34667/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACH",
            "side": "lo",
            "reference": "T0120",
            "value": "34667/100000"
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
        "62": {
          "name": "AREA_LO_DEF",
          "terms": [
            [
              [
                4,
                5
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
                5
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
            "triangle": "DEF",
            "side": "lo",
            "reference": "L_DEF",
            "value": "93/1000"
          }
        },
        "74": {
          "name": "AREA_LO_CDG",
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
                3,
                6
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
            "triangle": "CDG",
            "side": "lo",
            "reference": "L_CDG",
            "value": "279/1000"
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
              "907/1000"
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
            "reference": "L_EFO",
            "value": "93/1000"
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
        "114": {
          "name": "AREA_LO_FHP",
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
                7,
                11
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
                11
              ],
              "1"
            ],
            [
              [],
              "-315531/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHP",
            "side": "lo",
            "reference": "T0136",
            "value": "315531/1000000"
          }
        },
        "126": {
          "name": "AREA_LO_ACG",
          "terms": [
            [
              [
                2,
                8
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
                6
              ],
              "1"
            ],
            [
              [],
              "-16067/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACG",
            "side": "lo",
            "reference": "T0113",
            "value": "16067/100000"
          }
        },
        "132": {
          "name": "AREA_LO_COP",
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
                2,
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
                2,
                10
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
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "140": {
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "148": {
          "name": "AREA_LO_ACP",
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
                0,
                2
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
              "-163279/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "T0099",
            "value": "163279/1000000"
          }
        },
        "152": {
          "name": "AREA_LO_CFG",
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
                2,
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
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-391497/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0226",
            "value": "391497/1000000"
          }
        },
        "188": {
          "name": "AREA_LO_CFP",
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
                2,
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
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-14287/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0118",
            "value": "14287/100000"
          }
        },
        "214": {
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
        "219": {
          "name": "Central_g",
          "terms": [
            [
              [
                2,
                6,
                7
              ],
              "1"
            ],
            [
              [
                1,
                6,
                7
              ],
              "-1"
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
            "kind": "setup",
            "name": "Central_g"
          }
        },
        "224": {
          "name": "Central_endpoint_tangent_1",
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
              "-1/5"
            ],
            [
              [
                2
              ],
              "1/100"
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
            "t": "1/10"
          }
        },
        "363": {
          "name": "SUPPORT_YCAP_651",
          "terms": [
            [
              [
                2,
                7
              ],
              "-146111/500000"
            ],
            [
              [
                0,
                2
              ],
              "146111/500000"
            ],
            [
              [
                7,
                11
              ],
              "13857/20000"
            ],
            [
              [
                0,
                11
              ],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 651,
            "which": "Y",
            "value": "100157/250000",
            "reference": "T0005"
          }
        },
        "1171": {
          "name": "LINEAR_2087",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
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
                7,
                9
              ],
              "-93/1000"
            ],
            [
              [
                0,
                9
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "772627347/1000000000"
            ],
            [
              [
                0,
                6
              ],
              "-772627347/1000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2087
          }
        },
        "1345": {
          "name": "LINEAR_2261",
          "terms": [
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
              "93/1000"
            ],
            [
              [
                7,
                9
              ],
              "-93/1000"
            ],
            [
              [
                0,
                9
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "381707389999/500000000000"
            ],
            [
              [
                0,
                6
              ],
              "-381707389999/500000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2261
          }
        },
        "1747": {
          "name": "LINEAR_2663",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
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
                7
              ],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                6
              ],
              "93/1000"
            ],
            [
              [
                7,
                11
              ],
              "502154922647/1000000000000"
            ],
            [
              [
                0,
                11
              ],
              "-502154922647/1000000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2663
          }
        },
        "1786": {
          "name": "LINEAR_2702",
          "terms": [
            [
              [
                8
              ],
              "409154922647/1000000000000"
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
                4,
                6
              ],
              "-316154922647/1000000000000"
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
                4
              ],
              "-93/1000"
            ],
            [
              [
                3,
                6
              ],
              "-93/1000"
            ],
            [
              [
                3
              ],
              "93/1000"
            ],
            [
              [
                6,
                12
              ],
              "502154922647/1000000000000"
            ],
            [
              [
                12
              ],
              "-502154922647/1000000000000"
            ],
            [
              [
                8,
                11
              ],
              "-502154922647/1000000000000"
            ],
            [
              [
                4,
                11
              ],
              "502154922647/1000000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2702
          }
        },
        "2059": {
          "name": "LINEAR_2975",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
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
                5,
                7
              ],
              "-279/1000"
            ],
            [
              [
                0,
                5
              ],
              "279/1000"
            ],
            [
              [
                7,
                9
              ],
              "875963/1000000"
            ],
            [
              [
                0,
                9
              ],
              "-875963/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2975
          }
        }
      },
      "coordinate": {
        "low": [
          "27923/200000",
          "13503/125000",
          "157259/200000",
          "48099/250000",
          "9432/15625",
          "617/1000",
          "15581/100000",
          "9714/15625",
          "282241/1000000",
          "139999/500000",
          "20591/25000",
          "359681/1000000",
          "21059/100000"
        ],
        "high": [
          "403/800",
          "23517/40000",
          "870917/1000000",
          "489889/1000000",
          "907/1000",
          "870917/1000000",
          "23971/50000",
          "1/1",
          "357183/500000",
          "86871/125000",
          "28041/31250",
          "363103/500000",
          "76041/125000"
        ],
        "steps": [
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "621581/1000000"
            ],
            "lines": [
              [
                "-386043/500000",
                "13056793789/100000000000"
              ],
              [
                "-875963/1000000",
                "38955173949/200000000000"
              ],
              [
                "-386043/500000",
                "53177/125000"
              ],
              [
                "-875963/1000000",
                "529293/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "529293/875963"
            ],
            "new": [
              "139/1000",
              "302121/500000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "386043/500000",
              "875963/1000000"
            ],
            "lines": [
              [
                "-200261/500000",
                "153761/500000"
              ],
              [
                "-11051/200000",
                "-7549/200000"
              ],
              [
                "-373891/500000",
                "327391/500000"
              ],
              [
                "-80503/200000",
                "61903/200000"
              ]
            ],
            "raw": [
              "386043/500000",
              "10561/12061"
            ],
            "new": [
              "386043/500000",
              "875633/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "79609/500000",
              "100897/200000"
            ],
            "lines": [
              [
                "-113957/500000",
                "864314559/25000000000"
              ],
              [
                "-124367/1000000",
                "-1169340771/50000000000"
              ],
              [
                "-113957/500000",
                "56858999/500000000"
              ],
              [
                "-124367/1000000",
                "19800869/1000000000"
              ]
            ],
            "raw": [
              "79609/500000",
              "56858999/113957000"
            ],
            "new": [
              "79609/500000",
              "62369/125000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "27987/50000",
              "907/1000"
            ],
            "lines": [
              [
                "113957/500000",
                "-32322002813/250000000000"
              ],
              [
                "124367/1000000",
                "-56400732503/500000000000"
              ],
              [
                "113957/500000",
                "-12919884133/62500000000"
              ],
              [
                "124367/1000000",
                "-19381645423/125000000000"
              ]
            ],
            "raw": [
              "32322002813/56978500000",
              "907/1000"
            ],
            "new": [
              "283633/500000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "875963/1000000"
            ],
            "lines": [
              [
                "-25503/62500",
                "39381/125000"
              ],
              [
                "-34157/500000",
                "-12343/500000"
              ],
              [
                "-373891/500000",
                "327391/500000"
              ]
            ],
            "raw": [
              "617/1000",
              "10561/12061"
            ],
            "new": [
              "617/1000",
              "875633/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "79609/500000",
              "62369/125000"
            ],
            "lines": [
              [
                "26117/40000",
                "-22557581883/100000000000"
              ],
              [
                "94559/125000",
                "-49969550673/200000000000"
              ],
              [
                "61643/250000",
                "-22557581883/100000000000"
              ],
              [
                "350119/1000000",
                "-49969550673/200000000000"
              ],
              [
                "26117/40000",
                "-53117972989/500000000000"
              ],
              [
                "94559/125000",
                "-184726953559/1000000000000"
              ],
              [
                "61643/250000",
                "-53117972989/500000000000"
              ],
              [
                "350119/1000000",
                "-184726953559/1000000000000"
              ]
            ],
            "raw": [
              "53117972989/326462500000",
              "62369/125000"
            ],
            "new": [
              "162707/1000000",
              "62369/125000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "46881/200000",
              "758023/1000000"
            ],
            "lines": [
              [
                "-386043/500000",
                "2484661891/8000000000"
              ],
              [
                "-875633/1000000",
                "9364667257/25000000000"
              ],
              [
                "-386043/500000",
                "2970492589/50000000000"
              ],
              [
                "-875633/1000000",
                "24682761137/200000000000"
              ],
              [
                "-386043/500000",
                "22397/40000"
              ],
              [
                "-875633/1000000",
                "41467/62500"
              ],
              [
                "-386043/500000",
                "38393/250000"
              ],
              [
                "-875633/1000000",
                "257119/1000000"
              ]
            ],
            "raw": [
              "46881/200000",
              "663472/875633"
            ],
            "new": [
              "46881/200000",
              "378853/500000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "226789/1000000",
              "718617/1000000"
            ],
            "lines": [
              [
                "-216367/500000",
                "12224861/50000000"
              ],
              [
                "-93/1000",
                "17440671/500000000"
              ],
              [
                "-216367/500000",
                "15440445089/50000000000"
              ],
              [
                "-93/1000",
                "5663300079/500000000000"
              ],
              [
                "-216367/500000",
                "104807939/500000000"
              ],
              [
                "-93/1000",
                "0/1"
              ],
              [
                "-216367/500000",
                "148741150811/500000000000"
              ]
            ],
            "raw": [
              "226789/1000000",
              "15440445089/21636700000"
            ],
            "new": [
              "226789/1000000",
              "713623/1000000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "96849/500000",
              "649531/1000000"
            ],
            "lines": [
              [
                "-617/1000",
                "37918470457/200000000000"
              ],
              [
                "-875633/1000000",
                "8736432227/25000000000"
              ],
              [
                "-617/1000",
                "301469/1000000"
              ],
              [
                "-875633/1000000",
                "280051/500000"
              ],
              [
                "-617/1000",
                "69616605751/200000000000"
              ],
              [
                "-875633/1000000",
                "10158959311/20000000000"
              ]
            ],
            "raw": [
              "96849/500000",
              "560102/875633"
            ],
            "new": [
              "96849/500000",
              "319827/500000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "46881/200000",
              "378853/500000"
            ],
            "lines": [
              [
                "386043/500000",
                "-10057063/40000000"
              ],
              [
                "386043/500000",
                "-11103894157/20000000000"
              ],
              [
                "875633/1000000",
                "-33227451/125000000"
              ],
              [
                "875633/1000000",
                "-38610134639/62500000000"
              ],
              [
                "386043/500000",
                "-48735877/250000000"
              ],
              [
                "386043/500000",
                "-38707394803/125000000000"
              ],
              [
                "875633/1000000",
                "-209336541/1000000000"
              ],
              [
                "875633/1000000",
                "-186113302399/500000000000"
              ]
            ],
            "raw": [
              "209336541/875633000",
              "378853/500000"
            ],
            "new": [
              "59767/250000",
              "378853/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "739063/1000000"
            ],
            "lines": [
              [
                "-407963/500000",
                "43134210333/100000000000"
              ],
              [
                "-407963/500000",
                "247885973023/500000000000"
              ],
              [
                "-407963/500000",
                "262820437731/500000000000"
              ],
              [
                "-407963/500000",
                "295035359089/500000000000"
              ],
              [
                "-907/1000",
                "250829531847/500000000000"
              ],
              [
                "-907/1000",
                "17984979559/31250000000"
              ],
              [
                "-907/1000",
                "297978917913/500000000000"
              ],
              [
                "-907/1000",
                "33490905901/50000000000"
              ],
              [
                "-407963/500000",
                "94081817199/500000000000"
              ],
              [
                "-407963/500000",
                "103208035591/500000000000"
              ],
              [
                "-407963/500000",
                "249784474917/500000000000"
              ],
              [
                "-407963/500000",
                "258910693309/500000000000"
              ],
              [
                "-907/1000",
                "129240297381/500000000000"
              ],
              [
                "-907/1000",
                "17885216939/62500000000"
              ],
              [
                "-907/1000",
                "284942955099/500000000000"
              ],
              [
                "-907/1000",
                "29878439323/50000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "33490905901/45350000000"
            ],
            "new": [
              "324041/1000000",
              "738499/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "386043/500000",
              "875633/1000000"
            ],
            "lines": [
              [
                "338463/500000",
                "-661326329/1000000000"
              ],
              [
                "52921/250000",
                "-277907280531/500000000000"
              ],
              [
                "338463/500000",
                "-593656403/1000000000"
              ],
              [
                "52921/250000",
                "-130824505617/500000000000"
              ],
              [
                "96/125",
                "-661326329/1000000000"
              ],
              [
                "151379/500000",
                "-277907280531/500000000000"
              ],
              [
                "96/125",
                "-593656403/1000000000"
              ],
              [
                "151379/500000",
                "-130824505617/500000000000"
              ]
            ],
            "raw": [
              "593656403/768000000",
              "875633/1000000"
            ],
            "new": [
              "77299/100000",
              "875633/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "407963/500000",
              "907/1000"
            ],
            "lines": [
              [
                "77299/100000",
                "-768771939/1000000000"
              ],
              [
                "77299/100000",
                "-511443792321/500000000000"
              ],
              [
                "875633/1000000",
                "-195759829/250000000"
              ],
              [
                "875633/1000000",
                "-135613599531/125000000000"
              ],
              [
                "77299/100000",
                "-701102013/1000000000"
              ],
              [
                "77299/100000",
                "-364361017407/500000000000"
              ],
              [
                "875633/1000000",
                "-71536939/100000000"
              ],
              [
                "875633/1000000",
                "-39537162321/50000000000"
              ]
            ],
            "raw": [
              "71536939/87563300",
              "907/1000"
            ],
            "new": [
              "816973/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "96849/500000",
              "319827/500000"
            ],
            "lines": [
              [
                "77299/100000",
                "-225682911/1000000000"
              ],
              [
                "77299/100000",
                "-217276420829/500000000000"
              ],
              [
                "875633/1000000",
                "-14996893/62500000"
              ],
              [
                "875633/1000000",
                "-31035878329/62500000000"
              ],
              [
                "77299/100000",
                "-168073249/1000000000"
              ],
              [
                "77299/100000",
                "-92059955411/500000000000"
              ],
              [
                "875633/1000000",
                "-91170313/500000000"
              ],
              [
                "875633/1000000",
                "-61535280607/250000000000"
              ]
            ],
            "raw": [
              "91170313/437816500",
              "319827/500000"
            ],
            "new": [
              "104119/500000",
              "319827/500000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "119161/1000000",
              "262757/500000"
            ],
            "lines": [
              [
                "-1/1",
                "8605019567/25000000000"
              ],
              [
                "-1/1",
                "105576281489/250000000000"
              ],
              [
                "-1/1",
                "101507914181/250000000000"
              ],
              [
                "-1/1",
                "60517/125000"
              ],
              [
                "-1/1",
                "13164922053/50000000000"
              ],
              [
                "-1/1",
                "144084112051/500000000000"
              ],
              [
                "-1/1",
                "229633108479/500000000000"
              ]
            ],
            "raw": [
              "119161/1000000",
              "60517/125000"
            ],
            "new": [
              "119161/1000000",
              "60517/125000"
            ]
          },
          {
            "factor": 188,
            "target": "u",
            "old": [
              "324041/1000000",
              "738499/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "29881847719/50000000000"
              ],
              [
                "-1/1",
                "339452890673/500000000000"
              ],
              [
                "-1/1",
                "325747086517/500000000000"
              ],
              [
                "-1/1",
                "732763/1000000"
              ],
              [
                "-1/1",
                "26517018627/50000000000"
              ],
              [
                "-1/1",
                "283663683509/500000000000"
              ],
              [
                "-1/1",
                "347888002761/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "732763/1000000"
            ],
            "new": [
              "324041/1000000",
              "732763/1000000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "123623/200000",
              "1/1"
            ],
            "lines": [
              [
                "77299/100000",
                "-270723/500000"
              ],
              [
                "875633/1000000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "541446/875633",
              "1/1"
            ],
            "new": [
              "154587/250000",
              "1/1"
            ]
          },
          {
            "factor": 219,
            "target": "g",
            "old": [
              "119161/1000000",
              "60517/125000"
            ],
            "lines": [
              [
                "102796799499/250000000000",
                "-81933279/1000000000"
              ],
              [
                "2567719905291/22675000000000",
                "-11495747949/90700000000"
              ],
              [
                "5933203647/12500000000",
                "-45739539/500000000"
              ],
              [
                "40068816063897/226750000000000",
                "-123615519183/907000000000"
              ],
              [
                "664977/1000000",
                "-81933279/1000000000"
              ],
              [
                "16610193/90700000",
                "-11495747949/90700000000"
              ],
              [
                "38381/50000",
                "-45739539/500000000"
              ],
              [
                "259199131/907000000",
                "-123615519183/907000000000"
              ]
            ],
            "raw": [
              "45739539/383810000",
              "60517/125000"
            ],
            "new": [
              "29793/250000",
              "60517/125000"
            ]
          },
          {
            "factor": 363,
            "target": "u",
            "old": [
              "324041/1000000",
              "732763/1000000"
            ],
            "lines": [
              [
                "1660581309/5000000000",
                "-1353467142507193/12500000000000000"
              ],
              [
                "97733421/10000000000",
                "-79658233735017/25000000000000000"
              ],
              [
                "1660581309/5000000000",
                "-15331899434598131/125000000000000000"
              ],
              [
                "97733421/10000000000",
                "-902358092343939/250000000000000000"
              ],
              [
                "11930877/20000000",
                "-9724335636729/50000000000000"
              ],
              [
                "2742009303/10000000000",
                "-2234891767085131/25000000000000000"
              ],
              [
                "11930877/20000000",
                "-110156007019443/500000000000000"
              ],
              [
                "2742009303/10000000000",
                "-25316562732869177/250000000000000000"
              ]
            ],
            "raw": [
              "11294234189/34642500000",
              "732763/1000000"
            ],
            "new": [
              "163011/500000",
              "732763/1000000"
            ]
          },
          {
            "factor": 1171,
            "target": "g",
            "old": [
              "29793/250000",
              "60517/125000"
            ],
            "lines": [
              [
                "92589343382439/250000000000000",
                "-11142377990139/250000000000000"
              ],
              [
                "5449340678391/500000000000000",
                "-655784039691/500000000000000"
              ],
              [
                "92589343382439/250000000000000",
                "-6143158952451/125000000000000"
              ],
              [
                "5449340678391/500000000000000",
                "-361555280019/250000000000000"
              ],
              [
                "665232145767/1000000000000",
                "-80055303867/1000000000000"
              ],
              [
                "152886726797013/500000000000000",
                "-18398679992913/500000000000000"
              ],
              [
                "665232145767/1000000000000",
                "-44137118403/500000000000"
              ],
              [
                "152886726797013/500000000000000",
                "-10143796576617/250000000000000"
              ],
              [
                "92589343382439/250000000000000",
                "-16568065513533/250000000000000"
              ],
              [
                "5449340678391/500000000000000",
                "-975112578477/500000000000000"
              ],
              [
                "92589343382439/250000000000000",
                "-2214000678537/31250000000000"
              ],
              [
                "5449340678391/500000000000000",
                "-130304887353/62500000000000"
              ],
              [
                "665232145767/1000000000000",
                "-119037562749/1000000000000"
              ],
              [
                "152886726797013/500000000000000",
                "-27357762925911/500000000000000"
              ],
              [
                "665232145767/1000000000000",
                "-15907061961/125000000000"
              ],
              [
                "152886726797013/500000000000000",
                "-3655834510779/62500000000000"
              ]
            ],
            "raw": [
              "30993149/257542449",
              "60517/125000"
            ],
            "new": [
              "120341/1000000",
              "60517/125000"
            ]
          },
          {
            "factor": 1345,
            "target": "g",
            "old": [
              "120341/1000000",
              "60517/125000"
            ],
            "lines": [
              [
                "45742668495310163/125000000000000000",
                "-13672368345549/250000000000000"
              ],
              [
                "2692182221662947/250000000000000000",
                "-804686481981/500000000000000"
              ],
              [
                "328650062789139/500000000000000",
                "-98232675597/1000000000000"
              ],
              [
                "75531876625612121/250000000000000000",
                "-22576287589383/500000000000000"
              ],
              [
                "45742668495310163/125000000000000000",
                "-19098055868943/250000000000000"
              ],
              [
                "2692182221662947/250000000000000000",
                "-1124015020767/500000000000000"
              ],
              [
                "328650062789139/500000000000000",
                "-137214934479/1000000000000"
              ],
              [
                "75531876625612121/250000000000000000",
                "-31535370522381/500000000000000"
              ]
            ],
            "raw": [
              "57045688500/381707389999",
              "60517/125000"
            ],
            "new": [
              "18681/125000",
              "60517/125000"
            ]
          },
          {
            "factor": 1747,
            "target": "u",
            "old": [
              "163011/500000",
              "732763/1000000"
            ],
            "lines": [
              [
                "60176739465248539/250000000000000000",
                "-10712632921179/125000000000000"
              ],
              [
                "3541698669429291/500000000000000000",
                "-630491417451/250000000000000"
              ],
              [
                "60176739465248539/250000000000000000",
                "-22569205757121/250000000000000"
              ],
              [
                "3541698669429291/500000000000000000",
                "-1328309355249/500000000000000"
              ],
              [
                "60176739465248539/250000000000000000",
                "-12577655193483/125000000000000"
              ],
              [
                "3541698669429291/500000000000000000",
                "-740257200027/250000000000000"
              ],
              [
                "60176739465248539/250000000000000000",
                "-26299250301729/250000000000000"
              ],
              [
                "3541698669429291/500000000000000000",
                "-1547840920401/500000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-76967688987/500000000000"
              ],
              [
                "99365913938465713/500000000000000000",
                "-17689070068593/250000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-162154310913/1000000000000"
              ],
              [
                "99365913938465713/500000000000000000",
                "-37267053297507/500000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-90367425099/500000000000"
              ],
              [
                "99365913938465713/500000000000000000",
                "-20768659362561/250000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-188953783137/1000000000000"
              ],
              [
                "99365913938465713/500000000000000000",
                "-43426231885443/500000000000000"
              ]
            ],
            "raw": [
              "25540962000/71736417521",
              "732763/1000000"
            ],
            "new": [
              "178019/500000",
              "732763/1000000"
            ]
          },
          {
            "factor": 2059,
            "target": "x",
            "old": [
              "226789/1000000",
              "713623/1000000"
            ],
            "lines": [
              [
                "104972778031/250000000000",
                "-2924395133559/25000000000000"
              ],
              [
                "6178167039/500000000000",
                "-172115113671/50000000000000"
              ],
              [
                "104972778031/250000000000",
                "-30387891250353/250000000000000"
              ],
              [
                "6178167039/500000000000",
                "-1788477657057/500000000000000"
              ],
              [
                "104972778031/250000000000",
                "-37891222322649/250000000000000"
              ],
              [
                "6178167039/500000000000",
                "-2230085791881/500000000000000"
              ],
              [
                "104972778031/250000000000",
                "-9758790559353/62500000000000"
              ],
              [
                "6178167039/500000000000",
                "-574353078057/125000000000000"
              ],
              [
                "754204143/1000000000",
                "-21011075127/100000000000"
              ],
              [
                "173334682477/500000000000",
                "-4828862410053/50000000000000"
              ],
              [
                "754204143/1000000000",
                "-218329684209/1000000000000"
              ],
              [
                "173334682477/500000000000",
                "-50177537260851/500000000000000"
              ],
              [
                "754204143/1000000000",
                "-272239311897/1000000000000"
              ],
              [
                "173334682477/500000000000",
                "-62567297095083/500000000000000"
              ],
              [
                "754204143/1000000000",
                "-70114561209/250000000000"
              ],
              [
                "173334682477/500000000000",
                "-16114052563851/125000000000000"
              ]
            ],
            "raw": [
              "24403107/87596300",
              "713623/1000000"
            ],
            "new": [
              "139293/500000",
              "713623/1000000"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "302121/500000"
            ],
            "lines": [
              [
                "-77299/100000",
                "3282670513/25000000000"
              ],
              [
                "-875633/1000000",
                "48693978571/250000000000"
              ],
              [
                "-77299/100000",
                "5329/12500"
              ],
              [
                "-875633/1000000",
                "528963/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "528963/875633"
            ],
            "new": [
              "139/1000",
              "604093/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "77299/100000",
              "875633/1000000"
            ],
            "lines": [
              [
                "-404559/1000000",
                "311559/1000000"
              ],
              [
                "-34157/500000",
                "-12343/500000"
              ],
              [
                "-744293/1000000",
                "651293/1000000"
              ],
              [
                "-25503/62500",
                "39381/125000"
              ]
            ],
            "raw": [
              "77299/100000",
              "651293/744293"
            ],
            "new": [
              "77299/100000",
              "17501/20000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "162707/1000000",
              "62369/125000"
            ],
            "lines": [
              [
                "-22701/100000",
                "1788752733/50000000000"
              ],
              [
                "-2499/20000",
                "-221201133/10000000000"
              ],
              [
                "-22701/100000",
                "11289807/100000000"
              ],
              [
                "-2499/20000",
                "406593/20000000"
              ]
            ],
            "raw": [
              "162707/1000000",
              "3763269/7567000"
            ],
            "new": [
              "162707/1000000",
              "497327/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "283633/500000",
              "907/1000"
            ],
            "lines": [
              [
                "22701/100000",
                "-12993611607/100000000000"
              ],
              [
                "2499/20000",
                "-2266604793/20000000000"
              ],
              [
                "22701/100000",
                "-20589820227/100000000000"
              ],
              [
                "2499/20000",
                "-3102820173/20000000000"
              ]
            ],
            "raw": [
              "4331203869/7567000000",
              "907/1000"
            ],
            "new": [
              "28619/50000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "875633/1000000"
            ],
            "lines": [
              [
                "-409673/1000000",
                "316673/1000000"
              ],
              [
                "-75053/1000000",
                "-17947/1000000"
              ],
              [
                "-744293/1000000",
                "651293/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "651293/744293"
            ],
            "new": [
              "617/1000",
              "17501/20000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "162707/1000000",
              "497327/1000000"
            ],
            "lines": [
              [
                "311771/500000",
                "-5618229333/25000000000"
              ],
              [
                "362801/500000",
                "-1245642267/5000000000"
              ],
              [
                "144427/500000",
                "-5618229333/25000000000"
              ],
              [
                "195457/500000",
                "-1245642267/5000000000"
              ],
              [
                "311771/500000",
                "-5349658047/50000000000"
              ],
              [
                "362801/500000",
                "-1843246353/10000000000"
              ],
              [
                "144427/500000",
                "-5349658047/50000000000"
              ],
              [
                "195457/500000",
                "-1843246353/10000000000"
              ]
            ],
            "raw": [
              "5349658047/31177100000",
              "497327/1000000"
            ],
            "new": [
              "171589/1000000",
              "497327/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "59767/250000",
              "378853/500000"
            ],
            "lines": [
              [
                "-77299/100000",
                "36570743577/125000000000"
              ],
              [
                "-17501/20000",
                "44459318187/125000000000"
              ],
              [
                "-77299/100000",
                "10701536649/125000000000"
              ],
              [
                "-17501/20000",
                "18590111259/125000000000"
              ],
              [
                "-77299/100000",
                "265271/500000"
              ],
              [
                "-17501/20000",
                "316301/500000"
              ],
              [
                "-77299/100000",
                "97927/500000"
              ],
              [
                "-17501/20000",
                "148957/500000"
              ]
            ],
            "raw": [
              "59767/250000",
              "316301/437525"
            ],
            "new": [
              "59767/250000",
              "722933/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "139293/500000",
              "713623/1000000"
            ],
            "lines": [
              [
                "-21381/50000",
                "240940881/1000000000"
              ],
              [
                "-93/1000",
                "34480341/1000000000"
              ],
              [
                "-21381/50000",
                "6081162093/20000000000"
              ],
              [
                "-93/1000",
                "224977473/20000000000"
              ],
              [
                "-21381/50000",
                "10323027/50000000"
              ],
              [
                "-93/1000",
                "0/1"
              ],
              [
                "-21381/50000",
                "292809231/1000000000"
              ]
            ],
            "raw": [
              "139293/500000",
              "2027054031/2850800000"
            ],
            "new": [
              "139293/500000",
              "88881/125000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "104119/500000",
              "319827/500000"
            ],
            "lines": [
              [
                "-617/1000",
                "25234041347/125000000000"
              ],
              [
                "-17501/20000",
                "22589814511/62500000000"
              ],
              [
                "-617/1000",
                "301469/1000000"
              ],
              [
                "-17501/20000",
                "559519/1000000"
              ],
              [
                "-617/1000",
                "86412545119/250000000000"
              ],
              [
                "-17501/20000",
                "126303720469/250000000000"
              ]
            ],
            "raw": [
              "104119/500000",
              "559519/875050"
            ],
            "new": [
              "104119/500000",
              "319707/500000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "59767/250000",
              "722933/1000000"
            ],
            "lines": [
              [
                "77299/100000",
                "-123671169/500000000"
              ],
              [
                "77299/100000",
                "-268673678703/500000000000"
              ],
              [
                "17501/20000",
                "-130764339/500000000"
              ],
              [
                "17501/20000",
                "-299500544493/500000000000"
              ],
              [
                "77299/100000",
                "-100410353/500000000"
              ],
              [
                "77299/100000",
                "-167582339711/500000000000"
              ],
              [
                "17501/20000",
                "-107503523/500000000"
              ],
              [
                "17501/20000",
                "-198409205501/500000000000"
              ]
            ],
            "raw": [
              "107503523/437525000",
              "722933/1000000"
            ],
            "new": [
              "61427/250000",
              "722933/1000000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "61427/250000",
              "722933/1000000"
            ],
            "lines": [
              [
                "178019/500000",
                "-149254651/976562500"
              ],
              [
                "178019/500000",
                "-124460162747/500000000000"
              ],
              [
                "178019/500000",
                "-2750154537/15625000000"
              ],
              [
                "178019/500000",
                "-58216203627/500000000000"
              ],
              [
                "732763/1000000",
                "-25650192203/125000000000"
              ],
              [
                "732763/1000000",
                "-476497260919/1000000000000"
              ],
              [
                "732763/1000000",
                "-28546833171/125000000000"
              ],
              [
                "732763/1000000",
                "-344009342679/1000000000000"
              ],
              [
                "178019/500000",
                "-3394924273/15625000000"
              ],
              [
                "178019/500000",
                "-156679358171/500000000000"
              ],
              [
                "178019/500000",
                "-3005919643/7812500000"
              ],
              [
                "178019/500000",
                "-32518023119/100000000000"
              ],
              [
                "732763/1000000",
                "-33704991059/125000000000"
              ],
              [
                "732763/1000000",
                "-540935651767/1000000000000"
              ],
              [
                "732763/1000000",
                "-54640311163/125000000000"
              ],
              [
                "732763/1000000",
                "-110551433323/200000000000"
              ]
            ],
            "raw": [
              "25650192203/91595375000",
              "722933/1000000"
            ],
            "new": [
              "140019/500000",
              "722933/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "77299/100000",
              "17501/20000"
            ],
            "lines": [
              [
                "677973/1000000",
                "-327063273/500000000"
              ],
              [
                "2661/12500",
                "-262279073751/500000000000"
              ],
              [
                "677973/1000000",
                "-74251791/125000000"
              ],
              [
                "2661/12500",
                "-32913860067/125000000000"
              ],
              [
                "96/125",
                "-327063273/500000000"
              ],
              [
                "302907/1000000",
                "-262279073751/500000000000"
              ],
              [
                "96/125",
                "-74251791/125000000"
              ],
              [
                "302907/1000000",
                "-32913860067/125000000000"
              ]
            ],
            "raw": [
              "24750597/32000000",
              "17501/20000"
            ],
            "new": [
              "48341/62500",
              "17501/20000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "816973/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "48341/62500",
                "-76163693/100000000"
              ],
              [
                "48341/62500",
                "-99179750291/100000000000"
              ],
              [
                "17501/20000",
                "-24242453/31250000"
              ],
              [
                "17501/20000",
                "-65823107947/62500000000"
              ],
              [
                "48341/62500",
                "-87690589/125000000"
              ],
              [
                "48341/62500",
                "-91318779493/125000000000"
              ],
              [
                "17501/20000",
                "-357823139/500000000"
              ],
              [
                "17501/20000",
                "-395961230093/500000000000"
              ]
            ],
            "raw": [
              "357823139/437525000",
              "907/1000"
            ],
            "new": [
              "408917/500000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "104119/500000",
              "319707/500000"
            ],
            "lines": [
              [
                "48341/62500",
                "-110650051/500000000"
              ],
              [
                "48341/62500",
                "-207719145937/500000000000"
              ],
              [
                "17501/20000",
                "-58855417/250000000"
              ],
              [
                "17501/20000",
                "-119202629029/250000000000"
              ],
              [
                "48341/62500",
                "-168935327/1000000000"
              ],
              [
                "48341/62500",
                "-187861356449/1000000000000"
              ],
              [
                "17501/20000",
                "-183056893/1000000000"
              ],
              [
                "17501/20000",
                "-249233580691/1000000000000"
              ]
            ],
            "raw": [
              "183056893/875050000",
              "319707/500000"
            ],
            "new": [
              "41839/200000",
              "319707/500000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "18681/125000",
              "60517/125000"
            ],
            "lines": [
              [
                "-1/1",
                "21134085917/62500000000"
              ],
              [
                "-1/1",
                "4112891941/10000000000"
              ],
              [
                "-1/1",
                "102602295143/250000000000"
              ],
              [
                "-1/1",
                "483553/1000000"
              ],
              [
                "-1/1",
                "33606474319/125000000000"
              ],
              [
                "-1/1",
                "5940002787/20000000000"
              ],
              [
                "-1/1",
                "227702327601/500000000000"
              ]
            ],
            "raw": [
              "18681/125000",
              "483553/1000000"
            ],
            "new": [
              "18681/125000",
              "483553/1000000"
            ]
          },
          {
            "factor": 188,
            "target": "u",
            "old": [
              "178019/500000",
              "732763/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "14946404677/25000000000"
              ],
              [
                "-1/1",
                "2712788921/4000000000"
              ],
              [
                "-1/1",
                "65183895683/100000000000"
              ],
              [
                "-1/1",
                "36609/50000"
              ],
              [
                "-1/1",
                "33159115201/62500000000"
              ],
              [
                "-1/1",
                "5671792173/10000000000"
              ],
              [
                "-1/1",
                "173886656479/250000000000"
              ]
            ],
            "raw": [
              "178019/500000",
              "36609/50000"
            ],
            "new": [
              "178019/500000",
              "36609/50000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "154587/250000",
              "1/1"
            ],
            "lines": [
              [
                "48341/62500",
                "-270723/500000"
              ],
              [
                "17501/20000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "270723/437525",
              "1/1"
            ],
            "new": [
              "15469/25000",
              "1/1"
            ]
          },
          {
            "factor": 1345,
            "target": "g",
            "old": [
              "18681/125000",
              "483553/1000000"
            ],
            "lines": [
              [
                "2289099217824003/6250000000000000",
                "-356547131253/6250000000000"
              ],
              [
                "5598502289115333/500000000000000000",
                "-872015470083/500000000000000"
              ],
              [
                "328650062789139/500000000000000",
                "-51190108389/500000000000"
              ],
              [
                "151120627652334093/500000000000000000",
                "-23538353358843/500000000000000"
              ],
              [
                "2289099217824003/6250000000000000",
                "-119285925201/1562500000000"
              ],
              [
                "5598502289115333/500000000000000000",
                "-291740314311/125000000000000"
              ],
              [
                "328650062789139/500000000000000",
                "-17126093313/125000000000"
              ],
              [
                "151120627652334093/500000000000000000",
                "-7874959611231/125000000000000"
              ]
            ],
            "raw": [
              "59454249000/381707389999",
              "483553/1000000"
            ],
            "new": [
              "77879/500000",
              "483553/1000000"
            ]
          },
          {
            "factor": 1747,
            "target": "u",
            "old": [
              "178019/500000",
              "36609/50000"
            ],
            "lines": [
              [
                "3011423071114059/12500000000000000",
                "-537981580647/6250000000000"
              ],
              [
                "7365106250463549/1000000000000000000",
                "-1315753850817/500000000000000"
              ],
              [
                "3011423071114059/12500000000000000",
                "-141578033571/1562500000000"
              ],
              [
                "7365106250463549/1000000000000000000",
                "-346260633381/125000000000000"
              ],
              [
                "3011423071114059/12500000000000000",
                "-1258781316489/12500000000000"
              ],
              [
                "7365106250463549/1000000000000000000",
                "-3078630243279/1000000000000000"
              ],
              [
                "3011423071114059/12500000000000000",
                "-1315442423763/12500000000000"
              ],
              [
                "7365106250463549/1000000000000000000",
                "-3217207608693/1000000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-77238976311/500000000000"
              ],
              [
                "198806648960405829/1000000000000000000",
                "-35516203710057/500000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-20326611123/125000000000"
              ],
              [
                "198806648960405829/1000000000000000000",
                "-9346629070701/125000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-180725481657/1000000000000"
              ],
              [
                "198806648960405829/1000000000000000000",
                "-83101606581159/1000000000000000"
              ],
              [
                "432355388399067/1000000000000000",
                "-188860418019/1000000000000"
              ],
              [
                "198806648960405829/1000000000000000000",
                "-86842231726653/1000000000000000"
              ]
            ],
            "raw": [
              "25630986000/71736417521",
              "36609/50000"
            ],
            "new": [
              "357293/1000000",
              "36609/50000"
            ]
          },
          {
            "factor": 1786,
            "target": "v",
            "old": [
              "41839/200000",
              "319707/500000"
            ],
            "lines": [
              [
                "-211970138102674287/500000000000000000",
                "39028057723461919550701/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "37646998742079919550701/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "51815636801175919550701/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "50434577819793919550701/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "33212591728941720340651/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "30250747378539720340651/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "46000170806655720340651/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "43038326456253720340651/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "6753602686504313221351/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "5372543705122313221351/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "14576130885703313221351/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "13195071904321313221351/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "-16400868328040550686849/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "-19362712678442550686849/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "-8578340128841550686849/500000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "-11540184479243550686849/500000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "211664202206548167178357/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "213086663384374167178357/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "237239360361976167178357/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "238661821539802167178357/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "200033270217507768758257/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "198294160657293768758257/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "225608428372935768758257/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "223869318812721768758257/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "147115292132632954519657/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "148537753310458954519657/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "162760348531030954519657/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "164182809708856954519657/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "100806350103543226703257/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "99067240543329226703257/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "116451406501941226703257/1000000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "114712296941727226703257/1000000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "1663623654193662697793/12500000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "1629097179659112697793/12500000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "1983313131136512697793/12500000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "1948786656601962697793/12500000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "4611290697886009279513/25000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "4463198480365909279513/25000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "5250669651771709279513/25000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "5102577434251609279513/25000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "3427049113078890158237/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "3288943214940690158237/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "4209301932998790158237/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "4071196034860590158237/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "1065308847518447864069/12500000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "991262738758397864069/12500000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "1260872052498422864069/12500000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "1186825943738372864069/12500000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "9166119816783416174587/50000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "9237242875674716174587/50000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "10444877724554816174587/50000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "10516000783446116174587/50000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "11734206595780783942441/50000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "11647251117770083942441/50000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "13012964503552183942441/50000000000000000000000"
              ],
              [
                "-211970138102674287/500000000000000000",
                "12926009025541483942441/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "1484668578271913885413/12500000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "1502449342994738885413/12500000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "1680231783251888885413/12500000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "1698012547974713885413/12500000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "6772860590082556839691/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "6685905112071856839691/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "7555113410002456839691/50000000000000000000000"
              ],
              [
                "-259336403336275209/1000000000000000000",
                "7468157931991756839691/50000000000000000000000"
              ]
            ],
            "raw": [
              "41839/200000",
              "164182809708856954519657/259336403336275209000000"
            ],
            "new": [
              "41839/200000",
              "633089/1000000"
            ]
          },
          {
            "factor": 2059,
            "target": "x",
            "old": [
              "139293/500000",
              "88881/125000"
            ],
            "lines": [
              [
                "5253150111/12500000000",
                "-182964278097/1562500000000"
              ],
              [
                "12847749321/1000000000000",
                "-447479917767/125000000000000"
              ],
              [
                "5253150111/12500000000",
                "-30407506641/250000000000"
              ],
              [
                "12847749321/1000000000000",
                "-74368334151/20000000000000"
              ],
              [
                "5253150111/12500000000",
                "-947736968463/6250000000000"
              ],
              [
                "12847749321/1000000000000",
                "-2317901970393/500000000000000"
              ],
              [
                "5253150111/12500000000",
                "-9760675221/62500000000"
              ],
              [
                "12847749321/1000000000000",
                "-23871906531/5000000000000"
              ],
              [
                "754204143/1000000000",
                "-26268508161/125000000000"
              ],
              [
                "346799883441/1000000000000",
                "-12078845831007/125000000000000"
              ],
              [
                "754204143/1000000000",
                "-4365660033/20000000000"
              ],
              [
                "346799883441/1000000000000",
                "-2007427835871/20000000000000"
              ],
              [
                "754204143/1000000000",
                "-136068289119/500000000000"
              ],
              [
                "346799883441/1000000000000",
                "-62567233612353/500000000000000"
              ],
              [
                "754204143/1000000000",
                "-1401357573/5000000000"
              ],
              [
                "346799883441/1000000000000",
                "-644375461851/5000000000000"
              ]
            ],
            "raw": [
              "30509301/109495375",
              "88881/125000"
            ],
            "new": [
              "55727/200000",
              "88881/125000"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "604093/1000000"
            ],
            "lines": [
              [
                "-48341/62500",
                "103057527/781250000"
              ],
              [
                "-17501/20000",
                "97387969/500000000"
              ],
              [
                "-48341/62500",
                "213393/500000"
              ],
              [
                "-17501/20000",
                "26419/50000"
              ]
            ],
            "raw": [
              "139/1000",
              "52838/87505"
            ],
            "new": [
              "139/1000",
              "603829/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "48341/62500",
              "17501/20000"
            ],
            "lines": [
              [
                "-400791/1000000",
                "307791/1000000"
              ],
              [
                "-75053/1000000",
                "-17947/1000000"
              ],
              [
                "-735411/1000000",
                "642411/1000000"
              ],
              [
                "-409673/1000000",
                "316673/1000000"
              ]
            ],
            "raw": [
              "48341/62500",
              "214137/245137"
            ],
            "new": [
              "48341/62500",
              "873541/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "171589/1000000",
              "497327/1000000"
            ],
            "lines": [
              [
                "-14159/62500",
                "114591421/3125000000"
              ],
              [
                "-126459/1000000",
                "-1030869879/50000000000"
              ],
              [
                "-14159/62500",
                "7029713/62500000"
              ],
              [
                "-126459/1000000",
                "21698313/1000000000"
              ]
            ],
            "raw": [
              "171589/1000000",
              "7029713/14159000"
            ],
            "new": [
              "171589/1000000",
              "124121/250000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "28619/50000",
              "907/1000"
            ],
            "lines": [
              [
                "14159/62500",
                "-8242028651/62500000000"
              ],
              [
                "126459/1000000",
                "-114698973351/1000000000000"
              ],
              [
                "14159/62500",
                "-3210554239/15625000000"
              ],
              [
                "126459/1000000",
                "-38946217539/250000000000"
              ]
            ],
            "raw": [
              "8242028651/14159000000",
              "907/1000"
            ],
            "new": [
              "116421/200000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "17501/20000"
            ],
            "lines": [
              [
                "-102629/250000",
                "79379/250000"
              ],
              [
                "-85621/1000000",
                "-7379/1000000"
              ],
              [
                "-735411/1000000",
                "642411/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "214137/245137"
            ],
            "new": [
              "617/1000",
              "873541/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "171589/1000000",
              "124121/250000"
            ],
            "lines": [
              [
                "308849/500000",
                "-6736220979/31250000000"
              ],
              [
                "717783/1000000",
                "-121793337279/500000000000"
              ],
              [
                "289903/1000000",
                "-6736220979/31250000000"
              ],
              [
                "97497/250000",
                "-121793337279/500000000000"
              ],
              [
                "308849/500000",
                "-7201491653/62500000000"
              ],
              [
                "717783/1000000",
                "-187578615753/1000000000000"
              ],
              [
                "289903/1000000",
                "-7201491653/62500000000"
              ],
              [
                "97497/250000",
                "-187578615753/1000000000000"
              ]
            ],
            "raw": [
              "7201491653/38606125000",
              "124121/250000"
            ],
            "new": [
              "186537/1000000",
              "124121/250000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "140019/500000",
              "722933/1000000"
            ],
            "lines": [
              [
                "-48341/62500",
                "3615085181/12500000000"
              ],
              [
                "-873541/1000000",
                "8778385227/25000000000"
              ],
              [
                "-48341/62500",
                "2159509507/25000000000"
              ],
              [
                "-873541/1000000",
                "926931093/6250000000"
              ],
              [
                "-48341/62500",
                "262349/500000"
              ],
              [
                "-873541/1000000",
                "624783/1000000"
              ],
              [
                "-48341/62500",
                "196903/1000000"
              ],
              [
                "-873541/1000000",
                "74247/250000"
              ]
            ],
            "raw": [
              "140019/500000",
              "624783/873541"
            ],
            "new": [
              "140019/500000",
              "715231/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "55727/200000",
              "88881/125000"
            ],
            "lines": [
              [
                "-83579/200000",
                "234610793/1000000000"
              ],
              [
                "-93/1000",
                "17075289/500000000"
              ],
              [
                "-83579/200000",
                "295084946389/1000000000000"
              ],
              [
                "-93/1000",
                "5637921597/500000000000"
              ],
              [
                "-83579/200000",
                "40092043/200000000"
              ],
              [
                "-93/1000",
                "0/1"
              ],
              [
                "-83579/200000",
                "56761820639/200000000000"
              ]
            ],
            "raw": [
              "55727/200000",
              "295084946389/417895000000"
            ],
            "new": [
              "55727/200000",
              "706123/1000000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "408917/500000",
              "907/1000"
            ],
            "lines": [
              [
                "-617/1000",
                "1975008637/5000000000"
              ],
              [
                "-873541/1000000",
                "6921737957/12500000000"
              ],
              [
                "-617/1000",
                "131/250"
              ],
              [
                "-873541/1000000",
                "780541/1000000"
              ],
              [
                "-617/1000",
                "13949431313/25000000000"
              ],
              [
                "-873541/1000000",
                "8958932021/12500000000"
              ]
            ],
            "raw": [
              "408917/500000",
              "13949431313/15425000000"
            ],
            "new": [
              "408917/500000",
              "45217/50000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "357293/1000000",
              "36609/50000"
            ],
            "lines": [
              [
                "-408917/500000",
                "436044535209/1000000000000"
              ],
              [
                "-408917/500000",
                "124240042381/250000000000"
              ],
              [
                "-408917/500000",
                "525472887369/1000000000000"
              ],
              [
                "-408917/500000",
                "146597130421/250000000000"
              ],
              [
                "-45217/50000",
                "100590623989/200000000000"
              ],
              [
                "-45217/50000",
                "57252670727/100000000000"
              ],
              [
                "-45217/50000",
                "118476294421/200000000000"
              ],
              [
                "-45217/50000",
                "66195505943/100000000000"
              ],
              [
                "-408917/500000",
                "45258576447/200000000000"
              ],
              [
                "-408917/500000",
                "6119577139/25000000000"
              ],
              [
                "-408917/500000",
                "496930832667/1000000000000"
              ],
              [
                "-408917/500000",
                "64427629499/125000000000"
              ],
              [
                "-45217/50000",
                "293201466971/1000000000000"
              ],
              [
                "-45217/50000",
                "160174811653/500000000000"
              ],
              [
                "-45217/50000",
                "563839417403/1000000000000"
              ],
              [
                "-45217/50000",
                "295493786869/500000000000"
              ]
            ],
            "raw": [
              "357293/1000000",
              "66195505943/90434000000"
            ],
            "new": [
              "357293/1000000",
              "91497/125000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "140019/500000",
              "715231/1000000"
            ],
            "lines": [
              [
                "357293/1000000",
                "-15359715981/100000000000"
              ],
              [
                "357293/1000000",
                "-9891058893/40000000000"
              ],
              [
                "357293/1000000",
                "-35321345967/200000000000"
              ],
              [
                "357293/1000000",
                "-23583484059/200000000000"
              ],
              [
                "91497/125000",
                "-20567809681/100000000000"
              ],
              [
                "91497/125000",
                "-118380233383/250000000000"
              ],
              [
                "91497/125000",
                "-45737533367/200000000000"
              ],
              [
                "91497/125000",
                "-172080940751/500000000000"
              ],
              [
                "357293/1000000",
                "-109811020731/500000000000"
              ],
              [
                "357293/1000000",
                "-313301353977/1000000000000"
              ],
              [
                "357293/1000000",
                "-381581945217/1000000000000"
              ],
              [
                "357293/1000000",
                "-322892635677/1000000000000"
              ],
              [
                "91497/125000",
                "-135851489231/500000000000"
              ],
              [
                "91497/125000",
                "-33721613449/62500000000"
              ],
              [
                "91497/125000",
                "-433662882217/1000000000000"
              ],
              [
                "91497/125000",
                "-137284274221/250000000000"
              ]
            ],
            "raw": [
              "20567809681/73197600000",
              "715231/1000000"
            ],
            "new": [
              "28099/100000",
              "715231/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "603829/1000000"
            ],
            "lines": [
              [
                "-494821/1000000",
                "-1884105803/31250000000"
              ],
              [
                "-297453/500000",
                "10780765097/500000000000"
              ],
              [
                "-67333/1000000",
                "-1884105803/31250000000"
              ],
              [
                "-83709/500000",
                "10780765097/500000000000"
              ],
              [
                "-494821/1000000",
                "20678747/3125000000"
              ],
              [
                "-297453/500000",
                "4856403397/50000000000"
              ],
              [
                "-67333/1000000",
                "20678747/3125000000"
              ],
              [
                "-83709/500000",
                "4856403397/50000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "4856403397/8370900000"
            ],
            "new": [
              "139/1000",
              "290077/500000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "48341/62500",
              "873541/1000000"
            ],
            "lines": [
              [
                "339417/500000",
                "-130823947/200000000"
              ],
              [
                "2971/12500",
                "-53119879021/100000000000"
              ],
              [
                "339417/500000",
                "-594698903/1000000000"
              ],
              [
                "2971/12500",
                "-141594958529/500000000000"
              ],
              [
                "38267/50000",
                "-130823947/200000000"
              ],
              [
                "162093/500000",
                "-53119879021/100000000000"
              ],
              [
                "38267/50000",
                "-594698903/1000000000"
              ],
              [
                "162093/500000",
                "-141594958529/500000000000"
              ]
            ],
            "raw": [
              "594698903/765340000",
              "873541/1000000"
            ],
            "new": [
              "388519/500000",
              "873541/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "408917/500000",
              "45217/50000"
            ],
            "lines": [
              [
                "388519/500000",
                "-762128017/1000000000"
              ],
              [
                "388519/500000",
                "-491000247031/500000000000"
              ],
              [
                "873541/1000000",
                "-387770967/500000000"
              ],
              [
                "873541/1000000",
                "-259496773881/250000000000"
              ],
              [
                "388519/500000",
                "-140541437/200000000"
              ],
              [
                "388519/500000",
                "-73399162091/100000000000"
              ],
              [
                "873541/1000000",
                "-358060551/500000000"
              ],
              [
                "873541/1000000",
                "-197494555593/250000000000"
              ]
            ],
            "raw": [
              "358060551/436770500",
              "45217/50000"
            ],
            "new": [
              "819791/1000000",
              "45217/50000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "41839/200000",
              "633089/1000000"
            ],
            "lines": [
              [
                "388519/500000",
                "-44324711/200000000"
              ],
              [
                "388519/500000",
                "-40679574073/100000000000"
              ],
              [
                "873541/1000000",
                "-7344921/31250000"
              ],
              [
                "873541/1000000",
                "-28923896387/62500000000"
              ],
              [
                "388519/500000",
                "-84771309/500000000"
              ],
              [
                "388519/500000",
                "-47355474887/250000000000"
              ],
              [
                "873541/1000000",
                "-36591307/200000000"
              ],
              [
                "873541/1000000",
                "-24540850101/100000000000"
              ]
            ],
            "raw": [
              "36591307/174708200",
              "633089/1000000"
            ],
            "new": [
              "104721/500000",
              "633089/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "77879/500000",
              "483553/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "17028596119/50000000000"
              ],
              [
                "-1/1",
                "40995854441/100000000000"
              ],
              [
                "-1/1",
                "41265737797/100000000000"
              ],
              [
                "-1/1",
                "120511/250000"
              ],
              [
                "-1/1",
                "135538430611/500000000000"
              ],
              [
                "-1/1",
                "298557924029/1000000000000"
              ],
              [
                "-1/1",
                "454562937193/1000000000000"
              ]
            ],
            "raw": [
              "77879/500000",
              "120511/250000"
            ],
            "new": [
              "77879/500000",
              "120511/250000"
            ]
          },
          {
            "factor": 188,
            "target": "u",
            "old": [
              "357293/1000000",
              "91497/125000"
            ],
            "lines": [
              [
                "-1/1",
                "150162330301/250000000000"
              ],
              [
                "-1/1",
                "338470269939/500000000000"
              ],
              [
                "-1/1",
                "327189890663/500000000000"
              ],
              [
                "-1/1",
                "730671/1000000"
              ],
              [
                "-1/1",
                "266424851309/500000000000"
              ],
              [
                "-1/1",
                "568257714851/1000000000000"
              ],
              [
                "-1/1",
                "695262987767/1000000000000"
              ]
            ],
            "raw": [
              "357293/1000000",
              "730671/1000000"
            ],
            "new": [
              "357293/1000000",
              "730671/1000000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "15469/25000",
              "1/1"
            ],
            "lines": [
              [
                "388519/500000",
                "-270723/500000"
              ],
              [
                "873541/1000000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "541446/873541",
              "1/1"
            ],
            "new": [
              "154957/250000",
              "1/1"
            ]
          },
          {
            "factor": 224,
            "target": "a",
            "old": [
              "139/1000",
              "290077/500000"
            ],
            "lines": [
              [
                "29152788683/125000000000",
                "-6234203/125000000"
              ],
              [
                "68434242737/250000000000",
                "-24454297/500000000"
              ],
              [
                "165197/312500",
                "-4261481/50000000"
              ],
              [
                "757291/1250000",
                "-8426459/100000000"
              ]
            ],
            "raw": [
              "8426459/60583280",
              "290077/500000"
            ],
            "new": [
              "8693/62500",
              "290077/500000"
            ]
          },
          {
            "factor": 1345,
            "target": "g",
            "old": [
              "77879/500000",
              "120511/250000"
            ],
            "lines": [
              [
                "9175100533405963/25000000000000000",
                "-571662620607/10000000000000"
              ],
              [
                "7571929495410163/250000000000000000",
                "-471775654407/100000000000000"
              ],
              [
                "20538529533676193/31250000000000000",
                "-1279670950077/12500000000000"
              ],
              [
                "80129160430760077/250000000000000000",
                "-4992517048953/100000000000000"
              ],
              [
                "9175100533405963/25000000000000000",
                "-3813937305243/50000000000000"
              ],
              [
                "7571929495410163/250000000000000000",
                "-3147525661443/500000000000000"
              ],
              [
                "20538529533676193/31250000000000000",
                "-8537526504273/62500000000000"
              ],
              [
                "80129160430760077/250000000000000000",
                "-33308364643197/500000000000000"
              ]
            ],
            "raw": [
              "59456527500/381707389999",
              "120511/250000"
            ],
            "new": [
              "38941/250000",
              "120511/250000"
            ]
          },
          {
            "factor": 1747,
            "target": "u",
            "old": [
              "357293/1000000",
              "730671/1000000"
            ],
            "lines": [
              [
                "12070297875665939/50000000000000000",
                "-2160332417841/25000000000000"
              ],
              [
                "9961247200548539/500000000000000000",
                "-1782856187241/250000000000000"
              ],
              [
                "12070297875665939/50000000000000000",
                "-907278319701/10000000000000"
              ],
              [
                "9961247200548539/500000000000000000",
                "-748749013101/100000000000000"
              ],
              [
                "12070297875665939/50000000000000000",
                "-2525022262581/25000000000000"
              ],
              [
                "9961247200548539/500000000000000000",
                "-2083823547981/250000000000000"
              ],
              [
                "12070297875665939/50000000000000000",
                "-1053154257597/10000000000000"
              ],
              [
                "9961247200548539/500000000000000000",
                "-869135957397/100000000000000"
              ],
              [
                "27019449922867129/62500000000000000",
                "-4835919890451/31250000000000"
              ],
              [
                "105413867826826181/500000000000000000",
                "-18866891132439/250000000000000"
              ],
              [
                "27019449922867129/62500000000000000",
                "-2030949142911/12500000000000"
              ],
              [
                "105413867826826181/500000000000000000",
                "-7923558959379/100000000000000"
              ],
              [
                "27019449922867129/62500000000000000",
                "-5652280770591/31250000000000"
              ],
              [
                "105413867826826181/500000000000000000",
                "-22051847086899/250000000000000"
              ],
              [
                "27019449922867129/62500000000000000",
                "-2357493494967/12500000000000"
              ],
              [
                "105413867826826181/500000000000000000",
                "-9197541341163/100000000000000"
              ]
            ],
            "raw": [
              "179750586000/502154922647",
              "730671/1000000"
            ],
            "new": [
              "178979/500000",
              "730671/1000000"
            ]
          },
          {
            "factor": 1786,
            "target": "v",
            "old": [
              "104721/500000",
              "633089/1000000"
            ],
            "lines": [
              [
                "-105984315818953173/250000000000000000",
                "1583558941454439306153/20000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "1529510129882739306153/20000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "2070262194269559306153/20000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "2016213382697859306153/20000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "3394234431635764573413/50000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "3113319361546264573413/50000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "4610992563673564573413/50000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "4330077493584064573413/50000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "269412064308597471117/20000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "215363252736897471117/20000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "568014433806117471117/20000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "513965622234417471117/20000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "-1566860404951519732587/50000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "-1847775475041019732587/50000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "-820354481207719732587/50000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "-1101269551297219732587/50000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "26271879018173525873823/125000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "26421226071817775873823/125000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "29313774348268025873823/125000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "29463121401912275873823/125000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "99440886852690766575597/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "98580344655665266575597/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "111608468173068766575597/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "110747925976043266575597/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "1128653814750750900303/7812500000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "1137988005603516525303/7812500000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "1245295365335719650303/7812500000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "1254629556188485275303/7812500000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "49829938486817923515597/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "48969396289792423515597/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "57294997724255923515597/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "56434455527230423515597/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "27106906081509922203883/200000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "26566417965792922203883/200000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "31973938609661122203883/200000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "31433450493944122203883/200000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "18504851219990873746737/100000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "17943021079811873746737/100000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "20938367484066473746737/100000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "20376537343887473746737/100000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "13965437310051503853523/200000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "13424949194334503853523/200000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "16951461005026703853523/200000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "16410972889309703853523/200000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "8582661546816305134737/100000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "8020831406637305134737/100000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "10075673394303905134737/100000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "9513843254124905134737/100000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "92629607112608645841199/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "93226995327185645841199/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "104797188432986645841199/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "105394576647563645841199/500000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "234773196017576418130353/1000000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "233052111623525418130353/1000000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "259108358658332418130353/1000000000000000000000000"
              ],
              [
                "-105984315818953173/250000000000000000",
                "257387274264281418130353/1000000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "59775935183962599965299/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "60373323398539599965299/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "67240994421400599965299/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "67838382635977599965299/500000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "135551299285830732010353/1000000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "133830214891779732010353/1000000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "150481417760706732010353/1000000000000000000000000"
              ],
              [
                "-65023538778637383/250000000000000000",
                "148760333366655732010353/1000000000000000000000000"
              ]
            ],
            "raw": [
              "104721/500000",
              "418209852062828425101/677328528944139406250"
            ],
            "new": [
              "104721/500000",
              "617441/1000000"
            ]
          },
          {
            "factor": 2059,
            "target": "x",
            "old": [
              "55727/200000",
              "706123/1000000"
            ],
            "lines": [
              [
                "21055522631/50000000000",
                "-2937411947379/25000000000000"
              ],
              [
                "17376478031/500000000000",
                "-2424156125979/250000000000000"
              ],
              [
                "21055522631/50000000000",
                "-6090550657581/50000000000000"
              ],
              [
                "17376478031/500000000000",
                "-5026344942981/500000000000000"
              ],
              [
                "21055522631/50000000000",
                "-7595270703501/50000000000000"
              ],
              [
                "17376478031/500000000000",
                "-6268144316901/500000000000000"
              ],
              [
                "21055522631/50000000000",
                "-1952749366581/12500000000000"
              ],
              [
                "17376478031/500000000000",
                "-1611544251981/125000000000000"
              ],
              [
                "47132941141/62500000000",
                "-6575418090969/31250000000000"
              ],
              [
                "183884780849/500000000000",
                "-25653381379941/250000000000000"
              ],
              [
                "47132941141/62500000000",
                "-13633742115591/62500000000000"
              ],
              [
                "183884780849/500000000000",
                "-53190775291899/500000000000000"
              ],
              [
                "47132941141/62500000000",
                "-17002068924711/62500000000000"
              ],
              [
                "183884780849/500000000000",
                "-66331988679579/500000000000000"
              ],
              [
                "47132941141/62500000000",
                "-4371243714591/15625000000000"
              ],
              [
                "183884780849/500000000000",
                "-17054000302899/125000000000000"
              ]
            ],
            "raw": [
              "122203767/437981500",
              "706123/1000000"
            ],
            "new": [
              "55803/200000",
              "706123/1000000"
            ]
          },
          {
            "factor": 8,
            "target": "b",
            "old": [
              "108013/1000000",
              "535/907"
            ],
            "lines": [
              [
                "24037/50000",
                "-93/1000"
              ],
              [
                "19837/500000",
                "-93/1000"
              ],
              [
                "53807/62500",
                "-93/1000"
              ],
              [
                "209923/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "11625/107614",
              "535/907"
            ],
            "new": [
              "13503/125000",
              "535/907"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "388519/500000",
              "873541/1000000"
            ],
            "lines": [
              [
                "-24723/62500",
                "37821/125000"
              ],
              [
                "-85621/1000000",
                "-7379/1000000"
              ],
              [
                "-720463/1000000",
                "627463/1000000"
              ],
              [
                "-102629/250000",
                "79379/250000"
              ]
            ],
            "raw": [
              "388519/500000",
              "627463/720463"
            ],
            "new": [
              "388519/500000",
              "870917/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "186537/1000000",
              "124121/250000"
            ],
            "lines": [
              [
                "-111481/500000",
                "3678729501/100000000000"
              ],
              [
                "-129083/1000000",
                "-3572028057/200000000000"
              ],
              [
                "-111481/500000",
                "54613267/500000000"
              ],
              [
                "-129083/1000000",
                "24078281/1000000000"
              ]
            ],
            "raw": [
              "186537/1000000",
              "54613267/111481000"
            ],
            "new": [
              "186537/1000000",
              "489889/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "116421/200000",
              "907/1000"
            ],
            "lines": [
              [
                "111481/500000",
                "-67295331297/500000000000"
              ],
              [
                "129083/1000000",
                "-117078755571/1000000000000"
              ],
              [
                "111481/500000",
                "-101113315609/500000000000"
              ],
              [
                "129083/1000000",
                "-156236341787/1000000000000"
              ]
            ],
            "raw": [
              "67295331297/111481000000",
              "907/1000"
            ],
            "new": [
              "9432/15625",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "873541/1000000"
            ],
            "lines": [
              [
                "-417111/1000000",
                "324111/1000000"
              ],
              [
                "-113759/1000000",
                "20759/1000000"
              ],
              [
                "-720463/1000000",
                "627463/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "627463/720463"
            ],
            "new": [
              "617/1000",
              "870917/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "186537/1000000",
              "489889/1000000"
            ],
            "lines": [
              [
                "310637/500000",
                "-10817495381/50000000000"
              ],
              [
                "715153/1000000",
                "-24272896783/100000000000"
              ],
              [
                "147497/500000",
                "-10817495381/50000000000"
              ],
              [
                "388873/1000000",
                "-24272896783/100000000000"
              ],
              [
                "310637/500000",
                "-59765332889/500000000000"
              ],
              [
                "715153/1000000",
                "-186675836827/1000000000000"
              ],
              [
                "147497/500000",
                "-59765332889/500000000000"
              ],
              [
                "388873/1000000",
                "-186675836827/1000000000000"
              ]
            ],
            "raw": [
              "59765332889/310637000000",
              "489889/1000000"
            ],
            "new": [
              "48099/250000",
              "489889/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "28099/100000",
              "715231/1000000"
            ],
            "lines": [
              [
                "-388519/500000",
                "36510377609/125000000000"
              ],
              [
                "-870917/1000000",
                "87567963421/250000000000"
              ],
              [
                "-388519/500000",
                "11230692629/125000000000"
              ],
              [
                "-870917/1000000",
                "37008593461/250000000000"
              ],
              [
                "-388519/500000",
                "264137/500000"
              ],
              [
                "-870917/1000000",
                "622153/1000000"
              ],
              [
                "-388519/500000",
                "100997/500000"
              ],
              [
                "-870917/1000000",
                "295873/1000000"
              ]
            ],
            "raw": [
              "28099/100000",
              "622153/870917"
            ],
            "new": [
              "28099/100000",
              "357183/500000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "55803/200000",
              "706123/1000000"
            ],
            "lines": [
              [
                "-6193/15625",
                "220569231/1000000000"
              ],
              [
                "-93/1000",
                "33401047/1000000000"
              ],
              [
                "-6193/15625",
                "275451613131/1000000000000"
              ],
              [
                "-93/1000",
                "11257199347/1000000000000"
              ],
              [
                "-6193/15625",
                "47046741/250000000"
              ],
              [
                "-93/1000",
                "50939/50000000"
              ],
              [
                "-6193/15625",
                "66134443641/250000000000"
              ],
              [
                "-93/1000",
                "17168039/50000000000"
              ]
            ],
            "raw": [
              "55803/200000",
              "275451613131/396352000000"
            ],
            "new": [
              "55803/200000",
              "86871/125000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "819791/1000000",
              "45217/50000"
            ],
            "lines": [
              [
                "-617/1000",
                "19775378329/50000000000"
              ],
              [
                "-870917/1000000",
                "69111554107/125000000000"
              ],
              [
                "-617/1000",
                "131/250"
              ],
              [
                "-870917/1000000",
                "777917/1000000"
              ],
              [
                "-617/1000",
                "8650644539/15625000000"
              ],
              [
                "-870917/1000000",
                "177756529193/250000000000"
              ]
            ],
            "raw": [
              "819791/1000000",
              "8650644539/9640625000"
            ],
            "new": [
              "819791/1000000",
              "28041/31250"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "178979/500000",
              "730671/1000000"
            ],
            "lines": [
              [
                "-819791/1000000",
                "109925456473/250000000000"
              ],
              [
                "-819791/1000000",
                "497000779663/1000000000000"
              ],
              [
                "-819791/1000000",
                "263409927059/500000000000"
              ],
              [
                "-819791/1000000",
                "584118807889/1000000000000"
              ],
              [
                "-28041/31250",
                "49993858869/100000000000"
              ],
              [
                "-28041/31250",
                "28225756821/50000000000"
              ],
              [
                "-28041/31250",
                "146764154229/250000000000"
              ],
              [
                "-28041/31250",
                "325816582323/500000000000"
              ],
              [
                "-819791/1000000",
                "47301787983/200000000000"
              ],
              [
                "-819791/1000000",
                "51101071113/200000000000"
              ],
              [
                "-819791/1000000",
                "123333844047/250000000000"
              ],
              [
                "-819791/1000000",
                "256165895919/500000000000"
              ],
              [
                "-28041/31250",
                "296745702713/1000000000000"
              ],
              [
                "-28041/31250",
                "161509856161/500000000000"
              ],
              [
                "-28041/31250",
                "276786069493/500000000000"
              ],
              [
                "-28041/31250",
                "115969229719/200000000000"
              ]
            ],
            "raw": [
              "178979/500000",
              "108605527441/149552000000"
            ],
            "new": [
              "178979/500000",
              "363103/500000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "28099/100000",
              "357183/500000"
            ],
            "lines": [
              [
                "178979/500000",
                "-3843657069/25000000000"
              ],
              [
                "178979/500000",
                "-60731795391/250000000000"
              ],
              [
                "178979/500000",
                "-4417534647/25000000000"
              ],
              [
                "178979/500000",
                "-30492817551/250000000000"
              ],
              [
                "363103/500000",
                "-25620645073/125000000000"
              ],
              [
                "363103/500000",
                "-114141932939/250000000000"
              ],
              [
                "363103/500000",
                "-28490032963/125000000000"
              ],
              [
                "363103/500000",
                "-83902955099/250000000000"
              ],
              [
                "178979/500000",
                "-54324459749/250000000000"
              ],
              [
                "178979/500000",
                "-1532393689/5000000000"
              ],
              [
                "178979/500000",
                "-93343713959/250000000000"
              ],
              [
                "178979/500000",
                "-995764813/3125000000"
              ],
              [
                "363103/500000",
                "-13425835841/50000000000"
              ],
              [
                "363103/500000",
                "-65014910999/125000000000"
              ],
              [
                "363103/500000",
                "-21229686683/50000000000"
              ],
              [
                "363103/500000",
                "-33267830647/62500000000"
              ]
            ],
            "raw": [
              "1507096769/5339750000",
              "357183/500000"
            ],
            "new": [
              "282241/1000000",
              "357183/500000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "8693/62500",
              "290077/500000"
            ],
            "lines": [
              [
                "-498023/1000000",
                "-27920620471/500000000000"
              ],
              [
                "-295951/500000",
                "21119918347/1000000000000"
              ],
              [
                "-8207/100000",
                "-27920620471/500000000000"
              ],
              [
                "-175949/1000000",
                "21119918347/1000000000000"
              ],
              [
                "-498023/1000000",
                "68680029/15625000000"
              ],
              [
                "-295951/500000",
                "2769821097/31250000000"
              ],
              [
                "-8207/100000",
                "68680029/15625000000"
              ],
              [
                "-175949/1000000",
                "2769821097/31250000000"
              ]
            ],
            "raw": [
              "8693/62500",
              "2769821097/5498406250"
            ],
            "new": [
              "8693/62500",
              "403/800"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "388519/500000",
              "870917/1000000"
            ],
            "lines": [
              [
                "680703/1000000",
                "-8175529521/12500000000"
              ],
              [
                "316041/1000000",
                "-88367391/160000000"
              ],
              [
                "680703/1000000",
                "-2328860511/3906250000"
              ],
              [
                "316041/1000000",
                "-34275987/100000000"
              ],
              [
                "47389/62500",
                "-8175529521/12500000000"
              ],
              [
                "196781/500000",
                "-88367391/160000000"
              ],
              [
                "47389/62500",
                "-2328860511/3906250000"
              ],
              [
                "196781/500000",
                "-34275987/100000000"
              ]
            ],
            "raw": [
              "2328860511/2961812500",
              "870917/1000000"
            ],
            "new": [
              "157259/200000",
              "870917/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "819791/1000000",
              "28041/31250"
            ],
            "lines": [
              [
                "157259/200000",
                "-1192822751/1562500000"
              ],
              [
                "157259/200000",
                "-9483923/10000000"
              ],
              [
                "870917/1000000",
                "-24224264543/31250000000"
              ],
              [
                "870917/1000000",
                "-396408253/400000000"
              ],
              [
                "157259/200000",
                "-44097030611/62500000000"
              ],
              [
                "157259/200000",
                "-591084781/800000000"
              ],
              [
                "870917/1000000",
                "-44832649657/62500000000"
              ],
              [
                "870917/1000000",
                "-625187447/800000000"
              ]
            ],
            "raw": [
              "44832649657/54432312500",
              "28041/31250"
            ],
            "new": [
              "20591/25000",
              "28041/31250"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "104721/500000",
              "617441/1000000"
            ],
            "lines": [
              [
                "157259/200000",
                "-13928471041/62500000000"
              ],
              [
                "157259/200000",
                "-303243011/800000000"
              ],
              [
                "870917/1000000",
                "-14664090087/62500000000"
              ],
              [
                "870917/1000000",
                "-337345677/800000000"
              ],
              [
                "157259/200000",
                "-10727291177/62500000000"
              ],
              [
                "157259/200000",
                "-154839067/800000000"
              ],
              [
                "870917/1000000",
                "-11462910223/62500000000"
              ],
              [
                "870917/1000000",
                "-188941733/800000000"
              ]
            ],
            "raw": [
              "11462910223/54432312500",
              "617441/1000000"
            ],
            "new": [
              "21059/100000",
              "617441/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "38941/250000",
              "120511/250000"
            ],
            "lines": [
              [
                "-1/1",
                "69403201981/200000000000"
              ],
              [
                "-1/1",
                "407754212003/1000000000000"
              ],
              [
                "-1/1",
                "209340898951/500000000000"
              ],
              [
                "-1/1",
                "23971/50000"
              ],
              [
                "-1/1",
                "27385940803/100000000000"
              ],
              [
                "-1/1",
                "149015164189/500000000000"
              ],
              [
                "-1/1",
                "113812269913/250000000000"
              ]
            ],
            "raw": [
              "38941/250000",
              "23971/50000"
            ],
            "new": [
              "38941/250000",
              "23971/50000"
            ]
          },
          {
            "factor": 214,
            "target": "h",
            "old": [
              "154957/250000",
              "1/1"
            ],
            "lines": [
              [
                "157259/200000",
                "-270723/500000"
              ],
              [
                "870917/1000000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "541446/870917",
              "1/1"
            ],
            "new": [
              "9714/15625",
              "1/1"
            ]
          },
          {
            "factor": 219,
            "target": "b",
            "old": [
              "13503/125000",
              "535/907"
            ],
            "lines": [
              [
                "-185388531/976562500",
                "294695974827/97656250000000"
              ],
              [
                "-185388531/976562500",
                "1632057524901/488281250000000"
              ],
              [
                "-19094409/48828125",
                "6298146050349/39062500000000"
              ],
              [
                "-19094409/48828125",
                "34879799971587/195312500000000"
              ],
              [
                "-62191/250000",
                "2467550969/50000000000"
              ],
              [
                "-62191/250000",
                "13665558647/250000000000"
              ],
              [
                "-28621/50000",
                "3038401139/10000000000"
              ],
              [
                "-28621/50000",
                "16826987357/50000000000"
              ]
            ],
            "raw": [
              "13503/125000",
              "16826987357/28621000000"
            ],
            "new": [
              "13503/125000",
              "23517/40000"
            ]
          },
          {
            "factor": 224,
            "target": "a",
            "old": [
              "8693/62500",
              "403/800"
            ],
            "lines": [
              [
                "745554551/3125000000",
                "-24977389/500000000"
              ],
              [
                "4285347113/15625000000",
                "-24554279/500000000"
              ],
              [
                "134009/250000",
                "-1702741/20000000"
              ],
              [
                "754667/1250000",
                "-8429083/100000000"
              ]
            ],
            "raw": [
              "8429083/60373360",
              "403/800"
            ],
            "new": [
              "27923/200000",
              "403/800"
            ]
          },
          {
            "factor": 1345,
            "target": "g",
            "old": [
              "38941/250000",
              "23971/50000"
            ],
            "lines": [
              [
                "184013880278107919/500000000000000000",
                "-11468552241999/200000000000000"
              ],
              [
                "22510429910411027/250000000000000000",
                "-1402948739667/100000000000000"
              ],
              [
                "65683062548857923/100000000000000000",
                "-4093656593283/40000000000000"
              ],
              [
                "151537833829603/400000000000000",
                "-9444502563/160000000000"
              ],
              [
                "184013880278107919/500000000000000000",
                "-9498925470243/125000000000000"
              ],
              [
                "22510429910411027/250000000000000000",
                "-1162004168919/62500000000000"
              ],
              [
                "65683062548857923/100000000000000000",
                "-3390605724231/25000000000000"
              ],
              [
                "151537833829603/400000000000000",
                "-7822489191/100000000000"
              ]
            ],
            "raw": [
              "59474197500/381707389999",
              "23971/50000"
            ],
            "new": [
              "15581/100000",
              "23971/50000"
            ]
          },
          {
            "factor": 1747,
            "target": "u",
            "old": [
              "178979/500000",
              "363103/500000"
            ],
            "lines": [
              [
                "242079347264588407/1000000000000000000",
                "-17414285721393/200000000000000"
              ],
              [
                "29613582253261531/500000000000000000",
                "-2130290701869/100000000000000"
              ],
              [
                "242079347264588407/1000000000000000000",
                "-90865331836491/1000000000000000"
              ],
              [
                "29613582253261531/500000000000000000",
                "-11115561937503/500000000000000"
              ],
              [
                "242079347264588407/1000000000000000000",
                "-20316001644219/200000000000000"
              ],
              [
                "29613582253261531/500000000000000000",
                "-2485257798927/100000000000000"
              ],
              [
                "242079347264588407/1000000000000000000",
                "-105373911450621/1000000000000000"
              ],
              [
                "29613582253261531/500000000000000000",
                "-12890397422793/500000000000000"
              ],
              [
                "86409312624327819/200000000000000000",
                "-6215963798781/40000000000000"
              ],
              [
                "199355504290859/800000000000000",
                "-14340891741/160000000000"
              ],
              [
                "86409312624327819/200000000000000000",
                "-32434038484047/200000000000000"
              ],
              [
                "199355504290859/800000000000000",
                "-74828787567/800000000000"
              ],
              [
                "86409312624327819/200000000000000000",
                "-7251720385023/40000000000000"
              ],
              [
                "199355504290859/800000000000000",
                "-16730492703/160000000000"
              ],
              [
                "86409312624327819/200000000000000000",
                "-37612821415257/200000000000000"
              ],
              [
                "199355504290859/800000000000000",
                "-86776792377/800000000000"
              ]
            ],
            "raw": [
              "180615765000/502154922647",
              "363103/500000"
            ],
            "new": [
              "359681/1000000",
              "363103/500000"
            ]
          },
          {
            "factor": 1786,
            "target": "v",
            "old": [
              "21059/100000",
              "617441/1000000"
            ],
            "lines": [
              [
                "-42391416414937093/100000000000000000",
                "79258303609339490411689/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "76728880016017490411689/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "102614380866649490411689/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "100084957273327490411689/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "68710770111569059343713/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "63794012994455059343713/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "92066847368879059343713/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "87150090251765059343713/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "11708238686381169807529/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "9178815093059169807529/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "26111046938801169807529/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "23581623345479169807529/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "-29875509285151613346287/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "-34792266402265613346287/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "-15472701032731613346287/1000000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "-20389458149845613346287/1000000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "104807596802488244368407/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "105243263607202244368407/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "116485635431143244368407/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "116921302235857244368407/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "99533830053603028834419/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "98775830096421028834419/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "111211868682258028834419/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "110453868725076028834419/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "71032564341009084066327/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "71468231145723084066327/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "78233968467219084066327/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "78669635271933084066327/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "50240690355242692489419/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "49482690398060692489419/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "57442094481452692489419/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "56684094524270692489419/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "69207005904662228549207/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "67942294108001228549207/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "80885044533317228549207/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "79620332736656228549207/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "91849560819402633512519/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "89391182260845633512519/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "103527599448057633512519/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "101069220889500633512519/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "35431973443183068247127/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "34167261646522068247127/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "42633377569393068247127/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "41368665772732068247127/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "42556421121042297167519/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "40098042562485297167519/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "49757825247252297167519/500000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "47299446688695297167519/500000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "47309321849328688216041/250000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "47527155251685688216041/250000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "53148341163656188216041/250000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "53366174566013188216041/250000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "58630599306698890697697/250000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "58251599328107890697697/250000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "64469618621026390697697/250000000000000000000000"
              ],
              [
                "-42391416414937093/100000000000000000",
                "64090618642435390697697/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "30421805618589108065001/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "30639639020946108065001/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "34022507681694108065001/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "34240341084051108065001/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "33984029457518722525197/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "33605029478927722525197/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "37584731520623722525197/250000000000000000000000"
              ],
              [
                "-13070590481578763/50000000000000000",
                "37205731542032722525197/250000000000000000000000"
              ]
            ],
            "raw": [
              "21059/100000",
              "64469618621026390697697/105978541037342732500000"
            ],
            "new": [
              "21059/100000",
              "76041/125000"
            ]
          },
          {
            "factor": 2059,
            "target": "x",
            "old": [
              "55803/200000",
              "86871/125000"
            ],
            "lines": [
              [
                "422285119003/1000000000000",
                "-23647850482647/200000000000000"
              ],
              [
                "51658165999/500000000000",
                "-2892843083451/100000000000000"
              ],
              [
                "422285119003/1000000000000",
                "-122033155642761/1000000000000000"
              ],
              [
                "51658165999/500000000000",
                "-14928323845413/500000000000000"
              ],
              [
                "422285119003/1000000000000",
                "-76195620504759/500000000000000"
              ],
              [
                "51658165999/500000000000",
                "-9321015198747/250000000000000"
              ],
              [
                "422285119003/1000000000000",
                "-39046286059761/250000000000000"
              ],
              [
                "51658165999/500000000000",
                "-4776534706413/125000000000000"
              ],
              [
                "150733085151/200000000000",
                "-8441011297899/40000000000000"
              ],
              [
                "347757311/800000000",
                "-19474313739/160000000000"
              ],
              [
                "150733085151/200000000000",
                "-43559275979637/200000000000000"
              ],
              [
                "347757311/800000000",
                "-100495897557/800000000000"
              ],
              [
                "150733085151/200000000000",
                "-27197740192203/100000000000000"
              ],
              [
                "347757311/800000000",
                "-62748088683/400000000000"
              ],
              [
                "150733085151/200000000000",
                "-13937424968637/50000000000000"
              ],
              [
                "347757311/800000000",
                "-32155126557/200000000000"
              ]
            ],
            "raw": [
              "49053687/175192600",
              "86871/125000"
            ],
            "new": [
              "139999/500000",
              "86871/125000"
            ]
          }
        ]
      }
    },
    {
      "id": 2,
      "assumptions": [
        "AGO+",
        "AGP-",
        "DGP+"
      ],
      "initial_box": {
        "low": [
          "27923/200000",
          "13503/125000",
          "157259/200000",
          "48099/250000",
          "9432/15625",
          "617/1000",
          "15581/100000",
          "9714/15625",
          "282241/1000000",
          "139999/500000",
          "20591/25000",
          "359681/1000000",
          "21059/100000"
        ],
        "high": [
          "403/800",
          "23517/40000",
          "870917/1000000",
          "489889/1000000",
          "907/1000",
          "870917/1000000",
          "23971/50000",
          "1",
          "357183/500000",
          "86871/125000",
          "28041/31250",
          "363103/500000",
          "76041/125000"
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
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": -1,
        "DGP": 1,
        "ACO": 1,
        "AOP": -1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGP": -1,
        "GHP": -1,
        "GOP": -1,
        "EGP": 1,
        "DGH": -1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADG": 1,
        "BEG": 1,
        "BEO": 1,
        "BDG": 1,
        "BDO": 1,
        "BOP": -1,
        "DHO": -1
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
          "sign": 1,
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
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
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
            "plu",
            "BADEG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BEG",
            "ABE",
            "ABG",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ABO",
            "GP",
            "BOA",
            [
              "area",
              "ABO",
              "U_ABO",
              "557836721843639/907000000000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "AGO",
            "ABG",
            "AOP",
            "ABP",
            "BGP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "cap",
            "CDH",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CDH",
              "U_CDH",
              "61741980571/100000000000"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "CDO",
            "CHO"
          ],
          "area_stage": 1
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
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
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
        "L_BCO": {
          "triangle": "BCO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCO",
            "points": [
              "P"
            ]
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
        "L_CDH": {
          "triangle": "CDH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDH",
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEF",
            "points": []
          }
        },
        "L_CFH": {
          "triangle": "CFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
            "points": [
              "P"
            ]
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
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
            "points": [
              "P"
            ]
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
            "triangle": "COP",
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
        "L_DFH": {
          "triangle": "DFH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DFH",
            "points": [
              "O"
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDO",
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
            "triangle": "FOP",
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
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "870917/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "112162023/160000000",
              "594405049/800000000",
              "30506355143/40000000000",
              "79810950053/100000000000",
              "331569333/400000000",
              "167093275609/200000000000",
              "870917/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "756919155469/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "7851538001/20000000000",
              "41964663163/100000000000",
              "45050482529/100000000000",
              "241904414427/500000000000",
              "115387471629/200000000000",
              "12032360751/20000000000",
              "62868776913/100000000000",
              "126964184339/200000000000",
              "126973056677/200000000000",
              "126974678939/200000000000",
              "65954596279/100000000000",
              "138551391649/200000000000",
              "138560263987/200000000000",
              "346424983177/500000000000",
              "698983118919/1000000000000",
              "756919155469/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ADO": {
          "triangle": "ADO",
          "side": "hi",
          "value": "371459212781/500000000000",
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
              "161885526139/500000000000",
              "41190368931/125000000000",
              "198721526139/500000000000",
              "50399368931/125000000000",
              "101767124323/250000000000",
              "27537236173/62500000000",
              "120185124323/250000000000",
              "32141736173/62500000000",
              "33516941667/62500000000",
              "146487245137/250000000000",
              "38121441667/62500000000",
              "80917986749/125000000000",
              "164905245137/250000000000",
              "334623212781/500000000000",
              "90126986749/125000000000",
              "371459212781/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_AOP": {
          "triangle": "AOP",
          "side": "hi",
          "value": "132592812383/250000000000",
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
              "-79709740159/1000000000000",
              "-53211321527/1000000000000",
              "21189995793/500000000000",
              "34439205109/500000000000",
              "42888362123/500000000000",
              "56137571439/500000000000",
              "114792093451/1000000000000",
              "141290512083/1000000000000",
              "39906918459/250000000000",
              "85501261483/500000000000",
              "7868217689/40000000000",
              "19714256877/100000000000",
              "6344512703/31250000000",
              "53282180567/250000000000",
              "223203860857/1000000000000",
              "111820493701/500000000000",
              "112251785699/500000000000",
              "9046317519/40000000000",
              "252656356607/1000000000000",
              "16032840933/62500000000",
              "15719512551/50000000000",
              "31879517397/100000000000",
              "172646796301/500000000000",
              "11422011143/31250000000",
              "91972824863/250000000000",
              "26187837813/62500000000",
              "21802142811/50000000000",
              "8948354107/20000000000",
              "4768702011/10000000000",
              "122385976163/250000000000",
              "250459376891/500000000000",
              "132592812383/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "21392282613/31250000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCO",
            "used": [
              1,
              2,
              9,
              10
            ],
            "values": [
              "408463667/2500000000",
              "556249317/3125000000",
              "364193017/1562500000",
              "495961167/1953125000",
              "13966278161/25000000000",
              "19019397111/31250000000",
              "15708729763/25000000000",
              "21392282613/31250000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDG": {
          "triangle": "CDG",
          "side": "hi",
          "value": "92306250439/200000000000",
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
              "22350994363/200000000000",
              "23871567081/200000000000",
              "16753496319/100000000000",
              "1392129931/8000000000",
              "36323820993/200000000000",
              "10532549989/50000000000",
              "21170510853/100000000000",
              "57055647209/250000000000",
              "919184931/4000000000",
              "27396637809/100000000000",
              "284002580211/1000000000000",
              "60599654581/200000000000",
              "36918397907/100000000000",
              "193377784063/500000000000",
              "442535559501/1000000000000",
              "92306250439/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "119780454251/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "2478113319/10000000000",
              "568279113/2000000000",
              "74160986783/250000000000",
              "18249250641/50000000000",
              "506903042981/1000000000000",
              "103611362987/200000000000",
              "555735658213/1000000000000",
              "119780454251/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "185374913/200000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "4734200703/7812500000",
              "949226481/1562500000",
              "10231411019/15625000000",
              "2151095013/3125000000",
              "21150727717/25000000000",
              "108771512971/125000000000",
              "919004719/1000000000",
              "185374913/200000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "715107/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CFG",
            "used": [
              2,
              5,
              6,
              8
            ],
            "values": [
              "18593640803/100000000000",
              "105053664189/500000000000",
              "51818601981/200000000000",
              "319831212003/1000000000000",
              "165379398951/500000000000",
              "91831519913/250000000000",
              "391497/1000000",
              "50954640803/100000000000",
              "266858664189/500000000000",
              "116540601981/200000000000",
              "643441212003/1000000000000",
              "327184398951/500000000000",
              "172734019913/250000000000",
              "715107/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "870917/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "617/1000",
              "2128265549/3125000000",
              "11141528387/15625000000",
              "13107877483/15625000000",
              "870917/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "840121857/1250000000",
          "witness": {
            "kind": "vertices",
            "signed": "HCO",
            "used": [
              2,
              7,
              9,
              10
            ],
            "values": [
              "3160076947/25000000000",
              "706635069/5000000000",
              "5955164847/31250000000",
              "1245343369/6250000000",
              "41607649261/125000000000",
              "43743762407/125000000000",
              "12212159979/31250000000",
              "2588201853/6250000000",
              "13534326947/25000000000",
              "2781485069/5000000000",
              "73855797901/125000000000",
              "18922977347/31250000000",
              "75991911047/125000000000",
              "3838905869/6250000000",
              "20274197139/31250000000",
              "840121857/1250000000"
            ],
            "cell": "CA"
          }
        },
        "U_DFH": {
          "triangle": "DFH",
          "side": "hi",
          "value": "7521886681/10000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DFH",
            "used": [
              3,
              5,
              7
            ],
            "values": [
              "314738487/1000000000",
              "444264341787/1000000000000",
              "459628919/1000000000",
              "493096957019/1000000000000",
              "124572917/250000000",
              "6431821/10000000",
              "175839013217/250000000000",
              "7521886681/10000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "68751058897/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "1127475133/7812500000",
              "3692779487/25000000000",
              "30207703/125000000",
              "4421479541/15625000000",
              "7159226327/25000000000",
              "42639225403/125000000000",
              "24357572689/62500000000",
              "48706597/100000000",
              "247053982613/500000000000",
              "33023689789/62500000000",
              "316382919413/500000000000",
              "68751058897/100000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "0": {
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
        "1": {
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
        "2": {
          "row": [
            "fan",
            "ACO",
            "ACP",
            "COP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "P"
          }
        },
        "4": {
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
        "13": {
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
        "16": {
          "row": [
            "fan",
            "CFG",
            "CFP",
            "FGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "P"
          }
        },
        "20": {
          "row": [
            "fan",
            "CHO",
            "CHP",
            "COP",
            "HOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HCO",
            "point": "P"
          }
        },
        "57": {
          "row": [
            "plu",
            "ACG",
            "AOP",
            "ACO",
            "AGP",
            "ACP",
            "AGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACGOP"
          }
        },
        "196": {
          "row": [
            "plu",
            "CDF",
            "CEH",
            "CDE",
            "CFH",
            "CDH",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CDEFH"
          }
        },
        "377": {
          "row": [
            "plu",
            "CEF",
            "DFH",
            "CDF",
            "EFH",
            "CFH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEH"
          }
        },
        "408": {
          "row": [
            "plu",
            "ACG",
            "DGO",
            "ADG",
            "CGO",
            "AGO",
            "CDG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GACDO"
          }
        },
        "475": {
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
        "595": {
          "row": [
            "plu",
            "ACP",
            "HOP",
            "AHP",
            "COP",
            "AOP",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PACHO"
          }
        },
        "676": {
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
        "706": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "1472": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "FHO"
              ],
              [
                -1,
                "ACO",
                "FGH"
              ],
              [
                1,
                "AFH",
                "CGO"
              ],
              [
                1,
                "AGO",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACG",
            "point": "O",
            "line": "FH"
          }
        },
        "1891": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CDH",
                "FGP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGP",
                "DFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDF",
            "point": "H",
            "line": "GP"
          }
        },
        "1910": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "DGH"
              ],
              [
                -1,
                "ADO",
                "CGH"
              ],
              [
                -1,
                "AGO",
                "CDH"
              ],
              [
                -1,
                "AHO",
                "CDG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDG",
            "point": "H",
            "line": "AO"
          }
        },
        "2030": {
          "row": [
            "balance",
            [
              [
                1,
                "CDP",
                "FGH"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGH",
                "DFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "H",
            "line": "DP"
          }
        },
        "2228": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CFP",
                "DGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DGH",
            "point": "P",
            "line": "CF"
          }
        },
        "2394": {
          "row": [
            "linear",
            {
              "ACD": "-93/1000",
              "ADO": "384919155469/1000000000000",
              "ADG": "-756919155469/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "G",
            "line": "AD",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "756919155469/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "291919155469/1000000000000"
          }
        },
        "2586": {
          "row": [
            "linear",
            {
              "ADH": "-93/1000",
              "AHO": "-93/1000",
              "AGH": "371459212781/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ADO",
            "point": "G",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ADO",
              "ref": "U_ADO",
              "value": "371459212781/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "DGO",
                "ref": "L_DGO",
                "value": "93/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ADG",
                "ref": "L_ADG",
                "value": "93/1000"
              }
            ],
            "residual": "231959212781/500000000000"
          }
        },
        "2730": {
          "row": [
            "linear",
            {
              "COP": "-93/1000",
              "ACP": "86092812383/250000000000",
              "CGP": "-132592812383/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "OAP",
            "point": "G",
            "line": "CP",
            "side": "upper",
            "outer_upper": {
              "triangle": "AOP",
              "ref": "U_AOP",
              "value": "132592812383/250000000000"
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
            "residual": "62842812383/250000000000"
          }
        },
        "3076": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "ADH": "-93/1000",
              "AGH": "-93/1000",
              "AHP": "92306250439/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "92306250439/200000000000"
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
            "residual": "36506250439/200000000000"
          }
        },
        "3115": {
          "row": [
            "linear",
            {
              "CEG": "-93/1000",
              "DEG": "-93/1000",
              "EGP": "92306250439/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "EG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "92306250439/200000000000"
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
            "residual": "36506250439/200000000000"
          }
        },
        "3400": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "AFH": "-279/1000",
              "AHO": "870917/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "870917/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "405917/1000000"
          }
        },
        "3587": {
          "row": [
            "linear",
            {
              "AGH": "-93/1000",
              "ACG": "607621857/1250000000",
              "AGO": "-93/1000",
              "AGP": "-840121857/1250000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "840121857/1250000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "491371857/1250000000"
          }
        },
        "3735": {
          "row": [
            "linear",
            {
              "CFP": "50151058897/100000000000",
              "CHP": "-93/1000",
              "COP": "-68751058897/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "68751058897/100000000000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "40851058897/100000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0002",
          "relation": 1,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "9623/25000",
          "sources": [
            "U_ACO",
            "L_CGO",
            "L_AGO"
          ]
        },
        {
          "id": "T0004",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "9623/25000",
          "sources": [
            "U_ACO",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0026",
          "relation": 57,
          "rule": "sumlo",
          "triangle": "ACG",
          "side": "lo",
          "value": "137797/1000000",
          "sources": [
            "L_ACO",
            "L_AGP",
            "L_ACP",
            "L_AGO",
            "U_AOP"
          ]
        },
        {
          "id": "T0037",
          "relation": 196,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "12189/125000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "L_CDH",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0046",
          "relation": 377,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "97719/1000000",
          "sources": [
            "T0037",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0048",
          "relation": 408,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "134817/1000000",
          "sources": [
            "L_ADG",
            "L_CGO",
            "L_AGO",
            "L_CDG",
            "T0002"
          ]
        },
        {
          "id": "T0055",
          "relation": 595,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "134817/1000000",
          "sources": [
            "L_AHP",
            "L_COP",
            "L_AOP",
            "L_CHP",
            "T0004"
          ]
        },
        {
          "id": "T0058",
          "relation": 706,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "151061/1000000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0070",
          "relation": 1472,
          "rule": "balance_lo",
          "triangle": "FGH",
          "side": "lo",
          "value": "157739/1000000",
          "sources": [
            "T0026",
            "L_FHO",
            "T0058",
            "L_CGO",
            "L_AGO",
            "L_CFH",
            "U_ACO"
          ]
        },
        {
          "id": "T0079",
          "relation": 2030,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "61357/500000",
          "sources": [
            "L_CDP",
            "T0070",
            "L_CFH",
            "L_DGP",
            "L_CGH",
            "L_DFP",
            "U_CFG"
          ]
        },
        {
          "id": "T0093",
          "relation": 2730,
          "rule": "linear",
          "triangle": "ACP",
          "side": "lo",
          "value": "84173/500000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0111",
          "relation": 3587,
          "rule": "linear",
          "triangle": "ACG",
          "side": "lo",
          "value": "16417/100000",
          "sources": [
            "L_AGH",
            "L_AGO",
            "L_AGP"
          ]
        },
        {
          "id": "T0115",
          "relation": 3735,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "144737/1000000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0118",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "35017/100000",
          "sources": [
            "T0111",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0123",
          "relation": 4,
          "rule": "sum",
          "triangle": "ADO",
          "side": "lo",
          "value": "320817/1000000",
          "sources": [
            "L_ADG",
            "T0048",
            "L_AGO"
          ]
        },
        {
          "id": "T0126",
          "relation": 13,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "154357/500000",
          "sources": [
            "L_CDP",
            "T0079",
            "L_CHP"
          ]
        },
        {
          "id": "T0131",
          "relation": 20,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "320817/1000000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0055"
          ]
        },
        {
          "id": "T0141",
          "relation": 196,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "20413/200000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0126",
            "T0046",
            "U_CEH"
          ]
        },
        {
          "id": "T0149",
          "relation": 377,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "49141/500000",
          "sources": [
            "T0141",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0151",
          "relation": 475,
          "rule": "sumlo",
          "triangle": "AHO",
          "side": "lo",
          "value": "46519/500000",
          "sources": [
            "T0118",
            "L_FHO",
            "T0058",
            "T0131",
            "U_CFH"
          ]
        },
        {
          "id": "T0163",
          "relation": 1910,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "55821/500000",
          "sources": [
            "T0123",
            "L_CGH",
            "L_AGO",
            "T0126",
            "T0151",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0166",
          "relation": 2228,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "5039/40000",
          "sources": [
            "T0141",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0115",
            "T0163",
            "U_CFG"
          ]
        },
        {
          "id": "T0176",
          "relation": 13,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "12479/40000",
          "sources": [
            "L_CDP",
            "T0166",
            "L_CHP"
          ]
        },
        {
          "id": "T0186",
          "relation": 196,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "102599/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0176",
            "T0149",
            "U_CEH"
          ]
        },
        {
          "id": "T0190",
          "relation": 377,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "24587/250000",
          "sources": [
            "T0186",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0198",
          "relation": 1910,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "56021/500000",
          "sources": [
            "T0123",
            "L_CGH",
            "L_AGO",
            "T0176",
            "T0151",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0199",
          "relation": 2228,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "1009/8000",
          "sources": [
            "T0186",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0115",
            "T0198",
            "U_CFG"
          ]
        },
        {
          "id": "T0206",
          "relation": 13,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "2497/8000",
          "sources": [
            "L_CDP",
            "T0199",
            "L_CHP"
          ]
        },
        {
          "id": "T0213",
          "relation": 196,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "102637/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0206",
            "T0190",
            "U_CEH"
          ]
        },
        {
          "id": "T0217",
          "relation": 377,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "98353/1000000",
          "sources": [
            "T0213",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0223",
          "relation": 1910,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "112061/1000000",
          "sources": [
            "T0123",
            "L_CGH",
            "L_AGO",
            "T0206",
            "T0151",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0224",
          "relation": 2228,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "63067/500000",
          "sources": [
            "T0213",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0115",
            "T0223",
            "U_CFG"
          ]
        },
        {
          "id": "T0230",
          "relation": 13,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "156067/500000",
          "sources": [
            "L_CDP",
            "T0224",
            "L_CHP"
          ]
        },
        {
          "id": "T0237",
          "relation": 196,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "102639/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0230",
            "T0217",
            "U_CEH"
          ]
        },
        {
          "id": "T0245",
          "relation": 1891,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "166851/1000000",
          "sources": [
            "T0237",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "L_CGP",
            "L_DFH",
            "U_CDH"
          ]
        },
        {
          "id": "T0251",
          "relation": 16,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "101147/250000",
          "sources": [
            "T0115",
            "T0245",
            "L_CGP"
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
        "62": {
          "name": "AREA_LO_DEF",
          "terms": [
            [
              [
                4,
                5
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
                5
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
            "triangle": "DEF",
            "side": "lo",
            "reference": "L_DEF",
            "value": "93/1000"
          }
        },
        "74": {
          "name": "AREA_LO_CDG",
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
                3,
                6
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
            "triangle": "CDG",
            "side": "lo",
            "reference": "L_CDG",
            "value": "279/1000"
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "L_BCO",
            "value": "279/1000"
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
              "907/1000"
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
            "reference": "L_EFO",
            "value": "93/1000"
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
        "132": {
          "name": "AREA_LO_COP",
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
                2,
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
                2,
                10
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
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "140": {
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "148": {
          "name": "AREA_LO_ACP",
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
                0,
                2
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
              "-84173/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "T0093",
            "value": "84173/500000"
          }
        },
        "152": {
          "name": "AREA_LO_CFG",
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
                2,
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
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-101147/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0251",
            "value": "101147/250000"
          }
        },
        "216": {
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
        "226": {
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
        "228": {
          "name": "Central_endpoint_tangent_1",
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
              "-1/5"
            ],
            [
              [
                2
              ],
              "1/100"
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
            "t": "1/10"
          }
        },
        "304": {
          "name": "QUAD_676",
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
            "index": 676
          }
        },
        "1313": {
          "name": "LINEAR_2394",
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
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                0
              ],
              "279/1000"
            ],
            [
              [
                10
              ],
              "384919155469/1000000000000"
            ],
            [
              [
                3,
                9
              ],
              "-384919155469/1000000000000"
            ],
            [
              [
                0,
                9
              ],
              "384919155469/1000000000000"
            ],
            [
              [
                8
              ],
              "-756919155469/1000000000000"
            ],
            [
              [
                3,
                6
              ],
              "756919155469/1000000000000"
            ],
            [
              [
                0,
                6
              ],
              "-756919155469/1000000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2394
          }
        },
        "1505": {
          "name": "LINEAR_2586",
          "terms": [
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
              "93/1000"
            ],
            [
              [
                7,
                9
              ],
              "-93/1000"
            ],
            [
              [
                0,
                9
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "371459212781/500000000000"
            ],
            [
              [
                0,
                6
              ],
              "-371459212781/500000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2586
          }
        },
        "1995": {
          "name": "LINEAR_3076",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
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
                7
              ],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                6
              ],
              "93/1000"
            ],
            [
              [
                7,
                11
              ],
              "92306250439/200000000000"
            ],
            [
              [
                0,
                11
              ],
              "-92306250439/200000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3076
          }
        },
        "2034": {
          "name": "LINEAR_3115",
          "terms": [
            [
              [
                8
              ],
              "73706250439/200000000000"
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
                4,
                6
              ],
              "-55106250439/200000000000"
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
                4
              ],
              "-93/1000"
            ],
            [
              [
                3,
                6
              ],
              "-93/1000"
            ],
            [
              [
                3
              ],
              "93/1000"
            ],
            [
              [
                6,
                12
              ],
              "92306250439/200000000000"
            ],
            [
              [
                12
              ],
              "-92306250439/200000000000"
            ],
            [
              [
                8,
                11
              ],
              "-92306250439/200000000000"
            ],
            [
              [
                4,
                11
              ],
              "92306250439/200000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3115
          }
        },
        "2319": {
          "name": "LINEAR_3400",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
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
                5,
                7
              ],
              "-279/1000"
            ],
            [
              [
                0,
                5
              ],
              "279/1000"
            ],
            [
              [
                7,
                9
              ],
              "870917/1000000"
            ],
            [
              [
                0,
                9
              ],
              "-870917/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3400
          }
        }
      },
      "coordinate": {
        "low": [
          "141161/1000000",
          "4329/40000",
          "401373/500000",
          "59619/250000",
          "689853/1000000",
          "617/1000",
          "20539/125000",
          "689853/1000000",
          "72797/250000",
          "312589/1000000",
          "839537/1000000",
          "432137/1000000",
          "110547/500000"
        ],
        "high": [
          "34119/100000",
          "106747/250000",
          "863327/1000000",
          "221847/500000",
          "907/1000",
          "863327/1000000",
          "228439/500000",
          "1/1",
          "606981/1000000",
          "318123/500000",
          "446139/500000",
          "10987/15625",
          "248473/500000"
        ],
        "steps": [
          {
            "factor": 8,
            "target": "b",
            "old": [
              "13503/125000",
              "23517/40000"
            ],
            "lines": [
              [
                "482081/1000000",
                "-93/1000"
              ],
              [
                "58973/500000",
                "-93/1000"
              ],
              [
                "172077/200000",
                "-93/1000"
              ],
              [
                "397/800",
                "-93/1000"
              ]
            ],
            "raw": [
              "6200/57359",
              "23517/40000"
            ],
            "new": [
              "108091/1000000",
              "23517/40000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "157259/200000",
              "870917/1000000"
            ],
            "lines": [
              [
                "-102813/250000",
                "79563/250000"
              ],
              [
                "-113759/1000000",
                "20759/1000000"
              ],
              [
                "-178651/250000",
                "155401/250000"
              ],
              [
                "-417111/1000000",
                "324111/1000000"
              ]
            ],
            "raw": [
              "157259/200000",
              "155401/178651"
            ],
            "new": [
              "157259/200000",
              "434929/500000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "48099/250000",
              "489889/1000000"
            ],
            "lines": [
              [
                "-42741/200000",
                "7031757/195312500"
              ],
              [
                "-65071/500000",
                "-28203207/1953125000"
              ],
              [
                "-42741/200000",
                "20166087/200000000"
              ],
              [
                "-65071/500000",
                "12519397/500000000"
              ]
            ],
            "raw": [
              "48099/250000",
              "6722029/14247000"
            ],
            "new": [
              "48099/250000",
              "471821/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "9432/15625",
              "907/1000"
            ],
            "lines": [
              [
                "42741/200000",
                "-6705799359/50000000000"
              ],
              [
                "65071/500000",
                "-14754850029/125000000000"
              ],
              [
                "42741/200000",
                "-38766101361/200000000000"
              ],
              [
                "65071/500000",
                "-77201864291/500000000000"
              ]
            ],
            "raw": [
              "2235266453/3561750000",
              "907/1000"
            ],
            "new": [
              "25103/40000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "870917/1000000"
            ],
            "lines": [
              [
                "-435179/1000000",
                "342179/1000000"
              ],
              [
                "-77877/500000",
                "31377/500000"
              ],
              [
                "-178651/250000",
                "155401/250000"
              ]
            ],
            "raw": [
              "617/1000",
              "155401/178651"
            ],
            "new": [
              "617/1000",
              "434929/500000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "48099/250000",
              "471821/1000000"
            ],
            "lines": [
              [
                "126097/200000",
                "-43736737419/200000000000"
              ],
              [
                "11157/15625",
                "-121134295889/500000000000"
              ],
              [
                "491/1600",
                "-43736737419/200000000000"
              ],
              [
                "195219/500000",
                "-121134295889/500000000000"
              ],
              [
                "126097/200000",
                "-12633641397/100000000000"
              ],
              [
                "11157/15625",
                "-46507745007/250000000000"
              ],
              [
                "491/1600",
                "-12633641397/100000000000"
              ],
              [
                "195219/500000",
                "-46507745007/250000000000"
              ]
            ],
            "raw": [
              "12633641397/63048500000",
              "471821/1000000"
            ],
            "new": [
              "200379/1000000",
              "471821/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "282241/1000000",
              "357183/500000"
            ],
            "lines": [
              [
                "-157259/200000",
                "467140629/1562500000"
              ],
              [
                "-434929/500000",
                "685392159/1953125000"
              ],
              [
                "-157259/200000",
                "1222287/12500000"
              ],
              [
                "-434929/500000",
                "584897433/3906250000"
              ],
              [
                "-157259/200000",
                "107497/200000"
              ],
              [
                "-434929/500000",
                "77631/125000"
              ],
              [
                "-157259/200000",
                "1711/8000"
              ],
              [
                "-434929/500000",
                "148719/500000"
              ]
            ],
            "raw": [
              "282241/1000000",
              "310524/434929"
            ],
            "new": [
              "282241/1000000",
              "142793/200000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "108091/1000000",
              "23517/40000"
            ],
            "lines": [
              [
                "-20591/25000",
                "1843120069/5000000000"
              ],
              [
                "-20591/25000",
                "5468123039/12500000000"
              ],
              [
                "-28041/31250",
                "2665949619/6250000000"
              ],
              [
                "-28041/31250",
                "7836469089/15625000000"
              ]
            ],
            "raw": [
              "108091/1000000",
              "2612156363/4673500000"
            ],
            "new": [
              "108091/1000000",
              "55893/100000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "139999/500000",
              "86871/125000"
            ],
            "lines": [
              [
                "-14897/40000",
                "40866421/200000000"
              ],
              [
                "-93/1000",
                "199543/6250000"
              ],
              [
                "-14897/40000",
                "25390870877/100000000000"
              ],
              [
                "-93/1000",
                "33901991/3125000000"
              ],
              [
                "-14897/40000",
                "176115729/1000000000"
              ],
              [
                "-93/1000",
                "463813/125000000"
              ],
              [
                "-14897/40000",
                "122160443673/500000000000"
              ],
              [
                "-93/1000",
                "78800981/62500000000"
              ]
            ],
            "raw": [
              "139999/500000",
              "25390870877/37242500000"
            ],
            "new": [
              "139999/500000",
              "170443/250000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "20591/25000",
              "28041/31250"
            ],
            "lines": [
              [
                "-617/1000",
                "3097740589/7812500000"
              ],
              [
                "-434929/500000",
                "865174379/1562500000"
              ],
              [
                "-617/1000",
                "131/250"
              ],
              [
                "-434929/500000",
                "388429/500000"
              ],
              [
                "-617/1000",
                "2142591823/3906250000"
              ],
              [
                "-434929/500000",
                "689164369/976562500"
              ]
            ],
            "raw": [
              "20591/25000",
              "388429/434929"
            ],
            "new": [
              "20591/25000",
              "446543/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "359681/1000000",
              "363103/500000"
            ],
            "lines": [
              [
                "-20591/25000",
                "44800292857/100000000000"
              ],
              [
                "-20591/25000",
                "12480780643/25000000000"
              ],
              [
                "-20591/25000",
                "53261251523/100000000000"
              ],
              [
                "-20591/25000",
                "29192040619/50000000000"
              ],
              [
                "-446543/500000",
                "25130398557/50000000000"
              ],
              [
                "-446543/500000",
                "139909846097/250000000000"
              ],
              [
                "-446543/500000",
                "2936087789/5000000000"
              ],
              [
                "-446543/500000",
                "80531121381/125000000000"
              ],
              [
                "-20591/25000",
                "7707167887/31250000000"
              ],
              [
                "-20591/25000",
                "3307768613/12500000000"
              ],
              [
                "-20591/25000",
                "30689984141/62500000000"
              ],
              [
                "-20591/25000",
                "3976811429/7812500000"
              ],
              [
                "-446543/500000",
                "150617207477/500000000000"
              ],
              [
                "-446543/500000",
                "81257411927/250000000000"
              ],
              [
                "-446543/500000",
                "272822394413/500000000000"
              ],
              [
                "-446543/500000",
                "28472001079/50000000000"
              ]
            ],
            "raw": [
              "359681/1000000",
              "80531121381/111635750000"
            ],
            "new": [
              "359681/1000000",
              "360687/500000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "282241/1000000",
              "142793/200000"
            ],
            "lines": [
              [
                "359681/1000000",
                "-30855095513/200000000000"
              ],
              [
                "359681/1000000",
                "-4570240883/20000000000"
              ],
              [
                "359681/1000000",
                "-35448739463/200000000000"
              ],
              [
                "359681/1000000",
                "-2672850731/20000000000"
              ],
              [
                "360687/500000",
                "-639916393/3125000000"
              ],
              [
                "360687/500000",
                "-4107148929/10000000000"
              ],
              [
                "360687/500000",
                "-22774146551/100000000000"
              ],
              [
                "360687/500000",
                "-3158453853/10000000000"
              ],
              [
                "359681/1000000",
                "-43249407069/200000000000"
              ],
              [
                "359681/1000000",
                "-29048360193/100000000000"
              ],
              [
                "359681/1000000",
                "-14717089971/40000000000"
              ],
              [
                "359681/1000000",
                "-32432608851/100000000000"
              ],
              [
                "360687/500000",
                "-13337240177/50000000000"
              ],
              [
                "360687/500000",
                "-11817161267/25000000000"
              ],
              [
                "360687/500000",
                "-41842501747/100000000000"
              ],
              [
                "360687/500000",
                "-25326446863/50000000000"
              ]
            ],
            "raw": [
              "639916393/2254293750",
              "142793/200000"
            ],
            "new": [
              "56773/200000",
              "142793/200000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "27923/200000",
              "403/800"
            ],
            "lines": [
              [
                "-506297/1000000",
                "-226129931/5000000000"
              ],
              [
                "-29493/50000",
                "294998039/12500000000"
              ],
              [
                "-104523/1000000",
                "-226129931/5000000000"
              ],
              [
                "-94043/500000",
                "294998039/12500000000"
              ],
              [
                "-506297/1000000",
                "937905637/100000000000"
              ],
              [
                "-29493/50000",
                "21002000447/250000000000"
              ],
              [
                "-104523/1000000",
                "937905637/100000000000"
              ],
              [
                "-94043/500000",
                "21002000447/250000000000"
              ]
            ],
            "raw": [
              "27923/200000",
              "21002000447/47021500000"
            ],
            "new": [
              "27923/200000",
              "446647/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "157259/200000",
              "434929/500000"
            ],
            "lines": [
              [
                "27361/40000",
                "-65375807923/100000000000"
              ],
              [
                "376993/1000000",
                "-283894866647/500000000000"
              ],
              [
                "27361/40000",
                "-29883220111/50000000000"
              ],
              [
                "376993/1000000",
                "-97084645379/250000000000"
              ],
              [
                "753471/1000000",
                "-65375807923/100000000000"
              ],
              [
                "446439/1000000",
                "-283894866647/500000000000"
              ],
              [
                "753471/1000000",
                "-29883220111/50000000000"
              ],
              [
                "446439/1000000",
                "-97084645379/250000000000"
              ]
            ],
            "raw": [
              "29883220111/37673550000",
              "434929/500000"
            ],
            "new": [
              "396607/500000",
              "434929/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "20591/25000",
              "446543/500000"
            ],
            "lines": [
              [
                "396607/500000",
                "-2389070787/3125000000"
              ],
              [
                "396607/500000",
                "-14407443543/15625000000"
              ],
              [
                "434929/500000",
                "-7752033039/10000000000"
              ],
              [
                "434929/500000",
                "-47815459971/50000000000"
              ],
              [
                "396607/500000",
                "-70840897483/100000000000"
              ],
              [
                "396607/500000",
                "-371312617487/500000000000"
              ],
              [
                "434929/500000",
                "-71910962689/100000000000"
              ],
              [
                "434929/500000",
                "-388429023821/500000000000"
              ]
            ],
            "raw": [
              "71910962689/86985800000",
              "446543/500000"
            ],
            "new": [
              "826697/1000000",
              "446543/500000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "21059/100000",
              "76041/125000"
            ],
            "lines": [
              [
                "396607/500000",
                "-45774741959/200000000000"
              ],
              [
                "396607/500000",
                "-361982213851/1000000000000"
              ],
              [
                "434929/500000",
                "-47914872371/200000000000"
              ],
              [
                "434929/500000",
                "-396215026519/1000000000000"
              ],
              [
                "396607/500000",
                "-222969927/1250000000"
              ],
              [
                "396607/500000",
                "-1252707003/6250000000"
              ],
              [
                "434929/500000",
                "-9453829683/50000000000"
              ],
              [
                "434929/500000",
                "-58666483287/250000000000"
              ]
            ],
            "raw": [
              "9453829683/43492900000",
              "76041/125000"
            ],
            "new": [
              "54341/250000",
              "76041/125000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "15581/100000",
              "23971/50000"
            ],
            "lines": [
              [
                "-1/1",
                "33860501289/100000000000"
              ],
              [
                "-1/1",
                "39349246383/100000000000"
              ],
              [
                "-1/1",
                "20519127453/50000000000"
              ],
              [
                "-1/1",
                "46527/100000"
              ],
              [
                "-1/1",
                "26281537149/100000000000"
              ],
              [
                "-1/1",
                "28473823803/100000000000"
              ],
              [
                "-1/1",
                "22167356673/50000000000"
              ]
            ],
            "raw": [
              "15581/100000",
              "46527/100000"
            ],
            "new": [
              "15581/100000",
              "46527/100000"
            ]
          },
          {
            "factor": 216,
            "target": "h",
            "old": [
              "9714/15625",
              "1/1"
            ],
            "lines": [
              [
                "1/1",
                "-25103/40000"
              ],
              [
                "1/1",
                "-907/1000"
              ]
            ],
            "raw": [
              "25103/40000",
              "1/1"
            ],
            "new": [
              "25103/40000",
              "1/1"
            ]
          },
          {
            "factor": 228,
            "target": "a",
            "old": [
              "27923/200000",
              "446647/1000000"
            ],
            "lines": [
              [
                "4923169521/20000000000",
                "-10086467/200000000"
              ],
              [
                "5578590687/20000000000",
                "-9933179/200000000"
              ],
              [
                "169241/312500",
                "-4253393/50000000"
              ],
              [
                "94201/156250",
                "-4215071/50000000"
              ]
            ],
            "raw": [
              "4215071/30144320",
              "446647/1000000"
            ],
            "new": [
              "139829/1000000",
              "446647/1000000"
            ]
          },
          {
            "factor": 1313,
            "target": "z",
            "old": [
              "56773/200000",
              "142793/200000"
            ],
            "lines": [
              [
                "-756919155469/1000000000000",
                "1766861106434245906927/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "28655694522462604641881/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "1764703137131245906927/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "28765405254153604641881/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "10503306775555530717793/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "55153088486291184481759/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "10429356678028530717793/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "55130658792140184481759/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "918888058272384189981/2500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "12525194731307876599493/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "917809073620884189981/2500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "12580050097153376599493/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3233362202678431009027/7812500000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "27945085627233596521677/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3214874678296681009027/7812500000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "27933870780158096521677/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3440081329808618899221/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "62072072981628095935463/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3435765391202618899221/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "62291494445010095935463/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "17797692819400354512089/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "109332883995642137438757/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "17649792624346354512089/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "109288024607340137438757/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3581911350029663845291/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "54861462861934393049673/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3577595411423663845291/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "55080884325316393049673/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "22657976889716741148719/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "110807049531994154561947/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "22510076694662741148719/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "110762190143692154561947/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "1894633095496403111927/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "30252844385739569704381/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "1892475126193403111927/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "30362555117430569704381/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "11301881707194013249043/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "58347388212845114606759/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "11227931609667013249043/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "58324958518694114606759/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "982774052803462792481/2500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "13323769662946359130743/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "981695068151962792481/2500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "13378625028791859130743/31250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "6866011871176103283679/15625000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "29542235490510561584177/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "6829036822412603283679/15625000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "29531020643435061584177/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3695625307932933309221/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "65266372708182026060463/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3691309369326933309221/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "65485794171564026060463/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "19394842682677319574589/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "115721483448749997688757/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "19246942487623319574589/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "115676624060447997688757/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3837455328153978255291/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "58055762588488323174673/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3833139389547978255291/10000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "58275184051870323174673/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "24255126752993706211219/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "117195648985102014811947/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "24107226557939706211219/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "117150789596800014811947/250000000000000000000000"
              ]
            ],
            "raw": [
              "56773/200000",
              "65485794171564026060463/94614894433625000000000"
            ],
            "new": [
              "56773/200000",
              "69213/100000"
            ]
          },
          {
            "factor": 1505,
            "target": "g",
            "old": [
              "15581/100000",
              "46527/100000"
            ],
            "lines": [
              [
                "90588872598540813/250000000000000000",
                "-14515298279811/250000000000000"
              ],
              [
                "1050115194531887/7812500000000000",
                "-168262777089/7812500000000"
              ],
              [
                "319518442517045551/500000000000000000",
                "-51197297924097/500000000000000"
              ],
              [
                "205548069770004693/500000000000000000",
                "-32935519098171/500000000000000"
              ],
              [
                "90588872598540813/250000000000000000",
                "-9535726703727/125000000000000"
              ],
              [
                "1050115194531887/7812500000000000",
                "-110539089573/3906250000000"
              ],
              [
                "319518442517045551/500000000000000000",
                "-33633717445029/250000000000000"
              ],
              [
                "205548069770004693/500000000000000000",
                "-21636765770247/250000000000000"
              ]
            ],
            "raw": [
              "1919997000/11982555251",
              "46527/100000"
            ],
            "new": [
              "20029/125000",
              "46527/100000"
            ]
          },
          {
            "factor": 1995,
            "target": "u",
            "old": [
              "359681/1000000",
              "360687/500000"
            ],
            "lines": [
              [
                "22511002213310247/100000000000000000",
                "-22152262240647/250000000000000"
              ],
              [
                "260949769991053/3125000000000000",
                "-256791220653/7812500000000"
              ],
              [
                "22511002213310247/100000000000000000",
                "-4604282488701/50000000000000"
              ],
              [
                "260949769991053/3125000000000000",
                "-53373299199/1562500000000"
              ],
              [
                "22511002213310247/100000000000000000",
                "-12805710993369/125000000000000"
              ],
              [
                "260949769991053/3125000000000000",
                "-148445071731/3906250000000"
              ],
              [
                "22511002213310247/100000000000000000",
                "-6620143047399/62500000000000"
              ],
              [
                "260949769991053/3125000000000000",
                "-76741354701/1953125000000"
              ],
              [
                "79399159746365069/200000000000000000",
                "-78133838365869/500000000000000"
              ],
              [
                "51077940599171967/200000000000000000",
                "-50263952006367/500000000000000"
              ],
              [
                "79399159746365069/200000000000000000",
                "-16239888272127/100000000000000"
              ],
              [
                "51077940599171967/200000000000000000",
                "-10447214443461/100000000000000"
              ],
              [
                "79399159746365069/200000000000000000",
                "-45167366747763/250000000000000"
              ],
              [
                "51077940599171967/200000000000000000",
                "-29056429351809/250000000000000"
              ],
              [
                "79399159746365069/200000000000000000",
                "-23350084122573/125000000000000"
              ],
              [
                "51077940599171967/200000000000000000",
                "-15021244728639/125000000000000"
              ]
            ],
            "raw": [
              "36334095600/92306250439",
              "360687/500000"
            ],
            "new": [
              "3149/8000",
              "360687/500000"
            ]
          },
          {
            "factor": 2034,
            "target": "v",
            "old": [
              "54341/250000",
              "76041/125000"
            ],
            "lines": [
              [
                "-9689479414832269/25000000000000000",
                "285111763471532956853/4000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "275312052434252956853/4000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "369908533101164956853/4000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "360108822063884956853/4000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "100968694435662459397/1600000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "93862072065390459397/1600000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "134887402287515259397/1600000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "127780779917243259397/1600000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "5138948503464023023/400000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "4158977399736023023/400000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "10538460824016023023/400000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "9558489720288023023/400000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "-6019234836223661039/320000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "-7440559310278061039/320000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "-1699624979782061039/320000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "-3120949453836461039/320000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1421472105085332929131/8000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1425153233629812929131/8000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1591065644344596929131/8000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1594746772889076929131/8000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "135609205032057931241/800000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "134383948908825931241/800000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "152568558957984331241/800000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "151343302834752331241/800000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "190805509642309495177/1600000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "191541735351205495177/1600000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "212403558924517495177/1600000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "213139784633413495177/1600000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "14015354144733509789/160000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "13770302920087109789/160000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "16175159072954309789/160000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "15930107848307909789/160000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1232697174032610130073/10000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1208197896439410130073/10000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1444689098106690130073/10000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "1420189820513490130073/10000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3147296523183706847211/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3058463743555306847211/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3571280371331866847211/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3482447591703466847211/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1296782955880756627031/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1247784400694356627031/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1566758571908356627031/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1517760016721956627031/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1508985665473947289811/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1420152885845547289811/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1778961281501547289811/20000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1690128501873147289811/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3358380205441718916917/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3367583026802918916917/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3782364053589878916917/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "3791566874951078916917/20000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "2020141190280102751991/10000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "2004825488739702751991/10000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "2232133114354182751991/10000000000000000000000"
              ],
              [
                "-9689479414832269/25000000000000000",
                "2216817412813782751991/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1094884406628627641901/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1099485817309227641901/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1229872214642427641901/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1234473625323027641901/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1200985761425222973291/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1185670059884822973291/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1335973569439022973291/10000000000000000000000"
              ],
              [
                "-4935892129724647/20000000000000000",
                "1320657867898622973291/10000000000000000000000"
              ]
            ],
            "raw": [
              "54341/250000",
              "2232133114354182751991/3875791765932907600000"
            ],
            "new": [
              "54341/250000",
              "575917/1000000"
            ]
          },
          {
            "factor": 2319,
            "target": "x",
            "old": [
              "139999/500000",
              "170443/250000"
            ],
            "lines": [
              [
                "212393141541/500000000000",
                "-29985636638223/250000000000000"
              ],
              [
                "2462082359/15625000000",
                "-347596473477/7812500000000"
              ],
              [
                "212393141541/500000000000",
                "-30854786841081/250000000000000"
              ],
              [
                "2462082359/15625000000",
                "-357671748819/7812500000000"
              ],
              [
                "212393141541/500000000000",
                "-19293968741733/125000000000000"
              ],
              [
                "2462082359/15625000000",
                "-223657598967/3906250000000"
              ],
              [
                "212393141541/500000000000",
                "-9864271921581/62500000000000"
              ],
              [
                "2462082359/15625000000",
                "-114347618319/1953125000000"
              ],
              [
                "749137546807/1000000000000",
                "-105763143327621/500000000000000"
              ],
              [
                "481924534701/1000000000000",
                "-68038044353703/500000000000000"
              ],
              [
                "749137546807/1000000000000",
                "-108828746322387/500000000000000"
              ],
              [
                "481924534701/1000000000000",
                "-70010164564641/500000000000000"
              ],
              [
                "749137546807/1000000000000",
                "-68052274694391/250000000000000"
              ],
              [
                "481924534701/1000000000000",
                "-43778423544813/250000000000000"
              ],
              [
                "749137546807/1000000000000",
                "-34792538095887/125000000000000"
              ],
              [
                "481924534701/1000000000000",
                "-22382241825141/125000000000000"
              ]
            ],
            "raw": [
              "122955951/435458500",
              "170443/250000"
            ],
            "new": [
              "282359/1000000",
              "170443/250000"
            ]
          },
          {
            "factor": 8,
            "target": "b",
            "old": [
              "108091/1000000",
              "55893/100000"
            ],
            "lines": [
              [
                "243873/500000",
                "-93/1000"
              ],
              [
                "2827/15625",
                "-93/1000"
              ],
              [
                "860171/1000000",
                "-93/1000"
              ],
              [
                "553353/1000000",
                "-93/1000"
              ]
            ],
            "raw": [
              "93000/860171",
              "55893/100000"
            ],
            "new": [
              "54059/500000",
              "55893/100000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "396607/500000",
              "434929/500000"
            ],
            "lines": [
              [
                "-106799/250000",
                "83549/250000"
              ],
              [
                "-77877/500000",
                "31377/500000"
              ],
              [
                "-706621/1000000",
                "613621/1000000"
              ],
              [
                "-435179/1000000",
                "342179/1000000"
              ]
            ],
            "raw": [
              "396607/500000",
              "613621/706621"
            ],
            "new": [
              "396607/500000",
              "217097/250000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "200379/1000000",
              "471821/1000000"
            ],
            "lines": [
              [
                "-103393/500000",
                "735474479/20000000000"
              ],
              [
                "-32903/250000",
                "-104035991/10000000000"
              ],
              [
                "-103393/500000",
                "47277451/500000000"
              ],
              [
                "-32903/250000",
                "6593021/250000000"
              ]
            ],
            "raw": [
              "200379/1000000",
              "47277451/103393000"
            ],
            "new": [
              "200379/1000000",
              "22863/50000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "25103/40000",
              "907/1000"
            ],
            "lines": [
              [
                "103393/500000",
                "-67217785947/500000000000"
              ],
              [
                "32903/250000",
                "-29843070237/250000000000"
              ],
              [
                "103393/500000",
                "-4688874159/25000000000"
              ],
              [
                "32903/250000",
                "-1914761289/12500000000"
              ]
            ],
            "raw": [
              "67217785947/103393000000",
              "907/1000"
            ],
            "new": [
              "650119/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "434929/500000"
            ],
            "lines": [
              [
                "-22487/50000",
                "17837/50000"
              ],
              [
                "-192859/1000000",
                "99859/1000000"
              ],
              [
                "-706621/1000000",
                "613621/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "613621/706621"
            ],
            "new": [
              "617/1000",
              "217097/250000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "200379/1000000",
              "22863/50000"
            ],
            "lines": [
              [
                "316491/500000",
                "-22030069211/100000000000"
              ],
              [
                "177039/250000",
                "-12081997981/50000000000"
              ],
              [
                "40993/125000",
                "-22030069211/100000000000"
              ],
              [
                "201559/500000",
                "-12081997981/50000000000"
              ],
              [
                "316491/500000",
                "-6793860291/50000000000"
              ],
              [
                "177039/250000",
                "-4697684661/25000000000"
              ],
              [
                "40993/125000",
                "-6793860291/50000000000"
              ],
              [
                "201559/500000",
                "-4697684661/25000000000"
              ]
            ],
            "raw": [
              "2264620097/10549700000",
              "22863/50000"
            ],
            "new": [
              "107331/500000",
              "22863/50000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "54059/500000",
              "55893/100000"
            ],
            "lines": [
              [
                "-826697/1000000",
                "188373817079/500000000000"
              ],
              [
                "-826697/1000000",
                "109723438609/250000000000"
              ],
              [
                "-446543/500000",
                "107352079601/250000000000"
              ],
              [
                "-446543/500000",
                "62068145671/125000000000"
              ]
            ],
            "raw": [
              "54059/500000",
              "62068145671/111635750000"
            ],
            "new": [
              "54059/500000",
              "555989/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "282359/1000000",
              "170443/250000"
            ],
            "lines": [
              [
                "-349881/1000000",
                "94625813/500000000"
              ],
              [
                "-93/1000",
                "30756049/1000000000"
              ],
              [
                "-349881/1000000",
                "29205152033/125000000000"
              ],
              [
                "-93/1000",
                "2642209609/250000000000"
              ],
              [
                "-349881/1000000",
                "163824639/1000000000"
              ],
              [
                "-93/1000",
                "2664531/500000000"
              ],
              [
                "-349881/1000000",
                "56225906799/250000000000"
              ],
              [
                "-93/1000",
                "228906171/125000000000"
              ]
            ],
            "raw": [
              "282359/1000000",
              "29205152033/43735125000"
            ],
            "new": [
              "282359/1000000",
              "333887/500000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "826697/1000000",
              "446543/500000"
            ],
            "lines": [
              [
                "-617/1000",
                "15974853023/40000000000"
              ],
              [
                "-217097/250000",
                "22285445987/40000000000"
              ],
              [
                "-617/1000",
                "131/250"
              ],
              [
                "-217097/250000",
                "193847/250000"
              ],
              [
                "-617/1000",
                "10858190139/20000000000"
              ],
              [
                "-217097/250000",
                "14013486621/20000000000"
              ]
            ],
            "raw": [
              "826697/1000000",
              "193847/217097"
            ],
            "new": [
              "826697/1000000",
              "446453/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "3149/8000",
              "360687/500000"
            ],
            "lines": [
              [
                "-826697/1000000",
                "225853073969/500000000000"
              ],
              [
                "-826697/1000000",
                "1554725459/3125000000"
              ],
              [
                "-826697/1000000",
                "267740746999/500000000000"
              ],
              [
                "-826697/1000000",
                "29064374647/50000000000"
              ],
              [
                "-446453/500000",
                "15757001677/31250000000"
              ],
              [
                "-446453/500000",
                "138751811993/250000000000"
              ],
              [
                "-446453/500000",
                "146999849931/250000000000"
              ],
              [
                "-446453/500000",
                "39923912127/62500000000"
              ],
              [
                "-826697/1000000",
                "268537555123/1000000000000"
              ],
              [
                "-826697/1000000",
                "287389690843/1000000000000"
              ],
              [
                "-826697/1000000",
                "245252302839/500000000000"
              ],
              [
                "-826697/1000000",
                "254678370699/500000000000"
              ],
              [
                "-446453/500000",
                "321055460849/1000000000000"
              ],
              [
                "-446453/500000",
                "68976958387/200000000000"
              ],
              [
                "-446453/500000",
                "135755627851/250000000000"
              ],
              [
                "-446453/500000",
                "56685184249/100000000000"
              ]
            ],
            "raw": [
              "3149/8000",
              "39923912127/55806625000"
            ],
            "new": [
              "3149/8000",
              "357699/500000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "56773/200000",
              "69213/100000"
            ],
            "lines": [
              [
                "3149/8000",
                "-32092755649/200000000000"
              ],
              [
                "3149/8000",
                "-232072951719/1000000000000"
              ],
              [
                "3149/8000",
                "-7364595983/40000000000"
              ],
              [
                "3149/8000",
                "-32426584793/200000000000"
              ],
              [
                "357699/500000",
                "-102728487531/500000000000"
              ],
              [
                "357699/500000",
                "-7515837937/20000000000"
              ],
              [
                "357699/500000",
                "-28638512049/125000000000"
              ],
              [
                "357699/500000",
                "-38231483637/125000000000"
              ],
              [
                "3149/8000",
                "-217915442541/1000000000000"
              ],
              [
                "3149/8000",
                "-57904923203/200000000000"
              ],
              [
                "3149/8000",
                "-70187770777/200000000000"
              ],
              [
                "3149/8000",
                "-13158275131/40000000000"
              ],
              [
                "357699/500000",
                "-131454319679/500000000000"
              ],
              [
                "357699/500000",
                "-216621780573/500000000000"
              ],
              [
                "357699/500000",
                "-197966025351/500000000000"
              ],
              [
                "357699/500000",
                "-236337911703/500000000000"
              ]
            ],
            "raw": [
              "34242829177/119233000000",
              "69213/100000"
            ],
            "new": [
              "35899/125000",
              "69213/100000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139829/1000000",
              "446647/1000000"
            ],
            "lines": [
              [
                "-102171/200000",
                "-18551182921/500000000000"
              ],
              [
                "-586029/1000000",
                "6260938609/250000000000"
              ],
              [
                "-392/3125",
                "-18551182921/500000000000"
              ],
              [
                "-100307/500000",
                "6260938609/250000000000"
              ],
              [
                "-102171/200000",
                "3853884971/250000000000"
              ],
              [
                "-586029/1000000",
                "10317356941/125000000000"
              ],
              [
                "-392/3125",
                "3853884971/250000000000"
              ],
              [
                "-100307/500000",
                "10317356941/125000000000"
              ]
            ],
            "raw": [
              "139829/1000000",
              "10317356941/25076750000"
            ],
            "new": [
              "139829/1000000",
              "51429/125000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "396607/500000",
              "217097/250000"
            ],
            "lines": [
              [
                "171717/250000",
                "-653368023389/1000000000000"
              ],
              [
                "83053/200000",
                "-72084808989/125000000000"
              ],
              [
                "171717/250000",
                "-299737914677/500000000000"
              ],
              [
                "83053/200000",
                "-26131650477/62500000000"
              ],
              [
                "753077/1000000",
                "-653368023389/1000000000000"
              ],
              [
                "240737/500000",
                "-72084808989/125000000000"
              ],
              [
                "753077/1000000",
                "-299737914677/500000000000"
              ],
              [
                "240737/500000",
                "-26131650477/62500000000"
              ]
            ],
            "raw": [
              "299737914677/376538500000",
              "217097/250000"
            ],
            "new": [
              "159207/200000",
              "217097/250000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "826697/1000000",
              "446453/500000"
            ],
            "lines": [
              [
                "159207/200000",
                "-191169200351/250000000000"
              ],
              [
                "159207/200000",
                "-28256023251/31250000000"
              ],
              [
                "217097/250000",
                "-774793849041/1000000000000"
              ],
              [
                "217097/250000",
                "-116745135441/125000000000"
              ],
              [
                "159207/200000",
                "-710784607369/1000000000000"
              ],
              [
                "159207/200000",
                "-93202584969/125000000000"
              ],
              [
                "217097/250000",
                "-360450827503/500000000000"
              ],
              [
                "217097/250000",
                "-48461813703/62500000000"
              ]
            ],
            "raw": [
              "360450827503/434194000000",
              "446453/500000"
            ],
            "new": [
              "10377/12500",
              "446453/500000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "54341/250000",
              "575917/1000000"
            ],
            "lines": [
              [
                "159207/200000",
                "-22461458789/100000000000"
              ],
              [
                "159207/200000",
                "-4173879389/12500000000"
              ],
              [
                "217097/250000",
                "-234731635527/1000000000000"
              ],
              [
                "217097/250000",
                "-45459836327/125000000000"
              ],
              [
                "159207/200000",
                "-179621391073/1000000000000"
              ],
              [
                "159207/200000",
                "-25190330273/125000000000"
              ],
              [
                "217097/250000",
                "-18973843871/100000000000"
              ],
              [
                "217097/250000",
                "-2891137271/12500000000"
              ]
            ],
            "raw": [
              "18973843871/86838800000",
              "575917/1000000"
            ],
            "new": [
              "43699/200000",
              "575917/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "20029/125000",
              "46527/100000"
            ],
            "lines": [
              [
                "-1/1",
                "8500739507/25000000000"
              ],
              [
                "-1/1",
                "12237605547/31250000000"
              ],
              [
                "-1/1",
                "51528275347/125000000000"
              ],
              [
                "-1/1",
                "2319/5000"
              ],
              [
                "-1/1",
                "5350630109/20000000000"
              ],
              [
                "-1/1",
                "7245170589/25000000000"
              ],
              [
                "-1/1",
                "44152468189/100000000000"
              ]
            ],
            "raw": [
              "20029/125000",
              "2319/5000"
            ],
            "new": [
              "20029/125000",
              "2319/5000"
            ]
          },
          {
            "factor": 216,
            "target": "h",
            "old": [
              "25103/40000",
              "1/1"
            ],
            "lines": [
              [
                "1/1",
                "-650119/1000000"
              ],
              [
                "1/1",
                "-907/1000"
              ]
            ],
            "raw": [
              "650119/1000000",
              "1/1"
            ],
            "new": [
              "650119/1000000",
              "1/1"
            ]
          },
          {
            "factor": 226,
            "target": "b",
            "old": [
              "54059/500000",
              "555989/1000000"
            ],
            "lines": [
              [
                "-650119/1000000",
                "22261755603/200000000000"
              ],
              [
                "-650119/1000000",
                "8187856803/25000000000"
              ],
              [
                "-650119/1000000",
                "30356456413/250000000000"
              ],
              [
                "-650119/1000000",
                "11165081613/31250000000"
              ],
              [
                "-1/1",
                "22261755603/200000000000"
              ],
              [
                "-1/1",
                "8187856803/25000000000"
              ],
              [
                "-1/1",
                "30356456413/250000000000"
              ],
              [
                "-1/1",
                "11165081613/31250000000"
              ]
            ],
            "raw": [
              "54059/500000",
              "11165081613/20316218750"
            ],
            "new": [
              "54059/500000",
              "109913/200000"
            ]
          },
          {
            "factor": 228,
            "target": "a",
            "old": [
              "139829/1000000",
              "51429/125000"
            ],
            "lines": [
              [
                "53062095633/200000000000",
                "-52500717/1000000000"
              ],
              [
                "74469484543/250000000000",
                "-51777187/1000000000"
              ],
              [
                "135957/250000",
                "-1700793/20000000"
              ],
              [
                "376069/625000",
                "-2107903/25000000"
              ]
            ],
            "raw": [
              "2107903/15042760",
              "51429/125000"
            ],
            "new": [
              "140127/1000000",
              "51429/125000"
            ]
          },
          {
            "factor": 1313,
            "target": "z",
            "old": [
              "35899/125000",
              "69213/100000"
            ],
            "lines": [
              [
                "-756919155469/1000000000000",
                "70812187589790666073359/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "44642237691231667352151/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "70711880935887666073359/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "44774640859464667352151/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "339157179039887812508121/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "107879654500812788915709/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "337023245312630812508121/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "107802562306959788915709/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "74237464894222437507903/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "40120926795725934037767/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "74137158240319437507903/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "40253329963958934037767/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "412026868943044783753257/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "110512203107297984147853/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "409892935215787783753257/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "110435110913444984147853/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "34300340115765384709707/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "23780695899633408857523/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "34250186788813884709707/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "23846897483749908857523/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "146054675820103703478333/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "53089983559402717126257/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "144987708956475203478333/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "53051437462476217126257/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "36012978767981270426979/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "21520040451880542200331/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "35962825441029770426979/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "21586242035997042200331/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "182489520771682189100901/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "54406257862645314742329/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "181422553908053689100901/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "54367711765718814742329/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "75642615055602240873359/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "47057451424137454752151/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "75542308401699240873359/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "47189854592370454752151/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "363309316368945686508121/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "113917688833077257415709/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "361175382641688686508121/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "113840596639224257415709/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "79067892360034012307903/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "42536140528631721437767/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "78967585706131012307903/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "42668543696864721437767/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "436179006272102657753257/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "116550237439562452647853/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "434045072544845657753257/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "116473145245709452647853/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "36715553848671172109707/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "24988302766086302557523/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "36665400521719672109707/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "25054504350202802557523/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "158130744484632640478333/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "56109000725534951376257/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "157063777621004140478333/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "56070454628608451376257/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "38428192500887057826979/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "22727647318333435900331/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "38378039173935557826979/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "22793848902449935900331/50000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "194565589436211126100901/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "57425275028777548992329/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "193498622572582626100901/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "57386728931851048992329/125000000000000000000000"
              ]
            ],
            "raw": [
              "35899/125000",
              "25054504350202802557523/37845957773450000000000"
            ],
            "new": [
              "35899/125000",
              "662013/1000000"
            ]
          },
          {
            "factor": 1505,
            "target": "g",
            "old": [
              "20029/125000",
              "2319/5000"
            ],
            "lines": [
              [
                "23680153355575969/62500000000000000",
                "-7602666661863/125000000000000"
              ],
              [
                "88662485121058547/500000000000000000",
                "-28465665304869/1000000000000000"
              ],
              [
                "319407747671636813/500000000000000000",
                "-102547926877851/1000000000000000"
              ],
              [
                "27328625743510951/62500000000000000",
                "-8774032360977/125000000000000"
              ],
              [
                "23680153355575969/62500000000000000",
                "-4943829999759/62500000000000"
              ],
              [
                "88662485121058547/500000000000000000",
                "-18510532732317/500000000000000"
              ],
              [
                "319407747671636813/500000000000000000",
                "-66684433220643/500000000000000"
              ],
              [
                "27328625743510951/62500000000000000",
                "-5705540744361/62500000000000"
              ]
            ],
            "raw": [
              "1923538500/11982555251",
              "2319/5000"
            ],
            "new": [
              "10033/62500",
              "2319/5000"
            ]
          },
          {
            "factor": 1995,
            "target": "u",
            "old": [
              "3149/8000",
              "357699/500000"
            ],
            "lines": [
              [
                "5884431159235811/25000000000000000",
                "-11599790925891/125000000000000"
              ],
              [
                "22032301998533593/200000000000000000",
                "-43431572208633/1000000000000000"
              ],
              [
                "5884431159235811/25000000000000000",
                "-3007186761453/31250000000000"
              ],
              [
                "22032301998533593/200000000000000000",
                "-11259414054039/250000000000000"
              ],
              [
                "5884431159235811/25000000000000000",
                "-2679557318319/25000000000000"
              ],
              [
                "22032301998533593/200000000000000000",
                "-10032714201597/200000000000000"
              ],
              [
                "5884431159235811/25000000000000000",
                "-3456685677879/31250000000000"
              ],
              [
                "22032301998533593/200000000000000000",
                "-12942413753877/250000000000000"
              ],
              [
                "79371652483734247/200000000000000000",
                "-156462799774407/1000000000000000"
              ],
              [
                "6791063151047669/25000000000000000",
                "-13387005571989/125000000000000"
              ],
              [
                "79371652483734247/200000000000000000",
                "-40562184538281/250000000000000"
              ],
              [
                "6791063151047669/25000000000000000",
                "-3470513062587/31250000000000"
              ],
              [
                "79371652483734247/200000000000000000",
                "-36142982477763/200000000000000"
              ],
              [
                "6791063151047669/25000000000000000",
                "-3092404766601/25000000000000"
              ],
              [
                "79371652483734247/200000000000000000",
                "-46625212691883/250000000000000"
              ],
              [
                "6791063151047669/25000000000000000",
                "-3989267627841/31250000000000"
              ]
            ],
            "raw": [
              "36392071800/92306250439",
              "357699/500000"
            ],
            "new": [
              "394253/1000000",
              "357699/500000"
            ]
          },
          {
            "factor": 2034,
            "target": "v",
            "old": [
              "43699/200000",
              "575917/1000000"
            ],
            "lines": [
              [
                "-4843032041783013/12500000000000000",
                "14510444805421196501861/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "14022030060924596501861/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "18298413450982796501861/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "17809998706486196501861/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "406407409801966356223/6250000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "380341272021766356223/6250000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "524781429975766356223/6250000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "498715292195566356223/6250000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "2434659129040938069309/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "1946244384544338069309/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "4854166614400938069309/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "4365751869904338069309/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "-105118462132256208027/6250000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "-131184599912456208027/6250000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "-29508853214756208027/6250000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "-55574990994956208027/6250000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "17023148610153794960927/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "17031151879366394960927/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "18917132932934594960927/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "18925136202147194960927/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "32540889528549316819129/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "32211194402504716819129/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "36328858174110916819129/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "35999163048066316819129/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "10985255771963665744651/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "10993259041176265744651/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "12195009514643665744651/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "12203012783856265744651/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "16172061626654194763129/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "15842366500609594763129/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "18591569112014194763129/200000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "18261873985969594763129/200000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "12634470287694226141523/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "12390262915445926141523/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "14528454610475026141523/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "14284247238226726141523/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "490288028426782825459/3125000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "477254959536682825459/3125000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "549475038513682825459/3125000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "536441969623582825459/3125000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "6596577449504096925247/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "6352370077255796925247/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "7806331192184096925247/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "7562123819935796925247/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "117262546229835771667/1562500000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "110746011784785771667/1562500000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "136164948459210771667/1562500000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "129648414014160771667/1562500000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "8423428790491326180821/50000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "8427430425097626180821/50000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "9370420951881726180821/50000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "9374422586488026180821/50000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "19901604202945476634807/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "19736756639923176634807/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "21795588525726276634807/100000000000000000000000"
              ],
              [
                "-4843032041783013/12500000000000000",
                "21630740962703976634807/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "5404482371396261572683/50000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "5408484006002561572683/50000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "6009359242736261572683/50000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "6013360877342561572683/50000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "11717190251997915606807/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "11552342688975615606807/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "12926943994677915606807/100000000000000000000000"
              ],
              [
                "-247473057426959/1000000000000000",
                "12762096431655615606807/100000000000000000000000"
              ]
            ],
            "raw": [
              "43699/200000",
              "21795588525726276634807/38744256334264104000000"
            ],
            "new": [
              "43699/200000",
              "562551/1000000"
            ]
          },
          {
            "factor": 2319,
            "target": "x",
            "old": [
              "282359/1000000",
              "333887/500000"
            ],
            "lines": [
              [
                "55520087833/125000000000",
                "-3138672516399/25000000000000"
              ],
              [
                "207876565979/1000000000000",
                "-11751718880637/200000000000000"
              ],
              [
                "55520087833/125000000000",
                "-4030579675479/31250000000000"
              ],
              [
                "207876565979/1000000000000",
                "-15091169602677/250000000000000"
              ],
              [
                "55520087833/125000000000",
                "-20164542259743/125000000000000"
              ],
              [
                "207876565979/1000000000000",
                "-75499444671309/1000000000000000"
              ],
              [
                "55520087833/125000000000",
                "-1287093648729/7812500000000"
              ],
              [
                "207876565979/1000000000000",
                "-4819095542427/62500000000000"
              ],
              [
                "748878013541/1000000000000",
                "-42335719033923/200000000000000"
              ],
              [
                "64074234607/125000000000",
                "-3622257222921/25000000000000"
              ],
              [
                "748878013541/1000000000000",
                "-54366133387083/250000000000000"
              ],
              [
                "64074234607/125000000000",
                "-4651583198241/31250000000000"
              ],
              [
                "748878013541/1000000000000",
                "-271987724458611/1000000000000000"
              ],
              [
                "64074234607/125000000000",
                "-23271353881497/125000000000000"
              ],
              [
                "748878013541/1000000000000",
                "-17360853927333/62500000000000"
              ],
              [
                "64074234607/125000000000",
                "-1485400034991/7812500000000"
              ]
            ],
            "raw": [
              "49234851/174183400",
              "333887/500000"
            ],
            "new": [
              "14133/50000",
              "333887/500000"
            ]
          },
          {
            "factor": 8,
            "target": "b",
            "old": [
              "54059/500000",
              "109913/200000"
            ],
            "lines": [
              [
                "63749/125000",
                "-93/1000"
              ],
              [
                "238687/1000000",
                "-93/1000"
              ],
              [
                "859873/1000000",
                "-93/1000"
              ],
              [
                "73571/125000",
                "-93/1000"
              ]
            ],
            "raw": [
              "93000/859873",
              "109913/200000"
            ],
            "new": [
              "21631/200000",
              "109913/200000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "159207/200000",
              "217097/250000"
            ],
            "lines": [
              [
                "-435457/1000000",
                "342457/1000000"
              ],
              [
                "-192859/1000000",
                "99859/1000000"
              ],
              [
                "-346169/500000",
                "299669/500000"
              ],
              [
                "-22487/50000",
                "17837/50000"
              ]
            ],
            "raw": [
              "159207/200000",
              "299669/346169"
            ],
            "new": [
              "159207/200000",
              "865673/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "107331/500000",
              "22863/50000"
            ],
            "lines": [
              [
                "-40793/200000",
                "7920304367/200000000000"
              ],
              [
                "-134327/1000000",
                "-5671465087/1000000000000"
              ],
              [
                "-40793/200000",
                "18399251/200000000"
              ],
              [
                "-134327/1000000",
                "28834589/1000000000"
              ]
            ],
            "raw": [
              "107331/500000",
              "18399251/40793000"
            ],
            "new": [
              "107331/500000",
              "2819/6250"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "650119/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "40793/200000",
                "-13678353483/100000000000"
              ],
              [
                "134327/1000000",
                "-60917451237/500000000000"
              ],
              [
                "40793/200000",
                "-231245467/1250000000"
              ],
              [
                "134327/1000000",
                "-959917813/6250000000"
              ]
            ],
            "raw": [
              "13678353483/20396500000",
              "907/1000"
            ],
            "new": [
              "335311/500000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "217097/250000"
            ],
            "lines": [
              [
                "-11399/25000",
                "4537/12500"
              ],
              [
                "-109791/500000",
                "63291/500000"
              ],
              [
                "-346169/500000",
                "299669/500000"
              ]
            ],
            "raw": [
              "617/1000",
              "299669/346169"
            ],
            "new": [
              "617/1000",
              "865673/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "107331/500000",
              "2819/6250"
            ],
            "lines": [
              [
                "635507/1000000",
                "-5510572093/25000000000"
              ],
              [
                "141029/200000",
                "-30052795027/125000000000"
              ],
              [
                "66447/200000",
                "-5510572093/25000000000"
              ],
              [
                "401873/1000000",
                "-30052795027/125000000000"
              ],
              [
                "635507/1000000",
                "-28794503691/200000000000"
              ],
              [
                "141029/200000",
                "-190073779749/1000000000000"
              ],
              [
                "66447/200000",
                "-28794503691/200000000000"
              ],
              [
                "401873/1000000",
                "-190073779749/1000000000000"
              ]
            ],
            "raw": [
              "28794503691/127101400000",
              "2819/6250"
            ],
            "new": [
              "226547/1000000",
              "2819/6250"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "14133/50000",
              "333887/500000"
            ],
            "lines": [
              [
                "-164689/500000",
                "87637473/500000000"
              ],
              [
                "-93/1000",
                "735743/25000000"
              ],
              [
                "-164689/500000",
                "107473869537/500000000000"
              ],
              [
                "-93/1000",
                "258042167/25000000000"
              ],
              [
                "-164689/500000",
                "37810807/250000000"
              ],
              [
                "-93/1000",
                "2699001/500000000"
              ],
              [
                "-164689/500000",
                "51629814283/250000000000"
              ],
              [
                "-93/1000",
                "946602369/500000000000"
              ]
            ],
            "raw": [
              "14133/50000",
              "107473869537/164689000000"
            ],
            "new": [
              "14133/50000",
              "652587/1000000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "10377/12500",
              "446453/500000"
            ],
            "lines": [
              [
                "-617/1000",
                "20351039323/50000000000"
              ],
              [
                "-865673/1000000",
                "568687828547/1000000000000"
              ],
              [
                "-617/1000",
                "131/250"
              ],
              [
                "-865673/1000000",
                "772673/1000000"
              ],
              [
                "-617/1000",
                "536451215147/1000000000000"
              ],
              [
                "-865673/1000000",
                "349059128617/500000000000"
              ]
            ],
            "raw": [
              "10377/12500",
              "772673/865673"
            ],
            "new": [
              "10377/12500",
              "89257/100000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "394253/1000000",
              "357699/500000"
            ],
            "lines": [
              [
                "-10377/12500",
                "18226661799/40000000000"
              ],
              [
                "-10377/12500",
                "99652334449/200000000000"
              ],
              [
                "-10377/12500",
                "13412343621/25000000000"
              ],
              [
                "-10377/12500",
                "57908887211/100000000000"
              ],
              [
                "-89257/100000",
                "20213883573/40000000000"
              ],
              [
                "-89257/100000",
                "22091532967/40000000000"
              ],
              [
                "-89257/100000",
                "58617428919/100000000000"
              ],
              [
                "-89257/100000",
                "15827888101/25000000000"
              ],
              [
                "-10377/12500",
                "11161471839/40000000000"
              ],
              [
                "-10377/12500",
                "297672551517/1000000000000"
              ],
              [
                "-10377/12500",
                "60892449969/125000000000"
              ],
              [
                "-10377/12500",
                "252887677647/500000000000"
              ],
              [
                "-89257/100000",
                "13148693613/40000000000"
              ],
              [
                "-89257/100000",
                "351699203447/1000000000000"
              ],
              [
                "-89257/100000",
                "268410072051/500000000000"
              ],
              [
                "-89257/100000",
                "69975250903/125000000000"
              ]
            ],
            "raw": [
              "394253/1000000",
              "15827888101/22314250000"
            ],
            "new": [
              "394253/1000000",
              "354659/500000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "35899/125000",
              "662013/1000000"
            ],
            "lines": [
              [
                "394253/1000000",
                "-32165149687/200000000000"
              ],
              [
                "394253/1000000",
                "-5605912739/25000000000"
              ],
              [
                "394253/1000000",
                "-184592568531/1000000000000"
              ],
              [
                "394253/1000000",
                "-10357757481/62500000000"
              ],
              [
                "354659/500000",
                "-20497486169/100000000000"
              ],
              [
                "354659/500000",
                "-2211652079/6250000000"
              ],
              [
                "354659/500000",
                "-114370840893/500000000000"
              ],
              [
                "354659/500000",
                "-36918992847/125000000000"
              ],
              [
                "394253/1000000",
                "-216056370003/1000000000000"
              ],
              [
                "394253/1000000",
                "-34933391391/125000000000"
              ],
              [
                "394253/1000000",
                "-344165741331/1000000000000"
              ],
              [
                "394253/1000000",
                "-20331080781/62500000000"
              ],
              [
                "354659/500000",
                "-130102741629/500000000000"
              ],
              [
                "354659/500000",
                "-12784217319/31250000000"
              ],
              [
                "354659/500000",
                "-194157427293/500000000000"
              ],
              [
                "354659/500000",
                "-56865639447/125000000000"
              ]
            ],
            "raw": [
              "20497486169/70931800000",
              "662013/1000000"
            ],
            "new": [
              "144487/500000",
              "662013/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "43699/200000",
              "562551/1000000"
            ],
            "lines": [
              [
                "-52467/62500",
                "134994831153/1000000000000"
              ],
              [
                "-52467/62500",
                "93732228789/500000000000"
              ],
              [
                "-2681/5000",
                "66289469369/1000000000000"
              ],
              [
                "-2681/5000",
                "25338327349/500000000000"
              ],
              [
                "-52467/62500",
                "180481043143/500000000000"
              ],
              [
                "-52467/62500",
                "413431712711/1000000000000"
              ],
              [
                "-2681/5000",
                "146128362251/500000000000"
              ],
              [
                "-2681/5000",
                "276643909831/1000000000000"
              ],
              [
                "-52467/62500",
                "57663134199/500000000000"
              ],
              [
                "-52467/62500",
                "59631445467/250000000000"
              ],
              [
                "-2681/5000",
                "23310453307/500000000000"
              ],
              [
                "-2681/5000",
                "25434494747/250000000000"
              ],
              [
                "-52467/62500",
                "55940497749/250000000000"
              ],
              [
                "-52467/62500",
                "173480752233/500000000000"
              ],
              [
                "-2681/5000",
                "38764157303/250000000000"
              ],
              [
                "-2681/5000",
                "105086850793/500000000000"
              ]
            ],
            "raw": [
              "43699/200000",
              "146128362251/268100000000"
            ],
            "new": [
              "43699/200000",
              "136263/250000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "140127/1000000",
              "51429/125000"
            ],
            "lines": [
              [
                "-4107/8000",
                "-80033961/2500000000"
              ],
              [
                "-583013/1000000",
                "322463721/12500000000"
              ],
              [
                "-17931/125000",
                "-80033961/2500000000"
              ],
              [
                "-106543/500000",
                "322463721/12500000000"
              ],
              [
                "-4107/8000",
                "353339199/20000000000"
              ],
              [
                "-583013/1000000",
                "7982374961/100000000000"
              ],
              [
                "-17931/125000",
                "353339199/20000000000"
              ],
              [
                "-106543/500000",
                "7982374961/100000000000"
              ]
            ],
            "raw": [
              "140127/1000000",
              "7982374961/21308600000"
            ],
            "new": [
              "140127/1000000",
              "374609/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "159207/200000",
              "865673/1000000"
            ],
            "lines": [
              [
                "690033/1000000",
                "-32662085109/50000000000"
              ],
              [
                "455551/1000000",
                "-29348151003/50000000000"
              ],
              [
                "690033/1000000",
                "-601404941451/1000000000000"
              ],
              [
                "455551/1000000",
                "-448385036517/1000000000000"
              ],
              [
                "752443/1000000",
                "-32662085109/50000000000"
              ],
              [
                "517961/1000000",
                "-29348151003/50000000000"
              ],
              [
                "752443/1000000",
                "-601404941451/1000000000000"
              ],
              [
                "517961/1000000",
                "-448385036517/1000000000000"
              ]
            ],
            "raw": [
              "601404941451/752443000000",
              "865673/1000000"
            ],
            "new": [
              "799269/1000000",
              "865673/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "x",
            "old": [
              "14133/50000",
              "652587/1000000"
            ],
            "lines": [
              [
                "140127/1000000",
                "-141328014123/1000000000000"
              ],
              [
                "374609/1000000",
                "-328742207781/1000000000000"
              ],
              [
                "140127/1000000",
                "-95507062791/1000000000000"
              ],
              [
                "374609/1000000",
                "-298491799177/1000000000000"
              ],
              [
                "140127/1000000",
                "-91445635833/1000000000000"
              ],
              [
                "374609/1000000",
                "-278859829491/1000000000000"
              ],
              [
                "140127/1000000",
                "-41480410861/1000000000000"
              ],
              [
                "374609/1000000",
                "-244465147247/1000000000000"
              ]
            ],
            "raw": [
              "41480410861/140127000000",
              "652587/1000000"
            ],
            "new": [
              "14801/50000",
              "652587/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "10377/12500",
              "89257/100000"
            ],
            "lines": [
              [
                "799269/1000000",
                "-763368772623/1000000000000"
              ],
              [
                "799269/1000000",
                "-881371604641/1000000000000"
              ],
              [
                "865673/1000000",
                "-772673765931/1000000000000"
              ],
              [
                "865673/1000000",
                "-906247140677/1000000000000"
              ],
              [
                "799269/1000000",
                "-356702054307/500000000000"
              ],
              [
                "799269/1000000",
                "-373899198669/500000000000"
              ],
              [
                "865673/1000000",
                "-361354550961/500000000000"
              ],
              [
                "865673/1000000",
                "-386336966687/500000000000"
              ]
            ],
            "raw": [
              "361354550961/432836500000",
              "89257/100000"
            ],
            "new": [
              "208713/250000",
              "89257/100000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "43699/200000",
              "136263/250000"
            ],
            "lines": [
              [
                "799269/1000000",
                "-28137459629/125000000000"
              ],
              [
                "799269/1000000",
                "-40008579843/125000000000"
              ],
              [
                "865673/1000000",
                "-11720233517/50000000000"
              ],
              [
                "865673/1000000",
                "-17247208739/50000000000"
              ],
              [
                "799269/1000000",
                "-180950563777/1000000000000"
              ],
              [
                "799269/1000000",
                "-202042454159/1000000000000"
              ],
              [
                "865673/1000000",
                "-38051111417/200000000000"
              ],
              [
                "865673/1000000",
                "-45383598039/200000000000"
              ]
            ],
            "raw": [
              "38051111417/173134600000",
              "136263/250000"
            ],
            "new": [
              "219777/1000000",
              "136263/250000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "10033/62500",
              "2319/5000"
            ],
            "lines": [
              [
                "-1/1",
                "171004998997/500000000000"
              ],
              [
                "-1/1",
                "194612484249/500000000000"
              ],
              [
                "-1/1",
                "51733753687/125000000000"
              ],
              [
                "-1/1",
                "92217/200000"
              ],
              [
                "-1/1",
                "274016552503/1000000000000"
              ],
              [
                "-1/1",
                "296460241251/1000000000000"
              ],
              [
                "-1/1",
                "109660327813/250000000000"
              ]
            ],
            "raw": [
              "10033/62500",
              "92217/200000"
            ],
            "new": [
              "10033/62500",
              "92217/200000"
            ]
          },
          {
            "factor": 216,
            "target": "h",
            "old": [
              "650119/1000000",
              "1/1"
            ],
            "lines": [
              [
                "1/1",
                "-335311/500000"
              ],
              [
                "1/1",
                "-907/1000"
              ]
            ],
            "raw": [
              "335311/500000",
              "1/1"
            ],
            "new": [
              "335311/500000",
              "1/1"
            ]
          },
          {
            "factor": 226,
            "target": "b",
            "old": [
              "21631/200000",
              "109913/200000"
            ],
            "lines": [
              [
                "-335311/500000",
                "111999167163/1000000000000"
              ],
              [
                "-335311/500000",
                "299413360821/1000000000000"
              ],
              [
                "-335311/500000",
                "121304160471/1000000000000"
              ],
              [
                "-335311/500000",
                "324288896857/1000000000000"
              ],
              [
                "-1/1",
                "111999167163/1000000000000"
              ],
              [
                "-1/1",
                "299413360821/1000000000000"
              ],
              [
                "-1/1",
                "121304160471/1000000000000"
              ],
              [
                "-1/1",
                "324288896857/1000000000000"
              ]
            ],
            "raw": [
              "21631/200000",
              "324288896857/670622000000"
            ],
            "new": [
              "21631/200000",
              "96713/200000"
            ]
          },
          {
            "factor": 228,
            "target": "a",
            "old": [
              "140127/1000000",
              "374609/1000000"
            ],
            "lines": [
              [
                "141576787659/500000000000",
                "-13593789/250000000"
              ],
              [
                "157202379303/500000000000",
                "-13427779/250000000"
              ],
              [
                "683019/1250000",
                "-8500731/100000000"
              ],
              [
                "749423/1250000",
                "-8434327/100000000"
              ]
            ],
            "raw": [
              "8434327/59953840",
              "374609/1000000"
            ],
            "new": [
              "3517/25000",
              "374609/1000000"
            ]
          },
          {
            "factor": 304,
            "target": "u",
            "old": [
              "394253/1000000",
              "354659/500000"
            ],
            "lines": [
              [
                "208713/250000",
                "-92771911581/200000000000"
              ],
              [
                "208713/250000",
                "-5248906079/12500000000"
              ],
              [
                "208713/250000",
                "-86833150627/200000000000"
              ],
              [
                "208713/250000",
                "-5975474593/12500000000"
              ],
              [
                "208713/250000",
                "-30753933619/62500000000"
              ],
              [
                "208713/250000",
                "-1424626971/3906250000"
              ],
              [
                "208713/250000",
                "-231184566567/500000000000"
              ],
              [
                "208713/250000",
                "-13213437053/31250000000"
              ],
              [
                "89257/100000",
                "-92771911581/200000000000"
              ],
              [
                "89257/100000",
                "-5248906079/12500000000"
              ],
              [
                "89257/100000",
                "-86833150627/200000000000"
              ],
              [
                "89257/100000",
                "-5975474593/12500000000"
              ],
              [
                "89257/100000",
                "-30753933619/62500000000"
              ],
              [
                "89257/100000",
                "-1424626971/3906250000"
              ],
              [
                "89257/100000",
                "-231184566567/500000000000"
              ],
              [
                "89257/100000",
                "-13213437053/31250000000"
              ],
              [
                "208713/250000",
                "-26248367289/50000000000"
              ],
              [
                "208713/250000",
                "-96204054839/200000000000"
              ],
              [
                "208713/250000",
                "-18658102663/50000000000"
              ],
              [
                "208713/250000",
                "-83406853513/200000000000"
              ],
              [
                "208713/250000",
                "-10455516511/15625000000"
              ],
              [
                "208713/250000",
                "-33862163961/62500000000"
              ],
              [
                "208713/250000",
                "-64668470523/125000000000"
              ],
              [
                "208713/250000",
                "-238904308373/500000000000"
              ],
              [
                "89257/100000",
                "-26248367289/50000000000"
              ],
              [
                "89257/100000",
                "-96204054839/200000000000"
              ],
              [
                "89257/100000",
                "-18658102663/50000000000"
              ],
              [
                "89257/100000",
                "-83406853513/200000000000"
              ],
              [
                "89257/100000",
                "-10455516511/15625000000"
              ],
              [
                "89257/100000",
                "-33862163961/62500000000"
              ],
              [
                "89257/100000",
                "-64668470523/125000000000"
              ],
              [
                "89257/100000",
                "-238904308373/500000000000"
              ]
            ],
            "raw": [
              "2849253942/6973203125",
              "354659/500000"
            ],
            "new": [
              "2043/5000",
              "354659/500000"
            ]
          },
          {
            "factor": 1313,
            "target": "z",
            "old": [
              "144487/500000",
              "662013/1000000"
            ],
            "lines": [
              [
                "-756919155469/1000000000000",
                "88716746821810899209121/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "54469049926408504082547/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "88584177361579899209121/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "54583345869091504082547/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2124236244258994975317/6250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "105190802801365907968653/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2112257178471994975317/6250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "105072801515482907968653/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "74880300458419580695099/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "40206868668520635180993/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "74774244890234780695099/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "40298305422667035180993/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2052419384084253674623/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "87630212241991836651807/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2042836131454653674623/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "87535811213285436651807/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "343081787174857292743243/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "228036915108758272194801/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "342551509333933292743243/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "228494098879490272194801/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "7432026350881516213711/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "410273097077919900194799/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "7384110087733516213711/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "409801091934387900194799/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "181308151089855799691127/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "105597529372863715884789/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "181043012169393799691127/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "105826121258229715884789/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "4598589147133402342779/12500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "213830473541207725789611/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "4574631015559402342779/12500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "213594470969441725789611/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "94270937775650834709121/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "57246145403328471832547/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "94138368315419834709121/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "57360441346011471832547/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2263091018104993362817/6250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "110744993755205843468653/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2251111952317993362817/6250000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "110626992469322843468653/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "79323653221491529095099/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "42428545050056609380993/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "79217597653306729095099/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "42519981804203009380993/100000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2163503203161052384623/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "92073565005063785051807/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "2153919950531452384623/5000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "91979163976357385051807/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "365298550990217034743243/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "239145297016438143194801/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "364768273149293034743243/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "239602480787170143194801/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "7987445446265509763711/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "432489860893279642194799/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "7939529183117509763711/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "432017855749747642194799/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "192416532997535670691127/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "111151720326703651384789/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "192151394077073670691127/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "111380312212069651384789/250000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "4876298694825399117779/12500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "224938855448887596789611/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "4852340563251399117779/12500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "224702852877121596789611/500000000000000000000000"
              ]
            ],
            "raw": [
              "144487/500000",
              "239602480787170143194801/378459577734500000000000"
            ],
            "new": [
              "144487/500000",
              "6331/10000"
            ]
          },
          {
            "factor": 1505,
            "target": "g",
            "old": [
              "10033/62500",
              "92217/200000"
            ],
            "lines": [
              [
                "98425919069794351/250000000000000000",
                "-1596845876703/25000000000000"
              ],
              [
                "109956755952942153/500000000000000000",
                "-1783920272409/50000000000000"
              ],
              [
                "7980058268174223/12500000000000000",
                "-129467149119/1250000000000"
              ],
              [
                "232307248540322371/500000000000000000",
                "-3768914483763/50000000000000"
              ],
              [
                "98425919069794351/250000000000000000",
                "-40723549587861/500000000000000"
              ],
              [
                "109956755952942153/500000000000000000",
                "-45494412913683/1000000000000000"
              ],
              [
                "7980058268174223/12500000000000000",
                "-3301734966453/25000000000000"
              ],
              [
                "232307248540322371/500000000000000000",
                "-96116712396081/1000000000000000"
              ]
            ],
            "raw": [
              "1944030000/11982555251",
              "92217/200000"
            ],
            "new": [
              "81119/500000",
              "92217/200000"
            ]
          },
          {
            "factor": 8,
            "target": "b",
            "old": [
              "21631/200000",
              "96713/200000"
            ],
            "lines": [
              [
                "264971/500000",
                "-93/1000"
              ],
              [
                "296013/1000000",
                "-93/1000"
              ],
              [
                "21483/25000",
                "-93/1000"
              ],
              [
                "625391/1000000",
                "-93/1000"
              ]
            ],
            "raw": [
              "25/231",
              "96713/200000"
            ],
            "new": [
              "4329/40000",
              "96713/200000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "799269/1000000",
              "865673/1000000"
            ],
            "lines": [
              [
                "-17763/40000",
                "14043/40000"
              ],
              [
                "-109791/500000",
                "63291/500000"
              ],
              [
                "-680453/1000000",
                "587453/1000000"
              ],
              [
                "-11399/25000",
                "4537/12500"
              ]
            ],
            "raw": [
              "799269/1000000",
              "587453/680453"
            ],
            "new": [
              "799269/1000000",
              "863327/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "226547/1000000",
              "2819/6250"
            ],
            "lines": [
              [
                "-200731/1000000",
                "20807312341/500000000000"
              ],
              [
                "-136673/1000000",
                "-672039697/500000000000"
              ],
              [
                "-200731/1000000",
                "89063017/1000000000"
              ],
              [
                "-136673/1000000",
                "30962411/1000000000"
              ]
            ],
            "raw": [
              "226547/1000000",
              "89063017/200731000"
            ],
            "new": [
              "226547/1000000",
              "221847/500000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "335311/500000",
              "907/1000"
            ],
            "lines": [
              [
                "200731/1000000",
                "-138475005857/1000000000000"
              ],
              [
                "136673/1000000",
                "-123962858131/1000000000000"
              ],
              [
                "200731/1000000",
                "-91031570157/500000000000"
              ],
              [
                "136673/1000000",
                "-76820495031/500000000000"
              ]
            ],
            "raw": [
              "138475005857/200731000000",
              "907/1000"
            ],
            "new": [
              "689853/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "865673/1000000"
            ],
            "lines": [
              [
                "-231653/500000",
                "185153/500000"
              ],
              [
                "-246159/1000000",
                "153159/1000000"
              ],
              [
                "-680453/1000000",
                "587453/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "587453/680453"
            ],
            "new": [
              "617/1000",
              "863327/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "226547/1000000",
              "221847/500000"
            ],
            "lines": [
              [
                "637031/1000000",
                "-110496980003/500000000000"
              ],
              [
                "701089/1000000",
                "-119752528249/500000000000"
              ],
              [
                "42273/125000",
                "-110496980003/500000000000"
              ],
              [
                "201121/500000",
                "-119752528249/500000000000"
              ],
              [
                "637031/1000000",
                "-1519172039/10000000000"
              ],
              [
                "701089/1000000",
                "-1924723237/10000000000"
              ],
              [
                "42273/125000",
                "-1519172039/10000000000"
              ],
              [
                "201121/500000",
                "-1924723237/10000000000"
              ]
            ],
            "raw": [
              "1519172039/6370310000",
              "221847/500000"
            ],
            "new": [
              "59619/250000",
              "221847/500000"
            ]
          },
          {
            "factor": 74,
            "target": "g",
            "old": [
              "81119/500000",
              "92217/200000"
            ],
            "lines": [
              [
                "-59619/250000",
                "-15193742981/500000000000"
              ],
              [
                "-59619/250000",
                "-16811143423/500000000000"
              ],
              [
                "-221847/500000",
                "835230623/6250000000"
              ],
              [
                "-221847/500000",
                "897174709/6250000000"
              ],
              [
                "-59619/250000",
                "302259923/7812500000"
              ],
              [
                "-59619/250000",
                "104769109/7812500000"
              ],
              [
                "-221847/500000",
                "101356827893/500000000000"
              ],
              [
                "-221847/500000",
                "95290343119/500000000000"
              ]
            ],
            "raw": [
              "81119/500000",
              "101356827893/221847000000"
            ],
            "new": [
              "81119/500000",
              "228439/500000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "14801/50000",
              "652587/1000000"
            ],
            "lines": [
              [
                "-310147/1000000",
                "161612383/1000000000"
              ],
              [
                "-93/1000",
                "6908171/250000000"
              ],
              [
                "-310147/1000000",
                "197329551673/1000000000000"
              ],
              [
                "-93/1000",
                "2465170901/250000000000"
              ],
              [
                "-310147/1000000",
                "139506389/1000000000"
              ],
              [
                "-93/1000",
                "552669/100000000"
              ],
              [
                "-310147/1000000",
                "189441059459/1000000000000"
              ],
              [
                "-93/1000",
                "197219139/100000000000"
              ]
            ],
            "raw": [
              "14801/50000",
              "197329551673/310147000000"
            ],
            "new": [
              "14801/50000",
              "318123/500000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "208713/250000",
              "89257/100000"
            ],
            "lines": [
              [
                "-617/1000",
                "10456906239/25000000000"
              ],
              [
                "-863327/1000000",
                "291734277477/500000000000"
              ],
              [
                "-617/1000",
                "131/250"
              ],
              [
                "-863327/1000000",
                "770327/1000000"
              ],
              [
                "-617/1000",
                "132584802247/250000000000"
              ],
              [
                "-863327/1000000",
                "347765757191/500000000000"
              ]
            ],
            "raw": [
              "208713/250000",
              "770327/863327"
            ],
            "new": [
              "208713/250000",
              "446139/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "2043/5000",
              "354659/500000"
            ],
            "lines": [
              [
                "-208713/250000",
                "92733753543/200000000000"
              ],
              [
                "-208713/250000",
                "100613848413/200000000000"
              ],
              [
                "-208713/250000",
                "538442617317/1000000000000"
              ],
              [
                "-208713/250000",
                "577843091667/1000000000000"
              ],
              [
                "-446139/500000",
                "509567589309/1000000000000"
              ],
              [
                "-446139/500000",
                "552646658367/1000000000000"
              ],
              [
                "-446139/500000",
                "584341438911/1000000000000"
              ],
              [
                "-446139/500000",
                "627420507969/1000000000000"
              ],
              [
                "-208713/250000",
                "7499361231/25000000000"
              ],
              [
                "-208713/250000",
                "7963461441/25000000000"
              ],
              [
                "-208713/250000",
                "30338456937/62500000000"
              ],
              [
                "-208713/250000",
                "15749353731/31250000000"
              ],
              [
                "-446139/500000",
                "172936635417/500000000000"
              ],
              [
                "-446139/500000",
                "184057936971/500000000000"
              ],
              [
                "-446139/500000",
                "265657066293/500000000000"
              ],
              [
                "-446139/500000",
                "276778367847/500000000000"
              ]
            ],
            "raw": [
              "2043/5000",
              "209140169323/297426000000"
            ],
            "new": [
              "2043/5000",
              "10987/15625"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "144487/500000",
              "6331/10000"
            ],
            "lines": [
              [
                "2043/5000",
                "-81657193543/500000000000"
              ],
              [
                "2043/5000",
                "-27618200423/125000000000"
              ],
              [
                "2043/5000",
                "-93309763583/500000000000"
              ],
              [
                "2043/5000",
                "-21915737863/125000000000"
              ],
              [
                "10987/15625",
                "-102377106663/500000000000"
              ],
              [
                "10987/15625",
                "-10352919603/31250000000"
              ],
              [
                "10987/15625",
                "-114029676703/500000000000"
              ],
              [
                "10987/15625",
                "-8927303963/31250000000"
              ],
              [
                "2043/5000",
                "-27010794067/125000000000"
              ],
              [
                "2043/5000",
                "-136858784417/500000000000"
              ],
              [
                "2043/5000",
                "-41903814827/125000000000"
              ],
              [
                "2043/5000",
                "-161968447177/500000000000"
              ],
              [
                "10987/15625",
                "-32190772347/125000000000"
              ],
              [
                "10987/15625",
                "-192032696373/500000000000"
              ],
              [
                "10987/15625",
                "-47083793107/125000000000"
              ],
              [
                "10987/15625",
                "-217142359133/500000000000"
              ]
            ],
            "raw": [
              "102377106663/351584000000",
              "6331/10000"
            ],
            "new": [
              "72797/250000",
              "6331/10000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "219777/1000000",
              "136263/250000"
            ],
            "lines": [
              [
                "-418881/500000",
                "17245000939/125000000000"
              ],
              [
                "-418881/500000",
                "47129481107/250000000000"
              ],
              [
                "-271561/500000",
                "8461929859/125000000000"
              ],
              [
                "-271561/500000",
                "14446981067/250000000000"
              ],
              [
                "-418881/500000",
                "42520845539/125000000000"
              ],
              [
                "-418881/500000",
                "97681170307/250000000000"
              ],
              [
                "-271561/500000",
                "33737774459/125000000000"
              ],
              [
                "-271561/500000",
                "64998670267/250000000000"
              ],
              [
                "-418881/500000",
                "15304092387/125000000000"
              ],
              [
                "-418881/500000",
                "58360327959/250000000000"
              ],
              [
                "-271561/500000",
                "6521021307/125000000000"
              ],
              [
                "-271561/500000",
                "25677827919/250000000000"
              ],
              [
                "-418881/500000",
                "5598079047/25000000000"
              ],
              [
                "-418881/500000",
                "16746586731/50000000000"
              ],
              [
                "-271561/500000",
                "3841464831/25000000000"
              ],
              [
                "-271561/500000",
                "10210086723/50000000000"
              ]
            ],
            "raw": [
              "219777/1000000",
              "33737774459/67890250000"
            ],
            "new": [
              "219777/1000000",
              "248473/500000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "3517/25000",
              "374609/1000000"
            ],
            "lines": [
              [
                "-503249/1000000",
                "-6394669203/250000000000"
              ],
              [
                "-567307/1000000",
                "6975068151/250000000000"
              ],
              [
                "-163023/1000000",
                "-6394669203/250000000000"
              ],
              [
                "-227081/1000000",
                "6975068151/250000000000"
              ],
              [
                "-503249/1000000",
                "10160072391/500000000000"
              ],
              [
                "-567307/1000000",
                "38738844453/500000000000"
              ],
              [
                "-163023/1000000",
                "10160072391/500000000000"
              ],
              [
                "-227081/1000000",
                "38738844453/500000000000"
              ]
            ],
            "raw": [
              "3517/25000",
              "38738844453/113540500000"
            ],
            "new": [
              "3517/25000",
              "34119/100000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "799269/1000000",
              "863327/1000000"
            ],
            "lines": [
              [
                "173543/250000",
                "-814007383/1250000000"
              ],
              [
                "246831/500000",
                "-2959254681/5000000000"
              ],
              [
                "173543/250000",
                "-7541786409/12500000000"
              ],
              [
                "246831/500000",
                "-23788461363/50000000000"
              ],
              [
                "375799/500000",
                "-814007383/1250000000"
              ],
              [
                "34443/62500",
                "-2959254681/5000000000"
              ],
              [
                "375799/500000",
                "-7541786409/12500000000"
              ],
              [
                "34443/62500",
                "-23788461363/50000000000"
              ]
            ],
            "raw": [
              "7541786409/9394975000",
              "863327/1000000"
            ],
            "new": [
              "401373/500000",
              "863327/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "x",
            "old": [
              "14801/50000",
              "318123/500000"
            ],
            "lines": [
              [
                "3517/25000",
                "-16950775461/125000000000"
              ],
              [
                "34119/100000",
                "-74141201037/250000000000"
              ],
              [
                "3517/25000",
                "-23388142439/250000000000"
              ],
              [
                "34119/100000",
                "-133329133263/500000000000"
              ],
              [
                "3517/25000",
                "-22376927973/250000000000"
              ],
              [
                "34119/100000",
                "-7827072261/31250000000"
              ],
              [
                "3517/25000",
                "-21987576727/500000000000"
              ],
              [
                "34119/100000",
                "-13567553139/62500000000"
              ]
            ],
            "raw": [
              "21987576727/70340000000",
              "318123/500000"
            ],
            "new": [
              "312589/1000000",
              "318123/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "208713/250000",
              "446139/500000"
            ],
            "lines": [
              [
                "401373/500000",
                "-19045132169/25000000000"
              ],
              [
                "401373/500000",
                "-86008666683/100000000000"
              ],
              [
                "863327/1000000",
                "-9629097773/12500000000"
              ],
              [
                "863327/1000000",
                "-44037814911/50000000000"
              ],
              [
                "401373/500000",
                "-35813661/50000000"
              ],
              [
                "401373/500000",
                "-149931627/200000000"
              ],
              [
                "863327/1000000",
                "-18119893877/25000000000"
              ],
              [
                "863327/1000000",
                "-77032776639/100000000000"
              ]
            ],
            "raw": [
              "18119893877/21583175000",
              "446139/500000"
            ],
            "new": [
              "839537/1000000",
              "446139/500000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "219777/1000000",
              "248473/500000"
            ],
            "lines": [
              [
                "401373/500000",
                "-2797430741/12500000000"
              ],
              [
                "401373/500000",
                "-15141233687/50000000000"
              ],
              [
                "863327/1000000",
                "-5807924859/25000000000"
              ],
              [
                "863327/1000000",
                "-32349430513/100000000000"
              ],
              [
                "401373/500000",
                "-2279432913/12500000000"
              ],
              [
                "401373/500000",
                "-10116050891/50000000000"
              ],
              [
                "863327/1000000",
                "-4771929203/25000000000"
              ],
              [
                "863327/1000000",
                "-22299064921/100000000000"
              ]
            ],
            "raw": [
              "4771929203/21583175000",
              "248473/500000"
            ],
            "new": [
              "110547/500000",
              "248473/500000"
            ]
          },
          {
            "factor": 216,
            "target": "h",
            "old": [
              "335311/500000",
              "1/1"
            ],
            "lines": [
              [
                "1/1",
                "-689853/1000000"
              ],
              [
                "1/1",
                "-907/1000"
              ]
            ],
            "raw": [
              "689853/1000000",
              "1/1"
            ],
            "new": [
              "689853/1000000",
              "1/1"
            ]
          },
          {
            "factor": 226,
            "target": "b",
            "old": [
              "4329/40000",
              "96713/200000"
            ],
            "lines": [
              [
                "-689853/1000000",
                "1411628841/12500000000"
              ],
              [
                "-689853/1000000",
                "13694445387/50000000000"
              ],
              [
                "-689853/1000000",
                "3036321059/25000000000"
              ],
              [
                "-689853/1000000",
                "29455853913/100000000000"
              ],
              [
                "-1/1",
                "1411628841/12500000000"
              ],
              [
                "-1/1",
                "13694445387/50000000000"
              ],
              [
                "-1/1",
                "3036321059/25000000000"
              ],
              [
                "-1/1",
                "29455853913/100000000000"
              ]
            ],
            "raw": [
              "4329/40000",
              "9818617971/22995100000"
            ],
            "new": [
              "4329/40000",
              "106747/250000"
            ]
          },
          {
            "factor": 228,
            "target": "a",
            "old": [
              "3517/25000",
              "34119/100000"
            ],
            "lines": [
              [
                "150113768169/500000000000",
                "-56128869/1000000000"
              ],
              [
                "329903320931/1000000000000",
                "-55523059/1000000000"
              ],
              [
                "42906/78125",
                "-4248627/50000000"
              ],
              [
                "747077/1250000",
                "-8436673/100000000"
              ]
            ],
            "raw": [
              "8436673/59766160",
              "34119/100000"
            ],
            "new": [
              "141161/1000000",
              "34119/100000"
            ]
          },
          {
            "factor": 304,
            "target": "u",
            "old": [
              "2043/5000",
              "10987/15625"
            ],
            "lines": [
              [
                "839537/1000000",
                "-116333856903/250000000000"
              ],
              [
                "839537/1000000",
                "-3316067977/7812500000"
              ],
              [
                "839537/1000000",
                "-439855744733/1000000000000"
              ],
              [
                "839537/1000000",
                "-14460589447/31250000000"
              ],
              [
                "839537/1000000",
                "-491206302593/1000000000000"
              ],
              [
                "839537/1000000",
                "-12049587187/31250000000"
              ],
              [
                "839537/1000000",
                "-232863309857/500000000000"
              ],
              [
                "839537/1000000",
                "-6622952363/15625000000"
              ],
              [
                "446139/500000",
                "-116333856903/250000000000"
              ],
              [
                "446139/500000",
                "-3316067977/7812500000"
              ],
              [
                "446139/500000",
                "-439855744733/1000000000000"
              ],
              [
                "446139/500000",
                "-14460589447/31250000000"
              ],
              [
                "446139/500000",
                "-491206302593/1000000000000"
              ],
              [
                "446139/500000",
                "-12049587187/31250000000"
              ],
              [
                "446139/500000",
                "-232863309857/500000000000"
              ],
              [
                "446139/500000",
                "-6622952363/15625000000"
              ],
              [
                "839537/1000000",
                "-26085482287/50000000000"
              ],
              [
                "839537/1000000",
                "-30051932449/62500000000"
              ],
              [
                "839537/1000000",
                "-81659710357/200000000000"
              ],
              [
                "839537/1000000",
                "-107795417339/250000000000"
              ],
              [
                "839537/1000000",
                "-127372390297/200000000000"
              ],
              [
                "839537/1000000",
                "-132810609719/250000000000"
              ],
              [
                "839537/1000000",
                "-52345085753/100000000000"
              ],
              [
                "839537/1000000",
                "-60199148631/125000000000"
              ],
              [
                "446139/500000",
                "-26085482287/50000000000"
              ],
              [
                "446139/500000",
                "-30051932449/62500000000"
              ],
              [
                "446139/500000",
                "-81659710357/200000000000"
              ],
              [
                "446139/500000",
                "-107795417339/250000000000"
              ],
              [
                "446139/500000",
                "-127372390297/200000000000"
              ],
              [
                "446139/500000",
                "-132810609719/250000000000"
              ],
              [
                "446139/500000",
                "-52345085753/100000000000"
              ],
              [
                "446139/500000",
                "-60199148631/125000000000"
              ]
            ],
            "raw": [
              "12049587187/27883687500",
              "10987/15625"
            ],
            "new": [
              "432137/1000000",
              "10987/15625"
            ]
          },
          {
            "factor": 1313,
            "target": "z",
            "old": [
              "72797/250000",
              "6331/10000"
            ],
            "lines": [
              [
                "-756919155469/1000000000000",
                "71102800382501063055403/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "212879675200062806372983/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "70993145198222063055403/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "213169022232843806372983/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "340702224084818018905073/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "51368446571554789546753/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "338997743179229018905073/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "51296257706725789546753/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "75443412561446299887483/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "201426105880117755353863/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "75333757377167299887483/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "201715452912898755353863/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "408172728340731256048353/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "54225984661716908414833/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "406468247435142256048353/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "54153795796887908414833/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "8584758151980754472103/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "27409727703673153139183/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "8571051253945879472103/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "27445896082770778139183/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "37876515588483068734773/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3110761264745350165789/7812500000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "37663455475284443734773/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "3106249460693537665789/7812500000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "9127334674348909076113/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "25978031538680021761793/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "9113627776314034076113/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "26014199917777646761793/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "46310328620472223377683/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "822339348845120648761/1953125000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "46097268507273598377683/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "821211397832167523761/1953125000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "75163004618219168855403/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "223030185789358070872983/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "75053349433940168855403/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "223319532822139070872983/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "361003245263408547905073/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "53906074218878605671753/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "359298764357819547905073/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "53833885354049605671753/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "79503616797164405687483/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "211576616469413019853863/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "79393961612885405687483/200000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "211865963502194019853863/500000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "428473749519321785048353/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "56763612309040724539833/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "426769268613732785048353/1000000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "56691423444211724539833/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "9092283681445517697103/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "28678541527335061201683/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "9078576783410642697103/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "28714709906432686201683/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "40414143235806884859773/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "6538725985406177347203/15625000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "40201083122608259859773/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "6529702377302552347203/15625000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "9634860203813672301113/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "27246845362341929824293/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "9621153305778797301113/25000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "27283013741439554824293/62500000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "48847956267796039502683/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "6895918246676442205713/15625000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "48634896154597414502683/125000000000000000000000"
              ],
              [
                "-756919155469/1000000000000",
                "6886894638572817205713/15625000000000000000000"
              ]
            ],
            "raw": [
              "72797/250000",
              "28714709906432686201683/47307447216812500000000"
            ],
            "new": [
              "72797/250000",
              "606981/1000000"
            ]
          },
          {
            "factor": 1505,
            "target": "g",
            "old": [
              "81119/500000",
              "228439/500000"
            ],
            "lines": [
              [
                "50954174594808113/125000000000000000",
                "-16744814693421/250000000000000"
              ],
              [
                "129514083505861803/500000000000000000",
                "-42561563321151/1000000000000000"
              ],
              [
                "319023658845621259/500000000000000000",
                "-104839144047903/1000000000000000"
              ],
              [
                "24472104397225061/50000000000000000",
                "-8042144859537/100000000000000"
              ],
              [
                "50954174594808113/125000000000000000",
                "-10436867923947/125000000000000"
              ],
              [
                "129514083505861803/500000000000000000",
                "-26528177418057/500000000000000"
              ],
              [
                "319023658845621259/500000000000000000",
                "-65345142345321/500000000000000"
              ],
              [
                "24472104397225061/50000000000000000",
                "-5012584806759/50000000000000"
              ]
            ],
            "raw": [
              "1968883500/11982555251",
              "228439/500000"
            ],
            "new": [
              "20539/125000",
              "228439/500000"
            ]
          }
        ]
      }
    },
    {
      "id": 3,
      "assumptions": [
        "AGO+",
        "AGP-",
        "DGP+"
      ],
      "initial_box": {
        "low": [
          "141161/1000000",
          "4329/40000",
          "401373/500000",
          "59619/250000",
          "689853/1000000",
          "617/1000",
          "20539/125000",
          "689853/1000000",
          "72797/250000",
          "312589/1000000",
          "839537/1000000",
          "432137/1000000",
          "110547/500000"
        ],
        "high": [
          "34119/100000",
          "106747/250000",
          "863327/1000000",
          "221847/500000",
          "907/1000",
          "863327/1000000",
          "228439/500000",
          "1",
          "606981/1000000",
          "318123/500000",
          "446139/500000",
          "10987/15625",
          "248473/500000"
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
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": -1,
        "DGP": 1,
        "ACO": 1,
        "AOP": -1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGP": -1,
        "GHP": -1,
        "GOP": -1,
        "EGP": 1,
        "DGH": -1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADG": 1,
        "BEG": 1,
        "BEO": 1,
        "BDG": 1,
        "BDO": 1,
        "BOP": -1,
        "DHO": -1,
        "BGO": -1
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
          "sign": 1,
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
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
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
            "plu",
            "BADEG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BEG",
            "ABE",
            "ABG",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ABO",
            "GP",
            "BOA",
            [
              "area",
              "ABO",
              "U_ABO",
              "557836721843639/907000000000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "AGO",
            "ABG",
            "AOP",
            "ABP",
            "BGP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "cap",
            "CDH",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CDH",
              "U_CDH",
              "61741980571/100000000000"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "CDO",
            "CHO"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "cap",
            "BCO",
            [
              "P"
            ],
            "G",
            [
              "area",
              "BCO",
              "U_BCO",
              "21392282613/31250000000"
            ]
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "BCG",
            "CGO"
          ],
          "area_stage": 2
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
        "L_ABO": {
          "triangle": "ABO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABO",
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
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
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
        "L_CDH": {
          "triangle": "CDH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDH",
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEF",
            "points": []
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
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
            "points": [
              "P"
            ]
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
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
            "points": [
              "P"
            ]
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
            "triangle": "COP",
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
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDO",
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
        "L_DHP": {
          "triangle": "DHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DHP",
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
        "L_EHP": {
          "triangle": "EHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EHP",
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
            "triangle": "FOP",
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
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ACD": {
          "triangle": "ACD",
          "side": "hi",
          "value": "53710558851/125000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACD",
            "used": [
              0,
              2,
              3
            ],
            "values": [
              "21928022699/100000000000",
              "45035133401/200000000000",
              "126257115261/500000000000",
              "64684186839/250000000000",
              "192009077809/500000000000",
              "402345907291/1000000000000",
              "26467167249/62500000000",
              "53710558851/125000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "863327/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "36968566113/50000000000",
              "388262954447/500000000000",
              "77928269087/100000000000",
              "811297674541/1000000000000",
              "82341563139/100000000000",
              "828555234353/1000000000000",
              "863327/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "147654541573/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "126674575443/250000000000",
              "536888661379/1000000000000",
              "274517964279/500000000000",
              "291210695343/500000000000",
              "24189756653/40000000000",
              "308563416801/500000000000",
              "647052232781/1000000000000",
              "647081543111/1000000000000",
              "647317193209/1000000000000",
              "325215831051/500000000000",
              "164866115097/250000000000",
              "86573120261/125000000000",
              "346369989279/500000000000",
              "86596161111/125000000000",
              "173212480629/250000000000",
              "147654541573/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ADO": {
          "triangle": "ADO",
          "side": "hi",
          "value": "144139480293/200000000000",
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
              "27070577501/62500000000",
              "58288172143/125000000000",
              "30366890001/62500000000",
              "252945294441/500000000000",
              "64880797143/125000000000",
              "265227133273/500000000000",
              "279315794441/500000000000",
              "140924592911/250000000000",
              "291597633273/500000000000",
              "603807512063/1000000000000",
              "154109842911/250000000000",
              "63645972051/100000000000",
              "656548512063/1000000000000",
              "133591280293/200000000000",
              "68920072051/100000000000",
              "144139480293/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_AOP": {
          "triangle": "AOP",
          "side": "hi",
          "value": "503175262119/1000000000000",
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
              "37713663201/500000000000",
              "98218663919/1000000000000",
              "116255045563/1000000000000",
              "3476159577/25000000000",
              "33333313051/200000000000",
              "47364475693/250000000000",
              "190579632147/1000000000000",
              "3333921401/15625000000",
              "125468528997/500000000000",
              "6283063283/25000000000",
              "252894866083/1000000000000",
              "132354436029/500000000000",
              "273728395511/1000000000000",
              "689215509/2500000000",
              "11072317319/40000000000",
              "36051039351/125000000000",
              "58352955431/200000000000",
              "74899817623/250000000000",
              "75433512753/250000000000",
              "150897327773/500000000000",
              "19659757167/62500000000",
              "677639669/2000000000",
              "379861177803/1000000000000",
              "2424764699/6250000000",
              "416946961291/1000000000000",
              "13282754229/31250000000",
              "1667313527/3906250000",
              "8804372073/20000000000",
              "289948779/625000000",
              "466089478631/1000000000000",
              "238652193569/500000000000",
              "503175262119/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "12491755731/20000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HBO",
            "used": [
              1,
              7,
              9,
              10
            ],
            "values": [
              "231840010317/1000000000000",
              "118773952521/500000000000",
              "61018306139/250000000000",
              "33324124833/125000000000",
              "279553731209/1000000000000",
              "11808915673/40000000000",
              "6018615731/20000000000",
              "302073505317/1000000000000",
              "227557881369/500000000000",
              "460823657463/1000000000000",
              "50282948363/100000000000",
              "262674628869/500000000000",
              "141932556139/250000000000",
              "73781249833/125000000000",
              "24755195673/40000000000",
              "12491755731/20000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDG": {
          "triangle": "CDG",
          "side": "hi",
          "value": "40299876537/100000000000",
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
              "2136341707/15625000000",
              "3497980373/25000000000",
              "179886245937/1000000000000",
              "101105323671/500000000000",
              "25811979833/125000000000",
              "13105574021/62500000000",
              "6590548567/31250000000",
              "22013652013/100000000000",
              "249656215353/1000000000000",
              "263296896819/1000000000000",
              "135990308379/500000000000",
              "136594493283/500000000000",
              "85176833237/250000000000",
              "174973149467/500000000000",
              "393106675623/1000000000000",
              "40299876537/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "138356895931/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "300167048721/1000000000000",
              "163755959379/500000000000",
              "85638942413/250000000000",
              "48586206887/125000000000",
              "477337289007/1000000000000",
              "246124923693/500000000000",
              "259863004969/500000000000",
              "138356895931/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDO": {
          "triangle": "CDO",
          "side": "hi",
          "value": "39348512457/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDO",
            "used": [
              2,
              3,
              9,
              10
            ],
            "values": [
              "168895408957/1000000000000",
              "3522073593/20000000000",
              "102654142699/500000000000",
              "43099303523/200000000000",
              "53927914653/250000000000",
              "55676197077/250000000000",
              "119738541199/500000000000",
              "246079835689/1000000000000",
              "62470113903/250000000000",
              "126644053191/500000000000",
              "28249271213/100000000000",
              "9153002667/31250000000",
              "359101186573/1000000000000",
              "183154728633/500000000000",
              "95770437839/250000000000",
              "39348512457/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "462672311/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "689853/1000000",
              "732241720931/1000000000000",
              "375515368169/500000000000",
              "432083442831/500000000000",
              "877321868069/1000000000000",
              "919710589/1000000000",
              "462672311/500000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "139803/200000",
          "witness": {
            "kind": "vertices",
            "signed": "CFG",
            "used": [
              2,
              5,
              6,
              8
            ],
            "values": [
              "116561853587/500000000000",
              "256933191213/1000000000000",
              "36472624219/125000000000",
              "83680383381/250000000000",
              "90877115057/250000000000",
              "382639515961/1000000000000",
              "406449/1000000",
              "262844853587/500000000000",
              "549499191213/1000000000000",
              "73043374219/125000000000",
              "156821883381/250000000000",
              "164018615057/250000000000",
              "675205515961/1000000000000",
              "139803/200000"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "863327/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "617/1000",
              "337304282331/500000000000",
              "693397580069/1000000000000",
              "844537984593/1000000000000",
              "863327/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "613675179813/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HCO",
            "used": [
              2,
              7,
              9,
              10
            ],
            "values": [
              "174056959599/1000000000000",
              "91888984301/500000000000",
              "109794844453/500000000000",
              "56528898847/250000000000",
              "335798691681/1000000000000",
              "68973339617/200000000000",
              "378136318467/1000000000000",
              "6099991053/15625000000",
              "497713959599/1000000000000",
              "253717484301/500000000000",
              "271623344453/500000000000",
              "137443148847/250000000000",
              "279537222051/500000000000",
              "284071225253/500000000000",
              "75176508861/125000000000",
              "613675179813/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_DFH": {
          "triangle": "DFH",
          "side": "hi",
          "value": "699832951279/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DFH",
            "used": [
              3,
              5,
              7
            ],
            "values": [
              "171620401/500000000",
              "462027103/1000000000",
              "117465077/250000000",
              "240136995031/500000000000",
              "522662710993/1000000000000",
              "588646609/1000000000",
              "164361057587/250000000000",
              "699832951279/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "336225290131/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "253049613139/1000000000000",
              "18785488483/62500000000",
              "155192159/500000000",
              "42138633087/125000000000",
              "76925453457/200000000000",
              "423250297139/1000000000000",
              "217150050329/500000000000",
              "240292501/500000000",
              "63413718587/125000000000",
              "134679573833/250000000000",
              "622777746889/1000000000000",
              "336225290131/500000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
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
        "3": {
          "row": [
            "fan",
            "ACO",
            "ACP",
            "COP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "P"
          }
        },
        "7": {
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
        "15": {
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
        "21": {
          "row": [
            "fan",
            "CGO",
            "CGP",
            "COP",
            "GOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GCO",
            "point": "P"
          }
        },
        "22": {
          "row": [
            "fan",
            "CHO",
            "CHP",
            "COP",
            "HOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HCO",
            "point": "P"
          }
        },
        "59": {
          "row": [
            "plu",
            "ACG",
            "AOP",
            "ACO",
            "AGP",
            "ACP",
            "AGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACGOP"
          }
        },
        "147": {
          "row": [
            "plu",
            "ACF",
            "CDO",
            "ACD",
            "CFO",
            "ACO",
            "CDF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CADFO"
          }
        },
        "211": {
          "row": [
            "plu",
            "CDF",
            "CEH",
            "CDE",
            "CFH",
            "CDH",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CDEFH"
          }
        },
        "221": {
          "row": [
            "plu",
            "CDO",
            "CFG",
            "CDF",
            "CGO",
            "CDG",
            "CFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "CDFGO"
          }
        },
        "392": {
          "row": [
            "plu",
            "CEF",
            "DFH",
            "CDF",
            "EFH",
            "CFH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEH"
          }
        },
        "427": {
          "row": [
            "plu",
            "ACG",
            "DGO",
            "ADG",
            "CGO",
            "AGO",
            "CDG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GACDO"
          }
        },
        "459": {
          "row": [
            "plu",
            "CDG",
            "GOP",
            "CGO",
            "DGP",
            "CGP",
            "DGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "GCDOP"
          }
        },
        "500": {
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
        "586": {
          "row": [
            "plu",
            "ACO",
            "DGO",
            "ADO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OACDG"
          }
        },
        "630": {
          "row": [
            "plu",
            "ACP",
            "HOP",
            "AHP",
            "COP",
            "AOP",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PACHO"
          }
        },
        "717": {
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
        "737": {
          "row": [
            "support",
            "ACO",
            "ACD",
            "ADO",
            "53103/62500"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "ACDO",
            "occupants": [
              "G",
              "P"
            ],
            "rate": "1142/125"
          }
        },
        "747": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "929": {
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
        "1545": {
          "row": [
            "balance",
            [
              [
                1,
                "ACG",
                "FHO"
              ],
              [
                -1,
                "ACO",
                "FGH"
              ],
              [
                1,
                "AFH",
                "CGO"
              ],
              [
                1,
                "AGO",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACG",
            "point": "O",
            "line": "FH"
          }
        },
        "2033": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "DGH"
              ],
              [
                -1,
                "ADO",
                "CGH"
              ],
              [
                -1,
                "AGO",
                "CDH"
              ],
              [
                -1,
                "AHO",
                "CDG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDG",
            "point": "H",
            "line": "AO"
          }
        },
        "2160": {
          "row": [
            "balance",
            [
              [
                1,
                "CDP",
                "FGH"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGH",
                "DFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFG",
            "point": "H",
            "line": "DP"
          }
        },
        "2364": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CFP",
                "DGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DGH",
            "point": "P",
            "line": "CF"
          }
        },
        "2602": {
          "row": [
            "linear",
            {
              "ACD": "-93/1000",
              "ADO": "73254541573/200000000000",
              "ADG": "-147654541573/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "G",
            "line": "AD",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "147654541573/200000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "54654541573/200000000000"
          }
        },
        "2608": {
          "row": [
            "linear",
            {
              "ACO": "-93/1000",
              "AGO": "147654541573/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "G",
            "line": "AO",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "147654541573/200000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "54654541573/200000000000"
          }
        },
        "2626": {
          "row": [
            "linear",
            {
              "ACD": "110454541573/200000000000",
              "CDO": "73254541573/200000000000",
              "CDG": "-147654541573/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "G",
            "line": "CD",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "147654541573/200000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "54654541573/200000000000"
          }
        },
        "2802": {
          "row": [
            "linear",
            {
              "ADH": "-93/1000",
              "AHO": "-93/1000",
              "AGH": "144139480293/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ADO",
            "point": "G",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ADO",
              "ref": "U_ADO",
              "value": "144139480293/200000000000"
            },
            "fan_lower": [
              {
                "triangle": "DGO",
                "ref": "L_DGO",
                "value": "93/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ADG",
                "ref": "L_ADG",
                "value": "93/1000"
              }
            ],
            "residual": "88339480293/200000000000"
          }
        },
        "2956": {
          "row": [
            "linear",
            {
              "COP": "-93/1000",
              "ACP": "317175262119/1000000000000",
              "CGP": "-503175262119/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "OAP",
            "point": "G",
            "line": "CP",
            "side": "upper",
            "outer_upper": {
              "triangle": "AOP",
              "ref": "U_AOP",
              "value": "503175262119/1000000000000"
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
            "residual": "224175262119/1000000000000"
          }
        },
        "3273": {
          "row": [
            "linear",
            {
              "BHO": "-93/1000",
              "BGO": "12491755731/20000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HBO",
            "point": "G",
            "line": "BO",
            "side": "lower",
            "outer_upper": {
              "triangle": "BHO",
              "ref": "U_BHO",
              "value": "12491755731/20000000000"
            },
            "fan_lower": [
              {
                "triangle": "BGO",
                "ref": "L_BGO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              }
            ],
            "residual": "6911755731/20000000000"
          }
        },
        "3402": {
          "row": [
            "linear",
            {
              "CDE": "-93/1000",
              "CEG": "21699876537/100000000000",
              "CEP": "-40299876537/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "CE",
            "side": "upper",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "40299876537/100000000000"
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
            "residual": "12399876537/100000000000"
          }
        },
        "3404": {
          "row": [
            "linear",
            {
              "CDF": "-93/1000",
              "CFG": "21699876537/100000000000",
              "CFP": "-40299876537/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "40299876537/100000000000"
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
            "residual": "12399876537/100000000000"
          }
        },
        "3425": {
          "row": [
            "linear",
            {
              "CDP": "-93/1000",
              "DGP": "21699876537/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "DP",
            "side": "lower",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "40299876537/100000000000"
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
            "residual": "12399876537/100000000000"
          }
        },
        "3442": {
          "row": [
            "linear",
            {
              "CGO": "-93/1000",
              "DGO": "-93/1000",
              "GOP": "40299876537/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDG",
            "point": "P",
            "line": "GO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CDG",
              "ref": "U_CDG",
              "value": "40299876537/100000000000"
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
            "residual": "12399876537/100000000000"
          }
        },
        "3478": {
          "row": [
            "linear",
            {
              "CDH": "-93/1000",
              "CHP": "138356895931/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CDH",
            "point": "P",
            "line": "CH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CDH",
              "ref": "U_CDH",
              "value": "138356895931/250000000000"
            },
            "fan_lower": [
              {
                "triangle": "DHP",
                "ref": "L_DHP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              },
              {
                "triangle": "CDP",
                "ref": "L_CDP",
                "value": "93/1000"
              }
            ],
            "residual": "68606895931/250000000000"
          }
        },
        "3608": {
          "row": [
            "linear",
            {
              "CEH": "-93/1000",
              "CHP": "462672311/500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CEH",
            "point": "P",
            "line": "CH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CEH",
              "ref": "U_CEH",
              "value": "462672311/500000000"
            },
            "fan_lower": [
              {
                "triangle": "EHP",
                "ref": "L_EHP",
                "value": "93/1000"
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
            "residual": "323172311/500000000"
          }
        },
        "3757": {
          "row": [
            "linear",
            {
              "CFH": "-93/1000",
              "FHO": "863327/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "FH",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "863327/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "398327/1000000"
          }
        },
        "3905": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "ACO": "-93/1000",
              "ACP": "613675179813/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "AC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "613675179813/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "334675179813/1000000000000"
          }
        },
        "3907": {
          "row": [
            "linear",
            {
              "AGH": "-93/1000",
              "ACG": "427675179813/1000000000000",
              "AGO": "-93/1000",
              "AGP": "-613675179813/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "613675179813/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "334675179813/1000000000000"
          }
        },
        "3915": {
          "row": [
            "linear",
            {
              "BCH": "-93/1000",
              "BCO": "-93/1000",
              "BCP": "613675179813/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "613675179813/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "334675179813/1000000000000"
          }
        },
        "3956": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "427675179813/1000000000000",
              "FOP": "-613675179813/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "613675179813/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "334675179813/1000000000000"
          }
        },
        "4057": {
          "row": [
            "linear",
            {
              "CFP": "243225290131/500000000000",
              "CHP": "-93/1000",
              "COP": "-336225290131/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "336225290131/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "196725290131/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0004",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "366273/1000000",
          "sources": [
            "U_ACO",
            "L_CGO",
            "L_AGO"
          ]
        },
        {
          "id": "T0006",
          "relation": 3,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "366273/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0016",
          "relation": 59,
          "rule": "sumlo",
          "triangle": "ACG",
          "side": "lo",
          "value": "29049/200000",
          "sources": [
            "L_ACO",
            "L_AGP",
            "L_ACP",
            "L_AGO",
            "U_AOP"
          ]
        },
        {
          "id": "T0031",
          "relation": 211,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "97673/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "L_CDH",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0041",
          "relation": 392,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "105051/1000000",
          "sources": [
            "T0031",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0045",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "141681/1000000",
          "sources": [
            "L_ADG",
            "L_CGO",
            "L_AGO",
            "L_CDG",
            "T0004"
          ]
        },
        {
          "id": "T0048",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "2427/25000",
          "sources": [
            "L_CGO",
            "L_DGP",
            "L_CGP",
            "T0045",
            "U_CDG"
          ]
        },
        {
          "id": "T0056",
          "relation": 630,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "141681/1000000",
          "sources": [
            "L_AHP",
            "L_COP",
            "L_AOP",
            "L_CHP",
            "T0006"
          ]
        },
        {
          "id": "T0061",
          "relation": 737,
          "rule": "support_z",
          "triangle": "ADO",
          "side": "lo",
          "value": "342461/1000000",
          "sources": [
            "L_ACO",
            "U_ACD"
          ]
        },
        {
          "id": "T0063",
          "relation": 747,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "158651/1000000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0069",
          "relation": 929,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CFH"
          ]
        },
        {
          "id": "T0080",
          "relation": 1545,
          "rule": "balance_lo",
          "triangle": "FGH",
          "side": "lo",
          "value": "16553/100000",
          "sources": [
            "T0016",
            "L_FHO",
            "T0063",
            "L_CGO",
            "L_AGO",
            "L_CFH",
            "U_ACO"
          ]
        },
        {
          "id": "T0092",
          "relation": 2160,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "5063/40000",
          "sources": [
            "L_CDP",
            "T0080",
            "L_CFH",
            "L_DGP",
            "L_CGH",
            "L_DFP",
            "U_CFG"
          ]
        },
        {
          "id": "T0096",
          "relation": 2626,
          "rule": "linear",
          "triangle": "ACD",
          "side": "lo",
          "value": "112001/1000000",
          "sources": [
            "L_CDG",
            "U_CDO"
          ]
        },
        {
          "id": "T0103",
          "relation": 2956,
          "rule": "linear",
          "triangle": "ACP",
          "side": "lo",
          "value": "87403/500000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0119",
          "relation": 3907,
          "rule": "linear",
          "triangle": "ACG",
          "side": "lo",
          "value": "173893/1000000",
          "sources": [
            "L_AGH",
            "L_AGO",
            "L_AGP"
          ]
        },
        {
          "id": "T0123",
          "relation": 3956,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "153669/1000000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0125",
          "relation": 4057,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "146339/1000000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0128",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "359893/1000000",
          "sources": [
            "T0119",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0134",
          "relation": 15,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "12503/40000",
          "sources": [
            "L_CDP",
            "T0092",
            "L_CHP"
          ]
        },
        {
          "id": "T0138",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "7077/25000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0048"
          ]
        },
        {
          "id": "T0139",
          "relation": 22,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "327681/1000000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0056"
          ]
        },
        {
          "id": "T0150",
          "relation": 211,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "105119/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0134",
            "T0041",
            "U_CEH"
          ]
        },
        {
          "id": "T0151",
          "relation": 221,
          "rule": "sumlo",
          "triangle": "CDO",
          "side": "lo",
          "value": "3247/31250",
          "sources": [
            "T0150",
            "T0138",
            "L_CDG",
            "T0123",
            "U_CFG"
          ]
        },
        {
          "id": "T0160",
          "relation": 392,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "106041/1000000",
          "sources": [
            "T0150",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0164",
          "relation": 500,
          "rule": "sumlo",
          "triangle": "AHO",
          "side": "lo",
          "value": "19797/200000",
          "sources": [
            "T0128",
            "L_FHO",
            "T0063",
            "T0139",
            "U_CFH"
          ]
        },
        {
          "id": "T0168",
          "relation": 586,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "361/2500",
          "sources": [
            "T0061",
            "T0138",
            "L_AGO",
            "T0151",
            "U_ACO"
          ]
        },
        {
          "id": "T0180",
          "relation": 2033,
          "rule": "balance_lo",
          "triangle": "DGH",
          "side": "lo",
          "value": "59961/500000",
          "sources": [
            "T0061",
            "L_CGH",
            "L_AGO",
            "T0134",
            "T0164",
            "L_CDG",
            "U_ACO"
          ]
        },
        {
          "id": "T0183",
          "relation": 2364,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "13127/100000",
          "sources": [
            "T0150",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0125",
            "T0180",
            "U_CFG"
          ]
        },
        {
          "id": "T0192",
          "relation": 3442,
          "rule": "linear",
          "triangle": "GOP",
          "side": "lo",
          "value": "98649/1000000",
          "sources": [
            "T0138",
            "T0168"
          ]
        },
        {
          "id": "T0198",
          "relation": 15,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "31727/100000",
          "sources": [
            "L_CDP",
            "T0183",
            "L_CHP"
          ]
        },
        {
          "id": "T0202",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "284649/1000000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0192"
          ]
        },
        {
          "id": "T0212",
          "relation": 211,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "105991/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0198",
            "T0160",
            "U_CEH"
          ]
        },
        {
          "id": "T0213",
          "relation": 221,
          "rule": "sumlo",
          "triangle": "CDO",
          "side": "lo",
          "value": "20899/200000",
          "sources": [
            "T0212",
            "T0202",
            "L_CDG",
            "T0123",
            "U_CFG"
          ]
        },
        {
          "id": "T0224",
          "relation": 586,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "72601/500000",
          "sources": [
            "T0061",
            "T0202",
            "L_AGO",
            "T0213",
            "U_ACO"
          ]
        },
        {
          "id": "T0242",
          "relation": 3442,
          "rule": "linear",
          "triangle": "GOP",
          "side": "lo",
          "value": "24799/250000",
          "sources": [
            "T0202",
            "T0224"
          ]
        },
        {
          "id": "T0253",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "71299/250000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0242"
          ]
        },
        {
          "id": "T0259",
          "relation": 147,
          "rule": "sumlo",
          "triangle": "CDO",
          "side": "lo",
          "value": "104997/1000000",
          "sources": [
            "T0096",
            "T0123",
            "L_ACO",
            "T0212",
            "U_ACF"
          ]
        },
        {
          "id": "T0274",
          "relation": 586,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "145519/1000000",
          "sources": [
            "T0061",
            "T0253",
            "L_AGO",
            "T0259",
            "U_ACO"
          ]
        },
        {
          "id": "T0291",
          "relation": 3442,
          "rule": "linear",
          "triangle": "GOP",
          "side": "lo",
          "value": "24849/250000",
          "sources": [
            "T0253",
            "T0274"
          ]
        },
        {
          "id": "T0294",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "360077/1000000",
          "sources": [
            "U_ACO",
            "T0253",
            "L_AGO"
          ]
        },
        {
          "id": "T0302",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "71349/250000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0291"
          ]
        },
        {
          "id": "T0319",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "145771/1000000",
          "sources": [
            "L_ADG",
            "T0302",
            "L_AGO",
            "L_CDG",
            "T0294"
          ]
        },
        {
          "id": "T0320",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "199/2000",
          "sources": [
            "T0302",
            "L_DGP",
            "L_CGP",
            "T0319",
            "U_CDG"
          ]
        },
        {
          "id": "T0341",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "359877/1000000",
          "sources": [
            "U_ACO",
            "T0302",
            "L_AGO"
          ]
        },
        {
          "id": "T0349",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "571/2000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0320"
          ]
        },
        {
          "id": "T0365",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "145879/1000000",
          "sources": [
            "L_ADG",
            "T0349",
            "L_AGO",
            "L_CDG",
            "T0341"
          ]
        },
        {
          "id": "T0366",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "99549/1000000",
          "sources": [
            "T0349",
            "L_DGP",
            "L_CGP",
            "T0365",
            "U_CDG"
          ]
        },
        {
          "id": "T0385",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "359773/1000000",
          "sources": [
            "U_ACO",
            "T0349",
            "L_AGO"
          ]
        },
        {
          "id": "T0392",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "285549/1000000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0366"
          ]
        },
        {
          "id": "T0408",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "145933/1000000",
          "sources": [
            "L_ADG",
            "T0392",
            "L_AGO",
            "L_CDG",
            "T0385"
          ]
        },
        {
          "id": "T0409",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "99573/1000000",
          "sources": [
            "T0392",
            "L_DGP",
            "L_CGP",
            "T0408",
            "U_CDG"
          ]
        },
        {
          "id": "T0423",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "89931/250000",
          "sources": [
            "U_ACO",
            "T0392",
            "L_AGO"
          ]
        },
        {
          "id": "T0429",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "285573/1000000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0409"
          ]
        },
        {
          "id": "T0443",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "145959/1000000",
          "sources": [
            "L_ADG",
            "T0429",
            "L_AGO",
            "L_CDG",
            "T0423"
          ]
        },
        {
          "id": "T0444",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "1556/15625",
          "sources": [
            "T0429",
            "L_DGP",
            "L_CGP",
            "T0443",
            "U_CDG"
          ]
        },
        {
          "id": "T0460",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "3597/10000",
          "sources": [
            "U_ACO",
            "T0429",
            "L_AGO"
          ]
        },
        {
          "id": "T0466",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "17849/62500",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0444"
          ]
        },
        {
          "id": "T0477",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "36493/250000",
          "sources": [
            "L_ADG",
            "T0466",
            "L_AGO",
            "L_CDG",
            "T0460"
          ]
        },
        {
          "id": "T0478",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "9959/100000",
          "sources": [
            "T0466",
            "L_DGP",
            "L_CGP",
            "T0477",
            "U_CDG"
          ]
        },
        {
          "id": "T0491",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "359689/1000000",
          "sources": [
            "U_ACO",
            "T0466",
            "L_AGO"
          ]
        },
        {
          "id": "T0496",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "28559/100000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0478"
          ]
        },
        {
          "id": "T0503",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "72989/500000",
          "sources": [
            "L_ADG",
            "T0496",
            "L_AGO",
            "L_CDG",
            "T0491"
          ]
        },
        {
          "id": "T0504",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "12449/125000",
          "sources": [
            "T0496",
            "L_DGP",
            "L_CGP",
            "T0503",
            "U_CDG"
          ]
        },
        {
          "id": "T0517",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "359683/1000000",
          "sources": [
            "U_ACO",
            "T0496",
            "L_AGO"
          ]
        },
        {
          "id": "T0523",
          "relation": 21,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "35699/125000",
          "sources": [
            "L_CGP",
            "L_COP",
            "T0504"
          ]
        },
        {
          "id": "T0529",
          "relation": 427,
          "rule": "sumlo",
          "triangle": "DGO",
          "side": "lo",
          "value": "145981/1000000",
          "sources": [
            "L_ADG",
            "T0523",
            "L_AGO",
            "L_CDG",
            "T0517"
          ]
        },
        {
          "id": "T0530",
          "relation": 459,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "49797/500000",
          "sources": [
            "T0523",
            "L_DGP",
            "L_CGP",
            "T0529",
            "U_CDG"
          ]
        },
        {
          "id": "T0541",
          "relation": 7,
          "rule": "sum",
          "triangle": "AOP",
          "side": "lo",
          "value": "142797/500000",
          "sources": [
            "L_AGO",
            "L_AGP",
            "T0530"
          ]
        },
        {
          "id": "T0555",
          "relation": 3,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "359679/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0541"
          ]
        },
        {
          "id": "T0561",
          "relation": 630,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "145983/1000000",
          "sources": [
            "L_AHP",
            "L_COP",
            "T0541",
            "L_CHP",
            "T0555"
          ]
        },
        {
          "id": "T0567",
          "relation": 22,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "331983/1000000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0561"
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
        "57": {
          "name": "AREA_HI_CEF",
          "terms": [
            [
              [],
              "-13857/20000"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEF",
            "side": "hi",
            "reference": "T0069",
            "value": "6143/20000"
          }
        },
        "60": {
          "name": "AREA_LO_CFH",
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
                2,
                7
              ],
              "-1"
            ],
            [
              [
                2
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
            "triangle": "CFH",
            "side": "lo",
            "reference": "L_CFH",
            "value": "13857/20000"
          }
        },
        "62": {
          "name": "AREA_LO_DEF",
          "terms": [
            [
              [
                4,
                5
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
                5
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
            "triangle": "DEF",
            "side": "lo",
            "reference": "L_DEF",
            "value": "93/1000"
          }
        },
        "74": {
          "name": "AREA_LO_CDG",
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
                3,
                6
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
            "triangle": "CDG",
            "side": "lo",
            "reference": "L_CDG",
            "value": "279/1000"
          }
        },
        "86": {
          "name": "AREA_LO_ABO",
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
                0,
                9
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
            "triangle": "ABO",
            "side": "lo",
            "reference": "L_ABO",
            "value": "279/1000"
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
              "907/1000"
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
            "reference": "L_EFO",
            "value": "93/1000"
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
        "100": {
          "name": "AREA_LO_CHO",
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
                7,
                9
              ],
              "1"
            ],
            [
              [
                2,
                7
              ],
              "-1"
            ],
            [
              [],
              "-331983/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CHO",
            "side": "lo",
            "reference": "T0567",
            "value": "331983/1000000"
          }
        },
        "118": {
          "name": "AREA_LO_CHP",
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
                7,
                11
              ],
              "1"
            ],
            [
              [
                2,
                7
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
            "triangle": "CHP",
            "side": "lo",
            "reference": "L_CHP",
            "value": "93/1000"
          }
        },
        "128": {
          "name": "AREA_LO_BGH",
          "terms": [
            [
              [
                6,
                7
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
              [
                1,
                8
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
            "triangle": "BGH",
            "side": "lo",
            "reference": "L_BGH",
            "value": "93/1000"
          }
        },
        "132": {
          "name": "AREA_LO_COP",
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
                2,
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
                2,
                10
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
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "140": {
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "148": {
          "name": "AREA_LO_ACP",
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
                0,
                2
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
              "-87403/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "T0103",
            "value": "87403/500000"
          }
        },
        "208": {
          "name": "AREA_LO_BGO",
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
                1,
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
                1,
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
            "triangle": "BGO",
            "side": "lo",
            "reference": "L_BGO",
            "value": "93/1000"
          }
        },
        "218": {
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
        "228": {
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
        "230": {
          "name": "Central_endpoint_tangent_1",
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
              "-1/5"
            ],
            [
              [
                2
              ],
              "1/100"
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
            "t": "1/10"
          }
        },
        "316": {
          "name": "QUAD_717",
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
            "index": 717
          }
        },
        "1417": {
          "name": "LINEAR_2602",
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
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                0
              ],
              "279/1000"
            ],
            [
              [
                10
              ],
              "73254541573/200000000000"
            ],
            [
              [
                3,
                9
              ],
              "-73254541573/200000000000"
            ],
            [
              [
                0,
                9
              ],
              "73254541573/200000000000"
            ],
            [
              [
                8
              ],
              "-147654541573/200000000000"
            ],
            [
              [
                3,
                6
              ],
              "147654541573/200000000000"
            ],
            [
              [
                0,
                6
              ],
              "-147654541573/200000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2602
          }
        },
        "1423": {
          "name": "LINEAR_2608",
          "terms": [
            [
              [
                2,
                10
              ],
              "-93/1000"
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
                9
              ],
              "129054541573/200000000000"
            ],
            [
              [
                6,
                10
              ],
              "147654541573/200000000000"
            ],
            [
              [
                0,
                6
              ],
              "-147654541573/200000000000"
            ],
            [
              [
                8,
                9
              ],
              "-147654541573/200000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2608
          }
        },
        "1617": {
          "name": "LINEAR_2802",
          "terms": [
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
              "93/1000"
            ],
            [
              [
                7,
                9
              ],
              "-93/1000"
            ],
            [
              [
                0,
                9
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "144139480293/200000000000"
            ],
            [
              [
                0,
                6
              ],
              "-144139480293/200000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2802
          }
        },
        "2088": {
          "name": "LINEAR_3273",
          "terms": [
            [
              [
                1,
                10
              ],
              "10631755731/20000000000"
            ],
            [
              [
                7,
                9
              ],
              "-93/1000"
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
                10
              ],
              "-12491755731/20000000000"
            ],
            [
              [
                8,
                9
              ],
              "12491755731/20000000000"
            ],
            [
              [
                1,
                8
              ],
              "-12491755731/20000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3273
          }
        },
        "2217": {
          "name": "LINEAR_3402",
          "terms": [
            [
              [
                4
              ],
              "-93/1000"
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
                3
              ],
              "93/1000"
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
                8
              ],
              "21699876537/100000000000"
            ],
            [
              [
                2,
                8
              ],
              "-21699876537/100000000000"
            ],
            [
              [
                4,
                6
              ],
              "-21699876537/100000000000"
            ],
            [
              [
                12
              ],
              "-40299876537/100000000000"
            ],
            [
              [
                2,
                12
              ],
              "40299876537/100000000000"
            ],
            [
              [
                4,
                11
              ],
              "40299876537/100000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3402
          }
        },
        "2219": {
          "name": "LINEAR_3404",
          "terms": [
            [
              [],
              "-93/1000"
            ],
            [
              [
                2
              ],
              "-93/1000"
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
                2,
                3
              ],
              "-93/1000"
            ],
            [
              [
                5,
                8
              ],
              "21699876537/100000000000"
            ],
            [
              [
                2,
                8
              ],
              "-21699876537/100000000000"
            ],
            [
              [
                6
              ],
              "-21699876537/100000000000"
            ],
            [
              [
                5,
                12
              ],
              "-40299876537/100000000000"
            ],
            [
              [
                2,
                12
              ],
              "40299876537/100000000000"
            ],
            [
              [
                11
              ],
              "40299876537/100000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3404
          }
        },
        "2240": {
          "name": "LINEAR_3425",
          "terms": [
            [
              [
                12
              ],
              "-30999876537/100000000000"
            ],
            [
              [
                2,
                12
              ],
              "93/1000"
            ],
            [
              [
                3,
                11
              ],
              "30999876537/100000000000"
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
              "21699876537/100000000000"
            ],
            [
              [
                3,
                6
              ],
              "-21699876537/100000000000"
            ],
            [
              [
                8,
                11
              ],
              "-21699876537/100000000000"
            ],
            [
              [
                8
              ],
              "21699876537/100000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3425
          }
        },
        "2293": {
          "name": "LINEAR_3478",
          "terms": [
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                2,
                7
              ],
              "-115106895931/250000000000"
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
                2,
                12
              ],
              "138356895931/250000000000"
            ],
            [
              [
                7,
                11
              ],
              "138356895931/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3478
          }
        },
        "2423": {
          "name": "LINEAR_3608",
          "terms": [
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                2,
                7
              ],
              "-416172311/500000000"
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
                2,
                12
              ],
              "462672311/500000000"
            ],
            [
              [
                7,
                11
              ],
              "462672311/500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3608
          }
        },
        "2572": {
          "name": "LINEAR_3757",
          "terms": [
            [
              [
                5,
                7
              ],
              "770327/1000000"
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
                2
              ],
              "-93/1000"
            ],
            [
              [
                5,
                10
              ],
              "-863327/1000000"
            ],
            [
              [
                7,
                9
              ],
              "-863327/1000000"
            ],
            [
              [
                9
              ],
              "863327/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3757
          }
        },
        "2720": {
          "name": "LINEAR_3905",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                2
              ],
              "-427675179813/1000000000000"
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
                0,
                9
              ],
              "-93/1000"
            ],
            [
              [
                2,
                12
              ],
              "613675179813/1000000000000"
            ],
            [
              [
                0,
                11
              ],
              "613675179813/1000000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3905
          }
        },
        "2730": {
          "name": "LINEAR_3915",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
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
              "613675179813/1000000000000"
            ],
            [
              [
                1,
                12
              ],
              "-613675179813/1000000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3915
          }
        }
      },
      "coordinate": {
        "low": [
          "40417/200000",
          "48217/250000",
          "411461/500000",
          "298567/1000000",
          "398927/500000",
          "675307/1000000",
          "20289/100000",
          "890343/1000000",
          "120717/250000",
          "213133/500000",
          "54201/62500",
          "569689/1000000",
          "13539/50000"
        ],
        "high": [
          "43753/200000",
          "208787/1000000",
          "835283/1000000",
          "39009/125000",
          "52329/62500",
          "835283/1000000",
          "114861/500000",
          "240957/250000",
          "265077/500000",
          "557721/1000000",
          "885527/1000000",
          "41299/62500",
          "369339/1000000"
        ],
        "steps": [
          {
            "factor": 8,
            "target": "b",
            "old": [
              "4329/40000",
              "106747/250000"
            ],
            "lines": [
              [
                "137173/250000",
                "-93/1000"
              ],
              [
                "348663/1000000",
                "-93/1000"
              ],
              [
                "858839/1000000",
                "-93/1000"
              ],
              [
                "65881/100000",
                "-93/1000"
              ]
            ],
            "raw": [
              "93000/858839",
              "106747/250000"
            ],
            "new": [
              "21657/200000",
              "106747/250000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "401373/500000",
              "863327/1000000"
            ],
            "lines": [
              [
                "-451377/1000000",
                "358377/1000000"
              ],
              [
                "-246159/1000000",
                "153159/1000000"
              ],
              [
                "-167131/250000",
                "143881/250000"
              ],
              [
                "-231653/500000",
                "185153/500000"
              ]
            ],
            "raw": [
              "401373/500000",
              "143881/167131"
            ],
            "new": [
              "401373/500000",
              "107611/125000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "59619/250000",
              "221847/500000"
            ],
            "lines": [
              [
                "-98627/500000",
                "21538131831/500000000000"
              ],
              [
                "-17389/125000",
                "370853817/125000000000"
              ],
              [
                "-98627/500000",
                "42954689/500000000"
              ],
              [
                "-17389/125000",
                "4146823/125000000"
              ]
            ],
            "raw": [
              "59619/250000",
              "42954689/98627000"
            ],
            "new": [
              "59619/250000",
              "435527/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "689853/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "98627/500000",
                "-17505043113/125000000000"
              ],
              [
                "17389/125000",
                "-3942964791/31250000000"
              ],
              [
                "98627/500000",
                "-89454721429/500000000000"
              ],
              [
                "17389/125000",
                "-19198379003/125000000000"
              ]
            ],
            "raw": [
              "17505043113/24656750000",
              "907/1000"
            ],
            "new": [
              "709949/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 57,
            "target": "f",
            "old": [
              "617/1000",
              "863327/1000000"
            ],
            "lines": [
              [
                "709949/1000000",
                "-230006359977/500000000000"
              ],
              [
                "709949/1000000",
                "-55393571839/125000000000"
              ],
              [
                "907/1000",
                "-309097311/500000000"
              ],
              [
                "907/1000",
                "-76598427/125000000"
              ]
            ],
            "raw": [
              "55393571839/88743625000",
              "863327/1000000"
            ],
            "new": [
              "624197/1000000",
              "863327/1000000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "624197/1000000",
              "863327/1000000"
            ],
            "lines": [
              [
                "-471473/1000000",
                "378473/1000000"
              ],
              [
                "-137211/500000",
                "90711/500000"
              ],
              [
                "-167131/250000",
                "143881/250000"
              ]
            ],
            "raw": [
              "624197/1000000",
              "143881/167131"
            ],
            "new": [
              "624197/1000000",
              "107611/125000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "59619/250000",
              "435527/1000000"
            ],
            "lines": [
              [
                "319217/500000",
                "-27695250281/125000000000"
              ],
              [
                "10884/15625",
                "-7452882967/31250000000"
              ],
              [
                "86467/250000",
                "-27695250281/125000000000"
              ],
              [
                "40401/100000",
                "-7452882967/31250000000"
              ],
              [
                "319217/500000",
                "-79635284913/500000000000"
              ],
              [
                "10884/15625",
                "-24320207391/125000000000"
              ],
              [
                "86467/250000",
                "-79635284913/500000000000"
              ],
              [
                "40401/100000",
                "-24320207391/125000000000"
              ]
            ],
            "raw": [
              "79635284913/319217000000",
              "435527/1000000"
            ],
            "new": [
              "24947/100000",
              "435527/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "g",
            "old": [
              "20539/125000",
              "228439/500000"
            ],
            "lines": [
              [
                "-24947/100000",
                "-5325239407/250000000000"
              ],
              [
                "-24947/100000",
                "-1482907849/62500000000"
              ],
              [
                "-435527/1000000",
                "64027777447/500000000000"
              ],
              [
                "-435527/1000000",
                "17055964129/125000000000"
              ],
              [
                "-24947/100000",
                "20495237397/500000000000"
              ],
              [
                "-24947/100000",
                "2525508779/125000000000"
              ],
              [
                "-435527/1000000",
                "47586746829/250000000000"
              ],
              [
                "-435527/1000000",
                "11273644303/62500000000"
              ]
            ],
            "raw": [
              "20539/125000",
              "47586746829/108881750000"
            ],
            "new": [
              "20539/125000",
              "8741/20000"
            ]
          },
          {
            "factor": 86,
            "target": "b",
            "old": [
              "21657/200000",
              "106747/250000"
            ],
            "lines": [
              [
                "87297/125000",
                "-234874624171/1000000000000"
              ],
              [
                "498347/1000000",
                "-17234775909/100000000000"
              ],
              [
                "87297/125000",
                "-94593439197/500000000000"
              ],
              [
                "498347/1000000",
                "-3095961363/50000000000"
              ],
              [
                "751117/1000000",
                "-234874624171/1000000000000"
              ],
              [
                "34443/62500",
                "-17234775909/100000000000"
              ],
              [
                "751117/1000000",
                "-94593439197/500000000000"
              ],
              [
                "34443/62500",
                "-3095961363/50000000000"
              ]
            ],
            "raw": [
              "343995707/3061600000",
              "106747/250000"
            ],
            "new": [
              "56179/500000",
              "106747/250000"
            ]
          },
          {
            "factor": 94,
            "target": "e",
            "old": [
              "709949/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-38951/125000",
                "278910476789/1000000000000"
              ],
              [
                "-548299/1000000",
                "59702666107/125000000000"
              ],
              [
                "12049/1000000",
                "-44746523211/1000000000000"
              ],
              [
                "-112321/500000",
                "19245541107/125000000000"
              ],
              [
                "-38951/125000",
                "129545125383/500000000000"
              ],
              [
                "-548299/1000000",
                "29392776429/62500000000"
              ],
              [
                "12049/1000000",
                "-32283374617/500000000000"
              ],
              [
                "-112321/500000",
                "9164213929/62500000000"
              ]
            ],
            "raw": [
              "709949/1000000",
              "278910476789/311608000000"
            ],
            "new": [
              "709949/1000000",
              "895069/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "312589/1000000",
              "318123/500000"
            ],
            "lines": [
              [
                "-290051/1000000",
                "37087860209/250000000000"
              ],
              [
                "-104931/1000000",
                "8200023049/250000000000"
              ],
              [
                "-290051/1000000",
                "5594492317/31250000000"
              ],
              [
                "-104931/1000000",
                "614255237/31250000000"
              ],
              [
                "-290051/1000000",
                "128531214813/1000000000000"
              ],
              [
                "-104931/1000000",
                "12979866173/1000000000000"
              ],
              [
                "-290051/1000000",
                "21460856019/125000000000"
              ],
              [
                "-104931/1000000",
                "1539907699/125000000000"
              ]
            ],
            "raw": [
              "312589/1000000",
              "5594492317/9064093750"
            ],
            "new": [
              "312589/1000000",
              "123443/200000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "839537/1000000",
              "446139/500000"
            ],
            "lines": [
              [
                "-624197/1000000",
                "54319089203/125000000000"
              ],
              [
                "-107611/125000",
                "597834710047/1000000000000"
              ],
              [
                "-624197/1000000",
                "531197/1000000"
              ],
              [
                "-107611/125000",
                "47993/62500"
              ],
              [
                "-624197/1000000",
                "264515776823/500000000000"
              ],
              [
                "-107611/125000",
                "692313550069/1000000000000"
              ]
            ],
            "raw": [
              "839537/1000000",
              "95986/107611"
            ],
            "new": [
              "839537/1000000",
              "891973/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "432137/1000000",
              "10987/15625"
            ],
            "lines": [
              [
                "-839537/1000000",
                "118141049211/250000000000"
              ],
              [
                "-839537/1000000",
                "2034086839/4000000000"
              ],
              [
                "-839537/1000000",
                "67489397211/125000000000"
              ],
              [
                "-839537/1000000",
                "287936345297/500000000000"
              ],
              [
                "-891973/1000000",
                "5146569861/10000000000"
              ],
              [
                "-891973/1000000",
                "276831616459/500000000000"
              ],
              [
                "-891973/1000000",
                "18187748967/31250000000"
              ],
              [
                "-891973/1000000",
                "310507106881/500000000000"
              ],
              [
                "-839537/1000000",
                "4216917601/12500000000"
              ],
              [
                "-839537/1000000",
                "178636167001/500000000000"
              ],
              [
                "-839537/1000000",
                "122184020069/250000000000"
              ],
              [
                "-839537/1000000",
                "254327503099/500000000000"
              ],
              [
                "-891973/1000000",
                "47430774667/125000000000"
              ],
              [
                "-891973/1000000",
                "40241385717/100000000000"
              ],
              [
                "-891973/1000000",
                "132707217383/250000000000"
              ],
              [
                "-891973/1000000",
                "276898264683/500000000000"
              ]
            ],
            "raw": [
              "432137/1000000",
              "310507106881/445986500000"
            ],
            "new": [
              "432137/1000000",
              "348113/500000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "72797/250000",
              "606981/1000000"
            ],
            "lines": [
              [
                "432137/1000000",
                "-167134842153/1000000000000"
              ],
              [
                "432137/1000000",
                "-110353804539/500000000000"
              ],
              [
                "432137/1000000",
                "-188935608707/1000000000000"
              ],
              [
                "432137/1000000",
                "-18795286623/100000000000"
              ],
              [
                "348113/500000",
                "-102206954741/500000000000"
              ],
              [
                "348113/500000",
                "-77703033747/250000000000"
              ],
              [
                "348113/500000",
                "-56553669009/250000000000"
              ],
              [
                "348113/500000",
                "-13902869607/50000000000"
              ],
              [
                "432137/1000000",
                "-212460635977/1000000000000"
              ],
              [
                "432137/1000000",
                "-133016701451/500000000000"
              ],
              [
                "432137/1000000",
                "-309496725307/1000000000000"
              ],
              [
                "432137/1000000",
                "-30851398283/100000000000"
              ],
              [
                "348113/500000",
                "-124869851653/500000000000"
              ],
              [
                "348113/500000",
                "-89034482203/250000000000"
              ],
              [
                "348113/500000",
                "-86693948159/250000000000"
              ],
              [
                "348113/500000",
                "-19930925437/50000000000"
              ]
            ],
            "raw": [
              "102206954741/348113000000",
              "606981/1000000"
            ],
            "new": [
              "146801/500000",
              "606981/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "110547/500000",
              "248473/500000"
            ],
            "lines": [
              [
                "-104461/125000",
                "35135003819/250000000000"
              ],
              [
                "-104461/125000",
                "190370731301/1000000000000"
              ],
              [
                "-11259/20000",
                "4531254151/62500000000"
              ],
              [
                "-11259/20000",
                "572687747/8000000000"
              ],
              [
                "-104461/125000",
                "318496354353/1000000000000"
              ],
              [
                "-104461/125000",
                "184163535189/500000000000"
              ],
              [
                "-11259/20000",
                "250456405493/1000000000000"
              ],
              [
                "-11259/20000",
                "62385576863/250000000000"
              ],
              [
                "-104461/125000",
                "16110654941/125000000000"
              ],
              [
                "-104461/125000",
                "113925781313/500000000000"
              ],
              [
                "-11259/20000",
                "15211322667/250000000000"
              ],
              [
                "-11259/20000",
                "1090667997/10000000000"
              ],
              [
                "-104461/125000",
                "112040815937/500000000000"
              ],
              [
                "-104461/125000",
                "80761988743/250000000000"
              ],
              [
                "-11259/20000",
                "78020841507/500000000000"
              ],
              [
                "-11259/20000",
                "102131596023/500000000000"
              ]
            ],
            "raw": [
              "110547/500000",
              "250456405493/562950000000"
            ],
            "new": [
              "110547/500000",
              "4449/10000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "141161/1000000",
              "34119/100000"
            ],
            "lines": [
              [
                "-490157/1000000",
                "-9457515699/500000000000"
              ],
              [
                "-548299/1000000",
                "3737166107/125000000000"
              ],
              [
                "-185531/1000000",
                "-9457515699/500000000000"
              ],
              [
                "-243673/1000000",
                "3737166107/125000000000"
              ],
              [
                "-490157/1000000",
                "11588878929/500000000000"
              ],
              [
                "-548299/1000000",
                "9379856503/125000000000"
              ],
              [
                "-185531/1000000",
                "11588878929/500000000000"
              ],
              [
                "-243673/1000000",
                "9379856503/125000000000"
              ]
            ],
            "raw": [
              "141161/1000000",
              "9379856503/30459125000"
            ],
            "new": [
              "141161/1000000",
              "307949/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "401373/500000",
              "107611/125000"
            ],
            "lines": [
              [
                "87297/125000",
                "-648724624171/1000000000000"
              ],
              [
                "132897/250000",
                "-596588530039/1000000000000"
              ],
              [
                "87297/125000",
                "-121144662677/200000000000"
              ],
              [
                "132897/250000",
                "-100555851593/200000000000"
              ],
              [
                "187703/250000",
                "-648724624171/1000000000000"
              ],
              [
                "73003/125000",
                "-596588530039/1000000000000"
              ],
              [
                "187703/250000",
                "-121144662677/200000000000"
              ],
              [
                "73003/125000",
                "-100555851593/200000000000"
              ]
            ],
            "raw": [
              "121144662677/150162400000",
              "107611/125000"
            ],
            "new": [
              "806757/1000000",
              "107611/125000"
            ]
          },
          {
            "factor": 144,
            "target": "x",
            "old": [
              "312589/1000000",
              "123443/200000"
            ],
            "lines": [
              [
                "141161/1000000",
                "-16178784171/125000000000"
              ],
              [
                "307949/1000000",
                "-65996914971/250000000000"
              ],
              [
                "141161/1000000",
                "-1431663783/15625000000"
              ],
              [
                "307949/1000000",
                "-7350383433/31250000000"
              ],
              [
                "141161/1000000",
                "-21781790829/250000000000"
              ],
              [
                "307949/1000000",
                "-27710568729/125000000000"
              ],
              [
                "141161/1000000",
                "-1452654967/31250000000"
              ],
              [
                "307949/1000000",
                "-2969855417/15625000000"
              ]
            ],
            "raw": [
              "1452654967/4411281250",
              "123443/200000"
            ],
            "new": [
              "41163/125000",
              "123443/200000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "839537/1000000",
              "891973/1000000"
            ],
            "lines": [
              [
                "806757/1000000",
                "-760247742933/1000000000000"
              ],
              [
                "806757/1000000",
                "-839881173897/1000000000000"
              ],
              [
                "107611/125000",
                "-2999566129/3906250000"
              ],
              [
                "107611/125000",
                "-3345901411/3906250000"
              ],
              [
                "806757/1000000",
                "-359802969131/500000000000"
              ],
              [
                "806757/1000000",
                "-375609634679/500000000000"
              ],
              [
                "107611/125000",
                "-727247124353/1000000000000"
              ],
              [
                "107611/125000",
                "-767888856677/1000000000000"
              ]
            ],
            "raw": [
              "727247124353/860888000000",
              "891973/1000000"
            ],
            "new": [
              "844763/1000000",
              "891973/1000000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "110547/500000",
              "4449/10000"
            ],
            "lines": [
              [
                "806757/1000000",
                "-11384386691/50000000000"
              ],
              [
                "806757/1000000",
                "-14508492719/50000000000"
              ],
              [
                "107611/125000",
                "-235328919911/1000000000000"
              ],
              [
                "107611/125000",
                "-306839441699/1000000000000"
              ],
              [
                "806757/1000000",
                "-190408666491/1000000000000"
              ],
              [
                "806757/1000000",
                "-208843910919/1000000000000"
              ],
              [
                "107611/125000",
                "-99024926291/500000000000"
              ],
              [
                "107611/125000",
                "-112756749119/500000000000"
              ]
            ],
            "raw": [
              "99024926291/430444000000",
              "4449/10000"
            ],
            "new": [
              "57513/250000",
              "4449/10000"
            ]
          },
          {
            "factor": 218,
            "target": "h",
            "old": [
              "689853/1000000",
              "1/1"
            ],
            "lines": [
              [
                "1/1",
                "-709949/1000000"
              ],
              [
                "1/1",
                "-895069/1000000"
              ]
            ],
            "raw": [
              "709949/1000000",
              "1/1"
            ],
            "new": [
              "709949/1000000",
              "1/1"
            ]
          },
          {
            "factor": 228,
            "target": "b",
            "old": [
              "56179/500000",
              "106747/250000"
            ],
            "lines": [
              [
                "-709949/1000000",
                "113882624877/1000000000000"
              ],
              [
                "-709949/1000000",
                "248440011393/1000000000000"
              ],
              [
                "-709949/1000000",
                "15190476371/125000000000"
              ],
              [
                "-709949/1000000",
                "33138699839/125000000000"
              ],
              [
                "-1/1",
                "113882624877/1000000000000"
              ],
              [
                "-1/1",
                "248440011393/1000000000000"
              ],
              [
                "-1/1",
                "15190476371/125000000000"
              ],
              [
                "-1/1",
                "33138699839/125000000000"
              ]
            ],
            "raw": [
              "56179/500000",
              "33138699839/88743625000"
            ],
            "new": [
              "56179/500000",
              "373421/1000000"
            ]
          },
          {
            "factor": 230,
            "target": "a",
            "old": [
              "141161/1000000",
              "307949/1000000"
            ],
            "lines": [
              [
                "318404925393/1000000000000",
                "-57957687/1000000000"
              ],
              [
                "43251121839/125000000000",
                "-57416377/1000000000"
              ],
              [
                "690507/1250000",
                "-8493243/100000000"
              ],
              [
                "372319/625000",
                "-1054889/12500000"
              ]
            ],
            "raw": [
              "1054889/7446380",
              "307949/1000000"
            ],
            "new": [
              "4427/31250",
              "307949/1000000"
            ]
          },
          {
            "factor": 316,
            "target": "u",
            "old": [
              "432137/1000000",
              "348113/500000"
            ],
            "lines": [
              [
                "844763/1000000",
                "-58521927881/125000000000"
              ],
              [
                "844763/1000000",
                "-216050278719/500000000000"
              ],
              [
                "844763/1000000",
                "-111275146651/250000000000"
              ],
              [
                "844763/1000000",
                "-452436581949/1000000000000"
              ],
              [
                "844763/1000000",
                "-123405825129/250000000000"
              ],
              [
                "844763/1000000",
                "-409673154271/1000000000000"
              ],
              [
                "844763/1000000",
                "-58818558009/125000000000"
              ],
              [
                "844763/1000000",
                "-215004589391/500000000000"
              ],
              [
                "891973/1000000",
                "-58521927881/125000000000"
              ],
              [
                "891973/1000000",
                "-216050278719/500000000000"
              ],
              [
                "891973/1000000",
                "-111275146651/250000000000"
              ],
              [
                "891973/1000000",
                "-452436581949/1000000000000"
              ],
              [
                "891973/1000000",
                "-123405825129/250000000000"
              ],
              [
                "891973/1000000",
                "-409673154271/1000000000000"
              ],
              [
                "891973/1000000",
                "-58818558009/125000000000"
              ],
              [
                "891973/1000000",
                "-215004589391/500000000000"
              ],
              [
                "844763/1000000",
                "-64348229657/125000000000"
              ],
              [
                "844763/1000000",
                "-239355485823/500000000000"
              ],
              [
                "844763/1000000",
                "-108905534347/250000000000"
              ],
              [
                "844763/1000000",
                "-442958132733/1000000000000"
              ],
              [
                "844763/1000000",
                "-150522704313/250000000000"
              ],
              [
                "844763/1000000",
                "-518140671007/1000000000000"
              ],
              [
                "844763/1000000",
                "-65365889673/125000000000"
              ],
              [
                "844763/1000000",
                "-241193916047/500000000000"
              ],
              [
                "891973/1000000",
                "-64348229657/125000000000"
              ],
              [
                "891973/1000000",
                "-239355485823/500000000000"
              ],
              [
                "891973/1000000",
                "-108905534347/250000000000"
              ],
              [
                "891973/1000000",
                "-442958132733/1000000000000"
              ],
              [
                "891973/1000000",
                "-150522704313/250000000000"
              ],
              [
                "891973/1000000",
                "-518140671007/1000000000000"
              ],
              [
                "891973/1000000",
                "-65365889673/125000000000"
              ],
              [
                "891973/1000000",
                "-241193916047/500000000000"
              ]
            ],
            "raw": [
              "409673154271/891973000000",
              "348113/500000"
            ],
            "new": [
              "57411/125000",
              "348113/500000"
            ]
          },
          {
            "factor": 1417,
            "target": "z",
            "old": [
              "146801/500000",
              "606981/1000000"
            ],
            "lines": [
              [
                "-147654541573/200000000000",
                "1065387428706024395011/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1248995378316327154301/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1063691443916968145011/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1249915359527755279301/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1022166152932294199953/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1205774102542596959243/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1017543152560641074953/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1203767068171428209243/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18131562833292448379787/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38790348074151790510309/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18104427076667548379787/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38819787472917490510309/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38626395970886706600627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "20576809189226800175681/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38478459958993806600627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "20544696639288100175681/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "32955540955843210406643/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "81169072422341446746701/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "32901269442593410406643/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "81227951219872846746701/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "59220831459932250803403/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37239410985293638368409/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "58924959436146450803403/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37175185885416238368409/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "7025253780767065305173/20000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "15762812871680017978411/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "7014399478117105305173/20000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "15774588631186297978411/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "14210997922807767041533/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "7961651616476827204799/20000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "14151823518050607041533/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "7948806596501347204799/20000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1119424099138232676261/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1303032048748535435551/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1117728114349176426261/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1303952029959963560551/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1076202823364502481203/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1259810772974805240493/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1071579822992849356203/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1257803738603636490493/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18996149560207780879787/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "40519521527982455510309/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18969013803582880879787/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "40548960926748155510309/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "40355569424717371600627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "21441395916142132675681/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "40207633412824471600627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "21409283366203432675681/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "34684714409673875406643/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "84627419330002776746701/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "34630442896424075406643/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "84686298127534176746701/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "62679178367593580803403/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38968584439124303368409/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "62383306343807780803403/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38904359339246903368409/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "7371088471533198305173/20000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "16454482253212283978411/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "7360234168883238305173/20000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "16466258012718563978411/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "14902667304340033041533/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8307486307242960204799/20000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "14843492899582873041533/40000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8294641287267480204799/20000000000000000000000"
              ]
            ],
            "raw": [
              "146801/500000",
              "21441395916142132675681/36913635393250000000000"
            ],
            "new": [
              "146801/500000",
              "290427/500000"
            ]
          },
          {
            "factor": 1617,
            "target": "g",
            "old": [
              "20539/125000",
              "8741/20000"
            ],
            "lines": [
              [
                "16382460911661501/40000000000000000",
                "-1756359692463/25000000000000"
              ],
              [
                "28972035538893/100000000000000",
                "-3106084959/62500000000"
              ],
              [
                "3866253279899139/6250000000000000",
                "-414500083857/3906250000000"
              ],
              [
                "99751871476250943/200000000000000000",
                "-10694374139109/125000000000000"
              ],
              [
                "16382460911661501/40000000000000000",
                "-3418825177743/40000000000000"
              ],
              [
                "28972035538893/100000000000000",
                "-6046119999/100000000000"
              ],
              [
                "3866253279899139/6250000000000000",
                "-806841177777/6250000000000"
              ],
              [
                "99751871476250943/200000000000000000",
                "-20817031798149/200000000000000"
              ]
            ],
            "raw": [
              "8241684800/48046493431",
              "8741/20000"
            ],
            "new": [
              "34307/200000",
              "8741/20000"
            ]
          },
          {
            "factor": 2217,
            "target": "u",
            "old": [
              "57411/125000",
              "348113/500000"
            ],
            "lines": [
              [
                "28610857047566613/100000000000000000",
                "-2936770006396129861581/20000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-3001972491862867311951/20000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-2869895170493269861581/20000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-2953830555688627311951/20000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-3696692361083901359661/20000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-3780533405689838810031/20000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-3629817525181041359661/20000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-3732391469515598810031/20000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-93871612592471492793/500000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-382006698916559716209/2000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-92199741694899992793/500000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-377192505299135716209/2000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-118202647960114451553/500000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-481194696301051551249/2000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-116530777062542951553/500000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-476380502683627551249/2000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-13479302075621222239173/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-14142731048059736815467/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-13144927896106922239173/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-13902021367188536815467/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-17278913849060079729573/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-18035535617194594305867/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-16944539669545779729573/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-17794825936323394305867/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-4392443640533717872467/25000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-9116601767286693033081/50000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-4308850095655142872467/25000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-8996246926851093033081/50000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-5608995408915865810467/25000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-11596301701898988909081/50000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-5525401864037290810467/25000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-11475946861463388909081/50000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-16357015150238810670273/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-16214342548793020617867/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-16022640970724510670273/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-15973632867921820617867/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-20156626923677668160673/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-20107147117927878108267/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-19822252744163368160673/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-19866437437056678108267/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-2555935954594057490121/12500000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-10152407517653334934281/50000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-2514139182154769990121/12500000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-10032052677217734934281/50000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-3164211838785131459121/12500000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-12632107452265630810281/50000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-3122415066345843959121/12500000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-12511752611830030810281/50000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-15152467193879383601541/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-15347211137538420873579/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-14818093014365083601541/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-15106501456667220873579/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-18952078967318241091941/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-19240015706673278363979/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-18617704787803941091941/100000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-18999306025802078363979/100000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-4810734920098258213059/25000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-9718841812026035062137/50000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-4727141375219683213059/25000000000000000000000"
              ],
              [
                "28610857047566613/100000000000000000",
                "-9598486971590435062137/50000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-6027286688480406151059/25000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-12198541746638330938137/50000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-5943693143601831151059/25000000000000000000000"
              ],
              [
                "36071170192096053/100000000000000000",
                "-12078186906202730938137/50000000000000000000000"
              ]
            ],
            "raw": [
              "4381642632035640746391/9536952349188871000000",
              "348113/500000"
            ],
            "new": [
              "229719/500000",
              "348113/500000"
            ]
          },
          {
            "factor": 2219,
            "target": "u",
            "old": [
              "229719/500000",
              "348113/500000"
            ],
            "lines": [
              [
                "40299876537/100000000000",
                "-1276204220545193091/6250000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-417825938747801534157/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-1295947286986193091/6250000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-426017009981783534157/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-411130346262146154963/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-4205709344354859/20000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-409257056289284154963/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-3272613780930580557/12500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-533058793122232634157/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-3312099913812580557/12500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-541249864356214634157/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-526363200636577254963/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-535803788809917/2000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-524489910663715254963/2000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-8420790933335095299/39062500000000000000"
              ],
              [
                "40299876537/100000000000",
                "-11183335371554829270867/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-8544185098591345299/39062500000000000000"
              ],
              [
                "40299876537/100000000000",
                "-11388112152404379270867/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10109550384001240211853/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10062718134679690211853/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-85371460962685621767/312500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-14064156730915606770867/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-86358614284735621767/312500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-14268933511765156770867/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-12990371743362017711853/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-12943539494040467711853/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-29435311782508179771/156250000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-9420971960346372500517/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-29928888443533179771/156250000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-9625748741195922500517/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10512601170943392526203/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10465768921621842526203/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-76875757061021218917/312500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-12301793319707150000517/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-77862910383071218917/312500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-12506570100556700000517/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-13393422530304170026203/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-13346590280982620026203/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-7803342500554683423/39062500000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10158658863206163417459/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-7926736665810933423/39062500000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10363435644055713417459/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10343892898390978863981/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-10297060649069428863981/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-80431873500442326759/312500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-13039480222566940917459/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-81419026822492326759/312500000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-13244257003416490917459/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-13224714257751756363981/50000000000000000000000"
              ],
              [
                "40299876537/100000000000",
                "-13177882008430206363981/50000000000000000000000"
              ]
            ],
            "raw": [
              "9811770594169393257/20989519029687500000",
              "348113/500000"
            ],
            "new": [
              "23373/50000",
              "348113/500000"
            ]
          },
          {
            "factor": 2240,
            "target": "v",
            "old": [
              "57513/250000",
              "4449/10000"
            ],
            "lines": [
              [
                "-3954949623045141/20000000000000000",
                "420766749990710559171/10000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "408207973660610559171/10000000000000000000000"
              ],
              [
                "-3954949623045141/20000000000000000",
                "963068680972149302007/20000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "919218228583329302007/20000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "138515524543381963293/5000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "132236136378331963293/5000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "46119848730082076511/2000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "41734803491200076511/2000000000000000000000"
              ],
              [
                "-3954949623045141/20000000000000000",
                "752716662111537337467/10000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "740157885781437337467/10000000000000000000000"
              ],
              [
                "-3954949623045141/20000000000000000",
                "1626968505213802858599/20000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "1583118052824982858599/20000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "304490480603795352441/5000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "298211092438745352441/5000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "562549155771237160851/10000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "540623929576827160851/10000000000000000000000"
              ],
              [
                "-3954949623045141/20000000000000000",
                "2259670527316472291283/50000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "2196876645665972291283/50000000000000000000000"
              ],
              [
                "-3954949623045141/20000000000000000",
                "1289296138017850264677/20000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "1245445685629030264677/20000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "770496011398369564179/25000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "739099070573119564179/25000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "39371297217326086389/1000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "37178774597885086389/1000000000000000000000"
              ],
              [
                "-3954949623045141/20000000000000000",
                "3206432766815777824671/50000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "3143638885165277824671/50000000000000000000000"
              ],
              [
                "-3954949623045141/20000000000000000",
                "8340005169087862390161/100000000000000000000000"
              ],
              [
                "-3854265963045141/20000000000000000",
                "8120752907143762390161/100000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "1243877131148022330873/25000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "1212480190322772330873/25000000000000000000000"
              ],
              [
                "-280262107930083/2000000000000000",
                "1457663550182804926419/25000000000000000000000"
              ],
              [
                "-270193741930083/2000000000000000",
                "1402850484696779926419/25000000000000000000000"
              ]
            ],
            "raw": [
              "57513/250000",
              "99403697479581784147/225161451608402500000"
            ],
            "new": [
              "57513/250000",
              "220739/500000"
            ]
          },
          {
            "factor": 2730,
            "target": "v",
            "old": [
              "57513/250000",
              "220739/500000"
            ],
            "lines": [
              [
                "426135431186967387/1000000000000000000",
                "-12550239075273/125000000000000"
              ],
              [
                "33240943464930771/125000000000000000",
                "-978988737009/15625000000000"
              ],
              [
                "45935428234542489/100000000000000000",
                "-1352857716531/12500000000000"
              ],
              [
                "299146398877903671/1000000000000000000",
                "-8810247986109/125000000000000"
              ],
              [
                "426135431186967387/1000000000000000000",
                "-119133147166641/1000000000000000"
              ],
              [
                "33240943464930771/125000000000000000",
                "-9293050800153/125000000000000"
              ],
              [
                "45935428234542489/100000000000000000",
                "-12842002170027/100000000000000"
              ],
              [
                "299146398877903671/1000000000000000000",
                "-83631280934853/1000000000000000"
              ],
              [
                "426135431186967387/1000000000000000000",
                "-51725346121827/500000000000000"
              ],
              [
                "33240943464930771/125000000000000000",
                "-4034865867291/62500000000000"
              ],
              [
                "45935428234542489/100000000000000000",
                "-5575753037169/50000000000000"
              ],
              [
                "299146398877903671/1000000000000000000",
                "-36311111188191/500000000000000"
              ],
              [
                "426135431186967387/1000000000000000000",
                "-122181926808111/1000000000000000"
              ],
              [
                "33240943464930771/125000000000000000",
                "-9530872638663/125000000000000"
              ],
              [
                "45935428234542489/100000000000000000",
                "-13170646512117/100000000000000"
              ],
              [
                "299146398877903671/1000000000000000000",
                "-85771519422363/1000000000000000"
              ]
            ],
            "raw": [
              "48196072000/204558393271",
              "220739/500000"
            ],
            "new": [
              "23561/100000",
              "220739/500000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "806757/1000000",
              "107611/125000"
            ],
            "lines": [
              [
                "-460479/1000000",
                "367479/1000000"
              ],
              [
                "-137211/500000",
                "90711/500000"
              ],
              [
                "-645599/1000000",
                "552599/1000000"
              ],
              [
                "-229771/500000",
                "183271/500000"
              ]
            ],
            "raw": [
              "806757/1000000",
              "552599/645599"
            ],
            "new": [
              "806757/1000000",
              "213987/250000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "24947/100000",
              "435527/1000000"
            ],
            "lines": [
              [
                "-193243/1000000",
                "44192674607/1000000000000"
              ],
              [
                "-36013/250000",
                "2317393337/250000000000"
              ],
              [
                "-193243/1000000",
                "79965818767/1000000000000"
              ],
              [
                "-36013/250000",
                "8984119897/250000000000"
              ]
            ],
            "raw": [
              "24947/100000",
              "79965818767/193243000000"
            ],
            "new": [
              "24947/100000",
              "41381/100000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "709949/1000000",
              "895069/1000000"
            ],
            "lines": [
              [
                "193243/1000000",
                "-14120833121/100000000000"
              ],
              [
                "36013/250000",
                "-3223416311/25000000000"
              ],
              [
                "193243/1000000",
                "-17296588583/100000000000"
              ],
              [
                "36013/250000",
                "-3815253953/25000000000"
              ]
            ],
            "raw": [
              "14120833121/19324300000",
              "895069/1000000"
            ],
            "new": [
              "730729/1000000",
              "895069/1000000"
            ]
          },
          {
            "factor": 57,
            "target": "f",
            "old": [
              "624197/1000000",
              "107611/125000"
            ],
            "lines": [
              [
                "730729/1000000",
                "-475613735853/1000000000000"
              ],
              [
                "730729/1000000",
                "-115592006523/250000000000"
              ],
              [
                "895069/1000000",
                "-608196181233/1000000000000"
              ],
              [
                "895069/1000000",
                "-150758630103/250000000000"
              ]
            ],
            "raw": [
              "115592006523/182682250000",
              "107611/125000"
            ],
            "new": [
              "158187/250000",
              "107611/125000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "158187/250000",
              "107611/125000"
            ],
            "lines": [
              [
                "-481259/1000000",
                "388259/1000000"
              ],
              [
                "-316919/1000000",
                "223919/1000000"
              ],
              [
                "-645599/1000000",
                "552599/1000000"
              ]
            ],
            "raw": [
              "158187/250000",
              "552599/645599"
            ],
            "new": [
              "158187/250000",
              "213987/250000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "24947/100000",
              "41381/100000"
            ],
            "lines": [
              [
                "317611/500000",
                "-111131734357/500000000000"
              ],
              [
                "684413/1000000",
                "-29588255587/125000000000"
              ],
              [
                "369707/1000000",
                "-111131734357/500000000000"
              ],
              [
                "209449/500000",
                "-29588255587/125000000000"
              ],
              [
                "317611/500000",
                "-83377015239/500000000000"
              ],
              [
                "684413/1000000",
                "-24415852449/125000000000"
              ],
              [
                "369707/1000000",
                "-83377015239/500000000000"
              ],
              [
                "209449/500000",
                "-24415852449/125000000000"
              ]
            ],
            "raw": [
              "11911002177/45373000000",
              "41381/100000"
            ],
            "new": [
              "16407/62500",
              "41381/100000"
            ]
          },
          {
            "factor": 74,
            "target": "g",
            "old": [
              "34307/200000",
              "8741/20000"
            ],
            "lines": [
              [
                "-16407/62500",
                "-1048007513/100000000000"
              ],
              [
                "-16407/62500",
                "-300235583/25000000000"
              ],
              [
                "-41381/100000",
                "6973790341/62500000000"
              ],
              [
                "-41381/100000",
                "1835840581/15625000000"
              ],
              [
                "-16407/62500",
                "22514681553/500000000000"
              ],
              [
                "-16407/62500",
                "3671225223/125000000000"
              ],
              [
                "-41381/100000",
                "41772520923/250000000000"
              ],
              [
                "-41381/100000",
                "9929563893/62500000000"
              ]
            ],
            "raw": [
              "34307/200000",
              "41772520923/103452500000"
            ],
            "new": [
              "34307/200000",
              "80757/200000"
            ]
          },
          {
            "factor": 86,
            "target": "b",
            "old": [
              "56179/500000",
              "373421/1000000"
            ],
            "lines": [
              [
                "703099/1000000",
                "-907615149/3906250000"
              ],
              [
                "268407/500000",
                "-22198895313/125000000000"
              ],
              [
                "703099/1000000",
                "-1197267839/6250000000"
              ],
              [
                "268407/500000",
                "-17785851593/200000000000"
              ],
              [
                "750309/1000000",
                "-907615149/3906250000"
              ],
              [
                "73003/125000",
                "-22198895313/125000000000"
              ],
              [
                "750309/1000000",
                "-1197267839/6250000000"
              ],
              [
                "73003/125000",
                "-17785851593/200000000000"
              ]
            ],
            "raw": [
              "17785851593/116804800000",
              "373421/1000000"
            ],
            "new": [
              "152269/1000000",
              "373421/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "e",
            "old": [
              "730729/1000000",
              "895069/1000000"
            ],
            "lines": [
              [
                "-75861/250000",
                "66863774681/250000000000"
              ],
              [
                "-131661/250000",
                "114001550081/250000000000"
              ],
              [
                "-15533/1000000",
                "-5113975319/250000000000"
              ],
              [
                "-238733/1000000",
                "42023800081/250000000000"
              ],
              [
                "-75861/250000",
                "62529282951/250000000000"
              ],
              [
                "-131661/250000",
                "112301376351/250000000000"
              ],
              [
                "-15533/1000000",
                "-9448467049/250000000000"
              ],
              [
                "-238733/1000000",
                "40323626351/250000000000"
              ]
            ],
            "raw": [
              "730729/1000000",
              "66863774681/75861000000"
            ],
            "new": [
              "730729/1000000",
              "881399/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "41163/125000",
              "123443/200000"
            ],
            "lines": [
              [
                "-269271/1000000",
                "16798973179/125000000000"
              ],
              [
                "-118601/1000000",
                "2440977767/62500000000"
              ],
              [
                "-269271/1000000",
                "19980521779/125000000000"
              ],
              [
                "-118601/1000000",
                "1929905567/62500000000"
              ],
              [
                "-269271/1000000",
                "7315863657/62500000000"
              ],
              [
                "-118601/1000000",
                "2714709669/125000000000"
              ],
              [
                "-269271/1000000",
                "9565217457/62500000000"
              ],
              [
                "-118601/1000000",
                "3009724269/125000000000"
              ]
            ],
            "raw": [
              "41163/125000",
              "19980521779/33658875000"
            ],
            "new": [
              "41163/125000",
              "593619/1000000"
            ]
          },
          {
            "factor": 96,
            "target": "h",
            "old": [
              "709949/1000000",
              "1/1"
            ],
            "lines": [
              [
                "75861/250000",
                "-74554524681/250000000000"
              ],
              [
                "131661/250000",
                "-121692300081/250000000000"
              ],
              [
                "39129/1000000",
                "-8475774681/250000000000"
              ],
              [
                "262329/1000000",
                "-55613550081/250000000000"
              ],
              [
                "75861/250000",
                "-82022532951/250000000000"
              ],
              [
                "131661/250000",
                "-131794626351/250000000000"
              ],
              [
                "39129/1000000",
                "-15943782951/250000000000"
              ],
              [
                "262329/1000000",
                "-65715876351/250000000000"
              ]
            ],
            "raw": [
              "18537850027/21860750000",
              "1/1"
            ],
            "new": [
              "211999/250000",
              "1/1"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "844763/1000000",
              "891973/1000000"
            ],
            "lines": [
              [
                "-158187/250000",
                "30851456139/62500000000"
              ],
              [
                "-213987/250000",
                "42681000339/62500000000"
              ],
              [
                "-158187/250000",
                "134937/250000"
              ],
              [
                "-213987/250000",
                "190737/250000"
              ],
              [
                "-158187/250000",
                "133450058871/250000000000"
              ],
              [
                "-213987/250000",
                "180768235671/250000000000"
              ]
            ],
            "raw": [
              "844763/1000000",
              "63579/71329"
            ],
            "new": [
              "844763/1000000",
              "891349/1000000"
            ]
          },
          {
            "factor": 100,
            "target": "x",
            "old": [
              "41163/125000",
              "593619/1000000"
            ],
            "lines": [
              [
                "211999/250000",
                "-334591245381/1000000000000"
              ],
              [
                "211999/250000",
                "-83687569971/250000000000"
              ],
              [
                "1/1",
                "-457221536409/1000000000000"
              ],
              [
                "1/1",
                "-116214449919/250000000000"
              ],
              [
                "211999/250000",
                "-297007663779/1000000000000"
              ],
              [
                "211999/250000",
                "-73718771589/250000000000"
              ],
              [
                "1/1",
                "-419637954807/1000000000000"
              ],
              [
                "1/1",
                "-106245651537/250000000000"
              ]
            ],
            "raw": [
              "73718771589/211999000000",
              "593619/1000000"
            ],
            "new": [
              "347731/1000000",
              "593619/1000000"
            ]
          },
          {
            "factor": 118,
            "target": "u",
            "old": [
              "23373/50000",
              "348113/500000"
            ],
            "lines": [
              [
                "211999/250000",
                "-293523346101/500000000000"
              ],
              [
                "211999/250000",
                "-77146321491/125000000000"
              ],
              [
                "1/1",
                "-70967698323/100000000000"
              ],
              [
                "1/1",
                "-18681952293/25000000000"
              ],
              [
                "211999/250000",
                "-210480621063/500000000000"
              ],
              [
                "211999/250000",
                "-55119783633/125000000000"
              ],
              [
                "1/1",
                "-271795766577/500000000000"
              ],
              [
                "1/1",
                "-71383223607/125000000000"
              ]
            ],
            "raw": [
              "210480621063/423998000000",
              "348113/500000"
            ],
            "new": [
              "248209/500000",
              "348113/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "248209/500000",
              "348113/500000"
            ],
            "lines": [
              [
                "-844763/1000000",
                "480367347731/1000000000000"
              ],
              [
                "-844763/1000000",
                "255166096477/500000000000"
              ],
              [
                "-844763/1000000",
                "538301019411/1000000000000"
              ],
              [
                "-844763/1000000",
                "284132932317/500000000000"
              ],
              [
                "-891349/1000000",
                "517950929333/1000000000000"
              ],
              [
                "-891349/1000000",
                "275103693241/500000000000"
              ],
              [
                "-891349/1000000",
                "575884601013/1000000000000"
              ],
              [
                "-891349/1000000",
                "304070529081/500000000000"
              ],
              [
                "-844763/1000000",
                "385868583163/1000000000000"
              ],
              [
                "-844763/1000000",
                "202853287799/500000000000"
              ],
              [
                "-844763/1000000",
                "494422725627/1000000000000"
              ],
              [
                "-844763/1000000",
                "257130359031/500000000000"
              ],
              [
                "-891349/1000000",
                "84690432953/200000000000"
              ],
              [
                "-891349/1000000",
                "222790884563/500000000000"
              ],
              [
                "-891349/1000000",
                "532006307229/1000000000000"
              ],
              [
                "-891349/1000000",
                "55413591159/100000000000"
              ]
            ],
            "raw": [
              "248209/500000",
              "304070529081/445674500000"
            ],
            "new": [
              "248209/500000",
              "682271/1000000"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "146801/500000",
              "290427/500000"
            ],
            "lines": [
              [
                "248209/500000",
                "-89719793331/500000000000"
              ],
              [
                "248209/500000",
                "-233462756317/1000000000000"
              ],
              [
                "248209/500000",
                "-100629272581/500000000000"
              ],
              [
                "248209/500000",
                "-216662023567/1000000000000"
              ],
              [
                "682271/1000000",
                "-102884133027/500000000000"
              ],
              [
                "682271/1000000",
                "-145348000907/500000000000"
              ],
              [
                "682271/1000000",
                "-113793612277/500000000000"
              ],
              [
                "682271/1000000",
                "-34236908633/125000000000"
              ],
              [
                "248209/500000",
                "-107376577021/500000000000"
              ],
              [
                "248209/500000",
                "-268776323697/1000000000000"
              ],
              [
                "248209/500000",
                "-142192477771/500000000000"
              ],
              [
                "248209/500000",
                "-299788433947/1000000000000"
              ],
              [
                "682271/1000000",
                "-120540916717/500000000000"
              ],
              [
                "682271/1000000",
                "-163004784597/500000000000"
              ],
              [
                "682271/1000000",
                "-155356817467/500000000000"
              ],
              [
                "682271/1000000",
                "-89255419861/250000000000"
              ]
            ],
            "raw": [
              "102884133027/341135500000",
              "290427/500000"
            ],
            "new": [
              "301593/1000000",
              "290427/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "23561/100000",
              "220739/500000"
            ],
            "lines": [
              [
                "-165693/200000",
                "72081246111/500000000000"
              ],
              [
                "-165693/200000",
                "48329160089/250000000000"
              ],
              [
                "-119243/200000",
                "41597040111/500000000000"
              ],
              [
                "-119243/200000",
                "6075579241/62500000000"
              ],
              [
                "-165693/200000",
                "71198326281/250000000000"
              ],
              [
                "-165693/200000",
                "166973726629/500000000000"
              ],
              [
                "-119243/200000",
                "55956223281/250000000000"
              ],
              [
                "-119243/200000",
                "118920040379/500000000000"
              ],
              [
                "-165693/200000",
                "136899171129/1000000000000"
              ],
              [
                "-165693/200000",
                "214172506457/1000000000000"
              ],
              [
                "-119243/200000",
                "75930759129/1000000000000"
              ],
              [
                "-119243/200000",
                "118065133957/1000000000000"
              ],
              [
                "-165693/200000",
                "112814244699/500000000000"
              ],
              [
                "-165693/200000",
                "151450912363/500000000000"
              ],
              [
                "-119243/200000",
                "82330038699/500000000000"
              ],
              [
                "-119243/200000",
                "103397226113/500000000000"
              ]
            ],
            "raw": [
              "23561/100000",
              "166973726629/414232500000"
            ],
            "new": [
              "23561/100000",
              "100773/250000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "4427/31250",
              "307949/1000000"
            ],
            "lines": [
              [
                "-229513/500000",
                "-11331536409/1000000000000"
              ],
              [
                "-508217/1000000",
                "7555800081/250000000000"
              ],
              [
                "-106569/500000",
                "-11331536409/1000000000000"
              ],
              [
                "-262329/1000000",
                "7555800081/250000000000"
              ],
              [
                "-229513/500000",
                "26252045193/1000000000000"
              ],
              [
                "-508217/1000000",
                "17524598463/250000000000"
              ],
              [
                "-106569/500000",
                "26252045193/1000000000000"
              ],
              [
                "-262329/1000000",
                "17524598463/250000000000"
              ]
            ],
            "raw": [
              "4427/31250",
              "5841532821/21860750000"
            ],
            "new": [
              "4427/31250",
              "16701/62500"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "806757/1000000",
              "213987/250000"
            ],
            "lines": [
              [
                "703099/1000000",
                "-20112157363/31250000000"
              ],
              [
                "577547/1000000",
                "-37495669569/62500000000"
              ],
              [
                "703099/1000000",
                "-19023611187/31250000000"
              ],
              [
                "577547/1000000",
                "-33389094081/62500000000"
              ],
              [
                "149937/200000",
                "-20112157363/31250000000"
              ],
              [
                "624133/1000000",
                "-37495669569/62500000000"
              ],
              [
                "149937/200000",
                "-19023611187/31250000000"
              ],
              [
                "624133/1000000",
                "-33389094081/62500000000"
              ]
            ],
            "raw": [
              "6341203729/7809218750",
              "213987/250000"
            ],
            "new": [
              "162403/200000",
              "213987/250000"
            ]
          },
          {
            "factor": 144,
            "target": "x",
            "old": [
              "347731/1000000",
              "593619/1000000"
            ],
            "lines": [
              [
                "4427/31250",
                "-24384613103/200000000000"
              ],
              [
                "16701/62500",
                "-44774634559/200000000000"
              ],
              [
                "4427/31250",
                "-22758454287/250000000000"
              ],
              [
                "16701/62500",
                "-49624950111/250000000000"
              ],
              [
                "4427/31250",
                "-3363781389/40000000000"
              ],
              [
                "16701/62500",
                "-37208928401/200000000000"
              ],
              [
                "4427/31250",
                "-2557931181/50000000000"
              ],
              [
                "16701/62500",
                "-39656151729/250000000000"
              ]
            ],
            "raw": [
              "2557931181/7083200000",
              "593619/1000000"
            ],
            "new": [
              "180563/500000",
              "593619/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "844763/1000000",
              "891349/1000000"
            ],
            "lines": [
              [
                "162403/200000",
                "-23647648103/31250000000"
              ],
              [
                "162403/200000",
                "-50833422189/62500000000"
              ],
              [
                "213987/250000",
                "-11921069747/15625000000"
              ],
              [
                "213987/250000",
                "-25783573611/31250000000"
              ],
              [
                "162403/200000",
                "-2827300199/3906250000"
              ],
              [
                "162403/200000",
                "-11737639149/15625000000"
              ],
              [
                "213987/250000",
                "-22812892983/31250000000"
              ],
              [
                "213987/250000",
                "-47684281629/62500000000"
              ]
            ],
            "raw": [
              "7604297661/8916125000",
              "891349/1000000"
            ],
            "new": [
              "85287/100000",
              "891349/1000000"
            ]
          },
          {
            "factor": 228,
            "target": "a",
            "old": [
              "4427/31250",
              "16701/62500"
            ],
            "lines": [
              [
                "162403/200000",
                "-32280875731/250000000000"
              ],
              [
                "162403/200000",
                "-79164878579/250000000000"
              ],
              [
                "213987/250000",
                "-32280875731/250000000000"
              ],
              [
                "213987/250000",
                "-79164878579/250000000000"
              ],
              [
                "162403/200000",
                "-152269/1000000"
              ],
              [
                "162403/200000",
                "-373421/1000000"
              ],
              [
                "213987/250000",
                "-152269/1000000"
              ],
              [
                "213987/250000",
                "-373421/1000000"
              ]
            ],
            "raw": [
              "32280875731/213987000000",
              "16701/62500"
            ],
            "new": [
              "75427/500000",
              "16701/62500"
            ]
          },
          {
            "factor": 228,
            "target": "b",
            "old": [
              "152269/1000000",
              "373421/1000000"
            ],
            "lines": [
              [
                "-211999/250000",
                "12249571081/100000000000"
              ],
              [
                "-211999/250000",
                "2712292503/12500000000"
              ],
              [
                "-211999/250000",
                "16140397449/125000000000"
              ],
              [
                "-211999/250000",
                "3573796887/15625000000"
              ],
              [
                "-1/1",
                "12249571081/100000000000"
              ],
              [
                "-1/1",
                "2712292503/12500000000"
              ],
              [
                "-1/1",
                "16140397449/125000000000"
              ],
              [
                "-1/1",
                "3573796887/15625000000"
              ]
            ],
            "raw": [
              "152269/1000000",
              "3573796887/13249937500"
            ],
            "new": [
              "152269/1000000",
              "134861/500000"
            ]
          },
          {
            "factor": 1417,
            "target": "z",
            "old": [
              "301593/1000000",
              "290427/500000"
            ],
            "lines": [
              [
                "-147654541573/200000000000",
                "34541040410097046687953/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2420737439718471834021/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "34495419530596846687953/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2420857561327071834021/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "16656640795253475755823/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37504040215905454168029/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "16602921921595275755823/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37444145293826854168029/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "36455571314590548386203/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2415696402928263434271/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "36409950435090348386203/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2415816524536863434271/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18911013023495040321573/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "40017597179251747205279/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18857294149836840321573/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "39957702257173147205279/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8397551831086946397143/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "302905127679269970363/781250000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8386146611211896397143/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "302920142880344970363/781250000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "3884257208324238400113/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9063926671298169454699/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "3870827489909688400113/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9048952940778519454699/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "17752369114420643643411/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1209099992321975681577/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "17729558674670543643411/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1209160053126275681577/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8895700530769259083101/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "19384631824269485428023/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8868841093940159083101/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "19354684363230185428023/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "35950421162690780187953/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2508823736755580177771/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "35904800283190580187953/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2508943858364180177771/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "17361331171550342505823/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38913420968499187668029/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "17307612297892142505823/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38853526046420587668029/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37864952067184281886203/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2503782699965371778021/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37819331187684081886203/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "2503902821573971778021/6250000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "19615703399791907071573/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "41426977931845480705279/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "19561984526133707071573/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "41367083009766880705279/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8749897019235379772143/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1255663659235634053327/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "8738491799360329772143/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "1255723720039934053327/3125000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4060429802398455087613/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9416271859446602829699/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4047000083983905087613/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9401298128926952829699/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18457059490717510393411/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "313285785210132463363/781250000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18434249050967410393411/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "313300800411207463363/781250000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9248045718917692458101/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "20089322200566352178023/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9221186282088592458101/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "20059374739527052178023/50000000000000000000000"
              ]
            ],
            "raw": [
              "301593/1000000",
              "2436881054814440041487/4342780634500000000000"
            ],
            "new": [
              "301593/1000000",
              "280567/500000"
            ]
          },
          {
            "factor": 1617,
            "target": "g",
            "old": [
              "34307/200000",
              "80757/200000"
            ],
            "lines": [
              [
                "50242842785211303/100000000000000000",
                "-22061880868989/250000000000000"
              ],
              [
                "4185666368228427/10000000000000000",
                "-1837946813001/25000000000000"
              ],
              [
                "61197731566439889/100000000000000000",
                "-26872226737707/250000000000000"
              ],
              [
                "6601444057939107/12500000000000000",
                "-2898726749841/31250000000000"
              ],
              [
                "50242842785211303/100000000000000000",
                "-51660511265757/500000000000000"
              ],
              [
                "4185666368228427/10000000000000000",
                "-4303770499113/50000000000000"
              ],
              [
                "61197731566439889/100000000000000000",
                "-62924506770891/500000000000000"
              ],
              [
                "6601444057939107/12500000000000000",
                "-6787712562033/62500000000000"
              ]
            ],
            "raw": [
              "8438981200/48046493431",
              "80757/200000"
            ],
            "new": [
              "175641/1000000",
              "80757/200000"
            ]
          },
          {
            "factor": 2088,
            "target": "g",
            "old": [
              "175641/1000000",
              "80757/200000"
            ],
            "lines": [
              [
                "-1065384371029797/2000000000000000",
                "1838128891564829874861/20000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "330736814269437316059/2500000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "1779079286628749874861/20000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "327506511903717316059/2500000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "628817231952907912377/5000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "735559376051649723939/5000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "614054830718887912377/5000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "729098771320209723939/5000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "117366212766343820799/1000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "3155089877917545069591/20000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "111127124984143820799/1000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "3063515308283865069591/20000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "377823514171098594183/2000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "2102601859052976594039/10000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "365345338606698594183/2000000000000000000000"
              ],
              [
                "-1065384371029797/2000000000000000",
                "2056814574236136594039/10000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "950211018628894249971/10000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "55124752066216996461/400000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "920686216160854249971/10000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "54607903687701796461/400000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "2577562073504590274589/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "1526290296680975095167/10000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "2518512468568510274589/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "1513369087218095095167/10000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "2409617401019835041061/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "3265432967072896364169/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "2284835645375835041061/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "3173858397439216364169/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "3840528287403944566911/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "134860837726915765083/625000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "3715746531759944566911/20000000000000000000000"
              ],
              [
                "-11134513979071119/20000000000000000",
                "131999132425863265083/625000000000000000000"
              ]
            ],
            "raw": [
              "175641/1000000",
              "700867286350992198013/1775640618382995000000"
            ],
            "new": [
              "175641/1000000",
              "394713/1000000"
            ]
          },
          {
            "factor": 2293,
            "target": "u",
            "old": [
              "248209/500000",
              "682271/1000000"
            ],
            "lines": [
              [
                "29331523580476069/62500000000000000",
                "-7746261606398638321249/25000000000000000000000"
              ],
              [
                "29331523580476069/62500000000000000",
                "-10073365694061380753121/31250000000000000000000"
              ],
              [
                "29331523580476069/62500000000000000",
                "-8031902377116388321249/25000000000000000000000"
              ],
              [
                "29331523580476069/62500000000000000",
                "-10449734428651130753121/31250000000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-1904085978104024950727/5000000000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-2477432282325732819783/6250000000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-1961214132247574950727/5000000000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-2552706029243682819783/6250000000000000000000"
              ],
              [
                "29331523580476069/62500000000000000",
                "-1466159232211433399309/6250000000000000000000"
              ],
              [
                "29331523580476069/62500000000000000",
                "-1898520330500571102861/7812500000000000000000"
              ],
              [
                "29331523580476069/62500000000000000",
                "-1537569424890870899309/6250000000000000000000"
              ],
              [
                "29331523580476069/62500000000000000",
                "-1992612514148008602861/7812500000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-3819402606483610014811/12500000000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-4953938519784783878619/15625000000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-3962222991842485014811/12500000000000000000000"
              ],
              [
                "138356895931/250000000000",
                "-5142122887079658878619/15625000000000000000000"
              ]
            ],
            "raw": [
              "1466159232211433399309/2933152358047606900000",
              "682271/1000000"
            ],
            "new": [
              "499857/1000000",
              "682271/1000000"
            ]
          },
          {
            "factor": 2423,
            "target": "u",
            "old": [
              "499857/1000000",
              "682271/1000000"
            ],
            "lines": [
              [
                "98086067259689/125000000000000",
                "-26507546005632051269/50000000000000000000"
              ],
              [
                "98086067259689/125000000000000",
                "-34660451469465685701/62500000000000000000"
              ],
              [
                "98086067259689/125000000000000",
                "-27076456300864551269/50000000000000000000"
              ],
              [
                "98086067259689/125000000000000",
                "-35410064514458185701/62500000000000000000"
              ],
              [
                "462672311/500000000",
                "-6470231959893801187/10000000000000000000"
              ],
              [
                "462672311/500000000",
                "-8462473623651009123/12500000000000000000"
              ],
              [
                "462672311/500000000",
                "-6584014018940301187/10000000000000000000"
              ],
              [
                "462672311/500000000",
                "-8612396232649509123/12500000000000000000"
              ],
              [
                "98086067259689/125000000000000",
                "-5053824977911205629/12500000000000000000"
              ],
              [
                "98086067259689/125000000000000",
                "-6592400440696278141/15625000000000000000"
              ],
              [
                "98086067259689/125000000000000",
                "-5196052551719330629/12500000000000000000"
              ],
              [
                "98086067259689/125000000000000",
                "-6779803701944403141/15625000000000000000"
              ],
              [
                "462672311/500000000",
                "-13029456852740888591/25000000000000000000"
              ],
              [
                "462672311/500000000",
                "-17010759205787236239/31250000000000000000"
              ],
              [
                "462672311/500000000",
                "-13313912000357138591/25000000000000000000"
              ],
              [
                "462672311/500000000",
                "-17385565728283486239/31250000000000000000"
              ]
            ],
            "raw": [
              "5053824977911205629/9808606725968900000",
              "682271/1000000"
            ],
            "new": [
              "515243/1000000",
              "682271/1000000"
            ]
          },
          {
            "factor": 2720,
            "target": "v",
            "old": [
              "23561/100000",
              "100773/250000"
            ],
            "lines": [
              [
                "99662690227170639/200000000000000000",
                "-17275116228429667918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2276972490408170296209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-14798467930643823744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-1971204009110276108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-18709984492127167918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2456331023370357796209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-16008467864709423744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-2122454000868476108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-17682834029560417918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2367249115445420296209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-15124642171548423744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-2043425309140076108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-19117702293257917918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2546607648407607796209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-16334642105614023744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-2194675300898276108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-17638345458705292918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2322376144192623421209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-15104772945399423744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-2009492135954726108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-19073213722402792918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2501734677154810921209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-16314772879465023744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-2160742127712926108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-18046063259836042918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2412652769229873421209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-15430947186304023744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-2081713435984526108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-19480931523533542918143/125000000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-2592011302192060921209/15625000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-16640947120369623744291/100000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-2232963427742726108733/12500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-3835570416761594019459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-462251362325011945017/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-66261001407685951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-8144151881118890479101/62500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-4194287482685969019459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-507090995565558820017/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-72311001078013951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-8900401839909890479101/62500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-3937499867044281519459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-484820518584324445017/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-67891872612208951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-8505258381267890479101/62500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-4296216932968656519459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-529660151824871320017/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-73941872282536951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-9261508340058890479101/62500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-3926377724330500269459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-473602275771125226267/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-67792526481463951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-8335592515341140479101/62500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-4285094790254875269459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-518441909011672101267/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-73842526151791951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-9091842474132140479101/62500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-4028307174613187769459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-496171432030437726267/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-69423397685986951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-8696699015490140479101/62500000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-4387024240537562769459/31250000000000000000000"
              ],
              [
                "99662690227170639/200000000000000000",
                "-541011065270984601267/3906250000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-75473397356314951360227/500000000000000000000000"
              ],
              [
                "131318510702644431/250000000000000000",
                "-9452948974281140479101/62500000000000000000000"
              ]
            ],
            "raw": [
              "616335149766682593356/2595382557999235390625",
              "100773/250000"
            ],
            "new": [
              "237473/1000000",
              "100773/250000"
            ]
          },
          {
            "factor": 2730,
            "target": "v",
            "old": [
              "237473/1000000",
              "100773/250000"
            ],
            "lines": [
              [
                "202434872590453749/500000000000000000",
                "-26089744305837/250000000000000"
              ],
              [
                "332791754286331209/1000000000000000000",
                "-42890099246817/500000000000000"
              ],
              [
                "431830336855632027/1000000000000000000",
                "-55654161399651/500000000000000"
              ],
              [
                "179876172980527869/500000000000000000",
                "-23182386017397/250000000000000"
              ],
              [
                "202434872590453749/500000000000000000",
                "-5684269605243/50000000000000"
              ],
              [
                "332791754286331209/1000000000000000000",
                "-9344625407463/100000000000000"
              ],
              [
                "431830336855632027/1000000000000000000",
                "-12125579091189/100000000000000"
              ],
              [
                "179876172980527869/500000000000000000",
                "-5050832644083/50000000000000"
              ],
              [
                "202434872590453749/500000000000000000",
                "-10671990929241/100000000000000"
              ],
              [
                "332791754286331209/1000000000000000000",
                "-17544163896381/200000000000000"
              ],
              [
                "431830336855632027/1000000000000000000",
                "-22765294234743/200000000000000"
              ],
              [
                "179876172980527869/500000000000000000",
                "-9482738136321/100000000000000"
              ],
              [
                "202434872590453749/500000000000000000",
                "-58023162086961/500000000000000"
              ],
              [
                "332791754286331209/1000000000000000000",
                "-95386875062901/1000000000000000"
              ],
              [
                "431830336855632027/1000000000000000000",
                "-123773939286303/1000000000000000"
              ],
              [
                "179876172980527869/500000000000000000",
                "-51557245087641/500000000000000"
              ]
            ],
            "raw": [
              "52726846000/204558393271",
              "100773/250000"
            ],
            "new": [
              "257759/1000000",
              "100773/250000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "162403/200000",
              "213987/250000"
            ],
            "lines": [
              [
                "-468217/1000000",
                "375217/1000000"
              ],
              [
                "-316919/1000000",
                "223919/1000000"
              ],
              [
                "-618887/1000000",
                "525887/1000000"
              ],
              [
                "-467589/1000000",
                "374589/1000000"
              ]
            ],
            "raw": [
              "162403/200000",
              "525887/618887"
            ],
            "new": [
              "162403/200000",
              "849731/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "16407/62500",
              "41381/100000"
            ],
            "lines": [
              [
                "-37597/200000",
                "8873218213/200000000000"
              ],
              [
                "-150269/1000000",
                "16805916101/1000000000000"
              ],
              [
                "-37597/200000",
                "14537958203/200000000000"
              ],
              [
                "-150269/1000000",
                "39446946331/1000000000000"
              ]
            ],
            "raw": [
              "16407/62500",
              "14537958203/37597000000"
            ],
            "new": [
              "16407/62500",
              "386679/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "730729/1000000",
              "881399/1000000"
            ],
            "lines": [
              [
                "37597/200000",
                "-1779353979/12500000000"
              ],
              [
                "150269/1000000",
                "-8277963483/62500000000"
              ],
              [
                "37597/200000",
                "-33137970363/200000000000"
              ],
              [
                "150269/1000000",
                "-151105866651/1000000000000"
              ]
            ],
            "raw": [
              "1779353979/2349812500",
              "881399/1000000"
            ],
            "new": [
              "47327/62500",
              "881399/1000000"
            ]
          },
          {
            "factor": 57,
            "target": "f",
            "old": [
              "158187/250000",
              "213987/250000"
            ],
            "lines": [
              [
                "47327/62500",
                "-6196484281/12500000000"
              ],
              [
                "47327/62500",
                "-30410156537/62500000000"
              ],
              [
                "881399/1000000",
                "-119308841797/200000000000"
              ],
              [
                "881399/1000000",
                "-592071053669/1000000000000"
              ]
            ],
            "raw": [
              "30410156537/47327000000",
              "213987/250000"
            ],
            "new": [
              "321277/500000",
              "213987/250000"
            ]
          },
          {
            "factor": 60,
            "target": "f",
            "old": [
              "321277/500000",
              "213987/250000"
            ],
            "lines": [
              [
                "211999/250000",
                "-28471023597/50000000000"
              ],
              [
                "211999/250000",
                "-140921872269/250000000000"
              ],
              [
                "1/1",
                "-13857/20000"
              ]
            ],
            "raw": [
              "140921872269/211999000000",
              "213987/250000"
            ],
            "new": [
              "83091/125000",
              "213987/250000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "83091/125000",
              "213987/250000"
            ],
            "lines": [
              [
                "-1546/3125",
                "10043/25000"
              ],
              [
                "-370553/1000000",
                "277553/1000000"
              ],
              [
                "-618887/1000000",
                "525887/1000000"
              ]
            ],
            "raw": [
              "83091/125000",
              "525887/618887"
            ],
            "new": [
              "83091/125000",
              "849731/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "16407/62500",
              "386679/1000000"
            ],
            "lines": [
              [
                "318187/500000",
                "-44461007979/200000000000"
              ],
              [
                "67409/100000",
                "-233679921483/1000000000000"
              ],
              [
                "208651/500000",
                "-44461007979/200000000000"
              ],
              [
                "227509/500000",
                "-233679921483/1000000000000"
              ],
              [
                "318187/500000",
                "-17351522501/100000000000"
              ],
              [
                "67409/100000",
                "-97339477477/500000000000"
              ],
              [
                "208651/500000",
                "-17351522501/100000000000"
              ],
              [
                "227509/500000",
                "-97339477477/500000000000"
              ]
            ],
            "raw": [
              "17351522501/63637400000",
              "386679/1000000"
            ],
            "new": [
              "136331/500000",
              "386679/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "g",
            "old": [
              "175641/1000000",
              "394713/1000000"
            ],
            "lines": [
              [
                "-136331/500000",
                "-179881193/200000000000"
              ],
              [
                "-136331/500000",
                "-1990567561/1000000000000"
              ],
              [
                "-386679/1000000",
                "9168410829/100000000000"
              ],
              [
                "-386679/1000000",
                "47446605933/500000000000"
              ],
              [
                "-136331/500000",
                "1197260223/25000000000"
              ],
              [
                "-136331/500000",
                "4626299871/125000000000"
              ],
              [
                "-386679/1000000",
                "5618956927/40000000000"
              ],
              [
                "-386679/1000000",
                "26778835679/200000000000"
              ]
            ],
            "raw": [
              "175641/1000000",
              "5618956927/15467160000"
            ],
            "new": [
              "175641/1000000",
              "90821/250000"
            ]
          },
          {
            "factor": 86,
            "target": "b",
            "old": [
              "152269/1000000",
              "134861/500000"
            ],
            "lines": [
              [
                "10969/15625",
                "-56130674599/250000000000"
              ],
              [
                "292827/500000",
                "-5703167337/31250000000"
              ],
              [
                "10969/15625",
                "-94725099687/500000000000"
              ],
              [
                "292827/500000",
                "-7523469081/62500000000"
              ],
              [
                "148099/200000",
                "-56130674599/250000000000"
              ],
              [
                "624133/1000000",
                "-5703167337/31250000000"
              ],
              [
                "148099/200000",
                "-94725099687/500000000000"
              ],
              [
                "624133/1000000",
                "-7523469081/62500000000"
              ]
            ],
            "raw": [
              "7523469081/39008312500",
              "134861/500000"
            ],
            "new": [
              "48217/250000",
              "134861/500000"
            ]
          },
          {
            "factor": 86,
            "target": "x",
            "old": [
              "180563/500000",
              "593619/1000000"
            ],
            "lines": [
              [
                "75427/500000",
                "-560951477/3906250000"
              ],
              [
                "16701/62500",
                "-20755760541/125000000000"
              ],
              [
                "75427/500000",
                "-700397191/7812500000"
              ],
              [
                "16701/62500",
                "-30259057953/250000000000"
              ],
              [
                "75427/500000",
                "-6809110517/50000000000"
              ],
              [
                "16701/62500",
                "-39656179139/250000000000"
              ],
              [
                "75427/500000",
                "-7927220761/100000000000"
              ],
              [
                "16701/62500",
                "-55328799487/500000000000"
              ]
            ],
            "raw": [
              "55328799487/133608000000",
              "593619/1000000"
            ],
            "new": [
              "12941/31250",
              "593619/1000000"
            ]
          },
          {
            "factor": 94,
            "target": "e",
            "old": [
              "47327/62500",
              "881399/1000000"
            ],
            "lines": [
              [
                "-31327/125000",
                "2586807117/12500000000"
              ],
              [
                "-435619/1000000",
                "36472807797/100000000000"
              ],
              [
                "-71109/1000000",
                "342969617/12500000000"
              ],
              [
                "-16007/62500",
                "18522107797/100000000000"
              ],
              [
                "-31327/125000",
                "24255454759/125000000000"
              ],
              [
                "-435619/1000000",
                "358945877119/1000000000000"
              ],
              [
                "-71109/1000000",
                "1817079759/125000000000"
              ],
              [
                "-16007/62500",
                "179438877119/1000000000000"
              ]
            ],
            "raw": [
              "47327/62500",
              "36472807797/43561900000"
            ],
            "new": [
              "47327/62500",
              "52329/62500"
            ]
          },
          {
            "factor": 94,
            "target": "x",
            "old": [
              "12941/31250",
              "593619/1000000"
            ],
            "lines": [
              [
                "-15173/62500",
                "7356453529/62500000000"
              ],
              [
                "-10171/62500",
                "4031484073/62500000000"
              ],
              [
                "-15173/62500",
                "67698286689/500000000000"
              ],
              [
                "-10171/62500",
                "33695450993/500000000000"
              ],
              [
                "-15173/62500",
                "13100290647/125000000000"
              ],
              [
                "-10171/62500",
                "1290070347/25000000000"
              ],
              [
                "-15173/62500",
                "129614372527/1000000000000"
              ],
              [
                "-10171/62500",
                "12321740227/200000000000"
              ]
            ],
            "raw": [
              "12941/31250",
              "67698286689/121384000000"
            ],
            "new": [
              "12941/31250",
              "557721/1000000"
            ]
          },
          {
            "factor": 96,
            "target": "h",
            "old": [
              "211999/250000",
              "1/1"
            ],
            "lines": [
              [
                "31327/125000",
                "-3072682117/12500000000"
              ],
              [
                "435619/1000000",
                "-40359807797/100000000000"
              ],
              [
                "107007/1000000",
                "-1277569617/12500000000"
              ],
              [
                "29201/100000",
                "-25998907797/100000000000"
              ],
              [
                "31327/125000",
                "-33924079759/125000000000"
              ],
              [
                "435619/1000000",
                "-436294877119/1000000000000"
              ],
              [
                "107007/1000000",
                "-15972954759/125000000000"
              ],
              [
                "29201/100000",
                "-292685877119/1000000000000"
              ]
            ],
            "raw": [
              "25998907797/29201000000",
              "1/1"
            ],
            "new": [
              "890343/1000000",
              "1/1"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "85287/100000",
              "891349/1000000"
            ],
            "lines": [
              [
                "-83091/125000",
                "68030775161/125000000000"
              ],
              [
                "-849731/1000000",
                "708962327317/1000000000000"
              ],
              [
                "-83091/125000",
                "35733/62500"
              ],
              [
                "-849731/1000000",
                "756731/1000000"
              ],
              [
                "-83091/125000",
                "559993933401/1000000000000"
              ],
              [
                "-849731/1000000",
                "72471005943/100000000000"
              ]
            ],
            "raw": [
              "85287/100000",
              "756731/849731"
            ],
            "new": [
              "85287/100000",
              "445277/500000"
            ]
          },
          {
            "factor": 118,
            "target": "u",
            "old": [
              "515243/1000000",
              "682271/1000000"
            ],
            "lines": [
              [
                "890343/1000000",
                "-15166692419/25000000000"
              ],
              [
                "890343/1000000",
                "-78815779363/125000000000"
              ],
              [
                "1/1",
                "-139142165123/200000000000"
              ],
              [
                "1/1",
                "-723705187171/1000000000000"
              ],
              [
                "890343/1000000",
                "-97731024153/200000000000"
              ],
              [
                "890343/1000000",
                "-507032279481/1000000000000"
              ],
              [
                "1/1",
                "-28884912481/50000000000"
              ],
              [
                "1/1",
                "-150052807937/250000000000"
              ]
            ],
            "raw": [
              "32577008051/59356200000",
              "682271/1000000"
            ],
            "new": [
              "548839/1000000",
              "682271/1000000"
            ]
          },
          {
            "factor": 128,
            "target": "g",
            "old": [
              "175641/1000000",
              "90821/250000"
            ],
            "lines": [
              [
                "890343/1000000",
                "-41310207/200000000"
              ],
              [
                "890343/1000000",
                "-100719531/400000000"
              ],
              [
                "1/1",
                "-56925090319/250000000000"
              ],
              [
                "1/1",
                "-140687866427/500000000000"
              ],
              [
                "890343/1000000",
                "-39123470353/250000000000"
              ],
              [
                "890343/1000000",
                "-90897454949/500000000000"
              ],
              [
                "1/1",
                "-22205400961/125000000000"
              ],
              [
                "1/1",
                "-52842953813/250000000000"
              ]
            ],
            "raw": [
              "39123470353/222585750000",
              "90821/250000"
            ],
            "new": [
              "21971/125000",
              "90821/250000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "548839/1000000",
              "682271/1000000"
            ],
            "lines": [
              [
                "-85287/100000",
                "496980153673/1000000000000"
              ],
              [
                "-85287/100000",
                "519425360149/1000000000000"
              ],
              [
                "-85287/100000",
                "33374791619/62500000000"
              ],
              [
                "-85287/100000",
                "27822093619/50000000000"
              ],
              [
                "-445277/500000",
                "527580126933/1000000000000"
              ],
              [
                "-445277/500000",
                "551446623153/1000000000000"
              ],
              [
                "-445277/500000",
                "141149159791/250000000000"
              ],
              [
                "-445277/500000",
                "73557891923/125000000000"
              ],
              [
                "-85287/100000",
                "219575858487/500000000000"
              ],
              [
                "-85287/100000",
                "228057772011/500000000000"
              ],
              [
                "-85287/100000",
                "248519678001/500000000000"
              ],
              [
                "-85287/100000",
                "10280063661/20000000000"
              ],
              [
                "-445277/500000",
                "234875845117/500000000000"
              ],
              [
                "-445277/500000",
                "244068403513/500000000000"
              ],
              [
                "-445277/500000",
                "263819664631/500000000000"
              ],
              [
                "-445277/500000",
                "273012223027/500000000000"
              ]
            ],
            "raw": [
              "548839/1000000",
              "73557891923/111319250000"
            ],
            "new": [
              "548839/1000000",
              "41299/62500"
            ]
          },
          {
            "factor": 140,
            "target": "z",
            "old": [
              "301593/1000000",
              "280567/500000"
            ],
            "lines": [
              [
                "548839/1000000",
                "-97292518273/500000000000"
              ],
              [
                "548839/1000000",
                "-29749540531/125000000000"
              ],
              [
                "548839/1000000",
                "-107315717263/500000000000"
              ],
              [
                "548839/1000000",
                "-59055746359/250000000000"
              ],
              [
                "41299/62500",
                "-26434048447/125000000000"
              ],
              [
                "41299/62500",
                "-33488727421/125000000000"
              ],
              [
                "41299/62500",
                "-57879696389/250000000000"
              ],
              [
                "41299/62500",
                "-66534120139/250000000000"
              ],
              [
                "548839/1000000",
                "-22012992729/100000000000"
              ],
              [
                "548839/1000000",
                "-16471325937/62500000000"
              ],
              [
                "548839/1000000",
                "-133714294049/500000000000"
              ],
              [
                "548839/1000000",
                "-564492459/1953125000"
              ],
              [
                "41299/62500",
                "-2962715979/12500000000"
              ],
              [
                "41299/62500",
                "-9170459691/31250000000"
              ],
              [
                "41299/62500",
                "-35539492391/125000000000"
              ],
              [
                "41299/62500",
                "-19933352133/62500000000"
              ]
            ],
            "raw": [
              "26434048447/82598000000",
              "280567/500000"
            ],
            "new": [
              "10001/31250",
              "280567/500000"
            ]
          },
          {
            "factor": 142,
            "target": "z",
            "old": [
              "10001/31250",
              "280567/500000"
            ],
            "lines": [
              [
                "451161/1000000",
                "-101865465543/500000000000"
              ],
              [
                "451161/1000000",
                "-161194494879/1000000000000"
              ],
              [
                "451161/1000000",
                "-103262741017/500000000000"
              ],
              [
                "451161/1000000",
                "-185369057599/1000000000000"
              ],
              [
                "21201/62500",
                "-21650972937/125000000000"
              ],
              [
                "21201/62500",
                "-7369232139/62500000000"
              ],
              [
                "21201/62500",
                "-44000583611/250000000000"
              ],
              [
                "21201/62500",
                "-8880142309/62500000000"
              ],
              [
                "451161/1000000",
                "-161759520171/500000000000"
              ],
              [
                "451161/1000000",
                "-56196520827/200000000000"
              ],
              [
                "451161/1000000",
                "-149530664231/500000000000"
              ],
              [
                "451161/1000000",
                "-277904904027/1000000000000"
              ],
              [
                "21201/62500",
                "-18312243297/62500000000"
              ],
              [
                "21201/62500",
                "-5942395587/25000000000"
              ],
              [
                "21201/62500",
                "-33567272609/125000000000"
              ],
              [
                "21201/62500",
                "-58654530843/250000000000"
              ]
            ],
            "raw": [
              "2456410713/7067000000",
              "280567/500000"
            ],
            "new": [
              "86897/250000",
              "280567/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "257759/1000000",
              "100773/250000"
            ],
            "lines": [
              [
                "-103029/125000",
                "16554043467/100000000000"
              ],
              [
                "-103029/125000",
                "208076870877/1000000000000"
              ],
              [
                "-159179/250000",
                "57205973539/500000000000"
              ],
              [
                "-159179/250000",
                "135568371513/1000000000000"
              ],
              [
                "-103029/125000",
                "32735507697/125000000000"
              ],
              [
                "-103029/125000",
                "304420497783/1000000000000"
              ],
              [
                "-159179/250000",
                "6586111687/31250000000"
              ],
              [
                "-159179/250000",
                "231911998419/1000000000000"
              ],
              [
                "-103029/125000",
                "392882109/2500000000"
              ],
              [
                "-103029/125000",
                "26556614109/125000000000"
              ],
              [
                "-159179/250000",
                "13253044501/125000000000"
              ],
              [
                "-159179/250000",
                "34986103377/250000000000"
              ],
              [
                "-103029/125000",
                "14349441471/62500000000"
              ],
              [
                "-103029/125000",
                "35611391601/125000000000"
              ],
              [
                "-159179/250000",
                "22307821993/125000000000"
              ],
              [
                "-159179/250000",
                "53095658361/250000000000"
              ]
            ],
            "raw": [
              "257759/1000000",
              "101473499261/274744000000"
            ],
            "new": [
              "257759/1000000",
              "369339/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "75427/500000",
              "16701/62500"
            ],
            "lines": [
              [
                "-397903/1000000",
                "-6135339/20000000000"
              ],
              [
                "-435619/1000000",
                "3186007797/100000000000"
              ],
              [
                "-127147/500000",
                "-6135339/20000000000"
              ],
              [
                "-29201/100000",
                "3186007797/100000000000"
              ],
              [
                "-397903/1000000",
                "3029320631/100000000000"
              ],
              [
                "-435619/1000000",
                "31940670487/500000000000"
              ],
              [
                "-127147/500000",
                "3029320631/100000000000"
              ],
              [
                "-29201/100000",
                "31940670487/500000000000"
              ]
            ],
            "raw": [
              "75427/500000",
              "31940670487/146005000000"
            ],
            "new": [
              "75427/500000",
              "43753/200000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "162403/200000",
              "849731/1000000"
            ],
            "lines": [
              [
                "10969/15625",
                "-9849680443/15625000000"
              ],
              [
                "126821/200000",
                "-3764104927/6250000000"
              ],
              [
                "10969/15625",
                "-304357778133/500000000000"
              ],
              [
                "126821/200000",
                "-114168033087/200000000000"
              ],
              [
                "7397/10000",
                "-9849680443/15625000000"
              ],
              [
                "671789/1000000",
                "-3764104927/6250000000"
              ],
              [
                "7397/10000",
                "-304357778133/500000000000"
              ],
              [
                "671789/1000000",
                "-114168033087/200000000000"
              ]
            ],
            "raw": [
              "304357778133/369850000000",
              "849731/1000000"
            ],
            "new": [
              "411461/500000",
              "849731/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "x",
            "old": [
              "12941/31250",
              "557721/1000000"
            ],
            "lines": [
              [
                "75427/500000",
                "-224893729/1953125000"
              ],
              [
                "43753/200000",
                "-17103104519/100000000000"
              ],
              [
                "75427/500000",
                "-1505081911/15625000000"
              ],
              [
                "43753/200000",
                "-30806264849/200000000000"
              ],
              [
                "75427/500000",
                "-420672983/5000000000"
              ],
              [
                "43753/200000",
                "-70010026271/500000000000"
              ],
              [
                "75427/500000",
                "-643039793/10000000000"
              ],
              [
                "43753/200000",
                "-122010061241/1000000000000"
              ]
            ],
            "raw": [
              "58458163/137140000",
              "557721/1000000"
            ],
            "new": [
              "213133/500000",
              "557721/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "85287/100000",
              "445277/500000"
            ],
            "lines": [
              [
                "411461/500000",
                "-23521473257/31250000000"
              ],
              [
                "411461/500000",
                "-9745305623/12500000000"
              ],
              [
                "849731/1000000",
                "-75673138911/100000000000"
              ],
              [
                "849731/1000000",
                "-31419572829/40000000000"
              ],
              [
                "411461/500000",
                "-366428315827/500000000000"
              ],
              [
                "411461/500000",
                "-150173339353/200000000000"
              ],
              [
                "849731/1000000",
                "-36845043827/50000000000"
              ],
              [
                "849731/1000000",
                "-15134631353/20000000000"
              ]
            ],
            "raw": [
              "36845043827/42486550000",
              "445277/500000"
            ],
            "new": [
              "54201/62500",
              "445277/500000"
            ]
          },
          {
            "factor": 208,
            "target": "g",
            "old": [
              "21971/125000",
              "90821/250000"
            ],
            "lines": [
              [
                "-54201/62500",
                "19423069939/125000000000"
              ],
              [
                "-54201/62500",
                "6103751557/31250000000"
              ],
              [
                "-54201/62500",
                "10261288441/50000000000"
              ],
              [
                "-54201/62500",
                "7148418589/31250000000"
              ],
              [
                "-54201/62500",
                "50269185013/250000000000"
              ],
              [
                "-54201/62500",
                "60253057591/250000000000"
              ],
              [
                "-54201/62500",
                "27898963879/100000000000"
              ],
              [
                "-54201/62500",
                "151256632409/500000000000"
              ],
              [
                "-445277/500000",
                "312276783/1953125000"
              ],
              [
                "-445277/500000",
                "10080741093/50000000000"
              ],
              [
                "-445277/500000",
                "52431730551/250000000000"
              ],
              [
                "-445277/500000",
                "58761041721/250000000000"
              ],
              [
                "-445277/500000",
                "51394473359/250000000000"
              ],
              [
                "-445277/500000",
                "309133753/1250000000"
              ],
              [
                "-445277/500000",
                "141745396087/500000000000"
              ],
              [
                "-445277/500000",
                "154404018427/500000000000"
              ]
            ],
            "raw": [
              "21971/125000",
              "151256632409/433608000000"
            ],
            "new": [
              "21971/125000",
              "348833/1000000"
            ]
          },
          {
            "factor": 228,
            "target": "a",
            "old": [
              "75427/500000",
              "43753/200000"
            ],
            "lines": [
              [
                "411461/500000",
                "-42929668431/250000000000"
              ],
              [
                "411461/500000",
                "-120072547323/500000000000"
              ],
              [
                "849731/1000000",
                "-42929668431/250000000000"
              ],
              [
                "849731/1000000",
                "-120072547323/500000000000"
              ],
              [
                "411461/500000",
                "-48217/250000"
              ],
              [
                "411461/500000",
                "-134861/500000"
              ],
              [
                "849731/1000000",
                "-48217/250000"
              ],
              [
                "849731/1000000",
                "-134861/500000"
              ]
            ],
            "raw": [
              "42929668431/212432750000",
              "43753/200000"
            ],
            "new": [
              "40417/200000",
              "43753/200000"
            ]
          },
          {
            "factor": 228,
            "target": "b",
            "old": [
              "48217/250000",
              "134861/500000"
            ],
            "lines": [
              [
                "-890343/1000000",
                "16630019237/100000000000"
              ],
              [
                "-890343/1000000",
                "18002653133/100000000000"
              ],
              [
                "-890343/1000000",
                "34343577827/200000000000"
              ],
              [
                "-890343/1000000",
                "37178280443/200000000000"
              ],
              [
                "-1/1",
                "16630019237/100000000000"
              ],
              [
                "-1/1",
                "18002653133/100000000000"
              ],
              [
                "-1/1",
                "34343577827/200000000000"
              ],
              [
                "-1/1",
                "37178280443/200000000000"
              ]
            ],
            "raw": [
              "48217/250000",
              "37178280443/178068600000"
            ],
            "new": [
              "48217/250000",
              "208787/1000000"
            ]
          },
          {
            "factor": 228,
            "target": "h",
            "old": [
              "890343/1000000",
              "1/1"
            ],
            "lines": [
              [
                "-48217/250000",
                "16630019237/100000000000"
              ],
              [
                "-48217/250000",
                "18002653133/100000000000"
              ],
              [
                "-208787/1000000",
                "16630019237/100000000000"
              ],
              [
                "-208787/1000000",
                "18002653133/100000000000"
              ],
              [
                "-48217/250000",
                "34343577827/200000000000"
              ],
              [
                "-48217/250000",
                "37178280443/200000000000"
              ],
              [
                "-208787/1000000",
                "34343577827/200000000000"
              ],
              [
                "-208787/1000000",
                "37178280443/200000000000"
              ]
            ],
            "raw": [
              "890343/1000000",
              "37178280443/38573600000"
            ],
            "new": [
              "890343/1000000",
              "240957/250000"
            ]
          },
          {
            "factor": 1417,
            "target": "z",
            "old": [
              "86897/250000",
              "280567/500000"
            ],
            "lines": [
              [
                "-147654541573/200000000000",
                "36675713211366312567371/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37312716791498623539731/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "36658116692591412567371/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37299278992039723539731/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "17751258348130827142931/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18069760138196982629111/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "17728246518591927142931/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18048827668316082629111/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "75154939311123752413107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "76002708532989689191227/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "75119746273573952413107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "75975832934071889191227/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37861058842567616205627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38284943453500584594687/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37815035183489816205627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38243078513738784594687/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "72671792796444164866187/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "74106422948426931777107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "72636599758894364866187/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "74079547349509131777107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "34613726512412156327507/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "35331041588403539782967/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "34567702853334356327507/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "35289176648641739782967/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9309413210604411518069/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9435462237302421736109/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9305014080910686518069/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9432102787437696736109/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4621533582339764780909/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4684558095688769889929/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4615780624955039780909/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4679324978218544889929/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37530520456981649567371/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38167524037113960539731/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "37512923938206749567371/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38154086237655060539731/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18178661970938495642931/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18497163761004651129111/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18155650141399595642931/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "18476231291123751129111/50000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "76864553802354426413107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "77712323024220363191227/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "76829360764804626413107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "77685447425302563191227/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38715866088182953205627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "39139750699115921594687/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "38669842429105153205627/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "39097885759354121594687/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "74381407287674838866187/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "75816037439657605777107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "74346214250125038866187/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "75789161840739805777107/200000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "35468533758027493327507/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "36185848834018876782967/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "35422510098949693327507/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "36143983894257076782967/100000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9523115022008245768069/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9649164048706255986109/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9518715892314520768069/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "9645804598841530986109/25000000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4728384488041681905909/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4791409001390687014929/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4722631530656956905909/12500000000000000000000"
              ],
              [
                "-147654541573/200000000000",
                "4786175883920462014929/12500000000000000000000"
              ]
            ],
            "raw": [
              "86897/250000",
              "39139750699115921594687/73827270786500000000000"
            ],
            "new": [
              "86897/250000",
              "265077/500000"
            ]
          },
          {
            "factor": 1423,
            "target": "g",
            "old": [
              "21971/125000",
              "348833/1000000"
            ],
            "lines": [
              [
                "98209612890991063/200000000000000000",
                "-10470471417932706644127/100000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-9884020028365282118007/100000000000000000000000"
              ],
              [
                "98209612890991063/200000000000000000",
                "-10636304339837406644127/100000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-10045694230953982118007/100000000000000000000000"
              ],
              [
                "98209612890991063/200000000000000000",
                "-16215833553746478948421/100000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-15629382164179054422301/100000000000000000000000"
              ],
              [
                "98209612890991063/200000000000000000",
                "-16381666475651178948421/100000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-15791056366767754422301/100000000000000000000000"
              ],
              [
                "98209612890991063/200000000000000000",
                "-24259256111444353756899/200000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-22803379388071359738459/200000000000000000000000"
              ],
              [
                "98209612890991063/200000000000000000",
                "-24590921955253753756899/200000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-23126727793248759738459/200000000000000000000000"
              ],
              [
                "98209612890991063/200000000000000000",
                "-39293573254956587448177/200000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-37837696531583593429737/200000000000000000000000"
              ],
              [
                "98209612890991063/200000000000000000",
                "-39625239098765987448177/200000000000000000000000"
              ],
              [
                "95746735137553423/200000000000000000",
                "-38161044936760993429737/200000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-10649081206747506644127/100000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-10062629817180082118007/100000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-10820732845162806644127/100000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-10230122736279382118007/100000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-16394443342561278948421/100000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-15807991952993854422301/100000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-16566094980976578948421/100000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-15975484872093154422301/100000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-24616475689073953756899/200000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-23160598965700959738459/200000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-24959778965904553756899/200000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-23495584803899559738459/200000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-39650792832586187448177/200000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-38194916109213193429737/200000000000000000000000"
              ],
              [
                "101655574582221737/200000000000000000",
                "-39994096109416787448177/200000000000000000000000"
              ],
              [
                "99192696828784097/200000000000000000",
                "-38529901947411793429737/200000000000000000000000"
              ]
            ],
            "raw": [
              "10062629817180082118007/49596348414392048500000",
              "348833/1000000"
            ],
            "new": [
              "20289/100000",
              "348833/1000000"
            ]
          },
          {
            "factor": 2088,
            "target": "g",
            "old": [
              "20289/100000",
              "348833/1000000"
            ],
            "lines": [
              [
                "-677065652375931/1250000000000000",
                "300642876439027070409/2500000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "627289766780099904441/5000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "296655210342052070409/2500000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "619858395173624904441/5000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "146871172980712805409/1000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "1502567561676943436049/10000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "145276106541922805409/1000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "1487704818463993436049/10000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "689556024243437059503/5000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "357780019072741411563/2500000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "677088805685612059503/5000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "351818390087566411563/2500000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "71805937164573160467/400000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "914502130492072196817/5000000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "70808559679947160467/400000000000000000000"
              ],
              [
                "-677065652375931/1250000000000000",
                "902578872521722196817/5000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "4791012060153649623/39062500000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "51219282300274353063/400000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "295544048586775953/2441406250000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "50624772571756353063/400000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "746319655725177037971/5000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "764235042811801226871/5000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "738344323531227037971/5000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "756803671205326226871/5000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "701519815065050070429/5000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "291404520047524932789/2000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "689052596507225070429/5000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "286635216859384932789/2000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "1819076010757555033527/10000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "1854906784930803411327/10000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "1794141573641905033527/10000000000000000000000"
              ],
              [
                "-5562291516632487/10000000000000000",
                "1831060268990103411327/10000000000000000000000"
              ]
            ],
            "raw": [
              "20289/100000",
              "101611347832452466313/300918067722636000000"
            ],
            "new": [
              "20289/100000",
              "42209/125000"
            ]
          },
          {
            "factor": 2293,
            "target": "u",
            "old": [
              "548839/1000000",
              "41299/62500"
            ],
            "lines": [
              [
                "123185093793894333/250000000000000000",
                "-5056656114333755397943/15625000000000000000000"
              ],
              [
                "123185093793894333/250000000000000000",
                "-10358484807711154721953/31250000000000000000000"
              ],
              [
                "123185093793894333/250000000000000000",
                "-5192998615641286647943/15625000000000000000000"
              ],
              [
                "123185093793894333/250000000000000000",
                "-10640053291670873471953/31250000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-44787908499932334744179/125000000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-91763965050518767840709/250000000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-45878648510392584744179/125000000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-94016512922196517840709/250000000000000000000000"
              ],
              [
                "123185093793894333/250000000000000000",
                "-8525292648490335292941/31250000000000000000000"
              ],
              [
                "123185093793894333/250000000000000000",
                "-17437462041475977914811/62500000000000000000000"
              ],
              [
                "123185093793894333/250000000000000000",
                "-8797977651105397792941/31250000000000000000000"
              ],
              [
                "123185093793894333/250000000000000000",
                "-18000599009395415414811/62500000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-38435830179223632732399/125000000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-78645934754733441724329/250000000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-39526570189683882732399/125000000000000000000000"
              ],
              [
                "33338062572845967/62500000000000000",
                "-80898482626411191724329/250000000000000000000000"
              ]
            ],
            "raw": [
              "2841764216163445097647/5132712241412263875000",
              "41299/62500"
            ],
            "new": [
              "553657/1000000",
              "41299/62500"
            ]
          },
          {
            "factor": 2423,
            "target": "u",
            "old": [
              "553657/1000000",
              "41299/62500"
            ],
            "lines": [
              [
                "411937053392673/500000000000000",
                "-17322463261355086583/31250000000000000000"
              ],
              [
                "411937053392673/500000000000000",
                "-35604988446263255393/62500000000000000000"
              ],
              [
                "411937053392673/500000000000000",
                "-17513869158101086583/31250000000000000000"
              ],
              [
                "411937053392673/500000000000000",
                "-36000271411229255393/62500000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-152871706392055115599/250000000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-314243792331274131529/500000000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-154402953566023115599/250000000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-317406056051002131529/500000000000000000000"
              ],
              [
                "411937053392673/500000000000000",
                "-29334510412766204121/62500000000000000000"
              ],
              [
                "411937053392673/500000000000000",
                "-60243141174150288591/125000000000000000000"
              ],
              [
                "411937053392673/500000000000000",
                "-29717322206258204121/62500000000000000000"
              ],
              [
                "411937053392673/500000000000000",
                "-61033707104082288591/125000000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-131630041952279239419/250000000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-270376449457769242749/500000000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-133161289126247239419/250000000000000000000"
              ],
              [
                "111484132041627/125000000000000",
                "-273538713177497242749/500000000000000000000"
              ]
            ],
            "raw": [
              "3259390045862911569/5721347963787125000",
              "41299/62500"
            ],
            "new": [
              "569689/1000000",
              "41299/62500"
            ]
          },
          {
            "factor": 2423,
            "target": "v",
            "old": [
              "257759/1000000",
              "369339/1000000"
            ],
            "lines": [
              [
                "190371611756371/250000000000000",
                "-140623396720883761809/500000000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-75750539275067216133/250000000000000000000"
              ],
              [
                "190371611756371/250000000000000",
                "-143685891068819761809/500000000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-77331671134931216133/250000000000000000000"
              ],
              [
                "190371611756371/250000000000000",
                "-37459567634720330091/125000000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-20191979565858904167/62500000000000000000"
              ],
              [
                "190371611756371/250000000000000",
                "-38225191221704330091/125000000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-20587262530824904167/62500000000000000000"
              ],
              [
                "190371611756371/250000000000000",
                "-51548995421039107437/250000000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-113975672671328885331/500000000000000000000"
              ],
              [
                "190371611756371/250000000000000",
                "-53080242595007107437/250000000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-117137936391056885331/500000000000000000000"
              ],
              [
                "190371611756371/250000000000000",
                "-13651960313194159263/62500000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-30228312123385796769/125000000000000000000"
              ],
              [
                "190371611756371/250000000000000",
                "-14034772106686159263/62500000000000000000"
              ],
              [
                "393147005498341/500000000000000",
                "-31018878053317796769/125000000000000000000"
              ]
            ],
            "raw": [
              "51548995421039107437/190371611756371000000",
              "369339/1000000"
            ],
            "new": [
              "13539/50000",
              "369339/1000000"
            ]
          },
          {
            "factor": 2572,
            "target": "y",
            "old": [
              "54201/62500",
              "445277/500000"
            ],
            "lines": [
              [
                "-71734703757/125000000000",
                "243934743086280191/500000000000000000"
              ],
              [
                "-71734703757/125000000000",
                "243798042641425691/500000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "122950953077620373/200000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "122896272899678573/200000000000000000"
              ],
              [
                "-71734703757/125000000000",
                "63009875965577909/125000000000000000"
              ],
              [
                "-71734703757/125000000000",
                "62998602794482409/125000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "32071842024383927/50000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "32067332755945727/50000000000000000"
              ],
              [
                "-71734703757/125000000000",
                "500314311151691127/1000000000000000000"
              ],
              [
                "-71734703757/125000000000",
                "500040910261982127/1000000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "62719959036723261/100000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "62692618947752361/100000000000000000"
              ],
              [
                "-71734703757/125000000000",
                "127046029800204573/250000000000000000"
              ],
              [
                "-71734703757/125000000000",
                "127023483458013573/250000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "16138548799096839/25000000000000000"
              ],
              [
                "-733595715037/1000000000000",
                "16136294164877739/25000000000000000"
              ]
            ],
            "raw": [
              "54201/62500",
              "42348676600068191/47823135838000000"
            ],
            "new": [
              "54201/62500",
              "885527/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "411461/500000",
              "849731/1000000"
            ],
            "lines": [
              [
                "-48457/100000",
                "39157/100000"
              ],
              [
                "-370553/1000000",
                "277553/1000000"
              ],
              [
                "-282301/500000",
                "235801/500000"
              ],
              [
                "-90117/200000",
                "71517/200000"
              ]
            ],
            "raw": [
              "411461/500000",
              "235801/282301"
            ],
            "new": [
              "411461/500000",
              "835283/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "136331/500000",
              "386679/1000000"
            ],
            "lines": [
              [
                "-88539/500000",
                "1284035253/31250000000"
              ],
              [
                "-164717/1000000",
                "1983061459/62500000000"
              ],
              [
                "-88539/500000",
                "1726907331/31250000000"
              ],
              [
                "-164717/1000000",
                "2806975893/62500000000"
              ]
            ],
            "raw": [
              "136331/500000",
              "575635777/1844562500"
            ],
            "new": [
              "136331/500000",
              "39009/125000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "47327/62500",
              "52329/62500"
            ],
            "lines": [
              [
                "88539/500000",
                "-35320610409/250000000000"
              ],
              [
                "164717/1000000",
                "-68956033327/500000000000"
              ],
              [
                "88539/500000",
                "-9266317851/62500000000"
              ],
              [
                "164717/1000000",
                "-18050445453/125000000000"
              ]
            ],
            "raw": [
              "11773536803/14756500000",
              "52329/62500"
            ],
            "new": [
              "398927/500000",
              "52329/62500"
            ]
          },
          {
            "factor": 60,
            "target": "f",
            "old": [
              "83091/125000",
              "849731/1000000"
            ],
            "lines": [
              [
                "890343/1000000",
                "-301305421123/500000000000"
              ],
              [
                "890343/1000000",
                "-601255372069/1000000000000"
              ],
              [
                "240957/250000",
                "-82885408177/125000000000"
              ],
              [
                "240957/250000",
                "-165659035831/250000000000"
              ]
            ],
            "raw": [
              "601255372069/890343000000",
              "849731/1000000"
            ],
            "new": [
              "675307/1000000",
              "849731/1000000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "675307/1000000",
              "849731/1000000"
            ],
            "lines": [
              [
                "-65649/125000",
                "6753/15625"
              ],
              [
                "-242891/500000",
                "196391/500000"
              ],
              [
                "-282301/500000",
                "235801/500000"
              ]
            ],
            "raw": [
              "675307/1000000",
              "235801/282301"
            ],
            "new": [
              "675307/1000000",
              "835283/1000000"
            ]
          },
          {
            "factor": 74,
            "target": "d",
            "old": [
              "136331/500000",
              "39009/125000"
            ],
            "lines": [
              [
                "9688/15625",
                "-27181226517/125000000000"
              ],
              [
                "632393/1000000",
                "-55436586851/250000000000"
              ],
              [
                "1941/4000",
                "-27181226517/125000000000"
              ],
              [
                "497611/1000000",
                "-55436586851/250000000000"
              ],
              [
                "9688/15625",
                "-46280347497/250000000000"
              ],
              [
                "632393/1000000",
                "-95837311791/500000000000"
              ],
              [
                "1941/4000",
                "-46280347497/250000000000"
              ],
              [
                "497611/1000000",
                "-95837311791/500000000000"
              ]
            ],
            "raw": [
              "46280347497/155008000000",
              "39009/125000"
            ],
            "new": [
              "298567/1000000",
              "39009/125000"
            ]
          },
          {
            "factor": 74,
            "target": "g",
            "old": [
              "20289/100000",
              "42209/125000"
            ],
            "lines": [
              [
                "-298567/1000000",
                "14123770319/500000000000"
              ],
              [
                "-298567/1000000",
                "27641592057/1000000000000"
              ],
              [
                "-39009/125000",
                "4920137781/125000000000"
              ],
              [
                "-39009/125000",
                "9730522243/250000000000"
              ],
              [
                "-298567/1000000",
                "30287981393/500000000000"
              ],
              [
                "-298567/1000000",
                "57713315879/1000000000000"
              ],
              [
                "-39009/125000",
                "17922381099/250000000000"
              ],
              [
                "-39009/125000",
                "34496906397/500000000000"
              ]
            ],
            "raw": [
              "20289/100000",
              "5974127033/26006000000"
            ],
            "new": [
              "20289/100000",
              "114861/500000"
            ]
          },
          {
            "factor": 74,
            "target": "z",
            "old": [
              "86897/250000",
              "265077/500000"
            ],
            "lines": [
              [
                "88539/500000",
                "-91678619/976562500"
              ],
              [
                "164717/1000000",
                "-90188319169/1000000000000"
              ],
              [
                "88539/500000",
                "-167002683/1953125000"
              ],
              [
                "164717/1000000",
                "-10205981463/125000000000"
              ],
              [
                "88539/500000",
                "-254725139/2500000000"
              ],
              [
                "164717/1000000",
                "-98199468913/1000000000000"
              ],
              [
                "88539/500000",
                "-29337153/312500000"
              ],
              [
                "164717/1000000",
                "-11252670951/125000000000"
              ]
            ],
            "raw": [
              "222670244/461140625",
              "265077/500000"
            ],
            "new": [
              "120717/250000",
              "265077/500000"
            ]
          }
        ],
        "contradiction": {
          "factor": 86,
          "target": "a",
          "old": [
            "40417/200000",
            "43753/200000"
          ],
          "lines": [
            [
              "116699/500000",
              "-1745965383/15625000000"
            ],
            [
              "217479/1000000",
              "-6121035813/62500000000"
            ],
            [
              "364853/1000000",
              "-1745965383/15625000000"
            ],
            [
              "174467/500000",
              "-6121035813/62500000000"
            ],
            [
              "116699/500000",
              "-27052544641/250000000000"
            ],
            [
              "217479/1000000",
              "-94113474251/1000000000000"
            ],
            [
              "364853/1000000",
              "-27052544641/250000000000"
            ],
            [
              "174467/500000",
              "-94113474251/1000000000000"
            ]
          ]
        }
      }
    }
  ],
  "terminal": {
    "kind": "box",
    "stage": 3,
    "contradiction": {
      "factor": 86,
      "target": "a",
      "old": [
        "40417/200000",
        "43753/200000"
      ],
      "lines": [
        [
          "116699/500000",
          "-1745965383/15625000000"
        ],
        [
          "217479/1000000",
          "-6121035813/62500000000"
        ],
        [
          "364853/1000000",
          "-1745965383/15625000000"
        ],
        [
          "174467/500000",
          "-6121035813/62500000000"
        ],
        [
          "116699/500000",
          "-27052544641/250000000000"
        ],
        [
          "217479/1000000",
          "-94113474251/1000000000000"
        ],
        [
          "364853/1000000",
          "-27052544641/250000000000"
        ],
        [
          "174467/500000",
          "-94113474251/1000000000000"
        ]
      ]
    }
  },
  "word": "CEF"
}
```
